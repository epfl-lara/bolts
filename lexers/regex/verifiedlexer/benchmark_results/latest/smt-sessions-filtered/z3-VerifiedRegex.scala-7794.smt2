; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!409544 () Bool)

(assert start!409544)

(assert (=> start!409544 true))

(declare-fun b!4270467 () Bool)

(assert (=> b!4270467 true))

(assert (=> b!4270467 true))

(assert (=> b!4270467 true))

(declare-fun b!4270477 () Bool)

(declare-fun e!2651407 () Bool)

(declare-datatypes ((List!47421 0))(
  ( (Nil!47297) (Cons!47297 (h!52717 (_ BitVec 16)) (t!353684 List!47421)) )
))
(declare-datatypes ((IArray!28563 0))(
  ( (IArray!28564 (innerList!14339 List!47421)) )
))
(declare-datatypes ((Conc!14279 0))(
  ( (Node!14279 (left!35129 Conc!14279) (right!35459 Conc!14279) (csize!28788 Int) (cheight!14490 Int)) (Leaf!22074 (xs!17585 IArray!28563) (csize!28789 Int)) (Empty!14279) )
))
(declare-datatypes ((BalanceConc!28068 0))(
  ( (BalanceConc!28069 (c!726512 Conc!14279)) )
))
(declare-fun x!740358 () BalanceConc!28068)

(declare-fun tp!1307934 () Bool)

(declare-fun inv!62364 (Conc!14279) Bool)

(assert (=> b!4270477 (= e!2651407 (and (inv!62364 (c!726512 x!740358)) tp!1307934))))

(declare-datatypes ((BooleanLiteralValueInjection!14 0))(
  ( (BooleanLiteralValueInjection!15) )
))
(declare-fun thiss!2453 () BooleanLiteralValueInjection!14)

(declare-fun inst!1672 () Bool)

(declare-fun inv!62365 (BalanceConc!28068) Bool)

(declare-fun list!17139 (BalanceConc!28068) List!47421)

(declare-datatypes ((TokenValue!8252 0))(
  ( (FloatLiteralValue!16504 (text!58209 List!47421)) (TokenValueExt!8251 (__x!28698 Int)) (Broken!41260 (value!249154 List!47421)) (Object!8375) (End!8252) (Def!8252) (Underscore!8252) (Match!8252) (Else!8252) (Error!8252) (Case!8252) (If!8252) (Extends!8252) (Abstract!8252) (Class!8252) (Val!8252) (DelimiterValue!16504 (del!8312 List!47421)) (KeywordValue!8258 (value!249155 List!47421)) (CommentValue!16504 (value!249156 List!47421)) (WhitespaceValue!16504 (value!249157 List!47421)) (IndentationValue!8252 (value!249158 List!47421)) (String!55231) (Int32!8252) (Broken!41261 (value!249159 List!47421)) (Boolean!8253) (Unit!66210) (OperatorValue!8255 (op!8312 List!47421)) (IdentifierValue!16504 (value!249160 List!47421)) (IdentifierValue!16505 (value!249161 List!47421)) (WhitespaceValue!16505 (value!249162 List!47421)) (True!16504) (False!16504) (Broken!41262 (value!249163 List!47421)) (Broken!41263 (value!249164 List!47421)) (True!16505) (RightBrace!8252) (RightBracket!8252) (Colon!8252) (Null!8252) (Comma!8252) (LeftBracket!8252) (False!16505) (LeftBrace!8252) (ImaginaryLiteralValue!8252 (text!58210 List!47421)) (StringLiteralValue!24756 (value!249165 List!47421)) (EOFValue!8252 (value!249166 List!47421)) (IdentValue!8252 (value!249167 List!47421)) (DelimiterValue!16505 (value!249168 List!47421)) (DedentValue!8252 (value!249169 List!47421)) (NewLineValue!8252 (value!249170 List!47421)) (IntegerValue!24756 (value!249171 (_ BitVec 32)) (text!58211 List!47421)) (IntegerValue!24757 (value!249172 Int) (text!58212 List!47421)) (Times!8252) (Or!8252) (Equal!8252) (Minus!8252) (Broken!41264 (value!249173 List!47421)) (And!8252) (Div!8252) (LessEqual!8252) (Mod!8252) (Concat!21150) (Not!8252) (Plus!8252) (SpaceValue!8252 (value!249174 List!47421)) (IntegerValue!24758 (value!249175 Int) (text!58213 List!47421)) (StringLiteralValue!24757 (text!58214 List!47421)) (FloatLiteralValue!16505 (text!58215 List!47421)) (BytesLiteralValue!8252 (value!249176 List!47421)) (CommentValue!16505 (value!249177 List!47421)) (StringLiteralValue!24758 (value!249178 List!47421)) (ErrorTokenValue!8252 (msg!8313 List!47421)) )
))
(declare-fun toCharacters!9 (BooleanLiteralValueInjection!14 TokenValue!8252) BalanceConc!28068)

(declare-fun toValue!16 (BooleanLiteralValueInjection!14 BalanceConc!28068) TokenValue!8252)

(assert (=> start!409544 (= inst!1672 (=> (and (inv!62365 x!740358) e!2651407) (= (list!17139 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740358))) (list!17139 x!740358))))))

(assert (= start!409544 b!4270477))

(declare-fun m!4863755 () Bool)

(assert (=> b!4270477 m!4863755))

(declare-fun m!4863757 () Bool)

(assert (=> start!409544 m!4863757))

(declare-fun m!4863759 () Bool)

(assert (=> start!409544 m!4863759))

(declare-fun m!4863761 () Bool)

(assert (=> start!409544 m!4863761))

(assert (=> start!409544 m!4863757))

(assert (=> start!409544 m!4863761))

(declare-fun m!4863763 () Bool)

(assert (=> start!409544 m!4863763))

(declare-fun m!4863765 () Bool)

(assert (=> start!409544 m!4863765))

(declare-fun res!1754301 () Bool)

(declare-fun e!2651408 () Bool)

(assert (=> b!4270467 (=> res!1754301 e!2651408)))

(declare-fun x!740359 () BalanceConc!28068)

(declare-fun x!740360 () BalanceConc!28068)

(assert (=> b!4270467 (= res!1754301 (not (= (list!17139 x!740359) (list!17139 x!740360))))))

(declare-fun e!2651410 () Bool)

(declare-fun inst!1673 () Bool)

(declare-fun e!2651409 () Bool)

(assert (=> b!4270467 (= inst!1673 (=> (and (inv!62365 x!740359) e!2651409 (inv!62365 x!740360) e!2651410) e!2651408))))

(declare-fun b!4270478 () Bool)

(assert (=> b!4270478 (= e!2651408 (= (toValue!16 thiss!2453 x!740359) (toValue!16 thiss!2453 x!740360)))))

(declare-fun b!4270479 () Bool)

(declare-fun tp!1307936 () Bool)

(assert (=> b!4270479 (= e!2651409 (and (inv!62364 (c!726512 x!740359)) tp!1307936))))

(declare-fun b!4270480 () Bool)

(declare-fun tp!1307935 () Bool)

(assert (=> b!4270480 (= e!2651410 (and (inv!62364 (c!726512 x!740360)) tp!1307935))))

(assert (= (and b!4270467 (not res!1754301)) b!4270478))

(assert (= b!4270467 b!4270479))

(assert (= b!4270467 b!4270480))

(declare-fun m!4863767 () Bool)

(assert (=> b!4270467 m!4863767))

(declare-fun m!4863769 () Bool)

(assert (=> b!4270467 m!4863769))

(declare-fun m!4863771 () Bool)

(assert (=> b!4270467 m!4863771))

(declare-fun m!4863773 () Bool)

(assert (=> b!4270467 m!4863773))

(declare-fun m!4863775 () Bool)

(assert (=> b!4270478 m!4863775))

(declare-fun m!4863777 () Bool)

(assert (=> b!4270478 m!4863777))

(declare-fun m!4863779 () Bool)

(assert (=> b!4270479 m!4863779))

(declare-fun m!4863781 () Bool)

(assert (=> b!4270480 m!4863781))

(declare-fun bs!600497 () Bool)

(declare-fun neg-inst!1673 () Bool)

(declare-fun s!239658 () Bool)

(assert (= bs!600497 (and neg-inst!1673 s!239658)))

