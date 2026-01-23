; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115014 () Bool)

(assert start!115014)

(declare-fun b!1301662 () Bool)

(declare-fun b_free!30963 () Bool)

(declare-fun b_next!31667 () Bool)

(assert (=> b!1301662 (= b_free!30963 (not b_next!31667))))

(declare-fun tp!379815 () Bool)

(declare-fun b_and!86815 () Bool)

(assert (=> b!1301662 (= tp!379815 b_and!86815)))

(declare-fun b_free!30965 () Bool)

(declare-fun b_next!31669 () Bool)

(assert (=> b!1301662 (= b_free!30965 (not b_next!31669))))

(declare-fun tp!379812 () Bool)

(declare-fun b_and!86817 () Bool)

(assert (=> b!1301662 (= tp!379812 b_and!86817)))

(declare-fun b!1301656 () Bool)

(declare-fun b_free!30967 () Bool)

(declare-fun b_next!31671 () Bool)

(assert (=> b!1301656 (= b_free!30967 (not b_next!31671))))

(declare-fun tp!379814 () Bool)

(declare-fun b_and!86819 () Bool)

(assert (=> b!1301656 (= tp!379814 b_and!86819)))

(declare-fun b_free!30969 () Bool)

(declare-fun b_next!31673 () Bool)

(assert (=> b!1301656 (= b_free!30969 (not b_next!31673))))

(declare-fun tp!379818 () Bool)

(declare-fun b_and!86821 () Bool)

(assert (=> b!1301656 (= tp!379818 b_and!86821)))

(declare-fun b!1301659 () Bool)

(declare-fun b_free!30971 () Bool)

(declare-fun b_next!31675 () Bool)

(assert (=> b!1301659 (= b_free!30971 (not b_next!31675))))

(declare-fun tp!379827 () Bool)

(declare-fun b_and!86823 () Bool)

(assert (=> b!1301659 (= tp!379827 b_and!86823)))

(declare-fun b_free!30973 () Bool)

(declare-fun b_next!31677 () Bool)

(assert (=> b!1301659 (= b_free!30973 (not b_next!31677))))

(declare-fun tp!379825 () Bool)

(declare-fun b_and!86825 () Bool)

(assert (=> b!1301659 (= tp!379825 b_and!86825)))

(declare-fun b!1301664 () Bool)

(assert (=> b!1301664 true))

(assert (=> b!1301664 true))

(declare-fun b!1301650 () Bool)

(assert (=> b!1301650 true))

(declare-fun b!1301648 () Bool)

(declare-fun res!583010 () Bool)

(declare-fun e!834524 () Bool)

(assert (=> b!1301648 (=> res!583010 e!834524)))

(declare-datatypes ((C!7420 0))(
  ( (C!7421 (val!4270 Int)) )
))
(declare-datatypes ((List!13113 0))(
  ( (Nil!13047) (Cons!13047 (h!18448 C!7420) (t!117674 List!13113)) )
))
(declare-fun lt!427965 () List!13113)

(declare-fun lt!427961 () C!7420)

(declare-fun contains!2191 (List!13113 C!7420) Bool)

(assert (=> b!1301648 (= res!583010 (not (contains!2191 lt!427965 lt!427961)))))

(declare-fun b!1301649 () Bool)

(declare-fun res!583001 () Bool)

(declare-fun e!834535 () Bool)

(assert (=> b!1301649 (=> (not res!583001) (not e!834535))))

