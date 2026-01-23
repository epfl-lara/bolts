; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!8004 () Bool)

(assert start!8004)

(declare-fun b!89400 () Bool)

(declare-fun b_free!2757 () Bool)

(declare-fun b_next!2757 () Bool)

(assert (=> b!89400 (= b_free!2757 (not b_next!2757))))

(declare-fun tp!53398 () Bool)

(declare-fun b_and!4059 () Bool)

(assert (=> b!89400 (= tp!53398 b_and!4059)))

(declare-fun b_free!2759 () Bool)

(declare-fun b_next!2759 () Bool)

(assert (=> b!89400 (= b_free!2759 (not b_next!2759))))

(declare-fun tp!53400 () Bool)

(declare-fun b_and!4061 () Bool)

(assert (=> b!89400 (= tp!53400 b_and!4061)))

(declare-fun b!89393 () Bool)

(declare-fun e!49821 () Bool)

(declare-fun e!49825 () Bool)

(declare-fun tp!53399 () Bool)

(assert (=> b!89393 (= e!49821 (and e!49825 tp!53399))))

(declare-fun e!49824 () Bool)

(declare-datatypes ((String!2003 0))(
  ( (String!2004 (value!12333 String)) )
))
(declare-datatypes ((C!1722 0))(
  ( (C!1723 (val!468 Int)) )
))
(declare-datatypes ((List!1524 0))(
  ( (Nil!1518) (Cons!1518 (h!6915 C!1722) (t!20769 List!1524)) )
))
(declare-datatypes ((IArray!933 0))(
  ( (IArray!934 (innerList!524 List!1524)) )
))
(declare-datatypes ((Conc!466 0))(
  ( (Node!466 (left!1153 Conc!466) (right!1483 Conc!466) (csize!1162 Int) (cheight!677 Int)) (Leaf!768 (xs!3049 IArray!933) (csize!1163 Int)) (Empty!466) )
))
(declare-datatypes ((BalanceConc!936 0))(
  ( (BalanceConc!937 (c!22224 Conc!466)) )
))
(declare-datatypes ((List!1525 0))(
  ( (Nil!1519) (Cons!1519 (h!6916 (_ BitVec 16)) (t!20770 List!1525)) )
))
(declare-datatypes ((TokenValue!322 0))(
  ( (FloatLiteralValue!644 (text!2699 List!1525)) (TokenValueExt!321 (__x!1739 Int)) (Broken!1610 (value!12334 List!1525)) (Object!327) (End!322) (Def!322) (Underscore!322) (Match!322) (Else!322) (Error!322) (Case!322) (If!322) (Extends!322) (Abstract!322) (Class!322) (Val!322) (DelimiterValue!644 (del!382 List!1525)) (KeywordValue!328 (value!12335 List!1525)) (CommentValue!644 (value!12336 List!1525)) (WhitespaceValue!644 (value!12337 List!1525)) (IndentationValue!322 (value!12338 List!1525)) (String!2005) (Int32!322) (Broken!1611 (value!12339 List!1525)) (Boolean!323) (Unit!970) (OperatorValue!325 (op!382 List!1525)) (IdentifierValue!644 (value!12340 List!1525)) (IdentifierValue!645 (value!12341 List!1525)) (WhitespaceValue!645 (value!12342 List!1525)) (True!644) (False!644) (Broken!1612 (value!12343 List!1525)) (Broken!1613 (value!12344 List!1525)) (True!645) (RightBrace!322) (RightBracket!322) (Colon!322) (Null!322) (Comma!322) (LeftBracket!322) (False!645) (LeftBrace!322) (ImaginaryLiteralValue!322 (text!2700 List!1525)) (StringLiteralValue!966 (value!12345 List!1525)) (EOFValue!322 (value!12346 List!1525)) (IdentValue!322 (value!12347 List!1525)) (DelimiterValue!645 (value!12348 List!1525)) (DedentValue!322 (value!12349 List!1525)) (NewLineValue!322 (value!12350 List!1525)) (IntegerValue!966 (value!12351 (_ BitVec 32)) (text!2701 List!1525)) (IntegerValue!967 (value!12352 Int) (text!2702 List!1525)) (Times!322) (Or!322) (Equal!322) (Minus!322) (Broken!1614 (value!12353 List!1525)) (And!322) (Div!322) (LessEqual!322) (Mod!322) (Concat!722) (Not!322) (Plus!322) (SpaceValue!322 (value!12354 List!1525)) (IntegerValue!968 (value!12355 Int) (text!2703 List!1525)) (StringLiteralValue!967 (text!2704 List!1525)) (FloatLiteralValue!645 (text!2705 List!1525)) (BytesLiteralValue!322 (value!12356 List!1525)) (CommentValue!645 (value!12357 List!1525)) (StringLiteralValue!968 (value!12358 List!1525)) (ErrorTokenValue!322 (msg!383 List!1525)) )
))
(declare-datatypes ((Regex!400 0))(
  ( (ElementMatch!400 (c!22225 C!1722)) (Concat!723 (regOne!1312 Regex!400) (regTwo!1312 Regex!400)) (EmptyExpr!400) (Star!400 (reg!729 Regex!400)) (EmptyLang!400) (Union!400 (regOne!1313 Regex!400) (regTwo!1313 Regex!400)) )
))
(declare-datatypes ((TokenValueInjection!468 0))(
  ( (TokenValueInjection!469 (toValue!863 Int) (toChars!722 Int)) )
))
(declare-datatypes ((Rule!464 0))(
  ( (Rule!465 (regex!332 Regex!400) (tag!510 String!2003) (isSeparator!332 Bool) (transformation!332 TokenValueInjection!468)) )
))
(declare-datatypes ((Token!424 0))(
  ( (Token!425 (value!12359 TokenValue!322) (rule!825 Rule!464) (size!1314 Int) (originalCharacters!383 List!1524)) )
))
(declare-datatypes ((List!1526 0))(
  ( (Nil!1520) (Cons!1520 (h!6917 Token!424) (t!20771 List!1526)) )
))
(declare-datatypes ((IArray!935 0))(
  ( (IArray!936 (innerList!525 List!1526)) )
))
(declare-datatypes ((Conc!467 0))(
  ( (Node!467 (left!1154 Conc!467) (right!1484 Conc!467) (csize!1164 Int) (cheight!678 Int)) (Leaf!769 (xs!3050 IArray!935) (csize!1165 Int)) (Empty!467) )
))
(declare-datatypes ((BalanceConc!938 0))(
  ( (BalanceConc!939 (c!22226 Conc!467)) )
))
(declare-datatypes ((tuple2!1600 0))(
  ( (tuple2!1601 (_1!1007 BalanceConc!938) (_2!1007 BalanceConc!936)) )
))
(declare-fun lt!22211 () tuple2!1600)

(declare-datatypes ((LexerInterface!224 0))(
  ( (LexerInterfaceExt!221 (__x!1740 Int)) (Lexer!222) )
))
(declare-fun thiss!19403 () LexerInterface!224)

(declare-fun input!2238 () List!1524)

(declare-fun b!89394 () Bool)

(declare-fun ++!189 (List!1524 List!1524) List!1524)

(declare-fun list!559 (BalanceConc!936) List!1524)

(declare-fun print!63 (LexerInterface!224 BalanceConc!938) BalanceConc!936)

(assert (=> b!89394 (= e!49824 (not (= (++!189 (list!559 (print!63 thiss!19403 (_1!1007 lt!22211))) (list!559 (_2!1007 lt!22211))) input!2238)))))

(declare-fun b!89395 () Bool)

(declare-fun e!49826 () Bool)

(declare-fun tp_is_empty!723 () Bool)

(declare-fun tp!53401 () Bool)

(assert (=> b!89395 (= e!49826 (and tp_is_empty!723 tp!53401))))

(declare-fun b!89396 () Bool)

(declare-fun res!44981 () Bool)

(declare-fun e!49822 () Bool)

(assert (=> b!89396 (=> (not res!44981) (not e!49822))))

(declare-datatypes ((List!1527 0))(
  ( (Nil!1521) (Cons!1521 (h!6918 Rule!464) (t!20772 List!1527)) )
))
(declare-fun rules!2471 () List!1527)

(declare-fun rulesInvariant!218 (LexerInterface!224 List!1527) Bool)

(assert (=> b!89396 (= res!44981 (rulesInvariant!218 thiss!19403 rules!2471))))

(declare-fun e!49823 () Bool)

(declare-fun tp!53397 () Bool)

(declare-fun b!89397 () Bool)

(declare-fun inv!1874 (String!2003) Bool)

(declare-fun inv!1877 (TokenValueInjection!468) Bool)

(assert (=> b!89397 (= e!49825 (and tp!53397 (inv!1874 (tag!510 (h!6918 rules!2471))) (inv!1877 (transformation!332 (h!6918 rules!2471))) e!49823))))

(declare-fun b!89398 () Bool)

(declare-fun e!49828 () Bool)

(assert (=> b!89398 (= e!49822 e!49828)))

(declare-fun res!44982 () Bool)

(assert (=> b!89398 (=> (not res!44982) (not e!49828))))

(declare-fun isEmpty!583 (BalanceConc!936) Bool)

(assert (=> b!89398 (= res!44982 (not (isEmpty!583 (_2!1007 lt!22211))))))

(declare-fun lex!132 (LexerInterface!224 List!1527 BalanceConc!936) tuple2!1600)

(declare-fun seqFromList!172 (List!1524) BalanceConc!936)

(assert (=> b!89398 (= lt!22211 (lex!132 thiss!19403 rules!2471 (seqFromList!172 input!2238)))))

(declare-fun res!44979 () Bool)

(assert (=> start!8004 (=> (not res!44979) (not e!49822))))

(assert (=> start!8004 (= res!44979 (is-Lexer!222 thiss!19403))))

(assert (=> start!8004 e!49822))

(assert (=> start!8004 true))

(assert (=> start!8004 e!49821))

(assert (=> start!8004 e!49826))

(declare-fun b!89399 () Bool)

(assert (=> b!89399 (= e!49828 e!49824)))

(declare-fun res!44980 () Bool)

(assert (=> b!89399 (=> (not res!44980) (not e!49824))))

(declare-fun lt!22212 () List!1526)

(assert (=> b!89399 (= res!44980 (and (or (not (is-Cons!1520 lt!22212)) (not (is-Nil!1520 (t!20771 lt!22212)))) (not (is-Cons!1520 lt!22212))))))

(declare-fun list!560 (BalanceConc!938) List!1526)

(assert (=> b!89399 (= lt!22212 (list!560 (_1!1007 lt!22211)))))

(assert (=> b!89400 (= e!49823 (and tp!53398 tp!53400))))

(declare-fun b!89401 () Bool)

(declare-fun res!44978 () Bool)

(assert (=> b!89401 (=> (not res!44978) (not e!49822))))

(declare-fun isEmpty!584 (List!1527) Bool)

(assert (=> b!89401 (= res!44978 (not (isEmpty!584 rules!2471)))))

(assert (= (and start!8004 res!44979) b!89401))

(assert (= (and b!89401 res!44978) b!89396))

(assert (= (and b!89396 res!44981) b!89398))

(assert (= (and b!89398 res!44982) b!89399))

(assert (= (and b!89399 res!44980) b!89394))

(assert (= b!89397 b!89400))

(assert (= b!89393 b!89397))

(assert (= (and start!8004 (is-Cons!1521 rules!2471)) b!89393))

(assert (= (and start!8004 (is-Cons!1518 input!2238)) b!89395))

(declare-fun m!69906 () Bool)

(assert (=> b!89399 m!69906))

(declare-fun m!69908 () Bool)

(assert (=> b!89394 m!69908))

(assert (=> b!89394 m!69908))

(declare-fun m!69910 () Bool)

(assert (=> b!89394 m!69910))

(declare-fun m!69912 () Bool)

(assert (=> b!89394 m!69912))

(assert (=> b!89394 m!69910))

(assert (=> b!89394 m!69912))

(declare-fun m!69914 () Bool)

(assert (=> b!89394 m!69914))

(declare-fun m!69916 () Bool)

(assert (=> b!89397 m!69916))

(declare-fun m!69918 () Bool)

(assert (=> b!89397 m!69918))

(declare-fun m!69920 () Bool)

(assert (=> b!89401 m!69920))

(declare-fun m!69922 () Bool)

(assert (=> b!89398 m!69922))

(declare-fun m!69924 () Bool)

(assert (=> b!89398 m!69924))

(assert (=> b!89398 m!69924))

(declare-fun m!69926 () Bool)

(assert (=> b!89398 m!69926))

(declare-fun m!69928 () Bool)

(assert (=> b!89396 m!69928))

(push 1)

(assert (not b!89396))

(assert (not b!89401))

(assert (not b!89395))

