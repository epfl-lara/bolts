; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396458 () Bool)

(assert start!396458)

(declare-fun b!4160697 () Bool)

(declare-fun b_free!119747 () Bool)

(declare-fun b_next!120451 () Bool)

(assert (=> b!4160697 (= b_free!119747 (not b_next!120451))))

(declare-fun tp!1269720 () Bool)

(declare-fun b_and!324109 () Bool)

(assert (=> b!4160697 (= tp!1269720 b_and!324109)))

(declare-fun b_free!119749 () Bool)

(declare-fun b_next!120453 () Bool)

(assert (=> b!4160697 (= b_free!119749 (not b_next!120453))))

(declare-fun tp!1269717 () Bool)

(declare-fun b_and!324111 () Bool)

(assert (=> b!4160697 (= tp!1269717 b_and!324111)))

(declare-fun b!4160702 () Bool)

(declare-fun b_free!119751 () Bool)

(declare-fun b_next!120455 () Bool)

(assert (=> b!4160702 (= b_free!119751 (not b_next!120455))))

(declare-fun tp!1269719 () Bool)

(declare-fun b_and!324113 () Bool)

(assert (=> b!4160702 (= tp!1269719 b_and!324113)))

(declare-fun b_free!119753 () Bool)

(declare-fun b_next!120457 () Bool)

(assert (=> b!4160702 (= b_free!119753 (not b_next!120457))))

(declare-fun tp!1269715 () Bool)

(declare-fun b_and!324115 () Bool)

(assert (=> b!4160702 (= tp!1269715 b_and!324115)))

(declare-fun res!1704332 () Bool)

(declare-fun e!2582521 () Bool)

(assert (=> start!396458 (=> (not res!1704332) (not e!2582521))))

(declare-datatypes ((LexerInterface!7099 0))(
  ( (LexerInterfaceExt!7096 (__x!27695 Int)) (Lexer!7097) )
))
(declare-fun thiss!27036 () LexerInterface!7099)

(get-info :version)

(assert (=> start!396458 (= res!1704332 ((_ is Lexer!7097) thiss!27036))))

(assert (=> start!396458 e!2582521))

(declare-fun e!2582520 () Bool)

(assert (=> start!396458 e!2582520))

(declare-fun e!2582526 () Bool)

(assert (=> start!396458 e!2582526))

(assert (=> start!396458 true))

(declare-datatypes ((String!52551 0))(
  ( (String!52552 (value!234518 String)) )
))
(declare-fun tag!272 () String!52551)

(declare-fun inv!59996 (String!52551) Bool)

(assert (=> start!396458 (inv!59996 tag!272)))

(declare-fun e!2582530 () Bool)

(assert (=> start!396458 e!2582530))

(declare-fun b!4160695 () Bool)

(declare-fun res!1704329 () Bool)

(assert (=> b!4160695 (=> (not res!1704329) (not e!2582521))))

(declare-datatypes ((List!45586 0))(
  ( (Nil!45462) (Cons!45462 (h!50882 String!52551) (t!343617 List!45586)) )
))
(declare-fun acc!617 () List!45586)

