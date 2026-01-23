; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!218550 () Bool)

(assert start!218550)

(assert (=> start!218550 true))

(declare-fun b!2242565 () Bool)

(assert (=> b!2242565 true))

(assert (=> b!2242565 true))

(declare-fun b!2242566 () Bool)

(assert (=> b!2242566 true))

(declare-fun b!2242575 () Bool)

(declare-fun e!1434196 () Bool)

(declare-datatypes ((List!26579 0))(
  ( (Nil!26485) (Cons!26485 (h!31886 (_ BitVec 16)) (t!200049 List!26579)) )
))
(declare-datatypes ((IArray!17041 0))(
  ( (IArray!17042 (innerList!8578 List!26579)) )
))
(declare-datatypes ((Conc!8518 0))(
  ( (Node!8518 (left!20131 Conc!8518) (right!20461 Conc!8518) (csize!17266 Int) (cheight!8729 Int)) (Leaf!12594 (xs!11460 IArray!17041) (csize!17267 Int)) (Empty!8518) )
))
(declare-datatypes ((BalanceConc!16764 0))(
  ( (BalanceConc!16765 (c!357035 Conc!8518)) )
))
(declare-fun x!430710 () BalanceConc!16764)

(declare-fun tp!707344 () Bool)

(declare-fun inv!35980 (Conc!8518) Bool)

(assert (=> b!2242575 (= e!1434196 (and (inv!35980 (c!357035 x!430710)) tp!707344))))

(declare-fun inst!1270 () Bool)

(declare-datatypes ((FloatLiteralValueInjection!96 0))(
  ( (FloatLiteralValueInjection!97) )
))
(declare-fun thiss!4969 () FloatLiteralValueInjection!96)

(declare-fun inv!35981 (BalanceConc!16764) Bool)

(declare-fun list!10108 (BalanceConc!16764) List!26579)

(declare-datatypes ((TokenValue!4342 0))(
  ( (FloatLiteralValue!8684 (text!30839 List!26579)) (TokenValueExt!4341 (__x!17752 Int)) (Broken!21710 (value!132943 List!26579)) (Object!4435) (End!4342) (Def!4342) (Underscore!4342) (Match!4342) (Else!4342) (Error!4342) (Case!4342) (If!4342) (Extends!4342) (Abstract!4342) (Class!4342) (Val!4342) (DelimiterValue!8684 (del!4402 List!26579)) (KeywordValue!4348 (value!132944 List!26579)) (CommentValue!8684 (value!132945 List!26579)) (WhitespaceValue!8684 (value!132946 List!26579)) (IndentationValue!4342 (value!132947 List!26579)) (String!28831) (Int32!4342) (Broken!21711 (value!132948 List!26579)) (Boolean!4343) (Unit!39484) (OperatorValue!4345 (op!4402 List!26579)) (IdentifierValue!8684 (value!132949 List!26579)) (IdentifierValue!8685 (value!132950 List!26579)) (WhitespaceValue!8685 (value!132951 List!26579)) (True!8684) (False!8684) (Broken!21712 (value!132952 List!26579)) (Broken!21713 (value!132953 List!26579)) (True!8685) (RightBrace!4342) (RightBracket!4342) (Colon!4342) (Null!4342) (Comma!4342) (LeftBracket!4342) (False!8685) (LeftBrace!4342) (ImaginaryLiteralValue!4342 (text!30840 List!26579)) (StringLiteralValue!13026 (value!132954 List!26579)) (EOFValue!4342 (value!132955 List!26579)) (IdentValue!4342 (value!132956 List!26579)) (DelimiterValue!8685 (value!132957 List!26579)) (DedentValue!4342 (value!132958 List!26579)) (NewLineValue!4342 (value!132959 List!26579)) (IntegerValue!13026 (value!132960 (_ BitVec 32)) (text!30841 List!26579)) (IntegerValue!13027 (value!132961 Int) (text!30842 List!26579)) (Times!4342) (Or!4342) (Equal!4342) (Minus!4342) (Broken!21714 (value!132962 List!26579)) (And!4342) (Div!4342) (LessEqual!4342) (Mod!4342) (Concat!10878) (Not!4342) (Plus!4342) (SpaceValue!4342 (value!132963 List!26579)) (IntegerValue!13028 (value!132964 Int) (text!30843 List!26579)) (StringLiteralValue!13027 (text!30844 List!26579)) (FloatLiteralValue!8685 (text!30845 List!26579)) (BytesLiteralValue!4342 (value!132965 List!26579)) (CommentValue!8685 (value!132966 List!26579)) (StringLiteralValue!13028 (value!132967 List!26579)) (ErrorTokenValue!4342 (msg!4403 List!26579)) )
))
(declare-fun toCharacters!25 (FloatLiteralValueInjection!96 TokenValue!4342) BalanceConc!16764)

(declare-fun toValue!32 (FloatLiteralValueInjection!96 BalanceConc!16764) TokenValue!4342)

(assert (=> start!218550 (= inst!1270 (=> (and (inv!35981 x!430710) e!1434196) (= (list!10108 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710))) (list!10108 x!430710))))))

(assert (= start!218550 b!2242575))

(declare-fun m!2674743 () Bool)

(assert (=> b!2242575 m!2674743))

(declare-fun m!2674745 () Bool)

(assert (=> start!218550 m!2674745))

(declare-fun m!2674747 () Bool)

(assert (=> start!218550 m!2674747))

(declare-fun m!2674749 () Bool)

(assert (=> start!218550 m!2674749))

(declare-fun m!2674751 () Bool)

(assert (=> start!218550 m!2674751))

(assert (=> start!218550 m!2674747))

(declare-fun m!2674753 () Bool)

(assert (=> start!218550 m!2674753))

(assert (=> start!218550 m!2674745))

(declare-fun res!958202 () Bool)

(declare-fun e!1434197 () Bool)

(assert (=> b!2242566 (=> res!958202 e!1434197)))

(declare-fun x!430711 () BalanceConc!16764)

(declare-fun x!430712 () BalanceConc!16764)

(assert (=> b!2242566 (= res!958202 (not (= (list!10108 x!430711) (list!10108 x!430712))))))

(declare-fun inst!1271 () Bool)

(declare-fun e!1434198 () Bool)

(declare-fun e!1434199 () Bool)

(assert (=> b!2242566 (= inst!1271 (=> (and (inv!35981 x!430711) e!1434198 (inv!35981 x!430712) e!1434199) e!1434197))))

(declare-fun b!2242576 () Bool)

(assert (=> b!2242576 (= e!1434197 (= (toValue!32 thiss!4969 x!430711) (toValue!32 thiss!4969 x!430712)))))

(declare-fun b!2242577 () Bool)

(declare-fun tp!707346 () Bool)

(assert (=> b!2242577 (= e!1434198 (and (inv!35980 (c!357035 x!430711)) tp!707346))))

(declare-fun b!2242578 () Bool)

(declare-fun tp!707345 () Bool)

(assert (=> b!2242578 (= e!1434199 (and (inv!35980 (c!357035 x!430712)) tp!707345))))

(assert (= (and b!2242566 (not res!958202)) b!2242576))

(assert (= b!2242566 b!2242577))

(assert (= b!2242566 b!2242578))

(declare-fun m!2674755 () Bool)

(assert (=> b!2242566 m!2674755))

(declare-fun m!2674757 () Bool)

(assert (=> b!2242566 m!2674757))

(declare-fun m!2674759 () Bool)

(assert (=> b!2242566 m!2674759))

(declare-fun m!2674761 () Bool)

(assert (=> b!2242566 m!2674761))

(declare-fun m!2674763 () Bool)

(assert (=> b!2242576 m!2674763))

(declare-fun m!2674765 () Bool)

(assert (=> b!2242576 m!2674765))

(declare-fun m!2674767 () Bool)

(assert (=> b!2242577 m!2674767))

(declare-fun m!2674769 () Bool)

(assert (=> b!2242578 m!2674769))

(declare-fun bs!454390 () Bool)

(declare-fun neg-inst!1271 () Bool)

(declare-fun s!224171 () Bool)

(assert (= bs!454390 (and neg-inst!1271 s!224171)))

(assert (=> bs!454390 (=> true (= (list!10108 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710))) (list!10108 x!430710)))))

(assert (=> m!2674751 m!2674745))

(assert (=> m!2674751 m!2674747))

(assert (=> m!2674751 m!2674753))

(assert (=> m!2674751 s!224171))

(assert (=> m!2674745 s!224171))

(declare-fun bs!454391 () Bool)

(assert (= bs!454391 (and neg-inst!1271 start!218550)))

(assert (=> bs!454391 (= true inst!1270)))

(declare-fun bs!454392 () Bool)

(declare-fun neg-inst!1270 () Bool)

(declare-fun s!224173 () Bool)

(assert (= bs!454392 (and neg-inst!1270 s!224173)))

(declare-fun res!958203 () Bool)

(declare-fun e!1434200 () Bool)

(assert (=> bs!454392 (=> res!958203 e!1434200)))

(assert (=> bs!454392 (= res!958203 (not (= (list!10108 x!430712) (list!10108 x!430712))))))

(assert (=> bs!454392 (=> true e!1434200)))

(declare-fun b!2242579 () Bool)

(assert (=> b!2242579 (= e!1434200 (= (toValue!32 thiss!4969 x!430712) (toValue!32 thiss!4969 x!430712)))))

(assert (= (and bs!454392 (not res!958203)) b!2242579))

(assert (=> m!2674765 m!2674757))

(assert (=> m!2674765 m!2674757))

(assert (=> m!2674765 s!224173))

(assert (=> m!2674765 s!224173))

(declare-fun bs!454393 () Bool)

(declare-fun s!224175 () Bool)

(assert (= bs!454393 (and neg-inst!1270 s!224175)))

(declare-fun res!958204 () Bool)

(declare-fun e!1434201 () Bool)

(assert (=> bs!454393 (=> res!958204 e!1434201)))

(assert (=> bs!454393 (= res!958204 (not (= (list!10108 x!430712) (list!10108 x!430711))))))

(assert (=> bs!454393 (=> true e!1434201)))

(declare-fun b!2242580 () Bool)

(assert (=> b!2242580 (= e!1434201 (= (toValue!32 thiss!4969 x!430712) (toValue!32 thiss!4969 x!430711)))))

(assert (= (and bs!454393 (not res!958204)) b!2242580))

(declare-fun bs!454394 () Bool)

(assert (= bs!454394 (and m!2674755 m!2674765)))

(assert (=> bs!454394 m!2674757))

(assert (=> bs!454394 m!2674755))

(assert (=> bs!454394 s!224175))

(declare-fun bs!454395 () Bool)

(declare-fun s!224177 () Bool)

