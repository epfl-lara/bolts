; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!395818 () Bool)

(assert start!395818)

(declare-fun b!4156750 () Bool)

(declare-fun b_free!119451 () Bool)

(declare-fun b_next!120155 () Bool)

(assert (=> b!4156750 (= b_free!119451 (not b_next!120155))))

(declare-fun tp!1268247 () Bool)

(declare-fun b_and!323813 () Bool)

(assert (=> b!4156750 (= tp!1268247 b_and!323813)))

(declare-fun b_free!119453 () Bool)

(declare-fun b_next!120157 () Bool)

(assert (=> b!4156750 (= b_free!119453 (not b_next!120157))))

(declare-fun tp!1268244 () Bool)

(declare-fun b_and!323815 () Bool)

(assert (=> b!4156750 (= tp!1268244 b_and!323815)))

(declare-fun b!4156752 () Bool)

(declare-fun b_free!119455 () Bool)

(declare-fun b_next!120159 () Bool)

(assert (=> b!4156752 (= b_free!119455 (not b_next!120159))))

(declare-fun tp!1268243 () Bool)

(declare-fun b_and!323817 () Bool)

(assert (=> b!4156752 (= tp!1268243 b_and!323817)))

(declare-fun b_free!119457 () Bool)

(declare-fun b_next!120161 () Bool)

(assert (=> b!4156752 (= b_free!119457 (not b_next!120161))))

(declare-fun tp!1268245 () Bool)

(declare-fun b_and!323819 () Bool)

(assert (=> b!4156752 (= tp!1268245 b_and!323819)))

(declare-fun b!4156751 () Bool)

(declare-fun b_free!119459 () Bool)

(declare-fun b_next!120163 () Bool)

(assert (=> b!4156751 (= b_free!119459 (not b_next!120163))))

(declare-fun tp!1268241 () Bool)

(declare-fun b_and!323821 () Bool)

(assert (=> b!4156751 (= tp!1268241 b_and!323821)))

(declare-fun b_free!119461 () Bool)

(declare-fun b_next!120165 () Bool)

(assert (=> b!4156751 (= b_free!119461 (not b_next!120165))))

(declare-fun tp!1268250 () Bool)

(declare-fun b_and!323823 () Bool)

(assert (=> b!4156751 (= tp!1268250 b_and!323823)))

(declare-fun b!4156746 () Bool)

(declare-fun e!2579611 () Bool)

(declare-fun e!2579605 () Bool)

(declare-fun tp!1268242 () Bool)

(assert (=> b!4156746 (= e!2579611 (and e!2579605 tp!1268242))))

(declare-fun res!1702436 () Bool)

(declare-fun e!2579609 () Bool)

(assert (=> start!395818 (=> (not res!1702436) (not e!2579609))))

(declare-datatypes ((LexerInterface!7073 0))(
  ( (LexerInterfaceExt!7070 (__x!27645 Int)) (Lexer!7071) )
))
(declare-fun thiss!26968 () LexerInterface!7073)

(get-info :version)

(assert (=> start!395818 (= res!1702436 ((_ is Lexer!7071) thiss!26968))))

(assert (=> start!395818 e!2579609))

(assert (=> start!395818 true))

(assert (=> start!395818 e!2579611))

(declare-fun e!2579610 () Bool)

(assert (=> start!395818 e!2579610))

(declare-fun e!2579602 () Bool)

(assert (=> start!395818 e!2579602))

(declare-fun b!4156747 () Bool)

(declare-fun e!2579603 () Bool)

(assert (=> b!4156747 (= e!2579609 e!2579603)))

(declare-fun res!1702434 () Bool)

(assert (=> b!4156747 (=> (not res!1702434) (not e!2579603))))

