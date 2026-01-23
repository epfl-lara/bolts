; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!407252 () Bool)

(assert start!407252)

(declare-fun b!4252595 () Bool)

(declare-fun b_free!126459 () Bool)

(declare-fun b_next!127163 () Bool)

(assert (=> b!4252595 (= b_free!126459 (not b_next!127163))))

(declare-fun tp!1304985 () Bool)

(declare-fun b_and!337213 () Bool)

(assert (=> b!4252595 (= tp!1304985 b_and!337213)))

(declare-fun b_free!126461 () Bool)

(declare-fun b_next!127165 () Bool)

(assert (=> b!4252595 (= b_free!126461 (not b_next!127165))))

(declare-fun tp!1304983 () Bool)

(declare-fun b_and!337215 () Bool)

(assert (=> b!4252595 (= tp!1304983 b_and!337215)))

(declare-fun b!4252598 () Bool)

(declare-fun b_free!126463 () Bool)

(declare-fun b_next!127167 () Bool)

(assert (=> b!4252598 (= b_free!126463 (not b_next!127167))))

(declare-fun tp!1304982 () Bool)

(declare-fun b_and!337217 () Bool)

(assert (=> b!4252598 (= tp!1304982 b_and!337217)))

(declare-fun b_free!126465 () Bool)

(declare-fun b_next!127169 () Bool)

(assert (=> b!4252598 (= b_free!126465 (not b_next!127169))))

(declare-fun tp!1304980 () Bool)

(declare-fun b_and!337219 () Bool)

(assert (=> b!4252598 (= tp!1304980 b_and!337219)))

(declare-fun b!4252585 () Bool)

(declare-fun e!2641373 () Bool)

(declare-fun e!2641367 () Bool)

(assert (=> b!4252585 (= e!2641373 e!2641367)))

(declare-fun res!1748186 () Bool)

(assert (=> b!4252585 (=> (not res!1748186) (not e!2641367))))

(declare-datatypes ((C!25966 0))(
  ( (C!25967 (val!15173 Int)) )
))
(declare-datatypes ((List!47251 0))(
  ( (Nil!47127) (Cons!47127 (h!52547 C!25966) (t!352634 List!47251)) )
))
(declare-fun lt!1509038 () List!47251)

(declare-fun shorterInput!62 () List!47251)

(declare-datatypes ((List!47252 0))(
  ( (Nil!47128) (Cons!47128 (h!52548 (_ BitVec 16)) (t!352635 List!47252)) )
))
(declare-datatypes ((TokenValue!8209 0))(
  ( (FloatLiteralValue!16418 (text!57908 List!47252)) (TokenValueExt!8208 (__x!28641 Int)) (Broken!41045 (value!247913 List!47252)) (Object!8332) (End!8209) (Def!8209) (Underscore!8209) (Match!8209) (Else!8209) (Error!8209) (Case!8209) (If!8209) (Extends!8209) (Abstract!8209) (Class!8209) (Val!8209) (DelimiterValue!16418 (del!8269 List!47252)) (KeywordValue!8215 (value!247914 List!47252)) (CommentValue!16418 (value!247915 List!47252)) (WhitespaceValue!16418 (value!247916 List!47252)) (IndentationValue!8209 (value!247917 List!47252)) (String!54976) (Int32!8209) (Broken!41046 (value!247918 List!47252)) (Boolean!8210) (Unit!66083) (OperatorValue!8212 (op!8269 List!47252)) (IdentifierValue!16418 (value!247919 List!47252)) (IdentifierValue!16419 (value!247920 List!47252)) (WhitespaceValue!16419 (value!247921 List!47252)) (True!16418) (False!16418) (Broken!41047 (value!247922 List!47252)) (Broken!41048 (value!247923 List!47252)) (True!16419) (RightBrace!8209) (RightBracket!8209) (Colon!8209) (Null!8209) (Comma!8209) (LeftBracket!8209) (False!16419) (LeftBrace!8209) (ImaginaryLiteralValue!8209 (text!57909 List!47252)) (StringLiteralValue!24627 (value!247924 List!47252)) (EOFValue!8209 (value!247925 List!47252)) (IdentValue!8209 (value!247926 List!47252)) (DelimiterValue!16419 (value!247927 List!47252)) (DedentValue!8209 (value!247928 List!47252)) (NewLineValue!8209 (value!247929 List!47252)) (IntegerValue!24627 (value!247930 (_ BitVec 32)) (text!57910 List!47252)) (IntegerValue!24628 (value!247931 Int) (text!57911 List!47252)) (Times!8209) (Or!8209) (Equal!8209) (Minus!8209) (Broken!41049 (value!247932 List!47252)) (And!8209) (Div!8209) (LessEqual!8209) (Mod!8209) (Concat!21093) (Not!8209) (Plus!8209) (SpaceValue!8209 (value!247933 List!47252)) (IntegerValue!24629 (value!247934 Int) (text!57912 List!47252)) (StringLiteralValue!24628 (text!57913 List!47252)) (FloatLiteralValue!16419 (text!57914 List!47252)) (BytesLiteralValue!8209 (value!247935 List!47252)) (CommentValue!16419 (value!247936 List!47252)) (StringLiteralValue!24629 (value!247937 List!47252)) (ErrorTokenValue!8209 (msg!8270 List!47252)) )
))
(declare-datatypes ((IArray!28385 0))(
  ( (IArray!28386 (innerList!14250 List!47251)) )
))
(declare-datatypes ((Conc!14190 0))(
  ( (Node!14190 (left!34946 Conc!14190) (right!35276 Conc!14190) (csize!28610 Int) (cheight!14401 Int)) (Leaf!21939 (xs!17496 IArray!28385) (csize!28611 Int)) (Empty!14190) )
))
(declare-datatypes ((BalanceConc!27974 0))(
  ( (BalanceConc!27975 (c!722093 Conc!14190)) )
))
(declare-datatypes ((TokenValueInjection!15846 0))(
  ( (TokenValueInjection!15847 (toValue!10755 Int) (toChars!10614 Int)) )
))
(declare-datatypes ((Regex!12884 0))(
  ( (ElementMatch!12884 (c!722094 C!25966)) (Concat!21094 (regOne!26280 Regex!12884) (regTwo!26280 Regex!12884)) (EmptyExpr!12884) (Star!12884 (reg!13213 Regex!12884)) (EmptyLang!12884) (Union!12884 (regOne!26281 Regex!12884) (regTwo!26281 Regex!12884)) )
))
(declare-datatypes ((String!54977 0))(
  ( (String!54978 (value!247938 String)) )
))
(declare-datatypes ((Rule!15758 0))(
  ( (Rule!15759 (regex!7979 Regex!12884) (tag!8843 String!54977) (isSeparator!7979 Bool) (transformation!7979 TokenValueInjection!15846)) )
))
(declare-datatypes ((Token!14584 0))(
  ( (Token!14585 (value!247939 TokenValue!8209) (rule!11115 Rule!15758) (size!34498 Int) (originalCharacters!8323 List!47251)) )
))
(declare-datatypes ((tuple2!44686 0))(
  ( (tuple2!44687 (_1!25477 Token!14584) (_2!25477 List!47251)) )
))
(declare-datatypes ((Option!10113 0))(
  ( (None!10112) (Some!10112 (v!41072 tuple2!44686)) )
))
(declare-fun lt!1509034 () Option!10113)

(declare-fun ++!11988 (List!47251 List!47251) List!47251)

(assert (=> b!4252585 (= res!1748186 (= (++!11988 lt!1509038 (_2!25477 (v!41072 lt!1509034))) shorterInput!62))))

(declare-fun list!16981 (BalanceConc!27974) List!47251)

(declare-fun charsOf!5319 (Token!14584) BalanceConc!27974)

(assert (=> b!4252585 (= lt!1509038 (list!16981 (charsOf!5319 (_1!25477 (v!41072 lt!1509034)))))))

(declare-fun b!4252586 () Bool)

(declare-fun res!1748181 () Bool)

(declare-fun e!2641371 () Bool)

(assert (=> b!4252586 (=> (not res!1748181) (not e!2641371))))

(declare-datatypes ((LexerInterface!7574 0))(
  ( (LexerInterfaceExt!7571 (__x!28642 Int)) (Lexer!7572) )
))
(declare-fun thiss!21641 () LexerInterface!7574)

(declare-datatypes ((List!47253 0))(
  ( (Nil!47129) (Cons!47129 (h!52549 Rule!15758) (t!352636 List!47253)) )
))
(declare-fun rules!2971 () List!47253)

(declare-fun rulesInvariant!6685 (LexerInterface!7574 List!47253) Bool)

(assert (=> b!4252586 (= res!1748181 (rulesInvariant!6685 thiss!21641 rules!2971))))

(declare-fun e!2641355 () Bool)

(declare-fun e!2641369 () Bool)

(declare-fun tp!1304984 () Bool)

(declare-fun b!4252587 () Bool)

(declare-datatypes ((List!47254 0))(
  ( (Nil!47130) (Cons!47130 (h!52550 Token!14584) (t!352637 List!47254)) )
))
(declare-fun tokens!592 () List!47254)

(declare-fun inv!21 (TokenValue!8209) Bool)

(assert (=> b!4252587 (= e!2641369 (and (inv!21 (value!247939 (h!52550 tokens!592))) e!2641355 tp!1304984))))

(declare-fun b!4252588 () Bool)

(declare-fun e!2641359 () Bool)

(declare-datatypes ((tuple2!44688 0))(
  ( (tuple2!44689 (_1!25478 List!47254) (_2!25478 List!47251)) )
))
(declare-fun lt!1509032 () tuple2!44688)

(declare-fun lexList!2080 (LexerInterface!7574 List!47253 List!47251) tuple2!44688)

(assert (=> b!4252588 (= e!2641359 (not (not (= (lexList!2080 thiss!21641 rules!2971 shorterInput!62) lt!1509032))))))

(declare-fun lt!1509036 () tuple2!44688)

(assert (=> b!4252588 (not (= (lexList!2080 thiss!21641 rules!2971 (_2!25477 (v!41072 lt!1509034))) lt!1509036))))

(declare-fun suffix!1284 () List!47251)

(declare-fun lt!1509035 () Option!10113)

(declare-datatypes ((Unit!66084 0))(
  ( (Unit!66085) )
))
(declare-fun lt!1509037 () Unit!66084)

(declare-fun lt!1509033 () List!47254)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!175 (LexerInterface!7574 List!47253 List!47251 List!47251 List!47254 List!47251) Unit!66084)

(assert (=> b!4252588 (= lt!1509037 (lemmaLexWithSmallerInputCannotProduceSameResults!175 thiss!21641 rules!2971 (_2!25477 (v!41072 lt!1509035)) (_2!25477 (v!41072 lt!1509034)) lt!1509033 suffix!1284))))

(declare-fun b!4252589 () Bool)

(declare-fun e!2641360 () Bool)

(assert (=> b!4252589 (= e!2641360 e!2641359)))

(declare-fun res!1748189 () Bool)

(assert (=> b!4252589 (=> (not res!1748189) (not e!2641359))))

(assert (=> b!4252589 (= res!1748189 (= (lexList!2080 thiss!21641 rules!2971 (_2!25477 (v!41072 lt!1509035))) lt!1509036))))

(assert (=> b!4252589 (= lt!1509036 (tuple2!44689 lt!1509033 suffix!1284))))

(declare-fun b!4252590 () Bool)

(declare-fun res!1748184 () Bool)

(assert (=> b!4252590 (=> (not res!1748184) (not e!2641367))))

(declare-fun size!34499 (List!47251) Int)

(assert (=> b!4252590 (= res!1748184 (> (size!34499 (_2!25477 (v!41072 lt!1509035))) (size!34499 (_2!25477 (v!41072 lt!1509034)))))))

(declare-fun b!4252591 () Bool)

(declare-fun res!1748187 () Bool)

(assert (=> b!4252591 (=> (not res!1748187) (not e!2641371))))

(declare-fun isEmpty!27888 (List!47253) Bool)

(assert (=> b!4252591 (= res!1748187 (not (isEmpty!27888 rules!2971)))))

(declare-fun b!4252592 () Bool)

(declare-fun e!2641356 () Bool)

(assert (=> b!4252592 (= e!2641356 e!2641373)))

(declare-fun res!1748188 () Bool)

(assert (=> b!4252592 (=> (not res!1748188) (not e!2641373))))

(declare-fun longerInput!62 () List!47251)

(declare-fun lt!1509031 () List!47251)

(assert (=> b!4252592 (= res!1748188 (= (++!11988 lt!1509031 (_2!25477 (v!41072 lt!1509035))) longerInput!62))))

