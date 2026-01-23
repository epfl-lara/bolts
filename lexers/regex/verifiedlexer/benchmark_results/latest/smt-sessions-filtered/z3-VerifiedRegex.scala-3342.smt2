; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!189532 () Bool)

(assert start!189532)

(declare-fun res!844704 () Bool)

(declare-fun e!1207905 () Bool)

(assert (=> start!189532 (=> (not res!844704) (not e!1207905))))

(declare-datatypes ((LexerInterface!3373 0))(
  ( (LexerInterfaceExt!3370 (__x!13290 Int)) (Lexer!3371) )
))
(declare-fun thiss!13601 () LexerInterface!3373)

(declare-fun from!837 () Int)

(get-info :version)

(assert (=> start!189532 (= res!844704 (and ((_ is Lexer!3371) thiss!13601) (>= from!837 0)))))

(assert (=> start!189532 e!1207905))

(assert (=> start!189532 true))

(declare-datatypes ((List!21281 0))(
  ( (Nil!21199) (Cons!21199 (h!26600 (_ BitVec 16)) (t!175770 List!21281)) )
))
(declare-datatypes ((TokenValue!3896 0))(
  ( (FloatLiteralValue!7792 (text!27717 List!21281)) (TokenValueExt!3895 (__x!13291 Int)) (Broken!19480 (value!118725 List!21281)) (Object!3977) (End!3896) (Def!3896) (Underscore!3896) (Match!3896) (Else!3896) (Error!3896) (Case!3896) (If!3896) (Extends!3896) (Abstract!3896) (Class!3896) (Val!3896) (DelimiterValue!7792 (del!3956 List!21281)) (KeywordValue!3902 (value!118726 List!21281)) (CommentValue!7792 (value!118727 List!21281)) (WhitespaceValue!7792 (value!118728 List!21281)) (IndentationValue!3896 (value!118729 List!21281)) (String!24597) (Int32!3896) (Broken!19481 (value!118730 List!21281)) (Boolean!3897) (Unit!35575) (OperatorValue!3899 (op!3956 List!21281)) (IdentifierValue!7792 (value!118731 List!21281)) (IdentifierValue!7793 (value!118732 List!21281)) (WhitespaceValue!7793 (value!118733 List!21281)) (True!7792) (False!7792) (Broken!19482 (value!118734 List!21281)) (Broken!19483 (value!118735 List!21281)) (True!7793) (RightBrace!3896) (RightBracket!3896) (Colon!3896) (Null!3896) (Comma!3896) (LeftBracket!3896) (False!7793) (LeftBrace!3896) (ImaginaryLiteralValue!3896 (text!27718 List!21281)) (StringLiteralValue!11688 (value!118736 List!21281)) (EOFValue!3896 (value!118737 List!21281)) (IdentValue!3896 (value!118738 List!21281)) (DelimiterValue!7793 (value!118739 List!21281)) (DedentValue!3896 (value!118740 List!21281)) (NewLineValue!3896 (value!118741 List!21281)) (IntegerValue!11688 (value!118742 (_ BitVec 32)) (text!27719 List!21281)) (IntegerValue!11689 (value!118743 Int) (text!27720 List!21281)) (Times!3896) (Or!3896) (Equal!3896) (Minus!3896) (Broken!19484 (value!118744 List!21281)) (And!3896) (Div!3896) (LessEqual!3896) (Mod!3896) (Concat!9081) (Not!3896) (Plus!3896) (SpaceValue!3896 (value!118745 List!21281)) (IntegerValue!11690 (value!118746 Int) (text!27721 List!21281)) (StringLiteralValue!11689 (text!27722 List!21281)) (FloatLiteralValue!7793 (text!27723 List!21281)) (BytesLiteralValue!3896 (value!118747 List!21281)) (CommentValue!7793 (value!118748 List!21281)) (StringLiteralValue!11690 (value!118749 List!21281)) (ErrorTokenValue!3896 (msg!3957 List!21281)) )
))
(declare-datatypes ((C!10516 0))(
  ( (C!10517 (val!6210 Int)) )
))
(declare-datatypes ((List!21282 0))(
  ( (Nil!21200) (Cons!21200 (h!26601 C!10516) (t!175771 List!21282)) )
))
(declare-datatypes ((IArray!14121 0))(
  ( (IArray!14122 (innerList!7118 List!21282)) )
))
(declare-datatypes ((Conc!7058 0))(
  ( (Node!7058 (left!17016 Conc!7058) (right!17346 Conc!7058) (csize!14346 Int) (cheight!7269 Int)) (Leaf!10401 (xs!9948 IArray!14121) (csize!14347 Int)) (Empty!7058) )
))
(declare-datatypes ((BalanceConc!13932 0))(
  ( (BalanceConc!13933 (c!308728 Conc!7058)) )
))
(declare-datatypes ((Regex!5185 0))(
  ( (ElementMatch!5185 (c!308729 C!10516)) (Concat!9082 (regOne!10882 Regex!5185) (regTwo!10882 Regex!5185)) (EmptyExpr!5185) (Star!5185 (reg!5514 Regex!5185)) (EmptyLang!5185) (Union!5185 (regOne!10883 Regex!5185) (regTwo!10883 Regex!5185)) )
))
(declare-datatypes ((String!24598 0))(
  ( (String!24599 (value!118750 String)) )
))
(declare-datatypes ((TokenValueInjection!7376 0))(
  ( (TokenValueInjection!7377 (toValue!5369 Int) (toChars!5228 Int)) )
))
(declare-datatypes ((Rule!7320 0))(
  ( (Rule!7321 (regex!3760 Regex!5185) (tag!4174 String!24598) (isSeparator!3760 Bool) (transformation!3760 TokenValueInjection!7376)) )
))
(declare-datatypes ((Token!7072 0))(
  ( (Token!7073 (value!118751 TokenValue!3896) (rule!5953 Rule!7320) (size!16807 Int) (originalCharacters!4567 List!21282)) )
))
(declare-datatypes ((List!21283 0))(
  ( (Nil!21201) (Cons!21201 (h!26602 Token!7072) (t!175772 List!21283)) )
))
(declare-datatypes ((IArray!14123 0))(
  ( (IArray!14124 (innerList!7119 List!21283)) )
))
(declare-datatypes ((Conc!7059 0))(
  ( (Node!7059 (left!17017 Conc!7059) (right!17347 Conc!7059) (csize!14348 Int) (cheight!7270 Int)) (Leaf!10402 (xs!9949 IArray!14123) (csize!14349 Int)) (Empty!7059) )
))
(declare-datatypes ((BalanceConc!13934 0))(
  ( (BalanceConc!13935 (c!308730 Conc!7059)) )
))
(declare-fun v!6342 () BalanceConc!13934)

(declare-fun e!1207904 () Bool)

(declare-fun inv!28282 (BalanceConc!13934) Bool)

(assert (=> start!189532 (and (inv!28282 v!6342) e!1207904)))

(declare-fun b!1892236 () Bool)

(declare-fun e!1207906 () Bool)

(assert (=> b!1892236 (= e!1207905 e!1207906)))

(declare-fun res!844703 () Bool)

(assert (=> b!1892236 (=> (not res!844703) (not e!1207906))))

(declare-fun lt!724401 () Int)

(assert (=> b!1892236 (= res!844703 (and (<= from!837 lt!724401) (< from!837 lt!724401)))))

(declare-fun size!16808 (BalanceConc!13934) Int)

(assert (=> b!1892236 (= lt!724401 (size!16808 v!6342))))

(declare-fun b!1892237 () Bool)

(declare-fun list!8607 (BalanceConc!13932) List!21282)

(declare-fun ++!5715 (BalanceConc!13932 BalanceConc!13932) BalanceConc!13932)

(declare-fun charsOf!2316 (Token!7072) BalanceConc!13932)

(declare-fun apply!5580 (BalanceConc!13934 Int) Token!7072)

(declare-fun printRec!4 (LexerInterface!3373 BalanceConc!13934 Int) BalanceConc!13932)

(declare-fun printList!1018 (LexerInterface!3373 List!21283) List!21282)

(declare-fun dropList!764 (BalanceConc!13934 Int) List!21283)

(assert (=> b!1892237 (= e!1207906 (not (= (list!8607 (++!5715 (charsOf!2316 (apply!5580 v!6342 from!837)) (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))) (printList!1018 thiss!13601 (dropList!764 v!6342 from!837)))))))

(declare-fun lt!724402 () List!21283)

(declare-fun lt!724398 () List!21283)

(declare-fun tail!2928 (List!21283) List!21283)

(declare-fun drop!1055 (List!21283 Int) List!21283)

(assert (=> b!1892237 (= (tail!2928 lt!724402) (drop!1055 lt!724398 (+ 1 from!837)))))

(declare-datatypes ((Unit!35576 0))(
  ( (Unit!35577) )
))
(declare-fun lt!724399 () Unit!35576)

(declare-fun lemmaDropTail!664 (List!21283 Int) Unit!35576)

(assert (=> b!1892237 (= lt!724399 (lemmaDropTail!664 lt!724398 from!837))))

(declare-fun head!4402 (List!21283) Token!7072)

(declare-fun apply!5581 (List!21283 Int) Token!7072)

(assert (=> b!1892237 (= (head!4402 lt!724402) (apply!5581 lt!724398 from!837))))

(assert (=> b!1892237 (= lt!724402 (drop!1055 lt!724398 from!837))))

(declare-fun lt!724400 () Unit!35576)

(declare-fun lemmaDropApply!688 (List!21283 Int) Unit!35576)

(assert (=> b!1892237 (= lt!724400 (lemmaDropApply!688 lt!724398 from!837))))

(declare-fun list!8608 (BalanceConc!13934) List!21283)

(assert (=> b!1892237 (= lt!724398 (list!8608 v!6342))))

(declare-fun b!1892238 () Bool)

(declare-fun tp!539780 () Bool)

(declare-fun inv!28283 (Conc!7059) Bool)

(assert (=> b!1892238 (= e!1207904 (and (inv!28283 (c!308730 v!6342)) tp!539780))))

(assert (= (and start!189532 res!844704) b!1892236))

(assert (= (and b!1892236 res!844703) b!1892237))

(assert (= start!189532 b!1892238))

(declare-fun m!2323627 () Bool)

(assert (=> start!189532 m!2323627))

(declare-fun m!2323629 () Bool)

(assert (=> b!1892236 m!2323629))

(declare-fun m!2323631 () Bool)

(assert (=> b!1892237 m!2323631))

(declare-fun m!2323633 () Bool)

(assert (=> b!1892237 m!2323633))

(declare-fun m!2323635 () Bool)

(assert (=> b!1892237 m!2323635))

(declare-fun m!2323637 () Bool)

(assert (=> b!1892237 m!2323637))

(declare-fun m!2323639 () Bool)

(assert (=> b!1892237 m!2323639))

(declare-fun m!2323641 () Bool)

(assert (=> b!1892237 m!2323641))

(declare-fun m!2323643 () Bool)

(assert (=> b!1892237 m!2323643))

(declare-fun m!2323645 () Bool)

(assert (=> b!1892237 m!2323645))

(declare-fun m!2323647 () Bool)

(assert (=> b!1892237 m!2323647))

(declare-fun m!2323649 () Bool)

(assert (=> b!1892237 m!2323649))

(declare-fun m!2323651 () Bool)

(assert (=> b!1892237 m!2323651))

(assert (=> b!1892237 m!2323639))

(declare-fun m!2323653 () Bool)

(assert (=> b!1892237 m!2323653))

(declare-fun m!2323655 () Bool)

(assert (=> b!1892237 m!2323655))

(assert (=> b!1892237 m!2323653))

(assert (=> b!1892237 m!2323641))

(declare-fun m!2323657 () Bool)

(assert (=> b!1892237 m!2323657))

(assert (=> b!1892237 m!2323643))

(assert (=> b!1892237 m!2323657))

(declare-fun m!2323659 () Bool)

(assert (=> b!1892237 m!2323659))

(declare-fun m!2323661 () Bool)

(assert (=> b!1892238 m!2323661))

(check-sat (not start!189532) (not b!1892238) (not b!1892236) (not b!1892237))
(check-sat)
(get-model)

(declare-fun d!579641 () Bool)

(declare-fun isBalanced!2221 (Conc!7059) Bool)

(assert (=> d!579641 (= (inv!28282 v!6342) (isBalanced!2221 (c!308730 v!6342)))))

(declare-fun bs!413187 () Bool)

(assert (= bs!413187 d!579641))

(declare-fun m!2323669 () Bool)

(assert (=> bs!413187 m!2323669))

(assert (=> start!189532 d!579641))

(declare-fun d!579643 () Bool)

(declare-fun c!308745 () Bool)

(assert (=> d!579643 (= c!308745 ((_ is Node!7059) (c!308730 v!6342)))))

(declare-fun e!1207926 () Bool)

(assert (=> d!579643 (= (inv!28283 (c!308730 v!6342)) e!1207926)))

(declare-fun b!1892272 () Bool)

(declare-fun inv!28284 (Conc!7059) Bool)

(assert (=> b!1892272 (= e!1207926 (inv!28284 (c!308730 v!6342)))))

(declare-fun b!1892273 () Bool)

(declare-fun e!1207927 () Bool)

(assert (=> b!1892273 (= e!1207926 e!1207927)))

(declare-fun res!844714 () Bool)

(assert (=> b!1892273 (= res!844714 (not ((_ is Leaf!10402) (c!308730 v!6342))))))

(assert (=> b!1892273 (=> res!844714 e!1207927)))

(declare-fun b!1892274 () Bool)

(declare-fun inv!28285 (Conc!7059) Bool)

(assert (=> b!1892274 (= e!1207927 (inv!28285 (c!308730 v!6342)))))

(assert (= (and d!579643 c!308745) b!1892272))

(assert (= (and d!579643 (not c!308745)) b!1892273))

(assert (= (and b!1892273 (not res!844714)) b!1892274))

(declare-fun m!2323671 () Bool)

(assert (=> b!1892272 m!2323671))

(declare-fun m!2323673 () Bool)

(assert (=> b!1892274 m!2323673))

(assert (=> b!1892238 d!579643))

(declare-fun d!579645 () Bool)

(declare-fun lt!724409 () Int)

(declare-fun size!16810 (List!21283) Int)

(assert (=> d!579645 (= lt!724409 (size!16810 (list!8608 v!6342)))))

(declare-fun size!16811 (Conc!7059) Int)

(assert (=> d!579645 (= lt!724409 (size!16811 (c!308730 v!6342)))))

(assert (=> d!579645 (= (size!16808 v!6342) lt!724409)))

(declare-fun bs!413189 () Bool)

(assert (= bs!413189 d!579645))

(assert (=> bs!413189 m!2323637))

(assert (=> bs!413189 m!2323637))

(declare-fun m!2323691 () Bool)

(assert (=> bs!413189 m!2323691))

(declare-fun m!2323693 () Bool)

(assert (=> bs!413189 m!2323693))

(assert (=> b!1892236 d!579645))

(declare-fun d!579653 () Bool)

(assert (=> d!579653 (= (tail!2928 (drop!1055 lt!724398 from!837)) (drop!1055 lt!724398 (+ from!837 1)))))

(declare-fun lt!724412 () Unit!35576)

(declare-fun choose!11823 (List!21283 Int) Unit!35576)

(assert (=> d!579653 (= lt!724412 (choose!11823 lt!724398 from!837))))

(declare-fun e!1207935 () Bool)

(assert (=> d!579653 e!1207935))

(declare-fun res!844718 () Bool)

(assert (=> d!579653 (=> (not res!844718) (not e!1207935))))

(assert (=> d!579653 (= res!844718 (>= from!837 0))))

(assert (=> d!579653 (= (lemmaDropTail!664 lt!724398 from!837) lt!724412)))

(declare-fun b!1892286 () Bool)

(assert (=> b!1892286 (= e!1207935 (< from!837 (size!16810 lt!724398)))))

(assert (= (and d!579653 res!844718) b!1892286))

(assert (=> d!579653 m!2323651))

(assert (=> d!579653 m!2323651))

(declare-fun m!2323695 () Bool)

(assert (=> d!579653 m!2323695))

(declare-fun m!2323697 () Bool)

(assert (=> d!579653 m!2323697))

(declare-fun m!2323699 () Bool)

(assert (=> d!579653 m!2323699))

(declare-fun m!2323701 () Bool)

(assert (=> b!1892286 m!2323701))

(assert (=> b!1892237 d!579653))

(declare-fun d!579655 () Bool)

(declare-fun list!8610 (Conc!7059) List!21283)

(assert (=> d!579655 (= (dropList!764 v!6342 from!837) (drop!1055 (list!8610 (c!308730 v!6342)) from!837))))

(declare-fun bs!413190 () Bool)

(assert (= bs!413190 d!579655))

(declare-fun m!2323703 () Bool)

(assert (=> bs!413190 m!2323703))

(assert (=> bs!413190 m!2323703))

(declare-fun m!2323705 () Bool)

(assert (=> bs!413190 m!2323705))

(assert (=> b!1892237 d!579655))

(declare-fun b!1892317 () Bool)

(declare-fun e!1207953 () Bool)

(declare-fun lt!724418 () List!21283)

(declare-fun e!1207949 () Int)

(assert (=> b!1892317 (= e!1207953 (= (size!16810 lt!724418) e!1207949))))

(declare-fun c!308763 () Bool)

(assert (=> b!1892317 (= c!308763 (<= (+ 1 from!837) 0))))

(declare-fun b!1892318 () Bool)

(declare-fun e!1207951 () Int)

(assert (=> b!1892318 (= e!1207951 0)))

(declare-fun b!1892319 () Bool)

(declare-fun call!116773 () Int)

(assert (=> b!1892319 (= e!1207951 (- call!116773 (+ 1 from!837)))))

(declare-fun d!579657 () Bool)

(assert (=> d!579657 e!1207953))

(declare-fun res!844733 () Bool)

(assert (=> d!579657 (=> (not res!844733) (not e!1207953))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3127 (List!21283) (InoxSet Token!7072))

(assert (=> d!579657 (= res!844733 (= ((_ map implies) (content!3127 lt!724418) (content!3127 lt!724398)) ((as const (InoxSet Token!7072)) true)))))

(declare-fun e!1207950 () List!21283)

(assert (=> d!579657 (= lt!724418 e!1207950)))

(declare-fun c!308762 () Bool)

(assert (=> d!579657 (= c!308762 ((_ is Nil!21201) lt!724398))))

(assert (=> d!579657 (= (drop!1055 lt!724398 (+ 1 from!837)) lt!724418)))

(declare-fun b!1892320 () Bool)

(assert (=> b!1892320 (= e!1207950 Nil!21201)))

(declare-fun b!1892321 () Bool)

(declare-fun e!1207952 () List!21283)

(assert (=> b!1892321 (= e!1207950 e!1207952)))

(declare-fun c!308761 () Bool)

(assert (=> b!1892321 (= c!308761 (<= (+ 1 from!837) 0))))

(declare-fun bm!116768 () Bool)

(assert (=> bm!116768 (= call!116773 (size!16810 lt!724398))))

(declare-fun b!1892322 () Bool)

(assert (=> b!1892322 (= e!1207952 lt!724398)))

(declare-fun b!1892323 () Bool)

(assert (=> b!1892323 (= e!1207949 call!116773)))

(declare-fun b!1892324 () Bool)

(assert (=> b!1892324 (= e!1207949 e!1207951)))

(declare-fun c!308764 () Bool)

(assert (=> b!1892324 (= c!308764 (>= (+ 1 from!837) call!116773))))

(declare-fun b!1892325 () Bool)

(assert (=> b!1892325 (= e!1207952 (drop!1055 (t!175772 lt!724398) (- (+ 1 from!837) 1)))))

(assert (= (and d!579657 c!308762) b!1892320))

(assert (= (and d!579657 (not c!308762)) b!1892321))

(assert (= (and b!1892321 c!308761) b!1892322))

(assert (= (and b!1892321 (not c!308761)) b!1892325))

(assert (= (and d!579657 res!844733) b!1892317))

(assert (= (and b!1892317 c!308763) b!1892323))

(assert (= (and b!1892317 (not c!308763)) b!1892324))

(assert (= (and b!1892324 c!308764) b!1892318))

(assert (= (and b!1892324 (not c!308764)) b!1892319))

(assert (= (or b!1892323 b!1892324 b!1892319) bm!116768))

(declare-fun m!2323729 () Bool)

(assert (=> b!1892317 m!2323729))

(declare-fun m!2323731 () Bool)

(assert (=> d!579657 m!2323731))

(declare-fun m!2323733 () Bool)

(assert (=> d!579657 m!2323733))

(assert (=> bm!116768 m!2323701))

(declare-fun m!2323735 () Bool)

(assert (=> b!1892325 m!2323735))

(assert (=> b!1892237 d!579657))

(declare-fun d!579663 () Bool)

(assert (=> d!579663 (= (head!4402 (drop!1055 lt!724398 from!837)) (apply!5581 lt!724398 from!837))))

(declare-fun lt!724424 () Unit!35576)

(declare-fun choose!11825 (List!21283 Int) Unit!35576)

(assert (=> d!579663 (= lt!724424 (choose!11825 lt!724398 from!837))))

(declare-fun e!1207962 () Bool)

(assert (=> d!579663 e!1207962))

(declare-fun res!844739 () Bool)

(assert (=> d!579663 (=> (not res!844739) (not e!1207962))))

(assert (=> d!579663 (= res!844739 (>= from!837 0))))

(assert (=> d!579663 (= (lemmaDropApply!688 lt!724398 from!837) lt!724424)))

(declare-fun b!1892337 () Bool)

(assert (=> b!1892337 (= e!1207962 (< from!837 (size!16810 lt!724398)))))

(assert (= (and d!579663 res!844739) b!1892337))

(assert (=> d!579663 m!2323651))

(assert (=> d!579663 m!2323651))

(declare-fun m!2323745 () Bool)

(assert (=> d!579663 m!2323745))

(assert (=> d!579663 m!2323631))

(declare-fun m!2323747 () Bool)

(assert (=> d!579663 m!2323747))

(assert (=> b!1892337 m!2323701))

(assert (=> b!1892237 d!579663))

(declare-fun d!579667 () Bool)

(assert (=> d!579667 (= (head!4402 lt!724402) (h!26602 lt!724402))))

(assert (=> b!1892237 d!579667))

(declare-fun b!1892354 () Bool)

(declare-fun res!844756 () Bool)

(declare-fun e!1207971 () Bool)

(assert (=> b!1892354 (=> (not res!844756) (not e!1207971))))

(declare-fun height!1100 (Conc!7058) Int)

(declare-fun ++!5718 (Conc!7058 Conc!7058) Conc!7058)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1892354 (= res!844756 (>= (height!1100 (++!5718 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837))) (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837))))) (max!0 (height!1100 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837)))) (height!1100 (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))))))))

