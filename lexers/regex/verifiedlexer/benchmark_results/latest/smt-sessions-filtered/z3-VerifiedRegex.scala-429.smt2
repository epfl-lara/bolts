; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!12714 () Bool)

(assert start!12714)

(assert (=> start!12714 true))

(declare-fun b!125201 () Bool)

(assert (=> b!125201 true))

(assert (=> b!125201 true))

(declare-fun b!125202 () Bool)

(assert (=> b!125202 true))

(declare-fun b!125213 () Bool)

(declare-fun e!72090 () Bool)

(declare-datatypes ((List!2047 0))(
  ( (Nil!2041) (Cons!2041 (h!7438 (_ BitVec 16)) (t!22612 List!2047)) )
))
(declare-datatypes ((IArray!1143 0))(
  ( (IArray!1144 (innerList!629 List!2047)) )
))
(declare-datatypes ((Conc!571 0))(
  ( (Node!571 (left!1636 Conc!571) (right!1966 Conc!571) (csize!1372 Int) (cheight!782 Int)) (Leaf!1001 (xs!3166 IArray!1143) (csize!1373 Int)) (Empty!571) )
))
(declare-datatypes ((BalanceConc!1146 0))(
  ( (BalanceConc!1147 (c!27604 Conc!571)) )
))
(declare-fun x!33676 () BalanceConc!1146)

(declare-fun tp!68325 () Bool)

(declare-fun inv!2605 (Conc!571) Bool)

(assert (=> b!125213 (= e!72090 (and (inv!2605 (c!27604 x!33676)) tp!68325))))

(declare-fun inst!190 () Bool)

(declare-datatypes ((DedentValueInjection!22 0))(
  ( (DedentValueInjection!23) )
))
(declare-fun thiss!4219 () DedentValueInjection!22)

(declare-fun inv!2606 (BalanceConc!1146) Bool)

(declare-fun list!789 (BalanceConc!1146) List!2047)

(declare-datatypes ((TokenValue!393 0))(
  ( (FloatLiteralValue!786 (text!3196 List!2047)) (TokenValueExt!392 (__x!2224 Int)) (Broken!1965 (value!14568 List!2047)) (Object!398) (End!393) (Def!393) (Underscore!393) (Match!393) (Else!393) (Error!393) (Case!393) (If!393) (Extends!393) (Abstract!393) (Class!393) (Val!393) (DelimiterValue!786 (del!453 List!2047)) (KeywordValue!399 (value!14569 List!2047)) (CommentValue!786 (value!14570 List!2047)) (WhitespaceValue!786 (value!14571 List!2047)) (IndentationValue!393 (value!14572 List!2047)) (String!2670) (Int32!393) (Broken!1966 (value!14573 List!2047)) (Boolean!394) (Unit!1606) (OperatorValue!396 (op!453 List!2047)) (IdentifierValue!786 (value!14574 List!2047)) (IdentifierValue!787 (value!14575 List!2047)) (WhitespaceValue!787 (value!14576 List!2047)) (True!786) (False!786) (Broken!1967 (value!14577 List!2047)) (Broken!1968 (value!14578 List!2047)) (True!787) (RightBrace!393) (RightBracket!393) (Colon!393) (Null!393) (Comma!393) (LeftBracket!393) (False!787) (LeftBrace!393) (ImaginaryLiteralValue!393 (text!3197 List!2047)) (StringLiteralValue!1179 (value!14579 List!2047)) (EOFValue!393 (value!14580 List!2047)) (IdentValue!393 (value!14581 List!2047)) (DelimiterValue!787 (value!14582 List!2047)) (DedentValue!393 (value!14583 List!2047)) (NewLineValue!393 (value!14584 List!2047)) (IntegerValue!1179 (value!14585 (_ BitVec 32)) (text!3198 List!2047)) (IntegerValue!1180 (value!14586 Int) (text!3199 List!2047)) (Times!393) (Or!393) (Equal!393) (Minus!393) (Broken!1969 (value!14587 List!2047)) (And!393) (Div!393) (LessEqual!393) (Mod!393) (Concat!957) (Not!393) (Plus!393) (SpaceValue!393 (value!14588 List!2047)) (IntegerValue!1181 (value!14589 Int) (text!3200 List!2047)) (StringLiteralValue!1180 (text!3201 List!2047)) (FloatLiteralValue!787 (text!3202 List!2047)) (BytesLiteralValue!393 (value!14590 List!2047)) (CommentValue!787 (value!14591 List!2047)) (StringLiteralValue!1181 (value!14592 List!2047)) (ErrorTokenValue!393 (msg!454 List!2047)) )
))
(declare-fun toCharacters!15 (DedentValueInjection!22 TokenValue!393) BalanceConc!1146)

(declare-fun toValue!22 (DedentValueInjection!22 BalanceConc!1146) TokenValue!393)

(assert (=> start!12714 (= inst!190 (=> (and (inv!2606 x!33676) e!72090) (= (list!789 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33676))) (list!789 x!33676))))))

(assert (= start!12714 b!125213))

(declare-fun m!110853 () Bool)

(assert (=> b!125213 m!110853))

(declare-fun m!110855 () Bool)

(assert (=> start!12714 m!110855))

(declare-fun m!110857 () Bool)

(assert (=> start!12714 m!110857))

(assert (=> start!12714 m!110857))

(declare-fun m!110859 () Bool)

(assert (=> start!12714 m!110859))

(assert (=> start!12714 m!110859))

(declare-fun m!110861 () Bool)

(assert (=> start!12714 m!110861))

(declare-fun m!110863 () Bool)

(assert (=> start!12714 m!110863))

(declare-fun res!58216 () Bool)

(declare-fun e!72093 () Bool)

(assert (=> b!125202 (=> res!58216 e!72093)))

(declare-fun x!33677 () BalanceConc!1146)

(declare-fun x!33678 () BalanceConc!1146)

(assert (=> b!125202 (= res!58216 (not (= (list!789 x!33677) (list!789 x!33678))))))

(declare-fun inst!191 () Bool)

(declare-fun e!72091 () Bool)

(declare-fun e!72092 () Bool)

(assert (=> b!125202 (= inst!191 (=> (and (inv!2606 x!33677) e!72092 (inv!2606 x!33678) e!72091) e!72093))))

(declare-fun b!125214 () Bool)

(assert (=> b!125214 (= e!72093 (= (toValue!22 thiss!4219 x!33677) (toValue!22 thiss!4219 x!33678)))))

(declare-fun b!125215 () Bool)

(declare-fun tp!68326 () Bool)

(assert (=> b!125215 (= e!72092 (and (inv!2605 (c!27604 x!33677)) tp!68326))))

(declare-fun b!125216 () Bool)

(declare-fun tp!68327 () Bool)

(assert (=> b!125216 (= e!72091 (and (inv!2605 (c!27604 x!33678)) tp!68327))))

(assert (= (and b!125202 (not res!58216)) b!125214))

(assert (= b!125202 b!125215))

(assert (= b!125202 b!125216))

(declare-fun m!110865 () Bool)

(assert (=> b!125202 m!110865))

(declare-fun m!110867 () Bool)

(assert (=> b!125202 m!110867))

(declare-fun m!110869 () Bool)

(assert (=> b!125202 m!110869))

(declare-fun m!110871 () Bool)

(assert (=> b!125202 m!110871))

(declare-fun m!110873 () Bool)

(assert (=> b!125214 m!110873))

(declare-fun m!110875 () Bool)

(assert (=> b!125214 m!110875))

(declare-fun m!110877 () Bool)

