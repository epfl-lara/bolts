; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114382 () Bool)

(assert start!114382)

(declare-fun b!1297521 () Bool)

(declare-fun b_free!30755 () Bool)

(declare-fun b_next!31459 () Bool)

(assert (=> b!1297521 (= b_free!30755 (not b_next!31459))))

(declare-fun tp!378615 () Bool)

(declare-fun b_and!86463 () Bool)

(assert (=> b!1297521 (= tp!378615 b_and!86463)))

(declare-fun b_free!30757 () Bool)

(declare-fun b_next!31461 () Bool)

(assert (=> b!1297521 (= b_free!30757 (not b_next!31461))))

(declare-fun tp!378618 () Bool)

(declare-fun b_and!86465 () Bool)

(assert (=> b!1297521 (= tp!378618 b_and!86465)))

(declare-fun b!1297532 () Bool)

(declare-fun b_free!30759 () Bool)

(declare-fun b_next!31463 () Bool)

(assert (=> b!1297532 (= b_free!30759 (not b_next!31463))))

(declare-fun tp!378616 () Bool)

(declare-fun b_and!86467 () Bool)

(assert (=> b!1297532 (= tp!378616 b_and!86467)))

(declare-fun b_free!30761 () Bool)

(declare-fun b_next!31465 () Bool)

(assert (=> b!1297532 (= b_free!30761 (not b_next!31465))))

(declare-fun tp!378614 () Bool)

(declare-fun b_and!86469 () Bool)

(assert (=> b!1297532 (= tp!378614 b_and!86469)))

(declare-fun b!1297517 () Bool)

(declare-fun b_free!30763 () Bool)

(declare-fun b_next!31467 () Bool)

(assert (=> b!1297517 (= b_free!30763 (not b_next!31467))))

(declare-fun tp!378610 () Bool)

(declare-fun b_and!86471 () Bool)

(assert (=> b!1297517 (= tp!378610 b_and!86471)))

(declare-fun b_free!30765 () Bool)

(declare-fun b_next!31469 () Bool)

(assert (=> b!1297517 (= b_free!30765 (not b_next!31469))))

(declare-fun tp!378613 () Bool)

(declare-fun b_and!86473 () Bool)

(assert (=> b!1297517 (= tp!378613 b_and!86473)))

(declare-fun b!1297534 () Bool)

(assert (=> b!1297534 true))

(assert (=> b!1297534 true))

(declare-fun b!1297512 () Bool)

(declare-fun res!581048 () Bool)

(declare-fun e!831874 () Bool)

(assert (=> b!1297512 (=> (not res!581048) (not e!831874))))

(declare-datatypes ((LexerInterface!1932 0))(
  ( (LexerInterfaceExt!1929 (__x!8483 Int)) (Lexer!1930) )
))
(declare-fun thiss!19762 () LexerInterface!1932)

