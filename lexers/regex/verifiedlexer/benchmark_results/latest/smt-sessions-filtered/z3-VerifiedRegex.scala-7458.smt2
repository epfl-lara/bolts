; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!395866 () Bool)

(assert start!395866)

(declare-fun b!4157069 () Bool)

(declare-fun b_free!119507 () Bool)

(declare-fun b_next!120211 () Bool)

(assert (=> b!4157069 (= b_free!119507 (not b_next!120211))))

(declare-fun tp!1268438 () Bool)

(declare-fun b_and!323869 () Bool)

(assert (=> b!4157069 (= tp!1268438 b_and!323869)))

(declare-fun b_free!119509 () Bool)

(declare-fun b_next!120213 () Bool)

(assert (=> b!4157069 (= b_free!119509 (not b_next!120213))))

(declare-fun tp!1268444 () Bool)

(declare-fun b_and!323871 () Bool)

(assert (=> b!4157069 (= tp!1268444 b_and!323871)))

(declare-fun b!4157068 () Bool)

(declare-fun b_free!119511 () Bool)

(declare-fun b_next!120215 () Bool)

(assert (=> b!4157068 (= b_free!119511 (not b_next!120215))))

(declare-fun tp!1268442 () Bool)

(declare-fun b_and!323873 () Bool)

(assert (=> b!4157068 (= tp!1268442 b_and!323873)))

(declare-fun b_free!119513 () Bool)

(declare-fun b_next!120217 () Bool)

(assert (=> b!4157068 (= b_free!119513 (not b_next!120217))))

(declare-fun tp!1268443 () Bool)

(declare-fun b_and!323875 () Bool)

(assert (=> b!4157068 (= tp!1268443 b_and!323875)))

(declare-fun b!4157063 () Bool)

(declare-fun b_free!119515 () Bool)

(declare-fun b_next!120219 () Bool)

(assert (=> b!4157063 (= b_free!119515 (not b_next!120219))))

(declare-fun tp!1268435 () Bool)

(declare-fun b_and!323877 () Bool)

(assert (=> b!4157063 (= tp!1268435 b_and!323877)))

(declare-fun b_free!119517 () Bool)

(declare-fun b_next!120221 () Bool)

(assert (=> b!4157063 (= b_free!119517 (not b_next!120221))))

(declare-fun tp!1268441 () Bool)

(declare-fun b_and!323879 () Bool)

(assert (=> b!4157063 (= tp!1268441 b_and!323879)))

(declare-fun b!4157061 () Bool)

(declare-fun res!1702577 () Bool)

(declare-fun e!2579872 () Bool)

(assert (=> b!4157061 (=> (not res!1702577) (not e!2579872))))

(declare-datatypes ((List!45452 0))(
  ( (Nil!45328) (Cons!45328 (h!50748 (_ BitVec 16)) (t!343483 List!45452)) )
))
(declare-datatypes ((TokenValue!7718 0))(
  ( (FloatLiteralValue!15436 (text!54471 List!45452)) (TokenValueExt!7717 (__x!27653 Int)) (Broken!38590 (value!233885 List!45452)) (Object!7841) (End!7718) (Def!7718) (Underscore!7718) (Match!7718) (Else!7718) (Error!7718) (Case!7718) (If!7718) (Extends!7718) (Abstract!7718) (Class!7718) (Val!7718) (DelimiterValue!15436 (del!7778 List!45452)) (KeywordValue!7724 (value!233886 List!45452)) (CommentValue!15436 (value!233887 List!45452)) (WhitespaceValue!15436 (value!233888 List!45452)) (IndentationValue!7718 (value!233889 List!45452)) (String!52339) (Int32!7718) (Broken!38591 (value!233890 List!45452)) (Boolean!7719) (Unit!64490) (OperatorValue!7721 (op!7778 List!45452)) (IdentifierValue!15436 (value!233891 List!45452)) (IdentifierValue!15437 (value!233892 List!45452)) (WhitespaceValue!15437 (value!233893 List!45452)) (True!15436) (False!15436) (Broken!38592 (value!233894 List!45452)) (Broken!38593 (value!233895 List!45452)) (True!15437) (RightBrace!7718) (RightBracket!7718) (Colon!7718) (Null!7718) (Comma!7718) (LeftBracket!7718) (False!15437) (LeftBrace!7718) (ImaginaryLiteralValue!7718 (text!54472 List!45452)) (StringLiteralValue!23154 (value!233896 List!45452)) (EOFValue!7718 (value!233897 List!45452)) (IdentValue!7718 (value!233898 List!45452)) (DelimiterValue!15437 (value!233899 List!45452)) (DedentValue!7718 (value!233900 List!45452)) (NewLineValue!7718 (value!233901 List!45452)) (IntegerValue!23154 (value!233902 (_ BitVec 32)) (text!54473 List!45452)) (IntegerValue!23155 (value!233903 Int) (text!54474 List!45452)) (Times!7718) (Or!7718) (Equal!7718) (Minus!7718) (Broken!38594 (value!233904 List!45452)) (And!7718) (Div!7718) (LessEqual!7718) (Mod!7718) (Concat!20111) (Not!7718) (Plus!7718) (SpaceValue!7718 (value!233905 List!45452)) (IntegerValue!23156 (value!233906 Int) (text!54475 List!45452)) (StringLiteralValue!23155 (text!54476 List!45452)) (FloatLiteralValue!15437 (text!54477 List!45452)) (BytesLiteralValue!7718 (value!233907 List!45452)) (CommentValue!15437 (value!233908 List!45452)) (StringLiteralValue!23156 (value!233909 List!45452)) (ErrorTokenValue!7718 (msg!7779 List!45452)) )
))
(declare-datatypes ((C!24972 0))(
  ( (C!24973 (val!14596 Int)) )
))
(declare-datatypes ((List!45453 0))(
  ( (Nil!45329) (Cons!45329 (h!50749 C!24972) (t!343484 List!45453)) )
))
(declare-datatypes ((String!52340 0))(
  ( (String!52341 (value!233910 String)) )
))
(declare-datatypes ((IArray!27403 0))(
  ( (IArray!27404 (innerList!13759 List!45453)) )
))
(declare-datatypes ((Conc!13699 0))(
  ( (Node!13699 (left!33865 Conc!13699) (right!34195 Conc!13699) (csize!27628 Int) (cheight!13910 Int)) (Leaf!21158 (xs!17005 IArray!27403) (csize!27629 Int)) (Empty!13699) )
))
(declare-datatypes ((Regex!12393 0))(
  ( (ElementMatch!12393 (c!711488 C!24972)) (Concat!20112 (regOne!25298 Regex!12393) (regTwo!25298 Regex!12393)) (EmptyExpr!12393) (Star!12393 (reg!12722 Regex!12393)) (EmptyLang!12393) (Union!12393 (regOne!25299 Regex!12393) (regTwo!25299 Regex!12393)) )
))
(declare-datatypes ((BalanceConc!26992 0))(
  ( (BalanceConc!26993 (c!711489 Conc!13699)) )
))
(declare-datatypes ((TokenValueInjection!14864 0))(
  ( (TokenValueInjection!14865 (toValue!10152 Int) (toChars!10011 Int)) )
))
(declare-datatypes ((Rule!14776 0))(
  ( (Rule!14777 (regex!7488 Regex!12393) (tag!8352 String!52340) (isSeparator!7488 Bool) (transformation!7488 TokenValueInjection!14864)) )
))
(declare-datatypes ((List!45454 0))(
  ( (Nil!45330) (Cons!45330 (h!50750 Rule!14776) (t!343485 List!45454)) )
))
(declare-fun rules!4102 () List!45454)