(declare-datatypes ((List!45436 0))(
  ( (Nil!45312) (Cons!45312 (h!50732 (_ BitVec 16)) (t!343467 List!45436)) )
))
(declare-datatypes ((TokenValue!7714 0))(
  ( (FloatLiteralValue!15428 (text!54443 List!45436)) (TokenValueExt!7713 (__x!27646 Int)) (Broken!38570 (value!233775 List!45436)) (Object!7837) (End!7714) (Def!7714) (Underscore!7714) (Match!7714) (Else!7714) (Error!7714) (Case!7714) (If!7714) (Extends!7714) (Abstract!7714) (Class!7714) (Val!7714) (DelimiterValue!15428 (del!7774 List!45436)) (KeywordValue!7720 (value!233776 List!45436)) (CommentValue!15428 (value!233777 List!45436)) (WhitespaceValue!15428 (value!233778 List!45436)) (IndentationValue!7714 (value!233779 List!45436)) (String!52319) (Int32!7714) (Broken!38571 (value!233780 List!45436)) (Boolean!7715) (Unit!64478) (OperatorValue!7717 (op!7774 List!45436)) (IdentifierValue!15428 (value!233781 List!45436)) (IdentifierValue!15429 (value!233782 List!45436)) (WhitespaceValue!15429 (value!233783 List!45436)) (True!15428) (False!15428) (Broken!38572 (value!233784 List!45436)) (Broken!38573 (value!233785 List!45436)) (True!15429) (RightBrace!7714) (RightBracket!7714) (Colon!7714) (Null!7714) (Comma!7714) (LeftBracket!7714) (False!15429) (LeftBrace!7714) (ImaginaryLiteralValue!7714 (text!54444 List!45436)) (StringLiteralValue!23142 (value!233786 List!45436)) (EOFValue!7714 (value!233787 List!45436)) (IdentValue!7714 (value!233788 List!45436)) (DelimiterValue!15429 (value!233789 List!45436)) (DedentValue!7714 (value!233790 List!45436)) (NewLineValue!7714 (value!233791 List!45436)) (IntegerValue!23142 (value!233792 (_ BitVec 32)) (text!54445 List!45436)) (IntegerValue!23143 (value!233793 Int) (text!54446 List!45436)) (Times!7714) (Or!7714) (Equal!7714) (Minus!7714) (Broken!38574 (value!233794 List!45436)) (And!7714) (Div!7714) (LessEqual!7714) (Mod!7714) (Concat!20103) (Not!7714) (Plus!7714) (SpaceValue!7714 (value!233795 List!45436)) (IntegerValue!23144 (value!233796 Int) (text!54447 List!45436)) (StringLiteralValue!23143 (text!54448 List!45436)) (FloatLiteralValue!15429 (text!54449 List!45436)) (BytesLiteralValue!7714 (value!233797 List!45436)) (CommentValue!15429 (value!233798 List!45436)) (StringLiteralValue!23144 (value!233799 List!45436)) (ErrorTokenValue!7714 (msg!7775 List!45436)) )
))
(declare-datatypes ((C!24964 0))(
  ( (C!24965 (val!14592 Int)) )
))
(declare-datatypes ((Regex!12389 0))(
  ( (ElementMatch!12389 (c!711464 C!24964)) (Concat!20104 (regOne!25290 Regex!12389) (regTwo!25290 Regex!12389)) (EmptyExpr!12389) (Star!12389 (reg!12718 Regex!12389)) (EmptyLang!12389) (Union!12389 (regOne!25291 Regex!12389) (regTwo!25291 Regex!12389)) )
))
(declare-datatypes ((List!45437 0))(
  ( (Nil!45313) (Cons!45313 (h!50733 C!24964) (t!343468 List!45437)) )
))
(declare-datatypes ((String!52320 0))(
  ( (String!52321 (value!233800 String)) )
))
(declare-datatypes ((IArray!27395 0))(
  ( (IArray!27396 (innerList!13755 List!45437)) )
))
(declare-datatypes ((Conc!13695 0))(
  ( (Node!13695 (left!33859 Conc!13695) (right!34189 Conc!13695) (csize!27620 Int) (cheight!13906 Int)) (Leaf!21152 (xs!17001 IArray!27395) (csize!27621 Int)) (Empty!13695) )
))
(declare-datatypes ((BalanceConc!26984 0))(
  ( (BalanceConc!26985 (c!711465 Conc!13695)) )
))
(declare-datatypes ((TokenValueInjection!14856 0))(
  ( (TokenValueInjection!14857 (toValue!10148 Int) (toChars!10007 Int)) )
))
(declare-datatypes ((Rule!14768 0))(
  ( (Rule!14769 (regex!7484 Regex!12389) (tag!8348 String!52320) (isSeparator!7484 Bool) (transformation!7484 TokenValueInjection!14856)) )
))
(declare-fun lt!1481584 () Rule!14768)

(declare-fun r1!615 () Rule!14768)

(assert (=> b!4156747 (= res!1702434 (not (= lt!1481584 r1!615)))))

(declare-datatypes ((List!45438 0))(
  ( (Nil!45314) (Cons!45314 (h!50734 Rule!14768) (t!343469 List!45438)) )
))
(declare-fun rules!4102 () List!45438)

(declare-fun head!8806 (List!45438) Rule!14768)

(assert (=> b!4156747 (= lt!1481584 (head!8806 rules!4102))))

(declare-fun b!4156748 () Bool)

(declare-fun res!1702432 () Bool)

(assert (=> b!4156748 (=> (not res!1702432) (not e!2579609))))

(declare-datatypes ((List!45439 0))(
  ( (Nil!45315) (Cons!45315 (h!50735 String!52320) (t!343470 List!45439)) )
))
(declare-fun noDuplicateTag!3061 (LexerInterface!7073 List!45438 List!45439) Bool)

(declare-fun noDuplicateTag$default$2!66 (LexerInterface!7073) List!45439)

(assert (=> b!4156748 (= res!1702432 (noDuplicateTag!3061 thiss!26968 rules!4102 (noDuplicateTag$default$2!66 thiss!26968)))))

(declare-fun e!2579601 () Bool)

(declare-fun tp!1268249 () Bool)

(declare-fun b!4156749 () Bool)

(declare-fun inv!59855 (String!52320) Bool)

(declare-fun inv!59857 (TokenValueInjection!14856) Bool)

(assert (=> b!4156749 (= e!2579605 (and tp!1268249 (inv!59855 (tag!8348 (h!50734 rules!4102))) (inv!59857 (transformation!7484 (h!50734 rules!4102))) e!2579601))))

(assert (=> b!4156750 (= e!2579601 (and tp!1268247 tp!1268244))))

(declare-fun e!2579608 () Bool)

(assert (=> b!4156751 (= e!2579608 (and tp!1268241 tp!1268250))))

(declare-fun e!2579607 () Bool)

(assert (=> b!4156752 (= e!2579607 (and tp!1268243 tp!1268245))))

(declare-fun b!4156753 () Bool)

(declare-fun res!1702435 () Bool)

(assert (=> b!4156753 (=> (not res!1702435) (not e!2579609))))

(declare-fun r2!597 () Rule!14768)

(declare-fun contains!9195 (List!45438 Rule!14768) Bool)

(assert (=> b!4156753 (= res!1702435 (contains!9195 rules!4102 r2!597))))

(declare-fun b!4156754 () Bool)

(declare-fun res!1702431 () Bool)

(assert (=> b!4156754 (=> (not res!1702431) (not e!2579609))))

(declare-fun getIndex!826 (List!45438 Rule!14768) Int)

(assert (=> b!4156754 (= res!1702431 (< (getIndex!826 rules!4102 r1!615) (getIndex!826 rules!4102 r2!597)))))

(declare-fun tp!1268248 () Bool)

