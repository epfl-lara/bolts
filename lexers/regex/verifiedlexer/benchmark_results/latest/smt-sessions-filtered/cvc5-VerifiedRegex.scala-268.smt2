; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!5480 () Bool)

(assert start!5480)

(declare-fun b!74417 () Bool)

(declare-fun b_free!2293 () Bool)

(declare-fun b_next!2293 () Bool)

(assert (=> b!74417 (= b_free!2293 (not b_next!2293))))

(declare-fun tp!48833 () Bool)

(declare-fun b_and!3319 () Bool)

(assert (=> b!74417 (= tp!48833 b_and!3319)))

(declare-fun b_free!2295 () Bool)

(declare-fun b_next!2295 () Bool)

(assert (=> b!74417 (= b_free!2295 (not b_next!2295))))

(declare-fun tp!48836 () Bool)

(declare-fun b_and!3321 () Bool)

(assert (=> b!74417 (= tp!48836 b_and!3321)))

(declare-fun b!74415 () Bool)

(declare-fun e!41354 () Bool)

(declare-fun tp_is_empty!591 () Bool)

(declare-fun tp!48835 () Bool)

(assert (=> b!74415 (= e!41354 (and tp_is_empty!591 tp!48835))))

(declare-fun b!74416 () Bool)

(declare-fun res!38940 () Bool)

(declare-fun e!41356 () Bool)

(assert (=> b!74416 (=> (not res!38940) (not e!41356))))

(declare-datatypes ((LexerInterface!158 0))(
  ( (LexerInterfaceExt!155 (__x!1607 Int)) (Lexer!156) )
))
(declare-fun thiss!19403 () LexerInterface!158)

(declare-datatypes ((C!1590 0))(
  ( (C!1591 (val!402 Int)) )
))
(declare-datatypes ((List!1232 0))(
  ( (Nil!1226) (Cons!1226 (h!6623 C!1590) (t!19939 List!1232)) )
))
(declare-datatypes ((IArray!669 0))(
  ( (IArray!670 (innerList!392 List!1232)) )
))
(declare-datatypes ((Conc!334 0))(
  ( (Node!334 (left!936 Conc!334) (right!1266 Conc!334) (csize!898 Int) (cheight!545 Int)) (Leaf!603 (xs!2913 IArray!669) (csize!899 Int)) (Empty!334) )
))
(declare-datatypes ((BalanceConc!672 0))(
  ( (BalanceConc!673 (c!19380 Conc!334)) )
))
(declare-datatypes ((Regex!334 0))(
  ( (ElementMatch!334 (c!19381 C!1590)) (Concat!590 (regOne!1180 Regex!334) (regTwo!1180 Regex!334)) (EmptyExpr!334) (Star!334 (reg!663 Regex!334)) (EmptyLang!334) (Union!334 (regOne!1181 Regex!334) (regTwo!1181 Regex!334)) )
))
(declare-datatypes ((String!1673 0))(
  ( (String!1674 (value!10452 String)) )
))
(declare-datatypes ((List!1233 0))(
  ( (Nil!1227) (Cons!1227 (h!6624 (_ BitVec 16)) (t!19940 List!1233)) )
))
(declare-datatypes ((TokenValue!256 0))(
  ( (FloatLiteralValue!512 (text!2237 List!1233)) (TokenValueExt!255 (__x!1608 Int)) (Broken!1280 (value!10453 List!1233)) (Object!261) (End!256) (Def!256) (Underscore!256) (Match!256) (Else!256) (Error!256) (Case!256) (If!256) (Extends!256) (Abstract!256) (Class!256) (Val!256) (DelimiterValue!512 (del!316 List!1233)) (KeywordValue!262 (value!10454 List!1233)) (CommentValue!512 (value!10455 List!1233)) (WhitespaceValue!512 (value!10456 List!1233)) (IndentationValue!256 (value!10457 List!1233)) (String!1675) (Int32!256) (Broken!1281 (value!10458 List!1233)) (Boolean!257) (Unit!730) (OperatorValue!259 (op!316 List!1233)) (IdentifierValue!512 (value!10459 List!1233)) (IdentifierValue!513 (value!10460 List!1233)) (WhitespaceValue!513 (value!10461 List!1233)) (True!512) (False!512) (Broken!1282 (value!10462 List!1233)) (Broken!1283 (value!10463 List!1233)) (True!513) (RightBrace!256) (RightBracket!256) (Colon!256) (Null!256) (Comma!256) (LeftBracket!256) (False!513) (LeftBrace!256) (ImaginaryLiteralValue!256 (text!2238 List!1233)) (StringLiteralValue!768 (value!10464 List!1233)) (EOFValue!256 (value!10465 List!1233)) (IdentValue!256 (value!10466 List!1233)) (DelimiterValue!513 (value!10467 List!1233)) (DedentValue!256 (value!10468 List!1233)) (NewLineValue!256 (value!10469 List!1233)) (IntegerValue!768 (value!10470 (_ BitVec 32)) (text!2239 List!1233)) (IntegerValue!769 (value!10471 Int) (text!2240 List!1233)) (Times!256) (Or!256) (Equal!256) (Minus!256) (Broken!1284 (value!10472 List!1233)) (And!256) (Div!256) (LessEqual!256) (Mod!256) (Concat!591) (Not!256) (Plus!256) (SpaceValue!256 (value!10473 List!1233)) (IntegerValue!770 (value!10474 Int) (text!2241 List!1233)) (StringLiteralValue!769 (text!2242 List!1233)) (FloatLiteralValue!513 (text!2243 List!1233)) (BytesLiteralValue!256 (value!10475 List!1233)) (CommentValue!513 (value!10476 List!1233)) (StringLiteralValue!770 (value!10477 List!1233)) (ErrorTokenValue!256 (msg!317 List!1233)) )
))
(declare-datatypes ((TokenValueInjection!336 0))(
  ( (TokenValueInjection!337 (toValue!761 Int) (toChars!620 Int)) )
))
(declare-datatypes ((Rule!332 0))(
  ( (Rule!333 (regex!266 Regex!334) (tag!444 String!1673) (isSeparator!266 Bool) (transformation!266 TokenValueInjection!336)) )
))
(declare-datatypes ((List!1234 0))(
  ( (Nil!1228) (Cons!1228 (h!6625 Rule!332) (t!19941 List!1234)) )
))
(declare-fun rules!2471 () List!1234)

(declare-fun rulesInvariant!152 (LexerInterface!158 List!1234) Bool)

(assert (=> b!74416 (= res!38940 (rulesInvariant!152 thiss!19403 rules!2471))))

(declare-fun res!38944 () Bool)

(assert (=> start!5480 (=> (not res!38944) (not e!41356))))

(assert (=> start!5480 (= res!38944 (is-Lexer!156 thiss!19403))))

(assert (=> start!5480 e!41356))

(assert (=> start!5480 true))

(declare-fun e!41355 () Bool)

(assert (=> start!5480 e!41355))

(assert (=> start!5480 e!41354))

(declare-fun e!41349 () Bool)

(assert (=> b!74417 (= e!41349 (and tp!48833 tp!48836))))

(declare-fun tp!48834 () Bool)

(declare-fun b!74418 () Bool)

(declare-fun e!41352 () Bool)

(declare-fun inv!1636 (String!1673) Bool)

(declare-fun inv!1639 (TokenValueInjection!336) Bool)

(assert (=> b!74418 (= e!41352 (and tp!48834 (inv!1636 (tag!444 (h!6625 rules!2471))) (inv!1639 (transformation!266 (h!6625 rules!2471))) e!41349))))

(declare-fun b!74419 () Bool)

(declare-fun e!41350 () Bool)

(assert (=> b!74419 (= e!41356 e!41350)))

(declare-fun res!38942 () Bool)

(assert (=> b!74419 (=> (not res!38942) (not e!41350))))

(declare-datatypes ((Token!292 0))(
  ( (Token!293 (value!10478 TokenValue!256) (rule!739 Rule!332) (size!1110 Int) (originalCharacters!317 List!1232)) )
))
(declare-datatypes ((List!1235 0))(
  ( (Nil!1229) (Cons!1229 (h!6626 Token!292) (t!19942 List!1235)) )
))
(declare-datatypes ((IArray!671 0))(
  ( (IArray!672 (innerList!393 List!1235)) )
))
(declare-datatypes ((Conc!335 0))(
  ( (Node!335 (left!937 Conc!335) (right!1267 Conc!335) (csize!900 Int) (cheight!546 Int)) (Leaf!604 (xs!2914 IArray!671) (csize!901 Int)) (Empty!335) )
))
(declare-datatypes ((BalanceConc!674 0))(
  ( (BalanceConc!675 (c!19382 Conc!335)) )
))
(declare-datatypes ((tuple2!1196 0))(
  ( (tuple2!1197 (_1!805 BalanceConc!674) (_2!805 BalanceConc!672)) )
))
(declare-fun lt!13763 () tuple2!1196)

(declare-fun isEmpty!306 (BalanceConc!672) Bool)

(assert (=> b!74419 (= res!38942 (isEmpty!306 (_2!805 lt!13763)))))

(declare-fun input!2238 () List!1232)

(declare-fun lex!66 (LexerInterface!158 List!1234 BalanceConc!672) tuple2!1196)

(declare-fun seqFromList!54 (List!1232) BalanceConc!672)

(assert (=> b!74419 (= lt!13763 (lex!66 thiss!19403 rules!2471 (seqFromList!54 input!2238)))))

(declare-fun b!74420 () Bool)

(declare-fun res!38943 () Bool)

(assert (=> b!74420 (=> (not res!38943) (not e!41356))))

(declare-fun isEmpty!307 (List!1234) Bool)

(assert (=> b!74420 (= res!38943 (not (isEmpty!307 rules!2471)))))

(declare-fun e!41353 () Bool)

(declare-fun b!74421 () Bool)

(declare-datatypes ((tuple2!1198 0))(
  ( (tuple2!1199 (_1!806 Token!292) (_2!806 List!1232)) )
))
(declare-datatypes ((Option!73 0))(
  ( (None!72) (Some!72 (v!12711 tuple2!1198)) )
))
(declare-fun isDefined!16 (Option!73) Bool)

(declare-fun maxPrefix!12 (LexerInterface!158 List!1234 List!1232) Option!73)

(assert (=> b!74421 (= e!41353 (not (isDefined!16 (maxPrefix!12 thiss!19403 rules!2471 input!2238))))))

(declare-fun b!74422 () Bool)

(assert (=> b!74422 (= e!41350 e!41353)))

(declare-fun res!38941 () Bool)

(assert (=> b!74422 (=> (not res!38941) (not e!41353))))

(declare-fun lt!13764 () List!1235)

(assert (=> b!74422 (= res!38941 (and (or (not (is-Cons!1229 lt!13764)) (not (is-Nil!1229 (t!19942 lt!13764)))) (is-Cons!1229 lt!13764)))))

(declare-fun list!354 (BalanceConc!674) List!1235)

(assert (=> b!74422 (= lt!13764 (list!354 (_1!805 lt!13763)))))

(declare-fun b!74423 () Bool)

(declare-fun tp!48837 () Bool)

(assert (=> b!74423 (= e!41355 (and e!41352 tp!48837))))

(assert (= (and start!5480 res!38944) b!74420))

(assert (= (and b!74420 res!38943) b!74416))

(assert (= (and b!74416 res!38940) b!74419))

(assert (= (and b!74419 res!38942) b!74422))

(assert (= (and b!74422 res!38941) b!74421))

(assert (= b!74418 b!74417))

(assert (= b!74423 b!74418))

(assert (= (and start!5480 (is-Cons!1228 rules!2471)) b!74423))

(assert (= (and start!5480 (is-Cons!1226 input!2238)) b!74415))

(declare-fun m!46018 () Bool)

(assert (=> b!74419 m!46018))

(declare-fun m!46020 () Bool)

(assert (=> b!74419 m!46020))

(assert (=> b!74419 m!46020))

(declare-fun m!46022 () Bool)

(assert (=> b!74419 m!46022))

(declare-fun m!46024 () Bool)

(assert (=> b!74416 m!46024))

(declare-fun m!46026 () Bool)

(assert (=> b!74421 m!46026))

(assert (=> b!74421 m!46026))

(declare-fun m!46028 () Bool)

(assert (=> b!74421 m!46028))

(declare-fun m!46030 () Bool)

(assert (=> b!74422 m!46030))

(declare-fun m!46032 () Bool)

(assert (=> b!74420 m!46032))

(declare-fun m!46034 () Bool)

(assert (=> b!74418 m!46034))

(declare-fun m!46036 () Bool)

(assert (=> b!74418 m!46036))

(push 1)

(assert tp_is_empty!591)

(assert b_and!3321)

(assert (not b!74420))

(assert (not b!74422))

(assert (not b!74418))

(assert (not b!74421))

(assert (not b!74416))

(assert (not b_next!2293))

(assert b_and!3319)

(assert (not b_next!2295))

(assert (not b!74419))

(assert (not b!74415))

(assert (not b!74423))

(check-sat)

(pop 1)

(push 1)

(assert b_and!3321)

(assert b_and!3319)

(assert (not b_next!2295))

(assert (not b_next!2293))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!13005 () Bool)

(assert (=> d!13005 (= (inv!1636 (tag!444 (h!6625 rules!2471))) (= (mod (str.len (value!10452 (tag!444 (h!6625 rules!2471)))) 2) 0))))

(assert (=> b!74418 d!13005))

(declare-fun d!13007 () Bool)

(declare-fun res!38964 () Bool)

(declare-fun e!41383 () Bool)

(assert (=> d!13007 (=> (not res!38964) (not e!41383))))

(declare-fun semiInverseModEq!40 (Int Int) Bool)

(assert (=> d!13007 (= res!38964 (semiInverseModEq!40 (toChars!620 (transformation!266 (h!6625 rules!2471))) (toValue!761 (transformation!266 (h!6625 rules!2471)))))))

(assert (=> d!13007 (= (inv!1639 (transformation!266 (h!6625 rules!2471))) e!41383)))

(declare-fun b!74453 () Bool)

(declare-fun equivClasses!36 (Int Int) Bool)

(assert (=> b!74453 (= e!41383 (equivClasses!36 (toChars!620 (transformation!266 (h!6625 rules!2471))) (toValue!761 (transformation!266 (h!6625 rules!2471)))))))

(assert (= (and d!13007 res!38964) b!74453))

(declare-fun m!46058 () Bool)

(assert (=> d!13007 m!46058))

(declare-fun m!46060 () Bool)

(assert (=> b!74453 m!46060))

(assert (=> b!74418 d!13007))

(declare-fun d!13009 () Bool)

(declare-fun lt!13773 () Bool)

(declare-fun isEmpty!310 (List!1232) Bool)

(declare-fun list!356 (BalanceConc!672) List!1232)

(assert (=> d!13009 (= lt!13773 (isEmpty!310 (list!356 (_2!805 lt!13763))))))

(declare-fun isEmpty!311 (Conc!334) Bool)

(assert (=> d!13009 (= lt!13773 (isEmpty!311 (c!19380 (_2!805 lt!13763))))))

(assert (=> d!13009 (= (isEmpty!306 (_2!805 lt!13763)) lt!13773)))

(declare-fun bs!7785 () Bool)

(assert (= bs!7785 d!13009))

(declare-fun m!46062 () Bool)

(assert (=> bs!7785 m!46062))

(assert (=> bs!7785 m!46062))

(declare-fun m!46064 () Bool)

(assert (=> bs!7785 m!46064))

(declare-fun m!46066 () Bool)

(assert (=> bs!7785 m!46066))

(assert (=> b!74419 d!13009))

(declare-fun e!41395 () Bool)

(declare-fun lt!13779 () tuple2!1196)

(declare-fun b!74467 () Bool)

(declare-datatypes ((tuple2!1204 0))(
  ( (tuple2!1205 (_1!809 List!1235) (_2!809 List!1232)) )
))
(declare-fun lexList!29 (LexerInterface!158 List!1234 List!1232) tuple2!1204)

(assert (=> b!74467 (= e!41395 (= (list!356 (_2!805 lt!13779)) (_2!809 (lexList!29 thiss!19403 rules!2471 (list!356 (seqFromList!54 input!2238))))))))

(declare-fun b!74468 () Bool)

