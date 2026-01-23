; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!405918 () Bool)

(assert start!405918)

(declare-fun b!4241343 () Bool)

(declare-fun b_free!125623 () Bool)

(declare-fun b_next!126327 () Bool)

(assert (=> b!4241343 (= b_free!125623 (not b_next!126327))))

(declare-fun tp!1300137 () Bool)

(declare-fun b_and!335585 () Bool)

(assert (=> b!4241343 (= tp!1300137 b_and!335585)))

(declare-fun b_free!125625 () Bool)

(declare-fun b_next!126329 () Bool)

(assert (=> b!4241343 (= b_free!125625 (not b_next!126329))))

(declare-fun tp!1300134 () Bool)

(declare-fun b_and!335587 () Bool)

(assert (=> b!4241343 (= tp!1300134 b_and!335587)))

(declare-fun b!4241342 () Bool)

(declare-fun b_free!125627 () Bool)

(declare-fun b_next!126331 () Bool)

(assert (=> b!4241342 (= b_free!125627 (not b_next!126331))))

(declare-fun tp!1300138 () Bool)

(declare-fun b_and!335589 () Bool)

(assert (=> b!4241342 (= tp!1300138 b_and!335589)))

(declare-fun b_free!125629 () Bool)

(declare-fun b_next!126333 () Bool)

(assert (=> b!4241342 (= b_free!125629 (not b_next!126333))))

(declare-fun tp!1300136 () Bool)

(declare-fun b_and!335591 () Bool)

(assert (=> b!4241342 (= tp!1300136 b_and!335591)))

(declare-fun b!4241336 () Bool)

(declare-fun b_free!125631 () Bool)

(declare-fun b_next!126335 () Bool)

(assert (=> b!4241336 (= b_free!125631 (not b_next!126335))))

(declare-fun tp!1300127 () Bool)

(declare-fun b_and!335593 () Bool)

(assert (=> b!4241336 (= tp!1300127 b_and!335593)))

(declare-fun b_free!125633 () Bool)

(declare-fun b_next!126337 () Bool)

(assert (=> b!4241336 (= b_free!125633 (not b_next!126337))))

(declare-fun tp!1300129 () Bool)

(declare-fun b_and!335595 () Bool)

(assert (=> b!4241336 (= tp!1300129 b_and!335595)))

(declare-fun res!1743929 () Bool)

(declare-fun e!2633924 () Bool)

(assert (=> start!405918 (=> (not res!1743929) (not e!2633924))))

(declare-datatypes ((LexerInterface!7525 0))(
  ( (LexerInterfaceExt!7522 (__x!28543 Int)) (Lexer!7523) )
))
(declare-fun thiss!21540 () LexerInterface!7525)

(get-info :version)

(assert (=> start!405918 (= res!1743929 ((_ is Lexer!7523) thiss!21540))))

(assert (=> start!405918 e!2633924))

(assert (=> start!405918 true))

(declare-fun e!2633926 () Bool)

(assert (=> start!405918 e!2633926))

(declare-fun e!2633938 () Bool)

(assert (=> start!405918 e!2633938))

(declare-fun e!2633935 () Bool)

(assert (=> start!405918 e!2633935))

(declare-fun e!2633932 () Bool)

(assert (=> start!405918 e!2633932))

(declare-fun e!2633937 () Bool)

(assert (=> start!405918 e!2633937))

(declare-fun e!2633942 () Bool)

(assert (=> start!405918 e!2633942))

(declare-fun b!4241329 () Bool)

(declare-fun res!1743932 () Bool)

(assert (=> b!4241329 (=> (not res!1743932) (not e!2633924))))

(declare-datatypes ((C!25868 0))(
  ( (C!25869 (val!15124 Int)) )
))
(declare-datatypes ((List!47026 0))(
  ( (Nil!46902) (Cons!46902 (h!52322 C!25868) (t!350897 List!47026)) )
))
(declare-fun longerInput!51 () List!47026)

(declare-fun shorterInput!51 () List!47026)

(declare-fun size!34357 (List!47026) Int)

(assert (=> b!4241329 (= res!1743932 (> (size!34357 longerInput!51) (size!34357 shorterInput!51)))))

(declare-fun e!2633930 () Bool)

(declare-fun b!4241330 () Bool)

(declare-fun tp!1300128 () Bool)

(declare-fun e!2633941 () Bool)