(assert (=> bs!600497 (=> true (= (list!17139 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740358))) (list!17139 x!740358)))))

(assert (=> m!4863765 m!4863761))

(assert (=> m!4863765 m!4863757))

(assert (=> m!4863765 m!4863759))

(assert (=> m!4863765 s!239658))

(assert (=> m!4863761 s!239658))

(declare-fun bs!600498 () Bool)

(assert (= bs!600498 (and neg-inst!1673 start!409544)))

(assert (=> bs!600498 (= true inst!1672)))

(declare-fun bs!600499 () Bool)

(declare-fun neg-inst!1672 () Bool)

(declare-fun s!239660 () Bool)

(assert (= bs!600499 (and neg-inst!1672 s!239660)))

(declare-fun res!1754302 () Bool)

(declare-fun e!2651411 () Bool)

(assert (=> bs!600499 (=> res!1754302 e!2651411)))

(assert (=> bs!600499 (= res!1754302 (not (= (list!17139 x!740360) (list!17139 x!740360))))))

(assert (=> bs!600499 (=> true e!2651411)))

(declare-fun b!4270481 () Bool)

(assert (=> b!4270481 (= e!2651411 (= (toValue!16 thiss!2453 x!740360) (toValue!16 thiss!2453 x!740360)))))

(assert (= (and bs!600499 (not res!1754302)) b!4270481))

(assert (=> m!4863769 s!239660))

(assert (=> m!4863769 s!239660))

(declare-fun bs!600500 () Bool)

(declare-fun s!239662 () Bool)

(assert (= bs!600500 (and neg-inst!1672 s!239662)))

(declare-fun res!1754303 () Bool)

(declare-fun e!2651412 () Bool)

(assert (=> bs!600500 (=> res!1754303 e!2651412)))

(assert (=> bs!600500 (= res!1754303 (not (= (list!17139 x!740358) (list!17139 x!740360))))))

(assert (=> bs!600500 (=> true e!2651412)))

(declare-fun b!4270482 () Bool)

(assert (=> b!4270482 (= e!2651412 (= (toValue!16 thiss!2453 x!740358) (toValue!16 thiss!2453 x!740360)))))

(assert (= (and bs!600500 (not res!1754303)) b!4270482))

(declare-fun bs!600501 () Bool)

(assert (= bs!600501 (and m!4863765 m!4863769)))

(assert (=> bs!600501 m!4863765))

(assert (=> bs!600501 m!4863769))

(assert (=> bs!600501 s!239662))

(declare-fun bs!600502 () Bool)

(declare-fun s!239664 () Bool)

(assert (= bs!600502 (and neg-inst!1672 s!239664)))

(declare-fun res!1754304 () Bool)

(declare-fun e!2651413 () Bool)

(assert (=> bs!600502 (=> res!1754304 e!2651413)))

(assert (=> bs!600502 (= res!1754304 (not (= (list!17139 x!740358) (list!17139 x!740358))))))

(assert (=> bs!600502 (=> true e!2651413)))

(declare-fun b!4270483 () Bool)

(assert (=> b!4270483 (= e!2651413 (= (toValue!16 thiss!2453 x!740358) (toValue!16 thiss!2453 x!740358)))))

(assert (= (and bs!600502 (not res!1754304)) b!4270483))

(assert (=> m!4863765 s!239664))

(declare-fun bs!600503 () Bool)

(declare-fun s!239666 () Bool)

(assert (= bs!600503 (and neg-inst!1672 s!239666)))

(declare-fun res!1754305 () Bool)

(declare-fun e!2651414 () Bool)

(assert (=> bs!600503 (=> res!1754305 e!2651414)))

(assert (=> bs!600503 (= res!1754305 (not (= (list!17139 x!740360) (list!17139 x!740358))))))

(assert (=> bs!600503 (=> true e!2651414)))

(declare-fun b!4270484 () Bool)

(assert (=> b!4270484 (= e!2651414 (= (toValue!16 thiss!2453 x!740360) (toValue!16 thiss!2453 x!740358)))))

(assert (= (and bs!600503 (not res!1754305)) b!4270484))

(assert (=> bs!600501 m!4863769))

(assert (=> bs!600501 m!4863765))

(assert (=> bs!600501 s!239666))

(assert (=> m!4863765 s!239664))

(declare-fun bs!600504 () Bool)

(declare-fun s!239668 () Bool)

(assert (= bs!600504 (and neg-inst!1672 s!239668)))

(declare-fun res!1754306 () Bool)

(declare-fun e!2651415 () Bool)

(assert (=> bs!600504 (=> res!1754306 e!2651415)))

(assert (=> bs!600504 (= res!1754306 (not (= (list!17139 x!740359) (list!17139 x!740360))))))

(assert (=> bs!600504 (=> true e!2651415)))

(declare-fun b!4270485 () Bool)

(assert (=> b!4270485 (= e!2651415 (= (toValue!16 thiss!2453 x!740359) (toValue!16 thiss!2453 x!740360)))))

(assert (= (and bs!600504 (not res!1754306)) b!4270485))

(declare-fun bs!600505 () Bool)

(assert (= bs!600505 (and m!4863767 m!4863769)))

(assert (=> bs!600505 m!4863767))

(assert (=> bs!600505 m!4863769))

(assert (=> bs!600505 s!239668))

(declare-fun bs!600506 () Bool)

(declare-fun s!239670 () Bool)

(assert (= bs!600506 (and neg-inst!1672 s!239670)))

(declare-fun res!1754307 () Bool)

(declare-fun e!2651416 () Bool)

(assert (=> bs!600506 (=> res!1754307 e!2651416)))

(assert (=> bs!600506 (= res!1754307 (not (= (list!17139 x!740359) (list!17139 x!740358))))))

(assert (=> bs!600506 (=> true e!2651416)))

(declare-fun b!4270486 () Bool)

(assert (=> b!4270486 (= e!2651416 (= (toValue!16 thiss!2453 x!740359) (toValue!16 thiss!2453 x!740358)))))

(assert (= (and bs!600506 (not res!1754307)) b!4270486))

(declare-fun bs!600507 () Bool)

(assert (= bs!600507 (and m!4863767 m!4863765)))

(assert (=> bs!600507 m!4863767))

(assert (=> bs!600507 m!4863765))

(assert (=> bs!600507 s!239670))

(declare-fun bs!600508 () Bool)

(declare-fun s!239672 () Bool)

(assert (= bs!600508 (and neg-inst!1672 s!239672)))

(declare-fun res!1754308 () Bool)

(declare-fun e!2651417 () Bool)

(assert (=> bs!600508 (=> res!1754308 e!2651417)))

(assert (=> bs!600508 (= res!1754308 (not (= (list!17139 x!740359) (list!17139 x!740359))))))

(assert (=> bs!600508 (=> true e!2651417)))

(declare-fun b!4270487 () Bool)

(assert (=> b!4270487 (= e!2651417 (= (toValue!16 thiss!2453 x!740359) (toValue!16 thiss!2453 x!740359)))))

(assert (= (and bs!600508 (not res!1754308)) b!4270487))

(assert (=> m!4863767 s!239672))

(declare-fun bs!600509 () Bool)

(declare-fun s!239674 () Bool)

(assert (= bs!600509 (and neg-inst!1672 s!239674)))

(declare-fun res!1754309 () Bool)

(declare-fun e!2651418 () Bool)

(assert (=> bs!600509 (=> res!1754309 e!2651418)))

(assert (=> bs!600509 (= res!1754309 (not (= (list!17139 x!740360) (list!17139 x!740359))))))

(assert (=> bs!600509 (=> true e!2651418)))

(declare-fun b!4270488 () Bool)

(assert (=> b!4270488 (= e!2651418 (= (toValue!16 thiss!2453 x!740360) (toValue!16 thiss!2453 x!740359)))))

(assert (= (and bs!600509 (not res!1754309)) b!4270488))

(assert (=> bs!600505 m!4863769))

(assert (=> bs!600505 m!4863767))

(assert (=> bs!600505 s!239674))

(declare-fun bs!600510 () Bool)

(declare-fun s!239676 () Bool)

(assert (= bs!600510 (and neg-inst!1672 s!239676)))

(declare-fun res!1754310 () Bool)

(declare-fun e!2651419 () Bool)

