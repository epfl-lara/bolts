; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!409490 () Bool)

(assert start!409490)

(assert (=> start!409490 true))

(declare-fun b!4270105 () Bool)

(assert (=> b!4270105 true))

(assert (=> b!4270105 true))

(assert (=> b!4270105 true))

(declare-fun b!4270114 () Bool)

(declare-fun e!2651168 () Bool)

(declare-datatypes ((List!47418 0))(
  ( (Nil!47294) (Cons!47294 (h!52714 (_ BitVec 16)) (t!353653 List!47418)) )
))
(declare-datatypes ((IArray!28557 0))(
  ( (IArray!28558 (innerList!14336 List!47418)) )
))
(declare-datatypes ((Conc!14276 0))(
  ( (Node!14276 (left!35119 Conc!14276) (right!35449 Conc!14276) (csize!28782 Int) (cheight!14487 Int)) (Leaf!22070 (xs!17582 IArray!28557) (csize!28783 Int)) (Empty!14276) )
))
(declare-datatypes ((BalanceConc!28062 0))(
  ( (BalanceConc!28063 (c!726419 Conc!14276)) )
))
(declare-fun x!740033 () BalanceConc!28062)

(declare-fun tp!1307887 () Bool)

(declare-fun inv!62349 (Conc!14276) Bool)

(assert (=> b!4270114 (= e!2651168 (and (inv!62349 (c!726419 x!740033)) tp!1307887))))

(declare-datatypes ((BooleanLiteralValueInjection!8 0))(
  ( (BooleanLiteralValueInjection!9) )
))
(declare-fun thiss!2453 () BooleanLiteralValueInjection!8)

(declare-fun inst!1654 () Bool)

(declare-fun inv!62350 (BalanceConc!28062) Bool)

(declare-fun list!17132 (BalanceConc!28062) List!47418)

(declare-datatypes ((TokenValue!8249 0))(
  ( (FloatLiteralValue!16498 (text!58188 List!47418)) (TokenValueExt!8248 (__x!28695 Int)) (Broken!41245 (value!249076 List!47418)) (Object!8372) (End!8249) (Def!8249) (Underscore!8249) (Match!8249) (Else!8249) (Error!8249) (Case!8249) (If!8249) (Extends!8249) (Abstract!8249) (Class!8249) (Val!8249) (DelimiterValue!16498 (del!8309 List!47418)) (KeywordValue!8255 (value!249077 List!47418)) (CommentValue!16498 (value!249078 List!47418)) (WhitespaceValue!16498 (value!249079 List!47418)) (IndentationValue!8249 (value!249080 List!47418)) (String!55224) (Int32!8249) (Broken!41246 (value!249081 List!47418)) (Boolean!8250) (Unit!66203) (OperatorValue!8252 (op!8309 List!47418)) (IdentifierValue!16498 (value!249082 List!47418)) (IdentifierValue!16499 (value!249083 List!47418)) (WhitespaceValue!16499 (value!249084 List!47418)) (True!16498) (False!16498) (Broken!41247 (value!249085 List!47418)) (Broken!41248 (value!249086 List!47418)) (True!16499) (RightBrace!8249) (RightBracket!8249) (Colon!8249) (Null!8249) (Comma!8249) (LeftBracket!8249) (False!16499) (LeftBrace!8249) (ImaginaryLiteralValue!8249 (text!58189 List!47418)) (StringLiteralValue!24747 (value!249087 List!47418)) (EOFValue!8249 (value!249088 List!47418)) (IdentValue!8249 (value!249089 List!47418)) (DelimiterValue!16499 (value!249090 List!47418)) (DedentValue!8249 (value!249091 List!47418)) (NewLineValue!8249 (value!249092 List!47418)) (IntegerValue!24747 (value!249093 (_ BitVec 32)) (text!58190 List!47418)) (IntegerValue!24748 (value!249094 Int) (text!58191 List!47418)) (Times!8249) (Or!8249) (Equal!8249) (Minus!8249) (Broken!41249 (value!249095 List!47418)) (And!8249) (Div!8249) (LessEqual!8249) (Mod!8249) (Concat!21147) (Not!8249) (Plus!8249) (SpaceValue!8249 (value!249096 List!47418)) (IntegerValue!24749 (value!249097 Int) (text!58192 List!47418)) (StringLiteralValue!24748 (text!58193 List!47418)) (FloatLiteralValue!16499 (text!58194 List!47418)) (BytesLiteralValue!8249 (value!249098 List!47418)) (CommentValue!16499 (value!249099 List!47418)) (StringLiteralValue!24749 (value!249100 List!47418)) (ErrorTokenValue!8249 (msg!8310 List!47418)) )
))
(declare-fun toCharacters!9 (BooleanLiteralValueInjection!8 TokenValue!8249) BalanceConc!28062)

(declare-fun toValue!16 (BooleanLiteralValueInjection!8 BalanceConc!28062) TokenValue!8249)

(assert (=> start!409490 (= inst!1654 (=> (and (inv!62350 x!740033) e!2651168) (= (list!17132 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033))) (list!17132 x!740033))))))

(assert (= start!409490 b!4270114))

(declare-fun m!4863277 () Bool)

(assert (=> b!4270114 m!4863277))

(declare-fun m!4863279 () Bool)

(assert (=> start!409490 m!4863279))

(declare-fun m!4863281 () Bool)

(assert (=> start!409490 m!4863281))

(declare-fun m!4863283 () Bool)

(assert (=> start!409490 m!4863283))

(declare-fun m!4863285 () Bool)

(assert (=> start!409490 m!4863285))

(declare-fun m!4863287 () Bool)

(assert (=> start!409490 m!4863287))

(assert (=> start!409490 m!4863285))

(assert (=> start!409490 m!4863281))

(declare-fun res!1754185 () Bool)

(declare-fun e!2651169 () Bool)

(assert (=> b!4270105 (=> res!1754185 e!2651169)))

(declare-fun x!740034 () BalanceConc!28062)

(declare-fun x!740035 () BalanceConc!28062)

(assert (=> b!4270105 (= res!1754185 (not (= (list!17132 x!740034) (list!17132 x!740035))))))

(declare-fun inst!1655 () Bool)

(declare-fun e!2651170 () Bool)

(declare-fun e!2651171 () Bool)

(assert (=> b!4270105 (= inst!1655 (=> (and (inv!62350 x!740034) e!2651170 (inv!62350 x!740035) e!2651171) e!2651169))))

(declare-fun b!4270115 () Bool)

(assert (=> b!4270115 (= e!2651169 (= (toValue!16 thiss!2453 x!740034) (toValue!16 thiss!2453 x!740035)))))

(declare-fun b!4270116 () Bool)

(declare-fun tp!1307889 () Bool)

(assert (=> b!4270116 (= e!2651170 (and (inv!62349 (c!726419 x!740034)) tp!1307889))))

(declare-fun b!4270117 () Bool)

(declare-fun tp!1307888 () Bool)

(assert (=> b!4270117 (= e!2651171 (and (inv!62349 (c!726419 x!740035)) tp!1307888))))

(assert (= (and b!4270105 (not res!1754185)) b!4270115))

(assert (= b!4270105 b!4270116))

(assert (= b!4270105 b!4270117))

(declare-fun m!4863289 () Bool)

(assert (=> b!4270105 m!4863289))

(declare-fun m!4863291 () Bool)

(assert (=> b!4270105 m!4863291))

(declare-fun m!4863293 () Bool)

(assert (=> b!4270105 m!4863293))

(declare-fun m!4863295 () Bool)

(assert (=> b!4270105 m!4863295))

(declare-fun m!4863297 () Bool)

(assert (=> b!4270115 m!4863297))

(declare-fun m!4863299 () Bool)

(assert (=> b!4270115 m!4863299))

(declare-fun m!4863301 () Bool)

(assert (=> b!4270116 m!4863301))

(declare-fun m!4863303 () Bool)

(assert (=> b!4270117 m!4863303))

(declare-fun bs!600319 () Bool)

(declare-fun neg-inst!1654 () Bool)

(declare-fun s!239554 () Bool)

(assert (= bs!600319 (and neg-inst!1654 s!239554)))

(assert (=> bs!600319 (=> true (= (list!17132 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033))) (list!17132 x!740033)))))

(assert (=> m!4863279 m!4863285))

(assert (=> m!4863279 m!4863281))

(assert (=> m!4863279 m!4863283))

(assert (=> m!4863279 s!239554))

(assert (=> m!4863285 s!239554))

(declare-fun bs!600320 () Bool)

(assert (= bs!600320 (and neg-inst!1654 start!409490)))

(assert (=> bs!600320 (= true inst!1654)))

(declare-fun bs!600321 () Bool)

(declare-fun neg-inst!1655 () Bool)

(declare-fun s!239556 () Bool)

(assert (= bs!600321 (and neg-inst!1655 s!239556)))

(declare-fun res!1754186 () Bool)

(declare-fun e!2651172 () Bool)

(assert (=> bs!600321 (=> res!1754186 e!2651172)))

(assert (=> bs!600321 (= res!1754186 (not (= (list!17132 x!740034) (list!17132 x!740034))))))

(assert (=> bs!600321 (=> true e!2651172)))

(declare-fun b!4270118 () Bool)

(assert (=> b!4270118 (= e!2651172 (= (toValue!16 thiss!2453 x!740034) (toValue!16 thiss!2453 x!740034)))))

(assert (= (and bs!600321 (not res!1754186)) b!4270118))

(assert (=> m!4863297 m!4863289))

(assert (=> m!4863297 m!4863289))

(assert (=> m!4863297 s!239556))

(assert (=> m!4863297 s!239556))

(declare-fun bs!600322 () Bool)

(declare-fun s!239558 () Bool)

(assert (= bs!600322 (and neg-inst!1655 s!239558)))

(declare-fun res!1754187 () Bool)

(declare-fun e!2651173 () Bool)

(assert (=> bs!600322 (=> res!1754187 e!2651173)))

(assert (=> bs!600322 (= res!1754187 (not (= (list!17132 x!740034) (list!17132 x!740035))))))

(assert (=> bs!600322 (=> true e!2651173)))

(declare-fun b!4270119 () Bool)

(assert (=> b!4270119 (= e!2651173 (= (toValue!16 thiss!2453 x!740034) (toValue!16 thiss!2453 x!740035)))))

(assert (= (and bs!600322 (not res!1754187)) b!4270119))

(declare-fun bs!600323 () Bool)

(assert (= bs!600323 (and m!4863291 m!4863297)))

(assert (=> bs!600323 m!4863289))

(assert (=> bs!600323 m!4863291))

(assert (=> bs!600323 s!239558))

(declare-fun bs!600324 () Bool)

(declare-fun s!239560 () Bool)

(assert (= bs!600324 (and neg-inst!1655 s!239560)))

(declare-fun res!1754188 () Bool)

(declare-fun e!2651174 () Bool)

(assert (=> bs!600324 (=> res!1754188 e!2651174)))

(assert (=> bs!600324 (= res!1754188 (not (= (list!17132 x!740035) (list!17132 x!740035))))))

(assert (=> bs!600324 (=> true e!2651174)))

(declare-fun b!4270120 () Bool)

(assert (=> b!4270120 (= e!2651174 (= (toValue!16 thiss!2453 x!740035) (toValue!16 thiss!2453 x!740035)))))

