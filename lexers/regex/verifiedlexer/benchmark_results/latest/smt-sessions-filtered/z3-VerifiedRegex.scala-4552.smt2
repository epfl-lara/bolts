; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241058 () Bool)

(assert start!241058)

(declare-fun b!2471802 () Bool)

(declare-fun b_free!71429 () Bool)

(declare-fun b_next!72133 () Bool)

(assert (=> b!2471802 (= b_free!71429 (not b_next!72133))))

(declare-fun tp!789861 () Bool)

(declare-fun b_and!187317 () Bool)

(assert (=> b!2471802 (= tp!789861 b_and!187317)))

(declare-fun b_free!71431 () Bool)

(declare-fun b_next!72135 () Bool)

(assert (=> b!2471802 (= b_free!71431 (not b_next!72135))))

(declare-fun tp!789856 () Bool)

(declare-fun b_and!187319 () Bool)

(assert (=> b!2471802 (= tp!789856 b_and!187319)))

(declare-fun b!2471795 () Bool)

(declare-fun b_free!71433 () Bool)

(declare-fun b_next!72137 () Bool)

(assert (=> b!2471795 (= b_free!71433 (not b_next!72137))))

(declare-fun tp!789852 () Bool)

(declare-fun b_and!187321 () Bool)

(assert (=> b!2471795 (= tp!789852 b_and!187321)))

(declare-fun b_free!71435 () Bool)

(declare-fun b_next!72139 () Bool)

(assert (=> b!2471795 (= b_free!71435 (not b_next!72139))))

(declare-fun tp!789847 () Bool)

(declare-fun b_and!187323 () Bool)

(assert (=> b!2471795 (= tp!789847 b_and!187323)))

(declare-fun b!2471806 () Bool)

(declare-fun b_free!71437 () Bool)

(declare-fun b_next!72141 () Bool)

(assert (=> b!2471806 (= b_free!71437 (not b_next!72141))))

(declare-fun tp!789854 () Bool)

(declare-fun b_and!187325 () Bool)

(assert (=> b!2471806 (= tp!789854 b_and!187325)))

(declare-fun b_free!71439 () Bool)

(declare-fun b_next!72143 () Bool)

(assert (=> b!2471806 (= b_free!71439 (not b_next!72143))))

(declare-fun tp!789851 () Bool)

(declare-fun b_and!187327 () Bool)

(assert (=> b!2471806 (= tp!789851 b_and!187327)))

(declare-fun b!2471796 () Bool)

(declare-fun b_free!71441 () Bool)

(declare-fun b_next!72145 () Bool)

(assert (=> b!2471796 (= b_free!71441 (not b_next!72145))))

(declare-fun tp!789850 () Bool)

(declare-fun b_and!187329 () Bool)

(assert (=> b!2471796 (= tp!789850 b_and!187329)))

(declare-fun b_free!71443 () Bool)

(declare-fun b_next!72147 () Bool)

(assert (=> b!2471796 (= b_free!71443 (not b_next!72147))))

(declare-fun tp!789849 () Bool)

(declare-fun b_and!187331 () Bool)

(assert (=> b!2471796 (= tp!789849 b_and!187331)))

(declare-fun b!2471787 () Bool)

(declare-fun res!1046565 () Bool)

(declare-fun e!1567704 () Bool)

(assert (=> b!2471787 (=> (not res!1046565) (not e!1567704))))

(declare-fun i!1803 () Int)

(assert (=> b!2471787 (= res!1046565 (= i!1803 0))))

(declare-fun e!1567710 () Bool)

(declare-fun tp!789857 () Bool)

(declare-fun e!1567690 () Bool)

(declare-fun b!2471788 () Bool)

(declare-datatypes ((List!28920 0))(
  ( (Nil!28820) (Cons!28820 (h!34221 (_ BitVec 16)) (t!210007 List!28920)) )
))
(declare-datatypes ((TokenValue!4677 0))(
  ( (FloatLiteralValue!9354 (text!33184 List!28920)) (TokenValueExt!4676 (__x!18609 Int)) (Broken!23385 (value!143373 List!28920)) (Object!4776) (End!4677) (Def!4677) (Underscore!4677) (Match!4677) (Else!4677) (Error!4677) (Case!4677) (If!4677) (Extends!4677) (Abstract!4677) (Class!4677) (Val!4677) (DelimiterValue!9354 (del!4737 List!28920)) (KeywordValue!4683 (value!143374 List!28920)) (CommentValue!9354 (value!143375 List!28920)) (WhitespaceValue!9354 (value!143376 List!28920)) (IndentationValue!4677 (value!143377 List!28920)) (String!31680) (Int32!4677) (Broken!23386 (value!143378 List!28920)) (Boolean!4678) (Unit!42165) (OperatorValue!4680 (op!4737 List!28920)) (IdentifierValue!9354 (value!143379 List!28920)) (IdentifierValue!9355 (value!143380 List!28920)) (WhitespaceValue!9355 (value!143381 List!28920)) (True!9354) (False!9354) (Broken!23387 (value!143382 List!28920)) (Broken!23388 (value!143383 List!28920)) (True!9355) (RightBrace!4677) (RightBracket!4677) (Colon!4677) (Null!4677) (Comma!4677) (LeftBracket!4677) (False!9355) (LeftBrace!4677) (ImaginaryLiteralValue!4677 (text!33185 List!28920)) (StringLiteralValue!14031 (value!143384 List!28920)) (EOFValue!4677 (value!143385 List!28920)) (IdentValue!4677 (value!143386 List!28920)) (DelimiterValue!9355 (value!143387 List!28920)) (DedentValue!4677 (value!143388 List!28920)) (NewLineValue!4677 (value!143389 List!28920)) (IntegerValue!14031 (value!143390 (_ BitVec 32)) (text!33186 List!28920)) (IntegerValue!14032 (value!143391 Int) (text!33187 List!28920)) (Times!4677) (Or!4677) (Equal!4677) (Minus!4677) (Broken!23389 (value!143392 List!28920)) (And!4677) (Div!4677) (LessEqual!4677) (Mod!4677) (Concat!11956) (Not!4677) (Plus!4677) (SpaceValue!4677 (value!143393 List!28920)) (IntegerValue!14033 (value!143394 Int) (text!33188 List!28920)) (StringLiteralValue!14032 (text!33189 List!28920)) (FloatLiteralValue!9355 (text!33190 List!28920)) (BytesLiteralValue!4677 (value!143395 List!28920)) (CommentValue!9355 (value!143396 List!28920)) (StringLiteralValue!14033 (value!143397 List!28920)) (ErrorTokenValue!4677 (msg!4738 List!28920)) )
))
(declare-datatypes ((C!14716 0))(
  ( (C!14717 (val!8618 Int)) )
))
(declare-datatypes ((List!28921 0))(
  ( (Nil!28821) (Cons!28821 (h!34222 C!14716) (t!210008 List!28921)) )
))
(declare-datatypes ((IArray!18419 0))(
  ( (IArray!18420 (innerList!9267 List!28921)) )
))
(declare-datatypes ((Conc!9207 0))(
  ( (Node!9207 (left!22107 Conc!9207) (right!22437 Conc!9207) (csize!18644 Int) (cheight!9418 Int)) (Leaf!13760 (xs!12191 IArray!18419) (csize!18645 Int)) (Empty!9207) )
))
(declare-datatypes ((BalanceConc!18028 0))(
  ( (BalanceConc!18029 (c!393734 Conc!9207)) )
))
(declare-datatypes ((Regex!7279 0))(
  ( (ElementMatch!7279 (c!393735 C!14716)) (Concat!11957 (regOne!15070 Regex!7279) (regTwo!15070 Regex!7279)) (EmptyExpr!7279) (Star!7279 (reg!7608 Regex!7279)) (EmptyLang!7279) (Union!7279 (regOne!15071 Regex!7279) (regTwo!15071 Regex!7279)) )
))
(declare-datatypes ((String!31681 0))(
  ( (String!31682 (value!143398 String)) )
))
(declare-datatypes ((TokenValueInjection!8854 0))(
  ( (TokenValueInjection!8855 (toValue!6355 Int) (toChars!6214 Int)) )
))
(declare-datatypes ((Rule!8782 0))(
  ( (Rule!8783 (regex!4491 Regex!7279) (tag!4981 String!31681) (isSeparator!4491 Bool) (transformation!4491 TokenValueInjection!8854)) )
))
(declare-datatypes ((Token!8452 0))(
  ( (Token!8453 (value!143399 TokenValue!4677) (rule!6849 Rule!8782) (size!22427 Int) (originalCharacters!5257 List!28921)) )
))
(declare-datatypes ((List!28922 0))(
  ( (Nil!28822) (Cons!28822 (h!34223 Token!8452) (t!210009 List!28922)) )
))
(declare-fun l!6611 () List!28922)

(declare-fun inv!38907 (String!31681) Bool)

(declare-fun inv!38910 (TokenValueInjection!8854) Bool)

(assert (=> b!2471788 (= e!1567710 (and tp!789857 (inv!38907 (tag!4981 (rule!6849 (h!34223 l!6611)))) (inv!38910 (transformation!4491 (rule!6849 (h!34223 l!6611)))) e!1567690))))

(declare-fun b!2471789 () Bool)

(declare-fun res!1046560 () Bool)

(assert (=> b!2471789 (=> (not res!1046560) (not e!1567704))))

(declare-datatypes ((LexerInterface!4088 0))(
  ( (LexerInterfaceExt!4085 (__x!18610 Int)) (Lexer!4086) )
))
(declare-fun thiss!27932 () LexerInterface!4088)

(declare-datatypes ((List!28923 0))(
  ( (Nil!28823) (Cons!28823 (h!34224 Rule!8782) (t!210010 List!28923)) )
))
(declare-fun rules!4472 () List!28923)

(declare-fun tokensListTwoByTwoPredicateSeparableList!627 (LexerInterface!4088 List!28922 List!28923) Bool)

(assert (=> b!2471789 (= res!1046560 (tokensListTwoByTwoPredicateSeparableList!627 thiss!27932 l!6611 rules!4472))))

(declare-fun b!2471790 () Bool)

(declare-fun t2!67 () Token!8452)

(declare-fun contains!4921 (List!28922 Token!8452) Bool)

(assert (=> b!2471790 (= e!1567704 (not (contains!4921 l!6611 t2!67)))))

(declare-fun t1!67 () Token!8452)

(declare-fun rulesProduceIndividualToken!1818 (LexerInterface!4088 List!28923 Token!8452) Bool)

(assert (=> b!2471790 (rulesProduceIndividualToken!1818 thiss!27932 rules!4472 t1!67)))

(declare-datatypes ((Unit!42166 0))(
  ( (Unit!42167) )
))
(declare-fun lt!883280 () Unit!42166)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!679 (LexerInterface!4088 List!28923 List!28922 Token!8452) Unit!42166)

(assert (=> b!2471790 (= lt!883280 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!679 thiss!27932 rules!4472 l!6611 t1!67))))

(declare-fun e!1567698 () Bool)

(declare-fun b!2471791 () Bool)

(declare-fun tp!789848 () Bool)

(declare-fun inv!21 (TokenValue!4677) Bool)

(assert (=> b!2471791 (= e!1567698 (and (inv!21 (value!143399 (h!34223 l!6611))) e!1567710 tp!789848))))

(declare-fun res!1046559 () Bool)

(assert (=> start!241058 (=> (not res!1046559) (not e!1567704))))

(get-info :version)

(assert (=> start!241058 (= res!1046559 ((_ is Lexer!4086) thiss!27932))))

(assert (=> start!241058 e!1567704))

(assert (=> start!241058 true))

(declare-fun e!1567707 () Bool)

