; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!406390 () Bool)

(assert start!406390)

(declare-fun b!4245555 () Bool)

(declare-fun b_free!125983 () Bool)

(declare-fun b_next!126687 () Bool)

(assert (=> b!4245555 (= b_free!125983 (not b_next!126687))))

(declare-fun tp!1302049 () Bool)

(declare-fun b_and!336305 () Bool)

(assert (=> b!4245555 (= tp!1302049 b_and!336305)))

(declare-fun b_free!125985 () Bool)

(declare-fun b_next!126689 () Bool)

(assert (=> b!4245555 (= b_free!125985 (not b_next!126689))))

(declare-fun tp!1302048 () Bool)

(declare-fun b_and!336307 () Bool)

(assert (=> b!4245555 (= tp!1302048 b_and!336307)))

(declare-fun b!4245554 () Bool)

(declare-fun b_free!125987 () Bool)

(declare-fun b_next!126691 () Bool)

(assert (=> b!4245554 (= b_free!125987 (not b_next!126691))))

(declare-fun tp!1302042 () Bool)

(declare-fun b_and!336309 () Bool)

(assert (=> b!4245554 (= tp!1302042 b_and!336309)))

(declare-fun b_free!125989 () Bool)

(declare-fun b_next!126693 () Bool)

(assert (=> b!4245554 (= b_free!125989 (not b_next!126693))))

(declare-fun tp!1302041 () Bool)

(declare-fun b_and!336311 () Bool)

(assert (=> b!4245554 (= tp!1302041 b_and!336311)))

(declare-fun b!4245559 () Bool)

(declare-fun b_free!125991 () Bool)

(declare-fun b_next!126695 () Bool)

(assert (=> b!4245559 (= b_free!125991 (not b_next!126695))))

(declare-fun tp!1302043 () Bool)

(declare-fun b_and!336313 () Bool)

(assert (=> b!4245559 (= tp!1302043 b_and!336313)))

(declare-fun b_free!125993 () Bool)

(declare-fun b_next!126697 () Bool)

(assert (=> b!4245559 (= b_free!125993 (not b_next!126697))))

(declare-fun tp!1302039 () Bool)

(declare-fun b_and!336315 () Bool)

(assert (=> b!4245559 (= tp!1302039 b_and!336315)))

(declare-fun b!4245538 () Bool)

