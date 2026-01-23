; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!401190 () Bool)

(assert start!401190)

(declare-fun b!4199670 () Bool)

(declare-fun b_free!122459 () Bool)

(declare-fun b_next!123163 () Bool)

(assert (=> b!4199670 (= b_free!122459 (not b_next!123163))))

(declare-fun tp!1282847 () Bool)

(declare-fun b_and!329513 () Bool)

(assert (=> b!4199670 (= tp!1282847 b_and!329513)))

(declare-fun b_free!122461 () Bool)

(declare-fun b_next!123165 () Bool)

(assert (=> b!4199670 (= b_free!122461 (not b_next!123165))))

(declare-fun tp!1282844 () Bool)

(declare-fun b_and!329515 () Bool)

(assert (=> b!4199670 (= tp!1282844 b_and!329515)))

(declare-fun b!4199674 () Bool)

(declare-fun b_free!122463 () Bool)

(declare-fun b_next!123167 () Bool)

(assert (=> b!4199674 (= b_free!122463 (not b_next!123167))))

(declare-fun tp!1282850 () Bool)

(declare-fun b_and!329517 () Bool)

(assert (=> b!4199674 (= tp!1282850 b_and!329517)))

(declare-fun b_free!122465 () Bool)

(declare-fun b_next!123169 () Bool)

(assert (=> b!4199674 (= b_free!122465 (not b_next!123169))))

(declare-fun tp!1282852 () Bool)

(declare-fun b_and!329519 () Bool)

(assert (=> b!4199674 (= tp!1282852 b_and!329519)))

(declare-fun e!2606903 () Bool)

(assert (=> b!4199670 (= e!2606903 (and tp!1282847 tp!1282844))))

(declare-fun b!4199671 () Bool)

(declare-fun e!2606895 () Bool)

(declare-fun tp_is_empty!22181 () Bool)

(declare-fun tp!1282853 () Bool)

(assert (=> b!4199671 (= e!2606895 (and tp_is_empty!22181 tp!1282853))))

(declare-fun res!1724693 () Bool)

(declare-fun e!2606897 () Bool)

(assert (=> start!401190 (=> (not res!1724693) (not e!2606897))))

(declare-datatypes ((LexerInterface!7297 0))(
  ( (LexerInterfaceExt!7294 (__x!28087 Int)) (Lexer!7295) )
))
(declare-fun thiss!26544 () LexerInterface!7297)

(get-info :version)

(assert (=> start!401190 (= res!1724693 ((_ is Lexer!7295) thiss!26544))))

(assert (=> start!401190 e!2606897))

(assert (=> start!401190 true))

(declare-fun e!2606904 () Bool)

(assert (=> start!401190 e!2606904))

(assert (=> start!401190 e!2606895))

(declare-fun e!2606906 () Bool)

(assert (=> start!401190 e!2606906))

(declare-fun e!2606899 () Bool)

(assert (=> start!401190 e!2606899))

(declare-fun e!2606902 () Bool)

(assert (=> start!401190 e!2606902))

(declare-fun e!2606898 () Bool)

(assert (=> start!401190 e!2606898))

(declare-fun tp!1282851 () Bool)