(assert (=> b!4252592 (= lt!1509031 (list!16981 (charsOf!5319 (_1!25477 (v!41072 lt!1509035)))))))

(declare-fun b!4252593 () Bool)

(declare-fun res!1748185 () Bool)

(assert (=> b!4252593 (=> (not res!1748185) (not e!2641367))))

(assert (=> b!4252593 (= res!1748185 (and (= (_1!25477 (v!41072 lt!1509035)) (_1!25477 (v!41072 lt!1509034))) (= lt!1509031 lt!1509038)))))

(declare-fun tp!1304976 () Bool)

(declare-fun e!2641365 () Bool)

(declare-fun b!4252594 () Bool)

(declare-fun inv!61910 (String!54977) Bool)

(declare-fun inv!61913 (TokenValueInjection!15846) Bool)

(assert (=> b!4252594 (= e!2641355 (and tp!1304976 (inv!61910 (tag!8843 (rule!11115 (h!52550 tokens!592)))) (inv!61913 (transformation!7979 (rule!11115 (h!52550 tokens!592)))) e!2641365))))

(assert (=> b!4252595 (= e!2641365 (and tp!1304985 tp!1304983))))

(declare-fun b!4252596 () Bool)

(declare-fun res!1748183 () Bool)

(assert (=> b!4252596 (=> (not res!1748183) (not e!2641371))))

(declare-fun isEmpty!27889 (List!47251) Bool)

(assert (=> b!4252596 (= res!1748183 (not (isEmpty!27889 longerInput!62)))))

(declare-fun b!4252597 () Bool)

(declare-fun e!2641362 () Bool)

(assert (=> b!4252597 (= e!2641362 e!2641356)))

(declare-fun res!1748190 () Bool)

(assert (=> b!4252597 (=> (not res!1748190) (not e!2641356))))

(assert (=> b!4252597 (= res!1748190 (and (is-Some!10112 lt!1509035) (is-Some!10112 lt!1509034)))))

(declare-fun maxPrefix!4530 (LexerInterface!7574 List!47253 List!47251) Option!10113)

(assert (=> b!4252597 (= lt!1509034 (maxPrefix!4530 thiss!21641 rules!2971 shorterInput!62))))

(assert (=> b!4252597 (= lt!1509035 (maxPrefix!4530 thiss!21641 rules!2971 longerInput!62))))

(declare-fun e!2641363 () Bool)

(assert (=> b!4252598 (= e!2641363 (and tp!1304982 tp!1304980))))

(declare-fun b!4252599 () Bool)

(declare-fun e!2641372 () Bool)

(declare-fun tp!1304978 () Bool)

(assert (=> b!4252599 (= e!2641372 (and tp!1304978 (inv!61910 (tag!8843 (h!52549 rules!2971))) (inv!61913 (transformation!7979 (h!52549 rules!2971))) e!2641363))))

(declare-fun b!4252600 () Bool)

(declare-fun res!1748178 () Bool)

(assert (=> b!4252600 (=> (not res!1748178) (not e!2641371))))

(assert (=> b!4252600 (= res!1748178 (> (size!34499 longerInput!62) (size!34499 shorterInput!62)))))

(declare-fun b!4252601 () Bool)

(assert (=> b!4252601 (= e!2641371 e!2641362)))

(declare-fun res!1748180 () Bool)

(assert (=> b!4252601 (=> (not res!1748180) (not e!2641362))))

(assert (=> b!4252601 (= res!1748180 (= (lexList!2080 thiss!21641 rules!2971 longerInput!62) lt!1509032))))

(assert (=> b!4252601 (= lt!1509032 (tuple2!44689 tokens!592 suffix!1284))))

(declare-fun b!4252602 () Bool)

(declare-fun e!2641374 () Bool)

(declare-fun tp!1304977 () Bool)

(assert (=> b!4252602 (= e!2641374 (and e!2641372 tp!1304977))))

(declare-fun b!4252603 () Bool)

(declare-fun e!2641368 () Bool)

(declare-fun tp_is_empty!22759 () Bool)

(declare-fun tp!1304981 () Bool)

(assert (=> b!4252603 (= e!2641368 (and tp_is_empty!22759 tp!1304981))))

(declare-fun e!2641366 () Bool)

(declare-fun b!4252604 () Bool)

(declare-fun tp!1304979 () Bool)

(declare-fun inv!61914 (Token!14584) Bool)

(assert (=> b!4252604 (= e!2641366 (and (inv!61914 (h!52550 tokens!592)) e!2641369 tp!1304979))))

(declare-fun b!4252605 () Bool)

(declare-fun e!2641370 () Bool)

(declare-fun tp!1304975 () Bool)

(assert (=> b!4252605 (= e!2641370 (and tp_is_empty!22759 tp!1304975))))

(declare-fun res!1748179 () Bool)

(assert (=> start!407252 (=> (not res!1748179) (not e!2641371))))

(assert (=> start!407252 (= res!1748179 (is-Lexer!7572 thiss!21641))))

(assert (=> start!407252 e!2641371))

(assert (=> start!407252 true))

(declare-fun e!2641361 () Bool)

(assert (=> start!407252 e!2641361))

(assert (=> start!407252 e!2641368))

(assert (=> start!407252 e!2641366))

(assert (=> start!407252 e!2641374))

(assert (=> start!407252 e!2641370))

(declare-fun b!4252606 () Bool)

(declare-fun tp!1304986 () Bool)

(assert (=> b!4252606 (= e!2641361 (and tp_is_empty!22759 tp!1304986))))

(declare-fun b!4252607 () Bool)

(assert (=> b!4252607 (= e!2641367 e!2641360)))

(declare-fun res!1748182 () Bool)

(assert (=> b!4252607 (=> (not res!1748182) (not e!2641360))))

(assert (=> b!4252607 (= res!1748182 (not (isEmpty!27889 (_2!25477 (v!41072 lt!1509035)))))))

(declare-fun tail!6859 (List!47254) List!47254)

(assert (=> b!4252607 (= lt!1509033 (tail!6859 tokens!592))))

(assert (= (and start!407252 res!1748179) b!4252591))

(assert (= (and b!4252591 res!1748187) b!4252586))

(assert (= (and b!4252586 res!1748181) b!4252596))

(assert (= (and b!4252596 res!1748183) b!4252600))

(assert (= (and b!4252600 res!1748178) b!4252601))

(assert (= (and b!4252601 res!1748180) b!4252597))

(assert (= (and b!4252597 res!1748190) b!4252592))

(assert (= (and b!4252592 res!1748188) b!4252585))

(assert (= (and b!4252585 res!1748186) b!4252593))

(assert (= (and b!4252593 res!1748185) b!4252590))

(assert (= (and b!4252590 res!1748184) b!4252607))

(assert (= (and b!4252607 res!1748182) b!4252589))

(assert (= (and b!4252589 res!1748189) b!4252588))

(assert (= (and start!407252 (is-Cons!47127 suffix!1284)) b!4252606))

(assert (= (and start!407252 (is-Cons!47127 longerInput!62)) b!4252603))

(assert (= b!4252594 b!4252595))

(assert (= b!4252587 b!4252594))

(assert (= b!4252604 b!4252587))

(assert (= (and start!407252 (is-Cons!47130 tokens!592)) b!4252604))

(assert (= b!4252599 b!4252598))

(assert (= b!4252602 b!4252599))

(assert (= (and start!407252 (is-Cons!47129 rules!2971)) b!4252602))

(assert (= (and start!407252 (is-Cons!47127 shorterInput!62)) b!4252605))

(declare-fun m!4837511 () Bool)

(assert (=> b!4252596 m!4837511))

(declare-fun m!4837513 () Bool)

(assert (=> b!4252604 m!4837513))

(declare-fun m!4837515 () Bool)

(assert (=> b!4252589 m!4837515))

(declare-fun m!4837517 () Bool)

(assert (=> b!4252597 m!4837517))

(declare-fun m!4837519 () Bool)

(assert (=> b!4252597 m!4837519))

(declare-fun m!4837521 () Bool)

(assert (=> b!4252587 m!4837521))

(declare-fun m!4837523 () Bool)

(assert (=> b!4252594 m!4837523))

(declare-fun m!4837525 () Bool)

(assert (=> b!4252594 m!4837525))

(declare-fun m!4837527 () Bool)

(assert (=> b!4252590 m!4837527))

(declare-fun m!4837529 () Bool)

(assert (=> b!4252590 m!4837529))

(declare-fun m!4837531 () Bool)

(assert (=> b!4252601 m!4837531))

(declare-fun m!4837533 () Bool)

(assert (=> b!4252586 m!4837533))

(declare-fun m!4837535 () Bool)

(assert (=> b!4252600 m!4837535))

(declare-fun m!4837537 () Bool)

(assert (=> b!4252600 m!4837537))

(declare-fun m!4837539 () Bool)

(assert (=> b!4252607 m!4837539))

(declare-fun m!4837541 () Bool)

(assert (=> b!4252607 m!4837541))

(declare-fun m!4837543 () Bool)

(assert (=> b!4252599 m!4837543))

(declare-fun m!4837545 () Bool)

(assert (=> b!4252599 m!4837545))

(declare-fun m!4837547 () Bool)

(assert (=> b!4252592 m!4837547))

(declare-fun m!4837549 () Bool)

(assert (=> b!4252592 m!4837549))

(assert (=> b!4252592 m!4837549))

(declare-fun m!4837551 () Bool)

(assert (=> b!4252592 m!4837551))

(declare-fun m!4837553 () Bool)

(assert (=> b!4252588 m!4837553))

(declare-fun m!4837555 () Bool)

(assert (=> b!4252588 m!4837555))

(declare-fun m!4837557 () Bool)

(assert (=> b!4252588 m!4837557))

(declare-fun m!4837559 () Bool)

(assert (=> b!4252591 m!4837559))

(declare-fun m!4837561 () Bool)

(assert (=> b!4252585 m!4837561))

(declare-fun m!4837563 () Bool)

(assert (=> b!4252585 m!4837563))

(assert (=> b!4252585 m!4837563))

(declare-fun m!4837565 () Bool)

(assert (=> b!4252585 m!4837565))

(push 1)

(assert (not b!4252585))

(assert (not b!4252587))

(assert (not b!4252603))

(assert (not b_next!127167))

(assert (not b!4252594))

(assert tp_is_empty!22759)

(assert (not b!4252596))

(assert (not b!4252601))

(assert (not b!4252591))

(assert (not b!4252589))

(assert (not b!4252592))

(assert b_and!337219)

(assert (not b_next!127165))

(assert (not b_next!127169))

(assert (not b!4252606))

(assert b_and!337217)

(assert b_and!337215)

(assert b_and!337213)

(assert (not b!4252586))

(assert (not b!4252597))

(assert (not b!4252604))

(assert (not b!4252599))

(assert (not b!4252602))

(assert (not b!4252588))

(assert (not b!4252605))

(assert (not b!4252600))

(assert (not b_next!127163))

(assert (not b!4252607))

(assert (not b!4252590))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!127167))

(assert (not b_next!127163))

(assert b_and!337219)

(assert (not b_next!127165))

(assert (not b_next!127169))

(assert b_and!337217)

(assert b_and!337215)

(assert b_and!337213)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1250561 () Bool)

(declare-fun lt!1509065 () Int)

(assert (=> d!1250561 (>= lt!1509065 0)))

(declare-fun e!2641437 () Int)

(assert (=> d!1250561 (= lt!1509065 e!2641437)))

(declare-fun c!722100 () Bool)

(assert (=> d!1250561 (= c!722100 (is-Nil!47127 (_2!25477 (v!41072 lt!1509035))))))

(assert (=> d!1250561 (= (size!34499 (_2!25477 (v!41072 lt!1509035))) lt!1509065)))

(declare-fun b!4252681 () Bool)

(assert (=> b!4252681 (= e!2641437 0)))

(declare-fun b!4252682 () Bool)

(assert (=> b!4252682 (= e!2641437 (+ 1 (size!34499 (t!352634 (_2!25477 (v!41072 lt!1509035))))))))

(assert (= (and d!1250561 c!722100) b!4252681))

(assert (= (and d!1250561 (not c!722100)) b!4252682))

(declare-fun m!4837623 () Bool)

(assert (=> b!4252682 m!4837623))

(assert (=> b!4252590 d!1250561))

(declare-fun d!1250563 () Bool)

(declare-fun lt!1509066 () Int)

(assert (=> d!1250563 (>= lt!1509066 0)))

(declare-fun e!2641438 () Int)

(assert (=> d!1250563 (= lt!1509066 e!2641438)))

(declare-fun c!722101 () Bool)

