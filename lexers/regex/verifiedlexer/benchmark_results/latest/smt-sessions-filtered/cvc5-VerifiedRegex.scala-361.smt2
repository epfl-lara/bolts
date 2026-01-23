; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!11420 () Bool)

(assert start!11420)

(assert (=> start!11420 true))

(declare-fun b!110926 () Bool)

(assert (=> b!110926 true))

(assert (=> b!110926 true))

(declare-fun b!110927 () Bool)

(assert (=> b!110927 true))

(declare-fun b!110938 () Bool)

(declare-fun e!61989 () Bool)

(declare-datatypes ((List!1794 0))(
  ( (Nil!1788) (Cons!1788 (h!7185 (_ BitVec 16)) (t!22257 List!1794)) )
))
(declare-datatypes ((IArray!1121 0))(
  ( (IArray!1122 (innerList!618 List!1794)) )
))
(declare-datatypes ((Conc!560 0))(
  ( (Node!560 (left!1525 Conc!560) (right!1855 Conc!560) (csize!1350 Int) (cheight!771 Int)) (Leaf!922 (xs!3155 IArray!1121) (csize!1351 Int)) (Empty!560) )
))
(declare-datatypes ((BalanceConc!1124 0))(
  ( (BalanceConc!1125 (c!26326 Conc!560)) )
))
(declare-fun x!32218 () BalanceConc!1124)

(declare-fun tp!59844 () Bool)

(declare-fun inv!2270 (Conc!560) Bool)

(assert (=> b!110938 (= e!61989 (and (inv!2270 (c!26326 x!32218)) tp!59844))))

(declare-fun inst!136 () Bool)

(declare-datatypes ((EOFValueInjection!20 0))(
  ( (EOFValueInjection!21) )
))
(declare-fun thiss!5344 () EOFValueInjection!20)

(declare-fun inv!2271 (BalanceConc!1124) Bool)

(declare-fun list!768 (BalanceConc!1124) List!1794)

(declare-datatypes ((TokenValue!382 0))(
  ( (FloatLiteralValue!764 (text!3119 List!1794)) (TokenValueExt!381 (__x!1841 Int)) (Broken!1910 (value!14089 List!1794)) (Object!387) (End!382) (Def!382) (Underscore!382) (Match!382) (Else!382) (Error!382) (Case!382) (If!382) (Extends!382) (Abstract!382) (Class!382) (Val!382) (DelimiterValue!764 (del!442 List!1794)) (KeywordValue!388 (value!14090 List!1794)) (CommentValue!764 (value!14091 List!1794)) (WhitespaceValue!764 (value!14092 List!1794)) (IndentationValue!382 (value!14093 List!1794)) (String!2387) (Int32!382) (Broken!1911 (value!14094 List!1794)) (Boolean!383) (Unit!1274) (OperatorValue!385 (op!442 List!1794)) (IdentifierValue!764 (value!14095 List!1794)) (IdentifierValue!765 (value!14096 List!1794)) (WhitespaceValue!765 (value!14097 List!1794)) (True!764) (False!764) (Broken!1912 (value!14098 List!1794)) (Broken!1913 (value!14099 List!1794)) (True!765) (RightBrace!382) (RightBracket!382) (Colon!382) (Null!382) (Comma!382) (LeftBracket!382) (False!765) (LeftBrace!382) (ImaginaryLiteralValue!382 (text!3120 List!1794)) (StringLiteralValue!1146 (value!14100 List!1794)) (EOFValue!382 (value!14101 List!1794)) (IdentValue!382 (value!14102 List!1794)) (DelimiterValue!765 (value!14103 List!1794)) (DedentValue!382 (value!14104 List!1794)) (NewLineValue!382 (value!14105 List!1794)) (IntegerValue!1146 (value!14106 (_ BitVec 32)) (text!3121 List!1794)) (IntegerValue!1147 (value!14107 Int) (text!3122 List!1794)) (Times!382) (Or!382) (Equal!382) (Minus!382) (Broken!1914 (value!14108 List!1794)) (And!382) (Div!382) (LessEqual!382) (Mod!382) (Concat!824) (Not!382) (Plus!382) (SpaceValue!382 (value!14109 List!1794)) (IntegerValue!1148 (value!14110 Int) (text!3123 List!1794)) (StringLiteralValue!1147 (text!3124 List!1794)) (FloatLiteralValue!765 (text!3125 List!1794)) (BytesLiteralValue!382 (value!14111 List!1794)) (CommentValue!765 (value!14112 List!1794)) (StringLiteralValue!1148 (value!14113 List!1794)) (ErrorTokenValue!382 (msg!443 List!1794)) )
))
(declare-fun toCharacters!30 (EOFValueInjection!20 TokenValue!382) BalanceConc!1124)

(declare-fun toValue!37 (EOFValueInjection!20 BalanceConc!1124) TokenValue!382)

(assert (=> start!11420 (= inst!136 (=> (and (inv!2271 x!32218) e!61989) (= (list!768 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!32218))) (list!768 x!32218))))))

(assert (= start!11420 b!110938))

(declare-fun m!101304 () Bool)

(assert (=> b!110938 m!101304))

(declare-fun m!101306 () Bool)

(assert (=> start!11420 m!101306))

(declare-fun m!101308 () Bool)

(assert (=> start!11420 m!101308))

(declare-fun m!101310 () Bool)

(assert (=> start!11420 m!101310))

(declare-fun m!101312 () Bool)

(assert (=> start!11420 m!101312))

(declare-fun m!101314 () Bool)

(assert (=> start!11420 m!101314))

(assert (=> start!11420 m!101308))

(assert (=> start!11420 m!101314))

(declare-fun res!53538 () Bool)

(declare-fun e!61990 () Bool)

(assert (=> b!110927 (=> res!53538 e!61990)))

(declare-fun x!32219 () BalanceConc!1124)

(declare-fun x!32220 () BalanceConc!1124)

(assert (=> b!110927 (= res!53538 (not (= (list!768 x!32219) (list!768 x!32220))))))

(declare-fun e!61992 () Bool)

(declare-fun inst!137 () Bool)

(declare-fun e!61991 () Bool)

(assert (=> b!110927 (= inst!137 (=> (and (inv!2271 x!32219) e!61991 (inv!2271 x!32220) e!61992) e!61990))))

(declare-fun b!110939 () Bool)

(assert (=> b!110939 (= e!61990 (= (toValue!37 thiss!5344 x!32219) (toValue!37 thiss!5344 x!32220)))))

(declare-fun b!110940 () Bool)

(declare-fun tp!59845 () Bool)

(assert (=> b!110940 (= e!61991 (and (inv!2270 (c!26326 x!32219)) tp!59845))))

(declare-fun b!110941 () Bool)

(declare-fun tp!59846 () Bool)

(assert (=> b!110941 (= e!61992 (and (inv!2270 (c!26326 x!32220)) tp!59846))))

(assert (= (and b!110927 (not res!53538)) b!110939))

(assert (= b!110927 b!110940))

(assert (= b!110927 b!110941))