(assert (=> start!241058 e!1567707))

(declare-fun e!1567702 () Bool)

(declare-fun inv!38911 (Token!8452) Bool)

(assert (=> start!241058 (and (inv!38911 t2!67) e!1567702)))

(declare-fun e!1567706 () Bool)

(assert (=> start!241058 e!1567706))

(declare-fun e!1567691 () Bool)

(assert (=> start!241058 (and (inv!38911 t1!67) e!1567691)))

(declare-fun b!2471792 () Bool)

(declare-fun res!1046568 () Bool)

(assert (=> b!2471792 (=> (not res!1046568) (not e!1567704))))

(declare-fun rulesInvariant!3588 (LexerInterface!4088 List!28923) Bool)

(assert (=> b!2471792 (= res!1046568 (rulesInvariant!3588 thiss!27932 rules!4472))))

(declare-fun b!2471793 () Bool)

(declare-fun res!1046569 () Bool)

(assert (=> b!2471793 (=> (not res!1046569) (not e!1567704))))

(declare-fun separableTokensPredicate!865 (LexerInterface!4088 Token!8452 Token!8452 List!28923) Bool)

(assert (=> b!2471793 (= res!1046569 (separableTokensPredicate!865 thiss!27932 t1!67 t2!67 rules!4472))))

(declare-fun b!2471794 () Bool)

(declare-fun res!1046566 () Bool)

(assert (=> b!2471794 (=> (not res!1046566) (not e!1567704))))

(declare-fun rulesProduceEachTokenIndividuallyList!1404 (LexerInterface!4088 List!28923 List!28922) Bool)

(assert (=> b!2471794 (= res!1046566 (rulesProduceEachTokenIndividuallyList!1404 thiss!27932 rules!4472 l!6611))))

(declare-fun e!1567705 () Bool)

(assert (=> b!2471795 (= e!1567705 (and tp!789852 tp!789847))))

(declare-fun e!1567692 () Bool)

(assert (=> b!2471796 (= e!1567692 (and tp!789850 tp!789849))))

(declare-fun b!2471797 () Bool)

(declare-fun e!1567703 () Bool)

(declare-fun tp!789859 () Bool)

(assert (=> b!2471797 (= e!1567707 (and e!1567703 tp!789859))))

(declare-fun e!1567699 () Bool)

(declare-fun tp!789845 () Bool)

(declare-fun b!2471798 () Bool)

(assert (=> b!2471798 (= e!1567699 (and tp!789845 (inv!38907 (tag!4981 (rule!6849 t1!67))) (inv!38910 (transformation!4491 (rule!6849 t1!67))) e!1567692))))

(declare-fun e!1567701 () Bool)

(declare-fun b!2471799 () Bool)

(declare-fun tp!789853 () Bool)

(assert (=> b!2471799 (= e!1567702 (and (inv!21 (value!143399 t2!67)) e!1567701 tp!789853))))

(declare-fun b!2471800 () Bool)

(declare-fun res!1046567 () Bool)

(assert (=> b!2471800 (=> (not res!1046567) (not e!1567704))))

(declare-fun apply!6796 (List!28922 Int) Token!8452)

(assert (=> b!2471800 (= res!1046567 (= (apply!6796 l!6611 i!1803) t1!67))))

(declare-fun b!2471801 () Bool)

(declare-fun res!1046561 () Bool)

(assert (=> b!2471801 (=> (not res!1046561) (not e!1567704))))

(assert (=> b!2471801 (= res!1046561 (= (apply!6796 l!6611 (+ 1 i!1803)) t2!67))))

(declare-fun e!1567693 () Bool)

(assert (=> b!2471802 (= e!1567693 (and tp!789861 tp!789856))))

(declare-fun b!2471803 () Bool)

(declare-fun tp!789846 () Bool)

(assert (=> b!2471803 (= e!1567691 (and (inv!21 (value!143399 t1!67)) e!1567699 tp!789846))))

(declare-fun b!2471804 () Bool)

(declare-fun res!1046562 () Bool)

(assert (=> b!2471804 (=> (not res!1046562) (not e!1567704))))

(declare-fun size!22428 (List!28922) Int)

(assert (=> b!2471804 (= res!1046562 (< (+ 1 i!1803) (size!22428 l!6611)))))

(declare-fun b!2471805 () Bool)

(declare-fun tp!789858 () Bool)

(assert (=> b!2471805 (= e!1567703 (and tp!789858 (inv!38907 (tag!4981 (h!34224 rules!4472))) (inv!38910 (transformation!4491 (h!34224 rules!4472))) e!1567705))))

(assert (=> b!2471806 (= e!1567690 (and tp!789854 tp!789851))))

(declare-fun b!2471807 () Bool)

(declare-fun tp!789855 () Bool)

(assert (=> b!2471807 (= e!1567706 (and (inv!38911 (h!34223 l!6611)) e!1567698 tp!789855))))

(declare-fun tp!789860 () Bool)

(declare-fun b!2471808 () Bool)

(assert (=> b!2471808 (= e!1567701 (and tp!789860 (inv!38907 (tag!4981 (rule!6849 t2!67))) (inv!38910 (transformation!4491 (rule!6849 t2!67))) e!1567693))))

(declare-fun b!2471809 () Bool)

(declare-fun res!1046564 () Bool)

(assert (=> b!2471809 (=> (not res!1046564) (not e!1567704))))

(assert (=> b!2471809 (= res!1046564 (>= i!1803 0))))

(declare-fun b!2471810 () Bool)

(declare-fun res!1046563 () Bool)

(assert (=> b!2471810 (=> (not res!1046563) (not e!1567704))))

(declare-fun isEmpty!16738 (List!28923) Bool)

(assert (=> b!2471810 (= res!1046563 (not (isEmpty!16738 rules!4472)))))

(assert (= (and start!241058 res!1046559) b!2471810))

(assert (= (and b!2471810 res!1046563) b!2471792))

(assert (= (and b!2471792 res!1046568) b!2471794))

(assert (= (and b!2471794 res!1046566) b!2471789))

(assert (= (and b!2471789 res!1046560) b!2471809))

(assert (= (and b!2471809 res!1046564) b!2471804))

(assert (= (and b!2471804 res!1046562) b!2471800))

(assert (= (and b!2471800 res!1046567) b!2471801))

(assert (= (and b!2471801 res!1046561) b!2471787))

(assert (= (and b!2471787 res!1046565) b!2471793))

(assert (= (and b!2471793 res!1046569) b!2471790))

(assert (= b!2471805 b!2471795))

(assert (= b!2471797 b!2471805))

(assert (= (and start!241058 ((_ is Cons!28823) rules!4472)) b!2471797))

(assert (= b!2471808 b!2471802))

(assert (= b!2471799 b!2471808))

(assert (= start!241058 b!2471799))

(assert (= b!2471788 b!2471806))

(assert (= b!2471791 b!2471788))

(assert (= b!2471807 b!2471791))

(assert (= (and start!241058 ((_ is Cons!28822) l!6611)) b!2471807))

(assert (= b!2471798 b!2471796))

(assert (= b!2471803 b!2471798))

(assert (= start!241058 b!2471803))

(declare-fun m!2840589 () Bool)

(assert (=> b!2471799 m!2840589))

(declare-fun m!2840591 () Bool)

(assert (=> b!2471789 m!2840591))

(declare-fun m!2840593 () Bool)

(assert (=> start!241058 m!2840593))

(declare-fun m!2840595 () Bool)

(assert (=> start!241058 m!2840595))

(declare-fun m!2840597 () Bool)

(assert (=> b!2471791 m!2840597))

(declare-fun m!2840599 () Bool)

(assert (=> b!2471808 m!2840599))

(declare-fun m!2840601 () Bool)

(assert (=> b!2471808 m!2840601))

(declare-fun m!2840603 () Bool)

(assert (=> b!2471790 m!2840603))

(declare-fun m!2840605 () Bool)

(assert (=> b!2471790 m!2840605))

(declare-fun m!2840607 () Bool)

(assert (=> b!2471790 m!2840607))

(declare-fun m!2840609 () Bool)

(assert (=> b!2471805 m!2840609))

(declare-fun m!2840611 () Bool)

(assert (=> b!2471805 m!2840611))

(declare-fun m!2840613 () Bool)

(assert (=> b!2471800 m!2840613))

(declare-fun m!2840615 () Bool)

(assert (=> b!2471807 m!2840615))

(declare-fun m!2840617 () Bool)

(assert (=> b!2471792 m!2840617))

(declare-fun m!2840619 () Bool)

(assert (=> b!2471801 m!2840619))

(declare-fun m!2840621 () Bool)

(assert (=> b!2471788 m!2840621))

(declare-fun m!2840623 () Bool)

(assert (=> b!2471788 m!2840623))

(declare-fun m!2840625 () Bool)

(assert (=> b!2471798 m!2840625))

(declare-fun m!2840627 () Bool)

(assert (=> b!2471798 m!2840627))

(declare-fun m!2840629 () Bool)

(assert (=> b!2471803 m!2840629))

(declare-fun m!2840631 () Bool)

(assert (=> b!2471794 m!2840631))

(declare-fun m!2840633 () Bool)

(assert (=> b!2471810 m!2840633))

(declare-fun m!2840635 () Bool)

(assert (=> b!2471804 m!2840635))

(declare-fun m!2840637 () Bool)

(assert (=> b!2471793 m!2840637))

(check-sat (not b!2471799) (not b!2471790) b_and!187321 b_and!187325 (not b_next!72137) (not b!2471792) (not b_next!72135) (not b!2471805) (not b!2471807) (not b_next!72139) (not start!241058) (not b!2471800) (not b_next!72147) (not b_next!72145) b_and!187319 (not b!2471808) b_and!187331 (not b!2471788) (not b!2471810) (not b_next!72133) (not b!2471801) (not b!2471794) (not b!2471803) b_and!187323 (not b_next!72143) (not b_next!72141) b_and!187329 (not b!2471791) (not b!2471789) (not b!2471797) b_and!187317 (not b!2471804) (not b!2471793) (not b!2471798) b_and!187327)
(check-sat b_and!187331 (not b_next!72133) b_and!187321 b_and!187325 (not b_next!72137) (not b_next!72135) b_and!187323 b_and!187329 (not b_next!72139) (not b_next!72147) (not b_next!72145) b_and!187317 b_and!187319 b_and!187327 (not b_next!72143) (not b_next!72141))
(get-model)

(declare-fun d!711437 () Bool)

(assert (=> d!711437 (= (inv!38907 (tag!4981 (rule!6849 t2!67))) (= (mod (str.len (value!143398 (tag!4981 (rule!6849 t2!67)))) 2) 0))))

(assert (=> b!2471808 d!711437))

(declare-fun d!711439 () Bool)

(declare-fun res!1046592 () Bool)

(declare-fun e!1567728 () Bool)

(assert (=> d!711439 (=> (not res!1046592) (not e!1567728))))

(declare-fun semiInverseModEq!1848 (Int Int) Bool)

(assert (=> d!711439 (= res!1046592 (semiInverseModEq!1848 (toChars!6214 (transformation!4491 (rule!6849 t2!67))) (toValue!6355 (transformation!4491 (rule!6849 t2!67)))))))

(assert (=> d!711439 (= (inv!38910 (transformation!4491 (rule!6849 t2!67))) e!1567728)))

(declare-fun b!2471836 () Bool)

(declare-fun equivClasses!1759 (Int Int) Bool)

(assert (=> b!2471836 (= e!1567728 (equivClasses!1759 (toChars!6214 (transformation!4491 (rule!6849 t2!67))) (toValue!6355 (transformation!4491 (rule!6849 t2!67)))))))

