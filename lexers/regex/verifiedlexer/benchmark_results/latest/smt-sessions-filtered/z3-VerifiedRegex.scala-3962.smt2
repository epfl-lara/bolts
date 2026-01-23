; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!216360 () Bool)

(assert start!216360)

(assert (=> start!216360 true))

(declare-fun b!2219166 () Bool)

(assert (=> b!2219166 true))

(assert (=> b!2219166 true))

(declare-fun b!2219167 () Bool)

(assert (=> b!2219167 true))

(declare-fun b!2219177 () Bool)

(declare-fun e!1417177 () Bool)

(declare-datatypes ((List!26078 0))(
  ( (Nil!25994) (Cons!25994 (h!31395 (_ BitVec 16)) (t!199455 List!26078)) )
))
(declare-datatypes ((IArray!16999 0))(
  ( (IArray!17000 (innerList!8557 List!26078)) )
))
(declare-datatypes ((Conc!8497 0))(
  ( (Node!8497 (left!19983 Conc!8497) (right!20313 Conc!8497) (csize!17224 Int) (cheight!8708 Int)) (Leaf!12460 (xs!11439 IArray!16999) (csize!17225 Int)) (Empty!8497) )
))
(declare-datatypes ((BalanceConc!16712 0))(
  ( (BalanceConc!16713 (c!354350 Conc!8497)) )
))
(declare-fun x!427813 () BalanceConc!16712)

(declare-fun tp!691246 () Bool)

(declare-fun inv!35250 (Conc!8497) Bool)

(assert (=> b!2219177 (= e!1417177 (and (inv!35250 (c!354350 x!427813)) tp!691246))))

(declare-datatypes ((IntegerValueInjection!106 0))(
  ( (IntegerValueInjection!107) )
))
(declare-fun thiss!4894 () IntegerValueInjection!106)

(declare-fun inst!1240 () Bool)

(declare-fun inv!35251 (BalanceConc!16712) Bool)

(declare-fun list!10080 (BalanceConc!16712) List!26078)

(declare-datatypes ((TokenValue!4331 0))(
  ( (FloatLiteralValue!8662 (text!30762 List!26078)) (TokenValueExt!4330 (__x!17108 Int)) (Broken!21655 (value!132289 List!26078)) (Object!4414) (End!4331) (Def!4331) (Underscore!4331) (Match!4331) (Else!4331) (Error!4331) (Case!4331) (If!4331) (Extends!4331) (Abstract!4331) (Class!4331) (Val!4331) (DelimiterValue!8662 (del!4391 List!26078)) (KeywordValue!4337 (value!132290 List!26078)) (CommentValue!8662 (value!132291 List!26078)) (WhitespaceValue!8662 (value!132292 List!26078)) (IndentationValue!4331 (value!132293 List!26078)) (String!28368) (Int32!4331) (Broken!21656 (value!132294 List!26078)) (Boolean!4332) (Unit!38961) (OperatorValue!4334 (op!4391 List!26078)) (IdentifierValue!8662 (value!132295 List!26078)) (IdentifierValue!8663 (value!132296 List!26078)) (WhitespaceValue!8663 (value!132297 List!26078)) (True!8662) (False!8662) (Broken!21657 (value!132298 List!26078)) (Broken!21658 (value!132299 List!26078)) (True!8663) (RightBrace!4331) (RightBracket!4331) (Colon!4331) (Null!4331) (Comma!4331) (LeftBracket!4331) (False!8663) (LeftBrace!4331) (ImaginaryLiteralValue!4331 (text!30763 List!26078)) (StringLiteralValue!12993 (value!132300 List!26078)) (EOFValue!4331 (value!132301 List!26078)) (IdentValue!4331 (value!132302 List!26078)) (DelimiterValue!8663 (value!132303 List!26078)) (DedentValue!4331 (value!132304 List!26078)) (NewLineValue!4331 (value!132305 List!26078)) (IntegerValue!12993 (value!132306 (_ BitVec 32)) (text!30764 List!26078)) (IntegerValue!12994 (value!132307 Int) (text!30765 List!26078)) (Times!4331) (Or!4331) (Equal!4331) (Minus!4331) (Broken!21659 (value!132308 List!26078)) (And!4331) (Div!4331) (LessEqual!4331) (Mod!4331) (Concat!10663) (Not!4331) (Plus!4331) (SpaceValue!4331 (value!132309 List!26078)) (IntegerValue!12995 (value!132310 Int) (text!30766 List!26078)) (StringLiteralValue!12994 (text!30767 List!26078)) (FloatLiteralValue!8663 (text!30768 List!26078)) (BytesLiteralValue!4331 (value!132311 List!26078)) (CommentValue!8663 (value!132312 List!26078)) (StringLiteralValue!12995 (value!132313 List!26078)) (ErrorTokenValue!4331 (msg!4392 List!26078)) )
))
(declare-fun toCharacters!24 (IntegerValueInjection!106 TokenValue!4331) BalanceConc!16712)

