; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!110612 () Bool)

(assert start!110612)

(assert (=> start!110612 true))

(declare-fun b!1255637 () Bool)

(assert (=> b!1255637 true))

(assert (=> b!1255637 true))

(declare-fun b!1255638 () Bool)

(assert (=> b!1255638 true))

(declare-fun b!1255647 () Bool)

(declare-fun e!799060 () Bool)

(declare-datatypes ((List!12603 0))(
  ( (Nil!12543) (Cons!12543 (h!17944 (_ BitVec 16)) (t!115677 List!12603)) )
))
(declare-datatypes ((IArray!8229 0))(
  ( (IArray!8230 (innerList!4172 List!12603)) )
))
(declare-datatypes ((Conc!4112 0))(
  ( (Node!4112 (left!10831 Conc!4112) (right!11161 Conc!4112) (csize!8454 Int) (cheight!4323 Int)) (Leaf!6366 (xs!6823 IArray!8229) (csize!8455 Int)) (Empty!4112) )
))
(declare-datatypes ((BalanceConc!8158 0))(
  ( (BalanceConc!8159 (c!208463 Conc!4112)) )
))
(declare-fun x!243440 () BalanceConc!8158)

(declare-fun tp!370342 () Bool)

(declare-fun inv!16857 (Conc!4112) Bool)

(assert (=> b!1255647 (= e!799060 (and (inv!16857 (c!208463 x!243440)) tp!370342))))

(declare-fun inst!868 () Bool)

(declare-datatypes ((OperatorValueInjection!16 0))(
  ( (OperatorValueInjection!17) )
))
(declare-fun thiss!5119 () OperatorValueInjection!16)

(declare-fun inv!16858 (BalanceConc!8158) Bool)

(declare-fun list!4665 (BalanceConc!8158) List!12603)

(declare-datatypes ((TokenValue!2234 0))(
  ( (FloatLiteralValue!4468 (text!16083 List!12603)) (TokenValueExt!2233 (__x!8179 Int)) (Broken!11170 (value!70369 List!12603)) (Object!2293) (End!2234) (Def!2234) (Underscore!2234) (Match!2234) (Else!2234) (Error!2234) (Case!2234) (If!2234) (Extends!2234) (Abstract!2234) (Class!2234) (Val!2234) (DelimiterValue!4468 (del!2294 List!12603)) (KeywordValue!2240 (value!70370 List!12603)) (CommentValue!4468 (value!70371 List!12603)) (WhitespaceValue!4468 (value!70372 List!12603)) (IndentationValue!2234 (value!70373 List!12603)) (String!15383) (Int32!2234) (Broken!11171 (value!70374 List!12603)) (Boolean!2235) (Unit!18824) (OperatorValue!2237 (op!2294 List!12603)) (IdentifierValue!4468 (value!70375 List!12603)) (IdentifierValue!4469 (value!70376 List!12603)) (WhitespaceValue!4469 (value!70377 List!12603)) (True!4468) (False!4468) (Broken!11172 (value!70378 List!12603)) (Broken!11173 (value!70379 List!12603)) (True!4469) (RightBrace!2234) (RightBracket!2234) (Colon!2234) (Null!2234) (Comma!2234) (LeftBracket!2234) (False!4469) (LeftBrace!2234) (ImaginaryLiteralValue!2234 (text!16084 List!12603)) (StringLiteralValue!6702 (value!70380 List!12603)) (EOFValue!2234 (value!70381 List!12603)) (IdentValue!2234 (value!70382 List!12603)) (DelimiterValue!4469 (value!70383 List!12603)) (DedentValue!2234 (value!70384 List!12603)) (NewLineValue!2234 (value!70385 List!12603)) (IntegerValue!6702 (value!70386 (_ BitVec 32)) (text!16085 List!12603)) (IntegerValue!6703 (value!70387 Int) (text!16086 List!12603)) (Times!2234) (Or!2234) (Equal!2234) (Minus!2234) (Broken!11174 (value!70388 List!12603)) (And!2234) (Div!2234) (LessEqual!2234) (Mod!2234) (Concat!5708) (Not!2234) (Plus!2234) (SpaceValue!2234 (value!70389 List!12603)) (IntegerValue!6704 (value!70390 Int) (text!16087 List!12603)) (StringLiteralValue!6703 (text!16088 List!12603)) (FloatLiteralValue!4469 (text!16089 List!12603)) (BytesLiteralValue!2234 (value!70391 List!12603)) (CommentValue!4469 (value!70392 List!12603)) (StringLiteralValue!6704 (value!70393 List!12603)) (ErrorTokenValue!2234 (msg!2295 List!12603)) )
))
(declare-fun toCharacters!27 (OperatorValueInjection!16 TokenValue!2234) BalanceConc!8158)

(declare-fun toValue!34 (OperatorValueInjection!16 BalanceConc!8158) TokenValue!2234)

(assert (=> start!110612 (= inst!868 (=> (and (inv!16858 x!243440) e!799060) (= (list!4665 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440))) (list!4665 x!243440))))))

(assert (= start!110612 b!1255647))

(declare-fun m!1413919 () Bool)

(assert (=> b!1255647 m!1413919))

(declare-fun m!1413921 () Bool)

(assert (=> start!110612 m!1413921))

(declare-fun m!1413923 () Bool)

(assert (=> start!110612 m!1413923))

(declare-fun m!1413925 () Bool)

(assert (=> start!110612 m!1413925))

(declare-fun m!1413927 () Bool)

(assert (=> start!110612 m!1413927))

(declare-fun m!1413929 () Bool)

(assert (=> start!110612 m!1413929))

(assert (=> start!110612 m!1413929))

(assert (=> start!110612 m!1413921))

(declare-fun res!555996 () Bool)

(declare-fun e!799063 () Bool)

(assert (=> b!1255638 (=> res!555996 e!799063)))

(declare-fun x!243441 () BalanceConc!8158)

(declare-fun x!243442 () BalanceConc!8158)

(assert (=> b!1255638 (= res!555996 (not (= (list!4665 x!243441) (list!4665 x!243442))))))

(declare-fun inst!869 () Bool)

(declare-fun e!799061 () Bool)

(declare-fun e!799062 () Bool)

(assert (=> b!1255638 (= inst!869 (=> (and (inv!16858 x!243441) e!799062 (inv!16858 x!243442) e!799061) e!799063))))

(declare-fun b!1255648 () Bool)

(assert (=> b!1255648 (= e!799063 (= (toValue!34 thiss!5119 x!243441) (toValue!34 thiss!5119 x!243442)))))

(declare-fun b!1255649 () Bool)

(declare-fun tp!370344 () Bool)

(assert (=> b!1255649 (= e!799062 (and (inv!16857 (c!208463 x!243441)) tp!370344))))

(declare-fun b!1255650 () Bool)

(declare-fun tp!370343 () Bool)

(assert (=> b!1255650 (= e!799061 (and (inv!16857 (c!208463 x!243442)) tp!370343))))

(assert (= (and b!1255638 (not res!555996)) b!1255648))

(assert (= b!1255638 b!1255649))

(assert (= b!1255638 b!1255650))

(declare-fun m!1413931 () Bool)

(assert (=> b!1255638 m!1413931))

(declare-fun m!1413933 () Bool)

(assert (=> b!1255638 m!1413933))

(declare-fun m!1413935 () Bool)

(assert (=> b!1255638 m!1413935))

(declare-fun m!1413937 () Bool)

(assert (=> b!1255638 m!1413937))

(declare-fun m!1413939 () Bool)

(assert (=> b!1255648 m!1413939))

(declare-fun m!1413941 () Bool)

(assert (=> b!1255648 m!1413941))

(declare-fun m!1413943 () Bool)

(assert (=> b!1255649 m!1413943))

(declare-fun m!1413945 () Bool)

(assert (=> b!1255650 m!1413945))

(declare-fun bs!289985 () Bool)

(declare-fun neg-inst!869 () Bool)

(declare-fun s!183243 () Bool)

(assert (= bs!289985 (and neg-inst!869 s!183243)))

(assert (=> bs!289985 (=> true (= (list!4665 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440))) (list!4665 x!243440)))))

(assert (=> m!1413927 m!1413929))

(assert (=> m!1413927 m!1413921))

(assert (=> m!1413927 m!1413923))

(assert (=> m!1413927 s!183243))

(assert (=> m!1413929 s!183243))

(declare-fun bs!289986 () Bool)

(assert (= bs!289986 (and neg-inst!869 start!110612)))

(assert (=> bs!289986 (= true inst!868)))

(declare-fun bs!289987 () Bool)

(declare-fun neg-inst!868 () Bool)

(declare-fun s!183245 () Bool)

(assert (= bs!289987 (and neg-inst!868 s!183245)))

(declare-fun res!555997 () Bool)

(declare-fun e!799064 () Bool)

(assert (=> bs!289987 (=> res!555997 e!799064)))

(assert (=> bs!289987 (= res!555997 (not (= (list!4665 x!243441) (list!4665 x!243441))))))

(assert (=> bs!289987 (=> true e!799064)))

(declare-fun b!1255651 () Bool)

(assert (=> b!1255651 (= e!799064 (= (toValue!34 thiss!5119 x!243441) (toValue!34 thiss!5119 x!243441)))))

(assert (= (and bs!289987 (not res!555997)) b!1255651))

(assert (=> m!1413931 s!183245))

(assert (=> m!1413931 s!183245))

(declare-fun bs!289988 () Bool)

(assert (= bs!289988 (and m!1413939 m!1413931)))

(assert (=> bs!289988 s!183245))

(assert (=> m!1413939 s!183245))

(assert (=> bs!289988 s!183245))

(assert (=> m!1413939 s!183245))

(declare-fun bs!289989 () Bool)

(declare-fun s!183247 () Bool)

(assert (= bs!289989 (and neg-inst!868 s!183247)))

(declare-fun res!555998 () Bool)

(declare-fun e!799065 () Bool)

(assert (=> bs!289989 (=> res!555998 e!799065)))

(assert (=> bs!289989 (= res!555998 (not (= (list!4665 x!243442) (list!4665 x!243441))))))

(assert (=> bs!289989 (=> true e!799065)))

(declare-fun b!1255652 () Bool)

(assert (=> b!1255652 (= e!799065 (= (toValue!34 thiss!5119 x!243442) (toValue!34 thiss!5119 x!243441)))))

(assert (= (and bs!289989 (not res!555998)) b!1255652))

(declare-fun bs!289990 () Bool)

(assert (= bs!289990 (and m!1413941 m!1413931 m!1413939)))

(assert (=> bs!289990 m!1413933))