(declare-fun r1!615 () Rule!14776)

(declare-fun contains!9201 (List!45454 Rule!14776) Bool)

(assert (=> b!4157061 (= res!1702577 (contains!9201 rules!4102 r1!615))))

(declare-fun r2!597 () Rule!14776)

(declare-fun b!4157062 () Bool)

(declare-fun e!2579873 () Bool)

(declare-fun tp!1268436 () Bool)

(declare-fun e!2579867 () Bool)

(declare-fun inv!59865 (String!52340) Bool)

(declare-fun inv!59867 (TokenValueInjection!14864) Bool)

(assert (=> b!4157062 (= e!2579873 (and tp!1268436 (inv!59865 (tag!8352 r2!597)) (inv!59867 (transformation!7488 r2!597)) e!2579867))))

(declare-fun e!2579875 () Bool)

(assert (=> b!4157063 (= e!2579875 (and tp!1268435 tp!1268441))))

(declare-fun b!4157064 () Bool)

(declare-fun e!2579865 () Bool)

(declare-fun e!2579870 () Bool)

(declare-fun tp!1268437 () Bool)

(assert (=> b!4157064 (= e!2579865 (and e!2579870 tp!1268437))))

(declare-fun b!4157065 () Bool)

(declare-fun e!2579876 () Bool)

(declare-fun e!2579868 () Bool)

(assert (=> b!4157065 (= e!2579876 e!2579868)))

(declare-fun res!1702578 () Bool)

(assert (=> b!4157065 (=> (not res!1702578) (not e!2579868))))

(declare-fun lt!1481673 () Rule!14776)

(assert (=> b!4157065 (= res!1702578 (not (= lt!1481673 r1!615)))))

(declare-fun head!8810 (List!45454) Rule!14776)

(assert (=> b!4157065 (= lt!1481673 (head!8810 rules!4102))))

(declare-datatypes ((List!45455 0))(
  ( (Nil!45331) (Cons!45331 (h!50751 String!52340) (t!343486 List!45455)) )
))
(declare-fun lt!1481674 () List!45455)

(declare-fun b!4157066 () Bool)

(declare-fun e!2579874 () Bool)

(declare-datatypes ((LexerInterface!7077 0))(
  ( (LexerInterfaceExt!7074 (__x!27654 Int)) (Lexer!7075) )
))
(declare-fun thiss!26968 () LexerInterface!7077)

(declare-fun lt!1481676 () List!45454)

(declare-fun noDuplicateTag!3065 (LexerInterface!7077 List!45454 List!45455) Bool)

(assert (=> b!4157066 (= e!2579874 (noDuplicateTag!3065 thiss!26968 lt!1481676 lt!1481674))))

(declare-fun res!1702579 () Bool)

(assert (=> start!395866 (=> (not res!1702579) (not e!2579872))))

(get-info :version)

(assert (=> start!395866 (= res!1702579 ((_ is Lexer!7075) thiss!26968))))

(assert (=> start!395866 e!2579872))

(assert (=> start!395866 true))

(assert (=> start!395866 e!2579865))

(declare-fun e!2579871 () Bool)

(assert (=> start!395866 e!2579871))

(assert (=> start!395866 e!2579873))

(declare-fun b!4157067 () Bool)

(declare-fun res!1702583 () Bool)

(assert (=> b!4157067 (=> (not res!1702583) (not e!2579872))))

(assert (=> b!4157067 (= res!1702583 (contains!9201 rules!4102 r2!597))))

(assert (=> b!4157068 (= e!2579867 (and tp!1268442 tp!1268443))))

(declare-fun e!2579866 () Bool)

(assert (=> b!4157069 (= e!2579866 (and tp!1268438 tp!1268444))))

(declare-fun b!4157070 () Bool)

(declare-fun res!1702580 () Bool)

(assert (=> b!4157070 (=> (not res!1702580) (not e!2579876))))

(declare-fun getIndex!830 (List!45454 Rule!14776) Int)

(assert (=> b!4157070 (= res!1702580 (< (getIndex!830 rules!4102 r1!615) (getIndex!830 rules!4102 r2!597)))))

(declare-fun b!4157071 () Bool)

(assert (=> b!4157071 (= e!2579868 (not e!2579874))))

(declare-fun res!1702582 () Bool)

(assert (=> b!4157071 (=> res!1702582 e!2579874)))

(assert (=> b!4157071 (= res!1702582 (not (contains!9201 lt!1481676 r1!615)))))