(declare-fun b!4156755 () Bool)

(assert (=> b!4156755 (= e!2579602 (and tp!1268248 (inv!59855 (tag!8348 r2!597)) (inv!59857 (transformation!7484 r2!597)) e!2579607))))

(declare-fun tp!1268246 () Bool)

(declare-fun b!4156756 () Bool)

(assert (=> b!4156756 (= e!2579610 (and tp!1268246 (inv!59855 (tag!8348 r1!615)) (inv!59857 (transformation!7484 r1!615)) e!2579608))))

(declare-fun b!4156757 () Bool)

(declare-fun res!1702433 () Bool)

(assert (=> b!4156757 (=> (not res!1702433) (not e!2579609))))

(assert (=> b!4156757 (= res!1702433 (contains!9195 rules!4102 r1!615))))

(declare-fun b!4156758 () Bool)

(declare-fun lt!1481581 () List!45438)

(assert (=> b!4156758 (= e!2579603 (not (contains!9195 lt!1481581 r1!615)))))

(assert (=> b!4156758 (contains!9195 lt!1481581 r2!597)))

(declare-datatypes ((Unit!64479 0))(
  ( (Unit!64480) )
))
(declare-fun lt!1481583 () Unit!64479)

(declare-fun lemmaGetIndexBiggerAndHeadNotEqThenTailContains!8 (List!45438 Rule!14768 Rule!14768) Unit!64479)

(assert (=> b!4156758 (= lt!1481583 (lemmaGetIndexBiggerAndHeadNotEqThenTailContains!8 rules!4102 r1!615 r2!597))))

(assert (=> b!4156758 (noDuplicateTag!3061 thiss!26968 lt!1481581 Nil!45315)))

(declare-fun lt!1481582 () Unit!64479)

(declare-fun lemmaNoDupTagThenAlsoWithSubListAcc!36 (LexerInterface!7073 List!45439 List!45439 List!45438) Unit!64479)

(assert (=> b!4156758 (= lt!1481582 (lemmaNoDupTagThenAlsoWithSubListAcc!36 thiss!26968 (Cons!45315 (tag!8348 lt!1481584) Nil!45315) Nil!45315 lt!1481581))))

(declare-fun tail!6639 (List!45438) List!45438)

(assert (=> b!4156758 (= lt!1481581 (tail!6639 rules!4102))))

(assert (= (and start!395818 res!1702436) b!4156757))

(assert (= (and b!4156757 res!1702433) b!4156753))

(assert (= (and b!4156753 res!1702435) b!4156748))

(assert (= (and b!4156748 res!1702432) b!4156754))

(assert (= (and b!4156754 res!1702431) b!4156747))

(assert (= (and b!4156747 res!1702434) b!4156758))

(assert (= b!4156749 b!4156750))

(assert (= b!4156746 b!4156749))

(assert (= (and start!395818 ((_ is Cons!45314) rules!4102)) b!4156746))

(assert (= b!4156756 b!4156751))

(assert (= start!395818 b!4156756))

(assert (= b!4156755 b!4156752))

(assert (= start!395818 b!4156755))

(declare-fun m!4750791 () Bool)

(assert (=> b!4156754 m!4750791))

(declare-fun m!4750793 () Bool)

(assert (=> b!4156754 m!4750793))

(declare-fun m!4750795 () Bool)

(assert (=> b!4156756 m!4750795))

(declare-fun m!4750797 () Bool)

(assert (=> b!4156756 m!4750797))

(declare-fun m!4750799 () Bool)

(assert (=> b!4156755 m!4750799))

(declare-fun m!4750801 () Bool)

(assert (=> b!4156755 m!4750801))

(declare-fun m!4750803 () Bool)

(assert (=> b!4156747 m!4750803))

(declare-fun m!4750805 () Bool)

(assert (=> b!4156757 m!4750805))

(declare-fun m!4750807 () Bool)

(assert (=> b!4156758 m!4750807))

(declare-fun m!4750809 () Bool)

(assert (=> b!4156758 m!4750809))

(declare-fun m!4750811 () Bool)

(assert (=> b!4156758 m!4750811))

(declare-fun m!4750813 () Bool)

(assert (=> b!4156758 m!4750813))

(declare-fun m!4750815 () Bool)

(assert (=> b!4156758 m!4750815))

(declare-fun m!4750817 () Bool)

(assert (=> b!4156758 m!4750817))

(declare-fun m!4750819 () Bool)

(assert (=> b!4156748 m!4750819))

(assert (=> b!4156748 m!4750819))

(declare-fun m!4750821 () Bool)

(assert (=> b!4156748 m!4750821))

(declare-fun m!4750823 () Bool)

(assert (=> b!4156749 m!4750823))

(declare-fun m!4750825 () Bool)

(assert (=> b!4156749 m!4750825))

(declare-fun m!4750827 () Bool)

(assert (=> b!4156753 m!4750827))

(check-sat b_and!323813 (not b!4156756) b_and!323815 b_and!323819 (not b!4156748) (not b!4156757) (not b!4156746) (not b!4156755) (not b_next!120163) (not b!4156758) (not b_next!120161) (not b!4156753) b_and!323821 (not b_next!120155) (not b_next!120157) (not b_next!120165) b_and!323817 b_and!323823 (not b!4156747) (not b_next!120159) (not b!4156754) (not b!4156749))
(check-sat b_and!323813 b_and!323815 b_and!323819 (not b_next!120163) (not b_next!120161) (not b_next!120159) b_and!323821 (not b_next!120155) (not b_next!120157) (not b_next!120165) b_and!323817 b_and!323823)
(get-model)

(declare-fun d!1229089 () Bool)