(declare-datatypes ((List!45587 0))(
  ( (Nil!45463) (Cons!45463 (h!50883 (_ BitVec 16)) (t!343618 List!45587)) )
))
(declare-datatypes ((TokenValue!7738 0))(
  ( (FloatLiteralValue!15476 (text!54611 List!45587)) (TokenValueExt!7737 (__x!27696 Int)) (Broken!38690 (value!234519 List!45587)) (Object!7861) (End!7738) (Def!7738) (Underscore!7738) (Match!7738) (Else!7738) (Error!7738) (Case!7738) (If!7738) (Extends!7738) (Abstract!7738) (Class!7738) (Val!7738) (DelimiterValue!15476 (del!7798 List!45587)) (KeywordValue!7744 (value!234520 List!45587)) (CommentValue!15476 (value!234521 List!45587)) (WhitespaceValue!15476 (value!234522 List!45587)) (IndentationValue!7738 (value!234523 List!45587)) (String!52553) (Int32!7738) (Broken!38691 (value!234524 List!45587)) (Boolean!7739) (Unit!64584) (OperatorValue!7741 (op!7798 List!45587)) (IdentifierValue!15476 (value!234525 List!45587)) (IdentifierValue!15477 (value!234526 List!45587)) (WhitespaceValue!15477 (value!234527 List!45587)) (True!15476) (False!15476) (Broken!38692 (value!234528 List!45587)) (Broken!38693 (value!234529 List!45587)) (True!15477) (RightBrace!7738) (RightBracket!7738) (Colon!7738) (Null!7738) (Comma!7738) (LeftBracket!7738) (False!15477) (LeftBrace!7738) (ImaginaryLiteralValue!7738 (text!54612 List!45587)) (StringLiteralValue!23214 (value!234530 List!45587)) (EOFValue!7738 (value!234531 List!45587)) (IdentValue!7738 (value!234532 List!45587)) (DelimiterValue!15477 (value!234533 List!45587)) (DedentValue!7738 (value!234534 List!45587)) (NewLineValue!7738 (value!234535 List!45587)) (IntegerValue!23214 (value!234536 (_ BitVec 32)) (text!54613 List!45587)) (IntegerValue!23215 (value!234537 Int) (text!54614 List!45587)) (Times!7738) (Or!7738) (Equal!7738) (Minus!7738) (Broken!38694 (value!234538 List!45587)) (And!7738) (Div!7738) (LessEqual!7738) (Mod!7738) (Concat!20151) (Not!7738) (Plus!7738) (SpaceValue!7738 (value!234539 List!45587)) (IntegerValue!23216 (value!234540 Int) (text!54615 List!45587)) (StringLiteralValue!23215 (text!54616 List!45587)) (FloatLiteralValue!15477 (text!54617 List!45587)) (BytesLiteralValue!7738 (value!234541 List!45587)) (CommentValue!15477 (value!234542 List!45587)) (StringLiteralValue!23216 (value!234543 List!45587)) (ErrorTokenValue!7738 (msg!7799 List!45587)) )
))
(declare-datatypes ((C!25012 0))(
  ( (C!25013 (val!14668 Int)) )
))
(declare-datatypes ((Regex!12413 0))(
  ( (ElementMatch!12413 (c!711912 C!25012)) (Concat!20152 (regOne!25338 Regex!12413) (regTwo!25338 Regex!12413)) (EmptyExpr!12413) (Star!12413 (reg!12742 Regex!12413)) (EmptyLang!12413) (Union!12413 (regOne!25339 Regex!12413) (regTwo!25339 Regex!12413)) )
))
(declare-datatypes ((List!45588 0))(
  ( (Nil!45464) (Cons!45464 (h!50884 C!25012) (t!343619 List!45588)) )
))
(declare-datatypes ((IArray!27443 0))(
  ( (IArray!27444 (innerList!13779 List!45588)) )
))
(declare-datatypes ((Conc!13719 0))(
  ( (Node!13719 (left!33922 Conc!13719) (right!34252 Conc!13719) (csize!27668 Int) (cheight!13930 Int)) (Leaf!21215 (xs!17025 IArray!27443) (csize!27669 Int)) (Empty!13719) )
))
(declare-datatypes ((BalanceConc!27032 0))(
  ( (BalanceConc!27033 (c!711913 Conc!13719)) )
))
(declare-datatypes ((TokenValueInjection!14904 0))(
  ( (TokenValueInjection!14905 (toValue!10172 Int) (toChars!10031 Int)) )
))
(declare-datatypes ((Rule!14816 0))(
  ( (Rule!14817 (regex!7508 Regex!12413) (tag!8372 String!52551) (isSeparator!7508 Bool) (transformation!7508 TokenValueInjection!14904)) )
))
(declare-datatypes ((List!45589 0))(
  ( (Nil!45465) (Cons!45465 (h!50885 Rule!14816) (t!343620 List!45589)) )
))
(declare-fun rules!4132 () List!45589)

