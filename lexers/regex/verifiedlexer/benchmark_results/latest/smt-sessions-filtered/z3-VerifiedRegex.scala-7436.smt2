; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!395370 () Bool)

(assert start!395370)

(declare-fun b!4153524 () Bool)

(declare-fun b_free!118883 () Bool)

(declare-fun b_next!119587 () Bool)

(assert (=> b!4153524 (= b_free!118883 (not b_next!119587))))

(declare-fun tp!1266235 () Bool)

(declare-fun b_and!323245 () Bool)

(assert (=> b!4153524 (= tp!1266235 b_and!323245)))

(declare-fun b_free!118885 () Bool)

(declare-fun b_next!119589 () Bool)

(assert (=> b!4153524 (= b_free!118885 (not b_next!119589))))

(declare-fun tp!1266229 () Bool)

(declare-fun b_and!323247 () Bool)

(assert (=> b!4153524 (= tp!1266229 b_and!323247)))

(declare-fun b!4153528 () Bool)

(declare-fun b_free!118887 () Bool)

(declare-fun b_next!119591 () Bool)

(assert (=> b!4153528 (= b_free!118887 (not b_next!119591))))

(declare-fun tp!1266234 () Bool)

(declare-fun b_and!323249 () Bool)

(assert (=> b!4153528 (= tp!1266234 b_and!323249)))

(declare-fun b_free!118889 () Bool)

(declare-fun b_next!119593 () Bool)

(assert (=> b!4153528 (= b_free!118889 (not b_next!119593))))

(declare-fun tp!1266236 () Bool)

(declare-fun b_and!323251 () Bool)

(assert (=> b!4153528 (= tp!1266236 b_and!323251)))

(declare-fun b!4153526 () Bool)

(declare-fun b_free!118891 () Bool)

(declare-fun b_next!119595 () Bool)

(assert (=> b!4153526 (= b_free!118891 (not b_next!119595))))

(declare-fun tp!1266233 () Bool)

(declare-fun b_and!323253 () Bool)

(assert (=> b!4153526 (= tp!1266233 b_and!323253)))

(declare-fun b_free!118893 () Bool)

(declare-fun b_next!119597 () Bool)

(assert (=> b!4153526 (= b_free!118893 (not b_next!119597))))

(declare-fun tp!1266231 () Bool)

(declare-fun b_and!323255 () Bool)

(assert (=> b!4153526 (= tp!1266231 b_and!323255)))

(declare-fun b!4153518 () Bool)

(declare-fun res!1701039 () Bool)

(declare-fun e!2577075 () Bool)

(assert (=> b!4153518 (=> (not res!1701039) (not e!2577075))))