(assert (not b_next!2757))

(assert b_and!4061)

(assert (not b_next!2759))

(assert (not b!89397))

(assert (not b!89394))

(assert tp_is_empty!723)

(assert (not b!89393))

(assert (not b!89398))

(assert b_and!4059)

(assert (not b!89399))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4061)

(assert b_and!4059)

(assert (not b_next!2759))

(assert (not b_next!2757))

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!22221 () List!1524)

(declare-fun e!49857 () Bool)

(declare-fun b!89440 () Bool)

(assert (=> b!89440 (= e!49857 (or (not (= (list!559 (_2!1007 lt!22211)) Nil!1518)) (= lt!22221 (list!559 (print!63 thiss!19403 (_1!1007 lt!22211))))))))

(declare-fun b!89439 () Bool)

(declare-fun res!45003 () Bool)

(assert (=> b!89439 (=> (not res!45003) (not e!49857))))

(declare-fun size!1316 (List!1524) Int)

(assert (=> b!89439 (= res!45003 (= (size!1316 lt!22221) (+ (size!1316 (list!559 (print!63 thiss!19403 (_1!1007 lt!22211)))) (size!1316 (list!559 (_2!1007 lt!22211))))))))

(declare-fun b!89438 () Bool)

(declare-fun e!49858 () List!1524)

(assert (=> b!89438 (= e!49858 (Cons!1518 (h!6915 (list!559 (print!63 thiss!19403 (_1!1007 lt!22211)))) (++!189 (t!20769 (list!559 (print!63 thiss!19403 (_1!1007 lt!22211)))) (list!559 (_2!1007 lt!22211)))))))

(declare-fun b!89437 () Bool)

(assert (=> b!89437 (= e!49858 (list!559 (_2!1007 lt!22211)))))

(declare-fun d!19118 () Bool)

(assert (=> d!19118 e!49857))

(declare-fun res!45002 () Bool)

(assert (=> d!19118 (=> (not res!45002) (not e!49857))))

(declare-fun content!97 (List!1524) (Set C!1722))

(assert (=> d!19118 (= res!45002 (= (content!97 lt!22221) (set.union (content!97 (list!559 (print!63 thiss!19403 (_1!1007 lt!22211)))) (content!97 (list!559 (_2!1007 lt!22211))))))))

(assert (=> d!19118 (= lt!22221 e!49858)))

(declare-fun c!22233 () Bool)

(assert (=> d!19118 (= c!22233 (is-Nil!1518 (list!559 (print!63 thiss!19403 (_1!1007 lt!22211)))))))

(assert (=> d!19118 (= (++!189 (list!559 (print!63 thiss!19403 (_1!1007 lt!22211))) (list!559 (_2!1007 lt!22211))) lt!22221)))

(assert (= (and d!19118 c!22233) b!89437))

(assert (= (and d!19118 (not c!22233)) b!89438))

(assert (= (and d!19118 res!45002) b!89439))

(assert (= (and b!89439 res!45003) b!89440))

(declare-fun m!69954 () Bool)

(assert (=> b!89439 m!69954))

(assert (=> b!89439 m!69910))

(declare-fun m!69956 () Bool)

(assert (=> b!89439 m!69956))

(assert (=> b!89439 m!69912))

(declare-fun m!69958 () Bool)

(assert (=> b!89439 m!69958))

(assert (=> b!89438 m!69912))

(declare-fun m!69960 () Bool)

(assert (=> b!89438 m!69960))

(declare-fun m!69962 () Bool)

(assert (=> d!19118 m!69962))

(assert (=> d!19118 m!69910))

(declare-fun m!69964 () Bool)

(assert (=> d!19118 m!69964))

(assert (=> d!19118 m!69912))

(declare-fun m!69966 () Bool)

(assert (=> d!19118 m!69966))

(assert (=> b!89394 d!19118))

(declare-fun d!19122 () Bool)

(declare-fun list!563 (Conc!466) List!1524)

(assert (=> d!19122 (= (list!559 (print!63 thiss!19403 (_1!1007 lt!22211))) (list!563 (c!22224 (print!63 thiss!19403 (_1!1007 lt!22211)))))))

(declare-fun bs!9047 () Bool)

(assert (= bs!9047 d!19122))

(declare-fun m!69968 () Bool)

(assert (=> bs!9047 m!69968))

(assert (=> b!89394 d!19122))

(declare-fun d!19124 () Bool)

(declare-fun lt!22227 () BalanceConc!936)

(declare-fun printList!28 (LexerInterface!224 List!1526) List!1524)

(assert (=> d!19124 (= (list!559 lt!22227) (printList!28 thiss!19403 (list!560 (_1!1007 lt!22211))))))

(declare-fun printTailRec!28 (LexerInterface!224 BalanceConc!938 Int BalanceConc!936) BalanceConc!936)

(assert (=> d!19124 (= lt!22227 (printTailRec!28 thiss!19403 (_1!1007 lt!22211) 0 (BalanceConc!937 Empty!466)))))

(assert (=> d!19124 (= (print!63 thiss!19403 (_1!1007 lt!22211)) lt!22227)))

(declare-fun bs!9049 () Bool)

(assert (= bs!9049 d!19124))

(declare-fun m!69990 () Bool)

(assert (=> bs!9049 m!69990))

(assert (=> bs!9049 m!69906))

(assert (=> bs!9049 m!69906))

(declare-fun m!69992 () Bool)

(assert (=> bs!9049 m!69992))

(declare-fun m!69994 () Bool)

(assert (=> bs!9049 m!69994))

(assert (=> b!89394 d!19124))

(declare-fun d!19132 () Bool)

(assert (=> d!19132 (= (list!559 (_2!1007 lt!22211)) (list!563 (c!22224 (_2!1007 lt!22211))))))

(declare-fun bs!9050 () Bool)

(assert (= bs!9050 d!19132))

(declare-fun m!69996 () Bool)

(assert (=> bs!9050 m!69996))

(assert (=> b!89394 d!19132))

(declare-fun d!19134 () Bool)

(declare-fun lt!22230 () Bool)

(declare-fun isEmpty!587 (List!1524) Bool)

(assert (=> d!19134 (= lt!22230 (isEmpty!587 (list!559 (_2!1007 lt!22211))))))

(declare-fun isEmpty!588 (Conc!466) Bool)

(assert (=> d!19134 (= lt!22230 (isEmpty!588 (c!22224 (_2!1007 lt!22211))))))

(assert (=> d!19134 (= (isEmpty!583 (_2!1007 lt!22211)) lt!22230)))

(declare-fun bs!9051 () Bool)

(assert (= bs!9051 d!19134))

(assert (=> bs!9051 m!69912))

(assert (=> bs!9051 m!69912))

(declare-fun m!69998 () Bool)

(assert (=> bs!9051 m!69998))

(declare-fun m!70000 () Bool)

(assert (=> bs!9051 m!70000))

(assert (=> b!89398 d!19134))

(declare-fun b!89469 () Bool)

(declare-fun e!49877 () Bool)

(declare-fun e!49878 () Bool)

(assert (=> b!89469 (= e!49877 e!49878)))

(declare-fun res!45023 () Bool)

(declare-fun lt!22239 () tuple2!1600)

(declare-fun size!1317 (BalanceConc!936) Int)

(assert (=> b!89469 (= res!45023 (< (size!1317 (_2!1007 lt!22239)) (size!1317 (seqFromList!172 input!2238))))))

(assert (=> b!89469 (=> (not res!45023) (not e!49878))))

(declare-fun b!89470 () Bool)

(assert (=> b!89470 (= e!49877 (= (_2!1007 lt!22239) (seqFromList!172 input!2238)))))

(declare-fun b!89472 () Bool)

(declare-fun e!49879 () Bool)

(declare-datatypes ((tuple2!1604 0))(
  ( (tuple2!1605 (_1!1009 List!1526) (_2!1009 List!1524)) )
))
(declare-fun lexList!56 (LexerInterface!224 List!1527 List!1524) tuple2!1604)

(assert (=> b!89472 (= e!49879 (= (list!559 (_2!1007 lt!22239)) (_2!1009 (lexList!56 thiss!19403 rules!2471 (list!559 (seqFromList!172 input!2238))))))))

(declare-fun b!89473 () Bool)

(declare-fun isEmpty!589 (BalanceConc!938) Bool)

(assert (=> b!89473 (= e!49878 (not (isEmpty!589 (_1!1007 lt!22239))))))

(declare-fun d!19136 () Bool)

(assert (=> d!19136 e!49879))

(declare-fun res!45022 () Bool)

(assert (=> d!19136 (=> (not res!45022) (not e!49879))))

(assert (=> d!19136 (= res!45022 e!49877)))

(declare-fun c!22239 () Bool)

(declare-fun size!1318 (BalanceConc!938) Int)

(assert (=> d!19136 (= c!22239 (> (size!1318 (_1!1007 lt!22239)) 0))))

(declare-fun lexTailRecV2!53 (LexerInterface!224 List!1527 BalanceConc!936 BalanceConc!936 BalanceConc!936 BalanceConc!938) tuple2!1600)

(assert (=> d!19136 (= lt!22239 (lexTailRecV2!53 thiss!19403 rules!2471 (seqFromList!172 input!2238) (BalanceConc!937 Empty!466) (seqFromList!172 input!2238) (BalanceConc!939 Empty!467)))))

(assert (=> d!19136 (= (lex!132 thiss!19403 rules!2471 (seqFromList!172 input!2238)) lt!22239)))

(declare-fun b!89471 () Bool)

(declare-fun res!45024 () Bool)

(assert (=> b!89471 (=> (not res!45024) (not e!49879))))

(assert (=> b!89471 (= res!45024 (= (list!560 (_1!1007 lt!22239)) (_1!1009 (lexList!56 thiss!19403 rules!2471 (list!559 (seqFromList!172 input!2238))))))))

(assert (= (and d!19136 c!22239) b!89469))

(assert (= (and d!19136 (not c!22239)) b!89470))

(assert (= (and b!89469 res!45023) b!89473))

(assert (= (and d!19136 res!45022) b!89471))

(assert (= (and b!89471 res!45024) b!89472))

(declare-fun m!70018 () Bool)

(assert (=> d!19136 m!70018))

(assert (=> d!19136 m!69924))

(assert (=> d!19136 m!69924))

(declare-fun m!70020 () Bool)

(assert (=> d!19136 m!70020))

(declare-fun m!70022 () Bool)

(assert (=> b!89472 m!70022))

(assert (=> b!89472 m!69924))

(declare-fun m!70024 () Bool)

(assert (=> b!89472 m!70024))

(assert (=> b!89472 m!70024))

(declare-fun m!70026 () Bool)

(assert (=> b!89472 m!70026))

(declare-fun m!70028 () Bool)

(assert (=> b!89473 m!70028))

(declare-fun m!70030 () Bool)

(assert (=> b!89471 m!70030))

(assert (=> b!89471 m!69924))

(assert (=> b!89471 m!70024))

(assert (=> b!89471 m!70024))

(assert (=> b!89471 m!70026))

(declare-fun m!70032 () Bool)

(assert (=> b!89469 m!70032))

(assert (=> b!89469 m!69924))

(declare-fun m!70034 () Bool)

(assert (=> b!89469 m!70034))

(assert (=> b!89398 d!19136))

(declare-fun d!19148 () Bool)

(declare-fun fromListB!68 (List!1524) BalanceConc!936)

(assert (=> d!19148 (= (seqFromList!172 input!2238) (fromListB!68 input!2238))))

(declare-fun bs!9055 () Bool)

(assert (= bs!9055 d!19148))

(declare-fun m!70036 () Bool)

(assert (=> bs!9055 m!70036))

(assert (=> b!89398 d!19148))

(declare-fun d!19150 () Bool)

(declare-fun list!564 (Conc!467) List!1526)

(assert (=> d!19150 (= (list!560 (_1!1007 lt!22211)) (list!564 (c!22226 (_1!1007 lt!22211))))))

(declare-fun bs!9056 () Bool)

(assert (= bs!9056 d!19150))

(declare-fun m!70038 () Bool)

(assert (=> bs!9056 m!70038))

(assert (=> b!89399 d!19150))

(declare-fun d!19152 () Bool)

(assert (=> d!19152 (= (inv!1874 (tag!510 (h!6918 rules!2471))) (= (mod (str.len (value!12333 (tag!510 (h!6918 rules!2471)))) 2) 0))))

(assert (=> b!89397 d!19152))

(declare-fun d!19154 () Bool)

(declare-fun res!45027 () Bool)

(declare-fun e!49882 () Bool)

(assert (=> d!19154 (=> (not res!45027) (not e!49882))))

(declare-fun semiInverseModEq!68 (Int Int) Bool)

