; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!179776 () Bool)

(assert start!179776)

(declare-fun b!1817036 () Bool)

(declare-fun b_free!50235 () Bool)

(declare-fun b_next!50939 () Bool)

(assert (=> b!1817036 (= b_free!50235 (not b_next!50939))))

(declare-fun tp!513379 () Bool)

(declare-fun b_and!140705 () Bool)

(assert (=> b!1817036 (= tp!513379 b_and!140705)))

(declare-fun b_free!50237 () Bool)

(declare-fun b_next!50941 () Bool)

(assert (=> b!1817036 (= b_free!50237 (not b_next!50941))))

(declare-fun tp!513390 () Bool)

(declare-fun b_and!140707 () Bool)

(assert (=> b!1817036 (= tp!513390 b_and!140707)))

(declare-fun b!1817028 () Bool)

(declare-fun b_free!50239 () Bool)

(declare-fun b_next!50943 () Bool)

(assert (=> b!1817028 (= b_free!50239 (not b_next!50943))))

(declare-fun tp!513389 () Bool)

(declare-fun b_and!140709 () Bool)

(assert (=> b!1817028 (= tp!513389 b_and!140709)))

(declare-fun b_free!50241 () Bool)

(declare-fun b_next!50945 () Bool)

(assert (=> b!1817028 (= b_free!50241 (not b_next!50945))))

(declare-fun tp!513381 () Bool)

(declare-fun b_and!140711 () Bool)

(assert (=> b!1817028 (= tp!513381 b_and!140711)))

(declare-fun b!1817044 () Bool)

(declare-fun b_free!50243 () Bool)

(declare-fun b_next!50947 () Bool)

(assert (=> b!1817044 (= b_free!50243 (not b_next!50947))))

(declare-fun tp!513386 () Bool)

(declare-fun b_and!140713 () Bool)

(assert (=> b!1817044 (= tp!513386 b_and!140713)))

(declare-fun b_free!50245 () Bool)

(declare-fun b_next!50949 () Bool)

(assert (=> b!1817044 (= b_free!50245 (not b_next!50949))))

(declare-fun tp!513385 () Bool)

(declare-fun b_and!140715 () Bool)

(assert (=> b!1817044 (= tp!513385 b_and!140715)))

(declare-fun b!1817027 () Bool)

(declare-fun res!816959 () Bool)

(declare-fun e!1160977 () Bool)

(assert (=> b!1817027 (=> (not res!816959) (not e!1160977))))

(declare-datatypes ((List!19930 0))(
  ( (Nil!19860) (Cons!19860 (h!25261 (_ BitVec 16)) (t!169615 List!19930)) )
))
(declare-datatypes ((TokenValue!3664 0))(
  ( (FloatLiteralValue!7328 (text!26093 List!19930)) (TokenValueExt!3663 (__x!12630 Int)) (Broken!18320 (value!111501 List!19930)) (Object!3733) (End!3664) (Def!3664) (Underscore!3664) (Match!3664) (Else!3664) (Error!3664) (Case!3664) (If!3664) (Extends!3664) (Abstract!3664) (Class!3664) (Val!3664) (DelimiterValue!7328 (del!3724 List!19930)) (KeywordValue!3670 (value!111502 List!19930)) (CommentValue!7328 (value!111503 List!19930)) (WhitespaceValue!7328 (value!111504 List!19930)) (IndentationValue!3664 (value!111505 List!19930)) (String!22653) (Int32!3664) (Broken!18321 (value!111506 List!19930)) (Boolean!3665) (Unit!34547) (OperatorValue!3667 (op!3724 List!19930)) (IdentifierValue!7328 (value!111507 List!19930)) (IdentifierValue!7329 (value!111508 List!19930)) (WhitespaceValue!7329 (value!111509 List!19930)) (True!7328) (False!7328) (Broken!18322 (value!111510 List!19930)) (Broken!18323 (value!111511 List!19930)) (True!7329) (RightBrace!3664) (RightBracket!3664) (Colon!3664) (Null!3664) (Comma!3664) (LeftBracket!3664) (False!7329) (LeftBrace!3664) (ImaginaryLiteralValue!3664 (text!26094 List!19930)) (StringLiteralValue!10992 (value!111512 List!19930)) (EOFValue!3664 (value!111513 List!19930)) (IdentValue!3664 (value!111514 List!19930)) (DelimiterValue!7329 (value!111515 List!19930)) (DedentValue!3664 (value!111516 List!19930)) (NewLineValue!3664 (value!111517 List!19930)) (IntegerValue!10992 (value!111518 (_ BitVec 32)) (text!26095 List!19930)) (IntegerValue!10993 (value!111519 Int) (text!26096 List!19930)) (Times!3664) (Or!3664) (Equal!3664) (Minus!3664) (Broken!18324 (value!111520 List!19930)) (And!3664) (Div!3664) (LessEqual!3664) (Mod!3664) (Concat!8566) (Not!3664) (Plus!3664) (SpaceValue!3664 (value!111521 List!19930)) (IntegerValue!10994 (value!111522 Int) (text!26097 List!19930)) (StringLiteralValue!10993 (text!26098 List!19930)) (FloatLiteralValue!7329 (text!26099 List!19930)) (BytesLiteralValue!3664 (value!111523 List!19930)) (CommentValue!7329 (value!111524 List!19930)) (StringLiteralValue!10994 (value!111525 List!19930)) (ErrorTokenValue!3664 (msg!3725 List!19930)) )
))
(declare-datatypes ((C!9978 0))(
  ( (C!9979 (val!5585 Int)) )
))
(declare-datatypes ((List!19931 0))(
  ( (Nil!19861) (Cons!19861 (h!25262 C!9978) (t!169616 List!19931)) )
))
(declare-datatypes ((IArray!13217 0))(
  ( (IArray!13218 (innerList!6666 List!19931)) )
))
(declare-datatypes ((Conc!6606 0))(
  ( (Node!6606 (left!15927 Conc!6606) (right!16257 Conc!6606) (csize!13442 Int) (cheight!6817 Int)) (Leaf!9614 (xs!9482 IArray!13217) (csize!13443 Int)) (Empty!6606) )
))
(declare-datatypes ((BalanceConc!13156 0))(
  ( (BalanceConc!13157 (c!296677 Conc!6606)) )
))
(declare-datatypes ((TokenValueInjection!6988 0))(
  ( (TokenValueInjection!6989 (toValue!5109 Int) (toChars!4968 Int)) )
))
(declare-datatypes ((Regex!4902 0))(
  ( (ElementMatch!4902 (c!296678 C!9978)) (Concat!8567 (regOne!10316 Regex!4902) (regTwo!10316 Regex!4902)) (EmptyExpr!4902) (Star!4902 (reg!5231 Regex!4902)) (EmptyLang!4902) (Union!4902 (regOne!10317 Regex!4902) (regTwo!10317 Regex!4902)) )
))
(declare-datatypes ((String!22654 0))(
  ( (String!22655 (value!111526 String)) )
))
(declare-datatypes ((Rule!6948 0))(
  ( (Rule!6949 (regex!3574 Regex!4902) (tag!3988 String!22654) (isSeparator!3574 Bool) (transformation!3574 TokenValueInjection!6988)) )
))
(declare-datatypes ((List!19932 0))(
  ( (Nil!19862) (Cons!19862 (h!25263 Rule!6948) (t!169617 List!19932)) )
))
(declare-fun rules!4538 () List!19932)

(declare-fun rule!559 () Rule!6948)

(declare-fun contains!3610 (List!19932 Rule!6948) Bool)

(assert (=> b!1817027 (= res!816959 (contains!3610 rules!4538 rule!559))))

(declare-fun e!1160972 () Bool)

(assert (=> b!1817028 (= e!1160972 (and tp!513389 tp!513381))))

(declare-fun b!1817029 () Bool)

(declare-fun res!816954 () Bool)

(assert (=> b!1817029 (=> (not res!816954) (not e!1160977))))

(declare-fun isEmpty!12560 (List!19932) Bool)

(assert (=> b!1817029 (= res!816954 (not (isEmpty!12560 rules!4538)))))

(declare-fun b!1817030 () Bool)

(declare-fun e!1160971 () Bool)

(declare-fun e!1160980 () Bool)

(assert (=> b!1817030 (= e!1160971 e!1160980)))

(declare-fun res!816961 () Bool)

(assert (=> b!1817030 (=> res!816961 e!1160980)))

(declare-datatypes ((Token!6702 0))(
  ( (Token!6703 (value!111527 TokenValue!3664) (rule!5682 Rule!6948) (size!15767 Int) (originalCharacters!4382 List!19931)) )
))
(declare-datatypes ((tuple2!19408 0))(
  ( (tuple2!19409 (_1!11106 Token!6702) (_2!11106 List!19931)) )
))
(declare-datatypes ((Option!4154 0))(
  ( (None!4153) (Some!4153 (v!25680 tuple2!19408)) )
))
(declare-fun lt!706125 () Option!4154)

(declare-fun lt!706127 () Option!4154)

(assert (=> b!1817030 (= res!816961 (not (= lt!706125 lt!706127)))))

(declare-fun lt!706123 () List!19931)

(declare-fun lt!706128 () TokenValue!3664)

(declare-fun lt!706124 () Int)

(declare-fun suffix!1667 () List!19931)

(assert (=> b!1817030 (= lt!706125 (Some!4153 (tuple2!19409 (Token!6703 lt!706128 rule!559 lt!706124 lt!706123) suffix!1667)))))

(declare-datatypes ((LexerInterface!3203 0))(
  ( (LexerInterfaceExt!3200 (__x!12631 Int)) (Lexer!3201) )
))
(declare-fun thiss!28068 () LexerInterface!3203)

(declare-fun input!3612 () List!19931)

(declare-fun maxPrefixOneRule!1116 (LexerInterface!3203 Rule!6948 List!19931) Option!4154)

(assert (=> b!1817030 (= lt!706125 (maxPrefixOneRule!1116 thiss!28068 rule!559 input!3612))))

(declare-fun size!15768 (List!19931) Int)

(assert (=> b!1817030 (= lt!706124 (size!15768 lt!706123))))

(declare-fun apply!5366 (TokenValueInjection!6988 BalanceConc!13156) TokenValue!3664)

(declare-fun seqFromList!2535 (List!19931) BalanceConc!13156)

(assert (=> b!1817030 (= lt!706128 (apply!5366 (transformation!3574 rule!559) (seqFromList!2535 lt!706123)))))

(declare-datatypes ((Unit!34548 0))(
  ( (Unit!34549) )
))
(declare-fun lt!706129 () Unit!34548)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!492 (LexerInterface!3203 List!19932 List!19931 List!19931 List!19931 Rule!6948) Unit!34548)

(assert (=> b!1817030 (= lt!706129 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!492 thiss!28068 rules!4538 lt!706123 input!3612 suffix!1667 rule!559))))

(declare-fun b!1817031 () Bool)

(declare-fun e!1160978 () Bool)

(declare-fun tp_is_empty!8039 () Bool)

(declare-fun tp!513382 () Bool)

(assert (=> b!1817031 (= e!1160978 (and tp_is_empty!8039 tp!513382))))

(declare-fun token!556 () Token!6702)

(declare-fun b!1817032 () Bool)

(declare-fun e!1160984 () Bool)

(declare-fun tp!513391 () Bool)