(declare-datatypes ((List!45276 0))(
  ( (Nil!45152) (Cons!45152 (h!50572 (_ BitVec 16)) (t!343307 List!45276)) )
))
(declare-datatypes ((TokenValue!7674 0))(
  ( (FloatLiteralValue!15348 (text!54163 List!45276)) (TokenValueExt!7673 (__x!27565 Int)) (Broken!38370 (value!232675 List!45276)) (Object!7797) (End!7674) (Def!7674) (Underscore!7674) (Match!7674) (Else!7674) (Error!7674) (Case!7674) (If!7674) (Extends!7674) (Abstract!7674) (Class!7674) (Val!7674) (DelimiterValue!15348 (del!7734 List!45276)) (KeywordValue!7680 (value!232676 List!45276)) (CommentValue!15348 (value!232677 List!45276)) (WhitespaceValue!15348 (value!232678 List!45276)) (IndentationValue!7674 (value!232679 List!45276)) (String!52119) (Int32!7674) (Broken!38371 (value!232680 List!45276)) (Boolean!7675) (Unit!64400) (OperatorValue!7677 (op!7734 List!45276)) (IdentifierValue!15348 (value!232681 List!45276)) (IdentifierValue!15349 (value!232682 List!45276)) (WhitespaceValue!15349 (value!232683 List!45276)) (True!15348) (False!15348) (Broken!38372 (value!232684 List!45276)) (Broken!38373 (value!232685 List!45276)) (True!15349) (RightBrace!7674) (RightBracket!7674) (Colon!7674) (Null!7674) (Comma!7674) (LeftBracket!7674) (False!15349) (LeftBrace!7674) (ImaginaryLiteralValue!7674 (text!54164 List!45276)) (StringLiteralValue!23022 (value!232686 List!45276)) (EOFValue!7674 (value!232687 List!45276)) (IdentValue!7674 (value!232688 List!45276)) (DelimiterValue!15349 (value!232689 List!45276)) (DedentValue!7674 (value!232690 List!45276)) (NewLineValue!7674 (value!232691 List!45276)) (IntegerValue!23022 (value!232692 (_ BitVec 32)) (text!54165 List!45276)) (IntegerValue!23023 (value!232693 Int) (text!54166 List!45276)) (Times!7674) (Or!7674) (Equal!7674) (Minus!7674) (Broken!38374 (value!232694 List!45276)) (And!7674) (Div!7674) (LessEqual!7674) (Mod!7674) (Concat!20023) (Not!7674) (Plus!7674) (SpaceValue!7674 (value!232695 List!45276)) (IntegerValue!23024 (value!232696 Int) (text!54167 List!45276)) (StringLiteralValue!23023 (text!54168 List!45276)) (FloatLiteralValue!15349 (text!54169 List!45276)) (BytesLiteralValue!7674 (value!232697 List!45276)) (CommentValue!15349 (value!232698 List!45276)) (StringLiteralValue!23024 (value!232699 List!45276)) (ErrorTokenValue!7674 (msg!7735 List!45276)) )
))
(declare-datatypes ((C!24884 0))(
  ( (C!24885 (val!14552 Int)) )
))
(declare-datatypes ((List!45277 0))(
  ( (Nil!45153) (Cons!45153 (h!50573 C!24884) (t!343308 List!45277)) )
))
(declare-datatypes ((String!52120 0))(
  ( (String!52121 (value!232700 String)) )
))
(declare-datatypes ((IArray!27315 0))(
  ( (IArray!27316 (innerList!13715 List!45277)) )
))
(declare-datatypes ((Conc!13655 0))(
  ( (Node!13655 (left!33799 Conc!13655) (right!34129 Conc!13655) (csize!27540 Int) (cheight!13866 Int)) (Leaf!21092 (xs!16961 IArray!27315) (csize!27541 Int)) (Empty!13655) )
))
(declare-datatypes ((Regex!12349 0))(
  ( (ElementMatch!12349 (c!711202 C!24884)) (Concat!20024 (regOne!25210 Regex!12349) (regTwo!25210 Regex!12349)) (EmptyExpr!12349) (Star!12349 (reg!12678 Regex!12349)) (EmptyLang!12349) (Union!12349 (regOne!25211 Regex!12349) (regTwo!25211 Regex!12349)) )
))
(declare-datatypes ((BalanceConc!26904 0))(
  ( (BalanceConc!26905 (c!711203 Conc!13655)) )
))
(declare-datatypes ((TokenValueInjection!14776 0))(
  ( (TokenValueInjection!14777 (toValue!10108 Int) (toChars!9967 Int)) )
))
(declare-datatypes ((Rule!14688 0))(
  ( (Rule!14689 (regex!7444 Regex!12349) (tag!8304 String!52120) (isSeparator!7444 Bool) (transformation!7444 TokenValueInjection!14776)) )
))
(declare-datatypes ((List!45278 0))(
  ( (Nil!45154) (Cons!45154 (h!50574 Rule!14688) (t!343309 List!45278)) )
))
(declare-fun rules!4102 () List!45278)

(declare-fun r1!615 () Rule!14688)

(declare-fun head!8770 (List!45278) Rule!14688)

(assert (=> b!4153518 (= res!1701039 (= (head!8770 rules!4102) r1!615))))

(declare-fun b!4153519 () Bool)

(declare-fun tp!1266230 () Bool)

(declare-fun e!2577070 () Bool)

(declare-fun e!2577069 () Bool)

(declare-fun inv!59755 (String!52120) Bool)

(declare-fun inv!59757 (TokenValueInjection!14776) Bool)

(assert (=> b!4153519 (= e!2577069 (and tp!1266230 (inv!59755 (tag!8304 r1!615)) (inv!59757 (transformation!7444 r1!615)) e!2577070))))

(declare-fun e!2577071 () Bool)

(declare-fun tp!1266228 () Bool)

(declare-fun r2!597 () Rule!14688)

(declare-fun e!2577067 () Bool)

(declare-fun b!4153520 () Bool)

(assert (=> b!4153520 (= e!2577071 (and tp!1266228 (inv!59755 (tag!8304 r2!597)) (inv!59757 (transformation!7444 r2!597)) e!2577067))))

(declare-fun b!4153521 () Bool)

(declare-fun res!1701037 () Bool)