(assert (=> d!1250563 (= c!722101 (is-Nil!47127 (_2!25477 (v!41072 lt!1509034))))))

(assert (=> d!1250563 (= (size!34499 (_2!25477 (v!41072 lt!1509034))) lt!1509066)))

(declare-fun b!4252683 () Bool)

(assert (=> b!4252683 (= e!2641438 0)))

(declare-fun b!4252684 () Bool)

(assert (=> b!4252684 (= e!2641438 (+ 1 (size!34499 (t!352634 (_2!25477 (v!41072 lt!1509034))))))))

(assert (= (and d!1250563 c!722101) b!4252683))

(assert (= (and d!1250563 (not c!722101)) b!4252684))

(declare-fun m!4837625 () Bool)

(assert (=> b!4252684 m!4837625))

(assert (=> b!4252590 d!1250563))

(declare-fun b!4252695 () Bool)

(declare-fun e!2641445 () tuple2!44688)

(declare-fun lt!1509075 () Option!10113)

(declare-fun lt!1509073 () tuple2!44688)

(assert (=> b!4252695 (= e!2641445 (tuple2!44689 (Cons!47130 (_1!25477 (v!41072 lt!1509075)) (_1!25478 lt!1509073)) (_2!25478 lt!1509073)))))

(assert (=> b!4252695 (= lt!1509073 (lexList!2080 thiss!21641 rules!2971 (_2!25477 (v!41072 lt!1509075))))))

(declare-fun b!4252696 () Bool)

(declare-fun e!2641446 () Bool)

(declare-fun lt!1509074 () tuple2!44688)

(declare-fun isEmpty!27892 (List!47254) Bool)

(assert (=> b!4252696 (= e!2641446 (not (isEmpty!27892 (_1!25478 lt!1509074))))))

(declare-fun d!1250565 () Bool)

(declare-fun e!2641447 () Bool)

(assert (=> d!1250565 e!2641447))

(declare-fun c!722107 () Bool)

(declare-fun size!34502 (List!47254) Int)

(assert (=> d!1250565 (= c!722107 (> (size!34502 (_1!25478 lt!1509074)) 0))))

(assert (=> d!1250565 (= lt!1509074 e!2641445)))

(declare-fun c!722106 () Bool)

(assert (=> d!1250565 (= c!722106 (is-Some!10112 lt!1509075))))

(assert (=> d!1250565 (= lt!1509075 (maxPrefix!4530 thiss!21641 rules!2971 longerInput!62))))

(assert (=> d!1250565 (= (lexList!2080 thiss!21641 rules!2971 longerInput!62) lt!1509074)))

(declare-fun b!4252697 () Bool)

(assert (=> b!4252697 (= e!2641445 (tuple2!44689 Nil!47130 longerInput!62))))

(declare-fun b!4252698 () Bool)

(assert (=> b!4252698 (= e!2641447 e!2641446)))

(declare-fun res!1748238 () Bool)

(assert (=> b!4252698 (= res!1748238 (< (size!34499 (_2!25478 lt!1509074)) (size!34499 longerInput!62)))))

(assert (=> b!4252698 (=> (not res!1748238) (not e!2641446))))

(declare-fun b!4252699 () Bool)

(assert (=> b!4252699 (= e!2641447 (= (_2!25478 lt!1509074) longerInput!62))))

(assert (= (and d!1250565 c!722106) b!4252695))

(assert (= (and d!1250565 (not c!722106)) b!4252697))

(assert (= (and d!1250565 c!722107) b!4252698))

(assert (= (and d!1250565 (not c!722107)) b!4252699))

(assert (= (and b!4252698 res!1748238) b!4252696))

(declare-fun m!4837627 () Bool)

(assert (=> b!4252695 m!4837627))

(declare-fun m!4837629 () Bool)

(assert (=> b!4252696 m!4837629))

(declare-fun m!4837631 () Bool)

(assert (=> d!1250565 m!4837631))

(assert (=> d!1250565 m!4837519))

(declare-fun m!4837633 () Bool)

(assert (=> b!4252698 m!4837633))

(assert (=> b!4252698 m!4837535))

(assert (=> b!4252601 d!1250565))

(declare-fun d!1250569 () Bool)

(assert (=> d!1250569 (= (inv!61910 (tag!8843 (h!52549 rules!2971))) (= (mod (str.len (value!247938 (tag!8843 (h!52549 rules!2971)))) 2) 0))))

(assert (=> b!4252599 d!1250569))

(declare-fun d!1250571 () Bool)

(declare-fun res!1748241 () Bool)

(declare-fun e!2641450 () Bool)

(assert (=> d!1250571 (=> (not res!1748241) (not e!2641450))))

(declare-fun semiInverseModEq!3482 (Int Int) Bool)

(assert (=> d!1250571 (= res!1748241 (semiInverseModEq!3482 (toChars!10614 (transformation!7979 (h!52549 rules!2971))) (toValue!10755 (transformation!7979 (h!52549 rules!2971)))))))

(assert (=> d!1250571 (= (inv!61913 (transformation!7979 (h!52549 rules!2971))) e!2641450)))

(declare-fun b!4252702 () Bool)

(declare-fun equivClasses!3381 (Int Int) Bool)

(assert (=> b!4252702 (= e!2641450 (equivClasses!3381 (toChars!10614 (transformation!7979 (h!52549 rules!2971))) (toValue!10755 (transformation!7979 (h!52549 rules!2971)))))))

(assert (= (and d!1250571 res!1748241) b!4252702))

(declare-fun m!4837635 () Bool)

(assert (=> d!1250571 m!4837635))

(declare-fun m!4837637 () Bool)

(assert (=> b!4252702 m!4837637))

(assert (=> b!4252599 d!1250571))

(declare-fun b!4252703 () Bool)

(declare-fun e!2641451 () tuple2!44688)

(declare-fun lt!1509078 () Option!10113)

(declare-fun lt!1509076 () tuple2!44688)

(assert (=> b!4252703 (= e!2641451 (tuple2!44689 (Cons!47130 (_1!25477 (v!41072 lt!1509078)) (_1!25478 lt!1509076)) (_2!25478 lt!1509076)))))

(assert (=> b!4252703 (= lt!1509076 (lexList!2080 thiss!21641 rules!2971 (_2!25477 (v!41072 lt!1509078))))))

(declare-fun b!4252704 () Bool)

(declare-fun e!2641452 () Bool)

(declare-fun lt!1509077 () tuple2!44688)

(assert (=> b!4252704 (= e!2641452 (not (isEmpty!27892 (_1!25478 lt!1509077))))))

(declare-fun d!1250573 () Bool)

(declare-fun e!2641453 () Bool)

(assert (=> d!1250573 e!2641453))

(declare-fun c!722109 () Bool)

(assert (=> d!1250573 (= c!722109 (> (size!34502 (_1!25478 lt!1509077)) 0))))

(assert (=> d!1250573 (= lt!1509077 e!2641451)))

(declare-fun c!722108 () Bool)

(assert (=> d!1250573 (= c!722108 (is-Some!10112 lt!1509078))))

(assert (=> d!1250573 (= lt!1509078 (maxPrefix!4530 thiss!21641 rules!2971 (_2!25477 (v!41072 lt!1509035))))))

(assert (=> d!1250573 (= (lexList!2080 thiss!21641 rules!2971 (_2!25477 (v!41072 lt!1509035))) lt!1509077)))

(declare-fun b!4252705 () Bool)

(assert (=> b!4252705 (= e!2641451 (tuple2!44689 Nil!47130 (_2!25477 (v!41072 lt!1509035))))))

(declare-fun b!4252706 () Bool)

(assert (=> b!4252706 (= e!2641453 e!2641452)))

(declare-fun res!1748242 () Bool)

(assert (=> b!4252706 (= res!1748242 (< (size!34499 (_2!25478 lt!1509077)) (size!34499 (_2!25477 (v!41072 lt!1509035)))))))

(assert (=> b!4252706 (=> (not res!1748242) (not e!2641452))))

(declare-fun b!4252707 () Bool)

(assert (=> b!4252707 (= e!2641453 (= (_2!25478 lt!1509077) (_2!25477 (v!41072 lt!1509035))))))

(assert (= (and d!1250573 c!722108) b!4252703))

(assert (= (and d!1250573 (not c!722108)) b!4252705))

(assert (= (and d!1250573 c!722109) b!4252706))

(assert (= (and d!1250573 (not c!722109)) b!4252707))

(assert (= (and b!4252706 res!1748242) b!4252704))

(declare-fun m!4837639 () Bool)

(assert (=> b!4252703 m!4837639))

(declare-fun m!4837641 () Bool)

(assert (=> b!4252704 m!4837641))

(declare-fun m!4837643 () Bool)

(assert (=> d!1250573 m!4837643))

(declare-fun m!4837645 () Bool)

(assert (=> d!1250573 m!4837645))

(declare-fun m!4837647 () Bool)

(assert (=> b!4252706 m!4837647))

(assert (=> b!4252706 m!4837527))

(assert (=> b!4252589 d!1250573))

(declare-fun d!1250575 () Bool)

(declare-fun lt!1509079 () Int)

(assert (=> d!1250575 (>= lt!1509079 0)))

(declare-fun e!2641454 () Int)

(assert (=> d!1250575 (= lt!1509079 e!2641454)))

(declare-fun c!722110 () Bool)

(assert (=> d!1250575 (= c!722110 (is-Nil!47127 longerInput!62))))

(assert (=> d!1250575 (= (size!34499 longerInput!62) lt!1509079)))

(declare-fun b!4252708 () Bool)

(assert (=> b!4252708 (= e!2641454 0)))

(declare-fun b!4252709 () Bool)

(assert (=> b!4252709 (= e!2641454 (+ 1 (size!34499 (t!352634 longerInput!62))))))

(assert (= (and d!1250575 c!722110) b!4252708))

(assert (= (and d!1250575 (not c!722110)) b!4252709))

(declare-fun m!4837649 () Bool)

(assert (=> b!4252709 m!4837649))

(assert (=> b!4252600 d!1250575))

(declare-fun d!1250577 () Bool)

(declare-fun lt!1509080 () Int)

(assert (=> d!1250577 (>= lt!1509080 0)))

(declare-fun e!2641455 () Int)

(assert (=> d!1250577 (= lt!1509080 e!2641455)))

(declare-fun c!722111 () Bool)

(assert (=> d!1250577 (= c!722111 (is-Nil!47127 shorterInput!62))))

(assert (=> d!1250577 (= (size!34499 shorterInput!62) lt!1509080)))

(declare-fun b!4252710 () Bool)

(assert (=> b!4252710 (= e!2641455 0)))

(declare-fun b!4252711 () Bool)

(assert (=> b!4252711 (= e!2641455 (+ 1 (size!34499 (t!352634 shorterInput!62))))))

(assert (= (and d!1250577 c!722111) b!4252710))

(assert (= (and d!1250577 (not c!722111)) b!4252711))

(declare-fun m!4837651 () Bool)

(assert (=> b!4252711 m!4837651))

(assert (=> b!4252600 d!1250577))

(declare-fun d!1250579 () Bool)

(declare-fun res!1748247 () Bool)

(declare-fun e!2641458 () Bool)

(assert (=> d!1250579 (=> (not res!1748247) (not e!2641458))))

(assert (=> d!1250579 (= res!1748247 (not (isEmpty!27889 (originalCharacters!8323 (h!52550 tokens!592)))))))

(assert (=> d!1250579 (= (inv!61914 (h!52550 tokens!592)) e!2641458)))

(declare-fun b!4252716 () Bool)

(declare-fun res!1748248 () Bool)

(assert (=> b!4252716 (=> (not res!1748248) (not e!2641458))))

(declare-fun dynLambda!20193 (Int TokenValue!8209) BalanceConc!27974)

(assert (=> b!4252716 (= res!1748248 (= (originalCharacters!8323 (h!52550 tokens!592)) (list!16981 (dynLambda!20193 (toChars!10614 (transformation!7979 (rule!11115 (h!52550 tokens!592)))) (value!247939 (h!52550 tokens!592))))))))

(declare-fun b!4252717 () Bool)

(assert (=> b!4252717 (= e!2641458 (= (size!34498 (h!52550 tokens!592)) (size!34499 (originalCharacters!8323 (h!52550 tokens!592)))))))

(assert (= (and d!1250579 res!1748247) b!4252716))

(assert (= (and b!4252716 res!1748248) b!4252717))

(declare-fun b_lambda!125283 () Bool)

(assert (=> (not b_lambda!125283) (not b!4252716)))

(declare-fun t!352643 () Bool)

(declare-fun tb!256563 () Bool)

