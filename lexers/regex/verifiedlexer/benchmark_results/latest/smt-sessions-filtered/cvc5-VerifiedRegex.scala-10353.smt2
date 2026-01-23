; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!537310 () Bool)

(assert start!537310)

(declare-fun b!5096434 () Bool)

(declare-fun b_free!133491 () Bool)

(declare-fun b_next!134281 () Bool)

(assert (=> b!5096434 (= b_free!133491 (not b_next!134281))))

(declare-fun tp!1421267 () Bool)

(declare-fun b_and!350383 () Bool)

(assert (=> b!5096434 (= tp!1421267 b_and!350383)))

(declare-fun b_free!133493 () Bool)

(declare-fun b_next!134283 () Bool)

(assert (=> b!5096434 (= b_free!133493 (not b_next!134283))))

(declare-fun tp!1421264 () Bool)

(declare-fun b_and!350385 () Bool)

(assert (=> b!5096434 (= tp!1421264 b_and!350385)))

(declare-fun b!5096432 () Bool)

(declare-fun e!3178506 () Bool)

(declare-datatypes ((C!28258 0))(
  ( (C!28259 (val!23781 Int)) )
))
(declare-datatypes ((List!58787 0))(
  ( (Nil!58663) (Cons!58663 (h!65111 C!28258) (t!371752 List!58787)) )
))
(declare-datatypes ((IArray!31455 0))(
  ( (IArray!31456 (innerList!15785 List!58787)) )
))
(declare-datatypes ((Conc!15697 0))(
  ( (Node!15697 (left!43078 Conc!15697) (right!43408 Conc!15697) (csize!31624 Int) (cheight!15908 Int)) (Leaf!26051 (xs!19079 IArray!31455) (csize!31625 Int)) (Empty!15697) )
))
(declare-datatypes ((Regex!14000 0))(
  ( (ElementMatch!14000 (c!875658 C!28258)) (Concat!22839 (regOne!28512 Regex!14000) (regTwo!28512 Regex!14000)) (EmptyExpr!14000) (Star!14000 (reg!14329 Regex!14000)) (EmptyLang!14000) (Union!14000 (regOne!28513 Regex!14000) (regTwo!28513 Regex!14000)) )
))
(declare-datatypes ((String!67118 0))(
  ( (String!67119 (value!273240 String)) )
))
(declare-datatypes ((List!58788 0))(
  ( (Nil!58664) (Cons!58664 (h!65112 (_ BitVec 16)) (t!371753 List!58788)) )
))
(declare-datatypes ((TokenValue!8839 0))(
  ( (FloatLiteralValue!17678 (text!62318 List!58788)) (TokenValueExt!8838 (__x!34967 Int)) (Broken!44195 (value!273241 List!58788)) (Object!8962) (End!8839) (Def!8839) (Underscore!8839) (Match!8839) (Else!8839) (Error!8839) (Case!8839) (If!8839) (Extends!8839) (Abstract!8839) (Class!8839) (Val!8839) (DelimiterValue!17678 (del!8899 List!58788)) (KeywordValue!8845 (value!273242 List!58788)) (CommentValue!17678 (value!273243 List!58788)) (WhitespaceValue!17678 (value!273244 List!58788)) (IndentationValue!8839 (value!273245 List!58788)) (String!67120) (Int32!8839) (Broken!44196 (value!273246 List!58788)) (Boolean!8840) (Unit!149701) (OperatorValue!8842 (op!8899 List!58788)) (IdentifierValue!17678 (value!273247 List!58788)) (IdentifierValue!17679 (value!273248 List!58788)) (WhitespaceValue!17679 (value!273249 List!58788)) (True!17678) (False!17678) (Broken!44197 (value!273250 List!58788)) (Broken!44198 (value!273251 List!58788)) (True!17679) (RightBrace!8839) (RightBracket!8839) (Colon!8839) (Null!8839) (Comma!8839) (LeftBracket!8839) (False!17679) (LeftBrace!8839) (ImaginaryLiteralValue!8839 (text!62319 List!58788)) (StringLiteralValue!26517 (value!273252 List!58788)) (EOFValue!8839 (value!273253 List!58788)) (IdentValue!8839 (value!273254 List!58788)) (DelimiterValue!17679 (value!273255 List!58788)) (DedentValue!8839 (value!273256 List!58788)) (NewLineValue!8839 (value!273257 List!58788)) (IntegerValue!26517 (value!273258 (_ BitVec 32)) (text!62320 List!58788)) (IntegerValue!26518 (value!273259 Int) (text!62321 List!58788)) (Times!8839) (Or!8839) (Equal!8839) (Minus!8839) (Broken!44199 (value!273260 List!58788)) (And!8839) (Div!8839) (LessEqual!8839) (Mod!8839) (Concat!22840) (Not!8839) (Plus!8839) (SpaceValue!8839 (value!273261 List!58788)) (IntegerValue!26519 (value!273262 Int) (text!62322 List!58788)) (StringLiteralValue!26518 (text!62323 List!58788)) (FloatLiteralValue!17679 (text!62324 List!58788)) (BytesLiteralValue!8839 (value!273263 List!58788)) (CommentValue!17679 (value!273264 List!58788)) (StringLiteralValue!26519 (value!273265 List!58788)) (ErrorTokenValue!8839 (msg!8900 List!58788)) )
))
(declare-datatypes ((BalanceConc!30512 0))(
  ( (BalanceConc!30513 (c!875659 Conc!15697)) )
))
(declare-datatypes ((TokenValueInjection!16986 0))(
  ( (TokenValueInjection!16987 (toValue!11548 Int) (toChars!11407 Int)) )
))
(declare-datatypes ((Rule!16850 0))(
  ( (Rule!16851 (regex!8525 Regex!14000) (tag!9389 String!67118) (isSeparator!8525 Bool) (transformation!8525 TokenValueInjection!16986)) )
))
(declare-fun rule!158 () Rule!16850)