(assert (= (and bs!600324 (not res!1754188)) b!4270120))

(assert (=> m!4863291 s!239560))

(declare-fun bs!600325 () Bool)

(declare-fun s!239562 () Bool)

(assert (= bs!600325 (and neg-inst!1655 s!239562)))

(declare-fun res!1754189 () Bool)

(declare-fun e!2651175 () Bool)

(assert (=> bs!600325 (=> res!1754189 e!2651175)))

(assert (=> bs!600325 (= res!1754189 (not (= (list!17132 x!740035) (list!17132 x!740034))))))

(assert (=> bs!600325 (=> true e!2651175)))

(declare-fun b!4270121 () Bool)

(assert (=> b!4270121 (= e!2651175 (= (toValue!16 thiss!2453 x!740035) (toValue!16 thiss!2453 x!740034)))))

(assert (= (and bs!600325 (not res!1754189)) b!4270121))

(assert (=> bs!600323 m!4863291))

(assert (=> bs!600323 m!4863289))

(assert (=> bs!600323 s!239562))

(assert (=> m!4863291 s!239560))

(declare-fun bs!600326 () Bool)

(assert (= bs!600326 (and m!4863289 m!4863291)))

(assert (=> bs!600326 s!239562))

(declare-fun bs!600327 () Bool)

(assert (= bs!600327 (and m!4863289 m!4863297)))

(assert (=> bs!600327 s!239556))

(assert (=> m!4863289 s!239556))

(assert (=> bs!600326 s!239558))

(assert (=> bs!600327 s!239556))

(assert (=> m!4863289 s!239556))

(declare-fun bs!600328 () Bool)

(declare-fun s!239564 () Bool)

(assert (= bs!600328 (and neg-inst!1655 s!239564)))

(declare-fun res!1754190 () Bool)

(declare-fun e!2651176 () Bool)

(assert (=> bs!600328 (=> res!1754190 e!2651176)))

(assert (=> bs!600328 (= res!1754190 (not (= (list!17132 x!740035) (list!17132 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033))))))))

(assert (=> bs!600328 (=> true e!2651176)))

(declare-fun b!4270122 () Bool)

(assert (=> b!4270122 (= e!2651176 (= (toValue!16 thiss!2453 x!740035) (toValue!16 thiss!2453 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033)))))))

(assert (= (and bs!600328 (not res!1754190)) b!4270122))

(declare-fun bs!600329 () Bool)

(assert (= bs!600329 (and m!4863283 m!4863291)))

(assert (=> bs!600329 m!4863291))

(assert (=> bs!600329 m!4863283))

(assert (=> bs!600329 s!239564))

(declare-fun bs!600330 () Bool)

(declare-fun s!239566 () Bool)

(assert (= bs!600330 (and neg-inst!1655 s!239566)))

(declare-fun res!1754191 () Bool)

(declare-fun e!2651177 () Bool)

(assert (=> bs!600330 (=> res!1754191 e!2651177)))

(assert (=> bs!600330 (= res!1754191 (not (= (list!17132 x!740034) (list!17132 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033))))))))

(assert (=> bs!600330 (=> true e!2651177)))

(declare-fun b!4270123 () Bool)

(assert (=> b!4270123 (= e!2651177 (= (toValue!16 thiss!2453 x!740034) (toValue!16 thiss!2453 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033)))))))

(assert (= (and bs!600330 (not res!1754191)) b!4270123))

(declare-fun bs!600331 () Bool)

(assert (= bs!600331 (and m!4863283 m!4863297 m!4863289)))

(assert (=> bs!600331 m!4863289))

(assert (=> bs!600331 m!4863283))

(assert (=> bs!600331 s!239566))

(declare-fun bs!600332 () Bool)

(declare-fun s!239568 () Bool)

(assert (= bs!600332 (and neg-inst!1655 s!239568)))

(declare-fun res!1754192 () Bool)

(declare-fun e!2651178 () Bool)

(assert (=> bs!600332 (=> res!1754192 e!2651178)))

(assert (=> bs!600332 (= res!1754192 (not (= (list!17132 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033))) (list!17132 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033))))))))

(assert (=> bs!600332 (=> true e!2651178)))

(declare-fun b!4270124 () Bool)

(assert (=> b!4270124 (= e!2651178 (= (toValue!16 thiss!2453 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033))) (toValue!16 thiss!2453 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033)))))))

(assert (= (and bs!600332 (not res!1754192)) b!4270124))

(assert (=> m!4863283 s!239568))

(declare-fun bs!600333 () Bool)

(declare-fun s!239570 () Bool)

(assert (= bs!600333 (and neg-inst!1655 s!239570)))

(declare-fun res!1754193 () Bool)

(declare-fun e!2651179 () Bool)

(assert (=> bs!600333 (=> res!1754193 e!2651179)))

(assert (=> bs!600333 (= res!1754193 (not (= (list!17132 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033))) (list!17132 x!740035))))))

(assert (=> bs!600333 (=> true e!2651179)))

(declare-fun b!4270125 () Bool)

(assert (=> b!4270125 (= e!2651179 (= (toValue!16 thiss!2453 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033))) (toValue!16 thiss!2453 x!740035)))))

(assert (= (and bs!600333 (not res!1754193)) b!4270125))

(assert (=> bs!600329 m!4863283))

(assert (=> bs!600329 m!4863291))

(assert (=> bs!600329 s!239570))

(declare-fun bs!600334 () Bool)

(declare-fun s!239572 () Bool)

(assert (= bs!600334 (and neg-inst!1655 s!239572)))

(declare-fun res!1754194 () Bool)

(declare-fun e!2651180 () Bool)

(assert (=> bs!600334 (=> res!1754194 e!2651180)))

(assert (=> bs!600334 (= res!1754194 (not (= (list!17132 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033))) (list!17132 x!740034))))))

(assert (=> bs!600334 (=> true e!2651180)))

(declare-fun b!4270126 () Bool)

(assert (=> b!4270126 (= e!2651180 (= (toValue!16 thiss!2453 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033))) (toValue!16 thiss!2453 x!740034)))))

(assert (= (and bs!600334 (not res!1754194)) b!4270126))

(assert (=> bs!600331 m!4863283))

(assert (=> bs!600331 m!4863289))

(assert (=> bs!600331 s!239572))

(assert (=> m!4863283 s!239568))

(declare-fun bs!600335 () Bool)

(declare-fun s!239574 () Bool)

(assert (= bs!600335 (and neg-inst!1655 s!239574)))

(declare-fun res!1754195 () Bool)

(declare-fun e!2651181 () Bool)

(assert (=> bs!600335 (=> res!1754195 e!2651181)))

(assert (=> bs!600335 (= res!1754195 (not (= (list!17132 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033))) (list!17132 x!740033))))))

(assert (=> bs!600335 (=> true e!2651181)))

(declare-fun b!4270127 () Bool)

(assert (=> b!4270127 (= e!2651181 (= (toValue!16 thiss!2453 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033))) (toValue!16 thiss!2453 x!740033)))))

(assert (= (and bs!600335 (not res!1754195)) b!4270127))

(declare-fun bs!600336 () Bool)

(assert (= bs!600336 (and m!4863279 m!4863283)))

(assert (=> bs!600336 m!4863283))

(assert (=> bs!600336 m!4863279))

(assert (=> bs!600336 s!239574))

(declare-fun bs!600337 () Bool)

(declare-fun s!239576 () Bool)

(assert (= bs!600337 (and neg-inst!1655 s!239576)))

(declare-fun res!1754196 () Bool)

(declare-fun e!2651182 () Bool)

(assert (=> bs!600337 (=> res!1754196 e!2651182)))

(assert (=> bs!600337 (= res!1754196 (not (= (list!17132 x!740035) (list!17132 x!740033))))))

(assert (=> bs!600337 (=> true e!2651182)))

(declare-fun b!4270128 () Bool)

(assert (=> b!4270128 (= e!2651182 (= (toValue!16 thiss!2453 x!740035) (toValue!16 thiss!2453 x!740033)))))

(assert (= (and bs!600337 (not res!1754196)) b!4270128))

(declare-fun bs!600338 () Bool)

(assert (= bs!600338 (and m!4863279 m!4863291)))

(assert (=> bs!600338 m!4863291))

(assert (=> bs!600338 m!4863279))

(assert (=> bs!600338 s!239576))

(declare-fun bs!600339 () Bool)

(declare-fun s!239578 () Bool)

(assert (= bs!600339 (and neg-inst!1655 s!239578)))

(declare-fun res!1754197 () Bool)

(declare-fun e!2651183 () Bool)

(assert (=> bs!600339 (=> res!1754197 e!2651183)))

(assert (=> bs!600339 (= res!1754197 (not (= (list!17132 x!740034) (list!17132 x!740033))))))

(assert (=> bs!600339 (=> true e!2651183)))

(declare-fun b!4270129 () Bool)

(assert (=> b!4270129 (= e!2651183 (= (toValue!16 thiss!2453 x!740034) (toValue!16 thiss!2453 x!740033)))))

(assert (= (and bs!600339 (not res!1754197)) b!4270129))

(declare-fun bs!600340 () Bool)

(assert (= bs!600340 (and m!4863279 m!4863297 m!4863289)))

(assert (=> bs!600340 m!4863289))

(assert (=> bs!600340 m!4863279))

(assert (=> bs!600340 s!239578))

(declare-fun bs!600341 () Bool)

(declare-fun s!239580 () Bool)

(assert (= bs!600341 (and neg-inst!1655 s!239580)))

(declare-fun res!1754198 () Bool)

(declare-fun e!2651184 () Bool)

(assert (=> bs!600341 (=> res!1754198 e!2651184)))

(assert (=> bs!600341 (= res!1754198 (not (= (list!17132 x!740033) (list!17132 x!740033))))))

(assert (=> bs!600341 (=> true e!2651184)))

(declare-fun b!4270130 () Bool)

(assert (=> b!4270130 (= e!2651184 (= (toValue!16 thiss!2453 x!740033) (toValue!16 thiss!2453 x!740033)))))

(assert (= (and bs!600341 (not res!1754198)) b!4270130))

(assert (=> m!4863279 s!239580))

(declare-fun bs!600342 () Bool)

(declare-fun s!239582 () Bool)

(assert (= bs!600342 (and neg-inst!1655 s!239582)))

(declare-fun res!1754199 () Bool)

(declare-fun e!2651185 () Bool)

(assert (=> bs!600342 (=> res!1754199 e!2651185)))

(assert (=> bs!600342 (= res!1754199 (not (= (list!17132 x!740033) (list!17132 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033))))))))

(assert (=> bs!600342 (=> true e!2651185)))

(declare-fun b!4270131 () Bool)

(assert (=> b!4270131 (= e!2651185 (= (toValue!16 thiss!2453 x!740033) (toValue!16 thiss!2453 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033)))))))

(assert (= (and bs!600342 (not res!1754199)) b!4270131))

(assert (=> bs!600336 m!4863279))

(assert (=> bs!600336 m!4863283))

(assert (=> bs!600336 s!239582))

(declare-fun bs!600343 () Bool)

(declare-fun s!239584 () Bool)

(assert (= bs!600343 (and neg-inst!1655 s!239584)))