(declare-fun e!1160982 () Bool)

(declare-fun inv!21 (TokenValue!3664) Bool)

(assert (=> b!1817032 (= e!1160984 (and (inv!21 (value!111527 token!556)) e!1160982 tp!513391))))

(declare-fun e!1160986 () Bool)

(declare-fun b!1817033 () Bool)

(declare-fun tp!513388 () Bool)

(declare-fun inv!25887 (String!22654) Bool)

(declare-fun inv!25890 (TokenValueInjection!6988) Bool)

(assert (=> b!1817033 (= e!1160982 (and tp!513388 (inv!25887 (tag!3988 (rule!5682 token!556))) (inv!25890 (transformation!3574 (rule!5682 token!556))) e!1160986))))

(declare-fun b!1817034 () Bool)

(declare-fun e!1160981 () Bool)

(declare-fun e!1160976 () Bool)

(assert (=> b!1817034 (= e!1160981 e!1160976)))

(declare-fun res!816953 () Bool)

(assert (=> b!1817034 (=> (not res!816953) (not e!1160976))))

(declare-fun ++!5398 (List!19931 List!19931) List!19931)

(assert (=> b!1817034 (= res!816953 (= input!3612 (++!5398 lt!706123 suffix!1667)))))

(declare-fun list!8078 (BalanceConc!13156) List!19931)

(declare-fun charsOf!2217 (Token!6702) BalanceConc!13156)

(assert (=> b!1817034 (= lt!706123 (list!8078 (charsOf!2217 token!556)))))

(declare-fun res!816958 () Bool)

(assert (=> start!179776 (=> (not res!816958) (not e!1160977))))

(assert (=> start!179776 (= res!816958 (is-Lexer!3201 thiss!28068))))

(assert (=> start!179776 e!1160977))

(assert (=> start!179776 e!1160978))

(assert (=> start!179776 true))

(declare-fun e!1160973 () Bool)

(assert (=> start!179776 e!1160973))

(declare-fun inv!25891 (Token!6702) Bool)

(assert (=> start!179776 (and (inv!25891 token!556) e!1160984)))

(declare-fun e!1160987 () Bool)

(assert (=> start!179776 e!1160987))

(declare-fun e!1160979 () Bool)

(assert (=> start!179776 e!1160979))

(declare-fun b!1817035 () Bool)

(declare-fun e!1160983 () Bool)

(declare-fun tp!513387 () Bool)

(assert (=> b!1817035 (= e!1160973 (and e!1160983 tp!513387))))

(assert (=> b!1817036 (= e!1160986 (and tp!513379 tp!513390))))

(declare-fun b!1817037 () Bool)

(declare-fun validRegex!1986 (Regex!4902) Bool)

(assert (=> b!1817037 (= e!1160980 (validRegex!1986 (regex!3574 rule!559)))))

(declare-fun b!1817038 () Bool)

(declare-fun tp!513384 () Bool)

(assert (=> b!1817038 (= e!1160987 (and tp!513384 (inv!25887 (tag!3988 rule!559)) (inv!25890 (transformation!3574 rule!559)) e!1160972))))

(declare-fun b!1817039 () Bool)

(assert (=> b!1817039 (= e!1160977 e!1160981)))

(declare-fun res!816956 () Bool)

(assert (=> b!1817039 (=> (not res!816956) (not e!1160981))))

(declare-fun maxPrefix!1751 (LexerInterface!3203 List!19932 List!19931) Option!4154)

(assert (=> b!1817039 (= res!816956 (= (maxPrefix!1751 thiss!28068 rules!4538 input!3612) lt!706127))))

(assert (=> b!1817039 (= lt!706127 (Some!4153 (tuple2!19409 token!556 suffix!1667)))))

(declare-fun b!1817040 () Bool)

(declare-fun res!816957 () Bool)

(assert (=> b!1817040 (=> (not res!816957) (not e!1160981))))

(assert (=> b!1817040 (= res!816957 (= (rule!5682 token!556) rule!559))))

(declare-fun b!1817041 () Bool)

(assert (=> b!1817041 (= e!1160976 (not e!1160971))))

(declare-fun res!816960 () Bool)

(assert (=> b!1817041 (=> res!816960 e!1160971)))

(declare-fun matchR!2367 (Regex!4902 List!19931) Bool)

(assert (=> b!1817041 (= res!816960 (not (matchR!2367 (regex!3574 rule!559) lt!706123)))))

(declare-fun ruleValid!1066 (LexerInterface!3203 Rule!6948) Bool)

(assert (=> b!1817041 (ruleValid!1066 thiss!28068 rule!559)))

(declare-fun lt!706126 () Unit!34548)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!587 (LexerInterface!3203 Rule!6948 List!19932) Unit!34548)

(assert (=> b!1817041 (= lt!706126 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!587 thiss!28068 rule!559 rules!4538))))

(declare-fun e!1160985 () Bool)

(declare-fun tp!513383 () Bool)

(declare-fun b!1817042 () Bool)

(assert (=> b!1817042 (= e!1160983 (and tp!513383 (inv!25887 (tag!3988 (h!25263 rules!4538))) (inv!25890 (transformation!3574 (h!25263 rules!4538))) e!1160985))))

(declare-fun b!1817043 () Bool)

(declare-fun res!816955 () Bool)

(assert (=> b!1817043 (=> (not res!816955) (not e!1160977))))

(declare-fun rulesInvariant!2872 (LexerInterface!3203 List!19932) Bool)

(assert (=> b!1817043 (= res!816955 (rulesInvariant!2872 thiss!28068 rules!4538))))

(assert (=> b!1817044 (= e!1160985 (and tp!513386 tp!513385))))

(declare-fun b!1817045 () Bool)

(declare-fun tp!513380 () Bool)

(assert (=> b!1817045 (= e!1160979 (and tp_is_empty!8039 tp!513380))))

(assert (= (and start!179776 res!816958) b!1817029))

(assert (= (and b!1817029 res!816954) b!1817043))

(assert (= (and b!1817043 res!816955) b!1817027))

(assert (= (and b!1817027 res!816959) b!1817039))

(assert (= (and b!1817039 res!816956) b!1817040))

(assert (= (and b!1817040 res!816957) b!1817034))

(assert (= (and b!1817034 res!816953) b!1817041))

(assert (= (and b!1817041 (not res!816960)) b!1817030))

(assert (= (and b!1817030 (not res!816961)) b!1817037))

(assert (= (and start!179776 (is-Cons!19861 suffix!1667)) b!1817031))

(assert (= b!1817042 b!1817044))

(assert (= b!1817035 b!1817042))

(assert (= (and start!179776 (is-Cons!19862 rules!4538)) b!1817035))

(assert (= b!1817033 b!1817036))

(assert (= b!1817032 b!1817033))

(assert (= start!179776 b!1817032))

(assert (= b!1817038 b!1817028))

(assert (= start!179776 b!1817038))

(assert (= (and start!179776 (is-Cons!19861 input!3612)) b!1817045))

(declare-fun m!2246453 () Bool)

(assert (=> start!179776 m!2246453))

(declare-fun m!2246455 () Bool)

(assert (=> b!1817030 m!2246455))

(declare-fun m!2246457 () Bool)

(assert (=> b!1817030 m!2246457))

(declare-fun m!2246459 () Bool)

(assert (=> b!1817030 m!2246459))

(declare-fun m!2246461 () Bool)

(assert (=> b!1817030 m!2246461))

(assert (=> b!1817030 m!2246457))

(declare-fun m!2246463 () Bool)

(assert (=> b!1817030 m!2246463))

(declare-fun m!2246465 () Bool)

(assert (=> b!1817038 m!2246465))

(declare-fun m!2246467 () Bool)

(assert (=> b!1817038 m!2246467))

(declare-fun m!2246469 () Bool)

(assert (=> b!1817041 m!2246469))

(declare-fun m!2246471 () Bool)

(assert (=> b!1817041 m!2246471))

(declare-fun m!2246473 () Bool)

(assert (=> b!1817041 m!2246473))

(declare-fun m!2246475 () Bool)

(assert (=> b!1817037 m!2246475))

(declare-fun m!2246477 () Bool)

(assert (=> b!1817043 m!2246477))

(declare-fun m!2246479 () Bool)

(assert (=> b!1817042 m!2246479))

(declare-fun m!2246481 () Bool)

(assert (=> b!1817042 m!2246481))

(declare-fun m!2246483 () Bool)

(assert (=> b!1817032 m!2246483))

(declare-fun m!2246485 () Bool)

(assert (=> b!1817027 m!2246485))

(declare-fun m!2246487 () Bool)

(assert (=> b!1817033 m!2246487))

(declare-fun m!2246489 () Bool)

(assert (=> b!1817033 m!2246489))

(declare-fun m!2246491 () Bool)

(assert (=> b!1817029 m!2246491))

(declare-fun m!2246493 () Bool)

(assert (=> b!1817039 m!2246493))

(declare-fun m!2246495 () Bool)

(assert (=> b!1817034 m!2246495))

(declare-fun m!2246497 () Bool)

(assert (=> b!1817034 m!2246497))

(assert (=> b!1817034 m!2246497))

(declare-fun m!2246499 () Bool)

(assert (=> b!1817034 m!2246499))

(push 1)

(assert (not b_next!50949))

(assert b_and!140711)

(assert (not b!1817043))

(assert b_and!140713)

(assert (not b_next!50943))

(assert (not b!1817034))

(assert (not b_next!50945))

(assert (not b!1817042))

(assert (not b_next!50939))

(assert (not b!1817037))

(assert b_and!140715)

(assert (not b_next!50941))

(assert (not b!1817030))

(assert (not b_next!50947))

(assert (not b!1817041))

(assert b_and!140709)

(assert (not b!1817038))

(assert (not b!1817033))

(assert b_and!140705)

(assert (not b!1817035))

(assert (not b!1817031))

(assert tp_is_empty!8039)

(assert (not b!1817029))

(assert (not b!1817039))

(assert (not start!179776))

(assert (not b!1817045))

(assert b_and!140707)

(assert (not b!1817027))

(assert (not b!1817032))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!50949))

(assert (not b_next!50947))

(assert b_and!140711)

(assert b_and!140713)

(assert (not b_next!50943))

(assert (not b_next!50945))

(assert b_and!140709)

(assert b_and!140705)

(assert (not b_next!50939))

(assert b_and!140707)

(assert b_and!140715)

(assert (not b_next!50941))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1817132 () Bool)

(declare-fun e!1161060 () Bool)

(declare-fun e!1161061 () Bool)

(assert (=> b!1817132 (= e!1161060 e!1161061)))

(declare-fun res!817014 () Bool)

(assert (=> b!1817132 (=> (not res!817014) (not e!1161061))))

(declare-fun lt!706165 () Option!4154)

(declare-fun isDefined!3489 (Option!4154) Bool)

(assert (=> b!1817132 (= res!817014 (isDefined!3489 lt!706165))))

(declare-fun b!1817133 () Bool)

(declare-fun res!817013 () Bool)

(assert (=> b!1817133 (=> (not res!817013) (not e!1161061))))

(declare-fun get!6151 (Option!4154) tuple2!19408)

(assert (=> b!1817133 (= res!817013 (= (list!8078 (charsOf!2217 (_1!11106 (get!6151 lt!706165)))) (originalCharacters!4382 (_1!11106 (get!6151 lt!706165)))))))