(assert (=> bs!600510 (=> res!1754310 e!2651419)))

(assert (=> bs!600510 (= res!1754310 (not (= (list!17139 x!740358) (list!17139 x!740359))))))

(assert (=> bs!600510 (=> true e!2651419)))

(declare-fun b!4270489 () Bool)

(assert (=> b!4270489 (= e!2651419 (= (toValue!16 thiss!2453 x!740358) (toValue!16 thiss!2453 x!740359)))))

(assert (= (and bs!600510 (not res!1754310)) b!4270489))

(assert (=> bs!600507 m!4863765))

(assert (=> bs!600507 m!4863767))

(assert (=> bs!600507 s!239676))

(assert (=> m!4863767 s!239672))

(declare-fun bs!600511 () Bool)

(assert (= bs!600511 (and m!4863777 m!4863767)))

(assert (=> bs!600511 s!239674))

(declare-fun bs!600512 () Bool)

(assert (= bs!600512 (and m!4863777 m!4863769)))

(assert (=> bs!600512 s!239660))

(declare-fun bs!600513 () Bool)

(assert (= bs!600513 (and m!4863777 m!4863765)))

(assert (=> bs!600513 s!239666))

(assert (=> m!4863777 s!239660))

(assert (=> bs!600511 s!239668))

(assert (=> bs!600512 s!239660))

(assert (=> bs!600513 s!239662))

(assert (=> m!4863777 s!239660))

(declare-fun bs!600514 () Bool)

(declare-fun s!239678 () Bool)

(assert (= bs!600514 (and neg-inst!1672 s!239678)))

(declare-fun res!1754311 () Bool)

(declare-fun e!2651420 () Bool)

(assert (=> bs!600514 (=> res!1754311 e!2651420)))

(assert (=> bs!600514 (= res!1754311 (not (= (list!17139 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740358))) (list!17139 x!740359))))))

(assert (=> bs!600514 (=> true e!2651420)))

(declare-fun b!4270490 () Bool)

(assert (=> b!4270490 (= e!2651420 (= (toValue!16 thiss!2453 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740358))) (toValue!16 thiss!2453 x!740359)))))

(assert (= (and bs!600514 (not res!1754311)) b!4270490))

(declare-fun bs!600515 () Bool)

(assert (= bs!600515 (and m!4863759 m!4863767)))

(assert (=> bs!600515 m!4863759))

(assert (=> bs!600515 m!4863767))

(assert (=> bs!600515 s!239678))

(declare-fun bs!600516 () Bool)

(declare-fun s!239680 () Bool)

(assert (= bs!600516 (and neg-inst!1672 s!239680)))

(declare-fun res!1754312 () Bool)

(declare-fun e!2651421 () Bool)

(assert (=> bs!600516 (=> res!1754312 e!2651421)))

(assert (=> bs!600516 (= res!1754312 (not (= (list!17139 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740358))) (list!17139 x!740360))))))

(assert (=> bs!600516 (=> true e!2651421)))

(declare-fun b!4270491 () Bool)

(assert (=> b!4270491 (= e!2651421 (= (toValue!16 thiss!2453 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740358))) (toValue!16 thiss!2453 x!740360)))))

(assert (= (and bs!600516 (not res!1754312)) b!4270491))

(declare-fun bs!600517 () Bool)

(assert (= bs!600517 (and m!4863759 m!4863769 m!4863777)))

(assert (=> bs!600517 m!4863759))

(assert (=> bs!600517 m!4863769))

(assert (=> bs!600517 s!239680))

(declare-fun bs!600518 () Bool)

(declare-fun s!239682 () Bool)

(assert (= bs!600518 (and neg-inst!1672 s!239682)))

(declare-fun res!1754313 () Bool)

(declare-fun e!2651422 () Bool)

(assert (=> bs!600518 (=> res!1754313 e!2651422)))

(assert (=> bs!600518 (= res!1754313 (not (= (list!17139 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740358))) (list!17139 x!740358))))))

(assert (=> bs!600518 (=> true e!2651422)))

(declare-fun b!4270492 () Bool)

(assert (=> b!4270492 (= e!2651422 (= (toValue!16 thiss!2453 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740358))) (toValue!16 thiss!2453 x!740358)))))

(assert (= (and bs!600518 (not res!1754313)) b!4270492))

(declare-fun bs!600519 () Bool)

(assert (= bs!600519 (and m!4863759 m!4863765)))

(assert (=> bs!600519 m!4863759))

(assert (=> bs!600519 m!4863765))

(assert (=> bs!600519 s!239682))

(declare-fun bs!600520 () Bool)

(declare-fun s!239684 () Bool)

(assert (= bs!600520 (and neg-inst!1672 s!239684)))

(declare-fun res!1754314 () Bool)

(declare-fun e!2651423 () Bool)

(assert (=> bs!600520 (=> res!1754314 e!2651423)))

(assert (=> bs!600520 (= res!1754314 (not (= (list!17139 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740358))) (list!17139 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740358))))))))

(assert (=> bs!600520 (=> true e!2651423)))

(declare-fun b!4270493 () Bool)

(assert (=> b!4270493 (= e!2651423 (= (toValue!16 thiss!2453 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740358))) (toValue!16 thiss!2453 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740358)))))))

(assert (= (and bs!600520 (not res!1754314)) b!4270493))

(assert (=> m!4863759 s!239684))

(declare-fun bs!600521 () Bool)

(declare-fun s!239686 () Bool)

(assert (= bs!600521 (and neg-inst!1672 s!239686)))

(declare-fun res!1754315 () Bool)

(declare-fun e!2651424 () Bool)

(assert (=> bs!600521 (=> res!1754315 e!2651424)))

(assert (=> bs!600521 (= res!1754315 (not (= (list!17139 x!740359) (list!17139 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740358))))))))

(assert (=> bs!600521 (=> true e!2651424)))

(declare-fun b!4270494 () Bool)

(assert (=> b!4270494 (= e!2651424 (= (toValue!16 thiss!2453 x!740359) (toValue!16 thiss!2453 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740358)))))))

(assert (= (and bs!600521 (not res!1754315)) b!4270494))

(assert (=> bs!600515 m!4863767))

(assert (=> bs!600515 m!4863759))

(assert (=> bs!600515 s!239686))

(declare-fun bs!600522 () Bool)

(declare-fun s!239688 () Bool)

(assert (= bs!600522 (and neg-inst!1672 s!239688)))

(declare-fun res!1754316 () Bool)

(declare-fun e!2651425 () Bool)

(assert (=> bs!600522 (=> res!1754316 e!2651425)))

(assert (=> bs!600522 (= res!1754316 (not (= (list!17139 x!740360) (list!17139 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740358))))))))

(assert (=> bs!600522 (=> true e!2651425)))

(declare-fun b!4270495 () Bool)

(assert (=> b!4270495 (= e!2651425 (= (toValue!16 thiss!2453 x!740360) (toValue!16 thiss!2453 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740358)))))))

(assert (= (and bs!600522 (not res!1754316)) b!4270495))

(assert (=> bs!600517 m!4863769))

(assert (=> bs!600517 m!4863759))

(assert (=> bs!600517 s!239688))

(declare-fun bs!600523 () Bool)

(declare-fun s!239690 () Bool)

(assert (= bs!600523 (and neg-inst!1672 s!239690)))

(declare-fun res!1754317 () Bool)

(declare-fun e!2651426 () Bool)

(assert (=> bs!600523 (=> res!1754317 e!2651426)))

(assert (=> bs!600523 (= res!1754317 (not (= (list!17139 x!740358) (list!17139 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740358))))))))

(assert (=> bs!600523 (=> true e!2651426)))

(declare-fun b!4270496 () Bool)

(assert (=> b!4270496 (= e!2651426 (= (toValue!16 thiss!2453 x!740358) (toValue!16 thiss!2453 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740358)))))))

(assert (= (and bs!600523 (not res!1754317)) b!4270496))

(assert (=> bs!600519 m!4863765))

(assert (=> bs!600519 m!4863759))

(assert (=> bs!600519 s!239690))

(assert (=> m!4863759 s!239684))

(declare-fun bs!600524 () Bool)

(assert (= bs!600524 (and m!4863761 m!4863759)))

(assert (=> bs!600524 s!239690))

(declare-fun bs!600525 () Bool)