(declare-fun res!1754200 () Bool)

(declare-fun e!2651186 () Bool)

(assert (=> bs!600343 (=> res!1754200 e!2651186)))

(assert (=> bs!600343 (= res!1754200 (not (= (list!17132 x!740033) (list!17132 x!740035))))))

(assert (=> bs!600343 (=> true e!2651186)))

(declare-fun b!4270132 () Bool)

(assert (=> b!4270132 (= e!2651186 (= (toValue!16 thiss!2453 x!740033) (toValue!16 thiss!2453 x!740035)))))

(assert (= (and bs!600343 (not res!1754200)) b!4270132))

(assert (=> bs!600338 m!4863279))

(assert (=> bs!600338 m!4863291))

(assert (=> bs!600338 s!239584))

(declare-fun bs!600344 () Bool)

(declare-fun s!239586 () Bool)

(assert (= bs!600344 (and neg-inst!1655 s!239586)))

(declare-fun res!1754201 () Bool)

(declare-fun e!2651187 () Bool)

(assert (=> bs!600344 (=> res!1754201 e!2651187)))

(assert (=> bs!600344 (= res!1754201 (not (= (list!17132 x!740033) (list!17132 x!740034))))))

(assert (=> bs!600344 (=> true e!2651187)))

(declare-fun b!4270133 () Bool)

(assert (=> b!4270133 (= e!2651187 (= (toValue!16 thiss!2453 x!740033) (toValue!16 thiss!2453 x!740034)))))

(assert (= (and bs!600344 (not res!1754201)) b!4270133))

(assert (=> bs!600340 m!4863279))

(assert (=> bs!600340 m!4863289))

(assert (=> bs!600340 s!239586))

(assert (=> m!4863279 s!239580))

(declare-fun bs!600345 () Bool)

(assert (= bs!600345 (and m!4863299 m!4863283)))

(assert (=> bs!600345 s!239570))

(declare-fun bs!600346 () Bool)

(assert (= bs!600346 (and m!4863299 m!4863291)))

(assert (=> bs!600346 s!239560))

(declare-fun bs!600347 () Bool)

(assert (= bs!600347 (and m!4863299 m!4863279)))

(assert (=> bs!600347 s!239584))

(assert (=> m!4863299 s!239560))

(declare-fun bs!600348 () Bool)

(assert (= bs!600348 (and m!4863299 m!4863297 m!4863289)))

(assert (=> bs!600348 s!239558))

(assert (=> bs!600346 s!239560))

(assert (=> bs!600348 s!239562))

(assert (=> m!4863299 s!239560))

(assert (=> bs!600345 s!239564))

(assert (=> bs!600347 s!239576))

(declare-fun bs!600349 () Bool)

(assert (= bs!600349 (and m!4863285 m!4863279)))

(assert (=> bs!600349 s!239580))

(declare-fun bs!600350 () Bool)

(assert (= bs!600350 (and m!4863285 m!4863291 m!4863299)))

(assert (=> bs!600350 s!239576))

(declare-fun bs!600351 () Bool)

(assert (= bs!600351 (and m!4863285 m!4863297 m!4863289)))

(assert (=> bs!600351 s!239578))

(assert (=> m!4863285 s!239580))

(declare-fun bs!600352 () Bool)

(assert (= bs!600352 (and m!4863285 m!4863283)))

(assert (=> bs!600352 s!239574))

(assert (=> bs!600349 s!239580))

(assert (=> bs!600352 s!239582))

(assert (=> bs!600351 s!239586))

(assert (=> m!4863285 s!239580))

(assert (=> bs!600350 s!239584))

(declare-fun bs!600353 () Bool)

(assert (= bs!600353 (and neg-inst!1655 b!4270105)))

(assert (=> bs!600353 (= true inst!1655)))

(declare-fun res!1754184 () Bool)

(declare-fun e!2651167 () Bool)

(assert (=> start!409490 (=> res!1754184 e!2651167)))

(declare-fun lambda!130674 () Int)

(declare-fun Forall!1627 (Int) Bool)

(assert (=> start!409490 (= res!1754184 (not (Forall!1627 lambda!130674)))))

(assert (=> start!409490 (= (Forall!1627 lambda!130674) inst!1654)))

(assert (=> start!409490 (not e!2651167)))

(assert (=> start!409490 true))

(declare-fun lambda!130677 () Int)

(declare-fun Forall2!1218 (Int) Bool)

(assert (=> b!4270105 (= e!2651167 (Forall2!1218 lambda!130677))))

(assert (=> b!4270105 (= (Forall2!1218 lambda!130677) inst!1655)))

(declare-fun lambda!130675 () Int)

(declare-fun lambda!130676 () Int)

(declare-fun semiInverseModEq!3503 (Int Int) Bool)

(assert (=> b!4270105 (= (semiInverseModEq!3503 lambda!130675 lambda!130676) (Forall!1627 lambda!130674))))

(assert (= neg-inst!1654 inst!1654))

(assert (= (and start!409490 (not res!1754184)) b!4270105))

(assert (= neg-inst!1655 inst!1655))

(declare-fun m!4863305 () Bool)

(assert (=> start!409490 m!4863305))

(assert (=> start!409490 m!4863305))

(declare-fun m!4863307 () Bool)

(assert (=> b!4270105 m!4863307))

(assert (=> b!4270105 m!4863307))

(declare-fun m!4863309 () Bool)

(assert (=> b!4270105 m!4863309))

(assert (=> b!4270105 m!4863305))

(push 1)

(assert (not b!4270123))

(assert (not bs!600322))

(assert (not b!4270115))

(assert (not bs!600337))

(assert (not b!4270116))

(assert (not bs!600335))

(assert (not bs!600332))

(assert (not bs!600342))

(assert (not b!4270122))

(assert (not b!4270121))

(assert (not bs!600343))

(assert (not bs!600321))

(assert (not bs!600330))

(assert (not b!4270124))

(assert (not b!4270130))

(assert (not b!4270132))

(assert (not bs!600344))

(assert (not bs!600334))

(assert (not bs!600325))

(assert (not b!4270133))

(assert (not b!4270126))

(assert (not bs!600333))

(assert (not bs!600339))

(assert (not b!4270131))

(assert (not b!4270128))

(assert (not bs!600319))

(assert (not b!4270120))

(assert (not b!4270114))

(assert (not b!4270129))

(assert (not bs!600341))

(assert (not b!4270105))

(assert (not b!4270117))

(assert (not b!4270127))

(assert (not b!4270119))

(assert (not b!4270118))

(assert (not bs!600328))

(assert (not bs!600324))

(assert (not start!409490))

(assert (not b!4270125))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1259348 () Bool)

(declare-fun list!17134 (Conc!14276) List!47418)

(assert (=> d!1259348 (= (list!17132 x!740035) (list!17134 (c!726419 x!740035)))))

(declare-fun bs!600388 () Bool)

(assert (= bs!600388 d!1259348))

(declare-fun m!4863345 () Bool)

(assert (=> bs!600388 m!4863345))

(assert (=> bs!600328 d!1259348))

(declare-fun d!1259350 () Bool)

(assert (=> d!1259350 (= (list!17132 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033))) (list!17134 (c!726419 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033)))))))

(declare-fun bs!600389 () Bool)

(assert (= bs!600389 d!1259350))

(declare-fun m!4863347 () Bool)

(assert (=> bs!600389 m!4863347))

(assert (=> bs!600328 d!1259350))

(declare-fun d!1259352 () Bool)

(assert (=> d!1259352 (= (list!17132 x!740034) (list!17134 (c!726419 x!740034)))))

(declare-fun bs!600390 () Bool)

(assert (= bs!600390 d!1259352))

(declare-fun m!4863349 () Bool)

(assert (=> bs!600390 m!4863349))

(assert (=> bs!600322 d!1259352))

(assert (=> bs!600322 d!1259348))

(declare-fun d!1259354 () Bool)

(declare-fun lt!1512579 () List!47418)

(declare-fun efficientList!477 (BalanceConc!28062) List!47418)

(assert (=> d!1259354 (= lt!1512579 (efficientList!477 x!740035))))