(assert (= bs!454395 (and neg-inst!1270 s!224177)))

(declare-fun res!958205 () Bool)

(declare-fun e!1434202 () Bool)

(assert (=> bs!454395 (=> res!958205 e!1434202)))

(assert (=> bs!454395 (= res!958205 (not (= (list!10108 x!430711) (list!10108 x!430711))))))

(assert (=> bs!454395 (=> true e!1434202)))

(declare-fun b!2242581 () Bool)

(assert (=> b!2242581 (= e!1434202 (= (toValue!32 thiss!4969 x!430711) (toValue!32 thiss!4969 x!430711)))))

(assert (= (and bs!454395 (not res!958205)) b!2242581))

(assert (=> m!2674755 s!224177))

(declare-fun bs!454396 () Bool)

(declare-fun s!224179 () Bool)

(assert (= bs!454396 (and neg-inst!1270 s!224179)))

(declare-fun res!958206 () Bool)

(declare-fun e!1434203 () Bool)

(assert (=> bs!454396 (=> res!958206 e!1434203)))

(assert (=> bs!454396 (= res!958206 (not (= (list!10108 x!430711) (list!10108 x!430712))))))

(assert (=> bs!454396 (=> true e!1434203)))

(declare-fun b!2242582 () Bool)

(assert (=> b!2242582 (= e!1434203 (= (toValue!32 thiss!4969 x!430711) (toValue!32 thiss!4969 x!430712)))))

(assert (= (and bs!454396 (not res!958206)) b!2242582))

(assert (=> bs!454394 m!2674755))

(assert (=> bs!454394 m!2674757))

(assert (=> bs!454394 s!224179))

(assert (=> m!2674755 s!224177))

(declare-fun bs!454397 () Bool)

(assert (= bs!454397 (and m!2674763 m!2674765)))

(assert (=> bs!454397 s!224175))

(declare-fun bs!454398 () Bool)

(assert (= bs!454398 (and m!2674763 m!2674755)))

(assert (=> bs!454398 s!224177))

(assert (=> m!2674763 s!224177))

(assert (=> bs!454397 s!224179))

(assert (=> bs!454398 s!224177))

(assert (=> m!2674763 s!224177))

(declare-fun bs!454399 () Bool)

(assert (= bs!454399 (and m!2674757 m!2674765)))

(assert (=> bs!454399 s!224173))

(declare-fun bs!454400 () Bool)

(assert (= bs!454400 (and m!2674757 m!2674755 m!2674763)))

(assert (=> bs!454400 s!224179))

(assert (=> m!2674757 s!224173))

(assert (=> bs!454399 s!224173))

(assert (=> bs!454400 s!224175))

(assert (=> m!2674757 s!224173))

(declare-fun bs!454401 () Bool)

(declare-fun s!224181 () Bool)

(assert (= bs!454401 (and neg-inst!1270 s!224181)))

(declare-fun res!958207 () Bool)

(declare-fun e!1434204 () Bool)

(assert (=> bs!454401 (=> res!958207 e!1434204)))

(assert (=> bs!454401 (= res!958207 (not (= (list!10108 x!430712) (list!10108 x!430710))))))

(assert (=> bs!454401 (=> true e!1434204)))

(declare-fun b!2242583 () Bool)

(assert (=> b!2242583 (= e!1434204 (= (toValue!32 thiss!4969 x!430712) (toValue!32 thiss!4969 x!430710)))))

(assert (= (and bs!454401 (not res!958207)) b!2242583))

(declare-fun bs!454402 () Bool)

(assert (= bs!454402 (and m!2674751 m!2674765 m!2674757)))

(assert (=> bs!454402 m!2674757))

(assert (=> bs!454402 m!2674751))

(assert (=> bs!454402 s!224181))

(declare-fun bs!454403 () Bool)

(declare-fun s!224183 () Bool)

(assert (= bs!454403 (and neg-inst!1270 s!224183)))

(declare-fun res!958208 () Bool)

(declare-fun e!1434205 () Bool)

(assert (=> bs!454403 (=> res!958208 e!1434205)))

(assert (=> bs!454403 (= res!958208 (not (= (list!10108 x!430711) (list!10108 x!430710))))))

(assert (=> bs!454403 (=> true e!1434205)))

(declare-fun b!2242584 () Bool)

(assert (=> b!2242584 (= e!1434205 (= (toValue!32 thiss!4969 x!430711) (toValue!32 thiss!4969 x!430710)))))

(assert (= (and bs!454403 (not res!958208)) b!2242584))

(declare-fun bs!454404 () Bool)

(assert (= bs!454404 (and m!2674751 m!2674755 m!2674763)))

(assert (=> bs!454404 m!2674755))

(assert (=> bs!454404 m!2674751))

(assert (=> bs!454404 s!224183))

(declare-fun bs!454405 () Bool)

(declare-fun s!224185 () Bool)

(assert (= bs!454405 (and neg-inst!1270 s!224185)))

(declare-fun res!958209 () Bool)

(declare-fun e!1434206 () Bool)

(assert (=> bs!454405 (=> res!958209 e!1434206)))

(assert (=> bs!454405 (= res!958209 (not (= (list!10108 x!430710) (list!10108 x!430710))))))

(assert (=> bs!454405 (=> true e!1434206)))

(declare-fun b!2242585 () Bool)

(assert (=> b!2242585 (= e!1434206 (= (toValue!32 thiss!4969 x!430710) (toValue!32 thiss!4969 x!430710)))))

(assert (= (and bs!454405 (not res!958209)) b!2242585))

(assert (=> m!2674751 s!224185))

(declare-fun bs!454406 () Bool)

(declare-fun s!224187 () Bool)

(assert (= bs!454406 (and neg-inst!1270 s!224187)))

(declare-fun res!958210 () Bool)

(declare-fun e!1434207 () Bool)

(assert (=> bs!454406 (=> res!958210 e!1434207)))

(assert (=> bs!454406 (= res!958210 (not (= (list!10108 x!430710) (list!10108 x!430712))))))

(assert (=> bs!454406 (=> true e!1434207)))

(declare-fun b!2242586 () Bool)

(assert (=> b!2242586 (= e!1434207 (= (toValue!32 thiss!4969 x!430710) (toValue!32 thiss!4969 x!430712)))))

(assert (= (and bs!454406 (not res!958210)) b!2242586))

(assert (=> bs!454402 m!2674751))

(assert (=> bs!454402 m!2674757))

(assert (=> bs!454402 s!224187))

(declare-fun bs!454407 () Bool)

(declare-fun s!224189 () Bool)

(assert (= bs!454407 (and neg-inst!1270 s!224189)))

(declare-fun res!958211 () Bool)

(declare-fun e!1434208 () Bool)

(assert (=> bs!454407 (=> res!958211 e!1434208)))

(assert (=> bs!454407 (= res!958211 (not (= (list!10108 x!430710) (list!10108 x!430711))))))

(assert (=> bs!454407 (=> true e!1434208)))

(declare-fun b!2242587 () Bool)

(assert (=> b!2242587 (= e!1434208 (= (toValue!32 thiss!4969 x!430710) (toValue!32 thiss!4969 x!430711)))))

(assert (= (and bs!454407 (not res!958211)) b!2242587))

(assert (=> bs!454404 m!2674751))

(assert (=> bs!454404 m!2674755))

(assert (=> bs!454404 s!224189))

(assert (=> m!2674751 s!224185))

(declare-fun bs!454408 () Bool)

(declare-fun s!224191 () Bool)

(assert (= bs!454408 (and neg-inst!1270 s!224191)))

(declare-fun res!958212 () Bool)

(declare-fun e!1434209 () Bool)

(assert (=> bs!454408 (=> res!958212 e!1434209)))

(assert (=> bs!454408 (= res!958212 (not (= (list!10108 x!430710) (list!10108 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710))))))))

(assert (=> bs!454408 (=> true e!1434209)))

(declare-fun b!2242588 () Bool)

(assert (=> b!2242588 (= e!1434209 (= (toValue!32 thiss!4969 x!430710) (toValue!32 thiss!4969 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710)))))))

(assert (= (and bs!454408 (not res!958212)) b!2242588))

(declare-fun bs!454409 () Bool)

(assert (= bs!454409 (and m!2674753 m!2674751)))

(assert (=> bs!454409 m!2674751))

(assert (=> bs!454409 m!2674753))

(assert (=> bs!454409 s!224191))

(declare-fun bs!454410 () Bool)

(declare-fun s!224193 () Bool)

(assert (= bs!454410 (and neg-inst!1270 s!224193)))

(declare-fun res!958213 () Bool)

(declare-fun e!1434210 () Bool)

(assert (=> bs!454410 (=> res!958213 e!1434210)))

(assert (=> bs!454410 (= res!958213 (not (= (list!10108 x!430712) (list!10108 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710))))))))

(assert (=> bs!454410 (=> true e!1434210)))

(declare-fun b!2242589 () Bool)

(assert (=> b!2242589 (= e!1434210 (= (toValue!32 thiss!4969 x!430712) (toValue!32 thiss!4969 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710)))))))

(assert (= (and bs!454410 (not res!958213)) b!2242589))

(declare-fun bs!454411 () Bool)

(assert (= bs!454411 (and m!2674753 m!2674765 m!2674757)))

(assert (=> bs!454411 m!2674757))

(assert (=> bs!454411 m!2674753))

(assert (=> bs!454411 s!224193))

(declare-fun bs!454412 () Bool)

(declare-fun s!224195 () Bool)

(assert (= bs!454412 (and neg-inst!1270 s!224195)))

(declare-fun res!958214 () Bool)

(declare-fun e!1434211 () Bool)

(assert (=> bs!454412 (=> res!958214 e!1434211)))

(assert (=> bs!454412 (= res!958214 (not (= (list!10108 x!430711) (list!10108 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710))))))))

(assert (=> bs!454412 (=> true e!1434211)))

(declare-fun b!2242590 () Bool)

(assert (=> b!2242590 (= e!1434211 (= (toValue!32 thiss!4969 x!430711) (toValue!32 thiss!4969 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710)))))))

(assert (= (and bs!454412 (not res!958214)) b!2242590))

(declare-fun bs!454413 () Bool)

(assert (= bs!454413 (and m!2674753 m!2674755 m!2674763)))

(assert (=> bs!454413 m!2674755))

(assert (=> bs!454413 m!2674753))

(assert (=> bs!454413 s!224195))

(declare-fun bs!454414 () Bool)

(declare-fun s!224197 () Bool)

(assert (= bs!454414 (and neg-inst!1270 s!224197)))

(declare-fun res!958215 () Bool)

(declare-fun e!1434212 () Bool)

(assert (=> bs!454414 (=> res!958215 e!1434212)))

