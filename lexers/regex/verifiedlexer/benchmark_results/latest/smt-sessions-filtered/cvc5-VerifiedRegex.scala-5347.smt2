; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!273044 () Bool)

(assert start!273044)

(assert (=> start!273044 true))

(declare-fun b!2816171 () Bool)

(assert (=> b!2816171 true))

(assert (=> b!2816171 true))

(assert (=> b!2816171 true))

(declare-fun b!2816180 () Bool)

(declare-fun e!1780862 () Bool)

(declare-datatypes ((List!33052 0))(
  ( (Nil!32928) (Cons!32928 (h!38348 (_ BitVec 16)) (t!230071 List!33052)) )
))
(declare-datatypes ((IArray!20435 0))(
  ( (IArray!20436 (innerList!10275 List!33052)) )
))
(declare-datatypes ((Conc!10215 0))(
  ( (Node!10215 (left!24868 Conc!10215) (right!25198 Conc!10215) (csize!20660 Int) (cheight!10426 Int)) (Leaf!15563 (xs!13327 IArray!20435) (csize!20661 Int)) (Empty!10215) )
))
(declare-datatypes ((BalanceConc!20068 0))(
  ( (BalanceConc!20069 (c!456615 Conc!10215)) )
))
(declare-fun x!519166 () BalanceConc!20068)

(declare-fun tp!899019 () Bool)

(declare-fun inv!44820 (Conc!10215) Bool)

(assert (=> b!2816180 (= e!1780862 (and (inv!44820 (c!456615 x!519166)) tp!899019))))

(declare-datatypes ((StringLiteralValueInjection!116 0))(
  ( (StringLiteralValueInjection!117) )
))
(declare-fun thiss!3195 () StringLiteralValueInjection!116)

(declare-fun inst!1534 () Bool)

(declare-fun inv!44821 (BalanceConc!20068) Bool)

(declare-fun list!12362 (BalanceConc!20068) List!33052)

(declare-datatypes ((TokenValue!5142 0))(
  ( (FloatLiteralValue!10284 (text!36439 List!33052)) (TokenValueExt!5141 (__x!21963 Int)) (Broken!25710 (value!158299 List!33052)) (Object!5265) (End!5142) (Def!5142) (Underscore!5142) (Match!5142) (Else!5142) (Error!5142) (Case!5142) (If!5142) (Extends!5142) (Abstract!5142) (Class!5142) (Val!5142) (DelimiterValue!10284 (del!5202 List!33052)) (KeywordValue!5148 (value!158300 List!33052)) (CommentValue!10284 (value!158301 List!33052)) (WhitespaceValue!10284 (value!158302 List!33052)) (IndentationValue!5142 (value!158303 List!33052)) (String!36179) (Int32!5142) (Broken!25711 (value!158304 List!33052)) (Boolean!5143) (Unit!46914) (OperatorValue!5145 (op!5202 List!33052)) (IdentifierValue!10284 (value!158305 List!33052)) (IdentifierValue!10285 (value!158306 List!33052)) (WhitespaceValue!10285 (value!158307 List!33052)) (True!10284) (False!10284) (Broken!25712 (value!158308 List!33052)) (Broken!25713 (value!158309 List!33052)) (True!10285) (RightBrace!5142) (RightBracket!5142) (Colon!5142) (Null!5142) (Comma!5142) (LeftBracket!5142) (False!10285) (LeftBrace!5142) (ImaginaryLiteralValue!5142 (text!36440 List!33052)) (StringLiteralValue!15426 (value!158310 List!33052)) (EOFValue!5142 (value!158311 List!33052)) (IdentValue!5142 (value!158312 List!33052)) (DelimiterValue!10285 (value!158313 List!33052)) (DedentValue!5142 (value!158314 List!33052)) (NewLineValue!5142 (value!158315 List!33052)) (IntegerValue!15426 (value!158316 (_ BitVec 32)) (text!36441 List!33052)) (IntegerValue!15427 (value!158317 Int) (text!36442 List!33052)) (Times!5142) (Or!5142) (Equal!5142) (Minus!5142) (Broken!25714 (value!158318 List!33052)) (And!5142) (Div!5142) (LessEqual!5142) (Mod!5142) (Concat!13450) (Not!5142) (Plus!5142) (SpaceValue!5142 (value!158319 List!33052)) (IntegerValue!15428 (value!158320 Int) (text!36443 List!33052)) (StringLiteralValue!15427 (text!36444 List!33052)) (FloatLiteralValue!10285 (text!36445 List!33052)) (BytesLiteralValue!5142 (value!158321 List!33052)) (CommentValue!10285 (value!158322 List!33052)) (StringLiteralValue!15428 (value!158323 List!33052)) (ErrorTokenValue!5142 (msg!5203 List!33052)) )
))
(declare-fun toCharacters!3 (StringLiteralValueInjection!116 TokenValue!5142) BalanceConc!20068)

(declare-fun toValue!10 (StringLiteralValueInjection!116 BalanceConc!20068) TokenValue!5142)

(assert (=> start!273044 (= inst!1534 (=> (and (inv!44821 x!519166) e!1780862) (= (list!12362 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166))) (list!12362 x!519166))))))

(assert (= start!273044 b!2816180))

(declare-fun m!3247149 () Bool)

(assert (=> b!2816180 m!3247149))

(declare-fun m!3247151 () Bool)

(assert (=> start!273044 m!3247151))

(declare-fun m!3247153 () Bool)

(assert (=> start!273044 m!3247153))

(declare-fun m!3247155 () Bool)

(assert (=> start!273044 m!3247155))

(declare-fun m!3247157 () Bool)

(assert (=> start!273044 m!3247157))

(declare-fun m!3247159 () Bool)

(assert (=> start!273044 m!3247159))

(assert (=> start!273044 m!3247153))

(assert (=> start!273044 m!3247155))

(declare-fun res!1171971 () Bool)

(declare-fun e!1780863 () Bool)

(assert (=> b!2816171 (=> res!1171971 e!1780863)))

(declare-fun x!519167 () BalanceConc!20068)

(declare-fun x!519168 () BalanceConc!20068)

(assert (=> b!2816171 (= res!1171971 (not (= (list!12362 x!519167) (list!12362 x!519168))))))

(declare-fun e!1780864 () Bool)

(declare-fun inst!1535 () Bool)

(declare-fun e!1780865 () Bool)

(assert (=> b!2816171 (= inst!1535 (=> (and (inv!44821 x!519167) e!1780865 (inv!44821 x!519168) e!1780864) e!1780863))))

(declare-fun b!2816181 () Bool)

(assert (=> b!2816181 (= e!1780863 (= (toValue!10 thiss!3195 x!519167) (toValue!10 thiss!3195 x!519168)))))

(declare-fun b!2816182 () Bool)

(declare-fun tp!899020 () Bool)

(assert (=> b!2816182 (= e!1780865 (and (inv!44820 (c!456615 x!519167)) tp!899020))))

(declare-fun b!2816183 () Bool)

(declare-fun tp!899021 () Bool)

(assert (=> b!2816183 (= e!1780864 (and (inv!44820 (c!456615 x!519168)) tp!899021))))

(assert (= (and b!2816171 (not res!1171971)) b!2816181))

(assert (= b!2816171 b!2816182))

(assert (= b!2816171 b!2816183))

(declare-fun m!3247161 () Bool)

(assert (=> b!2816171 m!3247161))

(declare-fun m!3247163 () Bool)

(assert (=> b!2816171 m!3247163))

(declare-fun m!3247165 () Bool)

(assert (=> b!2816171 m!3247165))

(declare-fun m!3247167 () Bool)

(assert (=> b!2816171 m!3247167))

(declare-fun m!3247169 () Bool)

(assert (=> b!2816181 m!3247169))

(declare-fun m!3247171 () Bool)

(assert (=> b!2816181 m!3247171))

(declare-fun m!3247173 () Bool)

(assert (=> b!2816182 m!3247173))

(declare-fun m!3247175 () Bool)

(assert (=> b!2816183 m!3247175))

(declare-fun bs!516754 () Bool)

(declare-fun neg-inst!1534 () Bool)

(declare-fun s!229845 () Bool)

(assert (= bs!516754 (and neg-inst!1534 s!229845)))

(assert (=> bs!516754 (=> true (= (list!12362 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166))) (list!12362 x!519166)))))

(assert (=> m!3247153 m!3247155))

(assert (=> m!3247153 m!3247157))

(assert (=> m!3247153 m!3247151))

(assert (=> m!3247153 s!229845))

(assert (=> m!3247151 s!229845))

(declare-fun bs!516755 () Bool)

(assert (= bs!516755 (and neg-inst!1534 start!273044)))

(assert (=> bs!516755 (= true inst!1534)))

(declare-fun bs!516756 () Bool)

(declare-fun neg-inst!1535 () Bool)

(declare-fun s!229847 () Bool)

(assert (= bs!516756 (and neg-inst!1535 s!229847)))

(declare-fun res!1171972 () Bool)

(declare-fun e!1780866 () Bool)

(assert (=> bs!516756 (=> res!1171972 e!1780866)))

(assert (=> bs!516756 (= res!1171972 (not (= (list!12362 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166))) (list!12362 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166))))))))

(assert (=> bs!516756 (=> true e!1780866)))

(declare-fun b!2816184 () Bool)

(assert (=> b!2816184 (= e!1780866 (= (toValue!10 thiss!3195 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166))) (toValue!10 thiss!3195 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166)))))))

(assert (= (and bs!516756 (not res!1171972)) b!2816184))

(assert (=> m!3247157 s!229847))

(assert (=> m!3247157 s!229847))

(declare-fun bs!516757 () Bool)

(declare-fun s!229849 () Bool)

(assert (= bs!516757 (and neg-inst!1535 s!229849)))

(declare-fun res!1171973 () Bool)

(declare-fun e!1780867 () Bool)

(assert (=> bs!516757 (=> res!1171973 e!1780867)))

(assert (=> bs!516757 (= res!1171973 (not (= (list!12362 x!519166) (list!12362 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166))))))))

(assert (=> bs!516757 (=> true e!1780867)))

(declare-fun b!2816185 () Bool)

(assert (=> b!2816185 (= e!1780867 (= (toValue!10 thiss!3195 x!519166) (toValue!10 thiss!3195 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166)))))))

(assert (= (and bs!516757 (not res!1171973)) b!2816185))

(declare-fun bs!516758 () Bool)

(assert (= bs!516758 (and m!3247153 m!3247157)))

(assert (=> bs!516758 m!3247151))

(assert (=> bs!516758 m!3247157))

(assert (=> bs!516758 s!229849))

(declare-fun bs!516759 () Bool)

(declare-fun s!229851 () Bool)

(assert (= bs!516759 (and neg-inst!1535 s!229851)))