(declare-fun validRegex!6127 (Regex!14000) Bool)

(assert (=> b!5096432 (= e!3178506 (not (validRegex!6127 (regex!8525 rule!158))))))

(declare-fun res!2169049 () Bool)

(assert (=> start!537310 (=> (not res!2169049) (not e!3178506))))

(declare-datatypes ((LexerInterface!8117 0))(
  ( (LexerInterfaceExt!8114 (__x!34968 Int)) (Lexer!8115) )
))
(declare-fun thiss!15916 () LexerInterface!8117)

(assert (=> start!537310 (= res!2169049 (is-Lexer!8115 thiss!15916))))

(assert (=> start!537310 e!3178506))

(assert (=> start!537310 true))

(declare-fun e!3178503 () Bool)

(assert (=> start!537310 e!3178503))

(declare-fun e!3178504 () Bool)

(assert (=> start!537310 e!3178504))

(declare-fun b!5096433 () Bool)

(declare-fun tp_is_empty!37265 () Bool)

(declare-fun tp!1421266 () Bool)

(assert (=> b!5096433 (= e!3178504 (and tp_is_empty!37265 tp!1421266))))

(declare-fun e!3178505 () Bool)

(assert (=> b!5096434 (= e!3178505 (and tp!1421267 tp!1421264))))

(declare-fun b!5096435 () Bool)

(declare-fun res!2169048 () Bool)

(assert (=> b!5096435 (=> (not res!2169048) (not e!3178506))))

(declare-fun input!1493 () List!58787)

(declare-fun isEmpty!31753 (List!58787) Bool)

(declare-datatypes ((tuple2!63386 0))(
  ( (tuple2!63387 (_1!34996 List!58787) (_2!34996 List!58787)) )
))
(declare-fun findLongestMatchWithZipper!120 (Regex!14000 List!58787) tuple2!63386)

(assert (=> b!5096435 (= res!2169048 (not (isEmpty!31753 (_1!34996 (findLongestMatchWithZipper!120 (regex!8525 rule!158) input!1493)))))))

(declare-fun b!5096436 () Bool)

(declare-fun tp!1421265 () Bool)