(assert (=> d!1229089 (= (inv!59855 (tag!8348 r1!615)) (= (mod (str.len (value!233800 (tag!8348 r1!615))) 2) 0))))

(assert (=> b!4156756 d!1229089))

(declare-fun d!1229095 () Bool)

(declare-fun res!1702461 () Bool)

(declare-fun e!2579624 () Bool)

(assert (=> d!1229095 (=> (not res!1702461) (not e!2579624))))

(declare-fun semiInverseModEq!3245 (Int Int) Bool)

(assert (=> d!1229095 (= res!1702461 (semiInverseModEq!3245 (toChars!10007 (transformation!7484 r1!615)) (toValue!10148 (transformation!7484 r1!615))))))

(assert (=> d!1229095 (= (inv!59857 (transformation!7484 r1!615)) e!2579624)))

(declare-fun b!4156770 () Bool)

(declare-fun equivClasses!3144 (Int Int) Bool)

(assert (=> b!4156770 (= e!2579624 (equivClasses!3144 (toChars!10007 (transformation!7484 r1!615)) (toValue!10148 (transformation!7484 r1!615))))))

(assert (= (and d!1229095 res!1702461) b!4156770))

(declare-fun m!4750841 () Bool)

(assert (=> d!1229095 m!4750841))

(declare-fun m!4750843 () Bool)

(assert (=> b!4156770 m!4750843))

(assert (=> b!4156756 d!1229095))

(declare-fun d!1229103 () Bool)

(assert (=> d!1229103 (= (head!8806 rules!4102) (h!50734 rules!4102))))

(assert (=> b!4156747 d!1229103))

(declare-fun d!1229107 () Bool)

(declare-fun res!1702467 () Bool)

(declare-fun e!2579630 () Bool)

(assert (=> d!1229107 (=> res!1702467 e!2579630)))

(assert (=> d!1229107 (= res!1702467 ((_ is Nil!45314) lt!1481581))))

(assert (=> d!1229107 (= (noDuplicateTag!3061 thiss!26968 lt!1481581 Nil!45315) e!2579630)))

(declare-fun b!4156776 () Bool)

(declare-fun e!2579631 () Bool)

(assert (=> b!4156776 (= e!2579630 e!2579631)))

(declare-fun res!1702468 () Bool)

(assert (=> b!4156776 (=> (not res!1702468) (not e!2579631))))

(declare-fun contains!9197 (List!45439 String!52320) Bool)

(assert (=> b!4156776 (= res!1702468 (not (contains!9197 Nil!45315 (tag!8348 (h!50734 lt!1481581)))))))

(declare-fun b!4156777 () Bool)

(assert (=> b!4156777 (= e!2579631 (noDuplicateTag!3061 thiss!26968 (t!343469 lt!1481581) (Cons!45315 (tag!8348 (h!50734 lt!1481581)) Nil!45315)))))

(assert (= (and d!1229107 (not res!1702467)) b!4156776))

(assert (= (and b!4156776 res!1702468) b!4156777))

(declare-fun m!4750849 () Bool)

(assert (=> b!4156776 m!4750849))

(declare-fun m!4750851 () Bool)

(assert (=> b!4156777 m!4750851))

(assert (=> b!4156758 d!1229107))

(declare-fun d!1229111 () Bool)

(declare-fun lt!1481594 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7012 (List!45438) (InoxSet Rule!14768))

(assert (=> d!1229111 (= lt!1481594 (select (content!7012 lt!1481581) r1!615))))

(declare-fun e!2579645 () Bool)

(assert (=> d!1229111 (= lt!1481594 e!2579645)))

(declare-fun res!1702481 () Bool)

(assert (=> d!1229111 (=> (not res!1702481) (not e!2579645))))

(assert (=> d!1229111 (= res!1702481 ((_ is Cons!45314) lt!1481581))))

(assert (=> d!1229111 (= (contains!9195 lt!1481581 r1!615) lt!1481594)))

(declare-fun b!4156790 () Bool)

(declare-fun e!2579644 () Bool)

(assert (=> b!4156790 (= e!2579645 e!2579644)))

(declare-fun res!1702482 () Bool)

(assert (=> b!4156790 (=> res!1702482 e!2579644)))

(assert (=> b!4156790 (= res!1702482 (= (h!50734 lt!1481581) r1!615))))

(declare-fun b!4156791 () Bool)

(assert (=> b!4156791 (= e!2579644 (contains!9195 (t!343469 lt!1481581) r1!615))))

(assert (= (and d!1229111 res!1702481) b!4156790))

(assert (= (and b!4156790 (not res!1702482)) b!4156791))

(declare-fun m!4750863 () Bool)

(assert (=> d!1229111 m!4750863))

(declare-fun m!4750865 () Bool)

(assert (=> d!1229111 m!4750865))

(declare-fun m!4750867 () Bool)

(assert (=> b!4156791 m!4750867))

(assert (=> b!4156758 d!1229111))

(declare-fun d!1229117 () Bool)

(declare-fun lt!1481595 () Bool)

(assert (=> d!1229117 (= lt!1481595 (select (content!7012 lt!1481581) r2!597))))

(declare-fun e!2579647 () Bool)

(assert (=> d!1229117 (= lt!1481595 e!2579647)))

(declare-fun res!1702483 () Bool)

(assert (=> d!1229117 (=> (not res!1702483) (not e!2579647))))

(assert (=> d!1229117 (= res!1702483 ((_ is Cons!45314) lt!1481581))))

(assert (=> d!1229117 (= (contains!9195 lt!1481581 r2!597) lt!1481595)))

(declare-fun b!4156792 () Bool)

(declare-fun e!2579646 () Bool)

(assert (=> b!4156792 (= e!2579647 e!2579646)))

(declare-fun res!1702484 () Bool)

(assert (=> b!4156792 (=> res!1702484 e!2579646)))