(declare-fun res!1171974 () Bool)

(declare-fun e!1780868 () Bool)

(assert (=> bs!516759 (=> res!1171974 e!1780868)))

(assert (=> bs!516759 (= res!1171974 (not (= (list!12362 x!519166) (list!12362 x!519166))))))

(assert (=> bs!516759 (=> true e!1780868)))

(declare-fun b!2816186 () Bool)

(assert (=> b!2816186 (= e!1780868 (= (toValue!10 thiss!3195 x!519166) (toValue!10 thiss!3195 x!519166)))))

(assert (= (and bs!516759 (not res!1171974)) b!2816186))

(assert (=> m!3247153 m!3247151))

(assert (=> m!3247153 m!3247151))

(assert (=> m!3247153 s!229851))

(declare-fun bs!516760 () Bool)

(declare-fun s!229853 () Bool)

(assert (= bs!516760 (and neg-inst!1535 s!229853)))

(declare-fun res!1171975 () Bool)

(declare-fun e!1780869 () Bool)

(assert (=> bs!516760 (=> res!1171975 e!1780869)))

(assert (=> bs!516760 (= res!1171975 (not (= (list!12362 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166))) (list!12362 x!519166))))))

(assert (=> bs!516760 (=> true e!1780869)))

(declare-fun b!2816187 () Bool)

(assert (=> b!2816187 (= e!1780869 (= (toValue!10 thiss!3195 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166))) (toValue!10 thiss!3195 x!519166)))))

(assert (= (and bs!516760 (not res!1171975)) b!2816187))

(assert (=> bs!516758 m!3247157))

(assert (=> bs!516758 m!3247151))

(assert (=> bs!516758 s!229853))

(assert (=> m!3247153 s!229851))

(declare-fun bs!516761 () Bool)

(declare-fun s!229855 () Bool)

(assert (= bs!516761 (and neg-inst!1535 s!229855)))

(declare-fun res!1171976 () Bool)

(declare-fun e!1780870 () Bool)

(assert (=> bs!516761 (=> res!1171976 e!1780870)))

(assert (=> bs!516761 (= res!1171976 (not (= (list!12362 x!519167) (list!12362 x!519166))))))

(assert (=> bs!516761 (=> true e!1780870)))

(declare-fun b!2816188 () Bool)

(assert (=> b!2816188 (= e!1780870 (= (toValue!10 thiss!3195 x!519167) (toValue!10 thiss!3195 x!519166)))))

(assert (= (and bs!516761 (not res!1171976)) b!2816188))

(declare-fun bs!516762 () Bool)

(assert (= bs!516762 (and m!3247161 m!3247153)))

(assert (=> bs!516762 m!3247161))

(assert (=> bs!516762 m!3247151))

(assert (=> bs!516762 s!229855))

(declare-fun bs!516763 () Bool)

(declare-fun s!229857 () Bool)

(assert (= bs!516763 (and neg-inst!1535 s!229857)))

(declare-fun res!1171977 () Bool)

(declare-fun e!1780871 () Bool)

(assert (=> bs!516763 (=> res!1171977 e!1780871)))

(assert (=> bs!516763 (= res!1171977 (not (= (list!12362 x!519167) (list!12362 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166))))))))

(assert (=> bs!516763 (=> true e!1780871)))

(declare-fun b!2816189 () Bool)

(assert (=> b!2816189 (= e!1780871 (= (toValue!10 thiss!3195 x!519167) (toValue!10 thiss!3195 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166)))))))

(assert (= (and bs!516763 (not res!1171977)) b!2816189))

(declare-fun bs!516764 () Bool)

(assert (= bs!516764 (and m!3247161 m!3247157)))

(assert (=> bs!516764 m!3247161))

(assert (=> bs!516764 m!3247157))

(assert (=> bs!516764 s!229857))

(declare-fun bs!516765 () Bool)

(declare-fun s!229859 () Bool)

(assert (= bs!516765 (and neg-inst!1535 s!229859)))

(declare-fun res!1171978 () Bool)

(declare-fun e!1780872 () Bool)

(assert (=> bs!516765 (=> res!1171978 e!1780872)))

(assert (=> bs!516765 (= res!1171978 (not (= (list!12362 x!519167) (list!12362 x!519167))))))

(assert (=> bs!516765 (=> true e!1780872)))

(declare-fun b!2816190 () Bool)

(assert (=> b!2816190 (= e!1780872 (= (toValue!10 thiss!3195 x!519167) (toValue!10 thiss!3195 x!519167)))))

(assert (= (and bs!516765 (not res!1171978)) b!2816190))

(assert (=> m!3247161 s!229859))

(declare-fun bs!516766 () Bool)

(declare-fun s!229861 () Bool)

(assert (= bs!516766 (and neg-inst!1535 s!229861)))

(declare-fun res!1171979 () Bool)

(declare-fun e!1780873 () Bool)

(assert (=> bs!516766 (=> res!1171979 e!1780873)))

(assert (=> bs!516766 (= res!1171979 (not (= (list!12362 x!519166) (list!12362 x!519167))))))

(assert (=> bs!516766 (=> true e!1780873)))

(declare-fun b!2816191 () Bool)

(assert (=> b!2816191 (= e!1780873 (= (toValue!10 thiss!3195 x!519166) (toValue!10 thiss!3195 x!519167)))))

(assert (= (and bs!516766 (not res!1171979)) b!2816191))

(assert (=> bs!516762 m!3247151))

(assert (=> bs!516762 m!3247161))

(assert (=> bs!516762 s!229861))

(declare-fun bs!516767 () Bool)

(declare-fun s!229863 () Bool)

(assert (= bs!516767 (and neg-inst!1535 s!229863)))

(declare-fun res!1171980 () Bool)

(declare-fun e!1780874 () Bool)

(assert (=> bs!516767 (=> res!1171980 e!1780874)))

(assert (=> bs!516767 (= res!1171980 (not (= (list!12362 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166))) (list!12362 x!519167))))))

(assert (=> bs!516767 (=> true e!1780874)))

(declare-fun b!2816192 () Bool)

(assert (=> b!2816192 (= e!1780874 (= (toValue!10 thiss!3195 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166))) (toValue!10 thiss!3195 x!519167)))))

(assert (= (and bs!516767 (not res!1171980)) b!2816192))

(assert (=> bs!516764 m!3247157))

(assert (=> bs!516764 m!3247161))

(assert (=> bs!516764 s!229863))

(assert (=> m!3247161 s!229859))

(declare-fun bs!516768 () Bool)

(declare-fun s!229865 () Bool)

(assert (= bs!516768 (and neg-inst!1535 s!229865)))

(declare-fun res!1171981 () Bool)

(declare-fun e!1780875 () Bool)

(assert (=> bs!516768 (=> res!1171981 e!1780875)))

(assert (=> bs!516768 (= res!1171981 (not (= (list!12362 x!519168) (list!12362 x!519166))))))

(assert (=> bs!516768 (=> true e!1780875)))

(declare-fun b!2816193 () Bool)

(assert (=> b!2816193 (= e!1780875 (= (toValue!10 thiss!3195 x!519168) (toValue!10 thiss!3195 x!519166)))))

(assert (= (and bs!516768 (not res!1171981)) b!2816193))

(declare-fun bs!516769 () Bool)

(assert (= bs!516769 (and m!3247171 m!3247153)))

(assert (=> bs!516769 m!3247163))

(assert (=> bs!516769 m!3247151))

(assert (=> bs!516769 s!229865))

(declare-fun bs!516770 () Bool)

(declare-fun s!229867 () Bool)

(assert (= bs!516770 (and neg-inst!1535 s!229867)))

(declare-fun res!1171982 () Bool)

(declare-fun e!1780876 () Bool)

(assert (=> bs!516770 (=> res!1171982 e!1780876)))

(assert (=> bs!516770 (= res!1171982 (not (= (list!12362 x!519168) (list!12362 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166))))))))

(assert (=> bs!516770 (=> true e!1780876)))

(declare-fun b!2816194 () Bool)

(assert (=> b!2816194 (= e!1780876 (= (toValue!10 thiss!3195 x!519168) (toValue!10 thiss!3195 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166)))))))

(assert (= (and bs!516770 (not res!1171982)) b!2816194))

(declare-fun bs!516771 () Bool)

(assert (= bs!516771 (and m!3247171 m!3247157)))

(assert (=> bs!516771 m!3247163))

(assert (=> bs!516771 m!3247157))

(assert (=> bs!516771 s!229867))

(declare-fun bs!516772 () Bool)

(declare-fun s!229869 () Bool)

(assert (= bs!516772 (and neg-inst!1535 s!229869)))

(declare-fun res!1171983 () Bool)

(declare-fun e!1780877 () Bool)

(assert (=> bs!516772 (=> res!1171983 e!1780877)))

(assert (=> bs!516772 (= res!1171983 (not (= (list!12362 x!519168) (list!12362 x!519167))))))

(assert (=> bs!516772 (=> true e!1780877)))

(declare-fun b!2816195 () Bool)

(assert (=> b!2816195 (= e!1780877 (= (toValue!10 thiss!3195 x!519168) (toValue!10 thiss!3195 x!519167)))))

(assert (= (and bs!516772 (not res!1171983)) b!2816195))

(declare-fun bs!516773 () Bool)

(assert (= bs!516773 (and m!3247171 m!3247161)))

(assert (=> bs!516773 m!3247163))

(assert (=> bs!516773 m!3247161))

(assert (=> bs!516773 s!229869))

(declare-fun bs!516774 () Bool)

(declare-fun s!229871 () Bool)

(assert (= bs!516774 (and neg-inst!1535 s!229871)))

(declare-fun res!1171984 () Bool)

(declare-fun e!1780878 () Bool)

(assert (=> bs!516774 (=> res!1171984 e!1780878)))

(assert (=> bs!516774 (= res!1171984 (not (= (list!12362 x!519168) (list!12362 x!519168))))))

(assert (=> bs!516774 (=> true e!1780878)))

(declare-fun b!2816196 () Bool)

(assert (=> b!2816196 (= e!1780878 (= (toValue!10 thiss!3195 x!519168) (toValue!10 thiss!3195 x!519168)))))

(assert (= (and bs!516774 (not res!1171984)) b!2816196))

(assert (=> m!3247171 m!3247163))

(assert (=> m!3247171 m!3247163))

(assert (=> m!3247171 s!229871))

(declare-fun bs!516775 () Bool)

(declare-fun s!229873 () Bool)

(assert (= bs!516775 (and neg-inst!1535 s!229873)))

(declare-fun res!1171985 () Bool)

(declare-fun e!1780879 () Bool)

(assert (=> bs!516775 (=> res!1171985 e!1780879)))

(assert (=> bs!516775 (= res!1171985 (not (= (list!12362 x!519166) (list!12362 x!519168))))))