(assert (= (and d!711439 res!1046592) b!2471836))

(declare-fun m!2840663 () Bool)

(assert (=> d!711439 m!2840663))

(declare-fun m!2840665 () Bool)

(assert (=> b!2471836 m!2840665))

(assert (=> b!2471808 d!711439))

(declare-fun d!711441 () Bool)

(assert (=> d!711441 (= (inv!38907 (tag!4981 (rule!6849 t1!67))) (= (mod (str.len (value!143398 (tag!4981 (rule!6849 t1!67)))) 2) 0))))

(assert (=> b!2471798 d!711441))

(declare-fun d!711443 () Bool)

(declare-fun res!1046593 () Bool)

(declare-fun e!1567729 () Bool)

(assert (=> d!711443 (=> (not res!1046593) (not e!1567729))))

(assert (=> d!711443 (= res!1046593 (semiInverseModEq!1848 (toChars!6214 (transformation!4491 (rule!6849 t1!67))) (toValue!6355 (transformation!4491 (rule!6849 t1!67)))))))

(assert (=> d!711443 (= (inv!38910 (transformation!4491 (rule!6849 t1!67))) e!1567729)))

(declare-fun b!2471837 () Bool)

(assert (=> b!2471837 (= e!1567729 (equivClasses!1759 (toChars!6214 (transformation!4491 (rule!6849 t1!67))) (toValue!6355 (transformation!4491 (rule!6849 t1!67)))))))

(assert (= (and d!711443 res!1046593) b!2471837))

(declare-fun m!2840667 () Bool)

(assert (=> d!711443 m!2840667))

(declare-fun m!2840669 () Bool)

(assert (=> b!2471837 m!2840669))

(assert (=> b!2471798 d!711443))

(declare-fun d!711445 () Bool)

(assert (=> d!711445 (= (inv!38907 (tag!4981 (rule!6849 (h!34223 l!6611)))) (= (mod (str.len (value!143398 (tag!4981 (rule!6849 (h!34223 l!6611))))) 2) 0))))

(assert (=> b!2471788 d!711445))

(declare-fun d!711447 () Bool)

(declare-fun res!1046594 () Bool)

(declare-fun e!1567730 () Bool)

(assert (=> d!711447 (=> (not res!1046594) (not e!1567730))))

(assert (=> d!711447 (= res!1046594 (semiInverseModEq!1848 (toChars!6214 (transformation!4491 (rule!6849 (h!34223 l!6611)))) (toValue!6355 (transformation!4491 (rule!6849 (h!34223 l!6611))))))))

(assert (=> d!711447 (= (inv!38910 (transformation!4491 (rule!6849 (h!34223 l!6611)))) e!1567730)))

(declare-fun b!2471838 () Bool)

(assert (=> b!2471838 (= e!1567730 (equivClasses!1759 (toChars!6214 (transformation!4491 (rule!6849 (h!34223 l!6611)))) (toValue!6355 (transformation!4491 (rule!6849 (h!34223 l!6611))))))))

(assert (= (and d!711447 res!1046594) b!2471838))

(declare-fun m!2840671 () Bool)

(assert (=> d!711447 m!2840671))

(declare-fun m!2840673 () Bool)

(assert (=> b!2471838 m!2840673))

(assert (=> b!2471788 d!711447))

(declare-fun b!2471849 () Bool)

(declare-fun e!1567737 () Bool)

(declare-fun inv!17 (TokenValue!4677) Bool)

(assert (=> b!2471849 (= e!1567737 (inv!17 (value!143399 t2!67)))))

(declare-fun b!2471850 () Bool)

(declare-fun res!1046597 () Bool)

(declare-fun e!1567739 () Bool)

(assert (=> b!2471850 (=> res!1046597 e!1567739)))

(assert (=> b!2471850 (= res!1046597 (not ((_ is IntegerValue!14033) (value!143399 t2!67))))))

(assert (=> b!2471850 (= e!1567737 e!1567739)))

(declare-fun b!2471851 () Bool)

(declare-fun inv!15 (TokenValue!4677) Bool)

(assert (=> b!2471851 (= e!1567739 (inv!15 (value!143399 t2!67)))))

(declare-fun d!711449 () Bool)

(declare-fun c!393743 () Bool)

(assert (=> d!711449 (= c!393743 ((_ is IntegerValue!14031) (value!143399 t2!67)))))

(declare-fun e!1567738 () Bool)

(assert (=> d!711449 (= (inv!21 (value!143399 t2!67)) e!1567738)))

(declare-fun b!2471852 () Bool)

(declare-fun inv!16 (TokenValue!4677) Bool)

(assert (=> b!2471852 (= e!1567738 (inv!16 (value!143399 t2!67)))))

(declare-fun b!2471853 () Bool)

(assert (=> b!2471853 (= e!1567738 e!1567737)))

(declare-fun c!393744 () Bool)

(assert (=> b!2471853 (= c!393744 ((_ is IntegerValue!14032) (value!143399 t2!67)))))

(assert (= (and d!711449 c!393743) b!2471852))

(assert (= (and d!711449 (not c!393743)) b!2471853))

(assert (= (and b!2471853 c!393744) b!2471849))

(assert (= (and b!2471853 (not c!393744)) b!2471850))

(assert (= (and b!2471850 (not res!1046597)) b!2471851))

(declare-fun m!2840675 () Bool)

(assert (=> b!2471849 m!2840675))

(declare-fun m!2840677 () Bool)

(assert (=> b!2471851 m!2840677))

(declare-fun m!2840679 () Bool)

(assert (=> b!2471852 m!2840679))

(assert (=> b!2471799 d!711449))

(declare-fun b!2471921 () Bool)

(declare-fun e!1567793 () Bool)

(assert (=> b!2471921 (= e!1567793 true)))

(declare-fun b!2471920 () Bool)

(declare-fun e!1567792 () Bool)

(assert (=> b!2471920 (= e!1567792 e!1567793)))

(declare-fun b!2471919 () Bool)

(declare-fun e!1567791 () Bool)

(assert (=> b!2471919 (= e!1567791 e!1567792)))

(declare-fun d!711451 () Bool)

(assert (=> d!711451 e!1567791))

(assert (= b!2471920 b!2471921))

(assert (= b!2471919 b!2471920))

(assert (= (and d!711451 ((_ is Cons!28823) rules!4472)) b!2471919))

(declare-fun lambda!93336 () Int)

(declare-fun order!15619 () Int)

(declare-fun order!15617 () Int)

(declare-fun dynLambda!12378 (Int Int) Int)

(declare-fun dynLambda!12379 (Int Int) Int)

(assert (=> b!2471921 (< (dynLambda!12378 order!15617 (toValue!6355 (transformation!4491 (h!34224 rules!4472)))) (dynLambda!12379 order!15619 lambda!93336))))

(declare-fun order!15621 () Int)

(declare-fun dynLambda!12380 (Int Int) Int)

(assert (=> b!2471921 (< (dynLambda!12380 order!15621 (toChars!6214 (transformation!4491 (h!34224 rules!4472)))) (dynLambda!12379 order!15619 lambda!93336))))

(assert (=> d!711451 true))

(declare-fun lt!883324 () Bool)

(declare-fun forall!5908 (List!28922 Int) Bool)

(assert (=> d!711451 (= lt!883324 (forall!5908 l!6611 lambda!93336))))

(declare-fun e!1567784 () Bool)

(assert (=> d!711451 (= lt!883324 e!1567784)))

(declare-fun res!1046636 () Bool)

(assert (=> d!711451 (=> res!1046636 e!1567784)))

(assert (=> d!711451 (= res!1046636 (not ((_ is Cons!28822) l!6611)))))

(assert (=> d!711451 (not (isEmpty!16738 rules!4472))))

(assert (=> d!711451 (= (rulesProduceEachTokenIndividuallyList!1404 thiss!27932 rules!4472 l!6611) lt!883324)))

(declare-fun b!2471909 () Bool)

(declare-fun e!1567783 () Bool)

(assert (=> b!2471909 (= e!1567784 e!1567783)))

(declare-fun res!1046635 () Bool)

(assert (=> b!2471909 (=> (not res!1046635) (not e!1567783))))

(assert (=> b!2471909 (= res!1046635 (rulesProduceIndividualToken!1818 thiss!27932 rules!4472 (h!34223 l!6611)))))

(declare-fun b!2471910 () Bool)

(assert (=> b!2471910 (= e!1567783 (rulesProduceEachTokenIndividuallyList!1404 thiss!27932 rules!4472 (t!210009 l!6611)))))

(assert (= (and d!711451 (not res!1046636)) b!2471909))

(assert (= (and b!2471909 res!1046635) b!2471910))

(declare-fun m!2840743 () Bool)

(assert (=> d!711451 m!2840743))

(assert (=> d!711451 m!2840633))

(declare-fun m!2840745 () Bool)

(assert (=> b!2471909 m!2840745))

(declare-fun m!2840747 () Bool)

(assert (=> b!2471910 m!2840747))

(assert (=> b!2471794 d!711451))

(declare-fun d!711477 () Bool)

(assert (=> d!711477 (= (inv!38907 (tag!4981 (h!34224 rules!4472))) (= (mod (str.len (value!143398 (tag!4981 (h!34224 rules!4472)))) 2) 0))))

(assert (=> b!2471805 d!711477))

(declare-fun d!711479 () Bool)

(declare-fun res!1046637 () Bool)

(declare-fun e!1567794 () Bool)

(assert (=> d!711479 (=> (not res!1046637) (not e!1567794))))

(assert (=> d!711479 (= res!1046637 (semiInverseModEq!1848 (toChars!6214 (transformation!4491 (h!34224 rules!4472))) (toValue!6355 (transformation!4491 (h!34224 rules!4472)))))))

(assert (=> d!711479 (= (inv!38910 (transformation!4491 (h!34224 rules!4472))) e!1567794)))

(declare-fun b!2471924 () Bool)

(assert (=> b!2471924 (= e!1567794 (equivClasses!1759 (toChars!6214 (transformation!4491 (h!34224 rules!4472))) (toValue!6355 (transformation!4491 (h!34224 rules!4472)))))))

(assert (= (and d!711479 res!1046637) b!2471924))

(declare-fun m!2840749 () Bool)

(assert (=> d!711479 m!2840749))

(declare-fun m!2840751 () Bool)

(assert (=> b!2471924 m!2840751))

(assert (=> b!2471805 d!711479))

(declare-fun d!711481 () Bool)

(declare-fun res!1046642 () Bool)

(declare-fun e!1567797 () Bool)

(assert (=> d!711481 (=> (not res!1046642) (not e!1567797))))

(declare-fun isEmpty!16741 (List!28921) Bool)

(assert (=> d!711481 (= res!1046642 (not (isEmpty!16741 (originalCharacters!5257 (h!34223 l!6611)))))))

(assert (=> d!711481 (= (inv!38911 (h!34223 l!6611)) e!1567797)))

(declare-fun b!2471929 () Bool)

(declare-fun res!1046643 () Bool)

(assert (=> b!2471929 (=> (not res!1046643) (not e!1567797))))

(declare-fun list!11144 (BalanceConc!18028) List!28921)

(declare-fun dynLambda!12381 (Int TokenValue!4677) BalanceConc!18028)

(assert (=> b!2471929 (= res!1046643 (= (originalCharacters!5257 (h!34223 l!6611)) (list!11144 (dynLambda!12381 (toChars!6214 (transformation!4491 (rule!6849 (h!34223 l!6611)))) (value!143399 (h!34223 l!6611))))))))

(declare-fun b!2471930 () Bool)

(declare-fun size!22432 (List!28921) Int)

