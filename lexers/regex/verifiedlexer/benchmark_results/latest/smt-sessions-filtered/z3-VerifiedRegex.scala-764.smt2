; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42858 () Bool)

(assert start!42858)

(declare-fun b!452589 () Bool)

(declare-fun b_free!12561 () Bool)

(declare-fun b_next!12561 () Bool)

(assert (=> b!452589 (= b_free!12561 (not b_next!12561))))

(declare-fun tp!125882 () Bool)

(declare-fun b_and!48625 () Bool)

(assert (=> b!452589 (= tp!125882 b_and!48625)))

(declare-fun b_free!12563 () Bool)

(declare-fun b_next!12563 () Bool)

(assert (=> b!452589 (= b_free!12563 (not b_next!12563))))

(declare-fun tp!125890 () Bool)

(declare-fun b_and!48627 () Bool)

(assert (=> b!452589 (= tp!125890 b_and!48627)))

(declare-fun b!452584 () Bool)

(declare-fun b_free!12565 () Bool)

(declare-fun b_next!12565 () Bool)

(assert (=> b!452584 (= b_free!12565 (not b_next!12565))))

(declare-fun tp!125883 () Bool)

(declare-fun b_and!48629 () Bool)

(assert (=> b!452584 (= tp!125883 b_and!48629)))

(declare-fun b_free!12567 () Bool)

(declare-fun b_next!12567 () Bool)

(assert (=> b!452584 (= b_free!12567 (not b_next!12567))))

(declare-fun tp!125893 () Bool)

(declare-fun b_and!48631 () Bool)

(assert (=> b!452584 (= tp!125893 b_and!48631)))

(declare-fun b!452598 () Bool)

(declare-fun b_free!12569 () Bool)

(declare-fun b_next!12569 () Bool)

(assert (=> b!452598 (= b_free!12569 (not b_next!12569))))

(declare-fun tp!125887 () Bool)

(declare-fun b_and!48633 () Bool)

(assert (=> b!452598 (= tp!125887 b_and!48633)))

(declare-fun b_free!12571 () Bool)

(declare-fun b_next!12571 () Bool)

(assert (=> b!452598 (= b_free!12571 (not b_next!12571))))

(declare-fun tp!125886 () Bool)

(declare-fun b_and!48635 () Bool)

(assert (=> b!452598 (= tp!125886 b_and!48635)))

(declare-fun bs!56006 () Bool)

(declare-fun b!452587 () Bool)

(declare-fun b!452594 () Bool)

(assert (= bs!56006 (and b!452587 b!452594)))

(declare-fun lambda!13186 () Int)

(declare-fun lambda!13185 () Int)

(assert (=> bs!56006 (not (= lambda!13186 lambda!13185))))

(declare-fun b!452610 () Bool)

(declare-fun e!276778 () Bool)

(assert (=> b!452610 (= e!276778 true)))

(declare-fun b!452609 () Bool)

(declare-fun e!276777 () Bool)

(assert (=> b!452609 (= e!276777 e!276778)))

(declare-fun b!452608 () Bool)

(declare-fun e!276776 () Bool)

(assert (=> b!452608 (= e!276776 e!276777)))

(assert (=> b!452587 e!276776))

(assert (= b!452609 b!452610))

(assert (= b!452608 b!452609))

(declare-datatypes ((List!4396 0))(
  ( (Nil!4386) (Cons!4386 (h!9783 (_ BitVec 16)) (t!71012 List!4396)) )
))
(declare-datatypes ((TokenValue!873 0))(
  ( (FloatLiteralValue!1746 (text!6556 List!4396)) (TokenValueExt!872 (__x!3233 Int)) (Broken!4365 (value!28543 List!4396)) (Object!882) (End!873) (Def!873) (Underscore!873) (Match!873) (Else!873) (Error!873) (Case!873) (If!873) (Extends!873) (Abstract!873) (Class!873) (Val!873) (DelimiterValue!1746 (del!933 List!4396)) (KeywordValue!879 (value!28544 List!4396)) (CommentValue!1746 (value!28545 List!4396)) (WhitespaceValue!1746 (value!28546 List!4396)) (IndentationValue!873 (value!28547 List!4396)) (String!5444) (Int32!873) (Broken!4366 (value!28548 List!4396)) (Boolean!874) (Unit!7920) (OperatorValue!876 (op!933 List!4396)) (IdentifierValue!1746 (value!28549 List!4396)) (IdentifierValue!1747 (value!28550 List!4396)) (WhitespaceValue!1747 (value!28551 List!4396)) (True!1746) (False!1746) (Broken!4367 (value!28552 List!4396)) (Broken!4368 (value!28553 List!4396)) (True!1747) (RightBrace!873) (RightBracket!873) (Colon!873) (Null!873) (Comma!873) (LeftBracket!873) (False!1747) (LeftBrace!873) (ImaginaryLiteralValue!873 (text!6557 List!4396)) (StringLiteralValue!2619 (value!28554 List!4396)) (EOFValue!873 (value!28555 List!4396)) (IdentValue!873 (value!28556 List!4396)) (DelimiterValue!1747 (value!28557 List!4396)) (DedentValue!873 (value!28558 List!4396)) (NewLineValue!873 (value!28559 List!4396)) (IntegerValue!2619 (value!28560 (_ BitVec 32)) (text!6558 List!4396)) (IntegerValue!2620 (value!28561 Int) (text!6559 List!4396)) (Times!873) (Or!873) (Equal!873) (Minus!873) (Broken!4369 (value!28562 List!4396)) (And!873) (Div!873) (LessEqual!873) (Mod!873) (Concat!1948) (Not!873) (Plus!873) (SpaceValue!873 (value!28563 List!4396)) (IntegerValue!2621 (value!28564 Int) (text!6560 List!4396)) (StringLiteralValue!2620 (text!6561 List!4396)) (FloatLiteralValue!1747 (text!6562 List!4396)) (BytesLiteralValue!873 (value!28565 List!4396)) (CommentValue!1747 (value!28566 List!4396)) (StringLiteralValue!2621 (value!28567 List!4396)) (ErrorTokenValue!873 (msg!934 List!4396)) )
))
(declare-datatypes ((C!3072 0))(
  ( (C!3073 (val!1422 Int)) )
))
(declare-datatypes ((List!4397 0))(
  ( (Nil!4387) (Cons!4387 (h!9784 C!3072) (t!71013 List!4397)) )
))
(declare-datatypes ((IArray!3049 0))(
  ( (IArray!3050 (innerList!1582 List!4397)) )
))
(declare-datatypes ((Conc!1524 0))(
  ( (Node!1524 (left!3692 Conc!1524) (right!4022 Conc!1524) (csize!3278 Int) (cheight!1735 Int)) (Leaf!2289 (xs!4155 IArray!3049) (csize!3279 Int)) (Empty!1524) )
))
(declare-datatypes ((BalanceConc!3056 0))(
  ( (BalanceConc!3057 (c!91574 Conc!1524)) )
))
(declare-datatypes ((TokenValueInjection!1518 0))(
  ( (TokenValueInjection!1519 (toValue!1666 Int) (toChars!1525 Int)) )
))
(declare-datatypes ((Regex!1075 0))(
  ( (ElementMatch!1075 (c!91575 C!3072)) (Concat!1949 (regOne!2662 Regex!1075) (regTwo!2662 Regex!1075)) (EmptyExpr!1075) (Star!1075 (reg!1404 Regex!1075)) (EmptyLang!1075) (Union!1075 (regOne!2663 Regex!1075) (regTwo!2663 Regex!1075)) )
))
(declare-datatypes ((String!5445 0))(
  ( (String!5446 (value!28568 String)) )
))
(declare-datatypes ((Rule!1502 0))(
  ( (Rule!1503 (regex!851 Regex!1075) (tag!1111 String!5445) (isSeparator!851 Bool) (transformation!851 TokenValueInjection!1518)) )
))
(declare-datatypes ((List!4398 0))(
  ( (Nil!4388) (Cons!4388 (h!9785 Rule!1502) (t!71014 List!4398)) )
))
(declare-fun rules!1920 () List!4398)

(get-info :version)

(assert (= (and b!452587 ((_ is Cons!4388) rules!1920)) b!452608))

(declare-fun order!3857 () Int)

(declare-fun order!3859 () Int)

(declare-fun dynLambda!2646 (Int Int) Int)

(declare-fun dynLambda!2647 (Int Int) Int)

(assert (=> b!452610 (< (dynLambda!2646 order!3857 (toValue!1666 (transformation!851 (h!9785 rules!1920)))) (dynLambda!2647 order!3859 lambda!13186))))

(declare-fun order!3861 () Int)

(declare-fun dynLambda!2648 (Int Int) Int)

(assert (=> b!452610 (< (dynLambda!2648 order!3861 (toChars!1525 (transformation!851 (h!9785 rules!1920)))) (dynLambda!2647 order!3859 lambda!13186))))

(assert (=> b!452587 true))

(declare-fun b!452569 () Bool)

(declare-fun e!276753 () Bool)

(declare-fun e!276767 () Bool)

(assert (=> b!452569 (= e!276753 e!276767)))

(declare-fun res!201084 () Bool)

(assert (=> b!452569 (=> res!201084 e!276767)))

(declare-fun e!276751 () Bool)

(assert (=> b!452569 (= res!201084 e!276751)))

(declare-fun res!201088 () Bool)

(assert (=> b!452569 (=> (not res!201088) (not e!276751))))

(declare-fun lt!201181 () Bool)

(assert (=> b!452569 (= res!201088 (not lt!201181))))

(declare-fun lt!201193 () List!4397)

(declare-fun lt!201189 () List!4397)

(assert (=> b!452569 (= lt!201181 (= lt!201193 lt!201189))))

(declare-fun res!201080 () Bool)

(declare-fun e!276754 () Bool)

(assert (=> start!42858 (=> (not res!201080) (not e!276754))))

(declare-datatypes ((LexerInterface!737 0))(
  ( (LexerInterfaceExt!734 (__x!3234 Int)) (Lexer!735) )
))
(declare-fun thiss!17480 () LexerInterface!737)

(assert (=> start!42858 (= res!201080 ((_ is Lexer!735) thiss!17480))))

(assert (=> start!42858 e!276754))

(assert (=> start!42858 true))

(declare-fun e!276759 () Bool)

(assert (=> start!42858 e!276759))

(declare-datatypes ((Token!1446 0))(
  ( (Token!1447 (value!28569 TokenValue!873) (rule!1542 Rule!1502) (size!3605 Int) (originalCharacters!894 List!4397)) )
))
(declare-fun separatorToken!170 () Token!1446)

(declare-fun e!276757 () Bool)

(declare-fun inv!5463 (Token!1446) Bool)

(assert (=> start!42858 (and (inv!5463 separatorToken!170) e!276757)))

(declare-fun e!276768 () Bool)

(assert (=> start!42858 e!276768))

(declare-fun b!452570 () Bool)

(declare-fun tp!125881 () Bool)

(declare-datatypes ((List!4399 0))(
  ( (Nil!4389) (Cons!4389 (h!9786 Token!1446) (t!71015 List!4399)) )
))
(declare-fun tokens!465 () List!4399)

(declare-fun e!276763 () Bool)

(assert (=> b!452570 (= e!276768 (and (inv!5463 (h!9786 tokens!465)) e!276763 tp!125881))))

(declare-fun e!276747 () Bool)

(declare-fun tp!125891 () Bool)

(declare-fun b!452571 () Bool)

(declare-fun inv!21 (TokenValue!873) Bool)

(assert (=> b!452571 (= e!276763 (and (inv!21 (value!28569 (h!9786 tokens!465))) e!276747 tp!125891))))

(declare-fun b!452572 () Bool)

(declare-fun res!201082 () Bool)

(declare-fun e!276758 () Bool)

(assert (=> b!452572 (=> (not res!201082) (not e!276758))))

(assert (=> b!452572 (= res!201082 ((_ is Cons!4389) tokens!465))))

(declare-fun b!452573 () Bool)

(assert (=> b!452573 (= e!276754 e!276758)))

(declare-fun res!201089 () Bool)

(assert (=> b!452573 (=> (not res!201089) (not e!276758))))

(declare-datatypes ((IArray!3051 0))(
  ( (IArray!3052 (innerList!1583 List!4399)) )
))
(declare-datatypes ((Conc!1525 0))(
  ( (Node!1525 (left!3693 Conc!1525) (right!4023 Conc!1525) (csize!3280 Int) (cheight!1736 Int)) (Leaf!2290 (xs!4156 IArray!3051) (csize!3281 Int)) (Empty!1525) )
))
(declare-datatypes ((BalanceConc!3058 0))(
  ( (BalanceConc!3059 (c!91576 Conc!1525)) )
))
(declare-fun lt!201182 () BalanceConc!3058)

(declare-fun rulesProduceEachTokenIndividually!529 (LexerInterface!737 List!4398 BalanceConc!3058) Bool)

(assert (=> b!452573 (= res!201089 (rulesProduceEachTokenIndividually!529 thiss!17480 rules!1920 lt!201182))))

(declare-fun seqFromList!1067 (List!4399) BalanceConc!3058)

(assert (=> b!452573 (= lt!201182 (seqFromList!1067 tokens!465))))

(declare-fun b!452574 () Bool)

(declare-fun e!276761 () Bool)

(declare-fun e!276752 () Bool)

(assert (=> b!452574 (= e!276761 e!276752)))

(declare-fun res!201077 () Bool)

(assert (=> b!452574 (=> res!201077 e!276752)))

(assert (=> b!452574 (= res!201077 lt!201181)))

(declare-fun e!276765 () Bool)

(assert (=> b!452574 e!276765))

(declare-fun res!201086 () Bool)

(assert (=> b!452574 (=> (not res!201086) (not e!276765))))

(declare-datatypes ((tuple2!5318 0))(
  ( (tuple2!5319 (_1!2875 Token!1446) (_2!2875 List!4397)) )
))
(declare-fun lt!201185 () tuple2!5318)

(assert (=> b!452574 (= res!201086 (= (_1!2875 lt!201185) (h!9786 tokens!465)))))

(declare-datatypes ((Option!1134 0))(
  ( (None!1133) (Some!1133 (v!15448 tuple2!5318)) )
))
(declare-fun lt!201191 () Option!1134)

(declare-fun get!1604 (Option!1134) tuple2!5318)

(assert (=> b!452574 (= lt!201185 (get!1604 lt!201191))))

(declare-fun isDefined!973 (Option!1134) Bool)

(assert (=> b!452574 (isDefined!973 lt!201191)))

(declare-fun lt!201188 () List!4397)

(declare-fun maxPrefix!453 (LexerInterface!737 List!4398 List!4397) Option!1134)

(assert (=> b!452574 (= lt!201191 (maxPrefix!453 thiss!17480 rules!1920 lt!201188))))

(declare-fun b!452575 () Bool)

(declare-fun e!276769 () Bool)

(assert (=> b!452575 (= e!276767 e!276769)))

(declare-fun res!201093 () Bool)

(assert (=> b!452575 (=> res!201093 e!276769)))

(declare-fun lt!201196 () List!4397)

(declare-fun lt!201186 () List!4397)

(assert (=> b!452575 (= res!201093 (or (not (= lt!201186 lt!201196)) (not (= lt!201196 lt!201188)) (not (= lt!201186 lt!201188))))))

(declare-fun printList!411 (LexerInterface!737 List!4399) List!4397)

(assert (=> b!452575 (= lt!201196 (printList!411 thiss!17480 (Cons!4389 (h!9786 tokens!465) Nil!4389)))))

(declare-fun lt!201192 () BalanceConc!3056)

(declare-fun list!1947 (BalanceConc!3056) List!4397)

(assert (=> b!452575 (= lt!201186 (list!1947 lt!201192))))

(declare-fun lt!201197 () BalanceConc!3058)

(declare-fun printTailRec!423 (LexerInterface!737 BalanceConc!3058 Int BalanceConc!3056) BalanceConc!3056)

(assert (=> b!452575 (= lt!201192 (printTailRec!423 thiss!17480 lt!201197 0 (BalanceConc!3057 Empty!1524)))))

(declare-fun print!462 (LexerInterface!737 BalanceConc!3058) BalanceConc!3056)

(assert (=> b!452575 (= lt!201192 (print!462 thiss!17480 lt!201197))))

(declare-fun singletonSeq!397 (Token!1446) BalanceConc!3058)

(assert (=> b!452575 (= lt!201197 (singletonSeq!397 (h!9786 tokens!465)))))

(declare-fun b!452576 () Bool)

(declare-fun res!201095 () Bool)

(assert (=> b!452576 (=> (not res!201095) (not e!276754))))

(declare-fun isEmpty!3347 (List!4398) Bool)

(assert (=> b!452576 (= res!201095 (not (isEmpty!3347 rules!1920)))))

(declare-fun b!452577 () Bool)

(declare-fun res!201087 () Bool)

(assert (=> b!452577 (=> (not res!201087) (not e!276754))))

(declare-fun rulesInvariant!703 (LexerInterface!737 List!4398) Bool)

(assert (=> b!452577 (= res!201087 (rulesInvariant!703 thiss!17480 rules!1920))))

(declare-fun b!452578 () Bool)

(declare-fun res!201076 () Bool)

(assert (=> b!452578 (=> (not res!201076) (not e!276765))))

(declare-fun isEmpty!3348 (List!4397) Bool)

(assert (=> b!452578 (= res!201076 (isEmpty!3348 (_2!2875 lt!201185)))))

(declare-fun b!452579 () Bool)

(declare-fun lt!201195 () List!4397)

(declare-fun ++!1274 (List!4397 List!4397) List!4397)

(assert (=> b!452579 (= e!276751 (not (= lt!201193 (++!1274 lt!201188 lt!201195))))))

(declare-fun b!452580 () Bool)

(declare-fun matchR!393 (Regex!1075 List!4397) Bool)

(assert (=> b!452580 (= e!276765 (matchR!393 (regex!851 (rule!1542 (h!9786 tokens!465))) lt!201188))))

(declare-fun b!452581 () Bool)

(declare-fun e!276762 () Bool)

(assert (=> b!452581 (= e!276758 e!276762)))

(declare-fun res!201079 () Bool)

(assert (=> b!452581 (=> (not res!201079) (not e!276762))))

(declare-fun lt!201194 () List!4397)

(assert (=> b!452581 (= res!201079 (= lt!201193 lt!201194))))

(declare-fun printWithSeparatorTokenWhenNeededRec!410 (LexerInterface!737 List!4398 BalanceConc!3058 Token!1446 Int) BalanceConc!3056)

