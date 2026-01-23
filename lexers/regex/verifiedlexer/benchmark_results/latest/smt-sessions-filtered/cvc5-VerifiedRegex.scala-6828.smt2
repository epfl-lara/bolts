; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!359198 () Bool)

(assert start!359198)

(declare-fun b!3836998 () Bool)

(declare-fun b_free!102009 () Bool)

(declare-fun b_next!102713 () Bool)

(assert (=> b!3836998 (= b_free!102009 (not b_next!102713))))

(declare-fun tp!1161532 () Bool)

(declare-fun b_and!285463 () Bool)

(assert (=> b!3836998 (= tp!1161532 b_and!285463)))

(declare-fun b_free!102011 () Bool)

(declare-fun b_next!102715 () Bool)

(assert (=> b!3836998 (= b_free!102011 (not b_next!102715))))

(declare-fun tp!1161533 () Bool)

(declare-fun b_and!285465 () Bool)

(assert (=> b!3836998 (= tp!1161533 b_and!285465)))

(declare-fun b!3836993 () Bool)

(declare-fun b_free!102013 () Bool)

(declare-fun b_next!102717 () Bool)

(assert (=> b!3836993 (= b_free!102013 (not b_next!102717))))

(declare-fun tp!1161530 () Bool)

(declare-fun b_and!285467 () Bool)

(assert (=> b!3836993 (= tp!1161530 b_and!285467)))

(declare-fun b_free!102015 () Bool)

(declare-fun b_next!102719 () Bool)

(assert (=> b!3836993 (= b_free!102015 (not b_next!102719))))

(declare-fun tp!1161534 () Bool)

(declare-fun b_and!285469 () Bool)

(assert (=> b!3836993 (= tp!1161534 b_and!285469)))

(declare-fun b!3836996 () Bool)

(declare-fun b_free!102017 () Bool)

(declare-fun b_next!102721 () Bool)

(assert (=> b!3836996 (= b_free!102017 (not b_next!102721))))

(declare-fun tp!1161523 () Bool)

(declare-fun b_and!285471 () Bool)

(assert (=> b!3836996 (= tp!1161523 b_and!285471)))

(declare-fun b_free!102019 () Bool)

(declare-fun b_next!102723 () Bool)

(assert (=> b!3836996 (= b_free!102019 (not b_next!102723))))

(declare-fun tp!1161535 () Bool)

(declare-fun b_and!285473 () Bool)

(assert (=> b!3836996 (= tp!1161535 b_and!285473)))

(declare-fun b!3836991 () Bool)

(declare-fun res!1552975 () Bool)

(declare-fun e!2369733 () Bool)

(assert (=> b!3836991 (=> (not res!1552975) (not e!2369733))))

(declare-datatypes ((C!22482 0))(
  ( (C!22483 (val!13335 Int)) )
))
(declare-datatypes ((List!40648 0))(
  ( (Nil!40524) (Cons!40524 (h!45944 C!22482) (t!309889 List!40648)) )
))
(declare-fun suffixResult!91 () List!40648)

(declare-datatypes ((LexerInterface!5832 0))(
  ( (LexerInterfaceExt!5829 (__x!25163 Int)) (Lexer!5830) )
))
(declare-fun thiss!20629 () LexerInterface!5832)

(declare-fun suffix!1176 () List!40648)

(declare-datatypes ((IArray!24913 0))(
  ( (IArray!24914 (innerList!12514 List!40648)) )
))
(declare-datatypes ((Conc!12454 0))(
  ( (Node!12454 (left!31342 Conc!12454) (right!31672 Conc!12454) (csize!25138 Int) (cheight!12665 Int)) (Leaf!19283 (xs!15760 IArray!24913) (csize!25139 Int)) (Empty!12454) )
))
(declare-datatypes ((BalanceConc!24502 0))(
  ( (BalanceConc!24503 (c!669007 Conc!12454)) )
))
(declare-datatypes ((List!40649 0))(
  ( (Nil!40525) (Cons!40525 (h!45945 (_ BitVec 16)) (t!309890 List!40649)) )
))
(declare-datatypes ((TokenValue!6473 0))(
  ( (FloatLiteralValue!12946 (text!45756 List!40649)) (TokenValueExt!6472 (__x!25164 Int)) (Broken!32365 (value!198535 List!40649)) (Object!6596) (End!6473) (Def!6473) (Underscore!6473) (Match!6473) (Else!6473) (Error!6473) (Case!6473) (If!6473) (Extends!6473) (Abstract!6473) (Class!6473) (Val!6473) (DelimiterValue!12946 (del!6533 List!40649)) (KeywordValue!6479 (value!198536 List!40649)) (CommentValue!12946 (value!198537 List!40649)) (WhitespaceValue!12946 (value!198538 List!40649)) (IndentationValue!6473 (value!198539 List!40649)) (String!46084) (Int32!6473) (Broken!32366 (value!198540 List!40649)) (Boolean!6474) (Unit!58256) (OperatorValue!6476 (op!6533 List!40649)) (IdentifierValue!12946 (value!198541 List!40649)) (IdentifierValue!12947 (value!198542 List!40649)) (WhitespaceValue!12947 (value!198543 List!40649)) (True!12946) (False!12946) (Broken!32367 (value!198544 List!40649)) (Broken!32368 (value!198545 List!40649)) (True!12947) (RightBrace!6473) (RightBracket!6473) (Colon!6473) (Null!6473) (Comma!6473) (LeftBracket!6473) (False!12947) (LeftBrace!6473) (ImaginaryLiteralValue!6473 (text!45757 List!40649)) (StringLiteralValue!19419 (value!198546 List!40649)) (EOFValue!6473 (value!198547 List!40649)) (IdentValue!6473 (value!198548 List!40649)) (DelimiterValue!12947 (value!198549 List!40649)) (DedentValue!6473 (value!198550 List!40649)) (NewLineValue!6473 (value!198551 List!40649)) (IntegerValue!19419 (value!198552 (_ BitVec 32)) (text!45758 List!40649)) (IntegerValue!19420 (value!198553 Int) (text!45759 List!40649)) (Times!6473) (Or!6473) (Equal!6473) (Minus!6473) (Broken!32369 (value!198554 List!40649)) (And!6473) (Div!6473) (LessEqual!6473) (Mod!6473) (Concat!17621) (Not!6473) (Plus!6473) (SpaceValue!6473 (value!198555 List!40649)) (IntegerValue!19421 (value!198556 Int) (text!45760 List!40649)) (StringLiteralValue!19420 (text!45761 List!40649)) (FloatLiteralValue!12947 (text!45762 List!40649)) (BytesLiteralValue!6473 (value!198557 List!40649)) (CommentValue!12947 (value!198558 List!40649)) (StringLiteralValue!19421 (value!198559 List!40649)) (ErrorTokenValue!6473 (msg!6534 List!40649)) )
))
(declare-datatypes ((Regex!11148 0))(
  ( (ElementMatch!11148 (c!669008 C!22482)) (Concat!17622 (regOne!22808 Regex!11148) (regTwo!22808 Regex!11148)) (EmptyExpr!11148) (Star!11148 (reg!11477 Regex!11148)) (EmptyLang!11148) (Union!11148 (regOne!22809 Regex!11148) (regTwo!22809 Regex!11148)) )
))
(declare-datatypes ((String!46085 0))(
  ( (String!46086 (value!198560 String)) )
))
(declare-datatypes ((TokenValueInjection!12374 0))(
  ( (TokenValueInjection!12375 (toValue!8659 Int) (toChars!8518 Int)) )
))
(declare-datatypes ((Rule!12286 0))(
  ( (Rule!12287 (regex!6243 Regex!11148) (tag!7103 String!46085) (isSeparator!6243 Bool) (transformation!6243 TokenValueInjection!12374)) )
))
(declare-datatypes ((List!40650 0))(
  ( (Nil!40526) (Cons!40526 (h!45946 Rule!12286) (t!309891 List!40650)) )
))
(declare-fun rules!2768 () List!40650)

(declare-datatypes ((Token!11624 0))(
  ( (Token!11625 (value!198561 TokenValue!6473) (rule!9079 Rule!12286) (size!30523 Int) (originalCharacters!6843 List!40648)) )
))
(declare-datatypes ((List!40651 0))(
  ( (Nil!40527) (Cons!40527 (h!45947 Token!11624) (t!309892 List!40651)) )
))
(declare-fun suffixTokens!72 () List!40651)

(declare-datatypes ((tuple2!39702 0))(
  ( (tuple2!39703 (_1!22985 List!40651) (_2!22985 List!40648)) )
))
(declare-fun lexList!1600 (LexerInterface!5832 List!40650 List!40648) tuple2!39702)