(assert (=> b!4157071 (contains!9201 lt!1481676 r2!597)))

(declare-datatypes ((Unit!64491 0))(
  ( (Unit!64492) )
))
(declare-fun lt!1481675 () Unit!64491)

(declare-fun lemmaGetIndexBiggerAndHeadNotEqThenTailContains!12 (List!45454 Rule!14776 Rule!14776) Unit!64491)

(assert (=> b!4157071 (= lt!1481675 (lemmaGetIndexBiggerAndHeadNotEqThenTailContains!12 rules!4102 r1!615 r2!597))))

(assert (=> b!4157071 (noDuplicateTag!3065 thiss!26968 lt!1481676 Nil!45331)))

(declare-fun lt!1481672 () Unit!64491)

(declare-fun lemmaNoDupTagThenAlsoWithSubListAcc!40 (LexerInterface!7077 List!45455 List!45455 List!45454) Unit!64491)

(assert (=> b!4157071 (= lt!1481672 (lemmaNoDupTagThenAlsoWithSubListAcc!40 thiss!26968 (Cons!45331 (tag!8352 lt!1481673) Nil!45331) Nil!45331 lt!1481676))))

(declare-fun tail!6643 (List!45454) List!45454)

(assert (=> b!4157071 (= lt!1481676 (tail!6643 rules!4102))))

(declare-fun b!4157072 () Bool)

(assert (=> b!4157072 (= e!2579872 e!2579876)))

(declare-fun res!1702581 () Bool)

(assert (=> b!4157072 (=> (not res!1702581) (not e!2579876))))

(assert (=> b!4157072 (= res!1702581 (noDuplicateTag!3065 thiss!26968 rules!4102 lt!1481674))))

(declare-fun noDuplicateTag$default$2!70 (LexerInterface!7077) List!45455)

(assert (=> b!4157072 (= lt!1481674 (noDuplicateTag$default$2!70 thiss!26968))))

(declare-fun b!4157073 () Bool)

(declare-fun tp!1268440 () Bool)

(assert (=> b!4157073 (= e!2579870 (and tp!1268440 (inv!59865 (tag!8352 (h!50750 rules!4102))) (inv!59867 (transformation!7488 (h!50750 rules!4102))) e!2579875))))

(declare-fun tp!1268439 () Bool)

(declare-fun b!4157074 () Bool)

(assert (=> b!4157074 (= e!2579871 (and tp!1268439 (inv!59865 (tag!8352 r1!615)) (inv!59867 (transformation!7488 r1!615)) e!2579866))))

(assert (= (and start!395866 res!1702579) b!4157061))

(assert (= (and b!4157061 res!1702577) b!4157067))

(assert (= (and b!4157067 res!1702583) b!4157072))

(assert (= (and b!4157072 res!1702581) b!4157070))

(assert (= (and b!4157070 res!1702580) b!4157065))

(assert (= (and b!4157065 res!1702578) b!4157071))

(assert (= (and b!4157071 (not res!1702582)) b!4157066))

(assert (= b!4157073 b!4157063))

(assert (= b!4157064 b!4157073))

(assert (= (and start!395866 ((_ is Cons!45330) rules!4102)) b!4157064))

(assert (= b!4157074 b!4157069))

(assert (= start!395866 b!4157074))

(assert (= b!4157062 b!4157068))

(assert (= start!395866 b!4157062))

(declare-fun m!4751057 () Bool)

(assert (=> b!4157065 m!4751057))

(declare-fun m!4751059 () Bool)

(assert (=> b!4157071 m!4751059))

(declare-fun m!4751061 () Bool)

(assert (=> b!4157071 m!4751061))

(declare-fun m!4751063 () Bool)

(assert (=> b!4157071 m!4751063))

(declare-fun m!4751065 () Bool)

(assert (=> b!4157071 m!4751065))

(declare-fun m!4751067 () Bool)

(assert (=> b!4157071 m!4751067))

(declare-fun m!4751069 () Bool)

(assert (=> b!4157071 m!4751069))

(declare-fun m!4751071 () Bool)

(assert (=> b!4157072 m!4751071))

(declare-fun m!4751073 () Bool)

(assert (=> b!4157072 m!4751073))

(declare-fun m!4751075 () Bool)

(assert (=> b!4157062 m!4751075))

(declare-fun m!4751077 () Bool)

(assert (=> b!4157062 m!4751077))

(declare-fun m!4751079 () Bool)

(assert (=> b!4157067 m!4751079))

(declare-fun m!4751081 () Bool)

(assert (=> b!4157073 m!4751081))

(declare-fun m!4751083 () Bool)

(assert (=> b!4157073 m!4751083))

(declare-fun m!4751085 () Bool)

(assert (=> b!4157061 m!4751085))

(declare-fun m!4751087 () Bool)

(assert (=> b!4157070 m!4751087))

(declare-fun m!4751089 () Bool)

(assert (=> b!4157070 m!4751089))

(declare-fun m!4751091 () Bool)

(assert (=> b!4157066 m!4751091))

(declare-fun m!4751093 () Bool)

(assert (=> b!4157074 m!4751093))

(declare-fun m!4751095 () Bool)

(assert (=> b!4157074 m!4751095))

(check-sat (not b!4157071) (not b_next!120221) (not b!4157061) b_and!323879 (not b!4157074) (not b!4157066) (not b_next!120215) (not b!4157065) b_and!323871 (not b_next!120211) (not b!4157067) (not b!4157070) (not b!4157073) (not b_next!120217) (not b_next!120219) b_and!323875 (not b!4157072) b_and!323877 (not b!4157064) (not b_next!120213) (not b!4157062) b_and!323873 b_and!323869)
(check-sat (not b_next!120221) b_and!323879 (not b_next!120215) b_and!323871 b_and!323877 (not b_next!120211) (not b_next!120213) (not b_next!120217) (not b_next!120219) b_and!323875 b_and!323873 b_and!323869)
(get-model)

(declare-fun d!1229163 () Bool)