(declare-fun m!101316 () Bool)

(assert (=> b!110927 m!101316))

(declare-fun m!101318 () Bool)

(assert (=> b!110927 m!101318))

(declare-fun m!101320 () Bool)

(assert (=> b!110927 m!101320))

(declare-fun m!101322 () Bool)

(assert (=> b!110927 m!101322))

(declare-fun m!101324 () Bool)

(assert (=> b!110939 m!101324))

(declare-fun m!101326 () Bool)

(assert (=> b!110939 m!101326))

(declare-fun m!101328 () Bool)

(assert (=> b!110940 m!101328))

(declare-fun m!101330 () Bool)

(assert (=> b!110941 m!101330))

(declare-fun bs!11236 () Bool)

(declare-fun neg-inst!137 () Bool)

(declare-fun s!16657 () Bool)

(assert (= bs!11236 (and neg-inst!137 s!16657)))

(assert (=> bs!11236 (=> true (= (list!768 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!32218))) (list!768 x!32218)))))

(assert (=> m!101314 m!101308))

(assert (=> m!101314 m!101310))

(assert (=> m!101314 m!101312))

(assert (=> m!101314 s!16657))

(assert (=> m!101312 s!16657))

(declare-fun bs!11237 () Bool)

(assert (= bs!11237 (and neg-inst!137 start!11420)))

(assert (=> bs!11237 (= true inst!136)))

(declare-fun bs!11238 () Bool)

(declare-fun neg-inst!136 () Bool)

(declare-fun s!16659 () Bool)

(assert (= bs!11238 (and neg-inst!136 s!16659)))

(declare-fun res!53539 () Bool)

(declare-fun e!61993 () Bool)

(assert (=> bs!11238 (=> res!53539 e!61993)))

(assert (=> bs!11238 (= res!53539 (not (= (list!768 x!32218) (list!768 x!32218))))))

(assert (=> bs!11238 (=> true e!61993)))

(declare-fun b!110942 () Bool)

(assert (=> b!110942 (= e!61993 (= (toValue!37 thiss!5344 x!32218) (toValue!37 thiss!5344 x!32218)))))

(assert (= (and bs!11238 (not res!53539)) b!110942))

(assert (=> m!101314 m!101312))

(assert (=> m!101314 m!101312))

(assert (=> m!101314 s!16659))

(assert (=> m!101314 s!16659))

(declare-fun bs!11239 () Bool)

(declare-fun s!16661 () Bool)

(assert (= bs!11239 (and neg-inst!136 s!16661)))

(declare-fun res!53540 () Bool)

(declare-fun e!61994 () Bool)

(assert (=> bs!11239 (=> res!53540 e!61994)))

(assert (=> bs!11239 (= res!53540 (not (= (list!768 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!32218))) (list!768 x!32218))))))

(assert (=> bs!11239 (=> true e!61994)))

(declare-fun b!110943 () Bool)

(assert (=> b!110943 (= e!61994 (= (toValue!37 thiss!5344 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!32218))) (toValue!37 thiss!5344 x!32218)))))

(assert (= (and bs!11239 (not res!53540)) b!110943))

(declare-fun bs!11240 () Bool)

(assert (= bs!11240 (and m!101310 m!101314)))

(assert (=> bs!11240 m!101310))

(assert (=> bs!11240 m!101312))

(assert (=> bs!11240 s!16661))

(declare-fun bs!11241 () Bool)

(declare-fun s!16663 () Bool)

(assert (= bs!11241 (and neg-inst!136 s!16663)))

(declare-fun res!53541 () Bool)

(declare-fun e!61995 () Bool)

(assert (=> bs!11241 (=> res!53541 e!61995)))

(assert (=> bs!11241 (= res!53541 (not (= (list!768 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!32218))) (list!768 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!32218))))))))

(assert (=> bs!11241 (=> true e!61995)))

(declare-fun b!110944 () Bool)

(assert (=> b!110944 (= e!61995 (= (toValue!37 thiss!5344 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!32218))) (toValue!37 thiss!5344 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!32218)))))))

(assert (= (and bs!11241 (not res!53541)) b!110944))

(assert (=> m!101310 s!16663))

(declare-fun bs!11242 () Bool)

(declare-fun s!16665 () Bool)

(assert (= bs!11242 (and neg-inst!136 s!16665)))

(declare-fun res!53542 () Bool)

(declare-fun e!61996 () Bool)

(assert (=> bs!11242 (=> res!53542 e!61996)))

(assert (=> bs!11242 (= res!53542 (not (= (list!768 x!32218) (list!768 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!32218))))))))

(assert (=> bs!11242 (=> true e!61996)))

(declare-fun b!110945 () Bool)

(assert (=> b!110945 (= e!61996 (= (toValue!37 thiss!5344 x!32218) (toValue!37 thiss!5344 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!32218)))))))

(assert (= (and bs!11242 (not res!53542)) b!110945))

(assert (=> bs!11240 m!101312))

(assert (=> bs!11240 m!101310))

(assert (=> bs!11240 s!16665))

(assert (=> m!101310 s!16663))

(declare-fun bs!11243 () Bool)

(declare-fun s!16667 () Bool)

(assert (= bs!11243 (and neg-inst!136 s!16667)))

(declare-fun res!53543 () Bool)

(declare-fun e!61997 () Bool)

(assert (=> bs!11243 (=> res!53543 e!61997)))

(assert (=> bs!11243 (= res!53543 (not (= (list!768 x!32219) (list!768 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!32218))))))))

(assert (=> bs!11243 (=> true e!61997)))

(declare-fun b!110946 () Bool)

(assert (=> b!110946 (= e!61997 (= (toValue!37 thiss!5344 x!32219) (toValue!37 thiss!5344 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!32218)))))))

(assert (= (and bs!11243 (not res!53543)) b!110946))

(declare-fun bs!11244 () Bool)

(assert (= bs!11244 (and m!101324 m!101310)))

(assert (=> bs!11244 m!101316))

(assert (=> bs!11244 m!101310))

(assert (=> bs!11244 s!16667))

(declare-fun bs!11245 () Bool)

(declare-fun s!16669 () Bool)

(assert (= bs!11245 (and neg-inst!136 s!16669)))

(declare-fun res!53544 () Bool)

(declare-fun e!61998 () Bool)

(assert (=> bs!11245 (=> res!53544 e!61998)))

(assert (=> bs!11245 (= res!53544 (not (= (list!768 x!32219) (list!768 x!32218))))))

(assert (=> bs!11245 (=> true e!61998)))

(declare-fun b!110947 () Bool)

(assert (=> b!110947 (= e!61998 (= (toValue!37 thiss!5344 x!32219) (toValue!37 thiss!5344 x!32218)))))

(assert (= (and bs!11245 (not res!53544)) b!110947))

(declare-fun bs!11246 () Bool)

(assert (= bs!11246 (and m!101324 m!101314)))

(assert (=> bs!11246 m!101316))

(assert (=> bs!11246 m!101312))

(assert (=> bs!11246 s!16669))