(assert (=> bs!454414 (= res!958215 (not (= (list!10108 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710))) (list!10108 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710))))))))

(assert (=> bs!454414 (=> true e!1434212)))

(declare-fun b!2242591 () Bool)

(assert (=> b!2242591 (= e!1434212 (= (toValue!32 thiss!4969 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710))) (toValue!32 thiss!4969 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710)))))))

(assert (= (and bs!454414 (not res!958215)) b!2242591))

(assert (=> m!2674753 s!224197))

(declare-fun bs!454415 () Bool)

(declare-fun s!224199 () Bool)

(assert (= bs!454415 (and neg-inst!1270 s!224199)))

(declare-fun res!958216 () Bool)

(declare-fun e!1434213 () Bool)

(assert (=> bs!454415 (=> res!958216 e!1434213)))

(assert (=> bs!454415 (= res!958216 (not (= (list!10108 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710))) (list!10108 x!430710))))))

(assert (=> bs!454415 (=> true e!1434213)))

(declare-fun b!2242592 () Bool)

(assert (=> b!2242592 (= e!1434213 (= (toValue!32 thiss!4969 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710))) (toValue!32 thiss!4969 x!430710)))))

(assert (= (and bs!454415 (not res!958216)) b!2242592))

(assert (=> bs!454409 m!2674753))

(assert (=> bs!454409 m!2674751))

(assert (=> bs!454409 s!224199))

(declare-fun bs!454416 () Bool)

(declare-fun s!224201 () Bool)

(assert (= bs!454416 (and neg-inst!1270 s!224201)))

(declare-fun res!958217 () Bool)

(declare-fun e!1434214 () Bool)

(assert (=> bs!454416 (=> res!958217 e!1434214)))

(assert (=> bs!454416 (= res!958217 (not (= (list!10108 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710))) (list!10108 x!430712))))))

(assert (=> bs!454416 (=> true e!1434214)))

(declare-fun b!2242593 () Bool)

(assert (=> b!2242593 (= e!1434214 (= (toValue!32 thiss!4969 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710))) (toValue!32 thiss!4969 x!430712)))))

(assert (= (and bs!454416 (not res!958217)) b!2242593))

(assert (=> bs!454411 m!2674753))

(assert (=> bs!454411 m!2674757))

(assert (=> bs!454411 s!224201))

(declare-fun bs!454417 () Bool)

(declare-fun s!224203 () Bool)

(assert (= bs!454417 (and neg-inst!1270 s!224203)))

(declare-fun res!958218 () Bool)

(declare-fun e!1434215 () Bool)

(assert (=> bs!454417 (=> res!958218 e!1434215)))

(assert (=> bs!454417 (= res!958218 (not (= (list!10108 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710))) (list!10108 x!430711))))))

(assert (=> bs!454417 (=> true e!1434215)))

(declare-fun b!2242594 () Bool)

(assert (=> b!2242594 (= e!1434215 (= (toValue!32 thiss!4969 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710))) (toValue!32 thiss!4969 x!430711)))))

(assert (= (and bs!454417 (not res!958218)) b!2242594))

(assert (=> bs!454413 m!2674753))

(assert (=> bs!454413 m!2674755))

(assert (=> bs!454413 s!224203))

(assert (=> m!2674753 s!224197))

(declare-fun bs!454418 () Bool)

(assert (= bs!454418 (and m!2674745 m!2674765 m!2674757)))

(assert (=> bs!454418 s!224181))

(declare-fun bs!454419 () Bool)

(assert (= bs!454419 (and m!2674745 m!2674753)))

(assert (=> bs!454419 s!224199))

(assert (=> m!2674745 s!224185))

(declare-fun bs!454420 () Bool)

(assert (= bs!454420 (and m!2674745 m!2674751)))

(assert (=> bs!454420 s!224185))

(declare-fun bs!454421 () Bool)

(assert (= bs!454421 (and m!2674745 m!2674755 m!2674763)))

(assert (=> bs!454421 s!224183))

(assert (=> bs!454418 s!224187))

(assert (=> bs!454420 s!224185))

(assert (=> m!2674745 s!224185))

(assert (=> bs!454421 s!224189))

(assert (=> bs!454419 s!224191))

(declare-fun bs!454422 () Bool)

(assert (= bs!454422 (and neg-inst!1270 b!2242566)))

(assert (=> bs!454422 (= true inst!1271)))

(declare-fun res!958201 () Bool)

(declare-fun e!1434194 () Bool)

(assert (=> start!218550 (=> res!958201 e!1434194)))

(declare-fun lambda!84972 () Int)

(declare-fun Forall!1054 (Int) Bool)

(assert (=> start!218550 (= res!958201 (not (Forall!1054 lambda!84972)))))

(assert (=> start!218550 (= (Forall!1054 lambda!84972) inst!1270)))

(assert (=> start!218550 (not e!1434194)))

(assert (=> start!218550 true))

(declare-fun e!1434195 () Bool)

(assert (=> b!2242565 (= e!1434194 e!1434195)))

(declare-fun res!958200 () Bool)

(assert (=> b!2242565 (=> res!958200 e!1434195)))

(declare-fun lambda!84973 () Int)

(declare-fun lambda!84974 () Int)

(declare-fun semiInverseModEq!1685 (Int Int) Bool)

(assert (=> b!2242565 (= res!958200 (not (semiInverseModEq!1685 lambda!84973 lambda!84974)))))

(assert (=> b!2242565 (= (semiInverseModEq!1685 lambda!84973 lambda!84974) (Forall!1054 lambda!84972))))

(declare-fun lambda!84975 () Int)

(declare-fun Forall2!671 (Int) Bool)

(assert (=> b!2242566 (= e!1434195 (Forall2!671 lambda!84975))))

(assert (=> b!2242566 (= (Forall2!671 lambda!84975) inst!1271)))

(assert (= neg-inst!1271 inst!1270))

(assert (= (and start!218550 (not res!958201)) b!2242565))

(assert (= (and b!2242565 (not res!958200)) b!2242566))

(assert (= neg-inst!1270 inst!1271))

(declare-fun m!2674771 () Bool)

(assert (=> start!218550 m!2674771))

(assert (=> start!218550 m!2674771))

(declare-fun m!2674773 () Bool)

(assert (=> b!2242565 m!2674773))

(assert (=> b!2242565 m!2674773))

(assert (=> b!2242565 m!2674771))

(declare-fun m!2674775 () Bool)

(assert (=> b!2242566 m!2674775))

(assert (=> b!2242566 m!2674775))

(push 1)

(assert (not b!2242583))

(assert (not bs!454414))

(assert (not b!2242588))

(assert (not b!2242589))

(assert (not b!2242579))

(assert (not bs!454401))

(assert (not b!2242585))

(assert (not b!2242584))

(assert (not bs!454407))

(assert (not bs!454405))

(assert (not b!2242581))

(assert (not bs!454410))

(assert (not b!2242566))

(assert (not bs!454416))

(assert (not b!2242578))

(assert (not b!2242590))

(assert (not b!2242586))

(assert (not bs!454408))

(assert (not b!2242582))

(assert (not bs!454406))

(assert (not b!2242593))

(assert (not bs!454390))

(assert (not start!218550))

(assert (not b!2242587))

(assert (not bs!454403))

(assert (not bs!454415))

(assert (not bs!454396))

(assert (not b!2242575))

(assert (not b!2242580))

(assert (not bs!454412))

(assert (not b!2242594))

(assert (not b!2242576))

(assert (not b!2242565))

(assert (not bs!454392))

(assert (not bs!454395))

(assert (not bs!454393))

(assert (not bs!454417))

(assert (not b!2242591))

(assert (not b!2242592))

(assert (not b!2242577))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!665980 () Bool)

(declare-fun list!10110 (Conc!8518) List!26579)

(assert (=> d!665980 (= (list!10108 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710))) (list!10110 (c!357035 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710)))))))

(declare-fun bs!454460 () Bool)

(assert (= bs!454460 d!665980))

(declare-fun m!2674811 () Bool)

(assert (=> bs!454460 m!2674811))

(assert (=> bs!454414 d!665980))

(declare-fun d!665982 () Bool)

(declare-fun efficientList!294 (BalanceConc!16764) List!26579)

(assert (=> d!665982 (= (toValue!32 thiss!4969 x!430711) (FloatLiteralValue!8685 (efficientList!294 x!430711)))))

(declare-fun bs!454461 () Bool)

(assert (= bs!454461 d!665982))

(declare-fun m!2674813 () Bool)

(assert (=> bs!454461 m!2674813))

(assert (=> b!2242584 d!665982))

(declare-fun d!665984 () Bool)

(assert (=> d!665984 (= (toValue!32 thiss!4969 x!430710) (FloatLiteralValue!8685 (efficientList!294 x!430710)))))

(declare-fun bs!454462 () Bool)

(assert (= bs!454462 d!665984))

(declare-fun m!2674815 () Bool)

(assert (=> bs!454462 m!2674815))

(assert (=> b!2242584 d!665984))

(declare-fun d!665986 () Bool)

(assert (=> d!665986 (= (toValue!32 thiss!4969 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710))) (FloatLiteralValue!8685 (efficientList!294 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710)))))))

(declare-fun bs!454463 () Bool)

(assert (= bs!454463 d!665986))

(assert (=> bs!454463 m!2674747))

(declare-fun m!2674817 () Bool)

(assert (=> bs!454463 m!2674817))

(assert (=> b!2242594 d!665986))

(assert (=> b!2242594 d!665982))

(declare-fun d!665988 () Bool)

(assert (=> d!665988 (= (list!10108 x!430710) (list!10110 (c!357035 x!430710)))))

(declare-fun bs!454464 () Bool)

(assert (= bs!454464 d!665988))

(declare-fun m!2674819 () Bool)

(assert (=> bs!454464 m!2674819))

(assert (=> bs!454408 d!665988))

(assert (=> bs!454408 d!665980))

(declare-fun d!665990 () Bool)

(assert (=> d!665990 (= (list!10108 x!430711) (list!10110 (c!357035 x!430711)))))

(declare-fun bs!454465 () Bool)

(assert (= bs!454465 d!665990))

(declare-fun m!2674821 () Bool)

(assert (=> bs!454465 m!2674821))

(assert (=> bs!454396 d!665990))

(declare-fun d!665992 () Bool)

(assert (=> d!665992 (= (list!10108 x!430712) (list!10110 (c!357035 x!430712)))))

(declare-fun bs!454466 () Bool)

(assert (= bs!454466 d!665992))

(declare-fun m!2674823 () Bool)

(assert (=> bs!454466 m!2674823))

(assert (=> bs!454396 d!665992))

(assert (=> b!2242588 d!665984))

