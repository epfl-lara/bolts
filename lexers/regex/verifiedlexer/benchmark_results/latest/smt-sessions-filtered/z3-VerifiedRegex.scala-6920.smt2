; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!364916 () Bool)

(assert start!364916)

(declare-fun b!3897227 () Bool)

(declare-fun b_free!105457 () Bool)

(declare-fun b_next!106161 () Bool)

(assert (=> b!3897227 (= b_free!105457 (not b_next!106161))))

(declare-fun tp!1185794 () Bool)

(declare-fun b_and!294191 () Bool)

(assert (=> b!3897227 (= tp!1185794 b_and!294191)))

(declare-fun b_free!105459 () Bool)

(declare-fun b_next!106163 () Bool)

(assert (=> b!3897227 (= b_free!105459 (not b_next!106163))))

(declare-fun tp!1185812 () Bool)

(declare-fun b_and!294193 () Bool)

(assert (=> b!3897227 (= tp!1185812 b_and!294193)))

(declare-fun b!3897219 () Bool)

(declare-fun b_free!105461 () Bool)

(declare-fun b_next!106165 () Bool)

(assert (=> b!3897219 (= b_free!105461 (not b_next!106165))))

(declare-fun tp!1185808 () Bool)

(declare-fun b_and!294195 () Bool)

(assert (=> b!3897219 (= tp!1185808 b_and!294195)))

(declare-fun b_free!105463 () Bool)

(declare-fun b_next!106167 () Bool)

(assert (=> b!3897219 (= b_free!105463 (not b_next!106167))))

(declare-fun tp!1185811 () Bool)

(declare-fun b_and!294197 () Bool)

(assert (=> b!3897219 (= tp!1185811 b_and!294197)))

(declare-fun b!3897210 () Bool)

(declare-fun b_free!105465 () Bool)

(declare-fun b_next!106169 () Bool)

(assert (=> b!3897210 (= b_free!105465 (not b_next!106169))))

(declare-fun tp!1185802 () Bool)

(declare-fun b_and!294199 () Bool)

(assert (=> b!3897210 (= tp!1185802 b_and!294199)))

(declare-fun b_free!105467 () Bool)

(declare-fun b_next!106171 () Bool)

(assert (=> b!3897210 (= b_free!105467 (not b_next!106171))))

(declare-fun tp!1185809 () Bool)

(declare-fun b_and!294201 () Bool)

(assert (=> b!3897210 (= tp!1185809 b_and!294201)))

(declare-fun b!3897202 () Bool)

(declare-fun b_free!105469 () Bool)

(declare-fun b_next!106173 () Bool)

(assert (=> b!3897202 (= b_free!105469 (not b_next!106173))))

(declare-fun tp!1185799 () Bool)

(declare-fun b_and!294203 () Bool)

(assert (=> b!3897202 (= tp!1185799 b_and!294203)))

(declare-fun b_free!105471 () Bool)

(declare-fun b_next!106175 () Bool)

(assert (=> b!3897202 (= b_free!105471 (not b_next!106175))))

(declare-fun tp!1185803 () Bool)

(declare-fun b_and!294205 () Bool)

(assert (=> b!3897202 (= tp!1185803 b_and!294205)))

(declare-fun e!2409489 () Bool)

(assert (=> b!3897202 (= e!2409489 (and tp!1185799 tp!1185803))))

(declare-fun b!3897203 () Bool)

(declare-fun tp!1185793 () Bool)