(declare-datatypes ((List!47027 0))(
  ( (Nil!46903) (Cons!46903 (h!52323 (_ BitVec 16)) (t!350898 List!47027)) )
))
(declare-datatypes ((TokenValue!8160 0))(
  ( (FloatLiteralValue!16320 (text!57565 List!47027)) (TokenValueExt!8159 (__x!28544 Int)) (Broken!40800 (value!246515 List!47027)) (Object!8283) (End!8160) (Def!8160) (Underscore!8160) (Match!8160) (Else!8160) (Error!8160) (Case!8160) (If!8160) (Extends!8160) (Abstract!8160) (Class!8160) (Val!8160) (DelimiterValue!16320 (del!8220 List!47027)) (KeywordValue!8166 (value!246516 List!47027)) (CommentValue!16320 (value!246517 List!47027)) (WhitespaceValue!16320 (value!246518 List!47027)) (IndentationValue!8160 (value!246519 List!47027)) (String!54729) (Int32!8160) (Broken!40801 (value!246520 List!47027)) (Boolean!8161) (Unit!65974) (OperatorValue!8163 (op!8220 List!47027)) (IdentifierValue!16320 (value!246521 List!47027)) (IdentifierValue!16321 (value!246522 List!47027)) (WhitespaceValue!16321 (value!246523 List!47027)) (True!16320) (False!16320) (Broken!40802 (value!246524 List!47027)) (Broken!40803 (value!246525 List!47027)) (True!16321) (RightBrace!8160) (RightBracket!8160) (Colon!8160) (Null!8160) (Comma!8160) (LeftBracket!8160) (False!16321) (LeftBrace!8160) (ImaginaryLiteralValue!8160 (text!57566 List!47027)) (StringLiteralValue!24480 (value!246526 List!47027)) (EOFValue!8160 (value!246527 List!47027)) (IdentValue!8160 (value!246528 List!47027)) (DelimiterValue!16321 (value!246529 List!47027)) (DedentValue!8160 (value!246530 List!47027)) (NewLineValue!8160 (value!246531 List!47027)) (IntegerValue!24480 (value!246532 (_ BitVec 32)) (text!57567 List!47027)) (IntegerValue!24481 (value!246533 Int) (text!57568 List!47027)) (Times!8160) (Or!8160) (Equal!8160) (Minus!8160) (Broken!40804 (value!246534 List!47027)) (And!8160) (Div!8160) (LessEqual!8160) (Mod!8160) (Concat!20995) (Not!8160) (Plus!8160) (SpaceValue!8160 (value!246535 List!47027)) (IntegerValue!24482 (value!246536 Int) (text!57569 List!47027)) (StringLiteralValue!24481 (text!57570 List!47027)) (FloatLiteralValue!16321 (text!57571 List!47027)) (BytesLiteralValue!8160 (value!246537 List!47027)) (CommentValue!16321 (value!246538 List!47027)) (StringLiteralValue!24482 (value!246539 List!47027)) (ErrorTokenValue!8160 (msg!8221 List!47027)) )
))
(declare-datatypes ((Regex!12835 0))(
  ( (ElementMatch!12835 (c!720616 C!25868)) (Concat!20996 (regOne!26182 Regex!12835) (regTwo!26182 Regex!12835)) (EmptyExpr!12835) (Star!12835 (reg!13164 Regex!12835)) (EmptyLang!12835) (Union!12835 (regOne!26183 Regex!12835) (regTwo!26183 Regex!12835)) )
))
(declare-datatypes ((String!54730 0))(
  ( (String!54731 (value!246540 String)) )
))
(declare-datatypes ((IArray!28287 0))(
  ( (IArray!28288 (innerList!14201 List!47026)) )
))
(declare-datatypes ((Conc!14141 0))(
  ( (Node!14141 (left!34852 Conc!14141) (right!35182 Conc!14141) (csize!28512 Int) (cheight!14352 Int)) (Leaf!21865 (xs!17447 IArray!28287) (csize!28513 Int)) (Empty!14141) )
))
(declare-datatypes ((BalanceConc!27876 0))(
  ( (BalanceConc!27877 (c!720617 Conc!14141)) )
))
(declare-datatypes ((TokenValueInjection!15748 0))(
  ( (TokenValueInjection!15749 (toValue!10686 Int) (toChars!10545 Int)) )
))
(declare-datatypes ((Rule!15660 0))(
  ( (Rule!15661 (regex!7930 Regex!12835) (tag!8794 String!54730) (isSeparator!7930 Bool) (transformation!7930 TokenValueInjection!15748)) )
))
(declare-datatypes ((Token!14486 0))(
  ( (Token!14487 (value!246541 TokenValue!8160) (rule!11058 Rule!15660) (size!34358 Int) (originalCharacters!8274 List!47026)) )
))
(declare-datatypes ((List!47028 0))(
  ( (Nil!46904) (Cons!46904 (h!52324 Token!14486) (t!350899 List!47028)) )
))
(declare-fun tokens!581 () List!47028)