(declare-fun lt!1481679 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7013 (List!45454) (InoxSet Rule!14776))

(assert (=> d!1229163 (= lt!1481679 (select (content!7013 rules!4102) r2!597))))

(declare-fun e!2579881 () Bool)

(assert (=> d!1229163 (= lt!1481679 e!2579881)))

(declare-fun res!1702602 () Bool)

(assert (=> d!1229163 (=> (not res!1702602) (not e!2579881))))

(assert (=> d!1229163 (= res!1702602 ((_ is Cons!45330) rules!4102))))

(assert (=> d!1229163 (= (contains!9201 rules!4102 r2!597) lt!1481679)))

(declare-fun b!4157079 () Bool)

(declare-fun e!2579882 () Bool)

(assert (=> b!4157079 (= e!2579881 e!2579882)))

(declare-fun res!1702601 () Bool)

(assert (=> b!4157079 (=> res!1702601 e!2579882)))

(assert (=> b!4157079 (= res!1702601 (= (h!50750 rules!4102) r2!597))))

(declare-fun b!4157080 () Bool)

(assert (=> b!4157080 (= e!2579882 (contains!9201 (t!343485 rules!4102) r2!597))))

(assert (= (and d!1229163 res!1702602) b!4157079))

(assert (= (and b!4157079 (not res!1702601)) b!4157080))

(declare-fun m!4751097 () Bool)

(assert (=> d!1229163 m!4751097))

(declare-fun m!4751099 () Bool)

(assert (=> d!1229163 m!4751099))

(declare-fun m!4751101 () Bool)

(assert (=> b!4157080 m!4751101))

(assert (=> b!4157067 d!1229163))

(declare-fun d!1229167 () Bool)

(assert (=> d!1229167 (= (inv!59865 (tag!8352 r2!597)) (= (mod (str.len (value!233910 (tag!8352 r2!597))) 2) 0))))

(assert (=> b!4157062 d!1229167))

(declare-fun d!1229169 () Bool)

(declare-fun res!1702611 () Bool)

(declare-fun e!2579891 () Bool)

(assert (=> d!1229169 (=> (not res!1702611) (not e!2579891))))

(declare-fun semiInverseModEq!3246 (Int Int) Bool)

(assert (=> d!1229169 (= res!1702611 (semiInverseModEq!3246 (toChars!10011 (transformation!7488 r2!597)) (toValue!10152 (transformation!7488 r2!597))))))

(assert (=> d!1229169 (= (inv!59867 (transformation!7488 r2!597)) e!2579891)))

(declare-fun b!4157089 () Bool)

(declare-fun equivClasses!3145 (Int Int) Bool)

(assert (=> b!4157089 (= e!2579891 (equivClasses!3145 (toChars!10011 (transformation!7488 r2!597)) (toValue!10152 (transformation!7488 r2!597))))))

(assert (= (and d!1229169 res!1702611) b!4157089))

(declare-fun m!4751107 () Bool)

(assert (=> d!1229169 m!4751107))

(declare-fun m!4751109 () Bool)

(assert (=> b!4157089 m!4751109))

(assert (=> b!4157062 d!1229169))

(declare-fun d!1229173 () Bool)

(assert (=> d!1229173 (= (inv!59865 (tag!8352 (h!50750 rules!4102))) (= (mod (str.len (value!233910 (tag!8352 (h!50750 rules!4102)))) 2) 0))))

(assert (=> b!4157073 d!1229173))

(declare-fun d!1229175 () Bool)

(declare-fun res!1702612 () Bool)

(declare-fun e!2579892 () Bool)

(assert (=> d!1229175 (=> (not res!1702612) (not e!2579892))))

(assert (=> d!1229175 (= res!1702612 (semiInverseModEq!3246 (toChars!10011 (transformation!7488 (h!50750 rules!4102))) (toValue!10152 (transformation!7488 (h!50750 rules!4102)))))))

(assert (=> d!1229175 (= (inv!59867 (transformation!7488 (h!50750 rules!4102))) e!2579892)))

(declare-fun b!4157090 () Bool)

(assert (=> b!4157090 (= e!2579892 (equivClasses!3145 (toChars!10011 (transformation!7488 (h!50750 rules!4102))) (toValue!10152 (transformation!7488 (h!50750 rules!4102)))))))

(assert (= (and d!1229175 res!1702612) b!4157090))

(declare-fun m!4751111 () Bool)

(assert (=> d!1229175 m!4751111))

(declare-fun m!4751113 () Bool)

(assert (=> b!4157090 m!4751113))

(assert (=> b!4157073 d!1229175))

(declare-fun d!1229177 () Bool)

(assert (=> d!1229177 (= (inv!59865 (tag!8352 r1!615)) (= (mod (str.len (value!233910 (tag!8352 r1!615))) 2) 0))))

(assert (=> b!4157074 d!1229177))

(declare-fun d!1229179 () Bool)

(declare-fun res!1702613 () Bool)

(declare-fun e!2579893 () Bool)

(assert (=> d!1229179 (=> (not res!1702613) (not e!2579893))))

(assert (=> d!1229179 (= res!1702613 (semiInverseModEq!3246 (toChars!10011 (transformation!7488 r1!615)) (toValue!10152 (transformation!7488 r1!615))))))

(assert (=> d!1229179 (= (inv!59867 (transformation!7488 r1!615)) e!2579893)))

(declare-fun b!4157091 () Bool)

(assert (=> b!4157091 (= e!2579893 (equivClasses!3145 (toChars!10011 (transformation!7488 r1!615)) (toValue!10152 (transformation!7488 r1!615))))))

(assert (= (and d!1229179 res!1702613) b!4157091))

(declare-fun m!4751115 () Bool)

(assert (=> d!1229179 m!4751115))

(declare-fun m!4751117 () Bool)

(assert (=> b!4157091 m!4751117))

(assert (=> b!4157074 d!1229179))

(declare-fun b!4157109 () Bool)

(declare-fun e!2579905 () Int)

(assert (=> b!4157109 (= e!2579905 (- 1))))