(assert (=> b!2471930 (= e!1567797 (= (size!22427 (h!34223 l!6611)) (size!22432 (originalCharacters!5257 (h!34223 l!6611)))))))

(assert (= (and d!711481 res!1046642) b!2471929))

(assert (= (and b!2471929 res!1046643) b!2471930))

(declare-fun b_lambda!75817 () Bool)

(assert (=> (not b_lambda!75817) (not b!2471929)))

(declare-fun t!210026 () Bool)

(declare-fun tb!139857 () Bool)

(assert (=> (and b!2471802 (= (toChars!6214 (transformation!4491 (rule!6849 t2!67))) (toChars!6214 (transformation!4491 (rule!6849 (h!34223 l!6611))))) t!210026) tb!139857))

(declare-fun b!2471935 () Bool)

(declare-fun e!1567800 () Bool)

(declare-fun tp!789867 () Bool)

(declare-fun inv!38914 (Conc!9207) Bool)

(assert (=> b!2471935 (= e!1567800 (and (inv!38914 (c!393734 (dynLambda!12381 (toChars!6214 (transformation!4491 (rule!6849 (h!34223 l!6611)))) (value!143399 (h!34223 l!6611))))) tp!789867))))

(declare-fun result!172590 () Bool)

(declare-fun inv!38915 (BalanceConc!18028) Bool)

(assert (=> tb!139857 (= result!172590 (and (inv!38915 (dynLambda!12381 (toChars!6214 (transformation!4491 (rule!6849 (h!34223 l!6611)))) (value!143399 (h!34223 l!6611)))) e!1567800))))

(assert (= tb!139857 b!2471935))

(declare-fun m!2840753 () Bool)

(assert (=> b!2471935 m!2840753))

(declare-fun m!2840755 () Bool)

(assert (=> tb!139857 m!2840755))

(assert (=> b!2471929 t!210026))

(declare-fun b_and!187341 () Bool)

(assert (= b_and!187319 (and (=> t!210026 result!172590) b_and!187341)))

(declare-fun tb!139859 () Bool)

(declare-fun t!210028 () Bool)

(assert (=> (and b!2471795 (= (toChars!6214 (transformation!4491 (h!34224 rules!4472))) (toChars!6214 (transformation!4491 (rule!6849 (h!34223 l!6611))))) t!210028) tb!139859))

(declare-fun result!172594 () Bool)

(assert (= result!172594 result!172590))

(assert (=> b!2471929 t!210028))

(declare-fun b_and!187343 () Bool)

(assert (= b_and!187323 (and (=> t!210028 result!172594) b_and!187343)))

(declare-fun t!210030 () Bool)

(declare-fun tb!139861 () Bool)

(assert (=> (and b!2471806 (= (toChars!6214 (transformation!4491 (rule!6849 (h!34223 l!6611)))) (toChars!6214 (transformation!4491 (rule!6849 (h!34223 l!6611))))) t!210030) tb!139861))

(declare-fun result!172596 () Bool)

(assert (= result!172596 result!172590))

(assert (=> b!2471929 t!210030))

(declare-fun b_and!187345 () Bool)

(assert (= b_and!187327 (and (=> t!210030 result!172596) b_and!187345)))

(declare-fun t!210032 () Bool)

(declare-fun tb!139863 () Bool)

(assert (=> (and b!2471796 (= (toChars!6214 (transformation!4491 (rule!6849 t1!67))) (toChars!6214 (transformation!4491 (rule!6849 (h!34223 l!6611))))) t!210032) tb!139863))

(declare-fun result!172598 () Bool)

(assert (= result!172598 result!172590))

(assert (=> b!2471929 t!210032))

(declare-fun b_and!187347 () Bool)

(assert (= b_and!187331 (and (=> t!210032 result!172598) b_and!187347)))

(declare-fun m!2840757 () Bool)

(assert (=> d!711481 m!2840757))

(declare-fun m!2840759 () Bool)

(assert (=> b!2471929 m!2840759))

(assert (=> b!2471929 m!2840759))

(declare-fun m!2840761 () Bool)

(assert (=> b!2471929 m!2840761))

(declare-fun m!2840763 () Bool)

(assert (=> b!2471930 m!2840763))

(assert (=> b!2471807 d!711481))

(declare-fun d!711483 () Bool)

(declare-fun res!1046646 () Bool)

(declare-fun e!1567803 () Bool)

(assert (=> d!711483 (=> (not res!1046646) (not e!1567803))))

(declare-fun rulesValid!1671 (LexerInterface!4088 List!28923) Bool)

(assert (=> d!711483 (= res!1046646 (rulesValid!1671 thiss!27932 rules!4472))))

(assert (=> d!711483 (= (rulesInvariant!3588 thiss!27932 rules!4472) e!1567803)))

(declare-fun b!2471938 () Bool)

(declare-datatypes ((List!28925 0))(
  ( (Nil!28825) (Cons!28825 (h!34226 String!31681) (t!210092 List!28925)) )
))
(declare-fun noDuplicateTag!1669 (LexerInterface!4088 List!28923 List!28925) Bool)

(assert (=> b!2471938 (= e!1567803 (noDuplicateTag!1669 thiss!27932 rules!4472 Nil!28825))))

(assert (= (and d!711483 res!1046646) b!2471938))

(declare-fun m!2840765 () Bool)

(assert (=> d!711483 m!2840765))

(declare-fun m!2840767 () Bool)

(assert (=> b!2471938 m!2840767))

(assert (=> b!2471792 d!711483))

(declare-fun b!2471939 () Bool)

(declare-fun e!1567804 () Bool)

(assert (=> b!2471939 (= e!1567804 (inv!17 (value!143399 t1!67)))))

(declare-fun b!2471940 () Bool)

(declare-fun res!1046647 () Bool)

(declare-fun e!1567806 () Bool)

(assert (=> b!2471940 (=> res!1046647 e!1567806)))

(assert (=> b!2471940 (= res!1046647 (not ((_ is IntegerValue!14033) (value!143399 t1!67))))))

(assert (=> b!2471940 (= e!1567804 e!1567806)))

(declare-fun b!2471941 () Bool)

(assert (=> b!2471941 (= e!1567806 (inv!15 (value!143399 t1!67)))))

(declare-fun d!711485 () Bool)

(declare-fun c!393754 () Bool)

(assert (=> d!711485 (= c!393754 ((_ is IntegerValue!14031) (value!143399 t1!67)))))

(declare-fun e!1567805 () Bool)

(assert (=> d!711485 (= (inv!21 (value!143399 t1!67)) e!1567805)))

(declare-fun b!2471942 () Bool)

(assert (=> b!2471942 (= e!1567805 (inv!16 (value!143399 t1!67)))))

(declare-fun b!2471943 () Bool)

(assert (=> b!2471943 (= e!1567805 e!1567804)))

(declare-fun c!393755 () Bool)

(assert (=> b!2471943 (= c!393755 ((_ is IntegerValue!14032) (value!143399 t1!67)))))

(assert (= (and d!711485 c!393754) b!2471942))

(assert (= (and d!711485 (not c!393754)) b!2471943))

(assert (= (and b!2471943 c!393755) b!2471939))

(assert (= (and b!2471943 (not c!393755)) b!2471940))

(assert (= (and b!2471940 (not res!1046647)) b!2471941))

(declare-fun m!2840769 () Bool)

(assert (=> b!2471939 m!2840769))

(declare-fun m!2840771 () Bool)

(assert (=> b!2471941 m!2840771))

(declare-fun m!2840773 () Bool)

(assert (=> b!2471942 m!2840773))

(assert (=> b!2471803 d!711485))

(declare-fun d!711487 () Bool)

(declare-fun prefixMatchZipperSequence!727 (Regex!7279 BalanceConc!18028) Bool)

(declare-fun rulesRegex!983 (LexerInterface!4088 List!28923) Regex!7279)

(declare-fun ++!7147 (BalanceConc!18028 BalanceConc!18028) BalanceConc!18028)

(declare-fun charsOf!2826 (Token!8452) BalanceConc!18028)

(declare-fun singletonSeq!1997 (C!14716) BalanceConc!18028)

(declare-fun apply!6799 (BalanceConc!18028 Int) C!14716)

(assert (=> d!711487 (= (separableTokensPredicate!865 thiss!27932 t1!67 t2!67 rules!4472) (not (prefixMatchZipperSequence!727 (rulesRegex!983 thiss!27932 rules!4472) (++!7147 (charsOf!2826 t1!67) (singletonSeq!1997 (apply!6799 (charsOf!2826 t2!67) 0))))))))

(declare-fun bs!466961 () Bool)

(assert (= bs!466961 d!711487))

(declare-fun m!2840775 () Bool)

(assert (=> bs!466961 m!2840775))

(declare-fun m!2840777 () Bool)

(assert (=> bs!466961 m!2840777))

(declare-fun m!2840779 () Bool)

(assert (=> bs!466961 m!2840779))

(declare-fun m!2840781 () Bool)

(assert (=> bs!466961 m!2840781))

(assert (=> bs!466961 m!2840781))

(declare-fun m!2840783 () Bool)

(assert (=> bs!466961 m!2840783))

(declare-fun m!2840785 () Bool)

(assert (=> bs!466961 m!2840785))

(assert (=> bs!466961 m!2840783))

(declare-fun m!2840787 () Bool)

(assert (=> bs!466961 m!2840787))

(assert (=> bs!466961 m!2840785))

(assert (=> bs!466961 m!2840787))

(assert (=> bs!466961 m!2840777))

(assert (=> bs!466961 m!2840775))

(assert (=> b!2471793 d!711487))

(declare-fun d!711489 () Bool)

(declare-fun lt!883327 () Int)

(assert (=> d!711489 (>= lt!883327 0)))

(declare-fun e!1567809 () Int)

(assert (=> d!711489 (= lt!883327 e!1567809)))

(declare-fun c!393758 () Bool)

(assert (=> d!711489 (= c!393758 ((_ is Nil!28822) l!6611))))

(assert (=> d!711489 (= (size!22428 l!6611) lt!883327)))

(declare-fun b!2471948 () Bool)

(assert (=> b!2471948 (= e!1567809 0)))

(declare-fun b!2471949 () Bool)

(assert (=> b!2471949 (= e!1567809 (+ 1 (size!22428 (t!210009 l!6611))))))

(assert (= (and d!711489 c!393758) b!2471948))

(assert (= (and d!711489 (not c!393758)) b!2471949))

(declare-fun m!2840789 () Bool)

(assert (=> b!2471949 m!2840789))

(assert (=> b!2471804 d!711489))

(declare-fun d!711491 () Bool)

(assert (=> d!711491 (= (isEmpty!16738 rules!4472) ((_ is Nil!28823) rules!4472))))

(assert (=> b!2471810 d!711491))

(declare-fun d!711493 () Bool)

(declare-fun res!1046652 () Bool)

(declare-fun e!1567814 () Bool)

(assert (=> d!711493 (=> res!1046652 e!1567814)))

(assert (=> d!711493 (= res!1046652 (or (not ((_ is Cons!28822) l!6611)) (not ((_ is Cons!28822) (t!210009 l!6611)))))))

(assert (=> d!711493 (= (tokensListTwoByTwoPredicateSeparableList!627 thiss!27932 l!6611 rules!4472) e!1567814)))

(declare-fun b!2471954 () Bool)

(declare-fun e!1567815 () Bool)

(assert (=> b!2471954 (= e!1567814 e!1567815)))

(declare-fun res!1046653 () Bool)

(assert (=> b!2471954 (=> (not res!1046653) (not e!1567815))))

(assert (=> b!2471954 (= res!1046653 (separableTokensPredicate!865 thiss!27932 (h!34223 l!6611) (h!34223 (t!210009 l!6611)) rules!4472))))