(declare-fun e!41394 () Bool)

(declare-fun isEmpty!312 (BalanceConc!674) Bool)

(assert (=> b!74468 (= e!41394 (not (isEmpty!312 (_1!805 lt!13779))))))

(declare-fun b!74469 () Bool)

(declare-fun e!41393 () Bool)

(assert (=> b!74469 (= e!41393 (= (_2!805 lt!13779) (seqFromList!54 input!2238)))))

(declare-fun b!74470 () Bool)

(declare-fun res!38978 () Bool)

(assert (=> b!74470 (=> (not res!38978) (not e!41395))))

(assert (=> b!74470 (= res!38978 (= (list!354 (_1!805 lt!13779)) (_1!809 (lexList!29 thiss!19403 rules!2471 (list!356 (seqFromList!54 input!2238))))))))

(declare-fun b!74471 () Bool)

(assert (=> b!74471 (= e!41393 e!41394)))

(declare-fun res!38979 () Bool)

(declare-fun size!1112 (BalanceConc!672) Int)

(assert (=> b!74471 (= res!38979 (< (size!1112 (_2!805 lt!13779)) (size!1112 (seqFromList!54 input!2238))))))

(assert (=> b!74471 (=> (not res!38979) (not e!41394))))

(declare-fun d!13011 () Bool)

(assert (=> d!13011 e!41395))

(declare-fun res!38980 () Bool)

(assert (=> d!13011 (=> (not res!38980) (not e!41395))))

(assert (=> d!13011 (= res!38980 e!41393)))

(declare-fun c!19389 () Bool)

(declare-fun size!1113 (BalanceConc!674) Int)

(assert (=> d!13011 (= c!19389 (> (size!1113 (_1!805 lt!13779)) 0))))

(declare-fun lexTailRecV2!26 (LexerInterface!158 List!1234 BalanceConc!672 BalanceConc!672 BalanceConc!672 BalanceConc!674) tuple2!1196)

(assert (=> d!13011 (= lt!13779 (lexTailRecV2!26 thiss!19403 rules!2471 (seqFromList!54 input!2238) (BalanceConc!673 Empty!334) (seqFromList!54 input!2238) (BalanceConc!675 Empty!335)))))

(assert (=> d!13011 (= (lex!66 thiss!19403 rules!2471 (seqFromList!54 input!2238)) lt!13779)))

(assert (= (and d!13011 c!19389) b!74471))

(assert (= (and d!13011 (not c!19389)) b!74469))

(assert (= (and b!74471 res!38979) b!74468))

(assert (= (and d!13011 res!38980) b!74470))

(assert (= (and b!74470 res!38978) b!74467))

(declare-fun m!46080 () Bool)

(assert (=> b!74471 m!46080))

(assert (=> b!74471 m!46020))

(declare-fun m!46082 () Bool)

(assert (=> b!74471 m!46082))

(declare-fun m!46084 () Bool)

(assert (=> d!13011 m!46084))

(assert (=> d!13011 m!46020))

(assert (=> d!13011 m!46020))

(declare-fun m!46086 () Bool)

(assert (=> d!13011 m!46086))

(declare-fun m!46088 () Bool)

(assert (=> b!74467 m!46088))

(assert (=> b!74467 m!46020))

(declare-fun m!46090 () Bool)

(assert (=> b!74467 m!46090))

(assert (=> b!74467 m!46090))

(declare-fun m!46092 () Bool)

(assert (=> b!74467 m!46092))

(declare-fun m!46094 () Bool)

(assert (=> b!74468 m!46094))

(declare-fun m!46096 () Bool)

(assert (=> b!74470 m!46096))

(assert (=> b!74470 m!46020))

(assert (=> b!74470 m!46090))

(assert (=> b!74470 m!46090))

(assert (=> b!74470 m!46092))

(assert (=> b!74419 d!13011))

(declare-fun d!13021 () Bool)

(declare-fun fromListB!19 (List!1232) BalanceConc!672)

(assert (=> d!13021 (= (seqFromList!54 input!2238) (fromListB!19 input!2238))))

(declare-fun bs!7788 () Bool)

(assert (= bs!7788 d!13021))

(declare-fun m!46098 () Bool)

(assert (=> bs!7788 m!46098))

(assert (=> b!74419 d!13021))

(declare-fun d!13023 () Bool)

(declare-fun list!357 (Conc!335) List!1235)

(assert (=> d!13023 (= (list!354 (_1!805 lt!13763)) (list!357 (c!19382 (_1!805 lt!13763))))))

(declare-fun bs!7789 () Bool)

(assert (= bs!7789 d!13023))

(declare-fun m!46100 () Bool)

(assert (=> bs!7789 m!46100))

(assert (=> b!74422 d!13023))

(declare-fun d!13025 () Bool)

(declare-fun isEmpty!313 (Option!73) Bool)

(assert (=> d!13025 (= (isDefined!16 (maxPrefix!12 thiss!19403 rules!2471 input!2238)) (not (isEmpty!313 (maxPrefix!12 thiss!19403 rules!2471 input!2238))))))

(declare-fun bs!7790 () Bool)

(assert (= bs!7790 d!13025))

(assert (=> bs!7790 m!46026))

(declare-fun m!46102 () Bool)

(assert (=> bs!7790 m!46102))

(assert (=> b!74421 d!13025))

(declare-fun b!74490 () Bool)

(declare-fun res!38998 () Bool)

(declare-fun e!41404 () Bool)

(assert (=> b!74490 (=> (not res!38998) (not e!41404))))

(declare-fun lt!13790 () Option!73)

(declare-fun get!304 (Option!73) tuple2!1198)

(declare-fun apply!172 (TokenValueInjection!336 BalanceConc!672) TokenValue!256)

(assert (=> b!74490 (= res!38998 (= (value!10478 (_1!806 (get!304 lt!13790))) (apply!172 (transformation!266 (rule!739 (_1!806 (get!304 lt!13790)))) (seqFromList!54 (originalCharacters!317 (_1!806 (get!304 lt!13790)))))))))

(declare-fun b!74491 () Bool)

(declare-fun e!41403 () Bool)

(assert (=> b!74491 (= e!41403 e!41404)))

(declare-fun res!38997 () Bool)

(assert (=> b!74491 (=> (not res!38997) (not e!41404))))

(assert (=> b!74491 (= res!38997 (isDefined!16 lt!13790))))

(declare-fun b!74492 () Bool)

(declare-fun res!38995 () Bool)

(assert (=> b!74492 (=> (not res!38995) (not e!41404))))

(declare-fun charsOf!25 (Token!292) BalanceConc!672)

(assert (=> b!74492 (= res!38995 (= (list!356 (charsOf!25 (_1!806 (get!304 lt!13790)))) (originalCharacters!317 (_1!806 (get!304 lt!13790)))))))

(declare-fun b!74493 () Bool)

(declare-fun res!38996 () Bool)

(assert (=> b!74493 (=> (not res!38996) (not e!41404))))

(declare-fun ++!81 (List!1232 List!1232) List!1232)

(assert (=> b!74493 (= res!38996 (= (++!81 (list!356 (charsOf!25 (_1!806 (get!304 lt!13790)))) (_2!806 (get!304 lt!13790))) input!2238))))

(declare-fun b!74494 () Bool)

(declare-fun res!38999 () Bool)

(assert (=> b!74494 (=> (not res!38999) (not e!41404))))

(declare-fun size!1114 (List!1232) Int)

(assert (=> b!74494 (= res!38999 (< (size!1114 (_2!806 (get!304 lt!13790))) (size!1114 input!2238)))))

(declare-fun d!13027 () Bool)

(assert (=> d!13027 e!41403))

(declare-fun res!39001 () Bool)

(assert (=> d!13027 (=> res!39001 e!41403)))

(assert (=> d!13027 (= res!39001 (isEmpty!313 lt!13790))))

(declare-fun e!41402 () Option!73)

(assert (=> d!13027 (= lt!13790 e!41402)))

(declare-fun c!19392 () Bool)

(assert (=> d!13027 (= c!19392 (and (is-Cons!1228 rules!2471) (is-Nil!1228 (t!19941 rules!2471))))))

(declare-datatypes ((Unit!732 0))(
  ( (Unit!733) )
))
(declare-fun lt!13793 () Unit!732)

(declare-fun lt!13792 () Unit!732)

(assert (=> d!13027 (= lt!13793 lt!13792)))

(declare-fun isPrefix!7 (List!1232 List!1232) Bool)

(assert (=> d!13027 (isPrefix!7 input!2238 input!2238)))

(declare-fun lemmaIsPrefixRefl!7 (List!1232 List!1232) Unit!732)

(assert (=> d!13027 (= lt!13792 (lemmaIsPrefixRefl!7 input!2238 input!2238))))

(declare-fun rulesValidInductive!19 (LexerInterface!158 List!1234) Bool)

(assert (=> d!13027 (rulesValidInductive!19 thiss!19403 rules!2471)))

(assert (=> d!13027 (= (maxPrefix!12 thiss!19403 rules!2471 input!2238) lt!13790)))

(declare-fun b!74495 () Bool)

(declare-fun lt!13791 () Option!73)

(declare-fun lt!13794 () Option!73)

(assert (=> b!74495 (= e!41402 (ite (and (is-None!72 lt!13791) (is-None!72 lt!13794)) None!72 (ite (is-None!72 lt!13794) lt!13791 (ite (is-None!72 lt!13791) lt!13794 (ite (>= (size!1110 (_1!806 (v!12711 lt!13791))) (size!1110 (_1!806 (v!12711 lt!13794)))) lt!13791 lt!13794)))))))

(declare-fun call!3623 () Option!73)

(assert (=> b!74495 (= lt!13791 call!3623)))

(assert (=> b!74495 (= lt!13794 (maxPrefix!12 thiss!19403 (t!19941 rules!2471) input!2238))))

(declare-fun bm!3618 () Bool)

(declare-fun maxPrefixOneRule!4 (LexerInterface!158 Rule!332 List!1232) Option!73)

(assert (=> bm!3618 (= call!3623 (maxPrefixOneRule!4 thiss!19403 (h!6625 rules!2471) input!2238))))

(declare-fun b!74496 () Bool)

(assert (=> b!74496 (= e!41402 call!3623)))

(declare-fun b!74497 () Bool)

(declare-fun contains!188 (List!1234 Rule!332) Bool)

(assert (=> b!74497 (= e!41404 (contains!188 rules!2471 (rule!739 (_1!806 (get!304 lt!13790)))))))

(declare-fun b!74498 () Bool)

(declare-fun res!39000 () Bool)

(assert (=> b!74498 (=> (not res!39000) (not e!41404))))

(declare-fun matchR!8 (Regex!334 List!1232) Bool)

(assert (=> b!74498 (= res!39000 (matchR!8 (regex!266 (rule!739 (_1!806 (get!304 lt!13790)))) (list!356 (charsOf!25 (_1!806 (get!304 lt!13790))))))))

(assert (= (and d!13027 c!19392) b!74496))

(assert (= (and d!13027 (not c!19392)) b!74495))

(assert (= (or b!74496 b!74495) bm!3618))

(assert (= (and d!13027 (not res!39001)) b!74491))

(assert (= (and b!74491 res!38997) b!74492))

(assert (= (and b!74492 res!38995) b!74494))

(assert (= (and b!74494 res!38999) b!74493))

(assert (= (and b!74493 res!38996) b!74490))

(assert (= (and b!74490 res!38998) b!74498))

(assert (= (and b!74498 res!39000) b!74497))

(declare-fun m!46104 () Bool)

(assert (=> b!74494 m!46104))

(declare-fun m!46106 () Bool)

(assert (=> b!74494 m!46106))

(declare-fun m!46108 () Bool)

(assert (=> b!74494 m!46108))

(declare-fun m!46110 () Bool)

(assert (=> d!13027 m!46110))

(declare-fun m!46112 () Bool)

(assert (=> d!13027 m!46112))

(declare-fun m!46114 () Bool)

(assert (=> d!13027 m!46114))

(declare-fun m!46116 () Bool)

(assert (=> d!13027 m!46116))

(assert (=> b!74492 m!46104))

(declare-fun m!46118 () Bool)

(assert (=> b!74492 m!46118))

(assert (=> b!74492 m!46118))

(declare-fun m!46120 () Bool)

(assert (=> b!74492 m!46120))

(declare-fun m!46122 () Bool)

(assert (=> bm!3618 m!46122))

(assert (=> b!74497 m!46104))

(declare-fun m!46124 () Bool)

(assert (=> b!74497 m!46124))

(assert (=> b!74493 m!46104))

(assert (=> b!74493 m!46118))

(assert (=> b!74493 m!46118))

(assert (=> b!74493 m!46120))

(assert (=> b!74493 m!46120))

(declare-fun m!46126 () Bool)

(assert (=> b!74493 m!46126))

(assert (=> b!74490 m!46104))

(declare-fun m!46128 () Bool)

(assert (=> b!74490 m!46128))

(assert (=> b!74490 m!46128))

(declare-fun m!46130 () Bool)

(assert (=> b!74490 m!46130))

(assert (=> b!74498 m!46104))

(assert (=> b!74498 m!46118))

(assert (=> b!74498 m!46118))

(assert (=> b!74498 m!46120))

(assert (=> b!74498 m!46120))

(declare-fun m!46132 () Bool)

(assert (=> b!74498 m!46132))

(declare-fun m!46134 () Bool)

(assert (=> b!74495 m!46134))

(declare-fun m!46136 () Bool)

(assert (=> b!74491 m!46136))

(assert (=> b!74421 d!13027))

(declare-fun d!13029 () Bool)

(declare-fun res!39004 () Bool)

(declare-fun e!41407 () Bool)

(assert (=> d!13029 (=> (not res!39004) (not e!41407))))

(declare-fun rulesValid!48 (LexerInterface!158 List!1234) Bool)

(assert (=> d!13029 (= res!39004 (rulesValid!48 thiss!19403 rules!2471))))

(assert (=> d!13029 (= (rulesInvariant!152 thiss!19403 rules!2471) e!41407)))

(declare-fun b!74501 () Bool)

(declare-datatypes ((List!1240 0))(
  ( (Nil!1234) (Cons!1234 (h!6631 String!1673) (t!19947 List!1240)) )
))
(declare-fun noDuplicateTag!48 (LexerInterface!158 List!1234 List!1240) Bool)

(assert (=> b!74501 (= e!41407 (noDuplicateTag!48 thiss!19403 rules!2471 Nil!1234))))

(assert (= (and d!13029 res!39004) b!74501))

(declare-fun m!46138 () Bool)

(assert (=> d!13029 m!46138))

(declare-fun m!46140 () Bool)

(assert (=> b!74501 m!46140))

(assert (=> b!74416 d!13029))

(declare-fun d!13031 () Bool)

(assert (=> d!13031 (= (isEmpty!307 rules!2471) (is-Nil!1228 rules!2471))))

(assert (=> b!74420 d!13031))

(declare-fun b!74512 () Bool)

(declare-fun e!41410 () Bool)

(assert (=> b!74512 (= e!41410 tp_is_empty!591)))

(declare-fun b!74515 () Bool)

(declare-fun tp!48864 () Bool)

(declare-fun tp!48865 () Bool)

(assert (=> b!74515 (= e!41410 (and tp!48864 tp!48865))))

(declare-fun b!74514 () Bool)

(declare-fun tp!48863 () Bool)

(assert (=> b!74514 (= e!41410 tp!48863)))

(declare-fun b!74513 () Bool)

(declare-fun tp!48867 () Bool)

(declare-fun tp!48866 () Bool)

(assert (=> b!74513 (= e!41410 (and tp!48867 tp!48866))))

(assert (=> b!74418 (= tp!48834 e!41410)))

(assert (= (and b!74418 (is-ElementMatch!334 (regex!266 (h!6625 rules!2471)))) b!74512))

(assert (= (and b!74418 (is-Concat!590 (regex!266 (h!6625 rules!2471)))) b!74513))

(assert (= (and b!74418 (is-Star!334 (regex!266 (h!6625 rules!2471)))) b!74514))

(assert (= (and b!74418 (is-Union!334 (regex!266 (h!6625 rules!2471)))) b!74515))

(declare-fun b!74526 () Bool)

(declare-fun b_free!2301 () Bool)

(declare-fun b_next!2301 () Bool)