(declare-fun noDuplicateTag!3085 (LexerInterface!7099 List!45589 List!45586) Bool)

(assert (=> b!4160695 (= res!1704329 (noDuplicateTag!3085 thiss!27036 rules!4132 acc!617))))

(declare-fun b!4160696 () Bool)

(declare-fun res!1704333 () Bool)

(assert (=> b!4160696 (=> (not res!1704333) (not e!2582521))))

(declare-fun r!4395 () Rule!14816)

(declare-fun contains!9294 (List!45589 Rule!14816) Bool)

(assert (=> b!4160696 (= res!1704333 (contains!9294 rules!4132 r!4395))))

(declare-fun e!2582528 () Bool)

(assert (=> b!4160697 (= e!2582528 (and tp!1269720 tp!1269717))))

(declare-fun b!4160698 () Bool)

(declare-fun res!1704330 () Bool)

(assert (=> b!4160698 (=> (not res!1704330) (not e!2582521))))

(assert (=> b!4160698 (= res!1704330 (and (not ((_ is Nil!45465) rules!4132)) (not (= (h!50885 rules!4132) r!4395))))))

(declare-fun b!4160699 () Bool)

(declare-fun e!2582525 () Bool)

(assert (=> b!4160699 (= e!2582521 e!2582525)))

(declare-fun res!1704331 () Bool)

(assert (=> b!4160699 (=> (not res!1704331) (not e!2582525))))

(declare-fun lt!1482844 () List!45586)

(declare-fun contains!9295 (List!45586 String!52551) Bool)

(assert (=> b!4160699 (= res!1704331 (contains!9295 lt!1482844 tag!272))))

(assert (=> b!4160699 (= lt!1482844 (Cons!45462 (tag!8372 (h!50885 rules!4132)) acc!617))))

(declare-fun b!4160700 () Bool)

(declare-fun tp!1269716 () Bool)

(assert (=> b!4160700 (= e!2582526 (and (inv!59996 (h!50882 acc!617)) tp!1269716))))

(declare-fun e!2582522 () Bool)

(declare-fun b!4160701 () Bool)

(declare-fun tp!1269713 () Bool)

(declare-fun inv!59998 (TokenValueInjection!14904) Bool)

(assert (=> b!4160701 (= e!2582522 (and tp!1269713 (inv!59996 (tag!8372 (h!50885 rules!4132))) (inv!59998 (transformation!7508 (h!50885 rules!4132))) e!2582528))))

(declare-fun e!2582523 () Bool)

(assert (=> b!4160702 (= e!2582523 (and tp!1269719 tp!1269715))))

(declare-fun b!4160703 () Bool)

(declare-fun res!1704328 () Bool)

(assert (=> b!4160703 (=> (not res!1704328) (not e!2582521))))

(assert (=> b!4160703 (= res!1704328 (contains!9295 acc!617 tag!272))))

(declare-fun b!4160704 () Bool)

(declare-fun tp!1269714 () Bool)

(assert (=> b!4160704 (= e!2582520 (and tp!1269714 (inv!59996 (tag!8372 r!4395)) (inv!59998 (transformation!7508 r!4395)) e!2582523))))

(declare-fun b!4160705 () Bool)

(declare-fun tp!1269718 () Bool)

(assert (=> b!4160705 (= e!2582530 (and e!2582522 tp!1269718))))

(declare-fun b!4160706 () Bool)

(assert (=> b!4160706 (= e!2582525 (not (noDuplicateTag!3085 thiss!27036 (t!343620 rules!4132) lt!1482844)))))

(assert (= (and start!396458 res!1704332) b!4160703))

(assert (= (and b!4160703 res!1704328) b!4160695))

(assert (= (and b!4160695 res!1704329) b!4160696))

(assert (= (and b!4160696 res!1704333) b!4160698))

(assert (= (and b!4160698 res!1704330) b!4160699))

(assert (= (and b!4160699 res!1704331) b!4160706))