(assert (=> bs!289990 m!1413931))

(assert (=> bs!289990 s!183247))

(declare-fun bs!289991 () Bool)

(declare-fun s!183249 () Bool)

(assert (= bs!289991 (and neg-inst!868 s!183249)))

(declare-fun res!555999 () Bool)

(declare-fun e!799066 () Bool)

(assert (=> bs!289991 (=> res!555999 e!799066)))

(assert (=> bs!289991 (= res!555999 (not (= (list!4665 x!243442) (list!4665 x!243442))))))

(assert (=> bs!289991 (=> true e!799066)))

(declare-fun b!1255653 () Bool)

(assert (=> b!1255653 (= e!799066 (= (toValue!34 thiss!5119 x!243442) (toValue!34 thiss!5119 x!243442)))))

(assert (= (and bs!289991 (not res!555999)) b!1255653))

(assert (=> m!1413941 m!1413933))

(assert (=> m!1413941 m!1413933))

(assert (=> m!1413941 s!183249))

(declare-fun bs!289992 () Bool)

(declare-fun s!183251 () Bool)

(assert (= bs!289992 (and neg-inst!868 s!183251)))

(declare-fun res!556000 () Bool)

(declare-fun e!799067 () Bool)

(assert (=> bs!289992 (=> res!556000 e!799067)))

(assert (=> bs!289992 (= res!556000 (not (= (list!4665 x!243441) (list!4665 x!243442))))))

(assert (=> bs!289992 (=> true e!799067)))

(declare-fun b!1255654 () Bool)

(assert (=> b!1255654 (= e!799067 (= (toValue!34 thiss!5119 x!243441) (toValue!34 thiss!5119 x!243442)))))

(assert (= (and bs!289992 (not res!556000)) b!1255654))

(assert (=> bs!289990 m!1413931))

(assert (=> bs!289990 m!1413933))

(assert (=> bs!289990 s!183251))

(assert (=> m!1413941 s!183249))

(declare-fun bs!289993 () Bool)

(declare-fun s!183253 () Bool)

(assert (= bs!289993 (and neg-inst!868 s!183253)))

(declare-fun res!556001 () Bool)

(declare-fun e!799068 () Bool)

(assert (=> bs!289993 (=> res!556001 e!799068)))

(assert (=> bs!289993 (= res!556001 (not (= (list!4665 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440))) (list!4665 x!243441))))))

(assert (=> bs!289993 (=> true e!799068)))

(declare-fun b!1255655 () Bool)

(assert (=> b!1255655 (= e!799068 (= (toValue!34 thiss!5119 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440))) (toValue!34 thiss!5119 x!243441)))))

(assert (= (and bs!289993 (not res!556001)) b!1255655))

(declare-fun bs!289994 () Bool)

(assert (= bs!289994 (and m!1413923 m!1413931 m!1413939)))

(assert (=> bs!289994 m!1413923))

(assert (=> bs!289994 m!1413931))

(assert (=> bs!289994 s!183253))

(declare-fun bs!289995 () Bool)

(declare-fun s!183255 () Bool)

(assert (= bs!289995 (and neg-inst!868 s!183255)))

(declare-fun res!556002 () Bool)

(declare-fun e!799069 () Bool)

(assert (=> bs!289995 (=> res!556002 e!799069)))

(assert (=> bs!289995 (= res!556002 (not (= (list!4665 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440))) (list!4665 x!243442))))))

(assert (=> bs!289995 (=> true e!799069)))

(declare-fun b!1255656 () Bool)

(assert (=> b!1255656 (= e!799069 (= (toValue!34 thiss!5119 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440))) (toValue!34 thiss!5119 x!243442)))))

(assert (= (and bs!289995 (not res!556002)) b!1255656))

(declare-fun bs!289996 () Bool)

(assert (= bs!289996 (and m!1413923 m!1413941)))

(assert (=> bs!289996 m!1413923))

(assert (=> bs!289996 m!1413933))

(assert (=> bs!289996 s!183255))

(declare-fun bs!289997 () Bool)

(declare-fun s!183257 () Bool)

(assert (= bs!289997 (and neg-inst!868 s!183257)))

(declare-fun res!556003 () Bool)

(declare-fun e!799070 () Bool)

(assert (=> bs!289997 (=> res!556003 e!799070)))

(assert (=> bs!289997 (= res!556003 (not (= (list!4665 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440))) (list!4665 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440))))))))

(assert (=> bs!289997 (=> true e!799070)))

(declare-fun b!1255657 () Bool)

(assert (=> b!1255657 (= e!799070 (= (toValue!34 thiss!5119 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440))) (toValue!34 thiss!5119 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440)))))))

(assert (= (and bs!289997 (not res!556003)) b!1255657))

(assert (=> m!1413923 s!183257))

(declare-fun bs!289998 () Bool)

(declare-fun s!183259 () Bool)

(assert (= bs!289998 (and neg-inst!868 s!183259)))

(declare-fun res!556004 () Bool)

(declare-fun e!799071 () Bool)

(assert (=> bs!289998 (=> res!556004 e!799071)))

(assert (=> bs!289998 (= res!556004 (not (= (list!4665 x!243441) (list!4665 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440))))))))

(assert (=> bs!289998 (=> true e!799071)))

(declare-fun b!1255658 () Bool)

(assert (=> b!1255658 (= e!799071 (= (toValue!34 thiss!5119 x!243441) (toValue!34 thiss!5119 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440)))))))

(assert (= (and bs!289998 (not res!556004)) b!1255658))

(assert (=> bs!289994 m!1413931))

(assert (=> bs!289994 m!1413923))

(assert (=> bs!289994 s!183259))

(declare-fun bs!289999 () Bool)

(declare-fun s!183261 () Bool)

(assert (= bs!289999 (and neg-inst!868 s!183261)))

(declare-fun res!556005 () Bool)

(declare-fun e!799072 () Bool)

(assert (=> bs!289999 (=> res!556005 e!799072)))

(assert (=> bs!289999 (= res!556005 (not (= (list!4665 x!243442) (list!4665 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440))))))))

(assert (=> bs!289999 (=> true e!799072)))

(declare-fun b!1255659 () Bool)

(assert (=> b!1255659 (= e!799072 (= (toValue!34 thiss!5119 x!243442) (toValue!34 thiss!5119 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440)))))))

(assert (= (and bs!289999 (not res!556005)) b!1255659))

(assert (=> bs!289996 m!1413933))

(assert (=> bs!289996 m!1413923))

(assert (=> bs!289996 s!183261))

(assert (=> m!1413923 s!183257))

(declare-fun bs!290000 () Bool)

(assert (= bs!290000 (and m!1413933 m!1413931 m!1413939)))

(assert (=> bs!290000 s!183247))

(declare-fun bs!290001 () Bool)

(assert (= bs!290001 (and m!1413933 m!1413923)))

(assert (=> bs!290001 s!183261))

(declare-fun bs!290002 () Bool)

(assert (= bs!290002 (and m!1413933 m!1413941)))

(assert (=> bs!290002 s!183249))

(assert (=> m!1413933 s!183249))

(assert (=> bs!290000 s!183251))

(assert (=> bs!290001 s!183255))

(assert (=> bs!290002 s!183249))

(assert (=> m!1413933 s!183249))

(declare-fun bs!290003 () Bool)

(declare-fun s!183263 () Bool)

(assert (= bs!290003 (and neg-inst!868 s!183263)))

(declare-fun res!556006 () Bool)

(declare-fun e!799073 () Bool)

(assert (=> bs!290003 (=> res!556006 e!799073)))

(assert (=> bs!290003 (= res!556006 (not (= (list!4665 x!243440) (list!4665 x!243441))))))

(assert (=> bs!290003 (=> true e!799073)))

(declare-fun b!1255660 () Bool)

(assert (=> b!1255660 (= e!799073 (= (toValue!34 thiss!5119 x!243440) (toValue!34 thiss!5119 x!243441)))))

(assert (= (and bs!290003 (not res!556006)) b!1255660))

(declare-fun bs!290004 () Bool)

(assert (= bs!290004 (and m!1413927 m!1413931 m!1413939)))

(assert (=> bs!290004 m!1413927))

(assert (=> bs!290004 m!1413931))

(assert (=> bs!290004 s!183263))

(declare-fun bs!290005 () Bool)

(declare-fun s!183265 () Bool)

(assert (= bs!290005 (and neg-inst!868 s!183265)))

(declare-fun res!556007 () Bool)

(declare-fun e!799074 () Bool)

(assert (=> bs!290005 (=> res!556007 e!799074)))

(assert (=> bs!290005 (= res!556007 (not (= (list!4665 x!243440) (list!4665 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440))))))))

(assert (=> bs!290005 (=> true e!799074)))

(declare-fun b!1255661 () Bool)

(assert (=> b!1255661 (= e!799074 (= (toValue!34 thiss!5119 x!243440) (toValue!34 thiss!5119 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440)))))))

(assert (= (and bs!290005 (not res!556007)) b!1255661))

(declare-fun bs!290006 () Bool)

(assert (= bs!290006 (and m!1413927 m!1413923)))

(assert (=> bs!290006 m!1413927))

(assert (=> bs!290006 m!1413923))

(assert (=> bs!290006 s!183265))

(declare-fun bs!290007 () Bool)

(declare-fun s!183267 () Bool)

(assert (= bs!290007 (and neg-inst!868 s!183267)))

(declare-fun res!556008 () Bool)

(declare-fun e!799075 () Bool)

(assert (=> bs!290007 (=> res!556008 e!799075)))

(assert (=> bs!290007 (= res!556008 (not (= (list!4665 x!243440) (list!4665 x!243442))))))

(assert (=> bs!290007 (=> true e!799075)))

(declare-fun b!1255662 () Bool)

(assert (=> b!1255662 (= e!799075 (= (toValue!34 thiss!5119 x!243440) (toValue!34 thiss!5119 x!243442)))))

(assert (= (and bs!290007 (not res!556008)) b!1255662))

(declare-fun bs!290008 () Bool)

(assert (= bs!290008 (and m!1413927 m!1413941 m!1413933)))

(assert (=> bs!290008 m!1413927))

(assert (=> bs!290008 m!1413933))

(assert (=> bs!290008 s!183267))

(declare-fun bs!290009 () Bool)

(declare-fun s!183269 () Bool)

(assert (= bs!290009 (and neg-inst!868 s!183269)))

(declare-fun res!556009 () Bool)

(declare-fun e!799076 () Bool)

(assert (=> bs!290009 (=> res!556009 e!799076)))

(assert (=> bs!290009 (= res!556009 (not (= (list!4665 x!243440) (list!4665 x!243440))))))