(assert (=> (and b!4252595 (= (toChars!10614 (transformation!7979 (rule!11115 (h!52550 tokens!592)))) (toChars!10614 (transformation!7979 (rule!11115 (h!52550 tokens!592))))) t!352643) tb!256563))

(declare-fun b!4252722 () Bool)

(declare-fun e!2641461 () Bool)

(declare-fun tp!1305025 () Bool)

(declare-fun inv!61917 (Conc!14190) Bool)

(assert (=> b!4252722 (= e!2641461 (and (inv!61917 (c!722093 (dynLambda!20193 (toChars!10614 (transformation!7979 (rule!11115 (h!52550 tokens!592)))) (value!247939 (h!52550 tokens!592))))) tp!1305025))))

(declare-fun result!312892 () Bool)

(declare-fun inv!61918 (BalanceConc!27974) Bool)

(assert (=> tb!256563 (= result!312892 (and (inv!61918 (dynLambda!20193 (toChars!10614 (transformation!7979 (rule!11115 (h!52550 tokens!592)))) (value!247939 (h!52550 tokens!592)))) e!2641461))))

(assert (= tb!256563 b!4252722))

(declare-fun m!4837653 () Bool)

(assert (=> b!4252722 m!4837653))

(declare-fun m!4837655 () Bool)

(assert (=> tb!256563 m!4837655))

(assert (=> b!4252716 t!352643))

(declare-fun b_and!337229 () Bool)

(assert (= b_and!337215 (and (=> t!352643 result!312892) b_and!337229)))

(declare-fun tb!256565 () Bool)

(declare-fun t!352645 () Bool)

(assert (=> (and b!4252598 (= (toChars!10614 (transformation!7979 (h!52549 rules!2971))) (toChars!10614 (transformation!7979 (rule!11115 (h!52550 tokens!592))))) t!352645) tb!256565))

(declare-fun result!312896 () Bool)

(assert (= result!312896 result!312892))

(assert (=> b!4252716 t!352645))

(declare-fun b_and!337231 () Bool)

(assert (= b_and!337219 (and (=> t!352645 result!312896) b_and!337231)))

(declare-fun m!4837657 () Bool)

(assert (=> d!1250579 m!4837657))

(declare-fun m!4837659 () Bool)

(assert (=> b!4252716 m!4837659))

(assert (=> b!4252716 m!4837659))

(declare-fun m!4837661 () Bool)

(assert (=> b!4252716 m!4837661))

(declare-fun m!4837663 () Bool)

(assert (=> b!4252717 m!4837663))

(assert (=> b!4252604 d!1250579))

(declare-fun d!1250581 () Bool)

(assert (=> d!1250581 (= (isEmpty!27888 rules!2971) (is-Nil!47129 rules!2971))))

(assert (=> b!4252591 d!1250581))

(declare-fun b!4252733 () Bool)

(declare-fun res!1748253 () Bool)

(declare-fun e!2641466 () Bool)

(assert (=> b!4252733 (=> (not res!1748253) (not e!2641466))))

(declare-fun lt!1509083 () List!47251)

(assert (=> b!4252733 (= res!1748253 (= (size!34499 lt!1509083) (+ (size!34499 lt!1509031) (size!34499 (_2!25477 (v!41072 lt!1509035))))))))

(declare-fun b!4252731 () Bool)

(declare-fun e!2641467 () List!47251)

(assert (=> b!4252731 (= e!2641467 (_2!25477 (v!41072 lt!1509035)))))

(declare-fun b!4252734 () Bool)

(assert (=> b!4252734 (= e!2641466 (or (not (= (_2!25477 (v!41072 lt!1509035)) Nil!47127)) (= lt!1509083 lt!1509031)))))

(declare-fun b!4252732 () Bool)

(assert (=> b!4252732 (= e!2641467 (Cons!47127 (h!52547 lt!1509031) (++!11988 (t!352634 lt!1509031) (_2!25477 (v!41072 lt!1509035)))))))

(declare-fun d!1250583 () Bool)

(assert (=> d!1250583 e!2641466))

(declare-fun res!1748254 () Bool)

(assert (=> d!1250583 (=> (not res!1748254) (not e!2641466))))

(declare-fun content!7409 (List!47251) (Set C!25966))

(assert (=> d!1250583 (= res!1748254 (= (content!7409 lt!1509083) (set.union (content!7409 lt!1509031) (content!7409 (_2!25477 (v!41072 lt!1509035))))))))

(assert (=> d!1250583 (= lt!1509083 e!2641467)))

(declare-fun c!722114 () Bool)

(assert (=> d!1250583 (= c!722114 (is-Nil!47127 lt!1509031))))

(assert (=> d!1250583 (= (++!11988 lt!1509031 (_2!25477 (v!41072 lt!1509035))) lt!1509083)))

(assert (= (and d!1250583 c!722114) b!4252731))

(assert (= (and d!1250583 (not c!722114)) b!4252732))

(assert (= (and d!1250583 res!1748254) b!4252733))

(assert (= (and b!4252733 res!1748253) b!4252734))

(declare-fun m!4837665 () Bool)

(assert (=> b!4252733 m!4837665))

(declare-fun m!4837667 () Bool)

(assert (=> b!4252733 m!4837667))

(assert (=> b!4252733 m!4837527))

(declare-fun m!4837669 () Bool)

(assert (=> b!4252732 m!4837669))

(declare-fun m!4837671 () Bool)

(assert (=> d!1250583 m!4837671))

(declare-fun m!4837673 () Bool)

(assert (=> d!1250583 m!4837673))

(declare-fun m!4837675 () Bool)

(assert (=> d!1250583 m!4837675))

(assert (=> b!4252592 d!1250583))

(declare-fun d!1250585 () Bool)

(declare-fun list!16983 (Conc!14190) List!47251)

(assert (=> d!1250585 (= (list!16981 (charsOf!5319 (_1!25477 (v!41072 lt!1509035)))) (list!16983 (c!722093 (charsOf!5319 (_1!25477 (v!41072 lt!1509035))))))))

(declare-fun bs!598710 () Bool)

(assert (= bs!598710 d!1250585))

(declare-fun m!4837677 () Bool)

(assert (=> bs!598710 m!4837677))

(assert (=> b!4252592 d!1250585))

(declare-fun d!1250587 () Bool)

(declare-fun lt!1509086 () BalanceConc!27974)

(assert (=> d!1250587 (= (list!16981 lt!1509086) (originalCharacters!8323 (_1!25477 (v!41072 lt!1509035))))))

(assert (=> d!1250587 (= lt!1509086 (dynLambda!20193 (toChars!10614 (transformation!7979 (rule!11115 (_1!25477 (v!41072 lt!1509035))))) (value!247939 (_1!25477 (v!41072 lt!1509035)))))))

(assert (=> d!1250587 (= (charsOf!5319 (_1!25477 (v!41072 lt!1509035))) lt!1509086)))

(declare-fun b_lambda!125285 () Bool)

(assert (=> (not b_lambda!125285) (not d!1250587)))

(declare-fun tb!256567 () Bool)

(declare-fun t!352647 () Bool)

(assert (=> (and b!4252595 (= (toChars!10614 (transformation!7979 (rule!11115 (h!52550 tokens!592)))) (toChars!10614 (transformation!7979 (rule!11115 (_1!25477 (v!41072 lt!1509035)))))) t!352647) tb!256567))

(declare-fun b!4252735 () Bool)

(declare-fun e!2641468 () Bool)

(declare-fun tp!1305026 () Bool)

(assert (=> b!4252735 (= e!2641468 (and (inv!61917 (c!722093 (dynLambda!20193 (toChars!10614 (transformation!7979 (rule!11115 (_1!25477 (v!41072 lt!1509035))))) (value!247939 (_1!25477 (v!41072 lt!1509035)))))) tp!1305026))))

(declare-fun result!312898 () Bool)

(assert (=> tb!256567 (= result!312898 (and (inv!61918 (dynLambda!20193 (toChars!10614 (transformation!7979 (rule!11115 (_1!25477 (v!41072 lt!1509035))))) (value!247939 (_1!25477 (v!41072 lt!1509035))))) e!2641468))))

(assert (= tb!256567 b!4252735))

(declare-fun m!4837679 () Bool)

(assert (=> b!4252735 m!4837679))

(declare-fun m!4837681 () Bool)

(assert (=> tb!256567 m!4837681))

(assert (=> d!1250587 t!352647))

(declare-fun b_and!337233 () Bool)

(assert (= b_and!337229 (and (=> t!352647 result!312898) b_and!337233)))

(declare-fun t!352649 () Bool)

(declare-fun tb!256569 () Bool)

(assert (=> (and b!4252598 (= (toChars!10614 (transformation!7979 (h!52549 rules!2971))) (toChars!10614 (transformation!7979 (rule!11115 (_1!25477 (v!41072 lt!1509035)))))) t!352649) tb!256569))

(declare-fun result!312900 () Bool)

(assert (= result!312900 result!312898))

(assert (=> d!1250587 t!352649))

(declare-fun b_and!337235 () Bool)

(assert (= b_and!337231 (and (=> t!352649 result!312900) b_and!337235)))

(declare-fun m!4837683 () Bool)

(assert (=> d!1250587 m!4837683))

(declare-fun m!4837685 () Bool)

(assert (=> d!1250587 m!4837685))

(assert (=> b!4252592 d!1250587))

(declare-fun b!4252738 () Bool)

(declare-fun res!1748255 () Bool)

(declare-fun e!2641469 () Bool)

(assert (=> b!4252738 (=> (not res!1748255) (not e!2641469))))

(declare-fun lt!1509087 () List!47251)

(assert (=> b!4252738 (= res!1748255 (= (size!34499 lt!1509087) (+ (size!34499 lt!1509038) (size!34499 (_2!25477 (v!41072 lt!1509034))))))))

(declare-fun b!4252736 () Bool)

(declare-fun e!2641470 () List!47251)

(assert (=> b!4252736 (= e!2641470 (_2!25477 (v!41072 lt!1509034)))))

(declare-fun b!4252739 () Bool)

(assert (=> b!4252739 (= e!2641469 (or (not (= (_2!25477 (v!41072 lt!1509034)) Nil!47127)) (= lt!1509087 lt!1509038)))))

(declare-fun b!4252737 () Bool)

(assert (=> b!4252737 (= e!2641470 (Cons!47127 (h!52547 lt!1509038) (++!11988 (t!352634 lt!1509038) (_2!25477 (v!41072 lt!1509034)))))))

(declare-fun d!1250589 () Bool)

(assert (=> d!1250589 e!2641469))

(declare-fun res!1748256 () Bool)

(assert (=> d!1250589 (=> (not res!1748256) (not e!2641469))))

(assert (=> d!1250589 (= res!1748256 (= (content!7409 lt!1509087) (set.union (content!7409 lt!1509038) (content!7409 (_2!25477 (v!41072 lt!1509034))))))))

(assert (=> d!1250589 (= lt!1509087 e!2641470)))

(declare-fun c!722115 () Bool)

(assert (=> d!1250589 (= c!722115 (is-Nil!47127 lt!1509038))))

(assert (=> d!1250589 (= (++!11988 lt!1509038 (_2!25477 (v!41072 lt!1509034))) lt!1509087)))

(assert (= (and d!1250589 c!722115) b!4252736))

(assert (= (and d!1250589 (not c!722115)) b!4252737))

(assert (= (and d!1250589 res!1748256) b!4252738))

(assert (= (and b!4252738 res!1748255) b!4252739))

(declare-fun m!4837687 () Bool)

(assert (=> b!4252738 m!4837687))

(declare-fun m!4837689 () Bool)

(assert (=> b!4252738 m!4837689))

(assert (=> b!4252738 m!4837529))

(declare-fun m!4837691 () Bool)

(assert (=> b!4252737 m!4837691))

(declare-fun m!4837693 () Bool)

(assert (=> d!1250589 m!4837693))

(declare-fun m!4837695 () Bool)

(assert (=> d!1250589 m!4837695))

(declare-fun m!4837697 () Bool)

(assert (=> d!1250589 m!4837697))

(assert (=> b!4252585 d!1250589))

(declare-fun d!1250591 () Bool)

(assert (=> d!1250591 (= (list!16981 (charsOf!5319 (_1!25477 (v!41072 lt!1509034)))) (list!16983 (c!722093 (charsOf!5319 (_1!25477 (v!41072 lt!1509034))))))))

(declare-fun bs!598711 () Bool)

(assert (= bs!598711 d!1250591))

(declare-fun m!4837699 () Bool)

(assert (=> bs!598711 m!4837699))

(assert (=> b!4252585 d!1250591))

(declare-fun d!1250593 () Bool)

(declare-fun lt!1509088 () BalanceConc!27974)

