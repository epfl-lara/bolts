; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!407372 () Bool)

(assert start!407372)

(declare-fun b!4253526 () Bool)

(declare-fun b_free!126523 () Bool)

(declare-fun b_next!127227 () Bool)

(assert (=> b!4253526 (= b_free!126523 (not b_next!127227))))

(declare-fun tp!1305359 () Bool)

(declare-fun b_and!337325 () Bool)

(assert (=> b!4253526 (= tp!1305359 b_and!337325)))

(declare-fun b_free!126525 () Bool)

(declare-fun b_next!127229 () Bool)

(assert (=> b!4253526 (= b_free!126525 (not b_next!127229))))

(declare-fun tp!1305352 () Bool)

(declare-fun b_and!337327 () Bool)

(assert (=> b!4253526 (= tp!1305352 b_and!337327)))

(declare-fun b!4253525 () Bool)

(declare-fun b_free!126527 () Bool)

(declare-fun b_next!127231 () Bool)

(assert (=> b!4253525 (= b_free!126527 (not b_next!127231))))

(declare-fun tp!1305358 () Bool)

(declare-fun b_and!337329 () Bool)

(assert (=> b!4253525 (= tp!1305358 b_and!337329)))

(declare-fun b_free!126529 () Bool)

(declare-fun b_next!127233 () Bool)

(assert (=> b!4253525 (= b_free!126529 (not b_next!127233))))

(declare-fun tp!1305361 () Bool)

(declare-fun b_and!337331 () Bool)

(assert (=> b!4253525 (= tp!1305361 b_and!337331)))

(declare-fun b!4253523 () Bool)

(declare-fun e!2641992 () Bool)

(declare-fun e!2641984 () Bool)

(assert (=> b!4253523 (= e!2641992 e!2641984)))

(declare-fun res!1748545 () Bool)

(assert (=> b!4253523 (=> (not res!1748545) (not e!2641984))))

(declare-datatypes ((List!47271 0))(
  ( (Nil!47147) (Cons!47147 (h!52567 (_ BitVec 16)) (t!352750 List!47271)) )
))
(declare-datatypes ((TokenValue!8213 0))(
  ( (FloatLiteralValue!16426 (text!57936 List!47271)) (TokenValueExt!8212 (__x!28649 Int)) (Broken!41065 (value!248027 List!47271)) (Object!8336) (End!8213) (Def!8213) (Underscore!8213) (Match!8213) (Else!8213) (Error!8213) (Case!8213) (If!8213) (Extends!8213) (Abstract!8213) (Class!8213) (Val!8213) (DelimiterValue!16426 (del!8273 List!47271)) (KeywordValue!8219 (value!248028 List!47271)) (CommentValue!16426 (value!248029 List!47271)) (WhitespaceValue!16426 (value!248030 List!47271)) (IndentationValue!8213 (value!248031 List!47271)) (String!54996) (Int32!8213) (Broken!41066 (value!248032 List!47271)) (Boolean!8214) (Unit!66093) (OperatorValue!8216 (op!8273 List!47271)) (IdentifierValue!16426 (value!248033 List!47271)) (IdentifierValue!16427 (value!248034 List!47271)) (WhitespaceValue!16427 (value!248035 List!47271)) (True!16426) (False!16426) (Broken!41067 (value!248036 List!47271)) (Broken!41068 (value!248037 List!47271)) (True!16427) (RightBrace!8213) (RightBracket!8213) (Colon!8213) (Null!8213) (Comma!8213) (LeftBracket!8213) (False!16427) (LeftBrace!8213) (ImaginaryLiteralValue!8213 (text!57937 List!47271)) (StringLiteralValue!24639 (value!248038 List!47271)) (EOFValue!8213 (value!248039 List!47271)) (IdentValue!8213 (value!248040 List!47271)) (DelimiterValue!16427 (value!248041 List!47271)) (DedentValue!8213 (value!248042 List!47271)) (NewLineValue!8213 (value!248043 List!47271)) (IntegerValue!24639 (value!248044 (_ BitVec 32)) (text!57938 List!47271)) (IntegerValue!24640 (value!248045 Int) (text!57939 List!47271)) (Times!8213) (Or!8213) (Equal!8213) (Minus!8213) (Broken!41069 (value!248046 List!47271)) (And!8213) (Div!8213) (LessEqual!8213) (Mod!8213) (Concat!21101) (Not!8213) (Plus!8213) (SpaceValue!8213 (value!248047 List!47271)) (IntegerValue!24641 (value!248048 Int) (text!57940 List!47271)) (StringLiteralValue!24640 (text!57941 List!47271)) (FloatLiteralValue!16427 (text!57942 List!47271)) (BytesLiteralValue!8213 (value!248049 List!47271)) (CommentValue!16427 (value!248050 List!47271)) (StringLiteralValue!24641 (value!248051 List!47271)) (ErrorTokenValue!8213 (msg!8274 List!47271)) )
))
(declare-datatypes ((C!25974 0))(
  ( (C!25975 (val!15177 Int)) )
))
(declare-datatypes ((List!47272 0))(
  ( (Nil!47148) (Cons!47148 (h!52568 C!25974) (t!352751 List!47272)) )
))
(declare-datatypes ((IArray!28393 0))(
  ( (IArray!28394 (innerList!14254 List!47272)) )
))
(declare-datatypes ((Conc!14194 0))(
  ( (Node!14194 (left!34952 Conc!14194) (right!35282 Conc!14194) (csize!28618 Int) (cheight!14405 Int)) (Leaf!21945 (xs!17500 IArray!28393) (csize!28619 Int)) (Empty!14194) )
))
(declare-datatypes ((BalanceConc!27982 0))(
  ( (BalanceConc!27983 (c!722221 Conc!14194)) )
))
(declare-datatypes ((TokenValueInjection!15854 0))(
  ( (TokenValueInjection!15855 (toValue!10759 Int) (toChars!10618 Int)) )
))
(declare-datatypes ((Regex!12888 0))(
  ( (ElementMatch!12888 (c!722222 C!25974)) (Concat!21102 (regOne!26288 Regex!12888) (regTwo!26288 Regex!12888)) (EmptyExpr!12888) (Star!12888 (reg!13217 Regex!12888)) (EmptyLang!12888) (Union!12888 (regOne!26289 Regex!12888) (regTwo!26289 Regex!12888)) )
))
(declare-datatypes ((String!54997 0))(
  ( (String!54998 (value!248052 String)) )
))
(declare-datatypes ((Rule!15766 0))(
  ( (Rule!15767 (regex!7983 Regex!12888) (tag!8847 String!54997) (isSeparator!7983 Bool) (transformation!7983 TokenValueInjection!15854)) )
))
(declare-datatypes ((Token!14592 0))(
  ( (Token!14593 (value!248053 TokenValue!8213) (rule!11119 Rule!15766) (size!34509 Int) (originalCharacters!8327 List!47272)) )
))
(declare-datatypes ((tuple2!44702 0))(
  ( (tuple2!44703 (_1!25485 Token!14592) (_2!25485 List!47272)) )
))
(declare-datatypes ((Option!10117 0))(
  ( (None!10116) (Some!10116 (v!41076 tuple2!44702)) )
))
(declare-fun lt!1509285 () Option!10117)

(declare-fun lt!1509286 () Option!10117)

(assert (=> b!4253523 (= res!1748545 (and (or (not (is-Some!10116 lt!1509285)) (not (is-Some!10116 lt!1509286))) (is-Some!10116 lt!1509285) (is-None!10116 lt!1509286)))))

(declare-datatypes ((LexerInterface!7578 0))(
  ( (LexerInterfaceExt!7575 (__x!28650 Int)) (Lexer!7576) )
))
(declare-fun thiss!21641 () LexerInterface!7578)

(declare-datatypes ((List!47273 0))(
  ( (Nil!47149) (Cons!47149 (h!52569 Rule!15766) (t!352752 List!47273)) )
))
(declare-fun rules!2971 () List!47273)

(declare-fun shorterInput!62 () List!47272)

(declare-fun maxPrefix!4534 (LexerInterface!7578 List!47273 List!47272) Option!10117)

(assert (=> b!4253523 (= lt!1509286 (maxPrefix!4534 thiss!21641 rules!2971 shorterInput!62))))

(declare-fun longerInput!62 () List!47272)

(assert (=> b!4253523 (= lt!1509285 (maxPrefix!4534 thiss!21641 rules!2971 longerInput!62))))

(declare-fun b!4253524 () Bool)