(declare-datatypes ((List!47101 0))(
  ( (Nil!46977) (Cons!46977 (h!52397 (_ BitVec 16)) (t!351670 List!47101)) )
))
(declare-datatypes ((TokenValue!8176 0))(
  ( (FloatLiteralValue!16352 (text!57677 List!47101)) (TokenValueExt!8175 (__x!28575 Int)) (Broken!40880 (value!246971 List!47101)) (Object!8299) (End!8176) (Def!8176) (Underscore!8176) (Match!8176) (Else!8176) (Error!8176) (Case!8176) (If!8176) (Extends!8176) (Abstract!8176) (Class!8176) (Val!8176) (DelimiterValue!16352 (del!8236 List!47101)) (KeywordValue!8182 (value!246972 List!47101)) (CommentValue!16352 (value!246973 List!47101)) (WhitespaceValue!16352 (value!246974 List!47101)) (IndentationValue!8176 (value!246975 List!47101)) (String!54809) (Int32!8176) (Broken!40881 (value!246976 List!47101)) (Boolean!8177) (Unit!66014) (OperatorValue!8179 (op!8236 List!47101)) (IdentifierValue!16352 (value!246977 List!47101)) (IdentifierValue!16353 (value!246978 List!47101)) (WhitespaceValue!16353 (value!246979 List!47101)) (True!16352) (False!16352) (Broken!40882 (value!246980 List!47101)) (Broken!40883 (value!246981 List!47101)) (True!16353) (RightBrace!8176) (RightBracket!8176) (Colon!8176) (Null!8176) (Comma!8176) (LeftBracket!8176) (False!16353) (LeftBrace!8176) (ImaginaryLiteralValue!8176 (text!57678 List!47101)) (StringLiteralValue!24528 (value!246982 List!47101)) (EOFValue!8176 (value!246983 List!47101)) (IdentValue!8176 (value!246984 List!47101)) (DelimiterValue!16353 (value!246985 List!47101)) (DedentValue!8176 (value!246986 List!47101)) (NewLineValue!8176 (value!246987 List!47101)) (IntegerValue!24528 (value!246988 (_ BitVec 32)) (text!57679 List!47101)) (IntegerValue!24529 (value!246989 Int) (text!57680 List!47101)) (Times!8176) (Or!8176) (Equal!8176) (Minus!8176) (Broken!40884 (value!246990 List!47101)) (And!8176) (Div!8176) (LessEqual!8176) (Mod!8176) (Concat!21027) (Not!8176) (Plus!8176) (SpaceValue!8176 (value!246991 List!47101)) (IntegerValue!24530 (value!246992 Int) (text!57681 List!47101)) (StringLiteralValue!24529 (text!57682 List!47101)) (FloatLiteralValue!16353 (text!57683 List!47101)) (BytesLiteralValue!8176 (value!246993 List!47101)) (CommentValue!16353 (value!246994 List!47101)) (StringLiteralValue!24530 (value!246995 List!47101)) (ErrorTokenValue!8176 (msg!8237 List!47101)) )
))
(declare-datatypes ((String!54810 0))(
  ( (String!54811 (value!246996 String)) )
))
(declare-datatypes ((C!25900 0))(
  ( (C!25901 (val!15140 Int)) )
))
(declare-datatypes ((Regex!12851 0))(
  ( (ElementMatch!12851 (c!721172 C!25900)) (Concat!21028 (regOne!26214 Regex!12851) (regTwo!26214 Regex!12851)) (EmptyExpr!12851) (Star!12851 (reg!13180 Regex!12851)) (EmptyLang!12851) (Union!12851 (regOne!26215 Regex!12851) (regTwo!26215 Regex!12851)) )
))
(declare-datatypes ((List!47102 0))(
  ( (Nil!46978) (Cons!46978 (h!52398 C!25900) (t!351671 List!47102)) )
))
(declare-datatypes ((IArray!28319 0))(
  ( (IArray!28320 (innerList!14217 List!47102)) )
))
(declare-datatypes ((Conc!14157 0))(
  ( (Node!14157 (left!34880 Conc!14157) (right!35210 Conc!14157) (csize!28544 Int) (cheight!14368 Int)) (Leaf!21889 (xs!17463 IArray!28319) (csize!28545 Int)) (Empty!14157) )
))
(declare-datatypes ((BalanceConc!27908 0))(
  ( (BalanceConc!27909 (c!721173 Conc!14157)) )
))
(declare-datatypes ((TokenValueInjection!15780 0))(
  ( (TokenValueInjection!15781 (toValue!10706 Int) (toChars!10565 Int)) )
))
(declare-datatypes ((Rule!15692 0))(
  ( (Rule!15693 (regex!7946 Regex!12851) (tag!8810 String!54810) (isSeparator!7946 Bool) (transformation!7946 TokenValueInjection!15780)) )
))
(declare-datatypes ((List!47103 0))(
  ( (Nil!46979) (Cons!46979 (h!52399 Rule!15692) (t!351672 List!47103)) )
))
(declare-fun rules!2932 () List!47103)

(declare-fun tp!1302035 () Bool)

(declare-fun e!2636790 () Bool)

(declare-fun e!2636788 () Bool)

(declare-fun inv!61735 (String!54810) Bool)

(declare-fun inv!61738 (TokenValueInjection!15780) Bool)

(assert (=> b!4245538 (= e!2636788 (and tp!1302035 (inv!61735 (tag!8810 (h!52399 rules!2932))) (inv!61738 (transformation!7946 (h!52399 rules!2932))) e!2636790))))

(declare-fun e!2636787 () Bool)

(declare-fun tp!1302038 () Bool)

(declare-fun b!4245539 () Bool)

(declare-datatypes ((Token!14518 0))(
  ( (Token!14519 (value!246997 TokenValue!8176) (rule!11076 Rule!15692) (size!34407 Int) (originalCharacters!8290 List!47102)) )
))
(declare-datatypes ((List!47104 0))(
  ( (Nil!46980) (Cons!46980 (h!52400 Token!14518) (t!351673 List!47104)) )
))
(declare-fun tokens!581 () List!47104)

(declare-fun e!2636781 () Bool)

(declare-fun inv!21 (TokenValue!8176) Bool)

(assert (=> b!4245539 (= e!2636787 (and (inv!21 (value!246997 (h!52400 tokens!581))) e!2636781 tp!1302038))))

(declare-fun e!2636776 () Bool)

(declare-fun b!4245540 () Bool)