(declare-fun b!1892353 () Bool)

(declare-fun res!844757 () Bool)

(assert (=> b!1892353 (=> (not res!844757) (not e!1207971))))

(assert (=> b!1892353 (= res!844757 (<= (height!1100 (++!5718 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837))) (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837))))) (+ (max!0 (height!1100 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837)))) (height!1100 (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837))))) 1)))))

(declare-fun d!579669 () Bool)

(assert (=> d!579669 e!1207971))

(declare-fun res!844755 () Bool)

(assert (=> d!579669 (=> (not res!844755) (not e!1207971))))

(declare-fun appendAssocInst!520 (Conc!7058 Conc!7058) Bool)

(assert (=> d!579669 (= res!844755 (appendAssocInst!520 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837))) (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))))))

(declare-fun lt!724433 () BalanceConc!13932)

(assert (=> d!579669 (= lt!724433 (BalanceConc!13933 (++!5718 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837))) (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837))))))))

(assert (=> d!579669 (= (++!5715 (charsOf!2316 (apply!5580 v!6342 from!837)) (printRec!4 thiss!13601 v!6342 (+ 1 from!837))) lt!724433)))

(declare-fun b!1892352 () Bool)

(declare-fun res!844754 () Bool)

(assert (=> b!1892352 (=> (not res!844754) (not e!1207971))))

(declare-fun isBalanced!2223 (Conc!7058) Bool)

(assert (=> b!1892352 (= res!844754 (isBalanced!2223 (++!5718 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837))) (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837))))))))

(declare-fun b!1892355 () Bool)

(declare-fun ++!5719 (List!21282 List!21282) List!21282)

(assert (=> b!1892355 (= e!1207971 (= (list!8607 lt!724433) (++!5719 (list!8607 (charsOf!2316 (apply!5580 v!6342 from!837))) (list!8607 (printRec!4 thiss!13601 v!6342 (+ 1 from!837))))))))

(assert (= (and d!579669 res!844755) b!1892352))

(assert (= (and b!1892352 res!844754) b!1892353))

(assert (= (and b!1892353 res!844757) b!1892354))

(assert (= (and b!1892354 res!844756) b!1892355))

(declare-fun m!2323759 () Bool)

(assert (=> b!1892353 m!2323759))

(declare-fun m!2323761 () Bool)

(assert (=> b!1892353 m!2323761))

(declare-fun m!2323763 () Bool)

(assert (=> b!1892353 m!2323763))

(declare-fun m!2323765 () Bool)

(assert (=> b!1892353 m!2323765))

(declare-fun m!2323767 () Bool)

(assert (=> b!1892353 m!2323767))

(assert (=> b!1892353 m!2323761))

(assert (=> b!1892353 m!2323759))

(assert (=> b!1892353 m!2323765))

(declare-fun m!2323769 () Bool)

(assert (=> b!1892355 m!2323769))

(assert (=> b!1892355 m!2323653))

(declare-fun m!2323771 () Bool)

(assert (=> b!1892355 m!2323771))

(assert (=> b!1892355 m!2323641))

(declare-fun m!2323773 () Bool)

(assert (=> b!1892355 m!2323773))

(assert (=> b!1892355 m!2323771))

(assert (=> b!1892355 m!2323773))

(declare-fun m!2323775 () Bool)

(assert (=> b!1892355 m!2323775))

(declare-fun m!2323777 () Bool)

(assert (=> d!579669 m!2323777))

(assert (=> d!579669 m!2323765))

(assert (=> b!1892352 m!2323765))

(assert (=> b!1892352 m!2323765))

(declare-fun m!2323779 () Bool)

(assert (=> b!1892352 m!2323779))

(assert (=> b!1892354 m!2323759))

(assert (=> b!1892354 m!2323761))

(assert (=> b!1892354 m!2323763))

(assert (=> b!1892354 m!2323765))

(assert (=> b!1892354 m!2323767))

(assert (=> b!1892354 m!2323761))

(assert (=> b!1892354 m!2323759))

(assert (=> b!1892354 m!2323765))

(assert (=> b!1892237 d!579669))

(declare-fun d!579675 () Bool)

(declare-fun lt!724481 () BalanceConc!13932)

(assert (=> d!579675 (= (list!8607 lt!724481) (printList!1018 thiss!13601 (dropList!764 v!6342 (+ 1 from!837))))))

(declare-fun e!1207988 () BalanceConc!13932)

(assert (=> d!579675 (= lt!724481 e!1207988)))

(declare-fun c!308779 () Bool)

(assert (=> d!579675 (= c!308779 (>= (+ 1 from!837) (size!16808 v!6342)))))

(declare-fun e!1207989 () Bool)

(assert (=> d!579675 e!1207989))

(declare-fun res!844766 () Bool)

(assert (=> d!579675 (=> (not res!844766) (not e!1207989))))

(assert (=> d!579675 (= res!844766 (>= (+ 1 from!837) 0))))

(assert (=> d!579675 (= (printRec!4 thiss!13601 v!6342 (+ 1 from!837)) lt!724481)))

(declare-fun b!1892380 () Bool)

(assert (=> b!1892380 (= e!1207989 (<= (+ 1 from!837) (size!16808 v!6342)))))

(declare-fun b!1892381 () Bool)

(assert (=> b!1892381 (= e!1207988 (BalanceConc!13933 Empty!7058))))

(declare-fun b!1892382 () Bool)

(assert (=> b!1892382 (= e!1207988 (++!5715 (charsOf!2316 (apply!5580 v!6342 (+ 1 from!837))) (printRec!4 thiss!13601 v!6342 (+ 1 from!837 1))))))

(declare-fun lt!724479 () List!21283)

(assert (=> b!1892382 (= lt!724479 (list!8608 v!6342))))

(declare-fun lt!724484 () Unit!35576)

(assert (=> b!1892382 (= lt!724484 (lemmaDropApply!688 lt!724479 (+ 1 from!837)))))

(assert (=> b!1892382 (= (head!4402 (drop!1055 lt!724479 (+ 1 from!837))) (apply!5581 lt!724479 (+ 1 from!837)))))

(declare-fun lt!724482 () Unit!35576)

(assert (=> b!1892382 (= lt!724482 lt!724484)))

(declare-fun lt!724478 () List!21283)

(assert (=> b!1892382 (= lt!724478 (list!8608 v!6342))))

(declare-fun lt!724480 () Unit!35576)

(assert (=> b!1892382 (= lt!724480 (lemmaDropTail!664 lt!724478 (+ 1 from!837)))))

(assert (=> b!1892382 (= (tail!2928 (drop!1055 lt!724478 (+ 1 from!837))) (drop!1055 lt!724478 (+ 1 from!837 1)))))

(declare-fun lt!724483 () Unit!35576)

(assert (=> b!1892382 (= lt!724483 lt!724480)))

(assert (= (and d!579675 res!844766) b!1892380))

(assert (= (and d!579675 c!308779) b!1892381))

(assert (= (and d!579675 (not c!308779)) b!1892382))

(declare-fun m!2323833 () Bool)

(assert (=> d!579675 m!2323833))

(declare-fun m!2323839 () Bool)

(assert (=> d!579675 m!2323839))

(assert (=> d!579675 m!2323839))

(declare-fun m!2323841 () Bool)

(assert (=> d!579675 m!2323841))

(assert (=> d!579675 m!2323629))

(assert (=> b!1892380 m!2323629))

(declare-fun m!2323843 () Bool)

(assert (=> b!1892382 m!2323843))

(declare-fun m!2323845 () Bool)

(assert (=> b!1892382 m!2323845))

(declare-fun m!2323847 () Bool)

(assert (=> b!1892382 m!2323847))

(declare-fun m!2323849 () Bool)

(assert (=> b!1892382 m!2323849))

(assert (=> b!1892382 m!2323637))

(declare-fun m!2323851 () Bool)

(assert (=> b!1892382 m!2323851))

(declare-fun m!2323853 () Bool)

(assert (=> b!1892382 m!2323853))

(declare-fun m!2323855 () Bool)

(assert (=> b!1892382 m!2323855))

(assert (=> b!1892382 m!2323847))

(declare-fun m!2323857 () Bool)

(assert (=> b!1892382 m!2323857))

(declare-fun m!2323859 () Bool)

(assert (=> b!1892382 m!2323859))

(assert (=> b!1892382 m!2323851))

(declare-fun m!2323861 () Bool)

(assert (=> b!1892382 m!2323861))

(declare-fun m!2323863 () Bool)

(assert (=> b!1892382 m!2323863))

(assert (=> b!1892382 m!2323853))

(assert (=> b!1892382 m!2323855))

(assert (=> b!1892382 m!2323843))

(declare-fun m!2323865 () Bool)

(assert (=> b!1892382 m!2323865))

(assert (=> b!1892237 d!579675))

(declare-fun d!579691 () Bool)

(declare-fun lt!724487 () Token!7072)

(declare-fun contains!3827 (List!21283 Token!7072) Bool)

(assert (=> d!579691 (contains!3827 lt!724398 lt!724487)))

(declare-fun e!1208006 () Token!7072)

(assert (=> d!579691 (= lt!724487 e!1208006)))

(declare-fun c!308785 () Bool)

(assert (=> d!579691 (= c!308785 (= from!837 0))))

(declare-fun e!1208007 () Bool)

(assert (=> d!579691 e!1208007))

(declare-fun res!844772 () Bool)

(assert (=> d!579691 (=> (not res!844772) (not e!1208007))))

(assert (=> d!579691 (= res!844772 (<= 0 from!837))))

(assert (=> d!579691 (= (apply!5581 lt!724398 from!837) lt!724487)))

(declare-fun b!1892409 () Bool)

(assert (=> b!1892409 (= e!1208007 (< from!837 (size!16810 lt!724398)))))

(declare-fun b!1892410 () Bool)

(assert (=> b!1892410 (= e!1208006 (head!4402 lt!724398))))

(declare-fun b!1892411 () Bool)

(assert (=> b!1892411 (= e!1208006 (apply!5581 (tail!2928 lt!724398) (- from!837 1)))))

(assert (= (and d!579691 res!844772) b!1892409))

(assert (= (and d!579691 c!308785) b!1892410))

(assert (= (and d!579691 (not c!308785)) b!1892411))

(declare-fun m!2323873 () Bool)

(assert (=> d!579691 m!2323873))

(assert (=> b!1892409 m!2323701))

(declare-fun m!2323875 () Bool)

(assert (=> b!1892410 m!2323875))

(declare-fun m!2323877 () Bool)

(assert (=> b!1892411 m!2323877))

(assert (=> b!1892411 m!2323877))

(declare-fun m!2323879 () Bool)

(assert (=> b!1892411 m!2323879))

(assert (=> b!1892237 d!579691))

(declare-fun d!579693 () Bool)

(declare-fun list!8612 (Conc!7058) List!21282)

(assert (=> d!579693 (= (list!8607 (++!5715 (charsOf!2316 (apply!5580 v!6342 from!837)) (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))) (list!8612 (c!308728 (++!5715 (charsOf!2316 (apply!5580 v!6342 from!837)) (printRec!4 thiss!13601 v!6342 (+ 1 from!837))))))))

(declare-fun bs!413194 () Bool)

(assert (= bs!413194 d!579693))

(declare-fun m!2323881 () Bool)

(assert (=> bs!413194 m!2323881))

(assert (=> b!1892237 d!579693))

(declare-fun d!579695 () Bool)

(declare-fun lt!724490 () Token!7072)

(assert (=> d!579695 (= lt!724490 (apply!5581 (list!8608 v!6342) from!837))))

(declare-fun apply!5583 (Conc!7059 Int) Token!7072)

(assert (=> d!579695 (= lt!724490 (apply!5583 (c!308730 v!6342) from!837))))

(declare-fun e!1208010 () Bool)

(assert (=> d!579695 e!1208010))

(declare-fun res!844775 () Bool)

(assert (=> d!579695 (=> (not res!844775) (not e!1208010))))

(assert (=> d!579695 (= res!844775 (<= 0 from!837))))

(assert (=> d!579695 (= (apply!5580 v!6342 from!837) lt!724490)))

(declare-fun b!1892414 () Bool)

(assert (=> b!1892414 (= e!1208010 (< from!837 (size!16808 v!6342)))))

(assert (= (and d!579695 res!844775) b!1892414))

(assert (=> d!579695 m!2323637))

(assert (=> d!579695 m!2323637))

(declare-fun m!2323883 () Bool)

(assert (=> d!579695 m!2323883))

(declare-fun m!2323885 () Bool)

(assert (=> d!579695 m!2323885))

(assert (=> b!1892414 m!2323629))

(assert (=> b!1892237 d!579695))

(declare-fun b!1892415 () Bool)

(declare-fun e!1208015 () Bool)

(declare-fun lt!724491 () List!21283)

(declare-fun e!1208011 () Int)

(assert (=> b!1892415 (= e!1208015 (= (size!16810 lt!724491) e!1208011))))

(declare-fun c!308788 () Bool)

(assert (=> b!1892415 (= c!308788 (<= from!837 0))))

(declare-fun b!1892416 () Bool)

(declare-fun e!1208013 () Int)

(assert (=> b!1892416 (= e!1208013 0)))

(declare-fun b!1892417 () Bool)

(declare-fun call!116774 () Int)

(assert (=> b!1892417 (= e!1208013 (- call!116774 from!837))))

(declare-fun d!579697 () Bool)

(assert (=> d!579697 e!1208015))

(declare-fun res!844776 () Bool)

(assert (=> d!579697 (=> (not res!844776) (not e!1208015))))

(assert (=> d!579697 (= res!844776 (= ((_ map implies) (content!3127 lt!724491) (content!3127 lt!724398)) ((as const (InoxSet Token!7072)) true)))))

(declare-fun e!1208012 () List!21283)

(assert (=> d!579697 (= lt!724491 e!1208012)))

(declare-fun c!308787 () Bool)

(assert (=> d!579697 (= c!308787 ((_ is Nil!21201) lt!724398))))

(assert (=> d!579697 (= (drop!1055 lt!724398 from!837) lt!724491)))

(declare-fun b!1892418 () Bool)

(assert (=> b!1892418 (= e!1208012 Nil!21201)))

(declare-fun b!1892419 () Bool)

(declare-fun e!1208014 () List!21283)

(assert (=> b!1892419 (= e!1208012 e!1208014)))

(declare-fun c!308786 () Bool)

(assert (=> b!1892419 (= c!308786 (<= from!837 0))))

(declare-fun bm!116769 () Bool)

(assert (=> bm!116769 (= call!116774 (size!16810 lt!724398))))

(declare-fun b!1892420 () Bool)

(assert (=> b!1892420 (= e!1208014 lt!724398)))

(declare-fun b!1892421 () Bool)

(assert (=> b!1892421 (= e!1208011 call!116774)))

(declare-fun b!1892422 () Bool)

(assert (=> b!1892422 (= e!1208011 e!1208013)))

(declare-fun c!308789 () Bool)

(assert (=> b!1892422 (= c!308789 (>= from!837 call!116774))))

(declare-fun b!1892423 () Bool)

(assert (=> b!1892423 (= e!1208014 (drop!1055 (t!175772 lt!724398) (- from!837 1)))))

(assert (= (and d!579697 c!308787) b!1892418))

(assert (= (and d!579697 (not c!308787)) b!1892419))

(assert (= (and b!1892419 c!308786) b!1892420))

(assert (= (and b!1892419 (not c!308786)) b!1892423))

(assert (= (and d!579697 res!844776) b!1892415))

(assert (= (and b!1892415 c!308788) b!1892421))

(assert (= (and b!1892415 (not c!308788)) b!1892422))

(assert (= (and b!1892422 c!308789) b!1892416))

(assert (= (and b!1892422 (not c!308789)) b!1892417))

(assert (= (or b!1892421 b!1892422 b!1892417) bm!116769))

(declare-fun m!2323887 () Bool)

(assert (=> b!1892415 m!2323887))

(declare-fun m!2323889 () Bool)

(assert (=> d!579697 m!2323889))

(assert (=> d!579697 m!2323733))

(assert (=> bm!116769 m!2323701))

(declare-fun m!2323891 () Bool)

(assert (=> b!1892423 m!2323891))

(assert (=> b!1892237 d!579697))

(declare-fun d!579699 () Bool)

(assert (=> d!579699 (= (list!8608 v!6342) (list!8610 (c!308730 v!6342)))))

(declare-fun bs!413195 () Bool)

(assert (= bs!413195 d!579699))

(assert (=> bs!413195 m!2323703))

(assert (=> b!1892237 d!579699))

(declare-fun d!579701 () Bool)

(assert (=> d!579701 (= (tail!2928 lt!724402) (t!175772 lt!724402))))

(assert (=> b!1892237 d!579701))

(declare-fun d!579703 () Bool)

(declare-fun lt!724494 () BalanceConc!13932)

(assert (=> d!579703 (= (list!8607 lt!724494) (originalCharacters!4567 (apply!5580 v!6342 from!837)))))

(declare-fun dynLambda!10293 (Int TokenValue!3896) BalanceConc!13932)

(assert (=> d!579703 (= lt!724494 (dynLambda!10293 (toChars!5228 (transformation!3760 (rule!5953 (apply!5580 v!6342 from!837)))) (value!118751 (apply!5580 v!6342 from!837))))))

(assert (=> d!579703 (= (charsOf!2316 (apply!5580 v!6342 from!837)) lt!724494)))

(declare-fun b_lambda!62043 () Bool)

(assert (=> (not b_lambda!62043) (not d!579703)))

(declare-fun bs!413196 () Bool)

(assert (= bs!413196 d!579703))

(declare-fun m!2323893 () Bool)

(assert (=> bs!413196 m!2323893))

(declare-fun m!2323895 () Bool)

(assert (=> bs!413196 m!2323895))

(assert (=> b!1892237 d!579703))

(declare-fun d!579705 () Bool)

(declare-fun c!308792 () Bool)

(assert (=> d!579705 (= c!308792 ((_ is Cons!21201) (dropList!764 v!6342 from!837)))))

(declare-fun e!1208018 () List!21282)

(assert (=> d!579705 (= (printList!1018 thiss!13601 (dropList!764 v!6342 from!837)) e!1208018)))

(declare-fun b!1892428 () Bool)

(assert (=> b!1892428 (= e!1208018 (++!5719 (list!8607 (charsOf!2316 (h!26602 (dropList!764 v!6342 from!837)))) (printList!1018 thiss!13601 (t!175772 (dropList!764 v!6342 from!837)))))))

(declare-fun b!1892429 () Bool)

(assert (=> b!1892429 (= e!1208018 Nil!21200)))

(assert (= (and d!579705 c!308792) b!1892428))

(assert (= (and d!579705 (not c!308792)) b!1892429))

(declare-fun m!2323897 () Bool)

(assert (=> b!1892428 m!2323897))

(assert (=> b!1892428 m!2323897))

(declare-fun m!2323899 () Bool)

(assert (=> b!1892428 m!2323899))

(declare-fun m!2323901 () Bool)

(assert (=> b!1892428 m!2323901))

(assert (=> b!1892428 m!2323899))

(assert (=> b!1892428 m!2323901))

(declare-fun m!2323903 () Bool)

(assert (=> b!1892428 m!2323903))

(assert (=> b!1892237 d!579705))

(declare-fun b!1892438 () Bool)

(declare-fun tp!539797 () Bool)

(declare-fun e!1208023 () Bool)

(declare-fun tp!539798 () Bool)

(assert (=> b!1892438 (= e!1208023 (and (inv!28283 (left!17017 (c!308730 v!6342))) tp!539798 (inv!28283 (right!17347 (c!308730 v!6342))) tp!539797))))

(declare-fun b!1892440 () Bool)

(declare-fun e!1208024 () Bool)

(declare-fun tp!539796 () Bool)

(assert (=> b!1892440 (= e!1208024 tp!539796)))

(declare-fun b!1892439 () Bool)

(declare-fun inv!28289 (IArray!14123) Bool)

(assert (=> b!1892439 (= e!1208023 (and (inv!28289 (xs!9949 (c!308730 v!6342))) e!1208024))))

(assert (=> b!1892238 (= tp!539780 (and (inv!28283 (c!308730 v!6342)) e!1208023))))

(assert (= (and b!1892238 ((_ is Node!7059) (c!308730 v!6342))) b!1892438))

(assert (= b!1892439 b!1892440))

(assert (= (and b!1892238 ((_ is Leaf!10402) (c!308730 v!6342))) b!1892439))

(declare-fun m!2323905 () Bool)

(assert (=> b!1892438 m!2323905))

(declare-fun m!2323907 () Bool)

(assert (=> b!1892438 m!2323907))

(declare-fun m!2323909 () Bool)

(assert (=> b!1892439 m!2323909))

(assert (=> b!1892238 m!2323661))

(check-sat (not b!1892325) (not b!1892410) (not b_lambda!62043) (not b!1892380) (not b!1892439) (not d!579653) (not b!1892317) (not d!579645) (not d!579655) (not d!579691) (not d!579699) (not b!1892440) (not d!579663) (not b!1892423) (not d!579669) (not b!1892272) (not d!579657) (not d!579703) (not b!1892354) (not b!1892286) (not b!1892355) (not b!1892274) (not b!1892438) (not d!579693) (not b!1892428) (not d!579641) (not d!579675) (not b!1892409) (not d!579697) (not b!1892411) (not b!1892415) (not d!579695) (not b!1892352) (not b!1892337) (not b!1892238) (not b!1892382) (not b!1892353) (not bm!116768) (not bm!116769) (not b!1892414))
(check-sat)
(get-model)

(declare-fun b!1892553 () Bool)

(declare-fun e!1208091 () Conc!7058)

(declare-fun call!116815 () Conc!7058)

(assert (=> b!1892553 (= e!1208091 call!116815)))

(declare-fun b!1892554 () Bool)

(declare-fun e!1208084 () Bool)

(assert (=> b!1892554 (= e!1208084 (isBalanced!2223 (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))))))

(declare-fun bm!116804 () Bool)

(declare-fun call!116822 () Conc!7058)

(declare-fun call!116814 () Conc!7058)

