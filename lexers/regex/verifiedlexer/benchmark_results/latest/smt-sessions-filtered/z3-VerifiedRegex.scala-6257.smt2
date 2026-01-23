; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!307782 () Bool)

(assert start!307782)

(declare-fun b!3304774 () Bool)

(declare-fun b_free!86833 () Bool)

(declare-fun b_next!87537 () Bool)

(assert (=> b!3304774 (= b_free!86833 (not b_next!87537))))

(declare-fun tp!1034728 () Bool)

(declare-fun b_and!226415 () Bool)

(assert (=> b!3304774 (= tp!1034728 b_and!226415)))

(declare-fun b_free!86835 () Bool)

(declare-fun b_next!87539 () Bool)

(assert (=> b!3304774 (= b_free!86835 (not b_next!87539))))

(declare-fun tp!1034726 () Bool)

(declare-fun b_and!226417 () Bool)

(assert (=> b!3304774 (= tp!1034726 b_and!226417)))

(declare-fun b!3304770 () Bool)

(declare-fun b_free!86837 () Bool)

(declare-fun b_next!87541 () Bool)

(assert (=> b!3304770 (= b_free!86837 (not b_next!87541))))

(declare-fun tp!1034731 () Bool)

(declare-fun b_and!226419 () Bool)

(assert (=> b!3304770 (= tp!1034731 b_and!226419)))

(declare-fun b_free!86839 () Bool)

(declare-fun b_next!87543 () Bool)

(assert (=> b!3304770 (= b_free!86839 (not b_next!87543))))

(declare-fun tp!1034722 () Bool)

(declare-fun b_and!226421 () Bool)

(assert (=> b!3304770 (= tp!1034722 b_and!226421)))

(declare-fun b!3304768 () Bool)

(declare-fun b_free!86841 () Bool)

(declare-fun b_next!87545 () Bool)

(assert (=> b!3304768 (= b_free!86841 (not b_next!87545))))

(declare-fun tp!1034727 () Bool)

(declare-fun b_and!226423 () Bool)

(assert (=> b!3304768 (= tp!1034727 b_and!226423)))

(declare-fun b_free!86843 () Bool)

(declare-fun b_next!87547 () Bool)

(assert (=> b!3304768 (= b_free!86843 (not b_next!87547))))

(declare-fun tp!1034725 () Bool)

(declare-fun b_and!226425 () Bool)

(assert (=> b!3304768 (= tp!1034725 b_and!226425)))

(declare-fun e!2055215 () Bool)

