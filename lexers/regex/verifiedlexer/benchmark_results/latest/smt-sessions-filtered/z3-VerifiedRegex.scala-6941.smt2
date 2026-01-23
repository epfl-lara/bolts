; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!367488 () Bool)

(assert start!367488)

(declare-fun b!3919526 () Bool)

(declare-fun b_free!106517 () Bool)

(declare-fun b_next!107221 () Bool)

(assert (=> b!3919526 (= b_free!106517 (not b_next!107221))))

(declare-fun tp!1192977 () Bool)

(declare-fun b_and!298667 () Bool)

(assert (=> b!3919526 (= tp!1192977 b_and!298667)))

(declare-fun b_free!106519 () Bool)

(declare-fun b_next!107223 () Bool)

(assert (=> b!3919526 (= b_free!106519 (not b_next!107223))))

(declare-fun tp!1192967 () Bool)

(declare-fun b_and!298669 () Bool)

(assert (=> b!3919526 (= tp!1192967 b_and!298669)))

(declare-fun b!3919524 () Bool)

(declare-fun b_free!106521 () Bool)

(declare-fun b_next!107225 () Bool)

(assert (=> b!3919524 (= b_free!106521 (not b_next!107225))))

(declare-fun tp!1192976 () Bool)

(declare-fun b_and!298671 () Bool)

(assert (=> b!3919524 (= tp!1192976 b_and!298671)))

(declare-fun b_free!106523 () Bool)

(declare-fun b_next!107227 () Bool)

(assert (=> b!3919524 (= b_free!106523 (not b_next!107227))))

(declare-fun tp!1192963 () Bool)

(declare-fun b_and!298673 () Bool)

(assert (=> b!3919524 (= tp!1192963 b_and!298673)))

(declare-fun b!3919536 () Bool)

(declare-fun b_free!106525 () Bool)

(declare-fun b_next!107229 () Bool)

(assert (=> b!3919536 (= b_free!106525 (not b_next!107229))))

(declare-fun tp!1192964 () Bool)

(declare-fun b_and!298675 () Bool)

(assert (=> b!3919536 (= tp!1192964 b_and!298675)))

(declare-fun b_free!106527 () Bool)

(declare-fun b_next!107231 () Bool)

(assert (=> b!3919536 (= b_free!106527 (not b_next!107231))))

(declare-fun tp!1192965 () Bool)

(declare-fun b_and!298677 () Bool)

(assert (=> b!3919536 (= tp!1192965 b_and!298677)))

(declare-fun b!3919500 () Bool)

(declare-fun res!1585490 () Bool)

(declare-fun e!2423489 () Bool)

(assert (=> b!3919500 (=> (not res!1585490) (not e!2423489))))

(declare-datatypes ((C!22936 0))(
  ( (C!22937 (val!13562 Int)) )
))
(declare-datatypes ((List!41661 0))(
  ( (Nil!41537) (Cons!41537 (h!46957 C!22936) (t!324388 List!41661)) )
))
(declare-fun prefix!426 () List!41661)

(declare-fun isEmpty!24726 (List!41661) Bool)

(assert (=> b!3919500 (= res!1585490 (not (isEmpty!24726 prefix!426)))))

(declare-fun b!3919501 () Bool)

(declare-fun e!2423498 () Bool)

(declare-fun lt!1365782 () Int)

(declare-fun lt!1365786 () Int)

(assert (=> b!3919501 (= e!2423498 (>= lt!1365782 lt!1365786))))

(declare-datatypes ((Unit!59675 0))(
  ( (Unit!59676) )
))
(declare-fun lt!1365779 () Unit!59675)

(declare-fun e!2423477 () Unit!59675)

(assert (=> b!3919501 (= lt!1365779 e!2423477)))

(declare-fun c!681203 () Bool)

(assert (=> b!3919501 (= c!681203 (< lt!1365782 lt!1365786))))