(declare-fun toValue!31 (IntegerValueInjection!106 BalanceConc!16712) TokenValue!4331)

(assert (=> start!216360 (= inst!1240 (=> (and (inv!35251 x!427813) e!1417177) (= (list!10080 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427813))) (list!10080 x!427813))))))

(assert (= start!216360 b!2219177))

(declare-fun m!2660059 () Bool)

(assert (=> b!2219177 m!2660059))

(declare-fun m!2660061 () Bool)

(assert (=> start!216360 m!2660061))

(declare-fun m!2660063 () Bool)

(assert (=> start!216360 m!2660063))

(declare-fun m!2660065 () Bool)

(assert (=> start!216360 m!2660065))

(declare-fun m!2660067 () Bool)

(assert (=> start!216360 m!2660067))

(assert (=> start!216360 m!2660063))

(assert (=> start!216360 m!2660065))

(declare-fun m!2660069 () Bool)

(assert (=> start!216360 m!2660069))

(declare-fun res!953008 () Bool)

(declare-fun e!1417179 () Bool)

(assert (=> b!2219167 (=> res!953008 e!1417179)))

(declare-fun x!427814 () BalanceConc!16712)

(declare-fun x!427815 () BalanceConc!16712)

(assert (=> b!2219167 (= res!953008 (not (= (list!10080 x!427814) (list!10080 x!427815))))))

(declare-fun inst!1241 () Bool)

(declare-fun e!1417178 () Bool)

(declare-fun e!1417180 () Bool)

(assert (=> b!2219167 (= inst!1241 (=> (and (inv!35251 x!427814) e!1417180 (inv!35251 x!427815) e!1417178) e!1417179))))

(declare-fun b!2219178 () Bool)

(assert (=> b!2219178 (= e!1417179 (= (toValue!31 thiss!4894 x!427814) (toValue!31 thiss!4894 x!427815)))))

(declare-fun b!2219179 () Bool)

(declare-fun tp!691247 () Bool)

(assert (=> b!2219179 (= e!1417180 (and (inv!35250 (c!354350 x!427814)) tp!691247))))

(declare-fun b!2219180 () Bool)

(declare-fun tp!691248 () Bool)

(assert (=> b!2219180 (= e!1417178 (and (inv!35250 (c!354350 x!427815)) tp!691248))))

(assert (= (and b!2219167 (not res!953008)) b!2219178))

(assert (= b!2219167 b!2219179))

(assert (= b!2219167 b!2219180))

(declare-fun m!2660071 () Bool)

(assert (=> b!2219167 m!2660071))

(declare-fun m!2660073 () Bool)

(assert (=> b!2219167 m!2660073))

(declare-fun m!2660075 () Bool)

(assert (=> b!2219167 m!2660075))

(declare-fun m!2660077 () Bool)

