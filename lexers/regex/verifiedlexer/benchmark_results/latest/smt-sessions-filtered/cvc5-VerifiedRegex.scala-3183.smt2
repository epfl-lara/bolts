; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!185902 () Bool)

(assert start!185902)

(assert (=> start!185902 true))

(declare-fun b!1860452 () Bool)

(assert (=> b!1860452 true))

(assert (=> b!1860452 true))

(declare-fun b!1860453 () Bool)

(assert (=> b!1860453 true))

(declare-fun b!1860464 () Bool)

(declare-fun e!1188162 () Bool)

(declare-datatypes ((List!20714 0))(
  ( (Nil!20634) (Cons!20634 (h!26035 (_ BitVec 16)) (t!172709 List!20714)) )
))
(declare-datatypes ((IArray!13667 0))(
  ( (IArray!13668 (innerList!6891 List!20714)) )
))
(declare-datatypes ((Conc!6831 0))(
  ( (Node!6831 (left!16598 Conc!6831) (right!16928 Conc!6831) (csize!13892 Int) (cheight!7042 Int)) (Leaf!10015 (xs!9707 IArray!13667) (csize!13893 Int)) (Empty!6831) )
))
(declare-datatypes ((BalanceConc!13592 0))(
  ( (BalanceConc!13593 (c!303011 Conc!6831)) )
))
(declare-fun x!373646 () BalanceConc!13592)

(declare-fun tp!530159 () Bool)

(declare-fun inv!27141 (Conc!6831) Bool)

(assert (=> b!1860464 (= e!1188162 (and (inv!27141 (c!303011 x!373646)) tp!530159))))

(declare-datatypes ((DelimiterValueInjection!24 0))(
  ( (DelimiterValueInjection!25) )
))
(declare-fun thiss!5194 () DelimiterValueInjection!24)

(declare-fun inst!1198 () Bool)

(declare-fun inv!27142 (BalanceConc!13592) Bool)

(declare-fun list!8390 (BalanceConc!13592) List!20714)

(declare-datatypes ((TokenValue!3815 0))(
  ( (FloatLiteralValue!7630 (text!27150 List!20714)) (TokenValueExt!3814 (__x!13004 Int)) (Broken!19075 (value!116061 List!20714)) (Object!3894) (End!3815) (Def!3815) (Underscore!3815) (Match!3815) (Else!3815) (Error!3815) (Case!3815) (If!3815) (Extends!3815) (Abstract!3815) (Class!3815) (Val!3815) (DelimiterValue!7630 (del!3875 List!20714)) (KeywordValue!3821 (value!116062 List!20714)) (CommentValue!7630 (value!116063 List!20714)) (WhitespaceValue!7630 (value!116064 List!20714)) (IndentationValue!3815 (value!116065 List!20714)) (String!23726) (Int32!3815) (Broken!19076 (value!116066 List!20714)) (Boolean!3816) (Unit!35253) (OperatorValue!3818 (op!3875 List!20714)) (IdentifierValue!7630 (value!116067 List!20714)) (IdentifierValue!7631 (value!116068 List!20714)) (WhitespaceValue!7631 (value!116069 List!20714)) (True!7630) (False!7630) (Broken!19077 (value!116070 List!20714)) (Broken!19078 (value!116071 List!20714)) (True!7631) (RightBrace!3815) (RightBracket!3815) (Colon!3815) (Null!3815) (Comma!3815) (LeftBracket!3815) (False!7631) (LeftBrace!3815) (ImaginaryLiteralValue!3815 (text!27151 List!20714)) (StringLiteralValue!11445 (value!116072 List!20714)) (EOFValue!3815 (value!116073 List!20714)) (IdentValue!3815 (value!116074 List!20714)) (DelimiterValue!7631 (value!116075 List!20714)) (DedentValue!3815 (value!116076 List!20714)) (NewLineValue!3815 (value!116077 List!20714)) (IntegerValue!11445 (value!116078 (_ BitVec 32)) (text!27152 List!20714)) (IntegerValue!11446 (value!116079 Int) (text!27153 List!20714)) (Times!3815) (Or!3815) (Equal!3815) (Minus!3815) (Broken!19079 (value!116080 List!20714)) (And!3815) (Div!3815) (LessEqual!3815) (Mod!3815) (Concat!8877) (Not!3815) (Plus!3815) (SpaceValue!3815 (value!116081 List!20714)) (IntegerValue!11447 (value!116082 Int) (text!27154 List!20714)) (StringLiteralValue!11446 (text!27155 List!20714)) (FloatLiteralValue!7631 (text!27156 List!20714)) (BytesLiteralValue!3815 (value!116083 List!20714)) (CommentValue!7631 (value!116084 List!20714)) (StringLiteralValue!11447 (value!116085 List!20714)) (ErrorTokenValue!3815 (msg!3876 List!20714)) )
))
(declare-fun toCharacters!28 (DelimiterValueInjection!24 TokenValue!3815) BalanceConc!13592)

(declare-fun toValue!35 (DelimiterValueInjection!24 BalanceConc!13592) TokenValue!3815)

(assert (=> start!185902 (= inst!1198 (=> (and (inv!27142 x!373646) e!1188162) (= (list!8390 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373646))) (list!8390 x!373646))))))

(assert (= start!185902 b!1860464))

(declare-fun m!2284137 () Bool)

(assert (=> b!1860464 m!2284137))

(declare-fun m!2284139 () Bool)

(assert (=> start!185902 m!2284139))

(declare-fun m!2284141 () Bool)

(assert (=> start!185902 m!2284141))

(declare-fun m!2284143 () Bool)

(assert (=> start!185902 m!2284143))

(declare-fun m!2284145 () Bool)

(assert (=> start!185902 m!2284145))

(declare-fun m!2284147 () Bool)

(assert (=> start!185902 m!2284147))

(assert (=> start!185902 m!2284147))

(assert (=> start!185902 m!2284141))

(declare-fun res!833106 () Bool)

(declare-fun e!1188164 () Bool)

(assert (=> b!1860453 (=> res!833106 e!1188164)))

(declare-fun x!373647 () BalanceConc!13592)

(declare-fun x!373648 () BalanceConc!13592)

(assert (=> b!1860453 (= res!833106 (not (= (list!8390 x!373647) (list!8390 x!373648))))))

(declare-fun e!1188165 () Bool)

(declare-fun inst!1199 () Bool)

(declare-fun e!1188163 () Bool)

(assert (=> b!1860453 (= inst!1199 (=> (and (inv!27142 x!373647) e!1188163 (inv!27142 x!373648) e!1188165) e!1188164))))

(declare-fun b!1860465 () Bool)

(assert (=> b!1860465 (= e!1188164 (= (toValue!35 thiss!5194 x!373647) (toValue!35 thiss!5194 x!373648)))))

(declare-fun b!1860466 () Bool)

(declare-fun tp!530160 () Bool)

(assert (=> b!1860466 (= e!1188163 (and (inv!27141 (c!303011 x!373647)) tp!530160))))

(declare-fun b!1860467 () Bool)

(declare-fun tp!530161 () Bool)

(assert (=> b!1860467 (= e!1188165 (and (inv!27141 (c!303011 x!373648)) tp!530161))))

(assert (= (and b!1860453 (not res!833106)) b!1860465))