(declare-fun bs!11247 () Bool)

(declare-fun s!16671 () Bool)

(assert (= bs!11247 (and neg-inst!136 s!16671)))

(declare-fun res!53545 () Bool)

(declare-fun e!61999 () Bool)

(assert (=> bs!11247 (=> res!53545 e!61999)))

(assert (=> bs!11247 (= res!53545 (not (= (list!768 x!32219) (list!768 x!32219))))))

(assert (=> bs!11247 (=> true e!61999)))

(declare-fun b!110948 () Bool)

(assert (=> b!110948 (= e!61999 (= (toValue!37 thiss!5344 x!32219) (toValue!37 thiss!5344 x!32219)))))

(assert (= (and bs!11247 (not res!53545)) b!110948))

(assert (=> m!101324 m!101316))

(assert (=> m!101324 m!101316))

(assert (=> m!101324 s!16671))

(declare-fun bs!11248 () Bool)

(declare-fun s!16673 () Bool)

(assert (= bs!11248 (and neg-inst!136 s!16673)))

(declare-fun res!53546 () Bool)

(declare-fun e!62000 () Bool)

(assert (=> bs!11248 (=> res!53546 e!62000)))

(assert (=> bs!11248 (= res!53546 (not (= (list!768 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!32218))) (list!768 x!32219))))))

(assert (=> bs!11248 (=> true e!62000)))

(declare-fun b!110949 () Bool)

(assert (=> b!110949 (= e!62000 (= (toValue!37 thiss!5344 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!32218))) (toValue!37 thiss!5344 x!32219)))))

(assert (= (and bs!11248 (not res!53546)) b!110949))

(assert (=> bs!11244 m!101310))

(assert (=> bs!11244 m!101316))

(assert (=> bs!11244 s!16673))

(declare-fun bs!11249 () Bool)

(declare-fun s!16675 () Bool)

(assert (= bs!11249 (and neg-inst!136 s!16675)))

(declare-fun res!53547 () Bool)

(declare-fun e!62001 () Bool)

(assert (=> bs!11249 (=> res!53547 e!62001)))

(assert (=> bs!11249 (= res!53547 (not (= (list!768 x!32218) (list!768 x!32219))))))

(assert (=> bs!11249 (=> true e!62001)))

(declare-fun b!110950 () Bool)

(assert (=> b!110950 (= e!62001 (= (toValue!37 thiss!5344 x!32218) (toValue!37 thiss!5344 x!32219)))))

(assert (= (and bs!11249 (not res!53547)) b!110950))

(assert (=> bs!11246 m!101312))

(assert (=> bs!11246 m!101316))

(assert (=> bs!11246 s!16675))

(assert (=> m!101324 s!16671))

(declare-fun bs!11250 () Bool)

(assert (= bs!11250 (and m!101316 m!101310)))

(assert (=> bs!11250 s!16667))

(declare-fun bs!11251 () Bool)

(assert (= bs!11251 (and m!101316 m!101314)))

(assert (=> bs!11251 s!16669))

(declare-fun bs!11252 () Bool)

(assert (= bs!11252 (and m!101316 m!101324)))

(assert (=> bs!11252 s!16671))

(assert (=> m!101316 s!16671))

(assert (=> bs!11250 s!16673))

(assert (=> bs!11251 s!16675))

(assert (=> bs!11252 s!16671))

(assert (=> m!101316 s!16671))

(declare-fun bs!11253 () Bool)

(declare-fun s!16677 () Bool)

(assert (= bs!11253 (and neg-inst!136 s!16677)))

(declare-fun res!53548 () Bool)

(declare-fun e!62002 () Bool)

(assert (=> bs!11253 (=> res!53548 e!62002)))

(assert (=> bs!11253 (= res!53548 (not (= (list!768 x!32220) (list!768 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!32218))))))))

(assert (=> bs!11253 (=> true e!62002)))

(declare-fun b!110951 () Bool)

(assert (=> b!110951 (= e!62002 (= (toValue!37 thiss!5344 x!32220) (toValue!37 thiss!5344 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!32218)))))))

(assert (= (and bs!11253 (not res!53548)) b!110951))

(declare-fun bs!11254 () Bool)

(assert (= bs!11254 (and m!101326 m!101310)))

(assert (=> bs!11254 m!101318))

(assert (=> bs!11254 m!101310))

(assert (=> bs!11254 s!16677))

(declare-fun bs!11255 () Bool)

(declare-fun s!16679 () Bool)

(assert (= bs!11255 (and neg-inst!136 s!16679)))

(declare-fun res!53549 () Bool)

(declare-fun e!62003 () Bool)

(assert (=> bs!11255 (=> res!53549 e!62003)))

(assert (=> bs!11255 (= res!53549 (not (= (list!768 x!32220) (list!768 x!32218))))))

(assert (=> bs!11255 (=> true e!62003)))

(declare-fun b!110952 () Bool)

(assert (=> b!110952 (= e!62003 (= (toValue!37 thiss!5344 x!32220) (toValue!37 thiss!5344 x!32218)))))

(assert (= (and bs!11255 (not res!53549)) b!110952))

(declare-fun bs!11256 () Bool)

(assert (= bs!11256 (and m!101326 m!101314)))

(assert (=> bs!11256 m!101318))

(assert (=> bs!11256 m!101312))

(assert (=> bs!11256 s!16679))

(declare-fun bs!11257 () Bool)

(declare-fun s!16681 () Bool)

(assert (= bs!11257 (and neg-inst!136 s!16681)))

(declare-fun res!53550 () Bool)

(declare-fun e!62004 () Bool)

(assert (=> bs!11257 (=> res!53550 e!62004)))

(assert (=> bs!11257 (= res!53550 (not (= (list!768 x!32220) (list!768 x!32219))))))

(assert (=> bs!11257 (=> true e!62004)))

(declare-fun b!110953 () Bool)

(assert (=> b!110953 (= e!62004 (= (toValue!37 thiss!5344 x!32220) (toValue!37 thiss!5344 x!32219)))))

(assert (= (and bs!11257 (not res!53550)) b!110953))

(declare-fun bs!11258 () Bool)

(assert (= bs!11258 (and m!101326 m!101324 m!101316)))

(assert (=> bs!11258 m!101318))

(assert (=> bs!11258 m!101316))

(assert (=> bs!11258 s!16681))

(declare-fun bs!11259 () Bool)

(declare-fun s!16683 () Bool)

(assert (= bs!11259 (and neg-inst!136 s!16683)))

(declare-fun res!53551 () Bool)

(declare-fun e!62005 () Bool)

(assert (=> bs!11259 (=> res!53551 e!62005)))

(assert (=> bs!11259 (= res!53551 (not (= (list!768 x!32220) (list!768 x!32220))))))

(assert (=> bs!11259 (=> true e!62005)))

(declare-fun b!110954 () Bool)

(assert (=> b!110954 (= e!62005 (= (toValue!37 thiss!5344 x!32220) (toValue!37 thiss!5344 x!32220)))))

