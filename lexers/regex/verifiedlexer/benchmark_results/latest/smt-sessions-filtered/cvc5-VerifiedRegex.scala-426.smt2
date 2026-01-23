; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!12660 () Bool)

(assert start!12660)

(assert (=> start!12660 true))

(declare-fun b!124727 () Bool)

(assert (=> b!124727 true))

(assert (=> b!124727 true))

(declare-fun b!124734 () Bool)

(declare-fun e!71740 () Bool)

(declare-datatypes ((List!2040 0))(
  ( (Nil!2034) (Cons!2034 (h!7431 (_ BitVec 16)) (t!22535 List!2040)) )
))
(declare-datatypes ((IArray!1129 0))(
  ( (IArray!1130 (innerList!622 List!2040)) )
))
(declare-datatypes ((Conc!564 0))(
  ( (Node!564 (left!1612 Conc!564) (right!1942 Conc!564) (csize!1358 Int) (cheight!775 Int)) (Leaf!991 (xs!3159 IArray!1129) (csize!1359 Int)) (Empty!564) )
))
(declare-datatypes ((BalanceConc!1132 0))(
  ( (BalanceConc!1133 (c!27528 Conc!564)) )
))
(declare-fun x!33137 () BalanceConc!1132)

(declare-fun tp!68250 () Bool)

(declare-fun inv!2578 (Conc!564) Bool)

(assert (=> b!124734 (= e!71740 (and (inv!2578 (c!27528 x!33137)) tp!68250))))

(declare-datatypes ((DedentValueInjection!8 0))(
  ( (DedentValueInjection!9) )
))
(declare-fun thiss!4219 () DedentValueInjection!8)

(declare-fun inst!152 () Bool)

(declare-fun inv!2579 (BalanceConc!1132) Bool)

(declare-fun list!778 (BalanceConc!1132) List!2040)

(declare-datatypes ((TokenValue!386 0))(
  ( (FloatLiteralValue!772 (text!3147 List!2040)) (TokenValueExt!385 (__x!2217 Int)) (Broken!1930 (value!14384 List!2040)) (Object!391) (End!386) (Def!386) (Underscore!386) (Match!386) (Else!386) (Error!386) (Case!386) (If!386) (Extends!386) (Abstract!386) (Class!386) (Val!386) (DelimiterValue!772 (del!446 List!2040)) (KeywordValue!392 (value!14385 List!2040)) (CommentValue!772 (value!14386 List!2040)) (WhitespaceValue!772 (value!14387 List!2040)) (IndentationValue!386 (value!14388 List!2040)) (String!2651) (Int32!386) (Broken!1931 (value!14389 List!2040)) (Boolean!387) (Unit!1597) (OperatorValue!389 (op!446 List!2040)) (IdentifierValue!772 (value!14390 List!2040)) (IdentifierValue!773 (value!14391 List!2040)) (WhitespaceValue!773 (value!14392 List!2040)) (True!772) (False!772) (Broken!1932 (value!14393 List!2040)) (Broken!1933 (value!14394 List!2040)) (True!773) (RightBrace!386) (RightBracket!386) (Colon!386) (Null!386) (Comma!386) (LeftBracket!386) (False!773) (LeftBrace!386) (ImaginaryLiteralValue!386 (text!3148 List!2040)) (StringLiteralValue!1158 (value!14395 List!2040)) (EOFValue!386 (value!14396 List!2040)) (IdentValue!386 (value!14397 List!2040)) (DelimiterValue!773 (value!14398 List!2040)) (DedentValue!386 (value!14399 List!2040)) (NewLineValue!386 (value!14400 List!2040)) (IntegerValue!1158 (value!14401 (_ BitVec 32)) (text!3149 List!2040)) (IntegerValue!1159 (value!14402 Int) (text!3150 List!2040)) (Times!386) (Or!386) (Equal!386) (Minus!386) (Broken!1934 (value!14403 List!2040)) (And!386) (Div!386) (LessEqual!386) (Mod!386) (Concat!950) (Not!386) (Plus!386) (SpaceValue!386 (value!14404 List!2040)) (IntegerValue!1160 (value!14405 Int) (text!3151 List!2040)) (StringLiteralValue!1159 (text!3152 List!2040)) (FloatLiteralValue!773 (text!3153 List!2040)) (BytesLiteralValue!386 (value!14406 List!2040)) (CommentValue!773 (value!14407 List!2040)) (StringLiteralValue!1160 (value!14408 List!2040)) (ErrorTokenValue!386 (msg!447 List!2040)) )
))
(declare-fun toCharacters!15 (DedentValueInjection!8 TokenValue!386) BalanceConc!1132)