(assert (= bs!600525 (and m!4863761 m!4863765)))

(assert (=> bs!600525 s!239664))

(declare-fun bs!600526 () Bool)

(assert (= bs!600526 (and m!4863761 m!4863769 m!4863777)))

(assert (=> bs!600526 s!239662))

(declare-fun bs!600527 () Bool)

(assert (= bs!600527 (and m!4863761 m!4863767)))

(assert (=> bs!600527 s!239676))

(assert (=> m!4863761 s!239664))

(assert (=> bs!600525 s!239664))

(assert (=> bs!600527 s!239670))

(assert (=> bs!600524 s!239682))

(assert (=> m!4863761 s!239664))

(assert (=> bs!600526 s!239666))

(declare-fun bs!600528 () Bool)

(assert (= bs!600528 (and m!4863775 m!4863765 m!4863761)))

(assert (=> bs!600528 s!239670))

(declare-fun bs!600529 () Bool)

(assert (= bs!600529 (and m!4863775 m!4863769 m!4863777)))

(assert (=> bs!600529 s!239668))

(declare-fun bs!600530 () Bool)

(assert (= bs!600530 (and m!4863775 m!4863759)))

(assert (=> bs!600530 s!239686))

(declare-fun bs!600531 () Bool)

(assert (= bs!600531 (and m!4863775 m!4863767)))

(assert (=> bs!600531 s!239672))

(assert (=> m!4863775 s!239672))

(assert (=> bs!600529 s!239674))

(assert (=> bs!600530 s!239678))

(assert (=> bs!600528 s!239676))

(assert (=> bs!600531 s!239672))

(assert (=> m!4863775 s!239672))

(declare-fun bs!600532 () Bool)

(assert (= bs!600532 (and neg-inst!1672 b!4270467)))

(assert (=> bs!600532 (= true inst!1673)))

(declare-fun res!1754300 () Bool)

(declare-fun e!2651405 () Bool)

(assert (=> start!409544 (=> res!1754300 e!2651405)))

(declare-fun lambda!130754 () Int)

(declare-fun Forall!1630 (Int) Bool)

(assert (=> start!409544 (= res!1754300 (not (Forall!1630 lambda!130754)))))

(assert (=> start!409544 (= (Forall!1630 lambda!130754) inst!1672)))

(assert (=> start!409544 (not e!2651405)))

(assert (=> start!409544 true))

(declare-fun e!2651406 () Bool)

(assert (=> b!4270467 (= e!2651405 e!2651406)))

(declare-fun res!1754299 () Bool)

(assert (=> b!4270467 (=> res!1754299 e!2651406)))

(declare-fun lambda!130757 () Int)

(declare-fun Forall2!1221 (Int) Bool)

(assert (=> b!4270467 (= res!1754299 (not (Forall2!1221 lambda!130757)))))

(assert (=> b!4270467 (= (Forall2!1221 lambda!130757) inst!1673)))

(declare-fun lambda!130755 () Int)

(declare-fun lambda!130756 () Int)

(declare-fun semiInverseModEq!3506 (Int Int) Bool)

(assert (=> b!4270467 (= (semiInverseModEq!3506 lambda!130755 lambda!130756) (Forall!1630 lambda!130754))))

(declare-fun b!4270468 () Bool)

(declare-datatypes ((TokenValueInjection!15888 0))(
  ( (TokenValueInjection!15889 (toValue!10796 Int) (toChars!10655 Int)) )
))
(declare-fun inv!62366 (TokenValueInjection!15888) Bool)

(assert (=> b!4270468 (= e!2651406 (inv!62366 (TokenValueInjection!15889 lambda!130756 lambda!130755)))))

(declare-fun equivClasses!3397 (Int Int) Bool)

(assert (=> b!4270468 (= (equivClasses!3397 lambda!130755 lambda!130756) (Forall2!1221 lambda!130757))))

(assert (= neg-inst!1673 inst!1672))

(assert (= (and start!409544 (not res!1754300)) b!4270467))

(assert (= neg-inst!1672 inst!1673))

(assert (= (and b!4270467 (not res!1754299)) b!4270468))

(declare-fun m!4863783 () Bool)

(assert (=> start!409544 m!4863783))

(assert (=> start!409544 m!4863783))

(declare-fun m!4863785 () Bool)

(assert (=> b!4270467 m!4863785))

(assert (=> b!4270467 m!4863785))

(declare-fun m!4863787 () Bool)

(assert (=> b!4270467 m!4863787))

(assert (=> b!4270467 m!4863783))

(declare-fun m!4863789 () Bool)

(assert (=> b!4270468 m!4863789))

(declare-fun m!4863791 () Bool)

(assert (=> b!4270468 m!4863791))

(assert (=> b!4270468 m!4863785))

(check-sat (not b!4270494) (not b!4270495) (not bs!600510) (not b!4270490) (not b!4270492) (not bs!600500) (not bs!600499) (not bs!600509) (not bs!600503) (not b!4270486) (not b!4270467) (not bs!600516) (not b!4270482) (not b!4270489) (not bs!600520) (not b!4270468) (not bs!600523) (not b!4270491) (not b!4270483) (not bs!600521) (not bs!600508) (not bs!600522) (not bs!600502) (not bs!600506) (not b!4270488) (not b!4270479) (not b!4270480) (not bs!600504) (not bs!600497) (not b!4270496) (not bs!600518) (not b!4270484) (not b!4270493) (not start!409544) (not b!4270487) (not b!4270478) (not b!4270477) (not b!4270485) (not b!4270481) (not bs!600514))
(check-sat)
(get-model)

(declare-fun d!1259485 () Bool)

(declare-fun lt!1512663 () List!47421)

(declare-fun efficientList!483 (BalanceConc!28068) List!47421)

(assert (=> d!1259485 (= lt!1512663 (efficientList!483 x!740360))))

