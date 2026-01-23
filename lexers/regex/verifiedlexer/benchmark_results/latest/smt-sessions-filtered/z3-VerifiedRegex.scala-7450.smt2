; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!395690 () Bool)

(assert start!395690)

(declare-fun b!4155794 () Bool)

(declare-fun b_free!119283 () Bool)

(declare-fun b_next!119987 () Bool)

(assert (=> b!4155794 (= b_free!119283 (not b_next!119987))))

(declare-fun tp!1267659 () Bool)

(declare-fun b_and!323645 () Bool)

(assert (=> b!4155794 (= tp!1267659 b_and!323645)))

(declare-fun b_free!119285 () Bool)

(declare-fun b_next!119989 () Bool)

(assert (=> b!4155794 (= b_free!119285 (not b_next!119989))))

(declare-fun tp!1267664 () Bool)

(declare-fun b_and!323647 () Bool)

(assert (=> b!4155794 (= tp!1267664 b_and!323647)))

(declare-fun b!4155787 () Bool)

(declare-fun b_free!119287 () Bool)

(declare-fun b_next!119991 () Bool)

(assert (=> b!4155787 (= b_free!119287 (not b_next!119991))))

(declare-fun tp!1267665 () Bool)

(declare-fun b_and!323649 () Bool)

(assert (=> b!4155787 (= tp!1267665 b_and!323649)))

(declare-fun b_free!119289 () Bool)

(declare-fun b_next!119993 () Bool)

(assert (=> b!4155787 (= b_free!119289 (not b_next!119993))))

(declare-fun tp!1267666 () Bool)

(declare-fun b_and!323651 () Bool)

(assert (=> b!4155787 (= tp!1267666 b_and!323651)))

(declare-fun b!4155792 () Bool)

(declare-fun b_free!119291 () Bool)

(declare-fun b_next!119995 () Bool)

(assert (=> b!4155792 (= b_free!119291 (not b_next!119995))))

(declare-fun tp!1267661 () Bool)

(declare-fun b_and!323653 () Bool)

(assert (=> b!4155792 (= tp!1267661 b_and!323653)))

(declare-fun b_free!119293 () Bool)

(declare-fun b_next!119997 () Bool)

(assert (=> b!4155792 (= b_free!119293 (not b_next!119997))))

(declare-fun tp!1267663 () Bool)

(declare-fun b_and!323655 () Bool)

(assert (=> b!4155792 (= tp!1267663 b_and!323655)))

(declare-fun b!4155784 () Bool)

(declare-fun res!1701990 () Bool)

(declare-fun e!2578829 () Bool)

(assert (=> b!4155784 (=> (not res!1701990) (not e!2578829))))

(declare-datatypes ((List!45388 0))(
  ( (Nil!45264) (Cons!45264 (h!50684 (_ BitVec 16)) (t!343419 List!45388)) )
))
(declare-datatypes ((TokenValue!7702 0))(
  ( (FloatLiteralValue!15404 (text!54359 List!45388)) (TokenValueExt!7701 (__x!27621 Int)) (Broken!38510 (value!233445 List!45388)) (Object!7825) (End!7702) (Def!7702) (Underscore!7702) (Match!7702) (Else!7702) (Error!7702) (Case!7702) (If!7702) (Extends!7702) (Abstract!7702) (Class!7702) (Val!7702) (DelimiterValue!15404 (del!7762 List!45388)) (KeywordValue!7708 (value!233446 List!45388)) (CommentValue!15404 (value!233447 List!45388)) (WhitespaceValue!15404 (value!233448 List!45388)) (IndentationValue!7702 (value!233449 List!45388)) (String!52259) (Int32!7702) (Broken!38511 (value!233450 List!45388)) (Boolean!7703) (Unit!64452) (OperatorValue!7705 (op!7762 List!45388)) (IdentifierValue!15404 (value!233451 List!45388)) (IdentifierValue!15405 (value!233452 List!45388)) (WhitespaceValue!15405 (value!233453 List!45388)) (True!15404) (False!15404) (Broken!38512 (value!233454 List!45388)) (Broken!38513 (value!233455 List!45388)) (True!15405) (RightBrace!7702) (RightBracket!7702) (Colon!7702) (Null!7702) (Comma!7702) (LeftBracket!7702) (False!15405) (LeftBrace!7702) (ImaginaryLiteralValue!7702 (text!54360 List!45388)) (StringLiteralValue!23106 (value!233456 List!45388)) (EOFValue!7702 (value!233457 List!45388)) (IdentValue!7702 (value!233458 List!45388)) (DelimiterValue!15405 (value!233459 List!45388)) (DedentValue!7702 (value!233460 List!45388)) (NewLineValue!7702 (value!233461 List!45388)) (IntegerValue!23106 (value!233462 (_ BitVec 32)) (text!54361 List!45388)) (IntegerValue!23107 (value!233463 Int) (text!54362 List!45388)) (Times!7702) (Or!7702) (Equal!7702) (Minus!7702) (Broken!38514 (value!233464 List!45388)) (And!7702) (Div!7702) (LessEqual!7702) (Mod!7702) (Concat!20079) (Not!7702) (Plus!7702) (SpaceValue!7702 (value!233465 List!45388)) (IntegerValue!23108 (value!233466 Int) (text!54363 List!45388)) (StringLiteralValue!23107 (text!54364 List!45388)) (FloatLiteralValue!15405 (text!54365 List!45388)) (BytesLiteralValue!7702 (value!233467 List!45388)) (CommentValue!15405 (value!233468 List!45388)) (StringLiteralValue!23108 (value!233469 List!45388)) (ErrorTokenValue!7702 (msg!7763 List!45388)) )
))
(declare-datatypes ((C!24940 0))(
  ( (C!24941 (val!14580 Int)) )
))
(declare-datatypes ((List!45389 0))(
  ( (Nil!45265) (Cons!45265 (h!50685 C!24940) (t!343420 List!45389)) )
))
(declare-datatypes ((IArray!27371 0))(
  ( (IArray!27372 (innerList!13743 List!45389)) )
))
(declare-datatypes ((Conc!13683 0))(
  ( (Node!13683 (left!33841 Conc!13683) (right!34171 Conc!13683) (csize!27596 Int) (cheight!13894 Int)) (Leaf!21134 (xs!16989 IArray!27371) (csize!27597 Int)) (Empty!13683) )
))
(declare-datatypes ((String!52260 0))(
  ( (String!52261 (value!233470 String)) )
))
(declare-datatypes ((Regex!12377 0))(
  ( (ElementMatch!12377 (c!711392 C!24940)) (Concat!20080 (regOne!25266 Regex!12377) (regTwo!25266 Regex!12377)) (EmptyExpr!12377) (Star!12377 (reg!12706 Regex!12377)) (EmptyLang!12377) (Union!12377 (regOne!25267 Regex!12377) (regTwo!25267 Regex!12377)) )
))
(declare-datatypes ((BalanceConc!26960 0))(
  ( (BalanceConc!26961 (c!711393 Conc!13683)) )
))
(declare-datatypes ((TokenValueInjection!14832 0))(
  ( (TokenValueInjection!14833 (toValue!10136 Int) (toChars!9995 Int)) )
))
(declare-datatypes ((Rule!14744 0))(
  ( (Rule!14745 (regex!7472 Regex!12377) (tag!8336 String!52260) (isSeparator!7472 Bool) (transformation!7472 TokenValueInjection!14832)) )
))
(declare-datatypes ((List!45390 0))(
  ( (Nil!45266) (Cons!45266 (h!50686 Rule!14744) (t!343421 List!45390)) )
))
(declare-fun rules!4102 () List!45390)