(assert (=> d!1259354 (= (toValue!16 thiss!2453 x!740035) (ite (= lt!1512579 (Cons!47294 #x0074 (Cons!47294 #x0072 (Cons!47294 #x0075 (Cons!47294 #x0065 Nil!47294))))) True!16498 (ite (= lt!1512579 (Cons!47294 #x0066 (Cons!47294 #x0061 (Cons!47294 #x006C (Cons!47294 #x0073 (Cons!47294 #x0065 Nil!47294)))))) False!16498 (Broken!41247 lt!1512579))))))

(declare-fun bs!600391 () Bool)

(assert (= bs!600391 d!1259354))

(declare-fun m!4863351 () Bool)

(assert (=> bs!600391 m!4863351))

(assert (=> b!4270128 d!1259354))

(declare-fun d!1259356 () Bool)

(declare-fun lt!1512580 () List!47418)

(assert (=> d!1259356 (= lt!1512580 (efficientList!477 x!740033))))

(assert (=> d!1259356 (= (toValue!16 thiss!2453 x!740033) (ite (= lt!1512580 (Cons!47294 #x0074 (Cons!47294 #x0072 (Cons!47294 #x0075 (Cons!47294 #x0065 Nil!47294))))) True!16498 (ite (= lt!1512580 (Cons!47294 #x0066 (Cons!47294 #x0061 (Cons!47294 #x006C (Cons!47294 #x0073 (Cons!47294 #x0065 Nil!47294)))))) False!16498 (Broken!41247 lt!1512580))))))

(declare-fun bs!600392 () Bool)

(assert (= bs!600392 d!1259356))

(declare-fun m!4863353 () Bool)

(assert (=> bs!600392 m!4863353))

(assert (=> b!4270128 d!1259356))

(declare-fun d!1259358 () Bool)

(assert (=> d!1259358 (= (list!17132 x!740033) (list!17134 (c!726419 x!740033)))))

(declare-fun bs!600393 () Bool)

(assert (= bs!600393 d!1259358))

(declare-fun m!4863355 () Bool)

(assert (=> bs!600393 m!4863355))

(assert (=> bs!600343 d!1259358))

(assert (=> bs!600343 d!1259348))

(declare-fun d!1259360 () Bool)

(declare-fun lt!1512581 () List!47418)

(assert (=> d!1259360 (= lt!1512581 (efficientList!477 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033))))))

(assert (=> d!1259360 (= (toValue!16 thiss!2453 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033))) (ite (= lt!1512581 (Cons!47294 #x0074 (Cons!47294 #x0072 (Cons!47294 #x0075 (Cons!47294 #x0065 Nil!47294))))) True!16498 (ite (= lt!1512581 (Cons!47294 #x0066 (Cons!47294 #x0061 (Cons!47294 #x006C (Cons!47294 #x0073 (Cons!47294 #x0065 Nil!47294)))))) False!16498 (Broken!41247 lt!1512581))))))

(declare-fun bs!600394 () Bool)

(assert (= bs!600394 d!1259360))

(assert (=> bs!600394 m!4863281))

(declare-fun m!4863357 () Bool)

(assert (=> bs!600394 m!4863357))

(assert (=> b!4270125 d!1259360))

(assert (=> b!4270125 d!1259354))

(assert (=> b!4270122 d!1259354))

(assert (=> b!4270122 d!1259360))

(declare-fun d!1259362 () Bool)

(declare-fun lt!1512582 () List!47418)

(assert (=> d!1259362 (= lt!1512582 (efficientList!477 x!740034))))

(assert (=> d!1259362 (= (toValue!16 thiss!2453 x!740034) (ite (= lt!1512582 (Cons!47294 #x0074 (Cons!47294 #x0072 (Cons!47294 #x0075 (Cons!47294 #x0065 Nil!47294))))) True!16498 (ite (= lt!1512582 (Cons!47294 #x0066 (Cons!47294 #x0061 (Cons!47294 #x006C (Cons!47294 #x0073 (Cons!47294 #x0065 Nil!47294)))))) False!16498 (Broken!41247 lt!1512582))))))

(declare-fun bs!600395 () Bool)

(assert (= bs!600395 d!1259362))

(declare-fun m!4863359 () Bool)

(assert (=> bs!600395 m!4863359))

(assert (=> b!4270119 d!1259362))

(assert (=> b!4270119 d!1259354))

(assert (=> bs!600339 d!1259352))

(assert (=> bs!600339 d!1259358))

(assert (=> b!4270132 d!1259356))

(assert (=> b!4270132 d!1259354))

(assert (=> bs!600334 d!1259350))

(assert (=> bs!600334 d!1259352))

(assert (=> bs!600330 d!1259352))

(assert (=> bs!600330 d!1259350))

(assert (=> bs!600344 d!1259358))

(assert (=> bs!600344 d!1259352))

(assert (=> b!4270129 d!1259362))

(assert (=> b!4270129 d!1259356))

(assert (=> bs!600324 d!1259348))

(assert (=> b!4270126 d!1259360))

(assert (=> b!4270126 d!1259362))

(assert (=> bs!600335 d!1259350))

(assert (=> bs!600335 d!1259358))

(assert (=> b!4270133 d!1259356))

(assert (=> b!4270133 d!1259362))

(assert (=> b!4270123 d!1259362))

(assert (=> b!4270123 d!1259360))

(assert (=> bs!600341 d!1259358))

(assert (=> b!4270120 d!1259354))

(assert (=> bs!600325 d!1259348))

(assert (=> bs!600325 d!1259352))

(assert (=> b!4270127 d!1259360))

(assert (=> b!4270127 d!1259356))

(assert (=> b!4270130 d!1259356))

(assert (=> bs!600332 d!1259350))

(assert (=> b!4270121 d!1259354))

(assert (=> b!4270121 d!1259362))

(assert (=> bs!600342 d!1259358))

(assert (=> bs!600342 d!1259350))

(assert (=> bs!600321 d!1259352))

(assert (=> bs!600337 d!1259348))

(assert (=> bs!600337 d!1259358))

(assert (=> b!4270124 d!1259360))

(assert (=> b!4270118 d!1259362))

(assert (=> bs!600333 d!1259350))

(assert (=> bs!600333 d!1259348))

(assert (=> b!4270131 d!1259356))

(assert (=> b!4270131 d!1259360))

(declare-fun bs!600396 () Bool)

(assert (= bs!600396 (and m!4863297 b!4270118)))

(assert (=> bs!600396 m!4863297))

(assert (=> bs!600396 m!4863297))

(declare-fun bs!600397 () Bool)

(assert (= bs!600397 (and m!4863291 m!4863297 b!4270119)))

(assert (=> bs!600397 m!4863297))

(assert (=> bs!600397 m!4863299))

(declare-fun bs!600398 () Bool)

(assert (= bs!600398 (and m!4863291 b!4270120)))

(assert (=> bs!600398 m!4863299))

(assert (=> bs!600398 m!4863299))

(declare-fun bs!600399 () Bool)

(assert (= bs!600399 (and m!4863291 m!4863297 b!4270121)))

(assert (=> bs!600399 m!4863299))

(assert (=> bs!600399 m!4863297))

(declare-fun bs!600400 () Bool)

(assert (= bs!600400 (and m!4863283 m!4863291 b!4270122)))

(assert (=> bs!600400 m!4863299))

(declare-fun m!4863361 () Bool)

(assert (=> bs!600400 m!4863361))

(declare-fun bs!600401 () Bool)

(assert (= bs!600401 (and m!4863283 m!4863297 m!4863289 b!4270123)))

(assert (=> bs!600401 m!4863297))

(assert (=> bs!600401 m!4863361))

(declare-fun bs!600402 () Bool)

(assert (= bs!600402 (and m!4863283 b!4270124)))

(assert (=> bs!600402 m!4863361))

(assert (=> bs!600402 m!4863361))

(declare-fun bs!600403 () Bool)

(assert (= bs!600403 (and m!4863283 m!4863291 b!4270125)))

(assert (=> bs!600403 m!4863361))

(assert (=> bs!600403 m!4863299))

(declare-fun bs!600404 () Bool)

(assert (= bs!600404 (and m!4863283 m!4863297 m!4863289 b!4270126)))

(assert (=> bs!600404 m!4863361))

(assert (=> bs!600404 m!4863297))

(declare-fun bs!600405 () Bool)

(assert (= bs!600405 (and m!4863279 m!4863283 b!4270127)))

(assert (=> bs!600405 m!4863361))

(assert (=> bs!600405 m!4863285))

(declare-fun bs!600406 () Bool)

(assert (= bs!600406 (and m!4863279 m!4863291 b!4270128)))

(assert (=> bs!600406 m!4863299))

(assert (=> bs!600406 m!4863285))

(declare-fun bs!600407 () Bool)

(assert (= bs!600407 (and m!4863279 m!4863297 m!4863289 b!4270129)))

(assert (=> bs!600407 m!4863297))

(assert (=> bs!600407 m!4863285))

(declare-fun bs!600408 () Bool)

(assert (= bs!600408 (and m!4863279 b!4270130)))

(assert (=> bs!600408 m!4863285))

(assert (=> bs!600408 m!4863285))

(declare-fun bs!600409 () Bool)

(assert (= bs!600409 (and m!4863279 m!4863283 b!4270131)))

(assert (=> bs!600409 m!4863285))

(assert (=> bs!600409 m!4863361))

(declare-fun bs!600410 () Bool)

(assert (= bs!600410 (and m!4863279 m!4863291 b!4270132)))

(assert (=> bs!600410 m!4863285))

(assert (=> bs!600410 m!4863299))

(declare-fun bs!600411 () Bool)

(assert (= bs!600411 (and m!4863279 m!4863297 m!4863289 b!4270133)))

(assert (=> bs!600411 m!4863285))

(assert (=> bs!600411 m!4863297))

(push 1)

(assert (not d!1259362))

(assert (not d!1259358))

(assert (not d!1259348))

(assert (not d!1259356))

(assert (not d!1259350))

(assert (not bs!600319))

(assert (not b!4270105))

(assert (not b!4270115))

(assert (not b!4270116))

(assert (not b!4270117))

(assert (not d!1259360))

(assert (not d!1259352))

(assert (not start!409490))

(assert (not b!4270114))

(assert (not d!1259354))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1259380 () Bool)

(declare-fun lt!1512591 () List!47418)

(assert (=> d!1259380 (= lt!1512591 (list!17132 x!740033))))

(declare-fun efficientList!479 (Conc!14276 List!47418) List!47418)

(declare-fun efficientList$default$2!165 (Conc!14276) List!47418)

(assert (=> d!1259380 (= lt!1512591 (efficientList!479 (c!726419 x!740033) (efficientList$default$2!165 (c!726419 x!740033))))))

(assert (=> d!1259380 (= (efficientList!477 x!740033) lt!1512591)))

(declare-fun bs!600436 () Bool)

(assert (= bs!600436 d!1259380))

(assert (=> bs!600436 m!4863279))

(declare-fun m!4863381 () Bool)

(assert (=> bs!600436 m!4863381))

(assert (=> bs!600436 m!4863381))

(declare-fun m!4863383 () Bool)

(assert (=> bs!600436 m!4863383))

(assert (=> d!1259356 d!1259380))

(declare-fun b!4270188 () Bool)

(declare-fun e!2651229 () List!47418)

(declare-fun e!2651230 () List!47418)

(assert (=> b!4270188 (= e!2651229 e!2651230)))

(declare-fun c!726426 () Bool)

(assert (=> b!4270188 (= c!726426 (is-Leaf!22070 (c!726419 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033)))))))

(declare-fun b!4270187 () Bool)

(assert (=> b!4270187 (= e!2651229 Nil!47294)))

(declare-fun b!4270189 () Bool)

(declare-fun list!17136 (IArray!28557) List!47418)

(assert (=> b!4270189 (= e!2651230 (list!17136 (xs!17582 (c!726419 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033))))))))

(declare-fun b!4270190 () Bool)

(declare-fun ++!12064 (List!47418 List!47418) List!47418)

(assert (=> b!4270190 (= e!2651230 (++!12064 (list!17134 (left!35119 (c!726419 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033))))) (list!17134 (right!35449 (c!726419 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033)))))))))

(declare-fun d!1259382 () Bool)

(declare-fun c!726425 () Bool)

(assert (=> d!1259382 (= c!726425 (is-Empty!14276 (c!726419 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033)))))))

(assert (=> d!1259382 (= (list!17134 (c!726419 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033)))) e!2651229)))

(assert (= (and d!1259382 c!726425) b!4270187))

(assert (= (and d!1259382 (not c!726425)) b!4270188))

(assert (= (and b!4270188 c!726426) b!4270189))

(assert (= (and b!4270188 (not c!726426)) b!4270190))

(declare-fun m!4863385 () Bool)

(assert (=> b!4270189 m!4863385))

(declare-fun m!4863387 () Bool)

(assert (=> b!4270190 m!4863387))

(declare-fun m!4863389 () Bool)

(assert (=> b!4270190 m!4863389))

(assert (=> b!4270190 m!4863387))

(assert (=> b!4270190 m!4863389))

(declare-fun m!4863391 () Bool)

(assert (=> b!4270190 m!4863391))

(assert (=> d!1259350 d!1259382))

(declare-fun b!4270192 () Bool)

(declare-fun e!2651231 () List!47418)

(declare-fun e!2651232 () List!47418)

(assert (=> b!4270192 (= e!2651231 e!2651232)))

(declare-fun c!726428 () Bool)

(assert (=> b!4270192 (= c!726428 (is-Leaf!22070 (c!726419 x!740033)))))

(declare-fun b!4270191 () Bool)

(assert (=> b!4270191 (= e!2651231 Nil!47294)))

(declare-fun b!4270193 () Bool)

(assert (=> b!4270193 (= e!2651232 (list!17136 (xs!17582 (c!726419 x!740033))))))

(declare-fun b!4270194 () Bool)

(assert (=> b!4270194 (= e!2651232 (++!12064 (list!17134 (left!35119 (c!726419 x!740033))) (list!17134 (right!35449 (c!726419 x!740033)))))))

(declare-fun d!1259384 () Bool)

(declare-fun c!726427 () Bool)

(assert (=> d!1259384 (= c!726427 (is-Empty!14276 (c!726419 x!740033)))))

(assert (=> d!1259384 (= (list!17134 (c!726419 x!740033)) e!2651231)))

(assert (= (and d!1259384 c!726427) b!4270191))

(assert (= (and d!1259384 (not c!726427)) b!4270192))

(assert (= (and b!4270192 c!726428) b!4270193))

(assert (= (and b!4270192 (not c!726428)) b!4270194))

(declare-fun m!4863393 () Bool)

(assert (=> b!4270193 m!4863393))

(declare-fun m!4863395 () Bool)

(assert (=> b!4270194 m!4863395))

(declare-fun m!4863397 () Bool)

(assert (=> b!4270194 m!4863397))

(assert (=> b!4270194 m!4863395))

(assert (=> b!4270194 m!4863397))

(declare-fun m!4863399 () Bool)

(assert (=> b!4270194 m!4863399))

(assert (=> d!1259358 d!1259384))

(declare-fun b!4270196 () Bool)

(declare-fun e!2651233 () List!47418)

(declare-fun e!2651234 () List!47418)

(assert (=> b!4270196 (= e!2651233 e!2651234)))

(declare-fun c!726430 () Bool)

(assert (=> b!4270196 (= c!726430 (is-Leaf!22070 (c!726419 x!740034)))))

(declare-fun b!4270195 () Bool)

(assert (=> b!4270195 (= e!2651233 Nil!47294)))

(declare-fun b!4270197 () Bool)

(assert (=> b!4270197 (= e!2651234 (list!17136 (xs!17582 (c!726419 x!740034))))))

(declare-fun b!4270198 () Bool)

(assert (=> b!4270198 (= e!2651234 (++!12064 (list!17134 (left!35119 (c!726419 x!740034))) (list!17134 (right!35449 (c!726419 x!740034)))))))

(declare-fun d!1259386 () Bool)

(declare-fun c!726429 () Bool)

(assert (=> d!1259386 (= c!726429 (is-Empty!14276 (c!726419 x!740034)))))

(assert (=> d!1259386 (= (list!17134 (c!726419 x!740034)) e!2651233)))

(assert (= (and d!1259386 c!726429) b!4270195))

(assert (= (and d!1259386 (not c!726429)) b!4270196))

(assert (= (and b!4270196 c!726430) b!4270197))

(assert (= (and b!4270196 (not c!726430)) b!4270198))

(declare-fun m!4863401 () Bool)

(assert (=> b!4270197 m!4863401))

(declare-fun m!4863403 () Bool)

(assert (=> b!4270198 m!4863403))

(declare-fun m!4863405 () Bool)

(assert (=> b!4270198 m!4863405))

(assert (=> b!4270198 m!4863403))

(assert (=> b!4270198 m!4863405))

(declare-fun m!4863407 () Bool)

(assert (=> b!4270198 m!4863407))

(assert (=> d!1259352 d!1259386))

(declare-fun b!4270200 () Bool)

(declare-fun e!2651235 () List!47418)

(declare-fun e!2651236 () List!47418)

(assert (=> b!4270200 (= e!2651235 e!2651236)))

(declare-fun c!726432 () Bool)

(assert (=> b!4270200 (= c!726432 (is-Leaf!22070 (c!726419 x!740035)))))

(declare-fun b!4270199 () Bool)

(assert (=> b!4270199 (= e!2651235 Nil!47294)))

(declare-fun b!4270201 () Bool)

(assert (=> b!4270201 (= e!2651236 (list!17136 (xs!17582 (c!726419 x!740035))))))

(declare-fun b!4270202 () Bool)

(assert (=> b!4270202 (= e!2651236 (++!12064 (list!17134 (left!35119 (c!726419 x!740035))) (list!17134 (right!35449 (c!726419 x!740035)))))))

(declare-fun d!1259388 () Bool)

(declare-fun c!726431 () Bool)

(assert (=> d!1259388 (= c!726431 (is-Empty!14276 (c!726419 x!740035)))))

(assert (=> d!1259388 (= (list!17134 (c!726419 x!740035)) e!2651235)))

(assert (= (and d!1259388 c!726431) b!4270199))

(assert (= (and d!1259388 (not c!726431)) b!4270200))

(assert (= (and b!4270200 c!726432) b!4270201))

(assert (= (and b!4270200 (not c!726432)) b!4270202))

(declare-fun m!4863409 () Bool)

(assert (=> b!4270201 m!4863409))

(declare-fun m!4863411 () Bool)

(assert (=> b!4270202 m!4863411))

(declare-fun m!4863413 () Bool)

(assert (=> b!4270202 m!4863413))

(assert (=> b!4270202 m!4863411))

(assert (=> b!4270202 m!4863413))

(declare-fun m!4863415 () Bool)

(assert (=> b!4270202 m!4863415))

(assert (=> d!1259348 d!1259388))

(declare-fun d!1259390 () Bool)

(declare-fun lt!1512592 () List!47418)

(assert (=> d!1259390 (= lt!1512592 (list!17132 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033))))))

(assert (=> d!1259390 (= lt!1512592 (efficientList!479 (c!726419 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033))) (efficientList$default$2!165 (c!726419 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033))))))))

(assert (=> d!1259390 (= (efficientList!477 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033))) lt!1512592)))