(declare-fun bm!114214 () Bool)

(declare-fun call!114219 () Option!4154)

(assert (=> bm!114214 (= call!114219 (maxPrefixOneRule!1116 thiss!28068 (h!25263 rules!4538) input!3612))))

(declare-fun b!1817135 () Bool)

(declare-fun res!817017 () Bool)

(assert (=> b!1817135 (=> (not res!817017) (not e!1161061))))

(assert (=> b!1817135 (= res!817017 (= (++!5398 (list!8078 (charsOf!2217 (_1!11106 (get!6151 lt!706165)))) (_2!11106 (get!6151 lt!706165))) input!3612))))

(declare-fun b!1817136 () Bool)

(assert (=> b!1817136 (= e!1161061 (contains!3610 rules!4538 (rule!5682 (_1!11106 (get!6151 lt!706165)))))))

(declare-fun b!1817134 () Bool)

(declare-fun e!1161059 () Option!4154)

(assert (=> b!1817134 (= e!1161059 call!114219)))

(declare-fun d!557118 () Bool)

(assert (=> d!557118 e!1161060))

(declare-fun res!817016 () Bool)

(assert (=> d!557118 (=> res!817016 e!1161060)))

(declare-fun isEmpty!12562 (Option!4154) Bool)

(assert (=> d!557118 (= res!817016 (isEmpty!12562 lt!706165))))

(assert (=> d!557118 (= lt!706165 e!1161059)))

(declare-fun c!296684 () Bool)

(assert (=> d!557118 (= c!296684 (and (is-Cons!19862 rules!4538) (is-Nil!19862 (t!169617 rules!4538))))))

(declare-fun lt!706162 () Unit!34548)

(declare-fun lt!706161 () Unit!34548)

(assert (=> d!557118 (= lt!706162 lt!706161)))

(declare-fun isPrefix!1802 (List!19931 List!19931) Bool)

(assert (=> d!557118 (isPrefix!1802 input!3612 input!3612)))

(declare-fun lemmaIsPrefixRefl!1179 (List!19931 List!19931) Unit!34548)

(assert (=> d!557118 (= lt!706161 (lemmaIsPrefixRefl!1179 input!3612 input!3612))))

(declare-fun rulesValidInductive!1221 (LexerInterface!3203 List!19932) Bool)

(assert (=> d!557118 (rulesValidInductive!1221 thiss!28068 rules!4538)))

(assert (=> d!557118 (= (maxPrefix!1751 thiss!28068 rules!4538 input!3612) lt!706165)))

(declare-fun b!1817137 () Bool)

(declare-fun res!817019 () Bool)

(assert (=> b!1817137 (=> (not res!817019) (not e!1161061))))

(assert (=> b!1817137 (= res!817019 (matchR!2367 (regex!3574 (rule!5682 (_1!11106 (get!6151 lt!706165)))) (list!8078 (charsOf!2217 (_1!11106 (get!6151 lt!706165))))))))

(declare-fun b!1817138 () Bool)

(declare-fun lt!706163 () Option!4154)

(declare-fun lt!706164 () Option!4154)

(assert (=> b!1817138 (= e!1161059 (ite (and (is-None!4153 lt!706163) (is-None!4153 lt!706164)) None!4153 (ite (is-None!4153 lt!706164) lt!706163 (ite (is-None!4153 lt!706163) lt!706164 (ite (>= (size!15767 (_1!11106 (v!25680 lt!706163))) (size!15767 (_1!11106 (v!25680 lt!706164)))) lt!706163 lt!706164)))))))

(assert (=> b!1817138 (= lt!706163 call!114219)))

(assert (=> b!1817138 (= lt!706164 (maxPrefix!1751 thiss!28068 (t!169617 rules!4538) input!3612))))

(declare-fun b!1817139 () Bool)

(declare-fun res!817015 () Bool)

(assert (=> b!1817139 (=> (not res!817015) (not e!1161061))))

(assert (=> b!1817139 (= res!817015 (= (value!111527 (_1!11106 (get!6151 lt!706165))) (apply!5366 (transformation!3574 (rule!5682 (_1!11106 (get!6151 lt!706165)))) (seqFromList!2535 (originalCharacters!4382 (_1!11106 (get!6151 lt!706165)))))))))

(declare-fun b!1817140 () Bool)

(declare-fun res!817018 () Bool)

(assert (=> b!1817140 (=> (not res!817018) (not e!1161061))))

(assert (=> b!1817140 (= res!817018 (< (size!15768 (_2!11106 (get!6151 lt!706165))) (size!15768 input!3612)))))

(assert (= (and d!557118 c!296684) b!1817134))

(assert (= (and d!557118 (not c!296684)) b!1817138))

(assert (= (or b!1817134 b!1817138) bm!114214))

(assert (= (and d!557118 (not res!817016)) b!1817132))

(assert (= (and b!1817132 res!817014) b!1817133))

(assert (= (and b!1817133 res!817013) b!1817140))

(assert (= (and b!1817140 res!817018) b!1817135))

(assert (= (and b!1817135 res!817017) b!1817139))

(assert (= (and b!1817139 res!817015) b!1817137))

(assert (= (and b!1817137 res!817019) b!1817136))

(declare-fun m!2246561 () Bool)

(assert (=> d!557118 m!2246561))

(declare-fun m!2246563 () Bool)

(assert (=> d!557118 m!2246563))

(declare-fun m!2246565 () Bool)

(assert (=> d!557118 m!2246565))

(declare-fun m!2246567 () Bool)

(assert (=> d!557118 m!2246567))

(declare-fun m!2246569 () Bool)

(assert (=> b!1817140 m!2246569))

(declare-fun m!2246571 () Bool)

(assert (=> b!1817140 m!2246571))

(declare-fun m!2246573 () Bool)

(assert (=> b!1817140 m!2246573))

(assert (=> b!1817136 m!2246569))

(declare-fun m!2246575 () Bool)

(assert (=> b!1817136 m!2246575))

(assert (=> b!1817139 m!2246569))

(declare-fun m!2246577 () Bool)

(assert (=> b!1817139 m!2246577))

(assert (=> b!1817139 m!2246577))

(declare-fun m!2246579 () Bool)

(assert (=> b!1817139 m!2246579))

(declare-fun m!2246581 () Bool)

(assert (=> b!1817132 m!2246581))

(assert (=> b!1817135 m!2246569))

(declare-fun m!2246583 () Bool)

(assert (=> b!1817135 m!2246583))

(assert (=> b!1817135 m!2246583))

(declare-fun m!2246585 () Bool)

(assert (=> b!1817135 m!2246585))

(assert (=> b!1817135 m!2246585))

(declare-fun m!2246587 () Bool)

(assert (=> b!1817135 m!2246587))

(assert (=> b!1817137 m!2246569))

(assert (=> b!1817137 m!2246583))

(assert (=> b!1817137 m!2246583))

(assert (=> b!1817137 m!2246585))

(assert (=> b!1817137 m!2246585))

(declare-fun m!2246589 () Bool)

(assert (=> b!1817137 m!2246589))

(declare-fun m!2246591 () Bool)

(assert (=> b!1817138 m!2246591))

(declare-fun m!2246593 () Bool)

(assert (=> bm!114214 m!2246593))

(assert (=> b!1817133 m!2246569))

(assert (=> b!1817133 m!2246583))

(assert (=> b!1817133 m!2246583))

(assert (=> b!1817133 m!2246585))

(assert (=> b!1817039 d!557118))

(declare-fun d!557124 () Bool)

(assert (=> d!557124 (= (isEmpty!12560 rules!4538) (is-Nil!19862 rules!4538))))

(assert (=> b!1817029 d!557124))

(declare-fun d!557126 () Bool)

(declare-fun lt!706168 () Bool)

(declare-fun content!2902 (List!19932) (Set Rule!6948))

(assert (=> d!557126 (= lt!706168 (set.member rule!559 (content!2902 rules!4538)))))

(declare-fun e!1161067 () Bool)

(assert (=> d!557126 (= lt!706168 e!1161067)))

(declare-fun res!817024 () Bool)

(assert (=> d!557126 (=> (not res!817024) (not e!1161067))))

(assert (=> d!557126 (= res!817024 (is-Cons!19862 rules!4538))))

(assert (=> d!557126 (= (contains!3610 rules!4538 rule!559) lt!706168)))

(declare-fun b!1817145 () Bool)

(declare-fun e!1161066 () Bool)

(assert (=> b!1817145 (= e!1161067 e!1161066)))

(declare-fun res!817025 () Bool)

(assert (=> b!1817145 (=> res!817025 e!1161066)))

(assert (=> b!1817145 (= res!817025 (= (h!25263 rules!4538) rule!559))))

(declare-fun b!1817146 () Bool)

(assert (=> b!1817146 (= e!1161066 (contains!3610 (t!169617 rules!4538) rule!559))))

(assert (= (and d!557126 res!817024) b!1817145))

(assert (= (and b!1817145 (not res!817025)) b!1817146))

(declare-fun m!2246595 () Bool)

(assert (=> d!557126 m!2246595))

(declare-fun m!2246597 () Bool)

(assert (=> d!557126 m!2246597))

(declare-fun m!2246599 () Bool)

(assert (=> b!1817146 m!2246599))

(assert (=> b!1817027 d!557126))

(declare-fun d!557128 () Bool)

(assert (=> d!557128 (= (inv!25887 (tag!3988 rule!559)) (= (mod (str.len (value!111526 (tag!3988 rule!559))) 2) 0))))

(assert (=> b!1817038 d!557128))

(declare-fun d!557130 () Bool)

(declare-fun res!817028 () Bool)

(declare-fun e!1161070 () Bool)

(assert (=> d!557130 (=> (not res!817028) (not e!1161070))))

(declare-fun semiInverseModEq!1427 (Int Int) Bool)

(assert (=> d!557130 (= res!817028 (semiInverseModEq!1427 (toChars!4968 (transformation!3574 rule!559)) (toValue!5109 (transformation!3574 rule!559))))))

(assert (=> d!557130 (= (inv!25890 (transformation!3574 rule!559)) e!1161070)))

(declare-fun b!1817149 () Bool)

(declare-fun equivClasses!1368 (Int Int) Bool)

(assert (=> b!1817149 (= e!1161070 (equivClasses!1368 (toChars!4968 (transformation!3574 rule!559)) (toValue!5109 (transformation!3574 rule!559))))))

(assert (= (and d!557130 res!817028) b!1817149))

(declare-fun m!2246601 () Bool)

(assert (=> d!557130 m!2246601))

(declare-fun m!2246603 () Bool)

(assert (=> b!1817149 m!2246603))

(assert (=> b!1817038 d!557130))

(declare-fun b!1817168 () Bool)

(declare-fun e!1161086 () Bool)

(declare-fun e!1161088 () Bool)

(assert (=> b!1817168 (= e!1161086 e!1161088)))

(declare-fun c!296690 () Bool)

(assert (=> b!1817168 (= c!296690 (is-Star!4902 (regex!3574 rule!559)))))

(declare-fun b!1817169 () Bool)

(declare-fun e!1161089 () Bool)

(declare-fun call!114227 () Bool)

(assert (=> b!1817169 (= e!1161089 call!114227)))

(declare-fun b!1817170 () Bool)