(assert (=> b!74526 (= b_free!2301 (not b_next!2301))))

(declare-fun tp!48877 () Bool)

(declare-fun b_and!3327 () Bool)

(assert (=> b!74526 (= tp!48877 b_and!3327)))

(declare-fun b_free!2303 () Bool)

(declare-fun b_next!2303 () Bool)

(assert (=> b!74526 (= b_free!2303 (not b_next!2303))))

(declare-fun tp!48878 () Bool)

(declare-fun b_and!3329 () Bool)

(assert (=> b!74526 (= tp!48878 b_and!3329)))

(declare-fun e!41419 () Bool)

(assert (=> b!74526 (= e!41419 (and tp!48877 tp!48878))))

(declare-fun e!41420 () Bool)

(declare-fun tp!48876 () Bool)

(declare-fun b!74525 () Bool)

(assert (=> b!74525 (= e!41420 (and tp!48876 (inv!1636 (tag!444 (h!6625 (t!19941 rules!2471)))) (inv!1639 (transformation!266 (h!6625 (t!19941 rules!2471)))) e!41419))))

(declare-fun b!74524 () Bool)

(declare-fun e!41422 () Bool)

(declare-fun tp!48879 () Bool)

(assert (=> b!74524 (= e!41422 (and e!41420 tp!48879))))

(assert (=> b!74423 (= tp!48837 e!41422)))

(assert (= b!74525 b!74526))

(assert (= b!74524 b!74525))

(assert (= (and b!74423 (is-Cons!1228 (t!19941 rules!2471))) b!74524))

(declare-fun m!46142 () Bool)

(assert (=> b!74525 m!46142))

(declare-fun m!46144 () Bool)

(assert (=> b!74525 m!46144))

(declare-fun b!74531 () Bool)

(declare-fun e!41425 () Bool)

(declare-fun tp!48882 () Bool)

(assert (=> b!74531 (= e!41425 (and tp_is_empty!591 tp!48882))))

(assert (=> b!74415 (= tp!48835 e!41425)))

(assert (= (and b!74415 (is-Cons!1226 (t!19939 input!2238))) b!74531))

(push 1)

(assert tp_is_empty!591)

(assert (not d!13011))

(assert b_and!3327)

(assert (not d!13027))

(assert (not bm!3618))

(assert (not b!74467))

(assert (not b!74515))

(assert (not b_next!2293))

(assert (not b!74501))

(assert (not d!13007))

(assert (not b!74493))

(assert (not b!74497))

(assert (not b_next!2301))

(assert b_and!3321)

(assert (not b!74495))

(assert (not b!74453))

(assert (not b_next!2295))

(assert (not b!74468))

(assert (not d!13025))

(assert (not b!74494))

(assert (not d!13021))

(assert (not d!13029))

(assert (not b!74492))

(assert (not b!74514))

(assert (not b!74470))

(assert (not b!74471))

(assert (not d!13023))

(assert (not b!74490))

(assert (not b_next!2303))

(assert (not b!74531))

(assert (not d!13009))

(assert (not b!74491))

(assert (not b!74525))

(assert b_and!3329)

(assert b_and!3319)

(assert (not b!74498))

(assert (not b!74513))

(assert (not b!74524))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2295))

(assert b_and!3327)

(assert (not b_next!2303))

(assert (not b_next!2293))

(assert (not b_next!2301))

(assert b_and!3321)

(assert b_and!3329)

(assert b_and!3319)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!13045 () Bool)

(declare-fun lt!13815 () Int)

(assert (=> d!13045 (>= lt!13815 0)))

(declare-fun e!41467 () Int)

(assert (=> d!13045 (= lt!13815 e!41467)))

(declare-fun c!19401 () Bool)

(assert (=> d!13045 (= c!19401 (is-Nil!1226 (_2!806 (get!304 lt!13790))))))

(assert (=> d!13045 (= (size!1114 (_2!806 (get!304 lt!13790))) lt!13815)))

(declare-fun b!74611 () Bool)

(assert (=> b!74611 (= e!41467 0)))

(declare-fun b!74612 () Bool)

(assert (=> b!74612 (= e!41467 (+ 1 (size!1114 (t!19939 (_2!806 (get!304 lt!13790))))))))

(assert (= (and d!13045 c!19401) b!74611))

(assert (= (and d!13045 (not c!19401)) b!74612))

(declare-fun m!46210 () Bool)

(assert (=> b!74612 m!46210))

(assert (=> b!74494 d!13045))

(declare-fun d!13047 () Bool)

(assert (=> d!13047 (= (get!304 lt!13790) (v!12711 lt!13790))))

(assert (=> b!74494 d!13047))

(declare-fun d!13049 () Bool)

(declare-fun lt!13816 () Int)

(assert (=> d!13049 (>= lt!13816 0)))

(declare-fun e!41468 () Int)

(assert (=> d!13049 (= lt!13816 e!41468)))

(declare-fun c!19402 () Bool)

(assert (=> d!13049 (= c!19402 (is-Nil!1226 input!2238))))

(assert (=> d!13049 (= (size!1114 input!2238) lt!13816)))

(declare-fun b!74613 () Bool)

(assert (=> b!74613 (= e!41468 0)))

(declare-fun b!74614 () Bool)

(assert (=> b!74614 (= e!41468 (+ 1 (size!1114 (t!19939 input!2238))))))

(assert (= (and d!13049 c!19402) b!74613))

(assert (= (and d!13049 (not c!19402)) b!74614))

(declare-fun m!46212 () Bool)

(assert (=> b!74614 m!46212))

(assert (=> b!74494 d!13049))

(declare-fun d!13051 () Bool)

(declare-fun lt!13819 () Bool)

(declare-fun isEmpty!318 (List!1235) Bool)

(assert (=> d!13051 (= lt!13819 (isEmpty!318 (list!354 (_1!805 lt!13779))))))

(declare-fun isEmpty!319 (Conc!335) Bool)

(assert (=> d!13051 (= lt!13819 (isEmpty!319 (c!19382 (_1!805 lt!13779))))))

(assert (=> d!13051 (= (isEmpty!312 (_1!805 lt!13779)) lt!13819)))

(declare-fun bs!7793 () Bool)

(assert (= bs!7793 d!13051))

(assert (=> bs!7793 m!46096))

(assert (=> bs!7793 m!46096))

(declare-fun m!46214 () Bool)

(assert (=> bs!7793 m!46214))

(declare-fun m!46216 () Bool)

(assert (=> bs!7793 m!46216))

(assert (=> b!74468 d!13051))

(declare-fun b!74615 () Bool)

(declare-fun res!39043 () Bool)

(declare-fun e!41471 () Bool)

(assert (=> b!74615 (=> (not res!39043) (not e!41471))))

(declare-fun lt!13820 () Option!73)

(assert (=> b!74615 (= res!39043 (= (value!10478 (_1!806 (get!304 lt!13820))) (apply!172 (transformation!266 (rule!739 (_1!806 (get!304 lt!13820)))) (seqFromList!54 (originalCharacters!317 (_1!806 (get!304 lt!13820)))))))))

(declare-fun b!74616 () Bool)

(declare-fun e!41470 () Bool)

(assert (=> b!74616 (= e!41470 e!41471)))

(declare-fun res!39042 () Bool)

(assert (=> b!74616 (=> (not res!39042) (not e!41471))))

(assert (=> b!74616 (= res!39042 (isDefined!16 lt!13820))))

(declare-fun b!74617 () Bool)

(declare-fun res!39040 () Bool)

(assert (=> b!74617 (=> (not res!39040) (not e!41471))))

(assert (=> b!74617 (= res!39040 (= (list!356 (charsOf!25 (_1!806 (get!304 lt!13820)))) (originalCharacters!317 (_1!806 (get!304 lt!13820)))))))

(declare-fun b!74618 () Bool)

(declare-fun res!39041 () Bool)

(assert (=> b!74618 (=> (not res!39041) (not e!41471))))

(assert (=> b!74618 (= res!39041 (= (++!81 (list!356 (charsOf!25 (_1!806 (get!304 lt!13820)))) (_2!806 (get!304 lt!13820))) input!2238))))

(declare-fun b!74619 () Bool)

(declare-fun res!39044 () Bool)

(assert (=> b!74619 (=> (not res!39044) (not e!41471))))

(assert (=> b!74619 (= res!39044 (< (size!1114 (_2!806 (get!304 lt!13820))) (size!1114 input!2238)))))

(declare-fun d!13053 () Bool)

(assert (=> d!13053 e!41470))

(declare-fun res!39046 () Bool)

(assert (=> d!13053 (=> res!39046 e!41470)))

(assert (=> d!13053 (= res!39046 (isEmpty!313 lt!13820))))

(declare-fun e!41469 () Option!73)

(assert (=> d!13053 (= lt!13820 e!41469)))

(declare-fun c!19403 () Bool)

(assert (=> d!13053 (= c!19403 (and (is-Cons!1228 (t!19941 rules!2471)) (is-Nil!1228 (t!19941 (t!19941 rules!2471)))))))

(declare-fun lt!13823 () Unit!732)

(declare-fun lt!13822 () Unit!732)

(assert (=> d!13053 (= lt!13823 lt!13822)))

(assert (=> d!13053 (isPrefix!7 input!2238 input!2238)))

(assert (=> d!13053 (= lt!13822 (lemmaIsPrefixRefl!7 input!2238 input!2238))))

(assert (=> d!13053 (rulesValidInductive!19 thiss!19403 (t!19941 rules!2471))))

(assert (=> d!13053 (= (maxPrefix!12 thiss!19403 (t!19941 rules!2471) input!2238) lt!13820)))

(declare-fun b!74620 () Bool)

(declare-fun lt!13821 () Option!73)

(declare-fun lt!13824 () Option!73)

(assert (=> b!74620 (= e!41469 (ite (and (is-None!72 lt!13821) (is-None!72 lt!13824)) None!72 (ite (is-None!72 lt!13824) lt!13821 (ite (is-None!72 lt!13821) lt!13824 (ite (>= (size!1110 (_1!806 (v!12711 lt!13821))) (size!1110 (_1!806 (v!12711 lt!13824)))) lt!13821 lt!13824)))))))

(declare-fun call!3627 () Option!73)

(assert (=> b!74620 (= lt!13821 call!3627)))

(assert (=> b!74620 (= lt!13824 (maxPrefix!12 thiss!19403 (t!19941 (t!19941 rules!2471)) input!2238))))

(declare-fun bm!3622 () Bool)

(assert (=> bm!3622 (= call!3627 (maxPrefixOneRule!4 thiss!19403 (h!6625 (t!19941 rules!2471)) input!2238))))

(declare-fun b!74621 () Bool)

(assert (=> b!74621 (= e!41469 call!3627)))

(declare-fun b!74622 () Bool)

(assert (=> b!74622 (= e!41471 (contains!188 (t!19941 rules!2471) (rule!739 (_1!806 (get!304 lt!13820)))))))

(declare-fun b!74623 () Bool)

(declare-fun res!39045 () Bool)

(assert (=> b!74623 (=> (not res!39045) (not e!41471))))

(assert (=> b!74623 (= res!39045 (matchR!8 (regex!266 (rule!739 (_1!806 (get!304 lt!13820)))) (list!356 (charsOf!25 (_1!806 (get!304 lt!13820))))))))

(assert (= (and d!13053 c!19403) b!74621))

(assert (= (and d!13053 (not c!19403)) b!74620))

(assert (= (or b!74621 b!74620) bm!3622))

(assert (= (and d!13053 (not res!39046)) b!74616))

(assert (= (and b!74616 res!39042) b!74617))

(assert (= (and b!74617 res!39040) b!74619))

(assert (= (and b!74619 res!39044) b!74618))

(assert (= (and b!74618 res!39041) b!74615))

(assert (= (and b!74615 res!39043) b!74623))

(assert (= (and b!74623 res!39045) b!74622))

(declare-fun m!46218 () Bool)

(assert (=> b!74619 m!46218))

(declare-fun m!46220 () Bool)

(assert (=> b!74619 m!46220))

(assert (=> b!74619 m!46108))

(declare-fun m!46222 () Bool)

(assert (=> d!13053 m!46222))

(assert (=> d!13053 m!46112))

(assert (=> d!13053 m!46114))

(declare-fun m!46224 () Bool)

(assert (=> d!13053 m!46224))

(assert (=> b!74617 m!46218))

(declare-fun m!46226 () Bool)

(assert (=> b!74617 m!46226))

(assert (=> b!74617 m!46226))

(declare-fun m!46228 () Bool)

(assert (=> b!74617 m!46228))

(declare-fun m!46230 () Bool)

(assert (=> bm!3622 m!46230))

(assert (=> b!74622 m!46218))

(declare-fun m!46232 () Bool)

(assert (=> b!74622 m!46232))

(assert (=> b!74618 m!46218))

(assert (=> b!74618 m!46226))

(assert (=> b!74618 m!46226))

(assert (=> b!74618 m!46228))

(assert (=> b!74618 m!46228))

(declare-fun m!46234 () Bool)

(assert (=> b!74618 m!46234))

(assert (=> b!74615 m!46218))

(declare-fun m!46236 () Bool)

(assert (=> b!74615 m!46236))

(assert (=> b!74615 m!46236))

(declare-fun m!46238 () Bool)

(assert (=> b!74615 m!46238))

(assert (=> b!74623 m!46218))

(assert (=> b!74623 m!46226))

(assert (=> b!74623 m!46226))

(assert (=> b!74623 m!46228))

(assert (=> b!74623 m!46228))

(declare-fun m!46240 () Bool)

(assert (=> b!74623 m!46240))

(declare-fun m!46242 () Bool)

(assert (=> b!74620 m!46242))

(declare-fun m!46244 () Bool)

(assert (=> b!74616 m!46244))

(assert (=> b!74495 d!13053))

(declare-fun d!13055 () Bool)

(declare-fun list!360 (Conc!334) List!1232)

(assert (=> d!13055 (= (list!356 (_2!805 lt!13779)) (list!360 (c!19380 (_2!805 lt!13779))))))

(declare-fun bs!7794 () Bool)

(assert (= bs!7794 d!13055))

(declare-fun m!46246 () Bool)

(assert (=> bs!7794 m!46246))

(assert (=> b!74467 d!13055))

(declare-fun d!13057 () Bool)

(declare-fun e!41478 () Bool)

(assert (=> d!13057 e!41478))

(declare-fun c!19409 () Bool)

(declare-fun lt!13832 () tuple2!1204)

(declare-fun size!1118 (List!1235) Int)

(assert (=> d!13057 (= c!19409 (> (size!1118 (_1!809 lt!13832)) 0))))

(declare-fun e!41479 () tuple2!1204)

(assert (=> d!13057 (= lt!13832 e!41479)))

(declare-fun c!19408 () Bool)

(declare-fun lt!13831 () Option!73)

(assert (=> d!13057 (= c!19408 (is-Some!72 lt!13831))))

(assert (=> d!13057 (= lt!13831 (maxPrefix!12 thiss!19403 rules!2471 (list!356 (seqFromList!54 input!2238))))))

(assert (=> d!13057 (= (lexList!29 thiss!19403 rules!2471 (list!356 (seqFromList!54 input!2238))) lt!13832)))

(declare-fun b!74634 () Bool)

(declare-fun e!41480 () Bool)

(assert (=> b!74634 (= e!41478 e!41480)))

(declare-fun res!39049 () Bool)

(assert (=> b!74634 (= res!39049 (< (size!1114 (_2!809 lt!13832)) (size!1114 (list!356 (seqFromList!54 input!2238)))))))

(assert (=> b!74634 (=> (not res!39049) (not e!41480))))

(declare-fun b!74635 () Bool)

(assert (=> b!74635 (= e!41478 (= (_2!809 lt!13832) (list!356 (seqFromList!54 input!2238))))))

(declare-fun b!74636 () Bool)

(assert (=> b!74636 (= e!41479 (tuple2!1205 Nil!1229 (list!356 (seqFromList!54 input!2238))))))

(declare-fun b!74637 () Bool)

(assert (=> b!74637 (= e!41480 (not (isEmpty!318 (_1!809 lt!13832))))))

(declare-fun b!74638 () Bool)

(declare-fun lt!13833 () tuple2!1204)

