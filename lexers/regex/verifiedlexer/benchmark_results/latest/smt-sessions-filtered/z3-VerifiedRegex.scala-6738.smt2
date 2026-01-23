; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!352086 () Bool)

(assert start!352086)

(declare-fun b!3750107 () Bool)

(declare-fun b_free!100305 () Bool)

(declare-fun b_next!101009 () Bool)

(assert (=> b!3750107 (= b_free!100305 (not b_next!101009))))

(declare-fun tp!1144964 () Bool)

(declare-fun b_and!278635 () Bool)

(assert (=> b!3750107 (= tp!1144964 b_and!278635)))

(declare-fun b_free!100307 () Bool)

(declare-fun b_next!101011 () Bool)

(assert (=> b!3750107 (= b_free!100307 (not b_next!101011))))

(declare-fun tp!1144968 () Bool)

(declare-fun b_and!278637 () Bool)

(assert (=> b!3750107 (= tp!1144968 b_and!278637)))

(declare-fun b!3750102 () Bool)

(declare-fun b_free!100309 () Bool)

(declare-fun b_next!101013 () Bool)

(assert (=> b!3750102 (= b_free!100309 (not b_next!101013))))

(declare-fun tp!1144969 () Bool)

(declare-fun b_and!278639 () Bool)

(assert (=> b!3750102 (= tp!1144969 b_and!278639)))

(declare-fun b_free!100311 () Bool)

(declare-fun b_next!101015 () Bool)

(assert (=> b!3750102 (= b_free!100311 (not b_next!101015))))

(declare-fun tp!1144966 () Bool)

(declare-fun b_and!278641 () Bool)

(assert (=> b!3750102 (= tp!1144966 b_and!278641)))

(declare-fun b!3750101 () Bool)

(declare-fun b_free!100313 () Bool)

(declare-fun b_next!101017 () Bool)

(assert (=> b!3750101 (= b_free!100313 (not b_next!101017))))

(declare-fun tp!1144972 () Bool)

(declare-fun b_and!278643 () Bool)

(assert (=> b!3750101 (= tp!1144972 b_and!278643)))

(declare-fun b_free!100315 () Bool)

(declare-fun b_next!101019 () Bool)

(assert (=> b!3750101 (= b_free!100315 (not b_next!101019))))

(declare-fun tp!1144970 () Bool)

(declare-fun b_and!278645 () Bool)

(assert (=> b!3750101 (= tp!1144970 b_and!278645)))

(declare-fun e!2319516 () Bool)

(assert (=> b!3750101 (= e!2319516 (and tp!1144972 tp!1144970))))

(declare-fun e!2319519 () Bool)

(assert (=> b!3750102 (= e!2319519 (and tp!1144969 tp!1144966))))

(declare-fun e!2319525 () Bool)

(declare-datatypes ((C!22216 0))(
  ( (C!22217 (val!13156 Int)) )
))
(declare-datatypes ((List!40083 0))(
  ( (Nil!39959) (Cons!39959 (h!45379 C!22216) (t!302944 List!40083)) )
))
(declare-datatypes ((IArray!24423 0))(
  ( (IArray!24424 (innerList!12269 List!40083)) )
))
(declare-datatypes ((String!45325 0))(
  ( (String!45326 (value!194674 String)) )
))
(declare-datatypes ((Regex!11015 0))(
  ( (ElementMatch!11015 (c!649150 C!22216)) (Concat!17355 (regOne!22542 Regex!11015) (regTwo!22542 Regex!11015)) (EmptyExpr!11015) (Star!11015 (reg!11344 Regex!11015)) (EmptyLang!11015) (Union!11015 (regOne!22543 Regex!11015) (regTwo!22543 Regex!11015)) )
))
(declare-datatypes ((List!40084 0))(
  ( (Nil!39960) (Cons!39960 (h!45380 (_ BitVec 16)) (t!302945 List!40084)) )
))
(declare-datatypes ((TokenValue!6340 0))(
  ( (FloatLiteralValue!12680 (text!44825 List!40084)) (TokenValueExt!6339 (__x!24897 Int)) (Broken!31700 (value!194675 List!40084)) (Object!6463) (End!6340) (Def!6340) (Underscore!6340) (Match!6340) (Else!6340) (Error!6340) (Case!6340) (If!6340) (Extends!6340) (Abstract!6340) (Class!6340) (Val!6340) (DelimiterValue!12680 (del!6400 List!40084)) (KeywordValue!6346 (value!194676 List!40084)) (CommentValue!12680 (value!194677 List!40084)) (WhitespaceValue!12680 (value!194678 List!40084)) (IndentationValue!6340 (value!194679 List!40084)) (String!45327) (Int32!6340) (Broken!31701 (value!194680 List!40084)) (Boolean!6341) (Unit!57719) (OperatorValue!6343 (op!6400 List!40084)) (IdentifierValue!12680 (value!194681 List!40084)) (IdentifierValue!12681 (value!194682 List!40084)) (WhitespaceValue!12681 (value!194683 List!40084)) (True!12680) (False!12680) (Broken!31702 (value!194684 List!40084)) (Broken!31703 (value!194685 List!40084)) (True!12681) (RightBrace!6340) (RightBracket!6340) (Colon!6340) (Null!6340) (Comma!6340) (LeftBracket!6340) (False!12681) (LeftBrace!6340) (ImaginaryLiteralValue!6340 (text!44826 List!40084)) (StringLiteralValue!19020 (value!194686 List!40084)) (EOFValue!6340 (value!194687 List!40084)) (IdentValue!6340 (value!194688 List!40084)) (DelimiterValue!12681 (value!194689 List!40084)) (DedentValue!6340 (value!194690 List!40084)) (NewLineValue!6340 (value!194691 List!40084)) (IntegerValue!19020 (value!194692 (_ BitVec 32)) (text!44827 List!40084)) (IntegerValue!19021 (value!194693 Int) (text!44828 List!40084)) (Times!6340) (Or!6340) (Equal!6340) (Minus!6340) (Broken!31704 (value!194694 List!40084)) (And!6340) (Div!6340) (LessEqual!6340) (Mod!6340) (Concat!17356) (Not!6340) (Plus!6340) (SpaceValue!6340 (value!194695 List!40084)) (IntegerValue!19022 (value!194696 Int) (text!44829 List!40084)) (StringLiteralValue!19021 (text!44830 List!40084)) (FloatLiteralValue!12681 (text!44831 List!40084)) (BytesLiteralValue!6340 (value!194697 List!40084)) (CommentValue!12681 (value!194698 List!40084)) (StringLiteralValue!19022 (value!194699 List!40084)) (ErrorTokenValue!6340 (msg!6401 List!40084)) )
))
(declare-datatypes ((Conc!12209 0))(
  ( (Node!12209 (left!30919 Conc!12209) (right!31249 Conc!12209) (csize!24648 Int) (cheight!12420 Int)) (Leaf!18948 (xs!15411 IArray!24423) (csize!24649 Int)) (Empty!12209) )
))
(declare-datatypes ((BalanceConc!24032 0))(
  ( (BalanceConc!24033 (c!649151 Conc!12209)) )
))
(declare-datatypes ((TokenValueInjection!12108 0))(
  ( (TokenValueInjection!12109 (toValue!8458 Int) (toChars!8317 Int)) )
))
(declare-datatypes ((Rule!12020 0))(
  ( (Rule!12021 (regex!6110 Regex!11015) (tag!6970 String!45325) (isSeparator!6110 Bool) (transformation!6110 TokenValueInjection!12108)) )
))
(declare-datatypes ((Token!11358 0))(
  ( (Token!11359 (value!194700 TokenValue!6340) (rule!8874 Rule!12020) (size!30080 Int) (originalCharacters!6710 List!40083)) )
))
(declare-datatypes ((List!40085 0))(
  ( (Nil!39961) (Cons!39961 (h!45381 Token!11358) (t!302946 List!40085)) )
))
(declare-fun tokens!606 () List!40085)

(declare-fun b!3750103 () Bool)

(declare-fun e!2319521 () Bool)

(declare-fun tp!1144967 () Bool)

(declare-fun inv!21 (TokenValue!6340) Bool)

(assert (=> b!3750103 (= e!2319521 (and (inv!21 (value!194700 (h!45381 tokens!606))) e!2319525 tp!1144967))))

