; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93298 () Bool)

(assert start!93298)

(declare-fun bs!257916 () Bool)

(declare-fun b!1090794 () Bool)

(assert (= bs!257916 (and b!1090794 start!93298)))

(declare-fun lambda!41092 () Int)

(declare-fun lambda!41091 () Int)

(assert (=> bs!257916 (not (= lambda!41092 lambda!41091))))

(declare-fun b!1090811 () Bool)

(declare-fun e!690212 () Bool)

(assert (=> b!1090811 (= e!690212 true)))

(declare-fun b!1090810 () Bool)

(declare-fun e!690211 () Bool)

(assert (=> b!1090810 (= e!690211 e!690212)))

(assert (=> b!1090794 e!690211))

(assert (= b!1090810 b!1090811))

(assert (= b!1090794 b!1090810))

(declare-fun lambda!41093 () Int)

(assert (=> bs!257916 (not (= lambda!41093 lambda!41091))))

(assert (=> b!1090794 (not (= lambda!41093 lambda!41092))))

(declare-fun b!1090813 () Bool)

(declare-fun e!690214 () Bool)

(assert (=> b!1090813 (= e!690214 true)))

(declare-fun b!1090812 () Bool)

(declare-fun e!690213 () Bool)

(assert (=> b!1090812 (= e!690213 e!690214)))

(assert (=> b!1090794 e!690213))

(assert (= b!1090812 b!1090813))

(assert (= b!1090794 b!1090812))

(declare-fun lambda!41094 () Int)

(assert (=> bs!257916 (not (= lambda!41094 lambda!41091))))

(assert (=> b!1090794 (not (= lambda!41094 lambda!41092))))

(assert (=> b!1090794 (not (= lambda!41094 lambda!41093))))

(declare-fun b!1090815 () Bool)

(declare-fun e!690216 () Bool)

(assert (=> b!1090815 (= e!690216 true)))

(declare-fun b!1090814 () Bool)

(declare-fun e!690215 () Bool)

(assert (=> b!1090814 (= e!690215 e!690216)))

(assert (=> b!1090794 e!690215))

(assert (= b!1090814 b!1090815))

(assert (= b!1090794 b!1090814))

(declare-fun b!1090788 () Bool)

(declare-datatypes ((Unit!15838 0))(
  ( (Unit!15839) )
))
(declare-fun e!690195 () Unit!15838)

(declare-fun err!1881 () Unit!15838)

(assert (=> b!1090788 (= e!690195 err!1881)))