(assert (= (and bs!11259 (not res!53551)) b!110954))

(assert (=> m!101326 m!101318))

(assert (=> m!101326 m!101318))

(assert (=> m!101326 s!16683))

(declare-fun bs!11260 () Bool)

(declare-fun s!16685 () Bool)

(assert (= bs!11260 (and neg-inst!136 s!16685)))

(declare-fun res!53552 () Bool)

(declare-fun e!62006 () Bool)

(assert (=> bs!11260 (=> res!53552 e!62006)))

(assert (=> bs!11260 (= res!53552 (not (= (list!768 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!32218))) (list!768 x!32220))))))

(assert (=> bs!11260 (=> true e!62006)))

(declare-fun b!110955 () Bool)

(assert (=> b!110955 (= e!62006 (= (toValue!37 thiss!5344 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!32218))) (toValue!37 thiss!5344 x!32220)))))

(assert (= (and bs!11260 (not res!53552)) b!110955))

(assert (=> bs!11254 m!101310))

(assert (=> bs!11254 m!101318))

(assert (=> bs!11254 s!16685))

(declare-fun bs!11261 () Bool)

(declare-fun s!16687 () Bool)

(assert (= bs!11261 (and neg-inst!136 s!16687)))

(declare-fun res!53553 () Bool)

(declare-fun e!62007 () Bool)

(assert (=> bs!11261 (=> res!53553 e!62007)))

(assert (=> bs!11261 (= res!53553 (not (= (list!768 x!32218) (list!768 x!32220))))))

(assert (=> bs!11261 (=> true e!62007)))

(declare-fun b!110956 () Bool)

(assert (=> b!110956 (= e!62007 (= (toValue!37 thiss!5344 x!32218) (toValue!37 thiss!5344 x!32220)))))

(assert (= (and bs!11261 (not res!53553)) b!110956))

(assert (=> bs!11256 m!101312))

(assert (=> bs!11256 m!101318))

(assert (=> bs!11256 s!16687))

(declare-fun bs!11262 () Bool)

(declare-fun s!16689 () Bool)

(assert (= bs!11262 (and neg-inst!136 s!16689)))

(declare-fun res!53554 () Bool)

(declare-fun e!62008 () Bool)

(assert (=> bs!11262 (=> res!53554 e!62008)))

(assert (=> bs!11262 (= res!53554 (not (= (list!768 x!32219) (list!768 x!32220))))))

(assert (=> bs!11262 (=> true e!62008)))

(declare-fun b!110957 () Bool)

(assert (=> b!110957 (= e!62008 (= (toValue!37 thiss!5344 x!32219) (toValue!37 thiss!5344 x!32220)))))

(assert (= (and bs!11262 (not res!53554)) b!110957))

(assert (=> bs!11258 m!101316))

(assert (=> bs!11258 m!101318))

(assert (=> bs!11258 s!16689))

(assert (=> m!101326 s!16683))

(declare-fun bs!11263 () Bool)

(assert (= bs!11263 (and m!101312 m!101324 m!101316)))

(assert (=> bs!11263 s!16675))

(declare-fun bs!11264 () Bool)

(assert (= bs!11264 (and m!101312 m!101326)))

(assert (=> bs!11264 s!16687))

(assert (=> m!101312 s!16659))

(declare-fun bs!11265 () Bool)

(assert (= bs!11265 (and m!101312 m!101314)))

(assert (=> bs!11265 s!16659))

(declare-fun bs!11266 () Bool)

(assert (= bs!11266 (and m!101312 m!101310)))

(assert (=> bs!11266 s!16665))

(assert (=> bs!11266 s!16661))

(assert (=> m!101312 s!16659))

(assert (=> bs!11264 s!16679))

(assert (=> bs!11265 s!16659))

(assert (=> bs!11263 s!16669))

(declare-fun bs!11267 () Bool)

(assert (= bs!11267 (and m!101318 m!101324 m!101316)))

(assert (=> bs!11267 s!16681))

(declare-fun bs!11268 () Bool)

(assert (= bs!11268 (and m!101318 m!101326)))

(assert (=> bs!11268 s!16683))

(assert (=> m!101318 s!16683))

(declare-fun bs!11269 () Bool)

(assert (= bs!11269 (and m!101318 m!101310)))

(assert (=> bs!11269 s!16677))

(declare-fun bs!11270 () Bool)

(assert (= bs!11270 (and m!101318 m!101314 m!101312)))

(assert (=> bs!11270 s!16679))

(assert (=> bs!11270 s!16687))

(assert (=> bs!11268 s!16683))

(assert (=> bs!11269 s!16685))

(assert (=> bs!11267 s!16689))

(assert (=> m!101318 s!16683))

(declare-fun bs!11271 () Bool)

(assert (= bs!11271 (and neg-inst!136 b!110927)))

(assert (=> bs!11271 (= true inst!137)))

(declare-fun res!53534 () Bool)

(declare-fun e!61988 () Bool)

(assert (=> start!11420 (=> res!53534 e!61988)))

(declare-fun lambda!2911 () Int)

(declare-fun Forall!97 (Int) Bool)

(assert (=> start!11420 (= res!53534 (not (Forall!97 lambda!2911)))))

(assert (=> start!11420 (= (Forall!97 lambda!2911) inst!136)))

(assert (=> start!11420 (not e!61988)))

(assert (=> start!11420 true))

(declare-fun b!110929 () Bool)

(declare-fun e!61986 () Bool)

(declare-fun lambda!2913 () Int)

(declare-fun lambda!2912 () Int)

(declare-datatypes ((TokenValueInjection!556 0))(
  ( (TokenValueInjection!557 (toValue!974 Int) (toChars!833 Int)) )
))
(declare-fun inv!2272 (TokenValueInjection!556) Bool)

(assert (=> b!110929 (= e!61986 (inv!2272 (TokenValueInjection!557 lambda!2913 lambda!2912)))))

(declare-fun e!61985 () Bool)

(assert (=> b!110926 (= e!61988 e!61985)))

(declare-fun res!53537 () Bool)

(assert (=> b!110926 (=> res!53537 e!61985)))

(declare-fun semiInverseModEq!114 (Int Int) Bool)

(assert (=> b!110926 (= res!53537 (not (semiInverseModEq!114 lambda!2912 lambda!2913)))))

(assert (=> b!110926 (= (semiInverseModEq!114 lambda!2912 lambda!2913) (Forall!97 lambda!2911))))

(declare-fun b!110928 () Bool)

(declare-fun e!61987 () Bool)

(assert (=> b!110928 (= e!61987 e!61986)))

(declare-fun res!53536 () Bool)

(assert (=> b!110928 (=> res!53536 e!61986)))

(declare-fun equivClasses!101 (Int Int) Bool)

(assert (=> b!110928 (= res!53536 (not (equivClasses!101 lambda!2912 lambda!2913)))))

(declare-fun lambda!2914 () Int)

(declare-fun Forall2!77 (Int) Bool)

(assert (=> b!110928 (= (equivClasses!101 lambda!2912 lambda!2913) (Forall2!77 lambda!2914))))

