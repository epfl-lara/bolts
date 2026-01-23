; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!366480 () Bool)

(assert start!366480)

(declare-fun b!3912486 () Bool)

(declare-fun b_free!106133 () Bool)

(declare-fun b_next!106837 () Bool)

(assert (=> b!3912486 (= b_free!106133 (not b_next!106837))))

(declare-fun tp!1190927 () Bool)

(declare-fun b_and!297731 () Bool)

(assert (=> b!3912486 (= tp!1190927 b_and!297731)))

(declare-fun b_free!106135 () Bool)

(declare-fun b_next!106839 () Bool)

(assert (=> b!3912486 (= b_free!106135 (not b_next!106839))))

(declare-fun tp!1190928 () Bool)

(declare-fun b_and!297733 () Bool)

(assert (=> b!3912486 (= tp!1190928 b_and!297733)))

(declare-fun b!3912481 () Bool)

(declare-fun b_free!106137 () Bool)

(declare-fun b_next!106841 () Bool)

(assert (=> b!3912481 (= b_free!106137 (not b_next!106841))))

(declare-fun tp!1190919 () Bool)

(declare-fun b_and!297735 () Bool)

(assert (=> b!3912481 (= tp!1190919 b_and!297735)))

(declare-fun b_free!106139 () Bool)

(declare-fun b_next!106843 () Bool)

(assert (=> b!3912481 (= b_free!106139 (not b_next!106843))))

(declare-fun tp!1190923 () Bool)

(declare-fun b_and!297737 () Bool)

(assert (=> b!3912481 (= tp!1190923 b_and!297737)))

(declare-fun b!3912494 () Bool)

(declare-fun b_free!106141 () Bool)

(declare-fun b_next!106845 () Bool)

(assert (=> b!3912494 (= b_free!106141 (not b_next!106845))))

(declare-fun tp!1190921 () Bool)

(declare-fun b_and!297739 () Bool)

(assert (=> b!3912494 (= tp!1190921 b_and!297739)))

(declare-fun b_free!106143 () Bool)

(declare-fun b_next!106847 () Bool)

(assert (=> b!3912494 (= b_free!106143 (not b_next!106847))))

(declare-fun tp!1190930 () Bool)

(declare-fun b_and!297741 () Bool)

(assert (=> b!3912494 (= tp!1190930 b_and!297741)))

(declare-fun e!2418923 () Bool)

(declare-fun tp!1190925 () Bool)

(declare-datatypes ((String!47137 0))(
  ( (String!47138 (value!204547 String)) )
))
(declare-datatypes ((List!41583 0))(
  ( (Nil!41459) (Cons!41459 (h!46879 (_ BitVec 16)) (t!323300 List!41583)) )
))
(declare-datatypes ((TokenValue!6684 0))(
  ( (FloatLiteralValue!13368 (text!47233 List!41583)) (TokenValueExt!6683 (__x!25585 Int)) (Broken!33420 (value!204548 List!41583)) (Object!6807) (End!6684) (Def!6684) (Underscore!6684) (Match!6684) (Else!6684) (Error!6684) (Case!6684) (If!6684) (Extends!6684) (Abstract!6684) (Class!6684) (Val!6684) (DelimiterValue!13368 (del!6744 List!41583)) (KeywordValue!6690 (value!204549 List!41583)) (CommentValue!13368 (value!204550 List!41583)) (WhitespaceValue!13368 (value!204551 List!41583)) (IndentationValue!6684 (value!204552 List!41583)) (String!47139) (Int32!6684) (Broken!33421 (value!204553 List!41583)) (Boolean!6685) (Unit!59604) (OperatorValue!6687 (op!6744 List!41583)) (IdentifierValue!13368 (value!204554 List!41583)) (IdentifierValue!13369 (value!204555 List!41583)) (WhitespaceValue!13369 (value!204556 List!41583)) (True!13368) (False!13368) (Broken!33422 (value!204557 List!41583)) (Broken!33423 (value!204558 List!41583)) (True!13369) (RightBrace!6684) (RightBracket!6684) (Colon!6684) (Null!6684) (Comma!6684) (LeftBracket!6684) (False!13369) (LeftBrace!6684) (ImaginaryLiteralValue!6684 (text!47234 List!41583)) (StringLiteralValue!20052 (value!204559 List!41583)) (EOFValue!6684 (value!204560 List!41583)) (IdentValue!6684 (value!204561 List!41583)) (DelimiterValue!13369 (value!204562 List!41583)) (DedentValue!6684 (value!204563 List!41583)) (NewLineValue!6684 (value!204564 List!41583)) (IntegerValue!20052 (value!204565 (_ BitVec 32)) (text!47235 List!41583)) (IntegerValue!20053 (value!204566 Int) (text!47236 List!41583)) (Times!6684) (Or!6684) (Equal!6684) (Minus!6684) (Broken!33424 (value!204567 List!41583)) (And!6684) (Div!6684) (LessEqual!6684) (Mod!6684) (Concat!18043) (Not!6684) (Plus!6684) (SpaceValue!6684 (value!204568 List!41583)) (IntegerValue!20054 (value!204569 Int) (text!47237 List!41583)) (StringLiteralValue!20053 (text!47238 List!41583)) (FloatLiteralValue!13369 (text!47239 List!41583)) (BytesLiteralValue!6684 (value!204570 List!41583)) (CommentValue!13369 (value!204571 List!41583)) (StringLiteralValue!20054 (value!204572 List!41583)) (ErrorTokenValue!6684 (msg!6745 List!41583)) )
))
(declare-datatypes ((C!22904 0))(
  ( (C!22905 (val!13546 Int)) )
))
(declare-datatypes ((Regex!11359 0))(
  ( (ElementMatch!11359 (c!680104 C!22904)) (Concat!18044 (regOne!23230 Regex!11359) (regTwo!23230 Regex!11359)) (EmptyExpr!11359) (Star!11359 (reg!11688 Regex!11359)) (EmptyLang!11359) (Union!11359 (regOne!23231 Regex!11359) (regTwo!23231 Regex!11359)) )
))
(declare-datatypes ((List!41584 0))(
  ( (Nil!41460) (Cons!41460 (h!46880 C!22904) (t!323301 List!41584)) )
))
(declare-datatypes ((IArray!25335 0))(
  ( (IArray!25336 (innerList!12725 List!41584)) )
))
(declare-datatypes ((Conc!12665 0))(
  ( (Node!12665 (left!31738 Conc!12665) (right!32068 Conc!12665) (csize!25560 Int) (cheight!12876 Int)) (Leaf!19599 (xs!15971 IArray!25335) (csize!25561 Int)) (Empty!12665) )
))
(declare-datatypes ((BalanceConc!24924 0))(
  ( (BalanceConc!24925 (c!680105 Conc!12665)) )
))
(declare-datatypes ((TokenValueInjection!12796 0))(
  ( (TokenValueInjection!12797 (toValue!8902 Int) (toChars!8761 Int)) )
))
(declare-datatypes ((Rule!12708 0))(
  ( (Rule!12709 (regex!6454 Regex!11359) (tag!7314 String!47137) (isSeparator!6454 Bool) (transformation!6454 TokenValueInjection!12796)) )
))
(declare-datatypes ((Token!12046 0))(
  ( (Token!12047 (value!204573 TokenValue!6684) (rule!9370 Rule!12708) (size!31127 Int) (originalCharacters!7054 List!41584)) )
))
(declare-datatypes ((List!41585 0))(
  ( (Nil!41461) (Cons!41461 (h!46881 Token!12046) (t!323302 List!41585)) )
))
(declare-fun suffixTokens!72 () List!41585)

(declare-fun e!2418919 () Bool)

(declare-fun b!3912469 () Bool)

(declare-fun inv!21 (TokenValue!6684) Bool)

(assert (=> b!3912469 (= e!2418923 (and (inv!21 (value!204573 (h!46881 suffixTokens!72))) e!2418919 tp!1190925))))

(declare-fun b!3912470 () Bool)

(declare-fun tp!1190934 () Bool)

(declare-fun e!2418918 () Bool)

(declare-fun e!2418900 () Bool)

(declare-fun prefixTokens!80 () List!41585)

(declare-fun inv!55647 (Token!12046) Bool)

(assert (=> b!3912470 (= e!2418918 (and (inv!55647 (h!46881 prefixTokens!80)) e!2418900 tp!1190934))))

(declare-fun b!3912471 () Bool)

(declare-fun e!2418914 () Bool)

(declare-fun e!2418903 () Bool)

(assert (=> b!3912471 (= e!2418914 e!2418903)))

(declare-fun res!1582387 () Bool)

(assert (=> b!3912471 (=> res!1582387 e!2418903)))

(declare-fun lt!1363029 () Int)

(declare-fun lt!1363028 () Int)

(declare-fun lt!1363035 () Int)

(assert (=> b!3912471 (= res!1582387 (not (= (+ lt!1363035 lt!1363028) lt!1363029)))))

(declare-fun lt!1363038 () List!41584)

(declare-fun size!31128 (List!41584) Int)

(assert (=> b!3912471 (= lt!1363029 (size!31128 lt!1363038))))

(declare-fun b!3912472 () Bool)

(declare-fun e!2418926 () Bool)

(declare-fun e!2418899 () Bool)

(assert (=> b!3912472 (= e!2418926 e!2418899)))

(declare-fun res!1582383 () Bool)

(assert (=> b!3912472 (=> (not res!1582383) (not e!2418899))))

(declare-fun suffixResult!91 () List!41584)

(declare-datatypes ((tuple2!40706 0))(
  ( (tuple2!40707 (_1!23487 List!41585) (_2!23487 List!41584)) )
))
(declare-fun lt!1363033 () tuple2!40706)

(declare-fun lt!1363042 () List!41585)

(assert (=> b!3912472 (= res!1582383 (= lt!1363033 (tuple2!40707 lt!1363042 suffixResult!91)))))

(declare-datatypes ((LexerInterface!6043 0))(
  ( (LexerInterfaceExt!6040 (__x!25586 Int)) (Lexer!6041) )
))
(declare-fun thiss!20629 () LexerInterface!6043)

(declare-datatypes ((List!41586 0))(
  ( (Nil!41462) (Cons!41462 (h!46882 Rule!12708) (t!323303 List!41586)) )
))
(declare-fun rules!2768 () List!41586)

(declare-fun lexList!1811 (LexerInterface!6043 List!41586 List!41584) tuple2!40706)

(assert (=> b!3912472 (= lt!1363033 (lexList!1811 thiss!20629 rules!2768 lt!1363038))))

(declare-fun ++!10665 (List!41585 List!41585) List!41585)

(assert (=> b!3912472 (= lt!1363042 (++!10665 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!41584)

(declare-fun suffix!1176 () List!41584)

(declare-fun ++!10666 (List!41584 List!41584) List!41584)

(assert (=> b!3912472 (= lt!1363038 (++!10666 prefix!426 suffix!1176))))

(declare-fun b!3912473 () Bool)

(declare-fun e!2418915 () Bool)

(declare-fun e!2418912 () Bool)

(assert (=> b!3912473 (= e!2418915 e!2418912)))

(declare-fun res!1582392 () Bool)

(assert (=> b!3912473 (=> res!1582392 e!2418912)))

(declare-datatypes ((tuple2!40708 0))(
  ( (tuple2!40709 (_1!23488 Token!12046) (_2!23488 List!41584)) )
))
(declare-datatypes ((Option!8874 0))(
  ( (None!8873) (Some!8873 (v!39197 tuple2!40708)) )
))
(declare-fun lt!1363041 () Option!8874)

(declare-fun lt!1363030 () List!41584)

(declare-fun matchR!5448 (Regex!11359 List!41584) Bool)

(assert (=> b!3912473 (= res!1582392 (not (matchR!5448 (regex!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041)))) lt!1363030)))))

(declare-fun lt!1363026 () TokenValue!6684)

(declare-fun maxPrefixOneRule!2417 (LexerInterface!6043 Rule!12708 List!41584) Option!8874)

(assert (=> b!3912473 (= (maxPrefixOneRule!2417 thiss!20629 (rule!9370 (_1!23488 (v!39197 lt!1363041))) lt!1363038) (Some!8873 (tuple2!40709 (Token!12047 lt!1363026 (rule!9370 (_1!23488 (v!39197 lt!1363041))) lt!1363035 lt!1363030) (_2!23488 (v!39197 lt!1363041)))))))

(declare-datatypes ((Unit!59605 0))(
  ( (Unit!59606) )
))
(declare-fun lt!1363032 () Unit!59605)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1285 (LexerInterface!6043 List!41586 List!41584 List!41584 List!41584 Rule!12708) Unit!59605)

(assert (=> b!3912473 (= lt!1363032 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1285 thiss!20629 rules!2768 lt!1363030 lt!1363038 (_2!23488 (v!39197 lt!1363041)) (rule!9370 (_1!23488 (v!39197 lt!1363041)))))))

(declare-fun b!3912474 () Bool)

(declare-fun e!2418902 () Bool)

(declare-fun e!2418924 () Bool)

(declare-fun tp!1190933 () Bool)

(assert (=> b!3912474 (= e!2418902 (and e!2418924 tp!1190933))))

(declare-fun res!1582379 () Bool)

(assert (=> start!366480 (=> (not res!1582379) (not e!2418926))))

(get-info :version)

(assert (=> start!366480 (= res!1582379 ((_ is Lexer!6041) thiss!20629))))

(assert (=> start!366480 e!2418926))

(declare-fun e!2418908 () Bool)

(assert (=> start!366480 e!2418908))

(assert (=> start!366480 true))

(declare-fun e!2418910 () Bool)

(assert (=> start!366480 e!2418910))

(assert (=> start!366480 e!2418902))

(assert (=> start!366480 e!2418918))

(declare-fun e!2418917 () Bool)

(assert (=> start!366480 e!2418917))

(declare-fun e!2418921 () Bool)

(assert (=> start!366480 e!2418921))

(declare-fun b!3912475 () Bool)

(declare-fun e!2418901 () Bool)

(declare-fun tp!1190918 () Bool)

(declare-fun inv!55644 (String!47137) Bool)

(declare-fun inv!55648 (TokenValueInjection!12796) Bool)

(assert (=> b!3912475 (= e!2418919 (and tp!1190918 (inv!55644 (tag!7314 (rule!9370 (h!46881 suffixTokens!72)))) (inv!55648 (transformation!6454 (rule!9370 (h!46881 suffixTokens!72)))) e!2418901))))

(declare-fun b!3912476 () Bool)

(declare-fun get!13701 (Option!8874) tuple2!40708)

(declare-fun head!8261 (List!41585) Token!12046)

(assert (=> b!3912476 (= e!2418912 (= (_1!23488 (get!13701 lt!1363041)) (head!8261 prefixTokens!80)))))

(declare-fun b!3912477 () Bool)

(declare-fun e!2418904 () Bool)

(assert (=> b!3912477 (= e!2418904 e!2418914)))

(declare-fun res!1582388 () Bool)

(assert (=> b!3912477 (=> res!1582388 e!2418914)))

(declare-fun lt!1363036 () Int)

(assert (=> b!3912477 (= res!1582388 (>= lt!1363028 lt!1363036))))

(assert (=> b!3912477 (= lt!1363036 (size!31128 suffix!1176))))

(assert (=> b!3912477 (= lt!1363028 (size!31128 (_2!23488 (v!39197 lt!1363041))))))

(declare-fun b!3912478 () Bool)

(declare-fun tp_is_empty!19689 () Bool)

(declare-fun tp!1190926 () Bool)

(assert (=> b!3912478 (= e!2418910 (and tp_is_empty!19689 tp!1190926))))

(declare-fun b!3912479 () Bool)

(assert (=> b!3912479 (= e!2418903 e!2418915)))

(declare-fun res!1582390 () Bool)

(assert (=> b!3912479 (=> res!1582390 e!2418915)))

(declare-fun lt!1363027 () Int)

(assert (=> b!3912479 (= res!1582390 (or (not (= (+ lt!1363027 lt!1363036) lt!1363029)) (<= lt!1363035 lt!1363027)))))

(assert (=> b!3912479 (= lt!1363027 (size!31128 prefix!426))))

(declare-fun b!3912480 () Bool)

(declare-fun e!2418913 () Bool)

(assert (=> b!3912480 (= e!2418913 (= (size!31127 (_1!23488 (v!39197 lt!1363041))) (size!31128 (originalCharacters!7054 (_1!23488 (v!39197 lt!1363041))))))))

(declare-fun e!2418925 () Bool)

(assert (=> b!3912481 (= e!2418925 (and tp!1190919 tp!1190923))))

(declare-fun b!3912482 () Bool)

(declare-fun tp!1190929 () Bool)

(assert (=> b!3912482 (= e!2418908 (and tp_is_empty!19689 tp!1190929))))

(declare-fun b!3912483 () Bool)

(declare-fun e!2418922 () Bool)

(assert (=> b!3912483 (= e!2418922 (not e!2418904))))

(declare-fun res!1582385 () Bool)

(assert (=> b!3912483 (=> res!1582385 e!2418904)))

(declare-fun lt!1363043 () List!41584)

(assert (=> b!3912483 (= res!1582385 (not (= lt!1363043 lt!1363038)))))

(declare-fun lt!1363039 () tuple2!40706)

(assert (=> b!3912483 (= lt!1363039 (lexList!1811 thiss!20629 rules!2768 (_2!23488 (v!39197 lt!1363041))))))

(declare-fun lt!1363034 () List!41584)

(assert (=> b!3912483 (and (= (size!31127 (_1!23488 (v!39197 lt!1363041))) lt!1363035) (= (originalCharacters!7054 (_1!23488 (v!39197 lt!1363041))) lt!1363030) (= (v!39197 lt!1363041) (tuple2!40709 (Token!12047 lt!1363026 (rule!9370 (_1!23488 (v!39197 lt!1363041))) lt!1363035 lt!1363030) lt!1363034)))))

(assert (=> b!3912483 (= lt!1363035 (size!31128 lt!1363030))))

(assert (=> b!3912483 e!2418913))

(declare-fun res!1582382 () Bool)

(assert (=> b!3912483 (=> (not res!1582382) (not e!2418913))))

(assert (=> b!3912483 (= res!1582382 (= (value!204573 (_1!23488 (v!39197 lt!1363041))) lt!1363026))))

(declare-fun apply!9693 (TokenValueInjection!12796 BalanceConc!24924) TokenValue!6684)

(declare-fun seqFromList!4721 (List!41584) BalanceConc!24924)

(assert (=> b!3912483 (= lt!1363026 (apply!9693 (transformation!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041)))) (seqFromList!4721 lt!1363030)))))

(assert (=> b!3912483 (= (_2!23488 (v!39197 lt!1363041)) lt!1363034)))

(declare-fun lt!1363025 () Unit!59605)

(declare-fun lemmaSamePrefixThenSameSuffix!1770 (List!41584 List!41584 List!41584 List!41584 List!41584) Unit!59605)