(declare-fun inv!61649 (String!54730) Bool)

(declare-fun inv!61652 (TokenValueInjection!15748) Bool)

(assert (=> b!4241330 (= e!2633941 (and tp!1300128 (inv!61649 (tag!8794 (rule!11058 (h!52324 tokens!581)))) (inv!61652 (transformation!7930 (rule!11058 (h!52324 tokens!581)))) e!2633930))))

(declare-fun e!2633931 () Bool)

(declare-fun tp!1300125 () Bool)

(declare-fun b!4241331 () Bool)

(declare-fun inv!21 (TokenValue!8160) Bool)

(assert (=> b!4241331 (= e!2633931 (and (inv!21 (value!246541 (h!52324 tokens!581))) e!2633941 tp!1300125))))

(declare-fun addTokens!17 () List!47028)

(declare-fun b!4241332 () Bool)

(declare-fun tp!1300124 () Bool)

(declare-fun e!2633928 () Bool)

(declare-fun e!2633925 () Bool)

(assert (=> b!4241332 (= e!2633925 (and tp!1300124 (inv!61649 (tag!8794 (rule!11058 (h!52324 addTokens!17)))) (inv!61652 (transformation!7930 (rule!11058 (h!52324 addTokens!17)))) e!2633928))))

(declare-fun b!4241333 () Bool)

(declare-fun res!1743934 () Bool)

(assert (=> b!4241333 (=> (not res!1743934) (not e!2633924))))

(declare-datatypes ((List!47029 0))(
  ( (Nil!46905) (Cons!46905 (h!52325 Rule!15660) (t!350900 List!47029)) )
))
(declare-fun rules!2932 () List!47029)

(declare-fun rulesInvariant!6636 (LexerInterface!7525 List!47029) Bool)

(assert (=> b!4241333 (= res!1743934 (rulesInvariant!6636 thiss!21540 rules!2932))))

(declare-fun b!4241334 () Bool)

(declare-fun tp_is_empty!22661 () Bool)

(declare-fun tp!1300135 () Bool)

(assert (=> b!4241334 (= e!2633932 (and tp_is_empty!22661 tp!1300135))))

(declare-fun b!4241335 () Bool)

(declare-fun tp!1300131 () Bool)

(declare-fun e!2633929 () Bool)

(declare-fun inv!61653 (Token!14486) Bool)

(assert (=> b!4241335 (= e!2633938 (and (inv!61653 (h!52324 addTokens!17)) e!2633929 tp!1300131))))

(assert (=> b!4241336 (= e!2633930 (and tp!1300127 tp!1300129))))

(declare-fun b!4241337 () Bool)

(declare-fun e!2633922 () Bool)

(assert (=> b!4241337 (= e!2633922 false)))

(declare-fun lt!1506664 () List!47026)

(declare-datatypes ((tuple2!44478 0))(
  ( (tuple2!44479 (_1!25373 Token!14486) (_2!25373 List!47026)) )
))
(declare-datatypes ((Option!10066 0))(
  ( (None!10065) (Some!10065 (v!41017 tuple2!44478)) )
))
(declare-fun lt!1506662 () Option!10066)

(declare-fun ++!11939 (List!47026 List!47026) List!47026)

(declare-fun list!16911 (BalanceConc!27876) List!47026)

(declare-fun charsOf!5280 (Token!14486) BalanceConc!27876)

(assert (=> b!4241337 (= lt!1506664 (++!11939 (list!16911 (charsOf!5280 (_1!25373 (v!41017 lt!1506662)))) (_2!25373 (v!41017 lt!1506662))))))

(declare-fun tp!1300130 () Bool)

(declare-fun b!4241338 () Bool)

(assert (=> b!4241338 (= e!2633929 (and (inv!21 (value!246541 (h!52324 addTokens!17))) e!2633925 tp!1300130))))

(declare-fun b!4241339 () Bool)

(assert (=> b!4241339 (= e!2633924 e!2633922)))

(declare-fun res!1743933 () Bool)

(assert (=> b!4241339 (=> (not res!1743933) (not e!2633922))))

(declare-fun lt!1506663 () Option!10066)

(assert (=> b!4241339 (= res!1743933 (and ((_ is Some!10065) lt!1506663) ((_ is Some!10065) lt!1506662)))))

(declare-fun maxPrefix!4483 (LexerInterface!7525 List!47029 List!47026) Option!10066)

(assert (=> b!4241339 (= lt!1506662 (maxPrefix!4483 thiss!21540 rules!2932 shorterInput!51))))