(assert (=> b!4153521 (=> (not res!1701037) (not e!2577075))))

(declare-fun contains!9132 (List!45278 Rule!14688) Bool)

(assert (=> b!4153521 (= res!1701037 (contains!9132 rules!4102 r1!615))))

(declare-fun b!4153522 () Bool)

(declare-fun res!1701034 () Bool)

(assert (=> b!4153522 (=> (not res!1701034) (not e!2577075))))

(declare-datatypes ((LexerInterface!7033 0))(
  ( (LexerInterfaceExt!7030 (__x!27566 Int)) (Lexer!7031) )
))
(declare-fun thiss!26968 () LexerInterface!7033)

(declare-datatypes ((List!45279 0))(
  ( (Nil!45155) (Cons!45155 (h!50575 String!52120) (t!343310 List!45279)) )
))
(declare-fun noDuplicateTag!3021 (LexerInterface!7033 List!45278 List!45279) Bool)

(declare-fun noDuplicateTag$default$2!26 (LexerInterface!7033) List!45279)

(assert (=> b!4153522 (= res!1701034 (noDuplicateTag!3021 thiss!26968 rules!4102 (noDuplicateTag$default$2!26 thiss!26968)))))

(declare-fun b!4153523 () Bool)

(declare-fun res!1701038 () Bool)

(assert (=> b!4153523 (=> (not res!1701038) (not e!2577075))))

(assert (=> b!4153523 (= res!1701038 (contains!9132 rules!4102 r2!597))))

(assert (=> b!4153524 (= e!2577067 (and tp!1266235 tp!1266229))))

(declare-fun b!4153525 () Bool)

(declare-fun e!2577066 () Bool)

(declare-fun e!2577072 () Bool)

(declare-fun tp!1266227 () Bool)

(assert (=> b!4153525 (= e!2577066 (and e!2577072 tp!1266227))))

(assert (=> b!4153526 (= e!2577070 (and tp!1266233 tp!1266231))))

(declare-fun b!4153527 () Bool)

(assert (=> b!4153527 (= e!2577075 (= rules!4102 Nil!45154))))

(declare-fun b!4153529 () Bool)

(declare-fun res!1701036 () Bool)

(assert (=> b!4153529 (=> (not res!1701036) (not e!2577075))))

(declare-fun getIndex!786 (List!45278 Rule!14688) Int)

(assert (=> b!4153529 (= res!1701036 (< (getIndex!786 rules!4102 r1!615) (getIndex!786 rules!4102 r2!597)))))

(declare-fun tp!1266232 () Bool)

(declare-fun e!2577074 () Bool)

(declare-fun b!4153530 () Bool)

(assert (=> b!4153530 (= e!2577072 (and tp!1266232 (inv!59755 (tag!8304 (h!50574 rules!4102))) (inv!59757 (transformation!7444 (h!50574 rules!4102))) e!2577074))))

(assert (=> b!4153528 (= e!2577074 (and tp!1266234 tp!1266236))))

(declare-fun res!1701035 () Bool)

(assert (=> start!395370 (=> (not res!1701035) (not e!2577075))))

(get-info :version)

(assert (=> start!395370 (= res!1701035 ((_ is Lexer!7031) thiss!26968))))

(assert (=> start!395370 e!2577075))

(assert (=> start!395370 true))

(assert (=> start!395370 e!2577066))

(assert (=> start!395370 e!2577069))

(assert (=> start!395370 e!2577071))

(assert (= (and start!395370 res!1701035) b!4153521))

(assert (= (and b!4153521 res!1701037) b!4153523))

(assert (= (and b!4153523 res!1701038) b!4153522))

(assert (= (and b!4153522 res!1701034) b!4153529))

(assert (= (and b!4153529 res!1701036) b!4153518))

(assert (= (and b!4153518 res!1701039) b!4153527))

(assert (= b!4153530 b!4153528))

(assert (= b!4153525 b!4153530))

(assert (= (and start!395370 ((_ is Cons!45154) rules!4102)) b!4153525))

(assert (= b!4153519 b!4153526))

(assert (= start!395370 b!4153519))

(assert (= b!4153520 b!4153524))

(assert (= start!395370 b!4153520))

(declare-fun m!4748627 () Bool)

(assert (=> b!4153519 m!4748627))

(declare-fun m!4748629 () Bool)

(assert (=> b!4153519 m!4748629))

(declare-fun m!4748631 () Bool)

(assert (=> b!4153523 m!4748631))

(declare-fun m!4748633 () Bool)

(assert (=> b!4153518 m!4748633))