(declare-datatypes ((IArray!25367 0))(
  ( (IArray!25368 (innerList!12741 List!41661)) )
))
(declare-datatypes ((Conc!12681 0))(
  ( (Node!12681 (left!31766 Conc!12681) (right!32096 Conc!12681) (csize!25592 Int) (cheight!12892 Int)) (Leaf!19623 (xs!15987 IArray!25367) (csize!25593 Int)) (Empty!12681) )
))
(declare-datatypes ((BalanceConc!24956 0))(
  ( (BalanceConc!24957 (c!681204 Conc!12681)) )
))
(declare-datatypes ((List!41662 0))(
  ( (Nil!41538) (Cons!41538 (h!46958 (_ BitVec 16)) (t!324389 List!41662)) )
))
(declare-datatypes ((TokenValue!6700 0))(
  ( (FloatLiteralValue!13400 (text!47345 List!41662)) (TokenValueExt!6699 (__x!25617 Int)) (Broken!33500 (value!205003 List!41662)) (Object!6823) (End!6700) (Def!6700) (Underscore!6700) (Match!6700) (Else!6700) (Error!6700) (Case!6700) (If!6700) (Extends!6700) (Abstract!6700) (Class!6700) (Val!6700) (DelimiterValue!13400 (del!6760 List!41662)) (KeywordValue!6706 (value!205004 List!41662)) (CommentValue!13400 (value!205005 List!41662)) (WhitespaceValue!13400 (value!205006 List!41662)) (IndentationValue!6700 (value!205007 List!41662)) (String!47217) (Int32!6700) (Broken!33501 (value!205008 List!41662)) (Boolean!6701) (Unit!59677) (OperatorValue!6703 (op!6760 List!41662)) (IdentifierValue!13400 (value!205009 List!41662)) (IdentifierValue!13401 (value!205010 List!41662)) (WhitespaceValue!13401 (value!205011 List!41662)) (True!13400) (False!13400) (Broken!33502 (value!205012 List!41662)) (Broken!33503 (value!205013 List!41662)) (True!13401) (RightBrace!6700) (RightBracket!6700) (Colon!6700) (Null!6700) (Comma!6700) (LeftBracket!6700) (False!13401) (LeftBrace!6700) (ImaginaryLiteralValue!6700 (text!47346 List!41662)) (StringLiteralValue!20100 (value!205014 List!41662)) (EOFValue!6700 (value!205015 List!41662)) (IdentValue!6700 (value!205016 List!41662)) (DelimiterValue!13401 (value!205017 List!41662)) (DedentValue!6700 (value!205018 List!41662)) (NewLineValue!6700 (value!205019 List!41662)) (IntegerValue!20100 (value!205020 (_ BitVec 32)) (text!47347 List!41662)) (IntegerValue!20101 (value!205021 Int) (text!47348 List!41662)) (Times!6700) (Or!6700) (Equal!6700) (Minus!6700) (Broken!33504 (value!205022 List!41662)) (And!6700) (Div!6700) (LessEqual!6700) (Mod!6700) (Concat!18075) (Not!6700) (Plus!6700) (SpaceValue!6700 (value!205023 List!41662)) (IntegerValue!20102 (value!205024 Int) (text!47349 List!41662)) (StringLiteralValue!20101 (text!47350 List!41662)) (FloatLiteralValue!13401 (text!47351 List!41662)) (BytesLiteralValue!6700 (value!205025 List!41662)) (CommentValue!13401 (value!205026 List!41662)) (StringLiteralValue!20102 (value!205027 List!41662)) (ErrorTokenValue!6700 (msg!6761 List!41662)) )
))
(declare-datatypes ((Regex!11375 0))(
  ( (ElementMatch!11375 (c!681205 C!22936)) (Concat!18076 (regOne!23262 Regex!11375) (regTwo!23262 Regex!11375)) (EmptyExpr!11375) (Star!11375 (reg!11704 Regex!11375)) (EmptyLang!11375) (Union!11375 (regOne!23263 Regex!11375) (regTwo!23263 Regex!11375)) )
))
(declare-datatypes ((String!47218 0))(
  ( (String!47219 (value!205028 String)) )
))
(declare-datatypes ((TokenValueInjection!12828 0))(
  ( (TokenValueInjection!12829 (toValue!8922 Int) (toChars!8781 Int)) )
))
(declare-datatypes ((Rule!12740 0))(
  ( (Rule!12741 (regex!6470 Regex!11375) (tag!7330 String!47218) (isSeparator!6470 Bool) (transformation!6470 TokenValueInjection!12828)) )
))
(declare-datatypes ((Token!12078 0))(
  ( (Token!12079 (value!205029 TokenValue!6700) (rule!9400 Rule!12740) (size!31189 Int) (originalCharacters!7070 List!41661)) )
))
(declare-datatypes ((tuple2!40798 0))(
  ( (tuple2!40799 (_1!23533 Token!12078) (_2!23533 List!41661)) )
))
(declare-fun lt!1365778 () tuple2!40798)

(declare-fun size!31190 (List!41661) Int)

(assert (=> b!3919501 (= lt!1365782 (size!31190 (_2!23533 lt!1365778)))))

(declare-fun b!3919502 () Bool)

(declare-fun e!2423488 () Bool)

(assert (=> b!3919502 e!2423488))

(declare-fun res!1585476 () Bool)

(assert (=> b!3919502 (=> (not res!1585476) (not e!2423488))))

(declare-fun suffixResult!91 () List!41661)

(declare-datatypes ((List!41663 0))(
  ( (Nil!41539) (Cons!41539 (h!46959 Token!12078) (t!324390 List!41663)) )
))
(declare-datatypes ((tuple2!40800 0))(
  ( (tuple2!40801 (_1!23534 List!41663) (_2!23534 List!41661)) )
))
(declare-fun call!284584 () tuple2!40800)

(declare-fun suffixTokens!72 () List!41663)

(declare-fun lt!1365774 () List!41663)

(declare-fun ++!10697 (List!41663 List!41663) List!41663)

(assert (=> b!3919502 (= res!1585476 (not (= call!284584 (tuple2!40801 (++!10697 lt!1365774 suffixTokens!72) suffixResult!91))))))