(declare-datatypes ((List!13114 0))(
  ( (Nil!13048) (Cons!13048 (h!18449 (_ BitVec 16)) (t!117675 List!13114)) )
))
(declare-datatypes ((TokenValue!2341 0))(
  ( (FloatLiteralValue!4682 (text!16832 List!13114)) (TokenValueExt!2340 (__x!8511 Int)) (Broken!11705 (value!73760 List!13114)) (Object!2406) (End!2341) (Def!2341) (Underscore!2341) (Match!2341) (Else!2341) (Error!2341) (Case!2341) (If!2341) (Extends!2341) (Abstract!2341) (Class!2341) (Val!2341) (DelimiterValue!4682 (del!2401 List!13114)) (KeywordValue!2347 (value!73761 List!13114)) (CommentValue!4682 (value!73762 List!13114)) (WhitespaceValue!4682 (value!73763 List!13114)) (IndentationValue!2341 (value!73764 List!13114)) (String!15940) (Int32!2341) (Broken!11706 (value!73765 List!13114)) (Boolean!2342) (Unit!19173) (OperatorValue!2344 (op!2401 List!13114)) (IdentifierValue!4682 (value!73766 List!13114)) (IdentifierValue!4683 (value!73767 List!13114)) (WhitespaceValue!4683 (value!73768 List!13114)) (True!4682) (False!4682) (Broken!11707 (value!73769 List!13114)) (Broken!11708 (value!73770 List!13114)) (True!4683) (RightBrace!2341) (RightBracket!2341) (Colon!2341) (Null!2341) (Comma!2341) (LeftBracket!2341) (False!4683) (LeftBrace!2341) (ImaginaryLiteralValue!2341 (text!16833 List!13114)) (StringLiteralValue!7023 (value!73771 List!13114)) (EOFValue!2341 (value!73772 List!13114)) (IdentValue!2341 (value!73773 List!13114)) (DelimiterValue!4683 (value!73774 List!13114)) (DedentValue!2341 (value!73775 List!13114)) (NewLineValue!2341 (value!73776 List!13114)) (IntegerValue!7023 (value!73777 (_ BitVec 32)) (text!16834 List!13114)) (IntegerValue!7024 (value!73778 Int) (text!16835 List!13114)) (Times!2341) (Or!2341) (Equal!2341) (Minus!2341) (Broken!11709 (value!73779 List!13114)) (And!2341) (Div!2341) (LessEqual!2341) (Mod!2341) (Concat!5906) (Not!2341) (Plus!2341) (SpaceValue!2341 (value!73780 List!13114)) (IntegerValue!7025 (value!73781 Int) (text!16836 List!13114)) (StringLiteralValue!7024 (text!16837 List!13114)) (FloatLiteralValue!4683 (text!16838 List!13114)) (BytesLiteralValue!2341 (value!73782 List!13114)) (CommentValue!4683 (value!73783 List!13114)) (StringLiteralValue!7025 (value!73784 List!13114)) (ErrorTokenValue!2341 (msg!2402 List!13114)) )
))
(declare-datatypes ((IArray!8571 0))(
  ( (IArray!8572 (innerList!4343 List!13113)) )
))
(declare-datatypes ((Conc!4283 0))(
  ( (Node!4283 (left!11218 Conc!4283) (right!11548 Conc!4283) (csize!8796 Int) (cheight!4494 Int)) (Leaf!6605 (xs!6998 IArray!8571) (csize!8797 Int)) (Empty!4283) )
))
(declare-datatypes ((BalanceConc!8506 0))(
  ( (BalanceConc!8507 (c!214227 Conc!4283)) )
))
(declare-datatypes ((Regex!3565 0))(
  ( (ElementMatch!3565 (c!214228 C!7420)) (Concat!5907 (regOne!7642 Regex!3565) (regTwo!7642 Regex!3565)) (EmptyExpr!3565) (Star!3565 (reg!3894 Regex!3565)) (EmptyLang!3565) (Union!3565 (regOne!7643 Regex!3565) (regTwo!7643 Regex!3565)) )
))
(declare-datatypes ((String!15941 0))(
  ( (String!15942 (value!73785 String)) )
))
(declare-datatypes ((TokenValueInjection!4342 0))(
  ( (TokenValueInjection!4343 (toValue!3466 Int) (toChars!3325 Int)) )
))
(declare-datatypes ((Rule!4302 0))(
  ( (Rule!4303 (regex!2251 Regex!3565) (tag!2513 String!15941) (isSeparator!2251 Bool) (transformation!2251 TokenValueInjection!4342)) )
))
(declare-datatypes ((List!13115 0))(
  ( (Nil!13049) (Cons!13049 (h!18450 Rule!4302) (t!117676 List!13115)) )
))
(declare-fun rules!2550 () List!13115)