(assert (=> bm!116804 (= call!116822 call!116814)))

(declare-fun b!1892555 () Bool)

(declare-fun c!308849 () Bool)

(declare-fun call!116809 () Int)

(declare-fun call!116816 () Int)

(assert (=> b!1892555 (= c!308849 (>= call!116809 call!116816))))

(declare-fun e!1208089 () Conc!7058)

(declare-fun e!1208082 () Conc!7058)

(assert (=> b!1892555 (= e!1208089 e!1208082)))

(declare-fun b!1892556 () Bool)

(declare-fun e!1208088 () Conc!7058)

(assert (=> b!1892556 (= e!1208088 call!116822)))

(declare-fun bm!116805 () Bool)

(declare-fun call!116810 () Int)

(declare-fun c!308843 () Bool)

(assert (=> bm!116805 (= call!116810 (height!1100 (ite c!308843 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837))) (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837))))))))

(declare-fun bm!116806 () Bool)

(assert (=> bm!116806 (= call!116816 (height!1100 (ite c!308843 (right!17346 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837)))) (left!17016 (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))))))))

(declare-fun b!1892557 () Bool)

(declare-fun call!116817 () Conc!7058)

(assert (=> b!1892557 (= e!1208082 call!116817)))

(declare-fun b!1892558 () Bool)

(declare-fun res!844798 () Bool)

(declare-fun e!1208087 () Bool)

(assert (=> b!1892558 (=> (not res!844798) (not e!1208087))))

(declare-fun lt!724514 () Conc!7058)

(assert (=> b!1892558 (= res!844798 (isBalanced!2223 lt!724514))))

(declare-fun bm!116807 () Bool)

(declare-fun call!116813 () Conc!7058)

(declare-fun call!116823 () Conc!7058)

(assert (=> bm!116807 (= call!116813 call!116823)))

(declare-fun b!1892559 () Bool)

(declare-fun c!308847 () Bool)

(declare-fun lt!724513 () Int)

(assert (=> b!1892559 (= c!308847 (and (<= (- 1) lt!724513) (<= lt!724513 1)))))

(assert (=> b!1892559 (= lt!724513 (- (height!1100 (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))) (height!1100 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837))))))))

(declare-fun e!1208086 () Conc!7058)

(declare-fun e!1208083 () Conc!7058)

(assert (=> b!1892559 (= e!1208086 e!1208083)))

(declare-fun b!1892560 () Bool)

(declare-fun res!844796 () Bool)

(assert (=> b!1892560 (=> (not res!844796) (not e!1208087))))

(assert (=> b!1892560 (= res!844796 (<= (height!1100 lt!724514) (+ (max!0 (height!1100 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837)))) (height!1100 (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837))))) 1)))))

(declare-fun b!1892561 () Bool)

(assert (=> b!1892561 (= e!1208083 e!1208089)))

(assert (=> b!1892561 (= c!308843 (< lt!724513 (- 1)))))

(declare-fun bm!116808 () Bool)

(declare-fun call!116820 () Conc!7058)

(assert (=> bm!116808 (= call!116820 call!116817)))

(declare-fun bm!116809 () Bool)

(declare-fun call!116821 () Conc!7058)

(assert (=> bm!116809 (= call!116823 call!116821)))

(declare-fun b!1892562 () Bool)

(assert (=> b!1892562 (= e!1208083 call!116821)))

(declare-fun e!1208090 () Conc!7058)

(declare-fun b!1892563 () Bool)

(assert (=> b!1892563 (= e!1208090 (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837))))))

(declare-fun bm!116810 () Bool)

(declare-fun call!116824 () Conc!7058)

(declare-fun c!308848 () Bool)

(assert (=> bm!116810 (= call!116824 (++!5718 (ite c!308843 (ite c!308849 (right!17346 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837)))) (right!17346 (right!17346 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837)))))) (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837)))) (ite c!308843 (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837))) (ite c!308848 (left!17016 (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))) (left!17016 (left!17016 (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))))))))))

(declare-fun bm!116811 () Bool)

(declare-fun call!116818 () Conc!7058)

(assert (=> bm!116811 (= call!116818 call!116822)))

(declare-fun b!1892564 () Bool)

(declare-fun e!1208085 () Conc!7058)

(assert (=> b!1892564 (= e!1208082 e!1208085)))

(declare-fun lt!724516 () Conc!7058)

(declare-fun call!116819 () Conc!7058)

(assert (=> b!1892564 (= lt!724516 call!116819)))

(declare-fun c!308842 () Bool)

(declare-fun call!116811 () Int)

(assert (=> b!1892564 (= c!308842 (= call!116811 (- call!116810 3)))))

(declare-fun bm!116812 () Bool)

(assert (=> bm!116812 (= call!116817 call!116814)))

(declare-fun b!1892565 () Bool)

(assert (=> b!1892565 (= e!1208087 (= (list!8612 lt!724514) (++!5719 (list!8612 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837)))) (list!8612 (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))))))))

(declare-fun b!1892566 () Bool)

(assert (=> b!1892566 (= e!1208085 call!116820)))

(declare-fun b!1892567 () Bool)

(assert (=> b!1892567 (= e!1208085 call!116820)))

(declare-fun b!1892568 () Bool)

(assert (=> b!1892568 (= e!1208086 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837))))))

(declare-fun c!308844 () Bool)

(declare-fun bm!116813 () Bool)

(declare-fun lt!724515 () Conc!7058)

(declare-fun <>!167 (Conc!7058 Conc!7058) Conc!7058)

(assert (=> bm!116813 (= call!116821 (<>!167 (ite c!308847 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837))) (ite c!308843 (ite c!308842 (left!17016 (right!17346 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837))))) (left!17016 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837))))) (ite c!308844 call!116818 lt!724515))) (ite c!308847 (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837))) (ite c!308843 (ite c!308842 lt!724516 (left!17016 (right!17346 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837)))))) (ite c!308844 (right!17346 (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))) call!116818)))))))

(declare-fun call!116812 () Conc!7058)

(declare-fun bm!116814 () Bool)

(assert (=> bm!116814 (= call!116814 (<>!167 (ite c!308843 (ite (or c!308849 c!308842) (left!17016 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837)))) call!116813) (ite c!308848 call!116812 (ite c!308844 lt!724515 (right!17346 (left!17016 (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))))))) (ite c!308843 (ite c!308849 call!116819 (ite c!308842 call!116813 lt!724516)) (ite c!308848 (right!17346 (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))) (ite c!308844 (right!17346 (left!17016 (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837))))) (right!17346 (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))))))))))

(declare-fun b!1892569 () Bool)

(assert (=> b!1892569 (= c!308848 (>= call!116811 call!116816))))

(assert (=> b!1892569 (= e!1208089 e!1208088)))

(declare-fun d!579727 () Bool)

(assert (=> d!579727 e!1208087))

(declare-fun res!844797 () Bool)

(assert (=> d!579727 (=> (not res!844797) (not e!1208087))))

(assert (=> d!579727 (= res!844797 (appendAssocInst!520 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837))) (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))))))

(assert (=> d!579727 (= lt!724514 e!1208090)))

(declare-fun c!308846 () Bool)

(assert (=> d!579727 (= c!308846 (= (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837))) Empty!7058))))

(assert (=> d!579727 e!1208084))

(declare-fun res!844800 () Bool)

(assert (=> d!579727 (=> (not res!844800) (not e!1208084))))

(assert (=> d!579727 (= res!844800 (isBalanced!2223 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837)))))))

(assert (=> d!579727 (= (++!5718 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837))) (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))) lt!724514)))

(declare-fun bm!116815 () Bool)

(assert (=> bm!116815 (= call!116811 (height!1100 (ite c!308843 lt!724516 (right!17346 (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))))))))

(declare-fun b!1892570 () Bool)

(declare-fun res!844799 () Bool)

(assert (=> b!1892570 (=> (not res!844799) (not e!1208087))))

(assert (=> b!1892570 (= res!844799 (>= (height!1100 lt!724514) (max!0 (height!1100 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837)))) (height!1100 (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))))))))

(declare-fun bm!116816 () Bool)

(assert (=> bm!116816 (= call!116815 call!116823)))

(declare-fun bm!116817 () Bool)

(assert (=> bm!116817 (= call!116809 (height!1100 (ite c!308843 (left!17016 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837)))) lt!724515)))))

(declare-fun b!1892571 () Bool)

(assert (=> b!1892571 (= e!1208090 e!1208086)))

(declare-fun c!308845 () Bool)

(assert (=> b!1892571 (= c!308845 (= (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837))) Empty!7058))))

(declare-fun b!1892572 () Bool)

(assert (=> b!1892572 (= e!1208088 e!1208091)))

(assert (=> b!1892572 (= lt!724515 call!116812)))

(assert (=> b!1892572 (= c!308844 (= call!116809 (- call!116810 3)))))

(declare-fun bm!116818 () Bool)

(assert (=> bm!116818 (= call!116812 call!116824)))

(declare-fun b!1892573 () Bool)

(assert (=> b!1892573 (= e!1208091 call!116815)))

(declare-fun bm!116819 () Bool)

(assert (=> bm!116819 (= call!116819 call!116824)))

(assert (= (and d!579727 res!844800) b!1892554))

(assert (= (and d!579727 c!308846) b!1892563))

(assert (= (and d!579727 (not c!308846)) b!1892571))

(assert (= (and b!1892571 c!308845) b!1892568))

(assert (= (and b!1892571 (not c!308845)) b!1892559))

(assert (= (and b!1892559 c!308847) b!1892562))

(assert (= (and b!1892559 (not c!308847)) b!1892561))

(assert (= (and b!1892561 c!308843) b!1892555))

(assert (= (and b!1892561 (not c!308843)) b!1892569))

(assert (= (and b!1892555 c!308849) b!1892557))

(assert (= (and b!1892555 (not c!308849)) b!1892564))

(assert (= (and b!1892564 c!308842) b!1892567))

(assert (= (and b!1892564 (not c!308842)) b!1892566))

(assert (= (or b!1892567 b!1892566) bm!116807))

(assert (= (or b!1892567 b!1892566) bm!116808))

(assert (= (or b!1892557 b!1892564) bm!116819))

(assert (= (or b!1892557 bm!116808) bm!116812))

(assert (= (and b!1892569 c!308848) b!1892556))

(assert (= (and b!1892569 (not c!308848)) b!1892572))

(assert (= (and b!1892572 c!308844) b!1892573))

(assert (= (and b!1892572 (not c!308844)) b!1892553))

(assert (= (or b!1892573 b!1892553) bm!116811))

(assert (= (or b!1892573 b!1892553) bm!116816))

(assert (= (or b!1892556 b!1892572) bm!116818))

(assert (= (or b!1892556 bm!116811) bm!116804))

(assert (= (or b!1892564 b!1892569) bm!116815))

(assert (= (or bm!116812 bm!116804) bm!116814))

(assert (= (or bm!116807 bm!116816) bm!116809))

(assert (= (or bm!116819 bm!116818) bm!116810))

(assert (= (or b!1892564 b!1892572) bm!116805))

(assert (= (or b!1892555 b!1892569) bm!116806))

(assert (= (or b!1892555 b!1892572) bm!116817))

(assert (= (or b!1892562 bm!116809) bm!116813))

(assert (= (and d!579727 res!844797) b!1892558))

(assert (= (and b!1892558 res!844798) b!1892560))

(assert (= (and b!1892560 res!844796) b!1892570))

(assert (= (and b!1892570 res!844799) b!1892565))

(assert (=> b!1892559 m!2323761))

(assert (=> b!1892559 m!2323759))

(declare-fun m!2323959 () Bool)

(assert (=> bm!116814 m!2323959))

(declare-fun m!2323961 () Bool)

(assert (=> b!1892554 m!2323961))

(declare-fun m!2323963 () Bool)

(assert (=> b!1892570 m!2323963))

(assert (=> b!1892570 m!2323759))

(assert (=> b!1892570 m!2323761))

(assert (=> b!1892570 m!2323759))

(assert (=> b!1892570 m!2323761))

(assert (=> b!1892570 m!2323763))

(assert (=> b!1892560 m!2323963))

(assert (=> b!1892560 m!2323759))

(assert (=> b!1892560 m!2323761))

(assert (=> b!1892560 m!2323759))

(assert (=> b!1892560 m!2323761))

(assert (=> b!1892560 m!2323763))

(declare-fun m!2323965 () Bool)

(assert (=> bm!116806 m!2323965))

(declare-fun m!2323967 () Bool)

(assert (=> b!1892565 m!2323967))

(declare-fun m!2323969 () Bool)

(assert (=> b!1892565 m!2323969))

(declare-fun m!2323971 () Bool)

(assert (=> b!1892565 m!2323971))

(assert (=> b!1892565 m!2323969))

(assert (=> b!1892565 m!2323971))

(declare-fun m!2323973 () Bool)

(assert (=> b!1892565 m!2323973))

(declare-fun m!2323975 () Bool)

(assert (=> bm!116815 m!2323975))

(declare-fun m!2323977 () Bool)

(assert (=> bm!116813 m!2323977))

(declare-fun m!2323979 () Bool)

(assert (=> b!1892558 m!2323979))

(assert (=> d!579727 m!2323777))

(declare-fun m!2323981 () Bool)

(assert (=> d!579727 m!2323981))

(declare-fun m!2323983 () Bool)

(assert (=> bm!116817 m!2323983))

(declare-fun m!2323985 () Bool)

(assert (=> bm!116805 m!2323985))

(declare-fun m!2323987 () Bool)

(assert (=> bm!116810 m!2323987))

(assert (=> b!1892353 d!579727))

(declare-fun d!579733 () Bool)

(assert (=> d!579733 (= (height!1100 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837)))) (ite ((_ is Empty!7058) (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837)))) 0 (ite ((_ is Leaf!10401) (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837)))) 1 (cheight!7269 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837)))))))))

(assert (=> b!1892353 d!579733))

(declare-fun d!579735 () Bool)

(assert (=> d!579735 (= (height!1100 (++!5718 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837))) (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837))))) (ite ((_ is Empty!7058) (++!5718 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837))) (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837))))) 0 (ite ((_ is Leaf!10401) (++!5718 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837))) (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837))))) 1 (cheight!7269 (++!5718 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837))) (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837))))))))))

(assert (=> b!1892353 d!579735))

(declare-fun d!579737 () Bool)

(assert (=> d!579737 (= (height!1100 (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))) (ite ((_ is Empty!7058) (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))) 0 (ite ((_ is Leaf!10401) (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))) 1 (cheight!7269 (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))))))))

(assert (=> b!1892353 d!579737))

(declare-fun d!579739 () Bool)

(assert (=> d!579739 (= (max!0 (height!1100 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837)))) (height!1100 (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837))))) (ite (< (height!1100 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837)))) (height!1100 (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837))))) (height!1100 (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))) (height!1100 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837))))))))

(assert (=> b!1892353 d!579739))

(assert (=> b!1892414 d!579645))

(declare-fun d!579741 () Bool)

(assert (=> d!579741 (= (list!8607 lt!724433) (list!8612 (c!308728 lt!724433)))))

(declare-fun bs!413198 () Bool)

(assert (= bs!413198 d!579741))

(declare-fun m!2323989 () Bool)

(assert (=> bs!413198 m!2323989))

(assert (=> b!1892355 d!579741))

(declare-fun d!579743 () Bool)

(declare-fun e!1208109 () Bool)

(assert (=> d!579743 e!1208109))

(declare-fun res!844806 () Bool)

(assert (=> d!579743 (=> (not res!844806) (not e!1208109))))

(declare-fun lt!724523 () List!21282)

(declare-fun content!3128 (List!21282) (InoxSet C!10516))

(assert (=> d!579743 (= res!844806 (= (content!3128 lt!724523) ((_ map or) (content!3128 (list!8607 (charsOf!2316 (apply!5580 v!6342 from!837)))) (content!3128 (list!8607 (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))))))))

(declare-fun e!1208108 () List!21282)

(assert (=> d!579743 (= lt!724523 e!1208108)))

(declare-fun c!308864 () Bool)

(assert (=> d!579743 (= c!308864 ((_ is Nil!21200) (list!8607 (charsOf!2316 (apply!5580 v!6342 from!837)))))))

(assert (=> d!579743 (= (++!5719 (list!8607 (charsOf!2316 (apply!5580 v!6342 from!837))) (list!8607 (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))) lt!724523)))

(declare-fun b!1892609 () Bool)

(assert (=> b!1892609 (= e!1208109 (or (not (= (list!8607 (printRec!4 thiss!13601 v!6342 (+ 1 from!837))) Nil!21200)) (= lt!724523 (list!8607 (charsOf!2316 (apply!5580 v!6342 from!837))))))))

(declare-fun b!1892607 () Bool)

(assert (=> b!1892607 (= e!1208108 (Cons!21200 (h!26601 (list!8607 (charsOf!2316 (apply!5580 v!6342 from!837)))) (++!5719 (t!175771 (list!8607 (charsOf!2316 (apply!5580 v!6342 from!837)))) (list!8607 (printRec!4 thiss!13601 v!6342 (+ 1 from!837))))))))

(declare-fun b!1892606 () Bool)

(assert (=> b!1892606 (= e!1208108 (list!8607 (printRec!4 thiss!13601 v!6342 (+ 1 from!837))))))

(declare-fun b!1892608 () Bool)

(declare-fun res!844805 () Bool)

(assert (=> b!1892608 (=> (not res!844805) (not e!1208109))))

(declare-fun size!16813 (List!21282) Int)

(assert (=> b!1892608 (= res!844805 (= (size!16813 lt!724523) (+ (size!16813 (list!8607 (charsOf!2316 (apply!5580 v!6342 from!837)))) (size!16813 (list!8607 (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))))))))

(assert (= (and d!579743 c!308864) b!1892606))

(assert (= (and d!579743 (not c!308864)) b!1892607))

(assert (= (and d!579743 res!844806) b!1892608))

(assert (= (and b!1892608 res!844805) b!1892609))

(declare-fun m!2323991 () Bool)

(assert (=> d!579743 m!2323991))

(assert (=> d!579743 m!2323771))

(declare-fun m!2323993 () Bool)

(assert (=> d!579743 m!2323993))

(assert (=> d!579743 m!2323773))

(declare-fun m!2323995 () Bool)

(assert (=> d!579743 m!2323995))

(assert (=> b!1892607 m!2323773))

(declare-fun m!2323997 () Bool)

(assert (=> b!1892607 m!2323997))

(declare-fun m!2323999 () Bool)

(assert (=> b!1892608 m!2323999))

(assert (=> b!1892608 m!2323771))

(declare-fun m!2324001 () Bool)

(assert (=> b!1892608 m!2324001))

(assert (=> b!1892608 m!2323773))

(declare-fun m!2324003 () Bool)

(assert (=> b!1892608 m!2324003))

(assert (=> b!1892355 d!579743))

(declare-fun d!579745 () Bool)

(assert (=> d!579745 (= (list!8607 (charsOf!2316 (apply!5580 v!6342 from!837))) (list!8612 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837)))))))

(declare-fun bs!413199 () Bool)

(assert (= bs!413199 d!579745))

(assert (=> bs!413199 m!2323969))

(assert (=> b!1892355 d!579745))

(declare-fun d!579747 () Bool)

(assert (=> d!579747 (= (list!8607 (printRec!4 thiss!13601 v!6342 (+ 1 from!837))) (list!8612 (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))))))

(declare-fun bs!413200 () Bool)

(assert (= bs!413200 d!579747))

(assert (=> bs!413200 m!2323971))

(assert (=> b!1892355 d!579747))

(assert (=> b!1892354 d!579727))

(assert (=> b!1892354 d!579733))

(assert (=> b!1892354 d!579735))

(assert (=> b!1892354 d!579737))

(assert (=> b!1892354 d!579739))

(declare-fun b!1892622 () Bool)

(declare-fun e!1208115 () Bool)

(declare-fun isEmpty!13013 (Conc!7058) Bool)

(assert (=> b!1892622 (= e!1208115 (not (isEmpty!13013 (right!17346 (++!5718 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837))) (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837))))))))))

(declare-fun b!1892623 () Bool)

(declare-fun res!844819 () Bool)

(assert (=> b!1892623 (=> (not res!844819) (not e!1208115))))

(assert (=> b!1892623 (= res!844819 (not (isEmpty!13013 (left!17016 (++!5718 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837))) (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837))))))))))

(declare-fun b!1892624 () Bool)

(declare-fun res!844822 () Bool)

(assert (=> b!1892624 (=> (not res!844822) (not e!1208115))))

(assert (=> b!1892624 (= res!844822 (isBalanced!2223 (right!17346 (++!5718 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837))) (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))))))))

(declare-fun d!579749 () Bool)

(declare-fun res!844823 () Bool)

(declare-fun e!1208114 () Bool)

(assert (=> d!579749 (=> res!844823 e!1208114)))

(assert (=> d!579749 (= res!844823 (not ((_ is Node!7058) (++!5718 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837))) (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))))))))

(assert (=> d!579749 (= (isBalanced!2223 (++!5718 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837))) (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837))))) e!1208114)))

(declare-fun b!1892625 () Bool)

(declare-fun res!844821 () Bool)

(assert (=> b!1892625 (=> (not res!844821) (not e!1208115))))

(assert (=> b!1892625 (= res!844821 (isBalanced!2223 (left!17016 (++!5718 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837))) (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))))))))

(declare-fun b!1892626 () Bool)

(assert (=> b!1892626 (= e!1208114 e!1208115)))

(declare-fun res!844820 () Bool)

(assert (=> b!1892626 (=> (not res!844820) (not e!1208115))))

(assert (=> b!1892626 (= res!844820 (<= (- 1) (- (height!1100 (left!17016 (++!5718 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837))) (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))))) (height!1100 (right!17346 (++!5718 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837))) (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))))))))))

(declare-fun b!1892627 () Bool)

(declare-fun res!844824 () Bool)

(assert (=> b!1892627 (=> (not res!844824) (not e!1208115))))

(assert (=> b!1892627 (= res!844824 (<= (- (height!1100 (left!17016 (++!5718 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837))) (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))))) (height!1100 (right!17346 (++!5718 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837))) (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837))))))) 1))))

(assert (= (and d!579749 (not res!844823)) b!1892626))

(assert (= (and b!1892626 res!844820) b!1892627))

(assert (= (and b!1892627 res!844824) b!1892625))

(assert (= (and b!1892625 res!844821) b!1892624))

(assert (= (and b!1892624 res!844822) b!1892623))