(declare-fun b!4157108 () Bool)

(assert (=> b!4157108 (= e!2579905 (+ 1 (getIndex!830 (t!343485 rules!4102) r1!615)))))

(declare-fun b!4157106 () Bool)

(declare-fun e!2579906 () Int)

(assert (=> b!4157106 (= e!2579906 0)))

(declare-fun d!1229181 () Bool)

(declare-fun lt!1481688 () Int)

(assert (=> d!1229181 (>= lt!1481688 0)))

(assert (=> d!1229181 (= lt!1481688 e!2579906)))

(declare-fun c!711495 () Bool)

(assert (=> d!1229181 (= c!711495 (and ((_ is Cons!45330) rules!4102) (= (h!50750 rules!4102) r1!615)))))

(assert (=> d!1229181 (contains!9201 rules!4102 r1!615)))

(assert (=> d!1229181 (= (getIndex!830 rules!4102 r1!615) lt!1481688)))

(declare-fun b!4157107 () Bool)

(assert (=> b!4157107 (= e!2579906 e!2579905)))

(declare-fun c!711494 () Bool)

(assert (=> b!4157107 (= c!711494 (and ((_ is Cons!45330) rules!4102) (not (= (h!50750 rules!4102) r1!615))))))

(assert (= (and d!1229181 c!711495) b!4157106))

(assert (= (and d!1229181 (not c!711495)) b!4157107))

(assert (= (and b!4157107 c!711494) b!4157108))

(assert (= (and b!4157107 (not c!711494)) b!4157109))

(declare-fun m!4751129 () Bool)

(assert (=> b!4157108 m!4751129))

(assert (=> d!1229181 m!4751085))

(assert (=> b!4157070 d!1229181))

(declare-fun b!4157115 () Bool)

(declare-fun e!2579909 () Int)

(assert (=> b!4157115 (= e!2579909 (- 1))))

(declare-fun b!4157114 () Bool)

(assert (=> b!4157114 (= e!2579909 (+ 1 (getIndex!830 (t!343485 rules!4102) r2!597)))))

(declare-fun b!4157112 () Bool)

(declare-fun e!2579910 () Int)

(assert (=> b!4157112 (= e!2579910 0)))

(declare-fun d!1229187 () Bool)

(declare-fun lt!1481689 () Int)

(assert (=> d!1229187 (>= lt!1481689 0)))

(assert (=> d!1229187 (= lt!1481689 e!2579910)))

(declare-fun c!711497 () Bool)

(assert (=> d!1229187 (= c!711497 (and ((_ is Cons!45330) rules!4102) (= (h!50750 rules!4102) r2!597)))))

(assert (=> d!1229187 (contains!9201 rules!4102 r2!597)))

(assert (=> d!1229187 (= (getIndex!830 rules!4102 r2!597) lt!1481689)))

(declare-fun b!4157113 () Bool)

(assert (=> b!4157113 (= e!2579910 e!2579909)))

(declare-fun c!711496 () Bool)

(assert (=> b!4157113 (= c!711496 (and ((_ is Cons!45330) rules!4102) (not (= (h!50750 rules!4102) r2!597))))))

(assert (= (and d!1229187 c!711497) b!4157112))

(assert (= (and d!1229187 (not c!711497)) b!4157113))

(assert (= (and b!4157113 c!711496) b!4157114))

(assert (= (and b!4157113 (not c!711496)) b!4157115))

(declare-fun m!4751135 () Bool)

(assert (=> b!4157114 m!4751135))

(assert (=> d!1229187 m!4751079))

(assert (=> b!4157070 d!1229187))

(declare-fun d!1229191 () Bool)

(assert (=> d!1229191 (= (head!8810 rules!4102) (h!50750 rules!4102))))

(assert (=> b!4157065 d!1229191))

(declare-fun d!1229195 () Bool)

(declare-fun lt!1481692 () Bool)

(assert (=> d!1229195 (= lt!1481692 (select (content!7013 lt!1481676) r1!615))))

(declare-fun e!2579915 () Bool)

(assert (=> d!1229195 (= lt!1481692 e!2579915)))

(declare-fun res!1702627 () Bool)

(assert (=> d!1229195 (=> (not res!1702627) (not e!2579915))))

(assert (=> d!1229195 (= res!1702627 ((_ is Cons!45330) lt!1481676))))

(assert (=> d!1229195 (= (contains!9201 lt!1481676 r1!615) lt!1481692)))

(declare-fun b!4157120 () Bool)

(declare-fun e!2579916 () Bool)

(assert (=> b!4157120 (= e!2579915 e!2579916)))

(declare-fun res!1702626 () Bool)

(assert (=> b!4157120 (=> res!1702626 e!2579916)))

(assert (=> b!4157120 (= res!1702626 (= (h!50750 lt!1481676) r1!615))))

(declare-fun b!4157121 () Bool)

(assert (=> b!4157121 (= e!2579916 (contains!9201 (t!343485 lt!1481676) r1!615))))

(assert (= (and d!1229195 res!1702627) b!4157120))

(assert (= (and b!4157120 (not res!1702626)) b!4157121))

(declare-fun m!4751147 () Bool)

(assert (=> d!1229195 m!4751147))

(declare-fun m!4751149 () Bool)

(assert (=> d!1229195 m!4751149))

(declare-fun m!4751151 () Bool)

(assert (=> b!4157121 m!4751151))

(assert (=> b!4157071 d!1229195))

(declare-fun d!1229199 () Bool)

(declare-fun lt!1481693 () Bool)

(assert (=> d!1229199 (= lt!1481693 (select (content!7013 lt!1481676) r2!597))))

(declare-fun e!2579917 () Bool)

(assert (=> d!1229199 (= lt!1481693 e!2579917)))

(declare-fun res!1702629 () Bool)

(assert (=> d!1229199 (=> (not res!1702629) (not e!2579917))))

(assert (=> d!1229199 (= res!1702629 ((_ is Cons!45330) lt!1481676))))

(assert (=> d!1229199 (= (contains!9201 lt!1481676 r2!597) lt!1481693)))