(assert (=> b!125215 m!110877))

(declare-fun m!110879 () Bool)

(assert (=> b!125216 m!110879))

(declare-fun bs!12310 () Bool)

(declare-fun neg-inst!190 () Bool)

(declare-fun s!17039 () Bool)

(assert (= bs!12310 (and neg-inst!190 s!17039)))

(assert (=> bs!12310 (=> true (= (list!789 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33676))) (list!789 x!33676)))))

(assert (=> m!110863 m!110857))

(assert (=> m!110863 m!110859))

(assert (=> m!110863 m!110861))

(assert (=> m!110863 s!17039))

(assert (=> m!110857 s!17039))

(declare-fun bs!12311 () Bool)

(assert (= bs!12311 (and neg-inst!190 start!12714)))

(assert (=> bs!12311 (= true inst!190)))

(declare-fun bs!12312 () Bool)

(declare-fun neg-inst!191 () Bool)

(declare-fun s!17041 () Bool)

(assert (= bs!12312 (and neg-inst!191 s!17041)))

(declare-fun res!58217 () Bool)

(declare-fun e!72094 () Bool)

(assert (=> bs!12312 (=> res!58217 e!72094)))

(assert (=> bs!12312 (= res!58217 (not (= (list!789 x!33676) (list!789 x!33676))))))

(assert (=> bs!12312 (=> true e!72094)))

(declare-fun b!125217 () Bool)

(assert (=> b!125217 (= e!72094 (= (toValue!22 thiss!4219 x!33676) (toValue!22 thiss!4219 x!33676)))))

(assert (= (and bs!12312 (not res!58217)) b!125217))

(assert (=> m!110863 s!17041))

(assert (=> m!110863 s!17041))

(declare-fun bs!12313 () Bool)

(declare-fun s!17043 () Bool)

(assert (= bs!12313 (and neg-inst!191 s!17043)))

(declare-fun res!58218 () Bool)

(declare-fun e!72095 () Bool)

(assert (=> bs!12313 (=> res!58218 e!72095)))

(assert (=> bs!12313 (= res!58218 (not (= (list!789 x!33677) (list!789 x!33676))))))

(assert (=> bs!12313 (=> true e!72095)))

(declare-fun b!125218 () Bool)

(assert (=> b!125218 (= e!72095 (= (toValue!22 thiss!4219 x!33677) (toValue!22 thiss!4219 x!33676)))))

(assert (= (and bs!12313 (not res!58218)) b!125218))

(declare-fun bs!12314 () Bool)

(assert (= bs!12314 (and m!110865 m!110863)))

(assert (=> bs!12314 m!110865))

(assert (=> bs!12314 m!110863))

(assert (=> bs!12314 s!17043))

(declare-fun bs!12315 () Bool)

(declare-fun s!17045 () Bool)

(assert (= bs!12315 (and neg-inst!191 s!17045)))

(declare-fun res!58219 () Bool)

(declare-fun e!72096 () Bool)

(assert (=> bs!12315 (=> res!58219 e!72096)))

(assert (=> bs!12315 (= res!58219 (not (= (list!789 x!33677) (list!789 x!33677))))))

(assert (=> bs!12315 (=> true e!72096)))

(declare-fun b!125219 () Bool)

(assert (=> b!125219 (= e!72096 (= (toValue!22 thiss!4219 x!33677) (toValue!22 thiss!4219 x!33677)))))

(assert (= (and bs!12315 (not res!58219)) b!125219))

(assert (=> m!110865 s!17045))

(declare-fun bs!12316 () Bool)

(declare-fun s!17047 () Bool)

(assert (= bs!12316 (and neg-inst!191 s!17047)))

(declare-fun res!58220 () Bool)

(declare-fun e!72097 () Bool)

(assert (=> bs!12316 (=> res!58220 e!72097)))

(assert (=> bs!12316 (= res!58220 (not (= (list!789 x!33676) (list!789 x!33677))))))

(assert (=> bs!12316 (=> true e!72097)))

(declare-fun b!125220 () Bool)

(assert (=> b!125220 (= e!72097 (= (toValue!22 thiss!4219 x!33676) (toValue!22 thiss!4219 x!33677)))))

(assert (= (and bs!12316 (not res!58220)) b!125220))

(assert (=> bs!12314 m!110863))

(assert (=> bs!12314 m!110865))

(assert (=> bs!12314 s!17047))

(assert (=> m!110865 s!17045))

(declare-fun bs!12317 () Bool)

(declare-fun s!17049 () Bool)

(assert (= bs!12317 (and neg-inst!191 s!17049)))

(declare-fun res!58221 () Bool)

(declare-fun e!72098 () Bool)

(assert (=> bs!12317 (=> res!58221 e!72098)))

(assert (=> bs!12317 (= res!58221 (not (= (list!789 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33676))) (list!789 x!33677))))))

(assert (=> bs!12317 (=> true e!72098)))

(declare-fun b!125221 () Bool)

(assert (=> b!125221 (= e!72098 (= (toValue!22 thiss!4219 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33676))) (toValue!22 thiss!4219 x!33677)))))

(assert (= (and bs!12317 (not res!58221)) b!125221))

(declare-fun bs!12318 () Bool)

(assert (= bs!12318 (and m!110861 m!110865)))

(assert (=> bs!12318 m!110861))

(assert (=> bs!12318 m!110865))

(assert (=> bs!12318 s!17049))

(declare-fun bs!12319 () Bool)

(declare-fun s!17051 () Bool)

(assert (= bs!12319 (and neg-inst!191 s!17051)))

(declare-fun res!58222 () Bool)

(declare-fun e!72099 () Bool)

(assert (=> bs!12319 (=> res!58222 e!72099)))

(assert (=> bs!12319 (= res!58222 (not (= (list!789 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33676))) (list!789 x!33676))))))

(assert (=> bs!12319 (=> true e!72099)))

(declare-fun b!125222 () Bool)

(assert (=> b!125222 (= e!72099 (= (toValue!22 thiss!4219 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33676))) (toValue!22 thiss!4219 x!33676)))))

(assert (= (and bs!12319 (not res!58222)) b!125222))

(declare-fun bs!12320 () Bool)

(assert (= bs!12320 (and m!110861 m!110863)))

(assert (=> bs!12320 m!110861))

(assert (=> bs!12320 m!110863))

(assert (=> bs!12320 s!17051))

(declare-fun bs!12321 () Bool)

(declare-fun s!17053 () Bool)

(assert (= bs!12321 (and neg-inst!191 s!17053)))

(declare-fun res!58223 () Bool)

(declare-fun e!72100 () Bool)

(assert (=> bs!12321 (=> res!58223 e!72100)))

(assert (=> bs!12321 (= res!58223 (not (= (list!789 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33676))) (list!789 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33676))))))))

(assert (=> bs!12321 (=> true e!72100)))

(declare-fun b!125223 () Bool)

(assert (=> b!125223 (= e!72100 (= (toValue!22 thiss!4219 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33676))) (toValue!22 thiss!4219 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33676)))))))

(assert (= (and bs!12321 (not res!58223)) b!125223))

(assert (=> m!110861 s!17053))

(declare-fun bs!12322 () Bool)

(declare-fun s!17055 () Bool)

(assert (= bs!12322 (and neg-inst!191 s!17055)))

(declare-fun res!58224 () Bool)

(declare-fun e!72101 () Bool)

(assert (=> bs!12322 (=> res!58224 e!72101)))

(assert (=> bs!12322 (= res!58224 (not (= (list!789 x!33677) (list!789 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33676))))))))