(declare-fun b!3750104 () Bool)

(declare-fun e!2319527 () Bool)

(declare-fun e!2319523 () Bool)

(declare-fun tp!1144965 () Bool)

(assert (=> b!3750104 (= e!2319527 (and e!2319523 tp!1144965))))

(declare-fun b!3750105 () Bool)

(declare-fun res!1519956 () Bool)

(declare-fun e!2319529 () Bool)

(assert (=> b!3750105 (=> (not res!1519956) (not e!2319529))))

(declare-fun t!8579 () Token!11358)

(get-info :version)

(assert (=> b!3750105 (= res!1519956 (and (or (not ((_ is Cons!39961) tokens!606)) (not (= (h!45381 tokens!606) t!8579))) ((_ is Cons!39961) tokens!606)))))

(declare-fun res!1519962 () Bool)

(assert (=> start!352086 (=> (not res!1519962) (not e!2319529))))

(declare-datatypes ((LexerInterface!5699 0))(
  ( (LexerInterfaceExt!5696 (__x!24898 Int)) (Lexer!5697) )
))
(declare-fun thiss!27232 () LexerInterface!5699)

(assert (=> start!352086 (= res!1519962 ((_ is Lexer!5697) thiss!27232))))

(assert (=> start!352086 e!2319529))

(assert (=> start!352086 true))

(assert (=> start!352086 e!2319527))

(declare-fun e!2319528 () Bool)

(assert (=> start!352086 e!2319528))

(declare-fun e!2319517 () Bool)

(declare-fun inv!53467 (Token!11358) Bool)

(assert (=> start!352086 (and (inv!53467 t!8579) e!2319517)))

(declare-fun b!3750106 () Bool)

(declare-fun ListPrimitiveSize!265 (List!40085) Int)

(assert (=> b!3750106 (= e!2319529 (>= (ListPrimitiveSize!265 (t!302946 tokens!606)) (ListPrimitiveSize!265 tokens!606)))))

(declare-fun e!2319530 () Bool)

(assert (=> b!3750107 (= e!2319530 (and tp!1144964 tp!1144968))))

(declare-fun b!3750108 () Bool)

(declare-fun res!1519961 () Bool)

(assert (=> b!3750108 (=> (not res!1519961) (not e!2319529))))

(declare-fun contains!8162 (List!40085 Token!11358) Bool)

(assert (=> b!3750108 (= res!1519961 (contains!8162 (t!302946 tokens!606) t!8579))))

(declare-fun tp!1144960 () Bool)

(declare-fun b!3750109 () Bool)

(declare-fun inv!53464 (String!45325) Bool)

(declare-fun inv!53468 (TokenValueInjection!12108) Bool)

(assert (=> b!3750109 (= e!2319525 (and tp!1144960 (inv!53464 (tag!6970 (rule!8874 (h!45381 tokens!606)))) (inv!53468 (transformation!6110 (rule!8874 (h!45381 tokens!606)))) e!2319519))))

(declare-fun b!3750110 () Bool)

(declare-fun res!1519958 () Bool)

(assert (=> b!3750110 (=> (not res!1519958) (not e!2319529))))

(declare-datatypes ((List!40086 0))(
  ( (Nil!39962) (Cons!39962 (h!45382 Rule!12020) (t!302947 List!40086)) )
))
(declare-fun rules!4236 () List!40086)

(declare-fun isEmpty!23541 (List!40086) Bool)

(assert (=> b!3750110 (= res!1519958 (not (isEmpty!23541 rules!4236)))))

(declare-fun tp!1144961 () Bool)

(declare-fun b!3750111 () Bool)

(assert (=> b!3750111 (= e!2319528 (and (inv!53467 (h!45381 tokens!606)) e!2319521 tp!1144961))))

(declare-fun b!3750112 () Bool)

(declare-fun res!1519960 () Bool)

(assert (=> b!3750112 (=> (not res!1519960) (not e!2319529))))

(declare-fun rulesProduceEachTokenIndividuallyList!1927 (LexerInterface!5699 List!40086 List!40085) Bool)

(assert (=> b!3750112 (= res!1519960 (rulesProduceEachTokenIndividuallyList!1927 thiss!27232 rules!4236 tokens!606))))

(declare-fun b!3750113 () Bool)

(declare-fun res!1519963 () Bool)

(assert (=> b!3750113 (=> (not res!1519963) (not e!2319529))))

(assert (=> b!3750113 (= res!1519963 (contains!8162 tokens!606 t!8579))))

(declare-fun b!3750114 () Bool)

(declare-fun res!1519957 () Bool)

(assert (=> b!3750114 (=> (not res!1519957) (not e!2319529))))

(assert (=> b!3750114 (= res!1519957 (rulesProduceEachTokenIndividuallyList!1927 thiss!27232 rules!4236 (t!302946 tokens!606)))))

(declare-fun e!2319515 () Bool)

(declare-fun b!3750115 () Bool)

(declare-fun tp!1144971 () Bool)

(assert (=> b!3750115 (= e!2319517 (and (inv!21 (value!194700 t!8579)) e!2319515 tp!1144971))))

(declare-fun b!3750116 () Bool)

(declare-fun tp!1144963 () Bool)

(assert (=> b!3750116 (= e!2319523 (and tp!1144963 (inv!53464 (tag!6970 (h!45382 rules!4236))) (inv!53468 (transformation!6110 (h!45382 rules!4236))) e!2319530))))

(declare-fun b!3750117 () Bool)

(declare-fun tp!1144962 () Bool)

(assert (=> b!3750117 (= e!2319515 (and tp!1144962 (inv!53464 (tag!6970 (rule!8874 t!8579))) (inv!53468 (transformation!6110 (rule!8874 t!8579))) e!2319516))))

(declare-fun b!3750118 () Bool)

(declare-fun res!1519959 () Bool)

(assert (=> b!3750118 (=> (not res!1519959) (not e!2319529))))

(declare-fun rulesInvariant!5096 (LexerInterface!5699 List!40086) Bool)

(assert (=> b!3750118 (= res!1519959 (rulesInvariant!5096 thiss!27232 rules!4236))))

(assert (= (and start!352086 res!1519962) b!3750110))

(assert (= (and b!3750110 res!1519958) b!3750118))

(assert (= (and b!3750118 res!1519959) b!3750113))

(assert (= (and b!3750113 res!1519963) b!3750112))

(assert (= (and b!3750112 res!1519960) b!3750105))

(assert (= (and b!3750105 res!1519956) b!3750108))

(assert (= (and b!3750108 res!1519961) b!3750114))

(assert (= (and b!3750114 res!1519957) b!3750106))

(assert (= b!3750116 b!3750107))

(assert (= b!3750104 b!3750116))

(assert (= (and start!352086 ((_ is Cons!39962) rules!4236)) b!3750104))

(assert (= b!3750109 b!3750102))

(assert (= b!3750103 b!3750109))

(assert (= b!3750111 b!3750103))

(assert (= (and start!352086 ((_ is Cons!39961) tokens!606)) b!3750111))

(assert (= b!3750117 b!3750101))

(assert (= b!3750115 b!3750117))

(assert (= start!352086 b!3750115))

(declare-fun m!4241293 () Bool)

(assert (=> b!3750108 m!4241293))

(declare-fun m!4241295 () Bool)

(assert (=> b!3750116 m!4241295))

(declare-fun m!4241297 () Bool)

(assert (=> b!3750116 m!4241297))

(declare-fun m!4241299 () Bool)

(assert (=> b!3750113 m!4241299))

(declare-fun m!4241301 () Bool)

(assert (=> b!3750111 m!4241301))

(declare-fun m!4241303 () Bool)

(assert (=> b!3750114 m!4241303))

(declare-fun m!4241305 () Bool)

(assert (=> b!3750118 m!4241305))

(declare-fun m!4241307 () Bool)

(assert (=> b!3750109 m!4241307))

(declare-fun m!4241309 () Bool)

(assert (=> b!3750109 m!4241309))

(declare-fun m!4241311 () Bool)

(assert (=> b!3750115 m!4241311))

(declare-fun m!4241313 () Bool)

(assert (=> start!352086 m!4241313))

(declare-fun m!4241315 () Bool)

(assert (=> b!3750106 m!4241315))