(assert (=> b!3912483 (= lt!1363025 (lemmaSamePrefixThenSameSuffix!1770 lt!1363030 (_2!23488 (v!39197 lt!1363041)) lt!1363030 lt!1363034 lt!1363038))))

(declare-fun getSuffix!2004 (List!41584 List!41584) List!41584)

(assert (=> b!3912483 (= lt!1363034 (getSuffix!2004 lt!1363038 lt!1363030))))

(declare-fun isPrefix!3549 (List!41584 List!41584) Bool)

(assert (=> b!3912483 (isPrefix!3549 lt!1363030 lt!1363043)))

(assert (=> b!3912483 (= lt!1363043 (++!10666 lt!1363030 (_2!23488 (v!39197 lt!1363041))))))

(declare-fun lt!1363031 () Unit!59605)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2412 (List!41584 List!41584) Unit!59605)

(assert (=> b!3912483 (= lt!1363031 (lemmaConcatTwoListThenFirstIsPrefix!2412 lt!1363030 (_2!23488 (v!39197 lt!1363041))))))

(declare-fun list!15413 (BalanceConc!24924) List!41584)

(declare-fun charsOf!4278 (Token!12046) BalanceConc!24924)

(assert (=> b!3912483 (= lt!1363030 (list!15413 (charsOf!4278 (_1!23488 (v!39197 lt!1363041)))))))

(declare-fun ruleValid!2402 (LexerInterface!6043 Rule!12708) Bool)

(assert (=> b!3912483 (ruleValid!2402 thiss!20629 (rule!9370 (_1!23488 (v!39197 lt!1363041))))))

(declare-fun lt!1363037 () Unit!59605)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1482 (LexerInterface!6043 Rule!12708 List!41586) Unit!59605)

(assert (=> b!3912483 (= lt!1363037 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1482 thiss!20629 (rule!9370 (_1!23488 (v!39197 lt!1363041))) rules!2768))))

(declare-fun lt!1363040 () Unit!59605)

(declare-fun lemmaCharactersSize!1111 (Token!12046) Unit!59605)

(assert (=> b!3912483 (= lt!1363040 (lemmaCharactersSize!1111 (_1!23488 (v!39197 lt!1363041))))))

(declare-fun tp!1190922 () Bool)

(declare-fun b!3912484 () Bool)

(declare-fun e!2418907 () Bool)

(assert (=> b!3912484 (= e!2418924 (and tp!1190922 (inv!55644 (tag!7314 (h!46882 rules!2768))) (inv!55648 (transformation!6454 (h!46882 rules!2768))) e!2418907))))

(declare-fun b!3912485 () Bool)

(assert (=> b!3912485 (= e!2418899 e!2418922)))

(declare-fun res!1582393 () Bool)

(assert (=> b!3912485 (=> (not res!1582393) (not e!2418922))))

(assert (=> b!3912485 (= res!1582393 ((_ is Some!8873) lt!1363041))))

(declare-fun maxPrefix!3347 (LexerInterface!6043 List!41586 List!41584) Option!8874)

(assert (=> b!3912485 (= lt!1363041 (maxPrefix!3347 thiss!20629 rules!2768 lt!1363038))))

(assert (=> b!3912486 (= e!2418907 (and tp!1190927 tp!1190928))))

(declare-fun b!3912487 () Bool)

(declare-fun res!1582389 () Bool)

(assert (=> b!3912487 (=> (not res!1582389) (not e!2418926))))

(declare-fun isEmpty!24664 (List!41586) Bool)

(assert (=> b!3912487 (= res!1582389 (not (isEmpty!24664 rules!2768)))))

(declare-fun b!3912488 () Bool)

(declare-fun tp!1190932 () Bool)

(assert (=> b!3912488 (= e!2418917 (and (inv!55647 (h!46881 suffixTokens!72)) e!2418923 tp!1190932))))

(declare-fun b!3912489 () Bool)

(declare-fun tp!1190931 () Bool)

(declare-fun e!2418909 () Bool)

(assert (=> b!3912489 (= e!2418900 (and (inv!21 (value!204573 (h!46881 prefixTokens!80))) e!2418909 tp!1190931))))

(declare-fun b!3912490 () Bool)

(declare-fun res!1582394 () Bool)

(assert (=> b!3912490 (=> (not res!1582394) (not e!2418899))))