(assert (=> bs!516775 (=> true e!1780879)))

(declare-fun b!2816197 () Bool)

(assert (=> b!2816197 (= e!1780879 (= (toValue!10 thiss!3195 x!519166) (toValue!10 thiss!3195 x!519168)))))

(assert (= (and bs!516775 (not res!1171985)) b!2816197))

(assert (=> bs!516769 m!3247151))

(assert (=> bs!516769 m!3247163))

(assert (=> bs!516769 s!229873))

(declare-fun bs!516776 () Bool)

(declare-fun s!229875 () Bool)

(assert (= bs!516776 (and neg-inst!1535 s!229875)))

(declare-fun res!1171986 () Bool)

(declare-fun e!1780880 () Bool)

(assert (=> bs!516776 (=> res!1171986 e!1780880)))

(assert (=> bs!516776 (= res!1171986 (not (= (list!12362 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166))) (list!12362 x!519168))))))

(assert (=> bs!516776 (=> true e!1780880)))

(declare-fun b!2816198 () Bool)

(assert (=> b!2816198 (= e!1780880 (= (toValue!10 thiss!3195 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166))) (toValue!10 thiss!3195 x!519168)))))

(assert (= (and bs!516776 (not res!1171986)) b!2816198))

(assert (=> bs!516771 m!3247157))

(assert (=> bs!516771 m!3247163))

(assert (=> bs!516771 s!229875))

(declare-fun bs!516777 () Bool)

(declare-fun s!229877 () Bool)

(assert (= bs!516777 (and neg-inst!1535 s!229877)))

(declare-fun res!1171987 () Bool)

(declare-fun e!1780881 () Bool)

(assert (=> bs!516777 (=> res!1171987 e!1780881)))

(assert (=> bs!516777 (= res!1171987 (not (= (list!12362 x!519167) (list!12362 x!519168))))))

(assert (=> bs!516777 (=> true e!1780881)))

(declare-fun b!2816199 () Bool)

(assert (=> b!2816199 (= e!1780881 (= (toValue!10 thiss!3195 x!519167) (toValue!10 thiss!3195 x!519168)))))

(assert (= (and bs!516777 (not res!1171987)) b!2816199))

(assert (=> bs!516773 m!3247161))

(assert (=> bs!516773 m!3247163))

(assert (=> bs!516773 s!229877))

(assert (=> m!3247171 s!229871))

(declare-fun bs!516778 () Bool)

(assert (= bs!516778 (and m!3247169 m!3247171)))

(assert (=> bs!516778 s!229877))

(declare-fun bs!516779 () Bool)

(assert (= bs!516779 (and m!3247169 m!3247153)))

(assert (=> bs!516779 s!229855))

(declare-fun bs!516780 () Bool)

(assert (= bs!516780 (and m!3247169 m!3247157)))

(assert (=> bs!516780 s!229857))

(declare-fun bs!516781 () Bool)

(assert (= bs!516781 (and m!3247169 m!3247161)))

(assert (=> bs!516781 s!229859))

(assert (=> m!3247169 s!229859))

(assert (=> bs!516780 s!229863))

(assert (=> bs!516779 s!229861))

(assert (=> bs!516778 s!229869))

(assert (=> bs!516781 s!229859))

(assert (=> m!3247169 s!229859))

(declare-fun bs!516782 () Bool)

(assert (= bs!516782 (and m!3247151 m!3247171)))

(assert (=> bs!516782 s!229873))

(assert (=> m!3247151 s!229851))

(declare-fun bs!516783 () Bool)

(assert (= bs!516783 (and m!3247151 m!3247157)))

(assert (=> bs!516783 s!229849))

(declare-fun bs!516784 () Bool)

(assert (= bs!516784 (and m!3247151 m!3247153)))

(assert (=> bs!516784 s!229851))

(declare-fun bs!516785 () Bool)

(assert (= bs!516785 (and m!3247151 m!3247161 m!3247169)))

(assert (=> bs!516785 s!229861))

(assert (=> bs!516785 s!229855))

(assert (=> m!3247151 s!229851))

(assert (=> bs!516782 s!229865))

(assert (=> bs!516783 s!229853))

(assert (=> bs!516784 s!229851))

(declare-fun bs!516786 () Bool)

(assert (= bs!516786 (and m!3247163 m!3247157)))

(assert (=> bs!516786 s!229867))

(declare-fun bs!516787 () Bool)

(assert (= bs!516787 (and m!3247163 m!3247153 m!3247151)))

(assert (=> bs!516787 s!229865))

(declare-fun bs!516788 () Bool)

(assert (= bs!516788 (and m!3247163 m!3247171)))

(assert (=> bs!516788 s!229871))

(assert (=> m!3247163 s!229871))

(declare-fun bs!516789 () Bool)

(assert (= bs!516789 (and m!3247163 m!3247161 m!3247169)))

(assert (=> bs!516789 s!229869))

(assert (=> bs!516787 s!229873))

(assert (=> bs!516786 s!229875))

(assert (=> m!3247163 s!229871))

(assert (=> bs!516788 s!229871))

(assert (=> bs!516789 s!229877))

(declare-fun bs!516790 () Bool)

(assert (= bs!516790 (and neg-inst!1535 b!2816171)))

(assert (=> bs!516790 (= true inst!1535)))

(declare-fun res!1171970 () Bool)

(declare-fun e!1780861 () Bool)

(assert (=> start!273044 (=> res!1171970 e!1780861)))

(declare-fun lambda!103270 () Int)

(declare-fun Forall!1225 (Int) Bool)

(assert (=> start!273044 (= res!1171970 (not (Forall!1225 lambda!103270)))))

(assert (=> start!273044 (= (Forall!1225 lambda!103270) inst!1534)))

(assert (=> start!273044 (not e!1780861)))

(assert (=> start!273044 true))

(declare-fun lambda!103273 () Int)

(declare-fun Forall2!822 (Int) Bool)

(assert (=> b!2816171 (= e!1780861 (Forall2!822 lambda!103273))))

(assert (=> b!2816171 (= (Forall2!822 lambda!103273) inst!1535)))

(declare-fun lambda!103271 () Int)

(declare-fun lambda!103272 () Int)

(declare-fun semiInverseModEq!2037 (Int Int) Bool)

(assert (=> b!2816171 (= (semiInverseModEq!2037 lambda!103271 lambda!103272) (Forall!1225 lambda!103270))))

(assert (= neg-inst!1534 inst!1534))

(assert (= (and start!273044 (not res!1171970)) b!2816171))

(assert (= neg-inst!1535 inst!1535))

(declare-fun m!3247177 () Bool)

(assert (=> start!273044 m!3247177))

(assert (=> start!273044 m!3247177))

(declare-fun m!3247179 () Bool)

(assert (=> b!2816171 m!3247179))

(assert (=> b!2816171 m!3247179))

(declare-fun m!3247181 () Bool)

(assert (=> b!2816171 m!3247181))

(assert (=> b!2816171 m!3247177))

(push 1)

(assert (not b!2816184))

(assert (not b!2816199))

(assert (not b!2816186))

(assert (not b!2816185))

(assert (not b!2816192))

(assert (not bs!516765))

(assert (not b!2816194))

(assert (not bs!516756))

(assert (not b!2816189))

(assert (not bs!516772))

(assert (not bs!516763))

(assert (not bs!516760))

(assert (not bs!516770))

(assert (not b!2816188))

(assert (not b!2816171))

(assert (not bs!516766))

(assert (not bs!516767))

(assert (not b!2816195))

(assert (not b!2816197))

(assert (not b!2816181))

(assert (not b!2816190))

(assert (not bs!516754))

(assert (not bs!516775))

(assert (not bs!516777))

(assert (not bs!516776))

(assert (not bs!516757))

(assert (not b!2816191))

(assert (not b!2816187))

(assert (not bs!516759))

(assert (not b!2816182))

(assert (not b!2816198))

(assert (not b!2816180))

(assert (not b!2816193))

(assert (not bs!516768))

(assert (not bs!516761))

(assert (not b!2816183))

(assert (not bs!516774))

(assert (not start!273044))

(assert (not b!2816196))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!817928 () Bool)

(declare-fun efficientList!408 (BalanceConc!20068) List!33052)

(assert (=> d!817928 (= (toValue!10 thiss!3195 x!519166) (StringLiteralValue!15427 (efficientList!408 x!519166)))))

(declare-fun bs!516827 () Bool)

(assert (= bs!516827 d!817928))

(declare-fun m!3247217 () Bool)

(assert (=> bs!516827 m!3247217))

(assert (=> b!2816191 d!817928))

(declare-fun d!817930 () Bool)

(assert (=> d!817930 (= (toValue!10 thiss!3195 x!519167) (StringLiteralValue!15427 (efficientList!408 x!519167)))))

(declare-fun bs!516828 () Bool)

(assert (= bs!516828 d!817930))

(declare-fun m!3247219 () Bool)

(assert (=> bs!516828 m!3247219))

(assert (=> b!2816191 d!817930))

(declare-fun d!817932 () Bool)

(declare-fun list!12364 (Conc!10215) List!33052)

(assert (=> d!817932 (= (list!12362 x!519166) (list!12364 (c!456615 x!519166)))))

(declare-fun bs!516829 () Bool)

(assert (= bs!516829 d!817932))

(declare-fun m!3247221 () Bool)

(assert (=> bs!516829 m!3247221))

(assert (=> bs!516757 d!817932))

(declare-fun d!817934 () Bool)

(assert (=> d!817934 (= (list!12362 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166))) (list!12364 (c!456615 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166)))))))

(declare-fun bs!516830 () Bool)

(assert (= bs!516830 d!817934))

(declare-fun m!3247223 () Bool)

(assert (=> bs!516830 m!3247223))

(assert (=> bs!516757 d!817934))

(declare-fun d!817936 () Bool)

(assert (=> d!817936 (= (list!12362 x!519168) (list!12364 (c!456615 x!519168)))))

(declare-fun bs!516831 () Bool)

(assert (= bs!516831 d!817936))

(declare-fun m!3247225 () Bool)

(assert (=> bs!516831 m!3247225))

(assert (=> bs!516772 d!817936))

(declare-fun d!817938 () Bool)

(assert (=> d!817938 (= (list!12362 x!519167) (list!12364 (c!456615 x!519167)))))

(declare-fun bs!516832 () Bool)

(assert (= bs!516832 d!817938))

(declare-fun m!3247227 () Bool)

(assert (=> bs!516832 m!3247227))

(assert (=> bs!516772 d!817938))

(assert (=> b!2816188 d!817930))

(assert (=> b!2816188 d!817928))

(declare-fun d!817940 () Bool)

(assert (=> d!817940 (= (toValue!10 thiss!3195 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166))) (StringLiteralValue!15427 (efficientList!408 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166)))))))