(declare-fun lt!1365789 () Unit!59675)

(declare-datatypes ((LexerInterface!6059 0))(
  ( (LexerInterfaceExt!6056 (__x!25618 Int)) (Lexer!6057) )
))
(declare-fun thiss!20629 () LexerInterface!6059)

(declare-fun suffix!1176 () List!41661)

(declare-datatypes ((List!41664 0))(
  ( (Nil!41540) (Cons!41540 (h!46960 Rule!12740) (t!324391 List!41664)) )
))
(declare-fun rules!2768 () List!41664)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!70 (LexerInterface!6059 List!41664 List!41661 List!41661 List!41663 List!41661 List!41663) Unit!59675)

(assert (=> b!3919502 (= lt!1365789 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!70 thiss!20629 rules!2768 suffix!1176 (_2!23533 lt!1365778) suffixTokens!72 suffixResult!91 lt!1365774))))

(declare-fun e!2423499 () Unit!59675)

(declare-fun Unit!59678 () Unit!59675)

(assert (=> b!3919502 (= e!2423499 Unit!59678)))

(declare-fun e!2423482 () Bool)

(declare-fun e!2423503 () Bool)

(declare-fun tp!1192966 () Bool)

(declare-fun b!3919503 () Bool)

(declare-fun inv!55734 (String!47218) Bool)

(declare-fun inv!55737 (TokenValueInjection!12828) Bool)

(assert (=> b!3919503 (= e!2423503 (and tp!1192966 (inv!55734 (tag!7330 (rule!9400 (h!46959 suffixTokens!72)))) (inv!55737 (transformation!6470 (rule!9400 (h!46959 suffixTokens!72)))) e!2423482))))

(declare-fun b!3919504 () Bool)

(declare-fun e!2423501 () Bool)

(assert (=> b!3919504 (= e!2423501 e!2423498)))

(declare-fun res!1585489 () Bool)

(assert (=> b!3919504 (=> res!1585489 e!2423498)))

(declare-fun prefixTokens!80 () List!41663)

(declare-fun head!8291 (List!41663) Token!12078)

(assert (=> b!3919504 (= res!1585489 (not (= (_1!23533 lt!1365778) (head!8291 prefixTokens!80))))))

(declare-datatypes ((Option!8890 0))(
  ( (None!8889) (Some!8889 (v!39215 tuple2!40798)) )
))
(declare-fun lt!1365793 () Option!8890)

(declare-fun get!13725 (Option!8890) tuple2!40798)

(assert (=> b!3919504 (= lt!1365778 (get!13725 lt!1365793))))

(declare-fun b!3919505 () Bool)

(declare-fun res!1585480 () Bool)

(declare-fun e!2423487 () Bool)

(assert (=> b!3919505 (=> res!1585480 e!2423487)))

(declare-fun lt!1365783 () tuple2!40800)

(assert (=> b!3919505 (= res!1585480 (or (not (= lt!1365783 (tuple2!40801 (_1!23534 lt!1365783) (_2!23534 lt!1365783)))) (= (_2!23533 (v!39215 lt!1365793)) suffix!1176)))))

(declare-fun b!3919506 () Bool)

(declare-fun e!2423504 () Bool)

(assert (=> b!3919506 (= e!2423489 e!2423504)))

(declare-fun res!1585473 () Bool)

(assert (=> b!3919506 (=> (not res!1585473) (not e!2423504))))

(declare-fun lt!1365798 () List!41663)

(declare-fun lt!1365780 () tuple2!40800)

(assert (=> b!3919506 (= res!1585473 (= lt!1365780 (tuple2!40801 lt!1365798 suffixResult!91)))))

(declare-fun lt!1365799 () List!41661)

(declare-fun lexList!1827 (LexerInterface!6059 List!41664 List!41661) tuple2!40800)

(assert (=> b!3919506 (= lt!1365780 (lexList!1827 thiss!20629 rules!2768 lt!1365799))))

(assert (=> b!3919506 (= lt!1365798 (++!10697 prefixTokens!80 suffixTokens!72))))

(declare-fun ++!10698 (List!41661 List!41661) List!41661)

(assert (=> b!3919506 (= lt!1365799 (++!10698 prefix!426 suffix!1176))))

(declare-fun b!3919507 () Bool)

(declare-fun res!1585486 () Bool)

(assert (=> b!3919507 (=> res!1585486 e!2423487)))

(assert (=> b!3919507 (= res!1585486 (not (= lt!1365780 (tuple2!40801 (++!10697 (Cons!41539 (_1!23533 (v!39215 lt!1365793)) Nil!41539) (_1!23534 lt!1365783)) (_2!23534 lt!1365783)))))))

(declare-fun b!3919508 () Bool)

(declare-fun e!2423496 () Bool)

(declare-fun tp_is_empty!19721 () Bool)

(declare-fun tp!1192969 () Bool)

(assert (=> b!3919508 (= e!2423496 (and tp_is_empty!19721 tp!1192969))))

(declare-fun e!2423484 () Bool)

(declare-fun e!2423493 () Bool)