(assert (=> bs!290009 (=> true e!799076)))

(declare-fun b!1255663 () Bool)

(assert (=> b!1255663 (= e!799076 (= (toValue!34 thiss!5119 x!243440) (toValue!34 thiss!5119 x!243440)))))

(assert (= (and bs!290009 (not res!556009)) b!1255663))

(assert (=> m!1413927 s!183269))

(declare-fun bs!290010 () Bool)

(declare-fun s!183271 () Bool)

(assert (= bs!290010 (and neg-inst!868 s!183271)))

(declare-fun res!556010 () Bool)

(declare-fun e!799077 () Bool)

(assert (=> bs!290010 (=> res!556010 e!799077)))

(assert (=> bs!290010 (= res!556010 (not (= (list!4665 x!243441) (list!4665 x!243440))))))

(assert (=> bs!290010 (=> true e!799077)))

(declare-fun b!1255664 () Bool)

(assert (=> b!1255664 (= e!799077 (= (toValue!34 thiss!5119 x!243441) (toValue!34 thiss!5119 x!243440)))))

(assert (= (and bs!290010 (not res!556010)) b!1255664))

(assert (=> bs!290004 m!1413931))

(assert (=> bs!290004 m!1413927))

(assert (=> bs!290004 s!183271))

(declare-fun bs!290011 () Bool)

(declare-fun s!183273 () Bool)

(assert (= bs!290011 (and neg-inst!868 s!183273)))

(declare-fun res!556011 () Bool)

(declare-fun e!799078 () Bool)

(assert (=> bs!290011 (=> res!556011 e!799078)))

(assert (=> bs!290011 (= res!556011 (not (= (list!4665 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440))) (list!4665 x!243440))))))

(assert (=> bs!290011 (=> true e!799078)))

(declare-fun b!1255665 () Bool)

(assert (=> b!1255665 (= e!799078 (= (toValue!34 thiss!5119 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440))) (toValue!34 thiss!5119 x!243440)))))

(assert (= (and bs!290011 (not res!556011)) b!1255665))

(assert (=> bs!290006 m!1413923))

(assert (=> bs!290006 m!1413927))

(assert (=> bs!290006 s!183273))

(declare-fun bs!290012 () Bool)

(declare-fun s!183275 () Bool)

(assert (= bs!290012 (and neg-inst!868 s!183275)))

(declare-fun res!556012 () Bool)

(declare-fun e!799079 () Bool)

(assert (=> bs!290012 (=> res!556012 e!799079)))

(assert (=> bs!290012 (= res!556012 (not (= (list!4665 x!243442) (list!4665 x!243440))))))

(assert (=> bs!290012 (=> true e!799079)))

(declare-fun b!1255666 () Bool)

(assert (=> b!1255666 (= e!799079 (= (toValue!34 thiss!5119 x!243442) (toValue!34 thiss!5119 x!243440)))))

(assert (= (and bs!290012 (not res!556012)) b!1255666))

(assert (=> bs!290008 m!1413933))

(assert (=> bs!290008 m!1413927))

(assert (=> bs!290008 s!183275))

(assert (=> m!1413927 s!183269))

(declare-fun bs!290013 () Bool)

(assert (= bs!290013 (and m!1413929 m!1413923)))

(assert (=> bs!290013 s!183265))

(declare-fun bs!290014 () Bool)

(assert (= bs!290014 (and m!1413929 m!1413927)))

(assert (=> bs!290014 s!183269))

(declare-fun bs!290015 () Bool)

(assert (= bs!290015 (and m!1413929 m!1413941 m!1413933)))

(assert (=> bs!290015 s!183267))

(assert (=> m!1413929 s!183269))

(declare-fun bs!290016 () Bool)

(assert (= bs!290016 (and m!1413929 m!1413931 m!1413939)))

(assert (=> bs!290016 s!183263))

(assert (=> bs!290015 s!183275))

(assert (=> bs!290016 s!183271))

(assert (=> m!1413929 s!183269))

(assert (=> bs!290014 s!183269))

(assert (=> bs!290013 s!183273))

(declare-fun bs!290017 () Bool)

(assert (= bs!290017 (and neg-inst!868 b!1255638)))

(assert (=> bs!290017 (= true inst!869)))

(declare-fun res!555994 () Bool)

(declare-fun e!799058 () Bool)

(assert (=> start!110612 (=> res!555994 e!799058)))

(declare-fun lambda!49373 () Int)

(declare-fun Forall!467 (Int) Bool)

(assert (=> start!110612 (= res!555994 (not (Forall!467 lambda!49373)))))

(assert (=> start!110612 (= (Forall!467 lambda!49373) inst!868)))

(assert (=> start!110612 (not e!799058)))

(assert (=> start!110612 true))

(declare-fun e!799059 () Bool)

(assert (=> b!1255637 (= e!799058 e!799059)))

(declare-fun res!555995 () Bool)

(assert (=> b!1255637 (=> res!555995 e!799059)))

(declare-fun lambda!49374 () Int)

(declare-fun lambda!49375 () Int)

(declare-fun semiInverseModEq!801 (Int Int) Bool)

(assert (=> b!1255637 (= res!555995 (not (semiInverseModEq!801 lambda!49374 lambda!49375)))))

(assert (=> b!1255637 (= (semiInverseModEq!801 lambda!49374 lambda!49375) (Forall!467 lambda!49373))))

(declare-fun lambda!49376 () Int)

(declare-fun Forall2!373 (Int) Bool)

(assert (=> b!1255638 (= e!799059 (Forall2!373 lambda!49376))))

(assert (=> b!1255638 (= (Forall2!373 lambda!49376) inst!869)))

(assert (= neg-inst!869 inst!868))

(assert (= (and start!110612 (not res!555994)) b!1255637))

(assert (= (and b!1255637 (not res!555995)) b!1255638))

(assert (= neg-inst!868 inst!869))

(declare-fun m!1413947 () Bool)

(assert (=> start!110612 m!1413947))

(assert (=> start!110612 m!1413947))

(declare-fun m!1413949 () Bool)

(assert (=> b!1255637 m!1413949))

(assert (=> b!1255637 m!1413949))

(assert (=> b!1255637 m!1413947))

(declare-fun m!1413951 () Bool)

(assert (=> b!1255638 m!1413951))

(assert (=> b!1255638 m!1413951))

(push 1)

(assert (not bs!289987))

(assert (not bs!289997))

(assert (not bs!289991))

(assert (not b!1255651))

(assert (not bs!290003))

(assert (not b!1255650))

(assert (not b!1255665))

(assert (not bs!289999))

(assert (not b!1255666))

(assert (not bs!290007))

(assert (not b!1255664))

(assert (not bs!289989))

(assert (not b!1255658))

(assert (not b!1255648))

(assert (not b!1255656))

(assert (not b!1255649))

(assert (not bs!290009))

(assert (not bs!289998))

(assert (not b!1255659))

(assert (not b!1255638))

(assert (not start!110612))

(assert (not b!1255653))

(assert (not bs!290010))

(assert (not bs!289992))

(assert (not b!1255661))

(assert (not b!1255654))

(assert (not b!1255637))

(assert (not bs!290012))

(assert (not bs!290005))

(assert (not b!1255660))

(assert (not bs!290011))

(assert (not bs!289985))

(assert (not b!1255663))

(assert (not b!1255662))

(assert (not b!1255652))

(assert (not bs!289993))

(assert (not b!1255647))

(assert (not b!1255655))

(assert (not bs!289995))

(assert (not b!1255657))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!354884 () Bool)

(declare-fun efficientList!161 (BalanceConc!8158) List!12603)

(assert (=> d!354884 (= (toValue!34 thiss!5119 x!243441) (OperatorValue!2237 (efficientList!161 x!243441)))))

(declare-fun bs!290055 () Bool)

(assert (= bs!290055 d!354884))

(declare-fun m!1413987 () Bool)

(assert (=> bs!290055 m!1413987))

(assert (=> b!1255651 d!354884))

(declare-fun d!354886 () Bool)

(declare-fun list!4667 (Conc!4112) List!12603)

(assert (=> d!354886 (= (list!4665 x!243441) (list!4667 (c!208463 x!243441)))))

(declare-fun bs!290056 () Bool)

(assert (= bs!290056 d!354886))

(declare-fun m!1413989 () Bool)

(assert (=> bs!290056 m!1413989))

(assert (=> bs!289998 d!354886))

(declare-fun d!354888 () Bool)

(assert (=> d!354888 (= (list!4665 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440))) (list!4667 (c!208463 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440)))))))

(declare-fun bs!290057 () Bool)

(assert (= bs!290057 d!354888))

(declare-fun m!1413991 () Bool)

(assert (=> bs!290057 m!1413991))

(assert (=> bs!289998 d!354888))

(assert (=> b!1255654 d!354884))

(declare-fun d!354890 () Bool)

(assert (=> d!354890 (= (toValue!34 thiss!5119 x!243442) (OperatorValue!2237 (efficientList!161 x!243442)))))

(declare-fun bs!290058 () Bool)

(assert (= bs!290058 d!354890))

(declare-fun m!1413993 () Bool)

(assert (=> bs!290058 m!1413993))

(assert (=> b!1255654 d!354890))

(assert (=> bs!290010 d!354886))

(declare-fun d!354892 () Bool)

(assert (=> d!354892 (= (list!4665 x!243440) (list!4667 (c!208463 x!243440)))))

(declare-fun bs!290059 () Bool)

(assert (= bs!290059 d!354892))

(declare-fun m!1413995 () Bool)

(assert (=> bs!290059 m!1413995))

(assert (=> bs!290010 d!354892))

(assert (=> bs!289987 d!354886))

(declare-fun d!354894 () Bool)

(assert (=> d!354894 (= (toValue!34 thiss!5119 x!243440) (OperatorValue!2237 (efficientList!161 x!243440)))))

(declare-fun bs!290060 () Bool)

(assert (= bs!290060 d!354894))

(declare-fun m!1413997 () Bool)

(assert (=> bs!290060 m!1413997))

(assert (=> b!1255660 d!354894))

(assert (=> b!1255660 d!354884))

(assert (=> b!1255663 d!354894))

(declare-fun d!354896 () Bool)

(assert (=> d!354896 (= (toValue!34 thiss!5119 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440))) (OperatorValue!2237 (efficientList!161 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440)))))))

(declare-fun bs!290061 () Bool)

(assert (= bs!290061 d!354896))

(assert (=> bs!290061 m!1413921))

(declare-fun m!1413999 () Bool)

(assert (=> bs!290061 m!1413999))

(assert (=> b!1255657 d!354896))