(assert (=> b!3836991 (= res!1552975 (= (lexList!1600 thiss!20629 rules!2768 suffix!1176) (tuple2!39703 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3836992 () Bool)

(declare-fun e!2369713 () Bool)

(declare-datatypes ((tuple2!39704 0))(
  ( (tuple2!39705 (_1!22986 Token!11624) (_2!22986 List!40648)) )
))
(declare-datatypes ((Option!8661 0))(
  ( (None!8660) (Some!8660 (v!38952 tuple2!39704)) )
))
(declare-fun lt!1331518 () Option!8661)

(declare-fun size!30524 (List!40648) Int)

(assert (=> b!3836992 (= e!2369713 (= (size!30523 (_1!22986 (v!38952 lt!1331518))) (size!30524 (originalCharacters!6843 (_1!22986 (v!38952 lt!1331518))))))))

(declare-fun e!2369715 () Bool)

(assert (=> b!3836993 (= e!2369715 (and tp!1161530 tp!1161534))))

(declare-fun b!3836994 () Bool)

(declare-fun tp!1161522 () Bool)

(declare-fun prefixTokens!80 () List!40651)

(declare-fun e!2369719 () Bool)

(declare-fun e!2369725 () Bool)

(declare-fun inv!21 (TokenValue!6473) Bool)

(assert (=> b!3836994 (= e!2369719 (and (inv!21 (value!198561 (h!45947 prefixTokens!80))) e!2369725 tp!1161522))))

(declare-fun e!2369711 () Bool)

(assert (=> b!3836996 (= e!2369711 (and tp!1161523 tp!1161535))))

(declare-fun b!3836997 () Bool)

(declare-fun res!1552978 () Bool)

(declare-fun e!2369731 () Bool)

(assert (=> b!3836997 (=> (not res!1552978) (not e!2369731))))

(declare-fun isEmpty!23933 (List!40651) Bool)

(assert (=> b!3836997 (= res!1552978 (not (isEmpty!23933 prefixTokens!80)))))

(declare-fun e!2369720 () Bool)

(assert (=> b!3836998 (= e!2369720 (and tp!1161532 tp!1161533))))

(declare-fun b!3836999 () Bool)

(declare-fun e!2369716 () Bool)

(declare-fun tp!1161520 () Bool)

(declare-fun inv!54679 (Token!11624) Bool)

(assert (=> b!3836999 (= e!2369716 (and (inv!54679 (h!45947 prefixTokens!80)) e!2369719 tp!1161520))))

(declare-fun b!3837000 () Bool)

(declare-fun e!2369727 () Bool)

(declare-fun tp_is_empty!19267 () Bool)

(declare-fun tp!1161531 () Bool)

(assert (=> b!3837000 (= e!2369727 (and tp_is_empty!19267 tp!1161531))))

(declare-fun e!2369723 () Bool)

(declare-fun b!3837001 () Bool)

(declare-fun tp!1161519 () Bool)

(declare-fun inv!54676 (String!46085) Bool)

(declare-fun inv!54680 (TokenValueInjection!12374) Bool)

(assert (=> b!3837001 (= e!2369723 (and tp!1161519 (inv!54676 (tag!7103 (h!45946 rules!2768))) (inv!54680 (transformation!6243 (h!45946 rules!2768))) e!2369711))))

(declare-fun e!2369714 () Bool)

(declare-fun e!2369729 () Bool)

(declare-fun b!3837002 () Bool)

(declare-fun tp!1161527 () Bool)

(assert (=> b!3837002 (= e!2369729 (and (inv!54679 (h!45947 suffixTokens!72)) e!2369714 tp!1161527))))

(declare-fun b!3837003 () Bool)

(declare-fun res!1552973 () Bool)

(assert (=> b!3837003 (=> (not res!1552973) (not e!2369731))))

(declare-fun prefix!426 () List!40648)

(declare-fun isEmpty!23934 (List!40648) Bool)

(assert (=> b!3837003 (= res!1552973 (not (isEmpty!23934 prefix!426)))))

(declare-fun b!3837004 () Bool)

(declare-fun res!1552977 () Bool)

(assert (=> b!3837004 (=> (not res!1552977) (not e!2369731))))

(declare-fun isEmpty!23935 (List!40650) Bool)

(assert (=> b!3837004 (= res!1552977 (not (isEmpty!23935 rules!2768)))))

(declare-fun b!3837005 () Bool)

(declare-fun e!2369730 () Bool)

(assert (=> b!3837005 (= e!2369733 e!2369730)))

(declare-fun res!1552981 () Bool)

(assert (=> b!3837005 (=> (not res!1552981) (not e!2369730))))

(assert (=> b!3837005 (= res!1552981 (is-Some!8660 lt!1331518))))

(declare-fun lt!1331512 () List!40648)

(declare-fun maxPrefix!3136 (LexerInterface!5832 List!40650 List!40648) Option!8661)

(assert (=> b!3837005 (= lt!1331518 (maxPrefix!3136 thiss!20629 rules!2768 lt!1331512))))

(declare-fun b!3837006 () Bool)

(declare-fun e!2369728 () Bool)

(declare-fun tp!1161525 () Bool)

(assert (=> b!3837006 (= e!2369728 (and tp_is_empty!19267 tp!1161525))))

(declare-fun e!2369732 () Bool)

(declare-fun b!3837007 () Bool)

(declare-fun tp!1161526 () Bool)

(assert (=> b!3837007 (= e!2369714 (and (inv!21 (value!198561 (h!45947 suffixTokens!72))) e!2369732 tp!1161526))))

(declare-fun b!3837008 () Bool)

(assert (=> b!3837008 (= e!2369731 e!2369733)))

(declare-fun res!1552980 () Bool)

(assert (=> b!3837008 (=> (not res!1552980) (not e!2369733))))

(declare-fun ++!10243 (List!40651 List!40651) List!40651)

(assert (=> b!3837008 (= res!1552980 (= (lexList!1600 thiss!20629 rules!2768 lt!1331512) (tuple2!39703 (++!10243 prefixTokens!80 suffixTokens!72) suffixResult!91)))))

(declare-fun ++!10244 (List!40648 List!40648) List!40648)

(assert (=> b!3837008 (= lt!1331512 (++!10244 prefix!426 suffix!1176))))

(declare-fun res!1552982 () Bool)

(assert (=> start!359198 (=> (not res!1552982) (not e!2369731))))

(assert (=> start!359198 (= res!1552982 (is-Lexer!5830 thiss!20629))))

(assert (=> start!359198 e!2369731))

(assert (=> start!359198 e!2369728))

(assert (=> start!359198 true))

(assert (=> start!359198 e!2369727))

(declare-fun e!2369721 () Bool)

(assert (=> start!359198 e!2369721))

(assert (=> start!359198 e!2369716))

(assert (=> start!359198 e!2369729))

(declare-fun e!2369718 () Bool)

(assert (=> start!359198 e!2369718))

(declare-fun tp!1161521 () Bool)

(declare-fun b!3836995 () Bool)

(assert (=> b!3836995 (= e!2369725 (and tp!1161521 (inv!54676 (tag!7103 (rule!9079 (h!45947 prefixTokens!80)))) (inv!54680 (transformation!6243 (rule!9079 (h!45947 prefixTokens!80)))) e!2369715))))

(declare-fun b!3837009 () Bool)

(declare-fun res!1552974 () Bool)

(assert (=> b!3837009 (=> (not res!1552974) (not e!2369713))))

(declare-fun lt!1331514 () List!40648)

(declare-fun apply!9486 (TokenValueInjection!12374 BalanceConc!24502) TokenValue!6473)

(declare-fun seqFromList!4514 (List!40648) BalanceConc!24502)

(assert (=> b!3837009 (= res!1552974 (= (value!198561 (_1!22986 (v!38952 lt!1331518))) (apply!9486 (transformation!6243 (rule!9079 (_1!22986 (v!38952 lt!1331518)))) (seqFromList!4514 lt!1331514))))))

(declare-fun b!3837010 () Bool)

(declare-fun tp!1161529 () Bool)

(assert (=> b!3837010 (= e!2369721 (and e!2369723 tp!1161529))))

(declare-fun b!3837011 () Bool)

(declare-fun tp!1161528 () Bool)

(assert (=> b!3837011 (= e!2369718 (and tp_is_empty!19267 tp!1161528))))

(declare-fun b!3837012 () Bool)

(declare-fun res!1552979 () Bool)

(assert (=> b!3837012 (=> (not res!1552979) (not e!2369731))))

(declare-fun rulesInvariant!5175 (LexerInterface!5832 List!40650) Bool)

(assert (=> b!3837012 (= res!1552979 (rulesInvariant!5175 thiss!20629 rules!2768))))

(declare-fun tp!1161524 () Bool)

(declare-fun b!3837013 () Bool)

(assert (=> b!3837013 (= e!2369732 (and tp!1161524 (inv!54676 (tag!7103 (rule!9079 (h!45947 suffixTokens!72)))) (inv!54680 (transformation!6243 (rule!9079 (h!45947 suffixTokens!72)))) e!2369720))))

(declare-fun b!3837014 () Bool)

(declare-fun lt!1331517 () Int)

(assert (=> b!3837014 (= e!2369730 (not (>= (size!30524 lt!1331512) lt!1331517)))))

(assert (=> b!3837014 (and (= (size!30523 (_1!22986 (v!38952 lt!1331518))) lt!1331517) (= (originalCharacters!6843 (_1!22986 (v!38952 lt!1331518))) lt!1331514))))

(assert (=> b!3837014 (= lt!1331517 (size!30524 lt!1331514))))

(assert (=> b!3837014 e!2369713))

(declare-fun res!1552976 () Bool)

(assert (=> b!3837014 (=> (not res!1552976) (not e!2369713))))

(declare-fun lt!1331519 () List!40648)

(assert (=> b!3837014 (= res!1552976 (= (_2!22986 (v!38952 lt!1331518)) lt!1331519))))

(declare-datatypes ((Unit!58257 0))(
  ( (Unit!58258) )
))
(declare-fun lt!1331513 () Unit!58257)

(declare-fun lemmaSamePrefixThenSameSuffix!1563 (List!40648 List!40648 List!40648 List!40648 List!40648) Unit!58257)

(assert (=> b!3837014 (= lt!1331513 (lemmaSamePrefixThenSameSuffix!1563 lt!1331514 (_2!22986 (v!38952 lt!1331518)) lt!1331514 lt!1331519 lt!1331512))))

(declare-fun getSuffix!1797 (List!40648 List!40648) List!40648)

(assert (=> b!3837014 (= lt!1331519 (getSuffix!1797 lt!1331512 lt!1331514))))

(declare-fun isPrefix!3342 (List!40648 List!40648) Bool)

(assert (=> b!3837014 (isPrefix!3342 lt!1331514 (++!10244 lt!1331514 (_2!22986 (v!38952 lt!1331518))))))

(declare-fun lt!1331520 () Unit!58257)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2205 (List!40648 List!40648) Unit!58257)

(assert (=> b!3837014 (= lt!1331520 (lemmaConcatTwoListThenFirstIsPrefix!2205 lt!1331514 (_2!22986 (v!38952 lt!1331518))))))

(declare-fun list!15099 (BalanceConc!24502) List!40648)

(declare-fun charsOf!4071 (Token!11624) BalanceConc!24502)

(assert (=> b!3837014 (= lt!1331514 (list!15099 (charsOf!4071 (_1!22986 (v!38952 lt!1331518)))))))

(declare-fun ruleValid!2195 (LexerInterface!5832 Rule!12286) Bool)

(assert (=> b!3837014 (ruleValid!2195 thiss!20629 (rule!9079 (_1!22986 (v!38952 lt!1331518))))))

(declare-fun lt!1331515 () Unit!58257)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1275 (LexerInterface!5832 Rule!12286 List!40650) Unit!58257)

(assert (=> b!3837014 (= lt!1331515 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1275 thiss!20629 (rule!9079 (_1!22986 (v!38952 lt!1331518))) rules!2768))))

(declare-fun lt!1331516 () Unit!58257)

(declare-fun lemmaCharactersSize!904 (Token!11624) Unit!58257)

(assert (=> b!3837014 (= lt!1331516 (lemmaCharactersSize!904 (_1!22986 (v!38952 lt!1331518))))))

(assert (= (and start!359198 res!1552982) b!3837004))

(assert (= (and b!3837004 res!1552977) b!3837012))

(assert (= (and b!3837012 res!1552979) b!3836997))

(assert (= (and b!3836997 res!1552978) b!3837003))

(assert (= (and b!3837003 res!1552973) b!3837008))

(assert (= (and b!3837008 res!1552980) b!3836991))

(assert (= (and b!3836991 res!1552975) b!3837005))

(assert (= (and b!3837005 res!1552981) b!3837014))

(assert (= (and b!3837014 res!1552976) b!3837009))

(assert (= (and b!3837009 res!1552974) b!3836992))

(assert (= (and start!359198 (is-Cons!40524 suffixResult!91)) b!3837006))

(assert (= (and start!359198 (is-Cons!40524 suffix!1176)) b!3837000))

(assert (= b!3837001 b!3836996))

(assert (= b!3837010 b!3837001))

(assert (= (and start!359198 (is-Cons!40526 rules!2768)) b!3837010))

(assert (= b!3836995 b!3836993))

(assert (= b!3836994 b!3836995))

(assert (= b!3836999 b!3836994))

(assert (= (and start!359198 (is-Cons!40527 prefixTokens!80)) b!3836999))

(assert (= b!3837013 b!3836998))

(assert (= b!3837007 b!3837013))

(assert (= b!3837002 b!3837007))

(assert (= (and start!359198 (is-Cons!40527 suffixTokens!72)) b!3837002))

(assert (= (and start!359198 (is-Cons!40524 prefix!426)) b!3837011))

(declare-fun m!4391353 () Bool)

(assert (=> b!3837005 m!4391353))

(declare-fun m!4391355 () Bool)

(assert (=> b!3836992 m!4391355))

(declare-fun m!4391357 () Bool)

(assert (=> b!3837003 m!4391357))

(declare-fun m!4391359 () Bool)

(assert (=> b!3836997 m!4391359))

(declare-fun m!4391361 () Bool)

(assert (=> b!3837009 m!4391361))

(assert (=> b!3837009 m!4391361))

(declare-fun m!4391363 () Bool)

(assert (=> b!3837009 m!4391363))

(declare-fun m!4391365 () Bool)

(assert (=> b!3836994 m!4391365))

(declare-fun m!4391367 () Bool)

(assert (=> b!3837001 m!4391367))

(declare-fun m!4391369 () Bool)

(assert (=> b!3837001 m!4391369))

(declare-fun m!4391371 () Bool)

(assert (=> b!3837008 m!4391371))

(declare-fun m!4391373 () Bool)

(assert (=> b!3837008 m!4391373))

(declare-fun m!4391375 () Bool)

(assert (=> b!3837008 m!4391375))

(declare-fun m!4391377 () Bool)

(assert (=> b!3837004 m!4391377))

(declare-fun m!4391379 () Bool)

(assert (=> b!3837007 m!4391379))

(declare-fun m!4391381 () Bool)

(assert (=> b!3836995 m!4391381))

(declare-fun m!4391383 () Bool)

(assert (=> b!3836995 m!4391383))

(declare-fun m!4391385 () Bool)

(assert (=> b!3837014 m!4391385))

(assert (=> b!3837014 m!4391385))

(declare-fun m!4391387 () Bool)

(assert (=> b!3837014 m!4391387))

(declare-fun m!4391389 () Bool)

(assert (=> b!3837014 m!4391389))

(declare-fun m!4391391 () Bool)

(assert (=> b!3837014 m!4391391))

(declare-fun m!4391393 () Bool)

(assert (=> b!3837014 m!4391393))

(declare-fun m!4391395 () Bool)

(assert (=> b!3837014 m!4391395))

(declare-fun m!4391397 () Bool)

(assert (=> b!3837014 m!4391397))

(declare-fun m!4391399 () Bool)

(assert (=> b!3837014 m!4391399))

(declare-fun m!4391401 () Bool)

(assert (=> b!3837014 m!4391401))

(declare-fun m!4391403 () Bool)

(assert (=> b!3837014 m!4391403))

(declare-fun m!4391405 () Bool)

(assert (=> b!3837014 m!4391405))

(assert (=> b!3837014 m!4391403))

(declare-fun m!4391407 () Bool)

(assert (=> b!3837014 m!4391407))

(declare-fun m!4391409 () Bool)

(assert (=> b!3837012 m!4391409))

(declare-fun m!4391411 () Bool)

(assert (=> b!3837013 m!4391411))

(declare-fun m!4391413 () Bool)

(assert (=> b!3837013 m!4391413))

(declare-fun m!4391415 () Bool)

(assert (=> b!3836999 m!4391415))

(declare-fun m!4391417 () Bool)

(assert (=> b!3836991 m!4391417))

(declare-fun m!4391419 () Bool)

(assert (=> b!3837002 m!4391419))

(push 1)

(assert (not b!3836997))

(assert (not b_next!102721))

(assert (not b!3837006))

(assert b_and!285467)

(assert (not b!3837004))

(assert (not b!3837009))

(assert (not b!3836999))

(assert (not b!3837010))

(assert b_and!285465)

(assert (not b!3837011))

(assert (not b_next!102723))

(assert (not b!3837013))

(assert b_and!285463)

(assert (not b!3836992))

(assert (not b_next!102717))

(assert (not b!3836995))

(assert (not b_next!102719))

(assert (not b!3837014))

(assert (not b!3837000))

(assert tp_is_empty!19267)

(assert b_and!285471)

(assert (not b_next!102713))

(assert (not b!3837012))

(assert b_and!285473)

(assert (not b!3837008))

(assert (not b!3837003))

(assert (not b!3837005))

(assert (not b_next!102715))

(assert (not b!3837002))

(assert (not b!3837001))

(assert (not b!3836991))

(assert (not b!3837007))

(assert b_and!285469)

(assert (not b!3836994))

(check-sat)

(pop 1)

(push 1)

(assert b_and!285463)

(assert (not b_next!102721))

(assert (not b_next!102717))

(assert (not b_next!102719))

(assert b_and!285471)

(assert b_and!285467)

(assert (not b_next!102715))

(assert b_and!285465)

(assert b_and!285469)

(assert (not b_next!102723))

(assert (not b_next!102713))

(assert b_and!285473)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1139075 () Bool)

(assert (=> d!1139075 (= (_2!22986 (v!38952 lt!1331518)) lt!1331519)))

(declare-fun lt!1331550 () Unit!58257)

(declare-fun choose!22555 (List!40648 List!40648 List!40648 List!40648 List!40648) Unit!58257)

(assert (=> d!1139075 (= lt!1331550 (choose!22555 lt!1331514 (_2!22986 (v!38952 lt!1331518)) lt!1331514 lt!1331519 lt!1331512))))

(assert (=> d!1139075 (isPrefix!3342 lt!1331514 lt!1331512)))

(assert (=> d!1139075 (= (lemmaSamePrefixThenSameSuffix!1563 lt!1331514 (_2!22986 (v!38952 lt!1331518)) lt!1331514 lt!1331519 lt!1331512) lt!1331550)))

(declare-fun bs!582539 () Bool)

(assert (= bs!582539 d!1139075))

(declare-fun m!4391489 () Bool)

(assert (=> bs!582539 m!4391489))

(declare-fun m!4391491 () Bool)

(assert (=> bs!582539 m!4391491))

(assert (=> b!3837014 d!1139075))

(declare-fun d!1139077 () Bool)

(declare-fun res!1553021 () Bool)

(declare-fun e!2369805 () Bool)

(assert (=> d!1139077 (=> (not res!1553021) (not e!2369805))))

(declare-fun validRegex!5077 (Regex!11148) Bool)

(assert (=> d!1139077 (= res!1553021 (validRegex!5077 (regex!6243 (rule!9079 (_1!22986 (v!38952 lt!1331518))))))))

(assert (=> d!1139077 (= (ruleValid!2195 thiss!20629 (rule!9079 (_1!22986 (v!38952 lt!1331518)))) e!2369805)))

(declare-fun b!3837091 () Bool)

(declare-fun res!1553022 () Bool)

(assert (=> b!3837091 (=> (not res!1553022) (not e!2369805))))

(declare-fun nullable!3878 (Regex!11148) Bool)

(assert (=> b!3837091 (= res!1553022 (not (nullable!3878 (regex!6243 (rule!9079 (_1!22986 (v!38952 lt!1331518)))))))))

(declare-fun b!3837092 () Bool)

(assert (=> b!3837092 (= e!2369805 (not (= (tag!7103 (rule!9079 (_1!22986 (v!38952 lt!1331518)))) (String!46086 ""))))))

(assert (= (and d!1139077 res!1553021) b!3837091))

(assert (= (and b!3837091 res!1553022) b!3837092))

(declare-fun m!4391493 () Bool)

(assert (=> d!1139077 m!4391493))

(declare-fun m!4391495 () Bool)

(assert (=> b!3837091 m!4391495))

(assert (=> b!3837014 d!1139077))

(declare-fun d!1139079 () Bool)

