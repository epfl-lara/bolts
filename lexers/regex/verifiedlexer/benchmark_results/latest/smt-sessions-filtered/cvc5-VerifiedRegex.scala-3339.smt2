; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!189462 () Bool)

(assert start!189462)

(declare-fun res!844628 () Bool)

(declare-fun e!1207734 () Bool)

(assert (=> start!189462 (=> (not res!844628) (not e!1207734))))

(declare-datatypes ((LexerInterface!3366 0))(
  ( (LexerInterfaceExt!3363 (__x!13276 Int)) (Lexer!3364) )
))
(declare-fun thiss!13601 () LexerInterface!3366)

(declare-fun from!837 () Int)

(assert (=> start!189462 (= res!844628 (and (is-Lexer!3364 thiss!13601) (>= from!837 0)))))

(assert (=> start!189462 e!1207734))

(assert (=> start!189462 true))

(declare-datatypes ((List!21260 0))(
  ( (Nil!21178) (Cons!21178 (h!26579 (_ BitVec 16)) (t!175749 List!21260)) )
))
(declare-datatypes ((TokenValue!3889 0))(
  ( (FloatLiteralValue!7778 (text!27668 List!21260)) (TokenValueExt!3888 (__x!13277 Int)) (Broken!19445 (value!118527 List!21260)) (Object!3970) (End!3889) (Def!3889) (Underscore!3889) (Match!3889) (Else!3889) (Error!3889) (Case!3889) (If!3889) (Extends!3889) (Abstract!3889) (Class!3889) (Val!3889) (DelimiterValue!7778 (del!3949 List!21260)) (KeywordValue!3895 (value!118528 List!21260)) (CommentValue!7778 (value!118529 List!21260)) (WhitespaceValue!7778 (value!118530 List!21260)) (IndentationValue!3889 (value!118531 List!21260)) (String!24564) (Int32!3889) (Broken!19446 (value!118532 List!21260)) (Boolean!3890) (Unit!35558) (OperatorValue!3892 (op!3949 List!21260)) (IdentifierValue!7778 (value!118533 List!21260)) (IdentifierValue!7779 (value!118534 List!21260)) (WhitespaceValue!7779 (value!118535 List!21260)) (True!7778) (False!7778) (Broken!19447 (value!118536 List!21260)) (Broken!19448 (value!118537 List!21260)) (True!7779) (RightBrace!3889) (RightBracket!3889) (Colon!3889) (Null!3889) (Comma!3889) (LeftBracket!3889) (False!7779) (LeftBrace!3889) (ImaginaryLiteralValue!3889 (text!27669 List!21260)) (StringLiteralValue!11667 (value!118538 List!21260)) (EOFValue!3889 (value!118539 List!21260)) (IdentValue!3889 (value!118540 List!21260)) (DelimiterValue!7779 (value!118541 List!21260)) (DedentValue!3889 (value!118542 List!21260)) (NewLineValue!3889 (value!118543 List!21260)) (IntegerValue!11667 (value!118544 (_ BitVec 32)) (text!27670 List!21260)) (IntegerValue!11668 (value!118545 Int) (text!27671 List!21260)) (Times!3889) (Or!3889) (Equal!3889) (Minus!3889) (Broken!19449 (value!118546 List!21260)) (And!3889) (Div!3889) (LessEqual!3889) (Mod!3889) (Concat!9067) (Not!3889) (Plus!3889) (SpaceValue!3889 (value!118547 List!21260)) (IntegerValue!11669 (value!118548 Int) (text!27672 List!21260)) (StringLiteralValue!11668 (text!27673 List!21260)) (FloatLiteralValue!7779 (text!27674 List!21260)) (BytesLiteralValue!3889 (value!118549 List!21260)) (CommentValue!7779 (value!118550 List!21260)) (StringLiteralValue!11669 (value!118551 List!21260)) (ErrorTokenValue!3889 (msg!3950 List!21260)) )
))
(declare-datatypes ((C!10502 0))(
  ( (C!10503 (val!6203 Int)) )
))
(declare-datatypes ((List!21261 0))(
  ( (Nil!21179) (Cons!21179 (h!26580 C!10502) (t!175750 List!21261)) )
))
(declare-datatypes ((IArray!14093 0))(
  ( (IArray!14094 (innerList!7104 List!21261)) )
))
(declare-datatypes ((Conc!7044 0))(
  ( (Node!7044 (left!16999 Conc!7044) (right!17329 Conc!7044) (csize!14318 Int) (cheight!7255 Int)) (Leaf!10384 (xs!9934 IArray!14093) (csize!14319 Int)) (Empty!7044) )
))
(declare-datatypes ((BalanceConc!13904 0))(
  ( (BalanceConc!13905 (c!308653 Conc!7044)) )
))
(declare-datatypes ((Regex!5178 0))(
  ( (ElementMatch!5178 (c!308654 C!10502)) (Concat!9068 (regOne!10868 Regex!5178) (regTwo!10868 Regex!5178)) (EmptyExpr!5178) (Star!5178 (reg!5507 Regex!5178)) (EmptyLang!5178) (Union!5178 (regOne!10869 Regex!5178) (regTwo!10869 Regex!5178)) )
))
(declare-datatypes ((String!24565 0))(
  ( (String!24566 (value!118552 String)) )
))
(declare-datatypes ((TokenValueInjection!7362 0))(
  ( (TokenValueInjection!7363 (toValue!5362 Int) (toChars!5221 Int)) )
))
(declare-datatypes ((Rule!7306 0))(
  ( (Rule!7307 (regex!3753 Regex!5178) (tag!4167 String!24565) (isSeparator!3753 Bool) (transformation!3753 TokenValueInjection!7362)) )
))
(declare-datatypes ((Token!7058 0))(
  ( (Token!7059 (value!118553 TokenValue!3889) (rule!5946 Rule!7306) (size!16786 Int) (originalCharacters!4560 List!21261)) )
))
(declare-datatypes ((List!21262 0))(
  ( (Nil!21180) (Cons!21180 (h!26581 Token!7058) (t!175751 List!21262)) )
))
(declare-datatypes ((IArray!14095 0))(
  ( (IArray!14096 (innerList!7105 List!21262)) )
))
(declare-datatypes ((Conc!7045 0))(
  ( (Node!7045 (left!17000 Conc!7045) (right!17330 Conc!7045) (csize!14320 Int) (cheight!7256 Int)) (Leaf!10385 (xs!9935 IArray!14095) (csize!14321 Int)) (Empty!7045) )
))
(declare-datatypes ((BalanceConc!13906 0))(
  ( (BalanceConc!13907 (c!308655 Conc!7045)) )
))
(declare-fun v!6342 () BalanceConc!13906)