(declare-datatypes ((LexerInterface!7541 0))(
  ( (LexerInterfaceExt!7538 (__x!28576 Int)) (Lexer!7539) )
))
(declare-fun thiss!21540 () LexerInterface!7541)

(declare-fun addTokens!17 () List!47104)

(declare-fun shorterInput!51 () List!47102)

(declare-fun suffix!1262 () List!47102)

(declare-datatypes ((tuple2!44546 0))(
  ( (tuple2!44547 (_1!25407 List!47104) (_2!25407 List!47102)) )
))
(declare-fun lexList!2047 (LexerInterface!7541 List!47103 List!47102) tuple2!44546)

(declare-fun ++!11961 (List!47104 List!47104) List!47104)

(assert (=> b!4245540 (= e!2636776 (= (lexList!2047 thiss!21540 rules!2932 shorterInput!51) (tuple2!44547 (++!11961 addTokens!17 tokens!581) suffix!1262)))))

(declare-fun b!4245541 () Bool)

(declare-fun res!1745436 () Bool)

(declare-fun e!2636777 () Bool)

(assert (=> b!4245541 (=> (not res!1745436) (not e!2636777))))

(declare-fun longerInput!51 () List!47102)

(declare-fun isEmpty!27787 (List!47102) Bool)

(assert (=> b!4245541 (= res!1745436 (not (isEmpty!27787 longerInput!51)))))

(declare-fun e!2636785 () Bool)

(declare-fun e!2636783 () Bool)

(declare-fun b!4245542 () Bool)

(declare-fun tp!1302045 () Bool)

(assert (=> b!4245542 (= e!2636785 (and tp!1302045 (inv!61735 (tag!8810 (rule!11076 (h!52400 addTokens!17)))) (inv!61738 (transformation!7946 (rule!11076 (h!52400 addTokens!17)))) e!2636783))))

(declare-fun b!4245543 () Bool)

(declare-fun e!2636775 () Bool)

(declare-fun tp!1302044 () Bool)

(assert (=> b!4245543 (= e!2636775 (and (inv!21 (value!246997 (h!52400 addTokens!17))) e!2636785 tp!1302044))))

(declare-fun b!4245544 () Bool)

(declare-fun res!1745440 () Bool)

(assert (=> b!4245544 (=> (not res!1745440) (not e!2636777))))

(declare-fun isEmpty!27788 (List!47104) Bool)

(assert (=> b!4245544 (= res!1745440 (not (isEmpty!27788 addTokens!17)))))

(declare-fun b!4245545 () Bool)

(declare-fun e!2636784 () Bool)

(declare-fun tp_is_empty!22693 () Bool)

(declare-fun tp!1302040 () Bool)

(assert (=> b!4245545 (= e!2636784 (and tp_is_empty!22693 tp!1302040))))

(declare-fun b!4245546 () Bool)

(declare-fun e!2636779 () Bool)

(declare-fun tp!1302037 () Bool)

(assert (=> b!4245546 (= e!2636779 (and tp_is_empty!22693 tp!1302037))))

(declare-fun tp!1302046 () Bool)

(declare-fun b!4245547 () Bool)

(declare-fun e!2636792 () Bool)

(declare-fun inv!61739 (Token!14518) Bool)

(assert (=> b!4245547 (= e!2636792 (and (inv!61739 (h!52400 tokens!581)) e!2636787 tp!1302046))))

(declare-fun b!4245548 () Bool)

(declare-fun res!1745444 () Bool)

(assert (=> b!4245548 (=> (not res!1745444) (not e!2636777))))

(declare-fun isEmpty!27789 (List!47103) Bool)

(assert (=> b!4245548 (= res!1745444 (not (isEmpty!27789 rules!2932)))))

(declare-fun b!4245549 () Bool)

(declare-fun res!1745439 () Bool)

(assert (=> b!4245549 (=> (not res!1745439) (not e!2636777))))

(declare-fun size!34408 (List!47104) Int)

(assert (=> b!4245549 (= res!1745439 (> (size!34408 addTokens!17) 0))))

(declare-fun b!4245550 () Bool)

(declare-fun res!1745437 () Bool)

(assert (=> b!4245550 (=> (not res!1745437) (not e!2636777))))

(assert (=> b!4245550 (= res!1745437 (= (lexList!2047 thiss!21540 rules!2932 longerInput!51) (tuple2!44547 tokens!581 suffix!1262)))))

(declare-fun b!4245551 () Bool)

