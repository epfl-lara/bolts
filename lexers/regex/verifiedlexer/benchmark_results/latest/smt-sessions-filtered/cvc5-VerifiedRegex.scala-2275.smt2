; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!111088 () Bool)

(assert start!111088)

(declare-datatypes ((List!12650 0))(
  ( (Nil!12584) (Cons!12584 (h!17985 (_ BitVec 16)) (t!115874 List!12650)) )
))
(declare-datatypes ((IArray!8273 0))(
  ( (IArray!8274 (innerList!4194 List!12650)) )
))
(declare-datatypes ((Conc!4134 0))(
  ( (Node!4134 (left!10905 Conc!4134) (right!11235 Conc!4134) (csize!8498 Int) (cheight!4345 Int)) (Leaf!6410 (xs!6845 IArray!8273) (csize!8499 Int)) (Empty!4134) )
))
(declare-datatypes ((BalanceConc!8208 0))(
  ( (BalanceConc!8209 (c!208939 Conc!4134)) )
))
(declare-fun v!4968 () BalanceConc!8208)

(declare-datatypes ((TokenValue!2250 0))(
  ( (FloatLiteralValue!4500 (text!16195 List!12650)) (TokenValueExt!2249 (__x!8217 Int)) (Broken!11250 (value!70861 List!12650)) (Object!2315) (End!2250) (Def!2250) (Underscore!2250) (Match!2250) (Else!2250) (Error!2250) (Case!2250) (If!2250) (Extends!2250) (Abstract!2250) (Class!2250) (Val!2250) (DelimiterValue!4500 (del!2310 List!12650)) (KeywordValue!2256 (value!70862 List!12650)) (CommentValue!4500 (value!70863 List!12650)) (WhitespaceValue!4500 (value!70864 List!12650)) (IndentationValue!2250 (value!70865 List!12650)) (String!15487) (Int32!2250) (Broken!11251 (value!70866 List!12650)) (Boolean!2251) (Unit!18874) (OperatorValue!2253 (op!2310 List!12650)) (IdentifierValue!4500 (value!70867 List!12650)) (IdentifierValue!4501 (value!70868 List!12650)) (WhitespaceValue!4501 (value!70869 List!12650)) (True!4500) (False!4500) (Broken!11252 (value!70870 List!12650)) (Broken!11253 (value!70871 List!12650)) (True!4501) (RightBrace!2250) (RightBracket!2250) (Colon!2250) (Null!2250) (Comma!2250) (LeftBracket!2250) (False!4501) (LeftBrace!2250) (ImaginaryLiteralValue!2250 (text!16196 List!12650)) (StringLiteralValue!6750 (value!70872 List!12650)) (EOFValue!2250 (value!70873 List!12650)) (IdentValue!2250 (value!70874 List!12650)) (DelimiterValue!4501 (value!70875 List!12650)) (DedentValue!2250 (value!70876 List!12650)) (NewLineValue!2250 (value!70877 List!12650)) (IntegerValue!6750 (value!70878 (_ BitVec 32)) (text!16197 List!12650)) (IntegerValue!6751 (value!70879 Int) (text!16198 List!12650)) (Times!2250) (Or!2250) (Equal!2250) (Minus!2250) (Broken!11254 (value!70880 List!12650)) (And!2250) (Div!2250) (LessEqual!2250) (Mod!2250) (Concat!5724) (Not!2250) (Plus!2250) (SpaceValue!2250 (value!70881 List!12650)) (IntegerValue!6752 (value!70882 Int) (text!16199 List!12650)) (StringLiteralValue!6751 (text!16200 List!12650)) (FloatLiteralValue!4501 (text!16201 List!12650)) (BytesLiteralValue!2250 (value!70883 List!12650)) (CommentValue!4501 (value!70884 List!12650)) (StringLiteralValue!6752 (value!70885 List!12650)) (ErrorTokenValue!2250 (msg!2311 List!12650)) )
))
(declare-fun inv!21 (TokenValue!2250) Bool)

(declare-fun efficientList!182 (BalanceConc!8208) List!12650)

(assert (=> start!111088 (not (inv!21 (KeywordValue!2256 (efficientList!182 v!4968))))))