(assert (=> bs!289992 d!354886))

(declare-fun d!354898 () Bool)

(assert (=> d!354898 (= (list!4665 x!243442) (list!4667 (c!208463 x!243442)))))

(declare-fun bs!290062 () Bool)

(assert (= bs!290062 d!354898))

(declare-fun m!1414001 () Bool)

(assert (=> bs!290062 m!1414001))

(assert (=> bs!289992 d!354898))

(assert (=> b!1255661 d!354894))

(assert (=> b!1255661 d!354896))

(assert (=> bs!289989 d!354898))

(assert (=> bs!289989 d!354886))

(assert (=> bs!290011 d!354888))

(assert (=> bs!290011 d!354892))

(assert (=> b!1255655 d!354896))

(assert (=> b!1255655 d!354884))

(assert (=> b!1255658 d!354884))

(assert (=> b!1255658 d!354896))

(assert (=> bs!290005 d!354892))

(assert (=> bs!290005 d!354888))

(assert (=> bs!289993 d!354888))

(assert (=> bs!289993 d!354886))

(assert (=> b!1255664 d!354884))

(assert (=> b!1255664 d!354894))

(assert (=> bs!289991 d!354898))

(assert (=> b!1255659 d!354890))

(assert (=> b!1255659 d!354896))

(assert (=> b!1255662 d!354894))

(assert (=> b!1255662 d!354890))

(assert (=> bs!289995 d!354888))

(assert (=> bs!289995 d!354898))

(assert (=> bs!289999 d!354898))

(assert (=> bs!289999 d!354888))

(assert (=> b!1255665 d!354896))

(assert (=> b!1255665 d!354894))

(assert (=> b!1255652 d!354890))

(assert (=> b!1255652 d!354884))

(assert (=> bs!290007 d!354892))

(assert (=> bs!290007 d!354898))

(assert (=> bs!289997 d!354888))

(assert (=> bs!290009 d!354892))

(assert (=> b!1255666 d!354890))

(assert (=> b!1255666 d!354894))

(assert (=> bs!290003 d!354892))

(assert (=> bs!290003 d!354886))

(assert (=> b!1255653 d!354890))

(assert (=> bs!290012 d!354898))

(assert (=> bs!290012 d!354892))

(assert (=> b!1255656 d!354896))

(assert (=> b!1255656 d!354890))

(declare-fun bs!290063 () Bool)

(assert (= bs!290063 (and m!1413931 b!1255651)))

(assert (=> bs!290063 m!1413939))

(assert (=> bs!290063 m!1413939))

(declare-fun bs!290064 () Bool)

(assert (= bs!290064 (and m!1413941 m!1413931 m!1413939 b!1255652)))

(assert (=> bs!290064 m!1413941))

(assert (=> bs!290064 m!1413939))

(declare-fun bs!290065 () Bool)

(assert (= bs!290065 (and m!1413941 b!1255653)))

(assert (=> bs!290065 m!1413941))

(assert (=> bs!290065 m!1413941))

(declare-fun bs!290066 () Bool)

(assert (= bs!290066 (and m!1413941 m!1413931 m!1413939 b!1255654)))

(assert (=> bs!290066 m!1413939))

(assert (=> bs!290066 m!1413941))

(declare-fun bs!290067 () Bool)

(assert (= bs!290067 (and m!1413923 m!1413931 m!1413939 b!1255655)))

(declare-fun m!1414003 () Bool)

(assert (=> bs!290067 m!1414003))

(assert (=> bs!290067 m!1413939))

(declare-fun bs!290068 () Bool)

(assert (= bs!290068 (and m!1413923 m!1413941 b!1255656)))

(assert (=> bs!290068 m!1414003))

(assert (=> bs!290068 m!1413941))

(declare-fun bs!290069 () Bool)

(assert (= bs!290069 (and m!1413923 b!1255657)))

(assert (=> bs!290069 m!1414003))

(assert (=> bs!290069 m!1414003))

(declare-fun bs!290070 () Bool)

(assert (= bs!290070 (and m!1413923 m!1413931 m!1413939 b!1255658)))

(assert (=> bs!290070 m!1413939))

(assert (=> bs!290070 m!1414003))

(declare-fun bs!290071 () Bool)

(assert (= bs!290071 (and m!1413923 m!1413941 b!1255659)))

(assert (=> bs!290071 m!1413941))

(assert (=> bs!290071 m!1414003))

(declare-fun bs!290072 () Bool)

(assert (= bs!290072 (and m!1413927 m!1413931 m!1413939 b!1255660)))

(assert (=> bs!290072 m!1413929))

(assert (=> bs!290072 m!1413939))

(declare-fun bs!290073 () Bool)

(assert (= bs!290073 (and m!1413927 m!1413923 b!1255661)))

(assert (=> bs!290073 m!1413929))

(assert (=> bs!290073 m!1414003))

(declare-fun bs!290074 () Bool)

(assert (= bs!290074 (and m!1413927 m!1413941 m!1413933 b!1255662)))

(assert (=> bs!290074 m!1413929))

(assert (=> bs!290074 m!1413941))

(declare-fun bs!290075 () Bool)

(assert (= bs!290075 (and m!1413927 b!1255663)))

(assert (=> bs!290075 m!1413929))

(assert (=> bs!290075 m!1413929))

(declare-fun bs!290076 () Bool)

(assert (= bs!290076 (and m!1413927 m!1413931 m!1413939 b!1255664)))

(assert (=> bs!290076 m!1413939))

(assert (=> bs!290076 m!1413929))

(declare-fun bs!290077 () Bool)

(assert (= bs!290077 (and m!1413927 m!1413923 b!1255665)))

(assert (=> bs!290077 m!1414003))

(assert (=> bs!290077 m!1413929))

(declare-fun bs!290078 () Bool)

(assert (= bs!290078 (and m!1413927 m!1413941 m!1413933 b!1255666)))

(assert (=> bs!290078 m!1413941))

(assert (=> bs!290078 m!1413929))

(push 1)

(assert (not d!354888))

(assert (not b!1255648))

(assert (not d!354898))

(assert (not b!1255650))

(assert (not d!354886))

(assert (not b!1255637))

(assert (not d!354884))

(assert (not d!354890))

(assert (not d!354896))

(assert (not b!1255647))

(assert (not d!354894))

(assert (not b!1255649))

(assert (not b!1255638))

(assert (not start!110612))

(assert (not d!354892))

(assert (not bs!289985))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!354916 () Bool)

(declare-fun lt!420372 () List!12603)

(assert (=> d!354916 (= lt!420372 (list!4665 x!243440))))

(declare-fun efficientList!163 (Conc!4112 List!12603) List!12603)

(declare-fun efficientList$default$2!55 (Conc!4112) List!12603)

(assert (=> d!354916 (= lt!420372 (efficientList!163 (c!208463 x!243440) (efficientList$default$2!55 (c!208463 x!243440))))))

(assert (=> d!354916 (= (efficientList!161 x!243440) lt!420372)))

(declare-fun bs!290103 () Bool)

(assert (= bs!290103 d!354916))

(assert (=> bs!290103 m!1413927))

(declare-fun m!1414023 () Bool)

(assert (=> bs!290103 m!1414023))

(assert (=> bs!290103 m!1414023))

(declare-fun m!1414025 () Bool)

(assert (=> bs!290103 m!1414025))

(assert (=> d!354894 d!354916))

(declare-fun b!1255725 () Bool)

(declare-fun e!799125 () List!12603)

(declare-fun list!4669 (IArray!8229) List!12603)

(assert (=> b!1255725 (= e!799125 (list!4669 (xs!6823 (c!208463 x!243441))))))

(declare-fun b!1255726 () Bool)

(declare-fun ++!3208 (List!12603 List!12603) List!12603)

(assert (=> b!1255726 (= e!799125 (++!3208 (list!4667 (left!10831 (c!208463 x!243441))) (list!4667 (right!11161 (c!208463 x!243441)))))))

(declare-fun b!1255723 () Bool)

(declare-fun e!799124 () List!12603)

(assert (=> b!1255723 (= e!799124 Nil!12543)))

(declare-fun b!1255724 () Bool)

(assert (=> b!1255724 (= e!799124 e!799125)))

(declare-fun c!208470 () Bool)

(assert (=> b!1255724 (= c!208470 (is-Leaf!6366 (c!208463 x!243441)))))

(declare-fun d!354918 () Bool)

(declare-fun c!208469 () Bool)

(assert (=> d!354918 (= c!208469 (is-Empty!4112 (c!208463 x!243441)))))

(assert (=> d!354918 (= (list!4667 (c!208463 x!243441)) e!799124)))

(assert (= (and d!354918 c!208469) b!1255723))

(assert (= (and d!354918 (not c!208469)) b!1255724))

(assert (= (and b!1255724 c!208470) b!1255725))

(assert (= (and b!1255724 (not c!208470)) b!1255726))

(declare-fun m!1414027 () Bool)

(assert (=> b!1255725 m!1414027))

(declare-fun m!1414029 () Bool)

(assert (=> b!1255726 m!1414029))

(declare-fun m!1414031 () Bool)

(assert (=> b!1255726 m!1414031))

(assert (=> b!1255726 m!1414029))

(assert (=> b!1255726 m!1414031))

(declare-fun m!1414033 () Bool)

(assert (=> b!1255726 m!1414033))

(assert (=> d!354886 d!354918))

(declare-fun d!354920 () Bool)

(declare-fun lt!420373 () List!12603)

(assert (=> d!354920 (= lt!420373 (list!4665 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440))))))

(assert (=> d!354920 (= lt!420373 (efficientList!163 (c!208463 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440))) (efficientList$default$2!55 (c!208463 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440))))))))

(assert (=> d!354920 (= (efficientList!161 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440))) lt!420373)))

(declare-fun bs!290104 () Bool)

(assert (= bs!290104 d!354920))

(assert (=> bs!290104 m!1413921))

(assert (=> bs!290104 m!1413923))

(declare-fun m!1414035 () Bool)

(assert (=> bs!290104 m!1414035))

(assert (=> bs!290104 m!1414035))

(declare-fun m!1414037 () Bool)

(assert (=> bs!290104 m!1414037))

(assert (=> d!354896 d!354920))

(declare-fun b!1255729 () Bool)

(declare-fun e!799127 () List!12603)

(assert (=> b!1255729 (= e!799127 (list!4669 (xs!6823 (c!208463 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440))))))))

(declare-fun b!1255730 () Bool)

(assert (=> b!1255730 (= e!799127 (++!3208 (list!4667 (left!10831 (c!208463 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440))))) (list!4667 (right!11161 (c!208463 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440)))))))))