(declare-fun e!2636778 () Bool)

(declare-fun tp!1302034 () Bool)

(assert (=> b!4245551 (= e!2636778 (and e!2636788 tp!1302034))))

(declare-fun b!4245552 () Bool)

(declare-fun res!1745442 () Bool)

(assert (=> b!4245552 (=> (not res!1745442) (not e!2636777))))

(declare-fun size!34409 (List!47102) Int)

(assert (=> b!4245552 (= res!1745442 (> (size!34409 longerInput!51) (size!34409 shorterInput!51)))))

(declare-fun res!1745438 () Bool)

(assert (=> start!406390 (=> (not res!1745438) (not e!2636777))))

(get-info :version)

(assert (=> start!406390 (= res!1745438 ((_ is Lexer!7539) thiss!21540))))

(assert (=> start!406390 e!2636777))

(assert (=> start!406390 true))

(assert (=> start!406390 e!2636778))

(declare-fun e!2636772 () Bool)

(assert (=> start!406390 e!2636772))

(assert (=> start!406390 e!2636784))

(declare-fun e!2636791 () Bool)

(assert (=> start!406390 e!2636791))

(assert (=> start!406390 e!2636792))

(assert (=> start!406390 e!2636779))

(declare-fun b!4245553 () Bool)

(declare-fun e!2636786 () Bool)

(declare-fun tp!1302047 () Bool)

(assert (=> b!4245553 (= e!2636781 (and tp!1302047 (inv!61735 (tag!8810 (rule!11076 (h!52400 tokens!581)))) (inv!61738 (transformation!7946 (rule!11076 (h!52400 tokens!581)))) e!2636786))))

(assert (=> b!4245554 (= e!2636786 (and tp!1302042 tp!1302041))))

(assert (=> b!4245555 (= e!2636783 (and tp!1302049 tp!1302048))))

(declare-fun b!4245556 () Bool)

(declare-fun res!1745443 () Bool)

(assert (=> b!4245556 (=> (not res!1745443) (not e!2636777))))

(declare-fun rulesInvariant!6652 (LexerInterface!7541 List!47103) Bool)

(assert (=> b!4245556 (= res!1745443 (rulesInvariant!6652 thiss!21540 rules!2932))))

(declare-fun b!4245557 () Bool)

(declare-fun tp!1302036 () Bool)

(assert (=> b!4245557 (= e!2636791 (and tp_is_empty!22693 tp!1302036))))

(declare-fun b!4245558 () Bool)

(assert (=> b!4245558 (= e!2636777 e!2636776)))

(declare-fun res!1745441 () Bool)

(assert (=> b!4245558 (=> (not res!1745441) (not e!2636776))))

(declare-datatypes ((tuple2!44548 0))(
  ( (tuple2!44549 (_1!25408 Token!14518) (_2!25408 List!47102)) )
))
(declare-datatypes ((Option!10082 0))(
  ( (None!10081) (Some!10081 (v!41035 tuple2!44548)) )
))
(declare-fun lt!1507498 () Option!10082)

(declare-fun lt!1507497 () Option!10082)

(assert (=> b!4245558 (= res!1745441 (and (or (not ((_ is Some!10081) lt!1507498)) (not ((_ is Some!10081) lt!1507497))) (or (not ((_ is Some!10081) lt!1507498)) (not ((_ is None!10081) lt!1507497))) (or (not ((_ is None!10081) lt!1507498)) (not ((_ is Some!10081) lt!1507497))) (or (not ((_ is None!10081) lt!1507498)) (not ((_ is None!10081) lt!1507497)))))))

(declare-fun maxPrefix!4499 (LexerInterface!7541 List!47103 List!47102) Option!10082)

(assert (=> b!4245558 (= lt!1507497 (maxPrefix!4499 thiss!21540 rules!2932 shorterInput!51))))

(assert (=> b!4245558 (= lt!1507498 (maxPrefix!4499 thiss!21540 rules!2932 longerInput!51))))

(assert (=> b!4245559 (= e!2636790 (and tp!1302043 tp!1302039))))

(declare-fun b!4245560 () Bool)

(declare-fun tp!1302050 () Bool)

(assert (=> b!4245560 (= e!2636772 (and (inv!61739 (h!52400 addTokens!17)) e!2636775 tp!1302050))))

(assert (= (and start!406390 res!1745438) b!4245548))

(assert (= (and b!4245548 res!1745444) b!4245556))