(declare-fun m!4748635 () Bool)

(assert (=> b!4153529 m!4748635))

(declare-fun m!4748637 () Bool)

(assert (=> b!4153529 m!4748637))

(declare-fun m!4748639 () Bool)

(assert (=> b!4153520 m!4748639))

(declare-fun m!4748641 () Bool)

(assert (=> b!4153520 m!4748641))

(declare-fun m!4748643 () Bool)

(assert (=> b!4153521 m!4748643))

(declare-fun m!4748645 () Bool)

(assert (=> b!4153530 m!4748645))

(declare-fun m!4748647 () Bool)

(assert (=> b!4153530 m!4748647))

(declare-fun m!4748649 () Bool)

(assert (=> b!4153522 m!4748649))

(assert (=> b!4153522 m!4748649))

(declare-fun m!4748651 () Bool)

(assert (=> b!4153522 m!4748651))

(check-sat (not b_next!119595) (not b_next!119593) (not b!4153520) (not b!4153519) b_and!323249 (not b!4153529) (not b_next!119589) (not b_next!119597) (not b_next!119587) (not b_next!119591) (not b!4153525) (not b!4153530) b_and!323255 b_and!323253 (not b!4153521) (not b!4153518) b_and!323247 (not b!4153523) b_and!323245 b_and!323251 (not b!4153522))
(check-sat (not b_next!119595) (not b_next!119593) b_and!323249 b_and!323247 (not b_next!119589) (not b_next!119597) (not b_next!119587) (not b_next!119591) b_and!323255 b_and!323253 b_and!323245 b_and!323251)
(get-model)

(declare-fun d!1228407 () Bool)

(declare-fun lt!1481081 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6984 (List!45278) (InoxSet Rule!14688))

(assert (=> d!1228407 (= lt!1481081 (select (content!6984 rules!4102) r2!597))))

(declare-fun e!2577090 () Bool)

(assert (=> d!1228407 (= lt!1481081 e!2577090)))

(declare-fun res!1701052 () Bool)

(assert (=> d!1228407 (=> (not res!1701052) (not e!2577090))))

(assert (=> d!1228407 (= res!1701052 ((_ is Cons!45154) rules!4102))))

(assert (=> d!1228407 (= (contains!9132 rules!4102 r2!597) lt!1481081)))

(declare-fun b!4153551 () Bool)

(declare-fun e!2577091 () Bool)

(assert (=> b!4153551 (= e!2577090 e!2577091)))

(declare-fun res!1701051 () Bool)

(assert (=> b!4153551 (=> res!1701051 e!2577091)))

(assert (=> b!4153551 (= res!1701051 (= (h!50574 rules!4102) r2!597))))

(declare-fun b!4153552 () Bool)

(assert (=> b!4153552 (= e!2577091 (contains!9132 (t!343309 rules!4102) r2!597))))

(assert (= (and d!1228407 res!1701052) b!4153551))

(assert (= (and b!4153551 (not res!1701051)) b!4153552))

(declare-fun m!4748657 () Bool)

(assert (=> d!1228407 m!4748657))

(declare-fun m!4748659 () Bool)

(assert (=> d!1228407 m!4748659))

(declare-fun m!4748661 () Bool)

(assert (=> b!4153552 m!4748661))

(assert (=> b!4153523 d!1228407))

(declare-fun d!1228413 () Bool)

(declare-fun res!1701063 () Bool)

(declare-fun e!2577102 () Bool)

(assert (=> d!1228413 (=> res!1701063 e!2577102)))

(assert (=> d!1228413 (= res!1701063 ((_ is Nil!45154) rules!4102))))

(assert (=> d!1228413 (= (noDuplicateTag!3021 thiss!26968 rules!4102 (noDuplicateTag$default$2!26 thiss!26968)) e!2577102)))

(declare-fun b!4153563 () Bool)

(declare-fun e!2577103 () Bool)

(assert (=> b!4153563 (= e!2577102 e!2577103)))

(declare-fun res!1701064 () Bool)

(assert (=> b!4153563 (=> (not res!1701064) (not e!2577103))))

(declare-fun contains!9133 (List!45279 String!52120) Bool)

(assert (=> b!4153563 (= res!1701064 (not (contains!9133 (noDuplicateTag$default$2!26 thiss!26968) (tag!8304 (h!50574 rules!4102)))))))

(declare-fun b!4153564 () Bool)