(declare-fun e!800883 () Bool)

(declare-fun inv!16983 (BalanceConc!8208) Bool)

(assert (=> start!111088 (and (inv!16983 v!4968) e!800883)))

(declare-fun b!1258199 () Bool)

(declare-fun tp!370747 () Bool)

(declare-fun inv!16984 (Conc!4134) Bool)

(assert (=> b!1258199 (= e!800883 (and (inv!16984 (c!208939 v!4968)) tp!370747))))

(assert (= start!111088 b!1258199))

(declare-fun m!1416523 () Bool)

(assert (=> start!111088 m!1416523))

(declare-fun m!1416525 () Bool)

(assert (=> start!111088 m!1416525))

(declare-fun m!1416527 () Bool)

(assert (=> start!111088 m!1416527))

(declare-fun m!1416529 () Bool)

(assert (=> b!1258199 m!1416529))

(push 1)

(assert (not start!111088))

(assert (not b!1258199))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1258213 () Bool)

(declare-fun e!800894 () Bool)

(declare-fun inv!16 (TokenValue!2250) Bool)

(assert (=> b!1258213 (= e!800894 (inv!16 (KeywordValue!2256 (efficientList!182 v!4968))))))

(declare-fun b!1258214 () Bool)

(declare-fun e!800895 () Bool)

(assert (=> b!1258214 (= e!800894 e!800895)))

(declare-fun c!208945 () Bool)

(assert (=> b!1258214 (= c!208945 (is-IntegerValue!6751 (KeywordValue!2256 (efficientList!182 v!4968))))))

(declare-fun b!1258216 () Bool)

(declare-fun inv!17 (TokenValue!2250) Bool)

(assert (=> b!1258216 (= e!800895 (inv!17 (KeywordValue!2256 (efficientList!182 v!4968))))))

(declare-fun b!1258217 () Bool)

(declare-fun res!557005 () Bool)

(declare-fun e!800893 () Bool)

(assert (=> b!1258217 (=> res!557005 e!800893)))

(assert (=> b!1258217 (= res!557005 (not (is-IntegerValue!6752 (KeywordValue!2256 (efficientList!182 v!4968)))))))

(assert (=> b!1258217 (= e!800895 e!800893)))

(declare-fun b!1258215 () Bool)

(declare-fun inv!15 (TokenValue!2250) Bool)

(assert (=> b!1258215 (= e!800893 (inv!15 (KeywordValue!2256 (efficientList!182 v!4968))))))

(declare-fun d!355610 () Bool)

(declare-fun c!208946 () Bool)

(assert (=> d!355610 (= c!208946 (is-IntegerValue!6750 (KeywordValue!2256 (efficientList!182 v!4968))))))

(assert (=> d!355610 (= (inv!21 (KeywordValue!2256 (efficientList!182 v!4968))) e!800894)))

(assert (= (and d!355610 c!208946) b!1258213))

(assert (= (and d!355610 (not c!208946)) b!1258214))

(assert (= (and b!1258214 c!208945) b!1258216))

(assert (= (and b!1258214 (not c!208945)) b!1258217))

(assert (= (and b!1258217 (not res!557005)) b!1258215))

(declare-fun m!1416539 () Bool)

(assert (=> b!1258213 m!1416539))

(declare-fun m!1416541 () Bool)

(assert (=> b!1258216 m!1416541))

(declare-fun m!1416543 () Bool)

(assert (=> b!1258215 m!1416543))

(assert (=> start!111088 d!355610))

(declare-fun d!355612 () Bool)

(declare-fun lt!421033 () List!12650)

(declare-fun list!4703 (BalanceConc!8208) List!12650)

(assert (=> d!355612 (= lt!421033 (list!4703 v!4968))))

(declare-fun efficientList!184 (Conc!4134 List!12650) List!12650)

(declare-fun efficientList$default$2!61 (Conc!4134) List!12650)

(assert (=> d!355612 (= lt!421033 (efficientList!184 (c!208939 v!4968) (efficientList$default$2!61 (c!208939 v!4968))))))