(declare-datatypes ((List!46261 0))(
  ( (Nil!46137) (Cons!46137 (h!51557 (_ BitVec 16)) (t!346766 List!46261)) )
))
(declare-datatypes ((TokenValue!7932 0))(
  ( (FloatLiteralValue!15864 (text!55969 List!46261)) (TokenValueExt!7931 (__x!28088 Int)) (Broken!39660 (value!240015 List!46261)) (Object!8055) (End!7932) (Def!7932) (Underscore!7932) (Match!7932) (Else!7932) (Error!7932) (Case!7932) (If!7932) (Extends!7932) (Abstract!7932) (Class!7932) (Val!7932) (DelimiterValue!15864 (del!7992 List!46261)) (KeywordValue!7938 (value!240016 List!46261)) (CommentValue!15864 (value!240017 List!46261)) (WhitespaceValue!15864 (value!240018 List!46261)) (IndentationValue!7932 (value!240019 List!46261)) (String!53529) (Int32!7932) (Broken!39661 (value!240020 List!46261)) (Boolean!7933) (Unit!65246) (OperatorValue!7935 (op!7992 List!46261)) (IdentifierValue!15864 (value!240021 List!46261)) (IdentifierValue!15865 (value!240022 List!46261)) (WhitespaceValue!15865 (value!240023 List!46261)) (True!15864) (False!15864) (Broken!39662 (value!240024 List!46261)) (Broken!39663 (value!240025 List!46261)) (True!15865) (RightBrace!7932) (RightBracket!7932) (Colon!7932) (Null!7932) (Comma!7932) (LeftBracket!7932) (False!15865) (LeftBrace!7932) (ImaginaryLiteralValue!7932 (text!55970 List!46261)) (StringLiteralValue!23796 (value!240026 List!46261)) (EOFValue!7932 (value!240027 List!46261)) (IdentValue!7932 (value!240028 List!46261)) (DelimiterValue!15865 (value!240029 List!46261)) (DedentValue!7932 (value!240030 List!46261)) (NewLineValue!7932 (value!240031 List!46261)) (IntegerValue!23796 (value!240032 (_ BitVec 32)) (text!55971 List!46261)) (IntegerValue!23797 (value!240033 Int) (text!55972 List!46261)) (Times!7932) (Or!7932) (Equal!7932) (Minus!7932) (Broken!39664 (value!240034 List!46261)) (And!7932) (Div!7932) (LessEqual!7932) (Mod!7932) (Concat!20539) (Not!7932) (Plus!7932) (SpaceValue!7932 (value!240035 List!46261)) (IntegerValue!23798 (value!240036 Int) (text!55973 List!46261)) (StringLiteralValue!23797 (text!55974 List!46261)) (FloatLiteralValue!15865 (text!55975 List!46261)) (BytesLiteralValue!7932 (value!240037 List!46261)) (CommentValue!15865 (value!240038 List!46261)) (StringLiteralValue!23798 (value!240039 List!46261)) (ErrorTokenValue!7932 (msg!7993 List!46261)) )
))
(declare-datatypes ((C!25408 0))(
  ( (C!25409 (val!14866 Int)) )
))
(declare-datatypes ((List!46262 0))(
  ( (Nil!46138) (Cons!46138 (h!51558 C!25408) (t!346767 List!46262)) )
))
(declare-datatypes ((IArray!27831 0))(
  ( (IArray!27832 (innerList!13973 List!46262)) )
))
(declare-datatypes ((Regex!12607 0))(
  ( (ElementMatch!12607 (c!716152 C!25408)) (Concat!20540 (regOne!25726 Regex!12607) (regTwo!25726 Regex!12607)) (EmptyExpr!12607) (Star!12607 (reg!12936 Regex!12607)) (EmptyLang!12607) (Union!12607 (regOne!25727 Regex!12607) (regTwo!25727 Regex!12607)) )
))
(declare-datatypes ((String!53530 0))(
  ( (String!53531 (value!240040 String)) )
))
(declare-datatypes ((Conc!13913 0))(
  ( (Node!13913 (left!34371 Conc!13913) (right!34701 Conc!13913) (csize!28056 Int) (cheight!14124 Int)) (Leaf!21508 (xs!17219 IArray!27831) (csize!28057 Int)) (Empty!13913) )
))
(declare-datatypes ((BalanceConc!27420 0))(
  ( (BalanceConc!27421 (c!716153 Conc!13913)) )
))
(declare-datatypes ((TokenValueInjection!15292 0))(
  ( (TokenValueInjection!15293 (toValue!10402 Int) (toChars!10261 Int)) )
))
(declare-datatypes ((Rule!15204 0))(
  ( (Rule!15205 (regex!7702 Regex!12607) (tag!8566 String!53530) (isSeparator!7702 Bool) (transformation!7702 TokenValueInjection!15292)) )
))
(declare-datatypes ((List!46263 0))(
  ( (Nil!46139) (Cons!46139 (h!51559 Rule!15204) (t!346768 List!46263)) )
))
(declare-fun rules!3967 () List!46263)

(declare-fun e!2606905 () Bool)

(declare-fun b!4199672 () Bool)

(declare-fun e!2606901 () Bool)

(declare-fun inv!60696 (String!53530) Bool)

(declare-fun inv!60698 (TokenValueInjection!15292) Bool)

(assert (=> b!4199672 (= e!2606901 (and tp!1282851 (inv!60696 (tag!8566 (h!51559 rules!3967))) (inv!60698 (transformation!7702 (h!51559 rules!3967))) e!2606905))))

(declare-fun b!4199673 () Bool)

(declare-fun tp!1282845 () Bool)

(assert (=> b!4199673 (= e!2606898 (and tp_is_empty!22181 tp!1282845))))

(assert (=> b!4199674 (= e!2606905 (and tp!1282850 tp!1282852))))

(declare-fun b!4199675 () Bool)

(assert (=> b!4199675 (= e!2606897 false)))

(declare-fun lt!1496232 () Bool)

(declare-fun rBis!178 () Rule!15204)

(declare-fun contains!9513 (List!46263 Rule!15204) Bool)

(assert (=> b!4199675 (= lt!1496232 (contains!9513 rules!3967 rBis!178))))

(declare-fun b!4199676 () Bool)

(declare-fun tp!1282846 () Bool)

(assert (=> b!4199676 (= e!2606902 (and tp_is_empty!22181 tp!1282846))))

(declare-fun b!4199677 () Bool)

(declare-fun res!1724694 () Bool)

(assert (=> b!4199677 (=> (not res!1724694) (not e!2606897))))

(declare-fun p!3001 () List!46262)

(declare-fun input!3517 () List!46262)