(declare-fun e!1207735 () Bool)

(declare-fun inv!28251 (BalanceConc!13906) Bool)

(assert (=> start!189462 (and (inv!28251 v!6342) e!1207735)))

(declare-fun b!1891991 () Bool)

(declare-fun e!1207733 () Bool)

(assert (=> b!1891991 (= e!1207734 e!1207733)))

(declare-fun res!844627 () Bool)

(assert (=> b!1891991 (=> (not res!844627) (not e!1207733))))

(declare-fun lt!724273 () Int)

(assert (=> b!1891991 (= res!844627 (and (<= from!837 lt!724273) (< from!837 lt!724273)))))

(declare-fun size!16787 (BalanceConc!13906) Int)

(assert (=> b!1891991 (= lt!724273 (size!16787 v!6342))))

(declare-fun b!1891992 () Bool)

(declare-fun size!16788 (List!21262) Int)

(declare-fun list!8596 (BalanceConc!13906) List!21262)

(assert (=> b!1891992 (= e!1207733 (>= from!837 (size!16788 (list!8596 v!6342))))))

(declare-fun b!1891993 () Bool)

(declare-fun tp!539723 () Bool)

(declare-fun inv!28252 (Conc!7045) Bool)

(assert (=> b!1891993 (= e!1207735 (and (inv!28252 (c!308655 v!6342)) tp!539723))))

(assert (= (and start!189462 res!844628) b!1891991))

(assert (= (and b!1891991 res!844627) b!1891992))

(assert (= start!189462 b!1891993))

(declare-fun m!2323371 () Bool)

(assert (=> start!189462 m!2323371))

(declare-fun m!2323373 () Bool)

(assert (=> b!1891991 m!2323373))

(declare-fun m!2323375 () Bool)

(assert (=> b!1891992 m!2323375))

(assert (=> b!1891992 m!2323375))

(declare-fun m!2323377 () Bool)

(assert (=> b!1891992 m!2323377))

(declare-fun m!2323379 () Bool)

(assert (=> b!1891993 m!2323379))

(push 1)

(assert (not start!189462))

(assert (not b!1891993))

(assert (not b!1891992))

(assert (not b!1891991))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!579578 () Bool)

(declare-fun isBalanced!2216 (Conc!7045) Bool)

(assert (=> d!579578 (= (inv!28251 v!6342) (isBalanced!2216 (c!308655 v!6342)))))

(declare-fun bs!413167 () Bool)

(assert (= bs!413167 d!579578))

(declare-fun m!2323391 () Bool)

(assert (=> bs!413167 m!2323391))

(assert (=> start!189462 d!579578))

(declare-fun d!579580 () Bool)

(declare-fun c!308664 () Bool)

(assert (=> d!579580 (= c!308664 (is-Node!7045 (c!308655 v!6342)))))

(declare-fun e!1207755 () Bool)

(assert (=> d!579580 (= (inv!28252 (c!308655 v!6342)) e!1207755)))

(declare-fun b!1892018 () Bool)

(declare-fun inv!28255 (Conc!7045) Bool)

(assert (=> b!1892018 (= e!1207755 (inv!28255 (c!308655 v!6342)))))

(declare-fun b!1892019 () Bool)

(declare-fun e!1207756 () Bool)

(assert (=> b!1892019 (= e!1207755 e!1207756)))