(declare-fun bs!516833 () Bool)

(assert (= bs!516833 d!817940))

(assert (=> bs!516833 m!3247155))

(declare-fun m!3247229 () Bool)

(assert (=> bs!516833 m!3247229))

(assert (=> b!2816198 d!817940))

(declare-fun d!817942 () Bool)

(assert (=> d!817942 (= (toValue!10 thiss!3195 x!519168) (StringLiteralValue!15427 (efficientList!408 x!519168)))))

(declare-fun bs!516834 () Bool)

(assert (= bs!516834 d!817942))

(declare-fun m!3247231 () Bool)

(assert (=> bs!516834 m!3247231))

(assert (=> b!2816198 d!817942))

(assert (=> bs!516767 d!817934))

(assert (=> bs!516767 d!817938))

(assert (=> b!2816185 d!817928))

(assert (=> b!2816185 d!817940))

(assert (=> b!2816195 d!817942))

(assert (=> b!2816195 d!817930))

(assert (=> bs!516756 d!817934))

(assert (=> bs!516770 d!817936))

(assert (=> bs!516770 d!817934))

(assert (=> b!2816187 d!817940))

(assert (=> b!2816187 d!817928))

(assert (=> b!2816197 d!817928))

(assert (=> b!2816197 d!817942))

(assert (=> bs!516766 d!817932))

(assert (=> bs!516766 d!817938))

(assert (=> b!2816194 d!817942))

(assert (=> b!2816194 d!817940))

(assert (=> b!2816184 d!817940))

(assert (=> bs!516761 d!817938))

(assert (=> bs!516761 d!817932))

(assert (=> bs!516776 d!817934))

(assert (=> bs!516776 d!817936))

(assert (=> b!2816186 d!817928))

(assert (=> b!2816196 d!817942))

(assert (=> bs!516765 d!817938))

(assert (=> b!2816193 d!817942))

(assert (=> b!2816193 d!817928))

(assert (=> bs!516760 d!817934))

(assert (=> bs!516760 d!817932))

(assert (=> bs!516775 d!817932))

(assert (=> bs!516775 d!817936))

(assert (=> b!2816190 d!817930))

(assert (=> bs!516763 d!817938))

(assert (=> bs!516763 d!817934))

(assert (=> bs!516777 d!817938))

(assert (=> bs!516777 d!817936))

(assert (=> b!2816192 d!817940))

(assert (=> b!2816192 d!817930))

(assert (=> bs!516759 d!817932))

(assert (=> b!2816189 d!817930))

(assert (=> b!2816189 d!817940))

(assert (=> b!2816199 d!817930))

(assert (=> b!2816199 d!817942))

(assert (=> bs!516768 d!817936))

(assert (=> bs!516768 d!817932))

(assert (=> bs!516774 d!817936))

(declare-fun bs!516835 () Bool)

(assert (= bs!516835 (and m!3247157 b!2816184)))

(declare-fun m!3247233 () Bool)

(assert (=> bs!516835 m!3247233))

(assert (=> bs!516835 m!3247233))

(declare-fun bs!516836 () Bool)

(assert (= bs!516836 (and m!3247153 m!3247157 b!2816185)))

(assert (=> bs!516836 m!3247153))

(assert (=> bs!516836 m!3247233))

(declare-fun bs!516837 () Bool)

(assert (= bs!516837 (and m!3247153 b!2816186)))

(assert (=> bs!516837 m!3247153))

(assert (=> bs!516837 m!3247153))

(declare-fun bs!516838 () Bool)

(assert (= bs!516838 (and m!3247153 m!3247157 b!2816187)))

(assert (=> bs!516838 m!3247233))

(assert (=> bs!516838 m!3247153))

(declare-fun bs!516839 () Bool)

(assert (= bs!516839 (and m!3247161 m!3247153 b!2816188)))

(assert (=> bs!516839 m!3247169))

(assert (=> bs!516839 m!3247153))

(declare-fun bs!516840 () Bool)

(assert (= bs!516840 (and m!3247161 m!3247157 b!2816189)))

(assert (=> bs!516840 m!3247169))

(assert (=> bs!516840 m!3247233))

(declare-fun bs!516841 () Bool)

(assert (= bs!516841 (and m!3247161 b!2816190)))

(assert (=> bs!516841 m!3247169))

(assert (=> bs!516841 m!3247169))

(declare-fun bs!516842 () Bool)

(assert (= bs!516842 (and m!3247161 m!3247153 b!2816191)))

(assert (=> bs!516842 m!3247153))

(assert (=> bs!516842 m!3247169))

(declare-fun bs!516843 () Bool)

(assert (= bs!516843 (and m!3247161 m!3247157 b!2816192)))

(assert (=> bs!516843 m!3247233))

(assert (=> bs!516843 m!3247169))

(declare-fun bs!516844 () Bool)

(assert (= bs!516844 (and m!3247171 m!3247153 b!2816193)))

(assert (=> bs!516844 m!3247171))

(assert (=> bs!516844 m!3247153))

(declare-fun bs!516845 () Bool)

(assert (= bs!516845 (and m!3247171 m!3247157 b!2816194)))

(assert (=> bs!516845 m!3247171))

(assert (=> bs!516845 m!3247233))

(declare-fun bs!516846 () Bool)

(assert (= bs!516846 (and m!3247171 m!3247161 b!2816195)))

(assert (=> bs!516846 m!3247171))

(assert (=> bs!516846 m!3247169))

(declare-fun bs!516847 () Bool)

(assert (= bs!516847 (and m!3247171 b!2816196)))

(assert (=> bs!516847 m!3247171))

(assert (=> bs!516847 m!3247171))

(declare-fun bs!516848 () Bool)

(assert (= bs!516848 (and m!3247171 m!3247153 b!2816197)))

(assert (=> bs!516848 m!3247153))

(assert (=> bs!516848 m!3247171))

(declare-fun bs!516849 () Bool)

(assert (= bs!516849 (and m!3247171 m!3247157 b!2816198)))

(assert (=> bs!516849 m!3247233))

(assert (=> bs!516849 m!3247171))

(declare-fun bs!516850 () Bool)

(assert (= bs!516850 (and m!3247171 m!3247161 b!2816199)))

(assert (=> bs!516850 m!3247169))

(assert (=> bs!516850 m!3247171))

(push 1)

(assert (not d!817928))

(assert (not d!817932))

(assert (not b!2816171))

(assert (not d!817936))

(assert (not b!2816181))

(assert (not bs!516754))

(assert (not d!817934))

(assert (not d!817940))

(assert (not d!817938))

(assert (not b!2816182))

(assert (not b!2816180))

(assert (not b!2816183))

(assert (not start!273044))

(assert (not d!817942))

(assert (not d!817930))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2816256 () Bool)

(declare-fun e!1780924 () List!33052)

(declare-fun ++!8088 (List!33052 List!33052) List!33052)

(assert (=> b!2816256 (= e!1780924 (++!8088 (list!12364 (left!24868 (c!456615 x!519167))) (list!12364 (right!25198 (c!456615 x!519167)))))))

(declare-fun d!817960 () Bool)

(declare-fun c!456621 () Bool)

(assert (=> d!817960 (= c!456621 (is-Empty!10215 (c!456615 x!519167)))))

(declare-fun e!1780923 () List!33052)

(assert (=> d!817960 (= (list!12364 (c!456615 x!519167)) e!1780923)))

(declare-fun b!2816254 () Bool)

(assert (=> b!2816254 (= e!1780923 e!1780924)))

(declare-fun c!456622 () Bool)

(assert (=> b!2816254 (= c!456622 (is-Leaf!15563 (c!456615 x!519167)))))

(declare-fun b!2816255 () Bool)

(declare-fun list!12366 (IArray!20435) List!33052)

(assert (=> b!2816255 (= e!1780924 (list!12366 (xs!13327 (c!456615 x!519167))))))

(declare-fun b!2816253 () Bool)

(assert (=> b!2816253 (= e!1780923 Nil!32928)))

(assert (= (and d!817960 c!456621) b!2816253))

(assert (= (and d!817960 (not c!456621)) b!2816254))

(assert (= (and b!2816254 c!456622) b!2816255))

(assert (= (and b!2816254 (not c!456622)) b!2816256))

(declare-fun m!3247253 () Bool)

(assert (=> b!2816256 m!3247253))

(declare-fun m!3247255 () Bool)

(assert (=> b!2816256 m!3247255))

(assert (=> b!2816256 m!3247253))

(assert (=> b!2816256 m!3247255))

(declare-fun m!3247257 () Bool)

(assert (=> b!2816256 m!3247257))

(declare-fun m!3247259 () Bool)

(assert (=> b!2816255 m!3247259))

(assert (=> d!817938 d!817960))

(declare-fun d!817962 () Bool)

(declare-fun lt!1005914 () List!33052)

(assert (=> d!817962 (= lt!1005914 (list!12362 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166))))))

(declare-fun efficientList!410 (Conc!10215 List!33052) List!33052)

(declare-fun efficientList$default$2!143 (Conc!10215) List!33052)

(assert (=> d!817962 (= lt!1005914 (efficientList!410 (c!456615 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166))) (efficientList$default$2!143 (c!456615 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166))))))))

(assert (=> d!817962 (= (efficientList!408 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166))) lt!1005914)))

(declare-fun bs!516875 () Bool)

(assert (= bs!516875 d!817962))

(assert (=> bs!516875 m!3247155))

(assert (=> bs!516875 m!3247157))

(declare-fun m!3247261 () Bool)

(assert (=> bs!516875 m!3247261))

(assert (=> bs!516875 m!3247261))

(declare-fun m!3247263 () Bool)

(assert (=> bs!516875 m!3247263))

(assert (=> d!817940 d!817962))

(declare-fun d!817964 () Bool)

(declare-fun lt!1005915 () List!33052)

(assert (=> d!817964 (= lt!1005915 (list!12362 x!519166))))

(assert (=> d!817964 (= lt!1005915 (efficientList!410 (c!456615 x!519166) (efficientList$default$2!143 (c!456615 x!519166))))))

(assert (=> d!817964 (= (efficientList!408 x!519166) lt!1005915)))

(declare-fun bs!516876 () Bool)

(assert (= bs!516876 d!817964))

(assert (=> bs!516876 m!3247151))

(declare-fun m!3247265 () Bool)

(assert (=> bs!516876 m!3247265))

(assert (=> bs!516876 m!3247265))

(declare-fun m!3247267 () Bool)

(assert (=> bs!516876 m!3247267))

(assert (=> d!817928 d!817964))

(declare-fun b!2816260 () Bool)

(declare-fun e!1780926 () List!33052)

(assert (=> b!2816260 (= e!1780926 (++!8088 (list!12364 (left!24868 (c!456615 x!519168))) (list!12364 (right!25198 (c!456615 x!519168)))))))