(declare-fun r1!615 () Rule!14744)

(declare-fun contains!9178 (List!45390 Rule!14744) Bool)

(assert (=> b!4155784 (= res!1701990 (contains!9178 rules!4102 r1!615))))

(declare-fun b!4155785 () Bool)

(declare-fun e!2578830 () Bool)

(assert (=> b!4155785 (= e!2578829 e!2578830)))

(declare-fun res!1701988 () Bool)

(assert (=> b!4155785 (=> (not res!1701988) (not e!2578830))))

(declare-datatypes ((List!45391 0))(
  ( (Nil!45267) (Cons!45267 (h!50687 String!52260) (t!343422 List!45391)) )
))
(declare-fun lt!1481425 () List!45391)

(declare-fun contains!9179 (List!45391 String!52260) Bool)

(assert (=> b!4155785 (= res!1701988 (contains!9179 lt!1481425 (tag!8336 r1!615)))))

(assert (=> b!4155785 (= lt!1481425 (Cons!45267 (tag!8336 r1!615) Nil!45267))))

(declare-fun lt!1481426 () List!45390)

(declare-fun tail!6629 (List!45390) List!45390)

(assert (=> b!4155785 (= lt!1481426 (tail!6629 rules!4102))))

(declare-fun b!4155786 () Bool)

(declare-fun r2!597 () Rule!14744)

(assert (=> b!4155786 (= e!2578830 (not (contains!9178 lt!1481426 r2!597)))))

(declare-fun res!1701989 () Bool)

(assert (=> start!395690 (=> (not res!1701989) (not e!2578829))))

(declare-datatypes ((LexerInterface!7061 0))(
  ( (LexerInterfaceExt!7058 (__x!27622 Int)) (Lexer!7059) )
))
(declare-fun thiss!26968 () LexerInterface!7061)

(get-info :version)

(assert (=> start!395690 (= res!1701989 ((_ is Lexer!7059) thiss!26968))))

(assert (=> start!395690 e!2578829))

(assert (=> start!395690 true))

(declare-fun e!2578824 () Bool)

(assert (=> start!395690 e!2578824))

(declare-fun e!2578832 () Bool)

(assert (=> start!395690 e!2578832))

(declare-fun e!2578831 () Bool)

(assert (=> start!395690 e!2578831))

(declare-fun e!2578823 () Bool)

(assert (=> b!4155787 (= e!2578823 (and tp!1267665 tp!1267666))))

(declare-fun b!4155788 () Bool)

(declare-fun res!1701987 () Bool)

(assert (=> b!4155788 (=> (not res!1701987) (not e!2578829))))

(declare-fun noDuplicateTag!3049 (LexerInterface!7061 List!45390 List!45391) Bool)

(declare-fun noDuplicateTag$default$2!54 (LexerInterface!7061) List!45391)

(assert (=> b!4155788 (= res!1701987 (noDuplicateTag!3049 thiss!26968 rules!4102 (noDuplicateTag$default$2!54 thiss!26968)))))

(declare-fun tp!1267662 () Bool)