(assert (=> d!1259485 (= (toValue!16 thiss!2453 x!740360) (ite (= lt!1512663 (Cons!47297 #x0074 (Cons!47297 #x0072 (Cons!47297 #x0075 (Cons!47297 #x0065 Nil!47297))))) True!16504 (ite (= lt!1512663 (Cons!47297 #x0066 (Cons!47297 #x0061 (Cons!47297 #x006C (Cons!47297 #x0073 (Cons!47297 #x0065 Nil!47297)))))) False!16504 (Broken!41262 lt!1512663))))))

(declare-fun bs!600533 () Bool)

(assert (= bs!600533 d!1259485))

(declare-fun m!4863793 () Bool)

(assert (=> bs!600533 m!4863793))

(assert (=> b!4270495 d!1259485))

(declare-fun d!1259487 () Bool)

(declare-fun lt!1512664 () List!47421)

(assert (=> d!1259487 (= lt!1512664 (efficientList!483 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740358))))))

(assert (=> d!1259487 (= (toValue!16 thiss!2453 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740358))) (ite (= lt!1512664 (Cons!47297 #x0074 (Cons!47297 #x0072 (Cons!47297 #x0075 (Cons!47297 #x0065 Nil!47297))))) True!16504 (ite (= lt!1512664 (Cons!47297 #x0066 (Cons!47297 #x0061 (Cons!47297 #x006C (Cons!47297 #x0073 (Cons!47297 #x0065 Nil!47297)))))) False!16504 (Broken!41262 lt!1512664))))))

(declare-fun bs!600534 () Bool)

(assert (= bs!600534 d!1259487))

(assert (=> bs!600534 m!4863757))

(declare-fun m!4863795 () Bool)

(assert (=> bs!600534 m!4863795))

(assert (=> b!4270495 d!1259487))

(declare-fun d!1259489 () Bool)

(declare-fun list!17140 (Conc!14279) List!47421)

(assert (=> d!1259489 (= (list!17139 x!740360) (list!17140 (c!726512 x!740360)))))

(declare-fun bs!600538 () Bool)

(assert (= bs!600538 d!1259489))

(declare-fun m!4863797 () Bool)

(assert (=> bs!600538 m!4863797))

(assert (=> bs!600522 d!1259489))

(declare-fun d!1259491 () Bool)

(assert (=> d!1259491 (= (list!17139 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740358))) (list!17140 (c!726512 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740358)))))))

(declare-fun bs!600540 () Bool)

(assert (= bs!600540 d!1259491))

(declare-fun m!4863801 () Bool)

(assert (=> bs!600540 m!4863801))

(assert (=> bs!600522 d!1259491))

(assert (=> b!4270491 d!1259487))

(assert (=> b!4270491 d!1259485))

(assert (=> bs!600516 d!1259491))

(assert (=> bs!600516 d!1259489))

(declare-fun bs!600541 () Bool)

(assert (= bs!600541 (and m!4863769 b!4270481)))

(assert (=> bs!600541 m!4863777))

(assert (=> bs!600541 m!4863777))

(declare-fun bs!600542 () Bool)

(assert (= bs!600542 (and m!4863765 m!4863769 b!4270482)))

(assert (=> bs!600542 m!4863761))

(assert (=> bs!600542 m!4863777))

(declare-fun bs!600543 () Bool)

(assert (= bs!600543 (and m!4863765 b!4270483)))

(assert (=> bs!600543 m!4863761))

(assert (=> bs!600543 m!4863761))

(declare-fun bs!600544 () Bool)

(assert (= bs!600544 (and m!4863765 m!4863769 b!4270484)))

(assert (=> bs!600544 m!4863777))

(assert (=> bs!600544 m!4863761))

(declare-fun bs!600545 () Bool)

(assert (= bs!600545 (and m!4863767 m!4863769 b!4270485)))

(assert (=> bs!600545 m!4863775))

(assert (=> bs!600545 m!4863777))

(declare-fun bs!600546 () Bool)

(assert (= bs!600546 (and m!4863767 m!4863765 b!4270486)))

(assert (=> bs!600546 m!4863775))

(assert (=> bs!600546 m!4863761))

(declare-fun bs!600547 () Bool)

(assert (= bs!600547 (and m!4863767 b!4270487)))

(assert (=> bs!600547 m!4863775))

(assert (=> bs!600547 m!4863775))

(declare-fun bs!600548 () Bool)

(assert (= bs!600548 (and m!4863767 m!4863769 b!4270488)))

(assert (=> bs!600548 m!4863777))

(assert (=> bs!600548 m!4863775))

(declare-fun bs!600550 () Bool)

(assert (= bs!600550 (and m!4863767 m!4863765 b!4270489)))

(assert (=> bs!600550 m!4863761))

(assert (=> bs!600550 m!4863775))

(declare-fun bs!600562 () Bool)

(assert (= bs!600562 (and m!4863759 m!4863767 b!4270490)))

(declare-fun m!4863803 () Bool)

(assert (=> bs!600562 m!4863803))

(assert (=> bs!600562 m!4863775))

(declare-fun bs!600563 () Bool)

(assert (= bs!600563 (and m!4863759 m!4863769 m!4863777 b!4270491)))

(assert (=> bs!600563 m!4863803))

(assert (=> bs!600563 m!4863777))

(declare-fun bs!600564 () Bool)

(assert (= bs!600564 (and m!4863759 m!4863765 b!4270492)))

(assert (=> bs!600564 m!4863803))

(assert (=> bs!600564 m!4863761))

(declare-fun bs!600565 () Bool)

(assert (= bs!600565 (and m!4863759 b!4270493)))

(assert (=> bs!600565 m!4863803))

(assert (=> bs!600565 m!4863803))

(declare-fun bs!600566 () Bool)

(assert (= bs!600566 (and m!4863759 m!4863767 b!4270494)))

(assert (=> bs!600566 m!4863775))

(assert (=> bs!600566 m!4863803))

(declare-fun bs!600567 () Bool)

(assert (= bs!600567 (and m!4863759 m!4863769 m!4863777 b!4270495)))

(assert (=> bs!600567 m!4863777))

(assert (=> bs!600567 m!4863803))

(declare-fun bs!600568 () Bool)

(assert (= bs!600568 (and m!4863759 m!4863765 b!4270496)))

(assert (=> bs!600568 m!4863761))

(assert (=> bs!600568 m!4863803))

(check-sat (not b!4270494) (not bs!600510) (not b!4270490) (not b!4270492) (not bs!600500) (not bs!600509) (not bs!600503) (not b!4270467) (not b!4270482) (not b!4270489) (not bs!600520) (not b!4270468) (not bs!600523) (not b!4270483) (not bs!600521) (not bs!600508) (not bs!600502) (not bs!600506) (not b!4270488) (not d!1259485) (not bs!600499) (not d!1259487) (not b!4270486) (not b!4270479) (not b!4270480) (not bs!600504) (not d!1259489) (not bs!600497) (not b!4270496) (not bs!600518) (not b!4270484) (not b!4270493) (not start!409544) (not b!4270487) (not b!4270478) (not b!4270477) (not b!4270485) (not d!1259491) (not b!4270481) (not bs!600514))
(check-sat)
(get-model)

(declare-fun d!1259505 () Bool)

(declare-fun lt!1512668 () List!47421)

(assert (=> d!1259505 (= lt!1512668 (efficientList!483 x!740358))))

(assert (=> d!1259505 (= (toValue!16 thiss!2453 x!740358) (ite (= lt!1512668 (Cons!47297 #x0074 (Cons!47297 #x0072 (Cons!47297 #x0075 (Cons!47297 #x0065 Nil!47297))))) True!16504 (ite (= lt!1512668 (Cons!47297 #x0066 (Cons!47297 #x0061 (Cons!47297 #x006C (Cons!47297 #x0073 (Cons!47297 #x0065 Nil!47297)))))) False!16504 (Broken!41262 lt!1512668))))))

(declare-fun bs!600574 () Bool)

(assert (= bs!600574 d!1259505))

(declare-fun m!4863815 () Bool)

(assert (=> bs!600574 m!4863815))

(assert (=> b!4270483 d!1259505))

(declare-fun d!1259507 () Bool)

(declare-fun lt!1512669 () List!47421)

(assert (=> d!1259507 (= lt!1512669 (efficientList!483 x!740359))))

(assert (=> d!1259507 (= (toValue!16 thiss!2453 x!740359) (ite (= lt!1512669 (Cons!47297 #x0074 (Cons!47297 #x0072 (Cons!47297 #x0075 (Cons!47297 #x0065 Nil!47297))))) True!16504 (ite (= lt!1512669 (Cons!47297 #x0066 (Cons!47297 #x0061 (Cons!47297 #x006C (Cons!47297 #x0073 (Cons!47297 #x0065 Nil!47297)))))) False!16504 (Broken!41262 lt!1512669))))))

(declare-fun bs!600575 () Bool)

(assert (= bs!600575 d!1259507))

(declare-fun m!4863817 () Bool)

(assert (=> bs!600575 m!4863817))

(assert (=> b!4270486 d!1259507))

(assert (=> b!4270486 d!1259505))

(declare-fun d!1259509 () Bool)

(assert (=> d!1259509 (= (list!17139 x!740358) (list!17140 (c!726512 x!740358)))))

(declare-fun bs!600576 () Bool)

(assert (= bs!600576 d!1259509))

(declare-fun m!4863819 () Bool)

(assert (=> bs!600576 m!4863819))

(assert (=> bs!600523 d!1259509))

(assert (=> bs!600523 d!1259491))

(assert (=> bs!600502 d!1259509))

(assert (=> b!4270492 d!1259487))

(assert (=> b!4270492 d!1259505))

(assert (=> b!4270489 d!1259505))

(assert (=> b!4270489 d!1259507))

(declare-fun d!1259511 () Bool)

(assert (=> d!1259511 (= (list!17139 x!740359) (list!17140 (c!726512 x!740359)))))

(declare-fun bs!600577 () Bool)

(assert (= bs!600577 d!1259511))

(declare-fun m!4863821 () Bool)

(assert (=> bs!600577 m!4863821))

(assert (=> bs!600506 d!1259511))

(assert (=> bs!600506 d!1259509))

(assert (=> bs!600518 d!1259491))

(assert (=> bs!600518 d!1259509))

(assert (=> b!4270482 d!1259505))

(assert (=> b!4270482 d!1259485))

(declare-fun d!1259513 () Bool)

(declare-fun lt!1512675 () List!47421)

(assert (=> d!1259513 (= lt!1512675 (list!17139 x!740360))))

(declare-fun efficientList!485 (Conc!14279 List!47421) List!47421)

(declare-fun efficientList$default$2!167 (Conc!14279) List!47421)

(assert (=> d!1259513 (= lt!1512675 (efficientList!485 (c!726512 x!740360) (efficientList$default$2!167 (c!726512 x!740360))))))

(assert (=> d!1259513 (= (efficientList!483 x!740360) lt!1512675)))

(declare-fun bs!600581 () Bool)

(assert (= bs!600581 d!1259513))

(assert (=> bs!600581 m!4863769))

(declare-fun m!4863835 () Bool)

(assert (=> bs!600581 m!4863835))

(assert (=> bs!600581 m!4863835))

(declare-fun m!4863837 () Bool)

(assert (=> bs!600581 m!4863837))

(assert (=> d!1259485 d!1259513))

(assert (=> bs!600510 d!1259509))

(assert (=> bs!600510 d!1259511))

(declare-fun b!4270527 () Bool)

(declare-fun e!2651443 () List!47421)

(declare-fun e!2651444 () List!47421)

(assert (=> b!4270527 (= e!2651443 e!2651444)))

(declare-fun c!726528 () Bool)

(get-info :version)

(assert (=> b!4270527 (= c!726528 ((_ is Leaf!22074) (c!726512 x!740360)))))

(declare-fun d!1259523 () Bool)

(declare-fun c!726527 () Bool)

(assert (=> d!1259523 (= c!726527 ((_ is Empty!14279) (c!726512 x!740360)))))

(assert (=> d!1259523 (= (list!17140 (c!726512 x!740360)) e!2651443)))

(declare-fun b!4270528 () Bool)

(declare-fun list!17142 (IArray!28563) List!47421)

(assert (=> b!4270528 (= e!2651444 (list!17142 (xs!17585 (c!726512 x!740360))))))

(declare-fun b!4270529 () Bool)

(declare-fun ++!12066 (List!47421 List!47421) List!47421)

(assert (=> b!4270529 (= e!2651444 (++!12066 (list!17140 (left!35129 (c!726512 x!740360))) (list!17140 (right!35459 (c!726512 x!740360)))))))

(declare-fun b!4270526 () Bool)

(assert (=> b!4270526 (= e!2651443 Nil!47297)))

(assert (= (and d!1259523 c!726527) b!4270526))

(assert (= (and d!1259523 (not c!726527)) b!4270527))

(assert (= (and b!4270527 c!726528) b!4270528))

(assert (= (and b!4270527 (not c!726528)) b!4270529))

(declare-fun m!4863843 () Bool)

(assert (=> b!4270528 m!4863843))

(declare-fun m!4863845 () Bool)

(assert (=> b!4270529 m!4863845))

(declare-fun m!4863847 () Bool)

(assert (=> b!4270529 m!4863847))

(assert (=> b!4270529 m!4863845))

(assert (=> b!4270529 m!4863847))

(declare-fun m!4863849 () Bool)

(assert (=> b!4270529 m!4863849))

(assert (=> d!1259489 d!1259523))

(assert (=> b!4270485 d!1259507))

(assert (=> b!4270485 d!1259485))

(assert (=> bs!600500 d!1259509))

(assert (=> bs!600500 d!1259489))

(assert (=> b!4270488 d!1259485))

(assert (=> b!4270488 d!1259507))

(assert (=> b!4270494 d!1259507))

(assert (=> b!4270494 d!1259487))

(assert (=> bs!600504 d!1259511))

(assert (=> bs!600504 d!1259489))

(assert (=> start!409544 d!1259491))

(declare-fun d!1259527 () Bool)

(declare-fun choose!26038 (Int) Bool)

(assert (=> d!1259527 (= (Forall!1630 lambda!130754) (choose!26038 lambda!130754))))

(declare-fun bs!600582 () Bool)

(assert (= bs!600582 d!1259527))

(declare-fun m!4863851 () Bool)

(assert (=> bs!600582 m!4863851))

(assert (=> start!409544 d!1259527))

(declare-fun d!1259529 () Bool)

(declare-fun c!726536 () Bool)

(assert (=> d!1259529 (= c!726536 ((_ is True!16504) (toValue!16 thiss!2453 x!740358)))))

(declare-fun e!2651455 () BalanceConc!28068)

(assert (=> d!1259529 (= (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740358)) e!2651455)))

(declare-fun b!4270550 () Bool)

(declare-fun stringTrueConc!0 () BalanceConc!28068)

(assert (=> b!4270550 (= e!2651455 stringTrueConc!0)))

(declare-fun b!4270551 () Bool)

(declare-fun e!2651453 () BalanceConc!28068)

(declare-fun seqFromList!5866 (List!47421) BalanceConc!28068)

(assert (=> b!4270551 (= e!2651453 (seqFromList!5866 (value!249163 (toValue!16 thiss!2453 x!740358))))))

(declare-fun b!4270552 () Bool)

(declare-fun e!2651454 () BalanceConc!28068)

(assert (=> b!4270552 (= e!2651455 e!2651454)))

(declare-fun c!726537 () Bool)

(assert (=> b!4270552 (= c!726537 ((_ is False!16504) (toValue!16 thiss!2453 x!740358)))))

(declare-fun b!4270553 () Bool)

(assert (=> b!4270553 (= e!2651453 (BalanceConc!28069 Empty!14279))))

(declare-fun b!4270554 () Bool)

(declare-fun c!726538 () Bool)

(assert (=> b!4270554 (= c!726538 ((_ is Broken!41262) (toValue!16 thiss!2453 x!740358)))))

(assert (=> b!4270554 (= e!2651454 e!2651453)))

(declare-fun b!4270555 () Bool)

(declare-fun stringFalseConc!0 () BalanceConc!28068)

(assert (=> b!4270555 (= e!2651454 stringFalseConc!0)))

(assert (= (and d!1259529 c!726536) b!4270550))

(assert (= (and d!1259529 (not c!726536)) b!4270552))

(assert (= (and b!4270552 c!726537) b!4270555))

(assert (= (and b!4270552 (not c!726537)) b!4270554))

(assert (= (and b!4270554 c!726538) b!4270551))

(assert (= (and b!4270554 (not c!726538)) b!4270553))

(declare-fun m!4863867 () Bool)

(assert (=> b!4270550 m!4863867))

(declare-fun m!4863869 () Bool)

(assert (=> b!4270551 m!4863869))

(declare-fun m!4863871 () Bool)

(assert (=> b!4270555 m!4863871))

(assert (=> start!409544 d!1259529))

(assert (=> start!409544 d!1259509))

(declare-fun d!1259545 () Bool)

(declare-fun isBalanced!3833 (Conc!14279) Bool)

(assert (=> d!1259545 (= (inv!62365 x!740358) (isBalanced!3833 (c!726512 x!740358)))))

(declare-fun bs!600592 () Bool)

(assert (= bs!600592 d!1259545))

(declare-fun m!4863873 () Bool)

(assert (=> bs!600592 m!4863873))

(assert (=> start!409544 d!1259545))

(assert (=> start!409544 d!1259505))

(assert (=> b!4270481 d!1259485))

(assert (=> bs!600509 d!1259489))

(assert (=> bs!600509 d!1259511))

(declare-fun d!1259547 () Bool)

(declare-fun lt!1512676 () List!47421)

(assert (=> d!1259547 (= lt!1512676 (list!17139 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740358))))))

(assert (=> d!1259547 (= lt!1512676 (efficientList!485 (c!726512 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740358))) (efficientList$default$2!167 (c!726512 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740358))))))))

(assert (=> d!1259547 (= (efficientList!483 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740358))) lt!1512676)))

(declare-fun bs!600593 () Bool)

(assert (= bs!600593 d!1259547))

(assert (=> bs!600593 m!4863757))

(assert (=> bs!600593 m!4863759))

(declare-fun m!4863875 () Bool)

(assert (=> bs!600593 m!4863875))

(assert (=> bs!600593 m!4863875))

(declare-fun m!4863877 () Bool)

(assert (=> bs!600593 m!4863877))

(assert (=> d!1259487 d!1259547))

(assert (=> bs!600521 d!1259511))

(assert (=> bs!600521 d!1259491))

(declare-fun d!1259549 () Bool)

(declare-fun res!1754338 () Bool)

(declare-fun e!2651472 () Bool)

(assert (=> d!1259549 (=> (not res!1754338) (not e!2651472))))

(assert (=> d!1259549 (= res!1754338 (semiInverseModEq!3506 (toChars!10655 (TokenValueInjection!15889 lambda!130756 lambda!130755)) (toValue!10796 (TokenValueInjection!15889 lambda!130756 lambda!130755))))))

(assert (=> d!1259549 (= (inv!62366 (TokenValueInjection!15889 lambda!130756 lambda!130755)) e!2651472)))

(declare-fun b!4270579 () Bool)

(assert (=> b!4270579 (= e!2651472 (equivClasses!3397 (toChars!10655 (TokenValueInjection!15889 lambda!130756 lambda!130755)) (toValue!10796 (TokenValueInjection!15889 lambda!130756 lambda!130755))))))

(assert (= (and d!1259549 res!1754338) b!4270579))

(declare-fun m!4863891 () Bool)

(assert (=> d!1259549 m!4863891))

(declare-fun m!4863893 () Bool)

(assert (=> b!4270579 m!4863893))

(assert (=> b!4270468 d!1259549))

(declare-fun bs!600594 () Bool)

(declare-fun d!1259555 () Bool)

(assert (= bs!600594 (and d!1259555 b!4270467)))

(declare-fun lambda!130766 () Int)

(assert (=> bs!600594 (not (= lambda!130766 lambda!130757))))

(assert (=> d!1259555 true))

(declare-fun order!24877 () Int)

(declare-fun order!24875 () Int)

(declare-fun dynLambda!20263 (Int Int) Int)

(declare-fun dynLambda!20264 (Int Int) Int)

(assert (=> d!1259555 (< (dynLambda!20263 order!24875 lambda!130756) (dynLambda!20264 order!24877 lambda!130766))))

(assert (=> d!1259555 (= (equivClasses!3397 lambda!130755 lambda!130756) (Forall2!1221 lambda!130766))))

(declare-fun bs!600595 () Bool)

(assert (= bs!600595 d!1259555))

(declare-fun m!4863913 () Bool)

(assert (=> bs!600595 m!4863913))

(assert (=> b!4270468 d!1259555))

(declare-fun d!1259557 () Bool)

(declare-fun choose!26039 (Int) Bool)

(assert (=> d!1259557 (= (Forall2!1221 lambda!130757) (choose!26039 lambda!130757))))

(declare-fun bs!600596 () Bool)

(assert (= bs!600596 d!1259557))

(declare-fun m!4863915 () Bool)

(assert (=> bs!600596 m!4863915))

(assert (=> b!4270468 d!1259557))

(assert (=> b!4270484 d!1259485))

(assert (=> b!4270484 d!1259505))

(assert (=> b!4270467 d!1259527))

(declare-fun bs!600597 () Bool)

(declare-fun d!1259559 () Bool)

(assert (= bs!600597 (and d!1259559 start!409544)))

(declare-fun lambda!130769 () Int)

(assert (=> bs!600597 (not (= lambda!130769 lambda!130754))))

(assert (=> d!1259559 true))

(declare-fun order!24879 () Int)

(declare-fun order!24881 () Int)

(declare-fun dynLambda!20265 (Int Int) Int)

(declare-fun dynLambda!20266 (Int Int) Int)

(assert (=> d!1259559 (< (dynLambda!20265 order!24879 lambda!130755) (dynLambda!20266 order!24881 lambda!130769))))

(assert (=> d!1259559 true))

(assert (=> d!1259559 (< (dynLambda!20263 order!24875 lambda!130756) (dynLambda!20266 order!24881 lambda!130769))))

(assert (=> d!1259559 (= (semiInverseModEq!3506 lambda!130755 lambda!130756) (Forall!1630 lambda!130769))))

(declare-fun bs!600598 () Bool)

(assert (= bs!600598 d!1259559))

(declare-fun m!4863917 () Bool)

(assert (=> bs!600598 m!4863917))

(assert (=> b!4270467 d!1259559))

(assert (=> b!4270467 d!1259557))

(declare-fun d!1259561 () Bool)

(assert (=> d!1259561 (= (inv!62365 x!740359) (isBalanced!3833 (c!726512 x!740359)))))

(declare-fun bs!600599 () Bool)

(assert (= bs!600599 d!1259561))

(declare-fun m!4863919 () Bool)

(assert (=> bs!600599 m!4863919))

(assert (=> b!4270467 d!1259561))

(assert (=> b!4270467 d!1259511))

(assert (=> b!4270467 d!1259489))

(declare-fun d!1259563 () Bool)

(assert (=> d!1259563 (= (inv!62365 x!740360) (isBalanced!3833 (c!726512 x!740360)))))

(declare-fun bs!600600 () Bool)

(assert (= bs!600600 d!1259563))

(declare-fun m!4863921 () Bool)

(assert (=> bs!600600 m!4863921))

(assert (=> b!4270467 d!1259563))

(assert (=> bs!600499 d!1259489))

(assert (=> b!4270487 d!1259507))

(assert (=> b!4270490 d!1259487))

(assert (=> b!4270490 d!1259507))

(assert (=> b!4270493 d!1259487))

(declare-fun b!4270595 () Bool)

(declare-fun e!2651481 () List!47421)

(declare-fun e!2651482 () List!47421)

(assert (=> b!4270595 (= e!2651481 e!2651482)))

(declare-fun c!726545 () Bool)

(assert (=> b!4270595 (= c!726545 ((_ is Leaf!22074) (c!726512 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740358)))))))

(declare-fun d!1259565 () Bool)

(declare-fun c!726544 () Bool)

(assert (=> d!1259565 (= c!726544 ((_ is Empty!14279) (c!726512 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740358)))))))

(assert (=> d!1259565 (= (list!17140 (c!726512 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740358)))) e!2651481)))

(declare-fun b!4270596 () Bool)

(assert (=> b!4270596 (= e!2651482 (list!17142 (xs!17585 (c!726512 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740358))))))))