(assert (=> b!4156792 (= res!1702484 (= (h!50734 lt!1481581) r2!597))))

(declare-fun b!4156793 () Bool)

(assert (=> b!4156793 (= e!2579646 (contains!9195 (t!343469 lt!1481581) r2!597))))

(assert (= (and d!1229117 res!1702483) b!4156792))

(assert (= (and b!4156792 (not res!1702484)) b!4156793))

(assert (=> d!1229117 m!4750863))

(declare-fun m!4750869 () Bool)

(assert (=> d!1229117 m!4750869))

(declare-fun m!4750871 () Bool)

(assert (=> b!4156793 m!4750871))

(assert (=> b!4156758 d!1229117))

(declare-fun d!1229119 () Bool)

(assert (=> d!1229119 (noDuplicateTag!3061 thiss!26968 lt!1481581 Nil!45315)))

(declare-fun lt!1481601 () Unit!64479)

(declare-fun choose!25444 (LexerInterface!7073 List!45439 List!45439 List!45438) Unit!64479)

(assert (=> d!1229119 (= lt!1481601 (choose!25444 thiss!26968 (Cons!45315 (tag!8348 lt!1481584) Nil!45315) Nil!45315 lt!1481581))))

(declare-fun subseq!563 (List!45439 List!45439) Bool)

(assert (=> d!1229119 (subseq!563 Nil!45315 (Cons!45315 (tag!8348 lt!1481584) Nil!45315))))

(assert (=> d!1229119 (= (lemmaNoDupTagThenAlsoWithSubListAcc!36 thiss!26968 (Cons!45315 (tag!8348 lt!1481584) Nil!45315) Nil!45315 lt!1481581) lt!1481601)))

(declare-fun bs!595535 () Bool)

(assert (= bs!595535 d!1229119))

(assert (=> bs!595535 m!4750817))

(declare-fun m!4750877 () Bool)

(assert (=> bs!595535 m!4750877))

(declare-fun m!4750879 () Bool)

(assert (=> bs!595535 m!4750879))

(assert (=> b!4156758 d!1229119))

(declare-fun d!1229125 () Bool)

(assert (=> d!1229125 (contains!9195 (tail!6639 rules!4102) r2!597)))

(declare-fun lt!1481605 () Unit!64479)

(declare-fun choose!25445 (List!45438 Rule!14768 Rule!14768) Unit!64479)

(assert (=> d!1229125 (= lt!1481605 (choose!25445 rules!4102 r1!615 r2!597))))

(declare-fun e!2579657 () Bool)

(assert (=> d!1229125 e!2579657))

(declare-fun res!1702494 () Bool)

(assert (=> d!1229125 (=> (not res!1702494) (not e!2579657))))

(assert (=> d!1229125 (= res!1702494 (contains!9195 rules!4102 r1!615))))

(assert (=> d!1229125 (= (lemmaGetIndexBiggerAndHeadNotEqThenTailContains!8 rules!4102 r1!615 r2!597) lt!1481605)))

(declare-fun b!4156803 () Bool)

(assert (=> b!4156803 (= e!2579657 (contains!9195 rules!4102 r2!597))))

(assert (= (and d!1229125 res!1702494) b!4156803))

(assert (=> d!1229125 m!4750811))

(assert (=> d!1229125 m!4750811))

(declare-fun m!4750891 () Bool)

(assert (=> d!1229125 m!4750891))

(declare-fun m!4750893 () Bool)

(assert (=> d!1229125 m!4750893))

(assert (=> d!1229125 m!4750805))

(assert (=> b!4156803 m!4750827))

(assert (=> b!4156758 d!1229125))

(declare-fun d!1229131 () Bool)

(assert (=> d!1229131 (= (tail!6639 rules!4102) (t!343469 rules!4102))))

(assert (=> b!4156758 d!1229131))

(declare-fun d!1229133 () Bool)

(declare-fun lt!1481608 () Bool)

(assert (=> d!1229133 (= lt!1481608 (select (content!7012 rules!4102) r1!615))))

(declare-fun e!2579662 () Bool)

(assert (=> d!1229133 (= lt!1481608 e!2579662)))

(declare-fun res!1702495 () Bool)

(assert (=> d!1229133 (=> (not res!1702495) (not e!2579662))))

(assert (=> d!1229133 (= res!1702495 ((_ is Cons!45314) rules!4102))))

(assert (=> d!1229133 (= (contains!9195 rules!4102 r1!615) lt!1481608)))

(declare-fun b!4156808 () Bool)

(declare-fun e!2579661 () Bool)

(assert (=> b!4156808 (= e!2579662 e!2579661)))

(declare-fun res!1702496 () Bool)

(assert (=> b!4156808 (=> res!1702496 e!2579661)))

(assert (=> b!4156808 (= res!1702496 (= (h!50734 rules!4102) r1!615))))

(declare-fun b!4156809 () Bool)

(assert (=> b!4156809 (= e!2579661 (contains!9195 (t!343469 rules!4102) r1!615))))

(assert (= (and d!1229133 res!1702495) b!4156808))

(assert (= (and b!4156808 (not res!1702496)) b!4156809))

(declare-fun m!4750895 () Bool)

(assert (=> d!1229133 m!4750895))

(declare-fun m!4750897 () Bool)

(assert (=> d!1229133 m!4750897))

(declare-fun m!4750899 () Bool)

(assert (=> b!4156809 m!4750899))

(assert (=> b!4156757 d!1229133))

(declare-fun b!4156853 () Bool)

(declare-fun e!2579682 () Int)

(assert (=> b!4156853 (= e!2579682 (+ 1 (getIndex!826 (t!343469 rules!4102) r1!615)))))

(declare-fun b!4156851 () Bool)

