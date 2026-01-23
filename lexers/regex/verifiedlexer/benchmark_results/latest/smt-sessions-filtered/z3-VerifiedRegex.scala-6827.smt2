; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!359196 () Bool)

(assert start!359196)

(declare-fun b!3836920 () Bool)

(declare-fun b_free!101997 () Bool)

(declare-fun b_next!102701 () Bool)

(assert (=> b!3836920 (= b_free!101997 (not b_next!102701))))

(declare-fun tp!1161469 () Bool)

(declare-fun b_and!285451 () Bool)

(assert (=> b!3836920 (= tp!1161469 b_and!285451)))

(declare-fun b_free!101999 () Bool)

(declare-fun b_next!102703 () Bool)

(assert (=> b!3836920 (= b_free!101999 (not b_next!102703))))

(declare-fun tp!1161472 () Bool)

(declare-fun b_and!285453 () Bool)

(assert (=> b!3836920 (= tp!1161472 b_and!285453)))

(declare-fun b!3836926 () Bool)

(declare-fun b_free!102001 () Bool)

(declare-fun b_next!102705 () Bool)

(assert (=> b!3836926 (= b_free!102001 (not b_next!102705))))

(declare-fun tp!1161479 () Bool)

(declare-fun b_and!285455 () Bool)

(assert (=> b!3836926 (= tp!1161479 b_and!285455)))

(declare-fun b_free!102003 () Bool)

(declare-fun b_next!102707 () Bool)

(assert (=> b!3836926 (= b_free!102003 (not b_next!102707))))

(declare-fun tp!1161470 () Bool)

(declare-fun b_and!285457 () Bool)

(assert (=> b!3836926 (= tp!1161470 b_and!285457)))

(declare-fun b!3836941 () Bool)

(declare-fun b_free!102005 () Bool)

(declare-fun b_next!102709 () Bool)

(assert (=> b!3836941 (= b_free!102005 (not b_next!102709))))

(declare-fun tp!1161477 () Bool)

(declare-fun b_and!285459 () Bool)

(assert (=> b!3836941 (= tp!1161477 b_and!285459)))

(declare-fun b_free!102007 () Bool)

(declare-fun b_next!102711 () Bool)

(assert (=> b!3836941 (= b_free!102007 (not b_next!102711))))

(declare-fun tp!1161482 () Bool)

(declare-fun b_and!285461 () Bool)

(assert (=> b!3836941 (= tp!1161482 b_and!285461)))

(declare-fun b!3836919 () Bool)

(declare-fun e!2369644 () Bool)

(declare-fun e!2369655 () Bool)

(declare-fun tp!1161480 () Bool)

(assert (=> b!3836919 (= e!2369644 (and e!2369655 tp!1161480))))

(declare-fun e!2369647 () Bool)

(assert (=> b!3836920 (= e!2369647 (and tp!1161469 tp!1161472))))

(declare-fun b!3836921 () Bool)

(declare-fun e!2369657 () Bool)

(assert (=> b!3836921 (= e!2369657 true)))

(declare-datatypes ((C!22480 0))(
  ( (C!22481 (val!13334 Int)) )
))
(declare-datatypes ((List!40644 0))(
  ( (Nil!40520) (Cons!40520 (h!45940 C!22480) (t!309885 List!40644)) )
))
(declare-fun lt!1331490 () List!40644)

(declare-fun lt!1331492 () List!40644)

(declare-fun lt!1331486 () List!40644)

(declare-fun ++!10241 (List!40644 List!40644) List!40644)

(assert (=> b!3836921 (= lt!1331490 (++!10241 lt!1331492 lt!1331486))))

(declare-fun b!3836922 () Bool)

(declare-fun e!2369662 () Bool)

(declare-fun e!2369656 () Bool)

(assert (=> b!3836922 (= e!2369662 e!2369656)))

(declare-fun res!1552950 () Bool)

(assert (=> b!3836922 (=> (not res!1552950) (not e!2369656))))

(declare-fun suffixResult!91 () List!40644)