(assert (=> bs!12322 (=> true e!72101)))

(declare-fun b!125224 () Bool)

(assert (=> b!125224 (= e!72101 (= (toValue!22 thiss!4219 x!33677) (toValue!22 thiss!4219 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33676)))))))

(assert (= (and bs!12322 (not res!58224)) b!125224))

(assert (=> bs!12318 m!110865))

(assert (=> bs!12318 m!110861))

(assert (=> bs!12318 s!17055))

(declare-fun bs!12323 () Bool)

(declare-fun s!17057 () Bool)

(assert (= bs!12323 (and neg-inst!191 s!17057)))

(declare-fun res!58225 () Bool)

(declare-fun e!72102 () Bool)

(assert (=> bs!12323 (=> res!58225 e!72102)))

(assert (=> bs!12323 (= res!58225 (not (= (list!789 x!33676) (list!789 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33676))))))))

(assert (=> bs!12323 (=> true e!72102)))

(declare-fun b!125225 () Bool)

(assert (=> b!125225 (= e!72102 (= (toValue!22 thiss!4219 x!33676) (toValue!22 thiss!4219 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33676)))))))

(assert (= (and bs!12323 (not res!58225)) b!125225))

(assert (=> bs!12320 m!110863))

(assert (=> bs!12320 m!110861))

(assert (=> bs!12320 s!17057))

(assert (=> m!110861 s!17053))

(declare-fun bs!12324 () Bool)

(assert (= bs!12324 (and m!110873 m!110865)))

(assert (=> bs!12324 s!17045))

(declare-fun bs!12325 () Bool)

(assert (= bs!12325 (and m!110873 m!110863)))

(assert (=> bs!12325 s!17043))

(declare-fun bs!12326 () Bool)

(assert (= bs!12326 (and m!110873 m!110861)))

(assert (=> bs!12326 s!17055))

(assert (=> m!110873 s!17045))

(assert (=> bs!12324 s!17045))

(assert (=> bs!12325 s!17047))

(assert (=> bs!12326 s!17049))

(assert (=> m!110873 s!17045))

(declare-fun bs!12327 () Bool)

(declare-fun s!17059 () Bool)

(assert (= bs!12327 (and neg-inst!191 s!17059)))

(declare-fun res!58226 () Bool)

(declare-fun e!72103 () Bool)

(assert (=> bs!12327 (=> res!58226 e!72103)))

(assert (=> bs!12327 (= res!58226 (not (= (list!789 x!33678) (list!789 x!33677))))))

(assert (=> bs!12327 (=> true e!72103)))

(declare-fun b!125226 () Bool)

(assert (=> b!125226 (= e!72103 (= (toValue!22 thiss!4219 x!33678) (toValue!22 thiss!4219 x!33677)))))

(assert (= (and bs!12327 (not res!58226)) b!125226))

(declare-fun bs!12328 () Bool)

(assert (= bs!12328 (and m!110867 m!110865 m!110873)))

(assert (=> bs!12328 m!110867))

(assert (=> bs!12328 m!110865))

(assert (=> bs!12328 s!17059))

(declare-fun bs!12329 () Bool)

(declare-fun s!17061 () Bool)

(assert (= bs!12329 (and neg-inst!191 s!17061)))

(declare-fun res!58227 () Bool)

(declare-fun e!72104 () Bool)

(assert (=> bs!12329 (=> res!58227 e!72104)))

(assert (=> bs!12329 (= res!58227 (not (= (list!789 x!33678) (list!789 x!33676))))))

(assert (=> bs!12329 (=> true e!72104)))

(declare-fun b!125227 () Bool)

(assert (=> b!125227 (= e!72104 (= (toValue!22 thiss!4219 x!33678) (toValue!22 thiss!4219 x!33676)))))

(assert (= (and bs!12329 (not res!58227)) b!125227))

(declare-fun bs!12330 () Bool)

(assert (= bs!12330 (and m!110867 m!110863)))

(assert (=> bs!12330 m!110867))

(assert (=> bs!12330 m!110863))

(assert (=> bs!12330 s!17061))

(declare-fun bs!12331 () Bool)

(declare-fun s!17063 () Bool)

(assert (= bs!12331 (and neg-inst!191 s!17063)))

(declare-fun res!58228 () Bool)

(declare-fun e!72105 () Bool)

(assert (=> bs!12331 (=> res!58228 e!72105)))

(assert (=> bs!12331 (= res!58228 (not (= (list!789 x!33678) (list!789 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33676))))))))

(assert (=> bs!12331 (=> true e!72105)))

(declare-fun b!125228 () Bool)

(assert (=> b!125228 (= e!72105 (= (toValue!22 thiss!4219 x!33678) (toValue!22 thiss!4219 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33676)))))))

(assert (= (and bs!12331 (not res!58228)) b!125228))

(declare-fun bs!12332 () Bool)

(assert (= bs!12332 (and m!110867 m!110861)))

(assert (=> bs!12332 m!110867))

(assert (=> bs!12332 m!110861))

(assert (=> bs!12332 s!17063))

(declare-fun bs!12333 () Bool)

(declare-fun s!17065 () Bool)

(assert (= bs!12333 (and neg-inst!191 s!17065)))

(declare-fun res!58229 () Bool)

(declare-fun e!72106 () Bool)

(assert (=> bs!12333 (=> res!58229 e!72106)))

(assert (=> bs!12333 (= res!58229 (not (= (list!789 x!33678) (list!789 x!33678))))))

(assert (=> bs!12333 (=> true e!72106)))

(declare-fun b!125229 () Bool)

(assert (=> b!125229 (= e!72106 (= (toValue!22 thiss!4219 x!33678) (toValue!22 thiss!4219 x!33678)))))

(assert (= (and bs!12333 (not res!58229)) b!125229))

(assert (=> m!110867 s!17065))

(declare-fun bs!12334 () Bool)

(declare-fun s!17067 () Bool)

(assert (= bs!12334 (and neg-inst!191 s!17067)))

(declare-fun res!58230 () Bool)

(declare-fun e!72107 () Bool)

(assert (=> bs!12334 (=> res!58230 e!72107)))

(assert (=> bs!12334 (= res!58230 (not (= (list!789 x!33677) (list!789 x!33678))))))

(assert (=> bs!12334 (=> true e!72107)))

(declare-fun b!125230 () Bool)

(assert (=> b!125230 (= e!72107 (= (toValue!22 thiss!4219 x!33677) (toValue!22 thiss!4219 x!33678)))))

(assert (= (and bs!12334 (not res!58230)) b!125230))

(assert (=> bs!12328 m!110865))

(assert (=> bs!12328 m!110867))

(assert (=> bs!12328 s!17067))

(declare-fun bs!12335 () Bool)

(declare-fun s!17069 () Bool)

(assert (= bs!12335 (and neg-inst!191 s!17069)))

(declare-fun res!58231 () Bool)

(declare-fun e!72108 () Bool)

(assert (=> bs!12335 (=> res!58231 e!72108)))

(assert (=> bs!12335 (= res!58231 (not (= (list!789 x!33676) (list!789 x!33678))))))

(assert (=> bs!12335 (=> true e!72108)))

(declare-fun b!125231 () Bool)

(assert (=> b!125231 (= e!72108 (= (toValue!22 thiss!4219 x!33676) (toValue!22 thiss!4219 x!33678)))))

(assert (= (and bs!12335 (not res!58231)) b!125231))

(assert (=> bs!12330 m!110863))

(assert (=> bs!12330 m!110867))

(assert (=> bs!12330 s!17069))