(declare-fun lt!883347 () Unit!42166)

(declare-fun Unit!42171 () Unit!42166)

(assert (=> b!2471954 (= lt!883347 Unit!42171)))

(declare-fun size!22433 (BalanceConc!18028) Int)

(assert (=> b!2471954 (> (size!22433 (charsOf!2826 (h!34223 (t!210009 l!6611)))) 0)))

(declare-fun lt!883345 () Unit!42166)

(declare-fun Unit!42172 () Unit!42166)

(assert (=> b!2471954 (= lt!883345 Unit!42172)))

(assert (=> b!2471954 (rulesProduceIndividualToken!1818 thiss!27932 rules!4472 (h!34223 (t!210009 l!6611)))))

(declare-fun lt!883342 () Unit!42166)

(declare-fun Unit!42173 () Unit!42166)

(assert (=> b!2471954 (= lt!883342 Unit!42173)))

(assert (=> b!2471954 (rulesProduceIndividualToken!1818 thiss!27932 rules!4472 (h!34223 l!6611))))

(declare-fun lt!883348 () Unit!42166)

(declare-fun lt!883346 () Unit!42166)

(assert (=> b!2471954 (= lt!883348 lt!883346)))

(assert (=> b!2471954 (rulesProduceIndividualToken!1818 thiss!27932 rules!4472 (h!34223 (t!210009 l!6611)))))

(assert (=> b!2471954 (= lt!883346 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!679 thiss!27932 rules!4472 l!6611 (h!34223 (t!210009 l!6611))))))

(declare-fun lt!883344 () Unit!42166)

(declare-fun lt!883343 () Unit!42166)

(assert (=> b!2471954 (= lt!883344 lt!883343)))

(assert (=> b!2471954 (rulesProduceIndividualToken!1818 thiss!27932 rules!4472 (h!34223 l!6611))))

(assert (=> b!2471954 (= lt!883343 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!679 thiss!27932 rules!4472 l!6611 (h!34223 l!6611)))))

(declare-fun b!2471955 () Bool)

(assert (=> b!2471955 (= e!1567815 (tokensListTwoByTwoPredicateSeparableList!627 thiss!27932 (Cons!28822 (h!34223 (t!210009 l!6611)) (t!210009 (t!210009 l!6611))) rules!4472))))

(assert (= (and d!711493 (not res!1046652)) b!2471954))

(assert (= (and b!2471954 res!1046653) b!2471955))

(declare-fun m!2840791 () Bool)

(assert (=> b!2471954 m!2840791))

(assert (=> b!2471954 m!2840745))

(declare-fun m!2840793 () Bool)

(assert (=> b!2471954 m!2840793))

(declare-fun m!2840795 () Bool)

(assert (=> b!2471954 m!2840795))

(declare-fun m!2840797 () Bool)

(assert (=> b!2471954 m!2840797))

(declare-fun m!2840799 () Bool)

(assert (=> b!2471954 m!2840799))

(assert (=> b!2471954 m!2840791))

(declare-fun m!2840801 () Bool)

(assert (=> b!2471954 m!2840801))

(declare-fun m!2840803 () Bool)

(assert (=> b!2471955 m!2840803))

(assert (=> b!2471789 d!711493))

(declare-fun d!711495 () Bool)

(declare-fun lt!883351 () Token!8452)

(assert (=> d!711495 (contains!4921 l!6611 lt!883351)))

(declare-fun e!1567820 () Token!8452)

(assert (=> d!711495 (= lt!883351 e!1567820)))

(declare-fun c!393761 () Bool)

(assert (=> d!711495 (= c!393761 (= i!1803 0))))

(declare-fun e!1567821 () Bool)

(assert (=> d!711495 e!1567821))

(declare-fun res!1046656 () Bool)

(assert (=> d!711495 (=> (not res!1046656) (not e!1567821))))

(assert (=> d!711495 (= res!1046656 (<= 0 i!1803))))

(assert (=> d!711495 (= (apply!6796 l!6611 i!1803) lt!883351)))

(declare-fun b!2471962 () Bool)

(assert (=> b!2471962 (= e!1567821 (< i!1803 (size!22428 l!6611)))))

(declare-fun b!2471963 () Bool)

(declare-fun head!5643 (List!28922) Token!8452)

(assert (=> b!2471963 (= e!1567820 (head!5643 l!6611))))

(declare-fun b!2471964 () Bool)

(declare-fun tail!3924 (List!28922) List!28922)

(assert (=> b!2471964 (= e!1567820 (apply!6796 (tail!3924 l!6611) (- i!1803 1)))))

(assert (= (and d!711495 res!1046656) b!2471962))

(assert (= (and d!711495 c!393761) b!2471963))

(assert (= (and d!711495 (not c!393761)) b!2471964))

(declare-fun m!2840805 () Bool)

(assert (=> d!711495 m!2840805))

(assert (=> b!2471962 m!2840635))

(declare-fun m!2840807 () Bool)

(assert (=> b!2471963 m!2840807))

(declare-fun m!2840809 () Bool)

(assert (=> b!2471964 m!2840809))

(assert (=> b!2471964 m!2840809))

(declare-fun m!2840811 () Bool)

(assert (=> b!2471964 m!2840811))

(assert (=> b!2471800 d!711495))

(declare-fun d!711497 () Bool)

(declare-fun lt!883354 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3964 (List!28922) (InoxSet Token!8452))

(assert (=> d!711497 (= lt!883354 (select (content!3964 l!6611) t2!67))))

(declare-fun e!1567826 () Bool)

(assert (=> d!711497 (= lt!883354 e!1567826)))

(declare-fun res!1046662 () Bool)

(assert (=> d!711497 (=> (not res!1046662) (not e!1567826))))

(assert (=> d!711497 (= res!1046662 ((_ is Cons!28822) l!6611))))

(assert (=> d!711497 (= (contains!4921 l!6611 t2!67) lt!883354)))

(declare-fun b!2471969 () Bool)

(declare-fun e!1567827 () Bool)

(assert (=> b!2471969 (= e!1567826 e!1567827)))

(declare-fun res!1046661 () Bool)

(assert (=> b!2471969 (=> res!1046661 e!1567827)))

(assert (=> b!2471969 (= res!1046661 (= (h!34223 l!6611) t2!67))))

(declare-fun b!2471970 () Bool)

(assert (=> b!2471970 (= e!1567827 (contains!4921 (t!210009 l!6611) t2!67))))

(assert (= (and d!711497 res!1046662) b!2471969))

(assert (= (and b!2471969 (not res!1046661)) b!2471970))

(declare-fun m!2840813 () Bool)

(assert (=> d!711497 m!2840813))

(declare-fun m!2840815 () Bool)

(assert (=> d!711497 m!2840815))

(declare-fun m!2840817 () Bool)

(assert (=> b!2471970 m!2840817))

(assert (=> b!2471790 d!711497))

(declare-fun d!711499 () Bool)

(declare-fun lt!883361 () Bool)

(declare-fun e!1567897 () Bool)

(assert (=> d!711499 (= lt!883361 e!1567897)))

(declare-fun res!1046681 () Bool)

(assert (=> d!711499 (=> (not res!1046681) (not e!1567897))))

(declare-datatypes ((IArray!18423 0))(
  ( (IArray!18424 (innerList!9269 List!28922)) )
))
(declare-datatypes ((Conc!9209 0))(
  ( (Node!9209 (left!22113 Conc!9209) (right!22443 Conc!9209) (csize!18648 Int) (cheight!9420 Int)) (Leaf!13762 (xs!12193 IArray!18423) (csize!18649 Int)) (Empty!9209) )
))
(declare-datatypes ((BalanceConc!18032 0))(
  ( (BalanceConc!18033 (c!393771 Conc!9209)) )
))
(declare-fun list!11145 (BalanceConc!18032) List!28922)

(declare-datatypes ((tuple2!28250 0))(
  ( (tuple2!28251 (_1!16666 BalanceConc!18032) (_2!16666 BalanceConc!18028)) )
))
(declare-fun lex!1863 (LexerInterface!4088 List!28923 BalanceConc!18028) tuple2!28250)

(declare-fun print!1585 (LexerInterface!4088 BalanceConc!18032) BalanceConc!18028)

(declare-fun singletonSeq!1998 (Token!8452) BalanceConc!18032)

(assert (=> d!711499 (= res!1046681 (= (list!11145 (_1!16666 (lex!1863 thiss!27932 rules!4472 (print!1585 thiss!27932 (singletonSeq!1998 t1!67))))) (list!11145 (singletonSeq!1998 t1!67))))))

(declare-fun e!1567898 () Bool)

(assert (=> d!711499 (= lt!883361 e!1567898)))

(declare-fun res!1046679 () Bool)

(assert (=> d!711499 (=> (not res!1046679) (not e!1567898))))

(declare-fun lt!883362 () tuple2!28250)

(declare-fun size!22434 (BalanceConc!18032) Int)

(assert (=> d!711499 (= res!1046679 (= (size!22434 (_1!16666 lt!883362)) 1))))

(assert (=> d!711499 (= lt!883362 (lex!1863 thiss!27932 rules!4472 (print!1585 thiss!27932 (singletonSeq!1998 t1!67))))))

(assert (=> d!711499 (not (isEmpty!16738 rules!4472))))

(assert (=> d!711499 (= (rulesProduceIndividualToken!1818 thiss!27932 rules!4472 t1!67) lt!883361)))

(declare-fun b!2472070 () Bool)

(declare-fun res!1046680 () Bool)

(assert (=> b!2472070 (=> (not res!1046680) (not e!1567898))))

(declare-fun apply!6800 (BalanceConc!18032 Int) Token!8452)

(assert (=> b!2472070 (= res!1046680 (= (apply!6800 (_1!16666 lt!883362) 0) t1!67))))

(declare-fun b!2472071 () Bool)

(declare-fun isEmpty!16742 (BalanceConc!18028) Bool)

(assert (=> b!2472071 (= e!1567898 (isEmpty!16742 (_2!16666 lt!883362)))))

(declare-fun b!2472072 () Bool)

(assert (=> b!2472072 (= e!1567897 (isEmpty!16742 (_2!16666 (lex!1863 thiss!27932 rules!4472 (print!1585 thiss!27932 (singletonSeq!1998 t1!67))))))))

(assert (= (and d!711499 res!1046679) b!2472070))

(assert (= (and b!2472070 res!1046680) b!2472071))

(assert (= (and d!711499 res!1046681) b!2472072))

(declare-fun m!2840893 () Bool)

(assert (=> d!711499 m!2840893))

(assert (=> d!711499 m!2840633))

(declare-fun m!2840895 () Bool)

(assert (=> d!711499 m!2840895))

(declare-fun m!2840897 () Bool)

(assert (=> d!711499 m!2840897))

(declare-fun m!2840899 () Bool)

(assert (=> d!711499 m!2840899))

(assert (=> d!711499 m!2840893))

(declare-fun m!2840901 () Bool)

(assert (=> d!711499 m!2840901))

(assert (=> d!711499 m!2840893))

(assert (=> d!711499 m!2840895))

(declare-fun m!2840903 () Bool)

(assert (=> d!711499 m!2840903))

(declare-fun m!2840905 () Bool)

(assert (=> b!2472070 m!2840905))

(declare-fun m!2840907 () Bool)

(assert (=> b!2472071 m!2840907))

(assert (=> b!2472072 m!2840893))

(assert (=> b!2472072 m!2840893))

(assert (=> b!2472072 m!2840895))

(assert (=> b!2472072 m!2840895))

(assert (=> b!2472072 m!2840897))

(declare-fun m!2840909 () Bool)

(assert (=> b!2472072 m!2840909))