(assert (= b!4160704 b!4160702))

(assert (= start!396458 b!4160704))

(assert (= (and start!396458 ((_ is Cons!45462) acc!617)) b!4160700))

(assert (= b!4160701 b!4160697))

(assert (= b!4160705 b!4160701))

(assert (= (and start!396458 ((_ is Cons!45465) rules!4132)) b!4160705))

(declare-fun m!4753901 () Bool)

(assert (=> b!4160696 m!4753901))

(declare-fun m!4753903 () Bool)

(assert (=> b!4160704 m!4753903))

(declare-fun m!4753905 () Bool)

(assert (=> b!4160704 m!4753905))

(declare-fun m!4753907 () Bool)

(assert (=> b!4160701 m!4753907))

(declare-fun m!4753909 () Bool)

(assert (=> b!4160701 m!4753909))

(declare-fun m!4753911 () Bool)

(assert (=> b!4160703 m!4753911))

(declare-fun m!4753913 () Bool)

(assert (=> start!396458 m!4753913))

(declare-fun m!4753915 () Bool)

(assert (=> b!4160699 m!4753915))

(declare-fun m!4753917 () Bool)

(assert (=> b!4160700 m!4753917))

(declare-fun m!4753919 () Bool)

(assert (=> b!4160706 m!4753919))

(declare-fun m!4753921 () Bool)

(assert (=> b!4160695 m!4753921))

(check-sat (not start!396458) (not b!4160700) b_and!324109 (not b!4160704) (not b!4160705) b_and!324113 (not b!4160706) (not b!4160703) (not b!4160701) (not b_next!120457) (not b!4160695) (not b!4160699) (not b!4160696) b_and!324111 (not b_next!120455) (not b_next!120451) (not b_next!120453) b_and!324115)
(check-sat b_and!324109 b_and!324113 (not b_next!120457) b_and!324111 (not b_next!120455) (not b_next!120451) (not b_next!120453) b_and!324115)
(get-model)

(declare-fun d!1230094 () Bool)

(declare-fun lt!1482850 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7066 (List!45586) (InoxSet String!52551))

(assert (=> d!1230094 (= lt!1482850 (select (content!7066 lt!1482844) tag!272))))

(declare-fun e!2582542 () Bool)

(assert (=> d!1230094 (= lt!1482850 e!2582542)))

(declare-fun res!1704351 () Bool)

(assert (=> d!1230094 (=> (not res!1704351) (not e!2582542))))

(assert (=> d!1230094 (= res!1704351 ((_ is Cons!45462) lt!1482844))))

(assert (=> d!1230094 (= (contains!9295 lt!1482844 tag!272) lt!1482850)))

(declare-fun b!4160717 () Bool)

(declare-fun e!2582541 () Bool)

(assert (=> b!4160717 (= e!2582542 e!2582541)))

(declare-fun res!1704352 () Bool)

(assert (=> b!4160717 (=> res!1704352 e!2582541)))

(assert (=> b!4160717 (= res!1704352 (= (h!50882 lt!1482844) tag!272))))

(declare-fun b!4160718 () Bool)

(assert (=> b!4160718 (= e!2582541 (contains!9295 (t!343617 lt!1482844) tag!272))))

(assert (= (and d!1230094 res!1704351) b!4160717))

(assert (= (and b!4160717 (not res!1704352)) b!4160718))

(declare-fun m!4753929 () Bool)

(assert (=> d!1230094 m!4753929))

(declare-fun m!4753931 () Bool)

(assert (=> d!1230094 m!4753931))

(declare-fun m!4753933 () Bool)

(assert (=> b!4160718 m!4753933))

(assert (=> b!4160699 d!1230094))

(declare-fun d!1230100 () Bool)

(assert (=> d!1230100 (= (inv!59996 (tag!8372 r!4395)) (= (mod (str.len (value!234518 (tag!8372 r!4395))) 2) 0))))

(assert (=> b!4160704 d!1230100))

(declare-fun d!1230102 () Bool)