(assert (= b!1860453 b!1860466))

(assert (= b!1860453 b!1860467))

(declare-fun m!2284149 () Bool)

(assert (=> b!1860453 m!2284149))

(declare-fun m!2284151 () Bool)

(assert (=> b!1860453 m!2284151))

(declare-fun m!2284153 () Bool)

(assert (=> b!1860453 m!2284153))

(declare-fun m!2284155 () Bool)

(assert (=> b!1860453 m!2284155))

(declare-fun m!2284157 () Bool)

(assert (=> b!1860465 m!2284157))

(declare-fun m!2284159 () Bool)

(assert (=> b!1860465 m!2284159))

(declare-fun m!2284161 () Bool)

(assert (=> b!1860466 m!2284161))

(declare-fun m!2284163 () Bool)

(assert (=> b!1860467 m!2284163))

(declare-fun bs!411336 () Bool)

(declare-fun neg-inst!1198 () Bool)

(declare-fun s!221842 () Bool)

(assert (= bs!411336 (and neg-inst!1198 s!221842)))

(assert (=> bs!411336 (=> true (= (list!8390 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373646))) (list!8390 x!373646)))))

(assert (=> m!2284139 m!2284147))

(assert (=> m!2284139 m!2284141))

(assert (=> m!2284139 m!2284143))

(assert (=> m!2284139 s!221842))

(assert (=> m!2284147 s!221842))

(declare-fun bs!411337 () Bool)

(assert (= bs!411337 (and neg-inst!1198 start!185902)))

(assert (=> bs!411337 (= true inst!1198)))

(declare-fun bs!411338 () Bool)

(declare-fun neg-inst!1199 () Bool)

(declare-fun s!221844 () Bool)

(assert (= bs!411338 (and neg-inst!1199 s!221844)))

(declare-fun res!833107 () Bool)

(declare-fun e!1188166 () Bool)

(assert (=> bs!411338 (=> res!833107 e!1188166)))

(assert (=> bs!411338 (= res!833107 (not (= (list!8390 x!373647) (list!8390 x!373647))))))

(assert (=> bs!411338 (=> true e!1188166)))

(declare-fun b!1860468 () Bool)

(assert (=> b!1860468 (= e!1188166 (= (toValue!35 thiss!5194 x!373647) (toValue!35 thiss!5194 x!373647)))))

(assert (= (and bs!411338 (not res!833107)) b!1860468))

(assert (=> m!2284149 s!221844))

(assert (=> m!2284149 s!221844))

(declare-fun bs!411339 () Bool)

(assert (= bs!411339 (and m!2284157 m!2284149)))

(assert (=> bs!411339 s!221844))

(assert (=> m!2284157 s!221844))

(assert (=> bs!411339 s!221844))

(assert (=> m!2284157 s!221844))

(declare-fun bs!411340 () Bool)

(declare-fun s!221846 () Bool)

(assert (= bs!411340 (and neg-inst!1199 s!221846)))

(declare-fun res!833108 () Bool)

(declare-fun e!1188167 () Bool)

(assert (=> bs!411340 (=> res!833108 e!1188167)))

(assert (=> bs!411340 (= res!833108 (not (= (list!8390 x!373647) (list!8390 x!373646))))))

(assert (=> bs!411340 (=> true e!1188167)))

(declare-fun b!1860469 () Bool)

(assert (=> b!1860469 (= e!1188167 (= (toValue!35 thiss!5194 x!373647) (toValue!35 thiss!5194 x!373646)))))

(assert (= (and bs!411340 (not res!833108)) b!1860469))

(declare-fun bs!411341 () Bool)

(assert (= bs!411341 (and m!2284139 m!2284149 m!2284157)))

(assert (=> bs!411341 m!2284149))

(assert (=> bs!411341 m!2284139))

(assert (=> bs!411341 s!221846))

(declare-fun bs!411342 () Bool)

(declare-fun s!221848 () Bool)

(assert (= bs!411342 (and neg-inst!1199 s!221848)))

(declare-fun res!833109 () Bool)

(declare-fun e!1188168 () Bool)

(assert (=> bs!411342 (=> res!833109 e!1188168)))

(assert (=> bs!411342 (= res!833109 (not (= (list!8390 x!373646) (list!8390 x!373646))))))

(assert (=> bs!411342 (=> true e!1188168)))

(declare-fun b!1860470 () Bool)

(assert (=> b!1860470 (= e!1188168 (= (toValue!35 thiss!5194 x!373646) (toValue!35 thiss!5194 x!373646)))))

(assert (= (and bs!411342 (not res!833109)) b!1860470))

(assert (=> m!2284139 s!221848))

(declare-fun bs!411343 () Bool)

(declare-fun s!221850 () Bool)

(assert (= bs!411343 (and neg-inst!1199 s!221850)))

(declare-fun res!833110 () Bool)

(declare-fun e!1188169 () Bool)

(assert (=> bs!411343 (=> res!833110 e!1188169)))

(assert (=> bs!411343 (= res!833110 (not (= (list!8390 x!373646) (list!8390 x!373647))))))

(assert (=> bs!411343 (=> true e!1188169)))

(declare-fun b!1860471 () Bool)

(assert (=> b!1860471 (= e!1188169 (= (toValue!35 thiss!5194 x!373646) (toValue!35 thiss!5194 x!373647)))))

(assert (= (and bs!411343 (not res!833110)) b!1860471))

(assert (=> bs!411341 m!2284139))

(assert (=> bs!411341 m!2284149))

(assert (=> bs!411341 s!221850))

(assert (=> m!2284139 s!221848))

(declare-fun bs!411344 () Bool)

(declare-fun s!221852 () Bool)

(assert (= bs!411344 (and neg-inst!1199 s!221852)))

(declare-fun res!833111 () Bool)

(declare-fun e!1188170 () Bool)

(assert (=> bs!411344 (=> res!833111 e!1188170)))

(assert (=> bs!411344 (= res!833111 (not (= (list!8390 x!373646) (list!8390 x!373648))))))

(assert (=> bs!411344 (=> true e!1188170)))

(declare-fun b!1860472 () Bool)

(assert (=> b!1860472 (= e!1188170 (= (toValue!35 thiss!5194 x!373646) (toValue!35 thiss!5194 x!373648)))))

(assert (= (and bs!411344 (not res!833111)) b!1860472))

(declare-fun bs!411345 () Bool)

(assert (= bs!411345 (and m!2284159 m!2284139)))

(assert (=> bs!411345 m!2284139))

(assert (=> bs!411345 m!2284151))

(assert (=> bs!411345 s!221852))

(declare-fun bs!411346 () Bool)

(declare-fun s!221854 () Bool)

(assert (= bs!411346 (and neg-inst!1199 s!221854)))

(declare-fun res!833112 () Bool)

(declare-fun e!1188171 () Bool)

(assert (=> bs!411346 (=> res!833112 e!1188171)))

(assert (=> bs!411346 (= res!833112 (not (= (list!8390 x!373647) (list!8390 x!373648))))))

(assert (=> bs!411346 (=> true e!1188171)))

(declare-fun b!1860473 () Bool)

(assert (=> b!1860473 (= e!1188171 (= (toValue!35 thiss!5194 x!373647) (toValue!35 thiss!5194 x!373648)))))