(assert (=> b!2471790 d!711499))

(declare-fun d!711517 () Bool)

(assert (=> d!711517 (rulesProduceIndividualToken!1818 thiss!27932 rules!4472 t1!67)))

(declare-fun lt!883365 () Unit!42166)

(declare-fun choose!14595 (LexerInterface!4088 List!28923 List!28922 Token!8452) Unit!42166)

(assert (=> d!711517 (= lt!883365 (choose!14595 thiss!27932 rules!4472 l!6611 t1!67))))

(assert (=> d!711517 (not (isEmpty!16738 rules!4472))))

(assert (=> d!711517 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!679 thiss!27932 rules!4472 l!6611 t1!67) lt!883365)))

(declare-fun bs!466963 () Bool)

(assert (= bs!466963 d!711517))

(assert (=> bs!466963 m!2840605))

(declare-fun m!2840911 () Bool)

(assert (=> bs!466963 m!2840911))

(assert (=> bs!466963 m!2840633))

(assert (=> b!2471790 d!711517))

(declare-fun d!711519 () Bool)

(declare-fun lt!883366 () Token!8452)

(assert (=> d!711519 (contains!4921 l!6611 lt!883366)))

(declare-fun e!1567899 () Token!8452)

(assert (=> d!711519 (= lt!883366 e!1567899)))

(declare-fun c!393768 () Bool)

(assert (=> d!711519 (= c!393768 (= (+ 1 i!1803) 0))))

(declare-fun e!1567900 () Bool)

(assert (=> d!711519 e!1567900))

(declare-fun res!1046682 () Bool)

(assert (=> d!711519 (=> (not res!1046682) (not e!1567900))))

(assert (=> d!711519 (= res!1046682 (<= 0 (+ 1 i!1803)))))

(assert (=> d!711519 (= (apply!6796 l!6611 (+ 1 i!1803)) lt!883366)))

(declare-fun b!2472073 () Bool)

(assert (=> b!2472073 (= e!1567900 (< (+ 1 i!1803) (size!22428 l!6611)))))

(declare-fun b!2472074 () Bool)

(assert (=> b!2472074 (= e!1567899 (head!5643 l!6611))))

(declare-fun b!2472075 () Bool)

(assert (=> b!2472075 (= e!1567899 (apply!6796 (tail!3924 l!6611) (- (+ 1 i!1803) 1)))))

(assert (= (and d!711519 res!1046682) b!2472073))

(assert (= (and d!711519 c!393768) b!2472074))

(assert (= (and d!711519 (not c!393768)) b!2472075))

(declare-fun m!2840913 () Bool)

(assert (=> d!711519 m!2840913))

(assert (=> b!2472073 m!2840635))

(assert (=> b!2472074 m!2840807))

(assert (=> b!2472075 m!2840809))

(assert (=> b!2472075 m!2840809))

(declare-fun m!2840915 () Bool)

(assert (=> b!2472075 m!2840915))

(assert (=> b!2471801 d!711519))

(declare-fun d!711521 () Bool)

(declare-fun res!1046683 () Bool)

(declare-fun e!1567901 () Bool)

(assert (=> d!711521 (=> (not res!1046683) (not e!1567901))))

(assert (=> d!711521 (= res!1046683 (not (isEmpty!16741 (originalCharacters!5257 t2!67))))))

(assert (=> d!711521 (= (inv!38911 t2!67) e!1567901)))

(declare-fun b!2472076 () Bool)

(declare-fun res!1046684 () Bool)

(assert (=> b!2472076 (=> (not res!1046684) (not e!1567901))))

(assert (=> b!2472076 (= res!1046684 (= (originalCharacters!5257 t2!67) (list!11144 (dynLambda!12381 (toChars!6214 (transformation!4491 (rule!6849 t2!67))) (value!143399 t2!67)))))))

(declare-fun b!2472077 () Bool)

(assert (=> b!2472077 (= e!1567901 (= (size!22427 t2!67) (size!22432 (originalCharacters!5257 t2!67))))))

(assert (= (and d!711521 res!1046683) b!2472076))

(assert (= (and b!2472076 res!1046684) b!2472077))

(declare-fun b_lambda!75829 () Bool)

(assert (=> (not b_lambda!75829) (not b!2472076)))

(declare-fun t!210065 () Bool)

(declare-fun tb!139893 () Bool)

(assert (=> (and b!2471802 (= (toChars!6214 (transformation!4491 (rule!6849 t2!67))) (toChars!6214 (transformation!4491 (rule!6849 t2!67)))) t!210065) tb!139893))

(declare-fun b!2472078 () Bool)

(declare-fun e!1567902 () Bool)

(declare-fun tp!789932 () Bool)

(assert (=> b!2472078 (= e!1567902 (and (inv!38914 (c!393734 (dynLambda!12381 (toChars!6214 (transformation!4491 (rule!6849 t2!67))) (value!143399 t2!67)))) tp!789932))))

(declare-fun result!172636 () Bool)

(assert (=> tb!139893 (= result!172636 (and (inv!38915 (dynLambda!12381 (toChars!6214 (transformation!4491 (rule!6849 t2!67))) (value!143399 t2!67))) e!1567902))))

(assert (= tb!139893 b!2472078))

(declare-fun m!2840917 () Bool)

(assert (=> b!2472078 m!2840917))

(declare-fun m!2840919 () Bool)

(assert (=> tb!139893 m!2840919))

(assert (=> b!2472076 t!210065))

(declare-fun b_and!187373 () Bool)

(assert (= b_and!187341 (and (=> t!210065 result!172636) b_and!187373)))

(declare-fun tb!139895 () Bool)

(declare-fun t!210067 () Bool)

(assert (=> (and b!2471795 (= (toChars!6214 (transformation!4491 (h!34224 rules!4472))) (toChars!6214 (transformation!4491 (rule!6849 t2!67)))) t!210067) tb!139895))

(declare-fun result!172638 () Bool)

(assert (= result!172638 result!172636))

(assert (=> b!2472076 t!210067))

(declare-fun b_and!187375 () Bool)

(assert (= b_and!187343 (and (=> t!210067 result!172638) b_and!187375)))

(declare-fun t!210069 () Bool)

(declare-fun tb!139897 () Bool)

(assert (=> (and b!2471806 (= (toChars!6214 (transformation!4491 (rule!6849 (h!34223 l!6611)))) (toChars!6214 (transformation!4491 (rule!6849 t2!67)))) t!210069) tb!139897))

(declare-fun result!172640 () Bool)

(assert (= result!172640 result!172636))

(assert (=> b!2472076 t!210069))

(declare-fun b_and!187377 () Bool)

(assert (= b_and!187345 (and (=> t!210069 result!172640) b_and!187377)))

(declare-fun t!210071 () Bool)

(declare-fun tb!139899 () Bool)

(assert (=> (and b!2471796 (= (toChars!6214 (transformation!4491 (rule!6849 t1!67))) (toChars!6214 (transformation!4491 (rule!6849 t2!67)))) t!210071) tb!139899))

(declare-fun result!172642 () Bool)

(assert (= result!172642 result!172636))

(assert (=> b!2472076 t!210071))

(declare-fun b_and!187379 () Bool)

(assert (= b_and!187347 (and (=> t!210071 result!172642) b_and!187379)))

(declare-fun m!2840921 () Bool)

(assert (=> d!711521 m!2840921))

(declare-fun m!2840923 () Bool)

(assert (=> b!2472076 m!2840923))

(assert (=> b!2472076 m!2840923))

(declare-fun m!2840925 () Bool)

(assert (=> b!2472076 m!2840925))

(declare-fun m!2840927 () Bool)

(assert (=> b!2472077 m!2840927))

(assert (=> start!241058 d!711521))

(declare-fun d!711523 () Bool)

(declare-fun res!1046685 () Bool)

(declare-fun e!1567903 () Bool)

(assert (=> d!711523 (=> (not res!1046685) (not e!1567903))))

(assert (=> d!711523 (= res!1046685 (not (isEmpty!16741 (originalCharacters!5257 t1!67))))))

(assert (=> d!711523 (= (inv!38911 t1!67) e!1567903)))

(declare-fun b!2472079 () Bool)

(declare-fun res!1046686 () Bool)

(assert (=> b!2472079 (=> (not res!1046686) (not e!1567903))))

(assert (=> b!2472079 (= res!1046686 (= (originalCharacters!5257 t1!67) (list!11144 (dynLambda!12381 (toChars!6214 (transformation!4491 (rule!6849 t1!67))) (value!143399 t1!67)))))))

(declare-fun b!2472080 () Bool)

(assert (=> b!2472080 (= e!1567903 (= (size!22427 t1!67) (size!22432 (originalCharacters!5257 t1!67))))))

(assert (= (and d!711523 res!1046685) b!2472079))

(assert (= (and b!2472079 res!1046686) b!2472080))

(declare-fun b_lambda!75831 () Bool)

(assert (=> (not b_lambda!75831) (not b!2472079)))

(declare-fun tb!139901 () Bool)

(declare-fun t!210073 () Bool)

(assert (=> (and b!2471802 (= (toChars!6214 (transformation!4491 (rule!6849 t2!67))) (toChars!6214 (transformation!4491 (rule!6849 t1!67)))) t!210073) tb!139901))

(declare-fun b!2472081 () Bool)

(declare-fun e!1567904 () Bool)

(declare-fun tp!789933 () Bool)

(assert (=> b!2472081 (= e!1567904 (and (inv!38914 (c!393734 (dynLambda!12381 (toChars!6214 (transformation!4491 (rule!6849 t1!67))) (value!143399 t1!67)))) tp!789933))))

(declare-fun result!172644 () Bool)

(assert (=> tb!139901 (= result!172644 (and (inv!38915 (dynLambda!12381 (toChars!6214 (transformation!4491 (rule!6849 t1!67))) (value!143399 t1!67))) e!1567904))))

(assert (= tb!139901 b!2472081))

(declare-fun m!2840929 () Bool)

(assert (=> b!2472081 m!2840929))

(declare-fun m!2840931 () Bool)

(assert (=> tb!139901 m!2840931))

(assert (=> b!2472079 t!210073))

(declare-fun b_and!187381 () Bool)

(assert (= b_and!187373 (and (=> t!210073 result!172644) b_and!187381)))

(declare-fun t!210075 () Bool)

(declare-fun tb!139903 () Bool)

(assert (=> (and b!2471795 (= (toChars!6214 (transformation!4491 (h!34224 rules!4472))) (toChars!6214 (transformation!4491 (rule!6849 t1!67)))) t!210075) tb!139903))

(declare-fun result!172646 () Bool)

(assert (= result!172646 result!172644))

(assert (=> b!2472079 t!210075))

(declare-fun b_and!187383 () Bool)

(assert (= b_and!187375 (and (=> t!210075 result!172646) b_and!187383)))

(declare-fun t!210077 () Bool)

(declare-fun tb!139905 () Bool)

(assert (=> (and b!2471806 (= (toChars!6214 (transformation!4491 (rule!6849 (h!34223 l!6611)))) (toChars!6214 (transformation!4491 (rule!6849 t1!67)))) t!210077) tb!139905))

(declare-fun result!172648 () Bool)

(assert (= result!172648 result!172644))

(assert (=> b!2472079 t!210077))

(declare-fun b_and!187385 () Bool)

(assert (= b_and!187377 (and (=> t!210077 result!172648) b_and!187385)))

(declare-fun t!210079 () Bool)

(declare-fun tb!139907 () Bool)

(assert (=> (and b!2471796 (= (toChars!6214 (transformation!4491 (rule!6849 t1!67))) (toChars!6214 (transformation!4491 (rule!6849 t1!67)))) t!210079) tb!139907))