(assert (=> b!3912490 (= res!1582394 (= (lexList!1811 thiss!20629 rules!2768 suffix!1176) (tuple2!40707 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3912491 () Bool)

(declare-fun res!1582384 () Bool)

(assert (=> b!3912491 (=> (not res!1582384) (not e!2418926))))

(declare-fun isEmpty!24665 (List!41585) Bool)

(assert (=> b!3912491 (= res!1582384 (not (isEmpty!24665 prefixTokens!80)))))

(declare-fun b!3912492 () Bool)

(declare-fun tp!1190924 () Bool)

(assert (=> b!3912492 (= e!2418921 (and tp_is_empty!19689 tp!1190924))))

(declare-fun b!3912493 () Bool)

(declare-fun res!1582386 () Bool)

(assert (=> b!3912493 (=> (not res!1582386) (not e!2418926))))

(declare-fun rulesInvariant!5386 (LexerInterface!6043 List!41586) Bool)

(assert (=> b!3912493 (= res!1582386 (rulesInvariant!5386 thiss!20629 rules!2768))))

(assert (=> b!3912494 (= e!2418901 (and tp!1190921 tp!1190930))))

(declare-fun b!3912495 () Bool)

(declare-fun res!1582380 () Bool)

(assert (=> b!3912495 (=> (not res!1582380) (not e!2418926))))

(declare-fun isEmpty!24666 (List!41584) Bool)

(assert (=> b!3912495 (= res!1582380 (not (isEmpty!24666 prefix!426)))))

(declare-fun b!3912496 () Bool)

(declare-fun res!1582381 () Bool)

(assert (=> b!3912496 (=> res!1582381 e!2418904)))

(assert (=> b!3912496 (= res!1582381 (not (= lt!1363033 (tuple2!40707 (++!10665 (Cons!41461 (_1!23488 (v!39197 lt!1363041)) Nil!41461) (_1!23487 lt!1363039)) (_2!23487 lt!1363039)))))))

(declare-fun b!3912497 () Bool)

(declare-fun tp!1190920 () Bool)

(assert (=> b!3912497 (= e!2418909 (and tp!1190920 (inv!55644 (tag!7314 (rule!9370 (h!46881 prefixTokens!80)))) (inv!55648 (transformation!6454 (rule!9370 (h!46881 prefixTokens!80)))) e!2418925))))

(declare-fun b!3912498 () Bool)

(declare-fun res!1582391 () Bool)

(assert (=> b!3912498 (=> res!1582391 e!2418904)))

(assert (=> b!3912498 (= res!1582391 (or (not (= lt!1363039 (tuple2!40707 (_1!23487 lt!1363039) (_2!23487 lt!1363039)))) (= (_2!23488 (v!39197 lt!1363041)) suffix!1176)))))

(assert (= (and start!366480 res!1582379) b!3912487))

(assert (= (and b!3912487 res!1582389) b!3912493))

(assert (= (and b!3912493 res!1582386) b!3912491))

(assert (= (and b!3912491 res!1582384) b!3912495))

(assert (= (and b!3912495 res!1582380) b!3912472))

(assert (= (and b!3912472 res!1582383) b!3912490))

(assert (= (and b!3912490 res!1582394) b!3912485))

(assert (= (and b!3912485 res!1582393) b!3912483))

(assert (= (and b!3912483 res!1582382) b!3912480))

(assert (= (and b!3912483 (not res!1582385)) b!3912496))

(assert (= (and b!3912496 (not res!1582381)) b!3912498))

(assert (= (and b!3912498 (not res!1582391)) b!3912477))

(assert (= (and b!3912477 (not res!1582388)) b!3912471))

(assert (= (and b!3912471 (not res!1582387)) b!3912479))

(assert (= (and b!3912479 (not res!1582390)) b!3912473))

(assert (= (and b!3912473 (not res!1582392)) b!3912476))

(assert (= (and start!366480 ((_ is Cons!41460) suffixResult!91)) b!3912482))

(assert (= (and start!366480 ((_ is Cons!41460) suffix!1176)) b!3912478))

(assert (= b!3912484 b!3912486))

(assert (= b!3912474 b!3912484))

(assert (= (and start!366480 ((_ is Cons!41462) rules!2768)) b!3912474))

(assert (= b!3912497 b!3912481))

(assert (= b!3912489 b!3912497))

(assert (= b!3912470 b!3912489))

(assert (= (and start!366480 ((_ is Cons!41461) prefixTokens!80)) b!3912470))

(assert (= b!3912475 b!3912494))

(assert (= b!3912469 b!3912475))

(assert (= b!3912488 b!3912469))

(assert (= (and start!366480 ((_ is Cons!41461) suffixTokens!72)) b!3912488))

(assert (= (and start!366480 ((_ is Cons!41460) prefix!426)) b!3912492))

(declare-fun m!4475861 () Bool)

(assert (=> b!3912496 m!4475861))

(declare-fun m!4475863 () Bool)

(assert (=> b!3912484 m!4475863))

(declare-fun m!4475865 () Bool)

(assert (=> b!3912484 m!4475865))

(declare-fun m!4475867 () Bool)

(assert (=> b!3912485 m!4475867))

(declare-fun m!4475869 () Bool)

(assert (=> b!3912469 m!4475869))

(declare-fun m!4475871 () Bool)

(assert (=> b!3912473 m!4475871))

(declare-fun m!4475873 () Bool)

(assert (=> b!3912473 m!4475873))

(declare-fun m!4475875 () Bool)

(assert (=> b!3912473 m!4475875))

(declare-fun m!4475877 () Bool)

(assert (=> b!3912476 m!4475877))

(declare-fun m!4475879 () Bool)

(assert (=> b!3912476 m!4475879))

(declare-fun m!4475881 () Bool)

(assert (=> b!3912489 m!4475881))

(declare-fun m!4475883 () Bool)

(assert (=> b!3912483 m!4475883))

(declare-fun m!4475885 () Bool)

(assert (=> b!3912483 m!4475885))

(assert (=> b!3912483 m!4475883))

(declare-fun m!4475887 () Bool)

(assert (=> b!3912483 m!4475887))

(declare-fun m!4475889 () Bool)

(assert (=> b!3912483 m!4475889))

(declare-fun m!4475891 () Bool)

(assert (=> b!3912483 m!4475891))

(declare-fun m!4475893 () Bool)

(assert (=> b!3912483 m!4475893))

(declare-fun m!4475895 () Bool)

(assert (=> b!3912483 m!4475895))

(declare-fun m!4475897 () Bool)

(assert (=> b!3912483 m!4475897))

(declare-fun m!4475899 () Bool)

(assert (=> b!3912483 m!4475899))

(declare-fun m!4475901 () Bool)

(assert (=> b!3912483 m!4475901))

(declare-fun m!4475903 () Bool)

(assert (=> b!3912483 m!4475903))

(assert (=> b!3912483 m!4475891))

(declare-fun m!4475905 () Bool)

(assert (=> b!3912483 m!4475905))

(declare-fun m!4475907 () Bool)

(assert (=> b!3912483 m!4475907))

(declare-fun m!4475909 () Bool)

(assert (=> b!3912483 m!4475909))

(declare-fun m!4475911 () Bool)

(assert (=> b!3912472 m!4475911))

(declare-fun m!4475913 () Bool)

(assert (=> b!3912472 m!4475913))

(declare-fun m!4475915 () Bool)

(assert (=> b!3912472 m!4475915))

(declare-fun m!4475917 () Bool)

(assert (=> b!3912487 m!4475917))

(declare-fun m!4475919 () Bool)

(assert (=> b!3912479 m!4475919))

(declare-fun m!4475921 () Bool)

(assert (=> b!3912477 m!4475921))

(declare-fun m!4475923 () Bool)

(assert (=> b!3912477 m!4475923))

(declare-fun m!4475925 () Bool)

(assert (=> b!3912495 m!4475925))

(declare-fun m!4475927 () Bool)

(assert (=> b!3912475 m!4475927))

(declare-fun m!4475929 () Bool)

(assert (=> b!3912475 m!4475929))

(declare-fun m!4475931 () Bool)

(assert (=> b!3912480 m!4475931))

(declare-fun m!4475933 () Bool)

(assert (=> b!3912488 m!4475933))

(declare-fun m!4475935 () Bool)

(assert (=> b!3912470 m!4475935))

(declare-fun m!4475937 () Bool)

(assert (=> b!3912491 m!4475937))

(declare-fun m!4475939 () Bool)

(assert (=> b!3912490 m!4475939))

(declare-fun m!4475941 () Bool)

(assert (=> b!3912471 m!4475941))

(declare-fun m!4475943 () Bool)

(assert (=> b!3912497 m!4475943))

(declare-fun m!4475945 () Bool)

(assert (=> b!3912497 m!4475945))

(declare-fun m!4475947 () Bool)

(assert (=> b!3912493 m!4475947))

(check-sat (not b_next!106843) (not b_next!106847) (not b!3912488) (not b!3912478) (not b!3912473) (not b!3912491) tp_is_empty!19689 (not b_next!106839) (not b_next!106845) (not b!3912496) b_and!297739 (not b!3912495) (not b_next!106837) (not b!3912474) (not b!3912489) (not b!3912483) (not b!3912484) (not b!3912471) (not b_next!106841) (not b!3912485) (not b!3912497) (not b!3912472) (not b!3912492) (not b!3912490) b_and!297741 (not b!3912482) b_and!297733 (not b!3912470) (not b!3912487) (not b!3912476) (not b!3912493) b_and!297731 (not b!3912480) (not b!3912479) (not b!3912475) b_and!297735 b_and!297737 (not b!3912469) (not b!3912477))
(check-sat (not b_next!106843) (not b_next!106847) b_and!297739 (not b_next!106837) (not b_next!106841) (not b_next!106839) (not b_next!106845) b_and!297741 b_and!297733 b_and!297731 b_and!297735 b_and!297737)
(get-model)

(declare-fun d!1160754 () Bool)

(declare-fun lt!1363046 () Int)

(assert (=> d!1160754 (>= lt!1363046 0)))

(declare-fun e!2418929 () Int)

(assert (=> d!1160754 (= lt!1363046 e!2418929)))

(declare-fun c!680108 () Bool)

(assert (=> d!1160754 (= c!680108 ((_ is Nil!41460) (originalCharacters!7054 (_1!23488 (v!39197 lt!1363041)))))))

(assert (=> d!1160754 (= (size!31128 (originalCharacters!7054 (_1!23488 (v!39197 lt!1363041)))) lt!1363046)))

(declare-fun b!3912503 () Bool)

(assert (=> b!3912503 (= e!2418929 0)))

(declare-fun b!3912504 () Bool)

(assert (=> b!3912504 (= e!2418929 (+ 1 (size!31128 (t!323301 (originalCharacters!7054 (_1!23488 (v!39197 lt!1363041)))))))))

(assert (= (and d!1160754 c!680108) b!3912503))

(assert (= (and d!1160754 (not c!680108)) b!3912504))

(declare-fun m!4475949 () Bool)

(assert (=> b!3912504 m!4475949))

(assert (=> b!3912480 d!1160754))

(declare-fun d!1160756 () Bool)

(assert (=> d!1160756 (= (isEmpty!24665 prefixTokens!80) ((_ is Nil!41461) prefixTokens!80))))

(assert (=> b!3912491 d!1160756))

(declare-fun b!3912515 () Bool)

(declare-fun e!2418938 () tuple2!40706)

(assert (=> b!3912515 (= e!2418938 (tuple2!40707 Nil!41461 suffix!1176))))

(declare-fun b!3912516 () Bool)

(declare-fun e!2418936 () Bool)

(declare-fun lt!1363054 () tuple2!40706)

(assert (=> b!3912516 (= e!2418936 (= (_2!23487 lt!1363054) suffix!1176))))

(declare-fun b!3912517 () Bool)

(declare-fun lt!1363053 () Option!8874)

(declare-fun lt!1363055 () tuple2!40706)

(assert (=> b!3912517 (= e!2418938 (tuple2!40707 (Cons!41461 (_1!23488 (v!39197 lt!1363053)) (_1!23487 lt!1363055)) (_2!23487 lt!1363055)))))

(assert (=> b!3912517 (= lt!1363055 (lexList!1811 thiss!20629 rules!2768 (_2!23488 (v!39197 lt!1363053))))))

(declare-fun b!3912518 () Bool)

(declare-fun e!2418937 () Bool)

(assert (=> b!3912518 (= e!2418937 (not (isEmpty!24665 (_1!23487 lt!1363054))))))

(declare-fun b!3912519 () Bool)

(assert (=> b!3912519 (= e!2418936 e!2418937)))

(declare-fun res!1582399 () Bool)

(assert (=> b!3912519 (= res!1582399 (< (size!31128 (_2!23487 lt!1363054)) (size!31128 suffix!1176)))))

(assert (=> b!3912519 (=> (not res!1582399) (not e!2418937))))

(declare-fun d!1160758 () Bool)

(assert (=> d!1160758 e!2418936))

(declare-fun c!680113 () Bool)

(declare-fun size!31129 (List!41585) Int)

(assert (=> d!1160758 (= c!680113 (> (size!31129 (_1!23487 lt!1363054)) 0))))

(assert (=> d!1160758 (= lt!1363054 e!2418938)))

(declare-fun c!680114 () Bool)

(assert (=> d!1160758 (= c!680114 ((_ is Some!8873) lt!1363053))))

(assert (=> d!1160758 (= lt!1363053 (maxPrefix!3347 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1160758 (= (lexList!1811 thiss!20629 rules!2768 suffix!1176) lt!1363054)))

(assert (= (and d!1160758 c!680114) b!3912517))

(assert (= (and d!1160758 (not c!680114)) b!3912515))

(assert (= (and d!1160758 c!680113) b!3912519))

(assert (= (and d!1160758 (not c!680113)) b!3912516))

(assert (= (and b!3912519 res!1582399) b!3912518))

(declare-fun m!4475951 () Bool)

(assert (=> b!3912517 m!4475951))

(declare-fun m!4475953 () Bool)

(assert (=> b!3912518 m!4475953))

(declare-fun m!4475955 () Bool)

(assert (=> b!3912519 m!4475955))

(assert (=> b!3912519 m!4475921))

(declare-fun m!4475957 () Bool)

(assert (=> d!1160758 m!4475957))

(declare-fun m!4475959 () Bool)

(assert (=> d!1160758 m!4475959))

(assert (=> b!3912490 d!1160758))

(declare-fun b!3912530 () Bool)

(declare-fun res!1582402 () Bool)

(declare-fun e!2418945 () Bool)

(assert (=> b!3912530 (=> res!1582402 e!2418945)))

(assert (=> b!3912530 (= res!1582402 (not ((_ is IntegerValue!20054) (value!204573 (h!46881 suffixTokens!72)))))))

(declare-fun e!2418947 () Bool)

(assert (=> b!3912530 (= e!2418947 e!2418945)))

(declare-fun b!3912531 () Bool)

(declare-fun e!2418946 () Bool)

(declare-fun inv!16 (TokenValue!6684) Bool)

(assert (=> b!3912531 (= e!2418946 (inv!16 (value!204573 (h!46881 suffixTokens!72))))))

(declare-fun d!1160760 () Bool)

(declare-fun c!680119 () Bool)

(assert (=> d!1160760 (= c!680119 ((_ is IntegerValue!20052) (value!204573 (h!46881 suffixTokens!72))))))

(assert (=> d!1160760 (= (inv!21 (value!204573 (h!46881 suffixTokens!72))) e!2418946)))

(declare-fun b!3912532 () Bool)

(declare-fun inv!15 (TokenValue!6684) Bool)

(assert (=> b!3912532 (= e!2418945 (inv!15 (value!204573 (h!46881 suffixTokens!72))))))

(declare-fun b!3912533 () Bool)

(declare-fun inv!17 (TokenValue!6684) Bool)

(assert (=> b!3912533 (= e!2418947 (inv!17 (value!204573 (h!46881 suffixTokens!72))))))

(declare-fun b!3912534 () Bool)

(assert (=> b!3912534 (= e!2418946 e!2418947)))

(declare-fun c!680120 () Bool)

(assert (=> b!3912534 (= c!680120 ((_ is IntegerValue!20053) (value!204573 (h!46881 suffixTokens!72))))))

(assert (= (and d!1160760 c!680119) b!3912531))

(assert (= (and d!1160760 (not c!680119)) b!3912534))

(assert (= (and b!3912534 c!680120) b!3912533))

(assert (= (and b!3912534 (not c!680120)) b!3912530))

(assert (= (and b!3912530 (not res!1582402)) b!3912532))

(declare-fun m!4475961 () Bool)

(assert (=> b!3912531 m!4475961))

(declare-fun m!4475963 () Bool)

(assert (=> b!3912532 m!4475963))

(declare-fun m!4475965 () Bool)

(assert (=> b!3912533 m!4475965))

(assert (=> b!3912469 d!1160760))

(declare-fun d!1160762 () Bool)

(declare-fun lt!1363056 () Int)

(assert (=> d!1160762 (>= lt!1363056 0)))

(declare-fun e!2418948 () Int)

(assert (=> d!1160762 (= lt!1363056 e!2418948)))

(declare-fun c!680121 () Bool)

(assert (=> d!1160762 (= c!680121 ((_ is Nil!41460) prefix!426))))

(assert (=> d!1160762 (= (size!31128 prefix!426) lt!1363056)))

(declare-fun b!3912535 () Bool)

(assert (=> b!3912535 (= e!2418948 0)))

(declare-fun b!3912536 () Bool)

(assert (=> b!3912536 (= e!2418948 (+ 1 (size!31128 (t!323301 prefix!426))))))

(assert (= (and d!1160762 c!680121) b!3912535))

(assert (= (and d!1160762 (not c!680121)) b!3912536))

(declare-fun m!4475967 () Bool)

(assert (=> b!3912536 m!4475967))

(assert (=> b!3912479 d!1160762))

(declare-fun b!3912537 () Bool)

(declare-fun res!1582403 () Bool)

(declare-fun e!2418949 () Bool)

(assert (=> b!3912537 (=> res!1582403 e!2418949)))

(assert (=> b!3912537 (= res!1582403 (not ((_ is IntegerValue!20054) (value!204573 (h!46881 prefixTokens!80)))))))

(declare-fun e!2418951 () Bool)

(assert (=> b!3912537 (= e!2418951 e!2418949)))

(declare-fun b!3912538 () Bool)

(declare-fun e!2418950 () Bool)

(assert (=> b!3912538 (= e!2418950 (inv!16 (value!204573 (h!46881 prefixTokens!80))))))

(declare-fun d!1160764 () Bool)

(declare-fun c!680122 () Bool)

(assert (=> d!1160764 (= c!680122 ((_ is IntegerValue!20052) (value!204573 (h!46881 prefixTokens!80))))))

(assert (=> d!1160764 (= (inv!21 (value!204573 (h!46881 prefixTokens!80))) e!2418950)))

(declare-fun b!3912539 () Bool)

(assert (=> b!3912539 (= e!2418949 (inv!15 (value!204573 (h!46881 prefixTokens!80))))))

(declare-fun b!3912540 () Bool)

(assert (=> b!3912540 (= e!2418951 (inv!17 (value!204573 (h!46881 prefixTokens!80))))))

(declare-fun b!3912541 () Bool)

(assert (=> b!3912541 (= e!2418950 e!2418951)))

(declare-fun c!680123 () Bool)

(assert (=> b!3912541 (= c!680123 ((_ is IntegerValue!20053) (value!204573 (h!46881 prefixTokens!80))))))

(assert (= (and d!1160764 c!680122) b!3912538))

(assert (= (and d!1160764 (not c!680122)) b!3912541))

(assert (= (and b!3912541 c!680123) b!3912540))

(assert (= (and b!3912541 (not c!680123)) b!3912537))

(assert (= (and b!3912537 (not res!1582403)) b!3912539))

(declare-fun m!4475969 () Bool)

(assert (=> b!3912538 m!4475969))

(declare-fun m!4475971 () Bool)

(assert (=> b!3912539 m!4475971))

(declare-fun m!4475973 () Bool)

(assert (=> b!3912540 m!4475973))

(assert (=> b!3912489 d!1160764))

(declare-fun d!1160766 () Bool)

(declare-fun res!1582408 () Bool)

(declare-fun e!2418954 () Bool)

(assert (=> d!1160766 (=> (not res!1582408) (not e!2418954))))

(assert (=> d!1160766 (= res!1582408 (not (isEmpty!24666 (originalCharacters!7054 (h!46881 suffixTokens!72)))))))

(assert (=> d!1160766 (= (inv!55647 (h!46881 suffixTokens!72)) e!2418954)))

(declare-fun b!3912546 () Bool)

(declare-fun res!1582409 () Bool)

(assert (=> b!3912546 (=> (not res!1582409) (not e!2418954))))

(declare-fun dynLambda!17811 (Int TokenValue!6684) BalanceConc!24924)

(assert (=> b!3912546 (= res!1582409 (= (originalCharacters!7054 (h!46881 suffixTokens!72)) (list!15413 (dynLambda!17811 (toChars!8761 (transformation!6454 (rule!9370 (h!46881 suffixTokens!72)))) (value!204573 (h!46881 suffixTokens!72))))))))

(declare-fun b!3912547 () Bool)

(assert (=> b!3912547 (= e!2418954 (= (size!31127 (h!46881 suffixTokens!72)) (size!31128 (originalCharacters!7054 (h!46881 suffixTokens!72)))))))

(assert (= (and d!1160766 res!1582408) b!3912546))

(assert (= (and b!3912546 res!1582409) b!3912547))

(declare-fun b_lambda!114551 () Bool)

(assert (=> (not b_lambda!114551) (not b!3912546)))

(declare-fun tb!232997 () Bool)

(declare-fun t!323305 () Bool)

(assert (=> (and b!3912486 (= (toChars!8761 (transformation!6454 (h!46882 rules!2768))) (toChars!8761 (transformation!6454 (rule!9370 (h!46881 suffixTokens!72))))) t!323305) tb!232997))

(declare-fun b!3912552 () Bool)

(declare-fun e!2418957 () Bool)

(declare-fun tp!1190937 () Bool)

(declare-fun inv!55649 (Conc!12665) Bool)

(assert (=> b!3912552 (= e!2418957 (and (inv!55649 (c!680105 (dynLambda!17811 (toChars!8761 (transformation!6454 (rule!9370 (h!46881 suffixTokens!72)))) (value!204573 (h!46881 suffixTokens!72))))) tp!1190937))))

(declare-fun result!282378 () Bool)

(declare-fun inv!55650 (BalanceConc!24924) Bool)

(assert (=> tb!232997 (= result!282378 (and (inv!55650 (dynLambda!17811 (toChars!8761 (transformation!6454 (rule!9370 (h!46881 suffixTokens!72)))) (value!204573 (h!46881 suffixTokens!72)))) e!2418957))))

(assert (= tb!232997 b!3912552))

(declare-fun m!4475975 () Bool)

(assert (=> b!3912552 m!4475975))

(declare-fun m!4475977 () Bool)

(assert (=> tb!232997 m!4475977))

(assert (=> b!3912546 t!323305))

(declare-fun b_and!297743 () Bool)

(assert (= b_and!297733 (and (=> t!323305 result!282378) b_and!297743)))

(declare-fun t!323307 () Bool)

(declare-fun tb!232999 () Bool)

(assert (=> (and b!3912481 (= (toChars!8761 (transformation!6454 (rule!9370 (h!46881 prefixTokens!80)))) (toChars!8761 (transformation!6454 (rule!9370 (h!46881 suffixTokens!72))))) t!323307) tb!232999))

(declare-fun result!282382 () Bool)

(assert (= result!282382 result!282378))

(assert (=> b!3912546 t!323307))

(declare-fun b_and!297745 () Bool)

(assert (= b_and!297737 (and (=> t!323307 result!282382) b_and!297745)))

(declare-fun t!323309 () Bool)

(declare-fun tb!233001 () Bool)

(assert (=> (and b!3912494 (= (toChars!8761 (transformation!6454 (rule!9370 (h!46881 suffixTokens!72)))) (toChars!8761 (transformation!6454 (rule!9370 (h!46881 suffixTokens!72))))) t!323309) tb!233001))

(declare-fun result!282384 () Bool)

(assert (= result!282384 result!282378))

(assert (=> b!3912546 t!323309))

(declare-fun b_and!297747 () Bool)

(assert (= b_and!297741 (and (=> t!323309 result!282384) b_and!297747)))

(declare-fun m!4475979 () Bool)

(assert (=> d!1160766 m!4475979))

(declare-fun m!4475981 () Bool)

(assert (=> b!3912546 m!4475981))

(assert (=> b!3912546 m!4475981))

(declare-fun m!4475983 () Bool)

(assert (=> b!3912546 m!4475983))

(declare-fun m!4475985 () Bool)

(assert (=> b!3912547 m!4475985))

(assert (=> b!3912488 d!1160766))

(declare-fun d!1160768 () Bool)

(declare-fun lt!1363057 () Int)

(assert (=> d!1160768 (>= lt!1363057 0)))

(declare-fun e!2418958 () Int)

(assert (=> d!1160768 (= lt!1363057 e!2418958)))

(declare-fun c!680124 () Bool)

(assert (=> d!1160768 (= c!680124 ((_ is Nil!41460) suffix!1176))))

(assert (=> d!1160768 (= (size!31128 suffix!1176) lt!1363057)))

(declare-fun b!3912553 () Bool)

(assert (=> b!3912553 (= e!2418958 0)))

(declare-fun b!3912554 () Bool)

(assert (=> b!3912554 (= e!2418958 (+ 1 (size!31128 (t!323301 suffix!1176))))))

(assert (= (and d!1160768 c!680124) b!3912553))

(assert (= (and d!1160768 (not c!680124)) b!3912554))

(declare-fun m!4475987 () Bool)

(assert (=> b!3912554 m!4475987))

(assert (=> b!3912477 d!1160768))

(declare-fun d!1160770 () Bool)

(declare-fun lt!1363058 () Int)

(assert (=> d!1160770 (>= lt!1363058 0)))

(declare-fun e!2418959 () Int)

(assert (=> d!1160770 (= lt!1363058 e!2418959)))

(declare-fun c!680125 () Bool)

(assert (=> d!1160770 (= c!680125 ((_ is Nil!41460) (_2!23488 (v!39197 lt!1363041))))))

(assert (=> d!1160770 (= (size!31128 (_2!23488 (v!39197 lt!1363041))) lt!1363058)))

(declare-fun b!3912555 () Bool)

(assert (=> b!3912555 (= e!2418959 0)))

(declare-fun b!3912556 () Bool)

(assert (=> b!3912556 (= e!2418959 (+ 1 (size!31128 (t!323301 (_2!23488 (v!39197 lt!1363041))))))))

(assert (= (and d!1160770 c!680125) b!3912555))

(assert (= (and d!1160770 (not c!680125)) b!3912556))

(declare-fun m!4475989 () Bool)

(assert (=> b!3912556 m!4475989))

(assert (=> b!3912477 d!1160770))

(declare-fun d!1160772 () Bool)

(assert (=> d!1160772 (= (get!13701 lt!1363041) (v!39197 lt!1363041))))

(assert (=> b!3912476 d!1160772))

(declare-fun d!1160774 () Bool)

(assert (=> d!1160774 (= (head!8261 prefixTokens!80) (h!46881 prefixTokens!80))))

(assert (=> b!3912476 d!1160774))

(declare-fun d!1160776 () Bool)

(assert (=> d!1160776 (= (isEmpty!24664 rules!2768) ((_ is Nil!41462) rules!2768))))

(assert (=> b!3912487 d!1160776))

(declare-fun d!1160778 () Bool)

(assert (=> d!1160778 (= (inv!55644 (tag!7314 (rule!9370 (h!46881 prefixTokens!80)))) (= (mod (str.len (value!204547 (tag!7314 (rule!9370 (h!46881 prefixTokens!80))))) 2) 0))))

(assert (=> b!3912497 d!1160778))

(declare-fun d!1160780 () Bool)

(declare-fun res!1582412 () Bool)

(declare-fun e!2418962 () Bool)

(assert (=> d!1160780 (=> (not res!1582412) (not e!2418962))))

(declare-fun semiInverseModEq!2770 (Int Int) Bool)

(assert (=> d!1160780 (= res!1582412 (semiInverseModEq!2770 (toChars!8761 (transformation!6454 (rule!9370 (h!46881 prefixTokens!80)))) (toValue!8902 (transformation!6454 (rule!9370 (h!46881 prefixTokens!80))))))))

(assert (=> d!1160780 (= (inv!55648 (transformation!6454 (rule!9370 (h!46881 prefixTokens!80)))) e!2418962)))

(declare-fun b!3912559 () Bool)

(declare-fun equivClasses!2669 (Int Int) Bool)

(assert (=> b!3912559 (= e!2418962 (equivClasses!2669 (toChars!8761 (transformation!6454 (rule!9370 (h!46881 prefixTokens!80)))) (toValue!8902 (transformation!6454 (rule!9370 (h!46881 prefixTokens!80))))))))

(assert (= (and d!1160780 res!1582412) b!3912559))

(declare-fun m!4475991 () Bool)

(assert (=> d!1160780 m!4475991))

(declare-fun m!4475993 () Bool)

(assert (=> b!3912559 m!4475993))

(assert (=> b!3912497 d!1160780))

(declare-fun b!3912570 () Bool)

(declare-fun res!1582420 () Bool)

(declare-fun e!2418967 () Bool)

(assert (=> b!3912570 (=> (not res!1582420) (not e!2418967))))

(declare-fun lt!1363061 () List!41585)

(assert (=> b!3912570 (= res!1582420 (= (size!31129 lt!1363061) (+ (size!31129 (Cons!41461 (_1!23488 (v!39197 lt!1363041)) Nil!41461)) (size!31129 (_1!23487 lt!1363039)))))))

(declare-fun d!1160782 () Bool)

(assert (=> d!1160782 e!2418967))

(declare-fun res!1582421 () Bool)

(assert (=> d!1160782 (=> (not res!1582421) (not e!2418967))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6223 (List!41585) (InoxSet Token!12046))

(assert (=> d!1160782 (= res!1582421 (= (content!6223 lt!1363061) ((_ map or) (content!6223 (Cons!41461 (_1!23488 (v!39197 lt!1363041)) Nil!41461)) (content!6223 (_1!23487 lt!1363039)))))))

(declare-fun e!2418968 () List!41585)

(assert (=> d!1160782 (= lt!1363061 e!2418968)))

(declare-fun c!680128 () Bool)

(assert (=> d!1160782 (= c!680128 ((_ is Nil!41461) (Cons!41461 (_1!23488 (v!39197 lt!1363041)) Nil!41461)))))

(assert (=> d!1160782 (= (++!10665 (Cons!41461 (_1!23488 (v!39197 lt!1363041)) Nil!41461) (_1!23487 lt!1363039)) lt!1363061)))

(declare-fun b!3912568 () Bool)

(assert (=> b!3912568 (= e!2418968 (_1!23487 lt!1363039))))

(declare-fun b!3912569 () Bool)

(assert (=> b!3912569 (= e!2418968 (Cons!41461 (h!46881 (Cons!41461 (_1!23488 (v!39197 lt!1363041)) Nil!41461)) (++!10665 (t!323302 (Cons!41461 (_1!23488 (v!39197 lt!1363041)) Nil!41461)) (_1!23487 lt!1363039))))))

(declare-fun b!3912571 () Bool)

(assert (=> b!3912571 (= e!2418967 (or (not (= (_1!23487 lt!1363039) Nil!41461)) (= lt!1363061 (Cons!41461 (_1!23488 (v!39197 lt!1363041)) Nil!41461))))))

(assert (= (and d!1160782 c!680128) b!3912568))

(assert (= (and d!1160782 (not c!680128)) b!3912569))

(assert (= (and d!1160782 res!1582421) b!3912570))

(assert (= (and b!3912570 res!1582420) b!3912571))

(declare-fun m!4475995 () Bool)

(assert (=> b!3912570 m!4475995))

(declare-fun m!4475997 () Bool)

(assert (=> b!3912570 m!4475997))

(declare-fun m!4475999 () Bool)

(assert (=> b!3912570 m!4475999))

(declare-fun m!4476001 () Bool)

(assert (=> d!1160782 m!4476001))

(declare-fun m!4476003 () Bool)

(assert (=> d!1160782 m!4476003))

(declare-fun m!4476005 () Bool)

(assert (=> d!1160782 m!4476005))

(declare-fun m!4476007 () Bool)

(assert (=> b!3912569 m!4476007))

(assert (=> b!3912496 d!1160782))

(declare-fun d!1160784 () Bool)

(assert (=> d!1160784 (= (inv!55644 (tag!7314 (rule!9370 (h!46881 suffixTokens!72)))) (= (mod (str.len (value!204547 (tag!7314 (rule!9370 (h!46881 suffixTokens!72))))) 2) 0))))

(assert (=> b!3912475 d!1160784))

(declare-fun d!1160786 () Bool)

(declare-fun res!1582422 () Bool)

(declare-fun e!2418969 () Bool)

(assert (=> d!1160786 (=> (not res!1582422) (not e!2418969))))

(assert (=> d!1160786 (= res!1582422 (semiInverseModEq!2770 (toChars!8761 (transformation!6454 (rule!9370 (h!46881 suffixTokens!72)))) (toValue!8902 (transformation!6454 (rule!9370 (h!46881 suffixTokens!72))))))))

(assert (=> d!1160786 (= (inv!55648 (transformation!6454 (rule!9370 (h!46881 suffixTokens!72)))) e!2418969)))

(declare-fun b!3912572 () Bool)

(assert (=> b!3912572 (= e!2418969 (equivClasses!2669 (toChars!8761 (transformation!6454 (rule!9370 (h!46881 suffixTokens!72)))) (toValue!8902 (transformation!6454 (rule!9370 (h!46881 suffixTokens!72))))))))

(assert (= (and d!1160786 res!1582422) b!3912572))

(declare-fun m!4476009 () Bool)

(assert (=> d!1160786 m!4476009))

(declare-fun m!4476011 () Bool)

(assert (=> b!3912572 m!4476011))

(assert (=> b!3912475 d!1160786))

(declare-fun d!1160788 () Bool)

(declare-fun e!2418990 () Bool)

(assert (=> d!1160788 e!2418990))

(declare-fun res!1582445 () Bool)

(assert (=> d!1160788 (=> res!1582445 e!2418990)))

(declare-fun lt!1363082 () Option!8874)

(declare-fun isEmpty!24667 (Option!8874) Bool)

(assert (=> d!1160788 (= res!1582445 (isEmpty!24667 lt!1363082))))

(declare-fun e!2418988 () Option!8874)

(assert (=> d!1160788 (= lt!1363082 e!2418988)))

(declare-fun c!680137 () Bool)

(assert (=> d!1160788 (= c!680137 (and ((_ is Cons!41462) rules!2768) ((_ is Nil!41462) (t!323303 rules!2768))))))

(declare-fun lt!1363084 () Unit!59605)

(declare-fun lt!1363083 () Unit!59605)

(assert (=> d!1160788 (= lt!1363084 lt!1363083)))

(assert (=> d!1160788 (isPrefix!3549 lt!1363038 lt!1363038)))

(declare-fun lemmaIsPrefixRefl!2249 (List!41584 List!41584) Unit!59605)

(assert (=> d!1160788 (= lt!1363083 (lemmaIsPrefixRefl!2249 lt!1363038 lt!1363038))))

(declare-fun rulesValidInductive!2319 (LexerInterface!6043 List!41586) Bool)

(assert (=> d!1160788 (rulesValidInductive!2319 thiss!20629 rules!2768)))

(assert (=> d!1160788 (= (maxPrefix!3347 thiss!20629 rules!2768 lt!1363038) lt!1363082)))

(declare-fun b!3912609 () Bool)

(declare-fun e!2418989 () Bool)

(declare-fun contains!8332 (List!41586 Rule!12708) Bool)

(assert (=> b!3912609 (= e!2418989 (contains!8332 rules!2768 (rule!9370 (_1!23488 (get!13701 lt!1363082)))))))

(declare-fun b!3912610 () Bool)

(declare-fun call!284391 () Option!8874)

(assert (=> b!3912610 (= e!2418988 call!284391)))

(declare-fun b!3912611 () Bool)

(assert (=> b!3912611 (= e!2418990 e!2418989)))

(declare-fun res!1582444 () Bool)

(assert (=> b!3912611 (=> (not res!1582444) (not e!2418989))))

(declare-fun isDefined!6918 (Option!8874) Bool)

(assert (=> b!3912611 (= res!1582444 (isDefined!6918 lt!1363082))))

(declare-fun b!3912612 () Bool)

(declare-fun res!1582449 () Bool)

(assert (=> b!3912612 (=> (not res!1582449) (not e!2418989))))

(assert (=> b!3912612 (= res!1582449 (< (size!31128 (_2!23488 (get!13701 lt!1363082))) (size!31128 lt!1363038)))))

(declare-fun b!3912613 () Bool)

(declare-fun res!1582448 () Bool)

(assert (=> b!3912613 (=> (not res!1582448) (not e!2418989))))

(assert (=> b!3912613 (= res!1582448 (= (list!15413 (charsOf!4278 (_1!23488 (get!13701 lt!1363082)))) (originalCharacters!7054 (_1!23488 (get!13701 lt!1363082)))))))

(declare-fun bm!284386 () Bool)

(assert (=> bm!284386 (= call!284391 (maxPrefixOneRule!2417 thiss!20629 (h!46882 rules!2768) lt!1363038))))

(declare-fun b!3912614 () Bool)

(declare-fun lt!1363085 () Option!8874)

(declare-fun lt!1363081 () Option!8874)

(assert (=> b!3912614 (= e!2418988 (ite (and ((_ is None!8873) lt!1363085) ((_ is None!8873) lt!1363081)) None!8873 (ite ((_ is None!8873) lt!1363081) lt!1363085 (ite ((_ is None!8873) lt!1363085) lt!1363081 (ite (>= (size!31127 (_1!23488 (v!39197 lt!1363085))) (size!31127 (_1!23488 (v!39197 lt!1363081)))) lt!1363085 lt!1363081)))))))

(assert (=> b!3912614 (= lt!1363085 call!284391)))

(assert (=> b!3912614 (= lt!1363081 (maxPrefix!3347 thiss!20629 (t!323303 rules!2768) lt!1363038))))

(declare-fun b!3912615 () Bool)

(declare-fun res!1582443 () Bool)

(assert (=> b!3912615 (=> (not res!1582443) (not e!2418989))))

(assert (=> b!3912615 (= res!1582443 (matchR!5448 (regex!6454 (rule!9370 (_1!23488 (get!13701 lt!1363082)))) (list!15413 (charsOf!4278 (_1!23488 (get!13701 lt!1363082))))))))

(declare-fun b!3912616 () Bool)

(declare-fun res!1582447 () Bool)

(assert (=> b!3912616 (=> (not res!1582447) (not e!2418989))))

(assert (=> b!3912616 (= res!1582447 (= (value!204573 (_1!23488 (get!13701 lt!1363082))) (apply!9693 (transformation!6454 (rule!9370 (_1!23488 (get!13701 lt!1363082)))) (seqFromList!4721 (originalCharacters!7054 (_1!23488 (get!13701 lt!1363082)))))))))

(declare-fun b!3912617 () Bool)

(declare-fun res!1582446 () Bool)

(assert (=> b!3912617 (=> (not res!1582446) (not e!2418989))))

(assert (=> b!3912617 (= res!1582446 (= (++!10666 (list!15413 (charsOf!4278 (_1!23488 (get!13701 lt!1363082)))) (_2!23488 (get!13701 lt!1363082))) lt!1363038))))

(assert (= (and d!1160788 c!680137) b!3912610))

(assert (= (and d!1160788 (not c!680137)) b!3912614))

(assert (= (or b!3912610 b!3912614) bm!284386))

(assert (= (and d!1160788 (not res!1582445)) b!3912611))

(assert (= (and b!3912611 res!1582444) b!3912613))

(assert (= (and b!3912613 res!1582448) b!3912612))

(assert (= (and b!3912612 res!1582449) b!3912617))

(assert (= (and b!3912617 res!1582446) b!3912616))

(assert (= (and b!3912616 res!1582447) b!3912615))

(assert (= (and b!3912615 res!1582443) b!3912609))

(declare-fun m!4476027 () Bool)

(assert (=> b!3912615 m!4476027))

(declare-fun m!4476029 () Bool)

(assert (=> b!3912615 m!4476029))

(assert (=> b!3912615 m!4476029))

(declare-fun m!4476031 () Bool)

(assert (=> b!3912615 m!4476031))

(assert (=> b!3912615 m!4476031))

(declare-fun m!4476033 () Bool)

(assert (=> b!3912615 m!4476033))

(assert (=> b!3912613 m!4476027))

(assert (=> b!3912613 m!4476029))

(assert (=> b!3912613 m!4476029))

(assert (=> b!3912613 m!4476031))

(declare-fun m!4476035 () Bool)

(assert (=> d!1160788 m!4476035))

(declare-fun m!4476037 () Bool)

(assert (=> d!1160788 m!4476037))

(declare-fun m!4476039 () Bool)

(assert (=> d!1160788 m!4476039))

(declare-fun m!4476041 () Bool)

(assert (=> d!1160788 m!4476041))

(declare-fun m!4476043 () Bool)

(assert (=> bm!284386 m!4476043))

(assert (=> b!3912612 m!4476027))

(declare-fun m!4476045 () Bool)

(assert (=> b!3912612 m!4476045))

(assert (=> b!3912612 m!4475941))

(declare-fun m!4476047 () Bool)

(assert (=> b!3912614 m!4476047))

(assert (=> b!3912616 m!4476027))

(declare-fun m!4476049 () Bool)

(assert (=> b!3912616 m!4476049))

(assert (=> b!3912616 m!4476049))

(declare-fun m!4476051 () Bool)

(assert (=> b!3912616 m!4476051))

(assert (=> b!3912609 m!4476027))

(declare-fun m!4476053 () Bool)

(assert (=> b!3912609 m!4476053))

(declare-fun m!4476055 () Bool)

(assert (=> b!3912611 m!4476055))

(assert (=> b!3912617 m!4476027))

(assert (=> b!3912617 m!4476029))

(assert (=> b!3912617 m!4476029))

(assert (=> b!3912617 m!4476031))

(assert (=> b!3912617 m!4476031))

(declare-fun m!4476057 () Bool)

(assert (=> b!3912617 m!4476057))

(assert (=> b!3912485 d!1160788))

(declare-fun d!1160798 () Bool)

(assert (=> d!1160798 (= (inv!55644 (tag!7314 (h!46882 rules!2768))) (= (mod (str.len (value!204547 (tag!7314 (h!46882 rules!2768)))) 2) 0))))

(assert (=> b!3912484 d!1160798))

(declare-fun d!1160800 () Bool)

(declare-fun res!1582450 () Bool)

(declare-fun e!2418991 () Bool)

(assert (=> d!1160800 (=> (not res!1582450) (not e!2418991))))

(assert (=> d!1160800 (= res!1582450 (semiInverseModEq!2770 (toChars!8761 (transformation!6454 (h!46882 rules!2768))) (toValue!8902 (transformation!6454 (h!46882 rules!2768)))))))

(assert (=> d!1160800 (= (inv!55648 (transformation!6454 (h!46882 rules!2768))) e!2418991)))

(declare-fun b!3912618 () Bool)

(assert (=> b!3912618 (= e!2418991 (equivClasses!2669 (toChars!8761 (transformation!6454 (h!46882 rules!2768))) (toValue!8902 (transformation!6454 (h!46882 rules!2768)))))))

(assert (= (and d!1160800 res!1582450) b!3912618))

(declare-fun m!4476059 () Bool)

(assert (=> d!1160800 m!4476059))

(declare-fun m!4476061 () Bool)

(assert (=> b!3912618 m!4476061))

(assert (=> b!3912484 d!1160800))

(declare-fun d!1160802 () Bool)

(assert (=> d!1160802 (= (isEmpty!24666 prefix!426) ((_ is Nil!41460) prefix!426))))

(assert (=> b!3912495 d!1160802))

(declare-fun b!3912689 () Bool)

(declare-fun e!2419030 () Bool)

(declare-fun nullable!3971 (Regex!11359) Bool)

(assert (=> b!3912689 (= e!2419030 (nullable!3971 (regex!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041))))))))

(declare-fun b!3912690 () Bool)

(declare-fun e!2419028 () Bool)

(declare-fun lt!1363091 () Bool)

(declare-fun call!284397 () Bool)

(assert (=> b!3912690 (= e!2419028 (= lt!1363091 call!284397))))

(declare-fun b!3912691 () Bool)

(declare-fun e!2419032 () Bool)

(declare-fun head!8263 (List!41584) C!22904)

(assert (=> b!3912691 (= e!2419032 (not (= (head!8263 lt!1363030) (c!680104 (regex!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041))))))))))

(declare-fun b!3912692 () Bool)

(declare-fun res!1582491 () Bool)

(declare-fun e!2419029 () Bool)

(assert (=> b!3912692 (=> res!1582491 e!2419029)))

(declare-fun e!2419031 () Bool)

(assert (=> b!3912692 (= res!1582491 e!2419031)))

(declare-fun res!1582494 () Bool)

(assert (=> b!3912692 (=> (not res!1582494) (not e!2419031))))

(assert (=> b!3912692 (= res!1582494 lt!1363091)))

(declare-fun b!3912693 () Bool)

(declare-fun res!1582498 () Bool)

(assert (=> b!3912693 (=> res!1582498 e!2419029)))

(assert (=> b!3912693 (= res!1582498 (not ((_ is ElementMatch!11359) (regex!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041)))))))))