(declare-datatypes ((List!10463 0))(
  ( (Nil!10447) (Cons!10447 (h!15848 (_ BitVec 16)) (t!101745 List!10463)) )
))
(declare-datatypes ((TokenValue!1846 0))(
  ( (FloatLiteralValue!3692 (text!13367 List!10463)) (TokenValueExt!1845 (__x!7428 Int)) (Broken!9230 (value!58657 List!10463)) (Object!1861) (End!1846) (Def!1846) (Underscore!1846) (Match!1846) (Else!1846) (Error!1846) (Case!1846) (If!1846) (Extends!1846) (Abstract!1846) (Class!1846) (Val!1846) (DelimiterValue!3692 (del!1906 List!10463)) (KeywordValue!1852 (value!58658 List!10463)) (CommentValue!3692 (value!58659 List!10463)) (WhitespaceValue!3692 (value!58660 List!10463)) (IndentationValue!1846 (value!58661 List!10463)) (String!12799) (Int32!1846) (Broken!9231 (value!58662 List!10463)) (Boolean!1847) (Unit!15840) (OperatorValue!1849 (op!1906 List!10463)) (IdentifierValue!3692 (value!58663 List!10463)) (IdentifierValue!3693 (value!58664 List!10463)) (WhitespaceValue!3693 (value!58665 List!10463)) (True!3692) (False!3692) (Broken!9232 (value!58666 List!10463)) (Broken!9233 (value!58667 List!10463)) (True!3693) (RightBrace!1846) (RightBracket!1846) (Colon!1846) (Null!1846) (Comma!1846) (LeftBracket!1846) (False!3693) (LeftBrace!1846) (ImaginaryLiteralValue!1846 (text!13368 List!10463)) (StringLiteralValue!5538 (value!58668 List!10463)) (EOFValue!1846 (value!58669 List!10463)) (IdentValue!1846 (value!58670 List!10463)) (DelimiterValue!3693 (value!58671 List!10463)) (DedentValue!1846 (value!58672 List!10463)) (NewLineValue!1846 (value!58673 List!10463)) (IntegerValue!5538 (value!58674 (_ BitVec 32)) (text!13369 List!10463)) (IntegerValue!5539 (value!58675 Int) (text!13370 List!10463)) (Times!1846) (Or!1846) (Equal!1846) (Minus!1846) (Broken!9234 (value!58676 List!10463)) (And!1846) (Div!1846) (LessEqual!1846) (Mod!1846) (Concat!4895) (Not!1846) (Plus!1846) (SpaceValue!1846 (value!58677 List!10463)) (IntegerValue!5540 (value!58678 Int) (text!13371 List!10463)) (StringLiteralValue!5539 (text!13372 List!10463)) (FloatLiteralValue!3693 (text!13373 List!10463)) (BytesLiteralValue!1846 (value!58679 List!10463)) (CommentValue!3693 (value!58680 List!10463)) (StringLiteralValue!5540 (value!58681 List!10463)) (ErrorTokenValue!1846 (msg!1907 List!10463)) )
))
(declare-datatypes ((Regex!3049 0))(
  ( (ElementMatch!3049 (c!184830 (_ BitVec 16))) (Concat!4896 (regOne!6610 Regex!3049) (regTwo!6610 Regex!3049)) (EmptyExpr!3049) (Star!3049 (reg!3378 Regex!3049)) (EmptyLang!3049) (Union!3049 (regOne!6611 Regex!3049) (regTwo!6611 Regex!3049)) )
))
(declare-datatypes ((String!12800 0))(
  ( (String!12801 (value!58682 String)) )
))
(declare-datatypes ((IArray!6339 0))(
  ( (IArray!6340 (innerList!3227 List!10463)) )
))
(declare-datatypes ((Conc!3167 0))(
  ( (Node!3167 (left!8948 Conc!3167) (right!9278 Conc!3167) (csize!6564 Int) (cheight!3378 Int)) (Leaf!5063 (xs!5860 IArray!6339) (csize!6565 Int)) (Empty!3167) )
))
(declare-datatypes ((BalanceConc!6348 0))(
  ( (BalanceConc!6349 (c!184831 Conc!3167)) )
))
(declare-datatypes ((TokenValueInjection!3392 0))(
  ( (TokenValueInjection!3393 (toValue!2857 Int) (toChars!2716 Int)) )
))
(declare-datatypes ((Rule!3360 0))(
  ( (Rule!3361 (regex!1780 Regex!3049) (tag!2042 String!12800) (isSeparator!1780 Bool) (transformation!1780 TokenValueInjection!3392)) )
))
(declare-datatypes ((Token!3226 0))(
  ( (Token!3227 (value!58683 TokenValue!1846) (rule!3203 Rule!3360) (size!8076 Int) (originalCharacters!2336 List!10463)) )
))
(declare-datatypes ((List!10464 0))(
  ( (Nil!10448) (Cons!10448 (h!15849 Token!3226) (t!101746 List!10464)) )
))
(declare-datatypes ((IArray!6341 0))(
  ( (IArray!6342 (innerList!3228 List!10464)) )
))
(declare-datatypes ((Conc!3168 0))(
  ( (Node!3168 (left!8949 Conc!3168) (right!9279 Conc!3168) (csize!6566 Int) (cheight!3379 Int)) (Leaf!5064 (xs!5861 IArray!6341) (csize!6567 Int)) (Empty!3168) )
))
(declare-datatypes ((List!10465 0))(
  ( (Nil!10449) (Cons!10449 (h!15850 Rule!3360) (t!101747 List!10465)) )
))
(declare-datatypes ((BalanceConc!6350 0))(
  ( (BalanceConc!6351 (c!184832 Conc!3168)) )
))
(declare-datatypes ((PrintableTokens!276 0))(
  ( (PrintableTokens!277 (rules!9067 List!10465) (tokens!1339 BalanceConc!6350)) )
))
(declare-datatypes ((tuple2!11686 0))(
  ( (tuple2!11687 (_1!6669 Int) (_2!6669 PrintableTokens!276)) )
))
(declare-datatypes ((List!10466 0))(
  ( (Nil!10450) (Cons!10450 (h!15851 tuple2!11686) (t!101748 List!10466)) )
))
(declare-datatypes ((IArray!6343 0))(
  ( (IArray!6344 (innerList!3229 List!10466)) )
))
(declare-datatypes ((Conc!3169 0))(
  ( (Node!3169 (left!8950 Conc!3169) (right!9280 Conc!3169) (csize!6568 Int) (cheight!3380 Int)) (Leaf!5065 (xs!5862 IArray!6343) (csize!6569 Int)) (Empty!3169) )
))
(declare-datatypes ((BalanceConc!6352 0))(
  ( (BalanceConc!6353 (c!184833 Conc!3169)) )
))
(declare-fun lt!365041 () BalanceConc!6352)