(declare-fun isEmpty!7749 (List!13115) Bool)

(assert (=> b!1301649 (= res!583001 (not (isEmpty!7749 rules!2550)))))

(assert (=> b!1301650 (= e!834524 true)))

(declare-datatypes ((List!13116 0))(
  ( (Nil!13050) (Cons!13050 (h!18451 Regex!3565) (t!117677 List!13116)) )
))
(declare-fun lt!427968 () List!13116)

(declare-fun lambda!51302 () Int)

(declare-fun map!2843 (List!13115 Int) List!13116)

(assert (=> b!1301650 (= lt!427968 (map!2843 rules!2550 lambda!51302))))

(declare-fun lt!427971 () List!13116)

(declare-fun lambda!51303 () Int)

(declare-fun exists!211 (List!13116 Int) Bool)

(assert (=> b!1301650 (exists!211 lt!427971 lambda!51303)))

(declare-fun lt!427964 () Regex!3565)

(declare-datatypes ((Unit!19174 0))(
  ( (Unit!19175) )
))
(declare-fun lt!427972 () Unit!19174)

(declare-fun matchRGenUnionSpec!2 (Regex!3565 List!13116 List!13113) Unit!19174)

(assert (=> b!1301650 (= lt!427972 (matchRGenUnionSpec!2 lt!427964 lt!427971 lt!427965))))

(assert (=> b!1301650 (= lt!427971 (map!2843 rules!2550 lambda!51302))))

(declare-fun b!1301651 () Bool)

(declare-fun e!834541 () Bool)

(declare-fun e!834531 () Bool)

(declare-fun tp!379823 () Bool)

(assert (=> b!1301651 (= e!834541 (and e!834531 tp!379823))))

(declare-fun b!1301652 () Bool)

(declare-fun e!834539 () Bool)

(declare-fun tp_is_empty!6599 () Bool)

(assert (=> b!1301652 (= e!834539 tp_is_empty!6599)))

(declare-fun b!1301653 () Bool)

(declare-fun res!583002 () Bool)

(assert (=> b!1301653 (=> (not res!583002) (not e!834535))))

(declare-datatypes ((Token!4164 0))(
  ( (Token!4165 (value!73786 TokenValue!2341) (rule!3990 Rule!4302) (size!10668 Int) (originalCharacters!3113 List!13113)) )
))
(declare-fun t1!34 () Token!4164)

(declare-fun t2!34 () Token!4164)

(assert (=> b!1301653 (= res!583002 (not (= (isSeparator!2251 (rule!3990 t1!34)) (isSeparator!2251 (rule!3990 t2!34)))))))

(declare-fun b!1301654 () Bool)

(declare-fun res!583000 () Bool)

(assert (=> b!1301654 (=> res!583000 e!834524)))

(declare-fun lt!427966 () C!7420)

(assert (=> b!1301654 (= res!583000 (not (contains!2191 lt!427965 lt!427966)))))

(declare-fun b!1301655 () Bool)

(declare-fun e!834525 () Bool)

(assert (=> b!1301655 (= e!834535 e!834525)))

(declare-fun res!583007 () Bool)

(assert (=> b!1301655 (=> (not res!583007) (not e!834525))))

(declare-fun lt!427970 () BalanceConc!8506)

(declare-fun size!10669 (BalanceConc!8506) Int)

(assert (=> b!1301655 (= res!583007 (> (size!10669 lt!427970) 0))))

(declare-fun charsOf!1223 (Token!4164) BalanceConc!8506)

(assert (=> b!1301655 (= lt!427970 (charsOf!1223 t2!34))))

(declare-fun e!834534 () Bool)

(assert (=> b!1301656 (= e!834534 (and tp!379814 tp!379818))))