(declare-fun d!817966 () Bool)

(declare-fun c!456623 () Bool)

(assert (=> d!817966 (= c!456623 (is-Empty!10215 (c!456615 x!519168)))))

(declare-fun e!1780925 () List!33052)

(assert (=> d!817966 (= (list!12364 (c!456615 x!519168)) e!1780925)))

(declare-fun b!2816258 () Bool)

(assert (=> b!2816258 (= e!1780925 e!1780926)))

(declare-fun c!456624 () Bool)

(assert (=> b!2816258 (= c!456624 (is-Leaf!15563 (c!456615 x!519168)))))

(declare-fun b!2816259 () Bool)

(assert (=> b!2816259 (= e!1780926 (list!12366 (xs!13327 (c!456615 x!519168))))))

(declare-fun b!2816257 () Bool)

(assert (=> b!2816257 (= e!1780925 Nil!32928)))

(assert (= (and d!817966 c!456623) b!2816257))

(assert (= (and d!817966 (not c!456623)) b!2816258))

(assert (= (and b!2816258 c!456624) b!2816259))

(assert (= (and b!2816258 (not c!456624)) b!2816260))

(declare-fun m!3247269 () Bool)

(assert (=> b!2816260 m!3247269))

(declare-fun m!3247271 () Bool)

(assert (=> b!2816260 m!3247271))

(assert (=> b!2816260 m!3247269))

(assert (=> b!2816260 m!3247271))

(declare-fun m!3247273 () Bool)

(assert (=> b!2816260 m!3247273))

(declare-fun m!3247275 () Bool)

(assert (=> b!2816259 m!3247275))

(assert (=> d!817936 d!817966))

(declare-fun b!2816264 () Bool)

(declare-fun e!1780928 () List!33052)

(assert (=> b!2816264 (= e!1780928 (++!8088 (list!12364 (left!24868 (c!456615 x!519166))) (list!12364 (right!25198 (c!456615 x!519166)))))))

(declare-fun d!817968 () Bool)

(declare-fun c!456625 () Bool)

(assert (=> d!817968 (= c!456625 (is-Empty!10215 (c!456615 x!519166)))))

(declare-fun e!1780927 () List!33052)

(assert (=> d!817968 (= (list!12364 (c!456615 x!519166)) e!1780927)))

(declare-fun b!2816262 () Bool)

(assert (=> b!2816262 (= e!1780927 e!1780928)))

(declare-fun c!456626 () Bool)

(assert (=> b!2816262 (= c!456626 (is-Leaf!15563 (c!456615 x!519166)))))

(declare-fun b!2816263 () Bool)

(assert (=> b!2816263 (= e!1780928 (list!12366 (xs!13327 (c!456615 x!519166))))))

(declare-fun b!2816261 () Bool)

(assert (=> b!2816261 (= e!1780927 Nil!32928)))

(assert (= (and d!817968 c!456625) b!2816261))

(assert (= (and d!817968 (not c!456625)) b!2816262))

(assert (= (and b!2816262 c!456626) b!2816263))

(assert (= (and b!2816262 (not c!456626)) b!2816264))

(declare-fun m!3247277 () Bool)

(assert (=> b!2816264 m!3247277))

(declare-fun m!3247279 () Bool)

(assert (=> b!2816264 m!3247279))

(assert (=> b!2816264 m!3247277))

(assert (=> b!2816264 m!3247279))

(declare-fun m!3247281 () Bool)

(assert (=> b!2816264 m!3247281))

(declare-fun m!3247283 () Bool)

(assert (=> b!2816263 m!3247283))

(assert (=> d!817932 d!817968))

(declare-fun d!817970 () Bool)

(declare-fun lt!1005916 () List!33052)

(assert (=> d!817970 (= lt!1005916 (list!12362 x!519167))))

(assert (=> d!817970 (= lt!1005916 (efficientList!410 (c!456615 x!519167) (efficientList$default$2!143 (c!456615 x!519167))))))

(assert (=> d!817970 (= (efficientList!408 x!519167) lt!1005916)))

(declare-fun bs!516877 () Bool)

(assert (= bs!516877 d!817970))

(assert (=> bs!516877 m!3247161))

(declare-fun m!3247285 () Bool)

(assert (=> bs!516877 m!3247285))

(assert (=> bs!516877 m!3247285))

(declare-fun m!3247287 () Bool)

(assert (=> bs!516877 m!3247287))

(assert (=> d!817930 d!817970))

(declare-fun b!2816268 () Bool)

(declare-fun e!1780930 () List!33052)

(assert (=> b!2816268 (= e!1780930 (++!8088 (list!12364 (left!24868 (c!456615 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166))))) (list!12364 (right!25198 (c!456615 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166)))))))))

(declare-fun d!817972 () Bool)

(declare-fun c!456627 () Bool)

(assert (=> d!817972 (= c!456627 (is-Empty!10215 (c!456615 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166)))))))

(declare-fun e!1780929 () List!33052)

(assert (=> d!817972 (= (list!12364 (c!456615 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166)))) e!1780929)))

(declare-fun b!2816266 () Bool)

(assert (=> b!2816266 (= e!1780929 e!1780930)))

(declare-fun c!456628 () Bool)

(assert (=> b!2816266 (= c!456628 (is-Leaf!15563 (c!456615 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166)))))))

(declare-fun b!2816267 () Bool)

(assert (=> b!2816267 (= e!1780930 (list!12366 (xs!13327 (c!456615 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166))))))))

(declare-fun b!2816265 () Bool)

(assert (=> b!2816265 (= e!1780929 Nil!32928)))

(assert (= (and d!817972 c!456627) b!2816265))

(assert (= (and d!817972 (not c!456627)) b!2816266))

(assert (= (and b!2816266 c!456628) b!2816267))

(assert (= (and b!2816266 (not c!456628)) b!2816268))

(declare-fun m!3247289 () Bool)

(assert (=> b!2816268 m!3247289))

(declare-fun m!3247291 () Bool)

(assert (=> b!2816268 m!3247291))

(assert (=> b!2816268 m!3247289))

(assert (=> b!2816268 m!3247291))

(declare-fun m!3247293 () Bool)

(assert (=> b!2816268 m!3247293))

(declare-fun m!3247295 () Bool)

(assert (=> b!2816267 m!3247295))

(assert (=> d!817934 d!817972))

(declare-fun d!817974 () Bool)

(declare-fun lt!1005917 () List!33052)

(assert (=> d!817974 (= lt!1005917 (list!12362 x!519168))))

(assert (=> d!817974 (= lt!1005917 (efficientList!410 (c!456615 x!519168) (efficientList$default$2!143 (c!456615 x!519168))))))

(assert (=> d!817974 (= (efficientList!408 x!519168) lt!1005917)))

(declare-fun bs!516878 () Bool)

(assert (= bs!516878 d!817974))

(assert (=> bs!516878 m!3247163))

(declare-fun m!3247297 () Bool)

(assert (=> bs!516878 m!3247297))

(assert (=> bs!516878 m!3247297))

(declare-fun m!3247299 () Bool)

(assert (=> bs!516878 m!3247299))

(assert (=> d!817942 d!817974))

(push 1)

(assert (not b!2816267))

(assert (not b!2816260))

(assert (not b!2816264))

(assert (not b!2816181))

(assert (not bs!516754))

(assert (not b!2816268))

(assert (not b!2816256))

(assert (not d!817970))

(assert (not b!2816180))

(assert (not d!817964))

(assert (not start!273044))

(assert (not b!2816259))

(assert (not b!2816255))

(assert (not b!2816171))

(assert (not d!817962))

(assert (not b!2816182))

(assert (not b!2816263))

(assert (not d!817974))

(assert (not b!2816183))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> b!2816171 d!817936))

(declare-fun d!817978 () Bool)

(declare-fun isBalanced!3103 (Conc!10215) Bool)

(assert (=> d!817978 (= (inv!44821 x!519168) (isBalanced!3103 (c!456615 x!519168)))))

(declare-fun bs!516879 () Bool)

(assert (= bs!516879 d!817978))

(declare-fun m!3247301 () Bool)

(assert (=> bs!516879 m!3247301))

(assert (=> b!2816171 d!817978))

(declare-fun d!817980 () Bool)

(declare-fun choose!16658 (Int) Bool)

(assert (=> d!817980 (= (Forall2!822 lambda!103273) (choose!16658 lambda!103273))))

(declare-fun bs!516880 () Bool)

(assert (= bs!516880 d!817980))

(declare-fun m!3247303 () Bool)

(assert (=> bs!516880 m!3247303))

(assert (=> b!2816171 d!817980))

(declare-fun d!817982 () Bool)

(declare-fun choose!16659 (Int) Bool)

(assert (=> d!817982 (= (Forall!1225 lambda!103270) (choose!16659 lambda!103270))))

(declare-fun bs!516881 () Bool)

(assert (= bs!516881 d!817982))

(declare-fun m!3247305 () Bool)

(assert (=> bs!516881 m!3247305))

(assert (=> b!2816171 d!817982))

(declare-fun bs!516883 () Bool)

(declare-fun d!817984 () Bool)

(assert (= bs!516883 (and d!817984 start!273044)))

(declare-fun lambda!103294 () Int)

(assert (=> bs!516883 (not (= lambda!103294 lambda!103270))))

(assert (=> d!817984 true))

(declare-fun order!17407 () Int)

(declare-fun order!17405 () Int)

(declare-fun dynLambda!13740 (Int Int) Int)

(declare-fun dynLambda!13741 (Int Int) Int)

(assert (=> d!817984 (< (dynLambda!13740 order!17405 lambda!103271) (dynLambda!13741 order!17407 lambda!103294))))

(assert (=> d!817984 true))

(declare-fun order!17409 () Int)

(declare-fun dynLambda!13742 (Int Int) Int)

(assert (=> d!817984 (< (dynLambda!13742 order!17409 lambda!103272) (dynLambda!13741 order!17407 lambda!103294))))

(assert (=> d!817984 (= (semiInverseModEq!2037 lambda!103271 lambda!103272) (Forall!1225 lambda!103294))))

(declare-fun bs!516884 () Bool)

(assert (= bs!516884 d!817984))

(declare-fun m!3247311 () Bool)

(assert (=> bs!516884 m!3247311))

(assert (=> b!2816171 d!817984))

(assert (=> b!2816171 d!817938))

(declare-fun d!817988 () Bool)

(assert (=> d!817988 (= (inv!44821 x!519167) (isBalanced!3103 (c!456615 x!519167)))))

(declare-fun bs!516885 () Bool)

(assert (= bs!516885 d!817988))

(declare-fun m!3247313 () Bool)

(assert (=> bs!516885 m!3247313))