(declare-fun lt!365043 () Unit!15838)

(declare-fun lt!365038 () tuple2!11686)

(declare-fun forallContained!482 (List!10466 Int tuple2!11686) Unit!15838)

(declare-fun list!3746 (BalanceConc!6352) List!10466)

(assert (=> b!1090788 (= lt!365043 (forallContained!482 (list!3746 lt!365041) lambda!41094 lt!365038))))

(assert (=> b!1090788 true))

(declare-fun b!1090789 () Bool)

(declare-fun e!690206 () Unit!15838)

(declare-fun Unit!15841 () Unit!15838)

(assert (=> b!1090789 (= e!690206 Unit!15841)))

(declare-fun b!1090790 () Bool)

(declare-fun err!1879 () Unit!15838)

(assert (=> b!1090790 (= e!690206 err!1879)))

(declare-fun lt!365042 () Unit!15838)

(declare-fun objs!8 () BalanceConc!6352)

(assert (=> b!1090790 (= lt!365042 (forallContained!482 (list!3746 objs!8) lambda!41092 lt!365038))))

(assert (=> b!1090790 true))

(declare-fun b!1090791 () Bool)

(declare-fun e!690196 () Bool)

(declare-fun e!690204 () Bool)

(assert (=> b!1090791 (= e!690196 e!690204)))

(declare-fun res!484745 () Bool)

(assert (=> b!1090791 (=> (not res!484745) (not e!690204))))

(declare-fun lt!365030 () Int)

(assert (=> b!1090791 (= res!484745 (> lt!365030 1))))

(declare-fun size!8077 (BalanceConc!6352) Int)

(assert (=> b!1090791 (= lt!365030 (size!8077 objs!8))))

(declare-fun res!484747 () Bool)

(assert (=> start!93298 (=> (not res!484747) (not e!690196))))

(declare-fun forall!2325 (BalanceConc!6352 Int) Bool)

(assert (=> start!93298 (= res!484747 (forall!2325 objs!8 lambda!41091))))

(assert (=> start!93298 e!690196))

(declare-fun e!690205 () Bool)

(declare-fun inv!13383 (BalanceConc!6352) Bool)

(assert (=> start!93298 (and (inv!13383 objs!8) e!690205)))

(declare-fun b!1090792 () Bool)

(declare-fun e!690201 () Bool)

(declare-fun e!690200 () Bool)

(assert (=> b!1090792 (= e!690201 (not e!690200))))

(declare-fun res!484751 () Bool)

(assert (=> b!1090792 (=> res!484751 e!690200)))

(declare-fun lt!365040 () BalanceConc!6352)

(assert (=> b!1090792 (= res!484751 (>= (size!8077 lt!365040) lt!365030))))

(declare-fun e!690198 () Bool)

(assert (=> b!1090792 e!690198))

(declare-fun res!484748 () Bool)

(assert (=> b!1090792 (=> res!484748 e!690198)))

(declare-fun lt!365035 () List!10466)

(declare-fun isEmpty!6650 (List!10466) Bool)

(assert (=> b!1090792 (= res!484748 (isEmpty!6650 lt!365035))))

(declare-fun lt!365031 () Unit!15838)

(declare-fun lemmaNotForallFilterShorter!23 (List!10466 Int) Unit!15838)

(assert (=> b!1090792 (= lt!365031 (lemmaNotForallFilterShorter!23 lt!365035 lambda!41092))))

(assert (=> b!1090792 (= lt!365035 (list!3746 objs!8))))

(declare-fun lt!365045 () Unit!15838)

(assert (=> b!1090792 (= lt!365045 e!690206)))

(declare-fun c!184827 () Bool)

(assert (=> b!1090792 (= c!184827 (forall!2325 objs!8 lambda!41092))))

(declare-fun b!1090793 () Bool)

(declare-fun e!690197 () Unit!15838)

(declare-fun err!1878 () Unit!15838)