(declare-fun res!817043 () Bool)

(declare-fun e!1161087 () Bool)

(assert (=> b!1817170 (=> (not res!817043) (not e!1161087))))

(declare-fun call!114228 () Bool)

(assert (=> b!1817170 (= res!817043 call!114228)))

(declare-fun e!1161090 () Bool)

(assert (=> b!1817170 (= e!1161090 e!1161087)))

(declare-fun b!1817171 () Bool)

(declare-fun res!817039 () Bool)

(declare-fun e!1161085 () Bool)

(assert (=> b!1817171 (=> res!817039 e!1161085)))

(assert (=> b!1817171 (= res!817039 (not (is-Concat!8567 (regex!3574 rule!559))))))

(assert (=> b!1817171 (= e!1161090 e!1161085)))

(declare-fun call!114226 () Bool)

(declare-fun bm!114222 () Bool)

(declare-fun c!296689 () Bool)

(assert (=> bm!114222 (= call!114226 (validRegex!1986 (ite c!296690 (reg!5231 (regex!3574 rule!559)) (ite c!296689 (regOne!10317 (regex!3574 rule!559)) (regOne!10316 (regex!3574 rule!559))))))))

(declare-fun b!1817172 () Bool)

(assert (=> b!1817172 (= e!1161085 e!1161089)))

(declare-fun res!817042 () Bool)

(assert (=> b!1817172 (=> (not res!817042) (not e!1161089))))

(assert (=> b!1817172 (= res!817042 call!114228)))

(declare-fun b!1817173 () Bool)

(assert (=> b!1817173 (= e!1161088 e!1161090)))

(assert (=> b!1817173 (= c!296689 (is-Union!4902 (regex!3574 rule!559)))))

(declare-fun b!1817174 () Bool)

(assert (=> b!1817174 (= e!1161087 call!114227)))

(declare-fun bm!114223 () Bool)

(assert (=> bm!114223 (= call!114227 (validRegex!1986 (ite c!296689 (regTwo!10317 (regex!3574 rule!559)) (regTwo!10316 (regex!3574 rule!559)))))))

(declare-fun bm!114221 () Bool)

(assert (=> bm!114221 (= call!114228 call!114226)))

(declare-fun d!557132 () Bool)

(declare-fun res!817041 () Bool)

(assert (=> d!557132 (=> res!817041 e!1161086)))

(assert (=> d!557132 (= res!817041 (is-ElementMatch!4902 (regex!3574 rule!559)))))

(assert (=> d!557132 (= (validRegex!1986 (regex!3574 rule!559)) e!1161086)))

(declare-fun b!1817175 () Bool)

(declare-fun e!1161091 () Bool)

(assert (=> b!1817175 (= e!1161091 call!114226)))

(declare-fun b!1817176 () Bool)

(assert (=> b!1817176 (= e!1161088 e!1161091)))

(declare-fun res!817040 () Bool)

(declare-fun nullable!1512 (Regex!4902) Bool)

(assert (=> b!1817176 (= res!817040 (not (nullable!1512 (reg!5231 (regex!3574 rule!559)))))))

(assert (=> b!1817176 (=> (not res!817040) (not e!1161091))))

(assert (= (and d!557132 (not res!817041)) b!1817168))

(assert (= (and b!1817168 c!296690) b!1817176))

(assert (= (and b!1817168 (not c!296690)) b!1817173))

(assert (= (and b!1817176 res!817040) b!1817175))

(assert (= (and b!1817173 c!296689) b!1817170))

(assert (= (and b!1817173 (not c!296689)) b!1817171))

(assert (= (and b!1817170 res!817043) b!1817174))

(assert (= (and b!1817171 (not res!817039)) b!1817172))

(assert (= (and b!1817172 res!817042) b!1817169))

(assert (= (or b!1817174 b!1817169) bm!114223))

(assert (= (or b!1817170 b!1817172) bm!114221))

(assert (= (or b!1817175 bm!114221) bm!114222))

(declare-fun m!2246605 () Bool)

(assert (=> bm!114222 m!2246605))

(declare-fun m!2246607 () Bool)

(assert (=> bm!114223 m!2246607))

(declare-fun m!2246609 () Bool)

(assert (=> b!1817176 m!2246609))

(assert (=> b!1817037 d!557132))

(declare-fun b!1817186 () Bool)

(declare-fun e!1161096 () List!19931)

(assert (=> b!1817186 (= e!1161096 (Cons!19861 (h!25262 lt!706123) (++!5398 (t!169616 lt!706123) suffix!1667)))))

(declare-fun b!1817185 () Bool)

(assert (=> b!1817185 (= e!1161096 suffix!1667)))

(declare-fun b!1817187 () Bool)

(declare-fun res!817049 () Bool)

(declare-fun e!1161097 () Bool)

(assert (=> b!1817187 (=> (not res!817049) (not e!1161097))))

(declare-fun lt!706171 () List!19931)

(assert (=> b!1817187 (= res!817049 (= (size!15768 lt!706171) (+ (size!15768 lt!706123) (size!15768 suffix!1667))))))

(declare-fun d!557134 () Bool)

(assert (=> d!557134 e!1161097))

(declare-fun res!817048 () Bool)

(assert (=> d!557134 (=> (not res!817048) (not e!1161097))))

(declare-fun content!2903 (List!19931) (Set C!9978))

(assert (=> d!557134 (= res!817048 (= (content!2903 lt!706171) (set.union (content!2903 lt!706123) (content!2903 suffix!1667))))))

(assert (=> d!557134 (= lt!706171 e!1161096)))

(declare-fun c!296693 () Bool)

(assert (=> d!557134 (= c!296693 (is-Nil!19861 lt!706123))))

(assert (=> d!557134 (= (++!5398 lt!706123 suffix!1667) lt!706171)))

(declare-fun b!1817188 () Bool)

(assert (=> b!1817188 (= e!1161097 (or (not (= suffix!1667 Nil!19861)) (= lt!706171 lt!706123)))))

(assert (= (and d!557134 c!296693) b!1817185))

(assert (= (and d!557134 (not c!296693)) b!1817186))

(assert (= (and d!557134 res!817048) b!1817187))

(assert (= (and b!1817187 res!817049) b!1817188))

(declare-fun m!2246611 () Bool)

(assert (=> b!1817186 m!2246611))

(declare-fun m!2246613 () Bool)

(assert (=> b!1817187 m!2246613))

(assert (=> b!1817187 m!2246455))

(declare-fun m!2246615 () Bool)

(assert (=> b!1817187 m!2246615))

(declare-fun m!2246617 () Bool)

(assert (=> d!557134 m!2246617))

(declare-fun m!2246619 () Bool)

(assert (=> d!557134 m!2246619))

(declare-fun m!2246621 () Bool)

(assert (=> d!557134 m!2246621))

(assert (=> b!1817034 d!557134))

(declare-fun d!557136 () Bool)

(declare-fun list!8080 (Conc!6606) List!19931)

(assert (=> d!557136 (= (list!8078 (charsOf!2217 token!556)) (list!8080 (c!296677 (charsOf!2217 token!556))))))

(declare-fun bs!407228 () Bool)

(assert (= bs!407228 d!557136))

(declare-fun m!2246623 () Bool)

(assert (=> bs!407228 m!2246623))

(assert (=> b!1817034 d!557136))

(declare-fun d!557138 () Bool)

(declare-fun lt!706174 () BalanceConc!13156)

(assert (=> d!557138 (= (list!8078 lt!706174) (originalCharacters!4382 token!556))))

(declare-fun dynLambda!9894 (Int TokenValue!3664) BalanceConc!13156)

(assert (=> d!557138 (= lt!706174 (dynLambda!9894 (toChars!4968 (transformation!3574 (rule!5682 token!556))) (value!111527 token!556)))))

(assert (=> d!557138 (= (charsOf!2217 token!556) lt!706174)))

(declare-fun b_lambda!59955 () Bool)

(assert (=> (not b_lambda!59955) (not d!557138)))

(declare-fun t!169628 () Bool)

(declare-fun tb!111083 () Bool)

(assert (=> (and b!1817036 (= (toChars!4968 (transformation!3574 (rule!5682 token!556))) (toChars!4968 (transformation!3574 (rule!5682 token!556)))) t!169628) tb!111083))

(declare-fun b!1817193 () Bool)

(declare-fun e!1161100 () Bool)

(declare-fun tp!513436 () Bool)

(declare-fun inv!25894 (Conc!6606) Bool)

(assert (=> b!1817193 (= e!1161100 (and (inv!25894 (c!296677 (dynLambda!9894 (toChars!4968 (transformation!3574 (rule!5682 token!556))) (value!111527 token!556)))) tp!513436))))

(declare-fun result!133420 () Bool)

(declare-fun inv!25895 (BalanceConc!13156) Bool)

(assert (=> tb!111083 (= result!133420 (and (inv!25895 (dynLambda!9894 (toChars!4968 (transformation!3574 (rule!5682 token!556))) (value!111527 token!556))) e!1161100))))

(assert (= tb!111083 b!1817193))

(declare-fun m!2246625 () Bool)

(assert (=> b!1817193 m!2246625))

(declare-fun m!2246627 () Bool)

(assert (=> tb!111083 m!2246627))

(assert (=> d!557138 t!169628))

(declare-fun b_and!140735 () Bool)

(assert (= b_and!140707 (and (=> t!169628 result!133420) b_and!140735)))

(declare-fun tb!111085 () Bool)

(declare-fun t!169630 () Bool)

(assert (=> (and b!1817028 (= (toChars!4968 (transformation!3574 rule!559)) (toChars!4968 (transformation!3574 (rule!5682 token!556)))) t!169630) tb!111085))

(declare-fun result!133424 () Bool)

(assert (= result!133424 result!133420))

(assert (=> d!557138 t!169630))

(declare-fun b_and!140737 () Bool)

(assert (= b_and!140711 (and (=> t!169630 result!133424) b_and!140737)))

(declare-fun tb!111087 () Bool)

(declare-fun t!169632 () Bool)

(assert (=> (and b!1817044 (= (toChars!4968 (transformation!3574 (h!25263 rules!4538))) (toChars!4968 (transformation!3574 (rule!5682 token!556)))) t!169632) tb!111087))

(declare-fun result!133426 () Bool)

(assert (= result!133426 result!133420))

(assert (=> d!557138 t!169632))

(declare-fun b_and!140739 () Bool)

(assert (= b_and!140715 (and (=> t!169632 result!133426) b_and!140739)))

(declare-fun m!2246629 () Bool)

(assert (=> d!557138 m!2246629))

(declare-fun m!2246631 () Bool)

(assert (=> d!557138 m!2246631))

(assert (=> b!1817034 d!557138))

(declare-fun d!557140 () Bool)

(declare-fun c!296698 () Bool)

(assert (=> d!557140 (= c!296698 (is-IntegerValue!10992 (value!111527 token!556)))))

(declare-fun e!1161108 () Bool)

(assert (=> d!557140 (= (inv!21 (value!111527 token!556)) e!1161108)))

(declare-fun b!1817204 () Bool)

(declare-fun e!1161107 () Bool)

(assert (=> b!1817204 (= e!1161108 e!1161107)))

(declare-fun c!296699 () Bool)

(assert (=> b!1817204 (= c!296699 (is-IntegerValue!10993 (value!111527 token!556)))))