(assert (=> b!110927 (= e!61985 e!61987)))

(declare-fun res!53535 () Bool)

(assert (=> b!110927 (=> res!53535 e!61987)))

(assert (=> b!110927 (= res!53535 (not (Forall2!77 lambda!2914)))))

(assert (=> b!110927 (= (Forall2!77 lambda!2914) inst!137)))

(assert (= neg-inst!137 inst!136))

(assert (= (and start!11420 (not res!53534)) b!110926))

(assert (= (and b!110926 (not res!53537)) b!110927))

(assert (= neg-inst!136 inst!137))

(assert (= (and b!110927 (not res!53535)) b!110928))

(assert (= (and b!110928 (not res!53536)) b!110929))

(declare-fun m!101332 () Bool)

(assert (=> b!110927 m!101332))

(assert (=> b!110927 m!101332))

(declare-fun m!101334 () Bool)

(assert (=> b!110926 m!101334))

(assert (=> b!110926 m!101334))

(declare-fun m!101336 () Bool)

(assert (=> b!110926 m!101336))

(assert (=> start!11420 m!101336))

(assert (=> start!11420 m!101336))

(declare-fun m!101338 () Bool)

(assert (=> b!110928 m!101338))

(assert (=> b!110928 m!101338))

(assert (=> b!110928 m!101332))

(declare-fun m!101340 () Bool)

(assert (=> b!110929 m!101340))

(push 1)

(assert (not b!110943))

(assert (not b!110939))

(assert (not b!110949))

(assert (not b!110953))

(assert (not bs!11260))

(assert (not bs!11239))

(assert (not b!110946))

(assert (not bs!11255))

(assert (not bs!11249))

(assert (not b!110945))

(assert (not bs!11247))

(assert (not b!110941))

(assert (not bs!11238))

(assert (not b!110940))

(assert (not b!110927))

(assert (not bs!11257))

(assert (not b!110928))

(assert (not b!110950))

(assert (not bs!11243))

(assert (not bs!11248))

(assert (not b!110942))

(assert (not b!110926))

(assert (not b!110952))

(assert (not bs!11236))

(assert (not bs!11261))

(assert (not bs!11262))

(assert (not start!11420))

(assert (not bs!11241))

(assert (not b!110956))

(assert (not b!110948))

(assert (not b!110954))

(assert (not bs!11253))

(assert (not b!110957))

(assert (not b!110951))

(assert (not b!110929))

(assert (not b!110944))

(assert (not b!110947))

(assert (not bs!11245))

(assert (not bs!11259))

(assert (not b!110955))

(assert (not b!110938))

(assert (not bs!11242))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!11305 () Bool)

(assert (= bs!11305 (and m!101314 b!110942)))

(assert (=> bs!11305 m!101314))

(assert (=> bs!11305 m!101314))

(declare-fun bs!11306 () Bool)

(assert (= bs!11306 (and m!101310 m!101314 b!110943)))

(declare-fun m!101380 () Bool)

(assert (=> bs!11306 m!101380))

(assert (=> bs!11306 m!101314))

(declare-fun bs!11307 () Bool)

(assert (= bs!11307 (and m!101310 b!110944)))

(assert (=> bs!11307 m!101380))

(assert (=> bs!11307 m!101380))

(declare-fun bs!11308 () Bool)

(assert (= bs!11308 (and m!101310 m!101314 b!110945)))

(assert (=> bs!11308 m!101314))

(assert (=> bs!11308 m!101380))

(declare-fun bs!11309 () Bool)

(assert (= bs!11309 (and m!101324 m!101310 b!110946)))

(assert (=> bs!11309 m!101324))

(assert (=> bs!11309 m!101380))

(declare-fun bs!11310 () Bool)

(assert (= bs!11310 (and m!101324 m!101314 b!110947)))

(assert (=> bs!11310 m!101324))

(assert (=> bs!11310 m!101314))

(declare-fun bs!11311 () Bool)

(assert (= bs!11311 (and m!101324 b!110948)))

(assert (=> bs!11311 m!101324))

(assert (=> bs!11311 m!101324))

(declare-fun bs!11312 () Bool)

(assert (= bs!11312 (and m!101324 m!101310 b!110949)))

(assert (=> bs!11312 m!101380))

(assert (=> bs!11312 m!101324))

(declare-fun bs!11313 () Bool)

(assert (= bs!11313 (and m!101324 m!101314 b!110950)))

(assert (=> bs!11313 m!101314))

(assert (=> bs!11313 m!101324))

(declare-fun bs!11314 () Bool)

(assert (= bs!11314 (and m!101326 m!101310 b!110951)))

(assert (=> bs!11314 m!101326))

(assert (=> bs!11314 m!101380))

(declare-fun bs!11315 () Bool)

(assert (= bs!11315 (and m!101326 m!101314 b!110952)))

(assert (=> bs!11315 m!101326))

(assert (=> bs!11315 m!101314))

(declare-fun bs!11316 () Bool)

(assert (= bs!11316 (and m!101326 m!101324 m!101316 b!110953)))

(assert (=> bs!11316 m!101326))

(assert (=> bs!11316 m!101324))

(declare-fun bs!11317 () Bool)

(assert (= bs!11317 (and m!101326 b!110954)))

(assert (=> bs!11317 m!101326))

(assert (=> bs!11317 m!101326))

(declare-fun bs!11318 () Bool)

(assert (= bs!11318 (and m!101326 m!101310 b!110955)))

(assert (=> bs!11318 m!101380))

(assert (=> bs!11318 m!101326))

(declare-fun bs!11319 () Bool)

(assert (= bs!11319 (and m!101326 m!101314 b!110956)))

(assert (=> bs!11319 m!101314))

(assert (=> bs!11319 m!101326))

(declare-fun bs!11320 () Bool)

(assert (= bs!11320 (and m!101326 m!101324 m!101316 b!110957)))

(assert (=> bs!11320 m!101324))

(assert (=> bs!11320 m!101326))

(push 1)

(assert (not b!110943))

(assert (not b!110939))

(assert (not b!110949))

(assert (not b!110953))

(assert (not bs!11260))

(assert (not bs!11239))

(assert (not b!110946))

(assert (not bs!11255))

(assert (not bs!11249))

(assert (not b!110945))

(assert (not bs!11247))

(assert (not b!110941))

(assert (not bs!11238))

(assert (not b!110940))

(assert (not b!110927))

(assert (not bs!11257))

(assert (not b!110928))

(assert (not b!110950))

(assert (not bs!11243))

(assert (not bs!11248))

(assert (not b!110942))

(assert (not b!110926))

(assert (not b!110952))

(assert (not bs!11236))

(assert (not bs!11261))

(assert (not bs!11262))

(assert (not start!11420))

(assert (not bs!11241))

(assert (not b!110956))

(assert (not b!110948))

(assert (not b!110954))

(assert (not bs!11253))

(assert (not b!110957))

(assert (not b!110951))

(assert (not b!110929))

(assert (not b!110944))

