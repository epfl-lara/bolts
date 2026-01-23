; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396350 () Bool)

(assert start!396350)

(declare-fun b!4159866 () Bool)

(declare-fun b_free!119623 () Bool)

(declare-fun b_next!120327 () Bool)

(assert (=> b!4159866 (= b_free!119623 (not b_next!120327))))

(declare-fun tp!1269149 () Bool)

(declare-fun b_and!323985 () Bool)

(assert (=> b!4159866 (= tp!1269149 b_and!323985)))

(declare-fun b_free!119625 () Bool)

(declare-fun b_next!120329 () Bool)

(assert (=> b!4159866 (= b_free!119625 (not b_next!120329))))

(declare-fun tp!1269152 () Bool)

(declare-fun b_and!323987 () Bool)

(assert (=> b!4159866 (= tp!1269152 b_and!323987)))

(declare-fun b!4159861 () Bool)

(declare-fun b_free!119627 () Bool)

(declare-fun b_next!120331 () Bool)

(assert (=> b!4159861 (= b_free!119627 (not b_next!120331))))

(declare-fun tp!1269150 () Bool)

(declare-fun b_and!323989 () Bool)

(assert (=> b!4159861 (= tp!1269150 b_and!323989)))

(declare-fun b_free!119629 () Bool)

(declare-fun b_next!120333 () Bool)

(assert (=> b!4159861 (= b_free!119629 (not b_next!120333))))

(declare-fun tp!1269146 () Bool)

(declare-fun b_and!323991 () Bool)

(assert (=> b!4159861 (= tp!1269146 b_and!323991)))

(declare-fun b!4159858 () Bool)

(declare-fun e!2581763 () Bool)

(declare-datatypes ((String!52491 0))(
  ( (String!52492 (value!234188 String)) )
))
(declare-datatypes ((List!45538 0))(
  ( (Nil!45414) (Cons!45414 (h!50834 String!52491) (t!343569 List!45538)) )
))
(declare-fun acc!617 () List!45538)

(declare-fun tp!1269151 () Bool)

(declare-fun inv!59966 (String!52491) Bool)

(assert (=> b!4159858 (= e!2581763 (and (inv!59966 (h!50834 acc!617)) tp!1269151))))

(declare-fun e!2581756 () Bool)

(declare-fun e!2581755 () Bool)

(declare-datatypes ((List!45539 0))(
  ( (Nil!45415) (Cons!45415 (h!50835 (_ BitVec 16)) (t!343570 List!45539)) )
))
(declare-datatypes ((TokenValue!7726 0))(
  ( (FloatLiteralValue!15452 (text!54527 List!45539)) (TokenValueExt!7725 (__x!27671 Int)) (Broken!38630 (value!234189 List!45539)) (Object!7849) (End!7726) (Def!7726) (Underscore!7726) (Match!7726) (Else!7726) (Error!7726) (Case!7726) (If!7726) (Extends!7726) (Abstract!7726) (Class!7726) (Val!7726) (DelimiterValue!15452 (del!7786 List!45539)) (KeywordValue!7732 (value!234190 List!45539)) (CommentValue!15452 (value!234191 List!45539)) (WhitespaceValue!15452 (value!234192 List!45539)) (IndentationValue!7726 (value!234193 List!45539)) (String!52493) (Int32!7726) (Broken!38631 (value!234194 List!45539)) (Boolean!7727) (Unit!64572) (OperatorValue!7729 (op!7786 List!45539)) (IdentifierValue!15452 (value!234195 List!45539)) (IdentifierValue!15453 (value!234196 List!45539)) (WhitespaceValue!15453 (value!234197 List!45539)) (True!15452) (False!15452) (Broken!38632 (value!234198 List!45539)) (Broken!38633 (value!234199 List!45539)) (True!15453) (RightBrace!7726) (RightBracket!7726) (Colon!7726) (Null!7726) (Comma!7726) (LeftBracket!7726) (False!15453) (LeftBrace!7726) (ImaginaryLiteralValue!7726 (text!54528 List!45539)) (StringLiteralValue!23178 (value!234200 List!45539)) (EOFValue!7726 (value!234201 List!45539)) (IdentValue!7726 (value!234202 List!45539)) (DelimiterValue!15453 (value!234203 List!45539)) (DedentValue!7726 (value!234204 List!45539)) (NewLineValue!7726 (value!234205 List!45539)) (IntegerValue!23178 (value!234206 (_ BitVec 32)) (text!54529 List!45539)) (IntegerValue!23179 (value!234207 Int) (text!54530 List!45539)) (Times!7726) (Or!7726) (Equal!7726) (Minus!7726) (Broken!38634 (value!234208 List!45539)) (And!7726) (Div!7726) (LessEqual!7726) (Mod!7726) (Concat!20127) (Not!7726) (Plus!7726) (SpaceValue!7726 (value!234209 List!45539)) (IntegerValue!23180 (value!234210 Int) (text!54531 List!45539)) (StringLiteralValue!23179 (text!54532 List!45539)) (FloatLiteralValue!15453 (text!54533 List!45539)) (BytesLiteralValue!7726 (value!234211 List!45539)) (CommentValue!15453 (value!234212 List!45539)) (StringLiteralValue!23180 (value!234213 List!45539)) (ErrorTokenValue!7726 (msg!7787 List!45539)) )
))
(declare-datatypes ((C!24988 0))(
  ( (C!24989 (val!14656 Int)) )
))
(declare-datatypes ((List!45540 0))(
  ( (Nil!45416) (Cons!45416 (h!50836 C!24988) (t!343571 List!45540)) )
))
(declare-datatypes ((IArray!27419 0))(
  ( (IArray!27420 (innerList!13767 List!45540)) )
))
(declare-datatypes ((Conc!13707 0))(
  ( (Node!13707 (left!33904 Conc!13707) (right!34234 Conc!13707) (csize!27644 Int) (cheight!13918 Int)) (Leaf!21197 (xs!17013 IArray!27419) (csize!27645 Int)) (Empty!13707) )
))
(declare-datatypes ((BalanceConc!27008 0))(
  ( (BalanceConc!27009 (c!711882 Conc!13707)) )
))
(declare-datatypes ((TokenValueInjection!14880 0))(
  ( (TokenValueInjection!14881 (toValue!10160 Int) (toChars!10019 Int)) )
))
(declare-datatypes ((Regex!12401 0))(
  ( (ElementMatch!12401 (c!711883 C!24988)) (Concat!20128 (regOne!25314 Regex!12401) (regTwo!25314 Regex!12401)) (EmptyExpr!12401) (Star!12401 (reg!12730 Regex!12401)) (EmptyLang!12401) (Union!12401 (regOne!25315 Regex!12401) (regTwo!25315 Regex!12401)) )
))
(declare-datatypes ((Rule!14792 0))(
  ( (Rule!14793 (regex!7496 Regex!12401) (tag!8360 String!52491) (isSeparator!7496 Bool) (transformation!7496 TokenValueInjection!14880)) )
))
(declare-fun r!4395 () Rule!14792)

