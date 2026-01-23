; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!189284 () Bool)

(assert start!189284)

(declare-fun res!844174 () Bool)

(declare-fun e!1206860 () Bool)

(assert (=> start!189284 (=> (not res!844174) (not e!1206860))))

(declare-datatypes ((LexerInterface!3365 0))(
  ( (LexerInterfaceExt!3362 (__x!13274 Int)) (Lexer!3363) )
))
(declare-fun thiss!13601 () LexerInterface!3365)

(declare-fun from!837 () Int)

(get-info :version)

(assert (=> start!189284 (= res!844174 (and ((_ is Lexer!3363) thiss!13601) (>= from!837 0)))))

(assert (=> start!189284 e!1206860))

(assert (=> start!189284 true))

(declare-datatypes ((List!21257 0))(
  ( (Nil!21175) (Cons!21175 (h!26576 (_ BitVec 16)) (t!175424 List!21257)) )
))
(declare-datatypes ((TokenValue!3888 0))(
  ( (FloatLiteralValue!7776 (text!27661 List!21257)) (TokenValueExt!3887 (__x!13275 Int)) (Broken!19440 (value!118497 List!21257)) (Object!3969) (End!3888) (Def!3888) (Underscore!3888) (Match!3888) (Else!3888) (Error!3888) (Case!3888) (If!3888) (Extends!3888) (Abstract!3888) (Class!3888) (Val!3888) (DelimiterValue!7776 (del!3948 List!21257)) (KeywordValue!3894 (value!118498 List!21257)) (CommentValue!7776 (value!118499 List!21257)) (WhitespaceValue!7776 (value!118500 List!21257)) (IndentationValue!3888 (value!118501 List!21257)) (String!24557) (Int32!3888) (Broken!19441 (value!118502 List!21257)) (Boolean!3889) (Unit!35557) (OperatorValue!3891 (op!3948 List!21257)) (IdentifierValue!7776 (value!118503 List!21257)) (IdentifierValue!7777 (value!118504 List!21257)) (WhitespaceValue!7777 (value!118505 List!21257)) (True!7776) (False!7776) (Broken!19442 (value!118506 List!21257)) (Broken!19443 (value!118507 List!21257)) (True!7777) (RightBrace!3888) (RightBracket!3888) (Colon!3888) (Null!3888) (Comma!3888) (LeftBracket!3888) (False!7777) (LeftBrace!3888) (ImaginaryLiteralValue!3888 (text!27662 List!21257)) (StringLiteralValue!11664 (value!118508 List!21257)) (EOFValue!3888 (value!118509 List!21257)) (IdentValue!3888 (value!118510 List!21257)) (DelimiterValue!7777 (value!118511 List!21257)) (DedentValue!3888 (value!118512 List!21257)) (NewLineValue!3888 (value!118513 List!21257)) (IntegerValue!11664 (value!118514 (_ BitVec 32)) (text!27663 List!21257)) (IntegerValue!11665 (value!118515 Int) (text!27664 List!21257)) (Times!3888) (Or!3888) (Equal!3888) (Minus!3888) (Broken!19444 (value!118516 List!21257)) (And!3888) (Div!3888) (LessEqual!3888) (Mod!3888) (Concat!9065) (Not!3888) (Plus!3888) (SpaceValue!3888 (value!118517 List!21257)) (IntegerValue!11666 (value!118518 Int) (text!27665 List!21257)) (StringLiteralValue!11665 (text!27666 List!21257)) (FloatLiteralValue!7777 (text!27667 List!21257)) (BytesLiteralValue!3888 (value!118519 List!21257)) (CommentValue!7777 (value!118520 List!21257)) (StringLiteralValue!11666 (value!118521 List!21257)) (ErrorTokenValue!3888 (msg!3949 List!21257)) )
))
(declare-datatypes ((C!10500 0))(
  ( (C!10501 (val!6202 Int)) )
))
(declare-datatypes ((List!21258 0))(
  ( (Nil!21176) (Cons!21176 (h!26577 C!10500) (t!175425 List!21258)) )
))
(declare-datatypes ((IArray!14089 0))(
  ( (IArray!14090 (innerList!7102 List!21258)) )
))
(declare-datatypes ((Conc!7042 0))(
  ( (Node!7042 (left!16992 Conc!7042) (right!17322 Conc!7042) (csize!14314 Int) (cheight!7253 Int)) (Leaf!10381 (xs!9932 IArray!14089) (csize!14315 Int)) (Empty!7042) )
))
(declare-datatypes ((BalanceConc!13900 0))(
  ( (BalanceConc!13901 (c!308316 Conc!7042)) )
))
(declare-datatypes ((Regex!5177 0))(
  ( (ElementMatch!5177 (c!308317 C!10500)) (Concat!9066 (regOne!10866 Regex!5177) (regTwo!10866 Regex!5177)) (EmptyExpr!5177) (Star!5177 (reg!5506 Regex!5177)) (EmptyLang!5177) (Union!5177 (regOne!10867 Regex!5177) (regTwo!10867 Regex!5177)) )
))
(declare-datatypes ((String!24558 0))(
  ( (String!24559 (value!118522 String)) )
))
(declare-datatypes ((TokenValueInjection!7360 0))(
  ( (TokenValueInjection!7361 (toValue!5357 Int) (toChars!5216 Int)) )
))
(declare-datatypes ((Rule!7304 0))(
  ( (Rule!7305 (regex!3752 Regex!5177) (tag!4166 String!24558) (isSeparator!3752 Bool) (transformation!3752 TokenValueInjection!7360)) )
))
(declare-datatypes ((Token!7056 0))(
  ( (Token!7057 (value!118523 TokenValue!3888) (rule!5945 Rule!7304) (size!16776 Int) (originalCharacters!4559 List!21258)) )
))
(declare-datatypes ((List!21259 0))(
  ( (Nil!21177) (Cons!21177 (h!26578 Token!7056) (t!175426 List!21259)) )
))
(declare-datatypes ((IArray!14091 0))(
  ( (IArray!14092 (innerList!7103 List!21259)) )
))
(declare-datatypes ((Conc!7043 0))(
  ( (Node!7043 (left!16993 Conc!7043) (right!17323 Conc!7043) (csize!14316 Int) (cheight!7254 Int)) (Leaf!10382 (xs!9933 IArray!14091) (csize!14317 Int)) (Empty!7043) )
))
(declare-datatypes ((BalanceConc!13902 0))(
  ( (BalanceConc!13903 (c!308318 Conc!7043)) )
))
(declare-fun v!6342 () BalanceConc!13902)

(declare-fun e!1206859 () Bool)

(declare-fun inv!28226 (BalanceConc!13902) Bool)

(assert (=> start!189284 (and (inv!28226 v!6342) e!1206859)))

(declare-fun b!1890474 () Bool)

(declare-fun e!1206858 () Bool)

(assert (=> b!1890474 (= e!1206860 e!1206858)))

(declare-fun res!844175 () Bool)

(assert (=> b!1890474 (=> (not res!844175) (not e!1206858))))

(declare-fun lt!724112 () Int)

(assert (=> b!1890474 (= res!844175 (and (<= from!837 lt!724112) (>= from!837 lt!724112)))))

(declare-fun size!16777 (BalanceConc!13902) Int)

(assert (=> b!1890474 (= lt!724112 (size!16777 v!6342))))

(declare-fun b!1890475 () Bool)

(declare-fun list!8585 (BalanceConc!13900) List!21258)

(declare-fun printList!1016 (LexerInterface!3365 List!21259) List!21258)

(declare-fun dropList!762 (BalanceConc!13902 Int) List!21259)

(assert (=> b!1890475 (= e!1206858 (not (= (list!8585 (BalanceConc!13901 Empty!7042)) (printList!1016 thiss!13601 (dropList!762 v!6342 from!837)))))))

(declare-fun b!1890476 () Bool)

(declare-fun tp!539302 () Bool)

(declare-fun inv!28227 (Conc!7043) Bool)

(assert (=> b!1890476 (= e!1206859 (and (inv!28227 (c!308318 v!6342)) tp!539302))))

(assert (= (and start!189284 res!844174) b!1890474))

(assert (= (and b!1890474 res!844175) b!1890475))

(assert (= start!189284 b!1890476))

(declare-fun m!2321271 () Bool)

(assert (=> start!189284 m!2321271))

(declare-fun m!2321273 () Bool)

(assert (=> b!1890474 m!2321273))

(declare-fun m!2321275 () Bool)

(assert (=> b!1890475 m!2321275))

(declare-fun m!2321277 () Bool)

(assert (=> b!1890475 m!2321277))

(assert (=> b!1890475 m!2321277))

(declare-fun m!2321279 () Bool)

(assert (=> b!1890475 m!2321279))

(declare-fun m!2321281 () Bool)

(assert (=> b!1890476 m!2321281))

(check-sat (not b!1890476) (not start!189284) (not b!1890475) (not b!1890474))
(check-sat)
(get-model)

(declare-fun d!578767 () Bool)

(declare-fun c!308324 () Bool)

(assert (=> d!578767 (= c!308324 ((_ is Node!7043) (c!308318 v!6342)))))

(declare-fun e!1206868 () Bool)

(assert (=> d!578767 (= (inv!28227 (c!308318 v!6342)) e!1206868)))

(declare-fun b!1890489 () Bool)

(declare-fun inv!28231 (Conc!7043) Bool)

(assert (=> b!1890489 (= e!1206868 (inv!28231 (c!308318 v!6342)))))

(declare-fun b!1890490 () Bool)

(declare-fun e!1206869 () Bool)

(assert (=> b!1890490 (= e!1206868 e!1206869)))

(declare-fun res!844178 () Bool)

(assert (=> b!1890490 (= res!844178 (not ((_ is Leaf!10382) (c!308318 v!6342))))))

(assert (=> b!1890490 (=> res!844178 e!1206869)))

(declare-fun b!1890491 () Bool)

(declare-fun inv!28232 (Conc!7043) Bool)

(assert (=> b!1890491 (= e!1206869 (inv!28232 (c!308318 v!6342)))))

(assert (= (and d!578767 c!308324) b!1890489))

(assert (= (and d!578767 (not c!308324)) b!1890490))

(assert (= (and b!1890490 (not res!844178)) b!1890491))

(declare-fun m!2321293 () Bool)

(assert (=> b!1890489 m!2321293))

(declare-fun m!2321295 () Bool)

(assert (=> b!1890491 m!2321295))

(assert (=> b!1890476 d!578767))

(declare-fun d!578775 () Bool)

(declare-fun isBalanced!2213 (Conc!7043) Bool)

(assert (=> d!578775 (= (inv!28226 v!6342) (isBalanced!2213 (c!308318 v!6342)))))

(declare-fun bs!413085 () Bool)

(assert (= bs!413085 d!578775))

(declare-fun m!2321301 () Bool)

(assert (=> bs!413085 m!2321301))

(assert (=> start!189284 d!578775))

(declare-fun d!578779 () Bool)

(declare-fun list!8589 (Conc!7042) List!21258)

(assert (=> d!578779 (= (list!8585 (BalanceConc!13901 Empty!7042)) (list!8589 (c!308316 (BalanceConc!13901 Empty!7042))))))

(declare-fun bs!413087 () Bool)

(assert (= bs!413087 d!578779))

(declare-fun m!2321309 () Bool)

(assert (=> bs!413087 m!2321309))

(assert (=> b!1890475 d!578779))

(declare-fun d!578783 () Bool)

(declare-fun c!308330 () Bool)

(assert (=> d!578783 (= c!308330 ((_ is Cons!21177) (dropList!762 v!6342 from!837)))))

(declare-fun e!1206882 () List!21258)

(assert (=> d!578783 (= (printList!1016 thiss!13601 (dropList!762 v!6342 from!837)) e!1206882)))

(declare-fun b!1890513 () Bool)

(declare-fun ++!5711 (List!21258 List!21258) List!21258)

(declare-fun charsOf!2312 (Token!7056) BalanceConc!13900)

(assert (=> b!1890513 (= e!1206882 (++!5711 (list!8585 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837)))) (printList!1016 thiss!13601 (t!175426 (dropList!762 v!6342 from!837)))))))

(declare-fun b!1890514 () Bool)

(assert (=> b!1890514 (= e!1206882 Nil!21176)))

(assert (= (and d!578783 c!308330) b!1890513))

(assert (= (and d!578783 (not c!308330)) b!1890514))

(declare-fun m!2321317 () Bool)

(assert (=> b!1890513 m!2321317))

(assert (=> b!1890513 m!2321317))

(declare-fun m!2321319 () Bool)

(assert (=> b!1890513 m!2321319))

(declare-fun m!2321321 () Bool)

(assert (=> b!1890513 m!2321321))

(assert (=> b!1890513 m!2321319))

(assert (=> b!1890513 m!2321321))

(declare-fun m!2321323 () Bool)

(assert (=> b!1890513 m!2321323))

(assert (=> b!1890475 d!578783))

(declare-fun d!578787 () Bool)

(declare-fun drop!1049 (List!21259 Int) List!21259)

(declare-fun list!8590 (Conc!7043) List!21259)

(assert (=> d!578787 (= (dropList!762 v!6342 from!837) (drop!1049 (list!8590 (c!308318 v!6342)) from!837))))

(declare-fun bs!413089 () Bool)

(assert (= bs!413089 d!578787))

(declare-fun m!2321331 () Bool)

(assert (=> bs!413089 m!2321331))

(assert (=> bs!413089 m!2321331))

(declare-fun m!2321333 () Bool)

(assert (=> bs!413089 m!2321333))

(assert (=> b!1890475 d!578787))

(declare-fun d!578789 () Bool)

(declare-fun lt!724118 () Int)

(declare-fun size!16780 (List!21259) Int)

(declare-fun list!8591 (BalanceConc!13902) List!21259)

(assert (=> d!578789 (= lt!724118 (size!16780 (list!8591 v!6342)))))

(declare-fun size!16781 (Conc!7043) Int)

(assert (=> d!578789 (= lt!724118 (size!16781 (c!308318 v!6342)))))

(assert (=> d!578789 (= (size!16777 v!6342) lt!724118)))

(declare-fun bs!413090 () Bool)

(assert (= bs!413090 d!578789))

(declare-fun m!2321335 () Bool)

(assert (=> bs!413090 m!2321335))

(assert (=> bs!413090 m!2321335))

(declare-fun m!2321337 () Bool)

(assert (=> bs!413090 m!2321337))

(declare-fun m!2321339 () Bool)

(assert (=> bs!413090 m!2321339))

(assert (=> b!1890474 d!578789))

(declare-fun tp!539318 () Bool)

(declare-fun e!1206890 () Bool)

(declare-fun b!1890526 () Bool)

(declare-fun tp!539319 () Bool)

(assert (=> b!1890526 (= e!1206890 (and (inv!28227 (left!16993 (c!308318 v!6342))) tp!539318 (inv!28227 (right!17323 (c!308318 v!6342))) tp!539319))))

(declare-fun b!1890528 () Bool)

(declare-fun e!1206889 () Bool)

(declare-fun tp!539320 () Bool)

(assert (=> b!1890528 (= e!1206889 tp!539320)))

(declare-fun b!1890527 () Bool)

(declare-fun inv!28233 (IArray!14091) Bool)

(assert (=> b!1890527 (= e!1206890 (and (inv!28233 (xs!9933 (c!308318 v!6342))) e!1206889))))

(assert (=> b!1890476 (= tp!539302 (and (inv!28227 (c!308318 v!6342)) e!1206890))))

(assert (= (and b!1890476 ((_ is Node!7043) (c!308318 v!6342))) b!1890526))

(assert (= b!1890527 b!1890528))

(assert (= (and b!1890476 ((_ is Leaf!10382) (c!308318 v!6342))) b!1890527))

(declare-fun m!2321341 () Bool)

(assert (=> b!1890526 m!2321341))

(declare-fun m!2321343 () Bool)

(assert (=> b!1890526 m!2321343))

(declare-fun m!2321345 () Bool)

(assert (=> b!1890527 m!2321345))

(assert (=> b!1890476 m!2321281))

(check-sat (not d!578779) (not d!578787) (not b!1890491) (not b!1890513) (not b!1890527) (not d!578775) (not d!578789) (not b!1890526) (not b!1890489) (not b!1890476) (not b!1890528))
(check-sat)
(get-model)

(declare-fun d!578809 () Bool)

(declare-fun lt!724127 () Int)

(assert (=> d!578809 (>= lt!724127 0)))

(declare-fun e!1206912 () Int)

(assert (=> d!578809 (= lt!724127 e!1206912)))

(declare-fun c!308338 () Bool)

(assert (=> d!578809 (= c!308338 ((_ is Nil!21177) (list!8591 v!6342)))))

(assert (=> d!578809 (= (size!16780 (list!8591 v!6342)) lt!724127)))

(declare-fun b!1890578 () Bool)

(assert (=> b!1890578 (= e!1206912 0)))

(declare-fun b!1890579 () Bool)

(assert (=> b!1890579 (= e!1206912 (+ 1 (size!16780 (t!175426 (list!8591 v!6342)))))))

(assert (= (and d!578809 c!308338) b!1890578))

(assert (= (and d!578809 (not c!308338)) b!1890579))

(declare-fun m!2321383 () Bool)

(assert (=> b!1890579 m!2321383))

(assert (=> d!578789 d!578809))

(declare-fun d!578813 () Bool)

(assert (=> d!578813 (= (list!8591 v!6342) (list!8590 (c!308318 v!6342)))))

(declare-fun bs!413094 () Bool)

(assert (= bs!413094 d!578813))

(assert (=> bs!413094 m!2321331))

(assert (=> d!578789 d!578813))

(declare-fun d!578815 () Bool)

(declare-fun lt!724132 () Int)

(assert (=> d!578815 (= lt!724132 (size!16780 (list!8590 (c!308318 v!6342))))))

(assert (=> d!578815 (= lt!724132 (ite ((_ is Empty!7043) (c!308318 v!6342)) 0 (ite ((_ is Leaf!10382) (c!308318 v!6342)) (csize!14317 (c!308318 v!6342)) (csize!14316 (c!308318 v!6342)))))))

(assert (=> d!578815 (= (size!16781 (c!308318 v!6342)) lt!724132)))

(declare-fun bs!413095 () Bool)

(assert (= bs!413095 d!578815))

(assert (=> bs!413095 m!2321331))

(assert (=> bs!413095 m!2321331))

(declare-fun m!2321393 () Bool)

(assert (=> bs!413095 m!2321393))

(assert (=> d!578789 d!578815))

(declare-fun b!1890636 () Bool)

(declare-fun res!844237 () Bool)

(declare-fun e!1206940 () Bool)

(assert (=> b!1890636 (=> (not res!844237) (not e!1206940))))

(declare-fun height!1096 (Conc!7043) Int)

(assert (=> b!1890636 (= res!844237 (<= (- (height!1096 (left!16993 (c!308318 v!6342))) (height!1096 (right!17323 (c!308318 v!6342)))) 1))))

(declare-fun b!1890637 () Bool)

(declare-fun res!844240 () Bool)

(assert (=> b!1890637 (=> (not res!844240) (not e!1206940))))

(assert (=> b!1890637 (= res!844240 (isBalanced!2213 (right!17323 (c!308318 v!6342))))))

(declare-fun b!1890638 () Bool)

(declare-fun res!844238 () Bool)

(assert (=> b!1890638 (=> (not res!844238) (not e!1206940))))

(declare-fun isEmpty!13006 (Conc!7043) Bool)

(assert (=> b!1890638 (= res!844238 (not (isEmpty!13006 (left!16993 (c!308318 v!6342)))))))

(declare-fun d!578819 () Bool)

(declare-fun res!844242 () Bool)

(declare-fun e!1206941 () Bool)

(assert (=> d!578819 (=> res!844242 e!1206941)))

(assert (=> d!578819 (= res!844242 (not ((_ is Node!7043) (c!308318 v!6342))))))

(assert (=> d!578819 (= (isBalanced!2213 (c!308318 v!6342)) e!1206941)))

(declare-fun b!1890639 () Bool)

(declare-fun res!844241 () Bool)

(assert (=> b!1890639 (=> (not res!844241) (not e!1206940))))

(assert (=> b!1890639 (= res!844241 (isBalanced!2213 (left!16993 (c!308318 v!6342))))))

(declare-fun b!1890640 () Bool)

(assert (=> b!1890640 (= e!1206941 e!1206940)))

(declare-fun res!844239 () Bool)

(assert (=> b!1890640 (=> (not res!844239) (not e!1206940))))

(assert (=> b!1890640 (= res!844239 (<= (- 1) (- (height!1096 (left!16993 (c!308318 v!6342))) (height!1096 (right!17323 (c!308318 v!6342))))))))

(declare-fun b!1890641 () Bool)

(assert (=> b!1890641 (= e!1206940 (not (isEmpty!13006 (right!17323 (c!308318 v!6342)))))))

(assert (= (and d!578819 (not res!844242)) b!1890640))

(assert (= (and b!1890640 res!844239) b!1890636))

(assert (= (and b!1890636 res!844237) b!1890639))

(assert (= (and b!1890639 res!844241) b!1890637))

(assert (= (and b!1890637 res!844240) b!1890638))

(assert (= (and b!1890638 res!844238) b!1890641))

(declare-fun m!2321423 () Bool)

(assert (=> b!1890639 m!2321423))

(declare-fun m!2321425 () Bool)

(assert (=> b!1890641 m!2321425))

(declare-fun m!2321427 () Bool)

(assert (=> b!1890638 m!2321427))

(declare-fun m!2321431 () Bool)

(assert (=> b!1890636 m!2321431))

(declare-fun m!2321435 () Bool)

(assert (=> b!1890636 m!2321435))

(assert (=> b!1890640 m!2321431))

(assert (=> b!1890640 m!2321435))

(declare-fun m!2321441 () Bool)

(assert (=> b!1890637 m!2321441))

(assert (=> d!578775 d!578819))

(declare-fun bm!116751 () Bool)

(declare-fun call!116756 () Int)

(assert (=> bm!116751 (= call!116756 (size!16780 (list!8590 (c!308318 v!6342))))))

(declare-fun b!1890706 () Bool)

(declare-fun e!1206990 () Int)

(assert (=> b!1890706 (= e!1206990 0)))

(declare-fun b!1890707 () Bool)

(declare-fun e!1206991 () List!21259)

(assert (=> b!1890707 (= e!1206991 (list!8590 (c!308318 v!6342)))))

(declare-fun b!1890708 () Bool)

(declare-fun e!1206988 () List!21259)

(assert (=> b!1890708 (= e!1206988 Nil!21177)))

(declare-fun b!1890709 () Bool)

(declare-fun e!1206992 () Int)

(assert (=> b!1890709 (= e!1206992 e!1206990)))

(declare-fun c!308375 () Bool)

(assert (=> b!1890709 (= c!308375 (>= from!837 call!116756))))

(declare-fun b!1890710 () Bool)

(assert (=> b!1890710 (= e!1206991 (drop!1049 (t!175426 (list!8590 (c!308318 v!6342))) (- from!837 1)))))

(declare-fun b!1890711 () Bool)

(declare-fun e!1206989 () Bool)

(declare-fun lt!724142 () List!21259)

(assert (=> b!1890711 (= e!1206989 (= (size!16780 lt!724142) e!1206992))))

(declare-fun c!308377 () Bool)

(assert (=> b!1890711 (= c!308377 (<= from!837 0))))

(declare-fun b!1890712 () Bool)

(assert (=> b!1890712 (= e!1206992 call!116756)))

(declare-fun d!578831 () Bool)

(assert (=> d!578831 e!1206989))

(declare-fun res!844246 () Bool)

(assert (=> d!578831 (=> (not res!844246) (not e!1206989))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3123 (List!21259) (InoxSet Token!7056))

(assert (=> d!578831 (= res!844246 (= ((_ map implies) (content!3123 lt!724142) (content!3123 (list!8590 (c!308318 v!6342)))) ((as const (InoxSet Token!7056)) true)))))

(assert (=> d!578831 (= lt!724142 e!1206988)))

(declare-fun c!308378 () Bool)

(assert (=> d!578831 (= c!308378 ((_ is Nil!21177) (list!8590 (c!308318 v!6342))))))

(assert (=> d!578831 (= (drop!1049 (list!8590 (c!308318 v!6342)) from!837) lt!724142)))

(declare-fun b!1890713 () Bool)

(assert (=> b!1890713 (= e!1206990 (- call!116756 from!837))))

(declare-fun b!1890714 () Bool)

(assert (=> b!1890714 (= e!1206988 e!1206991)))

(declare-fun c!308376 () Bool)

(assert (=> b!1890714 (= c!308376 (<= from!837 0))))

(assert (= (and d!578831 c!308378) b!1890708))

(assert (= (and d!578831 (not c!308378)) b!1890714))

(assert (= (and b!1890714 c!308376) b!1890707))

(assert (= (and b!1890714 (not c!308376)) b!1890710))

(assert (= (and d!578831 res!844246) b!1890711))

(assert (= (and b!1890711 c!308377) b!1890712))

(assert (= (and b!1890711 (not c!308377)) b!1890709))

(assert (= (and b!1890709 c!308375) b!1890706))

(assert (= (and b!1890709 (not c!308375)) b!1890713))

(assert (= (or b!1890712 b!1890709 b!1890713) bm!116751))

(assert (=> bm!116751 m!2321331))

(assert (=> bm!116751 m!2321393))

(declare-fun m!2321473 () Bool)

(assert (=> b!1890710 m!2321473))

(declare-fun m!2321475 () Bool)

(assert (=> b!1890711 m!2321475))

(declare-fun m!2321477 () Bool)

(assert (=> d!578831 m!2321477))

(assert (=> d!578831 m!2321331))

(declare-fun m!2321479 () Bool)

(assert (=> d!578831 m!2321479))

(assert (=> d!578787 d!578831))

(declare-fun b!1890726 () Bool)

(declare-fun e!1206998 () List!21259)

(declare-fun ++!5713 (List!21259 List!21259) List!21259)

(assert (=> b!1890726 (= e!1206998 (++!5713 (list!8590 (left!16993 (c!308318 v!6342))) (list!8590 (right!17323 (c!308318 v!6342)))))))

(declare-fun d!578833 () Bool)

(declare-fun c!308383 () Bool)

(assert (=> d!578833 (= c!308383 ((_ is Empty!7043) (c!308318 v!6342)))))

(declare-fun e!1206997 () List!21259)

(assert (=> d!578833 (= (list!8590 (c!308318 v!6342)) e!1206997)))

(declare-fun b!1890723 () Bool)

(assert (=> b!1890723 (= e!1206997 Nil!21177)))

(declare-fun b!1890725 () Bool)

(declare-fun list!8594 (IArray!14091) List!21259)

(assert (=> b!1890725 (= e!1206998 (list!8594 (xs!9933 (c!308318 v!6342))))))

(declare-fun b!1890724 () Bool)

(assert (=> b!1890724 (= e!1206997 e!1206998)))

(declare-fun c!308384 () Bool)

(assert (=> b!1890724 (= c!308384 ((_ is Leaf!10382) (c!308318 v!6342)))))

(assert (= (and d!578833 c!308383) b!1890723))

(assert (= (and d!578833 (not c!308383)) b!1890724))

(assert (= (and b!1890724 c!308384) b!1890725))

(assert (= (and b!1890724 (not c!308384)) b!1890726))

(declare-fun m!2321481 () Bool)

(assert (=> b!1890726 m!2321481))

(declare-fun m!2321483 () Bool)

(assert (=> b!1890726 m!2321483))

(assert (=> b!1890726 m!2321481))

(assert (=> b!1890726 m!2321483))

(declare-fun m!2321485 () Bool)

(assert (=> b!1890726 m!2321485))

(declare-fun m!2321487 () Bool)

(assert (=> b!1890725 m!2321487))

(assert (=> d!578787 d!578833))

(declare-fun d!578835 () Bool)

(declare-fun res!844251 () Bool)

(declare-fun e!1207001 () Bool)

(assert (=> d!578835 (=> (not res!844251) (not e!1207001))))

(assert (=> d!578835 (= res!844251 (<= (size!16780 (list!8594 (xs!9933 (c!308318 v!6342)))) 512))))

(assert (=> d!578835 (= (inv!28232 (c!308318 v!6342)) e!1207001)))

(declare-fun b!1890731 () Bool)

(declare-fun res!844252 () Bool)

(assert (=> b!1890731 (=> (not res!844252) (not e!1207001))))

(assert (=> b!1890731 (= res!844252 (= (csize!14317 (c!308318 v!6342)) (size!16780 (list!8594 (xs!9933 (c!308318 v!6342))))))))

(declare-fun b!1890732 () Bool)

(assert (=> b!1890732 (= e!1207001 (and (> (csize!14317 (c!308318 v!6342)) 0) (<= (csize!14317 (c!308318 v!6342)) 512)))))

(assert (= (and d!578835 res!844251) b!1890731))

(assert (= (and b!1890731 res!844252) b!1890732))

(assert (=> d!578835 m!2321487))

(assert (=> d!578835 m!2321487))

(declare-fun m!2321489 () Bool)

(assert (=> d!578835 m!2321489))

(assert (=> b!1890731 m!2321487))

(assert (=> b!1890731 m!2321487))

(assert (=> b!1890731 m!2321489))

(assert (=> b!1890491 d!578835))

(assert (=> b!1890476 d!578767))

(declare-fun lt!724145 () List!21258)

(declare-fun e!1207006 () Bool)

(declare-fun b!1890744 () Bool)

(assert (=> b!1890744 (= e!1207006 (or (not (= (printList!1016 thiss!13601 (t!175426 (dropList!762 v!6342 from!837))) Nil!21176)) (= lt!724145 (list!8585 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837)))))))))

(declare-fun e!1207007 () List!21258)

(declare-fun b!1890742 () Bool)

(assert (=> b!1890742 (= e!1207007 (Cons!21176 (h!26577 (list!8585 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837))))) (++!5711 (t!175425 (list!8585 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837))))) (printList!1016 thiss!13601 (t!175426 (dropList!762 v!6342 from!837))))))))

(declare-fun b!1890743 () Bool)

(declare-fun res!844258 () Bool)

(assert (=> b!1890743 (=> (not res!844258) (not e!1207006))))

(declare-fun size!16783 (List!21258) Int)

(assert (=> b!1890743 (= res!844258 (= (size!16783 lt!724145) (+ (size!16783 (list!8585 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837))))) (size!16783 (printList!1016 thiss!13601 (t!175426 (dropList!762 v!6342 from!837)))))))))

(declare-fun d!578837 () Bool)

(assert (=> d!578837 e!1207006))

(declare-fun res!844257 () Bool)

(assert (=> d!578837 (=> (not res!844257) (not e!1207006))))

(declare-fun content!3124 (List!21258) (InoxSet C!10500))

(assert (=> d!578837 (= res!844257 (= (content!3124 lt!724145) ((_ map or) (content!3124 (list!8585 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837))))) (content!3124 (printList!1016 thiss!13601 (t!175426 (dropList!762 v!6342 from!837)))))))))

(assert (=> d!578837 (= lt!724145 e!1207007)))

(declare-fun c!308387 () Bool)

(assert (=> d!578837 (= c!308387 ((_ is Nil!21176) (list!8585 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837))))))))

(assert (=> d!578837 (= (++!5711 (list!8585 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837)))) (printList!1016 thiss!13601 (t!175426 (dropList!762 v!6342 from!837)))) lt!724145)))

(declare-fun b!1890741 () Bool)

(assert (=> b!1890741 (= e!1207007 (printList!1016 thiss!13601 (t!175426 (dropList!762 v!6342 from!837))))))

(assert (= (and d!578837 c!308387) b!1890741))

(assert (= (and d!578837 (not c!308387)) b!1890742))

(assert (= (and d!578837 res!844257) b!1890743))

(assert (= (and b!1890743 res!844258) b!1890744))

(assert (=> b!1890742 m!2321321))

(declare-fun m!2321491 () Bool)

(assert (=> b!1890742 m!2321491))

(declare-fun m!2321493 () Bool)

(assert (=> b!1890743 m!2321493))

(assert (=> b!1890743 m!2321319))

(declare-fun m!2321495 () Bool)

(assert (=> b!1890743 m!2321495))

(assert (=> b!1890743 m!2321321))

(declare-fun m!2321497 () Bool)

(assert (=> b!1890743 m!2321497))

(declare-fun m!2321499 () Bool)

(assert (=> d!578837 m!2321499))

(assert (=> d!578837 m!2321319))

(declare-fun m!2321501 () Bool)

(assert (=> d!578837 m!2321501))

(assert (=> d!578837 m!2321321))

(declare-fun m!2321503 () Bool)

(assert (=> d!578837 m!2321503))

(assert (=> b!1890513 d!578837))

(declare-fun d!578839 () Bool)

(assert (=> d!578839 (= (list!8585 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837)))) (list!8589 (c!308316 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837))))))))

(declare-fun bs!413098 () Bool)

(assert (= bs!413098 d!578839))

(declare-fun m!2321505 () Bool)

(assert (=> bs!413098 m!2321505))

(assert (=> b!1890513 d!578839))

(declare-fun d!578841 () Bool)

(declare-fun lt!724148 () BalanceConc!13900)

(assert (=> d!578841 (= (list!8585 lt!724148) (originalCharacters!4559 (h!26578 (dropList!762 v!6342 from!837))))))

(declare-fun dynLambda!10283 (Int TokenValue!3888) BalanceConc!13900)

(assert (=> d!578841 (= lt!724148 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837)))))))

(assert (=> d!578841 (= (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837))) lt!724148)))

(declare-fun b_lambda!61991 () Bool)

(assert (=> (not b_lambda!61991) (not d!578841)))

(declare-fun bs!413099 () Bool)

(assert (= bs!413099 d!578841))

(declare-fun m!2321507 () Bool)

(assert (=> bs!413099 m!2321507))

(declare-fun m!2321509 () Bool)

(assert (=> bs!413099 m!2321509))

(assert (=> b!1890513 d!578841))

(declare-fun d!578843 () Bool)

(declare-fun c!308388 () Bool)

(assert (=> d!578843 (= c!308388 ((_ is Cons!21177) (t!175426 (dropList!762 v!6342 from!837))))))

(declare-fun e!1207008 () List!21258)

(assert (=> d!578843 (= (printList!1016 thiss!13601 (t!175426 (dropList!762 v!6342 from!837))) e!1207008)))

(declare-fun b!1890745 () Bool)

(assert (=> b!1890745 (= e!1207008 (++!5711 (list!8585 (charsOf!2312 (h!26578 (t!175426 (dropList!762 v!6342 from!837))))) (printList!1016 thiss!13601 (t!175426 (t!175426 (dropList!762 v!6342 from!837))))))))

(declare-fun b!1890746 () Bool)

(assert (=> b!1890746 (= e!1207008 Nil!21176)))

(assert (= (and d!578843 c!308388) b!1890745))

(assert (= (and d!578843 (not c!308388)) b!1890746))

(declare-fun m!2321511 () Bool)

(assert (=> b!1890745 m!2321511))

(assert (=> b!1890745 m!2321511))

(declare-fun m!2321513 () Bool)

(assert (=> b!1890745 m!2321513))

(declare-fun m!2321515 () Bool)

(assert (=> b!1890745 m!2321515))

(assert (=> b!1890745 m!2321513))

(assert (=> b!1890745 m!2321515))

(declare-fun m!2321517 () Bool)

(assert (=> b!1890745 m!2321517))

(assert (=> b!1890513 d!578843))

(declare-fun b!1890757 () Bool)

(declare-fun e!1207014 () List!21258)

(declare-fun list!8595 (IArray!14089) List!21258)

(assert (=> b!1890757 (= e!1207014 (list!8595 (xs!9932 (c!308316 (BalanceConc!13901 Empty!7042)))))))

(declare-fun b!1890755 () Bool)

(declare-fun e!1207013 () List!21258)

(assert (=> b!1890755 (= e!1207013 Nil!21176)))

(declare-fun d!578845 () Bool)

(declare-fun c!308393 () Bool)

(assert (=> d!578845 (= c!308393 ((_ is Empty!7042) (c!308316 (BalanceConc!13901 Empty!7042))))))

(assert (=> d!578845 (= (list!8589 (c!308316 (BalanceConc!13901 Empty!7042))) e!1207013)))

(declare-fun b!1890758 () Bool)

(assert (=> b!1890758 (= e!1207014 (++!5711 (list!8589 (left!16992 (c!308316 (BalanceConc!13901 Empty!7042)))) (list!8589 (right!17322 (c!308316 (BalanceConc!13901 Empty!7042))))))))

(declare-fun b!1890756 () Bool)

(assert (=> b!1890756 (= e!1207013 e!1207014)))

(declare-fun c!308394 () Bool)

(assert (=> b!1890756 (= c!308394 ((_ is Leaf!10381) (c!308316 (BalanceConc!13901 Empty!7042))))))

(assert (= (and d!578845 c!308393) b!1890755))

(assert (= (and d!578845 (not c!308393)) b!1890756))

(assert (= (and b!1890756 c!308394) b!1890757))

(assert (= (and b!1890756 (not c!308394)) b!1890758))

(declare-fun m!2321519 () Bool)

(assert (=> b!1890757 m!2321519))

(declare-fun m!2321521 () Bool)

(assert (=> b!1890758 m!2321521))

(declare-fun m!2321523 () Bool)

(assert (=> b!1890758 m!2321523))

(assert (=> b!1890758 m!2321521))

(assert (=> b!1890758 m!2321523))

(declare-fun m!2321525 () Bool)

(assert (=> b!1890758 m!2321525))

(assert (=> d!578779 d!578845))

(declare-fun d!578847 () Bool)

(assert (=> d!578847 (= (inv!28233 (xs!9933 (c!308318 v!6342))) (<= (size!16780 (innerList!7103 (xs!9933 (c!308318 v!6342)))) 2147483647))))

(declare-fun bs!413100 () Bool)

(assert (= bs!413100 d!578847))

(declare-fun m!2321527 () Bool)

(assert (=> bs!413100 m!2321527))

(assert (=> b!1890527 d!578847))

(declare-fun d!578849 () Bool)

(declare-fun c!308395 () Bool)

(assert (=> d!578849 (= c!308395 ((_ is Node!7043) (left!16993 (c!308318 v!6342))))))

(declare-fun e!1207015 () Bool)

(assert (=> d!578849 (= (inv!28227 (left!16993 (c!308318 v!6342))) e!1207015)))

(declare-fun b!1890759 () Bool)

(assert (=> b!1890759 (= e!1207015 (inv!28231 (left!16993 (c!308318 v!6342))))))

(declare-fun b!1890760 () Bool)

(declare-fun e!1207016 () Bool)

(assert (=> b!1890760 (= e!1207015 e!1207016)))

(declare-fun res!844259 () Bool)

(assert (=> b!1890760 (= res!844259 (not ((_ is Leaf!10382) (left!16993 (c!308318 v!6342)))))))

(assert (=> b!1890760 (=> res!844259 e!1207016)))

(declare-fun b!1890761 () Bool)

(assert (=> b!1890761 (= e!1207016 (inv!28232 (left!16993 (c!308318 v!6342))))))

(assert (= (and d!578849 c!308395) b!1890759))

(assert (= (and d!578849 (not c!308395)) b!1890760))

(assert (= (and b!1890760 (not res!844259)) b!1890761))

(declare-fun m!2321529 () Bool)

(assert (=> b!1890759 m!2321529))

(declare-fun m!2321531 () Bool)

(assert (=> b!1890761 m!2321531))

(assert (=> b!1890526 d!578849))

(declare-fun d!578851 () Bool)

(declare-fun c!308396 () Bool)

(assert (=> d!578851 (= c!308396 ((_ is Node!7043) (right!17323 (c!308318 v!6342))))))

(declare-fun e!1207017 () Bool)

(assert (=> d!578851 (= (inv!28227 (right!17323 (c!308318 v!6342))) e!1207017)))

(declare-fun b!1890762 () Bool)

(assert (=> b!1890762 (= e!1207017 (inv!28231 (right!17323 (c!308318 v!6342))))))

(declare-fun b!1890763 () Bool)

(declare-fun e!1207018 () Bool)

(assert (=> b!1890763 (= e!1207017 e!1207018)))

(declare-fun res!844260 () Bool)

(assert (=> b!1890763 (= res!844260 (not ((_ is Leaf!10382) (right!17323 (c!308318 v!6342)))))))

(assert (=> b!1890763 (=> res!844260 e!1207018)))

(declare-fun b!1890764 () Bool)

(assert (=> b!1890764 (= e!1207018 (inv!28232 (right!17323 (c!308318 v!6342))))))

(assert (= (and d!578851 c!308396) b!1890762))

(assert (= (and d!578851 (not c!308396)) b!1890763))

(assert (= (and b!1890763 (not res!844260)) b!1890764))

(declare-fun m!2321533 () Bool)

(assert (=> b!1890762 m!2321533))

(declare-fun m!2321535 () Bool)

(assert (=> b!1890764 m!2321535))

(assert (=> b!1890526 d!578851))

(declare-fun d!578853 () Bool)

(declare-fun res!844267 () Bool)

(declare-fun e!1207021 () Bool)

(assert (=> d!578853 (=> (not res!844267) (not e!1207021))))

(assert (=> d!578853 (= res!844267 (= (csize!14316 (c!308318 v!6342)) (+ (size!16781 (left!16993 (c!308318 v!6342))) (size!16781 (right!17323 (c!308318 v!6342))))))))

(assert (=> d!578853 (= (inv!28231 (c!308318 v!6342)) e!1207021)))

(declare-fun b!1890771 () Bool)

(declare-fun res!844268 () Bool)

(assert (=> b!1890771 (=> (not res!844268) (not e!1207021))))

(assert (=> b!1890771 (= res!844268 (and (not (= (left!16993 (c!308318 v!6342)) Empty!7043)) (not (= (right!17323 (c!308318 v!6342)) Empty!7043))))))

(declare-fun b!1890772 () Bool)

(declare-fun res!844269 () Bool)

(assert (=> b!1890772 (=> (not res!844269) (not e!1207021))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1890772 (= res!844269 (= (cheight!7254 (c!308318 v!6342)) (+ (max!0 (height!1096 (left!16993 (c!308318 v!6342))) (height!1096 (right!17323 (c!308318 v!6342)))) 1)))))

(declare-fun b!1890773 () Bool)

(assert (=> b!1890773 (= e!1207021 (<= 0 (cheight!7254 (c!308318 v!6342))))))

(assert (= (and d!578853 res!844267) b!1890771))

(assert (= (and b!1890771 res!844268) b!1890772))

(assert (= (and b!1890772 res!844269) b!1890773))

(declare-fun m!2321537 () Bool)

(assert (=> d!578853 m!2321537))

(declare-fun m!2321539 () Bool)

(assert (=> d!578853 m!2321539))

(assert (=> b!1890772 m!2321431))

(assert (=> b!1890772 m!2321435))

(assert (=> b!1890772 m!2321431))

(assert (=> b!1890772 m!2321435))

(declare-fun m!2321541 () Bool)

(assert (=> b!1890772 m!2321541))

(assert (=> b!1890489 d!578853))

(declare-fun b!1890787 () Bool)

(declare-fun b_free!52633 () Bool)

(declare-fun b_next!53337 () Bool)

(assert (=> b!1890787 (= b_free!52633 (not b_next!53337))))

(declare-fun tp!539356 () Bool)

(declare-fun b_and!145495 () Bool)

(assert (=> b!1890787 (= tp!539356 b_and!145495)))

(declare-fun b_free!52635 () Bool)

(declare-fun b_next!53339 () Bool)

(assert (=> b!1890787 (= b_free!52635 (not b_next!53339))))

(declare-fun t!175438 () Bool)

(declare-fun tb!114823 () Bool)

(assert (=> (and b!1890787 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837)))))) t!175438) tb!114823))

(declare-fun b!1890792 () Bool)

(declare-fun tp!539362 () Bool)

(declare-fun e!1207042 () Bool)

(declare-fun inv!28238 (Conc!7042) Bool)

(assert (=> b!1890792 (= e!1207042 (and (inv!28238 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837)))))) tp!539362))))

(declare-fun result!138864 () Bool)

(declare-fun inv!28239 (BalanceConc!13900) Bool)

(assert (=> tb!114823 (= result!138864 (and (inv!28239 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837))))) e!1207042))))

(assert (= tb!114823 b!1890792))

(declare-fun m!2321543 () Bool)

(assert (=> b!1890792 m!2321543))

(declare-fun m!2321545 () Bool)

(assert (=> tb!114823 m!2321545))

(assert (=> d!578841 t!175438))

(declare-fun tp!539358 () Bool)

(declare-fun b_and!145497 () Bool)

(assert (=> b!1890787 (= tp!539358 (and (=> t!175438 result!138864) b_and!145497))))

(declare-fun e!1207034 () Bool)

(assert (=> b!1890787 (= e!1207034 (and tp!539356 tp!539358))))

(declare-fun e!1207036 () Bool)

(declare-fun b!1890784 () Bool)

(declare-fun tp!539357 () Bool)

(declare-fun e!1207039 () Bool)

(declare-fun inv!28240 (Token!7056) Bool)

(assert (=> b!1890784 (= e!1207036 (and (inv!28240 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))) e!1207039 tp!539357))))

(assert (=> b!1890528 (= tp!539320 e!1207036)))

(declare-fun e!1207037 () Bool)

(declare-fun tp!539359 () Bool)

(declare-fun b!1890785 () Bool)

(declare-fun inv!21 (TokenValue!3888) Bool)

(assert (=> b!1890785 (= e!1207039 (and (inv!21 (value!118523 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))) e!1207037 tp!539359))))

(declare-fun b!1890786 () Bool)

(declare-fun tp!539355 () Bool)

(declare-fun inv!28223 (String!24558) Bool)

(declare-fun inv!28241 (TokenValueInjection!7360) Bool)

(assert (=> b!1890786 (= e!1207037 (and tp!539355 (inv!28223 (tag!4166 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (inv!28241 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) e!1207034))))

(assert (= b!1890786 b!1890787))

(assert (= b!1890785 b!1890786))

(assert (= b!1890784 b!1890785))

(assert (= (and b!1890528 ((_ is Cons!21177) (innerList!7103 (xs!9933 (c!308318 v!6342))))) b!1890784))

(declare-fun m!2321547 () Bool)

(assert (=> b!1890784 m!2321547))

(declare-fun m!2321549 () Bool)

(assert (=> b!1890785 m!2321549))

(declare-fun m!2321551 () Bool)

(assert (=> b!1890786 m!2321551))

(declare-fun m!2321553 () Bool)

(assert (=> b!1890786 m!2321553))

(declare-fun tp!539363 () Bool)

(declare-fun tp!539364 () Bool)

(declare-fun e!1207044 () Bool)

(declare-fun b!1890793 () Bool)

(assert (=> b!1890793 (= e!1207044 (and (inv!28227 (left!16993 (left!16993 (c!308318 v!6342)))) tp!539363 (inv!28227 (right!17323 (left!16993 (c!308318 v!6342)))) tp!539364))))

(declare-fun b!1890795 () Bool)

(declare-fun e!1207043 () Bool)

(declare-fun tp!539365 () Bool)

(assert (=> b!1890795 (= e!1207043 tp!539365)))

(declare-fun b!1890794 () Bool)

(assert (=> b!1890794 (= e!1207044 (and (inv!28233 (xs!9933 (left!16993 (c!308318 v!6342)))) e!1207043))))

(assert (=> b!1890526 (= tp!539318 (and (inv!28227 (left!16993 (c!308318 v!6342))) e!1207044))))

(assert (= (and b!1890526 ((_ is Node!7043) (left!16993 (c!308318 v!6342)))) b!1890793))

(assert (= b!1890794 b!1890795))

(assert (= (and b!1890526 ((_ is Leaf!10382) (left!16993 (c!308318 v!6342)))) b!1890794))

(declare-fun m!2321555 () Bool)

(assert (=> b!1890793 m!2321555))

(declare-fun m!2321557 () Bool)

(assert (=> b!1890793 m!2321557))

(declare-fun m!2321559 () Bool)

(assert (=> b!1890794 m!2321559))

(assert (=> b!1890526 m!2321341))

(declare-fun tp!539366 () Bool)

(declare-fun tp!539367 () Bool)

(declare-fun b!1890796 () Bool)

(declare-fun e!1207046 () Bool)

(assert (=> b!1890796 (= e!1207046 (and (inv!28227 (left!16993 (right!17323 (c!308318 v!6342)))) tp!539366 (inv!28227 (right!17323 (right!17323 (c!308318 v!6342)))) tp!539367))))

(declare-fun b!1890798 () Bool)

(declare-fun e!1207045 () Bool)

(declare-fun tp!539368 () Bool)

(assert (=> b!1890798 (= e!1207045 tp!539368)))

(declare-fun b!1890797 () Bool)

(assert (=> b!1890797 (= e!1207046 (and (inv!28233 (xs!9933 (right!17323 (c!308318 v!6342)))) e!1207045))))

(assert (=> b!1890526 (= tp!539319 (and (inv!28227 (right!17323 (c!308318 v!6342))) e!1207046))))

(assert (= (and b!1890526 ((_ is Node!7043) (right!17323 (c!308318 v!6342)))) b!1890796))

(assert (= b!1890797 b!1890798))

(assert (= (and b!1890526 ((_ is Leaf!10382) (right!17323 (c!308318 v!6342)))) b!1890797))

(declare-fun m!2321561 () Bool)

(assert (=> b!1890796 m!2321561))

(declare-fun m!2321563 () Bool)

(assert (=> b!1890796 m!2321563))

(declare-fun m!2321565 () Bool)

(assert (=> b!1890797 m!2321565))

(assert (=> b!1890526 m!2321343))

(check-sat (not b!1890764) (not b!1890785) (not b!1890798) (not b!1890759) (not b!1890758) (not b!1890639) (not b!1890638) (not b!1890796) (not d!578847) (not d!578813) (not b!1890725) (not b!1890526) (not b!1890636) (not d!578839) (not b!1890640) (not b!1890641) b_and!145495 (not b!1890792) (not b!1890786) (not b_next!53337) (not d!578837) (not tb!114823) (not b!1890797) (not b!1890772) (not b!1890726) (not d!578831) (not b!1890742) (not d!578841) (not b!1890743) (not b!1890761) (not b!1890745) (not b!1890795) (not d!578815) (not b!1890762) (not b_next!53339) (not b_lambda!61991) b_and!145497 (not d!578835) (not b!1890731) (not b!1890711) (not b!1890794) (not b!1890793) (not bm!116751) (not b!1890757) (not b!1890637) (not b!1890710) (not b!1890784) (not b!1890579) (not d!578853))
(check-sat b_and!145495 b_and!145497 (not b_next!53337) (not b_next!53339))
(get-model)

(declare-fun b!1891003 () Bool)

(declare-fun res!844328 () Bool)

(declare-fun e!1207165 () Bool)

(assert (=> b!1891003 (=> (not res!844328) (not e!1207165))))

(assert (=> b!1891003 (= res!844328 (<= (- (height!1096 (left!16993 (right!17323 (c!308318 v!6342)))) (height!1096 (right!17323 (right!17323 (c!308318 v!6342))))) 1))))

(declare-fun b!1891004 () Bool)

(declare-fun res!844331 () Bool)

(assert (=> b!1891004 (=> (not res!844331) (not e!1207165))))

(assert (=> b!1891004 (= res!844331 (isBalanced!2213 (right!17323 (right!17323 (c!308318 v!6342)))))))

(declare-fun b!1891005 () Bool)

(declare-fun res!844329 () Bool)

(assert (=> b!1891005 (=> (not res!844329) (not e!1207165))))

(assert (=> b!1891005 (= res!844329 (not (isEmpty!13006 (left!16993 (right!17323 (c!308318 v!6342))))))))

(declare-fun d!578963 () Bool)

(declare-fun res!844333 () Bool)

(declare-fun e!1207166 () Bool)

(assert (=> d!578963 (=> res!844333 e!1207166)))

(assert (=> d!578963 (= res!844333 (not ((_ is Node!7043) (right!17323 (c!308318 v!6342)))))))

(assert (=> d!578963 (= (isBalanced!2213 (right!17323 (c!308318 v!6342))) e!1207166)))

(declare-fun b!1891006 () Bool)

(declare-fun res!844332 () Bool)

(assert (=> b!1891006 (=> (not res!844332) (not e!1207165))))

(assert (=> b!1891006 (= res!844332 (isBalanced!2213 (left!16993 (right!17323 (c!308318 v!6342)))))))

(declare-fun b!1891007 () Bool)

(assert (=> b!1891007 (= e!1207166 e!1207165)))

(declare-fun res!844330 () Bool)

(assert (=> b!1891007 (=> (not res!844330) (not e!1207165))))

(assert (=> b!1891007 (= res!844330 (<= (- 1) (- (height!1096 (left!16993 (right!17323 (c!308318 v!6342)))) (height!1096 (right!17323 (right!17323 (c!308318 v!6342)))))))))

(declare-fun b!1891008 () Bool)

(assert (=> b!1891008 (= e!1207165 (not (isEmpty!13006 (right!17323 (right!17323 (c!308318 v!6342))))))))

(assert (= (and d!578963 (not res!844333)) b!1891007))

(assert (= (and b!1891007 res!844330) b!1891003))

(assert (= (and b!1891003 res!844328) b!1891006))

(assert (= (and b!1891006 res!844332) b!1891004))

(assert (= (and b!1891004 res!844331) b!1891005))

(assert (= (and b!1891005 res!844329) b!1891008))

(declare-fun m!2321833 () Bool)

(assert (=> b!1891006 m!2321833))

(declare-fun m!2321835 () Bool)

(assert (=> b!1891008 m!2321835))

(declare-fun m!2321837 () Bool)

(assert (=> b!1891005 m!2321837))

(declare-fun m!2321839 () Bool)

(assert (=> b!1891003 m!2321839))

(declare-fun m!2321841 () Bool)

(assert (=> b!1891003 m!2321841))

(assert (=> b!1891007 m!2321839))

(assert (=> b!1891007 m!2321841))

(declare-fun m!2321843 () Bool)

(assert (=> b!1891004 m!2321843))

(assert (=> b!1890637 d!578963))

(declare-fun d!578965 () Bool)

(assert (=> d!578965 (= (height!1096 (left!16993 (c!308318 v!6342))) (ite ((_ is Empty!7043) (left!16993 (c!308318 v!6342))) 0 (ite ((_ is Leaf!10382) (left!16993 (c!308318 v!6342))) 1 (cheight!7254 (left!16993 (c!308318 v!6342))))))))

(assert (=> b!1890636 d!578965))

(declare-fun d!578967 () Bool)

(assert (=> d!578967 (= (height!1096 (right!17323 (c!308318 v!6342))) (ite ((_ is Empty!7043) (right!17323 (c!308318 v!6342))) 0 (ite ((_ is Leaf!10382) (right!17323 (c!308318 v!6342))) 1 (cheight!7254 (right!17323 (c!308318 v!6342))))))))

(assert (=> b!1890636 d!578967))

(declare-fun d!578969 () Bool)

(assert (not d!578969))

(assert (=> b!1890758 d!578969))

(declare-fun d!578971 () Bool)

(assert (not d!578971))

(assert (=> b!1890758 d!578971))

(declare-fun d!578973 () Bool)

(assert (not d!578973))

(assert (=> b!1890758 d!578973))

(declare-fun d!578975 () Bool)

(declare-fun res!844334 () Bool)

(declare-fun e!1207167 () Bool)

(assert (=> d!578975 (=> (not res!844334) (not e!1207167))))

(assert (=> d!578975 (= res!844334 (<= (size!16780 (list!8594 (xs!9933 (right!17323 (c!308318 v!6342))))) 512))))

(assert (=> d!578975 (= (inv!28232 (right!17323 (c!308318 v!6342))) e!1207167)))

(declare-fun b!1891009 () Bool)

(declare-fun res!844335 () Bool)

(assert (=> b!1891009 (=> (not res!844335) (not e!1207167))))

(assert (=> b!1891009 (= res!844335 (= (csize!14317 (right!17323 (c!308318 v!6342))) (size!16780 (list!8594 (xs!9933 (right!17323 (c!308318 v!6342)))))))))

(declare-fun b!1891010 () Bool)

(assert (=> b!1891010 (= e!1207167 (and (> (csize!14317 (right!17323 (c!308318 v!6342))) 0) (<= (csize!14317 (right!17323 (c!308318 v!6342))) 512)))))

(assert (= (and d!578975 res!844334) b!1891009))

(assert (= (and b!1891009 res!844335) b!1891010))

(declare-fun m!2321845 () Bool)

(assert (=> d!578975 m!2321845))

(assert (=> d!578975 m!2321845))

(declare-fun m!2321847 () Bool)

(assert (=> d!578975 m!2321847))

(assert (=> b!1891009 m!2321845))

(assert (=> b!1891009 m!2321845))

(assert (=> b!1891009 m!2321847))

(assert (=> b!1890764 d!578975))

(declare-fun d!578977 () Bool)

(declare-fun lt!724172 () Int)

(assert (=> d!578977 (>= lt!724172 0)))

(declare-fun e!1207168 () Int)

(assert (=> d!578977 (= lt!724172 e!1207168)))

(declare-fun c!308445 () Bool)

(assert (=> d!578977 (= c!308445 ((_ is Nil!21177) lt!724142))))

(assert (=> d!578977 (= (size!16780 lt!724142) lt!724172)))

(declare-fun b!1891011 () Bool)

(assert (=> b!1891011 (= e!1207168 0)))

(declare-fun b!1891012 () Bool)

(assert (=> b!1891012 (= e!1207168 (+ 1 (size!16780 (t!175426 lt!724142))))))

(assert (= (and d!578977 c!308445) b!1891011))

(assert (= (and d!578977 (not c!308445)) b!1891012))

(declare-fun m!2321849 () Bool)

(assert (=> b!1891012 m!2321849))

(assert (=> b!1890711 d!578977))

(declare-fun b!1891015 () Bool)

(declare-fun e!1207170 () List!21258)

(assert (=> b!1891015 (= e!1207170 (list!8595 (xs!9932 (c!308316 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837)))))))))

(declare-fun b!1891013 () Bool)

(declare-fun e!1207169 () List!21258)

(assert (=> b!1891013 (= e!1207169 Nil!21176)))

(declare-fun d!578979 () Bool)

(declare-fun c!308446 () Bool)

(assert (=> d!578979 (= c!308446 ((_ is Empty!7042) (c!308316 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837))))))))

(assert (=> d!578979 (= (list!8589 (c!308316 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837))))) e!1207169)))

(declare-fun b!1891016 () Bool)

(assert (=> b!1891016 (= e!1207170 (++!5711 (list!8589 (left!16992 (c!308316 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837)))))) (list!8589 (right!17322 (c!308316 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837))))))))))

(declare-fun b!1891014 () Bool)

(assert (=> b!1891014 (= e!1207169 e!1207170)))

(declare-fun c!308447 () Bool)

(assert (=> b!1891014 (= c!308447 ((_ is Leaf!10381) (c!308316 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837))))))))

(assert (= (and d!578979 c!308446) b!1891013))

(assert (= (and d!578979 (not c!308446)) b!1891014))

(assert (= (and b!1891014 c!308447) b!1891015))

(assert (= (and b!1891014 (not c!308447)) b!1891016))

(declare-fun m!2321851 () Bool)

(assert (=> b!1891015 m!2321851))

(declare-fun m!2321853 () Bool)

(assert (=> b!1891016 m!2321853))

(declare-fun m!2321855 () Bool)

(assert (=> b!1891016 m!2321855))

(assert (=> b!1891016 m!2321853))

(assert (=> b!1891016 m!2321855))

(declare-fun m!2321857 () Bool)

(assert (=> b!1891016 m!2321857))

(assert (=> d!578839 d!578979))

(declare-fun d!578981 () Bool)

(declare-fun c!308452 () Bool)

(assert (=> d!578981 (= c!308452 ((_ is IntegerValue!11664) (value!118523 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))))

(declare-fun e!1207177 () Bool)

(assert (=> d!578981 (= (inv!21 (value!118523 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))) e!1207177)))

(declare-fun b!1891027 () Bool)

(declare-fun inv!16 (TokenValue!3888) Bool)

(assert (=> b!1891027 (= e!1207177 (inv!16 (value!118523 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))))

(declare-fun b!1891028 () Bool)

(declare-fun e!1207178 () Bool)

(declare-fun inv!15 (TokenValue!3888) Bool)

(assert (=> b!1891028 (= e!1207178 (inv!15 (value!118523 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))))

(declare-fun b!1891029 () Bool)

(declare-fun res!844338 () Bool)

(assert (=> b!1891029 (=> res!844338 e!1207178)))

(assert (=> b!1891029 (= res!844338 (not ((_ is IntegerValue!11666) (value!118523 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))))

(declare-fun e!1207179 () Bool)

(assert (=> b!1891029 (= e!1207179 e!1207178)))

(declare-fun b!1891030 () Bool)

(declare-fun inv!17 (TokenValue!3888) Bool)

(assert (=> b!1891030 (= e!1207179 (inv!17 (value!118523 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))))

(declare-fun b!1891031 () Bool)

(assert (=> b!1891031 (= e!1207177 e!1207179)))

(declare-fun c!308453 () Bool)

(assert (=> b!1891031 (= c!308453 ((_ is IntegerValue!11665) (value!118523 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))))

(assert (= (and d!578981 c!308452) b!1891027))

(assert (= (and d!578981 (not c!308452)) b!1891031))

(assert (= (and b!1891031 c!308453) b!1891030))

(assert (= (and b!1891031 (not c!308453)) b!1891029))

(assert (= (and b!1891029 (not res!844338)) b!1891028))

(declare-fun m!2321859 () Bool)

(assert (=> b!1891027 m!2321859))

(declare-fun m!2321861 () Bool)

(assert (=> b!1891028 m!2321861))

(declare-fun m!2321863 () Bool)

(assert (=> b!1891030 m!2321863))

(assert (=> b!1890785 d!578981))

(declare-fun d!578983 () Bool)

(assert (=> d!578983 (= (inv!28223 (tag!4166 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (= (mod (str.len (value!118522 (tag!4166 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) 2) 0))))

(assert (=> b!1890786 d!578983))

(declare-fun d!578985 () Bool)

(declare-fun res!844341 () Bool)

(declare-fun e!1207182 () Bool)

(assert (=> d!578985 (=> (not res!844341) (not e!1207182))))

(declare-fun semiInverseModEq!1523 (Int Int) Bool)

(assert (=> d!578985 (= res!844341 (semiInverseModEq!1523 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (toValue!5357 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))))))

(assert (=> d!578985 (= (inv!28241 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) e!1207182)))

(declare-fun b!1891034 () Bool)

(declare-fun equivClasses!1450 (Int Int) Bool)

(assert (=> b!1891034 (= e!1207182 (equivClasses!1450 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (toValue!5357 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))))))

(assert (= (and d!578985 res!844341) b!1891034))

(declare-fun m!2321865 () Bool)

(assert (=> d!578985 m!2321865))

(declare-fun m!2321867 () Bool)

(assert (=> b!1891034 m!2321867))

(assert (=> b!1890786 d!578985))

(declare-fun d!578987 () Bool)

(assert (not d!578987))

(assert (=> b!1890757 d!578987))

(declare-fun d!578989 () Bool)

(declare-fun lt!724173 () Int)

(assert (=> d!578989 (>= lt!724173 0)))

(declare-fun e!1207183 () Int)

(assert (=> d!578989 (= lt!724173 e!1207183)))

(declare-fun c!308454 () Bool)

(assert (=> d!578989 (= c!308454 ((_ is Nil!21177) (list!8590 (c!308318 v!6342))))))

(assert (=> d!578989 (= (size!16780 (list!8590 (c!308318 v!6342))) lt!724173)))

(declare-fun b!1891035 () Bool)

(assert (=> b!1891035 (= e!1207183 0)))

(declare-fun b!1891036 () Bool)

(assert (=> b!1891036 (= e!1207183 (+ 1 (size!16780 (t!175426 (list!8590 (c!308318 v!6342))))))))

(assert (= (and d!578989 c!308454) b!1891035))

(assert (= (and d!578989 (not c!308454)) b!1891036))

(declare-fun m!2321869 () Bool)

(assert (=> b!1891036 m!2321869))

(assert (=> d!578815 d!578989))

(assert (=> d!578815 d!578833))

(declare-fun d!578991 () Bool)

(declare-fun lt!724176 () Int)

(assert (=> d!578991 (>= lt!724176 0)))

(declare-fun e!1207186 () Int)

(assert (=> d!578991 (= lt!724176 e!1207186)))

(declare-fun c!308457 () Bool)

(assert (=> d!578991 (= c!308457 ((_ is Nil!21176) lt!724145))))

(assert (=> d!578991 (= (size!16783 lt!724145) lt!724176)))

(declare-fun b!1891041 () Bool)

(assert (=> b!1891041 (= e!1207186 0)))

(declare-fun b!1891042 () Bool)

(assert (=> b!1891042 (= e!1207186 (+ 1 (size!16783 (t!175425 lt!724145))))))

(assert (= (and d!578991 c!308457) b!1891041))

(assert (= (and d!578991 (not c!308457)) b!1891042))

(declare-fun m!2321871 () Bool)

(assert (=> b!1891042 m!2321871))

(assert (=> b!1890743 d!578991))

(declare-fun d!578993 () Bool)

(declare-fun lt!724177 () Int)

(assert (=> d!578993 (>= lt!724177 0)))

(declare-fun e!1207187 () Int)

(assert (=> d!578993 (= lt!724177 e!1207187)))

(declare-fun c!308458 () Bool)

(assert (=> d!578993 (= c!308458 ((_ is Nil!21176) (list!8585 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837))))))))

(assert (=> d!578993 (= (size!16783 (list!8585 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837))))) lt!724177)))

(declare-fun b!1891043 () Bool)

(assert (=> b!1891043 (= e!1207187 0)))

(declare-fun b!1891044 () Bool)

(assert (=> b!1891044 (= e!1207187 (+ 1 (size!16783 (t!175425 (list!8585 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837))))))))))

(assert (= (and d!578993 c!308458) b!1891043))

(assert (= (and d!578993 (not c!308458)) b!1891044))

(declare-fun m!2321873 () Bool)

(assert (=> b!1891044 m!2321873))

(assert (=> b!1890743 d!578993))

(declare-fun d!578995 () Bool)

(declare-fun lt!724178 () Int)

(assert (=> d!578995 (>= lt!724178 0)))

(declare-fun e!1207188 () Int)

(assert (=> d!578995 (= lt!724178 e!1207188)))

(declare-fun c!308459 () Bool)

(assert (=> d!578995 (= c!308459 ((_ is Nil!21176) (printList!1016 thiss!13601 (t!175426 (dropList!762 v!6342 from!837)))))))

(assert (=> d!578995 (= (size!16783 (printList!1016 thiss!13601 (t!175426 (dropList!762 v!6342 from!837)))) lt!724178)))

(declare-fun b!1891045 () Bool)

(assert (=> b!1891045 (= e!1207188 0)))

(declare-fun b!1891046 () Bool)

(assert (=> b!1891046 (= e!1207188 (+ 1 (size!16783 (t!175425 (printList!1016 thiss!13601 (t!175426 (dropList!762 v!6342 from!837)))))))))

(assert (= (and d!578995 c!308459) b!1891045))

(assert (= (and d!578995 (not c!308459)) b!1891046))

(declare-fun m!2321875 () Bool)

(assert (=> b!1891046 m!2321875))

(assert (=> b!1890743 d!578995))

(declare-fun d!578997 () Bool)

(assert (=> d!578997 (= (inv!28233 (xs!9933 (right!17323 (c!308318 v!6342)))) (<= (size!16780 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))) 2147483647))))

(declare-fun bs!413110 () Bool)

(assert (= bs!413110 d!578997))

(declare-fun m!2321877 () Bool)

(assert (=> bs!413110 m!2321877))

(assert (=> b!1890797 d!578997))

(declare-fun d!578999 () Bool)

(assert (=> d!578999 (= (list!8585 lt!724148) (list!8589 (c!308316 lt!724148)))))

(declare-fun bs!413111 () Bool)

(assert (= bs!413111 d!578999))

(declare-fun m!2321879 () Bool)

(assert (=> bs!413111 m!2321879))

(assert (=> d!578841 d!578999))

(declare-fun d!579001 () Bool)

(declare-fun lt!724179 () Int)

(assert (=> d!579001 (>= lt!724179 0)))

(declare-fun e!1207189 () Int)

(assert (=> d!579001 (= lt!724179 e!1207189)))

(declare-fun c!308460 () Bool)

(assert (=> d!579001 (= c!308460 ((_ is Nil!21177) (list!8594 (xs!9933 (c!308318 v!6342)))))))

(assert (=> d!579001 (= (size!16780 (list!8594 (xs!9933 (c!308318 v!6342)))) lt!724179)))

(declare-fun b!1891047 () Bool)

(assert (=> b!1891047 (= e!1207189 0)))

(declare-fun b!1891048 () Bool)

(assert (=> b!1891048 (= e!1207189 (+ 1 (size!16780 (t!175426 (list!8594 (xs!9933 (c!308318 v!6342)))))))))

(assert (= (and d!579001 c!308460) b!1891047))

(assert (= (and d!579001 (not c!308460)) b!1891048))

(declare-fun m!2321881 () Bool)

(assert (=> b!1891048 m!2321881))

(assert (=> b!1890731 d!579001))

(declare-fun d!579003 () Bool)

(assert (=> d!579003 (= (list!8594 (xs!9933 (c!308318 v!6342))) (innerList!7103 (xs!9933 (c!308318 v!6342))))))

(assert (=> b!1890731 d!579003))

(declare-fun b!1891049 () Bool)

(declare-fun res!844342 () Bool)

(declare-fun e!1207190 () Bool)

(assert (=> b!1891049 (=> (not res!844342) (not e!1207190))))

(assert (=> b!1891049 (= res!844342 (<= (- (height!1096 (left!16993 (left!16993 (c!308318 v!6342)))) (height!1096 (right!17323 (left!16993 (c!308318 v!6342))))) 1))))

(declare-fun b!1891050 () Bool)

(declare-fun res!844345 () Bool)

(assert (=> b!1891050 (=> (not res!844345) (not e!1207190))))

(assert (=> b!1891050 (= res!844345 (isBalanced!2213 (right!17323 (left!16993 (c!308318 v!6342)))))))

(declare-fun b!1891051 () Bool)

(declare-fun res!844343 () Bool)

(assert (=> b!1891051 (=> (not res!844343) (not e!1207190))))

(assert (=> b!1891051 (= res!844343 (not (isEmpty!13006 (left!16993 (left!16993 (c!308318 v!6342))))))))

(declare-fun d!579005 () Bool)

(declare-fun res!844347 () Bool)

(declare-fun e!1207191 () Bool)

(assert (=> d!579005 (=> res!844347 e!1207191)))

(assert (=> d!579005 (= res!844347 (not ((_ is Node!7043) (left!16993 (c!308318 v!6342)))))))

(assert (=> d!579005 (= (isBalanced!2213 (left!16993 (c!308318 v!6342))) e!1207191)))

(declare-fun b!1891052 () Bool)

(declare-fun res!844346 () Bool)

(assert (=> b!1891052 (=> (not res!844346) (not e!1207190))))

(assert (=> b!1891052 (= res!844346 (isBalanced!2213 (left!16993 (left!16993 (c!308318 v!6342)))))))

(declare-fun b!1891053 () Bool)

(assert (=> b!1891053 (= e!1207191 e!1207190)))

(declare-fun res!844344 () Bool)

(assert (=> b!1891053 (=> (not res!844344) (not e!1207190))))

(assert (=> b!1891053 (= res!844344 (<= (- 1) (- (height!1096 (left!16993 (left!16993 (c!308318 v!6342)))) (height!1096 (right!17323 (left!16993 (c!308318 v!6342)))))))))

(declare-fun b!1891054 () Bool)

(assert (=> b!1891054 (= e!1207190 (not (isEmpty!13006 (right!17323 (left!16993 (c!308318 v!6342))))))))

(assert (= (and d!579005 (not res!844347)) b!1891053))

(assert (= (and b!1891053 res!844344) b!1891049))

(assert (= (and b!1891049 res!844342) b!1891052))

(assert (= (and b!1891052 res!844346) b!1891050))

(assert (= (and b!1891050 res!844345) b!1891051))

(assert (= (and b!1891051 res!844343) b!1891054))

(declare-fun m!2321883 () Bool)

(assert (=> b!1891052 m!2321883))

(declare-fun m!2321885 () Bool)

(assert (=> b!1891054 m!2321885))

(declare-fun m!2321887 () Bool)

(assert (=> b!1891051 m!2321887))

(declare-fun m!2321889 () Bool)

(assert (=> b!1891049 m!2321889))

(declare-fun m!2321891 () Bool)

(assert (=> b!1891049 m!2321891))

(assert (=> b!1891053 m!2321889))

(assert (=> b!1891053 m!2321891))

(declare-fun m!2321893 () Bool)

(assert (=> b!1891050 m!2321893))

(assert (=> b!1890639 d!579005))

(declare-fun d!579007 () Bool)

(declare-fun lt!724182 () Bool)

(declare-fun isEmpty!13009 (List!21259) Bool)

(assert (=> d!579007 (= lt!724182 (isEmpty!13009 (list!8590 (left!16993 (c!308318 v!6342)))))))

(assert (=> d!579007 (= lt!724182 (= (size!16781 (left!16993 (c!308318 v!6342))) 0))))

(assert (=> d!579007 (= (isEmpty!13006 (left!16993 (c!308318 v!6342))) lt!724182)))

(declare-fun bs!413112 () Bool)

(assert (= bs!413112 d!579007))

(assert (=> bs!413112 m!2321481))

(assert (=> bs!413112 m!2321481))

(declare-fun m!2321895 () Bool)

(assert (=> bs!413112 m!2321895))

(assert (=> bs!413112 m!2321537))

(assert (=> b!1890638 d!579007))

(declare-fun d!579009 () Bool)

(declare-fun c!308461 () Bool)

(assert (=> d!579009 (= c!308461 ((_ is Node!7043) (left!16993 (right!17323 (c!308318 v!6342)))))))

(declare-fun e!1207192 () Bool)

(assert (=> d!579009 (= (inv!28227 (left!16993 (right!17323 (c!308318 v!6342)))) e!1207192)))

(declare-fun b!1891055 () Bool)

(assert (=> b!1891055 (= e!1207192 (inv!28231 (left!16993 (right!17323 (c!308318 v!6342)))))))

(declare-fun b!1891056 () Bool)

(declare-fun e!1207193 () Bool)

(assert (=> b!1891056 (= e!1207192 e!1207193)))

(declare-fun res!844348 () Bool)

(assert (=> b!1891056 (= res!844348 (not ((_ is Leaf!10382) (left!16993 (right!17323 (c!308318 v!6342))))))))

(assert (=> b!1891056 (=> res!844348 e!1207193)))

(declare-fun b!1891057 () Bool)

(assert (=> b!1891057 (= e!1207193 (inv!28232 (left!16993 (right!17323 (c!308318 v!6342)))))))

(assert (= (and d!579009 c!308461) b!1891055))

(assert (= (and d!579009 (not c!308461)) b!1891056))

(assert (= (and b!1891056 (not res!844348)) b!1891057))

(declare-fun m!2321897 () Bool)

(assert (=> b!1891055 m!2321897))

(declare-fun m!2321899 () Bool)

(assert (=> b!1891057 m!2321899))

(assert (=> b!1890796 d!579009))

(declare-fun d!579011 () Bool)

(declare-fun c!308462 () Bool)

(assert (=> d!579011 (= c!308462 ((_ is Node!7043) (right!17323 (right!17323 (c!308318 v!6342)))))))

(declare-fun e!1207194 () Bool)

(assert (=> d!579011 (= (inv!28227 (right!17323 (right!17323 (c!308318 v!6342)))) e!1207194)))

(declare-fun b!1891058 () Bool)

(assert (=> b!1891058 (= e!1207194 (inv!28231 (right!17323 (right!17323 (c!308318 v!6342)))))))

(declare-fun b!1891059 () Bool)

(declare-fun e!1207195 () Bool)

(assert (=> b!1891059 (= e!1207194 e!1207195)))

(declare-fun res!844349 () Bool)

(assert (=> b!1891059 (= res!844349 (not ((_ is Leaf!10382) (right!17323 (right!17323 (c!308318 v!6342))))))))

(assert (=> b!1891059 (=> res!844349 e!1207195)))

(declare-fun b!1891060 () Bool)

(assert (=> b!1891060 (= e!1207195 (inv!28232 (right!17323 (right!17323 (c!308318 v!6342)))))))

(assert (= (and d!579011 c!308462) b!1891058))

(assert (= (and d!579011 (not c!308462)) b!1891059))

(assert (= (and b!1891059 (not res!844349)) b!1891060))

(declare-fun m!2321901 () Bool)

(assert (=> b!1891058 m!2321901))

(declare-fun m!2321903 () Bool)

(assert (=> b!1891060 m!2321903))

(assert (=> b!1890796 d!579011))

(declare-fun lt!724183 () List!21258)

(declare-fun b!1891064 () Bool)

(declare-fun e!1207196 () Bool)

(assert (=> b!1891064 (= e!1207196 (or (not (= (printList!1016 thiss!13601 (t!175426 (t!175426 (dropList!762 v!6342 from!837)))) Nil!21176)) (= lt!724183 (list!8585 (charsOf!2312 (h!26578 (t!175426 (dropList!762 v!6342 from!837))))))))))

(declare-fun e!1207197 () List!21258)

(declare-fun b!1891062 () Bool)

(assert (=> b!1891062 (= e!1207197 (Cons!21176 (h!26577 (list!8585 (charsOf!2312 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))) (++!5711 (t!175425 (list!8585 (charsOf!2312 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))) (printList!1016 thiss!13601 (t!175426 (t!175426 (dropList!762 v!6342 from!837)))))))))

(declare-fun b!1891063 () Bool)

(declare-fun res!844351 () Bool)

(assert (=> b!1891063 (=> (not res!844351) (not e!1207196))))

(assert (=> b!1891063 (= res!844351 (= (size!16783 lt!724183) (+ (size!16783 (list!8585 (charsOf!2312 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))) (size!16783 (printList!1016 thiss!13601 (t!175426 (t!175426 (dropList!762 v!6342 from!837))))))))))

(declare-fun d!579013 () Bool)

(assert (=> d!579013 e!1207196))

(declare-fun res!844350 () Bool)

(assert (=> d!579013 (=> (not res!844350) (not e!1207196))))

(assert (=> d!579013 (= res!844350 (= (content!3124 lt!724183) ((_ map or) (content!3124 (list!8585 (charsOf!2312 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))) (content!3124 (printList!1016 thiss!13601 (t!175426 (t!175426 (dropList!762 v!6342 from!837))))))))))

(assert (=> d!579013 (= lt!724183 e!1207197)))

(declare-fun c!308463 () Bool)

(assert (=> d!579013 (= c!308463 ((_ is Nil!21176) (list!8585 (charsOf!2312 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))))))

(assert (=> d!579013 (= (++!5711 (list!8585 (charsOf!2312 (h!26578 (t!175426 (dropList!762 v!6342 from!837))))) (printList!1016 thiss!13601 (t!175426 (t!175426 (dropList!762 v!6342 from!837))))) lt!724183)))

(declare-fun b!1891061 () Bool)

(assert (=> b!1891061 (= e!1207197 (printList!1016 thiss!13601 (t!175426 (t!175426 (dropList!762 v!6342 from!837)))))))

(assert (= (and d!579013 c!308463) b!1891061))

(assert (= (and d!579013 (not c!308463)) b!1891062))

(assert (= (and d!579013 res!844350) b!1891063))

(assert (= (and b!1891063 res!844351) b!1891064))

(assert (=> b!1891062 m!2321515))

(declare-fun m!2321905 () Bool)

(assert (=> b!1891062 m!2321905))

(declare-fun m!2321907 () Bool)

(assert (=> b!1891063 m!2321907))

(assert (=> b!1891063 m!2321513))

(declare-fun m!2321909 () Bool)

(assert (=> b!1891063 m!2321909))

(assert (=> b!1891063 m!2321515))

(declare-fun m!2321911 () Bool)

(assert (=> b!1891063 m!2321911))

(declare-fun m!2321913 () Bool)

(assert (=> d!579013 m!2321913))

(assert (=> d!579013 m!2321513))

(declare-fun m!2321915 () Bool)

(assert (=> d!579013 m!2321915))

(assert (=> d!579013 m!2321515))

(declare-fun m!2321917 () Bool)

(assert (=> d!579013 m!2321917))

(assert (=> b!1890745 d!579013))

(declare-fun d!579015 () Bool)

(assert (=> d!579015 (= (list!8585 (charsOf!2312 (h!26578 (t!175426 (dropList!762 v!6342 from!837))))) (list!8589 (c!308316 (charsOf!2312 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))))))

(declare-fun bs!413113 () Bool)

(assert (= bs!413113 d!579015))

(declare-fun m!2321919 () Bool)

(assert (=> bs!413113 m!2321919))

(assert (=> b!1890745 d!579015))

(declare-fun d!579017 () Bool)

(declare-fun lt!724184 () BalanceConc!13900)

(assert (=> d!579017 (= (list!8585 lt!724184) (originalCharacters!4559 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))))

(assert (=> d!579017 (= lt!724184 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))) (value!118523 (h!26578 (t!175426 (dropList!762 v!6342 from!837))))))))

(assert (=> d!579017 (= (charsOf!2312 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))) lt!724184)))

(declare-fun b_lambda!62001 () Bool)

(assert (=> (not b_lambda!62001) (not d!579017)))

(declare-fun tb!114847 () Bool)

(declare-fun t!175466 () Bool)

(assert (=> (and b!1890787 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (dropList!762 v!6342 from!837))))))) t!175466) tb!114847))

(declare-fun e!1207198 () Bool)

(declare-fun b!1891065 () Bool)

(declare-fun tp!539425 () Bool)

(assert (=> b!1891065 (= e!1207198 (and (inv!28238 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))) (value!118523 (h!26578 (t!175426 (dropList!762 v!6342 from!837))))))) tp!539425))))

(declare-fun result!138896 () Bool)

(assert (=> tb!114847 (= result!138896 (and (inv!28239 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))) (value!118523 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))) e!1207198))))

(assert (= tb!114847 b!1891065))

(declare-fun m!2321921 () Bool)

(assert (=> b!1891065 m!2321921))

(declare-fun m!2321923 () Bool)

(assert (=> tb!114847 m!2321923))

(assert (=> d!579017 t!175466))

(declare-fun b_and!145515 () Bool)

(assert (= b_and!145497 (and (=> t!175466 result!138896) b_and!145515)))

(declare-fun m!2321925 () Bool)

(assert (=> d!579017 m!2321925))

(declare-fun m!2321927 () Bool)

(assert (=> d!579017 m!2321927))

(assert (=> b!1890745 d!579017))

(declare-fun d!579019 () Bool)

(declare-fun c!308464 () Bool)

(assert (=> d!579019 (= c!308464 ((_ is Cons!21177) (t!175426 (t!175426 (dropList!762 v!6342 from!837)))))))

(declare-fun e!1207199 () List!21258)

(assert (=> d!579019 (= (printList!1016 thiss!13601 (t!175426 (t!175426 (dropList!762 v!6342 from!837)))) e!1207199)))

(declare-fun b!1891066 () Bool)

(assert (=> b!1891066 (= e!1207199 (++!5711 (list!8585 (charsOf!2312 (h!26578 (t!175426 (t!175426 (dropList!762 v!6342 from!837)))))) (printList!1016 thiss!13601 (t!175426 (t!175426 (t!175426 (dropList!762 v!6342 from!837)))))))))

(declare-fun b!1891067 () Bool)

(assert (=> b!1891067 (= e!1207199 Nil!21176)))

(assert (= (and d!579019 c!308464) b!1891066))

(assert (= (and d!579019 (not c!308464)) b!1891067))

(declare-fun m!2321929 () Bool)

(assert (=> b!1891066 m!2321929))

(assert (=> b!1891066 m!2321929))

(declare-fun m!2321931 () Bool)

(assert (=> b!1891066 m!2321931))

(declare-fun m!2321933 () Bool)

(assert (=> b!1891066 m!2321933))

(assert (=> b!1891066 m!2321931))

(assert (=> b!1891066 m!2321933))

(declare-fun m!2321935 () Bool)

(assert (=> b!1891066 m!2321935))

(assert (=> b!1890745 d!579019))

(declare-fun e!1207200 () Bool)

(declare-fun lt!724185 () List!21258)

(declare-fun b!1891071 () Bool)

(assert (=> b!1891071 (= e!1207200 (or (not (= (printList!1016 thiss!13601 (t!175426 (dropList!762 v!6342 from!837))) Nil!21176)) (= lt!724185 (t!175425 (list!8585 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837))))))))))

(declare-fun b!1891069 () Bool)

(declare-fun e!1207201 () List!21258)

(assert (=> b!1891069 (= e!1207201 (Cons!21176 (h!26577 (t!175425 (list!8585 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837)))))) (++!5711 (t!175425 (t!175425 (list!8585 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837)))))) (printList!1016 thiss!13601 (t!175426 (dropList!762 v!6342 from!837))))))))

(declare-fun b!1891070 () Bool)

(declare-fun res!844353 () Bool)

(assert (=> b!1891070 (=> (not res!844353) (not e!1207200))))

(assert (=> b!1891070 (= res!844353 (= (size!16783 lt!724185) (+ (size!16783 (t!175425 (list!8585 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837)))))) (size!16783 (printList!1016 thiss!13601 (t!175426 (dropList!762 v!6342 from!837)))))))))

(declare-fun d!579021 () Bool)

(assert (=> d!579021 e!1207200))

(declare-fun res!844352 () Bool)

(assert (=> d!579021 (=> (not res!844352) (not e!1207200))))

(assert (=> d!579021 (= res!844352 (= (content!3124 lt!724185) ((_ map or) (content!3124 (t!175425 (list!8585 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837)))))) (content!3124 (printList!1016 thiss!13601 (t!175426 (dropList!762 v!6342 from!837)))))))))

(assert (=> d!579021 (= lt!724185 e!1207201)))

(declare-fun c!308465 () Bool)

(assert (=> d!579021 (= c!308465 ((_ is Nil!21176) (t!175425 (list!8585 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837)))))))))

(assert (=> d!579021 (= (++!5711 (t!175425 (list!8585 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837))))) (printList!1016 thiss!13601 (t!175426 (dropList!762 v!6342 from!837)))) lt!724185)))

(declare-fun b!1891068 () Bool)

(assert (=> b!1891068 (= e!1207201 (printList!1016 thiss!13601 (t!175426 (dropList!762 v!6342 from!837))))))

(assert (= (and d!579021 c!308465) b!1891068))

(assert (= (and d!579021 (not c!308465)) b!1891069))

(assert (= (and d!579021 res!844352) b!1891070))

(assert (= (and b!1891070 res!844353) b!1891071))

(assert (=> b!1891069 m!2321321))

(declare-fun m!2321937 () Bool)

(assert (=> b!1891069 m!2321937))

(declare-fun m!2321939 () Bool)

(assert (=> b!1891070 m!2321939))

(assert (=> b!1891070 m!2321873))

(assert (=> b!1891070 m!2321321))

(assert (=> b!1891070 m!2321497))

(declare-fun m!2321941 () Bool)

(assert (=> d!579021 m!2321941))

(declare-fun m!2321943 () Bool)

(assert (=> d!579021 m!2321943))

(assert (=> d!579021 m!2321321))

(assert (=> d!579021 m!2321503))

(assert (=> b!1890742 d!579021))

(assert (=> b!1890725 d!579003))

(declare-fun d!579023 () Bool)

(declare-fun isBalanced!2215 (Conc!7042) Bool)

(assert (=> d!579023 (= (inv!28239 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837))))) (isBalanced!2215 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837)))))))))

(declare-fun bs!413114 () Bool)

(assert (= bs!413114 d!579023))

(declare-fun m!2321945 () Bool)

(assert (=> bs!413114 m!2321945))

(assert (=> tb!114823 d!579023))

(declare-fun bm!116753 () Bool)

(declare-fun call!116758 () Int)

(assert (=> bm!116753 (= call!116758 (size!16780 (t!175426 (list!8590 (c!308318 v!6342)))))))

(declare-fun b!1891072 () Bool)

(declare-fun e!1207204 () Int)

(assert (=> b!1891072 (= e!1207204 0)))

(declare-fun b!1891073 () Bool)

(declare-fun e!1207205 () List!21259)

(assert (=> b!1891073 (= e!1207205 (t!175426 (list!8590 (c!308318 v!6342))))))

(declare-fun b!1891074 () Bool)

(declare-fun e!1207202 () List!21259)

(assert (=> b!1891074 (= e!1207202 Nil!21177)))

(declare-fun b!1891075 () Bool)

(declare-fun e!1207206 () Int)

(assert (=> b!1891075 (= e!1207206 e!1207204)))

(declare-fun c!308466 () Bool)

(assert (=> b!1891075 (= c!308466 (>= (- from!837 1) call!116758))))

(declare-fun b!1891076 () Bool)

(assert (=> b!1891076 (= e!1207205 (drop!1049 (t!175426 (t!175426 (list!8590 (c!308318 v!6342)))) (- (- from!837 1) 1)))))

(declare-fun b!1891077 () Bool)

(declare-fun e!1207203 () Bool)

(declare-fun lt!724186 () List!21259)

(assert (=> b!1891077 (= e!1207203 (= (size!16780 lt!724186) e!1207206))))

(declare-fun c!308468 () Bool)

(assert (=> b!1891077 (= c!308468 (<= (- from!837 1) 0))))

(declare-fun b!1891078 () Bool)

(assert (=> b!1891078 (= e!1207206 call!116758)))

(declare-fun d!579025 () Bool)

(assert (=> d!579025 e!1207203))

(declare-fun res!844354 () Bool)

(assert (=> d!579025 (=> (not res!844354) (not e!1207203))))

(assert (=> d!579025 (= res!844354 (= ((_ map implies) (content!3123 lt!724186) (content!3123 (t!175426 (list!8590 (c!308318 v!6342))))) ((as const (InoxSet Token!7056)) true)))))

(assert (=> d!579025 (= lt!724186 e!1207202)))

(declare-fun c!308469 () Bool)

(assert (=> d!579025 (= c!308469 ((_ is Nil!21177) (t!175426 (list!8590 (c!308318 v!6342)))))))

(assert (=> d!579025 (= (drop!1049 (t!175426 (list!8590 (c!308318 v!6342))) (- from!837 1)) lt!724186)))

(declare-fun b!1891079 () Bool)

(assert (=> b!1891079 (= e!1207204 (- call!116758 (- from!837 1)))))

(declare-fun b!1891080 () Bool)

(assert (=> b!1891080 (= e!1207202 e!1207205)))

(declare-fun c!308467 () Bool)

(assert (=> b!1891080 (= c!308467 (<= (- from!837 1) 0))))

(assert (= (and d!579025 c!308469) b!1891074))

(assert (= (and d!579025 (not c!308469)) b!1891080))

(assert (= (and b!1891080 c!308467) b!1891073))

(assert (= (and b!1891080 (not c!308467)) b!1891076))

(assert (= (and d!579025 res!844354) b!1891077))

(assert (= (and b!1891077 c!308468) b!1891078))

(assert (= (and b!1891077 (not c!308468)) b!1891075))

(assert (= (and b!1891075 c!308466) b!1891072))

(assert (= (and b!1891075 (not c!308466)) b!1891079))

(assert (= (or b!1891078 b!1891075 b!1891079) bm!116753))

(assert (=> bm!116753 m!2321869))

(declare-fun m!2321947 () Bool)

(assert (=> b!1891076 m!2321947))

(declare-fun m!2321949 () Bool)

(assert (=> b!1891077 m!2321949))

(declare-fun m!2321951 () Bool)

(assert (=> d!579025 m!2321951))

(declare-fun m!2321953 () Bool)

(assert (=> d!579025 m!2321953))

(assert (=> b!1890710 d!579025))

(declare-fun d!579027 () Bool)

(declare-fun res!844359 () Bool)

(declare-fun e!1207209 () Bool)

(assert (=> d!579027 (=> (not res!844359) (not e!1207209))))

(declare-fun isEmpty!13010 (List!21258) Bool)

(assert (=> d!579027 (= res!844359 (not (isEmpty!13010 (originalCharacters!4559 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))))

(assert (=> d!579027 (= (inv!28240 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))) e!1207209)))

(declare-fun b!1891085 () Bool)

(declare-fun res!844360 () Bool)

(assert (=> b!1891085 (=> (not res!844360) (not e!1207209))))

(assert (=> b!1891085 (= res!844360 (= (originalCharacters!4559 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))) (list!8585 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (value!118523 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))))))

(declare-fun b!1891086 () Bool)

(assert (=> b!1891086 (= e!1207209 (= (size!16776 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))) (size!16783 (originalCharacters!4559 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))))

(assert (= (and d!579027 res!844359) b!1891085))

(assert (= (and b!1891085 res!844360) b!1891086))

(declare-fun b_lambda!62003 () Bool)

(assert (=> (not b_lambda!62003) (not b!1891085)))

(declare-fun t!175468 () Bool)

(declare-fun tb!114849 () Bool)

(assert (=> (and b!1890787 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) t!175468) tb!114849))

(declare-fun b!1891087 () Bool)

(declare-fun e!1207210 () Bool)

(declare-fun tp!539426 () Bool)

(assert (=> b!1891087 (= e!1207210 (and (inv!28238 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (value!118523 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) tp!539426))))

(declare-fun result!138898 () Bool)

(assert (=> tb!114849 (= result!138898 (and (inv!28239 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (value!118523 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) e!1207210))))

(assert (= tb!114849 b!1891087))

(declare-fun m!2321955 () Bool)

(assert (=> b!1891087 m!2321955))

(declare-fun m!2321957 () Bool)

(assert (=> tb!114849 m!2321957))

(assert (=> b!1891085 t!175468))

(declare-fun b_and!145517 () Bool)

(assert (= b_and!145515 (and (=> t!175468 result!138898) b_and!145517)))

(declare-fun m!2321959 () Bool)

(assert (=> d!579027 m!2321959))

(declare-fun m!2321961 () Bool)

(assert (=> b!1891085 m!2321961))

(assert (=> b!1891085 m!2321961))

(declare-fun m!2321963 () Bool)

(assert (=> b!1891085 m!2321963))

(declare-fun m!2321965 () Bool)

(assert (=> b!1891086 m!2321965))

(assert (=> b!1890784 d!579027))

(declare-fun b!1891099 () Bool)

(declare-fun e!1207216 () Bool)

(declare-fun lt!724189 () List!21259)

(assert (=> b!1891099 (= e!1207216 (or (not (= (list!8590 (right!17323 (c!308318 v!6342))) Nil!21177)) (= lt!724189 (list!8590 (left!16993 (c!308318 v!6342))))))))

(declare-fun b!1891098 () Bool)

(declare-fun res!844366 () Bool)

(assert (=> b!1891098 (=> (not res!844366) (not e!1207216))))

(assert (=> b!1891098 (= res!844366 (= (size!16780 lt!724189) (+ (size!16780 (list!8590 (left!16993 (c!308318 v!6342)))) (size!16780 (list!8590 (right!17323 (c!308318 v!6342)))))))))

(declare-fun d!579029 () Bool)

(assert (=> d!579029 e!1207216))

(declare-fun res!844365 () Bool)

(assert (=> d!579029 (=> (not res!844365) (not e!1207216))))

(assert (=> d!579029 (= res!844365 (= (content!3123 lt!724189) ((_ map or) (content!3123 (list!8590 (left!16993 (c!308318 v!6342)))) (content!3123 (list!8590 (right!17323 (c!308318 v!6342)))))))))

(declare-fun e!1207215 () List!21259)

(assert (=> d!579029 (= lt!724189 e!1207215)))

(declare-fun c!308472 () Bool)

(assert (=> d!579029 (= c!308472 ((_ is Nil!21177) (list!8590 (left!16993 (c!308318 v!6342)))))))

(assert (=> d!579029 (= (++!5713 (list!8590 (left!16993 (c!308318 v!6342))) (list!8590 (right!17323 (c!308318 v!6342)))) lt!724189)))

(declare-fun b!1891096 () Bool)

(assert (=> b!1891096 (= e!1207215 (list!8590 (right!17323 (c!308318 v!6342))))))

(declare-fun b!1891097 () Bool)

(assert (=> b!1891097 (= e!1207215 (Cons!21177 (h!26578 (list!8590 (left!16993 (c!308318 v!6342)))) (++!5713 (t!175426 (list!8590 (left!16993 (c!308318 v!6342)))) (list!8590 (right!17323 (c!308318 v!6342))))))))

(assert (= (and d!579029 c!308472) b!1891096))

(assert (= (and d!579029 (not c!308472)) b!1891097))

(assert (= (and d!579029 res!844365) b!1891098))

(assert (= (and b!1891098 res!844366) b!1891099))

(declare-fun m!2321967 () Bool)

(assert (=> b!1891098 m!2321967))

(assert (=> b!1891098 m!2321481))

(declare-fun m!2321969 () Bool)

(assert (=> b!1891098 m!2321969))

(assert (=> b!1891098 m!2321483))

(declare-fun m!2321971 () Bool)

(assert (=> b!1891098 m!2321971))

(declare-fun m!2321973 () Bool)

(assert (=> d!579029 m!2321973))

(assert (=> d!579029 m!2321481))

(declare-fun m!2321975 () Bool)

(assert (=> d!579029 m!2321975))

(assert (=> d!579029 m!2321483))

(declare-fun m!2321977 () Bool)

(assert (=> d!579029 m!2321977))

(assert (=> b!1891097 m!2321483))

(declare-fun m!2321979 () Bool)

(assert (=> b!1891097 m!2321979))

(assert (=> b!1890726 d!579029))

(declare-fun b!1891103 () Bool)

(declare-fun e!1207218 () List!21259)

(assert (=> b!1891103 (= e!1207218 (++!5713 (list!8590 (left!16993 (left!16993 (c!308318 v!6342)))) (list!8590 (right!17323 (left!16993 (c!308318 v!6342))))))))

(declare-fun d!579031 () Bool)

(declare-fun c!308473 () Bool)

(assert (=> d!579031 (= c!308473 ((_ is Empty!7043) (left!16993 (c!308318 v!6342))))))

(declare-fun e!1207217 () List!21259)

(assert (=> d!579031 (= (list!8590 (left!16993 (c!308318 v!6342))) e!1207217)))

(declare-fun b!1891100 () Bool)

(assert (=> b!1891100 (= e!1207217 Nil!21177)))

(declare-fun b!1891102 () Bool)

(assert (=> b!1891102 (= e!1207218 (list!8594 (xs!9933 (left!16993 (c!308318 v!6342)))))))

(declare-fun b!1891101 () Bool)

(assert (=> b!1891101 (= e!1207217 e!1207218)))

(declare-fun c!308474 () Bool)

(assert (=> b!1891101 (= c!308474 ((_ is Leaf!10382) (left!16993 (c!308318 v!6342))))))

(assert (= (and d!579031 c!308473) b!1891100))

(assert (= (and d!579031 (not c!308473)) b!1891101))

(assert (= (and b!1891101 c!308474) b!1891102))

(assert (= (and b!1891101 (not c!308474)) b!1891103))

(declare-fun m!2321981 () Bool)

(assert (=> b!1891103 m!2321981))

(declare-fun m!2321983 () Bool)

(assert (=> b!1891103 m!2321983))

(assert (=> b!1891103 m!2321981))

(assert (=> b!1891103 m!2321983))

(declare-fun m!2321985 () Bool)

(assert (=> b!1891103 m!2321985))

(declare-fun m!2321987 () Bool)

(assert (=> b!1891102 m!2321987))

(assert (=> b!1890726 d!579031))

(declare-fun b!1891107 () Bool)

(declare-fun e!1207220 () List!21259)

(assert (=> b!1891107 (= e!1207220 (++!5713 (list!8590 (left!16993 (right!17323 (c!308318 v!6342)))) (list!8590 (right!17323 (right!17323 (c!308318 v!6342))))))))

(declare-fun d!579033 () Bool)

(declare-fun c!308475 () Bool)

(assert (=> d!579033 (= c!308475 ((_ is Empty!7043) (right!17323 (c!308318 v!6342))))))

(declare-fun e!1207219 () List!21259)

(assert (=> d!579033 (= (list!8590 (right!17323 (c!308318 v!6342))) e!1207219)))

(declare-fun b!1891104 () Bool)

(assert (=> b!1891104 (= e!1207219 Nil!21177)))

(declare-fun b!1891106 () Bool)

(assert (=> b!1891106 (= e!1207220 (list!8594 (xs!9933 (right!17323 (c!308318 v!6342)))))))

(declare-fun b!1891105 () Bool)

(assert (=> b!1891105 (= e!1207219 e!1207220)))

(declare-fun c!308476 () Bool)

(assert (=> b!1891105 (= c!308476 ((_ is Leaf!10382) (right!17323 (c!308318 v!6342))))))

(assert (= (and d!579033 c!308475) b!1891104))

(assert (= (and d!579033 (not c!308475)) b!1891105))

(assert (= (and b!1891105 c!308476) b!1891106))

(assert (= (and b!1891105 (not c!308476)) b!1891107))

(declare-fun m!2321989 () Bool)

(assert (=> b!1891107 m!2321989))

(declare-fun m!2321991 () Bool)

(assert (=> b!1891107 m!2321991))

(assert (=> b!1891107 m!2321989))

(assert (=> b!1891107 m!2321991))

(declare-fun m!2321993 () Bool)

(assert (=> b!1891107 m!2321993))

(assert (=> b!1891106 m!2321845))

(assert (=> b!1890726 d!579033))

(declare-fun d!579035 () Bool)

(declare-fun res!844367 () Bool)

(declare-fun e!1207221 () Bool)

(assert (=> d!579035 (=> (not res!844367) (not e!1207221))))

(assert (=> d!579035 (= res!844367 (= (csize!14316 (right!17323 (c!308318 v!6342))) (+ (size!16781 (left!16993 (right!17323 (c!308318 v!6342)))) (size!16781 (right!17323 (right!17323 (c!308318 v!6342)))))))))

(assert (=> d!579035 (= (inv!28231 (right!17323 (c!308318 v!6342))) e!1207221)))

(declare-fun b!1891108 () Bool)

(declare-fun res!844368 () Bool)

(assert (=> b!1891108 (=> (not res!844368) (not e!1207221))))

(assert (=> b!1891108 (= res!844368 (and (not (= (left!16993 (right!17323 (c!308318 v!6342))) Empty!7043)) (not (= (right!17323 (right!17323 (c!308318 v!6342))) Empty!7043))))))

(declare-fun b!1891109 () Bool)

(declare-fun res!844369 () Bool)

(assert (=> b!1891109 (=> (not res!844369) (not e!1207221))))

(assert (=> b!1891109 (= res!844369 (= (cheight!7254 (right!17323 (c!308318 v!6342))) (+ (max!0 (height!1096 (left!16993 (right!17323 (c!308318 v!6342)))) (height!1096 (right!17323 (right!17323 (c!308318 v!6342))))) 1)))))

(declare-fun b!1891110 () Bool)

(assert (=> b!1891110 (= e!1207221 (<= 0 (cheight!7254 (right!17323 (c!308318 v!6342)))))))

(assert (= (and d!579035 res!844367) b!1891108))

(assert (= (and b!1891108 res!844368) b!1891109))

(assert (= (and b!1891109 res!844369) b!1891110))

(declare-fun m!2321995 () Bool)

(assert (=> d!579035 m!2321995))

(declare-fun m!2321997 () Bool)

(assert (=> d!579035 m!2321997))

(assert (=> b!1891109 m!2321839))

(assert (=> b!1891109 m!2321841))

(assert (=> b!1891109 m!2321839))

(assert (=> b!1891109 m!2321841))

(declare-fun m!2321999 () Bool)

(assert (=> b!1891109 m!2321999))

(assert (=> b!1890762 d!579035))

(declare-fun d!579037 () Bool)

(declare-fun lt!724190 () Int)

(assert (=> d!579037 (>= lt!724190 0)))

(declare-fun e!1207222 () Int)

(assert (=> d!579037 (= lt!724190 e!1207222)))

(declare-fun c!308477 () Bool)

(assert (=> d!579037 (= c!308477 ((_ is Nil!21177) (innerList!7103 (xs!9933 (c!308318 v!6342)))))))

(assert (=> d!579037 (= (size!16780 (innerList!7103 (xs!9933 (c!308318 v!6342)))) lt!724190)))

(declare-fun b!1891111 () Bool)

(assert (=> b!1891111 (= e!1207222 0)))

(declare-fun b!1891112 () Bool)

(assert (=> b!1891112 (= e!1207222 (+ 1 (size!16780 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))))

(assert (= (and d!579037 c!308477) b!1891111))

(assert (= (and d!579037 (not c!308477)) b!1891112))

(declare-fun m!2322001 () Bool)

(assert (=> b!1891112 m!2322001))

(assert (=> d!578847 d!579037))

(declare-fun d!579039 () Bool)

(assert (=> d!579039 (= (inv!28233 (xs!9933 (left!16993 (c!308318 v!6342)))) (<= (size!16780 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))) 2147483647))))

(declare-fun bs!413115 () Bool)

(assert (= bs!413115 d!579039))

(declare-fun m!2322003 () Bool)

(assert (=> bs!413115 m!2322003))

(assert (=> b!1890794 d!579039))

(assert (=> bm!116751 d!578989))

(declare-fun d!579041 () Bool)

(declare-fun c!308480 () Bool)

(assert (=> d!579041 (= c!308480 ((_ is Node!7042) (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837)))))))))

(declare-fun e!1207227 () Bool)

(assert (=> d!579041 (= (inv!28238 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837)))))) e!1207227)))

(declare-fun b!1891119 () Bool)

(declare-fun inv!28245 (Conc!7042) Bool)

(assert (=> b!1891119 (= e!1207227 (inv!28245 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837)))))))))

(declare-fun b!1891120 () Bool)

(declare-fun e!1207228 () Bool)

(assert (=> b!1891120 (= e!1207227 e!1207228)))

(declare-fun res!844372 () Bool)

(assert (=> b!1891120 (= res!844372 (not ((_ is Leaf!10381) (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837))))))))))

(assert (=> b!1891120 (=> res!844372 e!1207228)))

(declare-fun b!1891121 () Bool)

(declare-fun inv!28246 (Conc!7042) Bool)

(assert (=> b!1891121 (= e!1207228 (inv!28246 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837)))))))))

(assert (= (and d!579041 c!308480) b!1891119))

(assert (= (and d!579041 (not c!308480)) b!1891120))

(assert (= (and b!1891120 (not res!844372)) b!1891121))

(declare-fun m!2322005 () Bool)

(assert (=> b!1891119 m!2322005))

(declare-fun m!2322007 () Bool)

(assert (=> b!1891121 m!2322007))

(assert (=> b!1890792 d!579041))

(assert (=> d!578813 d!578833))

(declare-fun d!579043 () Bool)

(declare-fun res!844373 () Bool)

(declare-fun e!1207229 () Bool)

(assert (=> d!579043 (=> (not res!844373) (not e!1207229))))

(assert (=> d!579043 (= res!844373 (<= (size!16780 (list!8594 (xs!9933 (left!16993 (c!308318 v!6342))))) 512))))

(assert (=> d!579043 (= (inv!28232 (left!16993 (c!308318 v!6342))) e!1207229)))

(declare-fun b!1891122 () Bool)

(declare-fun res!844374 () Bool)

(assert (=> b!1891122 (=> (not res!844374) (not e!1207229))))

(assert (=> b!1891122 (= res!844374 (= (csize!14317 (left!16993 (c!308318 v!6342))) (size!16780 (list!8594 (xs!9933 (left!16993 (c!308318 v!6342)))))))))

(declare-fun b!1891123 () Bool)

(assert (=> b!1891123 (= e!1207229 (and (> (csize!14317 (left!16993 (c!308318 v!6342))) 0) (<= (csize!14317 (left!16993 (c!308318 v!6342))) 512)))))

(assert (= (and d!579043 res!844373) b!1891122))

(assert (= (and b!1891122 res!844374) b!1891123))

(assert (=> d!579043 m!2321987))

(assert (=> d!579043 m!2321987))

(declare-fun m!2322009 () Bool)

(assert (=> d!579043 m!2322009))

(assert (=> b!1891122 m!2321987))

(assert (=> b!1891122 m!2321987))

(assert (=> b!1891122 m!2322009))

(assert (=> b!1890761 d!579043))

(declare-fun d!579045 () Bool)

(declare-fun lt!724191 () Int)

(assert (=> d!579045 (>= lt!724191 0)))

(declare-fun e!1207230 () Int)

(assert (=> d!579045 (= lt!724191 e!1207230)))

(declare-fun c!308481 () Bool)

(assert (=> d!579045 (= c!308481 ((_ is Nil!21177) (t!175426 (list!8591 v!6342))))))

(assert (=> d!579045 (= (size!16780 (t!175426 (list!8591 v!6342))) lt!724191)))

(declare-fun b!1891124 () Bool)

(assert (=> b!1891124 (= e!1207230 0)))

(declare-fun b!1891125 () Bool)

(assert (=> b!1891125 (= e!1207230 (+ 1 (size!16780 (t!175426 (t!175426 (list!8591 v!6342))))))))

(assert (= (and d!579045 c!308481) b!1891124))

(assert (= (and d!579045 (not c!308481)) b!1891125))

(declare-fun m!2322011 () Bool)

(assert (=> b!1891125 m!2322011))

(assert (=> b!1890579 d!579045))

(declare-fun d!579047 () Bool)

(declare-fun res!844375 () Bool)

(declare-fun e!1207231 () Bool)

(assert (=> d!579047 (=> (not res!844375) (not e!1207231))))

(assert (=> d!579047 (= res!844375 (= (csize!14316 (left!16993 (c!308318 v!6342))) (+ (size!16781 (left!16993 (left!16993 (c!308318 v!6342)))) (size!16781 (right!17323 (left!16993 (c!308318 v!6342)))))))))

(assert (=> d!579047 (= (inv!28231 (left!16993 (c!308318 v!6342))) e!1207231)))

(declare-fun b!1891126 () Bool)

(declare-fun res!844376 () Bool)

(assert (=> b!1891126 (=> (not res!844376) (not e!1207231))))

(assert (=> b!1891126 (= res!844376 (and (not (= (left!16993 (left!16993 (c!308318 v!6342))) Empty!7043)) (not (= (right!17323 (left!16993 (c!308318 v!6342))) Empty!7043))))))

(declare-fun b!1891127 () Bool)

(declare-fun res!844377 () Bool)

(assert (=> b!1891127 (=> (not res!844377) (not e!1207231))))

(assert (=> b!1891127 (= res!844377 (= (cheight!7254 (left!16993 (c!308318 v!6342))) (+ (max!0 (height!1096 (left!16993 (left!16993 (c!308318 v!6342)))) (height!1096 (right!17323 (left!16993 (c!308318 v!6342))))) 1)))))

(declare-fun b!1891128 () Bool)

(assert (=> b!1891128 (= e!1207231 (<= 0 (cheight!7254 (left!16993 (c!308318 v!6342)))))))

(assert (= (and d!579047 res!844375) b!1891126))

(assert (= (and b!1891126 res!844376) b!1891127))

(assert (= (and b!1891127 res!844377) b!1891128))

(declare-fun m!2322013 () Bool)

(assert (=> d!579047 m!2322013))

(declare-fun m!2322015 () Bool)

(assert (=> d!579047 m!2322015))

(assert (=> b!1891127 m!2321889))

(assert (=> b!1891127 m!2321891))

(assert (=> b!1891127 m!2321889))

(assert (=> b!1891127 m!2321891))

(declare-fun m!2322017 () Bool)

(assert (=> b!1891127 m!2322017))

(assert (=> b!1890759 d!579047))

(declare-fun d!579049 () Bool)

(declare-fun lt!724192 () Bool)

(assert (=> d!579049 (= lt!724192 (isEmpty!13009 (list!8590 (right!17323 (c!308318 v!6342)))))))

(assert (=> d!579049 (= lt!724192 (= (size!16781 (right!17323 (c!308318 v!6342))) 0))))

(assert (=> d!579049 (= (isEmpty!13006 (right!17323 (c!308318 v!6342))) lt!724192)))

(declare-fun bs!413116 () Bool)

(assert (= bs!413116 d!579049))

(assert (=> bs!413116 m!2321483))

(assert (=> bs!413116 m!2321483))

(declare-fun m!2322019 () Bool)

(assert (=> bs!413116 m!2322019))

(assert (=> bs!413116 m!2321539))

(assert (=> b!1890641 d!579049))

(assert (=> b!1890640 d!578965))

(assert (=> b!1890640 d!578967))

(declare-fun d!579051 () Bool)

(declare-fun lt!724193 () Int)

(assert (=> d!579051 (= lt!724193 (size!16780 (list!8590 (left!16993 (c!308318 v!6342)))))))

(assert (=> d!579051 (= lt!724193 (ite ((_ is Empty!7043) (left!16993 (c!308318 v!6342))) 0 (ite ((_ is Leaf!10382) (left!16993 (c!308318 v!6342))) (csize!14317 (left!16993 (c!308318 v!6342))) (csize!14316 (left!16993 (c!308318 v!6342))))))))

(assert (=> d!579051 (= (size!16781 (left!16993 (c!308318 v!6342))) lt!724193)))

(declare-fun bs!413117 () Bool)

(assert (= bs!413117 d!579051))

(assert (=> bs!413117 m!2321481))

(assert (=> bs!413117 m!2321481))

(assert (=> bs!413117 m!2321969))

(assert (=> d!578853 d!579051))

(declare-fun d!579053 () Bool)

(declare-fun lt!724194 () Int)

(assert (=> d!579053 (= lt!724194 (size!16780 (list!8590 (right!17323 (c!308318 v!6342)))))))

(assert (=> d!579053 (= lt!724194 (ite ((_ is Empty!7043) (right!17323 (c!308318 v!6342))) 0 (ite ((_ is Leaf!10382) (right!17323 (c!308318 v!6342))) (csize!14317 (right!17323 (c!308318 v!6342))) (csize!14316 (right!17323 (c!308318 v!6342))))))))

(assert (=> d!579053 (= (size!16781 (right!17323 (c!308318 v!6342))) lt!724194)))

(declare-fun bs!413118 () Bool)

(assert (= bs!413118 d!579053))

(assert (=> bs!413118 m!2321483))

(assert (=> bs!413118 m!2321483))

(assert (=> bs!413118 m!2321971))

(assert (=> d!578853 d!579053))

(declare-fun d!579055 () Bool)

(declare-fun c!308482 () Bool)

(assert (=> d!579055 (= c!308482 ((_ is Node!7043) (left!16993 (left!16993 (c!308318 v!6342)))))))

(declare-fun e!1207232 () Bool)

(assert (=> d!579055 (= (inv!28227 (left!16993 (left!16993 (c!308318 v!6342)))) e!1207232)))

(declare-fun b!1891129 () Bool)

(assert (=> b!1891129 (= e!1207232 (inv!28231 (left!16993 (left!16993 (c!308318 v!6342)))))))

(declare-fun b!1891130 () Bool)

(declare-fun e!1207233 () Bool)

(assert (=> b!1891130 (= e!1207232 e!1207233)))

(declare-fun res!844378 () Bool)

(assert (=> b!1891130 (= res!844378 (not ((_ is Leaf!10382) (left!16993 (left!16993 (c!308318 v!6342))))))))

(assert (=> b!1891130 (=> res!844378 e!1207233)))

(declare-fun b!1891131 () Bool)

(assert (=> b!1891131 (= e!1207233 (inv!28232 (left!16993 (left!16993 (c!308318 v!6342)))))))

(assert (= (and d!579055 c!308482) b!1891129))

(assert (= (and d!579055 (not c!308482)) b!1891130))

(assert (= (and b!1891130 (not res!844378)) b!1891131))

(declare-fun m!2322021 () Bool)

(assert (=> b!1891129 m!2322021))

(declare-fun m!2322023 () Bool)

(assert (=> b!1891131 m!2322023))

(assert (=> b!1890793 d!579055))

(declare-fun d!579057 () Bool)

(declare-fun c!308483 () Bool)

(assert (=> d!579057 (= c!308483 ((_ is Node!7043) (right!17323 (left!16993 (c!308318 v!6342)))))))

(declare-fun e!1207234 () Bool)

(assert (=> d!579057 (= (inv!28227 (right!17323 (left!16993 (c!308318 v!6342)))) e!1207234)))

(declare-fun b!1891132 () Bool)

(assert (=> b!1891132 (= e!1207234 (inv!28231 (right!17323 (left!16993 (c!308318 v!6342)))))))

(declare-fun b!1891133 () Bool)

(declare-fun e!1207235 () Bool)

(assert (=> b!1891133 (= e!1207234 e!1207235)))

(declare-fun res!844379 () Bool)

(assert (=> b!1891133 (= res!844379 (not ((_ is Leaf!10382) (right!17323 (left!16993 (c!308318 v!6342))))))))

(assert (=> b!1891133 (=> res!844379 e!1207235)))

(declare-fun b!1891134 () Bool)

(assert (=> b!1891134 (= e!1207235 (inv!28232 (right!17323 (left!16993 (c!308318 v!6342)))))))

(assert (= (and d!579057 c!308483) b!1891132))

(assert (= (and d!579057 (not c!308483)) b!1891133))

(assert (= (and b!1891133 (not res!844379)) b!1891134))

(declare-fun m!2322025 () Bool)

(assert (=> b!1891132 m!2322025))

(declare-fun m!2322027 () Bool)

(assert (=> b!1891134 m!2322027))

(assert (=> b!1890793 d!579057))

(declare-fun d!579059 () Bool)

(declare-fun c!308486 () Bool)

(assert (=> d!579059 (= c!308486 ((_ is Nil!21177) lt!724142))))

(declare-fun e!1207238 () (InoxSet Token!7056))

(assert (=> d!579059 (= (content!3123 lt!724142) e!1207238)))

(declare-fun b!1891139 () Bool)

(assert (=> b!1891139 (= e!1207238 ((as const (Array Token!7056 Bool)) false))))

(declare-fun b!1891140 () Bool)

(assert (=> b!1891140 (= e!1207238 ((_ map or) (store ((as const (Array Token!7056 Bool)) false) (h!26578 lt!724142) true) (content!3123 (t!175426 lt!724142))))))

(assert (= (and d!579059 c!308486) b!1891139))

(assert (= (and d!579059 (not c!308486)) b!1891140))

(declare-fun m!2322029 () Bool)

(assert (=> b!1891140 m!2322029))

(declare-fun m!2322031 () Bool)

(assert (=> b!1891140 m!2322031))

(assert (=> d!578831 d!579059))

(declare-fun d!579061 () Bool)

(declare-fun c!308487 () Bool)

(assert (=> d!579061 (= c!308487 ((_ is Nil!21177) (list!8590 (c!308318 v!6342))))))

(declare-fun e!1207239 () (InoxSet Token!7056))

(assert (=> d!579061 (= (content!3123 (list!8590 (c!308318 v!6342))) e!1207239)))

(declare-fun b!1891141 () Bool)

(assert (=> b!1891141 (= e!1207239 ((as const (Array Token!7056 Bool)) false))))

(declare-fun b!1891142 () Bool)

(assert (=> b!1891142 (= e!1207239 ((_ map or) (store ((as const (Array Token!7056 Bool)) false) (h!26578 (list!8590 (c!308318 v!6342))) true) (content!3123 (t!175426 (list!8590 (c!308318 v!6342))))))))

(assert (= (and d!579061 c!308487) b!1891141))

(assert (= (and d!579061 (not c!308487)) b!1891142))

(declare-fun m!2322033 () Bool)

(assert (=> b!1891142 m!2322033))

(assert (=> b!1891142 m!2321953))

(assert (=> d!578831 d!579061))

(declare-fun d!579063 () Bool)

(declare-fun c!308490 () Bool)

(assert (=> d!579063 (= c!308490 ((_ is Nil!21176) lt!724145))))

(declare-fun e!1207242 () (InoxSet C!10500))

(assert (=> d!579063 (= (content!3124 lt!724145) e!1207242)))

(declare-fun b!1891147 () Bool)

(assert (=> b!1891147 (= e!1207242 ((as const (Array C!10500 Bool)) false))))

(declare-fun b!1891148 () Bool)

(assert (=> b!1891148 (= e!1207242 ((_ map or) (store ((as const (Array C!10500 Bool)) false) (h!26577 lt!724145) true) (content!3124 (t!175425 lt!724145))))))

(assert (= (and d!579063 c!308490) b!1891147))

(assert (= (and d!579063 (not c!308490)) b!1891148))

(declare-fun m!2322035 () Bool)

(assert (=> b!1891148 m!2322035))

(declare-fun m!2322037 () Bool)

(assert (=> b!1891148 m!2322037))

(assert (=> d!578837 d!579063))

(declare-fun d!579065 () Bool)

(declare-fun c!308491 () Bool)

(assert (=> d!579065 (= c!308491 ((_ is Nil!21176) (list!8585 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837))))))))

(declare-fun e!1207243 () (InoxSet C!10500))

(assert (=> d!579065 (= (content!3124 (list!8585 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837))))) e!1207243)))

(declare-fun b!1891149 () Bool)

(assert (=> b!1891149 (= e!1207243 ((as const (Array C!10500 Bool)) false))))

(declare-fun b!1891150 () Bool)

(assert (=> b!1891150 (= e!1207243 ((_ map or) (store ((as const (Array C!10500 Bool)) false) (h!26577 (list!8585 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837))))) true) (content!3124 (t!175425 (list!8585 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837))))))))))

(assert (= (and d!579065 c!308491) b!1891149))

(assert (= (and d!579065 (not c!308491)) b!1891150))

(declare-fun m!2322039 () Bool)

(assert (=> b!1891150 m!2322039))

(assert (=> b!1891150 m!2321943))

(assert (=> d!578837 d!579065))

(declare-fun d!579067 () Bool)

(declare-fun c!308492 () Bool)

(assert (=> d!579067 (= c!308492 ((_ is Nil!21176) (printList!1016 thiss!13601 (t!175426 (dropList!762 v!6342 from!837)))))))

(declare-fun e!1207244 () (InoxSet C!10500))

(assert (=> d!579067 (= (content!3124 (printList!1016 thiss!13601 (t!175426 (dropList!762 v!6342 from!837)))) e!1207244)))

(declare-fun b!1891151 () Bool)

(assert (=> b!1891151 (= e!1207244 ((as const (Array C!10500 Bool)) false))))

(declare-fun b!1891152 () Bool)

(assert (=> b!1891152 (= e!1207244 ((_ map or) (store ((as const (Array C!10500 Bool)) false) (h!26577 (printList!1016 thiss!13601 (t!175426 (dropList!762 v!6342 from!837)))) true) (content!3124 (t!175425 (printList!1016 thiss!13601 (t!175426 (dropList!762 v!6342 from!837)))))))))

(assert (= (and d!579067 c!308492) b!1891151))

(assert (= (and d!579067 (not c!308492)) b!1891152))

(declare-fun m!2322041 () Bool)

(assert (=> b!1891152 m!2322041))

(declare-fun m!2322043 () Bool)

(assert (=> b!1891152 m!2322043))

(assert (=> d!578837 d!579067))

(assert (=> b!1890526 d!578849))

(assert (=> b!1890526 d!578851))

(assert (=> d!578835 d!579001))

(assert (=> d!578835 d!579003))

(declare-fun d!579069 () Bool)

(assert (=> d!579069 (= (max!0 (height!1096 (left!16993 (c!308318 v!6342))) (height!1096 (right!17323 (c!308318 v!6342)))) (ite (< (height!1096 (left!16993 (c!308318 v!6342))) (height!1096 (right!17323 (c!308318 v!6342)))) (height!1096 (right!17323 (c!308318 v!6342))) (height!1096 (left!16993 (c!308318 v!6342)))))))

(assert (=> b!1890772 d!579069))

(assert (=> b!1890772 d!578965))

(assert (=> b!1890772 d!578967))

(declare-fun b!1891156 () Bool)

(declare-fun b_free!52649 () Bool)

(declare-fun b_next!53353 () Bool)

(assert (=> b!1891156 (= b_free!52649 (not b_next!53353))))

(declare-fun tp!539428 () Bool)

(declare-fun b_and!145519 () Bool)

(assert (=> b!1891156 (= tp!539428 b_and!145519)))

(declare-fun b_free!52651 () Bool)

(declare-fun b_next!53355 () Bool)

(assert (=> b!1891156 (= b_free!52651 (not b_next!53355))))

(declare-fun t!175470 () Bool)

(declare-fun tb!114851 () Bool)

(assert (=> (and b!1891156 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837)))))) t!175470) tb!114851))

(declare-fun result!138900 () Bool)

(assert (= result!138900 result!138864))

(assert (=> d!578841 t!175470))

(declare-fun t!175472 () Bool)

(declare-fun tb!114853 () Bool)

(assert (=> (and b!1891156 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (dropList!762 v!6342 from!837))))))) t!175472) tb!114853))

(declare-fun result!138902 () Bool)

(assert (= result!138902 result!138896))

(assert (=> d!579017 t!175472))

(declare-fun t!175474 () Bool)

(declare-fun tb!114855 () Bool)

(assert (=> (and b!1891156 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) t!175474) tb!114855))

(declare-fun result!138904 () Bool)

(assert (= result!138904 result!138898))

(assert (=> b!1891085 t!175474))

(declare-fun tp!539430 () Bool)

(declare-fun b_and!145521 () Bool)

(assert (=> b!1891156 (= tp!539430 (and (=> t!175470 result!138900) (=> t!175472 result!138902) (=> t!175474 result!138904) b_and!145521))))

(declare-fun e!1207245 () Bool)

(assert (=> b!1891156 (= e!1207245 (and tp!539428 tp!539430))))

(declare-fun tp!539429 () Bool)

(declare-fun e!1207250 () Bool)

(declare-fun e!1207247 () Bool)

(declare-fun b!1891153 () Bool)

(assert (=> b!1891153 (= e!1207247 (and (inv!28240 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))) e!1207250 tp!539429))))

(assert (=> b!1890795 (= tp!539365 e!1207247)))

(declare-fun b!1891154 () Bool)

(declare-fun e!1207248 () Bool)

(declare-fun tp!539431 () Bool)

(assert (=> b!1891154 (= e!1207250 (and (inv!21 (value!118523 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))) e!1207248 tp!539431))))

(declare-fun b!1891155 () Bool)

(declare-fun tp!539427 () Bool)

(assert (=> b!1891155 (= e!1207248 (and tp!539427 (inv!28223 (tag!4166 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))))) (inv!28241 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))))) e!1207245))))

(assert (= b!1891155 b!1891156))

(assert (= b!1891154 b!1891155))

(assert (= b!1891153 b!1891154))

(assert (= (and b!1890795 ((_ is Cons!21177) (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))) b!1891153))

(declare-fun m!2322045 () Bool)

(assert (=> b!1891153 m!2322045))

(declare-fun m!2322047 () Bool)

(assert (=> b!1891154 m!2322047))

(declare-fun m!2322049 () Bool)

(assert (=> b!1891155 m!2322049))

(declare-fun m!2322051 () Bool)

(assert (=> b!1891155 m!2322051))

(declare-fun b!1891161 () Bool)

(declare-fun e!1207253 () Bool)

(declare-fun tp_is_empty!9053 () Bool)

(declare-fun tp!539434 () Bool)

(assert (=> b!1891161 (= e!1207253 (and tp_is_empty!9053 tp!539434))))

(assert (=> b!1890785 (= tp!539359 e!1207253)))

(assert (= (and b!1890785 ((_ is Cons!21176) (originalCharacters!4559 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) b!1891161))

(declare-fun b!1891172 () Bool)

(declare-fun e!1207256 () Bool)

(assert (=> b!1891172 (= e!1207256 tp_is_empty!9053)))

(declare-fun b!1891173 () Bool)

(declare-fun tp!539446 () Bool)

(declare-fun tp!539447 () Bool)

(assert (=> b!1891173 (= e!1207256 (and tp!539446 tp!539447))))

(declare-fun b!1891174 () Bool)

(declare-fun tp!539448 () Bool)

(assert (=> b!1891174 (= e!1207256 tp!539448)))

(assert (=> b!1890786 (= tp!539355 e!1207256)))

(declare-fun b!1891175 () Bool)

(declare-fun tp!539445 () Bool)

(declare-fun tp!539449 () Bool)

(assert (=> b!1891175 (= e!1207256 (and tp!539445 tp!539449))))

(assert (= (and b!1890786 ((_ is ElementMatch!5177) (regex!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) b!1891172))

(assert (= (and b!1890786 ((_ is Concat!9066) (regex!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) b!1891173))

(assert (= (and b!1890786 ((_ is Star!5177) (regex!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) b!1891174))

(assert (= (and b!1890786 ((_ is Union!5177) (regex!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) b!1891175))

(declare-fun b!1891179 () Bool)

(declare-fun b_free!52653 () Bool)

(declare-fun b_next!53357 () Bool)

(assert (=> b!1891179 (= b_free!52653 (not b_next!53357))))

(declare-fun tp!539451 () Bool)

(declare-fun b_and!145523 () Bool)

(assert (=> b!1891179 (= tp!539451 b_and!145523)))

(declare-fun b_free!52655 () Bool)

(declare-fun b_next!53359 () Bool)

(assert (=> b!1891179 (= b_free!52655 (not b_next!53359))))

(declare-fun tb!114857 () Bool)

(declare-fun t!175476 () Bool)

(assert (=> (and b!1891179 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837)))))) t!175476) tb!114857))

(declare-fun result!138910 () Bool)

(assert (= result!138910 result!138864))

(assert (=> d!578841 t!175476))

(declare-fun tb!114859 () Bool)

(declare-fun t!175478 () Bool)

(assert (=> (and b!1891179 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (dropList!762 v!6342 from!837))))))) t!175478) tb!114859))

(declare-fun result!138912 () Bool)

(assert (= result!138912 result!138896))

(assert (=> d!579017 t!175478))

(declare-fun t!175480 () Bool)

(declare-fun tb!114861 () Bool)

(assert (=> (and b!1891179 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) t!175480) tb!114861))

(declare-fun result!138914 () Bool)

(assert (= result!138914 result!138898))

(assert (=> b!1891085 t!175480))

(declare-fun tp!539453 () Bool)

(declare-fun b_and!145525 () Bool)

(assert (=> b!1891179 (= tp!539453 (and (=> t!175476 result!138910) (=> t!175478 result!138912) (=> t!175480 result!138914) b_and!145525))))

(declare-fun e!1207257 () Bool)

(assert (=> b!1891179 (= e!1207257 (and tp!539451 tp!539453))))

(declare-fun tp!539452 () Bool)

(declare-fun e!1207262 () Bool)

(declare-fun e!1207259 () Bool)

(declare-fun b!1891176 () Bool)

(assert (=> b!1891176 (= e!1207259 (and (inv!28240 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))) e!1207262 tp!539452))))

(assert (=> b!1890784 (= tp!539357 e!1207259)))

(declare-fun e!1207260 () Bool)

(declare-fun tp!539454 () Bool)

(declare-fun b!1891177 () Bool)

(assert (=> b!1891177 (= e!1207262 (and (inv!21 (value!118523 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) e!1207260 tp!539454))))

(declare-fun tp!539450 () Bool)

(declare-fun b!1891178 () Bool)

(assert (=> b!1891178 (= e!1207260 (and tp!539450 (inv!28223 (tag!4166 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) (inv!28241 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) e!1207257))))

(assert (= b!1891178 b!1891179))

(assert (= b!1891177 b!1891178))

(assert (= b!1891176 b!1891177))

(assert (= (and b!1890784 ((_ is Cons!21177) (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))) b!1891176))

(declare-fun m!2322053 () Bool)

(assert (=> b!1891176 m!2322053))

(declare-fun m!2322055 () Bool)

(assert (=> b!1891177 m!2322055))

(declare-fun m!2322057 () Bool)

(assert (=> b!1891178 m!2322057))

(declare-fun m!2322059 () Bool)

(assert (=> b!1891178 m!2322059))

(declare-fun tp!539455 () Bool)

(declare-fun e!1207264 () Bool)

(declare-fun b!1891180 () Bool)

(declare-fun tp!539456 () Bool)

(assert (=> b!1891180 (= e!1207264 (and (inv!28227 (left!16993 (left!16993 (left!16993 (c!308318 v!6342))))) tp!539455 (inv!28227 (right!17323 (left!16993 (left!16993 (c!308318 v!6342))))) tp!539456))))

(declare-fun b!1891182 () Bool)

(declare-fun e!1207263 () Bool)

(declare-fun tp!539457 () Bool)

(assert (=> b!1891182 (= e!1207263 tp!539457)))

(declare-fun b!1891181 () Bool)

(assert (=> b!1891181 (= e!1207264 (and (inv!28233 (xs!9933 (left!16993 (left!16993 (c!308318 v!6342))))) e!1207263))))

(assert (=> b!1890793 (= tp!539363 (and (inv!28227 (left!16993 (left!16993 (c!308318 v!6342)))) e!1207264))))

(assert (= (and b!1890793 ((_ is Node!7043) (left!16993 (left!16993 (c!308318 v!6342))))) b!1891180))

(assert (= b!1891181 b!1891182))

(assert (= (and b!1890793 ((_ is Leaf!10382) (left!16993 (left!16993 (c!308318 v!6342))))) b!1891181))

(declare-fun m!2322061 () Bool)

(assert (=> b!1891180 m!2322061))

(declare-fun m!2322063 () Bool)

(assert (=> b!1891180 m!2322063))

(declare-fun m!2322065 () Bool)

(assert (=> b!1891181 m!2322065))

(assert (=> b!1890793 m!2321555))

(declare-fun tp!539459 () Bool)

(declare-fun b!1891183 () Bool)

(declare-fun tp!539458 () Bool)

(declare-fun e!1207266 () Bool)

(assert (=> b!1891183 (= e!1207266 (and (inv!28227 (left!16993 (right!17323 (left!16993 (c!308318 v!6342))))) tp!539458 (inv!28227 (right!17323 (right!17323 (left!16993 (c!308318 v!6342))))) tp!539459))))

(declare-fun b!1891185 () Bool)

(declare-fun e!1207265 () Bool)

(declare-fun tp!539460 () Bool)

(assert (=> b!1891185 (= e!1207265 tp!539460)))

(declare-fun b!1891184 () Bool)

(assert (=> b!1891184 (= e!1207266 (and (inv!28233 (xs!9933 (right!17323 (left!16993 (c!308318 v!6342))))) e!1207265))))

(assert (=> b!1890793 (= tp!539364 (and (inv!28227 (right!17323 (left!16993 (c!308318 v!6342)))) e!1207266))))

(assert (= (and b!1890793 ((_ is Node!7043) (right!17323 (left!16993 (c!308318 v!6342))))) b!1891183))

(assert (= b!1891184 b!1891185))

(assert (= (and b!1890793 ((_ is Leaf!10382) (right!17323 (left!16993 (c!308318 v!6342))))) b!1891184))

(declare-fun m!2322067 () Bool)

(assert (=> b!1891183 m!2322067))

(declare-fun m!2322069 () Bool)

(assert (=> b!1891183 m!2322069))

(declare-fun m!2322071 () Bool)

(assert (=> b!1891184 m!2322071))

(assert (=> b!1890793 m!2321557))

(declare-fun b!1891189 () Bool)

(declare-fun b_free!52657 () Bool)

(declare-fun b_next!53361 () Bool)

(assert (=> b!1891189 (= b_free!52657 (not b_next!53361))))

(declare-fun tp!539462 () Bool)

(declare-fun b_and!145527 () Bool)

(assert (=> b!1891189 (= tp!539462 b_and!145527)))

(declare-fun b_free!52659 () Bool)

(declare-fun b_next!53363 () Bool)

(assert (=> b!1891189 (= b_free!52659 (not b_next!53363))))

(declare-fun t!175482 () Bool)

(declare-fun tb!114863 () Bool)

(assert (=> (and b!1891189 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837)))))) t!175482) tb!114863))

(declare-fun result!138916 () Bool)

(assert (= result!138916 result!138864))

(assert (=> d!578841 t!175482))

(declare-fun tb!114865 () Bool)

(declare-fun t!175484 () Bool)

(assert (=> (and b!1891189 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (dropList!762 v!6342 from!837))))))) t!175484) tb!114865))

(declare-fun result!138918 () Bool)

(assert (= result!138918 result!138896))

(assert (=> d!579017 t!175484))

(declare-fun t!175486 () Bool)

(declare-fun tb!114867 () Bool)

(assert (=> (and b!1891189 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) t!175486) tb!114867))

(declare-fun result!138920 () Bool)

(assert (= result!138920 result!138898))

(assert (=> b!1891085 t!175486))

(declare-fun b_and!145529 () Bool)

(declare-fun tp!539464 () Bool)

(assert (=> b!1891189 (= tp!539464 (and (=> t!175482 result!138916) (=> t!175484 result!138918) (=> t!175486 result!138920) b_and!145529))))

(declare-fun e!1207267 () Bool)

(assert (=> b!1891189 (= e!1207267 (and tp!539462 tp!539464))))

(declare-fun e!1207272 () Bool)

(declare-fun tp!539463 () Bool)

(declare-fun b!1891186 () Bool)

(declare-fun e!1207269 () Bool)

(assert (=> b!1891186 (= e!1207269 (and (inv!28240 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))) e!1207272 tp!539463))))

(assert (=> b!1890798 (= tp!539368 e!1207269)))

(declare-fun b!1891187 () Bool)

(declare-fun tp!539465 () Bool)

(declare-fun e!1207270 () Bool)

(assert (=> b!1891187 (= e!1207272 (and (inv!21 (value!118523 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))) e!1207270 tp!539465))))

(declare-fun tp!539461 () Bool)

(declare-fun b!1891188 () Bool)

(assert (=> b!1891188 (= e!1207270 (and tp!539461 (inv!28223 (tag!4166 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))))) (inv!28241 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))))) e!1207267))))

(assert (= b!1891188 b!1891189))

(assert (= b!1891187 b!1891188))

(assert (= b!1891186 b!1891187))

(assert (= (and b!1890798 ((_ is Cons!21177) (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))) b!1891186))

(declare-fun m!2322073 () Bool)

(assert (=> b!1891186 m!2322073))

(declare-fun m!2322075 () Bool)

(assert (=> b!1891187 m!2322075))

(declare-fun m!2322077 () Bool)

(assert (=> b!1891188 m!2322077))

(declare-fun m!2322079 () Bool)

(assert (=> b!1891188 m!2322079))

(declare-fun b!1891190 () Bool)

(declare-fun tp!539467 () Bool)

(declare-fun tp!539466 () Bool)

(declare-fun e!1207274 () Bool)

(assert (=> b!1891190 (= e!1207274 (and (inv!28227 (left!16993 (left!16993 (right!17323 (c!308318 v!6342))))) tp!539466 (inv!28227 (right!17323 (left!16993 (right!17323 (c!308318 v!6342))))) tp!539467))))

(declare-fun b!1891192 () Bool)

(declare-fun e!1207273 () Bool)

(declare-fun tp!539468 () Bool)

(assert (=> b!1891192 (= e!1207273 tp!539468)))

(declare-fun b!1891191 () Bool)

(assert (=> b!1891191 (= e!1207274 (and (inv!28233 (xs!9933 (left!16993 (right!17323 (c!308318 v!6342))))) e!1207273))))

(assert (=> b!1890796 (= tp!539366 (and (inv!28227 (left!16993 (right!17323 (c!308318 v!6342)))) e!1207274))))

(assert (= (and b!1890796 ((_ is Node!7043) (left!16993 (right!17323 (c!308318 v!6342))))) b!1891190))

(assert (= b!1891191 b!1891192))

(assert (= (and b!1890796 ((_ is Leaf!10382) (left!16993 (right!17323 (c!308318 v!6342))))) b!1891191))

(declare-fun m!2322081 () Bool)

(assert (=> b!1891190 m!2322081))

(declare-fun m!2322083 () Bool)

(assert (=> b!1891190 m!2322083))

(declare-fun m!2322085 () Bool)

(assert (=> b!1891191 m!2322085))

(assert (=> b!1890796 m!2321561))

(declare-fun tp!539470 () Bool)

(declare-fun b!1891193 () Bool)

(declare-fun tp!539469 () Bool)

(declare-fun e!1207276 () Bool)

(assert (=> b!1891193 (= e!1207276 (and (inv!28227 (left!16993 (right!17323 (right!17323 (c!308318 v!6342))))) tp!539469 (inv!28227 (right!17323 (right!17323 (right!17323 (c!308318 v!6342))))) tp!539470))))

(declare-fun b!1891195 () Bool)

(declare-fun e!1207275 () Bool)

(declare-fun tp!539471 () Bool)

(assert (=> b!1891195 (= e!1207275 tp!539471)))

(declare-fun b!1891194 () Bool)

(assert (=> b!1891194 (= e!1207276 (and (inv!28233 (xs!9933 (right!17323 (right!17323 (c!308318 v!6342))))) e!1207275))))

(assert (=> b!1890796 (= tp!539367 (and (inv!28227 (right!17323 (right!17323 (c!308318 v!6342)))) e!1207276))))

(assert (= (and b!1890796 ((_ is Node!7043) (right!17323 (right!17323 (c!308318 v!6342))))) b!1891193))

(assert (= b!1891194 b!1891195))

(assert (= (and b!1890796 ((_ is Leaf!10382) (right!17323 (right!17323 (c!308318 v!6342))))) b!1891194))

(declare-fun m!2322087 () Bool)

(assert (=> b!1891193 m!2322087))

(declare-fun m!2322089 () Bool)

(assert (=> b!1891193 m!2322089))

(declare-fun m!2322091 () Bool)

(assert (=> b!1891194 m!2322091))

(assert (=> b!1890796 m!2321563))

(declare-fun b!1891204 () Bool)

(declare-fun tp!539480 () Bool)

(declare-fun tp!539478 () Bool)

(declare-fun e!1207282 () Bool)

(assert (=> b!1891204 (= e!1207282 (and (inv!28238 (left!16992 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837))))))) tp!539478 (inv!28238 (right!17322 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837))))))) tp!539480))))

(declare-fun b!1891206 () Bool)

(declare-fun e!1207281 () Bool)

(declare-fun tp!539479 () Bool)

(assert (=> b!1891206 (= e!1207281 tp!539479)))

(declare-fun b!1891205 () Bool)

(declare-fun inv!28247 (IArray!14089) Bool)

(assert (=> b!1891205 (= e!1207282 (and (inv!28247 (xs!9932 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837))))))) e!1207281))))

(assert (=> b!1890792 (= tp!539362 (and (inv!28238 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837)))))) e!1207282))))

(assert (= (and b!1890792 ((_ is Node!7042) (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837))))))) b!1891204))

(assert (= b!1891205 b!1891206))

(assert (= (and b!1890792 ((_ is Leaf!10381) (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837))))))) b!1891205))

(declare-fun m!2322093 () Bool)

(assert (=> b!1891204 m!2322093))

(declare-fun m!2322095 () Bool)

(assert (=> b!1891204 m!2322095))

(declare-fun m!2322097 () Bool)

(assert (=> b!1891205 m!2322097))

(assert (=> b!1890792 m!2321543))

(declare-fun b_lambda!62005 () Bool)

(assert (= b_lambda!61991 (or (and b!1890787 b_free!52635 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))))) (and b!1891156 b_free!52651 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))))) (and b!1891179 b_free!52655 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))))) (and b!1891189 b_free!52659 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))))) b_lambda!62005)))

(declare-fun b_lambda!62007 () Bool)

(assert (= b_lambda!62003 (or (and b!1890787 b_free!52635) (and b!1891156 b_free!52651 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) (and b!1891179 b_free!52655 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) (and b!1891189 b_free!52659 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) b_lambda!62007)))

(check-sat b_and!145523 (not b!1891065) (not b!1891098) (not b!1891062) (not b!1891154) b_and!145517 (not d!579039) (not b!1891085) (not d!579017) (not b!1891030) (not b_lambda!62001) tp_is_empty!9053 (not b!1891152) (not d!579025) (not b!1891004) (not d!579043) (not b!1891205) (not b!1891009) (not b_next!53353) (not d!578985) (not b!1891063) (not b!1891048) (not b!1891053) (not b!1891181) (not b!1891161) b_and!145495 (not b!1890792) (not b!1891005) (not b!1891050) (not b!1891129) (not b_next!53337) (not b!1891122) (not d!578975) (not b!1891175) b_and!145519 (not b!1891109) (not b!1891097) (not d!579049) (not bm!116753) (not b!1891177) (not b_next!53355) (not b!1891190) b_and!145529 (not b!1891034) (not b!1891066) (not b!1891102) (not b!1891087) (not b_next!53359) (not b!1891125) (not d!579053) (not b!1891016) (not b!1891127) (not b!1891086) (not b_next!53361) (not d!579023) (not b!1891015) (not b!1891046) (not b!1891188) (not b!1891070) (not b!1891173) (not b!1891180) (not d!578997) (not b!1891206) (not d!579051) (not b!1891103) (not d!579007) (not d!579029) (not d!579047) (not d!578999) (not b!1891057) (not b!1891148) (not d!579035) (not b!1891153) (not b!1891193) (not b!1891077) (not b!1891204) (not b!1891119) (not d!579013) (not b!1891012) (not b!1891121) (not b!1891185) (not b!1890796) (not b!1891194) (not d!579015) (not b!1891192) (not b!1891106) (not b!1891187) (not b!1891195) (not tb!114849) (not b!1891107) (not b_next!53339) (not b!1891184) (not b!1891182) (not b!1891183) (not b!1891049) (not b!1891069) (not b!1891027) (not b!1891174) (not b!1891191) b_and!145527 (not b!1891006) (not b!1891036) (not b!1891134) (not b!1891142) (not b!1891052) (not b_lambda!62007) (not b!1891051) (not tb!114847) (not b_next!53363) (not d!579021) (not b!1891186) b_and!145521 (not b!1891140) (not b!1891132) b_and!145525 (not b!1891112) (not b!1891155) (not b!1891028) (not b!1891176) (not b!1891042) (not b_lambda!62005) (not b!1891008) (not b!1891060) (not b!1891003) (not b!1890793) (not b!1891076) (not b!1891058) (not b!1891150) (not b!1891055) (not d!579027) (not b_next!53357) (not b!1891178) (not b!1891007) (not b!1891131) (not b!1891044) (not b!1891054))
(check-sat b_and!145517 (not b_next!53353) b_and!145495 (not b_next!53337) b_and!145519 (not b_next!53359) (not b_next!53361) (not b_next!53339) b_and!145527 b_and!145523 (not b_next!53363) (not b_next!53357) (not b_next!53355) b_and!145529 b_and!145521 b_and!145525)
(get-model)

(declare-fun d!579167 () Bool)

(assert (=> d!579167 (= (inv!28233 (xs!9933 (left!16993 (right!17323 (c!308318 v!6342))))) (<= (size!16780 (innerList!7103 (xs!9933 (left!16993 (right!17323 (c!308318 v!6342)))))) 2147483647))))

(declare-fun bs!413125 () Bool)

(assert (= bs!413125 d!579167))

(declare-fun m!2322353 () Bool)

(assert (=> bs!413125 m!2322353))

(assert (=> b!1891191 d!579167))

(declare-fun d!579169 () Bool)

(declare-fun res!844424 () Bool)

(declare-fun e!1207339 () Bool)

(assert (=> d!579169 (=> (not res!844424) (not e!1207339))))

(assert (=> d!579169 (= res!844424 (= (csize!14316 (left!16993 (left!16993 (c!308318 v!6342)))) (+ (size!16781 (left!16993 (left!16993 (left!16993 (c!308318 v!6342))))) (size!16781 (right!17323 (left!16993 (left!16993 (c!308318 v!6342))))))))))

(assert (=> d!579169 (= (inv!28231 (left!16993 (left!16993 (c!308318 v!6342)))) e!1207339)))

(declare-fun b!1891318 () Bool)

(declare-fun res!844425 () Bool)

(assert (=> b!1891318 (=> (not res!844425) (not e!1207339))))

(assert (=> b!1891318 (= res!844425 (and (not (= (left!16993 (left!16993 (left!16993 (c!308318 v!6342)))) Empty!7043)) (not (= (right!17323 (left!16993 (left!16993 (c!308318 v!6342)))) Empty!7043))))))

(declare-fun b!1891319 () Bool)

(declare-fun res!844426 () Bool)

(assert (=> b!1891319 (=> (not res!844426) (not e!1207339))))

(assert (=> b!1891319 (= res!844426 (= (cheight!7254 (left!16993 (left!16993 (c!308318 v!6342)))) (+ (max!0 (height!1096 (left!16993 (left!16993 (left!16993 (c!308318 v!6342))))) (height!1096 (right!17323 (left!16993 (left!16993 (c!308318 v!6342)))))) 1)))))

(declare-fun b!1891320 () Bool)

(assert (=> b!1891320 (= e!1207339 (<= 0 (cheight!7254 (left!16993 (left!16993 (c!308318 v!6342))))))))

(assert (= (and d!579169 res!844424) b!1891318))

(assert (= (and b!1891318 res!844425) b!1891319))

(assert (= (and b!1891319 res!844426) b!1891320))

(declare-fun m!2322355 () Bool)

(assert (=> d!579169 m!2322355))

(declare-fun m!2322357 () Bool)

(assert (=> d!579169 m!2322357))

(declare-fun m!2322359 () Bool)

(assert (=> b!1891319 m!2322359))

(declare-fun m!2322361 () Bool)

(assert (=> b!1891319 m!2322361))

(assert (=> b!1891319 m!2322359))

(assert (=> b!1891319 m!2322361))

(declare-fun m!2322363 () Bool)

(assert (=> b!1891319 m!2322363))

(assert (=> b!1891129 d!579169))

(declare-fun b!1891321 () Bool)

(declare-fun res!844427 () Bool)

(declare-fun e!1207340 () Bool)

(assert (=> b!1891321 (=> (not res!844427) (not e!1207340))))

(assert (=> b!1891321 (= res!844427 (<= (- (height!1096 (left!16993 (right!17323 (left!16993 (c!308318 v!6342))))) (height!1096 (right!17323 (right!17323 (left!16993 (c!308318 v!6342)))))) 1))))

(declare-fun b!1891322 () Bool)

(declare-fun res!844430 () Bool)

(assert (=> b!1891322 (=> (not res!844430) (not e!1207340))))

(assert (=> b!1891322 (= res!844430 (isBalanced!2213 (right!17323 (right!17323 (left!16993 (c!308318 v!6342))))))))

(declare-fun b!1891323 () Bool)

(declare-fun res!844428 () Bool)

(assert (=> b!1891323 (=> (not res!844428) (not e!1207340))))

(assert (=> b!1891323 (= res!844428 (not (isEmpty!13006 (left!16993 (right!17323 (left!16993 (c!308318 v!6342)))))))))

(declare-fun d!579171 () Bool)

(declare-fun res!844432 () Bool)

(declare-fun e!1207341 () Bool)

(assert (=> d!579171 (=> res!844432 e!1207341)))

(assert (=> d!579171 (= res!844432 (not ((_ is Node!7043) (right!17323 (left!16993 (c!308318 v!6342))))))))

(assert (=> d!579171 (= (isBalanced!2213 (right!17323 (left!16993 (c!308318 v!6342)))) e!1207341)))

(declare-fun b!1891324 () Bool)

(declare-fun res!844431 () Bool)

(assert (=> b!1891324 (=> (not res!844431) (not e!1207340))))

(assert (=> b!1891324 (= res!844431 (isBalanced!2213 (left!16993 (right!17323 (left!16993 (c!308318 v!6342))))))))

(declare-fun b!1891325 () Bool)

(assert (=> b!1891325 (= e!1207341 e!1207340)))

(declare-fun res!844429 () Bool)

(assert (=> b!1891325 (=> (not res!844429) (not e!1207340))))

(assert (=> b!1891325 (= res!844429 (<= (- 1) (- (height!1096 (left!16993 (right!17323 (left!16993 (c!308318 v!6342))))) (height!1096 (right!17323 (right!17323 (left!16993 (c!308318 v!6342))))))))))

(declare-fun b!1891326 () Bool)

(assert (=> b!1891326 (= e!1207340 (not (isEmpty!13006 (right!17323 (right!17323 (left!16993 (c!308318 v!6342)))))))))

(assert (= (and d!579171 (not res!844432)) b!1891325))

(assert (= (and b!1891325 res!844429) b!1891321))

(assert (= (and b!1891321 res!844427) b!1891324))

(assert (= (and b!1891324 res!844431) b!1891322))

(assert (= (and b!1891322 res!844430) b!1891323))

(assert (= (and b!1891323 res!844428) b!1891326))

(declare-fun m!2322365 () Bool)

(assert (=> b!1891324 m!2322365))

(declare-fun m!2322367 () Bool)

(assert (=> b!1891326 m!2322367))

(declare-fun m!2322369 () Bool)

(assert (=> b!1891323 m!2322369))

(declare-fun m!2322371 () Bool)

(assert (=> b!1891321 m!2322371))

(declare-fun m!2322373 () Bool)

(assert (=> b!1891321 m!2322373))

(assert (=> b!1891325 m!2322371))

(assert (=> b!1891325 m!2322373))

(declare-fun m!2322375 () Bool)

(assert (=> b!1891322 m!2322375))

(assert (=> b!1891050 d!579171))

(declare-fun d!579173 () Bool)

(assert (=> d!579173 (= (max!0 (height!1096 (left!16993 (right!17323 (c!308318 v!6342)))) (height!1096 (right!17323 (right!17323 (c!308318 v!6342))))) (ite (< (height!1096 (left!16993 (right!17323 (c!308318 v!6342)))) (height!1096 (right!17323 (right!17323 (c!308318 v!6342))))) (height!1096 (right!17323 (right!17323 (c!308318 v!6342)))) (height!1096 (left!16993 (right!17323 (c!308318 v!6342))))))))

(assert (=> b!1891109 d!579173))

(declare-fun d!579175 () Bool)

(assert (=> d!579175 (= (height!1096 (left!16993 (right!17323 (c!308318 v!6342)))) (ite ((_ is Empty!7043) (left!16993 (right!17323 (c!308318 v!6342)))) 0 (ite ((_ is Leaf!10382) (left!16993 (right!17323 (c!308318 v!6342)))) 1 (cheight!7254 (left!16993 (right!17323 (c!308318 v!6342)))))))))

(assert (=> b!1891109 d!579175))

(declare-fun d!579177 () Bool)

(assert (=> d!579177 (= (height!1096 (right!17323 (right!17323 (c!308318 v!6342)))) (ite ((_ is Empty!7043) (right!17323 (right!17323 (c!308318 v!6342)))) 0 (ite ((_ is Leaf!10382) (right!17323 (right!17323 (c!308318 v!6342)))) 1 (cheight!7254 (right!17323 (right!17323 (c!308318 v!6342)))))))))

(assert (=> b!1891109 d!579177))

(assert (=> b!1890796 d!579009))

(assert (=> b!1890796 d!579011))

(declare-fun d!579179 () Bool)

(declare-fun lt!724211 () Int)

(assert (=> d!579179 (>= lt!724211 0)))

(declare-fun e!1207342 () Int)

(assert (=> d!579179 (= lt!724211 e!1207342)))

(declare-fun c!308528 () Bool)

(assert (=> d!579179 (= c!308528 ((_ is Nil!21177) (list!8594 (xs!9933 (right!17323 (c!308318 v!6342))))))))

(assert (=> d!579179 (= (size!16780 (list!8594 (xs!9933 (right!17323 (c!308318 v!6342))))) lt!724211)))

(declare-fun b!1891327 () Bool)

(assert (=> b!1891327 (= e!1207342 0)))

(declare-fun b!1891328 () Bool)

(assert (=> b!1891328 (= e!1207342 (+ 1 (size!16780 (t!175426 (list!8594 (xs!9933 (right!17323 (c!308318 v!6342))))))))))

(assert (= (and d!579179 c!308528) b!1891327))

(assert (= (and d!579179 (not c!308528)) b!1891328))

(declare-fun m!2322377 () Bool)

(assert (=> b!1891328 m!2322377))

(assert (=> d!578975 d!579179))

(declare-fun d!579181 () Bool)

(assert (=> d!579181 (= (list!8594 (xs!9933 (right!17323 (c!308318 v!6342)))) (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))))

(assert (=> d!578975 d!579181))

(declare-fun lt!724212 () List!21258)

(declare-fun e!1207343 () Bool)

(declare-fun b!1891332 () Bool)

(assert (=> b!1891332 (= e!1207343 (or (not (= (printList!1016 thiss!13601 (t!175426 (t!175426 (dropList!762 v!6342 from!837)))) Nil!21176)) (= lt!724212 (t!175425 (list!8585 (charsOf!2312 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))))))))

(declare-fun b!1891330 () Bool)

(declare-fun e!1207344 () List!21258)

(assert (=> b!1891330 (= e!1207344 (Cons!21176 (h!26577 (t!175425 (list!8585 (charsOf!2312 (h!26578 (t!175426 (dropList!762 v!6342 from!837))))))) (++!5711 (t!175425 (t!175425 (list!8585 (charsOf!2312 (h!26578 (t!175426 (dropList!762 v!6342 from!837))))))) (printList!1016 thiss!13601 (t!175426 (t!175426 (dropList!762 v!6342 from!837)))))))))

(declare-fun b!1891331 () Bool)

(declare-fun res!844434 () Bool)

(assert (=> b!1891331 (=> (not res!844434) (not e!1207343))))

(assert (=> b!1891331 (= res!844434 (= (size!16783 lt!724212) (+ (size!16783 (t!175425 (list!8585 (charsOf!2312 (h!26578 (t!175426 (dropList!762 v!6342 from!837))))))) (size!16783 (printList!1016 thiss!13601 (t!175426 (t!175426 (dropList!762 v!6342 from!837))))))))))

(declare-fun d!579183 () Bool)

(assert (=> d!579183 e!1207343))

(declare-fun res!844433 () Bool)

(assert (=> d!579183 (=> (not res!844433) (not e!1207343))))

(assert (=> d!579183 (= res!844433 (= (content!3124 lt!724212) ((_ map or) (content!3124 (t!175425 (list!8585 (charsOf!2312 (h!26578 (t!175426 (dropList!762 v!6342 from!837))))))) (content!3124 (printList!1016 thiss!13601 (t!175426 (t!175426 (dropList!762 v!6342 from!837))))))))))

(assert (=> d!579183 (= lt!724212 e!1207344)))

(declare-fun c!308529 () Bool)

(assert (=> d!579183 (= c!308529 ((_ is Nil!21176) (t!175425 (list!8585 (charsOf!2312 (h!26578 (t!175426 (dropList!762 v!6342 from!837))))))))))

(assert (=> d!579183 (= (++!5711 (t!175425 (list!8585 (charsOf!2312 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))) (printList!1016 thiss!13601 (t!175426 (t!175426 (dropList!762 v!6342 from!837))))) lt!724212)))

(declare-fun b!1891329 () Bool)

(assert (=> b!1891329 (= e!1207344 (printList!1016 thiss!13601 (t!175426 (t!175426 (dropList!762 v!6342 from!837)))))))

(assert (= (and d!579183 c!308529) b!1891329))

(assert (= (and d!579183 (not c!308529)) b!1891330))

(assert (= (and d!579183 res!844433) b!1891331))

(assert (= (and b!1891331 res!844434) b!1891332))

(assert (=> b!1891330 m!2321515))

(declare-fun m!2322379 () Bool)

(assert (=> b!1891330 m!2322379))

(declare-fun m!2322381 () Bool)

(assert (=> b!1891331 m!2322381))

(declare-fun m!2322383 () Bool)

(assert (=> b!1891331 m!2322383))

(assert (=> b!1891331 m!2321515))

(assert (=> b!1891331 m!2321911))

(declare-fun m!2322385 () Bool)

(assert (=> d!579183 m!2322385))

(declare-fun m!2322387 () Bool)

(assert (=> d!579183 m!2322387))

(assert (=> d!579183 m!2321515))

(assert (=> d!579183 m!2321917))

(assert (=> b!1891062 d!579183))

(declare-fun d!579185 () Bool)

(declare-fun c!308530 () Bool)

(assert (=> d!579185 (= c!308530 ((_ is Nil!21177) (t!175426 (list!8590 (c!308318 v!6342)))))))

(declare-fun e!1207345 () (InoxSet Token!7056))

(assert (=> d!579185 (= (content!3123 (t!175426 (list!8590 (c!308318 v!6342)))) e!1207345)))

(declare-fun b!1891333 () Bool)

(assert (=> b!1891333 (= e!1207345 ((as const (Array Token!7056 Bool)) false))))

(declare-fun b!1891334 () Bool)

(assert (=> b!1891334 (= e!1207345 ((_ map or) (store ((as const (Array Token!7056 Bool)) false) (h!26578 (t!175426 (list!8590 (c!308318 v!6342)))) true) (content!3123 (t!175426 (t!175426 (list!8590 (c!308318 v!6342)))))))))

(assert (= (and d!579185 c!308530) b!1891333))

(assert (= (and d!579185 (not c!308530)) b!1891334))

(declare-fun m!2322389 () Bool)

(assert (=> b!1891334 m!2322389))

(declare-fun m!2322391 () Bool)

(assert (=> b!1891334 m!2322391))

(assert (=> b!1891142 d!579185))

(declare-fun b!1891337 () Bool)

(declare-fun e!1207347 () List!21258)

(assert (=> b!1891337 (= e!1207347 (list!8595 (xs!9932 (c!308316 lt!724148))))))

(declare-fun b!1891335 () Bool)

(declare-fun e!1207346 () List!21258)

(assert (=> b!1891335 (= e!1207346 Nil!21176)))

(declare-fun d!579187 () Bool)

(declare-fun c!308531 () Bool)

(assert (=> d!579187 (= c!308531 ((_ is Empty!7042) (c!308316 lt!724148)))))

(assert (=> d!579187 (= (list!8589 (c!308316 lt!724148)) e!1207346)))

(declare-fun b!1891338 () Bool)

(assert (=> b!1891338 (= e!1207347 (++!5711 (list!8589 (left!16992 (c!308316 lt!724148))) (list!8589 (right!17322 (c!308316 lt!724148)))))))

(declare-fun b!1891336 () Bool)

(assert (=> b!1891336 (= e!1207346 e!1207347)))

(declare-fun c!308532 () Bool)

(assert (=> b!1891336 (= c!308532 ((_ is Leaf!10381) (c!308316 lt!724148)))))

(assert (= (and d!579187 c!308531) b!1891335))

(assert (= (and d!579187 (not c!308531)) b!1891336))

(assert (= (and b!1891336 c!308532) b!1891337))

(assert (= (and b!1891336 (not c!308532)) b!1891338))

(declare-fun m!2322393 () Bool)

(assert (=> b!1891337 m!2322393))

(declare-fun m!2322395 () Bool)

(assert (=> b!1891338 m!2322395))

(declare-fun m!2322397 () Bool)

(assert (=> b!1891338 m!2322397))

(assert (=> b!1891338 m!2322395))

(assert (=> b!1891338 m!2322397))

(declare-fun m!2322399 () Bool)

(assert (=> b!1891338 m!2322399))

(assert (=> d!578999 d!579187))

(declare-fun d!579189 () Bool)

(assert (=> d!579189 (= (inv!28233 (xs!9933 (right!17323 (left!16993 (c!308318 v!6342))))) (<= (size!16780 (innerList!7103 (xs!9933 (right!17323 (left!16993 (c!308318 v!6342)))))) 2147483647))))

(declare-fun bs!413126 () Bool)

(assert (= bs!413126 d!579189))

(declare-fun m!2322401 () Bool)

(assert (=> bs!413126 m!2322401))

(assert (=> b!1891184 d!579189))

(declare-fun d!579191 () Bool)

(declare-fun c!308533 () Bool)

(assert (=> d!579191 (= c!308533 ((_ is Nil!21176) lt!724183))))

(declare-fun e!1207348 () (InoxSet C!10500))

(assert (=> d!579191 (= (content!3124 lt!724183) e!1207348)))

(declare-fun b!1891339 () Bool)

(assert (=> b!1891339 (= e!1207348 ((as const (Array C!10500 Bool)) false))))

(declare-fun b!1891340 () Bool)

(assert (=> b!1891340 (= e!1207348 ((_ map or) (store ((as const (Array C!10500 Bool)) false) (h!26577 lt!724183) true) (content!3124 (t!175425 lt!724183))))))

(assert (= (and d!579191 c!308533) b!1891339))

(assert (= (and d!579191 (not c!308533)) b!1891340))

(declare-fun m!2322403 () Bool)

(assert (=> b!1891340 m!2322403))

(declare-fun m!2322405 () Bool)

(assert (=> b!1891340 m!2322405))

(assert (=> d!579013 d!579191))

(declare-fun d!579193 () Bool)

(declare-fun c!308534 () Bool)

(assert (=> d!579193 (= c!308534 ((_ is Nil!21176) (list!8585 (charsOf!2312 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))))))

(declare-fun e!1207349 () (InoxSet C!10500))

(assert (=> d!579193 (= (content!3124 (list!8585 (charsOf!2312 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))) e!1207349)))

(declare-fun b!1891341 () Bool)

(assert (=> b!1891341 (= e!1207349 ((as const (Array C!10500 Bool)) false))))

(declare-fun b!1891342 () Bool)

(assert (=> b!1891342 (= e!1207349 ((_ map or) (store ((as const (Array C!10500 Bool)) false) (h!26577 (list!8585 (charsOf!2312 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))) true) (content!3124 (t!175425 (list!8585 (charsOf!2312 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))))))))

(assert (= (and d!579193 c!308534) b!1891341))

(assert (= (and d!579193 (not c!308534)) b!1891342))

(declare-fun m!2322407 () Bool)

(assert (=> b!1891342 m!2322407))

(assert (=> b!1891342 m!2322387))

(assert (=> d!579013 d!579193))

(declare-fun d!579195 () Bool)

(declare-fun c!308535 () Bool)

(assert (=> d!579195 (= c!308535 ((_ is Nil!21176) (printList!1016 thiss!13601 (t!175426 (t!175426 (dropList!762 v!6342 from!837))))))))

(declare-fun e!1207350 () (InoxSet C!10500))

(assert (=> d!579195 (= (content!3124 (printList!1016 thiss!13601 (t!175426 (t!175426 (dropList!762 v!6342 from!837))))) e!1207350)))

(declare-fun b!1891343 () Bool)

(assert (=> b!1891343 (= e!1207350 ((as const (Array C!10500 Bool)) false))))

(declare-fun b!1891344 () Bool)

(assert (=> b!1891344 (= e!1207350 ((_ map or) (store ((as const (Array C!10500 Bool)) false) (h!26577 (printList!1016 thiss!13601 (t!175426 (t!175426 (dropList!762 v!6342 from!837))))) true) (content!3124 (t!175425 (printList!1016 thiss!13601 (t!175426 (t!175426 (dropList!762 v!6342 from!837))))))))))

(assert (= (and d!579195 c!308535) b!1891343))

(assert (= (and d!579195 (not c!308535)) b!1891344))

(declare-fun m!2322409 () Bool)

(assert (=> b!1891344 m!2322409))

(declare-fun m!2322411 () Bool)

(assert (=> b!1891344 m!2322411))

(assert (=> d!579013 d!579195))

(declare-fun d!579197 () Bool)

(assert (=> d!579197 (= (inv!28223 (tag!4166 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))))) (= (mod (str.len (value!118522 (tag!4166 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))) 2) 0))))

(assert (=> b!1891188 d!579197))

(declare-fun d!579199 () Bool)

(declare-fun res!844435 () Bool)

(declare-fun e!1207351 () Bool)

(assert (=> d!579199 (=> (not res!844435) (not e!1207351))))

(assert (=> d!579199 (= res!844435 (semiInverseModEq!1523 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))))) (toValue!5357 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))))))

(assert (=> d!579199 (= (inv!28241 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))))) e!1207351)))

(declare-fun b!1891345 () Bool)

(assert (=> b!1891345 (= e!1207351 (equivClasses!1450 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))))) (toValue!5357 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))))))

(assert (= (and d!579199 res!844435) b!1891345))

(declare-fun m!2322413 () Bool)

(assert (=> d!579199 m!2322413))

(declare-fun m!2322415 () Bool)

(assert (=> b!1891345 m!2322415))

(assert (=> b!1891188 d!579199))

(declare-fun d!579201 () Bool)

(declare-fun res!844436 () Bool)

(declare-fun e!1207352 () Bool)

(assert (=> d!579201 (=> (not res!844436) (not e!1207352))))

(assert (=> d!579201 (= res!844436 (= (csize!14316 (left!16993 (right!17323 (c!308318 v!6342)))) (+ (size!16781 (left!16993 (left!16993 (right!17323 (c!308318 v!6342))))) (size!16781 (right!17323 (left!16993 (right!17323 (c!308318 v!6342))))))))))

(assert (=> d!579201 (= (inv!28231 (left!16993 (right!17323 (c!308318 v!6342)))) e!1207352)))

(declare-fun b!1891346 () Bool)

(declare-fun res!844437 () Bool)

(assert (=> b!1891346 (=> (not res!844437) (not e!1207352))))

(assert (=> b!1891346 (= res!844437 (and (not (= (left!16993 (left!16993 (right!17323 (c!308318 v!6342)))) Empty!7043)) (not (= (right!17323 (left!16993 (right!17323 (c!308318 v!6342)))) Empty!7043))))))

(declare-fun b!1891347 () Bool)

(declare-fun res!844438 () Bool)

(assert (=> b!1891347 (=> (not res!844438) (not e!1207352))))

(assert (=> b!1891347 (= res!844438 (= (cheight!7254 (left!16993 (right!17323 (c!308318 v!6342)))) (+ (max!0 (height!1096 (left!16993 (left!16993 (right!17323 (c!308318 v!6342))))) (height!1096 (right!17323 (left!16993 (right!17323 (c!308318 v!6342)))))) 1)))))

(declare-fun b!1891348 () Bool)

(assert (=> b!1891348 (= e!1207352 (<= 0 (cheight!7254 (left!16993 (right!17323 (c!308318 v!6342))))))))

(assert (= (and d!579201 res!844436) b!1891346))

(assert (= (and b!1891346 res!844437) b!1891347))

(assert (= (and b!1891347 res!844438) b!1891348))

(declare-fun m!2322417 () Bool)

(assert (=> d!579201 m!2322417))

(declare-fun m!2322419 () Bool)

(assert (=> d!579201 m!2322419))

(declare-fun m!2322421 () Bool)

(assert (=> b!1891347 m!2322421))

(declare-fun m!2322423 () Bool)

(assert (=> b!1891347 m!2322423))

(assert (=> b!1891347 m!2322421))

(assert (=> b!1891347 m!2322423))

(declare-fun m!2322425 () Bool)

(assert (=> b!1891347 m!2322425))

(assert (=> b!1891055 d!579201))

(declare-fun d!579203 () Bool)

(declare-fun res!844439 () Bool)

(declare-fun e!1207353 () Bool)

(assert (=> d!579203 (=> (not res!844439) (not e!1207353))))

(assert (=> d!579203 (= res!844439 (not (isEmpty!13010 (originalCharacters!4559 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))))))))

(assert (=> d!579203 (= (inv!28240 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))) e!1207353)))

(declare-fun b!1891349 () Bool)

(declare-fun res!844440 () Bool)

(assert (=> b!1891349 (=> (not res!844440) (not e!1207353))))

(assert (=> b!1891349 (= res!844440 (= (originalCharacters!4559 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))) (list!8585 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))))) (value!118523 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))))))

(declare-fun b!1891350 () Bool)

(assert (=> b!1891350 (= e!1207353 (= (size!16776 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))) (size!16783 (originalCharacters!4559 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))))))))

(assert (= (and d!579203 res!844439) b!1891349))

(assert (= (and b!1891349 res!844440) b!1891350))

(declare-fun b_lambda!62017 () Bool)

(assert (=> (not b_lambda!62017) (not b!1891349)))

(declare-fun t!175520 () Bool)

(declare-fun tb!114901 () Bool)

(assert (=> (and b!1890787 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))) t!175520) tb!114901))

(declare-fun b!1891351 () Bool)

(declare-fun e!1207354 () Bool)

(declare-fun tp!539485 () Bool)

(assert (=> b!1891351 (= e!1207354 (and (inv!28238 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))))) (value!118523 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))) tp!539485))))

(declare-fun result!138956 () Bool)

(assert (=> tb!114901 (= result!138956 (and (inv!28239 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))))) (value!118523 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))))) e!1207354))))

(assert (= tb!114901 b!1891351))

(declare-fun m!2322427 () Bool)

(assert (=> b!1891351 m!2322427))

(declare-fun m!2322429 () Bool)

(assert (=> tb!114901 m!2322429))

(assert (=> b!1891349 t!175520))

(declare-fun b_and!145563 () Bool)

(assert (= b_and!145517 (and (=> t!175520 result!138956) b_and!145563)))

(declare-fun t!175522 () Bool)

(declare-fun tb!114903 () Bool)

(assert (=> (and b!1891156 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))) t!175522) tb!114903))

(declare-fun result!138958 () Bool)

(assert (= result!138958 result!138956))

(assert (=> b!1891349 t!175522))

(declare-fun b_and!145565 () Bool)

(assert (= b_and!145521 (and (=> t!175522 result!138958) b_and!145565)))

(declare-fun t!175524 () Bool)

(declare-fun tb!114905 () Bool)

(assert (=> (and b!1891179 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))) t!175524) tb!114905))

(declare-fun result!138960 () Bool)

(assert (= result!138960 result!138956))

(assert (=> b!1891349 t!175524))

(declare-fun b_and!145567 () Bool)

(assert (= b_and!145525 (and (=> t!175524 result!138960) b_and!145567)))

(declare-fun t!175526 () Bool)

(declare-fun tb!114907 () Bool)

(assert (=> (and b!1891189 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))) t!175526) tb!114907))

(declare-fun result!138962 () Bool)

(assert (= result!138962 result!138956))

(assert (=> b!1891349 t!175526))

(declare-fun b_and!145569 () Bool)

(assert (= b_and!145529 (and (=> t!175526 result!138962) b_and!145569)))

(declare-fun m!2322431 () Bool)

(assert (=> d!579203 m!2322431))

(declare-fun m!2322433 () Bool)

(assert (=> b!1891349 m!2322433))

(assert (=> b!1891349 m!2322433))

(declare-fun m!2322435 () Bool)

(assert (=> b!1891349 m!2322435))

(declare-fun m!2322437 () Bool)

(assert (=> b!1891350 m!2322437))

(assert (=> b!1891153 d!579203))

(declare-fun d!579205 () Bool)

(declare-fun lt!724213 () Int)

(assert (=> d!579205 (>= lt!724213 0)))

(declare-fun e!1207355 () Int)

(assert (=> d!579205 (= lt!724213 e!1207355)))

(declare-fun c!308536 () Bool)

(assert (=> d!579205 (= c!308536 ((_ is Nil!21177) (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))

(assert (=> d!579205 (= (size!16780 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))) lt!724213)))

(declare-fun b!1891352 () Bool)

(assert (=> b!1891352 (= e!1207355 0)))

(declare-fun b!1891353 () Bool)

(assert (=> b!1891353 (= e!1207355 (+ 1 (size!16780 (t!175426 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))))

(assert (= (and d!579205 c!308536) b!1891352))

(assert (= (and d!579205 (not c!308536)) b!1891353))

(declare-fun m!2322439 () Bool)

(assert (=> b!1891353 m!2322439))

(assert (=> d!578997 d!579205))

(declare-fun d!579207 () Bool)

(assert (=> d!579207 (= (list!8585 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (value!118523 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (list!8589 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (value!118523 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))))))

(declare-fun bs!413127 () Bool)

(assert (= bs!413127 d!579207))

(declare-fun m!2322441 () Bool)

(assert (=> bs!413127 m!2322441))

(assert (=> b!1891085 d!579207))

(declare-fun d!579209 () Bool)

(declare-fun c!308537 () Bool)

(assert (=> d!579209 (= c!308537 ((_ is Nil!21176) (t!175425 (list!8585 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837)))))))))

(declare-fun e!1207356 () (InoxSet C!10500))

(assert (=> d!579209 (= (content!3124 (t!175425 (list!8585 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837)))))) e!1207356)))

(declare-fun b!1891354 () Bool)

(assert (=> b!1891354 (= e!1207356 ((as const (Array C!10500 Bool)) false))))

(declare-fun b!1891355 () Bool)

(assert (=> b!1891355 (= e!1207356 ((_ map or) (store ((as const (Array C!10500 Bool)) false) (h!26577 (t!175425 (list!8585 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837)))))) true) (content!3124 (t!175425 (t!175425 (list!8585 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837)))))))))))

(assert (= (and d!579209 c!308537) b!1891354))

(assert (= (and d!579209 (not c!308537)) b!1891355))

(declare-fun m!2322443 () Bool)

(assert (=> b!1891355 m!2322443))

(declare-fun m!2322445 () Bool)

(assert (=> b!1891355 m!2322445))

(assert (=> b!1891150 d!579209))

(declare-fun d!579211 () Bool)

(declare-fun lt!724214 () Int)

(assert (=> d!579211 (>= lt!724214 0)))

(declare-fun e!1207357 () Int)

(assert (=> d!579211 (= lt!724214 e!1207357)))

(declare-fun c!308538 () Bool)

(assert (=> d!579211 (= c!308538 ((_ is Nil!21177) (list!8590 (right!17323 (c!308318 v!6342)))))))

(assert (=> d!579211 (= (size!16780 (list!8590 (right!17323 (c!308318 v!6342)))) lt!724214)))

(declare-fun b!1891356 () Bool)

(assert (=> b!1891356 (= e!1207357 0)))

(declare-fun b!1891357 () Bool)

(assert (=> b!1891357 (= e!1207357 (+ 1 (size!16780 (t!175426 (list!8590 (right!17323 (c!308318 v!6342)))))))))

(assert (= (and d!579211 c!308538) b!1891356))

(assert (= (and d!579211 (not c!308538)) b!1891357))

(declare-fun m!2322447 () Bool)

(assert (=> b!1891357 m!2322447))

(assert (=> d!579053 d!579211))

(assert (=> d!579053 d!579033))

(assert (=> b!1891009 d!579179))

(assert (=> b!1891009 d!579181))

(declare-fun d!579213 () Bool)

(declare-fun lt!724215 () Int)

(assert (=> d!579213 (>= lt!724215 0)))

(declare-fun e!1207358 () Int)

(assert (=> d!579213 (= lt!724215 e!1207358)))

(declare-fun c!308539 () Bool)

(assert (=> d!579213 (= c!308539 ((_ is Nil!21177) (t!175426 (t!175426 (list!8591 v!6342)))))))

(assert (=> d!579213 (= (size!16780 (t!175426 (t!175426 (list!8591 v!6342)))) lt!724215)))

(declare-fun b!1891358 () Bool)

(assert (=> b!1891358 (= e!1207358 0)))

(declare-fun b!1891359 () Bool)

(assert (=> b!1891359 (= e!1207358 (+ 1 (size!16780 (t!175426 (t!175426 (t!175426 (list!8591 v!6342)))))))))

(assert (= (and d!579213 c!308539) b!1891358))

(assert (= (and d!579213 (not c!308539)) b!1891359))

(declare-fun m!2322449 () Bool)

(assert (=> b!1891359 m!2322449))

(assert (=> b!1891125 d!579213))

(declare-fun d!579215 () Bool)

(declare-fun lt!724216 () Bool)

(assert (=> d!579215 (= lt!724216 (isEmpty!13009 (list!8590 (left!16993 (right!17323 (c!308318 v!6342))))))))

(assert (=> d!579215 (= lt!724216 (= (size!16781 (left!16993 (right!17323 (c!308318 v!6342)))) 0))))

(assert (=> d!579215 (= (isEmpty!13006 (left!16993 (right!17323 (c!308318 v!6342)))) lt!724216)))

(declare-fun bs!413128 () Bool)

(assert (= bs!413128 d!579215))

(assert (=> bs!413128 m!2321989))

(assert (=> bs!413128 m!2321989))

(declare-fun m!2322451 () Bool)

(assert (=> bs!413128 m!2322451))

(assert (=> bs!413128 m!2321995))

(assert (=> b!1891005 d!579215))

(declare-fun d!579217 () Bool)

(assert (=> d!579217 (= (inv!28247 (xs!9932 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837))))))) (<= (size!16783 (innerList!7102 (xs!9932 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837)))))))) 2147483647))))

(declare-fun bs!413129 () Bool)

(assert (= bs!413129 d!579217))

(declare-fun m!2322453 () Bool)

(assert (=> bs!413129 m!2322453))

(assert (=> b!1891205 d!579217))

(declare-fun d!579219 () Bool)

(declare-fun charsToBigInt!0 (List!21257 Int) Int)

(assert (=> d!579219 (= (inv!15 (value!118523 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))) (= (charsToBigInt!0 (text!27665 (value!118523 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))) 0) (value!118518 (value!118523 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))))

(declare-fun bs!413130 () Bool)

(assert (= bs!413130 d!579219))

(declare-fun m!2322455 () Bool)

(assert (=> bs!413130 m!2322455))

(assert (=> b!1891028 d!579219))

(declare-fun d!579221 () Bool)

(declare-fun lt!724217 () Bool)

(assert (=> d!579221 (= lt!724217 (isEmpty!13009 (list!8590 (right!17323 (left!16993 (c!308318 v!6342))))))))

(assert (=> d!579221 (= lt!724217 (= (size!16781 (right!17323 (left!16993 (c!308318 v!6342)))) 0))))

(assert (=> d!579221 (= (isEmpty!13006 (right!17323 (left!16993 (c!308318 v!6342)))) lt!724217)))

(declare-fun bs!413131 () Bool)

(assert (= bs!413131 d!579221))

(assert (=> bs!413131 m!2321983))

(assert (=> bs!413131 m!2321983))

(declare-fun m!2322457 () Bool)

(assert (=> bs!413131 m!2322457))

(assert (=> bs!413131 m!2322015))

(assert (=> b!1891054 d!579221))

(declare-fun e!1207359 () Bool)

(declare-fun lt!724218 () List!21258)

(declare-fun b!1891363 () Bool)

(assert (=> b!1891363 (= e!1207359 (or (not (= (printList!1016 thiss!13601 (t!175426 (t!175426 (t!175426 (dropList!762 v!6342 from!837))))) Nil!21176)) (= lt!724218 (list!8585 (charsOf!2312 (h!26578 (t!175426 (t!175426 (dropList!762 v!6342 from!837)))))))))))

(declare-fun b!1891361 () Bool)

(declare-fun e!1207360 () List!21258)

(assert (=> b!1891361 (= e!1207360 (Cons!21176 (h!26577 (list!8585 (charsOf!2312 (h!26578 (t!175426 (t!175426 (dropList!762 v!6342 from!837))))))) (++!5711 (t!175425 (list!8585 (charsOf!2312 (h!26578 (t!175426 (t!175426 (dropList!762 v!6342 from!837))))))) (printList!1016 thiss!13601 (t!175426 (t!175426 (t!175426 (dropList!762 v!6342 from!837))))))))))

(declare-fun b!1891362 () Bool)

(declare-fun res!844442 () Bool)

(assert (=> b!1891362 (=> (not res!844442) (not e!1207359))))

(assert (=> b!1891362 (= res!844442 (= (size!16783 lt!724218) (+ (size!16783 (list!8585 (charsOf!2312 (h!26578 (t!175426 (t!175426 (dropList!762 v!6342 from!837))))))) (size!16783 (printList!1016 thiss!13601 (t!175426 (t!175426 (t!175426 (dropList!762 v!6342 from!837)))))))))))

(declare-fun d!579223 () Bool)

(assert (=> d!579223 e!1207359))

(declare-fun res!844441 () Bool)

(assert (=> d!579223 (=> (not res!844441) (not e!1207359))))

(assert (=> d!579223 (= res!844441 (= (content!3124 lt!724218) ((_ map or) (content!3124 (list!8585 (charsOf!2312 (h!26578 (t!175426 (t!175426 (dropList!762 v!6342 from!837))))))) (content!3124 (printList!1016 thiss!13601 (t!175426 (t!175426 (t!175426 (dropList!762 v!6342 from!837)))))))))))

(assert (=> d!579223 (= lt!724218 e!1207360)))

(declare-fun c!308540 () Bool)

(assert (=> d!579223 (= c!308540 ((_ is Nil!21176) (list!8585 (charsOf!2312 (h!26578 (t!175426 (t!175426 (dropList!762 v!6342 from!837))))))))))

(assert (=> d!579223 (= (++!5711 (list!8585 (charsOf!2312 (h!26578 (t!175426 (t!175426 (dropList!762 v!6342 from!837)))))) (printList!1016 thiss!13601 (t!175426 (t!175426 (t!175426 (dropList!762 v!6342 from!837)))))) lt!724218)))

(declare-fun b!1891360 () Bool)

(assert (=> b!1891360 (= e!1207360 (printList!1016 thiss!13601 (t!175426 (t!175426 (t!175426 (dropList!762 v!6342 from!837))))))))

(assert (= (and d!579223 c!308540) b!1891360))

(assert (= (and d!579223 (not c!308540)) b!1891361))

(assert (= (and d!579223 res!844441) b!1891362))

(assert (= (and b!1891362 res!844442) b!1891363))

(assert (=> b!1891361 m!2321933))

(declare-fun m!2322459 () Bool)

(assert (=> b!1891361 m!2322459))

(declare-fun m!2322461 () Bool)

(assert (=> b!1891362 m!2322461))

(assert (=> b!1891362 m!2321931))

(declare-fun m!2322463 () Bool)

(assert (=> b!1891362 m!2322463))

(assert (=> b!1891362 m!2321933))

(declare-fun m!2322465 () Bool)

(assert (=> b!1891362 m!2322465))

(declare-fun m!2322467 () Bool)

(assert (=> d!579223 m!2322467))

(assert (=> d!579223 m!2321931))

(declare-fun m!2322469 () Bool)

(assert (=> d!579223 m!2322469))

(assert (=> d!579223 m!2321933))

(declare-fun m!2322471 () Bool)

(assert (=> d!579223 m!2322471))

(assert (=> b!1891066 d!579223))

(declare-fun d!579225 () Bool)

(assert (=> d!579225 (= (list!8585 (charsOf!2312 (h!26578 (t!175426 (t!175426 (dropList!762 v!6342 from!837)))))) (list!8589 (c!308316 (charsOf!2312 (h!26578 (t!175426 (t!175426 (dropList!762 v!6342 from!837))))))))))

(declare-fun bs!413132 () Bool)

(assert (= bs!413132 d!579225))

(declare-fun m!2322473 () Bool)

(assert (=> bs!413132 m!2322473))

(assert (=> b!1891066 d!579225))

(declare-fun d!579227 () Bool)

(declare-fun lt!724219 () BalanceConc!13900)

(assert (=> d!579227 (= (list!8585 lt!724219) (originalCharacters!4559 (h!26578 (t!175426 (t!175426 (dropList!762 v!6342 from!837))))))))

(assert (=> d!579227 (= lt!724219 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (t!175426 (dropList!762 v!6342 from!837))))))) (value!118523 (h!26578 (t!175426 (t!175426 (dropList!762 v!6342 from!837)))))))))

(assert (=> d!579227 (= (charsOf!2312 (h!26578 (t!175426 (t!175426 (dropList!762 v!6342 from!837))))) lt!724219)))

(declare-fun b_lambda!62019 () Bool)

(assert (=> (not b_lambda!62019) (not d!579227)))

(declare-fun tb!114909 () Bool)

(declare-fun t!175528 () Bool)

(assert (=> (and b!1890787 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (t!175426 (dropList!762 v!6342 from!837)))))))) t!175528) tb!114909))

(declare-fun tp!539486 () Bool)

(declare-fun e!1207361 () Bool)

(declare-fun b!1891364 () Bool)

(assert (=> b!1891364 (= e!1207361 (and (inv!28238 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (t!175426 (dropList!762 v!6342 from!837))))))) (value!118523 (h!26578 (t!175426 (t!175426 (dropList!762 v!6342 from!837)))))))) tp!539486))))

(declare-fun result!138964 () Bool)

(assert (=> tb!114909 (= result!138964 (and (inv!28239 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (t!175426 (dropList!762 v!6342 from!837))))))) (value!118523 (h!26578 (t!175426 (t!175426 (dropList!762 v!6342 from!837))))))) e!1207361))))

(assert (= tb!114909 b!1891364))

(declare-fun m!2322475 () Bool)

(assert (=> b!1891364 m!2322475))

(declare-fun m!2322477 () Bool)

(assert (=> tb!114909 m!2322477))

(assert (=> d!579227 t!175528))

(declare-fun b_and!145571 () Bool)

(assert (= b_and!145563 (and (=> t!175528 result!138964) b_and!145571)))

(declare-fun tb!114911 () Bool)

(declare-fun t!175530 () Bool)

(assert (=> (and b!1891156 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (t!175426 (dropList!762 v!6342 from!837)))))))) t!175530) tb!114911))

(declare-fun result!138966 () Bool)

(assert (= result!138966 result!138964))

(assert (=> d!579227 t!175530))

(declare-fun b_and!145573 () Bool)

(assert (= b_and!145565 (and (=> t!175530 result!138966) b_and!145573)))

(declare-fun t!175532 () Bool)

(declare-fun tb!114913 () Bool)

(assert (=> (and b!1891179 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (t!175426 (dropList!762 v!6342 from!837)))))))) t!175532) tb!114913))

(declare-fun result!138968 () Bool)

(assert (= result!138968 result!138964))

(assert (=> d!579227 t!175532))

(declare-fun b_and!145575 () Bool)

(assert (= b_and!145567 (and (=> t!175532 result!138968) b_and!145575)))

(declare-fun t!175534 () Bool)

(declare-fun tb!114915 () Bool)

(assert (=> (and b!1891189 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (t!175426 (dropList!762 v!6342 from!837)))))))) t!175534) tb!114915))

(declare-fun result!138970 () Bool)

(assert (= result!138970 result!138964))

(assert (=> d!579227 t!175534))

(declare-fun b_and!145577 () Bool)

(assert (= b_and!145569 (and (=> t!175534 result!138970) b_and!145577)))

(declare-fun m!2322479 () Bool)

(assert (=> d!579227 m!2322479))

(declare-fun m!2322481 () Bool)

(assert (=> d!579227 m!2322481))

(assert (=> b!1891066 d!579227))

(declare-fun d!579229 () Bool)

(declare-fun c!308541 () Bool)

(assert (=> d!579229 (= c!308541 ((_ is Cons!21177) (t!175426 (t!175426 (t!175426 (dropList!762 v!6342 from!837))))))))

(declare-fun e!1207362 () List!21258)

(assert (=> d!579229 (= (printList!1016 thiss!13601 (t!175426 (t!175426 (t!175426 (dropList!762 v!6342 from!837))))) e!1207362)))

(declare-fun b!1891365 () Bool)

(assert (=> b!1891365 (= e!1207362 (++!5711 (list!8585 (charsOf!2312 (h!26578 (t!175426 (t!175426 (t!175426 (dropList!762 v!6342 from!837))))))) (printList!1016 thiss!13601 (t!175426 (t!175426 (t!175426 (t!175426 (dropList!762 v!6342 from!837))))))))))

(declare-fun b!1891366 () Bool)

(assert (=> b!1891366 (= e!1207362 Nil!21176)))

(assert (= (and d!579229 c!308541) b!1891365))

(assert (= (and d!579229 (not c!308541)) b!1891366))

(declare-fun m!2322483 () Bool)

(assert (=> b!1891365 m!2322483))

(assert (=> b!1891365 m!2322483))

(declare-fun m!2322485 () Bool)

(assert (=> b!1891365 m!2322485))

(declare-fun m!2322487 () Bool)

(assert (=> b!1891365 m!2322487))

(assert (=> b!1891365 m!2322485))

(assert (=> b!1891365 m!2322487))

(declare-fun m!2322489 () Bool)

(assert (=> b!1891365 m!2322489))

(assert (=> b!1891066 d!579229))

(declare-fun d!579231 () Bool)

(declare-fun lt!724220 () Int)

(assert (=> d!579231 (= lt!724220 (size!16780 (list!8590 (left!16993 (left!16993 (c!308318 v!6342))))))))

(assert (=> d!579231 (= lt!724220 (ite ((_ is Empty!7043) (left!16993 (left!16993 (c!308318 v!6342)))) 0 (ite ((_ is Leaf!10382) (left!16993 (left!16993 (c!308318 v!6342)))) (csize!14317 (left!16993 (left!16993 (c!308318 v!6342)))) (csize!14316 (left!16993 (left!16993 (c!308318 v!6342)))))))))

(assert (=> d!579231 (= (size!16781 (left!16993 (left!16993 (c!308318 v!6342)))) lt!724220)))

(declare-fun bs!413133 () Bool)

(assert (= bs!413133 d!579231))

(assert (=> bs!413133 m!2321981))

(assert (=> bs!413133 m!2321981))

(declare-fun m!2322491 () Bool)

(assert (=> bs!413133 m!2322491))

(assert (=> d!579047 d!579231))

(declare-fun d!579233 () Bool)

(declare-fun lt!724221 () Int)

(assert (=> d!579233 (= lt!724221 (size!16780 (list!8590 (right!17323 (left!16993 (c!308318 v!6342))))))))

(assert (=> d!579233 (= lt!724221 (ite ((_ is Empty!7043) (right!17323 (left!16993 (c!308318 v!6342)))) 0 (ite ((_ is Leaf!10382) (right!17323 (left!16993 (c!308318 v!6342)))) (csize!14317 (right!17323 (left!16993 (c!308318 v!6342)))) (csize!14316 (right!17323 (left!16993 (c!308318 v!6342)))))))))

(assert (=> d!579233 (= (size!16781 (right!17323 (left!16993 (c!308318 v!6342)))) lt!724221)))

(declare-fun bs!413134 () Bool)

(assert (= bs!413134 d!579233))

(assert (=> bs!413134 m!2321983))

(assert (=> bs!413134 m!2321983))

(declare-fun m!2322493 () Bool)

(assert (=> bs!413134 m!2322493))

(assert (=> d!579047 d!579233))

(declare-fun d!579235 () Bool)

(declare-fun lt!724222 () Int)

(assert (=> d!579235 (>= lt!724222 0)))

(declare-fun e!1207363 () Int)

(assert (=> d!579235 (= lt!724222 e!1207363)))

(declare-fun c!308542 () Bool)

(assert (=> d!579235 (= c!308542 ((_ is Nil!21176) (t!175425 (printList!1016 thiss!13601 (t!175426 (dropList!762 v!6342 from!837))))))))

(assert (=> d!579235 (= (size!16783 (t!175425 (printList!1016 thiss!13601 (t!175426 (dropList!762 v!6342 from!837))))) lt!724222)))

(declare-fun b!1891367 () Bool)

(assert (=> b!1891367 (= e!1207363 0)))

(declare-fun b!1891368 () Bool)

(assert (=> b!1891368 (= e!1207363 (+ 1 (size!16783 (t!175425 (t!175425 (printList!1016 thiss!13601 (t!175426 (dropList!762 v!6342 from!837))))))))))

(assert (= (and d!579235 c!308542) b!1891367))

(assert (= (and d!579235 (not c!308542)) b!1891368))

(declare-fun m!2322495 () Bool)

(assert (=> b!1891368 m!2322495))

(assert (=> b!1891046 d!579235))

(declare-fun d!579237 () Bool)

(declare-fun lt!724223 () Int)

(assert (=> d!579237 (>= lt!724223 0)))

(declare-fun e!1207364 () Int)

(assert (=> d!579237 (= lt!724223 e!1207364)))

(declare-fun c!308543 () Bool)

(assert (=> d!579237 (= c!308543 ((_ is Nil!21177) (list!8590 (left!16993 (c!308318 v!6342)))))))

(assert (=> d!579237 (= (size!16780 (list!8590 (left!16993 (c!308318 v!6342)))) lt!724223)))

(declare-fun b!1891369 () Bool)

(assert (=> b!1891369 (= e!1207364 0)))

(declare-fun b!1891370 () Bool)

(assert (=> b!1891370 (= e!1207364 (+ 1 (size!16780 (t!175426 (list!8590 (left!16993 (c!308318 v!6342)))))))))

(assert (= (and d!579237 c!308543) b!1891369))

(assert (= (and d!579237 (not c!308543)) b!1891370))

(declare-fun m!2322497 () Bool)

(assert (=> b!1891370 m!2322497))

(assert (=> d!579051 d!579237))

(assert (=> d!579051 d!579031))

(declare-fun d!579239 () Bool)

(declare-fun c!308544 () Bool)

(assert (=> d!579239 (= c!308544 ((_ is IntegerValue!11664) (value!118523 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))))

(declare-fun e!1207365 () Bool)

(assert (=> d!579239 (= (inv!21 (value!118523 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))) e!1207365)))

(declare-fun b!1891371 () Bool)

(assert (=> b!1891371 (= e!1207365 (inv!16 (value!118523 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))))

(declare-fun b!1891372 () Bool)

(declare-fun e!1207366 () Bool)

(assert (=> b!1891372 (= e!1207366 (inv!15 (value!118523 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))))

(declare-fun b!1891373 () Bool)

(declare-fun res!844443 () Bool)

(assert (=> b!1891373 (=> res!844443 e!1207366)))

(assert (=> b!1891373 (= res!844443 (not ((_ is IntegerValue!11666) (value!118523 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))))))))

(declare-fun e!1207367 () Bool)

(assert (=> b!1891373 (= e!1207367 e!1207366)))

(declare-fun b!1891374 () Bool)

(assert (=> b!1891374 (= e!1207367 (inv!17 (value!118523 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))))

(declare-fun b!1891375 () Bool)

(assert (=> b!1891375 (= e!1207365 e!1207367)))

(declare-fun c!308545 () Bool)

(assert (=> b!1891375 (= c!308545 ((_ is IntegerValue!11665) (value!118523 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))))

(assert (= (and d!579239 c!308544) b!1891371))

(assert (= (and d!579239 (not c!308544)) b!1891375))

(assert (= (and b!1891375 c!308545) b!1891374))

(assert (= (and b!1891375 (not c!308545)) b!1891373))

(assert (= (and b!1891373 (not res!844443)) b!1891372))

(declare-fun m!2322499 () Bool)

(assert (=> b!1891371 m!2322499))

(declare-fun m!2322501 () Bool)

(assert (=> b!1891372 m!2322501))

(declare-fun m!2322503 () Bool)

(assert (=> b!1891374 m!2322503))

(assert (=> b!1891154 d!579239))

(declare-fun d!579241 () Bool)

(assert (=> d!579241 (= (isEmpty!13009 (list!8590 (left!16993 (c!308318 v!6342)))) ((_ is Nil!21177) (list!8590 (left!16993 (c!308318 v!6342)))))))

(assert (=> d!579007 d!579241))

(assert (=> d!579007 d!579031))

(assert (=> d!579007 d!579051))

(declare-fun d!579243 () Bool)

(declare-fun lt!724224 () Int)

(assert (=> d!579243 (>= lt!724224 0)))

(declare-fun e!1207368 () Int)

(assert (=> d!579243 (= lt!724224 e!1207368)))

(declare-fun c!308546 () Bool)

(assert (=> d!579243 (= c!308546 ((_ is Nil!21176) lt!724183))))

(assert (=> d!579243 (= (size!16783 lt!724183) lt!724224)))

(declare-fun b!1891376 () Bool)

(assert (=> b!1891376 (= e!1207368 0)))

(declare-fun b!1891377 () Bool)

(assert (=> b!1891377 (= e!1207368 (+ 1 (size!16783 (t!175425 lt!724183))))))

(assert (= (and d!579243 c!308546) b!1891376))

(assert (= (and d!579243 (not c!308546)) b!1891377))

(declare-fun m!2322505 () Bool)

(assert (=> b!1891377 m!2322505))

(assert (=> b!1891063 d!579243))

(declare-fun d!579245 () Bool)

(declare-fun lt!724225 () Int)

(assert (=> d!579245 (>= lt!724225 0)))

(declare-fun e!1207369 () Int)

(assert (=> d!579245 (= lt!724225 e!1207369)))

(declare-fun c!308547 () Bool)

(assert (=> d!579245 (= c!308547 ((_ is Nil!21176) (list!8585 (charsOf!2312 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))))))

(assert (=> d!579245 (= (size!16783 (list!8585 (charsOf!2312 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))) lt!724225)))

(declare-fun b!1891378 () Bool)

(assert (=> b!1891378 (= e!1207369 0)))

(declare-fun b!1891379 () Bool)

(assert (=> b!1891379 (= e!1207369 (+ 1 (size!16783 (t!175425 (list!8585 (charsOf!2312 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))))))))

(assert (= (and d!579245 c!308547) b!1891378))

(assert (= (and d!579245 (not c!308547)) b!1891379))

(assert (=> b!1891379 m!2322383))

(assert (=> b!1891063 d!579245))

(declare-fun d!579247 () Bool)

(declare-fun lt!724226 () Int)

(assert (=> d!579247 (>= lt!724226 0)))

(declare-fun e!1207370 () Int)

(assert (=> d!579247 (= lt!724226 e!1207370)))

(declare-fun c!308548 () Bool)

(assert (=> d!579247 (= c!308548 ((_ is Nil!21176) (printList!1016 thiss!13601 (t!175426 (t!175426 (dropList!762 v!6342 from!837))))))))

(assert (=> d!579247 (= (size!16783 (printList!1016 thiss!13601 (t!175426 (t!175426 (dropList!762 v!6342 from!837))))) lt!724226)))

(declare-fun b!1891380 () Bool)

(assert (=> b!1891380 (= e!1207370 0)))

(declare-fun b!1891381 () Bool)

(assert (=> b!1891381 (= e!1207370 (+ 1 (size!16783 (t!175425 (printList!1016 thiss!13601 (t!175426 (t!175426 (dropList!762 v!6342 from!837))))))))))

(assert (= (and d!579247 c!308548) b!1891380))

(assert (= (and d!579247 (not c!308548)) b!1891381))

(declare-fun m!2322507 () Bool)

(assert (=> b!1891381 m!2322507))

(assert (=> b!1891063 d!579247))

(declare-fun d!579249 () Bool)

(declare-fun lt!724227 () Bool)

(assert (=> d!579249 (= lt!724227 (isEmpty!13009 (list!8590 (left!16993 (left!16993 (c!308318 v!6342))))))))

(assert (=> d!579249 (= lt!724227 (= (size!16781 (left!16993 (left!16993 (c!308318 v!6342)))) 0))))

(assert (=> d!579249 (= (isEmpty!13006 (left!16993 (left!16993 (c!308318 v!6342)))) lt!724227)))

(declare-fun bs!413135 () Bool)

(assert (= bs!413135 d!579249))

(assert (=> bs!413135 m!2321981))

(assert (=> bs!413135 m!2321981))

(declare-fun m!2322509 () Bool)

(assert (=> bs!413135 m!2322509))

(assert (=> bs!413135 m!2322013))

(assert (=> b!1891051 d!579249))

(declare-fun d!579251 () Bool)

(declare-fun lt!724228 () Int)

(assert (=> d!579251 (>= lt!724228 0)))

(declare-fun e!1207371 () Int)

(assert (=> d!579251 (= lt!724228 e!1207371)))

(declare-fun c!308549 () Bool)

(assert (=> d!579251 (= c!308549 ((_ is Nil!21177) (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))

(assert (=> d!579251 (= (size!16780 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))) lt!724228)))

(declare-fun b!1891382 () Bool)

(assert (=> b!1891382 (= e!1207371 0)))

(declare-fun b!1891383 () Bool)

(assert (=> b!1891383 (= e!1207371 (+ 1 (size!16780 (t!175426 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))))

(assert (= (and d!579251 c!308549) b!1891382))

(assert (= (and d!579251 (not c!308549)) b!1891383))

(declare-fun m!2322511 () Bool)

(assert (=> b!1891383 m!2322511))

(assert (=> b!1891112 d!579251))

(declare-fun d!579253 () Bool)

(declare-fun c!308550 () Bool)

(assert (=> d!579253 (= c!308550 ((_ is Node!7042) (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))) (value!118523 (h!26578 (t!175426 (dropList!762 v!6342 from!837))))))))))

(declare-fun e!1207372 () Bool)

(assert (=> d!579253 (= (inv!28238 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))) (value!118523 (h!26578 (t!175426 (dropList!762 v!6342 from!837))))))) e!1207372)))

(declare-fun b!1891384 () Bool)

(assert (=> b!1891384 (= e!1207372 (inv!28245 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))) (value!118523 (h!26578 (t!175426 (dropList!762 v!6342 from!837))))))))))

(declare-fun b!1891385 () Bool)

(declare-fun e!1207373 () Bool)

(assert (=> b!1891385 (= e!1207372 e!1207373)))

(declare-fun res!844444 () Bool)

(assert (=> b!1891385 (= res!844444 (not ((_ is Leaf!10381) (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))) (value!118523 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))))))))

(assert (=> b!1891385 (=> res!844444 e!1207373)))

(declare-fun b!1891386 () Bool)

(assert (=> b!1891386 (= e!1207373 (inv!28246 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))) (value!118523 (h!26578 (t!175426 (dropList!762 v!6342 from!837))))))))))

(assert (= (and d!579253 c!308550) b!1891384))

(assert (= (and d!579253 (not c!308550)) b!1891385))

(assert (= (and b!1891385 (not res!844444)) b!1891386))

(declare-fun m!2322513 () Bool)

(assert (=> b!1891384 m!2322513))

(declare-fun m!2322515 () Bool)

(assert (=> b!1891386 m!2322515))

(assert (=> b!1891065 d!579253))

(declare-fun d!579255 () Bool)

(assert (=> d!579255 (= (max!0 (height!1096 (left!16993 (left!16993 (c!308318 v!6342)))) (height!1096 (right!17323 (left!16993 (c!308318 v!6342))))) (ite (< (height!1096 (left!16993 (left!16993 (c!308318 v!6342)))) (height!1096 (right!17323 (left!16993 (c!308318 v!6342))))) (height!1096 (right!17323 (left!16993 (c!308318 v!6342)))) (height!1096 (left!16993 (left!16993 (c!308318 v!6342))))))))

(assert (=> b!1891127 d!579255))

(declare-fun d!579257 () Bool)

(assert (=> d!579257 (= (height!1096 (left!16993 (left!16993 (c!308318 v!6342)))) (ite ((_ is Empty!7043) (left!16993 (left!16993 (c!308318 v!6342)))) 0 (ite ((_ is Leaf!10382) (left!16993 (left!16993 (c!308318 v!6342)))) 1 (cheight!7254 (left!16993 (left!16993 (c!308318 v!6342)))))))))

(assert (=> b!1891127 d!579257))

(declare-fun d!579259 () Bool)

(assert (=> d!579259 (= (height!1096 (right!17323 (left!16993 (c!308318 v!6342)))) (ite ((_ is Empty!7043) (right!17323 (left!16993 (c!308318 v!6342)))) 0 (ite ((_ is Leaf!10382) (right!17323 (left!16993 (c!308318 v!6342)))) 1 (cheight!7254 (right!17323 (left!16993 (c!308318 v!6342)))))))))

(assert (=> b!1891127 d!579259))

(declare-fun d!579261 () Bool)

(declare-fun lt!724229 () Int)

(assert (=> d!579261 (>= lt!724229 0)))

(declare-fun e!1207374 () Int)

(assert (=> d!579261 (= lt!724229 e!1207374)))

(declare-fun c!308551 () Bool)

(assert (=> d!579261 (= c!308551 ((_ is Nil!21177) (t!175426 (list!8590 (c!308318 v!6342)))))))

(assert (=> d!579261 (= (size!16780 (t!175426 (list!8590 (c!308318 v!6342)))) lt!724229)))

(declare-fun b!1891387 () Bool)

(assert (=> b!1891387 (= e!1207374 0)))

(declare-fun b!1891388 () Bool)

(assert (=> b!1891388 (= e!1207374 (+ 1 (size!16780 (t!175426 (t!175426 (list!8590 (c!308318 v!6342)))))))))

(assert (= (and d!579261 c!308551) b!1891387))

(assert (= (and d!579261 (not c!308551)) b!1891388))

(declare-fun m!2322517 () Bool)

(assert (=> b!1891388 m!2322517))

(assert (=> bm!116753 d!579261))

(declare-fun b!1891391 () Bool)

(declare-fun e!1207376 () List!21258)

(assert (=> b!1891391 (= e!1207376 (list!8595 (xs!9932 (c!308316 (charsOf!2312 (h!26578 (t!175426 (dropList!762 v!6342 from!837))))))))))

(declare-fun b!1891389 () Bool)

(declare-fun e!1207375 () List!21258)

(assert (=> b!1891389 (= e!1207375 Nil!21176)))

(declare-fun d!579263 () Bool)

(declare-fun c!308552 () Bool)

(assert (=> d!579263 (= c!308552 ((_ is Empty!7042) (c!308316 (charsOf!2312 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))))))

(assert (=> d!579263 (= (list!8589 (c!308316 (charsOf!2312 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))) e!1207375)))

(declare-fun b!1891392 () Bool)

(assert (=> b!1891392 (= e!1207376 (++!5711 (list!8589 (left!16992 (c!308316 (charsOf!2312 (h!26578 (t!175426 (dropList!762 v!6342 from!837))))))) (list!8589 (right!17322 (c!308316 (charsOf!2312 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))))))))

(declare-fun b!1891390 () Bool)

(assert (=> b!1891390 (= e!1207375 e!1207376)))

(declare-fun c!308553 () Bool)

(assert (=> b!1891390 (= c!308553 ((_ is Leaf!10381) (c!308316 (charsOf!2312 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))))))

(assert (= (and d!579263 c!308552) b!1891389))

(assert (= (and d!579263 (not c!308552)) b!1891390))

(assert (= (and b!1891390 c!308553) b!1891391))

(assert (= (and b!1891390 (not c!308553)) b!1891392))

(declare-fun m!2322519 () Bool)

(assert (=> b!1891391 m!2322519))

(declare-fun m!2322521 () Bool)

(assert (=> b!1891392 m!2322521))

(declare-fun m!2322523 () Bool)

(assert (=> b!1891392 m!2322523))

(assert (=> b!1891392 m!2322521))

(assert (=> b!1891392 m!2322523))

(declare-fun m!2322525 () Bool)

(assert (=> b!1891392 m!2322525))

(assert (=> d!579015 d!579263))

(declare-fun d!579265 () Bool)

(declare-fun lt!724230 () Int)

(assert (=> d!579265 (>= lt!724230 0)))

(declare-fun e!1207377 () Int)

(assert (=> d!579265 (= lt!724230 e!1207377)))

(declare-fun c!308554 () Bool)

(assert (=> d!579265 (= c!308554 ((_ is Nil!21177) (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))

(assert (=> d!579265 (= (size!16780 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))) lt!724230)))

(declare-fun b!1891393 () Bool)

(assert (=> b!1891393 (= e!1207377 0)))

(declare-fun b!1891394 () Bool)

(assert (=> b!1891394 (= e!1207377 (+ 1 (size!16780 (t!175426 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))))

(assert (= (and d!579265 c!308554) b!1891393))

(assert (= (and d!579265 (not c!308554)) b!1891394))

(declare-fun m!2322527 () Bool)

(assert (=> b!1891394 m!2322527))

(assert (=> d!579039 d!579265))

(declare-fun d!579267 () Bool)

(declare-fun res!844445 () Bool)

(declare-fun e!1207378 () Bool)

(assert (=> d!579267 (=> (not res!844445) (not e!1207378))))

(assert (=> d!579267 (= res!844445 (not (isEmpty!13010 (originalCharacters!4559 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))))))

(assert (=> d!579267 (= (inv!28240 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))) e!1207378)))

(declare-fun b!1891395 () Bool)

(declare-fun res!844446 () Bool)

(assert (=> b!1891395 (=> (not res!844446) (not e!1207378))))

(assert (=> b!1891395 (= res!844446 (= (originalCharacters!4559 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))) (list!8585 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) (value!118523 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))))))

(declare-fun b!1891396 () Bool)

(assert (=> b!1891396 (= e!1207378 (= (size!16776 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))) (size!16783 (originalCharacters!4559 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))))))

(assert (= (and d!579267 res!844445) b!1891395))

(assert (= (and b!1891395 res!844446) b!1891396))

(declare-fun b_lambda!62021 () Bool)

(assert (=> (not b_lambda!62021) (not b!1891395)))

(declare-fun t!175536 () Bool)

(declare-fun tb!114917 () Bool)

(assert (=> (and b!1890787 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) t!175536) tb!114917))

(declare-fun b!1891397 () Bool)

(declare-fun e!1207379 () Bool)

(declare-fun tp!539487 () Bool)

(assert (=> b!1891397 (= e!1207379 (and (inv!28238 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) (value!118523 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) tp!539487))))

(declare-fun result!138972 () Bool)

(assert (=> tb!114917 (= result!138972 (and (inv!28239 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) (value!118523 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) e!1207379))))

(assert (= tb!114917 b!1891397))

(declare-fun m!2322529 () Bool)

(assert (=> b!1891397 m!2322529))

(declare-fun m!2322531 () Bool)

(assert (=> tb!114917 m!2322531))

(assert (=> b!1891395 t!175536))

(declare-fun b_and!145579 () Bool)

(assert (= b_and!145571 (and (=> t!175536 result!138972) b_and!145579)))

(declare-fun t!175538 () Bool)

(declare-fun tb!114919 () Bool)

(assert (=> (and b!1891156 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) t!175538) tb!114919))

(declare-fun result!138974 () Bool)

(assert (= result!138974 result!138972))

(assert (=> b!1891395 t!175538))

(declare-fun b_and!145581 () Bool)

(assert (= b_and!145573 (and (=> t!175538 result!138974) b_and!145581)))

(declare-fun t!175540 () Bool)

(declare-fun tb!114921 () Bool)

(assert (=> (and b!1891179 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) t!175540) tb!114921))

(declare-fun result!138976 () Bool)

(assert (= result!138976 result!138972))

(assert (=> b!1891395 t!175540))

(declare-fun b_and!145583 () Bool)

(assert (= b_and!145575 (and (=> t!175540 result!138976) b_and!145583)))

(declare-fun t!175542 () Bool)

(declare-fun tb!114923 () Bool)

(assert (=> (and b!1891189 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) t!175542) tb!114923))

(declare-fun result!138978 () Bool)

(assert (= result!138978 result!138972))

(assert (=> b!1891395 t!175542))

(declare-fun b_and!145585 () Bool)

(assert (= b_and!145577 (and (=> t!175542 result!138978) b_and!145585)))

(declare-fun m!2322533 () Bool)

(assert (=> d!579267 m!2322533))

(declare-fun m!2322535 () Bool)

(assert (=> b!1891395 m!2322535))

(assert (=> b!1891395 m!2322535))

(declare-fun m!2322537 () Bool)

(assert (=> b!1891395 m!2322537))

(declare-fun m!2322539 () Bool)

(assert (=> b!1891396 m!2322539))

(assert (=> b!1891176 d!579267))

(declare-fun b!1891410 () Bool)

(declare-fun res!844462 () Bool)

(declare-fun e!1207385 () Bool)

(assert (=> b!1891410 (=> (not res!844462) (not e!1207385))))

(declare-fun isEmpty!13012 (Conc!7042) Bool)

(assert (=> b!1891410 (= res!844462 (not (isEmpty!13012 (left!16992 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837)))))))))))

(declare-fun b!1891411 () Bool)

(declare-fun res!844463 () Bool)

(assert (=> b!1891411 (=> (not res!844463) (not e!1207385))))

(declare-fun height!1098 (Conc!7042) Int)

(assert (=> b!1891411 (= res!844463 (<= (- (height!1098 (left!16992 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837))))))) (height!1098 (right!17322 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837)))))))) 1))))

(declare-fun b!1891412 () Bool)

(assert (=> b!1891412 (= e!1207385 (not (isEmpty!13012 (right!17322 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837)))))))))))

(declare-fun b!1891413 () Bool)

(declare-fun res!844460 () Bool)

(assert (=> b!1891413 (=> (not res!844460) (not e!1207385))))

(assert (=> b!1891413 (= res!844460 (isBalanced!2215 (right!17322 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837))))))))))

(declare-fun d!579269 () Bool)

(declare-fun res!844459 () Bool)

(declare-fun e!1207384 () Bool)

(assert (=> d!579269 (=> res!844459 e!1207384)))

(assert (=> d!579269 (= res!844459 (not ((_ is Node!7042) (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837))))))))))

(assert (=> d!579269 (= (isBalanced!2215 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837)))))) e!1207384)))

(declare-fun b!1891414 () Bool)

(declare-fun res!844461 () Bool)

(assert (=> b!1891414 (=> (not res!844461) (not e!1207385))))

(assert (=> b!1891414 (= res!844461 (isBalanced!2215 (left!16992 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837))))))))))

(declare-fun b!1891415 () Bool)

(assert (=> b!1891415 (= e!1207384 e!1207385)))

(declare-fun res!844464 () Bool)

(assert (=> b!1891415 (=> (not res!844464) (not e!1207385))))

(assert (=> b!1891415 (= res!844464 (<= (- 1) (- (height!1098 (left!16992 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837))))))) (height!1098 (right!17322 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837))))))))))))

(assert (= (and d!579269 (not res!844459)) b!1891415))

(assert (= (and b!1891415 res!844464) b!1891411))

(assert (= (and b!1891411 res!844463) b!1891414))

(assert (= (and b!1891414 res!844461) b!1891413))

(assert (= (and b!1891413 res!844460) b!1891410))

(assert (= (and b!1891410 res!844462) b!1891412))

(declare-fun m!2322541 () Bool)

(assert (=> b!1891411 m!2322541))

(declare-fun m!2322543 () Bool)

(assert (=> b!1891411 m!2322543))

(declare-fun m!2322545 () Bool)

(assert (=> b!1891413 m!2322545))

(declare-fun m!2322547 () Bool)

(assert (=> b!1891410 m!2322547))

(declare-fun m!2322549 () Bool)

(assert (=> b!1891412 m!2322549))

(assert (=> b!1891415 m!2322541))

(assert (=> b!1891415 m!2322543))

(declare-fun m!2322551 () Bool)

(assert (=> b!1891414 m!2322551))

(assert (=> d!579023 d!579269))

(declare-fun d!579271 () Bool)

(assert (=> d!579271 (= (inv!28239 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))) (value!118523 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))) (isBalanced!2215 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))) (value!118523 (h!26578 (t!175426 (dropList!762 v!6342 from!837))))))))))

(declare-fun bs!413136 () Bool)

(assert (= bs!413136 d!579271))

(declare-fun m!2322553 () Bool)

(assert (=> bs!413136 m!2322553))

(assert (=> tb!114847 d!579271))

(declare-fun d!579273 () Bool)

(declare-fun c!308555 () Bool)

(assert (=> d!579273 (= c!308555 ((_ is Node!7043) (left!16993 (right!17323 (right!17323 (c!308318 v!6342))))))))

(declare-fun e!1207386 () Bool)

(assert (=> d!579273 (= (inv!28227 (left!16993 (right!17323 (right!17323 (c!308318 v!6342))))) e!1207386)))

(declare-fun b!1891416 () Bool)

(assert (=> b!1891416 (= e!1207386 (inv!28231 (left!16993 (right!17323 (right!17323 (c!308318 v!6342))))))))

(declare-fun b!1891417 () Bool)

(declare-fun e!1207387 () Bool)

(assert (=> b!1891417 (= e!1207386 e!1207387)))

(declare-fun res!844465 () Bool)

(assert (=> b!1891417 (= res!844465 (not ((_ is Leaf!10382) (left!16993 (right!17323 (right!17323 (c!308318 v!6342)))))))))

(assert (=> b!1891417 (=> res!844465 e!1207387)))

(declare-fun b!1891418 () Bool)

(assert (=> b!1891418 (= e!1207387 (inv!28232 (left!16993 (right!17323 (right!17323 (c!308318 v!6342))))))))

(assert (= (and d!579273 c!308555) b!1891416))

(assert (= (and d!579273 (not c!308555)) b!1891417))

(assert (= (and b!1891417 (not res!844465)) b!1891418))

(declare-fun m!2322555 () Bool)

(assert (=> b!1891416 m!2322555))

(declare-fun m!2322557 () Bool)

(assert (=> b!1891418 m!2322557))

(assert (=> b!1891193 d!579273))

(declare-fun d!579275 () Bool)

(declare-fun c!308556 () Bool)

(assert (=> d!579275 (= c!308556 ((_ is Node!7043) (right!17323 (right!17323 (right!17323 (c!308318 v!6342))))))))

(declare-fun e!1207388 () Bool)

(assert (=> d!579275 (= (inv!28227 (right!17323 (right!17323 (right!17323 (c!308318 v!6342))))) e!1207388)))

(declare-fun b!1891419 () Bool)

(assert (=> b!1891419 (= e!1207388 (inv!28231 (right!17323 (right!17323 (right!17323 (c!308318 v!6342))))))))

(declare-fun b!1891420 () Bool)

(declare-fun e!1207389 () Bool)

(assert (=> b!1891420 (= e!1207388 e!1207389)))

(declare-fun res!844466 () Bool)

(assert (=> b!1891420 (= res!844466 (not ((_ is Leaf!10382) (right!17323 (right!17323 (right!17323 (c!308318 v!6342)))))))))

(assert (=> b!1891420 (=> res!844466 e!1207389)))

(declare-fun b!1891421 () Bool)

(assert (=> b!1891421 (= e!1207389 (inv!28232 (right!17323 (right!17323 (right!17323 (c!308318 v!6342))))))))

(assert (= (and d!579275 c!308556) b!1891419))

(assert (= (and d!579275 (not c!308556)) b!1891420))

(assert (= (and b!1891420 (not res!844466)) b!1891421))

(declare-fun m!2322559 () Bool)

(assert (=> b!1891419 m!2322559))

(declare-fun m!2322561 () Bool)

(assert (=> b!1891421 m!2322561))

(assert (=> b!1891193 d!579275))

(declare-fun d!579277 () Bool)

(assert (=> d!579277 (= (list!8594 (xs!9933 (left!16993 (c!308318 v!6342)))) (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))))

(assert (=> b!1891102 d!579277))

(declare-fun d!579279 () Bool)

(declare-fun res!844467 () Bool)

(declare-fun e!1207390 () Bool)

(assert (=> d!579279 (=> (not res!844467) (not e!1207390))))

(assert (=> d!579279 (= res!844467 (= (csize!14316 (right!17323 (left!16993 (c!308318 v!6342)))) (+ (size!16781 (left!16993 (right!17323 (left!16993 (c!308318 v!6342))))) (size!16781 (right!17323 (right!17323 (left!16993 (c!308318 v!6342))))))))))

(assert (=> d!579279 (= (inv!28231 (right!17323 (left!16993 (c!308318 v!6342)))) e!1207390)))

(declare-fun b!1891422 () Bool)

(declare-fun res!844468 () Bool)

(assert (=> b!1891422 (=> (not res!844468) (not e!1207390))))

(assert (=> b!1891422 (= res!844468 (and (not (= (left!16993 (right!17323 (left!16993 (c!308318 v!6342)))) Empty!7043)) (not (= (right!17323 (right!17323 (left!16993 (c!308318 v!6342)))) Empty!7043))))))

(declare-fun b!1891423 () Bool)

(declare-fun res!844469 () Bool)

(assert (=> b!1891423 (=> (not res!844469) (not e!1207390))))

(assert (=> b!1891423 (= res!844469 (= (cheight!7254 (right!17323 (left!16993 (c!308318 v!6342)))) (+ (max!0 (height!1096 (left!16993 (right!17323 (left!16993 (c!308318 v!6342))))) (height!1096 (right!17323 (right!17323 (left!16993 (c!308318 v!6342)))))) 1)))))

(declare-fun b!1891424 () Bool)

(assert (=> b!1891424 (= e!1207390 (<= 0 (cheight!7254 (right!17323 (left!16993 (c!308318 v!6342))))))))

(assert (= (and d!579279 res!844467) b!1891422))

(assert (= (and b!1891422 res!844468) b!1891423))

(assert (= (and b!1891423 res!844469) b!1891424))

(declare-fun m!2322563 () Bool)

(assert (=> d!579279 m!2322563))

(declare-fun m!2322565 () Bool)

(assert (=> d!579279 m!2322565))

(assert (=> b!1891423 m!2322371))

(assert (=> b!1891423 m!2322373))

(assert (=> b!1891423 m!2322371))

(assert (=> b!1891423 m!2322373))

(declare-fun m!2322567 () Bool)

(assert (=> b!1891423 m!2322567))

(assert (=> b!1891132 d!579279))

(declare-fun d!579281 () Bool)

(declare-fun lt!724231 () Int)

(assert (=> d!579281 (>= lt!724231 0)))

(declare-fun e!1207391 () Int)

(assert (=> d!579281 (= lt!724231 e!1207391)))

(declare-fun c!308557 () Bool)

(assert (=> d!579281 (= c!308557 ((_ is Nil!21176) (originalCharacters!4559 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))))

(assert (=> d!579281 (= (size!16783 (originalCharacters!4559 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))) lt!724231)))

(declare-fun b!1891425 () Bool)

(assert (=> b!1891425 (= e!1207391 0)))

(declare-fun b!1891426 () Bool)

(assert (=> b!1891426 (= e!1207391 (+ 1 (size!16783 (t!175425 (originalCharacters!4559 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))))))

(assert (= (and d!579281 c!308557) b!1891425))

(assert (= (and d!579281 (not c!308557)) b!1891426))

(declare-fun m!2322569 () Bool)

(assert (=> b!1891426 m!2322569))

(assert (=> b!1891086 d!579281))

(declare-fun d!579283 () Bool)

(declare-fun res!844474 () Bool)

(declare-fun e!1207394 () Bool)

(assert (=> d!579283 (=> (not res!844474) (not e!1207394))))

(assert (=> d!579283 (= res!844474 (<= (size!16783 (list!8595 (xs!9932 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837)))))))) 512))))

(assert (=> d!579283 (= (inv!28246 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837)))))) e!1207394)))

(declare-fun b!1891431 () Bool)

(declare-fun res!844475 () Bool)

(assert (=> b!1891431 (=> (not res!844475) (not e!1207394))))

(assert (=> b!1891431 (= res!844475 (= (csize!14315 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837)))))) (size!16783 (list!8595 (xs!9932 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837))))))))))))

(declare-fun b!1891432 () Bool)

(assert (=> b!1891432 (= e!1207394 (and (> (csize!14315 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837)))))) 0) (<= (csize!14315 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837)))))) 512)))))

(assert (= (and d!579283 res!844474) b!1891431))

(assert (= (and b!1891431 res!844475) b!1891432))

(declare-fun m!2322571 () Bool)

(assert (=> d!579283 m!2322571))

(assert (=> d!579283 m!2322571))

(declare-fun m!2322573 () Bool)

(assert (=> d!579283 m!2322573))

(assert (=> b!1891431 m!2322571))

(assert (=> b!1891431 m!2322571))

(assert (=> b!1891431 m!2322573))

(assert (=> b!1891121 d!579283))

(declare-fun d!579285 () Bool)

(declare-fun c!308558 () Bool)

(assert (=> d!579285 (= c!308558 ((_ is Nil!21177) lt!724186))))

(declare-fun e!1207395 () (InoxSet Token!7056))

(assert (=> d!579285 (= (content!3123 lt!724186) e!1207395)))

(declare-fun b!1891433 () Bool)

(assert (=> b!1891433 (= e!1207395 ((as const (Array Token!7056 Bool)) false))))

(declare-fun b!1891434 () Bool)

(assert (=> b!1891434 (= e!1207395 ((_ map or) (store ((as const (Array Token!7056 Bool)) false) (h!26578 lt!724186) true) (content!3123 (t!175426 lt!724186))))))

(assert (= (and d!579285 c!308558) b!1891433))

(assert (= (and d!579285 (not c!308558)) b!1891434))

(declare-fun m!2322575 () Bool)

(assert (=> b!1891434 m!2322575))

(declare-fun m!2322577 () Bool)

(assert (=> b!1891434 m!2322577))

(assert (=> d!579025 d!579285))

(assert (=> d!579025 d!579185))

(declare-fun b!1891438 () Bool)

(declare-fun e!1207397 () Bool)

(declare-fun lt!724232 () List!21259)

(assert (=> b!1891438 (= e!1207397 (or (not (= (list!8590 (right!17323 (c!308318 v!6342))) Nil!21177)) (= lt!724232 (t!175426 (list!8590 (left!16993 (c!308318 v!6342)))))))))

(declare-fun b!1891437 () Bool)

(declare-fun res!844477 () Bool)

(assert (=> b!1891437 (=> (not res!844477) (not e!1207397))))

(assert (=> b!1891437 (= res!844477 (= (size!16780 lt!724232) (+ (size!16780 (t!175426 (list!8590 (left!16993 (c!308318 v!6342))))) (size!16780 (list!8590 (right!17323 (c!308318 v!6342)))))))))

(declare-fun d!579287 () Bool)

(assert (=> d!579287 e!1207397))

(declare-fun res!844476 () Bool)

(assert (=> d!579287 (=> (not res!844476) (not e!1207397))))

(assert (=> d!579287 (= res!844476 (= (content!3123 lt!724232) ((_ map or) (content!3123 (t!175426 (list!8590 (left!16993 (c!308318 v!6342))))) (content!3123 (list!8590 (right!17323 (c!308318 v!6342)))))))))

(declare-fun e!1207396 () List!21259)

(assert (=> d!579287 (= lt!724232 e!1207396)))

(declare-fun c!308559 () Bool)

(assert (=> d!579287 (= c!308559 ((_ is Nil!21177) (t!175426 (list!8590 (left!16993 (c!308318 v!6342))))))))

(assert (=> d!579287 (= (++!5713 (t!175426 (list!8590 (left!16993 (c!308318 v!6342)))) (list!8590 (right!17323 (c!308318 v!6342)))) lt!724232)))

(declare-fun b!1891435 () Bool)

(assert (=> b!1891435 (= e!1207396 (list!8590 (right!17323 (c!308318 v!6342))))))

(declare-fun b!1891436 () Bool)

(assert (=> b!1891436 (= e!1207396 (Cons!21177 (h!26578 (t!175426 (list!8590 (left!16993 (c!308318 v!6342))))) (++!5713 (t!175426 (t!175426 (list!8590 (left!16993 (c!308318 v!6342))))) (list!8590 (right!17323 (c!308318 v!6342))))))))

(assert (= (and d!579287 c!308559) b!1891435))

(assert (= (and d!579287 (not c!308559)) b!1891436))

(assert (= (and d!579287 res!844476) b!1891437))

(assert (= (and b!1891437 res!844477) b!1891438))

(declare-fun m!2322579 () Bool)

(assert (=> b!1891437 m!2322579))

(assert (=> b!1891437 m!2322497))

(assert (=> b!1891437 m!2321483))

(assert (=> b!1891437 m!2321971))

(declare-fun m!2322581 () Bool)

(assert (=> d!579287 m!2322581))

(declare-fun m!2322583 () Bool)

(assert (=> d!579287 m!2322583))

(assert (=> d!579287 m!2321483))

(assert (=> d!579287 m!2321977))

(assert (=> b!1891436 m!2321483))

(declare-fun m!2322585 () Bool)

(assert (=> b!1891436 m!2322585))

(assert (=> b!1891097 d!579287))

(declare-fun d!579289 () Bool)

(declare-fun res!844478 () Bool)

(declare-fun e!1207398 () Bool)

(assert (=> d!579289 (=> (not res!844478) (not e!1207398))))

(assert (=> d!579289 (= res!844478 (= (csize!14316 (right!17323 (right!17323 (c!308318 v!6342)))) (+ (size!16781 (left!16993 (right!17323 (right!17323 (c!308318 v!6342))))) (size!16781 (right!17323 (right!17323 (right!17323 (c!308318 v!6342))))))))))

(assert (=> d!579289 (= (inv!28231 (right!17323 (right!17323 (c!308318 v!6342)))) e!1207398)))

(declare-fun b!1891439 () Bool)

(declare-fun res!844479 () Bool)

(assert (=> b!1891439 (=> (not res!844479) (not e!1207398))))

(assert (=> b!1891439 (= res!844479 (and (not (= (left!16993 (right!17323 (right!17323 (c!308318 v!6342)))) Empty!7043)) (not (= (right!17323 (right!17323 (right!17323 (c!308318 v!6342)))) Empty!7043))))))

(declare-fun b!1891440 () Bool)

(declare-fun res!844480 () Bool)

(assert (=> b!1891440 (=> (not res!844480) (not e!1207398))))

(assert (=> b!1891440 (= res!844480 (= (cheight!7254 (right!17323 (right!17323 (c!308318 v!6342)))) (+ (max!0 (height!1096 (left!16993 (right!17323 (right!17323 (c!308318 v!6342))))) (height!1096 (right!17323 (right!17323 (right!17323 (c!308318 v!6342)))))) 1)))))

(declare-fun b!1891441 () Bool)

(assert (=> b!1891441 (= e!1207398 (<= 0 (cheight!7254 (right!17323 (right!17323 (c!308318 v!6342))))))))

(assert (= (and d!579289 res!844478) b!1891439))

(assert (= (and b!1891439 res!844479) b!1891440))

(assert (= (and b!1891440 res!844480) b!1891441))

(declare-fun m!2322587 () Bool)

(assert (=> d!579289 m!2322587))

(declare-fun m!2322589 () Bool)

(assert (=> d!579289 m!2322589))

(declare-fun m!2322591 () Bool)

(assert (=> b!1891440 m!2322591))

(declare-fun m!2322593 () Bool)

(assert (=> b!1891440 m!2322593))

(assert (=> b!1891440 m!2322591))

(assert (=> b!1891440 m!2322593))

(declare-fun m!2322595 () Bool)

(assert (=> b!1891440 m!2322595))

(assert (=> b!1891058 d!579289))

(declare-fun b!1891442 () Bool)

(declare-fun res!844481 () Bool)

(declare-fun e!1207399 () Bool)

(assert (=> b!1891442 (=> (not res!844481) (not e!1207399))))

(assert (=> b!1891442 (= res!844481 (<= (- (height!1096 (left!16993 (left!16993 (right!17323 (c!308318 v!6342))))) (height!1096 (right!17323 (left!16993 (right!17323 (c!308318 v!6342)))))) 1))))

(declare-fun b!1891443 () Bool)

(declare-fun res!844484 () Bool)

(assert (=> b!1891443 (=> (not res!844484) (not e!1207399))))

(assert (=> b!1891443 (= res!844484 (isBalanced!2213 (right!17323 (left!16993 (right!17323 (c!308318 v!6342))))))))

(declare-fun b!1891444 () Bool)

(declare-fun res!844482 () Bool)

(assert (=> b!1891444 (=> (not res!844482) (not e!1207399))))

(assert (=> b!1891444 (= res!844482 (not (isEmpty!13006 (left!16993 (left!16993 (right!17323 (c!308318 v!6342)))))))))

(declare-fun d!579291 () Bool)

(declare-fun res!844486 () Bool)

(declare-fun e!1207400 () Bool)

(assert (=> d!579291 (=> res!844486 e!1207400)))

(assert (=> d!579291 (= res!844486 (not ((_ is Node!7043) (left!16993 (right!17323 (c!308318 v!6342))))))))

(assert (=> d!579291 (= (isBalanced!2213 (left!16993 (right!17323 (c!308318 v!6342)))) e!1207400)))

(declare-fun b!1891445 () Bool)

(declare-fun res!844485 () Bool)

(assert (=> b!1891445 (=> (not res!844485) (not e!1207399))))

(assert (=> b!1891445 (= res!844485 (isBalanced!2213 (left!16993 (left!16993 (right!17323 (c!308318 v!6342))))))))

(declare-fun b!1891446 () Bool)

(assert (=> b!1891446 (= e!1207400 e!1207399)))

(declare-fun res!844483 () Bool)

(assert (=> b!1891446 (=> (not res!844483) (not e!1207399))))

(assert (=> b!1891446 (= res!844483 (<= (- 1) (- (height!1096 (left!16993 (left!16993 (right!17323 (c!308318 v!6342))))) (height!1096 (right!17323 (left!16993 (right!17323 (c!308318 v!6342))))))))))

(declare-fun b!1891447 () Bool)

(assert (=> b!1891447 (= e!1207399 (not (isEmpty!13006 (right!17323 (left!16993 (right!17323 (c!308318 v!6342)))))))))

(assert (= (and d!579291 (not res!844486)) b!1891446))

(assert (= (and b!1891446 res!844483) b!1891442))

(assert (= (and b!1891442 res!844481) b!1891445))

(assert (= (and b!1891445 res!844485) b!1891443))

(assert (= (and b!1891443 res!844484) b!1891444))

(assert (= (and b!1891444 res!844482) b!1891447))

(declare-fun m!2322597 () Bool)

(assert (=> b!1891445 m!2322597))

(declare-fun m!2322599 () Bool)

(assert (=> b!1891447 m!2322599))

(declare-fun m!2322601 () Bool)

(assert (=> b!1891444 m!2322601))

(assert (=> b!1891442 m!2322421))

(assert (=> b!1891442 m!2322423))

(assert (=> b!1891446 m!2322421))

(assert (=> b!1891446 m!2322423))

(declare-fun m!2322603 () Bool)

(assert (=> b!1891443 m!2322603))

(assert (=> b!1891006 d!579291))

(declare-fun d!579293 () Bool)

(declare-fun c!308560 () Bool)

(assert (=> d!579293 (= c!308560 ((_ is Nil!21176) lt!724185))))

(declare-fun e!1207401 () (InoxSet C!10500))

(assert (=> d!579293 (= (content!3124 lt!724185) e!1207401)))

(declare-fun b!1891448 () Bool)

(assert (=> b!1891448 (= e!1207401 ((as const (Array C!10500 Bool)) false))))

(declare-fun b!1891449 () Bool)

(assert (=> b!1891449 (= e!1207401 ((_ map or) (store ((as const (Array C!10500 Bool)) false) (h!26577 lt!724185) true) (content!3124 (t!175425 lt!724185))))))

(assert (= (and d!579293 c!308560) b!1891448))

(assert (= (and d!579293 (not c!308560)) b!1891449))

(declare-fun m!2322605 () Bool)

(assert (=> b!1891449 m!2322605))

(declare-fun m!2322607 () Bool)

(assert (=> b!1891449 m!2322607))

(assert (=> d!579021 d!579293))

(assert (=> d!579021 d!579209))

(assert (=> d!579021 d!579067))

(declare-fun d!579295 () Bool)

(declare-fun c!308561 () Bool)

(assert (=> d!579295 (= c!308561 ((_ is IntegerValue!11664) (value!118523 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))))

(declare-fun e!1207402 () Bool)

(assert (=> d!579295 (= (inv!21 (value!118523 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) e!1207402)))

(declare-fun b!1891450 () Bool)

(assert (=> b!1891450 (= e!1207402 (inv!16 (value!118523 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))))

(declare-fun b!1891451 () Bool)

(declare-fun e!1207403 () Bool)

(assert (=> b!1891451 (= e!1207403 (inv!15 (value!118523 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))))

(declare-fun b!1891452 () Bool)

(declare-fun res!844487 () Bool)

(assert (=> b!1891452 (=> res!844487 e!1207403)))

(assert (=> b!1891452 (= res!844487 (not ((_ is IntegerValue!11666) (value!118523 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))))))

(declare-fun e!1207404 () Bool)

(assert (=> b!1891452 (= e!1207404 e!1207403)))

(declare-fun b!1891453 () Bool)

(assert (=> b!1891453 (= e!1207404 (inv!17 (value!118523 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))))

(declare-fun b!1891454 () Bool)

(assert (=> b!1891454 (= e!1207402 e!1207404)))

(declare-fun c!308562 () Bool)

(assert (=> b!1891454 (= c!308562 ((_ is IntegerValue!11665) (value!118523 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))))

(assert (= (and d!579295 c!308561) b!1891450))

(assert (= (and d!579295 (not c!308561)) b!1891454))

(assert (= (and b!1891454 c!308562) b!1891453))

(assert (= (and b!1891454 (not c!308562)) b!1891452))

(assert (= (and b!1891452 (not res!844487)) b!1891451))

(declare-fun m!2322609 () Bool)

(assert (=> b!1891450 m!2322609))

(declare-fun m!2322611 () Bool)

(assert (=> b!1891451 m!2322611))

(declare-fun m!2322613 () Bool)

(assert (=> b!1891453 m!2322613))

(assert (=> b!1891177 d!579295))

(declare-fun d!579297 () Bool)

(declare-fun c!308563 () Bool)

(assert (=> d!579297 (= c!308563 ((_ is Nil!21176) (t!175425 lt!724145)))))

(declare-fun e!1207405 () (InoxSet C!10500))

(assert (=> d!579297 (= (content!3124 (t!175425 lt!724145)) e!1207405)))

(declare-fun b!1891455 () Bool)

(assert (=> b!1891455 (= e!1207405 ((as const (Array C!10500 Bool)) false))))

(declare-fun b!1891456 () Bool)

(assert (=> b!1891456 (= e!1207405 ((_ map or) (store ((as const (Array C!10500 Bool)) false) (h!26577 (t!175425 lt!724145)) true) (content!3124 (t!175425 (t!175425 lt!724145)))))))

(assert (= (and d!579297 c!308563) b!1891455))

(assert (= (and d!579297 (not c!308563)) b!1891456))

(declare-fun m!2322615 () Bool)

(assert (=> b!1891456 m!2322615))

(declare-fun m!2322617 () Bool)

(assert (=> b!1891456 m!2322617))

(assert (=> b!1891148 d!579297))

(declare-fun d!579299 () Bool)

(assert (=> d!579299 (= (inv!28223 (tag!4166 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))))) (= (mod (str.len (value!118522 (tag!4166 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))) 2) 0))))

(assert (=> b!1891155 d!579299))

(declare-fun d!579301 () Bool)

(declare-fun res!844488 () Bool)

(declare-fun e!1207406 () Bool)

(assert (=> d!579301 (=> (not res!844488) (not e!1207406))))

(assert (=> d!579301 (= res!844488 (semiInverseModEq!1523 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))))) (toValue!5357 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))))))

(assert (=> d!579301 (= (inv!28241 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))))) e!1207406)))

(declare-fun b!1891457 () Bool)

(assert (=> b!1891457 (= e!1207406 (equivClasses!1450 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))))) (toValue!5357 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))))))

(assert (= (and d!579301 res!844488) b!1891457))

(declare-fun m!2322619 () Bool)

(assert (=> d!579301 m!2322619))

(declare-fun m!2322621 () Bool)

(assert (=> b!1891457 m!2322621))

(assert (=> b!1891155 d!579301))

(declare-fun d!579303 () Bool)

(assert (=> d!579303 (= (isEmpty!13009 (list!8590 (right!17323 (c!308318 v!6342)))) ((_ is Nil!21177) (list!8590 (right!17323 (c!308318 v!6342)))))))

(assert (=> d!579049 d!579303))

(assert (=> d!579049 d!579033))

(assert (=> d!579049 d!579053))

(declare-fun bm!116754 () Bool)

(declare-fun call!116759 () Int)

(assert (=> bm!116754 (= call!116759 (size!16780 (t!175426 (t!175426 (list!8590 (c!308318 v!6342))))))))

(declare-fun b!1891458 () Bool)

(declare-fun e!1207409 () Int)

(assert (=> b!1891458 (= e!1207409 0)))

(declare-fun b!1891459 () Bool)

(declare-fun e!1207410 () List!21259)

(assert (=> b!1891459 (= e!1207410 (t!175426 (t!175426 (list!8590 (c!308318 v!6342)))))))

(declare-fun b!1891460 () Bool)

(declare-fun e!1207407 () List!21259)

(assert (=> b!1891460 (= e!1207407 Nil!21177)))

(declare-fun b!1891461 () Bool)

(declare-fun e!1207411 () Int)

(assert (=> b!1891461 (= e!1207411 e!1207409)))

(declare-fun c!308564 () Bool)

(assert (=> b!1891461 (= c!308564 (>= (- (- from!837 1) 1) call!116759))))

(declare-fun b!1891462 () Bool)

(assert (=> b!1891462 (= e!1207410 (drop!1049 (t!175426 (t!175426 (t!175426 (list!8590 (c!308318 v!6342))))) (- (- (- from!837 1) 1) 1)))))

(declare-fun b!1891463 () Bool)

(declare-fun e!1207408 () Bool)

(declare-fun lt!724233 () List!21259)

(assert (=> b!1891463 (= e!1207408 (= (size!16780 lt!724233) e!1207411))))

(declare-fun c!308566 () Bool)

(assert (=> b!1891463 (= c!308566 (<= (- (- from!837 1) 1) 0))))

(declare-fun b!1891464 () Bool)

(assert (=> b!1891464 (= e!1207411 call!116759)))

(declare-fun d!579305 () Bool)

(assert (=> d!579305 e!1207408))

(declare-fun res!844489 () Bool)

(assert (=> d!579305 (=> (not res!844489) (not e!1207408))))

(assert (=> d!579305 (= res!844489 (= ((_ map implies) (content!3123 lt!724233) (content!3123 (t!175426 (t!175426 (list!8590 (c!308318 v!6342)))))) ((as const (InoxSet Token!7056)) true)))))

(assert (=> d!579305 (= lt!724233 e!1207407)))

(declare-fun c!308567 () Bool)

(assert (=> d!579305 (= c!308567 ((_ is Nil!21177) (t!175426 (t!175426 (list!8590 (c!308318 v!6342))))))))

(assert (=> d!579305 (= (drop!1049 (t!175426 (t!175426 (list!8590 (c!308318 v!6342)))) (- (- from!837 1) 1)) lt!724233)))

(declare-fun b!1891465 () Bool)

(assert (=> b!1891465 (= e!1207409 (- call!116759 (- (- from!837 1) 1)))))

(declare-fun b!1891466 () Bool)

(assert (=> b!1891466 (= e!1207407 e!1207410)))

(declare-fun c!308565 () Bool)

(assert (=> b!1891466 (= c!308565 (<= (- (- from!837 1) 1) 0))))

(assert (= (and d!579305 c!308567) b!1891460))

(assert (= (and d!579305 (not c!308567)) b!1891466))

(assert (= (and b!1891466 c!308565) b!1891459))

(assert (= (and b!1891466 (not c!308565)) b!1891462))

(assert (= (and d!579305 res!844489) b!1891463))

(assert (= (and b!1891463 c!308566) b!1891464))

(assert (= (and b!1891463 (not c!308566)) b!1891461))

(assert (= (and b!1891461 c!308564) b!1891458))

(assert (= (and b!1891461 (not c!308564)) b!1891465))

(assert (= (or b!1891464 b!1891461 b!1891465) bm!116754))

(assert (=> bm!116754 m!2322517))

(declare-fun m!2322623 () Bool)

(assert (=> b!1891462 m!2322623))

(declare-fun m!2322625 () Bool)

(assert (=> b!1891463 m!2322625))

(declare-fun m!2322627 () Bool)

(assert (=> d!579305 m!2322627))

(assert (=> d!579305 m!2322391))

(assert (=> b!1891076 d!579305))

(declare-fun d!579307 () Bool)

(declare-fun res!844490 () Bool)

(declare-fun e!1207412 () Bool)

(assert (=> d!579307 (=> (not res!844490) (not e!1207412))))

(assert (=> d!579307 (= res!844490 (<= (size!16780 (list!8594 (xs!9933 (left!16993 (left!16993 (c!308318 v!6342)))))) 512))))

(assert (=> d!579307 (= (inv!28232 (left!16993 (left!16993 (c!308318 v!6342)))) e!1207412)))

(declare-fun b!1891467 () Bool)

(declare-fun res!844491 () Bool)

(assert (=> b!1891467 (=> (not res!844491) (not e!1207412))))

(assert (=> b!1891467 (= res!844491 (= (csize!14317 (left!16993 (left!16993 (c!308318 v!6342)))) (size!16780 (list!8594 (xs!9933 (left!16993 (left!16993 (c!308318 v!6342))))))))))

(declare-fun b!1891468 () Bool)

(assert (=> b!1891468 (= e!1207412 (and (> (csize!14317 (left!16993 (left!16993 (c!308318 v!6342)))) 0) (<= (csize!14317 (left!16993 (left!16993 (c!308318 v!6342)))) 512)))))

(assert (= (and d!579307 res!844490) b!1891467))

(assert (= (and b!1891467 res!844491) b!1891468))

(declare-fun m!2322629 () Bool)

(assert (=> d!579307 m!2322629))

(assert (=> d!579307 m!2322629))

(declare-fun m!2322631 () Bool)

(assert (=> d!579307 m!2322631))

(assert (=> b!1891467 m!2322629))

(assert (=> b!1891467 m!2322629))

(assert (=> b!1891467 m!2322631))

(assert (=> b!1891131 d!579307))

(declare-fun d!579309 () Bool)

(declare-fun c!308568 () Bool)

(assert (=> d!579309 (= c!308568 ((_ is Node!7043) (left!16993 (left!16993 (left!16993 (c!308318 v!6342))))))))

(declare-fun e!1207413 () Bool)

(assert (=> d!579309 (= (inv!28227 (left!16993 (left!16993 (left!16993 (c!308318 v!6342))))) e!1207413)))

(declare-fun b!1891469 () Bool)

(assert (=> b!1891469 (= e!1207413 (inv!28231 (left!16993 (left!16993 (left!16993 (c!308318 v!6342))))))))

(declare-fun b!1891470 () Bool)

(declare-fun e!1207414 () Bool)

(assert (=> b!1891470 (= e!1207413 e!1207414)))

(declare-fun res!844492 () Bool)

(assert (=> b!1891470 (= res!844492 (not ((_ is Leaf!10382) (left!16993 (left!16993 (left!16993 (c!308318 v!6342)))))))))

(assert (=> b!1891470 (=> res!844492 e!1207414)))

(declare-fun b!1891471 () Bool)

(assert (=> b!1891471 (= e!1207414 (inv!28232 (left!16993 (left!16993 (left!16993 (c!308318 v!6342))))))))

(assert (= (and d!579309 c!308568) b!1891469))

(assert (= (and d!579309 (not c!308568)) b!1891470))

(assert (= (and b!1891470 (not res!844492)) b!1891471))

(declare-fun m!2322633 () Bool)

(assert (=> b!1891469 m!2322633))

(declare-fun m!2322635 () Bool)

(assert (=> b!1891471 m!2322635))

(assert (=> b!1891180 d!579309))

(declare-fun d!579311 () Bool)

(declare-fun c!308569 () Bool)

(assert (=> d!579311 (= c!308569 ((_ is Node!7043) (right!17323 (left!16993 (left!16993 (c!308318 v!6342))))))))

(declare-fun e!1207415 () Bool)

(assert (=> d!579311 (= (inv!28227 (right!17323 (left!16993 (left!16993 (c!308318 v!6342))))) e!1207415)))

(declare-fun b!1891472 () Bool)

(assert (=> b!1891472 (= e!1207415 (inv!28231 (right!17323 (left!16993 (left!16993 (c!308318 v!6342))))))))

(declare-fun b!1891473 () Bool)

(declare-fun e!1207416 () Bool)

(assert (=> b!1891473 (= e!1207415 e!1207416)))

(declare-fun res!844493 () Bool)

(assert (=> b!1891473 (= res!844493 (not ((_ is Leaf!10382) (right!17323 (left!16993 (left!16993 (c!308318 v!6342)))))))))

(assert (=> b!1891473 (=> res!844493 e!1207416)))

(declare-fun b!1891474 () Bool)

(assert (=> b!1891474 (= e!1207416 (inv!28232 (right!17323 (left!16993 (left!16993 (c!308318 v!6342))))))))

(assert (= (and d!579311 c!308569) b!1891472))

(assert (= (and d!579311 (not c!308569)) b!1891473))

(assert (= (and b!1891473 (not res!844493)) b!1891474))

(declare-fun m!2322637 () Bool)

(assert (=> b!1891472 m!2322637))

(declare-fun m!2322639 () Bool)

(assert (=> b!1891474 m!2322639))

(assert (=> b!1891180 d!579311))

(declare-fun d!579313 () Bool)

(assert (=> d!579313 (= (list!8585 lt!724184) (list!8589 (c!308316 lt!724184)))))

(declare-fun bs!413137 () Bool)

(assert (= bs!413137 d!579313))

(declare-fun m!2322641 () Bool)

(assert (=> bs!413137 m!2322641))

(assert (=> d!579017 d!579313))

(declare-fun d!579315 () Bool)

(declare-fun res!844494 () Bool)

(declare-fun e!1207417 () Bool)

(assert (=> d!579315 (=> (not res!844494) (not e!1207417))))

(assert (=> d!579315 (= res!844494 (<= (size!16780 (list!8594 (xs!9933 (right!17323 (left!16993 (c!308318 v!6342)))))) 512))))

(assert (=> d!579315 (= (inv!28232 (right!17323 (left!16993 (c!308318 v!6342)))) e!1207417)))

(declare-fun b!1891475 () Bool)

(declare-fun res!844495 () Bool)

(assert (=> b!1891475 (=> (not res!844495) (not e!1207417))))

(assert (=> b!1891475 (= res!844495 (= (csize!14317 (right!17323 (left!16993 (c!308318 v!6342)))) (size!16780 (list!8594 (xs!9933 (right!17323 (left!16993 (c!308318 v!6342))))))))))

(declare-fun b!1891476 () Bool)

(assert (=> b!1891476 (= e!1207417 (and (> (csize!14317 (right!17323 (left!16993 (c!308318 v!6342)))) 0) (<= (csize!14317 (right!17323 (left!16993 (c!308318 v!6342)))) 512)))))

(assert (= (and d!579315 res!844494) b!1891475))

(assert (= (and b!1891475 res!844495) b!1891476))

(declare-fun m!2322643 () Bool)

(assert (=> d!579315 m!2322643))

(assert (=> d!579315 m!2322643))

(declare-fun m!2322645 () Bool)

(assert (=> d!579315 m!2322645))

(assert (=> b!1891475 m!2322643))

(assert (=> b!1891475 m!2322643))

(assert (=> b!1891475 m!2322645))

(assert (=> b!1891134 d!579315))

(declare-fun d!579317 () Bool)

(declare-fun c!308570 () Bool)

(assert (=> d!579317 (= c!308570 ((_ is Nil!21177) (t!175426 lt!724142)))))

(declare-fun e!1207418 () (InoxSet Token!7056))

(assert (=> d!579317 (= (content!3123 (t!175426 lt!724142)) e!1207418)))

(declare-fun b!1891477 () Bool)

(assert (=> b!1891477 (= e!1207418 ((as const (Array Token!7056 Bool)) false))))

(declare-fun b!1891478 () Bool)

(assert (=> b!1891478 (= e!1207418 ((_ map or) (store ((as const (Array Token!7056 Bool)) false) (h!26578 (t!175426 lt!724142)) true) (content!3123 (t!175426 (t!175426 lt!724142)))))))

(assert (= (and d!579317 c!308570) b!1891477))

(assert (= (and d!579317 (not c!308570)) b!1891478))

(declare-fun m!2322647 () Bool)

(assert (=> b!1891478 m!2322647))

(declare-fun m!2322649 () Bool)

(assert (=> b!1891478 m!2322649))

(assert (=> b!1891140 d!579317))

(declare-fun d!579319 () Bool)

(declare-fun res!844496 () Bool)

(declare-fun e!1207419 () Bool)

(assert (=> d!579319 (=> (not res!844496) (not e!1207419))))

(assert (=> d!579319 (= res!844496 (not (isEmpty!13010 (originalCharacters!4559 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))))))))

(assert (=> d!579319 (= (inv!28240 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))) e!1207419)))

(declare-fun b!1891479 () Bool)

(declare-fun res!844497 () Bool)

(assert (=> b!1891479 (=> (not res!844497) (not e!1207419))))

(assert (=> b!1891479 (= res!844497 (= (originalCharacters!4559 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))) (list!8585 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))))) (value!118523 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))))))

(declare-fun b!1891480 () Bool)

(assert (=> b!1891480 (= e!1207419 (= (size!16776 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))) (size!16783 (originalCharacters!4559 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))))))))

(assert (= (and d!579319 res!844496) b!1891479))

(assert (= (and b!1891479 res!844497) b!1891480))

(declare-fun b_lambda!62023 () Bool)

(assert (=> (not b_lambda!62023) (not b!1891479)))

(declare-fun t!175545 () Bool)

(declare-fun tb!114925 () Bool)

(assert (=> (and b!1890787 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))) t!175545) tb!114925))

(declare-fun b!1891481 () Bool)

(declare-fun e!1207420 () Bool)

(declare-fun tp!539488 () Bool)

(assert (=> b!1891481 (= e!1207420 (and (inv!28238 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))))) (value!118523 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))) tp!539488))))

(declare-fun result!138980 () Bool)

(assert (=> tb!114925 (= result!138980 (and (inv!28239 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))))) (value!118523 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))))) e!1207420))))

(assert (= tb!114925 b!1891481))

(declare-fun m!2322651 () Bool)

(assert (=> b!1891481 m!2322651))

(declare-fun m!2322653 () Bool)

(assert (=> tb!114925 m!2322653))

(assert (=> b!1891479 t!175545))

(declare-fun b_and!145587 () Bool)

(assert (= b_and!145579 (and (=> t!175545 result!138980) b_and!145587)))

(declare-fun t!175547 () Bool)

(declare-fun tb!114927 () Bool)

(assert (=> (and b!1891156 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))) t!175547) tb!114927))

(declare-fun result!138982 () Bool)

(assert (= result!138982 result!138980))

(assert (=> b!1891479 t!175547))

(declare-fun b_and!145589 () Bool)

(assert (= b_and!145581 (and (=> t!175547 result!138982) b_and!145589)))

(declare-fun t!175549 () Bool)

(declare-fun tb!114929 () Bool)

(assert (=> (and b!1891179 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))) t!175549) tb!114929))

(declare-fun result!138984 () Bool)

(assert (= result!138984 result!138980))

(assert (=> b!1891479 t!175549))

(declare-fun b_and!145591 () Bool)

(assert (= b_and!145583 (and (=> t!175549 result!138984) b_and!145591)))

(declare-fun t!175551 () Bool)

(declare-fun tb!114931 () Bool)

(assert (=> (and b!1891189 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))) t!175551) tb!114931))

(declare-fun result!138986 () Bool)

(assert (= result!138986 result!138980))

(assert (=> b!1891479 t!175551))

(declare-fun b_and!145593 () Bool)

(assert (= b_and!145585 (and (=> t!175551 result!138986) b_and!145593)))

(declare-fun m!2322655 () Bool)

(assert (=> d!579319 m!2322655))

(declare-fun m!2322657 () Bool)

(assert (=> b!1891479 m!2322657))

(assert (=> b!1891479 m!2322657))

(declare-fun m!2322659 () Bool)

(assert (=> b!1891479 m!2322659))

(declare-fun m!2322661 () Bool)

(assert (=> b!1891480 m!2322661))

(assert (=> b!1891186 d!579319))

(declare-fun d!579321 () Bool)

(declare-fun lt!724234 () Int)

(assert (=> d!579321 (= lt!724234 (size!16780 (list!8590 (left!16993 (right!17323 (c!308318 v!6342))))))))

(assert (=> d!579321 (= lt!724234 (ite ((_ is Empty!7043) (left!16993 (right!17323 (c!308318 v!6342)))) 0 (ite ((_ is Leaf!10382) (left!16993 (right!17323 (c!308318 v!6342)))) (csize!14317 (left!16993 (right!17323 (c!308318 v!6342)))) (csize!14316 (left!16993 (right!17323 (c!308318 v!6342)))))))))

(assert (=> d!579321 (= (size!16781 (left!16993 (right!17323 (c!308318 v!6342)))) lt!724234)))

(declare-fun bs!413138 () Bool)

(assert (= bs!413138 d!579321))

(assert (=> bs!413138 m!2321989))

(assert (=> bs!413138 m!2321989))

(declare-fun m!2322663 () Bool)

(assert (=> bs!413138 m!2322663))

(assert (=> d!579035 d!579321))

(declare-fun d!579323 () Bool)

(declare-fun lt!724235 () Int)

(assert (=> d!579323 (= lt!724235 (size!16780 (list!8590 (right!17323 (right!17323 (c!308318 v!6342))))))))

(assert (=> d!579323 (= lt!724235 (ite ((_ is Empty!7043) (right!17323 (right!17323 (c!308318 v!6342)))) 0 (ite ((_ is Leaf!10382) (right!17323 (right!17323 (c!308318 v!6342)))) (csize!14317 (right!17323 (right!17323 (c!308318 v!6342)))) (csize!14316 (right!17323 (right!17323 (c!308318 v!6342)))))))))

(assert (=> d!579323 (= (size!16781 (right!17323 (right!17323 (c!308318 v!6342)))) lt!724235)))

(declare-fun bs!413139 () Bool)

(assert (= bs!413139 d!579323))

(assert (=> bs!413139 m!2321991))

(assert (=> bs!413139 m!2321991))

(declare-fun m!2322665 () Bool)

(assert (=> bs!413139 m!2322665))

(assert (=> d!579035 d!579323))

(declare-fun d!579325 () Bool)

(declare-fun lt!724236 () Int)

(assert (=> d!579325 (>= lt!724236 0)))

(declare-fun e!1207421 () Int)

(assert (=> d!579325 (= lt!724236 e!1207421)))

(declare-fun c!308571 () Bool)

(assert (=> d!579325 (= c!308571 ((_ is Nil!21177) (list!8594 (xs!9933 (left!16993 (c!308318 v!6342))))))))

(assert (=> d!579325 (= (size!16780 (list!8594 (xs!9933 (left!16993 (c!308318 v!6342))))) lt!724236)))

(declare-fun b!1891482 () Bool)

(assert (=> b!1891482 (= e!1207421 0)))

(declare-fun b!1891483 () Bool)

(assert (=> b!1891483 (= e!1207421 (+ 1 (size!16780 (t!175426 (list!8594 (xs!9933 (left!16993 (c!308318 v!6342))))))))))

(assert (= (and d!579325 c!308571) b!1891482))

(assert (= (and d!579325 (not c!308571)) b!1891483))

(declare-fun m!2322667 () Bool)

(assert (=> b!1891483 m!2322667))

(assert (=> b!1891122 d!579325))

(assert (=> b!1891122 d!579277))

(declare-fun d!579327 () Bool)

(declare-fun c!308572 () Bool)

(assert (=> d!579327 (= c!308572 ((_ is Nil!21177) lt!724189))))

(declare-fun e!1207422 () (InoxSet Token!7056))

(assert (=> d!579327 (= (content!3123 lt!724189) e!1207422)))

(declare-fun b!1891484 () Bool)

(assert (=> b!1891484 (= e!1207422 ((as const (Array Token!7056 Bool)) false))))

(declare-fun b!1891485 () Bool)

(assert (=> b!1891485 (= e!1207422 ((_ map or) (store ((as const (Array Token!7056 Bool)) false) (h!26578 lt!724189) true) (content!3123 (t!175426 lt!724189))))))

(assert (= (and d!579327 c!308572) b!1891484))

(assert (= (and d!579327 (not c!308572)) b!1891485))

(declare-fun m!2322669 () Bool)

(assert (=> b!1891485 m!2322669))

(declare-fun m!2322671 () Bool)

(assert (=> b!1891485 m!2322671))

(assert (=> d!579029 d!579327))

(declare-fun d!579329 () Bool)

(declare-fun c!308573 () Bool)

(assert (=> d!579329 (= c!308573 ((_ is Nil!21177) (list!8590 (left!16993 (c!308318 v!6342)))))))

(declare-fun e!1207423 () (InoxSet Token!7056))

(assert (=> d!579329 (= (content!3123 (list!8590 (left!16993 (c!308318 v!6342)))) e!1207423)))

(declare-fun b!1891486 () Bool)

(assert (=> b!1891486 (= e!1207423 ((as const (Array Token!7056 Bool)) false))))

(declare-fun b!1891487 () Bool)

(assert (=> b!1891487 (= e!1207423 ((_ map or) (store ((as const (Array Token!7056 Bool)) false) (h!26578 (list!8590 (left!16993 (c!308318 v!6342)))) true) (content!3123 (t!175426 (list!8590 (left!16993 (c!308318 v!6342)))))))))

(assert (= (and d!579329 c!308573) b!1891486))

(assert (= (and d!579329 (not c!308573)) b!1891487))

(declare-fun m!2322673 () Bool)

(assert (=> b!1891487 m!2322673))

(assert (=> b!1891487 m!2322583))

(assert (=> d!579029 d!579329))

(declare-fun d!579331 () Bool)

(declare-fun c!308574 () Bool)

(assert (=> d!579331 (= c!308574 ((_ is Nil!21177) (list!8590 (right!17323 (c!308318 v!6342)))))))

(declare-fun e!1207424 () (InoxSet Token!7056))

(assert (=> d!579331 (= (content!3123 (list!8590 (right!17323 (c!308318 v!6342)))) e!1207424)))

(declare-fun b!1891488 () Bool)

(assert (=> b!1891488 (= e!1207424 ((as const (Array Token!7056 Bool)) false))))

(declare-fun b!1891489 () Bool)

(assert (=> b!1891489 (= e!1207424 ((_ map or) (store ((as const (Array Token!7056 Bool)) false) (h!26578 (list!8590 (right!17323 (c!308318 v!6342)))) true) (content!3123 (t!175426 (list!8590 (right!17323 (c!308318 v!6342)))))))))

(assert (= (and d!579331 c!308574) b!1891488))

(assert (= (and d!579331 (not c!308574)) b!1891489))

(declare-fun m!2322675 () Bool)

(assert (=> b!1891489 m!2322675))

(declare-fun m!2322677 () Bool)

(assert (=> b!1891489 m!2322677))

(assert (=> d!579029 d!579331))

(declare-fun d!579333 () Bool)

(declare-fun res!844498 () Bool)

(declare-fun e!1207425 () Bool)

(assert (=> d!579333 (=> (not res!844498) (not e!1207425))))

(assert (=> d!579333 (= res!844498 (<= (size!16780 (list!8594 (xs!9933 (left!16993 (right!17323 (c!308318 v!6342)))))) 512))))

(assert (=> d!579333 (= (inv!28232 (left!16993 (right!17323 (c!308318 v!6342)))) e!1207425)))

(declare-fun b!1891490 () Bool)

(declare-fun res!844499 () Bool)

(assert (=> b!1891490 (=> (not res!844499) (not e!1207425))))

(assert (=> b!1891490 (= res!844499 (= (csize!14317 (left!16993 (right!17323 (c!308318 v!6342)))) (size!16780 (list!8594 (xs!9933 (left!16993 (right!17323 (c!308318 v!6342))))))))))

(declare-fun b!1891491 () Bool)

(assert (=> b!1891491 (= e!1207425 (and (> (csize!14317 (left!16993 (right!17323 (c!308318 v!6342)))) 0) (<= (csize!14317 (left!16993 (right!17323 (c!308318 v!6342)))) 512)))))

(assert (= (and d!579333 res!844498) b!1891490))

(assert (= (and b!1891490 res!844499) b!1891491))

(declare-fun m!2322679 () Bool)

(assert (=> d!579333 m!2322679))

(assert (=> d!579333 m!2322679))

(declare-fun m!2322681 () Bool)

(assert (=> d!579333 m!2322681))

(assert (=> b!1891490 m!2322679))

(assert (=> b!1891490 m!2322679))

(assert (=> b!1891490 m!2322681))

(assert (=> b!1891057 d!579333))

(declare-fun d!579335 () Bool)

(assert (=> d!579335 (= (inv!28239 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (value!118523 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (isBalanced!2215 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (value!118523 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))))))

(declare-fun bs!413140 () Bool)

(assert (= bs!413140 d!579335))

(declare-fun m!2322683 () Bool)

(assert (=> bs!413140 m!2322683))

(assert (=> tb!114849 d!579335))

(declare-fun d!579337 () Bool)

(declare-fun charsToBigInt!1 (List!21257) Int)

(assert (=> d!579337 (= (inv!17 (value!118523 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))) (= (charsToBigInt!1 (text!27664 (value!118523 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (value!118515 (value!118523 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))))

(declare-fun bs!413141 () Bool)

(assert (= bs!413141 d!579337))

(declare-fun m!2322685 () Bool)

(assert (=> bs!413141 m!2322685))

(assert (=> b!1891030 d!579337))

(assert (=> b!1891036 d!579261))

(declare-fun d!579339 () Bool)

(assert (=> d!579339 (= (inv!28233 (xs!9933 (right!17323 (right!17323 (c!308318 v!6342))))) (<= (size!16780 (innerList!7103 (xs!9933 (right!17323 (right!17323 (c!308318 v!6342)))))) 2147483647))))

(declare-fun bs!413142 () Bool)

(assert (= bs!413142 d!579339))

(declare-fun m!2322687 () Bool)

(assert (=> bs!413142 m!2322687))

(assert (=> b!1891194 d!579339))

(declare-fun b!1891495 () Bool)

(declare-fun e!1207427 () Bool)

(declare-fun lt!724237 () List!21259)

(assert (=> b!1891495 (= e!1207427 (or (not (= (list!8590 (right!17323 (left!16993 (c!308318 v!6342)))) Nil!21177)) (= lt!724237 (list!8590 (left!16993 (left!16993 (c!308318 v!6342)))))))))

(declare-fun b!1891494 () Bool)

(declare-fun res!844501 () Bool)

(assert (=> b!1891494 (=> (not res!844501) (not e!1207427))))

(assert (=> b!1891494 (= res!844501 (= (size!16780 lt!724237) (+ (size!16780 (list!8590 (left!16993 (left!16993 (c!308318 v!6342))))) (size!16780 (list!8590 (right!17323 (left!16993 (c!308318 v!6342))))))))))

(declare-fun d!579341 () Bool)

(assert (=> d!579341 e!1207427))

(declare-fun res!844500 () Bool)

(assert (=> d!579341 (=> (not res!844500) (not e!1207427))))

(assert (=> d!579341 (= res!844500 (= (content!3123 lt!724237) ((_ map or) (content!3123 (list!8590 (left!16993 (left!16993 (c!308318 v!6342))))) (content!3123 (list!8590 (right!17323 (left!16993 (c!308318 v!6342))))))))))

(declare-fun e!1207426 () List!21259)

(assert (=> d!579341 (= lt!724237 e!1207426)))

(declare-fun c!308575 () Bool)

(assert (=> d!579341 (= c!308575 ((_ is Nil!21177) (list!8590 (left!16993 (left!16993 (c!308318 v!6342))))))))

(assert (=> d!579341 (= (++!5713 (list!8590 (left!16993 (left!16993 (c!308318 v!6342)))) (list!8590 (right!17323 (left!16993 (c!308318 v!6342))))) lt!724237)))

(declare-fun b!1891492 () Bool)

(assert (=> b!1891492 (= e!1207426 (list!8590 (right!17323 (left!16993 (c!308318 v!6342)))))))

(declare-fun b!1891493 () Bool)

(assert (=> b!1891493 (= e!1207426 (Cons!21177 (h!26578 (list!8590 (left!16993 (left!16993 (c!308318 v!6342))))) (++!5713 (t!175426 (list!8590 (left!16993 (left!16993 (c!308318 v!6342))))) (list!8590 (right!17323 (left!16993 (c!308318 v!6342)))))))))

(assert (= (and d!579341 c!308575) b!1891492))

(assert (= (and d!579341 (not c!308575)) b!1891493))

(assert (= (and d!579341 res!844500) b!1891494))

(assert (= (and b!1891494 res!844501) b!1891495))

(declare-fun m!2322689 () Bool)

(assert (=> b!1891494 m!2322689))

(assert (=> b!1891494 m!2321981))

(assert (=> b!1891494 m!2322491))

(assert (=> b!1891494 m!2321983))

(assert (=> b!1891494 m!2322493))

(declare-fun m!2322691 () Bool)

(assert (=> d!579341 m!2322691))

(assert (=> d!579341 m!2321981))

(declare-fun m!2322693 () Bool)

(assert (=> d!579341 m!2322693))

(assert (=> d!579341 m!2321983))

(declare-fun m!2322695 () Bool)

(assert (=> d!579341 m!2322695))

(assert (=> b!1891493 m!2321983))

(declare-fun m!2322697 () Bool)

(assert (=> b!1891493 m!2322697))

(assert (=> b!1891103 d!579341))

(declare-fun b!1891499 () Bool)

(declare-fun e!1207429 () List!21259)

(assert (=> b!1891499 (= e!1207429 (++!5713 (list!8590 (left!16993 (left!16993 (left!16993 (c!308318 v!6342))))) (list!8590 (right!17323 (left!16993 (left!16993 (c!308318 v!6342)))))))))

(declare-fun d!579343 () Bool)

(declare-fun c!308576 () Bool)

(assert (=> d!579343 (= c!308576 ((_ is Empty!7043) (left!16993 (left!16993 (c!308318 v!6342)))))))

(declare-fun e!1207428 () List!21259)

(assert (=> d!579343 (= (list!8590 (left!16993 (left!16993 (c!308318 v!6342)))) e!1207428)))

(declare-fun b!1891496 () Bool)

(assert (=> b!1891496 (= e!1207428 Nil!21177)))

(declare-fun b!1891498 () Bool)

(assert (=> b!1891498 (= e!1207429 (list!8594 (xs!9933 (left!16993 (left!16993 (c!308318 v!6342))))))))

(declare-fun b!1891497 () Bool)

(assert (=> b!1891497 (= e!1207428 e!1207429)))

(declare-fun c!308577 () Bool)

(assert (=> b!1891497 (= c!308577 ((_ is Leaf!10382) (left!16993 (left!16993 (c!308318 v!6342)))))))

(assert (= (and d!579343 c!308576) b!1891496))

(assert (= (and d!579343 (not c!308576)) b!1891497))

(assert (= (and b!1891497 c!308577) b!1891498))

(assert (= (and b!1891497 (not c!308577)) b!1891499))

(declare-fun m!2322699 () Bool)

(assert (=> b!1891499 m!2322699))

(declare-fun m!2322701 () Bool)

(assert (=> b!1891499 m!2322701))

(assert (=> b!1891499 m!2322699))

(assert (=> b!1891499 m!2322701))

(declare-fun m!2322703 () Bool)

(assert (=> b!1891499 m!2322703))

(assert (=> b!1891498 m!2322629))

(assert (=> b!1891103 d!579343))

(declare-fun b!1891503 () Bool)

(declare-fun e!1207431 () List!21259)

(assert (=> b!1891503 (= e!1207431 (++!5713 (list!8590 (left!16993 (right!17323 (left!16993 (c!308318 v!6342))))) (list!8590 (right!17323 (right!17323 (left!16993 (c!308318 v!6342)))))))))

(declare-fun d!579345 () Bool)

(declare-fun c!308578 () Bool)

(assert (=> d!579345 (= c!308578 ((_ is Empty!7043) (right!17323 (left!16993 (c!308318 v!6342)))))))

(declare-fun e!1207430 () List!21259)

(assert (=> d!579345 (= (list!8590 (right!17323 (left!16993 (c!308318 v!6342)))) e!1207430)))

(declare-fun b!1891500 () Bool)

(assert (=> b!1891500 (= e!1207430 Nil!21177)))

(declare-fun b!1891502 () Bool)

(assert (=> b!1891502 (= e!1207431 (list!8594 (xs!9933 (right!17323 (left!16993 (c!308318 v!6342))))))))

(declare-fun b!1891501 () Bool)

(assert (=> b!1891501 (= e!1207430 e!1207431)))

(declare-fun c!308579 () Bool)

(assert (=> b!1891501 (= c!308579 ((_ is Leaf!10382) (right!17323 (left!16993 (c!308318 v!6342)))))))

(assert (= (and d!579345 c!308578) b!1891500))

(assert (= (and d!579345 (not c!308578)) b!1891501))

(assert (= (and b!1891501 c!308579) b!1891502))

(assert (= (and b!1891501 (not c!308579)) b!1891503))

(declare-fun m!2322705 () Bool)

(assert (=> b!1891503 m!2322705))

(declare-fun m!2322707 () Bool)

(assert (=> b!1891503 m!2322707))

(assert (=> b!1891503 m!2322705))

(assert (=> b!1891503 m!2322707))

(declare-fun m!2322709 () Bool)

(assert (=> b!1891503 m!2322709))

(assert (=> b!1891502 m!2322643))

(assert (=> b!1891103 d!579345))

(assert (=> b!1890792 d!579041))

(assert (=> b!1891003 d!579175))

(assert (=> b!1891003 d!579177))

(declare-fun b!1891504 () Bool)

(declare-fun res!844502 () Bool)

(declare-fun e!1207432 () Bool)

(assert (=> b!1891504 (=> (not res!844502) (not e!1207432))))

(assert (=> b!1891504 (= res!844502 (<= (- (height!1096 (left!16993 (left!16993 (left!16993 (c!308318 v!6342))))) (height!1096 (right!17323 (left!16993 (left!16993 (c!308318 v!6342)))))) 1))))

(declare-fun b!1891505 () Bool)

(declare-fun res!844505 () Bool)

(assert (=> b!1891505 (=> (not res!844505) (not e!1207432))))

(assert (=> b!1891505 (= res!844505 (isBalanced!2213 (right!17323 (left!16993 (left!16993 (c!308318 v!6342))))))))

(declare-fun b!1891506 () Bool)

(declare-fun res!844503 () Bool)

(assert (=> b!1891506 (=> (not res!844503) (not e!1207432))))

(assert (=> b!1891506 (= res!844503 (not (isEmpty!13006 (left!16993 (left!16993 (left!16993 (c!308318 v!6342)))))))))

(declare-fun d!579347 () Bool)

(declare-fun res!844507 () Bool)

(declare-fun e!1207433 () Bool)

(assert (=> d!579347 (=> res!844507 e!1207433)))

(assert (=> d!579347 (= res!844507 (not ((_ is Node!7043) (left!16993 (left!16993 (c!308318 v!6342))))))))

(assert (=> d!579347 (= (isBalanced!2213 (left!16993 (left!16993 (c!308318 v!6342)))) e!1207433)))

(declare-fun b!1891507 () Bool)

(declare-fun res!844506 () Bool)

(assert (=> b!1891507 (=> (not res!844506) (not e!1207432))))

(assert (=> b!1891507 (= res!844506 (isBalanced!2213 (left!16993 (left!16993 (left!16993 (c!308318 v!6342))))))))

(declare-fun b!1891508 () Bool)

(assert (=> b!1891508 (= e!1207433 e!1207432)))

(declare-fun res!844504 () Bool)

(assert (=> b!1891508 (=> (not res!844504) (not e!1207432))))

(assert (=> b!1891508 (= res!844504 (<= (- 1) (- (height!1096 (left!16993 (left!16993 (left!16993 (c!308318 v!6342))))) (height!1096 (right!17323 (left!16993 (left!16993 (c!308318 v!6342))))))))))

(declare-fun b!1891509 () Bool)

(assert (=> b!1891509 (= e!1207432 (not (isEmpty!13006 (right!17323 (left!16993 (left!16993 (c!308318 v!6342)))))))))

(assert (= (and d!579347 (not res!844507)) b!1891508))

(assert (= (and b!1891508 res!844504) b!1891504))

(assert (= (and b!1891504 res!844502) b!1891507))

(assert (= (and b!1891507 res!844506) b!1891505))

(assert (= (and b!1891505 res!844505) b!1891506))

(assert (= (and b!1891506 res!844503) b!1891509))

(declare-fun m!2322711 () Bool)

(assert (=> b!1891507 m!2322711))

(declare-fun m!2322713 () Bool)

(assert (=> b!1891509 m!2322713))

(declare-fun m!2322715 () Bool)

(assert (=> b!1891506 m!2322715))

(assert (=> b!1891504 m!2322359))

(assert (=> b!1891504 m!2322361))

(assert (=> b!1891508 m!2322359))

(assert (=> b!1891508 m!2322361))

(declare-fun m!2322717 () Bool)

(assert (=> b!1891505 m!2322717))

(assert (=> b!1891052 d!579347))

(declare-fun d!579349 () Bool)

(declare-fun lt!724238 () Int)

(assert (=> d!579349 (>= lt!724238 0)))

(declare-fun e!1207434 () Int)

(assert (=> d!579349 (= lt!724238 e!1207434)))

(declare-fun c!308580 () Bool)

(assert (=> d!579349 (= c!308580 ((_ is Nil!21177) (t!175426 (list!8594 (xs!9933 (c!308318 v!6342))))))))

(assert (=> d!579349 (= (size!16780 (t!175426 (list!8594 (xs!9933 (c!308318 v!6342))))) lt!724238)))

(declare-fun b!1891510 () Bool)

(assert (=> b!1891510 (= e!1207434 0)))

(declare-fun b!1891511 () Bool)

(assert (=> b!1891511 (= e!1207434 (+ 1 (size!16780 (t!175426 (t!175426 (list!8594 (xs!9933 (c!308318 v!6342))))))))))

(assert (= (and d!579349 c!308580) b!1891510))

(assert (= (and d!579349 (not c!308580)) b!1891511))

(declare-fun m!2322719 () Bool)

(assert (=> b!1891511 m!2322719))

(assert (=> b!1891048 d!579349))

(assert (=> b!1891007 d!579175))

(assert (=> b!1891007 d!579177))

(declare-fun b!1891515 () Bool)

(declare-fun e!1207435 () Bool)

(declare-fun lt!724239 () List!21258)

(assert (=> b!1891515 (= e!1207435 (or (not (= (printList!1016 thiss!13601 (t!175426 (dropList!762 v!6342 from!837))) Nil!21176)) (= lt!724239 (t!175425 (t!175425 (list!8585 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837)))))))))))

(declare-fun e!1207436 () List!21258)

(declare-fun b!1891513 () Bool)

(assert (=> b!1891513 (= e!1207436 (Cons!21176 (h!26577 (t!175425 (t!175425 (list!8585 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837))))))) (++!5711 (t!175425 (t!175425 (t!175425 (list!8585 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837))))))) (printList!1016 thiss!13601 (t!175426 (dropList!762 v!6342 from!837))))))))

(declare-fun b!1891514 () Bool)

(declare-fun res!844509 () Bool)

(assert (=> b!1891514 (=> (not res!844509) (not e!1207435))))

(assert (=> b!1891514 (= res!844509 (= (size!16783 lt!724239) (+ (size!16783 (t!175425 (t!175425 (list!8585 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837))))))) (size!16783 (printList!1016 thiss!13601 (t!175426 (dropList!762 v!6342 from!837)))))))))

(declare-fun d!579351 () Bool)

(assert (=> d!579351 e!1207435))

(declare-fun res!844508 () Bool)

(assert (=> d!579351 (=> (not res!844508) (not e!1207435))))

(assert (=> d!579351 (= res!844508 (= (content!3124 lt!724239) ((_ map or) (content!3124 (t!175425 (t!175425 (list!8585 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837))))))) (content!3124 (printList!1016 thiss!13601 (t!175426 (dropList!762 v!6342 from!837)))))))))

(assert (=> d!579351 (= lt!724239 e!1207436)))

(declare-fun c!308581 () Bool)

(assert (=> d!579351 (= c!308581 ((_ is Nil!21176) (t!175425 (t!175425 (list!8585 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837))))))))))

(assert (=> d!579351 (= (++!5711 (t!175425 (t!175425 (list!8585 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837)))))) (printList!1016 thiss!13601 (t!175426 (dropList!762 v!6342 from!837)))) lt!724239)))

(declare-fun b!1891512 () Bool)

(assert (=> b!1891512 (= e!1207436 (printList!1016 thiss!13601 (t!175426 (dropList!762 v!6342 from!837))))))

(assert (= (and d!579351 c!308581) b!1891512))

(assert (= (and d!579351 (not c!308581)) b!1891513))

(assert (= (and d!579351 res!844508) b!1891514))

(assert (= (and b!1891514 res!844509) b!1891515))

(assert (=> b!1891513 m!2321321))

(declare-fun m!2322721 () Bool)

(assert (=> b!1891513 m!2322721))

(declare-fun m!2322723 () Bool)

(assert (=> b!1891514 m!2322723))

(declare-fun m!2322725 () Bool)

(assert (=> b!1891514 m!2322725))

(assert (=> b!1891514 m!2321321))

(assert (=> b!1891514 m!2321497))

(declare-fun m!2322727 () Bool)

(assert (=> d!579351 m!2322727))

(assert (=> d!579351 m!2322445))

(assert (=> d!579351 m!2321321))

(assert (=> d!579351 m!2321503))

(assert (=> b!1891069 d!579351))

(declare-fun d!579353 () Bool)

(declare-fun lt!724240 () Int)

(assert (=> d!579353 (>= lt!724240 0)))

(declare-fun e!1207437 () Int)

(assert (=> d!579353 (= lt!724240 e!1207437)))

(declare-fun c!308582 () Bool)

(assert (=> d!579353 (= c!308582 ((_ is Nil!21177) lt!724189))))

(assert (=> d!579353 (= (size!16780 lt!724189) lt!724240)))

(declare-fun b!1891516 () Bool)

(assert (=> b!1891516 (= e!1207437 0)))

(declare-fun b!1891517 () Bool)

(assert (=> b!1891517 (= e!1207437 (+ 1 (size!16780 (t!175426 lt!724189))))))

(assert (= (and d!579353 c!308582) b!1891516))

(assert (= (and d!579353 (not c!308582)) b!1891517))

(declare-fun m!2322729 () Bool)

(assert (=> b!1891517 m!2322729))

(assert (=> b!1891098 d!579353))

(assert (=> b!1891098 d!579237))

(assert (=> b!1891098 d!579211))

(declare-fun d!579355 () Bool)

(assert (=> d!579355 (= (list!8595 (xs!9932 (c!308316 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837)))))) (innerList!7102 (xs!9932 (c!308316 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837)))))))))

(assert (=> b!1891015 d!579355))

(assert (=> b!1891106 d!579181))

(declare-fun d!579357 () Bool)

(assert (=> d!579357 (= (inv!28223 (tag!4166 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) (= (mod (str.len (value!118522 (tag!4166 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) 2) 0))))

(assert (=> b!1891178 d!579357))

(declare-fun d!579359 () Bool)

(declare-fun res!844510 () Bool)

(declare-fun e!1207438 () Bool)

(assert (=> d!579359 (=> (not res!844510) (not e!1207438))))

(assert (=> d!579359 (= res!844510 (semiInverseModEq!1523 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) (toValue!5357 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))))))

(assert (=> d!579359 (= (inv!28241 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) e!1207438)))

(declare-fun b!1891518 () Bool)

(assert (=> b!1891518 (= e!1207438 (equivClasses!1450 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) (toValue!5357 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))))))

(assert (= (and d!579359 res!844510) b!1891518))

(declare-fun m!2322731 () Bool)

(assert (=> d!579359 m!2322731))

(declare-fun m!2322733 () Bool)

(assert (=> b!1891518 m!2322733))

(assert (=> b!1891178 d!579359))

(declare-fun d!579361 () Bool)

(declare-fun c!308583 () Bool)

(assert (=> d!579361 (= c!308583 ((_ is Node!7042) (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (value!118523 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))))))

(declare-fun e!1207439 () Bool)

(assert (=> d!579361 (= (inv!28238 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (value!118523 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) e!1207439)))

(declare-fun b!1891519 () Bool)

(assert (=> b!1891519 (= e!1207439 (inv!28245 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (value!118523 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))))))

(declare-fun b!1891520 () Bool)

(declare-fun e!1207440 () Bool)

(assert (=> b!1891520 (= e!1207439 e!1207440)))

(declare-fun res!844511 () Bool)

(assert (=> b!1891520 (= res!844511 (not ((_ is Leaf!10381) (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (value!118523 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))))))

(assert (=> b!1891520 (=> res!844511 e!1207440)))

(declare-fun b!1891521 () Bool)

(assert (=> b!1891521 (= e!1207440 (inv!28246 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (value!118523 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))))))

(assert (= (and d!579361 c!308583) b!1891519))

(assert (= (and d!579361 (not c!308583)) b!1891520))

(assert (= (and b!1891520 (not res!844511)) b!1891521))

(declare-fun m!2322735 () Bool)

(assert (=> b!1891519 m!2322735))

(declare-fun m!2322737 () Bool)

(assert (=> b!1891521 m!2322737))

(assert (=> b!1891087 d!579361))

(declare-fun d!579363 () Bool)

(assert (=> d!579363 true))

(declare-fun lambda!73930 () Int)

(declare-fun order!13375 () Int)

(declare-fun order!13373 () Int)

(declare-fun dynLambda!10288 (Int Int) Int)

(declare-fun dynLambda!10289 (Int Int) Int)

(assert (=> d!579363 (< (dynLambda!10288 order!13373 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) (dynLambda!10289 order!13375 lambda!73930))))

(assert (=> d!579363 true))

(declare-fun order!13377 () Int)

(declare-fun dynLambda!10290 (Int Int) Int)

(assert (=> d!579363 (< (dynLambda!10290 order!13377 (toValue!5357 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) (dynLambda!10289 order!13375 lambda!73930))))

(declare-fun Forall!986 (Int) Bool)

(assert (=> d!579363 (= (semiInverseModEq!1523 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (toValue!5357 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) (Forall!986 lambda!73930))))

(declare-fun bs!413160 () Bool)

(assert (= bs!413160 d!579363))

(declare-fun m!2323121 () Bool)

(assert (=> bs!413160 m!2323121))

(assert (=> d!578985 d!579363))

(assert (=> b!1891049 d!579257))

(assert (=> b!1891049 d!579259))

(declare-fun d!579521 () Bool)

(declare-fun lt!724263 () Int)

(assert (=> d!579521 (>= lt!724263 0)))

(declare-fun e!1207607 () Int)

(assert (=> d!579521 (= lt!724263 e!1207607)))

(declare-fun c!308629 () Bool)

(assert (=> d!579521 (= c!308629 ((_ is Nil!21177) lt!724186))))

(assert (=> d!579521 (= (size!16780 lt!724186) lt!724263)))

(declare-fun b!1891804 () Bool)

(assert (=> b!1891804 (= e!1207607 0)))

(declare-fun b!1891805 () Bool)

(assert (=> b!1891805 (= e!1207607 (+ 1 (size!16780 (t!175426 lt!724186))))))

(assert (= (and d!579521 c!308629) b!1891804))

(assert (= (and d!579521 (not c!308629)) b!1891805))

(declare-fun m!2323123 () Bool)

(assert (=> b!1891805 m!2323123))

(assert (=> b!1891077 d!579521))

(declare-fun d!579523 () Bool)

(assert (=> d!579523 (= (inv!28233 (xs!9933 (left!16993 (left!16993 (c!308318 v!6342))))) (<= (size!16780 (innerList!7103 (xs!9933 (left!16993 (left!16993 (c!308318 v!6342)))))) 2147483647))))

(declare-fun bs!413161 () Bool)

(assert (= bs!413161 d!579523))

(declare-fun m!2323125 () Bool)

(assert (=> bs!413161 m!2323125))

(assert (=> b!1891181 d!579523))

(declare-fun d!579525 () Bool)

(declare-fun c!308630 () Bool)

(assert (=> d!579525 (= c!308630 ((_ is IntegerValue!11664) (value!118523 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))))

(declare-fun e!1207608 () Bool)

(assert (=> d!579525 (= (inv!21 (value!118523 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))) e!1207608)))

(declare-fun b!1891806 () Bool)

(assert (=> b!1891806 (= e!1207608 (inv!16 (value!118523 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))))

(declare-fun b!1891807 () Bool)

(declare-fun e!1207609 () Bool)

(assert (=> b!1891807 (= e!1207609 (inv!15 (value!118523 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))))

(declare-fun b!1891808 () Bool)

(declare-fun res!844593 () Bool)

(assert (=> b!1891808 (=> res!844593 e!1207609)))

(assert (=> b!1891808 (= res!844593 (not ((_ is IntegerValue!11666) (value!118523 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))))))))

(declare-fun e!1207610 () Bool)

(assert (=> b!1891808 (= e!1207610 e!1207609)))

(declare-fun b!1891809 () Bool)

(assert (=> b!1891809 (= e!1207610 (inv!17 (value!118523 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))))

(declare-fun b!1891810 () Bool)

(assert (=> b!1891810 (= e!1207608 e!1207610)))

(declare-fun c!308631 () Bool)

(assert (=> b!1891810 (= c!308631 ((_ is IntegerValue!11665) (value!118523 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))))

(assert (= (and d!579525 c!308630) b!1891806))

(assert (= (and d!579525 (not c!308630)) b!1891810))

(assert (= (and b!1891810 c!308631) b!1891809))

(assert (= (and b!1891810 (not c!308631)) b!1891808))

(assert (= (and b!1891808 (not res!844593)) b!1891807))

(declare-fun m!2323127 () Bool)

(assert (=> b!1891806 m!2323127))

(declare-fun m!2323129 () Bool)

(assert (=> b!1891807 m!2323129))

(declare-fun m!2323131 () Bool)

(assert (=> b!1891809 m!2323131))

(assert (=> b!1891187 d!579525))

(declare-fun d!579527 () Bool)

(assert (=> d!579527 true))

(declare-fun lambda!73933 () Int)

(declare-fun order!13379 () Int)

(declare-fun dynLambda!10291 (Int Int) Int)

(assert (=> d!579527 (< (dynLambda!10290 order!13377 (toValue!5357 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) (dynLambda!10291 order!13379 lambda!73933))))

(declare-fun Forall2!611 (Int) Bool)

(assert (=> d!579527 (= (equivClasses!1450 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (toValue!5357 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) (Forall2!611 lambda!73933))))

(declare-fun bs!413162 () Bool)

(assert (= bs!413162 d!579527))

(declare-fun m!2323133 () Bool)

(assert (=> bs!413162 m!2323133))

(assert (=> b!1891034 d!579527))

(declare-fun d!579529 () Bool)

(assert (=> d!579529 (= (isEmpty!13010 (originalCharacters!4559 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))) ((_ is Nil!21176) (originalCharacters!4559 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))))

(assert (=> d!579027 d!579529))

(declare-fun d!579531 () Bool)

(declare-fun c!308632 () Bool)

(assert (=> d!579531 (= c!308632 ((_ is Node!7043) (left!16993 (right!17323 (left!16993 (c!308318 v!6342))))))))

(declare-fun e!1207613 () Bool)

(assert (=> d!579531 (= (inv!28227 (left!16993 (right!17323 (left!16993 (c!308318 v!6342))))) e!1207613)))

(declare-fun b!1891815 () Bool)

(assert (=> b!1891815 (= e!1207613 (inv!28231 (left!16993 (right!17323 (left!16993 (c!308318 v!6342))))))))

(declare-fun b!1891816 () Bool)

(declare-fun e!1207614 () Bool)

(assert (=> b!1891816 (= e!1207613 e!1207614)))

(declare-fun res!844596 () Bool)

(assert (=> b!1891816 (= res!844596 (not ((_ is Leaf!10382) (left!16993 (right!17323 (left!16993 (c!308318 v!6342)))))))))

(assert (=> b!1891816 (=> res!844596 e!1207614)))

(declare-fun b!1891817 () Bool)

(assert (=> b!1891817 (= e!1207614 (inv!28232 (left!16993 (right!17323 (left!16993 (c!308318 v!6342))))))))

(assert (= (and d!579531 c!308632) b!1891815))

(assert (= (and d!579531 (not c!308632)) b!1891816))

(assert (= (and b!1891816 (not res!844596)) b!1891817))

(declare-fun m!2323135 () Bool)

(assert (=> b!1891815 m!2323135))

(declare-fun m!2323137 () Bool)

(assert (=> b!1891817 m!2323137))

(assert (=> b!1891183 d!579531))

(declare-fun d!579533 () Bool)

(declare-fun c!308633 () Bool)

(assert (=> d!579533 (= c!308633 ((_ is Node!7043) (right!17323 (right!17323 (left!16993 (c!308318 v!6342))))))))

(declare-fun e!1207615 () Bool)

(assert (=> d!579533 (= (inv!28227 (right!17323 (right!17323 (left!16993 (c!308318 v!6342))))) e!1207615)))

(declare-fun b!1891818 () Bool)

(assert (=> b!1891818 (= e!1207615 (inv!28231 (right!17323 (right!17323 (left!16993 (c!308318 v!6342))))))))

(declare-fun b!1891819 () Bool)

(declare-fun e!1207616 () Bool)

(assert (=> b!1891819 (= e!1207615 e!1207616)))

(declare-fun res!844597 () Bool)

(assert (=> b!1891819 (= res!844597 (not ((_ is Leaf!10382) (right!17323 (right!17323 (left!16993 (c!308318 v!6342)))))))))

(assert (=> b!1891819 (=> res!844597 e!1207616)))

(declare-fun b!1891820 () Bool)

(assert (=> b!1891820 (= e!1207616 (inv!28232 (right!17323 (right!17323 (left!16993 (c!308318 v!6342))))))))

(assert (= (and d!579533 c!308633) b!1891818))

(assert (= (and d!579533 (not c!308633)) b!1891819))

(assert (= (and b!1891819 (not res!844597)) b!1891820))

(declare-fun m!2323139 () Bool)

(assert (=> b!1891818 m!2323139))

(declare-fun m!2323141 () Bool)

(assert (=> b!1891820 m!2323141))

(assert (=> b!1891183 d!579533))

(declare-fun d!579535 () Bool)

(declare-fun lt!724264 () Int)

(assert (=> d!579535 (>= lt!724264 0)))

(declare-fun e!1207617 () Int)

(assert (=> d!579535 (= lt!724264 e!1207617)))

(declare-fun c!308634 () Bool)

(assert (=> d!579535 (= c!308634 ((_ is Nil!21176) (t!175425 (list!8585 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837)))))))))

(assert (=> d!579535 (= (size!16783 (t!175425 (list!8585 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837)))))) lt!724264)))

(declare-fun b!1891821 () Bool)

(assert (=> b!1891821 (= e!1207617 0)))

(declare-fun b!1891822 () Bool)

(assert (=> b!1891822 (= e!1207617 (+ 1 (size!16783 (t!175425 (t!175425 (list!8585 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837)))))))))))

(assert (= (and d!579535 c!308634) b!1891821))

(assert (= (and d!579535 (not c!308634)) b!1891822))

(assert (=> b!1891822 m!2322725))

(assert (=> b!1891044 d!579535))

(declare-fun d!579537 () Bool)

(declare-fun lt!724265 () Int)

(assert (=> d!579537 (>= lt!724265 0)))

(declare-fun e!1207618 () Int)

(assert (=> d!579537 (= lt!724265 e!1207618)))

(declare-fun c!308635 () Bool)

(assert (=> d!579537 (= c!308635 ((_ is Nil!21177) (t!175426 lt!724142)))))

(assert (=> d!579537 (= (size!16780 (t!175426 lt!724142)) lt!724265)))

(declare-fun b!1891823 () Bool)

(assert (=> b!1891823 (= e!1207618 0)))

(declare-fun b!1891824 () Bool)

(assert (=> b!1891824 (= e!1207618 (+ 1 (size!16780 (t!175426 (t!175426 lt!724142)))))))

(assert (= (and d!579537 c!308635) b!1891823))

(assert (= (and d!579537 (not c!308635)) b!1891824))

(declare-fun m!2323143 () Bool)

(assert (=> b!1891824 m!2323143))

(assert (=> b!1891012 d!579537))

(declare-fun c!308636 () Bool)

(declare-fun d!579539 () Bool)

(assert (=> d!579539 (= c!308636 ((_ is Nil!21176) (t!175425 (printList!1016 thiss!13601 (t!175426 (dropList!762 v!6342 from!837))))))))

(declare-fun e!1207619 () (InoxSet C!10500))

(assert (=> d!579539 (= (content!3124 (t!175425 (printList!1016 thiss!13601 (t!175426 (dropList!762 v!6342 from!837))))) e!1207619)))

(declare-fun b!1891825 () Bool)

(assert (=> b!1891825 (= e!1207619 ((as const (Array C!10500 Bool)) false))))

(declare-fun b!1891826 () Bool)

(assert (=> b!1891826 (= e!1207619 ((_ map or) (store ((as const (Array C!10500 Bool)) false) (h!26577 (t!175425 (printList!1016 thiss!13601 (t!175426 (dropList!762 v!6342 from!837))))) true) (content!3124 (t!175425 (t!175425 (printList!1016 thiss!13601 (t!175426 (dropList!762 v!6342 from!837))))))))))

(assert (= (and d!579539 c!308636) b!1891825))

(assert (= (and d!579539 (not c!308636)) b!1891826))

(declare-fun m!2323145 () Bool)

(assert (=> b!1891826 m!2323145))

(declare-fun m!2323147 () Bool)

(assert (=> b!1891826 m!2323147))

(assert (=> b!1891152 d!579539))

(declare-fun d!579541 () Bool)

(declare-fun c!308637 () Bool)

(assert (=> d!579541 (= c!308637 ((_ is Node!7043) (left!16993 (left!16993 (right!17323 (c!308318 v!6342))))))))

(declare-fun e!1207620 () Bool)

(assert (=> d!579541 (= (inv!28227 (left!16993 (left!16993 (right!17323 (c!308318 v!6342))))) e!1207620)))

(declare-fun b!1891827 () Bool)

(assert (=> b!1891827 (= e!1207620 (inv!28231 (left!16993 (left!16993 (right!17323 (c!308318 v!6342))))))))

(declare-fun b!1891828 () Bool)

(declare-fun e!1207621 () Bool)

(assert (=> b!1891828 (= e!1207620 e!1207621)))

(declare-fun res!844598 () Bool)

(assert (=> b!1891828 (= res!844598 (not ((_ is Leaf!10382) (left!16993 (left!16993 (right!17323 (c!308318 v!6342)))))))))

(assert (=> b!1891828 (=> res!844598 e!1207621)))

(declare-fun b!1891829 () Bool)

(assert (=> b!1891829 (= e!1207621 (inv!28232 (left!16993 (left!16993 (right!17323 (c!308318 v!6342))))))))

(assert (= (and d!579541 c!308637) b!1891827))

(assert (= (and d!579541 (not c!308637)) b!1891828))

(assert (= (and b!1891828 (not res!844598)) b!1891829))

(declare-fun m!2323149 () Bool)

(assert (=> b!1891827 m!2323149))

(declare-fun m!2323151 () Bool)

(assert (=> b!1891829 m!2323151))

(assert (=> b!1891190 d!579541))

(declare-fun d!579543 () Bool)

(declare-fun c!308638 () Bool)

(assert (=> d!579543 (= c!308638 ((_ is Node!7043) (right!17323 (left!16993 (right!17323 (c!308318 v!6342))))))))

(declare-fun e!1207622 () Bool)

(assert (=> d!579543 (= (inv!28227 (right!17323 (left!16993 (right!17323 (c!308318 v!6342))))) e!1207622)))

(declare-fun b!1891830 () Bool)

(assert (=> b!1891830 (= e!1207622 (inv!28231 (right!17323 (left!16993 (right!17323 (c!308318 v!6342))))))))

(declare-fun b!1891831 () Bool)

(declare-fun e!1207623 () Bool)

(assert (=> b!1891831 (= e!1207622 e!1207623)))

(declare-fun res!844599 () Bool)

(assert (=> b!1891831 (= res!844599 (not ((_ is Leaf!10382) (right!17323 (left!16993 (right!17323 (c!308318 v!6342)))))))))

(assert (=> b!1891831 (=> res!844599 e!1207623)))

(declare-fun b!1891832 () Bool)

(assert (=> b!1891832 (= e!1207623 (inv!28232 (right!17323 (left!16993 (right!17323 (c!308318 v!6342))))))))

(assert (= (and d!579543 c!308638) b!1891830))

(assert (= (and d!579543 (not c!308638)) b!1891831))

(assert (= (and b!1891831 (not res!844599)) b!1891832))

(declare-fun m!2323153 () Bool)

(assert (=> b!1891830 m!2323153))

(declare-fun m!2323155 () Bool)

(assert (=> b!1891832 m!2323155))

(assert (=> b!1891190 d!579543))

(declare-fun d!579545 () Bool)

(declare-fun lt!724266 () Int)

(assert (=> d!579545 (>= lt!724266 0)))

(declare-fun e!1207624 () Int)

(assert (=> d!579545 (= lt!724266 e!1207624)))

(declare-fun c!308639 () Bool)

(assert (=> d!579545 (= c!308639 ((_ is Nil!21176) (t!175425 lt!724145)))))

(assert (=> d!579545 (= (size!16783 (t!175425 lt!724145)) lt!724266)))

(declare-fun b!1891833 () Bool)

(assert (=> b!1891833 (= e!1207624 0)))

(declare-fun b!1891834 () Bool)

(assert (=> b!1891834 (= e!1207624 (+ 1 (size!16783 (t!175425 (t!175425 lt!724145)))))))

(assert (= (and d!579545 c!308639) b!1891833))

(assert (= (and d!579545 (not c!308639)) b!1891834))

(declare-fun m!2323157 () Bool)

(assert (=> b!1891834 m!2323157))

(assert (=> b!1891042 d!579545))

(declare-fun d!579547 () Bool)

(declare-fun lt!724267 () Bool)

(assert (=> d!579547 (= lt!724267 (isEmpty!13009 (list!8590 (right!17323 (right!17323 (c!308318 v!6342))))))))

(assert (=> d!579547 (= lt!724267 (= (size!16781 (right!17323 (right!17323 (c!308318 v!6342)))) 0))))

(assert (=> d!579547 (= (isEmpty!13006 (right!17323 (right!17323 (c!308318 v!6342)))) lt!724267)))

(declare-fun bs!413163 () Bool)

(assert (= bs!413163 d!579547))

(assert (=> bs!413163 m!2321991))

(assert (=> bs!413163 m!2321991))

(declare-fun m!2323159 () Bool)

(assert (=> bs!413163 m!2323159))

(assert (=> bs!413163 m!2321997))

(assert (=> b!1891008 d!579547))

(assert (=> d!579043 d!579325))

(assert (=> d!579043 d!579277))

(declare-fun b!1891835 () Bool)

(declare-fun res!844600 () Bool)

(declare-fun e!1207625 () Bool)

(assert (=> b!1891835 (=> (not res!844600) (not e!1207625))))

(assert (=> b!1891835 (= res!844600 (<= (- (height!1096 (left!16993 (right!17323 (right!17323 (c!308318 v!6342))))) (height!1096 (right!17323 (right!17323 (right!17323 (c!308318 v!6342)))))) 1))))

(declare-fun b!1891836 () Bool)

(declare-fun res!844603 () Bool)

(assert (=> b!1891836 (=> (not res!844603) (not e!1207625))))

(assert (=> b!1891836 (= res!844603 (isBalanced!2213 (right!17323 (right!17323 (right!17323 (c!308318 v!6342))))))))

(declare-fun b!1891837 () Bool)

(declare-fun res!844601 () Bool)

(assert (=> b!1891837 (=> (not res!844601) (not e!1207625))))

(assert (=> b!1891837 (= res!844601 (not (isEmpty!13006 (left!16993 (right!17323 (right!17323 (c!308318 v!6342)))))))))

(declare-fun d!579549 () Bool)

(declare-fun res!844605 () Bool)

(declare-fun e!1207626 () Bool)

(assert (=> d!579549 (=> res!844605 e!1207626)))

(assert (=> d!579549 (= res!844605 (not ((_ is Node!7043) (right!17323 (right!17323 (c!308318 v!6342))))))))

(assert (=> d!579549 (= (isBalanced!2213 (right!17323 (right!17323 (c!308318 v!6342)))) e!1207626)))

(declare-fun b!1891838 () Bool)

(declare-fun res!844604 () Bool)

(assert (=> b!1891838 (=> (not res!844604) (not e!1207625))))

(assert (=> b!1891838 (= res!844604 (isBalanced!2213 (left!16993 (right!17323 (right!17323 (c!308318 v!6342))))))))

(declare-fun b!1891839 () Bool)

(assert (=> b!1891839 (= e!1207626 e!1207625)))

(declare-fun res!844602 () Bool)

(assert (=> b!1891839 (=> (not res!844602) (not e!1207625))))

(assert (=> b!1891839 (= res!844602 (<= (- 1) (- (height!1096 (left!16993 (right!17323 (right!17323 (c!308318 v!6342))))) (height!1096 (right!17323 (right!17323 (right!17323 (c!308318 v!6342))))))))))

(declare-fun b!1891840 () Bool)

(assert (=> b!1891840 (= e!1207625 (not (isEmpty!13006 (right!17323 (right!17323 (right!17323 (c!308318 v!6342)))))))))

(assert (= (and d!579549 (not res!844605)) b!1891839))

(assert (= (and b!1891839 res!844602) b!1891835))

(assert (= (and b!1891835 res!844600) b!1891838))

(assert (= (and b!1891838 res!844604) b!1891836))

(assert (= (and b!1891836 res!844603) b!1891837))

(assert (= (and b!1891837 res!844601) b!1891840))

(declare-fun m!2323161 () Bool)

(assert (=> b!1891838 m!2323161))

(declare-fun m!2323163 () Bool)

(assert (=> b!1891840 m!2323163))

(declare-fun m!2323165 () Bool)

(assert (=> b!1891837 m!2323165))

(assert (=> b!1891835 m!2322591))

(assert (=> b!1891835 m!2322593))

(assert (=> b!1891839 m!2322591))

(assert (=> b!1891839 m!2322593))

(declare-fun m!2323167 () Bool)

(assert (=> b!1891836 m!2323167))

(assert (=> b!1891004 d!579549))

(declare-fun d!579551 () Bool)

(declare-fun c!308640 () Bool)

(assert (=> d!579551 (= c!308640 ((_ is Node!7042) (left!16992 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837))))))))))

(declare-fun e!1207627 () Bool)

(assert (=> d!579551 (= (inv!28238 (left!16992 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837))))))) e!1207627)))

(declare-fun b!1891841 () Bool)

(assert (=> b!1891841 (= e!1207627 (inv!28245 (left!16992 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837))))))))))

(declare-fun b!1891842 () Bool)

(declare-fun e!1207628 () Bool)

(assert (=> b!1891842 (= e!1207627 e!1207628)))

(declare-fun res!844606 () Bool)

(assert (=> b!1891842 (= res!844606 (not ((_ is Leaf!10381) (left!16992 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837)))))))))))

(assert (=> b!1891842 (=> res!844606 e!1207628)))

(declare-fun b!1891843 () Bool)

(assert (=> b!1891843 (= e!1207628 (inv!28246 (left!16992 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837))))))))))

(assert (= (and d!579551 c!308640) b!1891841))

(assert (= (and d!579551 (not c!308640)) b!1891842))

(assert (= (and b!1891842 (not res!844606)) b!1891843))

(declare-fun m!2323169 () Bool)

(assert (=> b!1891841 m!2323169))

(declare-fun m!2323171 () Bool)

(assert (=> b!1891843 m!2323171))

(assert (=> b!1891204 d!579551))

(declare-fun d!579553 () Bool)

(declare-fun c!308641 () Bool)

(assert (=> d!579553 (= c!308641 ((_ is Node!7042) (right!17322 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837))))))))))

(declare-fun e!1207629 () Bool)

(assert (=> d!579553 (= (inv!28238 (right!17322 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837))))))) e!1207629)))

(declare-fun b!1891844 () Bool)

(assert (=> b!1891844 (= e!1207629 (inv!28245 (right!17322 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837))))))))))

(declare-fun b!1891845 () Bool)

(declare-fun e!1207630 () Bool)

(assert (=> b!1891845 (= e!1207629 e!1207630)))

(declare-fun res!844607 () Bool)

(assert (=> b!1891845 (= res!844607 (not ((_ is Leaf!10381) (right!17322 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837)))))))))))

(assert (=> b!1891845 (=> res!844607 e!1207630)))

(declare-fun b!1891846 () Bool)

(assert (=> b!1891846 (= e!1207630 (inv!28246 (right!17322 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837))))))))))

(assert (= (and d!579553 c!308641) b!1891844))

(assert (= (and d!579553 (not c!308641)) b!1891845))

(assert (= (and b!1891845 (not res!844607)) b!1891846))

(declare-fun m!2323173 () Bool)

(assert (=> b!1891844 m!2323173))

(declare-fun m!2323175 () Bool)

(assert (=> b!1891846 m!2323175))

(assert (=> b!1891204 d!579553))

(assert (=> b!1891053 d!579257))

(assert (=> b!1891053 d!579259))

(declare-fun d!579555 () Bool)

(declare-fun res!844614 () Bool)

(declare-fun e!1207633 () Bool)

(assert (=> d!579555 (=> (not res!844614) (not e!1207633))))

(declare-fun size!16785 (Conc!7042) Int)

(assert (=> d!579555 (= res!844614 (= (csize!14314 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837)))))) (+ (size!16785 (left!16992 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837))))))) (size!16785 (right!17322 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837))))))))))))

(assert (=> d!579555 (= (inv!28245 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837)))))) e!1207633)))

(declare-fun b!1891853 () Bool)

(declare-fun res!844615 () Bool)

(assert (=> b!1891853 (=> (not res!844615) (not e!1207633))))

(assert (=> b!1891853 (= res!844615 (and (not (= (left!16992 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837)))))) Empty!7042)) (not (= (right!17322 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837)))))) Empty!7042))))))

(declare-fun b!1891854 () Bool)

(declare-fun res!844616 () Bool)

(assert (=> b!1891854 (=> (not res!844616) (not e!1207633))))

(assert (=> b!1891854 (= res!844616 (= (cheight!7253 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837)))))) (+ (max!0 (height!1098 (left!16992 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837))))))) (height!1098 (right!17322 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837)))))))) 1)))))

(declare-fun b!1891855 () Bool)

(assert (=> b!1891855 (= e!1207633 (<= 0 (cheight!7253 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837))))))))))

(assert (= (and d!579555 res!844614) b!1891853))

(assert (= (and b!1891853 res!844615) b!1891854))

(assert (= (and b!1891854 res!844616) b!1891855))

(declare-fun m!2323177 () Bool)

(assert (=> d!579555 m!2323177))

(declare-fun m!2323179 () Bool)

(assert (=> d!579555 m!2323179))

(assert (=> b!1891854 m!2322541))

(assert (=> b!1891854 m!2322543))

(assert (=> b!1891854 m!2322541))

(assert (=> b!1891854 m!2322543))

(declare-fun m!2323181 () Bool)

(assert (=> b!1891854 m!2323181))

(assert (=> b!1891119 d!579555))

(declare-fun d!579557 () Bool)

(declare-fun lt!724268 () Int)

(assert (=> d!579557 (>= lt!724268 0)))

(declare-fun e!1207634 () Int)

(assert (=> d!579557 (= lt!724268 e!1207634)))

(declare-fun c!308642 () Bool)

(assert (=> d!579557 (= c!308642 ((_ is Nil!21176) lt!724185))))

(assert (=> d!579557 (= (size!16783 lt!724185) lt!724268)))

(declare-fun b!1891856 () Bool)

(assert (=> b!1891856 (= e!1207634 0)))

(declare-fun b!1891857 () Bool)

(assert (=> b!1891857 (= e!1207634 (+ 1 (size!16783 (t!175425 lt!724185))))))

(assert (= (and d!579557 c!308642) b!1891856))

(assert (= (and d!579557 (not c!308642)) b!1891857))

(declare-fun m!2323183 () Bool)

(assert (=> b!1891857 m!2323183))

(assert (=> b!1891070 d!579557))

(assert (=> b!1891070 d!579535))

(assert (=> b!1891070 d!578995))

(declare-fun lt!724269 () List!21258)

(declare-fun b!1891861 () Bool)

(declare-fun e!1207635 () Bool)

(assert (=> b!1891861 (= e!1207635 (or (not (= (list!8589 (right!17322 (c!308316 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837)))))) Nil!21176)) (= lt!724269 (list!8589 (left!16992 (c!308316 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837)))))))))))

(declare-fun b!1891859 () Bool)

(declare-fun e!1207636 () List!21258)

(assert (=> b!1891859 (= e!1207636 (Cons!21176 (h!26577 (list!8589 (left!16992 (c!308316 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837))))))) (++!5711 (t!175425 (list!8589 (left!16992 (c!308316 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837))))))) (list!8589 (right!17322 (c!308316 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837)))))))))))

(declare-fun b!1891860 () Bool)

(declare-fun res!844618 () Bool)

(assert (=> b!1891860 (=> (not res!844618) (not e!1207635))))

(assert (=> b!1891860 (= res!844618 (= (size!16783 lt!724269) (+ (size!16783 (list!8589 (left!16992 (c!308316 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837))))))) (size!16783 (list!8589 (right!17322 (c!308316 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837))))))))))))

(declare-fun d!579559 () Bool)

(assert (=> d!579559 e!1207635))

(declare-fun res!844617 () Bool)

(assert (=> d!579559 (=> (not res!844617) (not e!1207635))))

(assert (=> d!579559 (= res!844617 (= (content!3124 lt!724269) ((_ map or) (content!3124 (list!8589 (left!16992 (c!308316 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837))))))) (content!3124 (list!8589 (right!17322 (c!308316 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837))))))))))))

(assert (=> d!579559 (= lt!724269 e!1207636)))

(declare-fun c!308643 () Bool)

(assert (=> d!579559 (= c!308643 ((_ is Nil!21176) (list!8589 (left!16992 (c!308316 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837))))))))))

(assert (=> d!579559 (= (++!5711 (list!8589 (left!16992 (c!308316 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837)))))) (list!8589 (right!17322 (c!308316 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837))))))) lt!724269)))

(declare-fun b!1891858 () Bool)

(assert (=> b!1891858 (= e!1207636 (list!8589 (right!17322 (c!308316 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837)))))))))

(assert (= (and d!579559 c!308643) b!1891858))

(assert (= (and d!579559 (not c!308643)) b!1891859))

(assert (= (and d!579559 res!844617) b!1891860))

(assert (= (and b!1891860 res!844618) b!1891861))

(assert (=> b!1891859 m!2321855))

(declare-fun m!2323185 () Bool)

(assert (=> b!1891859 m!2323185))

(declare-fun m!2323187 () Bool)

(assert (=> b!1891860 m!2323187))

(assert (=> b!1891860 m!2321853))

(declare-fun m!2323189 () Bool)

(assert (=> b!1891860 m!2323189))

(assert (=> b!1891860 m!2321855))

(declare-fun m!2323191 () Bool)

(assert (=> b!1891860 m!2323191))

(declare-fun m!2323193 () Bool)

(assert (=> d!579559 m!2323193))

(assert (=> d!579559 m!2321853))

(declare-fun m!2323195 () Bool)

(assert (=> d!579559 m!2323195))

(assert (=> d!579559 m!2321855))

(declare-fun m!2323197 () Bool)

(assert (=> d!579559 m!2323197))

(assert (=> b!1891016 d!579559))

(declare-fun b!1891864 () Bool)

(declare-fun e!1207638 () List!21258)

(assert (=> b!1891864 (= e!1207638 (list!8595 (xs!9932 (left!16992 (c!308316 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837))))))))))

(declare-fun b!1891862 () Bool)

(declare-fun e!1207637 () List!21258)

(assert (=> b!1891862 (= e!1207637 Nil!21176)))

(declare-fun d!579561 () Bool)

(declare-fun c!308644 () Bool)

(assert (=> d!579561 (= c!308644 ((_ is Empty!7042) (left!16992 (c!308316 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837)))))))))

(assert (=> d!579561 (= (list!8589 (left!16992 (c!308316 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837)))))) e!1207637)))

(declare-fun b!1891865 () Bool)

(assert (=> b!1891865 (= e!1207638 (++!5711 (list!8589 (left!16992 (left!16992 (c!308316 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837))))))) (list!8589 (right!17322 (left!16992 (c!308316 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837)))))))))))

(declare-fun b!1891863 () Bool)

(assert (=> b!1891863 (= e!1207637 e!1207638)))

(declare-fun c!308645 () Bool)

(assert (=> b!1891863 (= c!308645 ((_ is Leaf!10381) (left!16992 (c!308316 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837)))))))))

(assert (= (and d!579561 c!308644) b!1891862))

(assert (= (and d!579561 (not c!308644)) b!1891863))

(assert (= (and b!1891863 c!308645) b!1891864))

(assert (= (and b!1891863 (not c!308645)) b!1891865))

(declare-fun m!2323199 () Bool)

(assert (=> b!1891864 m!2323199))

(declare-fun m!2323201 () Bool)

(assert (=> b!1891865 m!2323201))

(declare-fun m!2323203 () Bool)

(assert (=> b!1891865 m!2323203))

(assert (=> b!1891865 m!2323201))

(assert (=> b!1891865 m!2323203))

(declare-fun m!2323205 () Bool)

(assert (=> b!1891865 m!2323205))

(assert (=> b!1891016 d!579561))

(declare-fun b!1891868 () Bool)

(declare-fun e!1207640 () List!21258)

(assert (=> b!1891868 (= e!1207640 (list!8595 (xs!9932 (right!17322 (c!308316 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837))))))))))

(declare-fun b!1891866 () Bool)

(declare-fun e!1207639 () List!21258)

(assert (=> b!1891866 (= e!1207639 Nil!21176)))

(declare-fun d!579563 () Bool)

(declare-fun c!308646 () Bool)

(assert (=> d!579563 (= c!308646 ((_ is Empty!7042) (right!17322 (c!308316 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837)))))))))

(assert (=> d!579563 (= (list!8589 (right!17322 (c!308316 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837)))))) e!1207639)))

(declare-fun b!1891869 () Bool)

(assert (=> b!1891869 (= e!1207640 (++!5711 (list!8589 (left!16992 (right!17322 (c!308316 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837))))))) (list!8589 (right!17322 (right!17322 (c!308316 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837)))))))))))

(declare-fun b!1891867 () Bool)

(assert (=> b!1891867 (= e!1207639 e!1207640)))

(declare-fun c!308647 () Bool)

(assert (=> b!1891867 (= c!308647 ((_ is Leaf!10381) (right!17322 (c!308316 (charsOf!2312 (h!26578 (dropList!762 v!6342 from!837)))))))))

(assert (= (and d!579563 c!308646) b!1891866))

(assert (= (and d!579563 (not c!308646)) b!1891867))

(assert (= (and b!1891867 c!308647) b!1891868))

(assert (= (and b!1891867 (not c!308647)) b!1891869))

(declare-fun m!2323207 () Bool)

(assert (=> b!1891868 m!2323207))

(declare-fun m!2323209 () Bool)

(assert (=> b!1891869 m!2323209))

(declare-fun m!2323211 () Bool)

(assert (=> b!1891869 m!2323211))

(assert (=> b!1891869 m!2323209))

(assert (=> b!1891869 m!2323211))

(declare-fun m!2323213 () Bool)

(assert (=> b!1891869 m!2323213))

(assert (=> b!1891016 d!579563))

(assert (=> b!1890793 d!579055))

(assert (=> b!1890793 d!579057))

(declare-fun d!579565 () Bool)

(declare-fun res!844619 () Bool)

(declare-fun e!1207641 () Bool)

(assert (=> d!579565 (=> (not res!844619) (not e!1207641))))

(assert (=> d!579565 (= res!844619 (<= (size!16780 (list!8594 (xs!9933 (right!17323 (right!17323 (c!308318 v!6342)))))) 512))))

(assert (=> d!579565 (= (inv!28232 (right!17323 (right!17323 (c!308318 v!6342)))) e!1207641)))

(declare-fun b!1891870 () Bool)

(declare-fun res!844620 () Bool)

(assert (=> b!1891870 (=> (not res!844620) (not e!1207641))))

(assert (=> b!1891870 (= res!844620 (= (csize!14317 (right!17323 (right!17323 (c!308318 v!6342)))) (size!16780 (list!8594 (xs!9933 (right!17323 (right!17323 (c!308318 v!6342))))))))))

(declare-fun b!1891871 () Bool)

(assert (=> b!1891871 (= e!1207641 (and (> (csize!14317 (right!17323 (right!17323 (c!308318 v!6342)))) 0) (<= (csize!14317 (right!17323 (right!17323 (c!308318 v!6342)))) 512)))))

(assert (= (and d!579565 res!844619) b!1891870))

(assert (= (and b!1891870 res!844620) b!1891871))

(declare-fun m!2323215 () Bool)

(assert (=> d!579565 m!2323215))

(assert (=> d!579565 m!2323215))

(declare-fun m!2323217 () Bool)

(assert (=> d!579565 m!2323217))

(assert (=> b!1891870 m!2323215))

(assert (=> b!1891870 m!2323215))

(assert (=> b!1891870 m!2323217))

(assert (=> b!1891060 d!579565))

(declare-fun b!1891875 () Bool)

(declare-fun e!1207643 () Bool)

(declare-fun lt!724270 () List!21259)

(assert (=> b!1891875 (= e!1207643 (or (not (= (list!8590 (right!17323 (right!17323 (c!308318 v!6342)))) Nil!21177)) (= lt!724270 (list!8590 (left!16993 (right!17323 (c!308318 v!6342)))))))))

(declare-fun b!1891874 () Bool)

(declare-fun res!844622 () Bool)

(assert (=> b!1891874 (=> (not res!844622) (not e!1207643))))

(assert (=> b!1891874 (= res!844622 (= (size!16780 lt!724270) (+ (size!16780 (list!8590 (left!16993 (right!17323 (c!308318 v!6342))))) (size!16780 (list!8590 (right!17323 (right!17323 (c!308318 v!6342))))))))))

(declare-fun d!579567 () Bool)

(assert (=> d!579567 e!1207643))

(declare-fun res!844621 () Bool)

(assert (=> d!579567 (=> (not res!844621) (not e!1207643))))

(assert (=> d!579567 (= res!844621 (= (content!3123 lt!724270) ((_ map or) (content!3123 (list!8590 (left!16993 (right!17323 (c!308318 v!6342))))) (content!3123 (list!8590 (right!17323 (right!17323 (c!308318 v!6342))))))))))

(declare-fun e!1207642 () List!21259)

(assert (=> d!579567 (= lt!724270 e!1207642)))

(declare-fun c!308648 () Bool)

(assert (=> d!579567 (= c!308648 ((_ is Nil!21177) (list!8590 (left!16993 (right!17323 (c!308318 v!6342))))))))

(assert (=> d!579567 (= (++!5713 (list!8590 (left!16993 (right!17323 (c!308318 v!6342)))) (list!8590 (right!17323 (right!17323 (c!308318 v!6342))))) lt!724270)))

(declare-fun b!1891872 () Bool)

(assert (=> b!1891872 (= e!1207642 (list!8590 (right!17323 (right!17323 (c!308318 v!6342)))))))

(declare-fun b!1891873 () Bool)

(assert (=> b!1891873 (= e!1207642 (Cons!21177 (h!26578 (list!8590 (left!16993 (right!17323 (c!308318 v!6342))))) (++!5713 (t!175426 (list!8590 (left!16993 (right!17323 (c!308318 v!6342))))) (list!8590 (right!17323 (right!17323 (c!308318 v!6342)))))))))

(assert (= (and d!579567 c!308648) b!1891872))

(assert (= (and d!579567 (not c!308648)) b!1891873))

(assert (= (and d!579567 res!844621) b!1891874))

(assert (= (and b!1891874 res!844622) b!1891875))

(declare-fun m!2323219 () Bool)

(assert (=> b!1891874 m!2323219))

(assert (=> b!1891874 m!2321989))

(assert (=> b!1891874 m!2322663))

(assert (=> b!1891874 m!2321991))

(assert (=> b!1891874 m!2322665))

(declare-fun m!2323221 () Bool)

(assert (=> d!579567 m!2323221))

(assert (=> d!579567 m!2321989))

(declare-fun m!2323223 () Bool)

(assert (=> d!579567 m!2323223))

(assert (=> d!579567 m!2321991))

(declare-fun m!2323225 () Bool)

(assert (=> d!579567 m!2323225))

(assert (=> b!1891873 m!2321991))

(declare-fun m!2323227 () Bool)

(assert (=> b!1891873 m!2323227))

(assert (=> b!1891107 d!579567))

(declare-fun b!1891879 () Bool)

(declare-fun e!1207645 () List!21259)

(assert (=> b!1891879 (= e!1207645 (++!5713 (list!8590 (left!16993 (left!16993 (right!17323 (c!308318 v!6342))))) (list!8590 (right!17323 (left!16993 (right!17323 (c!308318 v!6342)))))))))

(declare-fun d!579569 () Bool)

(declare-fun c!308649 () Bool)

(assert (=> d!579569 (= c!308649 ((_ is Empty!7043) (left!16993 (right!17323 (c!308318 v!6342)))))))

(declare-fun e!1207644 () List!21259)

(assert (=> d!579569 (= (list!8590 (left!16993 (right!17323 (c!308318 v!6342)))) e!1207644)))

(declare-fun b!1891876 () Bool)

(assert (=> b!1891876 (= e!1207644 Nil!21177)))

(declare-fun b!1891878 () Bool)

(assert (=> b!1891878 (= e!1207645 (list!8594 (xs!9933 (left!16993 (right!17323 (c!308318 v!6342))))))))

(declare-fun b!1891877 () Bool)

(assert (=> b!1891877 (= e!1207644 e!1207645)))

(declare-fun c!308650 () Bool)

(assert (=> b!1891877 (= c!308650 ((_ is Leaf!10382) (left!16993 (right!17323 (c!308318 v!6342)))))))

(assert (= (and d!579569 c!308649) b!1891876))

(assert (= (and d!579569 (not c!308649)) b!1891877))

(assert (= (and b!1891877 c!308650) b!1891878))

(assert (= (and b!1891877 (not c!308650)) b!1891879))

(declare-fun m!2323229 () Bool)

(assert (=> b!1891879 m!2323229))

(declare-fun m!2323231 () Bool)

(assert (=> b!1891879 m!2323231))

(assert (=> b!1891879 m!2323229))

(assert (=> b!1891879 m!2323231))

(declare-fun m!2323233 () Bool)

(assert (=> b!1891879 m!2323233))

(assert (=> b!1891878 m!2322679))

(assert (=> b!1891107 d!579569))

(declare-fun b!1891883 () Bool)

(declare-fun e!1207647 () List!21259)

(assert (=> b!1891883 (= e!1207647 (++!5713 (list!8590 (left!16993 (right!17323 (right!17323 (c!308318 v!6342))))) (list!8590 (right!17323 (right!17323 (right!17323 (c!308318 v!6342)))))))))

(declare-fun d!579571 () Bool)

(declare-fun c!308651 () Bool)

(assert (=> d!579571 (= c!308651 ((_ is Empty!7043) (right!17323 (right!17323 (c!308318 v!6342)))))))

(declare-fun e!1207646 () List!21259)

(assert (=> d!579571 (= (list!8590 (right!17323 (right!17323 (c!308318 v!6342)))) e!1207646)))

(declare-fun b!1891880 () Bool)

(assert (=> b!1891880 (= e!1207646 Nil!21177)))

(declare-fun b!1891882 () Bool)

(assert (=> b!1891882 (= e!1207647 (list!8594 (xs!9933 (right!17323 (right!17323 (c!308318 v!6342))))))))

(declare-fun b!1891881 () Bool)

(assert (=> b!1891881 (= e!1207646 e!1207647)))

(declare-fun c!308652 () Bool)

(assert (=> b!1891881 (= c!308652 ((_ is Leaf!10382) (right!17323 (right!17323 (c!308318 v!6342)))))))

(assert (= (and d!579571 c!308651) b!1891880))

(assert (= (and d!579571 (not c!308651)) b!1891881))

(assert (= (and b!1891881 c!308652) b!1891882))

(assert (= (and b!1891881 (not c!308652)) b!1891883))

(declare-fun m!2323235 () Bool)

(assert (=> b!1891883 m!2323235))

(declare-fun m!2323237 () Bool)

(assert (=> b!1891883 m!2323237))

(assert (=> b!1891883 m!2323235))

(assert (=> b!1891883 m!2323237))

(declare-fun m!2323239 () Bool)

(assert (=> b!1891883 m!2323239))

(assert (=> b!1891882 m!2323215))

(assert (=> b!1891107 d!579571))

(declare-fun d!579573 () Bool)

(declare-fun charsToInt!0 (List!21257) (_ BitVec 32))

(assert (=> d!579573 (= (inv!16 (value!118523 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))) (= (charsToInt!0 (text!27663 (value!118523 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (value!118514 (value!118523 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))))

(declare-fun bs!413164 () Bool)

(assert (= bs!413164 d!579573))

(declare-fun m!2323241 () Bool)

(assert (=> bs!413164 m!2323241))

(assert (=> b!1891027 d!579573))

(declare-fun b!1891884 () Bool)

(declare-fun e!1207648 () Bool)

(assert (=> b!1891884 (= e!1207648 tp_is_empty!9053)))

(declare-fun b!1891885 () Bool)

(declare-fun tp!539606 () Bool)

(declare-fun tp!539607 () Bool)

(assert (=> b!1891885 (= e!1207648 (and tp!539606 tp!539607))))

(declare-fun b!1891886 () Bool)

(declare-fun tp!539608 () Bool)

(assert (=> b!1891886 (= e!1207648 tp!539608)))

(assert (=> b!1891178 (= tp!539450 e!1207648)))

(declare-fun b!1891887 () Bool)

(declare-fun tp!539605 () Bool)

(declare-fun tp!539609 () Bool)

(assert (=> b!1891887 (= e!1207648 (and tp!539605 tp!539609))))

(assert (= (and b!1891178 ((_ is ElementMatch!5177) (regex!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) b!1891884))

(assert (= (and b!1891178 ((_ is Concat!9066) (regex!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) b!1891885))

(assert (= (and b!1891178 ((_ is Star!5177) (regex!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) b!1891886))

(assert (= (and b!1891178 ((_ is Union!5177) (regex!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) b!1891887))

(declare-fun b!1891891 () Bool)

(declare-fun b_free!52689 () Bool)

(declare-fun b_next!53393 () Bool)

(assert (=> b!1891891 (= b_free!52689 (not b_next!53393))))

(declare-fun tp!539611 () Bool)

(declare-fun b_and!145623 () Bool)

(assert (=> b!1891891 (= tp!539611 b_and!145623)))

(declare-fun b_free!52691 () Bool)

(declare-fun b_next!53395 () Bool)

(assert (=> b!1891891 (= b_free!52691 (not b_next!53395))))

(declare-fun t!175652 () Bool)

(declare-fun tb!115031 () Bool)

(assert (=> (and b!1891891 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (right!17323 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (dropList!762 v!6342 from!837))))))) t!175652) tb!115031))

(declare-fun result!139086 () Bool)

(assert (= result!139086 result!138896))

(assert (=> d!579017 t!175652))

(declare-fun t!175654 () Bool)

(declare-fun tb!115033 () Bool)

(assert (=> (and b!1891891 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (right!17323 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))) t!175654) tb!115033))

(declare-fun result!139088 () Bool)

(assert (= result!139088 result!138980))

(assert (=> b!1891479 t!175654))

(declare-fun t!175656 () Bool)

(declare-fun tb!115035 () Bool)

(assert (=> (and b!1891891 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (right!17323 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) t!175656) tb!115035))

(declare-fun result!139090 () Bool)

(assert (= result!139090 result!138972))

(assert (=> b!1891395 t!175656))

(declare-fun tb!115037 () Bool)

(declare-fun t!175658 () Bool)

(assert (=> (and b!1891891 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (right!17323 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (t!175426 (dropList!762 v!6342 from!837)))))))) t!175658) tb!115037))

(declare-fun result!139092 () Bool)

(assert (= result!139092 result!138964))

(assert (=> d!579227 t!175658))

(declare-fun t!175660 () Bool)

(declare-fun tb!115039 () Bool)

(assert (=> (and b!1891891 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (right!17323 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837)))))) t!175660) tb!115039))

(declare-fun result!139094 () Bool)

(assert (= result!139094 result!138864))

(assert (=> d!578841 t!175660))

(declare-fun t!175662 () Bool)

(declare-fun tb!115041 () Bool)

(assert (=> (and b!1891891 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (right!17323 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) t!175662) tb!115041))

(declare-fun result!139096 () Bool)

(assert (= result!139096 result!138898))

(assert (=> b!1891085 t!175662))

(declare-fun t!175664 () Bool)

(declare-fun tb!115043 () Bool)

(assert (=> (and b!1891891 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (right!17323 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))) t!175664) tb!115043))

(declare-fun result!139098 () Bool)

(assert (= result!139098 result!138956))

(assert (=> b!1891349 t!175664))

(declare-fun tp!539613 () Bool)

(declare-fun b_and!145625 () Bool)

(assert (=> b!1891891 (= tp!539613 (and (=> t!175652 result!139086) (=> t!175654 result!139088) (=> t!175660 result!139094) (=> t!175664 result!139098) (=> t!175662 result!139096) (=> t!175658 result!139092) (=> t!175656 result!139090) b_and!145625))))

(declare-fun e!1207649 () Bool)

(assert (=> b!1891891 (= e!1207649 (and tp!539611 tp!539613))))

(declare-fun e!1207651 () Bool)

(declare-fun e!1207654 () Bool)

(declare-fun b!1891888 () Bool)

(declare-fun tp!539612 () Bool)

(assert (=> b!1891888 (= e!1207651 (and (inv!28240 (h!26578 (innerList!7103 (xs!9933 (left!16993 (right!17323 (c!308318 v!6342))))))) e!1207654 tp!539612))))

(assert (=> b!1891192 (= tp!539468 e!1207651)))

(declare-fun e!1207652 () Bool)

(declare-fun tp!539614 () Bool)

(declare-fun b!1891889 () Bool)

(assert (=> b!1891889 (= e!1207654 (and (inv!21 (value!118523 (h!26578 (innerList!7103 (xs!9933 (left!16993 (right!17323 (c!308318 v!6342)))))))) e!1207652 tp!539614))))

(declare-fun b!1891890 () Bool)

(declare-fun tp!539610 () Bool)

(assert (=> b!1891890 (= e!1207652 (and tp!539610 (inv!28223 (tag!4166 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (right!17323 (c!308318 v!6342))))))))) (inv!28241 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (right!17323 (c!308318 v!6342))))))))) e!1207649))))

(assert (= b!1891890 b!1891891))

(assert (= b!1891889 b!1891890))

(assert (= b!1891888 b!1891889))

(assert (= (and b!1891192 ((_ is Cons!21177) (innerList!7103 (xs!9933 (left!16993 (right!17323 (c!308318 v!6342))))))) b!1891888))

(declare-fun m!2323243 () Bool)

(assert (=> b!1891888 m!2323243))

(declare-fun m!2323245 () Bool)

(assert (=> b!1891889 m!2323245))

(declare-fun m!2323247 () Bool)

(assert (=> b!1891890 m!2323247))

(declare-fun m!2323249 () Bool)

(assert (=> b!1891890 m!2323249))

(declare-fun b!1891892 () Bool)

(declare-fun e!1207655 () Bool)

(declare-fun tp!539615 () Bool)

(assert (=> b!1891892 (= e!1207655 (and tp_is_empty!9053 tp!539615))))

(assert (=> b!1891154 (= tp!539431 e!1207655)))

(assert (= (and b!1891154 ((_ is Cons!21176) (originalCharacters!4559 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))))) b!1891892))

(declare-fun b!1891893 () Bool)

(declare-fun e!1207656 () Bool)

(declare-fun tp!539616 () Bool)

(assert (=> b!1891893 (= e!1207656 (and tp_is_empty!9053 tp!539616))))

(assert (=> b!1891177 (= tp!539454 e!1207656)))

(assert (= (and b!1891177 ((_ is Cons!21176) (originalCharacters!4559 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) b!1891893))

(declare-fun b!1891894 () Bool)

(declare-fun e!1207657 () Bool)

(assert (=> b!1891894 (= e!1207657 tp_is_empty!9053)))

(declare-fun b!1891895 () Bool)

(declare-fun tp!539618 () Bool)

(declare-fun tp!539619 () Bool)

(assert (=> b!1891895 (= e!1207657 (and tp!539618 tp!539619))))

(declare-fun b!1891896 () Bool)

(declare-fun tp!539620 () Bool)

(assert (=> b!1891896 (= e!1207657 tp!539620)))

(assert (=> b!1891155 (= tp!539427 e!1207657)))

(declare-fun b!1891897 () Bool)

(declare-fun tp!539617 () Bool)

(declare-fun tp!539621 () Bool)

(assert (=> b!1891897 (= e!1207657 (and tp!539617 tp!539621))))

(assert (= (and b!1891155 ((_ is ElementMatch!5177) (regex!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))) b!1891894))

(assert (= (and b!1891155 ((_ is Concat!9066) (regex!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))) b!1891895))

(assert (= (and b!1891155 ((_ is Star!5177) (regex!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))) b!1891896))

(assert (= (and b!1891155 ((_ is Union!5177) (regex!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))) b!1891897))

(declare-fun e!1207659 () Bool)

(declare-fun tp!539622 () Bool)

(declare-fun b!1891898 () Bool)

(declare-fun tp!539624 () Bool)

(assert (=> b!1891898 (= e!1207659 (and (inv!28238 (left!16992 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (value!118523 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) tp!539622 (inv!28238 (right!17322 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (value!118523 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) tp!539624))))

(declare-fun b!1891900 () Bool)

(declare-fun e!1207658 () Bool)

(declare-fun tp!539623 () Bool)

(assert (=> b!1891900 (= e!1207658 tp!539623)))

(declare-fun b!1891899 () Bool)

(assert (=> b!1891899 (= e!1207659 (and (inv!28247 (xs!9932 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (value!118523 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) e!1207658))))

(assert (=> b!1891087 (= tp!539426 (and (inv!28238 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (value!118523 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) e!1207659))))

(assert (= (and b!1891087 ((_ is Node!7042) (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (value!118523 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) b!1891898))

(assert (= b!1891899 b!1891900))

(assert (= (and b!1891087 ((_ is Leaf!10381) (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (value!118523 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) b!1891899))

(declare-fun m!2323251 () Bool)

(assert (=> b!1891898 m!2323251))

(declare-fun m!2323253 () Bool)

(assert (=> b!1891898 m!2323253))

(declare-fun m!2323255 () Bool)

(assert (=> b!1891899 m!2323255))

(assert (=> b!1891087 m!2321955))

(declare-fun tp!539625 () Bool)

(declare-fun b!1891901 () Bool)

(declare-fun e!1207661 () Bool)

(declare-fun tp!539626 () Bool)

(assert (=> b!1891901 (= e!1207661 (and (inv!28227 (left!16993 (left!16993 (left!16993 (left!16993 (c!308318 v!6342)))))) tp!539625 (inv!28227 (right!17323 (left!16993 (left!16993 (left!16993 (c!308318 v!6342)))))) tp!539626))))

(declare-fun b!1891903 () Bool)

(declare-fun e!1207660 () Bool)

(declare-fun tp!539627 () Bool)

(assert (=> b!1891903 (= e!1207660 tp!539627)))

(declare-fun b!1891902 () Bool)

(assert (=> b!1891902 (= e!1207661 (and (inv!28233 (xs!9933 (left!16993 (left!16993 (left!16993 (c!308318 v!6342)))))) e!1207660))))

(assert (=> b!1891180 (= tp!539455 (and (inv!28227 (left!16993 (left!16993 (left!16993 (c!308318 v!6342))))) e!1207661))))

(assert (= (and b!1891180 ((_ is Node!7043) (left!16993 (left!16993 (left!16993 (c!308318 v!6342)))))) b!1891901))

(assert (= b!1891902 b!1891903))

(assert (= (and b!1891180 ((_ is Leaf!10382) (left!16993 (left!16993 (left!16993 (c!308318 v!6342)))))) b!1891902))

(declare-fun m!2323257 () Bool)

(assert (=> b!1891901 m!2323257))

(declare-fun m!2323259 () Bool)

(assert (=> b!1891901 m!2323259))

(declare-fun m!2323261 () Bool)

(assert (=> b!1891902 m!2323261))

(assert (=> b!1891180 m!2322061))

(declare-fun tp!539628 () Bool)

(declare-fun e!1207663 () Bool)

(declare-fun b!1891904 () Bool)

(declare-fun tp!539629 () Bool)

(assert (=> b!1891904 (= e!1207663 (and (inv!28227 (left!16993 (right!17323 (left!16993 (left!16993 (c!308318 v!6342)))))) tp!539628 (inv!28227 (right!17323 (right!17323 (left!16993 (left!16993 (c!308318 v!6342)))))) tp!539629))))

(declare-fun b!1891906 () Bool)

(declare-fun e!1207662 () Bool)

(declare-fun tp!539630 () Bool)

(assert (=> b!1891906 (= e!1207662 tp!539630)))

(declare-fun b!1891905 () Bool)

(assert (=> b!1891905 (= e!1207663 (and (inv!28233 (xs!9933 (right!17323 (left!16993 (left!16993 (c!308318 v!6342)))))) e!1207662))))

(assert (=> b!1891180 (= tp!539456 (and (inv!28227 (right!17323 (left!16993 (left!16993 (c!308318 v!6342))))) e!1207663))))

(assert (= (and b!1891180 ((_ is Node!7043) (right!17323 (left!16993 (left!16993 (c!308318 v!6342)))))) b!1891904))

(assert (= b!1891905 b!1891906))

(assert (= (and b!1891180 ((_ is Leaf!10382) (right!17323 (left!16993 (left!16993 (c!308318 v!6342)))))) b!1891905))

(declare-fun m!2323263 () Bool)

(assert (=> b!1891904 m!2323263))

(declare-fun m!2323265 () Bool)

(assert (=> b!1891904 m!2323265))

(declare-fun m!2323267 () Bool)

(assert (=> b!1891905 m!2323267))

(assert (=> b!1891180 m!2322063))

(declare-fun b!1891907 () Bool)

(declare-fun e!1207664 () Bool)

(declare-fun tp!539631 () Bool)

(assert (=> b!1891907 (= e!1207664 (and tp_is_empty!9053 tp!539631))))

(assert (=> b!1891187 (= tp!539465 e!1207664)))

(assert (= (and b!1891187 ((_ is Cons!21176) (originalCharacters!4559 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))))) b!1891907))

(declare-fun tp!539634 () Bool)

(declare-fun b!1891908 () Bool)

(declare-fun tp!539632 () Bool)

(declare-fun e!1207666 () Bool)

(assert (=> b!1891908 (= e!1207666 (and (inv!28238 (left!16992 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))) (value!118523 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))))) tp!539632 (inv!28238 (right!17322 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))) (value!118523 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))))) tp!539634))))

(declare-fun b!1891910 () Bool)

(declare-fun e!1207665 () Bool)

(declare-fun tp!539633 () Bool)

(assert (=> b!1891910 (= e!1207665 tp!539633)))

(declare-fun b!1891909 () Bool)

(assert (=> b!1891909 (= e!1207666 (and (inv!28247 (xs!9932 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))) (value!118523 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))))) e!1207665))))

(assert (=> b!1891065 (= tp!539425 (and (inv!28238 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))) (value!118523 (h!26578 (t!175426 (dropList!762 v!6342 from!837))))))) e!1207666))))

(assert (= (and b!1891065 ((_ is Node!7042) (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))) (value!118523 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))))) b!1891908))

(assert (= b!1891909 b!1891910))

(assert (= (and b!1891065 ((_ is Leaf!10381) (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))) (value!118523 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))))) b!1891909))

(declare-fun m!2323269 () Bool)

(assert (=> b!1891908 m!2323269))

(declare-fun m!2323271 () Bool)

(assert (=> b!1891908 m!2323271))

(declare-fun m!2323273 () Bool)

(assert (=> b!1891909 m!2323273))

(assert (=> b!1891065 m!2321921))

(declare-fun b!1891914 () Bool)

(declare-fun b_free!52693 () Bool)

(declare-fun b_next!53397 () Bool)

(assert (=> b!1891914 (= b_free!52693 (not b_next!53397))))

(declare-fun tp!539636 () Bool)

(declare-fun b_and!145627 () Bool)

(assert (=> b!1891914 (= tp!539636 b_and!145627)))

(declare-fun b_free!52695 () Bool)

(declare-fun b_next!53399 () Bool)

(assert (=> b!1891914 (= b_free!52695 (not b_next!53399))))

(declare-fun t!175666 () Bool)

(declare-fun tb!115045 () Bool)

(assert (=> (and b!1891914 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (dropList!762 v!6342 from!837))))))) t!175666) tb!115045))

(declare-fun result!139100 () Bool)

(assert (= result!139100 result!138896))

(assert (=> d!579017 t!175666))

(declare-fun t!175668 () Bool)

(declare-fun tb!115047 () Bool)

(assert (=> (and b!1891914 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))) t!175668) tb!115047))

(declare-fun result!139102 () Bool)

(assert (= result!139102 result!138980))

(assert (=> b!1891479 t!175668))

(declare-fun t!175670 () Bool)

(declare-fun tb!115049 () Bool)

(assert (=> (and b!1891914 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) t!175670) tb!115049))

(declare-fun result!139104 () Bool)

(assert (= result!139104 result!138972))

(assert (=> b!1891395 t!175670))

(declare-fun tb!115051 () Bool)

(declare-fun t!175672 () Bool)

(assert (=> (and b!1891914 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (t!175426 (dropList!762 v!6342 from!837)))))))) t!175672) tb!115051))

(declare-fun result!139106 () Bool)

(assert (= result!139106 result!138964))

(assert (=> d!579227 t!175672))

(declare-fun tb!115053 () Bool)

(declare-fun t!175674 () Bool)

(assert (=> (and b!1891914 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837)))))) t!175674) tb!115053))

(declare-fun result!139108 () Bool)

(assert (= result!139108 result!138864))

(assert (=> d!578841 t!175674))

(declare-fun t!175676 () Bool)

(declare-fun tb!115055 () Bool)

(assert (=> (and b!1891914 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) t!175676) tb!115055))

(declare-fun result!139110 () Bool)

(assert (= result!139110 result!138898))

(assert (=> b!1891085 t!175676))

(declare-fun t!175678 () Bool)

(declare-fun tb!115057 () Bool)

(assert (=> (and b!1891914 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))) t!175678) tb!115057))

(declare-fun result!139112 () Bool)

(assert (= result!139112 result!138956))

(assert (=> b!1891349 t!175678))

(declare-fun b_and!145629 () Bool)

(declare-fun tp!539638 () Bool)

(assert (=> b!1891914 (= tp!539638 (and (=> t!175672 result!139106) (=> t!175674 result!139108) (=> t!175666 result!139100) (=> t!175676 result!139110) (=> t!175668 result!139102) (=> t!175678 result!139112) (=> t!175670 result!139104) b_and!145629))))

(declare-fun e!1207667 () Bool)

(assert (=> b!1891914 (= e!1207667 (and tp!539636 tp!539638))))

(declare-fun e!1207669 () Bool)

(declare-fun e!1207672 () Bool)

(declare-fun b!1891911 () Bool)

(declare-fun tp!539637 () Bool)

(assert (=> b!1891911 (= e!1207669 (and (inv!28240 (h!26578 (t!175426 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))) e!1207672 tp!539637))))

(assert (=> b!1891186 (= tp!539463 e!1207669)))

(declare-fun e!1207670 () Bool)

(declare-fun tp!539639 () Bool)

(declare-fun b!1891912 () Bool)

(assert (=> b!1891912 (= e!1207672 (and (inv!21 (value!118523 (h!26578 (t!175426 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))))) e!1207670 tp!539639))))

(declare-fun tp!539635 () Bool)

(declare-fun b!1891913 () Bool)

(assert (=> b!1891913 (= e!1207670 (and tp!539635 (inv!28223 (tag!4166 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))) (inv!28241 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))) e!1207667))))

(assert (= b!1891913 b!1891914))

(assert (= b!1891912 b!1891913))

(assert (= b!1891911 b!1891912))

(assert (= (and b!1891186 ((_ is Cons!21177) (t!175426 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))) b!1891911))

(declare-fun m!2323275 () Bool)

(assert (=> b!1891911 m!2323275))

(declare-fun m!2323277 () Bool)

(assert (=> b!1891912 m!2323277))

(declare-fun m!2323279 () Bool)

(assert (=> b!1891913 m!2323279))

(declare-fun m!2323281 () Bool)

(assert (=> b!1891913 m!2323281))

(declare-fun b!1891915 () Bool)

(declare-fun e!1207673 () Bool)

(assert (=> b!1891915 (= e!1207673 tp_is_empty!9053)))

(declare-fun b!1891916 () Bool)

(declare-fun tp!539641 () Bool)

(declare-fun tp!539642 () Bool)

(assert (=> b!1891916 (= e!1207673 (and tp!539641 tp!539642))))

(declare-fun b!1891917 () Bool)

(declare-fun tp!539643 () Bool)

(assert (=> b!1891917 (= e!1207673 tp!539643)))

(assert (=> b!1891188 (= tp!539461 e!1207673)))

(declare-fun b!1891918 () Bool)

(declare-fun tp!539640 () Bool)

(declare-fun tp!539644 () Bool)

(assert (=> b!1891918 (= e!1207673 (and tp!539640 tp!539644))))

(assert (= (and b!1891188 ((_ is ElementMatch!5177) (regex!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))) b!1891915))

(assert (= (and b!1891188 ((_ is Concat!9066) (regex!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))) b!1891916))

(assert (= (and b!1891188 ((_ is Star!5177) (regex!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))) b!1891917))

(assert (= (and b!1891188 ((_ is Union!5177) (regex!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))) b!1891918))

(declare-fun tp!539646 () Bool)

(declare-fun e!1207675 () Bool)

(declare-fun b!1891919 () Bool)

(declare-fun tp!539645 () Bool)

(assert (=> b!1891919 (= e!1207675 (and (inv!28227 (left!16993 (left!16993 (right!17323 (left!16993 (c!308318 v!6342)))))) tp!539645 (inv!28227 (right!17323 (left!16993 (right!17323 (left!16993 (c!308318 v!6342)))))) tp!539646))))

(declare-fun b!1891921 () Bool)

(declare-fun e!1207674 () Bool)

(declare-fun tp!539647 () Bool)

(assert (=> b!1891921 (= e!1207674 tp!539647)))

(declare-fun b!1891920 () Bool)

(assert (=> b!1891920 (= e!1207675 (and (inv!28233 (xs!9933 (left!16993 (right!17323 (left!16993 (c!308318 v!6342)))))) e!1207674))))

(assert (=> b!1891183 (= tp!539458 (and (inv!28227 (left!16993 (right!17323 (left!16993 (c!308318 v!6342))))) e!1207675))))

(assert (= (and b!1891183 ((_ is Node!7043) (left!16993 (right!17323 (left!16993 (c!308318 v!6342)))))) b!1891919))

(assert (= b!1891920 b!1891921))

(assert (= (and b!1891183 ((_ is Leaf!10382) (left!16993 (right!17323 (left!16993 (c!308318 v!6342)))))) b!1891920))

(declare-fun m!2323283 () Bool)

(assert (=> b!1891919 m!2323283))

(declare-fun m!2323285 () Bool)

(assert (=> b!1891919 m!2323285))

(declare-fun m!2323287 () Bool)

(assert (=> b!1891920 m!2323287))

(assert (=> b!1891183 m!2322067))

(declare-fun tp!539649 () Bool)

(declare-fun tp!539648 () Bool)

(declare-fun b!1891922 () Bool)

(declare-fun e!1207677 () Bool)

(assert (=> b!1891922 (= e!1207677 (and (inv!28227 (left!16993 (right!17323 (right!17323 (left!16993 (c!308318 v!6342)))))) tp!539648 (inv!28227 (right!17323 (right!17323 (right!17323 (left!16993 (c!308318 v!6342)))))) tp!539649))))

(declare-fun b!1891924 () Bool)

(declare-fun e!1207676 () Bool)

(declare-fun tp!539650 () Bool)

(assert (=> b!1891924 (= e!1207676 tp!539650)))

(declare-fun b!1891923 () Bool)

(assert (=> b!1891923 (= e!1207677 (and (inv!28233 (xs!9933 (right!17323 (right!17323 (left!16993 (c!308318 v!6342)))))) e!1207676))))

(assert (=> b!1891183 (= tp!539459 (and (inv!28227 (right!17323 (right!17323 (left!16993 (c!308318 v!6342))))) e!1207677))))

(assert (= (and b!1891183 ((_ is Node!7043) (right!17323 (right!17323 (left!16993 (c!308318 v!6342)))))) b!1891922))

(assert (= b!1891923 b!1891924))

(assert (= (and b!1891183 ((_ is Leaf!10382) (right!17323 (right!17323 (left!16993 (c!308318 v!6342)))))) b!1891923))

(declare-fun m!2323289 () Bool)

(assert (=> b!1891922 m!2323289))

(declare-fun m!2323291 () Bool)

(assert (=> b!1891922 m!2323291))

(declare-fun m!2323293 () Bool)

(assert (=> b!1891923 m!2323293))

(assert (=> b!1891183 m!2322069))

(declare-fun b!1891928 () Bool)

(declare-fun b_free!52697 () Bool)

(declare-fun b_next!53401 () Bool)

(assert (=> b!1891928 (= b_free!52697 (not b_next!53401))))

(declare-fun tp!539652 () Bool)

(declare-fun b_and!145631 () Bool)

(assert (=> b!1891928 (= tp!539652 b_and!145631)))

(declare-fun b_free!52699 () Bool)

(declare-fun b_next!53403 () Bool)

(assert (=> b!1891928 (= b_free!52699 (not b_next!53403))))

(declare-fun tb!115059 () Bool)

(declare-fun t!175680 () Bool)

(assert (=> (and b!1891928 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (left!16993 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (dropList!762 v!6342 from!837))))))) t!175680) tb!115059))

(declare-fun result!139114 () Bool)

(assert (= result!139114 result!138896))

(assert (=> d!579017 t!175680))

(declare-fun t!175682 () Bool)

(declare-fun tb!115061 () Bool)

(assert (=> (and b!1891928 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (left!16993 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))) t!175682) tb!115061))

(declare-fun result!139116 () Bool)

(assert (= result!139116 result!138980))

(assert (=> b!1891479 t!175682))

(declare-fun t!175684 () Bool)

(declare-fun tb!115063 () Bool)

(assert (=> (and b!1891928 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (left!16993 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) t!175684) tb!115063))

(declare-fun result!139118 () Bool)

(assert (= result!139118 result!138972))

(assert (=> b!1891395 t!175684))

(declare-fun tb!115065 () Bool)

(declare-fun t!175686 () Bool)

(assert (=> (and b!1891928 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (left!16993 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (t!175426 (dropList!762 v!6342 from!837)))))))) t!175686) tb!115065))

(declare-fun result!139120 () Bool)

(assert (= result!139120 result!138964))

(assert (=> d!579227 t!175686))

(declare-fun tb!115067 () Bool)

(declare-fun t!175688 () Bool)

(assert (=> (and b!1891928 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (left!16993 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837)))))) t!175688) tb!115067))

(declare-fun result!139122 () Bool)

(assert (= result!139122 result!138864))

(assert (=> d!578841 t!175688))

(declare-fun t!175690 () Bool)

(declare-fun tb!115069 () Bool)

(assert (=> (and b!1891928 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (left!16993 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) t!175690) tb!115069))

(declare-fun result!139124 () Bool)

(assert (= result!139124 result!138898))

(assert (=> b!1891085 t!175690))

(declare-fun t!175692 () Bool)

(declare-fun tb!115071 () Bool)

(assert (=> (and b!1891928 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (left!16993 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))) t!175692) tb!115071))

(declare-fun result!139126 () Bool)

(assert (= result!139126 result!138956))

(assert (=> b!1891349 t!175692))

(declare-fun tp!539654 () Bool)

(declare-fun b_and!145633 () Bool)

(assert (=> b!1891928 (= tp!539654 (and (=> t!175682 result!139116) (=> t!175692 result!139126) (=> t!175684 result!139118) (=> t!175686 result!139120) (=> t!175680 result!139114) (=> t!175690 result!139124) (=> t!175688 result!139122) b_and!145633))))

(declare-fun e!1207678 () Bool)

(assert (=> b!1891928 (= e!1207678 (and tp!539652 tp!539654))))

(declare-fun e!1207683 () Bool)

(declare-fun tp!539653 () Bool)

(declare-fun e!1207680 () Bool)

(declare-fun b!1891925 () Bool)

(assert (=> b!1891925 (= e!1207680 (and (inv!28240 (h!26578 (innerList!7103 (xs!9933 (right!17323 (left!16993 (c!308318 v!6342))))))) e!1207683 tp!539653))))

(assert (=> b!1891185 (= tp!539460 e!1207680)))

(declare-fun tp!539655 () Bool)

(declare-fun b!1891926 () Bool)

(declare-fun e!1207681 () Bool)

(assert (=> b!1891926 (= e!1207683 (and (inv!21 (value!118523 (h!26578 (innerList!7103 (xs!9933 (right!17323 (left!16993 (c!308318 v!6342)))))))) e!1207681 tp!539655))))

(declare-fun b!1891927 () Bool)

(declare-fun tp!539651 () Bool)

(assert (=> b!1891927 (= e!1207681 (and tp!539651 (inv!28223 (tag!4166 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (left!16993 (c!308318 v!6342))))))))) (inv!28241 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (left!16993 (c!308318 v!6342))))))))) e!1207678))))

(assert (= b!1891927 b!1891928))

(assert (= b!1891926 b!1891927))

(assert (= b!1891925 b!1891926))

(assert (= (and b!1891185 ((_ is Cons!21177) (innerList!7103 (xs!9933 (right!17323 (left!16993 (c!308318 v!6342))))))) b!1891925))

(declare-fun m!2323295 () Bool)

(assert (=> b!1891925 m!2323295))

(declare-fun m!2323297 () Bool)

(assert (=> b!1891926 m!2323297))

(declare-fun m!2323299 () Bool)

(assert (=> b!1891927 m!2323299))

(declare-fun m!2323301 () Bool)

(assert (=> b!1891927 m!2323301))

(declare-fun b!1891932 () Bool)

(declare-fun b_free!52701 () Bool)

(declare-fun b_next!53405 () Bool)

(assert (=> b!1891932 (= b_free!52701 (not b_next!53405))))

(declare-fun tp!539657 () Bool)

(declare-fun b_and!145635 () Bool)

(assert (=> b!1891932 (= tp!539657 b_and!145635)))

(declare-fun b_free!52703 () Bool)

(declare-fun b_next!53407 () Bool)

(assert (=> b!1891932 (= b_free!52703 (not b_next!53407))))

(declare-fun tb!115073 () Bool)

(declare-fun t!175694 () Bool)

(assert (=> (and b!1891932 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (dropList!762 v!6342 from!837))))))) t!175694) tb!115073))

(declare-fun result!139128 () Bool)

(assert (= result!139128 result!138896))

(assert (=> d!579017 t!175694))

(declare-fun t!175696 () Bool)

(declare-fun tb!115075 () Bool)

(assert (=> (and b!1891932 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))) t!175696) tb!115075))

(declare-fun result!139130 () Bool)

(assert (= result!139130 result!138980))

(assert (=> b!1891479 t!175696))

(declare-fun t!175698 () Bool)

(declare-fun tb!115077 () Bool)

(assert (=> (and b!1891932 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) t!175698) tb!115077))

(declare-fun result!139132 () Bool)

(assert (= result!139132 result!138972))

(assert (=> b!1891395 t!175698))

(declare-fun t!175700 () Bool)

(declare-fun tb!115079 () Bool)

(assert (=> (and b!1891932 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (t!175426 (dropList!762 v!6342 from!837)))))))) t!175700) tb!115079))

(declare-fun result!139134 () Bool)

(assert (= result!139134 result!138964))

(assert (=> d!579227 t!175700))

(declare-fun tb!115081 () Bool)

(declare-fun t!175702 () Bool)

(assert (=> (and b!1891932 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837)))))) t!175702) tb!115081))

(declare-fun result!139136 () Bool)

(assert (= result!139136 result!138864))

(assert (=> d!578841 t!175702))

(declare-fun t!175704 () Bool)

(declare-fun tb!115083 () Bool)

(assert (=> (and b!1891932 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) t!175704) tb!115083))

(declare-fun result!139138 () Bool)

(assert (= result!139138 result!138898))

(assert (=> b!1891085 t!175704))

(declare-fun t!175706 () Bool)

(declare-fun tb!115085 () Bool)

(assert (=> (and b!1891932 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))) t!175706) tb!115085))

(declare-fun result!139140 () Bool)

(assert (= result!139140 result!138956))

(assert (=> b!1891349 t!175706))

(declare-fun b_and!145637 () Bool)

(declare-fun tp!539659 () Bool)

(assert (=> b!1891932 (= tp!539659 (and (=> t!175696 result!139130) (=> t!175702 result!139136) (=> t!175706 result!139140) (=> t!175698 result!139132) (=> t!175700 result!139134) (=> t!175694 result!139128) (=> t!175704 result!139138) b_and!145637))))

(declare-fun e!1207684 () Bool)

(assert (=> b!1891932 (= e!1207684 (and tp!539657 tp!539659))))

(declare-fun e!1207686 () Bool)

(declare-fun e!1207689 () Bool)

(declare-fun tp!539658 () Bool)

(declare-fun b!1891929 () Bool)

(assert (=> b!1891929 (= e!1207686 (and (inv!28240 (h!26578 (t!175426 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))) e!1207689 tp!539658))))

(assert (=> b!1891153 (= tp!539429 e!1207686)))

(declare-fun b!1891930 () Bool)

(declare-fun tp!539660 () Bool)

(declare-fun e!1207687 () Bool)

(assert (=> b!1891930 (= e!1207689 (and (inv!21 (value!118523 (h!26578 (t!175426 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))))) e!1207687 tp!539660))))

(declare-fun tp!539656 () Bool)

(declare-fun b!1891931 () Bool)

(assert (=> b!1891931 (= e!1207687 (and tp!539656 (inv!28223 (tag!4166 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))) (inv!28241 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))) e!1207684))))

(assert (= b!1891931 b!1891932))

(assert (= b!1891930 b!1891931))

(assert (= b!1891929 b!1891930))

(assert (= (and b!1891153 ((_ is Cons!21177) (t!175426 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))) b!1891929))

(declare-fun m!2323303 () Bool)

(assert (=> b!1891929 m!2323303))

(declare-fun m!2323305 () Bool)

(assert (=> b!1891930 m!2323305))

(declare-fun m!2323307 () Bool)

(assert (=> b!1891931 m!2323307))

(declare-fun m!2323309 () Bool)

(assert (=> b!1891931 m!2323309))

(declare-fun b!1891936 () Bool)

(declare-fun b_free!52705 () Bool)

(declare-fun b_next!53409 () Bool)

(assert (=> b!1891936 (= b_free!52705 (not b_next!53409))))

(declare-fun tp!539662 () Bool)

(declare-fun b_and!145639 () Bool)

(assert (=> b!1891936 (= tp!539662 b_and!145639)))

(declare-fun b_free!52707 () Bool)

(declare-fun b_next!53411 () Bool)

(assert (=> b!1891936 (= b_free!52707 (not b_next!53411))))

(declare-fun tb!115087 () Bool)

(declare-fun t!175708 () Bool)

(assert (=> (and b!1891936 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (dropList!762 v!6342 from!837))))))) t!175708) tb!115087))

(declare-fun result!139142 () Bool)

(assert (= result!139142 result!138896))

(assert (=> d!579017 t!175708))

(declare-fun t!175710 () Bool)

(declare-fun tb!115089 () Bool)

(assert (=> (and b!1891936 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))) t!175710) tb!115089))

(declare-fun result!139144 () Bool)

(assert (= result!139144 result!138980))

(assert (=> b!1891479 t!175710))

(declare-fun t!175712 () Bool)

(declare-fun tb!115091 () Bool)

(assert (=> (and b!1891936 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) t!175712) tb!115091))

(declare-fun result!139146 () Bool)

(assert (= result!139146 result!138972))

(assert (=> b!1891395 t!175712))

(declare-fun t!175714 () Bool)

(declare-fun tb!115093 () Bool)

(assert (=> (and b!1891936 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (t!175426 (dropList!762 v!6342 from!837)))))))) t!175714) tb!115093))

(declare-fun result!139148 () Bool)

(assert (= result!139148 result!138964))

(assert (=> d!579227 t!175714))

(declare-fun t!175716 () Bool)

(declare-fun tb!115095 () Bool)

(assert (=> (and b!1891936 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837)))))) t!175716) tb!115095))

(declare-fun result!139150 () Bool)

(assert (= result!139150 result!138864))

(assert (=> d!578841 t!175716))

(declare-fun t!175718 () Bool)

(declare-fun tb!115097 () Bool)

(assert (=> (and b!1891936 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) t!175718) tb!115097))

(declare-fun result!139152 () Bool)

(assert (= result!139152 result!138898))

(assert (=> b!1891085 t!175718))

(declare-fun t!175720 () Bool)

(declare-fun tb!115099 () Bool)

(assert (=> (and b!1891936 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))) t!175720) tb!115099))

(declare-fun result!139154 () Bool)

(assert (= result!139154 result!138956))

(assert (=> b!1891349 t!175720))

(declare-fun b_and!145641 () Bool)

(declare-fun tp!539664 () Bool)

(assert (=> b!1891936 (= tp!539664 (and (=> t!175708 result!139142) (=> t!175718 result!139152) (=> t!175710 result!139144) (=> t!175712 result!139146) (=> t!175716 result!139150) (=> t!175720 result!139154) (=> t!175714 result!139148) b_and!145641))))

(declare-fun e!1207690 () Bool)

(assert (=> b!1891936 (= e!1207690 (and tp!539662 tp!539664))))

(declare-fun b!1891933 () Bool)

(declare-fun tp!539663 () Bool)

(declare-fun e!1207692 () Bool)

(declare-fun e!1207695 () Bool)

(assert (=> b!1891933 (= e!1207692 (and (inv!28240 (h!26578 (t!175426 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) e!1207695 tp!539663))))

(assert (=> b!1891176 (= tp!539452 e!1207692)))

(declare-fun b!1891934 () Bool)

(declare-fun e!1207693 () Bool)

(declare-fun tp!539665 () Bool)

(assert (=> b!1891934 (= e!1207695 (and (inv!21 (value!118523 (h!26578 (t!175426 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) e!1207693 tp!539665))))

(declare-fun tp!539661 () Bool)

(declare-fun b!1891935 () Bool)

(assert (=> b!1891935 (= e!1207693 (and tp!539661 (inv!28223 (tag!4166 (rule!5945 (h!26578 (t!175426 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) (inv!28241 (transformation!3752 (rule!5945 (h!26578 (t!175426 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) e!1207690))))

(assert (= b!1891935 b!1891936))

(assert (= b!1891934 b!1891935))

(assert (= b!1891933 b!1891934))

(assert (= (and b!1891176 ((_ is Cons!21177) (t!175426 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) b!1891933))

(declare-fun m!2323311 () Bool)

(assert (=> b!1891933 m!2323311))

(declare-fun m!2323313 () Bool)

(assert (=> b!1891934 m!2323313))

(declare-fun m!2323315 () Bool)

(assert (=> b!1891935 m!2323315))

(declare-fun m!2323317 () Bool)

(assert (=> b!1891935 m!2323317))

(declare-fun b!1891937 () Bool)

(declare-fun tp!539667 () Bool)

(declare-fun tp!539666 () Bool)

(declare-fun e!1207697 () Bool)

(assert (=> b!1891937 (= e!1207697 (and (inv!28227 (left!16993 (left!16993 (left!16993 (right!17323 (c!308318 v!6342)))))) tp!539666 (inv!28227 (right!17323 (left!16993 (left!16993 (right!17323 (c!308318 v!6342)))))) tp!539667))))

(declare-fun b!1891939 () Bool)

(declare-fun e!1207696 () Bool)

(declare-fun tp!539668 () Bool)

(assert (=> b!1891939 (= e!1207696 tp!539668)))

(declare-fun b!1891938 () Bool)

(assert (=> b!1891938 (= e!1207697 (and (inv!28233 (xs!9933 (left!16993 (left!16993 (right!17323 (c!308318 v!6342)))))) e!1207696))))

(assert (=> b!1891190 (= tp!539466 (and (inv!28227 (left!16993 (left!16993 (right!17323 (c!308318 v!6342))))) e!1207697))))

(assert (= (and b!1891190 ((_ is Node!7043) (left!16993 (left!16993 (right!17323 (c!308318 v!6342)))))) b!1891937))

(assert (= b!1891938 b!1891939))

(assert (= (and b!1891190 ((_ is Leaf!10382) (left!16993 (left!16993 (right!17323 (c!308318 v!6342)))))) b!1891938))

(declare-fun m!2323319 () Bool)

(assert (=> b!1891937 m!2323319))

(declare-fun m!2323321 () Bool)

(assert (=> b!1891937 m!2323321))

(declare-fun m!2323323 () Bool)

(assert (=> b!1891938 m!2323323))

(assert (=> b!1891190 m!2322081))

(declare-fun tp!539669 () Bool)

(declare-fun e!1207699 () Bool)

(declare-fun b!1891940 () Bool)

(declare-fun tp!539670 () Bool)

(assert (=> b!1891940 (= e!1207699 (and (inv!28227 (left!16993 (right!17323 (left!16993 (right!17323 (c!308318 v!6342)))))) tp!539669 (inv!28227 (right!17323 (right!17323 (left!16993 (right!17323 (c!308318 v!6342)))))) tp!539670))))

(declare-fun b!1891942 () Bool)

(declare-fun e!1207698 () Bool)

(declare-fun tp!539671 () Bool)

(assert (=> b!1891942 (= e!1207698 tp!539671)))

(declare-fun b!1891941 () Bool)

(assert (=> b!1891941 (= e!1207699 (and (inv!28233 (xs!9933 (right!17323 (left!16993 (right!17323 (c!308318 v!6342)))))) e!1207698))))

(assert (=> b!1891190 (= tp!539467 (and (inv!28227 (right!17323 (left!16993 (right!17323 (c!308318 v!6342))))) e!1207699))))

(assert (= (and b!1891190 ((_ is Node!7043) (right!17323 (left!16993 (right!17323 (c!308318 v!6342)))))) b!1891940))

(assert (= b!1891941 b!1891942))

(assert (= (and b!1891190 ((_ is Leaf!10382) (right!17323 (left!16993 (right!17323 (c!308318 v!6342)))))) b!1891941))

(declare-fun m!2323325 () Bool)

(assert (=> b!1891940 m!2323325))

(declare-fun m!2323327 () Bool)

(assert (=> b!1891940 m!2323327))

(declare-fun m!2323329 () Bool)

(assert (=> b!1891941 m!2323329))

(assert (=> b!1891190 m!2322083))

(declare-fun tp!539673 () Bool)

(declare-fun e!1207701 () Bool)

(declare-fun b!1891943 () Bool)

(declare-fun tp!539672 () Bool)

(assert (=> b!1891943 (= e!1207701 (and (inv!28227 (left!16993 (left!16993 (right!17323 (right!17323 (c!308318 v!6342)))))) tp!539672 (inv!28227 (right!17323 (left!16993 (right!17323 (right!17323 (c!308318 v!6342)))))) tp!539673))))

(declare-fun b!1891945 () Bool)

(declare-fun e!1207700 () Bool)

(declare-fun tp!539674 () Bool)

(assert (=> b!1891945 (= e!1207700 tp!539674)))

(declare-fun b!1891944 () Bool)

(assert (=> b!1891944 (= e!1207701 (and (inv!28233 (xs!9933 (left!16993 (right!17323 (right!17323 (c!308318 v!6342)))))) e!1207700))))

(assert (=> b!1891193 (= tp!539469 (and (inv!28227 (left!16993 (right!17323 (right!17323 (c!308318 v!6342))))) e!1207701))))

(assert (= (and b!1891193 ((_ is Node!7043) (left!16993 (right!17323 (right!17323 (c!308318 v!6342)))))) b!1891943))

(assert (= b!1891944 b!1891945))

(assert (= (and b!1891193 ((_ is Leaf!10382) (left!16993 (right!17323 (right!17323 (c!308318 v!6342)))))) b!1891944))

(declare-fun m!2323331 () Bool)

(assert (=> b!1891943 m!2323331))

(declare-fun m!2323333 () Bool)

(assert (=> b!1891943 m!2323333))

(declare-fun m!2323335 () Bool)

(assert (=> b!1891944 m!2323335))

(assert (=> b!1891193 m!2322087))

(declare-fun e!1207703 () Bool)

(declare-fun tp!539675 () Bool)

(declare-fun tp!539676 () Bool)

(declare-fun b!1891946 () Bool)

(assert (=> b!1891946 (= e!1207703 (and (inv!28227 (left!16993 (right!17323 (right!17323 (right!17323 (c!308318 v!6342)))))) tp!539675 (inv!28227 (right!17323 (right!17323 (right!17323 (right!17323 (c!308318 v!6342)))))) tp!539676))))

(declare-fun b!1891948 () Bool)

(declare-fun e!1207702 () Bool)

(declare-fun tp!539677 () Bool)

(assert (=> b!1891948 (= e!1207702 tp!539677)))

(declare-fun b!1891947 () Bool)

(assert (=> b!1891947 (= e!1207703 (and (inv!28233 (xs!9933 (right!17323 (right!17323 (right!17323 (c!308318 v!6342)))))) e!1207702))))

(assert (=> b!1891193 (= tp!539470 (and (inv!28227 (right!17323 (right!17323 (right!17323 (c!308318 v!6342))))) e!1207703))))

(assert (= (and b!1891193 ((_ is Node!7043) (right!17323 (right!17323 (right!17323 (c!308318 v!6342)))))) b!1891946))

(assert (= b!1891947 b!1891948))

(assert (= (and b!1891193 ((_ is Leaf!10382) (right!17323 (right!17323 (right!17323 (c!308318 v!6342)))))) b!1891947))

(declare-fun m!2323337 () Bool)

(assert (=> b!1891946 m!2323337))

(declare-fun m!2323339 () Bool)

(assert (=> b!1891946 m!2323339))

(declare-fun m!2323341 () Bool)

(assert (=> b!1891947 m!2323341))

(assert (=> b!1891193 m!2322089))

(declare-fun b!1891949 () Bool)

(declare-fun e!1207704 () Bool)

(declare-fun tp!539678 () Bool)

(assert (=> b!1891949 (= e!1207704 (and tp_is_empty!9053 tp!539678))))

(assert (=> b!1891161 (= tp!539434 e!1207704)))

(assert (= (and b!1891161 ((_ is Cons!21176) (t!175425 (originalCharacters!4559 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) b!1891949))

(declare-fun b!1891953 () Bool)

(declare-fun b_free!52709 () Bool)

(declare-fun b_next!53413 () Bool)

(assert (=> b!1891953 (= b_free!52709 (not b_next!53413))))

(declare-fun tp!539680 () Bool)

(declare-fun b_and!145643 () Bool)

(assert (=> b!1891953 (= tp!539680 b_and!145643)))

(declare-fun b_free!52711 () Bool)

(declare-fun b_next!53415 () Bool)

(assert (=> b!1891953 (= b_free!52711 (not b_next!53415))))

(declare-fun tb!115101 () Bool)

(declare-fun t!175722 () Bool)

(assert (=> (and b!1891953 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (right!17323 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (dropList!762 v!6342 from!837))))))) t!175722) tb!115101))

(declare-fun result!139156 () Bool)

(assert (= result!139156 result!138896))

(assert (=> d!579017 t!175722))

(declare-fun t!175724 () Bool)

(declare-fun tb!115103 () Bool)

(assert (=> (and b!1891953 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (right!17323 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))) t!175724) tb!115103))

(declare-fun result!139158 () Bool)

(assert (= result!139158 result!138980))

(assert (=> b!1891479 t!175724))

(declare-fun t!175726 () Bool)

(declare-fun tb!115105 () Bool)

(assert (=> (and b!1891953 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (right!17323 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) t!175726) tb!115105))

(declare-fun result!139160 () Bool)

(assert (= result!139160 result!138972))

(assert (=> b!1891395 t!175726))

(declare-fun tb!115107 () Bool)

(declare-fun t!175728 () Bool)

(assert (=> (and b!1891953 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (right!17323 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (t!175426 (dropList!762 v!6342 from!837)))))))) t!175728) tb!115107))

(declare-fun result!139162 () Bool)

(assert (= result!139162 result!138964))

(assert (=> d!579227 t!175728))

(declare-fun t!175730 () Bool)

(declare-fun tb!115109 () Bool)

(assert (=> (and b!1891953 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (right!17323 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837)))))) t!175730) tb!115109))

(declare-fun result!139164 () Bool)

(assert (= result!139164 result!138864))

(assert (=> d!578841 t!175730))

(declare-fun t!175732 () Bool)

(declare-fun tb!115111 () Bool)

(assert (=> (and b!1891953 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (right!17323 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) t!175732) tb!115111))

(declare-fun result!139166 () Bool)

(assert (= result!139166 result!138898))

(assert (=> b!1891085 t!175732))

(declare-fun t!175734 () Bool)

(declare-fun tb!115113 () Bool)

(assert (=> (and b!1891953 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (right!17323 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))) t!175734) tb!115113))

(declare-fun result!139168 () Bool)

(assert (= result!139168 result!138956))

(assert (=> b!1891349 t!175734))

(declare-fun b_and!145645 () Bool)

(declare-fun tp!539682 () Bool)

(assert (=> b!1891953 (= tp!539682 (and (=> t!175722 result!139156) (=> t!175730 result!139164) (=> t!175734 result!139168) (=> t!175732 result!139166) (=> t!175728 result!139162) (=> t!175724 result!139158) (=> t!175726 result!139160) b_and!145645))))

(declare-fun e!1207705 () Bool)

(assert (=> b!1891953 (= e!1207705 (and tp!539680 tp!539682))))

(declare-fun e!1207710 () Bool)

(declare-fun b!1891950 () Bool)

(declare-fun e!1207707 () Bool)

(declare-fun tp!539681 () Bool)

(assert (=> b!1891950 (= e!1207707 (and (inv!28240 (h!26578 (innerList!7103 (xs!9933 (right!17323 (right!17323 (c!308318 v!6342))))))) e!1207710 tp!539681))))

(assert (=> b!1891195 (= tp!539471 e!1207707)))

(declare-fun e!1207708 () Bool)

(declare-fun b!1891951 () Bool)

(declare-fun tp!539683 () Bool)

(assert (=> b!1891951 (= e!1207710 (and (inv!21 (value!118523 (h!26578 (innerList!7103 (xs!9933 (right!17323 (right!17323 (c!308318 v!6342)))))))) e!1207708 tp!539683))))

(declare-fun tp!539679 () Bool)

(declare-fun b!1891952 () Bool)

(assert (=> b!1891952 (= e!1207708 (and tp!539679 (inv!28223 (tag!4166 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (right!17323 (c!308318 v!6342))))))))) (inv!28241 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (right!17323 (c!308318 v!6342))))))))) e!1207705))))

(assert (= b!1891952 b!1891953))

(assert (= b!1891951 b!1891952))

(assert (= b!1891950 b!1891951))

(assert (= (and b!1891195 ((_ is Cons!21177) (innerList!7103 (xs!9933 (right!17323 (right!17323 (c!308318 v!6342))))))) b!1891950))

(declare-fun m!2323343 () Bool)

(assert (=> b!1891950 m!2323343))

(declare-fun m!2323345 () Bool)

(assert (=> b!1891951 m!2323345))

(declare-fun m!2323347 () Bool)

(assert (=> b!1891952 m!2323347))

(declare-fun m!2323349 () Bool)

(assert (=> b!1891952 m!2323349))

(declare-fun b!1891954 () Bool)

(declare-fun e!1207711 () Bool)

(assert (=> b!1891954 (= e!1207711 tp_is_empty!9053)))

(declare-fun b!1891955 () Bool)

(declare-fun tp!539685 () Bool)

(declare-fun tp!539686 () Bool)

(assert (=> b!1891955 (= e!1207711 (and tp!539685 tp!539686))))

(declare-fun b!1891956 () Bool)

(declare-fun tp!539687 () Bool)

(assert (=> b!1891956 (= e!1207711 tp!539687)))

(assert (=> b!1891173 (= tp!539446 e!1207711)))

(declare-fun b!1891957 () Bool)

(declare-fun tp!539684 () Bool)

(declare-fun tp!539688 () Bool)

(assert (=> b!1891957 (= e!1207711 (and tp!539684 tp!539688))))

(assert (= (and b!1891173 ((_ is ElementMatch!5177) (regOne!10866 (regex!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) b!1891954))

(assert (= (and b!1891173 ((_ is Concat!9066) (regOne!10866 (regex!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) b!1891955))

(assert (= (and b!1891173 ((_ is Star!5177) (regOne!10866 (regex!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) b!1891956))

(assert (= (and b!1891173 ((_ is Union!5177) (regOne!10866 (regex!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) b!1891957))

(declare-fun b!1891958 () Bool)

(declare-fun e!1207712 () Bool)

(assert (=> b!1891958 (= e!1207712 tp_is_empty!9053)))

(declare-fun b!1891959 () Bool)

(declare-fun tp!539690 () Bool)

(declare-fun tp!539691 () Bool)

(assert (=> b!1891959 (= e!1207712 (and tp!539690 tp!539691))))

(declare-fun b!1891960 () Bool)

(declare-fun tp!539692 () Bool)

(assert (=> b!1891960 (= e!1207712 tp!539692)))

(assert (=> b!1891173 (= tp!539447 e!1207712)))

(declare-fun b!1891961 () Bool)

(declare-fun tp!539689 () Bool)

(declare-fun tp!539693 () Bool)

(assert (=> b!1891961 (= e!1207712 (and tp!539689 tp!539693))))

(assert (= (and b!1891173 ((_ is ElementMatch!5177) (regTwo!10866 (regex!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) b!1891958))

(assert (= (and b!1891173 ((_ is Concat!9066) (regTwo!10866 (regex!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) b!1891959))

(assert (= (and b!1891173 ((_ is Star!5177) (regTwo!10866 (regex!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) b!1891960))

(assert (= (and b!1891173 ((_ is Union!5177) (regTwo!10866 (regex!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) b!1891961))

(declare-fun tp!539694 () Bool)

(declare-fun tp!539696 () Bool)

(declare-fun b!1891962 () Bool)

(declare-fun e!1207714 () Bool)

(assert (=> b!1891962 (= e!1207714 (and (inv!28238 (left!16992 (left!16992 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837)))))))) tp!539694 (inv!28238 (right!17322 (left!16992 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837)))))))) tp!539696))))

(declare-fun b!1891964 () Bool)

(declare-fun e!1207713 () Bool)

(declare-fun tp!539695 () Bool)

(assert (=> b!1891964 (= e!1207713 tp!539695)))

(declare-fun b!1891963 () Bool)

(assert (=> b!1891963 (= e!1207714 (and (inv!28247 (xs!9932 (left!16992 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837)))))))) e!1207713))))

(assert (=> b!1891204 (= tp!539478 (and (inv!28238 (left!16992 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837))))))) e!1207714))))

(assert (= (and b!1891204 ((_ is Node!7042) (left!16992 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837)))))))) b!1891962))

(assert (= b!1891963 b!1891964))

(assert (= (and b!1891204 ((_ is Leaf!10381) (left!16992 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837)))))))) b!1891963))

(declare-fun m!2323351 () Bool)

(assert (=> b!1891962 m!2323351))

(declare-fun m!2323353 () Bool)

(assert (=> b!1891962 m!2323353))

(declare-fun m!2323355 () Bool)

(assert (=> b!1891963 m!2323355))

(assert (=> b!1891204 m!2322093))

(declare-fun e!1207716 () Bool)

(declare-fun tp!539699 () Bool)

(declare-fun b!1891965 () Bool)

(declare-fun tp!539697 () Bool)

(assert (=> b!1891965 (= e!1207716 (and (inv!28238 (left!16992 (right!17322 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837)))))))) tp!539697 (inv!28238 (right!17322 (right!17322 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837)))))))) tp!539699))))

(declare-fun b!1891967 () Bool)

(declare-fun e!1207715 () Bool)

(declare-fun tp!539698 () Bool)

(assert (=> b!1891967 (= e!1207715 tp!539698)))

(declare-fun b!1891966 () Bool)

(assert (=> b!1891966 (= e!1207716 (and (inv!28247 (xs!9932 (right!17322 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837)))))))) e!1207715))))

(assert (=> b!1891204 (= tp!539480 (and (inv!28238 (right!17322 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837))))))) e!1207716))))

(assert (= (and b!1891204 ((_ is Node!7042) (right!17322 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837)))))))) b!1891965))

(assert (= b!1891966 b!1891967))

(assert (= (and b!1891204 ((_ is Leaf!10381) (right!17322 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837)))))))) b!1891966))

(declare-fun m!2323357 () Bool)

(assert (=> b!1891965 m!2323357))

(declare-fun m!2323359 () Bool)

(assert (=> b!1891965 m!2323359))

(declare-fun m!2323361 () Bool)

(assert (=> b!1891966 m!2323361))

(assert (=> b!1891204 m!2322095))

(declare-fun b!1891971 () Bool)

(declare-fun b_free!52713 () Bool)

(declare-fun b_next!53417 () Bool)

(assert (=> b!1891971 (= b_free!52713 (not b_next!53417))))

(declare-fun tp!539701 () Bool)

(declare-fun b_and!145647 () Bool)

(assert (=> b!1891971 (= tp!539701 b_and!145647)))

(declare-fun b_free!52715 () Bool)

(declare-fun b_next!53419 () Bool)

(assert (=> b!1891971 (= b_free!52715 (not b_next!53419))))

(declare-fun tb!115115 () Bool)

(declare-fun t!175736 () Bool)

(assert (=> (and b!1891971 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (left!16993 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (dropList!762 v!6342 from!837))))))) t!175736) tb!115115))

(declare-fun result!139170 () Bool)

(assert (= result!139170 result!138896))

(assert (=> d!579017 t!175736))

(declare-fun t!175738 () Bool)

(declare-fun tb!115117 () Bool)

(assert (=> (and b!1891971 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (left!16993 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))) t!175738) tb!115117))

(declare-fun result!139172 () Bool)

(assert (= result!139172 result!138980))

(assert (=> b!1891479 t!175738))

(declare-fun t!175740 () Bool)

(declare-fun tb!115119 () Bool)

(assert (=> (and b!1891971 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (left!16993 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) t!175740) tb!115119))

(declare-fun result!139174 () Bool)

(assert (= result!139174 result!138972))

(assert (=> b!1891395 t!175740))

(declare-fun t!175742 () Bool)

(declare-fun tb!115121 () Bool)

(assert (=> (and b!1891971 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (left!16993 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (t!175426 (dropList!762 v!6342 from!837)))))))) t!175742) tb!115121))

(declare-fun result!139176 () Bool)

(assert (= result!139176 result!138964))

(assert (=> d!579227 t!175742))

(declare-fun t!175744 () Bool)

(declare-fun tb!115123 () Bool)

(assert (=> (and b!1891971 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (left!16993 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837)))))) t!175744) tb!115123))

(declare-fun result!139178 () Bool)

(assert (= result!139178 result!138864))

(assert (=> d!578841 t!175744))

(declare-fun t!175746 () Bool)

(declare-fun tb!115125 () Bool)

(assert (=> (and b!1891971 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (left!16993 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) t!175746) tb!115125))

(declare-fun result!139180 () Bool)

(assert (= result!139180 result!138898))

(assert (=> b!1891085 t!175746))

(declare-fun t!175748 () Bool)

(declare-fun tb!115127 () Bool)

(assert (=> (and b!1891971 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (left!16993 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))) t!175748) tb!115127))

(declare-fun result!139182 () Bool)

(assert (= result!139182 result!138956))

(assert (=> b!1891349 t!175748))

(declare-fun b_and!145649 () Bool)

(declare-fun tp!539703 () Bool)

(assert (=> b!1891971 (= tp!539703 (and (=> t!175740 result!139174) (=> t!175746 result!139180) (=> t!175742 result!139176) (=> t!175744 result!139178) (=> t!175736 result!139170) (=> t!175738 result!139172) (=> t!175748 result!139182) b_and!145649))))

(declare-fun e!1207717 () Bool)

(assert (=> b!1891971 (= e!1207717 (and tp!539701 tp!539703))))

(declare-fun e!1207719 () Bool)

(declare-fun e!1207722 () Bool)

(declare-fun tp!539702 () Bool)

(declare-fun b!1891968 () Bool)

(assert (=> b!1891968 (= e!1207719 (and (inv!28240 (h!26578 (innerList!7103 (xs!9933 (left!16993 (left!16993 (c!308318 v!6342))))))) e!1207722 tp!539702))))

(assert (=> b!1891182 (= tp!539457 e!1207719)))

(declare-fun e!1207720 () Bool)

(declare-fun b!1891969 () Bool)

(declare-fun tp!539704 () Bool)

(assert (=> b!1891969 (= e!1207722 (and (inv!21 (value!118523 (h!26578 (innerList!7103 (xs!9933 (left!16993 (left!16993 (c!308318 v!6342)))))))) e!1207720 tp!539704))))

(declare-fun b!1891970 () Bool)

(declare-fun tp!539700 () Bool)

(assert (=> b!1891970 (= e!1207720 (and tp!539700 (inv!28223 (tag!4166 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (left!16993 (c!308318 v!6342))))))))) (inv!28241 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (left!16993 (c!308318 v!6342))))))))) e!1207717))))

(assert (= b!1891970 b!1891971))

(assert (= b!1891969 b!1891970))

(assert (= b!1891968 b!1891969))

(assert (= (and b!1891182 ((_ is Cons!21177) (innerList!7103 (xs!9933 (left!16993 (left!16993 (c!308318 v!6342))))))) b!1891968))

(declare-fun m!2323363 () Bool)

(assert (=> b!1891968 m!2323363))

(declare-fun m!2323365 () Bool)

(assert (=> b!1891969 m!2323365))

(declare-fun m!2323367 () Bool)

(assert (=> b!1891970 m!2323367))

(declare-fun m!2323369 () Bool)

(assert (=> b!1891970 m!2323369))

(declare-fun b!1891972 () Bool)

(declare-fun e!1207723 () Bool)

(assert (=> b!1891972 (= e!1207723 tp_is_empty!9053)))

(declare-fun b!1891973 () Bool)

(declare-fun tp!539706 () Bool)

(declare-fun tp!539707 () Bool)

(assert (=> b!1891973 (= e!1207723 (and tp!539706 tp!539707))))

(declare-fun b!1891974 () Bool)

(declare-fun tp!539708 () Bool)

(assert (=> b!1891974 (= e!1207723 tp!539708)))

(assert (=> b!1891174 (= tp!539448 e!1207723)))

(declare-fun b!1891975 () Bool)

(declare-fun tp!539705 () Bool)

(declare-fun tp!539709 () Bool)

(assert (=> b!1891975 (= e!1207723 (and tp!539705 tp!539709))))

(assert (= (and b!1891174 ((_ is ElementMatch!5177) (reg!5506 (regex!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) b!1891972))

(assert (= (and b!1891174 ((_ is Concat!9066) (reg!5506 (regex!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) b!1891973))

(assert (= (and b!1891174 ((_ is Star!5177) (reg!5506 (regex!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) b!1891974))

(assert (= (and b!1891174 ((_ is Union!5177) (reg!5506 (regex!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) b!1891975))

(declare-fun b!1891976 () Bool)

(declare-fun e!1207724 () Bool)

(assert (=> b!1891976 (= e!1207724 tp_is_empty!9053)))

(declare-fun b!1891977 () Bool)

(declare-fun tp!539711 () Bool)

(declare-fun tp!539712 () Bool)

(assert (=> b!1891977 (= e!1207724 (and tp!539711 tp!539712))))

(declare-fun b!1891978 () Bool)

(declare-fun tp!539713 () Bool)

(assert (=> b!1891978 (= e!1207724 tp!539713)))

(assert (=> b!1891175 (= tp!539445 e!1207724)))

(declare-fun b!1891979 () Bool)

(declare-fun tp!539710 () Bool)

(declare-fun tp!539714 () Bool)

(assert (=> b!1891979 (= e!1207724 (and tp!539710 tp!539714))))

(assert (= (and b!1891175 ((_ is ElementMatch!5177) (regOne!10867 (regex!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) b!1891976))

(assert (= (and b!1891175 ((_ is Concat!9066) (regOne!10867 (regex!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) b!1891977))

(assert (= (and b!1891175 ((_ is Star!5177) (regOne!10867 (regex!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) b!1891978))

(assert (= (and b!1891175 ((_ is Union!5177) (regOne!10867 (regex!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) b!1891979))

(declare-fun b!1891980 () Bool)

(declare-fun e!1207725 () Bool)

(assert (=> b!1891980 (= e!1207725 tp_is_empty!9053)))

(declare-fun b!1891981 () Bool)

(declare-fun tp!539716 () Bool)

(declare-fun tp!539717 () Bool)

(assert (=> b!1891981 (= e!1207725 (and tp!539716 tp!539717))))

(declare-fun b!1891982 () Bool)

(declare-fun tp!539718 () Bool)

(assert (=> b!1891982 (= e!1207725 tp!539718)))

(assert (=> b!1891175 (= tp!539449 e!1207725)))

(declare-fun b!1891983 () Bool)

(declare-fun tp!539715 () Bool)

(declare-fun tp!539719 () Bool)

(assert (=> b!1891983 (= e!1207725 (and tp!539715 tp!539719))))

(assert (= (and b!1891175 ((_ is ElementMatch!5177) (regTwo!10867 (regex!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) b!1891980))

(assert (= (and b!1891175 ((_ is Concat!9066) (regTwo!10867 (regex!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) b!1891981))

(assert (= (and b!1891175 ((_ is Star!5177) (regTwo!10867 (regex!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) b!1891982))

(assert (= (and b!1891175 ((_ is Union!5177) (regTwo!10867 (regex!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) b!1891983))

(declare-fun b!1891984 () Bool)

(declare-fun e!1207726 () Bool)

(declare-fun tp!539720 () Bool)

(assert (=> b!1891984 (= e!1207726 (and tp_is_empty!9053 tp!539720))))

(assert (=> b!1891206 (= tp!539479 e!1207726)))

(assert (= (and b!1891206 ((_ is Cons!21176) (innerList!7102 (xs!9932 (c!308316 (dynLambda!10283 (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (dropList!762 v!6342 from!837))))) (value!118523 (h!26578 (dropList!762 v!6342 from!837))))))))) b!1891984))

(declare-fun b_lambda!62033 () Bool)

(assert (= b_lambda!62017 (or (and b!1891179 b_free!52655 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))))))) (and b!1891932 b_free!52703 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))))))) (and b!1891914 b_free!52695 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))))))) (and b!1891891 b_free!52691 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (right!17323 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))))))) (and b!1891953 b_free!52711 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (right!17323 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))))))) (and b!1890787 b_free!52635 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))))))) (and b!1891928 b_free!52699 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (left!16993 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))))))) (and b!1891156 b_free!52651) (and b!1891189 b_free!52659 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))))))) (and b!1891971 b_free!52715 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (left!16993 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))))))) (and b!1891936 b_free!52707 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))))))) b_lambda!62033)))

(declare-fun b_lambda!62035 () Bool)

(assert (= b_lambda!62021 (or (and b!1891189 b_free!52659 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))))) (and b!1891156 b_free!52651 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))))) (and b!1891971 b_free!52715 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (left!16993 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))))) (and b!1891932 b_free!52703 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))))) (and b!1891891 b_free!52691 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (right!17323 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))))) (and b!1891953 b_free!52711 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (right!17323 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))))) (and b!1891914 b_free!52695 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))))) (and b!1890787 b_free!52635 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))))) (and b!1891179 b_free!52655) (and b!1891928 b_free!52699 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (left!16993 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))))) (and b!1891936 b_free!52707 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))))) b_lambda!62035)))

(declare-fun b_lambda!62037 () Bool)

(assert (= b_lambda!62023 (or (and b!1891179 b_free!52655 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))))))) (and b!1891936 b_free!52707 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))))))) (and b!1891971 b_free!52715 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (left!16993 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))))))) (and b!1891914 b_free!52695 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))))))) (and b!1891891 b_free!52691 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (right!17323 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))))))) (and b!1891932 b_free!52703 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))))))) (and b!1891189 b_free!52659) (and b!1891928 b_free!52699 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (left!16993 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))))))) (and b!1891156 b_free!52651 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))))))) (and b!1891953 b_free!52711 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (right!17323 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))))))) (and b!1890787 b_free!52635 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))))))) b_lambda!62037)))

(declare-fun b_lambda!62039 () Bool)

(assert (= b_lambda!62001 (or (and b!1891914 b_free!52695 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))))) (and b!1891189 b_free!52659 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (c!308318 v!6342)))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))))) (and b!1891891 b_free!52691 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (right!17323 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))))) (and b!1891936 b_free!52707 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))))) (and b!1891928 b_free!52699 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (left!16993 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))))) (and b!1890787 b_free!52635 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (c!308318 v!6342))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))))) (and b!1891156 b_free!52651 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342)))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))))) (and b!1891932 b_free!52703 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (left!16993 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))))) (and b!1891953 b_free!52711 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (right!17323 (right!17323 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))))) (and b!1891971 b_free!52715 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (innerList!7103 (xs!9933 (left!16993 (left!16993 (c!308318 v!6342))))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))))) (and b!1891179 b_free!52655 (= (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (innerList!7103 (xs!9933 (c!308318 v!6342)))))))) (toChars!5216 (transformation!3752 (rule!5945 (h!26578 (t!175426 (dropList!762 v!6342 from!837)))))))) b_lambda!62039)))

(check-sat (not b!1891493) (not b!1891883) (not d!579287) (not b_next!53397) (not b!1891897) (not b!1891952) (not b_next!53395) (not b!1891907) (not b!1891879) (not b!1891820) (not b!1891832) (not tb!114917) (not b!1891065) (not b!1891319) (not b!1891396) (not b!1891909) (not b!1891874) (not b!1891353) (not d!579271) (not b!1891514) (not b!1891397) b_and!145641 (not b!1891945) (not b!1891956) (not b!1891472) tp_is_empty!9053 (not b!1891859) (not d!579547) (not b!1891392) (not b!1891892) (not b!1891935) (not b!1891925) (not d!579249) (not b!1891809) (not b!1891345) b_and!145623 (not b!1891939) (not b!1891929) (not b!1891960) (not b_lambda!62035) (not d!579267) (not b!1891395) (not b_next!53407) (not b_next!53353) (not d!579337) (not b!1891868) (not d!579225) (not b!1891457) (not b_lambda!62019) (not b!1891942) (not b!1891865) (not b!1891365) b_and!145495 (not b!1891381) (not b!1891908) (not b!1891412) (not b!1891916) (not d!579199) (not b!1891975) (not b!1891968) (not b!1891955) (not d!579573) (not b_next!53337) (not b!1891919) (not d!579203) (not b!1891445) (not b!1891895) (not b!1891383) (not b!1891490) (not b!1891410) (not b!1891826) (not b!1891467) (not b_next!53393) (not d!579223) (not d!579183) (not tb!114925) b_and!145519 (not b!1891882) b_and!145639 (not b!1891338) (not b!1891927) (not b!1891898) (not b!1891419) (not b!1891984) (not b!1891893) (not b!1891374) (not b!1891818) (not b_next!53355) (not b!1891384) (not b!1891431) (not b_next!53401) (not b!1891519) b_and!145647 (not b_next!53415) (not b!1891912) (not b!1891411) (not d!579305) (not b!1891903) (not b!1891190) (not b!1891964) (not b!1891887) b_and!145627 (not b!1891959) (not b_lambda!62039) (not b!1891414) (not b!1891869) b_and!145637 (not b_next!53417) (not d!579219) (not b!1891087) (not b_next!53359) (not b!1891917) (not b!1891502) (not b!1891357) (not b!1891483) (not b!1891388) (not b!1891511) (not b!1891517) (not b!1891415) b_and!145635 (not b!1891330) (not b!1891943) (not b!1891481) (not b_next!53361) (not b!1891350) (not d!579201) (not b!1891449) (not b!1891870) (not b!1891965) (not b!1891347) (not d!579555) (not b!1891503) (not b!1891443) (not b!1891926) (not b!1891456) (not b!1891450) (not b!1891521) (not b!1891840) (not b!1891180) (not b!1891961) (not b!1891413) (not d!579333) (not b!1891372) (not b_lambda!62037) (not b!1891969) (not b!1891911) (not b!1891355) (not b!1891474) (not d!579341) (not b!1891494) (not b!1891974) (not d!579359) (not b!1891437) (not b!1891371) (not b!1891921) (not b!1891322) (not b!1891364) (not b!1891334) (not b!1891982) (not b!1891505) (not b!1891977) (not d!579283) (not b!1891471) (not b!1891838) (not d!579567) (not b!1891923) (not b!1891368) (not b!1891910) (not b!1891930) (not b!1891462) (not b!1891340) (not b!1891446) (not b!1891918) (not b!1891480) (not b!1891854) (not d!579215) b_and!145649 (not d!579565) (not b!1891434) (not b!1891835) (not b!1891924) b_and!145629 (not b!1891829) (not b!1891896) (not d!579189) (not b!1891885) (not b!1891193) (not b!1891941) (not d!579289) (not b!1891489) (not b!1891983) (not b!1891377) (not b!1891204) (not d!579351) (not b!1891934) (not b!1891421) (not d!579227) (not b!1891475) (not b!1891979) (not b_next!53409) (not b!1891513) (not b!1891836) (not b!1891950) (not b!1891962) (not d!579307) (not b!1891937) (not b!1891321) (not b!1891337) (not b!1891922) (not b!1891349) (not b!1891824) (not b_lambda!62033) (not b!1891416) (not b!1891440) (not b!1891504) (not b!1891391) (not b!1891940) (not b!1891888) (not b!1891447) (not b!1891904) (not b!1891331) (not d!579315) (not b!1891857) (not b!1891844) (not b!1891326) (not b!1891966) (not b!1891889) (not d!579527) (not b!1891901) (not b!1891479) (not d!579233) (not b!1891508) (not b_next!53411) (not b!1891886) (not b_next!53339) (not d!579207) (not d!579231) (not d!579339) (not bm!116754) (not b!1891359) (not b!1891947) (not b_next!53399) (not b!1891970) (not b!1891183) (not b!1891899) (not b_next!53403) b_and!145593 (not b!1891815) (not b!1891463) b_and!145527 (not b!1891839) (not b!1891822) (not d!579335) (not b!1891436) (not b!1891946) b_and!145645 (not d!579559) (not b!1891878) (not d!579221) (not b!1891442) (not b!1891951) (not b!1891485) (not b!1891362) (not b!1891478) (not b!1891963) (not b!1891938) b_and!145587 (not b!1891807) b_and!145523 (not b!1891864) (not b!1891967) (not b!1891957) (not b!1891906) (not b!1891379) b_and!145633 (not b_lambda!62007) b_and!145643 (not d!579169) b_and!145631 (not b_next!53363) b_and!145591 (not b!1891860) (not b!1891841) (not d!579321) (not d!579523) (not b!1891933) (not b!1891325) (not b!1891370) (not b!1891948) (not tb!114901) (not b_next!53419) (not b_next!53413) (not b!1891913) (not b!1891931) (not b!1891905) (not d!579363) (not b!1891423) (not d!579167) (not b!1891394) (not b!1891444) (not b_next!53405) (not d!579323) (not b!1891324) (not d!579301) (not d!579313) (not b_lambda!62005) (not b!1891834) (not b!1891453) (not b!1891873) (not b!1891949) (not b!1891805) (not b!1891498) b_and!145589 (not d!579217) (not b!1891509) (not b!1891506) (not b!1891426) (not b!1891837) (not b!1891323) (not b!1891981) (not b!1891900) (not b!1891973) (not b!1891890) (not b!1891361) (not b!1891328) b_and!145625 (not b!1891978) (not b!1891944) (not b!1891843) (not b!1891806) (not b!1891487) (not b!1891342) (not b_next!53357) (not d!579279) (not b!1891518) (not b!1891351) (not b!1891920) (not b!1891830) (not b!1891846) (not b!1891817) (not b!1891827) (not b!1891386) (not tb!114909) (not d!579319) (not b!1891902) (not b!1891507) (not b!1891344) (not b!1891469) (not b!1891418) (not b!1891451) (not b!1891499))
(check-sat b_and!145641 b_and!145495 (not b_next!53337) b_and!145639 b_and!145635 (not b_next!53361) b_and!145649 b_and!145629 (not b_next!53409) (not b_next!53397) (not b_next!53395) b_and!145623 (not b_next!53407) (not b_next!53353) (not b_next!53393) b_and!145519 (not b_next!53355) (not b_next!53401) b_and!145647 (not b_next!53415) b_and!145627 b_and!145637 (not b_next!53417) (not b_next!53359) (not b_next!53411) (not b_next!53339) (not b_next!53399) (not b_next!53403) b_and!145593 b_and!145527 b_and!145645 b_and!145587 b_and!145633 b_and!145523 b_and!145643 b_and!145631 (not b_next!53363) b_and!145591 (not b_next!53419) (not b_next!53413) (not b_next!53405) b_and!145589 b_and!145625 (not b_next!53357))