(declare-fun bs!12336 () Bool)

(declare-fun s!17071 () Bool)

(assert (= bs!12336 (and neg-inst!191 s!17071)))

(declare-fun res!58232 () Bool)

(declare-fun e!72109 () Bool)

(assert (=> bs!12336 (=> res!58232 e!72109)))

(assert (=> bs!12336 (= res!58232 (not (= (list!789 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33676))) (list!789 x!33678))))))

(assert (=> bs!12336 (=> true e!72109)))

(declare-fun b!125232 () Bool)

(assert (=> b!125232 (= e!72109 (= (toValue!22 thiss!4219 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33676))) (toValue!22 thiss!4219 x!33678)))))

(assert (= (and bs!12336 (not res!58232)) b!125232))

(assert (=> bs!12332 m!110861))

(assert (=> bs!12332 m!110867))

(assert (=> bs!12332 s!17071))

(assert (=> m!110867 s!17065))

(declare-fun bs!12337 () Bool)

(assert (= bs!12337 (and m!110857 m!110867)))

(assert (=> bs!12337 s!17069))

(declare-fun bs!12338 () Bool)

(assert (= bs!12338 (and m!110857 m!110863)))

(assert (=> bs!12338 s!17041))

(declare-fun bs!12339 () Bool)

(assert (= bs!12339 (and m!110857 m!110861)))

(assert (=> bs!12339 s!17057))

(assert (=> m!110857 s!17041))

(declare-fun bs!12340 () Bool)

(assert (= bs!12340 (and m!110857 m!110865 m!110873)))

(assert (=> bs!12340 s!17047))

(assert (=> bs!12337 s!17061))

(assert (=> bs!12338 s!17041))

(assert (=> bs!12339 s!17051))

(assert (=> bs!12340 s!17043))

(assert (=> m!110857 s!17041))

(declare-fun bs!12341 () Bool)

(assert (= bs!12341 (and m!110875 m!110867)))

(assert (=> bs!12341 s!17065))

(declare-fun bs!12342 () Bool)

(assert (= bs!12342 (and m!110875 m!110861)))

(assert (=> bs!12342 s!17063))

(declare-fun bs!12343 () Bool)

(assert (= bs!12343 (and m!110875 m!110863 m!110857)))

(assert (=> bs!12343 s!17061))

(declare-fun bs!12344 () Bool)

(assert (= bs!12344 (and m!110875 m!110865 m!110873)))

(assert (=> bs!12344 s!17059))

(assert (=> m!110875 s!17065))

(assert (=> bs!12342 s!17071))

(assert (=> bs!12341 s!17065))

(assert (=> bs!12343 s!17069))

(assert (=> bs!12344 s!17067))

(assert (=> m!110875 s!17065))

(declare-fun bs!12345 () Bool)

(assert (= bs!12345 (and neg-inst!191 b!125202)))

(assert (=> bs!12345 (= true inst!191)))

(declare-fun e!72086 () Bool)

(declare-fun e!72088 () Bool)

(assert (=> b!125202 (= e!72086 e!72088)))

(declare-fun res!58214 () Bool)

(assert (=> b!125202 (=> res!58214 e!72088)))

(declare-fun lambda!3268 () Int)

(declare-fun Forall2!84 (Int) Bool)

(assert (=> b!125202 (= res!58214 (not (Forall2!84 lambda!3268)))))

(assert (=> b!125202 (= (Forall2!84 lambda!3268) inst!191)))

(declare-fun res!58213 () Bool)

(declare-fun e!72089 () Bool)

(assert (=> start!12714 (=> res!58213 e!72089)))

(declare-fun lambda!3265 () Int)

(declare-fun Forall!108 (Int) Bool)

(assert (=> start!12714 (= res!58213 (not (Forall!108 lambda!3265)))))

(assert (=> start!12714 (= (Forall!108 lambda!3265) inst!190)))

(assert (=> start!12714 (not e!72089)))

(assert (=> start!12714 true))

(declare-fun b!125203 () Bool)

(declare-fun e!72087 () Bool)

(assert (=> b!125203 (= e!72088 e!72087)))

(declare-fun res!58215 () Bool)

(assert (=> b!125203 (=> res!58215 e!72087)))

(declare-fun lambda!3266 () Int)

(declare-fun lambda!3267 () Int)

(declare-fun equivClasses!106 (Int Int) Bool)

(assert (=> b!125203 (= res!58215 (not (equivClasses!106 lambda!3266 lambda!3267)))))

(assert (=> b!125203 (= (equivClasses!106 lambda!3266 lambda!3267) (Forall2!84 lambda!3268))))

(declare-fun b!125204 () Bool)

(declare-datatypes ((TokenValueInjection!562 0))(
  ( (TokenValueInjection!563 (toValue!980 Int) (toChars!839 Int)) )
))
(declare-fun inv!2607 (TokenValueInjection!562) Bool)

(assert (=> b!125204 (= e!72087 (inv!2607 (TokenValueInjection!563 lambda!3267 lambda!3266)))))

(assert (=> b!125201 (= e!72089 e!72086)))

(declare-fun res!58212 () Bool)

(assert (=> b!125201 (=> res!58212 e!72086)))

(declare-fun semiInverseModEq!123 (Int Int) Bool)

(assert (=> b!125201 (= res!58212 (not (semiInverseModEq!123 lambda!3266 lambda!3267)))))

(assert (=> b!125201 (= (semiInverseModEq!123 lambda!3266 lambda!3267) (Forall!108 lambda!3265))))

(assert (= neg-inst!190 inst!190))

(assert (= (and start!12714 (not res!58213)) b!125201))

(assert (= (and b!125201 (not res!58212)) b!125202))

(assert (= neg-inst!191 inst!191))

(assert (= (and b!125202 (not res!58214)) b!125203))

(assert (= (and b!125203 (not res!58215)) b!125204))

(declare-fun m!110881 () Bool)

(assert (=> b!125201 m!110881))

(assert (=> b!125201 m!110881))

(declare-fun m!110883 () Bool)

(assert (=> b!125201 m!110883))

(declare-fun m!110885 () Bool)

(assert (=> b!125204 m!110885))

(assert (=> start!12714 m!110883))

(assert (=> start!12714 m!110883))

(declare-fun m!110887 () Bool)

(assert (=> b!125202 m!110887))

(assert (=> b!125202 m!110887))

(declare-fun m!110889 () Bool)

(assert (=> b!125203 m!110889))

(assert (=> b!125203 m!110889))

(assert (=> b!125203 m!110887))

(check-sat (not bs!12335) (not b!125220) (not bs!12316) (not b!125227) (not b!125216) (not b!125232) (not start!12714) (not b!125228) (not b!125223) (not b!125201) (not b!125231) (not b!125215) (not bs!12333) (not bs!12312) (not bs!12319) (not b!125218) (not b!125226) (not bs!12310) (not bs!12313) (not b!125204) (not b!125222) (not b!125229) (not bs!12329) (not b!125214) (not bs!12327) (not bs!12331) (not b!125217) (not bs!12322) (not b!125230) (not b!125225) (not b!125202) (not b!125221) (not b!125203) (not bs!12323) (not bs!12334) (not b!125224) (not bs!12317) (not bs!12315) (not b!125219) (not bs!12336) (not bs!12321) (not b!125213))
(check-sat)
(get-model)

(declare-fun d!29660 () Bool)

(declare-fun efficientList!60 (BalanceConc!1146) List!2047)

(assert (=> d!29660 (= (toValue!22 thiss!4219 x!33677) (DedentValue!393 (efficientList!60 x!33677)))))