(declare-datatypes ((List!41462 0))(
  ( (Nil!41338) (Cons!41338 (h!46758 (_ BitVec 16)) (t!318989 List!41462)) )
))
(declare-datatypes ((TokenValue!6658 0))(
  ( (FloatLiteralValue!13316 (text!47051 List!41462)) (TokenValueExt!6657 (__x!25533 Int)) (Broken!33290 (value!203806 List!41462)) (Object!6781) (End!6658) (Def!6658) (Underscore!6658) (Match!6658) (Else!6658) (Error!6658) (Case!6658) (If!6658) (Extends!6658) (Abstract!6658) (Class!6658) (Val!6658) (DelimiterValue!13316 (del!6718 List!41462)) (KeywordValue!6664 (value!203807 List!41462)) (CommentValue!13316 (value!203808 List!41462)) (WhitespaceValue!13316 (value!203809 List!41462)) (IndentationValue!6658 (value!203810 List!41462)) (String!47007) (Int32!6658) (Broken!33291 (value!203811 List!41462)) (Boolean!6659) (Unit!59461) (OperatorValue!6661 (op!6718 List!41462)) (IdentifierValue!13316 (value!203812 List!41462)) (IdentifierValue!13317 (value!203813 List!41462)) (WhitespaceValue!13317 (value!203814 List!41462)) (True!13316) (False!13316) (Broken!33292 (value!203815 List!41462)) (Broken!33293 (value!203816 List!41462)) (True!13317) (RightBrace!6658) (RightBracket!6658) (Colon!6658) (Null!6658) (Comma!6658) (LeftBracket!6658) (False!13317) (LeftBrace!6658) (ImaginaryLiteralValue!6658 (text!47052 List!41462)) (StringLiteralValue!19974 (value!203817 List!41462)) (EOFValue!6658 (value!203818 List!41462)) (IdentValue!6658 (value!203819 List!41462)) (DelimiterValue!13317 (value!203820 List!41462)) (DedentValue!6658 (value!203821 List!41462)) (NewLineValue!6658 (value!203822 List!41462)) (IntegerValue!19974 (value!203823 (_ BitVec 32)) (text!47053 List!41462)) (IntegerValue!19975 (value!203824 Int) (text!47054 List!41462)) (Times!6658) (Or!6658) (Equal!6658) (Minus!6658) (Broken!33294 (value!203825 List!41462)) (And!6658) (Div!6658) (LessEqual!6658) (Mod!6658) (Concat!17991) (Not!6658) (Plus!6658) (SpaceValue!6658 (value!203826 List!41462)) (IntegerValue!19976 (value!203827 Int) (text!47055 List!41462)) (StringLiteralValue!19975 (text!47056 List!41462)) (FloatLiteralValue!13317 (text!47057 List!41462)) (BytesLiteralValue!6658 (value!203828 List!41462)) (CommentValue!13317 (value!203829 List!41462)) (StringLiteralValue!19976 (value!203830 List!41462)) (ErrorTokenValue!6658 (msg!6719 List!41462)) )
))
(declare-datatypes ((C!22852 0))(
  ( (C!22853 (val!13520 Int)) )
))
(declare-datatypes ((Regex!11333 0))(
  ( (ElementMatch!11333 (c!677534 C!22852)) (Concat!17992 (regOne!23178 Regex!11333) (regTwo!23178 Regex!11333)) (EmptyExpr!11333) (Star!11333 (reg!11662 Regex!11333)) (EmptyLang!11333) (Union!11333 (regOne!23179 Regex!11333) (regTwo!23179 Regex!11333)) )
))
(declare-datatypes ((String!47008 0))(
  ( (String!47009 (value!203831 String)) )
))
(declare-datatypes ((List!41463 0))(
  ( (Nil!41339) (Cons!41339 (h!46759 C!22852) (t!318990 List!41463)) )
))
(declare-datatypes ((IArray!25283 0))(
  ( (IArray!25284 (innerList!12699 List!41463)) )
))
(declare-datatypes ((Conc!12639 0))(
  ( (Node!12639 (left!31687 Conc!12639) (right!32017 Conc!12639) (csize!25508 Int) (cheight!12850 Int)) (Leaf!19560 (xs!15945 IArray!25283) (csize!25509 Int)) (Empty!12639) )
))
(declare-datatypes ((BalanceConc!24872 0))(
  ( (BalanceConc!24873 (c!677535 Conc!12639)) )
))
(declare-datatypes ((TokenValueInjection!12744 0))(
  ( (TokenValueInjection!12745 (toValue!8864 Int) (toChars!8723 Int)) )
))
(declare-datatypes ((Rule!12656 0))(
  ( (Rule!12657 (regex!6428 Regex!11333) (tag!7288 String!47008) (isSeparator!6428 Bool) (transformation!6428 TokenValueInjection!12744)) )
))
(declare-datatypes ((Token!11994 0))(
  ( (Token!11995 (value!203832 TokenValue!6658) (rule!9330 Rule!12656) (size!31037 Int) (originalCharacters!7028 List!41463)) )
))
(declare-datatypes ((List!41464 0))(
  ( (Nil!41340) (Cons!41340 (h!46760 Token!11994) (t!318991 List!41464)) )
))
(declare-fun prefixTokens!80 () List!41464)

(declare-fun e!2409499 () Bool)

(declare-fun e!2409486 () Bool)

(declare-fun inv!55502 (Token!11994) Bool)

(assert (=> b!3897203 (= e!2409486 (and (inv!55502 (h!46760 prefixTokens!80)) e!2409499 tp!1185793))))

(declare-fun b!3897204 () Bool)

(declare-fun e!2409495 () Bool)

(declare-fun tp_is_empty!19637 () Bool)

(declare-fun tp!1185801 () Bool)

(assert (=> b!3897204 (= e!2409495 (and tp_is_empty!19637 tp!1185801))))

(declare-fun b!3897205 () Bool)

(declare-fun res!1576583 () Bool)