(declare-datatypes ((IArray!24911 0))(
  ( (IArray!24912 (innerList!12513 List!40644)) )
))
(declare-datatypes ((Conc!12453 0))(
  ( (Node!12453 (left!31340 Conc!12453) (right!31670 Conc!12453) (csize!25136 Int) (cheight!12664 Int)) (Leaf!19281 (xs!15759 IArray!24911) (csize!25137 Int)) (Empty!12453) )
))
(declare-datatypes ((BalanceConc!24500 0))(
  ( (BalanceConc!24501 (c!669004 Conc!12453)) )
))
(declare-datatypes ((List!40645 0))(
  ( (Nil!40521) (Cons!40521 (h!45941 (_ BitVec 16)) (t!309886 List!40645)) )
))
(declare-datatypes ((TokenValue!6472 0))(
  ( (FloatLiteralValue!12944 (text!45749 List!40645)) (TokenValueExt!6471 (__x!25161 Int)) (Broken!32360 (value!198505 List!40645)) (Object!6595) (End!6472) (Def!6472) (Underscore!6472) (Match!6472) (Else!6472) (Error!6472) (Case!6472) (If!6472) (Extends!6472) (Abstract!6472) (Class!6472) (Val!6472) (DelimiterValue!12944 (del!6532 List!40645)) (KeywordValue!6478 (value!198506 List!40645)) (CommentValue!12944 (value!198507 List!40645)) (WhitespaceValue!12944 (value!198508 List!40645)) (IndentationValue!6472 (value!198509 List!40645)) (String!46077) (Int32!6472) (Broken!32361 (value!198510 List!40645)) (Boolean!6473) (Unit!58253) (OperatorValue!6475 (op!6532 List!40645)) (IdentifierValue!12944 (value!198511 List!40645)) (IdentifierValue!12945 (value!198512 List!40645)) (WhitespaceValue!12945 (value!198513 List!40645)) (True!12944) (False!12944) (Broken!32362 (value!198514 List!40645)) (Broken!32363 (value!198515 List!40645)) (True!12945) (RightBrace!6472) (RightBracket!6472) (Colon!6472) (Null!6472) (Comma!6472) (LeftBracket!6472) (False!12945) (LeftBrace!6472) (ImaginaryLiteralValue!6472 (text!45750 List!40645)) (StringLiteralValue!19416 (value!198516 List!40645)) (EOFValue!6472 (value!198517 List!40645)) (IdentValue!6472 (value!198518 List!40645)) (DelimiterValue!12945 (value!198519 List!40645)) (DedentValue!6472 (value!198520 List!40645)) (NewLineValue!6472 (value!198521 List!40645)) (IntegerValue!19416 (value!198522 (_ BitVec 32)) (text!45751 List!40645)) (IntegerValue!19417 (value!198523 Int) (text!45752 List!40645)) (Times!6472) (Or!6472) (Equal!6472) (Minus!6472) (Broken!32364 (value!198524 List!40645)) (And!6472) (Div!6472) (LessEqual!6472) (Mod!6472) (Concat!17619) (Not!6472) (Plus!6472) (SpaceValue!6472 (value!198525 List!40645)) (IntegerValue!19418 (value!198526 Int) (text!45753 List!40645)) (StringLiteralValue!19417 (text!45754 List!40645)) (FloatLiteralValue!12945 (text!45755 List!40645)) (BytesLiteralValue!6472 (value!198527 List!40645)) (CommentValue!12945 (value!198528 List!40645)) (StringLiteralValue!19418 (value!198529 List!40645)) (ErrorTokenValue!6472 (msg!6533 List!40645)) )
))
(declare-datatypes ((Regex!11147 0))(
  ( (ElementMatch!11147 (c!669005 C!22480)) (Concat!17620 (regOne!22806 Regex!11147) (regTwo!22806 Regex!11147)) (EmptyExpr!11147) (Star!11147 (reg!11476 Regex!11147)) (EmptyLang!11147) (Union!11147 (regOne!22807 Regex!11147) (regTwo!22807 Regex!11147)) )
))
(declare-datatypes ((String!46078 0))(
  ( (String!46079 (value!198530 String)) )
))
(declare-datatypes ((TokenValueInjection!12372 0))(
  ( (TokenValueInjection!12373 (toValue!8658 Int) (toChars!8517 Int)) )
))
(declare-datatypes ((Rule!12284 0))(
  ( (Rule!12285 (regex!6242 Regex!11147) (tag!7102 String!46078) (isSeparator!6242 Bool) (transformation!6242 TokenValueInjection!12372)) )
))
(declare-datatypes ((List!40646 0))(
  ( (Nil!40522) (Cons!40522 (h!45942 Rule!12284) (t!309887 List!40646)) )
))
(declare-fun rules!2768 () List!40646)