(assert (=> b!2219167 m!2660077))

(declare-fun m!2660079 () Bool)

(assert (=> b!2219178 m!2660079))

(declare-fun m!2660081 () Bool)

(assert (=> b!2219178 m!2660081))

(declare-fun m!2660083 () Bool)

(assert (=> b!2219179 m!2660083))

(declare-fun m!2660085 () Bool)

(assert (=> b!2219180 m!2660085))

(declare-fun bs!451980 () Bool)

(declare-fun neg-inst!1240 () Bool)

(declare-fun s!223835 () Bool)

(assert (= bs!451980 (and neg-inst!1240 s!223835)))

(assert (=> bs!451980 (=> true (= (list!10080 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427813))) (list!10080 x!427813)))))

(assert (=> m!2660063 m!2660065))

(assert (=> m!2660063 m!2660069))

(assert (=> m!2660063 m!2660067))

(assert (=> m!2660063 s!223835))

(assert (=> m!2660067 s!223835))

(declare-fun bs!451981 () Bool)

(assert (= bs!451981 (and neg-inst!1240 start!216360)))

(assert (=> bs!451981 (= true inst!1240)))

(declare-fun bs!451982 () Bool)

(declare-fun neg-inst!1241 () Bool)

(declare-fun s!223837 () Bool)

(assert (= bs!451982 (and neg-inst!1241 s!223837)))

(declare-fun res!953009 () Bool)

(declare-fun e!1417181 () Bool)

(assert (=> bs!451982 (=> res!953009 e!1417181)))

(assert (=> bs!451982 (= res!953009 (not (= (list!10080 x!427813) (list!10080 x!427813))))))

(assert (=> bs!451982 (=> true e!1417181)))

(declare-fun b!2219181 () Bool)

(assert (=> b!2219181 (= e!1417181 (= (toValue!31 thiss!4894 x!427813) (toValue!31 thiss!4894 x!427813)))))

(assert (= (and bs!451982 (not res!953009)) b!2219181))

(assert (=> m!2660063 m!2660067))

(assert (=> m!2660063 m!2660067))

(assert (=> m!2660063 s!223837))

(assert (=> m!2660063 s!223837))

(declare-fun bs!451983 () Bool)

(declare-fun s!223839 () Bool)

(assert (= bs!451983 (and neg-inst!1241 s!223839)))

(declare-fun res!953010 () Bool)

(declare-fun e!1417182 () Bool)

(assert (=> bs!451983 (=> res!953010 e!1417182)))

(assert (=> bs!451983 (= res!953010 (not (= (list!10080 x!427813) (list!10080 x!427815))))))

(assert (=> bs!451983 (=> true e!1417182)))

(declare-fun b!2219182 () Bool)

(assert (=> b!2219182 (= e!1417182 (= (toValue!31 thiss!4894 x!427813) (toValue!31 thiss!4894 x!427815)))))

(assert (= (and bs!451983 (not res!953010)) b!2219182))

(declare-fun bs!451984 () Bool)

(assert (= bs!451984 (and m!2660081 m!2660063)))

(assert (=> bs!451984 m!2660067))

(assert (=> bs!451984 m!2660073))

(assert (=> bs!451984 s!223839))

(declare-fun bs!451985 () Bool)

(declare-fun s!223841 () Bool)

(assert (= bs!451985 (and neg-inst!1241 s!223841)))

(declare-fun res!953011 () Bool)

(declare-fun e!1417183 () Bool)

(assert (=> bs!451985 (=> res!953011 e!1417183)))

(assert (=> bs!451985 (= res!953011 (not (= (list!10080 x!427815) (list!10080 x!427815))))))

(assert (=> bs!451985 (=> true e!1417183)))

(declare-fun b!2219183 () Bool)

(assert (=> b!2219183 (= e!1417183 (= (toValue!31 thiss!4894 x!427815) (toValue!31 thiss!4894 x!427815)))))