(declare-fun res!1704364 () Bool)

(declare-fun e!2582554 () Bool)

(assert (=> d!1230102 (=> (not res!1704364) (not e!2582554))))

(declare-fun semiInverseModEq!3260 (Int Int) Bool)

(assert (=> d!1230102 (= res!1704364 (semiInverseModEq!3260 (toChars!10031 (transformation!7508 r!4395)) (toValue!10172 (transformation!7508 r!4395))))))

(assert (=> d!1230102 (= (inv!59998 (transformation!7508 r!4395)) e!2582554)))

(declare-fun b!4160730 () Bool)

(declare-fun equivClasses!3159 (Int Int) Bool)

(assert (=> b!4160730 (= e!2582554 (equivClasses!3159 (toChars!10031 (transformation!7508 r!4395)) (toValue!10172 (transformation!7508 r!4395))))))

(assert (= (and d!1230102 res!1704364) b!4160730))

(declare-fun m!4753943 () Bool)

(assert (=> d!1230102 m!4753943))

(declare-fun m!4753945 () Bool)

(assert (=> b!4160730 m!4753945))

(assert (=> b!4160704 d!1230102))

(declare-fun d!1230110 () Bool)

(declare-fun res!1704376 () Bool)

(declare-fun e!2582566 () Bool)

(assert (=> d!1230110 (=> res!1704376 e!2582566)))

(assert (=> d!1230110 (= res!1704376 ((_ is Nil!45465) rules!4132))))

(assert (=> d!1230110 (= (noDuplicateTag!3085 thiss!27036 rules!4132 acc!617) e!2582566)))

(declare-fun b!4160742 () Bool)

(declare-fun e!2582567 () Bool)

(assert (=> b!4160742 (= e!2582566 e!2582567)))

(declare-fun res!1704377 () Bool)

(assert (=> b!4160742 (=> (not res!1704377) (not e!2582567))))

(assert (=> b!4160742 (= res!1704377 (not (contains!9295 acc!617 (tag!8372 (h!50885 rules!4132)))))))

(declare-fun b!4160743 () Bool)

(assert (=> b!4160743 (= e!2582567 (noDuplicateTag!3085 thiss!27036 (t!343620 rules!4132) (Cons!45462 (tag!8372 (h!50885 rules!4132)) acc!617)))))

(assert (= (and d!1230110 (not res!1704376)) b!4160742))

(assert (= (and b!4160742 res!1704377) b!4160743))

(declare-fun m!4753955 () Bool)

(assert (=> b!4160742 m!4753955))

(declare-fun m!4753957 () Bool)

(assert (=> b!4160743 m!4753957))

(assert (=> b!4160695 d!1230110))

(declare-fun d!1230118 () Bool)

(assert (=> d!1230118 (= (inv!59996 (h!50882 acc!617)) (= (mod (str.len (value!234518 (h!50882 acc!617))) 2) 0))))

(assert (=> b!4160700 d!1230118))

(declare-fun d!1230120 () Bool)

(assert (=> d!1230120 (= (inv!59996 tag!272) (= (mod (str.len (value!234518 tag!272)) 2) 0))))

(assert (=> start!396458 d!1230120))

(declare-fun d!1230122 () Bool)

(assert (=> d!1230122 (= (inv!59996 (tag!8372 (h!50885 rules!4132))) (= (mod (str.len (value!234518 (tag!8372 (h!50885 rules!4132)))) 2) 0))))

(assert (=> b!4160701 d!1230122))

(declare-fun d!1230124 () Bool)

(declare-fun res!1704378 () Bool)

(declare-fun e!2582568 () Bool)

(assert (=> d!1230124 (=> (not res!1704378) (not e!2582568))))

(assert (=> d!1230124 (= res!1704378 (semiInverseModEq!3260 (toChars!10031 (transformation!7508 (h!50885 rules!4132))) (toValue!10172 (transformation!7508 (h!50885 rules!4132)))))))

(assert (=> d!1230124 (= (inv!59998 (transformation!7508 (h!50885 rules!4132))) e!2582568)))