(declare-fun result!172650 () Bool)

(assert (= result!172650 result!172644))

(assert (=> b!2472079 t!210079))

(declare-fun b_and!187387 () Bool)

(assert (= b_and!187379 (and (=> t!210079 result!172650) b_and!187387)))

(declare-fun m!2840933 () Bool)

(assert (=> d!711523 m!2840933))

(declare-fun m!2840935 () Bool)

(assert (=> b!2472079 m!2840935))

(assert (=> b!2472079 m!2840935))

(declare-fun m!2840937 () Bool)

(assert (=> b!2472079 m!2840937))

(declare-fun m!2840939 () Bool)

(assert (=> b!2472080 m!2840939))

(assert (=> start!241058 d!711523))

(declare-fun b!2472082 () Bool)

(declare-fun e!1567905 () Bool)

(assert (=> b!2472082 (= e!1567905 (inv!17 (value!143399 (h!34223 l!6611))))))

(declare-fun b!2472083 () Bool)

(declare-fun res!1046687 () Bool)

(declare-fun e!1567907 () Bool)

(assert (=> b!2472083 (=> res!1046687 e!1567907)))

(assert (=> b!2472083 (= res!1046687 (not ((_ is IntegerValue!14033) (value!143399 (h!34223 l!6611)))))))

(assert (=> b!2472083 (= e!1567905 e!1567907)))

(declare-fun b!2472084 () Bool)

(assert (=> b!2472084 (= e!1567907 (inv!15 (value!143399 (h!34223 l!6611))))))

(declare-fun d!711525 () Bool)

(declare-fun c!393769 () Bool)

(assert (=> d!711525 (= c!393769 ((_ is IntegerValue!14031) (value!143399 (h!34223 l!6611))))))

(declare-fun e!1567906 () Bool)

(assert (=> d!711525 (= (inv!21 (value!143399 (h!34223 l!6611))) e!1567906)))

(declare-fun b!2472085 () Bool)

(assert (=> b!2472085 (= e!1567906 (inv!16 (value!143399 (h!34223 l!6611))))))

(declare-fun b!2472086 () Bool)

(assert (=> b!2472086 (= e!1567906 e!1567905)))

(declare-fun c!393770 () Bool)

(assert (=> b!2472086 (= c!393770 ((_ is IntegerValue!14032) (value!143399 (h!34223 l!6611))))))

(assert (= (and d!711525 c!393769) b!2472085))

(assert (= (and d!711525 (not c!393769)) b!2472086))

(assert (= (and b!2472086 c!393770) b!2472082))

(assert (= (and b!2472086 (not c!393770)) b!2472083))

(assert (= (and b!2472083 (not res!1046687)) b!2472084))

(declare-fun m!2840941 () Bool)

(assert (=> b!2472082 m!2840941))

(declare-fun m!2840943 () Bool)

(assert (=> b!2472084 m!2840943))

(declare-fun m!2840945 () Bool)

(assert (=> b!2472085 m!2840945))

(assert (=> b!2471791 d!711525))

(declare-fun b!2472097 () Bool)

(declare-fun b_free!71453 () Bool)

(declare-fun b_next!72157 () Bool)

(assert (=> b!2472097 (= b_free!71453 (not b_next!72157))))

(declare-fun tp!789944 () Bool)

(declare-fun b_and!187389 () Bool)

(assert (=> b!2472097 (= tp!789944 b_and!187389)))

(declare-fun b_free!71455 () Bool)

(declare-fun b_next!72159 () Bool)

(assert (=> b!2472097 (= b_free!71455 (not b_next!72159))))

(declare-fun t!210081 () Bool)

(declare-fun tb!139909 () Bool)

(assert (=> (and b!2472097 (= (toChars!6214 (transformation!4491 (h!34224 (t!210010 rules!4472)))) (toChars!6214 (transformation!4491 (rule!6849 (h!34223 l!6611))))) t!210081) tb!139909))

(declare-fun result!172654 () Bool)

(assert (= result!172654 result!172590))

(assert (=> b!2471929 t!210081))

(declare-fun t!210083 () Bool)

(declare-fun tb!139911 () Bool)

(assert (=> (and b!2472097 (= (toChars!6214 (transformation!4491 (h!34224 (t!210010 rules!4472)))) (toChars!6214 (transformation!4491 (rule!6849 t2!67)))) t!210083) tb!139911))

(declare-fun result!172656 () Bool)

(assert (= result!172656 result!172636))

(assert (=> b!2472076 t!210083))

(declare-fun t!210085 () Bool)

(declare-fun tb!139913 () Bool)

(assert (=> (and b!2472097 (= (toChars!6214 (transformation!4491 (h!34224 (t!210010 rules!4472)))) (toChars!6214 (transformation!4491 (rule!6849 t1!67)))) t!210085) tb!139913))

(declare-fun result!172658 () Bool)

(assert (= result!172658 result!172644))

(assert (=> b!2472079 t!210085))

(declare-fun b_and!187391 () Bool)

(declare-fun tp!789945 () Bool)

(assert (=> b!2472097 (= tp!789945 (and (=> t!210081 result!172654) (=> t!210083 result!172656) (=> t!210085 result!172658) b_and!187391))))

(declare-fun e!1567916 () Bool)

(assert (=> b!2472097 (= e!1567916 (and tp!789944 tp!789945))))

(declare-fun b!2472096 () Bool)

(declare-fun tp!789942 () Bool)

(declare-fun e!1567917 () Bool)

(assert (=> b!2472096 (= e!1567917 (and tp!789942 (inv!38907 (tag!4981 (h!34224 (t!210010 rules!4472)))) (inv!38910 (transformation!4491 (h!34224 (t!210010 rules!4472)))) e!1567916))))

(declare-fun b!2472095 () Bool)

(declare-fun e!1567919 () Bool)

(declare-fun tp!789943 () Bool)

(assert (=> b!2472095 (= e!1567919 (and e!1567917 tp!789943))))

(assert (=> b!2471797 (= tp!789859 e!1567919)))

(assert (= b!2472096 b!2472097))

(assert (= b!2472095 b!2472096))

(assert (= (and b!2471797 ((_ is Cons!28823) (t!210010 rules!4472))) b!2472095))

(declare-fun m!2840947 () Bool)

(assert (=> b!2472096 m!2840947))

(declare-fun m!2840949 () Bool)

(assert (=> b!2472096 m!2840949))

(declare-fun e!1567922 () Bool)

(assert (=> b!2471808 (= tp!789860 e!1567922)))

(declare-fun b!2472108 () Bool)

(declare-fun tp_is_empty!11959 () Bool)

(assert (=> b!2472108 (= e!1567922 tp_is_empty!11959)))

(declare-fun b!2472109 () Bool)

(declare-fun tp!789959 () Bool)

(declare-fun tp!789957 () Bool)

(assert (=> b!2472109 (= e!1567922 (and tp!789959 tp!789957))))

(declare-fun b!2472111 () Bool)

(declare-fun tp!789956 () Bool)

(declare-fun tp!789960 () Bool)

(assert (=> b!2472111 (= e!1567922 (and tp!789956 tp!789960))))

(declare-fun b!2472110 () Bool)

(declare-fun tp!789958 () Bool)

(assert (=> b!2472110 (= e!1567922 tp!789958)))

(assert (= (and b!2471808 ((_ is ElementMatch!7279) (regex!4491 (rule!6849 t2!67)))) b!2472108))

(assert (= (and b!2471808 ((_ is Concat!11957) (regex!4491 (rule!6849 t2!67)))) b!2472109))

(assert (= (and b!2471808 ((_ is Star!7279) (regex!4491 (rule!6849 t2!67)))) b!2472110))

(assert (= (and b!2471808 ((_ is Union!7279) (regex!4491 (rule!6849 t2!67)))) b!2472111))

(declare-fun e!1567923 () Bool)

(assert (=> b!2471798 (= tp!789845 e!1567923)))

(declare-fun b!2472112 () Bool)

(assert (=> b!2472112 (= e!1567923 tp_is_empty!11959)))

(declare-fun b!2472113 () Bool)

(declare-fun tp!789964 () Bool)

(declare-fun tp!789962 () Bool)

(assert (=> b!2472113 (= e!1567923 (and tp!789964 tp!789962))))

(declare-fun b!2472115 () Bool)

(declare-fun tp!789961 () Bool)

(declare-fun tp!789965 () Bool)

(assert (=> b!2472115 (= e!1567923 (and tp!789961 tp!789965))))

(declare-fun b!2472114 () Bool)

(declare-fun tp!789963 () Bool)

(assert (=> b!2472114 (= e!1567923 tp!789963)))

(assert (= (and b!2471798 ((_ is ElementMatch!7279) (regex!4491 (rule!6849 t1!67)))) b!2472112))

(assert (= (and b!2471798 ((_ is Concat!11957) (regex!4491 (rule!6849 t1!67)))) b!2472113))

(assert (= (and b!2471798 ((_ is Star!7279) (regex!4491 (rule!6849 t1!67)))) b!2472114))

(assert (= (and b!2471798 ((_ is Union!7279) (regex!4491 (rule!6849 t1!67)))) b!2472115))

(declare-fun e!1567924 () Bool)

(assert (=> b!2471788 (= tp!789857 e!1567924)))

(declare-fun b!2472116 () Bool)

(assert (=> b!2472116 (= e!1567924 tp_is_empty!11959)))

(declare-fun b!2472117 () Bool)

(declare-fun tp!789969 () Bool)

(declare-fun tp!789967 () Bool)

(assert (=> b!2472117 (= e!1567924 (and tp!789969 tp!789967))))

(declare-fun b!2472119 () Bool)

(declare-fun tp!789966 () Bool)

(declare-fun tp!789970 () Bool)

(assert (=> b!2472119 (= e!1567924 (and tp!789966 tp!789970))))

(declare-fun b!2472118 () Bool)

(declare-fun tp!789968 () Bool)

(assert (=> b!2472118 (= e!1567924 tp!789968)))

(assert (= (and b!2471788 ((_ is ElementMatch!7279) (regex!4491 (rule!6849 (h!34223 l!6611))))) b!2472116))

(assert (= (and b!2471788 ((_ is Concat!11957) (regex!4491 (rule!6849 (h!34223 l!6611))))) b!2472117))

(assert (= (and b!2471788 ((_ is Star!7279) (regex!4491 (rule!6849 (h!34223 l!6611))))) b!2472118))

(assert (= (and b!2471788 ((_ is Union!7279) (regex!4491 (rule!6849 (h!34223 l!6611))))) b!2472119))

(declare-fun b!2472124 () Bool)

(declare-fun e!1567927 () Bool)

(declare-fun tp!789973 () Bool)

(assert (=> b!2472124 (= e!1567927 (and tp_is_empty!11959 tp!789973))))

(assert (=> b!2471799 (= tp!789853 e!1567927)))

(assert (= (and b!2471799 ((_ is Cons!28821) (originalCharacters!5257 t2!67))) b!2472124))

(declare-fun e!1567928 () Bool)

(assert (=> b!2471805 (= tp!789858 e!1567928)))

(declare-fun b!2472125 () Bool)

(assert (=> b!2472125 (= e!1567928 tp_is_empty!11959)))

(declare-fun b!2472126 () Bool)

(declare-fun tp!789977 () Bool)

(declare-fun tp!789975 () Bool)

(assert (=> b!2472126 (= e!1567928 (and tp!789977 tp!789975))))

(declare-fun b!2472128 () Bool)

(declare-fun tp!789974 () Bool)

(declare-fun tp!789978 () Bool)

(assert (=> b!2472128 (= e!1567928 (and tp!789974 tp!789978))))