(declare-datatypes ((List!47274 0))(
  ( (Nil!47150) (Cons!47150 (h!52570 Token!14592) (t!352753 List!47274)) )
))
(declare-datatypes ((tuple2!44704 0))(
  ( (tuple2!44705 (_1!25486 List!47274) (_2!25486 List!47272)) )
))
(declare-fun lt!1509287 () tuple2!44704)

(declare-fun lexList!2084 (LexerInterface!7578 List!47273 List!47272) tuple2!44704)

(assert (=> b!4253524 (= e!2641984 (= (lexList!2084 thiss!21641 rules!2971 shorterInput!62) lt!1509287))))

(declare-fun e!2641980 () Bool)

(assert (=> b!4253525 (= e!2641980 (and tp!1305358 tp!1305361))))

(declare-fun res!1748549 () Bool)

(declare-fun e!2641989 () Bool)

(assert (=> start!407372 (=> (not res!1748549) (not e!2641989))))

(assert (=> start!407372 (= res!1748549 (is-Lexer!7576 thiss!21641))))

(assert (=> start!407372 e!2641989))

(assert (=> start!407372 true))

(declare-fun e!2641982 () Bool)

(assert (=> start!407372 e!2641982))

(declare-fun e!2641993 () Bool)

(assert (=> start!407372 e!2641993))

(declare-fun e!2641979 () Bool)

(assert (=> start!407372 e!2641979))

(declare-fun e!2641981 () Bool)

(assert (=> start!407372 e!2641981))

(declare-fun e!2641990 () Bool)

(assert (=> start!407372 e!2641990))

(declare-fun e!2641994 () Bool)

(assert (=> b!4253526 (= e!2641994 (and tp!1305359 tp!1305352))))

(declare-fun b!4253527 () Bool)

(declare-fun tp_is_empty!22767 () Bool)

(declare-fun tp!1305353 () Bool)

(assert (=> b!4253527 (= e!2641982 (and tp_is_empty!22767 tp!1305353))))

(declare-fun b!4253528 () Bool)

(declare-fun res!1748550 () Bool)

(assert (=> b!4253528 (=> (not res!1748550) (not e!2641989))))

(declare-fun isEmpty!27901 (List!47272) Bool)

(assert (=> b!4253528 (= res!1748550 (not (isEmpty!27901 longerInput!62)))))

(declare-fun b!4253529 () Bool)

(declare-fun res!1748546 () Bool)

(assert (=> b!4253529 (=> (not res!1748546) (not e!2641989))))

(declare-fun size!34510 (List!47272) Int)

(assert (=> b!4253529 (= res!1748546 (> (size!34510 longerInput!62) (size!34510 shorterInput!62)))))

(declare-fun b!4253530 () Bool)

(declare-fun tp!1305360 () Bool)

(assert (=> b!4253530 (= e!2641993 (and tp_is_empty!22767 tp!1305360))))

(declare-fun b!4253531 () Bool)

(declare-fun res!1748548 () Bool)

(assert (=> b!4253531 (=> (not res!1748548) (not e!2641989))))

(declare-fun isEmpty!27902 (List!47273) Bool)

(assert (=> b!4253531 (= res!1748548 (not (isEmpty!27902 rules!2971)))))

(declare-fun e!2641985 () Bool)

(declare-fun b!4253532 () Bool)

(declare-fun tokens!592 () List!47274)

(declare-fun tp!1305357 () Bool)

(declare-fun inv!61935 (Token!14592) Bool)

(assert (=> b!4253532 (= e!2641979 (and (inv!61935 (h!52570 tokens!592)) e!2641985 tp!1305357))))

(declare-fun tp!1305351 () Bool)

(declare-fun b!4253533 () Bool)

(declare-fun e!2641986 () Bool)

(declare-fun inv!61932 (String!54997) Bool)

(declare-fun inv!61936 (TokenValueInjection!15854) Bool)

(assert (=> b!4253533 (= e!2641986 (and tp!1305351 (inv!61932 (tag!8847 (rule!11119 (h!52570 tokens!592)))) (inv!61936 (transformation!7983 (rule!11119 (h!52570 tokens!592)))) e!2641980))))

(declare-fun b!4253534 () Bool)

(declare-fun res!1748544 () Bool)

(assert (=> b!4253534 (=> (not res!1748544) (not e!2641989))))

(declare-fun rulesInvariant!6689 (LexerInterface!7578 List!47273) Bool)

(assert (=> b!4253534 (= res!1748544 (rulesInvariant!6689 thiss!21641 rules!2971))))

(declare-fun b!4253535 () Bool)

(declare-fun e!2641991 () Bool)

(declare-fun tp!1305356 () Bool)

(assert (=> b!4253535 (= e!2641991 (and tp!1305356 (inv!61932 (tag!8847 (h!52569 rules!2971))) (inv!61936 (transformation!7983 (h!52569 rules!2971))) e!2641994))))

(declare-fun b!4253536 () Bool)

(assert (=> b!4253536 (= e!2641989 e!2641992)))

(declare-fun res!1748547 () Bool)

(assert (=> b!4253536 (=> (not res!1748547) (not e!2641992))))

(assert (=> b!4253536 (= res!1748547 (= (lexList!2084 thiss!21641 rules!2971 longerInput!62) lt!1509287))))

(declare-fun suffix!1284 () List!47272)

(assert (=> b!4253536 (= lt!1509287 (tuple2!44705 tokens!592 suffix!1284))))

(declare-fun b!4253537 () Bool)

(declare-fun tp!1305355 () Bool)

(assert (=> b!4253537 (= e!2641990 (and tp_is_empty!22767 tp!1305355))))

(declare-fun b!4253538 () Bool)

(declare-fun tp!1305354 () Bool)

(declare-fun inv!21 (TokenValue!8213) Bool)

(assert (=> b!4253538 (= e!2641985 (and (inv!21 (value!248053 (h!52570 tokens!592))) e!2641986 tp!1305354))))

(declare-fun b!4253539 () Bool)

(declare-fun tp!1305362 () Bool)

(assert (=> b!4253539 (= e!2641981 (and e!2641991 tp!1305362))))

(assert (= (and start!407372 res!1748549) b!4253531))

(assert (= (and b!4253531 res!1748548) b!4253534))

(assert (= (and b!4253534 res!1748544) b!4253528))

(assert (= (and b!4253528 res!1748550) b!4253529))

(assert (= (and b!4253529 res!1748546) b!4253536))

(assert (= (and b!4253536 res!1748547) b!4253523))

(assert (= (and b!4253523 res!1748545) b!4253524))

(assert (= (and start!407372 (is-Cons!47148 suffix!1284)) b!4253527))

(assert (= (and start!407372 (is-Cons!47148 longerInput!62)) b!4253530))

(assert (= b!4253533 b!4253525))

(assert (= b!4253538 b!4253533))

(assert (= b!4253532 b!4253538))

(assert (= (and start!407372 (is-Cons!47150 tokens!592)) b!4253532))

(assert (= b!4253535 b!4253526))

(assert (= b!4253539 b!4253535))

(assert (= (and start!407372 (is-Cons!47149 rules!2971)) b!4253539))

(assert (= (and start!407372 (is-Cons!47148 shorterInput!62)) b!4253537))

(declare-fun m!4838439 () Bool)

(assert (=> b!4253538 m!4838439))

(declare-fun m!4838441 () Bool)

(assert (=> b!4253528 m!4838441))

(declare-fun m!4838443 () Bool)

(assert (=> b!4253529 m!4838443))

(declare-fun m!4838445 () Bool)

(assert (=> b!4253529 m!4838445))

(declare-fun m!4838447 () Bool)

(assert (=> b!4253531 m!4838447))

(declare-fun m!4838449 () Bool)

(assert (=> b!4253524 m!4838449))

(declare-fun m!4838451 () Bool)

(assert (=> b!4253535 m!4838451))

(declare-fun m!4838453 () Bool)

(assert (=> b!4253535 m!4838453))

(declare-fun m!4838455 () Bool)

(assert (=> b!4253532 m!4838455))

(declare-fun m!4838457 () Bool)

(assert (=> b!4253523 m!4838457))

(declare-fun m!4838459 () Bool)

(assert (=> b!4253523 m!4838459))

(declare-fun m!4838461 () Bool)

(assert (=> b!4253536 m!4838461))

(declare-fun m!4838463 () Bool)

(assert (=> b!4253534 m!4838463))

(declare-fun m!4838465 () Bool)

(assert (=> b!4253533 m!4838465))

(declare-fun m!4838467 () Bool)

(assert (=> b!4253533 m!4838467))

(push 1)

(assert (not b!4253532))

(assert b_and!337331)

(assert (not b_next!127227))

(assert b_and!337327)

(assert (not b!4253537))

(assert (not b_next!127233))

(assert (not b!4253536))

(assert (not b_next!127231))