(assert (=> d!1250593 (= (list!16981 lt!1509088) (originalCharacters!8323 (_1!25477 (v!41072 lt!1509034))))))

(assert (=> d!1250593 (= lt!1509088 (dynLambda!20193 (toChars!10614 (transformation!7979 (rule!11115 (_1!25477 (v!41072 lt!1509034))))) (value!247939 (_1!25477 (v!41072 lt!1509034)))))))

(assert (=> d!1250593 (= (charsOf!5319 (_1!25477 (v!41072 lt!1509034))) lt!1509088)))

(declare-fun b_lambda!125287 () Bool)

(assert (=> (not b_lambda!125287) (not d!1250593)))

(declare-fun tb!256571 () Bool)

(declare-fun t!352651 () Bool)

(assert (=> (and b!4252595 (= (toChars!10614 (transformation!7979 (rule!11115 (h!52550 tokens!592)))) (toChars!10614 (transformation!7979 (rule!11115 (_1!25477 (v!41072 lt!1509034)))))) t!352651) tb!256571))

(declare-fun b!4252740 () Bool)

(declare-fun e!2641471 () Bool)

(declare-fun tp!1305027 () Bool)

(assert (=> b!4252740 (= e!2641471 (and (inv!61917 (c!722093 (dynLambda!20193 (toChars!10614 (transformation!7979 (rule!11115 (_1!25477 (v!41072 lt!1509034))))) (value!247939 (_1!25477 (v!41072 lt!1509034)))))) tp!1305027))))

(declare-fun result!312902 () Bool)

(assert (=> tb!256571 (= result!312902 (and (inv!61918 (dynLambda!20193 (toChars!10614 (transformation!7979 (rule!11115 (_1!25477 (v!41072 lt!1509034))))) (value!247939 (_1!25477 (v!41072 lt!1509034))))) e!2641471))))

(assert (= tb!256571 b!4252740))

(declare-fun m!4837701 () Bool)

(assert (=> b!4252740 m!4837701))

(declare-fun m!4837703 () Bool)

(assert (=> tb!256571 m!4837703))

(assert (=> d!1250593 t!352651))

(declare-fun b_and!337237 () Bool)

(assert (= b_and!337233 (and (=> t!352651 result!312902) b_and!337237)))

(declare-fun tb!256573 () Bool)

(declare-fun t!352653 () Bool)

(assert (=> (and b!4252598 (= (toChars!10614 (transformation!7979 (h!52549 rules!2971))) (toChars!10614 (transformation!7979 (rule!11115 (_1!25477 (v!41072 lt!1509034)))))) t!352653) tb!256573))

(declare-fun result!312904 () Bool)

(assert (= result!312904 result!312902))

(assert (=> d!1250593 t!352653))

(declare-fun b_and!337239 () Bool)

(assert (= b_and!337235 (and (=> t!352653 result!312904) b_and!337239)))

(declare-fun m!4837705 () Bool)

(assert (=> d!1250593 m!4837705))

(declare-fun m!4837707 () Bool)

(assert (=> d!1250593 m!4837707))

(assert (=> b!4252585 d!1250593))

(declare-fun d!1250595 () Bool)

(assert (=> d!1250595 (= (isEmpty!27889 longerInput!62) (is-Nil!47127 longerInput!62))))

(assert (=> b!4252596 d!1250595))

(declare-fun d!1250597 () Bool)

(assert (=> d!1250597 (= (inv!61910 (tag!8843 (rule!11115 (h!52550 tokens!592)))) (= (mod (str.len (value!247938 (tag!8843 (rule!11115 (h!52550 tokens!592))))) 2) 0))))

(assert (=> b!4252594 d!1250597))

(declare-fun d!1250599 () Bool)

(declare-fun res!1748257 () Bool)

(declare-fun e!2641472 () Bool)

(assert (=> d!1250599 (=> (not res!1748257) (not e!2641472))))

(assert (=> d!1250599 (= res!1748257 (semiInverseModEq!3482 (toChars!10614 (transformation!7979 (rule!11115 (h!52550 tokens!592)))) (toValue!10755 (transformation!7979 (rule!11115 (h!52550 tokens!592))))))))

(assert (=> d!1250599 (= (inv!61913 (transformation!7979 (rule!11115 (h!52550 tokens!592)))) e!2641472)))

(declare-fun b!4252741 () Bool)

(assert (=> b!4252741 (= e!2641472 (equivClasses!3381 (toChars!10614 (transformation!7979 (rule!11115 (h!52550 tokens!592)))) (toValue!10755 (transformation!7979 (rule!11115 (h!52550 tokens!592))))))))

(assert (= (and d!1250599 res!1748257) b!4252741))

(declare-fun m!4837709 () Bool)

(assert (=> d!1250599 m!4837709))

(declare-fun m!4837711 () Bool)

(assert (=> b!4252741 m!4837711))

(assert (=> b!4252594 d!1250599))

(declare-fun b!4252752 () Bool)

(declare-fun e!2641479 () Bool)

(declare-fun inv!15 (TokenValue!8209) Bool)

(assert (=> b!4252752 (= e!2641479 (inv!15 (value!247939 (h!52550 tokens!592))))))

(declare-fun d!1250601 () Bool)

(declare-fun c!722120 () Bool)

(assert (=> d!1250601 (= c!722120 (is-IntegerValue!24627 (value!247939 (h!52550 tokens!592))))))

(declare-fun e!2641480 () Bool)

(assert (=> d!1250601 (= (inv!21 (value!247939 (h!52550 tokens!592))) e!2641480)))

(declare-fun b!4252753 () Bool)

(declare-fun inv!16 (TokenValue!8209) Bool)

(assert (=> b!4252753 (= e!2641480 (inv!16 (value!247939 (h!52550 tokens!592))))))

(declare-fun b!4252754 () Bool)

(declare-fun e!2641481 () Bool)

(assert (=> b!4252754 (= e!2641480 e!2641481)))

(declare-fun c!722121 () Bool)

(assert (=> b!4252754 (= c!722121 (is-IntegerValue!24628 (value!247939 (h!52550 tokens!592))))))

(declare-fun b!4252755 () Bool)

(declare-fun res!1748260 () Bool)

(assert (=> b!4252755 (=> res!1748260 e!2641479)))

(assert (=> b!4252755 (= res!1748260 (not (is-IntegerValue!24629 (value!247939 (h!52550 tokens!592)))))))

(assert (=> b!4252755 (= e!2641481 e!2641479)))

(declare-fun b!4252756 () Bool)

(declare-fun inv!17 (TokenValue!8209) Bool)

(assert (=> b!4252756 (= e!2641481 (inv!17 (value!247939 (h!52550 tokens!592))))))

(assert (= (and d!1250601 c!722120) b!4252753))

(assert (= (and d!1250601 (not c!722120)) b!4252754))

(assert (= (and b!4252754 c!722121) b!4252756))

(assert (= (and b!4252754 (not c!722121)) b!4252755))

(assert (= (and b!4252755 (not res!1748260)) b!4252752))

(declare-fun m!4837713 () Bool)

(assert (=> b!4252752 m!4837713))

(declare-fun m!4837715 () Bool)

(assert (=> b!4252753 m!4837715))

(declare-fun m!4837717 () Bool)

(assert (=> b!4252756 m!4837717))

(assert (=> b!4252587 d!1250601))

(declare-fun b!4252757 () Bool)

(declare-fun e!2641482 () tuple2!44688)

(declare-fun lt!1509091 () Option!10113)

(declare-fun lt!1509089 () tuple2!44688)

(assert (=> b!4252757 (= e!2641482 (tuple2!44689 (Cons!47130 (_1!25477 (v!41072 lt!1509091)) (_1!25478 lt!1509089)) (_2!25478 lt!1509089)))))

(assert (=> b!4252757 (= lt!1509089 (lexList!2080 thiss!21641 rules!2971 (_2!25477 (v!41072 lt!1509091))))))

(declare-fun b!4252758 () Bool)

(declare-fun e!2641483 () Bool)

(declare-fun lt!1509090 () tuple2!44688)

(assert (=> b!4252758 (= e!2641483 (not (isEmpty!27892 (_1!25478 lt!1509090))))))

(declare-fun d!1250603 () Bool)

(declare-fun e!2641484 () Bool)

(assert (=> d!1250603 e!2641484))

(declare-fun c!722123 () Bool)

(assert (=> d!1250603 (= c!722123 (> (size!34502 (_1!25478 lt!1509090)) 0))))

(assert (=> d!1250603 (= lt!1509090 e!2641482)))

(declare-fun c!722122 () Bool)

(assert (=> d!1250603 (= c!722122 (is-Some!10112 lt!1509091))))

(assert (=> d!1250603 (= lt!1509091 (maxPrefix!4530 thiss!21641 rules!2971 shorterInput!62))))

(assert (=> d!1250603 (= (lexList!2080 thiss!21641 rules!2971 shorterInput!62) lt!1509090)))

(declare-fun b!4252759 () Bool)

(assert (=> b!4252759 (= e!2641482 (tuple2!44689 Nil!47130 shorterInput!62))))

(declare-fun b!4252760 () Bool)

(assert (=> b!4252760 (= e!2641484 e!2641483)))

(declare-fun res!1748261 () Bool)

(assert (=> b!4252760 (= res!1748261 (< (size!34499 (_2!25478 lt!1509090)) (size!34499 shorterInput!62)))))

(assert (=> b!4252760 (=> (not res!1748261) (not e!2641483))))

(declare-fun b!4252761 () Bool)

(assert (=> b!4252761 (= e!2641484 (= (_2!25478 lt!1509090) shorterInput!62))))

(assert (= (and d!1250603 c!722122) b!4252757))

(assert (= (and d!1250603 (not c!722122)) b!4252759))

(assert (= (and d!1250603 c!722123) b!4252760))

(assert (= (and d!1250603 (not c!722123)) b!4252761))

(assert (= (and b!4252760 res!1748261) b!4252758))

(declare-fun m!4837719 () Bool)

(assert (=> b!4252757 m!4837719))

(declare-fun m!4837721 () Bool)

(assert (=> b!4252758 m!4837721))

(declare-fun m!4837723 () Bool)

(assert (=> d!1250603 m!4837723))

(assert (=> d!1250603 m!4837517))

(declare-fun m!4837725 () Bool)

(assert (=> b!4252760 m!4837725))

(assert (=> b!4252760 m!4837537))

(assert (=> b!4252588 d!1250603))

(declare-fun b!4252762 () Bool)

(declare-fun e!2641485 () tuple2!44688)

(declare-fun lt!1509094 () Option!10113)

(declare-fun lt!1509092 () tuple2!44688)

(assert (=> b!4252762 (= e!2641485 (tuple2!44689 (Cons!47130 (_1!25477 (v!41072 lt!1509094)) (_1!25478 lt!1509092)) (_2!25478 lt!1509092)))))

(assert (=> b!4252762 (= lt!1509092 (lexList!2080 thiss!21641 rules!2971 (_2!25477 (v!41072 lt!1509094))))))

(declare-fun b!4252763 () Bool)

(declare-fun e!2641486 () Bool)

(declare-fun lt!1509093 () tuple2!44688)

(assert (=> b!4252763 (= e!2641486 (not (isEmpty!27892 (_1!25478 lt!1509093))))))

(declare-fun d!1250605 () Bool)

(declare-fun e!2641487 () Bool)

(assert (=> d!1250605 e!2641487))

(declare-fun c!722125 () Bool)

(assert (=> d!1250605 (= c!722125 (> (size!34502 (_1!25478 lt!1509093)) 0))))

(assert (=> d!1250605 (= lt!1509093 e!2641485)))

(declare-fun c!722124 () Bool)

(assert (=> d!1250605 (= c!722124 (is-Some!10112 lt!1509094))))

(assert (=> d!1250605 (= lt!1509094 (maxPrefix!4530 thiss!21641 rules!2971 (_2!25477 (v!41072 lt!1509034))))))

(assert (=> d!1250605 (= (lexList!2080 thiss!21641 rules!2971 (_2!25477 (v!41072 lt!1509034))) lt!1509093)))

(declare-fun b!4252764 () Bool)

(assert (=> b!4252764 (= e!2641485 (tuple2!44689 Nil!47130 (_2!25477 (v!41072 lt!1509034))))))

(declare-fun b!4252765 () Bool)

(assert (=> b!4252765 (= e!2641487 e!2641486)))

(declare-fun res!1748262 () Bool)

(assert (=> b!4252765 (= res!1748262 (< (size!34499 (_2!25478 lt!1509093)) (size!34499 (_2!25477 (v!41072 lt!1509034)))))))