(assert (=> b!4153564 (= e!2577103 (noDuplicateTag!3021 thiss!26968 (t!343309 rules!4102) (Cons!45155 (tag!8304 (h!50574 rules!4102)) (noDuplicateTag$default$2!26 thiss!26968))))))

(assert (= (and d!1228413 (not res!1701063)) b!4153563))

(assert (= (and b!4153563 res!1701064) b!4153564))

(assert (=> b!4153563 m!4748649))

(declare-fun m!4748669 () Bool)

(assert (=> b!4153563 m!4748669))

(declare-fun m!4748671 () Bool)

(assert (=> b!4153564 m!4748671))

(assert (=> b!4153522 d!1228413))

(declare-fun d!1228419 () Bool)

(assert (=> d!1228419 (= (noDuplicateTag$default$2!26 thiss!26968) Nil!45155)))

(assert (=> b!4153522 d!1228419))

(declare-fun d!1228421 () Bool)

(assert (=> d!1228421 (= (inv!59755 (tag!8304 r1!615)) (= (mod (str.len (value!232700 (tag!8304 r1!615))) 2) 0))))

(assert (=> b!4153519 d!1228421))

(declare-fun d!1228423 () Bool)

(declare-fun res!1701072 () Bool)

(declare-fun e!2577111 () Bool)

(assert (=> d!1228423 (=> (not res!1701072) (not e!2577111))))

(declare-fun semiInverseModEq!3223 (Int Int) Bool)

(assert (=> d!1228423 (= res!1701072 (semiInverseModEq!3223 (toChars!9967 (transformation!7444 r1!615)) (toValue!10108 (transformation!7444 r1!615))))))

(assert (=> d!1228423 (= (inv!59757 (transformation!7444 r1!615)) e!2577111)))

(declare-fun b!4153572 () Bool)

(declare-fun equivClasses!3122 (Int Int) Bool)

(assert (=> b!4153572 (= e!2577111 (equivClasses!3122 (toChars!9967 (transformation!7444 r1!615)) (toValue!10108 (transformation!7444 r1!615))))))

(assert (= (and d!1228423 res!1701072) b!4153572))

(declare-fun m!4748685 () Bool)

(assert (=> d!1228423 m!4748685))

(declare-fun m!4748687 () Bool)

(assert (=> b!4153572 m!4748687))

(assert (=> b!4153519 d!1228423))

(declare-fun d!1228437 () Bool)

(assert (=> d!1228437 (= (head!8770 rules!4102) (h!50574 rules!4102))))

(assert (=> b!4153518 d!1228437))

(declare-fun b!4153597 () Bool)

(declare-fun e!2577134 () Int)

(assert (=> b!4153597 (= e!2577134 0)))

(declare-fun b!4153600 () Bool)

(declare-fun e!2577133 () Int)

(assert (=> b!4153600 (= e!2577133 (- 1))))

(declare-fun b!4153598 () Bool)

(assert (=> b!4153598 (= e!2577134 e!2577133)))

(declare-fun c!711217 () Bool)

(assert (=> b!4153598 (= c!711217 (and ((_ is Cons!45154) rules!4102) (not (= (h!50574 rules!4102) r1!615))))))

(declare-fun b!4153599 () Bool)

(assert (=> b!4153599 (= e!2577133 (+ 1 (getIndex!786 (t!343309 rules!4102) r1!615)))))

(declare-fun d!1228441 () Bool)

(declare-fun lt!1481088 () Int)

(assert (=> d!1228441 (>= lt!1481088 0)))

(assert (=> d!1228441 (= lt!1481088 e!2577134)))

(declare-fun c!711216 () Bool)

(assert (=> d!1228441 (= c!711216 (and ((_ is Cons!45154) rules!4102) (= (h!50574 rules!4102) r1!615)))))

(assert (=> d!1228441 (contains!9132 rules!4102 r1!615)))

(assert (=> d!1228441 (= (getIndex!786 rules!4102 r1!615) lt!1481088)))

(assert (= (and d!1228441 c!711216) b!4153597))

(assert (= (and d!1228441 (not c!711216)) b!4153598))

(assert (= (and b!4153598 c!711217) b!4153599))

(assert (= (and b!4153598 (not c!711217)) b!4153600))

(declare-fun m!4748697 () Bool)

(assert (=> b!4153599 m!4748697))

(assert (=> d!1228441 m!4748643))

(assert (=> b!4153529 d!1228441))

(declare-fun b!4153601 () Bool)

(declare-fun e!2577136 () Int)

(assert (=> b!4153601 (= e!2577136 0)))