(assert (not b!4253538))

(assert (not b!4253530))

(assert (not b_next!127229))

(assert (not b!4253535))

(assert (not b!4253539))

(assert b_and!337325)

(assert (not b!4253534))

(assert (not b!4253528))

(assert (not b!4253523))

(assert tp_is_empty!22767)

(assert (not b!4253529))

(assert b_and!337329)

(assert (not b!4253524))

(assert (not b!4253533))

(assert (not b!4253527))

(assert (not b!4253531))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!127231))

(assert (not b_next!127229))

(assert b_and!337325)

(assert b_and!337331)

(assert b_and!337329)

(assert (not b_next!127227))

(assert b_and!337327)

(assert (not b_next!127233))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1250759 () Bool)

(assert (=> d!1250759 (= (isEmpty!27902 rules!2971) (is-Nil!47149 rules!2971))))

(assert (=> b!4253531 d!1250759))

(declare-fun b!4253601 () Bool)

(declare-fun e!2642049 () Bool)

(declare-fun lt!1509304 () tuple2!44704)

(declare-fun isEmpty!27905 (List!47274) Bool)

(assert (=> b!4253601 (= e!2642049 (not (isEmpty!27905 (_1!25486 lt!1509304))))))

(declare-fun d!1250761 () Bool)

(declare-fun e!2642051 () Bool)

(assert (=> d!1250761 e!2642051))

(declare-fun c!722230 () Bool)

(declare-fun size!34513 (List!47274) Int)

(assert (=> d!1250761 (= c!722230 (> (size!34513 (_1!25486 lt!1509304)) 0))))

(declare-fun e!2642050 () tuple2!44704)

(assert (=> d!1250761 (= lt!1509304 e!2642050)))

(declare-fun c!722231 () Bool)

(declare-fun lt!1509303 () Option!10117)

(assert (=> d!1250761 (= c!722231 (is-Some!10116 lt!1509303))))

(assert (=> d!1250761 (= lt!1509303 (maxPrefix!4534 thiss!21641 rules!2971 longerInput!62))))

(assert (=> d!1250761 (= (lexList!2084 thiss!21641 rules!2971 longerInput!62) lt!1509304)))

(declare-fun b!4253602 () Bool)

(declare-fun lt!1509305 () tuple2!44704)

(assert (=> b!4253602 (= e!2642050 (tuple2!44705 (Cons!47150 (_1!25485 (v!41076 lt!1509303)) (_1!25486 lt!1509305)) (_2!25486 lt!1509305)))))

(assert (=> b!4253602 (= lt!1509305 (lexList!2084 thiss!21641 rules!2971 (_2!25485 (v!41076 lt!1509303))))))

(declare-fun b!4253603 () Bool)

(assert (=> b!4253603 (= e!2642051 e!2642049)))

(declare-fun res!1748578 () Bool)

(assert (=> b!4253603 (= res!1748578 (< (size!34510 (_2!25486 lt!1509304)) (size!34510 longerInput!62)))))

(assert (=> b!4253603 (=> (not res!1748578) (not e!2642049))))

(declare-fun b!4253604 () Bool)

(assert (=> b!4253604 (= e!2642050 (tuple2!44705 Nil!47150 longerInput!62))))

(declare-fun b!4253605 () Bool)

(assert (=> b!4253605 (= e!2642051 (= (_2!25486 lt!1509304) longerInput!62))))

(assert (= (and d!1250761 c!722231) b!4253602))

(assert (= (and d!1250761 (not c!722231)) b!4253604))

(assert (= (and d!1250761 c!722230) b!4253603))

(assert (= (and d!1250761 (not c!722230)) b!4253605))

(assert (= (and b!4253603 res!1748578) b!4253601))

(declare-fun m!4838499 () Bool)

(assert (=> b!4253601 m!4838499))

(declare-fun m!4838501 () Bool)

(assert (=> d!1250761 m!4838501))

(assert (=> d!1250761 m!4838459))

(declare-fun m!4838503 () Bool)

(assert (=> b!4253602 m!4838503))

(declare-fun m!4838505 () Bool)

(assert (=> b!4253603 m!4838505))

(assert (=> b!4253603 m!4838443))

(assert (=> b!4253536 d!1250761))

(declare-fun d!1250765 () Bool)

(assert (=> d!1250765 (= (inv!61932 (tag!8847 (h!52569 rules!2971))) (= (mod (str.len (value!248052 (tag!8847 (h!52569 rules!2971)))) 2) 0))))

(assert (=> b!4253535 d!1250765))

(declare-fun d!1250767 () Bool)

(declare-fun res!1748581 () Bool)

(declare-fun e!2642054 () Bool)

(assert (=> d!1250767 (=> (not res!1748581) (not e!2642054))))

(declare-fun semiInverseModEq!3486 (Int Int) Bool)

(assert (=> d!1250767 (= res!1748581 (semiInverseModEq!3486 (toChars!10618 (transformation!7983 (h!52569 rules!2971))) (toValue!10759 (transformation!7983 (h!52569 rules!2971)))))))

(assert (=> d!1250767 (= (inv!61936 (transformation!7983 (h!52569 rules!2971))) e!2642054)))

(declare-fun b!4253608 () Bool)

(declare-fun equivClasses!3385 (Int Int) Bool)

(assert (=> b!4253608 (= e!2642054 (equivClasses!3385 (toChars!10618 (transformation!7983 (h!52569 rules!2971))) (toValue!10759 (transformation!7983 (h!52569 rules!2971)))))))

(assert (= (and d!1250767 res!1748581) b!4253608))

(declare-fun m!4838507 () Bool)

(assert (=> d!1250767 m!4838507))

(declare-fun m!4838509 () Bool)

(assert (=> b!4253608 m!4838509))

(assert (=> b!4253535 d!1250767))

(declare-fun d!1250769 () Bool)

(declare-fun lt!1509308 () Int)

(assert (=> d!1250769 (>= lt!1509308 0)))

(declare-fun e!2642057 () Int)

(assert (=> d!1250769 (= lt!1509308 e!2642057)))

(declare-fun c!722234 () Bool)

(assert (=> d!1250769 (= c!722234 (is-Nil!47148 longerInput!62))))

(assert (=> d!1250769 (= (size!34510 longerInput!62) lt!1509308)))

(declare-fun b!4253613 () Bool)

(assert (=> b!4253613 (= e!2642057 0)))

(declare-fun b!4253614 () Bool)

(assert (=> b!4253614 (= e!2642057 (+ 1 (size!34510 (t!352751 longerInput!62))))))

(assert (= (and d!1250769 c!722234) b!4253613))

(assert (= (and d!1250769 (not c!722234)) b!4253614))

(declare-fun m!4838511 () Bool)

(assert (=> b!4253614 m!4838511))

(assert (=> b!4253529 d!1250769))

(declare-fun d!1250771 () Bool)

(declare-fun lt!1509309 () Int)

(assert (=> d!1250771 (>= lt!1509309 0)))

(declare-fun e!2642058 () Int)

(assert (=> d!1250771 (= lt!1509309 e!2642058)))

(declare-fun c!722235 () Bool)

(assert (=> d!1250771 (= c!722235 (is-Nil!47148 shorterInput!62))))

(assert (=> d!1250771 (= (size!34510 shorterInput!62) lt!1509309)))

(declare-fun b!4253615 () Bool)

(assert (=> b!4253615 (= e!2642058 0)))

(declare-fun b!4253616 () Bool)

(assert (=> b!4253616 (= e!2642058 (+ 1 (size!34510 (t!352751 shorterInput!62))))))

(assert (= (and d!1250771 c!722235) b!4253615))

(assert (= (and d!1250771 (not c!722235)) b!4253616))

(declare-fun m!4838513 () Bool)

(assert (=> b!4253616 m!4838513))

(assert (=> b!4253529 d!1250771))

(declare-fun b!4253617 () Bool)

(declare-fun e!2642059 () Bool)

(declare-fun lt!1509311 () tuple2!44704)

(assert (=> b!4253617 (= e!2642059 (not (isEmpty!27905 (_1!25486 lt!1509311))))))

(declare-fun d!1250773 () Bool)

(declare-fun e!2642061 () Bool)

(assert (=> d!1250773 e!2642061))

(declare-fun c!722236 () Bool)

(assert (=> d!1250773 (= c!722236 (> (size!34513 (_1!25486 lt!1509311)) 0))))

(declare-fun e!2642060 () tuple2!44704)

(assert (=> d!1250773 (= lt!1509311 e!2642060)))

(declare-fun c!722237 () Bool)

(declare-fun lt!1509310 () Option!10117)

(assert (=> d!1250773 (= c!722237 (is-Some!10116 lt!1509310))))