(declare-fun e!2579681 () Int)

(assert (=> b!4156851 (= e!2579681 0)))

(declare-fun b!4156852 () Bool)

(assert (=> b!4156852 (= e!2579681 e!2579682)))

(declare-fun c!711479 () Bool)

(assert (=> b!4156852 (= c!711479 (and ((_ is Cons!45314) rules!4102) (not (= (h!50734 rules!4102) r1!615))))))

(declare-fun b!4156854 () Bool)

(assert (=> b!4156854 (= e!2579682 (- 1))))

(declare-fun d!1229135 () Bool)

(declare-fun lt!1481614 () Int)

(assert (=> d!1229135 (>= lt!1481614 0)))

(assert (=> d!1229135 (= lt!1481614 e!2579681)))

(declare-fun c!711478 () Bool)

(assert (=> d!1229135 (= c!711478 (and ((_ is Cons!45314) rules!4102) (= (h!50734 rules!4102) r1!615)))))

(assert (=> d!1229135 (contains!9195 rules!4102 r1!615)))

(assert (=> d!1229135 (= (getIndex!826 rules!4102 r1!615) lt!1481614)))

(assert (= (and d!1229135 c!711478) b!4156851))

(assert (= (and d!1229135 (not c!711478)) b!4156852))

(assert (= (and b!4156852 c!711479) b!4156853))

(assert (= (and b!4156852 (not c!711479)) b!4156854))

(declare-fun m!4750913 () Bool)

(assert (=> b!4156853 m!4750913))

(assert (=> d!1229135 m!4750805))

(assert (=> b!4156754 d!1229135))

(declare-fun b!4156863 () Bool)

(declare-fun e!2579690 () Int)

(assert (=> b!4156863 (= e!2579690 (+ 1 (getIndex!826 (t!343469 rules!4102) r2!597)))))

(declare-fun b!4156861 () Bool)

(declare-fun e!2579689 () Int)

(assert (=> b!4156861 (= e!2579689 0)))

(declare-fun b!4156862 () Bool)

(assert (=> b!4156862 (= e!2579689 e!2579690)))

(declare-fun c!711481 () Bool)

(assert (=> b!4156862 (= c!711481 (and ((_ is Cons!45314) rules!4102) (not (= (h!50734 rules!4102) r2!597))))))

(declare-fun b!4156864 () Bool)

(assert (=> b!4156864 (= e!2579690 (- 1))))

(declare-fun d!1229145 () Bool)

(declare-fun lt!1481615 () Int)

(assert (=> d!1229145 (>= lt!1481615 0)))

(assert (=> d!1229145 (= lt!1481615 e!2579689)))

(declare-fun c!711480 () Bool)

(assert (=> d!1229145 (= c!711480 (and ((_ is Cons!45314) rules!4102) (= (h!50734 rules!4102) r2!597)))))

(assert (=> d!1229145 (contains!9195 rules!4102 r2!597)))

(assert (=> d!1229145 (= (getIndex!826 rules!4102 r2!597) lt!1481615)))

(assert (= (and d!1229145 c!711480) b!4156861))

(assert (= (and d!1229145 (not c!711480)) b!4156862))

(assert (= (and b!4156862 c!711481) b!4156863))

(assert (= (and b!4156862 (not c!711481)) b!4156864))

(declare-fun m!4750915 () Bool)

(assert (=> b!4156863 m!4750915))

(assert (=> d!1229145 m!4750827))

(assert (=> b!4156754 d!1229145))

(declare-fun d!1229147 () Bool)

(declare-fun lt!1481616 () Bool)

(assert (=> d!1229147 (= lt!1481616 (select (content!7012 rules!4102) r2!597))))

(declare-fun e!2579694 () Bool)

(assert (=> d!1229147 (= lt!1481616 e!2579694)))

(declare-fun res!1702500 () Bool)

(assert (=> d!1229147 (=> (not res!1702500) (not e!2579694))))

(assert (=> d!1229147 (= res!1702500 ((_ is Cons!45314) rules!4102))))

(assert (=> d!1229147 (= (contains!9195 rules!4102 r2!597) lt!1481616)))

(declare-fun b!4156867 () Bool)

(declare-fun e!2579693 () Bool)

(assert (=> b!4156867 (= e!2579694 e!2579693)))

(declare-fun res!1702501 () Bool)

(assert (=> b!4156867 (=> res!1702501 e!2579693)))

(assert (=> b!4156867 (= res!1702501 (= (h!50734 rules!4102) r2!597))))

(declare-fun b!4156868 () Bool)

(assert (=> b!4156868 (= e!2579693 (contains!9195 (t!343469 rules!4102) r2!597))))

(assert (= (and d!1229147 res!1702500) b!4156867))

(assert (= (and b!4156867 (not res!1702501)) b!4156868))

(assert (=> d!1229147 m!4750895))

(declare-fun m!4750917 () Bool)

(assert (=> d!1229147 m!4750917))

(declare-fun m!4750919 () Bool)

(assert (=> b!4156868 m!4750919))

(assert (=> b!4156753 d!1229147))

(declare-fun d!1229149 () Bool)

(declare-fun res!1702502 () Bool)

(declare-fun e!2579695 () Bool)

(assert (=> d!1229149 (=> res!1702502 e!2579695)))

(assert (=> d!1229149 (= res!1702502 ((_ is Nil!45314) rules!4102))))

(assert (=> d!1229149 (= (noDuplicateTag!3061 thiss!26968 rules!4102 (noDuplicateTag$default$2!66 thiss!26968)) e!2579695)))

(declare-fun b!4156869 () Bool)

(declare-fun e!2579696 () Bool)

(assert (=> b!4156869 (= e!2579695 e!2579696)))

(declare-fun res!1702503 () Bool)