(declare-fun inv!78159 (String!67118) Bool)

(declare-fun inv!78162 (TokenValueInjection!16986) Bool)

(assert (=> b!5096436 (= e!3178503 (and tp!1421265 (inv!78159 (tag!9389 rule!158)) (inv!78162 (transformation!8525 rule!158)) e!3178505))))

(declare-fun b!5096437 () Bool)

(declare-fun res!2169047 () Bool)

(assert (=> b!5096437 (=> (not res!2169047) (not e!3178506))))

(declare-fun ruleValid!3917 (LexerInterface!8117 Rule!16850) Bool)

(assert (=> b!5096437 (= res!2169047 (ruleValid!3917 thiss!15916 rule!158))))

(assert (= (and start!537310 res!2169049) b!5096437))

(assert (= (and b!5096437 res!2169047) b!5096435))

(assert (= (and b!5096435 res!2169048) b!5096432))

(assert (= b!5096436 b!5096434))

(assert (= start!537310 b!5096436))

(assert (= (and start!537310 (is-Cons!58663 input!1493)) b!5096433))

(declare-fun m!6153658 () Bool)

(assert (=> b!5096432 m!6153658))

(declare-fun m!6153660 () Bool)

(assert (=> b!5096435 m!6153660))

(declare-fun m!6153662 () Bool)

(assert (=> b!5096435 m!6153662))

(declare-fun m!6153664 () Bool)

(assert (=> b!5096436 m!6153664))

(declare-fun m!6153666 () Bool)

(assert (=> b!5096436 m!6153666))

(declare-fun m!6153668 () Bool)

(assert (=> b!5096437 m!6153668))

(push 1)

(assert tp_is_empty!37265)

(assert b_and!350383)

(assert (not b!5096437))

(assert (not b!5096433))

(assert (not b!5096436))

(assert (not b!5096432))

(assert (not b_next!134281))

(assert (not b!5096435))

(assert b_and!350385)

(assert (not b_next!134283))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350385)

(assert b_and!350383)

(assert (not b_next!134281))

(assert (not b_next!134283))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1649122 () Bool)

(assert (=> d!1649122 (= (isEmpty!31753 (_1!34996 (findLongestMatchWithZipper!120 (regex!8525 rule!158) input!1493))) (is-Nil!58663 (_1!34996 (findLongestMatchWithZipper!120 (regex!8525 rule!158) input!1493))))))

(assert (=> b!5096435 d!1649122))

(declare-fun d!1649124 () Bool)

(declare-fun lt!2093988 () tuple2!63386)

(declare-fun findLongestMatch!1834 (Regex!14000 List!58787) tuple2!63386)

(assert (=> d!1649124 (= lt!2093988 (findLongestMatch!1834 (regex!8525 rule!158) input!1493))))

(declare-datatypes ((List!58791 0))(
  ( (Nil!58667) (Cons!58667 (h!65115 Regex!14000) (t!371756 List!58791)) )
))
(declare-datatypes ((Context!6768 0))(
  ( (Context!6769 (exprs!3884 List!58791)) )
))
(declare-fun lt!2093989 () (Set Context!6768))

(declare-fun findLongestMatchZipper!26 ((Set Context!6768) List!58787) tuple2!63386)

(assert (=> d!1649124 (= lt!2093988 (findLongestMatchZipper!26 lt!2093989 input!1493))))

(declare-datatypes ((Unit!149703 0))(
  ( (Unit!149704) )
))
(declare-fun lt!2093985 () Unit!149703)

(declare-fun lt!2093991 () Unit!149703)

(assert (=> d!1649124 (= lt!2093985 lt!2093991)))

(declare-fun lt!2093990 () Int)

(declare-fun sizeTr!412 (List!58787 Int) Int)

(declare-fun size!39298 (List!58787) Int)

(assert (=> d!1649124 (= (sizeTr!412 input!1493 lt!2093990) (+ (size!39298 input!1493) lt!2093990))))

(declare-fun lemmaSizeTrEqualsSize!411 (List!58787 Int) Unit!149703)