(assert (=> d!1250773 (= lt!1509310 (maxPrefix!4534 thiss!21641 rules!2971 shorterInput!62))))

(assert (=> d!1250773 (= (lexList!2084 thiss!21641 rules!2971 shorterInput!62) lt!1509311)))

(declare-fun b!4253618 () Bool)

(declare-fun lt!1509312 () tuple2!44704)

(assert (=> b!4253618 (= e!2642060 (tuple2!44705 (Cons!47150 (_1!25485 (v!41076 lt!1509310)) (_1!25486 lt!1509312)) (_2!25486 lt!1509312)))))

(assert (=> b!4253618 (= lt!1509312 (lexList!2084 thiss!21641 rules!2971 (_2!25485 (v!41076 lt!1509310))))))

(declare-fun b!4253619 () Bool)

(assert (=> b!4253619 (= e!2642061 e!2642059)))

(declare-fun res!1748582 () Bool)

(assert (=> b!4253619 (= res!1748582 (< (size!34510 (_2!25486 lt!1509311)) (size!34510 shorterInput!62)))))

(assert (=> b!4253619 (=> (not res!1748582) (not e!2642059))))

(declare-fun b!4253620 () Bool)

(assert (=> b!4253620 (= e!2642060 (tuple2!44705 Nil!47150 shorterInput!62))))

(declare-fun b!4253621 () Bool)

(assert (=> b!4253621 (= e!2642061 (= (_2!25486 lt!1509311) shorterInput!62))))

(assert (= (and d!1250773 c!722237) b!4253618))

(assert (= (and d!1250773 (not c!722237)) b!4253620))

(assert (= (and d!1250773 c!722236) b!4253619))

(assert (= (and d!1250773 (not c!722236)) b!4253621))

(assert (= (and b!4253619 res!1748582) b!4253617))

(declare-fun m!4838515 () Bool)

(assert (=> b!4253617 m!4838515))

(declare-fun m!4838517 () Bool)

(assert (=> d!1250773 m!4838517))

(assert (=> d!1250773 m!4838457))

(declare-fun m!4838519 () Bool)

(assert (=> b!4253618 m!4838519))

(declare-fun m!4838521 () Bool)

(assert (=> b!4253619 m!4838521))

(assert (=> b!4253619 m!4838445))

(assert (=> b!4253524 d!1250773))

(declare-fun b!4253664 () Bool)

(declare-fun e!2642082 () Bool)

(declare-fun e!2642083 () Bool)

(assert (=> b!4253664 (= e!2642082 e!2642083)))

(declare-fun res!1748606 () Bool)

(assert (=> b!4253664 (=> (not res!1748606) (not e!2642083))))

(declare-fun lt!1509339 () Option!10117)

(declare-fun isDefined!7469 (Option!10117) Bool)

(assert (=> b!4253664 (= res!1748606 (isDefined!7469 lt!1509339))))

(declare-fun b!4253665 () Bool)

(declare-fun e!2642084 () Option!10117)

(declare-fun lt!1509340 () Option!10117)

(declare-fun lt!1509341 () Option!10117)

(assert (=> b!4253665 (= e!2642084 (ite (and (is-None!10116 lt!1509340) (is-None!10116 lt!1509341)) None!10116 (ite (is-None!10116 lt!1509341) lt!1509340 (ite (is-None!10116 lt!1509340) lt!1509341 (ite (>= (size!34509 (_1!25485 (v!41076 lt!1509340))) (size!34509 (_1!25485 (v!41076 lt!1509341)))) lt!1509340 lt!1509341)))))))

(declare-fun call!294017 () Option!10117)

(assert (=> b!4253665 (= lt!1509340 call!294017)))

(assert (=> b!4253665 (= lt!1509341 (maxPrefix!4534 thiss!21641 (t!352752 rules!2971) shorterInput!62))))

(declare-fun b!4253666 () Bool)

(assert (=> b!4253666 (= e!2642084 call!294017)))

(declare-fun b!4253667 () Bool)

(declare-fun res!1748601 () Bool)

(assert (=> b!4253667 (=> (not res!1748601) (not e!2642083))))

(declare-fun matchR!6477 (Regex!12888 List!47272) Bool)

(declare-fun get!15304 (Option!10117) tuple2!44702)

(declare-fun list!16989 (BalanceConc!27982) List!47272)

(declare-fun charsOf!5323 (Token!14592) BalanceConc!27982)

(assert (=> b!4253667 (= res!1748601 (matchR!6477 (regex!7983 (rule!11119 (_1!25485 (get!15304 lt!1509339)))) (list!16989 (charsOf!5323 (_1!25485 (get!15304 lt!1509339))))))))

(declare-fun d!1250775 () Bool)

(assert (=> d!1250775 e!2642082))

(declare-fun res!1748602 () Bool)

(assert (=> d!1250775 (=> res!1748602 e!2642082)))

(declare-fun isEmpty!27906 (Option!10117) Bool)

(assert (=> d!1250775 (= res!1748602 (isEmpty!27906 lt!1509339))))

(assert (=> d!1250775 (= lt!1509339 e!2642084)))

(declare-fun c!722250 () Bool)

(assert (=> d!1250775 (= c!722250 (and (is-Cons!47149 rules!2971) (is-Nil!47149 (t!352752 rules!2971))))))

(declare-datatypes ((Unit!66095 0))(
  ( (Unit!66096) )
))
(declare-fun lt!1509337 () Unit!66095)

(declare-fun lt!1509338 () Unit!66095)

(assert (=> d!1250775 (= lt!1509337 lt!1509338)))

(declare-fun isPrefix!4754 (List!47272 List!47272) Bool)

(assert (=> d!1250775 (isPrefix!4754 shorterInput!62 shorterInput!62)))

(declare-fun lemmaIsPrefixRefl!3151 (List!47272 List!47272) Unit!66095)

(assert (=> d!1250775 (= lt!1509338 (lemmaIsPrefixRefl!3151 shorterInput!62 shorterInput!62))))

(declare-fun rulesValidInductive!3005 (LexerInterface!7578 List!47273) Bool)

(assert (=> d!1250775 (rulesValidInductive!3005 thiss!21641 rules!2971)))

(assert (=> d!1250775 (= (maxPrefix!4534 thiss!21641 rules!2971 shorterInput!62) lt!1509339)))

(declare-fun b!4253668 () Bool)

(declare-fun res!1748603 () Bool)

(assert (=> b!4253668 (=> (not res!1748603) (not e!2642083))))

(declare-fun ++!11992 (List!47272 List!47272) List!47272)

(assert (=> b!4253668 (= res!1748603 (= (++!11992 (list!16989 (charsOf!5323 (_1!25485 (get!15304 lt!1509339)))) (_2!25485 (get!15304 lt!1509339))) shorterInput!62))))

(declare-fun bm!294012 () Bool)

(declare-fun maxPrefixOneRule!3480 (LexerInterface!7578 Rule!15766 List!47272) Option!10117)

(assert (=> bm!294012 (= call!294017 (maxPrefixOneRule!3480 thiss!21641 (h!52569 rules!2971) shorterInput!62))))

(declare-fun b!4253669 () Bool)

(declare-fun res!1748607 () Bool)

(assert (=> b!4253669 (=> (not res!1748607) (not e!2642083))))

(assert (=> b!4253669 (= res!1748607 (= (list!16989 (charsOf!5323 (_1!25485 (get!15304 lt!1509339)))) (originalCharacters!8327 (_1!25485 (get!15304 lt!1509339)))))))

(declare-fun b!4253670 () Bool)

(declare-fun res!1748604 () Bool)

(assert (=> b!4253670 (=> (not res!1748604) (not e!2642083))))

(declare-fun apply!10781 (TokenValueInjection!15854 BalanceConc!27982) TokenValue!8213)

(declare-fun seqFromList!5841 (List!47272) BalanceConc!27982)

(assert (=> b!4253670 (= res!1748604 (= (value!248053 (_1!25485 (get!15304 lt!1509339))) (apply!10781 (transformation!7983 (rule!11119 (_1!25485 (get!15304 lt!1509339)))) (seqFromList!5841 (originalCharacters!8327 (_1!25485 (get!15304 lt!1509339)))))))))

(declare-fun b!4253671 () Bool)

(declare-fun contains!9768 (List!47273 Rule!15766) Bool)

(assert (=> b!4253671 (= e!2642083 (contains!9768 rules!2971 (rule!11119 (_1!25485 (get!15304 lt!1509339)))))))

(declare-fun b!4253672 () Bool)

(declare-fun res!1748605 () Bool)

(assert (=> b!4253672 (=> (not res!1748605) (not e!2642083))))