(declare-fun res!844640 () Bool)

(assert (=> b!1892019 (= res!844640 (not (is-Leaf!10385 (c!308655 v!6342))))))

(assert (=> b!1892019 (=> res!844640 e!1207756)))

(declare-fun b!1892020 () Bool)

(declare-fun inv!28256 (Conc!7045) Bool)

(assert (=> b!1892020 (= e!1207756 (inv!28256 (c!308655 v!6342)))))

(assert (= (and d!579580 c!308664) b!1892018))

(assert (= (and d!579580 (not c!308664)) b!1892019))

(assert (= (and b!1892019 (not res!844640)) b!1892020))

(declare-fun m!2323395 () Bool)

(assert (=> b!1892018 m!2323395))

(declare-fun m!2323399 () Bool)

(assert (=> b!1892020 m!2323399))

(assert (=> b!1891993 d!579580))

(declare-fun d!579582 () Bool)

(declare-fun lt!724281 () Int)

(assert (=> d!579582 (>= lt!724281 0)))

(declare-fun e!1207761 () Int)

(assert (=> d!579582 (= lt!724281 e!1207761)))

(declare-fun c!308669 () Bool)

(assert (=> d!579582 (= c!308669 (is-Nil!21180 (list!8596 v!6342)))))

(assert (=> d!579582 (= (size!16788 (list!8596 v!6342)) lt!724281)))

(declare-fun b!1892029 () Bool)

(assert (=> b!1892029 (= e!1207761 0)))

(declare-fun b!1892030 () Bool)

(assert (=> b!1892030 (= e!1207761 (+ 1 (size!16788 (t!175751 (list!8596 v!6342)))))))

(assert (= (and d!579582 c!308669) b!1892029))

(assert (= (and d!579582 (not c!308669)) b!1892030))

(declare-fun m!2323401 () Bool)

(assert (=> b!1892030 m!2323401))

(assert (=> b!1891992 d!579582))

(declare-fun d!579586 () Bool)

(declare-fun list!8598 (Conc!7045) List!21262)

(assert (=> d!579586 (= (list!8596 v!6342) (list!8598 (c!308655 v!6342)))))

(declare-fun bs!413168 () Bool)

(assert (= bs!413168 d!579586))

(declare-fun m!2323403 () Bool)

(assert (=> bs!413168 m!2323403))

(assert (=> b!1891992 d!579586))

(declare-fun d!579588 () Bool)

(declare-fun lt!724285 () Int)

(assert (=> d!579588 (= lt!724285 (size!16788 (list!8596 v!6342)))))

(declare-fun size!16792 (Conc!7045) Int)

(assert (=> d!579588 (= lt!724285 (size!16792 (c!308655 v!6342)))))

(assert (=> d!579588 (= (size!16787 v!6342) lt!724285)))

(declare-fun bs!413169 () Bool)

(assert (= bs!413169 d!579588))

(assert (=> bs!413169 m!2323375))

(assert (=> bs!413169 m!2323375))

(assert (=> bs!413169 m!2323377))

(declare-fun m!2323409 () Bool)

(assert (=> bs!413169 m!2323409))

(assert (=> b!1891991 d!579588))

(declare-fun tp!539735 () Bool)

(declare-fun e!1207767 () Bool)

(declare-fun b!1892041 () Bool)

(declare-fun tp!539734 () Bool)

(assert (=> b!1892041 (= e!1207767 (and (inv!28252 (left!17000 (c!308655 v!6342))) tp!539734 (inv!28252 (right!17330 (c!308655 v!6342))) tp!539735))))

(declare-fun b!1892043 () Bool)

(declare-fun e!1207768 () Bool)

(declare-fun tp!539733 () Bool)

(assert (=> b!1892043 (= e!1207768 tp!539733)))

(declare-fun b!1892042 () Bool)

(declare-fun inv!28258 (IArray!14095) Bool)

(assert (=> b!1892042 (= e!1207767 (and (inv!28258 (xs!9935 (c!308655 v!6342))) e!1207768))))

(assert (=> b!1891993 (= tp!539723 (and (inv!28252 (c!308655 v!6342)) e!1207767))))

(assert (= (and b!1891993 (is-Node!7045 (c!308655 v!6342))) b!1892041))

(assert (= b!1892042 b!1892043))

(assert (= (and b!1891993 (is-Leaf!10385 (c!308655 v!6342))) b!1892042))

(declare-fun m!2323411 () Bool)

(assert (=> b!1892041 m!2323411))

(declare-fun m!2323413 () Bool)

(assert (=> b!1892041 m!2323413))

(declare-fun m!2323415 () Bool)

(assert (=> b!1892042 m!2323415))

(assert (=> b!1891993 m!2323379))

(push 1)

(assert (not d!579578))

(assert (not b!1891993))

(assert (not b!1892041))

(assert (not d!579588))

(assert (not b!1892043))

(assert (not b!1892020))

(assert (not b!1892030))

(assert (not d!579586))

(assert (not b!1892042))

(assert (not b!1892018))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