(declare-fun bs!12362 () Bool)

(assert (= bs!12362 d!29660))

(declare-fun m!110893 () Bool)

(assert (=> bs!12362 m!110893))

(assert (=> b!125230 d!29660))

(declare-fun d!29662 () Bool)

(assert (=> d!29662 (= (toValue!22 thiss!4219 x!33678) (DedentValue!393 (efficientList!60 x!33678)))))

(declare-fun bs!12363 () Bool)

(assert (= bs!12363 d!29662))

(declare-fun m!110895 () Bool)

(assert (=> bs!12363 m!110895))

(assert (=> b!125230 d!29662))

(declare-fun d!29664 () Bool)

(declare-fun list!790 (Conc!571) List!2047)

(assert (=> d!29664 (= (list!789 x!33678) (list!790 (c!27604 x!33678)))))

(declare-fun bs!12364 () Bool)

(assert (= bs!12364 d!29664))

(declare-fun m!110897 () Bool)

(assert (=> bs!12364 m!110897))

(assert (=> bs!12327 d!29664))

(declare-fun d!29666 () Bool)

(assert (=> d!29666 (= (list!789 x!33677) (list!790 (c!27604 x!33677)))))

(declare-fun bs!12365 () Bool)

(assert (= bs!12365 d!29666))

(declare-fun m!110899 () Bool)

(assert (=> bs!12365 m!110899))

(assert (=> bs!12327 d!29666))

(assert (=> bs!12334 d!29666))

(assert (=> bs!12334 d!29664))

(assert (=> b!125226 d!29662))

(assert (=> b!125226 d!29660))

(declare-fun bs!12366 () Bool)

(assert (= bs!12366 (and m!110863 b!125217)))

(assert (=> bs!12366 m!110857))

(assert (=> bs!12366 m!110857))

(declare-fun bs!12367 () Bool)

(assert (= bs!12367 (and m!110865 m!110863 b!125218)))

(assert (=> bs!12367 m!110873))

(assert (=> bs!12367 m!110857))

(declare-fun bs!12368 () Bool)

(assert (= bs!12368 (and m!110865 b!125219)))

(assert (=> bs!12368 m!110873))

(assert (=> bs!12368 m!110873))

(declare-fun bs!12369 () Bool)

(assert (= bs!12369 (and m!110865 m!110863 b!125220)))

(assert (=> bs!12369 m!110857))

(assert (=> bs!12369 m!110873))

(declare-fun bs!12370 () Bool)

(assert (= bs!12370 (and m!110861 m!110865 b!125221)))

(declare-fun m!110901 () Bool)

(assert (=> bs!12370 m!110901))

(assert (=> bs!12370 m!110873))

(declare-fun bs!12371 () Bool)

(assert (= bs!12371 (and m!110861 m!110863 b!125222)))

(assert (=> bs!12371 m!110901))

(assert (=> bs!12371 m!110857))

(declare-fun bs!12372 () Bool)

(assert (= bs!12372 (and m!110861 b!125223)))

(assert (=> bs!12372 m!110901))

(assert (=> bs!12372 m!110901))

(declare-fun bs!12373 () Bool)

(assert (= bs!12373 (and m!110861 m!110865 b!125224)))

(assert (=> bs!12373 m!110873))

(assert (=> bs!12373 m!110901))

(declare-fun bs!12374 () Bool)

(assert (= bs!12374 (and m!110861 m!110863 b!125225)))

(assert (=> bs!12374 m!110857))

(assert (=> bs!12374 m!110901))

(declare-fun bs!12375 () Bool)

(assert (= bs!12375 (and m!110867 m!110865 m!110873 b!125226)))

(assert (=> bs!12375 m!110875))

(assert (=> bs!12375 m!110873))

(declare-fun bs!12376 () Bool)

(assert (= bs!12376 (and m!110867 m!110863 b!125227)))

(assert (=> bs!12376 m!110875))

(assert (=> bs!12376 m!110857))

(declare-fun bs!12377 () Bool)

(assert (= bs!12377 (and m!110867 m!110861 b!125228)))

(assert (=> bs!12377 m!110875))

(assert (=> bs!12377 m!110901))

(declare-fun bs!12378 () Bool)

(assert (= bs!12378 (and m!110867 b!125229)))

(assert (=> bs!12378 m!110875))

(assert (=> bs!12378 m!110875))

(declare-fun bs!12379 () Bool)

(assert (= bs!12379 (and m!110867 m!110865 m!110873 b!125230)))

(assert (=> bs!12379 m!110873))

(assert (=> bs!12379 m!110875))

(declare-fun bs!12380 () Bool)

(assert (= bs!12380 (and m!110867 m!110863 b!125231)))

(assert (=> bs!12380 m!110857))

(assert (=> bs!12380 m!110875))

(declare-fun bs!12381 () Bool)

(assert (= bs!12381 (and m!110867 m!110861 b!125232)))

(assert (=> bs!12381 m!110901))

(assert (=> bs!12381 m!110875))

(check-sat (not bs!12335) (not b!125220) (not d!29664) (not bs!12316) (not b!125227) (not bs!12331) (not b!125216) (not b!125232) (not start!12714) (not b!125201) (not b!125231) (not b!125215) (not bs!12333) (not bs!12312) (not bs!12319) (not b!125218) (not bs!12310) (not bs!12313) (not b!125204) (not b!125222) (not b!125229) (not bs!12329) (not b!125214) (not b!125217) (not bs!12322) (not b!125225) (not b!125202) (not d!29666) (not b!125221) (not b!125203) (not bs!12323) (not b!125228) (not d!29662) (not b!125224) (not bs!12317) (not d!29660) (not b!125223) (not bs!12315) (not b!125219) (not bs!12336) (not bs!12321) (not b!125213))
(check-sat)
(get-model)

(assert (=> b!125224 d!29660))

(declare-fun d!29670 () Bool)

(assert (=> d!29670 (= (toValue!22 thiss!4219 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33676))) (DedentValue!393 (efficientList!60 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33676)))))))

(declare-fun bs!12382 () Bool)

(assert (= bs!12382 d!29670))

(assert (=> bs!12382 m!110859))

(declare-fun m!110903 () Bool)

(assert (=> bs!12382 m!110903))

(assert (=> b!125224 d!29670))

(assert (=> b!125227 d!29662))

(declare-fun d!29672 () Bool)

(assert (=> d!29672 (= (toValue!22 thiss!4219 x!33676) (DedentValue!393 (efficientList!60 x!33676)))))

(declare-fun bs!12383 () Bool)

(assert (= bs!12383 d!29672))

(declare-fun m!110905 () Bool)

(assert (=> bs!12383 m!110905))

(assert (=> b!125227 d!29672))

(assert (=> bs!12313 d!29666))

(declare-fun d!29674 () Bool)

(assert (=> d!29674 (= (list!789 x!33676) (list!790 (c!27604 x!33676)))))

(declare-fun bs!12384 () Bool)

(assert (= bs!12384 d!29674))

(declare-fun m!110907 () Bool)

(assert (=> bs!12384 m!110907))

(assert (=> bs!12313 d!29674))

(assert (=> b!125221 d!29670))

(assert (=> b!125221 d!29660))

(declare-fun b!125241 () Bool)

(declare-fun e!72114 () List!2047)

(assert (=> b!125241 (= e!72114 Nil!2041)))

(declare-fun b!125244 () Bool)

(declare-fun e!72115 () List!2047)

(declare-fun ++!392 (List!2047 List!2047) List!2047)