(assert (= (and bs!451985 (not res!953011)) b!2219183))

(assert (=> m!2660081 m!2660073))

(assert (=> m!2660081 m!2660073))

(assert (=> m!2660081 s!223841))

(declare-fun bs!451986 () Bool)

(declare-fun s!223843 () Bool)

(assert (= bs!451986 (and neg-inst!1241 s!223843)))

(declare-fun res!953012 () Bool)

(declare-fun e!1417184 () Bool)

(assert (=> bs!451986 (=> res!953012 e!1417184)))

(assert (=> bs!451986 (= res!953012 (not (= (list!10080 x!427815) (list!10080 x!427813))))))

(assert (=> bs!451986 (=> true e!1417184)))

(declare-fun b!2219184 () Bool)

(assert (=> b!2219184 (= e!1417184 (= (toValue!31 thiss!4894 x!427815) (toValue!31 thiss!4894 x!427813)))))

(assert (= (and bs!451986 (not res!953012)) b!2219184))

(assert (=> bs!451984 m!2660073))

(assert (=> bs!451984 m!2660067))

(assert (=> bs!451984 s!223843))

(assert (=> m!2660081 s!223841))

(declare-fun bs!451987 () Bool)

(declare-fun s!223845 () Bool)

(assert (= bs!451987 (and neg-inst!1241 s!223845)))

(declare-fun res!953013 () Bool)

(declare-fun e!1417185 () Bool)

(assert (=> bs!451987 (=> res!953013 e!1417185)))

(assert (=> bs!451987 (= res!953013 (not (= (list!10080 x!427813) (list!10080 x!427814))))))

(assert (=> bs!451987 (=> true e!1417185)))

(declare-fun b!2219185 () Bool)

(assert (=> b!2219185 (= e!1417185 (= (toValue!31 thiss!4894 x!427813) (toValue!31 thiss!4894 x!427814)))))

(assert (= (and bs!451987 (not res!953013)) b!2219185))

(declare-fun bs!451988 () Bool)

(assert (= bs!451988 (and m!2660079 m!2660063)))

(assert (=> bs!451988 m!2660067))

(assert (=> bs!451988 m!2660071))

(assert (=> bs!451988 s!223845))

(declare-fun bs!451989 () Bool)

(declare-fun s!223847 () Bool)

(assert (= bs!451989 (and neg-inst!1241 s!223847)))

(declare-fun res!953014 () Bool)

(declare-fun e!1417186 () Bool)

(assert (=> bs!451989 (=> res!953014 e!1417186)))

(assert (=> bs!451989 (= res!953014 (not (= (list!10080 x!427815) (list!10080 x!427814))))))

(assert (=> bs!451989 (=> true e!1417186)))

(declare-fun b!2219186 () Bool)

(assert (=> b!2219186 (= e!1417186 (= (toValue!31 thiss!4894 x!427815) (toValue!31 thiss!4894 x!427814)))))

(assert (= (and bs!451989 (not res!953014)) b!2219186))

(declare-fun bs!451990 () Bool)

(assert (= bs!451990 (and m!2660079 m!2660081)))

(assert (=> bs!451990 m!2660073))

(assert (=> bs!451990 m!2660071))

(assert (=> bs!451990 s!223847))

(declare-fun bs!451991 () Bool)

(declare-fun s!223849 () Bool)

(assert (= bs!451991 (and neg-inst!1241 s!223849)))

(declare-fun res!953015 () Bool)

(declare-fun e!1417187 () Bool)

(assert (=> bs!451991 (=> res!953015 e!1417187)))

(assert (=> bs!451991 (= res!953015 (not (= (list!10080 x!427814) (list!10080 x!427814))))))

(assert (=> bs!451991 (=> true e!1417187)))

(declare-fun b!2219187 () Bool)