(assert (=> b!2816171 d!817988))

(declare-fun d!817990 () Bool)

(assert (=> d!817990 (= (inv!44821 x!519166) (isBalanced!3103 (c!456615 x!519166)))))

(declare-fun bs!516886 () Bool)

(assert (= bs!516886 d!817990))

(declare-fun m!3247315 () Bool)

(assert (=> bs!516886 m!3247315))

(assert (=> start!273044 d!817990))

(assert (=> start!273044 d!817934))

(assert (=> start!273044 d!817932))

(assert (=> start!273044 d!817982))

(assert (=> start!273044 d!817928))

(declare-fun d!817992 () Bool)

(declare-fun c!456632 () Bool)

(assert (=> d!817992 (= c!456632 (is-StringLiteralValue!15427 (toValue!10 thiss!3195 x!519166)))))

(declare-fun e!1780933 () BalanceConc!20068)

(assert (=> d!817992 (= (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166)) e!1780933)))

(declare-fun b!2816277 () Bool)

(declare-fun seqFromList!3230 (List!33052) BalanceConc!20068)

(assert (=> b!2816277 (= e!1780933 (seqFromList!3230 (text!36444 (toValue!10 thiss!3195 x!519166))))))

(declare-fun b!2816278 () Bool)

(assert (=> b!2816278 (= e!1780933 (BalanceConc!20069 Empty!10215))))

(assert (= (and d!817992 c!456632) b!2816277))

(assert (= (and d!817992 (not c!456632)) b!2816278))

(declare-fun m!3247317 () Bool)

(assert (=> b!2816277 m!3247317))

(assert (=> start!273044 d!817992))

(declare-fun d!817994 () Bool)

(declare-fun c!456639 () Bool)

(assert (=> d!817994 (= c!456639 (is-Node!10215 (c!456615 x!519166)))))

(declare-fun e!1780942 () Bool)

(assert (=> d!817994 (= (inv!44820 (c!456615 x!519166)) e!1780942)))

(declare-fun b!2816293 () Bool)

(declare-fun inv!44824 (Conc!10215) Bool)

(assert (=> b!2816293 (= e!1780942 (inv!44824 (c!456615 x!519166)))))

(declare-fun b!2816294 () Bool)

(declare-fun e!1780943 () Bool)

(assert (=> b!2816294 (= e!1780942 e!1780943)))

(declare-fun res!1172028 () Bool)

(assert (=> b!2816294 (= res!1172028 (not (is-Leaf!15563 (c!456615 x!519166))))))

(assert (=> b!2816294 (=> res!1172028 e!1780943)))

(declare-fun b!2816295 () Bool)

(declare-fun inv!44825 (Conc!10215) Bool)

(assert (=> b!2816295 (= e!1780943 (inv!44825 (c!456615 x!519166)))))

(assert (= (and d!817994 c!456639) b!2816293))

(assert (= (and d!817994 (not c!456639)) b!2816294))

(assert (= (and b!2816294 (not res!1172028)) b!2816295))

(declare-fun m!3247319 () Bool)

(assert (=> b!2816293 m!3247319))

(declare-fun m!3247321 () Bool)

(assert (=> b!2816295 m!3247321))

(assert (=> b!2816180 d!817994))

(assert (=> b!2816181 d!817930))

(assert (=> b!2816181 d!817942))

(assert (=> d!817974 d!817936))

(declare-fun b!2816324 () Bool)

(declare-fun e!1780959 () List!33052)

(declare-fun call!183237 () List!33052)

(assert (=> b!2816324 (= e!1780959 call!183237)))

(declare-fun b!2816325 () Bool)

(declare-datatypes ((Unit!46916 0))(
  ( (Unit!46917) )
))
(declare-fun lt!1005937 () Unit!46916)

(declare-fun lt!1005938 () Unit!46916)

(assert (=> b!2816325 (= lt!1005937 lt!1005938)))

(declare-fun lt!1005934 () List!33052)

(declare-fun lt!1005935 () List!33052)

(assert (=> b!2816325 (= (++!8088 (++!8088 lt!1005934 lt!1005935) (efficientList$default$2!143 (c!456615 x!519168))) (++!8088 lt!1005934 call!183237))))

(declare-fun lemmaConcatAssociativity!1682 (List!33052 List!33052 List!33052) Unit!46916)

(assert (=> b!2816325 (= lt!1005938 (lemmaConcatAssociativity!1682 lt!1005934 lt!1005935 (efficientList$default$2!143 (c!456615 x!519168))))))

(assert (=> b!2816325 (= lt!1005935 (list!12364 (right!25198 (c!456615 x!519168))))))

(assert (=> b!2816325 (= lt!1005934 (list!12364 (left!24868 (c!456615 x!519168))))))

(assert (=> b!2816325 (= e!1780959 (efficientList!410 (left!24868 (c!456615 x!519168)) (efficientList!410 (right!25198 (c!456615 x!519168)) (efficientList$default$2!143 (c!456615 x!519168)))))))

(declare-fun d!817996 () Bool)

(declare-fun lt!1005936 () List!33052)

(assert (=> d!817996 (= lt!1005936 (++!8088 (list!12364 (c!456615 x!519168)) (efficientList$default$2!143 (c!456615 x!519168))))))

(declare-fun e!1780958 () List!33052)

(assert (=> d!817996 (= lt!1005936 e!1780958)))

(declare-fun c!456655 () Bool)

(assert (=> d!817996 (= c!456655 (is-Empty!10215 (c!456615 x!519168)))))

(assert (=> d!817996 (= (efficientList!410 (c!456615 x!519168) (efficientList$default$2!143 (c!456615 x!519168))) lt!1005936)))

(declare-fun b!2816326 () Bool)

(declare-fun e!1780960 () List!33052)

(declare-fun efficientList!412 (IArray!20435) List!33052)

(assert (=> b!2816326 (= e!1780960 (efficientList!412 (xs!13327 (c!456615 x!519168))))))

(declare-fun b!2816327 () Bool)

(assert (=> b!2816327 (= e!1780958 (efficientList$default$2!143 (c!456615 x!519168)))))

(declare-fun b!2816328 () Bool)

(assert (=> b!2816328 (= e!1780960 lt!1005935)))

(declare-fun bm!183232 () Bool)

(declare-fun c!456656 () Bool)

(declare-fun c!456654 () Bool)

(assert (=> bm!183232 (= c!456656 c!456654)))

(assert (=> bm!183232 (= call!183237 (++!8088 e!1780960 (efficientList$default$2!143 (c!456615 x!519168))))))

(declare-fun b!2816329 () Bool)

(assert (=> b!2816329 (= e!1780958 e!1780959)))

(assert (=> b!2816329 (= c!456654 (is-Leaf!15563 (c!456615 x!519168)))))

(assert (= (and d!817996 c!456655) b!2816327))

(assert (= (and d!817996 (not c!456655)) b!2816329))

(assert (= (and b!2816329 c!456654) b!2816324))

(assert (= (and b!2816329 (not c!456654)) b!2816325))

(assert (= (or b!2816324 b!2816325) bm!183232))

(assert (= (and bm!183232 c!456656) b!2816326))

(assert (= (and bm!183232 (not c!456656)) b!2816328))

(declare-fun m!3247367 () Bool)

(assert (=> b!2816325 m!3247367))

(declare-fun m!3247369 () Bool)

(assert (=> b!2816325 m!3247369))

(assert (=> b!2816325 m!3247297))

(declare-fun m!3247371 () Bool)

(assert (=> b!2816325 m!3247371))

(assert (=> b!2816325 m!3247271))

(assert (=> b!2816325 m!3247297))

(assert (=> b!2816325 m!3247367))

(assert (=> b!2816325 m!3247269))

(declare-fun m!3247373 () Bool)

(assert (=> b!2816325 m!3247373))

(assert (=> b!2816325 m!3247297))

(declare-fun m!3247375 () Bool)

(assert (=> b!2816325 m!3247375))

(declare-fun m!3247377 () Bool)

(assert (=> b!2816325 m!3247377))

(assert (=> b!2816325 m!3247373))

(assert (=> d!817996 m!3247225))

(assert (=> d!817996 m!3247225))

(assert (=> d!817996 m!3247297))

(declare-fun m!3247379 () Bool)

(assert (=> d!817996 m!3247379))

(declare-fun m!3247381 () Bool)

(assert (=> b!2816326 m!3247381))

(assert (=> bm!183232 m!3247297))

(declare-fun m!3247383 () Bool)

(assert (=> bm!183232 m!3247383))

(assert (=> d!817974 d!817996))

(declare-fun d!818010 () Bool)

(assert (=> d!818010 (= (efficientList$default$2!143 (c!456615 x!519168)) Nil!32928)))

(assert (=> d!817974 d!818010))

(assert (=> bs!516754 d!817934))

(assert (=> bs!516754 d!817992))

(assert (=> bs!516754 d!817928))

(assert (=> bs!516754 d!817932))

(assert (=> d!817962 d!817934))

(declare-fun b!2816330 () Bool)

(declare-fun e!1780962 () List!33052)

(declare-fun call!183238 () List!33052)

(assert (=> b!2816330 (= e!1780962 call!183238)))

(declare-fun b!2816331 () Bool)

(declare-fun lt!1005942 () Unit!46916)

(declare-fun lt!1005943 () Unit!46916)

(assert (=> b!2816331 (= lt!1005942 lt!1005943)))

(declare-fun lt!1005939 () List!33052)

(declare-fun lt!1005940 () List!33052)

(assert (=> b!2816331 (= (++!8088 (++!8088 lt!1005939 lt!1005940) (efficientList$default$2!143 (c!456615 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166))))) (++!8088 lt!1005939 call!183238))))

(assert (=> b!2816331 (= lt!1005943 (lemmaConcatAssociativity!1682 lt!1005939 lt!1005940 (efficientList$default$2!143 (c!456615 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166))))))))

(assert (=> b!2816331 (= lt!1005940 (list!12364 (right!25198 (c!456615 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166))))))))

(assert (=> b!2816331 (= lt!1005939 (list!12364 (left!24868 (c!456615 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166))))))))

(assert (=> b!2816331 (= e!1780962 (efficientList!410 (left!24868 (c!456615 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166)))) (efficientList!410 (right!25198 (c!456615 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166)))) (efficientList$default$2!143 (c!456615 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166)))))))))

(declare-fun d!818012 () Bool)

(declare-fun lt!1005941 () List!33052)

(assert (=> d!818012 (= lt!1005941 (++!8088 (list!12364 (c!456615 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166)))) (efficientList$default$2!143 (c!456615 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166))))))))

(declare-fun e!1780961 () List!33052)

(assert (=> d!818012 (= lt!1005941 e!1780961)))

(declare-fun c!456658 () Bool)

