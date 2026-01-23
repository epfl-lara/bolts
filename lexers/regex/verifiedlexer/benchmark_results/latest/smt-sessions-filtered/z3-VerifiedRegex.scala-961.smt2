; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48720 () Bool)

(assert start!48720)

(declare-fun b!530433 () Bool)

(declare-fun b_free!14233 () Bool)

(declare-fun b_next!14249 () Bool)

(assert (=> b!530433 (= b_free!14233 (not b_next!14249))))

(declare-fun tp!169012 () Bool)

(declare-fun b_and!51779 () Bool)

(assert (=> b!530433 (= tp!169012 b_and!51779)))

(declare-fun b_free!14235 () Bool)

(declare-fun b_next!14251 () Bool)

(assert (=> b!530433 (= b_free!14235 (not b_next!14251))))

(declare-fun tp!169018 () Bool)

(declare-fun b_and!51781 () Bool)

(assert (=> b!530433 (= tp!169018 b_and!51781)))

(declare-fun b!530443 () Bool)

(declare-fun b_free!14237 () Bool)

(declare-fun b_next!14253 () Bool)

(assert (=> b!530443 (= b_free!14237 (not b_next!14253))))

(declare-fun tp!169015 () Bool)

(declare-fun b_and!51783 () Bool)

(assert (=> b!530443 (= tp!169015 b_and!51783)))

(declare-fun b_free!14239 () Bool)

(declare-fun b_next!14255 () Bool)

(assert (=> b!530443 (= b_free!14239 (not b_next!14255))))

(declare-fun tp!169009 () Bool)

(declare-fun b_and!51785 () Bool)

(assert (=> b!530443 (= tp!169009 b_and!51785)))

(declare-fun b!530429 () Bool)

(declare-fun res!223966 () Bool)

(declare-fun e!319225 () Bool)

(assert (=> b!530429 (=> (not res!223966) (not e!319225))))

(declare-datatypes ((LexerInterface!795 0))(
  ( (LexerInterfaceExt!792 (__x!3764 Int)) (Lexer!793) )
))
(declare-fun thiss!22590 () LexerInterface!795)