(assert (=> b!4241339 (= lt!1506663 (maxPrefix!4483 thiss!21540 rules!2932 longerInput!51))))

(declare-fun b!4241340 () Bool)

(declare-fun res!1743926 () Bool)

(assert (=> b!4241340 (=> (not res!1743926) (not e!2633924))))

(declare-fun size!34359 (List!47028) Int)

(assert (=> b!4241340 (= res!1743926 (> (size!34359 addTokens!17) 0))))

(declare-fun b!4241341 () Bool)

(declare-fun tp!1300140 () Bool)

(assert (=> b!4241341 (= e!2633937 (and (inv!61653 (h!52324 tokens!581)) e!2633931 tp!1300140))))

(declare-fun e!2633927 () Bool)

(assert (=> b!4241342 (= e!2633927 (and tp!1300138 tp!1300136))))

(assert (=> b!4241343 (= e!2633928 (and tp!1300137 tp!1300134))))

(declare-fun b!4241344 () Bool)

(declare-fun res!1743925 () Bool)

(assert (=> b!4241344 (=> (not res!1743925) (not e!2633924))))

(declare-fun isEmpty!27727 (List!47026) Bool)

(assert (=> b!4241344 (= res!1743925 (not (isEmpty!27727 longerInput!51)))))

(declare-fun b!4241345 () Bool)

(declare-fun e!2633933 () Bool)

(declare-fun tp!1300139 () Bool)

(assert (=> b!4241345 (= e!2633926 (and e!2633933 tp!1300139))))

(declare-fun b!4241346 () Bool)

(declare-fun res!1743930 () Bool)

(assert (=> b!4241346 (=> (not res!1743930) (not e!2633924))))

(declare-fun isEmpty!27728 (List!47029) Bool)

(assert (=> b!4241346 (= res!1743930 (not (isEmpty!27728 rules!2932)))))

(declare-fun b!4241347 () Bool)

(declare-fun res!1743931 () Bool)

(assert (=> b!4241347 (=> (not res!1743931) (not e!2633924))))

(declare-fun isEmpty!27729 (List!47028) Bool)

(assert (=> b!4241347 (= res!1743931 (not (isEmpty!27729 addTokens!17)))))

(declare-fun b!4241348 () Bool)

(declare-fun res!1743927 () Bool)

(assert (=> b!4241348 (=> (not res!1743927) (not e!2633924))))

(declare-fun suffix!1262 () List!47026)

(declare-datatypes ((tuple2!44480 0))(
  ( (tuple2!44481 (_1!25374 List!47028) (_2!25374 List!47026)) )
))
(declare-fun lexList!2031 (LexerInterface!7525 List!47029 List!47026) tuple2!44480)

(assert (=> b!4241348 (= res!1743927 (= (lexList!2031 thiss!21540 rules!2932 longerInput!51) (tuple2!44481 tokens!581 suffix!1262)))))

(declare-fun b!4241349 () Bool)

(declare-fun tp!1300133 () Bool)

(assert (=> b!4241349 (= e!2633933 (and tp!1300133 (inv!61649 (tag!8794 (h!52325 rules!2932))) (inv!61652 (transformation!7930 (h!52325 rules!2932))) e!2633927))))

(declare-fun b!4241350 () Bool)

(declare-fun res!1743928 () Bool)

(assert (=> b!4241350 (=> (not res!1743928) (not e!2633922))))

(assert (=> b!4241350 (= res!1743928 (= (++!11939 (list!16911 (charsOf!5280 (_1!25373 (v!41017 lt!1506663)))) (_2!25373 (v!41017 lt!1506663))) longerInput!51))))

(declare-fun b!4241351 () Bool)

(declare-fun tp!1300132 () Bool)

(assert (=> b!4241351 (= e!2633942 (and tp_is_empty!22661 tp!1300132))))

(declare-fun b!4241352 () Bool)

(declare-fun tp!1300126 () Bool)

(assert (=> b!4241352 (= e!2633935 (and tp_is_empty!22661 tp!1300126))))

(assert (= (and start!405918 res!1743929) b!4241346))

(assert (= (and b!4241346 res!1743930) b!4241333))

(assert (= (and b!4241333 res!1743934) b!4241344))

(assert (= (and b!4241344 res!1743925) b!4241329))

(assert (= (and b!4241329 res!1743932) b!4241348))

(assert (= (and b!4241348 res!1743927) b!4241347))

(assert (= (and b!4241347 res!1743931) b!4241340))

(assert (= (and b!4241340 res!1743926) b!4241339))

(assert (= (and b!4241339 res!1743933) b!4241350))