(declare-fun b!1255727 () Bool)

(declare-fun e!799126 () List!12603)

(assert (=> b!1255727 (= e!799126 Nil!12543)))

(declare-fun b!1255728 () Bool)

(assert (=> b!1255728 (= e!799126 e!799127)))

(declare-fun c!208472 () Bool)

(assert (=> b!1255728 (= c!208472 (is-Leaf!6366 (c!208463 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440)))))))

(declare-fun d!354922 () Bool)

(declare-fun c!208471 () Bool)

(assert (=> d!354922 (= c!208471 (is-Empty!4112 (c!208463 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440)))))))

(assert (=> d!354922 (= (list!4667 (c!208463 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440)))) e!799126)))

(assert (= (and d!354922 c!208471) b!1255727))

(assert (= (and d!354922 (not c!208471)) b!1255728))

(assert (= (and b!1255728 c!208472) b!1255729))

(assert (= (and b!1255728 (not c!208472)) b!1255730))

(declare-fun m!1414039 () Bool)

(assert (=> b!1255729 m!1414039))

(declare-fun m!1414041 () Bool)

(assert (=> b!1255730 m!1414041))

(declare-fun m!1414043 () Bool)

(assert (=> b!1255730 m!1414043))

(assert (=> b!1255730 m!1414041))

(assert (=> b!1255730 m!1414043))

(declare-fun m!1414045 () Bool)

(assert (=> b!1255730 m!1414045))

(assert (=> d!354888 d!354922))

(declare-fun b!1255733 () Bool)

(declare-fun e!799129 () List!12603)

(assert (=> b!1255733 (= e!799129 (list!4669 (xs!6823 (c!208463 x!243442))))))

(declare-fun b!1255734 () Bool)

(assert (=> b!1255734 (= e!799129 (++!3208 (list!4667 (left!10831 (c!208463 x!243442))) (list!4667 (right!11161 (c!208463 x!243442)))))))

(declare-fun b!1255731 () Bool)

(declare-fun e!799128 () List!12603)

(assert (=> b!1255731 (= e!799128 Nil!12543)))

(declare-fun b!1255732 () Bool)

(assert (=> b!1255732 (= e!799128 e!799129)))

(declare-fun c!208474 () Bool)

(assert (=> b!1255732 (= c!208474 (is-Leaf!6366 (c!208463 x!243442)))))

(declare-fun d!354924 () Bool)

(declare-fun c!208473 () Bool)

(assert (=> d!354924 (= c!208473 (is-Empty!4112 (c!208463 x!243442)))))

(assert (=> d!354924 (= (list!4667 (c!208463 x!243442)) e!799128)))

(assert (= (and d!354924 c!208473) b!1255731))

(assert (= (and d!354924 (not c!208473)) b!1255732))

(assert (= (and b!1255732 c!208474) b!1255733))

(assert (= (and b!1255732 (not c!208474)) b!1255734))

(declare-fun m!1414047 () Bool)

(assert (=> b!1255733 m!1414047))

(declare-fun m!1414049 () Bool)

(assert (=> b!1255734 m!1414049))

(declare-fun m!1414051 () Bool)

(assert (=> b!1255734 m!1414051))

(assert (=> b!1255734 m!1414049))

(assert (=> b!1255734 m!1414051))

(declare-fun m!1414053 () Bool)

(assert (=> b!1255734 m!1414053))

(assert (=> d!354898 d!354924))

(declare-fun d!354926 () Bool)

(declare-fun lt!420374 () List!12603)

(assert (=> d!354926 (= lt!420374 (list!4665 x!243442))))

(assert (=> d!354926 (= lt!420374 (efficientList!163 (c!208463 x!243442) (efficientList$default$2!55 (c!208463 x!243442))))))

(assert (=> d!354926 (= (efficientList!161 x!243442) lt!420374)))

(declare-fun bs!290105 () Bool)

(assert (= bs!290105 d!354926))

(assert (=> bs!290105 m!1413933))

(declare-fun m!1414055 () Bool)

(assert (=> bs!290105 m!1414055))

(assert (=> bs!290105 m!1414055))

(declare-fun m!1414057 () Bool)

(assert (=> bs!290105 m!1414057))

(assert (=> d!354890 d!354926))

(declare-fun d!354928 () Bool)

(declare-fun lt!420375 () List!12603)

(assert (=> d!354928 (= lt!420375 (list!4665 x!243441))))

(assert (=> d!354928 (= lt!420375 (efficientList!163 (c!208463 x!243441) (efficientList$default$2!55 (c!208463 x!243441))))))

(assert (=> d!354928 (= (efficientList!161 x!243441) lt!420375)))

(declare-fun bs!290106 () Bool)

(assert (= bs!290106 d!354928))

(assert (=> bs!290106 m!1413931))

(declare-fun m!1414059 () Bool)

(assert (=> bs!290106 m!1414059))

(assert (=> bs!290106 m!1414059))

(declare-fun m!1414061 () Bool)

(assert (=> bs!290106 m!1414061))

(assert (=> d!354884 d!354928))

(declare-fun b!1255737 () Bool)

(declare-fun e!799131 () List!12603)

(assert (=> b!1255737 (= e!799131 (list!4669 (xs!6823 (c!208463 x!243440))))))

(declare-fun b!1255738 () Bool)

(assert (=> b!1255738 (= e!799131 (++!3208 (list!4667 (left!10831 (c!208463 x!243440))) (list!4667 (right!11161 (c!208463 x!243440)))))))

(declare-fun b!1255735 () Bool)

(declare-fun e!799130 () List!12603)

(assert (=> b!1255735 (= e!799130 Nil!12543)))

(declare-fun b!1255736 () Bool)

(assert (=> b!1255736 (= e!799130 e!799131)))

(declare-fun c!208476 () Bool)

(assert (=> b!1255736 (= c!208476 (is-Leaf!6366 (c!208463 x!243440)))))

(declare-fun d!354930 () Bool)

(declare-fun c!208475 () Bool)

(assert (=> d!354930 (= c!208475 (is-Empty!4112 (c!208463 x!243440)))))

(assert (=> d!354930 (= (list!4667 (c!208463 x!243440)) e!799130)))

(assert (= (and d!354930 c!208475) b!1255735))

(assert (= (and d!354930 (not c!208475)) b!1255736))

(assert (= (and b!1255736 c!208476) b!1255737))

(assert (= (and b!1255736 (not c!208476)) b!1255738))

(declare-fun m!1414063 () Bool)

(assert (=> b!1255737 m!1414063))

(declare-fun m!1414065 () Bool)

(assert (=> b!1255738 m!1414065))

(declare-fun m!1414067 () Bool)

(assert (=> b!1255738 m!1414067))

(assert (=> b!1255738 m!1414065))

(assert (=> b!1255738 m!1414067))

(declare-fun m!1414069 () Bool)

(assert (=> b!1255738 m!1414069))

(assert (=> d!354892 d!354930))

(push 1)

(assert (not b!1255648))

(assert (not b!1255649))

(assert (not b!1255726))

(assert (not b!1255738))

(assert (not b!1255650))

(assert (not b!1255725))

(assert (not bs!289985))

(assert (not b!1255729))

(assert (not b!1255638))

(assert (not start!110612))

(assert (not d!354916))

(assert (not b!1255637))

(assert (not b!1255733))

(assert (not b!1255737))

(assert (not b!1255734))

(assert (not b!1255730))

(assert (not d!354928))

(assert (not d!354920))

(assert (not d!354926))

(assert (not b!1255647))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!354948 () Bool)

(declare-fun isBalanced!1201 (Conc!4112) Bool)

(assert (=> d!354948 (= (inv!16858 x!243442) (isBalanced!1201 (c!208463 x!243442)))))

(declare-fun bs!290111 () Bool)

(assert (= bs!290111 d!354948))

(declare-fun m!1414119 () Bool)

(assert (=> bs!290111 m!1414119))

(assert (=> b!1255638 d!354948))

(declare-fun d!354950 () Bool)

(assert (=> d!354950 (= (inv!16858 x!243441) (isBalanced!1201 (c!208463 x!243441)))))

(declare-fun bs!290112 () Bool)

(assert (= bs!290112 d!354950))

(declare-fun m!1414121 () Bool)

(assert (=> bs!290112 m!1414121))

(assert (=> b!1255638 d!354950))

(assert (=> b!1255638 d!354898))

(declare-fun d!354952 () Bool)

(declare-fun choose!7849 (Int) Bool)

(assert (=> d!354952 (= (Forall2!373 lambda!49376) (choose!7849 lambda!49376))))

(declare-fun bs!290113 () Bool)

(assert (= bs!290113 d!354952))

(declare-fun m!1414123 () Bool)

(assert (=> bs!290113 m!1414123))

(assert (=> b!1255638 d!354952))

(assert (=> b!1255638 d!354886))

(declare-fun bs!290114 () Bool)

(declare-fun d!354954 () Bool)

(assert (= bs!290114 (and d!354954 start!110612)))

(declare-fun lambda!49401 () Int)

(assert (=> bs!290114 (not (= lambda!49401 lambda!49373))))

(assert (=> d!354954 true))

(declare-fun order!7621 () Int)

(declare-fun order!7619 () Int)

(declare-fun dynLambda!5489 (Int Int) Int)

(declare-fun dynLambda!5490 (Int Int) Int)

(assert (=> d!354954 (< (dynLambda!5489 order!7619 lambda!49374) (dynLambda!5490 order!7621 lambda!49401))))

(assert (=> d!354954 true))

(declare-fun order!7623 () Int)

(declare-fun dynLambda!5491 (Int Int) Int)

(assert (=> d!354954 (< (dynLambda!5491 order!7623 lambda!49375) (dynLambda!5490 order!7621 lambda!49401))))

(assert (=> d!354954 (= (semiInverseModEq!801 lambda!49374 lambda!49375) (Forall!467 lambda!49401))))

(declare-fun bs!290115 () Bool)

(assert (= bs!290115 d!354954))

(declare-fun m!1414125 () Bool)

(assert (=> bs!290115 m!1414125))

(assert (=> b!1255637 d!354954))

(declare-fun d!354956 () Bool)

(declare-fun choose!7850 (Int) Bool)

(assert (=> d!354956 (= (Forall!467 lambda!49373) (choose!7850 lambda!49373))))

(declare-fun bs!290116 () Bool)

(assert (= bs!290116 d!354956))

(declare-fun m!1414127 () Bool)

(assert (=> bs!290116 m!1414127))

(assert (=> b!1255637 d!354956))

(assert (=> d!354916 d!354892))

(declare-fun b!1255779 () Bool)