(assert (=> d!19154 (= res!45027 (semiInverseModEq!68 (toChars!722 (transformation!332 (h!6918 rules!2471))) (toValue!863 (transformation!332 (h!6918 rules!2471)))))))

(assert (=> d!19154 (= (inv!1877 (transformation!332 (h!6918 rules!2471))) e!49882)))

(declare-fun b!89476 () Bool)

(declare-fun equivClasses!64 (Int Int) Bool)

(assert (=> b!89476 (= e!49882 (equivClasses!64 (toChars!722 (transformation!332 (h!6918 rules!2471))) (toValue!863 (transformation!332 (h!6918 rules!2471)))))))

(assert (= (and d!19154 res!45027) b!89476))

(declare-fun m!70040 () Bool)

(assert (=> d!19154 m!70040))

(declare-fun m!70042 () Bool)

(assert (=> b!89476 m!70042))

(assert (=> b!89397 d!19154))

(declare-fun d!19156 () Bool)

(assert (=> d!19156 (= (isEmpty!584 rules!2471) (is-Nil!1521 rules!2471))))

(assert (=> b!89401 d!19156))

(declare-fun d!19158 () Bool)

(declare-fun res!45030 () Bool)

(declare-fun e!49885 () Bool)

(assert (=> d!19158 (=> (not res!45030) (not e!49885))))

(declare-fun rulesValid!76 (LexerInterface!224 List!1527) Bool)

(assert (=> d!19158 (= res!45030 (rulesValid!76 thiss!19403 rules!2471))))

(assert (=> d!19158 (= (rulesInvariant!218 thiss!19403 rules!2471) e!49885)))

(declare-fun b!89479 () Bool)

(declare-datatypes ((List!1532 0))(
  ( (Nil!1526) (Cons!1526 (h!6923 String!2003) (t!20777 List!1532)) )
))
(declare-fun noDuplicateTag!76 (LexerInterface!224 List!1527 List!1532) Bool)

(assert (=> b!89479 (= e!49885 (noDuplicateTag!76 thiss!19403 rules!2471 Nil!1526))))

(assert (= (and d!19158 res!45030) b!89479))

(declare-fun m!70044 () Bool)

(assert (=> d!19158 m!70044))

(declare-fun m!70046 () Bool)

(assert (=> b!89479 m!70046))

(assert (=> b!89396 d!19158))

(declare-fun b!89484 () Bool)

(declare-fun e!49888 () Bool)

(declare-fun tp!53419 () Bool)

(assert (=> b!89484 (= e!49888 (and tp_is_empty!723 tp!53419))))

(assert (=> b!89395 (= tp!53401 e!49888)))

(assert (= (and b!89395 (is-Cons!1518 (t!20769 input!2238))) b!89484))

(declare-fun b!89495 () Bool)

(declare-fun b_free!2765 () Bool)

(declare-fun b_next!2765 () Bool)

(assert (=> b!89495 (= b_free!2765 (not b_next!2765))))

(declare-fun tp!53428 () Bool)

(declare-fun b_and!4067 () Bool)

(assert (=> b!89495 (= tp!53428 b_and!4067)))

(declare-fun b_free!2767 () Bool)

(declare-fun b_next!2767 () Bool)

(assert (=> b!89495 (= b_free!2767 (not b_next!2767))))

(declare-fun tp!53431 () Bool)

(declare-fun b_and!4069 () Bool)

(assert (=> b!89495 (= tp!53431 b_and!4069)))

(declare-fun e!49899 () Bool)

(assert (=> b!89495 (= e!49899 (and tp!53428 tp!53431))))

(declare-fun tp!53429 () Bool)

(declare-fun e!49897 () Bool)

(declare-fun b!89494 () Bool)

(assert (=> b!89494 (= e!49897 (and tp!53429 (inv!1874 (tag!510 (h!6918 (t!20772 rules!2471)))) (inv!1877 (transformation!332 (h!6918 (t!20772 rules!2471)))) e!49899))))

(declare-fun b!89493 () Bool)

(declare-fun e!49900 () Bool)

(declare-fun tp!53430 () Bool)

(assert (=> b!89493 (= e!49900 (and e!49897 tp!53430))))

(assert (=> b!89393 (= tp!53399 e!49900)))

(assert (= b!89494 b!89495))

(assert (= b!89493 b!89494))

(assert (= (and b!89393 (is-Cons!1521 (t!20772 rules!2471))) b!89493))

(declare-fun m!70048 () Bool)

(assert (=> b!89494 m!70048))

(declare-fun m!70050 () Bool)

(assert (=> b!89494 m!70050))

(declare-fun b!89507 () Bool)

(declare-fun e!49903 () Bool)

(declare-fun tp!53443 () Bool)

(declare-fun tp!53445 () Bool)

(assert (=> b!89507 (= e!49903 (and tp!53443 tp!53445))))

(declare-fun b!89508 () Bool)

(declare-fun tp!53446 () Bool)

(assert (=> b!89508 (= e!49903 tp!53446)))

(declare-fun b!89509 () Bool)

(declare-fun tp!53444 () Bool)

(declare-fun tp!53442 () Bool)

(assert (=> b!89509 (= e!49903 (and tp!53444 tp!53442))))

(declare-fun b!89506 () Bool)

(assert (=> b!89506 (= e!49903 tp_is_empty!723)))

(assert (=> b!89397 (= tp!53397 e!49903)))

(assert (= (and b!89397 (is-ElementMatch!400 (regex!332 (h!6918 rules!2471)))) b!89506))

(assert (= (and b!89397 (is-Concat!723 (regex!332 (h!6918 rules!2471)))) b!89507))

(assert (= (and b!89397 (is-Star!400 (regex!332 (h!6918 rules!2471)))) b!89508))

(assert (= (and b!89397 (is-Union!400 (regex!332 (h!6918 rules!2471)))) b!89509))

(push 1)

(assert (not b!89507))

(assert (not d!19134))

(assert (not b_next!2767))

(assert (not b!89438))

(assert b_and!4069)

(assert (not d!19148))

(assert (not b_next!2757))

(assert (not b!89473))

(assert b_and!4061)

(assert tp_is_empty!723)

(assert (not b_next!2759))

(assert (not b!89471))

(assert (not b_next!2765))

(assert (not b!89509))

(assert (not b!89484))

(assert (not b!89493))

(assert (not b!89494))

(assert (not d!19132))

(assert (not d!19136))

(assert (not b!89472))

(assert (not b!89479))

(assert (not b!89469))

(assert (not d!19154))

(assert (not b!89476))

(assert (not d!19122))

(assert (not d!19150))

(assert (not d!19118))

(assert b_and!4059)

(assert (not d!19158))

(assert (not d!19124))

(assert b_and!4067)

(assert (not b!89508))

(assert (not b!89439))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2767))

(assert b_and!4069)

(assert (not b_next!2757))

(assert b_and!4061)

(assert (not b_next!2759))

(assert (not b_next!2765))

(assert b_and!4059)

(assert b_and!4067)

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!22243 () List!1524)

(declare-fun e!49931 () Bool)

(declare-fun b!89558 () Bool)

(assert (=> b!89558 (= e!49931 (or (not (= (list!559 (_2!1007 lt!22211)) Nil!1518)) (= lt!22243 (t!20769 (list!559 (print!63 thiss!19403 (_1!1007 lt!22211)))))))))

(declare-fun b!89557 () Bool)

(declare-fun res!45043 () Bool)

(assert (=> b!89557 (=> (not res!45043) (not e!49931))))

(assert (=> b!89557 (= res!45043 (= (size!1316 lt!22243) (+ (size!1316 (t!20769 (list!559 (print!63 thiss!19403 (_1!1007 lt!22211))))) (size!1316 (list!559 (_2!1007 lt!22211))))))))

(declare-fun b!89556 () Bool)

(declare-fun e!49932 () List!1524)

(assert (=> b!89556 (= e!49932 (Cons!1518 (h!6915 (t!20769 (list!559 (print!63 thiss!19403 (_1!1007 lt!22211))))) (++!189 (t!20769 (t!20769 (list!559 (print!63 thiss!19403 (_1!1007 lt!22211))))) (list!559 (_2!1007 lt!22211)))))))

(declare-fun b!89555 () Bool)

(assert (=> b!89555 (= e!49932 (list!559 (_2!1007 lt!22211)))))

(declare-fun d!19166 () Bool)

(assert (=> d!19166 e!49931))

(declare-fun res!45042 () Bool)

(assert (=> d!19166 (=> (not res!45042) (not e!49931))))

(assert (=> d!19166 (= res!45042 (= (content!97 lt!22243) (set.union (content!97 (t!20769 (list!559 (print!63 thiss!19403 (_1!1007 lt!22211))))) (content!97 (list!559 (_2!1007 lt!22211))))))))

(assert (=> d!19166 (= lt!22243 e!49932)))

(declare-fun c!22243 () Bool)

(assert (=> d!19166 (= c!22243 (is-Nil!1518 (t!20769 (list!559 (print!63 thiss!19403 (_1!1007 lt!22211))))))))

(assert (=> d!19166 (= (++!189 (t!20769 (list!559 (print!63 thiss!19403 (_1!1007 lt!22211)))) (list!559 (_2!1007 lt!22211))) lt!22243)))

(assert (= (and d!19166 c!22243) b!89555))

(assert (= (and d!19166 (not c!22243)) b!89556))

(assert (= (and d!19166 res!45042) b!89557))

(assert (= (and b!89557 res!45043) b!89558))

(declare-fun m!70078 () Bool)

(assert (=> b!89557 m!70078))

(declare-fun m!70080 () Bool)

(assert (=> b!89557 m!70080))

(assert (=> b!89557 m!69912))

(assert (=> b!89557 m!69958))

(assert (=> b!89556 m!69912))

(declare-fun m!70082 () Bool)

(assert (=> b!89556 m!70082))

(declare-fun m!70084 () Bool)

(assert (=> d!19166 m!70084))

(declare-fun m!70086 () Bool)

(assert (=> d!19166 m!70086))

(assert (=> d!19166 m!69912))

(assert (=> d!19166 m!69966))

(assert (=> b!89438 d!19166))

(declare-fun d!19168 () Bool)

(assert (=> d!19168 (= (list!559 (_2!1007 lt!22239)) (list!563 (c!22224 (_2!1007 lt!22239))))))

(declare-fun bs!9059 () Bool)

(assert (= bs!9059 d!19168))

(declare-fun m!70088 () Bool)

(assert (=> bs!9059 m!70088))

(assert (=> b!89472 d!19168))

(declare-fun d!19170 () Bool)

(declare-fun e!49941 () Bool)

(assert (=> d!19170 e!49941))

(declare-fun c!22249 () Bool)

(declare-fun lt!22251 () tuple2!1604)

(declare-fun size!1322 (List!1526) Int)

(assert (=> d!19170 (= c!22249 (> (size!1322 (_1!1009 lt!22251)) 0))))

(declare-fun e!49939 () tuple2!1604)

(assert (=> d!19170 (= lt!22251 e!49939)))

(declare-fun c!22248 () Bool)

(declare-datatypes ((tuple2!1608 0))(
  ( (tuple2!1609 (_1!1011 Token!424) (_2!1011 List!1524)) )
))
(declare-datatypes ((Option!145 0))(
  ( (None!144) (Some!144 (v!12887 tuple2!1608)) )
))
(declare-fun lt!22252 () Option!145)

(assert (=> d!19170 (= c!22248 (is-Some!144 lt!22252))))

(declare-fun maxPrefix!66 (LexerInterface!224 List!1527 List!1524) Option!145)

(assert (=> d!19170 (= lt!22252 (maxPrefix!66 thiss!19403 rules!2471 (list!559 (seqFromList!172 input!2238))))))

(assert (=> d!19170 (= (lexList!56 thiss!19403 rules!2471 (list!559 (seqFromList!172 input!2238))) lt!22251)))

(declare-fun b!89569 () Bool)

(assert (=> b!89569 (= e!49939 (tuple2!1605 Nil!1520 (list!559 (seqFromList!172 input!2238))))))

(declare-fun b!89570 () Bool)

(declare-fun e!49940 () Bool)

(assert (=> b!89570 (= e!49941 e!49940)))

(declare-fun res!45046 () Bool)

(assert (=> b!89570 (= res!45046 (< (size!1316 (_2!1009 lt!22251)) (size!1316 (list!559 (seqFromList!172 input!2238)))))))

(assert (=> b!89570 (=> (not res!45046) (not e!49940))))

(declare-fun b!89571 () Bool)

(assert (=> b!89571 (= e!49941 (= (_2!1009 lt!22251) (list!559 (seqFromList!172 input!2238))))))

(declare-fun b!89572 () Bool)

(declare-fun isEmpty!593 (List!1526) Bool)

(assert (=> b!89572 (= e!49940 (not (isEmpty!593 (_1!1009 lt!22251))))))