(assert (=> b!2242588 d!665986))

(assert (=> bs!454392 d!665992))

(assert (=> b!2242591 d!665986))

(assert (=> b!2242582 d!665982))

(declare-fun d!665994 () Bool)

(assert (=> d!665994 (= (toValue!32 thiss!4969 x!430712) (FloatLiteralValue!8685 (efficientList!294 x!430712)))))

(declare-fun bs!454467 () Bool)

(assert (= bs!454467 d!665994))

(declare-fun m!2674825 () Bool)

(assert (=> bs!454467 m!2674825))

(assert (=> b!2242582 d!665994))

(assert (=> bs!454405 d!665988))

(assert (=> bs!454415 d!665980))

(assert (=> bs!454415 d!665988))

(assert (=> b!2242585 d!665984))

(assert (=> b!2242579 d!665994))

(assert (=> bs!454410 d!665992))

(assert (=> bs!454410 d!665980))

(assert (=> bs!454393 d!665992))

(assert (=> bs!454393 d!665990))

(assert (=> b!2242592 d!665986))

(assert (=> b!2242592 d!665984))

(assert (=> bs!454406 d!665988))

(assert (=> bs!454406 d!665992))

(assert (=> b!2242589 d!665994))

(assert (=> b!2242589 d!665986))

(assert (=> bs!454401 d!665992))

(assert (=> bs!454401 d!665988))

(assert (=> bs!454416 d!665980))

(assert (=> bs!454416 d!665992))

(assert (=> b!2242586 d!665984))

(assert (=> b!2242586 d!665994))

(assert (=> b!2242580 d!665994))

(assert (=> b!2242580 d!665982))

(assert (=> b!2242583 d!665994))

(assert (=> b!2242583 d!665984))

(assert (=> bs!454412 d!665990))

(assert (=> bs!454412 d!665980))

(assert (=> b!2242593 d!665986))

(assert (=> b!2242593 d!665994))

(assert (=> bs!454407 d!665988))

(assert (=> bs!454407 d!665990))

(assert (=> bs!454395 d!665990))

(assert (=> b!2242590 d!665982))

(assert (=> b!2242590 d!665986))

(assert (=> bs!454403 d!665990))

(assert (=> bs!454403 d!665988))

(assert (=> bs!454417 d!665980))

(assert (=> bs!454417 d!665990))

(assert (=> b!2242587 d!665984))

(assert (=> b!2242587 d!665982))

(assert (=> b!2242581 d!665982))

(declare-fun bs!454468 () Bool)

(assert (= bs!454468 (and m!2674765 b!2242579)))

(assert (=> bs!454468 m!2674765))

(assert (=> bs!454468 m!2674765))

(declare-fun bs!454469 () Bool)

(assert (= bs!454469 (and m!2674755 m!2674765 b!2242580)))

(assert (=> bs!454469 m!2674765))

(assert (=> bs!454469 m!2674763))

(declare-fun bs!454470 () Bool)

(assert (= bs!454470 (and m!2674755 b!2242581)))

(assert (=> bs!454470 m!2674763))

(assert (=> bs!454470 m!2674763))

(declare-fun bs!454471 () Bool)

(assert (= bs!454471 (and m!2674755 m!2674765 b!2242582)))

(assert (=> bs!454471 m!2674763))

(assert (=> bs!454471 m!2674765))

(declare-fun bs!454472 () Bool)

(assert (= bs!454472 (and m!2674751 m!2674765 m!2674757 b!2242583)))

(assert (=> bs!454472 m!2674765))

(assert (=> bs!454472 m!2674745))

(declare-fun bs!454473 () Bool)

(assert (= bs!454473 (and m!2674751 m!2674755 m!2674763 b!2242584)))

(assert (=> bs!454473 m!2674763))

(assert (=> bs!454473 m!2674745))

(declare-fun bs!454474 () Bool)

(assert (= bs!454474 (and m!2674751 b!2242585)))

(assert (=> bs!454474 m!2674745))

(assert (=> bs!454474 m!2674745))

(declare-fun bs!454475 () Bool)

(assert (= bs!454475 (and m!2674751 m!2674765 m!2674757 b!2242586)))

(assert (=> bs!454475 m!2674745))

(assert (=> bs!454475 m!2674765))

(declare-fun bs!454476 () Bool)

(assert (= bs!454476 (and m!2674751 m!2674755 m!2674763 b!2242587)))

(assert (=> bs!454476 m!2674745))

(assert (=> bs!454476 m!2674763))

(declare-fun bs!454477 () Bool)

(assert (= bs!454477 (and m!2674753 m!2674751 b!2242588)))

(assert (=> bs!454477 m!2674745))

(declare-fun m!2674827 () Bool)

(assert (=> bs!454477 m!2674827))

(declare-fun bs!454478 () Bool)

(assert (= bs!454478 (and m!2674753 m!2674765 m!2674757 b!2242589)))

(assert (=> bs!454478 m!2674765))

(assert (=> bs!454478 m!2674827))

(declare-fun bs!454479 () Bool)

(assert (= bs!454479 (and m!2674753 m!2674755 m!2674763 b!2242590)))

(assert (=> bs!454479 m!2674763))

(assert (=> bs!454479 m!2674827))

(declare-fun bs!454480 () Bool)

(assert (= bs!454480 (and m!2674753 b!2242591)))

(assert (=> bs!454480 m!2674827))

(assert (=> bs!454480 m!2674827))

(declare-fun bs!454481 () Bool)

(assert (= bs!454481 (and m!2674753 m!2674751 b!2242592)))

(assert (=> bs!454481 m!2674827))

(assert (=> bs!454481 m!2674745))

(declare-fun bs!454482 () Bool)

(assert (= bs!454482 (and m!2674753 m!2674765 m!2674757 b!2242593)))

(assert (=> bs!454482 m!2674827))

(assert (=> bs!454482 m!2674765))

(declare-fun bs!454483 () Bool)

(assert (= bs!454483 (and m!2674753 m!2674755 m!2674763 b!2242594)))

(assert (=> bs!454483 m!2674827))

(assert (=> bs!454483 m!2674763))

(push 1)

(assert (not d!665990))

(assert (not b!2242566))

(assert (not b!2242578))

(assert (not d!665986))

(assert (not d!665992))

(assert (not start!218550))

(assert (not d!665988))

(assert (not d!665984))

(assert (not b!2242575))

(assert (not d!665980))

(assert (not d!665982))

(assert (not bs!454390))

(assert (not b!2242576))

(assert (not b!2242565))

(assert (not d!665994))

(assert (not b!2242577))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2242652 () Bool)

(declare-fun e!1434260 () List!26579)

(declare-fun e!1434261 () List!26579)

(assert (=> b!2242652 (= e!1434260 e!1434261)))

(declare-fun c!357042 () Bool)

(assert (=> b!2242652 (= c!357042 (is-Leaf!12594 (c!357035 x!430711)))))

(declare-fun d!666012 () Bool)

(declare-fun c!357041 () Bool)

(assert (=> d!666012 (= c!357041 (is-Empty!8518 (c!357035 x!430711)))))

(assert (=> d!666012 (= (list!10110 (c!357035 x!430711)) e!1434260)))

(declare-fun b!2242651 () Bool)

(assert (=> b!2242651 (= e!1434260 Nil!26485)))

(declare-fun b!2242653 () Bool)

(declare-fun list!10112 (IArray!17041) List!26579)

(assert (=> b!2242653 (= e!1434261 (list!10112 (xs!11460 (c!357035 x!430711))))))

(declare-fun b!2242654 () Bool)

(declare-fun ++!6478 (List!26579 List!26579) List!26579)

(assert (=> b!2242654 (= e!1434261 (++!6478 (list!10110 (left!20131 (c!357035 x!430711))) (list!10110 (right!20461 (c!357035 x!430711)))))))

(assert (= (and d!666012 c!357041) b!2242651))

(assert (= (and d!666012 (not c!357041)) b!2242652))

(assert (= (and b!2242652 c!357042) b!2242653))

(assert (= (and b!2242652 (not c!357042)) b!2242654))

(declare-fun m!2674847 () Bool)

(assert (=> b!2242653 m!2674847))

(declare-fun m!2674849 () Bool)

(assert (=> b!2242654 m!2674849))

(declare-fun m!2674851 () Bool)

(assert (=> b!2242654 m!2674851))

(assert (=> b!2242654 m!2674849))

(assert (=> b!2242654 m!2674851))

(declare-fun m!2674853 () Bool)

(assert (=> b!2242654 m!2674853))

(assert (=> d!665990 d!666012))

(declare-fun b!2242656 () Bool)

(declare-fun e!1434262 () List!26579)

(declare-fun e!1434263 () List!26579)

(assert (=> b!2242656 (= e!1434262 e!1434263)))

(declare-fun c!357044 () Bool)

(assert (=> b!2242656 (= c!357044 (is-Leaf!12594 (c!357035 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710)))))))

(declare-fun d!666014 () Bool)

(declare-fun c!357043 () Bool)

(assert (=> d!666014 (= c!357043 (is-Empty!8518 (c!357035 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710)))))))

(assert (=> d!666014 (= (list!10110 (c!357035 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710)))) e!1434262)))

(declare-fun b!2242655 () Bool)

(assert (=> b!2242655 (= e!1434262 Nil!26485)))

(declare-fun b!2242657 () Bool)

(assert (=> b!2242657 (= e!1434263 (list!10112 (xs!11460 (c!357035 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710))))))))

(declare-fun b!2242658 () Bool)

(assert (=> b!2242658 (= e!1434263 (++!6478 (list!10110 (left!20131 (c!357035 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710))))) (list!10110 (right!20461 (c!357035 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710)))))))))

(assert (= (and d!666014 c!357043) b!2242655))

(assert (= (and d!666014 (not c!357043)) b!2242656))

(assert (= (and b!2242656 c!357044) b!2242657))

(assert (= (and b!2242656 (not c!357044)) b!2242658))

(declare-fun m!2674855 () Bool)

(assert (=> b!2242657 m!2674855))

(declare-fun m!2674857 () Bool)

(assert (=> b!2242658 m!2674857))

(declare-fun m!2674859 () Bool)

(assert (=> b!2242658 m!2674859))

(assert (=> b!2242658 m!2674857))

(assert (=> b!2242658 m!2674859))

(declare-fun m!2674861 () Bool)

(assert (=> b!2242658 m!2674861))

(assert (=> d!665980 d!666014))

(declare-fun b!2242660 () Bool)

(declare-fun e!1434264 () List!26579)

(declare-fun e!1434265 () List!26579)

(assert (=> b!2242660 (= e!1434264 e!1434265)))

(declare-fun c!357046 () Bool)