(assert (=> b!125244 (= e!72115 (++!392 (list!790 (left!1636 (c!27604 x!33677))) (list!790 (right!1966 (c!27604 x!33677)))))))

(declare-fun d!29676 () Bool)

(declare-fun c!27609 () Bool)

(get-info :version)

(assert (=> d!29676 (= c!27609 ((_ is Empty!571) (c!27604 x!33677)))))

(assert (=> d!29676 (= (list!790 (c!27604 x!33677)) e!72114)))

(declare-fun b!125243 () Bool)

(declare-fun list!792 (IArray!1143) List!2047)

(assert (=> b!125243 (= e!72115 (list!792 (xs!3166 (c!27604 x!33677))))))

(declare-fun b!125242 () Bool)

(assert (=> b!125242 (= e!72114 e!72115)))

(declare-fun c!27610 () Bool)

(assert (=> b!125242 (= c!27610 ((_ is Leaf!1001) (c!27604 x!33677)))))

(assert (= (and d!29676 c!27609) b!125241))

(assert (= (and d!29676 (not c!27609)) b!125242))

(assert (= (and b!125242 c!27610) b!125243))

(assert (= (and b!125242 (not c!27610)) b!125244))

(declare-fun m!110917 () Bool)

(assert (=> b!125244 m!110917))

(declare-fun m!110919 () Bool)

(assert (=> b!125244 m!110919))

(assert (=> b!125244 m!110917))

(assert (=> b!125244 m!110919))

(declare-fun m!110921 () Bool)

(assert (=> b!125244 m!110921))

(declare-fun m!110923 () Bool)

(assert (=> b!125243 m!110923))

(assert (=> d!29666 d!29676))

(assert (=> bs!12322 d!29666))

(declare-fun d!29686 () Bool)

(assert (=> d!29686 (= (list!789 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33676))) (list!790 (c!27604 (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33676)))))))

(declare-fun bs!12389 () Bool)

(assert (= bs!12389 d!29686))

(declare-fun m!110925 () Bool)

(assert (=> bs!12389 m!110925))

(assert (=> bs!12322 d!29686))

(assert (=> bs!12329 d!29664))

(assert (=> bs!12329 d!29674))

(assert (=> b!125217 d!29672))

(assert (=> bs!12317 d!29686))

(assert (=> bs!12317 d!29666))

(assert (=> bs!12319 d!29686))

(assert (=> bs!12319 d!29674))

(assert (=> b!125231 d!29672))

(assert (=> b!125231 d!29662))

(assert (=> b!125225 d!29672))

(assert (=> b!125225 d!29670))

(assert (=> bs!12335 d!29674))

(assert (=> bs!12335 d!29664))

(assert (=> start!12714 d!29672))

(declare-fun d!29688 () Bool)

(declare-fun c!27618 () Bool)

(assert (=> d!29688 (= c!27618 ((_ is DedentValue!393) (toValue!22 thiss!4219 x!33676)))))

(declare-fun e!72121 () BalanceConc!1146)

(assert (=> d!29688 (= (toCharacters!15 thiss!4219 (toValue!22 thiss!4219 x!33676)) e!72121)))

(declare-fun b!125255 () Bool)

(declare-fun seqFromList!220 (List!2047) BalanceConc!1146)

(assert (=> b!125255 (= e!72121 (seqFromList!220 (value!14583 (toValue!22 thiss!4219 x!33676))))))

(declare-fun b!125256 () Bool)

(assert (=> b!125256 (= e!72121 (BalanceConc!1147 Empty!571))))

(assert (= (and d!29688 c!27618) b!125255))

(assert (= (and d!29688 (not c!27618)) b!125256))

(declare-fun m!110931 () Bool)

(assert (=> b!125255 m!110931))

(assert (=> start!12714 d!29688))

(declare-fun d!29694 () Bool)

(declare-fun choose!1622 (Int) Bool)

(assert (=> d!29694 (= (Forall!108 lambda!3265) (choose!1622 lambda!3265))))

(declare-fun bs!12392 () Bool)

(assert (= bs!12392 d!29694))

(declare-fun m!110935 () Bool)

(assert (=> bs!12392 m!110935))

(assert (=> start!12714 d!29694))

(assert (=> start!12714 d!29686))

(declare-fun d!29698 () Bool)

(declare-fun isBalanced!165 (Conc!571) Bool)

(assert (=> d!29698 (= (inv!2606 x!33676) (isBalanced!165 (c!27604 x!33676)))))

(declare-fun bs!12397 () Bool)

(assert (= bs!12397 d!29698))

(declare-fun m!110945 () Bool)

(assert (=> bs!12397 m!110945))

(assert (=> start!12714 d!29698))

(assert (=> start!12714 d!29674))

(assert (=> bs!12323 d!29674))

(assert (=> bs!12323 d!29686))

(declare-fun d!29708 () Bool)

(declare-fun lt!37862 () List!2047)

(assert (=> d!29708 (= lt!37862 (list!789 x!33677))))

(declare-fun efficientList!62 (Conc!571 List!2047) List!2047)

(declare-fun efficientList$default$2!20 (Conc!571) List!2047)

(assert (=> d!29708 (= lt!37862 (efficientList!62 (c!27604 x!33677) (efficientList$default$2!20 (c!27604 x!33677))))))

(assert (=> d!29708 (= (efficientList!60 x!33677) lt!37862)))

(declare-fun bs!12398 () Bool)

(assert (= bs!12398 d!29708))

(assert (=> bs!12398 m!110865))

(declare-fun m!110951 () Bool)

(assert (=> bs!12398 m!110951))

(assert (=> bs!12398 m!110951))

(declare-fun m!110953 () Bool)

(assert (=> bs!12398 m!110953))

(assert (=> d!29660 d!29708))

(assert (=> b!125218 d!29660))

(assert (=> b!125218 d!29672))

(assert (=> bs!12331 d!29664))

(assert (=> bs!12331 d!29686))

(assert (=> b!125219 d!29660))

(assert (=> b!125232 d!29670))

(assert (=> b!125232 d!29662))

(assert (=> bs!12310 d!29686))

(assert (=> bs!12310 d!29688))

(assert (=> bs!12310 d!29672))

(assert (=> bs!12310 d!29674))

(assert (=> bs!12333 d!29664))

(declare-fun d!29712 () Bool)

(declare-fun c!27625 () Bool)

(assert (=> d!29712 (= c!27625 ((_ is Node!571) (c!27604 x!33676)))))

(declare-fun e!72134 () Bool)

(assert (=> d!29712 (= (inv!2605 (c!27604 x!33676)) e!72134)))

(declare-fun b!125279 () Bool)

(declare-fun inv!2610 (Conc!571) Bool)

(assert (=> b!125279 (= e!72134 (inv!2610 (c!27604 x!33676)))))

(declare-fun b!125280 () Bool)

(declare-fun e!72135 () Bool)

(assert (=> b!125280 (= e!72134 e!72135)))

(declare-fun res!58247 () Bool)

(assert (=> b!125280 (= res!58247 (not ((_ is Leaf!1001) (c!27604 x!33676))))))

(assert (=> b!125280 (=> res!58247 e!72135)))

(declare-fun b!125281 () Bool)

(declare-fun inv!2611 (Conc!571) Bool)

(assert (=> b!125281 (= e!72135 (inv!2611 (c!27604 x!33676)))))

(assert (= (and d!29712 c!27625) b!125279))

(assert (= (and d!29712 (not c!27625)) b!125280))

(assert (= (and b!125280 (not res!58247)) b!125281))

(declare-fun m!110965 () Bool)

(assert (=> b!125279 m!110965))

