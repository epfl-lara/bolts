; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!216312 () Bool)

(assert start!216312)

(assert (=> start!216312 true))

(declare-fun b!2218854 () Bool)

(assert (=> b!2218854 true))

(assert (=> b!2218854 true))

(declare-fun b!2218861 () Bool)

(declare-fun e!1416955 () Bool)

(declare-datatypes ((List!26073 0))(
  ( (Nil!25989) (Cons!25989 (h!31390 (_ BitVec 16)) (t!199407 List!26073)) )
))
(declare-datatypes ((IArray!16989 0))(
  ( (IArray!16990 (innerList!8552 List!26073)) )
))
(declare-datatypes ((Conc!8492 0))(
  ( (Node!8492 (left!19966 Conc!8492) (right!20296 Conc!8492) (csize!17214 Int) (cheight!8703 Int)) (Leaf!12453 (xs!11434 IArray!16989) (csize!17215 Int)) (Empty!8492) )
))
(declare-datatypes ((BalanceConc!16702 0))(
  ( (BalanceConc!16703 (c!354294 Conc!8492)) )
))
(declare-fun x!427408 () BalanceConc!16702)

(declare-fun tp!691199 () Bool)

(declare-fun inv!35231 (Conc!8492) Bool)

(assert (=> b!2218861 (= e!1416955 (and (inv!35231 (c!354294 x!427408)) tp!691199))))

(declare-fun inst!1214 () Bool)

(declare-datatypes ((IntegerValueInjection!96 0))(
  ( (IntegerValueInjection!97) )
))
(declare-fun thiss!4894 () IntegerValueInjection!96)

(declare-fun inv!35232 (BalanceConc!16702) Bool)

(declare-fun list!10071 (BalanceConc!16702) List!26073)

(declare-datatypes ((TokenValue!4326 0))(
  ( (FloatLiteralValue!8652 (text!30727 List!26073)) (TokenValueExt!4325 (__x!17103 Int)) (Broken!21630 (value!132158 List!26073)) (Object!4409) (End!4326) (Def!4326) (Underscore!4326) (Match!4326) (Else!4326) (Error!4326) (Case!4326) (If!4326) (Extends!4326) (Abstract!4326) (Class!4326) (Val!4326) (DelimiterValue!8652 (del!4386 List!26073)) (KeywordValue!4332 (value!132159 List!26073)) (CommentValue!8652 (value!132160 List!26073)) (WhitespaceValue!8652 (value!132161 List!26073)) (IndentationValue!4326 (value!132162 List!26073)) (String!28355) (Int32!4326) (Broken!21631 (value!132163 List!26073)) (Boolean!4327) (Unit!38954) (OperatorValue!4329 (op!4386 List!26073)) (IdentifierValue!8652 (value!132164 List!26073)) (IdentifierValue!8653 (value!132165 List!26073)) (WhitespaceValue!8653 (value!132166 List!26073)) (True!8652) (False!8652) (Broken!21632 (value!132167 List!26073)) (Broken!21633 (value!132168 List!26073)) (True!8653) (RightBrace!4326) (RightBracket!4326) (Colon!4326) (Null!4326) (Comma!4326) (LeftBracket!4326) (False!8653) (LeftBrace!4326) (ImaginaryLiteralValue!4326 (text!30728 List!26073)) (StringLiteralValue!12978 (value!132169 List!26073)) (EOFValue!4326 (value!132170 List!26073)) (IdentValue!4326 (value!132171 List!26073)) (DelimiterValue!8653 (value!132172 List!26073)) (DedentValue!4326 (value!132173 List!26073)) (NewLineValue!4326 (value!132174 List!26073)) (IntegerValue!12978 (value!132175 (_ BitVec 32)) (text!30729 List!26073)) (IntegerValue!12979 (value!132176 Int) (text!30730 List!26073)) (Times!4326) (Or!4326) (Equal!4326) (Minus!4326) (Broken!21634 (value!132177 List!26073)) (And!4326) (Div!4326) (LessEqual!4326) (Mod!4326) (Concat!10658) (Not!4326) (Plus!4326) (SpaceValue!4326 (value!132178 List!26073)) (IntegerValue!12980 (value!132179 Int) (text!30731 List!26073)) (StringLiteralValue!12979 (text!30732 List!26073)) (FloatLiteralValue!8653 (text!30733 List!26073)) (BytesLiteralValue!4326 (value!132180 List!26073)) (CommentValue!8653 (value!132181 List!26073)) (StringLiteralValue!12980 (value!132182 List!26073)) (ErrorTokenValue!4326 (msg!4387 List!26073)) )
))
(declare-fun toCharacters!24 (IntegerValueInjection!96 TokenValue!4326) BalanceConc!16702)