(declare-fun b!4270597 () Bool)

(assert (=> b!4270597 (= e!2651482 (++!12066 (list!17140 (left!35129 (c!726512 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740358))))) (list!17140 (right!35459 (c!726512 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740358)))))))))

(declare-fun b!4270594 () Bool)

(assert (=> b!4270594 (= e!2651481 Nil!47297)))

(assert (= (and d!1259565 c!726544) b!4270594))

(assert (= (and d!1259565 (not c!726544)) b!4270595))

(assert (= (and b!4270595 c!726545) b!4270596))

(assert (= (and b!4270595 (not c!726545)) b!4270597))

(declare-fun m!4863923 () Bool)

(assert (=> b!4270596 m!4863923))

(declare-fun m!4863925 () Bool)

(assert (=> b!4270597 m!4863925))

(declare-fun m!4863927 () Bool)

(assert (=> b!4270597 m!4863927))

(assert (=> b!4270597 m!4863925))

(assert (=> b!4270597 m!4863927))

(declare-fun m!4863929 () Bool)

(assert (=> b!4270597 m!4863929))

(assert (=> d!1259491 d!1259565))

(declare-fun d!1259567 () Bool)

(declare-fun c!726548 () Bool)

(assert (=> d!1259567 (= c!726548 ((_ is Node!14279) (c!726512 x!740360)))))