(declare-fun e!2419033 () Bool)

(assert (=> b!3912693 (= e!2419033 e!2419029)))

(declare-fun b!3912694 () Bool)

(declare-fun e!2419027 () Bool)

(assert (=> b!3912694 (= e!2419029 e!2419027)))

(declare-fun res!1582496 () Bool)

(assert (=> b!3912694 (=> (not res!1582496) (not e!2419027))))

(assert (=> b!3912694 (= res!1582496 (not lt!1363091))))

(declare-fun d!1160804 () Bool)

(assert (=> d!1160804 e!2419028))

(declare-fun c!680155 () Bool)

(assert (=> d!1160804 (= c!680155 ((_ is EmptyExpr!11359) (regex!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041))))))))

(assert (=> d!1160804 (= lt!1363091 e!2419030)))

(declare-fun c!680154 () Bool)

(assert (=> d!1160804 (= c!680154 (isEmpty!24666 lt!1363030))))

(declare-fun validRegex!5170 (Regex!11359) Bool)

(assert (=> d!1160804 (validRegex!5170 (regex!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041)))))))

(assert (=> d!1160804 (= (matchR!5448 (regex!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041)))) lt!1363030) lt!1363091)))

(declare-fun b!3912695 () Bool)

(declare-fun res!1582493 () Bool)

(assert (=> b!3912695 (=> res!1582493 e!2419032)))

(declare-fun tail!5979 (List!41584) List!41584)

(assert (=> b!3912695 (= res!1582493 (not (isEmpty!24666 (tail!5979 lt!1363030))))))

(declare-fun b!3912696 () Bool)

(assert (=> b!3912696 (= e!2419031 (= (head!8263 lt!1363030) (c!680104 (regex!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041)))))))))

(declare-fun b!3912697 () Bool)

(declare-fun derivativeStep!3436 (Regex!11359 C!22904) Regex!11359)

(assert (=> b!3912697 (= e!2419030 (matchR!5448 (derivativeStep!3436 (regex!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041)))) (head!8263 lt!1363030)) (tail!5979 lt!1363030)))))

(declare-fun b!3912698 () Bool)

(declare-fun res!1582495 () Bool)

(assert (=> b!3912698 (=> (not res!1582495) (not e!2419031))))

(assert (=> b!3912698 (= res!1582495 (not call!284397))))

(declare-fun b!3912699 () Bool)

(declare-fun res!1582492 () Bool)

(assert (=> b!3912699 (=> (not res!1582492) (not e!2419031))))

(assert (=> b!3912699 (= res!1582492 (isEmpty!24666 (tail!5979 lt!1363030)))))

(declare-fun b!3912700 () Bool)

(assert (=> b!3912700 (= e!2419033 (not lt!1363091))))

(declare-fun b!3912701 () Bool)

(assert (=> b!3912701 (= e!2419028 e!2419033)))

(declare-fun c!680153 () Bool)

(assert (=> b!3912701 (= c!680153 ((_ is EmptyLang!11359) (regex!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041))))))))

(declare-fun bm!284392 () Bool)

(assert (=> bm!284392 (= call!284397 (isEmpty!24666 lt!1363030))))

(declare-fun b!3912702 () Bool)

(assert (=> b!3912702 (= e!2419027 e!2419032)))

(declare-fun res!1582497 () Bool)

(assert (=> b!3912702 (=> res!1582497 e!2419032)))

(assert (=> b!3912702 (= res!1582497 call!284397)))

(assert (= (and d!1160804 c!680154) b!3912689))

(assert (= (and d!1160804 (not c!680154)) b!3912697))

(assert (= (and d!1160804 c!680155) b!3912690))

(assert (= (and d!1160804 (not c!680155)) b!3912701))

(assert (= (and b!3912701 c!680153) b!3912700))

(assert (= (and b!3912701 (not c!680153)) b!3912693))

(assert (= (and b!3912693 (not res!1582498)) b!3912692))

(assert (= (and b!3912692 res!1582494) b!3912698))

(assert (= (and b!3912698 res!1582495) b!3912699))

(assert (= (and b!3912699 res!1582492) b!3912696))

(assert (= (and b!3912692 (not res!1582491)) b!3912694))

(assert (= (and b!3912694 res!1582496) b!3912702))

(assert (= (and b!3912702 (not res!1582497)) b!3912695))

(assert (= (and b!3912695 (not res!1582493)) b!3912691))

(assert (= (or b!3912690 b!3912698 b!3912702) bm!284392))

(declare-fun m!4476079 () Bool)

(assert (=> b!3912697 m!4476079))

(assert (=> b!3912697 m!4476079))

(declare-fun m!4476081 () Bool)

(assert (=> b!3912697 m!4476081))

(declare-fun m!4476083 () Bool)

(assert (=> b!3912697 m!4476083))

(assert (=> b!3912697 m!4476081))

(assert (=> b!3912697 m!4476083))

(declare-fun m!4476085 () Bool)

(assert (=> b!3912697 m!4476085))

(declare-fun m!4476087 () Bool)

(assert (=> d!1160804 m!4476087))

(declare-fun m!4476089 () Bool)

(assert (=> d!1160804 m!4476089))

(assert (=> bm!284392 m!4476087))

(assert (=> b!3912695 m!4476083))

(assert (=> b!3912695 m!4476083))

(declare-fun m!4476091 () Bool)

(assert (=> b!3912695 m!4476091))

(declare-fun m!4476093 () Bool)

(assert (=> b!3912689 m!4476093))

(assert (=> b!3912696 m!4476079))

(assert (=> b!3912699 m!4476083))

(assert (=> b!3912699 m!4476083))

(assert (=> b!3912699 m!4476091))

(assert (=> b!3912691 m!4476079))

(assert (=> b!3912473 d!1160804))

(declare-fun b!3912748 () Bool)

(declare-fun res!1582536 () Bool)

(declare-fun e!2419054 () Bool)

(assert (=> b!3912748 (=> (not res!1582536) (not e!2419054))))

(declare-fun lt!1363118 () Option!8874)

(assert (=> b!3912748 (= res!1582536 (< (size!31128 (_2!23488 (get!13701 lt!1363118))) (size!31128 lt!1363038)))))

(declare-fun b!3912749 () Bool)

(declare-fun e!2419055 () Option!8874)

(declare-datatypes ((tuple2!40712 0))(
  ( (tuple2!40713 (_1!23490 List!41584) (_2!23490 List!41584)) )
))
(declare-fun lt!1363117 () tuple2!40712)