(declare-datatypes ((Token!11622 0))(
  ( (Token!11623 (value!198531 TokenValue!6472) (rule!9078 Rule!12284) (size!30522 Int) (originalCharacters!6842 List!40644)) )
))
(declare-datatypes ((List!40647 0))(
  ( (Nil!40523) (Cons!40523 (h!45943 Token!11622) (t!309888 List!40647)) )
))
(declare-fun prefixTokens!80 () List!40647)

(declare-fun suffixTokens!72 () List!40647)

(declare-fun lt!1331485 () List!40644)

(declare-datatypes ((LexerInterface!5831 0))(
  ( (LexerInterfaceExt!5828 (__x!25162 Int)) (Lexer!5829) )
))
(declare-fun thiss!20629 () LexerInterface!5831)

(declare-datatypes ((tuple2!39698 0))(
  ( (tuple2!39699 (_1!22983 List!40647) (_2!22983 List!40644)) )
))
(declare-fun lexList!1599 (LexerInterface!5831 List!40646 List!40644) tuple2!39698)

(declare-fun ++!10242 (List!40647 List!40647) List!40647)

(assert (=> b!3836922 (= res!1552950 (= (lexList!1599 thiss!20629 rules!2768 lt!1331485) (tuple2!39699 (++!10242 prefixTokens!80 suffixTokens!72) suffixResult!91)))))

(declare-fun prefix!426 () List!40644)

(declare-fun suffix!1176 () List!40644)

(assert (=> b!3836922 (= lt!1331485 (++!10241 prefix!426 suffix!1176))))

(declare-fun res!1552943 () Bool)

(assert (=> start!359196 (=> (not res!1552943) (not e!2369662))))

(get-info :version)

(assert (=> start!359196 (= res!1552943 ((_ is Lexer!5829) thiss!20629))))

(assert (=> start!359196 e!2369662))

(declare-fun e!2369664 () Bool)

(assert (=> start!359196 e!2369664))

(assert (=> start!359196 true))

(declare-fun e!2369663 () Bool)

(assert (=> start!359196 e!2369663))

(assert (=> start!359196 e!2369644))

(declare-fun e!2369650 () Bool)

(assert (=> start!359196 e!2369650))

(declare-fun e!2369654 () Bool)

(assert (=> start!359196 e!2369654))

(declare-fun e!2369649 () Bool)

(assert (=> start!359196 e!2369649))

(declare-fun b!3836923 () Bool)

(declare-fun tp_is_empty!19265 () Bool)

(declare-fun tp!1161476 () Bool)

(assert (=> b!3836923 (= e!2369663 (and tp_is_empty!19265 tp!1161476))))

(declare-fun b!3836924 () Bool)

(declare-fun tp!1161483 () Bool)

(assert (=> b!3836924 (= e!2369649 (and tp_is_empty!19265 tp!1161483))))

(declare-fun e!2369648 () Bool)

(declare-fun tp!1161484 () Bool)

(declare-fun b!3836925 () Bool)

(declare-fun e!2369653 () Bool)

(declare-fun inv!21 (TokenValue!6472) Bool)

(assert (=> b!3836925 (= e!2369648 (and (inv!21 (value!198531 (h!45943 suffixTokens!72))) e!2369653 tp!1161484))))

(declare-fun e!2369659 () Bool)

(assert (=> b!3836926 (= e!2369659 (and tp!1161479 tp!1161470))))

(declare-fun b!3836927 () Bool)

(declare-fun e!2369658 () Bool)

(assert (=> b!3836927 (= e!2369656 e!2369658)))

(declare-fun res!1552947 () Bool)

(assert (=> b!3836927 (=> (not res!1552947) (not e!2369658))))

(declare-datatypes ((tuple2!39700 0))(
  ( (tuple2!39701 (_1!22984 Token!11622) (_2!22984 List!40644)) )
))
(declare-datatypes ((Option!8660 0))(
  ( (None!8659) (Some!8659 (v!38951 tuple2!39700)) )
))
(declare-fun lt!1331491 () Option!8660)