(declare-fun e!799150 () List!12603)

(declare-fun lt!420394 () List!12603)

(assert (=> b!1255779 (= e!799150 lt!420394)))

(declare-fun d!354958 () Bool)

(declare-fun lt!420396 () List!12603)

(assert (=> d!354958 (= lt!420396 (++!3208 (list!4667 (c!208463 x!243440)) (efficientList$default$2!55 (c!208463 x!243440))))))

(declare-fun e!799151 () List!12603)

(assert (=> d!354958 (= lt!420396 e!799151)))

(declare-fun c!208495 () Bool)

(assert (=> d!354958 (= c!208495 (is-Empty!4112 (c!208463 x!243440)))))

(assert (=> d!354958 (= (efficientList!163 (c!208463 x!243440) (efficientList$default$2!55 (c!208463 x!243440))) lt!420396)))

(declare-fun b!1255780 () Bool)

(declare-fun e!799152 () List!12603)

(declare-fun call!88076 () List!12603)

(assert (=> b!1255780 (= e!799152 call!88076)))

(declare-fun b!1255781 () Bool)

(assert (=> b!1255781 (= e!799151 (efficientList$default$2!55 (c!208463 x!243440)))))

(declare-fun b!1255782 () Bool)

(declare-fun efficientList!165 (IArray!8229) List!12603)

(assert (=> b!1255782 (= e!799150 (efficientList!165 (xs!6823 (c!208463 x!243440))))))

(declare-fun b!1255783 () Bool)

(assert (=> b!1255783 (= e!799151 e!799152)))

(declare-fun c!208496 () Bool)

(assert (=> b!1255783 (= c!208496 (is-Leaf!6366 (c!208463 x!243440)))))

(declare-fun b!1255784 () Bool)

(declare-datatypes ((Unit!18826 0))(
  ( (Unit!18827) )
))
(declare-fun lt!420395 () Unit!18826)

(declare-fun lt!420392 () Unit!18826)

(assert (=> b!1255784 (= lt!420395 lt!420392)))

(declare-fun lt!420393 () List!12603)

(assert (=> b!1255784 (= (++!3208 (++!3208 lt!420393 lt!420394) (efficientList$default$2!55 (c!208463 x!243440))) (++!3208 lt!420393 call!88076))))

(declare-fun lemmaConcatAssociativity!802 (List!12603 List!12603 List!12603) Unit!18826)

(assert (=> b!1255784 (= lt!420392 (lemmaConcatAssociativity!802 lt!420393 lt!420394 (efficientList$default$2!55 (c!208463 x!243440))))))

(assert (=> b!1255784 (= lt!420394 (list!4667 (right!11161 (c!208463 x!243440))))))

(assert (=> b!1255784 (= lt!420393 (list!4667 (left!10831 (c!208463 x!243440))))))

(assert (=> b!1255784 (= e!799152 (efficientList!163 (left!10831 (c!208463 x!243440)) (efficientList!163 (right!11161 (c!208463 x!243440)) (efficientList$default$2!55 (c!208463 x!243440)))))))

(declare-fun bm!88071 () Bool)

(declare-fun c!208497 () Bool)

(assert (=> bm!88071 (= c!208497 c!208496)))

(assert (=> bm!88071 (= call!88076 (++!3208 e!799150 (efficientList$default$2!55 (c!208463 x!243440))))))

(assert (= (and d!354958 c!208495) b!1255781))

(assert (= (and d!354958 (not c!208495)) b!1255783))

(assert (= (and b!1255783 c!208496) b!1255780))

(assert (= (and b!1255783 (not c!208496)) b!1255784))

(assert (= (or b!1255780 b!1255784) bm!88071))

(assert (= (and bm!88071 c!208497) b!1255782))

(assert (= (and bm!88071 (not c!208497)) b!1255779))

(assert (=> d!354958 m!1413995))

(assert (=> d!354958 m!1413995))

(assert (=> d!354958 m!1414023))

(declare-fun m!1414129 () Bool)

(assert (=> d!354958 m!1414129))

(declare-fun m!1414131 () Bool)

(assert (=> b!1255782 m!1414131))

(declare-fun m!1414133 () Bool)

(assert (=> b!1255784 m!1414133))

(assert (=> b!1255784 m!1414067))

(assert (=> b!1255784 m!1414065))

(assert (=> b!1255784 m!1414023))

(declare-fun m!1414135 () Bool)

(assert (=> b!1255784 m!1414135))

(declare-fun m!1414137 () Bool)

(assert (=> b!1255784 m!1414137))

(declare-fun m!1414139 () Bool)

(assert (=> b!1255784 m!1414139))

(declare-fun m!1414141 () Bool)

(assert (=> b!1255784 m!1414141))

(assert (=> b!1255784 m!1414137))

(assert (=> b!1255784 m!1414023))

(declare-fun m!1414143 () Bool)

(assert (=> b!1255784 m!1414143))

(assert (=> b!1255784 m!1414023))

(assert (=> b!1255784 m!1414139))

(assert (=> bm!88071 m!1414023))

(declare-fun m!1414145 () Bool)

(assert (=> bm!88071 m!1414145))

(assert (=> d!354916 d!354958))

(declare-fun d!354960 () Bool)

(assert (=> d!354960 (= (efficientList$default$2!55 (c!208463 x!243440)) Nil!12543)))

(assert (=> d!354916 d!354960))

(assert (=> d!354926 d!354898))

(declare-fun b!1255785 () Bool)

(declare-fun e!799153 () List!12603)

(declare-fun lt!420399 () List!12603)

(assert (=> b!1255785 (= e!799153 lt!420399)))

(declare-fun d!354962 () Bool)

(declare-fun lt!420401 () List!12603)

(assert (=> d!354962 (= lt!420401 (++!3208 (list!4667 (c!208463 x!243442)) (efficientList$default$2!55 (c!208463 x!243442))))))

(declare-fun e!799154 () List!12603)

(assert (=> d!354962 (= lt!420401 e!799154)))

(declare-fun c!208498 () Bool)

(assert (=> d!354962 (= c!208498 (is-Empty!4112 (c!208463 x!243442)))))

(assert (=> d!354962 (= (efficientList!163 (c!208463 x!243442) (efficientList$default$2!55 (c!208463 x!243442))) lt!420401)))

(declare-fun b!1255786 () Bool)

(declare-fun e!799155 () List!12603)

(declare-fun call!88077 () List!12603)

(assert (=> b!1255786 (= e!799155 call!88077)))

(declare-fun b!1255787 () Bool)

(assert (=> b!1255787 (= e!799154 (efficientList$default$2!55 (c!208463 x!243442)))))

(declare-fun b!1255788 () Bool)

(assert (=> b!1255788 (= e!799153 (efficientList!165 (xs!6823 (c!208463 x!243442))))))

(declare-fun b!1255789 () Bool)

(assert (=> b!1255789 (= e!799154 e!799155)))

(declare-fun c!208499 () Bool)

(assert (=> b!1255789 (= c!208499 (is-Leaf!6366 (c!208463 x!243442)))))

(declare-fun b!1255790 () Bool)

(declare-fun lt!420400 () Unit!18826)

(declare-fun lt!420397 () Unit!18826)

(assert (=> b!1255790 (= lt!420400 lt!420397)))

(declare-fun lt!420398 () List!12603)

(assert (=> b!1255790 (= (++!3208 (++!3208 lt!420398 lt!420399) (efficientList$default$2!55 (c!208463 x!243442))) (++!3208 lt!420398 call!88077))))

(assert (=> b!1255790 (= lt!420397 (lemmaConcatAssociativity!802 lt!420398 lt!420399 (efficientList$default$2!55 (c!208463 x!243442))))))

(assert (=> b!1255790 (= lt!420399 (list!4667 (right!11161 (c!208463 x!243442))))))

(assert (=> b!1255790 (= lt!420398 (list!4667 (left!10831 (c!208463 x!243442))))))

(assert (=> b!1255790 (= e!799155 (efficientList!163 (left!10831 (c!208463 x!243442)) (efficientList!163 (right!11161 (c!208463 x!243442)) (efficientList$default$2!55 (c!208463 x!243442)))))))

(declare-fun bm!88072 () Bool)

(declare-fun c!208500 () Bool)

(assert (=> bm!88072 (= c!208500 c!208499)))

(assert (=> bm!88072 (= call!88077 (++!3208 e!799153 (efficientList$default$2!55 (c!208463 x!243442))))))

(assert (= (and d!354962 c!208498) b!1255787))

(assert (= (and d!354962 (not c!208498)) b!1255789))

(assert (= (and b!1255789 c!208499) b!1255786))

(assert (= (and b!1255789 (not c!208499)) b!1255790))

(assert (= (or b!1255786 b!1255790) bm!88072))

(assert (= (and bm!88072 c!208500) b!1255788))

(assert (= (and bm!88072 (not c!208500)) b!1255785))

(assert (=> d!354962 m!1414001))

(assert (=> d!354962 m!1414001))

(assert (=> d!354962 m!1414055))

(declare-fun m!1414147 () Bool)

(assert (=> d!354962 m!1414147))

(declare-fun m!1414149 () Bool)

(assert (=> b!1255788 m!1414149))

(declare-fun m!1414151 () Bool)

(assert (=> b!1255790 m!1414151))

(assert (=> b!1255790 m!1414051))

(assert (=> b!1255790 m!1414049))

(assert (=> b!1255790 m!1414055))

(declare-fun m!1414153 () Bool)

(assert (=> b!1255790 m!1414153))

(declare-fun m!1414155 () Bool)

(assert (=> b!1255790 m!1414155))

(declare-fun m!1414157 () Bool)

(assert (=> b!1255790 m!1414157))

(declare-fun m!1414159 () Bool)

(assert (=> b!1255790 m!1414159))

(assert (=> b!1255790 m!1414155))

(assert (=> b!1255790 m!1414055))

(declare-fun m!1414161 () Bool)

(assert (=> b!1255790 m!1414161))

(assert (=> b!1255790 m!1414055))

(assert (=> b!1255790 m!1414157))

(assert (=> bm!88072 m!1414055))

(declare-fun m!1414163 () Bool)

(assert (=> bm!88072 m!1414163))

(assert (=> d!354926 d!354962))

(declare-fun d!354964 () Bool)

(assert (=> d!354964 (= (efficientList$default$2!55 (c!208463 x!243442)) Nil!12543)))

(assert (=> d!354926 d!354964))

(assert (=> start!110612 d!354956))

(assert (=> start!110612 d!354888))

(assert (=> start!110612 d!354892))

(assert (=> start!110612 d!354894))

(declare-fun d!354966 () Bool)