(declare-fun size!31132 (BalanceConc!24924) Int)

(assert (=> b!3912749 (= e!2419055 (Some!8873 (tuple2!40709 (Token!12047 (apply!9693 (transformation!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041)))) (seqFromList!4721 (_1!23490 lt!1363117))) (rule!9370 (_1!23488 (v!39197 lt!1363041))) (size!31132 (seqFromList!4721 (_1!23490 lt!1363117))) (_1!23490 lt!1363117)) (_2!23490 lt!1363117))))))

(declare-fun lt!1363119 () Unit!59605)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1205 (Regex!11359 List!41584) Unit!59605)

(assert (=> b!3912749 (= lt!1363119 (longestMatchIsAcceptedByMatchOrIsEmpty!1205 (regex!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041)))) lt!1363038))))

(declare-fun res!1582538 () Bool)

(declare-fun findLongestMatchInner!1232 (Regex!11359 List!41584 Int List!41584 List!41584 Int) tuple2!40712)

(assert (=> b!3912749 (= res!1582538 (isEmpty!24666 (_1!23490 (findLongestMatchInner!1232 (regex!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041)))) Nil!41460 (size!31128 Nil!41460) lt!1363038 lt!1363038 (size!31128 lt!1363038)))))))

(declare-fun e!2419057 () Bool)

(assert (=> b!3912749 (=> res!1582538 e!2419057)))

(assert (=> b!3912749 e!2419057))

(declare-fun lt!1363120 () Unit!59605)

(assert (=> b!3912749 (= lt!1363120 lt!1363119)))

(declare-fun lt!1363121 () Unit!59605)

(declare-fun lemmaSemiInverse!1738 (TokenValueInjection!12796 BalanceConc!24924) Unit!59605)

(assert (=> b!3912749 (= lt!1363121 (lemmaSemiInverse!1738 (transformation!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041)))) (seqFromList!4721 (_1!23490 lt!1363117))))))

(declare-fun b!3912750 () Bool)

(assert (=> b!3912750 (= e!2419055 None!8873)))

(declare-fun b!3912751 () Bool)

(declare-fun res!1582534 () Bool)

(assert (=> b!3912751 (=> (not res!1582534) (not e!2419054))))

(assert (=> b!3912751 (= res!1582534 (= (++!10666 (list!15413 (charsOf!4278 (_1!23488 (get!13701 lt!1363118)))) (_2!23488 (get!13701 lt!1363118))) lt!1363038))))

(declare-fun b!3912752 () Bool)

(declare-fun res!1582539 () Bool)

(assert (=> b!3912752 (=> (not res!1582539) (not e!2419054))))

(assert (=> b!3912752 (= res!1582539 (= (rule!9370 (_1!23488 (get!13701 lt!1363118))) (rule!9370 (_1!23488 (v!39197 lt!1363041)))))))

(declare-fun d!1160808 () Bool)

(declare-fun e!2419056 () Bool)

(assert (=> d!1160808 e!2419056))

(declare-fun res!1582535 () Bool)

(assert (=> d!1160808 (=> res!1582535 e!2419056)))

(assert (=> d!1160808 (= res!1582535 (isEmpty!24667 lt!1363118))))

(assert (=> d!1160808 (= lt!1363118 e!2419055)))

(declare-fun c!680161 () Bool)

(assert (=> d!1160808 (= c!680161 (isEmpty!24666 (_1!23490 lt!1363117)))))

(declare-fun findLongestMatch!1145 (Regex!11359 List!41584) tuple2!40712)

(assert (=> d!1160808 (= lt!1363117 (findLongestMatch!1145 (regex!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041)))) lt!1363038))))

(assert (=> d!1160808 (ruleValid!2402 thiss!20629 (rule!9370 (_1!23488 (v!39197 lt!1363041))))))

(assert (=> d!1160808 (= (maxPrefixOneRule!2417 thiss!20629 (rule!9370 (_1!23488 (v!39197 lt!1363041))) lt!1363038) lt!1363118)))

(declare-fun b!3912753 () Bool)

(assert (=> b!3912753 (= e!2419054 (= (size!31127 (_1!23488 (get!13701 lt!1363118))) (size!31128 (originalCharacters!7054 (_1!23488 (get!13701 lt!1363118))))))))

(declare-fun b!3912754 () Bool)

(declare-fun res!1582537 () Bool)

(assert (=> b!3912754 (=> (not res!1582537) (not e!2419054))))

(assert (=> b!3912754 (= res!1582537 (= (value!204573 (_1!23488 (get!13701 lt!1363118))) (apply!9693 (transformation!6454 (rule!9370 (_1!23488 (get!13701 lt!1363118)))) (seqFromList!4721 (originalCharacters!7054 (_1!23488 (get!13701 lt!1363118)))))))))

(declare-fun b!3912755 () Bool)

(assert (=> b!3912755 (= e!2419057 (matchR!5448 (regex!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041)))) (_1!23490 (findLongestMatchInner!1232 (regex!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041)))) Nil!41460 (size!31128 Nil!41460) lt!1363038 lt!1363038 (size!31128 lt!1363038)))))))

(declare-fun b!3912756 () Bool)

(assert (=> b!3912756 (= e!2419056 e!2419054)))

(declare-fun res!1582540 () Bool)

(assert (=> b!3912756 (=> (not res!1582540) (not e!2419054))))

(assert (=> b!3912756 (= res!1582540 (matchR!5448 (regex!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041)))) (list!15413 (charsOf!4278 (_1!23488 (get!13701 lt!1363118))))))))

(assert (= (and d!1160808 c!680161) b!3912750))

(assert (= (and d!1160808 (not c!680161)) b!3912749))

(assert (= (and b!3912749 (not res!1582538)) b!3912755))

(assert (= (and d!1160808 (not res!1582535)) b!3912756))

(assert (= (and b!3912756 res!1582540) b!3912751))

(assert (= (and b!3912751 res!1582534) b!3912748))

(assert (= (and b!3912748 res!1582536) b!3912752))

(assert (= (and b!3912752 res!1582539) b!3912754))

(assert (= (and b!3912754 res!1582537) b!3912753))

(declare-fun m!4476137 () Bool)

(assert (=> b!3912753 m!4476137))

(declare-fun m!4476139 () Bool)

(assert (=> b!3912753 m!4476139))

(assert (=> b!3912754 m!4476137))

(declare-fun m!4476141 () Bool)

(assert (=> b!3912754 m!4476141))

(assert (=> b!3912754 m!4476141))

(declare-fun m!4476143 () Bool)

(assert (=> b!3912754 m!4476143))

(assert (=> b!3912751 m!4476137))

(declare-fun m!4476145 () Bool)

(assert (=> b!3912751 m!4476145))

(assert (=> b!3912751 m!4476145))

(declare-fun m!4476147 () Bool)

(assert (=> b!3912751 m!4476147))

(assert (=> b!3912751 m!4476147))

(declare-fun m!4476149 () Bool)

(assert (=> b!3912751 m!4476149))

(assert (=> b!3912756 m!4476137))

(assert (=> b!3912756 m!4476145))

(assert (=> b!3912756 m!4476145))

(assert (=> b!3912756 m!4476147))

(assert (=> b!3912756 m!4476147))

(declare-fun m!4476151 () Bool)

(assert (=> b!3912756 m!4476151))

(declare-fun m!4476153 () Bool)

(assert (=> b!3912749 m!4476153))

(declare-fun m!4476155 () Bool)

(assert (=> b!3912749 m!4476155))

(declare-fun m!4476157 () Bool)

(assert (=> b!3912749 m!4476157))

(assert (=> b!3912749 m!4475941))

(declare-fun m!4476159 () Bool)

(assert (=> b!3912749 m!4476159))

(assert (=> b!3912749 m!4476157))

(declare-fun m!4476161 () Bool)

(assert (=> b!3912749 m!4476161))

(assert (=> b!3912749 m!4476153))

(assert (=> b!3912749 m!4475941))

(assert (=> b!3912749 m!4476153))

(declare-fun m!4476163 () Bool)

(assert (=> b!3912749 m!4476163))

(declare-fun m!4476165 () Bool)

(assert (=> b!3912749 m!4476165))

(assert (=> b!3912749 m!4476153))

(declare-fun m!4476167 () Bool)

(assert (=> b!3912749 m!4476167))

(assert (=> b!3912752 m!4476137))

(assert (=> b!3912748 m!4476137))

(declare-fun m!4476169 () Bool)

(assert (=> b!3912748 m!4476169))

(assert (=> b!3912748 m!4475941))

(declare-fun m!4476171 () Bool)

(assert (=> d!1160808 m!4476171))

(declare-fun m!4476173 () Bool)

(assert (=> d!1160808 m!4476173))

(declare-fun m!4476175 () Bool)

(assert (=> d!1160808 m!4476175))

(assert (=> d!1160808 m!4475907))

(assert (=> b!3912755 m!4476157))

(assert (=> b!3912755 m!4475941))

(assert (=> b!3912755 m!4476157))

(assert (=> b!3912755 m!4475941))

(assert (=> b!3912755 m!4476159))

(declare-fun m!4476177 () Bool)

(assert (=> b!3912755 m!4476177))

(assert (=> b!3912473 d!1160808))

(declare-fun d!1160812 () Bool)

(assert (=> d!1160812 (= (maxPrefixOneRule!2417 thiss!20629 (rule!9370 (_1!23488 (v!39197 lt!1363041))) lt!1363038) (Some!8873 (tuple2!40709 (Token!12047 (apply!9693 (transformation!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041)))) (seqFromList!4721 lt!1363030)) (rule!9370 (_1!23488 (v!39197 lt!1363041))) (size!31128 lt!1363030) lt!1363030) (_2!23488 (v!39197 lt!1363041)))))))

(declare-fun lt!1363127 () Unit!59605)

(declare-fun choose!23162 (LexerInterface!6043 List!41586 List!41584 List!41584 List!41584 Rule!12708) Unit!59605)

(assert (=> d!1160812 (= lt!1363127 (choose!23162 thiss!20629 rules!2768 lt!1363030 lt!1363038 (_2!23488 (v!39197 lt!1363041)) (rule!9370 (_1!23488 (v!39197 lt!1363041)))))))

(assert (=> d!1160812 (not (isEmpty!24664 rules!2768))))

(assert (=> d!1160812 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1285 thiss!20629 rules!2768 lt!1363030 lt!1363038 (_2!23488 (v!39197 lt!1363041)) (rule!9370 (_1!23488 (v!39197 lt!1363041)))) lt!1363127)))

(declare-fun bs!585636 () Bool)

(assert (= bs!585636 d!1160812))

(assert (=> bs!585636 m!4475873))

(declare-fun m!4476193 () Bool)

(assert (=> bs!585636 m!4476193))

(assert (=> bs!585636 m!4475883))

(assert (=> bs!585636 m!4475887))

(assert (=> bs!585636 m!4475885))

(assert (=> bs!585636 m!4475917))

(assert (=> bs!585636 m!4475883))

(assert (=> b!3912473 d!1160812))

(declare-fun b!3912768 () Bool)

(declare-fun e!2419066 () tuple2!40706)

(assert (=> b!3912768 (= e!2419066 (tuple2!40707 Nil!41461 lt!1363038))))

(declare-fun b!3912769 () Bool)

(declare-fun e!2419064 () Bool)

(declare-fun lt!1363129 () tuple2!40706)

(assert (=> b!3912769 (= e!2419064 (= (_2!23487 lt!1363129) lt!1363038))))

(declare-fun b!3912770 () Bool)

(declare-fun lt!1363128 () Option!8874)

(declare-fun lt!1363130 () tuple2!40706)

(assert (=> b!3912770 (= e!2419066 (tuple2!40707 (Cons!41461 (_1!23488 (v!39197 lt!1363128)) (_1!23487 lt!1363130)) (_2!23487 lt!1363130)))))

(assert (=> b!3912770 (= lt!1363130 (lexList!1811 thiss!20629 rules!2768 (_2!23488 (v!39197 lt!1363128))))))

(declare-fun b!3912771 () Bool)

(declare-fun e!2419065 () Bool)

(assert (=> b!3912771 (= e!2419065 (not (isEmpty!24665 (_1!23487 lt!1363129))))))

(declare-fun b!3912772 () Bool)

(assert (=> b!3912772 (= e!2419064 e!2419065)))

(declare-fun res!1582547 () Bool)

(assert (=> b!3912772 (= res!1582547 (< (size!31128 (_2!23487 lt!1363129)) (size!31128 lt!1363038)))))

(assert (=> b!3912772 (=> (not res!1582547) (not e!2419065))))

(declare-fun d!1160820 () Bool)

(assert (=> d!1160820 e!2419064))

(declare-fun c!680162 () Bool)

(assert (=> d!1160820 (= c!680162 (> (size!31129 (_1!23487 lt!1363129)) 0))))

(assert (=> d!1160820 (= lt!1363129 e!2419066)))

(declare-fun c!680163 () Bool)

(assert (=> d!1160820 (= c!680163 ((_ is Some!8873) lt!1363128))))

(assert (=> d!1160820 (= lt!1363128 (maxPrefix!3347 thiss!20629 rules!2768 lt!1363038))))

(assert (=> d!1160820 (= (lexList!1811 thiss!20629 rules!2768 lt!1363038) lt!1363129)))

(assert (= (and d!1160820 c!680163) b!3912770))

(assert (= (and d!1160820 (not c!680163)) b!3912768))

(assert (= (and d!1160820 c!680162) b!3912772))

(assert (= (and d!1160820 (not c!680162)) b!3912769))

(assert (= (and b!3912772 res!1582547) b!3912771))

(declare-fun m!4476195 () Bool)

(assert (=> b!3912770 m!4476195))

(declare-fun m!4476197 () Bool)

(assert (=> b!3912771 m!4476197))

(declare-fun m!4476199 () Bool)

(assert (=> b!3912772 m!4476199))

(assert (=> b!3912772 m!4475941))

(declare-fun m!4476201 () Bool)

(assert (=> d!1160820 m!4476201))

(assert (=> d!1160820 m!4475867))

(assert (=> b!3912472 d!1160820))

(declare-fun b!3912775 () Bool)

(declare-fun res!1582548 () Bool)

(declare-fun e!2419067 () Bool)

(assert (=> b!3912775 (=> (not res!1582548) (not e!2419067))))

(declare-fun lt!1363131 () List!41585)

(assert (=> b!3912775 (= res!1582548 (= (size!31129 lt!1363131) (+ (size!31129 prefixTokens!80) (size!31129 suffixTokens!72))))))

(declare-fun d!1160822 () Bool)

(assert (=> d!1160822 e!2419067))

(declare-fun res!1582549 () Bool)

(assert (=> d!1160822 (=> (not res!1582549) (not e!2419067))))

(assert (=> d!1160822 (= res!1582549 (= (content!6223 lt!1363131) ((_ map or) (content!6223 prefixTokens!80) (content!6223 suffixTokens!72))))))

(declare-fun e!2419068 () List!41585)

(assert (=> d!1160822 (= lt!1363131 e!2419068)))

(declare-fun c!680164 () Bool)

(assert (=> d!1160822 (= c!680164 ((_ is Nil!41461) prefixTokens!80))))

(assert (=> d!1160822 (= (++!10665 prefixTokens!80 suffixTokens!72) lt!1363131)))

(declare-fun b!3912773 () Bool)

(assert (=> b!3912773 (= e!2419068 suffixTokens!72)))

(declare-fun b!3912774 () Bool)

