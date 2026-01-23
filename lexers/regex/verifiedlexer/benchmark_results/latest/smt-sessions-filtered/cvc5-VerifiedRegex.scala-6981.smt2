; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!370438 () Bool)

(assert start!370438)

(declare-fun b!3943796 () Bool)

(declare-fun b_free!107993 () Bool)

(declare-fun b_next!108697 () Bool)

(assert (=> b!3943796 (= b_free!107993 (not b_next!108697))))

(declare-fun tp!1200507 () Bool)

(declare-fun b_and!301559 () Bool)

(assert (=> b!3943796 (= tp!1200507 b_and!301559)))

(declare-fun b_free!107995 () Bool)

(declare-fun b_next!108699 () Bool)

(assert (=> b!3943796 (= b_free!107995 (not b_next!108699))))

(declare-fun tp!1200505 () Bool)

(declare-fun b_and!301561 () Bool)

(assert (=> b!3943796 (= tp!1200505 b_and!301561)))

(declare-fun b!3943797 () Bool)

(declare-fun b_free!107997 () Bool)

(declare-fun b_next!108701 () Bool)

(assert (=> b!3943797 (= b_free!107997 (not b_next!108701))))

(declare-fun tp!1200511 () Bool)

(declare-fun b_and!301563 () Bool)

(assert (=> b!3943797 (= tp!1200511 b_and!301563)))

(declare-fun b_free!107999 () Bool)

(declare-fun b_next!108703 () Bool)

(assert (=> b!3943797 (= b_free!107999 (not b_next!108703))))

(declare-fun tp!1200519 () Bool)

(declare-fun b_and!301565 () Bool)

(assert (=> b!3943797 (= tp!1200519 b_and!301565)))

(declare-fun b!3943798 () Bool)

(declare-fun b_free!108001 () Bool)

(declare-fun b_next!108705 () Bool)

(assert (=> b!3943798 (= b_free!108001 (not b_next!108705))))

(declare-fun tp!1200513 () Bool)

(declare-fun b_and!301567 () Bool)

(assert (=> b!3943798 (= tp!1200513 b_and!301567)))

(declare-fun b_free!108003 () Bool)

(declare-fun b_next!108707 () Bool)

(assert (=> b!3943798 (= b_free!108003 (not b_next!108707))))

(declare-fun tp!1200516 () Bool)

(declare-fun b_and!301569 () Bool)

(assert (=> b!3943798 (= tp!1200516 b_and!301569)))

(declare-fun e!2440354 () Bool)

(declare-fun tp!1200510 () Bool)

(declare-datatypes ((List!42013 0))(
  ( (Nil!41889) (Cons!41889 (h!47309 (_ BitVec 16)) (t!327350 List!42013)) )
))
(declare-datatypes ((TokenValue!6779 0))(
  ( (FloatLiteralValue!13558 (text!47898 List!42013)) (TokenValueExt!6778 (__x!25775 Int)) (Broken!33895 (value!207256 List!42013)) (Object!6902) (End!6779) (Def!6779) (Underscore!6779) (Match!6779) (Else!6779) (Error!6779) (Case!6779) (If!6779) (Extends!6779) (Abstract!6779) (Class!6779) (Val!6779) (DelimiterValue!13558 (del!6839 List!42013)) (KeywordValue!6785 (value!207257 List!42013)) (CommentValue!13558 (value!207258 List!42013)) (WhitespaceValue!13558 (value!207259 List!42013)) (IndentationValue!6779 (value!207260 List!42013)) (String!47614) (Int32!6779) (Broken!33896 (value!207261 List!42013)) (Boolean!6780) (Unit!60430) (OperatorValue!6782 (op!6839 List!42013)) (IdentifierValue!13558 (value!207262 List!42013)) (IdentifierValue!13559 (value!207263 List!42013)) (WhitespaceValue!13559 (value!207264 List!42013)) (True!13558) (False!13558) (Broken!33897 (value!207265 List!42013)) (Broken!33898 (value!207266 List!42013)) (True!13559) (RightBrace!6779) (RightBracket!6779) (Colon!6779) (Null!6779) (Comma!6779) (LeftBracket!6779) (False!13559) (LeftBrace!6779) (ImaginaryLiteralValue!6779 (text!47899 List!42013)) (StringLiteralValue!20337 (value!207267 List!42013)) (EOFValue!6779 (value!207268 List!42013)) (IdentValue!6779 (value!207269 List!42013)) (DelimiterValue!13559 (value!207270 List!42013)) (DedentValue!6779 (value!207271 List!42013)) (NewLineValue!6779 (value!207272 List!42013)) (IntegerValue!20337 (value!207273 (_ BitVec 32)) (text!47900 List!42013)) (IntegerValue!20338 (value!207274 Int) (text!47901 List!42013)) (Times!6779) (Or!6779) (Equal!6779) (Minus!6779) (Broken!33899 (value!207275 List!42013)) (And!6779) (Div!6779) (LessEqual!6779) (Mod!6779) (Concat!18233) (Not!6779) (Plus!6779) (SpaceValue!6779 (value!207276 List!42013)) (IntegerValue!20339 (value!207277 Int) (text!47902 List!42013)) (StringLiteralValue!20338 (text!47903 List!42013)) (FloatLiteralValue!13559 (text!47904 List!42013)) (BytesLiteralValue!6779 (value!207278 List!42013)) (CommentValue!13559 (value!207279 List!42013)) (StringLiteralValue!20339 (value!207280 List!42013)) (ErrorTokenValue!6779 (msg!6840 List!42013)) )
))
(declare-datatypes ((C!23094 0))(
  ( (C!23095 (val!13641 Int)) )
))
(declare-datatypes ((Regex!11454 0))(
  ( (ElementMatch!11454 (c!685073 C!23094)) (Concat!18234 (regOne!23420 Regex!11454) (regTwo!23420 Regex!11454)) (EmptyExpr!11454) (Star!11454 (reg!11783 Regex!11454)) (EmptyLang!11454) (Union!11454 (regOne!23421 Regex!11454) (regTwo!23421 Regex!11454)) )
))
(declare-datatypes ((String!47615 0))(
  ( (String!47616 (value!207281 String)) )
))
(declare-datatypes ((List!42014 0))(
  ( (Nil!41890) (Cons!41890 (h!47310 C!23094) (t!327351 List!42014)) )
))
(declare-datatypes ((IArray!25525 0))(
  ( (IArray!25526 (innerList!12820 List!42014)) )
))
(declare-datatypes ((Conc!12760 0))(
  ( (Node!12760 (left!31905 Conc!12760) (right!32235 Conc!12760) (csize!25750 Int) (cheight!12971 Int)) (Leaf!19742 (xs!16066 IArray!25525) (csize!25751 Int)) (Empty!12760) )
))
(declare-datatypes ((BalanceConc!25114 0))(
  ( (BalanceConc!25115 (c!685074 Conc!12760)) )
))
(declare-datatypes ((TokenValueInjection!12986 0))(
  ( (TokenValueInjection!12987 (toValue!9017 Int) (toChars!8876 Int)) )
))
(declare-datatypes ((Rule!12898 0))(
  ( (Rule!12899 (regex!6549 Regex!11454) (tag!7409 String!47615) (isSeparator!6549 Bool) (transformation!6549 TokenValueInjection!12986)) )
))
(declare-datatypes ((Token!12236 0))(
  ( (Token!12237 (value!207282 TokenValue!6779) (rule!9511 Rule!12898) (size!31412 Int) (originalCharacters!7149 List!42014)) )
))
(declare-datatypes ((List!42015 0))(
  ( (Nil!41891) (Cons!41891 (h!47311 Token!12236) (t!327352 List!42015)) )
))
(declare-fun prefixTokens!80 () List!42015)

(declare-fun e!2440349 () Bool)

(declare-fun b!3943779 () Bool)

(declare-fun inv!21 (TokenValue!6779) Bool)

(assert (=> b!3943779 (= e!2440354 (and (inv!21 (value!207282 (h!47311 prefixTokens!80))) e!2440349 tp!1200510))))

(declare-fun b!3943780 () Bool)

(declare-fun e!2440337 () Bool)

(declare-fun e!2440338 () Bool)

(declare-fun tp!1200512 () Bool)

(assert (=> b!3943780 (= e!2440337 (and e!2440338 tp!1200512))))

(declare-fun b!3943781 () Bool)

(declare-fun e!2440336 () Bool)

(declare-fun lt!1379064 () List!42014)

(declare-fun lt!1379060 () List!42014)

(assert (=> b!3943781 (= e!2440336 (= lt!1379064 lt!1379060))))

(declare-fun res!1595885 () Bool)

(declare-fun e!2440340 () Bool)

(assert (=> start!370438 (=> (not res!1595885) (not e!2440340))))

(declare-datatypes ((LexerInterface!6138 0))(
  ( (LexerInterfaceExt!6135 (__x!25776 Int)) (Lexer!6136) )
))
(declare-fun thiss!20629 () LexerInterface!6138)

(assert (=> start!370438 (= res!1595885 (is-Lexer!6136 thiss!20629))))

(assert (=> start!370438 e!2440340))

(declare-fun e!2440355 () Bool)

(assert (=> start!370438 e!2440355))

(assert (=> start!370438 true))

(declare-fun e!2440344 () Bool)

(assert (=> start!370438 e!2440344))

(assert (=> start!370438 e!2440337))

(declare-fun e!2440356 () Bool)

(assert (=> start!370438 e!2440356))

(declare-fun e!2440345 () Bool)

(assert (=> start!370438 e!2440345))

(declare-fun e!2440346 () Bool)

(assert (=> start!370438 e!2440346))

(declare-fun e!2440357 () Bool)

(declare-fun e!2440348 () Bool)

(declare-fun b!3943782 () Bool)

(declare-fun suffixTokens!72 () List!42015)

(declare-fun tp!1200521 () Bool)

(assert (=> b!3943782 (= e!2440357 (and (inv!21 (value!207282 (h!47311 suffixTokens!72))) e!2440348 tp!1200521))))

(declare-fun b!3943783 () Bool)

(declare-fun e!2440350 () Bool)

(assert (=> b!3943783 (= e!2440340 e!2440350)))

(declare-fun res!1595888 () Bool)

(assert (=> b!3943783 (=> (not res!1595888) (not e!2440350))))

(declare-fun suffixResult!91 () List!42014)

(declare-datatypes ((List!42016 0))(
  ( (Nil!41892) (Cons!41892 (h!47312 Rule!12898) (t!327353 List!42016)) )
))
(declare-fun rules!2768 () List!42016)

(declare-datatypes ((tuple2!41178 0))(
  ( (tuple2!41179 (_1!23723 List!42015) (_2!23723 List!42014)) )
))
(declare-fun lexList!1906 (LexerInterface!6138 List!42016 List!42014) tuple2!41178)

(declare-fun ++!10855 (List!42015 List!42015) List!42015)

(assert (=> b!3943783 (= res!1595888 (= (lexList!1906 thiss!20629 rules!2768 lt!1379060) (tuple2!41179 (++!10855 prefixTokens!80 suffixTokens!72) suffixResult!91)))))

(declare-fun prefix!426 () List!42014)

(declare-fun suffix!1176 () List!42014)

(declare-fun ++!10856 (List!42014 List!42014) List!42014)

(assert (=> b!3943783 (= lt!1379060 (++!10856 prefix!426 suffix!1176))))

(declare-fun b!3943784 () Bool)

(declare-fun tp_is_empty!19879 () Bool)

(declare-fun tp!1200515 () Bool)

(assert (=> b!3943784 (= e!2440355 (and tp_is_empty!19879 tp!1200515))))

(declare-fun tp!1200517 () Bool)

(declare-fun b!3943785 () Bool)

(declare-fun inv!56105 (Token!12236) Bool)

(assert (=> b!3943785 (= e!2440356 (and (inv!56105 (h!47311 prefixTokens!80)) e!2440354 tp!1200517))))

(declare-fun b!3943786 () Bool)

(declare-fun e!2440343 () Bool)

(assert (=> b!3943786 (= e!2440343 (not e!2440336))))

(declare-fun res!1595889 () Bool)

(assert (=> b!3943786 (=> res!1595889 e!2440336)))

(declare-fun lt!1379063 () List!42014)

(declare-fun isPrefix!3638 (List!42014 List!42014) Bool)

(assert (=> b!3943786 (= res!1595889 (not (isPrefix!3638 lt!1379063 lt!1379060)))))

(declare-fun lt!1379058 () List!42014)

(declare-fun getSuffix!2089 (List!42014 List!42014) List!42014)

(assert (=> b!3943786 (= lt!1379058 (getSuffix!2089 lt!1379060 lt!1379063))))

(assert (=> b!3943786 (isPrefix!3638 lt!1379063 lt!1379064)))

(declare-datatypes ((tuple2!41180 0))(
  ( (tuple2!41181 (_1!23724 Token!12236) (_2!23724 List!42014)) )
))
(declare-datatypes ((Option!8969 0))(
  ( (None!8968) (Some!8968 (v!39304 tuple2!41180)) )
))
(declare-fun lt!1379059 () Option!8969)

(assert (=> b!3943786 (= lt!1379064 (++!10856 lt!1379063 (_2!23724 (v!39304 lt!1379059))))))

(declare-datatypes ((Unit!60431 0))(
  ( (Unit!60432) )
))
(declare-fun lt!1379062 () Unit!60431)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2497 (List!42014 List!42014) Unit!60431)

(assert (=> b!3943786 (= lt!1379062 (lemmaConcatTwoListThenFirstIsPrefix!2497 lt!1379063 (_2!23724 (v!39304 lt!1379059))))))

(declare-fun list!15557 (BalanceConc!25114) List!42014)

(declare-fun charsOf!4367 (Token!12236) BalanceConc!25114)

(assert (=> b!3943786 (= lt!1379063 (list!15557 (charsOf!4367 (_1!23724 (v!39304 lt!1379059)))))))

(declare-fun ruleValid!2491 (LexerInterface!6138 Rule!12898) Bool)

(assert (=> b!3943786 (ruleValid!2491 thiss!20629 (rule!9511 (_1!23724 (v!39304 lt!1379059))))))

(declare-fun lt!1379061 () Unit!60431)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1567 (LexerInterface!6138 Rule!12898 List!42016) Unit!60431)

(assert (=> b!3943786 (= lt!1379061 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1567 thiss!20629 (rule!9511 (_1!23724 (v!39304 lt!1379059))) rules!2768))))

(declare-fun lt!1379065 () Unit!60431)

(declare-fun lemmaCharactersSize!1202 (Token!12236) Unit!60431)

(assert (=> b!3943786 (= lt!1379065 (lemmaCharactersSize!1202 (_1!23724 (v!39304 lt!1379059))))))

(declare-fun b!3943787 () Bool)

(declare-fun tp!1200506 () Bool)

(assert (=> b!3943787 (= e!2440344 (and tp_is_empty!19879 tp!1200506))))

(declare-fun b!3943788 () Bool)

(declare-fun tp!1200520 () Bool)

(assert (=> b!3943788 (= e!2440346 (and tp_is_empty!19879 tp!1200520))))

(declare-fun b!3943789 () Bool)

(declare-fun tp!1200518 () Bool)

(declare-fun e!2440341 () Bool)

(declare-fun inv!56102 (String!47615) Bool)

(declare-fun inv!56106 (TokenValueInjection!12986) Bool)

(assert (=> b!3943789 (= e!2440338 (and tp!1200518 (inv!56102 (tag!7409 (h!47312 rules!2768))) (inv!56106 (transformation!6549 (h!47312 rules!2768))) e!2440341))))

(declare-fun b!3943790 () Bool)

(declare-fun res!1595882 () Bool)

(assert (=> b!3943790 (=> (not res!1595882) (not e!2440350))))

(assert (=> b!3943790 (= res!1595882 (= (lexList!1906 thiss!20629 rules!2768 suffix!1176) (tuple2!41179 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3943791 () Bool)

(declare-fun res!1595890 () Bool)

(assert (=> b!3943791 (=> (not res!1595890) (not e!2440340))))

(declare-fun rulesInvariant!5481 (LexerInterface!6138 List!42016) Bool)

(assert (=> b!3943791 (= res!1595890 (rulesInvariant!5481 thiss!20629 rules!2768))))

(declare-fun b!3943792 () Bool)

(declare-fun res!1595887 () Bool)

(assert (=> b!3943792 (=> (not res!1595887) (not e!2440340))))

(declare-fun isEmpty!24997 (List!42014) Bool)

(assert (=> b!3943792 (= res!1595887 (not (isEmpty!24997 prefix!426)))))

(declare-fun e!2440335 () Bool)

(declare-fun b!3943793 () Bool)

(declare-fun tp!1200508 () Bool)

(assert (=> b!3943793 (= e!2440349 (and tp!1200508 (inv!56102 (tag!7409 (rule!9511 (h!47311 prefixTokens!80)))) (inv!56106 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) e!2440335))))

(declare-fun b!3943794 () Bool)

(declare-fun res!1595883 () Bool)

(assert (=> b!3943794 (=> (not res!1595883) (not e!2440340))))

(declare-fun isEmpty!24998 (List!42016) Bool)

(assert (=> b!3943794 (= res!1595883 (not (isEmpty!24998 rules!2768)))))

(declare-fun b!3943795 () Bool)

(declare-fun tp!1200514 () Bool)

(declare-fun e!2440339 () Bool)

(assert (=> b!3943795 (= e!2440348 (and tp!1200514 (inv!56102 (tag!7409 (rule!9511 (h!47311 suffixTokens!72)))) (inv!56106 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) e!2440339))))

(assert (=> b!3943796 (= e!2440341 (and tp!1200507 tp!1200505))))

(assert (=> b!3943797 (= e!2440335 (and tp!1200511 tp!1200519))))

(assert (=> b!3943798 (= e!2440339 (and tp!1200513 tp!1200516))))

(declare-fun b!3943799 () Bool)

(declare-fun tp!1200509 () Bool)

(assert (=> b!3943799 (= e!2440345 (and (inv!56105 (h!47311 suffixTokens!72)) e!2440357 tp!1200509))))

(declare-fun b!3943800 () Bool)

(declare-fun res!1595886 () Bool)

(assert (=> b!3943800 (=> (not res!1595886) (not e!2440340))))

(declare-fun isEmpty!24999 (List!42015) Bool)

(assert (=> b!3943800 (= res!1595886 (not (isEmpty!24999 prefixTokens!80)))))

(declare-fun b!3943801 () Bool)

(assert (=> b!3943801 (= e!2440350 e!2440343)))

(declare-fun res!1595884 () Bool)

(assert (=> b!3943801 (=> (not res!1595884) (not e!2440343))))

(assert (=> b!3943801 (= res!1595884 (is-Some!8968 lt!1379059))))

(declare-fun maxPrefix!3442 (LexerInterface!6138 List!42016 List!42014) Option!8969)

(assert (=> b!3943801 (= lt!1379059 (maxPrefix!3442 thiss!20629 rules!2768 lt!1379060))))

(assert (= (and start!370438 res!1595885) b!3943794))

(assert (= (and b!3943794 res!1595883) b!3943791))

(assert (= (and b!3943791 res!1595890) b!3943800))

(assert (= (and b!3943800 res!1595886) b!3943792))

(assert (= (and b!3943792 res!1595887) b!3943783))

(assert (= (and b!3943783 res!1595888) b!3943790))

(assert (= (and b!3943790 res!1595882) b!3943801))

(assert (= (and b!3943801 res!1595884) b!3943786))

(assert (= (and b!3943786 (not res!1595889)) b!3943781))

(assert (= (and start!370438 (is-Cons!41890 suffixResult!91)) b!3943784))

(assert (= (and start!370438 (is-Cons!41890 suffix!1176)) b!3943787))

(assert (= b!3943789 b!3943796))

(assert (= b!3943780 b!3943789))

(assert (= (and start!370438 (is-Cons!41892 rules!2768)) b!3943780))

(assert (= b!3943793 b!3943797))

(assert (= b!3943779 b!3943793))

(assert (= b!3943785 b!3943779))

(assert (= (and start!370438 (is-Cons!41891 prefixTokens!80)) b!3943785))

(assert (= b!3943795 b!3943798))

(assert (= b!3943782 b!3943795))

(assert (= b!3943799 b!3943782))

(assert (= (and start!370438 (is-Cons!41891 suffixTokens!72)) b!3943799))

(assert (= (and start!370438 (is-Cons!41890 prefix!426)) b!3943788))

(declare-fun m!4512417 () Bool)

(assert (=> b!3943782 m!4512417))

(declare-fun m!4512419 () Bool)

(assert (=> b!3943790 m!4512419))

(declare-fun m!4512421 () Bool)

(assert (=> b!3943795 m!4512421))

(declare-fun m!4512423 () Bool)

(assert (=> b!3943795 m!4512423))

(declare-fun m!4512425 () Bool)

(assert (=> b!3943794 m!4512425))

(declare-fun m!4512427 () Bool)

(assert (=> b!3943785 m!4512427))

(declare-fun m!4512429 () Bool)

(assert (=> b!3943800 m!4512429))

(declare-fun m!4512431 () Bool)

(assert (=> b!3943786 m!4512431))

(declare-fun m!4512433 () Bool)

(assert (=> b!3943786 m!4512433))

(declare-fun m!4512435 () Bool)

(assert (=> b!3943786 m!4512435))

(declare-fun m!4512437 () Bool)

(assert (=> b!3943786 m!4512437))

(declare-fun m!4512439 () Bool)

(assert (=> b!3943786 m!4512439))

(declare-fun m!4512441 () Bool)

(assert (=> b!3943786 m!4512441))

(declare-fun m!4512443 () Bool)

(assert (=> b!3943786 m!4512443))

(declare-fun m!4512445 () Bool)

(assert (=> b!3943786 m!4512445))

(declare-fun m!4512447 () Bool)

(assert (=> b!3943786 m!4512447))

(assert (=> b!3943786 m!4512441))

(declare-fun m!4512449 () Bool)

(assert (=> b!3943786 m!4512449))

(declare-fun m!4512451 () Bool)

(assert (=> b!3943799 m!4512451))

(declare-fun m!4512453 () Bool)

(assert (=> b!3943793 m!4512453))

(declare-fun m!4512455 () Bool)

(assert (=> b!3943793 m!4512455))

(declare-fun m!4512457 () Bool)

(assert (=> b!3943801 m!4512457))

(declare-fun m!4512459 () Bool)

(assert (=> b!3943791 m!4512459))

(declare-fun m!4512461 () Bool)

(assert (=> b!3943783 m!4512461))

(declare-fun m!4512463 () Bool)

(assert (=> b!3943783 m!4512463))

(declare-fun m!4512465 () Bool)

(assert (=> b!3943783 m!4512465))

(declare-fun m!4512467 () Bool)

(assert (=> b!3943779 m!4512467))

(declare-fun m!4512469 () Bool)

(assert (=> b!3943792 m!4512469))

(declare-fun m!4512471 () Bool)

(assert (=> b!3943789 m!4512471))

(declare-fun m!4512473 () Bool)

(assert (=> b!3943789 m!4512473))

(push 1)

(assert b_and!301561)

(assert (not b!3943795))

(assert (not b!3943799))

(assert (not b_next!108701))

(assert (not b_next!108699))

(assert (not b!3943793))

(assert (not b!3943794))

(assert (not b!3943783))

(assert (not b!3943792))

(assert (not b!3943791))

(assert (not b!3943784))

(assert b_and!301563)

(assert (not b!3943800))

(assert (not b_next!108703))

(assert (not b!3943786))

(assert (not b!3943787))

(assert (not b_next!108707))

(assert b_and!301565)

(assert (not b_next!108697))

(assert (not b!3943801))

(assert (not b!3943785))

(assert (not b!3943789))

(assert (not b!3943788))

(assert b_and!301567)

(assert (not b!3943782))

(assert (not b_next!108705))

(assert b_and!301569)

(assert (not b!3943780))

(assert (not b!3943790))

(assert tp_is_empty!19879)

(assert b_and!301559)

(assert (not b!3943779))

(check-sat)

(pop 1)

(push 1)

(assert b_and!301561)

(assert (not b_next!108701))

(assert (not b_next!108699))

(assert (not b_next!108697))

(assert b_and!301563)

(assert b_and!301559)

(assert (not b_next!108703))

(assert (not b_next!108707))

(assert b_and!301565)

(assert b_and!301567)

(assert (not b_next!108705))

(assert b_and!301569)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1169778 () Bool)

(declare-fun res!1595926 () Bool)

(declare-fun e!2440429 () Bool)

(assert (=> d!1169778 (=> (not res!1595926) (not e!2440429))))

(assert (=> d!1169778 (= res!1595926 (not (isEmpty!24997 (originalCharacters!7149 (h!47311 suffixTokens!72)))))))

(assert (=> d!1169778 (= (inv!56105 (h!47311 suffixTokens!72)) e!2440429)))

(declare-fun b!3943875 () Bool)

(declare-fun res!1595927 () Bool)

(assert (=> b!3943875 (=> (not res!1595927) (not e!2440429))))

(declare-fun dynLambda!17942 (Int TokenValue!6779) BalanceConc!25114)

(assert (=> b!3943875 (= res!1595927 (= (originalCharacters!7149 (h!47311 suffixTokens!72)) (list!15557 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) (value!207282 (h!47311 suffixTokens!72))))))))

(declare-fun b!3943876 () Bool)

(declare-fun size!31414 (List!42014) Int)

(assert (=> b!3943876 (= e!2440429 (= (size!31412 (h!47311 suffixTokens!72)) (size!31414 (originalCharacters!7149 (h!47311 suffixTokens!72)))))))

(assert (= (and d!1169778 res!1595926) b!3943875))

(assert (= (and b!3943875 res!1595927) b!3943876))

(declare-fun b_lambda!115335 () Bool)

(assert (=> (not b_lambda!115335) (not b!3943875)))

(declare-fun t!327359 () Bool)

(declare-fun tb!236609 () Bool)

(assert (=> (and b!3943796 (= (toChars!8876 (transformation!6549 (h!47312 rules!2768))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72))))) t!327359) tb!236609))

(declare-fun b!3943881 () Bool)

(declare-fun e!2440432 () Bool)

(declare-fun tp!1200575 () Bool)

(declare-fun inv!56109 (Conc!12760) Bool)

(assert (=> b!3943881 (= e!2440432 (and (inv!56109 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) (value!207282 (h!47311 suffixTokens!72))))) tp!1200575))))

(declare-fun result!286602 () Bool)

(declare-fun inv!56110 (BalanceConc!25114) Bool)

(assert (=> tb!236609 (= result!286602 (and (inv!56110 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) (value!207282 (h!47311 suffixTokens!72)))) e!2440432))))

(assert (= tb!236609 b!3943881))

(declare-fun m!4512533 () Bool)

(assert (=> b!3943881 m!4512533))

(declare-fun m!4512535 () Bool)

(assert (=> tb!236609 m!4512535))

(assert (=> b!3943875 t!327359))

(declare-fun b_and!301583 () Bool)

(assert (= b_and!301561 (and (=> t!327359 result!286602) b_and!301583)))

(declare-fun tb!236611 () Bool)

(declare-fun t!327361 () Bool)

(assert (=> (and b!3943797 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72))))) t!327361) tb!236611))

(declare-fun result!286606 () Bool)

(assert (= result!286606 result!286602))

(assert (=> b!3943875 t!327361))

(declare-fun b_and!301585 () Bool)

(assert (= b_and!301565 (and (=> t!327361 result!286606) b_and!301585)))

(declare-fun t!327363 () Bool)

(declare-fun tb!236613 () Bool)

(assert (=> (and b!3943798 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72))))) t!327363) tb!236613))

(declare-fun result!286608 () Bool)

(assert (= result!286608 result!286602))

(assert (=> b!3943875 t!327363))

(declare-fun b_and!301587 () Bool)

(assert (= b_and!301569 (and (=> t!327363 result!286608) b_and!301587)))

(declare-fun m!4512537 () Bool)

(assert (=> d!1169778 m!4512537))

(declare-fun m!4512539 () Bool)

(assert (=> b!3943875 m!4512539))

(assert (=> b!3943875 m!4512539))

(declare-fun m!4512541 () Bool)

(assert (=> b!3943875 m!4512541))

(declare-fun m!4512543 () Bool)

(assert (=> b!3943876 m!4512543))

(assert (=> b!3943799 d!1169778))

(declare-fun d!1169780 () Bool)

(declare-fun c!685083 () Bool)

(assert (=> d!1169780 (= c!685083 (is-IntegerValue!20337 (value!207282 (h!47311 prefixTokens!80))))))

(declare-fun e!2440439 () Bool)

(assert (=> d!1169780 (= (inv!21 (value!207282 (h!47311 prefixTokens!80))) e!2440439)))

(declare-fun b!3943892 () Bool)

(declare-fun e!2440441 () Bool)

(declare-fun inv!15 (TokenValue!6779) Bool)

(assert (=> b!3943892 (= e!2440441 (inv!15 (value!207282 (h!47311 prefixTokens!80))))))

(declare-fun b!3943893 () Bool)

(declare-fun e!2440440 () Bool)

(assert (=> b!3943893 (= e!2440439 e!2440440)))

(declare-fun c!685082 () Bool)

(assert (=> b!3943893 (= c!685082 (is-IntegerValue!20338 (value!207282 (h!47311 prefixTokens!80))))))

(declare-fun b!3943894 () Bool)

(declare-fun inv!17 (TokenValue!6779) Bool)

(assert (=> b!3943894 (= e!2440440 (inv!17 (value!207282 (h!47311 prefixTokens!80))))))

(declare-fun b!3943895 () Bool)

(declare-fun inv!16 (TokenValue!6779) Bool)

(assert (=> b!3943895 (= e!2440439 (inv!16 (value!207282 (h!47311 prefixTokens!80))))))

(declare-fun b!3943896 () Bool)

(declare-fun res!1595930 () Bool)

(assert (=> b!3943896 (=> res!1595930 e!2440441)))

(assert (=> b!3943896 (= res!1595930 (not (is-IntegerValue!20339 (value!207282 (h!47311 prefixTokens!80)))))))

(assert (=> b!3943896 (= e!2440440 e!2440441)))

(assert (= (and d!1169780 c!685083) b!3943895))

(assert (= (and d!1169780 (not c!685083)) b!3943893))

(assert (= (and b!3943893 c!685082) b!3943894))

(assert (= (and b!3943893 (not c!685082)) b!3943896))

(assert (= (and b!3943896 (not res!1595930)) b!3943892))

(declare-fun m!4512545 () Bool)

(assert (=> b!3943892 m!4512545))

(declare-fun m!4512547 () Bool)

(assert (=> b!3943894 m!4512547))

(declare-fun m!4512549 () Bool)

(assert (=> b!3943895 m!4512549))

(assert (=> b!3943779 d!1169780))

(declare-fun d!1169782 () Bool)

(assert (=> d!1169782 (= (isEmpty!24999 prefixTokens!80) (is-Nil!41891 prefixTokens!80))))

(assert (=> b!3943800 d!1169782))

(declare-fun d!1169784 () Bool)

(assert (=> d!1169784 (= (inv!56102 (tag!7409 (h!47312 rules!2768))) (= (mod (str.len (value!207281 (tag!7409 (h!47312 rules!2768)))) 2) 0))))

(assert (=> b!3943789 d!1169784))

(declare-fun d!1169786 () Bool)

(declare-fun res!1595933 () Bool)

(declare-fun e!2440444 () Bool)

(assert (=> d!1169786 (=> (not res!1595933) (not e!2440444))))

(declare-fun semiInverseModEq!2820 (Int Int) Bool)

(assert (=> d!1169786 (= res!1595933 (semiInverseModEq!2820 (toChars!8876 (transformation!6549 (h!47312 rules!2768))) (toValue!9017 (transformation!6549 (h!47312 rules!2768)))))))

(assert (=> d!1169786 (= (inv!56106 (transformation!6549 (h!47312 rules!2768))) e!2440444)))

(declare-fun b!3943899 () Bool)

(declare-fun equivClasses!2719 (Int Int) Bool)

(assert (=> b!3943899 (= e!2440444 (equivClasses!2719 (toChars!8876 (transformation!6549 (h!47312 rules!2768))) (toValue!9017 (transformation!6549 (h!47312 rules!2768)))))))

(assert (= (and d!1169786 res!1595933) b!3943899))

(declare-fun m!4512551 () Bool)

(assert (=> d!1169786 m!4512551))

(declare-fun m!4512553 () Bool)

(assert (=> b!3943899 m!4512553))

(assert (=> b!3943789 d!1169786))

(declare-fun d!1169788 () Bool)

(declare-fun res!1595934 () Bool)

(declare-fun e!2440445 () Bool)

(assert (=> d!1169788 (=> (not res!1595934) (not e!2440445))))

(assert (=> d!1169788 (= res!1595934 (not (isEmpty!24997 (originalCharacters!7149 (h!47311 prefixTokens!80)))))))

(assert (=> d!1169788 (= (inv!56105 (h!47311 prefixTokens!80)) e!2440445)))

(declare-fun b!3943900 () Bool)

(declare-fun res!1595935 () Bool)

(assert (=> b!3943900 (=> (not res!1595935) (not e!2440445))))

(assert (=> b!3943900 (= res!1595935 (= (originalCharacters!7149 (h!47311 prefixTokens!80)) (list!15557 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) (value!207282 (h!47311 prefixTokens!80))))))))

(declare-fun b!3943901 () Bool)

(assert (=> b!3943901 (= e!2440445 (= (size!31412 (h!47311 prefixTokens!80)) (size!31414 (originalCharacters!7149 (h!47311 prefixTokens!80)))))))

(assert (= (and d!1169788 res!1595934) b!3943900))

(assert (= (and b!3943900 res!1595935) b!3943901))

(declare-fun b_lambda!115337 () Bool)

(assert (=> (not b_lambda!115337) (not b!3943900)))

(declare-fun t!327365 () Bool)

(declare-fun tb!236615 () Bool)

(assert (=> (and b!3943796 (= (toChars!8876 (transformation!6549 (h!47312 rules!2768))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80))))) t!327365) tb!236615))

(declare-fun b!3943902 () Bool)

(declare-fun e!2440446 () Bool)

(declare-fun tp!1200576 () Bool)

(assert (=> b!3943902 (= e!2440446 (and (inv!56109 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) (value!207282 (h!47311 prefixTokens!80))))) tp!1200576))))

(declare-fun result!286610 () Bool)

(assert (=> tb!236615 (= result!286610 (and (inv!56110 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) (value!207282 (h!47311 prefixTokens!80)))) e!2440446))))

(assert (= tb!236615 b!3943902))

(declare-fun m!4512555 () Bool)

(assert (=> b!3943902 m!4512555))

(declare-fun m!4512557 () Bool)

(assert (=> tb!236615 m!4512557))

(assert (=> b!3943900 t!327365))

(declare-fun b_and!301589 () Bool)

(assert (= b_and!301583 (and (=> t!327365 result!286610) b_and!301589)))

(declare-fun t!327367 () Bool)

(declare-fun tb!236617 () Bool)

(assert (=> (and b!3943797 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80))))) t!327367) tb!236617))

(declare-fun result!286612 () Bool)

(assert (= result!286612 result!286610))

(assert (=> b!3943900 t!327367))

(declare-fun b_and!301591 () Bool)

(assert (= b_and!301585 (and (=> t!327367 result!286612) b_and!301591)))

(declare-fun t!327369 () Bool)

(declare-fun tb!236619 () Bool)

(assert (=> (and b!3943798 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80))))) t!327369) tb!236619))

(declare-fun result!286614 () Bool)

(assert (= result!286614 result!286610))

(assert (=> b!3943900 t!327369))

(declare-fun b_and!301593 () Bool)

(assert (= b_and!301587 (and (=> t!327369 result!286614) b_and!301593)))

(declare-fun m!4512559 () Bool)

(assert (=> d!1169788 m!4512559))

(declare-fun m!4512561 () Bool)

(assert (=> b!3943900 m!4512561))

(assert (=> b!3943900 m!4512561))

(declare-fun m!4512563 () Bool)

(assert (=> b!3943900 m!4512563))

(declare-fun m!4512565 () Bool)

(assert (=> b!3943901 m!4512565))

(assert (=> b!3943785 d!1169788))

(declare-fun d!1169790 () Bool)

(assert (=> d!1169790 (isPrefix!3638 lt!1379063 (++!10856 lt!1379063 (_2!23724 (v!39304 lt!1379059))))))

(declare-fun lt!1379092 () Unit!60431)

(declare-fun choose!23532 (List!42014 List!42014) Unit!60431)

(assert (=> d!1169790 (= lt!1379092 (choose!23532 lt!1379063 (_2!23724 (v!39304 lt!1379059))))))

(assert (=> d!1169790 (= (lemmaConcatTwoListThenFirstIsPrefix!2497 lt!1379063 (_2!23724 (v!39304 lt!1379059))) lt!1379092)))

(declare-fun bs!586771 () Bool)

(assert (= bs!586771 d!1169790))

(assert (=> bs!586771 m!4512439))

(assert (=> bs!586771 m!4512439))

(declare-fun m!4512567 () Bool)

(assert (=> bs!586771 m!4512567))

(declare-fun m!4512569 () Bool)

(assert (=> bs!586771 m!4512569))

(assert (=> b!3943786 d!1169790))

(declare-fun d!1169792 () Bool)

(declare-fun res!1595940 () Bool)

(declare-fun e!2440449 () Bool)

(assert (=> d!1169792 (=> (not res!1595940) (not e!2440449))))

(declare-fun validRegex!5215 (Regex!11454) Bool)

(assert (=> d!1169792 (= res!1595940 (validRegex!5215 (regex!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059))))))))

(assert (=> d!1169792 (= (ruleValid!2491 thiss!20629 (rule!9511 (_1!23724 (v!39304 lt!1379059)))) e!2440449)))

(declare-fun b!3943907 () Bool)

(declare-fun res!1595941 () Bool)

(assert (=> b!3943907 (=> (not res!1595941) (not e!2440449))))

(declare-fun nullable!4016 (Regex!11454) Bool)

(assert (=> b!3943907 (= res!1595941 (not (nullable!4016 (regex!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059)))))))))

(declare-fun b!3943908 () Bool)

(assert (=> b!3943908 (= e!2440449 (not (= (tag!7409 (rule!9511 (_1!23724 (v!39304 lt!1379059)))) (String!47616 ""))))))

(assert (= (and d!1169792 res!1595940) b!3943907))

(assert (= (and b!3943907 res!1595941) b!3943908))

(declare-fun m!4512571 () Bool)

(assert (=> d!1169792 m!4512571))

(declare-fun m!4512573 () Bool)

(assert (=> b!3943907 m!4512573))

(assert (=> b!3943786 d!1169792))

(declare-fun d!1169796 () Bool)

(declare-fun lt!1379095 () List!42014)

(assert (=> d!1169796 (= (++!10856 lt!1379063 lt!1379095) lt!1379060)))

(declare-fun e!2440452 () List!42014)

(assert (=> d!1169796 (= lt!1379095 e!2440452)))

(declare-fun c!685086 () Bool)

(assert (=> d!1169796 (= c!685086 (is-Cons!41890 lt!1379063))))

(assert (=> d!1169796 (>= (size!31414 lt!1379060) (size!31414 lt!1379063))))

(assert (=> d!1169796 (= (getSuffix!2089 lt!1379060 lt!1379063) lt!1379095)))

(declare-fun b!3943913 () Bool)

(declare-fun tail!6104 (List!42014) List!42014)

(assert (=> b!3943913 (= e!2440452 (getSuffix!2089 (tail!6104 lt!1379060) (t!327351 lt!1379063)))))

(declare-fun b!3943914 () Bool)

(assert (=> b!3943914 (= e!2440452 lt!1379060)))

(assert (= (and d!1169796 c!685086) b!3943913))

(assert (= (and d!1169796 (not c!685086)) b!3943914))

(declare-fun m!4512575 () Bool)

(assert (=> d!1169796 m!4512575))

(declare-fun m!4512577 () Bool)

(assert (=> d!1169796 m!4512577))

(declare-fun m!4512579 () Bool)

(assert (=> d!1169796 m!4512579))

(declare-fun m!4512581 () Bool)

(assert (=> b!3943913 m!4512581))

(assert (=> b!3943913 m!4512581))

(declare-fun m!4512583 () Bool)

(assert (=> b!3943913 m!4512583))

(assert (=> b!3943786 d!1169796))

(declare-fun d!1169798 () Bool)

(declare-fun list!15559 (Conc!12760) List!42014)

(assert (=> d!1169798 (= (list!15557 (charsOf!4367 (_1!23724 (v!39304 lt!1379059)))) (list!15559 (c!685074 (charsOf!4367 (_1!23724 (v!39304 lt!1379059))))))))

(declare-fun bs!586772 () Bool)

(assert (= bs!586772 d!1169798))

(declare-fun m!4512585 () Bool)

(assert (=> bs!586772 m!4512585))

(assert (=> b!3943786 d!1169798))

(declare-fun d!1169800 () Bool)

(declare-fun e!2440460 () Bool)

(assert (=> d!1169800 e!2440460))

(declare-fun res!1595953 () Bool)

(assert (=> d!1169800 (=> res!1595953 e!2440460)))

(declare-fun lt!1379098 () Bool)

(assert (=> d!1169800 (= res!1595953 (not lt!1379098))))

(declare-fun e!2440459 () Bool)

(assert (=> d!1169800 (= lt!1379098 e!2440459)))

(declare-fun res!1595951 () Bool)

(assert (=> d!1169800 (=> res!1595951 e!2440459)))

(assert (=> d!1169800 (= res!1595951 (is-Nil!41890 lt!1379063))))

(assert (=> d!1169800 (= (isPrefix!3638 lt!1379063 lt!1379060) lt!1379098)))

(declare-fun b!3943923 () Bool)

(declare-fun e!2440461 () Bool)

(assert (=> b!3943923 (= e!2440459 e!2440461)))

(declare-fun res!1595952 () Bool)

(assert (=> b!3943923 (=> (not res!1595952) (not e!2440461))))

(assert (=> b!3943923 (= res!1595952 (not (is-Nil!41890 lt!1379060)))))

(declare-fun b!3943924 () Bool)

(declare-fun res!1595950 () Bool)

(assert (=> b!3943924 (=> (not res!1595950) (not e!2440461))))

(declare-fun head!8378 (List!42014) C!23094)

(assert (=> b!3943924 (= res!1595950 (= (head!8378 lt!1379063) (head!8378 lt!1379060)))))

(declare-fun b!3943925 () Bool)

(assert (=> b!3943925 (= e!2440461 (isPrefix!3638 (tail!6104 lt!1379063) (tail!6104 lt!1379060)))))

(declare-fun b!3943926 () Bool)

(assert (=> b!3943926 (= e!2440460 (>= (size!31414 lt!1379060) (size!31414 lt!1379063)))))

(assert (= (and d!1169800 (not res!1595951)) b!3943923))

(assert (= (and b!3943923 res!1595952) b!3943924))

(assert (= (and b!3943924 res!1595950) b!3943925))

(assert (= (and d!1169800 (not res!1595953)) b!3943926))

(declare-fun m!4512587 () Bool)

(assert (=> b!3943924 m!4512587))

(declare-fun m!4512589 () Bool)

(assert (=> b!3943924 m!4512589))

(declare-fun m!4512591 () Bool)

(assert (=> b!3943925 m!4512591))

(assert (=> b!3943925 m!4512581))

(assert (=> b!3943925 m!4512591))

(assert (=> b!3943925 m!4512581))

(declare-fun m!4512593 () Bool)

(assert (=> b!3943925 m!4512593))

(assert (=> b!3943926 m!4512577))

(assert (=> b!3943926 m!4512579))

(assert (=> b!3943786 d!1169800))

(declare-fun d!1169802 () Bool)

(assert (=> d!1169802 (ruleValid!2491 thiss!20629 (rule!9511 (_1!23724 (v!39304 lt!1379059))))))

(declare-fun lt!1379101 () Unit!60431)

(declare-fun choose!23533 (LexerInterface!6138 Rule!12898 List!42016) Unit!60431)

(assert (=> d!1169802 (= lt!1379101 (choose!23533 thiss!20629 (rule!9511 (_1!23724 (v!39304 lt!1379059))) rules!2768))))

(declare-fun contains!8387 (List!42016 Rule!12898) Bool)

(assert (=> d!1169802 (contains!8387 rules!2768 (rule!9511 (_1!23724 (v!39304 lt!1379059))))))

(assert (=> d!1169802 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1567 thiss!20629 (rule!9511 (_1!23724 (v!39304 lt!1379059))) rules!2768) lt!1379101)))

(declare-fun bs!586773 () Bool)

(assert (= bs!586773 d!1169802))

(assert (=> bs!586773 m!4512443))

(declare-fun m!4512595 () Bool)

(assert (=> bs!586773 m!4512595))

(declare-fun m!4512597 () Bool)

(assert (=> bs!586773 m!4512597))

(assert (=> b!3943786 d!1169802))

(declare-fun b!3943935 () Bool)

(declare-fun e!2440467 () List!42014)

(assert (=> b!3943935 (= e!2440467 (_2!23724 (v!39304 lt!1379059)))))

(declare-fun d!1169804 () Bool)

(declare-fun e!2440466 () Bool)

(assert (=> d!1169804 e!2440466))

(declare-fun res!1595959 () Bool)

(assert (=> d!1169804 (=> (not res!1595959) (not e!2440466))))

(declare-fun lt!1379104 () List!42014)

(declare-fun content!6334 (List!42014) (Set C!23094))

(assert (=> d!1169804 (= res!1595959 (= (content!6334 lt!1379104) (set.union (content!6334 lt!1379063) (content!6334 (_2!23724 (v!39304 lt!1379059))))))))

(assert (=> d!1169804 (= lt!1379104 e!2440467)))

(declare-fun c!685089 () Bool)

(assert (=> d!1169804 (= c!685089 (is-Nil!41890 lt!1379063))))

(assert (=> d!1169804 (= (++!10856 lt!1379063 (_2!23724 (v!39304 lt!1379059))) lt!1379104)))

(declare-fun b!3943936 () Bool)

(assert (=> b!3943936 (= e!2440467 (Cons!41890 (h!47310 lt!1379063) (++!10856 (t!327351 lt!1379063) (_2!23724 (v!39304 lt!1379059)))))))

(declare-fun b!3943937 () Bool)

(declare-fun res!1595958 () Bool)

(assert (=> b!3943937 (=> (not res!1595958) (not e!2440466))))

(assert (=> b!3943937 (= res!1595958 (= (size!31414 lt!1379104) (+ (size!31414 lt!1379063) (size!31414 (_2!23724 (v!39304 lt!1379059))))))))

(declare-fun b!3943938 () Bool)

(assert (=> b!3943938 (= e!2440466 (or (not (= (_2!23724 (v!39304 lt!1379059)) Nil!41890)) (= lt!1379104 lt!1379063)))))

(assert (= (and d!1169804 c!685089) b!3943935))

(assert (= (and d!1169804 (not c!685089)) b!3943936))

(assert (= (and d!1169804 res!1595959) b!3943937))

(assert (= (and b!3943937 res!1595958) b!3943938))

(declare-fun m!4512599 () Bool)

(assert (=> d!1169804 m!4512599))

(declare-fun m!4512601 () Bool)

(assert (=> d!1169804 m!4512601))

(declare-fun m!4512603 () Bool)

(assert (=> d!1169804 m!4512603))

(declare-fun m!4512605 () Bool)

(assert (=> b!3943936 m!4512605))

(declare-fun m!4512607 () Bool)

(assert (=> b!3943937 m!4512607))

(assert (=> b!3943937 m!4512579))

(declare-fun m!4512609 () Bool)

(assert (=> b!3943937 m!4512609))

(assert (=> b!3943786 d!1169804))

(declare-fun d!1169806 () Bool)

(declare-fun lt!1379107 () BalanceConc!25114)

(assert (=> d!1169806 (= (list!15557 lt!1379107) (originalCharacters!7149 (_1!23724 (v!39304 lt!1379059))))))

(assert (=> d!1169806 (= lt!1379107 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059))))) (value!207282 (_1!23724 (v!39304 lt!1379059)))))))

(assert (=> d!1169806 (= (charsOf!4367 (_1!23724 (v!39304 lt!1379059))) lt!1379107)))

(declare-fun b_lambda!115339 () Bool)

(assert (=> (not b_lambda!115339) (not d!1169806)))

(declare-fun t!327371 () Bool)

(declare-fun tb!236621 () Bool)

(assert (=> (and b!3943796 (= (toChars!8876 (transformation!6549 (h!47312 rules!2768))) (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059)))))) t!327371) tb!236621))

(declare-fun b!3943939 () Bool)

(declare-fun e!2440468 () Bool)

(declare-fun tp!1200577 () Bool)

(assert (=> b!3943939 (= e!2440468 (and (inv!56109 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059))))) (value!207282 (_1!23724 (v!39304 lt!1379059)))))) tp!1200577))))

(declare-fun result!286616 () Bool)

(assert (=> tb!236621 (= result!286616 (and (inv!56110 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059))))) (value!207282 (_1!23724 (v!39304 lt!1379059))))) e!2440468))))

(assert (= tb!236621 b!3943939))

(declare-fun m!4512611 () Bool)

(assert (=> b!3943939 m!4512611))

(declare-fun m!4512613 () Bool)

(assert (=> tb!236621 m!4512613))

(assert (=> d!1169806 t!327371))

(declare-fun b_and!301595 () Bool)

(assert (= b_and!301589 (and (=> t!327371 result!286616) b_and!301595)))

(declare-fun t!327373 () Bool)

(declare-fun tb!236623 () Bool)

(assert (=> (and b!3943797 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059)))))) t!327373) tb!236623))

(declare-fun result!286618 () Bool)

(assert (= result!286618 result!286616))

(assert (=> d!1169806 t!327373))

(declare-fun b_and!301597 () Bool)

(assert (= b_and!301591 (and (=> t!327373 result!286618) b_and!301597)))

(declare-fun tb!236625 () Bool)

(declare-fun t!327375 () Bool)

(assert (=> (and b!3943798 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059)))))) t!327375) tb!236625))

(declare-fun result!286620 () Bool)

(assert (= result!286620 result!286616))

(assert (=> d!1169806 t!327375))

(declare-fun b_and!301599 () Bool)

(assert (= b_and!301593 (and (=> t!327375 result!286620) b_and!301599)))

(declare-fun m!4512615 () Bool)

(assert (=> d!1169806 m!4512615))

(declare-fun m!4512617 () Bool)

(assert (=> d!1169806 m!4512617))

(assert (=> b!3943786 d!1169806))

(declare-fun d!1169808 () Bool)

(assert (=> d!1169808 (= (size!31412 (_1!23724 (v!39304 lt!1379059))) (size!31414 (originalCharacters!7149 (_1!23724 (v!39304 lt!1379059)))))))

(declare-fun Unit!60436 () Unit!60431)

(assert (=> d!1169808 (= (lemmaCharactersSize!1202 (_1!23724 (v!39304 lt!1379059))) Unit!60436)))

(declare-fun bs!586774 () Bool)

(assert (= bs!586774 d!1169808))

(declare-fun m!4512619 () Bool)

(assert (=> bs!586774 m!4512619))

(assert (=> b!3943786 d!1169808))

(declare-fun d!1169810 () Bool)

(declare-fun e!2440470 () Bool)

(assert (=> d!1169810 e!2440470))

(declare-fun res!1595963 () Bool)

(assert (=> d!1169810 (=> res!1595963 e!2440470)))

(declare-fun lt!1379108 () Bool)

(assert (=> d!1169810 (= res!1595963 (not lt!1379108))))

(declare-fun e!2440469 () Bool)

(assert (=> d!1169810 (= lt!1379108 e!2440469)))

(declare-fun res!1595961 () Bool)

(assert (=> d!1169810 (=> res!1595961 e!2440469)))

(assert (=> d!1169810 (= res!1595961 (is-Nil!41890 lt!1379063))))

(assert (=> d!1169810 (= (isPrefix!3638 lt!1379063 lt!1379064) lt!1379108)))

(declare-fun b!3943940 () Bool)

(declare-fun e!2440471 () Bool)

(assert (=> b!3943940 (= e!2440469 e!2440471)))

(declare-fun res!1595962 () Bool)

(assert (=> b!3943940 (=> (not res!1595962) (not e!2440471))))

(assert (=> b!3943940 (= res!1595962 (not (is-Nil!41890 lt!1379064)))))

(declare-fun b!3943941 () Bool)

(declare-fun res!1595960 () Bool)

(assert (=> b!3943941 (=> (not res!1595960) (not e!2440471))))

(assert (=> b!3943941 (= res!1595960 (= (head!8378 lt!1379063) (head!8378 lt!1379064)))))

(declare-fun b!3943942 () Bool)

(assert (=> b!3943942 (= e!2440471 (isPrefix!3638 (tail!6104 lt!1379063) (tail!6104 lt!1379064)))))

(declare-fun b!3943943 () Bool)

(assert (=> b!3943943 (= e!2440470 (>= (size!31414 lt!1379064) (size!31414 lt!1379063)))))

(assert (= (and d!1169810 (not res!1595961)) b!3943940))

(assert (= (and b!3943940 res!1595962) b!3943941))

(assert (= (and b!3943941 res!1595960) b!3943942))

(assert (= (and d!1169810 (not res!1595963)) b!3943943))

(assert (=> b!3943941 m!4512587))

(declare-fun m!4512621 () Bool)

(assert (=> b!3943941 m!4512621))

(assert (=> b!3943942 m!4512591))

(declare-fun m!4512623 () Bool)

(assert (=> b!3943942 m!4512623))

(assert (=> b!3943942 m!4512591))

(assert (=> b!3943942 m!4512623))

(declare-fun m!4512625 () Bool)

(assert (=> b!3943942 m!4512625))

(declare-fun m!4512627 () Bool)

(assert (=> b!3943943 m!4512627))

(assert (=> b!3943943 m!4512579))

(assert (=> b!3943786 d!1169810))

(declare-fun b!3943964 () Bool)

(declare-fun e!2440485 () Bool)

(declare-fun e!2440484 () Bool)

(assert (=> b!3943964 (= e!2440485 e!2440484)))

(declare-fun res!1595968 () Bool)

(declare-fun lt!1379123 () tuple2!41178)

(assert (=> b!3943964 (= res!1595968 (< (size!31414 (_2!23723 lt!1379123)) (size!31414 lt!1379060)))))

(assert (=> b!3943964 (=> (not res!1595968) (not e!2440484))))

(declare-fun b!3943965 () Bool)

(declare-fun e!2440486 () tuple2!41178)

(assert (=> b!3943965 (= e!2440486 (tuple2!41179 Nil!41891 lt!1379060))))

(declare-fun d!1169812 () Bool)

(assert (=> d!1169812 e!2440485))

(declare-fun c!685099 () Bool)

(declare-fun size!31415 (List!42015) Int)

(assert (=> d!1169812 (= c!685099 (> (size!31415 (_1!23723 lt!1379123)) 0))))

(assert (=> d!1169812 (= lt!1379123 e!2440486)))

(declare-fun c!685098 () Bool)

(declare-fun lt!1379121 () Option!8969)

(assert (=> d!1169812 (= c!685098 (is-Some!8968 lt!1379121))))

(assert (=> d!1169812 (= lt!1379121 (maxPrefix!3442 thiss!20629 rules!2768 lt!1379060))))

(assert (=> d!1169812 (= (lexList!1906 thiss!20629 rules!2768 lt!1379060) lt!1379123)))

(declare-fun b!3943966 () Bool)

(assert (=> b!3943966 (= e!2440485 (= (_2!23723 lt!1379123) lt!1379060))))

(declare-fun b!3943967 () Bool)

(declare-fun lt!1379122 () tuple2!41178)

(assert (=> b!3943967 (= e!2440486 (tuple2!41179 (Cons!41891 (_1!23724 (v!39304 lt!1379121)) (_1!23723 lt!1379122)) (_2!23723 lt!1379122)))))

(assert (=> b!3943967 (= lt!1379122 (lexList!1906 thiss!20629 rules!2768 (_2!23724 (v!39304 lt!1379121))))))

(declare-fun b!3943968 () Bool)

(assert (=> b!3943968 (= e!2440484 (not (isEmpty!24999 (_1!23723 lt!1379123))))))

(assert (= (and d!1169812 c!685098) b!3943967))

(assert (= (and d!1169812 (not c!685098)) b!3943965))

(assert (= (and d!1169812 c!685099) b!3943964))

(assert (= (and d!1169812 (not c!685099)) b!3943966))

(assert (= (and b!3943964 res!1595968) b!3943968))

(declare-fun m!4512629 () Bool)

(assert (=> b!3943964 m!4512629))

(assert (=> b!3943964 m!4512577))

(declare-fun m!4512631 () Bool)

(assert (=> d!1169812 m!4512631))

(assert (=> d!1169812 m!4512457))

(declare-fun m!4512633 () Bool)

(assert (=> b!3943967 m!4512633))

(declare-fun m!4512635 () Bool)

(assert (=> b!3943968 m!4512635))

(assert (=> b!3943783 d!1169812))

(declare-fun e!2440495 () Bool)

(declare-fun b!3943985 () Bool)

(declare-fun lt!1379129 () List!42015)

(assert (=> b!3943985 (= e!2440495 (or (not (= suffixTokens!72 Nil!41891)) (= lt!1379129 prefixTokens!80)))))

(declare-fun d!1169814 () Bool)

(assert (=> d!1169814 e!2440495))

(declare-fun res!1595974 () Bool)

(assert (=> d!1169814 (=> (not res!1595974) (not e!2440495))))

(declare-fun content!6335 (List!42015) (Set Token!12236))

(assert (=> d!1169814 (= res!1595974 (= (content!6335 lt!1379129) (set.union (content!6335 prefixTokens!80) (content!6335 suffixTokens!72))))))

(declare-fun e!2440494 () List!42015)

(assert (=> d!1169814 (= lt!1379129 e!2440494)))

(declare-fun c!685104 () Bool)

(assert (=> d!1169814 (= c!685104 (is-Nil!41891 prefixTokens!80))))

(assert (=> d!1169814 (= (++!10855 prefixTokens!80 suffixTokens!72) lt!1379129)))

(declare-fun b!3943982 () Bool)

(assert (=> b!3943982 (= e!2440494 suffixTokens!72)))

(declare-fun b!3943983 () Bool)

(assert (=> b!3943983 (= e!2440494 (Cons!41891 (h!47311 prefixTokens!80) (++!10855 (t!327352 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3943984 () Bool)

(declare-fun res!1595975 () Bool)

(assert (=> b!3943984 (=> (not res!1595975) (not e!2440495))))

(assert (=> b!3943984 (= res!1595975 (= (size!31415 lt!1379129) (+ (size!31415 prefixTokens!80) (size!31415 suffixTokens!72))))))

(assert (= (and d!1169814 c!685104) b!3943982))

(assert (= (and d!1169814 (not c!685104)) b!3943983))

(assert (= (and d!1169814 res!1595974) b!3943984))

(assert (= (and b!3943984 res!1595975) b!3943985))

(declare-fun m!4512647 () Bool)

(assert (=> d!1169814 m!4512647))

(declare-fun m!4512649 () Bool)

(assert (=> d!1169814 m!4512649))

(declare-fun m!4512651 () Bool)

(assert (=> d!1169814 m!4512651))

(declare-fun m!4512653 () Bool)

(assert (=> b!3943983 m!4512653))

(declare-fun m!4512655 () Bool)

(assert (=> b!3943984 m!4512655))

(declare-fun m!4512657 () Bool)

(assert (=> b!3943984 m!4512657))

(declare-fun m!4512659 () Bool)

(assert (=> b!3943984 m!4512659))

(assert (=> b!3943783 d!1169814))

(declare-fun b!3943986 () Bool)

(declare-fun e!2440497 () List!42014)

(assert (=> b!3943986 (= e!2440497 suffix!1176)))

(declare-fun d!1169818 () Bool)

(declare-fun e!2440496 () Bool)

(assert (=> d!1169818 e!2440496))

(declare-fun res!1595977 () Bool)

(assert (=> d!1169818 (=> (not res!1595977) (not e!2440496))))

(declare-fun lt!1379130 () List!42014)

(assert (=> d!1169818 (= res!1595977 (= (content!6334 lt!1379130) (set.union (content!6334 prefix!426) (content!6334 suffix!1176))))))

(assert (=> d!1169818 (= lt!1379130 e!2440497)))

(declare-fun c!685105 () Bool)

(assert (=> d!1169818 (= c!685105 (is-Nil!41890 prefix!426))))

(assert (=> d!1169818 (= (++!10856 prefix!426 suffix!1176) lt!1379130)))

(declare-fun b!3943987 () Bool)

(assert (=> b!3943987 (= e!2440497 (Cons!41890 (h!47310 prefix!426) (++!10856 (t!327351 prefix!426) suffix!1176)))))

(declare-fun b!3943988 () Bool)

(declare-fun res!1595976 () Bool)

(assert (=> b!3943988 (=> (not res!1595976) (not e!2440496))))

(assert (=> b!3943988 (= res!1595976 (= (size!31414 lt!1379130) (+ (size!31414 prefix!426) (size!31414 suffix!1176))))))

(declare-fun b!3943989 () Bool)

(assert (=> b!3943989 (= e!2440496 (or (not (= suffix!1176 Nil!41890)) (= lt!1379130 prefix!426)))))

(assert (= (and d!1169818 c!685105) b!3943986))

(assert (= (and d!1169818 (not c!685105)) b!3943987))

(assert (= (and d!1169818 res!1595977) b!3943988))

(assert (= (and b!3943988 res!1595976) b!3943989))

(declare-fun m!4512661 () Bool)

(assert (=> d!1169818 m!4512661))

(declare-fun m!4512663 () Bool)

(assert (=> d!1169818 m!4512663))

(declare-fun m!4512665 () Bool)

(assert (=> d!1169818 m!4512665))

(declare-fun m!4512667 () Bool)

(assert (=> b!3943987 m!4512667))

(declare-fun m!4512669 () Bool)

(assert (=> b!3943988 m!4512669))

(declare-fun m!4512671 () Bool)

(assert (=> b!3943988 m!4512671))

(declare-fun m!4512673 () Bool)

(assert (=> b!3943988 m!4512673))

(assert (=> b!3943783 d!1169818))

(declare-fun d!1169820 () Bool)

(assert (=> d!1169820 (= (inv!56102 (tag!7409 (rule!9511 (h!47311 prefixTokens!80)))) (= (mod (str.len (value!207281 (tag!7409 (rule!9511 (h!47311 prefixTokens!80))))) 2) 0))))

(assert (=> b!3943793 d!1169820))

(declare-fun d!1169822 () Bool)

(declare-fun res!1595978 () Bool)

(declare-fun e!2440498 () Bool)

(assert (=> d!1169822 (=> (not res!1595978) (not e!2440498))))

(assert (=> d!1169822 (= res!1595978 (semiInverseModEq!2820 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) (toValue!9017 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80))))))))

(assert (=> d!1169822 (= (inv!56106 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) e!2440498)))

(declare-fun b!3943990 () Bool)

(assert (=> b!3943990 (= e!2440498 (equivClasses!2719 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) (toValue!9017 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80))))))))

(assert (= (and d!1169822 res!1595978) b!3943990))

(declare-fun m!4512675 () Bool)

(assert (=> d!1169822 m!4512675))

(declare-fun m!4512677 () Bool)

(assert (=> b!3943990 m!4512677))

(assert (=> b!3943793 d!1169822))

(declare-fun d!1169824 () Bool)

(declare-fun c!685107 () Bool)

(assert (=> d!1169824 (= c!685107 (is-IntegerValue!20337 (value!207282 (h!47311 suffixTokens!72))))))

(declare-fun e!2440499 () Bool)

(assert (=> d!1169824 (= (inv!21 (value!207282 (h!47311 suffixTokens!72))) e!2440499)))

(declare-fun b!3943991 () Bool)

(declare-fun e!2440501 () Bool)

(assert (=> b!3943991 (= e!2440501 (inv!15 (value!207282 (h!47311 suffixTokens!72))))))

(declare-fun b!3943992 () Bool)

(declare-fun e!2440500 () Bool)

(assert (=> b!3943992 (= e!2440499 e!2440500)))

(declare-fun c!685106 () Bool)

(assert (=> b!3943992 (= c!685106 (is-IntegerValue!20338 (value!207282 (h!47311 suffixTokens!72))))))

(declare-fun b!3943993 () Bool)

(assert (=> b!3943993 (= e!2440500 (inv!17 (value!207282 (h!47311 suffixTokens!72))))))

(declare-fun b!3943994 () Bool)

(assert (=> b!3943994 (= e!2440499 (inv!16 (value!207282 (h!47311 suffixTokens!72))))))

(declare-fun b!3943995 () Bool)

(declare-fun res!1595979 () Bool)

(assert (=> b!3943995 (=> res!1595979 e!2440501)))

(assert (=> b!3943995 (= res!1595979 (not (is-IntegerValue!20339 (value!207282 (h!47311 suffixTokens!72)))))))

(assert (=> b!3943995 (= e!2440500 e!2440501)))

(assert (= (and d!1169824 c!685107) b!3943994))

(assert (= (and d!1169824 (not c!685107)) b!3943992))

(assert (= (and b!3943992 c!685106) b!3943993))

(assert (= (and b!3943992 (not c!685106)) b!3943995))

(assert (= (and b!3943995 (not res!1595979)) b!3943991))

(declare-fun m!4512679 () Bool)

(assert (=> b!3943991 m!4512679))

(declare-fun m!4512681 () Bool)

(assert (=> b!3943993 m!4512681))

(declare-fun m!4512683 () Bool)

(assert (=> b!3943994 m!4512683))

(assert (=> b!3943782 d!1169824))

(declare-fun d!1169826 () Bool)

(assert (=> d!1169826 (= (inv!56102 (tag!7409 (rule!9511 (h!47311 suffixTokens!72)))) (= (mod (str.len (value!207281 (tag!7409 (rule!9511 (h!47311 suffixTokens!72))))) 2) 0))))

(assert (=> b!3943795 d!1169826))

(declare-fun d!1169828 () Bool)

(declare-fun res!1595980 () Bool)

(declare-fun e!2440502 () Bool)

(assert (=> d!1169828 (=> (not res!1595980) (not e!2440502))))

(assert (=> d!1169828 (= res!1595980 (semiInverseModEq!2820 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) (toValue!9017 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72))))))))

(assert (=> d!1169828 (= (inv!56106 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) e!2440502)))

(declare-fun b!3943996 () Bool)

(assert (=> b!3943996 (= e!2440502 (equivClasses!2719 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) (toValue!9017 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72))))))))

(assert (= (and d!1169828 res!1595980) b!3943996))

(declare-fun m!4512685 () Bool)

(assert (=> d!1169828 m!4512685))

(declare-fun m!4512687 () Bool)

(assert (=> b!3943996 m!4512687))

(assert (=> b!3943795 d!1169828))

(declare-fun d!1169830 () Bool)

(assert (=> d!1169830 (= (isEmpty!24998 rules!2768) (is-Nil!41892 rules!2768))))

(assert (=> b!3943794 d!1169830))

(declare-fun d!1169832 () Bool)

(declare-fun res!1595983 () Bool)

(declare-fun e!2440507 () Bool)

(assert (=> d!1169832 (=> (not res!1595983) (not e!2440507))))

(declare-fun rulesValid!2554 (LexerInterface!6138 List!42016) Bool)

(assert (=> d!1169832 (= res!1595983 (rulesValid!2554 thiss!20629 rules!2768))))

(assert (=> d!1169832 (= (rulesInvariant!5481 thiss!20629 rules!2768) e!2440507)))

(declare-fun b!3944003 () Bool)

(declare-datatypes ((List!42021 0))(
  ( (Nil!41897) (Cons!41897 (h!47317 String!47615) (t!327430 List!42021)) )
))
(declare-fun noDuplicateTag!2555 (LexerInterface!6138 List!42016 List!42021) Bool)

(assert (=> b!3944003 (= e!2440507 (noDuplicateTag!2555 thiss!20629 rules!2768 Nil!41897))))

(assert (= (and d!1169832 res!1595983) b!3944003))

(declare-fun m!4512689 () Bool)

(assert (=> d!1169832 m!4512689))

(declare-fun m!4512691 () Bool)

(assert (=> b!3944003 m!4512691))

(assert (=> b!3943791 d!1169832))

(declare-fun b!3944051 () Bool)

(declare-fun res!1596020 () Bool)

(declare-fun e!2440530 () Bool)

(assert (=> b!3944051 (=> (not res!1596020) (not e!2440530))))

(declare-fun lt!1379150 () Option!8969)

(declare-fun get!13836 (Option!8969) tuple2!41180)

(assert (=> b!3944051 (= res!1596020 (= (list!15557 (charsOf!4367 (_1!23724 (get!13836 lt!1379150)))) (originalCharacters!7149 (_1!23724 (get!13836 lt!1379150)))))))

(declare-fun b!3944052 () Bool)

(declare-fun e!2440531 () Option!8969)

(declare-fun lt!1379149 () Option!8969)

(declare-fun lt!1379151 () Option!8969)

(assert (=> b!3944052 (= e!2440531 (ite (and (is-None!8968 lt!1379149) (is-None!8968 lt!1379151)) None!8968 (ite (is-None!8968 lt!1379151) lt!1379149 (ite (is-None!8968 lt!1379149) lt!1379151 (ite (>= (size!31412 (_1!23724 (v!39304 lt!1379149))) (size!31412 (_1!23724 (v!39304 lt!1379151)))) lt!1379149 lt!1379151)))))))

(declare-fun call!285105 () Option!8969)

(assert (=> b!3944052 (= lt!1379149 call!285105)))

(assert (=> b!3944052 (= lt!1379151 (maxPrefix!3442 thiss!20629 (t!327353 rules!2768) lt!1379060))))

(declare-fun bm!285100 () Bool)

(declare-fun maxPrefixOneRule!2504 (LexerInterface!6138 Rule!12898 List!42014) Option!8969)

(assert (=> bm!285100 (= call!285105 (maxPrefixOneRule!2504 thiss!20629 (h!47312 rules!2768) lt!1379060))))

(declare-fun b!3944053 () Bool)

(assert (=> b!3944053 (= e!2440531 call!285105)))

(declare-fun b!3944054 () Bool)

(assert (=> b!3944054 (= e!2440530 (contains!8387 rules!2768 (rule!9511 (_1!23724 (get!13836 lt!1379150)))))))

(declare-fun b!3944055 () Bool)

(declare-fun res!1596025 () Bool)

(assert (=> b!3944055 (=> (not res!1596025) (not e!2440530))))

(declare-fun matchR!5499 (Regex!11454 List!42014) Bool)

(assert (=> b!3944055 (= res!1596025 (matchR!5499 (regex!6549 (rule!9511 (_1!23724 (get!13836 lt!1379150)))) (list!15557 (charsOf!4367 (_1!23724 (get!13836 lt!1379150))))))))

(declare-fun b!3944056 () Bool)

(declare-fun res!1596021 () Bool)

(assert (=> b!3944056 (=> (not res!1596021) (not e!2440530))))

(assert (=> b!3944056 (= res!1596021 (< (size!31414 (_2!23724 (get!13836 lt!1379150))) (size!31414 lt!1379060)))))

(declare-fun b!3944057 () Bool)

(declare-fun e!2440532 () Bool)

(assert (=> b!3944057 (= e!2440532 e!2440530)))

(declare-fun res!1596022 () Bool)

(assert (=> b!3944057 (=> (not res!1596022) (not e!2440530))))

(declare-fun isDefined!6966 (Option!8969) Bool)

(assert (=> b!3944057 (= res!1596022 (isDefined!6966 lt!1379150))))

(declare-fun d!1169834 () Bool)

(assert (=> d!1169834 e!2440532))

(declare-fun res!1596019 () Bool)

(assert (=> d!1169834 (=> res!1596019 e!2440532)))

(declare-fun isEmpty!25003 (Option!8969) Bool)

(assert (=> d!1169834 (= res!1596019 (isEmpty!25003 lt!1379150))))

(assert (=> d!1169834 (= lt!1379150 e!2440531)))

(declare-fun c!685116 () Bool)

(assert (=> d!1169834 (= c!685116 (and (is-Cons!41892 rules!2768) (is-Nil!41892 (t!327353 rules!2768))))))

(declare-fun lt!1379148 () Unit!60431)

(declare-fun lt!1379147 () Unit!60431)

(assert (=> d!1169834 (= lt!1379148 lt!1379147)))

(assert (=> d!1169834 (isPrefix!3638 lt!1379060 lt!1379060)))

(declare-fun lemmaIsPrefixRefl!2297 (List!42014 List!42014) Unit!60431)

(assert (=> d!1169834 (= lt!1379147 (lemmaIsPrefixRefl!2297 lt!1379060 lt!1379060))))

(declare-fun rulesValidInductive!2367 (LexerInterface!6138 List!42016) Bool)

(assert (=> d!1169834 (rulesValidInductive!2367 thiss!20629 rules!2768)))

(assert (=> d!1169834 (= (maxPrefix!3442 thiss!20629 rules!2768 lt!1379060) lt!1379150)))

(declare-fun b!3944058 () Bool)

(declare-fun res!1596024 () Bool)

(assert (=> b!3944058 (=> (not res!1596024) (not e!2440530))))

(declare-fun apply!9780 (TokenValueInjection!12986 BalanceConc!25114) TokenValue!6779)

(declare-fun seqFromList!4808 (List!42014) BalanceConc!25114)

(assert (=> b!3944058 (= res!1596024 (= (value!207282 (_1!23724 (get!13836 lt!1379150))) (apply!9780 (transformation!6549 (rule!9511 (_1!23724 (get!13836 lt!1379150)))) (seqFromList!4808 (originalCharacters!7149 (_1!23724 (get!13836 lt!1379150)))))))))

(declare-fun b!3944059 () Bool)

(declare-fun res!1596023 () Bool)

(assert (=> b!3944059 (=> (not res!1596023) (not e!2440530))))

(assert (=> b!3944059 (= res!1596023 (= (++!10856 (list!15557 (charsOf!4367 (_1!23724 (get!13836 lt!1379150)))) (_2!23724 (get!13836 lt!1379150))) lt!1379060))))

(assert (= (and d!1169834 c!685116) b!3944053))

(assert (= (and d!1169834 (not c!685116)) b!3944052))

(assert (= (or b!3944053 b!3944052) bm!285100))

(assert (= (and d!1169834 (not res!1596019)) b!3944057))

(assert (= (and b!3944057 res!1596022) b!3944051))

(assert (= (and b!3944051 res!1596020) b!3944056))

(assert (= (and b!3944056 res!1596021) b!3944059))

(assert (= (and b!3944059 res!1596023) b!3944058))

(assert (= (and b!3944058 res!1596024) b!3944055))

(assert (= (and b!3944055 res!1596025) b!3944054))

(declare-fun m!4512725 () Bool)

(assert (=> b!3944052 m!4512725))

(declare-fun m!4512727 () Bool)

(assert (=> b!3944056 m!4512727))

(declare-fun m!4512729 () Bool)

(assert (=> b!3944056 m!4512729))

(assert (=> b!3944056 m!4512577))

(declare-fun m!4512731 () Bool)

(assert (=> d!1169834 m!4512731))

(declare-fun m!4512733 () Bool)

(assert (=> d!1169834 m!4512733))

(declare-fun m!4512735 () Bool)

(assert (=> d!1169834 m!4512735))

(declare-fun m!4512737 () Bool)

(assert (=> d!1169834 m!4512737))

(declare-fun m!4512739 () Bool)

(assert (=> b!3944057 m!4512739))

(assert (=> b!3944059 m!4512727))

(declare-fun m!4512741 () Bool)

(assert (=> b!3944059 m!4512741))

(assert (=> b!3944059 m!4512741))

(declare-fun m!4512743 () Bool)

(assert (=> b!3944059 m!4512743))

(assert (=> b!3944059 m!4512743))

(declare-fun m!4512745 () Bool)

(assert (=> b!3944059 m!4512745))

(assert (=> b!3944054 m!4512727))

(declare-fun m!4512749 () Bool)

(assert (=> b!3944054 m!4512749))

(declare-fun m!4512753 () Bool)

(assert (=> bm!285100 m!4512753))

(assert (=> b!3944055 m!4512727))

(assert (=> b!3944055 m!4512741))

(assert (=> b!3944055 m!4512741))

(assert (=> b!3944055 m!4512743))

(assert (=> b!3944055 m!4512743))

(declare-fun m!4512755 () Bool)

(assert (=> b!3944055 m!4512755))

(assert (=> b!3944051 m!4512727))

(assert (=> b!3944051 m!4512741))

(assert (=> b!3944051 m!4512741))

(assert (=> b!3944051 m!4512743))

(assert (=> b!3944058 m!4512727))

(declare-fun m!4512757 () Bool)

(assert (=> b!3944058 m!4512757))

(assert (=> b!3944058 m!4512757))

(declare-fun m!4512761 () Bool)

(assert (=> b!3944058 m!4512761))

(assert (=> b!3943801 d!1169834))

(declare-fun b!3944065 () Bool)

(declare-fun e!2440537 () Bool)

(declare-fun e!2440536 () Bool)

(assert (=> b!3944065 (= e!2440537 e!2440536)))

(declare-fun res!1596026 () Bool)

(declare-fun lt!1379154 () tuple2!41178)

(assert (=> b!3944065 (= res!1596026 (< (size!31414 (_2!23723 lt!1379154)) (size!31414 suffix!1176)))))

(assert (=> b!3944065 (=> (not res!1596026) (not e!2440536))))

(declare-fun b!3944066 () Bool)

(declare-fun e!2440538 () tuple2!41178)

(assert (=> b!3944066 (= e!2440538 (tuple2!41179 Nil!41891 suffix!1176))))

(declare-fun d!1169842 () Bool)

(assert (=> d!1169842 e!2440537))

(declare-fun c!685118 () Bool)

(assert (=> d!1169842 (= c!685118 (> (size!31415 (_1!23723 lt!1379154)) 0))))

(assert (=> d!1169842 (= lt!1379154 e!2440538)))

(declare-fun c!685117 () Bool)

(declare-fun lt!1379152 () Option!8969)

(assert (=> d!1169842 (= c!685117 (is-Some!8968 lt!1379152))))

(assert (=> d!1169842 (= lt!1379152 (maxPrefix!3442 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1169842 (= (lexList!1906 thiss!20629 rules!2768 suffix!1176) lt!1379154)))

(declare-fun b!3944067 () Bool)

(assert (=> b!3944067 (= e!2440537 (= (_2!23723 lt!1379154) suffix!1176))))

(declare-fun b!3944068 () Bool)

(declare-fun lt!1379153 () tuple2!41178)

(assert (=> b!3944068 (= e!2440538 (tuple2!41179 (Cons!41891 (_1!23724 (v!39304 lt!1379152)) (_1!23723 lt!1379153)) (_2!23723 lt!1379153)))))

(assert (=> b!3944068 (= lt!1379153 (lexList!1906 thiss!20629 rules!2768 (_2!23724 (v!39304 lt!1379152))))))

(declare-fun b!3944069 () Bool)

(assert (=> b!3944069 (= e!2440536 (not (isEmpty!24999 (_1!23723 lt!1379154))))))

(assert (= (and d!1169842 c!685117) b!3944068))

(assert (= (and d!1169842 (not c!685117)) b!3944066))

(assert (= (and d!1169842 c!685118) b!3944065))

(assert (= (and d!1169842 (not c!685118)) b!3944067))

(assert (= (and b!3944065 res!1596026) b!3944069))

(declare-fun m!4512769 () Bool)

(assert (=> b!3944065 m!4512769))

(assert (=> b!3944065 m!4512673))

(declare-fun m!4512771 () Bool)

(assert (=> d!1169842 m!4512771))

(declare-fun m!4512773 () Bool)

(assert (=> d!1169842 m!4512773))

(declare-fun m!4512775 () Bool)

(assert (=> b!3944068 m!4512775))

(declare-fun m!4512777 () Bool)

(assert (=> b!3944069 m!4512777))

(assert (=> b!3943790 d!1169842))

(declare-fun d!1169846 () Bool)

(assert (=> d!1169846 (= (isEmpty!24997 prefix!426) (is-Nil!41890 prefix!426))))

(assert (=> b!3943792 d!1169846))

(declare-fun b!3944083 () Bool)

(declare-fun b_free!108017 () Bool)

(declare-fun b_next!108721 () Bool)

(assert (=> b!3944083 (= b_free!108017 (not b_next!108721))))

(declare-fun tp!1200595 () Bool)

(declare-fun b_and!301607 () Bool)

(assert (=> b!3944083 (= tp!1200595 b_and!301607)))

(declare-fun b_free!108019 () Bool)

(declare-fun b_next!108723 () Bool)

(assert (=> b!3944083 (= b_free!108019 (not b_next!108723))))

(declare-fun t!327383 () Bool)

(declare-fun tb!236633 () Bool)

(assert (=> (and b!3944083 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72))))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72))))) t!327383) tb!236633))

(declare-fun result!286632 () Bool)

(assert (= result!286632 result!286602))

(assert (=> b!3943875 t!327383))

(declare-fun t!327385 () Bool)

(declare-fun tb!236635 () Bool)

(assert (=> (and b!3944083 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72))))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80))))) t!327385) tb!236635))

(declare-fun result!286634 () Bool)

(assert (= result!286634 result!286610))

(assert (=> b!3943900 t!327385))

(declare-fun tb!236637 () Bool)

(declare-fun t!327387 () Bool)

(assert (=> (and b!3944083 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72))))) (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059)))))) t!327387) tb!236637))

(declare-fun result!286636 () Bool)

(assert (= result!286636 result!286616))

(assert (=> d!1169806 t!327387))

(declare-fun tp!1200592 () Bool)

(declare-fun b_and!301609 () Bool)

(assert (=> b!3944083 (= tp!1200592 (and (=> t!327383 result!286632) (=> t!327385 result!286634) (=> t!327387 result!286636) b_and!301609))))

(declare-fun e!2440553 () Bool)

(assert (=> b!3943799 (= tp!1200509 e!2440553)))

(declare-fun tp!1200591 () Bool)

(declare-fun e!2440554 () Bool)

(declare-fun b!3944081 () Bool)

(declare-fun e!2440555 () Bool)

(assert (=> b!3944081 (= e!2440554 (and (inv!21 (value!207282 (h!47311 (t!327352 suffixTokens!72)))) e!2440555 tp!1200591))))

(declare-fun tp!1200593 () Bool)

(declare-fun e!2440556 () Bool)

(declare-fun b!3944082 () Bool)

(assert (=> b!3944082 (= e!2440555 (and tp!1200593 (inv!56102 (tag!7409 (rule!9511 (h!47311 (t!327352 suffixTokens!72))))) (inv!56106 (transformation!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72))))) e!2440556))))

(declare-fun tp!1200594 () Bool)

(declare-fun b!3944080 () Bool)

(assert (=> b!3944080 (= e!2440553 (and (inv!56105 (h!47311 (t!327352 suffixTokens!72))) e!2440554 tp!1200594))))

(assert (=> b!3944083 (= e!2440556 (and tp!1200595 tp!1200592))))

(assert (= b!3944082 b!3944083))

(assert (= b!3944081 b!3944082))

(assert (= b!3944080 b!3944081))

(assert (= (and b!3943799 (is-Cons!41891 (t!327352 suffixTokens!72))) b!3944080))

(declare-fun m!4512779 () Bool)

(assert (=> b!3944081 m!4512779))

(declare-fun m!4512781 () Bool)

(assert (=> b!3944082 m!4512781))

(declare-fun m!4512783 () Bool)

(assert (=> b!3944082 m!4512783))

(declare-fun m!4512785 () Bool)

(assert (=> b!3944080 m!4512785))

(declare-fun b!3944088 () Bool)

(declare-fun e!2440559 () Bool)

(declare-fun tp!1200598 () Bool)

(assert (=> b!3944088 (= e!2440559 (and tp_is_empty!19879 tp!1200598))))

(assert (=> b!3943788 (= tp!1200520 e!2440559)))

(assert (= (and b!3943788 (is-Cons!41890 (t!327351 prefix!426))) b!3944088))

(declare-fun b!3944089 () Bool)

(declare-fun e!2440560 () Bool)

(declare-fun tp!1200599 () Bool)

(assert (=> b!3944089 (= e!2440560 (and tp_is_empty!19879 tp!1200599))))

(assert (=> b!3943779 (= tp!1200510 e!2440560)))

(assert (= (and b!3943779 (is-Cons!41890 (originalCharacters!7149 (h!47311 prefixTokens!80)))) b!3944089))

(declare-fun b!3944104 () Bool)

(declare-fun e!2440565 () Bool)

(declare-fun tp!1200614 () Bool)

(assert (=> b!3944104 (= e!2440565 tp!1200614)))

(assert (=> b!3943789 (= tp!1200518 e!2440565)))

(declare-fun b!3944103 () Bool)

(declare-fun tp!1200612 () Bool)

(declare-fun tp!1200613 () Bool)

(assert (=> b!3944103 (= e!2440565 (and tp!1200612 tp!1200613))))

(declare-fun b!3944102 () Bool)

(assert (=> b!3944102 (= e!2440565 tp_is_empty!19879)))

(declare-fun b!3944105 () Bool)

(declare-fun tp!1200610 () Bool)

(declare-fun tp!1200611 () Bool)

(assert (=> b!3944105 (= e!2440565 (and tp!1200610 tp!1200611))))

(assert (= (and b!3943789 (is-ElementMatch!11454 (regex!6549 (h!47312 rules!2768)))) b!3944102))

(assert (= (and b!3943789 (is-Concat!18234 (regex!6549 (h!47312 rules!2768)))) b!3944103))

(assert (= (and b!3943789 (is-Star!11454 (regex!6549 (h!47312 rules!2768)))) b!3944104))

(assert (= (and b!3943789 (is-Union!11454 (regex!6549 (h!47312 rules!2768)))) b!3944105))

(declare-fun b!3944109 () Bool)

(declare-fun b_free!108021 () Bool)

(declare-fun b_next!108725 () Bool)

(assert (=> b!3944109 (= b_free!108021 (not b_next!108725))))

(declare-fun tp!1200619 () Bool)

(declare-fun b_and!301611 () Bool)

(assert (=> b!3944109 (= tp!1200619 b_and!301611)))

(declare-fun b_free!108023 () Bool)

(declare-fun b_next!108727 () Bool)

(assert (=> b!3944109 (= b_free!108023 (not b_next!108727))))

(declare-fun t!327389 () Bool)

(declare-fun tb!236639 () Bool)

(assert (=> (and b!3944109 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80))))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72))))) t!327389) tb!236639))

(declare-fun result!286642 () Bool)

(assert (= result!286642 result!286602))

(assert (=> b!3943875 t!327389))

(declare-fun t!327391 () Bool)

(declare-fun tb!236641 () Bool)

(assert (=> (and b!3944109 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80))))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80))))) t!327391) tb!236641))

(declare-fun result!286644 () Bool)

(assert (= result!286644 result!286610))

(assert (=> b!3943900 t!327391))

(declare-fun tb!236643 () Bool)

(declare-fun t!327393 () Bool)

(assert (=> (and b!3944109 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80))))) (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059)))))) t!327393) tb!236643))

(declare-fun result!286646 () Bool)

(assert (= result!286646 result!286616))

(assert (=> d!1169806 t!327393))

(declare-fun b_and!301613 () Bool)

(declare-fun tp!1200616 () Bool)

(assert (=> b!3944109 (= tp!1200616 (and (=> t!327389 result!286642) (=> t!327391 result!286644) (=> t!327393 result!286646) b_and!301613))))

(declare-fun e!2440568 () Bool)

(assert (=> b!3943785 (= tp!1200517 e!2440568)))

(declare-fun e!2440570 () Bool)

(declare-fun b!3944107 () Bool)

(declare-fun e!2440569 () Bool)

(declare-fun tp!1200615 () Bool)

(assert (=> b!3944107 (= e!2440569 (and (inv!21 (value!207282 (h!47311 (t!327352 prefixTokens!80)))) e!2440570 tp!1200615))))

(declare-fun tp!1200617 () Bool)

(declare-fun b!3944108 () Bool)

(declare-fun e!2440571 () Bool)

(assert (=> b!3944108 (= e!2440570 (and tp!1200617 (inv!56102 (tag!7409 (rule!9511 (h!47311 (t!327352 prefixTokens!80))))) (inv!56106 (transformation!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80))))) e!2440571))))

(declare-fun b!3944106 () Bool)

(declare-fun tp!1200618 () Bool)

(assert (=> b!3944106 (= e!2440568 (and (inv!56105 (h!47311 (t!327352 prefixTokens!80))) e!2440569 tp!1200618))))

(assert (=> b!3944109 (= e!2440571 (and tp!1200619 tp!1200616))))

(assert (= b!3944108 b!3944109))

(assert (= b!3944107 b!3944108))

(assert (= b!3944106 b!3944107))

(assert (= (and b!3943785 (is-Cons!41891 (t!327352 prefixTokens!80))) b!3944106))

(declare-fun m!4512789 () Bool)

(assert (=> b!3944107 m!4512789))

(declare-fun m!4512791 () Bool)

(assert (=> b!3944108 m!4512791))

(declare-fun m!4512795 () Bool)

(assert (=> b!3944108 m!4512795))

(declare-fun m!4512797 () Bool)

(assert (=> b!3944106 m!4512797))

(declare-fun b!3944111 () Bool)

(declare-fun e!2440573 () Bool)

(declare-fun tp!1200620 () Bool)

(assert (=> b!3944111 (= e!2440573 (and tp_is_empty!19879 tp!1200620))))

(assert (=> b!3943787 (= tp!1200506 e!2440573)))

(assert (= (and b!3943787 (is-Cons!41890 (t!327351 suffix!1176))) b!3944111))

(declare-fun b!3944114 () Bool)

(declare-fun e!2440574 () Bool)

(declare-fun tp!1200625 () Bool)

(assert (=> b!3944114 (= e!2440574 tp!1200625)))

(assert (=> b!3943793 (= tp!1200508 e!2440574)))

(declare-fun b!3944113 () Bool)

(declare-fun tp!1200623 () Bool)

(declare-fun tp!1200624 () Bool)

(assert (=> b!3944113 (= e!2440574 (and tp!1200623 tp!1200624))))

(declare-fun b!3944112 () Bool)

(assert (=> b!3944112 (= e!2440574 tp_is_empty!19879)))

(declare-fun b!3944115 () Bool)

(declare-fun tp!1200621 () Bool)

(declare-fun tp!1200622 () Bool)

(assert (=> b!3944115 (= e!2440574 (and tp!1200621 tp!1200622))))

(assert (= (and b!3943793 (is-ElementMatch!11454 (regex!6549 (rule!9511 (h!47311 prefixTokens!80))))) b!3944112))

(assert (= (and b!3943793 (is-Concat!18234 (regex!6549 (rule!9511 (h!47311 prefixTokens!80))))) b!3944113))

(assert (= (and b!3943793 (is-Star!11454 (regex!6549 (rule!9511 (h!47311 prefixTokens!80))))) b!3944114))

(assert (= (and b!3943793 (is-Union!11454 (regex!6549 (rule!9511 (h!47311 prefixTokens!80))))) b!3944115))

(declare-fun b!3944116 () Bool)

(declare-fun e!2440575 () Bool)

(declare-fun tp!1200626 () Bool)

(assert (=> b!3944116 (= e!2440575 (and tp_is_empty!19879 tp!1200626))))

(assert (=> b!3943782 (= tp!1200521 e!2440575)))

(assert (= (and b!3943782 (is-Cons!41890 (originalCharacters!7149 (h!47311 suffixTokens!72)))) b!3944116))

(declare-fun b!3944119 () Bool)

(declare-fun e!2440576 () Bool)

(declare-fun tp!1200631 () Bool)

(assert (=> b!3944119 (= e!2440576 tp!1200631)))

(assert (=> b!3943795 (= tp!1200514 e!2440576)))

(declare-fun b!3944118 () Bool)

(declare-fun tp!1200629 () Bool)

(declare-fun tp!1200630 () Bool)

(assert (=> b!3944118 (= e!2440576 (and tp!1200629 tp!1200630))))

(declare-fun b!3944117 () Bool)

(assert (=> b!3944117 (= e!2440576 tp_is_empty!19879)))

(declare-fun b!3944120 () Bool)

(declare-fun tp!1200627 () Bool)

(declare-fun tp!1200628 () Bool)

(assert (=> b!3944120 (= e!2440576 (and tp!1200627 tp!1200628))))

(assert (= (and b!3943795 (is-ElementMatch!11454 (regex!6549 (rule!9511 (h!47311 suffixTokens!72))))) b!3944117))

(assert (= (and b!3943795 (is-Concat!18234 (regex!6549 (rule!9511 (h!47311 suffixTokens!72))))) b!3944118))

(assert (= (and b!3943795 (is-Star!11454 (regex!6549 (rule!9511 (h!47311 suffixTokens!72))))) b!3944119))

(assert (= (and b!3943795 (is-Union!11454 (regex!6549 (rule!9511 (h!47311 suffixTokens!72))))) b!3944120))

(declare-fun b!3944121 () Bool)

(declare-fun e!2440577 () Bool)

(declare-fun tp!1200632 () Bool)

(assert (=> b!3944121 (= e!2440577 (and tp_is_empty!19879 tp!1200632))))

(assert (=> b!3943784 (= tp!1200515 e!2440577)))

(assert (= (and b!3943784 (is-Cons!41890 (t!327351 suffixResult!91))) b!3944121))

(declare-fun b!3944132 () Bool)

(declare-fun b_free!108025 () Bool)

(declare-fun b_next!108729 () Bool)

(assert (=> b!3944132 (= b_free!108025 (not b_next!108729))))

(declare-fun tp!1200642 () Bool)

(declare-fun b_and!301615 () Bool)

(assert (=> b!3944132 (= tp!1200642 b_and!301615)))

(declare-fun b_free!108027 () Bool)

(declare-fun b_next!108731 () Bool)

(assert (=> b!3944132 (= b_free!108027 (not b_next!108731))))

(declare-fun tb!236645 () Bool)

(declare-fun t!327395 () Bool)

(assert (=> (and b!3944132 (= (toChars!8876 (transformation!6549 (h!47312 (t!327353 rules!2768)))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72))))) t!327395) tb!236645))

(declare-fun result!286650 () Bool)

(assert (= result!286650 result!286602))

(assert (=> b!3943875 t!327395))

(declare-fun tb!236647 () Bool)

(declare-fun t!327397 () Bool)

(assert (=> (and b!3944132 (= (toChars!8876 (transformation!6549 (h!47312 (t!327353 rules!2768)))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80))))) t!327397) tb!236647))

(declare-fun result!286652 () Bool)

(assert (= result!286652 result!286610))

(assert (=> b!3943900 t!327397))

(declare-fun tb!236649 () Bool)

(declare-fun t!327399 () Bool)

(assert (=> (and b!3944132 (= (toChars!8876 (transformation!6549 (h!47312 (t!327353 rules!2768)))) (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059)))))) t!327399) tb!236649))

(declare-fun result!286654 () Bool)

(assert (= result!286654 result!286616))

(assert (=> d!1169806 t!327399))

(declare-fun b_and!301617 () Bool)

(declare-fun tp!1200644 () Bool)

(assert (=> b!3944132 (= tp!1200644 (and (=> t!327395 result!286650) (=> t!327397 result!286652) (=> t!327399 result!286654) b_and!301617))))

(declare-fun e!2440586 () Bool)

(assert (=> b!3944132 (= e!2440586 (and tp!1200642 tp!1200644))))

(declare-fun e!2440588 () Bool)

(declare-fun tp!1200643 () Bool)

(declare-fun b!3944131 () Bool)

(assert (=> b!3944131 (= e!2440588 (and tp!1200643 (inv!56102 (tag!7409 (h!47312 (t!327353 rules!2768)))) (inv!56106 (transformation!6549 (h!47312 (t!327353 rules!2768)))) e!2440586))))

(declare-fun b!3944130 () Bool)

(declare-fun e!2440587 () Bool)

(declare-fun tp!1200641 () Bool)

(assert (=> b!3944130 (= e!2440587 (and e!2440588 tp!1200641))))

(assert (=> b!3943780 (= tp!1200512 e!2440587)))

(assert (= b!3944131 b!3944132))

(assert (= b!3944130 b!3944131))

(assert (= (and b!3943780 (is-Cons!41892 (t!327353 rules!2768))) b!3944130))

(declare-fun m!4512799 () Bool)

(assert (=> b!3944131 m!4512799))

(declare-fun m!4512801 () Bool)

(assert (=> b!3944131 m!4512801))

(declare-fun b_lambda!115343 () Bool)

(assert (= b_lambda!115337 (or (and b!3944132 b_free!108027 (= (toChars!8876 (transformation!6549 (h!47312 (t!327353 rules!2768)))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))))) (and b!3944083 b_free!108019 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72))))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))))) (and b!3944109 b_free!108023 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80))))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))))) (and b!3943798 b_free!108003 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))))) (and b!3943796 b_free!107995 (= (toChars!8876 (transformation!6549 (h!47312 rules!2768))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))))) (and b!3943797 b_free!107999) b_lambda!115343)))

(declare-fun b_lambda!115345 () Bool)

(assert (= b_lambda!115335 (or (and b!3943797 b_free!107999 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))))) (and b!3943798 b_free!108003) (and b!3944083 b_free!108019 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72))))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))))) (and b!3944132 b_free!108027 (= (toChars!8876 (transformation!6549 (h!47312 (t!327353 rules!2768)))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))))) (and b!3944109 b_free!108023 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80))))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))))) (and b!3943796 b_free!107995 (= (toChars!8876 (transformation!6549 (h!47312 rules!2768))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))))) b_lambda!115345)))

(push 1)

(assert b_and!301615)

(assert (not b!3943983))

(assert (not b!3944080))

(assert (not b!3943991))

(assert b_and!301597)

(assert (not b!3944103))

(assert (not b!3943875))

(assert (not b!3944111))

(assert (not b!3944116))

(assert (not b!3944051))

(assert b_and!301599)

(assert (not b!3943987))

(assert (not b!3944108))

(assert (not d!1169814))

(assert (not b!3944055))

(assert (not d!1169802))

(assert b_and!301611)

(assert (not b!3943993))

(assert (not d!1169842))

(assert (not b!3944088))

(assert b_and!301613)

(assert (not b!3944089))

(assert (not b!3944069))

(assert (not b!3943902))

(assert (not b_next!108701))

(assert (not b!3943994))

(assert (not b_next!108731))

(assert (not b!3943990))

(assert (not b!3943939))

(assert (not b_next!108707))

(assert (not b!3944115))

(assert (not b!3943967))

(assert (not b_next!108699))

(assert (not b!3944057))

(assert (not b!3943964))

(assert (not d!1169796))

(assert b_and!301607)

(assert (not b!3944058))

(assert (not d!1169790))

(assert (not d!1169834))

(assert (not tb!236609))

(assert (not b_next!108697))

(assert (not b!3943926))

(assert (not b!3943913))

(assert (not b!3944120))

(assert (not b!3943901))

(assert (not b!3943876))

(assert (not b!3944068))

(assert (not b!3943881))

(assert (not b!3943895))

(assert (not b!3944056))

(assert (not b_next!108721))

(assert (not d!1169828))

(assert b_and!301609)

(assert b_and!301617)

(assert (not b!3943937))

(assert (not b!3944065))

(assert (not b!3943899))

(assert (not b!3943988))

(assert (not bm!285100))

(assert (not b!3944003))

(assert (not b!3943894))

(assert (not b!3944052))

(assert (not b!3944054))

(assert (not b_next!108729))

(assert (not b!3944114))

(assert (not b_lambda!115345))

(assert (not b!3944105))

(assert b_and!301567)

(assert (not b_next!108705))

(assert (not b!3944059))

(assert (not b!3944131))

(assert (not tb!236615))

(assert (not b!3943941))

(assert (not b!3944104))

(assert (not b!3943936))

(assert (not b!3944113))

(assert tp_is_empty!19879)

(assert (not b!3944130))

(assert (not b!3943942))

(assert (not b_lambda!115339))

(assert (not d!1169806))

(assert (not tb!236621))

(assert (not b!3944107))

(assert (not b!3944119))

(assert (not b_next!108725))

(assert b_and!301595)

(assert (not b!3944118))

(assert (not d!1169812))

(assert (not b!3944106))

(assert (not b!3943924))

(assert b_and!301563)

(assert (not b!3944121))

(assert (not d!1169818))

(assert (not b_next!108727))

(assert (not b!3943892))

(assert (not d!1169778))

(assert (not b!3943968))

(assert (not b_lambda!115343))

(assert (not d!1169798))

(assert b_and!301559)

(assert (not b!3944082))

(assert (not d!1169808))

(assert (not b!3943984))

(assert (not b!3943900))

(assert (not b!3944081))

(assert (not b!3943925))

(assert (not b_next!108723))

(assert (not b_next!108703))

(assert (not d!1169792))

(assert (not d!1169788))

(assert (not b!3943943))

(assert (not d!1169786))

(assert (not d!1169822))

(assert (not b!3943907))

(assert (not b!3943996))

(assert (not d!1169804))

(assert (not d!1169832))

(check-sat)

(pop 1)

(push 1)

(assert b_and!301597)

(assert b_and!301599)

(assert (not b_next!108701))

(assert (not b_next!108697))

(assert b_and!301617)

(assert b_and!301615)

(assert (not b_next!108729))

(assert b_and!301563)

(assert (not b_next!108727))

(assert b_and!301559)

(assert b_and!301611)

(assert b_and!301613)

(assert (not b_next!108731))

(assert (not b_next!108707))

(assert (not b_next!108699))

(assert b_and!301607)

(assert (not b_next!108721))

(assert b_and!301609)

(assert b_and!301567)

(assert (not b_next!108705))

(assert (not b_next!108725))

(assert b_and!301595)

(assert (not b_next!108723))

(assert (not b_next!108703))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1169894 () Bool)

(declare-fun isBalanced!3646 (Conc!12760) Bool)

(assert (=> d!1169894 (= (inv!56110 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) (value!207282 (h!47311 suffixTokens!72)))) (isBalanced!3646 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) (value!207282 (h!47311 suffixTokens!72))))))))

(declare-fun bs!586779 () Bool)

(assert (= bs!586779 d!1169894))

(declare-fun m!4512957 () Bool)

(assert (=> bs!586779 m!4512957))

(assert (=> tb!236609 d!1169894))

(declare-fun b!3944283 () Bool)

(declare-fun e!2440688 () List!42014)

(assert (=> b!3944283 (= e!2440688 suffix!1176)))

(declare-fun d!1169896 () Bool)

(declare-fun e!2440687 () Bool)

(assert (=> d!1169896 e!2440687))

(declare-fun res!1596087 () Bool)

(assert (=> d!1169896 (=> (not res!1596087) (not e!2440687))))

(declare-fun lt!1379190 () List!42014)

(assert (=> d!1169896 (= res!1596087 (= (content!6334 lt!1379190) (set.union (content!6334 (t!327351 prefix!426)) (content!6334 suffix!1176))))))

(assert (=> d!1169896 (= lt!1379190 e!2440688)))

(declare-fun c!685136 () Bool)

(assert (=> d!1169896 (= c!685136 (is-Nil!41890 (t!327351 prefix!426)))))

(assert (=> d!1169896 (= (++!10856 (t!327351 prefix!426) suffix!1176) lt!1379190)))

(declare-fun b!3944284 () Bool)

(assert (=> b!3944284 (= e!2440688 (Cons!41890 (h!47310 (t!327351 prefix!426)) (++!10856 (t!327351 (t!327351 prefix!426)) suffix!1176)))))

(declare-fun b!3944285 () Bool)

(declare-fun res!1596086 () Bool)

(assert (=> b!3944285 (=> (not res!1596086) (not e!2440687))))

(assert (=> b!3944285 (= res!1596086 (= (size!31414 lt!1379190) (+ (size!31414 (t!327351 prefix!426)) (size!31414 suffix!1176))))))

(declare-fun b!3944286 () Bool)

(assert (=> b!3944286 (= e!2440687 (or (not (= suffix!1176 Nil!41890)) (= lt!1379190 (t!327351 prefix!426))))))

(assert (= (and d!1169896 c!685136) b!3944283))

(assert (= (and d!1169896 (not c!685136)) b!3944284))

(assert (= (and d!1169896 res!1596087) b!3944285))

(assert (= (and b!3944285 res!1596086) b!3944286))

(declare-fun m!4512959 () Bool)

(assert (=> d!1169896 m!4512959))

(declare-fun m!4512961 () Bool)

(assert (=> d!1169896 m!4512961))

(assert (=> d!1169896 m!4512665))

(declare-fun m!4512963 () Bool)

(assert (=> b!3944284 m!4512963))

(declare-fun m!4512965 () Bool)

(assert (=> b!3944285 m!4512965))

(declare-fun m!4512967 () Bool)

(assert (=> b!3944285 m!4512967))

(assert (=> b!3944285 m!4512673))

(assert (=> b!3943987 d!1169896))

(declare-fun d!1169898 () Bool)

(declare-fun c!685139 () Bool)

(assert (=> d!1169898 (= c!685139 (is-Nil!41891 lt!1379129))))

(declare-fun e!2440691 () (Set Token!12236))

(assert (=> d!1169898 (= (content!6335 lt!1379129) e!2440691)))

(declare-fun b!3944291 () Bool)

(assert (=> b!3944291 (= e!2440691 (as set.empty (Set Token!12236)))))

(declare-fun b!3944292 () Bool)

(assert (=> b!3944292 (= e!2440691 (set.union (set.insert (h!47311 lt!1379129) (as set.empty (Set Token!12236))) (content!6335 (t!327352 lt!1379129))))))

(assert (= (and d!1169898 c!685139) b!3944291))

(assert (= (and d!1169898 (not c!685139)) b!3944292))

(declare-fun m!4512969 () Bool)

(assert (=> b!3944292 m!4512969))

(declare-fun m!4512971 () Bool)

(assert (=> b!3944292 m!4512971))

(assert (=> d!1169814 d!1169898))

(declare-fun d!1169900 () Bool)

(declare-fun c!685140 () Bool)

(assert (=> d!1169900 (= c!685140 (is-Nil!41891 prefixTokens!80))))

(declare-fun e!2440692 () (Set Token!12236))

(assert (=> d!1169900 (= (content!6335 prefixTokens!80) e!2440692)))

(declare-fun b!3944293 () Bool)

(assert (=> b!3944293 (= e!2440692 (as set.empty (Set Token!12236)))))

(declare-fun b!3944294 () Bool)

(assert (=> b!3944294 (= e!2440692 (set.union (set.insert (h!47311 prefixTokens!80) (as set.empty (Set Token!12236))) (content!6335 (t!327352 prefixTokens!80))))))

(assert (= (and d!1169900 c!685140) b!3944293))

(assert (= (and d!1169900 (not c!685140)) b!3944294))

(declare-fun m!4512973 () Bool)

(assert (=> b!3944294 m!4512973))

(declare-fun m!4512975 () Bool)

(assert (=> b!3944294 m!4512975))

(assert (=> d!1169814 d!1169900))

(declare-fun d!1169902 () Bool)

(declare-fun c!685141 () Bool)

(assert (=> d!1169902 (= c!685141 (is-Nil!41891 suffixTokens!72))))

(declare-fun e!2440693 () (Set Token!12236))

(assert (=> d!1169902 (= (content!6335 suffixTokens!72) e!2440693)))

(declare-fun b!3944295 () Bool)

(assert (=> b!3944295 (= e!2440693 (as set.empty (Set Token!12236)))))

(declare-fun b!3944296 () Bool)

(assert (=> b!3944296 (= e!2440693 (set.union (set.insert (h!47311 suffixTokens!72) (as set.empty (Set Token!12236))) (content!6335 (t!327352 suffixTokens!72))))))

(assert (= (and d!1169902 c!685141) b!3944295))

(assert (= (and d!1169902 (not c!685141)) b!3944296))

(declare-fun m!4512977 () Bool)

(assert (=> b!3944296 m!4512977))

(declare-fun m!4512979 () Bool)

(assert (=> b!3944296 m!4512979))

(assert (=> d!1169814 d!1169902))

(declare-fun b!3944297 () Bool)

(declare-fun res!1596089 () Bool)

(declare-fun e!2440694 () Bool)

(assert (=> b!3944297 (=> (not res!1596089) (not e!2440694))))

(declare-fun lt!1379194 () Option!8969)

(assert (=> b!3944297 (= res!1596089 (= (list!15557 (charsOf!4367 (_1!23724 (get!13836 lt!1379194)))) (originalCharacters!7149 (_1!23724 (get!13836 lt!1379194)))))))

(declare-fun b!3944298 () Bool)

(declare-fun e!2440695 () Option!8969)

(declare-fun lt!1379193 () Option!8969)

(declare-fun lt!1379195 () Option!8969)

(assert (=> b!3944298 (= e!2440695 (ite (and (is-None!8968 lt!1379193) (is-None!8968 lt!1379195)) None!8968 (ite (is-None!8968 lt!1379195) lt!1379193 (ite (is-None!8968 lt!1379193) lt!1379195 (ite (>= (size!31412 (_1!23724 (v!39304 lt!1379193))) (size!31412 (_1!23724 (v!39304 lt!1379195)))) lt!1379193 lt!1379195)))))))

(declare-fun call!285109 () Option!8969)

(assert (=> b!3944298 (= lt!1379193 call!285109)))

(assert (=> b!3944298 (= lt!1379195 (maxPrefix!3442 thiss!20629 (t!327353 (t!327353 rules!2768)) lt!1379060))))

(declare-fun bm!285104 () Bool)

(assert (=> bm!285104 (= call!285109 (maxPrefixOneRule!2504 thiss!20629 (h!47312 (t!327353 rules!2768)) lt!1379060))))

(declare-fun b!3944299 () Bool)

(assert (=> b!3944299 (= e!2440695 call!285109)))

(declare-fun b!3944300 () Bool)

(assert (=> b!3944300 (= e!2440694 (contains!8387 (t!327353 rules!2768) (rule!9511 (_1!23724 (get!13836 lt!1379194)))))))

(declare-fun b!3944301 () Bool)

(declare-fun res!1596094 () Bool)

(assert (=> b!3944301 (=> (not res!1596094) (not e!2440694))))

(assert (=> b!3944301 (= res!1596094 (matchR!5499 (regex!6549 (rule!9511 (_1!23724 (get!13836 lt!1379194)))) (list!15557 (charsOf!4367 (_1!23724 (get!13836 lt!1379194))))))))

(declare-fun b!3944302 () Bool)

(declare-fun res!1596090 () Bool)

(assert (=> b!3944302 (=> (not res!1596090) (not e!2440694))))

(assert (=> b!3944302 (= res!1596090 (< (size!31414 (_2!23724 (get!13836 lt!1379194))) (size!31414 lt!1379060)))))

(declare-fun b!3944303 () Bool)

(declare-fun e!2440696 () Bool)

(assert (=> b!3944303 (= e!2440696 e!2440694)))

(declare-fun res!1596091 () Bool)

(assert (=> b!3944303 (=> (not res!1596091) (not e!2440694))))

(assert (=> b!3944303 (= res!1596091 (isDefined!6966 lt!1379194))))

(declare-fun d!1169904 () Bool)

(assert (=> d!1169904 e!2440696))

(declare-fun res!1596088 () Bool)

(assert (=> d!1169904 (=> res!1596088 e!2440696)))

(assert (=> d!1169904 (= res!1596088 (isEmpty!25003 lt!1379194))))

(assert (=> d!1169904 (= lt!1379194 e!2440695)))

(declare-fun c!685142 () Bool)

(assert (=> d!1169904 (= c!685142 (and (is-Cons!41892 (t!327353 rules!2768)) (is-Nil!41892 (t!327353 (t!327353 rules!2768)))))))

(declare-fun lt!1379192 () Unit!60431)

(declare-fun lt!1379191 () Unit!60431)

(assert (=> d!1169904 (= lt!1379192 lt!1379191)))

(assert (=> d!1169904 (isPrefix!3638 lt!1379060 lt!1379060)))

(assert (=> d!1169904 (= lt!1379191 (lemmaIsPrefixRefl!2297 lt!1379060 lt!1379060))))

(assert (=> d!1169904 (rulesValidInductive!2367 thiss!20629 (t!327353 rules!2768))))

(assert (=> d!1169904 (= (maxPrefix!3442 thiss!20629 (t!327353 rules!2768) lt!1379060) lt!1379194)))

(declare-fun b!3944304 () Bool)

(declare-fun res!1596093 () Bool)

(assert (=> b!3944304 (=> (not res!1596093) (not e!2440694))))

(assert (=> b!3944304 (= res!1596093 (= (value!207282 (_1!23724 (get!13836 lt!1379194))) (apply!9780 (transformation!6549 (rule!9511 (_1!23724 (get!13836 lt!1379194)))) (seqFromList!4808 (originalCharacters!7149 (_1!23724 (get!13836 lt!1379194)))))))))

(declare-fun b!3944305 () Bool)

(declare-fun res!1596092 () Bool)

(assert (=> b!3944305 (=> (not res!1596092) (not e!2440694))))

(assert (=> b!3944305 (= res!1596092 (= (++!10856 (list!15557 (charsOf!4367 (_1!23724 (get!13836 lt!1379194)))) (_2!23724 (get!13836 lt!1379194))) lt!1379060))))

(assert (= (and d!1169904 c!685142) b!3944299))

(assert (= (and d!1169904 (not c!685142)) b!3944298))

(assert (= (or b!3944299 b!3944298) bm!285104))

(assert (= (and d!1169904 (not res!1596088)) b!3944303))

(assert (= (and b!3944303 res!1596091) b!3944297))

(assert (= (and b!3944297 res!1596089) b!3944302))

(assert (= (and b!3944302 res!1596090) b!3944305))

(assert (= (and b!3944305 res!1596092) b!3944304))

(assert (= (and b!3944304 res!1596093) b!3944301))

(assert (= (and b!3944301 res!1596094) b!3944300))

(declare-fun m!4512981 () Bool)

(assert (=> b!3944298 m!4512981))

(declare-fun m!4512983 () Bool)

(assert (=> b!3944302 m!4512983))

(declare-fun m!4512985 () Bool)

(assert (=> b!3944302 m!4512985))

(assert (=> b!3944302 m!4512577))

(declare-fun m!4512987 () Bool)

(assert (=> d!1169904 m!4512987))

(assert (=> d!1169904 m!4512733))

(assert (=> d!1169904 m!4512735))

(declare-fun m!4512989 () Bool)

(assert (=> d!1169904 m!4512989))

(declare-fun m!4512991 () Bool)

(assert (=> b!3944303 m!4512991))

(assert (=> b!3944305 m!4512983))

(declare-fun m!4512993 () Bool)

(assert (=> b!3944305 m!4512993))

(assert (=> b!3944305 m!4512993))

(declare-fun m!4512995 () Bool)

(assert (=> b!3944305 m!4512995))

(assert (=> b!3944305 m!4512995))

(declare-fun m!4512997 () Bool)

(assert (=> b!3944305 m!4512997))

(assert (=> b!3944300 m!4512983))

(declare-fun m!4512999 () Bool)

(assert (=> b!3944300 m!4512999))

(declare-fun m!4513001 () Bool)

(assert (=> bm!285104 m!4513001))

(assert (=> b!3944301 m!4512983))

(assert (=> b!3944301 m!4512993))

(assert (=> b!3944301 m!4512993))

(assert (=> b!3944301 m!4512995))

(assert (=> b!3944301 m!4512995))

(declare-fun m!4513003 () Bool)

(assert (=> b!3944301 m!4513003))

(assert (=> b!3944297 m!4512983))

(assert (=> b!3944297 m!4512993))

(assert (=> b!3944297 m!4512993))

(assert (=> b!3944297 m!4512995))

(assert (=> b!3944304 m!4512983))

(declare-fun m!4513005 () Bool)

(assert (=> b!3944304 m!4513005))

(assert (=> b!3944304 m!4513005))

(declare-fun m!4513007 () Bool)

(assert (=> b!3944304 m!4513007))

(assert (=> b!3944052 d!1169904))

(declare-fun d!1169906 () Bool)

(declare-fun e!2440698 () Bool)

(assert (=> d!1169906 e!2440698))

(declare-fun res!1596098 () Bool)

(assert (=> d!1169906 (=> res!1596098 e!2440698)))

(declare-fun lt!1379196 () Bool)

(assert (=> d!1169906 (= res!1596098 (not lt!1379196))))

(declare-fun e!2440697 () Bool)

(assert (=> d!1169906 (= lt!1379196 e!2440697)))

(declare-fun res!1596096 () Bool)

(assert (=> d!1169906 (=> res!1596096 e!2440697)))

(assert (=> d!1169906 (= res!1596096 (is-Nil!41890 (tail!6104 lt!1379063)))))

(assert (=> d!1169906 (= (isPrefix!3638 (tail!6104 lt!1379063) (tail!6104 lt!1379060)) lt!1379196)))

(declare-fun b!3944306 () Bool)

(declare-fun e!2440699 () Bool)

(assert (=> b!3944306 (= e!2440697 e!2440699)))

(declare-fun res!1596097 () Bool)

(assert (=> b!3944306 (=> (not res!1596097) (not e!2440699))))

(assert (=> b!3944306 (= res!1596097 (not (is-Nil!41890 (tail!6104 lt!1379060))))))

(declare-fun b!3944307 () Bool)

(declare-fun res!1596095 () Bool)

(assert (=> b!3944307 (=> (not res!1596095) (not e!2440699))))

(assert (=> b!3944307 (= res!1596095 (= (head!8378 (tail!6104 lt!1379063)) (head!8378 (tail!6104 lt!1379060))))))

(declare-fun b!3944308 () Bool)

(assert (=> b!3944308 (= e!2440699 (isPrefix!3638 (tail!6104 (tail!6104 lt!1379063)) (tail!6104 (tail!6104 lt!1379060))))))

(declare-fun b!3944309 () Bool)

(assert (=> b!3944309 (= e!2440698 (>= (size!31414 (tail!6104 lt!1379060)) (size!31414 (tail!6104 lt!1379063))))))

(assert (= (and d!1169906 (not res!1596096)) b!3944306))

(assert (= (and b!3944306 res!1596097) b!3944307))

(assert (= (and b!3944307 res!1596095) b!3944308))

(assert (= (and d!1169906 (not res!1596098)) b!3944309))

(assert (=> b!3944307 m!4512591))

(declare-fun m!4513009 () Bool)

(assert (=> b!3944307 m!4513009))

(assert (=> b!3944307 m!4512581))

(declare-fun m!4513011 () Bool)

(assert (=> b!3944307 m!4513011))

(assert (=> b!3944308 m!4512591))

(declare-fun m!4513013 () Bool)

(assert (=> b!3944308 m!4513013))

(assert (=> b!3944308 m!4512581))

(declare-fun m!4513015 () Bool)

(assert (=> b!3944308 m!4513015))

(assert (=> b!3944308 m!4513013))

(assert (=> b!3944308 m!4513015))

(declare-fun m!4513017 () Bool)

(assert (=> b!3944308 m!4513017))

(assert (=> b!3944309 m!4512581))

(declare-fun m!4513019 () Bool)

(assert (=> b!3944309 m!4513019))

(assert (=> b!3944309 m!4512591))

(declare-fun m!4513021 () Bool)

(assert (=> b!3944309 m!4513021))

(assert (=> b!3943925 d!1169906))

(declare-fun d!1169908 () Bool)

(assert (=> d!1169908 (= (tail!6104 lt!1379063) (t!327351 lt!1379063))))

(assert (=> b!3943925 d!1169908))

(declare-fun d!1169910 () Bool)

(assert (=> d!1169910 (= (tail!6104 lt!1379060) (t!327351 lt!1379060))))

(assert (=> b!3943925 d!1169910))

(declare-fun d!1169912 () Bool)

(declare-fun c!685144 () Bool)

(assert (=> d!1169912 (= c!685144 (is-IntegerValue!20337 (value!207282 (h!47311 (t!327352 prefixTokens!80)))))))

(declare-fun e!2440700 () Bool)

(assert (=> d!1169912 (= (inv!21 (value!207282 (h!47311 (t!327352 prefixTokens!80)))) e!2440700)))

(declare-fun b!3944310 () Bool)

(declare-fun e!2440702 () Bool)

(assert (=> b!3944310 (= e!2440702 (inv!15 (value!207282 (h!47311 (t!327352 prefixTokens!80)))))))

(declare-fun b!3944311 () Bool)

(declare-fun e!2440701 () Bool)

(assert (=> b!3944311 (= e!2440700 e!2440701)))

(declare-fun c!685143 () Bool)

(assert (=> b!3944311 (= c!685143 (is-IntegerValue!20338 (value!207282 (h!47311 (t!327352 prefixTokens!80)))))))

(declare-fun b!3944312 () Bool)

(assert (=> b!3944312 (= e!2440701 (inv!17 (value!207282 (h!47311 (t!327352 prefixTokens!80)))))))

(declare-fun b!3944313 () Bool)

(assert (=> b!3944313 (= e!2440700 (inv!16 (value!207282 (h!47311 (t!327352 prefixTokens!80)))))))

(declare-fun b!3944314 () Bool)

(declare-fun res!1596099 () Bool)

(assert (=> b!3944314 (=> res!1596099 e!2440702)))

(assert (=> b!3944314 (= res!1596099 (not (is-IntegerValue!20339 (value!207282 (h!47311 (t!327352 prefixTokens!80))))))))

(assert (=> b!3944314 (= e!2440701 e!2440702)))

(assert (= (and d!1169912 c!685144) b!3944313))

(assert (= (and d!1169912 (not c!685144)) b!3944311))

(assert (= (and b!3944311 c!685143) b!3944312))

(assert (= (and b!3944311 (not c!685143)) b!3944314))

(assert (= (and b!3944314 (not res!1596099)) b!3944310))

(declare-fun m!4513023 () Bool)

(assert (=> b!3944310 m!4513023))

(declare-fun m!4513025 () Bool)

(assert (=> b!3944312 m!4513025))

(declare-fun m!4513027 () Bool)

(assert (=> b!3944313 m!4513027))

(assert (=> b!3944107 d!1169912))

(declare-fun d!1169914 () Bool)

(declare-fun lt!1379199 () Int)

(assert (=> d!1169914 (>= lt!1379199 0)))

(declare-fun e!2440705 () Int)

(assert (=> d!1169914 (= lt!1379199 e!2440705)))

(declare-fun c!685147 () Bool)

(assert (=> d!1169914 (= c!685147 (is-Nil!41891 lt!1379129))))

(assert (=> d!1169914 (= (size!31415 lt!1379129) lt!1379199)))

(declare-fun b!3944319 () Bool)

(assert (=> b!3944319 (= e!2440705 0)))

(declare-fun b!3944320 () Bool)

(assert (=> b!3944320 (= e!2440705 (+ 1 (size!31415 (t!327352 lt!1379129))))))

(assert (= (and d!1169914 c!685147) b!3944319))

(assert (= (and d!1169914 (not c!685147)) b!3944320))

(declare-fun m!4513029 () Bool)

(assert (=> b!3944320 m!4513029))

(assert (=> b!3943984 d!1169914))

(declare-fun d!1169916 () Bool)

(declare-fun lt!1379200 () Int)

(assert (=> d!1169916 (>= lt!1379200 0)))

(declare-fun e!2440706 () Int)

(assert (=> d!1169916 (= lt!1379200 e!2440706)))

(declare-fun c!685148 () Bool)

(assert (=> d!1169916 (= c!685148 (is-Nil!41891 prefixTokens!80))))

(assert (=> d!1169916 (= (size!31415 prefixTokens!80) lt!1379200)))

(declare-fun b!3944321 () Bool)

(assert (=> b!3944321 (= e!2440706 0)))

(declare-fun b!3944322 () Bool)

(assert (=> b!3944322 (= e!2440706 (+ 1 (size!31415 (t!327352 prefixTokens!80))))))

(assert (= (and d!1169916 c!685148) b!3944321))

(assert (= (and d!1169916 (not c!685148)) b!3944322))

(declare-fun m!4513031 () Bool)

(assert (=> b!3944322 m!4513031))

(assert (=> b!3943984 d!1169916))

(declare-fun d!1169918 () Bool)

(declare-fun lt!1379201 () Int)

(assert (=> d!1169918 (>= lt!1379201 0)))

(declare-fun e!2440707 () Int)

(assert (=> d!1169918 (= lt!1379201 e!2440707)))

(declare-fun c!685149 () Bool)

(assert (=> d!1169918 (= c!685149 (is-Nil!41891 suffixTokens!72))))

(assert (=> d!1169918 (= (size!31415 suffixTokens!72) lt!1379201)))

(declare-fun b!3944323 () Bool)

(assert (=> b!3944323 (= e!2440707 0)))

(declare-fun b!3944324 () Bool)

(assert (=> b!3944324 (= e!2440707 (+ 1 (size!31415 (t!327352 suffixTokens!72))))))

(assert (= (and d!1169918 c!685149) b!3944323))

(assert (= (and d!1169918 (not c!685149)) b!3944324))

(declare-fun m!4513033 () Bool)

(assert (=> b!3944324 m!4513033))

(assert (=> b!3943984 d!1169918))

(declare-fun d!1169920 () Bool)

(declare-fun lt!1379202 () Int)

(assert (=> d!1169920 (>= lt!1379202 0)))

(declare-fun e!2440708 () Int)

(assert (=> d!1169920 (= lt!1379202 e!2440708)))

(declare-fun c!685150 () Bool)

(assert (=> d!1169920 (= c!685150 (is-Nil!41891 (_1!23723 lt!1379123)))))

(assert (=> d!1169920 (= (size!31415 (_1!23723 lt!1379123)) lt!1379202)))

(declare-fun b!3944325 () Bool)

(assert (=> b!3944325 (= e!2440708 0)))

(declare-fun b!3944326 () Bool)

(assert (=> b!3944326 (= e!2440708 (+ 1 (size!31415 (t!327352 (_1!23723 lt!1379123)))))))

(assert (= (and d!1169920 c!685150) b!3944325))

(assert (= (and d!1169920 (not c!685150)) b!3944326))

(declare-fun m!4513035 () Bool)

(assert (=> b!3944326 m!4513035))

(assert (=> d!1169812 d!1169920))

(assert (=> d!1169812 d!1169834))

(declare-fun d!1169922 () Bool)

(declare-fun charsToInt!0 (List!42013) (_ BitVec 32))

(assert (=> d!1169922 (= (inv!16 (value!207282 (h!47311 prefixTokens!80))) (= (charsToInt!0 (text!47900 (value!207282 (h!47311 prefixTokens!80)))) (value!207273 (value!207282 (h!47311 prefixTokens!80)))))))

(declare-fun bs!586780 () Bool)

(assert (= bs!586780 d!1169922))

(declare-fun m!4513037 () Bool)

(assert (=> bs!586780 m!4513037))

(assert (=> b!3943895 d!1169922))

(declare-fun bm!285111 () Bool)

(declare-fun call!285116 () Bool)

(declare-fun call!285118 () Bool)

(assert (=> bm!285111 (= call!285116 call!285118)))

(declare-fun b!3944345 () Bool)

(declare-fun res!1596113 () Bool)

(declare-fun e!2440723 () Bool)

(assert (=> b!3944345 (=> (not res!1596113) (not e!2440723))))

(assert (=> b!3944345 (= res!1596113 call!285116)))

(declare-fun e!2440726 () Bool)

(assert (=> b!3944345 (= e!2440726 e!2440723)))

(declare-fun bm!285112 () Bool)

(declare-fun call!285117 () Bool)

(declare-fun c!685155 () Bool)

(assert (=> bm!285112 (= call!285117 (validRegex!5215 (ite c!685155 (regTwo!23421 (regex!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059))))) (regOne!23420 (regex!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059))))))))))

(declare-fun d!1169924 () Bool)

(declare-fun res!1596114 () Bool)

(declare-fun e!2440725 () Bool)

(assert (=> d!1169924 (=> res!1596114 e!2440725)))

(assert (=> d!1169924 (= res!1596114 (is-ElementMatch!11454 (regex!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059))))))))

(assert (=> d!1169924 (= (validRegex!5215 (regex!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059))))) e!2440725)))

(declare-fun b!3944346 () Bool)

(declare-fun e!2440729 () Bool)

(assert (=> b!3944346 (= e!2440729 e!2440726)))

(assert (=> b!3944346 (= c!685155 (is-Union!11454 (regex!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059))))))))

(declare-fun b!3944347 () Bool)

(assert (=> b!3944347 (= e!2440723 call!285117)))

(declare-fun b!3944348 () Bool)

(declare-fun e!2440728 () Bool)

(assert (=> b!3944348 (= e!2440728 call!285116)))

(declare-fun b!3944349 () Bool)

(declare-fun res!1596112 () Bool)

(declare-fun e!2440724 () Bool)

(assert (=> b!3944349 (=> res!1596112 e!2440724)))

(assert (=> b!3944349 (= res!1596112 (not (is-Concat!18234 (regex!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059)))))))))

(assert (=> b!3944349 (= e!2440726 e!2440724)))

(declare-fun b!3944350 () Bool)

(declare-fun e!2440727 () Bool)

(assert (=> b!3944350 (= e!2440727 call!285118)))

(declare-fun b!3944351 () Bool)

(assert (=> b!3944351 (= e!2440725 e!2440729)))

(declare-fun c!685156 () Bool)

(assert (=> b!3944351 (= c!685156 (is-Star!11454 (regex!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059))))))))

(declare-fun bm!285113 () Bool)

(assert (=> bm!285113 (= call!285118 (validRegex!5215 (ite c!685156 (reg!11783 (regex!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059))))) (ite c!685155 (regOne!23421 (regex!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059))))) (regTwo!23420 (regex!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059)))))))))))

(declare-fun b!3944352 () Bool)

(assert (=> b!3944352 (= e!2440729 e!2440727)))

(declare-fun res!1596111 () Bool)

(assert (=> b!3944352 (= res!1596111 (not (nullable!4016 (reg!11783 (regex!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059))))))))))

(assert (=> b!3944352 (=> (not res!1596111) (not e!2440727))))

(declare-fun b!3944353 () Bool)

(assert (=> b!3944353 (= e!2440724 e!2440728)))

(declare-fun res!1596110 () Bool)

(assert (=> b!3944353 (=> (not res!1596110) (not e!2440728))))

(assert (=> b!3944353 (= res!1596110 call!285117)))

(assert (= (and d!1169924 (not res!1596114)) b!3944351))

(assert (= (and b!3944351 c!685156) b!3944352))

(assert (= (and b!3944351 (not c!685156)) b!3944346))

(assert (= (and b!3944352 res!1596111) b!3944350))

(assert (= (and b!3944346 c!685155) b!3944345))

(assert (= (and b!3944346 (not c!685155)) b!3944349))

(assert (= (and b!3944345 res!1596113) b!3944347))

(assert (= (and b!3944349 (not res!1596112)) b!3944353))

(assert (= (and b!3944353 res!1596110) b!3944348))

(assert (= (or b!3944347 b!3944353) bm!285112))

(assert (= (or b!3944345 b!3944348) bm!285111))

(assert (= (or b!3944350 bm!285111) bm!285113))

(declare-fun m!4513039 () Bool)

(assert (=> bm!285112 m!4513039))

(declare-fun m!4513041 () Bool)

(assert (=> bm!285113 m!4513041))

(declare-fun m!4513043 () Bool)

(assert (=> b!3944352 m!4513043))

(assert (=> d!1169792 d!1169924))

(declare-fun d!1169926 () Bool)

(assert (=> d!1169926 true))

(declare-fun lambda!126702 () Int)

(declare-fun order!22351 () Int)

(declare-fun order!22353 () Int)

(declare-fun dynLambda!17944 (Int Int) Int)

(declare-fun dynLambda!17945 (Int Int) Int)

(assert (=> d!1169926 (< (dynLambda!17944 order!22351 (toChars!8876 (transformation!6549 (h!47312 rules!2768)))) (dynLambda!17945 order!22353 lambda!126702))))

(assert (=> d!1169926 true))

(declare-fun order!22355 () Int)

(declare-fun dynLambda!17946 (Int Int) Int)

(assert (=> d!1169926 (< (dynLambda!17946 order!22355 (toValue!9017 (transformation!6549 (h!47312 rules!2768)))) (dynLambda!17945 order!22353 lambda!126702))))

(declare-fun Forall!1455 (Int) Bool)

(assert (=> d!1169926 (= (semiInverseModEq!2820 (toChars!8876 (transformation!6549 (h!47312 rules!2768))) (toValue!9017 (transformation!6549 (h!47312 rules!2768)))) (Forall!1455 lambda!126702))))

(declare-fun bs!586781 () Bool)

(assert (= bs!586781 d!1169926))

(declare-fun m!4513045 () Bool)

(assert (=> bs!586781 m!4513045))

(assert (=> d!1169786 d!1169926))

(declare-fun d!1169928 () Bool)

(assert (=> d!1169928 (= (inv!56110 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059))))) (value!207282 (_1!23724 (v!39304 lt!1379059))))) (isBalanced!3646 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059))))) (value!207282 (_1!23724 (v!39304 lt!1379059)))))))))

(declare-fun bs!586782 () Bool)

(assert (= bs!586782 d!1169928))

(declare-fun m!4513047 () Bool)

(assert (=> bs!586782 m!4513047))

(assert (=> tb!236621 d!1169928))

(declare-fun d!1169930 () Bool)

(assert (=> d!1169930 (= (isEmpty!24999 (_1!23723 lt!1379154)) (is-Nil!41891 (_1!23723 lt!1379154)))))

(assert (=> b!3944069 d!1169930))

(declare-fun d!1169932 () Bool)

(declare-fun lt!1379205 () Int)

(assert (=> d!1169932 (>= lt!1379205 0)))

(declare-fun e!2440732 () Int)

(assert (=> d!1169932 (= lt!1379205 e!2440732)))

(declare-fun c!685159 () Bool)

(assert (=> d!1169932 (= c!685159 (is-Nil!41890 (_2!23723 lt!1379154)))))

(assert (=> d!1169932 (= (size!31414 (_2!23723 lt!1379154)) lt!1379205)))

(declare-fun b!3944362 () Bool)

(assert (=> b!3944362 (= e!2440732 0)))

(declare-fun b!3944363 () Bool)

(assert (=> b!3944363 (= e!2440732 (+ 1 (size!31414 (t!327351 (_2!23723 lt!1379154)))))))

(assert (= (and d!1169932 c!685159) b!3944362))

(assert (= (and d!1169932 (not c!685159)) b!3944363))

(declare-fun m!4513049 () Bool)

(assert (=> b!3944363 m!4513049))

(assert (=> b!3944065 d!1169932))

(declare-fun d!1169934 () Bool)

(declare-fun lt!1379206 () Int)

(assert (=> d!1169934 (>= lt!1379206 0)))

(declare-fun e!2440733 () Int)

(assert (=> d!1169934 (= lt!1379206 e!2440733)))

(declare-fun c!685160 () Bool)

(assert (=> d!1169934 (= c!685160 (is-Nil!41890 suffix!1176))))

(assert (=> d!1169934 (= (size!31414 suffix!1176) lt!1379206)))

(declare-fun b!3944364 () Bool)

(assert (=> b!3944364 (= e!2440733 0)))

(declare-fun b!3944365 () Bool)

(assert (=> b!3944365 (= e!2440733 (+ 1 (size!31414 (t!327351 suffix!1176))))))

(assert (= (and d!1169934 c!685160) b!3944364))

(assert (= (and d!1169934 (not c!685160)) b!3944365))

(declare-fun m!4513051 () Bool)

(assert (=> b!3944365 m!4513051))

(assert (=> b!3944065 d!1169934))

(declare-fun d!1169936 () Bool)

(declare-fun lt!1379207 () Int)

(assert (=> d!1169936 (>= lt!1379207 0)))

(declare-fun e!2440734 () Int)

(assert (=> d!1169936 (= lt!1379207 e!2440734)))

(declare-fun c!685161 () Bool)

(assert (=> d!1169936 (= c!685161 (is-Nil!41890 (originalCharacters!7149 (h!47311 suffixTokens!72))))))

(assert (=> d!1169936 (= (size!31414 (originalCharacters!7149 (h!47311 suffixTokens!72))) lt!1379207)))

(declare-fun b!3944366 () Bool)

(assert (=> b!3944366 (= e!2440734 0)))

(declare-fun b!3944367 () Bool)

(assert (=> b!3944367 (= e!2440734 (+ 1 (size!31414 (t!327351 (originalCharacters!7149 (h!47311 suffixTokens!72))))))))

(assert (= (and d!1169936 c!685161) b!3944366))

(assert (= (and d!1169936 (not c!685161)) b!3944367))

(declare-fun m!4513053 () Bool)

(assert (=> b!3944367 m!4513053))

(assert (=> b!3943876 d!1169936))

(declare-fun d!1169938 () Bool)

(declare-fun c!685164 () Bool)

(assert (=> d!1169938 (= c!685164 (is-Node!12760 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) (value!207282 (h!47311 suffixTokens!72))))))))

(declare-fun e!2440739 () Bool)

(assert (=> d!1169938 (= (inv!56109 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) (value!207282 (h!47311 suffixTokens!72))))) e!2440739)))

(declare-fun b!3944374 () Bool)

(declare-fun inv!56113 (Conc!12760) Bool)

(assert (=> b!3944374 (= e!2440739 (inv!56113 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) (value!207282 (h!47311 suffixTokens!72))))))))

(declare-fun b!3944375 () Bool)

(declare-fun e!2440740 () Bool)

(assert (=> b!3944375 (= e!2440739 e!2440740)))

(declare-fun res!1596122 () Bool)

(assert (=> b!3944375 (= res!1596122 (not (is-Leaf!19742 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) (value!207282 (h!47311 suffixTokens!72)))))))))

(assert (=> b!3944375 (=> res!1596122 e!2440740)))

(declare-fun b!3944376 () Bool)

(declare-fun inv!56114 (Conc!12760) Bool)

(assert (=> b!3944376 (= e!2440740 (inv!56114 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) (value!207282 (h!47311 suffixTokens!72))))))))

(assert (= (and d!1169938 c!685164) b!3944374))

(assert (= (and d!1169938 (not c!685164)) b!3944375))

(assert (= (and b!3944375 (not res!1596122)) b!3944376))

(declare-fun m!4513055 () Bool)

(assert (=> b!3944374 m!4513055))

(declare-fun m!4513057 () Bool)

(assert (=> b!3944376 m!4513057))

(assert (=> b!3943881 d!1169938))

(declare-fun d!1169940 () Bool)

(declare-fun charsToBigInt!1 (List!42013) Int)

(assert (=> d!1169940 (= (inv!17 (value!207282 (h!47311 suffixTokens!72))) (= (charsToBigInt!1 (text!47901 (value!207282 (h!47311 suffixTokens!72)))) (value!207274 (value!207282 (h!47311 suffixTokens!72)))))))

(declare-fun bs!586783 () Bool)

(assert (= bs!586783 d!1169940))

(declare-fun m!4513059 () Bool)

(assert (=> bs!586783 m!4513059))

(assert (=> b!3943993 d!1169940))

(declare-fun d!1169942 () Bool)

(declare-fun c!685165 () Bool)

(assert (=> d!1169942 (= c!685165 (is-Node!12760 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) (value!207282 (h!47311 prefixTokens!80))))))))

(declare-fun e!2440741 () Bool)

(assert (=> d!1169942 (= (inv!56109 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) (value!207282 (h!47311 prefixTokens!80))))) e!2440741)))

(declare-fun b!3944377 () Bool)

(assert (=> b!3944377 (= e!2440741 (inv!56113 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) (value!207282 (h!47311 prefixTokens!80))))))))

(declare-fun b!3944378 () Bool)

(declare-fun e!2440742 () Bool)

(assert (=> b!3944378 (= e!2440741 e!2440742)))

(declare-fun res!1596123 () Bool)

(assert (=> b!3944378 (= res!1596123 (not (is-Leaf!19742 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) (value!207282 (h!47311 prefixTokens!80)))))))))

(assert (=> b!3944378 (=> res!1596123 e!2440742)))

(declare-fun b!3944379 () Bool)

(assert (=> b!3944379 (= e!2440742 (inv!56114 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) (value!207282 (h!47311 prefixTokens!80))))))))

(assert (= (and d!1169942 c!685165) b!3944377))

(assert (= (and d!1169942 (not c!685165)) b!3944378))

(assert (= (and b!3944378 (not res!1596123)) b!3944379))

(declare-fun m!4513061 () Bool)

(assert (=> b!3944377 m!4513061))

(declare-fun m!4513063 () Bool)

(assert (=> b!3944379 m!4513063))

(assert (=> b!3943902 d!1169942))

(declare-fun d!1169944 () Bool)

(declare-fun c!685168 () Bool)

(assert (=> d!1169944 (= c!685168 (is-Nil!41890 lt!1379130))))

(declare-fun e!2440745 () (Set C!23094))

(assert (=> d!1169944 (= (content!6334 lt!1379130) e!2440745)))

(declare-fun b!3944384 () Bool)

(assert (=> b!3944384 (= e!2440745 (as set.empty (Set C!23094)))))

(declare-fun b!3944385 () Bool)

(assert (=> b!3944385 (= e!2440745 (set.union (set.insert (h!47310 lt!1379130) (as set.empty (Set C!23094))) (content!6334 (t!327351 lt!1379130))))))

(assert (= (and d!1169944 c!685168) b!3944384))

(assert (= (and d!1169944 (not c!685168)) b!3944385))

(declare-fun m!4513065 () Bool)

(assert (=> b!3944385 m!4513065))

(declare-fun m!4513067 () Bool)

(assert (=> b!3944385 m!4513067))

(assert (=> d!1169818 d!1169944))

(declare-fun d!1169946 () Bool)

(declare-fun c!685169 () Bool)

(assert (=> d!1169946 (= c!685169 (is-Nil!41890 prefix!426))))

(declare-fun e!2440746 () (Set C!23094))

(assert (=> d!1169946 (= (content!6334 prefix!426) e!2440746)))

(declare-fun b!3944386 () Bool)

(assert (=> b!3944386 (= e!2440746 (as set.empty (Set C!23094)))))

(declare-fun b!3944387 () Bool)

(assert (=> b!3944387 (= e!2440746 (set.union (set.insert (h!47310 prefix!426) (as set.empty (Set C!23094))) (content!6334 (t!327351 prefix!426))))))

(assert (= (and d!1169946 c!685169) b!3944386))

(assert (= (and d!1169946 (not c!685169)) b!3944387))

(declare-fun m!4513069 () Bool)

(assert (=> b!3944387 m!4513069))

(assert (=> b!3944387 m!4512961))

(assert (=> d!1169818 d!1169946))

(declare-fun d!1169948 () Bool)

(declare-fun c!685170 () Bool)

(assert (=> d!1169948 (= c!685170 (is-Nil!41890 suffix!1176))))

(declare-fun e!2440747 () (Set C!23094))

(assert (=> d!1169948 (= (content!6334 suffix!1176) e!2440747)))

(declare-fun b!3944388 () Bool)

(assert (=> b!3944388 (= e!2440747 (as set.empty (Set C!23094)))))

(declare-fun b!3944389 () Bool)

(assert (=> b!3944389 (= e!2440747 (set.union (set.insert (h!47310 suffix!1176) (as set.empty (Set C!23094))) (content!6334 (t!327351 suffix!1176))))))

(assert (= (and d!1169948 c!685170) b!3944388))

(assert (= (and d!1169948 (not c!685170)) b!3944389))

(declare-fun m!4513071 () Bool)

(assert (=> b!3944389 m!4513071))

(declare-fun m!4513073 () Bool)

(assert (=> b!3944389 m!4513073))

(assert (=> d!1169818 d!1169948))

(declare-fun d!1169950 () Bool)

(declare-fun lt!1379208 () Int)

(assert (=> d!1169950 (>= lt!1379208 0)))

(declare-fun e!2440748 () Int)

(assert (=> d!1169950 (= lt!1379208 e!2440748)))

(declare-fun c!685171 () Bool)

(assert (=> d!1169950 (= c!685171 (is-Nil!41890 lt!1379104))))

(assert (=> d!1169950 (= (size!31414 lt!1379104) lt!1379208)))

(declare-fun b!3944390 () Bool)

(assert (=> b!3944390 (= e!2440748 0)))

(declare-fun b!3944391 () Bool)

(assert (=> b!3944391 (= e!2440748 (+ 1 (size!31414 (t!327351 lt!1379104))))))

(assert (= (and d!1169950 c!685171) b!3944390))

(assert (= (and d!1169950 (not c!685171)) b!3944391))

(declare-fun m!4513075 () Bool)

(assert (=> b!3944391 m!4513075))

(assert (=> b!3943937 d!1169950))

(declare-fun d!1169952 () Bool)

(declare-fun lt!1379209 () Int)

(assert (=> d!1169952 (>= lt!1379209 0)))

(declare-fun e!2440749 () Int)

(assert (=> d!1169952 (= lt!1379209 e!2440749)))

(declare-fun c!685172 () Bool)

(assert (=> d!1169952 (= c!685172 (is-Nil!41890 lt!1379063))))

(assert (=> d!1169952 (= (size!31414 lt!1379063) lt!1379209)))

(declare-fun b!3944392 () Bool)

(assert (=> b!3944392 (= e!2440749 0)))

(declare-fun b!3944393 () Bool)

(assert (=> b!3944393 (= e!2440749 (+ 1 (size!31414 (t!327351 lt!1379063))))))

(assert (= (and d!1169952 c!685172) b!3944392))

(assert (= (and d!1169952 (not c!685172)) b!3944393))

(declare-fun m!4513077 () Bool)

(assert (=> b!3944393 m!4513077))

(assert (=> b!3943937 d!1169952))

(declare-fun d!1169954 () Bool)

(declare-fun lt!1379210 () Int)

(assert (=> d!1169954 (>= lt!1379210 0)))

(declare-fun e!2440750 () Int)

(assert (=> d!1169954 (= lt!1379210 e!2440750)))

(declare-fun c!685173 () Bool)

(assert (=> d!1169954 (= c!685173 (is-Nil!41890 (_2!23724 (v!39304 lt!1379059))))))

(assert (=> d!1169954 (= (size!31414 (_2!23724 (v!39304 lt!1379059))) lt!1379210)))

(declare-fun b!3944394 () Bool)

(assert (=> b!3944394 (= e!2440750 0)))

(declare-fun b!3944395 () Bool)

(assert (=> b!3944395 (= e!2440750 (+ 1 (size!31414 (t!327351 (_2!23724 (v!39304 lt!1379059))))))))

(assert (= (and d!1169954 c!685173) b!3944394))

(assert (= (and d!1169954 (not c!685173)) b!3944395))

(declare-fun m!4513079 () Bool)

(assert (=> b!3944395 m!4513079))

(assert (=> b!3943937 d!1169954))

(declare-fun d!1169956 () Bool)

(assert (=> d!1169956 (= (isEmpty!24999 (_1!23723 lt!1379123)) (is-Nil!41891 (_1!23723 lt!1379123)))))

(assert (=> b!3943968 d!1169956))

(declare-fun d!1169958 () Bool)

(declare-fun charsToBigInt!0 (List!42013 Int) Int)

(assert (=> d!1169958 (= (inv!15 (value!207282 (h!47311 suffixTokens!72))) (= (charsToBigInt!0 (text!47902 (value!207282 (h!47311 suffixTokens!72))) 0) (value!207277 (value!207282 (h!47311 suffixTokens!72)))))))

(declare-fun bs!586784 () Bool)

(assert (= bs!586784 d!1169958))

(declare-fun m!4513081 () Bool)

(assert (=> bs!586784 m!4513081))

(assert (=> b!3943991 d!1169958))

(declare-fun b!3944396 () Bool)

(declare-fun e!2440752 () Bool)

(declare-fun e!2440751 () Bool)

(assert (=> b!3944396 (= e!2440752 e!2440751)))

(declare-fun res!1596124 () Bool)

(declare-fun lt!1379213 () tuple2!41178)

(assert (=> b!3944396 (= res!1596124 (< (size!31414 (_2!23723 lt!1379213)) (size!31414 (_2!23724 (v!39304 lt!1379121)))))))

(assert (=> b!3944396 (=> (not res!1596124) (not e!2440751))))

(declare-fun b!3944397 () Bool)

(declare-fun e!2440753 () tuple2!41178)

(assert (=> b!3944397 (= e!2440753 (tuple2!41179 Nil!41891 (_2!23724 (v!39304 lt!1379121))))))

(declare-fun d!1169960 () Bool)

(assert (=> d!1169960 e!2440752))

(declare-fun c!685175 () Bool)

(assert (=> d!1169960 (= c!685175 (> (size!31415 (_1!23723 lt!1379213)) 0))))

(assert (=> d!1169960 (= lt!1379213 e!2440753)))

(declare-fun c!685174 () Bool)

(declare-fun lt!1379211 () Option!8969)

(assert (=> d!1169960 (= c!685174 (is-Some!8968 lt!1379211))))

(assert (=> d!1169960 (= lt!1379211 (maxPrefix!3442 thiss!20629 rules!2768 (_2!23724 (v!39304 lt!1379121))))))

(assert (=> d!1169960 (= (lexList!1906 thiss!20629 rules!2768 (_2!23724 (v!39304 lt!1379121))) lt!1379213)))

(declare-fun b!3944398 () Bool)

(assert (=> b!3944398 (= e!2440752 (= (_2!23723 lt!1379213) (_2!23724 (v!39304 lt!1379121))))))

(declare-fun b!3944399 () Bool)

(declare-fun lt!1379212 () tuple2!41178)

(assert (=> b!3944399 (= e!2440753 (tuple2!41179 (Cons!41891 (_1!23724 (v!39304 lt!1379211)) (_1!23723 lt!1379212)) (_2!23723 lt!1379212)))))

(assert (=> b!3944399 (= lt!1379212 (lexList!1906 thiss!20629 rules!2768 (_2!23724 (v!39304 lt!1379211))))))

(declare-fun b!3944400 () Bool)

(assert (=> b!3944400 (= e!2440751 (not (isEmpty!24999 (_1!23723 lt!1379213))))))

(assert (= (and d!1169960 c!685174) b!3944399))

(assert (= (and d!1169960 (not c!685174)) b!3944397))

(assert (= (and d!1169960 c!685175) b!3944396))

(assert (= (and d!1169960 (not c!685175)) b!3944398))

(assert (= (and b!3944396 res!1596124) b!3944400))

(declare-fun m!4513083 () Bool)

(assert (=> b!3944396 m!4513083))

(declare-fun m!4513085 () Bool)

(assert (=> b!3944396 m!4513085))

(declare-fun m!4513087 () Bool)

(assert (=> d!1169960 m!4513087))

(declare-fun m!4513089 () Bool)

(assert (=> d!1169960 m!4513089))

(declare-fun m!4513091 () Bool)

(assert (=> b!3944399 m!4513091))

(declare-fun m!4513093 () Bool)

(assert (=> b!3944400 m!4513093))

(assert (=> b!3943967 d!1169960))

(declare-fun d!1169962 () Bool)

(assert (=> d!1169962 (= (inv!56110 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) (value!207282 (h!47311 prefixTokens!80)))) (isBalanced!3646 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) (value!207282 (h!47311 prefixTokens!80))))))))

(declare-fun bs!586785 () Bool)

(assert (= bs!586785 d!1169962))

(declare-fun m!4513095 () Bool)

(assert (=> bs!586785 m!4513095))

(assert (=> tb!236615 d!1169962))

(declare-fun d!1169964 () Bool)

(declare-fun e!2440755 () Bool)

(assert (=> d!1169964 e!2440755))

(declare-fun res!1596128 () Bool)

(assert (=> d!1169964 (=> res!1596128 e!2440755)))

(declare-fun lt!1379214 () Bool)

(assert (=> d!1169964 (= res!1596128 (not lt!1379214))))

(declare-fun e!2440754 () Bool)

(assert (=> d!1169964 (= lt!1379214 e!2440754)))

(declare-fun res!1596126 () Bool)

(assert (=> d!1169964 (=> res!1596126 e!2440754)))

(assert (=> d!1169964 (= res!1596126 (is-Nil!41890 (tail!6104 lt!1379063)))))

(assert (=> d!1169964 (= (isPrefix!3638 (tail!6104 lt!1379063) (tail!6104 lt!1379064)) lt!1379214)))

(declare-fun b!3944401 () Bool)

(declare-fun e!2440756 () Bool)

(assert (=> b!3944401 (= e!2440754 e!2440756)))

(declare-fun res!1596127 () Bool)

(assert (=> b!3944401 (=> (not res!1596127) (not e!2440756))))

(assert (=> b!3944401 (= res!1596127 (not (is-Nil!41890 (tail!6104 lt!1379064))))))

(declare-fun b!3944402 () Bool)

(declare-fun res!1596125 () Bool)

(assert (=> b!3944402 (=> (not res!1596125) (not e!2440756))))

(assert (=> b!3944402 (= res!1596125 (= (head!8378 (tail!6104 lt!1379063)) (head!8378 (tail!6104 lt!1379064))))))

(declare-fun b!3944403 () Bool)

(assert (=> b!3944403 (= e!2440756 (isPrefix!3638 (tail!6104 (tail!6104 lt!1379063)) (tail!6104 (tail!6104 lt!1379064))))))

(declare-fun b!3944404 () Bool)

(assert (=> b!3944404 (= e!2440755 (>= (size!31414 (tail!6104 lt!1379064)) (size!31414 (tail!6104 lt!1379063))))))

(assert (= (and d!1169964 (not res!1596126)) b!3944401))

(assert (= (and b!3944401 res!1596127) b!3944402))

(assert (= (and b!3944402 res!1596125) b!3944403))

(assert (= (and d!1169964 (not res!1596128)) b!3944404))

(assert (=> b!3944402 m!4512591))

(assert (=> b!3944402 m!4513009))

(assert (=> b!3944402 m!4512623))

(declare-fun m!4513097 () Bool)

(assert (=> b!3944402 m!4513097))

(assert (=> b!3944403 m!4512591))

(assert (=> b!3944403 m!4513013))

(assert (=> b!3944403 m!4512623))

(declare-fun m!4513099 () Bool)

(assert (=> b!3944403 m!4513099))

(assert (=> b!3944403 m!4513013))

(assert (=> b!3944403 m!4513099))

(declare-fun m!4513101 () Bool)

(assert (=> b!3944403 m!4513101))

(assert (=> b!3944404 m!4512623))

(declare-fun m!4513103 () Bool)

(assert (=> b!3944404 m!4513103))

(assert (=> b!3944404 m!4512591))

(assert (=> b!3944404 m!4513021))

(assert (=> b!3943942 d!1169964))

(assert (=> b!3943942 d!1169908))

(declare-fun d!1169966 () Bool)

(assert (=> d!1169966 (= (tail!6104 lt!1379064) (t!327351 lt!1379064))))

(assert (=> b!3943942 d!1169966))

(declare-fun bs!586786 () Bool)

(declare-fun d!1169968 () Bool)

(assert (= bs!586786 (and d!1169968 d!1169926)))

(declare-fun lambda!126703 () Int)

(assert (=> bs!586786 (= (and (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) (toChars!8876 (transformation!6549 (h!47312 rules!2768)))) (= (toValue!9017 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) (toValue!9017 (transformation!6549 (h!47312 rules!2768))))) (= lambda!126703 lambda!126702))))

(assert (=> d!1169968 true))

(assert (=> d!1169968 (< (dynLambda!17944 order!22351 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72))))) (dynLambda!17945 order!22353 lambda!126703))))

(assert (=> d!1169968 true))

(assert (=> d!1169968 (< (dynLambda!17946 order!22355 (toValue!9017 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72))))) (dynLambda!17945 order!22353 lambda!126703))))

(assert (=> d!1169968 (= (semiInverseModEq!2820 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) (toValue!9017 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72))))) (Forall!1455 lambda!126703))))

(declare-fun bs!586787 () Bool)

(assert (= bs!586787 d!1169968))

(declare-fun m!4513105 () Bool)

(assert (=> bs!586787 m!4513105))

(assert (=> d!1169828 d!1169968))

(declare-fun d!1169970 () Bool)

(assert (=> d!1169970 (= (isDefined!6966 lt!1379150) (not (isEmpty!25003 lt!1379150)))))

(declare-fun bs!586788 () Bool)

(assert (= bs!586788 d!1169970))

(assert (=> bs!586788 m!4512731))

(assert (=> b!3944057 d!1169970))

(declare-fun d!1169972 () Bool)

(declare-fun lt!1379215 () Int)

(assert (=> d!1169972 (>= lt!1379215 0)))

(declare-fun e!2440757 () Int)

(assert (=> d!1169972 (= lt!1379215 e!2440757)))

(declare-fun c!685176 () Bool)

(assert (=> d!1169972 (= c!685176 (is-Nil!41890 (originalCharacters!7149 (_1!23724 (v!39304 lt!1379059)))))))

(assert (=> d!1169972 (= (size!31414 (originalCharacters!7149 (_1!23724 (v!39304 lt!1379059)))) lt!1379215)))

(declare-fun b!3944405 () Bool)

(assert (=> b!3944405 (= e!2440757 0)))

(declare-fun b!3944406 () Bool)

(assert (=> b!3944406 (= e!2440757 (+ 1 (size!31414 (t!327351 (originalCharacters!7149 (_1!23724 (v!39304 lt!1379059)))))))))

(assert (= (and d!1169972 c!685176) b!3944405))

(assert (= (and d!1169972 (not c!685176)) b!3944406))

(declare-fun m!4513107 () Bool)

(assert (=> b!3944406 m!4513107))

(assert (=> d!1169808 d!1169972))

(declare-fun b!3944407 () Bool)

(declare-fun e!2440759 () List!42014)

(assert (=> b!3944407 (= e!2440759 (_2!23724 (get!13836 lt!1379150)))))

(declare-fun d!1169974 () Bool)

(declare-fun e!2440758 () Bool)

(assert (=> d!1169974 e!2440758))

(declare-fun res!1596130 () Bool)

(assert (=> d!1169974 (=> (not res!1596130) (not e!2440758))))

(declare-fun lt!1379216 () List!42014)

(assert (=> d!1169974 (= res!1596130 (= (content!6334 lt!1379216) (set.union (content!6334 (list!15557 (charsOf!4367 (_1!23724 (get!13836 lt!1379150))))) (content!6334 (_2!23724 (get!13836 lt!1379150))))))))

(assert (=> d!1169974 (= lt!1379216 e!2440759)))

(declare-fun c!685177 () Bool)

(assert (=> d!1169974 (= c!685177 (is-Nil!41890 (list!15557 (charsOf!4367 (_1!23724 (get!13836 lt!1379150))))))))

(assert (=> d!1169974 (= (++!10856 (list!15557 (charsOf!4367 (_1!23724 (get!13836 lt!1379150)))) (_2!23724 (get!13836 lt!1379150))) lt!1379216)))

(declare-fun b!3944408 () Bool)

(assert (=> b!3944408 (= e!2440759 (Cons!41890 (h!47310 (list!15557 (charsOf!4367 (_1!23724 (get!13836 lt!1379150))))) (++!10856 (t!327351 (list!15557 (charsOf!4367 (_1!23724 (get!13836 lt!1379150))))) (_2!23724 (get!13836 lt!1379150)))))))

(declare-fun b!3944409 () Bool)

(declare-fun res!1596129 () Bool)

(assert (=> b!3944409 (=> (not res!1596129) (not e!2440758))))

(assert (=> b!3944409 (= res!1596129 (= (size!31414 lt!1379216) (+ (size!31414 (list!15557 (charsOf!4367 (_1!23724 (get!13836 lt!1379150))))) (size!31414 (_2!23724 (get!13836 lt!1379150))))))))

(declare-fun b!3944410 () Bool)

(assert (=> b!3944410 (= e!2440758 (or (not (= (_2!23724 (get!13836 lt!1379150)) Nil!41890)) (= lt!1379216 (list!15557 (charsOf!4367 (_1!23724 (get!13836 lt!1379150)))))))))

(assert (= (and d!1169974 c!685177) b!3944407))

(assert (= (and d!1169974 (not c!685177)) b!3944408))

(assert (= (and d!1169974 res!1596130) b!3944409))

(assert (= (and b!3944409 res!1596129) b!3944410))

(declare-fun m!4513109 () Bool)

(assert (=> d!1169974 m!4513109))

(assert (=> d!1169974 m!4512743))

(declare-fun m!4513111 () Bool)

(assert (=> d!1169974 m!4513111))

(declare-fun m!4513113 () Bool)

(assert (=> d!1169974 m!4513113))

(declare-fun m!4513115 () Bool)

(assert (=> b!3944408 m!4513115))

(declare-fun m!4513117 () Bool)

(assert (=> b!3944409 m!4513117))

(assert (=> b!3944409 m!4512743))

(declare-fun m!4513119 () Bool)

(assert (=> b!3944409 m!4513119))

(assert (=> b!3944409 m!4512729))

(assert (=> b!3944059 d!1169974))

(declare-fun d!1169976 () Bool)

(assert (=> d!1169976 (= (list!15557 (charsOf!4367 (_1!23724 (get!13836 lt!1379150)))) (list!15559 (c!685074 (charsOf!4367 (_1!23724 (get!13836 lt!1379150))))))))

(declare-fun bs!586789 () Bool)

(assert (= bs!586789 d!1169976))

(declare-fun m!4513121 () Bool)

(assert (=> bs!586789 m!4513121))

(assert (=> b!3944059 d!1169976))

(declare-fun d!1169978 () Bool)

(declare-fun lt!1379217 () BalanceConc!25114)

(assert (=> d!1169978 (= (list!15557 lt!1379217) (originalCharacters!7149 (_1!23724 (get!13836 lt!1379150))))))

(assert (=> d!1169978 (= lt!1379217 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (get!13836 lt!1379150))))) (value!207282 (_1!23724 (get!13836 lt!1379150)))))))

(assert (=> d!1169978 (= (charsOf!4367 (_1!23724 (get!13836 lt!1379150))) lt!1379217)))

(declare-fun b_lambda!115355 () Bool)

(assert (=> (not b_lambda!115355) (not d!1169978)))

(declare-fun t!327433 () Bool)

(declare-fun tb!236681 () Bool)

(assert (=> (and b!3943797 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (get!13836 lt!1379150)))))) t!327433) tb!236681))

(declare-fun b!3944411 () Bool)

(declare-fun e!2440760 () Bool)

(declare-fun tp!1200711 () Bool)

(assert (=> b!3944411 (= e!2440760 (and (inv!56109 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (get!13836 lt!1379150))))) (value!207282 (_1!23724 (get!13836 lt!1379150)))))) tp!1200711))))

(declare-fun result!286694 () Bool)

(assert (=> tb!236681 (= result!286694 (and (inv!56110 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (get!13836 lt!1379150))))) (value!207282 (_1!23724 (get!13836 lt!1379150))))) e!2440760))))

(assert (= tb!236681 b!3944411))

(declare-fun m!4513123 () Bool)

(assert (=> b!3944411 m!4513123))

(declare-fun m!4513125 () Bool)

(assert (=> tb!236681 m!4513125))

(assert (=> d!1169978 t!327433))

(declare-fun b_and!301643 () Bool)

(assert (= b_and!301597 (and (=> t!327433 result!286694) b_and!301643)))

(declare-fun tb!236683 () Bool)

(declare-fun t!327435 () Bool)

(assert (=> (and b!3944132 (= (toChars!8876 (transformation!6549 (h!47312 (t!327353 rules!2768)))) (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (get!13836 lt!1379150)))))) t!327435) tb!236683))

(declare-fun result!286696 () Bool)

(assert (= result!286696 result!286694))

(assert (=> d!1169978 t!327435))

(declare-fun b_and!301645 () Bool)

(assert (= b_and!301617 (and (=> t!327435 result!286696) b_and!301645)))

(declare-fun tb!236685 () Bool)

(declare-fun t!327437 () Bool)

(assert (=> (and b!3944083 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72))))) (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (get!13836 lt!1379150)))))) t!327437) tb!236685))

(declare-fun result!286698 () Bool)

(assert (= result!286698 result!286694))

(assert (=> d!1169978 t!327437))

(declare-fun b_and!301647 () Bool)

(assert (= b_and!301609 (and (=> t!327437 result!286698) b_and!301647)))

(declare-fun tb!236687 () Bool)

(declare-fun t!327439 () Bool)

(assert (=> (and b!3944109 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80))))) (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (get!13836 lt!1379150)))))) t!327439) tb!236687))

(declare-fun result!286700 () Bool)

(assert (= result!286700 result!286694))

(assert (=> d!1169978 t!327439))

(declare-fun b_and!301649 () Bool)

(assert (= b_and!301613 (and (=> t!327439 result!286700) b_and!301649)))

(declare-fun t!327441 () Bool)

(declare-fun tb!236689 () Bool)

(assert (=> (and b!3943796 (= (toChars!8876 (transformation!6549 (h!47312 rules!2768))) (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (get!13836 lt!1379150)))))) t!327441) tb!236689))

(declare-fun result!286702 () Bool)

(assert (= result!286702 result!286694))

(assert (=> d!1169978 t!327441))

(declare-fun b_and!301651 () Bool)

(assert (= b_and!301595 (and (=> t!327441 result!286702) b_and!301651)))

(declare-fun tb!236691 () Bool)

(declare-fun t!327443 () Bool)

(assert (=> (and b!3943798 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (get!13836 lt!1379150)))))) t!327443) tb!236691))

(declare-fun result!286704 () Bool)

(assert (= result!286704 result!286694))

(assert (=> d!1169978 t!327443))

(declare-fun b_and!301653 () Bool)

(assert (= b_and!301599 (and (=> t!327443 result!286704) b_and!301653)))

(declare-fun m!4513127 () Bool)

(assert (=> d!1169978 m!4513127))

(declare-fun m!4513129 () Bool)

(assert (=> d!1169978 m!4513129))

(assert (=> b!3944059 d!1169978))

(declare-fun d!1169980 () Bool)

(assert (=> d!1169980 (= (get!13836 lt!1379150) (v!39304 lt!1379150))))

(assert (=> b!3944059 d!1169980))

(declare-fun d!1169982 () Bool)

(declare-fun c!685179 () Bool)

(assert (=> d!1169982 (= c!685179 (is-IntegerValue!20337 (value!207282 (h!47311 (t!327352 suffixTokens!72)))))))

(declare-fun e!2440761 () Bool)

(assert (=> d!1169982 (= (inv!21 (value!207282 (h!47311 (t!327352 suffixTokens!72)))) e!2440761)))

(declare-fun b!3944412 () Bool)

(declare-fun e!2440763 () Bool)

(assert (=> b!3944412 (= e!2440763 (inv!15 (value!207282 (h!47311 (t!327352 suffixTokens!72)))))))

(declare-fun b!3944413 () Bool)

(declare-fun e!2440762 () Bool)

(assert (=> b!3944413 (= e!2440761 e!2440762)))

(declare-fun c!685178 () Bool)

(assert (=> b!3944413 (= c!685178 (is-IntegerValue!20338 (value!207282 (h!47311 (t!327352 suffixTokens!72)))))))

(declare-fun b!3944414 () Bool)

(assert (=> b!3944414 (= e!2440762 (inv!17 (value!207282 (h!47311 (t!327352 suffixTokens!72)))))))

(declare-fun b!3944415 () Bool)

(assert (=> b!3944415 (= e!2440761 (inv!16 (value!207282 (h!47311 (t!327352 suffixTokens!72)))))))

(declare-fun b!3944416 () Bool)

(declare-fun res!1596131 () Bool)

(assert (=> b!3944416 (=> res!1596131 e!2440763)))

(assert (=> b!3944416 (= res!1596131 (not (is-IntegerValue!20339 (value!207282 (h!47311 (t!327352 suffixTokens!72))))))))

(assert (=> b!3944416 (= e!2440762 e!2440763)))

(assert (= (and d!1169982 c!685179) b!3944415))

(assert (= (and d!1169982 (not c!685179)) b!3944413))

(assert (= (and b!3944413 c!685178) b!3944414))

(assert (= (and b!3944413 (not c!685178)) b!3944416))

(assert (= (and b!3944416 (not res!1596131)) b!3944412))

(declare-fun m!4513131 () Bool)

(assert (=> b!3944412 m!4513131))

(declare-fun m!4513133 () Bool)

(assert (=> b!3944414 m!4513133))

(declare-fun m!4513135 () Bool)

(assert (=> b!3944415 m!4513135))

(assert (=> b!3944081 d!1169982))

(declare-fun b!3944445 () Bool)

(declare-fun e!2440781 () Bool)

(assert (=> b!3944445 (= e!2440781 (= (head!8378 (list!15557 (charsOf!4367 (_1!23724 (get!13836 lt!1379150))))) (c!685073 (regex!6549 (rule!9511 (_1!23724 (get!13836 lt!1379150)))))))))

(declare-fun b!3944446 () Bool)

(declare-fun e!2440782 () Bool)

(declare-fun lt!1379220 () Bool)

(declare-fun call!285121 () Bool)

(assert (=> b!3944446 (= e!2440782 (= lt!1379220 call!285121))))

(declare-fun b!3944447 () Bool)

(declare-fun e!2440778 () Bool)

(declare-fun e!2440780 () Bool)

(assert (=> b!3944447 (= e!2440778 e!2440780)))

(declare-fun res!1596149 () Bool)

(assert (=> b!3944447 (=> res!1596149 e!2440780)))

(assert (=> b!3944447 (= res!1596149 call!285121)))

(declare-fun b!3944448 () Bool)

(assert (=> b!3944448 (= e!2440780 (not (= (head!8378 (list!15557 (charsOf!4367 (_1!23724 (get!13836 lt!1379150))))) (c!685073 (regex!6549 (rule!9511 (_1!23724 (get!13836 lt!1379150))))))))))

(declare-fun b!3944449 () Bool)

(declare-fun e!2440784 () Bool)

(assert (=> b!3944449 (= e!2440784 e!2440778)))

(declare-fun res!1596155 () Bool)

(assert (=> b!3944449 (=> (not res!1596155) (not e!2440778))))

(assert (=> b!3944449 (= res!1596155 (not lt!1379220))))

(declare-fun b!3944450 () Bool)

(declare-fun res!1596152 () Bool)

(assert (=> b!3944450 (=> (not res!1596152) (not e!2440781))))

(assert (=> b!3944450 (= res!1596152 (not call!285121))))

(declare-fun b!3944451 () Bool)

(declare-fun res!1596150 () Bool)

(assert (=> b!3944451 (=> res!1596150 e!2440784)))

(assert (=> b!3944451 (= res!1596150 e!2440781)))

(declare-fun res!1596148 () Bool)

(assert (=> b!3944451 (=> (not res!1596148) (not e!2440781))))

(assert (=> b!3944451 (= res!1596148 lt!1379220)))

(declare-fun b!3944452 () Bool)

(declare-fun e!2440779 () Bool)

(assert (=> b!3944452 (= e!2440779 (nullable!4016 (regex!6549 (rule!9511 (_1!23724 (get!13836 lt!1379150))))))))

(declare-fun b!3944453 () Bool)

(declare-fun res!1596153 () Bool)

(assert (=> b!3944453 (=> res!1596153 e!2440780)))

(assert (=> b!3944453 (= res!1596153 (not (isEmpty!24997 (tail!6104 (list!15557 (charsOf!4367 (_1!23724 (get!13836 lt!1379150))))))))))

(declare-fun b!3944454 () Bool)

(declare-fun e!2440783 () Bool)

(assert (=> b!3944454 (= e!2440782 e!2440783)))

(declare-fun c!685186 () Bool)

(assert (=> b!3944454 (= c!685186 (is-EmptyLang!11454 (regex!6549 (rule!9511 (_1!23724 (get!13836 lt!1379150))))))))

(declare-fun b!3944455 () Bool)

(assert (=> b!3944455 (= e!2440783 (not lt!1379220))))

(declare-fun bm!285116 () Bool)

(assert (=> bm!285116 (= call!285121 (isEmpty!24997 (list!15557 (charsOf!4367 (_1!23724 (get!13836 lt!1379150))))))))

(declare-fun b!3944456 () Bool)

(declare-fun res!1596154 () Bool)

(assert (=> b!3944456 (=> (not res!1596154) (not e!2440781))))

(assert (=> b!3944456 (= res!1596154 (isEmpty!24997 (tail!6104 (list!15557 (charsOf!4367 (_1!23724 (get!13836 lt!1379150)))))))))

(declare-fun d!1169984 () Bool)

(assert (=> d!1169984 e!2440782))

(declare-fun c!685187 () Bool)

(assert (=> d!1169984 (= c!685187 (is-EmptyExpr!11454 (regex!6549 (rule!9511 (_1!23724 (get!13836 lt!1379150))))))))

(assert (=> d!1169984 (= lt!1379220 e!2440779)))

(declare-fun c!685188 () Bool)

(assert (=> d!1169984 (= c!685188 (isEmpty!24997 (list!15557 (charsOf!4367 (_1!23724 (get!13836 lt!1379150))))))))

(assert (=> d!1169984 (validRegex!5215 (regex!6549 (rule!9511 (_1!23724 (get!13836 lt!1379150)))))))

(assert (=> d!1169984 (= (matchR!5499 (regex!6549 (rule!9511 (_1!23724 (get!13836 lt!1379150)))) (list!15557 (charsOf!4367 (_1!23724 (get!13836 lt!1379150))))) lt!1379220)))

(declare-fun b!3944457 () Bool)

(declare-fun res!1596151 () Bool)

(assert (=> b!3944457 (=> res!1596151 e!2440784)))

(assert (=> b!3944457 (= res!1596151 (not (is-ElementMatch!11454 (regex!6549 (rule!9511 (_1!23724 (get!13836 lt!1379150)))))))))

(assert (=> b!3944457 (= e!2440783 e!2440784)))

(declare-fun b!3944458 () Bool)

(declare-fun derivativeStep!3458 (Regex!11454 C!23094) Regex!11454)

(assert (=> b!3944458 (= e!2440779 (matchR!5499 (derivativeStep!3458 (regex!6549 (rule!9511 (_1!23724 (get!13836 lt!1379150)))) (head!8378 (list!15557 (charsOf!4367 (_1!23724 (get!13836 lt!1379150)))))) (tail!6104 (list!15557 (charsOf!4367 (_1!23724 (get!13836 lt!1379150)))))))))

(assert (= (and d!1169984 c!685188) b!3944452))

(assert (= (and d!1169984 (not c!685188)) b!3944458))

(assert (= (and d!1169984 c!685187) b!3944446))

(assert (= (and d!1169984 (not c!685187)) b!3944454))

(assert (= (and b!3944454 c!685186) b!3944455))

(assert (= (and b!3944454 (not c!685186)) b!3944457))

(assert (= (and b!3944457 (not res!1596151)) b!3944451))

(assert (= (and b!3944451 res!1596148) b!3944450))

(assert (= (and b!3944450 res!1596152) b!3944456))

(assert (= (and b!3944456 res!1596154) b!3944445))

(assert (= (and b!3944451 (not res!1596150)) b!3944449))

(assert (= (and b!3944449 res!1596155) b!3944447))

(assert (= (and b!3944447 (not res!1596149)) b!3944453))

(assert (= (and b!3944453 (not res!1596153)) b!3944448))

(assert (= (or b!3944446 b!3944447 b!3944450) bm!285116))

(assert (=> b!3944453 m!4512743))

(declare-fun m!4513137 () Bool)

(assert (=> b!3944453 m!4513137))

(assert (=> b!3944453 m!4513137))

(declare-fun m!4513139 () Bool)

(assert (=> b!3944453 m!4513139))

(declare-fun m!4513141 () Bool)

(assert (=> b!3944452 m!4513141))

(assert (=> b!3944456 m!4512743))

(assert (=> b!3944456 m!4513137))

(assert (=> b!3944456 m!4513137))

(assert (=> b!3944456 m!4513139))

(assert (=> d!1169984 m!4512743))

(declare-fun m!4513143 () Bool)

(assert (=> d!1169984 m!4513143))

(declare-fun m!4513145 () Bool)

(assert (=> d!1169984 m!4513145))

(assert (=> b!3944445 m!4512743))

(declare-fun m!4513147 () Bool)

(assert (=> b!3944445 m!4513147))

(assert (=> b!3944458 m!4512743))

(assert (=> b!3944458 m!4513147))

(assert (=> b!3944458 m!4513147))

(declare-fun m!4513149 () Bool)

(assert (=> b!3944458 m!4513149))

(assert (=> b!3944458 m!4512743))

(assert (=> b!3944458 m!4513137))

(assert (=> b!3944458 m!4513149))

(assert (=> b!3944458 m!4513137))

(declare-fun m!4513151 () Bool)

(assert (=> b!3944458 m!4513151))

(assert (=> b!3944448 m!4512743))

(assert (=> b!3944448 m!4513147))

(assert (=> bm!285116 m!4512743))

(assert (=> bm!285116 m!4513143))

(assert (=> b!3944055 d!1169984))

(assert (=> b!3944055 d!1169980))

(assert (=> b!3944055 d!1169976))

(assert (=> b!3944055 d!1169978))

(declare-fun b!3944459 () Bool)

(declare-fun e!2440786 () List!42014)

(assert (=> b!3944459 (= e!2440786 lt!1379095)))

(declare-fun d!1169988 () Bool)

(declare-fun e!2440785 () Bool)

(assert (=> d!1169988 e!2440785))

(declare-fun res!1596157 () Bool)

(assert (=> d!1169988 (=> (not res!1596157) (not e!2440785))))

(declare-fun lt!1379221 () List!42014)

(assert (=> d!1169988 (= res!1596157 (= (content!6334 lt!1379221) (set.union (content!6334 lt!1379063) (content!6334 lt!1379095))))))

(assert (=> d!1169988 (= lt!1379221 e!2440786)))

(declare-fun c!685189 () Bool)

(assert (=> d!1169988 (= c!685189 (is-Nil!41890 lt!1379063))))

(assert (=> d!1169988 (= (++!10856 lt!1379063 lt!1379095) lt!1379221)))

(declare-fun b!3944460 () Bool)

(assert (=> b!3944460 (= e!2440786 (Cons!41890 (h!47310 lt!1379063) (++!10856 (t!327351 lt!1379063) lt!1379095)))))

(declare-fun b!3944461 () Bool)

(declare-fun res!1596156 () Bool)

(assert (=> b!3944461 (=> (not res!1596156) (not e!2440785))))

(assert (=> b!3944461 (= res!1596156 (= (size!31414 lt!1379221) (+ (size!31414 lt!1379063) (size!31414 lt!1379095))))))

(declare-fun b!3944462 () Bool)

(assert (=> b!3944462 (= e!2440785 (or (not (= lt!1379095 Nil!41890)) (= lt!1379221 lt!1379063)))))

(assert (= (and d!1169988 c!685189) b!3944459))

(assert (= (and d!1169988 (not c!685189)) b!3944460))

(assert (= (and d!1169988 res!1596157) b!3944461))

(assert (= (and b!3944461 res!1596156) b!3944462))

(declare-fun m!4513153 () Bool)

(assert (=> d!1169988 m!4513153))

(assert (=> d!1169988 m!4512601))

(declare-fun m!4513155 () Bool)

(assert (=> d!1169988 m!4513155))

(declare-fun m!4513157 () Bool)

(assert (=> b!3944460 m!4513157))

(declare-fun m!4513159 () Bool)

(assert (=> b!3944461 m!4513159))

(assert (=> b!3944461 m!4512579))

(declare-fun m!4513161 () Bool)

(assert (=> b!3944461 m!4513161))

(assert (=> d!1169796 d!1169988))

(declare-fun d!1169990 () Bool)

(declare-fun lt!1379224 () Int)

(assert (=> d!1169990 (>= lt!1379224 0)))

(declare-fun e!2440791 () Int)

(assert (=> d!1169990 (= lt!1379224 e!2440791)))

(declare-fun c!685190 () Bool)

(assert (=> d!1169990 (= c!685190 (is-Nil!41890 lt!1379060))))

(assert (=> d!1169990 (= (size!31414 lt!1379060) lt!1379224)))

(declare-fun b!3944467 () Bool)

(assert (=> b!3944467 (= e!2440791 0)))

(declare-fun b!3944468 () Bool)

(assert (=> b!3944468 (= e!2440791 (+ 1 (size!31414 (t!327351 lt!1379060))))))

(assert (= (and d!1169990 c!685190) b!3944467))

(assert (= (and d!1169990 (not c!685190)) b!3944468))

(declare-fun m!4513163 () Bool)

(assert (=> b!3944468 m!4513163))

(assert (=> d!1169796 d!1169990))

(assert (=> d!1169796 d!1169952))

(declare-fun d!1169992 () Bool)

(declare-fun lt!1379225 () Int)

(assert (=> d!1169992 (>= lt!1379225 0)))

(declare-fun e!2440792 () Int)

(assert (=> d!1169992 (= lt!1379225 e!2440792)))

(declare-fun c!685191 () Bool)

(assert (=> d!1169992 (= c!685191 (is-Nil!41890 (originalCharacters!7149 (h!47311 prefixTokens!80))))))

(assert (=> d!1169992 (= (size!31414 (originalCharacters!7149 (h!47311 prefixTokens!80))) lt!1379225)))

(declare-fun b!3944469 () Bool)

(assert (=> b!3944469 (= e!2440792 0)))

(declare-fun b!3944470 () Bool)

(assert (=> b!3944470 (= e!2440792 (+ 1 (size!31414 (t!327351 (originalCharacters!7149 (h!47311 prefixTokens!80))))))))

(assert (= (and d!1169992 c!685191) b!3944469))

(assert (= (and d!1169992 (not c!685191)) b!3944470))

(declare-fun m!4513165 () Bool)

(assert (=> b!3944470 m!4513165))

(assert (=> b!3943901 d!1169992))

(declare-fun d!1169994 () Bool)

(assert (=> d!1169994 true))

(declare-fun lambda!126706 () Int)

(declare-fun order!22357 () Int)

(declare-fun dynLambda!17947 (Int Int) Int)

(assert (=> d!1169994 (< (dynLambda!17946 order!22355 (toValue!9017 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80))))) (dynLambda!17947 order!22357 lambda!126706))))

(declare-fun Forall2!1054 (Int) Bool)

(assert (=> d!1169994 (= (equivClasses!2719 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) (toValue!9017 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80))))) (Forall2!1054 lambda!126706))))

(declare-fun bs!586790 () Bool)

(assert (= bs!586790 d!1169994))

(declare-fun m!4513175 () Bool)

(assert (=> bs!586790 m!4513175))

(assert (=> b!3943990 d!1169994))

(declare-fun d!1170002 () Bool)

(assert (=> d!1170002 true))

(declare-fun lt!1379232 () Bool)

(assert (=> d!1170002 (= lt!1379232 (rulesValidInductive!2367 thiss!20629 rules!2768))))

(declare-fun lambda!126709 () Int)

(declare-fun forall!8322 (List!42016 Int) Bool)

(assert (=> d!1170002 (= lt!1379232 (forall!8322 rules!2768 lambda!126709))))

(assert (=> d!1170002 (= (rulesValid!2554 thiss!20629 rules!2768) lt!1379232)))

(declare-fun bs!586793 () Bool)

(assert (= bs!586793 d!1170002))

(assert (=> bs!586793 m!4512737))

(declare-fun m!4513181 () Bool)

(assert (=> bs!586793 m!4513181))

(assert (=> d!1169832 d!1170002))

(declare-fun d!1170008 () Bool)

(declare-fun lt!1379233 () Int)

(assert (=> d!1170008 (>= lt!1379233 0)))

(declare-fun e!2440800 () Int)

(assert (=> d!1170008 (= lt!1379233 e!2440800)))

(declare-fun c!685195 () Bool)

(assert (=> d!1170008 (= c!685195 (is-Nil!41890 lt!1379130))))

(assert (=> d!1170008 (= (size!31414 lt!1379130) lt!1379233)))

(declare-fun b!3944485 () Bool)

(assert (=> b!3944485 (= e!2440800 0)))

(declare-fun b!3944486 () Bool)

(assert (=> b!3944486 (= e!2440800 (+ 1 (size!31414 (t!327351 lt!1379130))))))

(assert (= (and d!1170008 c!685195) b!3944485))

(assert (= (and d!1170008 (not c!685195)) b!3944486))

(declare-fun m!4513183 () Bool)

(assert (=> b!3944486 m!4513183))

(assert (=> b!3943988 d!1170008))

(declare-fun d!1170010 () Bool)

(declare-fun lt!1379234 () Int)

(assert (=> d!1170010 (>= lt!1379234 0)))

(declare-fun e!2440801 () Int)

(assert (=> d!1170010 (= lt!1379234 e!2440801)))

(declare-fun c!685196 () Bool)

(assert (=> d!1170010 (= c!685196 (is-Nil!41890 prefix!426))))

(assert (=> d!1170010 (= (size!31414 prefix!426) lt!1379234)))

(declare-fun b!3944487 () Bool)

(assert (=> b!3944487 (= e!2440801 0)))

(declare-fun b!3944488 () Bool)

(assert (=> b!3944488 (= e!2440801 (+ 1 (size!31414 (t!327351 prefix!426))))))

(assert (= (and d!1170010 c!685196) b!3944487))

(assert (= (and d!1170010 (not c!685196)) b!3944488))

(assert (=> b!3944488 m!4512967))

(assert (=> b!3943988 d!1170010))

(assert (=> b!3943988 d!1169934))

(declare-fun d!1170012 () Bool)

(declare-fun lt!1379235 () List!42014)

(assert (=> d!1170012 (= (++!10856 (t!327351 lt!1379063) lt!1379235) (tail!6104 lt!1379060))))

(declare-fun e!2440802 () List!42014)

(assert (=> d!1170012 (= lt!1379235 e!2440802)))

(declare-fun c!685197 () Bool)

(assert (=> d!1170012 (= c!685197 (is-Cons!41890 (t!327351 lt!1379063)))))

(assert (=> d!1170012 (>= (size!31414 (tail!6104 lt!1379060)) (size!31414 (t!327351 lt!1379063)))))

(assert (=> d!1170012 (= (getSuffix!2089 (tail!6104 lt!1379060) (t!327351 lt!1379063)) lt!1379235)))

(declare-fun b!3944489 () Bool)

(assert (=> b!3944489 (= e!2440802 (getSuffix!2089 (tail!6104 (tail!6104 lt!1379060)) (t!327351 (t!327351 lt!1379063))))))

(declare-fun b!3944490 () Bool)

(assert (=> b!3944490 (= e!2440802 (tail!6104 lt!1379060))))

(assert (= (and d!1170012 c!685197) b!3944489))

(assert (= (and d!1170012 (not c!685197)) b!3944490))

(declare-fun m!4513185 () Bool)

(assert (=> d!1170012 m!4513185))

(assert (=> d!1170012 m!4512581))

(assert (=> d!1170012 m!4513019))

(assert (=> d!1170012 m!4513077))

(assert (=> b!3944489 m!4512581))

(assert (=> b!3944489 m!4513015))

(assert (=> b!3944489 m!4513015))

(declare-fun m!4513187 () Bool)

(assert (=> b!3944489 m!4513187))

(assert (=> b!3943913 d!1170012))

(assert (=> b!3943913 d!1169910))

(assert (=> b!3944051 d!1169976))

(assert (=> b!3944051 d!1169978))

(assert (=> b!3944051 d!1169980))

(declare-fun d!1170014 () Bool)

(assert (=> d!1170014 (= (isEmpty!24997 (originalCharacters!7149 (h!47311 prefixTokens!80))) (is-Nil!41890 (originalCharacters!7149 (h!47311 prefixTokens!80))))))

(assert (=> d!1169788 d!1170014))

(declare-fun d!1170016 () Bool)

(assert (=> d!1170016 (= (inv!17 (value!207282 (h!47311 prefixTokens!80))) (= (charsToBigInt!1 (text!47901 (value!207282 (h!47311 prefixTokens!80)))) (value!207274 (value!207282 (h!47311 prefixTokens!80)))))))

(declare-fun bs!586794 () Bool)

(assert (= bs!586794 d!1170016))

(declare-fun m!4513189 () Bool)

(assert (=> bs!586794 m!4513189))

(assert (=> b!3943894 d!1170016))

(declare-fun d!1170018 () Bool)

(declare-fun nullableFct!1134 (Regex!11454) Bool)

(assert (=> d!1170018 (= (nullable!4016 (regex!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059))))) (nullableFct!1134 (regex!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059))))))))

(declare-fun bs!586795 () Bool)

(assert (= bs!586795 d!1170018))

(declare-fun m!4513191 () Bool)

(assert (=> bs!586795 m!4513191))

(assert (=> b!3943907 d!1170018))

(declare-fun d!1170020 () Bool)

(assert (=> d!1170020 (= (inv!16 (value!207282 (h!47311 suffixTokens!72))) (= (charsToInt!0 (text!47900 (value!207282 (h!47311 suffixTokens!72)))) (value!207273 (value!207282 (h!47311 suffixTokens!72)))))))

(declare-fun bs!586796 () Bool)

(assert (= bs!586796 d!1170020))

(declare-fun m!4513193 () Bool)

(assert (=> bs!586796 m!4513193))

(assert (=> b!3943994 d!1170020))

(declare-fun b!3944497 () Bool)

(declare-fun e!2440808 () Bool)

(declare-fun e!2440807 () Bool)

(assert (=> b!3944497 (= e!2440808 e!2440807)))

(declare-fun res!1596168 () Bool)

(declare-fun lt!1379238 () tuple2!41178)

(assert (=> b!3944497 (= res!1596168 (< (size!31414 (_2!23723 lt!1379238)) (size!31414 (_2!23724 (v!39304 lt!1379152)))))))

(assert (=> b!3944497 (=> (not res!1596168) (not e!2440807))))

(declare-fun b!3944498 () Bool)

(declare-fun e!2440809 () tuple2!41178)

(assert (=> b!3944498 (= e!2440809 (tuple2!41179 Nil!41891 (_2!23724 (v!39304 lt!1379152))))))

(declare-fun d!1170022 () Bool)

(assert (=> d!1170022 e!2440808))

(declare-fun c!685201 () Bool)

(assert (=> d!1170022 (= c!685201 (> (size!31415 (_1!23723 lt!1379238)) 0))))

(assert (=> d!1170022 (= lt!1379238 e!2440809)))

(declare-fun c!685200 () Bool)

(declare-fun lt!1379236 () Option!8969)

(assert (=> d!1170022 (= c!685200 (is-Some!8968 lt!1379236))))

(assert (=> d!1170022 (= lt!1379236 (maxPrefix!3442 thiss!20629 rules!2768 (_2!23724 (v!39304 lt!1379152))))))

(assert (=> d!1170022 (= (lexList!1906 thiss!20629 rules!2768 (_2!23724 (v!39304 lt!1379152))) lt!1379238)))

(declare-fun b!3944499 () Bool)

(assert (=> b!3944499 (= e!2440808 (= (_2!23723 lt!1379238) (_2!23724 (v!39304 lt!1379152))))))

(declare-fun b!3944500 () Bool)

(declare-fun lt!1379237 () tuple2!41178)

(assert (=> b!3944500 (= e!2440809 (tuple2!41179 (Cons!41891 (_1!23724 (v!39304 lt!1379236)) (_1!23723 lt!1379237)) (_2!23723 lt!1379237)))))

(assert (=> b!3944500 (= lt!1379237 (lexList!1906 thiss!20629 rules!2768 (_2!23724 (v!39304 lt!1379236))))))

(declare-fun b!3944501 () Bool)

(assert (=> b!3944501 (= e!2440807 (not (isEmpty!24999 (_1!23723 lt!1379238))))))

(assert (= (and d!1170022 c!685200) b!3944500))

(assert (= (and d!1170022 (not c!685200)) b!3944498))

(assert (= (and d!1170022 c!685201) b!3944497))

(assert (= (and d!1170022 (not c!685201)) b!3944499))

(assert (= (and b!3944497 res!1596168) b!3944501))

(declare-fun m!4513199 () Bool)

(assert (=> b!3944497 m!4513199))

(declare-fun m!4513201 () Bool)

(assert (=> b!3944497 m!4513201))

(declare-fun m!4513203 () Bool)

(assert (=> d!1170022 m!4513203))

(declare-fun m!4513205 () Bool)

(assert (=> d!1170022 m!4513205))

(declare-fun m!4513207 () Bool)

(assert (=> b!3944500 m!4513207))

(declare-fun m!4513209 () Bool)

(assert (=> b!3944501 m!4513209))

(assert (=> b!3944068 d!1170022))

(declare-fun bs!586797 () Bool)

(declare-fun d!1170026 () Bool)

(assert (= bs!586797 (and d!1170026 d!1169926)))

(declare-fun lambda!126710 () Int)

(assert (=> bs!586797 (= (and (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) (toChars!8876 (transformation!6549 (h!47312 rules!2768)))) (= (toValue!9017 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) (toValue!9017 (transformation!6549 (h!47312 rules!2768))))) (= lambda!126710 lambda!126702))))

(declare-fun bs!586798 () Bool)

(assert (= bs!586798 (and d!1170026 d!1169968)))

(assert (=> bs!586798 (= (and (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72))))) (= (toValue!9017 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) (toValue!9017 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))))) (= lambda!126710 lambda!126703))))

(assert (=> d!1170026 true))

(assert (=> d!1170026 (< (dynLambda!17944 order!22351 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80))))) (dynLambda!17945 order!22353 lambda!126710))))

(assert (=> d!1170026 true))

(assert (=> d!1170026 (< (dynLambda!17946 order!22355 (toValue!9017 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80))))) (dynLambda!17945 order!22353 lambda!126710))))

(assert (=> d!1170026 (= (semiInverseModEq!2820 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) (toValue!9017 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80))))) (Forall!1455 lambda!126710))))

(declare-fun bs!586799 () Bool)

(assert (= bs!586799 d!1170026))

(declare-fun m!4513213 () Bool)

(assert (=> bs!586799 m!4513213))

(assert (=> d!1169822 d!1170026))

(declare-fun d!1170030 () Bool)

(assert (=> d!1170030 (= (inv!56102 (tag!7409 (rule!9511 (h!47311 (t!327352 prefixTokens!80))))) (= (mod (str.len (value!207281 (tag!7409 (rule!9511 (h!47311 (t!327352 prefixTokens!80)))))) 2) 0))))

(assert (=> b!3944108 d!1170030))

(declare-fun d!1170032 () Bool)

(declare-fun res!1596177 () Bool)

(declare-fun e!2440816 () Bool)

(assert (=> d!1170032 (=> (not res!1596177) (not e!2440816))))

(assert (=> d!1170032 (= res!1596177 (semiInverseModEq!2820 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80))))) (toValue!9017 (transformation!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80)))))))))

(assert (=> d!1170032 (= (inv!56106 (transformation!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80))))) e!2440816)))

(declare-fun b!3944516 () Bool)

(assert (=> b!3944516 (= e!2440816 (equivClasses!2719 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80))))) (toValue!9017 (transformation!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80)))))))))

(assert (= (and d!1170032 res!1596177) b!3944516))

(declare-fun m!4513215 () Bool)

(assert (=> d!1170032 m!4513215))

(declare-fun m!4513217 () Bool)

(assert (=> b!3944516 m!4513217))

(assert (=> b!3944108 d!1170032))

(assert (=> b!3943926 d!1169990))

(assert (=> b!3943926 d!1169952))

(declare-fun d!1170034 () Bool)

(assert (=> d!1170034 (= (head!8378 lt!1379063) (h!47310 lt!1379063))))

(assert (=> b!3943924 d!1170034))

(declare-fun d!1170036 () Bool)

(assert (=> d!1170036 (= (head!8378 lt!1379060) (h!47310 lt!1379060))))

(assert (=> b!3943924 d!1170036))

(declare-fun d!1170038 () Bool)

(assert (=> d!1170038 (= (inv!15 (value!207282 (h!47311 prefixTokens!80))) (= (charsToBigInt!0 (text!47902 (value!207282 (h!47311 prefixTokens!80))) 0) (value!207277 (value!207282 (h!47311 prefixTokens!80)))))))

(declare-fun bs!586800 () Bool)

(assert (= bs!586800 d!1170038))

(declare-fun m!4513223 () Bool)

(assert (=> bs!586800 m!4513223))

(assert (=> b!3943892 d!1170038))

(declare-fun e!2440818 () Bool)

(declare-fun lt!1379245 () List!42015)

(declare-fun b!3944520 () Bool)

(assert (=> b!3944520 (= e!2440818 (or (not (= suffixTokens!72 Nil!41891)) (= lt!1379245 (t!327352 prefixTokens!80))))))

(declare-fun d!1170040 () Bool)

(assert (=> d!1170040 e!2440818))

(declare-fun res!1596178 () Bool)

(assert (=> d!1170040 (=> (not res!1596178) (not e!2440818))))

(assert (=> d!1170040 (= res!1596178 (= (content!6335 lt!1379245) (set.union (content!6335 (t!327352 prefixTokens!80)) (content!6335 suffixTokens!72))))))

(declare-fun e!2440817 () List!42015)

(assert (=> d!1170040 (= lt!1379245 e!2440817)))

(declare-fun c!685205 () Bool)

(assert (=> d!1170040 (= c!685205 (is-Nil!41891 (t!327352 prefixTokens!80)))))

(assert (=> d!1170040 (= (++!10855 (t!327352 prefixTokens!80) suffixTokens!72) lt!1379245)))

(declare-fun b!3944517 () Bool)

(assert (=> b!3944517 (= e!2440817 suffixTokens!72)))

(declare-fun b!3944518 () Bool)

(assert (=> b!3944518 (= e!2440817 (Cons!41891 (h!47311 (t!327352 prefixTokens!80)) (++!10855 (t!327352 (t!327352 prefixTokens!80)) suffixTokens!72)))))

(declare-fun b!3944519 () Bool)

(declare-fun res!1596179 () Bool)

(assert (=> b!3944519 (=> (not res!1596179) (not e!2440818))))

(assert (=> b!3944519 (= res!1596179 (= (size!31415 lt!1379245) (+ (size!31415 (t!327352 prefixTokens!80)) (size!31415 suffixTokens!72))))))

(assert (= (and d!1170040 c!685205) b!3944517))

(assert (= (and d!1170040 (not c!685205)) b!3944518))

(assert (= (and d!1170040 res!1596178) b!3944519))

(assert (= (and b!3944519 res!1596179) b!3944520))

(declare-fun m!4513237 () Bool)

(assert (=> d!1170040 m!4513237))

(assert (=> d!1170040 m!4512975))

(assert (=> d!1170040 m!4512651))

(declare-fun m!4513241 () Bool)

(assert (=> b!3944518 m!4513241))

(declare-fun m!4513245 () Bool)

(assert (=> b!3944519 m!4513245))

(assert (=> b!3944519 m!4513031))

(assert (=> b!3944519 m!4512659))

(assert (=> b!3943983 d!1170040))

(declare-fun d!1170042 () Bool)

(declare-fun res!1596180 () Bool)

(declare-fun e!2440819 () Bool)

(assert (=> d!1170042 (=> (not res!1596180) (not e!2440819))))

(assert (=> d!1170042 (= res!1596180 (not (isEmpty!24997 (originalCharacters!7149 (h!47311 (t!327352 prefixTokens!80))))))))

(assert (=> d!1170042 (= (inv!56105 (h!47311 (t!327352 prefixTokens!80))) e!2440819)))

(declare-fun b!3944521 () Bool)

(declare-fun res!1596181 () Bool)

(assert (=> b!3944521 (=> (not res!1596181) (not e!2440819))))

(assert (=> b!3944521 (= res!1596181 (= (originalCharacters!7149 (h!47311 (t!327352 prefixTokens!80))) (list!15557 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80))))) (value!207282 (h!47311 (t!327352 prefixTokens!80)))))))))

(declare-fun b!3944522 () Bool)

(assert (=> b!3944522 (= e!2440819 (= (size!31412 (h!47311 (t!327352 prefixTokens!80))) (size!31414 (originalCharacters!7149 (h!47311 (t!327352 prefixTokens!80))))))))

(assert (= (and d!1170042 res!1596180) b!3944521))

(assert (= (and b!3944521 res!1596181) b!3944522))

(declare-fun b_lambda!115357 () Bool)

(assert (=> (not b_lambda!115357) (not b!3944521)))

(declare-fun tb!236693 () Bool)

(declare-fun t!327445 () Bool)

(assert (=> (and b!3943796 (= (toChars!8876 (transformation!6549 (h!47312 rules!2768))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80)))))) t!327445) tb!236693))

(declare-fun b!3944523 () Bool)

(declare-fun e!2440820 () Bool)

(declare-fun tp!1200712 () Bool)

(assert (=> b!3944523 (= e!2440820 (and (inv!56109 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80))))) (value!207282 (h!47311 (t!327352 prefixTokens!80)))))) tp!1200712))))

(declare-fun result!286706 () Bool)

(assert (=> tb!236693 (= result!286706 (and (inv!56110 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80))))) (value!207282 (h!47311 (t!327352 prefixTokens!80))))) e!2440820))))

(assert (= tb!236693 b!3944523))

(declare-fun m!4513257 () Bool)

(assert (=> b!3944523 m!4513257))

(declare-fun m!4513259 () Bool)

(assert (=> tb!236693 m!4513259))

(assert (=> b!3944521 t!327445))

(declare-fun b_and!301655 () Bool)

(assert (= b_and!301651 (and (=> t!327445 result!286706) b_and!301655)))

(declare-fun t!327447 () Bool)

(declare-fun tb!236695 () Bool)

(assert (=> (and b!3943797 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80)))))) t!327447) tb!236695))

(declare-fun result!286708 () Bool)

(assert (= result!286708 result!286706))

(assert (=> b!3944521 t!327447))

(declare-fun b_and!301657 () Bool)

(assert (= b_and!301643 (and (=> t!327447 result!286708) b_and!301657)))

(declare-fun t!327449 () Bool)

(declare-fun tb!236697 () Bool)

(assert (=> (and b!3944083 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72))))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80)))))) t!327449) tb!236697))

(declare-fun result!286710 () Bool)

(assert (= result!286710 result!286706))

(assert (=> b!3944521 t!327449))

(declare-fun b_and!301659 () Bool)

(assert (= b_and!301647 (and (=> t!327449 result!286710) b_and!301659)))

(declare-fun t!327451 () Bool)

(declare-fun tb!236699 () Bool)

(assert (=> (and b!3943798 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80)))))) t!327451) tb!236699))

(declare-fun result!286712 () Bool)

(assert (= result!286712 result!286706))

(assert (=> b!3944521 t!327451))

(declare-fun b_and!301661 () Bool)

(assert (= b_and!301653 (and (=> t!327451 result!286712) b_and!301661)))

(declare-fun t!327453 () Bool)

(declare-fun tb!236701 () Bool)

(assert (=> (and b!3944109 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80))))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80)))))) t!327453) tb!236701))

(declare-fun result!286714 () Bool)

(assert (= result!286714 result!286706))

(assert (=> b!3944521 t!327453))

(declare-fun b_and!301663 () Bool)

(assert (= b_and!301649 (and (=> t!327453 result!286714) b_and!301663)))

(declare-fun t!327455 () Bool)

(declare-fun tb!236703 () Bool)

(assert (=> (and b!3944132 (= (toChars!8876 (transformation!6549 (h!47312 (t!327353 rules!2768)))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80)))))) t!327455) tb!236703))

(declare-fun result!286716 () Bool)

(assert (= result!286716 result!286706))

(assert (=> b!3944521 t!327455))

(declare-fun b_and!301665 () Bool)

(assert (= b_and!301645 (and (=> t!327455 result!286716) b_and!301665)))

(declare-fun m!4513261 () Bool)

(assert (=> d!1170042 m!4513261))

(declare-fun m!4513263 () Bool)

(assert (=> b!3944521 m!4513263))

(assert (=> b!3944521 m!4513263))

(declare-fun m!4513265 () Bool)

(assert (=> b!3944521 m!4513265))

(declare-fun m!4513267 () Bool)

(assert (=> b!3944522 m!4513267))

(assert (=> b!3944106 d!1170042))

(declare-fun b!3944524 () Bool)

(declare-fun e!2440822 () List!42014)

(assert (=> b!3944524 (= e!2440822 (_2!23724 (v!39304 lt!1379059)))))

(declare-fun d!1170046 () Bool)

(declare-fun e!2440821 () Bool)

(assert (=> d!1170046 e!2440821))

(declare-fun res!1596183 () Bool)

(assert (=> d!1170046 (=> (not res!1596183) (not e!2440821))))

(declare-fun lt!1379246 () List!42014)

(assert (=> d!1170046 (= res!1596183 (= (content!6334 lt!1379246) (set.union (content!6334 (t!327351 lt!1379063)) (content!6334 (_2!23724 (v!39304 lt!1379059))))))))

(assert (=> d!1170046 (= lt!1379246 e!2440822)))

(declare-fun c!685206 () Bool)

(assert (=> d!1170046 (= c!685206 (is-Nil!41890 (t!327351 lt!1379063)))))

(assert (=> d!1170046 (= (++!10856 (t!327351 lt!1379063) (_2!23724 (v!39304 lt!1379059))) lt!1379246)))

(declare-fun b!3944525 () Bool)

(assert (=> b!3944525 (= e!2440822 (Cons!41890 (h!47310 (t!327351 lt!1379063)) (++!10856 (t!327351 (t!327351 lt!1379063)) (_2!23724 (v!39304 lt!1379059)))))))

(declare-fun b!3944526 () Bool)

(declare-fun res!1596182 () Bool)

(assert (=> b!3944526 (=> (not res!1596182) (not e!2440821))))

(assert (=> b!3944526 (= res!1596182 (= (size!31414 lt!1379246) (+ (size!31414 (t!327351 lt!1379063)) (size!31414 (_2!23724 (v!39304 lt!1379059))))))))

(declare-fun b!3944527 () Bool)

(assert (=> b!3944527 (= e!2440821 (or (not (= (_2!23724 (v!39304 lt!1379059)) Nil!41890)) (= lt!1379246 (t!327351 lt!1379063))))))

(assert (= (and d!1170046 c!685206) b!3944524))

(assert (= (and d!1170046 (not c!685206)) b!3944525))

(assert (= (and d!1170046 res!1596183) b!3944526))

(assert (= (and b!3944526 res!1596182) b!3944527))

(declare-fun m!4513269 () Bool)

(assert (=> d!1170046 m!4513269))

(declare-fun m!4513271 () Bool)

(assert (=> d!1170046 m!4513271))

(assert (=> d!1170046 m!4512603))

(declare-fun m!4513273 () Bool)

(assert (=> b!3944525 m!4513273))

(declare-fun m!4513275 () Bool)

(assert (=> b!3944526 m!4513275))

(assert (=> b!3944526 m!4513077))

(assert (=> b!3944526 m!4512609))

(assert (=> b!3943936 d!1170046))

(declare-fun d!1170048 () Bool)

(assert (=> d!1170048 (= (isEmpty!24997 (originalCharacters!7149 (h!47311 suffixTokens!72))) (is-Nil!41890 (originalCharacters!7149 (h!47311 suffixTokens!72))))))

(assert (=> d!1169778 d!1170048))

(declare-fun d!1170050 () Bool)

(assert (=> d!1170050 (= (list!15557 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) (value!207282 (h!47311 suffixTokens!72)))) (list!15559 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) (value!207282 (h!47311 suffixTokens!72))))))))

(declare-fun bs!586801 () Bool)

(assert (= bs!586801 d!1170050))

(declare-fun m!4513277 () Bool)

(assert (=> bs!586801 m!4513277))

(assert (=> b!3943875 d!1170050))

(declare-fun bs!586802 () Bool)

(declare-fun d!1170052 () Bool)

(assert (= bs!586802 (and d!1170052 d!1169994)))

(declare-fun lambda!126711 () Int)

(assert (=> bs!586802 (= (= (toValue!9017 (transformation!6549 (h!47312 rules!2768))) (toValue!9017 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80))))) (= lambda!126711 lambda!126706))))

(assert (=> d!1170052 true))

(assert (=> d!1170052 (< (dynLambda!17946 order!22355 (toValue!9017 (transformation!6549 (h!47312 rules!2768)))) (dynLambda!17947 order!22357 lambda!126711))))

(assert (=> d!1170052 (= (equivClasses!2719 (toChars!8876 (transformation!6549 (h!47312 rules!2768))) (toValue!9017 (transformation!6549 (h!47312 rules!2768)))) (Forall2!1054 lambda!126711))))

(declare-fun bs!586803 () Bool)

(assert (= bs!586803 d!1170052))

(declare-fun m!4513279 () Bool)

(assert (=> bs!586803 m!4513279))

(assert (=> b!3943899 d!1170052))

(declare-fun b!3944541 () Bool)

(declare-fun e!2440829 () List!42014)

(declare-fun e!2440830 () List!42014)

(assert (=> b!3944541 (= e!2440829 e!2440830)))

(declare-fun c!685214 () Bool)

(assert (=> b!3944541 (= c!685214 (is-Leaf!19742 (c!685074 (charsOf!4367 (_1!23724 (v!39304 lt!1379059))))))))

(declare-fun b!3944542 () Bool)

(declare-fun list!15561 (IArray!25525) List!42014)

(assert (=> b!3944542 (= e!2440830 (list!15561 (xs!16066 (c!685074 (charsOf!4367 (_1!23724 (v!39304 lt!1379059)))))))))

(declare-fun d!1170054 () Bool)

(declare-fun c!685213 () Bool)

(assert (=> d!1170054 (= c!685213 (is-Empty!12760 (c!685074 (charsOf!4367 (_1!23724 (v!39304 lt!1379059))))))))

(assert (=> d!1170054 (= (list!15559 (c!685074 (charsOf!4367 (_1!23724 (v!39304 lt!1379059))))) e!2440829)))

(declare-fun b!3944543 () Bool)

(assert (=> b!3944543 (= e!2440830 (++!10856 (list!15559 (left!31905 (c!685074 (charsOf!4367 (_1!23724 (v!39304 lt!1379059)))))) (list!15559 (right!32235 (c!685074 (charsOf!4367 (_1!23724 (v!39304 lt!1379059))))))))))

(declare-fun b!3944540 () Bool)

(assert (=> b!3944540 (= e!2440829 Nil!41890)))

(assert (= (and d!1170054 c!685213) b!3944540))

(assert (= (and d!1170054 (not c!685213)) b!3944541))

(assert (= (and b!3944541 c!685214) b!3944542))

(assert (= (and b!3944541 (not c!685214)) b!3944543))

(declare-fun m!4513281 () Bool)

(assert (=> b!3944542 m!4513281))

(declare-fun m!4513283 () Bool)

(assert (=> b!3944543 m!4513283))

(declare-fun m!4513285 () Bool)

(assert (=> b!3944543 m!4513285))

(assert (=> b!3944543 m!4513283))

(assert (=> b!3944543 m!4513285))

(declare-fun m!4513287 () Bool)

(assert (=> b!3944543 m!4513287))

(assert (=> d!1169798 d!1170054))

(declare-fun bs!586804 () Bool)

(declare-fun d!1170056 () Bool)

(assert (= bs!586804 (and d!1170056 d!1169994)))

(declare-fun lambda!126712 () Int)

(assert (=> bs!586804 (= (= (toValue!9017 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) (toValue!9017 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80))))) (= lambda!126712 lambda!126706))))

(declare-fun bs!586805 () Bool)

(assert (= bs!586805 (and d!1170056 d!1170052)))

(assert (=> bs!586805 (= (= (toValue!9017 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) (toValue!9017 (transformation!6549 (h!47312 rules!2768)))) (= lambda!126712 lambda!126711))))

(assert (=> d!1170056 true))

(assert (=> d!1170056 (< (dynLambda!17946 order!22355 (toValue!9017 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72))))) (dynLambda!17947 order!22357 lambda!126712))))

(assert (=> d!1170056 (= (equivClasses!2719 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) (toValue!9017 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72))))) (Forall2!1054 lambda!126712))))

(declare-fun bs!586806 () Bool)

(assert (= bs!586806 d!1170056))

(declare-fun m!4513289 () Bool)

(assert (=> bs!586806 m!4513289))

(assert (=> b!3943996 d!1170056))

(declare-fun d!1170058 () Bool)

(assert (=> d!1170058 (= (inv!56102 (tag!7409 (rule!9511 (h!47311 (t!327352 suffixTokens!72))))) (= (mod (str.len (value!207281 (tag!7409 (rule!9511 (h!47311 (t!327352 suffixTokens!72)))))) 2) 0))))

(assert (=> b!3944082 d!1170058))

(declare-fun d!1170060 () Bool)

(declare-fun res!1596200 () Bool)

(declare-fun e!2440843 () Bool)

(assert (=> d!1170060 (=> (not res!1596200) (not e!2440843))))

(assert (=> d!1170060 (= res!1596200 (semiInverseModEq!2820 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72))))) (toValue!9017 (transformation!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72)))))))))

(assert (=> d!1170060 (= (inv!56106 (transformation!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72))))) e!2440843)))

(declare-fun b!3944568 () Bool)

(assert (=> b!3944568 (= e!2440843 (equivClasses!2719 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72))))) (toValue!9017 (transformation!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72)))))))))

(assert (= (and d!1170060 res!1596200) b!3944568))

(declare-fun m!4513291 () Bool)

(assert (=> d!1170060 m!4513291))

(declare-fun m!4513293 () Bool)

(assert (=> b!3944568 m!4513293))

(assert (=> b!3944082 d!1170060))

(declare-fun d!1170062 () Bool)

(assert (=> d!1170062 (= (isEmpty!25003 lt!1379150) (not (is-Some!8968 lt!1379150)))))

(assert (=> d!1169834 d!1170062))

(declare-fun d!1170064 () Bool)

(declare-fun e!2440845 () Bool)

(assert (=> d!1170064 e!2440845))

(declare-fun res!1596204 () Bool)

(assert (=> d!1170064 (=> res!1596204 e!2440845)))

(declare-fun lt!1379249 () Bool)

(assert (=> d!1170064 (= res!1596204 (not lt!1379249))))

(declare-fun e!2440844 () Bool)

(assert (=> d!1170064 (= lt!1379249 e!2440844)))

(declare-fun res!1596202 () Bool)

(assert (=> d!1170064 (=> res!1596202 e!2440844)))

(assert (=> d!1170064 (= res!1596202 (is-Nil!41890 lt!1379060))))

(assert (=> d!1170064 (= (isPrefix!3638 lt!1379060 lt!1379060) lt!1379249)))

(declare-fun b!3944569 () Bool)

(declare-fun e!2440846 () Bool)

(assert (=> b!3944569 (= e!2440844 e!2440846)))

(declare-fun res!1596203 () Bool)

(assert (=> b!3944569 (=> (not res!1596203) (not e!2440846))))

(assert (=> b!3944569 (= res!1596203 (not (is-Nil!41890 lt!1379060)))))

(declare-fun b!3944570 () Bool)

(declare-fun res!1596201 () Bool)

(assert (=> b!3944570 (=> (not res!1596201) (not e!2440846))))

(assert (=> b!3944570 (= res!1596201 (= (head!8378 lt!1379060) (head!8378 lt!1379060)))))

(declare-fun b!3944571 () Bool)

(assert (=> b!3944571 (= e!2440846 (isPrefix!3638 (tail!6104 lt!1379060) (tail!6104 lt!1379060)))))

(declare-fun b!3944572 () Bool)

(assert (=> b!3944572 (= e!2440845 (>= (size!31414 lt!1379060) (size!31414 lt!1379060)))))

(assert (= (and d!1170064 (not res!1596202)) b!3944569))

(assert (= (and b!3944569 res!1596203) b!3944570))

(assert (= (and b!3944570 res!1596201) b!3944571))

(assert (= (and d!1170064 (not res!1596204)) b!3944572))

(assert (=> b!3944570 m!4512589))

(assert (=> b!3944570 m!4512589))

(assert (=> b!3944571 m!4512581))

(assert (=> b!3944571 m!4512581))

(assert (=> b!3944571 m!4512581))

(assert (=> b!3944571 m!4512581))

(declare-fun m!4513295 () Bool)

(assert (=> b!3944571 m!4513295))

(assert (=> b!3944572 m!4512577))

(assert (=> b!3944572 m!4512577))

(assert (=> d!1169834 d!1170064))

(declare-fun d!1170066 () Bool)

(assert (=> d!1170066 (isPrefix!3638 lt!1379060 lt!1379060)))

(declare-fun lt!1379252 () Unit!60431)

(declare-fun choose!23536 (List!42014 List!42014) Unit!60431)

(assert (=> d!1170066 (= lt!1379252 (choose!23536 lt!1379060 lt!1379060))))

(assert (=> d!1170066 (= (lemmaIsPrefixRefl!2297 lt!1379060 lt!1379060) lt!1379252)))

(declare-fun bs!586807 () Bool)

(assert (= bs!586807 d!1170066))

(assert (=> bs!586807 m!4512733))

(declare-fun m!4513297 () Bool)

(assert (=> bs!586807 m!4513297))

(assert (=> d!1169834 d!1170066))

(declare-fun bs!586809 () Bool)

(declare-fun d!1170068 () Bool)

(assert (= bs!586809 (and d!1170068 d!1170002)))

(declare-fun lambda!126715 () Int)

(assert (=> bs!586809 (= lambda!126715 lambda!126709)))

(assert (=> d!1170068 true))

(declare-fun lt!1379257 () Bool)

(assert (=> d!1170068 (= lt!1379257 (forall!8322 rules!2768 lambda!126715))))

(declare-fun e!2440859 () Bool)

(assert (=> d!1170068 (= lt!1379257 e!2440859)))

(declare-fun res!1596217 () Bool)

(assert (=> d!1170068 (=> res!1596217 e!2440859)))

(assert (=> d!1170068 (= res!1596217 (not (is-Cons!41892 rules!2768)))))

(assert (=> d!1170068 (= (rulesValidInductive!2367 thiss!20629 rules!2768) lt!1379257)))

(declare-fun b!3944591 () Bool)

(declare-fun e!2440858 () Bool)

(assert (=> b!3944591 (= e!2440859 e!2440858)))

(declare-fun res!1596218 () Bool)

(assert (=> b!3944591 (=> (not res!1596218) (not e!2440858))))

(assert (=> b!3944591 (= res!1596218 (ruleValid!2491 thiss!20629 (h!47312 rules!2768)))))

(declare-fun b!3944592 () Bool)

(assert (=> b!3944592 (= e!2440858 (rulesValidInductive!2367 thiss!20629 (t!327353 rules!2768)))))

(assert (= (and d!1170068 (not res!1596217)) b!3944591))

(assert (= (and b!3944591 res!1596218) b!3944592))

(declare-fun m!4513321 () Bool)

(assert (=> d!1170068 m!4513321))

(declare-fun m!4513323 () Bool)

(assert (=> b!3944591 m!4513323))

(assert (=> b!3944592 m!4512989))

(assert (=> d!1169834 d!1170068))

(declare-fun d!1170074 () Bool)

(declare-fun res!1596219 () Bool)

(declare-fun e!2440861 () Bool)

(assert (=> d!1170074 (=> (not res!1596219) (not e!2440861))))

(assert (=> d!1170074 (= res!1596219 (not (isEmpty!24997 (originalCharacters!7149 (h!47311 (t!327352 suffixTokens!72))))))))

(assert (=> d!1170074 (= (inv!56105 (h!47311 (t!327352 suffixTokens!72))) e!2440861)))

(declare-fun b!3944594 () Bool)

(declare-fun res!1596220 () Bool)

(assert (=> b!3944594 (=> (not res!1596220) (not e!2440861))))

(assert (=> b!3944594 (= res!1596220 (= (originalCharacters!7149 (h!47311 (t!327352 suffixTokens!72))) (list!15557 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72))))) (value!207282 (h!47311 (t!327352 suffixTokens!72)))))))))

(declare-fun b!3944595 () Bool)

(assert (=> b!3944595 (= e!2440861 (= (size!31412 (h!47311 (t!327352 suffixTokens!72))) (size!31414 (originalCharacters!7149 (h!47311 (t!327352 suffixTokens!72))))))))

(assert (= (and d!1170074 res!1596219) b!3944594))

(assert (= (and b!3944594 res!1596220) b!3944595))

(declare-fun b_lambda!115361 () Bool)

(assert (=> (not b_lambda!115361) (not b!3944594)))

(declare-fun tb!236717 () Bool)

(declare-fun t!327470 () Bool)

(assert (=> (and b!3944109 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80))))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72)))))) t!327470) tb!236717))

(declare-fun b!3944596 () Bool)

(declare-fun e!2440862 () Bool)

(declare-fun tp!1200714 () Bool)

(assert (=> b!3944596 (= e!2440862 (and (inv!56109 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72))))) (value!207282 (h!47311 (t!327352 suffixTokens!72)))))) tp!1200714))))

(declare-fun result!286730 () Bool)

(assert (=> tb!236717 (= result!286730 (and (inv!56110 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72))))) (value!207282 (h!47311 (t!327352 suffixTokens!72))))) e!2440862))))

(assert (= tb!236717 b!3944596))

(declare-fun m!4513329 () Bool)

(assert (=> b!3944596 m!4513329))

(declare-fun m!4513331 () Bool)

(assert (=> tb!236717 m!4513331))

(assert (=> b!3944594 t!327470))

(declare-fun b_and!301679 () Bool)

(assert (= b_and!301663 (and (=> t!327470 result!286730) b_and!301679)))

(declare-fun t!327472 () Bool)

(declare-fun tb!236719 () Bool)

(assert (=> (and b!3944083 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72))))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72)))))) t!327472) tb!236719))

(declare-fun result!286732 () Bool)

(assert (= result!286732 result!286730))

(assert (=> b!3944594 t!327472))

(declare-fun b_and!301681 () Bool)

(assert (= b_and!301659 (and (=> t!327472 result!286732) b_and!301681)))

(declare-fun tb!236721 () Bool)

(declare-fun t!327474 () Bool)

(assert (=> (and b!3943797 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72)))))) t!327474) tb!236721))

(declare-fun result!286734 () Bool)

(assert (= result!286734 result!286730))

(assert (=> b!3944594 t!327474))

(declare-fun b_and!301683 () Bool)

(assert (= b_and!301657 (and (=> t!327474 result!286734) b_and!301683)))

(declare-fun t!327476 () Bool)

(declare-fun tb!236723 () Bool)

(assert (=> (and b!3943798 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72)))))) t!327476) tb!236723))

(declare-fun result!286736 () Bool)

(assert (= result!286736 result!286730))

(assert (=> b!3944594 t!327476))

(declare-fun b_and!301685 () Bool)

(assert (= b_and!301661 (and (=> t!327476 result!286736) b_and!301685)))

(declare-fun tb!236725 () Bool)

(declare-fun t!327478 () Bool)

(assert (=> (and b!3943796 (= (toChars!8876 (transformation!6549 (h!47312 rules!2768))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72)))))) t!327478) tb!236725))

(declare-fun result!286738 () Bool)

(assert (= result!286738 result!286730))

(assert (=> b!3944594 t!327478))

(declare-fun b_and!301687 () Bool)

(assert (= b_and!301655 (and (=> t!327478 result!286738) b_and!301687)))

(declare-fun tb!236727 () Bool)

(declare-fun t!327480 () Bool)

(assert (=> (and b!3944132 (= (toChars!8876 (transformation!6549 (h!47312 (t!327353 rules!2768)))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72)))))) t!327480) tb!236727))

(declare-fun result!286740 () Bool)

(assert (= result!286740 result!286730))

(assert (=> b!3944594 t!327480))

(declare-fun b_and!301689 () Bool)

(assert (= b_and!301665 (and (=> t!327480 result!286740) b_and!301689)))

(declare-fun m!4513333 () Bool)

(assert (=> d!1170074 m!4513333))

(declare-fun m!4513335 () Bool)

(assert (=> b!3944594 m!4513335))

(assert (=> b!3944594 m!4513335))

(declare-fun m!4513337 () Bool)

(assert (=> b!3944594 m!4513337))

(declare-fun m!4513339 () Bool)

(assert (=> b!3944595 m!4513339))

(assert (=> b!3944080 d!1170074))

(declare-fun d!1170078 () Bool)

(declare-fun lt!1379258 () Int)

(assert (=> d!1170078 (>= lt!1379258 0)))

(declare-fun e!2440863 () Int)

(assert (=> d!1170078 (= lt!1379258 e!2440863)))

(declare-fun c!685222 () Bool)

(assert (=> d!1170078 (= c!685222 (is-Nil!41890 lt!1379064))))

(assert (=> d!1170078 (= (size!31414 lt!1379064) lt!1379258)))

(declare-fun b!3944597 () Bool)

(assert (=> b!3944597 (= e!2440863 0)))

(declare-fun b!3944598 () Bool)

(assert (=> b!3944598 (= e!2440863 (+ 1 (size!31414 (t!327351 lt!1379064))))))

(assert (= (and d!1170078 c!685222) b!3944597))

(assert (= (and d!1170078 (not c!685222)) b!3944598))

(declare-fun m!4513341 () Bool)

(assert (=> b!3944598 m!4513341))

(assert (=> b!3943943 d!1170078))

(assert (=> b!3943943 d!1169952))

(assert (=> d!1169802 d!1169792))

(declare-fun d!1170080 () Bool)

(assert (=> d!1170080 (ruleValid!2491 thiss!20629 (rule!9511 (_1!23724 (v!39304 lt!1379059))))))

(assert (=> d!1170080 true))

(declare-fun _$65!1395 () Unit!60431)

(assert (=> d!1170080 (= (choose!23533 thiss!20629 (rule!9511 (_1!23724 (v!39304 lt!1379059))) rules!2768) _$65!1395)))

(declare-fun bs!586810 () Bool)

(assert (= bs!586810 d!1170080))

(assert (=> bs!586810 m!4512443))

(assert (=> d!1169802 d!1170080))

(declare-fun d!1170082 () Bool)

(declare-fun lt!1379261 () Bool)

(declare-fun content!6339 (List!42016) (Set Rule!12898))

(assert (=> d!1170082 (= lt!1379261 (set.member (rule!9511 (_1!23724 (v!39304 lt!1379059))) (content!6339 rules!2768)))))

(declare-fun e!2440869 () Bool)

(assert (=> d!1170082 (= lt!1379261 e!2440869)))

(declare-fun res!1596225 () Bool)

(assert (=> d!1170082 (=> (not res!1596225) (not e!2440869))))

(assert (=> d!1170082 (= res!1596225 (is-Cons!41892 rules!2768))))

(assert (=> d!1170082 (= (contains!8387 rules!2768 (rule!9511 (_1!23724 (v!39304 lt!1379059)))) lt!1379261)))

(declare-fun b!3944603 () Bool)

(declare-fun e!2440868 () Bool)

(assert (=> b!3944603 (= e!2440869 e!2440868)))

(declare-fun res!1596226 () Bool)

(assert (=> b!3944603 (=> res!1596226 e!2440868)))

(assert (=> b!3944603 (= res!1596226 (= (h!47312 rules!2768) (rule!9511 (_1!23724 (v!39304 lt!1379059)))))))

(declare-fun b!3944604 () Bool)

(assert (=> b!3944604 (= e!2440868 (contains!8387 (t!327353 rules!2768) (rule!9511 (_1!23724 (v!39304 lt!1379059)))))))

(assert (= (and d!1170082 res!1596225) b!3944603))

(assert (= (and b!3944603 (not res!1596226)) b!3944604))

(declare-fun m!4513343 () Bool)

(assert (=> d!1170082 m!4513343))

(declare-fun m!4513345 () Bool)

(assert (=> d!1170082 m!4513345))

(declare-fun m!4513347 () Bool)

(assert (=> b!3944604 m!4513347))

(assert (=> d!1169802 d!1170082))

(declare-fun d!1170084 () Bool)

(assert (=> d!1170084 (= (list!15557 lt!1379107) (list!15559 (c!685074 lt!1379107)))))

(declare-fun bs!586811 () Bool)

(assert (= bs!586811 d!1170084))

(declare-fun m!4513349 () Bool)

(assert (=> bs!586811 m!4513349))

(assert (=> d!1169806 d!1170084))

(assert (=> b!3944058 d!1169980))

(declare-fun d!1170086 () Bool)

(declare-fun dynLambda!17948 (Int BalanceConc!25114) TokenValue!6779)

(assert (=> d!1170086 (= (apply!9780 (transformation!6549 (rule!9511 (_1!23724 (get!13836 lt!1379150)))) (seqFromList!4808 (originalCharacters!7149 (_1!23724 (get!13836 lt!1379150))))) (dynLambda!17948 (toValue!9017 (transformation!6549 (rule!9511 (_1!23724 (get!13836 lt!1379150))))) (seqFromList!4808 (originalCharacters!7149 (_1!23724 (get!13836 lt!1379150))))))))

(declare-fun b_lambda!115363 () Bool)

(assert (=> (not b_lambda!115363) (not d!1170086)))

(declare-fun tb!236729 () Bool)

(declare-fun t!327482 () Bool)

(assert (=> (and b!3943796 (= (toValue!9017 (transformation!6549 (h!47312 rules!2768))) (toValue!9017 (transformation!6549 (rule!9511 (_1!23724 (get!13836 lt!1379150)))))) t!327482) tb!236729))

(declare-fun result!286742 () Bool)

(assert (=> tb!236729 (= result!286742 (inv!21 (dynLambda!17948 (toValue!9017 (transformation!6549 (rule!9511 (_1!23724 (get!13836 lt!1379150))))) (seqFromList!4808 (originalCharacters!7149 (_1!23724 (get!13836 lt!1379150)))))))))

(declare-fun m!4513351 () Bool)

(assert (=> tb!236729 m!4513351))

(assert (=> d!1170086 t!327482))

(declare-fun b_and!301691 () Bool)

(assert (= b_and!301559 (and (=> t!327482 result!286742) b_and!301691)))

(declare-fun tb!236731 () Bool)

(declare-fun t!327484 () Bool)

(assert (=> (and b!3944083 (= (toValue!9017 (transformation!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72))))) (toValue!9017 (transformation!6549 (rule!9511 (_1!23724 (get!13836 lt!1379150)))))) t!327484) tb!236731))

(declare-fun result!286746 () Bool)

(assert (= result!286746 result!286742))

(assert (=> d!1170086 t!327484))

(declare-fun b_and!301693 () Bool)

(assert (= b_and!301607 (and (=> t!327484 result!286746) b_and!301693)))

(declare-fun tb!236733 () Bool)

(declare-fun t!327486 () Bool)

(assert (=> (and b!3943797 (= (toValue!9017 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) (toValue!9017 (transformation!6549 (rule!9511 (_1!23724 (get!13836 lt!1379150)))))) t!327486) tb!236733))

(declare-fun result!286748 () Bool)

(assert (= result!286748 result!286742))

(assert (=> d!1170086 t!327486))

(declare-fun b_and!301695 () Bool)

(assert (= b_and!301563 (and (=> t!327486 result!286748) b_and!301695)))

(declare-fun tb!236735 () Bool)

(declare-fun t!327488 () Bool)

(assert (=> (and b!3944132 (= (toValue!9017 (transformation!6549 (h!47312 (t!327353 rules!2768)))) (toValue!9017 (transformation!6549 (rule!9511 (_1!23724 (get!13836 lt!1379150)))))) t!327488) tb!236735))

(declare-fun result!286750 () Bool)

(assert (= result!286750 result!286742))

(assert (=> d!1170086 t!327488))

(declare-fun b_and!301697 () Bool)

(assert (= b_and!301615 (and (=> t!327488 result!286750) b_and!301697)))

(declare-fun tb!236737 () Bool)

(declare-fun t!327490 () Bool)

(assert (=> (and b!3943798 (= (toValue!9017 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) (toValue!9017 (transformation!6549 (rule!9511 (_1!23724 (get!13836 lt!1379150)))))) t!327490) tb!236737))

(declare-fun result!286752 () Bool)

(assert (= result!286752 result!286742))

(assert (=> d!1170086 t!327490))

(declare-fun b_and!301699 () Bool)

(assert (= b_and!301567 (and (=> t!327490 result!286752) b_and!301699)))

(declare-fun tb!236739 () Bool)

(declare-fun t!327492 () Bool)

(assert (=> (and b!3944109 (= (toValue!9017 (transformation!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80))))) (toValue!9017 (transformation!6549 (rule!9511 (_1!23724 (get!13836 lt!1379150)))))) t!327492) tb!236739))

(declare-fun result!286754 () Bool)

(assert (= result!286754 result!286742))

(assert (=> d!1170086 t!327492))

(declare-fun b_and!301701 () Bool)

(assert (= b_and!301611 (and (=> t!327492 result!286754) b_and!301701)))

(assert (=> d!1170086 m!4512757))

(declare-fun m!4513353 () Bool)

(assert (=> d!1170086 m!4513353))

(assert (=> b!3944058 d!1170086))

(declare-fun d!1170088 () Bool)

(declare-fun fromListB!2223 (List!42014) BalanceConc!25114)

(assert (=> d!1170088 (= (seqFromList!4808 (originalCharacters!7149 (_1!23724 (get!13836 lt!1379150)))) (fromListB!2223 (originalCharacters!7149 (_1!23724 (get!13836 lt!1379150)))))))

(declare-fun bs!586812 () Bool)

(assert (= bs!586812 d!1170088))

(declare-fun m!4513355 () Bool)

(assert (=> bs!586812 m!4513355))

(assert (=> b!3944058 d!1170088))

(declare-fun d!1170090 () Bool)

(declare-fun lt!1379262 () Int)

(assert (=> d!1170090 (>= lt!1379262 0)))

(declare-fun e!2440873 () Int)

(assert (=> d!1170090 (= lt!1379262 e!2440873)))

(declare-fun c!685223 () Bool)

(assert (=> d!1170090 (= c!685223 (is-Nil!41890 (_2!23723 lt!1379123)))))

(assert (=> d!1170090 (= (size!31414 (_2!23723 lt!1379123)) lt!1379262)))

(declare-fun b!3944607 () Bool)

(assert (=> b!3944607 (= e!2440873 0)))

(declare-fun b!3944608 () Bool)

(assert (=> b!3944608 (= e!2440873 (+ 1 (size!31414 (t!327351 (_2!23723 lt!1379123)))))))

(assert (= (and d!1170090 c!685223) b!3944607))

(assert (= (and d!1170090 (not c!685223)) b!3944608))

(declare-fun m!4513357 () Bool)

(assert (=> b!3944608 m!4513357))

(assert (=> b!3943964 d!1170090))

(assert (=> b!3943964 d!1169990))

(declare-fun d!1170092 () Bool)

(declare-fun lt!1379263 () Bool)

(assert (=> d!1170092 (= lt!1379263 (set.member (rule!9511 (_1!23724 (get!13836 lt!1379150))) (content!6339 rules!2768)))))

(declare-fun e!2440875 () Bool)

(assert (=> d!1170092 (= lt!1379263 e!2440875)))

(declare-fun res!1596227 () Bool)

(assert (=> d!1170092 (=> (not res!1596227) (not e!2440875))))

(assert (=> d!1170092 (= res!1596227 (is-Cons!41892 rules!2768))))

(assert (=> d!1170092 (= (contains!8387 rules!2768 (rule!9511 (_1!23724 (get!13836 lt!1379150)))) lt!1379263)))

(declare-fun b!3944609 () Bool)

(declare-fun e!2440874 () Bool)

(assert (=> b!3944609 (= e!2440875 e!2440874)))

(declare-fun res!1596228 () Bool)

(assert (=> b!3944609 (=> res!1596228 e!2440874)))

(assert (=> b!3944609 (= res!1596228 (= (h!47312 rules!2768) (rule!9511 (_1!23724 (get!13836 lt!1379150)))))))

(declare-fun b!3944610 () Bool)

(assert (=> b!3944610 (= e!2440874 (contains!8387 (t!327353 rules!2768) (rule!9511 (_1!23724 (get!13836 lt!1379150)))))))

(assert (= (and d!1170092 res!1596227) b!3944609))

(assert (= (and b!3944609 (not res!1596228)) b!3944610))

(assert (=> d!1170092 m!4513343))

(declare-fun m!4513359 () Bool)

(assert (=> d!1170092 m!4513359))

(declare-fun m!4513361 () Bool)

(assert (=> b!3944610 m!4513361))

(assert (=> b!3944054 d!1170092))

(assert (=> b!3944054 d!1169980))

(declare-fun d!1170094 () Bool)

(assert (=> d!1170094 (= (list!15557 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) (value!207282 (h!47311 prefixTokens!80)))) (list!15559 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) (value!207282 (h!47311 prefixTokens!80))))))))

(declare-fun bs!586813 () Bool)

(assert (= bs!586813 d!1170094))

(declare-fun m!4513363 () Bool)

(assert (=> bs!586813 m!4513363))

(assert (=> b!3943900 d!1170094))

(declare-fun d!1170096 () Bool)

(declare-fun lt!1379264 () Int)

(assert (=> d!1170096 (>= lt!1379264 0)))

(declare-fun e!2440876 () Int)

(assert (=> d!1170096 (= lt!1379264 e!2440876)))

(declare-fun c!685224 () Bool)

(assert (=> d!1170096 (= c!685224 (is-Nil!41890 (_2!23724 (get!13836 lt!1379150))))))

(assert (=> d!1170096 (= (size!31414 (_2!23724 (get!13836 lt!1379150))) lt!1379264)))

(declare-fun b!3944611 () Bool)

(assert (=> b!3944611 (= e!2440876 0)))

(declare-fun b!3944612 () Bool)

(assert (=> b!3944612 (= e!2440876 (+ 1 (size!31414 (t!327351 (_2!23724 (get!13836 lt!1379150))))))))

(assert (= (and d!1170096 c!685224) b!3944611))

(assert (= (and d!1170096 (not c!685224)) b!3944612))

(declare-fun m!4513365 () Bool)

(assert (=> b!3944612 m!4513365))

(assert (=> b!3944056 d!1170096))

(assert (=> b!3944056 d!1169980))

(assert (=> b!3944056 d!1169990))

(declare-fun d!1170098 () Bool)

(assert (=> d!1170098 (= (inv!56102 (tag!7409 (h!47312 (t!327353 rules!2768)))) (= (mod (str.len (value!207281 (tag!7409 (h!47312 (t!327353 rules!2768))))) 2) 0))))

(assert (=> b!3944131 d!1170098))

(declare-fun d!1170100 () Bool)

(declare-fun res!1596229 () Bool)

(declare-fun e!2440877 () Bool)

(assert (=> d!1170100 (=> (not res!1596229) (not e!2440877))))

(assert (=> d!1170100 (= res!1596229 (semiInverseModEq!2820 (toChars!8876 (transformation!6549 (h!47312 (t!327353 rules!2768)))) (toValue!9017 (transformation!6549 (h!47312 (t!327353 rules!2768))))))))

(assert (=> d!1170100 (= (inv!56106 (transformation!6549 (h!47312 (t!327353 rules!2768)))) e!2440877)))

(declare-fun b!3944613 () Bool)

(assert (=> b!3944613 (= e!2440877 (equivClasses!2719 (toChars!8876 (transformation!6549 (h!47312 (t!327353 rules!2768)))) (toValue!9017 (transformation!6549 (h!47312 (t!327353 rules!2768))))))))

(assert (= (and d!1170100 res!1596229) b!3944613))

(declare-fun m!4513367 () Bool)

(assert (=> d!1170100 m!4513367))

(declare-fun m!4513369 () Bool)

(assert (=> b!3944613 m!4513369))

(assert (=> b!3944131 d!1170100))

(declare-fun d!1170102 () Bool)

(declare-fun res!1596234 () Bool)

(declare-fun e!2440882 () Bool)

(assert (=> d!1170102 (=> res!1596234 e!2440882)))

(assert (=> d!1170102 (= res!1596234 (is-Nil!41892 rules!2768))))

(assert (=> d!1170102 (= (noDuplicateTag!2555 thiss!20629 rules!2768 Nil!41897) e!2440882)))

(declare-fun b!3944618 () Bool)

(declare-fun e!2440883 () Bool)

(assert (=> b!3944618 (= e!2440882 e!2440883)))

(declare-fun res!1596235 () Bool)

(assert (=> b!3944618 (=> (not res!1596235) (not e!2440883))))

(declare-fun contains!8389 (List!42021 String!47615) Bool)

(assert (=> b!3944618 (= res!1596235 (not (contains!8389 Nil!41897 (tag!7409 (h!47312 rules!2768)))))))

(declare-fun b!3944619 () Bool)

(assert (=> b!3944619 (= e!2440883 (noDuplicateTag!2555 thiss!20629 (t!327353 rules!2768) (Cons!41897 (tag!7409 (h!47312 rules!2768)) Nil!41897)))))

(assert (= (and d!1170102 (not res!1596234)) b!3944618))

(assert (= (and b!3944618 res!1596235) b!3944619))

(declare-fun m!4513371 () Bool)

(assert (=> b!3944618 m!4513371))

(declare-fun m!4513373 () Bool)

(assert (=> b!3944619 m!4513373))

(assert (=> b!3944003 d!1170102))

(assert (=> b!3943941 d!1170034))

(declare-fun d!1170104 () Bool)

(assert (=> d!1170104 (= (head!8378 lt!1379064) (h!47310 lt!1379064))))

(assert (=> b!3943941 d!1170104))

(declare-fun d!1170106 () Bool)

(declare-fun e!2440885 () Bool)

(assert (=> d!1170106 e!2440885))

(declare-fun res!1596239 () Bool)

(assert (=> d!1170106 (=> res!1596239 e!2440885)))

(declare-fun lt!1379265 () Bool)

(assert (=> d!1170106 (= res!1596239 (not lt!1379265))))

(declare-fun e!2440884 () Bool)

(assert (=> d!1170106 (= lt!1379265 e!2440884)))

(declare-fun res!1596237 () Bool)

(assert (=> d!1170106 (=> res!1596237 e!2440884)))

(assert (=> d!1170106 (= res!1596237 (is-Nil!41890 lt!1379063))))

(assert (=> d!1170106 (= (isPrefix!3638 lt!1379063 (++!10856 lt!1379063 (_2!23724 (v!39304 lt!1379059)))) lt!1379265)))

(declare-fun b!3944620 () Bool)

(declare-fun e!2440886 () Bool)

(assert (=> b!3944620 (= e!2440884 e!2440886)))

(declare-fun res!1596238 () Bool)

(assert (=> b!3944620 (=> (not res!1596238) (not e!2440886))))

(assert (=> b!3944620 (= res!1596238 (not (is-Nil!41890 (++!10856 lt!1379063 (_2!23724 (v!39304 lt!1379059))))))))

(declare-fun b!3944621 () Bool)

(declare-fun res!1596236 () Bool)

(assert (=> b!3944621 (=> (not res!1596236) (not e!2440886))))

(assert (=> b!3944621 (= res!1596236 (= (head!8378 lt!1379063) (head!8378 (++!10856 lt!1379063 (_2!23724 (v!39304 lt!1379059))))))))

(declare-fun b!3944622 () Bool)

(assert (=> b!3944622 (= e!2440886 (isPrefix!3638 (tail!6104 lt!1379063) (tail!6104 (++!10856 lt!1379063 (_2!23724 (v!39304 lt!1379059))))))))

(declare-fun b!3944623 () Bool)

(assert (=> b!3944623 (= e!2440885 (>= (size!31414 (++!10856 lt!1379063 (_2!23724 (v!39304 lt!1379059)))) (size!31414 lt!1379063)))))

(assert (= (and d!1170106 (not res!1596237)) b!3944620))

(assert (= (and b!3944620 res!1596238) b!3944621))

(assert (= (and b!3944621 res!1596236) b!3944622))

(assert (= (and d!1170106 (not res!1596239)) b!3944623))

(assert (=> b!3944621 m!4512587))

(assert (=> b!3944621 m!4512439))

(declare-fun m!4513375 () Bool)

(assert (=> b!3944621 m!4513375))

(assert (=> b!3944622 m!4512591))

(assert (=> b!3944622 m!4512439))

(declare-fun m!4513377 () Bool)

(assert (=> b!3944622 m!4513377))

(assert (=> b!3944622 m!4512591))

(assert (=> b!3944622 m!4513377))

(declare-fun m!4513379 () Bool)

(assert (=> b!3944622 m!4513379))

(assert (=> b!3944623 m!4512439))

(declare-fun m!4513381 () Bool)

(assert (=> b!3944623 m!4513381))

(assert (=> b!3944623 m!4512579))

(assert (=> d!1169790 d!1170106))

(assert (=> d!1169790 d!1169804))

(declare-fun d!1170108 () Bool)

(assert (=> d!1170108 (isPrefix!3638 lt!1379063 (++!10856 lt!1379063 (_2!23724 (v!39304 lt!1379059))))))

(assert (=> d!1170108 true))

(declare-fun _$46!1594 () Unit!60431)

(assert (=> d!1170108 (= (choose!23532 lt!1379063 (_2!23724 (v!39304 lt!1379059))) _$46!1594)))

(declare-fun bs!586814 () Bool)

(assert (= bs!586814 d!1170108))

(assert (=> bs!586814 m!4512439))

(assert (=> bs!586814 m!4512439))

(assert (=> bs!586814 m!4512567))

(assert (=> d!1169790 d!1170108))

(declare-fun b!3944642 () Bool)

(declare-fun res!1596258 () Bool)

(declare-fun e!2440898 () Bool)

(assert (=> b!3944642 (=> (not res!1596258) (not e!2440898))))

(declare-fun lt!1379279 () Option!8969)

(assert (=> b!3944642 (= res!1596258 (= (value!207282 (_1!23724 (get!13836 lt!1379279))) (apply!9780 (transformation!6549 (rule!9511 (_1!23724 (get!13836 lt!1379279)))) (seqFromList!4808 (originalCharacters!7149 (_1!23724 (get!13836 lt!1379279)))))))))

(declare-fun b!3944643 () Bool)

(assert (=> b!3944643 (= e!2440898 (= (size!31412 (_1!23724 (get!13836 lt!1379279))) (size!31414 (originalCharacters!7149 (_1!23724 (get!13836 lt!1379279))))))))

(declare-fun b!3944644 () Bool)

(declare-fun e!2440895 () Option!8969)

(declare-datatypes ((tuple2!41186 0))(
  ( (tuple2!41187 (_1!23727 List!42014) (_2!23727 List!42014)) )
))
(declare-fun lt!1379280 () tuple2!41186)

(declare-fun size!31418 (BalanceConc!25114) Int)

(assert (=> b!3944644 (= e!2440895 (Some!8968 (tuple2!41181 (Token!12237 (apply!9780 (transformation!6549 (h!47312 rules!2768)) (seqFromList!4808 (_1!23727 lt!1379280))) (h!47312 rules!2768) (size!31418 (seqFromList!4808 (_1!23727 lt!1379280))) (_1!23727 lt!1379280)) (_2!23727 lt!1379280))))))

(declare-fun lt!1379278 () Unit!60431)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1250 (Regex!11454 List!42014) Unit!60431)

(assert (=> b!3944644 (= lt!1379278 (longestMatchIsAcceptedByMatchOrIsEmpty!1250 (regex!6549 (h!47312 rules!2768)) lt!1379060))))

(declare-fun res!1596259 () Bool)

(declare-fun findLongestMatchInner!1277 (Regex!11454 List!42014 Int List!42014 List!42014 Int) tuple2!41186)

(assert (=> b!3944644 (= res!1596259 (isEmpty!24997 (_1!23727 (findLongestMatchInner!1277 (regex!6549 (h!47312 rules!2768)) Nil!41890 (size!31414 Nil!41890) lt!1379060 lt!1379060 (size!31414 lt!1379060)))))))

(declare-fun e!2440896 () Bool)

(assert (=> b!3944644 (=> res!1596259 e!2440896)))

(assert (=> b!3944644 e!2440896))

(declare-fun lt!1379277 () Unit!60431)

(assert (=> b!3944644 (= lt!1379277 lt!1379278)))

(declare-fun lt!1379276 () Unit!60431)

(declare-fun lemmaSemiInverse!1783 (TokenValueInjection!12986 BalanceConc!25114) Unit!60431)

(assert (=> b!3944644 (= lt!1379276 (lemmaSemiInverse!1783 (transformation!6549 (h!47312 rules!2768)) (seqFromList!4808 (_1!23727 lt!1379280))))))

(declare-fun b!3944645 () Bool)

(assert (=> b!3944645 (= e!2440896 (matchR!5499 (regex!6549 (h!47312 rules!2768)) (_1!23727 (findLongestMatchInner!1277 (regex!6549 (h!47312 rules!2768)) Nil!41890 (size!31414 Nil!41890) lt!1379060 lt!1379060 (size!31414 lt!1379060)))))))

(declare-fun d!1170110 () Bool)

(declare-fun e!2440897 () Bool)

(assert (=> d!1170110 e!2440897))

(declare-fun res!1596257 () Bool)

(assert (=> d!1170110 (=> res!1596257 e!2440897)))

(assert (=> d!1170110 (= res!1596257 (isEmpty!25003 lt!1379279))))

(assert (=> d!1170110 (= lt!1379279 e!2440895)))

(declare-fun c!685227 () Bool)

(assert (=> d!1170110 (= c!685227 (isEmpty!24997 (_1!23727 lt!1379280)))))

(declare-fun findLongestMatch!1190 (Regex!11454 List!42014) tuple2!41186)

(assert (=> d!1170110 (= lt!1379280 (findLongestMatch!1190 (regex!6549 (h!47312 rules!2768)) lt!1379060))))

(assert (=> d!1170110 (ruleValid!2491 thiss!20629 (h!47312 rules!2768))))

(assert (=> d!1170110 (= (maxPrefixOneRule!2504 thiss!20629 (h!47312 rules!2768) lt!1379060) lt!1379279)))

(declare-fun b!3944646 () Bool)

(declare-fun res!1596260 () Bool)

(assert (=> b!3944646 (=> (not res!1596260) (not e!2440898))))

(assert (=> b!3944646 (= res!1596260 (= (++!10856 (list!15557 (charsOf!4367 (_1!23724 (get!13836 lt!1379279)))) (_2!23724 (get!13836 lt!1379279))) lt!1379060))))

(declare-fun b!3944647 () Bool)

(declare-fun res!1596256 () Bool)

(assert (=> b!3944647 (=> (not res!1596256) (not e!2440898))))

(assert (=> b!3944647 (= res!1596256 (< (size!31414 (_2!23724 (get!13836 lt!1379279))) (size!31414 lt!1379060)))))

(declare-fun b!3944648 () Bool)

(declare-fun res!1596255 () Bool)

(assert (=> b!3944648 (=> (not res!1596255) (not e!2440898))))

(assert (=> b!3944648 (= res!1596255 (= (rule!9511 (_1!23724 (get!13836 lt!1379279))) (h!47312 rules!2768)))))

(declare-fun b!3944649 () Bool)

(assert (=> b!3944649 (= e!2440895 None!8968)))

(declare-fun b!3944650 () Bool)

(assert (=> b!3944650 (= e!2440897 e!2440898)))

(declare-fun res!1596254 () Bool)

(assert (=> b!3944650 (=> (not res!1596254) (not e!2440898))))

(assert (=> b!3944650 (= res!1596254 (matchR!5499 (regex!6549 (h!47312 rules!2768)) (list!15557 (charsOf!4367 (_1!23724 (get!13836 lt!1379279))))))))

(assert (= (and d!1170110 c!685227) b!3944649))

(assert (= (and d!1170110 (not c!685227)) b!3944644))

(assert (= (and b!3944644 (not res!1596259)) b!3944645))

(assert (= (and d!1170110 (not res!1596257)) b!3944650))

(assert (= (and b!3944650 res!1596254) b!3944646))

(assert (= (and b!3944646 res!1596260) b!3944647))

(assert (= (and b!3944647 res!1596256) b!3944648))

(assert (= (and b!3944648 res!1596255) b!3944642))

(assert (= (and b!3944642 res!1596258) b!3944643))

(declare-fun m!4513383 () Bool)

(assert (=> b!3944645 m!4513383))

(assert (=> b!3944645 m!4512577))

(assert (=> b!3944645 m!4513383))

(assert (=> b!3944645 m!4512577))

(declare-fun m!4513385 () Bool)

(assert (=> b!3944645 m!4513385))

(declare-fun m!4513387 () Bool)

(assert (=> b!3944645 m!4513387))

(declare-fun m!4513389 () Bool)

(assert (=> b!3944647 m!4513389))

(declare-fun m!4513391 () Bool)

(assert (=> b!3944647 m!4513391))

(assert (=> b!3944647 m!4512577))

(assert (=> b!3944642 m!4513389))

(declare-fun m!4513393 () Bool)

(assert (=> b!3944642 m!4513393))

(assert (=> b!3944642 m!4513393))

(declare-fun m!4513395 () Bool)

(assert (=> b!3944642 m!4513395))

(assert (=> b!3944650 m!4513389))

(declare-fun m!4513397 () Bool)

(assert (=> b!3944650 m!4513397))

(assert (=> b!3944650 m!4513397))

(declare-fun m!4513399 () Bool)

(assert (=> b!3944650 m!4513399))

(assert (=> b!3944650 m!4513399))

(declare-fun m!4513401 () Bool)

(assert (=> b!3944650 m!4513401))

(assert (=> b!3944644 m!4512577))

(assert (=> b!3944644 m!4513383))

(assert (=> b!3944644 m!4512577))

(assert (=> b!3944644 m!4513385))

(assert (=> b!3944644 m!4513383))

(declare-fun m!4513403 () Bool)

(assert (=> b!3944644 m!4513403))

(declare-fun m!4513405 () Bool)

(assert (=> b!3944644 m!4513405))

(declare-fun m!4513407 () Bool)

(assert (=> b!3944644 m!4513407))

(assert (=> b!3944644 m!4513403))

(declare-fun m!4513409 () Bool)

(assert (=> b!3944644 m!4513409))

(declare-fun m!4513411 () Bool)

(assert (=> b!3944644 m!4513411))

(assert (=> b!3944644 m!4513403))

(declare-fun m!4513413 () Bool)

(assert (=> b!3944644 m!4513413))

(assert (=> b!3944644 m!4513403))

(assert (=> b!3944643 m!4513389))

(declare-fun m!4513415 () Bool)

(assert (=> b!3944643 m!4513415))

(assert (=> b!3944648 m!4513389))

(declare-fun m!4513417 () Bool)

(assert (=> d!1170110 m!4513417))

(declare-fun m!4513419 () Bool)

(assert (=> d!1170110 m!4513419))

(declare-fun m!4513421 () Bool)

(assert (=> d!1170110 m!4513421))

(assert (=> d!1170110 m!4513323))

(assert (=> b!3944646 m!4513389))

(assert (=> b!3944646 m!4513397))

(assert (=> b!3944646 m!4513397))

(assert (=> b!3944646 m!4513399))

(assert (=> b!3944646 m!4513399))

(declare-fun m!4513423 () Bool)

(assert (=> b!3944646 m!4513423))

(assert (=> bm!285100 d!1170110))

(declare-fun d!1170112 () Bool)

(declare-fun c!685228 () Bool)

(assert (=> d!1170112 (= c!685228 (is-Node!12760 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059))))) (value!207282 (_1!23724 (v!39304 lt!1379059)))))))))

(declare-fun e!2440899 () Bool)

(assert (=> d!1170112 (= (inv!56109 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059))))) (value!207282 (_1!23724 (v!39304 lt!1379059)))))) e!2440899)))

(declare-fun b!3944651 () Bool)

(assert (=> b!3944651 (= e!2440899 (inv!56113 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059))))) (value!207282 (_1!23724 (v!39304 lt!1379059)))))))))

(declare-fun b!3944652 () Bool)

(declare-fun e!2440900 () Bool)

(assert (=> b!3944652 (= e!2440899 e!2440900)))

(declare-fun res!1596261 () Bool)

(assert (=> b!3944652 (= res!1596261 (not (is-Leaf!19742 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059))))) (value!207282 (_1!23724 (v!39304 lt!1379059))))))))))

(assert (=> b!3944652 (=> res!1596261 e!2440900)))

(declare-fun b!3944653 () Bool)

(assert (=> b!3944653 (= e!2440900 (inv!56114 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059))))) (value!207282 (_1!23724 (v!39304 lt!1379059)))))))))

(assert (= (and d!1170112 c!685228) b!3944651))

(assert (= (and d!1170112 (not c!685228)) b!3944652))

(assert (= (and b!3944652 (not res!1596261)) b!3944653))

(declare-fun m!4513425 () Bool)

(assert (=> b!3944651 m!4513425))

(declare-fun m!4513427 () Bool)

(assert (=> b!3944653 m!4513427))

(assert (=> b!3943939 d!1170112))

(declare-fun d!1170114 () Bool)

(declare-fun c!685229 () Bool)

(assert (=> d!1170114 (= c!685229 (is-Nil!41890 lt!1379104))))

(declare-fun e!2440901 () (Set C!23094))

(assert (=> d!1170114 (= (content!6334 lt!1379104) e!2440901)))

(declare-fun b!3944654 () Bool)

(assert (=> b!3944654 (= e!2440901 (as set.empty (Set C!23094)))))

(declare-fun b!3944655 () Bool)

(assert (=> b!3944655 (= e!2440901 (set.union (set.insert (h!47310 lt!1379104) (as set.empty (Set C!23094))) (content!6334 (t!327351 lt!1379104))))))

(assert (= (and d!1170114 c!685229) b!3944654))

(assert (= (and d!1170114 (not c!685229)) b!3944655))

(declare-fun m!4513429 () Bool)

(assert (=> b!3944655 m!4513429))

(declare-fun m!4513431 () Bool)

(assert (=> b!3944655 m!4513431))

(assert (=> d!1169804 d!1170114))

(declare-fun d!1170116 () Bool)

(declare-fun c!685230 () Bool)

(assert (=> d!1170116 (= c!685230 (is-Nil!41890 lt!1379063))))

(declare-fun e!2440902 () (Set C!23094))

(assert (=> d!1170116 (= (content!6334 lt!1379063) e!2440902)))

(declare-fun b!3944656 () Bool)

(assert (=> b!3944656 (= e!2440902 (as set.empty (Set C!23094)))))

(declare-fun b!3944657 () Bool)

(assert (=> b!3944657 (= e!2440902 (set.union (set.insert (h!47310 lt!1379063) (as set.empty (Set C!23094))) (content!6334 (t!327351 lt!1379063))))))

(assert (= (and d!1170116 c!685230) b!3944656))

(assert (= (and d!1170116 (not c!685230)) b!3944657))

(declare-fun m!4513433 () Bool)

(assert (=> b!3944657 m!4513433))

(assert (=> b!3944657 m!4513271))

(assert (=> d!1169804 d!1170116))

(declare-fun d!1170118 () Bool)

(declare-fun c!685231 () Bool)

(assert (=> d!1170118 (= c!685231 (is-Nil!41890 (_2!23724 (v!39304 lt!1379059))))))

(declare-fun e!2440903 () (Set C!23094))

(assert (=> d!1170118 (= (content!6334 (_2!23724 (v!39304 lt!1379059))) e!2440903)))

(declare-fun b!3944658 () Bool)

(assert (=> b!3944658 (= e!2440903 (as set.empty (Set C!23094)))))

(declare-fun b!3944659 () Bool)

(assert (=> b!3944659 (= e!2440903 (set.union (set.insert (h!47310 (_2!23724 (v!39304 lt!1379059))) (as set.empty (Set C!23094))) (content!6334 (t!327351 (_2!23724 (v!39304 lt!1379059))))))))

(assert (= (and d!1170118 c!685231) b!3944658))

(assert (= (and d!1170118 (not c!685231)) b!3944659))

(declare-fun m!4513435 () Bool)

(assert (=> b!3944659 m!4513435))

(declare-fun m!4513437 () Bool)

(assert (=> b!3944659 m!4513437))

(assert (=> d!1169804 d!1170118))

(declare-fun d!1170120 () Bool)

(declare-fun lt!1379281 () Int)

(assert (=> d!1170120 (>= lt!1379281 0)))

(declare-fun e!2440904 () Int)

(assert (=> d!1170120 (= lt!1379281 e!2440904)))

(declare-fun c!685232 () Bool)

(assert (=> d!1170120 (= c!685232 (is-Nil!41891 (_1!23723 lt!1379154)))))

(assert (=> d!1170120 (= (size!31415 (_1!23723 lt!1379154)) lt!1379281)))

(declare-fun b!3944660 () Bool)

(assert (=> b!3944660 (= e!2440904 0)))

(declare-fun b!3944661 () Bool)

(assert (=> b!3944661 (= e!2440904 (+ 1 (size!31415 (t!327352 (_1!23723 lt!1379154)))))))

(assert (= (and d!1170120 c!685232) b!3944660))

(assert (= (and d!1170120 (not c!685232)) b!3944661))

(declare-fun m!4513439 () Bool)

(assert (=> b!3944661 m!4513439))

(assert (=> d!1169842 d!1170120))

(declare-fun b!3944662 () Bool)

(declare-fun res!1596263 () Bool)

(declare-fun e!2440905 () Bool)

(assert (=> b!3944662 (=> (not res!1596263) (not e!2440905))))

(declare-fun lt!1379285 () Option!8969)

(assert (=> b!3944662 (= res!1596263 (= (list!15557 (charsOf!4367 (_1!23724 (get!13836 lt!1379285)))) (originalCharacters!7149 (_1!23724 (get!13836 lt!1379285)))))))

(declare-fun b!3944663 () Bool)

(declare-fun e!2440906 () Option!8969)

(declare-fun lt!1379284 () Option!8969)

(declare-fun lt!1379286 () Option!8969)

(assert (=> b!3944663 (= e!2440906 (ite (and (is-None!8968 lt!1379284) (is-None!8968 lt!1379286)) None!8968 (ite (is-None!8968 lt!1379286) lt!1379284 (ite (is-None!8968 lt!1379284) lt!1379286 (ite (>= (size!31412 (_1!23724 (v!39304 lt!1379284))) (size!31412 (_1!23724 (v!39304 lt!1379286)))) lt!1379284 lt!1379286)))))))

(declare-fun call!285126 () Option!8969)

(assert (=> b!3944663 (= lt!1379284 call!285126)))

(assert (=> b!3944663 (= lt!1379286 (maxPrefix!3442 thiss!20629 (t!327353 rules!2768) suffix!1176))))

(declare-fun bm!285121 () Bool)

(assert (=> bm!285121 (= call!285126 (maxPrefixOneRule!2504 thiss!20629 (h!47312 rules!2768) suffix!1176))))

(declare-fun b!3944664 () Bool)

(assert (=> b!3944664 (= e!2440906 call!285126)))

(declare-fun b!3944665 () Bool)

(assert (=> b!3944665 (= e!2440905 (contains!8387 rules!2768 (rule!9511 (_1!23724 (get!13836 lt!1379285)))))))

(declare-fun b!3944666 () Bool)

(declare-fun res!1596268 () Bool)

(assert (=> b!3944666 (=> (not res!1596268) (not e!2440905))))

(assert (=> b!3944666 (= res!1596268 (matchR!5499 (regex!6549 (rule!9511 (_1!23724 (get!13836 lt!1379285)))) (list!15557 (charsOf!4367 (_1!23724 (get!13836 lt!1379285))))))))

(declare-fun b!3944667 () Bool)

(declare-fun res!1596264 () Bool)

(assert (=> b!3944667 (=> (not res!1596264) (not e!2440905))))

(assert (=> b!3944667 (= res!1596264 (< (size!31414 (_2!23724 (get!13836 lt!1379285))) (size!31414 suffix!1176)))))

(declare-fun b!3944668 () Bool)

(declare-fun e!2440907 () Bool)

(assert (=> b!3944668 (= e!2440907 e!2440905)))

(declare-fun res!1596265 () Bool)

(assert (=> b!3944668 (=> (not res!1596265) (not e!2440905))))

(assert (=> b!3944668 (= res!1596265 (isDefined!6966 lt!1379285))))

(declare-fun d!1170122 () Bool)

(assert (=> d!1170122 e!2440907))

(declare-fun res!1596262 () Bool)

(assert (=> d!1170122 (=> res!1596262 e!2440907)))

(assert (=> d!1170122 (= res!1596262 (isEmpty!25003 lt!1379285))))

(assert (=> d!1170122 (= lt!1379285 e!2440906)))

(declare-fun c!685233 () Bool)

(assert (=> d!1170122 (= c!685233 (and (is-Cons!41892 rules!2768) (is-Nil!41892 (t!327353 rules!2768))))))

(declare-fun lt!1379283 () Unit!60431)

(declare-fun lt!1379282 () Unit!60431)

(assert (=> d!1170122 (= lt!1379283 lt!1379282)))

(assert (=> d!1170122 (isPrefix!3638 suffix!1176 suffix!1176)))

(assert (=> d!1170122 (= lt!1379282 (lemmaIsPrefixRefl!2297 suffix!1176 suffix!1176))))

(assert (=> d!1170122 (rulesValidInductive!2367 thiss!20629 rules!2768)))

(assert (=> d!1170122 (= (maxPrefix!3442 thiss!20629 rules!2768 suffix!1176) lt!1379285)))

(declare-fun b!3944669 () Bool)

(declare-fun res!1596267 () Bool)

(assert (=> b!3944669 (=> (not res!1596267) (not e!2440905))))

(assert (=> b!3944669 (= res!1596267 (= (value!207282 (_1!23724 (get!13836 lt!1379285))) (apply!9780 (transformation!6549 (rule!9511 (_1!23724 (get!13836 lt!1379285)))) (seqFromList!4808 (originalCharacters!7149 (_1!23724 (get!13836 lt!1379285)))))))))

(declare-fun b!3944670 () Bool)

(declare-fun res!1596266 () Bool)

(assert (=> b!3944670 (=> (not res!1596266) (not e!2440905))))

(assert (=> b!3944670 (= res!1596266 (= (++!10856 (list!15557 (charsOf!4367 (_1!23724 (get!13836 lt!1379285)))) (_2!23724 (get!13836 lt!1379285))) suffix!1176))))

(assert (= (and d!1170122 c!685233) b!3944664))

(assert (= (and d!1170122 (not c!685233)) b!3944663))

(assert (= (or b!3944664 b!3944663) bm!285121))

(assert (= (and d!1170122 (not res!1596262)) b!3944668))

(assert (= (and b!3944668 res!1596265) b!3944662))

(assert (= (and b!3944662 res!1596263) b!3944667))

(assert (= (and b!3944667 res!1596264) b!3944670))

(assert (= (and b!3944670 res!1596266) b!3944669))

(assert (= (and b!3944669 res!1596267) b!3944666))

(assert (= (and b!3944666 res!1596268) b!3944665))

(declare-fun m!4513441 () Bool)

(assert (=> b!3944663 m!4513441))

(declare-fun m!4513443 () Bool)

(assert (=> b!3944667 m!4513443))

(declare-fun m!4513445 () Bool)

(assert (=> b!3944667 m!4513445))

(assert (=> b!3944667 m!4512673))

(declare-fun m!4513447 () Bool)

(assert (=> d!1170122 m!4513447))

(declare-fun m!4513449 () Bool)

(assert (=> d!1170122 m!4513449))

(declare-fun m!4513451 () Bool)

(assert (=> d!1170122 m!4513451))

(assert (=> d!1170122 m!4512737))

(declare-fun m!4513453 () Bool)

(assert (=> b!3944668 m!4513453))

(assert (=> b!3944670 m!4513443))

(declare-fun m!4513455 () Bool)

(assert (=> b!3944670 m!4513455))

(assert (=> b!3944670 m!4513455))

(declare-fun m!4513457 () Bool)

(assert (=> b!3944670 m!4513457))

(assert (=> b!3944670 m!4513457))

(declare-fun m!4513459 () Bool)

(assert (=> b!3944670 m!4513459))

(assert (=> b!3944665 m!4513443))

(declare-fun m!4513461 () Bool)

(assert (=> b!3944665 m!4513461))

(declare-fun m!4513463 () Bool)

(assert (=> bm!285121 m!4513463))

(assert (=> b!3944666 m!4513443))

(assert (=> b!3944666 m!4513455))

(assert (=> b!3944666 m!4513455))

(assert (=> b!3944666 m!4513457))

(assert (=> b!3944666 m!4513457))

(declare-fun m!4513465 () Bool)

(assert (=> b!3944666 m!4513465))

(assert (=> b!3944662 m!4513443))

(assert (=> b!3944662 m!4513455))

(assert (=> b!3944662 m!4513455))

(assert (=> b!3944662 m!4513457))

(assert (=> b!3944669 m!4513443))

(declare-fun m!4513467 () Bool)

(assert (=> b!3944669 m!4513467))

(assert (=> b!3944669 m!4513467))

(declare-fun m!4513469 () Bool)

(assert (=> b!3944669 m!4513469))

(assert (=> d!1169842 d!1170122))

(declare-fun b!3944671 () Bool)

(declare-fun e!2440908 () Bool)

(declare-fun tp!1200715 () Bool)

(assert (=> b!3944671 (= e!2440908 (and tp_is_empty!19879 tp!1200715))))

(assert (=> b!3944088 (= tp!1200598 e!2440908)))

(assert (= (and b!3944088 (is-Cons!41890 (t!327351 (t!327351 prefix!426)))) b!3944671))

(declare-fun b!3944672 () Bool)

(declare-fun e!2440909 () Bool)

(declare-fun tp!1200716 () Bool)

(assert (=> b!3944672 (= e!2440909 (and tp_is_empty!19879 tp!1200716))))

(assert (=> b!3944107 (= tp!1200615 e!2440909)))

(assert (= (and b!3944107 (is-Cons!41890 (originalCharacters!7149 (h!47311 (t!327352 prefixTokens!80))))) b!3944672))

(declare-fun b!3944675 () Bool)

(declare-fun e!2440910 () Bool)

(declare-fun tp!1200721 () Bool)

(assert (=> b!3944675 (= e!2440910 tp!1200721)))

(assert (=> b!3944108 (= tp!1200617 e!2440910)))

(declare-fun b!3944674 () Bool)

(declare-fun tp!1200719 () Bool)

(declare-fun tp!1200720 () Bool)

(assert (=> b!3944674 (= e!2440910 (and tp!1200719 tp!1200720))))

(declare-fun b!3944673 () Bool)

(assert (=> b!3944673 (= e!2440910 tp_is_empty!19879)))

(declare-fun b!3944676 () Bool)

(declare-fun tp!1200717 () Bool)

(declare-fun tp!1200718 () Bool)

(assert (=> b!3944676 (= e!2440910 (and tp!1200717 tp!1200718))))

(assert (= (and b!3944108 (is-ElementMatch!11454 (regex!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80)))))) b!3944673))

(assert (= (and b!3944108 (is-Concat!18234 (regex!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80)))))) b!3944674))

(assert (= (and b!3944108 (is-Star!11454 (regex!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80)))))) b!3944675))

(assert (= (and b!3944108 (is-Union!11454 (regex!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80)))))) b!3944676))

(declare-fun b!3944677 () Bool)

(declare-fun e!2440911 () Bool)

(declare-fun tp!1200722 () Bool)

(assert (=> b!3944677 (= e!2440911 (and tp_is_empty!19879 tp!1200722))))

(assert (=> b!3944116 (= tp!1200626 e!2440911)))

(assert (= (and b!3944116 (is-Cons!41890 (t!327351 (originalCharacters!7149 (h!47311 suffixTokens!72))))) b!3944677))

(declare-fun b!3944680 () Bool)

(declare-fun e!2440912 () Bool)

(declare-fun tp!1200727 () Bool)

(assert (=> b!3944680 (= e!2440912 tp!1200727)))

(assert (=> b!3944114 (= tp!1200625 e!2440912)))

(declare-fun b!3944679 () Bool)

(declare-fun tp!1200725 () Bool)

(declare-fun tp!1200726 () Bool)

(assert (=> b!3944679 (= e!2440912 (and tp!1200725 tp!1200726))))

(declare-fun b!3944678 () Bool)

(assert (=> b!3944678 (= e!2440912 tp_is_empty!19879)))

(declare-fun b!3944681 () Bool)

(declare-fun tp!1200723 () Bool)

(declare-fun tp!1200724 () Bool)

(assert (=> b!3944681 (= e!2440912 (and tp!1200723 tp!1200724))))

(assert (= (and b!3944114 (is-ElementMatch!11454 (reg!11783 (regex!6549 (rule!9511 (h!47311 prefixTokens!80)))))) b!3944678))

(assert (= (and b!3944114 (is-Concat!18234 (reg!11783 (regex!6549 (rule!9511 (h!47311 prefixTokens!80)))))) b!3944679))

(assert (= (and b!3944114 (is-Star!11454 (reg!11783 (regex!6549 (rule!9511 (h!47311 prefixTokens!80)))))) b!3944680))

(assert (= (and b!3944114 (is-Union!11454 (reg!11783 (regex!6549 (rule!9511 (h!47311 prefixTokens!80)))))) b!3944681))

(declare-fun b!3944684 () Bool)

(declare-fun e!2440913 () Bool)

(declare-fun tp!1200732 () Bool)

(assert (=> b!3944684 (= e!2440913 tp!1200732)))

(assert (=> b!3944115 (= tp!1200621 e!2440913)))

(declare-fun b!3944683 () Bool)

(declare-fun tp!1200730 () Bool)

(declare-fun tp!1200731 () Bool)

(assert (=> b!3944683 (= e!2440913 (and tp!1200730 tp!1200731))))

(declare-fun b!3944682 () Bool)

(assert (=> b!3944682 (= e!2440913 tp_is_empty!19879)))

(declare-fun b!3944685 () Bool)

(declare-fun tp!1200728 () Bool)

(declare-fun tp!1200729 () Bool)

(assert (=> b!3944685 (= e!2440913 (and tp!1200728 tp!1200729))))

(assert (= (and b!3944115 (is-ElementMatch!11454 (regOne!23421 (regex!6549 (rule!9511 (h!47311 prefixTokens!80)))))) b!3944682))

(assert (= (and b!3944115 (is-Concat!18234 (regOne!23421 (regex!6549 (rule!9511 (h!47311 prefixTokens!80)))))) b!3944683))

(assert (= (and b!3944115 (is-Star!11454 (regOne!23421 (regex!6549 (rule!9511 (h!47311 prefixTokens!80)))))) b!3944684))

(assert (= (and b!3944115 (is-Union!11454 (regOne!23421 (regex!6549 (rule!9511 (h!47311 prefixTokens!80)))))) b!3944685))

(declare-fun b!3944688 () Bool)

(declare-fun e!2440914 () Bool)

(declare-fun tp!1200737 () Bool)

(assert (=> b!3944688 (= e!2440914 tp!1200737)))

(assert (=> b!3944115 (= tp!1200622 e!2440914)))

(declare-fun b!3944687 () Bool)

(declare-fun tp!1200735 () Bool)

(declare-fun tp!1200736 () Bool)

(assert (=> b!3944687 (= e!2440914 (and tp!1200735 tp!1200736))))

(declare-fun b!3944686 () Bool)

(assert (=> b!3944686 (= e!2440914 tp_is_empty!19879)))

(declare-fun b!3944689 () Bool)

(declare-fun tp!1200733 () Bool)

(declare-fun tp!1200734 () Bool)

(assert (=> b!3944689 (= e!2440914 (and tp!1200733 tp!1200734))))

(assert (= (and b!3944115 (is-ElementMatch!11454 (regTwo!23421 (regex!6549 (rule!9511 (h!47311 prefixTokens!80)))))) b!3944686))

(assert (= (and b!3944115 (is-Concat!18234 (regTwo!23421 (regex!6549 (rule!9511 (h!47311 prefixTokens!80)))))) b!3944687))

(assert (= (and b!3944115 (is-Star!11454 (regTwo!23421 (regex!6549 (rule!9511 (h!47311 prefixTokens!80)))))) b!3944688))

(assert (= (and b!3944115 (is-Union!11454 (regTwo!23421 (regex!6549 (rule!9511 (h!47311 prefixTokens!80)))))) b!3944689))

(declare-fun tp!1200745 () Bool)

(declare-fun e!2440920 () Bool)

(declare-fun tp!1200746 () Bool)

(declare-fun b!3944698 () Bool)

(assert (=> b!3944698 (= e!2440920 (and (inv!56109 (left!31905 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) (value!207282 (h!47311 suffixTokens!72)))))) tp!1200745 (inv!56109 (right!32235 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) (value!207282 (h!47311 suffixTokens!72)))))) tp!1200746))))

(declare-fun b!3944700 () Bool)

(declare-fun e!2440919 () Bool)

(declare-fun tp!1200744 () Bool)

(assert (=> b!3944700 (= e!2440919 tp!1200744)))

(declare-fun b!3944699 () Bool)

(declare-fun inv!56117 (IArray!25525) Bool)

(assert (=> b!3944699 (= e!2440920 (and (inv!56117 (xs!16066 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) (value!207282 (h!47311 suffixTokens!72)))))) e!2440919))))

(assert (=> b!3943881 (= tp!1200575 (and (inv!56109 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) (value!207282 (h!47311 suffixTokens!72))))) e!2440920))))

(assert (= (and b!3943881 (is-Node!12760 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) (value!207282 (h!47311 suffixTokens!72)))))) b!3944698))

(assert (= b!3944699 b!3944700))

(assert (= (and b!3943881 (is-Leaf!19742 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) (value!207282 (h!47311 suffixTokens!72)))))) b!3944699))

(declare-fun m!4513471 () Bool)

(assert (=> b!3944698 m!4513471))

(declare-fun m!4513473 () Bool)

(assert (=> b!3944698 m!4513473))

(declare-fun m!4513475 () Bool)

(assert (=> b!3944699 m!4513475))

(assert (=> b!3943881 m!4512533))

(declare-fun tp!1200749 () Bool)

(declare-fun tp!1200748 () Bool)

(declare-fun b!3944701 () Bool)

(declare-fun e!2440922 () Bool)

(assert (=> b!3944701 (= e!2440922 (and (inv!56109 (left!31905 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) (value!207282 (h!47311 prefixTokens!80)))))) tp!1200748 (inv!56109 (right!32235 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) (value!207282 (h!47311 prefixTokens!80)))))) tp!1200749))))

(declare-fun b!3944703 () Bool)

(declare-fun e!2440921 () Bool)

(declare-fun tp!1200747 () Bool)

(assert (=> b!3944703 (= e!2440921 tp!1200747)))

(declare-fun b!3944702 () Bool)

(assert (=> b!3944702 (= e!2440922 (and (inv!56117 (xs!16066 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) (value!207282 (h!47311 prefixTokens!80)))))) e!2440921))))

(assert (=> b!3943902 (= tp!1200576 (and (inv!56109 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) (value!207282 (h!47311 prefixTokens!80))))) e!2440922))))

(assert (= (and b!3943902 (is-Node!12760 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) (value!207282 (h!47311 prefixTokens!80)))))) b!3944701))

(assert (= b!3944702 b!3944703))

(assert (= (and b!3943902 (is-Leaf!19742 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) (value!207282 (h!47311 prefixTokens!80)))))) b!3944702))

(declare-fun m!4513477 () Bool)

(assert (=> b!3944701 m!4513477))

(declare-fun m!4513479 () Bool)

(assert (=> b!3944701 m!4513479))

(declare-fun m!4513481 () Bool)

(assert (=> b!3944702 m!4513481))

(assert (=> b!3943902 m!4512555))

(declare-fun b!3944707 () Bool)

(declare-fun b_free!108041 () Bool)

(declare-fun b_next!108745 () Bool)

(assert (=> b!3944707 (= b_free!108041 (not b_next!108745))))

(declare-fun t!327494 () Bool)

(declare-fun tb!236741 () Bool)

(assert (=> (and b!3944707 (= (toValue!9017 (transformation!6549 (rule!9511 (h!47311 (t!327352 (t!327352 prefixTokens!80)))))) (toValue!9017 (transformation!6549 (rule!9511 (_1!23724 (get!13836 lt!1379150)))))) t!327494) tb!236741))

(declare-fun result!286758 () Bool)

(assert (= result!286758 result!286742))

(assert (=> d!1170086 t!327494))

(declare-fun tp!1200754 () Bool)

(declare-fun b_and!301703 () Bool)

(assert (=> b!3944707 (= tp!1200754 (and (=> t!327494 result!286758) b_and!301703))))

(declare-fun b_free!108043 () Bool)

(declare-fun b_next!108747 () Bool)

(assert (=> b!3944707 (= b_free!108043 (not b_next!108747))))

(declare-fun t!327496 () Bool)

(declare-fun tb!236743 () Bool)

(assert (=> (and b!3944707 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 (t!327352 prefixTokens!80)))))) (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (get!13836 lt!1379150)))))) t!327496) tb!236743))

(declare-fun result!286760 () Bool)

(assert (= result!286760 result!286694))

(assert (=> d!1169978 t!327496))

(declare-fun t!327498 () Bool)

(declare-fun tb!236745 () Bool)

(assert (=> (and b!3944707 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 (t!327352 prefixTokens!80)))))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80))))) t!327498) tb!236745))

(declare-fun result!286762 () Bool)

(assert (= result!286762 result!286610))

(assert (=> b!3943900 t!327498))

(declare-fun t!327500 () Bool)

(declare-fun tb!236747 () Bool)

(assert (=> (and b!3944707 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 (t!327352 prefixTokens!80)))))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80)))))) t!327500) tb!236747))

(declare-fun result!286764 () Bool)

(assert (= result!286764 result!286706))

(assert (=> b!3944521 t!327500))

(declare-fun t!327502 () Bool)

(declare-fun tb!236749 () Bool)

(assert (=> (and b!3944707 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 (t!327352 prefixTokens!80)))))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72)))))) t!327502) tb!236749))

(declare-fun result!286766 () Bool)

(assert (= result!286766 result!286730))

(assert (=> b!3944594 t!327502))

(declare-fun t!327504 () Bool)

(declare-fun tb!236751 () Bool)

(assert (=> (and b!3944707 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 (t!327352 prefixTokens!80)))))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72))))) t!327504) tb!236751))

(declare-fun result!286768 () Bool)

(assert (= result!286768 result!286602))

(assert (=> b!3943875 t!327504))

(declare-fun tb!236753 () Bool)

(declare-fun t!327506 () Bool)

(assert (=> (and b!3944707 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 (t!327352 prefixTokens!80)))))) (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059)))))) t!327506) tb!236753))

(declare-fun result!286770 () Bool)

(assert (= result!286770 result!286616))

(assert (=> d!1169806 t!327506))

(declare-fun tp!1200751 () Bool)

(declare-fun b_and!301705 () Bool)

(assert (=> b!3944707 (= tp!1200751 (and (=> t!327502 result!286766) (=> t!327506 result!286770) (=> t!327496 result!286760) (=> t!327498 result!286762) (=> t!327504 result!286768) (=> t!327500 result!286764) b_and!301705))))

(declare-fun e!2440925 () Bool)

(assert (=> b!3944106 (= tp!1200618 e!2440925)))

(declare-fun e!2440927 () Bool)

(declare-fun e!2440926 () Bool)

(declare-fun tp!1200750 () Bool)

(declare-fun b!3944705 () Bool)

(assert (=> b!3944705 (= e!2440926 (and (inv!21 (value!207282 (h!47311 (t!327352 (t!327352 prefixTokens!80))))) e!2440927 tp!1200750))))

(declare-fun tp!1200752 () Bool)

(declare-fun b!3944706 () Bool)

(declare-fun e!2440928 () Bool)

(assert (=> b!3944706 (= e!2440927 (and tp!1200752 (inv!56102 (tag!7409 (rule!9511 (h!47311 (t!327352 (t!327352 prefixTokens!80)))))) (inv!56106 (transformation!6549 (rule!9511 (h!47311 (t!327352 (t!327352 prefixTokens!80)))))) e!2440928))))

(declare-fun tp!1200753 () Bool)

(declare-fun b!3944704 () Bool)

(assert (=> b!3944704 (= e!2440925 (and (inv!56105 (h!47311 (t!327352 (t!327352 prefixTokens!80)))) e!2440926 tp!1200753))))

(assert (=> b!3944707 (= e!2440928 (and tp!1200754 tp!1200751))))

(assert (= b!3944706 b!3944707))

(assert (= b!3944705 b!3944706))

(assert (= b!3944704 b!3944705))

(assert (= (and b!3944106 (is-Cons!41891 (t!327352 (t!327352 prefixTokens!80)))) b!3944704))

(declare-fun m!4513483 () Bool)

(assert (=> b!3944705 m!4513483))

(declare-fun m!4513485 () Bool)

(assert (=> b!3944706 m!4513485))

(declare-fun m!4513487 () Bool)

(assert (=> b!3944706 m!4513487))

(declare-fun m!4513489 () Bool)

(assert (=> b!3944704 m!4513489))

(declare-fun b!3944710 () Bool)

(declare-fun e!2440929 () Bool)

(declare-fun tp!1200759 () Bool)

(assert (=> b!3944710 (= e!2440929 tp!1200759)))

(assert (=> b!3944113 (= tp!1200623 e!2440929)))

(declare-fun b!3944709 () Bool)

(declare-fun tp!1200757 () Bool)

(declare-fun tp!1200758 () Bool)

(assert (=> b!3944709 (= e!2440929 (and tp!1200757 tp!1200758))))

(declare-fun b!3944708 () Bool)

(assert (=> b!3944708 (= e!2440929 tp_is_empty!19879)))

(declare-fun b!3944711 () Bool)

(declare-fun tp!1200755 () Bool)

(declare-fun tp!1200756 () Bool)

(assert (=> b!3944711 (= e!2440929 (and tp!1200755 tp!1200756))))

(assert (= (and b!3944113 (is-ElementMatch!11454 (regOne!23420 (regex!6549 (rule!9511 (h!47311 prefixTokens!80)))))) b!3944708))

(assert (= (and b!3944113 (is-Concat!18234 (regOne!23420 (regex!6549 (rule!9511 (h!47311 prefixTokens!80)))))) b!3944709))

(assert (= (and b!3944113 (is-Star!11454 (regOne!23420 (regex!6549 (rule!9511 (h!47311 prefixTokens!80)))))) b!3944710))

(assert (= (and b!3944113 (is-Union!11454 (regOne!23420 (regex!6549 (rule!9511 (h!47311 prefixTokens!80)))))) b!3944711))

(declare-fun b!3944714 () Bool)

(declare-fun e!2440930 () Bool)

(declare-fun tp!1200764 () Bool)

(assert (=> b!3944714 (= e!2440930 tp!1200764)))

(assert (=> b!3944113 (= tp!1200624 e!2440930)))

(declare-fun b!3944713 () Bool)

(declare-fun tp!1200762 () Bool)

(declare-fun tp!1200763 () Bool)

(assert (=> b!3944713 (= e!2440930 (and tp!1200762 tp!1200763))))

(declare-fun b!3944712 () Bool)

(assert (=> b!3944712 (= e!2440930 tp_is_empty!19879)))

(declare-fun b!3944715 () Bool)

(declare-fun tp!1200760 () Bool)

(declare-fun tp!1200761 () Bool)

(assert (=> b!3944715 (= e!2440930 (and tp!1200760 tp!1200761))))

(assert (= (and b!3944113 (is-ElementMatch!11454 (regTwo!23420 (regex!6549 (rule!9511 (h!47311 prefixTokens!80)))))) b!3944712))

(assert (= (and b!3944113 (is-Concat!18234 (regTwo!23420 (regex!6549 (rule!9511 (h!47311 prefixTokens!80)))))) b!3944713))

(assert (= (and b!3944113 (is-Star!11454 (regTwo!23420 (regex!6549 (rule!9511 (h!47311 prefixTokens!80)))))) b!3944714))

(assert (= (and b!3944113 (is-Union!11454 (regTwo!23420 (regex!6549 (rule!9511 (h!47311 prefixTokens!80)))))) b!3944715))

(declare-fun b!3944718 () Bool)

(declare-fun e!2440931 () Bool)

(declare-fun tp!1200769 () Bool)

(assert (=> b!3944718 (= e!2440931 tp!1200769)))

(assert (=> b!3944082 (= tp!1200593 e!2440931)))

(declare-fun b!3944717 () Bool)

(declare-fun tp!1200767 () Bool)

(declare-fun tp!1200768 () Bool)

(assert (=> b!3944717 (= e!2440931 (and tp!1200767 tp!1200768))))

(declare-fun b!3944716 () Bool)

(assert (=> b!3944716 (= e!2440931 tp_is_empty!19879)))

(declare-fun b!3944719 () Bool)

(declare-fun tp!1200765 () Bool)

(declare-fun tp!1200766 () Bool)

(assert (=> b!3944719 (= e!2440931 (and tp!1200765 tp!1200766))))

(assert (= (and b!3944082 (is-ElementMatch!11454 (regex!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72)))))) b!3944716))

(assert (= (and b!3944082 (is-Concat!18234 (regex!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72)))))) b!3944717))

(assert (= (and b!3944082 (is-Star!11454 (regex!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72)))))) b!3944718))

(assert (= (and b!3944082 (is-Union!11454 (regex!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72)))))) b!3944719))

(declare-fun b!3944720 () Bool)

(declare-fun e!2440932 () Bool)

(declare-fun tp!1200770 () Bool)

(assert (=> b!3944720 (= e!2440932 (and tp_is_empty!19879 tp!1200770))))

(assert (=> b!3944121 (= tp!1200632 e!2440932)))

(assert (= (and b!3944121 (is-Cons!41890 (t!327351 (t!327351 suffixResult!91)))) b!3944720))

(declare-fun b!3944724 () Bool)

(declare-fun b_free!108045 () Bool)

(declare-fun b_next!108749 () Bool)

(assert (=> b!3944724 (= b_free!108045 (not b_next!108749))))

(declare-fun t!327508 () Bool)

(declare-fun tb!236755 () Bool)

(assert (=> (and b!3944724 (= (toValue!9017 (transformation!6549 (rule!9511 (h!47311 (t!327352 (t!327352 suffixTokens!72)))))) (toValue!9017 (transformation!6549 (rule!9511 (_1!23724 (get!13836 lt!1379150)))))) t!327508) tb!236755))

(declare-fun result!286772 () Bool)

(assert (= result!286772 result!286742))

(assert (=> d!1170086 t!327508))

(declare-fun tp!1200775 () Bool)

(declare-fun b_and!301707 () Bool)

(assert (=> b!3944724 (= tp!1200775 (and (=> t!327508 result!286772) b_and!301707))))

(declare-fun b_free!108047 () Bool)

(declare-fun b_next!108751 () Bool)

(assert (=> b!3944724 (= b_free!108047 (not b_next!108751))))

(declare-fun tb!236757 () Bool)

(declare-fun t!327510 () Bool)

(assert (=> (and b!3944724 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 (t!327352 suffixTokens!72)))))) (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (get!13836 lt!1379150)))))) t!327510) tb!236757))

(declare-fun result!286774 () Bool)

(assert (= result!286774 result!286694))

(assert (=> d!1169978 t!327510))

(declare-fun t!327512 () Bool)

(declare-fun tb!236759 () Bool)

(assert (=> (and b!3944724 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 (t!327352 suffixTokens!72)))))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80))))) t!327512) tb!236759))

(declare-fun result!286776 () Bool)

(assert (= result!286776 result!286610))

(assert (=> b!3943900 t!327512))

(declare-fun t!327514 () Bool)

(declare-fun tb!236761 () Bool)

(assert (=> (and b!3944724 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 (t!327352 suffixTokens!72)))))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80)))))) t!327514) tb!236761))

(declare-fun result!286778 () Bool)

(assert (= result!286778 result!286706))

(assert (=> b!3944521 t!327514))

(declare-fun t!327516 () Bool)

(declare-fun tb!236763 () Bool)

(assert (=> (and b!3944724 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 (t!327352 suffixTokens!72)))))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72)))))) t!327516) tb!236763))

(declare-fun result!286780 () Bool)

(assert (= result!286780 result!286730))

(assert (=> b!3944594 t!327516))

(declare-fun t!327518 () Bool)

(declare-fun tb!236765 () Bool)

(assert (=> (and b!3944724 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 (t!327352 suffixTokens!72)))))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72))))) t!327518) tb!236765))

(declare-fun result!286782 () Bool)

(assert (= result!286782 result!286602))

(assert (=> b!3943875 t!327518))

(declare-fun tb!236767 () Bool)

(declare-fun t!327520 () Bool)

(assert (=> (and b!3944724 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 (t!327352 suffixTokens!72)))))) (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059)))))) t!327520) tb!236767))

(declare-fun result!286784 () Bool)

(assert (= result!286784 result!286616))

(assert (=> d!1169806 t!327520))

(declare-fun b_and!301709 () Bool)

(declare-fun tp!1200772 () Bool)

(assert (=> b!3944724 (= tp!1200772 (and (=> t!327520 result!286784) (=> t!327514 result!286778) (=> t!327510 result!286774) (=> t!327518 result!286782) (=> t!327512 result!286776) (=> t!327516 result!286780) b_and!301709))))

(declare-fun e!2440935 () Bool)

(assert (=> b!3944080 (= tp!1200594 e!2440935)))

(declare-fun b!3944722 () Bool)

(declare-fun e!2440936 () Bool)

(declare-fun tp!1200771 () Bool)

(declare-fun e!2440937 () Bool)

(assert (=> b!3944722 (= e!2440936 (and (inv!21 (value!207282 (h!47311 (t!327352 (t!327352 suffixTokens!72))))) e!2440937 tp!1200771))))

(declare-fun b!3944723 () Bool)

(declare-fun e!2440938 () Bool)

(declare-fun tp!1200773 () Bool)

(assert (=> b!3944723 (= e!2440937 (and tp!1200773 (inv!56102 (tag!7409 (rule!9511 (h!47311 (t!327352 (t!327352 suffixTokens!72)))))) (inv!56106 (transformation!6549 (rule!9511 (h!47311 (t!327352 (t!327352 suffixTokens!72)))))) e!2440938))))

(declare-fun b!3944721 () Bool)

(declare-fun tp!1200774 () Bool)

(assert (=> b!3944721 (= e!2440935 (and (inv!56105 (h!47311 (t!327352 (t!327352 suffixTokens!72)))) e!2440936 tp!1200774))))

(assert (=> b!3944724 (= e!2440938 (and tp!1200775 tp!1200772))))

(assert (= b!3944723 b!3944724))

(assert (= b!3944722 b!3944723))

(assert (= b!3944721 b!3944722))

(assert (= (and b!3944080 (is-Cons!41891 (t!327352 (t!327352 suffixTokens!72)))) b!3944721))

(declare-fun m!4513491 () Bool)

(assert (=> b!3944722 m!4513491))

(declare-fun m!4513493 () Bool)

(assert (=> b!3944723 m!4513493))

(declare-fun m!4513495 () Bool)

(assert (=> b!3944723 m!4513495))

(declare-fun m!4513497 () Bool)

(assert (=> b!3944721 m!4513497))

(declare-fun b!3944727 () Bool)

(declare-fun e!2440939 () Bool)

(declare-fun tp!1200780 () Bool)

(assert (=> b!3944727 (= e!2440939 tp!1200780)))

(assert (=> b!3944120 (= tp!1200627 e!2440939)))

(declare-fun b!3944726 () Bool)

(declare-fun tp!1200778 () Bool)

(declare-fun tp!1200779 () Bool)

(assert (=> b!3944726 (= e!2440939 (and tp!1200778 tp!1200779))))

(declare-fun b!3944725 () Bool)

(assert (=> b!3944725 (= e!2440939 tp_is_empty!19879)))

(declare-fun b!3944728 () Bool)

(declare-fun tp!1200776 () Bool)

(declare-fun tp!1200777 () Bool)

(assert (=> b!3944728 (= e!2440939 (and tp!1200776 tp!1200777))))

(assert (= (and b!3944120 (is-ElementMatch!11454 (regOne!23421 (regex!6549 (rule!9511 (h!47311 suffixTokens!72)))))) b!3944725))

(assert (= (and b!3944120 (is-Concat!18234 (regOne!23421 (regex!6549 (rule!9511 (h!47311 suffixTokens!72)))))) b!3944726))

(assert (= (and b!3944120 (is-Star!11454 (regOne!23421 (regex!6549 (rule!9511 (h!47311 suffixTokens!72)))))) b!3944727))

(assert (= (and b!3944120 (is-Union!11454 (regOne!23421 (regex!6549 (rule!9511 (h!47311 suffixTokens!72)))))) b!3944728))

(declare-fun b!3944731 () Bool)

(declare-fun e!2440940 () Bool)

(declare-fun tp!1200785 () Bool)

(assert (=> b!3944731 (= e!2440940 tp!1200785)))

(assert (=> b!3944120 (= tp!1200628 e!2440940)))

(declare-fun b!3944730 () Bool)

(declare-fun tp!1200783 () Bool)

(declare-fun tp!1200784 () Bool)

(assert (=> b!3944730 (= e!2440940 (and tp!1200783 tp!1200784))))

(declare-fun b!3944729 () Bool)

(assert (=> b!3944729 (= e!2440940 tp_is_empty!19879)))

(declare-fun b!3944732 () Bool)

(declare-fun tp!1200781 () Bool)

(declare-fun tp!1200782 () Bool)

(assert (=> b!3944732 (= e!2440940 (and tp!1200781 tp!1200782))))

(assert (= (and b!3944120 (is-ElementMatch!11454 (regTwo!23421 (regex!6549 (rule!9511 (h!47311 suffixTokens!72)))))) b!3944729))

(assert (= (and b!3944120 (is-Concat!18234 (regTwo!23421 (regex!6549 (rule!9511 (h!47311 suffixTokens!72)))))) b!3944730))

(assert (= (and b!3944120 (is-Star!11454 (regTwo!23421 (regex!6549 (rule!9511 (h!47311 suffixTokens!72)))))) b!3944731))

(assert (= (and b!3944120 (is-Union!11454 (regTwo!23421 (regex!6549 (rule!9511 (h!47311 suffixTokens!72)))))) b!3944732))

(declare-fun b!3944733 () Bool)

(declare-fun e!2440941 () Bool)

(declare-fun tp!1200786 () Bool)

(assert (=> b!3944733 (= e!2440941 (and tp_is_empty!19879 tp!1200786))))

(assert (=> b!3944081 (= tp!1200591 e!2440941)))

(assert (= (and b!3944081 (is-Cons!41890 (originalCharacters!7149 (h!47311 (t!327352 suffixTokens!72))))) b!3944733))

(declare-fun b!3944736 () Bool)

(declare-fun e!2440942 () Bool)

(declare-fun tp!1200791 () Bool)

(assert (=> b!3944736 (= e!2440942 tp!1200791)))

(assert (=> b!3944105 (= tp!1200610 e!2440942)))

(declare-fun b!3944735 () Bool)

(declare-fun tp!1200789 () Bool)

(declare-fun tp!1200790 () Bool)

(assert (=> b!3944735 (= e!2440942 (and tp!1200789 tp!1200790))))

(declare-fun b!3944734 () Bool)

(assert (=> b!3944734 (= e!2440942 tp_is_empty!19879)))

(declare-fun b!3944737 () Bool)

(declare-fun tp!1200787 () Bool)

(declare-fun tp!1200788 () Bool)

(assert (=> b!3944737 (= e!2440942 (and tp!1200787 tp!1200788))))

(assert (= (and b!3944105 (is-ElementMatch!11454 (regOne!23421 (regex!6549 (h!47312 rules!2768))))) b!3944734))

(assert (= (and b!3944105 (is-Concat!18234 (regOne!23421 (regex!6549 (h!47312 rules!2768))))) b!3944735))

(assert (= (and b!3944105 (is-Star!11454 (regOne!23421 (regex!6549 (h!47312 rules!2768))))) b!3944736))

(assert (= (and b!3944105 (is-Union!11454 (regOne!23421 (regex!6549 (h!47312 rules!2768))))) b!3944737))

(declare-fun b!3944740 () Bool)

(declare-fun e!2440943 () Bool)

(declare-fun tp!1200796 () Bool)

(assert (=> b!3944740 (= e!2440943 tp!1200796)))

(assert (=> b!3944105 (= tp!1200611 e!2440943)))

(declare-fun b!3944739 () Bool)

(declare-fun tp!1200794 () Bool)

(declare-fun tp!1200795 () Bool)

(assert (=> b!3944739 (= e!2440943 (and tp!1200794 tp!1200795))))

(declare-fun b!3944738 () Bool)

(assert (=> b!3944738 (= e!2440943 tp_is_empty!19879)))

(declare-fun b!3944741 () Bool)

(declare-fun tp!1200792 () Bool)

(declare-fun tp!1200793 () Bool)

(assert (=> b!3944741 (= e!2440943 (and tp!1200792 tp!1200793))))

(assert (= (and b!3944105 (is-ElementMatch!11454 (regTwo!23421 (regex!6549 (h!47312 rules!2768))))) b!3944738))

(assert (= (and b!3944105 (is-Concat!18234 (regTwo!23421 (regex!6549 (h!47312 rules!2768))))) b!3944739))

(assert (= (and b!3944105 (is-Star!11454 (regTwo!23421 (regex!6549 (h!47312 rules!2768))))) b!3944740))

(assert (= (and b!3944105 (is-Union!11454 (regTwo!23421 (regex!6549 (h!47312 rules!2768))))) b!3944741))

(declare-fun b!3944744 () Bool)

(declare-fun b_free!108049 () Bool)

(declare-fun b_next!108753 () Bool)

(assert (=> b!3944744 (= b_free!108049 (not b_next!108753))))

(declare-fun t!327522 () Bool)

(declare-fun tb!236769 () Bool)

(assert (=> (and b!3944744 (= (toValue!9017 (transformation!6549 (h!47312 (t!327353 (t!327353 rules!2768))))) (toValue!9017 (transformation!6549 (rule!9511 (_1!23724 (get!13836 lt!1379150)))))) t!327522) tb!236769))

(declare-fun result!286786 () Bool)

(assert (= result!286786 result!286742))

(assert (=> d!1170086 t!327522))

(declare-fun b_and!301711 () Bool)

(declare-fun tp!1200798 () Bool)

(assert (=> b!3944744 (= tp!1200798 (and (=> t!327522 result!286786) b_and!301711))))

(declare-fun b_free!108051 () Bool)

(declare-fun b_next!108755 () Bool)

(assert (=> b!3944744 (= b_free!108051 (not b_next!108755))))

(declare-fun t!327524 () Bool)

(declare-fun tb!236771 () Bool)

(assert (=> (and b!3944744 (= (toChars!8876 (transformation!6549 (h!47312 (t!327353 (t!327353 rules!2768))))) (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (get!13836 lt!1379150)))))) t!327524) tb!236771))

(declare-fun result!286788 () Bool)

(assert (= result!286788 result!286694))

(assert (=> d!1169978 t!327524))

(declare-fun tb!236773 () Bool)

(declare-fun t!327526 () Bool)

(assert (=> (and b!3944744 (= (toChars!8876 (transformation!6549 (h!47312 (t!327353 (t!327353 rules!2768))))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80))))) t!327526) tb!236773))

(declare-fun result!286790 () Bool)

(assert (= result!286790 result!286610))

(assert (=> b!3943900 t!327526))

(declare-fun tb!236775 () Bool)

(declare-fun t!327528 () Bool)

(assert (=> (and b!3944744 (= (toChars!8876 (transformation!6549 (h!47312 (t!327353 (t!327353 rules!2768))))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80)))))) t!327528) tb!236775))

(declare-fun result!286792 () Bool)

(assert (= result!286792 result!286706))

(assert (=> b!3944521 t!327528))

(declare-fun tb!236777 () Bool)

(declare-fun t!327530 () Bool)

(assert (=> (and b!3944744 (= (toChars!8876 (transformation!6549 (h!47312 (t!327353 (t!327353 rules!2768))))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72)))))) t!327530) tb!236777))

(declare-fun result!286794 () Bool)

(assert (= result!286794 result!286730))

(assert (=> b!3944594 t!327530))

(declare-fun t!327532 () Bool)

(declare-fun tb!236779 () Bool)

(assert (=> (and b!3944744 (= (toChars!8876 (transformation!6549 (h!47312 (t!327353 (t!327353 rules!2768))))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72))))) t!327532) tb!236779))

(declare-fun result!286796 () Bool)

(assert (= result!286796 result!286602))

(assert (=> b!3943875 t!327532))

(declare-fun t!327534 () Bool)

(declare-fun tb!236781 () Bool)

(assert (=> (and b!3944744 (= (toChars!8876 (transformation!6549 (h!47312 (t!327353 (t!327353 rules!2768))))) (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059)))))) t!327534) tb!236781))

(declare-fun result!286798 () Bool)

(assert (= result!286798 result!286616))

(assert (=> d!1169806 t!327534))

(declare-fun tp!1200800 () Bool)

(declare-fun b_and!301713 () Bool)

(assert (=> b!3944744 (= tp!1200800 (and (=> t!327524 result!286788) (=> t!327530 result!286794) (=> t!327528 result!286792) (=> t!327532 result!286796) (=> t!327534 result!286798) (=> t!327526 result!286790) b_and!301713))))

(declare-fun e!2440944 () Bool)

(assert (=> b!3944744 (= e!2440944 (and tp!1200798 tp!1200800))))

(declare-fun tp!1200799 () Bool)

(declare-fun e!2440946 () Bool)

(declare-fun b!3944743 () Bool)

(assert (=> b!3944743 (= e!2440946 (and tp!1200799 (inv!56102 (tag!7409 (h!47312 (t!327353 (t!327353 rules!2768))))) (inv!56106 (transformation!6549 (h!47312 (t!327353 (t!327353 rules!2768))))) e!2440944))))

(declare-fun b!3944742 () Bool)

(declare-fun e!2440945 () Bool)

(declare-fun tp!1200797 () Bool)

(assert (=> b!3944742 (= e!2440945 (and e!2440946 tp!1200797))))

(assert (=> b!3944130 (= tp!1200641 e!2440945)))

(assert (= b!3944743 b!3944744))

(assert (= b!3944742 b!3944743))

(assert (= (and b!3944130 (is-Cons!41892 (t!327353 (t!327353 rules!2768)))) b!3944742))

(declare-fun m!4513499 () Bool)

(assert (=> b!3944743 m!4513499))

(declare-fun m!4513501 () Bool)

(assert (=> b!3944743 m!4513501))

(declare-fun b!3944745 () Bool)

(declare-fun e!2440948 () Bool)

(declare-fun tp!1200801 () Bool)

(assert (=> b!3944745 (= e!2440948 (and tp_is_empty!19879 tp!1200801))))

(assert (=> b!3944111 (= tp!1200620 e!2440948)))

(assert (= (and b!3944111 (is-Cons!41890 (t!327351 (t!327351 suffix!1176)))) b!3944745))

(declare-fun b!3944748 () Bool)

(declare-fun e!2440949 () Bool)

(declare-fun tp!1200806 () Bool)

(assert (=> b!3944748 (= e!2440949 tp!1200806)))

(assert (=> b!3944131 (= tp!1200643 e!2440949)))

(declare-fun b!3944747 () Bool)

(declare-fun tp!1200804 () Bool)

(declare-fun tp!1200805 () Bool)

(assert (=> b!3944747 (= e!2440949 (and tp!1200804 tp!1200805))))

(declare-fun b!3944746 () Bool)

(assert (=> b!3944746 (= e!2440949 tp_is_empty!19879)))

(declare-fun b!3944749 () Bool)

(declare-fun tp!1200802 () Bool)

(declare-fun tp!1200803 () Bool)

(assert (=> b!3944749 (= e!2440949 (and tp!1200802 tp!1200803))))

(assert (= (and b!3944131 (is-ElementMatch!11454 (regex!6549 (h!47312 (t!327353 rules!2768))))) b!3944746))

(assert (= (and b!3944131 (is-Concat!18234 (regex!6549 (h!47312 (t!327353 rules!2768))))) b!3944747))

(assert (= (and b!3944131 (is-Star!11454 (regex!6549 (h!47312 (t!327353 rules!2768))))) b!3944748))

(assert (= (and b!3944131 (is-Union!11454 (regex!6549 (h!47312 (t!327353 rules!2768))))) b!3944749))

(declare-fun b!3944752 () Bool)

(declare-fun e!2440950 () Bool)

(declare-fun tp!1200811 () Bool)

(assert (=> b!3944752 (= e!2440950 tp!1200811)))

(assert (=> b!3944118 (= tp!1200629 e!2440950)))

(declare-fun b!3944751 () Bool)

(declare-fun tp!1200809 () Bool)

(declare-fun tp!1200810 () Bool)

(assert (=> b!3944751 (= e!2440950 (and tp!1200809 tp!1200810))))

(declare-fun b!3944750 () Bool)

(assert (=> b!3944750 (= e!2440950 tp_is_empty!19879)))

(declare-fun b!3944753 () Bool)

(declare-fun tp!1200807 () Bool)

(declare-fun tp!1200808 () Bool)

(assert (=> b!3944753 (= e!2440950 (and tp!1200807 tp!1200808))))

(assert (= (and b!3944118 (is-ElementMatch!11454 (regOne!23420 (regex!6549 (rule!9511 (h!47311 suffixTokens!72)))))) b!3944750))

(assert (= (and b!3944118 (is-Concat!18234 (regOne!23420 (regex!6549 (rule!9511 (h!47311 suffixTokens!72)))))) b!3944751))

(assert (= (and b!3944118 (is-Star!11454 (regOne!23420 (regex!6549 (rule!9511 (h!47311 suffixTokens!72)))))) b!3944752))

(assert (= (and b!3944118 (is-Union!11454 (regOne!23420 (regex!6549 (rule!9511 (h!47311 suffixTokens!72)))))) b!3944753))

(declare-fun b!3944756 () Bool)

(declare-fun e!2440951 () Bool)

(declare-fun tp!1200816 () Bool)

(assert (=> b!3944756 (= e!2440951 tp!1200816)))

(assert (=> b!3944118 (= tp!1200630 e!2440951)))

(declare-fun b!3944755 () Bool)

(declare-fun tp!1200814 () Bool)

(declare-fun tp!1200815 () Bool)

(assert (=> b!3944755 (= e!2440951 (and tp!1200814 tp!1200815))))

(declare-fun b!3944754 () Bool)

(assert (=> b!3944754 (= e!2440951 tp_is_empty!19879)))

(declare-fun b!3944757 () Bool)

(declare-fun tp!1200812 () Bool)

(declare-fun tp!1200813 () Bool)

(assert (=> b!3944757 (= e!2440951 (and tp!1200812 tp!1200813))))

(assert (= (and b!3944118 (is-ElementMatch!11454 (regTwo!23420 (regex!6549 (rule!9511 (h!47311 suffixTokens!72)))))) b!3944754))

(assert (= (and b!3944118 (is-Concat!18234 (regTwo!23420 (regex!6549 (rule!9511 (h!47311 suffixTokens!72)))))) b!3944755))

(assert (= (and b!3944118 (is-Star!11454 (regTwo!23420 (regex!6549 (rule!9511 (h!47311 suffixTokens!72)))))) b!3944756))

(assert (= (and b!3944118 (is-Union!11454 (regTwo!23420 (regex!6549 (rule!9511 (h!47311 suffixTokens!72)))))) b!3944757))

(declare-fun b!3944760 () Bool)

(declare-fun e!2440952 () Bool)

(declare-fun tp!1200821 () Bool)

(assert (=> b!3944760 (= e!2440952 tp!1200821)))

(assert (=> b!3944119 (= tp!1200631 e!2440952)))

(declare-fun b!3944759 () Bool)

(declare-fun tp!1200819 () Bool)

(declare-fun tp!1200820 () Bool)

(assert (=> b!3944759 (= e!2440952 (and tp!1200819 tp!1200820))))

(declare-fun b!3944758 () Bool)

(assert (=> b!3944758 (= e!2440952 tp_is_empty!19879)))

(declare-fun b!3944761 () Bool)

(declare-fun tp!1200817 () Bool)

(declare-fun tp!1200818 () Bool)

(assert (=> b!3944761 (= e!2440952 (and tp!1200817 tp!1200818))))

(assert (= (and b!3944119 (is-ElementMatch!11454 (reg!11783 (regex!6549 (rule!9511 (h!47311 suffixTokens!72)))))) b!3944758))

(assert (= (and b!3944119 (is-Concat!18234 (reg!11783 (regex!6549 (rule!9511 (h!47311 suffixTokens!72)))))) b!3944759))

(assert (= (and b!3944119 (is-Star!11454 (reg!11783 (regex!6549 (rule!9511 (h!47311 suffixTokens!72)))))) b!3944760))

(assert (= (and b!3944119 (is-Union!11454 (reg!11783 (regex!6549 (rule!9511 (h!47311 suffixTokens!72)))))) b!3944761))

(declare-fun tp!1200823 () Bool)

(declare-fun tp!1200824 () Bool)

(declare-fun e!2440954 () Bool)

(declare-fun b!3944762 () Bool)

(assert (=> b!3944762 (= e!2440954 (and (inv!56109 (left!31905 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059))))) (value!207282 (_1!23724 (v!39304 lt!1379059))))))) tp!1200823 (inv!56109 (right!32235 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059))))) (value!207282 (_1!23724 (v!39304 lt!1379059))))))) tp!1200824))))

(declare-fun b!3944764 () Bool)

(declare-fun e!2440953 () Bool)

(declare-fun tp!1200822 () Bool)

(assert (=> b!3944764 (= e!2440953 tp!1200822)))

(declare-fun b!3944763 () Bool)

(assert (=> b!3944763 (= e!2440954 (and (inv!56117 (xs!16066 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059))))) (value!207282 (_1!23724 (v!39304 lt!1379059))))))) e!2440953))))

(assert (=> b!3943939 (= tp!1200577 (and (inv!56109 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059))))) (value!207282 (_1!23724 (v!39304 lt!1379059)))))) e!2440954))))

(assert (= (and b!3943939 (is-Node!12760 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059))))) (value!207282 (_1!23724 (v!39304 lt!1379059))))))) b!3944762))

(assert (= b!3944763 b!3944764))

(assert (= (and b!3943939 (is-Leaf!19742 (c!685074 (dynLambda!17942 (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059))))) (value!207282 (_1!23724 (v!39304 lt!1379059))))))) b!3944763))

(declare-fun m!4513503 () Bool)

(assert (=> b!3944762 m!4513503))

(declare-fun m!4513505 () Bool)

(assert (=> b!3944762 m!4513505))

(declare-fun m!4513507 () Bool)

(assert (=> b!3944763 m!4513507))

(assert (=> b!3943939 m!4512611))

(declare-fun b!3944765 () Bool)

(declare-fun e!2440955 () Bool)

(declare-fun tp!1200825 () Bool)

(assert (=> b!3944765 (= e!2440955 (and tp_is_empty!19879 tp!1200825))))

(assert (=> b!3944089 (= tp!1200599 e!2440955)))

(assert (= (and b!3944089 (is-Cons!41890 (t!327351 (originalCharacters!7149 (h!47311 prefixTokens!80))))) b!3944765))

(declare-fun b!3944768 () Bool)

(declare-fun e!2440956 () Bool)

(declare-fun tp!1200830 () Bool)

(assert (=> b!3944768 (= e!2440956 tp!1200830)))

(assert (=> b!3944103 (= tp!1200612 e!2440956)))

(declare-fun b!3944767 () Bool)

(declare-fun tp!1200828 () Bool)

(declare-fun tp!1200829 () Bool)

(assert (=> b!3944767 (= e!2440956 (and tp!1200828 tp!1200829))))

(declare-fun b!3944766 () Bool)

(assert (=> b!3944766 (= e!2440956 tp_is_empty!19879)))

(declare-fun b!3944769 () Bool)

(declare-fun tp!1200826 () Bool)

(declare-fun tp!1200827 () Bool)

(assert (=> b!3944769 (= e!2440956 (and tp!1200826 tp!1200827))))

(assert (= (and b!3944103 (is-ElementMatch!11454 (regOne!23420 (regex!6549 (h!47312 rules!2768))))) b!3944766))

(assert (= (and b!3944103 (is-Concat!18234 (regOne!23420 (regex!6549 (h!47312 rules!2768))))) b!3944767))

(assert (= (and b!3944103 (is-Star!11454 (regOne!23420 (regex!6549 (h!47312 rules!2768))))) b!3944768))

(assert (= (and b!3944103 (is-Union!11454 (regOne!23420 (regex!6549 (h!47312 rules!2768))))) b!3944769))

(declare-fun b!3944772 () Bool)

(declare-fun e!2440957 () Bool)

(declare-fun tp!1200835 () Bool)

(assert (=> b!3944772 (= e!2440957 tp!1200835)))

(assert (=> b!3944103 (= tp!1200613 e!2440957)))

(declare-fun b!3944771 () Bool)

(declare-fun tp!1200833 () Bool)

(declare-fun tp!1200834 () Bool)

(assert (=> b!3944771 (= e!2440957 (and tp!1200833 tp!1200834))))

(declare-fun b!3944770 () Bool)

(assert (=> b!3944770 (= e!2440957 tp_is_empty!19879)))

(declare-fun b!3944773 () Bool)

(declare-fun tp!1200831 () Bool)

(declare-fun tp!1200832 () Bool)

(assert (=> b!3944773 (= e!2440957 (and tp!1200831 tp!1200832))))

(assert (= (and b!3944103 (is-ElementMatch!11454 (regTwo!23420 (regex!6549 (h!47312 rules!2768))))) b!3944770))

(assert (= (and b!3944103 (is-Concat!18234 (regTwo!23420 (regex!6549 (h!47312 rules!2768))))) b!3944771))

(assert (= (and b!3944103 (is-Star!11454 (regTwo!23420 (regex!6549 (h!47312 rules!2768))))) b!3944772))

(assert (= (and b!3944103 (is-Union!11454 (regTwo!23420 (regex!6549 (h!47312 rules!2768))))) b!3944773))

(declare-fun b!3944776 () Bool)

(declare-fun e!2440958 () Bool)

(declare-fun tp!1200840 () Bool)

(assert (=> b!3944776 (= e!2440958 tp!1200840)))

(assert (=> b!3944104 (= tp!1200614 e!2440958)))

(declare-fun b!3944775 () Bool)

(declare-fun tp!1200838 () Bool)

(declare-fun tp!1200839 () Bool)

(assert (=> b!3944775 (= e!2440958 (and tp!1200838 tp!1200839))))

(declare-fun b!3944774 () Bool)

(assert (=> b!3944774 (= e!2440958 tp_is_empty!19879)))

(declare-fun b!3944777 () Bool)

(declare-fun tp!1200836 () Bool)

(declare-fun tp!1200837 () Bool)

(assert (=> b!3944777 (= e!2440958 (and tp!1200836 tp!1200837))))

(assert (= (and b!3944104 (is-ElementMatch!11454 (reg!11783 (regex!6549 (h!47312 rules!2768))))) b!3944774))

(assert (= (and b!3944104 (is-Concat!18234 (reg!11783 (regex!6549 (h!47312 rules!2768))))) b!3944775))

(assert (= (and b!3944104 (is-Star!11454 (reg!11783 (regex!6549 (h!47312 rules!2768))))) b!3944776))

(assert (= (and b!3944104 (is-Union!11454 (reg!11783 (regex!6549 (h!47312 rules!2768))))) b!3944777))

(declare-fun b_lambda!115365 () Bool)

(assert (= b_lambda!115339 (or (and b!3944083 b_free!108019 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72))))) (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059))))))) (and b!3943798 b_free!108003 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059))))))) (and b!3943796 b_free!107995 (= (toChars!8876 (transformation!6549 (h!47312 rules!2768))) (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059))))))) (and b!3944724 b_free!108047 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 (t!327352 suffixTokens!72)))))) (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059))))))) (and b!3944744 b_free!108051 (= (toChars!8876 (transformation!6549 (h!47312 (t!327353 (t!327353 rules!2768))))) (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059))))))) (and b!3944707 b_free!108043 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 (t!327352 prefixTokens!80)))))) (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059))))))) (and b!3944109 b_free!108023 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80))))) (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059))))))) (and b!3943797 b_free!107999 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059))))))) (and b!3944132 b_free!108027 (= (toChars!8876 (transformation!6549 (h!47312 (t!327353 rules!2768)))) (toChars!8876 (transformation!6549 (rule!9511 (_1!23724 (v!39304 lt!1379059))))))) b_lambda!115365)))

(declare-fun b_lambda!115367 () Bool)

(assert (= b_lambda!115357 (or (and b!3944083 b_free!108019 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72))))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80))))))) (and b!3944707 b_free!108043 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 (t!327352 prefixTokens!80)))))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80))))))) (and b!3943796 b_free!107995 (= (toChars!8876 (transformation!6549 (h!47312 rules!2768))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80))))))) (and b!3943797 b_free!107999 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80))))))) (and b!3944132 b_free!108027 (= (toChars!8876 (transformation!6549 (h!47312 (t!327353 rules!2768)))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80))))))) (and b!3944109 b_free!108023) (and b!3943798 b_free!108003 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80))))))) (and b!3944724 b_free!108047 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 (t!327352 suffixTokens!72)))))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80))))))) (and b!3944744 b_free!108051 (= (toChars!8876 (transformation!6549 (h!47312 (t!327353 (t!327353 rules!2768))))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80))))))) b_lambda!115367)))

(declare-fun b_lambda!115369 () Bool)

(assert (= b_lambda!115361 (or (and b!3943796 b_free!107995 (= (toChars!8876 (transformation!6549 (h!47312 rules!2768))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72))))))) (and b!3944083 b_free!108019) (and b!3944109 b_free!108023 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 prefixTokens!80))))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72))))))) (and b!3943798 b_free!108003 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 suffixTokens!72)))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72))))))) (and b!3944132 b_free!108027 (= (toChars!8876 (transformation!6549 (h!47312 (t!327353 rules!2768)))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72))))))) (and b!3944744 b_free!108051 (= (toChars!8876 (transformation!6549 (h!47312 (t!327353 (t!327353 rules!2768))))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72))))))) (and b!3944707 b_free!108043 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 (t!327352 prefixTokens!80)))))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72))))))) (and b!3943797 b_free!107999 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 prefixTokens!80)))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72))))))) (and b!3944724 b_free!108047 (= (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 (t!327352 suffixTokens!72)))))) (toChars!8876 (transformation!6549 (rule!9511 (h!47311 (t!327352 suffixTokens!72))))))) b_lambda!115369)))

(push 1)

(assert (not b!3944749))

(assert (not d!1169962))

(assert (not b!3944699))

(assert (not b!3944719))

(assert (not b!3944757))

(assert (not b!3944760))

(assert (not b!3944374))

(assert (not bm!285104))

(assert (not b!3944657))

(assert (not b!3944733))

(assert (not b!3944521))

(assert (not b!3944596))

(assert (not d!1170032))

(assert b_and!301697)

(assert (not d!1170012))

(assert (not d!1169970))

(assert (not b!3944307))

(assert (not d!1169928))

(assert (not b!3944739))

(assert (not b!3944730))

(assert (not b!3944302))

(assert (not tb!236681))

(assert (not b!3944518))

(assert (not b_next!108755))

(assert (not b!3944623))

(assert (not b!3944645))

(assert (not b!3944301))

(assert (not b!3944753))

(assert (not b!3944689))

(assert (not b!3944489))

(assert (not b!3944322))

(assert (not b!3944522))

(assert (not b!3944365))

(assert (not b!3944376))

(assert (not b!3944409))

(assert (not b!3943902))

(assert (not b!3944706))

(assert (not b!3944741))

(assert (not b!3944669))

(assert (not b!3944309))

(assert (not d!1170040))

(assert (not d!1170056))

(assert (not b!3944761))

(assert (not d!1170052))

(assert (not b!3944776))

(assert (not b!3944748))

(assert (not b!3944720))

(assert (not b_next!108701))

(assert (not b_next!108731))

(assert (not b!3944698))

(assert (not b_next!108707))

(assert (not b!3944404))

(assert (not b!3944768))

(assert (not b!3944292))

(assert (not d!1169960))

(assert (not b!3944764))

(assert (not b!3944500))

(assert b_and!301685)

(assert (not b!3943939))

(assert (not b_next!108699))

(assert (not b!3944662))

(assert (not b!3944608))

(assert (not b!3944643))

(assert (not d!1170108))

(assert (not b!3944298))

(assert (not d!1170092))

(assert (not tb!236717))

(assert b_and!301711)

(assert (not b!3944385))

(assert (not d!1170082))

(assert (not b!3944310))

(assert (not b!3944406))

(assert (not b!3944684))

(assert (not b!3944324))

(assert (not b!3944460))

(assert (not b!3944773))

(assert (not d!1170122))

(assert (not d!1169968))

(assert (not b!3944687))

(assert b_and!301695)

(assert (not b_lambda!115367))

(assert (not b!3944570))

(assert (not b!3944701))

(assert (not b_next!108697))

(assert (not b!3944400))

(assert (not b!3944613))

(assert (not b!3944702))

(assert (not b!3944594))

(assert (not b_next!108749))

(assert (not b!3944759))

(assert (not b!3944644))

(assert (not b!3944414))

(assert (not bm!285116))

(assert (not b!3943881))

(assert (not b!3944619))

(assert (not b!3944313))

(assert (not b!3944650))

(assert (not b!3944312))

(assert (not b!3944326))

(assert (not b!3944677))

(assert (not b_next!108721))

(assert (not b!3944497))

(assert (not b!3944688))

(assert (not b!3944683))

(assert (not b!3944667))

(assert (not b!3944610))

(assert (not b!3944391))

(assert (not b!3944747))

(assert (not d!1170026))

(assert (not b!3944756))

(assert (not b!3944680))

(assert (not b!3944399))

(assert (not b!3944642))

(assert (not b!3944735))

(assert (not b!3944745))

(assert (not b_next!108747))

(assert (not d!1169922))

(assert (not d!1170094))

(assert (not b!3944736))

(assert (not b!3944396))

(assert (not b!3944705))

(assert (not b!3944571))

(assert (not b!3944456))

(assert (not b!3944777))

(assert (not b!3944737))

(assert (not b!3944621))

(assert (not d!1169904))

(assert (not b!3944710))

(assert (not d!1170022))

(assert (not b!3944679))

(assert (not b!3944592))

(assert (not b!3944775))

(assert (not b!3944665))

(assert (not b!3944743))

(assert (not d!1170068))

(assert b_and!301707)

(assert (not b!3944612))

(assert (not b!3944771))

(assert (not b!3944352))

(assert (not d!1170042))

(assert (not b!3944676))

(assert (not b!3944718))

(assert (not b!3944732))

(assert (not b!3944671))

(assert (not b_next!108753))

(assert (not b!3944742))

(assert (not b!3944525))

(assert (not b!3944709))

(assert (not b!3944445))

(assert (not b!3944659))

(assert b_and!301713)

(assert (not b!3944595))

(assert (not b!3944751))

(assert (not b!3944704))

(assert (not b_next!108729))

(assert (not b!3944470))

(assert (not b!3944604))

(assert (not b_lambda!115345))

(assert (not b!3944501))

(assert b_and!301705)

(assert b_and!301703)

(assert (not b!3944647))

(assert (not b!3944448))

(assert (not b_lambda!115369))

(assert (not b!3944740))

(assert (not b!3944395))

(assert (not b_next!108705))

(assert b_and!301691)

(assert (not b!3944661))

(assert (not d!1170050))

(assert (not d!1170060))

(assert (not b!3944717))

(assert (not b!3944591))

(assert (not b!3944726))

(assert (not b!3944320))

(assert (not d!1170088))

(assert (not d!1170110))

(assert (not b!3944458))

(assert (not b!3944728))

(assert (not b!3944715))

(assert (not b!3944672))

(assert (not b!3944675))

(assert (not b!3944303))

(assert (not b!3944523))

(assert (not b!3944516))

(assert (not d!1170084))

(assert tp_is_empty!19879)

(assert (not b!3944755))

(assert (not b!3944403))

(assert (not b!3944721))

(assert (not b!3944468))

(assert b_and!301689)

(assert (not bm!285121))

(assert b_and!301709)

(assert (not d!1169978))

(assert (not b!3944411))

(assert (not b!3944572))

(assert b_and!301679)

(assert (not b_next!108751))

(assert (not d!1170080))

(assert (not b!3944526))

(assert (not b!3944622))

(assert (not d!1169988))

(assert (not b!3944731))

(assert (not b!3944618))

(assert (not b!3944461))

(assert (not b!3944415))

(assert (not b_next!108725))

(assert (not b!3944519))

(assert (not d!1169940))

(assert (not b!3944722))

(assert (not d!1169976))

(assert (not b!3944763))

(assert (not b!3944402))

(assert (not d!1170074))

(assert (not b!3944387))

(assert (not b!3944284))

(assert (not b!3944668))

(assert (not b!3944363))

(assert (not d!1169926))

(assert (not d!1170100))

(assert (not d!1170046))

(assert (not b!3944297))

(assert b_and!301687)

(assert (not b_lambda!115365))

(assert (not b!3944655))

(assert (not d!1169984))

(assert (not b!3944648))

(assert (not b!3944294))

(assert (not d!1169994))

(assert (not b!3944700))

(assert (not b!3944772))

(assert (not b!3944727))

(assert (not b_next!108727))

(assert (not b!3944285))

(assert (not b!3944711))

(assert (not d!1170002))

(assert (not b!3944767))

(assert (not b_lambda!115343))

(assert (not b!3944488))

(assert (not d!1169894))

(assert (not d!1170020))

(assert (not b!3944713))

(assert (not b!3944296))

(assert (not b!3944651))

(assert (not b!3944305))

(assert b_and!301701)

(assert (not b!3944393))

(assert (not b!3944412))

(assert (not d!1170018))

(assert (not b!3944681))

(assert (not b!3944389))

(assert (not b!3944308))

(assert (not b!3944714))

(assert (not b!3944703))

(assert (not d!1169974))

(assert (not b!3944367))

(assert (not d!1170038))

(assert (not b!3944762))

(assert (not b_next!108723))

(assert (not bm!285112))

(assert (not b!3944568))

(assert (not b!3944653))

(assert (not b_next!108703))

(assert (not b!3944486))

(assert (not b_lambda!115363))

(assert (not d!1169958))

(assert (not b!3944543))

(assert (not b!3944765))

(assert (not b_next!108745))

(assert (not b!3944723))

(assert (not b!3944300))

(assert (not b!3944670))

(assert (not d!1170066))

(assert (not b!3944769))

(assert b_and!301693)

(assert (not tb!236693))

(assert (not d!1169896))

(assert (not b!3944542))

(assert b_and!301681)

(assert (not b!3944377))

(assert (not b!3944598))

(assert (not b!3944663))

(assert (not b!3944304))

(assert (not bm!285113))

(assert (not tb!236729))

(assert (not b!3944452))

(assert (not b!3944666))

(assert (not b!3944674))

(assert (not b!3944646))

(assert (not b!3944752))

(assert (not b_lambda!115355))

(assert (not d!1170016))

(assert (not b!3944685))

(assert (not b!3944408))

(assert (not b!3944379))

(assert b_and!301683)

(assert (not b!3944453))

(assert b_and!301699)

(check-sat)

(pop 1)

(push 1)

(assert b_and!301697)

(assert (not b_next!108755))

(assert (not b_next!108701))

(assert b_and!301695)

(assert (not b_next!108721))

(assert (not b_next!108747))

(assert b_and!301707)

(assert (not b_next!108753))

(assert b_and!301713)

(assert (not b_next!108725))

(assert b_and!301687)

(assert (not b_next!108745))

(assert (not b_next!108731))

(assert (not b_next!108707))

(assert b_and!301685)

(assert (not b_next!108699))

(assert b_and!301711)

(assert (not b_next!108697))

(assert (not b_next!108749))

(assert (not b_next!108729))

(assert b_and!301705)

(assert b_and!301703)

(assert (not b_next!108705))

(assert b_and!301691)

(assert b_and!301689)

(assert b_and!301709)

(assert b_and!301679)

(assert (not b_next!108751))

(assert (not b_next!108727))

(assert b_and!301701)

(assert (not b_next!108723))

(assert (not b_next!108703))

(assert b_and!301693)

(assert b_and!301681)

(assert b_and!301683)

(assert b_and!301699)

(check-sat)

(pop 1)