(assert (= (and b!1892623 res!844819) b!1892622))

(declare-fun m!2324005 () Bool)

(assert (=> b!1892626 m!2324005))

(declare-fun m!2324007 () Bool)

(assert (=> b!1892626 m!2324007))

(declare-fun m!2324009 () Bool)

(assert (=> b!1892625 m!2324009))

(assert (=> b!1892627 m!2324005))

(assert (=> b!1892627 m!2324007))

(declare-fun m!2324011 () Bool)

(assert (=> b!1892623 m!2324011))

(declare-fun m!2324013 () Bool)

(assert (=> b!1892624 m!2324013))

(declare-fun m!2324015 () Bool)

(assert (=> b!1892622 m!2324015))

(assert (=> b!1892352 d!579749))

(assert (=> b!1892352 d!579727))

(declare-fun e!1208123 () List!21282)

(declare-fun b!1892647 () Bool)

(assert (=> b!1892647 (= e!1208123 (++!5719 (list!8612 (left!17016 (c!308728 (++!5715 (charsOf!2316 (apply!5580 v!6342 from!837)) (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))))) (list!8612 (right!17346 (c!308728 (++!5715 (charsOf!2316 (apply!5580 v!6342 from!837)) (printRec!4 thiss!13601 v!6342 (+ 1 from!837))))))))))

(declare-fun b!1892646 () Bool)

(declare-fun list!8614 (IArray!14121) List!21282)

(assert (=> b!1892646 (= e!1208123 (list!8614 (xs!9948 (c!308728 (++!5715 (charsOf!2316 (apply!5580 v!6342 from!837)) (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))))))))

(declare-fun c!308869 () Bool)

(declare-fun d!579751 () Bool)

(assert (=> d!579751 (= c!308869 ((_ is Empty!7058) (c!308728 (++!5715 (charsOf!2316 (apply!5580 v!6342 from!837)) (printRec!4 thiss!13601 v!6342 (+ 1 from!837))))))))

(declare-fun e!1208122 () List!21282)

(assert (=> d!579751 (= (list!8612 (c!308728 (++!5715 (charsOf!2316 (apply!5580 v!6342 from!837)) (printRec!4 thiss!13601 v!6342 (+ 1 from!837))))) e!1208122)))

(declare-fun b!1892644 () Bool)

(assert (=> b!1892644 (= e!1208122 Nil!21200)))

(declare-fun b!1892645 () Bool)

(assert (=> b!1892645 (= e!1208122 e!1208123)))

(declare-fun c!308870 () Bool)

(assert (=> b!1892645 (= c!308870 ((_ is Leaf!10401) (c!308728 (++!5715 (charsOf!2316 (apply!5580 v!6342 from!837)) (printRec!4 thiss!13601 v!6342 (+ 1 from!837))))))))

(assert (= (and d!579751 c!308869) b!1892644))

(assert (= (and d!579751 (not c!308869)) b!1892645))

(assert (= (and b!1892645 c!308870) b!1892646))

(assert (= (and b!1892645 (not c!308870)) b!1892647))

(declare-fun m!2324017 () Bool)

(assert (=> b!1892647 m!2324017))

(declare-fun m!2324019 () Bool)

(assert (=> b!1892647 m!2324019))

(assert (=> b!1892647 m!2324017))

(assert (=> b!1892647 m!2324019))

(declare-fun m!2324021 () Bool)

(assert (=> b!1892647 m!2324021))

(declare-fun m!2324023 () Bool)

(assert (=> b!1892646 m!2324023))

(assert (=> d!579693 d!579751))

(declare-fun d!579753 () Bool)

(declare-fun lt!724526 () Int)

(assert (=> d!579753 (>= lt!724526 0)))

(declare-fun e!1208126 () Int)

(assert (=> d!579753 (= lt!724526 e!1208126)))

(declare-fun c!308873 () Bool)

(assert (=> d!579753 (= c!308873 ((_ is Nil!21201) lt!724491))))

(assert (=> d!579753 (= (size!16810 lt!724491) lt!724526)))

(declare-fun b!1892652 () Bool)

(assert (=> b!1892652 (= e!1208126 0)))

(declare-fun b!1892653 () Bool)

(assert (=> b!1892653 (= e!1208126 (+ 1 (size!16810 (t!175772 lt!724491))))))

(assert (= (and d!579753 c!308873) b!1892652))

(assert (= (and d!579753 (not c!308873)) b!1892653))

(declare-fun m!2324025 () Bool)

(assert (=> b!1892653 m!2324025))

(assert (=> b!1892415 d!579753))

(declare-fun d!579755 () Bool)

(declare-fun lt!724527 () Int)

(assert (=> d!579755 (>= lt!724527 0)))

(declare-fun e!1208127 () Int)

(assert (=> d!579755 (= lt!724527 e!1208127)))

(declare-fun c!308874 () Bool)

(assert (=> d!579755 (= c!308874 ((_ is Nil!21201) lt!724418))))

(assert (=> d!579755 (= (size!16810 lt!724418) lt!724527)))

(declare-fun b!1892654 () Bool)

(assert (=> b!1892654 (= e!1208127 0)))

(declare-fun b!1892655 () Bool)

(assert (=> b!1892655 (= e!1208127 (+ 1 (size!16810 (t!175772 lt!724418))))))

(assert (= (and d!579755 c!308874) b!1892654))

(assert (= (and d!579755 (not c!308874)) b!1892655))

(declare-fun m!2324027 () Bool)

(assert (=> b!1892655 m!2324027))

(assert (=> b!1892317 d!579755))

(declare-fun d!579757 () Bool)

(assert (=> d!579757 (= (list!8607 lt!724494) (list!8612 (c!308728 lt!724494)))))

(declare-fun bs!413201 () Bool)

(assert (= bs!413201 d!579757))

(declare-fun m!2324029 () Bool)

(assert (=> bs!413201 m!2324029))

(assert (=> d!579703 d!579757))

(assert (=> b!1892238 d!579643))

(declare-fun d!579759 () Bool)

(declare-fun res!844839 () Bool)

(declare-fun e!1208130 () Bool)

(assert (=> d!579759 (=> (not res!844839) (not e!1208130))))

(assert (=> d!579759 (= res!844839 (= (csize!14348 (c!308730 v!6342)) (+ (size!16811 (left!17017 (c!308730 v!6342))) (size!16811 (right!17347 (c!308730 v!6342))))))))

(assert (=> d!579759 (= (inv!28284 (c!308730 v!6342)) e!1208130)))

(declare-fun b!1892662 () Bool)

(declare-fun res!844840 () Bool)

(assert (=> b!1892662 (=> (not res!844840) (not e!1208130))))

(assert (=> b!1892662 (= res!844840 (and (not (= (left!17017 (c!308730 v!6342)) Empty!7059)) (not (= (right!17347 (c!308730 v!6342)) Empty!7059))))))

(declare-fun b!1892663 () Bool)

(declare-fun res!844841 () Bool)

(assert (=> b!1892663 (=> (not res!844841) (not e!1208130))))

(declare-fun height!1101 (Conc!7059) Int)

(assert (=> b!1892663 (= res!844841 (= (cheight!7270 (c!308730 v!6342)) (+ (max!0 (height!1101 (left!17017 (c!308730 v!6342))) (height!1101 (right!17347 (c!308730 v!6342)))) 1)))))

(declare-fun b!1892664 () Bool)

(assert (=> b!1892664 (= e!1208130 (<= 0 (cheight!7270 (c!308730 v!6342))))))

(assert (= (and d!579759 res!844839) b!1892662))

(assert (= (and b!1892662 res!844840) b!1892663))

(assert (= (and b!1892663 res!844841) b!1892664))

(declare-fun m!2324031 () Bool)

(assert (=> d!579759 m!2324031))

(declare-fun m!2324033 () Bool)

(assert (=> d!579759 m!2324033))

(declare-fun m!2324035 () Bool)

(assert (=> b!1892663 m!2324035))

(declare-fun m!2324037 () Bool)

(assert (=> b!1892663 m!2324037))

(assert (=> b!1892663 m!2324035))

(assert (=> b!1892663 m!2324037))

(declare-fun m!2324039 () Bool)

(assert (=> b!1892663 m!2324039))

(assert (=> b!1892272 d!579759))

(declare-fun d!579761 () Bool)

(declare-fun lt!724530 () Bool)

(assert (=> d!579761 (= lt!724530 (select (content!3127 lt!724398) lt!724487))))

(declare-fun e!1208135 () Bool)

(assert (=> d!579761 (= lt!724530 e!1208135)))

(declare-fun res!844847 () Bool)

(assert (=> d!579761 (=> (not res!844847) (not e!1208135))))

(assert (=> d!579761 (= res!844847 ((_ is Cons!21201) lt!724398))))

(assert (=> d!579761 (= (contains!3827 lt!724398 lt!724487) lt!724530)))

(declare-fun b!1892669 () Bool)

(declare-fun e!1208136 () Bool)

(assert (=> b!1892669 (= e!1208135 e!1208136)))

(declare-fun res!844846 () Bool)

(assert (=> b!1892669 (=> res!844846 e!1208136)))

(assert (=> b!1892669 (= res!844846 (= (h!26602 lt!724398) lt!724487))))

(declare-fun b!1892670 () Bool)

(assert (=> b!1892670 (= e!1208136 (contains!3827 (t!175772 lt!724398) lt!724487))))

(assert (= (and d!579761 res!844847) b!1892669))

(assert (= (and b!1892669 (not res!844846)) b!1892670))

(assert (=> d!579761 m!2323733))

(declare-fun m!2324041 () Bool)

(assert (=> d!579761 m!2324041))

(declare-fun m!2324043 () Bool)

(assert (=> b!1892670 m!2324043))

(assert (=> d!579691 d!579761))

(declare-fun d!579763 () Bool)

(declare-fun lt!724531 () Token!7072)

(assert (=> d!579763 (contains!3827 (list!8608 v!6342) lt!724531)))

(declare-fun e!1208137 () Token!7072)

(assert (=> d!579763 (= lt!724531 e!1208137)))

(declare-fun c!308875 () Bool)

(assert (=> d!579763 (= c!308875 (= from!837 0))))

(declare-fun e!1208138 () Bool)

(assert (=> d!579763 e!1208138))

(declare-fun res!844848 () Bool)

(assert (=> d!579763 (=> (not res!844848) (not e!1208138))))

(assert (=> d!579763 (= res!844848 (<= 0 from!837))))

(assert (=> d!579763 (= (apply!5581 (list!8608 v!6342) from!837) lt!724531)))

(declare-fun b!1892671 () Bool)

(assert (=> b!1892671 (= e!1208138 (< from!837 (size!16810 (list!8608 v!6342))))))

(declare-fun b!1892672 () Bool)

(assert (=> b!1892672 (= e!1208137 (head!4402 (list!8608 v!6342)))))

(declare-fun b!1892673 () Bool)

(assert (=> b!1892673 (= e!1208137 (apply!5581 (tail!2928 (list!8608 v!6342)) (- from!837 1)))))

(assert (= (and d!579763 res!844848) b!1892671))

(assert (= (and d!579763 c!308875) b!1892672))

(assert (= (and d!579763 (not c!308875)) b!1892673))

(assert (=> d!579763 m!2323637))

(declare-fun m!2324045 () Bool)

(assert (=> d!579763 m!2324045))

(assert (=> b!1892671 m!2323637))

(assert (=> b!1892671 m!2323691))

(assert (=> b!1892672 m!2323637))

(declare-fun m!2324047 () Bool)

(assert (=> b!1892672 m!2324047))

(assert (=> b!1892673 m!2323637))

(declare-fun m!2324049 () Bool)

(assert (=> b!1892673 m!2324049))

(assert (=> b!1892673 m!2324049))

(declare-fun m!2324051 () Bool)

(assert (=> b!1892673 m!2324051))

(assert (=> d!579695 d!579763))

(assert (=> d!579695 d!579699))

(declare-fun b!1892709 () Bool)

(declare-fun e!1208160 () Int)

(assert (=> b!1892709 (= e!1208160 (- from!837 (size!16811 (left!17017 (c!308730 v!6342)))))))

(declare-fun b!1892710 () Bool)

(declare-fun e!1208159 () Token!7072)

(declare-fun e!1208157 () Token!7072)

(assert (=> b!1892710 (= e!1208159 e!1208157)))

(declare-fun lt!724540 () Bool)

(declare-fun appendIndex!235 (List!21283 List!21283 Int) Bool)

(assert (=> b!1892710 (= lt!724540 (appendIndex!235 (list!8610 (left!17017 (c!308730 v!6342))) (list!8610 (right!17347 (c!308730 v!6342))) from!837))))

(declare-fun c!308890 () Bool)

(assert (=> b!1892710 (= c!308890 (< from!837 (size!16811 (left!17017 (c!308730 v!6342)))))))

(declare-fun b!1892711 () Bool)

(declare-fun call!116875 () Token!7072)

(assert (=> b!1892711 (= e!1208157 call!116875)))

(declare-fun bm!116870 () Bool)

(declare-fun c!308891 () Bool)

(assert (=> bm!116870 (= c!308891 c!308890)))

(assert (=> bm!116870 (= call!116875 (apply!5583 (ite c!308890 (left!17017 (c!308730 v!6342)) (right!17347 (c!308730 v!6342))) e!1208160))))

(declare-fun d!579765 () Bool)

(declare-fun lt!724541 () Token!7072)

(assert (=> d!579765 (= lt!724541 (apply!5581 (list!8610 (c!308730 v!6342)) from!837))))

(assert (=> d!579765 (= lt!724541 e!1208159)))

(declare-fun c!308892 () Bool)

(assert (=> d!579765 (= c!308892 ((_ is Leaf!10402) (c!308730 v!6342)))))

(declare-fun e!1208158 () Bool)

(assert (=> d!579765 e!1208158))

(declare-fun res!844856 () Bool)

(assert (=> d!579765 (=> (not res!844856) (not e!1208158))))

(assert (=> d!579765 (= res!844856 (<= 0 from!837))))

(assert (=> d!579765 (= (apply!5583 (c!308730 v!6342) from!837) lt!724541)))

(declare-fun b!1892712 () Bool)

(declare-fun apply!5584 (IArray!14123 Int) Token!7072)

(assert (=> b!1892712 (= e!1208159 (apply!5584 (xs!9949 (c!308730 v!6342)) from!837))))

(declare-fun b!1892713 () Bool)

(assert (=> b!1892713 (= e!1208160 from!837)))

(declare-fun b!1892714 () Bool)

(assert (=> b!1892714 (= e!1208157 call!116875)))

(declare-fun b!1892715 () Bool)

(assert (=> b!1892715 (= e!1208158 (< from!837 (size!16811 (c!308730 v!6342))))))

(assert (= (and d!579765 res!844856) b!1892715))

(assert (= (and d!579765 c!308892) b!1892712))

(assert (= (and d!579765 (not c!308892)) b!1892710))

(assert (= (and b!1892710 c!308890) b!1892714))

(assert (= (and b!1892710 (not c!308890)) b!1892711))

(assert (= (or b!1892714 b!1892711) bm!116870))

(assert (= (and bm!116870 c!308891) b!1892713))

(assert (= (and bm!116870 (not c!308891)) b!1892709))

(declare-fun m!2324085 () Bool)

(assert (=> b!1892710 m!2324085))

(declare-fun m!2324089 () Bool)

(assert (=> b!1892710 m!2324089))

(assert (=> b!1892710 m!2324085))

(assert (=> b!1892710 m!2324089))

(declare-fun m!2324093 () Bool)

(assert (=> b!1892710 m!2324093))

(assert (=> b!1892710 m!2324031))

(assert (=> b!1892715 m!2323693))

(declare-fun m!2324095 () Bool)

(assert (=> bm!116870 m!2324095))

(assert (=> d!579765 m!2323703))

(assert (=> d!579765 m!2323703))

(declare-fun m!2324097 () Bool)

(assert (=> d!579765 m!2324097))

(assert (=> b!1892709 m!2324031))

(declare-fun m!2324099 () Bool)

(assert (=> b!1892712 m!2324099))

(assert (=> d!579695 d!579765))

(declare-fun d!579781 () Bool)

(declare-fun lt!724543 () Int)

(assert (=> d!579781 (>= lt!724543 0)))

(declare-fun e!1208166 () Int)

(assert (=> d!579781 (= lt!724543 e!1208166)))

(declare-fun c!308897 () Bool)

(assert (=> d!579781 (= c!308897 ((_ is Nil!21201) lt!724398))))

(assert (=> d!579781 (= (size!16810 lt!724398) lt!724543)))

(declare-fun b!1892725 () Bool)

(assert (=> b!1892725 (= e!1208166 0)))

(declare-fun b!1892726 () Bool)

(assert (=> b!1892726 (= e!1208166 (+ 1 (size!16810 (t!175772 lt!724398))))))

(assert (= (and d!579781 c!308897) b!1892725))

(assert (= (and d!579781 (not c!308897)) b!1892726))

(declare-fun m!2324101 () Bool)

(assert (=> b!1892726 m!2324101))

(assert (=> b!1892286 d!579781))

(declare-fun d!579783 () Bool)

(assert (=> d!579783 (= (head!4402 (drop!1055 lt!724398 from!837)) (h!26602 (drop!1055 lt!724398 from!837)))))

(assert (=> d!579663 d!579783))

(assert (=> d!579663 d!579697))

(assert (=> d!579663 d!579691))

(declare-fun d!579785 () Bool)

(assert (=> d!579785 (= (head!4402 (drop!1055 lt!724398 from!837)) (apply!5581 lt!724398 from!837))))

(assert (=> d!579785 true))

(declare-fun _$27!718 () Unit!35576)

(assert (=> d!579785 (= (choose!11825 lt!724398 from!837) _$27!718)))

(declare-fun bs!413204 () Bool)

(assert (= bs!413204 d!579785))

(assert (=> bs!413204 m!2323651))

(assert (=> bs!413204 m!2323651))

(assert (=> bs!413204 m!2323745))

(assert (=> bs!413204 m!2323631))

(assert (=> d!579663 d!579785))

(declare-fun b!1892775 () Bool)

(declare-fun e!1208201 () Bool)

(declare-fun e!1208200 () Bool)

(assert (=> b!1892775 (= e!1208201 e!1208200)))

(declare-fun res!844906 () Bool)

(assert (=> b!1892775 (=> res!844906 e!1208200)))

(assert (=> b!1892775 (= res!844906 (not ((_ is Node!7058) (left!17016 (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))))))))

(declare-fun b!1892776 () Bool)

(declare-fun e!1208199 () Bool)

(declare-fun e!1208205 () Bool)

(assert (=> b!1892776 (= e!1208199 e!1208205)))

(declare-fun res!844908 () Bool)

(assert (=> b!1892776 (=> (not res!844908) (not e!1208205))))

(declare-fun appendAssoc!129 (List!21282 List!21282 List!21282) Bool)

(assert (=> b!1892776 (= res!844908 (appendAssoc!129 (list!8612 (left!17016 (right!17346 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837)))))) (list!8612 (right!17346 (right!17346 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837)))))) (list!8612 (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837))))))))

(declare-fun b!1892777 () Bool)

(declare-fun e!1208204 () Bool)

(declare-fun e!1208197 () Bool)

(assert (=> b!1892777 (= e!1208204 e!1208197)))

(declare-fun res!844900 () Bool)

(assert (=> b!1892777 (=> (not res!844900) (not e!1208197))))

(assert (=> b!1892777 (= res!844900 (appendAssoc!129 (list!8612 (left!17016 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837))))) (list!8612 (right!17346 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837))))) (list!8612 (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837))))))))

(declare-fun b!1892779 () Bool)

(declare-fun e!1208203 () Bool)

(declare-fun e!1208202 () Bool)

(assert (=> b!1892779 (= e!1208203 e!1208202)))

(declare-fun res!844901 () Bool)

(assert (=> b!1892779 (=> res!844901 e!1208202)))

(assert (=> b!1892779 (= res!844901 (not ((_ is Node!7058) (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837))))))))

(declare-fun b!1892780 () Bool)

(assert (=> b!1892780 (= e!1208197 e!1208199)))

(declare-fun res!844907 () Bool)

(assert (=> b!1892780 (=> res!844907 e!1208199)))

(assert (=> b!1892780 (= res!844907 (not ((_ is Node!7058) (right!17346 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837)))))))))

(declare-fun b!1892781 () Bool)

(declare-fun e!1208198 () Bool)

(assert (=> b!1892781 (= e!1208198 (appendAssoc!129 (++!5719 (list!8612 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837)))) (list!8612 (left!17016 (left!17016 (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837))))))) (list!8612 (right!17346 (left!17016 (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))))) (list!8612 (right!17346 (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))))))))

(declare-fun d!579791 () Bool)

(assert (=> d!579791 e!1208203))

(declare-fun res!844904 () Bool)

(assert (=> d!579791 (=> (not res!844904) (not e!1208203))))

(assert (=> d!579791 (= res!844904 e!1208204)))

(declare-fun res!844903 () Bool)

(assert (=> d!579791 (=> res!844903 e!1208204)))

(assert (=> d!579791 (= res!844903 (not ((_ is Node!7058) (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837))))))))

(assert (=> d!579791 (= (appendAssocInst!520 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837))) (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))) true)))

(declare-fun b!1892778 () Bool)

(assert (=> b!1892778 (= e!1208205 (appendAssoc!129 (list!8612 (left!17016 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837))))) (list!8612 (left!17016 (right!17346 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837)))))) (++!5719 (list!8612 (right!17346 (right!17346 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837)))))) (list!8612 (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))))))))

(declare-fun b!1892782 () Bool)

(assert (=> b!1892782 (= e!1208202 e!1208201)))

(declare-fun res!844905 () Bool)

(assert (=> b!1892782 (=> (not res!844905) (not e!1208201))))

(assert (=> b!1892782 (= res!844905 (appendAssoc!129 (list!8612 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837)))) (list!8612 (left!17016 (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837))))) (list!8612 (right!17346 (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))))))))

(declare-fun b!1892783 () Bool)

(assert (=> b!1892783 (= e!1208200 e!1208198)))

(declare-fun res!844902 () Bool)

(assert (=> b!1892783 (=> (not res!844902) (not e!1208198))))

(assert (=> b!1892783 (= res!844902 (appendAssoc!129 (list!8612 (c!308728 (charsOf!2316 (apply!5580 v!6342 from!837)))) (list!8612 (left!17016 (left!17016 (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837)))))) (list!8612 (right!17346 (left!17016 (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837))))))))))

