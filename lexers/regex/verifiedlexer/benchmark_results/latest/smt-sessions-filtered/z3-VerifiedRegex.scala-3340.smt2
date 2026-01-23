; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!189488 () Bool)

(assert start!189488)

(declare-fun res!844652 () Bool)

(declare-fun e!1207791 () Bool)

(assert (=> start!189488 (=> (not res!844652) (not e!1207791))))

(declare-datatypes ((LexerInterface!3369 0))(
  ( (LexerInterfaceExt!3366 (__x!13282 Int)) (Lexer!3367) )
))
(declare-fun thiss!13601 () LexerInterface!3369)

(declare-fun from!837 () Int)

(get-info :version)

(assert (=> start!189488 (= res!844652 (and ((_ is Lexer!3367) thiss!13601) (>= from!837 0)))))

(assert (=> start!189488 e!1207791))

(assert (=> start!189488 true))

(declare-datatypes ((List!21269 0))(
  ( (Nil!21187) (Cons!21187 (h!26588 (_ BitVec 16)) (t!175758 List!21269)) )
))
(declare-datatypes ((TokenValue!3892 0))(
  ( (FloatLiteralValue!7784 (text!27689 List!21269)) (TokenValueExt!3891 (__x!13283 Int)) (Broken!19460 (value!118611 List!21269)) (Object!3973) (End!3892) (Def!3892) (Underscore!3892) (Match!3892) (Else!3892) (Error!3892) (Case!3892) (If!3892) (Extends!3892) (Abstract!3892) (Class!3892) (Val!3892) (DelimiterValue!7784 (del!3952 List!21269)) (KeywordValue!3898 (value!118612 List!21269)) (CommentValue!7784 (value!118613 List!21269)) (WhitespaceValue!7784 (value!118614 List!21269)) (IndentationValue!3892 (value!118615 List!21269)) (String!24577) (Int32!3892) (Broken!19461 (value!118616 List!21269)) (Boolean!3893) (Unit!35563) (OperatorValue!3895 (op!3952 List!21269)) (IdentifierValue!7784 (value!118617 List!21269)) (IdentifierValue!7785 (value!118618 List!21269)) (WhitespaceValue!7785 (value!118619 List!21269)) (True!7784) (False!7784) (Broken!19462 (value!118620 List!21269)) (Broken!19463 (value!118621 List!21269)) (True!7785) (RightBrace!3892) (RightBracket!3892) (Colon!3892) (Null!3892) (Comma!3892) (LeftBracket!3892) (False!7785) (LeftBrace!3892) (ImaginaryLiteralValue!3892 (text!27690 List!21269)) (StringLiteralValue!11676 (value!118622 List!21269)) (EOFValue!3892 (value!118623 List!21269)) (IdentValue!3892 (value!118624 List!21269)) (DelimiterValue!7785 (value!118625 List!21269)) (DedentValue!3892 (value!118626 List!21269)) (NewLineValue!3892 (value!118627 List!21269)) (IntegerValue!11676 (value!118628 (_ BitVec 32)) (text!27691 List!21269)) (IntegerValue!11677 (value!118629 Int) (text!27692 List!21269)) (Times!3892) (Or!3892) (Equal!3892) (Minus!3892) (Broken!19464 (value!118630 List!21269)) (And!3892) (Div!3892) (LessEqual!3892) (Mod!3892) (Concat!9073) (Not!3892) (Plus!3892) (SpaceValue!3892 (value!118631 List!21269)) (IntegerValue!11678 (value!118632 Int) (text!27693 List!21269)) (StringLiteralValue!11677 (text!27694 List!21269)) (FloatLiteralValue!7785 (text!27695 List!21269)) (BytesLiteralValue!3892 (value!118633 List!21269)) (CommentValue!7785 (value!118634 List!21269)) (StringLiteralValue!11678 (value!118635 List!21269)) (ErrorTokenValue!3892 (msg!3953 List!21269)) )
))
(declare-datatypes ((C!10508 0))(
  ( (C!10509 (val!6206 Int)) )
))
(declare-datatypes ((List!21270 0))(
  ( (Nil!21188) (Cons!21188 (h!26589 C!10508) (t!175759 List!21270)) )
))
(declare-datatypes ((IArray!14105 0))(
  ( (IArray!14106 (innerList!7110 List!21270)) )
))
(declare-datatypes ((Conc!7050 0))(
  ( (Node!7050 (left!17006 Conc!7050) (right!17336 Conc!7050) (csize!14330 Int) (cheight!7261 Int)) (Leaf!10391 (xs!9940 IArray!14105) (csize!14331 Int)) (Empty!7050) )
))
(declare-datatypes ((BalanceConc!13916 0))(
  ( (BalanceConc!13917 (c!308674 Conc!7050)) )
))
(declare-datatypes ((Regex!5181 0))(
  ( (ElementMatch!5181 (c!308675 C!10508)) (Concat!9074 (regOne!10874 Regex!5181) (regTwo!10874 Regex!5181)) (EmptyExpr!5181) (Star!5181 (reg!5510 Regex!5181)) (EmptyLang!5181) (Union!5181 (regOne!10875 Regex!5181) (regTwo!10875 Regex!5181)) )
))
(declare-datatypes ((String!24578 0))(
  ( (String!24579 (value!118636 String)) )
))
(declare-datatypes ((TokenValueInjection!7368 0))(
  ( (TokenValueInjection!7369 (toValue!5365 Int) (toChars!5224 Int)) )
))
(declare-datatypes ((Rule!7312 0))(
  ( (Rule!7313 (regex!3756 Regex!5181) (tag!4170 String!24578) (isSeparator!3756 Bool) (transformation!3756 TokenValueInjection!7368)) )
))
(declare-datatypes ((Token!7064 0))(
  ( (Token!7065 (value!118637 TokenValue!3892) (rule!5949 Rule!7312) (size!16797 Int) (originalCharacters!4563 List!21270)) )
))
(declare-datatypes ((List!21271 0))(
  ( (Nil!21189) (Cons!21189 (h!26590 Token!7064) (t!175760 List!21271)) )
))
(declare-datatypes ((IArray!14107 0))(
  ( (IArray!14108 (innerList!7111 List!21271)) )
))
(declare-datatypes ((Conc!7051 0))(
  ( (Node!7051 (left!17007 Conc!7051) (right!17337 Conc!7051) (csize!14332 Int) (cheight!7262 Int)) (Leaf!10392 (xs!9941 IArray!14107) (csize!14333 Int)) (Empty!7051) )
))
(declare-datatypes ((BalanceConc!13918 0))(
  ( (BalanceConc!13919 (c!308676 Conc!7051)) )
))
(declare-fun v!6342 () BalanceConc!13918)