(assert (=> d!1649124 (= lt!2093991 (lemmaSizeTrEqualsSize!411 input!1493 lt!2093990))))

(assert (=> d!1649124 (= lt!2093990 0)))

(declare-fun lt!2093987 () Unit!149703)

(declare-fun lt!2093986 () Unit!149703)

(assert (=> d!1649124 (= lt!2093987 lt!2093986)))

(assert (=> d!1649124 (= (findLongestMatchZipper!26 lt!2093989 input!1493) (findLongestMatch!1834 (regex!8525 rule!158) input!1493))))

(declare-fun longestMatchSameAsRegex!23 (Regex!14000 (Set Context!6768) List!58787) Unit!149703)

(assert (=> d!1649124 (= lt!2093986 (longestMatchSameAsRegex!23 (regex!8525 rule!158) lt!2093989 input!1493))))

(declare-fun focus!362 (Regex!14000) (Set Context!6768))

(assert (=> d!1649124 (= lt!2093989 (focus!362 (regex!8525 rule!158)))))

(assert (=> d!1649124 (validRegex!6127 (regex!8525 rule!158))))

(assert (=> d!1649124 (= (findLongestMatchWithZipper!120 (regex!8525 rule!158) input!1493) lt!2093988)))

(declare-fun bs!1191338 () Bool)

(assert (= bs!1191338 d!1649124))

(declare-fun m!6153682 () Bool)

(assert (=> bs!1191338 m!6153682))

(declare-fun m!6153684 () Bool)

(assert (=> bs!1191338 m!6153684))

(declare-fun m!6153686 () Bool)

(assert (=> bs!1191338 m!6153686))

(declare-fun m!6153688 () Bool)

(assert (=> bs!1191338 m!6153688))

(declare-fun m!6153690 () Bool)

(assert (=> bs!1191338 m!6153690))

(declare-fun m!6153692 () Bool)

(assert (=> bs!1191338 m!6153692))

(assert (=> bs!1191338 m!6153658))

(declare-fun m!6153694 () Bool)

(assert (=> bs!1191338 m!6153694))

(assert (=> b!5096435 d!1649124))

(declare-fun d!1649130 () Bool)

(assert (=> d!1649130 (= (inv!78159 (tag!9389 rule!158)) (= (mod (str.len (value!273240 (tag!9389 rule!158))) 2) 0))))

(assert (=> b!5096436 d!1649130))

(declare-fun d!1649132 () Bool)

(declare-fun res!2169065 () Bool)

(declare-fun e!3178524 () Bool)

(assert (=> d!1649132 (=> (not res!2169065) (not e!3178524))))

(declare-fun semiInverseModEq!3796 (Int Int) Bool)

(assert (=> d!1649132 (= res!2169065 (semiInverseModEq!3796 (toChars!11407 (transformation!8525 rule!158)) (toValue!11548 (transformation!8525 rule!158))))))

(assert (=> d!1649132 (= (inv!78162 (transformation!8525 rule!158)) e!3178524)))

(declare-fun b!5096458 () Bool)

(declare-fun equivClasses!3611 (Int Int) Bool)

(assert (=> b!5096458 (= e!3178524 (equivClasses!3611 (toChars!11407 (transformation!8525 rule!158)) (toValue!11548 (transformation!8525 rule!158))))))

(assert (= (and d!1649132 res!2169065) b!5096458))

(declare-fun m!6153696 () Bool)

(assert (=> d!1649132 m!6153696))

(declare-fun m!6153698 () Bool)

(assert (=> b!5096458 m!6153698))

(assert (=> b!5096436 d!1649132))

(declare-fun d!1649134 () Bool)

(declare-fun res!2169070 () Bool)

(declare-fun e!3178527 () Bool)

(assert (=> d!1649134 (=> (not res!2169070) (not e!3178527))))

(assert (=> d!1649134 (= res!2169070 (validRegex!6127 (regex!8525 rule!158)))))

(assert (=> d!1649134 (= (ruleValid!3917 thiss!15916 rule!158) e!3178527)))

(declare-fun b!5096463 () Bool)