(assert (= (and d!579791 (not res!844903)) b!1892777))

(assert (= (and b!1892777 res!844900) b!1892780))

(assert (= (and b!1892780 (not res!844907)) b!1892776))

(assert (= (and b!1892776 res!844908) b!1892778))

(assert (= (and d!579791 res!844904) b!1892779))

(assert (= (and b!1892779 (not res!844901)) b!1892782))

(assert (= (and b!1892782 res!844905) b!1892775))

(assert (= (and b!1892775 (not res!844906)) b!1892783))

(assert (= (and b!1892783 res!844902) b!1892781))

(declare-fun m!2324131 () Bool)

(assert (=> b!1892777 m!2324131))

(declare-fun m!2324133 () Bool)

(assert (=> b!1892777 m!2324133))

(assert (=> b!1892777 m!2323971))

(assert (=> b!1892777 m!2324131))

(assert (=> b!1892777 m!2324133))

(assert (=> b!1892777 m!2323971))

(declare-fun m!2324135 () Bool)

(assert (=> b!1892777 m!2324135))

(assert (=> b!1892782 m!2323969))

(declare-fun m!2324137 () Bool)

(assert (=> b!1892782 m!2324137))

(declare-fun m!2324139 () Bool)

(assert (=> b!1892782 m!2324139))

(assert (=> b!1892782 m!2323969))

(assert (=> b!1892782 m!2324137))

(assert (=> b!1892782 m!2324139))

(declare-fun m!2324141 () Bool)

(assert (=> b!1892782 m!2324141))

(assert (=> b!1892783 m!2323969))

(declare-fun m!2324143 () Bool)

(assert (=> b!1892783 m!2324143))

(declare-fun m!2324145 () Bool)

(assert (=> b!1892783 m!2324145))

(assert (=> b!1892783 m!2323969))

(assert (=> b!1892783 m!2324143))

(assert (=> b!1892783 m!2324145))

(declare-fun m!2324147 () Bool)

(assert (=> b!1892783 m!2324147))

(declare-fun m!2324149 () Bool)

(assert (=> b!1892776 m!2324149))

(declare-fun m!2324151 () Bool)

(assert (=> b!1892776 m!2324151))

(assert (=> b!1892776 m!2323971))

(assert (=> b!1892776 m!2324149))

(assert (=> b!1892776 m!2324151))

(assert (=> b!1892776 m!2323971))

(declare-fun m!2324153 () Bool)

(assert (=> b!1892776 m!2324153))

(assert (=> b!1892778 m!2324151))

(assert (=> b!1892778 m!2323971))

(declare-fun m!2324155 () Bool)

(assert (=> b!1892778 m!2324155))

(assert (=> b!1892778 m!2324149))

(assert (=> b!1892778 m!2324131))

(assert (=> b!1892778 m!2323971))

(assert (=> b!1892778 m!2324151))

(assert (=> b!1892778 m!2324131))

(assert (=> b!1892778 m!2324149))

(assert (=> b!1892778 m!2324155))

(declare-fun m!2324157 () Bool)

(assert (=> b!1892778 m!2324157))

(declare-fun m!2324159 () Bool)

(assert (=> b!1892781 m!2324159))

(assert (=> b!1892781 m!2324145))

(assert (=> b!1892781 m!2324139))

(declare-fun m!2324161 () Bool)

(assert (=> b!1892781 m!2324161))

(assert (=> b!1892781 m!2324143))

(assert (=> b!1892781 m!2324139))

(assert (=> b!1892781 m!2324145))

(assert (=> b!1892781 m!2323969))

(assert (=> b!1892781 m!2324143))

(assert (=> b!1892781 m!2324159))

(assert (=> b!1892781 m!2323969))

(assert (=> d!579669 d!579791))

(assert (=> d!579669 d!579727))

(assert (=> bm!116769 d!579781))

(declare-fun d!579801 () Bool)

(assert (=> d!579801 (= (list!8607 lt!724481) (list!8612 (c!308728 lt!724481)))))

(declare-fun bs!413207 () Bool)

(assert (= bs!413207 d!579801))

(declare-fun m!2324163 () Bool)

(assert (=> bs!413207 m!2324163))

(assert (=> d!579675 d!579801))

(declare-fun d!579803 () Bool)

(declare-fun c!308901 () Bool)

(assert (=> d!579803 (= c!308901 ((_ is Cons!21201) (dropList!764 v!6342 (+ 1 from!837))))))

(declare-fun e!1208206 () List!21282)

(assert (=> d!579803 (= (printList!1018 thiss!13601 (dropList!764 v!6342 (+ 1 from!837))) e!1208206)))

(declare-fun b!1892784 () Bool)

(assert (=> b!1892784 (= e!1208206 (++!5719 (list!8607 (charsOf!2316 (h!26602 (dropList!764 v!6342 (+ 1 from!837))))) (printList!1018 thiss!13601 (t!175772 (dropList!764 v!6342 (+ 1 from!837))))))))

(declare-fun b!1892785 () Bool)

(assert (=> b!1892785 (= e!1208206 Nil!21200)))

(assert (= (and d!579803 c!308901) b!1892784))

(assert (= (and d!579803 (not c!308901)) b!1892785))

(declare-fun m!2324165 () Bool)

(assert (=> b!1892784 m!2324165))

(assert (=> b!1892784 m!2324165))

(declare-fun m!2324167 () Bool)

(assert (=> b!1892784 m!2324167))

(declare-fun m!2324169 () Bool)

(assert (=> b!1892784 m!2324169))

(assert (=> b!1892784 m!2324167))

(assert (=> b!1892784 m!2324169))

(declare-fun m!2324171 () Bool)

(assert (=> b!1892784 m!2324171))

(assert (=> d!579675 d!579803))

(declare-fun d!579805 () Bool)

(assert (=> d!579805 (= (dropList!764 v!6342 (+ 1 from!837)) (drop!1055 (list!8610 (c!308730 v!6342)) (+ 1 from!837)))))

(declare-fun bs!413208 () Bool)

(assert (= bs!413208 d!579805))

(assert (=> bs!413208 m!2323703))

(assert (=> bs!413208 m!2323703))

(declare-fun m!2324173 () Bool)

(assert (=> bs!413208 m!2324173))

(assert (=> d!579675 d!579805))

(assert (=> d!579675 d!579645))

(declare-fun d!579807 () Bool)

(assert (=> d!579807 (= (head!4402 (drop!1055 lt!724479 (+ 1 from!837))) (h!26602 (drop!1055 lt!724479 (+ 1 from!837))))))

(assert (=> b!1892382 d!579807))

(declare-fun lt!724550 () BalanceConc!13932)

(declare-fun d!579809 () Bool)

(assert (=> d!579809 (= (list!8607 lt!724550) (printList!1018 thiss!13601 (dropList!764 v!6342 (+ 1 from!837 1))))))

(declare-fun e!1208207 () BalanceConc!13932)

(assert (=> d!579809 (= lt!724550 e!1208207)))

(declare-fun c!308902 () Bool)

(assert (=> d!579809 (= c!308902 (>= (+ 1 from!837 1) (size!16808 v!6342)))))

(declare-fun e!1208208 () Bool)

(assert (=> d!579809 e!1208208))

(declare-fun res!844909 () Bool)

(assert (=> d!579809 (=> (not res!844909) (not e!1208208))))

(assert (=> d!579809 (= res!844909 (>= (+ 1 from!837 1) 0))))

(assert (=> d!579809 (= (printRec!4 thiss!13601 v!6342 (+ 1 from!837 1)) lt!724550)))

(declare-fun b!1892786 () Bool)

(assert (=> b!1892786 (= e!1208208 (<= (+ 1 from!837 1) (size!16808 v!6342)))))

(declare-fun b!1892787 () Bool)

(assert (=> b!1892787 (= e!1208207 (BalanceConc!13933 Empty!7058))))

(declare-fun b!1892788 () Bool)

(assert (=> b!1892788 (= e!1208207 (++!5715 (charsOf!2316 (apply!5580 v!6342 (+ 1 from!837 1))) (printRec!4 thiss!13601 v!6342 (+ 1 from!837 1 1))))))

(declare-fun lt!724548 () List!21283)

(assert (=> b!1892788 (= lt!724548 (list!8608 v!6342))))

(declare-fun lt!724553 () Unit!35576)

(assert (=> b!1892788 (= lt!724553 (lemmaDropApply!688 lt!724548 (+ 1 from!837 1)))))

(assert (=> b!1892788 (= (head!4402 (drop!1055 lt!724548 (+ 1 from!837 1))) (apply!5581 lt!724548 (+ 1 from!837 1)))))

(declare-fun lt!724551 () Unit!35576)

(assert (=> b!1892788 (= lt!724551 lt!724553)))

(declare-fun lt!724547 () List!21283)

(assert (=> b!1892788 (= lt!724547 (list!8608 v!6342))))

(declare-fun lt!724549 () Unit!35576)

(assert (=> b!1892788 (= lt!724549 (lemmaDropTail!664 lt!724547 (+ 1 from!837 1)))))

(assert (=> b!1892788 (= (tail!2928 (drop!1055 lt!724547 (+ 1 from!837 1))) (drop!1055 lt!724547 (+ 1 from!837 1 1)))))

(declare-fun lt!724552 () Unit!35576)

(assert (=> b!1892788 (= lt!724552 lt!724549)))

(assert (= (and d!579809 res!844909) b!1892786))

(assert (= (and d!579809 c!308902) b!1892787))

(assert (= (and d!579809 (not c!308902)) b!1892788))

(declare-fun m!2324175 () Bool)

(assert (=> d!579809 m!2324175))

(declare-fun m!2324177 () Bool)

(assert (=> d!579809 m!2324177))

(assert (=> d!579809 m!2324177))

(declare-fun m!2324179 () Bool)

(assert (=> d!579809 m!2324179))

(assert (=> d!579809 m!2323629))

(assert (=> b!1892786 m!2323629))

(declare-fun m!2324181 () Bool)

(assert (=> b!1892788 m!2324181))

(declare-fun m!2324183 () Bool)

(assert (=> b!1892788 m!2324183))

(declare-fun m!2324185 () Bool)

(assert (=> b!1892788 m!2324185))

(declare-fun m!2324187 () Bool)

(assert (=> b!1892788 m!2324187))

(assert (=> b!1892788 m!2323637))

(declare-fun m!2324189 () Bool)

(assert (=> b!1892788 m!2324189))

(declare-fun m!2324191 () Bool)

(assert (=> b!1892788 m!2324191))

(declare-fun m!2324193 () Bool)

(assert (=> b!1892788 m!2324193))

(assert (=> b!1892788 m!2324185))

(declare-fun m!2324195 () Bool)

(assert (=> b!1892788 m!2324195))

(declare-fun m!2324197 () Bool)

(assert (=> b!1892788 m!2324197))

(assert (=> b!1892788 m!2324189))

(declare-fun m!2324199 () Bool)

(assert (=> b!1892788 m!2324199))

(declare-fun m!2324201 () Bool)

(assert (=> b!1892788 m!2324201))

(assert (=> b!1892788 m!2324191))

(assert (=> b!1892788 m!2324193))

(assert (=> b!1892788 m!2324181))

(declare-fun m!2324203 () Bool)

(assert (=> b!1892788 m!2324203))

(assert (=> b!1892382 d!579809))

(declare-fun b!1892799 () Bool)

(declare-fun res!844922 () Bool)

(declare-fun e!1208219 () Bool)

(assert (=> b!1892799 (=> (not res!844922) (not e!1208219))))

(assert (=> b!1892799 (= res!844922 (>= (height!1100 (++!5718 (c!308728 (charsOf!2316 (apply!5580 v!6342 (+ 1 from!837)))) (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837 1))))) (max!0 (height!1100 (c!308728 (charsOf!2316 (apply!5580 v!6342 (+ 1 from!837))))) (height!1100 (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837 1)))))))))

(declare-fun b!1892798 () Bool)

(declare-fun res!844923 () Bool)

(assert (=> b!1892798 (=> (not res!844923) (not e!1208219))))

(assert (=> b!1892798 (= res!844923 (<= (height!1100 (++!5718 (c!308728 (charsOf!2316 (apply!5580 v!6342 (+ 1 from!837)))) (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837 1))))) (+ (max!0 (height!1100 (c!308728 (charsOf!2316 (apply!5580 v!6342 (+ 1 from!837))))) (height!1100 (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837 1))))) 1)))))

(declare-fun d!579811 () Bool)

(assert (=> d!579811 e!1208219))

(declare-fun res!844921 () Bool)

(assert (=> d!579811 (=> (not res!844921) (not e!1208219))))

(assert (=> d!579811 (= res!844921 (appendAssocInst!520 (c!308728 (charsOf!2316 (apply!5580 v!6342 (+ 1 from!837)))) (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837 1)))))))

(declare-fun lt!724554 () BalanceConc!13932)

(assert (=> d!579811 (= lt!724554 (BalanceConc!13933 (++!5718 (c!308728 (charsOf!2316 (apply!5580 v!6342 (+ 1 from!837)))) (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837 1))))))))

(assert (=> d!579811 (= (++!5715 (charsOf!2316 (apply!5580 v!6342 (+ 1 from!837))) (printRec!4 thiss!13601 v!6342 (+ 1 from!837 1))) lt!724554)))

(declare-fun b!1892797 () Bool)

(declare-fun res!844920 () Bool)

(assert (=> b!1892797 (=> (not res!844920) (not e!1208219))))

(assert (=> b!1892797 (= res!844920 (isBalanced!2223 (++!5718 (c!308728 (charsOf!2316 (apply!5580 v!6342 (+ 1 from!837)))) (c!308728 (printRec!4 thiss!13601 v!6342 (+ 1 from!837 1))))))))

(declare-fun b!1892800 () Bool)

(assert (=> b!1892800 (= e!1208219 (= (list!8607 lt!724554) (++!5719 (list!8607 (charsOf!2316 (apply!5580 v!6342 (+ 1 from!837)))) (list!8607 (printRec!4 thiss!13601 v!6342 (+ 1 from!837 1))))))))

(assert (= (and d!579811 res!844921) b!1892797))

(assert (= (and b!1892797 res!844920) b!1892798))

(assert (= (and b!1892798 res!844923) b!1892799))

(assert (= (and b!1892799 res!844922) b!1892800))

(declare-fun m!2324205 () Bool)

(assert (=> b!1892798 m!2324205))

(declare-fun m!2324207 () Bool)

(assert (=> b!1892798 m!2324207))

(declare-fun m!2324209 () Bool)

(assert (=> b!1892798 m!2324209))

(declare-fun m!2324211 () Bool)

(assert (=> b!1892798 m!2324211))

(declare-fun m!2324213 () Bool)

(assert (=> b!1892798 m!2324213))

(assert (=> b!1892798 m!2324207))

(assert (=> b!1892798 m!2324205))

(assert (=> b!1892798 m!2324211))

(declare-fun m!2324215 () Bool)

(assert (=> b!1892800 m!2324215))

(assert (=> b!1892800 m!2323855))

(declare-fun m!2324217 () Bool)

(assert (=> b!1892800 m!2324217))

(assert (=> b!1892800 m!2323843))

(declare-fun m!2324219 () Bool)

(assert (=> b!1892800 m!2324219))

(assert (=> b!1892800 m!2324217))

(assert (=> b!1892800 m!2324219))

(declare-fun m!2324221 () Bool)

(assert (=> b!1892800 m!2324221))

(declare-fun m!2324223 () Bool)

(assert (=> d!579811 m!2324223))

(assert (=> d!579811 m!2324211))

(assert (=> b!1892797 m!2324211))

(assert (=> b!1892797 m!2324211))

(declare-fun m!2324225 () Bool)

(assert (=> b!1892797 m!2324225))

(assert (=> b!1892799 m!2324205))

(assert (=> b!1892799 m!2324207))

(assert (=> b!1892799 m!2324209))

(assert (=> b!1892799 m!2324211))

(assert (=> b!1892799 m!2324213))

(assert (=> b!1892799 m!2324207))

(assert (=> b!1892799 m!2324205))

(assert (=> b!1892799 m!2324211))

(assert (=> b!1892382 d!579811))

(declare-fun d!579813 () Bool)

(assert (=> d!579813 (= (head!4402 (drop!1055 lt!724479 (+ 1 from!837))) (apply!5581 lt!724479 (+ 1 from!837)))))

(declare-fun lt!724555 () Unit!35576)

(assert (=> d!579813 (= lt!724555 (choose!11825 lt!724479 (+ 1 from!837)))))

(declare-fun e!1208228 () Bool)

(assert (=> d!579813 e!1208228))

(declare-fun res!844932 () Bool)

(assert (=> d!579813 (=> (not res!844932) (not e!1208228))))

(assert (=> d!579813 (= res!844932 (>= (+ 1 from!837) 0))))

(assert (=> d!579813 (= (lemmaDropApply!688 lt!724479 (+ 1 from!837)) lt!724555)))

(declare-fun b!1892811 () Bool)

(assert (=> b!1892811 (= e!1208228 (< (+ 1 from!837) (size!16810 lt!724479)))))

(assert (= (and d!579813 res!844932) b!1892811))

(assert (=> d!579813 m!2323847))

(assert (=> d!579813 m!2323847))

(assert (=> d!579813 m!2323849))

(assert (=> d!579813 m!2323857))

(declare-fun m!2324227 () Bool)

(assert (=> d!579813 m!2324227))

(declare-fun m!2324229 () Bool)

(assert (=> b!1892811 m!2324229))

(assert (=> b!1892382 d!579813))

(declare-fun d!579815 () Bool)

(declare-fun lt!724556 () BalanceConc!13932)

(assert (=> d!579815 (= (list!8607 lt!724556) (originalCharacters!4567 (apply!5580 v!6342 (+ 1 from!837))))))

(assert (=> d!579815 (= lt!724556 (dynLambda!10293 (toChars!5228 (transformation!3760 (rule!5953 (apply!5580 v!6342 (+ 1 from!837))))) (value!118751 (apply!5580 v!6342 (+ 1 from!837)))))))

(assert (=> d!579815 (= (charsOf!2316 (apply!5580 v!6342 (+ 1 from!837))) lt!724556)))

(declare-fun b_lambda!62045 () Bool)

(assert (=> (not b_lambda!62045) (not d!579815)))

(declare-fun bs!413209 () Bool)

(assert (= bs!413209 d!579815))

(declare-fun m!2324231 () Bool)

(assert (=> bs!413209 m!2324231))

(declare-fun m!2324233 () Bool)

(assert (=> bs!413209 m!2324233))

(assert (=> b!1892382 d!579815))

(declare-fun b!1892812 () Bool)

(declare-fun e!1208233 () Bool)

(declare-fun lt!724557 () List!21283)

(declare-fun e!1208229 () Int)

(assert (=> b!1892812 (= e!1208233 (= (size!16810 lt!724557) e!1208229))))

(declare-fun c!308905 () Bool)

(assert (=> b!1892812 (= c!308905 (<= (+ 1 from!837) 0))))

(declare-fun b!1892813 () Bool)

(declare-fun e!1208231 () Int)

(assert (=> b!1892813 (= e!1208231 0)))

(declare-fun b!1892814 () Bool)

(declare-fun call!116877 () Int)

(assert (=> b!1892814 (= e!1208231 (- call!116877 (+ 1 from!837)))))

(declare-fun d!579817 () Bool)

(assert (=> d!579817 e!1208233))

(declare-fun res!844933 () Bool)

(assert (=> d!579817 (=> (not res!844933) (not e!1208233))))

(assert (=> d!579817 (= res!844933 (= ((_ map implies) (content!3127 lt!724557) (content!3127 lt!724478)) ((as const (InoxSet Token!7072)) true)))))

(declare-fun e!1208230 () List!21283)

(assert (=> d!579817 (= lt!724557 e!1208230)))

(declare-fun c!308904 () Bool)

(assert (=> d!579817 (= c!308904 ((_ is Nil!21201) lt!724478))))

(assert (=> d!579817 (= (drop!1055 lt!724478 (+ 1 from!837)) lt!724557)))

(declare-fun b!1892815 () Bool)

(assert (=> b!1892815 (= e!1208230 Nil!21201)))

(declare-fun b!1892816 () Bool)

(declare-fun e!1208232 () List!21283)

(assert (=> b!1892816 (= e!1208230 e!1208232)))

(declare-fun c!308903 () Bool)

(assert (=> b!1892816 (= c!308903 (<= (+ 1 from!837) 0))))

(declare-fun bm!116872 () Bool)

(assert (=> bm!116872 (= call!116877 (size!16810 lt!724478))))

(declare-fun b!1892817 () Bool)

(assert (=> b!1892817 (= e!1208232 lt!724478)))

(declare-fun b!1892818 () Bool)

(assert (=> b!1892818 (= e!1208229 call!116877)))

(declare-fun b!1892819 () Bool)

(assert (=> b!1892819 (= e!1208229 e!1208231)))

(declare-fun c!308906 () Bool)

(assert (=> b!1892819 (= c!308906 (>= (+ 1 from!837) call!116877))))

(declare-fun b!1892820 () Bool)

(assert (=> b!1892820 (= e!1208232 (drop!1055 (t!175772 lt!724478) (- (+ 1 from!837) 1)))))

(assert (= (and d!579817 c!308904) b!1892815))

(assert (= (and d!579817 (not c!308904)) b!1892816))

(assert (= (and b!1892816 c!308903) b!1892817))

(assert (= (and b!1892816 (not c!308903)) b!1892820))

(assert (= (and d!579817 res!844933) b!1892812))

(assert (= (and b!1892812 c!308905) b!1892818))

(assert (= (and b!1892812 (not c!308905)) b!1892819))

(assert (= (and b!1892819 c!308906) b!1892813))

(assert (= (and b!1892819 (not c!308906)) b!1892814))

(assert (= (or b!1892818 b!1892819 b!1892814) bm!116872))

(declare-fun m!2324235 () Bool)

(assert (=> b!1892812 m!2324235))

(declare-fun m!2324237 () Bool)

(assert (=> d!579817 m!2324237))

(declare-fun m!2324239 () Bool)

(assert (=> d!579817 m!2324239))

(declare-fun m!2324241 () Bool)

(assert (=> bm!116872 m!2324241))

(declare-fun m!2324243 () Bool)

(assert (=> b!1892820 m!2324243))

(assert (=> b!1892382 d!579817))

(declare-fun d!579819 () Bool)