(assert (= (and bs!411346 (not res!833112)) b!1860473))

(declare-fun bs!411347 () Bool)

(assert (= bs!411347 (and m!2284159 m!2284149 m!2284157)))

(assert (=> bs!411347 m!2284149))

(assert (=> bs!411347 m!2284151))

(assert (=> bs!411347 s!221854))

(declare-fun bs!411348 () Bool)

(declare-fun s!221856 () Bool)

(assert (= bs!411348 (and neg-inst!1199 s!221856)))

(declare-fun res!833113 () Bool)

(declare-fun e!1188172 () Bool)

(assert (=> bs!411348 (=> res!833113 e!1188172)))

(assert (=> bs!411348 (= res!833113 (not (= (list!8390 x!373648) (list!8390 x!373648))))))

(assert (=> bs!411348 (=> true e!1188172)))

(declare-fun b!1860474 () Bool)

(assert (=> b!1860474 (= e!1188172 (= (toValue!35 thiss!5194 x!373648) (toValue!35 thiss!5194 x!373648)))))

(assert (= (and bs!411348 (not res!833113)) b!1860474))

(assert (=> m!2284159 m!2284151))

(assert (=> m!2284159 m!2284151))

(assert (=> m!2284159 s!221856))

(declare-fun bs!411349 () Bool)

(declare-fun s!221858 () Bool)

(assert (= bs!411349 (and neg-inst!1199 s!221858)))

(declare-fun res!833114 () Bool)

(declare-fun e!1188173 () Bool)

(assert (=> bs!411349 (=> res!833114 e!1188173)))

(assert (=> bs!411349 (= res!833114 (not (= (list!8390 x!373648) (list!8390 x!373646))))))

(assert (=> bs!411349 (=> true e!1188173)))

(declare-fun b!1860475 () Bool)

(assert (=> b!1860475 (= e!1188173 (= (toValue!35 thiss!5194 x!373648) (toValue!35 thiss!5194 x!373646)))))

(assert (= (and bs!411349 (not res!833114)) b!1860475))

(assert (=> bs!411345 m!2284151))

(assert (=> bs!411345 m!2284139))

(assert (=> bs!411345 s!221858))

(declare-fun bs!411350 () Bool)

(declare-fun s!221860 () Bool)

(assert (= bs!411350 (and neg-inst!1199 s!221860)))

(declare-fun res!833115 () Bool)

(declare-fun e!1188174 () Bool)

(assert (=> bs!411350 (=> res!833115 e!1188174)))

(assert (=> bs!411350 (= res!833115 (not (= (list!8390 x!373648) (list!8390 x!373647))))))

(assert (=> bs!411350 (=> true e!1188174)))

(declare-fun b!1860476 () Bool)

(assert (=> b!1860476 (= e!1188174 (= (toValue!35 thiss!5194 x!373648) (toValue!35 thiss!5194 x!373647)))))

(assert (= (and bs!411350 (not res!833115)) b!1860476))

(assert (=> bs!411347 m!2284151))

(assert (=> bs!411347 m!2284149))

(assert (=> bs!411347 s!221860))

(assert (=> m!2284159 s!221856))

(declare-fun bs!411351 () Bool)

(declare-fun s!221862 () Bool)

(assert (= bs!411351 (and neg-inst!1199 s!221862)))

(declare-fun res!833116 () Bool)

(declare-fun e!1188175 () Bool)

(assert (=> bs!411351 (=> res!833116 e!1188175)))

(assert (=> bs!411351 (= res!833116 (not (= (list!8390 x!373648) (list!8390 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373646))))))))

(assert (=> bs!411351 (=> true e!1188175)))

(declare-fun b!1860477 () Bool)

(assert (=> b!1860477 (= e!1188175 (= (toValue!35 thiss!5194 x!373648) (toValue!35 thiss!5194 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373646)))))))

(assert (= (and bs!411351 (not res!833116)) b!1860477))

(declare-fun bs!411352 () Bool)

(assert (= bs!411352 (and m!2284143 m!2284159)))

(assert (=> bs!411352 m!2284151))

(assert (=> bs!411352 m!2284143))

(assert (=> bs!411352 s!221862))

(declare-fun bs!411353 () Bool)

(declare-fun s!221864 () Bool)

(assert (= bs!411353 (and neg-inst!1199 s!221864)))

(declare-fun res!833117 () Bool)

(declare-fun e!1188176 () Bool)

(assert (=> bs!411353 (=> res!833117 e!1188176)))

(assert (=> bs!411353 (= res!833117 (not (= (list!8390 x!373646) (list!8390 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373646))))))))

(assert (=> bs!411353 (=> true e!1188176)))

(declare-fun b!1860478 () Bool)

(assert (=> b!1860478 (= e!1188176 (= (toValue!35 thiss!5194 x!373646) (toValue!35 thiss!5194 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373646)))))))

(assert (= (and bs!411353 (not res!833117)) b!1860478))

(declare-fun bs!411354 () Bool)

(assert (= bs!411354 (and m!2284143 m!2284139)))

(assert (=> bs!411354 m!2284139))

(assert (=> bs!411354 m!2284143))

(assert (=> bs!411354 s!221864))

(declare-fun bs!411355 () Bool)

(declare-fun s!221866 () Bool)

(assert (= bs!411355 (and neg-inst!1199 s!221866)))

(declare-fun res!833118 () Bool)

(declare-fun e!1188177 () Bool)

(assert (=> bs!411355 (=> res!833118 e!1188177)))

(assert (=> bs!411355 (= res!833118 (not (= (list!8390 x!373647) (list!8390 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373646))))))))

(assert (=> bs!411355 (=> true e!1188177)))

(declare-fun b!1860479 () Bool)

(assert (=> b!1860479 (= e!1188177 (= (toValue!35 thiss!5194 x!373647) (toValue!35 thiss!5194 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373646)))))))

(assert (= (and bs!411355 (not res!833118)) b!1860479))

(declare-fun bs!411356 () Bool)

(assert (= bs!411356 (and m!2284143 m!2284149 m!2284157)))

(assert (=> bs!411356 m!2284149))

(assert (=> bs!411356 m!2284143))

(assert (=> bs!411356 s!221866))

(declare-fun bs!411357 () Bool)

(declare-fun s!221868 () Bool)

(assert (= bs!411357 (and neg-inst!1199 s!221868)))

(declare-fun res!833119 () Bool)

(declare-fun e!1188178 () Bool)

(assert (=> bs!411357 (=> res!833119 e!1188178)))

(assert (=> bs!411357 (= res!833119 (not (= (list!8390 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373646))) (list!8390 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373646))))))))

(assert (=> bs!411357 (=> true e!1188178)))

(declare-fun b!1860480 () Bool)

(assert (=> b!1860480 (= e!1188178 (= (toValue!35 thiss!5194 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373646))) (toValue!35 thiss!5194 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373646)))))))

(assert (= (and bs!411357 (not res!833119)) b!1860480))

(assert (=> m!2284143 s!221868))

(declare-fun bs!411358 () Bool)

(declare-fun s!221870 () Bool)

(assert (= bs!411358 (and neg-inst!1199 s!221870)))

(declare-fun res!833120 () Bool)