(declare-fun b!4160744 () Bool)

(assert (=> b!4160744 (= e!2582568 (equivClasses!3159 (toChars!10031 (transformation!7508 (h!50885 rules!4132))) (toValue!10172 (transformation!7508 (h!50885 rules!4132)))))))

(assert (= (and d!1230124 res!1704378) b!4160744))

(declare-fun m!4753959 () Bool)

(assert (=> d!1230124 m!4753959))

(declare-fun m!4753961 () Bool)

(assert (=> b!4160744 m!4753961))

(assert (=> b!4160701 d!1230124))

(declare-fun d!1230126 () Bool)

(declare-fun res!1704381 () Bool)

(declare-fun e!2582571 () Bool)

(assert (=> d!1230126 (=> res!1704381 e!2582571)))

(assert (=> d!1230126 (= res!1704381 ((_ is Nil!45465) (t!343620 rules!4132)))))

(assert (=> d!1230126 (= (noDuplicateTag!3085 thiss!27036 (t!343620 rules!4132) lt!1482844) e!2582571)))

(declare-fun b!4160747 () Bool)

(declare-fun e!2582572 () Bool)

(assert (=> b!4160747 (= e!2582571 e!2582572)))

(declare-fun res!1704382 () Bool)

(assert (=> b!4160747 (=> (not res!1704382) (not e!2582572))))

(assert (=> b!4160747 (= res!1704382 (not (contains!9295 lt!1482844 (tag!8372 (h!50885 (t!343620 rules!4132))))))))

(declare-fun b!4160748 () Bool)

(assert (=> b!4160748 (= e!2582572 (noDuplicateTag!3085 thiss!27036 (t!343620 (t!343620 rules!4132)) (Cons!45462 (tag!8372 (h!50885 (t!343620 rules!4132))) lt!1482844)))))

(assert (= (and d!1230126 (not res!1704381)) b!4160747))

(assert (= (and b!4160747 res!1704382) b!4160748))

(declare-fun m!4753969 () Bool)

(assert (=> b!4160747 m!4753969))

(declare-fun m!4753971 () Bool)

(assert (=> b!4160748 m!4753971))

(assert (=> b!4160706 d!1230126))

(declare-fun d!1230132 () Bool)

(declare-fun lt!1482857 () Bool)

(declare-fun content!7068 (List!45589) (InoxSet Rule!14816))

(assert (=> d!1230132 (= lt!1482857 (select (content!7068 rules!4132) r!4395))))

(declare-fun e!2582590 () Bool)

(assert (=> d!1230132 (= lt!1482857 e!2582590)))

(declare-fun res!1704389 () Bool)

(assert (=> d!1230132 (=> (not res!1704389) (not e!2582590))))

(assert (=> d!1230132 (= res!1704389 ((_ is Cons!45465) rules!4132))))

(assert (=> d!1230132 (= (contains!9294 rules!4132 r!4395) lt!1482857)))

(declare-fun b!4160777 () Bool)

(declare-fun e!2582591 () Bool)

(assert (=> b!4160777 (= e!2582590 e!2582591)))

(declare-fun res!1704390 () Bool)

(assert (=> b!4160777 (=> res!1704390 e!2582591)))

(assert (=> b!4160777 (= res!1704390 (= (h!50885 rules!4132) r!4395))))

(declare-fun b!4160778 () Bool)

(assert (=> b!4160778 (= e!2582591 (contains!9294 (t!343620 rules!4132) r!4395))))

(assert (= (and d!1230132 res!1704389) b!4160777))

(assert (= (and b!4160777 (not res!1704390)) b!4160778))

(declare-fun m!4753979 () Bool)

(assert (=> d!1230132 m!4753979))

(declare-fun m!4753981 () Bool)

(assert (=> d!1230132 m!4753981))

(declare-fun m!4753983 () Bool)

(assert (=> b!4160778 m!4753983))

(assert (=> b!4160696 d!1230132))