(declare-fun b!4155789 () Bool)

(declare-fun inv!59825 (String!52260) Bool)

(declare-fun inv!59827 (TokenValueInjection!14832) Bool)

(assert (=> b!4155789 (= e!2578832 (and tp!1267662 (inv!59825 (tag!8336 r1!615)) (inv!59827 (transformation!7472 r1!615)) e!2578823))))

(declare-fun b!4155790 () Bool)

(declare-fun res!1701984 () Bool)

(assert (=> b!4155790 (=> (not res!1701984) (not e!2578829))))

(assert (=> b!4155790 (= res!1701984 (contains!9178 rules!4102 r2!597))))

(declare-fun b!4155791 () Bool)

(declare-fun e!2578825 () Bool)

(declare-fun tp!1267660 () Bool)

(assert (=> b!4155791 (= e!2578824 (and e!2578825 tp!1267660))))

(declare-fun e!2578826 () Bool)

(assert (=> b!4155792 (= e!2578826 (and tp!1267661 tp!1267663))))

(declare-fun b!4155793 () Bool)

(declare-fun res!1701985 () Bool)

(assert (=> b!4155793 (=> (not res!1701985) (not e!2578829))))

(declare-fun getIndex!814 (List!45390 Rule!14744) Int)

(assert (=> b!4155793 (= res!1701985 (< (getIndex!814 rules!4102 r1!615) (getIndex!814 rules!4102 r2!597)))))

(declare-fun e!2578827 () Bool)

(assert (=> b!4155794 (= e!2578827 (and tp!1267659 tp!1267664))))

(declare-fun b!4155795 () Bool)

(declare-fun tp!1267668 () Bool)

(assert (=> b!4155795 (= e!2578831 (and tp!1267668 (inv!59825 (tag!8336 r2!597)) (inv!59827 (transformation!7472 r2!597)) e!2578826))))

(declare-fun tp!1267667 () Bool)

(declare-fun b!4155796 () Bool)

(assert (=> b!4155796 (= e!2578825 (and tp!1267667 (inv!59825 (tag!8336 (h!50686 rules!4102))) (inv!59827 (transformation!7472 (h!50686 rules!4102))) e!2578827))))

(declare-fun b!4155797 () Bool)

(declare-fun res!1701986 () Bool)

(assert (=> b!4155797 (=> (not res!1701986) (not e!2578829))))

(declare-fun head!8794 (List!45390) Rule!14744)

(assert (=> b!4155797 (= res!1701986 (= (head!8794 rules!4102) r1!615))))

(declare-fun b!4155798 () Bool)

(declare-fun res!1701991 () Bool)

(assert (=> b!4155798 (=> (not res!1701991) (not e!2578830))))

(assert (=> b!4155798 (= res!1701991 (noDuplicateTag!3049 thiss!26968 lt!1481426 lt!1481425))))

(assert (= (and start!395690 res!1701989) b!4155784))

(assert (= (and b!4155784 res!1701990) b!4155790))

(assert (= (and b!4155790 res!1701984) b!4155788))

(assert (= (and b!4155788 res!1701987) b!4155793))

(assert (= (and b!4155793 res!1701985) b!4155797))

(assert (= (and b!4155797 res!1701986) b!4155785))

(assert (= (and b!4155785 res!1701988) b!4155798))

(assert (= (and b!4155798 res!1701991) b!4155786))

(assert (= b!4155796 b!4155794))

(assert (= b!4155791 b!4155796))

(assert (= (and start!395690 ((_ is Cons!45266) rules!4102)) b!4155791))

(assert (= b!4155789 b!4155787))

(assert (= start!395690 b!4155789))

(assert (= b!4155795 b!4155792))

(assert (= start!395690 b!4155795))

(declare-fun m!4750139 () Bool)

(assert (=> b!4155797 m!4750139))

(declare-fun m!4750141 () Bool)

(assert (=> b!4155786 m!4750141))

(declare-fun m!4750143 () Bool)

(assert (=> b!4155793 m!4750143))

(declare-fun m!4750145 () Bool)

(assert (=> b!4155793 m!4750145))

(declare-fun m!4750147 () Bool)

(assert (=> b!4155784 m!4750147))

(declare-fun m!4750149 () Bool)

(assert (=> b!4155788 m!4750149))

(assert (=> b!4155788 m!4750149))

(declare-fun m!4750151 () Bool)

(assert (=> b!4155788 m!4750151))

(declare-fun m!4750153 () Bool)

(assert (=> b!4155796 m!4750153))

(declare-fun m!4750155 () Bool)

(assert (=> b!4155796 m!4750155))

(declare-fun m!4750157 () Bool)

(assert (=> b!4155798 m!4750157))

(declare-fun m!4750159 () Bool)

(assert (=> b!4155795 m!4750159))

(declare-fun m!4750161 () Bool)

(assert (=> b!4155795 m!4750161))

(declare-fun m!4750163 () Bool)

(assert (=> b!4155790 m!4750163))

(declare-fun m!4750165 () Bool)

(assert (=> b!4155785 m!4750165))

(declare-fun m!4750167 () Bool)

(assert (=> b!4155785 m!4750167))

(declare-fun m!4750169 () Bool)

(assert (=> b!4155789 m!4750169))

(declare-fun m!4750171 () Bool)

(assert (=> b!4155789 m!4750171))