(declare-fun e!1188179 () Bool)

(assert (=> bs!411358 (=> res!833120 e!1188179)))

(assert (=> bs!411358 (= res!833120 (not (= (list!8390 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373646))) (list!8390 x!373648))))))

(assert (=> bs!411358 (=> true e!1188179)))

(declare-fun b!1860481 () Bool)

(assert (=> b!1860481 (= e!1188179 (= (toValue!35 thiss!5194 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373646))) (toValue!35 thiss!5194 x!373648)))))

(assert (= (and bs!411358 (not res!833120)) b!1860481))

(assert (=> bs!411352 m!2284143))

(assert (=> bs!411352 m!2284151))

(assert (=> bs!411352 s!221870))

(declare-fun bs!411359 () Bool)

(declare-fun s!221872 () Bool)

(assert (= bs!411359 (and neg-inst!1199 s!221872)))

(declare-fun res!833121 () Bool)

(declare-fun e!1188180 () Bool)

(assert (=> bs!411359 (=> res!833121 e!1188180)))

(assert (=> bs!411359 (= res!833121 (not (= (list!8390 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373646))) (list!8390 x!373646))))))

(assert (=> bs!411359 (=> true e!1188180)))

(declare-fun b!1860482 () Bool)

(assert (=> b!1860482 (= e!1188180 (= (toValue!35 thiss!5194 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373646))) (toValue!35 thiss!5194 x!373646)))))

(assert (= (and bs!411359 (not res!833121)) b!1860482))

(assert (=> bs!411354 m!2284143))

(assert (=> bs!411354 m!2284139))

(assert (=> bs!411354 s!221872))

(declare-fun bs!411360 () Bool)

(declare-fun s!221874 () Bool)

(assert (= bs!411360 (and neg-inst!1199 s!221874)))

(declare-fun res!833122 () Bool)

(declare-fun e!1188181 () Bool)

(assert (=> bs!411360 (=> res!833122 e!1188181)))

(assert (=> bs!411360 (= res!833122 (not (= (list!8390 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373646))) (list!8390 x!373647))))))

(assert (=> bs!411360 (=> true e!1188181)))

(declare-fun b!1860483 () Bool)

(assert (=> b!1860483 (= e!1188181 (= (toValue!35 thiss!5194 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373646))) (toValue!35 thiss!5194 x!373647)))))

(assert (= (and bs!411360 (not res!833122)) b!1860483))

(assert (=> bs!411356 m!2284143))

(assert (=> bs!411356 m!2284149))

(assert (=> bs!411356 s!221874))

(assert (=> m!2284143 s!221868))

(declare-fun bs!411361 () Bool)

(assert (= bs!411361 (and m!2284147 m!2284139)))

(assert (=> bs!411361 s!221848))

(assert (=> m!2284147 s!221848))

(declare-fun bs!411362 () Bool)

(assert (= bs!411362 (and m!2284147 m!2284159)))

(assert (=> bs!411362 s!221858))

(declare-fun bs!411363 () Bool)

(assert (= bs!411363 (and m!2284147 m!2284143)))

(assert (=> bs!411363 s!221872))

(declare-fun bs!411364 () Bool)

(assert (= bs!411364 (and m!2284147 m!2284149 m!2284157)))

(assert (=> bs!411364 s!221846))

(assert (=> bs!411361 s!221848))

(assert (=> bs!411362 s!221852))

(assert (=> bs!411363 s!221864))

(assert (=> m!2284147 s!221848))

(assert (=> bs!411364 s!221850))

(declare-fun bs!411365 () Bool)

(assert (= bs!411365 (and m!2284151 m!2284149 m!2284157)))

(assert (=> bs!411365 s!221854))

(declare-fun bs!411366 () Bool)

(assert (= bs!411366 (and m!2284151 m!2284139 m!2284147)))

(assert (=> bs!411366 s!221852))

(declare-fun bs!411367 () Bool)

(assert (= bs!411367 (and m!2284151 m!2284143)))

(assert (=> bs!411367 s!221870))

(declare-fun bs!411368 () Bool)

(assert (= bs!411368 (and m!2284151 m!2284159)))

(assert (=> bs!411368 s!221856))

(assert (=> m!2284151 s!221856))

(assert (=> bs!411365 s!221860))

(assert (=> bs!411366 s!221858))

(assert (=> bs!411367 s!221862))

(assert (=> bs!411368 s!221856))

(assert (=> m!2284151 s!221856))

(declare-fun bs!411369 () Bool)

(assert (= bs!411369 (and neg-inst!1199 b!1860453)))

(assert (=> bs!411369 (= true inst!1199)))

(declare-fun b!1860455 () Bool)

(declare-fun e!1188161 () Bool)

(declare-fun lambda!73687 () Int)

(declare-fun lambda!73686 () Int)

(declare-datatypes ((TokenValueInjection!7218 0))(
  ( (TokenValueInjection!7219 (toValue!5276 Int) (toChars!5135 Int)) )
))
(declare-fun inv!27143 (TokenValueInjection!7218) Bool)

(assert (=> b!1860455 (= e!1188161 (inv!27143 (TokenValueInjection!7219 lambda!73687 lambda!73686)))))

(declare-fun e!1188160 () Bool)

(declare-fun e!1188158 () Bool)

(assert (=> b!1860453 (= e!1188160 e!1188158)))

(declare-fun res!833103 () Bool)

(assert (=> b!1860453 (=> res!833103 e!1188158)))

(declare-fun lambda!73688 () Int)

(declare-fun Forall2!604 (Int) Bool)

(assert (=> b!1860453 (= res!833103 (not (Forall2!604 lambda!73688)))))

(assert (=> b!1860453 (= (Forall2!604 lambda!73688) inst!1199)))

(declare-fun res!833105 () Bool)

(declare-fun e!1188159 () Bool)

(assert (=> start!185902 (=> res!833105 e!1188159)))

(declare-fun lambda!73685 () Int)

(declare-fun Forall!979 (Int) Bool)

(assert (=> start!185902 (= res!833105 (not (Forall!979 lambda!73685)))))

(assert (=> start!185902 (= (Forall!979 lambda!73685) inst!1198)))

(assert (=> start!185902 (not e!1188159)))

(assert (=> start!185902 true))

(declare-fun b!1860454 () Bool)

(assert (=> b!1860454 (= e!1188158 e!1188161)))

(declare-fun res!833104 () Bool)

(assert (=> b!1860454 (=> res!833104 e!1188161)))

(declare-fun equivClasses!1434 (Int Int) Bool)

(assert (=> b!1860454 (= res!833104 (not (equivClasses!1434 lambda!73686 lambda!73687)))))

(assert (=> b!1860454 (= (equivClasses!1434 lambda!73686 lambda!73687) (Forall2!604 lambda!73688))))

(assert (=> b!1860452 (= e!1188159 e!1188160)))

(declare-fun res!833102 () Bool)

(assert (=> b!1860452 (=> res!833102 e!1188160)))

(declare-fun semiInverseModEq!1507 (Int Int) Bool)

(assert (=> b!1860452 (= res!833102 (not (semiInverseModEq!1507 lambda!73686 lambda!73687)))))

(assert (=> b!1860452 (= (semiInverseModEq!1507 lambda!73686 lambda!73687) (Forall!979 lambda!73685))))