(declare-fun bs!600437 () Bool)

(assert (= bs!600437 d!1259390))

(assert (=> bs!600437 m!4863281))

(assert (=> bs!600437 m!4863283))

(declare-fun m!4863417 () Bool)

(assert (=> bs!600437 m!4863417))

(assert (=> bs!600437 m!4863417))

(declare-fun m!4863419 () Bool)

(assert (=> bs!600437 m!4863419))

(assert (=> d!1259360 d!1259390))

(declare-fun d!1259392 () Bool)

(declare-fun lt!1512593 () List!47418)

(assert (=> d!1259392 (= lt!1512593 (list!17132 x!740035))))

(assert (=> d!1259392 (= lt!1512593 (efficientList!479 (c!726419 x!740035) (efficientList$default$2!165 (c!726419 x!740035))))))

(assert (=> d!1259392 (= (efficientList!477 x!740035) lt!1512593)))

(declare-fun bs!600438 () Bool)

(assert (= bs!600438 d!1259392))

(assert (=> bs!600438 m!4863291))

(declare-fun m!4863421 () Bool)

(assert (=> bs!600438 m!4863421))

(assert (=> bs!600438 m!4863421))

(declare-fun m!4863423 () Bool)

(assert (=> bs!600438 m!4863423))

(assert (=> d!1259354 d!1259392))

(declare-fun d!1259394 () Bool)

(declare-fun lt!1512594 () List!47418)

(assert (=> d!1259394 (= lt!1512594 (list!17132 x!740034))))

(assert (=> d!1259394 (= lt!1512594 (efficientList!479 (c!726419 x!740034) (efficientList$default$2!165 (c!726419 x!740034))))))

(assert (=> d!1259394 (= (efficientList!477 x!740034) lt!1512594)))

(declare-fun bs!600439 () Bool)

(assert (= bs!600439 d!1259394))

(assert (=> bs!600439 m!4863289))

(declare-fun m!4863425 () Bool)

(assert (=> bs!600439 m!4863425))

(assert (=> bs!600439 m!4863425))

(declare-fun m!4863427 () Bool)

(assert (=> bs!600439 m!4863427))

(assert (=> d!1259362 d!1259394))

(push 1)

(assert (not b!4270198))

(assert (not b!4270193))

(assert (not bs!600319))

(assert (not b!4270105))

(assert (not b!4270190))

(assert (not d!1259380))

(assert (not b!4270116))

(assert (not b!4270189))

(assert (not start!409490))

(assert (not b!4270194))

(assert (not d!1259390))

(assert (not b!4270114))

(assert (not d!1259394))

(assert (not d!1259392))

(assert (not b!4270115))

(assert (not b!4270201))

(assert (not b!4270202))

(assert (not b!4270117))

(assert (not b!4270197))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!1259394 d!1259352))

(declare-fun b!4270215 () Bool)

(declare-fun e!2651245 () List!47418)

(declare-fun lt!1512609 () List!47418)

(assert (=> b!4270215 (= e!2651245 lt!1512609)))

(declare-fun b!4270216 () Bool)

(declare-fun e!2651244 () List!47418)

(declare-fun call!294125 () List!47418)

(assert (=> b!4270216 (= e!2651244 call!294125)))

(declare-fun d!1259398 () Bool)

(declare-fun lt!1512611 () List!47418)

(assert (=> d!1259398 (= lt!1512611 (++!12064 (list!17134 (c!726419 x!740034)) (efficientList$default$2!165 (c!726419 x!740034))))))

(declare-fun e!2651243 () List!47418)

(assert (=> d!1259398 (= lt!1512611 e!2651243)))

(declare-fun c!726439 () Bool)

(assert (=> d!1259398 (= c!726439 (is-Empty!14276 (c!726419 x!740034)))))

(assert (=> d!1259398 (= (efficientList!479 (c!726419 x!740034) (efficientList$default$2!165 (c!726419 x!740034))) lt!1512611)))

(declare-fun b!4270217 () Bool)

(assert (=> b!4270217 (= e!2651243 (efficientList$default$2!165 (c!726419 x!740034)))))

(declare-fun b!4270218 () Bool)

(declare-datatypes ((Unit!66205 0))(
  ( (Unit!66206) )
))
(declare-fun lt!1512612 () Unit!66205)

(declare-fun lt!1512608 () Unit!66205)

(assert (=> b!4270218 (= lt!1512612 lt!1512608)))

(declare-fun lt!1512610 () List!47418)

(assert (=> b!4270218 (= (++!12064 (++!12064 lt!1512610 lt!1512609) (efficientList$default$2!165 (c!726419 x!740034))) (++!12064 lt!1512610 call!294125))))

(declare-fun lemmaConcatAssociativity!2706 (List!47418 List!47418 List!47418) Unit!66205)

(assert (=> b!4270218 (= lt!1512608 (lemmaConcatAssociativity!2706 lt!1512610 lt!1512609 (efficientList$default$2!165 (c!726419 x!740034))))))

(assert (=> b!4270218 (= lt!1512609 (list!17134 (right!35449 (c!726419 x!740034))))))

(assert (=> b!4270218 (= lt!1512610 (list!17134 (left!35119 (c!726419 x!740034))))))

(assert (=> b!4270218 (= e!2651244 (efficientList!479 (left!35119 (c!726419 x!740034)) (efficientList!479 (right!35449 (c!726419 x!740034)) (efficientList$default$2!165 (c!726419 x!740034)))))))

(declare-fun bm!294120 () Bool)

(declare-fun c!726440 () Bool)

(declare-fun c!726441 () Bool)

(assert (=> bm!294120 (= c!726440 c!726441)))

(assert (=> bm!294120 (= call!294125 (++!12064 e!2651245 (efficientList$default$2!165 (c!726419 x!740034))))))

(declare-fun b!4270219 () Bool)

(assert (=> b!4270219 (= e!2651243 e!2651244)))

(assert (=> b!4270219 (= c!726441 (is-Leaf!22070 (c!726419 x!740034)))))

(declare-fun b!4270220 () Bool)

(declare-fun efficientList!481 (IArray!28557) List!47418)

(assert (=> b!4270220 (= e!2651245 (efficientList!481 (xs!17582 (c!726419 x!740034))))))

(assert (= (and d!1259398 c!726439) b!4270217))

(assert (= (and d!1259398 (not c!726439)) b!4270219))