(declare-fun m!4241317 () Bool)

(assert (=> b!3750106 m!4241317))

(declare-fun m!4241319 () Bool)

(assert (=> b!3750103 m!4241319))

(declare-fun m!4241321 () Bool)

(assert (=> b!3750110 m!4241321))

(declare-fun m!4241323 () Bool)

(assert (=> b!3750112 m!4241323))

(declare-fun m!4241325 () Bool)

(assert (=> b!3750117 m!4241325))

(declare-fun m!4241327 () Bool)

(assert (=> b!3750117 m!4241327))

(check-sat b_and!278643 b_and!278635 (not b_next!101019) (not start!352086) (not b_next!101013) b_and!278639 b_and!278641 (not b!3750110) (not b!3750108) (not b!3750118) (not b_next!101017) (not b!3750117) (not b!3750112) (not b!3750115) (not b!3750106) (not b!3750111) (not b!3750116) (not b!3750103) (not b_next!101015) (not b!3750113) (not b!3750109) (not b_next!101009) b_and!278645 (not b!3750114) (not b_next!101011) (not b!3750104) b_and!278637)
(check-sat b_and!278643 b_and!278635 (not b_next!101019) (not b_next!101015) (not b_next!101013) b_and!278639 b_and!278641 (not b_next!101011) (not b_next!101017) b_and!278637 (not b_next!101009) b_and!278645)
(get-model)

(declare-fun d!1093973 () Bool)

(assert (=> d!1093973 (= (inv!53464 (tag!6970 (rule!8874 (h!45381 tokens!606)))) (= (mod (str.len (value!194674 (tag!6970 (rule!8874 (h!45381 tokens!606))))) 2) 0))))

(assert (=> b!3750109 d!1093973))

(declare-fun d!1093975 () Bool)

(declare-fun res!1519971 () Bool)

(declare-fun e!2319533 () Bool)

(assert (=> d!1093975 (=> (not res!1519971) (not e!2319533))))

(declare-fun semiInverseModEq!2618 (Int Int) Bool)

(assert (=> d!1093975 (= res!1519971 (semiInverseModEq!2618 (toChars!8317 (transformation!6110 (rule!8874 (h!45381 tokens!606)))) (toValue!8458 (transformation!6110 (rule!8874 (h!45381 tokens!606))))))))

(assert (=> d!1093975 (= (inv!53468 (transformation!6110 (rule!8874 (h!45381 tokens!606)))) e!2319533)))

(declare-fun b!3750121 () Bool)

(declare-fun equivClasses!2517 (Int Int) Bool)

(assert (=> b!3750121 (= e!2319533 (equivClasses!2517 (toChars!8317 (transformation!6110 (rule!8874 (h!45381 tokens!606)))) (toValue!8458 (transformation!6110 (rule!8874 (h!45381 tokens!606))))))))

(assert (= (and d!1093975 res!1519971) b!3750121))

(declare-fun m!4241329 () Bool)

(assert (=> d!1093975 m!4241329))

(declare-fun m!4241331 () Bool)

(assert (=> b!3750121 m!4241331))

(assert (=> b!3750109 d!1093975))

(declare-fun d!1093977 () Bool)

(assert (=> d!1093977 (= (isEmpty!23541 rules!4236) ((_ is Nil!39962) rules!4236))))

(assert (=> b!3750110 d!1093977))

(declare-fun d!1093979 () Bool)

(declare-fun res!1519979 () Bool)

(declare-fun e!2319536 () Bool)

(assert (=> d!1093979 (=> (not res!1519979) (not e!2319536))))

(declare-fun isEmpty!23543 (List!40083) Bool)

(assert (=> d!1093979 (= res!1519979 (not (isEmpty!23543 (originalCharacters!6710 (h!45381 tokens!606)))))))

(assert (=> d!1093979 (= (inv!53467 (h!45381 tokens!606)) e!2319536)))

(declare-fun b!3750126 () Bool)

(declare-fun res!1519980 () Bool)

(assert (=> b!3750126 (=> (not res!1519980) (not e!2319536))))

(declare-fun list!14713 (BalanceConc!24032) List!40083)

(declare-fun dynLambda!17262 (Int TokenValue!6340) BalanceConc!24032)

(assert (=> b!3750126 (= res!1519980 (= (originalCharacters!6710 (h!45381 tokens!606)) (list!14713 (dynLambda!17262 (toChars!8317 (transformation!6110 (rule!8874 (h!45381 tokens!606)))) (value!194700 (h!45381 tokens!606))))))))

(declare-fun b!3750127 () Bool)

(declare-fun size!30082 (List!40083) Int)

(assert (=> b!3750127 (= e!2319536 (= (size!30080 (h!45381 tokens!606)) (size!30082 (originalCharacters!6710 (h!45381 tokens!606)))))))

(assert (= (and d!1093979 res!1519979) b!3750126))

(assert (= (and b!3750126 res!1519980) b!3750127))

(declare-fun b_lambda!109931 () Bool)

(assert (=> (not b_lambda!109931) (not b!3750126)))

(declare-fun t!302949 () Bool)

(declare-fun tb!214557 () Bool)

(assert (=> (and b!3750107 (= (toChars!8317 (transformation!6110 (h!45382 rules!4236))) (toChars!8317 (transformation!6110 (rule!8874 (h!45381 tokens!606))))) t!302949) tb!214557))

(declare-fun b!3750132 () Bool)

(declare-fun e!2319539 () Bool)

(declare-fun tp!1144975 () Bool)

(declare-fun inv!53471 (Conc!12209) Bool)

(assert (=> b!3750132 (= e!2319539 (and (inv!53471 (c!649151 (dynLambda!17262 (toChars!8317 (transformation!6110 (rule!8874 (h!45381 tokens!606)))) (value!194700 (h!45381 tokens!606))))) tp!1144975))))

(declare-fun result!261958 () Bool)

(declare-fun inv!53472 (BalanceConc!24032) Bool)

(assert (=> tb!214557 (= result!261958 (and (inv!53472 (dynLambda!17262 (toChars!8317 (transformation!6110 (rule!8874 (h!45381 tokens!606)))) (value!194700 (h!45381 tokens!606)))) e!2319539))))

(assert (= tb!214557 b!3750132))

(declare-fun m!4241333 () Bool)

(assert (=> b!3750132 m!4241333))

(declare-fun m!4241335 () Bool)

(assert (=> tb!214557 m!4241335))

(assert (=> b!3750126 t!302949))

(declare-fun b_and!278647 () Bool)

(assert (= b_and!278637 (and (=> t!302949 result!261958) b_and!278647)))

(declare-fun t!302951 () Bool)

(declare-fun tb!214559 () Bool)

(assert (=> (and b!3750102 (= (toChars!8317 (transformation!6110 (rule!8874 (h!45381 tokens!606)))) (toChars!8317 (transformation!6110 (rule!8874 (h!45381 tokens!606))))) t!302951) tb!214559))

(declare-fun result!261962 () Bool)

(assert (= result!261962 result!261958))

(assert (=> b!3750126 t!302951))

(declare-fun b_and!278649 () Bool)

(assert (= b_and!278641 (and (=> t!302951 result!261962) b_and!278649)))

(declare-fun t!302953 () Bool)

(declare-fun tb!214561 () Bool)

(assert (=> (and b!3750101 (= (toChars!8317 (transformation!6110 (rule!8874 t!8579))) (toChars!8317 (transformation!6110 (rule!8874 (h!45381 tokens!606))))) t!302953) tb!214561))

(declare-fun result!261964 () Bool)

(assert (= result!261964 result!261958))

(assert (=> b!3750126 t!302953))

(declare-fun b_and!278651 () Bool)

(assert (= b_and!278645 (and (=> t!302953 result!261964) b_and!278651)))

(declare-fun m!4241337 () Bool)

(assert (=> d!1093979 m!4241337))

(declare-fun m!4241339 () Bool)

(assert (=> b!3750126 m!4241339))

(assert (=> b!3750126 m!4241339))

(declare-fun m!4241341 () Bool)

(assert (=> b!3750126 m!4241341))

(declare-fun m!4241343 () Bool)

(assert (=> b!3750127 m!4241343))

(assert (=> b!3750111 d!1093979))

(declare-fun b!3750284 () Bool)

