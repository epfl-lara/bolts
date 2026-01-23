; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!110984 () Bool)

(assert start!110984)

(assert (=> start!110984 true))

(declare-fun b!1257581 () Bool)

(assert (=> b!1257581 true))

(assert (=> b!1257581 true))

(declare-fun b!1257588 () Bool)

(declare-fun e!800446 () Bool)

(declare-datatypes ((List!12642 0))(
  ( (Nil!12576) (Cons!12576 (h!17977 (_ BitVec 16)) (t!115794 List!12642)) )
))
(declare-datatypes ((IArray!8257 0))(
  ( (IArray!8258 (innerList!4186 List!12642)) )
))
(declare-datatypes ((Conc!4126 0))(
  ( (Node!4126 (left!10879 Conc!4126) (right!11209 Conc!4126) (csize!8482 Int) (cheight!4337 Int)) (Leaf!6398 (xs!6837 IArray!8257) (csize!8483 Int)) (Empty!4126) )
))
(declare-datatypes ((BalanceConc!8192 0))(
  ( (BalanceConc!8193 (c!208835 Conc!4126)) )
))
(declare-fun x!244263 () BalanceConc!8192)

(declare-fun tp!370647 () Bool)

(declare-fun inv!16947 (Conc!4126) Bool)

(assert (=> b!1257588 (= e!800446 (and (inv!16947 (c!208835 x!244263)) tp!370647))))

(declare-fun inst!908 () Bool)

(declare-datatypes ((KeywordValueInjection!126 0))(
  ( (KeywordValueInjection!127) )
))
(declare-fun thiss!4594 () KeywordValueInjection!126)

(declare-fun inv!16948 (BalanceConc!8192) Bool)

(declare-fun list!4689 (BalanceConc!8192) List!12642)

(declare-datatypes ((TokenValue!2242 0))(
  ( (FloatLiteralValue!4484 (text!16139 List!12642)) (TokenValueExt!2241 (__x!8209 Int)) (Broken!11210 (value!70649 List!12642)) (Object!2307) (End!2242) (Def!2242) (Underscore!2242) (Match!2242) (Else!2242) (Error!2242) (Case!2242) (If!2242) (Extends!2242) (Abstract!2242) (Class!2242) (Val!2242) (DelimiterValue!4484 (del!2302 List!12642)) (KeywordValue!2248 (value!70650 List!12642)) (CommentValue!4484 (value!70651 List!12642)) (WhitespaceValue!4484 (value!70652 List!12642)) (IndentationValue!2242 (value!70653 List!12642)) (String!15463) (Int32!2242) (Broken!11211 (value!70654 List!12642)) (Boolean!2243) (Unit!18862) (OperatorValue!2245 (op!2302 List!12642)) (IdentifierValue!4484 (value!70655 List!12642)) (IdentifierValue!4485 (value!70656 List!12642)) (WhitespaceValue!4485 (value!70657 List!12642)) (True!4484) (False!4484) (Broken!11212 (value!70658 List!12642)) (Broken!11213 (value!70659 List!12642)) (True!4485) (RightBrace!2242) (RightBracket!2242) (Colon!2242) (Null!2242) (Comma!2242) (LeftBracket!2242) (False!4485) (LeftBrace!2242) (ImaginaryLiteralValue!2242 (text!16140 List!12642)) (StringLiteralValue!6726 (value!70660 List!12642)) (EOFValue!2242 (value!70661 List!12642)) (IdentValue!2242 (value!70662 List!12642)) (DelimiterValue!4485 (value!70663 List!12642)) (DedentValue!2242 (value!70664 List!12642)) (NewLineValue!2242 (value!70665 List!12642)) (IntegerValue!6726 (value!70666 (_ BitVec 32)) (text!16141 List!12642)) (IntegerValue!6727 (value!70667 Int) (text!16142 List!12642)) (Times!2242) (Or!2242) (Equal!2242) (Minus!2242) (Broken!11214 (value!70668 List!12642)) (And!2242) (Div!2242) (LessEqual!2242) (Mod!2242) (Concat!5716) (Not!2242) (Plus!2242) (SpaceValue!2242 (value!70669 List!12642)) (IntegerValue!6728 (value!70670 Int) (text!16143 List!12642)) (StringLiteralValue!6727 (text!16144 List!12642)) (FloatLiteralValue!4485 (text!16145 List!12642)) (BytesLiteralValue!2242 (value!70671 List!12642)) (CommentValue!4485 (value!70672 List!12642)) (StringLiteralValue!6728 (value!70673 List!12642)) (ErrorTokenValue!2242 (msg!2303 List!12642)) )
))
(declare-fun toCharacters!20 (KeywordValueInjection!126 TokenValue!2242) BalanceConc!8192)