(declare-datatypes ((C!20292 0))(
  ( (C!20293 (val!12194 Int)) )
))
(declare-datatypes ((Regex!10053 0))(
  ( (ElementMatch!10053 (c!560668 C!20292)) (Concat!15577 (regOne!20618 Regex!10053) (regTwo!20618 Regex!10053)) (EmptyExpr!10053) (Star!10053 (reg!10382 Regex!10053)) (EmptyLang!10053) (Union!10053 (regOne!20619 Regex!10053) (regTwo!20619 Regex!10053)) )
))
(declare-datatypes ((List!36616 0))(
  ( (Nil!36492) (Cons!36492 (h!41912 (_ BitVec 16)) (t!253447 List!36616)) )
))
(declare-datatypes ((TokenValue!5524 0))(
  ( (FloatLiteralValue!11048 (text!39113 List!36616)) (TokenValueExt!5523 (__x!23265 Int)) (Broken!27620 (value!171313 List!36616)) (Object!5647) (End!5524) (Def!5524) (Underscore!5524) (Match!5524) (Else!5524) (Error!5524) (Case!5524) (If!5524) (Extends!5524) (Abstract!5524) (Class!5524) (Val!5524) (DelimiterValue!11048 (del!5584 List!36616)) (KeywordValue!5530 (value!171314 List!36616)) (CommentValue!11048 (value!171315 List!36616)) (WhitespaceValue!11048 (value!171316 List!36616)) (IndentationValue!5524 (value!171317 List!36616)) (String!40953) (Int32!5524) (Broken!27621 (value!171318 List!36616)) (Boolean!5525) (Unit!51429) (OperatorValue!5527 (op!5584 List!36616)) (IdentifierValue!11048 (value!171319 List!36616)) (IdentifierValue!11049 (value!171320 List!36616)) (WhitespaceValue!11049 (value!171321 List!36616)) (True!11048) (False!11048) (Broken!27622 (value!171322 List!36616)) (Broken!27623 (value!171323 List!36616)) (True!11049) (RightBrace!5524) (RightBracket!5524) (Colon!5524) (Null!5524) (Comma!5524) (LeftBracket!5524) (False!11049) (LeftBrace!5524) (ImaginaryLiteralValue!5524 (text!39114 List!36616)) (StringLiteralValue!16572 (value!171324 List!36616)) (EOFValue!5524 (value!171325 List!36616)) (IdentValue!5524 (value!171326 List!36616)) (DelimiterValue!11049 (value!171327 List!36616)) (DedentValue!5524 (value!171328 List!36616)) (NewLineValue!5524 (value!171329 List!36616)) (IntegerValue!16572 (value!171330 (_ BitVec 32)) (text!39115 List!36616)) (IntegerValue!16573 (value!171331 Int) (text!39116 List!36616)) (Times!5524) (Or!5524) (Equal!5524) (Minus!5524) (Broken!27624 (value!171332 List!36616)) (And!5524) (Div!5524) (LessEqual!5524) (Mod!5524) (Concat!15578) (Not!5524) (Plus!5524) (SpaceValue!5524 (value!171333 List!36616)) (IntegerValue!16574 (value!171334 Int) (text!39117 List!36616)) (StringLiteralValue!16573 (text!39118 List!36616)) (FloatLiteralValue!11049 (text!39119 List!36616)) (BytesLiteralValue!5524 (value!171335 List!36616)) (CommentValue!11049 (value!171336 List!36616)) (StringLiteralValue!16574 (value!171337 List!36616)) (ErrorTokenValue!5524 (msg!5585 List!36616)) )
))
(declare-datatypes ((List!36617 0))(
  ( (Nil!36493) (Cons!36493 (h!41913 C!20292) (t!253448 List!36617)) )
))
(declare-datatypes ((IArray!21931 0))(
  ( (IArray!21932 (innerList!11023 List!36617)) )
))
(declare-datatypes ((Conc!10963 0))(
  ( (Node!10963 (left!28424 Conc!10963) (right!28754 Conc!10963) (csize!22156 Int) (cheight!11174 Int)) (Leaf!17221 (xs!14101 IArray!21931) (csize!22157 Int)) (Empty!10963) )
))
(declare-datatypes ((BalanceConc!21540 0))(
  ( (BalanceConc!21541 (c!560669 Conc!10963)) )
))
(declare-datatypes ((String!40954 0))(
  ( (String!40955 (value!171338 String)) )
))
(declare-datatypes ((TokenValueInjection!10476 0))(
  ( (TokenValueInjection!10477 (toValue!7430 Int) (toChars!7289 Int)) )
))
(declare-datatypes ((Rule!10388 0))(
  ( (Rule!10389 (regex!5294 Regex!10053) (tag!5840 String!40954) (isSeparator!5294 Bool) (transformation!5294 TokenValueInjection!10476)) )
))
(declare-datatypes ((Token!9954 0))(
  ( (Token!9955 (value!171339 TokenValue!5524) (rule!7798 Rule!10388) (size!27563 Int) (originalCharacters!6008 List!36617)) )
))
(declare-datatypes ((List!36618 0))(
  ( (Nil!36494) (Cons!36494 (h!41914 Token!9954) (t!253449 List!36618)) )
))
(declare-fun tokens!494 () List!36618)

(declare-fun e!2055214 () Bool)

(declare-fun tp!1034724 () Bool)

(declare-fun b!3304763 () Bool)

(declare-fun inv!49453 (String!40954) Bool)

(declare-fun inv!49456 (TokenValueInjection!10476) Bool)

(assert (=> b!3304763 (= e!2055215 (and tp!1034724 (inv!49453 (tag!5840 (rule!7798 (h!41914 tokens!494)))) (inv!49456 (transformation!5294 (rule!7798 (h!41914 tokens!494)))) e!2055214))))

(declare-fun b!3304764 () Bool)

(declare-fun res!1340328 () Bool)

(declare-fun e!2055223 () Bool)

(assert (=> b!3304764 (=> (not res!1340328) (not e!2055223))))

(declare-fun lambda!118987 () Int)

(declare-fun forall!7562 (List!36618 Int) Bool)

(assert (=> b!3304764 (= res!1340328 (forall!7562 tokens!494 lambda!118987))))

(declare-fun res!1340333 () Bool)