(declare-fun b!89573 () Bool)

(declare-fun lt!22250 () tuple2!1604)

(assert (=> b!89573 (= e!49939 (tuple2!1605 (Cons!1520 (_1!1011 (v!12887 lt!22252)) (_1!1009 lt!22250)) (_2!1009 lt!22250)))))

(assert (=> b!89573 (= lt!22250 (lexList!56 thiss!19403 rules!2471 (_2!1011 (v!12887 lt!22252))))))

(assert (= (and d!19170 c!22248) b!89573))

(assert (= (and d!19170 (not c!22248)) b!89569))

(assert (= (and d!19170 c!22249) b!89570))

(assert (= (and d!19170 (not c!22249)) b!89571))

(assert (= (and b!89570 res!45046) b!89572))

(declare-fun m!70090 () Bool)

(assert (=> d!19170 m!70090))

(assert (=> d!19170 m!70024))

(declare-fun m!70092 () Bool)

(assert (=> d!19170 m!70092))

(declare-fun m!70094 () Bool)

(assert (=> b!89570 m!70094))

(assert (=> b!89570 m!70024))

(declare-fun m!70096 () Bool)

(assert (=> b!89570 m!70096))

(declare-fun m!70098 () Bool)

(assert (=> b!89572 m!70098))

(declare-fun m!70100 () Bool)

(assert (=> b!89573 m!70100))

(assert (=> b!89472 d!19170))

(declare-fun d!19172 () Bool)

(assert (=> d!19172 (= (list!559 (seqFromList!172 input!2238)) (list!563 (c!22224 (seqFromList!172 input!2238))))))

(declare-fun bs!9060 () Bool)

(assert (= bs!9060 d!19172))

(declare-fun m!70102 () Bool)

(assert (=> bs!9060 m!70102))

(assert (=> b!89472 d!19172))

(declare-fun d!19174 () Bool)

(assert (=> d!19174 true))

(declare-fun lt!22255 () Bool)

(declare-fun rulesValidInductive!57 (LexerInterface!224 List!1527) Bool)

(assert (=> d!19174 (= lt!22255 (rulesValidInductive!57 thiss!19403 rules!2471))))

(declare-fun lambda!1604 () Int)

(declare-fun forall!201 (List!1527 Int) Bool)

(assert (=> d!19174 (= lt!22255 (forall!201 rules!2471 lambda!1604))))

(assert (=> d!19174 (= (rulesValid!76 thiss!19403 rules!2471) lt!22255)))

(declare-fun bs!9061 () Bool)

(assert (= bs!9061 d!19174))

(declare-fun m!70120 () Bool)

(assert (=> bs!9061 m!70120))

(declare-fun m!70122 () Bool)

(assert (=> bs!9061 m!70122))

(assert (=> d!19158 d!19174))

(declare-fun d!19182 () Bool)

(declare-fun lt!22258 () Bool)

(assert (=> d!19182 (= lt!22258 (isEmpty!593 (list!560 (_1!1007 lt!22239))))))

(declare-fun isEmpty!594 (Conc!467) Bool)

(assert (=> d!19182 (= lt!22258 (isEmpty!594 (c!22226 (_1!1007 lt!22239))))))

(assert (=> d!19182 (= (isEmpty!589 (_1!1007 lt!22239)) lt!22258)))

(declare-fun bs!9062 () Bool)

(assert (= bs!9062 d!19182))

(assert (=> bs!9062 m!70030))

(assert (=> bs!9062 m!70030))

(declare-fun m!70124 () Bool)

(assert (=> bs!9062 m!70124))

(declare-fun m!70126 () Bool)

(assert (=> bs!9062 m!70126))

(assert (=> b!89473 d!19182))

(declare-fun d!19184 () Bool)

(assert (=> d!19184 true))

(declare-fun lambda!1607 () Int)

(declare-fun order!607 () Int)

(declare-fun order!605 () Int)

(declare-fun dynLambda!393 (Int Int) Int)

(declare-fun dynLambda!394 (Int Int) Int)

(assert (=> d!19184 (< (dynLambda!393 order!605 (toValue!863 (transformation!332 (h!6918 rules!2471)))) (dynLambda!394 order!607 lambda!1607))))

(declare-fun Forall2!38 (Int) Bool)

(assert (=> d!19184 (= (equivClasses!64 (toChars!722 (transformation!332 (h!6918 rules!2471))) (toValue!863 (transformation!332 (h!6918 rules!2471)))) (Forall2!38 lambda!1607))))

(declare-fun bs!9063 () Bool)

(assert (= bs!9063 d!19184))

(declare-fun m!70128 () Bool)

(assert (=> bs!9063 m!70128))

(assert (=> b!89476 d!19184))

(declare-fun d!19186 () Bool)

(declare-fun lt!22261 () Int)

(assert (=> d!19186 (= lt!22261 (size!1322 (list!560 (_1!1007 lt!22239))))))

(declare-fun size!1323 (Conc!467) Int)

(assert (=> d!19186 (= lt!22261 (size!1323 (c!22226 (_1!1007 lt!22239))))))

(assert (=> d!19186 (= (size!1318 (_1!1007 lt!22239)) lt!22261)))

(declare-fun bs!9064 () Bool)

(assert (= bs!9064 d!19186))

(assert (=> bs!9064 m!70030))

(assert (=> bs!9064 m!70030))

(declare-fun m!70130 () Bool)

(assert (=> bs!9064 m!70130))

(declare-fun m!70132 () Bool)

(assert (=> bs!9064 m!70132))

(assert (=> d!19136 d!19186))

(declare-fun b!89639 () Bool)

(declare-fun e!49975 () tuple2!1600)

(assert (=> b!89639 (= e!49975 (tuple2!1601 (BalanceConc!939 Empty!467) (seqFromList!172 input!2238)))))

(declare-fun b!89640 () Bool)

(declare-fun e!49974 () Bool)

(declare-fun lt!22342 () tuple2!1600)

(declare-fun lexRec!33 (LexerInterface!224 List!1527 BalanceConc!936) tuple2!1600)

(assert (=> b!89640 (= e!49974 (= (list!559 (_2!1007 lt!22342)) (list!559 (_2!1007 (lexRec!33 thiss!19403 rules!2471 (seqFromList!172 input!2238))))))))

(declare-fun b!89642 () Bool)

(declare-datatypes ((tuple2!1610 0))(
  ( (tuple2!1611 (_1!1012 Token!424) (_2!1012 BalanceConc!936)) )
))
(declare-datatypes ((Option!146 0))(
  ( (None!145) (Some!145 (v!12888 tuple2!1610)) )
))
(declare-fun lt!22354 () Option!146)

(declare-fun lt!22346 () tuple2!1600)

(assert (=> b!89642 (= lt!22346 (lexRec!33 thiss!19403 rules!2471 (_2!1012 (v!12888 lt!22354))))))

(declare-fun e!49977 () tuple2!1600)

(declare-fun prepend!100 (BalanceConc!938 Token!424) BalanceConc!938)

(assert (=> b!89642 (= e!49977 (tuple2!1601 (prepend!100 (_1!1007 lt!22346) (_1!1012 (v!12888 lt!22354))) (_2!1007 lt!22346)))))

(declare-fun b!89643 () Bool)

(declare-fun e!49976 () tuple2!1600)

(assert (=> b!89643 (= e!49976 (tuple2!1601 (BalanceConc!939 Empty!467) (seqFromList!172 input!2238)))))

(declare-fun lt!22344 () BalanceConc!936)

(declare-fun lt!22367 () Option!146)

(declare-fun b!89641 () Bool)

(declare-fun append!38 (BalanceConc!938 Token!424) BalanceConc!938)

(assert (=> b!89641 (= e!49976 (lexTailRecV2!53 thiss!19403 rules!2471 (seqFromList!172 input!2238) lt!22344 (_2!1012 (v!12888 lt!22367)) (append!38 (BalanceConc!939 Empty!467) (_1!1012 (v!12888 lt!22367)))))))

(declare-fun lt!22372 () tuple2!1600)

(assert (=> b!89641 (= lt!22372 (lexRec!33 thiss!19403 rules!2471 (_2!1012 (v!12888 lt!22367))))))

(declare-fun lt!22349 () List!1524)

(assert (=> b!89641 (= lt!22349 (list!559 (BalanceConc!937 Empty!466)))))

(declare-fun lt!22353 () List!1524)

(declare-fun charsOf!67 (Token!424) BalanceConc!936)

(assert (=> b!89641 (= lt!22353 (list!559 (charsOf!67 (_1!1012 (v!12888 lt!22367)))))))

(declare-fun lt!22361 () List!1524)

(assert (=> b!89641 (= lt!22361 (list!559 (_2!1012 (v!12888 lt!22367))))))

(declare-datatypes ((Unit!972 0))(
  ( (Unit!973) )
))
(declare-fun lt!22371 () Unit!972)

(declare-fun lemmaConcatAssociativity!64 (List!1524 List!1524 List!1524) Unit!972)

(assert (=> b!89641 (= lt!22371 (lemmaConcatAssociativity!64 lt!22349 lt!22353 lt!22361))))

(assert (=> b!89641 (= (++!189 (++!189 lt!22349 lt!22353) lt!22361) (++!189 lt!22349 (++!189 lt!22353 lt!22361)))))

(declare-fun lt!22369 () Unit!972)

(assert (=> b!89641 (= lt!22369 lt!22371)))

(declare-fun lt!22366 () Option!146)

(declare-fun maxPrefixZipperSequence!31 (LexerInterface!224 List!1527 BalanceConc!936) Option!146)

(assert (=> b!89641 (= lt!22366 (maxPrefixZipperSequence!31 thiss!19403 rules!2471 (seqFromList!172 input!2238)))))

(declare-fun c!22274 () Bool)

(assert (=> b!89641 (= c!22274 (is-Some!145 lt!22366))))

(assert (=> b!89641 (= (lexRec!33 thiss!19403 rules!2471 (seqFromList!172 input!2238)) e!49975)))

(declare-fun lt!22356 () Unit!972)

(declare-fun Unit!974 () Unit!972)

(assert (=> b!89641 (= lt!22356 Unit!974)))

(declare-fun lt!22364 () List!1526)

(assert (=> b!89641 (= lt!22364 (list!560 (BalanceConc!939 Empty!467)))))

(declare-fun lt!22358 () List!1526)

(assert (=> b!89641 (= lt!22358 (Cons!1520 (_1!1012 (v!12888 lt!22367)) Nil!1520))))

(declare-fun lt!22368 () List!1526)

(assert (=> b!89641 (= lt!22368 (list!560 (_1!1007 lt!22372)))))

(declare-fun lt!22347 () Unit!972)

(declare-fun lemmaConcatAssociativity!65 (List!1526 List!1526 List!1526) Unit!972)

(assert (=> b!89641 (= lt!22347 (lemmaConcatAssociativity!65 lt!22364 lt!22358 lt!22368))))

(declare-fun ++!191 (List!1526 List!1526) List!1526)

(assert (=> b!89641 (= (++!191 (++!191 lt!22364 lt!22358) lt!22368) (++!191 lt!22364 (++!191 lt!22358 lt!22368)))))

(declare-fun lt!22352 () Unit!972)

(assert (=> b!89641 (= lt!22352 lt!22347)))

(declare-fun lt!22355 () List!1524)

(assert (=> b!89641 (= lt!22355 (++!189 (list!559 (BalanceConc!937 Empty!466)) (list!559 (charsOf!67 (_1!1012 (v!12888 lt!22367))))))))

(declare-fun lt!22365 () List!1524)

(assert (=> b!89641 (= lt!22365 (list!559 (_2!1012 (v!12888 lt!22367))))))

(declare-fun lt!22359 () List!1526)

(assert (=> b!89641 (= lt!22359 (list!560 (append!38 (BalanceConc!939 Empty!467) (_1!1012 (v!12888 lt!22367)))))))

(declare-fun lt!22340 () Unit!972)

(declare-fun lemmaLexThenLexPrefix!28 (LexerInterface!224 List!1527 List!1524 List!1524 List!1526 List!1526 List!1524) Unit!972)

(assert (=> b!89641 (= lt!22340 (lemmaLexThenLexPrefix!28 thiss!19403 rules!2471 lt!22355 lt!22365 lt!22359 (list!560 (_1!1007 lt!22372)) (list!559 (_2!1007 lt!22372))))))

(assert (=> b!89641 (= (lexList!56 thiss!19403 rules!2471 lt!22355) (tuple2!1605 lt!22359 Nil!1518))))

(declare-fun lt!22348 () Unit!972)

(assert (=> b!89641 (= lt!22348 lt!22340)))

(declare-fun lt!22339 () BalanceConc!936)