(assert (=> b!452581 (= lt!201194 (list!1947 (printWithSeparatorTokenWhenNeededRec!410 thiss!17480 rules!1920 lt!201182 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!418 (LexerInterface!737 List!4398 List!4399 Token!1446) List!4397)

(assert (=> b!452581 (= lt!201193 (printWithSeparatorTokenWhenNeededList!418 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!452582 () Bool)

(declare-fun res!201085 () Bool)

(assert (=> b!452582 (=> (not res!201085) (not e!276758))))

(declare-fun rulesProduceIndividualToken!486 (LexerInterface!737 List!4398 Token!1446) Bool)

(assert (=> b!452582 (= res!201085 (rulesProduceIndividualToken!486 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!452583 () Bool)

(declare-fun res!201081 () Bool)

(assert (=> b!452583 (=> res!201081 e!276769)))

(declare-fun isEmpty!3349 (BalanceConc!3058) Bool)

(declare-datatypes ((tuple2!5320 0))(
  ( (tuple2!5321 (_1!2876 BalanceConc!3058) (_2!2876 BalanceConc!3056)) )
))
(declare-fun lex!529 (LexerInterface!737 List!4398 BalanceConc!3056) tuple2!5320)

(declare-fun seqFromList!1068 (List!4397) BalanceConc!3056)

(assert (=> b!452583 (= res!201081 (isEmpty!3349 (_1!2876 (lex!529 thiss!17480 rules!1920 (seqFromList!1068 lt!201188)))))))

(declare-fun e!276760 () Bool)

(assert (=> b!452584 (= e!276760 (and tp!125883 tp!125893))))

(declare-fun b!452585 () Bool)

(declare-fun res!201092 () Bool)

(assert (=> b!452585 (=> (not res!201092) (not e!276758))))

(declare-fun sepAndNonSepRulesDisjointChars!440 (List!4398 List!4398) Bool)

(assert (=> b!452585 (= res!201092 (sepAndNonSepRulesDisjointChars!440 rules!1920 rules!1920))))

(declare-fun e!276748 () Bool)

(declare-fun tp!125889 () Bool)

(declare-fun b!452586 () Bool)

(declare-fun e!276755 () Bool)

(declare-fun inv!5460 (String!5445) Bool)

(declare-fun inv!5464 (TokenValueInjection!1518) Bool)

(assert (=> b!452586 (= e!276748 (and tp!125889 (inv!5460 (tag!1111 (rule!1542 separatorToken!170))) (inv!5464 (transformation!851 (rule!1542 separatorToken!170))) e!276755))))

(assert (=> b!452587 (= e!276769 e!276761)))

(declare-fun res!201096 () Bool)

(assert (=> b!452587 (=> res!201096 e!276761)))

(declare-datatypes ((tuple2!5322 0))(
  ( (tuple2!5323 (_1!2877 Token!1446) (_2!2877 BalanceConc!3056)) )
))
(declare-datatypes ((Option!1135 0))(
  ( (None!1134) (Some!1134 (v!15449 tuple2!5322)) )
))
(declare-fun isDefined!974 (Option!1135) Bool)

(declare-fun maxPrefixZipperSequence!416 (LexerInterface!737 List!4398 BalanceConc!3056) Option!1135)

(assert (=> b!452587 (= res!201096 (not (isDefined!974 (maxPrefixZipperSequence!416 thiss!17480 rules!1920 (seqFromList!1068 (originalCharacters!894 (h!9786 tokens!465)))))))))

(declare-datatypes ((Unit!7921 0))(
  ( (Unit!7922) )
))
(declare-fun lt!201190 () Unit!7921)

(declare-fun forallContained!404 (List!4399 Int Token!1446) Unit!7921)

(assert (=> b!452587 (= lt!201190 (forallContained!404 tokens!465 lambda!13186 (h!9786 tokens!465)))))

(assert (=> b!452587 (= lt!201188 (originalCharacters!894 (h!9786 tokens!465)))))

(declare-fun b!452588 () Bool)

(declare-fun res!201094 () Bool)

(assert (=> b!452588 (=> (not res!201094) (not e!276758))))

(assert (=> b!452588 (= res!201094 (isSeparator!851 (rule!1542 separatorToken!170)))))

(assert (=> b!452589 (= e!276755 (and tp!125882 tp!125890))))

(declare-fun b!452590 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!313 (LexerInterface!737 List!4398 List!4399) Bool)

(assert (=> b!452590 (= e!276752 (rulesProduceEachTokenIndividuallyList!313 thiss!17480 rules!1920 tokens!465))))

(declare-fun e!276749 () Bool)

(declare-fun e!276764 () Bool)

(declare-fun tp!125892 () Bool)

(declare-fun b!452591 () Bool)

(assert (=> b!452591 (= e!276749 (and tp!125892 (inv!5460 (tag!1111 (h!9785 rules!1920))) (inv!5464 (transformation!851 (h!9785 rules!1920))) e!276764))))

(declare-fun b!452592 () Bool)

(assert (=> b!452592 (= e!276762 (not e!276753))))

(declare-fun res!201078 () Bool)

(assert (=> b!452592 (=> res!201078 e!276753)))

(assert (=> b!452592 (= res!201078 (not (= lt!201195 (list!1947 (printWithSeparatorTokenWhenNeededRec!410 thiss!17480 rules!1920 (seqFromList!1067 (t!71015 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!201187 () List!4397)

(assert (=> b!452592 (= lt!201187 lt!201189)))

(declare-fun lt!201183 () List!4397)

(assert (=> b!452592 (= lt!201189 (++!1274 lt!201188 lt!201183))))

(declare-fun lt!201198 () List!4397)

(assert (=> b!452592 (= lt!201187 (++!1274 (++!1274 lt!201188 lt!201198) lt!201195))))

(declare-fun lt!201184 () Unit!7921)

(declare-fun lemmaConcatAssociativity!586 (List!4397 List!4397 List!4397) Unit!7921)

(assert (=> b!452592 (= lt!201184 (lemmaConcatAssociativity!586 lt!201188 lt!201198 lt!201195))))

(declare-fun charsOf!494 (Token!1446) BalanceConc!3056)

(assert (=> b!452592 (= lt!201188 (list!1947 (charsOf!494 (h!9786 tokens!465))))))

(assert (=> b!452592 (= lt!201183 (++!1274 lt!201198 lt!201195))))

(assert (=> b!452592 (= lt!201195 (printWithSeparatorTokenWhenNeededList!418 thiss!17480 rules!1920 (t!71015 tokens!465) separatorToken!170))))

(assert (=> b!452592 (= lt!201198 (list!1947 (charsOf!494 separatorToken!170)))))

(declare-fun b!452593 () Bool)

(declare-fun tp!125884 () Bool)

(assert (=> b!452593 (= e!276759 (and e!276749 tp!125884))))

(declare-fun res!201090 () Bool)

(assert (=> b!452594 (=> (not res!201090) (not e!276758))))

(declare-fun forall!1270 (List!4399 Int) Bool)

(assert (=> b!452594 (= res!201090 (forall!1270 tokens!465 lambda!13185))))

(declare-fun b!452595 () Bool)

(declare-fun res!201083 () Bool)

(assert (=> b!452595 (=> (not res!201083) (not e!276762))))

(assert (=> b!452595 (= res!201083 (= (list!1947 (seqFromList!1068 lt!201193)) lt!201194))))

(declare-fun b!452596 () Bool)

(declare-fun res!201091 () Bool)

(assert (=> b!452596 (=> res!201091 e!276769)))

(assert (=> b!452596 (= res!201091 (not (rulesProduceIndividualToken!486 thiss!17480 rules!1920 (h!9786 tokens!465))))))

(declare-fun tp!125885 () Bool)

(declare-fun b!452597 () Bool)

(assert (=> b!452597 (= e!276747 (and tp!125885 (inv!5460 (tag!1111 (rule!1542 (h!9786 tokens!465)))) (inv!5464 (transformation!851 (rule!1542 (h!9786 tokens!465)))) e!276760))))

(assert (=> b!452598 (= e!276764 (and tp!125887 tp!125886))))

(declare-fun b!452599 () Bool)

(declare-fun tp!125888 () Bool)

(assert (=> b!452599 (= e!276757 (and (inv!21 (value!28569 separatorToken!170)) e!276748 tp!125888))))

(assert (= (and start!42858 res!201080) b!452576))

(assert (= (and b!452576 res!201095) b!452577))

(assert (= (and b!452577 res!201087) b!452573))

(assert (= (and b!452573 res!201089) b!452582))

(assert (= (and b!452582 res!201085) b!452588))

(assert (= (and b!452588 res!201094) b!452594))

(assert (= (and b!452594 res!201090) b!452585))

(assert (= (and b!452585 res!201092) b!452572))

(assert (= (and b!452572 res!201082) b!452581))

(assert (= (and b!452581 res!201079) b!452595))

(assert (= (and b!452595 res!201083) b!452592))

(assert (= (and b!452592 (not res!201078)) b!452569))

(assert (= (and b!452569 res!201088) b!452579))

(assert (= (and b!452569 (not res!201084)) b!452575))

(assert (= (and b!452575 (not res!201093)) b!452596))

(assert (= (and b!452596 (not res!201091)) b!452583))

(assert (= (and b!452583 (not res!201081)) b!452587))

(assert (= (and b!452587 (not res!201096)) b!452574))

(assert (= (and b!452574 res!201086) b!452578))

(assert (= (and b!452578 res!201076) b!452580))

(assert (= (and b!452574 (not res!201077)) b!452590))

(assert (= b!452591 b!452598))

(assert (= b!452593 b!452591))

(assert (= (and start!42858 ((_ is Cons!4388) rules!1920)) b!452593))

(assert (= b!452586 b!452589))

(assert (= b!452599 b!452586))

(assert (= start!42858 b!452599))

(assert (= b!452597 b!452584))

(assert (= b!452571 b!452597))

(assert (= b!452570 b!452571))

(assert (= (and start!42858 ((_ is Cons!4389) tokens!465)) b!452570))

(declare-fun m!716449 () Bool)

(assert (=> b!452573 m!716449))

(declare-fun m!716451 () Bool)

(assert (=> b!452573 m!716451))

(declare-fun m!716453 () Bool)

(assert (=> b!452596 m!716453))

(declare-fun m!716455 () Bool)

(assert (=> b!452575 m!716455))

(declare-fun m!716457 () Bool)

(assert (=> b!452575 m!716457))

(declare-fun m!716459 () Bool)

(assert (=> b!452575 m!716459))

(declare-fun m!716461 () Bool)

(assert (=> b!452575 m!716461))

(declare-fun m!716463 () Bool)

(assert (=> b!452575 m!716463))

(declare-fun m!716465 () Bool)

(assert (=> b!452580 m!716465))

(declare-fun m!716467 () Bool)

(assert (=> b!452582 m!716467))

(declare-fun m!716469 () Bool)

(assert (=> b!452576 m!716469))

(declare-fun m!716471 () Bool)

(assert (=> b!452595 m!716471))

(assert (=> b!452595 m!716471))

(declare-fun m!716473 () Bool)

(assert (=> b!452595 m!716473))

(declare-fun m!716475 () Bool)

(assert (=> b!452585 m!716475))

(declare-fun m!716477 () Bool)

(assert (=> b!452597 m!716477))

(declare-fun m!716479 () Bool)

(assert (=> b!452597 m!716479))

(declare-fun m!716481 () Bool)

(assert (=> b!452570 m!716481))

(declare-fun m!716483 () Bool)

(assert (=> b!452587 m!716483))

(assert (=> b!452587 m!716483))

(declare-fun m!716485 () Bool)

(assert (=> b!452587 m!716485))

(assert (=> b!452587 m!716485))

(declare-fun m!716487 () Bool)

(assert (=> b!452587 m!716487))

(declare-fun m!716489 () Bool)

(assert (=> b!452587 m!716489))

(declare-fun m!716491 () Bool)

(assert (=> b!452591 m!716491))

(declare-fun m!716493 () Bool)

(assert (=> b!452591 m!716493))

(declare-fun m!716495 () Bool)

(assert (=> b!452578 m!716495))

(declare-fun m!716497 () Bool)

(assert (=> b!452574 m!716497))

(declare-fun m!716499 () Bool)

(assert (=> b!452574 m!716499))

(declare-fun m!716501 () Bool)

(assert (=> b!452574 m!716501))

(declare-fun m!716503 () Bool)

(assert (=> b!452590 m!716503))

(declare-fun m!716505 () Bool)

(assert (=> b!452586 m!716505))

(declare-fun m!716507 () Bool)

(assert (=> b!452586 m!716507))

(declare-fun m!716509 () Bool)

(assert (=> b!452581 m!716509))

(assert (=> b!452581 m!716509))

(declare-fun m!716511 () Bool)

(assert (=> b!452581 m!716511))

(declare-fun m!716513 () Bool)

(assert (=> b!452581 m!716513))

(declare-fun m!716515 () Bool)

(assert (=> b!452599 m!716515))

(declare-fun m!716517 () Bool)

(assert (=> b!452594 m!716517))

(declare-fun m!716519 () Bool)

(assert (=> b!452592 m!716519))

(declare-fun m!716521 () Bool)

(assert (=> b!452592 m!716521))

(declare-fun m!716523 () Bool)

(assert (=> b!452592 m!716523))

(declare-fun m!716525 () Bool)

(assert (=> b!452592 m!716525))

(declare-fun m!716527 () Bool)

(assert (=> b!452592 m!716527))

(declare-fun m!716529 () Bool)

(assert (=> b!452592 m!716529))

(assert (=> b!452592 m!716527))

(declare-fun m!716531 () Bool)

(assert (=> b!452592 m!716531))

(declare-fun m!716533 () Bool)

(assert (=> b!452592 m!716533))

(declare-fun m!716535 () Bool)

(assert (=> b!452592 m!716535))

(declare-fun m!716537 () Bool)

(assert (=> b!452592 m!716537))

(declare-fun m!716539 () Bool)

(assert (=> b!452592 m!716539))

(declare-fun m!716541 () Bool)

(assert (=> b!452592 m!716541))

(declare-fun m!716543 () Bool)

(assert (=> b!452592 m!716543))

(assert (=> b!452592 m!716519))

(assert (=> b!452592 m!716539))

(assert (=> b!452592 m!716533))

(assert (=> b!452592 m!716523))

(declare-fun m!716545 () Bool)

(assert (=> b!452583 m!716545))

(assert (=> b!452583 m!716545))

(declare-fun m!716547 () Bool)

(assert (=> b!452583 m!716547))

(declare-fun m!716549 () Bool)

(assert (=> b!452583 m!716549))

(declare-fun m!716551 () Bool)

(assert (=> b!452579 m!716551))

(declare-fun m!716553 () Bool)

(assert (=> b!452577 m!716553))

(declare-fun m!716555 () Bool)

(assert (=> b!452571 m!716555))

(declare-fun m!716557 () Bool)

(assert (=> start!42858 m!716557))

(check-sat (not b_next!12563) (not b!452593) (not b!452581) b_and!48633 (not b!452597) (not b!452596) (not b!452594) (not b_next!12571) (not start!42858) b_and!48631 (not b!452570) (not b!452583) (not b!452582) (not b!452595) (not b!452587) (not b!452590) (not b!452599) (not b_next!12565) (not b!452576) (not b!452585) b_and!48635 b_and!48627 b_and!48629 (not b!452586) (not b!452578) (not b!452577) (not b_next!12561) (not b!452608) (not b!452591) (not b!452573) (not b!452579) (not b!452571) b_and!48625 (not b!452592) (not b!452575) (not b!452574) (not b!452580) (not b_next!12569) (not b_next!12567))
(check-sat (not b_next!12563) (not b_next!12565) (not b_next!12561) b_and!48633 (not b_next!12571) b_and!48631 b_and!48625 b_and!48635 b_and!48627 b_and!48629 (not b_next!12569) (not b_next!12567))
(get-model)

(declare-fun d!173013 () Bool)

(declare-fun lt!201224 () Bool)

(declare-fun e!276805 () Bool)

(assert (=> d!173013 (= lt!201224 e!276805)))

(declare-fun res!201117 () Bool)

(assert (=> d!173013 (=> (not res!201117) (not e!276805))))

(declare-fun list!1950 (BalanceConc!3058) List!4399)

(assert (=> d!173013 (= res!201117 (= (list!1950 (_1!2876 (lex!529 thiss!17480 rules!1920 (print!462 thiss!17480 (singletonSeq!397 (h!9786 tokens!465)))))) (list!1950 (singletonSeq!397 (h!9786 tokens!465)))))))

(declare-fun e!276804 () Bool)

(assert (=> d!173013 (= lt!201224 e!276804)))

(declare-fun res!201118 () Bool)

(assert (=> d!173013 (=> (not res!201118) (not e!276804))))

(declare-fun lt!201225 () tuple2!5320)

(declare-fun size!3608 (BalanceConc!3058) Int)

(assert (=> d!173013 (= res!201118 (= (size!3608 (_1!2876 lt!201225)) 1))))

(assert (=> d!173013 (= lt!201225 (lex!529 thiss!17480 rules!1920 (print!462 thiss!17480 (singletonSeq!397 (h!9786 tokens!465)))))))

(assert (=> d!173013 (not (isEmpty!3347 rules!1920))))

(assert (=> d!173013 (= (rulesProduceIndividualToken!486 thiss!17480 rules!1920 (h!9786 tokens!465)) lt!201224)))

(declare-fun b!452658 () Bool)

(declare-fun res!201119 () Bool)

(assert (=> b!452658 (=> (not res!201119) (not e!276804))))

(declare-fun apply!1123 (BalanceConc!3058 Int) Token!1446)

(assert (=> b!452658 (= res!201119 (= (apply!1123 (_1!2876 lt!201225) 0) (h!9786 tokens!465)))))

(declare-fun b!452659 () Bool)

(declare-fun isEmpty!3351 (BalanceConc!3056) Bool)

(assert (=> b!452659 (= e!276804 (isEmpty!3351 (_2!2876 lt!201225)))))

(declare-fun b!452660 () Bool)

(assert (=> b!452660 (= e!276805 (isEmpty!3351 (_2!2876 (lex!529 thiss!17480 rules!1920 (print!462 thiss!17480 (singletonSeq!397 (h!9786 tokens!465)))))))))

(assert (= (and d!173013 res!201118) b!452658))

(assert (= (and b!452658 res!201119) b!452659))

(assert (= (and d!173013 res!201117) b!452660))

(assert (=> d!173013 m!716461))

(declare-fun m!716609 () Bool)

(assert (=> d!173013 m!716609))

(assert (=> d!173013 m!716461))

(declare-fun m!716611 () Bool)

(assert (=> d!173013 m!716611))

(declare-fun m!716613 () Bool)

(assert (=> d!173013 m!716613))

(declare-fun m!716615 () Bool)

(assert (=> d!173013 m!716615))

(assert (=> d!173013 m!716469))

(declare-fun m!716617 () Bool)

(assert (=> d!173013 m!716617))

(assert (=> d!173013 m!716461))

(assert (=> d!173013 m!716613))

(declare-fun m!716619 () Bool)

(assert (=> b!452658 m!716619))

(declare-fun m!716621 () Bool)

(assert (=> b!452659 m!716621))

(assert (=> b!452660 m!716461))

(assert (=> b!452660 m!716461))

(assert (=> b!452660 m!716613))

(assert (=> b!452660 m!716613))

(assert (=> b!452660 m!716615))

(declare-fun m!716623 () Bool)

(assert (=> b!452660 m!716623))

(assert (=> b!452596 d!173013))

(declare-fun d!173017 () Bool)

(declare-fun list!1951 (Conc!1524) List!4397)

(assert (=> d!173017 (= (list!1947 lt!201192) (list!1951 (c!91574 lt!201192)))))

(declare-fun bs!56013 () Bool)

(assert (= bs!56013 d!173017))

(declare-fun m!716625 () Bool)

(assert (=> bs!56013 m!716625))

(assert (=> b!452575 d!173017))

(declare-fun d!173019 () Bool)

(declare-fun lt!201228 () BalanceConc!3056)

(assert (=> d!173019 (= (list!1947 lt!201228) (printList!411 thiss!17480 (list!1950 lt!201197)))))

(assert (=> d!173019 (= lt!201228 (printTailRec!423 thiss!17480 lt!201197 0 (BalanceConc!3057 Empty!1524)))))

(assert (=> d!173019 (= (print!462 thiss!17480 lt!201197) lt!201228)))

(declare-fun bs!56014 () Bool)

(assert (= bs!56014 d!173019))

(declare-fun m!716627 () Bool)

(assert (=> bs!56014 m!716627))

(declare-fun m!716629 () Bool)

(assert (=> bs!56014 m!716629))

(assert (=> bs!56014 m!716629))

(declare-fun m!716631 () Bool)

(assert (=> bs!56014 m!716631))

(assert (=> bs!56014 m!716463))

(assert (=> b!452575 d!173019))

(declare-fun d!173021 () Bool)

(declare-fun lt!201243 () BalanceConc!3056)

(declare-fun printListTailRec!206 (LexerInterface!737 List!4399 List!4397) List!4397)

(declare-fun dropList!242 (BalanceConc!3058 Int) List!4399)

(assert (=> d!173021 (= (list!1947 lt!201243) (printListTailRec!206 thiss!17480 (dropList!242 lt!201197 0) (list!1947 (BalanceConc!3057 Empty!1524))))))

(declare-fun e!276811 () BalanceConc!3056)

(assert (=> d!173021 (= lt!201243 e!276811)))

(declare-fun c!91594 () Bool)

(assert (=> d!173021 (= c!91594 (>= 0 (size!3608 lt!201197)))))

(declare-fun e!276810 () Bool)

(assert (=> d!173021 e!276810))

(declare-fun res!201122 () Bool)

(assert (=> d!173021 (=> (not res!201122) (not e!276810))))

(assert (=> d!173021 (= res!201122 (>= 0 0))))

(assert (=> d!173021 (= (printTailRec!423 thiss!17480 lt!201197 0 (BalanceConc!3057 Empty!1524)) lt!201243)))

(declare-fun b!452667 () Bool)

(assert (=> b!452667 (= e!276810 (<= 0 (size!3608 lt!201197)))))

(declare-fun b!452668 () Bool)

(assert (=> b!452668 (= e!276811 (BalanceConc!3057 Empty!1524))))

(declare-fun b!452669 () Bool)

(declare-fun ++!1276 (BalanceConc!3056 BalanceConc!3056) BalanceConc!3056)

(assert (=> b!452669 (= e!276811 (printTailRec!423 thiss!17480 lt!201197 (+ 0 1) (++!1276 (BalanceConc!3057 Empty!1524) (charsOf!494 (apply!1123 lt!201197 0)))))))

(declare-fun lt!201247 () List!4399)

(assert (=> b!452669 (= lt!201247 (list!1950 lt!201197))))

(declare-fun lt!201245 () Unit!7921)

(declare-fun lemmaDropApply!282 (List!4399 Int) Unit!7921)

(assert (=> b!452669 (= lt!201245 (lemmaDropApply!282 lt!201247 0))))

(declare-fun head!1102 (List!4399) Token!1446)

(declare-fun drop!311 (List!4399 Int) List!4399)

(declare-fun apply!1124 (List!4399 Int) Token!1446)

(assert (=> b!452669 (= (head!1102 (drop!311 lt!201247 0)) (apply!1124 lt!201247 0))))

(declare-fun lt!201248 () Unit!7921)

(assert (=> b!452669 (= lt!201248 lt!201245)))

(declare-fun lt!201249 () List!4399)

(assert (=> b!452669 (= lt!201249 (list!1950 lt!201197))))

(declare-fun lt!201246 () Unit!7921)

(declare-fun lemmaDropTail!274 (List!4399 Int) Unit!7921)

(assert (=> b!452669 (= lt!201246 (lemmaDropTail!274 lt!201249 0))))

(declare-fun tail!632 (List!4399) List!4399)

(assert (=> b!452669 (= (tail!632 (drop!311 lt!201249 0)) (drop!311 lt!201249 (+ 0 1)))))

(declare-fun lt!201244 () Unit!7921)

(assert (=> b!452669 (= lt!201244 lt!201246)))

(assert (= (and d!173021 res!201122) b!452667))

(assert (= (and d!173021 c!91594) b!452668))

(assert (= (and d!173021 (not c!91594)) b!452669))

(declare-fun m!716633 () Bool)

(assert (=> d!173021 m!716633))

(declare-fun m!716635 () Bool)

(assert (=> d!173021 m!716635))

(assert (=> d!173021 m!716635))

(declare-fun m!716637 () Bool)

(assert (=> d!173021 m!716637))

(declare-fun m!716639 () Bool)

(assert (=> d!173021 m!716639))

(assert (=> d!173021 m!716637))

(declare-fun m!716641 () Bool)

(assert (=> d!173021 m!716641))

(assert (=> b!452667 m!716633))

(declare-fun m!716643 () Bool)

(assert (=> b!452669 m!716643))

(declare-fun m!716645 () Bool)

(assert (=> b!452669 m!716645))

(declare-fun m!716647 () Bool)

(assert (=> b!452669 m!716647))

(assert (=> b!452669 m!716647))

(declare-fun m!716649 () Bool)

(assert (=> b!452669 m!716649))

(declare-fun m!716651 () Bool)

(assert (=> b!452669 m!716651))

(declare-fun m!716653 () Bool)

(assert (=> b!452669 m!716653))

(declare-fun m!716655 () Bool)

(assert (=> b!452669 m!716655))

(declare-fun m!716657 () Bool)

(assert (=> b!452669 m!716657))

(declare-fun m!716659 () Bool)

(assert (=> b!452669 m!716659))

(declare-fun m!716661 () Bool)

(assert (=> b!452669 m!716661))

(assert (=> b!452669 m!716629))

(declare-fun m!716663 () Bool)

(assert (=> b!452669 m!716663))

(assert (=> b!452669 m!716645))

(assert (=> b!452669 m!716659))

(assert (=> b!452669 m!716643))

(declare-fun m!716665 () Bool)

(assert (=> b!452669 m!716665))

(assert (=> b!452669 m!716655))

(assert (=> b!452575 d!173021))

(declare-fun d!173023 () Bool)

(declare-fun e!276814 () Bool)

(assert (=> d!173023 e!276814))

(declare-fun res!201125 () Bool)

(assert (=> d!173023 (=> (not res!201125) (not e!276814))))

(declare-fun lt!201252 () BalanceConc!3058)

(assert (=> d!173023 (= res!201125 (= (list!1950 lt!201252) (Cons!4389 (h!9786 tokens!465) Nil!4389)))))

(declare-fun singleton!191 (Token!1446) BalanceConc!3058)

(assert (=> d!173023 (= lt!201252 (singleton!191 (h!9786 tokens!465)))))

(assert (=> d!173023 (= (singletonSeq!397 (h!9786 tokens!465)) lt!201252)))

(declare-fun b!452672 () Bool)

(declare-fun isBalanced!468 (Conc!1525) Bool)

(assert (=> b!452672 (= e!276814 (isBalanced!468 (c!91576 lt!201252)))))

(assert (= (and d!173023 res!201125) b!452672))

(declare-fun m!716667 () Bool)

(assert (=> d!173023 m!716667))

(declare-fun m!716669 () Bool)

(assert (=> d!173023 m!716669))

(declare-fun m!716671 () Bool)

(assert (=> b!452672 m!716671))

(assert (=> b!452575 d!173023))

(declare-fun d!173025 () Bool)

(declare-fun c!91597 () Bool)

(assert (=> d!173025 (= c!91597 ((_ is Cons!4389) (Cons!4389 (h!9786 tokens!465) Nil!4389)))))

(declare-fun e!276817 () List!4397)

(assert (=> d!173025 (= (printList!411 thiss!17480 (Cons!4389 (h!9786 tokens!465) Nil!4389)) e!276817)))

(declare-fun b!452677 () Bool)

(assert (=> b!452677 (= e!276817 (++!1274 (list!1947 (charsOf!494 (h!9786 (Cons!4389 (h!9786 tokens!465) Nil!4389)))) (printList!411 thiss!17480 (t!71015 (Cons!4389 (h!9786 tokens!465) Nil!4389)))))))

(declare-fun b!452678 () Bool)

(assert (=> b!452678 (= e!276817 Nil!4387)))

(assert (= (and d!173025 c!91597) b!452677))

(assert (= (and d!173025 (not c!91597)) b!452678))

(declare-fun m!716673 () Bool)

(assert (=> b!452677 m!716673))

(assert (=> b!452677 m!716673))

(declare-fun m!716675 () Bool)

(assert (=> b!452677 m!716675))

(declare-fun m!716677 () Bool)

(assert (=> b!452677 m!716677))

(assert (=> b!452677 m!716675))

(assert (=> b!452677 m!716677))

(declare-fun m!716679 () Bool)

(assert (=> b!452677 m!716679))

(assert (=> b!452575 d!173025))

(declare-fun d!173027 () Bool)

(assert (=> d!173027 (= (inv!5460 (tag!1111 (rule!1542 (h!9786 tokens!465)))) (= (mod (str.len (value!28568 (tag!1111 (rule!1542 (h!9786 tokens!465))))) 2) 0))))

(assert (=> b!452597 d!173027))

(declare-fun d!173029 () Bool)

(declare-fun res!201128 () Bool)

(declare-fun e!276820 () Bool)

(assert (=> d!173029 (=> (not res!201128) (not e!276820))))

(declare-fun semiInverseModEq!338 (Int Int) Bool)

(assert (=> d!173029 (= res!201128 (semiInverseModEq!338 (toChars!1525 (transformation!851 (rule!1542 (h!9786 tokens!465)))) (toValue!1666 (transformation!851 (rule!1542 (h!9786 tokens!465))))))))

(assert (=> d!173029 (= (inv!5464 (transformation!851 (rule!1542 (h!9786 tokens!465)))) e!276820)))

(declare-fun b!452681 () Bool)

(declare-fun equivClasses!321 (Int Int) Bool)

(assert (=> b!452681 (= e!276820 (equivClasses!321 (toChars!1525 (transformation!851 (rule!1542 (h!9786 tokens!465)))) (toValue!1666 (transformation!851 (rule!1542 (h!9786 tokens!465))))))))

(assert (= (and d!173029 res!201128) b!452681))

(declare-fun m!716681 () Bool)

(assert (=> d!173029 m!716681))

(declare-fun m!716683 () Bool)

(assert (=> b!452681 m!716683))

(assert (=> b!452597 d!173029))

(declare-fun d!173031 () Bool)

(assert (=> d!173031 (= (isEmpty!3347 rules!1920) ((_ is Nil!4388) rules!1920))))

(assert (=> b!452576 d!173031))

(declare-fun d!173033 () Bool)

(declare-fun res!201133 () Bool)

(declare-fun e!276825 () Bool)

(assert (=> d!173033 (=> res!201133 e!276825)))

(assert (=> d!173033 (= res!201133 ((_ is Nil!4389) tokens!465))))

(assert (=> d!173033 (= (forall!1270 tokens!465 lambda!13185) e!276825)))

(declare-fun b!452686 () Bool)

(declare-fun e!276826 () Bool)

(assert (=> b!452686 (= e!276825 e!276826)))

(declare-fun res!201134 () Bool)

(assert (=> b!452686 (=> (not res!201134) (not e!276826))))

(declare-fun dynLambda!2651 (Int Token!1446) Bool)

(assert (=> b!452686 (= res!201134 (dynLambda!2651 lambda!13185 (h!9786 tokens!465)))))

(declare-fun b!452687 () Bool)

(assert (=> b!452687 (= e!276826 (forall!1270 (t!71015 tokens!465) lambda!13185))))

(assert (= (and d!173033 (not res!201133)) b!452686))

(assert (= (and b!452686 res!201134) b!452687))

(declare-fun b_lambda!18743 () Bool)

(assert (=> (not b_lambda!18743) (not b!452686)))

(declare-fun m!716685 () Bool)

(assert (=> b!452686 m!716685))

(declare-fun m!716687 () Bool)

(assert (=> b!452687 m!716687))

(assert (=> b!452594 d!173033))

(declare-fun bs!56026 () Bool)

(declare-fun d!173035 () Bool)

(assert (= bs!56026 (and d!173035 b!452594)))

(declare-fun lambda!13200 () Int)

(assert (=> bs!56026 (not (= lambda!13200 lambda!13185))))

(declare-fun bs!56027 () Bool)

(assert (= bs!56027 (and d!173035 b!452587)))

(assert (=> bs!56027 (= lambda!13200 lambda!13186)))

(declare-fun b!452741 () Bool)

(declare-fun e!276863 () Bool)

(assert (=> b!452741 (= e!276863 true)))

(declare-fun b!452740 () Bool)

(declare-fun e!276862 () Bool)

(assert (=> b!452740 (= e!276862 e!276863)))

(declare-fun b!452739 () Bool)

(declare-fun e!276861 () Bool)

(assert (=> b!452739 (= e!276861 e!276862)))

(assert (=> d!173035 e!276861))

(assert (= b!452740 b!452741))

(assert (= b!452739 b!452740))

(assert (= (and d!173035 ((_ is Cons!4388) rules!1920)) b!452739))

(assert (=> b!452741 (< (dynLambda!2646 order!3857 (toValue!1666 (transformation!851 (h!9785 rules!1920)))) (dynLambda!2647 order!3859 lambda!13200))))

(assert (=> b!452741 (< (dynLambda!2648 order!3861 (toChars!1525 (transformation!851 (h!9785 rules!1920)))) (dynLambda!2647 order!3859 lambda!13200))))

(assert (=> d!173035 true))

(declare-fun e!276860 () Bool)

(assert (=> d!173035 e!276860))

(declare-fun res!201152 () Bool)

(assert (=> d!173035 (=> (not res!201152) (not e!276860))))

(declare-fun lt!201307 () Bool)

(assert (=> d!173035 (= res!201152 (= lt!201307 (forall!1270 (list!1950 lt!201182) lambda!13200)))))

(declare-fun forall!1271 (BalanceConc!3058 Int) Bool)

(assert (=> d!173035 (= lt!201307 (forall!1271 lt!201182 lambda!13200))))

(assert (=> d!173035 (not (isEmpty!3347 rules!1920))))

(assert (=> d!173035 (= (rulesProduceEachTokenIndividually!529 thiss!17480 rules!1920 lt!201182) lt!201307)))

(declare-fun b!452738 () Bool)

(assert (=> b!452738 (= e!276860 (= lt!201307 (rulesProduceEachTokenIndividuallyList!313 thiss!17480 rules!1920 (list!1950 lt!201182))))))

(assert (= (and d!173035 res!201152) b!452738))

(declare-fun m!716805 () Bool)

(assert (=> d!173035 m!716805))

(assert (=> d!173035 m!716805))

(declare-fun m!716807 () Bool)

(assert (=> d!173035 m!716807))

(declare-fun m!716809 () Bool)

(assert (=> d!173035 m!716809))

(assert (=> d!173035 m!716469))

(assert (=> b!452738 m!716805))

(assert (=> b!452738 m!716805))

(declare-fun m!716811 () Bool)

(assert (=> b!452738 m!716811))

(assert (=> b!452573 d!173035))

(declare-fun d!173057 () Bool)

(declare-fun fromListB!478 (List!4399) BalanceConc!3058)

(assert (=> d!173057 (= (seqFromList!1067 tokens!465) (fromListB!478 tokens!465))))

(declare-fun bs!56028 () Bool)

(assert (= bs!56028 d!173057))

(declare-fun m!716813 () Bool)

(assert (=> bs!56028 m!716813))

(assert (=> b!452573 d!173057))

(declare-fun d!173059 () Bool)

(assert (=> d!173059 (= (list!1947 (seqFromList!1068 lt!201193)) (list!1951 (c!91574 (seqFromList!1068 lt!201193))))))

(declare-fun bs!56029 () Bool)

(assert (= bs!56029 d!173059))

(declare-fun m!716815 () Bool)

(assert (=> bs!56029 m!716815))

(assert (=> b!452595 d!173059))

(declare-fun d!173061 () Bool)

(declare-fun fromListB!479 (List!4397) BalanceConc!3056)

(assert (=> d!173061 (= (seqFromList!1068 lt!201193) (fromListB!479 lt!201193))))

(declare-fun bs!56030 () Bool)

(assert (= bs!56030 d!173061))

(declare-fun m!716817 () Bool)

(assert (=> bs!56030 m!716817))

(assert (=> b!452595 d!173061))

(declare-fun d!173063 () Bool)

(assert (=> d!173063 (= (get!1604 lt!201191) (v!15448 lt!201191))))

(assert (=> b!452574 d!173063))

(declare-fun d!173065 () Bool)

(declare-fun isEmpty!3355 (Option!1134) Bool)

(assert (=> d!173065 (= (isDefined!973 lt!201191) (not (isEmpty!3355 lt!201191)))))

(declare-fun bs!56031 () Bool)

(assert (= bs!56031 d!173065))

(declare-fun m!716819 () Bool)

(assert (=> bs!56031 m!716819))

(assert (=> b!452574 d!173065))

(declare-fun b!452787 () Bool)

(declare-fun e!276892 () Bool)

(declare-fun e!276893 () Bool)

(assert (=> b!452787 (= e!276892 e!276893)))

(declare-fun res!201189 () Bool)

(assert (=> b!452787 (=> (not res!201189) (not e!276893))))

(declare-fun lt!201344 () Option!1134)

(assert (=> b!452787 (= res!201189 (isDefined!973 lt!201344))))

(declare-fun b!452788 () Bool)

(declare-fun contains!985 (List!4398 Rule!1502) Bool)

(assert (=> b!452788 (= e!276893 (contains!985 rules!1920 (rule!1542 (_1!2875 (get!1604 lt!201344)))))))

(declare-fun b!452789 () Bool)

(declare-fun res!201188 () Bool)

(assert (=> b!452789 (=> (not res!201188) (not e!276893))))

(assert (=> b!452789 (= res!201188 (= (++!1274 (list!1947 (charsOf!494 (_1!2875 (get!1604 lt!201344)))) (_2!2875 (get!1604 lt!201344))) lt!201188))))

(declare-fun b!452790 () Bool)

(declare-fun res!201190 () Bool)

(assert (=> b!452790 (=> (not res!201190) (not e!276893))))

(declare-fun apply!1125 (TokenValueInjection!1518 BalanceConc!3056) TokenValue!873)

(assert (=> b!452790 (= res!201190 (= (value!28569 (_1!2875 (get!1604 lt!201344))) (apply!1125 (transformation!851 (rule!1542 (_1!2875 (get!1604 lt!201344)))) (seqFromList!1068 (originalCharacters!894 (_1!2875 (get!1604 lt!201344)))))))))

(declare-fun b!452791 () Bool)

(declare-fun e!276891 () Option!1134)

(declare-fun lt!201346 () Option!1134)

(declare-fun lt!201342 () Option!1134)

(assert (=> b!452791 (= e!276891 (ite (and ((_ is None!1133) lt!201346) ((_ is None!1133) lt!201342)) None!1133 (ite ((_ is None!1133) lt!201342) lt!201346 (ite ((_ is None!1133) lt!201346) lt!201342 (ite (>= (size!3605 (_1!2875 (v!15448 lt!201346))) (size!3605 (_1!2875 (v!15448 lt!201342)))) lt!201346 lt!201342)))))))

(declare-fun call!31356 () Option!1134)

(assert (=> b!452791 (= lt!201346 call!31356)))

(assert (=> b!452791 (= lt!201342 (maxPrefix!453 thiss!17480 (t!71014 rules!1920) lt!201188))))

(declare-fun d!173067 () Bool)

(assert (=> d!173067 e!276892))

(declare-fun res!201193 () Bool)

(assert (=> d!173067 (=> res!201193 e!276892)))

(assert (=> d!173067 (= res!201193 (isEmpty!3355 lt!201344))))

(assert (=> d!173067 (= lt!201344 e!276891)))

(declare-fun c!91615 () Bool)

(assert (=> d!173067 (= c!91615 (and ((_ is Cons!4388) rules!1920) ((_ is Nil!4388) (t!71014 rules!1920))))))

(declare-fun lt!201345 () Unit!7921)

(declare-fun lt!201343 () Unit!7921)

(assert (=> d!173067 (= lt!201345 lt!201343)))

(declare-fun isPrefix!511 (List!4397 List!4397) Bool)

(assert (=> d!173067 (isPrefix!511 lt!201188 lt!201188)))

(declare-fun lemmaIsPrefixRefl!285 (List!4397 List!4397) Unit!7921)

(assert (=> d!173067 (= lt!201343 (lemmaIsPrefixRefl!285 lt!201188 lt!201188))))

(declare-fun rulesValidInductive!280 (LexerInterface!737 List!4398) Bool)

(assert (=> d!173067 (rulesValidInductive!280 thiss!17480 rules!1920)))

(assert (=> d!173067 (= (maxPrefix!453 thiss!17480 rules!1920 lt!201188) lt!201344)))

(declare-fun b!452792 () Bool)

(assert (=> b!452792 (= e!276891 call!31356)))

(declare-fun bm!31351 () Bool)

(declare-fun maxPrefixOneRule!218 (LexerInterface!737 Rule!1502 List!4397) Option!1134)

(assert (=> bm!31351 (= call!31356 (maxPrefixOneRule!218 thiss!17480 (h!9785 rules!1920) lt!201188))))

(declare-fun b!452793 () Bool)

(declare-fun res!201191 () Bool)

(assert (=> b!452793 (=> (not res!201191) (not e!276893))))

(assert (=> b!452793 (= res!201191 (matchR!393 (regex!851 (rule!1542 (_1!2875 (get!1604 lt!201344)))) (list!1947 (charsOf!494 (_1!2875 (get!1604 lt!201344))))))))

(declare-fun b!452794 () Bool)

(declare-fun res!201194 () Bool)

(assert (=> b!452794 (=> (not res!201194) (not e!276893))))

(assert (=> b!452794 (= res!201194 (= (list!1947 (charsOf!494 (_1!2875 (get!1604 lt!201344)))) (originalCharacters!894 (_1!2875 (get!1604 lt!201344)))))))

(declare-fun b!452795 () Bool)

(declare-fun res!201192 () Bool)

(assert (=> b!452795 (=> (not res!201192) (not e!276893))))

(declare-fun size!3610 (List!4397) Int)

(assert (=> b!452795 (= res!201192 (< (size!3610 (_2!2875 (get!1604 lt!201344))) (size!3610 lt!201188)))))

(assert (= (and d!173067 c!91615) b!452792))

(assert (= (and d!173067 (not c!91615)) b!452791))

(assert (= (or b!452792 b!452791) bm!31351))

(assert (= (and d!173067 (not res!201193)) b!452787))

(assert (= (and b!452787 res!201189) b!452794))

(assert (= (and b!452794 res!201194) b!452795))

(assert (= (and b!452795 res!201192) b!452789))

(assert (= (and b!452789 res!201188) b!452790))

(assert (= (and b!452790 res!201190) b!452793))

(assert (= (and b!452793 res!201191) b!452788))

(declare-fun m!716859 () Bool)

(assert (=> b!452790 m!716859))

(declare-fun m!716861 () Bool)

(assert (=> b!452790 m!716861))

(assert (=> b!452790 m!716861))

(declare-fun m!716863 () Bool)

(assert (=> b!452790 m!716863))

(declare-fun m!716865 () Bool)

(assert (=> b!452791 m!716865))

(declare-fun m!716867 () Bool)

(assert (=> b!452787 m!716867))

(declare-fun m!716869 () Bool)

(assert (=> bm!31351 m!716869))

(assert (=> b!452789 m!716859))

(declare-fun m!716871 () Bool)

(assert (=> b!452789 m!716871))

(assert (=> b!452789 m!716871))

(declare-fun m!716873 () Bool)

(assert (=> b!452789 m!716873))

(assert (=> b!452789 m!716873))

(declare-fun m!716875 () Bool)

(assert (=> b!452789 m!716875))

(assert (=> b!452795 m!716859))

(declare-fun m!716877 () Bool)

(assert (=> b!452795 m!716877))

(declare-fun m!716879 () Bool)

(assert (=> b!452795 m!716879))

(assert (=> b!452793 m!716859))

(assert (=> b!452793 m!716871))

(assert (=> b!452793 m!716871))

(assert (=> b!452793 m!716873))

(assert (=> b!452793 m!716873))

(declare-fun m!716881 () Bool)

(assert (=> b!452793 m!716881))

(assert (=> b!452788 m!716859))

(declare-fun m!716883 () Bool)

(assert (=> b!452788 m!716883))

(declare-fun m!716885 () Bool)

(assert (=> d!173067 m!716885))

(declare-fun m!716887 () Bool)

(assert (=> d!173067 m!716887))

(declare-fun m!716889 () Bool)

(assert (=> d!173067 m!716889))

(declare-fun m!716891 () Bool)

(assert (=> d!173067 m!716891))

(assert (=> b!452794 m!716859))

(assert (=> b!452794 m!716871))

(assert (=> b!452794 m!716871))

(assert (=> b!452794 m!716873))

(assert (=> b!452574 d!173067))

(declare-fun b!452824 () Bool)

(declare-fun res!201211 () Bool)

(declare-fun e!276912 () Bool)

(assert (=> b!452824 (=> res!201211 e!276912)))

(declare-fun tail!634 (List!4397) List!4397)

(assert (=> b!452824 (= res!201211 (not (isEmpty!3348 (tail!634 lt!201188))))))

(declare-fun b!452825 () Bool)

(declare-fun e!276908 () Bool)

(declare-fun head!1104 (List!4397) C!3072)

(assert (=> b!452825 (= e!276908 (= (head!1104 lt!201188) (c!91575 (regex!851 (rule!1542 (h!9786 tokens!465))))))))

(declare-fun b!452826 () Bool)

(declare-fun e!276913 () Bool)

(declare-fun e!276910 () Bool)

(assert (=> b!452826 (= e!276913 e!276910)))

(declare-fun c!91622 () Bool)

(assert (=> b!452826 (= c!91622 ((_ is EmptyLang!1075) (regex!851 (rule!1542 (h!9786 tokens!465)))))))

(declare-fun b!452827 () Bool)

(declare-fun e!276911 () Bool)

(declare-fun nullable!242 (Regex!1075) Bool)

(assert (=> b!452827 (= e!276911 (nullable!242 (regex!851 (rule!1542 (h!9786 tokens!465)))))))

(declare-fun b!452828 () Bool)

(declare-fun res!201212 () Bool)

(assert (=> b!452828 (=> (not res!201212) (not e!276908))))

(declare-fun call!31359 () Bool)

(assert (=> b!452828 (= res!201212 (not call!31359))))

(declare-fun b!452829 () Bool)

(declare-fun res!201217 () Bool)

(assert (=> b!452829 (=> (not res!201217) (not e!276908))))

(assert (=> b!452829 (= res!201217 (isEmpty!3348 (tail!634 lt!201188)))))

(declare-fun b!452830 () Bool)

(declare-fun res!201216 () Bool)

(declare-fun e!276909 () Bool)

(assert (=> b!452830 (=> res!201216 e!276909)))

(assert (=> b!452830 (= res!201216 (not ((_ is ElementMatch!1075) (regex!851 (rule!1542 (h!9786 tokens!465))))))))

(assert (=> b!452830 (= e!276910 e!276909)))

(declare-fun d!173075 () Bool)

(assert (=> d!173075 e!276913))

(declare-fun c!91623 () Bool)

(assert (=> d!173075 (= c!91623 ((_ is EmptyExpr!1075) (regex!851 (rule!1542 (h!9786 tokens!465)))))))

(declare-fun lt!201349 () Bool)

(assert (=> d!173075 (= lt!201349 e!276911)))

(declare-fun c!91624 () Bool)

(assert (=> d!173075 (= c!91624 (isEmpty!3348 lt!201188))))

(declare-fun validRegex!317 (Regex!1075) Bool)

(assert (=> d!173075 (validRegex!317 (regex!851 (rule!1542 (h!9786 tokens!465))))))

(assert (=> d!173075 (= (matchR!393 (regex!851 (rule!1542 (h!9786 tokens!465))) lt!201188) lt!201349)))

(declare-fun b!452831 () Bool)

(declare-fun derivativeStep!208 (Regex!1075 C!3072) Regex!1075)

(assert (=> b!452831 (= e!276911 (matchR!393 (derivativeStep!208 (regex!851 (rule!1542 (h!9786 tokens!465))) (head!1104 lt!201188)) (tail!634 lt!201188)))))

(declare-fun b!452832 () Bool)

(assert (=> b!452832 (= e!276912 (not (= (head!1104 lt!201188) (c!91575 (regex!851 (rule!1542 (h!9786 tokens!465)))))))))

(declare-fun b!452833 () Bool)

(declare-fun e!276914 () Bool)

(assert (=> b!452833 (= e!276909 e!276914)))

(declare-fun res!201213 () Bool)

(assert (=> b!452833 (=> (not res!201213) (not e!276914))))

(assert (=> b!452833 (= res!201213 (not lt!201349))))

(declare-fun b!452834 () Bool)

(assert (=> b!452834 (= e!276913 (= lt!201349 call!31359))))

(declare-fun bm!31354 () Bool)

(assert (=> bm!31354 (= call!31359 (isEmpty!3348 lt!201188))))

(declare-fun b!452835 () Bool)

(assert (=> b!452835 (= e!276914 e!276912)))

(declare-fun res!201214 () Bool)

(assert (=> b!452835 (=> res!201214 e!276912)))

(assert (=> b!452835 (= res!201214 call!31359)))

(declare-fun b!452836 () Bool)

(assert (=> b!452836 (= e!276910 (not lt!201349))))

(declare-fun b!452837 () Bool)

(declare-fun res!201218 () Bool)

(assert (=> b!452837 (=> res!201218 e!276909)))

(assert (=> b!452837 (= res!201218 e!276908)))

(declare-fun res!201215 () Bool)

(assert (=> b!452837 (=> (not res!201215) (not e!276908))))

(assert (=> b!452837 (= res!201215 lt!201349)))

(assert (= (and d!173075 c!91624) b!452827))

(assert (= (and d!173075 (not c!91624)) b!452831))

(assert (= (and d!173075 c!91623) b!452834))

(assert (= (and d!173075 (not c!91623)) b!452826))

(assert (= (and b!452826 c!91622) b!452836))

(assert (= (and b!452826 (not c!91622)) b!452830))

(assert (= (and b!452830 (not res!201216)) b!452837))

(assert (= (and b!452837 res!201215) b!452828))

(assert (= (and b!452828 res!201212) b!452829))

(assert (= (and b!452829 res!201217) b!452825))

(assert (= (and b!452837 (not res!201218)) b!452833))

(assert (= (and b!452833 res!201213) b!452835))

(assert (= (and b!452835 (not res!201214)) b!452824))

(assert (= (and b!452824 (not res!201211)) b!452832))

(assert (= (or b!452834 b!452835 b!452828) bm!31354))

(declare-fun m!716893 () Bool)

(assert (=> b!452832 m!716893))

(declare-fun m!716895 () Bool)

(assert (=> bm!31354 m!716895))

(declare-fun m!716897 () Bool)

(assert (=> b!452829 m!716897))

(assert (=> b!452829 m!716897))

(declare-fun m!716899 () Bool)

(assert (=> b!452829 m!716899))

(assert (=> d!173075 m!716895))

(declare-fun m!716901 () Bool)

(assert (=> d!173075 m!716901))

(assert (=> b!452824 m!716897))

(assert (=> b!452824 m!716897))

(assert (=> b!452824 m!716899))

(assert (=> b!452825 m!716893))

(assert (=> b!452831 m!716893))

(assert (=> b!452831 m!716893))

(declare-fun m!716903 () Bool)

(assert (=> b!452831 m!716903))

(assert (=> b!452831 m!716897))

(assert (=> b!452831 m!716903))

(assert (=> b!452831 m!716897))

(declare-fun m!716905 () Bool)

(assert (=> b!452831 m!716905))

(declare-fun m!716907 () Bool)

(assert (=> b!452827 m!716907))

(assert (=> b!452580 d!173075))

(declare-fun d!173077 () Bool)

(assert (=> d!173077 (= (list!1947 (printWithSeparatorTokenWhenNeededRec!410 thiss!17480 rules!1920 lt!201182 separatorToken!170 0)) (list!1951 (c!91574 (printWithSeparatorTokenWhenNeededRec!410 thiss!17480 rules!1920 lt!201182 separatorToken!170 0))))))

(declare-fun bs!56033 () Bool)

(assert (= bs!56033 d!173077))

(declare-fun m!716909 () Bool)

(assert (=> bs!56033 m!716909))

(assert (=> b!452581 d!173077))

(declare-fun bs!56041 () Bool)

(declare-fun d!173079 () Bool)

(assert (= bs!56041 (and d!173079 b!452594)))

(declare-fun lambda!13208 () Int)

(assert (=> bs!56041 (= lambda!13208 lambda!13185)))

(declare-fun bs!56042 () Bool)

(assert (= bs!56042 (and d!173079 b!452587)))

(assert (=> bs!56042 (not (= lambda!13208 lambda!13186))))

(declare-fun bs!56043 () Bool)

(assert (= bs!56043 (and d!173079 d!173035)))

(assert (=> bs!56043 (not (= lambda!13208 lambda!13200))))

(declare-fun bs!56044 () Bool)

(declare-fun b!452896 () Bool)

(assert (= bs!56044 (and b!452896 b!452594)))

(declare-fun lambda!13209 () Int)

(assert (=> bs!56044 (not (= lambda!13209 lambda!13185))))

(declare-fun bs!56045 () Bool)

(assert (= bs!56045 (and b!452896 b!452587)))

(assert (=> bs!56045 (= lambda!13209 lambda!13186)))

(declare-fun bs!56046 () Bool)

(assert (= bs!56046 (and b!452896 d!173035)))

(assert (=> bs!56046 (= lambda!13209 lambda!13200)))

(declare-fun bs!56047 () Bool)

(assert (= bs!56047 (and b!452896 d!173079)))

(assert (=> bs!56047 (not (= lambda!13209 lambda!13208))))

(declare-fun b!452903 () Bool)

(declare-fun e!276962 () Bool)

(assert (=> b!452903 (= e!276962 true)))

(declare-fun b!452902 () Bool)

(declare-fun e!276961 () Bool)

(assert (=> b!452902 (= e!276961 e!276962)))

(declare-fun b!452901 () Bool)

(declare-fun e!276960 () Bool)

(assert (=> b!452901 (= e!276960 e!276961)))

(assert (=> b!452896 e!276960))

(assert (= b!452902 b!452903))

(assert (= b!452901 b!452902))

(assert (= (and b!452896 ((_ is Cons!4388) rules!1920)) b!452901))

(assert (=> b!452903 (< (dynLambda!2646 order!3857 (toValue!1666 (transformation!851 (h!9785 rules!1920)))) (dynLambda!2647 order!3859 lambda!13209))))

(assert (=> b!452903 (< (dynLambda!2648 order!3861 (toChars!1525 (transformation!851 (h!9785 rules!1920)))) (dynLambda!2647 order!3859 lambda!13209))))

(assert (=> b!452896 true))

(declare-fun b!452892 () Bool)

(declare-fun e!276959 () BalanceConc!3056)

(assert (=> b!452892 (= e!276959 (BalanceConc!3057 Empty!1524))))

(declare-fun b!452893 () Bool)

(declare-fun e!276958 () Bool)

(declare-fun lt!201394 () Option!1135)

(assert (=> b!452893 (= e!276958 (= (_1!2877 (v!15449 lt!201394)) (apply!1123 lt!201182 0)))))

(declare-fun b!452894 () Bool)

(declare-fun e!276955 () BalanceConc!3056)

(assert (=> b!452894 (= e!276955 (BalanceConc!3057 Empty!1524))))

(declare-fun call!31370 () Token!1446)

(assert (=> b!452894 (= (print!462 thiss!17480 (singletonSeq!397 call!31370)) (printTailRec!423 thiss!17480 (singletonSeq!397 call!31370) 0 (BalanceConc!3057 Empty!1524)))))

(declare-fun lt!201388 () Unit!7921)

(declare-fun Unit!7929 () Unit!7921)

(assert (=> b!452894 (= lt!201388 Unit!7929)))

(declare-fun call!31373 () BalanceConc!3056)

(declare-fun lt!201392 () Unit!7921)

(declare-fun lt!201397 () BalanceConc!3056)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!190 (LexerInterface!737 List!4398 List!4397 List!4397) Unit!7921)

(assert (=> b!452894 (= lt!201392 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!190 thiss!17480 rules!1920 (list!1947 call!31373) (list!1947 lt!201397)))))

(assert (=> b!452894 false))

(declare-fun lt!201393 () Unit!7921)

(declare-fun Unit!7930 () Unit!7921)

(assert (=> b!452894 (= lt!201393 Unit!7930)))

(declare-fun b!452895 () Bool)

(declare-fun c!91636 () Bool)

(declare-fun e!276957 () Bool)

(assert (=> b!452895 (= c!91636 e!276957)))

(declare-fun res!201253 () Bool)

(assert (=> b!452895 (=> (not res!201253) (not e!276957))))

(assert (=> b!452895 (= res!201253 ((_ is Some!1134) lt!201394))))

(declare-fun e!276956 () BalanceConc!3056)

(assert (=> b!452895 (= e!276956 e!276955)))

(declare-fun b!452897 () Bool)

(declare-fun call!31371 () BalanceConc!3056)

(assert (=> b!452897 (= e!276955 (++!1276 call!31371 lt!201397))))

(declare-fun b!452898 () Bool)

(declare-fun e!276954 () Bool)

(assert (=> b!452898 (= e!276954 (<= 0 (size!3608 lt!201182)))))

(declare-fun b!452899 () Bool)

(declare-fun call!31374 () Token!1446)

(assert (=> b!452899 (= e!276957 (not (= (_1!2877 (v!15449 lt!201394)) call!31374)))))

(declare-fun bm!31365 () Bool)

(declare-fun c!91635 () Bool)

(declare-fun call!31372 () BalanceConc!3056)

(assert (=> bm!31365 (= call!31371 (++!1276 call!31372 (ite c!91635 lt!201397 call!31373)))))

(assert (=> b!452896 (= e!276959 e!276956)))

(declare-fun lt!201396 () List!4399)

(assert (=> b!452896 (= lt!201396 (list!1950 lt!201182))))

(declare-fun lt!201391 () Unit!7921)

(assert (=> b!452896 (= lt!201391 (lemmaDropApply!282 lt!201396 0))))

(assert (=> b!452896 (= (head!1102 (drop!311 lt!201396 0)) (apply!1124 lt!201396 0))))

(declare-fun lt!201400 () Unit!7921)

(assert (=> b!452896 (= lt!201400 lt!201391)))

(declare-fun lt!201399 () List!4399)

(assert (=> b!452896 (= lt!201399 (list!1950 lt!201182))))

(declare-fun lt!201387 () Unit!7921)

(assert (=> b!452896 (= lt!201387 (lemmaDropTail!274 lt!201399 0))))

(assert (=> b!452896 (= (tail!632 (drop!311 lt!201399 0)) (drop!311 lt!201399 (+ 0 1)))))

(declare-fun lt!201398 () Unit!7921)

(assert (=> b!452896 (= lt!201398 lt!201387)))

(declare-fun lt!201389 () Unit!7921)

(assert (=> b!452896 (= lt!201389 (forallContained!404 (list!1950 lt!201182) lambda!13209 (apply!1123 lt!201182 0)))))

(assert (=> b!452896 (= lt!201397 (printWithSeparatorTokenWhenNeededRec!410 thiss!17480 rules!1920 lt!201182 separatorToken!170 (+ 0 1)))))

(assert (=> b!452896 (= lt!201394 (maxPrefixZipperSequence!416 thiss!17480 rules!1920 (++!1276 (charsOf!494 (apply!1123 lt!201182 0)) lt!201397)))))

(declare-fun res!201252 () Bool)

(assert (=> b!452896 (= res!201252 ((_ is Some!1134) lt!201394))))

(assert (=> b!452896 (=> (not res!201252) (not e!276958))))

(assert (=> b!452896 (= c!91635 e!276958)))

(declare-fun lt!201395 () BalanceConc!3056)

(assert (=> d!173079 (= (list!1947 lt!201395) (printWithSeparatorTokenWhenNeededList!418 thiss!17480 rules!1920 (dropList!242 lt!201182 0) separatorToken!170))))

(assert (=> d!173079 (= lt!201395 e!276959)))

(declare-fun c!91634 () Bool)

(assert (=> d!173079 (= c!91634 (>= 0 (size!3608 lt!201182)))))

(declare-fun lt!201390 () Unit!7921)

(declare-fun lemmaContentSubsetPreservesForall!186 (List!4399 List!4399 Int) Unit!7921)

(assert (=> d!173079 (= lt!201390 (lemmaContentSubsetPreservesForall!186 (list!1950 lt!201182) (dropList!242 lt!201182 0) lambda!13208))))

(assert (=> d!173079 e!276954))

(declare-fun res!201254 () Bool)

(assert (=> d!173079 (=> (not res!201254) (not e!276954))))

(assert (=> d!173079 (= res!201254 (>= 0 0))))

(assert (=> d!173079 (= (printWithSeparatorTokenWhenNeededRec!410 thiss!17480 rules!1920 lt!201182 separatorToken!170 0) lt!201395)))

(declare-fun b!452900 () Bool)

(assert (=> b!452900 (= e!276956 call!31371)))

(declare-fun bm!31366 () Bool)

(assert (=> bm!31366 (= call!31370 call!31374)))

(declare-fun bm!31367 () Bool)

(assert (=> bm!31367 (= call!31374 (apply!1123 lt!201182 0))))

(declare-fun bm!31368 () Bool)

(assert (=> bm!31368 (= call!31372 (charsOf!494 (ite c!91635 call!31374 call!31370)))))

(declare-fun bm!31369 () Bool)

(assert (=> bm!31369 (= call!31373 (charsOf!494 (ite c!91636 separatorToken!170 call!31370)))))

(assert (= (and d!173079 res!201254) b!452898))

(assert (= (and d!173079 c!91634) b!452892))

(assert (= (and d!173079 (not c!91634)) b!452896))

(assert (= (and b!452896 res!201252) b!452893))

(assert (= (and b!452896 c!91635) b!452900))

(assert (= (and b!452896 (not c!91635)) b!452895))

(assert (= (and b!452895 res!201253) b!452899))

(assert (= (and b!452895 c!91636) b!452897))

(assert (= (and b!452895 (not c!91636)) b!452894))

(assert (= (or b!452897 b!452894) bm!31366))

(assert (= (or b!452897 b!452894) bm!31369))

(assert (= (or b!452900 b!452899 bm!31366) bm!31367))

(assert (= (or b!452900 b!452897) bm!31368))

(assert (= (or b!452900 b!452897) bm!31365))

(declare-fun m!716951 () Bool)

(assert (=> b!452897 m!716951))

(declare-fun m!716953 () Bool)

(assert (=> b!452894 m!716953))

(declare-fun m!716955 () Bool)

(assert (=> b!452894 m!716955))

(declare-fun m!716957 () Bool)

(assert (=> b!452894 m!716957))

(assert (=> b!452894 m!716953))

(assert (=> b!452894 m!716957))

(declare-fun m!716959 () Bool)

(assert (=> b!452894 m!716959))

(declare-fun m!716961 () Bool)

(assert (=> b!452894 m!716961))

(assert (=> b!452894 m!716959))

(assert (=> b!452894 m!716953))

(declare-fun m!716963 () Bool)

(assert (=> b!452894 m!716963))

(declare-fun m!716965 () Bool)

(assert (=> b!452893 m!716965))

(declare-fun m!716967 () Bool)

(assert (=> b!452896 m!716967))

(declare-fun m!716969 () Bool)

(assert (=> b!452896 m!716969))

(assert (=> b!452896 m!716965))

(assert (=> b!452896 m!716967))

(declare-fun m!716971 () Bool)

(assert (=> b!452896 m!716971))

(declare-fun m!716973 () Bool)

(assert (=> b!452896 m!716973))

(declare-fun m!716975 () Bool)

(assert (=> b!452896 m!716975))

(assert (=> b!452896 m!716805))

(assert (=> b!452896 m!716965))

(declare-fun m!716977 () Bool)

(assert (=> b!452896 m!716977))

(assert (=> b!452896 m!716805))

(declare-fun m!716979 () Bool)

(assert (=> b!452896 m!716979))

(declare-fun m!716981 () Bool)

(assert (=> b!452896 m!716981))

(declare-fun m!716983 () Bool)

(assert (=> b!452896 m!716983))

(declare-fun m!716985 () Bool)

(assert (=> b!452896 m!716985))

(assert (=> b!452896 m!716969))

(declare-fun m!716987 () Bool)

(assert (=> b!452896 m!716987))

(assert (=> b!452896 m!716975))

(declare-fun m!716989 () Bool)

(assert (=> b!452896 m!716989))

(assert (=> b!452896 m!716973))

(declare-fun m!716991 () Bool)

(assert (=> b!452896 m!716991))

(assert (=> b!452896 m!716965))

(declare-fun m!716993 () Bool)

(assert (=> b!452898 m!716993))

(declare-fun m!716995 () Bool)

(assert (=> bm!31369 m!716995))

(declare-fun m!716997 () Bool)

(assert (=> bm!31368 m!716997))

(assert (=> bm!31367 m!716965))

(declare-fun m!716999 () Bool)

(assert (=> d!173079 m!716999))

(declare-fun m!717001 () Bool)

(assert (=> d!173079 m!717001))

(assert (=> d!173079 m!716993))

(assert (=> d!173079 m!716805))

(assert (=> d!173079 m!716999))

(declare-fun m!717003 () Bool)

(assert (=> d!173079 m!717003))

(declare-fun m!717005 () Bool)

(assert (=> d!173079 m!717005))

(assert (=> d!173079 m!716999))

(assert (=> d!173079 m!716805))

(declare-fun m!717007 () Bool)

(assert (=> bm!31365 m!717007))

(assert (=> b!452581 d!173079))

(declare-fun bs!56070 () Bool)

(declare-fun b!453009 () Bool)

(assert (= bs!56070 (and b!453009 b!452594)))

(declare-fun lambda!13215 () Int)

(assert (=> bs!56070 (not (= lambda!13215 lambda!13185))))

(declare-fun bs!56071 () Bool)

(assert (= bs!56071 (and b!453009 b!452587)))

(assert (=> bs!56071 (= lambda!13215 lambda!13186)))

(declare-fun bs!56072 () Bool)

(assert (= bs!56072 (and b!453009 d!173079)))

(assert (=> bs!56072 (not (= lambda!13215 lambda!13208))))

(declare-fun bs!56073 () Bool)

(assert (= bs!56073 (and b!453009 b!452896)))

(assert (=> bs!56073 (= lambda!13215 lambda!13209)))

(declare-fun bs!56074 () Bool)

(assert (= bs!56074 (and b!453009 d!173035)))

(assert (=> bs!56074 (= lambda!13215 lambda!13200)))

(declare-fun b!453016 () Bool)

(declare-fun e!277028 () Bool)

(assert (=> b!453016 (= e!277028 true)))

(declare-fun b!453015 () Bool)

(declare-fun e!277027 () Bool)

(assert (=> b!453015 (= e!277027 e!277028)))

(declare-fun b!453014 () Bool)

(declare-fun e!277026 () Bool)

(assert (=> b!453014 (= e!277026 e!277027)))

(assert (=> b!453009 e!277026))

(assert (= b!453015 b!453016))

(assert (= b!453014 b!453015))

(assert (= (and b!453009 ((_ is Cons!4388) rules!1920)) b!453014))

(assert (=> b!453016 (< (dynLambda!2646 order!3857 (toValue!1666 (transformation!851 (h!9785 rules!1920)))) (dynLambda!2647 order!3859 lambda!13215))))

(assert (=> b!453016 (< (dynLambda!2648 order!3861 (toChars!1525 (transformation!851 (h!9785 rules!1920)))) (dynLambda!2647 order!3859 lambda!13215))))

(assert (=> b!453009 true))

(declare-fun b!453004 () Bool)

(declare-fun e!277023 () BalanceConc!3056)

(assert (=> b!453004 (= e!277023 (charsOf!494 separatorToken!170))))

(declare-fun bm!31393 () Bool)

(declare-fun c!91665 () Bool)

(declare-fun c!91663 () Bool)

(assert (=> bm!31393 (= c!91665 c!91663)))

(declare-fun call!31402 () List!4397)

(declare-fun e!277025 () List!4397)

(declare-fun call!31400 () List!4397)

(declare-fun lt!201445 () List!4397)

(assert (=> bm!31393 (= call!31400 (++!1274 e!277025 (ite c!91663 lt!201445 call!31402)))))

(declare-fun bm!31394 () Bool)

(declare-fun call!31398 () BalanceConc!3056)

(assert (=> bm!31394 (= call!31398 (charsOf!494 (h!9786 tokens!465)))))

(declare-fun b!453005 () Bool)

(declare-fun c!91664 () Bool)

(declare-fun lt!201449 () Option!1134)

(assert (=> b!453005 (= c!91664 (and ((_ is Some!1133) lt!201449) (not (= (_1!2875 (v!15448 lt!201449)) (h!9786 tokens!465)))))))

(declare-fun e!277022 () List!4397)

(declare-fun e!277021 () List!4397)

(assert (=> b!453005 (= e!277022 e!277021)))

(declare-fun bm!31395 () Bool)

(declare-fun call!31401 () BalanceConc!3056)

(assert (=> bm!31395 (= call!31401 call!31398)))

(declare-fun b!453006 () Bool)

(assert (=> b!453006 (= e!277021 Nil!4387)))

(assert (=> b!453006 (= (print!462 thiss!17480 (singletonSeq!397 (h!9786 tokens!465))) (printTailRec!423 thiss!17480 (singletonSeq!397 (h!9786 tokens!465)) 0 (BalanceConc!3057 Empty!1524)))))

(declare-fun lt!201446 () Unit!7921)

(declare-fun Unit!7933 () Unit!7921)

(assert (=> b!453006 (= lt!201446 Unit!7933)))

(declare-fun lt!201447 () Unit!7921)

(assert (=> b!453006 (= lt!201447 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!190 thiss!17480 rules!1920 call!31402 lt!201445))))

(assert (=> b!453006 false))

(declare-fun lt!201448 () Unit!7921)

(declare-fun Unit!7934 () Unit!7921)

(assert (=> b!453006 (= lt!201448 Unit!7934)))

(declare-fun b!453007 () Bool)

(assert (=> b!453007 (= e!277022 call!31400)))

(declare-fun b!453008 () Bool)

(assert (=> b!453008 (= e!277025 (list!1947 call!31401))))

(declare-fun e!277024 () List!4397)

(assert (=> b!453009 (= e!277024 e!277022)))

(declare-fun lt!201444 () Unit!7921)

(assert (=> b!453009 (= lt!201444 (forallContained!404 tokens!465 lambda!13215 (h!9786 tokens!465)))))

(assert (=> b!453009 (= lt!201445 (printWithSeparatorTokenWhenNeededList!418 thiss!17480 rules!1920 (t!71015 tokens!465) separatorToken!170))))

(assert (=> b!453009 (= lt!201449 (maxPrefix!453 thiss!17480 rules!1920 (++!1274 (list!1947 (charsOf!494 (h!9786 tokens!465))) lt!201445)))))

(assert (=> b!453009 (= c!91663 (and ((_ is Some!1133) lt!201449) (= (_1!2875 (v!15448 lt!201449)) (h!9786 tokens!465))))))

(declare-fun call!31399 () List!4397)

(declare-fun bm!31396 () Bool)

(assert (=> bm!31396 (= call!31399 (list!1947 (ite c!91663 call!31398 e!277023)))))

(declare-fun d!173093 () Bool)

(declare-fun c!91666 () Bool)

(assert (=> d!173093 (= c!91666 ((_ is Cons!4389) tokens!465))))

(assert (=> d!173093 (= (printWithSeparatorTokenWhenNeededList!418 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!277024)))

(declare-fun b!453010 () Bool)

(assert (=> b!453010 (= e!277024 Nil!4387)))

(declare-fun b!453011 () Bool)

(assert (=> b!453011 (= e!277021 (++!1274 call!31400 lt!201445))))

(declare-fun b!453012 () Bool)

(assert (=> b!453012 (= e!277023 call!31401)))

(declare-fun bm!31397 () Bool)

(assert (=> bm!31397 (= call!31402 call!31399)))

(declare-fun c!91667 () Bool)

(assert (=> bm!31397 (= c!91667 c!91664)))

(declare-fun b!453013 () Bool)

(assert (=> b!453013 (= e!277025 call!31399)))

(assert (= (and d!173093 c!91666) b!453009))

(assert (= (and d!173093 (not c!91666)) b!453010))

(assert (= (and b!453009 c!91663) b!453007))

(assert (= (and b!453009 (not c!91663)) b!453005))

(assert (= (and b!453005 c!91664) b!453011))

(assert (= (and b!453005 (not c!91664)) b!453006))

(assert (= (or b!453011 b!453006) bm!31395))

(assert (= (or b!453011 b!453006) bm!31397))

(assert (= (and bm!31397 c!91667) b!453004))

(assert (= (and bm!31397 (not c!91667)) b!453012))

(assert (= (or b!453007 bm!31395) bm!31394))

(assert (= (or b!453007 bm!31397) bm!31396))

(assert (= (or b!453007 b!453011) bm!31393))

(assert (= (and bm!31393 c!91665) b!453013))

(assert (= (and bm!31393 (not c!91665)) b!453008))

(assert (=> b!453004 m!716527))

(declare-fun m!717143 () Bool)

(assert (=> bm!31393 m!717143))

(declare-fun m!717145 () Bool)

(assert (=> b!453008 m!717145))

(declare-fun m!717147 () Bool)

(assert (=> b!453011 m!717147))

(assert (=> b!453006 m!716461))

(assert (=> b!453006 m!716461))

(assert (=> b!453006 m!716613))

(assert (=> b!453006 m!716461))

(declare-fun m!717149 () Bool)

(assert (=> b!453006 m!717149))

(declare-fun m!717151 () Bool)

(assert (=> b!453006 m!717151))

(declare-fun m!717153 () Bool)

(assert (=> bm!31396 m!717153))

(assert (=> bm!31394 m!716533))

(assert (=> b!453009 m!716521))

(declare-fun m!717155 () Bool)

(assert (=> b!453009 m!717155))

(assert (=> b!453009 m!716535))

(declare-fun m!717157 () Bool)

(assert (=> b!453009 m!717157))

(assert (=> b!453009 m!716533))

(assert (=> b!453009 m!716533))

(assert (=> b!453009 m!716535))

(assert (=> b!453009 m!717157))

(declare-fun m!717159 () Bool)

(assert (=> b!453009 m!717159))

(assert (=> b!452581 d!173093))

(declare-fun d!173111 () Bool)

(declare-fun lt!201450 () Bool)

(declare-fun e!277030 () Bool)

(assert (=> d!173111 (= lt!201450 e!277030)))

(declare-fun res!201297 () Bool)

(assert (=> d!173111 (=> (not res!201297) (not e!277030))))

(assert (=> d!173111 (= res!201297 (= (list!1950 (_1!2876 (lex!529 thiss!17480 rules!1920 (print!462 thiss!17480 (singletonSeq!397 separatorToken!170))))) (list!1950 (singletonSeq!397 separatorToken!170))))))

(declare-fun e!277029 () Bool)

(assert (=> d!173111 (= lt!201450 e!277029)))

(declare-fun res!201298 () Bool)

(assert (=> d!173111 (=> (not res!201298) (not e!277029))))

(declare-fun lt!201451 () tuple2!5320)

(assert (=> d!173111 (= res!201298 (= (size!3608 (_1!2876 lt!201451)) 1))))

(assert (=> d!173111 (= lt!201451 (lex!529 thiss!17480 rules!1920 (print!462 thiss!17480 (singletonSeq!397 separatorToken!170))))))

(assert (=> d!173111 (not (isEmpty!3347 rules!1920))))

(assert (=> d!173111 (= (rulesProduceIndividualToken!486 thiss!17480 rules!1920 separatorToken!170) lt!201450)))

(declare-fun b!453017 () Bool)

(declare-fun res!201299 () Bool)

(assert (=> b!453017 (=> (not res!201299) (not e!277029))))

(assert (=> b!453017 (= res!201299 (= (apply!1123 (_1!2876 lt!201451) 0) separatorToken!170))))

(declare-fun b!453018 () Bool)

(assert (=> b!453018 (= e!277029 (isEmpty!3351 (_2!2876 lt!201451)))))

(declare-fun b!453019 () Bool)

(assert (=> b!453019 (= e!277030 (isEmpty!3351 (_2!2876 (lex!529 thiss!17480 rules!1920 (print!462 thiss!17480 (singletonSeq!397 separatorToken!170))))))))

(assert (= (and d!173111 res!201298) b!453017))

(assert (= (and b!453017 res!201299) b!453018))

(assert (= (and d!173111 res!201297) b!453019))

(declare-fun m!717161 () Bool)

(assert (=> d!173111 m!717161))

(declare-fun m!717163 () Bool)

(assert (=> d!173111 m!717163))

(assert (=> d!173111 m!717161))

(declare-fun m!717165 () Bool)

(assert (=> d!173111 m!717165))

(declare-fun m!717167 () Bool)

(assert (=> d!173111 m!717167))

(declare-fun m!717169 () Bool)

(assert (=> d!173111 m!717169))

(assert (=> d!173111 m!716469))

(declare-fun m!717171 () Bool)

(assert (=> d!173111 m!717171))

(assert (=> d!173111 m!717161))

(assert (=> d!173111 m!717167))

(declare-fun m!717173 () Bool)

(assert (=> b!453017 m!717173))

(declare-fun m!717175 () Bool)

(assert (=> b!453018 m!717175))

(assert (=> b!453019 m!717161))

(assert (=> b!453019 m!717161))

(assert (=> b!453019 m!717167))

(assert (=> b!453019 m!717167))

(assert (=> b!453019 m!717169))

(declare-fun m!717177 () Bool)

(assert (=> b!453019 m!717177))

(assert (=> b!452582 d!173111))

(declare-fun d!173113 () Bool)

(declare-fun res!201302 () Bool)

(declare-fun e!277033 () Bool)

(assert (=> d!173113 (=> (not res!201302) (not e!277033))))

(declare-fun rulesValid!304 (LexerInterface!737 List!4398) Bool)

(assert (=> d!173113 (= res!201302 (rulesValid!304 thiss!17480 rules!1920))))

(assert (=> d!173113 (= (rulesInvariant!703 thiss!17480 rules!1920) e!277033)))

(declare-fun b!453022 () Bool)

(declare-datatypes ((List!4401 0))(
  ( (Nil!4391) (Cons!4391 (h!9788 String!5445) (t!71085 List!4401)) )
))
(declare-fun noDuplicateTag!304 (LexerInterface!737 List!4398 List!4401) Bool)

(assert (=> b!453022 (= e!277033 (noDuplicateTag!304 thiss!17480 rules!1920 Nil!4391))))

(assert (= (and d!173113 res!201302) b!453022))

(declare-fun m!717179 () Bool)

(assert (=> d!173113 m!717179))

(declare-fun m!717181 () Bool)

(assert (=> b!453022 m!717181))

(assert (=> b!452577 d!173113))

(declare-fun b!453033 () Bool)

(declare-fun e!277041 () Bool)

(declare-fun e!277042 () Bool)

(assert (=> b!453033 (= e!277041 e!277042)))

(declare-fun c!91672 () Bool)

(assert (=> b!453033 (= c!91672 ((_ is IntegerValue!2620) (value!28569 separatorToken!170)))))

(declare-fun b!453034 () Bool)

(declare-fun e!277040 () Bool)

(declare-fun inv!15 (TokenValue!873) Bool)

(assert (=> b!453034 (= e!277040 (inv!15 (value!28569 separatorToken!170)))))

(declare-fun b!453035 () Bool)

(declare-fun res!201305 () Bool)

(assert (=> b!453035 (=> res!201305 e!277040)))

(assert (=> b!453035 (= res!201305 (not ((_ is IntegerValue!2621) (value!28569 separatorToken!170))))))

(assert (=> b!453035 (= e!277042 e!277040)))

(declare-fun d!173115 () Bool)

(declare-fun c!91673 () Bool)

(assert (=> d!173115 (= c!91673 ((_ is IntegerValue!2619) (value!28569 separatorToken!170)))))

(assert (=> d!173115 (= (inv!21 (value!28569 separatorToken!170)) e!277041)))

(declare-fun b!453036 () Bool)

(declare-fun inv!16 (TokenValue!873) Bool)

(assert (=> b!453036 (= e!277041 (inv!16 (value!28569 separatorToken!170)))))

(declare-fun b!453037 () Bool)

(declare-fun inv!17 (TokenValue!873) Bool)

(assert (=> b!453037 (= e!277042 (inv!17 (value!28569 separatorToken!170)))))

(assert (= (and d!173115 c!91673) b!453036))

(assert (= (and d!173115 (not c!91673)) b!453033))

(assert (= (and b!453033 c!91672) b!453037))

(assert (= (and b!453033 (not c!91672)) b!453035))

(assert (= (and b!453035 (not res!201305)) b!453034))

(declare-fun m!717183 () Bool)

(assert (=> b!453034 m!717183))

(declare-fun m!717185 () Bool)

(assert (=> b!453036 m!717185))

(declare-fun m!717187 () Bool)

(assert (=> b!453037 m!717187))

(assert (=> b!452599 d!173115))

(declare-fun d!173117 () Bool)

(assert (=> d!173117 (= (isEmpty!3348 (_2!2875 lt!201185)) ((_ is Nil!4387) (_2!2875 lt!201185)))))

(assert (=> b!452578 d!173117))

(declare-fun d!173119 () Bool)

(declare-fun res!201310 () Bool)

(declare-fun e!277045 () Bool)

(assert (=> d!173119 (=> (not res!201310) (not e!277045))))

(assert (=> d!173119 (= res!201310 (not (isEmpty!3348 (originalCharacters!894 separatorToken!170))))))

(assert (=> d!173119 (= (inv!5463 separatorToken!170) e!277045)))

(declare-fun b!453042 () Bool)

(declare-fun res!201311 () Bool)

(assert (=> b!453042 (=> (not res!201311) (not e!277045))))

(declare-fun dynLambda!2652 (Int TokenValue!873) BalanceConc!3056)

(assert (=> b!453042 (= res!201311 (= (originalCharacters!894 separatorToken!170) (list!1947 (dynLambda!2652 (toChars!1525 (transformation!851 (rule!1542 separatorToken!170))) (value!28569 separatorToken!170)))))))

(declare-fun b!453043 () Bool)

(assert (=> b!453043 (= e!277045 (= (size!3605 separatorToken!170) (size!3610 (originalCharacters!894 separatorToken!170))))))

(assert (= (and d!173119 res!201310) b!453042))

(assert (= (and b!453042 res!201311) b!453043))

(declare-fun b_lambda!18753 () Bool)

(assert (=> (not b_lambda!18753) (not b!453042)))

(declare-fun t!71050 () Bool)

(declare-fun tb!45513 () Bool)

(assert (=> (and b!452589 (= (toChars!1525 (transformation!851 (rule!1542 separatorToken!170))) (toChars!1525 (transformation!851 (rule!1542 separatorToken!170)))) t!71050) tb!45513))

(declare-fun b!453048 () Bool)

(declare-fun e!277048 () Bool)

(declare-fun tp!125900 () Bool)

(declare-fun inv!5467 (Conc!1524) Bool)

(assert (=> b!453048 (= e!277048 (and (inv!5467 (c!91574 (dynLambda!2652 (toChars!1525 (transformation!851 (rule!1542 separatorToken!170))) (value!28569 separatorToken!170)))) tp!125900))))

(declare-fun result!50070 () Bool)

(declare-fun inv!5468 (BalanceConc!3056) Bool)

(assert (=> tb!45513 (= result!50070 (and (inv!5468 (dynLambda!2652 (toChars!1525 (transformation!851 (rule!1542 separatorToken!170))) (value!28569 separatorToken!170))) e!277048))))

(assert (= tb!45513 b!453048))

(declare-fun m!717189 () Bool)

(assert (=> b!453048 m!717189))

(declare-fun m!717191 () Bool)

(assert (=> tb!45513 m!717191))

(assert (=> b!453042 t!71050))

(declare-fun b_and!48655 () Bool)

(assert (= b_and!48627 (and (=> t!71050 result!50070) b_and!48655)))

(declare-fun tb!45515 () Bool)

(declare-fun t!71052 () Bool)

(assert (=> (and b!452584 (= (toChars!1525 (transformation!851 (rule!1542 (h!9786 tokens!465)))) (toChars!1525 (transformation!851 (rule!1542 separatorToken!170)))) t!71052) tb!45515))

(declare-fun result!50074 () Bool)

(assert (= result!50074 result!50070))

(assert (=> b!453042 t!71052))

(declare-fun b_and!48657 () Bool)

(assert (= b_and!48631 (and (=> t!71052 result!50074) b_and!48657)))

(declare-fun t!71054 () Bool)

(declare-fun tb!45517 () Bool)

(assert (=> (and b!452598 (= (toChars!1525 (transformation!851 (h!9785 rules!1920))) (toChars!1525 (transformation!851 (rule!1542 separatorToken!170)))) t!71054) tb!45517))

(declare-fun result!50076 () Bool)

(assert (= result!50076 result!50070))

(assert (=> b!453042 t!71054))

(declare-fun b_and!48659 () Bool)

(assert (= b_and!48635 (and (=> t!71054 result!50076) b_and!48659)))

(declare-fun m!717193 () Bool)

(assert (=> d!173119 m!717193))

(declare-fun m!717195 () Bool)

(assert (=> b!453042 m!717195))

(assert (=> b!453042 m!717195))

(declare-fun m!717197 () Bool)

(assert (=> b!453042 m!717197))

(declare-fun m!717199 () Bool)

(assert (=> b!453043 m!717199))

(assert (=> start!42858 d!173119))

(declare-fun b!453059 () Bool)

(declare-fun res!201316 () Bool)

(declare-fun e!277054 () Bool)

(assert (=> b!453059 (=> (not res!201316) (not e!277054))))

(declare-fun lt!201454 () List!4397)

(assert (=> b!453059 (= res!201316 (= (size!3610 lt!201454) (+ (size!3610 lt!201188) (size!3610 lt!201195))))))

(declare-fun d!173121 () Bool)

(assert (=> d!173121 e!277054))

(declare-fun res!201317 () Bool)

(assert (=> d!173121 (=> (not res!201317) (not e!277054))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!735 (List!4397) (InoxSet C!3072))

(assert (=> d!173121 (= res!201317 (= (content!735 lt!201454) ((_ map or) (content!735 lt!201188) (content!735 lt!201195))))))

(declare-fun e!277053 () List!4397)

(assert (=> d!173121 (= lt!201454 e!277053)))

(declare-fun c!91676 () Bool)

(assert (=> d!173121 (= c!91676 ((_ is Nil!4387) lt!201188))))

(assert (=> d!173121 (= (++!1274 lt!201188 lt!201195) lt!201454)))

(declare-fun b!453057 () Bool)

(assert (=> b!453057 (= e!277053 lt!201195)))

(declare-fun b!453058 () Bool)

(assert (=> b!453058 (= e!277053 (Cons!4387 (h!9784 lt!201188) (++!1274 (t!71013 lt!201188) lt!201195)))))

(declare-fun b!453060 () Bool)

(assert (=> b!453060 (= e!277054 (or (not (= lt!201195 Nil!4387)) (= lt!201454 lt!201188)))))

(assert (= (and d!173121 c!91676) b!453057))

(assert (= (and d!173121 (not c!91676)) b!453058))

(assert (= (and d!173121 res!201317) b!453059))

(assert (= (and b!453059 res!201316) b!453060))

(declare-fun m!717201 () Bool)

(assert (=> b!453059 m!717201))

(assert (=> b!453059 m!716879))

(declare-fun m!717203 () Bool)

(assert (=> b!453059 m!717203))

(declare-fun m!717205 () Bool)

(assert (=> d!173121 m!717205))

(declare-fun m!717207 () Bool)

(assert (=> d!173121 m!717207))

(declare-fun m!717209 () Bool)

(assert (=> d!173121 m!717209))

(declare-fun m!717211 () Bool)

(assert (=> b!453058 m!717211))

(assert (=> b!452579 d!173121))

(declare-fun d!173123 () Bool)

(declare-fun res!201322 () Bool)

(declare-fun e!277059 () Bool)

(assert (=> d!173123 (=> res!201322 e!277059)))

(assert (=> d!173123 (= res!201322 (not ((_ is Cons!4388) rules!1920)))))

(assert (=> d!173123 (= (sepAndNonSepRulesDisjointChars!440 rules!1920 rules!1920) e!277059)))

(declare-fun b!453065 () Bool)

(declare-fun e!277060 () Bool)

(assert (=> b!453065 (= e!277059 e!277060)))

(declare-fun res!201323 () Bool)

(assert (=> b!453065 (=> (not res!201323) (not e!277060))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!197 (Rule!1502 List!4398) Bool)

(assert (=> b!453065 (= res!201323 (ruleDisjointCharsFromAllFromOtherType!197 (h!9785 rules!1920) rules!1920))))

(declare-fun b!453066 () Bool)

(assert (=> b!453066 (= e!277060 (sepAndNonSepRulesDisjointChars!440 rules!1920 (t!71014 rules!1920)))))

(assert (= (and d!173123 (not res!201322)) b!453065))

(assert (= (and b!453065 res!201323) b!453066))

(declare-fun m!717213 () Bool)

(assert (=> b!453065 m!717213))

(declare-fun m!717215 () Bool)

(assert (=> b!453066 m!717215))

(assert (=> b!452585 d!173123))

(declare-fun d!173125 () Bool)

(assert (=> d!173125 (= (inv!5460 (tag!1111 (rule!1542 separatorToken!170))) (= (mod (str.len (value!28568 (tag!1111 (rule!1542 separatorToken!170)))) 2) 0))))

(assert (=> b!452586 d!173125))

(declare-fun d!173127 () Bool)

(declare-fun res!201324 () Bool)

(declare-fun e!277061 () Bool)

(assert (=> d!173127 (=> (not res!201324) (not e!277061))))

(assert (=> d!173127 (= res!201324 (semiInverseModEq!338 (toChars!1525 (transformation!851 (rule!1542 separatorToken!170))) (toValue!1666 (transformation!851 (rule!1542 separatorToken!170)))))))

(assert (=> d!173127 (= (inv!5464 (transformation!851 (rule!1542 separatorToken!170))) e!277061)))

(declare-fun b!453067 () Bool)

(assert (=> b!453067 (= e!277061 (equivClasses!321 (toChars!1525 (transformation!851 (rule!1542 separatorToken!170))) (toValue!1666 (transformation!851 (rule!1542 separatorToken!170)))))))

(assert (= (and d!173127 res!201324) b!453067))

(declare-fun m!717217 () Bool)

(assert (=> d!173127 m!717217))

(declare-fun m!717219 () Bool)

(assert (=> b!453067 m!717219))

(assert (=> b!452586 d!173127))

(declare-fun d!173129 () Bool)

(declare-fun isEmpty!3357 (Option!1135) Bool)

(assert (=> d!173129 (= (isDefined!974 (maxPrefixZipperSequence!416 thiss!17480 rules!1920 (seqFromList!1068 (originalCharacters!894 (h!9786 tokens!465))))) (not (isEmpty!3357 (maxPrefixZipperSequence!416 thiss!17480 rules!1920 (seqFromList!1068 (originalCharacters!894 (h!9786 tokens!465)))))))))

(declare-fun bs!56075 () Bool)

(assert (= bs!56075 d!173129))

(assert (=> bs!56075 m!716485))

(declare-fun m!717221 () Bool)

(assert (=> bs!56075 m!717221))

(assert (=> b!452587 d!173129))

(declare-fun b!453122 () Bool)

(declare-fun e!277105 () Option!1135)

(declare-fun lt!201479 () Option!1135)

(declare-fun lt!201476 () Option!1135)

(assert (=> b!453122 (= e!277105 (ite (and ((_ is None!1134) lt!201479) ((_ is None!1134) lt!201476)) None!1134 (ite ((_ is None!1134) lt!201476) lt!201479 (ite ((_ is None!1134) lt!201479) lt!201476 (ite (>= (size!3605 (_1!2877 (v!15449 lt!201479))) (size!3605 (_1!2877 (v!15449 lt!201476)))) lt!201479 lt!201476)))))))

(declare-fun call!31405 () Option!1135)

(assert (=> b!453122 (= lt!201479 call!31405)))

(assert (=> b!453122 (= lt!201476 (maxPrefixZipperSequence!416 thiss!17480 (t!71014 rules!1920) (seqFromList!1068 (originalCharacters!894 (h!9786 tokens!465)))))))

(declare-fun b!453123 () Bool)

(declare-fun e!277108 () Bool)

(declare-fun e!277107 () Bool)

(assert (=> b!453123 (= e!277108 e!277107)))

(declare-fun res!201359 () Bool)

(assert (=> b!453123 (=> res!201359 e!277107)))

(declare-fun lt!201477 () Option!1135)

(assert (=> b!453123 (= res!201359 (not (isDefined!974 lt!201477)))))

(declare-fun b!453124 () Bool)

(assert (=> b!453124 (= e!277105 call!31405)))

(declare-fun d!173131 () Bool)

(assert (=> d!173131 e!277108))

(declare-fun res!201361 () Bool)

(assert (=> d!173131 (=> (not res!201361) (not e!277108))))

(declare-fun maxPrefixZipper!188 (LexerInterface!737 List!4398 List!4397) Option!1134)

(assert (=> d!173131 (= res!201361 (= (isDefined!974 lt!201477) (isDefined!973 (maxPrefixZipper!188 thiss!17480 rules!1920 (list!1947 (seqFromList!1068 (originalCharacters!894 (h!9786 tokens!465))))))))))

(assert (=> d!173131 (= lt!201477 e!277105)))

(declare-fun c!91686 () Bool)

(assert (=> d!173131 (= c!91686 (and ((_ is Cons!4388) rules!1920) ((_ is Nil!4388) (t!71014 rules!1920))))))

(declare-fun lt!201475 () Unit!7921)

(declare-fun lt!201473 () Unit!7921)

(assert (=> d!173131 (= lt!201475 lt!201473)))

(declare-fun lt!201474 () List!4397)

(declare-fun lt!201478 () List!4397)

(assert (=> d!173131 (isPrefix!511 lt!201474 lt!201478)))

(assert (=> d!173131 (= lt!201473 (lemmaIsPrefixRefl!285 lt!201474 lt!201478))))

(assert (=> d!173131 (= lt!201478 (list!1947 (seqFromList!1068 (originalCharacters!894 (h!9786 tokens!465)))))))

(assert (=> d!173131 (= lt!201474 (list!1947 (seqFromList!1068 (originalCharacters!894 (h!9786 tokens!465)))))))

(assert (=> d!173131 (rulesValidInductive!280 thiss!17480 rules!1920)))

(assert (=> d!173131 (= (maxPrefixZipperSequence!416 thiss!17480 rules!1920 (seqFromList!1068 (originalCharacters!894 (h!9786 tokens!465)))) lt!201477)))

(declare-fun b!453125 () Bool)

(declare-fun e!277103 () Bool)

(declare-fun e!277104 () Bool)

(assert (=> b!453125 (= e!277103 e!277104)))

(declare-fun res!201358 () Bool)

(assert (=> b!453125 (=> (not res!201358) (not e!277104))))

(declare-fun get!1606 (Option!1135) tuple2!5322)

(assert (=> b!453125 (= res!201358 (= (_1!2877 (get!1606 lt!201477)) (_1!2875 (get!1604 (maxPrefixZipper!188 thiss!17480 rules!1920 (list!1947 (seqFromList!1068 (originalCharacters!894 (h!9786 tokens!465)))))))))))

(declare-fun b!453126 () Bool)

(assert (=> b!453126 (= e!277104 (= (list!1947 (_2!2877 (get!1606 lt!201477))) (_2!2875 (get!1604 (maxPrefixZipper!188 thiss!17480 rules!1920 (list!1947 (seqFromList!1068 (originalCharacters!894 (h!9786 tokens!465)))))))))))

(declare-fun b!453127 () Bool)

(declare-fun res!201362 () Bool)

(assert (=> b!453127 (=> (not res!201362) (not e!277108))))

(assert (=> b!453127 (= res!201362 e!277103)))

(declare-fun res!201360 () Bool)

(assert (=> b!453127 (=> res!201360 e!277103)))

(assert (=> b!453127 (= res!201360 (not (isDefined!974 lt!201477)))))

(declare-fun bm!31400 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!189 (LexerInterface!737 Rule!1502 BalanceConc!3056) Option!1135)

(assert (=> bm!31400 (= call!31405 (maxPrefixOneRuleZipperSequence!189 thiss!17480 (h!9785 rules!1920) (seqFromList!1068 (originalCharacters!894 (h!9786 tokens!465)))))))

(declare-fun b!453128 () Bool)

(declare-fun e!277106 () Bool)

(assert (=> b!453128 (= e!277106 (= (list!1947 (_2!2877 (get!1606 lt!201477))) (_2!2875 (get!1604 (maxPrefix!453 thiss!17480 rules!1920 (list!1947 (seqFromList!1068 (originalCharacters!894 (h!9786 tokens!465)))))))))))

(declare-fun b!453129 () Bool)

(assert (=> b!453129 (= e!277107 e!277106)))

(declare-fun res!201363 () Bool)

(assert (=> b!453129 (=> (not res!201363) (not e!277106))))

(assert (=> b!453129 (= res!201363 (= (_1!2877 (get!1606 lt!201477)) (_1!2875 (get!1604 (maxPrefix!453 thiss!17480 rules!1920 (list!1947 (seqFromList!1068 (originalCharacters!894 (h!9786 tokens!465)))))))))))

(assert (= (and d!173131 c!91686) b!453124))

(assert (= (and d!173131 (not c!91686)) b!453122))

(assert (= (or b!453124 b!453122) bm!31400))

(assert (= (and d!173131 res!201361) b!453127))

(assert (= (and b!453127 (not res!201360)) b!453125))

(assert (= (and b!453125 res!201358) b!453126))

(assert (= (and b!453127 res!201362) b!453123))

(assert (= (and b!453123 (not res!201359)) b!453129))

(assert (= (and b!453129 res!201363) b!453128))

(declare-fun m!717267 () Bool)

(assert (=> b!453129 m!717267))

(assert (=> b!453129 m!716483))

(declare-fun m!717269 () Bool)

(assert (=> b!453129 m!717269))

(assert (=> b!453129 m!717269))

(declare-fun m!717271 () Bool)

(assert (=> b!453129 m!717271))

(assert (=> b!453129 m!717271))

(declare-fun m!717273 () Bool)

(assert (=> b!453129 m!717273))

(assert (=> b!453122 m!716483))

(declare-fun m!717275 () Bool)

(assert (=> b!453122 m!717275))

(assert (=> bm!31400 m!716483))

(declare-fun m!717277 () Bool)

(assert (=> bm!31400 m!717277))

(assert (=> b!453128 m!717267))

(assert (=> b!453128 m!717269))

(assert (=> b!453128 m!717271))

(assert (=> b!453128 m!717271))

(assert (=> b!453128 m!717273))

(declare-fun m!717279 () Bool)

(assert (=> b!453128 m!717279))

(assert (=> b!453128 m!716483))

(assert (=> b!453128 m!717269))

(declare-fun m!717281 () Bool)

(assert (=> b!453123 m!717281))

(assert (=> d!173131 m!717269))

(declare-fun m!717283 () Bool)

(assert (=> d!173131 m!717283))

(assert (=> d!173131 m!717281))

(declare-fun m!717285 () Bool)

(assert (=> d!173131 m!717285))

(assert (=> d!173131 m!716483))

(assert (=> d!173131 m!717269))

(assert (=> d!173131 m!717283))

(declare-fun m!717287 () Bool)

(assert (=> d!173131 m!717287))

(assert (=> d!173131 m!716891))

(declare-fun m!717289 () Bool)

(assert (=> d!173131 m!717289))

(assert (=> b!453126 m!717269))

(assert (=> b!453126 m!717283))

(assert (=> b!453126 m!717267))

(assert (=> b!453126 m!717283))

(declare-fun m!717291 () Bool)

(assert (=> b!453126 m!717291))

(assert (=> b!453126 m!717279))

(assert (=> b!453126 m!716483))

(assert (=> b!453126 m!717269))

(assert (=> b!453125 m!717267))

(assert (=> b!453125 m!716483))

(assert (=> b!453125 m!717269))

(assert (=> b!453125 m!717269))

(assert (=> b!453125 m!717283))

(assert (=> b!453125 m!717283))

(assert (=> b!453125 m!717291))

(assert (=> b!453127 m!717281))

(assert (=> b!452587 d!173131))

(declare-fun d!173161 () Bool)

(assert (=> d!173161 (= (seqFromList!1068 (originalCharacters!894 (h!9786 tokens!465))) (fromListB!479 (originalCharacters!894 (h!9786 tokens!465))))))

(declare-fun bs!56087 () Bool)

(assert (= bs!56087 d!173161))

(declare-fun m!717293 () Bool)

(assert (=> bs!56087 m!717293))

(assert (=> b!452587 d!173161))

(declare-fun d!173163 () Bool)

(assert (=> d!173163 (dynLambda!2651 lambda!13186 (h!9786 tokens!465))))

(declare-fun lt!201482 () Unit!7921)

(declare-fun choose!3424 (List!4399 Int Token!1446) Unit!7921)

(assert (=> d!173163 (= lt!201482 (choose!3424 tokens!465 lambda!13186 (h!9786 tokens!465)))))

(declare-fun e!277111 () Bool)

(assert (=> d!173163 e!277111))

(declare-fun res!201366 () Bool)

(assert (=> d!173163 (=> (not res!201366) (not e!277111))))

(assert (=> d!173163 (= res!201366 (forall!1270 tokens!465 lambda!13186))))

(assert (=> d!173163 (= (forallContained!404 tokens!465 lambda!13186 (h!9786 tokens!465)) lt!201482)))

(declare-fun b!453132 () Bool)

(declare-fun contains!987 (List!4399 Token!1446) Bool)

(assert (=> b!453132 (= e!277111 (contains!987 tokens!465 (h!9786 tokens!465)))))

(assert (= (and d!173163 res!201366) b!453132))

(declare-fun b_lambda!18759 () Bool)

(assert (=> (not b_lambda!18759) (not d!173163)))

(declare-fun m!717295 () Bool)

(assert (=> d!173163 m!717295))

(declare-fun m!717297 () Bool)

(assert (=> d!173163 m!717297))

(declare-fun m!717299 () Bool)

(assert (=> d!173163 m!717299))

(declare-fun m!717301 () Bool)

(assert (=> b!453132 m!717301))

(assert (=> b!452587 d!173163))

(declare-fun d!173165 () Bool)

(declare-fun lt!201485 () Bool)

(declare-fun isEmpty!3358 (List!4399) Bool)

(assert (=> d!173165 (= lt!201485 (isEmpty!3358 (list!1950 (_1!2876 (lex!529 thiss!17480 rules!1920 (seqFromList!1068 lt!201188))))))))

(declare-fun isEmpty!3359 (Conc!1525) Bool)

(assert (=> d!173165 (= lt!201485 (isEmpty!3359 (c!91576 (_1!2876 (lex!529 thiss!17480 rules!1920 (seqFromList!1068 lt!201188))))))))

(assert (=> d!173165 (= (isEmpty!3349 (_1!2876 (lex!529 thiss!17480 rules!1920 (seqFromList!1068 lt!201188)))) lt!201485)))

(declare-fun bs!56088 () Bool)

(assert (= bs!56088 d!173165))

(declare-fun m!717303 () Bool)

(assert (=> bs!56088 m!717303))

(assert (=> bs!56088 m!717303))

(declare-fun m!717305 () Bool)

(assert (=> bs!56088 m!717305))

(declare-fun m!717307 () Bool)

(assert (=> bs!56088 m!717307))

(assert (=> b!452583 d!173165))

(declare-fun b!453217 () Bool)

(declare-fun e!277160 () Bool)

(declare-fun lt!201530 () tuple2!5320)

(assert (=> b!453217 (= e!277160 (not (isEmpty!3349 (_1!2876 lt!201530))))))

(declare-fun d!173167 () Bool)

(declare-fun e!277159 () Bool)

(assert (=> d!173167 e!277159))

(declare-fun res!201401 () Bool)

(assert (=> d!173167 (=> (not res!201401) (not e!277159))))

(declare-fun e!277161 () Bool)

(assert (=> d!173167 (= res!201401 e!277161)))

(declare-fun c!91700 () Bool)

(assert (=> d!173167 (= c!91700 (> (size!3608 (_1!2876 lt!201530)) 0))))

(declare-fun lexTailRecV2!254 (LexerInterface!737 List!4398 BalanceConc!3056 BalanceConc!3056 BalanceConc!3056 BalanceConc!3058) tuple2!5320)

(assert (=> d!173167 (= lt!201530 (lexTailRecV2!254 thiss!17480 rules!1920 (seqFromList!1068 lt!201188) (BalanceConc!3057 Empty!1524) (seqFromList!1068 lt!201188) (BalanceConc!3059 Empty!1525)))))

(assert (=> d!173167 (= (lex!529 thiss!17480 rules!1920 (seqFromList!1068 lt!201188)) lt!201530)))

(declare-fun b!453218 () Bool)

(assert (=> b!453218 (= e!277161 e!277160)))

(declare-fun res!201402 () Bool)

(declare-fun size!3611 (BalanceConc!3056) Int)

(assert (=> b!453218 (= res!201402 (< (size!3611 (_2!2876 lt!201530)) (size!3611 (seqFromList!1068 lt!201188))))))

(assert (=> b!453218 (=> (not res!201402) (not e!277160))))

(declare-fun b!453219 () Bool)

(declare-fun res!201403 () Bool)

(assert (=> b!453219 (=> (not res!201403) (not e!277159))))

(declare-datatypes ((tuple2!5326 0))(
  ( (tuple2!5327 (_1!2879 List!4399) (_2!2879 List!4397)) )
))
(declare-fun lexList!289 (LexerInterface!737 List!4398 List!4397) tuple2!5326)

(assert (=> b!453219 (= res!201403 (= (list!1950 (_1!2876 lt!201530)) (_1!2879 (lexList!289 thiss!17480 rules!1920 (list!1947 (seqFromList!1068 lt!201188))))))))

(declare-fun b!453220 () Bool)

(assert (=> b!453220 (= e!277161 (= (_2!2876 lt!201530) (seqFromList!1068 lt!201188)))))

(declare-fun b!453221 () Bool)

(assert (=> b!453221 (= e!277159 (= (list!1947 (_2!2876 lt!201530)) (_2!2879 (lexList!289 thiss!17480 rules!1920 (list!1947 (seqFromList!1068 lt!201188))))))))

(assert (= (and d!173167 c!91700) b!453218))

(assert (= (and d!173167 (not c!91700)) b!453220))

(assert (= (and b!453218 res!201402) b!453217))

(assert (= (and d!173167 res!201401) b!453219))

(assert (= (and b!453219 res!201403) b!453221))

(declare-fun m!717405 () Bool)

(assert (=> b!453217 m!717405))

(declare-fun m!717407 () Bool)

(assert (=> b!453218 m!717407))

(assert (=> b!453218 m!716545))

(declare-fun m!717409 () Bool)

(assert (=> b!453218 m!717409))

(declare-fun m!717411 () Bool)

(assert (=> b!453221 m!717411))

(assert (=> b!453221 m!716545))

(declare-fun m!717413 () Bool)

(assert (=> b!453221 m!717413))

(assert (=> b!453221 m!717413))

(declare-fun m!717415 () Bool)

(assert (=> b!453221 m!717415))

(declare-fun m!717417 () Bool)

(assert (=> d!173167 m!717417))

(assert (=> d!173167 m!716545))

(assert (=> d!173167 m!716545))

(declare-fun m!717419 () Bool)

(assert (=> d!173167 m!717419))

(declare-fun m!717421 () Bool)

(assert (=> b!453219 m!717421))

(assert (=> b!453219 m!716545))

(assert (=> b!453219 m!717413))

(assert (=> b!453219 m!717413))

(assert (=> b!453219 m!717415))

(assert (=> b!452583 d!173167))

(declare-fun d!173183 () Bool)

(assert (=> d!173183 (= (seqFromList!1068 lt!201188) (fromListB!479 lt!201188))))

(declare-fun bs!56091 () Bool)

(assert (= bs!56091 d!173183))

(declare-fun m!717423 () Bool)

(assert (=> bs!56091 m!717423))

(assert (=> b!452583 d!173183))

(declare-fun d!173185 () Bool)

(assert (=> d!173185 (= (inv!5460 (tag!1111 (h!9785 rules!1920))) (= (mod (str.len (value!28568 (tag!1111 (h!9785 rules!1920)))) 2) 0))))

(assert (=> b!452591 d!173185))

(declare-fun d!173187 () Bool)

(declare-fun res!201404 () Bool)

(declare-fun e!277168 () Bool)

(assert (=> d!173187 (=> (not res!201404) (not e!277168))))

(assert (=> d!173187 (= res!201404 (semiInverseModEq!338 (toChars!1525 (transformation!851 (h!9785 rules!1920))) (toValue!1666 (transformation!851 (h!9785 rules!1920)))))))

(assert (=> d!173187 (= (inv!5464 (transformation!851 (h!9785 rules!1920))) e!277168)))

(declare-fun b!453235 () Bool)

(assert (=> b!453235 (= e!277168 (equivClasses!321 (toChars!1525 (transformation!851 (h!9785 rules!1920))) (toValue!1666 (transformation!851 (h!9785 rules!1920)))))))

(assert (= (and d!173187 res!201404) b!453235))

(declare-fun m!717425 () Bool)

(assert (=> d!173187 m!717425))

(declare-fun m!717427 () Bool)

(assert (=> b!453235 m!717427))

(assert (=> b!452591 d!173187))

(declare-fun d!173189 () Bool)

(declare-fun res!201405 () Bool)

(declare-fun e!277173 () Bool)

(assert (=> d!173189 (=> (not res!201405) (not e!277173))))

(assert (=> d!173189 (= res!201405 (not (isEmpty!3348 (originalCharacters!894 (h!9786 tokens!465)))))))

(assert (=> d!173189 (= (inv!5463 (h!9786 tokens!465)) e!277173)))

(declare-fun b!453238 () Bool)

(declare-fun res!201406 () Bool)

(assert (=> b!453238 (=> (not res!201406) (not e!277173))))

(assert (=> b!453238 (= res!201406 (= (originalCharacters!894 (h!9786 tokens!465)) (list!1947 (dynLambda!2652 (toChars!1525 (transformation!851 (rule!1542 (h!9786 tokens!465)))) (value!28569 (h!9786 tokens!465))))))))

(declare-fun b!453239 () Bool)

(assert (=> b!453239 (= e!277173 (= (size!3605 (h!9786 tokens!465)) (size!3610 (originalCharacters!894 (h!9786 tokens!465)))))))

(assert (= (and d!173189 res!201405) b!453238))

(assert (= (and b!453238 res!201406) b!453239))

(declare-fun b_lambda!18761 () Bool)

(assert (=> (not b_lambda!18761) (not b!453238)))

(declare-fun t!71065 () Bool)

(declare-fun tb!45523 () Bool)

(assert (=> (and b!452589 (= (toChars!1525 (transformation!851 (rule!1542 separatorToken!170))) (toChars!1525 (transformation!851 (rule!1542 (h!9786 tokens!465))))) t!71065) tb!45523))

(declare-fun b!453242 () Bool)

(declare-fun e!277178 () Bool)

(declare-fun tp!125933 () Bool)

(assert (=> b!453242 (= e!277178 (and (inv!5467 (c!91574 (dynLambda!2652 (toChars!1525 (transformation!851 (rule!1542 (h!9786 tokens!465)))) (value!28569 (h!9786 tokens!465))))) tp!125933))))

(declare-fun result!50090 () Bool)

(assert (=> tb!45523 (= result!50090 (and (inv!5468 (dynLambda!2652 (toChars!1525 (transformation!851 (rule!1542 (h!9786 tokens!465)))) (value!28569 (h!9786 tokens!465)))) e!277178))))

(assert (= tb!45523 b!453242))

(declare-fun m!717429 () Bool)

(assert (=> b!453242 m!717429))

(declare-fun m!717431 () Bool)

(assert (=> tb!45523 m!717431))

(assert (=> b!453238 t!71065))

(declare-fun b_and!48671 () Bool)

(assert (= b_and!48655 (and (=> t!71065 result!50090) b_and!48671)))

(declare-fun t!71067 () Bool)

(declare-fun tb!45525 () Bool)

(assert (=> (and b!452584 (= (toChars!1525 (transformation!851 (rule!1542 (h!9786 tokens!465)))) (toChars!1525 (transformation!851 (rule!1542 (h!9786 tokens!465))))) t!71067) tb!45525))

(declare-fun result!50092 () Bool)

(assert (= result!50092 result!50090))

(assert (=> b!453238 t!71067))

(declare-fun b_and!48673 () Bool)

(assert (= b_and!48657 (and (=> t!71067 result!50092) b_and!48673)))

(declare-fun tb!45527 () Bool)

(declare-fun t!71069 () Bool)

(assert (=> (and b!452598 (= (toChars!1525 (transformation!851 (h!9785 rules!1920))) (toChars!1525 (transformation!851 (rule!1542 (h!9786 tokens!465))))) t!71069) tb!45527))

(declare-fun result!50094 () Bool)

(assert (= result!50094 result!50090))

(assert (=> b!453238 t!71069))

(declare-fun b_and!48675 () Bool)

(assert (= b_and!48659 (and (=> t!71069 result!50094) b_and!48675)))

(declare-fun m!717433 () Bool)

(assert (=> d!173189 m!717433))

(declare-fun m!717435 () Bool)

(assert (=> b!453238 m!717435))

(assert (=> b!453238 m!717435))

(declare-fun m!717437 () Bool)

(assert (=> b!453238 m!717437))

(declare-fun m!717439 () Bool)

(assert (=> b!453239 m!717439))

(assert (=> b!452570 d!173189))

(declare-fun d!173191 () Bool)

(assert (=> d!173191 (= (seqFromList!1067 (t!71015 tokens!465)) (fromListB!478 (t!71015 tokens!465)))))

(declare-fun bs!56092 () Bool)

(assert (= bs!56092 d!173191))

(declare-fun m!717441 () Bool)

(assert (=> bs!56092 m!717441))

(assert (=> b!452592 d!173191))

(declare-fun d!173193 () Bool)

(assert (=> d!173193 (= (list!1947 (charsOf!494 separatorToken!170)) (list!1951 (c!91574 (charsOf!494 separatorToken!170))))))

(declare-fun bs!56093 () Bool)

(assert (= bs!56093 d!173193))

(declare-fun m!717443 () Bool)

(assert (=> bs!56093 m!717443))

(assert (=> b!452592 d!173193))

(declare-fun d!173195 () Bool)

(assert (=> d!173195 (= (list!1947 (printWithSeparatorTokenWhenNeededRec!410 thiss!17480 rules!1920 (seqFromList!1067 (t!71015 tokens!465)) separatorToken!170 0)) (list!1951 (c!91574 (printWithSeparatorTokenWhenNeededRec!410 thiss!17480 rules!1920 (seqFromList!1067 (t!71015 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!56094 () Bool)

(assert (= bs!56094 d!173195))

(declare-fun m!717445 () Bool)

(assert (=> bs!56094 m!717445))

(assert (=> b!452592 d!173195))

(declare-fun d!173197 () Bool)

(assert (=> d!173197 (= (++!1274 (++!1274 lt!201188 lt!201198) lt!201195) (++!1274 lt!201188 (++!1274 lt!201198 lt!201195)))))

(declare-fun lt!201533 () Unit!7921)

(declare-fun choose!3425 (List!4397 List!4397 List!4397) Unit!7921)

(assert (=> d!173197 (= lt!201533 (choose!3425 lt!201188 lt!201198 lt!201195))))

(assert (=> d!173197 (= (lemmaConcatAssociativity!586 lt!201188 lt!201198 lt!201195) lt!201533)))

(declare-fun bs!56095 () Bool)

(assert (= bs!56095 d!173197))

(assert (=> bs!56095 m!716537))

(declare-fun m!717455 () Bool)

(assert (=> bs!56095 m!717455))

(declare-fun m!717457 () Bool)

(assert (=> bs!56095 m!717457))

(assert (=> bs!56095 m!716523))

(assert (=> bs!56095 m!716525))

(assert (=> bs!56095 m!716523))

(assert (=> bs!56095 m!716537))

(assert (=> b!452592 d!173197))

(declare-fun b!453260 () Bool)

(declare-fun res!201407 () Bool)

(declare-fun e!277191 () Bool)

(assert (=> b!453260 (=> (not res!201407) (not e!277191))))

(declare-fun lt!201534 () List!4397)

(assert (=> b!453260 (= res!201407 (= (size!3610 lt!201534) (+ (size!3610 lt!201198) (size!3610 lt!201195))))))

(declare-fun d!173199 () Bool)

(assert (=> d!173199 e!277191))

(declare-fun res!201408 () Bool)

(assert (=> d!173199 (=> (not res!201408) (not e!277191))))

(assert (=> d!173199 (= res!201408 (= (content!735 lt!201534) ((_ map or) (content!735 lt!201198) (content!735 lt!201195))))))

(declare-fun e!277190 () List!4397)

(assert (=> d!173199 (= lt!201534 e!277190)))

(declare-fun c!91701 () Bool)

(assert (=> d!173199 (= c!91701 ((_ is Nil!4387) lt!201198))))

(assert (=> d!173199 (= (++!1274 lt!201198 lt!201195) lt!201534)))

(declare-fun b!453258 () Bool)

(assert (=> b!453258 (= e!277190 lt!201195)))

(declare-fun b!453259 () Bool)

(assert (=> b!453259 (= e!277190 (Cons!4387 (h!9784 lt!201198) (++!1274 (t!71013 lt!201198) lt!201195)))))

(declare-fun b!453261 () Bool)

(assert (=> b!453261 (= e!277191 (or (not (= lt!201195 Nil!4387)) (= lt!201534 lt!201198)))))

(assert (= (and d!173199 c!91701) b!453258))

(assert (= (and d!173199 (not c!91701)) b!453259))

(assert (= (and d!173199 res!201408) b!453260))

(assert (= (and b!453260 res!201407) b!453261))

(declare-fun m!717459 () Bool)

(assert (=> b!453260 m!717459))

(declare-fun m!717461 () Bool)

(assert (=> b!453260 m!717461))

(assert (=> b!453260 m!717203))

(declare-fun m!717463 () Bool)

(assert (=> d!173199 m!717463))

(declare-fun m!717465 () Bool)

(assert (=> d!173199 m!717465))

(assert (=> d!173199 m!717209))

(declare-fun m!717467 () Bool)

(assert (=> b!453259 m!717467))

(assert (=> b!452592 d!173199))

(declare-fun bs!56098 () Bool)

(declare-fun d!173205 () Bool)

(assert (= bs!56098 (and d!173205 b!452594)))

(declare-fun lambda!13221 () Int)

(assert (=> bs!56098 (= lambda!13221 lambda!13185)))

(declare-fun bs!56099 () Bool)

(assert (= bs!56099 (and d!173205 b!452587)))

(assert (=> bs!56099 (not (= lambda!13221 lambda!13186))))

(declare-fun bs!56100 () Bool)

(assert (= bs!56100 (and d!173205 d!173079)))

(assert (=> bs!56100 (= lambda!13221 lambda!13208)))

(declare-fun bs!56101 () Bool)

(assert (= bs!56101 (and d!173205 b!452896)))

(assert (=> bs!56101 (not (= lambda!13221 lambda!13209))))

(declare-fun bs!56102 () Bool)

(assert (= bs!56102 (and d!173205 d!173035)))

(assert (=> bs!56102 (not (= lambda!13221 lambda!13200))))

(declare-fun bs!56103 () Bool)

(assert (= bs!56103 (and d!173205 b!453009)))

(assert (=> bs!56103 (not (= lambda!13221 lambda!13215))))

(declare-fun bs!56104 () Bool)

(declare-fun b!453266 () Bool)

(assert (= bs!56104 (and b!453266 b!452594)))

(declare-fun lambda!13222 () Int)

(assert (=> bs!56104 (not (= lambda!13222 lambda!13185))))

(declare-fun bs!56105 () Bool)

(assert (= bs!56105 (and b!453266 d!173205)))

(assert (=> bs!56105 (not (= lambda!13222 lambda!13221))))

(declare-fun bs!56106 () Bool)

(assert (= bs!56106 (and b!453266 b!452587)))

(assert (=> bs!56106 (= lambda!13222 lambda!13186)))

(declare-fun bs!56107 () Bool)

(assert (= bs!56107 (and b!453266 d!173079)))

(assert (=> bs!56107 (not (= lambda!13222 lambda!13208))))

(declare-fun bs!56108 () Bool)

(assert (= bs!56108 (and b!453266 b!452896)))

(assert (=> bs!56108 (= lambda!13222 lambda!13209)))

(declare-fun bs!56109 () Bool)

(assert (= bs!56109 (and b!453266 d!173035)))

(assert (=> bs!56109 (= lambda!13222 lambda!13200)))

(declare-fun bs!56110 () Bool)

(assert (= bs!56110 (and b!453266 b!453009)))

(assert (=> bs!56110 (= lambda!13222 lambda!13215)))

(declare-fun b!453273 () Bool)

(declare-fun e!277200 () Bool)

(assert (=> b!453273 (= e!277200 true)))

(declare-fun b!453272 () Bool)

(declare-fun e!277199 () Bool)

(assert (=> b!453272 (= e!277199 e!277200)))

(declare-fun b!453271 () Bool)

(declare-fun e!277198 () Bool)

(assert (=> b!453271 (= e!277198 e!277199)))

(assert (=> b!453266 e!277198))

(assert (= b!453272 b!453273))

(assert (= b!453271 b!453272))

(assert (= (and b!453266 ((_ is Cons!4388) rules!1920)) b!453271))

(assert (=> b!453273 (< (dynLambda!2646 order!3857 (toValue!1666 (transformation!851 (h!9785 rules!1920)))) (dynLambda!2647 order!3859 lambda!13222))))

(assert (=> b!453273 (< (dynLambda!2648 order!3861 (toChars!1525 (transformation!851 (h!9785 rules!1920)))) (dynLambda!2647 order!3859 lambda!13222))))

(assert (=> b!453266 true))

(declare-fun b!453262 () Bool)

(declare-fun e!277197 () BalanceConc!3056)

(assert (=> b!453262 (= e!277197 (BalanceConc!3057 Empty!1524))))

(declare-fun b!453263 () Bool)

(declare-fun e!277196 () Bool)

(declare-fun lt!201542 () Option!1135)

(assert (=> b!453263 (= e!277196 (= (_1!2877 (v!15449 lt!201542)) (apply!1123 (seqFromList!1067 (t!71015 tokens!465)) 0)))))

(declare-fun b!453264 () Bool)

(declare-fun e!277193 () BalanceConc!3056)

(assert (=> b!453264 (= e!277193 (BalanceConc!3057 Empty!1524))))

(declare-fun call!31409 () Token!1446)

(assert (=> b!453264 (= (print!462 thiss!17480 (singletonSeq!397 call!31409)) (printTailRec!423 thiss!17480 (singletonSeq!397 call!31409) 0 (BalanceConc!3057 Empty!1524)))))

(declare-fun lt!201536 () Unit!7921)

(declare-fun Unit!7935 () Unit!7921)

(assert (=> b!453264 (= lt!201536 Unit!7935)))

(declare-fun call!31412 () BalanceConc!3056)

(declare-fun lt!201545 () BalanceConc!3056)

(declare-fun lt!201540 () Unit!7921)

(assert (=> b!453264 (= lt!201540 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!190 thiss!17480 rules!1920 (list!1947 call!31412) (list!1947 lt!201545)))))

(assert (=> b!453264 false))

(declare-fun lt!201541 () Unit!7921)

(declare-fun Unit!7936 () Unit!7921)

(assert (=> b!453264 (= lt!201541 Unit!7936)))

(declare-fun b!453265 () Bool)

(declare-fun c!91704 () Bool)

(declare-fun e!277195 () Bool)

(assert (=> b!453265 (= c!91704 e!277195)))

(declare-fun res!201410 () Bool)

(assert (=> b!453265 (=> (not res!201410) (not e!277195))))

(assert (=> b!453265 (= res!201410 ((_ is Some!1134) lt!201542))))

(declare-fun e!277194 () BalanceConc!3056)

(assert (=> b!453265 (= e!277194 e!277193)))

(declare-fun b!453267 () Bool)

(declare-fun call!31410 () BalanceConc!3056)

(assert (=> b!453267 (= e!277193 (++!1276 call!31410 lt!201545))))

(declare-fun b!453268 () Bool)

(declare-fun e!277192 () Bool)

(assert (=> b!453268 (= e!277192 (<= 0 (size!3608 (seqFromList!1067 (t!71015 tokens!465)))))))

(declare-fun b!453269 () Bool)

(declare-fun call!31413 () Token!1446)

(assert (=> b!453269 (= e!277195 (not (= (_1!2877 (v!15449 lt!201542)) call!31413)))))

(declare-fun call!31411 () BalanceConc!3056)

(declare-fun c!91703 () Bool)

(declare-fun bm!31404 () Bool)

(assert (=> bm!31404 (= call!31410 (++!1276 call!31411 (ite c!91703 lt!201545 call!31412)))))

(assert (=> b!453266 (= e!277197 e!277194)))

(declare-fun lt!201544 () List!4399)

(assert (=> b!453266 (= lt!201544 (list!1950 (seqFromList!1067 (t!71015 tokens!465))))))

(declare-fun lt!201539 () Unit!7921)

(assert (=> b!453266 (= lt!201539 (lemmaDropApply!282 lt!201544 0))))

(assert (=> b!453266 (= (head!1102 (drop!311 lt!201544 0)) (apply!1124 lt!201544 0))))

(declare-fun lt!201548 () Unit!7921)

(assert (=> b!453266 (= lt!201548 lt!201539)))

(declare-fun lt!201547 () List!4399)

(assert (=> b!453266 (= lt!201547 (list!1950 (seqFromList!1067 (t!71015 tokens!465))))))

(declare-fun lt!201535 () Unit!7921)

(assert (=> b!453266 (= lt!201535 (lemmaDropTail!274 lt!201547 0))))

(assert (=> b!453266 (= (tail!632 (drop!311 lt!201547 0)) (drop!311 lt!201547 (+ 0 1)))))

(declare-fun lt!201546 () Unit!7921)

(assert (=> b!453266 (= lt!201546 lt!201535)))

(declare-fun lt!201537 () Unit!7921)

(assert (=> b!453266 (= lt!201537 (forallContained!404 (list!1950 (seqFromList!1067 (t!71015 tokens!465))) lambda!13222 (apply!1123 (seqFromList!1067 (t!71015 tokens!465)) 0)))))

(assert (=> b!453266 (= lt!201545 (printWithSeparatorTokenWhenNeededRec!410 thiss!17480 rules!1920 (seqFromList!1067 (t!71015 tokens!465)) separatorToken!170 (+ 0 1)))))

(assert (=> b!453266 (= lt!201542 (maxPrefixZipperSequence!416 thiss!17480 rules!1920 (++!1276 (charsOf!494 (apply!1123 (seqFromList!1067 (t!71015 tokens!465)) 0)) lt!201545)))))

(declare-fun res!201409 () Bool)

(assert (=> b!453266 (= res!201409 ((_ is Some!1134) lt!201542))))

(assert (=> b!453266 (=> (not res!201409) (not e!277196))))

(assert (=> b!453266 (= c!91703 e!277196)))

(declare-fun lt!201543 () BalanceConc!3056)

(assert (=> d!173205 (= (list!1947 lt!201543) (printWithSeparatorTokenWhenNeededList!418 thiss!17480 rules!1920 (dropList!242 (seqFromList!1067 (t!71015 tokens!465)) 0) separatorToken!170))))

(assert (=> d!173205 (= lt!201543 e!277197)))

(declare-fun c!91702 () Bool)

(assert (=> d!173205 (= c!91702 (>= 0 (size!3608 (seqFromList!1067 (t!71015 tokens!465)))))))

(declare-fun lt!201538 () Unit!7921)

(assert (=> d!173205 (= lt!201538 (lemmaContentSubsetPreservesForall!186 (list!1950 (seqFromList!1067 (t!71015 tokens!465))) (dropList!242 (seqFromList!1067 (t!71015 tokens!465)) 0) lambda!13221))))

(assert (=> d!173205 e!277192))

(declare-fun res!201411 () Bool)

(assert (=> d!173205 (=> (not res!201411) (not e!277192))))

(assert (=> d!173205 (= res!201411 (>= 0 0))))

(assert (=> d!173205 (= (printWithSeparatorTokenWhenNeededRec!410 thiss!17480 rules!1920 (seqFromList!1067 (t!71015 tokens!465)) separatorToken!170 0) lt!201543)))

(declare-fun b!453270 () Bool)

(assert (=> b!453270 (= e!277194 call!31410)))

(declare-fun bm!31405 () Bool)

(assert (=> bm!31405 (= call!31409 call!31413)))

(declare-fun bm!31406 () Bool)

(assert (=> bm!31406 (= call!31413 (apply!1123 (seqFromList!1067 (t!71015 tokens!465)) 0))))

(declare-fun bm!31407 () Bool)

(assert (=> bm!31407 (= call!31411 (charsOf!494 (ite c!91703 call!31413 call!31409)))))

(declare-fun bm!31408 () Bool)

(assert (=> bm!31408 (= call!31412 (charsOf!494 (ite c!91704 separatorToken!170 call!31409)))))

(assert (= (and d!173205 res!201411) b!453268))

(assert (= (and d!173205 c!91702) b!453262))

(assert (= (and d!173205 (not c!91702)) b!453266))

(assert (= (and b!453266 res!201409) b!453263))

(assert (= (and b!453266 c!91703) b!453270))

(assert (= (and b!453266 (not c!91703)) b!453265))

(assert (= (and b!453265 res!201410) b!453269))

(assert (= (and b!453265 c!91704) b!453267))

(assert (= (and b!453265 (not c!91704)) b!453264))

(assert (= (or b!453267 b!453264) bm!31405))

(assert (= (or b!453267 b!453264) bm!31408))

(assert (= (or b!453270 b!453269 bm!31405) bm!31406))

(assert (= (or b!453270 b!453267) bm!31407))

(assert (= (or b!453270 b!453267) bm!31404))

(declare-fun m!717469 () Bool)

(assert (=> b!453267 m!717469))

(declare-fun m!717471 () Bool)

(assert (=> b!453264 m!717471))

(declare-fun m!717473 () Bool)

(assert (=> b!453264 m!717473))

(declare-fun m!717475 () Bool)

(assert (=> b!453264 m!717475))

(assert (=> b!453264 m!717471))

(assert (=> b!453264 m!717475))

(declare-fun m!717477 () Bool)

(assert (=> b!453264 m!717477))

(declare-fun m!717479 () Bool)

(assert (=> b!453264 m!717479))

(assert (=> b!453264 m!717477))

(assert (=> b!453264 m!717471))

(declare-fun m!717481 () Bool)

(assert (=> b!453264 m!717481))

(assert (=> b!453263 m!716519))

(declare-fun m!717483 () Bool)

(assert (=> b!453263 m!717483))

(declare-fun m!717485 () Bool)

(assert (=> b!453266 m!717485))

(declare-fun m!717487 () Bool)

(assert (=> b!453266 m!717487))

(assert (=> b!453266 m!717483))

(assert (=> b!453266 m!717485))

(declare-fun m!717489 () Bool)

(assert (=> b!453266 m!717489))

(declare-fun m!717491 () Bool)

(assert (=> b!453266 m!717491))

(declare-fun m!717493 () Bool)

(assert (=> b!453266 m!717493))

(declare-fun m!717495 () Bool)

(assert (=> b!453266 m!717495))

(assert (=> b!453266 m!717483))

(declare-fun m!717497 () Bool)

(assert (=> b!453266 m!717497))

(assert (=> b!453266 m!716519))

(assert (=> b!453266 m!717495))

(declare-fun m!717499 () Bool)

(assert (=> b!453266 m!717499))

(declare-fun m!717501 () Bool)

(assert (=> b!453266 m!717501))

(declare-fun m!717503 () Bool)

(assert (=> b!453266 m!717503))

(assert (=> b!453266 m!716519))

(declare-fun m!717505 () Bool)

(assert (=> b!453266 m!717505))

(assert (=> b!453266 m!717487))

(declare-fun m!717507 () Bool)

(assert (=> b!453266 m!717507))

(assert (=> b!453266 m!717493))

(declare-fun m!717509 () Bool)

(assert (=> b!453266 m!717509))

(assert (=> b!453266 m!717491))

(declare-fun m!717511 () Bool)

(assert (=> b!453266 m!717511))

(assert (=> b!453266 m!716519))

(assert (=> b!453266 m!717483))

(assert (=> b!453268 m!716519))

(declare-fun m!717513 () Bool)

(assert (=> b!453268 m!717513))

(declare-fun m!717515 () Bool)

(assert (=> bm!31408 m!717515))

(declare-fun m!717517 () Bool)

(assert (=> bm!31407 m!717517))

(assert (=> bm!31406 m!716519))

(assert (=> bm!31406 m!717483))

(declare-fun m!717519 () Bool)

(assert (=> d!173205 m!717519))

(declare-fun m!717521 () Bool)

(assert (=> d!173205 m!717521))

(assert (=> d!173205 m!716519))

(assert (=> d!173205 m!717513))

(assert (=> d!173205 m!717495))

(assert (=> d!173205 m!717519))

(declare-fun m!717523 () Bool)

(assert (=> d!173205 m!717523))

(declare-fun m!717525 () Bool)

(assert (=> d!173205 m!717525))

(assert (=> d!173205 m!716519))

(assert (=> d!173205 m!717519))

(assert (=> d!173205 m!716519))

(assert (=> d!173205 m!717495))

(declare-fun m!717527 () Bool)

(assert (=> bm!31404 m!717527))

(assert (=> b!452592 d!173205))

(declare-fun d!173207 () Bool)

(declare-fun lt!201551 () BalanceConc!3056)

(assert (=> d!173207 (= (list!1947 lt!201551) (originalCharacters!894 separatorToken!170))))

(assert (=> d!173207 (= lt!201551 (dynLambda!2652 (toChars!1525 (transformation!851 (rule!1542 separatorToken!170))) (value!28569 separatorToken!170)))))

(assert (=> d!173207 (= (charsOf!494 separatorToken!170) lt!201551)))

(declare-fun b_lambda!18775 () Bool)

(assert (=> (not b_lambda!18775) (not d!173207)))

(assert (=> d!173207 t!71050))

(declare-fun b_and!48681 () Bool)

(assert (= b_and!48671 (and (=> t!71050 result!50070) b_and!48681)))

(assert (=> d!173207 t!71052))

(declare-fun b_and!48683 () Bool)

(assert (= b_and!48673 (and (=> t!71052 result!50074) b_and!48683)))

(assert (=> d!173207 t!71054))

(declare-fun b_and!48685 () Bool)

(assert (= b_and!48675 (and (=> t!71054 result!50076) b_and!48685)))

(declare-fun m!717529 () Bool)

(assert (=> d!173207 m!717529))

(assert (=> d!173207 m!717195))

(assert (=> b!452592 d!173207))

(declare-fun b!453276 () Bool)

(declare-fun res!201412 () Bool)

(declare-fun e!277202 () Bool)

(assert (=> b!453276 (=> (not res!201412) (not e!277202))))

(declare-fun lt!201552 () List!4397)

(assert (=> b!453276 (= res!201412 (= (size!3610 lt!201552) (+ (size!3610 (++!1274 lt!201188 lt!201198)) (size!3610 lt!201195))))))

(declare-fun d!173209 () Bool)

(assert (=> d!173209 e!277202))

(declare-fun res!201413 () Bool)

(assert (=> d!173209 (=> (not res!201413) (not e!277202))))

(assert (=> d!173209 (= res!201413 (= (content!735 lt!201552) ((_ map or) (content!735 (++!1274 lt!201188 lt!201198)) (content!735 lt!201195))))))

(declare-fun e!277201 () List!4397)

(assert (=> d!173209 (= lt!201552 e!277201)))

(declare-fun c!91705 () Bool)

(assert (=> d!173209 (= c!91705 ((_ is Nil!4387) (++!1274 lt!201188 lt!201198)))))

(assert (=> d!173209 (= (++!1274 (++!1274 lt!201188 lt!201198) lt!201195) lt!201552)))

(declare-fun b!453274 () Bool)

(assert (=> b!453274 (= e!277201 lt!201195)))

(declare-fun b!453275 () Bool)

(assert (=> b!453275 (= e!277201 (Cons!4387 (h!9784 (++!1274 lt!201188 lt!201198)) (++!1274 (t!71013 (++!1274 lt!201188 lt!201198)) lt!201195)))))

(declare-fun b!453277 () Bool)

(assert (=> b!453277 (= e!277202 (or (not (= lt!201195 Nil!4387)) (= lt!201552 (++!1274 lt!201188 lt!201198))))))

(assert (= (and d!173209 c!91705) b!453274))

(assert (= (and d!173209 (not c!91705)) b!453275))

(assert (= (and d!173209 res!201413) b!453276))

(assert (= (and b!453276 res!201412) b!453277))

(declare-fun m!717531 () Bool)

(assert (=> b!453276 m!717531))

(assert (=> b!453276 m!716523))

(declare-fun m!717533 () Bool)

(assert (=> b!453276 m!717533))

(assert (=> b!453276 m!717203))

(declare-fun m!717535 () Bool)

(assert (=> d!173209 m!717535))

(assert (=> d!173209 m!716523))

(declare-fun m!717537 () Bool)

(assert (=> d!173209 m!717537))

(assert (=> d!173209 m!717209))

(declare-fun m!717539 () Bool)

(assert (=> b!453275 m!717539))

(assert (=> b!452592 d!173209))

(declare-fun d!173211 () Bool)

(assert (=> d!173211 (= (list!1947 (charsOf!494 (h!9786 tokens!465))) (list!1951 (c!91574 (charsOf!494 (h!9786 tokens!465)))))))

(declare-fun bs!56111 () Bool)

(assert (= bs!56111 d!173211))

(declare-fun m!717541 () Bool)

(assert (=> bs!56111 m!717541))

(assert (=> b!452592 d!173211))

(declare-fun d!173213 () Bool)

(declare-fun lt!201553 () BalanceConc!3056)

(assert (=> d!173213 (= (list!1947 lt!201553) (originalCharacters!894 (h!9786 tokens!465)))))

(assert (=> d!173213 (= lt!201553 (dynLambda!2652 (toChars!1525 (transformation!851 (rule!1542 (h!9786 tokens!465)))) (value!28569 (h!9786 tokens!465))))))

(assert (=> d!173213 (= (charsOf!494 (h!9786 tokens!465)) lt!201553)))

(declare-fun b_lambda!18777 () Bool)

(assert (=> (not b_lambda!18777) (not d!173213)))

(assert (=> d!173213 t!71065))

(declare-fun b_and!48687 () Bool)

(assert (= b_and!48681 (and (=> t!71065 result!50090) b_and!48687)))

(assert (=> d!173213 t!71067))

(declare-fun b_and!48689 () Bool)

(assert (= b_and!48683 (and (=> t!71067 result!50092) b_and!48689)))

(assert (=> d!173213 t!71069))

(declare-fun b_and!48691 () Bool)

(assert (= b_and!48685 (and (=> t!71069 result!50094) b_and!48691)))

(declare-fun m!717543 () Bool)

(assert (=> d!173213 m!717543))

(assert (=> d!173213 m!717435))

(assert (=> b!452592 d!173213))

(declare-fun b!453280 () Bool)

(declare-fun res!201414 () Bool)

(declare-fun e!277204 () Bool)

(assert (=> b!453280 (=> (not res!201414) (not e!277204))))

(declare-fun lt!201554 () List!4397)

(assert (=> b!453280 (= res!201414 (= (size!3610 lt!201554) (+ (size!3610 lt!201188) (size!3610 lt!201198))))))

(declare-fun d!173215 () Bool)

(assert (=> d!173215 e!277204))

(declare-fun res!201415 () Bool)

(assert (=> d!173215 (=> (not res!201415) (not e!277204))))

(assert (=> d!173215 (= res!201415 (= (content!735 lt!201554) ((_ map or) (content!735 lt!201188) (content!735 lt!201198))))))

(declare-fun e!277203 () List!4397)

(assert (=> d!173215 (= lt!201554 e!277203)))

(declare-fun c!91706 () Bool)

(assert (=> d!173215 (= c!91706 ((_ is Nil!4387) lt!201188))))

(assert (=> d!173215 (= (++!1274 lt!201188 lt!201198) lt!201554)))

(declare-fun b!453278 () Bool)

(assert (=> b!453278 (= e!277203 lt!201198)))

(declare-fun b!453279 () Bool)

(assert (=> b!453279 (= e!277203 (Cons!4387 (h!9784 lt!201188) (++!1274 (t!71013 lt!201188) lt!201198)))))

(declare-fun b!453281 () Bool)

(assert (=> b!453281 (= e!277204 (or (not (= lt!201198 Nil!4387)) (= lt!201554 lt!201188)))))

(assert (= (and d!173215 c!91706) b!453278))

(assert (= (and d!173215 (not c!91706)) b!453279))

(assert (= (and d!173215 res!201415) b!453280))

(assert (= (and b!453280 res!201414) b!453281))

(declare-fun m!717545 () Bool)

(assert (=> b!453280 m!717545))

(assert (=> b!453280 m!716879))

(assert (=> b!453280 m!717461))

(declare-fun m!717547 () Bool)

(assert (=> d!173215 m!717547))

(assert (=> d!173215 m!717207))

(assert (=> d!173215 m!717465))

(declare-fun m!717549 () Bool)

(assert (=> b!453279 m!717549))

(assert (=> b!452592 d!173215))

(declare-fun b!453284 () Bool)

(declare-fun res!201416 () Bool)

(declare-fun e!277206 () Bool)

(assert (=> b!453284 (=> (not res!201416) (not e!277206))))

(declare-fun lt!201555 () List!4397)

(assert (=> b!453284 (= res!201416 (= (size!3610 lt!201555) (+ (size!3610 lt!201188) (size!3610 lt!201183))))))

(declare-fun d!173217 () Bool)

(assert (=> d!173217 e!277206))

(declare-fun res!201417 () Bool)

(assert (=> d!173217 (=> (not res!201417) (not e!277206))))

(assert (=> d!173217 (= res!201417 (= (content!735 lt!201555) ((_ map or) (content!735 lt!201188) (content!735 lt!201183))))))

(declare-fun e!277205 () List!4397)

(assert (=> d!173217 (= lt!201555 e!277205)))

(declare-fun c!91707 () Bool)

(assert (=> d!173217 (= c!91707 ((_ is Nil!4387) lt!201188))))

(assert (=> d!173217 (= (++!1274 lt!201188 lt!201183) lt!201555)))

(declare-fun b!453282 () Bool)

(assert (=> b!453282 (= e!277205 lt!201183)))

(declare-fun b!453283 () Bool)

(assert (=> b!453283 (= e!277205 (Cons!4387 (h!9784 lt!201188) (++!1274 (t!71013 lt!201188) lt!201183)))))

(declare-fun b!453285 () Bool)

(assert (=> b!453285 (= e!277206 (or (not (= lt!201183 Nil!4387)) (= lt!201555 lt!201188)))))

(assert (= (and d!173217 c!91707) b!453282))

(assert (= (and d!173217 (not c!91707)) b!453283))

(assert (= (and d!173217 res!201417) b!453284))

(assert (= (and b!453284 res!201416) b!453285))

(declare-fun m!717551 () Bool)

(assert (=> b!453284 m!717551))

(assert (=> b!453284 m!716879))

(declare-fun m!717553 () Bool)

(assert (=> b!453284 m!717553))

(declare-fun m!717555 () Bool)

(assert (=> d!173217 m!717555))

(assert (=> d!173217 m!717207))

(declare-fun m!717557 () Bool)

(assert (=> d!173217 m!717557))

(declare-fun m!717559 () Bool)

(assert (=> b!453283 m!717559))

(assert (=> b!452592 d!173217))

(declare-fun bs!56112 () Bool)

(declare-fun b!453291 () Bool)

(assert (= bs!56112 (and b!453291 b!453266)))

(declare-fun lambda!13223 () Int)

(assert (=> bs!56112 (= lambda!13223 lambda!13222)))

(declare-fun bs!56113 () Bool)

(assert (= bs!56113 (and b!453291 b!452594)))

(assert (=> bs!56113 (not (= lambda!13223 lambda!13185))))

(declare-fun bs!56114 () Bool)

(assert (= bs!56114 (and b!453291 d!173205)))

(assert (=> bs!56114 (not (= lambda!13223 lambda!13221))))

(declare-fun bs!56115 () Bool)

(assert (= bs!56115 (and b!453291 b!452587)))

(assert (=> bs!56115 (= lambda!13223 lambda!13186)))

(declare-fun bs!56116 () Bool)

(assert (= bs!56116 (and b!453291 d!173079)))

(assert (=> bs!56116 (not (= lambda!13223 lambda!13208))))

(declare-fun bs!56117 () Bool)

(assert (= bs!56117 (and b!453291 b!452896)))

(assert (=> bs!56117 (= lambda!13223 lambda!13209)))

(declare-fun bs!56118 () Bool)

(assert (= bs!56118 (and b!453291 d!173035)))

(assert (=> bs!56118 (= lambda!13223 lambda!13200)))

(declare-fun bs!56119 () Bool)

(assert (= bs!56119 (and b!453291 b!453009)))

(assert (=> bs!56119 (= lambda!13223 lambda!13215)))

(declare-fun b!453298 () Bool)

(declare-fun e!277214 () Bool)

(assert (=> b!453298 (= e!277214 true)))

(declare-fun b!453297 () Bool)

(declare-fun e!277213 () Bool)

(assert (=> b!453297 (= e!277213 e!277214)))

(declare-fun b!453296 () Bool)

(declare-fun e!277212 () Bool)

(assert (=> b!453296 (= e!277212 e!277213)))

(assert (=> b!453291 e!277212))

(assert (= b!453297 b!453298))

(assert (= b!453296 b!453297))

(assert (= (and b!453291 ((_ is Cons!4388) rules!1920)) b!453296))

(assert (=> b!453298 (< (dynLambda!2646 order!3857 (toValue!1666 (transformation!851 (h!9785 rules!1920)))) (dynLambda!2647 order!3859 lambda!13223))))

(assert (=> b!453298 (< (dynLambda!2648 order!3861 (toChars!1525 (transformation!851 (h!9785 rules!1920)))) (dynLambda!2647 order!3859 lambda!13223))))

(assert (=> b!453291 true))

(declare-fun b!453286 () Bool)

(declare-fun e!277209 () BalanceConc!3056)

(assert (=> b!453286 (= e!277209 (charsOf!494 separatorToken!170))))

(declare-fun bm!31409 () Bool)

(declare-fun c!91710 () Bool)

(declare-fun c!91708 () Bool)

(assert (=> bm!31409 (= c!91710 c!91708)))

(declare-fun call!31418 () List!4397)

(declare-fun e!277211 () List!4397)

(declare-fun lt!201557 () List!4397)

(declare-fun call!31416 () List!4397)

(assert (=> bm!31409 (= call!31416 (++!1274 e!277211 (ite c!91708 lt!201557 call!31418)))))

(declare-fun bm!31410 () Bool)

(declare-fun call!31414 () BalanceConc!3056)

(assert (=> bm!31410 (= call!31414 (charsOf!494 (h!9786 (t!71015 tokens!465))))))

(declare-fun b!453287 () Bool)

(declare-fun c!91709 () Bool)

(declare-fun lt!201561 () Option!1134)

(assert (=> b!453287 (= c!91709 (and ((_ is Some!1133) lt!201561) (not (= (_1!2875 (v!15448 lt!201561)) (h!9786 (t!71015 tokens!465))))))))

(declare-fun e!277208 () List!4397)

(declare-fun e!277207 () List!4397)

(assert (=> b!453287 (= e!277208 e!277207)))

(declare-fun bm!31411 () Bool)

(declare-fun call!31417 () BalanceConc!3056)

(assert (=> bm!31411 (= call!31417 call!31414)))

(declare-fun b!453288 () Bool)

(assert (=> b!453288 (= e!277207 Nil!4387)))

(assert (=> b!453288 (= (print!462 thiss!17480 (singletonSeq!397 (h!9786 (t!71015 tokens!465)))) (printTailRec!423 thiss!17480 (singletonSeq!397 (h!9786 (t!71015 tokens!465))) 0 (BalanceConc!3057 Empty!1524)))))

(declare-fun lt!201558 () Unit!7921)

(declare-fun Unit!7937 () Unit!7921)

(assert (=> b!453288 (= lt!201558 Unit!7937)))

(declare-fun lt!201559 () Unit!7921)

(assert (=> b!453288 (= lt!201559 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!190 thiss!17480 rules!1920 call!31418 lt!201557))))

(assert (=> b!453288 false))

(declare-fun lt!201560 () Unit!7921)

(declare-fun Unit!7938 () Unit!7921)

(assert (=> b!453288 (= lt!201560 Unit!7938)))

(declare-fun b!453289 () Bool)

(assert (=> b!453289 (= e!277208 call!31416)))

(declare-fun b!453290 () Bool)

(assert (=> b!453290 (= e!277211 (list!1947 call!31417))))

(declare-fun e!277210 () List!4397)

(assert (=> b!453291 (= e!277210 e!277208)))

(declare-fun lt!201556 () Unit!7921)

(assert (=> b!453291 (= lt!201556 (forallContained!404 (t!71015 tokens!465) lambda!13223 (h!9786 (t!71015 tokens!465))))))

(assert (=> b!453291 (= lt!201557 (printWithSeparatorTokenWhenNeededList!418 thiss!17480 rules!1920 (t!71015 (t!71015 tokens!465)) separatorToken!170))))

(assert (=> b!453291 (= lt!201561 (maxPrefix!453 thiss!17480 rules!1920 (++!1274 (list!1947 (charsOf!494 (h!9786 (t!71015 tokens!465)))) lt!201557)))))

(assert (=> b!453291 (= c!91708 (and ((_ is Some!1133) lt!201561) (= (_1!2875 (v!15448 lt!201561)) (h!9786 (t!71015 tokens!465)))))))

(declare-fun bm!31412 () Bool)

(declare-fun call!31415 () List!4397)

(assert (=> bm!31412 (= call!31415 (list!1947 (ite c!91708 call!31414 e!277209)))))

(declare-fun d!173219 () Bool)

(declare-fun c!91711 () Bool)

(assert (=> d!173219 (= c!91711 ((_ is Cons!4389) (t!71015 tokens!465)))))

(assert (=> d!173219 (= (printWithSeparatorTokenWhenNeededList!418 thiss!17480 rules!1920 (t!71015 tokens!465) separatorToken!170) e!277210)))

(declare-fun b!453292 () Bool)

(assert (=> b!453292 (= e!277210 Nil!4387)))

(declare-fun b!453293 () Bool)

(assert (=> b!453293 (= e!277207 (++!1274 call!31416 lt!201557))))

(declare-fun b!453294 () Bool)

(assert (=> b!453294 (= e!277209 call!31417)))

(declare-fun bm!31413 () Bool)

(assert (=> bm!31413 (= call!31418 call!31415)))

(declare-fun c!91712 () Bool)

(assert (=> bm!31413 (= c!91712 c!91709)))

(declare-fun b!453295 () Bool)

(assert (=> b!453295 (= e!277211 call!31415)))

(assert (= (and d!173219 c!91711) b!453291))

(assert (= (and d!173219 (not c!91711)) b!453292))

(assert (= (and b!453291 c!91708) b!453289))

(assert (= (and b!453291 (not c!91708)) b!453287))

(assert (= (and b!453287 c!91709) b!453293))

(assert (= (and b!453287 (not c!91709)) b!453288))

(assert (= (or b!453293 b!453288) bm!31411))

(assert (= (or b!453293 b!453288) bm!31413))

(assert (= (and bm!31413 c!91712) b!453286))

(assert (= (and bm!31413 (not c!91712)) b!453294))

(assert (= (or b!453289 bm!31411) bm!31410))

(assert (= (or b!453289 bm!31413) bm!31412))

(assert (= (or b!453289 b!453293) bm!31409))

(assert (= (and bm!31409 c!91710) b!453295))

(assert (= (and bm!31409 (not c!91710)) b!453290))

(assert (=> b!453286 m!716527))

(declare-fun m!717561 () Bool)

(assert (=> bm!31409 m!717561))

(declare-fun m!717563 () Bool)

(assert (=> b!453290 m!717563))

(declare-fun m!717565 () Bool)

(assert (=> b!453293 m!717565))

(declare-fun m!717567 () Bool)

(assert (=> b!453288 m!717567))

(assert (=> b!453288 m!717567))

(declare-fun m!717569 () Bool)

(assert (=> b!453288 m!717569))

(assert (=> b!453288 m!717567))

(declare-fun m!717571 () Bool)

(assert (=> b!453288 m!717571))

(declare-fun m!717573 () Bool)

(assert (=> b!453288 m!717573))

(declare-fun m!717575 () Bool)

(assert (=> bm!31412 m!717575))

(declare-fun m!717577 () Bool)

(assert (=> bm!31410 m!717577))

(declare-fun m!717579 () Bool)

(assert (=> b!453291 m!717579))

(declare-fun m!717581 () Bool)

(assert (=> b!453291 m!717581))

(declare-fun m!717583 () Bool)

(assert (=> b!453291 m!717583))

(declare-fun m!717585 () Bool)

(assert (=> b!453291 m!717585))

(assert (=> b!453291 m!717577))

(assert (=> b!453291 m!717577))

(assert (=> b!453291 m!717583))

(assert (=> b!453291 m!717585))

(declare-fun m!717587 () Bool)

(assert (=> b!453291 m!717587))

(assert (=> b!452592 d!173219))

(declare-fun b!453299 () Bool)

(declare-fun e!277216 () Bool)

(declare-fun e!277217 () Bool)

(assert (=> b!453299 (= e!277216 e!277217)))

(declare-fun c!91713 () Bool)

(assert (=> b!453299 (= c!91713 ((_ is IntegerValue!2620) (value!28569 (h!9786 tokens!465))))))

(declare-fun b!453300 () Bool)

(declare-fun e!277215 () Bool)

(assert (=> b!453300 (= e!277215 (inv!15 (value!28569 (h!9786 tokens!465))))))

(declare-fun b!453301 () Bool)

(declare-fun res!201418 () Bool)

(assert (=> b!453301 (=> res!201418 e!277215)))

(assert (=> b!453301 (= res!201418 (not ((_ is IntegerValue!2621) (value!28569 (h!9786 tokens!465)))))))

(assert (=> b!453301 (= e!277217 e!277215)))

(declare-fun d!173221 () Bool)

(declare-fun c!91714 () Bool)

(assert (=> d!173221 (= c!91714 ((_ is IntegerValue!2619) (value!28569 (h!9786 tokens!465))))))

(assert (=> d!173221 (= (inv!21 (value!28569 (h!9786 tokens!465))) e!277216)))

(declare-fun b!453302 () Bool)

(assert (=> b!453302 (= e!277216 (inv!16 (value!28569 (h!9786 tokens!465))))))

(declare-fun b!453303 () Bool)

(assert (=> b!453303 (= e!277217 (inv!17 (value!28569 (h!9786 tokens!465))))))

(assert (= (and d!173221 c!91714) b!453302))

(assert (= (and d!173221 (not c!91714)) b!453299))

(assert (= (and b!453299 c!91713) b!453303))

(assert (= (and b!453299 (not c!91713)) b!453301))

(assert (= (and b!453301 (not res!201418)) b!453300))

(declare-fun m!717589 () Bool)

(assert (=> b!453300 m!717589))

(declare-fun m!717591 () Bool)

(assert (=> b!453302 m!717591))

(declare-fun m!717593 () Bool)

(assert (=> b!453303 m!717593))

(assert (=> b!452571 d!173221))

(declare-fun bs!56120 () Bool)

(declare-fun d!173223 () Bool)

(assert (= bs!56120 (and d!173223 b!453266)))

(declare-fun lambda!13226 () Int)

(assert (=> bs!56120 (= lambda!13226 lambda!13222)))

(declare-fun bs!56121 () Bool)

(assert (= bs!56121 (and d!173223 b!452594)))

(assert (=> bs!56121 (not (= lambda!13226 lambda!13185))))

(declare-fun bs!56122 () Bool)

(assert (= bs!56122 (and d!173223 d!173205)))

(assert (=> bs!56122 (not (= lambda!13226 lambda!13221))))

(declare-fun bs!56123 () Bool)

(assert (= bs!56123 (and d!173223 b!453291)))

(assert (=> bs!56123 (= lambda!13226 lambda!13223)))

(declare-fun bs!56124 () Bool)

(assert (= bs!56124 (and d!173223 b!452587)))

(assert (=> bs!56124 (= lambda!13226 lambda!13186)))

(declare-fun bs!56125 () Bool)

(assert (= bs!56125 (and d!173223 d!173079)))

(assert (=> bs!56125 (not (= lambda!13226 lambda!13208))))

(declare-fun bs!56126 () Bool)

(assert (= bs!56126 (and d!173223 b!452896)))

(assert (=> bs!56126 (= lambda!13226 lambda!13209)))

(declare-fun bs!56127 () Bool)

(assert (= bs!56127 (and d!173223 d!173035)))

(assert (=> bs!56127 (= lambda!13226 lambda!13200)))

(declare-fun bs!56128 () Bool)

(assert (= bs!56128 (and d!173223 b!453009)))

(assert (=> bs!56128 (= lambda!13226 lambda!13215)))

(declare-fun b!453312 () Bool)

(declare-fun e!277226 () Bool)

(assert (=> b!453312 (= e!277226 true)))

(declare-fun b!453311 () Bool)

(declare-fun e!277225 () Bool)

(assert (=> b!453311 (= e!277225 e!277226)))

(declare-fun b!453310 () Bool)

(declare-fun e!277224 () Bool)

(assert (=> b!453310 (= e!277224 e!277225)))

(assert (=> d!173223 e!277224))

(assert (= b!453311 b!453312))

(assert (= b!453310 b!453311))

(assert (= (and d!173223 ((_ is Cons!4388) rules!1920)) b!453310))

(assert (=> b!453312 (< (dynLambda!2646 order!3857 (toValue!1666 (transformation!851 (h!9785 rules!1920)))) (dynLambda!2647 order!3859 lambda!13226))))

(assert (=> b!453312 (< (dynLambda!2648 order!3861 (toChars!1525 (transformation!851 (h!9785 rules!1920)))) (dynLambda!2647 order!3859 lambda!13226))))

(assert (=> d!173223 true))

(declare-fun lt!201564 () Bool)

(assert (=> d!173223 (= lt!201564 (forall!1270 tokens!465 lambda!13226))))

(declare-fun e!277223 () Bool)

(assert (=> d!173223 (= lt!201564 e!277223)))

(declare-fun res!201424 () Bool)

(assert (=> d!173223 (=> res!201424 e!277223)))

(assert (=> d!173223 (= res!201424 (not ((_ is Cons!4389) tokens!465)))))

(assert (=> d!173223 (not (isEmpty!3347 rules!1920))))

(assert (=> d!173223 (= (rulesProduceEachTokenIndividuallyList!313 thiss!17480 rules!1920 tokens!465) lt!201564)))

(declare-fun b!453308 () Bool)

(declare-fun e!277222 () Bool)

(assert (=> b!453308 (= e!277223 e!277222)))

(declare-fun res!201423 () Bool)

(assert (=> b!453308 (=> (not res!201423) (not e!277222))))

(assert (=> b!453308 (= res!201423 (rulesProduceIndividualToken!486 thiss!17480 rules!1920 (h!9786 tokens!465)))))

(declare-fun b!453309 () Bool)

(assert (=> b!453309 (= e!277222 (rulesProduceEachTokenIndividuallyList!313 thiss!17480 rules!1920 (t!71015 tokens!465)))))

(assert (= (and d!173223 (not res!201424)) b!453308))

(assert (= (and b!453308 res!201423) b!453309))

(declare-fun m!717595 () Bool)

(assert (=> d!173223 m!717595))

(assert (=> d!173223 m!716469))

(assert (=> b!453308 m!716453))

(declare-fun m!717597 () Bool)

(assert (=> b!453309 m!717597))

(assert (=> b!452590 d!173223))

(declare-fun b!453326 () Bool)

(declare-fun e!277229 () Bool)

(declare-fun tp!125969 () Bool)

(declare-fun tp!125971 () Bool)

(assert (=> b!453326 (= e!277229 (and tp!125969 tp!125971))))

(assert (=> b!452586 (= tp!125889 e!277229)))

(declare-fun b!453323 () Bool)

(declare-fun tp_is_empty!1975 () Bool)

(assert (=> b!453323 (= e!277229 tp_is_empty!1975)))

(declare-fun b!453325 () Bool)

(declare-fun tp!125972 () Bool)

(assert (=> b!453325 (= e!277229 tp!125972)))

(declare-fun b!453324 () Bool)

(declare-fun tp!125968 () Bool)

(declare-fun tp!125970 () Bool)

(assert (=> b!453324 (= e!277229 (and tp!125968 tp!125970))))

(assert (= (and b!452586 ((_ is ElementMatch!1075) (regex!851 (rule!1542 separatorToken!170)))) b!453323))

(assert (= (and b!452586 ((_ is Concat!1949) (regex!851 (rule!1542 separatorToken!170)))) b!453324))

(assert (= (and b!452586 ((_ is Star!1075) (regex!851 (rule!1542 separatorToken!170)))) b!453325))

(assert (= (and b!452586 ((_ is Union!1075) (regex!851 (rule!1542 separatorToken!170)))) b!453326))

(declare-fun b!453330 () Bool)

(declare-fun e!277230 () Bool)

(declare-fun tp!125974 () Bool)

(declare-fun tp!125976 () Bool)

(assert (=> b!453330 (= e!277230 (and tp!125974 tp!125976))))

(assert (=> b!452597 (= tp!125885 e!277230)))

(declare-fun b!453327 () Bool)

(assert (=> b!453327 (= e!277230 tp_is_empty!1975)))

(declare-fun b!453329 () Bool)

(declare-fun tp!125977 () Bool)

(assert (=> b!453329 (= e!277230 tp!125977)))

(declare-fun b!453328 () Bool)

(declare-fun tp!125973 () Bool)

(declare-fun tp!125975 () Bool)

(assert (=> b!453328 (= e!277230 (and tp!125973 tp!125975))))

(assert (= (and b!452597 ((_ is ElementMatch!1075) (regex!851 (rule!1542 (h!9786 tokens!465))))) b!453327))

(assert (= (and b!452597 ((_ is Concat!1949) (regex!851 (rule!1542 (h!9786 tokens!465))))) b!453328))

(assert (= (and b!452597 ((_ is Star!1075) (regex!851 (rule!1542 (h!9786 tokens!465))))) b!453329))

(assert (= (and b!452597 ((_ is Union!1075) (regex!851 (rule!1542 (h!9786 tokens!465))))) b!453330))

(declare-fun b!453341 () Bool)

(declare-fun b_free!12581 () Bool)

(declare-fun b_next!12581 () Bool)

(assert (=> b!453341 (= b_free!12581 (not b_next!12581))))

(declare-fun tp!125988 () Bool)

(declare-fun b_and!48693 () Bool)

(assert (=> b!453341 (= tp!125988 b_and!48693)))

(declare-fun b_free!12583 () Bool)

(declare-fun b_next!12583 () Bool)

(assert (=> b!453341 (= b_free!12583 (not b_next!12583))))

(declare-fun t!71077 () Bool)

(declare-fun tb!45533 () Bool)

(assert (=> (and b!453341 (= (toChars!1525 (transformation!851 (h!9785 (t!71014 rules!1920)))) (toChars!1525 (transformation!851 (rule!1542 separatorToken!170)))) t!71077) tb!45533))

(declare-fun result!50104 () Bool)

(assert (= result!50104 result!50070))

(assert (=> b!453042 t!71077))

(declare-fun tb!45535 () Bool)

(declare-fun t!71079 () Bool)

(assert (=> (and b!453341 (= (toChars!1525 (transformation!851 (h!9785 (t!71014 rules!1920)))) (toChars!1525 (transformation!851 (rule!1542 (h!9786 tokens!465))))) t!71079) tb!45535))

(declare-fun result!50106 () Bool)

(assert (= result!50106 result!50090))

(assert (=> b!453238 t!71079))

(assert (=> d!173207 t!71077))

(assert (=> d!173213 t!71079))

(declare-fun tp!125989 () Bool)

(declare-fun b_and!48695 () Bool)

(assert (=> b!453341 (= tp!125989 (and (=> t!71077 result!50104) (=> t!71079 result!50106) b_and!48695))))

(declare-fun e!277240 () Bool)

(assert (=> b!453341 (= e!277240 (and tp!125988 tp!125989))))

(declare-fun b!453340 () Bool)

(declare-fun tp!125986 () Bool)

(declare-fun e!277241 () Bool)

(assert (=> b!453340 (= e!277241 (and tp!125986 (inv!5460 (tag!1111 (h!9785 (t!71014 rules!1920)))) (inv!5464 (transformation!851 (h!9785 (t!71014 rules!1920)))) e!277240))))

(declare-fun b!453339 () Bool)

(declare-fun e!277239 () Bool)

(declare-fun tp!125987 () Bool)

(assert (=> b!453339 (= e!277239 (and e!277241 tp!125987))))

(assert (=> b!452593 (= tp!125884 e!277239)))

(assert (= b!453340 b!453341))

(assert (= b!453339 b!453340))

(assert (= (and b!452593 ((_ is Cons!4388) (t!71014 rules!1920))) b!453339))

(declare-fun m!717599 () Bool)

(assert (=> b!453340 m!717599))

(declare-fun m!717601 () Bool)

(assert (=> b!453340 m!717601))

(declare-fun b!453345 () Bool)

(declare-fun e!277243 () Bool)

(declare-fun tp!125991 () Bool)

(declare-fun tp!125993 () Bool)

(assert (=> b!453345 (= e!277243 (and tp!125991 tp!125993))))

(assert (=> b!452591 (= tp!125892 e!277243)))

(declare-fun b!453342 () Bool)

(assert (=> b!453342 (= e!277243 tp_is_empty!1975)))

(declare-fun b!453344 () Bool)

(declare-fun tp!125994 () Bool)

(assert (=> b!453344 (= e!277243 tp!125994)))

(declare-fun b!453343 () Bool)

(declare-fun tp!125990 () Bool)

(declare-fun tp!125992 () Bool)

(assert (=> b!453343 (= e!277243 (and tp!125990 tp!125992))))

(assert (= (and b!452591 ((_ is ElementMatch!1075) (regex!851 (h!9785 rules!1920)))) b!453342))

(assert (= (and b!452591 ((_ is Concat!1949) (regex!851 (h!9785 rules!1920)))) b!453343))

(assert (= (and b!452591 ((_ is Star!1075) (regex!851 (h!9785 rules!1920)))) b!453344))

(assert (= (and b!452591 ((_ is Union!1075) (regex!851 (h!9785 rules!1920)))) b!453345))

(declare-fun b!453359 () Bool)

(declare-fun b_free!12585 () Bool)

(declare-fun b_next!12585 () Bool)

(assert (=> b!453359 (= b_free!12585 (not b_next!12585))))

(declare-fun tp!126005 () Bool)

(declare-fun b_and!48697 () Bool)

(assert (=> b!453359 (= tp!126005 b_and!48697)))

(declare-fun b_free!12587 () Bool)

(declare-fun b_next!12587 () Bool)

(assert (=> b!453359 (= b_free!12587 (not b_next!12587))))

(declare-fun tb!45537 () Bool)

(declare-fun t!71081 () Bool)

(assert (=> (and b!453359 (= (toChars!1525 (transformation!851 (rule!1542 (h!9786 (t!71015 tokens!465))))) (toChars!1525 (transformation!851 (rule!1542 separatorToken!170)))) t!71081) tb!45537))

(declare-fun result!50110 () Bool)

(assert (= result!50110 result!50070))

(assert (=> b!453042 t!71081))

(declare-fun t!71083 () Bool)

(declare-fun tb!45539 () Bool)

(assert (=> (and b!453359 (= (toChars!1525 (transformation!851 (rule!1542 (h!9786 (t!71015 tokens!465))))) (toChars!1525 (transformation!851 (rule!1542 (h!9786 tokens!465))))) t!71083) tb!45539))

(declare-fun result!50112 () Bool)

(assert (= result!50112 result!50090))

(assert (=> b!453238 t!71083))

(assert (=> d!173207 t!71081))

(assert (=> d!173213 t!71083))

(declare-fun tp!126009 () Bool)

(declare-fun b_and!48699 () Bool)

(assert (=> b!453359 (= tp!126009 (and (=> t!71081 result!50110) (=> t!71083 result!50112) b_and!48699))))

(declare-fun e!277259 () Bool)

(declare-fun b!453356 () Bool)

(declare-fun e!277258 () Bool)

(declare-fun tp!126008 () Bool)

(assert (=> b!453356 (= e!277258 (and (inv!5463 (h!9786 (t!71015 tokens!465))) e!277259 tp!126008))))

(assert (=> b!452570 (= tp!125881 e!277258)))

(declare-fun tp!126006 () Bool)

(declare-fun b!453357 () Bool)

(declare-fun e!277261 () Bool)

(assert (=> b!453357 (= e!277259 (and (inv!21 (value!28569 (h!9786 (t!71015 tokens!465)))) e!277261 tp!126006))))

(declare-fun b!453358 () Bool)

(declare-fun e!277257 () Bool)

(declare-fun tp!126007 () Bool)

(assert (=> b!453358 (= e!277261 (and tp!126007 (inv!5460 (tag!1111 (rule!1542 (h!9786 (t!71015 tokens!465))))) (inv!5464 (transformation!851 (rule!1542 (h!9786 (t!71015 tokens!465))))) e!277257))))

(assert (=> b!453359 (= e!277257 (and tp!126005 tp!126009))))

(assert (= b!453358 b!453359))

(assert (= b!453357 b!453358))

(assert (= b!453356 b!453357))

(assert (= (and b!452570 ((_ is Cons!4389) (t!71015 tokens!465))) b!453356))

(declare-fun m!717603 () Bool)

(assert (=> b!453356 m!717603))

(declare-fun m!717605 () Bool)

(assert (=> b!453357 m!717605))

(declare-fun m!717607 () Bool)

(assert (=> b!453358 m!717607))

(declare-fun m!717609 () Bool)

(assert (=> b!453358 m!717609))

(declare-fun b!453364 () Bool)

(declare-fun e!277264 () Bool)

(declare-fun tp!126012 () Bool)

(assert (=> b!453364 (= e!277264 (and tp_is_empty!1975 tp!126012))))

(assert (=> b!452571 (= tp!125891 e!277264)))

(assert (= (and b!452571 ((_ is Cons!4387) (originalCharacters!894 (h!9786 tokens!465)))) b!453364))

(declare-fun b!453365 () Bool)

(declare-fun e!277265 () Bool)

(declare-fun tp!126013 () Bool)

(assert (=> b!453365 (= e!277265 (and tp_is_empty!1975 tp!126013))))

(assert (=> b!452599 (= tp!125888 e!277265)))

(assert (= (and b!452599 ((_ is Cons!4387) (originalCharacters!894 separatorToken!170))) b!453365))

(declare-fun b!453368 () Bool)

(declare-fun e!277268 () Bool)

(assert (=> b!453368 (= e!277268 true)))

(declare-fun b!453367 () Bool)

(declare-fun e!277267 () Bool)

(assert (=> b!453367 (= e!277267 e!277268)))

(declare-fun b!453366 () Bool)

(declare-fun e!277266 () Bool)

(assert (=> b!453366 (= e!277266 e!277267)))

(assert (=> b!452608 e!277266))

(assert (= b!453367 b!453368))

(assert (= b!453366 b!453367))

(assert (= (and b!452608 ((_ is Cons!4388) (t!71014 rules!1920))) b!453366))

(assert (=> b!453368 (< (dynLambda!2646 order!3857 (toValue!1666 (transformation!851 (h!9785 (t!71014 rules!1920))))) (dynLambda!2647 order!3859 lambda!13186))))

(assert (=> b!453368 (< (dynLambda!2648 order!3861 (toChars!1525 (transformation!851 (h!9785 (t!71014 rules!1920))))) (dynLambda!2647 order!3859 lambda!13186))))

(declare-fun b_lambda!18779 () Bool)

(assert (= b_lambda!18775 (or (and b!452589 b_free!12563) (and b!453341 b_free!12583 (= (toChars!1525 (transformation!851 (h!9785 (t!71014 rules!1920)))) (toChars!1525 (transformation!851 (rule!1542 separatorToken!170))))) (and b!452584 b_free!12567 (= (toChars!1525 (transformation!851 (rule!1542 (h!9786 tokens!465)))) (toChars!1525 (transformation!851 (rule!1542 separatorToken!170))))) (and b!452598 b_free!12571 (= (toChars!1525 (transformation!851 (h!9785 rules!1920))) (toChars!1525 (transformation!851 (rule!1542 separatorToken!170))))) (and b!453359 b_free!12587 (= (toChars!1525 (transformation!851 (rule!1542 (h!9786 (t!71015 tokens!465))))) (toChars!1525 (transformation!851 (rule!1542 separatorToken!170))))) b_lambda!18779)))

(declare-fun b_lambda!18781 () Bool)

(assert (= b_lambda!18753 (or (and b!452589 b_free!12563) (and b!453341 b_free!12583 (= (toChars!1525 (transformation!851 (h!9785 (t!71014 rules!1920)))) (toChars!1525 (transformation!851 (rule!1542 separatorToken!170))))) (and b!452584 b_free!12567 (= (toChars!1525 (transformation!851 (rule!1542 (h!9786 tokens!465)))) (toChars!1525 (transformation!851 (rule!1542 separatorToken!170))))) (and b!452598 b_free!12571 (= (toChars!1525 (transformation!851 (h!9785 rules!1920))) (toChars!1525 (transformation!851 (rule!1542 separatorToken!170))))) (and b!453359 b_free!12587 (= (toChars!1525 (transformation!851 (rule!1542 (h!9786 (t!71015 tokens!465))))) (toChars!1525 (transformation!851 (rule!1542 separatorToken!170))))) b_lambda!18781)))

(declare-fun b_lambda!18783 () Bool)

(assert (= b_lambda!18759 (or b!452587 b_lambda!18783)))

(declare-fun bs!56129 () Bool)

(declare-fun d!173225 () Bool)

(assert (= bs!56129 (and d!173225 b!452587)))

(assert (=> bs!56129 (= (dynLambda!2651 lambda!13186 (h!9786 tokens!465)) (rulesProduceIndividualToken!486 thiss!17480 rules!1920 (h!9786 tokens!465)))))

(assert (=> bs!56129 m!716453))

(assert (=> d!173163 d!173225))

(declare-fun b_lambda!18785 () Bool)

(assert (= b_lambda!18777 (or (and b!452598 b_free!12571 (= (toChars!1525 (transformation!851 (h!9785 rules!1920))) (toChars!1525 (transformation!851 (rule!1542 (h!9786 tokens!465)))))) (and b!452589 b_free!12563 (= (toChars!1525 (transformation!851 (rule!1542 separatorToken!170))) (toChars!1525 (transformation!851 (rule!1542 (h!9786 tokens!465)))))) (and b!453359 b_free!12587 (= (toChars!1525 (transformation!851 (rule!1542 (h!9786 (t!71015 tokens!465))))) (toChars!1525 (transformation!851 (rule!1542 (h!9786 tokens!465)))))) (and b!453341 b_free!12583 (= (toChars!1525 (transformation!851 (h!9785 (t!71014 rules!1920)))) (toChars!1525 (transformation!851 (rule!1542 (h!9786 tokens!465)))))) (and b!452584 b_free!12567) b_lambda!18785)))

(declare-fun b_lambda!18787 () Bool)

(assert (= b_lambda!18743 (or b!452594 b_lambda!18787)))

(declare-fun bs!56130 () Bool)

(declare-fun d!173227 () Bool)

(assert (= bs!56130 (and d!173227 b!452594)))

(assert (=> bs!56130 (= (dynLambda!2651 lambda!13185 (h!9786 tokens!465)) (not (isSeparator!851 (rule!1542 (h!9786 tokens!465)))))))

(assert (=> b!452686 d!173227))

(declare-fun b_lambda!18789 () Bool)

(assert (= b_lambda!18761 (or (and b!452598 b_free!12571 (= (toChars!1525 (transformation!851 (h!9785 rules!1920))) (toChars!1525 (transformation!851 (rule!1542 (h!9786 tokens!465)))))) (and b!452589 b_free!12563 (= (toChars!1525 (transformation!851 (rule!1542 separatorToken!170))) (toChars!1525 (transformation!851 (rule!1542 (h!9786 tokens!465)))))) (and b!453359 b_free!12587 (= (toChars!1525 (transformation!851 (rule!1542 (h!9786 (t!71015 tokens!465))))) (toChars!1525 (transformation!851 (rule!1542 (h!9786 tokens!465)))))) (and b!453341 b_free!12583 (= (toChars!1525 (transformation!851 (h!9785 (t!71014 rules!1920)))) (toChars!1525 (transformation!851 (rule!1542 (h!9786 tokens!465)))))) (and b!452584 b_free!12567) b_lambda!18789)))

(check-sat b_and!48625 (not b!452827) (not b_lambda!18783) (not b_lambda!18785) (not b!453286) (not b_next!12583) (not b_next!12587) (not d!173207) (not b!453129) (not b!452660) (not b!453325) (not b!453279) (not b!453310) (not b!453339) (not b!453303) (not bm!31369) (not d!173129) tp_is_empty!1975 (not b!453267) (not b!453259) (not b!452658) (not b_next!12563) (not b!453065) (not d!173211) (not b!453235) (not b!452789) (not bm!31365) (not d!173183) (not b_next!12565) (not bm!31409) (not b!453018) (not b_next!12581) (not b!453128) (not b!453357) (not b!453324) (not d!173029) (not d!173197) (not d!173223) b_and!48629 (not b!452687) (not d!173077) (not b!453366) (not b!453238) (not d!173111) (not b!453126) (not b!453343) (not b!452738) (not b_lambda!18787) (not d!173075) (not b!453242) (not b!452739) (not bm!31408) (not b!453356) (not b!453264) (not b!453127) (not b!453011) (not d!173217) (not d!173121) (not b!453328) (not bm!31396) (not d!173167) (not b!453283) (not b!453125) (not b!453288) (not b_next!12561) (not b!453365) (not b!453042) b_and!48697 (not b!453309) (not b!453345) (not b!453019) (not d!173161) (not d!173035) (not tb!45513) (not d!173061) (not bm!31410) (not b!453218) (not b!453266) (not b!452824) (not d!173057) (not b!453271) (not b!452791) (not b!453275) (not b!453358) (not b_next!12585) (not b!453344) (not d!173023) b_and!48633 (not d!173019) b_and!48695 (not b!452831) (not b!452667) (not b!453329) (not b!452787) (not d!173119) (not d!173017) (not b!452681) (not d!173193) b_and!48693 (not b!453037) (not b!453221) (not d!173191) (not bs!56129) (not d!173165) (not bm!31351) (not b!453340) (not d!173189) (not b!452829) (not b!453291) (not bm!31394) (not b!452794) (not b!452901) (not bm!31367) b_and!48687 (not d!173013) (not b!453280) (not d!173163) (not b!453260) (not b!453067) (not b_lambda!18779) (not tb!45523) (not bm!31393) (not d!173209) (not b!453217) (not b!453036) (not b!453066) (not b!453058) (not b!453330) (not b!453296) (not b!453014) (not b!453326) (not b!453004) (not b_next!12571) (not bm!31407) (not b!453293) (not d!173187) (not d!173127) (not d!173205) (not bm!31404) (not b!453123) (not d!173213) b_and!48699 (not bm!31368) (not d!173215) (not bm!31406) (not d!173079) (not b!452793) (not b_lambda!18789) (not b!452790) (not b!453268) (not bm!31400) (not b!453263) (not d!173199) (not d!173195) (not b!452893) (not b!453290) (not b!453022) (not b!452669) (not b!453048) (not b!452897) (not b!452896) (not b!453364) (not b!453008) (not b!453239) (not b!452898) (not b!453219) (not b!453034) (not b!453017) (not b!452788) b_and!48689 (not b!452659) (not b!453284) (not b!452795) (not d!173131) (not b!453043) (not b!453009) (not b_lambda!18781) b_and!48691 (not b!453006) (not b!453308) (not d!173021) (not b!453302) (not b!453059) (not b!452672) (not d!173059) (not b!453122) (not b!453276) (not bm!31354) (not b!452894) (not d!173067) (not b_next!12569) (not b_next!12567) (not b!452825) (not d!173065) (not b!452677) (not bm!31412) (not b!453132) (not b!453300) (not d!173113) (not b!452832))
(check-sat (not b_next!12563) (not b_next!12565) (not b_next!12581) b_and!48629 (not b_next!12561) b_and!48697 b_and!48693 b_and!48687 (not b_next!12571) b_and!48699 b_and!48625 b_and!48689 b_and!48691 (not b_next!12583) (not b_next!12587) (not b_next!12585) b_and!48633 b_and!48695 (not b_next!12569) (not b_next!12567))