(declare-fun suffix!1557 () List!46262)

(declare-fun ++!11776 (List!46262 List!46262) List!46262)

(assert (=> b!4199677 (= res!1724694 (= (++!11776 p!3001 suffix!1557) input!3517))))

(declare-fun b!4199678 () Bool)

(declare-fun tp!1282849 () Bool)

(assert (=> b!4199678 (= e!2606899 (and tp_is_empty!22181 tp!1282849))))

(declare-fun b!4199679 () Bool)

(declare-fun res!1724695 () Bool)

(assert (=> b!4199679 (=> (not res!1724695) (not e!2606897))))

(declare-fun isPrefix!4561 (List!46262 List!46262) Bool)

(assert (=> b!4199679 (= res!1724695 (isPrefix!4561 p!3001 input!3517))))

(declare-fun b!4199680 () Bool)

(declare-fun tp!1282854 () Bool)

(assert (=> b!4199680 (= e!2606904 (and tp!1282854 (inv!60696 (tag!8566 rBis!178)) (inv!60698 (transformation!7702 rBis!178)) e!2606903))))

(declare-fun b!4199681 () Bool)

(declare-fun res!1724698 () Bool)

(assert (=> b!4199681 (=> (not res!1724698) (not e!2606897))))

(declare-fun rulesInvariant!6508 (LexerInterface!7297 List!46263) Bool)

(assert (=> b!4199681 (= res!1724698 (rulesInvariant!6508 thiss!26544 rules!3967))))

(declare-fun b!4199682 () Bool)

(declare-fun res!1724696 () Bool)

(assert (=> b!4199682 (=> (not res!1724696) (not e!2606897))))

(declare-fun pBis!121 () List!46262)

(assert (=> b!4199682 (= res!1724696 (isPrefix!4561 pBis!121 input!3517))))

(declare-fun b!4199683 () Bool)

(declare-fun res!1724697 () Bool)

(assert (=> b!4199683 (=> (not res!1724697) (not e!2606897))))

(declare-fun isEmpty!27327 (List!46263) Bool)

(assert (=> b!4199683 (= res!1724697 (not (isEmpty!27327 rules!3967)))))

(declare-fun b!4199684 () Bool)

(declare-fun tp!1282848 () Bool)

(assert (=> b!4199684 (= e!2606906 (and e!2606901 tp!1282848))))

(assert (= (and start!401190 res!1724693) b!4199677))

(assert (= (and b!4199677 res!1724694) b!4199679))

(assert (= (and b!4199679 res!1724695) b!4199682))

(assert (= (and b!4199682 res!1724696) b!4199683))

(assert (= (and b!4199683 res!1724697) b!4199681))

(assert (= (and b!4199681 res!1724698) b!4199675))

(assert (= b!4199680 b!4199670))

(assert (= start!401190 b!4199680))

(assert (= (and start!401190 ((_ is Cons!46138) p!3001)) b!4199671))

(assert (= b!4199672 b!4199674))

(assert (= b!4199684 b!4199672))

(assert (= (and start!401190 ((_ is Cons!46139) rules!3967)) b!4199684))

(assert (= (and start!401190 ((_ is Cons!46138) input!3517)) b!4199678))

(assert (= (and start!401190 ((_ is Cons!46138) pBis!121)) b!4199676))

(assert (= (and start!401190 ((_ is Cons!46138) suffix!1557)) b!4199673))

(declare-fun m!4788375 () Bool)

(assert (=> b!4199677 m!4788375))

(declare-fun m!4788377 () Bool)

(assert (=> b!4199681 m!4788377))

(declare-fun m!4788379 () Bool)

(assert (=> b!4199682 m!4788379))

(declare-fun m!4788381 () Bool)

(assert (=> b!4199675 m!4788381))

(declare-fun m!4788383 () Bool)

(assert (=> b!4199672 m!4788383))

(declare-fun m!4788385 () Bool)

(assert (=> b!4199672 m!4788385))

(declare-fun m!4788387 () Bool)

(assert (=> b!4199679 m!4788387))

(declare-fun m!4788389 () Bool)

(assert (=> b!4199683 m!4788389))

(declare-fun m!4788391 () Bool)

(assert (=> b!4199680 m!4788391))

(declare-fun m!4788393 () Bool)

(assert (=> b!4199680 m!4788393))

(check-sat (not b!4199681) (not b!4199678) (not b_next!123165) b_and!329519 (not b!4199683) (not b!4199679) (not b!4199682) (not b!4199672) b_and!329517 (not b!4199684) (not b!4199676) (not b_next!123163) b_and!329513 (not b_next!123169) b_and!329515 (not b!4199675) (not b!4199677) (not b!4199673) tp_is_empty!22181 (not b!4199671) (not b!4199680) (not b_next!123167))
(check-sat (not b_next!123165) b_and!329519 (not b_next!123167) b_and!329517 (not b_next!123163) b_and!329513 (not b_next!123169) b_and!329515)