(declare-fun ++!192 (BalanceConc!936 BalanceConc!936) BalanceConc!936)

(assert (=> b!89641 (= lt!22339 (++!192 (BalanceConc!937 Empty!466) (charsOf!67 (_1!1012 (v!12888 lt!22367)))))))

(assert (=> b!89641 (= lt!22354 (maxPrefixZipperSequence!31 thiss!19403 rules!2471 lt!22339))))

(declare-fun c!22273 () Bool)

(assert (=> b!89641 (= c!22273 (is-Some!145 lt!22354))))

(assert (=> b!89641 (= (lexRec!33 thiss!19403 rules!2471 (++!192 (BalanceConc!937 Empty!466) (charsOf!67 (_1!1012 (v!12888 lt!22367))))) e!49977)))

(declare-fun lt!22360 () Unit!972)

(declare-fun Unit!975 () Unit!972)

(assert (=> b!89641 (= lt!22360 Unit!975)))

(assert (=> b!89641 (= lt!22344 (++!192 (BalanceConc!937 Empty!466) (charsOf!67 (_1!1012 (v!12888 lt!22367)))))))

(declare-fun lt!22351 () List!1524)

(assert (=> b!89641 (= lt!22351 (list!559 lt!22344))))

(declare-fun lt!22357 () List!1524)

(assert (=> b!89641 (= lt!22357 (list!559 (_2!1012 (v!12888 lt!22367))))))

(declare-fun lt!22370 () Unit!972)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!28 (List!1524 List!1524) Unit!972)

(assert (=> b!89641 (= lt!22370 (lemmaConcatTwoListThenFSndIsSuffix!28 lt!22351 lt!22357))))

(declare-fun isSuffix!28 (List!1524 List!1524) Bool)

(assert (=> b!89641 (isSuffix!28 lt!22357 (++!189 lt!22351 lt!22357))))

(declare-fun lt!22345 () Unit!972)

(assert (=> b!89641 (= lt!22345 lt!22370)))

(declare-fun d!19188 () Bool)

(assert (=> d!19188 e!49974))

(declare-fun res!45058 () Bool)

(assert (=> d!19188 (=> (not res!45058) (not e!49974))))

(assert (=> d!19188 (= res!45058 (= (list!560 (_1!1007 lt!22342)) (list!560 (_1!1007 (lexRec!33 thiss!19403 rules!2471 (seqFromList!172 input!2238))))))))

(assert (=> d!19188 (= lt!22342 e!49976)))

(declare-fun c!22275 () Bool)

(assert (=> d!19188 (= c!22275 (is-Some!145 lt!22367))))

(declare-fun maxPrefixZipperSequenceV2!28 (LexerInterface!224 List!1527 BalanceConc!936 BalanceConc!936) Option!146)

(assert (=> d!19188 (= lt!22367 (maxPrefixZipperSequenceV2!28 thiss!19403 rules!2471 (seqFromList!172 input!2238) (seqFromList!172 input!2238)))))

(declare-fun lt!22343 () Unit!972)

(declare-fun lt!22363 () Unit!972)

(assert (=> d!19188 (= lt!22343 lt!22363)))

(declare-fun lt!22362 () List!1524)

(declare-fun lt!22350 () List!1524)

(assert (=> d!19188 (isSuffix!28 lt!22362 (++!189 lt!22350 lt!22362))))

(assert (=> d!19188 (= lt!22363 (lemmaConcatTwoListThenFSndIsSuffix!28 lt!22350 lt!22362))))

(assert (=> d!19188 (= lt!22362 (list!559 (seqFromList!172 input!2238)))))

(assert (=> d!19188 (= lt!22350 (list!559 (BalanceConc!937 Empty!466)))))

(assert (=> d!19188 (= (lexTailRecV2!53 thiss!19403 rules!2471 (seqFromList!172 input!2238) (BalanceConc!937 Empty!466) (seqFromList!172 input!2238) (BalanceConc!939 Empty!467)) lt!22342)))

(declare-fun b!89644 () Bool)

(assert (=> b!89644 (= e!49977 (tuple2!1601 (BalanceConc!939 Empty!467) lt!22339))))

(declare-fun b!89645 () Bool)

(declare-fun lt!22341 () tuple2!1600)

(assert (=> b!89645 (= lt!22341 (lexRec!33 thiss!19403 rules!2471 (_2!1012 (v!12888 lt!22366))))))

(assert (=> b!89645 (= e!49975 (tuple2!1601 (prepend!100 (_1!1007 lt!22341) (_1!1012 (v!12888 lt!22366))) (_2!1007 lt!22341)))))

(assert (= (and d!19188 c!22275) b!89641))

(assert (= (and d!19188 (not c!22275)) b!89643))

(assert (= (and b!89641 c!22274) b!89645))

(assert (= (and b!89641 (not c!22274)) b!89639))

(assert (= (and b!89641 c!22273) b!89642))

(assert (= (and b!89641 (not c!22273)) b!89644))

(assert (= (and d!19188 res!45058) b!89640))

(declare-fun m!70164 () Bool)

(assert (=> b!89641 m!70164))

(declare-fun m!70166 () Bool)

(assert (=> b!89641 m!70166))

(declare-fun m!70168 () Bool)

(assert (=> b!89641 m!70168))

(declare-fun m!70170 () Bool)

(assert (=> b!89641 m!70170))

(declare-fun m!70172 () Bool)

(assert (=> b!89641 m!70172))

(declare-fun m!70174 () Bool)

(assert (=> b!89641 m!70174))

(declare-fun m!70176 () Bool)

(assert (=> b!89641 m!70176))

(assert (=> b!89641 m!69924))

(declare-fun m!70178 () Bool)

(assert (=> b!89641 m!70178))

(declare-fun m!70180 () Bool)

(assert (=> b!89641 m!70180))

(declare-fun m!70182 () Bool)

(assert (=> b!89641 m!70182))

(declare-fun m!70184 () Bool)

(assert (=> b!89641 m!70184))

(declare-fun m!70186 () Bool)

(assert (=> b!89641 m!70186))

(declare-fun m!70188 () Bool)

(assert (=> b!89641 m!70188))

(assert (=> b!89641 m!69924))

(declare-fun m!70190 () Bool)

(assert (=> b!89641 m!70190))

(declare-fun m!70192 () Bool)

(assert (=> b!89641 m!70192))

(declare-fun m!70194 () Bool)

(assert (=> b!89641 m!70194))

(declare-fun m!70196 () Bool)

(assert (=> b!89641 m!70196))

(declare-fun m!70198 () Bool)

(assert (=> b!89641 m!70198))

(assert (=> b!89641 m!70166))

(declare-fun m!70200 () Bool)

(assert (=> b!89641 m!70200))

(declare-fun m!70202 () Bool)

(assert (=> b!89641 m!70202))

(assert (=> b!89641 m!70190))

(declare-fun m!70204 () Bool)

(assert (=> b!89641 m!70204))

(declare-fun m!70206 () Bool)

(assert (=> b!89641 m!70206))

(declare-fun m!70208 () Bool)

(assert (=> b!89641 m!70208))

(assert (=> b!89641 m!70170))

(declare-fun m!70210 () Bool)

(assert (=> b!89641 m!70210))

(declare-fun m!70212 () Bool)

(assert (=> b!89641 m!70212))

(assert (=> b!89641 m!69924))

(declare-fun m!70214 () Bool)

(assert (=> b!89641 m!70214))

(declare-fun m!70216 () Bool)

(assert (=> b!89641 m!70216))

(assert (=> b!89641 m!70208))

(declare-fun m!70218 () Bool)

(assert (=> b!89641 m!70218))

(assert (=> b!89641 m!70182))

(assert (=> b!89641 m!70194))

(assert (=> b!89641 m!70190))

(declare-fun m!70220 () Bool)

(assert (=> b!89641 m!70220))

(assert (=> b!89641 m!70220))

(declare-fun m!70222 () Bool)

(assert (=> b!89641 m!70222))

(assert (=> b!89641 m!70180))

(assert (=> b!89641 m!70212))

(declare-fun m!70224 () Bool)

(assert (=> b!89641 m!70224))

(declare-fun m!70226 () Bool)

(assert (=> b!89641 m!70226))

(assert (=> b!89641 m!70202))

(assert (=> b!89641 m!70174))

(declare-fun m!70228 () Bool)

(assert (=> b!89641 m!70228))

(assert (=> b!89641 m!70202))

(assert (=> b!89641 m!70224))

(declare-fun m!70230 () Bool)

(assert (=> b!89642 m!70230))

(declare-fun m!70232 () Bool)

(assert (=> b!89642 m!70232))

(declare-fun m!70234 () Bool)

(assert (=> b!89645 m!70234))

(declare-fun m!70236 () Bool)

(assert (=> b!89645 m!70236))

(declare-fun m!70238 () Bool)

(assert (=> d!19188 m!70238))

(declare-fun m!70240 () Bool)

(assert (=> d!19188 m!70240))

(assert (=> d!19188 m!69924))

(assert (=> d!19188 m!69924))

(declare-fun m!70242 () Bool)

(assert (=> d!19188 m!70242))

(declare-fun m!70244 () Bool)

(assert (=> d!19188 m!70244))

(declare-fun m!70246 () Bool)

(assert (=> d!19188 m!70246))

(assert (=> d!19188 m!70240))

(declare-fun m!70248 () Bool)

(assert (=> d!19188 m!70248))

(assert (=> d!19188 m!69924))

(assert (=> d!19188 m!70024))

(assert (=> d!19188 m!69924))

(assert (=> d!19188 m!70214))

(assert (=> d!19188 m!70212))

(declare-fun m!70250 () Bool)

(assert (=> b!89640 m!70250))

(assert (=> b!89640 m!69924))

(assert (=> b!89640 m!70214))

(declare-fun m!70252 () Bool)

(assert (=> b!89640 m!70252))

(assert (=> d!19136 d!19188))

(declare-fun d!19204 () Bool)

(assert (=> d!19204 (= (list!560 (_1!1007 lt!22239)) (list!564 (c!22226 (_1!1007 lt!22239))))))

(declare-fun bs!9070 () Bool)

(assert (= bs!9070 d!19204))

(declare-fun m!70254 () Bool)

(assert (=> bs!9070 m!70254))

(assert (=> b!89471 d!19204))

(assert (=> b!89471 d!19170))

(assert (=> b!89471 d!19172))

(declare-fun d!19206 () Bool)

(declare-fun e!49980 () Bool)

(assert (=> d!19206 e!49980))

(declare-fun res!45061 () Bool)

(assert (=> d!19206 (=> (not res!45061) (not e!49980))))

(declare-fun lt!22375 () BalanceConc!936)

(assert (=> d!19206 (= res!45061 (= (list!559 lt!22375) input!2238))))

(declare-fun fromList!40 (List!1524) Conc!466)

(assert (=> d!19206 (= lt!22375 (BalanceConc!937 (fromList!40 input!2238)))))

(assert (=> d!19206 (= (fromListB!68 input!2238) lt!22375)))

(declare-fun b!89648 () Bool)

(declare-fun isBalanced!105 (Conc!466) Bool)

(assert (=> b!89648 (= e!49980 (isBalanced!105 (fromList!40 input!2238)))))

(assert (= (and d!19206 res!45061) b!89648))

(declare-fun m!70256 () Bool)

(assert (=> d!19206 m!70256))

(declare-fun m!70258 () Bool)

(assert (=> d!19206 m!70258))

(assert (=> b!89648 m!70258))

(assert (=> b!89648 m!70258))

(declare-fun m!70260 () Bool)

(assert (=> b!89648 m!70260))

(assert (=> d!19148 d!19206))

(declare-fun d!19208 () Bool)

(assert (=> d!19208 true))

(declare-fun lambda!1616 () Int)

(declare-fun order!617 () Int)

(declare-fun order!619 () Int)

(declare-fun dynLambda!395 (Int Int) Int)

(declare-fun dynLambda!396 (Int Int) Int)

(assert (=> d!19208 (< (dynLambda!395 order!617 (toChars!722 (transformation!332 (h!6918 rules!2471)))) (dynLambda!396 order!619 lambda!1616))))

(assert (=> d!19208 true))

(assert (=> d!19208 (< (dynLambda!393 order!605 (toValue!863 (transformation!332 (h!6918 rules!2471)))) (dynLambda!396 order!619 lambda!1616))))

(declare-fun Forall!49 (Int) Bool)

(assert (=> d!19208 (= (semiInverseModEq!68 (toChars!722 (transformation!332 (h!6918 rules!2471))) (toValue!863 (transformation!332 (h!6918 rules!2471)))) (Forall!49 lambda!1616))))

(declare-fun bs!9071 () Bool)

(assert (= bs!9071 d!19208))

(declare-fun m!70262 () Bool)