(assert (=> b!3912774 (= e!2419068 (Cons!41461 (h!46881 prefixTokens!80) (++!10665 (t!323302 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3912776 () Bool)

(assert (=> b!3912776 (= e!2419067 (or (not (= suffixTokens!72 Nil!41461)) (= lt!1363131 prefixTokens!80)))))

(assert (= (and d!1160822 c!680164) b!3912773))

(assert (= (and d!1160822 (not c!680164)) b!3912774))

(assert (= (and d!1160822 res!1582549) b!3912775))

(assert (= (and b!3912775 res!1582548) b!3912776))

(declare-fun m!4476203 () Bool)

(assert (=> b!3912775 m!4476203))

(declare-fun m!4476205 () Bool)

(assert (=> b!3912775 m!4476205))

(declare-fun m!4476207 () Bool)

(assert (=> b!3912775 m!4476207))

(declare-fun m!4476209 () Bool)

(assert (=> d!1160822 m!4476209))

(declare-fun m!4476211 () Bool)

(assert (=> d!1160822 m!4476211))

(declare-fun m!4476213 () Bool)

(assert (=> d!1160822 m!4476213))

(declare-fun m!4476215 () Bool)

(assert (=> b!3912774 m!4476215))

(assert (=> b!3912472 d!1160822))

(declare-fun d!1160824 () Bool)

(declare-fun e!2419086 () Bool)

(assert (=> d!1160824 e!2419086))

(declare-fun res!1582562 () Bool)

(assert (=> d!1160824 (=> (not res!1582562) (not e!2419086))))

(declare-fun lt!1363134 () List!41584)

(declare-fun content!6224 (List!41584) (InoxSet C!22904))

(assert (=> d!1160824 (= res!1582562 (= (content!6224 lt!1363134) ((_ map or) (content!6224 prefix!426) (content!6224 suffix!1176))))))

(declare-fun e!2419087 () List!41584)

(assert (=> d!1160824 (= lt!1363134 e!2419087)))

(declare-fun c!680173 () Bool)

(assert (=> d!1160824 (= c!680173 ((_ is Nil!41460) prefix!426))))

(assert (=> d!1160824 (= (++!10666 prefix!426 suffix!1176) lt!1363134)))

(declare-fun b!3912805 () Bool)

(assert (=> b!3912805 (= e!2419087 (Cons!41460 (h!46880 prefix!426) (++!10666 (t!323301 prefix!426) suffix!1176)))))

(declare-fun b!3912804 () Bool)

(assert (=> b!3912804 (= e!2419087 suffix!1176)))

(declare-fun b!3912807 () Bool)

(assert (=> b!3912807 (= e!2419086 (or (not (= suffix!1176 Nil!41460)) (= lt!1363134 prefix!426)))))

(declare-fun b!3912806 () Bool)

(declare-fun res!1582561 () Bool)

(assert (=> b!3912806 (=> (not res!1582561) (not e!2419086))))

(assert (=> b!3912806 (= res!1582561 (= (size!31128 lt!1363134) (+ (size!31128 prefix!426) (size!31128 suffix!1176))))))

(assert (= (and d!1160824 c!680173) b!3912804))

(assert (= (and d!1160824 (not c!680173)) b!3912805))

(assert (= (and d!1160824 res!1582562) b!3912806))

(assert (= (and b!3912806 res!1582561) b!3912807))

(declare-fun m!4476231 () Bool)

(assert (=> d!1160824 m!4476231))

(declare-fun m!4476233 () Bool)

(assert (=> d!1160824 m!4476233))

(declare-fun m!4476235 () Bool)

(assert (=> d!1160824 m!4476235))

(declare-fun m!4476237 () Bool)

(assert (=> b!3912805 m!4476237))

(declare-fun m!4476239 () Bool)

(assert (=> b!3912806 m!4476239))

(assert (=> b!3912806 m!4475919))

(assert (=> b!3912806 m!4475921))

(assert (=> b!3912472 d!1160824))

(declare-fun d!1160834 () Bool)

(declare-fun lt!1363138 () Int)

(assert (=> d!1160834 (>= lt!1363138 0)))

(declare-fun e!2419091 () Int)

(assert (=> d!1160834 (= lt!1363138 e!2419091)))

(declare-fun c!680176 () Bool)

(assert (=> d!1160834 (= c!680176 ((_ is Nil!41460) lt!1363030))))

(assert (=> d!1160834 (= (size!31128 lt!1363030) lt!1363138)))

(declare-fun b!3912813 () Bool)

(assert (=> b!3912813 (= e!2419091 0)))

(declare-fun b!3912814 () Bool)

(assert (=> b!3912814 (= e!2419091 (+ 1 (size!31128 (t!323301 lt!1363030))))))

(assert (= (and d!1160834 c!680176) b!3912813))

(assert (= (and d!1160834 (not c!680176)) b!3912814))

(declare-fun m!4476241 () Bool)

(assert (=> b!3912814 m!4476241))

(assert (=> b!3912483 d!1160834))

(declare-fun d!1160836 () Bool)

(declare-fun list!15414 (Conc!12665) List!41584)

(assert (=> d!1160836 (= (list!15413 (charsOf!4278 (_1!23488 (v!39197 lt!1363041)))) (list!15414 (c!680105 (charsOf!4278 (_1!23488 (v!39197 lt!1363041))))))))

(declare-fun bs!585637 () Bool)

(assert (= bs!585637 d!1160836))

(declare-fun m!4476253 () Bool)

(assert (=> bs!585637 m!4476253))

(assert (=> b!3912483 d!1160836))

(declare-fun b!3912835 () Bool)

(declare-fun e!2419104 () Bool)

(declare-fun e!2419106 () Bool)

(assert (=> b!3912835 (= e!2419104 e!2419106)))

(declare-fun res!1582578 () Bool)

(assert (=> b!3912835 (=> (not res!1582578) (not e!2419106))))

(assert (=> b!3912835 (= res!1582578 (not ((_ is Nil!41460) lt!1363043)))))

(declare-fun b!3912836 () Bool)

(declare-fun res!1582581 () Bool)

(assert (=> b!3912836 (=> (not res!1582581) (not e!2419106))))

(assert (=> b!3912836 (= res!1582581 (= (head!8263 lt!1363030) (head!8263 lt!1363043)))))

(declare-fun b!3912837 () Bool)

(assert (=> b!3912837 (= e!2419106 (isPrefix!3549 (tail!5979 lt!1363030) (tail!5979 lt!1363043)))))

(declare-fun d!1160840 () Bool)

(declare-fun e!2419105 () Bool)

(assert (=> d!1160840 e!2419105))

(declare-fun res!1582579 () Bool)

(assert (=> d!1160840 (=> res!1582579 e!2419105)))

(declare-fun lt!1363144 () Bool)

(assert (=> d!1160840 (= res!1582579 (not lt!1363144))))

(assert (=> d!1160840 (= lt!1363144 e!2419104)))

(declare-fun res!1582580 () Bool)

(assert (=> d!1160840 (=> res!1582580 e!2419104)))

(assert (=> d!1160840 (= res!1582580 ((_ is Nil!41460) lt!1363030))))

(assert (=> d!1160840 (= (isPrefix!3549 lt!1363030 lt!1363043) lt!1363144)))

(declare-fun b!3912838 () Bool)

(assert (=> b!3912838 (= e!2419105 (>= (size!31128 lt!1363043) (size!31128 lt!1363030)))))

(assert (= (and d!1160840 (not res!1582580)) b!3912835))

(assert (= (and b!3912835 res!1582578) b!3912836))

(assert (= (and b!3912836 res!1582581) b!3912837))

(assert (= (and d!1160840 (not res!1582579)) b!3912838))

(assert (=> b!3912836 m!4476079))

(declare-fun m!4476265 () Bool)

(assert (=> b!3912836 m!4476265))

(assert (=> b!3912837 m!4476083))

(declare-fun m!4476267 () Bool)

(assert (=> b!3912837 m!4476267))

(assert (=> b!3912837 m!4476083))

(assert (=> b!3912837 m!4476267))

(declare-fun m!4476269 () Bool)

(assert (=> b!3912837 m!4476269))

(declare-fun m!4476271 () Bool)

(assert (=> b!3912838 m!4476271))

(assert (=> b!3912838 m!4475885))

(assert (=> b!3912483 d!1160840))

(declare-fun d!1160844 () Bool)

(declare-fun dynLambda!17813 (Int BalanceConc!24924) TokenValue!6684)

(assert (=> d!1160844 (= (apply!9693 (transformation!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041)))) (seqFromList!4721 lt!1363030)) (dynLambda!17813 (toValue!8902 (transformation!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041))))) (seqFromList!4721 lt!1363030)))))

(declare-fun b_lambda!114555 () Bool)

(assert (=> (not b_lambda!114555) (not d!1160844)))

(declare-fun t!323317 () Bool)

(declare-fun tb!233009 () Bool)

(assert (=> (and b!3912486 (= (toValue!8902 (transformation!6454 (h!46882 rules!2768))) (toValue!8902 (transformation!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041)))))) t!323317) tb!233009))

(declare-fun result!282394 () Bool)

(assert (=> tb!233009 (= result!282394 (inv!21 (dynLambda!17813 (toValue!8902 (transformation!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041))))) (seqFromList!4721 lt!1363030))))))

(declare-fun m!4476275 () Bool)

(assert (=> tb!233009 m!4476275))

(assert (=> d!1160844 t!323317))

(declare-fun b_and!297755 () Bool)

(assert (= b_and!297731 (and (=> t!323317 result!282394) b_and!297755)))

(declare-fun t!323319 () Bool)

(declare-fun tb!233011 () Bool)

(assert (=> (and b!3912481 (= (toValue!8902 (transformation!6454 (rule!9370 (h!46881 prefixTokens!80)))) (toValue!8902 (transformation!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041)))))) t!323319) tb!233011))

(declare-fun result!282398 () Bool)

(assert (= result!282398 result!282394))

(assert (=> d!1160844 t!323319))

(declare-fun b_and!297757 () Bool)

(assert (= b_and!297735 (and (=> t!323319 result!282398) b_and!297757)))

(declare-fun tb!233013 () Bool)

(declare-fun t!323321 () Bool)

(assert (=> (and b!3912494 (= (toValue!8902 (transformation!6454 (rule!9370 (h!46881 suffixTokens!72)))) (toValue!8902 (transformation!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041)))))) t!323321) tb!233013))

(declare-fun result!282400 () Bool)

(assert (= result!282400 result!282394))

(assert (=> d!1160844 t!323321))

(declare-fun b_and!297759 () Bool)

(assert (= b_and!297739 (and (=> t!323321 result!282400) b_and!297759)))

(assert (=> d!1160844 m!4475883))

(declare-fun m!4476277 () Bool)

(assert (=> d!1160844 m!4476277))

(assert (=> b!3912483 d!1160844))

(declare-fun d!1160848 () Bool)

(assert (=> d!1160848 (isPrefix!3549 lt!1363030 (++!10666 lt!1363030 (_2!23488 (v!39197 lt!1363041))))))

(declare-fun lt!1363150 () Unit!59605)

(declare-fun choose!23164 (List!41584 List!41584) Unit!59605)

(assert (=> d!1160848 (= lt!1363150 (choose!23164 lt!1363030 (_2!23488 (v!39197 lt!1363041))))))

(assert (=> d!1160848 (= (lemmaConcatTwoListThenFirstIsPrefix!2412 lt!1363030 (_2!23488 (v!39197 lt!1363041))) lt!1363150)))

(declare-fun bs!585640 () Bool)

(assert (= bs!585640 d!1160848))

(assert (=> bs!585640 m!4475903))

(assert (=> bs!585640 m!4475903))

(declare-fun m!4476283 () Bool)

(assert (=> bs!585640 m!4476283))

(declare-fun m!4476285 () Bool)

(assert (=> bs!585640 m!4476285))

(assert (=> b!3912483 d!1160848))

(declare-fun b!3912841 () Bool)

(declare-fun e!2419112 () tuple2!40706)

(assert (=> b!3912841 (= e!2419112 (tuple2!40707 Nil!41461 (_2!23488 (v!39197 lt!1363041))))))

(declare-fun b!3912842 () Bool)

(declare-fun e!2419110 () Bool)

(declare-fun lt!1363152 () tuple2!40706)

(assert (=> b!3912842 (= e!2419110 (= (_2!23487 lt!1363152) (_2!23488 (v!39197 lt!1363041))))))

(declare-fun b!3912843 () Bool)

(declare-fun lt!1363151 () Option!8874)

(declare-fun lt!1363153 () tuple2!40706)

(assert (=> b!3912843 (= e!2419112 (tuple2!40707 (Cons!41461 (_1!23488 (v!39197 lt!1363151)) (_1!23487 lt!1363153)) (_2!23487 lt!1363153)))))

(assert (=> b!3912843 (= lt!1363153 (lexList!1811 thiss!20629 rules!2768 (_2!23488 (v!39197 lt!1363151))))))

(declare-fun b!3912844 () Bool)

(declare-fun e!2419111 () Bool)

(assert (=> b!3912844 (= e!2419111 (not (isEmpty!24665 (_1!23487 lt!1363152))))))

(declare-fun b!3912845 () Bool)

(assert (=> b!3912845 (= e!2419110 e!2419111)))

(declare-fun res!1582582 () Bool)

(assert (=> b!3912845 (= res!1582582 (< (size!31128 (_2!23487 lt!1363152)) (size!31128 (_2!23488 (v!39197 lt!1363041)))))))

(assert (=> b!3912845 (=> (not res!1582582) (not e!2419111))))

(declare-fun d!1160852 () Bool)

(assert (=> d!1160852 e!2419110))

(declare-fun c!680180 () Bool)

(assert (=> d!1160852 (= c!680180 (> (size!31129 (_1!23487 lt!1363152)) 0))))

(assert (=> d!1160852 (= lt!1363152 e!2419112)))

(declare-fun c!680181 () Bool)

(assert (=> d!1160852 (= c!680181 ((_ is Some!8873) lt!1363151))))

(assert (=> d!1160852 (= lt!1363151 (maxPrefix!3347 thiss!20629 rules!2768 (_2!23488 (v!39197 lt!1363041))))))

(assert (=> d!1160852 (= (lexList!1811 thiss!20629 rules!2768 (_2!23488 (v!39197 lt!1363041))) lt!1363152)))

(assert (= (and d!1160852 c!680181) b!3912843))

(assert (= (and d!1160852 (not c!680181)) b!3912841))

(assert (= (and d!1160852 c!680180) b!3912845))

(assert (= (and d!1160852 (not c!680180)) b!3912842))

(assert (= (and b!3912845 res!1582582) b!3912844))

(declare-fun m!4476287 () Bool)

(assert (=> b!3912843 m!4476287))

(declare-fun m!4476289 () Bool)

(assert (=> b!3912844 m!4476289))

(declare-fun m!4476291 () Bool)

(assert (=> b!3912845 m!4476291))

(assert (=> b!3912845 m!4475923))

(declare-fun m!4476293 () Bool)

(assert (=> d!1160852 m!4476293))

(declare-fun m!4476295 () Bool)

(assert (=> d!1160852 m!4476295))

(assert (=> b!3912483 d!1160852))

(declare-fun d!1160854 () Bool)

(declare-fun fromListB!2180 (List!41584) BalanceConc!24924)

(assert (=> d!1160854 (= (seqFromList!4721 lt!1363030) (fromListB!2180 lt!1363030))))

(declare-fun bs!585641 () Bool)

(assert (= bs!585641 d!1160854))

(declare-fun m!4476297 () Bool)

(assert (=> bs!585641 m!4476297))

(assert (=> b!3912483 d!1160854))

(declare-fun d!1160856 () Bool)

(declare-fun res!1582587 () Bool)

(declare-fun e!2419121 () Bool)

(assert (=> d!1160856 (=> (not res!1582587) (not e!2419121))))

(assert (=> d!1160856 (= res!1582587 (validRegex!5170 (regex!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041))))))))

(assert (=> d!1160856 (= (ruleValid!2402 thiss!20629 (rule!9370 (_1!23488 (v!39197 lt!1363041)))) e!2419121)))

(declare-fun b!3912858 () Bool)

(declare-fun res!1582588 () Bool)

(assert (=> b!3912858 (=> (not res!1582588) (not e!2419121))))

(assert (=> b!3912858 (= res!1582588 (not (nullable!3971 (regex!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041)))))))))

(declare-fun b!3912859 () Bool)

(assert (=> b!3912859 (= e!2419121 (not (= (tag!7314 (rule!9370 (_1!23488 (v!39197 lt!1363041)))) (String!47138 ""))))))

(assert (= (and d!1160856 res!1582587) b!3912858))

(assert (= (and b!3912858 res!1582588) b!3912859))

(assert (=> d!1160856 m!4476089))

(assert (=> b!3912858 m!4476093))

(assert (=> b!3912483 d!1160856))

(declare-fun d!1160860 () Bool)

(assert (=> d!1160860 (= (size!31127 (_1!23488 (v!39197 lt!1363041))) (size!31128 (originalCharacters!7054 (_1!23488 (v!39197 lt!1363041)))))))

(declare-fun Unit!59607 () Unit!59605)

(assert (=> d!1160860 (= (lemmaCharactersSize!1111 (_1!23488 (v!39197 lt!1363041))) Unit!59607)))

(declare-fun bs!585642 () Bool)

(assert (= bs!585642 d!1160860))

(assert (=> bs!585642 m!4475931))

(assert (=> b!3912483 d!1160860))

(declare-fun d!1160864 () Bool)

(declare-fun lt!1363162 () List!41584)

(assert (=> d!1160864 (= (++!10666 lt!1363030 lt!1363162) lt!1363038)))

(declare-fun e!2419133 () List!41584)

(assert (=> d!1160864 (= lt!1363162 e!2419133)))

(declare-fun c!680187 () Bool)

(assert (=> d!1160864 (= c!680187 ((_ is Cons!41460) lt!1363030))))

(assert (=> d!1160864 (>= (size!31128 lt!1363038) (size!31128 lt!1363030))))

(assert (=> d!1160864 (= (getSuffix!2004 lt!1363038 lt!1363030) lt!1363162)))

(declare-fun b!3912876 () Bool)

(assert (=> b!3912876 (= e!2419133 (getSuffix!2004 (tail!5979 lt!1363038) (t!323301 lt!1363030)))))

(declare-fun b!3912877 () Bool)

(assert (=> b!3912877 (= e!2419133 lt!1363038)))

(assert (= (and d!1160864 c!680187) b!3912876))

(assert (= (and d!1160864 (not c!680187)) b!3912877))

(declare-fun m!4476317 () Bool)

(assert (=> d!1160864 m!4476317))

(assert (=> d!1160864 m!4475941))

(assert (=> d!1160864 m!4475885))

(declare-fun m!4476319 () Bool)

(assert (=> b!3912876 m!4476319))

(assert (=> b!3912876 m!4476319))

(declare-fun m!4476321 () Bool)

(assert (=> b!3912876 m!4476321))

(assert (=> b!3912483 d!1160864))

(declare-fun d!1160868 () Bool)

(assert (=> d!1160868 (ruleValid!2402 thiss!20629 (rule!9370 (_1!23488 (v!39197 lt!1363041))))))

(declare-fun lt!1363168 () Unit!59605)

(declare-fun choose!23165 (LexerInterface!6043 Rule!12708 List!41586) Unit!59605)

(assert (=> d!1160868 (= lt!1363168 (choose!23165 thiss!20629 (rule!9370 (_1!23488 (v!39197 lt!1363041))) rules!2768))))

(assert (=> d!1160868 (contains!8332 rules!2768 (rule!9370 (_1!23488 (v!39197 lt!1363041))))))

(assert (=> d!1160868 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1482 thiss!20629 (rule!9370 (_1!23488 (v!39197 lt!1363041))) rules!2768) lt!1363168)))

(declare-fun bs!585643 () Bool)

(assert (= bs!585643 d!1160868))

(assert (=> bs!585643 m!4475907))

(declare-fun m!4476327 () Bool)

(assert (=> bs!585643 m!4476327))

(declare-fun m!4476329 () Bool)

(assert (=> bs!585643 m!4476329))

(assert (=> b!3912483 d!1160868))

(declare-fun d!1160870 () Bool)

(declare-fun lt!1363173 () BalanceConc!24924)

(assert (=> d!1160870 (= (list!15413 lt!1363173) (originalCharacters!7054 (_1!23488 (v!39197 lt!1363041))))))

(assert (=> d!1160870 (= lt!1363173 (dynLambda!17811 (toChars!8761 (transformation!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041))))) (value!204573 (_1!23488 (v!39197 lt!1363041)))))))

(assert (=> d!1160870 (= (charsOf!4278 (_1!23488 (v!39197 lt!1363041))) lt!1363173)))

(declare-fun b_lambda!114561 () Bool)

(assert (=> (not b_lambda!114561) (not d!1160870)))

(declare-fun t!323335 () Bool)

(declare-fun tb!233027 () Bool)

(assert (=> (and b!3912486 (= (toChars!8761 (transformation!6454 (h!46882 rules!2768))) (toChars!8761 (transformation!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041)))))) t!323335) tb!233027))

(declare-fun b!3912879 () Bool)

(declare-fun e!2419135 () Bool)

(declare-fun tp!1190942 () Bool)

(assert (=> b!3912879 (= e!2419135 (and (inv!55649 (c!680105 (dynLambda!17811 (toChars!8761 (transformation!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041))))) (value!204573 (_1!23488 (v!39197 lt!1363041)))))) tp!1190942))))

(declare-fun result!282416 () Bool)

(assert (=> tb!233027 (= result!282416 (and (inv!55650 (dynLambda!17811 (toChars!8761 (transformation!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041))))) (value!204573 (_1!23488 (v!39197 lt!1363041))))) e!2419135))))

(assert (= tb!233027 b!3912879))

(declare-fun m!4476339 () Bool)

(assert (=> b!3912879 m!4476339))

(declare-fun m!4476341 () Bool)

(assert (=> tb!233027 m!4476341))

(assert (=> d!1160870 t!323335))

(declare-fun b_and!297773 () Bool)

(assert (= b_and!297743 (and (=> t!323335 result!282416) b_and!297773)))

(declare-fun tb!233029 () Bool)