(declare-fun e!2409497 () Bool)

(assert (=> b!3897205 (=> (not res!1576583) (not e!2409497))))

(declare-fun isEmpty!24566 (List!41464) Bool)

(assert (=> b!3897205 (= res!1576583 (not (isEmpty!24566 prefixTokens!80)))))

(declare-fun b!3897206 () Bool)

(declare-fun e!2409496 () Bool)

(declare-fun tp!1185805 () Bool)

(assert (=> b!3897206 (= e!2409496 (and tp_is_empty!19637 tp!1185805))))

(declare-fun res!1576584 () Bool)

(assert (=> start!364916 (=> (not res!1576584) (not e!2409497))))

(declare-datatypes ((LexerInterface!6017 0))(
  ( (LexerInterfaceExt!6014 (__x!25534 Int)) (Lexer!6015) )
))
(declare-fun thiss!20629 () LexerInterface!6017)

(get-info :version)

(assert (=> start!364916 (= res!1576584 ((_ is Lexer!6015) thiss!20629))))

(assert (=> start!364916 e!2409497))

(assert (=> start!364916 e!2409496))

(assert (=> start!364916 true))

(assert (=> start!364916 e!2409495))

(declare-fun e!2409474 () Bool)

(assert (=> start!364916 e!2409474))

(assert (=> start!364916 e!2409486))

(declare-fun e!2409478 () Bool)

(assert (=> start!364916 e!2409478))

(declare-fun e!2409501 () Bool)

(assert (=> start!364916 e!2409501))

(declare-fun b!3897207 () Bool)

(declare-fun tp!1185797 () Bool)

(assert (=> b!3897207 (= e!2409501 (and tp_is_empty!19637 tp!1185797))))

(declare-fun lt!1357523 () List!41463)

(declare-datatypes ((tuple2!40574 0))(
  ( (tuple2!40575 (_1!23421 Token!11994) (_2!23421 List!41463)) )
))
(declare-datatypes ((Option!8848 0))(
  ( (None!8847) (Some!8847 (v!39159 tuple2!40574)) )
))
(declare-fun call!283714 () Option!8848)

(declare-datatypes ((List!41465 0))(
  ( (Nil!41341) (Cons!41341 (h!46761 Rule!12656) (t!318992 List!41465)) )
))
(declare-fun rules!2768 () List!41465)

(declare-fun bm!283709 () Bool)

(declare-fun maxPrefixOneRule!2397 (LexerInterface!6017 Rule!12656 List!41463) Option!8848)

(assert (=> bm!283709 (= call!283714 (maxPrefixOneRule!2397 thiss!20629 (h!46761 rules!2768) lt!1357523))))

(declare-fun b!3897208 () Bool)

(declare-fun e!2409469 () Bool)

(declare-fun e!2409479 () Bool)

(assert (=> b!3897208 (= e!2409469 e!2409479)))

(declare-fun res!1576575 () Bool)

(assert (=> b!3897208 (=> (not res!1576575) (not e!2409479))))

(declare-fun lt!1357514 () Option!8848)

(assert (=> b!3897208 (= res!1576575 ((_ is Some!8847) lt!1357514))))

(declare-fun maxPrefix!3321 (LexerInterface!6017 List!41465 List!41463) Option!8848)

(assert (=> b!3897208 (= lt!1357514 (maxPrefix!3321 thiss!20629 rules!2768 lt!1357523))))

(declare-fun lt!1357527 () Option!8848)

(declare-fun b!3897209 () Bool)

(assert (=> b!3897209 (= lt!1357527 (maxPrefix!3321 thiss!20629 (t!318992 rules!2768) lt!1357523))))

(declare-fun lt!1357520 () Option!8848)

(assert (=> b!3897209 (= lt!1357520 call!283714)))

(declare-fun e!2409485 () Option!8848)

(assert (=> b!3897209 (= e!2409485 (ite (and ((_ is None!8847) lt!1357520) ((_ is None!8847) lt!1357527)) None!8847 (ite ((_ is None!8847) lt!1357527) lt!1357520 (ite ((_ is None!8847) lt!1357520) lt!1357527 (ite (>= (size!31037 (_1!23421 (v!39159 lt!1357520))) (size!31037 (_1!23421 (v!39159 lt!1357527)))) (Some!8847 (v!39159 lt!1357520)) lt!1357527)))))))

(declare-fun e!2409494 () Bool)

(assert (=> b!3897210 (= e!2409494 (and tp!1185802 tp!1185809))))

(declare-fun b!3897211 () Bool)

(declare-fun tp!1185806 () Bool)

(declare-fun suffixTokens!72 () List!41464)

(declare-fun e!2409480 () Bool)