(assert (=> d!818012 (= c!456658 (is-Empty!10215 (c!456615 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166)))))))

(assert (=> d!818012 (= (efficientList!410 (c!456615 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166))) (efficientList$default$2!143 (c!456615 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166))))) lt!1005941)))

(declare-fun b!2816332 () Bool)

(declare-fun e!1780963 () List!33052)

(assert (=> b!2816332 (= e!1780963 (efficientList!412 (xs!13327 (c!456615 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166))))))))

(declare-fun b!2816333 () Bool)

(assert (=> b!2816333 (= e!1780961 (efficientList$default$2!143 (c!456615 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166)))))))

(declare-fun b!2816334 () Bool)

(assert (=> b!2816334 (= e!1780963 lt!1005940)))

(declare-fun bm!183233 () Bool)

(declare-fun c!456659 () Bool)

(declare-fun c!456657 () Bool)

(assert (=> bm!183233 (= c!456659 c!456657)))

(assert (=> bm!183233 (= call!183238 (++!8088 e!1780963 (efficientList$default$2!143 (c!456615 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166))))))))

(declare-fun b!2816335 () Bool)

(assert (=> b!2816335 (= e!1780961 e!1780962)))

(assert (=> b!2816335 (= c!456657 (is-Leaf!15563 (c!456615 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166)))))))

(assert (= (and d!818012 c!456658) b!2816333))

(assert (= (and d!818012 (not c!456658)) b!2816335))

(assert (= (and b!2816335 c!456657) b!2816330))

(assert (= (and b!2816335 (not c!456657)) b!2816331))

(assert (= (or b!2816330 b!2816331) bm!183233))

(assert (= (and bm!183233 c!456659) b!2816332))

(assert (= (and bm!183233 (not c!456659)) b!2816334))

(declare-fun m!3247385 () Bool)

(assert (=> b!2816331 m!3247385))

(declare-fun m!3247387 () Bool)

(assert (=> b!2816331 m!3247387))

(assert (=> b!2816331 m!3247261))

(declare-fun m!3247389 () Bool)

(assert (=> b!2816331 m!3247389))

(assert (=> b!2816331 m!3247291))

(assert (=> b!2816331 m!3247261))

(assert (=> b!2816331 m!3247385))

(assert (=> b!2816331 m!3247289))

(declare-fun m!3247391 () Bool)

(assert (=> b!2816331 m!3247391))

(assert (=> b!2816331 m!3247261))

(declare-fun m!3247393 () Bool)

(assert (=> b!2816331 m!3247393))

(declare-fun m!3247395 () Bool)

(assert (=> b!2816331 m!3247395))

(assert (=> b!2816331 m!3247391))

(assert (=> d!818012 m!3247223))

(assert (=> d!818012 m!3247223))

(assert (=> d!818012 m!3247261))

(declare-fun m!3247397 () Bool)

(assert (=> d!818012 m!3247397))

(declare-fun m!3247399 () Bool)

(assert (=> b!2816332 m!3247399))

(assert (=> bm!183233 m!3247261))

(declare-fun m!3247401 () Bool)

(assert (=> bm!183233 m!3247401))

(assert (=> d!817962 d!818012))

(declare-fun d!818014 () Bool)

(assert (=> d!818014 (= (efficientList$default$2!143 (c!456615 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519166)))) Nil!32928)))

(assert (=> d!817962 d!818014))

(declare-fun d!818016 () Bool)

(declare-fun c!456660 () Bool)

(assert (=> d!818016 (= c!456660 (is-Node!10215 (c!456615 x!519167)))))

(declare-fun e!1780964 () Bool)

(assert (=> d!818016 (= (inv!44820 (c!456615 x!519167)) e!1780964)))

(declare-fun b!2816336 () Bool)

(assert (=> b!2816336 (= e!1780964 (inv!44824 (c!456615 x!519167)))))

(declare-fun b!2816337 () Bool)

(declare-fun e!1780965 () Bool)

(assert (=> b!2816337 (= e!1780964 e!1780965)))

(declare-fun res!1172029 () Bool)

(assert (=> b!2816337 (= res!1172029 (not (is-Leaf!15563 (c!456615 x!519167))))))

(assert (=> b!2816337 (=> res!1172029 e!1780965)))

(declare-fun b!2816338 () Bool)

(assert (=> b!2816338 (= e!1780965 (inv!44825 (c!456615 x!519167)))))

(assert (= (and d!818016 c!456660) b!2816336))

(assert (= (and d!818016 (not c!456660)) b!2816337))

(assert (= (and b!2816337 (not res!1172029)) b!2816338))

(declare-fun m!3247403 () Bool)

(assert (=> b!2816336 m!3247403))

(declare-fun m!3247405 () Bool)

(assert (=> b!2816338 m!3247405))

(assert (=> b!2816182 d!818016))

(declare-fun d!818018 () Bool)

(declare-fun c!456661 () Bool)

(assert (=> d!818018 (= c!456661 (is-Node!10215 (c!456615 x!519168)))))

(declare-fun e!1780966 () Bool)

(assert (=> d!818018 (= (inv!44820 (c!456615 x!519168)) e!1780966)))

(declare-fun b!2816339 () Bool)

(assert (=> b!2816339 (= e!1780966 (inv!44824 (c!456615 x!519168)))))

(declare-fun b!2816340 () Bool)

(declare-fun e!1780967 () Bool)

(assert (=> b!2816340 (= e!1780966 e!1780967)))

(declare-fun res!1172030 () Bool)

(assert (=> b!2816340 (= res!1172030 (not (is-Leaf!15563 (c!456615 x!519168))))))

(assert (=> b!2816340 (=> res!1172030 e!1780967)))

(declare-fun b!2816341 () Bool)

(assert (=> b!2816341 (= e!1780967 (inv!44825 (c!456615 x!519168)))))

(assert (= (and d!818018 c!456661) b!2816339))

(assert (= (and d!818018 (not c!456661)) b!2816340))

(assert (= (and b!2816340 (not res!1172030)) b!2816341))

(declare-fun m!3247407 () Bool)

(assert (=> b!2816339 m!3247407))

(declare-fun m!3247409 () Bool)

(assert (=> b!2816341 m!3247409))

(assert (=> b!2816183 d!818018))

(assert (=> d!817964 d!817932))

(declare-fun b!2816342 () Bool)

(declare-fun e!1780969 () List!33052)

(declare-fun call!183239 () List!33052)

(assert (=> b!2816342 (= e!1780969 call!183239)))

(declare-fun b!2816343 () Bool)

(declare-fun lt!1005947 () Unit!46916)

(declare-fun lt!1005948 () Unit!46916)

(assert (=> b!2816343 (= lt!1005947 lt!1005948)))

(declare-fun lt!1005945 () List!33052)

(declare-fun lt!1005944 () List!33052)

(assert (=> b!2816343 (= (++!8088 (++!8088 lt!1005944 lt!1005945) (efficientList$default$2!143 (c!456615 x!519166))) (++!8088 lt!1005944 call!183239))))

(assert (=> b!2816343 (= lt!1005948 (lemmaConcatAssociativity!1682 lt!1005944 lt!1005945 (efficientList$default$2!143 (c!456615 x!519166))))))

(assert (=> b!2816343 (= lt!1005945 (list!12364 (right!25198 (c!456615 x!519166))))))

(assert (=> b!2816343 (= lt!1005944 (list!12364 (left!24868 (c!456615 x!519166))))))

(assert (=> b!2816343 (= e!1780969 (efficientList!410 (left!24868 (c!456615 x!519166)) (efficientList!410 (right!25198 (c!456615 x!519166)) (efficientList$default$2!143 (c!456615 x!519166)))))))

(declare-fun d!818020 () Bool)

(declare-fun lt!1005946 () List!33052)

(assert (=> d!818020 (= lt!1005946 (++!8088 (list!12364 (c!456615 x!519166)) (efficientList$default$2!143 (c!456615 x!519166))))))

(declare-fun e!1780968 () List!33052)

(assert (=> d!818020 (= lt!1005946 e!1780968)))

(declare-fun c!456663 () Bool)

(assert (=> d!818020 (= c!456663 (is-Empty!10215 (c!456615 x!519166)))))

(assert (=> d!818020 (= (efficientList!410 (c!456615 x!519166) (efficientList$default$2!143 (c!456615 x!519166))) lt!1005946)))

(declare-fun b!2816344 () Bool)

(declare-fun e!1780970 () List!33052)

(assert (=> b!2816344 (= e!1780970 (efficientList!412 (xs!13327 (c!456615 x!519166))))))

(declare-fun b!2816345 () Bool)

(assert (=> b!2816345 (= e!1780968 (efficientList$default$2!143 (c!456615 x!519166)))))

(declare-fun b!2816346 () Bool)

(assert (=> b!2816346 (= e!1780970 lt!1005945)))

(declare-fun bm!183234 () Bool)

(declare-fun c!456664 () Bool)

(declare-fun c!456662 () Bool)

(assert (=> bm!183234 (= c!456664 c!456662)))

(assert (=> bm!183234 (= call!183239 (++!8088 e!1780970 (efficientList$default$2!143 (c!456615 x!519166))))))

(declare-fun b!2816347 () Bool)

(assert (=> b!2816347 (= e!1780968 e!1780969)))

(assert (=> b!2816347 (= c!456662 (is-Leaf!15563 (c!456615 x!519166)))))

(assert (= (and d!818020 c!456663) b!2816345))

(assert (= (and d!818020 (not c!456663)) b!2816347))

(assert (= (and b!2816347 c!456662) b!2816342))

(assert (= (and b!2816347 (not c!456662)) b!2816343))

(assert (= (or b!2816342 b!2816343) bm!183234))

(assert (= (and bm!183234 c!456664) b!2816344))

(assert (= (and bm!183234 (not c!456664)) b!2816346))

(declare-fun m!3247411 () Bool)

(assert (=> b!2816343 m!3247411))

(declare-fun m!3247413 () Bool)

(assert (=> b!2816343 m!3247413))

(assert (=> b!2816343 m!3247265))

(declare-fun m!3247415 () Bool)

(assert (=> b!2816343 m!3247415))

(assert (=> b!2816343 m!3247279))

(assert (=> b!2816343 m!3247265))

(assert (=> b!2816343 m!3247411))

(assert (=> b!2816343 m!3247277))

(declare-fun m!3247417 () Bool)

(assert (=> b!2816343 m!3247417))

(assert (=> b!2816343 m!3247265))

(declare-fun m!3247419 () Bool)

(assert (=> b!2816343 m!3247419))

(declare-fun m!3247421 () Bool)

(assert (=> b!2816343 m!3247421))

(assert (=> b!2816343 m!3247417))

(assert (=> d!818020 m!3247221))

(assert (=> d!818020 m!3247221))

(assert (=> d!818020 m!3247265))