(assert (=> b!1090793 (= e!690197 err!1878)))

(declare-fun lt!365029 () Unit!15838)

(assert (=> b!1090793 (= lt!365029 (forallContained!482 lt!365035 lambda!41094 lt!365038))))

(assert (=> b!1090793 true))

(declare-fun e!690203 () Bool)

(assert (=> b!1090794 (= e!690204 e!690203)))

(declare-fun res!484746 () Bool)

(assert (=> b!1090794 (=> (not res!484746) (not e!690203))))

(declare-fun contains!1756 (BalanceConc!6352 tuple2!11686) Bool)

(assert (=> b!1090794 (= res!484746 (contains!1756 objs!8 lt!365038))))

(declare-fun filter!224 (BalanceConc!6352 Int) BalanceConc!6352)

(assert (=> b!1090794 (= lt!365041 (filter!224 objs!8 lambda!41094))))

(declare-fun lt!365034 () BalanceConc!6352)

(assert (=> b!1090794 (= lt!365034 (filter!224 objs!8 lambda!41093))))

(assert (=> b!1090794 (= lt!365040 (filter!224 objs!8 lambda!41092))))

(declare-fun apply!2035 (BalanceConc!6352 Int) tuple2!11686)

(assert (=> b!1090794 (= lt!365038 (apply!2035 objs!8 (ite (>= lt!365030 0) (div lt!365030 2) (- (div (- lt!365030) 2)))))))

(declare-fun b!1090795 () Bool)

(declare-fun size!8078 (List!10466) Int)

(declare-fun filter!225 (List!10466 Int) List!10466)

(assert (=> b!1090795 (= e!690198 (< (size!8078 (filter!225 lt!365035 lambda!41092)) (size!8078 lt!365035)))))

(declare-fun b!1090796 () Bool)

(declare-fun tp!326438 () Bool)

(declare-fun inv!13384 (Conc!3169) Bool)

(assert (=> b!1090796 (= e!690205 (and (inv!13384 (c!184833 objs!8)) tp!326438))))

(declare-fun b!1090797 () Bool)

(declare-fun e!690199 () Unit!15838)

(declare-fun err!1880 () Unit!15838)

(assert (=> b!1090797 (= e!690199 err!1880)))

(declare-fun lt!365037 () Unit!15838)

(assert (=> b!1090797 (= lt!365037 (forallContained!482 (list!3746 lt!365040) lambda!41092 lt!365038))))

(assert (=> b!1090797 true))

(declare-fun b!1090798 () Bool)

(assert (=> b!1090798 (= e!690203 e!690201)))

(declare-fun res!484750 () Bool)

(assert (=> b!1090798 (=> (not res!484750) (not e!690201))))

(declare-fun lt!365033 () Bool)

(assert (=> b!1090798 (= res!484750 (not lt!365033))))

(declare-fun lt!365036 () Unit!15838)

(assert (=> b!1090798 (= lt!365036 e!690199)))

(declare-fun c!184829 () Bool)

(assert (=> b!1090798 (= c!184829 lt!365033)))

(assert (=> b!1090798 (= lt!365033 (contains!1756 lt!365040 lt!365038))))

(declare-fun b!1090799 () Bool)

(declare-fun Unit!15842 () Unit!15838)

(assert (=> b!1090799 (= e!690197 Unit!15842)))

(declare-fun b!1090800 () Bool)

(declare-fun e!690202 () Bool)

(assert (=> b!1090800 (= e!690200 e!690202)))

(declare-fun res!484749 () Bool)

(assert (=> b!1090800 (=> res!484749 e!690202)))

(declare-fun lt!365044 () Bool)

(assert (=> b!1090800 (= res!484749 lt!365044)))

(declare-fun lt!365039 () Unit!15838)

(assert (=> b!1090800 (= lt!365039 e!690195)))

(declare-fun c!184828 () Bool)

(assert (=> b!1090800 (= c!184828 lt!365044)))

(assert (=> b!1090800 (= lt!365044 (contains!1756 lt!365041 lt!365038))))

(declare-fun b!1090801 () Bool)

(declare-fun Unit!15843 () Unit!15838)

(assert (=> b!1090801 (= e!690199 Unit!15843)))

(declare-fun b!1090802 () Bool)

(declare-fun Unit!15844 () Unit!15838)

(assert (=> b!1090802 (= e!690195 Unit!15844)))

(declare-fun b!1090803 () Bool)