(declare-fun b!1301657 () Bool)

(declare-fun e!834536 () Bool)

(assert (=> b!1301657 (= e!834525 e!834536)))

(declare-fun res!582999 () Bool)

(assert (=> b!1301657 (=> (not res!582999) (not e!834536))))

(declare-fun lt!427962 () List!13113)

(declare-fun prefixMatch!78 (Regex!3565 List!13113) Bool)

(assert (=> b!1301657 (= res!582999 (prefixMatch!78 lt!427964 lt!427962))))

(declare-datatypes ((LexerInterface!1946 0))(
  ( (LexerInterfaceExt!1943 (__x!8512 Int)) (Lexer!1944) )
))
(declare-fun thiss!19762 () LexerInterface!1946)

(declare-fun rulesRegex!136 (LexerInterface!1946 List!13115) Regex!3565)

(assert (=> b!1301657 (= lt!427964 (rulesRegex!136 thiss!19762 rules!2550))))

(declare-fun lt!427969 () List!13113)

(declare-fun ++!3322 (List!13113 List!13113) List!13113)

(assert (=> b!1301657 (= lt!427962 (++!3322 lt!427969 (Cons!13047 lt!427966 Nil!13047)))))

(declare-fun apply!2917 (BalanceConc!8506 Int) C!7420)

(assert (=> b!1301657 (= lt!427966 (apply!2917 lt!427970 0))))

(declare-fun lt!427967 () BalanceConc!8506)

(declare-fun list!4893 (BalanceConc!8506) List!13113)

(assert (=> b!1301657 (= lt!427969 (list!4893 lt!427967))))

(assert (=> b!1301657 (= lt!427967 (charsOf!1223 t1!34))))

(declare-fun b!1301658 () Bool)

(declare-fun tp!379820 () Bool)

(assert (=> b!1301658 (= e!834539 tp!379820)))

(declare-fun e!834532 () Bool)

(assert (=> b!1301659 (= e!834532 (and tp!379827 tp!379825))))

(declare-fun b!1301660 () Bool)

(declare-fun res!583011 () Bool)

(assert (=> b!1301660 (=> (not res!583011) (not e!834535))))

(declare-fun rulesProduceIndividualToken!915 (LexerInterface!1946 List!13115 Token!4164) Bool)

(assert (=> b!1301660 (= res!583011 (rulesProduceIndividualToken!915 thiss!19762 rules!2550 t1!34))))

(declare-fun res!583004 () Bool)

(assert (=> start!115014 (=> (not res!583004) (not e!834535))))

(get-info :version)

(assert (=> start!115014 (= res!583004 ((_ is Lexer!1944) thiss!19762))))

(assert (=> start!115014 e!834535))

(declare-fun e!834543 () Bool)

(declare-fun inv!17479 (Token!4164) Bool)

(assert (=> start!115014 (and (inv!17479 t1!34) e!834543)))

(assert (=> start!115014 true))

(assert (=> start!115014 e!834539))

(assert (=> start!115014 e!834541))

(declare-fun e!834544 () Bool)

(assert (=> start!115014 (and (inv!17479 t2!34) e!834544)))

(declare-fun b!1301661 () Bool)

(declare-fun e!834540 () Bool)

(declare-fun tp!379828 () Bool)

(declare-fun inv!21 (TokenValue!2341) Bool)

(assert (=> b!1301661 (= e!834543 (and (inv!21 (value!73786 t1!34)) e!834540 tp!379828))))

(declare-fun e!834542 () Bool)

(assert (=> b!1301662 (= e!834542 (and tp!379815 tp!379812))))

(declare-fun tp!379826 () Bool)

(declare-fun b!1301663 () Bool)

(declare-fun inv!17476 (String!15941) Bool)

(declare-fun inv!17480 (TokenValueInjection!4342) Bool)

(assert (=> b!1301663 (= e!834540 (and tp!379826 (inv!17476 (tag!2513 (rule!3990 t1!34))) (inv!17480 (transformation!2251 (rule!3990 t1!34))) e!834542))))