(declare-fun tp!1192971 () Bool)

(declare-fun b!3919509 () Bool)

(declare-fun inv!55738 (Token!12078) Bool)

(assert (=> b!3919509 (= e!2423493 (and (inv!55738 (h!46959 suffixTokens!72)) e!2423484 tp!1192971))))

(declare-fun b!3919510 () Bool)

(declare-fun res!1585478 () Bool)

(assert (=> b!3919510 (=> (not res!1585478) (not e!2423489))))

(declare-fun isEmpty!24727 (List!41664) Bool)

(assert (=> b!3919510 (= res!1585478 (not (isEmpty!24727 rules!2768)))))

(declare-fun b!3919511 () Bool)

(assert (=> b!3919511 (= e!2423488 false)))

(declare-fun b!3919512 () Bool)

(declare-fun e!2423495 () Bool)

(declare-fun tp!1192970 () Bool)

(declare-fun e!2423508 () Bool)

(assert (=> b!3919512 (= e!2423495 (and tp!1192970 (inv!55734 (tag!7330 (h!46960 rules!2768))) (inv!55737 (transformation!6470 (h!46960 rules!2768))) e!2423508))))

(declare-fun b!3919513 () Bool)

(declare-fun Unit!59679 () Unit!59675)

(assert (=> b!3919513 (= e!2423477 Unit!59679)))

(declare-fun b!3919514 () Bool)

(declare-fun e!2423483 () Bool)

(declare-fun tp!1192962 () Bool)

(assert (=> b!3919514 (= e!2423483 (and tp_is_empty!19721 tp!1192962))))

(declare-fun res!1585481 () Bool)

(assert (=> start!367488 (=> (not res!1585481) (not e!2423489))))

(get-info :version)

(assert (=> start!367488 (= res!1585481 ((_ is Lexer!6057) thiss!20629))))

(assert (=> start!367488 e!2423489))

(assert (=> start!367488 e!2423483))

(assert (=> start!367488 true))

(declare-fun e!2423490 () Bool)

(assert (=> start!367488 e!2423490))

(declare-fun e!2423500 () Bool)

(assert (=> start!367488 e!2423500))

(declare-fun e!2423486 () Bool)

(assert (=> start!367488 e!2423486))

(assert (=> start!367488 e!2423493))

(assert (=> start!367488 e!2423496))

(declare-fun bm!284579 () Bool)

(assert (=> bm!284579 (= call!284584 (lexList!1827 thiss!20629 rules!2768 (_2!23533 lt!1365778)))))

(declare-fun b!3919515 () Bool)

(declare-fun e!2423478 () Bool)

(declare-fun e!2423485 () Bool)

(assert (=> b!3919515 (= e!2423478 e!2423485)))

(declare-fun res!1585482 () Bool)

(assert (=> b!3919515 (=> res!1585482 e!2423485)))

(declare-fun lt!1365784 () Int)

(declare-fun lt!1365797 () Int)

(declare-fun lt!1365790 () Int)

(assert (=> b!3919515 (= res!1585482 (or (not (= (+ lt!1365784 lt!1365786) lt!1365790)) (<= lt!1365797 lt!1365784)))))

(assert (=> b!3919515 (= lt!1365784 (size!31190 prefix!426))))

(declare-fun b!3919516 () Bool)

(declare-fun e!2423481 () Bool)

(declare-fun e!2423494 () Bool)

(assert (=> b!3919516 (= e!2423481 e!2423494)))

(declare-fun res!1585484 () Bool)

(assert (=> b!3919516 (=> (not res!1585484) (not e!2423494))))

(assert (=> b!3919516 (= res!1585484 ((_ is Some!8889) lt!1365793))))

(declare-fun maxPrefix!3363 (LexerInterface!6059 List!41664 List!41661) Option!8890)

(assert (=> b!3919516 (= lt!1365793 (maxPrefix!3363 thiss!20629 rules!2768 lt!1365799))))

(declare-fun b!3919517 () Bool)

(declare-fun e!2423505 () Bool)

(assert (=> b!3919517 (= e!2423505 (= (size!31189 (_1!23533 (v!39215 lt!1365793))) (size!31190 (originalCharacters!7070 (_1!23533 (v!39215 lt!1365793))))))))

(declare-fun b!3919518 () Bool)

(assert (=> b!3919518 (= e!2423494 (not e!2423487))))

(declare-fun res!1585483 () Bool)

(assert (=> b!3919518 (=> res!1585483 e!2423487)))

(declare-fun lt!1365796 () List!41661)

(assert (=> b!3919518 (= res!1585483 (not (= lt!1365796 lt!1365799)))))

(assert (=> b!3919518 (= lt!1365783 (lexList!1827 thiss!20629 rules!2768 (_2!23533 (v!39215 lt!1365793))))))

(declare-fun lt!1365792 () List!41661)

(declare-fun lt!1365794 () TokenValue!6700)

(declare-fun lt!1365791 () List!41661)