(declare-fun toValue!31 (IntegerValueInjection!96 BalanceConc!16702) TokenValue!4326)

(assert (=> start!216312 (= inst!1214 (=> (and (inv!35232 x!427408) e!1416955) (= (list!10071 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427408))) (list!10071 x!427408))))))

(assert (= start!216312 b!2218861))

(declare-fun m!2659643 () Bool)

(assert (=> b!2218861 m!2659643))

(declare-fun m!2659645 () Bool)

(assert (=> start!216312 m!2659645))

(declare-fun m!2659647 () Bool)

(assert (=> start!216312 m!2659647))

(declare-fun m!2659649 () Bool)

(assert (=> start!216312 m!2659649))

(declare-fun m!2659651 () Bool)

(assert (=> start!216312 m!2659651))

(assert (=> start!216312 m!2659651))

(assert (=> start!216312 m!2659647))

(declare-fun m!2659653 () Bool)

(assert (=> start!216312 m!2659653))

(declare-fun bs!451795 () Bool)

(declare-fun neg-inst!1214 () Bool)

(declare-fun s!223725 () Bool)

(assert (= bs!451795 (and neg-inst!1214 s!223725)))

(assert (=> bs!451795 (=> true (= (list!10071 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427408))) (list!10071 x!427408)))))

(assert (=> m!2659653 m!2659651))

(assert (=> m!2659653 m!2659647))

(assert (=> m!2659653 m!2659649))

(assert (=> m!2659653 s!223725))

(assert (=> m!2659651 s!223725))

(declare-fun bs!451796 () Bool)

(assert (= bs!451796 (and neg-inst!1214 start!216312)))

(assert (=> bs!451796 (= true inst!1214)))

(declare-fun res!952864 () Bool)

(declare-fun e!1416954 () Bool)

(assert (=> start!216312 (=> res!952864 e!1416954)))

(declare-fun lambda!83554 () Int)

(declare-fun Forall!1042 (Int) Bool)

(assert (=> start!216312 (= res!952864 (not (Forall!1042 lambda!83554)))))

(assert (=> start!216312 (= (Forall!1042 lambda!83554) inst!1214)))

(assert (=> start!216312 (not e!1416954)))

(assert (=> start!216312 true))

(declare-fun lambda!83555 () Int)

(declare-fun lambda!83556 () Int)

(declare-fun semiInverseModEq!1675 (Int Int) Bool)

(assert (=> b!2218854 (= e!1416954 (semiInverseModEq!1675 lambda!83555 lambda!83556))))

(assert (=> b!2218854 (= (semiInverseModEq!1675 lambda!83555 lambda!83556) (Forall!1042 lambda!83554))))

(assert (= neg-inst!1214 inst!1214))

(assert (= (and start!216312 (not res!952864)) b!2218854))

(declare-fun m!2659655 () Bool)

(assert (=> start!216312 m!2659655))

(assert (=> start!216312 m!2659655))

(declare-fun m!2659657 () Bool)

(assert (=> b!2218854 m!2659657))

(assert (=> b!2218854 m!2659657))

(assert (=> b!2218854 m!2659655))

(push 1)

(assert (not b!2218861))

(assert (not bs!451795))

(assert (not start!216312))

(assert (not b!2218854))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