(declare-fun m!110967 () Bool)

(assert (=> b!125281 m!110967))

(assert (=> b!125213 d!29712))

(assert (=> bs!12321 d!29686))

(assert (=> b!125214 d!29660))

(assert (=> b!125214 d!29662))

(assert (=> b!125228 d!29662))

(assert (=> b!125228 d!29670))

(assert (=> bs!12315 d!29666))

(assert (=> b!125222 d!29670))

(assert (=> b!125222 d!29672))

(assert (=> bs!12336 d!29686))

(assert (=> bs!12336 d!29664))

(declare-fun d!29722 () Bool)

(declare-fun lt!37863 () List!2047)

(assert (=> d!29722 (= lt!37863 (list!789 x!33678))))

(assert (=> d!29722 (= lt!37863 (efficientList!62 (c!27604 x!33678) (efficientList$default$2!20 (c!27604 x!33678))))))

(assert (=> d!29722 (= (efficientList!60 x!33678) lt!37863)))

(declare-fun bs!12404 () Bool)

(assert (= bs!12404 d!29722))

(assert (=> bs!12404 m!110867))

(declare-fun m!110971 () Bool)

(assert (=> bs!12404 m!110971))

(assert (=> bs!12404 m!110971))

(declare-fun m!110973 () Bool)

(assert (=> bs!12404 m!110973))

(assert (=> d!29662 d!29722))

(assert (=> bs!12312 d!29674))

(assert (=> b!125220 d!29672))

(assert (=> b!125220 d!29660))

(declare-fun bs!12406 () Bool)

(declare-fun d!29726 () Bool)

(assert (= bs!12406 (and d!29726 b!125202)))

(declare-fun lambda!3277 () Int)

(assert (=> bs!12406 (not (= lambda!3277 lambda!3268))))

(assert (=> d!29726 true))

(declare-fun order!1145 () Int)

(declare-fun order!1143 () Int)

(declare-fun dynLambda!751 (Int Int) Int)

(declare-fun dynLambda!752 (Int Int) Int)

(assert (=> d!29726 (< (dynLambda!751 order!1143 lambda!3267) (dynLambda!752 order!1145 lambda!3277))))

(assert (=> d!29726 (= (equivClasses!106 lambda!3266 lambda!3267) (Forall2!84 lambda!3277))))

(declare-fun bs!12408 () Bool)

(assert (= bs!12408 d!29726))

(declare-fun m!110981 () Bool)

(assert (=> bs!12408 m!110981))

(assert (=> b!125203 d!29726))

(declare-fun d!29732 () Bool)

(declare-fun choose!1623 (Int) Bool)

(assert (=> d!29732 (= (Forall2!84 lambda!3268) (choose!1623 lambda!3268))))

(declare-fun bs!12409 () Bool)

(assert (= bs!12409 d!29732))

(declare-fun m!110983 () Bool)

(assert (=> bs!12409 m!110983))

(assert (=> b!125203 d!29732))

(declare-fun d!29734 () Bool)

(declare-fun res!58258 () Bool)

(declare-fun e!72149 () Bool)

(assert (=> d!29734 (=> (not res!58258) (not e!72149))))

(assert (=> d!29734 (= res!58258 (semiInverseModEq!123 (toChars!839 (TokenValueInjection!563 lambda!3267 lambda!3266)) (toValue!980 (TokenValueInjection!563 lambda!3267 lambda!3266))))))

(assert (=> d!29734 (= (inv!2607 (TokenValueInjection!563 lambda!3267 lambda!3266)) e!72149)))

(declare-fun b!125304 () Bool)

(assert (=> b!125304 (= e!72149 (equivClasses!106 (toChars!839 (TokenValueInjection!563 lambda!3267 lambda!3266)) (toValue!980 (TokenValueInjection!563 lambda!3267 lambda!3266))))))

(assert (= (and d!29734 res!58258) b!125304))

(declare-fun m!110989 () Bool)

(assert (=> d!29734 m!110989))

(declare-fun m!110991 () Bool)

(assert (=> b!125304 m!110991))

(assert (=> b!125204 d!29734))

(declare-fun d!29736 () Bool)

(declare-fun c!27627 () Bool)

(assert (=> d!29736 (= c!27627 ((_ is Node!571) (c!27604 x!33677)))))

(declare-fun e!72152 () Bool)

(assert (=> d!29736 (= (inv!2605 (c!27604 x!33677)) e!72152)))

(declare-fun b!125305 () Bool)

(assert (=> b!125305 (= e!72152 (inv!2610 (c!27604 x!33677)))))

(declare-fun b!125306 () Bool)

(declare-fun e!72153 () Bool)

(assert (=> b!125306 (= e!72152 e!72153)))

(declare-fun res!58259 () Bool)

(assert (=> b!125306 (= res!58259 (not ((_ is Leaf!1001) (c!27604 x!33677))))))

(assert (=> b!125306 (=> res!58259 e!72153)))

(declare-fun b!125307 () Bool)

(assert (=> b!125307 (= e!72153 (inv!2611 (c!27604 x!33677)))))

(assert (= (and d!29736 c!27627) b!125305))

(assert (= (and d!29736 (not c!27627)) b!125306))

(assert (= (and b!125306 (not res!58259)) b!125307))

(declare-fun m!110993 () Bool)

(assert (=> b!125305 m!110993))

(declare-fun m!110995 () Bool)

(assert (=> b!125307 m!110995))

(assert (=> b!125215 d!29736))

(assert (=> bs!12316 d!29674))

(assert (=> bs!12316 d!29666))

(assert (=> b!125229 d!29662))

(declare-fun b!125308 () Bool)

(declare-fun e!72154 () List!2047)

(assert (=> b!125308 (= e!72154 Nil!2041)))

(declare-fun b!125311 () Bool)

(declare-fun e!72155 () List!2047)

(assert (=> b!125311 (= e!72155 (++!392 (list!790 (left!1636 (c!27604 x!33678))) (list!790 (right!1966 (c!27604 x!33678)))))))

(declare-fun d!29738 () Bool)

(declare-fun c!27628 () Bool)

(assert (=> d!29738 (= c!27628 ((_ is Empty!571) (c!27604 x!33678)))))

(assert (=> d!29738 (= (list!790 (c!27604 x!33678)) e!72154)))

(declare-fun b!125310 () Bool)

(assert (=> b!125310 (= e!72155 (list!792 (xs!3166 (c!27604 x!33678))))))

(declare-fun b!125309 () Bool)

(assert (=> b!125309 (= e!72154 e!72155)))

(declare-fun c!27629 () Bool)

(assert (=> b!125309 (= c!27629 ((_ is Leaf!1001) (c!27604 x!33678)))))

(assert (= (and d!29738 c!27628) b!125308))

(assert (= (and d!29738 (not c!27628)) b!125309))

(assert (= (and b!125309 c!27629) b!125310))

(assert (= (and b!125309 (not c!27629)) b!125311))

(declare-fun m!110997 () Bool)

(assert (=> b!125311 m!110997))

(declare-fun m!110999 () Bool)

(assert (=> b!125311 m!110999))

(assert (=> b!125311 m!110997))

(assert (=> b!125311 m!110999))

(declare-fun m!111001 () Bool)

(assert (=> b!125311 m!111001))

(declare-fun m!111003 () Bool)

(assert (=> b!125310 m!111003))

(assert (=> d!29664 d!29738))

(declare-fun bs!12410 () Bool)

(declare-fun d!29740 () Bool)

(assert (= bs!12410 (and d!29740 start!12714)))