(assert (=> b!2242660 (= c!357046 (is-Leaf!12594 (c!357035 x!430712)))))

(declare-fun d!666016 () Bool)

(declare-fun c!357045 () Bool)

(assert (=> d!666016 (= c!357045 (is-Empty!8518 (c!357035 x!430712)))))

(assert (=> d!666016 (= (list!10110 (c!357035 x!430712)) e!1434264)))

(declare-fun b!2242659 () Bool)

(assert (=> b!2242659 (= e!1434264 Nil!26485)))

(declare-fun b!2242661 () Bool)

(assert (=> b!2242661 (= e!1434265 (list!10112 (xs!11460 (c!357035 x!430712))))))

(declare-fun b!2242662 () Bool)

(assert (=> b!2242662 (= e!1434265 (++!6478 (list!10110 (left!20131 (c!357035 x!430712))) (list!10110 (right!20461 (c!357035 x!430712)))))))

(assert (= (and d!666016 c!357045) b!2242659))

(assert (= (and d!666016 (not c!357045)) b!2242660))

(assert (= (and b!2242660 c!357046) b!2242661))

(assert (= (and b!2242660 (not c!357046)) b!2242662))

(declare-fun m!2674863 () Bool)

(assert (=> b!2242661 m!2674863))

(declare-fun m!2674865 () Bool)

(assert (=> b!2242662 m!2674865))

(declare-fun m!2674867 () Bool)

(assert (=> b!2242662 m!2674867))

(assert (=> b!2242662 m!2674865))

(assert (=> b!2242662 m!2674867))

(declare-fun m!2674869 () Bool)

(assert (=> b!2242662 m!2674869))

(assert (=> d!665992 d!666016))

(declare-fun d!666018 () Bool)

(declare-fun lt!834933 () List!26579)

(assert (=> d!666018 (= lt!834933 (list!10108 x!430710))))

(declare-fun efficientList!296 (Conc!8518 List!26579) List!26579)

(declare-fun efficientList$default$2!102 (Conc!8518) List!26579)

(assert (=> d!666018 (= lt!834933 (efficientList!296 (c!357035 x!430710) (efficientList$default$2!102 (c!357035 x!430710))))))

(assert (=> d!666018 (= (efficientList!294 x!430710) lt!834933)))

(declare-fun bs!454508 () Bool)

(assert (= bs!454508 d!666018))

(assert (=> bs!454508 m!2674751))

(declare-fun m!2674871 () Bool)

(assert (=> bs!454508 m!2674871))

(assert (=> bs!454508 m!2674871))

(declare-fun m!2674873 () Bool)

(assert (=> bs!454508 m!2674873))

(assert (=> d!665984 d!666018))

(declare-fun d!666020 () Bool)

(declare-fun lt!834934 () List!26579)

(assert (=> d!666020 (= lt!834934 (list!10108 x!430712))))

(assert (=> d!666020 (= lt!834934 (efficientList!296 (c!357035 x!430712) (efficientList$default$2!102 (c!357035 x!430712))))))

(assert (=> d!666020 (= (efficientList!294 x!430712) lt!834934)))

(declare-fun bs!454509 () Bool)

(assert (= bs!454509 d!666020))

(assert (=> bs!454509 m!2674757))

(declare-fun m!2674875 () Bool)

(assert (=> bs!454509 m!2674875))

(assert (=> bs!454509 m!2674875))

(declare-fun m!2674877 () Bool)

(assert (=> bs!454509 m!2674877))

(assert (=> d!665994 d!666020))

(declare-fun d!666022 () Bool)

(declare-fun lt!834935 () List!26579)

(assert (=> d!666022 (= lt!834935 (list!10108 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710))))))

(assert (=> d!666022 (= lt!834935 (efficientList!296 (c!357035 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710))) (efficientList$default$2!102 (c!357035 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710))))))))

(assert (=> d!666022 (= (efficientList!294 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710))) lt!834935)))

(declare-fun bs!454510 () Bool)

(assert (= bs!454510 d!666022))

(assert (=> bs!454510 m!2674747))

(assert (=> bs!454510 m!2674753))

(declare-fun m!2674879 () Bool)

(assert (=> bs!454510 m!2674879))

(assert (=> bs!454510 m!2674879))

(declare-fun m!2674881 () Bool)

(assert (=> bs!454510 m!2674881))

(assert (=> d!665986 d!666022))

(declare-fun d!666024 () Bool)

(declare-fun lt!834936 () List!26579)

(assert (=> d!666024 (= lt!834936 (list!10108 x!430711))))

(assert (=> d!666024 (= lt!834936 (efficientList!296 (c!357035 x!430711) (efficientList$default$2!102 (c!357035 x!430711))))))

(assert (=> d!666024 (= (efficientList!294 x!430711) lt!834936)))

(declare-fun bs!454511 () Bool)

(assert (= bs!454511 d!666024))

(assert (=> bs!454511 m!2674755))

(declare-fun m!2674883 () Bool)

(assert (=> bs!454511 m!2674883))

(assert (=> bs!454511 m!2674883))

(declare-fun m!2674885 () Bool)

(assert (=> bs!454511 m!2674885))

(assert (=> d!665982 d!666024))

(declare-fun b!2242664 () Bool)

(declare-fun e!1434266 () List!26579)

(declare-fun e!1434267 () List!26579)

(assert (=> b!2242664 (= e!1434266 e!1434267)))

(declare-fun c!357048 () Bool)

(assert (=> b!2242664 (= c!357048 (is-Leaf!12594 (c!357035 x!430710)))))

(declare-fun d!666026 () Bool)

(declare-fun c!357047 () Bool)

(assert (=> d!666026 (= c!357047 (is-Empty!8518 (c!357035 x!430710)))))

(assert (=> d!666026 (= (list!10110 (c!357035 x!430710)) e!1434266)))

(declare-fun b!2242663 () Bool)

(assert (=> b!2242663 (= e!1434266 Nil!26485)))

(declare-fun b!2242665 () Bool)

(assert (=> b!2242665 (= e!1434267 (list!10112 (xs!11460 (c!357035 x!430710))))))

(declare-fun b!2242666 () Bool)

(assert (=> b!2242666 (= e!1434267 (++!6478 (list!10110 (left!20131 (c!357035 x!430710))) (list!10110 (right!20461 (c!357035 x!430710)))))))

(assert (= (and d!666026 c!357047) b!2242663))

(assert (= (and d!666026 (not c!357047)) b!2242664))

(assert (= (and b!2242664 c!357048) b!2242665))

(assert (= (and b!2242664 (not c!357048)) b!2242666))

(declare-fun m!2674887 () Bool)

(assert (=> b!2242665 m!2674887))

(declare-fun m!2674889 () Bool)

(assert (=> b!2242666 m!2674889))

(declare-fun m!2674891 () Bool)

(assert (=> b!2242666 m!2674891))

(assert (=> b!2242666 m!2674889))

(assert (=> b!2242666 m!2674891))

(declare-fun m!2674893 () Bool)

(assert (=> b!2242666 m!2674893))

(assert (=> d!665988 d!666026))

(push 1)

(assert (not b!2242658))

(assert (not b!2242566))

(assert (not b!2242578))

(assert (not bs!454390))

(assert (not start!218550))

(assert (not d!666024))

(assert (not b!2242575))

(assert (not b!2242654))

(assert (not b!2242661))

(assert (not b!2242662))

(assert (not b!2242653))

(assert (not b!2242576))

(assert (not b!2242565))

(assert (not d!666018))

(assert (not d!666022))

(assert (not b!2242657))

(assert (not d!666020))

(assert (not b!2242665))

(assert (not b!2242666))

(assert (not b!2242577))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> bs!454390 d!665980))

(declare-fun d!666044 () Bool)

(declare-fun c!357064 () Bool)

(assert (=> d!666044 (= c!357064 (is-FloatLiteralValue!8685 (toValue!32 thiss!4969 x!430710)))))

(declare-fun e!1434282 () BalanceConc!16764)

(assert (=> d!666044 (= (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710)) e!1434282)))

(declare-fun b!2242695 () Bool)

(declare-fun seqFromList!2888 (List!26579) BalanceConc!16764)

(assert (=> b!2242695 (= e!1434282 (seqFromList!2888 (text!30845 (toValue!32 thiss!4969 x!430710))))))

(declare-fun b!2242696 () Bool)

(assert (=> b!2242696 (= e!1434282 (BalanceConc!16765 Empty!8518))))

(assert (= (and d!666044 c!357064) b!2242695))

(assert (= (and d!666044 (not c!357064)) b!2242696))

(declare-fun m!2674943 () Bool)

(assert (=> b!2242695 m!2674943))

(assert (=> bs!454390 d!666044))

(assert (=> bs!454390 d!665984))

(assert (=> bs!454390 d!665988))

(declare-fun d!666046 () Bool)

(declare-fun c!357067 () Bool)

(assert (=> d!666046 (= c!357067 (is-Node!8518 (c!357035 x!430710)))))

(declare-fun e!1434287 () Bool)

(assert (=> d!666046 (= (inv!35980 (c!357035 x!430710)) e!1434287)))

(declare-fun b!2242703 () Bool)

(declare-fun inv!35984 (Conc!8518) Bool)

(assert (=> b!2242703 (= e!1434287 (inv!35984 (c!357035 x!430710)))))

(declare-fun b!2242704 () Bool)

(declare-fun e!1434288 () Bool)

(assert (=> b!2242704 (= e!1434287 e!1434288)))

(declare-fun res!958262 () Bool)

(assert (=> b!2242704 (= res!958262 (not (is-Leaf!12594 (c!357035 x!430710))))))

(assert (=> b!2242704 (=> res!958262 e!1434288)))

(declare-fun b!2242705 () Bool)

(declare-fun inv!35985 (Conc!8518) Bool)

(assert (=> b!2242705 (= e!1434288 (inv!35985 (c!357035 x!430710)))))

(assert (= (and d!666046 c!357067) b!2242703))

(assert (= (and d!666046 (not c!357067)) b!2242704))

(assert (= (and b!2242704 (not res!958262)) b!2242705))

(declare-fun m!2674945 () Bool)

(assert (=> b!2242703 m!2674945))

(declare-fun m!2674947 () Bool)

(assert (=> b!2242705 m!2674947))

(assert (=> b!2242575 d!666046))

(assert (=> b!2242576 d!665982))

(assert (=> b!2242576 d!665994))

(declare-fun d!666048 () Bool)

(declare-fun c!357068 () Bool)

(assert (=> d!666048 (= c!357068 (is-Node!8518 (c!357035 x!430711)))))

(declare-fun e!1434289 () Bool)

(assert (=> d!666048 (= (inv!35980 (c!357035 x!430711)) e!1434289)))