(declare-datatypes ((List!13044 0))(
  ( (Nil!12978) (Cons!12978 (h!18379 (_ BitVec 16)) (t!117467 List!13044)) )
))
(declare-datatypes ((TokenValue!2327 0))(
  ( (FloatLiteralValue!4654 (text!16734 List!13044)) (TokenValueExt!2326 (__x!8484 Int)) (Broken!11635 (value!73361 List!13044)) (Object!2392) (End!2327) (Def!2327) (Underscore!2327) (Match!2327) (Else!2327) (Error!2327) (Case!2327) (If!2327) (Extends!2327) (Abstract!2327) (Class!2327) (Val!2327) (DelimiterValue!4654 (del!2387 List!13044)) (KeywordValue!2333 (value!73362 List!13044)) (CommentValue!4654 (value!73363 List!13044)) (WhitespaceValue!4654 (value!73364 List!13044)) (IndentationValue!2327 (value!73365 List!13044)) (String!15870) (Int32!2327) (Broken!11636 (value!73366 List!13044)) (Boolean!2328) (Unit!19123) (OperatorValue!2330 (op!2387 List!13044)) (IdentifierValue!4654 (value!73367 List!13044)) (IdentifierValue!4655 (value!73368 List!13044)) (WhitespaceValue!4655 (value!73369 List!13044)) (True!4654) (False!4654) (Broken!11637 (value!73370 List!13044)) (Broken!11638 (value!73371 List!13044)) (True!4655) (RightBrace!2327) (RightBracket!2327) (Colon!2327) (Null!2327) (Comma!2327) (LeftBracket!2327) (False!4655) (LeftBrace!2327) (ImaginaryLiteralValue!2327 (text!16735 List!13044)) (StringLiteralValue!6981 (value!73372 List!13044)) (EOFValue!2327 (value!73373 List!13044)) (IdentValue!2327 (value!73374 List!13044)) (DelimiterValue!4655 (value!73375 List!13044)) (DedentValue!2327 (value!73376 List!13044)) (NewLineValue!2327 (value!73377 List!13044)) (IntegerValue!6981 (value!73378 (_ BitVec 32)) (text!16736 List!13044)) (IntegerValue!6982 (value!73379 Int) (text!16737 List!13044)) (Times!2327) (Or!2327) (Equal!2327) (Minus!2327) (Broken!11639 (value!73380 List!13044)) (And!2327) (Div!2327) (LessEqual!2327) (Mod!2327) (Concat!5878) (Not!2327) (Plus!2327) (SpaceValue!2327 (value!73381 List!13044)) (IntegerValue!6983 (value!73382 Int) (text!16738 List!13044)) (StringLiteralValue!6982 (text!16739 List!13044)) (FloatLiteralValue!4655 (text!16740 List!13044)) (BytesLiteralValue!2327 (value!73383 List!13044)) (CommentValue!4655 (value!73384 List!13044)) (StringLiteralValue!6983 (value!73385 List!13044)) (ErrorTokenValue!2327 (msg!2388 List!13044)) )
))
(declare-datatypes ((C!7392 0))(
  ( (C!7393 (val!4256 Int)) )
))
(declare-datatypes ((List!13045 0))(
  ( (Nil!12979) (Cons!12979 (h!18380 C!7392) (t!117468 List!13045)) )
))
(declare-datatypes ((IArray!8531 0))(
  ( (IArray!8532 (innerList!4323 List!13045)) )
))
(declare-datatypes ((Conc!4263 0))(
  ( (Node!4263 (left!11163 Conc!4263) (right!11493 Conc!4263) (csize!8756 Int) (cheight!4474 Int)) (Leaf!6578 (xs!6978 IArray!8531) (csize!8757 Int)) (Empty!4263) )
))
(declare-datatypes ((BalanceConc!8466 0))(
  ( (BalanceConc!8467 (c!213607 Conc!4263)) )
))
(declare-datatypes ((Regex!3551 0))(
  ( (ElementMatch!3551 (c!213608 C!7392)) (Concat!5879 (regOne!7614 Regex!3551) (regTwo!7614 Regex!3551)) (EmptyExpr!3551) (Star!3551 (reg!3880 Regex!3551)) (EmptyLang!3551) (Union!3551 (regOne!7615 Regex!3551) (regTwo!7615 Regex!3551)) )
))
(declare-datatypes ((String!15871 0))(
  ( (String!15872 (value!73386 String)) )
))
(declare-datatypes ((TokenValueInjection!4314 0))(
  ( (TokenValueInjection!4315 (toValue!3444 Int) (toChars!3303 Int)) )
))
(declare-datatypes ((Rule!4274 0))(
  ( (Rule!4275 (regex!2237 Regex!3551) (tag!2499 String!15871) (isSeparator!2237 Bool) (transformation!2237 TokenValueInjection!4314)) )
))
(declare-datatypes ((List!13046 0))(
  ( (Nil!12980) (Cons!12980 (h!18381 Rule!4274) (t!117469 List!13046)) )
))
(declare-fun rules!2550 () List!13046)

(declare-datatypes ((Token!4136 0))(
  ( (Token!4137 (value!73387 TokenValue!2327) (rule!3976 Rule!4274) (size!10606 Int) (originalCharacters!3099 List!13045)) )
))
(declare-fun t2!34 () Token!4136)