(declare-fun b!1817205 () Bool)

(declare-fun e!1161109 () Bool)

(declare-fun inv!15 (TokenValue!3664) Bool)

(assert (=> b!1817205 (= e!1161109 (inv!15 (value!111527 token!556)))))

(declare-fun b!1817206 () Bool)

(declare-fun res!817052 () Bool)

(assert (=> b!1817206 (=> res!817052 e!1161109)))

(assert (=> b!1817206 (= res!817052 (not (is-IntegerValue!10994 (value!111527 token!556))))))

(assert (=> b!1817206 (= e!1161107 e!1161109)))

(declare-fun b!1817207 () Bool)

(declare-fun inv!16 (TokenValue!3664) Bool)

(assert (=> b!1817207 (= e!1161108 (inv!16 (value!111527 token!556)))))

(declare-fun b!1817208 () Bool)

(declare-fun inv!17 (TokenValue!3664) Bool)

(assert (=> b!1817208 (= e!1161107 (inv!17 (value!111527 token!556)))))

(assert (= (and d!557140 c!296698) b!1817207))

(assert (= (and d!557140 (not c!296698)) b!1817204))

(assert (= (and b!1817204 c!296699) b!1817208))

(assert (= (and b!1817204 (not c!296699)) b!1817206))

(assert (= (and b!1817206 (not res!817052)) b!1817205))

(declare-fun m!2246633 () Bool)

(assert (=> b!1817205 m!2246633))

(declare-fun m!2246635 () Bool)

(assert (=> b!1817207 m!2246635))

(declare-fun m!2246637 () Bool)

(assert (=> b!1817208 m!2246637))

(assert (=> b!1817032 d!557140))

(declare-fun d!557142 () Bool)

(declare-fun res!817055 () Bool)

(declare-fun e!1161112 () Bool)

(assert (=> d!557142 (=> (not res!817055) (not e!1161112))))

(declare-fun rulesValid!1352 (LexerInterface!3203 List!19932) Bool)

(assert (=> d!557142 (= res!817055 (rulesValid!1352 thiss!28068 rules!4538))))

(assert (=> d!557142 (= (rulesInvariant!2872 thiss!28068 rules!4538) e!1161112)))

(declare-fun b!1817211 () Bool)

(declare-datatypes ((List!19936 0))(
  ( (Nil!19866) (Cons!19866 (h!25267 String!22654) (t!169649 List!19936)) )
))
(declare-fun noDuplicateTag!1352 (LexerInterface!3203 List!19932 List!19936) Bool)

(assert (=> b!1817211 (= e!1161112 (noDuplicateTag!1352 thiss!28068 rules!4538 Nil!19866))))

(assert (= (and d!557142 res!817055) b!1817211))

(declare-fun m!2246639 () Bool)

(assert (=> d!557142 m!2246639))

(declare-fun m!2246641 () Bool)

(assert (=> b!1817211 m!2246641))

(assert (=> b!1817043 d!557142))

(declare-fun d!557144 () Bool)

(declare-fun res!817060 () Bool)

(declare-fun e!1161115 () Bool)

(assert (=> d!557144 (=> (not res!817060) (not e!1161115))))

(declare-fun isEmpty!12563 (List!19931) Bool)

(assert (=> d!557144 (= res!817060 (not (isEmpty!12563 (originalCharacters!4382 token!556))))))

(assert (=> d!557144 (= (inv!25891 token!556) e!1161115)))

(declare-fun b!1817216 () Bool)

(declare-fun res!817061 () Bool)

(assert (=> b!1817216 (=> (not res!817061) (not e!1161115))))

(assert (=> b!1817216 (= res!817061 (= (originalCharacters!4382 token!556) (list!8078 (dynLambda!9894 (toChars!4968 (transformation!3574 (rule!5682 token!556))) (value!111527 token!556)))))))

(declare-fun b!1817217 () Bool)

(assert (=> b!1817217 (= e!1161115 (= (size!15767 token!556) (size!15768 (originalCharacters!4382 token!556))))))

(assert (= (and d!557144 res!817060) b!1817216))

(assert (= (and b!1817216 res!817061) b!1817217))

(declare-fun b_lambda!59957 () Bool)

(assert (=> (not b_lambda!59957) (not b!1817216)))

(assert (=> b!1817216 t!169628))

(declare-fun b_and!140741 () Bool)

(assert (= b_and!140735 (and (=> t!169628 result!133420) b_and!140741)))

(assert (=> b!1817216 t!169630))

(declare-fun b_and!140743 () Bool)

(assert (= b_and!140737 (and (=> t!169630 result!133424) b_and!140743)))

(assert (=> b!1817216 t!169632))

(declare-fun b_and!140745 () Bool)

(assert (= b_and!140739 (and (=> t!169632 result!133426) b_and!140745)))

(declare-fun m!2246643 () Bool)

(assert (=> d!557144 m!2246643))

(assert (=> b!1817216 m!2246631))

(assert (=> b!1817216 m!2246631))

(declare-fun m!2246645 () Bool)

(assert (=> b!1817216 m!2246645))

(declare-fun m!2246647 () Bool)

(assert (=> b!1817217 m!2246647))

(assert (=> start!179776 d!557144))

(declare-fun d!557146 () Bool)

(assert (=> d!557146 (= (inv!25887 (tag!3988 (rule!5682 token!556))) (= (mod (str.len (value!111526 (tag!3988 (rule!5682 token!556)))) 2) 0))))

(assert (=> b!1817033 d!557146))

(declare-fun d!557148 () Bool)

(declare-fun res!817062 () Bool)

(declare-fun e!1161116 () Bool)

(assert (=> d!557148 (=> (not res!817062) (not e!1161116))))

(assert (=> d!557148 (= res!817062 (semiInverseModEq!1427 (toChars!4968 (transformation!3574 (rule!5682 token!556))) (toValue!5109 (transformation!3574 (rule!5682 token!556)))))))

(assert (=> d!557148 (= (inv!25890 (transformation!3574 (rule!5682 token!556))) e!1161116)))

(declare-fun b!1817218 () Bool)

(assert (=> b!1817218 (= e!1161116 (equivClasses!1368 (toChars!4968 (transformation!3574 (rule!5682 token!556))) (toValue!5109 (transformation!3574 (rule!5682 token!556)))))))

(assert (= (and d!557148 res!817062) b!1817218))

(declare-fun m!2246649 () Bool)

(assert (=> d!557148 m!2246649))

(declare-fun m!2246651 () Bool)

(assert (=> b!1817218 m!2246651))

(assert (=> b!1817033 d!557148))

(declare-fun d!557150 () Bool)

(assert (=> d!557150 (= (inv!25887 (tag!3988 (h!25263 rules!4538))) (= (mod (str.len (value!111526 (tag!3988 (h!25263 rules!4538)))) 2) 0))))

(assert (=> b!1817042 d!557150))

(declare-fun d!557152 () Bool)

(declare-fun res!817063 () Bool)

(declare-fun e!1161117 () Bool)

(assert (=> d!557152 (=> (not res!817063) (not e!1161117))))

(assert (=> d!557152 (= res!817063 (semiInverseModEq!1427 (toChars!4968 (transformation!3574 (h!25263 rules!4538))) (toValue!5109 (transformation!3574 (h!25263 rules!4538)))))))

(assert (=> d!557152 (= (inv!25890 (transformation!3574 (h!25263 rules!4538))) e!1161117)))

(declare-fun b!1817219 () Bool)

(assert (=> b!1817219 (= e!1161117 (equivClasses!1368 (toChars!4968 (transformation!3574 (h!25263 rules!4538))) (toValue!5109 (transformation!3574 (h!25263 rules!4538)))))))

(assert (= (and d!557152 res!817063) b!1817219))

(declare-fun m!2246653 () Bool)

(assert (=> d!557152 m!2246653))

(declare-fun m!2246655 () Bool)

(assert (=> b!1817219 m!2246655))

(assert (=> b!1817042 d!557152))

(declare-fun b!1817256 () Bool)

(declare-fun e!1161134 () Bool)

(declare-datatypes ((tuple2!19412 0))(
  ( (tuple2!19413 (_1!11108 List!19931) (_2!11108 List!19931)) )
))
(declare-fun findLongestMatchInner!486 (Regex!4902 List!19931 Int List!19931 List!19931 Int) tuple2!19412)

(assert (=> b!1817256 (= e!1161134 (matchR!2367 (regex!3574 rule!559) (_1!11108 (findLongestMatchInner!486 (regex!3574 rule!559) Nil!19861 (size!15768 Nil!19861) input!3612 input!3612 (size!15768 input!3612)))))))

(declare-fun b!1817257 () Bool)

(declare-fun res!817096 () Bool)

(declare-fun e!1161135 () Bool)

(assert (=> b!1817257 (=> (not res!817096) (not e!1161135))))

(declare-fun lt!706198 () Option!4154)

(assert (=> b!1817257 (= res!817096 (= (++!5398 (list!8078 (charsOf!2217 (_1!11106 (get!6151 lt!706198)))) (_2!11106 (get!6151 lt!706198))) input!3612))))

(declare-fun b!1817258 () Bool)

(declare-fun e!1161136 () Option!4154)

(assert (=> b!1817258 (= e!1161136 None!4153)))

(declare-fun b!1817259 () Bool)

(assert (=> b!1817259 (= e!1161135 (= (size!15767 (_1!11106 (get!6151 lt!706198))) (size!15768 (originalCharacters!4382 (_1!11106 (get!6151 lt!706198))))))))

(declare-fun b!1817260 () Bool)

(declare-fun res!817097 () Bool)

(assert (=> b!1817260 (=> (not res!817097) (not e!1161135))))

(assert (=> b!1817260 (= res!817097 (< (size!15768 (_2!11106 (get!6151 lt!706198))) (size!15768 input!3612)))))

(declare-fun b!1817261 () Bool)

(declare-fun res!817098 () Bool)

(assert (=> b!1817261 (=> (not res!817098) (not e!1161135))))

(assert (=> b!1817261 (= res!817098 (= (value!111527 (_1!11106 (get!6151 lt!706198))) (apply!5366 (transformation!3574 (rule!5682 (_1!11106 (get!6151 lt!706198)))) (seqFromList!2535 (originalCharacters!4382 (_1!11106 (get!6151 lt!706198)))))))))

(declare-fun b!1817262 () Bool)

(declare-fun res!817095 () Bool)

(assert (=> b!1817262 (=> (not res!817095) (not e!1161135))))

(assert (=> b!1817262 (= res!817095 (= (rule!5682 (_1!11106 (get!6151 lt!706198))) rule!559))))

(declare-fun d!557154 () Bool)

(declare-fun e!1161137 () Bool)

(assert (=> d!557154 e!1161137))

(declare-fun res!817092 () Bool)

(assert (=> d!557154 (=> res!817092 e!1161137)))

(assert (=> d!557154 (= res!817092 (isEmpty!12562 lt!706198))))

(assert (=> d!557154 (= lt!706198 e!1161136)))

(declare-fun c!296704 () Bool)

(declare-fun lt!706197 () tuple2!19412)

(assert (=> d!557154 (= c!296704 (isEmpty!12563 (_1!11108 lt!706197)))))

(declare-fun findLongestMatch!413 (Regex!4902 List!19931) tuple2!19412)