(assert (=> b!3919518 (and (= (size!31189 (_1!23533 (v!39215 lt!1365793))) lt!1365797) (= (originalCharacters!7070 (_1!23533 (v!39215 lt!1365793))) lt!1365792) (= (v!39215 lt!1365793) (tuple2!40799 (Token!12079 lt!1365794 (rule!9400 (_1!23533 (v!39215 lt!1365793))) lt!1365797 lt!1365792) lt!1365791)))))

(assert (=> b!3919518 (= lt!1365797 (size!31190 lt!1365792))))

(assert (=> b!3919518 e!2423505))

(declare-fun res!1585477 () Bool)

(assert (=> b!3919518 (=> (not res!1585477) (not e!2423505))))

(assert (=> b!3919518 (= res!1585477 (= (value!205029 (_1!23533 (v!39215 lt!1365793))) lt!1365794))))

(declare-fun apply!9709 (TokenValueInjection!12828 BalanceConc!24956) TokenValue!6700)

(declare-fun seqFromList!4737 (List!41661) BalanceConc!24956)

(assert (=> b!3919518 (= lt!1365794 (apply!9709 (transformation!6470 (rule!9400 (_1!23533 (v!39215 lt!1365793)))) (seqFromList!4737 lt!1365792)))))

(assert (=> b!3919518 (= (_2!23533 (v!39215 lt!1365793)) lt!1365791)))

(declare-fun lt!1365776 () Unit!59675)

(declare-fun lemmaSamePrefixThenSameSuffix!1786 (List!41661 List!41661 List!41661 List!41661 List!41661) Unit!59675)

(assert (=> b!3919518 (= lt!1365776 (lemmaSamePrefixThenSameSuffix!1786 lt!1365792 (_2!23533 (v!39215 lt!1365793)) lt!1365792 lt!1365791 lt!1365799))))

(declare-fun getSuffix!2020 (List!41661 List!41661) List!41661)

(assert (=> b!3919518 (= lt!1365791 (getSuffix!2020 lt!1365799 lt!1365792))))

(declare-fun isPrefix!3565 (List!41661 List!41661) Bool)

(assert (=> b!3919518 (isPrefix!3565 lt!1365792 lt!1365796)))

(assert (=> b!3919518 (= lt!1365796 (++!10698 lt!1365792 (_2!23533 (v!39215 lt!1365793))))))

(declare-fun lt!1365773 () Unit!59675)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2428 (List!41661 List!41661) Unit!59675)

(assert (=> b!3919518 (= lt!1365773 (lemmaConcatTwoListThenFirstIsPrefix!2428 lt!1365792 (_2!23533 (v!39215 lt!1365793))))))

(declare-fun list!15445 (BalanceConc!24956) List!41661)

(declare-fun charsOf!4294 (Token!12078) BalanceConc!24956)

(assert (=> b!3919518 (= lt!1365792 (list!15445 (charsOf!4294 (_1!23533 (v!39215 lt!1365793)))))))

(declare-fun ruleValid!2418 (LexerInterface!6059 Rule!12740) Bool)

(assert (=> b!3919518 (ruleValid!2418 thiss!20629 (rule!9400 (_1!23533 (v!39215 lt!1365793))))))

(declare-fun lt!1365787 () Unit!59675)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1498 (LexerInterface!6059 Rule!12740 List!41664) Unit!59675)

(assert (=> b!3919518 (= lt!1365787 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1498 thiss!20629 (rule!9400 (_1!23533 (v!39215 lt!1365793))) rules!2768))))

(declare-fun lt!1365785 () Unit!59675)

(declare-fun lemmaCharactersSize!1127 (Token!12078) Unit!59675)

(assert (=> b!3919518 (= lt!1365785 (lemmaCharactersSize!1127 (_1!23533 (v!39215 lt!1365793))))))

(declare-fun b!3919519 () Bool)

(declare-fun e!2423506 () Bool)

(assert (=> b!3919519 (= e!2423487 e!2423506)))

(declare-fun res!1585485 () Bool)

(assert (=> b!3919519 (=> res!1585485 e!2423506)))

(declare-fun lt!1365777 () Int)

(assert (=> b!3919519 (= res!1585485 (>= lt!1365777 lt!1365786))))

(assert (=> b!3919519 (= lt!1365786 (size!31190 suffix!1176))))

(assert (=> b!3919519 (= lt!1365777 (size!31190 (_2!23533 (v!39215 lt!1365793))))))

(declare-fun b!3919520 () Bool)

(assert (=> b!3919520 (= e!2423504 e!2423481)))

(declare-fun res!1585474 () Bool)

(assert (=> b!3919520 (=> (not res!1585474) (not e!2423481))))

(declare-fun lt!1365775 () tuple2!40800)

(assert (=> b!3919520 (= res!1585474 (= (lexList!1827 thiss!20629 rules!2768 suffix!1176) lt!1365775))))

(assert (=> b!3919520 (= lt!1365775 (tuple2!40801 suffixTokens!72 suffixResult!91))))

(declare-fun b!3919521 () Bool)

(assert (=> b!3919521 (= e!2423485 e!2423501)))

(declare-fun res!1585491 () Bool)