(declare-fun e!2319653 () Bool)

(assert (=> b!3750284 (= e!2319653 true)))

(declare-fun b!3750283 () Bool)

(declare-fun e!2319652 () Bool)

(assert (=> b!3750283 (= e!2319652 e!2319653)))

(declare-fun b!3750282 () Bool)

(declare-fun e!2319651 () Bool)

(assert (=> b!3750282 (= e!2319651 e!2319652)))

(declare-fun d!1093983 () Bool)

(assert (=> d!1093983 e!2319651))

(assert (= b!3750283 b!3750284))

(assert (= b!3750282 b!3750283))

(assert (= (and d!1093983 ((_ is Cons!39962) rules!4236)) b!3750282))

(declare-fun lambda!125214 () Int)

(declare-fun order!21817 () Int)

(declare-fun order!21819 () Int)

(declare-fun dynLambda!17263 (Int Int) Int)

(declare-fun dynLambda!17264 (Int Int) Int)

(assert (=> b!3750284 (< (dynLambda!17263 order!21817 (toValue!8458 (transformation!6110 (h!45382 rules!4236)))) (dynLambda!17264 order!21819 lambda!125214))))

(declare-fun order!21821 () Int)

(declare-fun dynLambda!17265 (Int Int) Int)

(assert (=> b!3750284 (< (dynLambda!17265 order!21821 (toChars!8317 (transformation!6110 (h!45382 rules!4236)))) (dynLambda!17264 order!21819 lambda!125214))))

(assert (=> d!1093983 true))

(declare-fun lt!1299775 () Bool)

(declare-fun forall!8200 (List!40085 Int) Bool)

(assert (=> d!1093983 (= lt!1299775 (forall!8200 tokens!606 lambda!125214))))

(declare-fun e!2319644 () Bool)

(assert (=> d!1093983 (= lt!1299775 e!2319644)))

(declare-fun res!1520021 () Bool)

(assert (=> d!1093983 (=> res!1520021 e!2319644)))

(assert (=> d!1093983 (= res!1520021 (not ((_ is Cons!39961) tokens!606)))))

(assert (=> d!1093983 (not (isEmpty!23541 rules!4236))))

(assert (=> d!1093983 (= (rulesProduceEachTokenIndividuallyList!1927 thiss!27232 rules!4236 tokens!606) lt!1299775)))

(declare-fun b!3750272 () Bool)

(declare-fun e!2319643 () Bool)

(assert (=> b!3750272 (= e!2319644 e!2319643)))

(declare-fun res!1520022 () Bool)

(assert (=> b!3750272 (=> (not res!1520022) (not e!2319643))))

(declare-fun rulesProduceIndividualToken!2615 (LexerInterface!5699 List!40086 Token!11358) Bool)

(assert (=> b!3750272 (= res!1520022 (rulesProduceIndividualToken!2615 thiss!27232 rules!4236 (h!45381 tokens!606)))))

(declare-fun b!3750273 () Bool)

(assert (=> b!3750273 (= e!2319643 (rulesProduceEachTokenIndividuallyList!1927 thiss!27232 rules!4236 (t!302946 tokens!606)))))

(assert (= (and d!1093983 (not res!1520021)) b!3750272))

(assert (= (and b!3750272 res!1520022) b!3750273))

(declare-fun m!4241431 () Bool)

(assert (=> d!1093983 m!4241431))

(assert (=> d!1093983 m!4241321))

(declare-fun m!4241433 () Bool)

(assert (=> b!3750272 m!4241433))

(assert (=> b!3750273 m!4241303))

(assert (=> b!3750112 d!1093983))

(declare-fun d!1094019 () Bool)

(declare-fun res!1520023 () Bool)

(declare-fun e!2319654 () Bool)

(assert (=> d!1094019 (=> (not res!1520023) (not e!2319654))))

(assert (=> d!1094019 (= res!1520023 (not (isEmpty!23543 (originalCharacters!6710 t!8579))))))

(assert (=> d!1094019 (= (inv!53467 t!8579) e!2319654)))

(declare-fun b!3750287 () Bool)

(declare-fun res!1520024 () Bool)

(assert (=> b!3750287 (=> (not res!1520024) (not e!2319654))))

(assert (=> b!3750287 (= res!1520024 (= (originalCharacters!6710 t!8579) (list!14713 (dynLambda!17262 (toChars!8317 (transformation!6110 (rule!8874 t!8579))) (value!194700 t!8579)))))))

(declare-fun b!3750288 () Bool)

(assert (=> b!3750288 (= e!2319654 (= (size!30080 t!8579) (size!30082 (originalCharacters!6710 t!8579))))))

(assert (= (and d!1094019 res!1520023) b!3750287))

(assert (= (and b!3750287 res!1520024) b!3750288))

(declare-fun b_lambda!109941 () Bool)

(assert (=> (not b_lambda!109941) (not b!3750287)))

(declare-fun tb!214583 () Bool)

(declare-fun t!302979 () Bool)

(assert (=> (and b!3750107 (= (toChars!8317 (transformation!6110 (h!45382 rules!4236))) (toChars!8317 (transformation!6110 (rule!8874 t!8579)))) t!302979) tb!214583))

(declare-fun b!3750289 () Bool)

(declare-fun e!2319655 () Bool)

(declare-fun tp!1145036 () Bool)

(assert (=> b!3750289 (= e!2319655 (and (inv!53471 (c!649151 (dynLambda!17262 (toChars!8317 (transformation!6110 (rule!8874 t!8579))) (value!194700 t!8579)))) tp!1145036))))

(declare-fun result!261996 () Bool)

(assert (=> tb!214583 (= result!261996 (and (inv!53472 (dynLambda!17262 (toChars!8317 (transformation!6110 (rule!8874 t!8579))) (value!194700 t!8579))) e!2319655))))

(assert (= tb!214583 b!3750289))

(declare-fun m!4241435 () Bool)

(assert (=> b!3750289 m!4241435))

(declare-fun m!4241437 () Bool)

(assert (=> tb!214583 m!4241437))

(assert (=> b!3750287 t!302979))

(declare-fun b_and!278673 () Bool)

(assert (= b_and!278647 (and (=> t!302979 result!261996) b_and!278673)))

(declare-fun tb!214585 () Bool)

(declare-fun t!302981 () Bool)

(assert (=> (and b!3750102 (= (toChars!8317 (transformation!6110 (rule!8874 (h!45381 tokens!606)))) (toChars!8317 (transformation!6110 (rule!8874 t!8579)))) t!302981) tb!214585))

(declare-fun result!261998 () Bool)

(assert (= result!261998 result!261996))

(assert (=> b!3750287 t!302981))

(declare-fun b_and!278675 () Bool)

(assert (= b_and!278649 (and (=> t!302981 result!261998) b_and!278675)))

(declare-fun t!302983 () Bool)

(declare-fun tb!214587 () Bool)

(assert (=> (and b!3750101 (= (toChars!8317 (transformation!6110 (rule!8874 t!8579))) (toChars!8317 (transformation!6110 (rule!8874 t!8579)))) t!302983) tb!214587))

(declare-fun result!262000 () Bool)

(assert (= result!262000 result!261996))

(assert (=> b!3750287 t!302983))

(declare-fun b_and!278677 () Bool)

(assert (= b_and!278651 (and (=> t!302983 result!262000) b_and!278677)))

(declare-fun m!4241439 () Bool)

(assert (=> d!1094019 m!4241439))

(declare-fun m!4241441 () Bool)

(assert (=> b!3750287 m!4241441))

(assert (=> b!3750287 m!4241441))

(declare-fun m!4241443 () Bool)

(assert (=> b!3750287 m!4241443))

(declare-fun m!4241445 () Bool)

(assert (=> b!3750288 m!4241445))

(assert (=> start!352086 d!1094019))

(declare-fun d!1094021 () Bool)

(declare-fun lt!1299778 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5863 (List!40085) (InoxSet Token!11358))

(assert (=> d!1094021 (= lt!1299778 (select (content!5863 tokens!606) t!8579))))

(declare-fun e!2319660 () Bool)

(assert (=> d!1094021 (= lt!1299778 e!2319660)))

(declare-fun res!1520029 () Bool)

(assert (=> d!1094021 (=> (not res!1520029) (not e!2319660))))