(check-sat (not b!4155785) (not b!4155791) (not b!4155795) (not b_next!119993) b_and!323645 b_and!323649 (not b_next!119991) (not b_next!119987) (not b!4155788) (not b!4155790) (not b!4155793) (not b_next!119995) (not b!4155789) (not b!4155784) (not b!4155797) (not b!4155786) b_and!323651 b_and!323655 b_and!323647 (not b!4155796) (not b!4155798) (not b_next!119989) (not b_next!119997) b_and!323653)
(check-sat (not b_next!119995) (not b_next!119993) b_and!323645 b_and!323649 b_and!323651 (not b_next!119991) (not b_next!119987) (not b_next!119989) b_and!323655 b_and!323647 (not b_next!119997) b_and!323653)
(get-model)

(declare-fun b!4155811 () Bool)

(declare-fun e!2578842 () Int)

(assert (=> b!4155811 (= e!2578842 0)))

(declare-fun b!4155812 () Bool)

(declare-fun e!2578843 () Int)

(assert (=> b!4155812 (= e!2578842 e!2578843)))

(declare-fun c!711399 () Bool)

(assert (=> b!4155812 (= c!711399 (and ((_ is Cons!45266) rules!4102) (not (= (h!50686 rules!4102) r1!615))))))

(declare-fun d!1228891 () Bool)

(declare-fun lt!1481431 () Int)

(assert (=> d!1228891 (>= lt!1481431 0)))

(assert (=> d!1228891 (= lt!1481431 e!2578842)))

(declare-fun c!711398 () Bool)

(assert (=> d!1228891 (= c!711398 (and ((_ is Cons!45266) rules!4102) (= (h!50686 rules!4102) r1!615)))))

(assert (=> d!1228891 (contains!9178 rules!4102 r1!615)))

(assert (=> d!1228891 (= (getIndex!814 rules!4102 r1!615) lt!1481431)))

(declare-fun b!4155814 () Bool)

(assert (=> b!4155814 (= e!2578843 (- 1))))

(declare-fun b!4155813 () Bool)

(assert (=> b!4155813 (= e!2578843 (+ 1 (getIndex!814 (t!343421 rules!4102) r1!615)))))

(assert (= (and d!1228891 c!711398) b!4155811))

(assert (= (and d!1228891 (not c!711398)) b!4155812))

(assert (= (and b!4155812 c!711399) b!4155813))

(assert (= (and b!4155812 (not c!711399)) b!4155814))

(assert (=> d!1228891 m!4750147))

(declare-fun m!4750173 () Bool)

(assert (=> b!4155813 m!4750173))

(assert (=> b!4155793 d!1228891))

(declare-fun b!4155815 () Bool)

(declare-fun e!2578844 () Int)

(assert (=> b!4155815 (= e!2578844 0)))

(declare-fun b!4155816 () Bool)

(declare-fun e!2578845 () Int)

(assert (=> b!4155816 (= e!2578844 e!2578845)))

(declare-fun c!711401 () Bool)

(assert (=> b!4155816 (= c!711401 (and ((_ is Cons!45266) rules!4102) (not (= (h!50686 rules!4102) r2!597))))))

(declare-fun d!1228895 () Bool)

(declare-fun lt!1481432 () Int)

(assert (=> d!1228895 (>= lt!1481432 0)))

(assert (=> d!1228895 (= lt!1481432 e!2578844)))

(declare-fun c!711400 () Bool)

(assert (=> d!1228895 (= c!711400 (and ((_ is Cons!45266) rules!4102) (= (h!50686 rules!4102) r2!597)))))

(assert (=> d!1228895 (contains!9178 rules!4102 r2!597)))

(assert (=> d!1228895 (= (getIndex!814 rules!4102 r2!597) lt!1481432)))

(declare-fun b!4155818 () Bool)

(assert (=> b!4155818 (= e!2578845 (- 1))))

(declare-fun b!4155817 () Bool)

(assert (=> b!4155817 (= e!2578845 (+ 1 (getIndex!814 (t!343421 rules!4102) r2!597)))))

(assert (= (and d!1228895 c!711400) b!4155815))

(assert (= (and d!1228895 (not c!711400)) b!4155816))

(assert (= (and b!4155816 c!711401) b!4155817))

(assert (= (and b!4155816 (not c!711401)) b!4155818))

(assert (=> d!1228895 m!4750163))

(declare-fun m!4750175 () Bool)

(assert (=> b!4155817 m!4750175))

(assert (=> b!4155793 d!1228895))

(declare-fun d!1228897 () Bool)

(assert (=> d!1228897 (= (inv!59825 (tag!8336 r2!597)) (= (mod (str.len (value!233470 (tag!8336 r2!597))) 2) 0))))

(assert (=> b!4155795 d!1228897))

(declare-fun d!1228901 () Bool)

(declare-fun res!1702017 () Bool)

(declare-fun e!2578858 () Bool)

(assert (=> d!1228901 (=> (not res!1702017) (not e!2578858))))

(declare-fun semiInverseModEq!3238 (Int Int) Bool)

(assert (=> d!1228901 (= res!1702017 (semiInverseModEq!3238 (toChars!9995 (transformation!7472 r2!597)) (toValue!10136 (transformation!7472 r2!597))))))

(assert (=> d!1228901 (= (inv!59827 (transformation!7472 r2!597)) e!2578858)))

(declare-fun b!4155831 () Bool)