(declare-fun toValue!22 (DedentValueInjection!8 BalanceConc!1132) TokenValue!386)

(assert (=> start!12660 (= inst!152 (=> (and (inv!2579 x!33137) e!71740) (= (list!778 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33137))) (list!778 x!33137))))))

(assert (= start!12660 b!124734))

(declare-fun m!110365 () Bool)

(assert (=> b!124734 m!110365))

(declare-fun m!110367 () Bool)

(assert (=> start!12660 m!110367))

(declare-fun m!110369 () Bool)

(assert (=> start!12660 m!110369))

(declare-fun m!110371 () Bool)

(assert (=> start!12660 m!110371))

(declare-fun m!110373 () Bool)

(assert (=> start!12660 m!110373))

(declare-fun m!110375 () Bool)

(assert (=> start!12660 m!110375))

(assert (=> start!12660 m!110367))

(assert (=> start!12660 m!110373))

(declare-fun bs!12069 () Bool)

(declare-fun neg-inst!152 () Bool)

(declare-fun s!16859 () Bool)

(assert (= bs!12069 (and neg-inst!152 s!16859)))

(assert (=> bs!12069 (=> true (= (list!778 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33137))) (list!778 x!33137)))))

(assert (=> m!110369 m!110367))

(assert (=> m!110369 m!110373))

(assert (=> m!110369 m!110375))

(assert (=> m!110369 s!16859))

(assert (=> m!110367 s!16859))

(declare-fun bs!12070 () Bool)

(assert (= bs!12070 (and neg-inst!152 start!12660)))

(assert (=> bs!12070 (= true inst!152)))

(declare-fun res!57995 () Bool)

(declare-fun e!71739 () Bool)

(assert (=> start!12660 (=> res!57995 e!71739)))

(declare-fun lambda!3066 () Int)

(declare-fun Forall!101 (Int) Bool)

(assert (=> start!12660 (= res!57995 (not (Forall!101 lambda!3066)))))

(assert (=> start!12660 (= (Forall!101 lambda!3066) inst!152)))

(assert (=> start!12660 (not e!71739)))

(assert (=> start!12660 true))

(declare-fun lambda!3067 () Int)

(declare-fun lambda!3068 () Int)

(declare-fun semiInverseModEq!116 (Int Int) Bool)

(assert (=> b!124727 (= e!71739 (semiInverseModEq!116 lambda!3067 lambda!3068))))

(assert (=> b!124727 (= (semiInverseModEq!116 lambda!3067 lambda!3068) (Forall!101 lambda!3066))))

(assert (= neg-inst!152 inst!152))

(assert (= (and start!12660 (not res!57995)) b!124727))

(declare-fun m!110377 () Bool)

(assert (=> start!12660 m!110377))

(assert (=> start!12660 m!110377))

(declare-fun m!110379 () Bool)

(assert (=> b!124727 m!110379))

(assert (=> b!124727 m!110379))

(assert (=> b!124727 m!110377))

(push 1)

(assert (not b!124727))

(assert (not start!12660))

(assert (not b!124734))

(assert (not bs!12069))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

