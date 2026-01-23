; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!359660 () Bool)

(assert start!359660)

(declare-fun b!3841736 () Bool)

(declare-fun b_free!102537 () Bool)

(declare-fun b_next!103241 () Bool)

(assert (=> b!3841736 (= b_free!102537 (not b_next!103241))))

(declare-fun tp!1163920 () Bool)

(declare-fun b_and!286215 () Bool)

(assert (=> b!3841736 (= tp!1163920 b_and!286215)))

(declare-fun b_free!102539 () Bool)

(declare-fun b_next!103243 () Bool)

(assert (=> b!3841736 (= b_free!102539 (not b_next!103243))))

(declare-fun tp!1163906 () Bool)

(declare-fun b_and!286217 () Bool)

(assert (=> b!3841736 (= tp!1163906 b_and!286217)))

(declare-fun b!3841742 () Bool)

(declare-fun b_free!102541 () Bool)

(declare-fun b_next!103245 () Bool)

(assert (=> b!3841742 (= b_free!102541 (not b_next!103245))))

(declare-fun tp!1163905 () Bool)

(declare-fun b_and!286219 () Bool)

(assert (=> b!3841742 (= tp!1163905 b_and!286219)))

(declare-fun b_free!102543 () Bool)

(declare-fun b_next!103247 () Bool)

(assert (=> b!3841742 (= b_free!102543 (not b_next!103247))))

(declare-fun tp!1163915 () Bool)

(declare-fun b_and!286221 () Bool)

(assert (=> b!3841742 (= tp!1163915 b_and!286221)))

(declare-fun b!3841738 () Bool)

(declare-fun b_free!102545 () Bool)

(declare-fun b_next!103249 () Bool)

(assert (=> b!3841738 (= b_free!102545 (not b_next!103249))))

(declare-fun tp!1163909 () Bool)

(declare-fun b_and!286223 () Bool)

(assert (=> b!3841738 (= tp!1163909 b_and!286223)))

(declare-fun b_free!102547 () Bool)

(declare-fun b_next!103251 () Bool)

(assert (=> b!3841738 (= b_free!102547 (not b_next!103251))))

(declare-fun tp!1163917 () Bool)

(declare-fun b_and!286225 () Bool)

(assert (=> b!3841738 (= tp!1163917 b_and!286225)))

(declare-fun b!3841727 () Bool)

(declare-fun b_free!102549 () Bool)

(declare-fun b_next!103253 () Bool)

(assert (=> b!3841727 (= b_free!102549 (not b_next!103253))))

(declare-fun tp!1163912 () Bool)

(declare-fun b_and!286227 () Bool)

(assert (=> b!3841727 (= tp!1163912 b_and!286227)))

(declare-fun b_free!102551 () Bool)

(declare-fun b_next!103255 () Bool)

(assert (=> b!3841727 (= b_free!102551 (not b_next!103255))))

(declare-fun tp!1163907 () Bool)

(declare-fun b_and!286229 () Bool)

(assert (=> b!3841727 (= tp!1163907 b_and!286229)))

(declare-fun b!3841718 () Bool)

(declare-fun e!2373604 () Bool)

(declare-datatypes ((List!40780 0))(
  ( (Nil!40656) (Cons!40656 (h!46076 (_ BitVec 16)) (t!310449 List!40780)) )
))
(declare-datatypes ((TokenValue!6504 0))(
  ( (FloatLiteralValue!13008 (text!45973 List!40780)) (TokenValueExt!6503 (__x!25225 Int)) (Broken!32520 (value!199417 List!40780)) (Object!6627) (End!6504) (Def!6504) (Underscore!6504) (Match!6504) (Else!6504) (Error!6504) (Case!6504) (If!6504) (Extends!6504) (Abstract!6504) (Class!6504) (Val!6504) (DelimiterValue!13008 (del!6564 List!40780)) (KeywordValue!6510 (value!199418 List!40780)) (CommentValue!13008 (value!199419 List!40780)) (WhitespaceValue!13008 (value!199420 List!40780)) (IndentationValue!6504 (value!199421 List!40780)) (String!46237) (Int32!6504) (Broken!32521 (value!199422 List!40780)) (Boolean!6505) (Unit!58357) (OperatorValue!6507 (op!6564 List!40780)) (IdentifierValue!13008 (value!199423 List!40780)) (IdentifierValue!13009 (value!199424 List!40780)) (WhitespaceValue!13009 (value!199425 List!40780)) (True!13008) (False!13008) (Broken!32522 (value!199426 List!40780)) (Broken!32523 (value!199427 List!40780)) (True!13009) (RightBrace!6504) (RightBracket!6504) (Colon!6504) (Null!6504) (Comma!6504) (LeftBracket!6504) (False!13009) (LeftBrace!6504) (ImaginaryLiteralValue!6504 (text!45974 List!40780)) (StringLiteralValue!19512 (value!199428 List!40780)) (EOFValue!6504 (value!199429 List!40780)) (IdentValue!6504 (value!199430 List!40780)) (DelimiterValue!13009 (value!199431 List!40780)) (DedentValue!6504 (value!199432 List!40780)) (NewLineValue!6504 (value!199433 List!40780)) (IntegerValue!19512 (value!199434 (_ BitVec 32)) (text!45975 List!40780)) (IntegerValue!19513 (value!199435 Int) (text!45976 List!40780)) (Times!6504) (Or!6504) (Equal!6504) (Minus!6504) (Broken!32524 (value!199436 List!40780)) (And!6504) (Div!6504) (LessEqual!6504) (Mod!6504) (Concat!17683) (Not!6504) (Plus!6504) (SpaceValue!6504 (value!199437 List!40780)) (IntegerValue!19514 (value!199438 Int) (text!45977 List!40780)) (StringLiteralValue!19513 (text!45978 List!40780)) (FloatLiteralValue!13009 (text!45979 List!40780)) (BytesLiteralValue!6504 (value!199439 List!40780)) (CommentValue!13009 (value!199440 List!40780)) (StringLiteralValue!19514 (value!199441 List!40780)) (ErrorTokenValue!6504 (msg!6565 List!40780)) )
))
(declare-datatypes ((C!22544 0))(
  ( (C!22545 (val!13366 Int)) )
))
(declare-datatypes ((Regex!11179 0))(
  ( (ElementMatch!11179 (c!669488 C!22544)) (Concat!17684 (regOne!22870 Regex!11179) (regTwo!22870 Regex!11179)) (EmptyExpr!11179) (Star!11179 (reg!11508 Regex!11179)) (EmptyLang!11179) (Union!11179 (regOne!22871 Regex!11179) (regTwo!22871 Regex!11179)) )
))
(declare-datatypes ((String!46238 0))(
  ( (String!46239 (value!199442 String)) )
))
(declare-datatypes ((List!40781 0))(
  ( (Nil!40657) (Cons!40657 (h!46077 C!22544) (t!310450 List!40781)) )
))
(declare-datatypes ((IArray!24975 0))(
  ( (IArray!24976 (innerList!12545 List!40781)) )
))
(declare-datatypes ((Conc!12485 0))(
  ( (Node!12485 (left!31396 Conc!12485) (right!31726 Conc!12485) (csize!25200 Int) (cheight!12696 Int)) (Leaf!19329 (xs!15791 IArray!24975) (csize!25201 Int)) (Empty!12485) )
))
(declare-datatypes ((BalanceConc!24564 0))(
  ( (BalanceConc!24565 (c!669489 Conc!12485)) )
))
(declare-datatypes ((TokenValueInjection!12436 0))(
  ( (TokenValueInjection!12437 (toValue!8690 Int) (toChars!8549 Int)) )
))
(declare-datatypes ((Rule!12348 0))(
  ( (Rule!12349 (regex!6274 Regex!11179) (tag!7134 String!46238) (isSeparator!6274 Bool) (transformation!6274 TokenValueInjection!12436)) )
))
(declare-datatypes ((Token!11686 0))(
  ( (Token!11687 (value!199443 TokenValue!6504) (rule!9112 Rule!12348) (size!30595 Int) (originalCharacters!6874 List!40781)) )
))
(declare-datatypes ((List!40782 0))(
  ( (Nil!40658) (Cons!40658 (h!46078 Token!11686) (t!310451 List!40782)) )
))
(declare-fun suffixTokens!72 () List!40782)

(declare-fun e!2373609 () Bool)

(declare-fun tp!1163913 () Bool)

(declare-fun inv!54802 (Token!11686) Bool)

(assert (=> b!3841718 (= e!2373604 (and (inv!54802 (h!46078 suffixTokens!72)) e!2373609 tp!1163913))))

(declare-fun b!3841719 () Bool)

(declare-fun e!2373601 () Bool)

(declare-fun e!2373594 () Bool)

(assert (=> b!3841719 (= e!2373601 e!2373594)))

(declare-fun res!1554889 () Bool)

(assert (=> b!3841719 (=> (not res!1554889) (not e!2373594))))

(declare-datatypes ((tuple2!39830 0))(
  ( (tuple2!39831 (_1!23049 Token!11686) (_2!23049 List!40781)) )
))
(declare-datatypes ((Option!8692 0))(
  ( (None!8691) (Some!8691 (v!38983 tuple2!39830)) )
))
(declare-fun lt!1333491 () Option!8692)

(get-info :version)

(assert (=> b!3841719 (= res!1554889 ((_ is Some!8691) lt!1333491))))

(declare-datatypes ((LexerInterface!5863 0))(
  ( (LexerInterfaceExt!5860 (__x!25226 Int)) (Lexer!5861) )
))
(declare-fun thiss!20629 () LexerInterface!5863)

(declare-datatypes ((List!40783 0))(
  ( (Nil!40659) (Cons!40659 (h!46079 Rule!12348) (t!310452 List!40783)) )
))
(declare-fun rules!2768 () List!40783)

(declare-fun lt!1333496 () List!40781)

(declare-fun maxPrefix!3167 (LexerInterface!5863 List!40783 List!40781) Option!8692)

(assert (=> b!3841719 (= lt!1333491 (maxPrefix!3167 thiss!20629 rules!2768 lt!1333496))))

(declare-fun b!3841720 () Bool)

(declare-fun res!1554897 () Bool)

(declare-fun e!2373622 () Bool)

(assert (=> b!3841720 (=> (not res!1554897) (not e!2373622))))

(declare-fun prefixTokens!80 () List!40782)

(declare-fun isEmpty!24034 (List!40782) Bool)

(assert (=> b!3841720 (= res!1554897 (not (isEmpty!24034 prefixTokens!80)))))

(declare-fun b!3841721 () Bool)

(declare-fun res!1554887 () Bool)

(assert (=> b!3841721 (=> (not res!1554887) (not e!2373622))))

(declare-fun rulesInvariant!5206 (LexerInterface!5863 List!40783) Bool)

(assert (=> b!3841721 (= res!1554887 (rulesInvariant!5206 thiss!20629 rules!2768))))

(declare-fun b!3841722 () Bool)

(declare-fun e!2373620 () Bool)

(assert (=> b!3841722 (= e!2373594 (not e!2373620))))

(declare-fun res!1554886 () Bool)

(assert (=> b!3841722 (=> res!1554886 e!2373620)))

(declare-fun lt!1333494 () List!40781)

(assert (=> b!3841722 (= res!1554886 (not (= lt!1333494 lt!1333496)))))

(declare-datatypes ((tuple2!39832 0))(
  ( (tuple2!39833 (_1!23050 List!40782) (_2!23050 List!40781)) )
))
(declare-fun lt!1333504 () tuple2!39832)

(declare-fun lexList!1631 (LexerInterface!5863 List!40783 List!40781) tuple2!39832)

(assert (=> b!3841722 (= lt!1333504 (lexList!1631 thiss!20629 rules!2768 (_2!23049 (v!38983 lt!1333491))))))

(declare-fun lt!1333500 () Int)

(declare-fun lt!1333492 () TokenValue!6504)

(declare-fun lt!1333501 () List!40781)

(declare-fun lt!1333488 () List!40781)

(assert (=> b!3841722 (and (= (size!30595 (_1!23049 (v!38983 lt!1333491))) lt!1333500) (= (originalCharacters!6874 (_1!23049 (v!38983 lt!1333491))) lt!1333488) (= (tuple2!39831 (_1!23049 (v!38983 lt!1333491)) (_2!23049 (v!38983 lt!1333491))) (tuple2!39831 (Token!11687 lt!1333492 (rule!9112 (_1!23049 (v!38983 lt!1333491))) lt!1333500 lt!1333488) lt!1333501)))))

(declare-fun size!30596 (List!40781) Int)

(assert (=> b!3841722 (= lt!1333500 (size!30596 lt!1333488))))

(declare-fun e!2373605 () Bool)

(assert (=> b!3841722 e!2373605))

(declare-fun res!1554895 () Bool)

(assert (=> b!3841722 (=> (not res!1554895) (not e!2373605))))

(assert (=> b!3841722 (= res!1554895 (= (value!199443 (_1!23049 (v!38983 lt!1333491))) lt!1333492))))

(declare-fun apply!9517 (TokenValueInjection!12436 BalanceConc!24564) TokenValue!6504)

(declare-fun seqFromList!4545 (List!40781) BalanceConc!24564)

(assert (=> b!3841722 (= lt!1333492 (apply!9517 (transformation!6274 (rule!9112 (_1!23049 (v!38983 lt!1333491)))) (seqFromList!4545 lt!1333488)))))

(assert (=> b!3841722 (= (_2!23049 (v!38983 lt!1333491)) lt!1333501)))

(declare-datatypes ((Unit!58358 0))(
  ( (Unit!58359) )
))
(declare-fun lt!1333490 () Unit!58358)

(declare-fun lemmaSamePrefixThenSameSuffix!1594 (List!40781 List!40781 List!40781 List!40781 List!40781) Unit!58358)

(assert (=> b!3841722 (= lt!1333490 (lemmaSamePrefixThenSameSuffix!1594 lt!1333488 (_2!23049 (v!38983 lt!1333491)) lt!1333488 lt!1333501 lt!1333496))))

(declare-fun getSuffix!1828 (List!40781 List!40781) List!40781)

(assert (=> b!3841722 (= lt!1333501 (getSuffix!1828 lt!1333496 lt!1333488))))

(declare-fun isPrefix!3373 (List!40781 List!40781) Bool)

(assert (=> b!3841722 (isPrefix!3373 lt!1333488 lt!1333494)))

(declare-fun ++!10305 (List!40781 List!40781) List!40781)

(assert (=> b!3841722 (= lt!1333494 (++!10305 lt!1333488 (_2!23049 (v!38983 lt!1333491))))))

(declare-fun lt!1333502 () Unit!58358)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2236 (List!40781 List!40781) Unit!58358)

(assert (=> b!3841722 (= lt!1333502 (lemmaConcatTwoListThenFirstIsPrefix!2236 lt!1333488 (_2!23049 (v!38983 lt!1333491))))))

(declare-fun list!15138 (BalanceConc!24564) List!40781)

(declare-fun charsOf!4102 (Token!11686) BalanceConc!24564)

(assert (=> b!3841722 (= lt!1333488 (list!15138 (charsOf!4102 (_1!23049 (v!38983 lt!1333491)))))))

(declare-fun ruleValid!2226 (LexerInterface!5863 Rule!12348) Bool)

(assert (=> b!3841722 (ruleValid!2226 thiss!20629 (rule!9112 (_1!23049 (v!38983 lt!1333491))))))

(declare-fun lt!1333497 () Unit!58358)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1306 (LexerInterface!5863 Rule!12348 List!40783) Unit!58358)

(assert (=> b!3841722 (= lt!1333497 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1306 thiss!20629 (rule!9112 (_1!23049 (v!38983 lt!1333491))) rules!2768))))

(declare-fun lt!1333499 () Unit!58358)

(declare-fun lemmaCharactersSize!935 (Token!11686) Unit!58358)

(assert (=> b!3841722 (= lt!1333499 (lemmaCharactersSize!935 (_1!23049 (v!38983 lt!1333491))))))

(declare-fun err!4249 () Option!8692)

(declare-fun e!2373621 () Bool)

(declare-fun b!3841723 () Bool)

(declare-fun tp!1163916 () Bool)

(declare-fun e!2373603 () Bool)

(assert (=> b!3841723 (= e!2373621 (and (inv!54802 (_1!23049 (v!38983 err!4249))) e!2373603 tp!1163916))))

(declare-fun b!3841724 () Bool)

(declare-fun e!2373608 () Option!8692)

(declare-fun call!281972 () Option!8692)

(assert (=> b!3841724 (= e!2373608 call!281972)))

(declare-fun e!2373600 () Bool)

(declare-fun b!3841725 () Bool)

(declare-fun tp!1163903 () Bool)

(declare-fun e!2373607 () Bool)

(declare-fun inv!21 (TokenValue!6504) Bool)

(assert (=> b!3841725 (= e!2373600 (and (inv!21 (value!199443 (h!46078 prefixTokens!80))) e!2373607 tp!1163903))))

(declare-fun b!3841726 () Bool)

(assert (=> b!3841726 (= e!2373622 e!2373601)))

(declare-fun res!1554894 () Bool)

(assert (=> b!3841726 (=> (not res!1554894) (not e!2373601))))

(declare-fun lt!1333505 () List!40782)

(declare-fun suffixResult!91 () List!40781)

(declare-fun lt!1333495 () tuple2!39832)

(assert (=> b!3841726 (= res!1554894 (= lt!1333495 (tuple2!39833 lt!1333505 suffixResult!91)))))

(assert (=> b!3841726 (= lt!1333495 (lexList!1631 thiss!20629 rules!2768 lt!1333496))))

(declare-fun ++!10306 (List!40782 List!40782) List!40782)