(declare-fun equivClasses!3137 (Int Int) Bool)

(assert (=> b!4155831 (= e!2578858 (equivClasses!3137 (toChars!9995 (transformation!7472 r2!597)) (toValue!10136 (transformation!7472 r2!597))))))

(assert (= (and d!1228901 res!1702017) b!4155831))

(declare-fun m!4750189 () Bool)

(assert (=> d!1228901 m!4750189))

(declare-fun m!4750191 () Bool)

(assert (=> b!4155831 m!4750191))

(assert (=> b!4155795 d!1228901))

(declare-fun d!1228905 () Bool)

(declare-fun lt!1481437 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7004 (List!45390) (InoxSet Rule!14744))

(assert (=> d!1228905 (= lt!1481437 (select (content!7004 rules!4102) r1!615))))

(declare-fun e!2578863 () Bool)

(assert (=> d!1228905 (= lt!1481437 e!2578863)))

(declare-fun res!1702023 () Bool)

(assert (=> d!1228905 (=> (not res!1702023) (not e!2578863))))

(assert (=> d!1228905 (= res!1702023 ((_ is Cons!45266) rules!4102))))

(assert (=> d!1228905 (= (contains!9178 rules!4102 r1!615) lt!1481437)))

(declare-fun b!4155836 () Bool)

(declare-fun e!2578864 () Bool)

(assert (=> b!4155836 (= e!2578863 e!2578864)))

(declare-fun res!1702022 () Bool)

(assert (=> b!4155836 (=> res!1702022 e!2578864)))

(assert (=> b!4155836 (= res!1702022 (= (h!50686 rules!4102) r1!615))))

(declare-fun b!4155837 () Bool)

(assert (=> b!4155837 (= e!2578864 (contains!9178 (t!343421 rules!4102) r1!615))))

(assert (= (and d!1228905 res!1702023) b!4155836))

(assert (= (and b!4155836 (not res!1702022)) b!4155837))

(declare-fun m!4750197 () Bool)

(assert (=> d!1228905 m!4750197))

(declare-fun m!4750199 () Bool)

(assert (=> d!1228905 m!4750199))

(declare-fun m!4750201 () Bool)

(assert (=> b!4155837 m!4750201))

(assert (=> b!4155784 d!1228905))

(declare-fun d!1228911 () Bool)

(declare-fun lt!1481438 () Bool)

(assert (=> d!1228911 (= lt!1481438 (select (content!7004 lt!1481426) r2!597))))

(declare-fun e!2578865 () Bool)

(assert (=> d!1228911 (= lt!1481438 e!2578865)))

(declare-fun res!1702025 () Bool)

(assert (=> d!1228911 (=> (not res!1702025) (not e!2578865))))

(assert (=> d!1228911 (= res!1702025 ((_ is Cons!45266) lt!1481426))))

(assert (=> d!1228911 (= (contains!9178 lt!1481426 r2!597) lt!1481438)))

(declare-fun b!4155838 () Bool)

(declare-fun e!2578866 () Bool)

(assert (=> b!4155838 (= e!2578865 e!2578866)))

(declare-fun res!1702024 () Bool)

(assert (=> b!4155838 (=> res!1702024 e!2578866)))

(assert (=> b!4155838 (= res!1702024 (= (h!50686 lt!1481426) r2!597))))

(declare-fun b!4155839 () Bool)

(assert (=> b!4155839 (= e!2578866 (contains!9178 (t!343421 lt!1481426) r2!597))))

(assert (= (and d!1228911 res!1702025) b!4155838))

(assert (= (and b!4155838 (not res!1702024)) b!4155839))

(declare-fun m!4750203 () Bool)

(assert (=> d!1228911 m!4750203))

(declare-fun m!4750205 () Bool)

(assert (=> d!1228911 m!4750205))

(declare-fun m!4750207 () Bool)

(assert (=> b!4155839 m!4750207))

(assert (=> b!4155786 d!1228911))

(declare-fun d!1228913 () Bool)

(declare-fun lt!1481441 () Bool)

(declare-fun content!7005 (List!45391) (InoxSet String!52260))

(assert (=> d!1228913 (= lt!1481441 (select (content!7005 lt!1481425) (tag!8336 r1!615)))))

(declare-fun e!2578876 () Bool)

(assert (=> d!1228913 (= lt!1481441 e!2578876)))

(declare-fun res!1702035 () Bool)

(assert (=> d!1228913 (=> (not res!1702035) (not e!2578876))))

(assert (=> d!1228913 (= res!1702035 ((_ is Cons!45267) lt!1481425))))

(assert (=> d!1228913 (= (contains!9179 lt!1481425 (tag!8336 r1!615)) lt!1481441)))

(declare-fun b!4155849 () Bool)

(declare-fun e!2578877 () Bool)

(assert (=> b!4155849 (= e!2578876 e!2578877)))

(declare-fun res!1702036 () Bool)

(assert (=> b!4155849 (=> res!1702036 e!2578877)))

(assert (=> b!4155849 (= res!1702036 (= (h!50687 lt!1481425) (tag!8336 r1!615)))))

(declare-fun b!4155850 () Bool)

(assert (=> b!4155850 (= e!2578877 (contains!9179 (t!343422 lt!1481425) (tag!8336 r1!615)))))

(assert (= (and d!1228913 res!1702035) b!4155849))