(assert (=> start!307782 (=> (not res!1340333) (not e!2055223))))

(declare-datatypes ((LexerInterface!4883 0))(
  ( (LexerInterfaceExt!4880 (__x!23266 Int)) (Lexer!4881) )
))
(declare-fun thiss!18206 () LexerInterface!4883)

(get-info :version)

(assert (=> start!307782 (= res!1340333 ((_ is Lexer!4881) thiss!18206))))

(assert (=> start!307782 e!2055223))

(assert (=> start!307782 true))

(declare-fun e!2055224 () Bool)

(assert (=> start!307782 e!2055224))

(declare-fun e!2055217 () Bool)

(assert (=> start!307782 e!2055217))

(declare-fun separatorToken!241 () Token!9954)

(declare-fun e!2055216 () Bool)

(declare-fun inv!49457 (Token!9954) Bool)

(assert (=> start!307782 (and (inv!49457 separatorToken!241) e!2055216)))

(declare-fun b!3304765 () Bool)

(declare-fun res!1340332 () Bool)

(assert (=> b!3304765 (=> (not res!1340332) (not e!2055223))))

(declare-datatypes ((List!36619 0))(
  ( (Nil!36495) (Cons!36495 (h!41915 Rule!10388) (t!253450 List!36619)) )
))
(declare-fun rules!2135 () List!36619)

(declare-datatypes ((IArray!21933 0))(
  ( (IArray!21934 (innerList!11024 List!36618)) )
))
(declare-datatypes ((Conc!10964 0))(
  ( (Node!10964 (left!28425 Conc!10964) (right!28755 Conc!10964) (csize!22158 Int) (cheight!11175 Int)) (Leaf!17222 (xs!14102 IArray!21933) (csize!22159 Int)) (Empty!10964) )
))
(declare-datatypes ((BalanceConc!21542 0))(
  ( (BalanceConc!21543 (c!560670 Conc!10964)) )
))
(declare-fun rulesProduceEachTokenIndividually!1334 (LexerInterface!4883 List!36619 BalanceConc!21542) Bool)

(declare-fun seqFromList!3646 (List!36618) BalanceConc!21542)

(assert (=> b!3304765 (= res!1340332 (rulesProduceEachTokenIndividually!1334 thiss!18206 rules!2135 (seqFromList!3646 tokens!494)))))

(declare-fun e!2055220 () Bool)

(declare-fun b!3304766 () Bool)

(declare-fun tp!1034720 () Bool)

(declare-fun e!2055221 () Bool)

(assert (=> b!3304766 (= e!2055221 (and tp!1034720 (inv!49453 (tag!5840 (h!41915 rules!2135))) (inv!49456 (transformation!5294 (h!41915 rules!2135))) e!2055220))))

(declare-fun b!3304767 () Bool)

(declare-fun res!1340337 () Bool)

(assert (=> b!3304767 (=> (not res!1340337) (not e!2055223))))

(assert (=> b!3304767 (= res!1340337 (and (not ((_ is Nil!36494) tokens!494)) (not ((_ is Nil!36494) (t!253449 tokens!494)))))))

(assert (=> b!3304768 (= e!2055214 (and tp!1034727 tp!1034725))))

(declare-fun e!2055225 () Bool)

(declare-fun tp!1034723 () Bool)

(declare-fun b!3304769 () Bool)

(assert (=> b!3304769 (= e!2055217 (and (inv!49457 (h!41914 tokens!494)) e!2055225 tp!1034723))))

(declare-fun e!2055218 () Bool)

(assert (=> b!3304770 (= e!2055218 (and tp!1034731 tp!1034722))))

(declare-fun e!2055211 () Bool)

(declare-fun tp!1034732 () Bool)

(declare-fun b!3304771 () Bool)

(declare-fun inv!21 (TokenValue!5524) Bool)

(assert (=> b!3304771 (= e!2055216 (and (inv!21 (value!171339 separatorToken!241)) e!2055211 tp!1034732))))

(declare-fun b!3304772 () Bool)

(declare-fun tp!1034730 () Bool)

(assert (=> b!3304772 (= e!2055225 (and (inv!21 (value!171339 (h!41914 tokens!494))) e!2055215 tp!1034730))))

(declare-fun b!3304773 () Bool)

(declare-fun res!1340329 () Bool)

(assert (=> b!3304773 (=> (not res!1340329) (not e!2055223))))