(declare-fun b!2472127 () Bool)

(declare-fun tp!789976 () Bool)

(assert (=> b!2472127 (= e!1567928 tp!789976)))

(assert (= (and b!2471805 ((_ is ElementMatch!7279) (regex!4491 (h!34224 rules!4472)))) b!2472125))

(assert (= (and b!2471805 ((_ is Concat!11957) (regex!4491 (h!34224 rules!4472)))) b!2472126))

(assert (= (and b!2471805 ((_ is Star!7279) (regex!4491 (h!34224 rules!4472)))) b!2472127))

(assert (= (and b!2471805 ((_ is Union!7279) (regex!4491 (h!34224 rules!4472)))) b!2472128))

(declare-fun b!2472142 () Bool)

(declare-fun b_free!71457 () Bool)

(declare-fun b_next!72161 () Bool)

(assert (=> b!2472142 (= b_free!71457 (not b_next!72161))))

(declare-fun tp!789990 () Bool)

(declare-fun b_and!187393 () Bool)

(assert (=> b!2472142 (= tp!789990 b_and!187393)))

(declare-fun b_free!71459 () Bool)

(declare-fun b_next!72163 () Bool)

(assert (=> b!2472142 (= b_free!71459 (not b_next!72163))))

(declare-fun t!210087 () Bool)

(declare-fun tb!139915 () Bool)

(assert (=> (and b!2472142 (= (toChars!6214 (transformation!4491 (rule!6849 (h!34223 (t!210009 l!6611))))) (toChars!6214 (transformation!4491 (rule!6849 (h!34223 l!6611))))) t!210087) tb!139915))

(declare-fun result!172666 () Bool)

(assert (= result!172666 result!172590))

(assert (=> b!2471929 t!210087))

(declare-fun t!210089 () Bool)

(declare-fun tb!139917 () Bool)

(assert (=> (and b!2472142 (= (toChars!6214 (transformation!4491 (rule!6849 (h!34223 (t!210009 l!6611))))) (toChars!6214 (transformation!4491 (rule!6849 t2!67)))) t!210089) tb!139917))

(declare-fun result!172668 () Bool)

(assert (= result!172668 result!172636))

(assert (=> b!2472076 t!210089))

(declare-fun tb!139919 () Bool)

(declare-fun t!210091 () Bool)

(assert (=> (and b!2472142 (= (toChars!6214 (transformation!4491 (rule!6849 (h!34223 (t!210009 l!6611))))) (toChars!6214 (transformation!4491 (rule!6849 t1!67)))) t!210091) tb!139919))

(declare-fun result!172670 () Bool)

(assert (= result!172670 result!172644))

(assert (=> b!2472079 t!210091))

(declare-fun tp!789993 () Bool)

(declare-fun b_and!187395 () Bool)

(assert (=> b!2472142 (= tp!789993 (and (=> t!210087 result!172666) (=> t!210089 result!172668) (=> t!210091 result!172670) b_and!187395))))

(declare-fun tp!789989 () Bool)

(declare-fun b!2472139 () Bool)

(declare-fun e!1567943 () Bool)

(declare-fun e!1567946 () Bool)

(assert (=> b!2472139 (= e!1567946 (and (inv!38911 (h!34223 (t!210009 l!6611))) e!1567943 tp!789989))))

(assert (=> b!2471807 (= tp!789855 e!1567946)))

(declare-fun b!2472141 () Bool)

(declare-fun e!1567942 () Bool)

(declare-fun tp!789991 () Bool)

(declare-fun e!1567945 () Bool)

(assert (=> b!2472141 (= e!1567942 (and tp!789991 (inv!38907 (tag!4981 (rule!6849 (h!34223 (t!210009 l!6611))))) (inv!38910 (transformation!4491 (rule!6849 (h!34223 (t!210009 l!6611))))) e!1567945))))

(declare-fun b!2472140 () Bool)

(declare-fun tp!789992 () Bool)

(assert (=> b!2472140 (= e!1567943 (and (inv!21 (value!143399 (h!34223 (t!210009 l!6611)))) e!1567942 tp!789992))))

(assert (=> b!2472142 (= e!1567945 (and tp!789990 tp!789993))))

(assert (= b!2472141 b!2472142))

(assert (= b!2472140 b!2472141))

(assert (= b!2472139 b!2472140))

(assert (= (and b!2471807 ((_ is Cons!28822) (t!210009 l!6611))) b!2472139))

(declare-fun m!2840951 () Bool)

(assert (=> b!2472139 m!2840951))

(declare-fun m!2840953 () Bool)

(assert (=> b!2472141 m!2840953))

(declare-fun m!2840955 () Bool)

(assert (=> b!2472141 m!2840955))

(declare-fun m!2840957 () Bool)

(assert (=> b!2472140 m!2840957))

(declare-fun b!2472143 () Bool)

(declare-fun e!1567947 () Bool)

(declare-fun tp!789994 () Bool)

(assert (=> b!2472143 (= e!1567947 (and tp_is_empty!11959 tp!789994))))

(assert (=> b!2471803 (= tp!789846 e!1567947)))

(assert (= (and b!2471803 ((_ is Cons!28821) (originalCharacters!5257 t1!67))) b!2472143))

(declare-fun b!2472144 () Bool)

(declare-fun e!1567948 () Bool)

(declare-fun tp!789995 () Bool)

(assert (=> b!2472144 (= e!1567948 (and tp_is_empty!11959 tp!789995))))

(assert (=> b!2471791 (= tp!789848 e!1567948)))

(assert (= (and b!2471791 ((_ is Cons!28821) (originalCharacters!5257 (h!34223 l!6611)))) b!2472144))

(declare-fun b_lambda!75833 () Bool)

(assert (= b_lambda!75831 (or (and b!2471802 b_free!71431 (= (toChars!6214 (transformation!4491 (rule!6849 t2!67))) (toChars!6214 (transformation!4491 (rule!6849 t1!67))))) (and b!2471806 b_free!71439 (= (toChars!6214 (transformation!4491 (rule!6849 (h!34223 l!6611)))) (toChars!6214 (transformation!4491 (rule!6849 t1!67))))) (and b!2471795 b_free!71435 (= (toChars!6214 (transformation!4491 (h!34224 rules!4472))) (toChars!6214 (transformation!4491 (rule!6849 t1!67))))) (and b!2471796 b_free!71443) (and b!2472097 b_free!71455 (= (toChars!6214 (transformation!4491 (h!34224 (t!210010 rules!4472)))) (toChars!6214 (transformation!4491 (rule!6849 t1!67))))) (and b!2472142 b_free!71459 (= (toChars!6214 (transformation!4491 (rule!6849 (h!34223 (t!210009 l!6611))))) (toChars!6214 (transformation!4491 (rule!6849 t1!67))))) b_lambda!75833)))

(declare-fun b_lambda!75835 () Bool)

(assert (= b_lambda!75829 (or (and b!2471806 b_free!71439 (= (toChars!6214 (transformation!4491 (rule!6849 (h!34223 l!6611)))) (toChars!6214 (transformation!4491 (rule!6849 t2!67))))) (and b!2471796 b_free!71443 (= (toChars!6214 (transformation!4491 (rule!6849 t1!67))) (toChars!6214 (transformation!4491 (rule!6849 t2!67))))) (and b!2472142 b_free!71459 (= (toChars!6214 (transformation!4491 (rule!6849 (h!34223 (t!210009 l!6611))))) (toChars!6214 (transformation!4491 (rule!6849 t2!67))))) (and b!2471802 b_free!71431) (and b!2471795 b_free!71435 (= (toChars!6214 (transformation!4491 (h!34224 rules!4472))) (toChars!6214 (transformation!4491 (rule!6849 t2!67))))) (and b!2472097 b_free!71455 (= (toChars!6214 (transformation!4491 (h!34224 (t!210010 rules!4472)))) (toChars!6214 (transformation!4491 (rule!6849 t2!67))))) b_lambda!75835)))

(declare-fun b_lambda!75837 () Bool)

(assert (= b_lambda!75817 (or (and b!2471795 b_free!71435 (= (toChars!6214 (transformation!4491 (h!34224 rules!4472))) (toChars!6214 (transformation!4491 (rule!6849 (h!34223 l!6611)))))) (and b!2472142 b_free!71459 (= (toChars!6214 (transformation!4491 (rule!6849 (h!34223 (t!210009 l!6611))))) (toChars!6214 (transformation!4491 (rule!6849 (h!34223 l!6611)))))) (and b!2472097 b_free!71455 (= (toChars!6214 (transformation!4491 (h!34224 (t!210010 rules!4472)))) (toChars!6214 (transformation!4491 (rule!6849 (h!34223 l!6611)))))) (and b!2471796 b_free!71443 (= (toChars!6214 (transformation!4491 (rule!6849 t1!67))) (toChars!6214 (transformation!4491 (rule!6849 (h!34223 l!6611)))))) (and b!2471802 b_free!71431 (= (toChars!6214 (transformation!4491 (rule!6849 t2!67))) (toChars!6214 (transformation!4491 (rule!6849 (h!34223 l!6611)))))) (and b!2471806 b_free!71439) b_lambda!75837)))

(check-sat (not d!711481) (not b!2471970) (not b!2472072) (not tb!139857) (not b!2471849) (not d!711483) (not b!2472118) (not b!2472119) b_and!187393 (not b_next!72133) (not b_next!72159) (not d!711479) (not b_lambda!75833) (not b!2471938) (not b!2472115) b_and!187391 b_and!187383 (not b!2472095) b_and!187321 (not b!2472075) (not b!2472110) (not b!2471929) (not b!2471837) (not b!2472076) (not b!2472096) (not d!711495) (not d!711521) b_and!187325 (not b!2471954) (not b_lambda!75837) (not d!711487) (not d!711451) (not b!2472079) (not b!2472127) (not d!711519) (not b!2472140) (not b!2472128) (not b!2471924) (not b!2472126) (not b_next!72137) (not d!711499) (not b_next!72135) b_and!187387 (not b!2471963) (not b!2472124) (not b!2472081) (not b!2472114) (not d!711523) b_and!187381 (not b!2472084) (not b_next!72163) (not b!2472143) (not b!2471939) (not b!2472073) (not b_next!72143) (not b!2471962) (not b_next!72141) (not b!2471852) b_and!187329 (not d!711439) (not b!2472144) (not b!2472077) (not d!711517) (not b!2471909) (not b_next!72139) (not b!2472080) (not d!711443) (not d!711447) (not b!2472141) (not b!2471949) (not b!2471930) tp_is_empty!11959 (not b!2472070) (not tb!139893) (not b!2471851) (not b!2471919) (not b_next!72161) (not b!2472117) (not b_lambda!75835) (not b_next!72147) (not b!2472109) (not b!2471942) (not b_next!72145) b_and!187389 (not b!2472082) b_and!187317 (not b_next!72157) (not b!2471955) (not d!711497) (not b!2472085) (not b!2472139) (not b!2471935) (not b!2471838) (not b!2471836) (not b!2472113) (not b!2472111) (not b!2471910) (not b!2471941) b_and!187395 (not b!2472074) (not b!2471964) (not b!2472078) b_and!187385 (not b!2472071) (not tb!139901))
(check-sat b_and!187321 b_and!187325 (not b_next!72137) b_and!187329 (not b_next!72139) (not b_next!72161) (not b_next!72147) b_and!187395 b_and!187385 b_and!187393 (not b_next!72133) (not b_next!72159) b_and!187391 b_and!187383 (not b_next!72135) b_and!187387 (not b_next!72163) b_and!187381 (not b_next!72143) (not b_next!72141) (not b_next!72145) b_and!187389 b_and!187317 (not b_next!72157))