(assert (=> b!74638 (= e!41479 (tuple2!1205 (Cons!1229 (_1!806 (v!12711 lt!13831)) (_1!809 lt!13833)) (_2!809 lt!13833)))))

(assert (=> b!74638 (= lt!13833 (lexList!29 thiss!19403 rules!2471 (_2!806 (v!12711 lt!13831))))))

(assert (= (and d!13057 c!19408) b!74638))

(assert (= (and d!13057 (not c!19408)) b!74636))

(assert (= (and d!13057 c!19409) b!74634))

(assert (= (and d!13057 (not c!19409)) b!74635))

(assert (= (and b!74634 res!39049) b!74637))

(declare-fun m!46248 () Bool)

(assert (=> d!13057 m!46248))

(assert (=> d!13057 m!46090))

(declare-fun m!46250 () Bool)

(assert (=> d!13057 m!46250))

(declare-fun m!46252 () Bool)

(assert (=> b!74634 m!46252))

(assert (=> b!74634 m!46090))

(declare-fun m!46254 () Bool)

(assert (=> b!74634 m!46254))

(declare-fun m!46256 () Bool)

(assert (=> b!74637 m!46256))

(declare-fun m!46258 () Bool)

(assert (=> b!74638 m!46258))

(assert (=> b!74467 d!13057))

(declare-fun d!13059 () Bool)

(assert (=> d!13059 (= (list!356 (seqFromList!54 input!2238)) (list!360 (c!19380 (seqFromList!54 input!2238))))))

(declare-fun bs!7795 () Bool)

(assert (= bs!7795 d!13059))

(declare-fun m!46260 () Bool)

(assert (=> bs!7795 m!46260))

(assert (=> b!74467 d!13059))

(declare-fun b!74650 () Bool)

(declare-fun e!41485 () Bool)

(declare-fun lt!13836 () List!1232)

(assert (=> b!74650 (= e!41485 (or (not (= (_2!806 (get!304 lt!13790)) Nil!1226)) (= lt!13836 (list!356 (charsOf!25 (_1!806 (get!304 lt!13790)))))))))

(declare-fun b!74647 () Bool)

(declare-fun e!41486 () List!1232)

(assert (=> b!74647 (= e!41486 (_2!806 (get!304 lt!13790)))))

(declare-fun d!13061 () Bool)

(assert (=> d!13061 e!41485))

(declare-fun res!39054 () Bool)

(assert (=> d!13061 (=> (not res!39054) (not e!41485))))

(declare-fun content!52 (List!1232) (Set C!1590))

(assert (=> d!13061 (= res!39054 (= (content!52 lt!13836) (set.union (content!52 (list!356 (charsOf!25 (_1!806 (get!304 lt!13790))))) (content!52 (_2!806 (get!304 lt!13790))))))))

(assert (=> d!13061 (= lt!13836 e!41486)))

(declare-fun c!19412 () Bool)

(assert (=> d!13061 (= c!19412 (is-Nil!1226 (list!356 (charsOf!25 (_1!806 (get!304 lt!13790))))))))

(assert (=> d!13061 (= (++!81 (list!356 (charsOf!25 (_1!806 (get!304 lt!13790)))) (_2!806 (get!304 lt!13790))) lt!13836)))

(declare-fun b!74649 () Bool)

(declare-fun res!39055 () Bool)

(assert (=> b!74649 (=> (not res!39055) (not e!41485))))

(assert (=> b!74649 (= res!39055 (= (size!1114 lt!13836) (+ (size!1114 (list!356 (charsOf!25 (_1!806 (get!304 lt!13790))))) (size!1114 (_2!806 (get!304 lt!13790))))))))

(declare-fun b!74648 () Bool)

(assert (=> b!74648 (= e!41486 (Cons!1226 (h!6623 (list!356 (charsOf!25 (_1!806 (get!304 lt!13790))))) (++!81 (t!19939 (list!356 (charsOf!25 (_1!806 (get!304 lt!13790))))) (_2!806 (get!304 lt!13790)))))))

(assert (= (and d!13061 c!19412) b!74647))

(assert (= (and d!13061 (not c!19412)) b!74648))

(assert (= (and d!13061 res!39054) b!74649))

(assert (= (and b!74649 res!39055) b!74650))

(declare-fun m!46262 () Bool)

(assert (=> d!13061 m!46262))

(assert (=> d!13061 m!46120))

(declare-fun m!46264 () Bool)

(assert (=> d!13061 m!46264))

(declare-fun m!46266 () Bool)

(assert (=> d!13061 m!46266))

(declare-fun m!46268 () Bool)

(assert (=> b!74649 m!46268))

(assert (=> b!74649 m!46120))

(declare-fun m!46270 () Bool)

(assert (=> b!74649 m!46270))

(assert (=> b!74649 m!46106))

(declare-fun m!46272 () Bool)

(assert (=> b!74648 m!46272))

(assert (=> b!74493 d!13061))

(declare-fun d!13063 () Bool)

(assert (=> d!13063 (= (list!356 (charsOf!25 (_1!806 (get!304 lt!13790)))) (list!360 (c!19380 (charsOf!25 (_1!806 (get!304 lt!13790))))))))

(declare-fun bs!7796 () Bool)

(assert (= bs!7796 d!13063))

(declare-fun m!46274 () Bool)

(assert (=> bs!7796 m!46274))

(assert (=> b!74493 d!13063))

(declare-fun d!13065 () Bool)

(declare-fun lt!13839 () BalanceConc!672)

(assert (=> d!13065 (= (list!356 lt!13839) (originalCharacters!317 (_1!806 (get!304 lt!13790))))))

(declare-fun dynLambda!281 (Int TokenValue!256) BalanceConc!672)

(assert (=> d!13065 (= lt!13839 (dynLambda!281 (toChars!620 (transformation!266 (rule!739 (_1!806 (get!304 lt!13790))))) (value!10478 (_1!806 (get!304 lt!13790)))))))

(assert (=> d!13065 (= (charsOf!25 (_1!806 (get!304 lt!13790))) lt!13839)))

(declare-fun b_lambda!849 () Bool)

(assert (=> (not b_lambda!849) (not d!13065)))

(declare-fun tb!2331 () Bool)

(declare-fun t!19950 () Bool)

(assert (=> (and b!74417 (= (toChars!620 (transformation!266 (h!6625 rules!2471))) (toChars!620 (transformation!266 (rule!739 (_1!806 (get!304 lt!13790)))))) t!19950) tb!2331))

(declare-fun b!74655 () Bool)

(declare-fun e!41489 () Bool)

(declare-fun tp!48915 () Bool)

(declare-fun inv!1641 (Conc!334) Bool)

(assert (=> b!74655 (= e!41489 (and (inv!1641 (c!19380 (dynLambda!281 (toChars!620 (transformation!266 (rule!739 (_1!806 (get!304 lt!13790))))) (value!10478 (_1!806 (get!304 lt!13790)))))) tp!48915))))

(declare-fun result!3292 () Bool)

(declare-fun inv!1642 (BalanceConc!672) Bool)

(assert (=> tb!2331 (= result!3292 (and (inv!1642 (dynLambda!281 (toChars!620 (transformation!266 (rule!739 (_1!806 (get!304 lt!13790))))) (value!10478 (_1!806 (get!304 lt!13790))))) e!41489))))

(assert (= tb!2331 b!74655))

(declare-fun m!46276 () Bool)

(assert (=> b!74655 m!46276))

(declare-fun m!46278 () Bool)

(assert (=> tb!2331 m!46278))

(assert (=> d!13065 t!19950))

(declare-fun b_and!3335 () Bool)

(assert (= b_and!3321 (and (=> t!19950 result!3292) b_and!3335)))

(declare-fun tb!2333 () Bool)

(declare-fun t!19952 () Bool)

(assert (=> (and b!74526 (= (toChars!620 (transformation!266 (h!6625 (t!19941 rules!2471)))) (toChars!620 (transformation!266 (rule!739 (_1!806 (get!304 lt!13790)))))) t!19952) tb!2333))

(declare-fun result!3296 () Bool)

(assert (= result!3296 result!3292))

(assert (=> d!13065 t!19952))

(declare-fun b_and!3337 () Bool)

(assert (= b_and!3329 (and (=> t!19952 result!3296) b_and!3337)))

(declare-fun m!46280 () Bool)

(assert (=> d!13065 m!46280))

(declare-fun m!46282 () Bool)

(assert (=> d!13065 m!46282))

(assert (=> b!74493 d!13065))

(assert (=> b!74493 d!13047))

(declare-fun d!13067 () Bool)

(assert (=> d!13067 true))

(declare-fun order!463 () Int)

(declare-fun lambda!1330 () Int)

(declare-fun order!461 () Int)

(declare-fun dynLambda!282 (Int Int) Int)

(declare-fun dynLambda!283 (Int Int) Int)

(assert (=> d!13067 (< (dynLambda!282 order!461 (toValue!761 (transformation!266 (h!6625 rules!2471)))) (dynLambda!283 order!463 lambda!1330))))

(declare-fun Forall2!20 (Int) Bool)

(assert (=> d!13067 (= (equivClasses!36 (toChars!620 (transformation!266 (h!6625 rules!2471))) (toValue!761 (transformation!266 (h!6625 rules!2471)))) (Forall2!20 lambda!1330))))

(declare-fun bs!7800 () Bool)

(assert (= bs!7800 d!13067))

(declare-fun m!46324 () Bool)

(assert (=> bs!7800 m!46324))

(assert (=> b!74453 d!13067))

(declare-fun d!13093 () Bool)

(declare-fun lt!13861 () Int)

(assert (=> d!13093 (= lt!13861 (size!1114 (list!356 (_2!805 lt!13779))))))

(declare-fun size!1119 (Conc!334) Int)

(assert (=> d!13093 (= lt!13861 (size!1119 (c!19380 (_2!805 lt!13779))))))

(assert (=> d!13093 (= (size!1112 (_2!805 lt!13779)) lt!13861)))

(declare-fun bs!7801 () Bool)

(assert (= bs!7801 d!13093))

(assert (=> bs!7801 m!46088))

(assert (=> bs!7801 m!46088))

(declare-fun m!46326 () Bool)

(assert (=> bs!7801 m!46326))

(declare-fun m!46328 () Bool)

(assert (=> bs!7801 m!46328))

(assert (=> b!74471 d!13093))

(declare-fun d!13095 () Bool)

(declare-fun lt!13862 () Int)

(assert (=> d!13095 (= lt!13862 (size!1114 (list!356 (seqFromList!54 input!2238))))))

(assert (=> d!13095 (= lt!13862 (size!1119 (c!19380 (seqFromList!54 input!2238))))))

(assert (=> d!13095 (= (size!1112 (seqFromList!54 input!2238)) lt!13862)))

(declare-fun bs!7802 () Bool)

(assert (= bs!7802 d!13095))

(assert (=> bs!7802 m!46020))

(assert (=> bs!7802 m!46090))

(assert (=> bs!7802 m!46090))

(assert (=> bs!7802 m!46254))

(declare-fun m!46330 () Bool)

(assert (=> bs!7802 m!46330))

(assert (=> b!74471 d!13095))

(declare-fun d!13097 () Bool)

(declare-fun e!41517 () Bool)

(assert (=> d!13097 e!41517))

(declare-fun res!39080 () Bool)

(assert (=> d!13097 (=> (not res!39080) (not e!41517))))

(declare-fun lt!13865 () BalanceConc!672)

(assert (=> d!13097 (= res!39080 (= (list!356 lt!13865) input!2238))))

(declare-fun fromList!8 (List!1232) Conc!334)

(assert (=> d!13097 (= lt!13865 (BalanceConc!673 (fromList!8 input!2238)))))

(assert (=> d!13097 (= (fromListB!19 input!2238) lt!13865)))

(declare-fun b!74697 () Bool)

(declare-fun isBalanced!62 (Conc!334) Bool)

(assert (=> b!74697 (= e!41517 (isBalanced!62 (fromList!8 input!2238)))))

(assert (= (and d!13097 res!39080) b!74697))

(declare-fun m!46332 () Bool)

(assert (=> d!13097 m!46332))

(declare-fun m!46334 () Bool)

(assert (=> d!13097 m!46334))

(assert (=> b!74697 m!46334))

(assert (=> b!74697 m!46334))

(declare-fun m!46336 () Bool)

(assert (=> b!74697 m!46336))

(assert (=> d!13021 d!13097))

(declare-fun b!74716 () Bool)

(declare-fun e!41526 () Bool)

(declare-datatypes ((tuple2!1208 0))(
  ( (tuple2!1209 (_1!811 List!1232) (_2!811 List!1232)) )
))
(declare-fun findLongestMatchInner!2 (Regex!334 List!1232 Int List!1232 List!1232 Int) tuple2!1208)

(assert (=> b!74716 (= e!41526 (matchR!8 (regex!266 (h!6625 rules!2471)) (_1!811 (findLongestMatchInner!2 (regex!266 (h!6625 rules!2471)) Nil!1226 (size!1114 Nil!1226) input!2238 input!2238 (size!1114 input!2238)))))))

(declare-fun b!74717 () Bool)

(declare-fun e!41528 () Bool)

(declare-fun lt!13880 () Option!73)

(assert (=> b!74717 (= e!41528 (= (size!1110 (_1!806 (get!304 lt!13880))) (size!1114 (originalCharacters!317 (_1!806 (get!304 lt!13880))))))))

(declare-fun b!74718 () Bool)

(declare-fun e!41527 () Option!73)

(declare-fun lt!13878 () tuple2!1208)

(assert (=> b!74718 (= e!41527 (Some!72 (tuple2!1199 (Token!293 (apply!172 (transformation!266 (h!6625 rules!2471)) (seqFromList!54 (_1!811 lt!13878))) (h!6625 rules!2471) (size!1112 (seqFromList!54 (_1!811 lt!13878))) (_1!811 lt!13878)) (_2!811 lt!13878))))))

(declare-fun lt!13877 () Unit!732)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!3 (Regex!334 List!1232) Unit!732)

(assert (=> b!74718 (= lt!13877 (longestMatchIsAcceptedByMatchOrIsEmpty!3 (regex!266 (h!6625 rules!2471)) input!2238))))

(declare-fun res!39095 () Bool)

(assert (=> b!74718 (= res!39095 (isEmpty!310 (_1!811 (findLongestMatchInner!2 (regex!266 (h!6625 rules!2471)) Nil!1226 (size!1114 Nil!1226) input!2238 input!2238 (size!1114 input!2238)))))))

(assert (=> b!74718 (=> res!39095 e!41526)))

(assert (=> b!74718 e!41526))

(declare-fun lt!13879 () Unit!732)

(assert (=> b!74718 (= lt!13879 lt!13877)))

(declare-fun lt!13876 () Unit!732)

(declare-fun lemmaSemiInverse!1 (TokenValueInjection!336 BalanceConc!672) Unit!732)

(assert (=> b!74718 (= lt!13876 (lemmaSemiInverse!1 (transformation!266 (h!6625 rules!2471)) (seqFromList!54 (_1!811 lt!13878))))))

(declare-fun b!74719 () Bool)

(declare-fun res!39097 () Bool)

(assert (=> b!74719 (=> (not res!39097) (not e!41528))))

(assert (=> b!74719 (= res!39097 (= (++!81 (list!356 (charsOf!25 (_1!806 (get!304 lt!13880)))) (_2!806 (get!304 lt!13880))) input!2238))))

(declare-fun b!74720 () Bool)

(declare-fun res!39096 () Bool)

(assert (=> b!74720 (=> (not res!39096) (not e!41528))))

(assert (=> b!74720 (= res!39096 (= (value!10478 (_1!806 (get!304 lt!13880))) (apply!172 (transformation!266 (rule!739 (_1!806 (get!304 lt!13880)))) (seqFromList!54 (originalCharacters!317 (_1!806 (get!304 lt!13880)))))))))

(declare-fun b!74721 () Bool)

(declare-fun e!41529 () Bool)

(assert (=> b!74721 (= e!41529 e!41528)))

(declare-fun res!39100 () Bool)

(assert (=> b!74721 (=> (not res!39100) (not e!41528))))

(assert (=> b!74721 (= res!39100 (matchR!8 (regex!266 (h!6625 rules!2471)) (list!356 (charsOf!25 (_1!806 (get!304 lt!13880))))))))