(assert (=> bs!9071 m!70262))

(assert (=> d!19154 d!19208))

(declare-fun d!19210 () Bool)

(assert (=> d!19210 (= (isEmpty!587 (list!559 (_2!1007 lt!22211))) (is-Nil!1518 (list!559 (_2!1007 lt!22211))))))

(assert (=> d!19134 d!19210))

(assert (=> d!19134 d!19132))

(declare-fun d!19212 () Bool)

(declare-fun lt!22399 () Bool)

(assert (=> d!19212 (= lt!22399 (isEmpty!587 (list!563 (c!22224 (_2!1007 lt!22211)))))))

(declare-fun size!1324 (Conc!466) Int)

(assert (=> d!19212 (= lt!22399 (= (size!1324 (c!22224 (_2!1007 lt!22211))) 0))))

(assert (=> d!19212 (= (isEmpty!588 (c!22224 (_2!1007 lt!22211))) lt!22399)))

(declare-fun bs!9072 () Bool)

(assert (= bs!9072 d!19212))

(assert (=> bs!9072 m!69996))

(assert (=> bs!9072 m!69996))

(declare-fun m!70298 () Bool)

(assert (=> bs!9072 m!70298))

(declare-fun m!70300 () Bool)

(assert (=> bs!9072 m!70300))

(assert (=> d!19134 d!19212))

(declare-fun d!19214 () Bool)

(declare-fun c!22282 () Bool)

(assert (=> d!19214 (= c!22282 (is-Nil!1518 lt!22221))))

(declare-fun e!49989 () (Set C!1722))

(assert (=> d!19214 (= (content!97 lt!22221) e!49989)))

(declare-fun b!89666 () Bool)

(assert (=> b!89666 (= e!49989 (as set.empty (Set C!1722)))))

(declare-fun b!89667 () Bool)

(assert (=> b!89667 (= e!49989 (set.union (set.insert (h!6915 lt!22221) (as set.empty (Set C!1722))) (content!97 (t!20769 lt!22221))))))

(assert (= (and d!19214 c!22282) b!89666))

(assert (= (and d!19214 (not c!22282)) b!89667))

(declare-fun m!70302 () Bool)

(assert (=> b!89667 m!70302))

(declare-fun m!70304 () Bool)

(assert (=> b!89667 m!70304))

(assert (=> d!19118 d!19214))

(declare-fun d!19218 () Bool)

(declare-fun c!22284 () Bool)

(assert (=> d!19218 (= c!22284 (is-Nil!1518 (list!559 (print!63 thiss!19403 (_1!1007 lt!22211)))))))

(declare-fun e!49990 () (Set C!1722))

(assert (=> d!19218 (= (content!97 (list!559 (print!63 thiss!19403 (_1!1007 lt!22211)))) e!49990)))

(declare-fun b!89668 () Bool)

(assert (=> b!89668 (= e!49990 (as set.empty (Set C!1722)))))

(declare-fun b!89669 () Bool)

(assert (=> b!89669 (= e!49990 (set.union (set.insert (h!6915 (list!559 (print!63 thiss!19403 (_1!1007 lt!22211)))) (as set.empty (Set C!1722))) (content!97 (t!20769 (list!559 (print!63 thiss!19403 (_1!1007 lt!22211)))))))))

(assert (= (and d!19218 c!22284) b!89668))

(assert (= (and d!19218 (not c!22284)) b!89669))

(declare-fun m!70306 () Bool)

(assert (=> b!89669 m!70306))

(assert (=> b!89669 m!70086))

(assert (=> d!19118 d!19218))

(declare-fun d!19220 () Bool)

(declare-fun c!22285 () Bool)

(assert (=> d!19220 (= c!22285 (is-Nil!1518 (list!559 (_2!1007 lt!22211))))))

(declare-fun e!49991 () (Set C!1722))

(assert (=> d!19220 (= (content!97 (list!559 (_2!1007 lt!22211))) e!49991)))

(declare-fun b!89670 () Bool)

(assert (=> b!89670 (= e!49991 (as set.empty (Set C!1722)))))

(declare-fun b!89671 () Bool)

(assert (=> b!89671 (= e!49991 (set.union (set.insert (h!6915 (list!559 (_2!1007 lt!22211))) (as set.empty (Set C!1722))) (content!97 (t!20769 (list!559 (_2!1007 lt!22211))))))))

(assert (= (and d!19220 c!22285) b!89670))

(assert (= (and d!19220 (not c!22285)) b!89671))

(declare-fun m!70308 () Bool)

(assert (=> b!89671 m!70308))

(declare-fun m!70310 () Bool)

(assert (=> b!89671 m!70310))

(assert (=> d!19118 d!19220))

(declare-fun d!19222 () Bool)

(assert (=> d!19222 (= (inv!1874 (tag!510 (h!6918 (t!20772 rules!2471)))) (= (mod (str.len (value!12333 (tag!510 (h!6918 (t!20772 rules!2471))))) 2) 0))))

(assert (=> b!89494 d!19222))

(declare-fun d!19224 () Bool)

(declare-fun res!45067 () Bool)

(declare-fun e!49994 () Bool)

(assert (=> d!19224 (=> (not res!45067) (not e!49994))))

(assert (=> d!19224 (= res!45067 (semiInverseModEq!68 (toChars!722 (transformation!332 (h!6918 (t!20772 rules!2471)))) (toValue!863 (transformation!332 (h!6918 (t!20772 rules!2471))))))))

(assert (=> d!19224 (= (inv!1877 (transformation!332 (h!6918 (t!20772 rules!2471)))) e!49994)))

(declare-fun b!89674 () Bool)

(assert (=> b!89674 (= e!49994 (equivClasses!64 (toChars!722 (transformation!332 (h!6918 (t!20772 rules!2471)))) (toValue!863 (transformation!332 (h!6918 (t!20772 rules!2471))))))))

(assert (= (and d!19224 res!45067) b!89674))

(declare-fun m!70312 () Bool)

(assert (=> d!19224 m!70312))

(declare-fun m!70314 () Bool)

(assert (=> b!89674 m!70314))

(assert (=> b!89494 d!19224))

(declare-fun b!89686 () Bool)

(declare-fun e!50001 () List!1526)

(declare-fun list!567 (IArray!935) List!1526)

(assert (=> b!89686 (= e!50001 (list!567 (xs!3050 (c!22226 (_1!1007 lt!22211)))))))

(declare-fun b!89684 () Bool)

(declare-fun e!50000 () List!1526)

(assert (=> b!89684 (= e!50000 Nil!1520)))

(declare-fun d!19226 () Bool)

(declare-fun c!22290 () Bool)

(assert (=> d!19226 (= c!22290 (is-Empty!467 (c!22226 (_1!1007 lt!22211))))))

(assert (=> d!19226 (= (list!564 (c!22226 (_1!1007 lt!22211))) e!50000)))

(declare-fun b!89687 () Bool)

(assert (=> b!89687 (= e!50001 (++!191 (list!564 (left!1154 (c!22226 (_1!1007 lt!22211)))) (list!564 (right!1484 (c!22226 (_1!1007 lt!22211))))))))

(declare-fun b!89685 () Bool)

(assert (=> b!89685 (= e!50000 e!50001)))

(declare-fun c!22291 () Bool)

(assert (=> b!89685 (= c!22291 (is-Leaf!769 (c!22226 (_1!1007 lt!22211))))))

(assert (= (and d!19226 c!22290) b!89684))

(assert (= (and d!19226 (not c!22290)) b!89685))

(assert (= (and b!89685 c!22291) b!89686))

(assert (= (and b!89685 (not c!22291)) b!89687))

(declare-fun m!70326 () Bool)

(assert (=> b!89686 m!70326))

(declare-fun m!70328 () Bool)

(assert (=> b!89687 m!70328))

(declare-fun m!70330 () Bool)

(assert (=> b!89687 m!70330))

(assert (=> b!89687 m!70328))

(assert (=> b!89687 m!70330))

(declare-fun m!70332 () Bool)

(assert (=> b!89687 m!70332))

(assert (=> d!19150 d!19226))

(declare-fun d!19232 () Bool)

(declare-fun lt!22408 () Int)

(assert (=> d!19232 (= lt!22408 (size!1316 (list!559 (_2!1007 lt!22239))))))

(assert (=> d!19232 (= lt!22408 (size!1324 (c!22224 (_2!1007 lt!22239))))))

(assert (=> d!19232 (= (size!1317 (_2!1007 lt!22239)) lt!22408)))

(declare-fun bs!9074 () Bool)

(assert (= bs!9074 d!19232))

(assert (=> bs!9074 m!70022))

(assert (=> bs!9074 m!70022))

(declare-fun m!70334 () Bool)

(assert (=> bs!9074 m!70334))

(declare-fun m!70336 () Bool)

(assert (=> bs!9074 m!70336))

(assert (=> b!89469 d!19232))

(declare-fun d!19234 () Bool)

(declare-fun lt!22409 () Int)

(assert (=> d!19234 (= lt!22409 (size!1316 (list!559 (seqFromList!172 input!2238))))))

(assert (=> d!19234 (= lt!22409 (size!1324 (c!22224 (seqFromList!172 input!2238))))))

(assert (=> d!19234 (= (size!1317 (seqFromList!172 input!2238)) lt!22409)))

(declare-fun bs!9075 () Bool)

(assert (= bs!9075 d!19234))

(assert (=> bs!9075 m!69924))

(assert (=> bs!9075 m!70024))

(assert (=> bs!9075 m!70024))

(assert (=> bs!9075 m!70096))

(declare-fun m!70338 () Bool)

(assert (=> bs!9075 m!70338))

(assert (=> b!89469 d!19234))

(declare-fun d!19236 () Bool)

(declare-fun c!22296 () Bool)

(assert (=> d!19236 (= c!22296 (is-Empty!466 (c!22224 (print!63 thiss!19403 (_1!1007 lt!22211)))))))

(declare-fun e!50006 () List!1524)

(assert (=> d!19236 (= (list!563 (c!22224 (print!63 thiss!19403 (_1!1007 lt!22211)))) e!50006)))

(declare-fun b!89697 () Bool)

(declare-fun e!50007 () List!1524)

(assert (=> b!89697 (= e!50006 e!50007)))

(declare-fun c!22297 () Bool)

(assert (=> b!89697 (= c!22297 (is-Leaf!768 (c!22224 (print!63 thiss!19403 (_1!1007 lt!22211)))))))

(declare-fun b!89698 () Bool)

(declare-fun list!568 (IArray!933) List!1524)

(assert (=> b!89698 (= e!50007 (list!568 (xs!3049 (c!22224 (print!63 thiss!19403 (_1!1007 lt!22211))))))))

(declare-fun b!89696 () Bool)

(assert (=> b!89696 (= e!50006 Nil!1518)))

(declare-fun b!89699 () Bool)

(assert (=> b!89699 (= e!50007 (++!189 (list!563 (left!1153 (c!22224 (print!63 thiss!19403 (_1!1007 lt!22211))))) (list!563 (right!1483 (c!22224 (print!63 thiss!19403 (_1!1007 lt!22211)))))))))

(assert (= (and d!19236 c!22296) b!89696))

(assert (= (and d!19236 (not c!22296)) b!89697))

(assert (= (and b!89697 c!22297) b!89698))

(assert (= (and b!89697 (not c!22297)) b!89699))

(declare-fun m!70340 () Bool)

(assert (=> b!89698 m!70340))

(declare-fun m!70342 () Bool)

(assert (=> b!89699 m!70342))

(declare-fun m!70344 () Bool)

(assert (=> b!89699 m!70344))

(assert (=> b!89699 m!70342))

(assert (=> b!89699 m!70344))

(declare-fun m!70346 () Bool)

(assert (=> b!89699 m!70346))

(assert (=> d!19122 d!19236))

(declare-fun d!19238 () Bool)

(assert (=> d!19238 (= (list!559 lt!22227) (list!563 (c!22224 lt!22227)))))

(declare-fun bs!9076 () Bool)

(assert (= bs!9076 d!19238))

(declare-fun m!70348 () Bool)

(assert (=> bs!9076 m!70348))

(assert (=> d!19124 d!19238))

(declare-fun d!19240 () Bool)

(declare-fun c!22300 () Bool)

(assert (=> d!19240 (= c!22300 (is-Cons!1520 (list!560 (_1!1007 lt!22211))))))

(declare-fun e!50010 () List!1524)

(assert (=> d!19240 (= (printList!28 thiss!19403 (list!560 (_1!1007 lt!22211))) e!50010)))

(declare-fun b!89704 () Bool)

(assert (=> b!89704 (= e!50010 (++!189 (list!559 (charsOf!67 (h!6917 (list!560 (_1!1007 lt!22211))))) (printList!28 thiss!19403 (t!20771 (list!560 (_1!1007 lt!22211))))))))