(declare-fun b!2242706 () Bool)

(assert (=> b!2242706 (= e!1434289 (inv!35984 (c!357035 x!430711)))))

(declare-fun b!2242707 () Bool)

(declare-fun e!1434290 () Bool)

(assert (=> b!2242707 (= e!1434289 e!1434290)))

(declare-fun res!958263 () Bool)

(assert (=> b!2242707 (= res!958263 (not (is-Leaf!12594 (c!357035 x!430711))))))

(assert (=> b!2242707 (=> res!958263 e!1434290)))

(declare-fun b!2242708 () Bool)

(assert (=> b!2242708 (= e!1434290 (inv!35985 (c!357035 x!430711)))))

(assert (= (and d!666048 c!357068) b!2242706))

(assert (= (and d!666048 (not c!357068)) b!2242707))

(assert (= (and b!2242707 (not res!958263)) b!2242708))

(declare-fun m!2674949 () Bool)

(assert (=> b!2242706 m!2674949))

(declare-fun m!2674951 () Bool)

(assert (=> b!2242708 m!2674951))

(assert (=> b!2242577 d!666048))

(declare-fun d!666050 () Bool)

(declare-fun c!357069 () Bool)

(assert (=> d!666050 (= c!357069 (is-Node!8518 (c!357035 x!430712)))))

(declare-fun e!1434291 () Bool)

(assert (=> d!666050 (= (inv!35980 (c!357035 x!430712)) e!1434291)))

(declare-fun b!2242709 () Bool)

(assert (=> b!2242709 (= e!1434291 (inv!35984 (c!357035 x!430712)))))

(declare-fun b!2242710 () Bool)

(declare-fun e!1434292 () Bool)

(assert (=> b!2242710 (= e!1434291 e!1434292)))

(declare-fun res!958264 () Bool)

(assert (=> b!2242710 (= res!958264 (not (is-Leaf!12594 (c!357035 x!430712))))))

(assert (=> b!2242710 (=> res!958264 e!1434292)))

(declare-fun b!2242711 () Bool)

(assert (=> b!2242711 (= e!1434292 (inv!35985 (c!357035 x!430712)))))

(assert (= (and d!666050 c!357069) b!2242709))

(assert (= (and d!666050 (not c!357069)) b!2242710))

(assert (= (and b!2242710 (not res!958264)) b!2242711))

(declare-fun m!2674953 () Bool)

(assert (=> b!2242709 m!2674953))

(declare-fun m!2674955 () Bool)

(assert (=> b!2242711 m!2674955))

(assert (=> b!2242578 d!666050))

(assert (=> d!666020 d!665992))

(declare-fun d!666052 () Bool)

(declare-fun lt!834955 () List!26579)

(assert (=> d!666052 (= lt!834955 (++!6478 (list!10110 (c!357035 x!430712)) (efficientList$default$2!102 (c!357035 x!430712))))))

(declare-fun e!1434299 () List!26579)

(assert (=> d!666052 (= lt!834955 e!1434299)))

(declare-fun c!357078 () Bool)

(assert (=> d!666052 (= c!357078 (is-Empty!8518 (c!357035 x!430712)))))

(assert (=> d!666052 (= (efficientList!296 (c!357035 x!430712) (efficientList$default$2!102 (c!357035 x!430712))) lt!834955)))

(declare-fun b!2242724 () Bool)

(declare-fun e!1434301 () List!26579)

(assert (=> b!2242724 (= e!1434299 e!1434301)))

(declare-fun c!357077 () Bool)

(assert (=> b!2242724 (= c!357077 (is-Leaf!12594 (c!357035 x!430712)))))

(declare-fun b!2242725 () Bool)

(declare-fun call!135393 () List!26579)

(assert (=> b!2242725 (= e!1434301 call!135393)))

(declare-fun b!2242726 () Bool)

(declare-fun e!1434300 () List!26579)

(declare-fun efficientList!298 (IArray!17041) List!26579)

(assert (=> b!2242726 (= e!1434300 (efficientList!298 (xs!11460 (c!357035 x!430712))))))

(declare-fun bm!135388 () Bool)

(declare-fun c!357076 () Bool)

(assert (=> bm!135388 (= c!357076 c!357077)))

(assert (=> bm!135388 (= call!135393 (++!6478 e!1434300 (efficientList$default$2!102 (c!357035 x!430712))))))

(declare-fun b!2242727 () Bool)

(declare-datatypes ((Unit!39486 0))(
  ( (Unit!39487) )
))
(declare-fun lt!834956 () Unit!39486)

(declare-fun lt!834953 () Unit!39486)

(assert (=> b!2242727 (= lt!834956 lt!834953)))

(declare-fun lt!834957 () List!26579)

(declare-fun lt!834954 () List!26579)

(assert (=> b!2242727 (= (++!6478 (++!6478 lt!834957 lt!834954) (efficientList$default$2!102 (c!357035 x!430712))) (++!6478 lt!834957 call!135393))))

(declare-fun lemmaConcatAssociativity!1332 (List!26579 List!26579 List!26579) Unit!39486)

(assert (=> b!2242727 (= lt!834953 (lemmaConcatAssociativity!1332 lt!834957 lt!834954 (efficientList$default$2!102 (c!357035 x!430712))))))

(assert (=> b!2242727 (= lt!834954 (list!10110 (right!20461 (c!357035 x!430712))))))

(assert (=> b!2242727 (= lt!834957 (list!10110 (left!20131 (c!357035 x!430712))))))

(assert (=> b!2242727 (= e!1434301 (efficientList!296 (left!20131 (c!357035 x!430712)) (efficientList!296 (right!20461 (c!357035 x!430712)) (efficientList$default$2!102 (c!357035 x!430712)))))))

(declare-fun b!2242728 () Bool)

(assert (=> b!2242728 (= e!1434299 (efficientList$default$2!102 (c!357035 x!430712)))))

(declare-fun b!2242729 () Bool)

(assert (=> b!2242729 (= e!1434300 lt!834954)))

(assert (= (and d!666052 c!357078) b!2242728))

(assert (= (and d!666052 (not c!357078)) b!2242724))

(assert (= (and b!2242724 c!357077) b!2242725))

(assert (= (and b!2242724 (not c!357077)) b!2242727))

(assert (= (or b!2242725 b!2242727) bm!135388))

(assert (= (and bm!135388 c!357076) b!2242726))

(assert (= (and bm!135388 (not c!357076)) b!2242729))

(assert (=> d!666052 m!2674823))

(assert (=> d!666052 m!2674823))

(assert (=> d!666052 m!2674875))

(declare-fun m!2674957 () Bool)

(assert (=> d!666052 m!2674957))

(declare-fun m!2674959 () Bool)

(assert (=> b!2242726 m!2674959))

(assert (=> bm!135388 m!2674875))

(declare-fun m!2674961 () Bool)

(assert (=> bm!135388 m!2674961))

(assert (=> b!2242727 m!2674875))

(declare-fun m!2674963 () Bool)

(assert (=> b!2242727 m!2674963))

(declare-fun m!2674965 () Bool)

(assert (=> b!2242727 m!2674965))

(declare-fun m!2674967 () Bool)

(assert (=> b!2242727 m!2674967))

(assert (=> b!2242727 m!2674875))

(declare-fun m!2674969 () Bool)

(assert (=> b!2242727 m!2674969))

(assert (=> b!2242727 m!2674865))

(assert (=> b!2242727 m!2674867))

(declare-fun m!2674971 () Bool)

(assert (=> b!2242727 m!2674971))

(declare-fun m!2674973 () Bool)

(assert (=> b!2242727 m!2674973))

(assert (=> b!2242727 m!2674967))

(assert (=> b!2242727 m!2674875))

(assert (=> b!2242727 m!2674971))

(assert (=> d!666020 d!666052))

(declare-fun d!666054 () Bool)

(assert (=> d!666054 (= (efficientList$default$2!102 (c!357035 x!430712)) Nil!26485)))

(assert (=> d!666020 d!666054))

(declare-fun bs!454516 () Bool)

(declare-fun d!666056 () Bool)

(assert (= bs!454516 (and d!666056 start!218550)))

(declare-fun lambda!85000 () Int)

(assert (=> bs!454516 (not (= lambda!85000 lambda!84972))))

(assert (=> d!666056 true))

(declare-fun order!14859 () Int)

(declare-fun order!14857 () Int)

(declare-fun dynLambda!11548 (Int Int) Int)

(declare-fun dynLambda!11549 (Int Int) Int)

(assert (=> d!666056 (< (dynLambda!11548 order!14857 lambda!84973) (dynLambda!11549 order!14859 lambda!85000))))

(assert (=> d!666056 true))

(declare-fun order!14861 () Int)

(declare-fun dynLambda!11550 (Int Int) Int)

(assert (=> d!666056 (< (dynLambda!11550 order!14861 lambda!84974) (dynLambda!11549 order!14859 lambda!85000))))

(assert (=> d!666056 (= (semiInverseModEq!1685 lambda!84973 lambda!84974) (Forall!1054 lambda!85000))))

(declare-fun bs!454517 () Bool)

(assert (= bs!454517 d!666056))

(declare-fun m!2674975 () Bool)

(assert (=> bs!454517 m!2674975))

(assert (=> b!2242565 d!666056))

(declare-fun d!666058 () Bool)

(declare-fun choose!13146 (Int) Bool)

(assert (=> d!666058 (= (Forall!1054 lambda!84972) (choose!13146 lambda!84972))))

(declare-fun bs!454518 () Bool)

(assert (= bs!454518 d!666058))

(declare-fun m!2674977 () Bool)

(assert (=> bs!454518 m!2674977))

(assert (=> b!2242565 d!666058))

(declare-fun d!666060 () Bool)

(declare-fun isBalanced!2644 (Conc!8518) Bool)

(assert (=> d!666060 (= (inv!35981 x!430711) (isBalanced!2644 (c!357035 x!430711)))))

(declare-fun bs!454519 () Bool)

(assert (= bs!454519 d!666060))

(declare-fun m!2674979 () Bool)

(assert (=> bs!454519 m!2674979))

(assert (=> b!2242566 d!666060))

(assert (=> b!2242566 d!665990))

(declare-fun d!666062 () Bool)

(assert (=> d!666062 (= (inv!35981 x!430712) (isBalanced!2644 (c!357035 x!430712)))))

(declare-fun bs!454520 () Bool)

(assert (= bs!454520 d!666062))

(declare-fun m!2674981 () Bool)

(assert (=> bs!454520 m!2674981))

(assert (=> b!2242566 d!666062))

(declare-fun d!666064 () Bool)

(declare-fun choose!13147 (Int) Bool)

(assert (=> d!666064 (= (Forall2!671 lambda!84975) (choose!13147 lambda!84975))))