(declare-fun rulesInvariant!4280 (LexerInterface!4883 List!36619) Bool)

(assert (=> b!3304773 (= res!1340329 (rulesInvariant!4280 thiss!18206 rules!2135))))

(assert (=> b!3304774 (= e!2055220 (and tp!1034728 tp!1034726))))

(declare-fun b!3304775 () Bool)

(declare-fun res!1340336 () Bool)

(assert (=> b!3304775 (=> (not res!1340336) (not e!2055223))))

(declare-fun rulesProduceIndividualToken!2375 (LexerInterface!4883 List!36619 Token!9954) Bool)

(assert (=> b!3304775 (= res!1340336 (rulesProduceIndividualToken!2375 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3304776 () Bool)

(declare-fun res!1340334 () Bool)

(assert (=> b!3304776 (=> (not res!1340334) (not e!2055223))))

(declare-fun isEmpty!20633 (List!36619) Bool)

(assert (=> b!3304776 (= res!1340334 (not (isEmpty!20633 rules!2135)))))

(declare-fun b!3304777 () Bool)

(declare-fun tp!1034721 () Bool)

(assert (=> b!3304777 (= e!2055224 (and e!2055221 tp!1034721))))

(declare-fun b!3304778 () Bool)

(declare-fun res!1340331 () Bool)

(assert (=> b!3304778 (=> (not res!1340331) (not e!2055223))))

(declare-fun sepAndNonSepRulesDisjointChars!1488 (List!36619 List!36619) Bool)

(assert (=> b!3304778 (= res!1340331 (sepAndNonSepRulesDisjointChars!1488 rules!2135 rules!2135))))

(declare-fun lt!1120211 () List!36617)

(declare-fun e!2055222 () Bool)

(declare-fun lt!1120214 () List!36617)

(declare-fun b!3304779 () Bool)

(declare-fun lt!1120213 () List!36617)

(assert (=> b!3304779 (= e!2055222 (or (not (= lt!1120214 lt!1120213)) (= lt!1120211 lt!1120213)))))

(declare-fun list!13083 (BalanceConc!21540) List!36617)

(declare-fun charsOf!3310 (Token!9954) BalanceConc!21540)

(assert (=> b!3304779 (= lt!1120213 (list!13083 (charsOf!3310 (h!41914 tokens!494))))))

(declare-fun b!3304780 () Bool)

(declare-fun res!1340330 () Bool)

(assert (=> b!3304780 (=> (not res!1340330) (not e!2055223))))

(assert (=> b!3304780 (= res!1340330 (isSeparator!5294 (rule!7798 separatorToken!241)))))

(declare-fun b!3304781 () Bool)

(assert (=> b!3304781 (= e!2055223 (not e!2055222))))

(declare-fun res!1340335 () Bool)

(assert (=> b!3304781 (=> res!1340335 e!2055222)))

(assert (=> b!3304781 (= res!1340335 (not (= lt!1120211 lt!1120214)))))

(declare-fun printList!1433 (LexerInterface!4883 List!36618) List!36617)

(assert (=> b!3304781 (= lt!1120214 (printList!1433 thiss!18206 (Cons!36494 (h!41914 tokens!494) Nil!36494)))))

(declare-fun lt!1120212 () BalanceConc!21540)

(assert (=> b!3304781 (= lt!1120211 (list!13083 lt!1120212))))

(declare-fun lt!1120210 () BalanceConc!21542)

(declare-fun printTailRec!1380 (LexerInterface!4883 BalanceConc!21542 Int BalanceConc!21540) BalanceConc!21540)

(assert (=> b!3304781 (= lt!1120212 (printTailRec!1380 thiss!18206 lt!1120210 0 (BalanceConc!21541 Empty!10963)))))

(declare-fun print!1948 (LexerInterface!4883 BalanceConc!21542) BalanceConc!21540)

(assert (=> b!3304781 (= lt!1120212 (print!1948 thiss!18206 lt!1120210))))

(declare-fun singletonSeq!2390 (Token!9954) BalanceConc!21542)

(assert (=> b!3304781 (= lt!1120210 (singletonSeq!2390 (h!41914 tokens!494)))))

(declare-fun b!3304782 () Bool)

(declare-fun tp!1034729 () Bool)

(assert (=> b!3304782 (= e!2055211 (and tp!1034729 (inv!49453 (tag!5840 (rule!7798 separatorToken!241))) (inv!49456 (transformation!5294 (rule!7798 separatorToken!241))) e!2055218))))

(assert (= (and start!307782 res!1340333) b!3304776))

(assert (= (and b!3304776 res!1340334) b!3304773))

(assert (= (and b!3304773 res!1340329) b!3304765))

(assert (= (and b!3304765 res!1340332) b!3304775))

(assert (= (and b!3304775 res!1340336) b!3304780))

(assert (= (and b!3304780 res!1340330) b!3304764))

(assert (= (and b!3304764 res!1340328) b!3304778))

(assert (= (and b!3304778 res!1340331) b!3304767))

(assert (= (and b!3304767 res!1340337) b!3304781))

(assert (= (and b!3304781 (not res!1340335)) b!3304779))

(assert (= b!3304766 b!3304774))

(assert (= b!3304777 b!3304766))

(assert (= (and start!307782 ((_ is Cons!36495) rules!2135)) b!3304777))

(assert (= b!3304763 b!3304768))

(assert (= b!3304772 b!3304763))

(assert (= b!3304769 b!3304772))

(assert (= (and start!307782 ((_ is Cons!36494) tokens!494)) b!3304769))

(assert (= b!3304782 b!3304770))

(assert (= b!3304771 b!3304782))

(assert (= start!307782 b!3304771))

(declare-fun m!3630755 () Bool)

(assert (=> b!3304764 m!3630755))

(declare-fun m!3630757 () Bool)

(assert (=> b!3304765 m!3630757))

(assert (=> b!3304765 m!3630757))

(declare-fun m!3630759 () Bool)

(assert (=> b!3304765 m!3630759))

(declare-fun m!3630761 () Bool)

(assert (=> b!3304769 m!3630761))

(declare-fun m!3630763 () Bool)

(assert (=> b!3304779 m!3630763))

(assert (=> b!3304779 m!3630763))

(declare-fun m!3630765 () Bool)

(assert (=> b!3304779 m!3630765))

(declare-fun m!3630767 () Bool)

(assert (=> b!3304776 m!3630767))

(declare-fun m!3630769 () Bool)

(assert (=> b!3304766 m!3630769))

(declare-fun m!3630771 () Bool)

(assert (=> b!3304766 m!3630771))

(declare-fun m!3630773 () Bool)

(assert (=> start!307782 m!3630773))

(declare-fun m!3630775 () Bool)

(assert (=> b!3304782 m!3630775))

(declare-fun m!3630777 () Bool)

(assert (=> b!3304782 m!3630777))

(declare-fun m!3630779 () Bool)

(assert (=> b!3304778 m!3630779))

(declare-fun m!3630781 () Bool)

(assert (=> b!3304772 m!3630781))

(declare-fun m!3630783 () Bool)

(assert (=> b!3304775 m!3630783))

(declare-fun m!3630785 () Bool)

(assert (=> b!3304763 m!3630785))

(declare-fun m!3630787 () Bool)

(assert (=> b!3304763 m!3630787))

(declare-fun m!3630789 () Bool)

(assert (=> b!3304771 m!3630789))

(declare-fun m!3630791 () Bool)

(assert (=> b!3304773 m!3630791))

(declare-fun m!3630793 () Bool)

(assert (=> b!3304781 m!3630793))

(declare-fun m!3630795 () Bool)

(assert (=> b!3304781 m!3630795))

(declare-fun m!3630797 () Bool)

(assert (=> b!3304781 m!3630797))

(declare-fun m!3630799 () Bool)

(assert (=> b!3304781 m!3630799))

(declare-fun m!3630801 () Bool)

(assert (=> b!3304781 m!3630801))

(check-sat (not b_next!87541) (not start!307782) b_and!226415 (not b!3304766) (not b_next!87537) (not b!3304764) (not b!3304777) (not b_next!87539) b_and!226421 b_and!226425 (not b!3304772) (not b_next!87543) (not b!3304765) (not b!3304763) (not b!3304769) (not b!3304773) b_and!226417 (not b!3304779) (not b!3304771) b_and!226423 (not b!3304776) (not b!3304782) (not b!3304781) (not b!3304778) b_and!226419 (not b!3304775) (not b_next!87545) (not b_next!87547))
(check-sat (not b_next!87543) (not b_next!87541) b_and!226417 b_and!226415 (not b_next!87537) b_and!226423 (not b_next!87539) b_and!226419 b_and!226421 b_and!226425 (not b_next!87545) (not b_next!87547))