(assert (=> b!3897211 (= e!2409478 (and (inv!55502 (h!46760 suffixTokens!72)) e!2409480 tp!1185806))))

(declare-fun b!3897212 () Bool)

(declare-fun e!2409473 () Bool)

(declare-fun e!2409472 () Bool)

(assert (=> b!3897212 (= e!2409473 e!2409472)))

(declare-fun res!1576579 () Bool)

(assert (=> b!3897212 (=> res!1576579 e!2409472)))

(declare-fun lt!1357515 () List!41464)

(declare-datatypes ((tuple2!40576 0))(
  ( (tuple2!40577 (_1!23422 List!41464) (_2!23422 List!41463)) )
))
(declare-fun lt!1357518 () tuple2!40576)

(declare-fun suffix!1176 () List!41463)

(declare-fun lt!1357531 () tuple2!40576)

(assert (=> b!3897212 (= res!1576579 (or (not (= lt!1357531 (tuple2!40577 lt!1357515 (_2!23422 lt!1357518)))) (not (= lt!1357518 (tuple2!40577 (_1!23422 lt!1357518) (_2!23422 lt!1357518)))) (not (= (_2!23421 (v!39159 lt!1357514)) suffix!1176))))))

(declare-fun lt!1357524 () List!41464)

(declare-fun ++!10613 (List!41464 List!41464) List!41464)

(assert (=> b!3897212 (= lt!1357515 (++!10613 lt!1357524 (_1!23422 lt!1357518)))))

(assert (=> b!3897212 (= lt!1357524 (Cons!41340 (_1!23421 (v!39159 lt!1357514)) Nil!41340))))

(declare-fun e!2409481 () Bool)

(declare-fun b!3897213 () Bool)

(declare-fun e!2409493 () Bool)

(declare-fun tp!1185792 () Bool)

(declare-fun inv!55499 (String!47008) Bool)

(declare-fun inv!55503 (TokenValueInjection!12744) Bool)

(assert (=> b!3897213 (= e!2409481 (and tp!1185792 (inv!55499 (tag!7288 (rule!9330 (h!46760 prefixTokens!80)))) (inv!55503 (transformation!6428 (rule!9330 (h!46760 prefixTokens!80)))) e!2409493))))

(declare-fun b!3897214 () Bool)

(assert (=> b!3897214 (= e!2409497 e!2409469)))

(declare-fun res!1576582 () Bool)

(assert (=> b!3897214 (=> (not res!1576582) (not e!2409469))))

(declare-fun suffixResult!91 () List!41463)

(declare-fun lt!1357526 () List!41464)

(assert (=> b!3897214 (= res!1576582 (= lt!1357531 (tuple2!40577 lt!1357526 suffixResult!91)))))

(declare-fun lexList!1785 (LexerInterface!6017 List!41465 List!41463) tuple2!40576)

(assert (=> b!3897214 (= lt!1357531 (lexList!1785 thiss!20629 rules!2768 lt!1357523))))