(assert (= (and b!4270219 c!726441) b!4270216))

(assert (= (and b!4270219 (not c!726441)) b!4270218))

(assert (= (or b!4270216 b!4270218) bm!294120))

(assert (= (and bm!294120 c!726440) b!4270220))

(assert (= (and bm!294120 (not c!726440)) b!4270215))

(assert (=> d!1259398 m!4863349))

(assert (=> d!1259398 m!4863349))

(assert (=> d!1259398 m!4863425))

(declare-fun m!4863433 () Bool)

(assert (=> d!1259398 m!4863433))

(declare-fun m!4863435 () Bool)

(assert (=> b!4270218 m!4863435))

(assert (=> b!4270218 m!4863425))

(declare-fun m!4863437 () Bool)

(assert (=> b!4270218 m!4863437))

(assert (=> b!4270218 m!4863425))

(declare-fun m!4863439 () Bool)

(assert (=> b!4270218 m!4863439))

(declare-fun m!4863441 () Bool)

(assert (=> b!4270218 m!4863441))

(assert (=> b!4270218 m!4863439))

(declare-fun m!4863443 () Bool)

(assert (=> b!4270218 m!4863443))

(assert (=> b!4270218 m!4863405))

(assert (=> b!4270218 m!4863435))

(assert (=> b!4270218 m!4863425))

(declare-fun m!4863445 () Bool)

(assert (=> b!4270218 m!4863445))

(assert (=> b!4270218 m!4863403))

(assert (=> bm!294120 m!4863425))

(declare-fun m!4863447 () Bool)

(assert (=> bm!294120 m!4863447))

(declare-fun m!4863449 () Bool)

(assert (=> b!4270220 m!4863449))

(assert (=> d!1259394 d!1259398))

(declare-fun d!1259402 () Bool)

(assert (=> d!1259402 (= (efficientList$default$2!165 (c!726419 x!740034)) Nil!47294)))

(assert (=> d!1259394 d!1259402))

(assert (=> d!1259390 d!1259350))

(declare-fun b!4270229 () Bool)

(declare-fun e!2651252 () List!47418)

(declare-fun lt!1512614 () List!47418)

(assert (=> b!4270229 (= e!2651252 lt!1512614)))

(declare-fun b!4270230 () Bool)

(declare-fun e!2651251 () List!47418)

(declare-fun call!294126 () List!47418)

(assert (=> b!4270230 (= e!2651251 call!294126)))

(declare-fun d!1259404 () Bool)

(declare-fun lt!1512616 () List!47418)

(assert (=> d!1259404 (= lt!1512616 (++!12064 (list!17134 (c!726419 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033)))) (efficientList$default$2!165 (c!726419 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033))))))))

(declare-fun e!2651250 () List!47418)

(assert (=> d!1259404 (= lt!1512616 e!2651250)))

(declare-fun c!726446 () Bool)

(assert (=> d!1259404 (= c!726446 (is-Empty!14276 (c!726419 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033)))))))

(assert (=> d!1259404 (= (efficientList!479 (c!726419 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033))) (efficientList$default$2!165 (c!726419 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033))))) lt!1512616)))

(declare-fun b!4270231 () Bool)

(assert (=> b!4270231 (= e!2651250 (efficientList$default$2!165 (c!726419 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033)))))))

(declare-fun b!4270232 () Bool)

(declare-fun lt!1512617 () Unit!66205)

(declare-fun lt!1512613 () Unit!66205)

(assert (=> b!4270232 (= lt!1512617 lt!1512613)))

(declare-fun lt!1512615 () List!47418)

(assert (=> b!4270232 (= (++!12064 (++!12064 lt!1512615 lt!1512614) (efficientList$default$2!165 (c!726419 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033))))) (++!12064 lt!1512615 call!294126))))

(assert (=> b!4270232 (= lt!1512613 (lemmaConcatAssociativity!2706 lt!1512615 lt!1512614 (efficientList$default$2!165 (c!726419 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033))))))))

(assert (=> b!4270232 (= lt!1512614 (list!17134 (right!35449 (c!726419 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033))))))))

(assert (=> b!4270232 (= lt!1512615 (list!17134 (left!35119 (c!726419 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033))))))))

(assert (=> b!4270232 (= e!2651251 (efficientList!479 (left!35119 (c!726419 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033)))) (efficientList!479 (right!35449 (c!726419 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033)))) (efficientList$default$2!165 (c!726419 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033)))))))))

(declare-fun bm!294121 () Bool)

(declare-fun c!726447 () Bool)

(declare-fun c!726448 () Bool)

(assert (=> bm!294121 (= c!726447 c!726448)))

(assert (=> bm!294121 (= call!294126 (++!12064 e!2651252 (efficientList$default$2!165 (c!726419 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033))))))))

(declare-fun b!4270233 () Bool)

(assert (=> b!4270233 (= e!2651250 e!2651251)))

(assert (=> b!4270233 (= c!726448 (is-Leaf!22070 (c!726419 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033)))))))

(declare-fun b!4270234 () Bool)

(assert (=> b!4270234 (= e!2651252 (efficientList!481 (xs!17582 (c!726419 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033))))))))

(assert (= (and d!1259404 c!726446) b!4270231))

(assert (= (and d!1259404 (not c!726446)) b!4270233))

(assert (= (and b!4270233 c!726448) b!4270230))

(assert (= (and b!4270233 (not c!726448)) b!4270232))

(assert (= (or b!4270230 b!4270232) bm!294121))

(assert (= (and bm!294121 c!726447) b!4270234))

(assert (= (and bm!294121 (not c!726447)) b!4270229))

(assert (=> d!1259404 m!4863347))

(assert (=> d!1259404 m!4863347))

(assert (=> d!1259404 m!4863417))

(declare-fun m!4863451 () Bool)

(assert (=> d!1259404 m!4863451))

(declare-fun m!4863453 () Bool)

(assert (=> b!4270232 m!4863453))

(assert (=> b!4270232 m!4863417))

(declare-fun m!4863455 () Bool)

(assert (=> b!4270232 m!4863455))

(assert (=> b!4270232 m!4863417))

(declare-fun m!4863457 () Bool)

(assert (=> b!4270232 m!4863457))

(declare-fun m!4863459 () Bool)

(assert (=> b!4270232 m!4863459))

(assert (=> b!4270232 m!4863457))

(declare-fun m!4863461 () Bool)

(assert (=> b!4270232 m!4863461))

(assert (=> b!4270232 m!4863389))

(assert (=> b!4270232 m!4863453))

(assert (=> b!4270232 m!4863417))

(declare-fun m!4863463 () Bool)

(assert (=> b!4270232 m!4863463))

(assert (=> b!4270232 m!4863387))

(assert (=> bm!294121 m!4863417))

(declare-fun m!4863465 () Bool)

(assert (=> bm!294121 m!4863465))

(declare-fun m!4863467 () Bool)

(assert (=> b!4270234 m!4863467))

(assert (=> d!1259390 d!1259404))

(declare-fun d!1259406 () Bool)

(assert (=> d!1259406 (= (efficientList$default$2!165 (c!726419 (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033)))) Nil!47294)))

(assert (=> d!1259390 d!1259406))

(assert (=> d!1259380 d!1259358))

(declare-fun b!4270235 () Bool)

(declare-fun e!2651255 () List!47418)

(declare-fun lt!1512619 () List!47418)

(assert (=> b!4270235 (= e!2651255 lt!1512619)))

(declare-fun b!4270236 () Bool)

(declare-fun e!2651254 () List!47418)

(declare-fun call!294127 () List!47418)

(assert (=> b!4270236 (= e!2651254 call!294127)))

(declare-fun d!1259408 () Bool)

(declare-fun lt!1512621 () List!47418)

(assert (=> d!1259408 (= lt!1512621 (++!12064 (list!17134 (c!726419 x!740033)) (efficientList$default$2!165 (c!726419 x!740033))))))

(declare-fun e!2651253 () List!47418)

(assert (=> d!1259408 (= lt!1512621 e!2651253)))

(declare-fun c!726449 () Bool)

(assert (=> d!1259408 (= c!726449 (is-Empty!14276 (c!726419 x!740033)))))

(assert (=> d!1259408 (= (efficientList!479 (c!726419 x!740033) (efficientList$default$2!165 (c!726419 x!740033))) lt!1512621)))

(declare-fun b!4270237 () Bool)

(assert (=> b!4270237 (= e!2651253 (efficientList$default$2!165 (c!726419 x!740033)))))

(declare-fun b!4270238 () Bool)

(declare-fun lt!1512622 () Unit!66205)

(declare-fun lt!1512618 () Unit!66205)

(assert (=> b!4270238 (= lt!1512622 lt!1512618)))

(declare-fun lt!1512620 () List!47418)

(assert (=> b!4270238 (= (++!12064 (++!12064 lt!1512620 lt!1512619) (efficientList$default$2!165 (c!726419 x!740033))) (++!12064 lt!1512620 call!294127))))

(assert (=> b!4270238 (= lt!1512618 (lemmaConcatAssociativity!2706 lt!1512620 lt!1512619 (efficientList$default$2!165 (c!726419 x!740033))))))

(assert (=> b!4270238 (= lt!1512619 (list!17134 (right!35449 (c!726419 x!740033))))))

(assert (=> b!4270238 (= lt!1512620 (list!17134 (left!35119 (c!726419 x!740033))))))

(assert (=> b!4270238 (= e!2651254 (efficientList!479 (left!35119 (c!726419 x!740033)) (efficientList!479 (right!35449 (c!726419 x!740033)) (efficientList$default$2!165 (c!726419 x!740033)))))))

(declare-fun bm!294122 () Bool)

(declare-fun c!726450 () Bool)

(declare-fun c!726451 () Bool)

(assert (=> bm!294122 (= c!726450 c!726451)))

(assert (=> bm!294122 (= call!294127 (++!12064 e!2651255 (efficientList$default$2!165 (c!726419 x!740033))))))

(declare-fun b!4270239 () Bool)

(assert (=> b!4270239 (= e!2651253 e!2651254)))

(assert (=> b!4270239 (= c!726451 (is-Leaf!22070 (c!726419 x!740033)))))

(declare-fun b!4270240 () Bool)

(assert (=> b!4270240 (= e!2651255 (efficientList!481 (xs!17582 (c!726419 x!740033))))))

(assert (= (and d!1259408 c!726449) b!4270237))

(assert (= (and d!1259408 (not c!726449)) b!4270239))

(assert (= (and b!4270239 c!726451) b!4270236))

(assert (= (and b!4270239 (not c!726451)) b!4270238))

(assert (= (or b!4270236 b!4270238) bm!294122))

(assert (= (and bm!294122 c!726450) b!4270240))

(assert (= (and bm!294122 (not c!726450)) b!4270235))

(assert (=> d!1259408 m!4863355))

(assert (=> d!1259408 m!4863355))

(assert (=> d!1259408 m!4863381))

(declare-fun m!4863469 () Bool)

(assert (=> d!1259408 m!4863469))

(declare-fun m!4863471 () Bool)

(assert (=> b!4270238 m!4863471))

(assert (=> b!4270238 m!4863381))

(declare-fun m!4863473 () Bool)

(assert (=> b!4270238 m!4863473))

(assert (=> b!4270238 m!4863381))

