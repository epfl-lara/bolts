; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!218546 () Bool)

(assert start!218546)

(assert (=> start!218546 true))

(declare-fun b!2242527 () Bool)

(assert (=> b!2242527 true))

(assert (=> b!2242527 true))

(declare-fun b!2242534 () Bool)

(declare-fun e!1434169 () Bool)

(declare-datatypes ((List!26577 0))(
  ( (Nil!26483) (Cons!26483 (h!31884 (_ BitVec 16)) (t!200035 List!26577)) )
))
(declare-datatypes ((IArray!17037 0))(
  ( (IArray!17038 (innerList!8576 List!26577)) )
))
(declare-datatypes ((Conc!8516 0))(
  ( (Node!8516 (left!20124 Conc!8516) (right!20454 Conc!8516) (csize!17262 Int) (cheight!8727 Int)) (Leaf!12591 (xs!11458 IArray!17037) (csize!17263 Int)) (Empty!8516) )
))
(declare-datatypes ((BalanceConc!16760 0))(
  ( (BalanceConc!16761 (c!357033 Conc!8516)) )
))
(declare-fun x!430622 () BalanceConc!16760)

(declare-fun tp!707334 () Bool)

(declare-fun inv!35973 (Conc!8516) Bool)

(assert (=> b!2242534 (= e!1434169 (and (inv!35973 (c!357033 x!430622)) tp!707334))))

(declare-datatypes ((FloatLiteralValueInjection!92 0))(
  ( (FloatLiteralValueInjection!93) )
))
(declare-fun thiss!4969 () FloatLiteralValueInjection!92)

(declare-fun inst!1262 () Bool)

(declare-fun inv!35974 (BalanceConc!16760) Bool)

(declare-fun list!10106 (BalanceConc!16760) List!26577)

(declare-datatypes ((TokenValue!4340 0))(
  ( (FloatLiteralValue!8680 (text!30825 List!26577)) (TokenValueExt!4339 (__x!17750 Int)) (Broken!21700 (value!132890 List!26577)) (Object!4433) (End!4340) (Def!4340) (Underscore!4340) (Match!4340) (Else!4340) (Error!4340) (Case!4340) (If!4340) (Extends!4340) (Abstract!4340) (Class!4340) (Val!4340) (DelimiterValue!8680 (del!4400 List!26577)) (KeywordValue!4346 (value!132891 List!26577)) (CommentValue!8680 (value!132892 List!26577)) (WhitespaceValue!8680 (value!132893 List!26577)) (IndentationValue!4340 (value!132894 List!26577)) (String!28825) (Int32!4340) (Broken!21701 (value!132895 List!26577)) (Boolean!4341) (Unit!39482) (OperatorValue!4343 (op!4400 List!26577)) (IdentifierValue!8680 (value!132896 List!26577)) (IdentifierValue!8681 (value!132897 List!26577)) (WhitespaceValue!8681 (value!132898 List!26577)) (True!8680) (False!8680) (Broken!21702 (value!132899 List!26577)) (Broken!21703 (value!132900 List!26577)) (True!8681) (RightBrace!4340) (RightBracket!4340) (Colon!4340) (Null!4340) (Comma!4340) (LeftBracket!4340) (False!8681) (LeftBrace!4340) (ImaginaryLiteralValue!4340 (text!30826 List!26577)) (StringLiteralValue!13020 (value!132901 List!26577)) (EOFValue!4340 (value!132902 List!26577)) (IdentValue!4340 (value!132903 List!26577)) (DelimiterValue!8681 (value!132904 List!26577)) (DedentValue!4340 (value!132905 List!26577)) (NewLineValue!4340 (value!132906 List!26577)) (IntegerValue!13020 (value!132907 (_ BitVec 32)) (text!30827 List!26577)) (IntegerValue!13021 (value!132908 Int) (text!30828 List!26577)) (Times!4340) (Or!4340) (Equal!4340) (Minus!4340) (Broken!21704 (value!132909 List!26577)) (And!4340) (Div!4340) (LessEqual!4340) (Mod!4340) (Concat!10876) (Not!4340) (Plus!4340) (SpaceValue!4340 (value!132910 List!26577)) (IntegerValue!13022 (value!132911 Int) (text!30829 List!26577)) (StringLiteralValue!13021 (text!30830 List!26577)) (FloatLiteralValue!8681 (text!30831 List!26577)) (BytesLiteralValue!4340 (value!132912 List!26577)) (CommentValue!8681 (value!132913 List!26577)) (StringLiteralValue!13022 (value!132914 List!26577)) (ErrorTokenValue!4340 (msg!4401 List!26577)) )
))
(declare-fun toCharacters!25 (FloatLiteralValueInjection!92 TokenValue!4340) BalanceConc!16760)