(assert (=> b!3919521 (=> res!1585491 e!2423501)))

(declare-fun matchR!5464 (Regex!11375 List!41661) Bool)

(assert (=> b!3919521 (= res!1585491 (not (matchR!5464 (regex!6470 (rule!9400 (_1!23533 (v!39215 lt!1365793)))) lt!1365792)))))

(declare-fun maxPrefixOneRule!2433 (LexerInterface!6059 Rule!12740 List!41661) Option!8890)

(assert (=> b!3919521 (= (maxPrefixOneRule!2433 thiss!20629 (rule!9400 (_1!23533 (v!39215 lt!1365793))) lt!1365799) (Some!8889 (tuple2!40799 (Token!12079 lt!1365794 (rule!9400 (_1!23533 (v!39215 lt!1365793))) lt!1365797 lt!1365792) (_2!23533 (v!39215 lt!1365793)))))))

(declare-fun lt!1365788 () Unit!59675)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1301 (LexerInterface!6059 List!41664 List!41661 List!41661 List!41661 Rule!12740) Unit!59675)

(assert (=> b!3919521 (= lt!1365788 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1301 thiss!20629 rules!2768 lt!1365792 lt!1365799 (_2!23533 (v!39215 lt!1365793)) (rule!9400 (_1!23533 (v!39215 lt!1365793)))))))

(declare-fun b!3919522 () Bool)

(declare-fun tp!1192974 () Bool)

(declare-fun e!2423497 () Bool)

(assert (=> b!3919522 (= e!2423486 (and (inv!55738 (h!46959 prefixTokens!80)) e!2423497 tp!1192974))))

(declare-fun b!3919523 () Bool)

(declare-fun res!1585475 () Bool)

(assert (=> b!3919523 (=> (not res!1585475) (not e!2423489))))

(declare-fun isEmpty!24728 (List!41663) Bool)

(assert (=> b!3919523 (= res!1585475 (not (isEmpty!24728 prefixTokens!80)))))

(assert (=> b!3919524 (= e!2423508 (and tp!1192976 tp!1192963))))

(declare-fun b!3919525 () Bool)

(declare-fun res!1585479 () Bool)

(assert (=> b!3919525 (=> (not res!1585479) (not e!2423489))))

(declare-fun rulesInvariant!5402 (LexerInterface!6059 List!41664) Bool)

(assert (=> b!3919525 (= res!1585479 (rulesInvariant!5402 thiss!20629 rules!2768))))

(assert (=> b!3919526 (= e!2423482 (and tp!1192977 tp!1192967))))

(declare-fun e!2423491 () Bool)

(declare-fun tp!1192975 () Bool)

(declare-fun b!3919527 () Bool)

(declare-fun e!2423507 () Bool)

(assert (=> b!3919527 (= e!2423491 (and tp!1192975 (inv!55734 (tag!7330 (rule!9400 (h!46959 prefixTokens!80)))) (inv!55737 (transformation!6470 (rule!9400 (h!46959 prefixTokens!80)))) e!2423507))))

(declare-fun b!3919528 () Bool)

(declare-fun tp!1192972 () Bool)

(assert (=> b!3919528 (= e!2423500 (and e!2423495 tp!1192972))))

(declare-fun b!3919529 () Bool)

(declare-fun e!2423492 () Bool)

(assert (=> b!3919529 e!2423492))

(declare-fun res!1585487 () Bool)

(assert (=> b!3919529 (=> (not res!1585487) (not e!2423492))))

(assert (=> b!3919529 (= res!1585487 (not (= call!284584 lt!1365775)))))

(declare-fun lt!1365781 () Unit!59675)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!70 (LexerInterface!6059 List!41664 List!41661 List!41661 List!41663 List!41661) Unit!59675)

(assert (=> b!3919529 (= lt!1365781 (lemmaLexWithSmallerInputCannotProduceSameResults!70 thiss!20629 rules!2768 suffix!1176 (_2!23533 lt!1365778) suffixTokens!72 suffixResult!91))))

(assert (=> b!3919529 (= (_2!23533 (v!39215 lt!1365793)) (_2!23533 lt!1365778))))

(declare-fun lt!1365795 () Unit!59675)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!518 (List!41661 List!41661 List!41661 List!41661) Unit!59675)

(assert (=> b!3919529 (= lt!1365795 (lemmaConcatSameAndSameSizesThenSameLists!518 lt!1365792 (_2!23533 (v!39215 lt!1365793)) lt!1365792 (_2!23533 lt!1365778)))))

(declare-fun Unit!59680 () Unit!59675)

(assert (=> b!3919529 (= e!2423499 Unit!59680)))

(declare-fun b!3919530 () Bool)

(assert (=> b!3919530 (= e!2423492 false)))

(declare-fun tp!1192978 () Bool)

(declare-fun b!3919531 () Bool)

(declare-fun inv!21 (TokenValue!6700) Bool)

(assert (=> b!3919531 (= e!2423484 (and (inv!21 (value!205029 (h!46959 suffixTokens!72))) e!2423503 tp!1192978))))