(assert (=> b!4253672 (= res!1748605 (< (size!34510 (_2!25485 (get!15304 lt!1509339))) (size!34510 shorterInput!62)))))

(assert (= (and d!1250775 c!722250) b!4253666))

(assert (= (and d!1250775 (not c!722250)) b!4253665))

(assert (= (or b!4253666 b!4253665) bm!294012))

(assert (= (and d!1250775 (not res!1748602)) b!4253664))

(assert (= (and b!4253664 res!1748606) b!4253669))

(assert (= (and b!4253669 res!1748607) b!4253672))

(assert (= (and b!4253672 res!1748605) b!4253668))

(assert (= (and b!4253668 res!1748603) b!4253670))

(assert (= (and b!4253670 res!1748604) b!4253667))

(assert (= (and b!4253667 res!1748601) b!4253671))

(declare-fun m!4838541 () Bool)

(assert (=> b!4253672 m!4838541))

(declare-fun m!4838543 () Bool)

(assert (=> b!4253672 m!4838543))

(assert (=> b!4253672 m!4838445))

(assert (=> b!4253668 m!4838541))

(declare-fun m!4838545 () Bool)

(assert (=> b!4253668 m!4838545))

(assert (=> b!4253668 m!4838545))

(declare-fun m!4838547 () Bool)

(assert (=> b!4253668 m!4838547))

(assert (=> b!4253668 m!4838547))

(declare-fun m!4838549 () Bool)

(assert (=> b!4253668 m!4838549))

(assert (=> b!4253670 m!4838541))

(declare-fun m!4838553 () Bool)

(assert (=> b!4253670 m!4838553))

(assert (=> b!4253670 m!4838553))

(declare-fun m!4838555 () Bool)

(assert (=> b!4253670 m!4838555))

(declare-fun m!4838557 () Bool)

(assert (=> bm!294012 m!4838557))

(declare-fun m!4838559 () Bool)

(assert (=> b!4253664 m!4838559))

(assert (=> b!4253667 m!4838541))

(assert (=> b!4253667 m!4838545))

(assert (=> b!4253667 m!4838545))

(assert (=> b!4253667 m!4838547))

(assert (=> b!4253667 m!4838547))

(declare-fun m!4838561 () Bool)

(assert (=> b!4253667 m!4838561))

(assert (=> b!4253669 m!4838541))

(assert (=> b!4253669 m!4838545))

(assert (=> b!4253669 m!4838545))

(assert (=> b!4253669 m!4838547))

(declare-fun m!4838563 () Bool)

(assert (=> d!1250775 m!4838563))

(declare-fun m!4838565 () Bool)

(assert (=> d!1250775 m!4838565))

(declare-fun m!4838567 () Bool)

(assert (=> d!1250775 m!4838567))

(declare-fun m!4838569 () Bool)

(assert (=> d!1250775 m!4838569))

(assert (=> b!4253671 m!4838541))

(declare-fun m!4838571 () Bool)

(assert (=> b!4253671 m!4838571))

(declare-fun m!4838573 () Bool)

(assert (=> b!4253665 m!4838573))

(assert (=> b!4253523 d!1250775))

(declare-fun b!4253677 () Bool)

(declare-fun e!2642087 () Bool)

(declare-fun e!2642088 () Bool)

(assert (=> b!4253677 (= e!2642087 e!2642088)))

(declare-fun res!1748613 () Bool)

(assert (=> b!4253677 (=> (not res!1748613) (not e!2642088))))

(declare-fun lt!1509346 () Option!10117)

(assert (=> b!4253677 (= res!1748613 (isDefined!7469 lt!1509346))))

(declare-fun b!4253678 () Bool)

(declare-fun e!2642089 () Option!10117)

(declare-fun lt!1509347 () Option!10117)

(declare-fun lt!1509348 () Option!10117)

(assert (=> b!4253678 (= e!2642089 (ite (and (is-None!10116 lt!1509347) (is-None!10116 lt!1509348)) None!10116 (ite (is-None!10116 lt!1509348) lt!1509347 (ite (is-None!10116 lt!1509347) lt!1509348 (ite (>= (size!34509 (_1!25485 (v!41076 lt!1509347))) (size!34509 (_1!25485 (v!41076 lt!1509348)))) lt!1509347 lt!1509348)))))))

(declare-fun call!294018 () Option!10117)

(assert (=> b!4253678 (= lt!1509347 call!294018)))

(assert (=> b!4253678 (= lt!1509348 (maxPrefix!4534 thiss!21641 (t!352752 rules!2971) longerInput!62))))

(declare-fun b!4253679 () Bool)

(assert (=> b!4253679 (= e!2642089 call!294018)))

(declare-fun b!4253680 () Bool)

(declare-fun res!1748608 () Bool)

(assert (=> b!4253680 (=> (not res!1748608) (not e!2642088))))

(assert (=> b!4253680 (= res!1748608 (matchR!6477 (regex!7983 (rule!11119 (_1!25485 (get!15304 lt!1509346)))) (list!16989 (charsOf!5323 (_1!25485 (get!15304 lt!1509346))))))))

(declare-fun d!1250785 () Bool)

(assert (=> d!1250785 e!2642087))

(declare-fun res!1748609 () Bool)

(assert (=> d!1250785 (=> res!1748609 e!2642087)))

(assert (=> d!1250785 (= res!1748609 (isEmpty!27906 lt!1509346))))

(assert (=> d!1250785 (= lt!1509346 e!2642089)))

(declare-fun c!722253 () Bool)

(assert (=> d!1250785 (= c!722253 (and (is-Cons!47149 rules!2971) (is-Nil!47149 (t!352752 rules!2971))))))

(declare-fun lt!1509344 () Unit!66095)

(declare-fun lt!1509345 () Unit!66095)

(assert (=> d!1250785 (= lt!1509344 lt!1509345)))

(assert (=> d!1250785 (isPrefix!4754 longerInput!62 longerInput!62)))

(assert (=> d!1250785 (= lt!1509345 (lemmaIsPrefixRefl!3151 longerInput!62 longerInput!62))))

(assert (=> d!1250785 (rulesValidInductive!3005 thiss!21641 rules!2971)))

(assert (=> d!1250785 (= (maxPrefix!4534 thiss!21641 rules!2971 longerInput!62) lt!1509346)))

(declare-fun b!4253681 () Bool)

(declare-fun res!1748610 () Bool)

(assert (=> b!4253681 (=> (not res!1748610) (not e!2642088))))

(assert (=> b!4253681 (= res!1748610 (= (++!11992 (list!16989 (charsOf!5323 (_1!25485 (get!15304 lt!1509346)))) (_2!25485 (get!15304 lt!1509346))) longerInput!62))))

(declare-fun bm!294013 () Bool)

(assert (=> bm!294013 (= call!294018 (maxPrefixOneRule!3480 thiss!21641 (h!52569 rules!2971) longerInput!62))))

(declare-fun b!4253682 () Bool)

(declare-fun res!1748614 () Bool)

(assert (=> b!4253682 (=> (not res!1748614) (not e!2642088))))

(assert (=> b!4253682 (= res!1748614 (= (list!16989 (charsOf!5323 (_1!25485 (get!15304 lt!1509346)))) (originalCharacters!8327 (_1!25485 (get!15304 lt!1509346)))))))

(declare-fun b!4253683 () Bool)

(declare-fun res!1748611 () Bool)

(assert (=> b!4253683 (=> (not res!1748611) (not e!2642088))))

(assert (=> b!4253683 (= res!1748611 (= (value!248053 (_1!25485 (get!15304 lt!1509346))) (apply!10781 (transformation!7983 (rule!11119 (_1!25485 (get!15304 lt!1509346)))) (seqFromList!5841 (originalCharacters!8327 (_1!25485 (get!15304 lt!1509346)))))))))

(declare-fun b!4253684 () Bool)

(assert (=> b!4253684 (= e!2642088 (contains!9768 rules!2971 (rule!11119 (_1!25485 (get!15304 lt!1509346)))))))

(declare-fun b!4253685 () Bool)

(declare-fun res!1748612 () Bool)

(assert (=> b!4253685 (=> (not res!1748612) (not e!2642088))))

(assert (=> b!4253685 (= res!1748612 (< (size!34510 (_2!25485 (get!15304 lt!1509346))) (size!34510 longerInput!62)))))

(assert (= (and d!1250785 c!722253) b!4253679))

(assert (= (and d!1250785 (not c!722253)) b!4253678))

(assert (= (or b!4253679 b!4253678) bm!294013))

(assert (= (and d!1250785 (not res!1748609)) b!4253677))

(assert (= (and b!4253677 res!1748613) b!4253682))