(assert (=> d!1094021 (= res!1520029 ((_ is Cons!39961) tokens!606))))

(assert (=> d!1094021 (= (contains!8162 tokens!606 t!8579) lt!1299778)))

(declare-fun b!3750294 () Bool)

(declare-fun e!2319661 () Bool)

(assert (=> b!3750294 (= e!2319660 e!2319661)))

(declare-fun res!1520030 () Bool)

(assert (=> b!3750294 (=> res!1520030 e!2319661)))

(assert (=> b!3750294 (= res!1520030 (= (h!45381 tokens!606) t!8579))))

(declare-fun b!3750295 () Bool)

(assert (=> b!3750295 (= e!2319661 (contains!8162 (t!302946 tokens!606) t!8579))))

(assert (= (and d!1094021 res!1520029) b!3750294))

(assert (= (and b!3750294 (not res!1520030)) b!3750295))

(declare-fun m!4241447 () Bool)

(assert (=> d!1094021 m!4241447))

(declare-fun m!4241449 () Bool)

(assert (=> d!1094021 m!4241449))

(assert (=> b!3750295 m!4241293))

(assert (=> b!3750113 d!1094021))

(declare-fun bs!575365 () Bool)

(declare-fun d!1094023 () Bool)

(assert (= bs!575365 (and d!1094023 d!1093983)))

(declare-fun lambda!125215 () Int)

(assert (=> bs!575365 (= lambda!125215 lambda!125214)))

(declare-fun b!3750300 () Bool)

(declare-fun e!2319666 () Bool)

(assert (=> b!3750300 (= e!2319666 true)))

(declare-fun b!3750299 () Bool)

(declare-fun e!2319665 () Bool)

(assert (=> b!3750299 (= e!2319665 e!2319666)))

(declare-fun b!3750298 () Bool)

(declare-fun e!2319664 () Bool)

(assert (=> b!3750298 (= e!2319664 e!2319665)))

(assert (=> d!1094023 e!2319664))

(assert (= b!3750299 b!3750300))

(assert (= b!3750298 b!3750299))

(assert (= (and d!1094023 ((_ is Cons!39962) rules!4236)) b!3750298))

(assert (=> b!3750300 (< (dynLambda!17263 order!21817 (toValue!8458 (transformation!6110 (h!45382 rules!4236)))) (dynLambda!17264 order!21819 lambda!125215))))

(assert (=> b!3750300 (< (dynLambda!17265 order!21821 (toChars!8317 (transformation!6110 (h!45382 rules!4236)))) (dynLambda!17264 order!21819 lambda!125215))))

(assert (=> d!1094023 true))

(declare-fun lt!1299779 () Bool)

(assert (=> d!1094023 (= lt!1299779 (forall!8200 (t!302946 tokens!606) lambda!125215))))

(declare-fun e!2319663 () Bool)

(assert (=> d!1094023 (= lt!1299779 e!2319663)))

(declare-fun res!1520031 () Bool)

(assert (=> d!1094023 (=> res!1520031 e!2319663)))

(assert (=> d!1094023 (= res!1520031 (not ((_ is Cons!39961) (t!302946 tokens!606))))))

(assert (=> d!1094023 (not (isEmpty!23541 rules!4236))))

(assert (=> d!1094023 (= (rulesProduceEachTokenIndividuallyList!1927 thiss!27232 rules!4236 (t!302946 tokens!606)) lt!1299779)))

(declare-fun b!3750296 () Bool)

(declare-fun e!2319662 () Bool)

(assert (=> b!3750296 (= e!2319663 e!2319662)))

(declare-fun res!1520032 () Bool)

(assert (=> b!3750296 (=> (not res!1520032) (not e!2319662))))

(assert (=> b!3750296 (= res!1520032 (rulesProduceIndividualToken!2615 thiss!27232 rules!4236 (h!45381 (t!302946 tokens!606))))))

(declare-fun b!3750297 () Bool)

(assert (=> b!3750297 (= e!2319662 (rulesProduceEachTokenIndividuallyList!1927 thiss!27232 rules!4236 (t!302946 (t!302946 tokens!606))))))

(assert (= (and d!1094023 (not res!1520031)) b!3750296))

(assert (= (and b!3750296 res!1520032) b!3750297))

(declare-fun m!4241451 () Bool)

(assert (=> d!1094023 m!4241451))

(assert (=> d!1094023 m!4241321))

(declare-fun m!4241453 () Bool)

(assert (=> b!3750296 m!4241453))

(declare-fun m!4241455 () Bool)

(assert (=> b!3750297 m!4241455))

(assert (=> b!3750114 d!1094023))

(declare-fun b!3750311 () Bool)

(declare-fun res!1520035 () Bool)

(declare-fun e!2319673 () Bool)

(assert (=> b!3750311 (=> res!1520035 e!2319673)))

(assert (=> b!3750311 (= res!1520035 (not ((_ is IntegerValue!19022) (value!194700 (h!45381 tokens!606)))))))

(declare-fun e!2319674 () Bool)

(assert (=> b!3750311 (= e!2319674 e!2319673)))

(declare-fun b!3750312 () Bool)

(declare-fun inv!15 (TokenValue!6340) Bool)

(assert (=> b!3750312 (= e!2319673 (inv!15 (value!194700 (h!45381 tokens!606))))))

(declare-fun b!3750313 () Bool)

(declare-fun e!2319675 () Bool)

(assert (=> b!3750313 (= e!2319675 e!2319674)))

(declare-fun c!649168 () Bool)

(assert (=> b!3750313 (= c!649168 ((_ is IntegerValue!19021) (value!194700 (h!45381 tokens!606))))))

(declare-fun b!3750314 () Bool)

(declare-fun inv!16 (TokenValue!6340) Bool)

(assert (=> b!3750314 (= e!2319675 (inv!16 (value!194700 (h!45381 tokens!606))))))

(declare-fun d!1094025 () Bool)

(declare-fun c!649169 () Bool)

(assert (=> d!1094025 (= c!649169 ((_ is IntegerValue!19020) (value!194700 (h!45381 tokens!606))))))

(assert (=> d!1094025 (= (inv!21 (value!194700 (h!45381 tokens!606))) e!2319675)))

(declare-fun b!3750315 () Bool)

(declare-fun inv!17 (TokenValue!6340) Bool)

(assert (=> b!3750315 (= e!2319674 (inv!17 (value!194700 (h!45381 tokens!606))))))

(assert (= (and d!1094025 c!649169) b!3750314))

(assert (= (and d!1094025 (not c!649169)) b!3750313))

(assert (= (and b!3750313 c!649168) b!3750315))

(assert (= (and b!3750313 (not c!649168)) b!3750311))

(assert (= (and b!3750311 (not res!1520035)) b!3750312))

(declare-fun m!4241457 () Bool)

(assert (=> b!3750312 m!4241457))

(declare-fun m!4241459 () Bool)

(assert (=> b!3750314 m!4241459))

(declare-fun m!4241461 () Bool)

(assert (=> b!3750315 m!4241461))

(assert (=> b!3750103 d!1094025))

(declare-fun b!3750316 () Bool)

(declare-fun res!1520036 () Bool)

(declare-fun e!2319676 () Bool)

(assert (=> b!3750316 (=> res!1520036 e!2319676)))

(assert (=> b!3750316 (= res!1520036 (not ((_ is IntegerValue!19022) (value!194700 t!8579))))))

(declare-fun e!2319677 () Bool)

(assert (=> b!3750316 (= e!2319677 e!2319676)))

(declare-fun b!3750317 () Bool)

(assert (=> b!3750317 (= e!2319676 (inv!15 (value!194700 t!8579)))))

(declare-fun b!3750318 () Bool)

(declare-fun e!2319678 () Bool)

(assert (=> b!3750318 (= e!2319678 e!2319677)))

(declare-fun c!649170 () Bool)

(assert (=> b!3750318 (= c!649170 ((_ is IntegerValue!19021) (value!194700 t!8579)))))

(declare-fun b!3750319 () Bool)

(assert (=> b!3750319 (= e!2319678 (inv!16 (value!194700 t!8579)))))

(declare-fun d!1094027 () Bool)

(declare-fun c!649171 () Bool)