(assert (=> d!557154 (= lt!706197 (findLongestMatch!413 (regex!3574 rule!559) input!3612))))

(assert (=> d!557154 (ruleValid!1066 thiss!28068 rule!559)))

(assert (=> d!557154 (= (maxPrefixOneRule!1116 thiss!28068 rule!559 input!3612) lt!706198)))

(declare-fun b!1817263 () Bool)

(declare-fun size!15771 (BalanceConc!13156) Int)

(assert (=> b!1817263 (= e!1161136 (Some!4153 (tuple2!19409 (Token!6703 (apply!5366 (transformation!3574 rule!559) (seqFromList!2535 (_1!11108 lt!706197))) rule!559 (size!15771 (seqFromList!2535 (_1!11108 lt!706197))) (_1!11108 lt!706197)) (_2!11108 lt!706197))))))

(declare-fun lt!706196 () Unit!34548)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!470 (Regex!4902 List!19931) Unit!34548)

(assert (=> b!1817263 (= lt!706196 (longestMatchIsAcceptedByMatchOrIsEmpty!470 (regex!3574 rule!559) input!3612))))

(declare-fun res!817094 () Bool)

(assert (=> b!1817263 (= res!817094 (isEmpty!12563 (_1!11108 (findLongestMatchInner!486 (regex!3574 rule!559) Nil!19861 (size!15768 Nil!19861) input!3612 input!3612 (size!15768 input!3612)))))))

(assert (=> b!1817263 (=> res!817094 e!1161134)))

(assert (=> b!1817263 e!1161134))

(declare-fun lt!706195 () Unit!34548)

(assert (=> b!1817263 (= lt!706195 lt!706196)))

(declare-fun lt!706199 () Unit!34548)

(declare-fun lemmaSemiInverse!700 (TokenValueInjection!6988 BalanceConc!13156) Unit!34548)

(assert (=> b!1817263 (= lt!706199 (lemmaSemiInverse!700 (transformation!3574 rule!559) (seqFromList!2535 (_1!11108 lt!706197))))))

(declare-fun b!1817264 () Bool)

(assert (=> b!1817264 (= e!1161137 e!1161135)))

(declare-fun res!817093 () Bool)

(assert (=> b!1817264 (=> (not res!817093) (not e!1161135))))

(assert (=> b!1817264 (= res!817093 (matchR!2367 (regex!3574 rule!559) (list!8078 (charsOf!2217 (_1!11106 (get!6151 lt!706198))))))))

(assert (= (and d!557154 c!296704) b!1817258))

(assert (= (and d!557154 (not c!296704)) b!1817263))

(assert (= (and b!1817263 (not res!817094)) b!1817256))

(assert (= (and d!557154 (not res!817092)) b!1817264))

(assert (= (and b!1817264 res!817093) b!1817257))

(assert (= (and b!1817257 res!817096) b!1817260))

(assert (= (and b!1817260 res!817097) b!1817262))

(assert (= (and b!1817262 res!817095) b!1817261))

(assert (= (and b!1817261 res!817098) b!1817259))

(declare-fun m!2246657 () Bool)

(assert (=> b!1817260 m!2246657))

(declare-fun m!2246659 () Bool)

(assert (=> b!1817260 m!2246659))

(assert (=> b!1817260 m!2246573))

(assert (=> b!1817261 m!2246657))

(declare-fun m!2246661 () Bool)

(assert (=> b!1817261 m!2246661))

(assert (=> b!1817261 m!2246661))

(declare-fun m!2246663 () Bool)

(assert (=> b!1817261 m!2246663))

(declare-fun m!2246665 () Bool)

(assert (=> d!557154 m!2246665))

(declare-fun m!2246667 () Bool)

(assert (=> d!557154 m!2246667))

(declare-fun m!2246669 () Bool)

(assert (=> d!557154 m!2246669))

(assert (=> d!557154 m!2246471))

(assert (=> b!1817264 m!2246657))

(declare-fun m!2246671 () Bool)

(assert (=> b!1817264 m!2246671))

(assert (=> b!1817264 m!2246671))

(declare-fun m!2246673 () Bool)

(assert (=> b!1817264 m!2246673))

(assert (=> b!1817264 m!2246673))

(declare-fun m!2246675 () Bool)

(assert (=> b!1817264 m!2246675))

(declare-fun m!2246677 () Bool)

(assert (=> b!1817256 m!2246677))

(assert (=> b!1817256 m!2246573))

(assert (=> b!1817256 m!2246677))

(assert (=> b!1817256 m!2246573))

(declare-fun m!2246679 () Bool)

(assert (=> b!1817256 m!2246679))

(declare-fun m!2246681 () Bool)

(assert (=> b!1817256 m!2246681))

(assert (=> b!1817259 m!2246657))

(declare-fun m!2246683 () Bool)

(assert (=> b!1817259 m!2246683))

(assert (=> b!1817262 m!2246657))

(assert (=> b!1817257 m!2246657))

(assert (=> b!1817257 m!2246671))

(assert (=> b!1817257 m!2246671))

(assert (=> b!1817257 m!2246673))

(assert (=> b!1817257 m!2246673))

(declare-fun m!2246685 () Bool)

(assert (=> b!1817257 m!2246685))

(declare-fun m!2246687 () Bool)

(assert (=> b!1817263 m!2246687))

(declare-fun m!2246689 () Bool)

(assert (=> b!1817263 m!2246689))

(declare-fun m!2246691 () Bool)

(assert (=> b!1817263 m!2246691))

(assert (=> b!1817263 m!2246689))

(declare-fun m!2246693 () Bool)

(assert (=> b!1817263 m!2246693))

(assert (=> b!1817263 m!2246677))

(declare-fun m!2246695 () Bool)

(assert (=> b!1817263 m!2246695))

(assert (=> b!1817263 m!2246573))

(assert (=> b!1817263 m!2246677))

(assert (=> b!1817263 m!2246573))

(assert (=> b!1817263 m!2246679))

(assert (=> b!1817263 m!2246689))

(declare-fun m!2246697 () Bool)

(assert (=> b!1817263 m!2246697))

(assert (=> b!1817263 m!2246689))

(assert (=> b!1817030 d!557154))

(declare-fun d!557156 () Bool)

(declare-fun dynLambda!9895 (Int BalanceConc!13156) TokenValue!3664)

(assert (=> d!557156 (= (apply!5366 (transformation!3574 rule!559) (seqFromList!2535 lt!706123)) (dynLambda!9895 (toValue!5109 (transformation!3574 rule!559)) (seqFromList!2535 lt!706123)))))

(declare-fun b_lambda!59959 () Bool)

(assert (=> (not b_lambda!59959) (not d!557156)))

(declare-fun t!169634 () Bool)

(declare-fun tb!111089 () Bool)

(assert (=> (and b!1817036 (= (toValue!5109 (transformation!3574 (rule!5682 token!556))) (toValue!5109 (transformation!3574 rule!559))) t!169634) tb!111089))

(declare-fun result!133428 () Bool)

(assert (=> tb!111089 (= result!133428 (inv!21 (dynLambda!9895 (toValue!5109 (transformation!3574 rule!559)) (seqFromList!2535 lt!706123))))))

(declare-fun m!2246699 () Bool)

(assert (=> tb!111089 m!2246699))

(assert (=> d!557156 t!169634))

(declare-fun b_and!140747 () Bool)

(assert (= b_and!140705 (and (=> t!169634 result!133428) b_and!140747)))

(declare-fun t!169636 () Bool)

(declare-fun tb!111091 () Bool)

(assert (=> (and b!1817028 (= (toValue!5109 (transformation!3574 rule!559)) (toValue!5109 (transformation!3574 rule!559))) t!169636) tb!111091))

(declare-fun result!133432 () Bool)

(assert (= result!133432 result!133428))

(assert (=> d!557156 t!169636))

(declare-fun b_and!140749 () Bool)

(assert (= b_and!140709 (and (=> t!169636 result!133432) b_and!140749)))

(declare-fun t!169638 () Bool)

(declare-fun tb!111093 () Bool)

(assert (=> (and b!1817044 (= (toValue!5109 (transformation!3574 (h!25263 rules!4538))) (toValue!5109 (transformation!3574 rule!559))) t!169638) tb!111093))

(declare-fun result!133434 () Bool)

(assert (= result!133434 result!133428))

(assert (=> d!557156 t!169638))

(declare-fun b_and!140751 () Bool)

(assert (= b_and!140713 (and (=> t!169638 result!133434) b_and!140751)))

(assert (=> d!557156 m!2246457))

(declare-fun m!2246701 () Bool)

(assert (=> d!557156 m!2246701))

(assert (=> b!1817030 d!557156))

(declare-fun d!557158 () Bool)

(declare-fun fromListB!1157 (List!19931) BalanceConc!13156)

(assert (=> d!557158 (= (seqFromList!2535 lt!706123) (fromListB!1157 lt!706123))))

(declare-fun bs!407229 () Bool)

(assert (= bs!407229 d!557158))

(declare-fun m!2246703 () Bool)

(assert (=> bs!407229 m!2246703))

(assert (=> b!1817030 d!557158))

(declare-fun d!557160 () Bool)

(assert (=> d!557160 (= (maxPrefixOneRule!1116 thiss!28068 rule!559 input!3612) (Some!4153 (tuple2!19409 (Token!6703 (apply!5366 (transformation!3574 rule!559) (seqFromList!2535 lt!706123)) rule!559 (size!15768 lt!706123) lt!706123) suffix!1667)))))

(declare-fun lt!706207 () Unit!34548)

(declare-fun choose!11452 (LexerInterface!3203 List!19932 List!19931 List!19931 List!19931 Rule!6948) Unit!34548)

(assert (=> d!557160 (= lt!706207 (choose!11452 thiss!28068 rules!4538 lt!706123 input!3612 suffix!1667 rule!559))))

(assert (=> d!557160 (not (isEmpty!12560 rules!4538))))

(assert (=> d!557160 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!492 thiss!28068 rules!4538 lt!706123 input!3612 suffix!1667 rule!559) lt!706207)))

(declare-fun bs!407231 () Bool)

(assert (= bs!407231 d!557160))

(assert (=> bs!407231 m!2246455))

(assert (=> bs!407231 m!2246491))

(declare-fun m!2246753 () Bool)

(assert (=> bs!407231 m!2246753))

(assert (=> bs!407231 m!2246461))

(assert (=> bs!407231 m!2246457))

(assert (=> bs!407231 m!2246463))

(assert (=> bs!407231 m!2246457))

(assert (=> b!1817030 d!557160))

(declare-fun d!557166 () Bool)

(declare-fun lt!706210 () Int)

(assert (=> d!557166 (>= lt!706210 0)))

(declare-fun e!1161150 () Int)

(assert (=> d!557166 (= lt!706210 e!1161150)))

(declare-fun c!296708 () Bool)

(assert (=> d!557166 (= c!296708 (is-Nil!19861 lt!706123))))

(assert (=> d!557166 (= (size!15768 lt!706123) lt!706210)))

(declare-fun b!1817282 () Bool)

(assert (=> b!1817282 (= e!1161150 0)))

(declare-fun b!1817283 () Bool)

(assert (=> b!1817283 (= e!1161150 (+ 1 (size!15768 (t!169616 lt!706123))))))

(assert (= (and d!557166 c!296708) b!1817282))

(assert (= (and d!557166 (not c!296708)) b!1817283))