(declare-fun rulesProduceIndividualToken!901 (LexerInterface!1932 List!13046 Token!4136) Bool)

(assert (=> b!1297512 (= res!581048 (rulesProduceIndividualToken!901 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1297513 () Bool)

(declare-fun e!831875 () Bool)

(assert (=> b!1297513 (= e!831875 true)))

(declare-fun lt!426794 () Bool)

(declare-fun lt!426792 () List!13045)

(declare-fun lt!426791 () C!7392)

(declare-fun contains!2173 (List!13045 C!7392) Bool)

(assert (=> b!1297513 (= lt!426794 (contains!2173 lt!426792 lt!426791))))

(declare-fun b!1297514 () Bool)

(declare-fun res!581056 () Bool)

(assert (=> b!1297514 (=> res!581056 e!831875)))

(declare-fun lt!426790 () C!7392)

(assert (=> b!1297514 (= res!581056 (not (contains!2173 lt!426792 lt!426790)))))

(declare-fun tp!378617 () Bool)

(declare-fun e!831882 () Bool)

(declare-fun t1!34 () Token!4136)

(declare-fun e!831868 () Bool)

(declare-fun b!1297515 () Bool)

(declare-fun inv!17403 (String!15871) Bool)

(declare-fun inv!17406 (TokenValueInjection!4314) Bool)

(assert (=> b!1297515 (= e!831882 (and tp!378617 (inv!17403 (tag!2499 (rule!3976 t1!34))) (inv!17406 (transformation!2237 (rule!3976 t1!34))) e!831868))))

(declare-fun e!831870 () Bool)

(declare-fun b!1297516 () Bool)

(declare-fun tp!378620 () Bool)

(declare-fun e!831881 () Bool)

(assert (=> b!1297516 (= e!831881 (and tp!378620 (inv!17403 (tag!2499 (h!18381 rules!2550))) (inv!17406 (transformation!2237 (h!18381 rules!2550))) e!831870))))

(declare-fun res!581051 () Bool)

(assert (=> start!114382 (=> (not res!581051) (not e!831874))))

(get-info :version)

(assert (=> start!114382 (= res!581051 ((_ is Lexer!1930) thiss!19762))))

(assert (=> start!114382 e!831874))

(assert (=> start!114382 true))

(declare-fun e!831869 () Bool)

(assert (=> start!114382 e!831869))

(declare-fun e!831877 () Bool)

(declare-fun inv!17407 (Token!4136) Bool)

(assert (=> start!114382 (and (inv!17407 t1!34) e!831877)))

(declare-fun e!831880 () Bool)

(assert (=> start!114382 (and (inv!17407 t2!34) e!831880)))

(declare-fun e!831879 () Bool)

(assert (=> b!1297517 (= e!831879 (and tp!378610 tp!378613))))

(declare-fun b!1297518 () Bool)

(declare-fun res!581060 () Bool)

(assert (=> b!1297518 (=> (not res!581060) (not e!831874))))

(declare-fun isEmpty!7711 (List!13046) Bool)

(assert (=> b!1297518 (= res!581060 (not (isEmpty!7711 rules!2550)))))

(declare-fun b!1297519 () Bool)

(declare-fun tp!378611 () Bool)

(assert (=> b!1297519 (= e!831869 (and e!831881 tp!378611))))

(declare-fun b!1297520 () Bool)

(declare-fun res!581053 () Bool)

(assert (=> b!1297520 (=> (not res!581053) (not e!831874))))

(assert (=> b!1297520 (= res!581053 (not (= (isSeparator!2237 (rule!3976 t1!34)) (isSeparator!2237 (rule!3976 t2!34)))))))

(assert (=> b!1297521 (= e!831870 (and tp!378615 tp!378618))))

(declare-fun b!1297522 () Bool)

(declare-fun res!581059 () Bool)

(assert (=> b!1297522 (=> (not res!581059) (not e!831874))))

(assert (=> b!1297522 (= res!581059 (rulesProduceIndividualToken!901 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1297523 () Bool)

(declare-fun res!581057 () Bool)

(assert (=> b!1297523 (=> res!581057 e!831875)))

(declare-fun lt!426795 () List!13045)

(assert (=> b!1297523 (= res!581057 (not (contains!2173 lt!426795 lt!426791)))))

(declare-fun e!831864 () Bool)

(declare-fun b!1297524 () Bool)

(declare-fun tp!378619 () Bool)

(declare-fun inv!21 (TokenValue!2327) Bool)

(assert (=> b!1297524 (= e!831880 (and (inv!21 (value!73387 t2!34)) e!831864 tp!378619))))

(declare-fun b!1297525 () Bool)

(declare-fun tp!378612 () Bool)

(assert (=> b!1297525 (= e!831877 (and (inv!21 (value!73387 t1!34)) e!831882 tp!378612))))

(declare-fun b!1297526 () Bool)

(declare-fun res!581047 () Bool)

(assert (=> b!1297526 (=> (not res!581047) (not e!831874))))

(declare-fun rulesInvariant!1802 (LexerInterface!1932 List!13046) Bool)

(assert (=> b!1297526 (= res!581047 (rulesInvariant!1802 thiss!19762 rules!2550))))

(declare-fun b!1297527 () Bool)

(declare-fun res!581055 () Bool)

(declare-fun e!831867 () Bool)

(assert (=> b!1297527 (=> (not res!581055) (not e!831867))))

(declare-fun separableTokensPredicate!215 (LexerInterface!1932 Token!4136 Token!4136 List!13046) Bool)

(assert (=> b!1297527 (= res!581055 (not (separableTokensPredicate!215 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1297528 () Bool)

(declare-fun res!581050 () Bool)

(assert (=> b!1297528 (=> (not res!581050) (not e!831867))))

(declare-fun sepAndNonSepRulesDisjointChars!610 (List!13046 List!13046) Bool)

(assert (=> b!1297528 (= res!581050 (sepAndNonSepRulesDisjointChars!610 rules!2550 rules!2550))))

(declare-fun b!1297529 () Bool)

(assert (=> b!1297529 (= e!831874 e!831867)))

(declare-fun res!581049 () Bool)

(assert (=> b!1297529 (=> (not res!581049) (not e!831867))))

(declare-fun lt!426796 () BalanceConc!8466)

(declare-fun size!10607 (BalanceConc!8466) Int)

(assert (=> b!1297529 (= res!581049 (> (size!10607 lt!426796) 0))))

(declare-fun charsOf!1209 (Token!4136) BalanceConc!8466)

(assert (=> b!1297529 (= lt!426796 (charsOf!1209 t2!34))))

(declare-fun b!1297530 () Bool)

(declare-fun e!831872 () Bool)

(assert (=> b!1297530 (= e!831872 e!831875)))

(declare-fun res!581046 () Bool)

(assert (=> b!1297530 (=> res!581046 e!831875)))

(assert (=> b!1297530 (= res!581046 (not (contains!2173 lt!426795 lt!426790)))))

(declare-fun lt!426789 () BalanceConc!8466)

(declare-fun apply!2873 (BalanceConc!8466 Int) C!7392)

(assert (=> b!1297530 (= lt!426790 (apply!2873 lt!426789 0))))

(declare-fun b!1297531 () Bool)

(declare-fun tp!378609 () Bool)

(assert (=> b!1297531 (= e!831864 (and tp!378609 (inv!17403 (tag!2499 (rule!3976 t2!34))) (inv!17406 (transformation!2237 (rule!3976 t2!34))) e!831879))))

(assert (=> b!1297532 (= e!831868 (and tp!378616 tp!378614))))

(declare-fun b!1297533 () Bool)

(declare-fun e!831866 () Bool)

(assert (=> b!1297533 (= e!831866 e!831872)))

(declare-fun res!581058 () Bool)

(assert (=> b!1297533 (=> res!581058 e!831872)))

(declare-fun ++!3298 (List!13045 List!13045) List!13045)

(declare-fun getSuffix!407 (List!13045 List!13045) List!13045)

(assert (=> b!1297533 (= res!581058 (not (= lt!426792 (++!3298 lt!426795 (getSuffix!407 lt!426792 lt!426795)))))))

(declare-fun lambda!51009 () Int)

(declare-fun pickWitness!14 (Int) List!13045)

(assert (=> b!1297533 (= lt!426792 (pickWitness!14 lambda!51009))))

(declare-fun e!831873 () Bool)

(assert (=> b!1297534 (= e!831873 (not e!831866))))

(declare-fun res!581052 () Bool)

(assert (=> b!1297534 (=> res!581052 e!831866)))

(declare-fun Exists!709 (Int) Bool)

(assert (=> b!1297534 (= res!581052 (not (Exists!709 lambda!51009)))))

(assert (=> b!1297534 (Exists!709 lambda!51009)))

(declare-datatypes ((Unit!19124 0))(
  ( (Unit!19125) )
))
(declare-fun lt!426793 () Unit!19124)

(declare-fun lt!426798 () Regex!3551)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!27 (Regex!3551 List!13045) Unit!19124)

(assert (=> b!1297534 (= lt!426793 (lemmaPrefixMatchThenExistsStringThatMatches!27 lt!426798 lt!426795))))

(declare-fun b!1297535 () Bool)

(assert (=> b!1297535 (= e!831867 e!831873)))

(declare-fun res!581054 () Bool)

(assert (=> b!1297535 (=> (not res!581054) (not e!831873))))

(declare-fun prefixMatch!64 (Regex!3551 List!13045) Bool)

(assert (=> b!1297535 (= res!581054 (prefixMatch!64 lt!426798 lt!426795))))

(declare-fun rulesRegex!122 (LexerInterface!1932 List!13046) Regex!3551)

(assert (=> b!1297535 (= lt!426798 (rulesRegex!122 thiss!19762 rules!2550))))

(declare-fun lt!426797 () List!13045)

(assert (=> b!1297535 (= lt!426795 (++!3298 lt!426797 (Cons!12979 lt!426791 Nil!12979)))))

(assert (=> b!1297535 (= lt!426791 (apply!2873 lt!426796 0))))

(declare-fun list!4859 (BalanceConc!8466) List!13045)

(assert (=> b!1297535 (= lt!426797 (list!4859 lt!426789))))

(assert (=> b!1297535 (= lt!426789 (charsOf!1209 t1!34))))

(assert (= (and start!114382 res!581051) b!1297518))

(assert (= (and b!1297518 res!581060) b!1297526))

(assert (= (and b!1297526 res!581047) b!1297522))

(assert (= (and b!1297522 res!581059) b!1297512))

(assert (= (and b!1297512 res!581048) b!1297520))

(assert (= (and b!1297520 res!581053) b!1297529))

(assert (= (and b!1297529 res!581049) b!1297528))

(assert (= (and b!1297528 res!581050) b!1297527))

(assert (= (and b!1297527 res!581055) b!1297535))

(assert (= (and b!1297535 res!581054) b!1297534))

(assert (= (and b!1297534 (not res!581052)) b!1297533))

(assert (= (and b!1297533 (not res!581058)) b!1297530))

(assert (= (and b!1297530 (not res!581046)) b!1297514))

(assert (= (and b!1297514 (not res!581056)) b!1297523))

(assert (= (and b!1297523 (not res!581057)) b!1297513))

(assert (= b!1297516 b!1297521))

(assert (= b!1297519 b!1297516))

(assert (= (and start!114382 ((_ is Cons!12980) rules!2550)) b!1297519))

(assert (= b!1297515 b!1297532))

(assert (= b!1297525 b!1297515))

(assert (= start!114382 b!1297525))

(assert (= b!1297531 b!1297517))

(assert (= b!1297524 b!1297531))

(assert (= start!114382 b!1297524))

(declare-fun m!1448903 () Bool)

(assert (=> b!1297515 m!1448903))

(declare-fun m!1448905 () Bool)

(assert (=> b!1297515 m!1448905))

(declare-fun m!1448907 () Bool)

(assert (=> b!1297525 m!1448907))

(declare-fun m!1448909 () Bool)

(assert (=> b!1297512 m!1448909))

(declare-fun m!1448911 () Bool)

(assert (=> b!1297535 m!1448911))

(declare-fun m!1448913 () Bool)

(assert (=> b!1297535 m!1448913))

(declare-fun m!1448915 () Bool)

(assert (=> b!1297535 m!1448915))

(declare-fun m!1448917 () Bool)

(assert (=> b!1297535 m!1448917))

(declare-fun m!1448919 () Bool)

(assert (=> b!1297535 m!1448919))

(declare-fun m!1448921 () Bool)

(assert (=> b!1297535 m!1448921))

(declare-fun m!1448923 () Bool)

(assert (=> b!1297516 m!1448923))

(declare-fun m!1448925 () Bool)

(assert (=> b!1297516 m!1448925))

(declare-fun m!1448927 () Bool)

(assert (=> b!1297522 m!1448927))

(declare-fun m!1448929 () Bool)

(assert (=> b!1297527 m!1448929))

(declare-fun m!1448931 () Bool)

(assert (=> b!1297513 m!1448931))

(declare-fun m!1448933 () Bool)

(assert (=> b!1297531 m!1448933))

(declare-fun m!1448935 () Bool)

(assert (=> b!1297531 m!1448935))

(declare-fun m!1448937 () Bool)

(assert (=> b!1297524 m!1448937))

(declare-fun m!1448939 () Bool)

(assert (=> b!1297514 m!1448939))

(declare-fun m!1448941 () Bool)

(assert (=> b!1297526 m!1448941))

(declare-fun m!1448943 () Bool)

(assert (=> b!1297518 m!1448943))

(declare-fun m!1448945 () Bool)

(assert (=> b!1297529 m!1448945))

(declare-fun m!1448947 () Bool)

(assert (=> b!1297529 m!1448947))

(declare-fun m!1448949 () Bool)

(assert (=> start!114382 m!1448949))

(declare-fun m!1448951 () Bool)

(assert (=> start!114382 m!1448951))

(declare-fun m!1448953 () Bool)

(assert (=> b!1297523 m!1448953))

(declare-fun m!1448955 () Bool)

(assert (=> b!1297530 m!1448955))

(declare-fun m!1448957 () Bool)

(assert (=> b!1297530 m!1448957))

(declare-fun m!1448959 () Bool)

(assert (=> b!1297533 m!1448959))

(assert (=> b!1297533 m!1448959))

(declare-fun m!1448961 () Bool)

(assert (=> b!1297533 m!1448961))

(declare-fun m!1448963 () Bool)

(assert (=> b!1297533 m!1448963))

(declare-fun m!1448965 () Bool)

(assert (=> b!1297528 m!1448965))

(declare-fun m!1448967 () Bool)

(assert (=> b!1297534 m!1448967))

(assert (=> b!1297534 m!1448967))

(declare-fun m!1448969 () Bool)

(assert (=> b!1297534 m!1448969))

(check-sat (not b!1297514) (not start!114382) (not b!1297527) (not b_next!31469) (not b_next!31465) (not b_next!31463) (not b!1297515) (not b!1297528) (not b_next!31459) (not b!1297534) (not b!1297523) (not b!1297529) (not b!1297519) (not b_next!31461) (not b!1297516) b_and!86463 (not b!1297525) (not b!1297530) (not b!1297533) (not b!1297531) (not b!1297524) (not b!1297535) (not b!1297522) b_and!86465 b_and!86469 (not b!1297518) (not b_next!31467) (not b!1297526) (not b!1297513) (not b!1297512) b_and!86471 b_and!86467 b_and!86473)
(check-sat (not b_next!31469) b_and!86465 b_and!86469 (not b_next!31465) (not b_next!31463) (not b_next!31459) (not b_next!31467) b_and!86471 (not b_next!31461) b_and!86463 b_and!86467 b_and!86473)