(assert (=> d!1094027 (= c!649171 ((_ is IntegerValue!19020) (value!194700 t!8579)))))

(assert (=> d!1094027 (= (inv!21 (value!194700 t!8579)) e!2319678)))

(declare-fun b!3750320 () Bool)

(assert (=> b!3750320 (= e!2319677 (inv!17 (value!194700 t!8579)))))

(assert (= (and d!1094027 c!649171) b!3750319))

(assert (= (and d!1094027 (not c!649171)) b!3750318))

(assert (= (and b!3750318 c!649170) b!3750320))

(assert (= (and b!3750318 (not c!649170)) b!3750316))

(assert (= (and b!3750316 (not res!1520036)) b!3750317))

(declare-fun m!4241463 () Bool)

(assert (=> b!3750317 m!4241463))

(declare-fun m!4241465 () Bool)

(assert (=> b!3750319 m!4241465))

(declare-fun m!4241467 () Bool)

(assert (=> b!3750320 m!4241467))

(assert (=> b!3750115 d!1094027))

(declare-fun d!1094029 () Bool)

(assert (=> d!1094029 (= (inv!53464 (tag!6970 (h!45382 rules!4236))) (= (mod (str.len (value!194674 (tag!6970 (h!45382 rules!4236)))) 2) 0))))

(assert (=> b!3750116 d!1094029))

(declare-fun d!1094031 () Bool)

(declare-fun res!1520037 () Bool)

(declare-fun e!2319679 () Bool)

(assert (=> d!1094031 (=> (not res!1520037) (not e!2319679))))

(assert (=> d!1094031 (= res!1520037 (semiInverseModEq!2618 (toChars!8317 (transformation!6110 (h!45382 rules!4236))) (toValue!8458 (transformation!6110 (h!45382 rules!4236)))))))

(assert (=> d!1094031 (= (inv!53468 (transformation!6110 (h!45382 rules!4236))) e!2319679)))

(declare-fun b!3750321 () Bool)

(assert (=> b!3750321 (= e!2319679 (equivClasses!2517 (toChars!8317 (transformation!6110 (h!45382 rules!4236))) (toValue!8458 (transformation!6110 (h!45382 rules!4236)))))))

(assert (= (and d!1094031 res!1520037) b!3750321))

(declare-fun m!4241469 () Bool)

(assert (=> d!1094031 m!4241469))

(declare-fun m!4241471 () Bool)

(assert (=> b!3750321 m!4241471))

(assert (=> b!3750116 d!1094031))

(declare-fun d!1094033 () Bool)

(declare-fun lt!1299782 () Int)

(assert (=> d!1094033 (>= lt!1299782 0)))

(declare-fun e!2319682 () Int)

(assert (=> d!1094033 (= lt!1299782 e!2319682)))

(declare-fun c!649174 () Bool)

(assert (=> d!1094033 (= c!649174 ((_ is Nil!39961) (t!302946 tokens!606)))))

(assert (=> d!1094033 (= (ListPrimitiveSize!265 (t!302946 tokens!606)) lt!1299782)))

(declare-fun b!3750326 () Bool)

(assert (=> b!3750326 (= e!2319682 0)))

(declare-fun b!3750327 () Bool)

(assert (=> b!3750327 (= e!2319682 (+ 1 (ListPrimitiveSize!265 (t!302946 (t!302946 tokens!606)))))))

(assert (= (and d!1094033 c!649174) b!3750326))

(assert (= (and d!1094033 (not c!649174)) b!3750327))

(declare-fun m!4241473 () Bool)

(assert (=> b!3750327 m!4241473))

(assert (=> b!3750106 d!1094033))

(declare-fun d!1094035 () Bool)

(declare-fun lt!1299783 () Int)

(assert (=> d!1094035 (>= lt!1299783 0)))

(declare-fun e!2319683 () Int)

(assert (=> d!1094035 (= lt!1299783 e!2319683)))

(declare-fun c!649175 () Bool)

(assert (=> d!1094035 (= c!649175 ((_ is Nil!39961) tokens!606))))

(assert (=> d!1094035 (= (ListPrimitiveSize!265 tokens!606) lt!1299783)))

(declare-fun b!3750328 () Bool)

(assert (=> b!3750328 (= e!2319683 0)))

(declare-fun b!3750329 () Bool)

(assert (=> b!3750329 (= e!2319683 (+ 1 (ListPrimitiveSize!265 (t!302946 tokens!606))))))

(assert (= (and d!1094035 c!649175) b!3750328))

(assert (= (and d!1094035 (not c!649175)) b!3750329))

(assert (=> b!3750329 m!4241315))

(assert (=> b!3750106 d!1094035))

(declare-fun d!1094037 () Bool)

(assert (=> d!1094037 (= (inv!53464 (tag!6970 (rule!8874 t!8579))) (= (mod (str.len (value!194674 (tag!6970 (rule!8874 t!8579)))) 2) 0))))

(assert (=> b!3750117 d!1094037))

(declare-fun d!1094039 () Bool)

(declare-fun res!1520038 () Bool)

(declare-fun e!2319684 () Bool)

(assert (=> d!1094039 (=> (not res!1520038) (not e!2319684))))

(assert (=> d!1094039 (= res!1520038 (semiInverseModEq!2618 (toChars!8317 (transformation!6110 (rule!8874 t!8579))) (toValue!8458 (transformation!6110 (rule!8874 t!8579)))))))

(assert (=> d!1094039 (= (inv!53468 (transformation!6110 (rule!8874 t!8579))) e!2319684)))

(declare-fun b!3750330 () Bool)

(assert (=> b!3750330 (= e!2319684 (equivClasses!2517 (toChars!8317 (transformation!6110 (rule!8874 t!8579))) (toValue!8458 (transformation!6110 (rule!8874 t!8579)))))))

(assert (= (and d!1094039 res!1520038) b!3750330))

(declare-fun m!4241475 () Bool)

(assert (=> d!1094039 m!4241475))

(declare-fun m!4241477 () Bool)

(assert (=> b!3750330 m!4241477))

(assert (=> b!3750117 d!1094039))

(declare-fun d!1094041 () Bool)

(declare-fun res!1520041 () Bool)

(declare-fun e!2319687 () Bool)

(assert (=> d!1094041 (=> (not res!1520041) (not e!2319687))))

(declare-fun rulesValid!2373 (LexerInterface!5699 List!40086) Bool)

(assert (=> d!1094041 (= res!1520041 (rulesValid!2373 thiss!27232 rules!4236))))

(assert (=> d!1094041 (= (rulesInvariant!5096 thiss!27232 rules!4236) e!2319687)))

(declare-fun b!3750333 () Bool)

(declare-datatypes ((List!40088 0))(
  ( (Nil!39964) (Cons!39964 (h!45384 String!45325) (t!302993 List!40088)) )
))
(declare-fun noDuplicateTag!2374 (LexerInterface!5699 List!40086 List!40088) Bool)

(assert (=> b!3750333 (= e!2319687 (noDuplicateTag!2374 thiss!27232 rules!4236 Nil!39964))))

(assert (= (and d!1094041 res!1520041) b!3750333))

(declare-fun m!4241479 () Bool)

(assert (=> d!1094041 m!4241479))

(declare-fun m!4241481 () Bool)

(assert (=> b!3750333 m!4241481))

(assert (=> b!3750118 d!1094041))

(declare-fun d!1094043 () Bool)

(declare-fun lt!1299784 () Bool)

(assert (=> d!1094043 (= lt!1299784 (select (content!5863 (t!302946 tokens!606)) t!8579))))

(declare-fun e!2319688 () Bool)

(assert (=> d!1094043 (= lt!1299784 e!2319688)))

(declare-fun res!1520042 () Bool)

(assert (=> d!1094043 (=> (not res!1520042) (not e!2319688))))

(assert (=> d!1094043 (= res!1520042 ((_ is Cons!39961) (t!302946 tokens!606)))))

(assert (=> d!1094043 (= (contains!8162 (t!302946 tokens!606) t!8579) lt!1299784)))

(declare-fun b!3750334 () Bool)

(declare-fun e!2319689 () Bool)

(assert (=> b!3750334 (= e!2319688 e!2319689)))

(declare-fun res!1520043 () Bool)

(assert (=> b!3750334 (=> res!1520043 e!2319689)))