(assert (=> b!4156869 (=> (not res!1702503) (not e!2579696))))

(assert (=> b!4156869 (= res!1702503 (not (contains!9197 (noDuplicateTag$default$2!66 thiss!26968) (tag!8348 (h!50734 rules!4102)))))))

(declare-fun b!4156870 () Bool)

(assert (=> b!4156870 (= e!2579696 (noDuplicateTag!3061 thiss!26968 (t!343469 rules!4102) (Cons!45315 (tag!8348 (h!50734 rules!4102)) (noDuplicateTag$default$2!66 thiss!26968))))))

(assert (= (and d!1229149 (not res!1702502)) b!4156869))

(assert (= (and b!4156869 res!1702503) b!4156870))

(assert (=> b!4156869 m!4750819))

(declare-fun m!4750921 () Bool)

(assert (=> b!4156869 m!4750921))

(declare-fun m!4750923 () Bool)

(assert (=> b!4156870 m!4750923))

(assert (=> b!4156748 d!1229149))

(declare-fun d!1229151 () Bool)

(assert (=> d!1229151 (= (noDuplicateTag$default$2!66 thiss!26968) Nil!45315)))

(assert (=> b!4156748 d!1229151))

(declare-fun d!1229153 () Bool)

(assert (=> d!1229153 (= (inv!59855 (tag!8348 r2!597)) (= (mod (str.len (value!233800 (tag!8348 r2!597))) 2) 0))))

(assert (=> b!4156755 d!1229153))

(declare-fun d!1229155 () Bool)

(declare-fun res!1702504 () Bool)

(declare-fun e!2579702 () Bool)

(assert (=> d!1229155 (=> (not res!1702504) (not e!2579702))))

(assert (=> d!1229155 (= res!1702504 (semiInverseModEq!3245 (toChars!10007 (transformation!7484 r2!597)) (toValue!10148 (transformation!7484 r2!597))))))

(assert (=> d!1229155 (= (inv!59857 (transformation!7484 r2!597)) e!2579702)))

(declare-fun b!4156878 () Bool)

(assert (=> b!4156878 (= e!2579702 (equivClasses!3144 (toChars!10007 (transformation!7484 r2!597)) (toValue!10148 (transformation!7484 r2!597))))))

(assert (= (and d!1229155 res!1702504) b!4156878))

(declare-fun m!4750929 () Bool)

(assert (=> d!1229155 m!4750929))

(declare-fun m!4750931 () Bool)

(assert (=> b!4156878 m!4750931))

(assert (=> b!4156755 d!1229155))

(declare-fun d!1229157 () Bool)

(assert (=> d!1229157 (= (inv!59855 (tag!8348 (h!50734 rules!4102))) (= (mod (str.len (value!233800 (tag!8348 (h!50734 rules!4102)))) 2) 0))))

(assert (=> b!4156749 d!1229157))

(declare-fun d!1229159 () Bool)

(declare-fun res!1702505 () Bool)

(declare-fun e!2579703 () Bool)

(assert (=> d!1229159 (=> (not res!1702505) (not e!2579703))))

(assert (=> d!1229159 (= res!1702505 (semiInverseModEq!3245 (toChars!10007 (transformation!7484 (h!50734 rules!4102))) (toValue!10148 (transformation!7484 (h!50734 rules!4102)))))))

(assert (=> d!1229159 (= (inv!59857 (transformation!7484 (h!50734 rules!4102))) e!2579703)))

(declare-fun b!4156879 () Bool)

(assert (=> b!4156879 (= e!2579703 (equivClasses!3144 (toChars!10007 (transformation!7484 (h!50734 rules!4102))) (toValue!10148 (transformation!7484 (h!50734 rules!4102)))))))

(assert (= (and d!1229159 res!1702505) b!4156879))

(declare-fun m!4750933 () Bool)

(assert (=> d!1229159 m!4750933))

(declare-fun m!4750935 () Bool)

(assert (=> b!4156879 m!4750935))

(assert (=> b!4156749 d!1229159))

(declare-fun b!4156890 () Bool)

(declare-fun b_free!119467 () Bool)

(declare-fun b_next!120171 () Bool)

(assert (=> b!4156890 (= b_free!119467 (not b_next!120171))))

(declare-fun tp!1268297 () Bool)

(declare-fun b_and!323829 () Bool)

(assert (=> b!4156890 (= tp!1268297 b_and!323829)))

(declare-fun b_free!119469 () Bool)

(declare-fun b_next!120173 () Bool)

(assert (=> b!4156890 (= b_free!119469 (not b_next!120173))))

(declare-fun tp!1268296 () Bool)

(declare-fun b_and!323831 () Bool)

(assert (=> b!4156890 (= tp!1268296 b_and!323831)))

(declare-fun e!2579715 () Bool)

(assert (=> b!4156890 (= e!2579715 (and tp!1268297 tp!1268296))))

(declare-fun e!2579714 () Bool)

(declare-fun b!4156889 () Bool)

(declare-fun tp!1268298 () Bool)

(assert (=> b!4156889 (= e!2579714 (and tp!1268298 (inv!59855 (tag!8348 (h!50734 (t!343469 rules!4102)))) (inv!59857 (transformation!7484 (h!50734 (t!343469 rules!4102)))) e!2579715))))

(declare-fun b!4156888 () Bool)

(declare-fun e!2579712 () Bool)

(declare-fun tp!1268299 () Bool)

(assert (=> b!4156888 (= e!2579712 (and e!2579714 tp!1268299))))

(assert (=> b!4156746 (= tp!1268242 e!2579712)))

(assert (= b!4156889 b!4156890))

(assert (= b!4156888 b!4156889))

(assert (= (and b!4156746 ((_ is Cons!45314) (t!343469 rules!4102))) b!4156888))