(assert (=> d!354966 (= (inv!16858 x!243440) (isBalanced!1201 (c!208463 x!243440)))))

(declare-fun bs!290117 () Bool)

(assert (= bs!290117 d!354966))

(declare-fun m!1414165 () Bool)

(assert (=> bs!290117 m!1414165))

(assert (=> start!110612 d!354966))

(declare-fun d!354968 () Bool)

(declare-fun c!208504 () Bool)

(assert (=> d!354968 (= c!208504 (is-OperatorValue!2237 (toValue!34 thiss!5119 x!243440)))))

(declare-fun e!799158 () BalanceConc!8158)

(assert (=> d!354968 (= (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440)) e!799158)))

(declare-fun b!1255795 () Bool)

(declare-fun seqFromList!1576 (List!12603) BalanceConc!8158)

(assert (=> b!1255795 (= e!799158 (seqFromList!1576 (op!2294 (toValue!34 thiss!5119 x!243440))))))

(declare-fun b!1255796 () Bool)

(assert (=> b!1255796 (= e!799158 (BalanceConc!8159 Empty!4112))))

(assert (= (and d!354968 c!208504) b!1255795))

(assert (= (and d!354968 (not c!208504)) b!1255796))

(declare-fun m!1414167 () Bool)

(assert (=> b!1255795 m!1414167))

(assert (=> start!110612 d!354968))

(assert (=> d!354920 d!354888))

(declare-fun b!1255797 () Bool)

(declare-fun e!799159 () List!12603)

(declare-fun lt!420404 () List!12603)

(assert (=> b!1255797 (= e!799159 lt!420404)))

(declare-fun d!354970 () Bool)

(declare-fun lt!420406 () List!12603)

(assert (=> d!354970 (= lt!420406 (++!3208 (list!4667 (c!208463 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440)))) (efficientList$default$2!55 (c!208463 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440))))))))

(declare-fun e!799160 () List!12603)

(assert (=> d!354970 (= lt!420406 e!799160)))

(declare-fun c!208505 () Bool)

(assert (=> d!354970 (= c!208505 (is-Empty!4112 (c!208463 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440)))))))

(assert (=> d!354970 (= (efficientList!163 (c!208463 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440))) (efficientList$default$2!55 (c!208463 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440))))) lt!420406)))

(declare-fun b!1255798 () Bool)

(declare-fun e!799161 () List!12603)

(declare-fun call!88078 () List!12603)

(assert (=> b!1255798 (= e!799161 call!88078)))

(declare-fun b!1255799 () Bool)

(assert (=> b!1255799 (= e!799160 (efficientList$default$2!55 (c!208463 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440)))))))

(declare-fun b!1255800 () Bool)

(assert (=> b!1255800 (= e!799159 (efficientList!165 (xs!6823 (c!208463 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440))))))))

(declare-fun b!1255801 () Bool)

(assert (=> b!1255801 (= e!799160 e!799161)))

(declare-fun c!208506 () Bool)

(assert (=> b!1255801 (= c!208506 (is-Leaf!6366 (c!208463 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440)))))))

(declare-fun b!1255802 () Bool)

(declare-fun lt!420405 () Unit!18826)

(declare-fun lt!420402 () Unit!18826)

(assert (=> b!1255802 (= lt!420405 lt!420402)))

(declare-fun lt!420403 () List!12603)

(assert (=> b!1255802 (= (++!3208 (++!3208 lt!420403 lt!420404) (efficientList$default$2!55 (c!208463 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440))))) (++!3208 lt!420403 call!88078))))

(assert (=> b!1255802 (= lt!420402 (lemmaConcatAssociativity!802 lt!420403 lt!420404 (efficientList$default$2!55 (c!208463 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440))))))))

(assert (=> b!1255802 (= lt!420404 (list!4667 (right!11161 (c!208463 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440))))))))

(assert (=> b!1255802 (= lt!420403 (list!4667 (left!10831 (c!208463 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440))))))))

(assert (=> b!1255802 (= e!799161 (efficientList!163 (left!10831 (c!208463 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440)))) (efficientList!163 (right!11161 (c!208463 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440)))) (efficientList$default$2!55 (c!208463 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440)))))))))

(declare-fun bm!88073 () Bool)

(declare-fun c!208507 () Bool)

(assert (=> bm!88073 (= c!208507 c!208506)))

(assert (=> bm!88073 (= call!88078 (++!3208 e!799159 (efficientList$default$2!55 (c!208463 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440))))))))

(assert (= (and d!354970 c!208505) b!1255799))

(assert (= (and d!354970 (not c!208505)) b!1255801))

(assert (= (and b!1255801 c!208506) b!1255798))

(assert (= (and b!1255801 (not c!208506)) b!1255802))

(assert (= (or b!1255798 b!1255802) bm!88073))

(assert (= (and bm!88073 c!208507) b!1255800))

(assert (= (and bm!88073 (not c!208507)) b!1255797))

(assert (=> d!354970 m!1413991))

(assert (=> d!354970 m!1413991))

(assert (=> d!354970 m!1414035))

(declare-fun m!1414169 () Bool)

(assert (=> d!354970 m!1414169))

(declare-fun m!1414171 () Bool)

(assert (=> b!1255800 m!1414171))

(declare-fun m!1414173 () Bool)

(assert (=> b!1255802 m!1414173))

(assert (=> b!1255802 m!1414043))

(assert (=> b!1255802 m!1414041))

(assert (=> b!1255802 m!1414035))

(declare-fun m!1414175 () Bool)

(assert (=> b!1255802 m!1414175))

(declare-fun m!1414177 () Bool)

(assert (=> b!1255802 m!1414177))

(declare-fun m!1414179 () Bool)

(assert (=> b!1255802 m!1414179))

(declare-fun m!1414181 () Bool)

(assert (=> b!1255802 m!1414181))

(assert (=> b!1255802 m!1414177))

(assert (=> b!1255802 m!1414035))

(declare-fun m!1414183 () Bool)

(assert (=> b!1255802 m!1414183))

(assert (=> b!1255802 m!1414035))

(assert (=> b!1255802 m!1414179))

(assert (=> bm!88073 m!1414035))

(declare-fun m!1414185 () Bool)

(assert (=> bm!88073 m!1414185))

(assert (=> d!354920 d!354970))

(declare-fun d!354972 () Bool)

(assert (=> d!354972 (= (efficientList$default$2!55 (c!208463 (toCharacters!27 thiss!5119 (toValue!34 thiss!5119 x!243440)))) Nil!12543)))

(assert (=> d!354920 d!354972))

(declare-fun d!354974 () Bool)

(declare-fun c!208510 () Bool)

(assert (=> d!354974 (= c!208510 (is-Node!4112 (c!208463 x!243441)))))

(declare-fun e!799166 () Bool)

(assert (=> d!354974 (= (inv!16857 (c!208463 x!243441)) e!799166)))

(declare-fun b!1255809 () Bool)

(declare-fun inv!16861 (Conc!4112) Bool)

(assert (=> b!1255809 (= e!799166 (inv!16861 (c!208463 x!243441)))))

(declare-fun b!1255810 () Bool)

(declare-fun e!799167 () Bool)

(assert (=> b!1255810 (= e!799166 e!799167)))

(declare-fun res!556056 () Bool)

(assert (=> b!1255810 (= res!556056 (not (is-Leaf!6366 (c!208463 x!243441))))))

(assert (=> b!1255810 (=> res!556056 e!799167)))

(declare-fun b!1255811 () Bool)

(declare-fun inv!16862 (Conc!4112) Bool)

(assert (=> b!1255811 (= e!799167 (inv!16862 (c!208463 x!243441)))))

(assert (= (and d!354974 c!208510) b!1255809))

(assert (= (and d!354974 (not c!208510)) b!1255810))

(assert (= (and b!1255810 (not res!556056)) b!1255811))

(declare-fun m!1414187 () Bool)

(assert (=> b!1255809 m!1414187))

(declare-fun m!1414189 () Bool)

(assert (=> b!1255811 m!1414189))

(assert (=> b!1255649 d!354974))

(declare-fun d!354976 () Bool)

(declare-fun c!208511 () Bool)

(assert (=> d!354976 (= c!208511 (is-Node!4112 (c!208463 x!243442)))))

(declare-fun e!799168 () Bool)

(assert (=> d!354976 (= (inv!16857 (c!208463 x!243442)) e!799168)))

(declare-fun b!1255812 () Bool)

(assert (=> b!1255812 (= e!799168 (inv!16861 (c!208463 x!243442)))))

(declare-fun b!1255813 () Bool)

(declare-fun e!799169 () Bool)

(assert (=> b!1255813 (= e!799168 e!799169)))

(declare-fun res!556057 () Bool)

(assert (=> b!1255813 (= res!556057 (not (is-Leaf!6366 (c!208463 x!243442))))))

(assert (=> b!1255813 (=> res!556057 e!799169)))

(declare-fun b!1255814 () Bool)

(assert (=> b!1255814 (= e!799169 (inv!16862 (c!208463 x!243442)))))

(assert (= (and d!354976 c!208511) b!1255812))

(assert (= (and d!354976 (not c!208511)) b!1255813))

(assert (= (and b!1255813 (not res!556057)) b!1255814))

(declare-fun m!1414191 () Bool)

(assert (=> b!1255812 m!1414191))

(declare-fun m!1414193 () Bool)

(assert (=> b!1255814 m!1414193))

(assert (=> b!1255650 d!354976))

(assert (=> bs!289985 d!354888))

(assert (=> bs!289985 d!354968))

(assert (=> bs!289985 d!354894))

(assert (=> bs!289985 d!354892))

(assert (=> b!1255648 d!354884))

(assert (=> b!1255648 d!354890))

(assert (=> d!354928 d!354886))

(declare-fun b!1255815 () Bool)

(declare-fun e!799170 () List!12603)

(declare-fun lt!420409 () List!12603)

(assert (=> b!1255815 (= e!799170 lt!420409)))

(declare-fun d!354978 () Bool)

(declare-fun lt!420411 () List!12603)

(assert (=> d!354978 (= lt!420411 (++!3208 (list!4667 (c!208463 x!243441)) (efficientList$default$2!55 (c!208463 x!243441))))))

(declare-fun e!799171 () List!12603)

(assert (=> d!354978 (= lt!420411 e!799171)))

(declare-fun c!208512 () Bool)

(assert (=> d!354978 (= c!208512 (is-Empty!4112 (c!208463 x!243441)))))

(assert (=> d!354978 (= (efficientList!163 (c!208463 x!243441) (efficientList$default$2!55 (c!208463 x!243441))) lt!420411)))