(declare-fun b!4153604 () Bool)

(declare-fun e!2577135 () Int)

(assert (=> b!4153604 (= e!2577135 (- 1))))

(declare-fun b!4153602 () Bool)

(assert (=> b!4153602 (= e!2577136 e!2577135)))

(declare-fun c!711219 () Bool)

(assert (=> b!4153602 (= c!711219 (and ((_ is Cons!45154) rules!4102) (not (= (h!50574 rules!4102) r2!597))))))

(declare-fun b!4153603 () Bool)

(assert (=> b!4153603 (= e!2577135 (+ 1 (getIndex!786 (t!343309 rules!4102) r2!597)))))

(declare-fun d!1228445 () Bool)

(declare-fun lt!1481089 () Int)

(assert (=> d!1228445 (>= lt!1481089 0)))

(assert (=> d!1228445 (= lt!1481089 e!2577136)))

(declare-fun c!711218 () Bool)

(assert (=> d!1228445 (= c!711218 (and ((_ is Cons!45154) rules!4102) (= (h!50574 rules!4102) r2!597)))))

(assert (=> d!1228445 (contains!9132 rules!4102 r2!597)))

(assert (=> d!1228445 (= (getIndex!786 rules!4102 r2!597) lt!1481089)))

(assert (= (and d!1228445 c!711218) b!4153601))

(assert (= (and d!1228445 (not c!711218)) b!4153602))

(assert (= (and b!4153602 c!711219) b!4153603))

(assert (= (and b!4153602 (not c!711219)) b!4153604))

(declare-fun m!4748699 () Bool)

(assert (=> b!4153603 m!4748699))

(assert (=> d!1228445 m!4748631))

(assert (=> b!4153529 d!1228445))

(declare-fun d!1228447 () Bool)

(assert (=> d!1228447 (= (inv!59755 (tag!8304 r2!597)) (= (mod (str.len (value!232700 (tag!8304 r2!597))) 2) 0))))

(assert (=> b!4153520 d!1228447))

(declare-fun d!1228449 () Bool)

(declare-fun res!1701081 () Bool)

(declare-fun e!2577141 () Bool)

(assert (=> d!1228449 (=> (not res!1701081) (not e!2577141))))

(assert (=> d!1228449 (= res!1701081 (semiInverseModEq!3223 (toChars!9967 (transformation!7444 r2!597)) (toValue!10108 (transformation!7444 r2!597))))))

(assert (=> d!1228449 (= (inv!59757 (transformation!7444 r2!597)) e!2577141)))

(declare-fun b!4153608 () Bool)

(assert (=> b!4153608 (= e!2577141 (equivClasses!3122 (toChars!9967 (transformation!7444 r2!597)) (toValue!10108 (transformation!7444 r2!597))))))

(assert (= (and d!1228449 res!1701081) b!4153608))

(declare-fun m!4748705 () Bool)

(assert (=> d!1228449 m!4748705))

(declare-fun m!4748707 () Bool)

(assert (=> b!4153608 m!4748707))

(assert (=> b!4153520 d!1228449))

(declare-fun d!1228451 () Bool)

(assert (=> d!1228451 (= (inv!59755 (tag!8304 (h!50574 rules!4102))) (= (mod (str.len (value!232700 (tag!8304 (h!50574 rules!4102)))) 2) 0))))

(assert (=> b!4153530 d!1228451))

(declare-fun d!1228453 () Bool)

(declare-fun res!1701082 () Bool)

(declare-fun e!2577144 () Bool)

(assert (=> d!1228453 (=> (not res!1701082) (not e!2577144))))

(assert (=> d!1228453 (= res!1701082 (semiInverseModEq!3223 (toChars!9967 (transformation!7444 (h!50574 rules!4102))) (toValue!10108 (transformation!7444 (h!50574 rules!4102)))))))

(assert (=> d!1228453 (= (inv!59757 (transformation!7444 (h!50574 rules!4102))) e!2577144)))

(declare-fun b!4153617 () Bool)

(assert (=> b!4153617 (= e!2577144 (equivClasses!3122 (toChars!9967 (transformation!7444 (h!50574 rules!4102))) (toValue!10108 (transformation!7444 (h!50574 rules!4102)))))))

(assert (= (and d!1228453 res!1701082) b!4153617))

(declare-fun m!4748709 () Bool)

(assert (=> d!1228453 m!4748709))

(declare-fun m!4748711 () Bool)

(assert (=> b!4153617 m!4748711))

(assert (=> b!4153530 d!1228453))