(assert (= (and b!4245556 res!1745443) b!4245541))

(assert (= (and b!4245541 res!1745436) b!4245552))

(assert (= (and b!4245552 res!1745442) b!4245550))

(assert (= (and b!4245550 res!1745437) b!4245544))

(assert (= (and b!4245544 res!1745440) b!4245549))

(assert (= (and b!4245549 res!1745439) b!4245558))

(assert (= (and b!4245558 res!1745441) b!4245540))

(assert (= b!4245538 b!4245559))

(assert (= b!4245551 b!4245538))

(assert (= (and start!406390 ((_ is Cons!46979) rules!2932)) b!4245551))

(assert (= b!4245542 b!4245555))

(assert (= b!4245543 b!4245542))

(assert (= b!4245560 b!4245543))

(assert (= (and start!406390 ((_ is Cons!46980) addTokens!17)) b!4245560))

(assert (= (and start!406390 ((_ is Cons!46978) shorterInput!51)) b!4245545))

(assert (= (and start!406390 ((_ is Cons!46978) suffix!1262)) b!4245557))

(assert (= b!4245553 b!4245554))

(assert (= b!4245539 b!4245553))

(assert (= b!4245547 b!4245539))

(assert (= (and start!406390 ((_ is Cons!46980) tokens!581)) b!4245547))

(assert (= (and start!406390 ((_ is Cons!46978) longerInput!51)) b!4245546))

(declare-fun m!4830727 () Bool)

(assert (=> b!4245560 m!4830727))

(declare-fun m!4830729 () Bool)

(assert (=> b!4245539 m!4830729))

(declare-fun m!4830731 () Bool)

(assert (=> b!4245544 m!4830731))

(declare-fun m!4830733 () Bool)

(assert (=> b!4245548 m!4830733))

(declare-fun m!4830735 () Bool)

(assert (=> b!4245553 m!4830735))

(declare-fun m!4830737 () Bool)

(assert (=> b!4245553 m!4830737))

(declare-fun m!4830739 () Bool)

(assert (=> b!4245541 m!4830739))

(declare-fun m!4830741 () Bool)

(assert (=> b!4245543 m!4830741))

(declare-fun m!4830743 () Bool)

(assert (=> b!4245542 m!4830743))

(declare-fun m!4830745 () Bool)

(assert (=> b!4245542 m!4830745))

(declare-fun m!4830747 () Bool)

(assert (=> b!4245550 m!4830747))

(declare-fun m!4830749 () Bool)

(assert (=> b!4245556 m!4830749))

(declare-fun m!4830751 () Bool)

(assert (=> b!4245549 m!4830751))

(declare-fun m!4830753 () Bool)

(assert (=> b!4245538 m!4830753))

(declare-fun m!4830755 () Bool)

(assert (=> b!4245538 m!4830755))

(declare-fun m!4830757 () Bool)

(assert (=> b!4245558 m!4830757))

(declare-fun m!4830759 () Bool)

(assert (=> b!4245558 m!4830759))

(declare-fun m!4830761 () Bool)

(assert (=> b!4245547 m!4830761))

(declare-fun m!4830763 () Bool)

(assert (=> b!4245540 m!4830763))

(declare-fun m!4830765 () Bool)

(assert (=> b!4245540 m!4830765))

(declare-fun m!4830767 () Bool)

(assert (=> b!4245552 m!4830767))

(declare-fun m!4830769 () Bool)

(assert (=> b!4245552 m!4830769))

(check-sat (not b!4245551) (not b_next!126687) (not b!4245545) (not b!4245552) b_and!336305 (not b!4245548) (not b!4245560) (not b!4245538) (not b!4245541) (not b!4245549) (not b_next!126695) (not b_next!126689) (not b!4245557) (not b_next!126691) (not b!4245539) (not b!4245547) (not b!4245553) b_and!336309 (not b!4245540) tp_is_empty!22693 b_and!336313 (not b!4245556) (not b!4245546) (not b!4245544) (not b!4245558) b_and!336315 (not b_next!126693) (not b!4245543) (not b!4245550) (not b_next!126697) (not b!4245542) b_and!336307 b_and!336311)
(check-sat (not b_next!126691) (not b_next!126687) b_and!336309 b_and!336313 b_and!336305 (not b_next!126697) (not b_next!126695) (not b_next!126689) b_and!336315 (not b_next!126693) b_and!336307 b_and!336311)