(declare-fun b!3919532 () Bool)

(assert (=> b!3919532 (= e!2423477 e!2423499)))

(declare-fun tail!6007 (List!41663) List!41663)

(assert (=> b!3919532 (= lt!1365774 (tail!6007 prefixTokens!80))))

(declare-fun c!681202 () Bool)

(assert (=> b!3919532 (= c!681202 (isEmpty!24728 lt!1365774))))

(declare-fun b!3919533 () Bool)

(declare-fun tp!1192968 () Bool)

(assert (=> b!3919533 (= e!2423490 (and tp_is_empty!19721 tp!1192968))))

(declare-fun b!3919534 () Bool)

(declare-fun tp!1192973 () Bool)

(assert (=> b!3919534 (= e!2423497 (and (inv!21 (value!205029 (h!46959 prefixTokens!80))) e!2423491 tp!1192973))))

(declare-fun b!3919535 () Bool)

(assert (=> b!3919535 (= e!2423506 e!2423478)))

(declare-fun res!1585488 () Bool)

(assert (=> b!3919535 (=> res!1585488 e!2423478)))

(assert (=> b!3919535 (= res!1585488 (not (= (+ lt!1365797 lt!1365777) lt!1365790)))))

(assert (=> b!3919535 (= lt!1365790 (size!31190 lt!1365799))))

(assert (=> b!3919536 (= e!2423507 (and tp!1192964 tp!1192965))))

(assert (= (and start!367488 res!1585481) b!3919510))

(assert (= (and b!3919510 res!1585478) b!3919525))

(assert (= (and b!3919525 res!1585479) b!3919523))

(assert (= (and b!3919523 res!1585475) b!3919500))

(assert (= (and b!3919500 res!1585490) b!3919506))

(assert (= (and b!3919506 res!1585473) b!3919520))

(assert (= (and b!3919520 res!1585474) b!3919516))

(assert (= (and b!3919516 res!1585484) b!3919518))

(assert (= (and b!3919518 res!1585477) b!3919517))

(assert (= (and b!3919518 (not res!1585483)) b!3919507))

(assert (= (and b!3919507 (not res!1585486)) b!3919505))

(assert (= (and b!3919505 (not res!1585480)) b!3919519))

(assert (= (and b!3919519 (not res!1585485)) b!3919535))

(assert (= (and b!3919535 (not res!1585488)) b!3919515))

(assert (= (and b!3919515 (not res!1585482)) b!3919521))

(assert (= (and b!3919521 (not res!1585491)) b!3919504))

(assert (= (and b!3919504 (not res!1585489)) b!3919501))

(assert (= (and b!3919501 c!681203) b!3919532))

(assert (= (and b!3919501 (not c!681203)) b!3919513))

(assert (= (and b!3919532 c!681202) b!3919529))

(assert (= (and b!3919532 (not c!681202)) b!3919502))

(assert (= (and b!3919529 res!1585487) b!3919530))

(assert (= (and b!3919502 res!1585476) b!3919511))

(assert (= (or b!3919529 b!3919502) bm!284579))

(assert (= (and start!367488 ((_ is Cons!41537) suffixResult!91)) b!3919514))

(assert (= (and start!367488 ((_ is Cons!41537) suffix!1176)) b!3919533))

(assert (= b!3919512 b!3919524))

(assert (= b!3919528 b!3919512))

(assert (= (and start!367488 ((_ is Cons!41540) rules!2768)) b!3919528))

(assert (= b!3919527 b!3919536))

(assert (= b!3919534 b!3919527))

(assert (= b!3919522 b!3919534))

(assert (= (and start!367488 ((_ is Cons!41539) prefixTokens!80)) b!3919522))

(assert (= b!3919503 b!3919526))

(assert (= b!3919531 b!3919503))

(assert (= b!3919509 b!3919531))

(assert (= (and start!367488 ((_ is Cons!41539) suffixTokens!72)) b!3919509))

(assert (= (and start!367488 ((_ is Cons!41537) prefix!426)) b!3919508))

(declare-fun m!4483197 () Bool)

(assert (=> b!3919523 m!4483197))

(declare-fun m!4483199 () Bool)

(assert (=> b!3919517 m!4483199))

(declare-fun m!4483201 () Bool)

(assert (=> b!3919502 m!4483201))

(declare-fun m!4483203 () Bool)

(assert (=> b!3919502 m!4483203))

(declare-fun m!4483205 () Bool)

(assert (=> b!3919512 m!4483205))

(declare-fun m!4483207 () Bool)

(assert (=> b!3919512 m!4483207))

(declare-fun m!4483209 () Bool)

(assert (=> b!3919509 m!4483209))

(declare-fun m!4483211 () Bool)

(assert (=> b!3919503 m!4483211))

(declare-fun m!4483213 () Bool)

(assert (=> b!3919503 m!4483213))

(declare-fun m!4483215 () Bool)

(assert (=> b!3919507 m!4483215))

(declare-fun m!4483217 () Bool)

(assert (=> b!3919516 m!4483217))