(assert (not b!110947))

(assert (not bs!11245))

(assert (not bs!11259))

(assert (not b!110955))

(assert (not b!110938))

(assert (not bs!11242))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!27874 () Bool)

(declare-fun efficientList!48 (BalanceConc!1124) List!1794)

(assert (=> d!27874 (= (toValue!37 thiss!5344 x!32219) (EOFValue!382 (efficientList!48 x!32219)))))

(declare-fun bs!11321 () Bool)

(assert (= bs!11321 d!27874))

(declare-fun m!101382 () Bool)

(assert (=> bs!11321 m!101382))

(assert (=> b!110939 d!27874))

(declare-fun d!27878 () Bool)

(assert (=> d!27878 (= (toValue!37 thiss!5344 x!32220) (EOFValue!382 (efficientList!48 x!32220)))))

(declare-fun bs!11322 () Bool)

(assert (= bs!11322 d!27878))

(declare-fun m!101384 () Bool)

(assert (=> bs!11322 m!101384))

(assert (=> b!110939 d!27878))

(declare-fun d!27880 () Bool)

(declare-fun list!771 (Conc!560) List!1794)

(assert (=> d!27880 (= (list!768 x!32219) (list!771 (c!26326 x!32219)))))

(declare-fun bs!11323 () Bool)

(assert (= bs!11323 d!27880))

(declare-fun m!101386 () Bool)

(assert (=> bs!11323 m!101386))

(assert (=> bs!11247 d!27880))

(declare-fun d!27882 () Bool)

(assert (=> d!27882 (= (list!768 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!32218))) (list!771 (c!26326 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!32218)))))))

(declare-fun bs!11324 () Bool)

(assert (= bs!11324 d!27882))

(declare-fun m!101388 () Bool)

(assert (=> bs!11324 m!101388))

(assert (=> bs!11236 d!27882))

(declare-fun d!27884 () Bool)

(declare-fun c!26331 () Bool)

(assert (=> d!27884 (= c!26331 (is-EOFValue!382 (toValue!37 thiss!5344 x!32218)))))

(declare-fun e!62059 () BalanceConc!1124)

(assert (=> d!27884 (= (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!32218)) e!62059)))

(declare-fun b!111018 () Bool)

(declare-fun seqFromList!215 (List!1794) BalanceConc!1124)

(assert (=> b!111018 (= e!62059 (seqFromList!215 (value!14101 (toValue!37 thiss!5344 x!32218))))))

(declare-fun b!111019 () Bool)

(assert (=> b!111019 (= e!62059 (BalanceConc!1125 Empty!560))))

(assert (= (and d!27884 c!26331) b!111018))

(assert (= (and d!27884 (not c!26331)) b!111019))

(declare-fun m!101394 () Bool)

(assert (=> b!111018 m!101394))

(assert (=> bs!11236 d!27884))

(declare-fun d!27890 () Bool)

(assert (=> d!27890 (= (toValue!37 thiss!5344 x!32218) (EOFValue!382 (efficientList!48 x!32218)))))

(declare-fun bs!11327 () Bool)

(assert (= bs!11327 d!27890))

(declare-fun m!101396 () Bool)

(assert (=> bs!11327 m!101396))

(assert (=> bs!11236 d!27890))

(declare-fun d!27892 () Bool)

(assert (=> d!27892 (= (list!768 x!32218) (list!771 (c!26326 x!32218)))))

(declare-fun bs!11328 () Bool)

(assert (= bs!11328 d!27892))

(declare-fun m!101398 () Bool)

(assert (=> bs!11328 m!101398))

(assert (=> bs!11236 d!27892))

(declare-fun d!27894 () Bool)

(assert (=> d!27894 (= (list!768 x!32220) (list!771 (c!26326 x!32220)))))

(declare-fun bs!11329 () Bool)

(assert (= bs!11329 d!27894))

(declare-fun m!101400 () Bool)

(assert (=> bs!11329 m!101400))

(assert (=> bs!11253 d!27894))

(assert (=> bs!11253 d!27882))

(declare-fun d!27896 () Bool)

(declare-fun c!26334 () Bool)

(assert (=> d!27896 (= c!26334 (is-Node!560 (c!26326 x!32220)))))

(declare-fun e!62064 () Bool)

(assert (=> d!27896 (= (inv!2270 (c!26326 x!32220)) e!62064)))

(declare-fun b!111026 () Bool)

(declare-fun inv!2276 (Conc!560) Bool)

(assert (=> b!111026 (= e!62064 (inv!2276 (c!26326 x!32220)))))

(declare-fun b!111027 () Bool)

(declare-fun e!62065 () Bool)

(assert (=> b!111027 (= e!62064 e!62065)))

(declare-fun res!53602 () Bool)

(assert (=> b!111027 (= res!53602 (not (is-Leaf!922 (c!26326 x!32220))))))

(assert (=> b!111027 (=> res!53602 e!62065)))

(declare-fun b!111028 () Bool)

(declare-fun inv!2277 (Conc!560) Bool)

(assert (=> b!111028 (= e!62065 (inv!2277 (c!26326 x!32220)))))

(assert (= (and d!27896 c!26334) b!111026))

(assert (= (and d!27896 (not c!26334)) b!111027))

(assert (= (and b!111027 (not res!53602)) b!111028))

(declare-fun m!101412 () Bool)

(assert (=> b!111026 m!101412))

(declare-fun m!101414 () Bool)

(assert (=> b!111028 m!101414))

(assert (=> b!110941 d!27896))

(declare-fun bs!11350 () Bool)

(declare-fun d!27904 () Bool)

(assert (= bs!11350 (and d!27904 start!11420)))

(declare-fun lambda!2953 () Int)

(assert (=> bs!11350 (not (= lambda!2953 lambda!2911))))

(assert (=> d!27904 true))

(declare-fun order!1123 () Int)

(declare-fun order!1121 () Int)

(declare-fun dynLambda!738 (Int Int) Int)

(declare-fun dynLambda!739 (Int Int) Int)

(assert (=> d!27904 (< (dynLambda!738 order!1121 lambda!2912) (dynLambda!739 order!1123 lambda!2953))))

(assert (=> d!27904 true))

(declare-fun order!1125 () Int)

(declare-fun dynLambda!740 (Int Int) Int)

(assert (=> d!27904 (< (dynLambda!740 order!1125 lambda!2913) (dynLambda!739 order!1123 lambda!2953))))

(assert (=> d!27904 (= (semiInverseModEq!114 lambda!2912 lambda!2913) (Forall!97 lambda!2953))))

(declare-fun bs!11351 () Bool)

(assert (= bs!11351 d!27904))

(declare-fun m!101416 () Bool)

(assert (=> bs!11351 m!101416))

(assert (=> b!110926 d!27904))

(declare-fun d!27906 () Bool)

(declare-fun choose!1495 (Int) Bool)

(assert (=> d!27906 (= (Forall!97 lambda!2911) (choose!1495 lambda!2911))))

(declare-fun bs!11352 () Bool)