(assert (=> d!355612 (= (efficientList!182 v!4968) lt!421033)))

(declare-fun bs!290788 () Bool)

(assert (= bs!290788 d!355612))

(declare-fun m!1416545 () Bool)

(assert (=> bs!290788 m!1416545))

(declare-fun m!1416547 () Bool)

(assert (=> bs!290788 m!1416547))

(assert (=> bs!290788 m!1416547))

(declare-fun m!1416549 () Bool)

(assert (=> bs!290788 m!1416549))

(assert (=> start!111088 d!355612))

(declare-fun d!355616 () Bool)

(declare-fun isBalanced!1208 (Conc!4134) Bool)

(assert (=> d!355616 (= (inv!16983 v!4968) (isBalanced!1208 (c!208939 v!4968)))))

(declare-fun bs!290789 () Bool)

(assert (= bs!290789 d!355616))

(declare-fun m!1416551 () Bool)

(assert (=> bs!290789 m!1416551))

(assert (=> start!111088 d!355616))

(declare-fun d!355618 () Bool)

(declare-fun c!208952 () Bool)

(assert (=> d!355618 (= c!208952 (is-Node!4134 (c!208939 v!4968)))))

(declare-fun e!800906 () Bool)

(assert (=> d!355618 (= (inv!16984 (c!208939 v!4968)) e!800906)))

(declare-fun b!1258233 () Bool)

(declare-fun inv!16987 (Conc!4134) Bool)

(assert (=> b!1258233 (= e!800906 (inv!16987 (c!208939 v!4968)))))

(declare-fun b!1258234 () Bool)

(declare-fun e!800907 () Bool)

(assert (=> b!1258234 (= e!800906 e!800907)))

(declare-fun res!557011 () Bool)

(assert (=> b!1258234 (= res!557011 (not (is-Leaf!6410 (c!208939 v!4968))))))

(assert (=> b!1258234 (=> res!557011 e!800907)))

(declare-fun b!1258235 () Bool)

(declare-fun inv!16988 (Conc!4134) Bool)

(assert (=> b!1258235 (= e!800907 (inv!16988 (c!208939 v!4968)))))

(assert (= (and d!355618 c!208952) b!1258233))

(assert (= (and d!355618 (not c!208952)) b!1258234))

(assert (= (and b!1258234 (not res!557011)) b!1258235))

(declare-fun m!1416557 () Bool)

(assert (=> b!1258233 m!1416557))

(declare-fun m!1416559 () Bool)

(assert (=> b!1258235 m!1416559))

(assert (=> b!1258199 d!355618))

(declare-fun tp!370755 () Bool)

(declare-fun e!800912 () Bool)

(declare-fun b!1258242 () Bool)

(declare-fun tp!370756 () Bool)

(assert (=> b!1258242 (= e!800912 (and (inv!16984 (left!10905 (c!208939 v!4968))) tp!370755 (inv!16984 (right!11235 (c!208939 v!4968))) tp!370756))))

(declare-fun b!1258243 () Bool)

(declare-fun inv!16989 (IArray!8273) Bool)

(assert (=> b!1258243 (= e!800912 (inv!16989 (xs!6845 (c!208939 v!4968))))))

(assert (=> b!1258199 (= tp!370747 (and (inv!16984 (c!208939 v!4968)) e!800912))))

(assert (= (and b!1258199 (is-Node!4134 (c!208939 v!4968))) b!1258242))

(assert (= (and b!1258199 (is-Leaf!6410 (c!208939 v!4968))) b!1258243))

(declare-fun m!1416561 () Bool)

(assert (=> b!1258242 m!1416561))

(declare-fun m!1416563 () Bool)

(assert (=> b!1258242 m!1416563))

(declare-fun m!1416565 () Bool)

(assert (=> b!1258243 m!1416565))

(assert (=> b!1258199 m!1416529))

(push 1)

(assert (not b!1258233))

(assert (not b!1258216))

(assert (not b!1258243))

(assert (not b!1258215))

(assert (not b!1258235))

(assert (not b!1258242))

(assert (not d!355612))

(assert (not b!1258199))

(assert (not b!1258213))

(assert (not d!355616))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