(assert (=> b!3841726 (= lt!1333505 (++!10306 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!40781)

(declare-fun suffix!1176 () List!40781)

(assert (=> b!3841726 (= lt!1333496 (++!10305 prefix!426 suffix!1176))))

(declare-fun e!2373610 () Bool)

(assert (=> b!3841727 (= e!2373610 (and tp!1163912 tp!1163907))))

(declare-fun lt!1333485 () Option!8692)

(declare-fun b!3841728 () Bool)

(assert (=> b!3841728 (= lt!1333485 (maxPrefix!3167 thiss!20629 (t!310452 rules!2768) lt!1333496))))

(declare-fun lt!1333486 () Option!8692)

(assert (=> b!3841728 (= lt!1333486 call!281972)))

(declare-fun e!2373614 () Option!8692)

(assert (=> b!3841728 (= e!2373614 (ite (and ((_ is None!8691) lt!1333486) ((_ is None!8691) lt!1333485)) None!8691 (ite ((_ is None!8691) lt!1333485) lt!1333486 (ite ((_ is None!8691) lt!1333486) lt!1333485 (ite (>= (size!30595 (_1!23049 (v!38983 lt!1333486))) (size!30595 (_1!23049 (v!38983 lt!1333485)))) (Some!8691 (v!38983 lt!1333486)) lt!1333485)))))))

(declare-fun b!3841729 () Bool)

(declare-fun e!2373618 () Bool)

(declare-fun rulesValidInductive!2216 (LexerInterface!5863 List!40783) Bool)

(assert (=> b!3841729 (= e!2373618 (rulesValidInductive!2216 thiss!20629 rules!2768))))

(assert (=> b!3841729 (= (maxPrefix!3167 thiss!20629 rules!2768 (++!10305 prefix!426 Nil!40657)) (Some!8691 (tuple2!39831 (_1!23049 (v!38983 lt!1333491)) Nil!40657)))))

(declare-fun lt!1333498 () Unit!58358)

(declare-fun lemmaMaxPrefixThenWithShorterSuffix!4 (LexerInterface!5863 List!40783 List!40781 List!40781 List!40781 Token!11686 List!40781 List!40781) Unit!58358)

(assert (=> b!3841729 (= lt!1333498 (lemmaMaxPrefixThenWithShorterSuffix!4 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!40657 (_1!23049 (v!38983 lt!1333491)) suffix!1176 Nil!40657))))

(declare-fun b!3841730 () Bool)

(declare-fun e!2373595 () Bool)

(declare-fun tp_is_empty!19329 () Bool)

(declare-fun tp!1163908 () Bool)

(assert (=> b!3841730 (= e!2373595 (and tp_is_empty!19329 tp!1163908))))

(declare-fun tp!1163919 () Bool)

(declare-fun e!2373597 () Bool)

(declare-fun b!3841731 () Bool)

(declare-fun inv!54799 (String!46238) Bool)

(declare-fun inv!54803 (TokenValueInjection!12436) Bool)

(assert (=> b!3841731 (= e!2373607 (and tp!1163919 (inv!54799 (tag!7134 (rule!9112 (h!46078 prefixTokens!80)))) (inv!54803 (transformation!6274 (rule!9112 (h!46078 prefixTokens!80)))) e!2373597))))

(declare-fun b!3841732 () Bool)

(assert (=> b!3841732 (= e!2373608 e!2373614)))

(declare-fun c!669486 () Bool)

(assert (=> b!3841732 (= c!669486 ((_ is Cons!40659) rules!2768))))

(declare-fun b!3841733 () Bool)

(declare-fun e!2373615 () Bool)

(assert (=> b!3841733 (= e!2373615 (= lt!1333491 e!2373608))))

(declare-fun c!669487 () Bool)

(assert (=> b!3841733 (= c!669487 (and ((_ is Cons!40659) rules!2768) ((_ is Nil!40659) (t!310452 rules!2768))))))

(declare-fun e!2373625 () Bool)

(declare-fun tp!1163911 () Bool)

(declare-fun b!3841734 () Bool)

(declare-fun e!2373596 () Bool)

(assert (=> b!3841734 (= e!2373625 (and tp!1163911 (inv!54799 (tag!7134 (h!46079 rules!2768))) (inv!54803 (transformation!6274 (h!46079 rules!2768))) e!2373596))))

(declare-fun e!2373619 () Bool)

(declare-fun tp!1163921 () Bool)

(declare-fun b!3841735 () Bool)

(assert (=> b!3841735 (= e!2373619 (and (inv!54802 (h!46078 prefixTokens!80)) e!2373600 tp!1163921))))

(declare-fun res!1554893 () Bool)

(assert (=> start!359660 (=> (not res!1554893) (not e!2373622))))

(assert (=> start!359660 (= res!1554893 ((_ is Lexer!5861) thiss!20629))))

(assert (=> start!359660 e!2373622))

(declare-fun e!2373623 () Bool)

(assert (=> start!359660 e!2373623))

(assert (=> start!359660 true))

(declare-fun e!2373613 () Bool)

(assert (=> start!359660 e!2373613))

(declare-fun e!2373612 () Bool)

(assert (=> start!359660 e!2373612))

(assert (=> start!359660 e!2373619))

(assert (=> start!359660 e!2373604))

(assert (=> start!359660 e!2373595))

(declare-fun e!2373606 () Bool)

(assert (=> b!3841736 (= e!2373606 (and tp!1163920 tp!1163906))))

(declare-fun b!3841737 () Bool)

(declare-fun e!2373593 () Bool)

(declare-fun tp!1163922 () Bool)

(assert (=> b!3841737 (= e!2373603 (and (inv!21 (value!199443 (_1!23049 (v!38983 err!4249)))) e!2373593 tp!1163922))))

(assert (=> b!3841738 (= e!2373597 (and tp!1163909 tp!1163917))))

(declare-fun b!3841739 () Bool)

(assert (=> b!3841739 (= e!2373605 (= (size!30595 (_1!23049 (v!38983 lt!1333491))) (size!30596 (originalCharacters!6874 (_1!23049 (v!38983 lt!1333491))))))))

(declare-fun b!3841740 () Bool)

(declare-fun e!2373602 () Bool)

(assert (=> b!3841740 (= e!2373620 e!2373602)))

(declare-fun res!1554884 () Bool)

(assert (=> b!3841740 (=> res!1554884 e!2373602)))

(declare-fun lt!1333487 () List!40782)

(assert (=> b!3841740 (= res!1554884 (or (not (= lt!1333495 (tuple2!39833 lt!1333487 (_2!23050 lt!1333504)))) (not (= lt!1333504 (tuple2!39833 (_1!23050 lt!1333504) (_2!23050 lt!1333504)))) (not (= (_2!23049 (v!38983 lt!1333491)) suffix!1176))))))

(declare-fun lt!1333503 () List!40782)

(assert (=> b!3841740 (= lt!1333487 (++!10306 lt!1333503 (_1!23050 lt!1333504)))))

(assert (=> b!3841740 (= lt!1333503 (Cons!40658 (_1!23049 (v!38983 lt!1333491)) Nil!40658))))

(declare-fun tp!1163914 () Bool)

(declare-fun b!3841741 () Bool)

(declare-fun e!2373627 () Bool)

(assert (=> b!3841741 (= e!2373609 (and (inv!21 (value!199443 (h!46078 suffixTokens!72))) e!2373627 tp!1163914))))

(assert (=> b!3841742 (= e!2373596 (and tp!1163905 tp!1163915))))

(declare-fun b!3841743 () Bool)

(declare-fun res!1554885 () Bool)

(assert (=> b!3841743 (=> (not res!1554885) (not e!2373622))))

(declare-fun isEmpty!24035 (List!40781) Bool)

(assert (=> b!3841743 (= res!1554885 (not (isEmpty!24035 prefix!426)))))

(declare-fun b!3841744 () Bool)

(declare-fun res!1554898 () Bool)

(assert (=> b!3841744 (=> res!1554898 e!2373618)))

(assert (=> b!3841744 (= res!1554898 (not (isPrefix!3373 Nil!40657 suffix!1176)))))

(declare-fun b!3841745 () Bool)

(declare-fun tp!1163918 () Bool)

(assert (=> b!3841745 (= e!2373593 (and tp!1163918 (inv!54799 (tag!7134 (rule!9112 (_1!23049 (v!38983 err!4249))))) (inv!54803 (transformation!6274 (rule!9112 (_1!23049 (v!38983 err!4249))))) e!2373606))))

(declare-fun b!3841746 () Bool)

(declare-fun tp!1163910 () Bool)

(assert (=> b!3841746 (= e!2373612 (and e!2373625 tp!1163910))))

(declare-fun b!3841747 () Bool)

(declare-fun tp!1163924 () Bool)

(assert (=> b!3841747 (= e!2373627 (and tp!1163924 (inv!54799 (tag!7134 (rule!9112 (h!46078 suffixTokens!72)))) (inv!54803 (transformation!6274 (rule!9112 (h!46078 suffixTokens!72)))) e!2373610))))

(declare-fun b!3841748 () Bool)

(declare-fun tp!1163904 () Bool)

(assert (=> b!3841748 (= e!2373613 (and tp_is_empty!19329 tp!1163904))))

(declare-fun b!3841749 () Bool)

(declare-fun res!1554892 () Bool)

(assert (=> b!3841749 (=> (not res!1554892) (not e!2373622))))

(declare-fun isEmpty!24036 (List!40783) Bool)

(assert (=> b!3841749 (= res!1554892 (not (isEmpty!24036 rules!2768)))))

(declare-fun b!3841750 () Bool)

(declare-fun e!2373611 () Bool)

(assert (=> b!3841750 (= e!2373602 e!2373611)))

(declare-fun res!1554888 () Bool)

(assert (=> b!3841750 (=> res!1554888 e!2373611)))

(assert (=> b!3841750 (= res!1554888 (not (= lt!1333491 (Some!8691 (tuple2!39831 (_1!23049 (v!38983 lt!1333491)) (_2!23049 (v!38983 lt!1333491)))))))))

(assert (=> b!3841750 e!2373615))

(declare-fun res!1554890 () Bool)

(assert (=> b!3841750 (=> (not res!1554890) (not e!2373615))))

(assert (=> b!3841750 (= res!1554890 (isPrefix!3373 lt!1333496 lt!1333496))))

(declare-fun lt!1333489 () Unit!58358)

(declare-fun lemmaIsPrefixRefl!2146 (List!40781 List!40781) Unit!58358)

(assert (=> b!3841750 (= lt!1333489 (lemmaIsPrefixRefl!2146 lt!1333496 lt!1333496))))

(assert (=> b!3841750 (= lt!1333495 (tuple2!39833 (Cons!40658 (_1!23049 (v!38983 lt!1333491)) (_1!23050 lt!1333504)) (_2!23050 lt!1333504)))))

(declare-fun b!3841751 () Bool)

(declare-fun tp!1163923 () Bool)

(assert (=> b!3841751 (= e!2373623 (and tp_is_empty!19329 tp!1163923))))

(declare-fun b!3841752 () Bool)

(declare-fun res!1554891 () Bool)

(assert (=> b!3841752 (=> (not res!1554891) (not e!2373601))))

(assert (=> b!3841752 (= res!1554891 (= (lexList!1631 thiss!20629 rules!2768 suffix!1176) (tuple2!39833 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3841753 () Bool)

(assert (=> b!3841753 (= e!2373611 e!2373618)))

(declare-fun res!1554896 () Bool)

(assert (=> b!3841753 (=> res!1554896 e!2373618)))

(assert (=> b!3841753 (= res!1554896 (or (not (= lt!1333505 (_1!23050 lt!1333495))) (not (= lt!1333505 lt!1333487)) (not (= prefixTokens!80 lt!1333503)) (not (= prefix!426 lt!1333488))))))

(assert (=> b!3841753 (= lt!1333488 prefix!426)))

(declare-fun lt!1333493 () Unit!58358)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!402 (List!40781 List!40781 List!40781 List!40781) Unit!58358)

(assert (=> b!3841753 (= lt!1333493 (lemmaConcatSameAndSameSizesThenSameLists!402 lt!1333488 (_2!23049 (v!38983 lt!1333491)) prefix!426 suffix!1176))))

(declare-fun b!3841754 () Bool)

(assert (=> b!3841754 true))

(assert (=> b!3841754 e!2373621))

(assert (=> b!3841754 (= e!2373614 err!4249)))

(declare-fun bm!281967 () Bool)

(declare-fun maxPrefixOneRule!2251 (LexerInterface!5863 Rule!12348 List!40781) Option!8692)

(assert (=> bm!281967 (= call!281972 (maxPrefixOneRule!2251 thiss!20629 (h!46079 rules!2768) lt!1333496))))

(assert (= (and start!359660 res!1554893) b!3841749))

(assert (= (and b!3841749 res!1554892) b!3841721))

(assert (= (and b!3841721 res!1554887) b!3841720))

(assert (= (and b!3841720 res!1554897) b!3841743))

(assert (= (and b!3841743 res!1554885) b!3841726))

(assert (= (and b!3841726 res!1554894) b!3841752))

(assert (= (and b!3841752 res!1554891) b!3841719))

(assert (= (and b!3841719 res!1554889) b!3841722))

(assert (= (and b!3841722 res!1554895) b!3841739))

(assert (= (and b!3841722 (not res!1554886)) b!3841740))

(assert (= (and b!3841740 (not res!1554884)) b!3841750))

(assert (= (and b!3841750 res!1554890) b!3841733))

(assert (= (and b!3841733 c!669487) b!3841724))

(assert (= (and b!3841733 (not c!669487)) b!3841732))

(assert (= (and b!3841732 c!669486) b!3841728))

(assert (= (and b!3841732 (not c!669486)) b!3841754))

(assert (= b!3841745 b!3841736))

(assert (= b!3841737 b!3841745))

(assert (= b!3841723 b!3841737))

(assert (= (and b!3841754 ((_ is Some!8691) err!4249)) b!3841723))

(assert (= (or b!3841724 b!3841728) bm!281967))

(assert (= (and b!3841750 (not res!1554888)) b!3841753))

(assert (= (and b!3841753 (not res!1554896)) b!3841744))

(assert (= (and b!3841744 (not res!1554898)) b!3841729))

(assert (= (and start!359660 ((_ is Cons!40657) suffixResult!91)) b!3841751))

(assert (= (and start!359660 ((_ is Cons!40657) suffix!1176)) b!3841748))

(assert (= b!3841734 b!3841742))

(assert (= b!3841746 b!3841734))

(assert (= (and start!359660 ((_ is Cons!40659) rules!2768)) b!3841746))

(assert (= b!3841731 b!3841738))

(assert (= b!3841725 b!3841731))

(assert (= b!3841735 b!3841725))

(assert (= (and start!359660 ((_ is Cons!40658) prefixTokens!80)) b!3841735))

(assert (= b!3841747 b!3841727))

(assert (= b!3841741 b!3841747))

(assert (= b!3841718 b!3841741))

(assert (= (and start!359660 ((_ is Cons!40658) suffixTokens!72)) b!3841718))

(assert (= (and start!359660 ((_ is Cons!40657) prefix!426)) b!3841730))

(declare-fun m!4395859 () Bool)

(assert (=> b!3841725 m!4395859))

(declare-fun m!4395861 () Bool)

(assert (=> b!3841728 m!4395861))

(declare-fun m!4395863 () Bool)

(assert (=> b!3841722 m!4395863))

(declare-fun m!4395865 () Bool)

(assert (=> b!3841722 m!4395865))

(declare-fun m!4395867 () Bool)

(assert (=> b!3841722 m!4395867))

(declare-fun m!4395869 () Bool)

(assert (=> b!3841722 m!4395869))

(declare-fun m!4395871 () Bool)

(assert (=> b!3841722 m!4395871))

(assert (=> b!3841722 m!4395869))

(declare-fun m!4395873 () Bool)

(assert (=> b!3841722 m!4395873))

(declare-fun m!4395875 () Bool)

(assert (=> b!3841722 m!4395875))

(declare-fun m!4395877 () Bool)

(assert (=> b!3841722 m!4395877))

(declare-fun m!4395879 () Bool)

(assert (=> b!3841722 m!4395879))

(declare-fun m!4395881 () Bool)

(assert (=> b!3841722 m!4395881))

(declare-fun m!4395883 () Bool)

(assert (=> b!3841722 m!4395883))

(declare-fun m!4395885 () Bool)

(assert (=> b!3841722 m!4395885))

(declare-fun m!4395887 () Bool)

(assert (=> b!3841722 m!4395887))

(declare-fun m!4395889 () Bool)

(assert (=> b!3841722 m!4395889))

(assert (=> b!3841722 m!4395887))

(declare-fun m!4395891 () Bool)

(assert (=> b!3841747 m!4395891))

(declare-fun m!4395893 () Bool)

(assert (=> b!3841747 m!4395893))

(declare-fun m!4395895 () Bool)

(assert (=> b!3841718 m!4395895))

(declare-fun m!4395897 () Bool)

(assert (=> b!3841743 m!4395897))

(declare-fun m!4395899 () Bool)

(assert (=> b!3841737 m!4395899))

(declare-fun m!4395901 () Bool)

(assert (=> b!3841720 m!4395901))

(declare-fun m!4395903 () Bool)

(assert (=> b!3841721 m!4395903))

(declare-fun m!4395905 () Bool)

(assert (=> b!3841731 m!4395905))

(declare-fun m!4395907 () Bool)

(assert (=> b!3841731 m!4395907))

(declare-fun m!4395909 () Bool)

(assert (=> b!3841740 m!4395909))

(declare-fun m!4395911 () Bool)

(assert (=> b!3841726 m!4395911))

(declare-fun m!4395913 () Bool)

(assert (=> b!3841726 m!4395913))

(declare-fun m!4395915 () Bool)

(assert (=> b!3841726 m!4395915))

(declare-fun m!4395917 () Bool)

(assert (=> b!3841749 m!4395917))

(declare-fun m!4395919 () Bool)

(assert (=> b!3841750 m!4395919))

(declare-fun m!4395921 () Bool)

(assert (=> b!3841750 m!4395921))

(declare-fun m!4395923 () Bool)

(assert (=> b!3841753 m!4395923))

(declare-fun m!4395925 () Bool)

(assert (=> b!3841729 m!4395925))

(declare-fun m!4395927 () Bool)

(assert (=> b!3841729 m!4395927))

(assert (=> b!3841729 m!4395927))

(declare-fun m!4395929 () Bool)

(assert (=> b!3841729 m!4395929))

(declare-fun m!4395931 () Bool)

(assert (=> b!3841729 m!4395931))

(declare-fun m!4395933 () Bool)

(assert (=> bm!281967 m!4395933))

(declare-fun m!4395935 () Bool)

(assert (=> b!3841719 m!4395935))

(declare-fun m!4395937 () Bool)

(assert (=> b!3841735 m!4395937))

(declare-fun m!4395939 () Bool)

(assert (=> b!3841739 m!4395939))

(declare-fun m!4395941 () Bool)

(assert (=> b!3841744 m!4395941))

(declare-fun m!4395943 () Bool)

(assert (=> b!3841734 m!4395943))

(declare-fun m!4395945 () Bool)

(assert (=> b!3841734 m!4395945))

(declare-fun m!4395947 () Bool)

(assert (=> b!3841752 m!4395947))

(declare-fun m!4395949 () Bool)

(assert (=> b!3841723 m!4395949))

(declare-fun m!4395951 () Bool)

(assert (=> b!3841741 m!4395951))

(declare-fun m!4395953 () Bool)

(assert (=> b!3841745 m!4395953))

(declare-fun m!4395955 () Bool)

(assert (=> b!3841745 m!4395955))

(check-sat (not b!3841734) (not b!3841749) (not b_next!103243) b_and!286227 (not b!3841748) (not b!3841743) (not b!3841747) b_and!286217 (not b!3841728) (not b!3841735) (not b!3841731) (not b!3841726) (not b!3841730) (not b!3841719) b_and!286221 b_and!286219 (not b_next!103247) (not b!3841720) (not b!3841746) (not b!3841751) (not b!3841739) tp_is_empty!19329 (not b_next!103251) (not b!3841745) (not b!3841718) (not b!3841725) b_and!286215 (not b!3841737) (not b!3841723) b_and!286223 (not b!3841740) (not b!3841741) b_and!286229 (not b!3841744) (not b_next!103245) (not b!3841729) (not b!3841752) (not b!3841722) (not b_next!103255) (not bm!281967) (not b!3841750) (not b!3841753) (not b_next!103249) (not b!3841721) (not b_next!103241) b_and!286225 (not b_next!103253))
(check-sat b_and!286221 (not b_next!103243) b_and!286227 (not b_next!103251) b_and!286215 b_and!286223 b_and!286229 (not b_next!103245) (not b_next!103255) (not b_next!103249) (not b_next!103241) b_and!286217 b_and!286219 (not b_next!103247) b_and!286225 (not b_next!103253))
(get-model)

(declare-fun d!1139688 () Bool)

(declare-fun c!669500 () Bool)

(assert (=> d!1139688 (= c!669500 ((_ is IntegerValue!19512) (value!199443 (h!46078 prefixTokens!80))))))

(declare-fun e!2373648 () Bool)

(assert (=> d!1139688 (= (inv!21 (value!199443 (h!46078 prefixTokens!80))) e!2373648)))

(declare-fun b!3841784 () Bool)

(declare-fun inv!16 (TokenValue!6504) Bool)

(assert (=> b!3841784 (= e!2373648 (inv!16 (value!199443 (h!46078 prefixTokens!80))))))

(declare-fun b!3841785 () Bool)

(declare-fun e!2373650 () Bool)

(declare-fun inv!15 (TokenValue!6504) Bool)

(assert (=> b!3841785 (= e!2373650 (inv!15 (value!199443 (h!46078 prefixTokens!80))))))

(declare-fun b!3841786 () Bool)

(declare-fun e!2373649 () Bool)

(assert (=> b!3841786 (= e!2373648 e!2373649)))

(declare-fun c!669501 () Bool)

(assert (=> b!3841786 (= c!669501 ((_ is IntegerValue!19513) (value!199443 (h!46078 prefixTokens!80))))))

(declare-fun b!3841787 () Bool)

(declare-fun res!1554918 () Bool)

(assert (=> b!3841787 (=> res!1554918 e!2373650)))

(assert (=> b!3841787 (= res!1554918 (not ((_ is IntegerValue!19514) (value!199443 (h!46078 prefixTokens!80)))))))

(assert (=> b!3841787 (= e!2373649 e!2373650)))

(declare-fun b!3841788 () Bool)

(declare-fun inv!17 (TokenValue!6504) Bool)

(assert (=> b!3841788 (= e!2373649 (inv!17 (value!199443 (h!46078 prefixTokens!80))))))

(assert (= (and d!1139688 c!669500) b!3841784))

(assert (= (and d!1139688 (not c!669500)) b!3841786))

(assert (= (and b!3841786 c!669501) b!3841788))

(assert (= (and b!3841786 (not c!669501)) b!3841787))

(assert (= (and b!3841787 (not res!1554918)) b!3841785))

(declare-fun m!4395963 () Bool)

(assert (=> b!3841784 m!4395963))

(declare-fun m!4395965 () Bool)

(assert (=> b!3841785 m!4395965))

(declare-fun m!4395967 () Bool)

(assert (=> b!3841788 m!4395967))

(assert (=> b!3841725 d!1139688))

(declare-fun b!3841799 () Bool)

(declare-fun e!2373658 () Bool)

(declare-fun lt!1333516 () tuple2!39832)

(assert (=> b!3841799 (= e!2373658 (= (_2!23050 lt!1333516) lt!1333496))))

(declare-fun b!3841800 () Bool)

(declare-fun e!2373659 () tuple2!39832)

(assert (=> b!3841800 (= e!2373659 (tuple2!39833 Nil!40658 lt!1333496))))

(declare-fun b!3841801 () Bool)

(declare-fun lt!1333515 () Option!8692)

(declare-fun lt!1333514 () tuple2!39832)

(assert (=> b!3841801 (= e!2373659 (tuple2!39833 (Cons!40658 (_1!23049 (v!38983 lt!1333515)) (_1!23050 lt!1333514)) (_2!23050 lt!1333514)))))

(assert (=> b!3841801 (= lt!1333514 (lexList!1631 thiss!20629 rules!2768 (_2!23049 (v!38983 lt!1333515))))))

(declare-fun d!1139690 () Bool)

(assert (=> d!1139690 e!2373658))

(declare-fun c!669507 () Bool)

(declare-fun size!30599 (List!40782) Int)

(assert (=> d!1139690 (= c!669507 (> (size!30599 (_1!23050 lt!1333516)) 0))))

(assert (=> d!1139690 (= lt!1333516 e!2373659)))

(declare-fun c!669506 () Bool)

(assert (=> d!1139690 (= c!669506 ((_ is Some!8691) lt!1333515))))

(assert (=> d!1139690 (= lt!1333515 (maxPrefix!3167 thiss!20629 rules!2768 lt!1333496))))

(assert (=> d!1139690 (= (lexList!1631 thiss!20629 rules!2768 lt!1333496) lt!1333516)))

(declare-fun b!3841802 () Bool)

(declare-fun e!2373657 () Bool)

(assert (=> b!3841802 (= e!2373657 (not (isEmpty!24034 (_1!23050 lt!1333516))))))

(declare-fun b!3841803 () Bool)

(assert (=> b!3841803 (= e!2373658 e!2373657)))

(declare-fun res!1554921 () Bool)

(assert (=> b!3841803 (= res!1554921 (< (size!30596 (_2!23050 lt!1333516)) (size!30596 lt!1333496)))))

(assert (=> b!3841803 (=> (not res!1554921) (not e!2373657))))

(assert (= (and d!1139690 c!669506) b!3841801))

(assert (= (and d!1139690 (not c!669506)) b!3841800))

(assert (= (and d!1139690 c!669507) b!3841803))

(assert (= (and d!1139690 (not c!669507)) b!3841799))

(assert (= (and b!3841803 res!1554921) b!3841802))

(declare-fun m!4395969 () Bool)

(assert (=> b!3841801 m!4395969))

(declare-fun m!4395971 () Bool)

(assert (=> d!1139690 m!4395971))

(assert (=> d!1139690 m!4395935))

(declare-fun m!4395973 () Bool)

(assert (=> b!3841802 m!4395973))

(declare-fun m!4395975 () Bool)

(assert (=> b!3841803 m!4395975))

(declare-fun m!4395977 () Bool)

(assert (=> b!3841803 m!4395977))

(assert (=> b!3841726 d!1139690))

(declare-fun b!3841812 () Bool)

(declare-fun e!2373664 () List!40782)

(assert (=> b!3841812 (= e!2373664 suffixTokens!72)))

(declare-fun lt!1333519 () List!40782)

(declare-fun b!3841815 () Bool)

(declare-fun e!2373665 () Bool)

(assert (=> b!3841815 (= e!2373665 (or (not (= suffixTokens!72 Nil!40658)) (= lt!1333519 prefixTokens!80)))))

(declare-fun b!3841813 () Bool)

(assert (=> b!3841813 (= e!2373664 (Cons!40658 (h!46078 prefixTokens!80) (++!10306 (t!310451 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3841814 () Bool)

(declare-fun res!1554926 () Bool)

(assert (=> b!3841814 (=> (not res!1554926) (not e!2373665))))

(assert (=> b!3841814 (= res!1554926 (= (size!30599 lt!1333519) (+ (size!30599 prefixTokens!80) (size!30599 suffixTokens!72))))))

(declare-fun d!1139692 () Bool)

(assert (=> d!1139692 e!2373665))

(declare-fun res!1554927 () Bool)

(assert (=> d!1139692 (=> (not res!1554927) (not e!2373665))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6038 (List!40782) (InoxSet Token!11686))

(assert (=> d!1139692 (= res!1554927 (= (content!6038 lt!1333519) ((_ map or) (content!6038 prefixTokens!80) (content!6038 suffixTokens!72))))))

(assert (=> d!1139692 (= lt!1333519 e!2373664)))

(declare-fun c!669510 () Bool)

(assert (=> d!1139692 (= c!669510 ((_ is Nil!40658) prefixTokens!80))))

(assert (=> d!1139692 (= (++!10306 prefixTokens!80 suffixTokens!72) lt!1333519)))

(assert (= (and d!1139692 c!669510) b!3841812))

(assert (= (and d!1139692 (not c!669510)) b!3841813))

(assert (= (and d!1139692 res!1554927) b!3841814))

(assert (= (and b!3841814 res!1554926) b!3841815))

(declare-fun m!4395979 () Bool)

(assert (=> b!3841813 m!4395979))

(declare-fun m!4395981 () Bool)

(assert (=> b!3841814 m!4395981))

(declare-fun m!4395983 () Bool)

(assert (=> b!3841814 m!4395983))

(declare-fun m!4395985 () Bool)

(assert (=> b!3841814 m!4395985))

(declare-fun m!4395987 () Bool)

(assert (=> d!1139692 m!4395987))

(declare-fun m!4395989 () Bool)

(assert (=> d!1139692 m!4395989))

(declare-fun m!4395991 () Bool)

(assert (=> d!1139692 m!4395991))

(assert (=> b!3841726 d!1139692))

(declare-fun b!3841825 () Bool)

(declare-fun e!2373670 () List!40781)

(assert (=> b!3841825 (= e!2373670 (Cons!40657 (h!46077 prefix!426) (++!10305 (t!310450 prefix!426) suffix!1176)))))

(declare-fun d!1139694 () Bool)

(declare-fun e!2373671 () Bool)

(assert (=> d!1139694 e!2373671))

(declare-fun res!1554932 () Bool)

(assert (=> d!1139694 (=> (not res!1554932) (not e!2373671))))

(declare-fun lt!1333522 () List!40781)

(declare-fun content!6039 (List!40781) (InoxSet C!22544))

(assert (=> d!1139694 (= res!1554932 (= (content!6039 lt!1333522) ((_ map or) (content!6039 prefix!426) (content!6039 suffix!1176))))))

(assert (=> d!1139694 (= lt!1333522 e!2373670)))

(declare-fun c!669513 () Bool)

(assert (=> d!1139694 (= c!669513 ((_ is Nil!40657) prefix!426))))

(assert (=> d!1139694 (= (++!10305 prefix!426 suffix!1176) lt!1333522)))

(declare-fun b!3841827 () Bool)

(assert (=> b!3841827 (= e!2373671 (or (not (= suffix!1176 Nil!40657)) (= lt!1333522 prefix!426)))))

(declare-fun b!3841826 () Bool)

(declare-fun res!1554933 () Bool)

(assert (=> b!3841826 (=> (not res!1554933) (not e!2373671))))

(assert (=> b!3841826 (= res!1554933 (= (size!30596 lt!1333522) (+ (size!30596 prefix!426) (size!30596 suffix!1176))))))

(declare-fun b!3841824 () Bool)

(assert (=> b!3841824 (= e!2373670 suffix!1176)))

(assert (= (and d!1139694 c!669513) b!3841824))

(assert (= (and d!1139694 (not c!669513)) b!3841825))

(assert (= (and d!1139694 res!1554932) b!3841826))

(assert (= (and b!3841826 res!1554933) b!3841827))

(declare-fun m!4395993 () Bool)

(assert (=> b!3841825 m!4395993))

(declare-fun m!4395995 () Bool)

(assert (=> d!1139694 m!4395995))

(declare-fun m!4395997 () Bool)

(assert (=> d!1139694 m!4395997))

(declare-fun m!4395999 () Bool)

(assert (=> d!1139694 m!4395999))

(declare-fun m!4396001 () Bool)

(assert (=> b!3841826 m!4396001))

(declare-fun m!4396003 () Bool)

(assert (=> b!3841826 m!4396003))

(declare-fun m!4396005 () Bool)

(assert (=> b!3841826 m!4396005))

(assert (=> b!3841726 d!1139694))

(declare-fun d!1139696 () Bool)

(assert (=> d!1139696 (= (inv!54799 (tag!7134 (rule!9112 (h!46078 suffixTokens!72)))) (= (mod (str.len (value!199442 (tag!7134 (rule!9112 (h!46078 suffixTokens!72))))) 2) 0))))

(assert (=> b!3841747 d!1139696))

(declare-fun d!1139698 () Bool)

(declare-fun res!1554936 () Bool)

(declare-fun e!2373674 () Bool)

(assert (=> d!1139698 (=> (not res!1554936) (not e!2373674))))

(declare-fun semiInverseModEq!2687 (Int Int) Bool)

(assert (=> d!1139698 (= res!1554936 (semiInverseModEq!2687 (toChars!8549 (transformation!6274 (rule!9112 (h!46078 suffixTokens!72)))) (toValue!8690 (transformation!6274 (rule!9112 (h!46078 suffixTokens!72))))))))

(assert (=> d!1139698 (= (inv!54803 (transformation!6274 (rule!9112 (h!46078 suffixTokens!72)))) e!2373674)))

(declare-fun b!3841830 () Bool)

(declare-fun equivClasses!2586 (Int Int) Bool)

(assert (=> b!3841830 (= e!2373674 (equivClasses!2586 (toChars!8549 (transformation!6274 (rule!9112 (h!46078 suffixTokens!72)))) (toValue!8690 (transformation!6274 (rule!9112 (h!46078 suffixTokens!72))))))))

(assert (= (and d!1139698 res!1554936) b!3841830))

(declare-fun m!4396007 () Bool)

(assert (=> d!1139698 m!4396007))

(declare-fun m!4396009 () Bool)

(assert (=> b!3841830 m!4396009))

(assert (=> b!3841747 d!1139698))

(declare-fun b!3841849 () Bool)

(declare-fun e!2373682 () Option!8692)

(declare-fun lt!1333534 () Option!8692)

(declare-fun lt!1333537 () Option!8692)

(assert (=> b!3841849 (= e!2373682 (ite (and ((_ is None!8691) lt!1333534) ((_ is None!8691) lt!1333537)) None!8691 (ite ((_ is None!8691) lt!1333537) lt!1333534 (ite ((_ is None!8691) lt!1333534) lt!1333537 (ite (>= (size!30595 (_1!23049 (v!38983 lt!1333534))) (size!30595 (_1!23049 (v!38983 lt!1333537)))) lt!1333534 lt!1333537)))))))

(declare-fun call!281975 () Option!8692)

(assert (=> b!3841849 (= lt!1333534 call!281975)))

(assert (=> b!3841849 (= lt!1333537 (maxPrefix!3167 thiss!20629 (t!310452 (t!310452 rules!2768)) lt!1333496))))

(declare-fun bm!281970 () Bool)

(assert (=> bm!281970 (= call!281975 (maxPrefixOneRule!2251 thiss!20629 (h!46079 (t!310452 rules!2768)) lt!1333496))))

(declare-fun b!3841850 () Bool)

(declare-fun res!1554954 () Bool)

(declare-fun e!2373683 () Bool)

(assert (=> b!3841850 (=> (not res!1554954) (not e!2373683))))

(declare-fun lt!1333535 () Option!8692)

(declare-fun get!13463 (Option!8692) tuple2!39830)

(assert (=> b!3841850 (= res!1554954 (= (++!10305 (list!15138 (charsOf!4102 (_1!23049 (get!13463 lt!1333535)))) (_2!23049 (get!13463 lt!1333535))) lt!1333496))))

(declare-fun b!3841852 () Bool)

(declare-fun contains!8232 (List!40783 Rule!12348) Bool)

(assert (=> b!3841852 (= e!2373683 (contains!8232 (t!310452 rules!2768) (rule!9112 (_1!23049 (get!13463 lt!1333535)))))))

(declare-fun b!3841853 () Bool)

(assert (=> b!3841853 (= e!2373682 call!281975)))

(declare-fun b!3841854 () Bool)

(declare-fun res!1554955 () Bool)

(assert (=> b!3841854 (=> (not res!1554955) (not e!2373683))))

(declare-fun matchR!5338 (Regex!11179 List!40781) Bool)

(assert (=> b!3841854 (= res!1554955 (matchR!5338 (regex!6274 (rule!9112 (_1!23049 (get!13463 lt!1333535)))) (list!15138 (charsOf!4102 (_1!23049 (get!13463 lt!1333535))))))))

(declare-fun b!3841855 () Bool)

(declare-fun res!1554956 () Bool)

(assert (=> b!3841855 (=> (not res!1554956) (not e!2373683))))

(assert (=> b!3841855 (= res!1554956 (= (value!199443 (_1!23049 (get!13463 lt!1333535))) (apply!9517 (transformation!6274 (rule!9112 (_1!23049 (get!13463 lt!1333535)))) (seqFromList!4545 (originalCharacters!6874 (_1!23049 (get!13463 lt!1333535)))))))))

(declare-fun b!3841851 () Bool)

(declare-fun res!1554953 () Bool)

(assert (=> b!3841851 (=> (not res!1554953) (not e!2373683))))

(assert (=> b!3841851 (= res!1554953 (< (size!30596 (_2!23049 (get!13463 lt!1333535))) (size!30596 lt!1333496)))))

(declare-fun d!1139700 () Bool)

(declare-fun e!2373681 () Bool)

(assert (=> d!1139700 e!2373681))

(declare-fun res!1554951 () Bool)

(assert (=> d!1139700 (=> res!1554951 e!2373681)))

(declare-fun isEmpty!24038 (Option!8692) Bool)

(assert (=> d!1139700 (= res!1554951 (isEmpty!24038 lt!1333535))))

(assert (=> d!1139700 (= lt!1333535 e!2373682)))

(declare-fun c!669516 () Bool)

(assert (=> d!1139700 (= c!669516 (and ((_ is Cons!40659) (t!310452 rules!2768)) ((_ is Nil!40659) (t!310452 (t!310452 rules!2768)))))))

(declare-fun lt!1333536 () Unit!58358)

(declare-fun lt!1333533 () Unit!58358)

(assert (=> d!1139700 (= lt!1333536 lt!1333533)))

(assert (=> d!1139700 (isPrefix!3373 lt!1333496 lt!1333496)))

(assert (=> d!1139700 (= lt!1333533 (lemmaIsPrefixRefl!2146 lt!1333496 lt!1333496))))

(assert (=> d!1139700 (rulesValidInductive!2216 thiss!20629 (t!310452 rules!2768))))

(assert (=> d!1139700 (= (maxPrefix!3167 thiss!20629 (t!310452 rules!2768) lt!1333496) lt!1333535)))

(declare-fun b!3841856 () Bool)

(assert (=> b!3841856 (= e!2373681 e!2373683)))

(declare-fun res!1554957 () Bool)

(assert (=> b!3841856 (=> (not res!1554957) (not e!2373683))))

(declare-fun isDefined!6827 (Option!8692) Bool)

(assert (=> b!3841856 (= res!1554957 (isDefined!6827 lt!1333535))))

(declare-fun b!3841857 () Bool)

(declare-fun res!1554952 () Bool)

(assert (=> b!3841857 (=> (not res!1554952) (not e!2373683))))

(assert (=> b!3841857 (= res!1554952 (= (list!15138 (charsOf!4102 (_1!23049 (get!13463 lt!1333535)))) (originalCharacters!6874 (_1!23049 (get!13463 lt!1333535)))))))

(assert (= (and d!1139700 c!669516) b!3841853))

(assert (= (and d!1139700 (not c!669516)) b!3841849))

(assert (= (or b!3841853 b!3841849) bm!281970))

(assert (= (and d!1139700 (not res!1554951)) b!3841856))

(assert (= (and b!3841856 res!1554957) b!3841857))

(assert (= (and b!3841857 res!1554952) b!3841851))

(assert (= (and b!3841851 res!1554953) b!3841850))

(assert (= (and b!3841850 res!1554954) b!3841855))

(assert (= (and b!3841855 res!1554956) b!3841854))

(assert (= (and b!3841854 res!1554955) b!3841852))

(declare-fun m!4396011 () Bool)

(assert (=> bm!281970 m!4396011))

(declare-fun m!4396013 () Bool)

(assert (=> b!3841855 m!4396013))

(declare-fun m!4396015 () Bool)

(assert (=> b!3841855 m!4396015))

(assert (=> b!3841855 m!4396015))

(declare-fun m!4396017 () Bool)

(assert (=> b!3841855 m!4396017))

(declare-fun m!4396019 () Bool)

(assert (=> b!3841856 m!4396019))

(declare-fun m!4396021 () Bool)

(assert (=> d!1139700 m!4396021))

(assert (=> d!1139700 m!4395919))

(assert (=> d!1139700 m!4395921))

(declare-fun m!4396023 () Bool)

(assert (=> d!1139700 m!4396023))

(assert (=> b!3841852 m!4396013))

(declare-fun m!4396025 () Bool)

(assert (=> b!3841852 m!4396025))

(assert (=> b!3841857 m!4396013))

(declare-fun m!4396027 () Bool)

(assert (=> b!3841857 m!4396027))

(assert (=> b!3841857 m!4396027))

(declare-fun m!4396029 () Bool)

(assert (=> b!3841857 m!4396029))

(assert (=> b!3841850 m!4396013))

(assert (=> b!3841850 m!4396027))

(assert (=> b!3841850 m!4396027))

(assert (=> b!3841850 m!4396029))

(assert (=> b!3841850 m!4396029))

(declare-fun m!4396031 () Bool)

(assert (=> b!3841850 m!4396031))

(assert (=> b!3841851 m!4396013))

(declare-fun m!4396033 () Bool)

(assert (=> b!3841851 m!4396033))

(assert (=> b!3841851 m!4395977))

(assert (=> b!3841854 m!4396013))

(assert (=> b!3841854 m!4396027))

(assert (=> b!3841854 m!4396027))

(assert (=> b!3841854 m!4396029))

(assert (=> b!3841854 m!4396029))

(declare-fun m!4396035 () Bool)

(assert (=> b!3841854 m!4396035))

(declare-fun m!4396037 () Bool)

(assert (=> b!3841849 m!4396037))

(assert (=> b!3841728 d!1139700))

(declare-fun d!1139702 () Bool)

(assert (=> d!1139702 (= (isEmpty!24036 rules!2768) ((_ is Nil!40659) rules!2768))))

(assert (=> b!3841749 d!1139702))

(declare-fun b!3841866 () Bool)

(declare-fun e!2373690 () Bool)

(declare-fun e!2373691 () Bool)

(assert (=> b!3841866 (= e!2373690 e!2373691)))

(declare-fun res!1554966 () Bool)

(assert (=> b!3841866 (=> (not res!1554966) (not e!2373691))))

(assert (=> b!3841866 (= res!1554966 (not ((_ is Nil!40657) lt!1333496)))))

(declare-fun b!3841868 () Bool)

(declare-fun tail!5809 (List!40781) List!40781)

(assert (=> b!3841868 (= e!2373691 (isPrefix!3373 (tail!5809 lt!1333496) (tail!5809 lt!1333496)))))

(declare-fun b!3841867 () Bool)

(declare-fun res!1554967 () Bool)

(assert (=> b!3841867 (=> (not res!1554967) (not e!2373691))))

(declare-fun head!8082 (List!40781) C!22544)

(assert (=> b!3841867 (= res!1554967 (= (head!8082 lt!1333496) (head!8082 lt!1333496)))))

(declare-fun b!3841869 () Bool)

(declare-fun e!2373692 () Bool)

(assert (=> b!3841869 (= e!2373692 (>= (size!30596 lt!1333496) (size!30596 lt!1333496)))))

(declare-fun d!1139704 () Bool)

(assert (=> d!1139704 e!2373692))

(declare-fun res!1554969 () Bool)

(assert (=> d!1139704 (=> res!1554969 e!2373692)))

(declare-fun lt!1333540 () Bool)

(assert (=> d!1139704 (= res!1554969 (not lt!1333540))))

(assert (=> d!1139704 (= lt!1333540 e!2373690)))

(declare-fun res!1554968 () Bool)

(assert (=> d!1139704 (=> res!1554968 e!2373690)))

(assert (=> d!1139704 (= res!1554968 ((_ is Nil!40657) lt!1333496))))

(assert (=> d!1139704 (= (isPrefix!3373 lt!1333496 lt!1333496) lt!1333540)))

(assert (= (and d!1139704 (not res!1554968)) b!3841866))

(assert (= (and b!3841866 res!1554966) b!3841867))

(assert (= (and b!3841867 res!1554967) b!3841868))

(assert (= (and d!1139704 (not res!1554969)) b!3841869))

(declare-fun m!4396039 () Bool)

(assert (=> b!3841868 m!4396039))

(assert (=> b!3841868 m!4396039))

(assert (=> b!3841868 m!4396039))

(assert (=> b!3841868 m!4396039))

(declare-fun m!4396041 () Bool)

(assert (=> b!3841868 m!4396041))

(declare-fun m!4396043 () Bool)

(assert (=> b!3841867 m!4396043))

(assert (=> b!3841867 m!4396043))

(assert (=> b!3841869 m!4395977))

(assert (=> b!3841869 m!4395977))

(assert (=> b!3841750 d!1139704))

(declare-fun d!1139706 () Bool)

(assert (=> d!1139706 (isPrefix!3373 lt!1333496 lt!1333496)))

(declare-fun lt!1333544 () Unit!58358)

(declare-fun choose!22586 (List!40781 List!40781) Unit!58358)

(assert (=> d!1139706 (= lt!1333544 (choose!22586 lt!1333496 lt!1333496))))

(assert (=> d!1139706 (= (lemmaIsPrefixRefl!2146 lt!1333496 lt!1333496) lt!1333544)))

(declare-fun bs!582619 () Bool)

(assert (= bs!582619 d!1139706))

(assert (=> bs!582619 m!4395919))

(declare-fun m!4396051 () Bool)

(assert (=> bs!582619 m!4396051))

(assert (=> b!3841750 d!1139706))

(declare-fun d!1139710 () Bool)

(assert (=> d!1139710 true))

(declare-fun lt!1333644 () Bool)

(declare-fun lambda!126089 () Int)

(declare-fun forall!8277 (List!40783 Int) Bool)

(assert (=> d!1139710 (= lt!1333644 (forall!8277 rules!2768 lambda!126089))))

(declare-fun e!2373864 () Bool)

(assert (=> d!1139710 (= lt!1333644 e!2373864)))

(declare-fun res!1555102 () Bool)

(assert (=> d!1139710 (=> res!1555102 e!2373864)))

(assert (=> d!1139710 (= res!1555102 (not ((_ is Cons!40659) rules!2768)))))

(assert (=> d!1139710 (= (rulesValidInductive!2216 thiss!20629 rules!2768) lt!1333644)))

(declare-fun b!3842156 () Bool)

(declare-fun e!2373865 () Bool)

(assert (=> b!3842156 (= e!2373864 e!2373865)))

(declare-fun res!1555103 () Bool)

(assert (=> b!3842156 (=> (not res!1555103) (not e!2373865))))

(assert (=> b!3842156 (= res!1555103 (ruleValid!2226 thiss!20629 (h!46079 rules!2768)))))

(declare-fun b!3842157 () Bool)

(assert (=> b!3842157 (= e!2373865 (rulesValidInductive!2216 thiss!20629 (t!310452 rules!2768)))))

(assert (= (and d!1139710 (not res!1555102)) b!3842156))

(assert (= (and b!3842156 res!1555103) b!3842157))

(declare-fun m!4396429 () Bool)

(assert (=> d!1139710 m!4396429))

(declare-fun m!4396431 () Bool)

(assert (=> b!3842156 m!4396431))

(assert (=> b!3842157 m!4396023))

(assert (=> b!3841729 d!1139710))

(declare-fun b!3842160 () Bool)

(declare-fun e!2373867 () Option!8692)

(declare-fun lt!1333646 () Option!8692)

(declare-fun lt!1333649 () Option!8692)

(assert (=> b!3842160 (= e!2373867 (ite (and ((_ is None!8691) lt!1333646) ((_ is None!8691) lt!1333649)) None!8691 (ite ((_ is None!8691) lt!1333649) lt!1333646 (ite ((_ is None!8691) lt!1333646) lt!1333649 (ite (>= (size!30595 (_1!23049 (v!38983 lt!1333646))) (size!30595 (_1!23049 (v!38983 lt!1333649)))) lt!1333646 lt!1333649)))))))

(declare-fun call!281981 () Option!8692)

(assert (=> b!3842160 (= lt!1333646 call!281981)))

(assert (=> b!3842160 (= lt!1333649 (maxPrefix!3167 thiss!20629 (t!310452 rules!2768) (++!10305 prefix!426 Nil!40657)))))

(declare-fun bm!281976 () Bool)

(assert (=> bm!281976 (= call!281981 (maxPrefixOneRule!2251 thiss!20629 (h!46079 rules!2768) (++!10305 prefix!426 Nil!40657)))))

(declare-fun b!3842161 () Bool)

(declare-fun res!1555107 () Bool)

(declare-fun e!2373868 () Bool)

(assert (=> b!3842161 (=> (not res!1555107) (not e!2373868))))

(declare-fun lt!1333647 () Option!8692)

(assert (=> b!3842161 (= res!1555107 (= (++!10305 (list!15138 (charsOf!4102 (_1!23049 (get!13463 lt!1333647)))) (_2!23049 (get!13463 lt!1333647))) (++!10305 prefix!426 Nil!40657)))))

(declare-fun b!3842163 () Bool)

(assert (=> b!3842163 (= e!2373868 (contains!8232 rules!2768 (rule!9112 (_1!23049 (get!13463 lt!1333647)))))))

(declare-fun b!3842164 () Bool)

(assert (=> b!3842164 (= e!2373867 call!281981)))

(declare-fun b!3842165 () Bool)

(declare-fun res!1555108 () Bool)

(assert (=> b!3842165 (=> (not res!1555108) (not e!2373868))))

(assert (=> b!3842165 (= res!1555108 (matchR!5338 (regex!6274 (rule!9112 (_1!23049 (get!13463 lt!1333647)))) (list!15138 (charsOf!4102 (_1!23049 (get!13463 lt!1333647))))))))

(declare-fun b!3842166 () Bool)

(declare-fun res!1555109 () Bool)

(assert (=> b!3842166 (=> (not res!1555109) (not e!2373868))))

(assert (=> b!3842166 (= res!1555109 (= (value!199443 (_1!23049 (get!13463 lt!1333647))) (apply!9517 (transformation!6274 (rule!9112 (_1!23049 (get!13463 lt!1333647)))) (seqFromList!4545 (originalCharacters!6874 (_1!23049 (get!13463 lt!1333647)))))))))

(declare-fun b!3842162 () Bool)

(declare-fun res!1555106 () Bool)

(assert (=> b!3842162 (=> (not res!1555106) (not e!2373868))))

(assert (=> b!3842162 (= res!1555106 (< (size!30596 (_2!23049 (get!13463 lt!1333647))) (size!30596 (++!10305 prefix!426 Nil!40657))))))

(declare-fun d!1139804 () Bool)

(declare-fun e!2373866 () Bool)

(assert (=> d!1139804 e!2373866))

(declare-fun res!1555104 () Bool)

(assert (=> d!1139804 (=> res!1555104 e!2373866)))

(assert (=> d!1139804 (= res!1555104 (isEmpty!24038 lt!1333647))))

(assert (=> d!1139804 (= lt!1333647 e!2373867)))

(declare-fun c!669555 () Bool)

(assert (=> d!1139804 (= c!669555 (and ((_ is Cons!40659) rules!2768) ((_ is Nil!40659) (t!310452 rules!2768))))))

(declare-fun lt!1333648 () Unit!58358)

(declare-fun lt!1333645 () Unit!58358)

(assert (=> d!1139804 (= lt!1333648 lt!1333645)))

(assert (=> d!1139804 (isPrefix!3373 (++!10305 prefix!426 Nil!40657) (++!10305 prefix!426 Nil!40657))))

(assert (=> d!1139804 (= lt!1333645 (lemmaIsPrefixRefl!2146 (++!10305 prefix!426 Nil!40657) (++!10305 prefix!426 Nil!40657)))))

(assert (=> d!1139804 (rulesValidInductive!2216 thiss!20629 rules!2768)))

(assert (=> d!1139804 (= (maxPrefix!3167 thiss!20629 rules!2768 (++!10305 prefix!426 Nil!40657)) lt!1333647)))

(declare-fun b!3842167 () Bool)

(assert (=> b!3842167 (= e!2373866 e!2373868)))

(declare-fun res!1555110 () Bool)

(assert (=> b!3842167 (=> (not res!1555110) (not e!2373868))))

(assert (=> b!3842167 (= res!1555110 (isDefined!6827 lt!1333647))))

(declare-fun b!3842168 () Bool)

(declare-fun res!1555105 () Bool)

(assert (=> b!3842168 (=> (not res!1555105) (not e!2373868))))

(assert (=> b!3842168 (= res!1555105 (= (list!15138 (charsOf!4102 (_1!23049 (get!13463 lt!1333647)))) (originalCharacters!6874 (_1!23049 (get!13463 lt!1333647)))))))

(assert (= (and d!1139804 c!669555) b!3842164))

(assert (= (and d!1139804 (not c!669555)) b!3842160))

(assert (= (or b!3842164 b!3842160) bm!281976))

(assert (= (and d!1139804 (not res!1555104)) b!3842167))

(assert (= (and b!3842167 res!1555110) b!3842168))

(assert (= (and b!3842168 res!1555105) b!3842162))

(assert (= (and b!3842162 res!1555106) b!3842161))

(assert (= (and b!3842161 res!1555107) b!3842166))

(assert (= (and b!3842166 res!1555109) b!3842165))

(assert (= (and b!3842165 res!1555108) b!3842163))

(assert (=> bm!281976 m!4395927))

(declare-fun m!4396433 () Bool)

(assert (=> bm!281976 m!4396433))

(declare-fun m!4396435 () Bool)

(assert (=> b!3842166 m!4396435))

(declare-fun m!4396437 () Bool)

(assert (=> b!3842166 m!4396437))

(assert (=> b!3842166 m!4396437))

(declare-fun m!4396439 () Bool)

(assert (=> b!3842166 m!4396439))

(declare-fun m!4396441 () Bool)

(assert (=> b!3842167 m!4396441))

(declare-fun m!4396443 () Bool)

(assert (=> d!1139804 m!4396443))

(assert (=> d!1139804 m!4395927))

(assert (=> d!1139804 m!4395927))

(declare-fun m!4396445 () Bool)

(assert (=> d!1139804 m!4396445))

(assert (=> d!1139804 m!4395927))

(assert (=> d!1139804 m!4395927))

(declare-fun m!4396447 () Bool)

(assert (=> d!1139804 m!4396447))

(assert (=> d!1139804 m!4395925))

(assert (=> b!3842163 m!4396435))

(declare-fun m!4396449 () Bool)

(assert (=> b!3842163 m!4396449))

(assert (=> b!3842168 m!4396435))

(declare-fun m!4396451 () Bool)

(assert (=> b!3842168 m!4396451))

(assert (=> b!3842168 m!4396451))

(declare-fun m!4396453 () Bool)

(assert (=> b!3842168 m!4396453))

(assert (=> b!3842161 m!4396435))

(assert (=> b!3842161 m!4396451))

(assert (=> b!3842161 m!4396451))

(assert (=> b!3842161 m!4396453))

(assert (=> b!3842161 m!4396453))

(declare-fun m!4396455 () Bool)

(assert (=> b!3842161 m!4396455))

(assert (=> b!3842162 m!4396435))

(declare-fun m!4396457 () Bool)

(assert (=> b!3842162 m!4396457))

(assert (=> b!3842162 m!4395927))

(declare-fun m!4396459 () Bool)

(assert (=> b!3842162 m!4396459))

(assert (=> b!3842165 m!4396435))

(assert (=> b!3842165 m!4396451))

(assert (=> b!3842165 m!4396451))

(assert (=> b!3842165 m!4396453))

(assert (=> b!3842165 m!4396453))

(declare-fun m!4396461 () Bool)

(assert (=> b!3842165 m!4396461))

(assert (=> b!3842160 m!4395927))

(declare-fun m!4396463 () Bool)

(assert (=> b!3842160 m!4396463))

(assert (=> b!3841729 d!1139804))

(declare-fun b!3842170 () Bool)

(declare-fun e!2373869 () List!40781)

(assert (=> b!3842170 (= e!2373869 (Cons!40657 (h!46077 prefix!426) (++!10305 (t!310450 prefix!426) Nil!40657)))))

(declare-fun d!1139806 () Bool)

(declare-fun e!2373870 () Bool)

(assert (=> d!1139806 e!2373870))

(declare-fun res!1555111 () Bool)

(assert (=> d!1139806 (=> (not res!1555111) (not e!2373870))))

(declare-fun lt!1333650 () List!40781)

(assert (=> d!1139806 (= res!1555111 (= (content!6039 lt!1333650) ((_ map or) (content!6039 prefix!426) (content!6039 Nil!40657))))))

(assert (=> d!1139806 (= lt!1333650 e!2373869)))

(declare-fun c!669556 () Bool)

(assert (=> d!1139806 (= c!669556 ((_ is Nil!40657) prefix!426))))

(assert (=> d!1139806 (= (++!10305 prefix!426 Nil!40657) lt!1333650)))

(declare-fun b!3842172 () Bool)

(assert (=> b!3842172 (= e!2373870 (or (not (= Nil!40657 Nil!40657)) (= lt!1333650 prefix!426)))))

(declare-fun b!3842171 () Bool)

(declare-fun res!1555112 () Bool)

(assert (=> b!3842171 (=> (not res!1555112) (not e!2373870))))

(assert (=> b!3842171 (= res!1555112 (= (size!30596 lt!1333650) (+ (size!30596 prefix!426) (size!30596 Nil!40657))))))

(declare-fun b!3842169 () Bool)

(assert (=> b!3842169 (= e!2373869 Nil!40657)))

(assert (= (and d!1139806 c!669556) b!3842169))

(assert (= (and d!1139806 (not c!669556)) b!3842170))

(assert (= (and d!1139806 res!1555111) b!3842171))

(assert (= (and b!3842171 res!1555112) b!3842172))

(declare-fun m!4396465 () Bool)

(assert (=> b!3842170 m!4396465))

(declare-fun m!4396467 () Bool)

(assert (=> d!1139806 m!4396467))

(assert (=> d!1139806 m!4395997))

(declare-fun m!4396469 () Bool)

(assert (=> d!1139806 m!4396469))

(declare-fun m!4396471 () Bool)

(assert (=> b!3842171 m!4396471))

(assert (=> b!3842171 m!4396003))

(declare-fun m!4396473 () Bool)

(assert (=> b!3842171 m!4396473))

(assert (=> b!3841729 d!1139806))

(declare-fun d!1139808 () Bool)

(assert (=> d!1139808 (= (maxPrefix!3167 thiss!20629 rules!2768 (++!10305 prefix!426 Nil!40657)) (Some!8691 (tuple2!39831 (_1!23049 (v!38983 lt!1333491)) Nil!40657)))))

(declare-fun lt!1333653 () Unit!58358)

(declare-fun choose!22587 (LexerInterface!5863 List!40783 List!40781 List!40781 List!40781 Token!11686 List!40781 List!40781) Unit!58358)

(assert (=> d!1139808 (= lt!1333653 (choose!22587 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!40657 (_1!23049 (v!38983 lt!1333491)) suffix!1176 Nil!40657))))

(assert (=> d!1139808 (not (isEmpty!24036 rules!2768))))

(assert (=> d!1139808 (= (lemmaMaxPrefixThenWithShorterSuffix!4 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!40657 (_1!23049 (v!38983 lt!1333491)) suffix!1176 Nil!40657) lt!1333653)))

(declare-fun bs!582629 () Bool)

(assert (= bs!582629 d!1139808))

(assert (=> bs!582629 m!4395927))

(assert (=> bs!582629 m!4395927))

(assert (=> bs!582629 m!4395929))

(declare-fun m!4396475 () Bool)

(assert (=> bs!582629 m!4396475))

(assert (=> bs!582629 m!4395917))

(assert (=> b!3841729 d!1139808))

(declare-fun b!3842173 () Bool)

(declare-fun e!2373872 () Option!8692)

(declare-fun lt!1333655 () Option!8692)

(declare-fun lt!1333658 () Option!8692)

(assert (=> b!3842173 (= e!2373872 (ite (and ((_ is None!8691) lt!1333655) ((_ is None!8691) lt!1333658)) None!8691 (ite ((_ is None!8691) lt!1333658) lt!1333655 (ite ((_ is None!8691) lt!1333655) lt!1333658 (ite (>= (size!30595 (_1!23049 (v!38983 lt!1333655))) (size!30595 (_1!23049 (v!38983 lt!1333658)))) lt!1333655 lt!1333658)))))))

(declare-fun call!281982 () Option!8692)

(assert (=> b!3842173 (= lt!1333655 call!281982)))

(assert (=> b!3842173 (= lt!1333658 (maxPrefix!3167 thiss!20629 (t!310452 rules!2768) lt!1333496))))

(declare-fun bm!281977 () Bool)

(assert (=> bm!281977 (= call!281982 (maxPrefixOneRule!2251 thiss!20629 (h!46079 rules!2768) lt!1333496))))

(declare-fun b!3842174 () Bool)

(declare-fun res!1555116 () Bool)

(declare-fun e!2373873 () Bool)

(assert (=> b!3842174 (=> (not res!1555116) (not e!2373873))))

(declare-fun lt!1333656 () Option!8692)

(assert (=> b!3842174 (= res!1555116 (= (++!10305 (list!15138 (charsOf!4102 (_1!23049 (get!13463 lt!1333656)))) (_2!23049 (get!13463 lt!1333656))) lt!1333496))))

(declare-fun b!3842176 () Bool)

(assert (=> b!3842176 (= e!2373873 (contains!8232 rules!2768 (rule!9112 (_1!23049 (get!13463 lt!1333656)))))))

(declare-fun b!3842177 () Bool)

(assert (=> b!3842177 (= e!2373872 call!281982)))

(declare-fun b!3842178 () Bool)

(declare-fun res!1555117 () Bool)

(assert (=> b!3842178 (=> (not res!1555117) (not e!2373873))))

(assert (=> b!3842178 (= res!1555117 (matchR!5338 (regex!6274 (rule!9112 (_1!23049 (get!13463 lt!1333656)))) (list!15138 (charsOf!4102 (_1!23049 (get!13463 lt!1333656))))))))

(declare-fun b!3842179 () Bool)

(declare-fun res!1555118 () Bool)

(assert (=> b!3842179 (=> (not res!1555118) (not e!2373873))))

(assert (=> b!3842179 (= res!1555118 (= (value!199443 (_1!23049 (get!13463 lt!1333656))) (apply!9517 (transformation!6274 (rule!9112 (_1!23049 (get!13463 lt!1333656)))) (seqFromList!4545 (originalCharacters!6874 (_1!23049 (get!13463 lt!1333656)))))))))

(declare-fun b!3842175 () Bool)

(declare-fun res!1555115 () Bool)

(assert (=> b!3842175 (=> (not res!1555115) (not e!2373873))))

(assert (=> b!3842175 (= res!1555115 (< (size!30596 (_2!23049 (get!13463 lt!1333656))) (size!30596 lt!1333496)))))

(declare-fun d!1139810 () Bool)

(declare-fun e!2373871 () Bool)

(assert (=> d!1139810 e!2373871))

(declare-fun res!1555113 () Bool)

(assert (=> d!1139810 (=> res!1555113 e!2373871)))

(assert (=> d!1139810 (= res!1555113 (isEmpty!24038 lt!1333656))))

(assert (=> d!1139810 (= lt!1333656 e!2373872)))

(declare-fun c!669557 () Bool)

(assert (=> d!1139810 (= c!669557 (and ((_ is Cons!40659) rules!2768) ((_ is Nil!40659) (t!310452 rules!2768))))))

(declare-fun lt!1333657 () Unit!58358)

(declare-fun lt!1333654 () Unit!58358)

(assert (=> d!1139810 (= lt!1333657 lt!1333654)))

(assert (=> d!1139810 (isPrefix!3373 lt!1333496 lt!1333496)))

(assert (=> d!1139810 (= lt!1333654 (lemmaIsPrefixRefl!2146 lt!1333496 lt!1333496))))

(assert (=> d!1139810 (rulesValidInductive!2216 thiss!20629 rules!2768)))

(assert (=> d!1139810 (= (maxPrefix!3167 thiss!20629 rules!2768 lt!1333496) lt!1333656)))

(declare-fun b!3842180 () Bool)

(assert (=> b!3842180 (= e!2373871 e!2373873)))

(declare-fun res!1555119 () Bool)

(assert (=> b!3842180 (=> (not res!1555119) (not e!2373873))))

(assert (=> b!3842180 (= res!1555119 (isDefined!6827 lt!1333656))))

(declare-fun b!3842181 () Bool)

(declare-fun res!1555114 () Bool)

(assert (=> b!3842181 (=> (not res!1555114) (not e!2373873))))

(assert (=> b!3842181 (= res!1555114 (= (list!15138 (charsOf!4102 (_1!23049 (get!13463 lt!1333656)))) (originalCharacters!6874 (_1!23049 (get!13463 lt!1333656)))))))

(assert (= (and d!1139810 c!669557) b!3842177))

(assert (= (and d!1139810 (not c!669557)) b!3842173))

(assert (= (or b!3842177 b!3842173) bm!281977))

(assert (= (and d!1139810 (not res!1555113)) b!3842180))

(assert (= (and b!3842180 res!1555119) b!3842181))

(assert (= (and b!3842181 res!1555114) b!3842175))

(assert (= (and b!3842175 res!1555115) b!3842174))

(assert (= (and b!3842174 res!1555116) b!3842179))

(assert (= (and b!3842179 res!1555118) b!3842178))

(assert (= (and b!3842178 res!1555117) b!3842176))

(assert (=> bm!281977 m!4395933))

(declare-fun m!4396477 () Bool)

(assert (=> b!3842179 m!4396477))

(declare-fun m!4396479 () Bool)

(assert (=> b!3842179 m!4396479))

(assert (=> b!3842179 m!4396479))

(declare-fun m!4396481 () Bool)

(assert (=> b!3842179 m!4396481))

(declare-fun m!4396483 () Bool)

(assert (=> b!3842180 m!4396483))

(declare-fun m!4396485 () Bool)

(assert (=> d!1139810 m!4396485))

(assert (=> d!1139810 m!4395919))

(assert (=> d!1139810 m!4395921))

(assert (=> d!1139810 m!4395925))

(assert (=> b!3842176 m!4396477))

(declare-fun m!4396487 () Bool)

(assert (=> b!3842176 m!4396487))

(assert (=> b!3842181 m!4396477))

(declare-fun m!4396489 () Bool)

(assert (=> b!3842181 m!4396489))

(assert (=> b!3842181 m!4396489))

(declare-fun m!4396491 () Bool)

(assert (=> b!3842181 m!4396491))

(assert (=> b!3842174 m!4396477))

(assert (=> b!3842174 m!4396489))

(assert (=> b!3842174 m!4396489))

(assert (=> b!3842174 m!4396491))

(assert (=> b!3842174 m!4396491))

(declare-fun m!4396493 () Bool)

(assert (=> b!3842174 m!4396493))

(assert (=> b!3842175 m!4396477))

(declare-fun m!4396495 () Bool)

(assert (=> b!3842175 m!4396495))

(assert (=> b!3842175 m!4395977))

(assert (=> b!3842178 m!4396477))

(assert (=> b!3842178 m!4396489))

(assert (=> b!3842178 m!4396489))

(assert (=> b!3842178 m!4396491))

(assert (=> b!3842178 m!4396491))

(declare-fun m!4396497 () Bool)

(assert (=> b!3842178 m!4396497))

(assert (=> b!3842173 m!4395861))

(assert (=> b!3841719 d!1139810))

(declare-fun d!1139812 () Bool)

(assert (=> d!1139812 (= (isEmpty!24034 prefixTokens!80) ((_ is Nil!40658) prefixTokens!80))))

(assert (=> b!3841720 d!1139812))

(declare-fun d!1139814 () Bool)

(declare-fun c!669558 () Bool)

(assert (=> d!1139814 (= c!669558 ((_ is IntegerValue!19512) (value!199443 (h!46078 suffixTokens!72))))))

(declare-fun e!2373874 () Bool)

(assert (=> d!1139814 (= (inv!21 (value!199443 (h!46078 suffixTokens!72))) e!2373874)))

(declare-fun b!3842182 () Bool)

(assert (=> b!3842182 (= e!2373874 (inv!16 (value!199443 (h!46078 suffixTokens!72))))))

(declare-fun b!3842183 () Bool)

(declare-fun e!2373876 () Bool)

(assert (=> b!3842183 (= e!2373876 (inv!15 (value!199443 (h!46078 suffixTokens!72))))))

(declare-fun b!3842184 () Bool)

(declare-fun e!2373875 () Bool)

(assert (=> b!3842184 (= e!2373874 e!2373875)))

(declare-fun c!669559 () Bool)

(assert (=> b!3842184 (= c!669559 ((_ is IntegerValue!19513) (value!199443 (h!46078 suffixTokens!72))))))

(declare-fun b!3842185 () Bool)

(declare-fun res!1555120 () Bool)

(assert (=> b!3842185 (=> res!1555120 e!2373876)))

(assert (=> b!3842185 (= res!1555120 (not ((_ is IntegerValue!19514) (value!199443 (h!46078 suffixTokens!72)))))))

(assert (=> b!3842185 (= e!2373875 e!2373876)))

(declare-fun b!3842186 () Bool)

(assert (=> b!3842186 (= e!2373875 (inv!17 (value!199443 (h!46078 suffixTokens!72))))))

(assert (= (and d!1139814 c!669558) b!3842182))

(assert (= (and d!1139814 (not c!669558)) b!3842184))

(assert (= (and b!3842184 c!669559) b!3842186))

(assert (= (and b!3842184 (not c!669559)) b!3842185))

(assert (= (and b!3842185 (not res!1555120)) b!3842183))

(declare-fun m!4396499 () Bool)

(assert (=> b!3842182 m!4396499))

(declare-fun m!4396501 () Bool)

(assert (=> b!3842183 m!4396501))

(declare-fun m!4396503 () Bool)

(assert (=> b!3842186 m!4396503))

(assert (=> b!3841741 d!1139814))

(declare-fun d!1139816 () Bool)

(declare-fun res!1555123 () Bool)

(declare-fun e!2373879 () Bool)

(assert (=> d!1139816 (=> (not res!1555123) (not e!2373879))))

(declare-fun rulesValid!2421 (LexerInterface!5863 List!40783) Bool)

(assert (=> d!1139816 (= res!1555123 (rulesValid!2421 thiss!20629 rules!2768))))

(assert (=> d!1139816 (= (rulesInvariant!5206 thiss!20629 rules!2768) e!2373879)))

(declare-fun b!3842189 () Bool)

(declare-datatypes ((List!40784 0))(
  ( (Nil!40660) (Cons!40660 (h!46080 String!46238) (t!310593 List!40784)) )
))
(declare-fun noDuplicateTag!2422 (LexerInterface!5863 List!40783 List!40784) Bool)

(assert (=> b!3842189 (= e!2373879 (noDuplicateTag!2422 thiss!20629 rules!2768 Nil!40660))))

(assert (= (and d!1139816 res!1555123) b!3842189))

(declare-fun m!4396505 () Bool)

(assert (=> d!1139816 m!4396505))

(declare-fun m!4396507 () Bool)

(assert (=> b!3842189 m!4396507))

(assert (=> b!3841721 d!1139816))

(declare-fun b!3842191 () Bool)

(declare-fun e!2373880 () List!40781)

(assert (=> b!3842191 (= e!2373880 (Cons!40657 (h!46077 lt!1333488) (++!10305 (t!310450 lt!1333488) (_2!23049 (v!38983 lt!1333491)))))))

(declare-fun d!1139818 () Bool)

(declare-fun e!2373881 () Bool)

(assert (=> d!1139818 e!2373881))

(declare-fun res!1555124 () Bool)

(assert (=> d!1139818 (=> (not res!1555124) (not e!2373881))))

(declare-fun lt!1333659 () List!40781)

(assert (=> d!1139818 (= res!1555124 (= (content!6039 lt!1333659) ((_ map or) (content!6039 lt!1333488) (content!6039 (_2!23049 (v!38983 lt!1333491))))))))

(assert (=> d!1139818 (= lt!1333659 e!2373880)))

(declare-fun c!669560 () Bool)

(assert (=> d!1139818 (= c!669560 ((_ is Nil!40657) lt!1333488))))

(assert (=> d!1139818 (= (++!10305 lt!1333488 (_2!23049 (v!38983 lt!1333491))) lt!1333659)))

(declare-fun b!3842193 () Bool)

(assert (=> b!3842193 (= e!2373881 (or (not (= (_2!23049 (v!38983 lt!1333491)) Nil!40657)) (= lt!1333659 lt!1333488)))))

(declare-fun b!3842192 () Bool)

(declare-fun res!1555125 () Bool)

(assert (=> b!3842192 (=> (not res!1555125) (not e!2373881))))

(assert (=> b!3842192 (= res!1555125 (= (size!30596 lt!1333659) (+ (size!30596 lt!1333488) (size!30596 (_2!23049 (v!38983 lt!1333491))))))))

(declare-fun b!3842190 () Bool)

(assert (=> b!3842190 (= e!2373880 (_2!23049 (v!38983 lt!1333491)))))

(assert (= (and d!1139818 c!669560) b!3842190))

(assert (= (and d!1139818 (not c!669560)) b!3842191))

(assert (= (and d!1139818 res!1555124) b!3842192))

(assert (= (and b!3842192 res!1555125) b!3842193))

(declare-fun m!4396509 () Bool)

(assert (=> b!3842191 m!4396509))

(declare-fun m!4396511 () Bool)

(assert (=> d!1139818 m!4396511))

(declare-fun m!4396513 () Bool)

(assert (=> d!1139818 m!4396513))

(declare-fun m!4396515 () Bool)

(assert (=> d!1139818 m!4396515))

(declare-fun m!4396517 () Bool)

(assert (=> b!3842192 m!4396517))

(assert (=> b!3842192 m!4395883))

(declare-fun m!4396519 () Bool)

(assert (=> b!3842192 m!4396519))

(assert (=> b!3841722 d!1139818))

(declare-fun d!1139820 () Bool)

(declare-fun lt!1333662 () Int)

(assert (=> d!1139820 (>= lt!1333662 0)))

(declare-fun e!2373884 () Int)

(assert (=> d!1139820 (= lt!1333662 e!2373884)))

(declare-fun c!669563 () Bool)

(assert (=> d!1139820 (= c!669563 ((_ is Nil!40657) lt!1333488))))

(assert (=> d!1139820 (= (size!30596 lt!1333488) lt!1333662)))

(declare-fun b!3842198 () Bool)

(assert (=> b!3842198 (= e!2373884 0)))

(declare-fun b!3842199 () Bool)

(assert (=> b!3842199 (= e!2373884 (+ 1 (size!30596 (t!310450 lt!1333488))))))

(assert (= (and d!1139820 c!669563) b!3842198))

(assert (= (and d!1139820 (not c!669563)) b!3842199))

(declare-fun m!4396521 () Bool)

(assert (=> b!3842199 m!4396521))

(assert (=> b!3841722 d!1139820))

(declare-fun d!1139822 () Bool)

(assert (=> d!1139822 (= (size!30595 (_1!23049 (v!38983 lt!1333491))) (size!30596 (originalCharacters!6874 (_1!23049 (v!38983 lt!1333491)))))))

(declare-fun Unit!58361 () Unit!58358)

(assert (=> d!1139822 (= (lemmaCharactersSize!935 (_1!23049 (v!38983 lt!1333491))) Unit!58361)))

(declare-fun bs!582630 () Bool)

(assert (= bs!582630 d!1139822))

(assert (=> bs!582630 m!4395939))

(assert (=> b!3841722 d!1139822))

(declare-fun d!1139824 () Bool)

(declare-fun res!1555130 () Bool)

(declare-fun e!2373887 () Bool)

(assert (=> d!1139824 (=> (not res!1555130) (not e!2373887))))

(declare-fun validRegex!5086 (Regex!11179) Bool)

(assert (=> d!1139824 (= res!1555130 (validRegex!5086 (regex!6274 (rule!9112 (_1!23049 (v!38983 lt!1333491))))))))

(assert (=> d!1139824 (= (ruleValid!2226 thiss!20629 (rule!9112 (_1!23049 (v!38983 lt!1333491)))) e!2373887)))

(declare-fun b!3842204 () Bool)

(declare-fun res!1555131 () Bool)

(assert (=> b!3842204 (=> (not res!1555131) (not e!2373887))))

(declare-fun nullable!3887 (Regex!11179) Bool)

(assert (=> b!3842204 (= res!1555131 (not (nullable!3887 (regex!6274 (rule!9112 (_1!23049 (v!38983 lt!1333491)))))))))

(declare-fun b!3842205 () Bool)

(assert (=> b!3842205 (= e!2373887 (not (= (tag!7134 (rule!9112 (_1!23049 (v!38983 lt!1333491)))) (String!46239 ""))))))

(assert (= (and d!1139824 res!1555130) b!3842204))

(assert (= (and b!3842204 res!1555131) b!3842205))

(declare-fun m!4396523 () Bool)

(assert (=> d!1139824 m!4396523))

(declare-fun m!4396525 () Bool)

(assert (=> b!3842204 m!4396525))

(assert (=> b!3841722 d!1139824))

(declare-fun d!1139826 () Bool)

(declare-fun lt!1333665 () List!40781)

(assert (=> d!1139826 (= (++!10305 lt!1333488 lt!1333665) lt!1333496)))

(declare-fun e!2373890 () List!40781)

(assert (=> d!1139826 (= lt!1333665 e!2373890)))

(declare-fun c!669566 () Bool)

(assert (=> d!1139826 (= c!669566 ((_ is Cons!40657) lt!1333488))))

(assert (=> d!1139826 (>= (size!30596 lt!1333496) (size!30596 lt!1333488))))

(assert (=> d!1139826 (= (getSuffix!1828 lt!1333496 lt!1333488) lt!1333665)))

(declare-fun b!3842210 () Bool)

(assert (=> b!3842210 (= e!2373890 (getSuffix!1828 (tail!5809 lt!1333496) (t!310450 lt!1333488)))))

(declare-fun b!3842211 () Bool)

(assert (=> b!3842211 (= e!2373890 lt!1333496)))

(assert (= (and d!1139826 c!669566) b!3842210))

(assert (= (and d!1139826 (not c!669566)) b!3842211))

(declare-fun m!4396527 () Bool)

(assert (=> d!1139826 m!4396527))

(assert (=> d!1139826 m!4395977))

(assert (=> d!1139826 m!4395883))

(assert (=> b!3842210 m!4396039))

(assert (=> b!3842210 m!4396039))

(declare-fun m!4396529 () Bool)

(assert (=> b!3842210 m!4396529))

(assert (=> b!3841722 d!1139826))

(declare-fun b!3842212 () Bool)

(declare-fun e!2373892 () Bool)

(declare-fun lt!1333668 () tuple2!39832)

(assert (=> b!3842212 (= e!2373892 (= (_2!23050 lt!1333668) (_2!23049 (v!38983 lt!1333491))))))

(declare-fun b!3842213 () Bool)

(declare-fun e!2373893 () tuple2!39832)

(assert (=> b!3842213 (= e!2373893 (tuple2!39833 Nil!40658 (_2!23049 (v!38983 lt!1333491))))))

(declare-fun b!3842214 () Bool)

(declare-fun lt!1333667 () Option!8692)

(declare-fun lt!1333666 () tuple2!39832)

(assert (=> b!3842214 (= e!2373893 (tuple2!39833 (Cons!40658 (_1!23049 (v!38983 lt!1333667)) (_1!23050 lt!1333666)) (_2!23050 lt!1333666)))))

(assert (=> b!3842214 (= lt!1333666 (lexList!1631 thiss!20629 rules!2768 (_2!23049 (v!38983 lt!1333667))))))

(declare-fun d!1139828 () Bool)

(assert (=> d!1139828 e!2373892))

(declare-fun c!669568 () Bool)

(assert (=> d!1139828 (= c!669568 (> (size!30599 (_1!23050 lt!1333668)) 0))))

(assert (=> d!1139828 (= lt!1333668 e!2373893)))

(declare-fun c!669567 () Bool)

(assert (=> d!1139828 (= c!669567 ((_ is Some!8691) lt!1333667))))

(assert (=> d!1139828 (= lt!1333667 (maxPrefix!3167 thiss!20629 rules!2768 (_2!23049 (v!38983 lt!1333491))))))

(assert (=> d!1139828 (= (lexList!1631 thiss!20629 rules!2768 (_2!23049 (v!38983 lt!1333491))) lt!1333668)))

(declare-fun b!3842215 () Bool)

(declare-fun e!2373891 () Bool)

(assert (=> b!3842215 (= e!2373891 (not (isEmpty!24034 (_1!23050 lt!1333668))))))

(declare-fun b!3842216 () Bool)

(assert (=> b!3842216 (= e!2373892 e!2373891)))

(declare-fun res!1555132 () Bool)

(assert (=> b!3842216 (= res!1555132 (< (size!30596 (_2!23050 lt!1333668)) (size!30596 (_2!23049 (v!38983 lt!1333491)))))))

(assert (=> b!3842216 (=> (not res!1555132) (not e!2373891))))

(assert (= (and d!1139828 c!669567) b!3842214))

(assert (= (and d!1139828 (not c!669567)) b!3842213))

(assert (= (and d!1139828 c!669568) b!3842216))

(assert (= (and d!1139828 (not c!669568)) b!3842212))

(assert (= (and b!3842216 res!1555132) b!3842215))

(declare-fun m!4396531 () Bool)

(assert (=> b!3842214 m!4396531))

(declare-fun m!4396533 () Bool)

(assert (=> d!1139828 m!4396533))

(declare-fun m!4396535 () Bool)

(assert (=> d!1139828 m!4396535))

(declare-fun m!4396537 () Bool)

(assert (=> b!3842215 m!4396537))

(declare-fun m!4396539 () Bool)

(assert (=> b!3842216 m!4396539))

(assert (=> b!3842216 m!4396519))

(assert (=> b!3841722 d!1139828))

(declare-fun d!1139830 () Bool)

(assert (=> d!1139830 (isPrefix!3373 lt!1333488 (++!10305 lt!1333488 (_2!23049 (v!38983 lt!1333491))))))

(declare-fun lt!1333671 () Unit!58358)

(declare-fun choose!22588 (List!40781 List!40781) Unit!58358)

(assert (=> d!1139830 (= lt!1333671 (choose!22588 lt!1333488 (_2!23049 (v!38983 lt!1333491))))))

(assert (=> d!1139830 (= (lemmaConcatTwoListThenFirstIsPrefix!2236 lt!1333488 (_2!23049 (v!38983 lt!1333491))) lt!1333671)))

(declare-fun bs!582631 () Bool)

(assert (= bs!582631 d!1139830))

(assert (=> bs!582631 m!4395865))

(assert (=> bs!582631 m!4395865))

(declare-fun m!4396541 () Bool)

(assert (=> bs!582631 m!4396541))

(declare-fun m!4396543 () Bool)

(assert (=> bs!582631 m!4396543))

(assert (=> b!3841722 d!1139830))

(declare-fun d!1139832 () Bool)

(declare-fun list!15140 (Conc!12485) List!40781)

(assert (=> d!1139832 (= (list!15138 (charsOf!4102 (_1!23049 (v!38983 lt!1333491)))) (list!15140 (c!669489 (charsOf!4102 (_1!23049 (v!38983 lt!1333491))))))))

(declare-fun bs!582632 () Bool)

(assert (= bs!582632 d!1139832))

(declare-fun m!4396545 () Bool)

(assert (=> bs!582632 m!4396545))

(assert (=> b!3841722 d!1139832))

(declare-fun d!1139834 () Bool)

(declare-fun lt!1333674 () BalanceConc!24564)

(assert (=> d!1139834 (= (list!15138 lt!1333674) (originalCharacters!6874 (_1!23049 (v!38983 lt!1333491))))))

(declare-fun dynLambda!17573 (Int TokenValue!6504) BalanceConc!24564)

(assert (=> d!1139834 (= lt!1333674 (dynLambda!17573 (toChars!8549 (transformation!6274 (rule!9112 (_1!23049 (v!38983 lt!1333491))))) (value!199443 (_1!23049 (v!38983 lt!1333491)))))))

(assert (=> d!1139834 (= (charsOf!4102 (_1!23049 (v!38983 lt!1333491))) lt!1333674)))

(declare-fun b_lambda!112307 () Bool)

(assert (=> (not b_lambda!112307) (not d!1139834)))

(declare-fun tb!221047 () Bool)

(declare-fun t!310524 () Bool)

(assert (=> (and b!3841736 (= (toChars!8549 (transformation!6274 (rule!9112 (_1!23049 (v!38983 err!4249))))) (toChars!8549 (transformation!6274 (rule!9112 (_1!23049 (v!38983 lt!1333491)))))) t!310524) tb!221047))

(declare-fun b!3842221 () Bool)

(declare-fun e!2373896 () Bool)

(declare-fun tp!1164004 () Bool)

(declare-fun inv!54806 (Conc!12485) Bool)

(assert (=> b!3842221 (= e!2373896 (and (inv!54806 (c!669489 (dynLambda!17573 (toChars!8549 (transformation!6274 (rule!9112 (_1!23049 (v!38983 lt!1333491))))) (value!199443 (_1!23049 (v!38983 lt!1333491)))))) tp!1164004))))

(declare-fun result!269400 () Bool)

(declare-fun inv!54807 (BalanceConc!24564) Bool)

(assert (=> tb!221047 (= result!269400 (and (inv!54807 (dynLambda!17573 (toChars!8549 (transformation!6274 (rule!9112 (_1!23049 (v!38983 lt!1333491))))) (value!199443 (_1!23049 (v!38983 lt!1333491))))) e!2373896))))

(assert (= tb!221047 b!3842221))

(declare-fun m!4396547 () Bool)

(assert (=> b!3842221 m!4396547))

(declare-fun m!4396549 () Bool)

(assert (=> tb!221047 m!4396549))

(assert (=> d!1139834 t!310524))

(declare-fun b_and!286283 () Bool)

(assert (= b_and!286217 (and (=> t!310524 result!269400) b_and!286283)))

(declare-fun t!310526 () Bool)

(declare-fun tb!221049 () Bool)

(assert (=> (and b!3841742 (= (toChars!8549 (transformation!6274 (h!46079 rules!2768))) (toChars!8549 (transformation!6274 (rule!9112 (_1!23049 (v!38983 lt!1333491)))))) t!310526) tb!221049))

(declare-fun result!269404 () Bool)

(assert (= result!269404 result!269400))

(assert (=> d!1139834 t!310526))

(declare-fun b_and!286285 () Bool)

(assert (= b_and!286221 (and (=> t!310526 result!269404) b_and!286285)))

(declare-fun t!310528 () Bool)

(declare-fun tb!221051 () Bool)

(assert (=> (and b!3841738 (= (toChars!8549 (transformation!6274 (rule!9112 (h!46078 prefixTokens!80)))) (toChars!8549 (transformation!6274 (rule!9112 (_1!23049 (v!38983 lt!1333491)))))) t!310528) tb!221051))

(declare-fun result!269406 () Bool)

(assert (= result!269406 result!269400))

(assert (=> d!1139834 t!310528))

(declare-fun b_and!286287 () Bool)

(assert (= b_and!286225 (and (=> t!310528 result!269406) b_and!286287)))

(declare-fun tb!221053 () Bool)

(declare-fun t!310530 () Bool)

(assert (=> (and b!3841727 (= (toChars!8549 (transformation!6274 (rule!9112 (h!46078 suffixTokens!72)))) (toChars!8549 (transformation!6274 (rule!9112 (_1!23049 (v!38983 lt!1333491)))))) t!310530) tb!221053))

(declare-fun result!269408 () Bool)

(assert (= result!269408 result!269400))

(assert (=> d!1139834 t!310530))

(declare-fun b_and!286289 () Bool)

(assert (= b_and!286229 (and (=> t!310530 result!269408) b_and!286289)))

(declare-fun m!4396551 () Bool)

(assert (=> d!1139834 m!4396551))

(declare-fun m!4396553 () Bool)

(assert (=> d!1139834 m!4396553))

(assert (=> b!3841722 d!1139834))

(declare-fun d!1139836 () Bool)

(declare-fun fromListB!2097 (List!40781) BalanceConc!24564)

(assert (=> d!1139836 (= (seqFromList!4545 lt!1333488) (fromListB!2097 lt!1333488))))

(declare-fun bs!582633 () Bool)

(assert (= bs!582633 d!1139836))

(declare-fun m!4396555 () Bool)

(assert (=> bs!582633 m!4396555))

(assert (=> b!3841722 d!1139836))

(declare-fun d!1139838 () Bool)

(assert (=> d!1139838 (ruleValid!2226 thiss!20629 (rule!9112 (_1!23049 (v!38983 lt!1333491))))))

(declare-fun lt!1333677 () Unit!58358)

(declare-fun choose!22590 (LexerInterface!5863 Rule!12348 List!40783) Unit!58358)

(assert (=> d!1139838 (= lt!1333677 (choose!22590 thiss!20629 (rule!9112 (_1!23049 (v!38983 lt!1333491))) rules!2768))))

(assert (=> d!1139838 (contains!8232 rules!2768 (rule!9112 (_1!23049 (v!38983 lt!1333491))))))

(assert (=> d!1139838 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1306 thiss!20629 (rule!9112 (_1!23049 (v!38983 lt!1333491))) rules!2768) lt!1333677)))

(declare-fun bs!582634 () Bool)

(assert (= bs!582634 d!1139838))

(assert (=> bs!582634 m!4395875))

(declare-fun m!4396557 () Bool)

(assert (=> bs!582634 m!4396557))

(declare-fun m!4396559 () Bool)

(assert (=> bs!582634 m!4396559))

(assert (=> b!3841722 d!1139838))

(declare-fun d!1139840 () Bool)

(declare-fun dynLambda!17574 (Int BalanceConc!24564) TokenValue!6504)

(assert (=> d!1139840 (= (apply!9517 (transformation!6274 (rule!9112 (_1!23049 (v!38983 lt!1333491)))) (seqFromList!4545 lt!1333488)) (dynLambda!17574 (toValue!8690 (transformation!6274 (rule!9112 (_1!23049 (v!38983 lt!1333491))))) (seqFromList!4545 lt!1333488)))))

(declare-fun b_lambda!112309 () Bool)

(assert (=> (not b_lambda!112309) (not d!1139840)))

(declare-fun t!310532 () Bool)

(declare-fun tb!221055 () Bool)

(assert (=> (and b!3841736 (= (toValue!8690 (transformation!6274 (rule!9112 (_1!23049 (v!38983 err!4249))))) (toValue!8690 (transformation!6274 (rule!9112 (_1!23049 (v!38983 lt!1333491)))))) t!310532) tb!221055))

(declare-fun result!269410 () Bool)

(assert (=> tb!221055 (= result!269410 (inv!21 (dynLambda!17574 (toValue!8690 (transformation!6274 (rule!9112 (_1!23049 (v!38983 lt!1333491))))) (seqFromList!4545 lt!1333488))))))

(declare-fun m!4396561 () Bool)

(assert (=> tb!221055 m!4396561))

(assert (=> d!1139840 t!310532))

(declare-fun b_and!286291 () Bool)

(assert (= b_and!286215 (and (=> t!310532 result!269410) b_and!286291)))

(declare-fun t!310534 () Bool)

(declare-fun tb!221057 () Bool)

(assert (=> (and b!3841742 (= (toValue!8690 (transformation!6274 (h!46079 rules!2768))) (toValue!8690 (transformation!6274 (rule!9112 (_1!23049 (v!38983 lt!1333491)))))) t!310534) tb!221057))

(declare-fun result!269414 () Bool)

(assert (= result!269414 result!269410))

(assert (=> d!1139840 t!310534))

(declare-fun b_and!286293 () Bool)

(assert (= b_and!286219 (and (=> t!310534 result!269414) b_and!286293)))

(declare-fun tb!221059 () Bool)

(declare-fun t!310536 () Bool)

(assert (=> (and b!3841738 (= (toValue!8690 (transformation!6274 (rule!9112 (h!46078 prefixTokens!80)))) (toValue!8690 (transformation!6274 (rule!9112 (_1!23049 (v!38983 lt!1333491)))))) t!310536) tb!221059))

(declare-fun result!269416 () Bool)

(assert (= result!269416 result!269410))

(assert (=> d!1139840 t!310536))

(declare-fun b_and!286295 () Bool)

(assert (= b_and!286223 (and (=> t!310536 result!269416) b_and!286295)))

(declare-fun tb!221061 () Bool)

(declare-fun t!310538 () Bool)

(assert (=> (and b!3841727 (= (toValue!8690 (transformation!6274 (rule!9112 (h!46078 suffixTokens!72)))) (toValue!8690 (transformation!6274 (rule!9112 (_1!23049 (v!38983 lt!1333491)))))) t!310538) tb!221061))

(declare-fun result!269418 () Bool)

(assert (= result!269418 result!269410))

(assert (=> d!1139840 t!310538))

(declare-fun b_and!286297 () Bool)

(assert (= b_and!286227 (and (=> t!310538 result!269418) b_and!286297)))

(assert (=> d!1139840 m!4395887))

(declare-fun m!4396563 () Bool)

(assert (=> d!1139840 m!4396563))

(assert (=> b!3841722 d!1139840))

(declare-fun d!1139842 () Bool)

(assert (=> d!1139842 (= (_2!23049 (v!38983 lt!1333491)) lt!1333501)))

(declare-fun lt!1333680 () Unit!58358)

(declare-fun choose!22591 (List!40781 List!40781 List!40781 List!40781 List!40781) Unit!58358)

(assert (=> d!1139842 (= lt!1333680 (choose!22591 lt!1333488 (_2!23049 (v!38983 lt!1333491)) lt!1333488 lt!1333501 lt!1333496))))

(assert (=> d!1139842 (isPrefix!3373 lt!1333488 lt!1333496)))

(assert (=> d!1139842 (= (lemmaSamePrefixThenSameSuffix!1594 lt!1333488 (_2!23049 (v!38983 lt!1333491)) lt!1333488 lt!1333501 lt!1333496) lt!1333680)))

(declare-fun bs!582635 () Bool)

(assert (= bs!582635 d!1139842))

(declare-fun m!4396565 () Bool)

(assert (=> bs!582635 m!4396565))

(declare-fun m!4396567 () Bool)

(assert (=> bs!582635 m!4396567))

(assert (=> b!3841722 d!1139842))

(declare-fun b!3842224 () Bool)

(declare-fun e!2373900 () Bool)

(declare-fun e!2373901 () Bool)

(assert (=> b!3842224 (= e!2373900 e!2373901)))

(declare-fun res!1555133 () Bool)

(assert (=> b!3842224 (=> (not res!1555133) (not e!2373901))))

(assert (=> b!3842224 (= res!1555133 (not ((_ is Nil!40657) lt!1333494)))))

(declare-fun b!3842226 () Bool)

(assert (=> b!3842226 (= e!2373901 (isPrefix!3373 (tail!5809 lt!1333488) (tail!5809 lt!1333494)))))

(declare-fun b!3842225 () Bool)

(declare-fun res!1555134 () Bool)

(assert (=> b!3842225 (=> (not res!1555134) (not e!2373901))))

(assert (=> b!3842225 (= res!1555134 (= (head!8082 lt!1333488) (head!8082 lt!1333494)))))

(declare-fun b!3842227 () Bool)

(declare-fun e!2373902 () Bool)

(assert (=> b!3842227 (= e!2373902 (>= (size!30596 lt!1333494) (size!30596 lt!1333488)))))

(declare-fun d!1139844 () Bool)

(assert (=> d!1139844 e!2373902))

(declare-fun res!1555136 () Bool)

(assert (=> d!1139844 (=> res!1555136 e!2373902)))

(declare-fun lt!1333681 () Bool)

(assert (=> d!1139844 (= res!1555136 (not lt!1333681))))

(assert (=> d!1139844 (= lt!1333681 e!2373900)))

(declare-fun res!1555135 () Bool)

(assert (=> d!1139844 (=> res!1555135 e!2373900)))

(assert (=> d!1139844 (= res!1555135 ((_ is Nil!40657) lt!1333488))))

(assert (=> d!1139844 (= (isPrefix!3373 lt!1333488 lt!1333494) lt!1333681)))

(assert (= (and d!1139844 (not res!1555135)) b!3842224))

(assert (= (and b!3842224 res!1555133) b!3842225))

(assert (= (and b!3842225 res!1555134) b!3842226))

(assert (= (and d!1139844 (not res!1555136)) b!3842227))

(declare-fun m!4396569 () Bool)

(assert (=> b!3842226 m!4396569))

(declare-fun m!4396571 () Bool)

(assert (=> b!3842226 m!4396571))

(assert (=> b!3842226 m!4396569))

(assert (=> b!3842226 m!4396571))

(declare-fun m!4396573 () Bool)

(assert (=> b!3842226 m!4396573))

(declare-fun m!4396575 () Bool)

(assert (=> b!3842225 m!4396575))

(declare-fun m!4396577 () Bool)

(assert (=> b!3842225 m!4396577))

(declare-fun m!4396579 () Bool)

(assert (=> b!3842227 m!4396579))

(assert (=> b!3842227 m!4395883))

(assert (=> b!3841722 d!1139844))

(declare-fun d!1139846 () Bool)

(assert (=> d!1139846 (= (isEmpty!24035 prefix!426) ((_ is Nil!40657) prefix!426))))

(assert (=> b!3841743 d!1139846))

(declare-fun b!3842228 () Bool)

(declare-fun e!2373903 () Bool)

(declare-fun e!2373904 () Bool)

(assert (=> b!3842228 (= e!2373903 e!2373904)))

(declare-fun res!1555137 () Bool)

(assert (=> b!3842228 (=> (not res!1555137) (not e!2373904))))

(assert (=> b!3842228 (= res!1555137 (not ((_ is Nil!40657) suffix!1176)))))

(declare-fun b!3842230 () Bool)

(assert (=> b!3842230 (= e!2373904 (isPrefix!3373 (tail!5809 Nil!40657) (tail!5809 suffix!1176)))))

(declare-fun b!3842229 () Bool)

(declare-fun res!1555138 () Bool)

(assert (=> b!3842229 (=> (not res!1555138) (not e!2373904))))

(assert (=> b!3842229 (= res!1555138 (= (head!8082 Nil!40657) (head!8082 suffix!1176)))))

(declare-fun b!3842231 () Bool)

(declare-fun e!2373905 () Bool)

(assert (=> b!3842231 (= e!2373905 (>= (size!30596 suffix!1176) (size!30596 Nil!40657)))))

(declare-fun d!1139848 () Bool)

(assert (=> d!1139848 e!2373905))

(declare-fun res!1555140 () Bool)

(assert (=> d!1139848 (=> res!1555140 e!2373905)))

(declare-fun lt!1333682 () Bool)

(assert (=> d!1139848 (= res!1555140 (not lt!1333682))))

(assert (=> d!1139848 (= lt!1333682 e!2373903)))

(declare-fun res!1555139 () Bool)

(assert (=> d!1139848 (=> res!1555139 e!2373903)))

(assert (=> d!1139848 (= res!1555139 ((_ is Nil!40657) Nil!40657))))

(assert (=> d!1139848 (= (isPrefix!3373 Nil!40657 suffix!1176) lt!1333682)))

(assert (= (and d!1139848 (not res!1555139)) b!3842228))

(assert (= (and b!3842228 res!1555137) b!3842229))

(assert (= (and b!3842229 res!1555138) b!3842230))

(assert (= (and d!1139848 (not res!1555140)) b!3842231))

(declare-fun m!4396581 () Bool)

(assert (=> b!3842230 m!4396581))

(declare-fun m!4396583 () Bool)

(assert (=> b!3842230 m!4396583))

(assert (=> b!3842230 m!4396581))

(assert (=> b!3842230 m!4396583))

(declare-fun m!4396585 () Bool)

(assert (=> b!3842230 m!4396585))

(declare-fun m!4396587 () Bool)

(assert (=> b!3842229 m!4396587))

(declare-fun m!4396589 () Bool)

(assert (=> b!3842229 m!4396589))

(assert (=> b!3842231 m!4396005))

(assert (=> b!3842231 m!4396473))

(assert (=> b!3841744 d!1139848))

(declare-fun d!1139850 () Bool)

(declare-fun res!1555145 () Bool)

(declare-fun e!2373908 () Bool)

(assert (=> d!1139850 (=> (not res!1555145) (not e!2373908))))

(assert (=> d!1139850 (= res!1555145 (not (isEmpty!24035 (originalCharacters!6874 (_1!23049 (v!38983 err!4249))))))))

(assert (=> d!1139850 (= (inv!54802 (_1!23049 (v!38983 err!4249))) e!2373908)))

(declare-fun b!3842236 () Bool)

(declare-fun res!1555146 () Bool)

(assert (=> b!3842236 (=> (not res!1555146) (not e!2373908))))

(assert (=> b!3842236 (= res!1555146 (= (originalCharacters!6874 (_1!23049 (v!38983 err!4249))) (list!15138 (dynLambda!17573 (toChars!8549 (transformation!6274 (rule!9112 (_1!23049 (v!38983 err!4249))))) (value!199443 (_1!23049 (v!38983 err!4249)))))))))

(declare-fun b!3842237 () Bool)

(assert (=> b!3842237 (= e!2373908 (= (size!30595 (_1!23049 (v!38983 err!4249))) (size!30596 (originalCharacters!6874 (_1!23049 (v!38983 err!4249))))))))

(assert (= (and d!1139850 res!1555145) b!3842236))

(assert (= (and b!3842236 res!1555146) b!3842237))

(declare-fun b_lambda!112311 () Bool)

(assert (=> (not b_lambda!112311) (not b!3842236)))

(declare-fun t!310540 () Bool)

(declare-fun tb!221063 () Bool)

(assert (=> (and b!3841736 (= (toChars!8549 (transformation!6274 (rule!9112 (_1!23049 (v!38983 err!4249))))) (toChars!8549 (transformation!6274 (rule!9112 (_1!23049 (v!38983 err!4249)))))) t!310540) tb!221063))

(declare-fun b!3842238 () Bool)

(declare-fun e!2373909 () Bool)

(declare-fun tp!1164005 () Bool)

(assert (=> b!3842238 (= e!2373909 (and (inv!54806 (c!669489 (dynLambda!17573 (toChars!8549 (transformation!6274 (rule!9112 (_1!23049 (v!38983 err!4249))))) (value!199443 (_1!23049 (v!38983 err!4249)))))) tp!1164005))))

(declare-fun result!269420 () Bool)

(assert (=> tb!221063 (= result!269420 (and (inv!54807 (dynLambda!17573 (toChars!8549 (transformation!6274 (rule!9112 (_1!23049 (v!38983 err!4249))))) (value!199443 (_1!23049 (v!38983 err!4249))))) e!2373909))))

(assert (= tb!221063 b!3842238))

(declare-fun m!4396591 () Bool)

(assert (=> b!3842238 m!4396591))

(declare-fun m!4396593 () Bool)

(assert (=> tb!221063 m!4396593))

(assert (=> b!3842236 t!310540))

(declare-fun b_and!286299 () Bool)

(assert (= b_and!286283 (and (=> t!310540 result!269420) b_and!286299)))

(declare-fun t!310542 () Bool)

(declare-fun tb!221065 () Bool)

(assert (=> (and b!3841742 (= (toChars!8549 (transformation!6274 (h!46079 rules!2768))) (toChars!8549 (transformation!6274 (rule!9112 (_1!23049 (v!38983 err!4249)))))) t!310542) tb!221065))

(declare-fun result!269422 () Bool)

(assert (= result!269422 result!269420))

(assert (=> b!3842236 t!310542))

(declare-fun b_and!286301 () Bool)

(assert (= b_and!286285 (and (=> t!310542 result!269422) b_and!286301)))

(declare-fun tb!221067 () Bool)

(declare-fun t!310544 () Bool)

(assert (=> (and b!3841738 (= (toChars!8549 (transformation!6274 (rule!9112 (h!46078 prefixTokens!80)))) (toChars!8549 (transformation!6274 (rule!9112 (_1!23049 (v!38983 err!4249)))))) t!310544) tb!221067))

(declare-fun result!269424 () Bool)

(assert (= result!269424 result!269420))

(assert (=> b!3842236 t!310544))

(declare-fun b_and!286303 () Bool)

(assert (= b_and!286287 (and (=> t!310544 result!269424) b_and!286303)))

(declare-fun t!310546 () Bool)

(declare-fun tb!221069 () Bool)

(assert (=> (and b!3841727 (= (toChars!8549 (transformation!6274 (rule!9112 (h!46078 suffixTokens!72)))) (toChars!8549 (transformation!6274 (rule!9112 (_1!23049 (v!38983 err!4249)))))) t!310546) tb!221069))

(declare-fun result!269426 () Bool)

(assert (= result!269426 result!269420))

(assert (=> b!3842236 t!310546))

(declare-fun b_and!286305 () Bool)

(assert (= b_and!286289 (and (=> t!310546 result!269426) b_and!286305)))

(declare-fun m!4396595 () Bool)

(assert (=> d!1139850 m!4396595))

(declare-fun m!4396597 () Bool)

(assert (=> b!3842236 m!4396597))

(assert (=> b!3842236 m!4396597))

(declare-fun m!4396599 () Bool)

(assert (=> b!3842236 m!4396599))

(declare-fun m!4396601 () Bool)

(assert (=> b!3842237 m!4396601))

(assert (=> b!3841723 d!1139850))

(declare-fun d!1139852 () Bool)

(assert (=> d!1139852 (= (inv!54799 (tag!7134 (rule!9112 (_1!23049 (v!38983 err!4249))))) (= (mod (str.len (value!199442 (tag!7134 (rule!9112 (_1!23049 (v!38983 err!4249)))))) 2) 0))))

(assert (=> b!3841745 d!1139852))

(declare-fun d!1139854 () Bool)

(declare-fun res!1555147 () Bool)

(declare-fun e!2373910 () Bool)

(assert (=> d!1139854 (=> (not res!1555147) (not e!2373910))))

(assert (=> d!1139854 (= res!1555147 (semiInverseModEq!2687 (toChars!8549 (transformation!6274 (rule!9112 (_1!23049 (v!38983 err!4249))))) (toValue!8690 (transformation!6274 (rule!9112 (_1!23049 (v!38983 err!4249)))))))))

(assert (=> d!1139854 (= (inv!54803 (transformation!6274 (rule!9112 (_1!23049 (v!38983 err!4249))))) e!2373910)))

(declare-fun b!3842239 () Bool)

(assert (=> b!3842239 (= e!2373910 (equivClasses!2586 (toChars!8549 (transformation!6274 (rule!9112 (_1!23049 (v!38983 err!4249))))) (toValue!8690 (transformation!6274 (rule!9112 (_1!23049 (v!38983 err!4249)))))))))

(assert (= (and d!1139854 res!1555147) b!3842239))

(declare-fun m!4396603 () Bool)

(assert (=> d!1139854 m!4396603))

(declare-fun m!4396605 () Bool)

(assert (=> b!3842239 m!4396605))

(assert (=> b!3841745 d!1139854))

(declare-fun d!1139856 () Bool)

(declare-fun res!1555148 () Bool)

(declare-fun e!2373911 () Bool)

(assert (=> d!1139856 (=> (not res!1555148) (not e!2373911))))

(assert (=> d!1139856 (= res!1555148 (not (isEmpty!24035 (originalCharacters!6874 (h!46078 prefixTokens!80)))))))

(assert (=> d!1139856 (= (inv!54802 (h!46078 prefixTokens!80)) e!2373911)))

(declare-fun b!3842240 () Bool)

(declare-fun res!1555149 () Bool)

(assert (=> b!3842240 (=> (not res!1555149) (not e!2373911))))

(assert (=> b!3842240 (= res!1555149 (= (originalCharacters!6874 (h!46078 prefixTokens!80)) (list!15138 (dynLambda!17573 (toChars!8549 (transformation!6274 (rule!9112 (h!46078 prefixTokens!80)))) (value!199443 (h!46078 prefixTokens!80))))))))

(declare-fun b!3842241 () Bool)

(assert (=> b!3842241 (= e!2373911 (= (size!30595 (h!46078 prefixTokens!80)) (size!30596 (originalCharacters!6874 (h!46078 prefixTokens!80)))))))

(assert (= (and d!1139856 res!1555148) b!3842240))

(assert (= (and b!3842240 res!1555149) b!3842241))

(declare-fun b_lambda!112313 () Bool)

(assert (=> (not b_lambda!112313) (not b!3842240)))

(declare-fun tb!221071 () Bool)

(declare-fun t!310548 () Bool)

(assert (=> (and b!3841736 (= (toChars!8549 (transformation!6274 (rule!9112 (_1!23049 (v!38983 err!4249))))) (toChars!8549 (transformation!6274 (rule!9112 (h!46078 prefixTokens!80))))) t!310548) tb!221071))

(declare-fun b!3842242 () Bool)

(declare-fun e!2373912 () Bool)

(declare-fun tp!1164006 () Bool)

(assert (=> b!3842242 (= e!2373912 (and (inv!54806 (c!669489 (dynLambda!17573 (toChars!8549 (transformation!6274 (rule!9112 (h!46078 prefixTokens!80)))) (value!199443 (h!46078 prefixTokens!80))))) tp!1164006))))

(declare-fun result!269428 () Bool)

(assert (=> tb!221071 (= result!269428 (and (inv!54807 (dynLambda!17573 (toChars!8549 (transformation!6274 (rule!9112 (h!46078 prefixTokens!80)))) (value!199443 (h!46078 prefixTokens!80)))) e!2373912))))

(assert (= tb!221071 b!3842242))

(declare-fun m!4396607 () Bool)

(assert (=> b!3842242 m!4396607))

(declare-fun m!4396609 () Bool)

(assert (=> tb!221071 m!4396609))

(assert (=> b!3842240 t!310548))

(declare-fun b_and!286307 () Bool)

(assert (= b_and!286299 (and (=> t!310548 result!269428) b_and!286307)))

(declare-fun t!310550 () Bool)

(declare-fun tb!221073 () Bool)

(assert (=> (and b!3841742 (= (toChars!8549 (transformation!6274 (h!46079 rules!2768))) (toChars!8549 (transformation!6274 (rule!9112 (h!46078 prefixTokens!80))))) t!310550) tb!221073))

(declare-fun result!269430 () Bool)

(assert (= result!269430 result!269428))

(assert (=> b!3842240 t!310550))

(declare-fun b_and!286309 () Bool)

(assert (= b_and!286301 (and (=> t!310550 result!269430) b_and!286309)))

(declare-fun t!310552 () Bool)

(declare-fun tb!221075 () Bool)

(assert (=> (and b!3841738 (= (toChars!8549 (transformation!6274 (rule!9112 (h!46078 prefixTokens!80)))) (toChars!8549 (transformation!6274 (rule!9112 (h!46078 prefixTokens!80))))) t!310552) tb!221075))

(declare-fun result!269432 () Bool)

(assert (= result!269432 result!269428))

(assert (=> b!3842240 t!310552))

(declare-fun b_and!286311 () Bool)

(assert (= b_and!286303 (and (=> t!310552 result!269432) b_and!286311)))

(declare-fun tb!221077 () Bool)

(declare-fun t!310554 () Bool)

(assert (=> (and b!3841727 (= (toChars!8549 (transformation!6274 (rule!9112 (h!46078 suffixTokens!72)))) (toChars!8549 (transformation!6274 (rule!9112 (h!46078 prefixTokens!80))))) t!310554) tb!221077))

(declare-fun result!269434 () Bool)

(assert (= result!269434 result!269428))

(assert (=> b!3842240 t!310554))

(declare-fun b_and!286313 () Bool)

(assert (= b_and!286305 (and (=> t!310554 result!269434) b_and!286313)))

(declare-fun m!4396611 () Bool)

(assert (=> d!1139856 m!4396611))

(declare-fun m!4396613 () Bool)

(assert (=> b!3842240 m!4396613))

(assert (=> b!3842240 m!4396613))

(declare-fun m!4396615 () Bool)

(assert (=> b!3842240 m!4396615))

(declare-fun m!4396617 () Bool)

(assert (=> b!3842241 m!4396617))

(assert (=> b!3841735 d!1139856))

(declare-fun d!1139858 () Bool)

(declare-fun c!669569 () Bool)

(assert (=> d!1139858 (= c!669569 ((_ is IntegerValue!19512) (value!199443 (_1!23049 (v!38983 err!4249)))))))

(declare-fun e!2373913 () Bool)

(assert (=> d!1139858 (= (inv!21 (value!199443 (_1!23049 (v!38983 err!4249)))) e!2373913)))

(declare-fun b!3842243 () Bool)

(assert (=> b!3842243 (= e!2373913 (inv!16 (value!199443 (_1!23049 (v!38983 err!4249)))))))

(declare-fun b!3842244 () Bool)

(declare-fun e!2373915 () Bool)

(assert (=> b!3842244 (= e!2373915 (inv!15 (value!199443 (_1!23049 (v!38983 err!4249)))))))

(declare-fun b!3842245 () Bool)

(declare-fun e!2373914 () Bool)

(assert (=> b!3842245 (= e!2373913 e!2373914)))

(declare-fun c!669570 () Bool)

(assert (=> b!3842245 (= c!669570 ((_ is IntegerValue!19513) (value!199443 (_1!23049 (v!38983 err!4249)))))))

(declare-fun b!3842246 () Bool)

(declare-fun res!1555150 () Bool)

(assert (=> b!3842246 (=> res!1555150 e!2373915)))

(assert (=> b!3842246 (= res!1555150 (not ((_ is IntegerValue!19514) (value!199443 (_1!23049 (v!38983 err!4249))))))))

(assert (=> b!3842246 (= e!2373914 e!2373915)))

(declare-fun b!3842247 () Bool)

(assert (=> b!3842247 (= e!2373914 (inv!17 (value!199443 (_1!23049 (v!38983 err!4249)))))))

(assert (= (and d!1139858 c!669569) b!3842243))

(assert (= (and d!1139858 (not c!669569)) b!3842245))

(assert (= (and b!3842245 c!669570) b!3842247))

(assert (= (and b!3842245 (not c!669570)) b!3842246))

(assert (= (and b!3842246 (not res!1555150)) b!3842244))

(declare-fun m!4396619 () Bool)

(assert (=> b!3842243 m!4396619))

(declare-fun m!4396621 () Bool)

(assert (=> b!3842244 m!4396621))

(declare-fun m!4396623 () Bool)

(assert (=> b!3842247 m!4396623))

(assert (=> b!3841737 d!1139858))

(declare-fun d!1139860 () Bool)

(declare-fun res!1555151 () Bool)

(declare-fun e!2373916 () Bool)

(assert (=> d!1139860 (=> (not res!1555151) (not e!2373916))))

(assert (=> d!1139860 (= res!1555151 (not (isEmpty!24035 (originalCharacters!6874 (h!46078 suffixTokens!72)))))))

(assert (=> d!1139860 (= (inv!54802 (h!46078 suffixTokens!72)) e!2373916)))

(declare-fun b!3842248 () Bool)

(declare-fun res!1555152 () Bool)

(assert (=> b!3842248 (=> (not res!1555152) (not e!2373916))))

(assert (=> b!3842248 (= res!1555152 (= (originalCharacters!6874 (h!46078 suffixTokens!72)) (list!15138 (dynLambda!17573 (toChars!8549 (transformation!6274 (rule!9112 (h!46078 suffixTokens!72)))) (value!199443 (h!46078 suffixTokens!72))))))))

(declare-fun b!3842249 () Bool)

(assert (=> b!3842249 (= e!2373916 (= (size!30595 (h!46078 suffixTokens!72)) (size!30596 (originalCharacters!6874 (h!46078 suffixTokens!72)))))))

(assert (= (and d!1139860 res!1555151) b!3842248))

(assert (= (and b!3842248 res!1555152) b!3842249))

(declare-fun b_lambda!112315 () Bool)

(assert (=> (not b_lambda!112315) (not b!3842248)))

(declare-fun t!310556 () Bool)

(declare-fun tb!221079 () Bool)

(assert (=> (and b!3841736 (= (toChars!8549 (transformation!6274 (rule!9112 (_1!23049 (v!38983 err!4249))))) (toChars!8549 (transformation!6274 (rule!9112 (h!46078 suffixTokens!72))))) t!310556) tb!221079))

(declare-fun b!3842250 () Bool)

(declare-fun e!2373917 () Bool)

(declare-fun tp!1164007 () Bool)

(assert (=> b!3842250 (= e!2373917 (and (inv!54806 (c!669489 (dynLambda!17573 (toChars!8549 (transformation!6274 (rule!9112 (h!46078 suffixTokens!72)))) (value!199443 (h!46078 suffixTokens!72))))) tp!1164007))))

(declare-fun result!269436 () Bool)

(assert (=> tb!221079 (= result!269436 (and (inv!54807 (dynLambda!17573 (toChars!8549 (transformation!6274 (rule!9112 (h!46078 suffixTokens!72)))) (value!199443 (h!46078 suffixTokens!72)))) e!2373917))))

(assert (= tb!221079 b!3842250))

(declare-fun m!4396625 () Bool)

(assert (=> b!3842250 m!4396625))

(declare-fun m!4396627 () Bool)

(assert (=> tb!221079 m!4396627))

(assert (=> b!3842248 t!310556))

(declare-fun b_and!286315 () Bool)

(assert (= b_and!286307 (and (=> t!310556 result!269436) b_and!286315)))

(declare-fun tb!221081 () Bool)

(declare-fun t!310558 () Bool)

(assert (=> (and b!3841742 (= (toChars!8549 (transformation!6274 (h!46079 rules!2768))) (toChars!8549 (transformation!6274 (rule!9112 (h!46078 suffixTokens!72))))) t!310558) tb!221081))

(declare-fun result!269438 () Bool)

(assert (= result!269438 result!269436))

(assert (=> b!3842248 t!310558))

(declare-fun b_and!286317 () Bool)

(assert (= b_and!286309 (and (=> t!310558 result!269438) b_and!286317)))

(declare-fun tb!221083 () Bool)

(declare-fun t!310560 () Bool)

(assert (=> (and b!3841738 (= (toChars!8549 (transformation!6274 (rule!9112 (h!46078 prefixTokens!80)))) (toChars!8549 (transformation!6274 (rule!9112 (h!46078 suffixTokens!72))))) t!310560) tb!221083))

(declare-fun result!269440 () Bool)

(assert (= result!269440 result!269436))

(assert (=> b!3842248 t!310560))

(declare-fun b_and!286319 () Bool)

(assert (= b_and!286311 (and (=> t!310560 result!269440) b_and!286319)))

(declare-fun t!310562 () Bool)

(declare-fun tb!221085 () Bool)

(assert (=> (and b!3841727 (= (toChars!8549 (transformation!6274 (rule!9112 (h!46078 suffixTokens!72)))) (toChars!8549 (transformation!6274 (rule!9112 (h!46078 suffixTokens!72))))) t!310562) tb!221085))

(declare-fun result!269442 () Bool)

(assert (= result!269442 result!269436))

(assert (=> b!3842248 t!310562))

(declare-fun b_and!286321 () Bool)

(assert (= b_and!286313 (and (=> t!310562 result!269442) b_and!286321)))

(declare-fun m!4396629 () Bool)

(assert (=> d!1139860 m!4396629))

(declare-fun m!4396631 () Bool)

(assert (=> b!3842248 m!4396631))

(assert (=> b!3842248 m!4396631))

(declare-fun m!4396633 () Bool)

(assert (=> b!3842248 m!4396633))

(declare-fun m!4396635 () Bool)

(assert (=> b!3842249 m!4396635))

(assert (=> b!3841718 d!1139860))

(declare-fun d!1139862 () Bool)

(declare-fun lt!1333683 () Int)

(assert (=> d!1139862 (>= lt!1333683 0)))

(declare-fun e!2373918 () Int)

(assert (=> d!1139862 (= lt!1333683 e!2373918)))

(declare-fun c!669571 () Bool)

(assert (=> d!1139862 (= c!669571 ((_ is Nil!40657) (originalCharacters!6874 (_1!23049 (v!38983 lt!1333491)))))))

(assert (=> d!1139862 (= (size!30596 (originalCharacters!6874 (_1!23049 (v!38983 lt!1333491)))) lt!1333683)))

(declare-fun b!3842251 () Bool)

(assert (=> b!3842251 (= e!2373918 0)))

(declare-fun b!3842252 () Bool)

(assert (=> b!3842252 (= e!2373918 (+ 1 (size!30596 (t!310450 (originalCharacters!6874 (_1!23049 (v!38983 lt!1333491)))))))))

(assert (= (and d!1139862 c!669571) b!3842251))

(assert (= (and d!1139862 (not c!669571)) b!3842252))

(declare-fun m!4396637 () Bool)

(assert (=> b!3842252 m!4396637))

(assert (=> b!3841739 d!1139862))

(declare-fun b!3842253 () Bool)

(declare-fun e!2373919 () List!40782)

(assert (=> b!3842253 (= e!2373919 (_1!23050 lt!1333504))))

(declare-fun lt!1333684 () List!40782)

(declare-fun e!2373920 () Bool)

(declare-fun b!3842256 () Bool)

(assert (=> b!3842256 (= e!2373920 (or (not (= (_1!23050 lt!1333504) Nil!40658)) (= lt!1333684 lt!1333503)))))

(declare-fun b!3842254 () Bool)

(assert (=> b!3842254 (= e!2373919 (Cons!40658 (h!46078 lt!1333503) (++!10306 (t!310451 lt!1333503) (_1!23050 lt!1333504))))))

(declare-fun b!3842255 () Bool)

(declare-fun res!1555153 () Bool)

(assert (=> b!3842255 (=> (not res!1555153) (not e!2373920))))

(assert (=> b!3842255 (= res!1555153 (= (size!30599 lt!1333684) (+ (size!30599 lt!1333503) (size!30599 (_1!23050 lt!1333504)))))))

(declare-fun d!1139864 () Bool)

(assert (=> d!1139864 e!2373920))

(declare-fun res!1555154 () Bool)

(assert (=> d!1139864 (=> (not res!1555154) (not e!2373920))))

(assert (=> d!1139864 (= res!1555154 (= (content!6038 lt!1333684) ((_ map or) (content!6038 lt!1333503) (content!6038 (_1!23050 lt!1333504)))))))

(assert (=> d!1139864 (= lt!1333684 e!2373919)))

(declare-fun c!669572 () Bool)

(assert (=> d!1139864 (= c!669572 ((_ is Nil!40658) lt!1333503))))

(assert (=> d!1139864 (= (++!10306 lt!1333503 (_1!23050 lt!1333504)) lt!1333684)))

(assert (= (and d!1139864 c!669572) b!3842253))

(assert (= (and d!1139864 (not c!669572)) b!3842254))

(assert (= (and d!1139864 res!1555154) b!3842255))

(assert (= (and b!3842255 res!1555153) b!3842256))

(declare-fun m!4396639 () Bool)

(assert (=> b!3842254 m!4396639))

(declare-fun m!4396641 () Bool)

(assert (=> b!3842255 m!4396641))

(declare-fun m!4396643 () Bool)

(assert (=> b!3842255 m!4396643))

(declare-fun m!4396645 () Bool)

(assert (=> b!3842255 m!4396645))

(declare-fun m!4396647 () Bool)

(assert (=> d!1139864 m!4396647))

(declare-fun m!4396649 () Bool)

(assert (=> d!1139864 m!4396649))

(declare-fun m!4396651 () Bool)

(assert (=> d!1139864 m!4396651))

(assert (=> b!3841740 d!1139864))

(declare-fun b!3842257 () Bool)

(declare-fun e!2373922 () Bool)

(declare-fun lt!1333687 () tuple2!39832)

(assert (=> b!3842257 (= e!2373922 (= (_2!23050 lt!1333687) suffix!1176))))

(declare-fun b!3842258 () Bool)

(declare-fun e!2373923 () tuple2!39832)

(assert (=> b!3842258 (= e!2373923 (tuple2!39833 Nil!40658 suffix!1176))))

(declare-fun b!3842259 () Bool)

(declare-fun lt!1333686 () Option!8692)

(declare-fun lt!1333685 () tuple2!39832)

(assert (=> b!3842259 (= e!2373923 (tuple2!39833 (Cons!40658 (_1!23049 (v!38983 lt!1333686)) (_1!23050 lt!1333685)) (_2!23050 lt!1333685)))))

(assert (=> b!3842259 (= lt!1333685 (lexList!1631 thiss!20629 rules!2768 (_2!23049 (v!38983 lt!1333686))))))

(declare-fun d!1139866 () Bool)

(assert (=> d!1139866 e!2373922))

(declare-fun c!669574 () Bool)

(assert (=> d!1139866 (= c!669574 (> (size!30599 (_1!23050 lt!1333687)) 0))))

(assert (=> d!1139866 (= lt!1333687 e!2373923)))

(declare-fun c!669573 () Bool)

(assert (=> d!1139866 (= c!669573 ((_ is Some!8691) lt!1333686))))

(assert (=> d!1139866 (= lt!1333686 (maxPrefix!3167 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1139866 (= (lexList!1631 thiss!20629 rules!2768 suffix!1176) lt!1333687)))

(declare-fun b!3842260 () Bool)

(declare-fun e!2373921 () Bool)

(assert (=> b!3842260 (= e!2373921 (not (isEmpty!24034 (_1!23050 lt!1333687))))))

(declare-fun b!3842261 () Bool)

(assert (=> b!3842261 (= e!2373922 e!2373921)))

(declare-fun res!1555155 () Bool)

(assert (=> b!3842261 (= res!1555155 (< (size!30596 (_2!23050 lt!1333687)) (size!30596 suffix!1176)))))

(assert (=> b!3842261 (=> (not res!1555155) (not e!2373921))))

(assert (= (and d!1139866 c!669573) b!3842259))

(assert (= (and d!1139866 (not c!669573)) b!3842258))

(assert (= (and d!1139866 c!669574) b!3842261))

(assert (= (and d!1139866 (not c!669574)) b!3842257))

(assert (= (and b!3842261 res!1555155) b!3842260))

(declare-fun m!4396653 () Bool)

(assert (=> b!3842259 m!4396653))

(declare-fun m!4396655 () Bool)

(assert (=> d!1139866 m!4396655))

(declare-fun m!4396657 () Bool)

(assert (=> d!1139866 m!4396657))

(declare-fun m!4396659 () Bool)

(assert (=> b!3842260 m!4396659))

(declare-fun m!4396661 () Bool)

(assert (=> b!3842261 m!4396661))

(assert (=> b!3842261 m!4396005))

(assert (=> b!3841752 d!1139866))

(declare-fun d!1139868 () Bool)

(assert (=> d!1139868 (= (inv!54799 (tag!7134 (rule!9112 (h!46078 prefixTokens!80)))) (= (mod (str.len (value!199442 (tag!7134 (rule!9112 (h!46078 prefixTokens!80))))) 2) 0))))

(assert (=> b!3841731 d!1139868))

(declare-fun d!1139870 () Bool)

(declare-fun res!1555156 () Bool)

(declare-fun e!2373924 () Bool)

(assert (=> d!1139870 (=> (not res!1555156) (not e!2373924))))

(assert (=> d!1139870 (= res!1555156 (semiInverseModEq!2687 (toChars!8549 (transformation!6274 (rule!9112 (h!46078 prefixTokens!80)))) (toValue!8690 (transformation!6274 (rule!9112 (h!46078 prefixTokens!80))))))))

(assert (=> d!1139870 (= (inv!54803 (transformation!6274 (rule!9112 (h!46078 prefixTokens!80)))) e!2373924)))

(declare-fun b!3842262 () Bool)

(assert (=> b!3842262 (= e!2373924 (equivClasses!2586 (toChars!8549 (transformation!6274 (rule!9112 (h!46078 prefixTokens!80)))) (toValue!8690 (transformation!6274 (rule!9112 (h!46078 prefixTokens!80))))))))

(assert (= (and d!1139870 res!1555156) b!3842262))

(declare-fun m!4396663 () Bool)

(assert (=> d!1139870 m!4396663))

(declare-fun m!4396665 () Bool)

(assert (=> b!3842262 m!4396665))

(assert (=> b!3841731 d!1139870))

(declare-fun d!1139872 () Bool)

(assert (=> d!1139872 (and (= lt!1333488 prefix!426) (= (_2!23049 (v!38983 lt!1333491)) suffix!1176))))

(declare-fun lt!1333690 () Unit!58358)

(declare-fun choose!22592 (List!40781 List!40781 List!40781 List!40781) Unit!58358)

(assert (=> d!1139872 (= lt!1333690 (choose!22592 lt!1333488 (_2!23049 (v!38983 lt!1333491)) prefix!426 suffix!1176))))

(assert (=> d!1139872 (= (++!10305 lt!1333488 (_2!23049 (v!38983 lt!1333491))) (++!10305 prefix!426 suffix!1176))))

(assert (=> d!1139872 (= (lemmaConcatSameAndSameSizesThenSameLists!402 lt!1333488 (_2!23049 (v!38983 lt!1333491)) prefix!426 suffix!1176) lt!1333690)))

(declare-fun bs!582636 () Bool)

(assert (= bs!582636 d!1139872))

(declare-fun m!4396667 () Bool)

(assert (=> bs!582636 m!4396667))

(assert (=> bs!582636 m!4395865))

(assert (=> bs!582636 m!4395915))

(assert (=> b!3841753 d!1139872))

(declare-fun d!1139874 () Bool)

(assert (=> d!1139874 (= (inv!54799 (tag!7134 (h!46079 rules!2768))) (= (mod (str.len (value!199442 (tag!7134 (h!46079 rules!2768)))) 2) 0))))

(assert (=> b!3841734 d!1139874))

(declare-fun d!1139876 () Bool)

(declare-fun res!1555157 () Bool)

(declare-fun e!2373925 () Bool)

(assert (=> d!1139876 (=> (not res!1555157) (not e!2373925))))

(assert (=> d!1139876 (= res!1555157 (semiInverseModEq!2687 (toChars!8549 (transformation!6274 (h!46079 rules!2768))) (toValue!8690 (transformation!6274 (h!46079 rules!2768)))))))

(assert (=> d!1139876 (= (inv!54803 (transformation!6274 (h!46079 rules!2768))) e!2373925)))

(declare-fun b!3842263 () Bool)

(assert (=> b!3842263 (= e!2373925 (equivClasses!2586 (toChars!8549 (transformation!6274 (h!46079 rules!2768))) (toValue!8690 (transformation!6274 (h!46079 rules!2768)))))))

(assert (= (and d!1139876 res!1555157) b!3842263))

(declare-fun m!4396669 () Bool)

(assert (=> d!1139876 m!4396669))

(declare-fun m!4396671 () Bool)

(assert (=> b!3842263 m!4396671))

(assert (=> b!3841734 d!1139876))

(declare-fun b!3842282 () Bool)

(declare-fun e!2373936 () Option!8692)

(assert (=> b!3842282 (= e!2373936 None!8691)))

(declare-fun d!1139878 () Bool)

(declare-fun e!2373934 () Bool)

(assert (=> d!1139878 e!2373934))

(declare-fun res!1555173 () Bool)

(assert (=> d!1139878 (=> res!1555173 e!2373934)))

(declare-fun lt!1333702 () Option!8692)

(assert (=> d!1139878 (= res!1555173 (isEmpty!24038 lt!1333702))))

(assert (=> d!1139878 (= lt!1333702 e!2373936)))

(declare-fun c!669577 () Bool)

(declare-datatypes ((tuple2!39836 0))(
  ( (tuple2!39837 (_1!23052 List!40781) (_2!23052 List!40781)) )
))
(declare-fun lt!1333704 () tuple2!39836)

(assert (=> d!1139878 (= c!669577 (isEmpty!24035 (_1!23052 lt!1333704)))))

(declare-fun findLongestMatch!1067 (Regex!11179 List!40781) tuple2!39836)

(assert (=> d!1139878 (= lt!1333704 (findLongestMatch!1067 (regex!6274 (h!46079 rules!2768)) lt!1333496))))

(assert (=> d!1139878 (ruleValid!2226 thiss!20629 (h!46079 rules!2768))))

(assert (=> d!1139878 (= (maxPrefixOneRule!2251 thiss!20629 (h!46079 rules!2768) lt!1333496) lt!1333702)))

(declare-fun b!3842283 () Bool)

(declare-fun e!2373935 () Bool)

(declare-fun findLongestMatchInner!1154 (Regex!11179 List!40781 Int List!40781 List!40781 Int) tuple2!39836)

(assert (=> b!3842283 (= e!2373935 (matchR!5338 (regex!6274 (h!46079 rules!2768)) (_1!23052 (findLongestMatchInner!1154 (regex!6274 (h!46079 rules!2768)) Nil!40657 (size!30596 Nil!40657) lt!1333496 lt!1333496 (size!30596 lt!1333496)))))))

(declare-fun b!3842284 () Bool)

(declare-fun size!30600 (BalanceConc!24564) Int)

(assert (=> b!3842284 (= e!2373936 (Some!8691 (tuple2!39831 (Token!11687 (apply!9517 (transformation!6274 (h!46079 rules!2768)) (seqFromList!4545 (_1!23052 lt!1333704))) (h!46079 rules!2768) (size!30600 (seqFromList!4545 (_1!23052 lt!1333704))) (_1!23052 lt!1333704)) (_2!23052 lt!1333704))))))

(declare-fun lt!1333703 () Unit!58358)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1127 (Regex!11179 List!40781) Unit!58358)

(assert (=> b!3842284 (= lt!1333703 (longestMatchIsAcceptedByMatchOrIsEmpty!1127 (regex!6274 (h!46079 rules!2768)) lt!1333496))))

(declare-fun res!1555175 () Bool)

(assert (=> b!3842284 (= res!1555175 (isEmpty!24035 (_1!23052 (findLongestMatchInner!1154 (regex!6274 (h!46079 rules!2768)) Nil!40657 (size!30596 Nil!40657) lt!1333496 lt!1333496 (size!30596 lt!1333496)))))))

(assert (=> b!3842284 (=> res!1555175 e!2373935)))

(assert (=> b!3842284 e!2373935))

(declare-fun lt!1333701 () Unit!58358)

(assert (=> b!3842284 (= lt!1333701 lt!1333703)))

(declare-fun lt!1333705 () Unit!58358)

(declare-fun lemmaSemiInverse!1658 (TokenValueInjection!12436 BalanceConc!24564) Unit!58358)

(assert (=> b!3842284 (= lt!1333705 (lemmaSemiInverse!1658 (transformation!6274 (h!46079 rules!2768)) (seqFromList!4545 (_1!23052 lt!1333704))))))

(declare-fun b!3842285 () Bool)

(declare-fun e!2373937 () Bool)

(assert (=> b!3842285 (= e!2373937 (= (size!30595 (_1!23049 (get!13463 lt!1333702))) (size!30596 (originalCharacters!6874 (_1!23049 (get!13463 lt!1333702))))))))

(declare-fun b!3842286 () Bool)

(declare-fun res!1555176 () Bool)

(assert (=> b!3842286 (=> (not res!1555176) (not e!2373937))))

(assert (=> b!3842286 (= res!1555176 (= (value!199443 (_1!23049 (get!13463 lt!1333702))) (apply!9517 (transformation!6274 (rule!9112 (_1!23049 (get!13463 lt!1333702)))) (seqFromList!4545 (originalCharacters!6874 (_1!23049 (get!13463 lt!1333702)))))))))

(declare-fun b!3842287 () Bool)

(assert (=> b!3842287 (= e!2373934 e!2373937)))

(declare-fun res!1555174 () Bool)

(assert (=> b!3842287 (=> (not res!1555174) (not e!2373937))))

(assert (=> b!3842287 (= res!1555174 (matchR!5338 (regex!6274 (h!46079 rules!2768)) (list!15138 (charsOf!4102 (_1!23049 (get!13463 lt!1333702))))))))

(declare-fun b!3842288 () Bool)

(declare-fun res!1555178 () Bool)

(assert (=> b!3842288 (=> (not res!1555178) (not e!2373937))))

(assert (=> b!3842288 (= res!1555178 (< (size!30596 (_2!23049 (get!13463 lt!1333702))) (size!30596 lt!1333496)))))

(declare-fun b!3842289 () Bool)

(declare-fun res!1555177 () Bool)

(assert (=> b!3842289 (=> (not res!1555177) (not e!2373937))))

(assert (=> b!3842289 (= res!1555177 (= (++!10305 (list!15138 (charsOf!4102 (_1!23049 (get!13463 lt!1333702)))) (_2!23049 (get!13463 lt!1333702))) lt!1333496))))

(declare-fun b!3842290 () Bool)

(declare-fun res!1555172 () Bool)

(assert (=> b!3842290 (=> (not res!1555172) (not e!2373937))))

(assert (=> b!3842290 (= res!1555172 (= (rule!9112 (_1!23049 (get!13463 lt!1333702))) (h!46079 rules!2768)))))

(assert (= (and d!1139878 c!669577) b!3842282))

(assert (= (and d!1139878 (not c!669577)) b!3842284))

(assert (= (and b!3842284 (not res!1555175)) b!3842283))

(assert (= (and d!1139878 (not res!1555173)) b!3842287))

(assert (= (and b!3842287 res!1555174) b!3842289))

(assert (= (and b!3842289 res!1555177) b!3842288))

(assert (= (and b!3842288 res!1555178) b!3842290))

(assert (= (and b!3842290 res!1555172) b!3842286))

(assert (= (and b!3842286 res!1555176) b!3842285))

(declare-fun m!4396673 () Bool)

(assert (=> b!3842285 m!4396673))

(declare-fun m!4396675 () Bool)

(assert (=> b!3842285 m!4396675))

(assert (=> b!3842289 m!4396673))

(declare-fun m!4396677 () Bool)

(assert (=> b!3842289 m!4396677))

(assert (=> b!3842289 m!4396677))

(declare-fun m!4396679 () Bool)

(assert (=> b!3842289 m!4396679))

(assert (=> b!3842289 m!4396679))

(declare-fun m!4396681 () Bool)

(assert (=> b!3842289 m!4396681))

(assert (=> b!3842286 m!4396673))

(declare-fun m!4396683 () Bool)

(assert (=> b!3842286 m!4396683))

(assert (=> b!3842286 m!4396683))

(declare-fun m!4396685 () Bool)

(assert (=> b!3842286 m!4396685))

(declare-fun m!4396687 () Bool)

(assert (=> b!3842284 m!4396687))

(declare-fun m!4396689 () Bool)

(assert (=> b!3842284 m!4396689))

(assert (=> b!3842284 m!4395977))

(assert (=> b!3842284 m!4396687))

(declare-fun m!4396691 () Bool)

(assert (=> b!3842284 m!4396691))

(assert (=> b!3842284 m!4396473))

(assert (=> b!3842284 m!4396473))

(assert (=> b!3842284 m!4395977))

(declare-fun m!4396693 () Bool)

(assert (=> b!3842284 m!4396693))

(declare-fun m!4396695 () Bool)

(assert (=> b!3842284 m!4396695))

(assert (=> b!3842284 m!4396687))

(declare-fun m!4396697 () Bool)

(assert (=> b!3842284 m!4396697))

(assert (=> b!3842284 m!4396687))

(declare-fun m!4396699 () Bool)

(assert (=> b!3842284 m!4396699))

(declare-fun m!4396701 () Bool)

(assert (=> d!1139878 m!4396701))

(declare-fun m!4396703 () Bool)

(assert (=> d!1139878 m!4396703))

(declare-fun m!4396705 () Bool)

(assert (=> d!1139878 m!4396705))

(assert (=> d!1139878 m!4396431))

(assert (=> b!3842290 m!4396673))

(assert (=> b!3842288 m!4396673))

(declare-fun m!4396707 () Bool)

(assert (=> b!3842288 m!4396707))

(assert (=> b!3842288 m!4395977))

(assert (=> b!3842283 m!4396473))

(assert (=> b!3842283 m!4395977))

(assert (=> b!3842283 m!4396473))

(assert (=> b!3842283 m!4395977))

(assert (=> b!3842283 m!4396693))

(declare-fun m!4396709 () Bool)

(assert (=> b!3842283 m!4396709))

(assert (=> b!3842287 m!4396673))

(assert (=> b!3842287 m!4396677))

(assert (=> b!3842287 m!4396677))

(assert (=> b!3842287 m!4396679))

(assert (=> b!3842287 m!4396679))

(declare-fun m!4396711 () Bool)

(assert (=> b!3842287 m!4396711))

(assert (=> bm!281967 d!1139878))

(declare-fun b!3842301 () Bool)

(declare-fun b_free!102565 () Bool)

(declare-fun b_next!103269 () Bool)

(assert (=> b!3842301 (= b_free!102565 (not b_next!103269))))

(declare-fun tb!221087 () Bool)

(declare-fun t!310564 () Bool)

(assert (=> (and b!3842301 (= (toValue!8690 (transformation!6274 (h!46079 (t!310452 rules!2768)))) (toValue!8690 (transformation!6274 (rule!9112 (_1!23049 (v!38983 lt!1333491)))))) t!310564) tb!221087))

(declare-fun result!269446 () Bool)

(assert (= result!269446 result!269410))

(assert (=> d!1139840 t!310564))

(declare-fun tp!1164016 () Bool)

(declare-fun b_and!286323 () Bool)

(assert (=> b!3842301 (= tp!1164016 (and (=> t!310564 result!269446) b_and!286323))))

(declare-fun b_free!102567 () Bool)

(declare-fun b_next!103271 () Bool)

(assert (=> b!3842301 (= b_free!102567 (not b_next!103271))))

(declare-fun t!310566 () Bool)

(declare-fun tb!221089 () Bool)

(assert (=> (and b!3842301 (= (toChars!8549 (transformation!6274 (h!46079 (t!310452 rules!2768)))) (toChars!8549 (transformation!6274 (rule!9112 (_1!23049 (v!38983 lt!1333491)))))) t!310566) tb!221089))

(declare-fun result!269448 () Bool)

(assert (= result!269448 result!269400))

(assert (=> d!1139834 t!310566))

(declare-fun tb!221091 () Bool)

(declare-fun t!310568 () Bool)

(assert (=> (and b!3842301 (= (toChars!8549 (transformation!6274 (h!46079 (t!310452 rules!2768)))) (toChars!8549 (transformation!6274 (rule!9112 (_1!23049 (v!38983 err!4249)))))) t!310568) tb!221091))

(declare-fun result!269450 () Bool)

(assert (= result!269450 result!269420))

(assert (=> b!3842236 t!310568))

(declare-fun tb!221093 () Bool)

(declare-fun t!310570 () Bool)

(assert (=> (and b!3842301 (= (toChars!8549 (transformation!6274 (h!46079 (t!310452 rules!2768)))) (toChars!8549 (transformation!6274 (rule!9112 (h!46078 prefixTokens!80))))) t!310570) tb!221093))

(declare-fun result!269452 () Bool)

(assert (= result!269452 result!269428))

(assert (=> b!3842240 t!310570))

(declare-fun tb!221095 () Bool)

(declare-fun t!310572 () Bool)

(assert (=> (and b!3842301 (= (toChars!8549 (transformation!6274 (h!46079 (t!310452 rules!2768)))) (toChars!8549 (transformation!6274 (rule!9112 (h!46078 suffixTokens!72))))) t!310572) tb!221095))

(declare-fun result!269454 () Bool)

(assert (= result!269454 result!269436))

(assert (=> b!3842248 t!310572))

(declare-fun b_and!286325 () Bool)

(declare-fun tp!1164017 () Bool)

(assert (=> b!3842301 (= tp!1164017 (and (=> t!310566 result!269448) (=> t!310568 result!269450) (=> t!310570 result!269452) (=> t!310572 result!269454) b_and!286325))))

(declare-fun e!2373948 () Bool)

(assert (=> b!3842301 (= e!2373948 (and tp!1164016 tp!1164017))))

(declare-fun tp!1164019 () Bool)

(declare-fun e!2373949 () Bool)

(declare-fun b!3842300 () Bool)

(assert (=> b!3842300 (= e!2373949 (and tp!1164019 (inv!54799 (tag!7134 (h!46079 (t!310452 rules!2768)))) (inv!54803 (transformation!6274 (h!46079 (t!310452 rules!2768)))) e!2373948))))

(declare-fun b!3842299 () Bool)

(declare-fun e!2373947 () Bool)

(declare-fun tp!1164018 () Bool)

(assert (=> b!3842299 (= e!2373947 (and e!2373949 tp!1164018))))

(assert (=> b!3841746 (= tp!1163910 e!2373947)))

(assert (= b!3842300 b!3842301))

(assert (= b!3842299 b!3842300))

(assert (= (and b!3841746 ((_ is Cons!40659) (t!310452 rules!2768))) b!3842299))

(declare-fun m!4396713 () Bool)

(assert (=> b!3842300 m!4396713))

(declare-fun m!4396715 () Bool)

(assert (=> b!3842300 m!4396715))

(declare-fun b!3842315 () Bool)

(declare-fun b_free!102569 () Bool)

(declare-fun b_next!103273 () Bool)

(assert (=> b!3842315 (= b_free!102569 (not b_next!103273))))

(declare-fun t!310574 () Bool)

(declare-fun tb!221097 () Bool)

(assert (=> (and b!3842315 (= (toValue!8690 (transformation!6274 (rule!9112 (h!46078 (t!310451 prefixTokens!80))))) (toValue!8690 (transformation!6274 (rule!9112 (_1!23049 (v!38983 lt!1333491)))))) t!310574) tb!221097))

(declare-fun result!269458 () Bool)

(assert (= result!269458 result!269410))

(assert (=> d!1139840 t!310574))

(declare-fun tp!1164032 () Bool)

(declare-fun b_and!286327 () Bool)

(assert (=> b!3842315 (= tp!1164032 (and (=> t!310574 result!269458) b_and!286327))))

(declare-fun b_free!102571 () Bool)

(declare-fun b_next!103275 () Bool)

(assert (=> b!3842315 (= b_free!102571 (not b_next!103275))))

(declare-fun t!310576 () Bool)

(declare-fun tb!221099 () Bool)

(assert (=> (and b!3842315 (= (toChars!8549 (transformation!6274 (rule!9112 (h!46078 (t!310451 prefixTokens!80))))) (toChars!8549 (transformation!6274 (rule!9112 (_1!23049 (v!38983 lt!1333491)))))) t!310576) tb!221099))

(declare-fun result!269460 () Bool)

(assert (= result!269460 result!269400))

(assert (=> d!1139834 t!310576))

(declare-fun tb!221101 () Bool)

(declare-fun t!310578 () Bool)

(assert (=> (and b!3842315 (= (toChars!8549 (transformation!6274 (rule!9112 (h!46078 (t!310451 prefixTokens!80))))) (toChars!8549 (transformation!6274 (rule!9112 (_1!23049 (v!38983 err!4249)))))) t!310578) tb!221101))

(declare-fun result!269462 () Bool)

(assert (= result!269462 result!269420))

(assert (=> b!3842236 t!310578))

(declare-fun t!310580 () Bool)

(declare-fun tb!221103 () Bool)

(assert (=> (and b!3842315 (= (toChars!8549 (transformation!6274 (rule!9112 (h!46078 (t!310451 prefixTokens!80))))) (toChars!8549 (transformation!6274 (rule!9112 (h!46078 prefixTokens!80))))) t!310580) tb!221103))

(declare-fun result!269464 () Bool)

(assert (= result!269464 result!269428))

(assert (=> b!3842240 t!310580))

(declare-fun tb!221105 () Bool)

(declare-fun t!310582 () Bool)

(assert (=> (and b!3842315 (= (toChars!8549 (transformation!6274 (rule!9112 (h!46078 (t!310451 prefixTokens!80))))) (toChars!8549 (transformation!6274 (rule!9112 (h!46078 suffixTokens!72))))) t!310582) tb!221105))

(declare-fun result!269466 () Bool)

(assert (= result!269466 result!269436))

(assert (=> b!3842248 t!310582))

(declare-fun b_and!286329 () Bool)

(declare-fun tp!1164031 () Bool)

(assert (=> b!3842315 (= tp!1164031 (and (=> t!310576 result!269460) (=> t!310578 result!269462) (=> t!310580 result!269464) (=> t!310582 result!269466) b_and!286329))))

(declare-fun e!2373964 () Bool)

(declare-fun b!3842313 () Bool)

(declare-fun tp!1164033 () Bool)

(declare-fun e!2373962 () Bool)

(assert (=> b!3842313 (= e!2373962 (and (inv!21 (value!199443 (h!46078 (t!310451 prefixTokens!80)))) e!2373964 tp!1164033))))

(declare-fun e!2373966 () Bool)

(assert (=> b!3842315 (= e!2373966 (and tp!1164032 tp!1164031))))

(declare-fun e!2373963 () Bool)

(assert (=> b!3841735 (= tp!1163921 e!2373963)))

(declare-fun tp!1164030 () Bool)

(declare-fun b!3842314 () Bool)

(assert (=> b!3842314 (= e!2373964 (and tp!1164030 (inv!54799 (tag!7134 (rule!9112 (h!46078 (t!310451 prefixTokens!80))))) (inv!54803 (transformation!6274 (rule!9112 (h!46078 (t!310451 prefixTokens!80))))) e!2373966))))

(declare-fun b!3842312 () Bool)

(declare-fun tp!1164034 () Bool)

(assert (=> b!3842312 (= e!2373963 (and (inv!54802 (h!46078 (t!310451 prefixTokens!80))) e!2373962 tp!1164034))))

(assert (= b!3842314 b!3842315))

(assert (= b!3842313 b!3842314))

(assert (= b!3842312 b!3842313))

(assert (= (and b!3841735 ((_ is Cons!40658) (t!310451 prefixTokens!80))) b!3842312))

(declare-fun m!4396717 () Bool)

(assert (=> b!3842313 m!4396717))

(declare-fun m!4396719 () Bool)

(assert (=> b!3842314 m!4396719))

(declare-fun m!4396721 () Bool)

(assert (=> b!3842314 m!4396721))

(declare-fun m!4396723 () Bool)

(assert (=> b!3842312 m!4396723))

(declare-fun b!3842320 () Bool)

(declare-fun e!2373970 () Bool)

(declare-fun tp!1164037 () Bool)

(assert (=> b!3842320 (= e!2373970 (and tp_is_empty!19329 tp!1164037))))

(assert (=> b!3841725 (= tp!1163903 e!2373970)))

(assert (= (and b!3841725 ((_ is Cons!40657) (originalCharacters!6874 (h!46078 prefixTokens!80)))) b!3842320))

(declare-fun b!3842331 () Bool)

(declare-fun e!2373973 () Bool)

(assert (=> b!3842331 (= e!2373973 tp_is_empty!19329)))

(declare-fun b!3842332 () Bool)

(declare-fun tp!1164050 () Bool)

(declare-fun tp!1164052 () Bool)

(assert (=> b!3842332 (= e!2373973 (and tp!1164050 tp!1164052))))

(declare-fun b!3842333 () Bool)

(declare-fun tp!1164051 () Bool)

(assert (=> b!3842333 (= e!2373973 tp!1164051)))

(declare-fun b!3842334 () Bool)

(declare-fun tp!1164048 () Bool)

(declare-fun tp!1164049 () Bool)

(assert (=> b!3842334 (= e!2373973 (and tp!1164048 tp!1164049))))

(assert (=> b!3841747 (= tp!1163924 e!2373973)))

(assert (= (and b!3841747 ((_ is ElementMatch!11179) (regex!6274 (rule!9112 (h!46078 suffixTokens!72))))) b!3842331))

(assert (= (and b!3841747 ((_ is Concat!17684) (regex!6274 (rule!9112 (h!46078 suffixTokens!72))))) b!3842332))

(assert (= (and b!3841747 ((_ is Star!11179) (regex!6274 (rule!9112 (h!46078 suffixTokens!72))))) b!3842333))

(assert (= (and b!3841747 ((_ is Union!11179) (regex!6274 (rule!9112 (h!46078 suffixTokens!72))))) b!3842334))

(declare-fun b!3842335 () Bool)

(declare-fun e!2373974 () Bool)

(declare-fun tp!1164053 () Bool)

(assert (=> b!3842335 (= e!2373974 (and tp_is_empty!19329 tp!1164053))))

(assert (=> b!3841748 (= tp!1163904 e!2373974)))

(assert (= (and b!3841748 ((_ is Cons!40657) (t!310450 suffix!1176))) b!3842335))

(declare-fun b!3842336 () Bool)

(declare-fun e!2373975 () Bool)

(declare-fun tp!1164054 () Bool)

(assert (=> b!3842336 (= e!2373975 (and tp_is_empty!19329 tp!1164054))))

(assert (=> b!3841737 (= tp!1163922 e!2373975)))

(assert (= (and b!3841737 ((_ is Cons!40657) (originalCharacters!6874 (_1!23049 (v!38983 err!4249))))) b!3842336))

(declare-fun b!3842340 () Bool)

(declare-fun b_free!102573 () Bool)

(declare-fun b_next!103277 () Bool)

(assert (=> b!3842340 (= b_free!102573 (not b_next!103277))))

(declare-fun tb!221107 () Bool)

(declare-fun t!310584 () Bool)

(assert (=> (and b!3842340 (= (toValue!8690 (transformation!6274 (rule!9112 (h!46078 (t!310451 suffixTokens!72))))) (toValue!8690 (transformation!6274 (rule!9112 (_1!23049 (v!38983 lt!1333491)))))) t!310584) tb!221107))

(declare-fun result!269472 () Bool)

(assert (= result!269472 result!269410))

(assert (=> d!1139840 t!310584))

(declare-fun b_and!286331 () Bool)

(declare-fun tp!1164057 () Bool)

(assert (=> b!3842340 (= tp!1164057 (and (=> t!310584 result!269472) b_and!286331))))

(declare-fun b_free!102575 () Bool)

(declare-fun b_next!103279 () Bool)

(assert (=> b!3842340 (= b_free!102575 (not b_next!103279))))

(declare-fun t!310586 () Bool)

(declare-fun tb!221109 () Bool)

(assert (=> (and b!3842340 (= (toChars!8549 (transformation!6274 (rule!9112 (h!46078 (t!310451 suffixTokens!72))))) (toChars!8549 (transformation!6274 (rule!9112 (_1!23049 (v!38983 lt!1333491)))))) t!310586) tb!221109))

(declare-fun result!269474 () Bool)

(assert (= result!269474 result!269400))

(assert (=> d!1139834 t!310586))

(declare-fun tb!221111 () Bool)

(declare-fun t!310588 () Bool)

(assert (=> (and b!3842340 (= (toChars!8549 (transformation!6274 (rule!9112 (h!46078 (t!310451 suffixTokens!72))))) (toChars!8549 (transformation!6274 (rule!9112 (_1!23049 (v!38983 err!4249)))))) t!310588) tb!221111))

(declare-fun result!269476 () Bool)

(assert (= result!269476 result!269420))

(assert (=> b!3842236 t!310588))

(declare-fun t!310590 () Bool)

(declare-fun tb!221113 () Bool)

(assert (=> (and b!3842340 (= (toChars!8549 (transformation!6274 (rule!9112 (h!46078 (t!310451 suffixTokens!72))))) (toChars!8549 (transformation!6274 (rule!9112 (h!46078 prefixTokens!80))))) t!310590) tb!221113))

(declare-fun result!269478 () Bool)

(assert (= result!269478 result!269428))

(assert (=> b!3842240 t!310590))

(declare-fun t!310592 () Bool)

(declare-fun tb!221115 () Bool)

(assert (=> (and b!3842340 (= (toChars!8549 (transformation!6274 (rule!9112 (h!46078 (t!310451 suffixTokens!72))))) (toChars!8549 (transformation!6274 (rule!9112 (h!46078 suffixTokens!72))))) t!310592) tb!221115))

(declare-fun result!269480 () Bool)

(assert (= result!269480 result!269436))

(assert (=> b!3842248 t!310592))

(declare-fun tp!1164056 () Bool)

(declare-fun b_and!286333 () Bool)

(assert (=> b!3842340 (= tp!1164056 (and (=> t!310586 result!269474) (=> t!310588 result!269476) (=> t!310590 result!269478) (=> t!310592 result!269480) b_and!286333))))

(declare-fun e!2373978 () Bool)

(declare-fun b!3842338 () Bool)

(declare-fun e!2373976 () Bool)

(declare-fun tp!1164058 () Bool)

(assert (=> b!3842338 (= e!2373976 (and (inv!21 (value!199443 (h!46078 (t!310451 suffixTokens!72)))) e!2373978 tp!1164058))))

(declare-fun e!2373980 () Bool)

(assert (=> b!3842340 (= e!2373980 (and tp!1164057 tp!1164056))))

(declare-fun e!2373977 () Bool)

(assert (=> b!3841718 (= tp!1163913 e!2373977)))

(declare-fun tp!1164055 () Bool)

(declare-fun b!3842339 () Bool)

(assert (=> b!3842339 (= e!2373978 (and tp!1164055 (inv!54799 (tag!7134 (rule!9112 (h!46078 (t!310451 suffixTokens!72))))) (inv!54803 (transformation!6274 (rule!9112 (h!46078 (t!310451 suffixTokens!72))))) e!2373980))))

(declare-fun b!3842337 () Bool)

(declare-fun tp!1164059 () Bool)

(assert (=> b!3842337 (= e!2373977 (and (inv!54802 (h!46078 (t!310451 suffixTokens!72))) e!2373976 tp!1164059))))

(assert (= b!3842339 b!3842340))

(assert (= b!3842338 b!3842339))

(assert (= b!3842337 b!3842338))

(assert (= (and b!3841718 ((_ is Cons!40658) (t!310451 suffixTokens!72))) b!3842337))

(declare-fun m!4396725 () Bool)

(assert (=> b!3842338 m!4396725))

(declare-fun m!4396727 () Bool)

(assert (=> b!3842339 m!4396727))

(declare-fun m!4396729 () Bool)

(assert (=> b!3842339 m!4396729))

(declare-fun m!4396731 () Bool)

(assert (=> b!3842337 m!4396731))

(declare-fun b!3842341 () Bool)

(declare-fun e!2373982 () Bool)

(declare-fun tp!1164060 () Bool)

(assert (=> b!3842341 (= e!2373982 (and tp_is_empty!19329 tp!1164060))))

(assert (=> b!3841730 (= tp!1163908 e!2373982)))

(assert (= (and b!3841730 ((_ is Cons!40657) (t!310450 prefix!426))) b!3842341))

(declare-fun b!3842342 () Bool)

(declare-fun e!2373983 () Bool)

(declare-fun tp!1164061 () Bool)

(assert (=> b!3842342 (= e!2373983 (and tp_is_empty!19329 tp!1164061))))

(assert (=> b!3841751 (= tp!1163923 e!2373983)))

(assert (= (and b!3841751 ((_ is Cons!40657) (t!310450 suffixResult!91))) b!3842342))

(declare-fun b!3842343 () Bool)

(declare-fun e!2373984 () Bool)

(declare-fun tp!1164062 () Bool)

(assert (=> b!3842343 (= e!2373984 (and tp_is_empty!19329 tp!1164062))))

(assert (=> b!3841741 (= tp!1163914 e!2373984)))

(assert (= (and b!3841741 ((_ is Cons!40657) (originalCharacters!6874 (h!46078 suffixTokens!72)))) b!3842343))

(declare-fun b!3842344 () Bool)

(declare-fun e!2373985 () Bool)

(assert (=> b!3842344 (= e!2373985 tp_is_empty!19329)))

(declare-fun b!3842345 () Bool)

(declare-fun tp!1164065 () Bool)

(declare-fun tp!1164067 () Bool)

(assert (=> b!3842345 (= e!2373985 (and tp!1164065 tp!1164067))))

(declare-fun b!3842346 () Bool)

(declare-fun tp!1164066 () Bool)

(assert (=> b!3842346 (= e!2373985 tp!1164066)))

(declare-fun b!3842347 () Bool)

(declare-fun tp!1164063 () Bool)

(declare-fun tp!1164064 () Bool)

(assert (=> b!3842347 (= e!2373985 (and tp!1164063 tp!1164064))))

(assert (=> b!3841731 (= tp!1163919 e!2373985)))

(assert (= (and b!3841731 ((_ is ElementMatch!11179) (regex!6274 (rule!9112 (h!46078 prefixTokens!80))))) b!3842344))

(assert (= (and b!3841731 ((_ is Concat!17684) (regex!6274 (rule!9112 (h!46078 prefixTokens!80))))) b!3842345))

(assert (= (and b!3841731 ((_ is Star!11179) (regex!6274 (rule!9112 (h!46078 prefixTokens!80))))) b!3842346))

(assert (= (and b!3841731 ((_ is Union!11179) (regex!6274 (rule!9112 (h!46078 prefixTokens!80))))) b!3842347))

(declare-fun b!3842348 () Bool)

(declare-fun e!2373986 () Bool)

(assert (=> b!3842348 (= e!2373986 tp_is_empty!19329)))

(declare-fun b!3842349 () Bool)

(declare-fun tp!1164070 () Bool)

(declare-fun tp!1164072 () Bool)

(assert (=> b!3842349 (= e!2373986 (and tp!1164070 tp!1164072))))

(declare-fun b!3842350 () Bool)

(declare-fun tp!1164071 () Bool)

(assert (=> b!3842350 (= e!2373986 tp!1164071)))

(declare-fun b!3842351 () Bool)

(declare-fun tp!1164068 () Bool)

(declare-fun tp!1164069 () Bool)

(assert (=> b!3842351 (= e!2373986 (and tp!1164068 tp!1164069))))

(assert (=> b!3841734 (= tp!1163911 e!2373986)))

(assert (= (and b!3841734 ((_ is ElementMatch!11179) (regex!6274 (h!46079 rules!2768)))) b!3842348))

(assert (= (and b!3841734 ((_ is Concat!17684) (regex!6274 (h!46079 rules!2768)))) b!3842349))

(assert (= (and b!3841734 ((_ is Star!11179) (regex!6274 (h!46079 rules!2768)))) b!3842350))

(assert (= (and b!3841734 ((_ is Union!11179) (regex!6274 (h!46079 rules!2768)))) b!3842351))

(declare-fun b!3842352 () Bool)

(declare-fun e!2373987 () Bool)

(declare-fun tp!1164073 () Bool)

(assert (=> b!3842352 (= e!2373987 (and tp_is_empty!19329 tp!1164073))))

(assert (=> b!3841723 (= tp!1163916 e!2373987)))

(assert (= (and b!3841723 ((_ is Cons!40657) (_2!23049 (v!38983 err!4249)))) b!3842352))

(declare-fun b!3842353 () Bool)

(declare-fun e!2373988 () Bool)

(assert (=> b!3842353 (= e!2373988 tp_is_empty!19329)))

(declare-fun b!3842354 () Bool)

(declare-fun tp!1164076 () Bool)

(declare-fun tp!1164078 () Bool)

(assert (=> b!3842354 (= e!2373988 (and tp!1164076 tp!1164078))))

(declare-fun b!3842355 () Bool)

(declare-fun tp!1164077 () Bool)

(assert (=> b!3842355 (= e!2373988 tp!1164077)))

(declare-fun b!3842356 () Bool)

(declare-fun tp!1164074 () Bool)

(declare-fun tp!1164075 () Bool)

(assert (=> b!3842356 (= e!2373988 (and tp!1164074 tp!1164075))))

(assert (=> b!3841745 (= tp!1163918 e!2373988)))

(assert (= (and b!3841745 ((_ is ElementMatch!11179) (regex!6274 (rule!9112 (_1!23049 (v!38983 err!4249)))))) b!3842353))

(assert (= (and b!3841745 ((_ is Concat!17684) (regex!6274 (rule!9112 (_1!23049 (v!38983 err!4249)))))) b!3842354))

(assert (= (and b!3841745 ((_ is Star!11179) (regex!6274 (rule!9112 (_1!23049 (v!38983 err!4249)))))) b!3842355))

(assert (= (and b!3841745 ((_ is Union!11179) (regex!6274 (rule!9112 (_1!23049 (v!38983 err!4249)))))) b!3842356))

(declare-fun b_lambda!112317 () Bool)

(assert (= b_lambda!112311 (or (and b!3841727 b_free!102551 (= (toChars!8549 (transformation!6274 (rule!9112 (h!46078 suffixTokens!72)))) (toChars!8549 (transformation!6274 (rule!9112 (_1!23049 (v!38983 err!4249))))))) (and b!3841742 b_free!102543 (= (toChars!8549 (transformation!6274 (h!46079 rules!2768))) (toChars!8549 (transformation!6274 (rule!9112 (_1!23049 (v!38983 err!4249))))))) (and b!3842315 b_free!102571 (= (toChars!8549 (transformation!6274 (rule!9112 (h!46078 (t!310451 prefixTokens!80))))) (toChars!8549 (transformation!6274 (rule!9112 (_1!23049 (v!38983 err!4249))))))) (and b!3842340 b_free!102575 (= (toChars!8549 (transformation!6274 (rule!9112 (h!46078 (t!310451 suffixTokens!72))))) (toChars!8549 (transformation!6274 (rule!9112 (_1!23049 (v!38983 err!4249))))))) (and b!3841738 b_free!102547 (= (toChars!8549 (transformation!6274 (rule!9112 (h!46078 prefixTokens!80)))) (toChars!8549 (transformation!6274 (rule!9112 (_1!23049 (v!38983 err!4249))))))) (and b!3841736 b_free!102539) (and b!3842301 b_free!102567 (= (toChars!8549 (transformation!6274 (h!46079 (t!310452 rules!2768)))) (toChars!8549 (transformation!6274 (rule!9112 (_1!23049 (v!38983 err!4249))))))) b_lambda!112317)))

(declare-fun b_lambda!112319 () Bool)

(assert (= b_lambda!112313 (or (and b!3841736 b_free!102539 (= (toChars!8549 (transformation!6274 (rule!9112 (_1!23049 (v!38983 err!4249))))) (toChars!8549 (transformation!6274 (rule!9112 (h!46078 prefixTokens!80)))))) (and b!3842315 b_free!102571 (= (toChars!8549 (transformation!6274 (rule!9112 (h!46078 (t!310451 prefixTokens!80))))) (toChars!8549 (transformation!6274 (rule!9112 (h!46078 prefixTokens!80)))))) (and b!3841742 b_free!102543 (= (toChars!8549 (transformation!6274 (h!46079 rules!2768))) (toChars!8549 (transformation!6274 (rule!9112 (h!46078 prefixTokens!80)))))) (and b!3841727 b_free!102551 (= (toChars!8549 (transformation!6274 (rule!9112 (h!46078 suffixTokens!72)))) (toChars!8549 (transformation!6274 (rule!9112 (h!46078 prefixTokens!80)))))) (and b!3841738 b_free!102547) (and b!3842301 b_free!102567 (= (toChars!8549 (transformation!6274 (h!46079 (t!310452 rules!2768)))) (toChars!8549 (transformation!6274 (rule!9112 (h!46078 prefixTokens!80)))))) (and b!3842340 b_free!102575 (= (toChars!8549 (transformation!6274 (rule!9112 (h!46078 (t!310451 suffixTokens!72))))) (toChars!8549 (transformation!6274 (rule!9112 (h!46078 prefixTokens!80)))))) b_lambda!112319)))

(declare-fun b_lambda!112321 () Bool)

(assert (= b_lambda!112315 (or (and b!3841742 b_free!102543 (= (toChars!8549 (transformation!6274 (h!46079 rules!2768))) (toChars!8549 (transformation!6274 (rule!9112 (h!46078 suffixTokens!72)))))) (and b!3841738 b_free!102547 (= (toChars!8549 (transformation!6274 (rule!9112 (h!46078 prefixTokens!80)))) (toChars!8549 (transformation!6274 (rule!9112 (h!46078 suffixTokens!72)))))) (and b!3841727 b_free!102551) (and b!3842315 b_free!102571 (= (toChars!8549 (transformation!6274 (rule!9112 (h!46078 (t!310451 prefixTokens!80))))) (toChars!8549 (transformation!6274 (rule!9112 (h!46078 suffixTokens!72)))))) (and b!3842340 b_free!102575 (= (toChars!8549 (transformation!6274 (rule!9112 (h!46078 (t!310451 suffixTokens!72))))) (toChars!8549 (transformation!6274 (rule!9112 (h!46078 suffixTokens!72)))))) (and b!3841736 b_free!102539 (= (toChars!8549 (transformation!6274 (rule!9112 (_1!23049 (v!38983 err!4249))))) (toChars!8549 (transformation!6274 (rule!9112 (h!46078 suffixTokens!72)))))) (and b!3842301 b_free!102567 (= (toChars!8549 (transformation!6274 (h!46079 (t!310452 rules!2768)))) (toChars!8549 (transformation!6274 (rule!9112 (h!46078 suffixTokens!72)))))) b_lambda!112321)))

(check-sat (not b!3842341) (not b!3842161) b_and!286319 (not b!3842236) (not b!3842347) (not b!3842337) (not b!3842259) (not b!3842343) (not b!3842182) (not b_lambda!112309) (not b!3842255) (not b!3842334) (not b_lambda!112317) (not b!3841802) (not b_next!103269) (not b!3842247) (not d!1139822) (not d!1139690) (not b!3842286) b_and!286325 (not b!3841868) (not b!3842260) (not b!3842210) (not b!3842239) (not bm!281976) (not b!3841855) (not tb!221047) (not b_next!103273) (not b!3842156) (not d!1139832) (not b_next!103247) (not b!3841830) (not b!3842191) (not b!3842167) (not b!3841867) (not d!1139864) (not b!3842333) (not b_next!103243) (not d!1139854) b_and!286293 (not b!3842244) (not b!3842356) (not b!3841869) (not b!3842186) (not b!3842170) (not b!3842299) (not d!1139826) (not d!1139824) (not b!3842165) (not b!3841813) (not d!1139828) (not tb!221055) (not tb!221079) (not b!3842300) (not b!3842254) (not b!3842168) (not b!3841854) (not tb!221063) (not b!3842339) (not b!3842215) (not b!3842174) (not b!3842162) (not bm!281970) (not tb!221071) b_and!286297 tp_is_empty!19329 (not b_lambda!112321) (not b_next!103251) (not b!3842214) (not b!3842261) (not d!1139838) (not b!3842285) (not b!3842160) (not b_lambda!112319) (not b!3842216) (not b!3842179) (not b!3841850) (not b!3842320) (not b!3842192) (not b!3842221) (not b!3842342) (not b!3842183) (not b!3842252) (not b_lambda!112307) b_and!286331 (not b!3842175) (not b!3842332) (not b!3841803) (not d!1139876) (not b!3842178) (not b!3842231) b_and!286291 (not b!3842230) (not b!3842225) (not b_next!103275) (not d!1139872) (not b!3841814) (not b!3841788) (not b_next!103277) (not b!3842181) (not d!1139878) (not b!3842338) (not b!3842163) (not b!3842226) (not b!3842352) (not d!1139806) b_and!286333 (not d!1139700) (not d!1139810) (not b!3841857) (not d!1139842) (not b!3842227) (not b!3842242) (not b_next!103245) b_and!286317 (not b!3841852) (not b!3842349) (not b!3842313) (not b_next!103255) (not b!3841784) (not b!3842284) (not b!3842314) (not d!1139856) (not b!3842287) b_and!286329 (not b!3842355) (not d!1139836) (not b!3842189) (not d!1139816) (not b!3842171) (not d!1139808) (not b!3842354) (not b!3842229) (not b!3842350) (not b!3842336) (not b!3842346) (not b!3842283) (not b!3842157) b_and!286295 (not b!3842312) (not b!3841849) (not b!3842288) (not d!1139834) (not d!1139830) (not d!1139692) (not b!3841826) (not b!3842166) (not bm!281977) b_and!286327 (not b_next!103249) (not d!1139694) (not b!3841801) (not d!1139866) (not b!3842290) (not b_next!103241) (not b!3842345) (not d!1139860) (not b!3842173) (not b!3841825) (not d!1139698) b_and!286315 (not b_next!103279) (not b!3841785) (not b_next!103253) (not b!3842240) (not b!3842263) (not b!3842249) (not b!3842237) (not b!3842241) b_and!286321 (not b!3842335) (not d!1139870) (not b!3842176) (not d!1139710) b_and!286323 (not b_next!103271) (not b!3842262) (not b!3842243) (not b!3842289) (not b!3841856) (not d!1139804) (not d!1139850) (not b!3842238) (not d!1139818) (not b!3842250) (not d!1139706) (not b!3842204) (not b!3842199) (not b!3841851) (not b!3842180) (not b!3842351) (not b!3842248))
(check-sat b_and!286319 b_and!286297 (not b_next!103251) b_and!286331 (not b_next!103277) b_and!286333 (not b_next!103255) b_and!286329 b_and!286295 (not b_next!103241) b_and!286321 (not b_next!103269) b_and!286325 (not b_next!103247) (not b_next!103273) (not b_next!103243) b_and!286293 b_and!286291 (not b_next!103275) (not b_next!103245) b_and!286317 b_and!286327 (not b_next!103249) b_and!286315 (not b_next!103279) (not b_next!103253) b_and!286323 (not b_next!103271))