(assert (=> b!3897214 (= lt!1357526 (++!10613 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!41463)

(declare-fun ++!10614 (List!41463 List!41463) List!41463)

(assert (=> b!3897214 (= lt!1357523 (++!10614 prefix!426 suffix!1176))))

(declare-fun tp!1185807 () Bool)

(declare-fun b!3897215 () Bool)

(declare-fun e!2409476 () Bool)

(assert (=> b!3897215 (= e!2409476 (and tp!1185807 (inv!55499 (tag!7288 (rule!9330 (h!46760 suffixTokens!72)))) (inv!55503 (transformation!6428 (rule!9330 (h!46760 suffixTokens!72)))) e!2409489))))

(declare-fun b!3897216 () Bool)

(assert (=> b!3897216 (= e!2409479 (not e!2409473))))

(declare-fun res!1576577 () Bool)

(assert (=> b!3897216 (=> res!1576577 e!2409473)))

(declare-fun lt!1357521 () List!41463)

(assert (=> b!3897216 (= res!1576577 (not (= lt!1357521 lt!1357523)))))

(assert (=> b!3897216 (= lt!1357518 (lexList!1785 thiss!20629 rules!2768 (_2!23421 (v!39159 lt!1357514))))))

(declare-fun lt!1357532 () List!41463)

(declare-fun lt!1357519 () TokenValue!6658)

(declare-fun lt!1357529 () Int)

(declare-fun lt!1357533 () List!41463)

(assert (=> b!3897216 (and (= (size!31037 (_1!23421 (v!39159 lt!1357514))) lt!1357529) (= (originalCharacters!7028 (_1!23421 (v!39159 lt!1357514))) lt!1357533) (= (tuple2!40575 (_1!23421 (v!39159 lt!1357514)) (_2!23421 (v!39159 lt!1357514))) (tuple2!40575 (Token!11995 lt!1357519 (rule!9330 (_1!23421 (v!39159 lt!1357514))) lt!1357529 lt!1357533) lt!1357532)))))

(declare-fun size!31038 (List!41463) Int)

(assert (=> b!3897216 (= lt!1357529 (size!31038 lt!1357533))))

(declare-fun e!2409468 () Bool)

(assert (=> b!3897216 e!2409468))

(declare-fun res!1576586 () Bool)

(assert (=> b!3897216 (=> (not res!1576586) (not e!2409468))))

(assert (=> b!3897216 (= res!1576586 (= (value!203832 (_1!23421 (v!39159 lt!1357514))) lt!1357519))))

(declare-fun apply!9667 (TokenValueInjection!12744 BalanceConc!24872) TokenValue!6658)

(declare-fun seqFromList!4695 (List!41463) BalanceConc!24872)

(assert (=> b!3897216 (= lt!1357519 (apply!9667 (transformation!6428 (rule!9330 (_1!23421 (v!39159 lt!1357514)))) (seqFromList!4695 lt!1357533)))))

(assert (=> b!3897216 (= (_2!23421 (v!39159 lt!1357514)) lt!1357532)))

(declare-datatypes ((Unit!59462 0))(
  ( (Unit!59463) )
))
(declare-fun lt!1357528 () Unit!59462)

(declare-fun lemmaSamePrefixThenSameSuffix!1744 (List!41463 List!41463 List!41463 List!41463 List!41463) Unit!59462)

(assert (=> b!3897216 (= lt!1357528 (lemmaSamePrefixThenSameSuffix!1744 lt!1357533 (_2!23421 (v!39159 lt!1357514)) lt!1357533 lt!1357532 lt!1357523))))

(declare-fun getSuffix!1978 (List!41463 List!41463) List!41463)

(assert (=> b!3897216 (= lt!1357532 (getSuffix!1978 lt!1357523 lt!1357533))))

(declare-fun isPrefix!3523 (List!41463 List!41463) Bool)

(assert (=> b!3897216 (isPrefix!3523 lt!1357533 lt!1357521)))

(assert (=> b!3897216 (= lt!1357521 (++!10614 lt!1357533 (_2!23421 (v!39159 lt!1357514))))))

(declare-fun lt!1357516 () Unit!59462)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2386 (List!41463 List!41463) Unit!59462)

(assert (=> b!3897216 (= lt!1357516 (lemmaConcatTwoListThenFirstIsPrefix!2386 lt!1357533 (_2!23421 (v!39159 lt!1357514))))))

(declare-fun list!15364 (BalanceConc!24872) List!41463)

(declare-fun charsOf!4252 (Token!11994) BalanceConc!24872)

(assert (=> b!3897216 (= lt!1357533 (list!15364 (charsOf!4252 (_1!23421 (v!39159 lt!1357514)))))))

(declare-fun ruleValid!2376 (LexerInterface!6017 Rule!12656) Bool)

(assert (=> b!3897216 (ruleValid!2376 thiss!20629 (rule!9330 (_1!23421 (v!39159 lt!1357514))))))

(declare-fun lt!1357517 () Unit!59462)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1456 (LexerInterface!6017 Rule!12656 List!41465) Unit!59462)

(assert (=> b!3897216 (= lt!1357517 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1456 thiss!20629 (rule!9330 (_1!23421 (v!39159 lt!1357514))) rules!2768))))

(declare-fun lt!1357525 () Unit!59462)

(declare-fun lemmaCharactersSize!1085 (Token!11994) Unit!59462)

(assert (=> b!3897216 (= lt!1357525 (lemmaCharactersSize!1085 (_1!23421 (v!39159 lt!1357514))))))

(declare-fun b!3897217 () Bool)

(declare-fun e!2409498 () Option!8848)

(assert (=> b!3897217 (= e!2409498 e!2409485)))

(declare-fun c!677532 () Bool)

(assert (=> b!3897217 (= c!677532 ((_ is Cons!41341) rules!2768))))

(declare-fun b!3897218 () Bool)

(declare-fun e!2409502 () Bool)

(assert (=> b!3897218 (= e!2409502 (or (not (= lt!1357526 (_1!23422 lt!1357531))) (not (= lt!1357526 lt!1357515)) (not (= prefixTokens!80 lt!1357524)) (= prefix!426 lt!1357533)))))

(assert (=> b!3897218 (= lt!1357533 prefix!426)))

(declare-fun lt!1357522 () Unit!59462)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!500 (List!41463 List!41463 List!41463 List!41463) Unit!59462)