(declare-fun b!4157122 () Bool)

(declare-fun e!2579918 () Bool)

(assert (=> b!4157122 (= e!2579917 e!2579918)))

(declare-fun res!1702628 () Bool)

(assert (=> b!4157122 (=> res!1702628 e!2579918)))

(assert (=> b!4157122 (= res!1702628 (= (h!50750 lt!1481676) r2!597))))

(declare-fun b!4157123 () Bool)

(assert (=> b!4157123 (= e!2579918 (contains!9201 (t!343485 lt!1481676) r2!597))))

(assert (= (and d!1229199 res!1702629) b!4157122))

(assert (= (and b!4157122 (not res!1702628)) b!4157123))

(assert (=> d!1229199 m!4751147))

(declare-fun m!4751153 () Bool)

(assert (=> d!1229199 m!4751153))

(declare-fun m!4751155 () Bool)

(assert (=> b!4157123 m!4751155))

(assert (=> b!4157071 d!1229199))

(declare-fun d!1229201 () Bool)

(declare-fun res!1702637 () Bool)

(declare-fun e!2579926 () Bool)

(assert (=> d!1229201 (=> res!1702637 e!2579926)))

(assert (=> d!1229201 (= res!1702637 ((_ is Nil!45330) lt!1481676))))

(assert (=> d!1229201 (= (noDuplicateTag!3065 thiss!26968 lt!1481676 Nil!45331) e!2579926)))

(declare-fun b!4157131 () Bool)

(declare-fun e!2579927 () Bool)

(assert (=> b!4157131 (= e!2579926 e!2579927)))

(declare-fun res!1702638 () Bool)

(assert (=> b!4157131 (=> (not res!1702638) (not e!2579927))))

(declare-fun contains!9203 (List!45455 String!52340) Bool)

(assert (=> b!4157131 (= res!1702638 (not (contains!9203 Nil!45331 (tag!8352 (h!50750 lt!1481676)))))))

(declare-fun b!4157132 () Bool)

(assert (=> b!4157132 (= e!2579927 (noDuplicateTag!3065 thiss!26968 (t!343485 lt!1481676) (Cons!45331 (tag!8352 (h!50750 lt!1481676)) Nil!45331)))))

(assert (= (and d!1229201 (not res!1702637)) b!4157131))

(assert (= (and b!4157131 res!1702638) b!4157132))

(declare-fun m!4751161 () Bool)

(assert (=> b!4157131 m!4751161))

(declare-fun m!4751163 () Bool)

(assert (=> b!4157132 m!4751163))

(assert (=> b!4157071 d!1229201))

(declare-fun d!1229207 () Bool)

(assert (=> d!1229207 (noDuplicateTag!3065 thiss!26968 lt!1481676 Nil!45331)))

(declare-fun lt!1481700 () Unit!64491)

(declare-fun choose!25448 (LexerInterface!7077 List!45455 List!45455 List!45454) Unit!64491)

(assert (=> d!1229207 (= lt!1481700 (choose!25448 thiss!26968 (Cons!45331 (tag!8352 lt!1481673) Nil!45331) Nil!45331 lt!1481676))))

(declare-fun subseq!565 (List!45455 List!45455) Bool)

(assert (=> d!1229207 (subseq!565 Nil!45331 (Cons!45331 (tag!8352 lt!1481673) Nil!45331))))

(assert (=> d!1229207 (= (lemmaNoDupTagThenAlsoWithSubListAcc!40 thiss!26968 (Cons!45331 (tag!8352 lt!1481673) Nil!45331) Nil!45331 lt!1481676) lt!1481700)))

(declare-fun bs!595541 () Bool)

(assert (= bs!595541 d!1229207))

(assert (=> bs!595541 m!4751069))

(declare-fun m!4751169 () Bool)

(assert (=> bs!595541 m!4751169))

(declare-fun m!4751171 () Bool)

(assert (=> bs!595541 m!4751171))

(assert (=> b!4157071 d!1229207))

(declare-fun d!1229213 () Bool)

(assert (=> d!1229213 (contains!9201 (tail!6643 rules!4102) r2!597)))

(declare-fun lt!1481703 () Unit!64491)

(declare-fun choose!25449 (List!45454 Rule!14776 Rule!14776) Unit!64491)

(assert (=> d!1229213 (= lt!1481703 (choose!25449 rules!4102 r1!615 r2!597))))

(declare-fun e!2579936 () Bool)

(assert (=> d!1229213 e!2579936))

(declare-fun res!1702647 () Bool)

(assert (=> d!1229213 (=> (not res!1702647) (not e!2579936))))

(assert (=> d!1229213 (= res!1702647 (contains!9201 rules!4102 r1!615))))

(assert (=> d!1229213 (= (lemmaGetIndexBiggerAndHeadNotEqThenTailContains!12 rules!4102 r1!615 r2!597) lt!1481703)))

(declare-fun b!4157141 () Bool)

(assert (=> b!4157141 (= e!2579936 (contains!9201 rules!4102 r2!597))))

(assert (= (and d!1229213 res!1702647) b!4157141))

(assert (=> d!1229213 m!4751065))

(assert (=> d!1229213 m!4751065))

(declare-fun m!4751181 () Bool)

(assert (=> d!1229213 m!4751181))

(declare-fun m!4751183 () Bool)

(assert (=> d!1229213 m!4751183))

(assert (=> d!1229213 m!4751085))

(assert (=> b!4157141 m!4751079))

(assert (=> b!4157071 d!1229213))

(declare-fun d!1229221 () Bool)

(assert (=> d!1229221 (= (tail!6643 rules!4102) (t!343485 rules!4102))))

(assert (=> b!4157071 d!1229221))

(declare-fun d!1229223 () Bool)

(declare-fun res!1702648 () Bool)

(declare-fun e!2579937 () Bool)

(assert (=> d!1229223 (=> res!1702648 e!2579937)))

(assert (=> d!1229223 (= res!1702648 ((_ is Nil!45330) lt!1481676))))