(declare-fun t!323337 () Bool)

(assert (=> (and b!3912481 (= (toChars!8761 (transformation!6454 (rule!9370 (h!46881 prefixTokens!80)))) (toChars!8761 (transformation!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041)))))) t!323337) tb!233029))

(declare-fun result!282418 () Bool)

(assert (= result!282418 result!282416))

(assert (=> d!1160870 t!323337))

(declare-fun b_and!297775 () Bool)

(assert (= b_and!297745 (and (=> t!323337 result!282418) b_and!297775)))

(declare-fun t!323339 () Bool)

(declare-fun tb!233031 () Bool)

(assert (=> (and b!3912494 (= (toChars!8761 (transformation!6454 (rule!9370 (h!46881 suffixTokens!72)))) (toChars!8761 (transformation!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041)))))) t!323339) tb!233031))

(declare-fun result!282420 () Bool)

(assert (= result!282420 result!282416))

(assert (=> d!1160870 t!323339))

(declare-fun b_and!297777 () Bool)

(assert (= b_and!297747 (and (=> t!323339 result!282420) b_and!297777)))

(declare-fun m!4476343 () Bool)

(assert (=> d!1160870 m!4476343))

(declare-fun m!4476345 () Bool)

(assert (=> d!1160870 m!4476345))

(assert (=> b!3912483 d!1160870))

(declare-fun d!1160876 () Bool)

(assert (=> d!1160876 (= (_2!23488 (v!39197 lt!1363041)) lt!1363034)))

(declare-fun lt!1363177 () Unit!59605)

(declare-fun choose!23168 (List!41584 List!41584 List!41584 List!41584 List!41584) Unit!59605)

(assert (=> d!1160876 (= lt!1363177 (choose!23168 lt!1363030 (_2!23488 (v!39197 lt!1363041)) lt!1363030 lt!1363034 lt!1363038))))

(assert (=> d!1160876 (isPrefix!3549 lt!1363030 lt!1363038)))

(assert (=> d!1160876 (= (lemmaSamePrefixThenSameSuffix!1770 lt!1363030 (_2!23488 (v!39197 lt!1363041)) lt!1363030 lt!1363034 lt!1363038) lt!1363177)))

(declare-fun bs!585646 () Bool)

(assert (= bs!585646 d!1160876))

(declare-fun m!4476349 () Bool)

(assert (=> bs!585646 m!4476349))

(declare-fun m!4476351 () Bool)

(assert (=> bs!585646 m!4476351))

(assert (=> b!3912483 d!1160876))

(declare-fun d!1160880 () Bool)

(declare-fun e!2419136 () Bool)

(assert (=> d!1160880 e!2419136))

(declare-fun res!1582602 () Bool)

(assert (=> d!1160880 (=> (not res!1582602) (not e!2419136))))

(declare-fun lt!1363180 () List!41584)

(assert (=> d!1160880 (= res!1582602 (= (content!6224 lt!1363180) ((_ map or) (content!6224 lt!1363030) (content!6224 (_2!23488 (v!39197 lt!1363041))))))))

(declare-fun e!2419137 () List!41584)

(assert (=> d!1160880 (= lt!1363180 e!2419137)))

(declare-fun c!680188 () Bool)

(assert (=> d!1160880 (= c!680188 ((_ is Nil!41460) lt!1363030))))

(assert (=> d!1160880 (= (++!10666 lt!1363030 (_2!23488 (v!39197 lt!1363041))) lt!1363180)))

(declare-fun b!3912881 () Bool)

(assert (=> b!3912881 (= e!2419137 (Cons!41460 (h!46880 lt!1363030) (++!10666 (t!323301 lt!1363030) (_2!23488 (v!39197 lt!1363041)))))))

(declare-fun b!3912880 () Bool)

(assert (=> b!3912880 (= e!2419137 (_2!23488 (v!39197 lt!1363041)))))

(declare-fun b!3912883 () Bool)

(assert (=> b!3912883 (= e!2419136 (or (not (= (_2!23488 (v!39197 lt!1363041)) Nil!41460)) (= lt!1363180 lt!1363030)))))

(declare-fun b!3912882 () Bool)

(declare-fun res!1582601 () Bool)

(assert (=> b!3912882 (=> (not res!1582601) (not e!2419136))))

(assert (=> b!3912882 (= res!1582601 (= (size!31128 lt!1363180) (+ (size!31128 lt!1363030) (size!31128 (_2!23488 (v!39197 lt!1363041))))))))

(assert (= (and d!1160880 c!680188) b!3912880))

(assert (= (and d!1160880 (not c!680188)) b!3912881))

(assert (= (and d!1160880 res!1582602) b!3912882))

(assert (= (and b!3912882 res!1582601) b!3912883))

(declare-fun m!4476353 () Bool)

(assert (=> d!1160880 m!4476353))

(declare-fun m!4476357 () Bool)

(assert (=> d!1160880 m!4476357))

(declare-fun m!4476359 () Bool)

(assert (=> d!1160880 m!4476359))

(declare-fun m!4476363 () Bool)

(assert (=> b!3912881 m!4476363))

(declare-fun m!4476365 () Bool)

(assert (=> b!3912882 m!4476365))

(assert (=> b!3912882 m!4475885))

(assert (=> b!3912882 m!4475923))

(assert (=> b!3912483 d!1160880))

(declare-fun d!1160884 () Bool)

(declare-fun res!1582609 () Bool)

(declare-fun e!2419142 () Bool)

(assert (=> d!1160884 (=> (not res!1582609) (not e!2419142))))

(declare-fun rulesValid!2505 (LexerInterface!6043 List!41586) Bool)

(assert (=> d!1160884 (= res!1582609 (rulesValid!2505 thiss!20629 rules!2768))))

(assert (=> d!1160884 (= (rulesInvariant!5386 thiss!20629 rules!2768) e!2419142)))

(declare-fun b!3912890 () Bool)

(declare-datatypes ((List!41588 0))(
  ( (Nil!41464) (Cons!41464 (h!46884 String!47137) (t!323401 List!41588)) )
))
(declare-fun noDuplicateTag!2506 (LexerInterface!6043 List!41586 List!41588) Bool)

(assert (=> b!3912890 (= e!2419142 (noDuplicateTag!2506 thiss!20629 rules!2768 Nil!41464))))

(assert (= (and d!1160884 res!1582609) b!3912890))

(declare-fun m!4476367 () Bool)

(assert (=> d!1160884 m!4476367))

(declare-fun m!4476369 () Bool)

(assert (=> b!3912890 m!4476369))

(assert (=> b!3912493 d!1160884))

(declare-fun d!1160888 () Bool)

(declare-fun lt!1363182 () Int)

(assert (=> d!1160888 (>= lt!1363182 0)))

(declare-fun e!2419143 () Int)

(assert (=> d!1160888 (= lt!1363182 e!2419143)))

(declare-fun c!680189 () Bool)

(assert (=> d!1160888 (= c!680189 ((_ is Nil!41460) lt!1363038))))

(assert (=> d!1160888 (= (size!31128 lt!1363038) lt!1363182)))

(declare-fun b!3912891 () Bool)

(assert (=> b!3912891 (= e!2419143 0)))

(declare-fun b!3912892 () Bool)

(assert (=> b!3912892 (= e!2419143 (+ 1 (size!31128 (t!323301 lt!1363038))))))

(assert (= (and d!1160888 c!680189) b!3912891))

(assert (= (and d!1160888 (not c!680189)) b!3912892))

(declare-fun m!4476371 () Bool)

(assert (=> b!3912892 m!4476371))

(assert (=> b!3912471 d!1160888))

(declare-fun d!1160890 () Bool)

(declare-fun res!1582610 () Bool)

(declare-fun e!2419144 () Bool)

(assert (=> d!1160890 (=> (not res!1582610) (not e!2419144))))

(assert (=> d!1160890 (= res!1582610 (not (isEmpty!24666 (originalCharacters!7054 (h!46881 prefixTokens!80)))))))

(assert (=> d!1160890 (= (inv!55647 (h!46881 prefixTokens!80)) e!2419144)))

(declare-fun b!3912893 () Bool)

(declare-fun res!1582611 () Bool)

(assert (=> b!3912893 (=> (not res!1582611) (not e!2419144))))

(assert (=> b!3912893 (= res!1582611 (= (originalCharacters!7054 (h!46881 prefixTokens!80)) (list!15413 (dynLambda!17811 (toChars!8761 (transformation!6454 (rule!9370 (h!46881 prefixTokens!80)))) (value!204573 (h!46881 prefixTokens!80))))))))

(declare-fun b!3912894 () Bool)

(assert (=> b!3912894 (= e!2419144 (= (size!31127 (h!46881 prefixTokens!80)) (size!31128 (originalCharacters!7054 (h!46881 prefixTokens!80)))))))

(assert (= (and d!1160890 res!1582610) b!3912893))

(assert (= (and b!3912893 res!1582611) b!3912894))

(declare-fun b_lambda!114563 () Bool)

(assert (=> (not b_lambda!114563) (not b!3912893)))

(declare-fun tb!233033 () Bool)

(declare-fun t!323341 () Bool)

(assert (=> (and b!3912486 (= (toChars!8761 (transformation!6454 (h!46882 rules!2768))) (toChars!8761 (transformation!6454 (rule!9370 (h!46881 prefixTokens!80))))) t!323341) tb!233033))

(declare-fun b!3912897 () Bool)

(declare-fun e!2419146 () Bool)

(declare-fun tp!1190943 () Bool)

(assert (=> b!3912897 (= e!2419146 (and (inv!55649 (c!680105 (dynLambda!17811 (toChars!8761 (transformation!6454 (rule!9370 (h!46881 prefixTokens!80)))) (value!204573 (h!46881 prefixTokens!80))))) tp!1190943))))

(declare-fun result!282422 () Bool)

(assert (=> tb!233033 (= result!282422 (and (inv!55650 (dynLambda!17811 (toChars!8761 (transformation!6454 (rule!9370 (h!46881 prefixTokens!80)))) (value!204573 (h!46881 prefixTokens!80)))) e!2419146))))

(assert (= tb!233033 b!3912897))

(declare-fun m!4476373 () Bool)

(assert (=> b!3912897 m!4476373))

(declare-fun m!4476375 () Bool)

(assert (=> tb!233033 m!4476375))

(assert (=> b!3912893 t!323341))

(declare-fun b_and!297779 () Bool)

(assert (= b_and!297773 (and (=> t!323341 result!282422) b_and!297779)))

(declare-fun t!323343 () Bool)

(declare-fun tb!233035 () Bool)

(assert (=> (and b!3912481 (= (toChars!8761 (transformation!6454 (rule!9370 (h!46881 prefixTokens!80)))) (toChars!8761 (transformation!6454 (rule!9370 (h!46881 prefixTokens!80))))) t!323343) tb!233035))

(declare-fun result!282424 () Bool)

(assert (= result!282424 result!282422))

(assert (=> b!3912893 t!323343))

(declare-fun b_and!297781 () Bool)

(assert (= b_and!297775 (and (=> t!323343 result!282424) b_and!297781)))

(declare-fun t!323345 () Bool)

(declare-fun tb!233037 () Bool)

(assert (=> (and b!3912494 (= (toChars!8761 (transformation!6454 (rule!9370 (h!46881 suffixTokens!72)))) (toChars!8761 (transformation!6454 (rule!9370 (h!46881 prefixTokens!80))))) t!323345) tb!233037))

(declare-fun result!282426 () Bool)

(assert (= result!282426 result!282422))

(assert (=> b!3912893 t!323345))

(declare-fun b_and!297783 () Bool)

(assert (= b_and!297777 (and (=> t!323345 result!282426) b_and!297783)))

(declare-fun m!4476377 () Bool)

(assert (=> d!1160890 m!4476377))

(declare-fun m!4476379 () Bool)

(assert (=> b!3912893 m!4476379))

(assert (=> b!3912893 m!4476379))

(declare-fun m!4476381 () Bool)

(assert (=> b!3912893 m!4476381))

(declare-fun m!4476383 () Bool)

(assert (=> b!3912894 m!4476383))

(assert (=> b!3912470 d!1160890))

(declare-fun b!3912906 () Bool)

(declare-fun e!2419151 () Bool)

(declare-fun tp!1190946 () Bool)

(assert (=> b!3912906 (= e!2419151 (and tp_is_empty!19689 tp!1190946))))

(assert (=> b!3912469 (= tp!1190925 e!2419151)))

(assert (= (and b!3912469 ((_ is Cons!41460) (originalCharacters!7054 (h!46881 suffixTokens!72)))) b!3912906))

(declare-fun b!3912907 () Bool)

(declare-fun e!2419152 () Bool)

(declare-fun tp!1190947 () Bool)

(assert (=> b!3912907 (= e!2419152 (and tp_is_empty!19689 tp!1190947))))

(assert (=> b!3912478 (= tp!1190926 e!2419152)))

(assert (= (and b!3912478 ((_ is Cons!41460) (t!323301 suffix!1176))) b!3912907))

(declare-fun b!3912908 () Bool)

(declare-fun e!2419153 () Bool)

(declare-fun tp!1190948 () Bool)

(assert (=> b!3912908 (= e!2419153 (and tp_is_empty!19689 tp!1190948))))

(assert (=> b!3912489 (= tp!1190931 e!2419153)))

(assert (= (and b!3912489 ((_ is Cons!41460) (originalCharacters!7054 (h!46881 prefixTokens!80)))) b!3912908))

(declare-fun b!3912938 () Bool)

(declare-fun b_free!106145 () Bool)

(declare-fun b_next!106849 () Bool)

(assert (=> b!3912938 (= b_free!106145 (not b_next!106849))))

(declare-fun t!323347 () Bool)

(declare-fun tb!233039 () Bool)

(assert (=> (and b!3912938 (= (toValue!8902 (transformation!6454 (rule!9370 (h!46881 (t!323302 suffixTokens!72))))) (toValue!8902 (transformation!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041)))))) t!323347) tb!233039))

(declare-fun result!282432 () Bool)

(assert (= result!282432 result!282394))

(assert (=> d!1160844 t!323347))

(declare-fun tp!1190959 () Bool)

(declare-fun b_and!297785 () Bool)

(assert (=> b!3912938 (= tp!1190959 (and (=> t!323347 result!282432) b_and!297785))))

(declare-fun b_free!106147 () Bool)

(declare-fun b_next!106851 () Bool)

(assert (=> b!3912938 (= b_free!106147 (not b_next!106851))))

(declare-fun t!323349 () Bool)

(declare-fun tb!233041 () Bool)

(assert (=> (and b!3912938 (= (toChars!8761 (transformation!6454 (rule!9370 (h!46881 (t!323302 suffixTokens!72))))) (toChars!8761 (transformation!6454 (rule!9370 (h!46881 suffixTokens!72))))) t!323349) tb!233041))

(declare-fun result!282434 () Bool)

(assert (= result!282434 result!282378))

(assert (=> b!3912546 t!323349))

(declare-fun tb!233043 () Bool)

(declare-fun t!323351 () Bool)

(assert (=> (and b!3912938 (= (toChars!8761 (transformation!6454 (rule!9370 (h!46881 (t!323302 suffixTokens!72))))) (toChars!8761 (transformation!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041)))))) t!323351) tb!233043))

(declare-fun result!282436 () Bool)

(assert (= result!282436 result!282416))

(assert (=> d!1160870 t!323351))

(declare-fun tb!233045 () Bool)

(declare-fun t!323353 () Bool)

(assert (=> (and b!3912938 (= (toChars!8761 (transformation!6454 (rule!9370 (h!46881 (t!323302 suffixTokens!72))))) (toChars!8761 (transformation!6454 (rule!9370 (h!46881 prefixTokens!80))))) t!323353) tb!233045))

(declare-fun result!282438 () Bool)

(assert (= result!282438 result!282422))

(assert (=> b!3912893 t!323353))

(declare-fun b_and!297787 () Bool)

(declare-fun tp!1190962 () Bool)

(assert (=> b!3912938 (= tp!1190962 (and (=> t!323349 result!282434) (=> t!323351 result!282436) (=> t!323353 result!282438) b_and!297787))))

(declare-fun e!2419180 () Bool)

(declare-fun b!3912936 () Bool)

(declare-fun tp!1190960 () Bool)

(declare-fun e!2419178 () Bool)

(assert (=> b!3912936 (= e!2419178 (and (inv!21 (value!204573 (h!46881 (t!323302 suffixTokens!72)))) e!2419180 tp!1190960))))

(declare-fun e!2419175 () Bool)

(assert (=> b!3912938 (= e!2419175 (and tp!1190959 tp!1190962))))

(declare-fun tp!1190963 () Bool)

(declare-fun b!3912937 () Bool)

(assert (=> b!3912937 (= e!2419180 (and tp!1190963 (inv!55644 (tag!7314 (rule!9370 (h!46881 (t!323302 suffixTokens!72))))) (inv!55648 (transformation!6454 (rule!9370 (h!46881 (t!323302 suffixTokens!72))))) e!2419175))))

(declare-fun e!2419179 () Bool)

(assert (=> b!3912488 (= tp!1190932 e!2419179)))

(declare-fun b!3912935 () Bool)

(declare-fun tp!1190961 () Bool)

(assert (=> b!3912935 (= e!2419179 (and (inv!55647 (h!46881 (t!323302 suffixTokens!72))) e!2419178 tp!1190961))))

(assert (= b!3912937 b!3912938))

(assert (= b!3912936 b!3912937))

(assert (= b!3912935 b!3912936))

(assert (= (and b!3912488 ((_ is Cons!41461) (t!323302 suffixTokens!72))) b!3912935))

(declare-fun m!4476405 () Bool)

(assert (=> b!3912936 m!4476405))

(declare-fun m!4476407 () Bool)

(assert (=> b!3912937 m!4476407))

(declare-fun m!4476409 () Bool)

(assert (=> b!3912937 m!4476409))

(declare-fun m!4476411 () Bool)

(assert (=> b!3912935 m!4476411))

(declare-fun b!3912950 () Bool)

(declare-fun e!2419183 () Bool)

(declare-fun tp!1190977 () Bool)

(declare-fun tp!1190975 () Bool)

(assert (=> b!3912950 (= e!2419183 (and tp!1190977 tp!1190975))))

(declare-fun b!3912952 () Bool)

(declare-fun tp!1190978 () Bool)

(declare-fun tp!1190974 () Bool)

(assert (=> b!3912952 (= e!2419183 (and tp!1190978 tp!1190974))))

(declare-fun b!3912951 () Bool)

(declare-fun tp!1190976 () Bool)

(assert (=> b!3912951 (= e!2419183 tp!1190976)))

(declare-fun b!3912949 () Bool)

(assert (=> b!3912949 (= e!2419183 tp_is_empty!19689)))

(assert (=> b!3912497 (= tp!1190920 e!2419183)))