(declare-fun d!1230134 () Bool)

(declare-fun lt!1482858 () Bool)

(assert (=> d!1230134 (= lt!1482858 (select (content!7066 acc!617) tag!272))))

(declare-fun e!2582593 () Bool)

(assert (=> d!1230134 (= lt!1482858 e!2582593)))

(declare-fun res!1704391 () Bool)

(assert (=> d!1230134 (=> (not res!1704391) (not e!2582593))))

(assert (=> d!1230134 (= res!1704391 ((_ is Cons!45462) acc!617))))

(assert (=> d!1230134 (= (contains!9295 acc!617 tag!272) lt!1482858)))

(declare-fun b!4160779 () Bool)

(declare-fun e!2582592 () Bool)

(assert (=> b!4160779 (= e!2582593 e!2582592)))

(declare-fun res!1704392 () Bool)

(assert (=> b!4160779 (=> res!1704392 e!2582592)))

(assert (=> b!4160779 (= res!1704392 (= (h!50882 acc!617) tag!272))))

(declare-fun b!4160780 () Bool)

(assert (=> b!4160780 (= e!2582592 (contains!9295 (t!343617 acc!617) tag!272))))

(assert (= (and d!1230134 res!1704391) b!4160779))

(assert (= (and b!4160779 (not res!1704392)) b!4160780))

(declare-fun m!4753985 () Bool)

(assert (=> d!1230134 m!4753985))

(declare-fun m!4753987 () Bool)

(assert (=> d!1230134 m!4753987))

(declare-fun m!4753989 () Bool)

(assert (=> b!4160780 m!4753989))

(assert (=> b!4160703 d!1230134))

(declare-fun b!4160803 () Bool)

(declare-fun e!2582605 () Bool)

(declare-fun tp!1269765 () Bool)

(declare-fun tp!1269769 () Bool)

(assert (=> b!4160803 (= e!2582605 (and tp!1269765 tp!1269769))))

(declare-fun b!4160802 () Bool)

(declare-fun tp_is_empty!21793 () Bool)

(assert (=> b!4160802 (= e!2582605 tp_is_empty!21793)))

(assert (=> b!4160704 (= tp!1269714 e!2582605)))

(declare-fun b!4160805 () Bool)

(declare-fun tp!1269768 () Bool)

(declare-fun tp!1269766 () Bool)

(assert (=> b!4160805 (= e!2582605 (and tp!1269768 tp!1269766))))

(declare-fun b!4160804 () Bool)

(declare-fun tp!1269767 () Bool)

(assert (=> b!4160804 (= e!2582605 tp!1269767)))

(assert (= (and b!4160704 ((_ is ElementMatch!12413) (regex!7508 r!4395))) b!4160802))

(assert (= (and b!4160704 ((_ is Concat!20152) (regex!7508 r!4395))) b!4160803))

(assert (= (and b!4160704 ((_ is Star!12413) (regex!7508 r!4395))) b!4160804))

(assert (= (and b!4160704 ((_ is Union!12413) (regex!7508 r!4395))) b!4160805))

(declare-fun b!4160817 () Bool)

(declare-fun b_free!119759 () Bool)

(declare-fun b_next!120463 () Bool)

(assert (=> b!4160817 (= b_free!119759 (not b_next!120463))))

(declare-fun tp!1269782 () Bool)

(declare-fun b_and!324121 () Bool)

(assert (=> b!4160817 (= tp!1269782 b_and!324121)))

(declare-fun b_free!119761 () Bool)

(declare-fun b_next!120465 () Bool)

(assert (=> b!4160817 (= b_free!119761 (not b_next!120465))))

(declare-fun tp!1269781 () Bool)

(declare-fun b_and!324123 () Bool)

(assert (=> b!4160817 (= tp!1269781 b_and!324123)))

(declare-fun e!2582616 () Bool)

(assert (=> b!4160817 (= e!2582616 (and tp!1269782 tp!1269781))))

(declare-fun b!4160816 () Bool)

(declare-fun tp!1269779 () Bool)