(declare-fun m!2246757 () Bool)

(assert (=> b!1817283 m!2246757))

(assert (=> b!1817030 d!557166))

(declare-fun b!1817318 () Bool)

(declare-fun e!1161168 () Bool)

(declare-fun e!1161173 () Bool)

(assert (=> b!1817318 (= e!1161168 e!1161173)))

(declare-fun res!817122 () Bool)

(assert (=> b!1817318 (=> (not res!817122) (not e!1161173))))

(declare-fun lt!706216 () Bool)

(assert (=> b!1817318 (= res!817122 (not lt!706216))))

(declare-fun b!1817319 () Bool)

(declare-fun e!1161171 () Bool)

(declare-fun head!4227 (List!19931) C!9978)

(assert (=> b!1817319 (= e!1161171 (not (= (head!4227 lt!706123) (c!296678 (regex!3574 rule!559)))))))

(declare-fun b!1817320 () Bool)

(assert (=> b!1817320 (= e!1161173 e!1161171)))

(declare-fun res!817125 () Bool)

(assert (=> b!1817320 (=> res!817125 e!1161171)))

(declare-fun call!114231 () Bool)

(assert (=> b!1817320 (= res!817125 call!114231)))

(declare-fun b!1817321 () Bool)

(declare-fun res!817126 () Bool)

(assert (=> b!1817321 (=> res!817126 e!1161168)))

(declare-fun e!1161174 () Bool)

(assert (=> b!1817321 (= res!817126 e!1161174)))

(declare-fun res!817123 () Bool)

(assert (=> b!1817321 (=> (not res!817123) (not e!1161174))))

(assert (=> b!1817321 (= res!817123 lt!706216)))

(declare-fun b!1817322 () Bool)

(declare-fun e!1161172 () Bool)

(declare-fun derivativeStep!1277 (Regex!4902 C!9978) Regex!4902)

(declare-fun tail!2686 (List!19931) List!19931)

(assert (=> b!1817322 (= e!1161172 (matchR!2367 (derivativeStep!1277 (regex!3574 rule!559) (head!4227 lt!706123)) (tail!2686 lt!706123)))))

(declare-fun b!1817323 () Bool)

(assert (=> b!1817323 (= e!1161172 (nullable!1512 (regex!3574 rule!559)))))

(declare-fun d!557170 () Bool)

(declare-fun e!1161169 () Bool)

(assert (=> d!557170 e!1161169))

(declare-fun c!296718 () Bool)

(assert (=> d!557170 (= c!296718 (is-EmptyExpr!4902 (regex!3574 rule!559)))))

(assert (=> d!557170 (= lt!706216 e!1161172)))

(declare-fun c!296719 () Bool)

(assert (=> d!557170 (= c!296719 (isEmpty!12563 lt!706123))))

(assert (=> d!557170 (validRegex!1986 (regex!3574 rule!559))))

(assert (=> d!557170 (= (matchR!2367 (regex!3574 rule!559) lt!706123) lt!706216)))

(declare-fun b!1817324 () Bool)

(declare-fun e!1161170 () Bool)

(assert (=> b!1817324 (= e!1161169 e!1161170)))

(declare-fun c!296720 () Bool)

(assert (=> b!1817324 (= c!296720 (is-EmptyLang!4902 (regex!3574 rule!559)))))

(declare-fun b!1817325 () Bool)

(declare-fun res!817129 () Bool)

(assert (=> b!1817325 (=> (not res!817129) (not e!1161174))))

(assert (=> b!1817325 (= res!817129 (isEmpty!12563 (tail!2686 lt!706123)))))

(declare-fun b!1817326 () Bool)

(declare-fun res!817128 () Bool)

(assert (=> b!1817326 (=> (not res!817128) (not e!1161174))))

(assert (=> b!1817326 (= res!817128 (not call!114231))))

(declare-fun b!1817327 () Bool)

(assert (=> b!1817327 (= e!1161174 (= (head!4227 lt!706123) (c!296678 (regex!3574 rule!559))))))

(declare-fun b!1817328 () Bool)

(declare-fun res!817127 () Bool)

(assert (=> b!1817328 (=> res!817127 e!1161168)))

(assert (=> b!1817328 (= res!817127 (not (is-ElementMatch!4902 (regex!3574 rule!559))))))

(assert (=> b!1817328 (= e!1161170 e!1161168)))

(declare-fun b!1817329 () Bool)

(declare-fun res!817124 () Bool)

(assert (=> b!1817329 (=> res!817124 e!1161171)))

(assert (=> b!1817329 (= res!817124 (not (isEmpty!12563 (tail!2686 lt!706123))))))

(declare-fun b!1817330 () Bool)

(assert (=> b!1817330 (= e!1161170 (not lt!706216))))

(declare-fun b!1817331 () Bool)

(assert (=> b!1817331 (= e!1161169 (= lt!706216 call!114231))))

(declare-fun bm!114226 () Bool)

(assert (=> bm!114226 (= call!114231 (isEmpty!12563 lt!706123))))

(assert (= (and d!557170 c!296719) b!1817323))

(assert (= (and d!557170 (not c!296719)) b!1817322))

(assert (= (and d!557170 c!296718) b!1817331))

(assert (= (and d!557170 (not c!296718)) b!1817324))

(assert (= (and b!1817324 c!296720) b!1817330))

(assert (= (and b!1817324 (not c!296720)) b!1817328))

(assert (= (and b!1817328 (not res!817127)) b!1817321))

(assert (= (and b!1817321 res!817123) b!1817326))

(assert (= (and b!1817326 res!817128) b!1817325))

(assert (= (and b!1817325 res!817129) b!1817327))

(assert (= (and b!1817321 (not res!817126)) b!1817318))

(assert (= (and b!1817318 res!817122) b!1817320))

(assert (= (and b!1817320 (not res!817125)) b!1817329))

(assert (= (and b!1817329 (not res!817124)) b!1817319))

(assert (= (or b!1817331 b!1817320 b!1817326) bm!114226))

(declare-fun m!2246761 () Bool)

(assert (=> b!1817329 m!2246761))

(assert (=> b!1817329 m!2246761))

(declare-fun m!2246763 () Bool)

(assert (=> b!1817329 m!2246763))

(declare-fun m!2246765 () Bool)

(assert (=> bm!114226 m!2246765))

(assert (=> d!557170 m!2246765))

(assert (=> d!557170 m!2246475))

(declare-fun m!2246767 () Bool)

(assert (=> b!1817327 m!2246767))

(declare-fun m!2246769 () Bool)

(assert (=> b!1817323 m!2246769))

(assert (=> b!1817325 m!2246761))

(assert (=> b!1817325 m!2246761))

(assert (=> b!1817325 m!2246763))

(assert (=> b!1817319 m!2246767))

(assert (=> b!1817322 m!2246767))

(assert (=> b!1817322 m!2246767))

(declare-fun m!2246771 () Bool)

(assert (=> b!1817322 m!2246771))

(assert (=> b!1817322 m!2246761))

(assert (=> b!1817322 m!2246771))

(assert (=> b!1817322 m!2246761))

(declare-fun m!2246773 () Bool)

(assert (=> b!1817322 m!2246773))

(assert (=> b!1817041 d!557170))

(declare-fun d!557174 () Bool)

(declare-fun res!817134 () Bool)

(declare-fun e!1161177 () Bool)

(assert (=> d!557174 (=> (not res!817134) (not e!1161177))))

(assert (=> d!557174 (= res!817134 (validRegex!1986 (regex!3574 rule!559)))))

(assert (=> d!557174 (= (ruleValid!1066 thiss!28068 rule!559) e!1161177)))

(declare-fun b!1817336 () Bool)

(declare-fun res!817135 () Bool)

(assert (=> b!1817336 (=> (not res!817135) (not e!1161177))))

(assert (=> b!1817336 (= res!817135 (not (nullable!1512 (regex!3574 rule!559))))))

(declare-fun b!1817337 () Bool)

(assert (=> b!1817337 (= e!1161177 (not (= (tag!3988 rule!559) (String!22655 ""))))))

(assert (= (and d!557174 res!817134) b!1817336))

(assert (= (and b!1817336 res!817135) b!1817337))

(assert (=> d!557174 m!2246475))

(assert (=> b!1817336 m!2246769))

(assert (=> b!1817041 d!557174))

(declare-fun d!557176 () Bool)

(assert (=> d!557176 (ruleValid!1066 thiss!28068 rule!559)))

(declare-fun lt!706219 () Unit!34548)

(declare-fun choose!11453 (LexerInterface!3203 Rule!6948 List!19932) Unit!34548)

(assert (=> d!557176 (= lt!706219 (choose!11453 thiss!28068 rule!559 rules!4538))))

(assert (=> d!557176 (contains!3610 rules!4538 rule!559)))

(assert (=> d!557176 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!587 thiss!28068 rule!559 rules!4538) lt!706219)))

(declare-fun bs!407232 () Bool)

(assert (= bs!407232 d!557176))

(assert (=> bs!407232 m!2246471))

(declare-fun m!2246775 () Bool)

(assert (=> bs!407232 m!2246775))

(assert (=> bs!407232 m!2246485))

(assert (=> b!1817041 d!557176))

(declare-fun b!1817342 () Bool)

(declare-fun e!1161180 () Bool)

(declare-fun tp!513439 () Bool)

(assert (=> b!1817342 (= e!1161180 (and tp_is_empty!8039 tp!513439))))

(assert (=> b!1817045 (= tp!513380 e!1161180)))

(assert (= (and b!1817045 (is-Cons!19861 (t!169616 input!3612))) b!1817342))

(declare-fun b!1817343 () Bool)

(declare-fun e!1161181 () Bool)

(declare-fun tp!513440 () Bool)

(assert (=> b!1817343 (= e!1161181 (and tp_is_empty!8039 tp!513440))))

(assert (=> b!1817032 (= tp!513391 e!1161181)))

(assert (= (and b!1817032 (is-Cons!19861 (originalCharacters!4382 token!556))) b!1817343))

(declare-fun b!1817357 () Bool)

(declare-fun e!1161184 () Bool)

(declare-fun tp!513452 () Bool)

(declare-fun tp!513454 () Bool)

(assert (=> b!1817357 (= e!1161184 (and tp!513452 tp!513454))))

(declare-fun b!1817355 () Bool)

(declare-fun tp!513453 () Bool)

(declare-fun tp!513455 () Bool)

(assert (=> b!1817355 (= e!1161184 (and tp!513453 tp!513455))))

(assert (=> b!1817038 (= tp!513384 e!1161184)))

(declare-fun b!1817354 () Bool)

(assert (=> b!1817354 (= e!1161184 tp_is_empty!8039)))

(declare-fun b!1817356 () Bool)

(declare-fun tp!513451 () Bool)

(assert (=> b!1817356 (= e!1161184 tp!513451)))

(assert (= (and b!1817038 (is-ElementMatch!4902 (regex!3574 rule!559))) b!1817354))

(assert (= (and b!1817038 (is-Concat!8567 (regex!3574 rule!559))) b!1817355))

(assert (= (and b!1817038 (is-Star!4902 (regex!3574 rule!559))) b!1817356))

(assert (= (and b!1817038 (is-Union!4902 (regex!3574 rule!559))) b!1817357))

(declare-fun b!1817361 () Bool)