(assert (= (and b!4155849 (not res!1702036)) b!4155850))

(declare-fun m!4750217 () Bool)

(assert (=> d!1228913 m!4750217))

(declare-fun m!4750219 () Bool)

(assert (=> d!1228913 m!4750219))

(declare-fun m!4750221 () Bool)

(assert (=> b!4155850 m!4750221))

(assert (=> b!4155785 d!1228913))

(declare-fun d!1228923 () Bool)

(assert (=> d!1228923 (= (tail!6629 rules!4102) (t!343421 rules!4102))))

(assert (=> b!4155785 d!1228923))

(declare-fun d!1228925 () Bool)

(assert (=> d!1228925 (= (inv!59825 (tag!8336 (h!50686 rules!4102))) (= (mod (str.len (value!233470 (tag!8336 (h!50686 rules!4102)))) 2) 0))))

(assert (=> b!4155796 d!1228925))

(declare-fun d!1228927 () Bool)

(declare-fun res!1702037 () Bool)

(declare-fun e!2578878 () Bool)

(assert (=> d!1228927 (=> (not res!1702037) (not e!2578878))))

(assert (=> d!1228927 (= res!1702037 (semiInverseModEq!3238 (toChars!9995 (transformation!7472 (h!50686 rules!4102))) (toValue!10136 (transformation!7472 (h!50686 rules!4102)))))))

(assert (=> d!1228927 (= (inv!59827 (transformation!7472 (h!50686 rules!4102))) e!2578878)))

(declare-fun b!4155851 () Bool)

(assert (=> b!4155851 (= e!2578878 (equivClasses!3137 (toChars!9995 (transformation!7472 (h!50686 rules!4102))) (toValue!10136 (transformation!7472 (h!50686 rules!4102)))))))

(assert (= (and d!1228927 res!1702037) b!4155851))

(declare-fun m!4750223 () Bool)

(assert (=> d!1228927 m!4750223))

(declare-fun m!4750225 () Bool)

(assert (=> b!4155851 m!4750225))

(assert (=> b!4155796 d!1228927))

(declare-fun d!1228929 () Bool)

(assert (=> d!1228929 (= (head!8794 rules!4102) (h!50686 rules!4102))))

(assert (=> b!4155797 d!1228929))

(declare-fun d!1228931 () Bool)

(declare-fun res!1702051 () Bool)

(declare-fun e!2578892 () Bool)

(assert (=> d!1228931 (=> res!1702051 e!2578892)))

(assert (=> d!1228931 (= res!1702051 ((_ is Nil!45266) lt!1481426))))

(assert (=> d!1228931 (= (noDuplicateTag!3049 thiss!26968 lt!1481426 lt!1481425) e!2578892)))

(declare-fun b!4155865 () Bool)

(declare-fun e!2578893 () Bool)

(assert (=> b!4155865 (= e!2578892 e!2578893)))

(declare-fun res!1702052 () Bool)

(assert (=> b!4155865 (=> (not res!1702052) (not e!2578893))))

(assert (=> b!4155865 (= res!1702052 (not (contains!9179 lt!1481425 (tag!8336 (h!50686 lt!1481426)))))))

(declare-fun b!4155866 () Bool)

(assert (=> b!4155866 (= e!2578893 (noDuplicateTag!3049 thiss!26968 (t!343421 lt!1481426) (Cons!45267 (tag!8336 (h!50686 lt!1481426)) lt!1481425)))))

(assert (= (and d!1228931 (not res!1702051)) b!4155865))

(assert (= (and b!4155865 res!1702052) b!4155866))

(declare-fun m!4750241 () Bool)

(assert (=> b!4155865 m!4750241))

(declare-fun m!4750243 () Bool)

(assert (=> b!4155866 m!4750243))

(assert (=> b!4155798 d!1228931))

(declare-fun d!1228943 () Bool)

(declare-fun res!1702053 () Bool)

(declare-fun e!2578894 () Bool)

(assert (=> d!1228943 (=> res!1702053 e!2578894)))

(assert (=> d!1228943 (= res!1702053 ((_ is Nil!45266) rules!4102))))

(assert (=> d!1228943 (= (noDuplicateTag!3049 thiss!26968 rules!4102 (noDuplicateTag$default$2!54 thiss!26968)) e!2578894)))

(declare-fun b!4155867 () Bool)

(declare-fun e!2578895 () Bool)

(assert (=> b!4155867 (= e!2578894 e!2578895)))

(declare-fun res!1702054 () Bool)

(assert (=> b!4155867 (=> (not res!1702054) (not e!2578895))))

(assert (=> b!4155867 (= res!1702054 (not (contains!9179 (noDuplicateTag$default$2!54 thiss!26968) (tag!8336 (h!50686 rules!4102)))))))

(declare-fun b!4155868 () Bool)

(assert (=> b!4155868 (= e!2578895 (noDuplicateTag!3049 thiss!26968 (t!343421 rules!4102) (Cons!45267 (tag!8336 (h!50686 rules!4102)) (noDuplicateTag$default$2!54 thiss!26968))))))

(assert (= (and d!1228943 (not res!1702053)) b!4155867))

(assert (= (and b!4155867 res!1702054) b!4155868))

(assert (=> b!4155867 m!4750149))

(declare-fun m!4750245 () Bool)

(assert (=> b!4155867 m!4750245))

(declare-fun m!4750247 () Bool)