(assert (= neg-inst!1198 inst!1198))

(assert (= (and start!185902 (not res!833105)) b!1860452))

(assert (= (and b!1860452 (not res!833102)) b!1860453))

(assert (= neg-inst!1199 inst!1199))

(assert (= (and b!1860453 (not res!833103)) b!1860454))

(assert (= (and b!1860454 (not res!833104)) b!1860455))

(declare-fun m!2284165 () Bool)

(assert (=> b!1860453 m!2284165))

(assert (=> b!1860453 m!2284165))

(declare-fun m!2284167 () Bool)

(assert (=> b!1860454 m!2284167))

(assert (=> b!1860454 m!2284167))

(assert (=> b!1860454 m!2284165))

(declare-fun m!2284169 () Bool)

(assert (=> b!1860455 m!2284169))

(declare-fun m!2284171 () Bool)

(assert (=> start!185902 m!2284171))

(assert (=> start!185902 m!2284171))

(declare-fun m!2284173 () Bool)

(assert (=> b!1860452 m!2284173))

(assert (=> b!1860452 m!2284173))

(assert (=> b!1860452 m!2284171))

(push 1)

(assert (not bs!411343))

(assert (not b!1860469))

(assert (not bs!411342))

(assert (not bs!411350))

(assert (not bs!411348))

(assert (not b!1860483))

(assert (not b!1860480))

(assert (not b!1860470))

(assert (not b!1860466))

(assert (not bs!411340))

(assert (not b!1860471))

(assert (not start!185902))

(assert (not bs!411336))

(assert (not bs!411360))

(assert (not bs!411357))

(assert (not bs!411338))

(assert (not b!1860468))

(assert (not b!1860455))

(assert (not b!1860474))

(assert (not b!1860478))

(assert (not bs!411346))

(assert (not b!1860481))

(assert (not b!1860465))

(assert (not bs!411358))

(assert (not bs!411351))

(assert (not b!1860479))

(assert (not bs!411355))

(assert (not b!1860482))

(assert (not b!1860473))

(assert (not bs!411353))

(assert (not bs!411344))

(assert (not b!1860477))

(assert (not b!1860475))

(assert (not b!1860476))

(assert (not bs!411359))

(assert (not b!1860453))

(assert (not b!1860452))

(assert (not b!1860454))

(assert (not b!1860467))

(assert (not b!1860464))

(assert (not b!1860472))

(assert (not bs!411349))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!411403 () Bool)

(assert (= bs!411403 (and m!2284149 b!1860468)))

(assert (=> bs!411403 m!2284157))

(assert (=> bs!411403 m!2284157))

(declare-fun bs!411404 () Bool)

(assert (= bs!411404 (and m!2284139 m!2284149 m!2284157 b!1860469)))

(assert (=> bs!411404 m!2284157))

(assert (=> bs!411404 m!2284147))

(declare-fun bs!411405 () Bool)

(assert (= bs!411405 (and m!2284139 b!1860470)))

(assert (=> bs!411405 m!2284147))

(assert (=> bs!411405 m!2284147))

(declare-fun bs!411406 () Bool)

(assert (= bs!411406 (and m!2284139 m!2284149 m!2284157 b!1860471)))

(assert (=> bs!411406 m!2284147))

(assert (=> bs!411406 m!2284157))

(declare-fun bs!411407 () Bool)

(assert (= bs!411407 (and m!2284159 m!2284139 b!1860472)))

(assert (=> bs!411407 m!2284147))

(assert (=> bs!411407 m!2284159))

(declare-fun bs!411408 () Bool)

(assert (= bs!411408 (and m!2284159 m!2284149 m!2284157 b!1860473)))

(assert (=> bs!411408 m!2284157))

(assert (=> bs!411408 m!2284159))

(declare-fun bs!411409 () Bool)

(assert (= bs!411409 (and m!2284159 b!1860474)))

(assert (=> bs!411409 m!2284159))

(assert (=> bs!411409 m!2284159))

(declare-fun bs!411410 () Bool)

(assert (= bs!411410 (and m!2284159 m!2284139 b!1860475)))

(assert (=> bs!411410 m!2284159))

(assert (=> bs!411410 m!2284147))

(declare-fun bs!411411 () Bool)

(assert (= bs!411411 (and m!2284159 m!2284149 m!2284157 b!1860476)))

(assert (=> bs!411411 m!2284159))

(assert (=> bs!411411 m!2284157))

(declare-fun bs!411412 () Bool)

(assert (= bs!411412 (and m!2284143 m!2284159 b!1860477)))

(assert (=> bs!411412 m!2284159))

(declare-fun m!2284213 () Bool)

(assert (=> bs!411412 m!2284213))

(declare-fun bs!411413 () Bool)

(assert (= bs!411413 (and m!2284143 m!2284139 b!1860478)))

(assert (=> bs!411413 m!2284147))

(assert (=> bs!411413 m!2284213))

(declare-fun bs!411414 () Bool)

(assert (= bs!411414 (and m!2284143 m!2284149 m!2284157 b!1860479)))

(assert (=> bs!411414 m!2284157))

(assert (=> bs!411414 m!2284213))

(declare-fun bs!411415 () Bool)

(assert (= bs!411415 (and m!2284143 b!1860480)))

(assert (=> bs!411415 m!2284213))

(assert (=> bs!411415 m!2284213))

(declare-fun bs!411416 () Bool)

(assert (= bs!411416 (and m!2284143 m!2284159 b!1860481)))

(assert (=> bs!411416 m!2284213))

(assert (=> bs!411416 m!2284159))

(declare-fun bs!411417 () Bool)

(assert (= bs!411417 (and m!2284143 m!2284139 b!1860482)))

(assert (=> bs!411417 m!2284213))

(assert (=> bs!411417 m!2284147))

(declare-fun bs!411418 () Bool)

(assert (= bs!411418 (and m!2284143 m!2284149 m!2284157 b!1860483)))

(assert (=> bs!411418 m!2284213))

(assert (=> bs!411418 m!2284157))

(push 1)

(assert (not bs!411343))

(assert (not b!1860469))

(assert (not bs!411342))

(assert (not bs!411350))

(assert (not bs!411348))

(assert (not b!1860483))

(assert (not b!1860480))

(assert (not b!1860470))

(assert (not b!1860466))

(assert (not bs!411340))

(assert (not b!1860471))

(assert (not start!185902))

(assert (not bs!411336))

(assert (not bs!411360))

(assert (not bs!411357))

(assert (not bs!411338))

(assert (not b!1860468))

(assert (not b!1860455))

(assert (not b!1860474))

(assert (not b!1860478))

(assert (not bs!411346))

(assert (not b!1860481))

(assert (not b!1860465))

(assert (not bs!411358))

(assert (not bs!411351))

(assert (not b!1860479))

(assert (not bs!411355))

(assert (not b!1860482))

(assert (not b!1860473))

(assert (not bs!411353))

(assert (not bs!411344))

(assert (not b!1860477))

(assert (not b!1860475))

(assert (not b!1860476))

(assert (not bs!411359))

(assert (not b!1860453))

(assert (not b!1860452))

(assert (not b!1860454))

(assert (not b!1860467))

(assert (not b!1860464))