(declare-fun toValue!32 (FloatLiteralValueInjection!92 BalanceConc!16760) TokenValue!4340)

(assert (=> start!218546 (= inst!1262 (=> (and (inv!35974 x!430622) e!1434169) (= (list!10106 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430622))) (list!10106 x!430622))))))

(assert (= start!218546 b!2242534))

(declare-fun m!2674711 () Bool)

(assert (=> b!2242534 m!2674711))

(declare-fun m!2674713 () Bool)

(assert (=> start!218546 m!2674713))

(declare-fun m!2674715 () Bool)

(assert (=> start!218546 m!2674715))

(declare-fun m!2674717 () Bool)

(assert (=> start!218546 m!2674717))

(declare-fun m!2674719 () Bool)

(assert (=> start!218546 m!2674719))

(declare-fun m!2674721 () Bool)

(assert (=> start!218546 m!2674721))

(assert (=> start!218546 m!2674717))

(assert (=> start!218546 m!2674713))

(declare-fun bs!454384 () Bool)

(declare-fun neg-inst!1262 () Bool)

(declare-fun s!224165 () Bool)

(assert (= bs!454384 (and neg-inst!1262 s!224165)))

(assert (=> bs!454384 (=> true (= (list!10106 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430622))) (list!10106 x!430622)))))

(assert (=> m!2674717 m!2674713))

(assert (=> m!2674717 m!2674715))

(assert (=> m!2674717 m!2674719))

(assert (=> m!2674717 s!224165))

(assert (=> m!2674719 s!224165))

(declare-fun bs!454385 () Bool)

(assert (= bs!454385 (and neg-inst!1262 start!218546)))

(assert (=> bs!454385 (= true inst!1262)))

(declare-fun res!958184 () Bool)

(declare-fun e!1434168 () Bool)

(assert (=> start!218546 (=> res!958184 e!1434168)))

(declare-fun lambda!84934 () Int)

(declare-fun Forall!1052 (Int) Bool)

(assert (=> start!218546 (= res!958184 (not (Forall!1052 lambda!84934)))))

(assert (=> start!218546 (= (Forall!1052 lambda!84934) inst!1262)))

(assert (=> start!218546 (not e!1434168)))

(assert (=> start!218546 true))

(declare-fun lambda!84935 () Int)

(declare-fun lambda!84936 () Int)

(declare-fun semiInverseModEq!1683 (Int Int) Bool)

(assert (=> b!2242527 (= e!1434168 (semiInverseModEq!1683 lambda!84935 lambda!84936))))

(assert (=> b!2242527 (= (semiInverseModEq!1683 lambda!84935 lambda!84936) (Forall!1052 lambda!84934))))

(assert (= neg-inst!1262 inst!1262))

(assert (= (and start!218546 (not res!958184)) b!2242527))

(declare-fun m!2674723 () Bool)

(assert (=> start!218546 m!2674723))

(assert (=> start!218546 m!2674723))

(declare-fun m!2674725 () Bool)

(assert (=> b!2242527 m!2674725))

(assert (=> b!2242527 m!2674725))

(assert (=> b!2242527 m!2674723))

(push 1)

(assert (not b!2242534))

(assert (not bs!454384))

(assert (not b!2242527))

(assert (not start!218546))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