(declare-fun b!74722 () Bool)

(assert (=> b!74722 (= e!41527 None!72)))

(declare-fun b!74723 () Bool)

(declare-fun res!39099 () Bool)

(assert (=> b!74723 (=> (not res!39099) (not e!41528))))

(assert (=> b!74723 (= res!39099 (< (size!1114 (_2!806 (get!304 lt!13880))) (size!1114 input!2238)))))

(declare-fun b!74724 () Bool)

(declare-fun res!39098 () Bool)

(assert (=> b!74724 (=> (not res!39098) (not e!41528))))

(assert (=> b!74724 (= res!39098 (= (rule!739 (_1!806 (get!304 lt!13880))) (h!6625 rules!2471)))))

(declare-fun d!13099 () Bool)

(assert (=> d!13099 e!41529))

(declare-fun res!39101 () Bool)

(assert (=> d!13099 (=> res!39101 e!41529)))

(assert (=> d!13099 (= res!39101 (isEmpty!313 lt!13880))))

(assert (=> d!13099 (= lt!13880 e!41527)))

(declare-fun c!19426 () Bool)

(assert (=> d!13099 (= c!19426 (isEmpty!310 (_1!811 lt!13878)))))

(declare-fun findLongestMatch!1 (Regex!334 List!1232) tuple2!1208)

(assert (=> d!13099 (= lt!13878 (findLongestMatch!1 (regex!266 (h!6625 rules!2471)) input!2238))))

(declare-fun ruleValid!8 (LexerInterface!158 Rule!332) Bool)

(assert (=> d!13099 (ruleValid!8 thiss!19403 (h!6625 rules!2471))))

(assert (=> d!13099 (= (maxPrefixOneRule!4 thiss!19403 (h!6625 rules!2471) input!2238) lt!13880)))

(assert (= (and d!13099 c!19426) b!74722))

(assert (= (and d!13099 (not c!19426)) b!74718))

(assert (= (and b!74718 (not res!39095)) b!74716))

(assert (= (and d!13099 (not res!39101)) b!74721))

(assert (= (and b!74721 res!39100) b!74719))

(assert (= (and b!74719 res!39097) b!74723))

(assert (= (and b!74723 res!39099) b!74724))

(assert (= (and b!74724 res!39098) b!74720))

(assert (= (and b!74720 res!39096) b!74717))

(declare-fun m!46338 () Bool)

(assert (=> b!74723 m!46338))

(declare-fun m!46340 () Bool)

(assert (=> b!74723 m!46340))

(assert (=> b!74723 m!46108))

(assert (=> b!74717 m!46338))

(declare-fun m!46342 () Bool)

(assert (=> b!74717 m!46342))

(declare-fun m!46344 () Bool)

(assert (=> b!74716 m!46344))

(assert (=> b!74716 m!46108))

(assert (=> b!74716 m!46344))

(assert (=> b!74716 m!46108))

(declare-fun m!46346 () Bool)

(assert (=> b!74716 m!46346))

(declare-fun m!46348 () Bool)

(assert (=> b!74716 m!46348))

(assert (=> b!74721 m!46338))

(declare-fun m!46350 () Bool)

(assert (=> b!74721 m!46350))

(assert (=> b!74721 m!46350))

(declare-fun m!46352 () Bool)

(assert (=> b!74721 m!46352))

(assert (=> b!74721 m!46352))

(declare-fun m!46354 () Bool)

(assert (=> b!74721 m!46354))

(assert (=> b!74719 m!46338))

(assert (=> b!74719 m!46350))

(assert (=> b!74719 m!46350))

(assert (=> b!74719 m!46352))

(assert (=> b!74719 m!46352))

(declare-fun m!46356 () Bool)

(assert (=> b!74719 m!46356))

(assert (=> b!74720 m!46338))

(declare-fun m!46358 () Bool)

(assert (=> b!74720 m!46358))

(assert (=> b!74720 m!46358))

(declare-fun m!46360 () Bool)

(assert (=> b!74720 m!46360))

(assert (=> b!74724 m!46338))

(declare-fun m!46362 () Bool)

(assert (=> d!13099 m!46362))

(declare-fun m!46364 () Bool)

(assert (=> d!13099 m!46364))

(declare-fun m!46366 () Bool)

(assert (=> d!13099 m!46366))

(declare-fun m!46368 () Bool)

(assert (=> d!13099 m!46368))

(declare-fun m!46370 () Bool)

(assert (=> b!74718 m!46370))

(declare-fun m!46372 () Bool)

(assert (=> b!74718 m!46372))

(assert (=> b!74718 m!46344))

(assert (=> b!74718 m!46108))

(assert (=> b!74718 m!46346))

(assert (=> b!74718 m!46344))

(assert (=> b!74718 m!46370))

(declare-fun m!46374 () Bool)

(assert (=> b!74718 m!46374))

(declare-fun m!46376 () Bool)

(assert (=> b!74718 m!46376))

(declare-fun m!46378 () Bool)

(assert (=> b!74718 m!46378))

(assert (=> b!74718 m!46370))

(declare-fun m!46380 () Bool)

(assert (=> b!74718 m!46380))

(assert (=> b!74718 m!46108))

(assert (=> b!74718 m!46370))

(assert (=> bm!3618 d!13099))

(declare-fun d!13101 () Bool)

(assert (=> d!13101 (= (list!354 (_1!805 lt!13779)) (list!357 (c!19382 (_1!805 lt!13779))))))

(declare-fun bs!7803 () Bool)

(assert (= bs!7803 d!13101))

(declare-fun m!46382 () Bool)

(assert (=> bs!7803 m!46382))

(assert (=> b!74470 d!13101))

(assert (=> b!74470 d!13057))

(assert (=> b!74470 d!13059))

(assert (=> b!74492 d!13063))

(assert (=> b!74492 d!13065))

(assert (=> b!74492 d!13047))

(declare-fun d!13103 () Bool)

(assert (=> d!13103 true))

(declare-fun lt!13883 () Bool)

(assert (=> d!13103 (= lt!13883 (rulesValidInductive!19 thiss!19403 rules!2471))))

(declare-fun lambda!1333 () Int)

(declare-fun forall!176 (List!1234 Int) Bool)

(assert (=> d!13103 (= lt!13883 (forall!176 rules!2471 lambda!1333))))

(assert (=> d!13103 (= (rulesValid!48 thiss!19403 rules!2471) lt!13883)))

(declare-fun bs!7804 () Bool)

(assert (= bs!7804 d!13103))

(assert (=> bs!7804 m!46116))

(declare-fun m!46384 () Bool)

(assert (=> bs!7804 m!46384))

(assert (=> d!13029 d!13103))

(declare-fun d!13105 () Bool)

(assert (=> d!13105 (= (isEmpty!313 (maxPrefix!12 thiss!19403 rules!2471 input!2238)) (not (is-Some!72 (maxPrefix!12 thiss!19403 rules!2471 input!2238))))))

(assert (=> d!13025 d!13105))

(assert (=> b!74490 d!13047))

(declare-fun d!13107 () Bool)

(declare-fun dynLambda!284 (Int BalanceConc!672) TokenValue!256)

(assert (=> d!13107 (= (apply!172 (transformation!266 (rule!739 (_1!806 (get!304 lt!13790)))) (seqFromList!54 (originalCharacters!317 (_1!806 (get!304 lt!13790))))) (dynLambda!284 (toValue!761 (transformation!266 (rule!739 (_1!806 (get!304 lt!13790))))) (seqFromList!54 (originalCharacters!317 (_1!806 (get!304 lt!13790))))))))

(declare-fun b_lambda!853 () Bool)

(assert (=> (not b_lambda!853) (not d!13107)))

(declare-fun t!19958 () Bool)

(declare-fun tb!2339 () Bool)

(assert (=> (and b!74417 (= (toValue!761 (transformation!266 (h!6625 rules!2471))) (toValue!761 (transformation!266 (rule!739 (_1!806 (get!304 lt!13790)))))) t!19958) tb!2339))

(declare-fun result!3304 () Bool)

(declare-fun inv!21 (TokenValue!256) Bool)

(assert (=> tb!2339 (= result!3304 (inv!21 (dynLambda!284 (toValue!761 (transformation!266 (rule!739 (_1!806 (get!304 lt!13790))))) (seqFromList!54 (originalCharacters!317 (_1!806 (get!304 lt!13790)))))))))

(declare-fun m!46386 () Bool)

(assert (=> tb!2339 m!46386))

(assert (=> d!13107 t!19958))

(declare-fun b_and!3343 () Bool)

(assert (= b_and!3319 (and (=> t!19958 result!3304) b_and!3343)))

(declare-fun tb!2341 () Bool)

(declare-fun t!19960 () Bool)

(assert (=> (and b!74526 (= (toValue!761 (transformation!266 (h!6625 (t!19941 rules!2471)))) (toValue!761 (transformation!266 (rule!739 (_1!806 (get!304 lt!13790)))))) t!19960) tb!2341))

(declare-fun result!3308 () Bool)

(assert (= result!3308 result!3304))

(assert (=> d!13107 t!19960))

(declare-fun b_and!3345 () Bool)

(assert (= b_and!3327 (and (=> t!19960 result!3308) b_and!3345)))

(assert (=> d!13107 m!46128))

(declare-fun m!46388 () Bool)

(assert (=> d!13107 m!46388))

(assert (=> b!74490 d!13107))

(declare-fun d!13109 () Bool)

(assert (=> d!13109 (= (seqFromList!54 (originalCharacters!317 (_1!806 (get!304 lt!13790)))) (fromListB!19 (originalCharacters!317 (_1!806 (get!304 lt!13790)))))))

(declare-fun bs!7805 () Bool)

(assert (= bs!7805 d!13109))

(declare-fun m!46390 () Bool)

(assert (=> bs!7805 m!46390))

(assert (=> b!74490 d!13109))

(declare-fun d!13111 () Bool)

(assert (=> d!13111 (= (isDefined!16 lt!13790) (not (isEmpty!313 lt!13790)))))

(declare-fun bs!7806 () Bool)

(assert (= bs!7806 d!13111))

(assert (=> bs!7806 m!46110))

(assert (=> b!74491 d!13111))

(declare-fun d!13113 () Bool)

(declare-fun res!39106 () Bool)

(declare-fun e!41537 () Bool)

(assert (=> d!13113 (=> res!39106 e!41537)))

(assert (=> d!13113 (= res!39106 (is-Nil!1228 rules!2471))))

(assert (=> d!13113 (= (noDuplicateTag!48 thiss!19403 rules!2471 Nil!1234) e!41537)))

(declare-fun b!74733 () Bool)

(declare-fun e!41538 () Bool)

(assert (=> b!74733 (= e!41537 e!41538)))

(declare-fun res!39107 () Bool)

(assert (=> b!74733 (=> (not res!39107) (not e!41538))))

(declare-fun contains!190 (List!1240 String!1673) Bool)

(assert (=> b!74733 (= res!39107 (not (contains!190 Nil!1234 (tag!444 (h!6625 rules!2471)))))))

(declare-fun b!74734 () Bool)

(assert (=> b!74734 (= e!41538 (noDuplicateTag!48 thiss!19403 (t!19941 rules!2471) (Cons!1234 (tag!444 (h!6625 rules!2471)) Nil!1234)))))

(assert (= (and d!13113 (not res!39106)) b!74733))

(assert (= (and b!74733 res!39107) b!74734))

(declare-fun m!46392 () Bool)

(assert (=> b!74733 m!46392))

(declare-fun m!46394 () Bool)

(assert (=> b!74734 m!46394))

(assert (=> b!74501 d!13113))

(declare-fun b!74744 () Bool)

(declare-fun e!41543 () List!1235)

(declare-fun e!41544 () List!1235)

(assert (=> b!74744 (= e!41543 e!41544)))

(declare-fun c!19432 () Bool)

(assert (=> b!74744 (= c!19432 (is-Leaf!604 (c!19382 (_1!805 lt!13763))))))

(declare-fun b!74745 () Bool)

(declare-fun list!361 (IArray!671) List!1235)

(assert (=> b!74745 (= e!41544 (list!361 (xs!2914 (c!19382 (_1!805 lt!13763)))))))

(declare-fun b!74746 () Bool)

(declare-fun ++!83 (List!1235 List!1235) List!1235)

(assert (=> b!74746 (= e!41544 (++!83 (list!357 (left!937 (c!19382 (_1!805 lt!13763)))) (list!357 (right!1267 (c!19382 (_1!805 lt!13763))))))))

(declare-fun b!74743 () Bool)

(assert (=> b!74743 (= e!41543 Nil!1229)))

(declare-fun d!13115 () Bool)

(declare-fun c!19431 () Bool)

(assert (=> d!13115 (= c!19431 (is-Empty!335 (c!19382 (_1!805 lt!13763))))))

(assert (=> d!13115 (= (list!357 (c!19382 (_1!805 lt!13763))) e!41543)))

(assert (= (and d!13115 c!19431) b!74743))

(assert (= (and d!13115 (not c!19431)) b!74744))

(assert (= (and b!74744 c!19432) b!74745))

(assert (= (and b!74744 (not c!19432)) b!74746))

(declare-fun m!46396 () Bool)

(assert (=> b!74745 m!46396))

(declare-fun m!46398 () Bool)

(assert (=> b!74746 m!46398))

(declare-fun m!46400 () Bool)

(assert (=> b!74746 m!46400))

(assert (=> b!74746 m!46398))

(assert (=> b!74746 m!46400))

(declare-fun m!46402 () Bool)

(assert (=> b!74746 m!46402))

(assert (=> d!13023 d!13115))

(declare-fun d!13117 () Bool)

(assert (=> d!13117 (= (isEmpty!310 (list!356 (_2!805 lt!13763))) (is-Nil!1226 (list!356 (_2!805 lt!13763))))))

(assert (=> d!13009 d!13117))

(declare-fun d!13119 () Bool)

(assert (=> d!13119 (= (list!356 (_2!805 lt!13763)) (list!360 (c!19380 (_2!805 lt!13763))))))

(declare-fun bs!7807 () Bool)

(assert (= bs!7807 d!13119))

(declare-fun m!46404 () Bool)

(assert (=> bs!7807 m!46404))

(assert (=> d!13009 d!13119))

(declare-fun d!13121 () Bool)

(declare-fun lt!13886 () Bool)

(assert (=> d!13121 (= lt!13886 (isEmpty!310 (list!360 (c!19380 (_2!805 lt!13763)))))))

(assert (=> d!13121 (= lt!13886 (= (size!1119 (c!19380 (_2!805 lt!13763))) 0))))

(assert (=> d!13121 (= (isEmpty!311 (c!19380 (_2!805 lt!13763))) lt!13886)))

(declare-fun bs!7808 () Bool)

(assert (= bs!7808 d!13121))

(assert (=> bs!7808 m!46404))

(assert (=> bs!7808 m!46404))

(declare-fun m!46406 () Bool)

(assert (=> bs!7808 m!46406))

(declare-fun m!46408 () Bool)

(assert (=> bs!7808 m!46408))

(assert (=> d!13009 d!13121))

(declare-fun d!13123 () Bool)

(assert (=> d!13123 (= (isEmpty!313 lt!13790) (not (is-Some!72 lt!13790)))))

(assert (=> d!13027 d!13123))

(declare-fun b!74756 () Bool)

(declare-fun res!39117 () Bool)

(declare-fun e!41551 () Bool)

(assert (=> b!74756 (=> (not res!39117) (not e!41551))))

(declare-fun head!409 (List!1232) C!1590)

(assert (=> b!74756 (= res!39117 (= (head!409 input!2238) (head!409 input!2238)))))

(declare-fun b!74758 () Bool)

(declare-fun e!41553 () Bool)

(assert (=> b!74758 (= e!41553 (>= (size!1114 input!2238) (size!1114 input!2238)))))

(declare-fun b!74757 () Bool)

(declare-fun tail!93 (List!1232) List!1232)

(assert (=> b!74757 (= e!41551 (isPrefix!7 (tail!93 input!2238) (tail!93 input!2238)))))

(declare-fun d!13125 () Bool)

(assert (=> d!13125 e!41553))

(declare-fun res!39116 () Bool)

(assert (=> d!13125 (=> res!39116 e!41553)))

(declare-fun lt!13889 () Bool)