(assert (=> b!4252765 (=> (not res!1748262) (not e!2641486))))

(declare-fun b!4252766 () Bool)

(assert (=> b!4252766 (= e!2641487 (= (_2!25478 lt!1509093) (_2!25477 (v!41072 lt!1509034))))))

(assert (= (and d!1250605 c!722124) b!4252762))

(assert (= (and d!1250605 (not c!722124)) b!4252764))

(assert (= (and d!1250605 c!722125) b!4252765))

(assert (= (and d!1250605 (not c!722125)) b!4252766))

(assert (= (and b!4252765 res!1748262) b!4252763))

(declare-fun m!4837727 () Bool)

(assert (=> b!4252762 m!4837727))

(declare-fun m!4837729 () Bool)

(assert (=> b!4252763 m!4837729))

(declare-fun m!4837731 () Bool)

(assert (=> d!1250605 m!4837731))

(declare-fun m!4837733 () Bool)

(assert (=> d!1250605 m!4837733))

(declare-fun m!4837735 () Bool)

(assert (=> b!4252765 m!4837735))

(assert (=> b!4252765 m!4837529))

(assert (=> b!4252588 d!1250605))

(declare-fun d!1250607 () Bool)

(assert (=> d!1250607 (not (= (lexList!2080 thiss!21641 rules!2971 (_2!25477 (v!41072 lt!1509034))) (tuple2!44689 lt!1509033 suffix!1284)))))

(declare-fun lt!1509109 () Unit!66084)

(declare-fun choose!25959 (LexerInterface!7574 List!47253 List!47251 List!47251 List!47254 List!47251) Unit!66084)

(assert (=> d!1250607 (= lt!1509109 (choose!25959 thiss!21641 rules!2971 (_2!25477 (v!41072 lt!1509035)) (_2!25477 (v!41072 lt!1509034)) lt!1509033 suffix!1284))))

(assert (=> d!1250607 (not (isEmpty!27888 rules!2971))))

(assert (=> d!1250607 (= (lemmaLexWithSmallerInputCannotProduceSameResults!175 thiss!21641 rules!2971 (_2!25477 (v!41072 lt!1509035)) (_2!25477 (v!41072 lt!1509034)) lt!1509033 suffix!1284) lt!1509109)))

(declare-fun bs!598712 () Bool)

(assert (= bs!598712 d!1250607))

(assert (=> bs!598712 m!4837555))

(declare-fun m!4837755 () Bool)

(assert (=> bs!598712 m!4837755))

(assert (=> bs!598712 m!4837559))

(assert (=> b!4252588 d!1250607))

(declare-fun d!1250613 () Bool)

(assert (=> d!1250613 (= (isEmpty!27889 (_2!25477 (v!41072 lt!1509035))) (is-Nil!47127 (_2!25477 (v!41072 lt!1509035))))))

(assert (=> b!4252607 d!1250613))

(declare-fun d!1250615 () Bool)

(assert (=> d!1250615 (= (tail!6859 tokens!592) (t!352637 tokens!592))))

(assert (=> b!4252607 d!1250615))

(declare-fun d!1250617 () Bool)

(declare-fun res!1748269 () Bool)

(declare-fun e!2641502 () Bool)

(assert (=> d!1250617 (=> (not res!1748269) (not e!2641502))))

(declare-fun rulesValid!3104 (LexerInterface!7574 List!47253) Bool)

(assert (=> d!1250617 (= res!1748269 (rulesValid!3104 thiss!21641 rules!2971))))

(assert (=> d!1250617 (= (rulesInvariant!6685 thiss!21641 rules!2971) e!2641502)))

(declare-fun b!4252789 () Bool)

(declare-datatypes ((List!47259 0))(
  ( (Nil!47135) (Cons!47135 (h!52555 String!54977) (t!352678 List!47259)) )
))
(declare-fun noDuplicateTag!3265 (LexerInterface!7574 List!47253 List!47259) Bool)

(assert (=> b!4252789 (= e!2641502 (noDuplicateTag!3265 thiss!21641 rules!2971 Nil!47135))))

(assert (= (and d!1250617 res!1748269) b!4252789))

(declare-fun m!4837757 () Bool)

(assert (=> d!1250617 m!4837757))

(declare-fun m!4837759 () Bool)

(assert (=> b!4252789 m!4837759))

(assert (=> b!4252586 d!1250617))

(declare-fun b!4252808 () Bool)

(declare-fun e!2641509 () Option!10113)

(declare-fun call!294001 () Option!10113)

(assert (=> b!4252808 (= e!2641509 call!294001)))

(declare-fun d!1250619 () Bool)

(declare-fun e!2641510 () Bool)

(assert (=> d!1250619 e!2641510))

(declare-fun res!1748289 () Bool)

(assert (=> d!1250619 (=> res!1748289 e!2641510)))

(declare-fun lt!1509124 () Option!10113)

(declare-fun isEmpty!27893 (Option!10113) Bool)

(assert (=> d!1250619 (= res!1748289 (isEmpty!27893 lt!1509124))))

(assert (=> d!1250619 (= lt!1509124 e!2641509)))

(declare-fun c!722136 () Bool)

(assert (=> d!1250619 (= c!722136 (and (is-Cons!47129 rules!2971) (is-Nil!47129 (t!352636 rules!2971))))))

(declare-fun lt!1509122 () Unit!66084)

(declare-fun lt!1509123 () Unit!66084)

(assert (=> d!1250619 (= lt!1509122 lt!1509123)))

(declare-fun isPrefix!4752 (List!47251 List!47251) Bool)

(assert (=> d!1250619 (isPrefix!4752 shorterInput!62 shorterInput!62)))

(declare-fun lemmaIsPrefixRefl!3149 (List!47251 List!47251) Unit!66084)

(assert (=> d!1250619 (= lt!1509123 (lemmaIsPrefixRefl!3149 shorterInput!62 shorterInput!62))))

(declare-fun rulesValidInductive!3003 (LexerInterface!7574 List!47253) Bool)

(assert (=> d!1250619 (rulesValidInductive!3003 thiss!21641 rules!2971)))

(assert (=> d!1250619 (= (maxPrefix!4530 thiss!21641 rules!2971 shorterInput!62) lt!1509124)))

(declare-fun b!4252809 () Bool)

(declare-fun res!1748287 () Bool)

(declare-fun e!2641511 () Bool)

(assert (=> b!4252809 (=> (not res!1748287) (not e!2641511))))

(declare-fun matchR!6474 (Regex!12884 List!47251) Bool)

(declare-fun get!15299 (Option!10113) tuple2!44686)

(assert (=> b!4252809 (= res!1748287 (matchR!6474 (regex!7979 (rule!11115 (_1!25477 (get!15299 lt!1509124)))) (list!16981 (charsOf!5319 (_1!25477 (get!15299 lt!1509124))))))))

(declare-fun b!4252810 () Bool)

(declare-fun lt!1509120 () Option!10113)

(declare-fun lt!1509121 () Option!10113)

(assert (=> b!4252810 (= e!2641509 (ite (and (is-None!10112 lt!1509120) (is-None!10112 lt!1509121)) None!10112 (ite (is-None!10112 lt!1509121) lt!1509120 (ite (is-None!10112 lt!1509120) lt!1509121 (ite (>= (size!34498 (_1!25477 (v!41072 lt!1509120))) (size!34498 (_1!25477 (v!41072 lt!1509121)))) lt!1509120 lt!1509121)))))))

(assert (=> b!4252810 (= lt!1509120 call!294001)))

(assert (=> b!4252810 (= lt!1509121 (maxPrefix!4530 thiss!21641 (t!352636 rules!2971) shorterInput!62))))

(declare-fun b!4252811 () Bool)

(declare-fun res!1748285 () Bool)

(assert (=> b!4252811 (=> (not res!1748285) (not e!2641511))))

(declare-fun apply!10779 (TokenValueInjection!15846 BalanceConc!27974) TokenValue!8209)

(declare-fun seqFromList!5839 (List!47251) BalanceConc!27974)

(assert (=> b!4252811 (= res!1748285 (= (value!247939 (_1!25477 (get!15299 lt!1509124))) (apply!10779 (transformation!7979 (rule!11115 (_1!25477 (get!15299 lt!1509124)))) (seqFromList!5839 (originalCharacters!8323 (_1!25477 (get!15299 lt!1509124)))))))))

(declare-fun b!4252812 () Bool)

(declare-fun res!1748284 () Bool)

(assert (=> b!4252812 (=> (not res!1748284) (not e!2641511))))

(assert (=> b!4252812 (= res!1748284 (= (list!16981 (charsOf!5319 (_1!25477 (get!15299 lt!1509124)))) (originalCharacters!8323 (_1!25477 (get!15299 lt!1509124)))))))

(declare-fun b!4252813 () Bool)

(declare-fun contains!9766 (List!47253 Rule!15758) Bool)

(assert (=> b!4252813 (= e!2641511 (contains!9766 rules!2971 (rule!11115 (_1!25477 (get!15299 lt!1509124)))))))

(declare-fun b!4252814 () Bool)

(assert (=> b!4252814 (= e!2641510 e!2641511)))

(declare-fun res!1748286 () Bool)

(assert (=> b!4252814 (=> (not res!1748286) (not e!2641511))))

(declare-fun isDefined!7467 (Option!10113) Bool)

(assert (=> b!4252814 (= res!1748286 (isDefined!7467 lt!1509124))))

(declare-fun b!4252815 () Bool)

(declare-fun res!1748288 () Bool)

(assert (=> b!4252815 (=> (not res!1748288) (not e!2641511))))

(assert (=> b!4252815 (= res!1748288 (= (++!11988 (list!16981 (charsOf!5319 (_1!25477 (get!15299 lt!1509124)))) (_2!25477 (get!15299 lt!1509124))) shorterInput!62))))

(declare-fun bm!293996 () Bool)

(declare-fun maxPrefixOneRule!3477 (LexerInterface!7574 Rule!15758 List!47251) Option!10113)

(assert (=> bm!293996 (= call!294001 (maxPrefixOneRule!3477 thiss!21641 (h!52549 rules!2971) shorterInput!62))))

(declare-fun b!4252816 () Bool)

(declare-fun res!1748290 () Bool)

(assert (=> b!4252816 (=> (not res!1748290) (not e!2641511))))

(assert (=> b!4252816 (= res!1748290 (< (size!34499 (_2!25477 (get!15299 lt!1509124))) (size!34499 shorterInput!62)))))

(assert (= (and d!1250619 c!722136) b!4252808))

(assert (= (and d!1250619 (not c!722136)) b!4252810))

(assert (= (or b!4252808 b!4252810) bm!293996))

(assert (= (and d!1250619 (not res!1748289)) b!4252814))

(assert (= (and b!4252814 res!1748286) b!4252812))

(assert (= (and b!4252812 res!1748284) b!4252816))

(assert (= (and b!4252816 res!1748290) b!4252815))

(assert (= (and b!4252815 res!1748288) b!4252811))

(assert (= (and b!4252811 res!1748285) b!4252809))

(assert (= (and b!4252809 res!1748287) b!4252813))

(declare-fun m!4837761 () Bool)

(assert (=> b!4252811 m!4837761))

(declare-fun m!4837763 () Bool)

(assert (=> b!4252811 m!4837763))

(assert (=> b!4252811 m!4837763))

(declare-fun m!4837765 () Bool)

(assert (=> b!4252811 m!4837765))

(assert (=> b!4252812 m!4837761))

(declare-fun m!4837767 () Bool)

(assert (=> b!4252812 m!4837767))

(assert (=> b!4252812 m!4837767))

(declare-fun m!4837769 () Bool)

(assert (=> b!4252812 m!4837769))

(assert (=> b!4252813 m!4837761))

(declare-fun m!4837771 () Bool)

(assert (=> b!4252813 m!4837771))

(assert (=> b!4252809 m!4837761))

(assert (=> b!4252809 m!4837767))

(assert (=> b!4252809 m!4837767))

(assert (=> b!4252809 m!4837769))

(assert (=> b!4252809 m!4837769))

(declare-fun m!4837773 () Bool)

(assert (=> b!4252809 m!4837773))

(assert (=> b!4252815 m!4837761))

(assert (=> b!4252815 m!4837767))

(assert (=> b!4252815 m!4837767))

(assert (=> b!4252815 m!4837769))

(assert (=> b!4252815 m!4837769))

(declare-fun m!4837775 () Bool)

(assert (=> b!4252815 m!4837775))

(declare-fun m!4837777 () Bool)

(assert (=> b!4252814 m!4837777))

(declare-fun m!4837779 () Bool)

(assert (=> b!4252810 m!4837779))

(assert (=> b!4252816 m!4837761))