(assert (not b!1860472))

(assert (not bs!411349))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!567732 () Bool)

(declare-fun list!8393 (Conc!6831) List!20714)

(assert (=> d!567732 (= (list!8390 x!373647) (list!8393 (c!303011 x!373647)))))

(declare-fun bs!411439 () Bool)

(assert (= bs!411439 d!567732))

(declare-fun m!2284225 () Bool)

(assert (=> bs!411439 m!2284225))

(assert (=> bs!411338 d!567732))

(assert (=> b!1860453 d!567732))

(declare-fun d!567734 () Bool)

(declare-fun isBalanced!2133 (Conc!6831) Bool)

(assert (=> d!567734 (= (inv!27142 x!373647) (isBalanced!2133 (c!303011 x!373647)))))

(declare-fun bs!411440 () Bool)

(assert (= bs!411440 d!567734))

(declare-fun m!2284227 () Bool)

(assert (=> bs!411440 m!2284227))

(assert (=> b!1860453 d!567734))

(declare-fun d!567736 () Bool)

(assert (=> d!567736 (= (inv!27142 x!373648) (isBalanced!2133 (c!303011 x!373648)))))

(declare-fun bs!411441 () Bool)

(assert (= bs!411441 d!567736))

(declare-fun m!2284229 () Bool)

(assert (=> bs!411441 m!2284229))

(assert (=> b!1860453 d!567736))

(declare-fun d!567738 () Bool)

(declare-fun choose!11706 (Int) Bool)

(assert (=> d!567738 (= (Forall2!604 lambda!73688) (choose!11706 lambda!73688))))

(declare-fun bs!411442 () Bool)

(assert (= bs!411442 d!567738))

(declare-fun m!2284231 () Bool)

(assert (=> bs!411442 m!2284231))

(assert (=> b!1860453 d!567738))

(declare-fun d!567740 () Bool)

(assert (=> d!567740 (= (list!8390 x!373648) (list!8393 (c!303011 x!373648)))))

(declare-fun bs!411443 () Bool)

(assert (= bs!411443 d!567740))

(declare-fun m!2284233 () Bool)

(assert (=> bs!411443 m!2284233))

(assert (=> b!1860453 d!567740))

(declare-fun d!567742 () Bool)

(assert (=> d!567742 (= (list!8390 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373646))) (list!8393 (c!303011 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373646)))))))

(declare-fun bs!411444 () Bool)

(assert (= bs!411444 d!567742))

(declare-fun m!2284235 () Bool)

(assert (=> bs!411444 m!2284235))

(assert (=> bs!411358 d!567742))

(assert (=> bs!411358 d!567740))

(declare-fun d!567744 () Bool)

(declare-fun res!833170 () Bool)

(declare-fun e!1188232 () Bool)

(assert (=> d!567744 (=> (not res!833170) (not e!1188232))))

(assert (=> d!567744 (= res!833170 (semiInverseModEq!1507 (toChars!5135 (TokenValueInjection!7219 lambda!73687 lambda!73686)) (toValue!5276 (TokenValueInjection!7219 lambda!73687 lambda!73686))))))

(assert (=> d!567744 (= (inv!27143 (TokenValueInjection!7219 lambda!73687 lambda!73686)) e!1188232)))

(declare-fun b!1860542 () Bool)

(assert (=> b!1860542 (= e!1188232 (equivClasses!1434 (toChars!5135 (TokenValueInjection!7219 lambda!73687 lambda!73686)) (toValue!5276 (TokenValueInjection!7219 lambda!73687 lambda!73686))))))

(assert (= (and d!567744 res!833170) b!1860542))

(declare-fun m!2284237 () Bool)

(assert (=> d!567744 m!2284237))

(declare-fun m!2284239 () Bool)

(assert (=> b!1860542 m!2284239))

(assert (=> b!1860455 d!567744))

(declare-fun d!567746 () Bool)

(declare-fun efficientList!260 (BalanceConc!13592) List!20714)

(assert (=> d!567746 (= (toValue!35 thiss!5194 x!373648) (DelimiterValue!7630 (efficientList!260 x!373648)))))

(declare-fun bs!411445 () Bool)

(assert (= bs!411445 d!567746))

(declare-fun m!2284241 () Bool)

(assert (=> bs!411445 m!2284241))

(assert (=> b!1860474 d!567746))

(declare-fun bs!411446 () Bool)

(declare-fun d!567748 () Bool)

(assert (= bs!411446 (and d!567748 b!1860453)))

(declare-fun lambda!73727 () Int)

(assert (=> bs!411446 (not (= lambda!73727 lambda!73688))))

(assert (=> d!567748 true))

(declare-fun order!13279 () Int)

(declare-fun order!13277 () Int)

(declare-fun dynLambda!10216 (Int Int) Int)

(declare-fun dynLambda!10217 (Int Int) Int)

(assert (=> d!567748 (< (dynLambda!10216 order!13277 lambda!73687) (dynLambda!10217 order!13279 lambda!73727))))

(assert (=> d!567748 (= (equivClasses!1434 lambda!73686 lambda!73687) (Forall2!604 lambda!73727))))

(declare-fun bs!411447 () Bool)

(assert (= bs!411447 d!567748))

(declare-fun m!2284243 () Bool)

(assert (=> bs!411447 m!2284243))

(assert (=> b!1860454 d!567748))

(assert (=> b!1860454 d!567738))

(declare-fun d!567750 () Bool)

(assert (=> d!567750 (= (list!8390 x!373646) (list!8393 (c!303011 x!373646)))))

(declare-fun bs!411448 () Bool)

(assert (= bs!411448 d!567750))

(declare-fun m!2284245 () Bool)

(assert (=> bs!411448 m!2284245))

(assert (=> bs!411353 d!567750))

(assert (=> bs!411353 d!567742))

(declare-fun d!567752 () Bool)

(assert (=> d!567752 (= (toValue!35 thiss!5194 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373646))) (DelimiterValue!7630 (efficientList!260 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373646)))))))

(declare-fun bs!411449 () Bool)

(assert (= bs!411449 d!567752))

(assert (=> bs!411449 m!2284141))

(declare-fun m!2284247 () Bool)

(assert (=> bs!411449 m!2284247))

(assert (=> b!1860480 d!567752))

(declare-fun d!567754 () Bool)

(declare-fun c!303015 () Bool)

(assert (=> d!567754 (= c!303015 (is-Node!6831 (c!303011 x!373647)))))

(declare-fun e!1188239 () Bool)

(assert (=> d!567754 (= (inv!27141 (c!303011 x!373647)) e!1188239)))

(declare-fun b!1860553 () Bool)

(declare-fun inv!27147 (Conc!6831) Bool)

(assert (=> b!1860553 (= e!1188239 (inv!27147 (c!303011 x!373647)))))

(declare-fun b!1860554 () Bool)

(declare-fun e!1188240 () Bool)

(assert (=> b!1860554 (= e!1188239 e!1188240)))

(declare-fun res!833175 () Bool)

(assert (=> b!1860554 (= res!833175 (not (is-Leaf!10015 (c!303011 x!373647))))))

(assert (=> b!1860554 (=> res!833175 e!1188240)))

(declare-fun b!1860555 () Bool)

(declare-fun inv!27148 (Conc!6831) Bool)