(assert (= (and b!4253682 res!1748614) b!4253685))

(assert (= (and b!4253685 res!1748612) b!4253681))

(assert (= (and b!4253681 res!1748610) b!4253683))

(assert (= (and b!4253683 res!1748611) b!4253680))

(assert (= (and b!4253680 res!1748608) b!4253684))

(declare-fun m!4838575 () Bool)

(assert (=> b!4253685 m!4838575))

(declare-fun m!4838577 () Bool)

(assert (=> b!4253685 m!4838577))

(assert (=> b!4253685 m!4838443))

(assert (=> b!4253681 m!4838575))

(declare-fun m!4838579 () Bool)

(assert (=> b!4253681 m!4838579))

(assert (=> b!4253681 m!4838579))

(declare-fun m!4838581 () Bool)

(assert (=> b!4253681 m!4838581))

(assert (=> b!4253681 m!4838581))

(declare-fun m!4838583 () Bool)

(assert (=> b!4253681 m!4838583))

(assert (=> b!4253683 m!4838575))

(declare-fun m!4838585 () Bool)

(assert (=> b!4253683 m!4838585))

(assert (=> b!4253683 m!4838585))

(declare-fun m!4838587 () Bool)

(assert (=> b!4253683 m!4838587))

(declare-fun m!4838589 () Bool)

(assert (=> bm!294013 m!4838589))

(declare-fun m!4838591 () Bool)

(assert (=> b!4253677 m!4838591))

(assert (=> b!4253680 m!4838575))

(assert (=> b!4253680 m!4838579))

(assert (=> b!4253680 m!4838579))

(assert (=> b!4253680 m!4838581))

(assert (=> b!4253680 m!4838581))

(declare-fun m!4838593 () Bool)

(assert (=> b!4253680 m!4838593))

(assert (=> b!4253682 m!4838575))

(assert (=> b!4253682 m!4838579))

(assert (=> b!4253682 m!4838579))

(assert (=> b!4253682 m!4838581))

(declare-fun m!4838595 () Bool)

(assert (=> d!1250785 m!4838595))

(declare-fun m!4838597 () Bool)

(assert (=> d!1250785 m!4838597))

(declare-fun m!4838599 () Bool)

(assert (=> d!1250785 m!4838599))

(assert (=> d!1250785 m!4838569))

(assert (=> b!4253684 m!4838575))

(declare-fun m!4838601 () Bool)

(assert (=> b!4253684 m!4838601))

(declare-fun m!4838603 () Bool)

(assert (=> b!4253678 m!4838603))

(assert (=> b!4253523 d!1250785))

(declare-fun d!1250791 () Bool)

(declare-fun res!1748617 () Bool)

(declare-fun e!2642092 () Bool)

(assert (=> d!1250791 (=> (not res!1748617) (not e!2642092))))

(declare-fun rulesValid!3108 (LexerInterface!7578 List!47273) Bool)

(assert (=> d!1250791 (= res!1748617 (rulesValid!3108 thiss!21641 rules!2971))))

(assert (=> d!1250791 (= (rulesInvariant!6689 thiss!21641 rules!2971) e!2642092)))

(declare-fun b!4253688 () Bool)

(declare-datatypes ((List!47279 0))(
  ( (Nil!47155) (Cons!47155 (h!52575 String!54997) (t!352770 List!47279)) )
))
(declare-fun noDuplicateTag!3269 (LexerInterface!7578 List!47273 List!47279) Bool)

(assert (=> b!4253688 (= e!2642092 (noDuplicateTag!3269 thiss!21641 rules!2971 Nil!47155))))

(assert (= (and d!1250791 res!1748617) b!4253688))

(declare-fun m!4838605 () Bool)

(assert (=> d!1250791 m!4838605))

(declare-fun m!4838607 () Bool)

(assert (=> b!4253688 m!4838607))

(assert (=> b!4253534 d!1250791))

(declare-fun d!1250793 () Bool)

(assert (=> d!1250793 (= (inv!61932 (tag!8847 (rule!11119 (h!52570 tokens!592)))) (= (mod (str.len (value!248052 (tag!8847 (rule!11119 (h!52570 tokens!592))))) 2) 0))))

(assert (=> b!4253533 d!1250793))

(declare-fun d!1250795 () Bool)

(declare-fun res!1748618 () Bool)

(declare-fun e!2642093 () Bool)

(assert (=> d!1250795 (=> (not res!1748618) (not e!2642093))))

(assert (=> d!1250795 (= res!1748618 (semiInverseModEq!3486 (toChars!10618 (transformation!7983 (rule!11119 (h!52570 tokens!592)))) (toValue!10759 (transformation!7983 (rule!11119 (h!52570 tokens!592))))))))

(assert (=> d!1250795 (= (inv!61936 (transformation!7983 (rule!11119 (h!52570 tokens!592)))) e!2642093)))

(declare-fun b!4253689 () Bool)

(assert (=> b!4253689 (= e!2642093 (equivClasses!3385 (toChars!10618 (transformation!7983 (rule!11119 (h!52570 tokens!592)))) (toValue!10759 (transformation!7983 (rule!11119 (h!52570 tokens!592))))))))

(assert (= (and d!1250795 res!1748618) b!4253689))

(declare-fun m!4838609 () Bool)

(assert (=> d!1250795 m!4838609))

(declare-fun m!4838611 () Bool)

(assert (=> b!4253689 m!4838611))

(assert (=> b!4253533 d!1250795))

(declare-fun d!1250797 () Bool)

(assert (=> d!1250797 (= (isEmpty!27901 longerInput!62) (is-Nil!47148 longerInput!62))))

(assert (=> b!4253528 d!1250797))

(declare-fun b!4253704 () Bool)

(declare-fun e!2642105 () Bool)

(declare-fun e!2642104 () Bool)

(assert (=> b!4253704 (= e!2642105 e!2642104)))

(declare-fun c!722259 () Bool)

(assert (=> b!4253704 (= c!722259 (is-IntegerValue!24640 (value!248053 (h!52570 tokens!592))))))

(declare-fun b!4253705 () Bool)

(declare-fun e!2642106 () Bool)

(declare-fun inv!15 (TokenValue!8213) Bool)

(assert (=> b!4253705 (= e!2642106 (inv!15 (value!248053 (h!52570 tokens!592))))))

(declare-fun b!4253706 () Bool)

(declare-fun inv!17 (TokenValue!8213) Bool)

(assert (=> b!4253706 (= e!2642104 (inv!17 (value!248053 (h!52570 tokens!592))))))

(declare-fun d!1250799 () Bool)

(declare-fun c!722258 () Bool)

(assert (=> d!1250799 (= c!722258 (is-IntegerValue!24639 (value!248053 (h!52570 tokens!592))))))

(assert (=> d!1250799 (= (inv!21 (value!248053 (h!52570 tokens!592))) e!2642105)))

(declare-fun b!4253707 () Bool)

(declare-fun inv!16 (TokenValue!8213) Bool)

(assert (=> b!4253707 (= e!2642105 (inv!16 (value!248053 (h!52570 tokens!592))))))

(declare-fun b!4253708 () Bool)

(declare-fun res!1748625 () Bool)

(assert (=> b!4253708 (=> res!1748625 e!2642106)))

(assert (=> b!4253708 (= res!1748625 (not (is-IntegerValue!24641 (value!248053 (h!52570 tokens!592)))))))

(assert (=> b!4253708 (= e!2642104 e!2642106)))

(assert (= (and d!1250799 c!722258) b!4253707))

(assert (= (and d!1250799 (not c!722258)) b!4253704))

(assert (= (and b!4253704 c!722259) b!4253706))

(assert (= (and b!4253704 (not c!722259)) b!4253708))

(assert (= (and b!4253708 (not res!1748625)) b!4253705))

(declare-fun m!4838619 () Bool)

(assert (=> b!4253705 m!4838619))

(declare-fun m!4838623 () Bool)

(assert (=> b!4253706 m!4838623))

(declare-fun m!4838625 () Bool)

(assert (=> b!4253707 m!4838625))

(assert (=> b!4253538 d!1250799))

(declare-fun d!1250807 () Bool)

(declare-fun res!1748630 () Bool)

(declare-fun e!2642109 () Bool)

(assert (=> d!1250807 (=> (not res!1748630) (not e!2642109))))

(assert (=> d!1250807 (= res!1748630 (not (isEmpty!27901 (originalCharacters!8327 (h!52570 tokens!592)))))))

(assert (=> d!1250807 (= (inv!61935 (h!52570 tokens!592)) e!2642109)))

(declare-fun b!4253713 () Bool)

(declare-fun res!1748631 () Bool)