(declare-fun m!4837781 () Bool)

(assert (=> b!4252816 m!4837781))

(assert (=> b!4252816 m!4837537))

(declare-fun m!4837783 () Bool)

(assert (=> bm!293996 m!4837783))

(declare-fun m!4837785 () Bool)

(assert (=> d!1250619 m!4837785))

(declare-fun m!4837787 () Bool)

(assert (=> d!1250619 m!4837787))

(declare-fun m!4837789 () Bool)

(assert (=> d!1250619 m!4837789))

(declare-fun m!4837791 () Bool)

(assert (=> d!1250619 m!4837791))

(assert (=> b!4252597 d!1250619))

(declare-fun b!4252817 () Bool)

(declare-fun e!2641512 () Option!10113)

(declare-fun call!294002 () Option!10113)

(assert (=> b!4252817 (= e!2641512 call!294002)))

(declare-fun d!1250621 () Bool)

(declare-fun e!2641513 () Bool)

(assert (=> d!1250621 e!2641513))

(declare-fun res!1748296 () Bool)

(assert (=> d!1250621 (=> res!1748296 e!2641513)))

(declare-fun lt!1509132 () Option!10113)

(assert (=> d!1250621 (= res!1748296 (isEmpty!27893 lt!1509132))))

(assert (=> d!1250621 (= lt!1509132 e!2641512)))

(declare-fun c!722137 () Bool)

(assert (=> d!1250621 (= c!722137 (and (is-Cons!47129 rules!2971) (is-Nil!47129 (t!352636 rules!2971))))))

(declare-fun lt!1509130 () Unit!66084)

(declare-fun lt!1509131 () Unit!66084)

(assert (=> d!1250621 (= lt!1509130 lt!1509131)))

(assert (=> d!1250621 (isPrefix!4752 longerInput!62 longerInput!62)))

(assert (=> d!1250621 (= lt!1509131 (lemmaIsPrefixRefl!3149 longerInput!62 longerInput!62))))

(assert (=> d!1250621 (rulesValidInductive!3003 thiss!21641 rules!2971)))

(assert (=> d!1250621 (= (maxPrefix!4530 thiss!21641 rules!2971 longerInput!62) lt!1509132)))

(declare-fun b!4252818 () Bool)

(declare-fun res!1748294 () Bool)

(declare-fun e!2641514 () Bool)

(assert (=> b!4252818 (=> (not res!1748294) (not e!2641514))))

(assert (=> b!4252818 (= res!1748294 (matchR!6474 (regex!7979 (rule!11115 (_1!25477 (get!15299 lt!1509132)))) (list!16981 (charsOf!5319 (_1!25477 (get!15299 lt!1509132))))))))

(declare-fun b!4252819 () Bool)

(declare-fun lt!1509128 () Option!10113)

(declare-fun lt!1509129 () Option!10113)

(assert (=> b!4252819 (= e!2641512 (ite (and (is-None!10112 lt!1509128) (is-None!10112 lt!1509129)) None!10112 (ite (is-None!10112 lt!1509129) lt!1509128 (ite (is-None!10112 lt!1509128) lt!1509129 (ite (>= (size!34498 (_1!25477 (v!41072 lt!1509128))) (size!34498 (_1!25477 (v!41072 lt!1509129)))) lt!1509128 lt!1509129)))))))

(assert (=> b!4252819 (= lt!1509128 call!294002)))

(assert (=> b!4252819 (= lt!1509129 (maxPrefix!4530 thiss!21641 (t!352636 rules!2971) longerInput!62))))

(declare-fun b!4252820 () Bool)

(declare-fun res!1748292 () Bool)

(assert (=> b!4252820 (=> (not res!1748292) (not e!2641514))))

(assert (=> b!4252820 (= res!1748292 (= (value!247939 (_1!25477 (get!15299 lt!1509132))) (apply!10779 (transformation!7979 (rule!11115 (_1!25477 (get!15299 lt!1509132)))) (seqFromList!5839 (originalCharacters!8323 (_1!25477 (get!15299 lt!1509132)))))))))

(declare-fun b!4252821 () Bool)

(declare-fun res!1748291 () Bool)

(assert (=> b!4252821 (=> (not res!1748291) (not e!2641514))))

(assert (=> b!4252821 (= res!1748291 (= (list!16981 (charsOf!5319 (_1!25477 (get!15299 lt!1509132)))) (originalCharacters!8323 (_1!25477 (get!15299 lt!1509132)))))))

(declare-fun b!4252822 () Bool)

(assert (=> b!4252822 (= e!2641514 (contains!9766 rules!2971 (rule!11115 (_1!25477 (get!15299 lt!1509132)))))))

(declare-fun b!4252823 () Bool)

(assert (=> b!4252823 (= e!2641513 e!2641514)))

(declare-fun res!1748293 () Bool)

(assert (=> b!4252823 (=> (not res!1748293) (not e!2641514))))

(assert (=> b!4252823 (= res!1748293 (isDefined!7467 lt!1509132))))

(declare-fun b!4252824 () Bool)

(declare-fun res!1748295 () Bool)

(assert (=> b!4252824 (=> (not res!1748295) (not e!2641514))))

(assert (=> b!4252824 (= res!1748295 (= (++!11988 (list!16981 (charsOf!5319 (_1!25477 (get!15299 lt!1509132)))) (_2!25477 (get!15299 lt!1509132))) longerInput!62))))

(declare-fun bm!293997 () Bool)

(assert (=> bm!293997 (= call!294002 (maxPrefixOneRule!3477 thiss!21641 (h!52549 rules!2971) longerInput!62))))

(declare-fun b!4252825 () Bool)

(declare-fun res!1748297 () Bool)

(assert (=> b!4252825 (=> (not res!1748297) (not e!2641514))))

(assert (=> b!4252825 (= res!1748297 (< (size!34499 (_2!25477 (get!15299 lt!1509132))) (size!34499 longerInput!62)))))

(assert (= (and d!1250621 c!722137) b!4252817))

(assert (= (and d!1250621 (not c!722137)) b!4252819))

(assert (= (or b!4252817 b!4252819) bm!293997))

(assert (= (and d!1250621 (not res!1748296)) b!4252823))

(assert (= (and b!4252823 res!1748293) b!4252821))

(assert (= (and b!4252821 res!1748291) b!4252825))

(assert (= (and b!4252825 res!1748297) b!4252824))

(assert (= (and b!4252824 res!1748295) b!4252820))

(assert (= (and b!4252820 res!1748292) b!4252818))

(assert (= (and b!4252818 res!1748294) b!4252822))

(declare-fun m!4837795 () Bool)

(assert (=> b!4252820 m!4837795))

(declare-fun m!4837797 () Bool)

(assert (=> b!4252820 m!4837797))

(assert (=> b!4252820 m!4837797))

(declare-fun m!4837799 () Bool)

(assert (=> b!4252820 m!4837799))

(assert (=> b!4252821 m!4837795))

(declare-fun m!4837801 () Bool)

(assert (=> b!4252821 m!4837801))

(assert (=> b!4252821 m!4837801))

(declare-fun m!4837803 () Bool)

(assert (=> b!4252821 m!4837803))

(assert (=> b!4252822 m!4837795))

(declare-fun m!4837805 () Bool)

(assert (=> b!4252822 m!4837805))

(assert (=> b!4252818 m!4837795))

(assert (=> b!4252818 m!4837801))

(assert (=> b!4252818 m!4837801))

(assert (=> b!4252818 m!4837803))

(assert (=> b!4252818 m!4837803))

(declare-fun m!4837807 () Bool)

(assert (=> b!4252818 m!4837807))

(assert (=> b!4252824 m!4837795))

(assert (=> b!4252824 m!4837801))

(assert (=> b!4252824 m!4837801))

(assert (=> b!4252824 m!4837803))

(assert (=> b!4252824 m!4837803))

(declare-fun m!4837809 () Bool)

(assert (=> b!4252824 m!4837809))

(declare-fun m!4837811 () Bool)

(assert (=> b!4252823 m!4837811))

(declare-fun m!4837813 () Bool)

(assert (=> b!4252819 m!4837813))

(assert (=> b!4252825 m!4837795))

(declare-fun m!4837815 () Bool)

(assert (=> b!4252825 m!4837815))

(assert (=> b!4252825 m!4837535))

(declare-fun m!4837817 () Bool)

(assert (=> bm!293997 m!4837817))

(declare-fun m!4837819 () Bool)

(assert (=> d!1250621 m!4837819))

(declare-fun m!4837821 () Bool)

(assert (=> d!1250621 m!4837821))

(declare-fun m!4837823 () Bool)

(assert (=> d!1250621 m!4837823))

(assert (=> d!1250621 m!4837791))

(assert (=> b!4252597 d!1250621))

(declare-fun b!4252830 () Bool)

(declare-fun e!2641517 () Bool)

(declare-fun tp!1305030 () Bool)

(assert (=> b!4252830 (= e!2641517 (and tp_is_empty!22759 tp!1305030))))

(assert (=> b!4252606 (= tp!1304986 e!2641517)))

(assert (= (and b!4252606 (is-Cons!47127 (t!352634 suffix!1284))) b!4252830))

(declare-fun e!2641520 () Bool)

(assert (=> b!4252599 (= tp!1304978 e!2641520)))

(declare-fun b!4252843 () Bool)

(declare-fun tp!1305042 () Bool)

(assert (=> b!4252843 (= e!2641520 tp!1305042)))

(declare-fun b!4252841 () Bool)

(assert (=> b!4252841 (= e!2641520 tp_is_empty!22759)))

(declare-fun b!4252842 () Bool)

(declare-fun tp!1305044 () Bool)

(declare-fun tp!1305045 () Bool)

(assert (=> b!4252842 (= e!2641520 (and tp!1305044 tp!1305045))))

(declare-fun b!4252844 () Bool)

(declare-fun tp!1305043 () Bool)

(declare-fun tp!1305041 () Bool)

(assert (=> b!4252844 (= e!2641520 (and tp!1305043 tp!1305041))))

(assert (= (and b!4252599 (is-ElementMatch!12884 (regex!7979 (h!52549 rules!2971)))) b!4252841))

(assert (= (and b!4252599 (is-Concat!21094 (regex!7979 (h!52549 rules!2971)))) b!4252842))

(assert (= (and b!4252599 (is-Star!12884 (regex!7979 (h!52549 rules!2971)))) b!4252843))

(assert (= (and b!4252599 (is-Union!12884 (regex!7979 (h!52549 rules!2971)))) b!4252844))

(declare-fun e!2641521 () Bool)

(assert (=> b!4252594 (= tp!1304976 e!2641521)))

(declare-fun b!4252847 () Bool)

(declare-fun tp!1305047 () Bool)

(assert (=> b!4252847 (= e!2641521 tp!1305047)))

(declare-fun b!4252845 () Bool)

(assert (=> b!4252845 (= e!2641521 tp_is_empty!22759)))

(declare-fun b!4252846 () Bool)

(declare-fun tp!1305049 () Bool)

(declare-fun tp!1305050 () Bool)

(assert (=> b!4252846 (= e!2641521 (and tp!1305049 tp!1305050))))

(declare-fun b!4252848 () Bool)

(declare-fun tp!1305048 () Bool)

(declare-fun tp!1305046 () Bool)

(assert (=> b!4252848 (= e!2641521 (and tp!1305048 tp!1305046))))

(assert (= (and b!4252594 (is-ElementMatch!12884 (regex!7979 (rule!11115 (h!52550 tokens!592))))) b!4252845))

(assert (= (and b!4252594 (is-Concat!21094 (regex!7979 (rule!11115 (h!52550 tokens!592))))) b!4252846))

(assert (= (and b!4252594 (is-Star!12884 (regex!7979 (rule!11115 (h!52550 tokens!592))))) b!4252847))

(assert (= (and b!4252594 (is-Union!12884 (regex!7979 (rule!11115 (h!52550 tokens!592))))) b!4252848))

(declare-fun b!4252849 () Bool)

(declare-fun e!2641522 () Bool)

(declare-fun tp!1305051 () Bool)

(assert (=> b!4252849 (= e!2641522 (and tp_is_empty!22759 tp!1305051))))

(assert (=> b!4252605 (= tp!1304975 e!2641522)))

(assert (= (and b!4252605 (is-Cons!47127 (t!352634 shorterInput!62))) b!4252849))

(declare-fun b!4252850 () Bool)

(declare-fun e!2641523 () Bool)

(declare-fun tp!1305052 () Bool)

(assert (=> b!4252850 (= e!2641523 (and tp_is_empty!22759 tp!1305052))))

(assert (=> b!4252603 (= tp!1304981 e!2641523)))