(assert (=> b!2219187 (= e!1417187 (= (toValue!31 thiss!4894 x!427814) (toValue!31 thiss!4894 x!427814)))))

(assert (= (and bs!451991 (not res!953015)) b!2219187))

(assert (=> m!2660079 m!2660071))

(assert (=> m!2660079 m!2660071))

(assert (=> m!2660079 s!223849))

(declare-fun bs!451992 () Bool)

(declare-fun s!223851 () Bool)

(assert (= bs!451992 (and neg-inst!1241 s!223851)))

(declare-fun res!953016 () Bool)

(declare-fun e!1417188 () Bool)

(assert (=> bs!451992 (=> res!953016 e!1417188)))

(assert (=> bs!451992 (= res!953016 (not (= (list!10080 x!427814) (list!10080 x!427813))))))

(assert (=> bs!451992 (=> true e!1417188)))

(declare-fun b!2219188 () Bool)

(assert (=> b!2219188 (= e!1417188 (= (toValue!31 thiss!4894 x!427814) (toValue!31 thiss!4894 x!427813)))))

(assert (= (and bs!451992 (not res!953016)) b!2219188))

(assert (=> bs!451988 m!2660071))

(assert (=> bs!451988 m!2660067))

(assert (=> bs!451988 s!223851))

(declare-fun bs!451993 () Bool)

(declare-fun s!223853 () Bool)

(assert (= bs!451993 (and neg-inst!1241 s!223853)))

(declare-fun res!953017 () Bool)

(declare-fun e!1417189 () Bool)

(assert (=> bs!451993 (=> res!953017 e!1417189)))

(assert (=> bs!451993 (= res!953017 (not (= (list!10080 x!427814) (list!10080 x!427815))))))

(assert (=> bs!451993 (=> true e!1417189)))

(declare-fun b!2219189 () Bool)

(assert (=> b!2219189 (= e!1417189 (= (toValue!31 thiss!4894 x!427814) (toValue!31 thiss!4894 x!427815)))))

(assert (= (and bs!451993 (not res!953017)) b!2219189))

(assert (=> bs!451990 m!2660071))

(assert (=> bs!451990 m!2660073))

(assert (=> bs!451990 s!223853))

(assert (=> m!2660079 s!223849))

(declare-fun bs!451994 () Bool)

(assert (= bs!451994 (and m!2660073 m!2660063)))

(assert (=> bs!451994 s!223839))

(declare-fun bs!451995 () Bool)

(assert (= bs!451995 (and m!2660073 m!2660079)))

(assert (=> bs!451995 s!223853))

(declare-fun bs!451996 () Bool)

(assert (= bs!451996 (and m!2660073 m!2660081)))

(assert (=> bs!451996 s!223841))

(assert (=> m!2660073 s!223841))

(assert (=> bs!451994 s!223843))

(assert (=> bs!451995 s!223847))

(assert (=> bs!451996 s!223841))

(assert (=> m!2660073 s!223841))

(declare-fun bs!451997 () Bool)

(declare-fun s!223855 () Bool)

(assert (= bs!451997 (and neg-inst!1241 s!223855)))

(declare-fun res!953018 () Bool)

(declare-fun e!1417190 () Bool)

(assert (=> bs!451997 (=> res!953018 e!1417190)))

(assert (=> bs!451997 (= res!953018 (not (= (list!10080 x!427813) (list!10080 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427813))))))))

(assert (=> bs!451997 (=> true e!1417190)))

(declare-fun b!2219190 () Bool)

(assert (=> b!2219190 (= e!1417190 (= (toValue!31 thiss!4894 x!427813) (toValue!31 thiss!4894 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427813)))))))

(assert (= (and bs!451997 (not res!953018)) b!2219190))

(declare-fun bs!451998 () Bool)

(assert (= bs!451998 (and m!2660069 m!2660063)))

(assert (=> bs!451998 m!2660067))

(assert (=> bs!451998 m!2660069))

(assert (=> bs!451998 s!223855))