(declare-fun b!89705 () Bool)

(assert (=> b!89705 (= e!50010 Nil!1518)))

(assert (= (and d!19240 c!22300) b!89704))

(assert (= (and d!19240 (not c!22300)) b!89705))

(declare-fun m!70350 () Bool)

(assert (=> b!89704 m!70350))

(assert (=> b!89704 m!70350))

(declare-fun m!70352 () Bool)

(assert (=> b!89704 m!70352))

(declare-fun m!70354 () Bool)

(assert (=> b!89704 m!70354))

(assert (=> b!89704 m!70352))

(assert (=> b!89704 m!70354))

(declare-fun m!70356 () Bool)

(assert (=> b!89704 m!70356))

(assert (=> d!19124 d!19240))

(assert (=> d!19124 d!19150))

(declare-fun d!19242 () Bool)

(declare-fun lt!22427 () BalanceConc!936)

(declare-fun printListTailRec!17 (LexerInterface!224 List!1526 List!1524) List!1524)

(declare-fun dropList!25 (BalanceConc!938 Int) List!1526)

(assert (=> d!19242 (= (list!559 lt!22427) (printListTailRec!17 thiss!19403 (dropList!25 (_1!1007 lt!22211) 0) (list!559 (BalanceConc!937 Empty!466))))))

(declare-fun e!50016 () BalanceConc!936)

(assert (=> d!19242 (= lt!22427 e!50016)))

(declare-fun c!22303 () Bool)

(assert (=> d!19242 (= c!22303 (>= 0 (size!1318 (_1!1007 lt!22211))))))

(declare-fun e!50015 () Bool)

(assert (=> d!19242 e!50015))

(declare-fun res!45071 () Bool)

(assert (=> d!19242 (=> (not res!45071) (not e!50015))))

(assert (=> d!19242 (= res!45071 (>= 0 0))))

(assert (=> d!19242 (= (printTailRec!28 thiss!19403 (_1!1007 lt!22211) 0 (BalanceConc!937 Empty!466)) lt!22427)))

(declare-fun b!89712 () Bool)

(assert (=> b!89712 (= e!50015 (<= 0 (size!1318 (_1!1007 lt!22211))))))

(declare-fun b!89713 () Bool)

(assert (=> b!89713 (= e!50016 (BalanceConc!937 Empty!466))))

(declare-fun b!89714 () Bool)

(declare-fun apply!226 (BalanceConc!938 Int) Token!424)

(assert (=> b!89714 (= e!50016 (printTailRec!28 thiss!19403 (_1!1007 lt!22211) (+ 0 1) (++!192 (BalanceConc!937 Empty!466) (charsOf!67 (apply!226 (_1!1007 lt!22211) 0)))))))

(declare-fun lt!22425 () List!1526)

(assert (=> b!89714 (= lt!22425 (list!560 (_1!1007 lt!22211)))))

(declare-fun lt!22426 () Unit!972)

(declare-fun lemmaDropApply!81 (List!1526 Int) Unit!972)

(assert (=> b!89714 (= lt!22426 (lemmaDropApply!81 lt!22425 0))))

(declare-fun head!437 (List!1526) Token!424)

(declare-fun drop!85 (List!1526 Int) List!1526)

(declare-fun apply!227 (List!1526 Int) Token!424)

(assert (=> b!89714 (= (head!437 (drop!85 lt!22425 0)) (apply!227 lt!22425 0))))

(declare-fun lt!22429 () Unit!972)

(assert (=> b!89714 (= lt!22429 lt!22426)))

(declare-fun lt!22430 () List!1526)

(assert (=> b!89714 (= lt!22430 (list!560 (_1!1007 lt!22211)))))

(declare-fun lt!22428 () Unit!972)

(declare-fun lemmaDropTail!73 (List!1526 Int) Unit!972)

(assert (=> b!89714 (= lt!22428 (lemmaDropTail!73 lt!22430 0))))

(declare-fun tail!149 (List!1526) List!1526)

(assert (=> b!89714 (= (tail!149 (drop!85 lt!22430 0)) (drop!85 lt!22430 (+ 0 1)))))

(declare-fun lt!22424 () Unit!972)

(assert (=> b!89714 (= lt!22424 lt!22428)))

(assert (= (and d!19242 res!45071) b!89712))

(assert (= (and d!19242 c!22303) b!89713))

(assert (= (and d!19242 (not c!22303)) b!89714))

(declare-fun m!70358 () Bool)

(assert (=> d!19242 m!70358))

(assert (=> d!19242 m!70212))

(declare-fun m!70360 () Bool)

(assert (=> d!19242 m!70360))

(assert (=> d!19242 m!70358))

(assert (=> d!19242 m!70212))

(declare-fun m!70362 () Bool)

(assert (=> d!19242 m!70362))

(declare-fun m!70364 () Bool)

(assert (=> d!19242 m!70364))

(assert (=> b!89712 m!70360))

(declare-fun m!70366 () Bool)

(assert (=> b!89714 m!70366))

(assert (=> b!89714 m!70366))

(declare-fun m!70368 () Bool)

(assert (=> b!89714 m!70368))

(declare-fun m!70370 () Bool)

(assert (=> b!89714 m!70370))

(declare-fun m!70372 () Bool)

(assert (=> b!89714 m!70372))

(declare-fun m!70374 () Bool)

(assert (=> b!89714 m!70374))

(declare-fun m!70376 () Bool)

(assert (=> b!89714 m!70376))

(declare-fun m!70378 () Bool)

(assert (=> b!89714 m!70378))

(declare-fun m!70380 () Bool)

(assert (=> b!89714 m!70380))

(declare-fun m!70382 () Bool)

(assert (=> b!89714 m!70382))

(declare-fun m!70384 () Bool)

(assert (=> b!89714 m!70384))

(declare-fun m!70386 () Bool)

(assert (=> b!89714 m!70386))

(declare-fun m!70388 () Bool)

(assert (=> b!89714 m!70388))

(assert (=> b!89714 m!69906))

(assert (=> b!89714 m!70386))

(assert (=> b!89714 m!70378))

(assert (=> b!89714 m!70384))

(assert (=> b!89714 m!70370))

(assert (=> d!19124 d!19242))

(declare-fun d!19244 () Bool)

(declare-fun c!22304 () Bool)

(assert (=> d!19244 (= c!22304 (is-Empty!466 (c!22224 (_2!1007 lt!22211))))))

(declare-fun e!50017 () List!1524)

(assert (=> d!19244 (= (list!563 (c!22224 (_2!1007 lt!22211))) e!50017)))

(declare-fun b!89716 () Bool)

(declare-fun e!50018 () List!1524)

(assert (=> b!89716 (= e!50017 e!50018)))

(declare-fun c!22305 () Bool)

(assert (=> b!89716 (= c!22305 (is-Leaf!768 (c!22224 (_2!1007 lt!22211))))))

(declare-fun b!89717 () Bool)

(assert (=> b!89717 (= e!50018 (list!568 (xs!3049 (c!22224 (_2!1007 lt!22211)))))))

(declare-fun b!89715 () Bool)

(assert (=> b!89715 (= e!50017 Nil!1518)))

(declare-fun b!89718 () Bool)

(assert (=> b!89718 (= e!50018 (++!189 (list!563 (left!1153 (c!22224 (_2!1007 lt!22211)))) (list!563 (right!1483 (c!22224 (_2!1007 lt!22211))))))))

(assert (= (and d!19244 c!22304) b!89715))

(assert (= (and d!19244 (not c!22304)) b!89716))

(assert (= (and b!89716 c!22305) b!89717))

(assert (= (and b!89716 (not c!22305)) b!89718))

(declare-fun m!70390 () Bool)

(assert (=> b!89717 m!70390))

(declare-fun m!70392 () Bool)

(assert (=> b!89718 m!70392))

(declare-fun m!70394 () Bool)

(assert (=> b!89718 m!70394))

(assert (=> b!89718 m!70392))

(assert (=> b!89718 m!70394))

(declare-fun m!70396 () Bool)

(assert (=> b!89718 m!70396))

(assert (=> d!19132 d!19244))

(declare-fun d!19246 () Bool)

(declare-fun res!45076 () Bool)

(declare-fun e!50023 () Bool)

(assert (=> d!19246 (=> res!45076 e!50023)))

(assert (=> d!19246 (= res!45076 (is-Nil!1521 rules!2471))))

(assert (=> d!19246 (= (noDuplicateTag!76 thiss!19403 rules!2471 Nil!1526) e!50023)))

(declare-fun b!89723 () Bool)

(declare-fun e!50024 () Bool)

(assert (=> b!89723 (= e!50023 e!50024)))

(declare-fun res!45077 () Bool)

(assert (=> b!89723 (=> (not res!45077) (not e!50024))))

(declare-fun contains!234 (List!1532 String!2003) Bool)

(assert (=> b!89723 (= res!45077 (not (contains!234 Nil!1526 (tag!510 (h!6918 rules!2471)))))))

(declare-fun b!89724 () Bool)

(assert (=> b!89724 (= e!50024 (noDuplicateTag!76 thiss!19403 (t!20772 rules!2471) (Cons!1526 (tag!510 (h!6918 rules!2471)) Nil!1526)))))

(assert (= (and d!19246 (not res!45076)) b!89723))

(assert (= (and b!89723 res!45077) b!89724))

(declare-fun m!70398 () Bool)

(assert (=> b!89723 m!70398))

(declare-fun m!70400 () Bool)

(assert (=> b!89724 m!70400))

(assert (=> b!89479 d!19246))

(declare-fun d!19248 () Bool)

(declare-fun lt!22433 () Int)

(assert (=> d!19248 (>= lt!22433 0)))

(declare-fun e!50027 () Int)

(assert (=> d!19248 (= lt!22433 e!50027)))

(declare-fun c!22308 () Bool)

(assert (=> d!19248 (= c!22308 (is-Nil!1518 lt!22221))))

(assert (=> d!19248 (= (size!1316 lt!22221) lt!22433)))

(declare-fun b!89729 () Bool)

(assert (=> b!89729 (= e!50027 0)))

(declare-fun b!89730 () Bool)

(assert (=> b!89730 (= e!50027 (+ 1 (size!1316 (t!20769 lt!22221))))))

(assert (= (and d!19248 c!22308) b!89729))

(assert (= (and d!19248 (not c!22308)) b!89730))

(declare-fun m!70402 () Bool)

(assert (=> b!89730 m!70402))

(assert (=> b!89439 d!19248))

(declare-fun d!19250 () Bool)

(declare-fun lt!22434 () Int)

(assert (=> d!19250 (>= lt!22434 0)))

(declare-fun e!50028 () Int)

(assert (=> d!19250 (= lt!22434 e!50028)))

(declare-fun c!22309 () Bool)

(assert (=> d!19250 (= c!22309 (is-Nil!1518 (list!559 (print!63 thiss!19403 (_1!1007 lt!22211)))))))

(assert (=> d!19250 (= (size!1316 (list!559 (print!63 thiss!19403 (_1!1007 lt!22211)))) lt!22434)))

(declare-fun b!89731 () Bool)

(assert (=> b!89731 (= e!50028 0)))

(declare-fun b!89732 () Bool)

(assert (=> b!89732 (= e!50028 (+ 1 (size!1316 (t!20769 (list!559 (print!63 thiss!19403 (_1!1007 lt!22211)))))))))

(assert (= (and d!19250 c!22309) b!89731))

(assert (= (and d!19250 (not c!22309)) b!89732))

(assert (=> b!89732 m!70080))

(assert (=> b!89439 d!19250))

(declare-fun d!19252 () Bool)

(declare-fun lt!22435 () Int)

(assert (=> d!19252 (>= lt!22435 0)))

(declare-fun e!50029 () Int)

(assert (=> d!19252 (= lt!22435 e!50029)))

(declare-fun c!22310 () Bool)

(assert (=> d!19252 (= c!22310 (is-Nil!1518 (list!559 (_2!1007 lt!22211))))))

(assert (=> d!19252 (= (size!1316 (list!559 (_2!1007 lt!22211))) lt!22435)))

(declare-fun b!89733 () Bool)

(assert (=> b!89733 (= e!50029 0)))

(declare-fun b!89734 () Bool)

(assert (=> b!89734 (= e!50029 (+ 1 (size!1316 (t!20769 (list!559 (_2!1007 lt!22211))))))))

(assert (= (and d!19252 c!22310) b!89733))

(assert (= (and d!19252 (not c!22310)) b!89734))

(declare-fun m!70404 () Bool)

(assert (=> b!89734 m!70404))

(assert (=> b!89439 d!19252))

(declare-fun b!89736 () Bool)

(declare-fun e!50030 () Bool)

(declare-fun tp!53478 () Bool)