(assert (=> b!3750334 (= res!1520043 (= (h!45381 (t!302946 tokens!606)) t!8579))))

(declare-fun b!3750335 () Bool)

(assert (=> b!3750335 (= e!2319689 (contains!8162 (t!302946 (t!302946 tokens!606)) t!8579))))

(assert (= (and d!1094043 res!1520042) b!3750334))

(assert (= (and b!3750334 (not res!1520043)) b!3750335))

(declare-fun m!4241483 () Bool)

(assert (=> d!1094043 m!4241483))

(declare-fun m!4241485 () Bool)

(assert (=> d!1094043 m!4241485))

(declare-fun m!4241487 () Bool)

(assert (=> b!3750335 m!4241487))

(assert (=> b!3750108 d!1094043))

(declare-fun b!3750340 () Bool)

(declare-fun e!2319692 () Bool)

(declare-fun tp_is_empty!19029 () Bool)

(declare-fun tp!1145039 () Bool)

(assert (=> b!3750340 (= e!2319692 (and tp_is_empty!19029 tp!1145039))))

(assert (=> b!3750103 (= tp!1144967 e!2319692)))

(assert (= (and b!3750103 ((_ is Cons!39959) (originalCharacters!6710 (h!45381 tokens!606)))) b!3750340))

(declare-fun b!3750351 () Bool)

(declare-fun b_free!100325 () Bool)

(declare-fun b_next!101029 () Bool)

(assert (=> b!3750351 (= b_free!100325 (not b_next!101029))))

(declare-fun tp!1145051 () Bool)

(declare-fun b_and!278679 () Bool)

(assert (=> b!3750351 (= tp!1145051 b_and!278679)))

(declare-fun b_free!100327 () Bool)

(declare-fun b_next!101031 () Bool)

(assert (=> b!3750351 (= b_free!100327 (not b_next!101031))))

(declare-fun t!302986 () Bool)

(declare-fun tb!214589 () Bool)

(assert (=> (and b!3750351 (= (toChars!8317 (transformation!6110 (h!45382 (t!302947 rules!4236)))) (toChars!8317 (transformation!6110 (rule!8874 (h!45381 tokens!606))))) t!302986) tb!214589))

(declare-fun result!262006 () Bool)

(assert (= result!262006 result!261958))

(assert (=> b!3750126 t!302986))

(declare-fun t!302988 () Bool)

(declare-fun tb!214591 () Bool)

(assert (=> (and b!3750351 (= (toChars!8317 (transformation!6110 (h!45382 (t!302947 rules!4236)))) (toChars!8317 (transformation!6110 (rule!8874 t!8579)))) t!302988) tb!214591))

(declare-fun result!262008 () Bool)

(assert (= result!262008 result!261996))

(assert (=> b!3750287 t!302988))

(declare-fun tp!1145049 () Bool)

(declare-fun b_and!278681 () Bool)

(assert (=> b!3750351 (= tp!1145049 (and (=> t!302986 result!262006) (=> t!302988 result!262008) b_and!278681))))

(declare-fun e!2319701 () Bool)

(assert (=> b!3750351 (= e!2319701 (and tp!1145051 tp!1145049))))

(declare-fun e!2319704 () Bool)

(declare-fun tp!1145050 () Bool)

(declare-fun b!3750350 () Bool)

(assert (=> b!3750350 (= e!2319704 (and tp!1145050 (inv!53464 (tag!6970 (h!45382 (t!302947 rules!4236)))) (inv!53468 (transformation!6110 (h!45382 (t!302947 rules!4236)))) e!2319701))))

(declare-fun b!3750349 () Bool)

(declare-fun e!2319702 () Bool)

(declare-fun tp!1145048 () Bool)

(assert (=> b!3750349 (= e!2319702 (and e!2319704 tp!1145048))))

(assert (=> b!3750104 (= tp!1144965 e!2319702)))

(assert (= b!3750350 b!3750351))

(assert (= b!3750349 b!3750350))

(assert (= (and b!3750104 ((_ is Cons!39962) (t!302947 rules!4236))) b!3750349))

(declare-fun m!4241489 () Bool)

(assert (=> b!3750350 m!4241489))

(declare-fun m!4241491 () Bool)

(assert (=> b!3750350 m!4241491))

(declare-fun b!3750363 () Bool)

(declare-fun e!2319707 () Bool)

(declare-fun tp!1145065 () Bool)

(declare-fun tp!1145063 () Bool)

(assert (=> b!3750363 (= e!2319707 (and tp!1145065 tp!1145063))))

(declare-fun b!3750364 () Bool)

(declare-fun tp!1145064 () Bool)

(assert (=> b!3750364 (= e!2319707 tp!1145064)))

(declare-fun b!3750362 () Bool)

(assert (=> b!3750362 (= e!2319707 tp_is_empty!19029)))

(declare-fun b!3750365 () Bool)

(declare-fun tp!1145066 () Bool)

(declare-fun tp!1145062 () Bool)

(assert (=> b!3750365 (= e!2319707 (and tp!1145066 tp!1145062))))

(assert (=> b!3750109 (= tp!1144960 e!2319707)))

(assert (= (and b!3750109 ((_ is ElementMatch!11015) (regex!6110 (rule!8874 (h!45381 tokens!606))))) b!3750362))

(assert (= (and b!3750109 ((_ is Concat!17355) (regex!6110 (rule!8874 (h!45381 tokens!606))))) b!3750363))

(assert (= (and b!3750109 ((_ is Star!11015) (regex!6110 (rule!8874 (h!45381 tokens!606))))) b!3750364))

(assert (= (and b!3750109 ((_ is Union!11015) (regex!6110 (rule!8874 (h!45381 tokens!606))))) b!3750365))

(declare-fun b!3750366 () Bool)

(declare-fun e!2319708 () Bool)

(declare-fun tp!1145067 () Bool)

(assert (=> b!3750366 (= e!2319708 (and tp_is_empty!19029 tp!1145067))))

(assert (=> b!3750115 (= tp!1144971 e!2319708)))

(assert (= (and b!3750115 ((_ is Cons!39959) (originalCharacters!6710 t!8579))) b!3750366))

(declare-fun b!3750368 () Bool)

(declare-fun e!2319709 () Bool)

(declare-fun tp!1145071 () Bool)

(declare-fun tp!1145069 () Bool)

(assert (=> b!3750368 (= e!2319709 (and tp!1145071 tp!1145069))))

(declare-fun b!3750369 () Bool)

(declare-fun tp!1145070 () Bool)

(assert (=> b!3750369 (= e!2319709 tp!1145070)))

(declare-fun b!3750367 () Bool)

(assert (=> b!3750367 (= e!2319709 tp_is_empty!19029)))

(declare-fun b!3750370 () Bool)

(declare-fun tp!1145072 () Bool)

(declare-fun tp!1145068 () Bool)

(assert (=> b!3750370 (= e!2319709 (and tp!1145072 tp!1145068))))

(assert (=> b!3750116 (= tp!1144963 e!2319709)))

(assert (= (and b!3750116 ((_ is ElementMatch!11015) (regex!6110 (h!45382 rules!4236)))) b!3750367))

(assert (= (and b!3750116 ((_ is Concat!17355) (regex!6110 (h!45382 rules!4236)))) b!3750368))

(assert (= (and b!3750116 ((_ is Star!11015) (regex!6110 (h!45382 rules!4236)))) b!3750369))

(assert (= (and b!3750116 ((_ is Union!11015) (regex!6110 (h!45382 rules!4236)))) b!3750370))

(declare-fun b!3750384 () Bool)

(declare-fun b_free!100329 () Bool)

(declare-fun b_next!101033 () Bool)

(assert (=> b!3750384 (= b_free!100329 (not b_next!101033))))

(declare-fun tp!1145084 () Bool)

(declare-fun b_and!278683 () Bool)

(assert (=> b!3750384 (= tp!1145084 b_and!278683)))

(declare-fun b_free!100331 () Bool)

(declare-fun b_next!101035 () Bool)

(assert (=> b!3750384 (= b_free!100331 (not b_next!101035))))

(declare-fun t!302990 () Bool)

(declare-fun tb!214593 () Bool)