(declare-fun bs!451999 () Bool)

(declare-fun s!223857 () Bool)

(assert (= bs!451999 (and neg-inst!1241 s!223857)))

(declare-fun res!953019 () Bool)

(declare-fun e!1417191 () Bool)

(assert (=> bs!451999 (=> res!953019 e!1417191)))

(assert (=> bs!451999 (= res!953019 (not (= (list!10080 x!427814) (list!10080 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427813))))))))

(assert (=> bs!451999 (=> true e!1417191)))

(declare-fun b!2219191 () Bool)

(assert (=> b!2219191 (= e!1417191 (= (toValue!31 thiss!4894 x!427814) (toValue!31 thiss!4894 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427813)))))))

(assert (= (and bs!451999 (not res!953019)) b!2219191))

(declare-fun bs!452000 () Bool)

(assert (= bs!452000 (and m!2660069 m!2660079)))

(assert (=> bs!452000 m!2660071))

(assert (=> bs!452000 m!2660069))

(assert (=> bs!452000 s!223857))

(declare-fun bs!452001 () Bool)

(declare-fun s!223859 () Bool)

(assert (= bs!452001 (and neg-inst!1241 s!223859)))

(declare-fun res!953020 () Bool)

(declare-fun e!1417192 () Bool)

(assert (=> bs!452001 (=> res!953020 e!1417192)))

(assert (=> bs!452001 (= res!953020 (not (= (list!10080 x!427815) (list!10080 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427813))))))))

(assert (=> bs!452001 (=> true e!1417192)))

(declare-fun b!2219192 () Bool)

(assert (=> b!2219192 (= e!1417192 (= (toValue!31 thiss!4894 x!427815) (toValue!31 thiss!4894 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427813)))))))

(assert (= (and bs!452001 (not res!953020)) b!2219192))

(declare-fun bs!452002 () Bool)

(assert (= bs!452002 (and m!2660069 m!2660081 m!2660073)))

(assert (=> bs!452002 m!2660073))

(assert (=> bs!452002 m!2660069))

(assert (=> bs!452002 s!223859))

(declare-fun bs!452003 () Bool)

(declare-fun s!223861 () Bool)

(assert (= bs!452003 (and neg-inst!1241 s!223861)))

(declare-fun res!953021 () Bool)

(declare-fun e!1417193 () Bool)

(assert (=> bs!452003 (=> res!953021 e!1417193)))

(assert (=> bs!452003 (= res!953021 (not (= (list!10080 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427813))) (list!10080 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427813))))))))

(assert (=> bs!452003 (=> true e!1417193)))

(declare-fun b!2219193 () Bool)

(assert (=> b!2219193 (= e!1417193 (= (toValue!31 thiss!4894 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427813))) (toValue!31 thiss!4894 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427813)))))))

(assert (= (and bs!452003 (not res!953021)) b!2219193))

(assert (=> m!2660069 s!223861))

(declare-fun bs!452004 () Bool)

(declare-fun s!223863 () Bool)

(assert (= bs!452004 (and neg-inst!1241 s!223863)))

(declare-fun res!953022 () Bool)

(declare-fun e!1417194 () Bool)

(assert (=> bs!452004 (=> res!953022 e!1417194)))

(assert (=> bs!452004 (= res!953022 (not (= (list!10080 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427813))) (list!10080 x!427813))))))

(assert (=> bs!452004 (=> true e!1417194)))

(declare-fun b!2219194 () Bool)

(assert (=> b!2219194 (= e!1417194 (= (toValue!31 thiss!4894 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427813))) (toValue!31 thiss!4894 x!427813)))))

(assert (= (and bs!452004 (not res!953022)) b!2219194))

(assert (=> bs!451998 m!2660069))

(assert (=> bs!451998 m!2660067))

(assert (=> bs!451998 s!223863))

(declare-fun bs!452005 () Bool)