(declare-fun m!4863475 () Bool)

(assert (=> b!4270238 m!4863475))

(declare-fun m!4863477 () Bool)

(assert (=> b!4270238 m!4863477))

(assert (=> b!4270238 m!4863475))

(declare-fun m!4863479 () Bool)

(assert (=> b!4270238 m!4863479))

(assert (=> b!4270238 m!4863397))

(assert (=> b!4270238 m!4863471))

(assert (=> b!4270238 m!4863381))

(declare-fun m!4863481 () Bool)

(assert (=> b!4270238 m!4863481))

(assert (=> b!4270238 m!4863395))

(assert (=> bm!294122 m!4863381))

(declare-fun m!4863483 () Bool)

(assert (=> bm!294122 m!4863483))

(declare-fun m!4863485 () Bool)

(assert (=> b!4270240 m!4863485))

(assert (=> d!1259380 d!1259408))

(declare-fun d!1259410 () Bool)

(assert (=> d!1259410 (= (efficientList$default$2!165 (c!726419 x!740033)) Nil!47294)))

(assert (=> d!1259380 d!1259410))

(assert (=> b!4270115 d!1259362))

(assert (=> b!4270115 d!1259354))

(declare-fun d!1259412 () Bool)

(declare-fun c!726460 () Bool)

(assert (=> d!1259412 (= c!726460 (is-Node!14276 (c!726419 x!740033)))))

(declare-fun e!2651266 () Bool)

(assert (=> d!1259412 (= (inv!62349 (c!726419 x!740033)) e!2651266)))

(declare-fun b!4270259 () Bool)

(declare-fun inv!62353 (Conc!14276) Bool)

(assert (=> b!4270259 (= e!2651266 (inv!62353 (c!726419 x!740033)))))

(declare-fun b!4270260 () Bool)

(declare-fun e!2651267 () Bool)

(assert (=> b!4270260 (= e!2651266 e!2651267)))

(declare-fun res!1754242 () Bool)

(assert (=> b!4270260 (= res!1754242 (not (is-Leaf!22070 (c!726419 x!740033))))))

(assert (=> b!4270260 (=> res!1754242 e!2651267)))

(declare-fun b!4270261 () Bool)

(declare-fun inv!62354 (Conc!14276) Bool)

(assert (=> b!4270261 (= e!2651267 (inv!62354 (c!726419 x!740033)))))

(assert (= (and d!1259412 c!726460) b!4270259))

(assert (= (and d!1259412 (not c!726460)) b!4270260))

(assert (= (and b!4270260 (not res!1754242)) b!4270261))

(declare-fun m!4863515 () Bool)

(assert (=> b!4270259 m!4863515))

(declare-fun m!4863517 () Bool)

(assert (=> b!4270261 m!4863517))

(assert (=> b!4270114 d!1259412))

(assert (=> bs!600319 d!1259350))

(declare-fun b!4270278 () Bool)

(declare-fun e!2651276 () BalanceConc!28062)

(declare-fun seqFromList!5863 (List!47418) BalanceConc!28062)

(assert (=> b!4270278 (= e!2651276 (seqFromList!5863 (value!249085 (toValue!16 thiss!2453 x!740033))))))

(declare-fun d!1259422 () Bool)

(declare-fun c!726470 () Bool)

(assert (=> d!1259422 (= c!726470 (is-True!16498 (toValue!16 thiss!2453 x!740033)))))

(declare-fun e!2651278 () BalanceConc!28062)

(assert (=> d!1259422 (= (toCharacters!9 thiss!2453 (toValue!16 thiss!2453 x!740033)) e!2651278)))

(declare-fun b!4270279 () Bool)

(declare-fun c!726472 () Bool)

(assert (=> b!4270279 (= c!726472 (is-Broken!41247 (toValue!16 thiss!2453 x!740033)))))

(declare-fun e!2651277 () BalanceConc!28062)

(assert (=> b!4270279 (= e!2651277 e!2651276)))

(declare-fun b!4270280 () Bool)

(declare-fun stringFalseConc!0 () BalanceConc!28062)

(assert (=> b!4270280 (= e!2651277 stringFalseConc!0)))

(declare-fun b!4270281 () Bool)

(declare-fun stringTrueConc!0 () BalanceConc!28062)

(assert (=> b!4270281 (= e!2651278 stringTrueConc!0)))

(declare-fun b!4270282 () Bool)

(assert (=> b!4270282 (= e!2651278 e!2651277)))

(declare-fun c!726471 () Bool)

(assert (=> b!4270282 (= c!726471 (is-False!16498 (toValue!16 thiss!2453 x!740033)))))

(declare-fun b!4270283 () Bool)

(assert (=> b!4270283 (= e!2651276 (BalanceConc!28063 Empty!14276))))

(assert (= (and d!1259422 c!726470) b!4270281))

(assert (= (and d!1259422 (not c!726470)) b!4270282))

(assert (= (and b!4270282 c!726471) b!4270280))

(assert (= (and b!4270282 (not c!726471)) b!4270279))

(assert (= (and b!4270279 c!726472) b!4270278))

(assert (= (and b!4270279 (not c!726472)) b!4270283))

(declare-fun m!4863535 () Bool)

(assert (=> b!4270278 m!4863535))

(declare-fun m!4863537 () Bool)

(assert (=> b!4270280 m!4863537))

(declare-fun m!4863539 () Bool)

(assert (=> b!4270281 m!4863539))

(assert (=> bs!600319 d!1259422))

(assert (=> bs!600319 d!1259356))

(assert (=> bs!600319 d!1259358))

(declare-fun d!1259428 () Bool)

(declare-fun c!726473 () Bool)

(assert (=> d!1259428 (= c!726473 (is-Node!14276 (c!726419 x!740034)))))

(declare-fun e!2651279 () Bool)

(assert (=> d!1259428 (= (inv!62349 (c!726419 x!740034)) e!2651279)))

(declare-fun b!4270284 () Bool)

(assert (=> b!4270284 (= e!2651279 (inv!62353 (c!726419 x!740034)))))

(declare-fun b!4270285 () Bool)

(declare-fun e!2651280 () Bool)

(assert (=> b!4270285 (= e!2651279 e!2651280)))

(declare-fun res!1754243 () Bool)

(assert (=> b!4270285 (= res!1754243 (not (is-Leaf!22070 (c!726419 x!740034))))))

(assert (=> b!4270285 (=> res!1754243 e!2651280)))

(declare-fun b!4270286 () Bool)

(assert (=> b!4270286 (= e!2651280 (inv!62354 (c!726419 x!740034)))))

(assert (= (and d!1259428 c!726473) b!4270284))

(assert (= (and d!1259428 (not c!726473)) b!4270285))

(assert (= (and b!4270285 (not res!1754243)) b!4270286))

(declare-fun m!4863541 () Bool)

(assert (=> b!4270284 m!4863541))

(declare-fun m!4863543 () Bool)

(assert (=> b!4270286 m!4863543))

(assert (=> b!4270116 d!1259428))

(declare-fun d!1259430 () Bool)

(declare-fun c!726474 () Bool)

(assert (=> d!1259430 (= c!726474 (is-Node!14276 (c!726419 x!740035)))))

(declare-fun e!2651281 () Bool)

(assert (=> d!1259430 (= (inv!62349 (c!726419 x!740035)) e!2651281)))

(declare-fun b!4270287 () Bool)

(assert (=> b!4270287 (= e!2651281 (inv!62353 (c!726419 x!740035)))))

(declare-fun b!4270288 () Bool)

(declare-fun e!2651282 () Bool)

(assert (=> b!4270288 (= e!2651281 e!2651282)))

(declare-fun res!1754244 () Bool)

(assert (=> b!4270288 (= res!1754244 (not (is-Leaf!22070 (c!726419 x!740035))))))

(assert (=> b!4270288 (=> res!1754244 e!2651282)))

(declare-fun b!4270289 () Bool)

(assert (=> b!4270289 (= e!2651282 (inv!62354 (c!726419 x!740035)))))

(assert (= (and d!1259430 c!726474) b!4270287))

(assert (= (and d!1259430 (not c!726474)) b!4270288))

(assert (= (and b!4270288 (not res!1754244)) b!4270289))

(declare-fun m!4863545 () Bool)

(assert (=> b!4270287 m!4863545))

(declare-fun m!4863547 () Bool)

(assert (=> b!4270289 m!4863547))

(assert (=> b!4270117 d!1259430))

(assert (=> d!1259392 d!1259348))

(declare-fun b!4270290 () Bool)

(declare-fun e!2651285 () List!47418)

(declare-fun lt!1512627 () List!47418)

(assert (=> b!4270290 (= e!2651285 lt!1512627)))

(declare-fun b!4270291 () Bool)

(declare-fun e!2651284 () List!47418)

(declare-fun call!294128 () List!47418)

(assert (=> b!4270291 (= e!2651284 call!294128)))

(declare-fun d!1259432 () Bool)

(declare-fun lt!1512629 () List!47418)

(assert (=> d!1259432 (= lt!1512629 (++!12064 (list!17134 (c!726419 x!740035)) (efficientList$default$2!165 (c!726419 x!740035))))))

(declare-fun e!2651283 () List!47418)

(assert (=> d!1259432 (= lt!1512629 e!2651283)))

(declare-fun c!726475 () Bool)

(assert (=> d!1259432 (= c!726475 (is-Empty!14276 (c!726419 x!740035)))))

(assert (=> d!1259432 (= (efficientList!479 (c!726419 x!740035) (efficientList$default$2!165 (c!726419 x!740035))) lt!1512629)))

(declare-fun b!4270292 () Bool)

(assert (=> b!4270292 (= e!2651283 (efficientList$default$2!165 (c!726419 x!740035)))))

(declare-fun b!4270293 () Bool)

(declare-fun lt!1512630 () Unit!66205)

(declare-fun lt!1512626 () Unit!66205)

(assert (=> b!4270293 (= lt!1512630 lt!1512626)))

(declare-fun lt!1512628 () List!47418)

(assert (=> b!4270293 (= (++!12064 (++!12064 lt!1512628 lt!1512627) (efficientList$default$2!165 (c!726419 x!740035))) (++!12064 lt!1512628 call!294128))))

(assert (=> b!4270293 (= lt!1512626 (lemmaConcatAssociativity!2706 lt!1512628 lt!1512627 (efficientList$default$2!165 (c!726419 x!740035))))))

(assert (=> b!4270293 (= lt!1512627 (list!17134 (right!35449 (c!726419 x!740035))))))

(assert (=> b!4270293 (= lt!1512628 (list!17134 (left!35119 (c!726419 x!740035))))))

(assert (=> b!4270293 (= e!2651284 (efficientList!479 (left!35119 (c!726419 x!740035)) (efficientList!479 (right!35449 (c!726419 x!740035)) (efficientList$default$2!165 (c!726419 x!740035)))))))

(declare-fun bm!294123 () Bool)

(declare-fun c!726476 () Bool)

(declare-fun c!726477 () Bool)

(assert (=> bm!294123 (= c!726476 c!726477)))

(assert (=> bm!294123 (= call!294128 (++!12064 e!2651285 (efficientList$default$2!165 (c!726419 x!740035))))))

(declare-fun b!4270294 () Bool)