(declare-fun lambda!3280 () Int)

(assert (=> bs!12410 (not (= lambda!3280 lambda!3265))))

(assert (=> d!29740 true))

(declare-fun order!1149 () Int)

(declare-fun order!1147 () Int)

(declare-fun dynLambda!753 (Int Int) Int)

(declare-fun dynLambda!754 (Int Int) Int)

(assert (=> d!29740 (< (dynLambda!753 order!1147 lambda!3266) (dynLambda!754 order!1149 lambda!3280))))

(assert (=> d!29740 true))

(assert (=> d!29740 (< (dynLambda!751 order!1143 lambda!3267) (dynLambda!754 order!1149 lambda!3280))))

(assert (=> d!29740 (= (semiInverseModEq!123 lambda!3266 lambda!3267) (Forall!108 lambda!3280))))

(declare-fun bs!12411 () Bool)

(assert (= bs!12411 d!29740))

(declare-fun m!111023 () Bool)

(assert (=> bs!12411 m!111023))

(assert (=> b!125201 d!29740))

(assert (=> b!125201 d!29694))

(declare-fun d!29742 () Bool)

(declare-fun c!27630 () Bool)

(assert (=> d!29742 (= c!27630 ((_ is Node!571) (c!27604 x!33678)))))

(declare-fun e!72162 () Bool)

(assert (=> d!29742 (= (inv!2605 (c!27604 x!33678)) e!72162)))

(declare-fun b!125322 () Bool)

(assert (=> b!125322 (= e!72162 (inv!2610 (c!27604 x!33678)))))

(declare-fun b!125323 () Bool)

(declare-fun e!72163 () Bool)

(assert (=> b!125323 (= e!72162 e!72163)))

(declare-fun res!58260 () Bool)

(assert (=> b!125323 (= res!58260 (not ((_ is Leaf!1001) (c!27604 x!33678))))))

(assert (=> b!125323 (=> res!58260 e!72163)))

(declare-fun b!125324 () Bool)

(assert (=> b!125324 (= e!72163 (inv!2611 (c!27604 x!33678)))))

(assert (= (and d!29742 c!27630) b!125322))

(assert (= (and d!29742 (not c!27630)) b!125323))

(assert (= (and b!125323 (not res!58260)) b!125324))

(declare-fun m!111025 () Bool)

(assert (=> b!125322 m!111025))

(declare-fun m!111027 () Bool)

(assert (=> b!125324 m!111027))

(assert (=> b!125216 d!29742))

(assert (=> b!125223 d!29670))

(assert (=> b!125202 d!29666))

(assert (=> b!125202 d!29732))

(declare-fun d!29744 () Bool)

(assert (=> d!29744 (= (inv!2606 x!33678) (isBalanced!165 (c!27604 x!33678)))))

(declare-fun bs!12412 () Bool)

(assert (= bs!12412 d!29744))

(declare-fun m!111029 () Bool)

(assert (=> bs!12412 m!111029))

(assert (=> b!125202 d!29744))

(assert (=> b!125202 d!29664))

(declare-fun d!29746 () Bool)

(assert (=> d!29746 (= (inv!2606 x!33677) (isBalanced!165 (c!27604 x!33677)))))

(declare-fun bs!12413 () Bool)

(assert (= bs!12413 d!29746))

(declare-fun m!111031 () Bool)

(assert (=> bs!12413 m!111031))

(assert (=> b!125202 d!29746))

(declare-fun tp!68343 () Bool)

(declare-fun b!125331 () Bool)

(declare-fun tp!68342 () Bool)

(declare-fun e!72168 () Bool)

(assert (=> b!125331 (= e!72168 (and (inv!2605 (left!1636 (c!27604 x!33676))) tp!68342 (inv!2605 (right!1966 (c!27604 x!33676))) tp!68343))))

(declare-fun b!125332 () Bool)

(declare-fun inv!2612 (IArray!1143) Bool)

(assert (=> b!125332 (= e!72168 (inv!2612 (xs!3166 (c!27604 x!33676))))))

(assert (=> b!125213 (= tp!68325 (and (inv!2605 (c!27604 x!33676)) e!72168))))

(assert (= (and b!125213 ((_ is Node!571) (c!27604 x!33676))) b!125331))

(assert (= (and b!125213 ((_ is Leaf!1001) (c!27604 x!33676))) b!125332))

(declare-fun m!111033 () Bool)

(assert (=> b!125331 m!111033))

(declare-fun m!111035 () Bool)

(assert (=> b!125331 m!111035))

(declare-fun m!111037 () Bool)

(assert (=> b!125332 m!111037))

(assert (=> b!125213 m!110853))

(declare-fun tp!68345 () Bool)

(declare-fun b!125333 () Bool)

(declare-fun tp!68344 () Bool)

(declare-fun e!72170 () Bool)

(assert (=> b!125333 (= e!72170 (and (inv!2605 (left!1636 (c!27604 x!33677))) tp!68344 (inv!2605 (right!1966 (c!27604 x!33677))) tp!68345))))

(declare-fun b!125334 () Bool)

(assert (=> b!125334 (= e!72170 (inv!2612 (xs!3166 (c!27604 x!33677))))))

(assert (=> b!125215 (= tp!68326 (and (inv!2605 (c!27604 x!33677)) e!72170))))

(assert (= (and b!125215 ((_ is Node!571) (c!27604 x!33677))) b!125333))

(assert (= (and b!125215 ((_ is Leaf!1001) (c!27604 x!33677))) b!125334))

(declare-fun m!111039 () Bool)

(assert (=> b!125333 m!111039))

(declare-fun m!111041 () Bool)

(assert (=> b!125333 m!111041))

(declare-fun m!111043 () Bool)

(assert (=> b!125334 m!111043))

(assert (=> b!125215 m!110877))

(declare-fun b!125335 () Bool)

(declare-fun tp!68346 () Bool)

(declare-fun tp!68347 () Bool)

(declare-fun e!72172 () Bool)

(assert (=> b!125335 (= e!72172 (and (inv!2605 (left!1636 (c!27604 x!33678))) tp!68346 (inv!2605 (right!1966 (c!27604 x!33678))) tp!68347))))

(declare-fun b!125336 () Bool)

(assert (=> b!125336 (= e!72172 (inv!2612 (xs!3166 (c!27604 x!33678))))))

(assert (=> b!125216 (= tp!68327 (and (inv!2605 (c!27604 x!33678)) e!72172))))

(assert (= (and b!125216 ((_ is Node!571) (c!27604 x!33678))) b!125335))

(assert (= (and b!125216 ((_ is Leaf!1001) (c!27604 x!33678))) b!125336))

(declare-fun m!111045 () Bool)

(assert (=> b!125335 m!111045))

(declare-fun m!111047 () Bool)

(assert (=> b!125335 m!111047))

(declare-fun m!111049 () Bool)

(assert (=> b!125336 m!111049))

(assert (=> b!125216 m!110879))

(check-sat (not b!125304) (not d!29732) (not d!29744) (not d!29686) (not d!29746) (not d!29672) (not b!125322) (not b!125281) (not d!29698) (not b!125279) (not b!125213) (not b!125215) (not d!29734) (not d!29726) (not d!29670) (not b!125333) (not d!29740) (not d!29674) (not b!125324) (not d!29694) (not b!125305) (not b!125307) (not b!125243) (not b!125310) (not b!125335) (not b!125255) (not b!125336) (not d!29722) (not b!125216) (not b!125331) (not b!125311) (not b!125332) (not b!125244) (not d!29708) (not b!125334))
(check-sat)