(assert (=> d!1139079 (= (size!30523 (_1!22986 (v!38952 lt!1331518))) (size!30524 (originalCharacters!6843 (_1!22986 (v!38952 lt!1331518)))))))

(declare-fun Unit!58262 () Unit!58257)

(assert (=> d!1139079 (= (lemmaCharactersSize!904 (_1!22986 (v!38952 lt!1331518))) Unit!58262)))

(declare-fun bs!582540 () Bool)

(assert (= bs!582540 d!1139079))

(assert (=> bs!582540 m!4391355))

(assert (=> b!3837014 d!1139079))

(declare-fun d!1139081 () Bool)

(declare-fun lt!1331553 () BalanceConc!24502)

(assert (=> d!1139081 (= (list!15099 lt!1331553) (originalCharacters!6843 (_1!22986 (v!38952 lt!1331518))))))

(declare-fun dynLambda!17555 (Int TokenValue!6473) BalanceConc!24502)

(assert (=> d!1139081 (= lt!1331553 (dynLambda!17555 (toChars!8518 (transformation!6243 (rule!9079 (_1!22986 (v!38952 lt!1331518))))) (value!198561 (_1!22986 (v!38952 lt!1331518)))))))

(assert (=> d!1139081 (= (charsOf!4071 (_1!22986 (v!38952 lt!1331518))) lt!1331553)))

(declare-fun b_lambda!112187 () Bool)

(assert (=> (not b_lambda!112187) (not d!1139081)))

(declare-fun tb!220549 () Bool)

(declare-fun t!309898 () Bool)

(assert (=> (and b!3836998 (= (toChars!8518 (transformation!6243 (rule!9079 (h!45947 suffixTokens!72)))) (toChars!8518 (transformation!6243 (rule!9079 (_1!22986 (v!38952 lt!1331518)))))) t!309898) tb!220549))

(declare-fun b!3837097 () Bool)

(declare-fun e!2369808 () Bool)

(declare-fun tp!1161589 () Bool)

(declare-fun inv!54683 (Conc!12454) Bool)

(assert (=> b!3837097 (= e!2369808 (and (inv!54683 (c!669007 (dynLambda!17555 (toChars!8518 (transformation!6243 (rule!9079 (_1!22986 (v!38952 lt!1331518))))) (value!198561 (_1!22986 (v!38952 lt!1331518)))))) tp!1161589))))

(declare-fun result!268794 () Bool)

(declare-fun inv!54684 (BalanceConc!24502) Bool)

(assert (=> tb!220549 (= result!268794 (and (inv!54684 (dynLambda!17555 (toChars!8518 (transformation!6243 (rule!9079 (_1!22986 (v!38952 lt!1331518))))) (value!198561 (_1!22986 (v!38952 lt!1331518))))) e!2369808))))

(assert (= tb!220549 b!3837097))

(declare-fun m!4391497 () Bool)

(assert (=> b!3837097 m!4391497))

(declare-fun m!4391499 () Bool)

(assert (=> tb!220549 m!4391499))

(assert (=> d!1139081 t!309898))

(declare-fun b_and!285487 () Bool)

(assert (= b_and!285465 (and (=> t!309898 result!268794) b_and!285487)))

(declare-fun tb!220551 () Bool)

(declare-fun t!309900 () Bool)

(assert (=> (and b!3836993 (= (toChars!8518 (transformation!6243 (rule!9079 (h!45947 prefixTokens!80)))) (toChars!8518 (transformation!6243 (rule!9079 (_1!22986 (v!38952 lt!1331518)))))) t!309900) tb!220551))

(declare-fun result!268798 () Bool)

(assert (= result!268798 result!268794))

(assert (=> d!1139081 t!309900))

(declare-fun b_and!285489 () Bool)

(assert (= b_and!285469 (and (=> t!309900 result!268798) b_and!285489)))

(declare-fun tb!220553 () Bool)

(declare-fun t!309902 () Bool)

(assert (=> (and b!3836996 (= (toChars!8518 (transformation!6243 (h!45946 rules!2768))) (toChars!8518 (transformation!6243 (rule!9079 (_1!22986 (v!38952 lt!1331518)))))) t!309902) tb!220553))

(declare-fun result!268800 () Bool)

(assert (= result!268800 result!268794))

(assert (=> d!1139081 t!309902))

(declare-fun b_and!285491 () Bool)

(assert (= b_and!285473 (and (=> t!309902 result!268800) b_and!285491)))

(declare-fun m!4391501 () Bool)

(assert (=> d!1139081 m!4391501))

(declare-fun m!4391503 () Bool)

(assert (=> d!1139081 m!4391503))

(assert (=> b!3837014 d!1139081))

(declare-fun b!3837108 () Bool)

(declare-fun res!1553028 () Bool)

(declare-fun e!2369813 () Bool)

(assert (=> b!3837108 (=> (not res!1553028) (not e!2369813))))

(declare-fun lt!1331556 () List!40648)

(assert (=> b!3837108 (= res!1553028 (= (size!30524 lt!1331556) (+ (size!30524 lt!1331514) (size!30524 (_2!22986 (v!38952 lt!1331518))))))))

(declare-fun d!1139083 () Bool)

(assert (=> d!1139083 e!2369813))

(declare-fun res!1553027 () Bool)

(assert (=> d!1139083 (=> (not res!1553027) (not e!2369813))))

(declare-fun content!6021 (List!40648) (Set C!22482))

(assert (=> d!1139083 (= res!1553027 (= (content!6021 lt!1331556) (set.union (content!6021 lt!1331514) (content!6021 (_2!22986 (v!38952 lt!1331518))))))))

(declare-fun e!2369814 () List!40648)

(assert (=> d!1139083 (= lt!1331556 e!2369814)))

(declare-fun c!669014 () Bool)

(assert (=> d!1139083 (= c!669014 (is-Nil!40524 lt!1331514))))

(assert (=> d!1139083 (= (++!10244 lt!1331514 (_2!22986 (v!38952 lt!1331518))) lt!1331556)))

(declare-fun b!3837106 () Bool)

(assert (=> b!3837106 (= e!2369814 (_2!22986 (v!38952 lt!1331518)))))

(declare-fun b!3837109 () Bool)

(assert (=> b!3837109 (= e!2369813 (or (not (= (_2!22986 (v!38952 lt!1331518)) Nil!40524)) (= lt!1331556 lt!1331514)))))

(declare-fun b!3837107 () Bool)

(assert (=> b!3837107 (= e!2369814 (Cons!40524 (h!45944 lt!1331514) (++!10244 (t!309889 lt!1331514) (_2!22986 (v!38952 lt!1331518)))))))

(assert (= (and d!1139083 c!669014) b!3837106))

(assert (= (and d!1139083 (not c!669014)) b!3837107))

(assert (= (and d!1139083 res!1553027) b!3837108))

(assert (= (and b!3837108 res!1553028) b!3837109))

(declare-fun m!4391505 () Bool)

(assert (=> b!3837108 m!4391505))

(assert (=> b!3837108 m!4391391))

(declare-fun m!4391507 () Bool)

(assert (=> b!3837108 m!4391507))

(declare-fun m!4391509 () Bool)

(assert (=> d!1139083 m!4391509))

(declare-fun m!4391511 () Bool)

(assert (=> d!1139083 m!4391511))

(declare-fun m!4391513 () Bool)

(assert (=> d!1139083 m!4391513))

(declare-fun m!4391515 () Bool)

(assert (=> b!3837107 m!4391515))

(assert (=> b!3837014 d!1139083))

(declare-fun d!1139085 () Bool)

(assert (=> d!1139085 (isPrefix!3342 lt!1331514 (++!10244 lt!1331514 (_2!22986 (v!38952 lt!1331518))))))

(declare-fun lt!1331559 () Unit!58257)

(declare-fun choose!22556 (List!40648 List!40648) Unit!58257)

(assert (=> d!1139085 (= lt!1331559 (choose!22556 lt!1331514 (_2!22986 (v!38952 lt!1331518))))))

(assert (=> d!1139085 (= (lemmaConcatTwoListThenFirstIsPrefix!2205 lt!1331514 (_2!22986 (v!38952 lt!1331518))) lt!1331559)))

(declare-fun bs!582541 () Bool)

(assert (= bs!582541 d!1139085))

(assert (=> bs!582541 m!4391403))

(assert (=> bs!582541 m!4391403))

(assert (=> bs!582541 m!4391405))

(declare-fun m!4391517 () Bool)

(assert (=> bs!582541 m!4391517))

(assert (=> b!3837014 d!1139085))

(declare-fun d!1139087 () Bool)

(declare-fun lt!1331562 () Int)

(assert (=> d!1139087 (>= lt!1331562 0)))

(declare-fun e!2369817 () Int)

(assert (=> d!1139087 (= lt!1331562 e!2369817)))

(declare-fun c!669017 () Bool)

(assert (=> d!1139087 (= c!669017 (is-Nil!40524 lt!1331512))))

(assert (=> d!1139087 (= (size!30524 lt!1331512) lt!1331562)))

(declare-fun b!3837114 () Bool)

(assert (=> b!3837114 (= e!2369817 0)))

(declare-fun b!3837115 () Bool)

(assert (=> b!3837115 (= e!2369817 (+ 1 (size!30524 (t!309889 lt!1331512))))))

(assert (= (and d!1139087 c!669017) b!3837114))

(assert (= (and d!1139087 (not c!669017)) b!3837115))

(declare-fun m!4391519 () Bool)

(assert (=> b!3837115 m!4391519))

(assert (=> b!3837014 d!1139087))

(declare-fun d!1139089 () Bool)

(assert (=> d!1139089 (ruleValid!2195 thiss!20629 (rule!9079 (_1!22986 (v!38952 lt!1331518))))))

(declare-fun lt!1331565 () Unit!58257)

(declare-fun choose!22557 (LexerInterface!5832 Rule!12286 List!40650) Unit!58257)

(assert (=> d!1139089 (= lt!1331565 (choose!22557 thiss!20629 (rule!9079 (_1!22986 (v!38952 lt!1331518))) rules!2768))))

(declare-fun contains!8223 (List!40650 Rule!12286) Bool)

(assert (=> d!1139089 (contains!8223 rules!2768 (rule!9079 (_1!22986 (v!38952 lt!1331518))))))

(assert (=> d!1139089 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1275 thiss!20629 (rule!9079 (_1!22986 (v!38952 lt!1331518))) rules!2768) lt!1331565)))

(declare-fun bs!582542 () Bool)

(assert (= bs!582542 d!1139089))

(assert (=> bs!582542 m!4391389))

(declare-fun m!4391521 () Bool)

(assert (=> bs!582542 m!4391521))

(declare-fun m!4391523 () Bool)

(assert (=> bs!582542 m!4391523))

(assert (=> b!3837014 d!1139089))

(declare-fun b!3837142 () Bool)

(declare-fun e!2369831 () Bool)

(declare-fun e!2369832 () Bool)

(assert (=> b!3837142 (= e!2369831 e!2369832)))

(declare-fun res!1553051 () Bool)

(assert (=> b!3837142 (=> (not res!1553051) (not e!2369832))))

(assert (=> b!3837142 (= res!1553051 (not (is-Nil!40524 (++!10244 lt!1331514 (_2!22986 (v!38952 lt!1331518))))))))

(declare-fun b!3837144 () Bool)

(declare-fun tail!5800 (List!40648) List!40648)

(assert (=> b!3837144 (= e!2369832 (isPrefix!3342 (tail!5800 lt!1331514) (tail!5800 (++!10244 lt!1331514 (_2!22986 (v!38952 lt!1331518))))))))

(declare-fun d!1139091 () Bool)

(declare-fun e!2369830 () Bool)

(assert (=> d!1139091 e!2369830))

(declare-fun res!1553053 () Bool)

(assert (=> d!1139091 (=> res!1553053 e!2369830)))

(declare-fun lt!1331578 () Bool)

(assert (=> d!1139091 (= res!1553053 (not lt!1331578))))

(assert (=> d!1139091 (= lt!1331578 e!2369831)))

(declare-fun res!1553054 () Bool)

(assert (=> d!1139091 (=> res!1553054 e!2369831)))

(assert (=> d!1139091 (= res!1553054 (is-Nil!40524 lt!1331514))))

(assert (=> d!1139091 (= (isPrefix!3342 lt!1331514 (++!10244 lt!1331514 (_2!22986 (v!38952 lt!1331518)))) lt!1331578)))

(declare-fun b!3837143 () Bool)

(declare-fun res!1553052 () Bool)

(assert (=> b!3837143 (=> (not res!1553052) (not e!2369832))))

(declare-fun head!8073 (List!40648) C!22482)

(assert (=> b!3837143 (= res!1553052 (= (head!8073 lt!1331514) (head!8073 (++!10244 lt!1331514 (_2!22986 (v!38952 lt!1331518))))))))

(declare-fun b!3837145 () Bool)

(assert (=> b!3837145 (= e!2369830 (>= (size!30524 (++!10244 lt!1331514 (_2!22986 (v!38952 lt!1331518)))) (size!30524 lt!1331514)))))

(assert (= (and d!1139091 (not res!1553054)) b!3837142))

(assert (= (and b!3837142 res!1553051) b!3837143))

(assert (= (and b!3837143 res!1553052) b!3837144))

(assert (= (and d!1139091 (not res!1553053)) b!3837145))

(declare-fun m!4391525 () Bool)

(assert (=> b!3837144 m!4391525))

(assert (=> b!3837144 m!4391403))

(declare-fun m!4391527 () Bool)

(assert (=> b!3837144 m!4391527))

(assert (=> b!3837144 m!4391525))

(assert (=> b!3837144 m!4391527))

(declare-fun m!4391529 () Bool)

(assert (=> b!3837144 m!4391529))

(declare-fun m!4391531 () Bool)

(assert (=> b!3837143 m!4391531))

(assert (=> b!3837143 m!4391403))

(declare-fun m!4391533 () Bool)

(assert (=> b!3837143 m!4391533))

(assert (=> b!3837145 m!4391403))

(declare-fun m!4391535 () Bool)

(assert (=> b!3837145 m!4391535))

(assert (=> b!3837145 m!4391391))

(assert (=> b!3837014 d!1139091))

(declare-fun d!1139093 () Bool)

(declare-fun list!15101 (Conc!12454) List!40648)

(assert (=> d!1139093 (= (list!15099 (charsOf!4071 (_1!22986 (v!38952 lt!1331518)))) (list!15101 (c!669007 (charsOf!4071 (_1!22986 (v!38952 lt!1331518))))))))

(declare-fun bs!582543 () Bool)

(assert (= bs!582543 d!1139093))

(declare-fun m!4391537 () Bool)

(assert (=> bs!582543 m!4391537))

(assert (=> b!3837014 d!1139093))

(declare-fun d!1139095 () Bool)

(declare-fun lt!1331581 () List!40648)

(assert (=> d!1139095 (= (++!10244 lt!1331514 lt!1331581) lt!1331512)))

(declare-fun e!2369835 () List!40648)

(assert (=> d!1139095 (= lt!1331581 e!2369835)))