(declare-fun b!4159859 () Bool)

(declare-fun tp!1269145 () Bool)

(declare-fun inv!59968 (TokenValueInjection!14880) Bool)

(assert (=> b!4159859 (= e!2581756 (and tp!1269145 (inv!59966 (tag!8360 r!4395)) (inv!59968 (transformation!7496 r!4395)) e!2581755))))

(declare-fun b!4159860 () Bool)

(declare-fun res!1703976 () Bool)

(declare-fun e!2581758 () Bool)

(assert (=> b!4159860 (=> (not res!1703976) (not e!2581758))))

(declare-datatypes ((List!45541 0))(
  ( (Nil!45417) (Cons!45417 (h!50837 Rule!14792) (t!343572 List!45541)) )
))
(declare-fun rules!4132 () List!45541)

(declare-fun contains!9270 (List!45541 Rule!14792) Bool)

(assert (=> b!4159860 (= res!1703976 (contains!9270 rules!4132 r!4395))))

(assert (=> b!4159861 (= e!2581755 (and tp!1269150 tp!1269146))))

(declare-fun b!4159863 () Bool)

(declare-fun res!1703978 () Bool)

(assert (=> b!4159863 (=> (not res!1703978) (not e!2581758))))

(get-info :version)

(assert (=> b!4159863 (= res!1703978 (and (not ((_ is Nil!45417) rules!4132)) (not (= (h!50837 rules!4132) r!4395))))))

(declare-fun b!4159864 () Bool)

(declare-fun e!2581759 () Bool)

(declare-fun e!2581757 () Bool)

(declare-fun tp!1269147 () Bool)

(assert (=> b!4159864 (= e!2581759 (and e!2581757 tp!1269147))))

(declare-fun b!4159865 () Bool)

(declare-fun res!1703972 () Bool)

(assert (=> b!4159865 (=> (not res!1703972) (not e!2581758))))

(declare-datatypes ((LexerInterface!7087 0))(
  ( (LexerInterfaceExt!7084 (__x!27672 Int)) (Lexer!7085) )
))
(declare-fun thiss!27036 () LexerInterface!7087)

(declare-fun noDuplicateTag!3073 (LexerInterface!7087 List!45541 List!45538) Bool)

(assert (=> b!4159865 (= res!1703972 (noDuplicateTag!3073 thiss!27036 rules!4132 acc!617))))

(declare-fun e!2581765 () Bool)

(assert (=> b!4159866 (= e!2581765 (and tp!1269149 tp!1269152))))

(declare-fun b!4159867 () Bool)

(declare-fun res!1703974 () Bool)