(declare-fun s!223865 () Bool)

(assert (= bs!452005 (and neg-inst!1241 s!223865)))

(declare-fun res!953023 () Bool)

(declare-fun e!1417195 () Bool)

(assert (=> bs!452005 (=> res!953023 e!1417195)))

(assert (=> bs!452005 (= res!953023 (not (= (list!10080 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427813))) (list!10080 x!427814))))))

(assert (=> bs!452005 (=> true e!1417195)))

(declare-fun b!2219195 () Bool)

(assert (=> b!2219195 (= e!1417195 (= (toValue!31 thiss!4894 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427813))) (toValue!31 thiss!4894 x!427814)))))

(assert (= (and bs!452005 (not res!953023)) b!2219195))

(assert (=> bs!452000 m!2660069))

(assert (=> bs!452000 m!2660071))

(assert (=> bs!452000 s!223865))

(declare-fun bs!452006 () Bool)

(declare-fun s!223867 () Bool)

(assert (= bs!452006 (and neg-inst!1241 s!223867)))

(declare-fun res!953024 () Bool)

(declare-fun e!1417196 () Bool)

(assert (=> bs!452006 (=> res!953024 e!1417196)))

(assert (=> bs!452006 (= res!953024 (not (= (list!10080 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427813))) (list!10080 x!427815))))))

(assert (=> bs!452006 (=> true e!1417196)))

(declare-fun b!2219196 () Bool)

(assert (=> b!2219196 (= e!1417196 (= (toValue!31 thiss!4894 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427813))) (toValue!31 thiss!4894 x!427815)))))

(assert (= (and bs!452006 (not res!953024)) b!2219196))

(assert (=> bs!452002 m!2660069))

(assert (=> bs!452002 m!2660073))

(assert (=> bs!452002 s!223867))

(assert (=> m!2660069 s!223861))

(assert (=> m!2660071 s!223849))

(declare-fun bs!452007 () Bool)

(assert (= bs!452007 (and m!2660071 m!2660079)))

(assert (=> bs!452007 s!223849))

(declare-fun bs!452008 () Bool)

(assert (= bs!452008 (and m!2660071 m!2660069)))

(assert (=> bs!452008 s!223865))

(declare-fun bs!452009 () Bool)

(assert (= bs!452009 (and m!2660071 m!2660063)))

(assert (=> bs!452009 s!223845))

(declare-fun bs!452010 () Bool)

(assert (= bs!452010 (and m!2660071 m!2660081 m!2660073)))

(assert (=> bs!452010 s!223847))

(assert (=> bs!452010 s!223853))

(assert (=> bs!452007 s!223849))

(assert (=> bs!452008 s!223857))

(assert (=> m!2660071 s!223849))

(assert (=> bs!452009 s!223851))

(declare-fun bs!452011 () Bool)

(assert (= bs!452011 (and m!2660067 m!2660079 m!2660071)))

(assert (=> bs!452011 s!223851))

(declare-fun bs!452012 () Bool)

(assert (= bs!452012 (and m!2660067 m!2660063)))

(assert (=> bs!452012 s!223837))

(declare-fun bs!452013 () Bool)

(assert (= bs!452013 (and m!2660067 m!2660069)))

(assert (=> bs!452013 s!223863))

(declare-fun bs!452014 () Bool)

(assert (= bs!452014 (and m!2660067 m!2660081 m!2660073)))

(assert (=> bs!452014 s!223843))

(assert (=> m!2660067 s!223837))

(assert (=> bs!452013 s!223855))

(assert (=> bs!452012 s!223837))

(assert (=> bs!452014 s!223839))

(assert (=> bs!452011 s!223845))

(assert (=> m!2660067 s!223837))

(declare-fun bs!452015 () Bool)

(assert (= bs!452015 (and neg-inst!1241 b!2219167)))

(assert (=> bs!452015 (= true inst!1241)))

(declare-fun res!953005 () Bool)