(declare-fun bs!454521 () Bool)

(assert (= bs!454521 d!666064))

(declare-fun m!2674983 () Bool)

(assert (=> bs!454521 m!2674983))

(assert (=> b!2242566 d!666064))

(assert (=> b!2242566 d!665992))

(declare-fun d!666066 () Bool)

(assert (=> d!666066 (= (inv!35981 x!430710) (isBalanced!2644 (c!357035 x!430710)))))

(declare-fun bs!454522 () Bool)

(assert (= bs!454522 d!666066))

(declare-fun m!2674985 () Bool)

(assert (=> bs!454522 m!2674985))

(assert (=> start!218550 d!666066))

(assert (=> start!218550 d!665980))

(assert (=> start!218550 d!666058))

(assert (=> start!218550 d!666044))

(assert (=> start!218550 d!665988))

(assert (=> start!218550 d!665984))

(assert (=> d!666022 d!665980))

(declare-fun d!666068 () Bool)

(declare-fun lt!834960 () List!26579)

(assert (=> d!666068 (= lt!834960 (++!6478 (list!10110 (c!357035 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710)))) (efficientList$default$2!102 (c!357035 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710))))))))

(declare-fun e!1434302 () List!26579)

(assert (=> d!666068 (= lt!834960 e!1434302)))

(declare-fun c!357081 () Bool)

(assert (=> d!666068 (= c!357081 (is-Empty!8518 (c!357035 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710)))))))

(assert (=> d!666068 (= (efficientList!296 (c!357035 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710))) (efficientList$default$2!102 (c!357035 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710))))) lt!834960)))

(declare-fun b!2242734 () Bool)

(declare-fun e!1434304 () List!26579)

(assert (=> b!2242734 (= e!1434302 e!1434304)))

(declare-fun c!357080 () Bool)

(assert (=> b!2242734 (= c!357080 (is-Leaf!12594 (c!357035 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710)))))))

(declare-fun b!2242735 () Bool)

(declare-fun call!135394 () List!26579)

(assert (=> b!2242735 (= e!1434304 call!135394)))

(declare-fun b!2242736 () Bool)

(declare-fun e!1434303 () List!26579)

(assert (=> b!2242736 (= e!1434303 (efficientList!298 (xs!11460 (c!357035 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710))))))))

(declare-fun bm!135389 () Bool)

(declare-fun c!357079 () Bool)

(assert (=> bm!135389 (= c!357079 c!357080)))

(assert (=> bm!135389 (= call!135394 (++!6478 e!1434303 (efficientList$default$2!102 (c!357035 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710))))))))

(declare-fun b!2242737 () Bool)

(declare-fun lt!834961 () Unit!39486)

(declare-fun lt!834958 () Unit!39486)

(assert (=> b!2242737 (= lt!834961 lt!834958)))

(declare-fun lt!834962 () List!26579)

(declare-fun lt!834959 () List!26579)

(assert (=> b!2242737 (= (++!6478 (++!6478 lt!834962 lt!834959) (efficientList$default$2!102 (c!357035 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710))))) (++!6478 lt!834962 call!135394))))

(assert (=> b!2242737 (= lt!834958 (lemmaConcatAssociativity!1332 lt!834962 lt!834959 (efficientList$default$2!102 (c!357035 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710))))))))

(assert (=> b!2242737 (= lt!834959 (list!10110 (right!20461 (c!357035 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710))))))))

(assert (=> b!2242737 (= lt!834962 (list!10110 (left!20131 (c!357035 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710))))))))

(assert (=> b!2242737 (= e!1434304 (efficientList!296 (left!20131 (c!357035 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710)))) (efficientList!296 (right!20461 (c!357035 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710)))) (efficientList$default$2!102 (c!357035 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710)))))))))

(declare-fun b!2242738 () Bool)

(assert (=> b!2242738 (= e!1434302 (efficientList$default$2!102 (c!357035 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710)))))))

(declare-fun b!2242739 () Bool)

(assert (=> b!2242739 (= e!1434303 lt!834959)))

(assert (= (and d!666068 c!357081) b!2242738))

(assert (= (and d!666068 (not c!357081)) b!2242734))

(assert (= (and b!2242734 c!357080) b!2242735))

(assert (= (and b!2242734 (not c!357080)) b!2242737))

(assert (= (or b!2242735 b!2242737) bm!135389))

(assert (= (and bm!135389 c!357079) b!2242736))

(assert (= (and bm!135389 (not c!357079)) b!2242739))

(assert (=> d!666068 m!2674811))

(assert (=> d!666068 m!2674811))

(assert (=> d!666068 m!2674879))

(declare-fun m!2674987 () Bool)

(assert (=> d!666068 m!2674987))

(declare-fun m!2674989 () Bool)

(assert (=> b!2242736 m!2674989))

(assert (=> bm!135389 m!2674879))

(declare-fun m!2674991 () Bool)

(assert (=> bm!135389 m!2674991))

(assert (=> b!2242737 m!2674879))

(declare-fun m!2674993 () Bool)

(assert (=> b!2242737 m!2674993))

(declare-fun m!2674995 () Bool)

(assert (=> b!2242737 m!2674995))

(declare-fun m!2674997 () Bool)

(assert (=> b!2242737 m!2674997))

(assert (=> b!2242737 m!2674879))

(declare-fun m!2674999 () Bool)

(assert (=> b!2242737 m!2674999))

(assert (=> b!2242737 m!2674857))

(assert (=> b!2242737 m!2674859))

(declare-fun m!2675001 () Bool)

(assert (=> b!2242737 m!2675001))

(declare-fun m!2675003 () Bool)

(assert (=> b!2242737 m!2675003))

(assert (=> b!2242737 m!2674997))

(assert (=> b!2242737 m!2674879))

(assert (=> b!2242737 m!2675001))

(assert (=> d!666022 d!666068))

(declare-fun d!666070 () Bool)

(assert (=> d!666070 (= (efficientList$default$2!102 (c!357035 (toCharacters!25 thiss!4969 (toValue!32 thiss!4969 x!430710)))) Nil!26485)))

(assert (=> d!666022 d!666070))

(assert (=> d!666018 d!665988))

(declare-fun d!666072 () Bool)

(declare-fun lt!834965 () List!26579)

(assert (=> d!666072 (= lt!834965 (++!6478 (list!10110 (c!357035 x!430710)) (efficientList$default$2!102 (c!357035 x!430710))))))

(declare-fun e!1434305 () List!26579)

(assert (=> d!666072 (= lt!834965 e!1434305)))

(declare-fun c!357084 () Bool)

(assert (=> d!666072 (= c!357084 (is-Empty!8518 (c!357035 x!430710)))))

(assert (=> d!666072 (= (efficientList!296 (c!357035 x!430710) (efficientList$default$2!102 (c!357035 x!430710))) lt!834965)))

(declare-fun b!2242740 () Bool)

(declare-fun e!1434307 () List!26579)

(assert (=> b!2242740 (= e!1434305 e!1434307)))

(declare-fun c!357083 () Bool)

(assert (=> b!2242740 (= c!357083 (is-Leaf!12594 (c!357035 x!430710)))))

(declare-fun b!2242741 () Bool)

(declare-fun call!135395 () List!26579)

(assert (=> b!2242741 (= e!1434307 call!135395)))

(declare-fun b!2242742 () Bool)

(declare-fun e!1434306 () List!26579)

(assert (=> b!2242742 (= e!1434306 (efficientList!298 (xs!11460 (c!357035 x!430710))))))

(declare-fun bm!135390 () Bool)

(declare-fun c!357082 () Bool)

(assert (=> bm!135390 (= c!357082 c!357083)))

(assert (=> bm!135390 (= call!135395 (++!6478 e!1434306 (efficientList$default$2!102 (c!357035 x!430710))))))

(declare-fun b!2242743 () Bool)

(declare-fun lt!834966 () Unit!39486)

(declare-fun lt!834963 () Unit!39486)

(assert (=> b!2242743 (= lt!834966 lt!834963)))

(declare-fun lt!834967 () List!26579)

(declare-fun lt!834964 () List!26579)

(assert (=> b!2242743 (= (++!6478 (++!6478 lt!834967 lt!834964) (efficientList$default$2!102 (c!357035 x!430710))) (++!6478 lt!834967 call!135395))))

(assert (=> b!2242743 (= lt!834963 (lemmaConcatAssociativity!1332 lt!834967 lt!834964 (efficientList$default$2!102 (c!357035 x!430710))))))

(assert (=> b!2242743 (= lt!834964 (list!10110 (right!20461 (c!357035 x!430710))))))

(assert (=> b!2242743 (= lt!834967 (list!10110 (left!20131 (c!357035 x!430710))))))

(assert (=> b!2242743 (= e!1434307 (efficientList!296 (left!20131 (c!357035 x!430710)) (efficientList!296 (right!20461 (c!357035 x!430710)) (efficientList$default$2!102 (c!357035 x!430710)))))))

(declare-fun b!2242744 () Bool)

(assert (=> b!2242744 (= e!1434305 (efficientList$default$2!102 (c!357035 x!430710)))))

(declare-fun b!2242745 () Bool)

(assert (=> b!2242745 (= e!1434306 lt!834964)))

(assert (= (and d!666072 c!357084) b!2242744))

(assert (= (and d!666072 (not c!357084)) b!2242740))

(assert (= (and b!2242740 c!357083) b!2242741))

(assert (= (and b!2242740 (not c!357083)) b!2242743))

(assert (= (or b!2242741 b!2242743) bm!135390))

(assert (= (and bm!135390 c!357082) b!2242742))

(assert (= (and bm!135390 (not c!357082)) b!2242745))

(assert (=> d!666072 m!2674819))

(assert (=> d!666072 m!2674819))

(assert (=> d!666072 m!2674871))

(declare-fun m!2675005 () Bool)

(assert (=> d!666072 m!2675005))

(declare-fun m!2675007 () Bool)

(assert (=> b!2242742 m!2675007))

(assert (=> bm!135390 m!2674871))

(declare-fun m!2675009 () Bool)

(assert (=> bm!135390 m!2675009))

(assert (=> b!2242743 m!2674871))

(declare-fun m!2675011 () Bool)

(assert (=> b!2242743 m!2675011))

(declare-fun m!2675013 () Bool)

(assert (=> b!2242743 m!2675013))

(declare-fun m!2675015 () Bool)

(assert (=> b!2242743 m!2675015))

(assert (=> b!2242743 m!2674871))

(declare-fun m!2675017 () Bool)

(assert (=> b!2242743 m!2675017))

(assert (=> b!2242743 m!2674889))

(assert (=> b!2242743 m!2674891))

(declare-fun m!2675019 () Bool)