(assert (=> b!4253713 (=> (not res!1748631) (not e!2642109))))

(declare-fun dynLambda!20197 (Int TokenValue!8213) BalanceConc!27982)

(assert (=> b!4253713 (= res!1748631 (= (originalCharacters!8327 (h!52570 tokens!592)) (list!16989 (dynLambda!20197 (toChars!10618 (transformation!7983 (rule!11119 (h!52570 tokens!592)))) (value!248053 (h!52570 tokens!592))))))))

(declare-fun b!4253714 () Bool)

(assert (=> b!4253714 (= e!2642109 (= (size!34509 (h!52570 tokens!592)) (size!34510 (originalCharacters!8327 (h!52570 tokens!592)))))))

(assert (= (and d!1250807 res!1748630) b!4253713))

(assert (= (and b!4253713 res!1748631) b!4253714))

(declare-fun b_lambda!125315 () Bool)

(assert (=> (not b_lambda!125315) (not b!4253713)))

(declare-fun t!352759 () Bool)

(declare-fun tb!256659 () Bool)

(assert (=> (and b!4253526 (= (toChars!10618 (transformation!7983 (h!52569 rules!2971))) (toChars!10618 (transformation!7983 (rule!11119 (h!52570 tokens!592))))) t!352759) tb!256659))

(declare-fun b!4253723 () Bool)

(declare-fun e!2642114 () Bool)

(declare-fun tp!1305401 () Bool)

(declare-fun inv!61939 (Conc!14194) Bool)

(assert (=> b!4253723 (= e!2642114 (and (inv!61939 (c!722221 (dynLambda!20197 (toChars!10618 (transformation!7983 (rule!11119 (h!52570 tokens!592)))) (value!248053 (h!52570 tokens!592))))) tp!1305401))))

(declare-fun result!313028 () Bool)

(declare-fun inv!61940 (BalanceConc!27982) Bool)

(assert (=> tb!256659 (= result!313028 (and (inv!61940 (dynLambda!20197 (toChars!10618 (transformation!7983 (rule!11119 (h!52570 tokens!592)))) (value!248053 (h!52570 tokens!592)))) e!2642114))))

(assert (= tb!256659 b!4253723))

(declare-fun m!4838627 () Bool)

(assert (=> b!4253723 m!4838627))

(declare-fun m!4838629 () Bool)

(assert (=> tb!256659 m!4838629))

(assert (=> b!4253713 t!352759))

(declare-fun b_and!337341 () Bool)

(assert (= b_and!337327 (and (=> t!352759 result!313028) b_and!337341)))

(declare-fun t!352761 () Bool)

(declare-fun tb!256661 () Bool)

(assert (=> (and b!4253525 (= (toChars!10618 (transformation!7983 (rule!11119 (h!52570 tokens!592)))) (toChars!10618 (transformation!7983 (rule!11119 (h!52570 tokens!592))))) t!352761) tb!256661))

(declare-fun result!313032 () Bool)

(assert (= result!313032 result!313028))

(assert (=> b!4253713 t!352761))

(declare-fun b_and!337343 () Bool)

(assert (= b_and!337331 (and (=> t!352761 result!313032) b_and!337343)))

(declare-fun m!4838631 () Bool)

(assert (=> d!1250807 m!4838631))

(declare-fun m!4838633 () Bool)

(assert (=> b!4253713 m!4838633))

(assert (=> b!4253713 m!4838633))

(declare-fun m!4838635 () Bool)

(assert (=> b!4253713 m!4838635))

(declare-fun m!4838637 () Bool)

(assert (=> b!4253714 m!4838637))

(assert (=> b!4253532 d!1250807))

(declare-fun b!4253742 () Bool)

(declare-fun e!2642121 () Bool)

(declare-fun tp!1305414 () Bool)

(assert (=> b!4253742 (= e!2642121 tp!1305414)))

(declare-fun b!4253743 () Bool)

(declare-fun tp!1305416 () Bool)

(declare-fun tp!1305415 () Bool)

(assert (=> b!4253743 (= e!2642121 (and tp!1305416 tp!1305415))))

(declare-fun b!4253741 () Bool)

(declare-fun tp!1305413 () Bool)

(declare-fun tp!1305412 () Bool)

(assert (=> b!4253741 (= e!2642121 (and tp!1305413 tp!1305412))))

(assert (=> b!4253535 (= tp!1305356 e!2642121)))

(declare-fun b!4253740 () Bool)

(assert (=> b!4253740 (= e!2642121 tp_is_empty!22767)))

(assert (= (and b!4253535 (is-ElementMatch!12888 (regex!7983 (h!52569 rules!2971)))) b!4253740))

(assert (= (and b!4253535 (is-Concat!21102 (regex!7983 (h!52569 rules!2971)))) b!4253741))

(assert (= (and b!4253535 (is-Star!12888 (regex!7983 (h!52569 rules!2971)))) b!4253742))

(assert (= (and b!4253535 (is-Union!12888 (regex!7983 (h!52569 rules!2971)))) b!4253743))

(declare-fun b!4253748 () Bool)

(declare-fun e!2642124 () Bool)

(declare-fun tp!1305419 () Bool)

(assert (=> b!4253748 (= e!2642124 (and tp_is_empty!22767 tp!1305419))))

(assert (=> b!4253530 (= tp!1305360 e!2642124)))

(assert (= (and b!4253530 (is-Cons!47148 (t!352751 longerInput!62))) b!4253748))

(declare-fun b!4253764 () Bool)

(declare-fun b_free!126539 () Bool)

(declare-fun b_next!127243 () Bool)

(assert (=> b!4253764 (= b_free!126539 (not b_next!127243))))

(declare-fun tp!1305429 () Bool)

(declare-fun b_and!337345 () Bool)

(assert (=> b!4253764 (= tp!1305429 b_and!337345)))

(declare-fun b_free!126541 () Bool)

(declare-fun b_next!127245 () Bool)

(assert (=> b!4253764 (= b_free!126541 (not b_next!127245))))

(declare-fun tb!256663 () Bool)

(declare-fun t!352763 () Bool)

(assert (=> (and b!4253764 (= (toChars!10618 (transformation!7983 (h!52569 (t!352752 rules!2971)))) (toChars!10618 (transformation!7983 (rule!11119 (h!52570 tokens!592))))) t!352763) tb!256663))

(declare-fun result!313040 () Bool)

(assert (= result!313040 result!313028))

(assert (=> b!4253713 t!352763))

(declare-fun b_and!337347 () Bool)

(declare-fun tp!1305431 () Bool)

(assert (=> b!4253764 (= tp!1305431 (and (=> t!352763 result!313040) b_and!337347))))

(declare-fun e!2642139 () Bool)

(assert (=> b!4253764 (= e!2642139 (and tp!1305429 tp!1305431))))

(declare-fun e!2642137 () Bool)

(declare-fun tp!1305428 () Bool)

(declare-fun b!4253763 () Bool)

(assert (=> b!4253763 (= e!2642137 (and tp!1305428 (inv!61932 (tag!8847 (h!52569 (t!352752 rules!2971)))) (inv!61936 (transformation!7983 (h!52569 (t!352752 rules!2971)))) e!2642139))))

(declare-fun b!4253762 () Bool)

(declare-fun e!2642136 () Bool)

(declare-fun tp!1305430 () Bool)

(assert (=> b!4253762 (= e!2642136 (and e!2642137 tp!1305430))))

(assert (=> b!4253539 (= tp!1305362 e!2642136)))

(assert (= b!4253763 b!4253764))

(assert (= b!4253762 b!4253763))

(assert (= (and b!4253539 (is-Cons!47149 (t!352752 rules!2971))) b!4253762))

(declare-fun m!4838645 () Bool)

(assert (=> b!4253763 m!4838645))

(declare-fun m!4838647 () Bool)

(assert (=> b!4253763 m!4838647))

(declare-fun b!4253767 () Bool)

(declare-fun e!2642140 () Bool)

(declare-fun tp!1305434 () Bool)

(assert (=> b!4253767 (= e!2642140 tp!1305434)))

(declare-fun b!4253768 () Bool)

(declare-fun tp!1305436 () Bool)

(declare-fun tp!1305435 () Bool)

(assert (=> b!4253768 (= e!2642140 (and tp!1305436 tp!1305435))))

(declare-fun b!4253766 () Bool)

(declare-fun tp!1305433 () Bool)

(declare-fun tp!1305432 () Bool)

(assert (=> b!4253766 (= e!2642140 (and tp!1305433 tp!1305432))))

(assert (=> b!4253533 (= tp!1305351 e!2642140)))

(declare-fun b!4253765 () Bool)

(assert (=> b!4253765 (= e!2642140 tp_is_empty!22767)))