(assert (= bs!11352 d!27906))

(declare-fun m!101418 () Bool)

(assert (=> bs!11352 m!101418))

(assert (=> b!110926 d!27906))

(assert (=> bs!11242 d!27892))

(assert (=> bs!11242 d!27882))

(declare-fun d!27908 () Bool)

(declare-fun c!26335 () Bool)

(assert (=> d!27908 (= c!26335 (is-Node!560 (c!26326 x!32219)))))

(declare-fun e!62066 () Bool)

(assert (=> d!27908 (= (inv!2270 (c!26326 x!32219)) e!62066)))

(declare-fun b!111033 () Bool)

(assert (=> b!111033 (= e!62066 (inv!2276 (c!26326 x!32219)))))

(declare-fun b!111034 () Bool)

(declare-fun e!62067 () Bool)

(assert (=> b!111034 (= e!62066 e!62067)))

(declare-fun res!53603 () Bool)

(assert (=> b!111034 (= res!53603 (not (is-Leaf!922 (c!26326 x!32219))))))

(assert (=> b!111034 (=> res!53603 e!62067)))

(declare-fun b!111035 () Bool)

(assert (=> b!111035 (= e!62067 (inv!2277 (c!26326 x!32219)))))

(assert (= (and d!27908 c!26335) b!111033))

(assert (= (and d!27908 (not c!26335)) b!111034))

(assert (= (and b!111034 (not res!53603)) b!111035))

(declare-fun m!101420 () Bool)

(assert (=> b!111033 m!101420))

(declare-fun m!101422 () Bool)

(assert (=> b!111035 m!101422))

(assert (=> b!110940 d!27908))

(assert (=> bs!11259 d!27894))

(declare-fun d!27910 () Bool)

(declare-fun c!26336 () Bool)

(assert (=> d!27910 (= c!26336 (is-Node!560 (c!26326 x!32218)))))

(declare-fun e!62068 () Bool)

(assert (=> d!27910 (= (inv!2270 (c!26326 x!32218)) e!62068)))

(declare-fun b!111036 () Bool)

(assert (=> b!111036 (= e!62068 (inv!2276 (c!26326 x!32218)))))

(declare-fun b!111037 () Bool)

(declare-fun e!62069 () Bool)

(assert (=> b!111037 (= e!62068 e!62069)))

(declare-fun res!53604 () Bool)

(assert (=> b!111037 (= res!53604 (not (is-Leaf!922 (c!26326 x!32218))))))

(assert (=> b!111037 (=> res!53604 e!62069)))

(declare-fun b!111038 () Bool)

(assert (=> b!111038 (= e!62069 (inv!2277 (c!26326 x!32218)))))

(assert (= (and d!27910 c!26336) b!111036))

(assert (= (and d!27910 (not c!26336)) b!111037))

(assert (= (and b!111037 (not res!53604)) b!111038))

(declare-fun m!101424 () Bool)

(assert (=> b!111036 m!101424))

(declare-fun m!101426 () Bool)

(assert (=> b!111038 m!101426))

(assert (=> b!110938 d!27910))

(assert (=> b!110957 d!27874))

(assert (=> b!110957 d!27878))

(declare-fun d!27912 () Bool)

(assert (=> d!27912 (= (toValue!37 thiss!5344 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!32218))) (EOFValue!382 (efficientList!48 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!32218)))))))

(declare-fun bs!11353 () Bool)

(assert (= bs!11353 d!27912))

(assert (=> bs!11353 m!101308))

(declare-fun m!101428 () Bool)

(assert (=> bs!11353 m!101428))

(assert (=> b!110944 d!27912))

(assert (=> b!110953 d!27878))

(assert (=> b!110953 d!27874))

(assert (=> bs!11241 d!27882))

(assert (=> bs!11262 d!27880))

(assert (=> bs!11262 d!27894))

(assert (=> b!110947 d!27874))

(assert (=> b!110947 d!27890))

(assert (=> bs!11257 d!27894))

(assert (=> bs!11257 d!27880))

(assert (=> b!110950 d!27890))

(assert (=> b!110950 d!27874))

(assert (=> b!110956 d!27890))

(assert (=> b!110956 d!27878))

(assert (=> bs!11245 d!27880))

(assert (=> bs!11245 d!27892))

(assert (=> start!11420 d!27882))

(declare-fun d!27914 () Bool)

(declare-fun isBalanced!161 (Conc!560) Bool)

(assert (=> d!27914 (= (inv!2271 x!32218) (isBalanced!161 (c!26326 x!32218)))))

(declare-fun bs!11354 () Bool)

(assert (= bs!11354 d!27914))

(declare-fun m!101430 () Bool)

(assert (=> bs!11354 m!101430))

(assert (=> start!11420 d!27914))

(assert (=> start!11420 d!27884))

(assert (=> start!11420 d!27892))

(assert (=> start!11420 d!27890))

(assert (=> start!11420 d!27906))

(assert (=> bs!11261 d!27892))

(assert (=> bs!11261 d!27894))

(assert (=> b!110946 d!27874))

(assert (=> b!110946 d!27912))

(assert (=> b!110943 d!27912))

(assert (=> b!110943 d!27890))

(assert (=> bs!11249 d!27892))

(assert (=> bs!11249 d!27880))

(assert (=> b!110955 d!27912))

(assert (=> b!110955 d!27878))

(assert (=> b!110952 d!27878))

(assert (=> b!110952 d!27890))

(assert (=> bs!11239 d!27882))

(assert (=> bs!11239 d!27892))

(assert (=> b!110949 d!27912))

(assert (=> b!110949 d!27874))

(assert (=> bs!11248 d!27882))

(assert (=> bs!11248 d!27880))

(assert (=> bs!11260 d!27882))

(assert (=> bs!11260 d!27894))

(declare-fun d!27916 () Bool)

(declare-fun res!53607 () Bool)

(declare-fun e!62072 () Bool)

(assert (=> d!27916 (=> (not res!53607) (not e!62072))))

(assert (=> d!27916 (= res!53607 (semiInverseModEq!114 (toChars!833 (TokenValueInjection!557 lambda!2913 lambda!2912)) (toValue!974 (TokenValueInjection!557 lambda!2913 lambda!2912))))))

(assert (=> d!27916 (= (inv!2272 (TokenValueInjection!557 lambda!2913 lambda!2912)) e!62072)))

(declare-fun b!111041 () Bool)

(assert (=> b!111041 (= e!62072 (equivClasses!101 (toChars!833 (TokenValueInjection!557 lambda!2913 lambda!2912)) (toValue!974 (TokenValueInjection!557 lambda!2913 lambda!2912))))))

(assert (= (and d!27916 res!53607) b!111041))

(declare-fun m!101432 () Bool)

(assert (=> d!27916 m!101432))

(declare-fun m!101434 () Bool)

(assert (=> b!111041 m!101434))

(assert (=> b!110929 d!27916))

(assert (=> bs!11243 d!27880))

(assert (=> bs!11243 d!27882))

(assert (=> bs!11255 d!27894))