(declare-fun res!2169071 () Bool)

(assert (=> b!5096463 (=> (not res!2169071) (not e!3178527))))

(declare-fun nullable!4703 (Regex!14000) Bool)

(assert (=> b!5096463 (= res!2169071 (not (nullable!4703 (regex!8525 rule!158))))))

(declare-fun b!5096464 () Bool)

(assert (=> b!5096464 (= e!3178527 (not (= (tag!9389 rule!158) (String!67119 ""))))))

(assert (= (and d!1649134 res!2169070) b!5096463))

(assert (= (and b!5096463 res!2169071) b!5096464))

(assert (=> d!1649134 m!6153658))

(declare-fun m!6153700 () Bool)

(assert (=> b!5096463 m!6153700))

(assert (=> b!5096437 d!1649134))

(declare-fun b!5096483 () Bool)

(declare-fun e!3178542 () Bool)

(declare-fun e!3178543 () Bool)

(assert (=> b!5096483 (= e!3178542 e!3178543)))

(declare-fun res!2169082 () Bool)

(assert (=> b!5096483 (= res!2169082 (not (nullable!4703 (reg!14329 (regex!8525 rule!158)))))))

(assert (=> b!5096483 (=> (not res!2169082) (not e!3178543))))

(declare-fun b!5096484 () Bool)

(declare-fun e!3178545 () Bool)

(declare-fun e!3178546 () Bool)

(assert (=> b!5096484 (= e!3178545 e!3178546)))

(declare-fun res!2169086 () Bool)

(assert (=> b!5096484 (=> (not res!2169086) (not e!3178546))))

(declare-fun call!354806 () Bool)

(assert (=> b!5096484 (= res!2169086 call!354806)))

(declare-fun b!5096485 () Bool)

(declare-fun call!354804 () Bool)

(assert (=> b!5096485 (= e!3178543 call!354804)))

(declare-fun b!5096486 () Bool)

(declare-fun call!354805 () Bool)

(assert (=> b!5096486 (= e!3178546 call!354805)))

(declare-fun d!1649136 () Bool)

(declare-fun res!2169085 () Bool)

(declare-fun e!3178544 () Bool)

(assert (=> d!1649136 (=> res!2169085 e!3178544)))

(assert (=> d!1649136 (= res!2169085 (is-ElementMatch!14000 (regex!8525 rule!158)))))

(assert (=> d!1649136 (= (validRegex!6127 (regex!8525 rule!158)) e!3178544)))

(declare-fun bm!354799 () Bool)

(declare-fun c!875666 () Bool)

(assert (=> bm!354799 (= call!354805 (validRegex!6127 (ite c!875666 (regOne!28513 (regex!8525 rule!158)) (regTwo!28512 (regex!8525 rule!158)))))))

(declare-fun b!5096487 () Bool)

(declare-fun e!3178547 () Bool)

(assert (=> b!5096487 (= e!3178542 e!3178547)))

(assert (=> b!5096487 (= c!875666 (is-Union!14000 (regex!8525 rule!158)))))

(declare-fun bm!354800 () Bool)

(declare-fun c!875667 () Bool)

(assert (=> bm!354800 (= call!354804 (validRegex!6127 (ite c!875667 (reg!14329 (regex!8525 rule!158)) (ite c!875666 (regTwo!28513 (regex!8525 rule!158)) (regOne!28512 (regex!8525 rule!158))))))))

(declare-fun b!5096488 () Bool)

(declare-fun e!3178548 () Bool)

(assert (=> b!5096488 (= e!3178548 call!354806)))

(declare-fun b!5096489 () Bool)

(declare-fun res!2169084 () Bool)

(assert (=> b!5096489 (=> (not res!2169084) (not e!3178548))))

(assert (=> b!5096489 (= res!2169084 call!354805)))

(assert (=> b!5096489 (= e!3178547 e!3178548)))

(declare-fun bm!354801 () Bool)

(assert (=> bm!354801 (= call!354806 call!354804)))

(declare-fun b!5096490 () Bool)