(assert (= (and b!3912497 ((_ is ElementMatch!11359) (regex!6454 (rule!9370 (h!46881 prefixTokens!80))))) b!3912949))

(assert (= (and b!3912497 ((_ is Concat!18044) (regex!6454 (rule!9370 (h!46881 prefixTokens!80))))) b!3912950))

(assert (= (and b!3912497 ((_ is Star!11359) (regex!6454 (rule!9370 (h!46881 prefixTokens!80))))) b!3912951))

(assert (= (and b!3912497 ((_ is Union!11359) (regex!6454 (rule!9370 (h!46881 prefixTokens!80))))) b!3912952))

(declare-fun b!3912958 () Bool)

(declare-fun e!2419186 () Bool)

(declare-fun tp!1190982 () Bool)

(declare-fun tp!1190980 () Bool)

(assert (=> b!3912958 (= e!2419186 (and tp!1190982 tp!1190980))))

(declare-fun b!3912960 () Bool)

(declare-fun tp!1190983 () Bool)

(declare-fun tp!1190979 () Bool)

(assert (=> b!3912960 (= e!2419186 (and tp!1190983 tp!1190979))))

(declare-fun b!3912959 () Bool)

(declare-fun tp!1190981 () Bool)

(assert (=> b!3912959 (= e!2419186 tp!1190981)))

(declare-fun b!3912957 () Bool)

(assert (=> b!3912957 (= e!2419186 tp_is_empty!19689)))

(assert (=> b!3912475 (= tp!1190918 e!2419186)))

(assert (= (and b!3912475 ((_ is ElementMatch!11359) (regex!6454 (rule!9370 (h!46881 suffixTokens!72))))) b!3912957))

(assert (= (and b!3912475 ((_ is Concat!18044) (regex!6454 (rule!9370 (h!46881 suffixTokens!72))))) b!3912958))

(assert (= (and b!3912475 ((_ is Star!11359) (regex!6454 (rule!9370 (h!46881 suffixTokens!72))))) b!3912959))

(assert (= (and b!3912475 ((_ is Union!11359) (regex!6454 (rule!9370 (h!46881 suffixTokens!72))))) b!3912960))

(declare-fun b!3912975 () Bool)

(declare-fun b_free!106149 () Bool)

(declare-fun b_next!106853 () Bool)

(assert (=> b!3912975 (= b_free!106149 (not b_next!106853))))

(declare-fun tb!233047 () Bool)

(declare-fun t!323355 () Bool)

(assert (=> (and b!3912975 (= (toValue!8902 (transformation!6454 (h!46882 (t!323303 rules!2768)))) (toValue!8902 (transformation!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041)))))) t!323355) tb!233047))

(declare-fun result!282444 () Bool)

(assert (= result!282444 result!282394))

(assert (=> d!1160844 t!323355))

(declare-fun b_and!297789 () Bool)

(declare-fun tp!1190993 () Bool)

(assert (=> b!3912975 (= tp!1190993 (and (=> t!323355 result!282444) b_and!297789))))

(declare-fun b_free!106151 () Bool)

(declare-fun b_next!106855 () Bool)

(assert (=> b!3912975 (= b_free!106151 (not b_next!106855))))

(declare-fun tb!233049 () Bool)

(declare-fun t!323357 () Bool)

(assert (=> (and b!3912975 (= (toChars!8761 (transformation!6454 (h!46882 (t!323303 rules!2768)))) (toChars!8761 (transformation!6454 (rule!9370 (h!46881 suffixTokens!72))))) t!323357) tb!233049))

(declare-fun result!282446 () Bool)

(assert (= result!282446 result!282378))

(assert (=> b!3912546 t!323357))

(declare-fun tb!233051 () Bool)

(declare-fun t!323359 () Bool)

(assert (=> (and b!3912975 (= (toChars!8761 (transformation!6454 (h!46882 (t!323303 rules!2768)))) (toChars!8761 (transformation!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041)))))) t!323359) tb!233051))

(declare-fun result!282448 () Bool)

(assert (= result!282448 result!282416))

(assert (=> d!1160870 t!323359))

(declare-fun t!323361 () Bool)

(declare-fun tb!233053 () Bool)

(assert (=> (and b!3912975 (= (toChars!8761 (transformation!6454 (h!46882 (t!323303 rules!2768)))) (toChars!8761 (transformation!6454 (rule!9370 (h!46881 prefixTokens!80))))) t!323361) tb!233053))

(declare-fun result!282450 () Bool)

(assert (= result!282450 result!282422))

(assert (=> b!3912893 t!323361))

(declare-fun b_and!297791 () Bool)

(declare-fun tp!1190994 () Bool)

(assert (=> b!3912975 (= tp!1190994 (and (=> t!323357 result!282446) (=> t!323359 result!282448) (=> t!323361 result!282450) b_and!297791))))

(declare-fun e!2419199 () Bool)

(assert (=> b!3912975 (= e!2419199 (and tp!1190993 tp!1190994))))

(declare-fun e!2419197 () Bool)

(declare-fun tp!1190992 () Bool)

(declare-fun b!3912974 () Bool)

(assert (=> b!3912974 (= e!2419197 (and tp!1190992 (inv!55644 (tag!7314 (h!46882 (t!323303 rules!2768)))) (inv!55648 (transformation!6454 (h!46882 (t!323303 rules!2768)))) e!2419199))))

(declare-fun b!3912973 () Bool)

(declare-fun e!2419200 () Bool)

(declare-fun tp!1190995 () Bool)

(assert (=> b!3912973 (= e!2419200 (and e!2419197 tp!1190995))))

(assert (=> b!3912474 (= tp!1190933 e!2419200)))

(assert (= b!3912974 b!3912975))

(assert (= b!3912973 b!3912974))

(assert (= (and b!3912474 ((_ is Cons!41462) (t!323303 rules!2768))) b!3912973))

(declare-fun m!4476427 () Bool)

(assert (=> b!3912974 m!4476427))

(declare-fun m!4476429 () Bool)

(assert (=> b!3912974 m!4476429))

(declare-fun b!3912985 () Bool)

(declare-fun e!2419205 () Bool)

(declare-fun tp!1190999 () Bool)

(declare-fun tp!1190997 () Bool)

(assert (=> b!3912985 (= e!2419205 (and tp!1190999 tp!1190997))))

(declare-fun b!3912987 () Bool)

(declare-fun tp!1191000 () Bool)

(declare-fun tp!1190996 () Bool)

(assert (=> b!3912987 (= e!2419205 (and tp!1191000 tp!1190996))))

(declare-fun b!3912986 () Bool)

(declare-fun tp!1190998 () Bool)

(assert (=> b!3912986 (= e!2419205 tp!1190998)))

(declare-fun b!3912984 () Bool)

(assert (=> b!3912984 (= e!2419205 tp_is_empty!19689)))

(assert (=> b!3912484 (= tp!1190922 e!2419205)))

(assert (= (and b!3912484 ((_ is ElementMatch!11359) (regex!6454 (h!46882 rules!2768)))) b!3912984))

(assert (= (and b!3912484 ((_ is Concat!18044) (regex!6454 (h!46882 rules!2768)))) b!3912985))

(assert (= (and b!3912484 ((_ is Star!11359) (regex!6454 (h!46882 rules!2768)))) b!3912986))

(assert (= (and b!3912484 ((_ is Union!11359) (regex!6454 (h!46882 rules!2768)))) b!3912987))

(declare-fun b!3912988 () Bool)

(declare-fun e!2419206 () Bool)

(declare-fun tp!1191001 () Bool)

(assert (=> b!3912988 (= e!2419206 (and tp_is_empty!19689 tp!1191001))))

(assert (=> b!3912482 (= tp!1190929 e!2419206)))

(assert (= (and b!3912482 ((_ is Cons!41460) (t!323301 suffixResult!91))) b!3912988))

(declare-fun b!3912989 () Bool)

(declare-fun e!2419207 () Bool)

(declare-fun tp!1191002 () Bool)

(assert (=> b!3912989 (= e!2419207 (and tp_is_empty!19689 tp!1191002))))

(assert (=> b!3912492 (= tp!1190924 e!2419207)))

(assert (= (and b!3912492 ((_ is Cons!41460) (t!323301 prefix!426))) b!3912989))

(declare-fun b!3912993 () Bool)

(declare-fun b_free!106153 () Bool)

(declare-fun b_next!106857 () Bool)

(assert (=> b!3912993 (= b_free!106153 (not b_next!106857))))

(declare-fun tb!233055 () Bool)

(declare-fun t!323363 () Bool)

(assert (=> (and b!3912993 (= (toValue!8902 (transformation!6454 (rule!9370 (h!46881 (t!323302 prefixTokens!80))))) (toValue!8902 (transformation!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041)))))) t!323363) tb!233055))

(declare-fun result!282452 () Bool)

(assert (= result!282452 result!282394))

(assert (=> d!1160844 t!323363))

(declare-fun b_and!297793 () Bool)

(declare-fun tp!1191003 () Bool)

(assert (=> b!3912993 (= tp!1191003 (and (=> t!323363 result!282452) b_and!297793))))

(declare-fun b_free!106155 () Bool)

(declare-fun b_next!106859 () Bool)

(assert (=> b!3912993 (= b_free!106155 (not b_next!106859))))

(declare-fun t!323365 () Bool)

(declare-fun tb!233057 () Bool)

(assert (=> (and b!3912993 (= (toChars!8761 (transformation!6454 (rule!9370 (h!46881 (t!323302 prefixTokens!80))))) (toChars!8761 (transformation!6454 (rule!9370 (h!46881 suffixTokens!72))))) t!323365) tb!233057))

(declare-fun result!282454 () Bool)

(assert (= result!282454 result!282378))

(assert (=> b!3912546 t!323365))

(declare-fun tb!233059 () Bool)

(declare-fun t!323367 () Bool)

(assert (=> (and b!3912993 (= (toChars!8761 (transformation!6454 (rule!9370 (h!46881 (t!323302 prefixTokens!80))))) (toChars!8761 (transformation!6454 (rule!9370 (_1!23488 (v!39197 lt!1363041)))))) t!323367) tb!233059))

(declare-fun result!282456 () Bool)

(assert (= result!282456 result!282416))

(assert (=> d!1160870 t!323367))

(declare-fun t!323369 () Bool)

(declare-fun tb!233061 () Bool)

(assert (=> (and b!3912993 (= (toChars!8761 (transformation!6454 (rule!9370 (h!46881 (t!323302 prefixTokens!80))))) (toChars!8761 (transformation!6454 (rule!9370 (h!46881 prefixTokens!80))))) t!323369) tb!233061))

(declare-fun result!282458 () Bool)

(assert (= result!282458 result!282422))

(assert (=> b!3912893 t!323369))

(declare-fun b_and!297795 () Bool)

(declare-fun tp!1191006 () Bool)

(assert (=> b!3912993 (= tp!1191006 (and (=> t!323365 result!282454) (=> t!323367 result!282456) (=> t!323369 result!282458) b_and!297795))))

(declare-fun e!2419211 () Bool)

(declare-fun b!3912991 () Bool)

(declare-fun tp!1191004 () Bool)

(declare-fun e!2419213 () Bool)

(assert (=> b!3912991 (= e!2419211 (and (inv!21 (value!204573 (h!46881 (t!323302 prefixTokens!80)))) e!2419213 tp!1191004))))

(declare-fun e!2419208 () Bool)

(assert (=> b!3912993 (= e!2419208 (and tp!1191003 tp!1191006))))

(declare-fun b!3912992 () Bool)

(declare-fun tp!1191007 () Bool)

(assert (=> b!3912992 (= e!2419213 (and tp!1191007 (inv!55644 (tag!7314 (rule!9370 (h!46881 (t!323302 prefixTokens!80))))) (inv!55648 (transformation!6454 (rule!9370 (h!46881 (t!323302 prefixTokens!80))))) e!2419208))))

(declare-fun e!2419212 () Bool)

(assert (=> b!3912470 (= tp!1190934 e!2419212)))

(declare-fun tp!1191005 () Bool)

(declare-fun b!3912990 () Bool)

(assert (=> b!3912990 (= e!2419212 (and (inv!55647 (h!46881 (t!323302 prefixTokens!80))) e!2419211 tp!1191005))))

(assert (= b!3912992 b!3912993))

(assert (= b!3912991 b!3912992))

(assert (= b!3912990 b!3912991))

(assert (= (and b!3912470 ((_ is Cons!41461) (t!323302 prefixTokens!80))) b!3912990))

(declare-fun m!4476441 () Bool)

(assert (=> b!3912991 m!4476441))

(declare-fun m!4476443 () Bool)

(assert (=> b!3912992 m!4476443))

(declare-fun m!4476445 () Bool)

(assert (=> b!3912992 m!4476445))

(declare-fun m!4476447 () Bool)

(assert (=> b!3912990 m!4476447))

(declare-fun b_lambda!114565 () Bool)

(assert (= b_lambda!114551 (or (and b!3912486 b_free!106135 (= (toChars!8761 (transformation!6454 (h!46882 rules!2768))) (toChars!8761 (transformation!6454 (rule!9370 (h!46881 suffixTokens!72)))))) (and b!3912993 b_free!106155 (= (toChars!8761 (transformation!6454 (rule!9370 (h!46881 (t!323302 prefixTokens!80))))) (toChars!8761 (transformation!6454 (rule!9370 (h!46881 suffixTokens!72)))))) (and b!3912975 b_free!106151 (= (toChars!8761 (transformation!6454 (h!46882 (t!323303 rules!2768)))) (toChars!8761 (transformation!6454 (rule!9370 (h!46881 suffixTokens!72)))))) (and b!3912938 b_free!106147 (= (toChars!8761 (transformation!6454 (rule!9370 (h!46881 (t!323302 suffixTokens!72))))) (toChars!8761 (transformation!6454 (rule!9370 (h!46881 suffixTokens!72)))))) (and b!3912494 b_free!106143) (and b!3912481 b_free!106139 (= (toChars!8761 (transformation!6454 (rule!9370 (h!46881 prefixTokens!80)))) (toChars!8761 (transformation!6454 (rule!9370 (h!46881 suffixTokens!72)))))) b_lambda!114565)))

(declare-fun b_lambda!114567 () Bool)

(assert (= b_lambda!114563 (or (and b!3912975 b_free!106151 (= (toChars!8761 (transformation!6454 (h!46882 (t!323303 rules!2768)))) (toChars!8761 (transformation!6454 (rule!9370 (h!46881 prefixTokens!80)))))) (and b!3912494 b_free!106143 (= (toChars!8761 (transformation!6454 (rule!9370 (h!46881 suffixTokens!72)))) (toChars!8761 (transformation!6454 (rule!9370 (h!46881 prefixTokens!80)))))) (and b!3912486 b_free!106135 (= (toChars!8761 (transformation!6454 (h!46882 rules!2768))) (toChars!8761 (transformation!6454 (rule!9370 (h!46881 prefixTokens!80)))))) (and b!3912993 b_free!106155 (= (toChars!8761 (transformation!6454 (rule!9370 (h!46881 (t!323302 prefixTokens!80))))) (toChars!8761 (transformation!6454 (rule!9370 (h!46881 prefixTokens!80)))))) (and b!3912938 b_free!106147 (= (toChars!8761 (transformation!6454 (rule!9370 (h!46881 (t!323302 suffixTokens!72))))) (toChars!8761 (transformation!6454 (rule!9370 (h!46881 prefixTokens!80)))))) (and b!3912481 b_free!106139) b_lambda!114567)))

(check-sat (not b!3912774) (not b!3912752) b_and!297793 (not d!1160880) b_and!297795 (not b!3912837) (not d!1160864) (not b_next!106843) (not b!3912990) (not b!3912960) (not b!3912974) (not d!1160786) (not tb!233027) (not d!1160852) (not d!1160836) (not b!3912618) (not b!3912517) (not d!1160800) (not b!3912697) (not d!1160854) (not b!3912876) (not d!1160876) (not b!3912696) (not b!3912772) (not b!3912805) (not d!1160812) (not b!3912892) (not b!3912559) (not tb!233033) (not b_next!106847) (not b_next!106849) b_and!297757 (not b!3912770) (not b!3912951) b_and!297787 (not b!3912532) (not b!3912691) (not b!3912689) (not b!3912755) (not tb!232997) (not b_lambda!114555) (not b!3912844) (not b!3912614) (not b!3912617) (not b!3912907) (not b!3912518) (not b!3912991) (not b!3912554) (not b!3912552) (not b!3912897) (not b!3912958) (not bm!284392) (not b_lambda!114561) (not b!3912814) (not b!3912858) (not b!3912987) (not b!3912836) (not bm!284386) b_and!297779 (not b_next!106851) (not b!3912756) (not b!3912959) (not b!3912879) b_and!297783 (not d!1160870) (not b_lambda!114565) (not d!1160758) (not b_next!106837) (not b!3912615) (not d!1160820) (not b!3912613) (not b!3912519) (not b!3912751) (not b!3912985) (not b_next!106857) (not b!3912547) (not b!3912989) tp_is_empty!19689 (not b!3912546) (not b!3912992) (not b!3912699) (not b!3912531) (not b!3912908) (not b_next!106841) (not b!3912881) (not d!1160884) (not b!3912843) (not d!1160856) (not d!1160890) b_and!297789 (not d!1160824) (not b!3912893) (not b!3912570) (not b!3912609) (not d!1160860) b_and!297785 b_and!297759 (not b!3912838) (not b!3912935) (not b_next!106859) (not b_next!106839) (not b!3912906) (not b!3912754) b_and!297791 b_and!297755 (not b!3912950) (not b!3912748) (not b!3912504) (not b!3912753) (not b!3912973) (not b_next!106845) b_and!297781 (not d!1160766) (not b!3912771) (not b!3912845) (not b!3912572) (not b!3912882) (not b!3912569) (not b!3912539) (not d!1160780) (not b!3912556) (not tb!233009) (not b_next!106855) (not b!3912937) (not b!3912952) (not b!3912988) (not d!1160808) (not d!1160782) (not b!3912540) (not d!1160822) (not b!3912986) (not d!1160848) (not b!3912536) (not b!3912695) (not b_next!106853) (not d!1160804) (not b!3912612) (not b!3912749) (not b!3912538) (not d!1160788) (not b!3912936) (not b!3912894) (not b!3912533) (not b!3912806) (not b_lambda!114567) (not b!3912775) (not b!3912616) (not d!1160868) (not b!3912890) (not b!3912611))
(check-sat b_and!297787 b_and!297779 (not b_next!106851) (not b_next!106857) (not b_next!106855) (not b_next!106853) b_and!297793 b_and!297795 (not b_next!106843) (not b_next!106847) (not b_next!106849) b_and!297757 b_and!297783 (not b_next!106837) b_and!297789 (not b_next!106841) b_and!297785 b_and!297759 (not b_next!106859) (not b_next!106839) b_and!297791 b_and!297755 (not b_next!106845) b_and!297781)