(declare-fun c!669022 () Bool)

(assert (=> d!1139095 (= c!669022 (is-Cons!40524 lt!1331514))))

(assert (=> d!1139095 (>= (size!30524 lt!1331512) (size!30524 lt!1331514))))

(assert (=> d!1139095 (= (getSuffix!1797 lt!1331512 lt!1331514) lt!1331581)))

(declare-fun b!3837150 () Bool)

(assert (=> b!3837150 (= e!2369835 (getSuffix!1797 (tail!5800 lt!1331512) (t!309889 lt!1331514)))))

(declare-fun b!3837151 () Bool)

(assert (=> b!3837151 (= e!2369835 lt!1331512)))

(assert (= (and d!1139095 c!669022) b!3837150))

(assert (= (and d!1139095 (not c!669022)) b!3837151))

(declare-fun m!4391539 () Bool)

(assert (=> d!1139095 m!4391539))

(assert (=> d!1139095 m!4391401))

(assert (=> d!1139095 m!4391391))

(declare-fun m!4391541 () Bool)

(assert (=> b!3837150 m!4391541))

(assert (=> b!3837150 m!4391541))

(declare-fun m!4391543 () Bool)

(assert (=> b!3837150 m!4391543))

(assert (=> b!3837014 d!1139095))

(declare-fun d!1139097 () Bool)

(declare-fun lt!1331582 () Int)

(assert (=> d!1139097 (>= lt!1331582 0)))

(declare-fun e!2369836 () Int)

(assert (=> d!1139097 (= lt!1331582 e!2369836)))

(declare-fun c!669023 () Bool)

(assert (=> d!1139097 (= c!669023 (is-Nil!40524 lt!1331514))))

(assert (=> d!1139097 (= (size!30524 lt!1331514) lt!1331582)))

(declare-fun b!3837152 () Bool)

(assert (=> b!3837152 (= e!2369836 0)))

(declare-fun b!3837153 () Bool)

(assert (=> b!3837153 (= e!2369836 (+ 1 (size!30524 (t!309889 lt!1331514))))))

(assert (= (and d!1139097 c!669023) b!3837152))

(assert (= (and d!1139097 (not c!669023)) b!3837153))

(declare-fun m!4391545 () Bool)

(assert (=> b!3837153 m!4391545))

(assert (=> b!3837014 d!1139097))

(declare-fun d!1139099 () Bool)

(assert (=> d!1139099 (= (isEmpty!23934 prefix!426) (is-Nil!40524 prefix!426))))

(assert (=> b!3837003 d!1139099))

(declare-fun d!1139101 () Bool)

(assert (=> d!1139101 (= (isEmpty!23935 rules!2768) (is-Nil!40526 rules!2768))))

(assert (=> b!3837004 d!1139101))

(declare-fun b!3837173 () Bool)

(declare-fun res!1553064 () Bool)

(declare-fun e!2369848 () Bool)

(assert (=> b!3837173 (=> res!1553064 e!2369848)))

(assert (=> b!3837173 (= res!1553064 (not (is-IntegerValue!19421 (value!198561 (h!45947 prefixTokens!80)))))))

(declare-fun e!2369847 () Bool)

(assert (=> b!3837173 (= e!2369847 e!2369848)))

(declare-fun b!3837174 () Bool)

(declare-fun e!2369846 () Bool)

(assert (=> b!3837174 (= e!2369846 e!2369847)))

(declare-fun c!669029 () Bool)

(assert (=> b!3837174 (= c!669029 (is-IntegerValue!19420 (value!198561 (h!45947 prefixTokens!80))))))

(declare-fun d!1139103 () Bool)

(declare-fun c!669030 () Bool)

(assert (=> d!1139103 (= c!669030 (is-IntegerValue!19419 (value!198561 (h!45947 prefixTokens!80))))))

(assert (=> d!1139103 (= (inv!21 (value!198561 (h!45947 prefixTokens!80))) e!2369846)))

(declare-fun b!3837175 () Bool)

(declare-fun inv!16 (TokenValue!6473) Bool)

(assert (=> b!3837175 (= e!2369846 (inv!16 (value!198561 (h!45947 prefixTokens!80))))))

(declare-fun b!3837176 () Bool)

(declare-fun inv!15 (TokenValue!6473) Bool)

(assert (=> b!3837176 (= e!2369848 (inv!15 (value!198561 (h!45947 prefixTokens!80))))))

(declare-fun b!3837177 () Bool)

(declare-fun inv!17 (TokenValue!6473) Bool)

(assert (=> b!3837177 (= e!2369847 (inv!17 (value!198561 (h!45947 prefixTokens!80))))))

(assert (= (and d!1139103 c!669030) b!3837175))

(assert (= (and d!1139103 (not c!669030)) b!3837174))

(assert (= (and b!3837174 c!669029) b!3837177))

(assert (= (and b!3837174 (not c!669029)) b!3837173))

(assert (= (and b!3837173 (not res!1553064)) b!3837176))

(declare-fun m!4391553 () Bool)

(assert (=> b!3837175 m!4391553))

(declare-fun m!4391557 () Bool)

(assert (=> b!3837176 m!4391557))

(declare-fun m!4391559 () Bool)

(assert (=> b!3837177 m!4391559))

(assert (=> b!3836994 d!1139103))

(declare-fun b!3837205 () Bool)

(declare-fun res!1553087 () Bool)

(declare-fun e!2369862 () Bool)

(assert (=> b!3837205 (=> (not res!1553087) (not e!2369862))))

(declare-fun lt!1331603 () Option!8661)

(declare-fun get!13439 (Option!8661) tuple2!39704)

(assert (=> b!3837205 (= res!1553087 (= (list!15099 (charsOf!4071 (_1!22986 (get!13439 lt!1331603)))) (originalCharacters!6843 (_1!22986 (get!13439 lt!1331603)))))))

(declare-fun b!3837206 () Bool)

(declare-fun res!1553086 () Bool)

(assert (=> b!3837206 (=> (not res!1553086) (not e!2369862))))

(declare-fun matchR!5329 (Regex!11148 List!40648) Bool)

(assert (=> b!3837206 (= res!1553086 (matchR!5329 (regex!6243 (rule!9079 (_1!22986 (get!13439 lt!1331603)))) (list!15099 (charsOf!4071 (_1!22986 (get!13439 lt!1331603))))))))

(declare-fun b!3837207 () Bool)

(declare-fun e!2369861 () Option!8661)

(declare-fun lt!1331604 () Option!8661)

(declare-fun lt!1331605 () Option!8661)

(assert (=> b!3837207 (= e!2369861 (ite (and (is-None!8660 lt!1331604) (is-None!8660 lt!1331605)) None!8660 (ite (is-None!8660 lt!1331605) lt!1331604 (ite (is-None!8660 lt!1331604) lt!1331605 (ite (>= (size!30523 (_1!22986 (v!38952 lt!1331604))) (size!30523 (_1!22986 (v!38952 lt!1331605)))) lt!1331604 lt!1331605)))))))

(declare-fun call!281904 () Option!8661)

(assert (=> b!3837207 (= lt!1331604 call!281904)))

(assert (=> b!3837207 (= lt!1331605 (maxPrefix!3136 thiss!20629 (t!309891 rules!2768) lt!1331512))))

(declare-fun b!3837208 () Bool)

(declare-fun e!2369863 () Bool)

(assert (=> b!3837208 (= e!2369863 e!2369862)))

(declare-fun res!1553083 () Bool)

(assert (=> b!3837208 (=> (not res!1553083) (not e!2369862))))

(declare-fun isDefined!6818 (Option!8661) Bool)

(assert (=> b!3837208 (= res!1553083 (isDefined!6818 lt!1331603))))

(declare-fun b!3837209 () Bool)

(assert (=> b!3837209 (= e!2369862 (contains!8223 rules!2768 (rule!9079 (_1!22986 (get!13439 lt!1331603)))))))

(declare-fun b!3837210 () Bool)

(declare-fun res!1553082 () Bool)

(assert (=> b!3837210 (=> (not res!1553082) (not e!2369862))))

(assert (=> b!3837210 (= res!1553082 (= (value!198561 (_1!22986 (get!13439 lt!1331603))) (apply!9486 (transformation!6243 (rule!9079 (_1!22986 (get!13439 lt!1331603)))) (seqFromList!4514 (originalCharacters!6843 (_1!22986 (get!13439 lt!1331603)))))))))

(declare-fun b!3837211 () Bool)

(declare-fun res!1553088 () Bool)

(assert (=> b!3837211 (=> (not res!1553088) (not e!2369862))))

(assert (=> b!3837211 (= res!1553088 (= (++!10244 (list!15099 (charsOf!4071 (_1!22986 (get!13439 lt!1331603)))) (_2!22986 (get!13439 lt!1331603))) lt!1331512))))

(declare-fun d!1139105 () Bool)

(assert (=> d!1139105 e!2369863))

(declare-fun res!1553084 () Bool)

(assert (=> d!1139105 (=> res!1553084 e!2369863)))

(declare-fun isEmpty!23939 (Option!8661) Bool)

(assert (=> d!1139105 (= res!1553084 (isEmpty!23939 lt!1331603))))

(assert (=> d!1139105 (= lt!1331603 e!2369861)))

(declare-fun c!669036 () Bool)

(assert (=> d!1139105 (= c!669036 (and (is-Cons!40526 rules!2768) (is-Nil!40526 (t!309891 rules!2768))))))

(declare-fun lt!1331602 () Unit!58257)

(declare-fun lt!1331601 () Unit!58257)

(assert (=> d!1139105 (= lt!1331602 lt!1331601)))

(assert (=> d!1139105 (isPrefix!3342 lt!1331512 lt!1331512)))

(declare-fun lemmaIsPrefixRefl!2125 (List!40648 List!40648) Unit!58257)

(assert (=> d!1139105 (= lt!1331601 (lemmaIsPrefixRefl!2125 lt!1331512 lt!1331512))))

(declare-fun rulesValidInductive!2203 (LexerInterface!5832 List!40650) Bool)

(assert (=> d!1139105 (rulesValidInductive!2203 thiss!20629 rules!2768)))

(assert (=> d!1139105 (= (maxPrefix!3136 thiss!20629 rules!2768 lt!1331512) lt!1331603)))

(declare-fun b!3837212 () Bool)

(declare-fun res!1553085 () Bool)

(assert (=> b!3837212 (=> (not res!1553085) (not e!2369862))))

(assert (=> b!3837212 (= res!1553085 (< (size!30524 (_2!22986 (get!13439 lt!1331603))) (size!30524 lt!1331512)))))

(declare-fun bm!281899 () Bool)

(declare-fun maxPrefixOneRule!2230 (LexerInterface!5832 Rule!12286 List!40648) Option!8661)

(assert (=> bm!281899 (= call!281904 (maxPrefixOneRule!2230 thiss!20629 (h!45946 rules!2768) lt!1331512))))

(declare-fun b!3837213 () Bool)

(assert (=> b!3837213 (= e!2369861 call!281904)))

(assert (= (and d!1139105 c!669036) b!3837213))

(assert (= (and d!1139105 (not c!669036)) b!3837207))

(assert (= (or b!3837213 b!3837207) bm!281899))

(assert (= (and d!1139105 (not res!1553084)) b!3837208))

(assert (= (and b!3837208 res!1553083) b!3837205))

(assert (= (and b!3837205 res!1553087) b!3837212))

(assert (= (and b!3837212 res!1553085) b!3837211))

(assert (= (and b!3837211 res!1553088) b!3837210))

(assert (= (and b!3837210 res!1553082) b!3837206))

(assert (= (and b!3837206 res!1553086) b!3837209))

(declare-fun m!4391591 () Bool)

(assert (=> bm!281899 m!4391591))

(declare-fun m!4391593 () Bool)

(assert (=> b!3837210 m!4391593))

(declare-fun m!4391595 () Bool)

(assert (=> b!3837210 m!4391595))

(assert (=> b!3837210 m!4391595))

(declare-fun m!4391597 () Bool)

(assert (=> b!3837210 m!4391597))

(declare-fun m!4391599 () Bool)

(assert (=> d!1139105 m!4391599))

(declare-fun m!4391601 () Bool)

(assert (=> d!1139105 m!4391601))

(declare-fun m!4391603 () Bool)

(assert (=> d!1139105 m!4391603))

(declare-fun m!4391605 () Bool)

(assert (=> d!1139105 m!4391605))

(declare-fun m!4391607 () Bool)

(assert (=> b!3837208 m!4391607))

(declare-fun m!4391609 () Bool)

(assert (=> b!3837207 m!4391609))

(assert (=> b!3837211 m!4391593))

(declare-fun m!4391611 () Bool)

(assert (=> b!3837211 m!4391611))

(assert (=> b!3837211 m!4391611))

(declare-fun m!4391613 () Bool)

(assert (=> b!3837211 m!4391613))

(assert (=> b!3837211 m!4391613))

(declare-fun m!4391615 () Bool)

(assert (=> b!3837211 m!4391615))

(assert (=> b!3837209 m!4391593))

(declare-fun m!4391617 () Bool)

(assert (=> b!3837209 m!4391617))

(assert (=> b!3837205 m!4391593))

(assert (=> b!3837205 m!4391611))

(assert (=> b!3837205 m!4391611))

(assert (=> b!3837205 m!4391613))

(assert (=> b!3837206 m!4391593))

(assert (=> b!3837206 m!4391611))

(assert (=> b!3837206 m!4391611))

(assert (=> b!3837206 m!4391613))

(assert (=> b!3837206 m!4391613))

(declare-fun m!4391619 () Bool)

(assert (=> b!3837206 m!4391619))

(assert (=> b!3837212 m!4391593))

(declare-fun m!4391621 () Bool)

(assert (=> b!3837212 m!4391621))

(assert (=> b!3837212 m!4391401))

(assert (=> b!3837005 d!1139105))

(declare-fun d!1139117 () Bool)

(assert (=> d!1139117 (= (inv!54676 (tag!7103 (rule!9079 (h!45947 prefixTokens!80)))) (= (mod (str.len (value!198560 (tag!7103 (rule!9079 (h!45947 prefixTokens!80))))) 2) 0))))

(assert (=> b!3836995 d!1139117))

(declare-fun d!1139119 () Bool)

(declare-fun res!1553091 () Bool)

(declare-fun e!2369866 () Bool)

(assert (=> d!1139119 (=> (not res!1553091) (not e!2369866))))

(declare-fun semiInverseModEq!2678 (Int Int) Bool)

(assert (=> d!1139119 (= res!1553091 (semiInverseModEq!2678 (toChars!8518 (transformation!6243 (rule!9079 (h!45947 prefixTokens!80)))) (toValue!8659 (transformation!6243 (rule!9079 (h!45947 prefixTokens!80))))))))

(assert (=> d!1139119 (= (inv!54680 (transformation!6243 (rule!9079 (h!45947 prefixTokens!80)))) e!2369866)))