(assert (=> d!1229223 (= (noDuplicateTag!3065 thiss!26968 lt!1481676 lt!1481674) e!2579937)))

(declare-fun b!4157142 () Bool)

(declare-fun e!2579938 () Bool)

(assert (=> b!4157142 (= e!2579937 e!2579938)))

(declare-fun res!1702649 () Bool)

(assert (=> b!4157142 (=> (not res!1702649) (not e!2579938))))

(assert (=> b!4157142 (= res!1702649 (not (contains!9203 lt!1481674 (tag!8352 (h!50750 lt!1481676)))))))

(declare-fun b!4157143 () Bool)

(assert (=> b!4157143 (= e!2579938 (noDuplicateTag!3065 thiss!26968 (t!343485 lt!1481676) (Cons!45331 (tag!8352 (h!50750 lt!1481676)) lt!1481674)))))

(assert (= (and d!1229223 (not res!1702648)) b!4157142))

(assert (= (and b!4157142 res!1702649) b!4157143))

(declare-fun m!4751185 () Bool)

(assert (=> b!4157142 m!4751185))

(declare-fun m!4751187 () Bool)

(assert (=> b!4157143 m!4751187))

(assert (=> b!4157066 d!1229223))

(declare-fun d!1229225 () Bool)

(declare-fun lt!1481704 () Bool)

(assert (=> d!1229225 (= lt!1481704 (select (content!7013 rules!4102) r1!615))))

(declare-fun e!2579939 () Bool)

(assert (=> d!1229225 (= lt!1481704 e!2579939)))

(declare-fun res!1702651 () Bool)

(assert (=> d!1229225 (=> (not res!1702651) (not e!2579939))))

(assert (=> d!1229225 (= res!1702651 ((_ is Cons!45330) rules!4102))))

(assert (=> d!1229225 (= (contains!9201 rules!4102 r1!615) lt!1481704)))

(declare-fun b!4157144 () Bool)

(declare-fun e!2579940 () Bool)

(assert (=> b!4157144 (= e!2579939 e!2579940)))

(declare-fun res!1702650 () Bool)

(assert (=> b!4157144 (=> res!1702650 e!2579940)))

(assert (=> b!4157144 (= res!1702650 (= (h!50750 rules!4102) r1!615))))

(declare-fun b!4157145 () Bool)

(assert (=> b!4157145 (= e!2579940 (contains!9201 (t!343485 rules!4102) r1!615))))

(assert (= (and d!1229225 res!1702651) b!4157144))

(assert (= (and b!4157144 (not res!1702650)) b!4157145))

(assert (=> d!1229225 m!4751097))

(declare-fun m!4751189 () Bool)

(assert (=> d!1229225 m!4751189))

(declare-fun m!4751191 () Bool)

(assert (=> b!4157145 m!4751191))

(assert (=> b!4157061 d!1229225))

(declare-fun d!1229227 () Bool)

(declare-fun res!1702652 () Bool)

(declare-fun e!2579942 () Bool)

(assert (=> d!1229227 (=> res!1702652 e!2579942)))

(assert (=> d!1229227 (= res!1702652 ((_ is Nil!45330) rules!4102))))

(assert (=> d!1229227 (= (noDuplicateTag!3065 thiss!26968 rules!4102 lt!1481674) e!2579942)))

(declare-fun b!4157146 () Bool)

(declare-fun e!2579943 () Bool)

(assert (=> b!4157146 (= e!2579942 e!2579943)))

(declare-fun res!1702653 () Bool)

(assert (=> b!4157146 (=> (not res!1702653) (not e!2579943))))

(assert (=> b!4157146 (= res!1702653 (not (contains!9203 lt!1481674 (tag!8352 (h!50750 rules!4102)))))))

(declare-fun b!4157147 () Bool)

(assert (=> b!4157147 (= e!2579943 (noDuplicateTag!3065 thiss!26968 (t!343485 rules!4102) (Cons!45331 (tag!8352 (h!50750 rules!4102)) lt!1481674)))))

(assert (= (and d!1229227 (not res!1702652)) b!4157146))

(assert (= (and b!4157146 res!1702653) b!4157147))

(declare-fun m!4751193 () Bool)

(assert (=> b!4157146 m!4751193))

(declare-fun m!4751195 () Bool)

(assert (=> b!4157147 m!4751195))

(assert (=> b!4157072 d!1229227))

(declare-fun d!1229229 () Bool)

(assert (=> d!1229229 (= (noDuplicateTag$default$2!70 thiss!26968) Nil!45331)))

(assert (=> b!4157072 d!1229229))

(declare-fun b!4157166 () Bool)

(declare-fun e!2579950 () Bool)

(declare-fun tp_is_empty!21659 () Bool)

(assert (=> b!4157166 (= e!2579950 tp_is_empty!21659)))

(assert (=> b!4157062 (= tp!1268436 e!2579950)))

(declare-fun b!4157168 () Bool)

(declare-fun tp!1268458 () Bool)

(assert (=> b!4157168 (= e!2579950 tp!1268458)))

(declare-fun b!4157169 () Bool)

(declare-fun tp!1268457 () Bool)

(declare-fun tp!1268456 () Bool)

(assert (=> b!4157169 (= e!2579950 (and tp!1268457 tp!1268456))))

(declare-fun b!4157167 () Bool)

(declare-fun tp!1268459 () Bool)

(declare-fun tp!1268455 () Bool)

(assert (=> b!4157167 (= e!2579950 (and tp!1268459 tp!1268455))))

(assert (= (and b!4157062 ((_ is ElementMatch!12393) (regex!7488 r2!597))) b!4157166))

(assert (= (and b!4157062 ((_ is Concat!20112) (regex!7488 r2!597))) b!4157167))

(assert (= (and b!4157062 ((_ is Star!12393) (regex!7488 r2!597))) b!4157168))

(assert (= (and b!4157062 ((_ is Union!12393) (regex!7488 r2!597))) b!4157169))

(declare-fun b!4157174 () Bool)

(declare-fun e!2579953 () Bool)

(assert (=> b!4157174 (= e!2579953 tp_is_empty!21659)))