(declare-fun m!4750937 () Bool)

(assert (=> b!4156889 m!4750937))

(declare-fun m!4750939 () Bool)

(assert (=> b!4156889 m!4750939))

(declare-fun e!2579718 () Bool)

(assert (=> b!4156756 (= tp!1268246 e!2579718)))

(declare-fun b!4156902 () Bool)

(declare-fun tp!1268312 () Bool)

(declare-fun tp!1268313 () Bool)

(assert (=> b!4156902 (= e!2579718 (and tp!1268312 tp!1268313))))

(declare-fun b!4156903 () Bool)

(declare-fun tp!1268310 () Bool)

(assert (=> b!4156903 (= e!2579718 tp!1268310)))

(declare-fun b!4156904 () Bool)

(declare-fun tp!1268314 () Bool)

(declare-fun tp!1268311 () Bool)

(assert (=> b!4156904 (= e!2579718 (and tp!1268314 tp!1268311))))

(declare-fun b!4156901 () Bool)

(declare-fun tp_is_empty!21657 () Bool)

(assert (=> b!4156901 (= e!2579718 tp_is_empty!21657)))

(assert (= (and b!4156756 ((_ is ElementMatch!12389) (regex!7484 r1!615))) b!4156901))

(assert (= (and b!4156756 ((_ is Concat!20104) (regex!7484 r1!615))) b!4156902))

(assert (= (and b!4156756 ((_ is Star!12389) (regex!7484 r1!615))) b!4156903))

(assert (= (and b!4156756 ((_ is Union!12389) (regex!7484 r1!615))) b!4156904))

(declare-fun e!2579719 () Bool)

(assert (=> b!4156755 (= tp!1268248 e!2579719)))

(declare-fun b!4156906 () Bool)

(declare-fun tp!1268317 () Bool)

(declare-fun tp!1268318 () Bool)

(assert (=> b!4156906 (= e!2579719 (and tp!1268317 tp!1268318))))

(declare-fun b!4156907 () Bool)

(declare-fun tp!1268315 () Bool)

(assert (=> b!4156907 (= e!2579719 tp!1268315)))

(declare-fun b!4156908 () Bool)

(declare-fun tp!1268319 () Bool)

(declare-fun tp!1268316 () Bool)

(assert (=> b!4156908 (= e!2579719 (and tp!1268319 tp!1268316))))

(declare-fun b!4156905 () Bool)

(assert (=> b!4156905 (= e!2579719 tp_is_empty!21657)))

(assert (= (and b!4156755 ((_ is ElementMatch!12389) (regex!7484 r2!597))) b!4156905))

(assert (= (and b!4156755 ((_ is Concat!20104) (regex!7484 r2!597))) b!4156906))

(assert (= (and b!4156755 ((_ is Star!12389) (regex!7484 r2!597))) b!4156907))

(assert (= (and b!4156755 ((_ is Union!12389) (regex!7484 r2!597))) b!4156908))

(declare-fun e!2579720 () Bool)

(assert (=> b!4156749 (= tp!1268249 e!2579720)))

(declare-fun b!4156910 () Bool)

(declare-fun tp!1268322 () Bool)

(declare-fun tp!1268323 () Bool)

(assert (=> b!4156910 (= e!2579720 (and tp!1268322 tp!1268323))))

(declare-fun b!4156911 () Bool)

(declare-fun tp!1268320 () Bool)

(assert (=> b!4156911 (= e!2579720 tp!1268320)))

(declare-fun b!4156912 () Bool)

(declare-fun tp!1268324 () Bool)

(declare-fun tp!1268321 () Bool)

(assert (=> b!4156912 (= e!2579720 (and tp!1268324 tp!1268321))))

(declare-fun b!4156909 () Bool)

(assert (=> b!4156909 (= e!2579720 tp_is_empty!21657)))

(assert (= (and b!4156749 ((_ is ElementMatch!12389) (regex!7484 (h!50734 rules!4102)))) b!4156909))

(assert (= (and b!4156749 ((_ is Concat!20104) (regex!7484 (h!50734 rules!4102)))) b!4156910))

(assert (= (and b!4156749 ((_ is Star!12389) (regex!7484 (h!50734 rules!4102)))) b!4156911))

(assert (= (and b!4156749 ((_ is Union!12389) (regex!7484 (h!50734 rules!4102)))) b!4156912))

(check-sat (not d!1229111) b_and!323813 (not b!4156908) (not b!4156889) b_and!323831 (not b!4156869) (not b!4156879) (not b!4156906) (not d!1229135) b_and!323829 (not b_next!120159) (not b!4156853) (not b!4156777) b_and!323815 (not b!4156907) (not b!4156910) b_and!323819 b_and!323821 (not b!4156888) (not b_next!120155) (not b!4156903) (not b_next!120157) (not d!1229155) (not b_next!120165) (not b!4156793) b_and!323817 b_and!323823 (not b!4156863) (not d!1229145) (not b!4156803) (not b!4156809) (not b!4156904) (not b!4156870) (not b_next!120173) (not b_next!120163) (not b_next!120171) (not b!4156776) (not d!1229133) (not b!4156770) (not d!1229095) (not d!1229117) (not d!1229147) tp_is_empty!21657 (not b_next!120161) (not b!4156791) (not b!4156868) (not b!4156911) (not b!4156878) (not d!1229159) (not d!1229119) (not d!1229125) (not b!4156902) (not b!4156912))
(check-sat b_and!323813 b_and!323815 b_and!323819 b_and!323831 b_and!323829 (not b_next!120171) (not b_next!120161) (not b_next!120159) b_and!323821 (not b_next!120155) (not b_next!120157) (not b_next!120165) b_and!323817 b_and!323823 (not b_next!120173) (not b_next!120163))