(declare-datatypes ((C!3408 0))(
  ( (C!3409 (val!1930 Int)) )
))
(declare-datatypes ((Regex!1243 0))(
  ( (ElementMatch!1243 (c!101356 C!3408)) (Concat!2176 (regOne!2998 Regex!1243) (regTwo!2998 Regex!1243)) (EmptyExpr!1243) (Star!1243 (reg!1572 Regex!1243)) (EmptyLang!1243) (Union!1243 (regOne!2999 Regex!1243) (regTwo!2999 Regex!1243)) )
))
(declare-datatypes ((String!6408 0))(
  ( (String!6409 (value!30747 String)) )
))
(declare-datatypes ((List!5049 0))(
  ( (Nil!5039) (Cons!5039 (h!10440 (_ BitVec 16)) (t!73712 List!5049)) )
))
(declare-datatypes ((TokenValue!933 0))(
  ( (FloatLiteralValue!1866 (text!6976 List!5049)) (TokenValueExt!932 (__x!3765 Int)) (Broken!4665 (value!30748 List!5049)) (Object!942) (End!933) (Def!933) (Underscore!933) (Match!933) (Else!933) (Error!933) (Case!933) (If!933) (Extends!933) (Abstract!933) (Class!933) (Val!933) (DelimiterValue!1866 (del!993 List!5049)) (KeywordValue!939 (value!30749 List!5049)) (CommentValue!1866 (value!30750 List!5049)) (WhitespaceValue!1866 (value!30751 List!5049)) (IndentationValue!933 (value!30752 List!5049)) (String!6410) (Int32!933) (Broken!4666 (value!30753 List!5049)) (Boolean!934) (Unit!8836) (OperatorValue!936 (op!993 List!5049)) (IdentifierValue!1866 (value!30754 List!5049)) (IdentifierValue!1867 (value!30755 List!5049)) (WhitespaceValue!1867 (value!30756 List!5049)) (True!1866) (False!1866) (Broken!4667 (value!30757 List!5049)) (Broken!4668 (value!30758 List!5049)) (True!1867) (RightBrace!933) (RightBracket!933) (Colon!933) (Null!933) (Comma!933) (LeftBracket!933) (False!1867) (LeftBrace!933) (ImaginaryLiteralValue!933 (text!6977 List!5049)) (StringLiteralValue!2799 (value!30759 List!5049)) (EOFValue!933 (value!30760 List!5049)) (IdentValue!933 (value!30761 List!5049)) (DelimiterValue!1867 (value!30762 List!5049)) (DedentValue!933 (value!30763 List!5049)) (NewLineValue!933 (value!30764 List!5049)) (IntegerValue!2799 (value!30765 (_ BitVec 32)) (text!6978 List!5049)) (IntegerValue!2800 (value!30766 Int) (text!6979 List!5049)) (Times!933) (Or!933) (Equal!933) (Minus!933) (Broken!4669 (value!30767 List!5049)) (And!933) (Div!933) (LessEqual!933) (Mod!933) (Concat!2177) (Not!933) (Plus!933) (SpaceValue!933 (value!30768 List!5049)) (IntegerValue!2801 (value!30769 Int) (text!6980 List!5049)) (StringLiteralValue!2800 (text!6981 List!5049)) (FloatLiteralValue!1867 (text!6982 List!5049)) (BytesLiteralValue!933 (value!30770 List!5049)) (CommentValue!1867 (value!30771 List!5049)) (StringLiteralValue!2801 (value!30772 List!5049)) (ErrorTokenValue!933 (msg!994 List!5049)) )
))
(declare-datatypes ((List!5050 0))(
  ( (Nil!5040) (Cons!5040 (h!10441 C!3408) (t!73713 List!5050)) )
))
(declare-datatypes ((IArray!3253 0))(
  ( (IArray!3254 (innerList!1684 List!5050)) )
))
(declare-datatypes ((Conc!1626 0))(
  ( (Node!1626 (left!4265 Conc!1626) (right!4595 Conc!1626) (csize!3482 Int) (cheight!1837 Int)) (Leaf!2588 (xs!4263 IArray!3253) (csize!3483 Int)) (Empty!1626) )
))
(declare-datatypes ((BalanceConc!3260 0))(
  ( (BalanceConc!3261 (c!101357 Conc!1626)) )
))
(declare-datatypes ((TokenValueInjection!1634 0))(
  ( (TokenValueInjection!1635 (toValue!1752 Int) (toChars!1611 Int)) )
))
(declare-datatypes ((Rule!1618 0))(
  ( (Rule!1619 (regex!909 Regex!1243) (tag!1171 String!6408) (isSeparator!909 Bool) (transformation!909 TokenValueInjection!1634)) )
))
(declare-datatypes ((List!5051 0))(
  ( (Nil!5041) (Cons!5041 (h!10442 Rule!1618) (t!73714 List!5051)) )
))
(declare-fun rules!3103 () List!5051)

(declare-fun rulesInvariant!758 (LexerInterface!795 List!5051) Bool)

(assert (=> b!530429 (= res!223966 (rulesInvariant!758 thiss!22590 rules!3103))))

(declare-fun b!530430 () Bool)

(declare-fun e!319226 () Bool)

(assert (=> b!530430 (= e!319225 e!319226)))

(declare-fun res!223962 () Bool)

(assert (=> b!530430 (=> (not res!223962) (not e!319226))))

(declare-datatypes ((Token!1554 0))(
  ( (Token!1555 (value!30773 TokenValue!933) (rule!1609 Rule!1618) (size!4093 Int) (originalCharacters!948 List!5050)) )
))
(declare-datatypes ((tuple2!6172 0))(
  ( (tuple2!6173 (_1!3350 Token!1554) (_2!3350 List!5050)) )
))
(declare-datatypes ((Option!1259 0))(
  ( (None!1258) (Some!1258 (v!16063 tuple2!6172)) )
))
(declare-fun lt!218487 () Option!1259)