(assert (=> b!3836927 (= res!1552947 ((_ is Some!8659) lt!1331491))))

(declare-fun maxPrefix!3135 (LexerInterface!5831 List!40646 List!40644) Option!8660)

(assert (=> b!3836927 (= lt!1331491 (maxPrefix!3135 thiss!20629 rules!2768 lt!1331485))))

(declare-fun b!3836928 () Bool)

(declare-fun tp!1161481 () Bool)

(assert (=> b!3836928 (= e!2369664 (and tp_is_empty!19265 tp!1161481))))

(declare-fun b!3836929 () Bool)

(declare-fun res!1552948 () Bool)

(assert (=> b!3836929 (=> (not res!1552948) (not e!2369662))))

(declare-fun rulesInvariant!5174 (LexerInterface!5831 List!40646) Bool)

(assert (=> b!3836929 (= res!1552948 (rulesInvariant!5174 thiss!20629 rules!2768))))

(declare-fun b!3836930 () Bool)

(declare-fun e!2369645 () Bool)

(declare-fun tp!1161468 () Bool)

(declare-fun inv!54674 (Token!11622) Bool)

(assert (=> b!3836930 (= e!2369650 (and (inv!54674 (h!45943 prefixTokens!80)) e!2369645 tp!1161468))))

(declare-fun tp!1161478 () Bool)

(declare-fun b!3836931 () Bool)

(declare-fun e!2369660 () Bool)

(assert (=> b!3836931 (= e!2369645 (and (inv!21 (value!198531 (h!45943 prefixTokens!80))) e!2369660 tp!1161478))))

(declare-fun b!3836932 () Bool)

(declare-fun res!1552946 () Bool)

(assert (=> b!3836932 (=> (not res!1552946) (not e!2369656))))