(declare-fun toValue!27 (KeywordValueInjection!126 BalanceConc!8192) TokenValue!2242)

(assert (=> start!110984 (= inst!908 (=> (and (inv!16948 x!244263) e!800446) (= (list!4689 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244263))) (list!4689 x!244263))))))

(assert (= start!110984 b!1257588))

(declare-fun m!1415775 () Bool)

(assert (=> b!1257588 m!1415775))

(declare-fun m!1415777 () Bool)

(assert (=> start!110984 m!1415777))

(declare-fun m!1415779 () Bool)

(assert (=> start!110984 m!1415779))

(declare-fun m!1415781 () Bool)

(assert (=> start!110984 m!1415781))

(assert (=> start!110984 m!1415777))

(assert (=> start!110984 m!1415779))

(declare-fun m!1415783 () Bool)

(assert (=> start!110984 m!1415783))

(declare-fun m!1415785 () Bool)

(assert (=> start!110984 m!1415785))

(declare-fun bs!290425 () Bool)

(declare-fun neg-inst!908 () Bool)

(declare-fun s!183487 () Bool)

(assert (= bs!290425 (and neg-inst!908 s!183487)))

(assert (=> bs!290425 (=> true (= (list!4689 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244263))) (list!4689 x!244263)))))

(assert (=> m!1415777 m!1415779))

(assert (=> m!1415777 m!1415783))

(assert (=> m!1415777 m!1415781))

(assert (=> m!1415777 s!183487))

(assert (=> m!1415781 s!183487))

(declare-fun bs!290426 () Bool)

(assert (= bs!290426 (and neg-inst!908 start!110984)))

(assert (=> bs!290426 (= true inst!908)))

(declare-fun res!556737 () Bool)

(declare-fun e!800445 () Bool)

(assert (=> start!110984 (=> res!556737 e!800445)))

(declare-fun lambda!49577 () Int)

(declare-fun Forall!475 (Int) Bool)

(assert (=> start!110984 (= res!556737 (not (Forall!475 lambda!49577)))))

(assert (=> start!110984 (= (Forall!475 lambda!49577) inst!908)))

(assert (=> start!110984 (not e!800445)))

(assert (=> start!110984 true))

(declare-fun lambda!49578 () Int)

(declare-fun lambda!49579 () Int)

(declare-fun semiInverseModEq!807 (Int Int) Bool)

(assert (=> b!1257581 (= e!800445 (semiInverseModEq!807 lambda!49578 lambda!49579))))

(assert (=> b!1257581 (= (semiInverseModEq!807 lambda!49578 lambda!49579) (Forall!475 lambda!49577))))

(assert (= neg-inst!908 inst!908))

(assert (= (and start!110984 (not res!556737)) b!1257581))

(declare-fun m!1415787 () Bool)

(assert (=> start!110984 m!1415787))

(assert (=> start!110984 m!1415787))

(declare-fun m!1415789 () Bool)

(assert (=> b!1257581 m!1415789))

(assert (=> b!1257581 m!1415789))

(assert (=> b!1257581 m!1415787))

(push 1)

(assert (not bs!290425))

(assert (not b!1257588))

(assert (not start!110984))

(assert (not b!1257581))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