(declare-fun b!3837216 () Bool)

(declare-fun equivClasses!2577 (Int Int) Bool)

(assert (=> b!3837216 (= e!2369866 (equivClasses!2577 (toChars!8518 (transformation!6243 (rule!9079 (h!45947 prefixTokens!80)))) (toValue!8659 (transformation!6243 (rule!9079 (h!45947 prefixTokens!80))))))))

(assert (= (and d!1139119 res!1553091) b!3837216))

(declare-fun m!4391623 () Bool)

(assert (=> d!1139119 m!4391623))

(declare-fun m!4391625 () Bool)

(assert (=> b!3837216 m!4391625))

(assert (=> b!3836995 d!1139119))

(declare-fun b!3837217 () Bool)

(declare-fun res!1553092 () Bool)

(declare-fun e!2369869 () Bool)

(assert (=> b!3837217 (=> res!1553092 e!2369869)))

(assert (=> b!3837217 (= res!1553092 (not (is-IntegerValue!19421 (value!198561 (h!45947 suffixTokens!72)))))))

(declare-fun e!2369868 () Bool)

(assert (=> b!3837217 (= e!2369868 e!2369869)))

(declare-fun b!3837218 () Bool)

(declare-fun e!2369867 () Bool)

(assert (=> b!3837218 (= e!2369867 e!2369868)))

(declare-fun c!669037 () Bool)

(assert (=> b!3837218 (= c!669037 (is-IntegerValue!19420 (value!198561 (h!45947 suffixTokens!72))))))

(declare-fun d!1139121 () Bool)

(declare-fun c!669038 () Bool)

(assert (=> d!1139121 (= c!669038 (is-IntegerValue!19419 (value!198561 (h!45947 suffixTokens!72))))))

(assert (=> d!1139121 (= (inv!21 (value!198561 (h!45947 suffixTokens!72))) e!2369867)))

(declare-fun b!3837219 () Bool)

(assert (=> b!3837219 (= e!2369867 (inv!16 (value!198561 (h!45947 suffixTokens!72))))))

(declare-fun b!3837220 () Bool)

(assert (=> b!3837220 (= e!2369869 (inv!15 (value!198561 (h!45947 suffixTokens!72))))))

(declare-fun b!3837221 () Bool)

(assert (=> b!3837221 (= e!2369868 (inv!17 (value!198561 (h!45947 suffixTokens!72))))))

(assert (= (and d!1139121 c!669038) b!3837219))

(assert (= (and d!1139121 (not c!669038)) b!3837218))

(assert (= (and b!3837218 c!669037) b!3837221))

(assert (= (and b!3837218 (not c!669037)) b!3837217))

(assert (= (and b!3837217 (not res!1553092)) b!3837220))

(declare-fun m!4391627 () Bool)

(assert (=> b!3837219 m!4391627))

(declare-fun m!4391629 () Bool)

(assert (=> b!3837220 m!4391629))

(declare-fun m!4391631 () Bool)

(assert (=> b!3837221 m!4391631))

(assert (=> b!3837007 d!1139121))

(declare-fun d!1139123 () Bool)

(declare-fun e!2369878 () Bool)

(assert (=> d!1139123 e!2369878))

(declare-fun c!669044 () Bool)

(declare-fun lt!1331618 () tuple2!39702)

(declare-fun size!30527 (List!40651) Int)

(assert (=> d!1139123 (= c!669044 (> (size!30527 (_1!22985 lt!1331618)) 0))))

(declare-fun e!2369876 () tuple2!39702)

(assert (=> d!1139123 (= lt!1331618 e!2369876)))

(declare-fun c!669043 () Bool)

(declare-fun lt!1331612 () Option!8661)

(assert (=> d!1139123 (= c!669043 (is-Some!8660 lt!1331612))))

(assert (=> d!1139123 (= lt!1331612 (maxPrefix!3136 thiss!20629 rules!2768 lt!1331512))))

(assert (=> d!1139123 (= (lexList!1600 thiss!20629 rules!2768 lt!1331512) lt!1331618)))

(declare-fun b!3837232 () Bool)

(declare-fun lt!1331617 () tuple2!39702)

(assert (=> b!3837232 (= e!2369876 (tuple2!39703 (Cons!40527 (_1!22986 (v!38952 lt!1331612)) (_1!22985 lt!1331617)) (_2!22985 lt!1331617)))))

(assert (=> b!3837232 (= lt!1331617 (lexList!1600 thiss!20629 rules!2768 (_2!22986 (v!38952 lt!1331612))))))

(declare-fun b!3837233 () Bool)

(assert (=> b!3837233 (= e!2369878 (= (_2!22985 lt!1331618) lt!1331512))))

(declare-fun b!3837234 () Bool)

(declare-fun e!2369877 () Bool)

(assert (=> b!3837234 (= e!2369878 e!2369877)))

(declare-fun res!1553095 () Bool)

(assert (=> b!3837234 (= res!1553095 (< (size!30524 (_2!22985 lt!1331618)) (size!30524 lt!1331512)))))

(assert (=> b!3837234 (=> (not res!1553095) (not e!2369877))))

(declare-fun b!3837235 () Bool)

(assert (=> b!3837235 (= e!2369877 (not (isEmpty!23933 (_1!22985 lt!1331618))))))

(declare-fun b!3837236 () Bool)

(assert (=> b!3837236 (= e!2369876 (tuple2!39703 Nil!40527 lt!1331512))))

(assert (= (and d!1139123 c!669043) b!3837232))

(assert (= (and d!1139123 (not c!669043)) b!3837236))

(assert (= (and d!1139123 c!669044) b!3837234))

(assert (= (and d!1139123 (not c!669044)) b!3837233))

(assert (= (and b!3837234 res!1553095) b!3837235))

(declare-fun m!4391633 () Bool)

(assert (=> d!1139123 m!4391633))

(assert (=> d!1139123 m!4391353))

(declare-fun m!4391635 () Bool)

(assert (=> b!3837232 m!4391635))

(declare-fun m!4391637 () Bool)

(assert (=> b!3837234 m!4391637))

(assert (=> b!3837234 m!4391401))

(declare-fun m!4391639 () Bool)

(assert (=> b!3837235 m!4391639))

(assert (=> b!3837008 d!1139123))

(declare-fun b!3837256 () Bool)

(declare-fun e!2369890 () List!40651)