(assert (=> b!4155868 m!4750247))

(assert (=> b!4155788 d!1228943))

(declare-fun d!1228945 () Bool)

(assert (=> d!1228945 (= (noDuplicateTag$default$2!54 thiss!26968) Nil!45267)))

(assert (=> b!4155788 d!1228945))

(declare-fun d!1228947 () Bool)

(declare-fun lt!1481446 () Bool)

(assert (=> d!1228947 (= lt!1481446 (select (content!7004 rules!4102) r2!597))))

(declare-fun e!2578896 () Bool)

(assert (=> d!1228947 (= lt!1481446 e!2578896)))

(declare-fun res!1702056 () Bool)

(assert (=> d!1228947 (=> (not res!1702056) (not e!2578896))))

(assert (=> d!1228947 (= res!1702056 ((_ is Cons!45266) rules!4102))))

(assert (=> d!1228947 (= (contains!9178 rules!4102 r2!597) lt!1481446)))

(declare-fun b!4155869 () Bool)

(declare-fun e!2578897 () Bool)

(assert (=> b!4155869 (= e!2578896 e!2578897)))

(declare-fun res!1702055 () Bool)

(assert (=> b!4155869 (=> res!1702055 e!2578897)))

(assert (=> b!4155869 (= res!1702055 (= (h!50686 rules!4102) r2!597))))

(declare-fun b!4155870 () Bool)

(assert (=> b!4155870 (= e!2578897 (contains!9178 (t!343421 rules!4102) r2!597))))

(assert (= (and d!1228947 res!1702056) b!4155869))

(assert (= (and b!4155869 (not res!1702055)) b!4155870))

(assert (=> d!1228947 m!4750197))

(declare-fun m!4750249 () Bool)

(assert (=> d!1228947 m!4750249))

(declare-fun m!4750251 () Bool)

(assert (=> b!4155870 m!4750251))

(assert (=> b!4155790 d!1228947))

(declare-fun d!1228949 () Bool)

(assert (=> d!1228949 (= (inv!59825 (tag!8336 r1!615)) (= (mod (str.len (value!233470 (tag!8336 r1!615))) 2) 0))))

(assert (=> b!4155789 d!1228949))

(declare-fun d!1228951 () Bool)

(declare-fun res!1702057 () Bool)

(declare-fun e!2578898 () Bool)

(assert (=> d!1228951 (=> (not res!1702057) (not e!2578898))))

(assert (=> d!1228951 (= res!1702057 (semiInverseModEq!3238 (toChars!9995 (transformation!7472 r1!615)) (toValue!10136 (transformation!7472 r1!615))))))

(assert (=> d!1228951 (= (inv!59827 (transformation!7472 r1!615)) e!2578898)))

(declare-fun b!4155871 () Bool)

(assert (=> b!4155871 (= e!2578898 (equivClasses!3137 (toChars!9995 (transformation!7472 r1!615)) (toValue!10136 (transformation!7472 r1!615))))))

(assert (= (and d!1228951 res!1702057) b!4155871))

(declare-fun m!4750253 () Bool)

(assert (=> d!1228951 m!4750253))

(declare-fun m!4750255 () Bool)

(assert (=> b!4155871 m!4750255))

(assert (=> b!4155789 d!1228951))

(declare-fun b!4155892 () Bool)

(declare-fun e!2578906 () Bool)

(declare-fun tp!1267681 () Bool)

(assert (=> b!4155892 (= e!2578906 tp!1267681)))

(declare-fun b!4155890 () Bool)

(declare-fun tp_is_empty!21643 () Bool)

(assert (=> b!4155890 (= e!2578906 tp_is_empty!21643)))

(declare-fun b!4155893 () Bool)

(declare-fun tp!1267679 () Bool)

(declare-fun tp!1267680 () Bool)

(assert (=> b!4155893 (= e!2578906 (and tp!1267679 tp!1267680))))

(assert (=> b!4155795 (= tp!1267668 e!2578906)))

(declare-fun b!4155891 () Bool)

(declare-fun tp!1267683 () Bool)

(declare-fun tp!1267682 () Bool)

(assert (=> b!4155891 (= e!2578906 (and tp!1267683 tp!1267682))))

(assert (= (and b!4155795 ((_ is ElementMatch!12377) (regex!7472 r2!597))) b!4155890))

(assert (= (and b!4155795 ((_ is Concat!20080) (regex!7472 r2!597))) b!4155891))

(assert (= (and b!4155795 ((_ is Star!12377) (regex!7472 r2!597))) b!4155892))

(assert (= (and b!4155795 ((_ is Union!12377) (regex!7472 r2!597))) b!4155893))

(declare-fun b!4155900 () Bool)

(declare-fun e!2578909 () Bool)

(declare-fun tp!1267686 () Bool)

(assert (=> b!4155900 (= e!2578909 tp!1267686)))

(declare-fun b!4155898 () Bool)

(assert (=> b!4155898 (= e!2578909 tp_is_empty!21643)))

(declare-fun b!4155901 () Bool)

(declare-fun tp!1267684 () Bool)

(declare-fun tp!1267685 () Bool)

(assert (=> b!4155901 (= e!2578909 (and tp!1267684 tp!1267685))))

(assert (=> b!4155789 (= tp!1267662 e!2578909)))

(declare-fun b!4155899 () Bool)

(declare-fun tp!1267688 () Bool)