(assert (=> b!3897218 (= lt!1357522 (lemmaConcatSameAndSameSizesThenSameLists!500 lt!1357533 (_2!23421 (v!39159 lt!1357514)) prefix!426 suffix!1176))))

(assert (=> b!3897219 (= e!2409493 (and tp!1185808 tp!1185811))))

(declare-fun b!3897220 () Bool)

(assert (=> b!3897220 (= e!2409468 (= (size!31037 (_1!23421 (v!39159 lt!1357514))) (size!31038 (originalCharacters!7028 (_1!23421 (v!39159 lt!1357514))))))))

(declare-fun b!3897221 () Bool)

(declare-fun e!2409477 () Bool)

(declare-fun tp!1185796 () Bool)

(declare-fun e!2409492 () Bool)

(assert (=> b!3897221 (= e!2409492 (and tp!1185796 (inv!55499 (tag!7288 (h!46761 rules!2768))) (inv!55503 (transformation!6428 (h!46761 rules!2768))) e!2409477))))

(declare-fun b!3897222 () Bool)

(declare-fun res!1576574 () Bool)

(assert (=> b!3897222 (=> (not res!1576574) (not e!2409497))))

(declare-fun rulesInvariant!5360 (LexerInterface!6017 List!41465) Bool)

(assert (=> b!3897222 (= res!1576574 (rulesInvariant!5360 thiss!20629 rules!2768))))

(declare-fun b!3897223 () Bool)

(declare-fun e!2409482 () Bool)

(assert (=> b!3897223 (= e!2409482 (= lt!1357514 e!2409498))))

(declare-fun c!677533 () Bool)

(assert (=> b!3897223 (= c!677533 (and ((_ is Cons!41341) rules!2768) ((_ is Nil!41341) (t!318992 rules!2768))))))

(declare-fun b!3897224 () Bool)

(assert (=> b!3897224 (= e!2409472 e!2409502)))

(declare-fun res!1576581 () Bool)

(assert (=> b!3897224 (=> res!1576581 e!2409502)))

(assert (=> b!3897224 (= res!1576581 (not (= lt!1357514 (Some!8847 (tuple2!40575 (_1!23421 (v!39159 lt!1357514)) (_2!23421 (v!39159 lt!1357514)))))))))

(assert (=> b!3897224 e!2409482))

(declare-fun res!1576578 () Bool)

(assert (=> b!3897224 (=> (not res!1576578) (not e!2409482))))

(assert (=> b!3897224 (= res!1576578 (isPrefix!3523 lt!1357523 lt!1357523))))

(declare-fun lt!1357530 () Unit!59462)

(declare-fun lemmaIsPrefixRefl!2230 (List!41463 List!41463) Unit!59462)

(assert (=> b!3897224 (= lt!1357530 (lemmaIsPrefixRefl!2230 lt!1357523 lt!1357523))))

(assert (=> b!3897224 (= lt!1357531 (tuple2!40577 (Cons!41340 (_1!23421 (v!39159 lt!1357514)) (_1!23422 lt!1357518)) (_2!23422 lt!1357518)))))

(declare-fun tp!1185800 () Bool)

(declare-fun err!4361 () Option!8848)

(declare-fun e!2409491 () Bool)

(declare-fun b!3897225 () Bool)

(assert (=> b!3897225 (= e!2409491 (and tp!1185800 (inv!55499 (tag!7288 (rule!9330 (_1!23421 (v!39159 err!4361))))) (inv!55503 (transformation!6428 (rule!9330 (_1!23421 (v!39159 err!4361))))) e!2409494))))

(declare-fun b!3897226 () Bool)

(declare-fun res!1576585 () Bool)

(assert (=> b!3897226 (=> (not res!1576585) (not e!2409497))))

(declare-fun isEmpty!24567 (List!41465) Bool)

(assert (=> b!3897226 (= res!1576585 (not (isEmpty!24567 rules!2768)))))

(assert (=> b!3897227 (= e!2409477 (and tp!1185794 tp!1185812))))

(declare-fun b!3897228 () Bool)

(assert (=> b!3897228 true))

(declare-fun e!2409487 () Bool)

(assert (=> b!3897228 e!2409487))

(assert (=> b!3897228 (= e!2409485 err!4361)))

(declare-fun b!3897229 () Bool)

(declare-fun tp!1185798 () Bool)

(assert (=> b!3897229 (= e!2409474 (and e!2409492 tp!1185798))))

(declare-fun b!3897230 () Bool)

(assert (=> b!3897230 (= e!2409498 call!283714)))

(declare-fun tp!1185804 () Bool)

(declare-fun b!3897231 () Bool)

(declare-fun inv!21 (TokenValue!6658) Bool)

(assert (=> b!3897231 (= e!2409499 (and (inv!21 (value!203832 (h!46760 prefixTokens!80))) e!2409481 tp!1185804))))