(declare-fun e!1207790 () Bool)

(declare-fun inv!28265 (BalanceConc!13918) Bool)

(assert (=> start!189488 (and (inv!28265 v!6342) e!1207790)))

(declare-fun b!1892070 () Bool)

(declare-fun e!1207792 () Bool)

(assert (=> b!1892070 (= e!1207791 e!1207792)))

(declare-fun res!844651 () Bool)

(assert (=> b!1892070 (=> (not res!844651) (not e!1207792))))

(declare-fun lt!724306 () Int)

(assert (=> b!1892070 (= res!844651 (and (<= from!837 lt!724306) (< from!837 lt!724306)))))

(declare-fun size!16798 (BalanceConc!13918) Int)

(assert (=> b!1892070 (= lt!724306 (size!16798 v!6342))))

(declare-fun b!1892071 () Bool)

(declare-fun lt!724304 () List!21271)

(declare-fun size!16799 (List!21271) Int)

(assert (=> b!1892071 (= e!1207792 (not (< from!837 (size!16799 lt!724304))))))

(declare-fun head!4398 (List!21271) Token!7064)

(declare-fun drop!1051 (List!21271 Int) List!21271)

(declare-fun apply!5573 (List!21271 Int) Token!7064)

(assert (=> b!1892071 (= (head!4398 (drop!1051 lt!724304 from!837)) (apply!5573 lt!724304 from!837))))