(declare-fun e!1417176 () Bool)

(assert (=> start!216360 (=> res!953005 e!1417176)))

(declare-fun lambda!83681 () Int)

(declare-fun Forall!1047 (Int) Bool)

(assert (=> start!216360 (= res!953005 (not (Forall!1047 lambda!83681)))))

(assert (=> start!216360 (= (Forall!1047 lambda!83681) inst!1240)))

(assert (=> start!216360 (not e!1417176)))

(assert (=> start!216360 true))

(declare-fun e!1417175 () Bool)

(assert (=> b!2219166 (= e!1417176 e!1417175)))

(declare-fun res!953007 () Bool)

(assert (=> b!2219166 (=> res!953007 e!1417175)))

(declare-fun lambda!83682 () Int)

(declare-fun lambda!83683 () Int)

(declare-fun semiInverseModEq!1680 (Int Int) Bool)

(assert (=> b!2219166 (= res!953007 (not (semiInverseModEq!1680 lambda!83682 lambda!83683)))))

(assert (=> b!2219166 (= (semiInverseModEq!1680 lambda!83682 lambda!83683) (Forall!1047 lambda!83681))))

(declare-fun e!1417174 () Bool)

(assert (=> b!2219167 (= e!1417175 e!1417174)))

(declare-fun res!953006 () Bool)

(assert (=> b!2219167 (=> res!953006 e!1417174)))

(declare-fun lambda!83684 () Int)

(declare-fun Forall2!668 (Int) Bool)

(assert (=> b!2219167 (= res!953006 (not (Forall2!668 lambda!83684)))))

(assert (=> b!2219167 (= (Forall2!668 lambda!83684) inst!1241)))

(declare-fun b!2219168 () Bool)

(declare-fun equivClasses!1603 (Int Int) Bool)

(assert (=> b!2219168 (= e!1417174 (equivClasses!1603 lambda!83682 lambda!83683))))

(assert (=> b!2219168 (= (equivClasses!1603 lambda!83682 lambda!83683) (Forall2!668 lambda!83684))))

(assert (= neg-inst!1240 inst!1240))

(assert (= (and start!216360 (not res!953005)) b!2219166))

(assert (= (and b!2219166 (not res!953007)) b!2219167))

(assert (= neg-inst!1241 inst!1241))

(assert (= (and b!2219167 (not res!953006)) b!2219168))

(declare-fun m!2660087 () Bool)

(assert (=> start!216360 m!2660087))

(assert (=> start!216360 m!2660087))

(declare-fun m!2660089 () Bool)

(assert (=> b!2219166 m!2660089))

(assert (=> b!2219166 m!2660089))

(assert (=> b!2219166 m!2660087))

(declare-fun m!2660091 () Bool)

(assert (=> b!2219167 m!2660091))

(assert (=> b!2219167 m!2660091))

(declare-fun m!2660093 () Bool)

(assert (=> b!2219168 m!2660093))

(assert (=> b!2219168 m!2660093))

(assert (=> b!2219168 m!2660091))

(check-sat (not b!2219195) (not bs!451992) (not bs!451986) (not bs!452004) (not b!2219191) (not b!2219185) (not bs!451983) (not bs!452001) (not b!2219181) (not b!2219167) (not b!2219180) (not b!2219179) (not bs!451987) (not bs!451989) (not b!2219196) (not bs!451997) (not b!2219188) (not b!2219192) (not b!2219166) (not bs!451991) (not b!2219178) (not bs!452006) (not bs!451982) (not bs!451999) (not b!2219193) (not b!2219190) (not b!2219187) (not bs!452005) (not b!2219177) (not b!2219182) (not bs!451993) (not b!2219184) (not bs!451980) (not b!2219194) (not b!2219168) (not bs!452003) (not b!2219186) (not start!216360) (not b!2219189) (not b!2219183) (not bs!451985))
(check-sat)