(declare-fun b!3897232 () Bool)

(declare-fun res!1576576 () Bool)

(assert (=> b!3897232 (=> (not res!1576576) (not e!2409497))))

(declare-fun isEmpty!24568 (List!41463) Bool)

(assert (=> b!3897232 (= res!1576576 (not (isEmpty!24568 prefix!426)))))

(declare-fun tp!1185795 () Bool)

(declare-fun b!3897233 () Bool)

(declare-fun e!2409483 () Bool)

(assert (=> b!3897233 (= e!2409483 (and (inv!21 (value!203832 (_1!23421 (v!39159 err!4361)))) e!2409491 tp!1185795))))

(declare-fun b!3897234 () Bool)

(declare-fun res!1576580 () Bool)

(assert (=> b!3897234 (=> (not res!1576580) (not e!2409469))))

(assert (=> b!3897234 (= res!1576580 (= (lexList!1785 thiss!20629 rules!2768 suffix!1176) (tuple2!40577 suffixTokens!72 suffixResult!91)))))

(declare-fun tp!1185810 () Bool)

(declare-fun b!3897235 () Bool)

(assert (=> b!3897235 (= e!2409487 (and (inv!55502 (_1!23421 (v!39159 err!4361))) e!2409483 tp!1185810))))

(declare-fun tp!1185791 () Bool)

(declare-fun b!3897236 () Bool)

(assert (=> b!3897236 (= e!2409480 (and (inv!21 (value!203832 (h!46760 suffixTokens!72))) e!2409476 tp!1185791))))

(assert (= (and start!364916 res!1576584) b!3897226))

(assert (= (and b!3897226 res!1576585) b!3897222))

(assert (= (and b!3897222 res!1576574) b!3897205))

(assert (= (and b!3897205 res!1576583) b!3897232))

(assert (= (and b!3897232 res!1576576) b!3897214))

(assert (= (and b!3897214 res!1576582) b!3897234))

(assert (= (and b!3897234 res!1576580) b!3897208))

(assert (= (and b!3897208 res!1576575) b!3897216))

(assert (= (and b!3897216 res!1576586) b!3897220))

(assert (= (and b!3897216 (not res!1576577)) b!3897212))

(assert (= (and b!3897212 (not res!1576579)) b!3897224))

(assert (= (and b!3897224 res!1576578) b!3897223))

(assert (= (and b!3897223 c!677533) b!3897230))

(assert (= (and b!3897223 (not c!677533)) b!3897217))

(assert (= (and b!3897217 c!677532) b!3897209))

(assert (= (and b!3897217 (not c!677532)) b!3897228))

(assert (= b!3897225 b!3897210))

(assert (= b!3897233 b!3897225))

(assert (= b!3897235 b!3897233))

(assert (= (and b!3897228 ((_ is Some!8847) err!4361)) b!3897235))

(assert (= (or b!3897230 b!3897209) bm!283709))

(assert (= (and b!3897224 (not res!1576581)) b!3897218))

(assert (= (and start!364916 ((_ is Cons!41339) suffixResult!91)) b!3897206))

(assert (= (and start!364916 ((_ is Cons!41339) suffix!1176)) b!3897204))

(assert (= b!3897221 b!3897227))

(assert (= b!3897229 b!3897221))

(assert (= (and start!364916 ((_ is Cons!41341) rules!2768)) b!3897229))

(assert (= b!3897213 b!3897219))

(assert (= b!3897231 b!3897213))

(assert (= b!3897203 b!3897231))

(assert (= (and start!364916 ((_ is Cons!41340) prefixTokens!80)) b!3897203))

(assert (= b!3897215 b!3897202))

(assert (= b!3897236 b!3897215))

(assert (= b!3897211 b!3897236))

(assert (= (and start!364916 ((_ is Cons!41340) suffixTokens!72)) b!3897211))

(assert (= (and start!364916 ((_ is Cons!41339) prefix!426)) b!3897207))

(declare-fun m!4456173 () Bool)

(assert (=> b!3897212 m!4456173))

(declare-fun m!4456175 () Bool)

(assert (=> b!3897225 m!4456175))

(declare-fun m!4456177 () Bool)

(assert (=> b!3897225 m!4456177))

(declare-fun m!4456179 () Bool)

(assert (=> bm!283709 m!4456179))

(declare-fun m!4456181 () Bool)

(assert (=> b!3897226 m!4456181))

(declare-fun m!4456183 () Bool)

(assert (=> b!3897221 m!4456183))

(declare-fun m!4456185 () Bool)

(assert (=> b!3897221 m!4456185))

(declare-fun m!4456187 () Bool)

(assert (=> b!3897233 m!4456187))