(assert (=> b!4157073 (= tp!1268440 e!2579953)))

(declare-fun b!4157176 () Bool)

(declare-fun tp!1268463 () Bool)

(assert (=> b!4157176 (= e!2579953 tp!1268463)))

(declare-fun b!4157177 () Bool)

(declare-fun tp!1268462 () Bool)

(declare-fun tp!1268461 () Bool)

(assert (=> b!4157177 (= e!2579953 (and tp!1268462 tp!1268461))))

(declare-fun b!4157175 () Bool)

(declare-fun tp!1268464 () Bool)

(declare-fun tp!1268460 () Bool)

(assert (=> b!4157175 (= e!2579953 (and tp!1268464 tp!1268460))))

(assert (= (and b!4157073 ((_ is ElementMatch!12393) (regex!7488 (h!50750 rules!4102)))) b!4157174))

(assert (= (and b!4157073 ((_ is Concat!20112) (regex!7488 (h!50750 rules!4102)))) b!4157175))

(assert (= (and b!4157073 ((_ is Star!12393) (regex!7488 (h!50750 rules!4102)))) b!4157176))

(assert (= (and b!4157073 ((_ is Union!12393) (regex!7488 (h!50750 rules!4102)))) b!4157177))

(declare-fun b!4157182 () Bool)

(declare-fun e!2579956 () Bool)

(assert (=> b!4157182 (= e!2579956 tp_is_empty!21659)))

(assert (=> b!4157074 (= tp!1268439 e!2579956)))

(declare-fun b!4157184 () Bool)

(declare-fun tp!1268468 () Bool)

(assert (=> b!4157184 (= e!2579956 tp!1268468)))

(declare-fun b!4157185 () Bool)

(declare-fun tp!1268467 () Bool)

(declare-fun tp!1268466 () Bool)

(assert (=> b!4157185 (= e!2579956 (and tp!1268467 tp!1268466))))

(declare-fun b!4157183 () Bool)

(declare-fun tp!1268469 () Bool)

(declare-fun tp!1268465 () Bool)

(assert (=> b!4157183 (= e!2579956 (and tp!1268469 tp!1268465))))

(assert (= (and b!4157074 ((_ is ElementMatch!12393) (regex!7488 r1!615))) b!4157182))

(assert (= (and b!4157074 ((_ is Concat!20112) (regex!7488 r1!615))) b!4157183))

(assert (= (and b!4157074 ((_ is Star!12393) (regex!7488 r1!615))) b!4157184))

(assert (= (and b!4157074 ((_ is Union!12393) (regex!7488 r1!615))) b!4157185))

(declare-fun b!4157209 () Bool)

(declare-fun b_free!119519 () Bool)

(declare-fun b_next!120223 () Bool)

(assert (=> b!4157209 (= b_free!119519 (not b_next!120223))))

(declare-fun tp!1268490 () Bool)

(declare-fun b_and!323881 () Bool)

(assert (=> b!4157209 (= tp!1268490 b_and!323881)))

(declare-fun b_free!119521 () Bool)

(declare-fun b_next!120225 () Bool)

(assert (=> b!4157209 (= b_free!119521 (not b_next!120225))))

(declare-fun tp!1268489 () Bool)

(declare-fun b_and!323883 () Bool)

(assert (=> b!4157209 (= tp!1268489 b_and!323883)))

(declare-fun e!2579973 () Bool)

(assert (=> b!4157209 (= e!2579973 (and tp!1268490 tp!1268489))))

(declare-fun e!2579972 () Bool)

(declare-fun tp!1268488 () Bool)

(declare-fun b!4157208 () Bool)

(assert (=> b!4157208 (= e!2579972 (and tp!1268488 (inv!59865 (tag!8352 (h!50750 (t!343485 rules!4102)))) (inv!59867 (transformation!7488 (h!50750 (t!343485 rules!4102)))) e!2579973))))

(declare-fun b!4157207 () Bool)

(declare-fun e!2579970 () Bool)

(declare-fun tp!1268491 () Bool)

(assert (=> b!4157207 (= e!2579970 (and e!2579972 tp!1268491))))

(assert (=> b!4157064 (= tp!1268437 e!2579970)))

(assert (= b!4157208 b!4157209))

(assert (= b!4157207 b!4157208))

(assert (= (and b!4157064 ((_ is Cons!45330) (t!343485 rules!4102))) b!4157207))

(declare-fun m!4751209 () Bool)

(assert (=> b!4157208 m!4751209))

(declare-fun m!4751211 () Bool)

(assert (=> b!4157208 m!4751211))

(check-sat b_and!323883 (not b!4157208) (not d!1229207) (not d!1229163) (not b!4157207) (not b!4157114) (not b!4157175) b_and!323881 (not d!1229199) (not b!4157121) (not b!4157131) (not b!4157080) (not b_next!120221) (not b_next!120219) (not d!1229225) b_and!323875 (not b!4157132) (not b_next!120225) (not b!4157089) b_and!323879 tp_is_empty!21659 (not b!4157176) (not b_next!120215) (not b!4157147) (not b!4157168) (not b!4157146) b_and!323871 (not b!4157169) (not b!4157091) (not b!4157183) (not b!4157090) b_and!323877 (not b!4157123) (not b!4157177) (not d!1229175) (not b_next!120211) (not d!1229181) (not b!4157108) (not b!4157167) (not b!4157143) (not d!1229169) (not b!4157142) (not b_next!120213) (not d!1229179) (not d!1229195) (not b!4157145) (not d!1229187) (not b_next!120217) (not b!4157184) (not d!1229213) (not b!4157185) (not b!4157141) b_and!323873 (not b_next!120223) b_and!323869)
(check-sat b_and!323881 (not b_next!120221) (not b_next!120215) b_and!323871 b_and!323877 b_and!323883 (not b_next!120211) (not b_next!120213) (not b_next!120217) (not b_next!120219) b_and!323875 b_and!323879 (not b_next!120225) b_and!323873 (not b_next!120223) b_and!323869)