(assert (=> b!1090803 (= e!690202 true)))

(declare-fun lt!365032 () Unit!15838)

(assert (=> b!1090803 (= lt!365032 e!690197)))

(declare-fun c!184826 () Bool)

(assert (=> b!1090803 (= c!184826 (forall!2325 objs!8 lambda!41094))))

(assert (= (and start!93298 res!484747) b!1090791))

(assert (= (and b!1090791 res!484745) b!1090794))

(assert (= (and b!1090794 res!484746) b!1090798))

(assert (= (and b!1090798 c!184829) b!1090797))

(assert (= (and b!1090798 (not c!184829)) b!1090801))

(assert (= (and b!1090798 res!484750) b!1090792))

(assert (= (and b!1090792 c!184827) b!1090790))

(assert (= (and b!1090792 (not c!184827)) b!1090789))

(assert (= (and b!1090792 (not res!484748)) b!1090795))

(assert (= (and b!1090792 (not res!484751)) b!1090800))

(assert (= (and b!1090800 c!184828) b!1090788))

(assert (= (and b!1090800 (not c!184828)) b!1090802))

(assert (= (and b!1090800 (not res!484749)) b!1090803))

(assert (= (and b!1090803 c!184826) b!1090793))

(assert (= (and b!1090803 (not c!184826)) b!1090799))

(assert (= start!93298 b!1090796))

(declare-fun m!1241207 () Bool)

(assert (=> b!1090794 m!1241207))

(declare-fun m!1241209 () Bool)

(assert (=> b!1090794 m!1241209))

(declare-fun m!1241211 () Bool)

(assert (=> b!1090794 m!1241211))

(declare-fun m!1241213 () Bool)

(assert (=> b!1090794 m!1241213))

(declare-fun m!1241215 () Bool)

(assert (=> b!1090794 m!1241215))

(declare-fun m!1241217 () Bool)

(assert (=> b!1090797 m!1241217))

(assert (=> b!1090797 m!1241217))

(declare-fun m!1241219 () Bool)

(assert (=> b!1090797 m!1241219))

(declare-fun m!1241221 () Bool)

(assert (=> start!93298 m!1241221))

(declare-fun m!1241223 () Bool)

(assert (=> start!93298 m!1241223))

(declare-fun m!1241225 () Bool)

(assert (=> b!1090788 m!1241225))

(assert (=> b!1090788 m!1241225))

(declare-fun m!1241227 () Bool)

(assert (=> b!1090788 m!1241227))

(declare-fun m!1241229 () Bool)

(assert (=> b!1090790 m!1241229))

(assert (=> b!1090790 m!1241229))

(declare-fun m!1241231 () Bool)

(assert (=> b!1090790 m!1241231))

(declare-fun m!1241233 () Bool)

(assert (=> b!1090798 m!1241233))

(declare-fun m!1241235 () Bool)

(assert (=> b!1090803 m!1241235))

(declare-fun m!1241237 () Bool)

(assert (=> b!1090793 m!1241237))

(declare-fun m!1241239 () Bool)

(assert (=> b!1090795 m!1241239))

(assert (=> b!1090795 m!1241239))

(declare-fun m!1241241 () Bool)

(assert (=> b!1090795 m!1241241))

(declare-fun m!1241243 () Bool)

(assert (=> b!1090795 m!1241243))

(declare-fun m!1241245 () Bool)

(assert (=> b!1090792 m!1241245))

(declare-fun m!1241247 () Bool)

(assert (=> b!1090792 m!1241247))

(declare-fun m!1241249 () Bool)

(assert (=> b!1090792 m!1241249))

(declare-fun m!1241251 () Bool)

(assert (=> b!1090792 m!1241251))

(assert (=> b!1090792 m!1241229))

(declare-fun m!1241253 () Bool)

(assert (=> b!1090796 m!1241253))

(declare-fun m!1241255 () Bool)

(assert (=> b!1090800 m!1241255))

(declare-fun m!1241257 () Bool)

(assert (=> b!1090791 m!1241257))

(check-sat (not b!1090812) (not b!1090810) (not b!1090788) (not b!1090795) (not b!1090798) (not b!1090792) (not b!1090803) (not b!1090815) (not b!1090793) (not b!1090813) (not start!93298) (not b!1090800) (not b!1090794) (not b!1090790) (not b!1090797) (not b!1090814) (not b!1090791) (not b!1090811) (not b!1090796))
(check-sat)