(assert (=> d!13125 (= res!39116 (not lt!13889))))

(declare-fun e!41552 () Bool)

(assert (=> d!13125 (= lt!13889 e!41552)))

(declare-fun res!39118 () Bool)

(assert (=> d!13125 (=> res!39118 e!41552)))

(assert (=> d!13125 (= res!39118 (is-Nil!1226 input!2238))))

(assert (=> d!13125 (= (isPrefix!7 input!2238 input!2238) lt!13889)))

(declare-fun b!74755 () Bool)

(assert (=> b!74755 (= e!41552 e!41551)))

(declare-fun res!39119 () Bool)

(assert (=> b!74755 (=> (not res!39119) (not e!41551))))

(assert (=> b!74755 (= res!39119 (not (is-Nil!1226 input!2238)))))

(assert (= (and d!13125 (not res!39118)) b!74755))

(assert (= (and b!74755 res!39119) b!74756))

(assert (= (and b!74756 res!39117) b!74757))

(assert (= (and d!13125 (not res!39116)) b!74758))

(declare-fun m!46410 () Bool)

(assert (=> b!74756 m!46410))

(assert (=> b!74756 m!46410))

(assert (=> b!74758 m!46108))

(assert (=> b!74758 m!46108))

(declare-fun m!46412 () Bool)

(assert (=> b!74757 m!46412))

(assert (=> b!74757 m!46412))

(assert (=> b!74757 m!46412))

(assert (=> b!74757 m!46412))

(declare-fun m!46414 () Bool)

(assert (=> b!74757 m!46414))

(assert (=> d!13027 d!13125))

(declare-fun d!13127 () Bool)

(assert (=> d!13127 (isPrefix!7 input!2238 input!2238)))

(declare-fun lt!13892 () Unit!732)

(declare-fun choose!1253 (List!1232 List!1232) Unit!732)

(assert (=> d!13127 (= lt!13892 (choose!1253 input!2238 input!2238))))

(assert (=> d!13127 (= (lemmaIsPrefixRefl!7 input!2238 input!2238) lt!13892)))

(declare-fun bs!7809 () Bool)

(assert (= bs!7809 d!13127))

(assert (=> bs!7809 m!46112))

(declare-fun m!46416 () Bool)

(assert (=> bs!7809 m!46416))

(assert (=> d!13027 d!13127))

(declare-fun bs!7810 () Bool)

(declare-fun d!13129 () Bool)

(assert (= bs!7810 (and d!13129 d!13103)))

(declare-fun lambda!1336 () Int)

(assert (=> bs!7810 (= lambda!1336 lambda!1333)))

(assert (=> d!13129 true))

(declare-fun lt!13895 () Bool)

(assert (=> d!13129 (= lt!13895 (forall!176 rules!2471 lambda!1336))))

(declare-fun e!41559 () Bool)

(assert (=> d!13129 (= lt!13895 e!41559)))

(declare-fun res!39124 () Bool)

(assert (=> d!13129 (=> res!39124 e!41559)))

(assert (=> d!13129 (= res!39124 (not (is-Cons!1228 rules!2471)))))

(assert (=> d!13129 (= (rulesValidInductive!19 thiss!19403 rules!2471) lt!13895)))

(declare-fun b!74763 () Bool)

(declare-fun e!41558 () Bool)

(assert (=> b!74763 (= e!41559 e!41558)))

(declare-fun res!39125 () Bool)

(assert (=> b!74763 (=> (not res!39125) (not e!41558))))

(assert (=> b!74763 (= res!39125 (ruleValid!8 thiss!19403 (h!6625 rules!2471)))))

(declare-fun b!74764 () Bool)

(assert (=> b!74764 (= e!41558 (rulesValidInductive!19 thiss!19403 (t!19941 rules!2471)))))

(assert (= (and d!13129 (not res!39124)) b!74763))

(assert (= (and b!74763 res!39125) b!74764))

(declare-fun m!46418 () Bool)

(assert (=> d!13129 m!46418))

(assert (=> b!74763 m!46368))

(assert (=> b!74764 m!46224))

(assert (=> d!13027 d!13129))

(declare-fun d!13131 () Bool)

(declare-fun lt!13898 () Bool)

(declare-fun content!53 (List!1234) (Set Rule!332))

(assert (=> d!13131 (= lt!13898 (set.member (rule!739 (_1!806 (get!304 lt!13790))) (content!53 rules!2471)))))

(declare-fun e!41565 () Bool)

(assert (=> d!13131 (= lt!13898 e!41565)))

(declare-fun res!39131 () Bool)

(assert (=> d!13131 (=> (not res!39131) (not e!41565))))

(assert (=> d!13131 (= res!39131 (is-Cons!1228 rules!2471))))

(assert (=> d!13131 (= (contains!188 rules!2471 (rule!739 (_1!806 (get!304 lt!13790)))) lt!13898)))

(declare-fun b!74769 () Bool)

(declare-fun e!41564 () Bool)

(assert (=> b!74769 (= e!41565 e!41564)))

(declare-fun res!39130 () Bool)

(assert (=> b!74769 (=> res!39130 e!41564)))

(assert (=> b!74769 (= res!39130 (= (h!6625 rules!2471) (rule!739 (_1!806 (get!304 lt!13790)))))))

(declare-fun b!74770 () Bool)

(assert (=> b!74770 (= e!41564 (contains!188 (t!19941 rules!2471) (rule!739 (_1!806 (get!304 lt!13790)))))))

(assert (= (and d!13131 res!39131) b!74769))

(assert (= (and b!74769 (not res!39130)) b!74770))

(declare-fun m!46420 () Bool)

(assert (=> d!13131 m!46420))

(declare-fun m!46422 () Bool)

(assert (=> d!13131 m!46422))

(declare-fun m!46424 () Bool)

(assert (=> b!74770 m!46424))

(assert (=> b!74497 d!13131))

(assert (=> b!74497 d!13047))

(declare-fun d!13133 () Bool)

(declare-fun lt!13901 () Int)

(assert (=> d!13133 (= lt!13901 (size!1118 (list!354 (_1!805 lt!13779))))))

(declare-fun size!1120 (Conc!335) Int)

(assert (=> d!13133 (= lt!13901 (size!1120 (c!19382 (_1!805 lt!13779))))))

(assert (=> d!13133 (= (size!1113 (_1!805 lt!13779)) lt!13901)))

(declare-fun bs!7811 () Bool)

(assert (= bs!7811 d!13133))

(assert (=> bs!7811 m!46096))

(assert (=> bs!7811 m!46096))

(declare-fun m!46426 () Bool)

(assert (=> bs!7811 m!46426))

(declare-fun m!46428 () Bool)

(assert (=> bs!7811 m!46428))

(assert (=> d!13011 d!13133))

(declare-fun b!74801 () Bool)

(declare-fun lt!14001 () tuple2!1196)

(declare-datatypes ((tuple2!1210 0))(
  ( (tuple2!1211 (_1!812 Token!292) (_2!812 BalanceConc!672)) )
))
(declare-datatypes ((Option!75 0))(
  ( (None!74) (Some!74 (v!12715 tuple2!1210)) )
))
(declare-fun lt!14011 () Option!75)

(declare-fun lexRec!15 (LexerInterface!158 List!1234 BalanceConc!672) tuple2!1196)

(assert (=> b!74801 (= lt!14001 (lexRec!15 thiss!19403 rules!2471 (_2!812 (v!12715 lt!14011))))))

(declare-fun e!41581 () tuple2!1196)

(declare-fun prepend!21 (BalanceConc!674 Token!292) BalanceConc!674)

(assert (=> b!74801 (= e!41581 (tuple2!1197 (prepend!21 (_1!805 lt!14001) (_1!812 (v!12715 lt!14011))) (_2!805 lt!14001)))))

(declare-fun lt!13996 () tuple2!1196)

(declare-fun b!74802 () Bool)

(declare-fun e!41583 () Bool)

(assert (=> b!74802 (= e!41583 (= (list!356 (_2!805 lt!13996)) (list!356 (_2!805 (lexRec!15 thiss!19403 rules!2471 (seqFromList!54 input!2238))))))))

(declare-fun b!74803 () Bool)

(declare-fun e!41580 () tuple2!1196)

(assert (=> b!74803 (= e!41580 (tuple2!1197 (BalanceConc!675 Empty!335) (seqFromList!54 input!2238)))))

(declare-fun d!13135 () Bool)

(assert (=> d!13135 e!41583))

(declare-fun res!39140 () Bool)

(assert (=> d!13135 (=> (not res!39140) (not e!41583))))

(assert (=> d!13135 (= res!39140 (= (list!354 (_1!805 lt!13996)) (list!354 (_1!805 (lexRec!15 thiss!19403 rules!2471 (seqFromList!54 input!2238))))))))

(assert (=> d!13135 (= lt!13996 e!41580)))

(declare-fun c!19444 () Bool)

(declare-fun lt!14005 () Option!75)

(assert (=> d!13135 (= c!19444 (is-Some!74 lt!14005))))

(declare-fun maxPrefixZipperSequenceV2!10 (LexerInterface!158 List!1234 BalanceConc!672 BalanceConc!672) Option!75)

(assert (=> d!13135 (= lt!14005 (maxPrefixZipperSequenceV2!10 thiss!19403 rules!2471 (seqFromList!54 input!2238) (seqFromList!54 input!2238)))))

(declare-fun lt!13990 () Unit!732)

(declare-fun lt!13981 () Unit!732)

(assert (=> d!13135 (= lt!13990 lt!13981)))

(declare-fun lt!14012 () List!1232)

(declare-fun lt!14006 () List!1232)

(declare-fun isSuffix!10 (List!1232 List!1232) Bool)