(assert (=> b!2242743 m!2675019))

(declare-fun m!2675021 () Bool)

(assert (=> b!2242743 m!2675021))

(assert (=> b!2242743 m!2675015))

(assert (=> b!2242743 m!2674871))

(assert (=> b!2242743 m!2675019))

(assert (=> d!666018 d!666072))

(declare-fun d!666074 () Bool)

(assert (=> d!666074 (= (efficientList$default$2!102 (c!357035 x!430710)) Nil!26485)))

(assert (=> d!666018 d!666074))

(assert (=> d!666024 d!665990))

(declare-fun d!666076 () Bool)

(declare-fun lt!834970 () List!26579)

(assert (=> d!666076 (= lt!834970 (++!6478 (list!10110 (c!357035 x!430711)) (efficientList$default$2!102 (c!357035 x!430711))))))

(declare-fun e!1434308 () List!26579)

(assert (=> d!666076 (= lt!834970 e!1434308)))

(declare-fun c!357087 () Bool)

(assert (=> d!666076 (= c!357087 (is-Empty!8518 (c!357035 x!430711)))))

(assert (=> d!666076 (= (efficientList!296 (c!357035 x!430711) (efficientList$default$2!102 (c!357035 x!430711))) lt!834970)))

(declare-fun b!2242746 () Bool)

(declare-fun e!1434310 () List!26579)

(assert (=> b!2242746 (= e!1434308 e!1434310)))

(declare-fun c!357086 () Bool)

(assert (=> b!2242746 (= c!357086 (is-Leaf!12594 (c!357035 x!430711)))))

(declare-fun b!2242747 () Bool)

(declare-fun call!135396 () List!26579)

(assert (=> b!2242747 (= e!1434310 call!135396)))

(declare-fun b!2242748 () Bool)

(declare-fun e!1434309 () List!26579)

(assert (=> b!2242748 (= e!1434309 (efficientList!298 (xs!11460 (c!357035 x!430711))))))

(declare-fun bm!135391 () Bool)

(declare-fun c!357085 () Bool)

(assert (=> bm!135391 (= c!357085 c!357086)))

(assert (=> bm!135391 (= call!135396 (++!6478 e!1434309 (efficientList$default$2!102 (c!357035 x!430711))))))

(declare-fun b!2242749 () Bool)

(declare-fun lt!834971 () Unit!39486)

(declare-fun lt!834968 () Unit!39486)

(assert (=> b!2242749 (= lt!834971 lt!834968)))

(declare-fun lt!834969 () List!26579)

(declare-fun lt!834972 () List!26579)

(assert (=> b!2242749 (= (++!6478 (++!6478 lt!834972 lt!834969) (efficientList$default$2!102 (c!357035 x!430711))) (++!6478 lt!834972 call!135396))))

(assert (=> b!2242749 (= lt!834968 (lemmaConcatAssociativity!1332 lt!834972 lt!834969 (efficientList$default$2!102 (c!357035 x!430711))))))

(assert (=> b!2242749 (= lt!834969 (list!10110 (right!20461 (c!357035 x!430711))))))

(assert (=> b!2242749 (= lt!834972 (list!10110 (left!20131 (c!357035 x!430711))))))

(assert (=> b!2242749 (= e!1434310 (efficientList!296 (left!20131 (c!357035 x!430711)) (efficientList!296 (right!20461 (c!357035 x!430711)) (efficientList$default$2!102 (c!357035 x!430711)))))))

(declare-fun b!2242750 () Bool)

(assert (=> b!2242750 (= e!1434308 (efficientList$default$2!102 (c!357035 x!430711)))))

(declare-fun b!2242751 () Bool)

(assert (=> b!2242751 (= e!1434309 lt!834969)))

(assert (= (and d!666076 c!357087) b!2242750))

(assert (= (and d!666076 (not c!357087)) b!2242746))

(assert (= (and b!2242746 c!357086) b!2242747))

(assert (= (and b!2242746 (not c!357086)) b!2242749))

(assert (= (or b!2242747 b!2242749) bm!135391))

(assert (= (and bm!135391 c!357085) b!2242748))

(assert (= (and bm!135391 (not c!357085)) b!2242751))

(assert (=> d!666076 m!2674821))

(assert (=> d!666076 m!2674821))

(assert (=> d!666076 m!2674883))

(declare-fun m!2675023 () Bool)

(assert (=> d!666076 m!2675023))

(declare-fun m!2675025 () Bool)

(assert (=> b!2242748 m!2675025))

(assert (=> bm!135391 m!2674883))

(declare-fun m!2675027 () Bool)

(assert (=> bm!135391 m!2675027))

(assert (=> b!2242749 m!2674883))

(declare-fun m!2675029 () Bool)

(assert (=> b!2242749 m!2675029))

(declare-fun m!2675031 () Bool)

(assert (=> b!2242749 m!2675031))

(declare-fun m!2675033 () Bool)

(assert (=> b!2242749 m!2675033))

(assert (=> b!2242749 m!2674883))

(declare-fun m!2675035 () Bool)

(assert (=> b!2242749 m!2675035))

(assert (=> b!2242749 m!2674849))

(assert (=> b!2242749 m!2674851))

(declare-fun m!2675037 () Bool)

(assert (=> b!2242749 m!2675037))

(declare-fun m!2675039 () Bool)

(assert (=> b!2242749 m!2675039))

(assert (=> b!2242749 m!2675033))

(assert (=> b!2242749 m!2674883))

(assert (=> b!2242749 m!2675037))

(assert (=> d!666024 d!666076))

(declare-fun d!666078 () Bool)

(assert (=> d!666078 (= (efficientList$default$2!102 (c!357035 x!430711)) Nil!26485)))

(assert (=> d!666024 d!666078))

(declare-fun e!1434315 () Bool)

(declare-fun tp!707361 () Bool)

(declare-fun tp!707360 () Bool)

(declare-fun b!2242758 () Bool)

(assert (=> b!2242758 (= e!1434315 (and (inv!35980 (left!20131 (c!357035 x!430710))) tp!707360 (inv!35980 (right!20461 (c!357035 x!430710))) tp!707361))))

(declare-fun b!2242759 () Bool)

(declare-fun inv!35986 (IArray!17041) Bool)

(assert (=> b!2242759 (= e!1434315 (inv!35986 (xs!11460 (c!357035 x!430710))))))

(assert (=> b!2242575 (= tp!707344 (and (inv!35980 (c!357035 x!430710)) e!1434315))))

(assert (= (and b!2242575 (is-Node!8518 (c!357035 x!430710))) b!2242758))

(assert (= (and b!2242575 (is-Leaf!12594 (c!357035 x!430710))) b!2242759))

(declare-fun m!2675041 () Bool)

(assert (=> b!2242758 m!2675041))

(declare-fun m!2675043 () Bool)

(assert (=> b!2242758 m!2675043))

(declare-fun m!2675045 () Bool)

(assert (=> b!2242759 m!2675045))

(assert (=> b!2242575 m!2674743))

(declare-fun tp!707363 () Bool)

(declare-fun tp!707362 () Bool)

(declare-fun b!2242760 () Bool)

(declare-fun e!1434317 () Bool)

(assert (=> b!2242760 (= e!1434317 (and (inv!35980 (left!20131 (c!357035 x!430711))) tp!707362 (inv!35980 (right!20461 (c!357035 x!430711))) tp!707363))))

(declare-fun b!2242761 () Bool)

(assert (=> b!2242761 (= e!1434317 (inv!35986 (xs!11460 (c!357035 x!430711))))))

(assert (=> b!2242577 (= tp!707346 (and (inv!35980 (c!357035 x!430711)) e!1434317))))

(assert (= (and b!2242577 (is-Node!8518 (c!357035 x!430711))) b!2242760))

(assert (= (and b!2242577 (is-Leaf!12594 (c!357035 x!430711))) b!2242761))

(declare-fun m!2675047 () Bool)

(assert (=> b!2242760 m!2675047))

(declare-fun m!2675049 () Bool)

(assert (=> b!2242760 m!2675049))

(declare-fun m!2675051 () Bool)

(assert (=> b!2242761 m!2675051))

(assert (=> b!2242577 m!2674767))

(declare-fun tp!707365 () Bool)

(declare-fun tp!707364 () Bool)

(declare-fun e!1434319 () Bool)

(declare-fun b!2242762 () Bool)

(assert (=> b!2242762 (= e!1434319 (and (inv!35980 (left!20131 (c!357035 x!430712))) tp!707364 (inv!35980 (right!20461 (c!357035 x!430712))) tp!707365))))

(declare-fun b!2242763 () Bool)

(assert (=> b!2242763 (= e!1434319 (inv!35986 (xs!11460 (c!357035 x!430712))))))

(assert (=> b!2242578 (= tp!707345 (and (inv!35980 (c!357035 x!430712)) e!1434319))))

(assert (= (and b!2242578 (is-Node!8518 (c!357035 x!430712))) b!2242762))

(assert (= (and b!2242578 (is-Leaf!12594 (c!357035 x!430712))) b!2242763))

(declare-fun m!2675053 () Bool)

(assert (=> b!2242762 m!2675053))

(declare-fun m!2675055 () Bool)

(assert (=> b!2242762 m!2675055))

(declare-fun m!2675057 () Bool)

(assert (=> b!2242763 m!2675057))

(assert (=> b!2242578 m!2674769))

(push 1)

(assert (not b!2242658))

(assert (not b!2242578))

(assert (not b!2242748))

(assert (not b!2242763))

(assert (not b!2242743))

(assert (not d!666058))

(assert (not b!2242736))

(assert (not b!2242575))

(assert (not b!2242703))

(assert (not b!2242695))

(assert (not b!2242761))

(assert (not b!2242654))

(assert (not d!666072))

(assert (not d!666066))

(assert (not b!2242708))

(assert (not b!2242706))

(assert (not b!2242742))

(assert (not b!2242760))

(assert (not b!2242758))

(assert (not d!666056))

(assert (not d!666064))

(assert (not b!2242727))

(assert (not d!666060))

(assert (not b!2242737))

(assert (not b!2242709))

(assert (not b!2242662))

(assert (not b!2242653))

(assert (not b!2242749))

(assert (not d!666052))

(assert (not d!666062))

(assert (not b!2242759))

(assert (not b!2242762))

(assert (not d!666076))

(assert (not bm!135389))

(assert (not b!2242726))

(assert (not b!2242711))

(assert (not b!2242657))

(assert (not d!666068))

(assert (not b!2242665))

(assert (not b!2242705))

(assert (not b!2242661))

(assert (not bm!135388))

(assert (not bm!135390))

(assert (not b!2242666))

(assert (not b!2242577))

(assert (not bm!135391))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