(assert (=> b!3837256 (= e!2369890 (Cons!40527 (h!45947 prefixTokens!80) (++!10243 (t!309892 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3837255 () Bool)

(assert (=> b!3837255 (= e!2369890 suffixTokens!72)))

(declare-fun d!1139125 () Bool)

(declare-fun e!2369889 () Bool)

(assert (=> d!1139125 e!2369889))

(declare-fun res!1553103 () Bool)

(assert (=> d!1139125 (=> (not res!1553103) (not e!2369889))))

(declare-fun lt!1331623 () List!40651)

(declare-fun content!6022 (List!40651) (Set Token!11624))

(assert (=> d!1139125 (= res!1553103 (= (content!6022 lt!1331623) (set.union (content!6022 prefixTokens!80) (content!6022 suffixTokens!72))))))

(assert (=> d!1139125 (= lt!1331623 e!2369890)))

(declare-fun c!669052 () Bool)

(assert (=> d!1139125 (= c!669052 (is-Nil!40527 prefixTokens!80))))

(assert (=> d!1139125 (= (++!10243 prefixTokens!80 suffixTokens!72) lt!1331623)))

(declare-fun b!3837257 () Bool)

(declare-fun res!1553102 () Bool)

(assert (=> b!3837257 (=> (not res!1553102) (not e!2369889))))

(assert (=> b!3837257 (= res!1553102 (= (size!30527 lt!1331623) (+ (size!30527 prefixTokens!80) (size!30527 suffixTokens!72))))))

(declare-fun b!3837258 () Bool)

(assert (=> b!3837258 (= e!2369889 (or (not (= suffixTokens!72 Nil!40527)) (= lt!1331623 prefixTokens!80)))))

(assert (= (and d!1139125 c!669052) b!3837255))

(assert (= (and d!1139125 (not c!669052)) b!3837256))

(assert (= (and d!1139125 res!1553103) b!3837257))

(assert (= (and b!3837257 res!1553102) b!3837258))

(declare-fun m!4391641 () Bool)

(assert (=> b!3837256 m!4391641))

(declare-fun m!4391643 () Bool)

(assert (=> d!1139125 m!4391643))

(declare-fun m!4391645 () Bool)

(assert (=> d!1139125 m!4391645))

(declare-fun m!4391647 () Bool)

(assert (=> d!1139125 m!4391647))

(declare-fun m!4391649 () Bool)

(assert (=> b!3837257 m!4391649))

(declare-fun m!4391651 () Bool)

(assert (=> b!3837257 m!4391651))

(declare-fun m!4391653 () Bool)

(assert (=> b!3837257 m!4391653))

(assert (=> b!3837008 d!1139125))

(declare-fun b!3837266 () Bool)

(declare-fun res!1553106 () Bool)

(declare-fun e!2369894 () Bool)

(assert (=> b!3837266 (=> (not res!1553106) (not e!2369894))))

(declare-fun lt!1331627 () List!40648)

(assert (=> b!3837266 (= res!1553106 (= (size!30524 lt!1331627) (+ (size!30524 prefix!426) (size!30524 suffix!1176))))))

(declare-fun d!1139127 () Bool)

(assert (=> d!1139127 e!2369894))

(declare-fun res!1553105 () Bool)

(assert (=> d!1139127 (=> (not res!1553105) (not e!2369894))))

(assert (=> d!1139127 (= res!1553105 (= (content!6021 lt!1331627) (set.union (content!6021 prefix!426) (content!6021 suffix!1176))))))

(declare-fun e!2369895 () List!40648)

(assert (=> d!1139127 (= lt!1331627 e!2369895)))

(declare-fun c!669054 () Bool)

(assert (=> d!1139127 (= c!669054 (is-Nil!40524 prefix!426))))

(assert (=> d!1139127 (= (++!10244 prefix!426 suffix!1176) lt!1331627)))

(declare-fun b!3837264 () Bool)

(assert (=> b!3837264 (= e!2369895 suffix!1176)))

(declare-fun b!3837267 () Bool)

(assert (=> b!3837267 (= e!2369894 (or (not (= suffix!1176 Nil!40524)) (= lt!1331627 prefix!426)))))

(declare-fun b!3837265 () Bool)

(assert (=> b!3837265 (= e!2369895 (Cons!40524 (h!45944 prefix!426) (++!10244 (t!309889 prefix!426) suffix!1176)))))

(assert (= (and d!1139127 c!669054) b!3837264))

(assert (= (and d!1139127 (not c!669054)) b!3837265))

(assert (= (and d!1139127 res!1553105) b!3837266))

(assert (= (and b!3837266 res!1553106) b!3837267))

(declare-fun m!4391659 () Bool)

(assert (=> b!3837266 m!4391659))

(declare-fun m!4391661 () Bool)

(assert (=> b!3837266 m!4391661))

(declare-fun m!4391665 () Bool)

(assert (=> b!3837266 m!4391665))

(declare-fun m!4391667 () Bool)

(assert (=> d!1139127 m!4391667))

(declare-fun m!4391669 () Bool)

(assert (=> d!1139127 m!4391669))

(declare-fun m!4391673 () Bool)

(assert (=> d!1139127 m!4391673))

(declare-fun m!4391677 () Bool)

(assert (=> b!3837265 m!4391677))

(assert (=> b!3837008 d!1139127))

(declare-fun d!1139129 () Bool)

(assert (=> d!1139129 (= (isEmpty!23933 prefixTokens!80) (is-Nil!40527 prefixTokens!80))))

(assert (=> b!3836997 d!1139129))

(declare-fun d!1139133 () Bool)

(declare-fun dynLambda!17556 (Int BalanceConc!24502) TokenValue!6473)

(assert (=> d!1139133 (= (apply!9486 (transformation!6243 (rule!9079 (_1!22986 (v!38952 lt!1331518)))) (seqFromList!4514 lt!1331514)) (dynLambda!17556 (toValue!8659 (transformation!6243 (rule!9079 (_1!22986 (v!38952 lt!1331518))))) (seqFromList!4514 lt!1331514)))))

(declare-fun b_lambda!112189 () Bool)

(assert (=> (not b_lambda!112189) (not d!1139133)))

(declare-fun tb!220555 () Bool)

(declare-fun t!309904 () Bool)

(assert (=> (and b!3836998 (= (toValue!8659 (transformation!6243 (rule!9079 (h!45947 suffixTokens!72)))) (toValue!8659 (transformation!6243 (rule!9079 (_1!22986 (v!38952 lt!1331518)))))) t!309904) tb!220555))

(declare-fun result!268802 () Bool)

(assert (=> tb!220555 (= result!268802 (inv!21 (dynLambda!17556 (toValue!8659 (transformation!6243 (rule!9079 (_1!22986 (v!38952 lt!1331518))))) (seqFromList!4514 lt!1331514))))))

(declare-fun m!4391681 () Bool)

(assert (=> tb!220555 m!4391681))

(assert (=> d!1139133 t!309904))

(declare-fun b_and!285493 () Bool)

(assert (= b_and!285463 (and (=> t!309904 result!268802) b_and!285493)))

(declare-fun t!309906 () Bool)

(declare-fun tb!220557 () Bool)

(assert (=> (and b!3836993 (= (toValue!8659 (transformation!6243 (rule!9079 (h!45947 prefixTokens!80)))) (toValue!8659 (transformation!6243 (rule!9079 (_1!22986 (v!38952 lt!1331518)))))) t!309906) tb!220557))

(declare-fun result!268806 () Bool)

(assert (= result!268806 result!268802))

(assert (=> d!1139133 t!309906))

(declare-fun b_and!285495 () Bool)

(assert (= b_and!285467 (and (=> t!309906 result!268806) b_and!285495)))

(declare-fun tb!220559 () Bool)

(declare-fun t!309908 () Bool)

(assert (=> (and b!3836996 (= (toValue!8659 (transformation!6243 (h!45946 rules!2768))) (toValue!8659 (transformation!6243 (rule!9079 (_1!22986 (v!38952 lt!1331518)))))) t!309908) tb!220559))

(declare-fun result!268808 () Bool)

(assert (= result!268808 result!268802))

(assert (=> d!1139133 t!309908))

(declare-fun b_and!285497 () Bool)

(assert (= b_and!285471 (and (=> t!309908 result!268808) b_and!285497)))

(assert (=> d!1139133 m!4391361))

(declare-fun m!4391683 () Bool)

(assert (=> d!1139133 m!4391683))

(assert (=> b!3837009 d!1139133))

(declare-fun d!1139135 () Bool)

(declare-fun fromListB!2088 (List!40648) BalanceConc!24502)

(assert (=> d!1139135 (= (seqFromList!4514 lt!1331514) (fromListB!2088 lt!1331514))))

(declare-fun bs!582544 () Bool)

(assert (= bs!582544 d!1139135))

(declare-fun m!4391685 () Bool)

(assert (=> bs!582544 m!4391685))

(assert (=> b!3837009 d!1139135))

(declare-fun d!1139137 () Bool)

(declare-fun res!1553115 () Bool)

(declare-fun e!2369905 () Bool)

(assert (=> d!1139137 (=> (not res!1553115) (not e!2369905))))

(assert (=> d!1139137 (= res!1553115 (not (isEmpty!23934 (originalCharacters!6843 (h!45947 prefixTokens!80)))))))

(assert (=> d!1139137 (= (inv!54679 (h!45947 prefixTokens!80)) e!2369905)))

(declare-fun b!3837278 () Bool)

(declare-fun res!1553116 () Bool)

(assert (=> b!3837278 (=> (not res!1553116) (not e!2369905))))

(assert (=> b!3837278 (= res!1553116 (= (originalCharacters!6843 (h!45947 prefixTokens!80)) (list!15099 (dynLambda!17555 (toChars!8518 (transformation!6243 (rule!9079 (h!45947 prefixTokens!80)))) (value!198561 (h!45947 prefixTokens!80))))))))

(declare-fun b!3837279 () Bool)

(assert (=> b!3837279 (= e!2369905 (= (size!30523 (h!45947 prefixTokens!80)) (size!30524 (originalCharacters!6843 (h!45947 prefixTokens!80)))))))

(assert (= (and d!1139137 res!1553115) b!3837278))

(assert (= (and b!3837278 res!1553116) b!3837279))

(declare-fun b_lambda!112191 () Bool)

(assert (=> (not b_lambda!112191) (not b!3837278)))

(declare-fun tb!220561 () Bool)

(declare-fun t!309910 () Bool)

(assert (=> (and b!3836998 (= (toChars!8518 (transformation!6243 (rule!9079 (h!45947 suffixTokens!72)))) (toChars!8518 (transformation!6243 (rule!9079 (h!45947 prefixTokens!80))))) t!309910) tb!220561))

(declare-fun b!3837280 () Bool)

(declare-fun e!2369906 () Bool)

(declare-fun tp!1161590 () Bool)

(assert (=> b!3837280 (= e!2369906 (and (inv!54683 (c!669007 (dynLambda!17555 (toChars!8518 (transformation!6243 (rule!9079 (h!45947 prefixTokens!80)))) (value!198561 (h!45947 prefixTokens!80))))) tp!1161590))))

(declare-fun result!268810 () Bool)

(assert (=> tb!220561 (= result!268810 (and (inv!54684 (dynLambda!17555 (toChars!8518 (transformation!6243 (rule!9079 (h!45947 prefixTokens!80)))) (value!198561 (h!45947 prefixTokens!80)))) e!2369906))))

(assert (= tb!220561 b!3837280))

(declare-fun m!4391695 () Bool)

(assert (=> b!3837280 m!4391695))

(declare-fun m!4391697 () Bool)

(assert (=> tb!220561 m!4391697))

(assert (=> b!3837278 t!309910))

(declare-fun b_and!285499 () Bool)

(assert (= b_and!285487 (and (=> t!309910 result!268810) b_and!285499)))

(declare-fun t!309912 () Bool)

(declare-fun tb!220563 () Bool)

(assert (=> (and b!3836993 (= (toChars!8518 (transformation!6243 (rule!9079 (h!45947 prefixTokens!80)))) (toChars!8518 (transformation!6243 (rule!9079 (h!45947 prefixTokens!80))))) t!309912) tb!220563))

(declare-fun result!268812 () Bool)

(assert (= result!268812 result!268810))

(assert (=> b!3837278 t!309912))

(declare-fun b_and!285501 () Bool)

(assert (= b_and!285489 (and (=> t!309912 result!268812) b_and!285501)))

(declare-fun t!309914 () Bool)

(declare-fun tb!220565 () Bool)

(assert (=> (and b!3836996 (= (toChars!8518 (transformation!6243 (h!45946 rules!2768))) (toChars!8518 (transformation!6243 (rule!9079 (h!45947 prefixTokens!80))))) t!309914) tb!220565))

(declare-fun result!268814 () Bool)

(assert (= result!268814 result!268810))

(assert (=> b!3837278 t!309914))

(declare-fun b_and!285503 () Bool)

(assert (= b_and!285491 (and (=> t!309914 result!268814) b_and!285503)))

(declare-fun m!4391699 () Bool)

(assert (=> d!1139137 m!4391699))

(declare-fun m!4391701 () Bool)

(assert (=> b!3837278 m!4391701))

(assert (=> b!3837278 m!4391701))

(declare-fun m!4391703 () Bool)

(assert (=> b!3837278 m!4391703))

(declare-fun m!4391705 () Bool)

(assert (=> b!3837279 m!4391705))

(assert (=> b!3836999 d!1139137))

(declare-fun d!1139145 () Bool)

(declare-fun res!1553121 () Bool)

(declare-fun e!2369915 () Bool)

(assert (=> d!1139145 (=> (not res!1553121) (not e!2369915))))

(declare-fun rulesValid!2414 (LexerInterface!5832 List!40650) Bool)

(assert (=> d!1139145 (= res!1553121 (rulesValid!2414 thiss!20629 rules!2768))))

(assert (=> d!1139145 (= (rulesInvariant!5175 thiss!20629 rules!2768) e!2369915)))

(declare-fun b!3837293 () Bool)

(declare-datatypes ((List!40657 0))(
  ( (Nil!40533) (Cons!40533 (h!45953 String!46085) (t!309994 List!40657)) )
))
(declare-fun noDuplicateTag!2415 (LexerInterface!5832 List!40650 List!40657) Bool)

(assert (=> b!3837293 (= e!2369915 (noDuplicateTag!2415 thiss!20629 rules!2768 Nil!40533))))

(assert (= (and d!1139145 res!1553121) b!3837293))

(declare-fun m!4391707 () Bool)

(assert (=> d!1139145 m!4391707))

(declare-fun m!4391709 () Bool)

(assert (=> b!3837293 m!4391709))

(assert (=> b!3837012 d!1139145))

(declare-fun d!1139147 () Bool)

(assert (=> d!1139147 (= (inv!54676 (tag!7103 (h!45946 rules!2768))) (= (mod (str.len (value!198560 (tag!7103 (h!45946 rules!2768)))) 2) 0))))

(assert (=> b!3837001 d!1139147))

(declare-fun d!1139149 () Bool)

(declare-fun res!1553122 () Bool)

(declare-fun e!2369916 () Bool)

(assert (=> d!1139149 (=> (not res!1553122) (not e!2369916))))

(assert (=> d!1139149 (= res!1553122 (semiInverseModEq!2678 (toChars!8518 (transformation!6243 (h!45946 rules!2768))) (toValue!8659 (transformation!6243 (h!45946 rules!2768)))))))

(assert (=> d!1139149 (= (inv!54680 (transformation!6243 (h!45946 rules!2768))) e!2369916)))

(declare-fun b!3837294 () Bool)

(assert (=> b!3837294 (= e!2369916 (equivClasses!2577 (toChars!8518 (transformation!6243 (h!45946 rules!2768))) (toValue!8659 (transformation!6243 (h!45946 rules!2768)))))))

(assert (= (and d!1139149 res!1553122) b!3837294))

(declare-fun m!4391711 () Bool)

(assert (=> d!1139149 m!4391711))

(declare-fun m!4391713 () Bool)

(assert (=> b!3837294 m!4391713))

(assert (=> b!3837001 d!1139149))

(declare-fun d!1139151 () Bool)

(declare-fun res!1553123 () Bool)

(declare-fun e!2369917 () Bool)

(assert (=> d!1139151 (=> (not res!1553123) (not e!2369917))))

(assert (=> d!1139151 (= res!1553123 (not (isEmpty!23934 (originalCharacters!6843 (h!45947 suffixTokens!72)))))))

(assert (=> d!1139151 (= (inv!54679 (h!45947 suffixTokens!72)) e!2369917)))

(declare-fun b!3837295 () Bool)

(declare-fun res!1553124 () Bool)

(assert (=> b!3837295 (=> (not res!1553124) (not e!2369917))))

(assert (=> b!3837295 (= res!1553124 (= (originalCharacters!6843 (h!45947 suffixTokens!72)) (list!15099 (dynLambda!17555 (toChars!8518 (transformation!6243 (rule!9079 (h!45947 suffixTokens!72)))) (value!198561 (h!45947 suffixTokens!72))))))))

(declare-fun b!3837296 () Bool)

(assert (=> b!3837296 (= e!2369917 (= (size!30523 (h!45947 suffixTokens!72)) (size!30524 (originalCharacters!6843 (h!45947 suffixTokens!72)))))))

(assert (= (and d!1139151 res!1553123) b!3837295))

(assert (= (and b!3837295 res!1553124) b!3837296))

(declare-fun b_lambda!112193 () Bool)

(assert (=> (not b_lambda!112193) (not b!3837295)))

(declare-fun t!309916 () Bool)

(declare-fun tb!220567 () Bool)

(assert (=> (and b!3836998 (= (toChars!8518 (transformation!6243 (rule!9079 (h!45947 suffixTokens!72)))) (toChars!8518 (transformation!6243 (rule!9079 (h!45947 suffixTokens!72))))) t!309916) tb!220567))

(declare-fun b!3837297 () Bool)

(declare-fun e!2369919 () Bool)

(declare-fun tp!1161591 () Bool)

(assert (=> b!3837297 (= e!2369919 (and (inv!54683 (c!669007 (dynLambda!17555 (toChars!8518 (transformation!6243 (rule!9079 (h!45947 suffixTokens!72)))) (value!198561 (h!45947 suffixTokens!72))))) tp!1161591))))

(declare-fun result!268816 () Bool)

(assert (=> tb!220567 (= result!268816 (and (inv!54684 (dynLambda!17555 (toChars!8518 (transformation!6243 (rule!9079 (h!45947 suffixTokens!72)))) (value!198561 (h!45947 suffixTokens!72)))) e!2369919))))

(assert (= tb!220567 b!3837297))

(declare-fun m!4391715 () Bool)

(assert (=> b!3837297 m!4391715))

(declare-fun m!4391717 () Bool)

(assert (=> tb!220567 m!4391717))

(assert (=> b!3837295 t!309916))

(declare-fun b_and!285505 () Bool)

(assert (= b_and!285499 (and (=> t!309916 result!268816) b_and!285505)))

(declare-fun tb!220569 () Bool)

(declare-fun t!309918 () Bool)

(assert (=> (and b!3836993 (= (toChars!8518 (transformation!6243 (rule!9079 (h!45947 prefixTokens!80)))) (toChars!8518 (transformation!6243 (rule!9079 (h!45947 suffixTokens!72))))) t!309918) tb!220569))

(declare-fun result!268818 () Bool)

(assert (= result!268818 result!268816))

(assert (=> b!3837295 t!309918))

(declare-fun b_and!285507 () Bool)

(assert (= b_and!285501 (and (=> t!309918 result!268818) b_and!285507)))

(declare-fun t!309920 () Bool)

(declare-fun tb!220571 () Bool)

(assert (=> (and b!3836996 (= (toChars!8518 (transformation!6243 (h!45946 rules!2768))) (toChars!8518 (transformation!6243 (rule!9079 (h!45947 suffixTokens!72))))) t!309920) tb!220571))

(declare-fun result!268820 () Bool)

(assert (= result!268820 result!268816))

(assert (=> b!3837295 t!309920))

(declare-fun b_and!285509 () Bool)

(assert (= b_and!285503 (and (=> t!309920 result!268820) b_and!285509)))

(declare-fun m!4391719 () Bool)

(assert (=> d!1139151 m!4391719))

(declare-fun m!4391721 () Bool)

(assert (=> b!3837295 m!4391721))

(assert (=> b!3837295 m!4391721))

(declare-fun m!4391723 () Bool)

(assert (=> b!3837295 m!4391723))

(declare-fun m!4391725 () Bool)

(assert (=> b!3837296 m!4391725))

(assert (=> b!3837002 d!1139151))

(declare-fun d!1139153 () Bool)

(declare-fun e!2369924 () Bool)

(assert (=> d!1139153 e!2369924))

(declare-fun c!669062 () Bool)

(declare-fun lt!1331630 () tuple2!39702)

(assert (=> d!1139153 (= c!669062 (> (size!30527 (_1!22985 lt!1331630)) 0))))

(declare-fun e!2369922 () tuple2!39702)

(assert (=> d!1139153 (= lt!1331630 e!2369922)))

(declare-fun c!669061 () Bool)

(declare-fun lt!1331628 () Option!8661)

(assert (=> d!1139153 (= c!669061 (is-Some!8660 lt!1331628))))

(assert (=> d!1139153 (= lt!1331628 (maxPrefix!3136 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1139153 (= (lexList!1600 thiss!20629 rules!2768 suffix!1176) lt!1331630)))

(declare-fun b!3837303 () Bool)

(declare-fun lt!1331629 () tuple2!39702)

(assert (=> b!3837303 (= e!2369922 (tuple2!39703 (Cons!40527 (_1!22986 (v!38952 lt!1331628)) (_1!22985 lt!1331629)) (_2!22985 lt!1331629)))))

(assert (=> b!3837303 (= lt!1331629 (lexList!1600 thiss!20629 rules!2768 (_2!22986 (v!38952 lt!1331628))))))

(declare-fun b!3837304 () Bool)

(assert (=> b!3837304 (= e!2369924 (= (_2!22985 lt!1331630) suffix!1176))))

(declare-fun b!3837305 () Bool)

(declare-fun e!2369923 () Bool)

(assert (=> b!3837305 (= e!2369924 e!2369923)))

(declare-fun res!1553126 () Bool)

(assert (=> b!3837305 (= res!1553126 (< (size!30524 (_2!22985 lt!1331630)) (size!30524 suffix!1176)))))

(assert (=> b!3837305 (=> (not res!1553126) (not e!2369923))))

(declare-fun b!3837306 () Bool)

(assert (=> b!3837306 (= e!2369923 (not (isEmpty!23933 (_1!22985 lt!1331630))))))

(declare-fun b!3837307 () Bool)

(assert (=> b!3837307 (= e!2369922 (tuple2!39703 Nil!40527 suffix!1176))))

(assert (= (and d!1139153 c!669061) b!3837303))

(assert (= (and d!1139153 (not c!669061)) b!3837307))

(assert (= (and d!1139153 c!669062) b!3837305))

(assert (= (and d!1139153 (not c!669062)) b!3837304))

(assert (= (and b!3837305 res!1553126) b!3837306))

(declare-fun m!4391733 () Bool)

(assert (=> d!1139153 m!4391733))

(declare-fun m!4391735 () Bool)

(assert (=> d!1139153 m!4391735))

(declare-fun m!4391737 () Bool)

(assert (=> b!3837303 m!4391737))

(declare-fun m!4391739 () Bool)

(assert (=> b!3837305 m!4391739))

(assert (=> b!3837305 m!4391665))

(declare-fun m!4391741 () Bool)

(assert (=> b!3837306 m!4391741))

(assert (=> b!3836991 d!1139153))

(declare-fun d!1139157 () Bool)

(declare-fun lt!1331631 () Int)

(assert (=> d!1139157 (>= lt!1331631 0)))

(declare-fun e!2369925 () Int)

(assert (=> d!1139157 (= lt!1331631 e!2369925)))

(declare-fun c!669063 () Bool)

(assert (=> d!1139157 (= c!669063 (is-Nil!40524 (originalCharacters!6843 (_1!22986 (v!38952 lt!1331518)))))))

(assert (=> d!1139157 (= (size!30524 (originalCharacters!6843 (_1!22986 (v!38952 lt!1331518)))) lt!1331631)))

(declare-fun b!3837308 () Bool)

(assert (=> b!3837308 (= e!2369925 0)))

(declare-fun b!3837309 () Bool)

(assert (=> b!3837309 (= e!2369925 (+ 1 (size!30524 (t!309889 (originalCharacters!6843 (_1!22986 (v!38952 lt!1331518)))))))))

(assert (= (and d!1139157 c!669063) b!3837308))

(assert (= (and d!1139157 (not c!669063)) b!3837309))

(declare-fun m!4391743 () Bool)

(assert (=> b!3837309 m!4391743))

(assert (=> b!3836992 d!1139157))

(declare-fun d!1139159 () Bool)

(assert (=> d!1139159 (= (inv!54676 (tag!7103 (rule!9079 (h!45947 suffixTokens!72)))) (= (mod (str.len (value!198560 (tag!7103 (rule!9079 (h!45947 suffixTokens!72))))) 2) 0))))

(assert (=> b!3837013 d!1139159))

(declare-fun d!1139161 () Bool)

(declare-fun res!1553127 () Bool)

(declare-fun e!2369926 () Bool)

(assert (=> d!1139161 (=> (not res!1553127) (not e!2369926))))

(assert (=> d!1139161 (= res!1553127 (semiInverseModEq!2678 (toChars!8518 (transformation!6243 (rule!9079 (h!45947 suffixTokens!72)))) (toValue!8659 (transformation!6243 (rule!9079 (h!45947 suffixTokens!72))))))))

(assert (=> d!1139161 (= (inv!54680 (transformation!6243 (rule!9079 (h!45947 suffixTokens!72)))) e!2369926)))

(declare-fun b!3837310 () Bool)

(assert (=> b!3837310 (= e!2369926 (equivClasses!2577 (toChars!8518 (transformation!6243 (rule!9079 (h!45947 suffixTokens!72)))) (toValue!8659 (transformation!6243 (rule!9079 (h!45947 suffixTokens!72))))))))

(assert (= (and d!1139161 res!1553127) b!3837310))

(declare-fun m!4391745 () Bool)

(assert (=> d!1139161 m!4391745))

(declare-fun m!4391747 () Bool)

(assert (=> b!3837310 m!4391747))

(assert (=> b!3837013 d!1139161))

(declare-fun b!3837315 () Bool)

(declare-fun e!2369929 () Bool)

(declare-fun tp!1161594 () Bool)

(assert (=> b!3837315 (= e!2369929 (and tp_is_empty!19267 tp!1161594))))

(assert (=> b!3836994 (= tp!1161522 e!2369929)))

(assert (= (and b!3836994 (is-Cons!40524 (originalCharacters!6843 (h!45947 prefixTokens!80)))) b!3837315))

(declare-fun b!3837316 () Bool)

(declare-fun e!2369930 () Bool)

(declare-fun tp!1161595 () Bool)

(assert (=> b!3837316 (= e!2369930 (and tp_is_empty!19267 tp!1161595))))

(assert (=> b!3837006 (= tp!1161525 e!2369930)))

(assert (= (and b!3837006 (is-Cons!40524 (t!309889 suffixResult!91))) b!3837316))

(declare-fun b!3837332 () Bool)

(declare-fun e!2369935 () Bool)

(declare-fun tp!1161607 () Bool)

(declare-fun tp!1161609 () Bool)

(assert (=> b!3837332 (= e!2369935 (and tp!1161607 tp!1161609))))

(declare-fun b!3837333 () Bool)

(declare-fun tp!1161606 () Bool)

(assert (=> b!3837333 (= e!2369935 tp!1161606)))

(declare-fun b!3837331 () Bool)

(assert (=> b!3837331 (= e!2369935 tp_is_empty!19267)))

(declare-fun b!3837334 () Bool)

(declare-fun tp!1161610 () Bool)

(declare-fun tp!1161608 () Bool)

(assert (=> b!3837334 (= e!2369935 (and tp!1161610 tp!1161608))))

(assert (=> b!3836995 (= tp!1161521 e!2369935)))

(assert (= (and b!3836995 (is-ElementMatch!11148 (regex!6243 (rule!9079 (h!45947 prefixTokens!80))))) b!3837331))

(assert (= (and b!3836995 (is-Concat!17622 (regex!6243 (rule!9079 (h!45947 prefixTokens!80))))) b!3837332))

(assert (= (and b!3836995 (is-Star!11148 (regex!6243 (rule!9079 (h!45947 prefixTokens!80))))) b!3837333))

(assert (= (and b!3836995 (is-Union!11148 (regex!6243 (rule!9079 (h!45947 prefixTokens!80))))) b!3837334))

(declare-fun b!3837335 () Bool)

(declare-fun e!2369936 () Bool)

(declare-fun tp!1161611 () Bool)

(assert (=> b!3837335 (= e!2369936 (and tp_is_empty!19267 tp!1161611))))

(assert (=> b!3837007 (= tp!1161526 e!2369936)))

(assert (= (and b!3837007 (is-Cons!40524 (originalCharacters!6843 (h!45947 suffixTokens!72)))) b!3837335))

(declare-fun b!3837348 () Bool)

(declare-fun b_free!102033 () Bool)

(declare-fun b_next!102737 () Bool)

(assert (=> b!3837348 (= b_free!102033 (not b_next!102737))))

(declare-fun tb!220573 () Bool)

(declare-fun t!309922 () Bool)

(assert (=> (and b!3837348 (= (toValue!8659 (transformation!6243 (h!45946 (t!309891 rules!2768)))) (toValue!8659 (transformation!6243 (rule!9079 (_1!22986 (v!38952 lt!1331518)))))) t!309922) tb!220573))

(declare-fun result!268828 () Bool)

(assert (= result!268828 result!268802))

(assert (=> d!1139133 t!309922))

(declare-fun tp!1161623 () Bool)

(declare-fun b_and!285511 () Bool)

(assert (=> b!3837348 (= tp!1161623 (and (=> t!309922 result!268828) b_and!285511))))

(declare-fun b_free!102035 () Bool)

(declare-fun b_next!102739 () Bool)

(assert (=> b!3837348 (= b_free!102035 (not b_next!102739))))

(declare-fun tb!220575 () Bool)

(declare-fun t!309924 () Bool)

(assert (=> (and b!3837348 (= (toChars!8518 (transformation!6243 (h!45946 (t!309891 rules!2768)))) (toChars!8518 (transformation!6243 (rule!9079 (_1!22986 (v!38952 lt!1331518)))))) t!309924) tb!220575))

(declare-fun result!268830 () Bool)

(assert (= result!268830 result!268794))

(assert (=> d!1139081 t!309924))

(declare-fun tb!220577 () Bool)

(declare-fun t!309926 () Bool)

(assert (=> (and b!3837348 (= (toChars!8518 (transformation!6243 (h!45946 (t!309891 rules!2768)))) (toChars!8518 (transformation!6243 (rule!9079 (h!45947 prefixTokens!80))))) t!309926) tb!220577))

(declare-fun result!268832 () Bool)

(assert (= result!268832 result!268810))

(assert (=> b!3837278 t!309926))

(declare-fun tb!220579 () Bool)

(declare-fun t!309928 () Bool)

(assert (=> (and b!3837348 (= (toChars!8518 (transformation!6243 (h!45946 (t!309891 rules!2768)))) (toChars!8518 (transformation!6243 (rule!9079 (h!45947 suffixTokens!72))))) t!309928) tb!220579))

(declare-fun result!268834 () Bool)

(assert (= result!268834 result!268816))

(assert (=> b!3837295 t!309928))

(declare-fun tp!1161622 () Bool)

(declare-fun b_and!285513 () Bool)

(assert (=> b!3837348 (= tp!1161622 (and (=> t!309924 result!268830) (=> t!309926 result!268832) (=> t!309928 result!268834) b_and!285513))))

(declare-fun e!2369948 () Bool)

(assert (=> b!3837348 (= e!2369948 (and tp!1161623 tp!1161622))))

(declare-fun b!3837347 () Bool)

(declare-fun tp!1161621 () Bool)

(declare-fun e!2369946 () Bool)

(assert (=> b!3837347 (= e!2369946 (and tp!1161621 (inv!54676 (tag!7103 (h!45946 (t!309891 rules!2768)))) (inv!54680 (transformation!6243 (h!45946 (t!309891 rules!2768)))) e!2369948))))

(declare-fun b!3837346 () Bool)

(declare-fun e!2369947 () Bool)

(declare-fun tp!1161620 () Bool)

(assert (=> b!3837346 (= e!2369947 (and e!2369946 tp!1161620))))

(assert (=> b!3837010 (= tp!1161529 e!2369947)))

(assert (= b!3837347 b!3837348))

(assert (= b!3837346 b!3837347))

(assert (= (and b!3837010 (is-Cons!40526 (t!309891 rules!2768))) b!3837346))

(declare-fun m!4391749 () Bool)

(assert (=> b!3837347 m!4391749))

(declare-fun m!4391751 () Bool)

(assert (=> b!3837347 m!4391751))

(declare-fun b!3837367 () Bool)

(declare-fun b_free!102037 () Bool)

(declare-fun b_next!102741 () Bool)

(assert (=> b!3837367 (= b_free!102037 (not b_next!102741))))

(declare-fun tb!220587 () Bool)

(declare-fun t!309936 () Bool)

(assert (=> (and b!3837367 (= (toValue!8659 (transformation!6243 (rule!9079 (h!45947 (t!309892 prefixTokens!80))))) (toValue!8659 (transformation!6243 (rule!9079 (_1!22986 (v!38952 lt!1331518)))))) t!309936) tb!220587))

(declare-fun result!268846 () Bool)

(assert (= result!268846 result!268802))

(assert (=> d!1139133 t!309936))

(declare-fun b_and!285521 () Bool)

(declare-fun tp!1161637 () Bool)

(assert (=> b!3837367 (= tp!1161637 (and (=> t!309936 result!268846) b_and!285521))))

(declare-fun b_free!102039 () Bool)

(declare-fun b_next!102743 () Bool)

(assert (=> b!3837367 (= b_free!102039 (not b_next!102743))))

(declare-fun tb!220589 () Bool)

(declare-fun t!309938 () Bool)

(assert (=> (and b!3837367 (= (toChars!8518 (transformation!6243 (rule!9079 (h!45947 (t!309892 prefixTokens!80))))) (toChars!8518 (transformation!6243 (rule!9079 (_1!22986 (v!38952 lt!1331518)))))) t!309938) tb!220589))

(declare-fun result!268848 () Bool)

(assert (= result!268848 result!268794))

(assert (=> d!1139081 t!309938))

(declare-fun t!309940 () Bool)

(declare-fun tb!220591 () Bool)

(assert (=> (and b!3837367 (= (toChars!8518 (transformation!6243 (rule!9079 (h!45947 (t!309892 prefixTokens!80))))) (toChars!8518 (transformation!6243 (rule!9079 (h!45947 prefixTokens!80))))) t!309940) tb!220591))

(declare-fun result!268850 () Bool)

(assert (= result!268850 result!268810))

(assert (=> b!3837278 t!309940))

(declare-fun t!309942 () Bool)

(declare-fun tb!220593 () Bool)

(assert (=> (and b!3837367 (= (toChars!8518 (transformation!6243 (rule!9079 (h!45947 (t!309892 prefixTokens!80))))) (toChars!8518 (transformation!6243 (rule!9079 (h!45947 suffixTokens!72))))) t!309942) tb!220593))

(declare-fun result!268852 () Bool)

(assert (= result!268852 result!268816))

(assert (=> b!3837295 t!309942))

(declare-fun tp!1161640 () Bool)

(declare-fun b_and!285523 () Bool)

(assert (=> b!3837367 (= tp!1161640 (and (=> t!309938 result!268848) (=> t!309940 result!268850) (=> t!309942 result!268852) b_and!285523))))

(declare-fun b!3837366 () Bool)

(declare-fun e!2369965 () Bool)

(declare-fun e!2369966 () Bool)

(declare-fun tp!1161638 () Bool)

(assert (=> b!3837366 (= e!2369965 (and tp!1161638 (inv!54676 (tag!7103 (rule!9079 (h!45947 (t!309892 prefixTokens!80))))) (inv!54680 (transformation!6243 (rule!9079 (h!45947 (t!309892 prefixTokens!80))))) e!2369966))))

(declare-fun e!2369968 () Bool)

(assert (=> b!3836999 (= tp!1161520 e!2369968)))

(declare-fun tp!1161641 () Bool)

(declare-fun b!3837365 () Bool)

(declare-fun e!2369969 () Bool)

(assert (=> b!3837365 (= e!2369969 (and (inv!21 (value!198561 (h!45947 (t!309892 prefixTokens!80)))) e!2369965 tp!1161641))))

(assert (=> b!3837367 (= e!2369966 (and tp!1161637 tp!1161640))))

(declare-fun b!3837364 () Bool)

(declare-fun tp!1161639 () Bool)

(assert (=> b!3837364 (= e!2369968 (and (inv!54679 (h!45947 (t!309892 prefixTokens!80))) e!2369969 tp!1161639))))

(assert (= b!3837366 b!3837367))

(assert (= b!3837365 b!3837366))

(assert (= b!3837364 b!3837365))

(assert (= (and b!3836999 (is-Cons!40527 (t!309892 prefixTokens!80))) b!3837364))

(declare-fun m!4391765 () Bool)

(assert (=> b!3837366 m!4391765))

(declare-fun m!4391767 () Bool)

(assert (=> b!3837366 m!4391767))

(declare-fun m!4391769 () Bool)

(assert (=> b!3837365 m!4391769))

(declare-fun m!4391771 () Bool)

(assert (=> b!3837364 m!4391771))

(declare-fun b!3837368 () Bool)

(declare-fun e!2369971 () Bool)

(declare-fun tp!1161642 () Bool)

(assert (=> b!3837368 (= e!2369971 (and tp_is_empty!19267 tp!1161642))))

(assert (=> b!3837000 (= tp!1161531 e!2369971)))

(assert (= (and b!3837000 (is-Cons!40524 (t!309889 suffix!1176))) b!3837368))

(declare-fun b!3837369 () Bool)

(declare-fun e!2369972 () Bool)

(declare-fun tp!1161643 () Bool)

(assert (=> b!3837369 (= e!2369972 (and tp_is_empty!19267 tp!1161643))))

(assert (=> b!3837011 (= tp!1161528 e!2369972)))

(assert (= (and b!3837011 (is-Cons!40524 (t!309889 prefix!426))) b!3837369))

(declare-fun b!3837371 () Bool)

(declare-fun e!2369973 () Bool)

(declare-fun tp!1161645 () Bool)

(declare-fun tp!1161647 () Bool)

(assert (=> b!3837371 (= e!2369973 (and tp!1161645 tp!1161647))))

(declare-fun b!3837372 () Bool)

(declare-fun tp!1161644 () Bool)

(assert (=> b!3837372 (= e!2369973 tp!1161644)))

(declare-fun b!3837370 () Bool)

(assert (=> b!3837370 (= e!2369973 tp_is_empty!19267)))

(declare-fun b!3837373 () Bool)

(declare-fun tp!1161648 () Bool)

(declare-fun tp!1161646 () Bool)

(assert (=> b!3837373 (= e!2369973 (and tp!1161648 tp!1161646))))

(assert (=> b!3837001 (= tp!1161519 e!2369973)))

(assert (= (and b!3837001 (is-ElementMatch!11148 (regex!6243 (h!45946 rules!2768)))) b!3837370))

(assert (= (and b!3837001 (is-Concat!17622 (regex!6243 (h!45946 rules!2768)))) b!3837371))

(assert (= (and b!3837001 (is-Star!11148 (regex!6243 (h!45946 rules!2768)))) b!3837372))

(assert (= (and b!3837001 (is-Union!11148 (regex!6243 (h!45946 rules!2768)))) b!3837373))

(declare-fun b!3837377 () Bool)

(declare-fun b_free!102041 () Bool)

(declare-fun b_next!102745 () Bool)

(assert (=> b!3837377 (= b_free!102041 (not b_next!102745))))

(declare-fun t!309944 () Bool)

(declare-fun tb!220595 () Bool)

(assert (=> (and b!3837377 (= (toValue!8659 (transformation!6243 (rule!9079 (h!45947 (t!309892 suffixTokens!72))))) (toValue!8659 (transformation!6243 (rule!9079 (_1!22986 (v!38952 lt!1331518)))))) t!309944) tb!220595))

(declare-fun result!268854 () Bool)

(assert (= result!268854 result!268802))

(assert (=> d!1139133 t!309944))

(declare-fun tp!1161649 () Bool)

(declare-fun b_and!285525 () Bool)

(assert (=> b!3837377 (= tp!1161649 (and (=> t!309944 result!268854) b_and!285525))))

(declare-fun b_free!102043 () Bool)

(declare-fun b_next!102747 () Bool)

(assert (=> b!3837377 (= b_free!102043 (not b_next!102747))))

(declare-fun tb!220597 () Bool)

(declare-fun t!309946 () Bool)

(assert (=> (and b!3837377 (= (toChars!8518 (transformation!6243 (rule!9079 (h!45947 (t!309892 suffixTokens!72))))) (toChars!8518 (transformation!6243 (rule!9079 (_1!22986 (v!38952 lt!1331518)))))) t!309946) tb!220597))

(declare-fun result!268856 () Bool)

(assert (= result!268856 result!268794))

(assert (=> d!1139081 t!309946))

(declare-fun t!309948 () Bool)

(declare-fun tb!220599 () Bool)

(assert (=> (and b!3837377 (= (toChars!8518 (transformation!6243 (rule!9079 (h!45947 (t!309892 suffixTokens!72))))) (toChars!8518 (transformation!6243 (rule!9079 (h!45947 prefixTokens!80))))) t!309948) tb!220599))

(declare-fun result!268858 () Bool)

(assert (= result!268858 result!268810))

(assert (=> b!3837278 t!309948))

(declare-fun t!309950 () Bool)

(declare-fun tb!220601 () Bool)

(assert (=> (and b!3837377 (= (toChars!8518 (transformation!6243 (rule!9079 (h!45947 (t!309892 suffixTokens!72))))) (toChars!8518 (transformation!6243 (rule!9079 (h!45947 suffixTokens!72))))) t!309950) tb!220601))

(declare-fun result!268860 () Bool)

(assert (= result!268860 result!268816))

(assert (=> b!3837295 t!309950))

(declare-fun b_and!285527 () Bool)

(declare-fun tp!1161652 () Bool)

(assert (=> b!3837377 (= tp!1161652 (and (=> t!309946 result!268856) (=> t!309948 result!268858) (=> t!309950 result!268860) b_and!285527))))

(declare-fun tp!1161650 () Bool)

(declare-fun b!3837376 () Bool)

(declare-fun e!2369975 () Bool)

(declare-fun e!2369974 () Bool)

(assert (=> b!3837376 (= e!2369974 (and tp!1161650 (inv!54676 (tag!7103 (rule!9079 (h!45947 (t!309892 suffixTokens!72))))) (inv!54680 (transformation!6243 (rule!9079 (h!45947 (t!309892 suffixTokens!72))))) e!2369975))))

(declare-fun e!2369977 () Bool)

(assert (=> b!3837002 (= tp!1161527 e!2369977)))

(declare-fun tp!1161653 () Bool)

(declare-fun b!3837375 () Bool)

(declare-fun e!2369978 () Bool)

(assert (=> b!3837375 (= e!2369978 (and (inv!21 (value!198561 (h!45947 (t!309892 suffixTokens!72)))) e!2369974 tp!1161653))))

(assert (=> b!3837377 (= e!2369975 (and tp!1161649 tp!1161652))))

(declare-fun tp!1161651 () Bool)

(declare-fun b!3837374 () Bool)

(assert (=> b!3837374 (= e!2369977 (and (inv!54679 (h!45947 (t!309892 suffixTokens!72))) e!2369978 tp!1161651))))

(assert (= b!3837376 b!3837377))

(assert (= b!3837375 b!3837376))

(assert (= b!3837374 b!3837375))

(assert (= (and b!3837002 (is-Cons!40527 (t!309892 suffixTokens!72))) b!3837374))

(declare-fun m!4391773 () Bool)

(assert (=> b!3837376 m!4391773))

(declare-fun m!4391775 () Bool)

(assert (=> b!3837376 m!4391775))

(declare-fun m!4391777 () Bool)

(assert (=> b!3837375 m!4391777))

(declare-fun m!4391779 () Bool)

(assert (=> b!3837374 m!4391779))

(declare-fun b!3837379 () Bool)

(declare-fun e!2369980 () Bool)

(declare-fun tp!1161655 () Bool)

(declare-fun tp!1161657 () Bool)

(assert (=> b!3837379 (= e!2369980 (and tp!1161655 tp!1161657))))

(declare-fun b!3837380 () Bool)

(declare-fun tp!1161654 () Bool)

(assert (=> b!3837380 (= e!2369980 tp!1161654)))

(declare-fun b!3837378 () Bool)

(assert (=> b!3837378 (= e!2369980 tp_is_empty!19267)))

(declare-fun b!3837381 () Bool)

(declare-fun tp!1161658 () Bool)

(declare-fun tp!1161656 () Bool)

(assert (=> b!3837381 (= e!2369980 (and tp!1161658 tp!1161656))))

(assert (=> b!3837013 (= tp!1161524 e!2369980)))

(assert (= (and b!3837013 (is-ElementMatch!11148 (regex!6243 (rule!9079 (h!45947 suffixTokens!72))))) b!3837378))

(assert (= (and b!3837013 (is-Concat!17622 (regex!6243 (rule!9079 (h!45947 suffixTokens!72))))) b!3837379))

(assert (= (and b!3837013 (is-Star!11148 (regex!6243 (rule!9079 (h!45947 suffixTokens!72))))) b!3837380))

(assert (= (and b!3837013 (is-Union!11148 (regex!6243 (rule!9079 (h!45947 suffixTokens!72))))) b!3837381))

(declare-fun b_lambda!112197 () Bool)

(assert (= b_lambda!112193 (or (and b!3836996 b_free!102019 (= (toChars!8518 (transformation!6243 (h!45946 rules!2768))) (toChars!8518 (transformation!6243 (rule!9079 (h!45947 suffixTokens!72)))))) (and b!3836998 b_free!102011) (and b!3837377 b_free!102043 (= (toChars!8518 (transformation!6243 (rule!9079 (h!45947 (t!309892 suffixTokens!72))))) (toChars!8518 (transformation!6243 (rule!9079 (h!45947 suffixTokens!72)))))) (and b!3837348 b_free!102035 (= (toChars!8518 (transformation!6243 (h!45946 (t!309891 rules!2768)))) (toChars!8518 (transformation!6243 (rule!9079 (h!45947 suffixTokens!72)))))) (and b!3836993 b_free!102015 (= (toChars!8518 (transformation!6243 (rule!9079 (h!45947 prefixTokens!80)))) (toChars!8518 (transformation!6243 (rule!9079 (h!45947 suffixTokens!72)))))) (and b!3837367 b_free!102039 (= (toChars!8518 (transformation!6243 (rule!9079 (h!45947 (t!309892 prefixTokens!80))))) (toChars!8518 (transformation!6243 (rule!9079 (h!45947 suffixTokens!72)))))) b_lambda!112197)))

(declare-fun b_lambda!112199 () Bool)

(assert (= b_lambda!112191 (or (and b!3837377 b_free!102043 (= (toChars!8518 (transformation!6243 (rule!9079 (h!45947 (t!309892 suffixTokens!72))))) (toChars!8518 (transformation!6243 (rule!9079 (h!45947 prefixTokens!80)))))) (and b!3836993 b_free!102015) (and b!3837348 b_free!102035 (= (toChars!8518 (transformation!6243 (h!45946 (t!309891 rules!2768)))) (toChars!8518 (transformation!6243 (rule!9079 (h!45947 prefixTokens!80)))))) (and b!3836996 b_free!102019 (= (toChars!8518 (transformation!6243 (h!45946 rules!2768))) (toChars!8518 (transformation!6243 (rule!9079 (h!45947 prefixTokens!80)))))) (and b!3837367 b_free!102039 (= (toChars!8518 (transformation!6243 (rule!9079 (h!45947 (t!309892 prefixTokens!80))))) (toChars!8518 (transformation!6243 (rule!9079 (h!45947 prefixTokens!80)))))) (and b!3836998 b_free!102011 (= (toChars!8518 (transformation!6243 (rule!9079 (h!45947 suffixTokens!72)))) (toChars!8518 (transformation!6243 (rule!9079 (h!45947 prefixTokens!80)))))) b_lambda!112199)))

(push 1)

(assert (not b_next!102713))

(assert (not b!3837371))

(assert (not b!3837219))

(assert (not d!1139135))

(assert (not b!3837207))

(assert b_and!285527)

(assert (not b_next!102747))

(assert (not b!3837364))

(assert (not b!3837108))

(assert (not d!1139127))

(assert (not b!3837208))

(assert (not b!3837234))

(assert (not b_next!102745))

(assert (not b!3837310))

(assert (not b_next!102739))

(assert (not b!3837375))

(assert (not b!3837365))

(assert (not b!3837150))

(assert (not d!1139079))

(assert (not tb!220555))

(assert (not tb!220561))

(assert (not b!3837335))

(assert (not b!3837176))

(assert (not b!3837293))

(assert (not b!3837315))

(assert (not b!3837366))

(assert (not b_next!102721))

(assert (not b!3837205))

(assert (not b!3837143))

(assert (not b!3837175))

(assert b_and!285495)

(assert (not b!3837210))

(assert (not b!3837372))

(assert (not b!3837347))

(assert (not b_next!102717))

(assert (not b!3837257))

(assert (not d!1139085))

(assert b_and!285521)

(assert (not b!3837220))

(assert (not b!3837144))

(assert (not b_next!102719))

(assert (not bm!281899))

(assert (not b!3837232))

(assert b_and!285523)

(assert (not d!1139105))

(assert tp_is_empty!19267)

(assert b_and!285505)

(assert (not b!3837221))

(assert (not b_lambda!112187))

(assert b_and!285493)

(assert (not d!1139151))

(assert (not b!3837373))

(assert (not b!3837212))

(assert (not d!1139083))

(assert (not b!3837303))

(assert (not b!3837278))

(assert b_and!285513)

(assert (not b!3837374))

(assert (not b!3837107))

(assert (not d!1139123))

(assert (not b!3837305))

(assert (not b!3837091))

(assert b_and!285507)

(assert (not d!1139153))

(assert b_and!285509)

(assert (not d!1139145))

(assert (not b!3837209))

(assert (not b!3837294))

(assert (not b!3837115))

(assert (not b!3837309))

(assert (not tb!220549))

(assert (not d!1139119))

(assert b_and!285497)

(assert (not b_lambda!112197))

(assert (not b!3837376))

(assert (not b!3837334))

(assert (not b_next!102737))

(assert (not b!3837279))

(assert (not d!1139149))

(assert (not b!3837369))

(assert (not b!3837145))

(assert (not b_next!102743))

(assert (not b!3837380))

(assert (not b!3837280))

(assert (not b!3837177))

(assert (not d!1139093))

(assert (not b!3837316))

(assert (not b!3837296))

(assert (not b_next!102715))

(assert (not b!3837235))

(assert (not b!3837295))

(assert (not b_next!102741))

(assert (not b!3837381))

(assert (not b!3837332))

(assert (not d!1139125))

(assert b_and!285525)

(assert (not d!1139077))

(assert b_and!285511)

(assert (not b!3837297))

(assert (not d!1139081))

(assert (not b!3837216))

(assert (not b!3837333))

(assert (not b!3837368))

(assert (not b!3837153))

(assert (not b!3837097))

(assert (not b!3837211))

(assert (not b!3837346))

(assert (not d!1139137))

(assert (not d!1139075))

(assert (not b!3837306))

(assert (not b!3837265))

(assert (not b!3837379))

(assert (not tb!220567))

(assert (not b_lambda!112199))

(assert (not b!3837206))

(assert (not b_lambda!112189))

(assert (not b!3837256))

(assert (not d!1139095))

(assert (not b!3837266))

(assert (not b_next!102723))

(assert (not d!1139161))

(assert (not d!1139089))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!102721))

(assert b_and!285521)

(assert (not b_next!102719))

(assert b_and!285523)

(assert b_and!285513)

(assert b_and!285507)

(assert b_and!285509)

(assert b_and!285497)

(assert (not b_next!102713))

(assert (not b_next!102737))

(assert (not b_next!102743))

(assert (not b_next!102715))

(assert (not b_next!102741))

(assert (not b_next!102723))

(assert b_and!285527)

(assert (not b_next!102747))

(assert (not b_next!102745))

(assert (not b_next!102739))

(assert b_and!285495)

(assert (not b_next!102717))

(assert b_and!285505)

(assert b_and!285493)

(assert b_and!285525)

(assert b_and!285511)

(check-sat)

(pop 1)