(declare-fun tp!1267687 () Bool)

(assert (=> b!4155899 (= e!2578909 (and tp!1267688 tp!1267687))))

(assert (= (and b!4155789 ((_ is ElementMatch!12377) (regex!7472 r1!615))) b!4155898))

(assert (= (and b!4155789 ((_ is Concat!20080) (regex!7472 r1!615))) b!4155899))

(assert (= (and b!4155789 ((_ is Star!12377) (regex!7472 r1!615))) b!4155900))

(assert (= (and b!4155789 ((_ is Union!12377) (regex!7472 r1!615))) b!4155901))

(declare-fun b!4155935 () Bool)

(declare-fun b_free!119295 () Bool)

(declare-fun b_next!119999 () Bool)

(assert (=> b!4155935 (= b_free!119295 (not b_next!119999))))

(declare-fun tp!1267713 () Bool)

(declare-fun b_and!323657 () Bool)

(assert (=> b!4155935 (= tp!1267713 b_and!323657)))

(declare-fun b_free!119297 () Bool)

(declare-fun b_next!120001 () Bool)

(assert (=> b!4155935 (= b_free!119297 (not b_next!120001))))

(declare-fun tp!1267712 () Bool)

(declare-fun b_and!323659 () Bool)

(assert (=> b!4155935 (= tp!1267712 b_and!323659)))

(declare-fun e!2578928 () Bool)

(assert (=> b!4155935 (= e!2578928 (and tp!1267713 tp!1267712))))

(declare-fun tp!1267715 () Bool)

(declare-fun e!2578926 () Bool)

(declare-fun b!4155934 () Bool)

(assert (=> b!4155934 (= e!2578926 (and tp!1267715 (inv!59825 (tag!8336 (h!50686 (t!343421 rules!4102)))) (inv!59827 (transformation!7472 (h!50686 (t!343421 rules!4102)))) e!2578928))))

(declare-fun b!4155933 () Bool)

(declare-fun e!2578927 () Bool)

(declare-fun tp!1267714 () Bool)

(assert (=> b!4155933 (= e!2578927 (and e!2578926 tp!1267714))))

(assert (=> b!4155791 (= tp!1267660 e!2578927)))

(assert (= b!4155934 b!4155935))

(assert (= b!4155933 b!4155934))

(assert (= (and b!4155791 ((_ is Cons!45266) (t!343421 rules!4102))) b!4155933))

(declare-fun m!4750265 () Bool)

(assert (=> b!4155934 m!4750265))

(declare-fun m!4750267 () Bool)

(assert (=> b!4155934 m!4750267))

(declare-fun b!4155940 () Bool)

(declare-fun e!2578934 () Bool)

(declare-fun tp!1267720 () Bool)

(assert (=> b!4155940 (= e!2578934 tp!1267720)))

(declare-fun b!4155938 () Bool)

(assert (=> b!4155938 (= e!2578934 tp_is_empty!21643)))

(declare-fun b!4155941 () Bool)

(declare-fun tp!1267718 () Bool)

(declare-fun tp!1267719 () Bool)

(assert (=> b!4155941 (= e!2578934 (and tp!1267718 tp!1267719))))

(assert (=> b!4155796 (= tp!1267667 e!2578934)))

(declare-fun b!4155939 () Bool)

(declare-fun tp!1267722 () Bool)

(declare-fun tp!1267721 () Bool)

(assert (=> b!4155939 (= e!2578934 (and tp!1267722 tp!1267721))))

(assert (= (and b!4155796 ((_ is ElementMatch!12377) (regex!7472 (h!50686 rules!4102)))) b!4155938))

(assert (= (and b!4155796 ((_ is Concat!20080) (regex!7472 (h!50686 rules!4102)))) b!4155939))

(assert (= (and b!4155796 ((_ is Star!12377) (regex!7472 (h!50686 rules!4102)))) b!4155940))

(assert (= (and b!4155796 ((_ is Union!12377) (regex!7472 (h!50686 rules!4102)))) b!4155941))

(check-sat (not b!4155899) (not b_next!120001) b_and!323649 (not b!4155868) (not d!1228911) b_and!323651 (not b_next!119991) (not b!4155839) (not d!1228891) (not b!4155891) (not d!1228947) (not b!4155900) b_and!323657 (not b!4155939) tp_is_empty!21643 (not b_next!119995) (not b!4155901) b_and!323659 (not b!4155893) (not b_next!119993) (not b!4155870) b_and!323645 (not b!4155837) (not b!4155851) (not b!4155933) (not d!1228905) (not b!4155817) (not d!1228901) (not b!4155867) (not b_next!119987) b_and!323655 b_and!323647 (not b!4155831) (not b_next!119999) (not b!4155850) (not b!4155940) (not d!1228927) (not b!4155865) (not b!4155813) (not b!4155934) (not d!1228895) (not b!4155941) (not b!4155866) (not d!1228913) (not b_next!119989) (not b!4155871) (not d!1228951) (not b_next!119997) (not b!4155892) b_and!323653)
(check-sat b_and!323657 (not b_next!120001) (not b_next!119993) b_and!323645 b_and!323649 b_and!323651 (not b_next!119991) (not b_next!119987) (not b_next!119989) (not b_next!119995) b_and!323659 b_and!323655 b_and!323647 (not b_next!119999) (not b_next!119997) b_and!323653)