(declare-fun d!1228455 () Bool)

(declare-fun lt!1481090 () Bool)

(assert (=> d!1228455 (= lt!1481090 (select (content!6984 rules!4102) r1!615))))

(declare-fun e!2577145 () Bool)

(assert (=> d!1228455 (= lt!1481090 e!2577145)))

(declare-fun res!1701084 () Bool)

(assert (=> d!1228455 (=> (not res!1701084) (not e!2577145))))

(assert (=> d!1228455 (= res!1701084 ((_ is Cons!45154) rules!4102))))

(assert (=> d!1228455 (= (contains!9132 rules!4102 r1!615) lt!1481090)))

(declare-fun b!4153620 () Bool)

(declare-fun e!2577146 () Bool)

(assert (=> b!4153620 (= e!2577145 e!2577146)))

(declare-fun res!1701083 () Bool)

(assert (=> b!4153620 (=> res!1701083 e!2577146)))

(assert (=> b!4153620 (= res!1701083 (= (h!50574 rules!4102) r1!615))))

(declare-fun b!4153621 () Bool)

(assert (=> b!4153621 (= e!2577146 (contains!9132 (t!343309 rules!4102) r1!615))))

(assert (= (and d!1228455 res!1701084) b!4153620))

(assert (= (and b!4153620 (not res!1701083)) b!4153621))

(assert (=> d!1228455 m!4748657))

(declare-fun m!4748713 () Bool)

(assert (=> d!1228455 m!4748713))

(declare-fun m!4748715 () Bool)

(assert (=> b!4153621 m!4748715))

(assert (=> b!4153521 d!1228455))

(declare-fun b!4153645 () Bool)

(declare-fun e!2577152 () Bool)

(declare-fun tp!1266284 () Bool)

(declare-fun tp!1266287 () Bool)

(assert (=> b!4153645 (= e!2577152 (and tp!1266284 tp!1266287))))

(declare-fun b!4153647 () Bool)

(declare-fun tp!1266285 () Bool)

(declare-fun tp!1266288 () Bool)

(assert (=> b!4153647 (= e!2577152 (and tp!1266285 tp!1266288))))

(declare-fun b!4153644 () Bool)

(declare-fun tp_is_empty!21613 () Bool)

(assert (=> b!4153644 (= e!2577152 tp_is_empty!21613)))

(declare-fun b!4153646 () Bool)

(declare-fun tp!1266286 () Bool)

(assert (=> b!4153646 (= e!2577152 tp!1266286)))

(assert (=> b!4153519 (= tp!1266230 e!2577152)))

(assert (= (and b!4153519 ((_ is ElementMatch!12349) (regex!7444 r1!615))) b!4153644))

(assert (= (and b!4153519 ((_ is Concat!20024) (regex!7444 r1!615))) b!4153645))

(assert (= (and b!4153519 ((_ is Star!12349) (regex!7444 r1!615))) b!4153646))

(assert (= (and b!4153519 ((_ is Union!12349) (regex!7444 r1!615))) b!4153647))

(declare-fun b!4153649 () Bool)

(declare-fun e!2577153 () Bool)

(declare-fun tp!1266289 () Bool)

(declare-fun tp!1266292 () Bool)

(assert (=> b!4153649 (= e!2577153 (and tp!1266289 tp!1266292))))

(declare-fun b!4153651 () Bool)

(declare-fun tp!1266290 () Bool)

(declare-fun tp!1266293 () Bool)

(assert (=> b!4153651 (= e!2577153 (and tp!1266290 tp!1266293))))

(declare-fun b!4153648 () Bool)

(assert (=> b!4153648 (= e!2577153 tp_is_empty!21613)))

(declare-fun b!4153650 () Bool)

(declare-fun tp!1266291 () Bool)

(assert (=> b!4153650 (= e!2577153 tp!1266291)))

(assert (=> b!4153520 (= tp!1266228 e!2577153)))

(assert (= (and b!4153520 ((_ is ElementMatch!12349) (regex!7444 r2!597))) b!4153648))

(assert (= (and b!4153520 ((_ is Concat!20024) (regex!7444 r2!597))) b!4153649))

(assert (= (and b!4153520 ((_ is Star!12349) (regex!7444 r2!597))) b!4153650))

(assert (= (and b!4153520 ((_ is Union!12349) (regex!7444 r2!597))) b!4153651))

(declare-fun b!4153653 () Bool)

(declare-fun e!2577154 () Bool)

(declare-fun tp!1266294 () Bool)