(assert (=> d!13135 (isSuffix!10 lt!14012 (++!81 lt!14006 lt!14012))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!10 (List!1232 List!1232) Unit!732)

(assert (=> d!13135 (= lt!13981 (lemmaConcatTwoListThenFSndIsSuffix!10 lt!14006 lt!14012))))

(assert (=> d!13135 (= lt!14012 (list!356 (seqFromList!54 input!2238)))))

(assert (=> d!13135 (= lt!14006 (list!356 (BalanceConc!673 Empty!334)))))

(assert (=> d!13135 (= (lexTailRecV2!26 thiss!19403 rules!2471 (seqFromList!54 input!2238) (BalanceConc!673 Empty!334) (seqFromList!54 input!2238) (BalanceConc!675 Empty!335)) lt!13996)))

(declare-fun b!74804 () Bool)

(declare-fun lt!13985 () BalanceConc!672)

(declare-fun append!16 (BalanceConc!674 Token!292) BalanceConc!674)

(assert (=> b!74804 (= e!41580 (lexTailRecV2!26 thiss!19403 rules!2471 (seqFromList!54 input!2238) lt!13985 (_2!812 (v!12715 lt!14005)) (append!16 (BalanceConc!675 Empty!335) (_1!812 (v!12715 lt!14005)))))))

(declare-fun lt!14009 () tuple2!1196)

(assert (=> b!74804 (= lt!14009 (lexRec!15 thiss!19403 rules!2471 (_2!812 (v!12715 lt!14005))))))

(declare-fun lt!14003 () List!1232)

(assert (=> b!74804 (= lt!14003 (list!356 (BalanceConc!673 Empty!334)))))

(declare-fun lt!13988 () List!1232)

(assert (=> b!74804 (= lt!13988 (list!356 (charsOf!25 (_1!812 (v!12715 lt!14005)))))))

(declare-fun lt!13997 () List!1232)

(assert (=> b!74804 (= lt!13997 (list!356 (_2!812 (v!12715 lt!14005))))))

(declare-fun lt!13982 () Unit!732)

(declare-fun lemmaConcatAssociativity!24 (List!1232 List!1232 List!1232) Unit!732)

(assert (=> b!74804 (= lt!13982 (lemmaConcatAssociativity!24 lt!14003 lt!13988 lt!13997))))

(assert (=> b!74804 (= (++!81 (++!81 lt!14003 lt!13988) lt!13997) (++!81 lt!14003 (++!81 lt!13988 lt!13997)))))

(declare-fun lt!13984 () Unit!732)

(assert (=> b!74804 (= lt!13984 lt!13982)))

(declare-fun maxPrefixZipperSequence!13 (LexerInterface!158 List!1234 BalanceConc!672) Option!75)

(assert (=> b!74804 (= lt!14011 (maxPrefixZipperSequence!13 thiss!19403 rules!2471 (seqFromList!54 input!2238)))))

(declare-fun c!19443 () Bool)

(assert (=> b!74804 (= c!19443 (is-Some!74 lt!14011))))

(assert (=> b!74804 (= (lexRec!15 thiss!19403 rules!2471 (seqFromList!54 input!2238)) e!41581)))

(declare-fun lt!14007 () Unit!732)

(declare-fun Unit!736 () Unit!732)

(assert (=> b!74804 (= lt!14007 Unit!736)))

(declare-fun lt!14000 () List!1235)

(assert (=> b!74804 (= lt!14000 (list!354 (BalanceConc!675 Empty!335)))))

(declare-fun lt!14010 () List!1235)

(assert (=> b!74804 (= lt!14010 (Cons!1229 (_1!812 (v!12715 lt!14005)) Nil!1229))))

(declare-fun lt!13986 () List!1235)

(assert (=> b!74804 (= lt!13986 (list!354 (_1!805 lt!14009)))))

(declare-fun lt!13995 () Unit!732)

(declare-fun lemmaConcatAssociativity!25 (List!1235 List!1235 List!1235) Unit!732)

(assert (=> b!74804 (= lt!13995 (lemmaConcatAssociativity!25 lt!14000 lt!14010 lt!13986))))

(assert (=> b!74804 (= (++!83 (++!83 lt!14000 lt!14010) lt!13986) (++!83 lt!14000 (++!83 lt!14010 lt!13986)))))

(declare-fun lt!13980 () Unit!732)

(assert (=> b!74804 (= lt!13980 lt!13995)))

(declare-fun lt!13994 () List!1232)

(assert (=> b!74804 (= lt!13994 (++!81 (list!356 (BalanceConc!673 Empty!334)) (list!356 (charsOf!25 (_1!812 (v!12715 lt!14005))))))))

(declare-fun lt!13992 () List!1232)

(assert (=> b!74804 (= lt!13992 (list!356 (_2!812 (v!12715 lt!14005))))))

(declare-fun lt!13999 () List!1235)

(assert (=> b!74804 (= lt!13999 (list!354 (append!16 (BalanceConc!675 Empty!335) (_1!812 (v!12715 lt!14005)))))))

(declare-fun lt!13987 () Unit!732)

(declare-fun lemmaLexThenLexPrefix!10 (LexerInterface!158 List!1234 List!1232 List!1232 List!1235 List!1235 List!1232) Unit!732)

(assert (=> b!74804 (= lt!13987 (lemmaLexThenLexPrefix!10 thiss!19403 rules!2471 lt!13994 lt!13992 lt!13999 (list!354 (_1!805 lt!14009)) (list!356 (_2!805 lt!14009))))))

(assert (=> b!74804 (= (lexList!29 thiss!19403 rules!2471 lt!13994) (tuple2!1205 lt!13999 Nil!1226))))

(declare-fun lt!13979 () Unit!732)

(assert (=> b!74804 (= lt!13979 lt!13987)))

(declare-fun lt!13983 () BalanceConc!672)

(declare-fun ++!84 (BalanceConc!672 BalanceConc!672) BalanceConc!672)

(assert (=> b!74804 (= lt!13983 (++!84 (BalanceConc!673 Empty!334) (charsOf!25 (_1!812 (v!12715 lt!14005)))))))

(declare-fun lt!14008 () Option!75)

(assert (=> b!74804 (= lt!14008 (maxPrefixZipperSequence!13 thiss!19403 rules!2471 lt!13983))))

(declare-fun c!19442 () Bool)

(assert (=> b!74804 (= c!19442 (is-Some!74 lt!14008))))

(declare-fun e!41582 () tuple2!1196)

(assert (=> b!74804 (= (lexRec!15 thiss!19403 rules!2471 (++!84 (BalanceConc!673 Empty!334) (charsOf!25 (_1!812 (v!12715 lt!14005))))) e!41582)))

(declare-fun lt!13989 () Unit!732)

(declare-fun Unit!737 () Unit!732)

(assert (=> b!74804 (= lt!13989 Unit!737)))

(assert (=> b!74804 (= lt!13985 (++!84 (BalanceConc!673 Empty!334) (charsOf!25 (_1!812 (v!12715 lt!14005)))))))

(declare-fun lt!14002 () List!1232)

(assert (=> b!74804 (= lt!14002 (list!356 lt!13985))))

(declare-fun lt!13998 () List!1232)

(assert (=> b!74804 (= lt!13998 (list!356 (_2!812 (v!12715 lt!14005))))))

(declare-fun lt!13993 () Unit!732)

(assert (=> b!74804 (= lt!13993 (lemmaConcatTwoListThenFSndIsSuffix!10 lt!14002 lt!13998))))

(assert (=> b!74804 (isSuffix!10 lt!13998 (++!81 lt!14002 lt!13998))))

(declare-fun lt!13991 () Unit!732)

(assert (=> b!74804 (= lt!13991 lt!13993)))

(declare-fun lt!14004 () tuple2!1196)

(declare-fun b!74805 () Bool)

(assert (=> b!74805 (= lt!14004 (lexRec!15 thiss!19403 rules!2471 (_2!812 (v!12715 lt!14008))))))

(assert (=> b!74805 (= e!41582 (tuple2!1197 (prepend!21 (_1!805 lt!14004) (_1!812 (v!12715 lt!14008))) (_2!805 lt!14004)))))

(declare-fun b!74806 () Bool)

(assert (=> b!74806 (= e!41582 (tuple2!1197 (BalanceConc!675 Empty!335) lt!13983))))

(declare-fun b!74807 () Bool)

(assert (=> b!74807 (= e!41581 (tuple2!1197 (BalanceConc!675 Empty!335) (seqFromList!54 input!2238)))))

(assert (= (and d!13135 c!19444) b!74804))

(assert (= (and d!13135 (not c!19444)) b!74803))

(assert (= (and b!74804 c!19443) b!74801))

(assert (= (and b!74804 (not c!19443)) b!74807))

(assert (= (and b!74804 c!19442) b!74805))

(assert (= (and b!74804 (not c!19442)) b!74806))

(assert (= (and d!13135 res!39140) b!74802))

(declare-fun m!46452 () Bool)

(assert (=> b!74805 m!46452))

(declare-fun m!46454 () Bool)

(assert (=> b!74805 m!46454))

(declare-fun m!46456 () Bool)

(assert (=> d!13135 m!46456))

(declare-fun m!46458 () Bool)

(assert (=> d!13135 m!46458))

(assert (=> d!13135 m!46020))

(assert (=> d!13135 m!46020))

(declare-fun m!46460 () Bool)

(assert (=> d!13135 m!46460))

(declare-fun m!46462 () Bool)

(assert (=> d!13135 m!46462))

(declare-fun m!46464 () Bool)

(assert (=> d!13135 m!46464))

(assert (=> d!13135 m!46458))

(declare-fun m!46466 () Bool)

(assert (=> d!13135 m!46466))

(assert (=> d!13135 m!46020))

(assert (=> d!13135 m!46090))

(assert (=> d!13135 m!46020))

(declare-fun m!46468 () Bool)

(assert (=> d!13135 m!46468))

(declare-fun m!46470 () Bool)

(assert (=> d!13135 m!46470))

(declare-fun m!46472 () Bool)

(assert (=> b!74801 m!46472))

(declare-fun m!46474 () Bool)

(assert (=> b!74801 m!46474))

(declare-fun m!46476 () Bool)

(assert (=> b!74804 m!46476))

(declare-fun m!46478 () Bool)

(assert (=> b!74804 m!46478))

(declare-fun m!46480 () Bool)

(assert (=> b!74804 m!46480))

(declare-fun m!46482 () Bool)

(assert (=> b!74804 m!46482))

(declare-fun m!46484 () Bool)

(assert (=> b!74804 m!46484))

(declare-fun m!46486 () Bool)

(assert (=> b!74804 m!46486))

(assert (=> b!74804 m!46484))

(declare-fun m!46488 () Bool)

(assert (=> b!74804 m!46488))

(assert (=> b!74804 m!46020))

(declare-fun m!46490 () Bool)

(assert (=> b!74804 m!46490))

(declare-fun m!46492 () Bool)

(assert (=> b!74804 m!46492))

(assert (=> b!74804 m!46490))

(declare-fun m!46494 () Bool)

(assert (=> b!74804 m!46494))

(declare-fun m!46496 () Bool)

(assert (=> b!74804 m!46496))

(assert (=> b!74804 m!46020))

(assert (=> b!74804 m!46468))

(declare-fun m!46498 () Bool)

(assert (=> b!74804 m!46498))

(declare-fun m!46500 () Bool)

(assert (=> b!74804 m!46500))

(assert (=> b!74804 m!46488))

(assert (=> b!74804 m!46498))

(assert (=> b!74804 m!46496))

(declare-fun m!46502 () Bool)

(assert (=> b!74804 m!46502))

(assert (=> b!74804 m!46464))

(declare-fun m!46504 () Bool)

(assert (=> b!74804 m!46504))

(declare-fun m!46506 () Bool)

(assert (=> b!74804 m!46506))

(declare-fun m!46508 () Bool)

(assert (=> b!74804 m!46508))

(declare-fun m!46510 () Bool)

(assert (=> b!74804 m!46510))

(declare-fun m!46512 () Bool)

(assert (=> b!74804 m!46512))

(assert (=> b!74804 m!46494))

(declare-fun m!46514 () Bool)

(assert (=> b!74804 m!46514))

(declare-fun m!46516 () Bool)

(assert (=> b!74804 m!46516))

(assert (=> b!74804 m!46508))

(declare-fun m!46518 () Bool)

(assert (=> b!74804 m!46518))

(declare-fun m!46520 () Bool)

(assert (=> b!74804 m!46520))

(declare-fun m!46522 () Bool)

(assert (=> b!74804 m!46522))

(declare-fun m!46524 () Bool)

(assert (=> b!74804 m!46524))

(declare-fun m!46526 () Bool)

(assert (=> b!74804 m!46526))

(assert (=> b!74804 m!46522))

(assert (=> b!74804 m!46488))

(assert (=> b!74804 m!46504))

(assert (=> b!74804 m!46020))

(declare-fun m!46528 () Bool)

(assert (=> b!74804 m!46528))

(declare-fun m!46530 () Bool)

(assert (=> b!74804 m!46530))

(assert (=> b!74804 m!46490))

(declare-fun m!46532 () Bool)

(assert (=> b!74804 m!46532))

(assert (=> b!74804 m!46480))

(declare-fun m!46534 () Bool)

(assert (=> b!74804 m!46534))

(assert (=> b!74804 m!46482))

(declare-fun m!46536 () Bool)

(assert (=> b!74804 m!46536))

(assert (=> b!74804 m!46464))

(declare-fun m!46538 () Bool)

(assert (=> b!74802 m!46538))

(assert (=> b!74802 m!46020))

(assert (=> b!74802 m!46468))

(declare-fun m!46540 () Bool)

(assert (=> b!74802 m!46540))

(assert (=> d!13011 d!13135))

(declare-fun b!74836 () Bool)

(declare-fun res!39163 () Bool)

(declare-fun e!41603 () Bool)

(assert (=> b!74836 (=> res!39163 e!41603)))

(assert (=> b!74836 (= res!39163 (not (isEmpty!310 (tail!93 (list!356 (charsOf!25 (_1!806 (get!304 lt!13790))))))))))

(declare-fun b!74837 () Bool)

(declare-fun e!41604 () Bool)

(declare-fun lt!14015 () Bool)

(declare-fun call!3630 () Bool)

(assert (=> b!74837 (= e!41604 (= lt!14015 call!3630))))

(declare-fun b!74838 () Bool)

(declare-fun e!41601 () Bool)

(declare-fun nullable!23 (Regex!334) Bool)

(assert (=> b!74838 (= e!41601 (nullable!23 (regex!266 (rule!739 (_1!806 (get!304 lt!13790))))))))

(declare-fun b!74839 () Bool)

(declare-fun e!41602 () Bool)

(assert (=> b!74839 (= e!41602 e!41603)))

(declare-fun res!39160 () Bool)

(assert (=> b!74839 (=> res!39160 e!41603)))

(assert (=> b!74839 (= res!39160 call!3630)))

(declare-fun b!74840 () Bool)

(declare-fun e!41600 () Bool)

(assert (=> b!74840 (= e!41600 (= (head!409 (list!356 (charsOf!25 (_1!806 (get!304 lt!13790))))) (c!19381 (regex!266 (rule!739 (_1!806 (get!304 lt!13790)))))))))

(declare-fun b!74841 () Bool)

(declare-fun res!39164 () Bool)

(declare-fun e!41599 () Bool)

(assert (=> b!74841 (=> res!39164 e!41599)))

(assert (=> b!74841 (= res!39164 e!41600)))

(declare-fun res!39158 () Bool)

(assert (=> b!74841 (=> (not res!39158) (not e!41600))))

(assert (=> b!74841 (= res!39158 lt!14015)))

(declare-fun b!74842 () Bool)

(declare-fun res!39159 () Bool)

(assert (=> b!74842 (=> (not res!39159) (not e!41600))))

(assert (=> b!74842 (= res!39159 (isEmpty!310 (tail!93 (list!356 (charsOf!25 (_1!806 (get!304 lt!13790)))))))))

(declare-fun b!74843 () Bool)

(declare-fun e!41598 () Bool)

(assert (=> b!74843 (= e!41604 e!41598)))

(declare-fun c!19451 () Bool)

(assert (=> b!74843 (= c!19451 (is-EmptyLang!334 (regex!266 (rule!739 (_1!806 (get!304 lt!13790))))))))

(declare-fun b!74844 () Bool)

(assert (=> b!74844 (= e!41599 e!41602)))

(declare-fun res!39162 () Bool)

(assert (=> b!74844 (=> (not res!39162) (not e!41602))))

(assert (=> b!74844 (= res!39162 (not lt!14015))))

(declare-fun b!74845 () Bool)

(assert (=> b!74845 (= e!41598 (not lt!14015))))

(declare-fun d!13145 () Bool)

(assert (=> d!13145 e!41604))

(declare-fun c!19453 () Bool)

(assert (=> d!13145 (= c!19453 (is-EmptyExpr!334 (regex!266 (rule!739 (_1!806 (get!304 lt!13790))))))))

(assert (=> d!13145 (= lt!14015 e!41601)))

(declare-fun c!19452 () Bool)

(assert (=> d!13145 (= c!19452 (isEmpty!310 (list!356 (charsOf!25 (_1!806 (get!304 lt!13790))))))))

(declare-fun validRegex!30 (Regex!334) Bool)

(assert (=> d!13145 (validRegex!30 (regex!266 (rule!739 (_1!806 (get!304 lt!13790)))))))

(assert (=> d!13145 (= (matchR!8 (regex!266 (rule!739 (_1!806 (get!304 lt!13790)))) (list!356 (charsOf!25 (_1!806 (get!304 lt!13790))))) lt!14015)))

(declare-fun b!74846 () Bool)

(declare-fun res!39157 () Bool)

(assert (=> b!74846 (=> res!39157 e!41599)))

(assert (=> b!74846 (= res!39157 (not (is-ElementMatch!334 (regex!266 (rule!739 (_1!806 (get!304 lt!13790)))))))))

(assert (=> b!74846 (= e!41598 e!41599)))

(declare-fun bm!3625 () Bool)

(assert (=> bm!3625 (= call!3630 (isEmpty!310 (list!356 (charsOf!25 (_1!806 (get!304 lt!13790))))))))

(declare-fun b!74847 () Bool)

(declare-fun derivativeStep!7 (Regex!334 C!1590) Regex!334)

(assert (=> b!74847 (= e!41601 (matchR!8 (derivativeStep!7 (regex!266 (rule!739 (_1!806 (get!304 lt!13790)))) (head!409 (list!356 (charsOf!25 (_1!806 (get!304 lt!13790)))))) (tail!93 (list!356 (charsOf!25 (_1!806 (get!304 lt!13790)))))))))

(declare-fun b!74848 () Bool)

(assert (=> b!74848 (= e!41603 (not (= (head!409 (list!356 (charsOf!25 (_1!806 (get!304 lt!13790))))) (c!19381 (regex!266 (rule!739 (_1!806 (get!304 lt!13790))))))))))

(declare-fun b!74849 () Bool)

(declare-fun res!39161 () Bool)

(assert (=> b!74849 (=> (not res!39161) (not e!41600))))

(assert (=> b!74849 (= res!39161 (not call!3630))))

(assert (= (and d!13145 c!19452) b!74838))

(assert (= (and d!13145 (not c!19452)) b!74847))

(assert (= (and d!13145 c!19453) b!74837))

(assert (= (and d!13145 (not c!19453)) b!74843))

(assert (= (and b!74843 c!19451) b!74845))

(assert (= (and b!74843 (not c!19451)) b!74846))

(assert (= (and b!74846 (not res!39157)) b!74841))

(assert (= (and b!74841 res!39158) b!74849))

(assert (= (and b!74849 res!39161) b!74842))

(assert (= (and b!74842 res!39159) b!74840))

(assert (= (and b!74841 (not res!39164)) b!74844))

(assert (= (and b!74844 res!39162) b!74839))

(assert (= (and b!74839 (not res!39160)) b!74836))

(assert (= (and b!74836 (not res!39163)) b!74848))

(assert (= (or b!74837 b!74839 b!74849) bm!3625))

(assert (=> b!74840 m!46120))

(declare-fun m!46542 () Bool)

(assert (=> b!74840 m!46542))

(assert (=> b!74842 m!46120))

(declare-fun m!46544 () Bool)

(assert (=> b!74842 m!46544))

(assert (=> b!74842 m!46544))

(declare-fun m!46546 () Bool)

(assert (=> b!74842 m!46546))

(declare-fun m!46548 () Bool)

(assert (=> b!74838 m!46548))

(assert (=> b!74848 m!46120))

(assert (=> b!74848 m!46542))

(assert (=> b!74847 m!46120))

(assert (=> b!74847 m!46542))

(assert (=> b!74847 m!46542))

(declare-fun m!46550 () Bool)

(assert (=> b!74847 m!46550))

(assert (=> b!74847 m!46120))

(assert (=> b!74847 m!46544))

(assert (=> b!74847 m!46550))

(assert (=> b!74847 m!46544))

(declare-fun m!46552 () Bool)

(assert (=> b!74847 m!46552))

(assert (=> b!74836 m!46120))

(assert (=> b!74836 m!46544))

(assert (=> b!74836 m!46544))

(assert (=> b!74836 m!46546))

(assert (=> bm!3625 m!46120))

(declare-fun m!46554 () Bool)

(assert (=> bm!3625 m!46554))

(assert (=> d!13145 m!46120))

(assert (=> d!13145 m!46554))

(declare-fun m!46556 () Bool)

(assert (=> d!13145 m!46556))

(assert (=> b!74498 d!13145))

(assert (=> b!74498 d!13047))

(assert (=> b!74498 d!13063))

(assert (=> b!74498 d!13065))

(declare-fun d!13147 () Bool)

(assert (=> d!13147 true))

(declare-fun order!473 () Int)

(declare-fun order!471 () Int)

(declare-fun lambda!1342 () Int)

(declare-fun dynLambda!285 (Int Int) Int)

(declare-fun dynLambda!286 (Int Int) Int)

(assert (=> d!13147 (< (dynLambda!285 order!471 (toChars!620 (transformation!266 (h!6625 rules!2471)))) (dynLambda!286 order!473 lambda!1342))))

(assert (=> d!13147 true))

(assert (=> d!13147 (< (dynLambda!282 order!461 (toValue!761 (transformation!266 (h!6625 rules!2471)))) (dynLambda!286 order!473 lambda!1342))))

(declare-fun Forall!32 (Int) Bool)

(assert (=> d!13147 (= (semiInverseModEq!40 (toChars!620 (transformation!266 (h!6625 rules!2471))) (toValue!761 (transformation!266 (h!6625 rules!2471)))) (Forall!32 lambda!1342))))

(declare-fun bs!7815 () Bool)

(assert (= bs!7815 d!13147))

(declare-fun m!46558 () Bool)

(assert (=> bs!7815 m!46558))

(assert (=> d!13007 d!13147))

(declare-fun d!13149 () Bool)

(assert (=> d!13149 (= (inv!1636 (tag!444 (h!6625 (t!19941 rules!2471)))) (= (mod (str.len (value!10452 (tag!444 (h!6625 (t!19941 rules!2471))))) 2) 0))))

(assert (=> b!74525 d!13149))

(declare-fun d!13151 () Bool)

(declare-fun res!39165 () Bool)

(declare-fun e!41605 () Bool)

(assert (=> d!13151 (=> (not res!39165) (not e!41605))))

(assert (=> d!13151 (= res!39165 (semiInverseModEq!40 (toChars!620 (transformation!266 (h!6625 (t!19941 rules!2471)))) (toValue!761 (transformation!266 (h!6625 (t!19941 rules!2471))))))))

(assert (=> d!13151 (= (inv!1639 (transformation!266 (h!6625 (t!19941 rules!2471)))) e!41605)))

(declare-fun b!74854 () Bool)

(assert (=> b!74854 (= e!41605 (equivClasses!36 (toChars!620 (transformation!266 (h!6625 (t!19941 rules!2471)))) (toValue!761 (transformation!266 (h!6625 (t!19941 rules!2471))))))))

(assert (= (and d!13151 res!39165) b!74854))

(declare-fun m!46560 () Bool)

(assert (=> d!13151 m!46560))

(declare-fun m!46562 () Bool)

(assert (=> b!74854 m!46562))

(assert (=> b!74525 d!13151))

(declare-fun b!74855 () Bool)

(declare-fun e!41606 () Bool)

(assert (=> b!74855 (= e!41606 tp_is_empty!591)))

(declare-fun b!74858 () Bool)

(declare-fun tp!48920 () Bool)

(declare-fun tp!48921 () Bool)

(assert (=> b!74858 (= e!41606 (and tp!48920 tp!48921))))

(declare-fun b!74857 () Bool)

(declare-fun tp!48919 () Bool)

(assert (=> b!74857 (= e!41606 tp!48919)))

(declare-fun b!74856 () Bool)

(declare-fun tp!48923 () Bool)

(declare-fun tp!48922 () Bool)

(assert (=> b!74856 (= e!41606 (and tp!48923 tp!48922))))

(assert (=> b!74513 (= tp!48867 e!41606)))

(assert (= (and b!74513 (is-ElementMatch!334 (regOne!1180 (regex!266 (h!6625 rules!2471))))) b!74855))

(assert (= (and b!74513 (is-Concat!590 (regOne!1180 (regex!266 (h!6625 rules!2471))))) b!74856))

(assert (= (and b!74513 (is-Star!334 (regOne!1180 (regex!266 (h!6625 rules!2471))))) b!74857))

(assert (= (and b!74513 (is-Union!334 (regOne!1180 (regex!266 (h!6625 rules!2471))))) b!74858))

(declare-fun b!74859 () Bool)

(declare-fun e!41607 () Bool)

(assert (=> b!74859 (= e!41607 tp_is_empty!591)))

(declare-fun b!74862 () Bool)

(declare-fun tp!48925 () Bool)

(declare-fun tp!48926 () Bool)

(assert (=> b!74862 (= e!41607 (and tp!48925 tp!48926))))

(declare-fun b!74861 () Bool)

(declare-fun tp!48924 () Bool)

(assert (=> b!74861 (= e!41607 tp!48924)))

(declare-fun b!74860 () Bool)

(declare-fun tp!48928 () Bool)

(declare-fun tp!48927 () Bool)

(assert (=> b!74860 (= e!41607 (and tp!48928 tp!48927))))

(assert (=> b!74513 (= tp!48866 e!41607)))

(assert (= (and b!74513 (is-ElementMatch!334 (regTwo!1180 (regex!266 (h!6625 rules!2471))))) b!74859))

(assert (= (and b!74513 (is-Concat!590 (regTwo!1180 (regex!266 (h!6625 rules!2471))))) b!74860))

(assert (= (and b!74513 (is-Star!334 (regTwo!1180 (regex!266 (h!6625 rules!2471))))) b!74861))

(assert (= (and b!74513 (is-Union!334 (regTwo!1180 (regex!266 (h!6625 rules!2471))))) b!74862))

(declare-fun b!74865 () Bool)

(declare-fun b_free!2309 () Bool)

(declare-fun b_next!2309 () Bool)

(assert (=> b!74865 (= b_free!2309 (not b_next!2309))))

(declare-fun t!19964 () Bool)

(declare-fun tb!2343 () Bool)

(assert (=> (and b!74865 (= (toValue!761 (transformation!266 (h!6625 (t!19941 (t!19941 rules!2471))))) (toValue!761 (transformation!266 (rule!739 (_1!806 (get!304 lt!13790)))))) t!19964) tb!2343))

(declare-fun result!3310 () Bool)

(assert (= result!3310 result!3304))

(assert (=> d!13107 t!19964))

(declare-fun b_and!3347 () Bool)

(declare-fun tp!48930 () Bool)

(assert (=> b!74865 (= tp!48930 (and (=> t!19964 result!3310) b_and!3347))))

(declare-fun b_free!2311 () Bool)

(declare-fun b_next!2311 () Bool)

(assert (=> b!74865 (= b_free!2311 (not b_next!2311))))

(declare-fun tb!2345 () Bool)

(declare-fun t!19966 () Bool)

(assert (=> (and b!74865 (= (toChars!620 (transformation!266 (h!6625 (t!19941 (t!19941 rules!2471))))) (toChars!620 (transformation!266 (rule!739 (_1!806 (get!304 lt!13790)))))) t!19966) tb!2345))

(declare-fun result!3312 () Bool)

(assert (= result!3312 result!3292))

(assert (=> d!13065 t!19966))

(declare-fun tp!48931 () Bool)

(declare-fun b_and!3349 () Bool)

(assert (=> b!74865 (= tp!48931 (and (=> t!19966 result!3312) b_and!3349))))

(declare-fun e!41608 () Bool)

(assert (=> b!74865 (= e!41608 (and tp!48930 tp!48931))))

(declare-fun e!41609 () Bool)

(declare-fun b!74864 () Bool)

(declare-fun tp!48929 () Bool)

(assert (=> b!74864 (= e!41609 (and tp!48929 (inv!1636 (tag!444 (h!6625 (t!19941 (t!19941 rules!2471))))) (inv!1639 (transformation!266 (h!6625 (t!19941 (t!19941 rules!2471))))) e!41608))))

(declare-fun b!74863 () Bool)

(declare-fun e!41611 () Bool)

(declare-fun tp!48932 () Bool)

(assert (=> b!74863 (= e!41611 (and e!41609 tp!48932))))

(assert (=> b!74524 (= tp!48879 e!41611)))

(assert (= b!74864 b!74865))

(assert (= b!74863 b!74864))

(assert (= (and b!74524 (is-Cons!1228 (t!19941 (t!19941 rules!2471)))) b!74863))

(declare-fun m!46564 () Bool)

(assert (=> b!74864 m!46564))

(declare-fun m!46566 () Bool)

(assert (=> b!74864 m!46566))

(declare-fun b!74866 () Bool)

(declare-fun e!41612 () Bool)

(assert (=> b!74866 (= e!41612 tp_is_empty!591)))

(declare-fun b!74869 () Bool)

(declare-fun tp!48934 () Bool)

(declare-fun tp!48935 () Bool)

(assert (=> b!74869 (= e!41612 (and tp!48934 tp!48935))))

(declare-fun b!74868 () Bool)

(declare-fun tp!48933 () Bool)

(assert (=> b!74868 (= e!41612 tp!48933)))

(declare-fun b!74867 () Bool)

(declare-fun tp!48937 () Bool)

(declare-fun tp!48936 () Bool)

(assert (=> b!74867 (= e!41612 (and tp!48937 tp!48936))))

(assert (=> b!74515 (= tp!48864 e!41612)))

(assert (= (and b!74515 (is-ElementMatch!334 (regOne!1181 (regex!266 (h!6625 rules!2471))))) b!74866))

(assert (= (and b!74515 (is-Concat!590 (regOne!1181 (regex!266 (h!6625 rules!2471))))) b!74867))

(assert (= (and b!74515 (is-Star!334 (regOne!1181 (regex!266 (h!6625 rules!2471))))) b!74868))

(assert (= (and b!74515 (is-Union!334 (regOne!1181 (regex!266 (h!6625 rules!2471))))) b!74869))

(declare-fun b!74870 () Bool)

(declare-fun e!41613 () Bool)

(assert (=> b!74870 (= e!41613 tp_is_empty!591)))

(declare-fun b!74873 () Bool)

(declare-fun tp!48939 () Bool)

(declare-fun tp!48940 () Bool)

(assert (=> b!74873 (= e!41613 (and tp!48939 tp!48940))))

(declare-fun b!74872 () Bool)

(declare-fun tp!48938 () Bool)

(assert (=> b!74872 (= e!41613 tp!48938)))

(declare-fun b!74871 () Bool)

(declare-fun tp!48942 () Bool)

(declare-fun tp!48941 () Bool)

(assert (=> b!74871 (= e!41613 (and tp!48942 tp!48941))))

(assert (=> b!74515 (= tp!48865 e!41613)))

(assert (= (and b!74515 (is-ElementMatch!334 (regTwo!1181 (regex!266 (h!6625 rules!2471))))) b!74870))

(assert (= (and b!74515 (is-Concat!590 (regTwo!1181 (regex!266 (h!6625 rules!2471))))) b!74871))

(assert (= (and b!74515 (is-Star!334 (regTwo!1181 (regex!266 (h!6625 rules!2471))))) b!74872))

(assert (= (and b!74515 (is-Union!334 (regTwo!1181 (regex!266 (h!6625 rules!2471))))) b!74873))

(declare-fun b!74874 () Bool)

(declare-fun e!41614 () Bool)

(declare-fun tp!48943 () Bool)

(assert (=> b!74874 (= e!41614 (and tp_is_empty!591 tp!48943))))

(assert (=> b!74531 (= tp!48882 e!41614)))

(assert (= (and b!74531 (is-Cons!1226 (t!19939 (t!19939 input!2238)))) b!74874))

(declare-fun b!74875 () Bool)

(declare-fun e!41615 () Bool)

(assert (=> b!74875 (= e!41615 tp_is_empty!591)))

(declare-fun b!74878 () Bool)

(declare-fun tp!48945 () Bool)

(declare-fun tp!48946 () Bool)

(assert (=> b!74878 (= e!41615 (and tp!48945 tp!48946))))

(declare-fun b!74877 () Bool)

(declare-fun tp!48944 () Bool)

(assert (=> b!74877 (= e!41615 tp!48944)))

(declare-fun b!74876 () Bool)

(declare-fun tp!48948 () Bool)

(declare-fun tp!48947 () Bool)

(assert (=> b!74876 (= e!41615 (and tp!48948 tp!48947))))

(assert (=> b!74525 (= tp!48876 e!41615)))

(assert (= (and b!74525 (is-ElementMatch!334 (regex!266 (h!6625 (t!19941 rules!2471))))) b!74875))

(assert (= (and b!74525 (is-Concat!590 (regex!266 (h!6625 (t!19941 rules!2471))))) b!74876))

(assert (= (and b!74525 (is-Star!334 (regex!266 (h!6625 (t!19941 rules!2471))))) b!74877))

(assert (= (and b!74525 (is-Union!334 (regex!266 (h!6625 (t!19941 rules!2471))))) b!74878))

(declare-fun b!74879 () Bool)

(declare-fun e!41616 () Bool)

(assert (=> b!74879 (= e!41616 tp_is_empty!591)))

(declare-fun b!74882 () Bool)

(declare-fun tp!48950 () Bool)

(declare-fun tp!48951 () Bool)

(assert (=> b!74882 (= e!41616 (and tp!48950 tp!48951))))

(declare-fun b!74881 () Bool)

(declare-fun tp!48949 () Bool)

(assert (=> b!74881 (= e!41616 tp!48949)))

(declare-fun b!74880 () Bool)

(declare-fun tp!48953 () Bool)

(declare-fun tp!48952 () Bool)

(assert (=> b!74880 (= e!41616 (and tp!48953 tp!48952))))

(assert (=> b!74514 (= tp!48863 e!41616)))

(assert (= (and b!74514 (is-ElementMatch!334 (reg!663 (regex!266 (h!6625 rules!2471))))) b!74879))

(assert (= (and b!74514 (is-Concat!590 (reg!663 (regex!266 (h!6625 rules!2471))))) b!74880))

(assert (= (and b!74514 (is-Star!334 (reg!663 (regex!266 (h!6625 rules!2471))))) b!74881))

(assert (= (and b!74514 (is-Union!334 (reg!663 (regex!266 (h!6625 rules!2471))))) b!74882))

(push 1)

(assert (not b!74860))

(assert (not b!74637))

(assert (not b!74620))

(assert (not b_next!2293))

(assert (not d!13145))

(assert (not b!74770))

(assert (not d!13147))

(assert (not bm!3625))

(assert (not b!74801))

(assert (not b!74867))

(assert (not d!13109))

(assert (not tb!2339))

(assert tp_is_empty!591)

(assert (not b!74733))

(assert (not b_next!2301))

(assert (not b!74649))

(assert (not d!13061))

(assert (not b!74757))

(assert (not b!74842))

(assert (not b!74717))

(assert (not d!13119))

(assert b_and!3347)

(assert (not b_next!2295))

(assert b_and!3335)

(assert (not b!74614))

(assert (not b!74861))

(assert (not d!13057))

(assert (not b!74756))

(assert (not b!74857))

(assert (not b!74721))

(assert (not d!13055))

(assert (not b_lambda!849))

(assert (not d!13095))

(assert (not b!74877))

(assert (not d!13101))

(assert (not b!74746))

(assert (not d!13099))

(assert (not b!74618))

(assert (not b_lambda!853))

(assert (not bm!3622))

(assert (not b!74802))

(assert (not d!13053))

(assert (not b!74623))

(assert (not b!74864))

(assert (not b!74804))

(assert (not b!74634))

(assert (not b!74764))

(assert (not b!74871))

(assert (not b!74758))

(assert (not b_next!2309))

(assert (not b!74874))

(assert (not b!74720))

(assert (not b!74716))

(assert (not b!74734))

(assert (not d!13103))

(assert b_and!3337)

(assert (not d!13129))

(assert (not d!13097))

(assert (not b!74719))

(assert (not b!74648))

(assert (not b!74856))

(assert (not d!13059))

(assert (not d!13065))

(assert (not b!74697))

(assert (not b!74616))

(assert (not d!13127))

(assert b_and!3345)

(assert (not b!74723))

(assert (not b!74863))

(assert (not b!74854))

(assert (not b!74718))

(assert (not b!74858))

(assert (not b!74763))

(assert (not b!74872))

(assert (not b!74840))

(assert (not b!74612))

(assert (not b!74724))

(assert (not b!74868))

(assert (not b!74638))

(assert (not d!13121))

(assert (not d!13051))

(assert (not d!13111))

(assert (not b_next!2303))

(assert (not b!74882))

(assert (not b!74655))

(assert (not d!13093))

(assert b_and!3343)

(assert (not b!74881))

(assert (not b!74847))

(assert (not b!74619))

(assert (not b!74622))

(assert (not b!74805))

(assert (not d!13067))

(assert (not b!74615))

(assert (not d!13133))

(assert (not b!74836))

(assert (not d!13131))

(assert (not b!74848))

(assert (not d!13135))

(assert (not b!74838))

(assert (not b!74745))

(assert (not b!74617))

(assert (not b!74876))

(assert (not b!74873))

(assert (not b_next!2311))

(assert (not b!74862))

(assert (not b!74869))

(assert (not b!74878))

(assert (not b!74880))

(assert (not d!13151))

(assert (not tb!2331))

(assert b_and!3349)

(assert (not d!13063))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2301))

(assert b_and!3347)

(assert (not b_next!2309))

(assert b_and!3337)

(assert b_and!3345)

(assert (not b_next!2303))

(assert b_and!3343)

(assert (not b_next!2293))

(assert (not b_next!2311))

(assert b_and!3349)

(assert (not b_next!2295))

(assert b_and!3335)

(check-sat)

(pop 1)