(declare-datatypes ((Unit!35564 0))(
  ( (Unit!35565) )
))
(declare-fun lt!724305 () Unit!35564)

(declare-fun lemmaDropApply!684 (List!21271 Int) Unit!35564)

(assert (=> b!1892071 (= lt!724305 (lemmaDropApply!684 lt!724304 from!837))))

(declare-fun list!8601 (BalanceConc!13918) List!21271)

(assert (=> b!1892071 (= lt!724304 (list!8601 v!6342))))

(declare-fun b!1892072 () Bool)

(declare-fun tp!539750 () Bool)

(declare-fun inv!28266 (Conc!7051) Bool)

(assert (=> b!1892072 (= e!1207790 (and (inv!28266 (c!308676 v!6342)) tp!539750))))

(assert (= (and start!189488 res!844652) b!1892070))

(assert (= (and b!1892070 res!844651) b!1892071))

(assert (= start!189488 b!1892072))

(declare-fun m!2323445 () Bool)

(assert (=> start!189488 m!2323445))

(declare-fun m!2323447 () Bool)

(assert (=> b!1892070 m!2323447))

(declare-fun m!2323449 () Bool)

(assert (=> b!1892071 m!2323449))

(declare-fun m!2323451 () Bool)

(assert (=> b!1892071 m!2323451))

(declare-fun m!2323453 () Bool)

(assert (=> b!1892071 m!2323453))

(declare-fun m!2323455 () Bool)

(assert (=> b!1892071 m!2323455))

(assert (=> b!1892071 m!2323451))

(declare-fun m!2323457 () Bool)

(assert (=> b!1892071 m!2323457))

(declare-fun m!2323459 () Bool)

(assert (=> b!1892071 m!2323459))

(declare-fun m!2323461 () Bool)

(assert (=> b!1892072 m!2323461))

(check-sat (not b!1892072) (not b!1892071) (not b!1892070) (not start!189488))
(check-sat)
(get-model)

(declare-fun d!579597 () Bool)

(declare-fun c!308679 () Bool)

(assert (=> d!579597 (= c!308679 ((_ is Node!7051) (c!308676 v!6342)))))

(declare-fun e!1207797 () Bool)

(assert (=> d!579597 (= (inv!28266 (c!308676 v!6342)) e!1207797)))

(declare-fun b!1892079 () Bool)

(declare-fun inv!28267 (Conc!7051) Bool)

(assert (=> b!1892079 (= e!1207797 (inv!28267 (c!308676 v!6342)))))

(declare-fun b!1892080 () Bool)

(declare-fun e!1207798 () Bool)

(assert (=> b!1892080 (= e!1207797 e!1207798)))

(declare-fun res!844659 () Bool)

(assert (=> b!1892080 (= res!844659 (not ((_ is Leaf!10392) (c!308676 v!6342))))))

(assert (=> b!1892080 (=> res!844659 e!1207798)))

(declare-fun b!1892081 () Bool)

(declare-fun inv!28268 (Conc!7051) Bool)

(assert (=> b!1892081 (= e!1207798 (inv!28268 (c!308676 v!6342)))))

(assert (= (and d!579597 c!308679) b!1892079))

(assert (= (and d!579597 (not c!308679)) b!1892080))

(assert (= (and b!1892080 (not res!844659)) b!1892081))

(declare-fun m!2323463 () Bool)

(assert (=> b!1892079 m!2323463))

(declare-fun m!2323465 () Bool)

(assert (=> b!1892081 m!2323465))

(assert (=> b!1892072 d!579597))

(declare-fun bm!116758 () Bool)

(declare-fun call!116763 () Int)

(assert (=> bm!116758 (= call!116763 (size!16799 lt!724304))))

(declare-fun b!1892109 () Bool)

(declare-fun e!1207817 () List!21271)