(declare-fun e!834529 () Bool)

(assert (=> b!1301664 (= e!834536 (not e!834529))))

(declare-fun res!582998 () Bool)

(assert (=> b!1301664 (=> res!582998 e!834529)))

(declare-fun lambda!51301 () Int)

(declare-fun Exists!723 (Int) Bool)

(assert (=> b!1301664 (= res!582998 (not (Exists!723 lambda!51301)))))

(assert (=> b!1301664 (Exists!723 lambda!51301)))

(declare-fun lt!427963 () Unit!19174)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!41 (Regex!3565 List!13113) Unit!19174)

(assert (=> b!1301664 (= lt!427963 (lemmaPrefixMatchThenExistsStringThatMatches!41 lt!427964 lt!427962))))

(declare-fun b!1301665 () Bool)

(declare-fun res!583005 () Bool)

(assert (=> b!1301665 (=> res!583005 e!834524)))

(declare-fun matchR!1567 (Regex!3565 List!13113) Bool)

(assert (=> b!1301665 (= res!583005 (not (matchR!1567 lt!427964 lt!427965)))))

(declare-fun b!1301666 () Bool)

(declare-fun res!583006 () Bool)

(assert (=> b!1301666 (=> (not res!583006) (not e!834525))))

(declare-fun separableTokensPredicate!229 (LexerInterface!1946 Token!4164 Token!4164 List!13115) Bool)