(assert (=> b!1860555 (= e!1188240 (inv!27148 (c!303011 x!373647)))))

(assert (= (and d!567754 c!303015) b!1860553))

(assert (= (and d!567754 (not c!303015)) b!1860554))

(assert (= (and b!1860554 (not res!833175)) b!1860555))

(declare-fun m!2284249 () Bool)

(assert (=> b!1860553 m!2284249))

(declare-fun m!2284251 () Bool)

(assert (=> b!1860555 m!2284251))

(assert (=> b!1860466 d!567754))

(declare-fun d!567756 () Bool)

(assert (=> d!567756 (= (toValue!35 thiss!5194 x!373647) (DelimiterValue!7630 (efficientList!260 x!373647)))))

(declare-fun bs!411450 () Bool)

(assert (= bs!411450 d!567756))

(declare-fun m!2284253 () Bool)

(assert (=> bs!411450 m!2284253))

(assert (=> b!1860465 d!567756))

(assert (=> b!1860465 d!567746))

(assert (=> bs!411348 d!567740))

(assert (=> b!1860477 d!567746))

(assert (=> b!1860477 d!567752))

(declare-fun d!567758 () Bool)

(declare-fun c!303016 () Bool)

(assert (=> d!567758 (= c!303016 (is-Node!6831 (c!303011 x!373648)))))

(declare-fun e!1188241 () Bool)

(assert (=> d!567758 (= (inv!27141 (c!303011 x!373648)) e!1188241)))

(declare-fun b!1860556 () Bool)

(assert (=> b!1860556 (= e!1188241 (inv!27147 (c!303011 x!373648)))))

(declare-fun b!1860557 () Bool)

(declare-fun e!1188242 () Bool)

(assert (=> b!1860557 (= e!1188241 e!1188242)))

(declare-fun res!833176 () Bool)

(assert (=> b!1860557 (= res!833176 (not (is-Leaf!10015 (c!303011 x!373648))))))

(assert (=> b!1860557 (=> res!833176 e!1188242)))

(declare-fun b!1860558 () Bool)

(assert (=> b!1860558 (= e!1188242 (inv!27148 (c!303011 x!373648)))))

(assert (= (and d!567758 c!303016) b!1860556))

(assert (= (and d!567758 (not c!303016)) b!1860557))

(assert (= (and b!1860557 (not res!833176)) b!1860558))

(declare-fun m!2284255 () Bool)

(assert (=> b!1860556 m!2284255))

(declare-fun m!2284257 () Bool)

(assert (=> b!1860558 m!2284257))

(assert (=> b!1860467 d!567758))

(declare-fun bs!411451 () Bool)

(declare-fun d!567760 () Bool)

(assert (= bs!411451 (and d!567760 start!185902)))

(declare-fun lambda!73730 () Int)

(assert (=> bs!411451 (not (= lambda!73730 lambda!73685))))

(assert (=> d!567760 true))

(declare-fun order!13281 () Int)

(declare-fun order!13283 () Int)

(declare-fun dynLambda!10218 (Int Int) Int)

(declare-fun dynLambda!10219 (Int Int) Int)

(assert (=> d!567760 (< (dynLambda!10218 order!13281 lambda!73686) (dynLambda!10219 order!13283 lambda!73730))))

(assert (=> d!567760 true))

(assert (=> d!567760 (< (dynLambda!10216 order!13277 lambda!73687) (dynLambda!10219 order!13283 lambda!73730))))

(assert (=> d!567760 (= (semiInverseModEq!1507 lambda!73686 lambda!73687) (Forall!979 lambda!73730))))

(declare-fun bs!411452 () Bool)

(assert (= bs!411452 d!567760))

(declare-fun m!2284259 () Bool)

(assert (=> bs!411452 m!2284259))

(assert (=> b!1860452 d!567760))

(declare-fun d!567762 () Bool)

(declare-fun choose!11707 (Int) Bool)

(assert (=> d!567762 (= (Forall!979 lambda!73685) (choose!11707 lambda!73685))))

(declare-fun bs!411453 () Bool)

(assert (= bs!411453 d!567762))

(declare-fun m!2284261 () Bool)

(assert (=> bs!411453 m!2284261))

(assert (=> b!1860452 d!567762))

(assert (=> bs!411343 d!567750))

(assert (=> bs!411343 d!567732))

(assert (=> bs!411344 d!567750))

(assert (=> bs!411344 d!567740))

(assert (=> bs!411359 d!567742))

(assert (=> bs!411359 d!567750))

(assert (=> b!1860475 d!567746))

(declare-fun d!567764 () Bool)

(assert (=> d!567764 (= (toValue!35 thiss!5194 x!373646) (DelimiterValue!7630 (efficientList!260 x!373646)))))

(declare-fun bs!411454 () Bool)

(assert (= bs!411454 d!567764))

(declare-fun m!2284263 () Bool)

(assert (=> bs!411454 m!2284263))

(assert (=> b!1860475 d!567764))

(assert (=> b!1860471 d!567764))

(assert (=> b!1860471 d!567756))

(assert (=> b!1860481 d!567752))

(assert (=> b!1860481 d!567746))

(assert (=> bs!411349 d!567740))

(assert (=> bs!411349 d!567750))

(assert (=> b!1860468 d!567756))

(assert (=> b!1860478 d!567764))

(assert (=> b!1860478 d!567752))

(assert (=> b!1860469 d!567756))

(assert (=> b!1860469 d!567764))

(assert (=> b!1860479 d!567756))

(assert (=> b!1860479 d!567752))

(assert (=> bs!411360 d!567742))

(assert (=> bs!411360 d!567732))

(assert (=> bs!411346 d!567732))

(assert (=> bs!411346 d!567740))

(assert (=> start!185902 d!567750))

(assert (=> start!185902 d!567742))

(assert (=> start!185902 d!567762))

(declare-fun d!567766 () Bool)

(declare-fun c!303020 () Bool)

(assert (=> d!567766 (= c!303020 (is-DelimiterValue!7630 (toValue!35 thiss!5194 x!373646)))))

(declare-fun e!1188245 () BalanceConc!13592)

(assert (=> d!567766 (= (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373646)) e!1188245)))

(declare-fun b!1860567 () Bool)

(declare-fun seqFromList!2626 (List!20714) BalanceConc!13592)

(assert (=> b!1860567 (= e!1188245 (seqFromList!2626 (del!3875 (toValue!35 thiss!5194 x!373646))))))

(declare-fun b!1860568 () Bool)

(assert (=> b!1860568 (= e!1188245 (BalanceConc!13593 Empty!6831))))

(assert (= (and d!567766 c!303020) b!1860567))

(assert (= (and d!567766 (not c!303020)) b!1860568))

(declare-fun m!2284265 () Bool)

(assert (=> b!1860567 m!2284265))

(assert (=> start!185902 d!567766))

(declare-fun d!567768 () Bool)

(assert (=> d!567768 (= (inv!27142 x!373646) (isBalanced!2133 (c!303011 x!373646)))))

(declare-fun bs!411455 () Bool)

(assert (= bs!411455 d!567768))

(declare-fun m!2284267 () Bool)

(assert (=> bs!411455 m!2284267))

(assert (=> start!185902 d!567768))