(assert (=> b!4159867 (=> (not res!1703974) (not e!2581758))))

(declare-fun tag!272 () String!52491)

(declare-fun contains!9271 (List!45538 String!52491) Bool)

(assert (=> b!4159867 (= res!1703974 (contains!9271 acc!617 tag!272))))

(declare-fun b!4159868 () Bool)

(declare-fun e!2581766 () Bool)

(assert (=> b!4159868 (= e!2581766 false)))

(declare-fun lt!1482776 () Bool)

(assert (=> b!4159868 (= lt!1482776 (contains!9270 (t!343572 rules!4132) r!4395))))

(declare-fun res!1703973 () Bool)

(assert (=> start!396350 (=> (not res!1703973) (not e!2581758))))

(assert (=> start!396350 (= res!1703973 ((_ is Lexer!7085) thiss!27036))))

(assert (=> start!396350 e!2581758))

(assert (=> start!396350 e!2581763))

(assert (=> start!396350 (inv!59966 tag!272)))

(assert (=> start!396350 e!2581756))

(assert (=> start!396350 true))

(assert (=> start!396350 e!2581759))

(declare-fun b!4159862 () Bool)

(declare-fun res!1703975 () Bool)

(assert (=> b!4159862 (=> (not res!1703975) (not e!2581766))))

(declare-fun lt!1482775 () List!45538)

(assert (=> b!4159862 (= res!1703975 (noDuplicateTag!3073 thiss!27036 (t!343572 rules!4132) lt!1482775))))

(declare-fun tp!1269148 () Bool)

(declare-fun b!4159869 () Bool)

(assert (=> b!4159869 (= e!2581757 (and tp!1269148 (inv!59966 (tag!8360 (h!50837 rules!4132))) (inv!59968 (transformation!7496 (h!50837 rules!4132))) e!2581765))))

(declare-fun b!4159870 () Bool)

(assert (=> b!4159870 (= e!2581758 e!2581766)))

(declare-fun res!1703977 () Bool)

(assert (=> b!4159870 (=> (not res!1703977) (not e!2581766))))

(assert (=> b!4159870 (= res!1703977 (contains!9271 lt!1482775 tag!272))))

(assert (=> b!4159870 (= lt!1482775 (Cons!45414 (tag!8360 (h!50837 rules!4132)) acc!617))))

(assert (= (and start!396350 res!1703973) b!4159867))

(assert (= (and b!4159867 res!1703974) b!4159865))

(assert (= (and b!4159865 res!1703972) b!4159860))

(assert (= (and b!4159860 res!1703976) b!4159863))

(assert (= (and b!4159863 res!1703978) b!4159870))

(assert (= (and b!4159870 res!1703977) b!4159862))

(assert (= (and b!4159862 res!1703975) b!4159868))

(assert (= (and start!396350 ((_ is Cons!45414) acc!617)) b!4159858))

(assert (= b!4159859 b!4159861))

(assert (= start!396350 b!4159859))

(assert (= b!4159869 b!4159866))

(assert (= b!4159864 b!4159869))

(assert (= (and start!396350 ((_ is Cons!45417) rules!4132)) b!4159864))

(declare-fun m!4753417 () Bool)

(assert (=> b!4159860 m!4753417))

(declare-fun m!4753419 () Bool)

(assert (=> start!396350 m!4753419))

(declare-fun m!4753421 () Bool)

(assert (=> b!4159859 m!4753421))

(declare-fun m!4753423 () Bool)

(assert (=> b!4159859 m!4753423))

(declare-fun m!4753425 () Bool)

(assert (=> b!4159868 m!4753425))

(declare-fun m!4753427 () Bool)

(assert (=> b!4159862 m!4753427))

(declare-fun m!4753429 () Bool)

(assert (=> b!4159867 m!4753429))

(declare-fun m!4753431 () Bool)

(assert (=> b!4159865 m!4753431))

(declare-fun m!4753433 () Bool)

(assert (=> b!4159858 m!4753433))

(declare-fun m!4753435 () Bool)

(assert (=> b!4159870 m!4753435))

(declare-fun m!4753437 () Bool)

(assert (=> b!4159869 m!4753437))

(declare-fun m!4753439 () Bool)

(assert (=> b!4159869 m!4753439))

(check-sat b_and!323989 (not b_next!120327) b_and!323987 b_and!323991 (not b!4159860) (not b!4159862) (not b_next!120331) (not b!4159858) (not b!4159868) (not b_next!120333) (not b!4159865) (not b_next!120329) (not b!4159869) (not b!4159867) (not start!396350) (not b!4159864) (not b!4159870) b_and!323985 (not b!4159859))
(check-sat b_and!323989 (not b_next!120327) b_and!323987 b_and!323991 (not b_next!120333) (not b_next!120329) (not b_next!120331) b_and!323985)