(declare-fun e!2651487 () Bool)

(assert (=> d!1259567 (= (inv!62364 (c!726512 x!740360)) e!2651487)))

(declare-fun b!4270604 () Bool)

(declare-fun inv!62370 (Conc!14279) Bool)

(assert (=> b!4270604 (= e!2651487 (inv!62370 (c!726512 x!740360)))))

(declare-fun b!4270605 () Bool)

(declare-fun e!2651488 () Bool)

(assert (=> b!4270605 (= e!2651487 e!2651488)))

(declare-fun res!1754343 () Bool)

(assert (=> b!4270605 (= res!1754343 (not ((_ is Leaf!22074) (c!726512 x!740360))))))

(assert (=> b!4270605 (=> res!1754343 e!2651488)))

(declare-fun b!4270606 () Bool)

(declare-fun inv!62371 (Conc!14279) Bool)

(assert (=> b!4270606 (= e!2651488 (inv!62371 (c!726512 x!740360)))))

(assert (= (and d!1259567 c!726548) b!4270604))

(assert (= (and d!1259567 (not c!726548)) b!4270605))

(assert (= (and b!4270605 (not res!1754343)) b!4270606))

(declare-fun m!4863931 () Bool)

(assert (=> b!4270604 m!4863931))

(declare-fun m!4863933 () Bool)