(assert (=> bs!11255 d!27892))

(assert (=> b!110942 d!27890))

(assert (=> b!110948 d!27874))

(declare-fun d!27918 () Bool)

(assert (=> d!27918 (= (inv!2271 x!32219) (isBalanced!161 (c!26326 x!32219)))))

(declare-fun bs!11355 () Bool)

(assert (= bs!11355 d!27918))

(declare-fun m!101436 () Bool)

(assert (=> bs!11355 m!101436))

(assert (=> b!110927 d!27918))

(assert (=> b!110927 d!27880))

(declare-fun d!27920 () Bool)

(assert (=> d!27920 (= (inv!2271 x!32220) (isBalanced!161 (c!26326 x!32220)))))

(declare-fun bs!11356 () Bool)

(assert (= bs!11356 d!27920))

(declare-fun m!101438 () Bool)

(assert (=> bs!11356 m!101438))

(assert (=> b!110927 d!27920))

(assert (=> b!110927 d!27894))

(declare-fun d!27922 () Bool)

(declare-fun choose!1496 (Int) Bool)

(assert (=> d!27922 (= (Forall2!77 lambda!2914) (choose!1496 lambda!2914))))

(declare-fun bs!11357 () Bool)

(assert (= bs!11357 d!27922))

(declare-fun m!101440 () Bool)

(assert (=> bs!11357 m!101440))

(assert (=> b!110927 d!27922))

(assert (=> b!110951 d!27878))

(assert (=> b!110951 d!27912))

(assert (=> b!110954 d!27878))

(assert (=> b!110945 d!27890))

(assert (=> b!110945 d!27912))

(declare-fun bs!11358 () Bool)

(declare-fun d!27924 () Bool)

(assert (= bs!11358 (and d!27924 b!110927)))

(declare-fun lambda!2956 () Int)

(assert (=> bs!11358 (not (= lambda!2956 lambda!2914))))

(assert (=> d!27924 true))

(declare-fun order!1127 () Int)

(declare-fun dynLambda!741 (Int Int) Int)

(assert (=> d!27924 (< (dynLambda!740 order!1125 lambda!2913) (dynLambda!741 order!1127 lambda!2956))))

(assert (=> d!27924 (= (equivClasses!101 lambda!2912 lambda!2913) (Forall2!77 lambda!2956))))

(declare-fun bs!11359 () Bool)

(assert (= bs!11359 d!27924))

(declare-fun m!101442 () Bool)

(assert (=> bs!11359 m!101442))

(assert (=> b!110928 d!27924))

(assert (=> b!110928 d!27922))

(assert (=> bs!11238 d!27892))

(declare-fun b!111052 () Bool)

(declare-fun e!62079 () Bool)

(declare-fun tp!59860 () Bool)

(declare-fun tp!59861 () Bool)

(assert (=> b!111052 (= e!62079 (and (inv!2270 (left!1525 (c!26326 x!32220))) tp!59860 (inv!2270 (right!1855 (c!26326 x!32220))) tp!59861))))

(declare-fun b!111053 () Bool)

(declare-fun inv!2278 (IArray!1121) Bool)

(assert (=> b!111053 (= e!62079 (inv!2278 (xs!3155 (c!26326 x!32220))))))

(assert (=> b!110941 (= tp!59846 (and (inv!2270 (c!26326 x!32220)) e!62079))))

(assert (= (and b!110941 (is-Node!560 (c!26326 x!32220))) b!111052))

(assert (= (and b!110941 (is-Leaf!922 (c!26326 x!32220))) b!111053))

(declare-fun m!101444 () Bool)

(assert (=> b!111052 m!101444))

(declare-fun m!101446 () Bool)

(assert (=> b!111052 m!101446))

(declare-fun m!101448 () Bool)

(assert (=> b!111053 m!101448))

(assert (=> b!110941 m!101330))

(declare-fun tp!59863 () Bool)

(declare-fun e!62081 () Bool)

(declare-fun tp!59862 () Bool)

(declare-fun b!111054 () Bool)

(assert (=> b!111054 (= e!62081 (and (inv!2270 (left!1525 (c!26326 x!32219))) tp!59862 (inv!2270 (right!1855 (c!26326 x!32219))) tp!59863))))

(declare-fun b!111055 () Bool)

(assert (=> b!111055 (= e!62081 (inv!2278 (xs!3155 (c!26326 x!32219))))))

(assert (=> b!110940 (= tp!59845 (and (inv!2270 (c!26326 x!32219)) e!62081))))

(assert (= (and b!110940 (is-Node!560 (c!26326 x!32219))) b!111054))

(assert (= (and b!110940 (is-Leaf!922 (c!26326 x!32219))) b!111055))

(declare-fun m!101450 () Bool)

(assert (=> b!111054 m!101450))

(declare-fun m!101452 () Bool)

(assert (=> b!111054 m!101452))

(declare-fun m!101454 () Bool)

(assert (=> b!111055 m!101454))

(assert (=> b!110940 m!101328))

(declare-fun tp!59864 () Bool)

(declare-fun b!111056 () Bool)

(declare-fun tp!59865 () Bool)

(declare-fun e!62083 () Bool)

(assert (=> b!111056 (= e!62083 (and (inv!2270 (left!1525 (c!26326 x!32218))) tp!59864 (inv!2270 (right!1855 (c!26326 x!32218))) tp!59865))))

(declare-fun b!111057 () Bool)

(assert (=> b!111057 (= e!62083 (inv!2278 (xs!3155 (c!26326 x!32218))))))

(assert (=> b!110938 (= tp!59844 (and (inv!2270 (c!26326 x!32218)) e!62083))))

(assert (= (and b!110938 (is-Node!560 (c!26326 x!32218))) b!111056))

(assert (= (and b!110938 (is-Leaf!922 (c!26326 x!32218))) b!111057))

(declare-fun m!101456 () Bool)

(assert (=> b!111056 m!101456))

(declare-fun m!101458 () Bool)

(assert (=> b!111056 m!101458))

(declare-fun m!101460 () Bool)

(assert (=> b!111057 m!101460))

(assert (=> b!110938 m!101304))

(push 1)

(assert (not d!27924))

(assert (not d!27894))

(assert (not d!27916))

(assert (not b!111018))

(assert (not b!111052))

(assert (not d!27878))

(assert (not d!27904))

(assert (not d!27912))

(assert (not b!111053))

(assert (not d!27918))

(assert (not d!27882))

(assert (not b!111038))

(assert (not b!111033))

(assert (not d!27920))

(assert (not b!111054))

(assert (not d!27914))

(assert (not b!111035))

(assert (not b!111036))

(assert (not d!27906))

(assert (not d!27874))

(assert (not b!111028))

(assert (not b!111056))

(assert (not b!111041))

(assert (not b!111026))

(assert (not b!110941))

(assert (not d!27922))

(assert (not b!110938))

(assert (not d!27892))

(assert (not b!111057))

(assert (not b!110940))

(assert (not d!27890))

(assert (not b!111055))

(assert (not d!27880))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