(declare-fun e!1161185 () Bool)

(declare-fun tp!513457 () Bool)

(declare-fun tp!513459 () Bool)

(assert (=> b!1817361 (= e!1161185 (and tp!513457 tp!513459))))

(declare-fun b!1817359 () Bool)

(declare-fun tp!513458 () Bool)

(declare-fun tp!513460 () Bool)

(assert (=> b!1817359 (= e!1161185 (and tp!513458 tp!513460))))

(assert (=> b!1817033 (= tp!513388 e!1161185)))

(declare-fun b!1817358 () Bool)

(assert (=> b!1817358 (= e!1161185 tp_is_empty!8039)))

(declare-fun b!1817360 () Bool)

(declare-fun tp!513456 () Bool)

(assert (=> b!1817360 (= e!1161185 tp!513456)))

(assert (= (and b!1817033 (is-ElementMatch!4902 (regex!3574 (rule!5682 token!556)))) b!1817358))

(assert (= (and b!1817033 (is-Concat!8567 (regex!3574 (rule!5682 token!556)))) b!1817359))

(assert (= (and b!1817033 (is-Star!4902 (regex!3574 (rule!5682 token!556)))) b!1817360))

(assert (= (and b!1817033 (is-Union!4902 (regex!3574 (rule!5682 token!556)))) b!1817361))

(declare-fun b!1817362 () Bool)

(declare-fun e!1161186 () Bool)

(declare-fun tp!513461 () Bool)

(assert (=> b!1817362 (= e!1161186 (and tp_is_empty!8039 tp!513461))))

(assert (=> b!1817031 (= tp!513382 e!1161186)))

(assert (= (and b!1817031 (is-Cons!19861 (t!169616 suffix!1667))) b!1817362))

(declare-fun b!1817366 () Bool)

(declare-fun e!1161187 () Bool)

(declare-fun tp!513463 () Bool)

(declare-fun tp!513465 () Bool)

(assert (=> b!1817366 (= e!1161187 (and tp!513463 tp!513465))))

(declare-fun b!1817364 () Bool)

(declare-fun tp!513464 () Bool)

(declare-fun tp!513466 () Bool)

(assert (=> b!1817364 (= e!1161187 (and tp!513464 tp!513466))))

(assert (=> b!1817042 (= tp!513383 e!1161187)))

(declare-fun b!1817363 () Bool)

(assert (=> b!1817363 (= e!1161187 tp_is_empty!8039)))

(declare-fun b!1817365 () Bool)

(declare-fun tp!513462 () Bool)

(assert (=> b!1817365 (= e!1161187 tp!513462)))

(assert (= (and b!1817042 (is-ElementMatch!4902 (regex!3574 (h!25263 rules!4538)))) b!1817363))

(assert (= (and b!1817042 (is-Concat!8567 (regex!3574 (h!25263 rules!4538)))) b!1817364))

(assert (= (and b!1817042 (is-Star!4902 (regex!3574 (h!25263 rules!4538)))) b!1817365))

(assert (= (and b!1817042 (is-Union!4902 (regex!3574 (h!25263 rules!4538)))) b!1817366))

(declare-fun b!1817377 () Bool)

(declare-fun b_free!50259 () Bool)

(declare-fun b_next!50963 () Bool)

(assert (=> b!1817377 (= b_free!50259 (not b_next!50963))))

(declare-fun t!169646 () Bool)

(declare-fun tb!111101 () Bool)

(assert (=> (and b!1817377 (= (toValue!5109 (transformation!3574 (h!25263 (t!169617 rules!4538)))) (toValue!5109 (transformation!3574 rule!559))) t!169646) tb!111101))

(declare-fun result!133450 () Bool)

(assert (= result!133450 result!133428))

(assert (=> d!557156 t!169646))

(declare-fun tp!513476 () Bool)

(declare-fun b_and!140759 () Bool)

(assert (=> b!1817377 (= tp!513476 (and (=> t!169646 result!133450) b_and!140759))))

(declare-fun b_free!50261 () Bool)

(declare-fun b_next!50965 () Bool)

(assert (=> b!1817377 (= b_free!50261 (not b_next!50965))))

(declare-fun t!169648 () Bool)

(declare-fun tb!111103 () Bool)

(assert (=> (and b!1817377 (= (toChars!4968 (transformation!3574 (h!25263 (t!169617 rules!4538)))) (toChars!4968 (transformation!3574 (rule!5682 token!556)))) t!169648) tb!111103))

(declare-fun result!133452 () Bool)

(assert (= result!133452 result!133420))

(assert (=> d!557138 t!169648))

(assert (=> b!1817216 t!169648))

(declare-fun b_and!140761 () Bool)

(declare-fun tp!513475 () Bool)

(assert (=> b!1817377 (= tp!513475 (and (=> t!169648 result!133452) b_and!140761))))

(declare-fun e!1161198 () Bool)

(assert (=> b!1817377 (= e!1161198 (and tp!513476 tp!513475))))

(declare-fun e!1161199 () Bool)

(declare-fun tp!513478 () Bool)

(declare-fun b!1817376 () Bool)

(assert (=> b!1817376 (= e!1161199 (and tp!513478 (inv!25887 (tag!3988 (h!25263 (t!169617 rules!4538)))) (inv!25890 (transformation!3574 (h!25263 (t!169617 rules!4538)))) e!1161198))))

(declare-fun b!1817375 () Bool)

(declare-fun e!1161197 () Bool)

(declare-fun tp!513477 () Bool)

(assert (=> b!1817375 (= e!1161197 (and e!1161199 tp!513477))))

(assert (=> b!1817035 (= tp!513387 e!1161197)))

(assert (= b!1817376 b!1817377))

(assert (= b!1817375 b!1817376))

(assert (= (and b!1817035 (is-Cons!19862 (t!169617 rules!4538))) b!1817375))

(declare-fun m!2246777 () Bool)

(assert (=> b!1817376 m!2246777))

(declare-fun m!2246779 () Bool)

(assert (=> b!1817376 m!2246779))

(declare-fun b_lambda!59963 () Bool)

(assert (= b_lambda!59957 (or (and b!1817036 b_free!50237) (and b!1817028 b_free!50241 (= (toChars!4968 (transformation!3574 rule!559)) (toChars!4968 (transformation!3574 (rule!5682 token!556))))) (and b!1817044 b_free!50245 (= (toChars!4968 (transformation!3574 (h!25263 rules!4538))) (toChars!4968 (transformation!3574 (rule!5682 token!556))))) (and b!1817377 b_free!50261 (= (toChars!4968 (transformation!3574 (h!25263 (t!169617 rules!4538)))) (toChars!4968 (transformation!3574 (rule!5682 token!556))))) b_lambda!59963)))

(declare-fun b_lambda!59965 () Bool)

(assert (= b_lambda!59955 (or (and b!1817036 b_free!50237) (and b!1817028 b_free!50241 (= (toChars!4968 (transformation!3574 rule!559)) (toChars!4968 (transformation!3574 (rule!5682 token!556))))) (and b!1817044 b_free!50245 (= (toChars!4968 (transformation!3574 (h!25263 rules!4538))) (toChars!4968 (transformation!3574 (rule!5682 token!556))))) (and b!1817377 b_free!50261 (= (toChars!4968 (transformation!3574 (h!25263 (t!169617 rules!4538)))) (toChars!4968 (transformation!3574 (rule!5682 token!556))))) b_lambda!59965)))

(declare-fun b_lambda!59967 () Bool)

(assert (= b_lambda!59959 (or (and b!1817036 b_free!50235 (= (toValue!5109 (transformation!3574 (rule!5682 token!556))) (toValue!5109 (transformation!3574 rule!559)))) (and b!1817028 b_free!50239) (and b!1817044 b_free!50243 (= (toValue!5109 (transformation!3574 (h!25263 rules!4538))) (toValue!5109 (transformation!3574 rule!559)))) (and b!1817377 b_free!50259 (= (toValue!5109 (transformation!3574 (h!25263 (t!169617 rules!4538)))) (toValue!5109 (transformation!3574 rule!559)))) b_lambda!59967)))

(push 1)

(assert (not tb!111089))

(assert (not b!1817256))

(assert (not b!1817211))

(assert (not d!557158))

(assert (not b!1817356))

(assert (not d!557142))

(assert (not bm!114214))

(assert (not b!1817263))

(assert (not b!1817342))

(assert (not b_next!50949))

(assert (not b!1817364))

(assert (not b_next!50947))

(assert (not b!1817366))

(assert (not b!1817176))

(assert (not b!1817322))

(assert (not b!1817359))

(assert (not d!557176))

(assert (not b!1817219))

(assert (not b!1817327))

(assert (not b!1817365))

(assert (not b!1817205))

(assert (not bm!114226))

(assert (not d!557160))

(assert (not b_next!50943))

(assert (not b!1817218))

(assert b_and!140749)

(assert b_and!140745)

(assert (not b!1817217))

(assert (not b!1817323))

(assert (not b!1817207))

(assert (not b_next!50945))

(assert (not d!557134))

(assert (not d!557148))

(assert (not b!1817140))

(assert (not d!557154))

(assert (not d!557170))

(assert (not d!557144))

(assert (not b!1817329))

(assert (not d!557138))

(assert (not b_lambda!59965))

(assert (not b!1817357))

(assert (not b!1817260))

(assert (not b!1817264))

(assert (not d!557174))

(assert (not b!1817208))

(assert (not b!1817186))

(assert (not b!1817146))

(assert (not b!1817259))

(assert (not d!557136))

(assert (not d!557152))

(assert b_and!140747)

(assert (not tb!111083))

(assert (not b!1817132))

(assert b_and!140759)

(assert b_and!140751)

(assert (not b!1817319))

(assert (not b!1817261))

(assert (not bm!114223))

(assert (not d!557118))

(assert (not d!557130))

(assert (not b!1817136))

(assert (not d!557126))

(assert (not b_lambda!59967))

(assert (not b!1817262))

(assert (not b!1817325))

(assert (not b_next!50939))

(assert (not b!1817187))

(assert (not b!1817361))

(assert (not bm!114222))

(assert (not b_next!50965))

(assert (not b!1817138))

(assert tp_is_empty!8039)

(assert (not b!1817135))

(assert (not b_lambda!59963))

(assert (not b!1817362))

(assert (not b!1817376))

(assert (not b!1817283))

(assert (not b!1817360))

(assert (not b!1817216))

(assert (not b!1817343))

(assert b_and!140761)

(assert (not b!1817137))

(assert (not b_next!50963))

(assert b_and!140741)

(assert (not b!1817257))

(assert (not b!1817139))

(assert (not b!1817133))

(assert b_and!140743)

(assert (not b!1817193))

(assert (not b!1817149))

(assert (not b!1817355))

(assert (not b!1817336))

(assert (not b_next!50941))

(assert (not b!1817375))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!50949))

(assert (not b_next!50947))

(assert (not b_next!50943))

(assert (not b_next!50945))

(assert b_and!140747)

(assert (not b_next!50939))

(assert (not b_next!50965))

(assert (not b_next!50941))

(assert b_and!140749)

(assert b_and!140745)

(assert b_and!140759)

(assert b_and!140751)

(assert b_and!140761)

(assert (not b_next!50963))

(assert b_and!140741)

(assert b_and!140743)

(check-sat)

(pop 1)