(declare-fun m!3247423 () Bool)

(assert (=> d!818020 m!3247423))

(declare-fun m!3247425 () Bool)

(assert (=> b!2816344 m!3247425))

(assert (=> bm!183234 m!3247265))

(declare-fun m!3247427 () Bool)

(assert (=> bm!183234 m!3247427))

(assert (=> d!817964 d!818020))

(declare-fun d!818022 () Bool)

(assert (=> d!818022 (= (efficientList$default$2!143 (c!456615 x!519166)) Nil!32928)))

(assert (=> d!817964 d!818022))

(assert (=> d!817970 d!817938))

(declare-fun b!2816348 () Bool)

(declare-fun e!1780972 () List!33052)

(declare-fun call!183240 () List!33052)

(assert (=> b!2816348 (= e!1780972 call!183240)))

(declare-fun b!2816349 () Bool)

(declare-fun lt!1005952 () Unit!46916)

(declare-fun lt!1005953 () Unit!46916)

(assert (=> b!2816349 (= lt!1005952 lt!1005953)))

(declare-fun lt!1005950 () List!33052)

(declare-fun lt!1005949 () List!33052)

(assert (=> b!2816349 (= (++!8088 (++!8088 lt!1005949 lt!1005950) (efficientList$default$2!143 (c!456615 x!519167))) (++!8088 lt!1005949 call!183240))))

(assert (=> b!2816349 (= lt!1005953 (lemmaConcatAssociativity!1682 lt!1005949 lt!1005950 (efficientList$default$2!143 (c!456615 x!519167))))))

(assert (=> b!2816349 (= lt!1005950 (list!12364 (right!25198 (c!456615 x!519167))))))

(assert (=> b!2816349 (= lt!1005949 (list!12364 (left!24868 (c!456615 x!519167))))))

(assert (=> b!2816349 (= e!1780972 (efficientList!410 (left!24868 (c!456615 x!519167)) (efficientList!410 (right!25198 (c!456615 x!519167)) (efficientList$default$2!143 (c!456615 x!519167)))))))

(declare-fun d!818024 () Bool)

(declare-fun lt!1005951 () List!33052)

(assert (=> d!818024 (= lt!1005951 (++!8088 (list!12364 (c!456615 x!519167)) (efficientList$default$2!143 (c!456615 x!519167))))))

(declare-fun e!1780971 () List!33052)

(assert (=> d!818024 (= lt!1005951 e!1780971)))

(declare-fun c!456666 () Bool)

(assert (=> d!818024 (= c!456666 (is-Empty!10215 (c!456615 x!519167)))))

(assert (=> d!818024 (= (efficientList!410 (c!456615 x!519167) (efficientList$default$2!143 (c!456615 x!519167))) lt!1005951)))

(declare-fun b!2816350 () Bool)

(declare-fun e!1780973 () List!33052)

(assert (=> b!2816350 (= e!1780973 (efficientList!412 (xs!13327 (c!456615 x!519167))))))

(declare-fun b!2816351 () Bool)

(assert (=> b!2816351 (= e!1780971 (efficientList$default$2!143 (c!456615 x!519167)))))

(declare-fun b!2816352 () Bool)

(assert (=> b!2816352 (= e!1780973 lt!1005950)))

(declare-fun bm!183235 () Bool)

(declare-fun c!456667 () Bool)

(declare-fun c!456665 () Bool)

(assert (=> bm!183235 (= c!456667 c!456665)))

(assert (=> bm!183235 (= call!183240 (++!8088 e!1780973 (efficientList$default$2!143 (c!456615 x!519167))))))

(declare-fun b!2816353 () Bool)

(assert (=> b!2816353 (= e!1780971 e!1780972)))

(assert (=> b!2816353 (= c!456665 (is-Leaf!15563 (c!456615 x!519167)))))

(assert (= (and d!818024 c!456666) b!2816351))

(assert (= (and d!818024 (not c!456666)) b!2816353))

(assert (= (and b!2816353 c!456665) b!2816348))

(assert (= (and b!2816353 (not c!456665)) b!2816349))

(assert (= (or b!2816348 b!2816349) bm!183235))

(assert (= (and bm!183235 c!456667) b!2816350))

(assert (= (and bm!183235 (not c!456667)) b!2816352))

(declare-fun m!3247429 () Bool)

(assert (=> b!2816349 m!3247429))

(declare-fun m!3247431 () Bool)

(assert (=> b!2816349 m!3247431))

(assert (=> b!2816349 m!3247285))

(declare-fun m!3247433 () Bool)

(assert (=> b!2816349 m!3247433))

(assert (=> b!2816349 m!3247255))

(assert (=> b!2816349 m!3247285))

(assert (=> b!2816349 m!3247429))

(assert (=> b!2816349 m!3247253))

(declare-fun m!3247435 () Bool)

(assert (=> b!2816349 m!3247435))

(assert (=> b!2816349 m!3247285))

(declare-fun m!3247437 () Bool)

(assert (=> b!2816349 m!3247437))

(declare-fun m!3247439 () Bool)

(assert (=> b!2816349 m!3247439))

(assert (=> b!2816349 m!3247435))

(assert (=> d!818024 m!3247227))

(assert (=> d!818024 m!3247227))

(assert (=> d!818024 m!3247285))

(declare-fun m!3247441 () Bool)

(assert (=> d!818024 m!3247441))

(declare-fun m!3247443 () Bool)

(assert (=> b!2816350 m!3247443))

(assert (=> bm!183235 m!3247285))

(declare-fun m!3247445 () Bool)

(assert (=> bm!183235 m!3247445))

(assert (=> d!817970 d!818024))

(declare-fun d!818026 () Bool)

(assert (=> d!818026 (= (efficientList$default$2!143 (c!456615 x!519167)) Nil!32928)))

(assert (=> d!817970 d!818026))

(declare-fun tp!899036 () Bool)

(declare-fun tp!899035 () Bool)

(declare-fun b!2816360 () Bool)

(declare-fun e!1780978 () Bool)

(assert (=> b!2816360 (= e!1780978 (and (inv!44820 (left!24868 (c!456615 x!519166))) tp!899035 (inv!44820 (right!25198 (c!456615 x!519166))) tp!899036))))

(declare-fun b!2816361 () Bool)

(declare-fun inv!44826 (IArray!20435) Bool)

(assert (=> b!2816361 (= e!1780978 (inv!44826 (xs!13327 (c!456615 x!519166))))))

(assert (=> b!2816180 (= tp!899019 (and (inv!44820 (c!456615 x!519166)) e!1780978))))

(assert (= (and b!2816180 (is-Node!10215 (c!456615 x!519166))) b!2816360))

(assert (= (and b!2816180 (is-Leaf!15563 (c!456615 x!519166))) b!2816361))

(declare-fun m!3247447 () Bool)

(assert (=> b!2816360 m!3247447))

(declare-fun m!3247449 () Bool)

(assert (=> b!2816360 m!3247449))

(declare-fun m!3247451 () Bool)

(assert (=> b!2816361 m!3247451))

(assert (=> b!2816180 m!3247149))

(declare-fun e!1780980 () Bool)

(declare-fun tp!899037 () Bool)

(declare-fun tp!899038 () Bool)

(declare-fun b!2816362 () Bool)

(assert (=> b!2816362 (= e!1780980 (and (inv!44820 (left!24868 (c!456615 x!519167))) tp!899037 (inv!44820 (right!25198 (c!456615 x!519167))) tp!899038))))

(declare-fun b!2816363 () Bool)

(assert (=> b!2816363 (= e!1780980 (inv!44826 (xs!13327 (c!456615 x!519167))))))

(assert (=> b!2816182 (= tp!899020 (and (inv!44820 (c!456615 x!519167)) e!1780980))))

(assert (= (and b!2816182 (is-Node!10215 (c!456615 x!519167))) b!2816362))

(assert (= (and b!2816182 (is-Leaf!15563 (c!456615 x!519167))) b!2816363))

(declare-fun m!3247453 () Bool)

(assert (=> b!2816362 m!3247453))

(declare-fun m!3247455 () Bool)

(assert (=> b!2816362 m!3247455))

(declare-fun m!3247457 () Bool)

(assert (=> b!2816363 m!3247457))

(assert (=> b!2816182 m!3247173))

(declare-fun b!2816364 () Bool)

(declare-fun e!1780982 () Bool)

(declare-fun tp!899039 () Bool)

(declare-fun tp!899040 () Bool)

(assert (=> b!2816364 (= e!1780982 (and (inv!44820 (left!24868 (c!456615 x!519168))) tp!899039 (inv!44820 (right!25198 (c!456615 x!519168))) tp!899040))))

(declare-fun b!2816365 () Bool)

(assert (=> b!2816365 (= e!1780982 (inv!44826 (xs!13327 (c!456615 x!519168))))))

(assert (=> b!2816183 (= tp!899021 (and (inv!44820 (c!456615 x!519168)) e!1780982))))

(assert (= (and b!2816183 (is-Node!10215 (c!456615 x!519168))) b!2816364))

(assert (= (and b!2816183 (is-Leaf!15563 (c!456615 x!519168))) b!2816365))

(declare-fun m!3247459 () Bool)

(assert (=> b!2816364 m!3247459))

(declare-fun m!3247461 () Bool)

(assert (=> b!2816364 m!3247461))

(declare-fun m!3247463 () Bool)

(assert (=> b!2816365 m!3247463))

(assert (=> b!2816183 m!3247175))

(push 1)

(assert (not b!2816331))

(assert (not b!2816344))

(assert (not b!2816338))

(assert (not b!2816295))

(assert (not b!2816364))

(assert (not bm!183234))

(assert (not bm!183233))

(assert (not b!2816349))

(assert (not d!817980))

(assert (not bm!183232))

(assert (not d!818020))

(assert (not d!817990))

(assert (not d!817988))

(assert (not b!2816267))

(assert (not b!2816363))

(assert (not d!817996))

(assert (not b!2816343))

(assert (not d!817978))

(assert (not b!2816325))

(assert (not b!2816259))

(assert (not b!2816341))

(assert (not b!2816361))

(assert (not b!2816255))

(assert (not b!2816339))

(assert (not bm!183235))

(assert (not b!2816326))

(assert (not b!2816260))

(assert (not b!2816362))

(assert (not d!818024))

(assert (not b!2816264))

(assert (not d!818012))

(assert (not b!2816268))

(assert (not b!2816336))

(assert (not b!2816256))

(assert (not b!2816182))

(assert (not b!2816263))

(assert (not b!2816277))

(assert (not b!2816180))

(assert (not d!817984))

(assert (not b!2816365))

(assert (not b!2816332))

(assert (not d!817982))

(assert (not b!2816360))

(assert (not b!2816293))

(assert (not b!2816183))

(assert (not b!2816350))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