(assert (= (and b!4253533 (is-ElementMatch!12888 (regex!7983 (rule!11119 (h!52570 tokens!592))))) b!4253765))

(assert (= (and b!4253533 (is-Concat!21102 (regex!7983 (rule!11119 (h!52570 tokens!592))))) b!4253766))

(assert (= (and b!4253533 (is-Star!12888 (regex!7983 (rule!11119 (h!52570 tokens!592))))) b!4253767))

(assert (= (and b!4253533 (is-Union!12888 (regex!7983 (rule!11119 (h!52570 tokens!592))))) b!4253768))

(declare-fun b!4253769 () Bool)

(declare-fun e!2642141 () Bool)

(declare-fun tp!1305437 () Bool)

(assert (=> b!4253769 (= e!2642141 (and tp_is_empty!22767 tp!1305437))))

(assert (=> b!4253527 (= tp!1305353 e!2642141)))

(assert (= (and b!4253527 (is-Cons!47148 (t!352751 suffix!1284))) b!4253769))

(declare-fun b!4253770 () Bool)

(declare-fun e!2642142 () Bool)

(declare-fun tp!1305438 () Bool)

(assert (=> b!4253770 (= e!2642142 (and tp_is_empty!22767 tp!1305438))))

(assert (=> b!4253538 (= tp!1305354 e!2642142)))

(assert (= (and b!4253538 (is-Cons!47148 (originalCharacters!8327 (h!52570 tokens!592)))) b!4253770))

(declare-fun b!4253771 () Bool)

(declare-fun e!2642143 () Bool)

(declare-fun tp!1305439 () Bool)

(assert (=> b!4253771 (= e!2642143 (and tp_is_empty!22767 tp!1305439))))

(assert (=> b!4253537 (= tp!1305355 e!2642143)))

(assert (= (and b!4253537 (is-Cons!47148 (t!352751 shorterInput!62))) b!4253771))

(declare-fun b!4253787 () Bool)

(declare-fun b_free!126543 () Bool)

(declare-fun b_next!127247 () Bool)

(assert (=> b!4253787 (= b_free!126543 (not b_next!127247))))

(declare-fun tp!1305451 () Bool)

(declare-fun b_and!337349 () Bool)

(assert (=> b!4253787 (= tp!1305451 b_and!337349)))

(declare-fun b_free!126545 () Bool)

(declare-fun b_next!127249 () Bool)

(assert (=> b!4253787 (= b_free!126545 (not b_next!127249))))

(declare-fun t!352765 () Bool)

(declare-fun tb!256665 () Bool)

(assert (=> (and b!4253787 (= (toChars!10618 (transformation!7983 (rule!11119 (h!52570 (t!352753 tokens!592))))) (toChars!10618 (transformation!7983 (rule!11119 (h!52570 tokens!592))))) t!352765) tb!256665))

(declare-fun result!313044 () Bool)

(assert (= result!313044 result!313028))

(assert (=> b!4253713 t!352765))

(declare-fun b_and!337351 () Bool)

(declare-fun tp!1305452 () Bool)

(assert (=> b!4253787 (= tp!1305452 (and (=> t!352765 result!313044) b_and!337351))))

(declare-fun tp!1305453 () Bool)

(declare-fun e!2642159 () Bool)

(declare-fun b!4253786 () Bool)

(declare-fun e!2642160 () Bool)

(assert (=> b!4253786 (= e!2642160 (and tp!1305453 (inv!61932 (tag!8847 (rule!11119 (h!52570 (t!352753 tokens!592))))) (inv!61936 (transformation!7983 (rule!11119 (h!52570 (t!352753 tokens!592))))) e!2642159))))

(assert (=> b!4253787 (= e!2642159 (and tp!1305451 tp!1305452))))

(declare-fun e!2642163 () Bool)

(assert (=> b!4253532 (= tp!1305357 e!2642163)))

(declare-fun tp!1305454 () Bool)

(declare-fun b!4253784 () Bool)

(declare-fun e!2642162 () Bool)

(assert (=> b!4253784 (= e!2642163 (and (inv!61935 (h!52570 (t!352753 tokens!592))) e!2642162 tp!1305454))))

(declare-fun b!4253785 () Bool)

(declare-fun tp!1305450 () Bool)

(assert (=> b!4253785 (= e!2642162 (and (inv!21 (value!248053 (h!52570 (t!352753 tokens!592)))) e!2642160 tp!1305450))))

(assert (= b!4253786 b!4253787))

(assert (= b!4253785 b!4253786))

(assert (= b!4253784 b!4253785))

(assert (= (and b!4253532 (is-Cons!47150 (t!352753 tokens!592))) b!4253784))

(declare-fun m!4838649 () Bool)

(assert (=> b!4253786 m!4838649))

(declare-fun m!4838651 () Bool)

(assert (=> b!4253786 m!4838651))

(declare-fun m!4838653 () Bool)

(assert (=> b!4253784 m!4838653))

(declare-fun m!4838655 () Bool)

(assert (=> b!4253785 m!4838655))

(declare-fun b_lambda!125317 () Bool)

(assert (= b_lambda!125315 (or (and b!4253526 b_free!126525 (= (toChars!10618 (transformation!7983 (h!52569 rules!2971))) (toChars!10618 (transformation!7983 (rule!11119 (h!52570 tokens!592)))))) (and b!4253525 b_free!126529) (and b!4253764 b_free!126541 (= (toChars!10618 (transformation!7983 (h!52569 (t!352752 rules!2971)))) (toChars!10618 (transformation!7983 (rule!11119 (h!52570 tokens!592)))))) (and b!4253787 b_free!126545 (= (toChars!10618 (transformation!7983 (rule!11119 (h!52570 (t!352753 tokens!592))))) (toChars!10618 (transformation!7983 (rule!11119 (h!52570 tokens!592)))))) b_lambda!125317)))

(push 1)

(assert (not b!4253705))

(assert (not b!4253784))

(assert (not b!4253603))

(assert b_and!337341)

(assert (not bm!294012))

(assert (not b_next!127249))

(assert (not b_next!127245))

(assert (not b_lambda!125317))

(assert (not b!4253618))

(assert (not b!4253601))

(assert (not b!4253713))

(assert (not b!4253678))

(assert (not b!4253689))

(assert (not b!4253743))

(assert (not d!1250761))

(assert (not b!4253681))

(assert (not b!4253684))

(assert (not b!4253714))

(assert (not b_next!127231))

(assert (not b!4253685))

(assert (not b_next!127229))

(assert (not b!4253771))

(assert b_and!337345)

(assert (not d!1250807))

(assert (not b!4253742))

(assert (not b!4253670))

(assert b_and!337343)

(assert (not b!4253608))

(assert (not b!4253683))

(assert (not b!4253667))

(assert (not b!4253706))

(assert b_and!337325)

(assert (not b!4253723))

(assert (not b!4253766))

(assert (not b!4253616))

(assert (not b!4253707))

(assert b_and!337347)

(assert (not b!4253682))

(assert (not b!4253770))

(assert (not d!1250775))

(assert (not b!4253762))

(assert b_and!337351)

(assert (not b!4253614))

(assert (not b_next!127247))

(assert (not b!4253768))

(assert (not b!4253741))

(assert (not b!4253664))

(assert tp_is_empty!22767)

(assert (not b!4253688))

(assert (not b_next!127243))

(assert (not b!4253672))

(assert b_and!337329)

(assert (not b!4253767))

(assert (not d!1250785))

(assert (not b_next!127227))

(assert (not d!1250767))

(assert (not d!1250773))

(assert (not b!4253748))

(assert (not b!4253763))

(assert (not d!1250791))

(assert b_and!337349)

(assert (not b!4253668))

(assert (not b!4253677))

(assert (not b!4253602))

(assert (not bm!294013))

(assert (not b!4253680))

(assert (not tb!256659))

(assert (not b!4253671))

(assert (not b!4253617))

(assert (not b!4253665))

(assert (not b!4253786))

(assert (not b!4253785))

(assert (not b!4253619))

(assert (not b!4253669))

(assert (not b!4253769))

(assert (not d!1250795))

(assert (not b_next!127233))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!127231))

(assert b_and!337343)

(assert b_and!337325)

(assert b_and!337347)

(assert b_and!337351)

(assert (not b_next!127247))

(assert b_and!337341)

(assert (not b_next!127243))

(assert (not b_next!127249))

(assert b_and!337329)

(assert (not b_next!127227))

(assert (not b_next!127245))

(assert b_and!337349)

(assert (not b_next!127233))

(assert (not b_next!127229))

(assert b_and!337345)

(check-sat)

(pop 1)