(assert (=> b!3836932 (= res!1552946 (= (lexList!1599 thiss!20629 rules!2768 suffix!1176) (tuple2!39699 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3836933 () Bool)

(declare-fun res!1552944 () Bool)

(assert (=> b!3836933 (=> (not res!1552944) (not e!2369662))))

(declare-fun isEmpty!23930 (List!40646) Bool)

(assert (=> b!3836933 (= res!1552944 (not (isEmpty!23930 rules!2768)))))

(declare-fun b!3836934 () Bool)

(declare-fun res!1552945 () Bool)

(assert (=> b!3836934 (=> (not res!1552945) (not e!2369662))))

(declare-fun isEmpty!23931 (List!40644) Bool)

(assert (=> b!3836934 (= res!1552945 (not (isEmpty!23931 prefix!426)))))

(declare-fun tp!1161475 () Bool)

(declare-fun e!2369643 () Bool)

(declare-fun b!3836935 () Bool)

(declare-fun inv!54671 (String!46078) Bool)

(declare-fun inv!54675 (TokenValueInjection!12372) Bool)

(assert (=> b!3836935 (= e!2369653 (and tp!1161475 (inv!54671 (tag!7102 (rule!9078 (h!45943 suffixTokens!72)))) (inv!54675 (transformation!6242 (rule!9078 (h!45943 suffixTokens!72)))) e!2369643))))

(declare-fun b!3836936 () Bool)

(declare-fun tp!1161473 () Bool)

(assert (=> b!3836936 (= e!2369655 (and tp!1161473 (inv!54671 (tag!7102 (h!45942 rules!2768))) (inv!54675 (transformation!6242 (h!45942 rules!2768))) e!2369647))))

(declare-fun b!3836937 () Bool)

(assert (=> b!3836937 (= e!2369658 (not e!2369657))))

(declare-fun res!1552952 () Bool)

(assert (=> b!3836937 (=> res!1552952 e!2369657)))

(declare-fun isPrefix!3341 (List!40644 List!40644) Bool)

(assert (=> b!3836937 (= res!1552952 (not (isPrefix!3341 lt!1331492 lt!1331485)))))

(declare-fun getSuffix!1796 (List!40644 List!40644) List!40644)

(assert (=> b!3836937 (= lt!1331486 (getSuffix!1796 lt!1331485 lt!1331492))))

(declare-fun lt!1331493 () List!40644)

(assert (=> b!3836937 (isPrefix!3341 lt!1331492 lt!1331493)))

(assert (=> b!3836937 (= lt!1331493 (++!10241 lt!1331492 (_2!22984 (v!38951 lt!1331491))))))

(declare-datatypes ((Unit!58254 0))(
  ( (Unit!58255) )
))
(declare-fun lt!1331489 () Unit!58254)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2204 (List!40644 List!40644) Unit!58254)

(assert (=> b!3836937 (= lt!1331489 (lemmaConcatTwoListThenFirstIsPrefix!2204 lt!1331492 (_2!22984 (v!38951 lt!1331491))))))

(declare-fun list!15098 (BalanceConc!24500) List!40644)

(declare-fun charsOf!4070 (Token!11622) BalanceConc!24500)

(assert (=> b!3836937 (= lt!1331492 (list!15098 (charsOf!4070 (_1!22984 (v!38951 lt!1331491)))))))

(declare-fun ruleValid!2194 (LexerInterface!5831 Rule!12284) Bool)

(assert (=> b!3836937 (ruleValid!2194 thiss!20629 (rule!9078 (_1!22984 (v!38951 lt!1331491))))))

(declare-fun lt!1331488 () Unit!58254)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1274 (LexerInterface!5831 Rule!12284 List!40646) Unit!58254)

(assert (=> b!3836937 (= lt!1331488 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1274 thiss!20629 (rule!9078 (_1!22984 (v!38951 lt!1331491))) rules!2768))))

(declare-fun lt!1331487 () Unit!58254)

(declare-fun lemmaCharactersSize!903 (Token!11622) Unit!58254)

(assert (=> b!3836937 (= lt!1331487 (lemmaCharactersSize!903 (_1!22984 (v!38951 lt!1331491))))))

(declare-fun b!3836938 () Bool)

(declare-fun res!1552949 () Bool)

(assert (=> b!3836938 (=> (not res!1552949) (not e!2369662))))

(declare-fun isEmpty!23932 (List!40647) Bool)

(assert (=> b!3836938 (= res!1552949 (not (isEmpty!23932 prefixTokens!80)))))

(declare-fun b!3836939 () Bool)

(declare-fun tp!1161471 () Bool)

(assert (=> b!3836939 (= e!2369660 (and tp!1161471 (inv!54671 (tag!7102 (rule!9078 (h!45943 prefixTokens!80)))) (inv!54675 (transformation!6242 (rule!9078 (h!45943 prefixTokens!80)))) e!2369659))))

(declare-fun tp!1161474 () Bool)

(declare-fun b!3836940 () Bool)

(assert (=> b!3836940 (= e!2369654 (and (inv!54674 (h!45943 suffixTokens!72)) e!2369648 tp!1161474))))

(assert (=> b!3836941 (= e!2369643 (and tp!1161477 tp!1161482))))

(declare-fun b!3836942 () Bool)

(declare-fun res!1552951 () Bool)

(assert (=> b!3836942 (=> res!1552951 e!2369657)))

(assert (=> b!3836942 (= res!1552951 (not (= lt!1331493 lt!1331485)))))

(assert (= (and start!359196 res!1552943) b!3836933))

(assert (= (and b!3836933 res!1552944) b!3836929))

(assert (= (and b!3836929 res!1552948) b!3836938))

(assert (= (and b!3836938 res!1552949) b!3836934))

(assert (= (and b!3836934 res!1552945) b!3836922))

(assert (= (and b!3836922 res!1552950) b!3836932))

(assert (= (and b!3836932 res!1552946) b!3836927))

(assert (= (and b!3836927 res!1552947) b!3836937))

(assert (= (and b!3836937 (not res!1552952)) b!3836942))

(assert (= (and b!3836942 (not res!1552951)) b!3836921))

(assert (= (and start!359196 ((_ is Cons!40520) suffixResult!91)) b!3836928))

(assert (= (and start!359196 ((_ is Cons!40520) suffix!1176)) b!3836923))

(assert (= b!3836936 b!3836920))

(assert (= b!3836919 b!3836936))

(assert (= (and start!359196 ((_ is Cons!40522) rules!2768)) b!3836919))

(assert (= b!3836939 b!3836926))

(assert (= b!3836931 b!3836939))

(assert (= b!3836930 b!3836931))

(assert (= (and start!359196 ((_ is Cons!40523) prefixTokens!80)) b!3836930))

(assert (= b!3836935 b!3836941))

(assert (= b!3836925 b!3836935))

(assert (= b!3836940 b!3836925))

(assert (= (and start!359196 ((_ is Cons!40523) suffixTokens!72)) b!3836940))

(assert (= (and start!359196 ((_ is Cons!40520) prefix!426)) b!3836924))

(declare-fun m!4391293 () Bool)

(assert (=> b!3836936 m!4391293))

(declare-fun m!4391295 () Bool)

(assert (=> b!3836936 m!4391295))

(declare-fun m!4391297 () Bool)

(assert (=> b!3836940 m!4391297))

(declare-fun m!4391299 () Bool)

(assert (=> b!3836922 m!4391299))

(declare-fun m!4391301 () Bool)

(assert (=> b!3836922 m!4391301))

(declare-fun m!4391303 () Bool)

(assert (=> b!3836922 m!4391303))

(declare-fun m!4391305 () Bool)

(assert (=> b!3836930 m!4391305))

(declare-fun m!4391307 () Bool)

(assert (=> b!3836933 m!4391307))

(declare-fun m!4391309 () Bool)

(assert (=> b!3836932 m!4391309))

(declare-fun m!4391311 () Bool)

(assert (=> b!3836929 m!4391311))

(declare-fun m!4391313 () Bool)

(assert (=> b!3836938 m!4391313))

(declare-fun m!4391315 () Bool)

(assert (=> b!3836935 m!4391315))

(declare-fun m!4391317 () Bool)

(assert (=> b!3836935 m!4391317))

(declare-fun m!4391319 () Bool)

(assert (=> b!3836939 m!4391319))

(declare-fun m!4391321 () Bool)

(assert (=> b!3836939 m!4391321))

(declare-fun m!4391323 () Bool)

(assert (=> b!3836934 m!4391323))

(declare-fun m!4391325 () Bool)

(assert (=> b!3836927 m!4391325))

(declare-fun m!4391327 () Bool)

(assert (=> b!3836937 m!4391327))

(declare-fun m!4391329 () Bool)

(assert (=> b!3836937 m!4391329))

(declare-fun m!4391331 () Bool)

(assert (=> b!3836937 m!4391331))

(declare-fun m!4391333 () Bool)

(assert (=> b!3836937 m!4391333))

(declare-fun m!4391335 () Bool)

(assert (=> b!3836937 m!4391335))

(declare-fun m!4391337 () Bool)

(assert (=> b!3836937 m!4391337))

(declare-fun m!4391339 () Bool)

(assert (=> b!3836937 m!4391339))

(assert (=> b!3836937 m!4391329))

(declare-fun m!4391341 () Bool)

(assert (=> b!3836937 m!4391341))

(declare-fun m!4391343 () Bool)

(assert (=> b!3836937 m!4391343))

(declare-fun m!4391345 () Bool)

(assert (=> b!3836937 m!4391345))

(declare-fun m!4391347 () Bool)

(assert (=> b!3836931 m!4391347))

(declare-fun m!4391349 () Bool)

(assert (=> b!3836925 m!4391349))

(declare-fun m!4391351 () Bool)

(assert (=> b!3836921 m!4391351))

(check-sat (not b!3836932) (not b!3836937) (not b!3836927) b_and!285459 (not b!3836934) tp_is_empty!19265 (not b!3836940) (not b!3836921) (not b!3836936) (not b!3836928) (not b_next!102707) (not b!3836922) b_and!285461 b_and!285453 (not b!3836924) (not b!3836930) (not b!3836939) (not b!3836919) (not b!3836931) (not b_next!102711) (not b!3836929) (not b!3836923) (not b_next!102709) (not b_next!102705) (not b!3836933) b_and!285457 (not b!3836935) (not b_next!102703) (not b_next!102701) b_and!285451 b_and!285455 (not b!3836938) (not b!3836925))
(check-sat (not b_next!102711) (not b_next!102709) (not b_next!102705) b_and!285459 b_and!285457 (not b_next!102707) b_and!285461 b_and!285453 (not b_next!102703) (not b_next!102701) b_and!285451 b_and!285455)