(declare-fun isDefined!1071 (Option!1259) Bool)

(assert (=> b!530430 (= res!223962 (isDefined!1071 lt!218487))))

(declare-fun suffix!1342 () List!5050)

(declare-fun input!2705 () List!5050)

(declare-fun maxPrefix!493 (LexerInterface!795 List!5051 List!5050) Option!1259)

(declare-fun ++!1397 (List!5050 List!5050) List!5050)

(assert (=> b!530430 (= lt!218487 (maxPrefix!493 thiss!22590 rules!3103 (++!1397 input!2705 suffix!1342)))))

(declare-fun e!319224 () Bool)

(declare-fun e!319220 () Bool)

(declare-fun b!530431 () Bool)

(declare-fun tp!169014 () Bool)

(declare-fun inv!6320 (String!6408) Bool)

(declare-fun inv!6323 (TokenValueInjection!1634) Bool)

(assert (=> b!530431 (= e!319224 (and tp!169014 (inv!6320 (tag!1171 (h!10442 rules!3103))) (inv!6323 (transformation!909 (h!10442 rules!3103))) e!319220))))

(declare-fun b!530432 () Bool)

(declare-fun e!319221 () Bool)

(declare-fun tp_is_empty!2841 () Bool)

(declare-fun tp!169011 () Bool)

(assert (=> b!530432 (= e!319221 (and tp_is_empty!2841 tp!169011))))

(declare-fun e!319230 () Bool)

(assert (=> b!530433 (= e!319230 (and tp!169012 tp!169018))))

(declare-fun b!530435 () Bool)

(declare-fun res!223963 () Bool)

(assert (=> b!530435 (=> (not res!223963) (not e!319225))))

(declare-fun token!491 () Token!1554)

(declare-fun list!2097 (BalanceConc!3260) List!5050)

(declare-fun charsOf!538 (Token!1554) BalanceConc!3260)

(assert (=> b!530435 (= res!223963 (= (list!2097 (charsOf!538 token!491)) input!2705))))

(declare-fun tp!169010 () Bool)

(declare-fun b!530436 () Bool)

(declare-fun e!319229 () Bool)

(assert (=> b!530436 (= e!319229 (and tp!169010 (inv!6320 (tag!1171 (rule!1609 token!491))) (inv!6323 (transformation!909 (rule!1609 token!491))) e!319230))))

(declare-fun b!530437 () Bool)

(declare-fun res!223967 () Bool)

(assert (=> b!530437 (=> (not res!223967) (not e!319225))))

(declare-fun isEmpty!3648 (List!5050) Bool)

(assert (=> b!530437 (= res!223967 (not (isEmpty!3648 input!2705)))))

(declare-fun b!530438 () Bool)

(declare-fun tp!169016 () Bool)

(declare-fun e!319222 () Bool)

(declare-fun inv!21 (TokenValue!933) Bool)

(assert (=> b!530438 (= e!319222 (and (inv!21 (value!30773 token!491)) e!319229 tp!169016))))

(declare-fun b!530439 () Bool)

(declare-fun e!319223 () Bool)

(declare-fun tp!169013 () Bool)

(assert (=> b!530439 (= e!319223 (and e!319224 tp!169013))))

(declare-fun b!530440 () Bool)

(declare-fun res!223961 () Bool)

(assert (=> b!530440 (=> (not res!223961) (not e!319226))))

(declare-fun get!1878 (Option!1259) tuple2!6172)

(assert (=> b!530440 (= res!223961 (= (_1!3350 (get!1878 lt!218487)) token!491))))

(declare-fun b!530441 () Bool)

(declare-fun res!223964 () Bool)

(assert (=> b!530441 (=> (not res!223964) (not e!319225))))

(declare-fun isEmpty!3649 (List!5051) Bool)

(assert (=> b!530441 (= res!223964 (not (isEmpty!3649 rules!3103)))))

(declare-fun res!223965 () Bool)

(assert (=> start!48720 (=> (not res!223965) (not e!319225))))

(get-info :version)