(declare-fun e!2582619 () Bool)

(assert (=> b!4160816 (= e!2582619 (and tp!1269779 (inv!59996 (tag!8372 (h!50885 (t!343620 rules!4132)))) (inv!59998 (transformation!7508 (h!50885 (t!343620 rules!4132)))) e!2582616))))

(declare-fun b!4160815 () Bool)

(declare-fun e!2582617 () Bool)

(declare-fun tp!1269780 () Bool)

(assert (=> b!4160815 (= e!2582617 (and e!2582619 tp!1269780))))

(assert (=> b!4160705 (= tp!1269718 e!2582617)))

(assert (= b!4160816 b!4160817))

(assert (= b!4160815 b!4160816))

(assert (= (and b!4160705 ((_ is Cons!45465) (t!343620 rules!4132))) b!4160815))

(declare-fun m!4753997 () Bool)

(assert (=> b!4160816 m!4753997))

(declare-fun m!4753999 () Bool)

(assert (=> b!4160816 m!4753999))

(declare-fun b!4160822 () Bool)

(declare-fun e!2582624 () Bool)

(declare-fun tp!1269785 () Bool)

(assert (=> b!4160822 (= e!2582624 (and (inv!59996 (h!50882 (t!343617 acc!617))) tp!1269785))))

(assert (=> b!4160700 (= tp!1269716 e!2582624)))

(assert (= (and b!4160700 ((_ is Cons!45462) (t!343617 acc!617))) b!4160822))

(declare-fun m!4754001 () Bool)

(assert (=> b!4160822 m!4754001))

(declare-fun b!4160824 () Bool)

(declare-fun e!2582626 () Bool)

(declare-fun tp!1269786 () Bool)

(declare-fun tp!1269790 () Bool)

(assert (=> b!4160824 (= e!2582626 (and tp!1269786 tp!1269790))))

(declare-fun b!4160823 () Bool)

(assert (=> b!4160823 (= e!2582626 tp_is_empty!21793)))

(assert (=> b!4160701 (= tp!1269713 e!2582626)))

(declare-fun b!4160826 () Bool)

(declare-fun tp!1269789 () Bool)

(declare-fun tp!1269787 () Bool)

(assert (=> b!4160826 (= e!2582626 (and tp!1269789 tp!1269787))))

(declare-fun b!4160825 () Bool)

(declare-fun tp!1269788 () Bool)

(assert (=> b!4160825 (= e!2582626 tp!1269788)))

(assert (= (and b!4160701 ((_ is ElementMatch!12413) (regex!7508 (h!50885 rules!4132)))) b!4160823))

(assert (= (and b!4160701 ((_ is Concat!20152) (regex!7508 (h!50885 rules!4132)))) b!4160824))

(assert (= (and b!4160701 ((_ is Star!12413) (regex!7508 (h!50885 rules!4132)))) b!4160825))

(assert (= (and b!4160701 ((_ is Union!12413) (regex!7508 (h!50885 rules!4132)))) b!4160826))

(check-sat (not b!4160747) (not b!4160816) b_and!324109 (not b!4160744) (not b!4160718) (not d!1230094) (not b!4160804) (not b!4160743) (not b!4160780) b_and!324111 (not b!4160742) (not b!4160826) (not d!1230132) (not b_next!120453) b_and!324115 (not d!1230124) (not b_next!120465) (not b!4160805) (not b!4160730) b_and!324123 b_and!324113 (not d!1230134) (not b!4160825) b_and!324121 (not b_next!120457) (not d!1230102) (not b!4160803) (not b_next!120463) (not b!4160778) tp_is_empty!21793 (not b!4160815) (not b_next!120455) (not b!4160748) (not b!4160822) (not b_next!120451) (not b!4160824))
(check-sat b_and!324109 (not b_next!120465) b_and!324123 b_and!324113 (not b_next!120463) b_and!324111 (not b_next!120455) (not b_next!120451) (not b_next!120453) b_and!324115 b_and!324121 (not b_next!120457))