(declare-fun b!1255816 () Bool)

(declare-fun e!799172 () List!12603)

(declare-fun call!88079 () List!12603)

(assert (=> b!1255816 (= e!799172 call!88079)))

(declare-fun b!1255817 () Bool)

(assert (=> b!1255817 (= e!799171 (efficientList$default$2!55 (c!208463 x!243441)))))

(declare-fun b!1255818 () Bool)

(assert (=> b!1255818 (= e!799170 (efficientList!165 (xs!6823 (c!208463 x!243441))))))

(declare-fun b!1255819 () Bool)

(assert (=> b!1255819 (= e!799171 e!799172)))

(declare-fun c!208513 () Bool)

(assert (=> b!1255819 (= c!208513 (is-Leaf!6366 (c!208463 x!243441)))))

(declare-fun b!1255820 () Bool)

(declare-fun lt!420410 () Unit!18826)

(declare-fun lt!420407 () Unit!18826)

(assert (=> b!1255820 (= lt!420410 lt!420407)))

(declare-fun lt!420408 () List!12603)

(assert (=> b!1255820 (= (++!3208 (++!3208 lt!420408 lt!420409) (efficientList$default$2!55 (c!208463 x!243441))) (++!3208 lt!420408 call!88079))))

(assert (=> b!1255820 (= lt!420407 (lemmaConcatAssociativity!802 lt!420408 lt!420409 (efficientList$default$2!55 (c!208463 x!243441))))))

(assert (=> b!1255820 (= lt!420409 (list!4667 (right!11161 (c!208463 x!243441))))))

(assert (=> b!1255820 (= lt!420408 (list!4667 (left!10831 (c!208463 x!243441))))))

(assert (=> b!1255820 (= e!799172 (efficientList!163 (left!10831 (c!208463 x!243441)) (efficientList!163 (right!11161 (c!208463 x!243441)) (efficientList$default$2!55 (c!208463 x!243441)))))))

(declare-fun bm!88074 () Bool)

(declare-fun c!208514 () Bool)

(assert (=> bm!88074 (= c!208514 c!208513)))

(assert (=> bm!88074 (= call!88079 (++!3208 e!799170 (efficientList$default$2!55 (c!208463 x!243441))))))

(assert (= (and d!354978 c!208512) b!1255817))

(assert (= (and d!354978 (not c!208512)) b!1255819))

(assert (= (and b!1255819 c!208513) b!1255816))

(assert (= (and b!1255819 (not c!208513)) b!1255820))

(assert (= (or b!1255816 b!1255820) bm!88074))

(assert (= (and bm!88074 c!208514) b!1255818))

(assert (= (and bm!88074 (not c!208514)) b!1255815))

(assert (=> d!354978 m!1413989))

(assert (=> d!354978 m!1413989))

(assert (=> d!354978 m!1414059))

(declare-fun m!1414195 () Bool)

(assert (=> d!354978 m!1414195))

(declare-fun m!1414197 () Bool)

(assert (=> b!1255818 m!1414197))

(declare-fun m!1414199 () Bool)

(assert (=> b!1255820 m!1414199))

(assert (=> b!1255820 m!1414031))

(assert (=> b!1255820 m!1414029))

(assert (=> b!1255820 m!1414059))

(declare-fun m!1414201 () Bool)

(assert (=> b!1255820 m!1414201))

(declare-fun m!1414203 () Bool)

(assert (=> b!1255820 m!1414203))

(declare-fun m!1414205 () Bool)

(assert (=> b!1255820 m!1414205))

(declare-fun m!1414207 () Bool)

(assert (=> b!1255820 m!1414207))

(assert (=> b!1255820 m!1414203))

(assert (=> b!1255820 m!1414059))

(declare-fun m!1414209 () Bool)

(assert (=> b!1255820 m!1414209))

(assert (=> b!1255820 m!1414059))

(assert (=> b!1255820 m!1414205))

(assert (=> bm!88074 m!1414059))

(declare-fun m!1414211 () Bool)

(assert (=> bm!88074 m!1414211))

(assert (=> d!354928 d!354978))

(declare-fun d!354980 () Bool)

(assert (=> d!354980 (= (efficientList$default$2!55 (c!208463 x!243441)) Nil!12543)))

(assert (=> d!354928 d!354980))

(declare-fun d!354982 () Bool)

(declare-fun c!208515 () Bool)

(assert (=> d!354982 (= c!208515 (is-Node!4112 (c!208463 x!243440)))))

(declare-fun e!799173 () Bool)

(assert (=> d!354982 (= (inv!16857 (c!208463 x!243440)) e!799173)))

(declare-fun b!1255821 () Bool)

(assert (=> b!1255821 (= e!799173 (inv!16861 (c!208463 x!243440)))))

(declare-fun b!1255822 () Bool)

(declare-fun e!799174 () Bool)

(assert (=> b!1255822 (= e!799173 e!799174)))

(declare-fun res!556058 () Bool)

(assert (=> b!1255822 (= res!556058 (not (is-Leaf!6366 (c!208463 x!243440))))))

(assert (=> b!1255822 (=> res!556058 e!799174)))

(declare-fun b!1255823 () Bool)

(assert (=> b!1255823 (= e!799174 (inv!16862 (c!208463 x!243440)))))

(assert (= (and d!354982 c!208515) b!1255821))

(assert (= (and d!354982 (not c!208515)) b!1255822))

(assert (= (and b!1255822 (not res!556058)) b!1255823))

(declare-fun m!1414213 () Bool)

(assert (=> b!1255821 m!1414213))

(declare-fun m!1414215 () Bool)

(assert (=> b!1255823 m!1414215))

(assert (=> b!1255647 d!354982))

(declare-fun b!1255830 () Bool)

(declare-fun tp!370359 () Bool)

(declare-fun e!799179 () Bool)

(declare-fun tp!370358 () Bool)

(assert (=> b!1255830 (= e!799179 (and (inv!16857 (left!10831 (c!208463 x!243441))) tp!370358 (inv!16857 (right!11161 (c!208463 x!243441))) tp!370359))))

(declare-fun b!1255831 () Bool)

(declare-fun inv!16863 (IArray!8229) Bool)

(assert (=> b!1255831 (= e!799179 (inv!16863 (xs!6823 (c!208463 x!243441))))))

(assert (=> b!1255649 (= tp!370344 (and (inv!16857 (c!208463 x!243441)) e!799179))))

(assert (= (and b!1255649 (is-Node!4112 (c!208463 x!243441))) b!1255830))

(assert (= (and b!1255649 (is-Leaf!6366 (c!208463 x!243441))) b!1255831))

(declare-fun m!1414217 () Bool)

(assert (=> b!1255830 m!1414217))

(declare-fun m!1414219 () Bool)

(assert (=> b!1255830 m!1414219))

(declare-fun m!1414221 () Bool)

(assert (=> b!1255831 m!1414221))

(assert (=> b!1255649 m!1413943))

(declare-fun e!799181 () Bool)

(declare-fun tp!370361 () Bool)

(declare-fun b!1255832 () Bool)

(declare-fun tp!370360 () Bool)

(assert (=> b!1255832 (= e!799181 (and (inv!16857 (left!10831 (c!208463 x!243442))) tp!370360 (inv!16857 (right!11161 (c!208463 x!243442))) tp!370361))))

(declare-fun b!1255833 () Bool)

(assert (=> b!1255833 (= e!799181 (inv!16863 (xs!6823 (c!208463 x!243442))))))

(assert (=> b!1255650 (= tp!370343 (and (inv!16857 (c!208463 x!243442)) e!799181))))

(assert (= (and b!1255650 (is-Node!4112 (c!208463 x!243442))) b!1255832))

(assert (= (and b!1255650 (is-Leaf!6366 (c!208463 x!243442))) b!1255833))

(declare-fun m!1414223 () Bool)

(assert (=> b!1255832 m!1414223))

(declare-fun m!1414225 () Bool)

(assert (=> b!1255832 m!1414225))

(declare-fun m!1414227 () Bool)

(assert (=> b!1255833 m!1414227))

(assert (=> b!1255650 m!1413945))

(declare-fun e!799183 () Bool)

(declare-fun tp!370363 () Bool)

(declare-fun tp!370362 () Bool)

(declare-fun b!1255834 () Bool)

(assert (=> b!1255834 (= e!799183 (and (inv!16857 (left!10831 (c!208463 x!243440))) tp!370362 (inv!16857 (right!11161 (c!208463 x!243440))) tp!370363))))

(declare-fun b!1255835 () Bool)

(assert (=> b!1255835 (= e!799183 (inv!16863 (xs!6823 (c!208463 x!243440))))))

(assert (=> b!1255647 (= tp!370342 (and (inv!16857 (c!208463 x!243440)) e!799183))))

(assert (= (and b!1255647 (is-Node!4112 (c!208463 x!243440))) b!1255834))

(assert (= (and b!1255647 (is-Leaf!6366 (c!208463 x!243440))) b!1255835))

(declare-fun m!1414229 () Bool)

(assert (=> b!1255834 m!1414229))

(declare-fun m!1414231 () Bool)

(assert (=> b!1255834 m!1414231))

(declare-fun m!1414233 () Bool)

(assert (=> b!1255835 m!1414233))

(assert (=> b!1255647 m!1413919))

(push 1)

(assert (not b!1255835))

(assert (not bm!88073))

(assert (not b!1255649))

(assert (not d!354958))

(assert (not bm!88074))

(assert (not b!1255738))

(assert (not d!354978))

(assert (not b!1255650))

(assert (not b!1255830))

(assert (not b!1255832))

(assert (not b!1255800))

(assert (not d!354948))

(assert (not bm!88071))

(assert (not b!1255795))

(assert (not b!1255802))

(assert (not b!1255811))

(assert (not b!1255726))

(assert (not d!354952))

(assert (not b!1255812))

(assert (not d!354950))

(assert (not b!1255818))

(assert (not b!1255831))

(assert (not b!1255725))

(assert (not b!1255809))

(assert (not d!354954))

(assert (not d!354962))

(assert (not b!1255784))

(assert (not b!1255782))

(assert (not d!354970))

(assert (not b!1255733))

(assert (not b!1255737))

(assert (not b!1255734))

(assert (not b!1255730))

(assert (not b!1255833))

(assert (not b!1255790))

(assert (not b!1255820))

(assert (not b!1255788))

(assert (not d!354956))

(assert (not b!1255834))

(assert (not b!1255823))

(assert (not d!354966))

(assert (not b!1255647))

(assert (not bm!88072))

(assert (not b!1255821))

(assert (not b!1255729))

(assert (not b!1255814))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