(assert (=> b!4270606 m!4863933))

(assert (=> b!4270480 d!1259567))

(assert (=> bs!600503 d!1259489))

(assert (=> bs!600503 d!1259509))

(declare-fun d!1259569 () Bool)

(declare-fun c!726549 () Bool)

(assert (=> d!1259569 (= c!726549 ((_ is Node!14279) (c!726512 x!740359)))))

(declare-fun e!2651489 () Bool)

(assert (=> d!1259569 (= (inv!62364 (c!726512 x!740359)) e!2651489)))

(declare-fun b!4270607 () Bool)

(assert (=> b!4270607 (= e!2651489 (inv!62370 (c!726512 x!740359)))))

(declare-fun b!4270608 () Bool)

(declare-fun e!2651490 () Bool)

(assert (=> b!4270608 (= e!2651489 e!2651490)))

(declare-fun res!1754344 () Bool)

(assert (=> b!4270608 (= res!1754344 (not ((_ is Leaf!22074) (c!726512 x!740359))))))

(assert (=> b!4270608 (=> res!1754344 e!2651490)))

(declare-fun b!4270609 () Bool)

(assert (=> b!4270609 (= e!2651490 (inv!62371 (c!726512 x!740359)))))

(assert (= (and d!1259569 c!726549) b!4270607))

(assert (= (and d!1259569 (not c!726549)) b!4270608))

(assert (= (and b!4270608 (not res!1754344)) b!4270609))

(declare-fun m!4863935 () Bool)

(assert (=> b!4270607 m!4863935))

(declare-fun m!4863937 () Bool)

(assert (=> b!4270609 m!4863937))

(assert (=> b!4270479 d!1259569))

(assert (=> b!4270478 d!1259507))

(assert (=> b!4270478 d!1259485))

(assert (=> bs!600508 d!1259511))

(assert (=> bs!600497 d!1259491))

(assert (=> bs!600497 d!1259529))

(assert (=> bs!600497 d!1259505))

(assert (=> bs!600497 d!1259509))

(assert (=> bs!600514 d!1259491))

(assert (=> bs!600514 d!1259511))

(declare-fun d!1259571 () Bool)

(declare-fun c!726550 () Bool)

(assert (=> d!1259571 (= c!726550 ((_ is Node!14279) (c!726512 x!740358)))))

(declare-fun e!2651491 () Bool)

(assert (=> d!1259571 (= (inv!62364 (c!726512 x!740358)) e!2651491)))

(declare-fun b!4270610 () Bool)

(assert (=> b!4270610 (= e!2651491 (inv!62370 (c!726512 x!740358)))))

(declare-fun b!4270611 () Bool)

(declare-fun e!2651492 () Bool)

(assert (=> b!4270611 (= e!2651491 e!2651492)))

(declare-fun res!1754345 () Bool)

(assert (=> b!4270611 (= res!1754345 (not ((_ is Leaf!22074) (c!726512 x!740358))))))

(assert (=> b!4270611 (=> res!1754345 e!2651492)))

(declare-fun b!4270612 () Bool)

(assert (=> b!4270612 (= e!2651492 (inv!62371 (c!726512 x!740358)))))

(assert (= (and d!1259571 c!726550) b!4270610))

(assert (= (and d!1259571 (not c!726550)) b!4270611))

(assert (= (and b!4270611 (not res!1754345)) b!4270612))

(declare-fun m!4863939 () Bool)

(assert (=> b!4270610 m!4863939))

(declare-fun m!4863941 () Bool)

(assert (=> b!4270612 m!4863941))

(assert (=> b!4270477 d!1259571))

(assert (=> bs!600520 d!1259491))

(assert (=> b!4270496 d!1259505))

(assert (=> b!4270496 d!1259487))

(declare-fun tp!1307951 () Bool)

(declare-fun e!2651497 () Bool)

(declare-fun b!4270619 () Bool)

(declare-fun tp!1307952 () Bool)

(assert (=> b!4270619 (= e!2651497 (and (inv!62364 (left!35129 (c!726512 x!740360))) tp!1307951 (inv!62364 (right!35459 (c!726512 x!740360))) tp!1307952))))

(declare-fun b!4270620 () Bool)

(declare-fun inv!62372 (IArray!28563) Bool)

(assert (=> b!4270620 (= e!2651497 (inv!62372 (xs!17585 (c!726512 x!740360))))))

(assert (=> b!4270480 (= tp!1307935 (and (inv!62364 (c!726512 x!740360)) e!2651497))))

(assert (= (and b!4270480 ((_ is Node!14279) (c!726512 x!740360))) b!4270619))

(assert (= (and b!4270480 ((_ is Leaf!22074) (c!726512 x!740360))) b!4270620))

(declare-fun m!4863943 () Bool)

(assert (=> b!4270619 m!4863943))

(declare-fun m!4863945 () Bool)

(assert (=> b!4270619 m!4863945))

(declare-fun m!4863947 () Bool)

(assert (=> b!4270620 m!4863947))

(assert (=> b!4270480 m!4863781))

(declare-fun tp!1307953 () Bool)

(declare-fun b!4270621 () Bool)

(declare-fun tp!1307954 () Bool)

(declare-fun e!2651499 () Bool)

(assert (=> b!4270621 (= e!2651499 (and (inv!62364 (left!35129 (c!726512 x!740359))) tp!1307953 (inv!62364 (right!35459 (c!726512 x!740359))) tp!1307954))))

(declare-fun b!4270622 () Bool)

(assert (=> b!4270622 (= e!2651499 (inv!62372 (xs!17585 (c!726512 x!740359))))))

(assert (=> b!4270479 (= tp!1307936 (and (inv!62364 (c!726512 x!740359)) e!2651499))))

(assert (= (and b!4270479 ((_ is Node!14279) (c!726512 x!740359))) b!4270621))

(assert (= (and b!4270479 ((_ is Leaf!22074) (c!726512 x!740359))) b!4270622))

(declare-fun m!4863949 () Bool)

(assert (=> b!4270621 m!4863949))

(declare-fun m!4863951 () Bool)

(assert (=> b!4270621 m!4863951))

(declare-fun m!4863953 () Bool)

(assert (=> b!4270622 m!4863953))

(assert (=> b!4270479 m!4863779))

(declare-fun tp!1307956 () Bool)

(declare-fun tp!1307955 () Bool)

(declare-fun e!2651501 () Bool)

(declare-fun b!4270623 () Bool)

(assert (=> b!4270623 (= e!2651501 (and (inv!62364 (left!35129 (c!726512 x!740358))) tp!1307955 (inv!62364 (right!35459 (c!726512 x!740358))) tp!1307956))))

(declare-fun b!4270624 () Bool)

(assert (=> b!4270624 (= e!2651501 (inv!62372 (xs!17585 (c!726512 x!740358))))))

(assert (=> b!4270477 (= tp!1307934 (and (inv!62364 (c!726512 x!740358)) e!2651501))))

(assert (= (and b!4270477 ((_ is Node!14279) (c!726512 x!740358))) b!4270623))

(assert (= (and b!4270477 ((_ is Leaf!22074) (c!726512 x!740358))) b!4270624))

(declare-fun m!4863955 () Bool)

(assert (=> b!4270623 m!4863955))

(declare-fun m!4863957 () Bool)

(assert (=> b!4270623 m!4863957))

(declare-fun m!4863959 () Bool)

(assert (=> b!4270624 m!4863959))

(assert (=> b!4270477 m!4863755))

(check-sat (not b!4270612) (not b!4270528) (not b!4270604) (not d!1259555) (not d!1259563) (not d!1259561) (not b!4270621) (not b!4270550) (not b!4270622) (not b!4270609) (not d!1259511) (not d!1259527) (not b!4270477) (not d!1259509) (not d!1259549) (not b!4270596) (not b!4270607) (not b!4270597) (not d!1259545) (not b!4270620) (not b!4270624) (not b!4270623) (not b!4270619) (not b!4270579) (not d!1259557) (not d!1259547) (not b!4270610) (not b!4270555) (not b!4270551) (not b!4270606) (not b!4270479) (not b!4270480) (not d!1259559) (not d!1259513) (not b!4270529) (not d!1259507) (not d!1259505))
(check-sat)