(assert (= (and b!4241350 res!1743928) b!4241337))

(assert (= b!4241349 b!4241342))

(assert (= b!4241345 b!4241349))

(assert (= (and start!405918 ((_ is Cons!46905) rules!2932)) b!4241345))

(assert (= b!4241332 b!4241343))

(assert (= b!4241338 b!4241332))

(assert (= b!4241335 b!4241338))

(assert (= (and start!405918 ((_ is Cons!46904) addTokens!17)) b!4241335))

(assert (= (and start!405918 ((_ is Cons!46902) shorterInput!51)) b!4241352))

(assert (= (and start!405918 ((_ is Cons!46902) suffix!1262)) b!4241334))

(assert (= b!4241330 b!4241336))

(assert (= b!4241331 b!4241330))

(assert (= b!4241341 b!4241331))

(assert (= (and start!405918 ((_ is Cons!46904) tokens!581)) b!4241341))

(assert (= (and start!405918 ((_ is Cons!46902) longerInput!51)) b!4241351))

(declare-fun m!4826655 () Bool)

(assert (=> b!4241349 m!4826655))

(declare-fun m!4826657 () Bool)

(assert (=> b!4241349 m!4826657))

(declare-fun m!4826659 () Bool)

(assert (=> b!4241341 m!4826659))

(declare-fun m!4826661 () Bool)

(assert (=> b!4241333 m!4826661))

(declare-fun m!4826663 () Bool)

(assert (=> b!4241347 m!4826663))

(declare-fun m!4826665 () Bool)

(assert (=> b!4241331 m!4826665))

(declare-fun m!4826667 () Bool)

(assert (=> b!4241348 m!4826667))

(declare-fun m!4826669 () Bool)

(assert (=> b!4241332 m!4826669))

(declare-fun m!4826671 () Bool)

(assert (=> b!4241332 m!4826671))

(declare-fun m!4826673 () Bool)

(assert (=> b!4241346 m!4826673))

(declare-fun m!4826675 () Bool)

(assert (=> b!4241340 m!4826675))

(declare-fun m!4826677 () Bool)

(assert (=> b!4241344 m!4826677))

(declare-fun m!4826679 () Bool)

(assert (=> b!4241329 m!4826679))

(declare-fun m!4826681 () Bool)

(assert (=> b!4241329 m!4826681))

(declare-fun m!4826683 () Bool)

(assert (=> b!4241350 m!4826683))

(assert (=> b!4241350 m!4826683))

(declare-fun m!4826685 () Bool)

(assert (=> b!4241350 m!4826685))

(assert (=> b!4241350 m!4826685))

(declare-fun m!4826687 () Bool)

(assert (=> b!4241350 m!4826687))

(declare-fun m!4826689 () Bool)

(assert (=> b!4241330 m!4826689))

(declare-fun m!4826691 () Bool)

(assert (=> b!4241330 m!4826691))

(declare-fun m!4826693 () Bool)

(assert (=> b!4241338 m!4826693))

(declare-fun m!4826695 () Bool)

(assert (=> b!4241339 m!4826695))

(declare-fun m!4826697 () Bool)

(assert (=> b!4241339 m!4826697))

(declare-fun m!4826699 () Bool)

(assert (=> b!4241337 m!4826699))

(assert (=> b!4241337 m!4826699))

(declare-fun m!4826701 () Bool)

(assert (=> b!4241337 m!4826701))

(assert (=> b!4241337 m!4826701))

(declare-fun m!4826703 () Bool)

(assert (=> b!4241337 m!4826703))

(declare-fun m!4826705 () Bool)

(assert (=> b!4241335 m!4826705))

(check-sat (not b!4241340) b_and!335593 (not b_next!126327) b_and!335595 (not b!4241341) (not b!4241352) (not b_next!126329) (not b!4241331) (not b!4241339) (not b_next!126333) (not b!4241345) tp_is_empty!22661 (not b!4241329) (not b!4241332) (not b!4241351) (not b!4241337) b_and!335591 (not b!4241349) (not b_next!126335) (not b_next!126337) (not b!4241346) b_and!335585 b_and!335589 (not b!4241344) (not b!4241350) (not b!4241338) (not b!4241335) b_and!335587 (not b!4241334) (not b_next!126331) (not b!4241347) (not b!4241333) (not b!4241330) (not b!4241348))
(check-sat b_and!335593 (not b_next!126333) b_and!335591 (not b_next!126327) b_and!335595 b_and!335585 b_and!335589 (not b_next!126329) b_and!335587 (not b_next!126331) (not b_next!126335) (not b_next!126337))