(assert (=> b!1301666 (= res!583006 (not (separableTokensPredicate!229 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1301667 () Bool)

(declare-fun tp!379817 () Bool)

(declare-fun tp!379816 () Bool)

(assert (=> b!1301667 (= e!834539 (and tp!379817 tp!379816))))

(declare-fun b!1301668 () Bool)

(declare-fun e!834538 () Bool)

(assert (=> b!1301668 (= e!834538 e!834524)))

(declare-fun res!583012 () Bool)

(assert (=> b!1301668 (=> res!583012 e!834524)))

(assert (=> b!1301668 (= res!583012 (not (contains!2191 lt!427962 lt!427961)))))

(assert (=> b!1301668 (= lt!427961 (apply!2917 lt!427967 0))))

(declare-fun b!1301669 () Bool)

(declare-fun res!583008 () Bool)

(assert (=> b!1301669 (=> (not res!583008) (not e!834535))))

(declare-fun rulesInvariant!1816 (LexerInterface!1946 List!13115) Bool)

(assert (=> b!1301669 (= res!583008 (rulesInvariant!1816 thiss!19762 rules!2550))))

(declare-fun b!1301670 () Bool)

(declare-fun e!834533 () Bool)

(declare-fun tp!379819 () Bool)

(assert (=> b!1301670 (= e!834533 (and tp!379819 (inv!17476 (tag!2513 (rule!3990 t2!34))) (inv!17480 (transformation!2251 (rule!3990 t2!34))) e!834532))))

(declare-fun b!1301671 () Bool)

(declare-fun res!583014 () Bool)

(assert (=> b!1301671 (=> (not res!583014) (not e!834535))))

(assert (=> b!1301671 (= res!583014 (rulesProduceIndividualToken!915 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1301672 () Bool)

(declare-fun tp!379822 () Bool)

(assert (=> b!1301672 (= e!834544 (and (inv!21 (value!73786 t2!34)) e!834533 tp!379822))))

(declare-fun b!1301673 () Bool)

(declare-fun tp!379813 () Bool)

(declare-fun tp!379821 () Bool)

(assert (=> b!1301673 (= e!834539 (and tp!379813 tp!379821))))

(declare-fun b!1301674 () Bool)

(declare-fun tp!379824 () Bool)

(assert (=> b!1301674 (= e!834531 (and tp!379824 (inv!17476 (tag!2513 (h!18450 rules!2550))) (inv!17480 (transformation!2251 (h!18450 rules!2550))) e!834534))))

(declare-fun b!1301675 () Bool)

(declare-fun res!583003 () Bool)

(assert (=> b!1301675 (=> (not res!583003) (not e!834525))))

(declare-fun sepAndNonSepRulesDisjointChars!624 (List!13115 List!13115) Bool)

(assert (=> b!1301675 (= res!583003 (sepAndNonSepRulesDisjointChars!624 rules!2550 rules!2550))))

(declare-fun b!1301676 () Bool)

(assert (=> b!1301676 (= e!834529 e!834538)))

(declare-fun res!583013 () Bool)

(assert (=> b!1301676 (=> res!583013 e!834538)))

(declare-fun getSuffix!421 (List!13113 List!13113) List!13113)

(assert (=> b!1301676 (= res!583013 (not (= lt!427965 (++!3322 lt!427962 (getSuffix!421 lt!427965 lt!427962)))))))

(declare-fun pickWitness!28 (Int) List!13113)

(assert (=> b!1301676 (= lt!427965 (pickWitness!28 lambda!51301))))

(declare-fun b!1301677 () Bool)

(declare-fun res!583009 () Bool)

(assert (=> b!1301677 (=> res!583009 e!834524)))

(assert (=> b!1301677 (= res!583009 (not (contains!2191 lt!427962 lt!427966)))))

(assert (= (and start!115014 res!583004) b!1301649))

(assert (= (and b!1301649 res!583001) b!1301669))

(assert (= (and b!1301669 res!583008) b!1301660))

(assert (= (and b!1301660 res!583011) b!1301671))

(assert (= (and b!1301671 res!583014) b!1301653))

(assert (= (and b!1301653 res!583002) b!1301655))

(assert (= (and b!1301655 res!583007) b!1301675))

(assert (= (and b!1301675 res!583003) b!1301666))

(assert (= (and b!1301666 res!583006) b!1301657))

(assert (= (and b!1301657 res!582999) b!1301664))

(assert (= (and b!1301664 (not res!582998)) b!1301676))

(assert (= (and b!1301676 (not res!583013)) b!1301668))

(assert (= (and b!1301668 (not res!583012)) b!1301648))

(assert (= (and b!1301648 (not res!583010)) b!1301677))

(assert (= (and b!1301677 (not res!583009)) b!1301654))

(assert (= (and b!1301654 (not res!583000)) b!1301665))

(assert (= (and b!1301665 (not res!583005)) b!1301650))

(assert (= b!1301663 b!1301662))

(assert (= b!1301661 b!1301663))

(assert (= start!115014 b!1301661))

(declare-fun rr!27 () Regex!3565)

(assert (= (and start!115014 ((_ is ElementMatch!3565) rr!27)) b!1301652))

(assert (= (and start!115014 ((_ is Concat!5907) rr!27)) b!1301673))

(assert (= (and start!115014 ((_ is Star!3565) rr!27)) b!1301658))

(assert (= (and start!115014 ((_ is Union!3565) rr!27)) b!1301667))

(assert (= b!1301674 b!1301656))

(assert (= b!1301651 b!1301674))

(assert (= (and start!115014 ((_ is Cons!13049) rules!2550)) b!1301651))

(assert (= b!1301670 b!1301659))

(assert (= b!1301672 b!1301670))

(assert (= start!115014 b!1301672))

(declare-fun m!1453323 () Bool)

(assert (=> b!1301663 m!1453323))

(declare-fun m!1453325 () Bool)

(assert (=> b!1301663 m!1453325))

(declare-fun m!1453327 () Bool)

(assert (=> b!1301675 m!1453327))

(declare-fun m!1453329 () Bool)

(assert (=> b!1301666 m!1453329))

(declare-fun m!1453331 () Bool)

(assert (=> b!1301648 m!1453331))

(declare-fun m!1453333 () Bool)

(assert (=> b!1301655 m!1453333))

(declare-fun m!1453335 () Bool)

(assert (=> b!1301655 m!1453335))

(declare-fun m!1453337 () Bool)

(assert (=> b!1301660 m!1453337))

(declare-fun m!1453339 () Bool)

(assert (=> b!1301665 m!1453339))

(declare-fun m!1453341 () Bool)

(assert (=> b!1301661 m!1453341))

(declare-fun m!1453343 () Bool)

(assert (=> b!1301671 m!1453343))

(declare-fun m!1453345 () Bool)

(assert (=> b!1301650 m!1453345))

(declare-fun m!1453347 () Bool)

(assert (=> b!1301650 m!1453347))

(declare-fun m!1453349 () Bool)

(assert (=> b!1301650 m!1453349))

(assert (=> b!1301650 m!1453345))

(declare-fun m!1453351 () Bool)

(assert (=> b!1301664 m!1453351))

(assert (=> b!1301664 m!1453351))

(declare-fun m!1453353 () Bool)

(assert (=> b!1301664 m!1453353))

(declare-fun m!1453355 () Bool)

(assert (=> start!115014 m!1453355))

(declare-fun m!1453357 () Bool)

(assert (=> start!115014 m!1453357))

(declare-fun m!1453359 () Bool)

(assert (=> b!1301670 m!1453359))

(declare-fun m!1453361 () Bool)

(assert (=> b!1301670 m!1453361))

(declare-fun m!1453363 () Bool)

(assert (=> b!1301657 m!1453363))

(declare-fun m!1453365 () Bool)

(assert (=> b!1301657 m!1453365))

(declare-fun m!1453367 () Bool)

(assert (=> b!1301657 m!1453367))

(declare-fun m!1453369 () Bool)

(assert (=> b!1301657 m!1453369))

(declare-fun m!1453371 () Bool)

(assert (=> b!1301657 m!1453371))

(declare-fun m!1453373 () Bool)

(assert (=> b!1301657 m!1453373))

(declare-fun m!1453375 () Bool)

(assert (=> b!1301672 m!1453375))

(declare-fun m!1453377 () Bool)

(assert (=> b!1301677 m!1453377))

(declare-fun m!1453379 () Bool)

(assert (=> b!1301669 m!1453379))

(declare-fun m!1453381 () Bool)

(assert (=> b!1301654 m!1453381))

(declare-fun m!1453383 () Bool)

(assert (=> b!1301676 m!1453383))

(assert (=> b!1301676 m!1453383))

(declare-fun m!1453385 () Bool)

(assert (=> b!1301676 m!1453385))

(declare-fun m!1453387 () Bool)

(assert (=> b!1301676 m!1453387))

(declare-fun m!1453389 () Bool)

(assert (=> b!1301649 m!1453389))

(declare-fun m!1453391 () Bool)

(assert (=> b!1301668 m!1453391))

(declare-fun m!1453393 () Bool)

(assert (=> b!1301668 m!1453393))

(declare-fun m!1453395 () Bool)

(assert (=> b!1301674 m!1453395))

(declare-fun m!1453397 () Bool)

(assert (=> b!1301674 m!1453397))

(check-sat (not b_next!31669) (not start!115014) (not b!1301672) (not b!1301661) (not b!1301658) (not b!1301654) (not b!1301649) (not b!1301669) b_and!86815 (not b!1301676) (not b!1301660) (not b_next!31675) (not b!1301663) (not b!1301671) (not b!1301674) (not b!1301668) b_and!86825 (not b!1301650) b_and!86821 (not b!1301664) b_and!86817 (not b_next!31673) (not b!1301651) (not b!1301655) b_and!86823 b_and!86819 (not b_next!31671) (not b!1301666) (not b!1301657) (not b!1301665) (not b!1301667) (not b!1301675) (not b_next!31677) (not b!1301677) (not b!1301648) tp_is_empty!6599 (not b!1301670) (not b_next!31667) (not b!1301673))
(check-sat (not b_next!31675) (not b_next!31669) b_and!86825 b_and!86821 (not b_next!31677) (not b_next!31667) b_and!86815 b_and!86817 (not b_next!31673) b_and!86823 b_and!86819 (not b_next!31671))