(declare-fun e!1207816 () List!21271)

(assert (=> b!1892109 (= e!1207817 e!1207816)))

(declare-fun c!308693 () Bool)

(assert (=> b!1892109 (= c!308693 (<= from!837 0))))

(declare-fun b!1892110 () Bool)

(declare-fun e!1207818 () Bool)

(declare-fun lt!724309 () List!21271)

(declare-fun e!1207819 () Int)

(assert (=> b!1892110 (= e!1207818 (= (size!16799 lt!724309) e!1207819))))

(declare-fun c!308692 () Bool)

(assert (=> b!1892110 (= c!308692 (<= from!837 0))))

(declare-fun b!1892111 () Bool)

(assert (=> b!1892111 (= e!1207816 lt!724304)))

(declare-fun b!1892112 () Bool)

(assert (=> b!1892112 (= e!1207819 call!116763)))

(declare-fun d!579601 () Bool)

(assert (=> d!579601 e!1207818))

(declare-fun res!844665 () Bool)

(assert (=> d!579601 (=> (not res!844665) (not e!1207818))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3125 (List!21271) (InoxSet Token!7064))

(assert (=> d!579601 (= res!844665 (= ((_ map implies) (content!3125 lt!724309) (content!3125 lt!724304)) ((as const (InoxSet Token!7064)) true)))))

(assert (=> d!579601 (= lt!724309 e!1207817)))

(declare-fun c!308691 () Bool)

(assert (=> d!579601 (= c!308691 ((_ is Nil!21189) lt!724304))))

(assert (=> d!579601 (= (drop!1051 lt!724304 from!837) lt!724309)))

(declare-fun b!1892113 () Bool)

(declare-fun e!1207815 () Int)

(assert (=> b!1892113 (= e!1207815 (- call!116763 from!837))))

(declare-fun b!1892114 () Bool)

(assert (=> b!1892114 (= e!1207817 Nil!21189)))

(declare-fun b!1892115 () Bool)

(assert (=> b!1892115 (= e!1207816 (drop!1051 (t!175760 lt!724304) (- from!837 1)))))

(declare-fun b!1892116 () Bool)

(assert (=> b!1892116 (= e!1207819 e!1207815)))

(declare-fun c!308694 () Bool)

(assert (=> b!1892116 (= c!308694 (>= from!837 call!116763))))

(declare-fun b!1892117 () Bool)

(assert (=> b!1892117 (= e!1207815 0)))

(assert (= (and d!579601 c!308691) b!1892114))

(assert (= (and d!579601 (not c!308691)) b!1892109))

(assert (= (and b!1892109 c!308693) b!1892111))

(assert (= (and b!1892109 (not c!308693)) b!1892115))

(assert (= (and d!579601 res!844665) b!1892110))

(assert (= (and b!1892110 c!308692) b!1892112))

(assert (= (and b!1892110 (not c!308692)) b!1892116))

(assert (= (and b!1892116 c!308694) b!1892117))

(assert (= (and b!1892116 (not c!308694)) b!1892113))

(assert (= (or b!1892112 b!1892116 b!1892113) bm!116758))

(assert (=> bm!116758 m!2323459))

(declare-fun m!2323473 () Bool)

(assert (=> b!1892110 m!2323473))

(declare-fun m!2323475 () Bool)

(assert (=> d!579601 m!2323475))

(declare-fun m!2323477 () Bool)

(assert (=> d!579601 m!2323477))

(declare-fun m!2323479 () Bool)

(assert (=> b!1892115 m!2323479))

(assert (=> b!1892071 d!579601))

(declare-fun d!579607 () Bool)

(declare-fun lt!724315 () Token!7064)

(declare-fun contains!3825 (List!21271 Token!7064) Bool)

(assert (=> d!579607 (contains!3825 lt!724304 lt!724315)))

(declare-fun e!1207825 () Token!7064)

(assert (=> d!579607 (= lt!724315 e!1207825)))

(declare-fun c!308697 () Bool)

(assert (=> d!579607 (= c!308697 (= from!837 0))))

(declare-fun e!1207824 () Bool)

(assert (=> d!579607 e!1207824))

(declare-fun res!844668 () Bool)

(assert (=> d!579607 (=> (not res!844668) (not e!1207824))))

(assert (=> d!579607 (= res!844668 (<= 0 from!837))))

(assert (=> d!579607 (= (apply!5573 lt!724304 from!837) lt!724315)))

(declare-fun b!1892124 () Bool)

(assert (=> b!1892124 (= e!1207824 (< from!837 (size!16799 lt!724304)))))

(declare-fun b!1892125 () Bool)

(assert (=> b!1892125 (= e!1207825 (head!4398 lt!724304))))

(declare-fun b!1892126 () Bool)

(declare-fun tail!2924 (List!21271) List!21271)

(assert (=> b!1892126 (= e!1207825 (apply!5573 (tail!2924 lt!724304) (- from!837 1)))))

(assert (= (and d!579607 res!844668) b!1892124))

(assert (= (and d!579607 c!308697) b!1892125))

(assert (= (and d!579607 (not c!308697)) b!1892126))

(declare-fun m!2323485 () Bool)

(assert (=> d!579607 m!2323485))

(assert (=> b!1892124 m!2323459))

(declare-fun m!2323487 () Bool)

(assert (=> b!1892125 m!2323487))

(declare-fun m!2323489 () Bool)

(assert (=> b!1892126 m!2323489))

(assert (=> b!1892126 m!2323489))

(declare-fun m!2323491 () Bool)

(assert (=> b!1892126 m!2323491))

(assert (=> b!1892071 d!579607))

(declare-fun d!579611 () Bool)

(declare-fun list!8602 (Conc!7051) List!21271)

(assert (=> d!579611 (= (list!8601 v!6342) (list!8602 (c!308676 v!6342)))))

(declare-fun bs!413177 () Bool)

(assert (= bs!413177 d!579611))

(declare-fun m!2323493 () Bool)

(assert (=> bs!413177 m!2323493))

(assert (=> b!1892071 d!579611))

(declare-fun d!579613 () Bool)

(assert (=> d!579613 (= (head!4398 (drop!1051 lt!724304 from!837)) (apply!5573 lt!724304 from!837))))

(declare-fun lt!724321 () Unit!35564)

(declare-fun choose!11822 (List!21271 Int) Unit!35564)

(assert (=> d!579613 (= lt!724321 (choose!11822 lt!724304 from!837))))

(declare-fun e!1207831 () Bool)

(assert (=> d!579613 e!1207831))

(declare-fun res!844671 () Bool)

(assert (=> d!579613 (=> (not res!844671) (not e!1207831))))

(assert (=> d!579613 (= res!844671 (>= from!837 0))))

(assert (=> d!579613 (= (lemmaDropApply!684 lt!724304 from!837) lt!724321)))

(declare-fun b!1892135 () Bool)

(assert (=> b!1892135 (= e!1207831 (< from!837 (size!16799 lt!724304)))))

(assert (= (and d!579613 res!844671) b!1892135))

(assert (=> d!579613 m!2323451))

(assert (=> d!579613 m!2323451))

(assert (=> d!579613 m!2323457))

(assert (=> d!579613 m!2323449))

(declare-fun m!2323497 () Bool)

(assert (=> d!579613 m!2323497))

(assert (=> b!1892135 m!2323459))

(assert (=> b!1892071 d!579613))

(declare-fun d!579617 () Bool)

(assert (=> d!579617 (= (head!4398 (drop!1051 lt!724304 from!837)) (h!26590 (drop!1051 lt!724304 from!837)))))

(assert (=> b!1892071 d!579617))

(declare-fun d!579621 () Bool)

(declare-fun lt!724324 () Int)

(assert (=> d!579621 (>= lt!724324 0)))

(declare-fun e!1207834 () Int)

(assert (=> d!579621 (= lt!724324 e!1207834)))

(declare-fun c!308703 () Bool)

(assert (=> d!579621 (= c!308703 ((_ is Nil!21189) lt!724304))))

(assert (=> d!579621 (= (size!16799 lt!724304) lt!724324)))

(declare-fun b!1892140 () Bool)

(assert (=> b!1892140 (= e!1207834 0)))

(declare-fun b!1892141 () Bool)

(assert (=> b!1892141 (= e!1207834 (+ 1 (size!16799 (t!175760 lt!724304))))))

(assert (= (and d!579621 c!308703) b!1892140))

(assert (= (and d!579621 (not c!308703)) b!1892141))

(declare-fun m!2323501 () Bool)

(assert (=> b!1892141 m!2323501))

(assert (=> b!1892071 d!579621))

(declare-fun d!579623 () Bool)

(declare-fun lt!724327 () Int)

(assert (=> d!579623 (= lt!724327 (size!16799 (list!8601 v!6342)))))

(declare-fun size!16800 (Conc!7051) Int)

(assert (=> d!579623 (= lt!724327 (size!16800 (c!308676 v!6342)))))

(assert (=> d!579623 (= (size!16798 v!6342) lt!724327)))

(declare-fun bs!413179 () Bool)

(assert (= bs!413179 d!579623))

(assert (=> bs!413179 m!2323455))

(assert (=> bs!413179 m!2323455))

(declare-fun m!2323503 () Bool)

(assert (=> bs!413179 m!2323503))

(declare-fun m!2323505 () Bool)

(assert (=> bs!413179 m!2323505))

(assert (=> b!1892070 d!579623))

(declare-fun d!579625 () Bool)

(declare-fun isBalanced!2218 (Conc!7051) Bool)

(assert (=> d!579625 (= (inv!28265 v!6342) (isBalanced!2218 (c!308676 v!6342)))))

(declare-fun bs!413180 () Bool)

(assert (= bs!413180 d!579625))

(declare-fun m!2323507 () Bool)

(assert (=> bs!413180 m!2323507))

(assert (=> start!189488 d!579625))

(declare-fun b!1892159 () Bool)

(declare-fun tp!539759 () Bool)

(declare-fun e!1207845 () Bool)

(declare-fun tp!539757 () Bool)

(assert (=> b!1892159 (= e!1207845 (and (inv!28266 (left!17007 (c!308676 v!6342))) tp!539759 (inv!28266 (right!17337 (c!308676 v!6342))) tp!539757))))

(declare-fun b!1892161 () Bool)

(declare-fun e!1207846 () Bool)

(declare-fun tp!539758 () Bool)

(assert (=> b!1892161 (= e!1207846 tp!539758)))

(declare-fun b!1892160 () Bool)

(declare-fun inv!28269 (IArray!14107) Bool)

(assert (=> b!1892160 (= e!1207845 (and (inv!28269 (xs!9941 (c!308676 v!6342))) e!1207846))))

(assert (=> b!1892072 (= tp!539750 (and (inv!28266 (c!308676 v!6342)) e!1207845))))

(assert (= (and b!1892072 ((_ is Node!7051) (c!308676 v!6342))) b!1892159))

(assert (= b!1892160 b!1892161))

(assert (= (and b!1892072 ((_ is Leaf!10392) (c!308676 v!6342))) b!1892160))

(declare-fun m!2323513 () Bool)

(assert (=> b!1892159 m!2323513))

(declare-fun m!2323517 () Bool)

(assert (=> b!1892159 m!2323517))

(declare-fun m!2323519 () Bool)

(assert (=> b!1892160 m!2323519))

(assert (=> b!1892072 m!2323461))

(check-sat (not bm!116758) (not d!579613) (not b!1892141) (not d!579611) (not b!1892159) (not b!1892160) (not b!1892079) (not b!1892135) (not b!1892072) (not b!1892126) (not d!579623) (not d!579601) (not b!1892110) (not d!579625) (not d!579607) (not b!1892124) (not b!1892115) (not b!1892161) (not b!1892125) (not b!1892081))
(check-sat)