(declare-fun lt!724558 () Token!7072)

(assert (=> d!579819 (= lt!724558 (apply!5581 (list!8608 v!6342) (+ 1 from!837)))))

(assert (=> d!579819 (= lt!724558 (apply!5583 (c!308730 v!6342) (+ 1 from!837)))))

(declare-fun e!1208234 () Bool)

(assert (=> d!579819 e!1208234))

(declare-fun res!844934 () Bool)

(assert (=> d!579819 (=> (not res!844934) (not e!1208234))))

(assert (=> d!579819 (= res!844934 (<= 0 (+ 1 from!837)))))

(assert (=> d!579819 (= (apply!5580 v!6342 (+ 1 from!837)) lt!724558)))

(declare-fun b!1892821 () Bool)

(assert (=> b!1892821 (= e!1208234 (< (+ 1 from!837) (size!16808 v!6342)))))

(assert (= (and d!579819 res!844934) b!1892821))

(assert (=> d!579819 m!2323637))

(assert (=> d!579819 m!2323637))

(declare-fun m!2324245 () Bool)

(assert (=> d!579819 m!2324245))

(declare-fun m!2324247 () Bool)

(assert (=> d!579819 m!2324247))

(assert (=> b!1892821 m!2323629))

(assert (=> b!1892382 d!579819))

(declare-fun d!579821 () Bool)

(declare-fun lt!724559 () Token!7072)

(assert (=> d!579821 (contains!3827 lt!724479 lt!724559)))

(declare-fun e!1208235 () Token!7072)

(assert (=> d!579821 (= lt!724559 e!1208235)))

(declare-fun c!308907 () Bool)

(assert (=> d!579821 (= c!308907 (= (+ 1 from!837) 0))))

(declare-fun e!1208236 () Bool)

(assert (=> d!579821 e!1208236))

(declare-fun res!844935 () Bool)

(assert (=> d!579821 (=> (not res!844935) (not e!1208236))))

(assert (=> d!579821 (= res!844935 (<= 0 (+ 1 from!837)))))

(assert (=> d!579821 (= (apply!5581 lt!724479 (+ 1 from!837)) lt!724559)))

(declare-fun b!1892822 () Bool)

(assert (=> b!1892822 (= e!1208236 (< (+ 1 from!837) (size!16810 lt!724479)))))

(declare-fun b!1892823 () Bool)

(assert (=> b!1892823 (= e!1208235 (head!4402 lt!724479))))

(declare-fun b!1892824 () Bool)

(assert (=> b!1892824 (= e!1208235 (apply!5581 (tail!2928 lt!724479) (- (+ 1 from!837) 1)))))

(assert (= (and d!579821 res!844935) b!1892822))

(assert (= (and d!579821 c!308907) b!1892823))

(assert (= (and d!579821 (not c!308907)) b!1892824))

(declare-fun m!2324249 () Bool)

(assert (=> d!579821 m!2324249))

(assert (=> b!1892822 m!2324229))

(declare-fun m!2324251 () Bool)

(assert (=> b!1892823 m!2324251))

(declare-fun m!2324253 () Bool)

(assert (=> b!1892824 m!2324253))

(assert (=> b!1892824 m!2324253))

(declare-fun m!2324255 () Bool)

(assert (=> b!1892824 m!2324255))

(assert (=> b!1892382 d!579821))

(declare-fun d!579823 () Bool)

(assert (=> d!579823 (= (tail!2928 (drop!1055 lt!724478 (+ 1 from!837))) (t!175772 (drop!1055 lt!724478 (+ 1 from!837))))))

(assert (=> b!1892382 d!579823))

(declare-fun d!579825 () Bool)

(assert (=> d!579825 (= (tail!2928 (drop!1055 lt!724478 (+ 1 from!837))) (drop!1055 lt!724478 (+ 1 from!837 1)))))

(declare-fun lt!724560 () Unit!35576)

(assert (=> d!579825 (= lt!724560 (choose!11823 lt!724478 (+ 1 from!837)))))

(declare-fun e!1208237 () Bool)

(assert (=> d!579825 e!1208237))

(declare-fun res!844936 () Bool)

(assert (=> d!579825 (=> (not res!844936) (not e!1208237))))

(assert (=> d!579825 (= res!844936 (>= (+ 1 from!837) 0))))

(assert (=> d!579825 (= (lemmaDropTail!664 lt!724478 (+ 1 from!837)) lt!724560)))

(declare-fun b!1892825 () Bool)

(assert (=> b!1892825 (= e!1208237 (< (+ 1 from!837) (size!16810 lt!724478)))))

(assert (= (and d!579825 res!844936) b!1892825))

(assert (=> d!579825 m!2323851))

(assert (=> d!579825 m!2323851))

(assert (=> d!579825 m!2323861))

(assert (=> d!579825 m!2323859))

(declare-fun m!2324257 () Bool)

(assert (=> d!579825 m!2324257))

(assert (=> b!1892825 m!2324241))

(assert (=> b!1892382 d!579825))

(assert (=> b!1892382 d!579699))

(declare-fun b!1892826 () Bool)

(declare-fun e!1208242 () Bool)

(declare-fun lt!724561 () List!21283)

(declare-fun e!1208238 () Int)

(assert (=> b!1892826 (= e!1208242 (= (size!16810 lt!724561) e!1208238))))

(declare-fun c!308910 () Bool)

(assert (=> b!1892826 (= c!308910 (<= (+ 1 from!837 1) 0))))

(declare-fun b!1892827 () Bool)

(declare-fun e!1208240 () Int)

(assert (=> b!1892827 (= e!1208240 0)))

(declare-fun b!1892828 () Bool)

(declare-fun call!116878 () Int)

(assert (=> b!1892828 (= e!1208240 (- call!116878 (+ 1 from!837 1)))))

(declare-fun d!579827 () Bool)

(assert (=> d!579827 e!1208242))

(declare-fun res!844937 () Bool)

(assert (=> d!579827 (=> (not res!844937) (not e!1208242))))

(assert (=> d!579827 (= res!844937 (= ((_ map implies) (content!3127 lt!724561) (content!3127 lt!724478)) ((as const (InoxSet Token!7072)) true)))))

(declare-fun e!1208239 () List!21283)

(assert (=> d!579827 (= lt!724561 e!1208239)))

(declare-fun c!308909 () Bool)

(assert (=> d!579827 (= c!308909 ((_ is Nil!21201) lt!724478))))

(assert (=> d!579827 (= (drop!1055 lt!724478 (+ 1 from!837 1)) lt!724561)))

(declare-fun b!1892829 () Bool)

(assert (=> b!1892829 (= e!1208239 Nil!21201)))

(declare-fun b!1892830 () Bool)

(declare-fun e!1208241 () List!21283)

(assert (=> b!1892830 (= e!1208239 e!1208241)))

(declare-fun c!308908 () Bool)

(assert (=> b!1892830 (= c!308908 (<= (+ 1 from!837 1) 0))))

(declare-fun bm!116873 () Bool)

(assert (=> bm!116873 (= call!116878 (size!16810 lt!724478))))

(declare-fun b!1892831 () Bool)

(assert (=> b!1892831 (= e!1208241 lt!724478)))

(declare-fun b!1892832 () Bool)

(assert (=> b!1892832 (= e!1208238 call!116878)))

(declare-fun b!1892833 () Bool)

(assert (=> b!1892833 (= e!1208238 e!1208240)))

(declare-fun c!308911 () Bool)

(assert (=> b!1892833 (= c!308911 (>= (+ 1 from!837 1) call!116878))))

(declare-fun b!1892834 () Bool)

(assert (=> b!1892834 (= e!1208241 (drop!1055 (t!175772 lt!724478) (- (+ 1 from!837 1) 1)))))

(assert (= (and d!579827 c!308909) b!1892829))

(assert (= (and d!579827 (not c!308909)) b!1892830))

(assert (= (and b!1892830 c!308908) b!1892831))

(assert (= (and b!1892830 (not c!308908)) b!1892834))

(assert (= (and d!579827 res!844937) b!1892826))

(assert (= (and b!1892826 c!308910) b!1892832))

(assert (= (and b!1892826 (not c!308910)) b!1892833))

(assert (= (and b!1892833 c!308911) b!1892827))

(assert (= (and b!1892833 (not c!308911)) b!1892828))

(assert (= (or b!1892832 b!1892833 b!1892828) bm!116873))

(declare-fun m!2324259 () Bool)

(assert (=> b!1892826 m!2324259))

(declare-fun m!2324261 () Bool)

(assert (=> d!579827 m!2324261))

(assert (=> d!579827 m!2324239))

(assert (=> bm!116873 m!2324241))

(declare-fun m!2324263 () Bool)

(assert (=> b!1892834 m!2324263))

(assert (=> b!1892382 d!579827))

(declare-fun b!1892844 () Bool)

(declare-fun e!1208256 () Bool)

(declare-fun lt!724562 () List!21283)

(declare-fun e!1208252 () Int)

(assert (=> b!1892844 (= e!1208256 (= (size!16810 lt!724562) e!1208252))))

(declare-fun c!308914 () Bool)

(assert (=> b!1892844 (= c!308914 (<= (+ 1 from!837) 0))))

(declare-fun b!1892845 () Bool)

(declare-fun e!1208254 () Int)

(assert (=> b!1892845 (= e!1208254 0)))

(declare-fun b!1892846 () Bool)

(declare-fun call!116879 () Int)

(assert (=> b!1892846 (= e!1208254 (- call!116879 (+ 1 from!837)))))

(declare-fun d!579829 () Bool)

(assert (=> d!579829 e!1208256))

(declare-fun res!844947 () Bool)

(assert (=> d!579829 (=> (not res!844947) (not e!1208256))))

(assert (=> d!579829 (= res!844947 (= ((_ map implies) (content!3127 lt!724562) (content!3127 lt!724479)) ((as const (InoxSet Token!7072)) true)))))

(declare-fun e!1208253 () List!21283)

(assert (=> d!579829 (= lt!724562 e!1208253)))

(declare-fun c!308913 () Bool)

(assert (=> d!579829 (= c!308913 ((_ is Nil!21201) lt!724479))))

(assert (=> d!579829 (= (drop!1055 lt!724479 (+ 1 from!837)) lt!724562)))

(declare-fun b!1892847 () Bool)

(assert (=> b!1892847 (= e!1208253 Nil!21201)))

(declare-fun b!1892848 () Bool)

(declare-fun e!1208255 () List!21283)

(assert (=> b!1892848 (= e!1208253 e!1208255)))

(declare-fun c!308912 () Bool)

(assert (=> b!1892848 (= c!308912 (<= (+ 1 from!837) 0))))

(declare-fun bm!116874 () Bool)

(assert (=> bm!116874 (= call!116879 (size!16810 lt!724479))))

(declare-fun b!1892849 () Bool)

(assert (=> b!1892849 (= e!1208255 lt!724479)))

(declare-fun b!1892850 () Bool)

(assert (=> b!1892850 (= e!1208252 call!116879)))

(declare-fun b!1892851 () Bool)

(assert (=> b!1892851 (= e!1208252 e!1208254)))

(declare-fun c!308915 () Bool)

(assert (=> b!1892851 (= c!308915 (>= (+ 1 from!837) call!116879))))

(declare-fun b!1892852 () Bool)

(assert (=> b!1892852 (= e!1208255 (drop!1055 (t!175772 lt!724479) (- (+ 1 from!837) 1)))))

(assert (= (and d!579829 c!308913) b!1892847))

(assert (= (and d!579829 (not c!308913)) b!1892848))

(assert (= (and b!1892848 c!308912) b!1892849))

(assert (= (and b!1892848 (not c!308912)) b!1892852))

(assert (= (and d!579829 res!844947) b!1892844))

(assert (= (and b!1892844 c!308914) b!1892850))

(assert (= (and b!1892844 (not c!308914)) b!1892851))

(assert (= (and b!1892851 c!308915) b!1892845))

(assert (= (and b!1892851 (not c!308915)) b!1892846))

(assert (= (or b!1892850 b!1892851 b!1892846) bm!116874))

(declare-fun m!2324265 () Bool)

(assert (=> b!1892844 m!2324265))

(declare-fun m!2324267 () Bool)

(assert (=> d!579829 m!2324267))

(declare-fun m!2324269 () Bool)

(assert (=> d!579829 m!2324269))

(assert (=> bm!116874 m!2324229))

(declare-fun m!2324271 () Bool)

(assert (=> b!1892852 m!2324271))

(assert (=> b!1892382 d!579829))

(declare-fun d!579831 () Bool)

(declare-fun lt!724563 () Token!7072)

(assert (=> d!579831 (contains!3827 (tail!2928 lt!724398) lt!724563)))

(declare-fun e!1208257 () Token!7072)

(assert (=> d!579831 (= lt!724563 e!1208257)))

(declare-fun c!308916 () Bool)

(assert (=> d!579831 (= c!308916 (= (- from!837 1) 0))))

(declare-fun e!1208258 () Bool)

(assert (=> d!579831 e!1208258))

(declare-fun res!844948 () Bool)

(assert (=> d!579831 (=> (not res!844948) (not e!1208258))))

(assert (=> d!579831 (= res!844948 (<= 0 (- from!837 1)))))

(assert (=> d!579831 (= (apply!5581 (tail!2928 lt!724398) (- from!837 1)) lt!724563)))

(declare-fun b!1892853 () Bool)

(assert (=> b!1892853 (= e!1208258 (< (- from!837 1) (size!16810 (tail!2928 lt!724398))))))

(declare-fun b!1892854 () Bool)

(assert (=> b!1892854 (= e!1208257 (head!4402 (tail!2928 lt!724398)))))

(declare-fun b!1892855 () Bool)

(assert (=> b!1892855 (= e!1208257 (apply!5581 (tail!2928 (tail!2928 lt!724398)) (- (- from!837 1) 1)))))

(assert (= (and d!579831 res!844948) b!1892853))

(assert (= (and d!579831 c!308916) b!1892854))

(assert (= (and d!579831 (not c!308916)) b!1892855))

(assert (=> d!579831 m!2323877))

(declare-fun m!2324273 () Bool)

(assert (=> d!579831 m!2324273))

(assert (=> b!1892853 m!2323877))

(declare-fun m!2324275 () Bool)

(assert (=> b!1892853 m!2324275))

(assert (=> b!1892854 m!2323877))

(declare-fun m!2324277 () Bool)

(assert (=> b!1892854 m!2324277))

(assert (=> b!1892855 m!2323877))

(declare-fun m!2324279 () Bool)

(assert (=> b!1892855 m!2324279))

(assert (=> b!1892855 m!2324279))

(declare-fun m!2324281 () Bool)

(assert (=> b!1892855 m!2324281))

(assert (=> b!1892411 d!579831))

(declare-fun d!579833 () Bool)

(assert (=> d!579833 (= (tail!2928 lt!724398) (t!175772 lt!724398))))

(assert (=> b!1892411 d!579833))

(assert (=> bm!116768 d!579781))

(declare-fun d!579835 () Bool)

(assert (=> d!579835 (= (tail!2928 (drop!1055 lt!724398 from!837)) (t!175772 (drop!1055 lt!724398 from!837)))))

(assert (=> d!579653 d!579835))

(assert (=> d!579653 d!579697))

(declare-fun b!1892856 () Bool)

(declare-fun e!1208263 () Bool)

(declare-fun lt!724564 () List!21283)

(declare-fun e!1208259 () Int)

(assert (=> b!1892856 (= e!1208263 (= (size!16810 lt!724564) e!1208259))))

(declare-fun c!308919 () Bool)

(assert (=> b!1892856 (= c!308919 (<= (+ from!837 1) 0))))

(declare-fun b!1892857 () Bool)

(declare-fun e!1208261 () Int)

(assert (=> b!1892857 (= e!1208261 0)))

(declare-fun b!1892858 () Bool)

(declare-fun call!116880 () Int)

(assert (=> b!1892858 (= e!1208261 (- call!116880 (+ from!837 1)))))

(declare-fun d!579837 () Bool)

(assert (=> d!579837 e!1208263))

(declare-fun res!844949 () Bool)

(assert (=> d!579837 (=> (not res!844949) (not e!1208263))))

(assert (=> d!579837 (= res!844949 (= ((_ map implies) (content!3127 lt!724564) (content!3127 lt!724398)) ((as const (InoxSet Token!7072)) true)))))

(declare-fun e!1208260 () List!21283)

(assert (=> d!579837 (= lt!724564 e!1208260)))

(declare-fun c!308918 () Bool)

(assert (=> d!579837 (= c!308918 ((_ is Nil!21201) lt!724398))))

(assert (=> d!579837 (= (drop!1055 lt!724398 (+ from!837 1)) lt!724564)))

(declare-fun b!1892859 () Bool)

(assert (=> b!1892859 (= e!1208260 Nil!21201)))

(declare-fun b!1892860 () Bool)

(declare-fun e!1208262 () List!21283)

(assert (=> b!1892860 (= e!1208260 e!1208262)))

(declare-fun c!308917 () Bool)

(assert (=> b!1892860 (= c!308917 (<= (+ from!837 1) 0))))

(declare-fun bm!116875 () Bool)

(assert (=> bm!116875 (= call!116880 (size!16810 lt!724398))))

(declare-fun b!1892861 () Bool)

(assert (=> b!1892861 (= e!1208262 lt!724398)))

(declare-fun b!1892862 () Bool)

(assert (=> b!1892862 (= e!1208259 call!116880)))

(declare-fun b!1892863 () Bool)

(assert (=> b!1892863 (= e!1208259 e!1208261)))

(declare-fun c!308920 () Bool)

(assert (=> b!1892863 (= c!308920 (>= (+ from!837 1) call!116880))))

(declare-fun b!1892864 () Bool)

(assert (=> b!1892864 (= e!1208262 (drop!1055 (t!175772 lt!724398) (- (+ from!837 1) 1)))))

(assert (= (and d!579837 c!308918) b!1892859))

(assert (= (and d!579837 (not c!308918)) b!1892860))

(assert (= (and b!1892860 c!308917) b!1892861))

(assert (= (and b!1892860 (not c!308917)) b!1892864))

(assert (= (and d!579837 res!844949) b!1892856))

(assert (= (and b!1892856 c!308919) b!1892862))

(assert (= (and b!1892856 (not c!308919)) b!1892863))

(assert (= (and b!1892863 c!308920) b!1892857))

(assert (= (and b!1892863 (not c!308920)) b!1892858))

(assert (= (or b!1892862 b!1892863 b!1892858) bm!116875))

(declare-fun m!2324291 () Bool)

(assert (=> b!1892856 m!2324291))

(declare-fun m!2324295 () Bool)

(assert (=> d!579837 m!2324295))

(assert (=> d!579837 m!2323733))

(assert (=> bm!116875 m!2323701))

(declare-fun m!2324297 () Bool)

(assert (=> b!1892864 m!2324297))

(assert (=> d!579653 d!579837))

(declare-fun d!579839 () Bool)

(assert (=> d!579839 (= (tail!2928 (drop!1055 lt!724398 from!837)) (drop!1055 lt!724398 (+ from!837 1)))))

(assert (=> d!579839 true))

(declare-fun _$28!489 () Unit!35576)

(assert (=> d!579839 (= (choose!11823 lt!724398 from!837) _$28!489)))

(declare-fun bs!413210 () Bool)

(assert (= bs!413210 d!579839))

(assert (=> bs!413210 m!2323651))

(assert (=> bs!413210 m!2323651))

(assert (=> bs!413210 m!2323695))

(assert (=> bs!413210 m!2323697))

(assert (=> d!579653 d!579839))

(declare-fun d!579843 () Bool)

(declare-fun c!308922 () Bool)

(assert (=> d!579843 (= c!308922 ((_ is Node!7059) (left!17017 (c!308730 v!6342))))))

(declare-fun e!1208265 () Bool)

(assert (=> d!579843 (= (inv!28283 (left!17017 (c!308730 v!6342))) e!1208265)))

(declare-fun b!1892867 () Bool)

(assert (=> b!1892867 (= e!1208265 (inv!28284 (left!17017 (c!308730 v!6342))))))

(declare-fun b!1892868 () Bool)

(declare-fun e!1208266 () Bool)

(assert (=> b!1892868 (= e!1208265 e!1208266)))

(declare-fun res!844950 () Bool)

(assert (=> b!1892868 (= res!844950 (not ((_ is Leaf!10402) (left!17017 (c!308730 v!6342)))))))

(assert (=> b!1892868 (=> res!844950 e!1208266)))

(declare-fun b!1892869 () Bool)

(assert (=> b!1892869 (= e!1208266 (inv!28285 (left!17017 (c!308730 v!6342))))))

(assert (= (and d!579843 c!308922) b!1892867))

(assert (= (and d!579843 (not c!308922)) b!1892868))

(assert (= (and b!1892868 (not res!844950)) b!1892869))

(declare-fun m!2324323 () Bool)

(assert (=> b!1892867 m!2324323))

(declare-fun m!2324325 () Bool)

(assert (=> b!1892869 m!2324325))

(assert (=> b!1892438 d!579843))

(declare-fun d!579847 () Bool)

(declare-fun c!308923 () Bool)

(assert (=> d!579847 (= c!308923 ((_ is Node!7059) (right!17347 (c!308730 v!6342))))))

(declare-fun e!1208267 () Bool)

(assert (=> d!579847 (= (inv!28283 (right!17347 (c!308730 v!6342))) e!1208267)))

(declare-fun b!1892870 () Bool)

(assert (=> b!1892870 (= e!1208267 (inv!28284 (right!17347 (c!308730 v!6342))))))

(declare-fun b!1892871 () Bool)

(declare-fun e!1208268 () Bool)

(assert (=> b!1892871 (= e!1208267 e!1208268)))

(declare-fun res!844951 () Bool)

(assert (=> b!1892871 (= res!844951 (not ((_ is Leaf!10402) (right!17347 (c!308730 v!6342)))))))

(assert (=> b!1892871 (=> res!844951 e!1208268)))

(declare-fun b!1892872 () Bool)

(assert (=> b!1892872 (= e!1208268 (inv!28285 (right!17347 (c!308730 v!6342))))))

(assert (= (and d!579847 c!308923) b!1892870))

(assert (= (and d!579847 (not c!308923)) b!1892871))

(assert (= (and b!1892871 (not res!844951)) b!1892872))

(declare-fun m!2324327 () Bool)

(assert (=> b!1892870 m!2324327))

(declare-fun m!2324329 () Bool)

(assert (=> b!1892872 m!2324329))