(declare-fun m!4483219 () Bool)

(assert (=> b!3919519 m!4483219))

(declare-fun m!4483221 () Bool)

(assert (=> b!3919519 m!4483221))

(declare-fun m!4483223 () Bool)

(assert (=> b!3919527 m!4483223))

(declare-fun m!4483225 () Bool)

(assert (=> b!3919527 m!4483225))

(declare-fun m!4483227 () Bool)

(assert (=> b!3919521 m!4483227))

(declare-fun m!4483229 () Bool)

(assert (=> b!3919521 m!4483229))

(declare-fun m!4483231 () Bool)

(assert (=> b!3919521 m!4483231))

(declare-fun m!4483233 () Bool)

(assert (=> b!3919525 m!4483233))

(declare-fun m!4483235 () Bool)

(assert (=> b!3919500 m!4483235))

(declare-fun m!4483237 () Bool)

(assert (=> b!3919520 m!4483237))

(declare-fun m!4483239 () Bool)

(assert (=> b!3919501 m!4483239))

(declare-fun m!4483241 () Bool)

(assert (=> b!3919531 m!4483241))

(declare-fun m!4483243 () Bool)

(assert (=> b!3919534 m!4483243))

(declare-fun m!4483245 () Bool)

(assert (=> b!3919532 m!4483245))

(declare-fun m!4483247 () Bool)

(assert (=> b!3919532 m!4483247))

(declare-fun m!4483249 () Bool)

(assert (=> bm!284579 m!4483249))

(declare-fun m!4483251 () Bool)

(assert (=> b!3919515 m!4483251))

(declare-fun m!4483253 () Bool)

(assert (=> b!3919506 m!4483253))

(declare-fun m!4483255 () Bool)

(assert (=> b!3919506 m!4483255))

(declare-fun m!4483257 () Bool)

(assert (=> b!3919506 m!4483257))

(declare-fun m!4483259 () Bool)

(assert (=> b!3919522 m!4483259))

(declare-fun m!4483261 () Bool)

(assert (=> b!3919518 m!4483261))

(declare-fun m!4483263 () Bool)

(assert (=> b!3919518 m!4483263))

(declare-fun m!4483265 () Bool)

(assert (=> b!3919518 m!4483265))

(declare-fun m!4483267 () Bool)

(assert (=> b!3919518 m!4483267))

(declare-fun m!4483269 () Bool)

(assert (=> b!3919518 m!4483269))

(declare-fun m!4483271 () Bool)

(assert (=> b!3919518 m!4483271))

(declare-fun m!4483273 () Bool)

(assert (=> b!3919518 m!4483273))

(assert (=> b!3919518 m!4483265))

(declare-fun m!4483275 () Bool)

(assert (=> b!3919518 m!4483275))

(assert (=> b!3919518 m!4483263))

(declare-fun m!4483277 () Bool)

(assert (=> b!3919518 m!4483277))

(declare-fun m!4483279 () Bool)

(assert (=> b!3919518 m!4483279))

(declare-fun m!4483281 () Bool)

(assert (=> b!3919518 m!4483281))

(declare-fun m!4483283 () Bool)

(assert (=> b!3919518 m!4483283))

(declare-fun m!4483285 () Bool)

(assert (=> b!3919518 m!4483285))

(declare-fun m!4483287 () Bool)

(assert (=> b!3919518 m!4483287))

(declare-fun m!4483289 () Bool)

(assert (=> b!3919535 m!4483289))

(declare-fun m!4483291 () Bool)

(assert (=> b!3919510 m!4483291))

(declare-fun m!4483293 () Bool)

(assert (=> b!3919504 m!4483293))

(declare-fun m!4483295 () Bool)

(assert (=> b!3919504 m!4483295))

(declare-fun m!4483297 () Bool)

(assert (=> b!3919529 m!4483297))

(declare-fun m!4483299 () Bool)

(assert (=> b!3919529 m!4483299))

(check-sat (not b_next!107227) (not b!3919528) (not b!3919519) (not b!3919527) (not bm!284579) (not b_next!107231) (not b!3919507) (not b!3919512) (not b!3919502) (not b!3919506) (not b!3919523) (not b!3919522) (not b!3919525) (not b!3919510) (not b!3919531) b_and!298675 (not b!3919503) (not b!3919517) (not b!3919532) (not b!3919518) (not b!3919516) b_and!298667 tp_is_empty!19721 b_and!298669 (not b!3919509) (not b!3919521) b_and!298677 (not b!3919508) (not b!3919500) b_and!298673 (not b_next!107229) (not b!3919514) (not b_next!107223) b_and!298671 (not b!3919529) (not b!3919533) (not b_next!107221) (not b!3919535) (not b!3919515) (not b!3919534) (not b_next!107225) (not b!3919504) (not b!3919520) (not b!3919501))
(check-sat (not b_next!107227) b_and!298675 b_and!298667 b_and!298669 b_and!298677 (not b_next!107231) (not b_next!107223) b_and!298671 (not b_next!107221) (not b_next!107225) b_and!298673 (not b_next!107229))