(declare-fun tp!1266297 () Bool)

(assert (=> b!4153653 (= e!2577154 (and tp!1266294 tp!1266297))))

(declare-fun b!4153655 () Bool)

(declare-fun tp!1266295 () Bool)

(declare-fun tp!1266298 () Bool)

(assert (=> b!4153655 (= e!2577154 (and tp!1266295 tp!1266298))))

(declare-fun b!4153652 () Bool)

(assert (=> b!4153652 (= e!2577154 tp_is_empty!21613)))

(declare-fun b!4153654 () Bool)

(declare-fun tp!1266296 () Bool)

(assert (=> b!4153654 (= e!2577154 tp!1266296)))

(assert (=> b!4153530 (= tp!1266232 e!2577154)))

(assert (= (and b!4153530 ((_ is ElementMatch!12349) (regex!7444 (h!50574 rules!4102)))) b!4153652))

(assert (= (and b!4153530 ((_ is Concat!20024) (regex!7444 (h!50574 rules!4102)))) b!4153653))

(assert (= (and b!4153530 ((_ is Star!12349) (regex!7444 (h!50574 rules!4102)))) b!4153654))

(assert (= (and b!4153530 ((_ is Union!12349) (regex!7444 (h!50574 rules!4102)))) b!4153655))

(declare-fun b!4153666 () Bool)

(declare-fun b_free!118899 () Bool)

(declare-fun b_next!119603 () Bool)

(assert (=> b!4153666 (= b_free!118899 (not b_next!119603))))

(declare-fun tp!1266308 () Bool)

(declare-fun b_and!323261 () Bool)

(assert (=> b!4153666 (= tp!1266308 b_and!323261)))

(declare-fun b_free!118901 () Bool)

(declare-fun b_next!119605 () Bool)

(assert (=> b!4153666 (= b_free!118901 (not b_next!119605))))

(declare-fun tp!1266310 () Bool)

(declare-fun b_and!323263 () Bool)

(assert (=> b!4153666 (= tp!1266310 b_and!323263)))

(declare-fun e!2577163 () Bool)

(assert (=> b!4153666 (= e!2577163 (and tp!1266308 tp!1266310))))

(declare-fun e!2577165 () Bool)

(declare-fun tp!1266307 () Bool)

(declare-fun b!4153665 () Bool)

(assert (=> b!4153665 (= e!2577165 (and tp!1266307 (inv!59755 (tag!8304 (h!50574 (t!343309 rules!4102)))) (inv!59757 (transformation!7444 (h!50574 (t!343309 rules!4102)))) e!2577163))))

(declare-fun b!4153664 () Bool)

(declare-fun e!2577166 () Bool)

(declare-fun tp!1266309 () Bool)

(assert (=> b!4153664 (= e!2577166 (and e!2577165 tp!1266309))))

(assert (=> b!4153525 (= tp!1266227 e!2577166)))

(assert (= b!4153665 b!4153666))

(assert (= b!4153664 b!4153665))

(assert (= (and b!4153525 ((_ is Cons!45154) (t!343309 rules!4102))) b!4153664))

(declare-fun m!4748717 () Bool)

(assert (=> b!4153665 m!4748717))

(declare-fun m!4748719 () Bool)

(assert (=> b!4153665 m!4748719))

(check-sat (not b!4153572) (not b!4153608) (not b!4153564) (not b!4153645) (not b_next!119593) (not b!4153552) (not b!4153649) (not b!4153653) b_and!323249 b_and!323247 (not b!4153665) (not d!1228455) (not b_next!119595) (not b_next!119597) tp_is_empty!21613 b_and!323261 (not b_next!119587) (not b_next!119591) (not b!4153654) (not b!4153664) (not b!4153646) (not b!4153655) (not b!4153617) (not d!1228407) (not d!1228441) (not b_next!119603) b_and!323263 (not b_next!119605) b_and!323255 (not b!4153563) b_and!323253 (not b!4153647) (not b!4153650) (not d!1228453) (not b!4153651) (not b!4153599) (not b!4153603) (not d!1228423) (not d!1228449) b_and!323245 b_and!323251 (not d!1228445) (not b_next!119589) (not b!4153621))
(check-sat (not b_next!119595) (not b_next!119593) (not b_next!119603) b_and!323249 b_and!323247 (not b_next!119589) (not b_next!119597) b_and!323261 (not b_next!119587) (not b_next!119591) b_and!323263 (not b_next!119605) b_and!323255 b_and!323253 b_and!323245 b_and!323251)