(assert (=> b!4270294 (= e!2651283 e!2651284)))

(assert (=> b!4270294 (= c!726477 (is-Leaf!22070 (c!726419 x!740035)))))

(declare-fun b!4270295 () Bool)

(assert (=> b!4270295 (= e!2651285 (efficientList!481 (xs!17582 (c!726419 x!740035))))))

(assert (= (and d!1259432 c!726475) b!4270292))

(assert (= (and d!1259432 (not c!726475)) b!4270294))

(assert (= (and b!4270294 c!726477) b!4270291))

(assert (= (and b!4270294 (not c!726477)) b!4270293))

(assert (= (or b!4270291 b!4270293) bm!294123))

(assert (= (and bm!294123 c!726476) b!4270295))

(assert (= (and bm!294123 (not c!726476)) b!4270290))

(assert (=> d!1259432 m!4863345))

(assert (=> d!1259432 m!4863345))

(assert (=> d!1259432 m!4863421))

(declare-fun m!4863549 () Bool)

(assert (=> d!1259432 m!4863549))

(declare-fun m!4863551 () Bool)

(assert (=> b!4270293 m!4863551))

(assert (=> b!4270293 m!4863421))

(declare-fun m!4863553 () Bool)

(assert (=> b!4270293 m!4863553))

(assert (=> b!4270293 m!4863421))

(declare-fun m!4863555 () Bool)

(assert (=> b!4270293 m!4863555))

(declare-fun m!4863557 () Bool)

(assert (=> b!4270293 m!4863557))

(assert (=> b!4270293 m!4863555))

(declare-fun m!4863559 () Bool)

(assert (=> b!4270293 m!4863559))

(assert (=> b!4270293 m!4863413))

(assert (=> b!4270293 m!4863551))

(assert (=> b!4270293 m!4863421))

(declare-fun m!4863561 () Bool)

(assert (=> b!4270293 m!4863561))

(assert (=> b!4270293 m!4863411))

(assert (=> bm!294123 m!4863421))

(declare-fun m!4863563 () Bool)

(assert (=> bm!294123 m!4863563))

(declare-fun m!4863565 () Bool)

(assert (=> b!4270295 m!4863565))

(assert (=> d!1259392 d!1259432))

(declare-fun d!1259434 () Bool)

(assert (=> d!1259434 (= (efficientList$default$2!165 (c!726419 x!740035)) Nil!47294)))

(assert (=> d!1259392 d!1259434))

(assert (=> b!4270105 d!1259352))

(declare-fun d!1259436 () Bool)

(declare-fun choose!26034 (Int) Bool)

(assert (=> d!1259436 (= (Forall!1627 lambda!130674) (choose!26034 lambda!130674))))

(declare-fun bs!600444 () Bool)

(assert (= bs!600444 d!1259436))

(declare-fun m!4863567 () Bool)

(assert (=> bs!600444 m!4863567))

(assert (=> b!4270105 d!1259436))

(declare-fun bs!600445 () Bool)

(declare-fun d!1259438 () Bool)

(assert (= bs!600445 (and d!1259438 start!409490)))

(declare-fun lambda!130698 () Int)

(assert (=> bs!600445 (not (= lambda!130698 lambda!130674))))

(assert (=> d!1259438 true))

(declare-fun order!24857 () Int)

(declare-fun order!24855 () Int)

(declare-fun dynLambda!20256 (Int Int) Int)

(declare-fun dynLambda!20257 (Int Int) Int)

(assert (=> d!1259438 (< (dynLambda!20256 order!24855 lambda!130675) (dynLambda!20257 order!24857 lambda!130698))))

(assert (=> d!1259438 true))

(declare-fun order!24859 () Int)

(declare-fun dynLambda!20258 (Int Int) Int)

(assert (=> d!1259438 (< (dynLambda!20258 order!24859 lambda!130676) (dynLambda!20257 order!24857 lambda!130698))))

(assert (=> d!1259438 (= (semiInverseModEq!3503 lambda!130675 lambda!130676) (Forall!1627 lambda!130698))))

(declare-fun bs!600446 () Bool)

(assert (= bs!600446 d!1259438))

(declare-fun m!4863569 () Bool)

(assert (=> bs!600446 m!4863569))

(assert (=> b!4270105 d!1259438))

(declare-fun d!1259440 () Bool)

(declare-fun isBalanced!3831 (Conc!14276) Bool)

(assert (=> d!1259440 (= (inv!62350 x!740034) (isBalanced!3831 (c!726419 x!740034)))))

(declare-fun bs!600447 () Bool)

(assert (= bs!600447 d!1259440))

(declare-fun m!4863571 () Bool)

(assert (=> bs!600447 m!4863571))

(assert (=> b!4270105 d!1259440))

(declare-fun d!1259442 () Bool)

(assert (=> d!1259442 (= (inv!62350 x!740035) (isBalanced!3831 (c!726419 x!740035)))))

(declare-fun bs!600448 () Bool)

(assert (= bs!600448 d!1259442))

(declare-fun m!4863573 () Bool)

(assert (=> bs!600448 m!4863573))

(assert (=> b!4270105 d!1259442))

(declare-fun d!1259444 () Bool)

(declare-fun choose!26035 (Int) Bool)

(assert (=> d!1259444 (= (Forall2!1218 lambda!130677) (choose!26035 lambda!130677))))

(declare-fun bs!600449 () Bool)

(assert (= bs!600449 d!1259444))

(declare-fun m!4863575 () Bool)

(assert (=> bs!600449 m!4863575))

(assert (=> b!4270105 d!1259444))

(assert (=> b!4270105 d!1259348))

(assert (=> start!409490 d!1259356))

(assert (=> start!409490 d!1259358))

(assert (=> start!409490 d!1259422))

(declare-fun d!1259446 () Bool)

(assert (=> d!1259446 (= (inv!62350 x!740033) (isBalanced!3831 (c!726419 x!740033)))))

(declare-fun bs!600450 () Bool)

(assert (= bs!600450 d!1259446))

(declare-fun m!4863577 () Bool)

(assert (=> bs!600450 m!4863577))

(assert (=> start!409490 d!1259446))

(assert (=> start!409490 d!1259436))

(assert (=> start!409490 d!1259350))

(declare-fun tp!1307903 () Bool)

(declare-fun tp!1307904 () Bool)

(declare-fun b!4270306 () Bool)

(declare-fun e!2651290 () Bool)

(assert (=> b!4270306 (= e!2651290 (and (inv!62349 (left!35119 (c!726419 x!740033))) tp!1307903 (inv!62349 (right!35449 (c!726419 x!740033))) tp!1307904))))

(declare-fun b!4270307 () Bool)

(declare-fun inv!62355 (IArray!28557) Bool)

(assert (=> b!4270307 (= e!2651290 (inv!62355 (xs!17582 (c!726419 x!740033))))))

(assert (=> b!4270114 (= tp!1307887 (and (inv!62349 (c!726419 x!740033)) e!2651290))))

(assert (= (and b!4270114 (is-Node!14276 (c!726419 x!740033))) b!4270306))

(assert (= (and b!4270114 (is-Leaf!22070 (c!726419 x!740033))) b!4270307))

(declare-fun m!4863579 () Bool)

(assert (=> b!4270306 m!4863579))

(declare-fun m!4863581 () Bool)

(assert (=> b!4270306 m!4863581))

(declare-fun m!4863583 () Bool)

(assert (=> b!4270307 m!4863583))

(assert (=> b!4270114 m!4863277))

(declare-fun e!2651292 () Bool)

(declare-fun tp!1307905 () Bool)

(declare-fun b!4270308 () Bool)

(declare-fun tp!1307906 () Bool)

(assert (=> b!4270308 (= e!2651292 (and (inv!62349 (left!35119 (c!726419 x!740034))) tp!1307905 (inv!62349 (right!35449 (c!726419 x!740034))) tp!1307906))))

(declare-fun b!4270309 () Bool)

(assert (=> b!4270309 (= e!2651292 (inv!62355 (xs!17582 (c!726419 x!740034))))))

(assert (=> b!4270116 (= tp!1307889 (and (inv!62349 (c!726419 x!740034)) e!2651292))))

(assert (= (and b!4270116 (is-Node!14276 (c!726419 x!740034))) b!4270308))

(assert (= (and b!4270116 (is-Leaf!22070 (c!726419 x!740034))) b!4270309))

(declare-fun m!4863585 () Bool)

(assert (=> b!4270308 m!4863585))

(declare-fun m!4863587 () Bool)

(assert (=> b!4270308 m!4863587))

(declare-fun m!4863589 () Bool)

(assert (=> b!4270309 m!4863589))

(assert (=> b!4270116 m!4863301))

(declare-fun b!4270310 () Bool)

(declare-fun tp!1307908 () Bool)

(declare-fun tp!1307907 () Bool)

(declare-fun e!2651294 () Bool)

(assert (=> b!4270310 (= e!2651294 (and (inv!62349 (left!35119 (c!726419 x!740035))) tp!1307907 (inv!62349 (right!35449 (c!726419 x!740035))) tp!1307908))))

(declare-fun b!4270311 () Bool)

(assert (=> b!4270311 (= e!2651294 (inv!62355 (xs!17582 (c!726419 x!740035))))))

(assert (=> b!4270117 (= tp!1307888 (and (inv!62349 (c!726419 x!740035)) e!2651294))))

(assert (= (and b!4270117 (is-Node!14276 (c!726419 x!740035))) b!4270310))

(assert (= (and b!4270117 (is-Leaf!22070 (c!726419 x!740035))) b!4270311))

(declare-fun m!4863591 () Bool)

(assert (=> b!4270310 m!4863591))

(declare-fun m!4863593 () Bool)

(assert (=> b!4270310 m!4863593))

(declare-fun m!4863595 () Bool)

(assert (=> b!4270311 m!4863595))

(assert (=> b!4270117 m!4863303))

(push 1)

(assert (not d!1259444))

(assert (not b!4270281))

(assert (not d!1259440))

(assert (not bm!294121))

(assert (not b!4270232))

(assert (not b!4270307))

(assert (not bm!294120))

(assert (not b!4270193))

(assert (not b!4270295))

(assert (not b!4270278))

(assert (not b!4270261))

(assert (not b!4270190))

(assert (not d!1259404))

(assert (not b!4270116))

(assert (not d!1259398))

(assert (not b!4270289))

(assert (not b!4270194))

(assert (not b!4270220))

(assert (not d!1259408))

(assert (not b!4270309))

(assert (not b!4270198))

(assert (not b!4270238))

(assert (not b!4270286))

(assert (not d!1259436))

(assert (not b!4270234))

(assert (not b!4270308))

(assert (not b!4270287))

(assert (not b!4270293))

(assert (not bm!294122))

(assert (not b!4270284))

(assert (not d!1259442))

(assert (not d!1259446))

(assert (not b!4270114))

(assert (not b!4270310))

(assert (not b!4270280))

(assert (not b!4270201))

(assert (not b!4270202))

(assert (not b!4270311))

(assert (not b!4270117))

(assert (not b!4270197))

(assert (not b!4270218))

(assert (not d!1259432))

(assert (not b!4270240))

(assert (not b!4270259))

(assert (not b!4270189))

(assert (not d!1259438))

(assert (not bm!294123))

(assert (not b!4270306))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