(declare-fun m!4456189 () Bool)

(assert (=> b!3897203 m!4456189))

(declare-fun m!4456191 () Bool)

(assert (=> b!3897208 m!4456191))

(declare-fun m!4456193 () Bool)

(assert (=> b!3897213 m!4456193))

(declare-fun m!4456195 () Bool)

(assert (=> b!3897213 m!4456195))

(declare-fun m!4456197 () Bool)

(assert (=> b!3897214 m!4456197))

(declare-fun m!4456199 () Bool)

(assert (=> b!3897214 m!4456199))

(declare-fun m!4456201 () Bool)

(assert (=> b!3897214 m!4456201))

(declare-fun m!4456203 () Bool)

(assert (=> b!3897235 m!4456203))

(declare-fun m!4456205 () Bool)

(assert (=> b!3897236 m!4456205))

(declare-fun m!4456207 () Bool)

(assert (=> b!3897224 m!4456207))

(declare-fun m!4456209 () Bool)

(assert (=> b!3897224 m!4456209))

(declare-fun m!4456211 () Bool)

(assert (=> b!3897215 m!4456211))

(declare-fun m!4456213 () Bool)

(assert (=> b!3897215 m!4456213))

(declare-fun m!4456215 () Bool)

(assert (=> b!3897211 m!4456215))

(declare-fun m!4456217 () Bool)

(assert (=> b!3897220 m!4456217))

(declare-fun m!4456219 () Bool)

(assert (=> b!3897231 m!4456219))

(declare-fun m!4456221 () Bool)

(assert (=> b!3897216 m!4456221))

(declare-fun m!4456223 () Bool)

(assert (=> b!3897216 m!4456223))

(declare-fun m!4456225 () Bool)

(assert (=> b!3897216 m!4456225))

(declare-fun m!4456227 () Bool)

(assert (=> b!3897216 m!4456227))

(declare-fun m!4456229 () Bool)

(assert (=> b!3897216 m!4456229))

(declare-fun m!4456231 () Bool)

(assert (=> b!3897216 m!4456231))

(declare-fun m!4456233 () Bool)

(assert (=> b!3897216 m!4456233))

(declare-fun m!4456235 () Bool)

(assert (=> b!3897216 m!4456235))

(assert (=> b!3897216 m!4456223))

(declare-fun m!4456237 () Bool)

(assert (=> b!3897216 m!4456237))

(declare-fun m!4456239 () Bool)

(assert (=> b!3897216 m!4456239))

(declare-fun m!4456241 () Bool)

(assert (=> b!3897216 m!4456241))

(declare-fun m!4456243 () Bool)

(assert (=> b!3897216 m!4456243))

(assert (=> b!3897216 m!4456237))

(declare-fun m!4456245 () Bool)

(assert (=> b!3897216 m!4456245))

(declare-fun m!4456247 () Bool)

(assert (=> b!3897216 m!4456247))

(declare-fun m!4456249 () Bool)

(assert (=> b!3897222 m!4456249))

(declare-fun m!4456251 () Bool)

(assert (=> b!3897232 m!4456251))

(declare-fun m!4456253 () Bool)

(assert (=> b!3897209 m!4456253))

(declare-fun m!4456255 () Bool)

(assert (=> b!3897218 m!4456255))

(declare-fun m!4456257 () Bool)

(assert (=> b!3897205 m!4456257))

(declare-fun m!4456259 () Bool)

(assert (=> b!3897234 m!4456259))

(check-sat (not b!3897209) (not b!3897214) (not b!3897229) (not b!3897226) (not b!3897215) (not b!3897212) b_and!294199 (not bm!283709) (not b!3897233) (not b!3897206) (not b_next!106167) (not b!3897235) (not b!3897234) (not b!3897220) (not b!3897218) (not b!3897211) (not b_next!106163) (not b_next!106171) tp_is_empty!19637 (not b!3897204) b_and!294203 (not b!3897225) (not b!3897232) (not b_next!106173) (not b_next!106161) (not b!3897224) (not b!3897231) b_and!294191 b_and!294197 b_and!294193 (not b!3897216) (not b_next!106175) (not b!3897203) (not b!3897236) (not b!3897222) (not b_next!106169) (not b!3897221) (not b!3897205) b_and!294195 (not b!3897208) (not b_next!106165) b_and!294205 (not b!3897207) (not b!3897213) b_and!294201)
(check-sat (not b_next!106163) (not b_next!106171) b_and!294203 b_and!294191 (not b_next!106175) (not b_next!106169) b_and!294199 b_and!294195 (not b_next!106167) b_and!294201 (not b_next!106173) (not b_next!106161) b_and!294197 b_and!294193 (not b_next!106165) b_and!294205)