(assert (=> b!5096490 (= e!3178544 e!3178542)))

(assert (=> b!5096490 (= c!875667 (is-Star!14000 (regex!8525 rule!158)))))

(declare-fun b!5096491 () Bool)

(declare-fun res!2169083 () Bool)

(assert (=> b!5096491 (=> res!2169083 e!3178545)))

(assert (=> b!5096491 (= res!2169083 (not (is-Concat!22839 (regex!8525 rule!158))))))

(assert (=> b!5096491 (= e!3178547 e!3178545)))

(assert (= (and d!1649136 (not res!2169085)) b!5096490))

(assert (= (and b!5096490 c!875667) b!5096483))

(assert (= (and b!5096490 (not c!875667)) b!5096487))

(assert (= (and b!5096483 res!2169082) b!5096485))

(assert (= (and b!5096487 c!875666) b!5096489))

(assert (= (and b!5096487 (not c!875666)) b!5096491))

(assert (= (and b!5096489 res!2169084) b!5096488))

(assert (= (and b!5096491 (not res!2169083)) b!5096484))

(assert (= (and b!5096484 res!2169086) b!5096486))

(assert (= (or b!5096489 b!5096486) bm!354799))

(assert (= (or b!5096488 b!5096484) bm!354801))

(assert (= (or b!5096485 bm!354801) bm!354800))

(declare-fun m!6153702 () Bool)

(assert (=> b!5096483 m!6153702))

(declare-fun m!6153704 () Bool)

(assert (=> bm!354799 m!6153704))

(declare-fun m!6153706 () Bool)

(assert (=> bm!354800 m!6153706))

(assert (=> b!5096432 d!1649136))

(declare-fun b!5096505 () Bool)

(declare-fun e!3178551 () Bool)

(declare-fun tp!1421293 () Bool)

(declare-fun tp!1421290 () Bool)

(assert (=> b!5096505 (= e!3178551 (and tp!1421293 tp!1421290))))

(assert (=> b!5096436 (= tp!1421265 e!3178551)))

(declare-fun b!5096504 () Bool)

(declare-fun tp!1421294 () Bool)

(assert (=> b!5096504 (= e!3178551 tp!1421294)))

(declare-fun b!5096503 () Bool)

(declare-fun tp!1421292 () Bool)

(declare-fun tp!1421291 () Bool)

(assert (=> b!5096503 (= e!3178551 (and tp!1421292 tp!1421291))))

(declare-fun b!5096502 () Bool)

(assert (=> b!5096502 (= e!3178551 tp_is_empty!37265)))

(assert (= (and b!5096436 (is-ElementMatch!14000 (regex!8525 rule!158))) b!5096502))

(assert (= (and b!5096436 (is-Concat!22839 (regex!8525 rule!158))) b!5096503))

(assert (= (and b!5096436 (is-Star!14000 (regex!8525 rule!158))) b!5096504))

(assert (= (and b!5096436 (is-Union!14000 (regex!8525 rule!158))) b!5096505))

(declare-fun b!5096510 () Bool)

(declare-fun e!3178554 () Bool)

(declare-fun tp!1421297 () Bool)

(assert (=> b!5096510 (= e!3178554 (and tp_is_empty!37265 tp!1421297))))

(assert (=> b!5096433 (= tp!1421266 e!3178554)))

(assert (= (and b!5096433 (is-Cons!58663 (t!371752 input!1493))) b!5096510))

(push 1)

(assert tp_is_empty!37265)

(assert b_and!350383)

(assert (not b!5096510))

(assert (not b!5096483))

(assert (not d!1649132))

(assert (not d!1649124))

(assert (not b!5096505))

(assert (not b!5096463))

(assert (not b!5096504))

(assert (not b!5096458))

(assert b_and!350385)

(assert (not b_next!134283))

(assert (not bm!354799))

(assert (not d!1649134))

(assert (not bm!354800))

(assert (not b_next!134281))

(assert (not b!5096503))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350385)

(assert b_and!350383)

(assert (not b_next!134281))

(assert (not b_next!134283))

(check-sat)

(pop 1)