(assert (=> start!185902 d!567764))

(assert (=> bs!411340 d!567732))

(assert (=> bs!411340 d!567750))

(assert (=> bs!411355 d!567732))

(assert (=> bs!411355 d!567742))

(assert (=> b!1860472 d!567764))

(assert (=> b!1860472 d!567746))

(assert (=> b!1860482 d!567752))

(assert (=> b!1860482 d!567764))

(assert (=> bs!411350 d!567740))

(assert (=> bs!411350 d!567732))

(assert (=> bs!411351 d!567740))

(assert (=> bs!411351 d!567742))

(assert (=> bs!411357 d!567742))

(assert (=> b!1860470 d!567764))

(declare-fun d!567770 () Bool)

(declare-fun c!303021 () Bool)

(assert (=> d!567770 (= c!303021 (is-Node!6831 (c!303011 x!373646)))))

(declare-fun e!1188246 () Bool)

(assert (=> d!567770 (= (inv!27141 (c!303011 x!373646)) e!1188246)))

(declare-fun b!1860569 () Bool)

(assert (=> b!1860569 (= e!1188246 (inv!27147 (c!303011 x!373646)))))

(declare-fun b!1860570 () Bool)

(declare-fun e!1188247 () Bool)

(assert (=> b!1860570 (= e!1188246 e!1188247)))

(declare-fun res!833177 () Bool)

(assert (=> b!1860570 (= res!833177 (not (is-Leaf!10015 (c!303011 x!373646))))))

(assert (=> b!1860570 (=> res!833177 e!1188247)))

(declare-fun b!1860571 () Bool)

(assert (=> b!1860571 (= e!1188247 (inv!27148 (c!303011 x!373646)))))

(assert (= (and d!567770 c!303021) b!1860569))

(assert (= (and d!567770 (not c!303021)) b!1860570))

(assert (= (and b!1860570 (not res!833177)) b!1860571))

(declare-fun m!2284269 () Bool)

(assert (=> b!1860569 m!2284269))

(declare-fun m!2284271 () Bool)

(assert (=> b!1860571 m!2284271))

(assert (=> b!1860464 d!567770))

(assert (=> bs!411336 d!567742))

(assert (=> bs!411336 d!567766))

(assert (=> bs!411336 d!567764))

(assert (=> bs!411336 d!567750))

(assert (=> b!1860476 d!567746))

(assert (=> b!1860476 d!567756))

(assert (=> b!1860483 d!567752))

(assert (=> b!1860483 d!567756))

(assert (=> b!1860473 d!567756))

(assert (=> b!1860473 d!567746))

(assert (=> bs!411342 d!567750))

(declare-fun tp!530176 () Bool)

(declare-fun b!1860578 () Bool)

(declare-fun tp!530175 () Bool)

(declare-fun e!1188252 () Bool)

(assert (=> b!1860578 (= e!1188252 (and (inv!27141 (left!16598 (c!303011 x!373646))) tp!530175 (inv!27141 (right!16928 (c!303011 x!373646))) tp!530176))))

(declare-fun b!1860579 () Bool)

(declare-fun inv!27149 (IArray!13667) Bool)

(assert (=> b!1860579 (= e!1188252 (inv!27149 (xs!9707 (c!303011 x!373646))))))

(assert (=> b!1860464 (= tp!530159 (and (inv!27141 (c!303011 x!373646)) e!1188252))))

(assert (= (and b!1860464 (is-Node!6831 (c!303011 x!373646))) b!1860578))

(assert (= (and b!1860464 (is-Leaf!10015 (c!303011 x!373646))) b!1860579))

(declare-fun m!2284273 () Bool)

(assert (=> b!1860578 m!2284273))

(declare-fun m!2284275 () Bool)

(assert (=> b!1860578 m!2284275))

(declare-fun m!2284277 () Bool)

(assert (=> b!1860579 m!2284277))

(assert (=> b!1860464 m!2284137))

(declare-fun tp!530178 () Bool)

(declare-fun e!1188254 () Bool)

(declare-fun b!1860580 () Bool)

(declare-fun tp!530177 () Bool)

(assert (=> b!1860580 (= e!1188254 (and (inv!27141 (left!16598 (c!303011 x!373647))) tp!530177 (inv!27141 (right!16928 (c!303011 x!373647))) tp!530178))))

(declare-fun b!1860581 () Bool)

(assert (=> b!1860581 (= e!1188254 (inv!27149 (xs!9707 (c!303011 x!373647))))))

(assert (=> b!1860466 (= tp!530160 (and (inv!27141 (c!303011 x!373647)) e!1188254))))

(assert (= (and b!1860466 (is-Node!6831 (c!303011 x!373647))) b!1860580))

(assert (= (and b!1860466 (is-Leaf!10015 (c!303011 x!373647))) b!1860581))

(declare-fun m!2284279 () Bool)

(assert (=> b!1860580 m!2284279))

(declare-fun m!2284281 () Bool)

(assert (=> b!1860580 m!2284281))

(declare-fun m!2284283 () Bool)

(assert (=> b!1860581 m!2284283))

(assert (=> b!1860466 m!2284161))

(declare-fun tp!530180 () Bool)

(declare-fun b!1860582 () Bool)

(declare-fun tp!530179 () Bool)

(declare-fun e!1188256 () Bool)

(assert (=> b!1860582 (= e!1188256 (and (inv!27141 (left!16598 (c!303011 x!373648))) tp!530179 (inv!27141 (right!16928 (c!303011 x!373648))) tp!530180))))

(declare-fun b!1860583 () Bool)

(assert (=> b!1860583 (= e!1188256 (inv!27149 (xs!9707 (c!303011 x!373648))))))

(assert (=> b!1860467 (= tp!530161 (and (inv!27141 (c!303011 x!373648)) e!1188256))))

(assert (= (and b!1860467 (is-Node!6831 (c!303011 x!373648))) b!1860582))

(assert (= (and b!1860467 (is-Leaf!10015 (c!303011 x!373648))) b!1860583))

(declare-fun m!2284285 () Bool)

(assert (=> b!1860582 m!2284285))

(declare-fun m!2284287 () Bool)

(assert (=> b!1860582 m!2284287))

(declare-fun m!2284289 () Bool)

(assert (=> b!1860583 m!2284289))

(assert (=> b!1860467 m!2284163))

(push 1)

(assert (not b!1860542))

(assert (not d!567762))

(assert (not b!1860558))

(assert (not b!1860583))

(assert (not b!1860579))

(assert (not d!567748))

(assert (not d!567756))

(assert (not b!1860571))

(assert (not b!1860466))

(assert (not b!1860567))

(assert (not b!1860556))

(assert (not b!1860578))

(assert (not b!1860582))

(assert (not b!1860555))

(assert (not d!567732))

(assert (not d!567744))

(assert (not b!1860553))

(assert (not d!567738))

(assert (not d!567740))

(assert (not d!567750))

(assert (not b!1860569))

(assert (not d!567768))

(assert (not b!1860580))

(assert (not b!1860467))

(assert (not d!567752))

(assert (not d!567742))

(assert (not d!567736))

(assert (not d!567734))

(assert (not d!567746))

(assert (not d!567760))

(assert (not d!567764))

(assert (not b!1860464))

(assert (not b!1860581))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