(assert (= (and b!4252603 (is-Cons!47127 (t!352634 longerInput!62))) b!4252850))

(declare-fun b!4252851 () Bool)

(declare-fun e!2641524 () Bool)

(declare-fun tp!1305053 () Bool)

(assert (=> b!4252851 (= e!2641524 (and tp_is_empty!22759 tp!1305053))))

(assert (=> b!4252587 (= tp!1304984 e!2641524)))

(assert (= (and b!4252587 (is-Cons!47127 (originalCharacters!8323 (h!52550 tokens!592)))) b!4252851))

(declare-fun b!4252869 () Bool)

(declare-fun b_free!126475 () Bool)

(declare-fun b_next!127179 () Bool)

(assert (=> b!4252869 (= b_free!126475 (not b_next!127179))))

(declare-fun tp!1305064 () Bool)

(declare-fun b_and!337241 () Bool)

(assert (=> b!4252869 (= tp!1305064 b_and!337241)))

(declare-fun b_free!126477 () Bool)

(declare-fun b_next!127181 () Bool)

(assert (=> b!4252869 (= b_free!126477 (not b_next!127181))))

(declare-fun t!352655 () Bool)

(declare-fun tb!256575 () Bool)

(assert (=> (and b!4252869 (= (toChars!10614 (transformation!7979 (rule!11115 (h!52550 (t!352637 tokens!592))))) (toChars!10614 (transformation!7979 (rule!11115 (h!52550 tokens!592))))) t!352655) tb!256575))

(declare-fun result!312912 () Bool)

(assert (= result!312912 result!312892))

(assert (=> b!4252716 t!352655))

(declare-fun t!352657 () Bool)

(declare-fun tb!256577 () Bool)

(assert (=> (and b!4252869 (= (toChars!10614 (transformation!7979 (rule!11115 (h!52550 (t!352637 tokens!592))))) (toChars!10614 (transformation!7979 (rule!11115 (_1!25477 (v!41072 lt!1509035)))))) t!352657) tb!256577))

(declare-fun result!312914 () Bool)

(assert (= result!312914 result!312898))

(assert (=> d!1250587 t!352657))

(declare-fun tb!256579 () Bool)

(declare-fun t!352659 () Bool)

(assert (=> (and b!4252869 (= (toChars!10614 (transformation!7979 (rule!11115 (h!52550 (t!352637 tokens!592))))) (toChars!10614 (transformation!7979 (rule!11115 (_1!25477 (v!41072 lt!1509034)))))) t!352659) tb!256579))

(declare-fun result!312916 () Bool)

(assert (= result!312916 result!312902))

(assert (=> d!1250593 t!352659))

(declare-fun b_and!337243 () Bool)

(declare-fun tp!1305067 () Bool)

(assert (=> b!4252869 (= tp!1305067 (and (=> t!352655 result!312912) (=> t!352657 result!312914) (=> t!352659 result!312916) b_and!337243))))

(declare-fun tp!1305066 () Bool)

(declare-fun e!2641540 () Bool)

(declare-fun b!4252867 () Bool)

(declare-fun e!2641541 () Bool)

(assert (=> b!4252867 (= e!2641541 (and (inv!21 (value!247939 (h!52550 (t!352637 tokens!592)))) e!2641540 tp!1305066))))

(declare-fun e!2641543 () Bool)

(declare-fun tp!1305068 () Bool)

(declare-fun b!4252866 () Bool)

(assert (=> b!4252866 (= e!2641543 (and (inv!61914 (h!52550 (t!352637 tokens!592))) e!2641541 tp!1305068))))

(declare-fun e!2641544 () Bool)

(assert (=> b!4252869 (= e!2641544 (and tp!1305064 tp!1305067))))

(assert (=> b!4252604 (= tp!1304979 e!2641543)))

(declare-fun b!4252868 () Bool)

(declare-fun tp!1305065 () Bool)

(assert (=> b!4252868 (= e!2641540 (and tp!1305065 (inv!61910 (tag!8843 (rule!11115 (h!52550 (t!352637 tokens!592))))) (inv!61913 (transformation!7979 (rule!11115 (h!52550 (t!352637 tokens!592))))) e!2641544))))

(assert (= b!4252868 b!4252869))

(assert (= b!4252867 b!4252868))

(assert (= b!4252866 b!4252867))

(assert (= (and b!4252604 (is-Cons!47130 (t!352637 tokens!592))) b!4252866))

(declare-fun m!4837825 () Bool)

(assert (=> b!4252867 m!4837825))

(declare-fun m!4837827 () Bool)

(assert (=> b!4252866 m!4837827))

(declare-fun m!4837829 () Bool)

(assert (=> b!4252868 m!4837829))

(declare-fun m!4837831 () Bool)

(assert (=> b!4252868 m!4837831))

(declare-fun b!4252884 () Bool)

(declare-fun b_free!126479 () Bool)

(declare-fun b_next!127183 () Bool)

(assert (=> b!4252884 (= b_free!126479 (not b_next!127183))))

(declare-fun tp!1305080 () Bool)

(declare-fun b_and!337245 () Bool)

(assert (=> b!4252884 (= tp!1305080 b_and!337245)))

(declare-fun b_free!126481 () Bool)

(declare-fun b_next!127185 () Bool)

(assert (=> b!4252884 (= b_free!126481 (not b_next!127185))))

(declare-fun t!352661 () Bool)

(declare-fun tb!256581 () Bool)

(assert (=> (and b!4252884 (= (toChars!10614 (transformation!7979 (h!52549 (t!352636 rules!2971)))) (toChars!10614 (transformation!7979 (rule!11115 (h!52550 tokens!592))))) t!352661) tb!256581))

(declare-fun result!312920 () Bool)

(assert (= result!312920 result!312892))

(assert (=> b!4252716 t!352661))

(declare-fun t!352663 () Bool)

(declare-fun tb!256583 () Bool)

(assert (=> (and b!4252884 (= (toChars!10614 (transformation!7979 (h!52549 (t!352636 rules!2971)))) (toChars!10614 (transformation!7979 (rule!11115 (_1!25477 (v!41072 lt!1509035)))))) t!352663) tb!256583))

(declare-fun result!312922 () Bool)

(assert (= result!312922 result!312898))

(assert (=> d!1250587 t!352663))

(declare-fun tb!256585 () Bool)

(declare-fun t!352665 () Bool)

(assert (=> (and b!4252884 (= (toChars!10614 (transformation!7979 (h!52549 (t!352636 rules!2971)))) (toChars!10614 (transformation!7979 (rule!11115 (_1!25477 (v!41072 lt!1509034)))))) t!352665) tb!256585))

(declare-fun result!312924 () Bool)

(assert (= result!312924 result!312902))

(assert (=> d!1250593 t!352665))

(declare-fun b_and!337247 () Bool)

(declare-fun tp!1305078 () Bool)

(assert (=> b!4252884 (= tp!1305078 (and (=> t!352661 result!312920) (=> t!352663 result!312922) (=> t!352665 result!312924) b_and!337247))))

(declare-fun e!2641556 () Bool)

(assert (=> b!4252884 (= e!2641556 (and tp!1305080 tp!1305078))))

(declare-fun tp!1305079 () Bool)

(declare-fun e!2641555 () Bool)

(declare-fun b!4252883 () Bool)

(assert (=> b!4252883 (= e!2641555 (and tp!1305079 (inv!61910 (tag!8843 (h!52549 (t!352636 rules!2971)))) (inv!61913 (transformation!7979 (h!52549 (t!352636 rules!2971)))) e!2641556))))

(declare-fun b!4252882 () Bool)

(declare-fun e!2641557 () Bool)

(declare-fun tp!1305077 () Bool)

(assert (=> b!4252882 (= e!2641557 (and e!2641555 tp!1305077))))

(assert (=> b!4252602 (= tp!1304977 e!2641557)))

(assert (= b!4252883 b!4252884))

(assert (= b!4252882 b!4252883))

(assert (= (and b!4252602 (is-Cons!47129 (t!352636 rules!2971))) b!4252882))

(declare-fun m!4837833 () Bool)

(assert (=> b!4252883 m!4837833))

(declare-fun m!4837835 () Bool)

(assert (=> b!4252883 m!4837835))

(declare-fun b_lambda!125289 () Bool)

(assert (= b_lambda!125283 (or (and b!4252595 b_free!126461) (and b!4252598 b_free!126465 (= (toChars!10614 (transformation!7979 (h!52549 rules!2971))) (toChars!10614 (transformation!7979 (rule!11115 (h!52550 tokens!592)))))) (and b!4252869 b_free!126477 (= (toChars!10614 (transformation!7979 (rule!11115 (h!52550 (t!352637 tokens!592))))) (toChars!10614 (transformation!7979 (rule!11115 (h!52550 tokens!592)))))) (and b!4252884 b_free!126481 (= (toChars!10614 (transformation!7979 (h!52549 (t!352636 rules!2971)))) (toChars!10614 (transformation!7979 (rule!11115 (h!52550 tokens!592)))))) b_lambda!125289)))

(push 1)

(assert (not d!1250607))

(assert (not b!4252809))

(assert (not b!4252849))

(assert (not b!4252821))

(assert b_and!337247)

(assert b_and!337217)

(assert b_and!337213)

(assert (not d!1250591))

(assert (not b!4252846))

(assert (not b!4252722))

(assert (not b!4252867))

(assert (not b!4252738))

(assert (not b!4252703))

(assert (not tb!256571))

(assert (not b!4252789))

(assert (not bm!293996))

(assert (not b!4252868))

(assert (not b!4252758))

(assert (not b!4252816))

(assert (not b!4252741))

(assert (not b!4252704))

(assert (not b!4252830))

(assert (not d!1250587))

(assert (not b!4252818))

(assert (not b!4252733))

(assert (not b_next!127167))

(assert (not b!4252737))

(assert (not b!4252848))

(assert (not d!1250593))

(assert (not b!4252847))

(assert (not b_next!127185))

(assert (not b!4252740))

(assert (not b!4252711))

(assert (not b!4252844))

(assert (not b!4252850))

(assert (not b!4252682))

(assert (not b!4252811))

(assert (not b_next!127183))

(assert (not b!4252824))

(assert (not b!4252760))

(assert tp_is_empty!22759)

(assert (not d!1250599))

(assert (not b!4252843))

(assert (not b!4252819))

(assert (not b!4252698))

(assert (not b!4252735))

(assert (not d!1250565))

(assert (not b!4252702))

(assert (not b!4252882))

(assert (not b!4252825))

(assert (not b!4252709))

(assert (not b!4252842))

(assert (not d!1250571))

(assert b_and!337241)

(assert (not b!4252732))

(assert (not b!4252813))

(assert (not b!4252823))

(assert (not b!4252716))

(assert (not b!4252812))

(assert (not b!4252762))

(assert (not b!4252696))

(assert (not b!4252706))

(assert (not b!4252717))

(assert (not d!1250603))

(assert (not b!4252815))

(assert b_and!337245)

(assert (not b_next!127181))

(assert (not b!4252765))

(assert (not b!4252814))

(assert b_and!337243)

(assert (not b!4252810))

(assert (not b_lambda!125287))

(assert (not tb!256563))

(assert (not b_lambda!125285))

(assert (not b!4252684))

(assert (not b_next!127163))

(assert (not b_lambda!125289))

(assert (not d!1250589))

(assert (not d!1250585))

(assert (not b!4252757))

(assert (not d!1250605))

(assert (not b!4252820))

(assert (not b!4252763))

(assert b_and!337239)

(assert (not b_next!127179))

(assert (not d!1250573))

(assert (not d!1250583))

(assert (not b_next!127165))

(assert (not b!4252753))

(assert (not b!4252752))

(assert (not b_next!127169))

(assert (not b!4252883))

(assert (not d!1250619))

(assert (not tb!256567))

(assert (not b!4252756))

(assert (not d!1250621))

(assert (not d!1250617))

(assert (not b!4252851))

(assert (not bm!293997))

(assert (not d!1250579))

(assert b_and!337237)

(assert (not b!4252866))

(assert (not b!4252695))

(assert (not b!4252822))

(check-sat)

(pop 1)

(push 1)

(assert b_and!337247)

(assert (not b_next!127167))

(assert (not b_next!127185))

(assert (not b_next!127183))

(assert b_and!337241)

(assert b_and!337245)

(assert (not b_next!127181))

(assert b_and!337243)

(assert (not b_next!127163))

(assert (not b_next!127165))

(assert (not b_next!127169))

(assert b_and!337237)

(assert b_and!337217)

(assert b_and!337213)

(assert b_and!337239)

(assert (not b_next!127179))

(check-sat)

(pop 1)