(assert (=> b!1892438 d!579847))

(assert (=> b!1892380 d!579645))

(declare-fun b!1892873 () Bool)

(declare-fun e!1208273 () Bool)

(declare-fun lt!724566 () List!21283)

(declare-fun e!1208269 () Int)

(assert (=> b!1892873 (= e!1208273 (= (size!16810 lt!724566) e!1208269))))

(declare-fun c!308926 () Bool)

(assert (=> b!1892873 (= c!308926 (<= (- from!837 1) 0))))

(declare-fun b!1892874 () Bool)

(declare-fun e!1208271 () Int)

(assert (=> b!1892874 (= e!1208271 0)))

(declare-fun b!1892875 () Bool)

(declare-fun call!116881 () Int)

(assert (=> b!1892875 (= e!1208271 (- call!116881 (- from!837 1)))))

(declare-fun d!579849 () Bool)

(assert (=> d!579849 e!1208273))

(declare-fun res!844952 () Bool)

(assert (=> d!579849 (=> (not res!844952) (not e!1208273))))

(assert (=> d!579849 (= res!844952 (= ((_ map implies) (content!3127 lt!724566) (content!3127 (t!175772 lt!724398))) ((as const (InoxSet Token!7072)) true)))))

(declare-fun e!1208270 () List!21283)

(assert (=> d!579849 (= lt!724566 e!1208270)))

(declare-fun c!308925 () Bool)

(assert (=> d!579849 (= c!308925 ((_ is Nil!21201) (t!175772 lt!724398)))))

(assert (=> d!579849 (= (drop!1055 (t!175772 lt!724398) (- from!837 1)) lt!724566)))

(declare-fun b!1892876 () Bool)

(assert (=> b!1892876 (= e!1208270 Nil!21201)))

(declare-fun b!1892877 () Bool)

(declare-fun e!1208272 () List!21283)

(assert (=> b!1892877 (= e!1208270 e!1208272)))

(declare-fun c!308924 () Bool)

(assert (=> b!1892877 (= c!308924 (<= (- from!837 1) 0))))

(declare-fun bm!116876 () Bool)

(assert (=> bm!116876 (= call!116881 (size!16810 (t!175772 lt!724398)))))

(declare-fun b!1892878 () Bool)

(assert (=> b!1892878 (= e!1208272 (t!175772 lt!724398))))

(declare-fun b!1892879 () Bool)

(assert (=> b!1892879 (= e!1208269 call!116881)))

(declare-fun b!1892880 () Bool)

(assert (=> b!1892880 (= e!1208269 e!1208271)))

(declare-fun c!308927 () Bool)

(assert (=> b!1892880 (= c!308927 (>= (- from!837 1) call!116881))))

(declare-fun b!1892881 () Bool)

(assert (=> b!1892881 (= e!1208272 (drop!1055 (t!175772 (t!175772 lt!724398)) (- (- from!837 1) 1)))))

(assert (= (and d!579849 c!308925) b!1892876))

(assert (= (and d!579849 (not c!308925)) b!1892877))

(assert (= (and b!1892877 c!308924) b!1892878))

(assert (= (and b!1892877 (not c!308924)) b!1892881))

(assert (= (and d!579849 res!844952) b!1892873))

(assert (= (and b!1892873 c!308926) b!1892879))

(assert (= (and b!1892873 (not c!308926)) b!1892880))

(assert (= (and b!1892880 c!308927) b!1892874))

(assert (= (and b!1892880 (not c!308927)) b!1892875))

(assert (= (or b!1892879 b!1892880 b!1892875) bm!116876))

(declare-fun m!2324331 () Bool)

(assert (=> b!1892873 m!2324331))

(declare-fun m!2324333 () Bool)

(assert (=> d!579849 m!2324333))

(declare-fun m!2324335 () Bool)

(assert (=> d!579849 m!2324335))

(assert (=> bm!116876 m!2324101))

(declare-fun m!2324337 () Bool)

(assert (=> b!1892881 m!2324337))

(assert (=> b!1892423 d!579849))

(assert (=> b!1892409 d!579781))

(declare-fun d!579851 () Bool)

(declare-fun c!308930 () Bool)

(assert (=> d!579851 (= c!308930 ((_ is Nil!21201) lt!724491))))

(declare-fun e!1208276 () (InoxSet Token!7072))

(assert (=> d!579851 (= (content!3127 lt!724491) e!1208276)))

(declare-fun b!1892886 () Bool)

(assert (=> b!1892886 (= e!1208276 ((as const (Array Token!7072 Bool)) false))))

(declare-fun b!1892887 () Bool)

(assert (=> b!1892887 (= e!1208276 ((_ map or) (store ((as const (Array Token!7072 Bool)) false) (h!26602 lt!724491) true) (content!3127 (t!175772 lt!724491))))))

(assert (= (and d!579851 c!308930) b!1892886))

(assert (= (and d!579851 (not c!308930)) b!1892887))

(declare-fun m!2324339 () Bool)

(assert (=> b!1892887 m!2324339))

(declare-fun m!2324341 () Bool)

(assert (=> b!1892887 m!2324341))

(assert (=> d!579697 d!579851))

(declare-fun d!579855 () Bool)

(declare-fun c!308931 () Bool)

(assert (=> d!579855 (= c!308931 ((_ is Nil!21201) lt!724398))))

(declare-fun e!1208277 () (InoxSet Token!7072))

(assert (=> d!579855 (= (content!3127 lt!724398) e!1208277)))

(declare-fun b!1892888 () Bool)

(assert (=> b!1892888 (= e!1208277 ((as const (Array Token!7072 Bool)) false))))

(declare-fun b!1892889 () Bool)

(assert (=> b!1892889 (= e!1208277 ((_ map or) (store ((as const (Array Token!7072 Bool)) false) (h!26602 lt!724398) true) (content!3127 (t!175772 lt!724398))))))

(assert (= (and d!579855 c!308931) b!1892888))

(assert (= (and d!579855 (not c!308931)) b!1892889))

(declare-fun m!2324343 () Bool)

(assert (=> b!1892889 m!2324343))

(assert (=> b!1892889 m!2324335))

(assert (=> d!579697 d!579855))

(declare-fun d!579857 () Bool)

(declare-fun c!308932 () Bool)

(assert (=> d!579857 (= c!308932 ((_ is Nil!21201) lt!724418))))

(declare-fun e!1208278 () (InoxSet Token!7072))

(assert (=> d!579857 (= (content!3127 lt!724418) e!1208278)))

(declare-fun b!1892890 () Bool)

(assert (=> b!1892890 (= e!1208278 ((as const (Array Token!7072 Bool)) false))))

(declare-fun b!1892891 () Bool)

(assert (=> b!1892891 (= e!1208278 ((_ map or) (store ((as const (Array Token!7072 Bool)) false) (h!26602 lt!724418) true) (content!3127 (t!175772 lt!724418))))))

(assert (= (and d!579857 c!308932) b!1892890))

(assert (= (and d!579857 (not c!308932)) b!1892891))

(declare-fun m!2324345 () Bool)

(assert (=> b!1892891 m!2324345))

(declare-fun m!2324347 () Bool)

(assert (=> b!1892891 m!2324347))

(assert (=> d!579657 d!579857))

(assert (=> d!579657 d!579855))

(declare-fun d!579859 () Bool)

(declare-fun res!844969 () Bool)

(declare-fun e!1208285 () Bool)

(assert (=> d!579859 (=> (not res!844969) (not e!1208285))))

(declare-fun list!8616 (IArray!14123) List!21283)

(assert (=> d!579859 (= res!844969 (<= (size!16810 (list!8616 (xs!9949 (c!308730 v!6342)))) 512))))

(assert (=> d!579859 (= (inv!28285 (c!308730 v!6342)) e!1208285)))

(declare-fun b!1892908 () Bool)

(declare-fun res!844970 () Bool)

(assert (=> b!1892908 (=> (not res!844970) (not e!1208285))))

(assert (=> b!1892908 (= res!844970 (= (csize!14349 (c!308730 v!6342)) (size!16810 (list!8616 (xs!9949 (c!308730 v!6342))))))))

(declare-fun b!1892909 () Bool)

(assert (=> b!1892909 (= e!1208285 (and (> (csize!14349 (c!308730 v!6342)) 0) (<= (csize!14349 (c!308730 v!6342)) 512)))))

(assert (= (and d!579859 res!844969) b!1892908))

(assert (= (and b!1892908 res!844970) b!1892909))

(declare-fun m!2324349 () Bool)

(assert (=> d!579859 m!2324349))

(assert (=> d!579859 m!2324349))

(declare-fun m!2324351 () Bool)

(assert (=> d!579859 m!2324351))

(assert (=> b!1892908 m!2324349))

(assert (=> b!1892908 m!2324349))

(assert (=> b!1892908 m!2324351))

(assert (=> b!1892274 d!579859))

(declare-fun d!579861 () Bool)

(assert (=> d!579861 (= (head!4402 lt!724398) (h!26602 lt!724398))))

(assert (=> b!1892410 d!579861))

(declare-fun b!1892943 () Bool)

(declare-fun e!1208302 () List!21283)

(declare-fun e!1208303 () List!21283)

(assert (=> b!1892943 (= e!1208302 e!1208303)))

(declare-fun c!308946 () Bool)

(assert (=> b!1892943 (= c!308946 ((_ is Leaf!10402) (c!308730 v!6342)))))

(declare-fun d!579863 () Bool)

(declare-fun c!308945 () Bool)

(assert (=> d!579863 (= c!308945 ((_ is Empty!7059) (c!308730 v!6342)))))

(assert (=> d!579863 (= (list!8610 (c!308730 v!6342)) e!1208302)))

(declare-fun b!1892944 () Bool)

(assert (=> b!1892944 (= e!1208303 (list!8616 (xs!9949 (c!308730 v!6342))))))

(declare-fun b!1892942 () Bool)

(assert (=> b!1892942 (= e!1208302 Nil!21201)))

(declare-fun b!1892945 () Bool)

(declare-fun ++!5721 (List!21283 List!21283) List!21283)

(assert (=> b!1892945 (= e!1208303 (++!5721 (list!8610 (left!17017 (c!308730 v!6342))) (list!8610 (right!17347 (c!308730 v!6342)))))))

(assert (= (and d!579863 c!308945) b!1892942))

(assert (= (and d!579863 (not c!308945)) b!1892943))

(assert (= (and b!1892943 c!308946) b!1892944))

(assert (= (and b!1892943 (not c!308946)) b!1892945))

(assert (=> b!1892944 m!2324349))

(assert (=> b!1892945 m!2324085))

(assert (=> b!1892945 m!2324089))

(assert (=> b!1892945 m!2324085))

(assert (=> b!1892945 m!2324089))

(declare-fun m!2324383 () Bool)

(assert (=> b!1892945 m!2324383))

(assert (=> d!579699 d!579863))

(declare-fun d!579871 () Bool)

(declare-fun e!1208305 () Bool)

(assert (=> d!579871 e!1208305))

(declare-fun res!844980 () Bool)

(assert (=> d!579871 (=> (not res!844980) (not e!1208305))))

(declare-fun lt!724572 () List!21282)

(assert (=> d!579871 (= res!844980 (= (content!3128 lt!724572) ((_ map or) (content!3128 (list!8607 (charsOf!2316 (h!26602 (dropList!764 v!6342 from!837))))) (content!3128 (printList!1018 thiss!13601 (t!175772 (dropList!764 v!6342 from!837)))))))))

(declare-fun e!1208304 () List!21282)

(assert (=> d!579871 (= lt!724572 e!1208304)))

(declare-fun c!308947 () Bool)

(assert (=> d!579871 (= c!308947 ((_ is Nil!21200) (list!8607 (charsOf!2316 (h!26602 (dropList!764 v!6342 from!837))))))))

(assert (=> d!579871 (= (++!5719 (list!8607 (charsOf!2316 (h!26602 (dropList!764 v!6342 from!837)))) (printList!1018 thiss!13601 (t!175772 (dropList!764 v!6342 from!837)))) lt!724572)))

(declare-fun b!1892949 () Bool)

(assert (=> b!1892949 (= e!1208305 (or (not (= (printList!1018 thiss!13601 (t!175772 (dropList!764 v!6342 from!837))) Nil!21200)) (= lt!724572 (list!8607 (charsOf!2316 (h!26602 (dropList!764 v!6342 from!837)))))))))

(declare-fun b!1892947 () Bool)

(assert (=> b!1892947 (= e!1208304 (Cons!21200 (h!26601 (list!8607 (charsOf!2316 (h!26602 (dropList!764 v!6342 from!837))))) (++!5719 (t!175771 (list!8607 (charsOf!2316 (h!26602 (dropList!764 v!6342 from!837))))) (printList!1018 thiss!13601 (t!175772 (dropList!764 v!6342 from!837))))))))

(declare-fun b!1892946 () Bool)

(assert (=> b!1892946 (= e!1208304 (printList!1018 thiss!13601 (t!175772 (dropList!764 v!6342 from!837))))))

(declare-fun b!1892948 () Bool)

(declare-fun res!844979 () Bool)

(assert (=> b!1892948 (=> (not res!844979) (not e!1208305))))

(assert (=> b!1892948 (= res!844979 (= (size!16813 lt!724572) (+ (size!16813 (list!8607 (charsOf!2316 (h!26602 (dropList!764 v!6342 from!837))))) (size!16813 (printList!1018 thiss!13601 (t!175772 (dropList!764 v!6342 from!837)))))))))

(assert (= (and d!579871 c!308947) b!1892946))

(assert (= (and d!579871 (not c!308947)) b!1892947))

(assert (= (and d!579871 res!844980) b!1892948))

(assert (= (and b!1892948 res!844979) b!1892949))

(declare-fun m!2324387 () Bool)

(assert (=> d!579871 m!2324387))

(assert (=> d!579871 m!2323899))

(declare-fun m!2324389 () Bool)

(assert (=> d!579871 m!2324389))

(assert (=> d!579871 m!2323901))

(declare-fun m!2324391 () Bool)

(assert (=> d!579871 m!2324391))

(assert (=> b!1892947 m!2323901))

(declare-fun m!2324393 () Bool)

(assert (=> b!1892947 m!2324393))

(declare-fun m!2324395 () Bool)

(assert (=> b!1892948 m!2324395))

(assert (=> b!1892948 m!2323899))

(declare-fun m!2324397 () Bool)

(assert (=> b!1892948 m!2324397))

(assert (=> b!1892948 m!2323901))

(declare-fun m!2324399 () Bool)

(assert (=> b!1892948 m!2324399))

(assert (=> b!1892428 d!579871))

(declare-fun d!579875 () Bool)

(assert (=> d!579875 (= (list!8607 (charsOf!2316 (h!26602 (dropList!764 v!6342 from!837)))) (list!8612 (c!308728 (charsOf!2316 (h!26602 (dropList!764 v!6342 from!837))))))))

(declare-fun bs!413212 () Bool)

(assert (= bs!413212 d!579875))

(declare-fun m!2324401 () Bool)

(assert (=> bs!413212 m!2324401))

(assert (=> b!1892428 d!579875))

(declare-fun d!579877 () Bool)

(declare-fun lt!724574 () BalanceConc!13932)

(assert (=> d!579877 (= (list!8607 lt!724574) (originalCharacters!4567 (h!26602 (dropList!764 v!6342 from!837))))))

(assert (=> d!579877 (= lt!724574 (dynLambda!10293 (toChars!5228 (transformation!3760 (rule!5953 (h!26602 (dropList!764 v!6342 from!837))))) (value!118751 (h!26602 (dropList!764 v!6342 from!837)))))))

(assert (=> d!579877 (= (charsOf!2316 (h!26602 (dropList!764 v!6342 from!837))) lt!724574)))

(declare-fun b_lambda!62047 () Bool)

(assert (=> (not b_lambda!62047) (not d!579877)))

(declare-fun bs!413213 () Bool)

(assert (= bs!413213 d!579877))

(declare-fun m!2324409 () Bool)

(assert (=> bs!413213 m!2324409))

(declare-fun m!2324413 () Bool)

(assert (=> bs!413213 m!2324413))

(assert (=> b!1892428 d!579877))

(declare-fun d!579879 () Bool)

(declare-fun c!308948 () Bool)

(assert (=> d!579879 (= c!308948 ((_ is Cons!21201) (t!175772 (dropList!764 v!6342 from!837))))))

(declare-fun e!1208307 () List!21282)

(assert (=> d!579879 (= (printList!1018 thiss!13601 (t!175772 (dropList!764 v!6342 from!837))) e!1208307)))

(declare-fun b!1892954 () Bool)

(assert (=> b!1892954 (= e!1208307 (++!5719 (list!8607 (charsOf!2316 (h!26602 (t!175772 (dropList!764 v!6342 from!837))))) (printList!1018 thiss!13601 (t!175772 (t!175772 (dropList!764 v!6342 from!837))))))))

(declare-fun b!1892955 () Bool)

(assert (=> b!1892955 (= e!1208307 Nil!21200)))

(assert (= (and d!579879 c!308948) b!1892954))

(assert (= (and d!579879 (not c!308948)) b!1892955))

(declare-fun m!2324427 () Bool)

(assert (=> b!1892954 m!2324427))

(assert (=> b!1892954 m!2324427))

(declare-fun m!2324429 () Bool)

(assert (=> b!1892954 m!2324429))

(declare-fun m!2324431 () Bool)

(assert (=> b!1892954 m!2324431))

(assert (=> b!1892954 m!2324429))

(assert (=> b!1892954 m!2324431))

(declare-fun m!2324435 () Bool)

(assert (=> b!1892954 m!2324435))

(assert (=> b!1892428 d!579879))

(declare-fun b!1892956 () Bool)

(declare-fun e!1208312 () Bool)

(declare-fun lt!724575 () List!21283)

(declare-fun e!1208308 () Int)

(assert (=> b!1892956 (= e!1208312 (= (size!16810 lt!724575) e!1208308))))

(declare-fun c!308951 () Bool)

(assert (=> b!1892956 (= c!308951 (<= from!837 0))))

(declare-fun b!1892957 () Bool)

(declare-fun e!1208310 () Int)

(assert (=> b!1892957 (= e!1208310 0)))

(declare-fun b!1892958 () Bool)

(declare-fun call!116884 () Int)

(assert (=> b!1892958 (= e!1208310 (- call!116884 from!837))))

(declare-fun d!579881 () Bool)

(assert (=> d!579881 e!1208312))

(declare-fun res!844985 () Bool)

(assert (=> d!579881 (=> (not res!844985) (not e!1208312))))

(assert (=> d!579881 (= res!844985 (= ((_ map implies) (content!3127 lt!724575) (content!3127 (list!8610 (c!308730 v!6342)))) ((as const (InoxSet Token!7072)) true)))))

(declare-fun e!1208309 () List!21283)

(assert (=> d!579881 (= lt!724575 e!1208309)))

(declare-fun c!308950 () Bool)

(assert (=> d!579881 (= c!308950 ((_ is Nil!21201) (list!8610 (c!308730 v!6342))))))

(assert (=> d!579881 (= (drop!1055 (list!8610 (c!308730 v!6342)) from!837) lt!724575)))

(declare-fun b!1892959 () Bool)

(assert (=> b!1892959 (= e!1208309 Nil!21201)))

(declare-fun b!1892960 () Bool)

(declare-fun e!1208311 () List!21283)

(assert (=> b!1892960 (= e!1208309 e!1208311)))

(declare-fun c!308949 () Bool)

(assert (=> b!1892960 (= c!308949 (<= from!837 0))))

(declare-fun bm!116879 () Bool)

(assert (=> bm!116879 (= call!116884 (size!16810 (list!8610 (c!308730 v!6342))))))

(declare-fun b!1892961 () Bool)

(assert (=> b!1892961 (= e!1208311 (list!8610 (c!308730 v!6342)))))

(declare-fun b!1892962 () Bool)

(assert (=> b!1892962 (= e!1208308 call!116884)))

(declare-fun b!1892963 () Bool)

(assert (=> b!1892963 (= e!1208308 e!1208310)))

(declare-fun c!308952 () Bool)

(assert (=> b!1892963 (= c!308952 (>= from!837 call!116884))))

(declare-fun b!1892964 () Bool)

(assert (=> b!1892964 (= e!1208311 (drop!1055 (t!175772 (list!8610 (c!308730 v!6342))) (- from!837 1)))))

(assert (= (and d!579881 c!308950) b!1892959))

(assert (= (and d!579881 (not c!308950)) b!1892960))

(assert (= (and b!1892960 c!308949) b!1892961))

(assert (= (and b!1892960 (not c!308949)) b!1892964))

(assert (= (and d!579881 res!844985) b!1892956))

(assert (= (and b!1892956 c!308951) b!1892962))

(assert (= (and b!1892956 (not c!308951)) b!1892963))

(assert (= (and b!1892963 c!308952) b!1892957))

(assert (= (and b!1892963 (not c!308952)) b!1892958))

(assert (= (or b!1892962 b!1892963 b!1892958) bm!116879))

(declare-fun m!2324439 () Bool)

(assert (=> b!1892956 m!2324439))

(declare-fun m!2324441 () Bool)

(assert (=> d!579881 m!2324441))

(assert (=> d!579881 m!2323703))

(declare-fun m!2324443 () Bool)

(assert (=> d!579881 m!2324443))

(assert (=> bm!116879 m!2323703))

(declare-fun m!2324445 () Bool)

(assert (=> bm!116879 m!2324445))

(declare-fun m!2324447 () Bool)

(assert (=> b!1892964 m!2324447))

(assert (=> d!579655 d!579881))

(assert (=> d!579655 d!579863))

(declare-fun b!1892995 () Bool)

(declare-fun res!845006 () Bool)

(declare-fun e!1208329 () Bool)

(assert (=> b!1892995 (=> (not res!845006) (not e!1208329))))

(declare-fun isEmpty!13016 (Conc!7059) Bool)

(assert (=> b!1892995 (= res!845006 (not (isEmpty!13016 (left!17017 (c!308730 v!6342)))))))

(declare-fun b!1892997 () Bool)

(declare-fun e!1208330 () Bool)

(assert (=> b!1892997 (= e!1208330 e!1208329)))

(declare-fun res!845008 () Bool)

(assert (=> b!1892997 (=> (not res!845008) (not e!1208329))))

(assert (=> b!1892997 (= res!845008 (<= (- 1) (- (height!1101 (left!17017 (c!308730 v!6342))) (height!1101 (right!17347 (c!308730 v!6342))))))))