(declare-fun tp!53480 () Bool)

(assert (=> b!89736 (= e!50030 (and tp!53478 tp!53480))))

(declare-fun b!89737 () Bool)

(declare-fun tp!53481 () Bool)

(assert (=> b!89737 (= e!50030 tp!53481)))

(declare-fun b!89738 () Bool)

(declare-fun tp!53479 () Bool)

(declare-fun tp!53477 () Bool)

(assert (=> b!89738 (= e!50030 (and tp!53479 tp!53477))))

(declare-fun b!89735 () Bool)

(assert (=> b!89735 (= e!50030 tp_is_empty!723)))

(assert (=> b!89508 (= tp!53446 e!50030)))

(assert (= (and b!89508 (is-ElementMatch!400 (reg!729 (regex!332 (h!6918 rules!2471))))) b!89735))

(assert (= (and b!89508 (is-Concat!723 (reg!729 (regex!332 (h!6918 rules!2471))))) b!89736))

(assert (= (and b!89508 (is-Star!400 (reg!729 (regex!332 (h!6918 rules!2471))))) b!89737))

(assert (= (and b!89508 (is-Union!400 (reg!729 (regex!332 (h!6918 rules!2471))))) b!89738))

(declare-fun b!89739 () Bool)

(declare-fun e!50031 () Bool)

(declare-fun tp!53482 () Bool)

(assert (=> b!89739 (= e!50031 (and tp_is_empty!723 tp!53482))))

(assert (=> b!89484 (= tp!53419 e!50031)))

(assert (= (and b!89484 (is-Cons!1518 (t!20769 (t!20769 input!2238)))) b!89739))

(declare-fun b!89742 () Bool)

(declare-fun b_free!2773 () Bool)

(declare-fun b_next!2773 () Bool)

(assert (=> b!89742 (= b_free!2773 (not b_next!2773))))

(declare-fun tp!53483 () Bool)

(declare-fun b_and!4075 () Bool)

(assert (=> b!89742 (= tp!53483 b_and!4075)))

(declare-fun b_free!2775 () Bool)

(declare-fun b_next!2775 () Bool)

(assert (=> b!89742 (= b_free!2775 (not b_next!2775))))

(declare-fun tp!53486 () Bool)

(declare-fun b_and!4077 () Bool)

(assert (=> b!89742 (= tp!53486 b_and!4077)))

(declare-fun e!50034 () Bool)

(assert (=> b!89742 (= e!50034 (and tp!53483 tp!53486))))

(declare-fun b!89741 () Bool)

(declare-fun tp!53484 () Bool)

(declare-fun e!50032 () Bool)

(assert (=> b!89741 (= e!50032 (and tp!53484 (inv!1874 (tag!510 (h!6918 (t!20772 (t!20772 rules!2471))))) (inv!1877 (transformation!332 (h!6918 (t!20772 (t!20772 rules!2471))))) e!50034))))

(declare-fun b!89740 () Bool)

(declare-fun e!50035 () Bool)

(declare-fun tp!53485 () Bool)

(assert (=> b!89740 (= e!50035 (and e!50032 tp!53485))))

(assert (=> b!89493 (= tp!53430 e!50035)))

(assert (= b!89741 b!89742))

(assert (= b!89740 b!89741))

(assert (= (and b!89493 (is-Cons!1521 (t!20772 (t!20772 rules!2471)))) b!89740))

(declare-fun m!70406 () Bool)

(assert (=> b!89741 m!70406))

(declare-fun m!70408 () Bool)

(assert (=> b!89741 m!70408))

(declare-fun b!89744 () Bool)

(declare-fun e!50036 () Bool)

(declare-fun tp!53488 () Bool)

(declare-fun tp!53490 () Bool)

(assert (=> b!89744 (= e!50036 (and tp!53488 tp!53490))))

(declare-fun b!89745 () Bool)

(declare-fun tp!53491 () Bool)

(assert (=> b!89745 (= e!50036 tp!53491)))

(declare-fun b!89746 () Bool)

(declare-fun tp!53489 () Bool)

(declare-fun tp!53487 () Bool)

(assert (=> b!89746 (= e!50036 (and tp!53489 tp!53487))))

(declare-fun b!89743 () Bool)

(assert (=> b!89743 (= e!50036 tp_is_empty!723)))

(assert (=> b!89507 (= tp!53443 e!50036)))

(assert (= (and b!89507 (is-ElementMatch!400 (regOne!1312 (regex!332 (h!6918 rules!2471))))) b!89743))

(assert (= (and b!89507 (is-Concat!723 (regOne!1312 (regex!332 (h!6918 rules!2471))))) b!89744))

(assert (= (and b!89507 (is-Star!400 (regOne!1312 (regex!332 (h!6918 rules!2471))))) b!89745))

(assert (= (and b!89507 (is-Union!400 (regOne!1312 (regex!332 (h!6918 rules!2471))))) b!89746))

(declare-fun b!89748 () Bool)

(declare-fun e!50037 () Bool)

(declare-fun tp!53493 () Bool)

(declare-fun tp!53495 () Bool)

(assert (=> b!89748 (= e!50037 (and tp!53493 tp!53495))))

(declare-fun b!89749 () Bool)

(declare-fun tp!53496 () Bool)

(assert (=> b!89749 (= e!50037 tp!53496)))

(declare-fun b!89750 () Bool)

(declare-fun tp!53494 () Bool)

(declare-fun tp!53492 () Bool)

(assert (=> b!89750 (= e!50037 (and tp!53494 tp!53492))))

(declare-fun b!89747 () Bool)

(assert (=> b!89747 (= e!50037 tp_is_empty!723)))

(assert (=> b!89507 (= tp!53445 e!50037)))

(assert (= (and b!89507 (is-ElementMatch!400 (regTwo!1312 (regex!332 (h!6918 rules!2471))))) b!89747))

(assert (= (and b!89507 (is-Concat!723 (regTwo!1312 (regex!332 (h!6918 rules!2471))))) b!89748))

(assert (= (and b!89507 (is-Star!400 (regTwo!1312 (regex!332 (h!6918 rules!2471))))) b!89749))

(assert (= (and b!89507 (is-Union!400 (regTwo!1312 (regex!332 (h!6918 rules!2471))))) b!89750))

(declare-fun b!89752 () Bool)

(declare-fun e!50038 () Bool)

(declare-fun tp!53498 () Bool)

(declare-fun tp!53500 () Bool)

(assert (=> b!89752 (= e!50038 (and tp!53498 tp!53500))))

(declare-fun b!89753 () Bool)

(declare-fun tp!53501 () Bool)

(assert (=> b!89753 (= e!50038 tp!53501)))

(declare-fun b!89754 () Bool)

(declare-fun tp!53499 () Bool)

(declare-fun tp!53497 () Bool)

(assert (=> b!89754 (= e!50038 (and tp!53499 tp!53497))))

(declare-fun b!89751 () Bool)

(assert (=> b!89751 (= e!50038 tp_is_empty!723)))

(assert (=> b!89494 (= tp!53429 e!50038)))

(assert (= (and b!89494 (is-ElementMatch!400 (regex!332 (h!6918 (t!20772 rules!2471))))) b!89751))

(assert (= (and b!89494 (is-Concat!723 (regex!332 (h!6918 (t!20772 rules!2471))))) b!89752))

(assert (= (and b!89494 (is-Star!400 (regex!332 (h!6918 (t!20772 rules!2471))))) b!89753))

(assert (= (and b!89494 (is-Union!400 (regex!332 (h!6918 (t!20772 rules!2471))))) b!89754))

(declare-fun b!89756 () Bool)

(declare-fun e!50039 () Bool)

(declare-fun tp!53503 () Bool)

(declare-fun tp!53505 () Bool)

(assert (=> b!89756 (= e!50039 (and tp!53503 tp!53505))))

(declare-fun b!89757 () Bool)

(declare-fun tp!53506 () Bool)

(assert (=> b!89757 (= e!50039 tp!53506)))

(declare-fun b!89758 () Bool)

(declare-fun tp!53504 () Bool)

(declare-fun tp!53502 () Bool)

(assert (=> b!89758 (= e!50039 (and tp!53504 tp!53502))))

(declare-fun b!89755 () Bool)

(assert (=> b!89755 (= e!50039 tp_is_empty!723)))

(assert (=> b!89509 (= tp!53444 e!50039)))

(assert (= (and b!89509 (is-ElementMatch!400 (regOne!1313 (regex!332 (h!6918 rules!2471))))) b!89755))

(assert (= (and b!89509 (is-Concat!723 (regOne!1313 (regex!332 (h!6918 rules!2471))))) b!89756))

(assert (= (and b!89509 (is-Star!400 (regOne!1313 (regex!332 (h!6918 rules!2471))))) b!89757))

(assert (= (and b!89509 (is-Union!400 (regOne!1313 (regex!332 (h!6918 rules!2471))))) b!89758))

(declare-fun b!89760 () Bool)

(declare-fun e!50040 () Bool)

(declare-fun tp!53508 () Bool)

(declare-fun tp!53510 () Bool)

(assert (=> b!89760 (= e!50040 (and tp!53508 tp!53510))))

(declare-fun b!89761 () Bool)

(declare-fun tp!53511 () Bool)

(assert (=> b!89761 (= e!50040 tp!53511)))

(declare-fun b!89762 () Bool)

(declare-fun tp!53509 () Bool)

(declare-fun tp!53507 () Bool)

(assert (=> b!89762 (= e!50040 (and tp!53509 tp!53507))))

(declare-fun b!89759 () Bool)

(assert (=> b!89759 (= e!50040 tp_is_empty!723)))

(assert (=> b!89509 (= tp!53442 e!50040)))

(assert (= (and b!89509 (is-ElementMatch!400 (regTwo!1313 (regex!332 (h!6918 rules!2471))))) b!89759))

(assert (= (and b!89509 (is-Concat!723 (regTwo!1313 (regex!332 (h!6918 rules!2471))))) b!89760))

(assert (= (and b!89509 (is-Star!400 (regTwo!1313 (regex!332 (h!6918 rules!2471))))) b!89761))

(assert (= (and b!89509 (is-Union!400 (regTwo!1313 (regex!332 (h!6918 rules!2471))))) b!89762))

(push 1)

(assert (not b!89760))

(assert (not b!89648))

(assert (not d!19182))

(assert (not d!19208))

(assert (not b!89734))

(assert (not b!89641))

(assert b_and!4077)

(assert (not b!89669))

(assert (not b!89667))

(assert (not b!89640))

(assert (not b!89750))

(assert (not d!19174))

(assert (not b!89556))

(assert (not d!19188))

(assert (not b!89736))

(assert (not b!89738))

(assert (not b!89698))

(assert (not b!89723))

(assert (not b!89753))

(assert (not b!89749))

(assert (not b_next!2767))

(assert (not b!89741))

(assert (not b!89572))

(assert (not b!89744))

(assert (not d!19238))

(assert (not b!89704))

(assert (not b!89718))

(assert b_and!4069)

(assert (not b!89730))

(assert (not b!89573))

(assert (not b!89745))

(assert (not b!89758))

(assert (not d!19170))

(assert (not b!89752))

(assert (not b!89686))

(assert (not d!19166))

(assert (not d!19172))

(assert (not b!89762))

(assert (not b!89714))

(assert (not d!19224))

(assert (not b_next!2757))

(assert (not d!19186))

(assert (not b!89570))

(assert (not b!89756))

(assert (not d!19206))

(assert (not b!89748))

(assert (not b!89642))

(assert (not b!89645))

(assert b_and!4061)

(assert (not b!89724))

(assert (not b!89699))

(assert (not d!19242))

(assert tp_is_empty!723)

(assert (not b!89761))

(assert (not b!89732))

(assert (not b!89740))

(assert (not b_next!2775))

(assert (not b_next!2759))

(assert (not b!89717))

(assert (not b!89754))

(assert (not b!89557))

(assert (not b!89671))

(assert (not b!89712))

(assert (not d!19168))

(assert (not d!19204))

(assert b_and!4075)

(assert (not b_next!2765))

(assert (not d!19234))

(assert (not d!19232))

(assert b_and!4059)

(assert (not b!89674))

(assert (not d!19212))

(assert (not b!89746))

(assert (not b!89757))

(assert (not b!89687))

(assert b_and!4067)

(assert (not b!89739))

(assert (not b_next!2773))

(assert (not d!19184))

(assert (not b!89737))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4077)

(assert (not b_next!2767))

(assert b_and!4069)

(assert (not b_next!2757))

(assert b_and!4061)

(assert b_and!4059)

(assert (not b_next!2775))

(assert (not b_next!2759))

(assert b_and!4075)

(assert (not b_next!2765))

(assert b_and!4067)

(assert (not b_next!2773))

(check-sat)

(pop 1)