(assert (=> (and b!3750384 (= (toChars!8317 (transformation!6110 (rule!8874 (h!45381 (t!302946 tokens!606))))) (toChars!8317 (transformation!6110 (rule!8874 (h!45381 tokens!606))))) t!302990) tb!214593))

(declare-fun result!262014 () Bool)

(assert (= result!262014 result!261958))

(assert (=> b!3750126 t!302990))

(declare-fun tb!214595 () Bool)

(declare-fun t!302992 () Bool)

(assert (=> (and b!3750384 (= (toChars!8317 (transformation!6110 (rule!8874 (h!45381 (t!302946 tokens!606))))) (toChars!8317 (transformation!6110 (rule!8874 t!8579)))) t!302992) tb!214595))

(declare-fun result!262016 () Bool)

(assert (= result!262016 result!261996))

(assert (=> b!3750287 t!302992))

(declare-fun b_and!278685 () Bool)

(declare-fun tp!1145087 () Bool)

(assert (=> b!3750384 (= tp!1145087 (and (=> t!302990 result!262014) (=> t!302992 result!262016) b_and!278685))))

(declare-fun b!3750382 () Bool)

(declare-fun e!2319722 () Bool)

(declare-fun tp!1145085 () Bool)

(declare-fun e!2319724 () Bool)

(assert (=> b!3750382 (= e!2319724 (and (inv!21 (value!194700 (h!45381 (t!302946 tokens!606)))) e!2319722 tp!1145085))))

(declare-fun e!2319726 () Bool)

(assert (=> b!3750384 (= e!2319726 (and tp!1145084 tp!1145087))))

(declare-fun e!2319727 () Bool)

(assert (=> b!3750111 (= tp!1144961 e!2319727)))

(declare-fun tp!1145083 () Bool)

(declare-fun b!3750381 () Bool)

(assert (=> b!3750381 (= e!2319727 (and (inv!53467 (h!45381 (t!302946 tokens!606))) e!2319724 tp!1145083))))

(declare-fun b!3750383 () Bool)

(declare-fun tp!1145086 () Bool)

(assert (=> b!3750383 (= e!2319722 (and tp!1145086 (inv!53464 (tag!6970 (rule!8874 (h!45381 (t!302946 tokens!606))))) (inv!53468 (transformation!6110 (rule!8874 (h!45381 (t!302946 tokens!606))))) e!2319726))))

(assert (= b!3750383 b!3750384))

(assert (= b!3750382 b!3750383))

(assert (= b!3750381 b!3750382))

(assert (= (and b!3750111 ((_ is Cons!39961) (t!302946 tokens!606))) b!3750381))

(declare-fun m!4241493 () Bool)

(assert (=> b!3750382 m!4241493))

(declare-fun m!4241495 () Bool)

(assert (=> b!3750381 m!4241495))

(declare-fun m!4241497 () Bool)

(assert (=> b!3750383 m!4241497))

(declare-fun m!4241499 () Bool)

(assert (=> b!3750383 m!4241499))

(declare-fun b!3750386 () Bool)

(declare-fun e!2319728 () Bool)

(declare-fun tp!1145091 () Bool)

(declare-fun tp!1145089 () Bool)

(assert (=> b!3750386 (= e!2319728 (and tp!1145091 tp!1145089))))

(declare-fun b!3750387 () Bool)

(declare-fun tp!1145090 () Bool)

(assert (=> b!3750387 (= e!2319728 tp!1145090)))

(declare-fun b!3750385 () Bool)

(assert (=> b!3750385 (= e!2319728 tp_is_empty!19029)))

(declare-fun b!3750388 () Bool)

(declare-fun tp!1145092 () Bool)

(declare-fun tp!1145088 () Bool)

(assert (=> b!3750388 (= e!2319728 (and tp!1145092 tp!1145088))))

(assert (=> b!3750117 (= tp!1144962 e!2319728)))

(assert (= (and b!3750117 ((_ is ElementMatch!11015) (regex!6110 (rule!8874 t!8579)))) b!3750385))

(assert (= (and b!3750117 ((_ is Concat!17355) (regex!6110 (rule!8874 t!8579)))) b!3750386))

(assert (= (and b!3750117 ((_ is Star!11015) (regex!6110 (rule!8874 t!8579)))) b!3750387))

(assert (= (and b!3750117 ((_ is Union!11015) (regex!6110 (rule!8874 t!8579)))) b!3750388))

(declare-fun b_lambda!109943 () Bool)

(assert (= b_lambda!109931 (or (and b!3750351 b_free!100327 (= (toChars!8317 (transformation!6110 (h!45382 (t!302947 rules!4236)))) (toChars!8317 (transformation!6110 (rule!8874 (h!45381 tokens!606)))))) (and b!3750384 b_free!100331 (= (toChars!8317 (transformation!6110 (rule!8874 (h!45381 (t!302946 tokens!606))))) (toChars!8317 (transformation!6110 (rule!8874 (h!45381 tokens!606)))))) (and b!3750102 b_free!100311) (and b!3750101 b_free!100315 (= (toChars!8317 (transformation!6110 (rule!8874 t!8579))) (toChars!8317 (transformation!6110 (rule!8874 (h!45381 tokens!606)))))) (and b!3750107 b_free!100307 (= (toChars!8317 (transformation!6110 (h!45382 rules!4236))) (toChars!8317 (transformation!6110 (rule!8874 (h!45381 tokens!606)))))) b_lambda!109943)))

(declare-fun b_lambda!109945 () Bool)

(assert (= b_lambda!109941 (or (and b!3750101 b_free!100315) (and b!3750107 b_free!100307 (= (toChars!8317 (transformation!6110 (h!45382 rules!4236))) (toChars!8317 (transformation!6110 (rule!8874 t!8579))))) (and b!3750384 b_free!100331 (= (toChars!8317 (transformation!6110 (rule!8874 (h!45381 (t!302946 tokens!606))))) (toChars!8317 (transformation!6110 (rule!8874 t!8579))))) (and b!3750351 b_free!100327 (= (toChars!8317 (transformation!6110 (h!45382 (t!302947 rules!4236)))) (toChars!8317 (transformation!6110 (rule!8874 t!8579))))) (and b!3750102 b_free!100311 (= (toChars!8317 (transformation!6110 (rule!8874 (h!45381 tokens!606)))) (toChars!8317 (transformation!6110 (rule!8874 t!8579))))) b_lambda!109945)))

(check-sat b_and!278685 (not b_next!101033) b_and!278677 (not b_next!101035) tp_is_empty!19029 b_and!278643 (not b!3750370) (not b!3750126) (not b!3750314) (not b!3750329) (not b!3750333) (not b!3750295) (not b!3750350) (not b!3750382) b_and!278635 (not b!3750132) (not b!3750368) (not b!3750297) (not b!3750321) (not b!3750381) (not b_next!101019) (not b!3750340) (not b!3750365) (not b!3750312) (not b_next!101015) (not b_next!101031) (not b!3750296) (not b_next!101009) (not b_lambda!109945) (not b_next!101013) (not b!3750127) (not d!1093975) (not b!3750317) b_and!278639 (not d!1094039) b_and!278675 (not b!3750388) (not b!3750366) (not b!3750335) (not b_lambda!109943) (not b!3750363) (not b!3750369) (not b!3750386) (not b!3750315) (not b!3750288) (not b!3750327) (not b_next!101011) b_and!278679 b_and!278683 (not b!3750320) (not b!3750287) (not b_next!101029) (not d!1094021) (not b!3750272) (not b!3750273) (not b!3750387) (not b!3750121) (not b!3750298) (not d!1094023) (not b!3750364) (not b!3750289) (not d!1093983) (not b!3750349) (not b!3750330) (not d!1094019) (not d!1093979) (not b_next!101017) (not d!1094031) (not tb!214583) b_and!278673 (not d!1094041) (not tb!214557) (not b!3750282) b_and!278681 (not b!3750319) (not b!3750383) (not d!1094043))
(check-sat b_and!278643 b_and!278635 (not b_next!101019) (not b_next!101015) b_and!278685 (not b_next!101033) (not b_next!101013) b_and!278639 b_and!278675 b_and!278677 (not b_next!101035) b_and!278683 (not b_next!101029) b_and!278681 (not b_next!101031) (not b_next!101009) (not b_next!101011) b_and!278679 (not b_next!101017) b_and!278673)