(declare-fun b!1892998 () Bool)

(declare-fun res!845004 () Bool)

(assert (=> b!1892998 (=> (not res!845004) (not e!1208329))))

(assert (=> b!1892998 (= res!845004 (isBalanced!2221 (right!17347 (c!308730 v!6342))))))

(declare-fun b!1892999 () Bool)

(declare-fun res!845007 () Bool)

(assert (=> b!1892999 (=> (not res!845007) (not e!1208329))))

(assert (=> b!1892999 (= res!845007 (isBalanced!2221 (left!17017 (c!308730 v!6342))))))

(declare-fun b!1893000 () Bool)

(declare-fun res!845005 () Bool)

(assert (=> b!1893000 (=> (not res!845005) (not e!1208329))))

(assert (=> b!1893000 (= res!845005 (<= (- (height!1101 (left!17017 (c!308730 v!6342))) (height!1101 (right!17347 (c!308730 v!6342)))) 1))))

(declare-fun d!579887 () Bool)

(declare-fun res!845009 () Bool)

(assert (=> d!579887 (=> res!845009 e!1208330)))

(assert (=> d!579887 (= res!845009 (not ((_ is Node!7059) (c!308730 v!6342))))))

(assert (=> d!579887 (= (isBalanced!2221 (c!308730 v!6342)) e!1208330)))

(declare-fun b!1892996 () Bool)

(assert (=> b!1892996 (= e!1208329 (not (isEmpty!13016 (right!17347 (c!308730 v!6342)))))))

(assert (= (and d!579887 (not res!845009)) b!1892997))

(assert (= (and b!1892997 res!845008) b!1893000))

(assert (= (and b!1893000 res!845005) b!1892999))

(assert (= (and b!1892999 res!845007) b!1892998))

(assert (= (and b!1892998 res!845004) b!1892995))

(assert (= (and b!1892995 res!845006) b!1892996))

(declare-fun m!2324503 () Bool)

(assert (=> b!1892995 m!2324503))

(declare-fun m!2324505 () Bool)

(assert (=> b!1892998 m!2324505))

(assert (=> b!1892997 m!2324035))

(assert (=> b!1892997 m!2324037))

(assert (=> b!1893000 m!2324035))

(assert (=> b!1893000 m!2324037))

(declare-fun m!2324507 () Bool)

(assert (=> b!1892996 m!2324507))

(declare-fun m!2324509 () Bool)

(assert (=> b!1892999 m!2324509))

(assert (=> d!579641 d!579887))

(declare-fun d!579903 () Bool)

(assert (=> d!579903 (= (inv!28289 (xs!9949 (c!308730 v!6342))) (<= (size!16810 (innerList!7119 (xs!9949 (c!308730 v!6342)))) 2147483647))))

(declare-fun bs!413215 () Bool)

(assert (= bs!413215 d!579903))

(declare-fun m!2324511 () Bool)

(assert (=> bs!413215 m!2324511))

(assert (=> b!1892439 d!579903))

(declare-fun d!579905 () Bool)

(declare-fun lt!724589 () Int)

(assert (=> d!579905 (>= lt!724589 0)))

(declare-fun e!1208333 () Int)

(assert (=> d!579905 (= lt!724589 e!1208333)))

(declare-fun c!308959 () Bool)

(assert (=> d!579905 (= c!308959 ((_ is Nil!21201) (list!8608 v!6342)))))

(assert (=> d!579905 (= (size!16810 (list!8608 v!6342)) lt!724589)))

(declare-fun b!1893007 () Bool)

(assert (=> b!1893007 (= e!1208333 0)))

(declare-fun b!1893008 () Bool)

(assert (=> b!1893008 (= e!1208333 (+ 1 (size!16810 (t!175772 (list!8608 v!6342)))))))

(assert (= (and d!579905 c!308959) b!1893007))

(assert (= (and d!579905 (not c!308959)) b!1893008))

(declare-fun m!2324513 () Bool)

(assert (=> b!1893008 m!2324513))

(assert (=> d!579645 d!579905))

(assert (=> d!579645 d!579699))

(declare-fun d!579907 () Bool)

(declare-fun lt!724593 () Int)

(assert (=> d!579907 (= lt!724593 (size!16810 (list!8610 (c!308730 v!6342))))))

(assert (=> d!579907 (= lt!724593 (ite ((_ is Empty!7059) (c!308730 v!6342)) 0 (ite ((_ is Leaf!10402) (c!308730 v!6342)) (csize!14349 (c!308730 v!6342)) (csize!14348 (c!308730 v!6342)))))))

(assert (=> d!579907 (= (size!16811 (c!308730 v!6342)) lt!724593)))

(declare-fun bs!413216 () Bool)

(assert (= bs!413216 d!579907))

(assert (=> bs!413216 m!2323703))

(assert (=> bs!413216 m!2323703))

(assert (=> bs!413216 m!2324445))

(assert (=> d!579645 d!579907))

(assert (=> b!1892337 d!579781))

(declare-fun b!1893015 () Bool)

(declare-fun e!1208341 () Bool)

(declare-fun lt!724594 () List!21283)

(declare-fun e!1208337 () Int)

(assert (=> b!1893015 (= e!1208341 (= (size!16810 lt!724594) e!1208337))))

(declare-fun c!308963 () Bool)

(assert (=> b!1893015 (= c!308963 (<= (- (+ 1 from!837) 1) 0))))

(declare-fun b!1893016 () Bool)

(declare-fun e!1208339 () Int)

(assert (=> b!1893016 (= e!1208339 0)))

(declare-fun b!1893017 () Bool)

(declare-fun call!116886 () Int)

(assert (=> b!1893017 (= e!1208339 (- call!116886 (- (+ 1 from!837) 1)))))

(declare-fun d!579913 () Bool)

(assert (=> d!579913 e!1208341))

(declare-fun res!845020 () Bool)

(assert (=> d!579913 (=> (not res!845020) (not e!1208341))))

(assert (=> d!579913 (= res!845020 (= ((_ map implies) (content!3127 lt!724594) (content!3127 (t!175772 lt!724398))) ((as const (InoxSet Token!7072)) true)))))

(declare-fun e!1208338 () List!21283)

(assert (=> d!579913 (= lt!724594 e!1208338)))

(declare-fun c!308962 () Bool)

(assert (=> d!579913 (= c!308962 ((_ is Nil!21201) (t!175772 lt!724398)))))

(assert (=> d!579913 (= (drop!1055 (t!175772 lt!724398) (- (+ 1 from!837) 1)) lt!724594)))

(declare-fun b!1893018 () Bool)

(assert (=> b!1893018 (= e!1208338 Nil!21201)))

(declare-fun b!1893019 () Bool)

(declare-fun e!1208340 () List!21283)

(assert (=> b!1893019 (= e!1208338 e!1208340)))

(declare-fun c!308961 () Bool)

(assert (=> b!1893019 (= c!308961 (<= (- (+ 1 from!837) 1) 0))))

(declare-fun bm!116881 () Bool)

(assert (=> bm!116881 (= call!116886 (size!16810 (t!175772 lt!724398)))))

(declare-fun b!1893020 () Bool)

(assert (=> b!1893020 (= e!1208340 (t!175772 lt!724398))))

(declare-fun b!1893021 () Bool)

(assert (=> b!1893021 (= e!1208337 call!116886)))

(declare-fun b!1893022 () Bool)

(assert (=> b!1893022 (= e!1208337 e!1208339)))

(declare-fun c!308964 () Bool)

(assert (=> b!1893022 (= c!308964 (>= (- (+ 1 from!837) 1) call!116886))))

(declare-fun b!1893023 () Bool)

(assert (=> b!1893023 (= e!1208340 (drop!1055 (t!175772 (t!175772 lt!724398)) (- (- (+ 1 from!837) 1) 1)))))

(assert (= (and d!579913 c!308962) b!1893018))

(assert (= (and d!579913 (not c!308962)) b!1893019))

(assert (= (and b!1893019 c!308961) b!1893020))

(assert (= (and b!1893019 (not c!308961)) b!1893023))

(assert (= (and d!579913 res!845020) b!1893015))

(assert (= (and b!1893015 c!308963) b!1893021))

(assert (= (and b!1893015 (not c!308963)) b!1893022))

(assert (= (and b!1893022 c!308964) b!1893016))

(assert (= (and b!1893022 (not c!308964)) b!1893017))

(assert (= (or b!1893021 b!1893022 b!1893017) bm!116881))

(declare-fun m!2324529 () Bool)

(assert (=> b!1893015 m!2324529))

(declare-fun m!2324531 () Bool)

(assert (=> d!579913 m!2324531))

(assert (=> d!579913 m!2324335))

(assert (=> bm!116881 m!2324101))

(declare-fun m!2324533 () Bool)

(assert (=> b!1893023 m!2324533))

(assert (=> b!1892325 d!579913))

(declare-fun tp!539801 () Bool)

(declare-fun b!1893024 () Bool)

(declare-fun tp!539800 () Bool)

(declare-fun e!1208342 () Bool)

(assert (=> b!1893024 (= e!1208342 (and (inv!28283 (left!17017 (left!17017 (c!308730 v!6342)))) tp!539801 (inv!28283 (right!17347 (left!17017 (c!308730 v!6342)))) tp!539800))))

(declare-fun b!1893026 () Bool)

(declare-fun e!1208343 () Bool)

(declare-fun tp!539799 () Bool)

(assert (=> b!1893026 (= e!1208343 tp!539799)))

(declare-fun b!1893025 () Bool)

(assert (=> b!1893025 (= e!1208342 (and (inv!28289 (xs!9949 (left!17017 (c!308730 v!6342)))) e!1208343))))

(assert (=> b!1892438 (= tp!539798 (and (inv!28283 (left!17017 (c!308730 v!6342))) e!1208342))))

(assert (= (and b!1892438 ((_ is Node!7059) (left!17017 (c!308730 v!6342)))) b!1893024))

(assert (= b!1893025 b!1893026))

(assert (= (and b!1892438 ((_ is Leaf!10402) (left!17017 (c!308730 v!6342)))) b!1893025))

(declare-fun m!2324535 () Bool)

(assert (=> b!1893024 m!2324535))

(declare-fun m!2324537 () Bool)

(assert (=> b!1893024 m!2324537))

(declare-fun m!2324539 () Bool)

(assert (=> b!1893025 m!2324539))

(assert (=> b!1892438 m!2323905))

(declare-fun b!1893027 () Bool)

(declare-fun tp!539803 () Bool)

(declare-fun tp!539804 () Bool)

(declare-fun e!1208344 () Bool)

(assert (=> b!1893027 (= e!1208344 (and (inv!28283 (left!17017 (right!17347 (c!308730 v!6342)))) tp!539804 (inv!28283 (right!17347 (right!17347 (c!308730 v!6342)))) tp!539803))))

(declare-fun b!1893029 () Bool)

(declare-fun e!1208345 () Bool)

(declare-fun tp!539802 () Bool)

(assert (=> b!1893029 (= e!1208345 tp!539802)))

(declare-fun b!1893028 () Bool)

(assert (=> b!1893028 (= e!1208344 (and (inv!28289 (xs!9949 (right!17347 (c!308730 v!6342)))) e!1208345))))

(assert (=> b!1892438 (= tp!539797 (and (inv!28283 (right!17347 (c!308730 v!6342))) e!1208344))))

(assert (= (and b!1892438 ((_ is Node!7059) (right!17347 (c!308730 v!6342)))) b!1893027))

(assert (= b!1893028 b!1893029))

(assert (= (and b!1892438 ((_ is Leaf!10402) (right!17347 (c!308730 v!6342)))) b!1893028))

(declare-fun m!2324541 () Bool)

(assert (=> b!1893027 m!2324541))

(declare-fun m!2324543 () Bool)

(assert (=> b!1893027 m!2324543))

(declare-fun m!2324545 () Bool)

(assert (=> b!1893028 m!2324545))

(assert (=> b!1892438 m!2323907))

(declare-fun b!1893049 () Bool)

(declare-fun b_free!52717 () Bool)

(declare-fun b_next!53421 () Bool)

(assert (=> b!1893049 (= b_free!52717 (not b_next!53421))))

(declare-fun tp!539815 () Bool)

(declare-fun b_and!145651 () Bool)

(assert (=> b!1893049 (= tp!539815 b_and!145651)))

(declare-fun b_free!52719 () Bool)

(declare-fun b_next!53423 () Bool)

(assert (=> b!1893049 (= b_free!52719 (not b_next!53423))))

(declare-fun tb!115129 () Bool)

(declare-fun t!175788 () Bool)

(assert (=> (and b!1893049 (= (toChars!5228 (transformation!3760 (rule!5953 (h!26602 (innerList!7119 (xs!9949 (c!308730 v!6342))))))) (toChars!5228 (transformation!3760 (rule!5953 (apply!5580 v!6342 from!837))))) t!175788) tb!115129))

(declare-fun e!1208374 () Bool)

(declare-fun tp!539822 () Bool)

(declare-fun b!1893062 () Bool)

(declare-fun inv!28290 (Conc!7058) Bool)

(assert (=> b!1893062 (= e!1208374 (and (inv!28290 (c!308728 (dynLambda!10293 (toChars!5228 (transformation!3760 (rule!5953 (apply!5580 v!6342 from!837)))) (value!118751 (apply!5580 v!6342 from!837))))) tp!539822))))

(declare-fun result!139198 () Bool)

(declare-fun inv!28291 (BalanceConc!13932) Bool)

(assert (=> tb!115129 (= result!139198 (and (inv!28291 (dynLambda!10293 (toChars!5228 (transformation!3760 (rule!5953 (apply!5580 v!6342 from!837)))) (value!118751 (apply!5580 v!6342 from!837)))) e!1208374))))

(assert (= tb!115129 b!1893062))

(declare-fun m!2324547 () Bool)

(assert (=> b!1893062 m!2324547))

(declare-fun m!2324549 () Bool)

(assert (=> tb!115129 m!2324549))

(assert (=> d!579703 t!175788))

(declare-fun t!175790 () Bool)

(declare-fun tb!115131 () Bool)

(assert (=> (and b!1893049 (= (toChars!5228 (transformation!3760 (rule!5953 (h!26602 (innerList!7119 (xs!9949 (c!308730 v!6342))))))) (toChars!5228 (transformation!3760 (rule!5953 (apply!5580 v!6342 (+ 1 from!837)))))) t!175790) tb!115131))

(declare-fun b!1893063 () Bool)

(declare-fun e!1208375 () Bool)

(declare-fun tp!539823 () Bool)

(assert (=> b!1893063 (= e!1208375 (and (inv!28290 (c!308728 (dynLambda!10293 (toChars!5228 (transformation!3760 (rule!5953 (apply!5580 v!6342 (+ 1 from!837))))) (value!118751 (apply!5580 v!6342 (+ 1 from!837)))))) tp!539823))))

(declare-fun result!139202 () Bool)

(assert (=> tb!115131 (= result!139202 (and (inv!28291 (dynLambda!10293 (toChars!5228 (transformation!3760 (rule!5953 (apply!5580 v!6342 (+ 1 from!837))))) (value!118751 (apply!5580 v!6342 (+ 1 from!837))))) e!1208375))))

(assert (= tb!115131 b!1893063))

(declare-fun m!2324551 () Bool)

(assert (=> b!1893063 m!2324551))

(declare-fun m!2324553 () Bool)

(assert (=> tb!115131 m!2324553))

(assert (=> d!579815 t!175790))

(declare-fun t!175792 () Bool)

(declare-fun tb!115133 () Bool)

(assert (=> (and b!1893049 (= (toChars!5228 (transformation!3760 (rule!5953 (h!26602 (innerList!7119 (xs!9949 (c!308730 v!6342))))))) (toChars!5228 (transformation!3760 (rule!5953 (h!26602 (dropList!764 v!6342 from!837)))))) t!175792) tb!115133))

(declare-fun e!1208376 () Bool)

(declare-fun tp!539824 () Bool)

(declare-fun b!1893064 () Bool)

(assert (=> b!1893064 (= e!1208376 (and (inv!28290 (c!308728 (dynLambda!10293 (toChars!5228 (transformation!3760 (rule!5953 (h!26602 (dropList!764 v!6342 from!837))))) (value!118751 (h!26602 (dropList!764 v!6342 from!837)))))) tp!539824))))

(declare-fun result!139204 () Bool)

(assert (=> tb!115133 (= result!139204 (and (inv!28291 (dynLambda!10293 (toChars!5228 (transformation!3760 (rule!5953 (h!26602 (dropList!764 v!6342 from!837))))) (value!118751 (h!26602 (dropList!764 v!6342 from!837))))) e!1208376))))

(assert (= tb!115133 b!1893064))

(declare-fun m!2324555 () Bool)

(assert (=> b!1893064 m!2324555))

(declare-fun m!2324557 () Bool)

(assert (=> tb!115133 m!2324557))

(assert (=> d!579877 t!175792))

(declare-fun tp!539817 () Bool)

(declare-fun b_and!145653 () Bool)

(assert (=> b!1893049 (= tp!539817 (and (=> t!175788 result!139198) (=> t!175790 result!139202) (=> t!175792 result!139204) b_and!145653))))

(declare-fun e!1208365 () Bool)

(assert (=> b!1892440 (= tp!539796 e!1208365)))

(declare-fun e!1208363 () Bool)

(assert (=> b!1893049 (= e!1208363 (and tp!539815 tp!539817))))

(declare-fun tp!539818 () Bool)

(declare-fun b!1893048 () Bool)

(declare-fun e!1208366 () Bool)

(declare-fun inv!28279 (String!24598) Bool)

(declare-fun inv!28292 (TokenValueInjection!7376) Bool)

(assert (=> b!1893048 (= e!1208366 (and tp!539818 (inv!28279 (tag!4174 (rule!5953 (h!26602 (innerList!7119 (xs!9949 (c!308730 v!6342))))))) (inv!28292 (transformation!3760 (rule!5953 (h!26602 (innerList!7119 (xs!9949 (c!308730 v!6342))))))) e!1208363))))

(declare-fun e!1208364 () Bool)

(declare-fun b!1893047 () Bool)

(declare-fun tp!539816 () Bool)

(declare-fun inv!21 (TokenValue!3896) Bool)

(assert (=> b!1893047 (= e!1208364 (and (inv!21 (value!118751 (h!26602 (innerList!7119 (xs!9949 (c!308730 v!6342)))))) e!1208366 tp!539816))))

(declare-fun tp!539819 () Bool)

(declare-fun b!1893046 () Bool)

(declare-fun inv!28293 (Token!7072) Bool)

(assert (=> b!1893046 (= e!1208365 (and (inv!28293 (h!26602 (innerList!7119 (xs!9949 (c!308730 v!6342))))) e!1208364 tp!539819))))

(assert (= b!1893048 b!1893049))

(assert (= b!1893047 b!1893048))

(assert (= b!1893046 b!1893047))

(assert (= (and b!1892440 ((_ is Cons!21201) (innerList!7119 (xs!9949 (c!308730 v!6342))))) b!1893046))

(declare-fun m!2324559 () Bool)

(assert (=> b!1893048 m!2324559))

(declare-fun m!2324561 () Bool)

(assert (=> b!1893048 m!2324561))

(declare-fun m!2324563 () Bool)

(assert (=> b!1893047 m!2324563))

(declare-fun m!2324565 () Bool)

(assert (=> b!1893046 m!2324565))

(check-sat (not d!579839) (not b!1893047) (not b!1892867) (not b!1893062) (not b!1892997) (not b!1892653) (not bm!116810) (not b!1892626) (not b!1892798) (not b!1893027) (not b!1892777) (not b!1893025) (not b!1892964) (not b!1892554) (not b!1892854) (not d!579763) (not b!1892823) (not b!1892947) (not b!1892776) b_and!145653 (not bm!116876) (not b!1892852) (not b!1892812) (not b_next!53421) (not b!1892710) (not b!1892647) (not b!1892869) (not b!1892625) (not bm!116814) (not b!1892999) (not d!579805) (not d!579913) (not b!1892872) (not b!1892726) (not bm!116881) (not b!1893046) (not d!579903) (not b!1892954) (not d!579817) (not d!579825) (not b_lambda!62043) (not d!579741) (not b!1892889) (not d!579831) (not b!1892908) (not d!579859) (not b!1892558) (not b!1892998) (not d!579837) (not b!1893063) (not d!579745) (not b!1892799) (not b!1892825) (not b!1892824) (not bm!116875) (not b!1892438) (not bm!116813) (not d!579813) (not b!1892607) (not d!579727) (not b!1892995) (not b!1893026) (not d!579815) (not d!579871) (not b!1892822) (not d!579757) (not bm!116879) (not b!1892663) b_and!145651 (not b!1892821) (not b_lambda!62047) (not bm!116805) (not b!1893048) (not b!1892560) (not b!1892712) (not b!1892820) (not b!1893015) (not b!1893008) (not d!579765) (not bm!116872) (not d!579821) (not bm!116873) (not b!1893029) (not b!1892627) (not d!579759) (not b!1893064) (not b!1892788) (not b!1892826) (not d!579877) (not b!1892834) (not b!1892570) (not tb!115129) (not b!1892887) (not b!1892622) (not d!579809) (not b!1892881) (not bm!116815) (not b!1892864) (not d!579907) (not bm!116874) (not d!579785) (not b!1892646) (not bm!116817) (not bm!116870) (not b!1892782) (not tb!115131) (not b!1892870) (not b!1892853) (not b!1892945) (not b!1892856) (not b!1892948) (not b!1892670) (not d!579743) (not b!1893000) (not b!1892797) (not d!579819) (not d!579827) (not d!579811) (not d!579761) (not b!1893023) (not b!1892559) (not d!579849) (not b!1892565) (not b!1892672) (not d!579747) (not b!1892778) (not b!1892855) (not d!579829) (not b!1892709) (not d!579801) (not b!1892608) (not b_lambda!62045) (not b!1892944) (not b!1892624) (not b!1892800) (not b!1893024) (not b!1892844) (not b!1892996) (not tb!115133) (not b!1892671) (not b!1892786) (not b_next!53423) (not bm!116806) (not d!579881) (not b!1892673) (not b!1893028) (not d!579875) (not b!1892891) (not b!1892811) (not b!1892956) (not b!1892715) (not b!1892623) (not b!1892873) (not b!1892781) (not b!1892784) (not b!1892783) (not b!1892655))
(check-sat b_and!145651 b_and!145653 (not b_next!53421) (not b_next!53423))