(assert (=> start!48720 (= res!223965 ((_ is Lexer!793) thiss!22590))))

(assert (=> start!48720 e!319225))

(declare-fun e!319218 () Bool)

(assert (=> start!48720 e!319218))

(assert (=> start!48720 e!319223))

(declare-fun inv!6324 (Token!1554) Bool)

(assert (=> start!48720 (and (inv!6324 token!491) e!319222)))

(assert (=> start!48720 true))

(assert (=> start!48720 e!319221))

(declare-fun b!530434 () Bool)

(declare-fun tp!169017 () Bool)

(assert (=> b!530434 (= e!319218 (and tp_is_empty!2841 tp!169017))))

(declare-fun b!530442 () Bool)

(assert (=> b!530442 (= e!319226 false)))

(declare-fun lt!218486 () Bool)

(declare-fun rulesValidInductive!310 (LexerInterface!795 List!5051) Bool)

(assert (=> b!530442 (= lt!218486 (rulesValidInductive!310 thiss!22590 rules!3103))))

(assert (=> b!530443 (= e!319220 (and tp!169015 tp!169009))))

(assert (= (and start!48720 res!223965) b!530441))

(assert (= (and b!530441 res!223964) b!530429))

(assert (= (and b!530429 res!223966) b!530437))

(assert (= (and b!530437 res!223967) b!530435))

(assert (= (and b!530435 res!223963) b!530430))

(assert (= (and b!530430 res!223962) b!530440))

(assert (= (and b!530440 res!223961) b!530442))

(assert (= (and start!48720 ((_ is Cons!5040) suffix!1342)) b!530434))

(assert (= b!530431 b!530443))

(assert (= b!530439 b!530431))

(assert (= (and start!48720 ((_ is Cons!5041) rules!3103)) b!530439))

(assert (= b!530436 b!530433))

(assert (= b!530438 b!530436))

(assert (= start!48720 b!530438))

(assert (= (and start!48720 ((_ is Cons!5040) input!2705)) b!530432))

(declare-fun m!775691 () Bool)

(assert (=> b!530431 m!775691))

(declare-fun m!775693 () Bool)

(assert (=> b!530431 m!775693))

(declare-fun m!775695 () Bool)

(assert (=> b!530440 m!775695))

(declare-fun m!775697 () Bool)

(assert (=> b!530436 m!775697))

(declare-fun m!775699 () Bool)

(assert (=> b!530436 m!775699))

(declare-fun m!775701 () Bool)

(assert (=> b!530429 m!775701))

(declare-fun m!775703 () Bool)

(assert (=> b!530437 m!775703))

(declare-fun m!775705 () Bool)

(assert (=> b!530435 m!775705))

(assert (=> b!530435 m!775705))

(declare-fun m!775707 () Bool)

(assert (=> b!530435 m!775707))

(declare-fun m!775709 () Bool)

(assert (=> start!48720 m!775709))

(declare-fun m!775711 () Bool)

(assert (=> b!530442 m!775711))

(declare-fun m!775713 () Bool)

(assert (=> b!530441 m!775713))

(declare-fun m!775715 () Bool)

(assert (=> b!530430 m!775715))

(declare-fun m!775717 () Bool)

(assert (=> b!530430 m!775717))

(assert (=> b!530430 m!775717))

(declare-fun m!775719 () Bool)

(assert (=> b!530430 m!775719))

(declare-fun m!775721 () Bool)

(assert (=> b!530438 m!775721))

(check-sat (not b!530439) (not b_next!14251) (not b!530437) (not b!530441) (not b_next!14255) tp_is_empty!2841 (not b!530436) (not b!530440) b_and!51781 b_and!51783 (not b!530438) (not b!530442) b_and!51785 (not b!530435) (not start!48720) (not b_next!14253) b_and!51779 (not b!530429) (not b!530432) (not b!530434) (not b!530431) (not b!530430) (not b_next!14249))
(check-sat (not b_next!14251) (not b_next!14255) b_and!51781 (not b_next!14253) b_and!51783 b_and!51779 b_and!51785 (not b_next!14249))
