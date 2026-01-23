; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!230212 () Bool)

(assert start!230212)

(assert (=> start!230212 true))

(declare-fun b!2329834 () Bool)

(assert (=> b!2329834 true))

(assert (=> b!2329834 true))

(declare-fun b!2329835 () Bool)

(assert (=> b!2329835 true))

(declare-fun b!2329845 () Bool)

(declare-fun e!1492805 () Bool)

(declare-datatypes ((List!27926 0))(
  ( (Nil!27828) (Cons!27828 (h!33229 (_ BitVec 16)) (t!207759 List!27926)) )
))
(declare-datatypes ((IArray!18271 0))(
  ( (IArray!18272 (innerList!9193 List!27926)) )
))
(declare-datatypes ((Conc!9133 0))(
  ( (Node!9133 (left!21139 Conc!9133) (right!21469 Conc!9133) (csize!18496 Int) (cheight!9344 Int)) (Leaf!13420 (xs!12113 IArray!18271) (csize!18497 Int)) (Empty!9133) )
))
(declare-datatypes ((BalanceConc!17878 0))(
  ( (BalanceConc!17879 (c!370107 Conc!9133)) )
))
(declare-fun x!442941 () BalanceConc!17878)

(declare-fun tp!738263 () Bool)

(declare-fun inv!37913 (Conc!9133) Bool)

(assert (=> b!2329845 (= e!1492805 (and (inv!37913 (c!370107 x!442941)) tp!738263))))

(declare-fun inst!1384 () Bool)

(declare-datatypes ((FloatLiteralValueInjection!122 0))(
  ( (FloatLiteralValueInjection!123) )
))
(declare-fun thiss!3053 () FloatLiteralValueInjection!122)

(declare-fun inv!37914 (BalanceConc!17878) Bool)

(declare-fun list!11069 (BalanceConc!17878) List!27926)

(declare-datatypes ((TokenValue!4617 0))(
  ( (FloatLiteralValue!9234 (text!32764 List!27926)) (TokenValueExt!4616 (__x!18386 Int)) (Broken!23085 (value!140961 List!27926)) (Object!4714) (End!4617) (Def!4617) (Underscore!4617) (Match!4617) (Else!4617) (Error!4617) (Case!4617) (If!4617) (Extends!4617) (Abstract!4617) (Class!4617) (Val!4617) (DelimiterValue!9234 (del!4677 List!27926)) (KeywordValue!4623 (value!140962 List!27926)) (CommentValue!9234 (value!140963 List!27926)) (WhitespaceValue!9234 (value!140964 List!27926)) (IndentationValue!4617 (value!140965 List!27926)) (String!30446) (Int32!4617) (Broken!23086 (value!140966 List!27926)) (Boolean!4618) (Unit!40595) (OperatorValue!4620 (op!4677 List!27926)) (IdentifierValue!9234 (value!140967 List!27926)) (IdentifierValue!9235 (value!140968 List!27926)) (WhitespaceValue!9235 (value!140969 List!27926)) (True!9234) (False!9234) (Broken!23087 (value!140970 List!27926)) (Broken!23088 (value!140971 List!27926)) (True!9235) (RightBrace!4617) (RightBracket!4617) (Colon!4617) (Null!4617) (Comma!4617) (LeftBracket!4617) (False!9235) (LeftBrace!4617) (ImaginaryLiteralValue!4617 (text!32765 List!27926)) (StringLiteralValue!13851 (value!140972 List!27926)) (EOFValue!4617 (value!140973 List!27926)) (IdentValue!4617 (value!140974 List!27926)) (DelimiterValue!9235 (value!140975 List!27926)) (DedentValue!4617 (value!140976 List!27926)) (NewLineValue!4617 (value!140977 List!27926)) (IntegerValue!13851 (value!140978 (_ BitVec 32)) (text!32766 List!27926)) (IntegerValue!13852 (value!140979 Int) (text!32767 List!27926)) (Times!4617) (Or!4617) (Equal!4617) (Minus!4617) (Broken!23089 (value!140980 List!27926)) (And!4617) (Div!4617) (LessEqual!4617) (Mod!4617) (Concat!11433) (Not!4617) (Plus!4617) (SpaceValue!4617 (value!140981 List!27926)) (IntegerValue!13853 (value!140982 Int) (text!32768 List!27926)) (StringLiteralValue!13852 (text!32769 List!27926)) (FloatLiteralValue!9235 (text!32770 List!27926)) (BytesLiteralValue!4617 (value!140983 List!27926)) (CommentValue!9235 (value!140984 List!27926)) (StringLiteralValue!13853 (value!140985 List!27926)) (ErrorTokenValue!4617 (msg!4678 List!27926)) )
))
(declare-fun toCharacters!1 (FloatLiteralValueInjection!122 TokenValue!4617) BalanceConc!17878)

(declare-fun toValue!8 (FloatLiteralValueInjection!122 BalanceConc!17878) TokenValue!4617)

(assert (=> start!230212 (= inst!1384 (=> (and (inv!37914 x!442941) e!1492805) (= (list!11069 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442941))) (list!11069 x!442941))))))

(assert (= start!230212 b!2329845))

(declare-fun m!2760195 () Bool)

(assert (=> b!2329845 m!2760195))

(declare-fun m!2760197 () Bool)

(assert (=> start!230212 m!2760197))

(declare-fun m!2760199 () Bool)

(assert (=> start!230212 m!2760199))

(declare-fun m!2760201 () Bool)

(assert (=> start!230212 m!2760201))

(declare-fun m!2760203 () Bool)

(assert (=> start!230212 m!2760203))

(declare-fun m!2760205 () Bool)

(assert (=> start!230212 m!2760205))

(assert (=> start!230212 m!2760201))

(assert (=> start!230212 m!2760203))

(declare-fun res!994697 () Bool)

(declare-fun e!1492807 () Bool)

(assert (=> b!2329835 (=> res!994697 e!1492807)))

(declare-fun x!442942 () BalanceConc!17878)

(declare-fun x!442943 () BalanceConc!17878)

(assert (=> b!2329835 (= res!994697 (not (= (list!11069 x!442942) (list!11069 x!442943))))))

(declare-fun inst!1385 () Bool)

(declare-fun e!1492806 () Bool)

(declare-fun e!1492808 () Bool)

(assert (=> b!2329835 (= inst!1385 (=> (and (inv!37914 x!442942) e!1492806 (inv!37914 x!442943) e!1492808) e!1492807))))

(declare-fun b!2329846 () Bool)

(assert (=> b!2329846 (= e!1492807 (= (toValue!8 thiss!3053 x!442942) (toValue!8 thiss!3053 x!442943)))))

(declare-fun b!2329847 () Bool)

(declare-fun tp!738264 () Bool)

(assert (=> b!2329847 (= e!1492806 (and (inv!37913 (c!370107 x!442942)) tp!738264))))

(declare-fun b!2329848 () Bool)

(declare-fun tp!738265 () Bool)

(assert (=> b!2329848 (= e!1492808 (and (inv!37913 (c!370107 x!442943)) tp!738265))))

(assert (= (and b!2329835 (not res!994697)) b!2329846))

(assert (= b!2329835 b!2329847))

(assert (= b!2329835 b!2329848))

(declare-fun m!2760207 () Bool)

(assert (=> b!2329835 m!2760207))

(declare-fun m!2760209 () Bool)

(assert (=> b!2329835 m!2760209))

(declare-fun m!2760211 () Bool)

(assert (=> b!2329835 m!2760211))

(declare-fun m!2760213 () Bool)

(assert (=> b!2329835 m!2760213))

(declare-fun m!2760215 () Bool)

(assert (=> b!2329846 m!2760215))

(declare-fun m!2760217 () Bool)

(assert (=> b!2329846 m!2760217))

(declare-fun m!2760219 () Bool)

(assert (=> b!2329847 m!2760219))

(declare-fun m!2760221 () Bool)

(assert (=> b!2329848 m!2760221))

(declare-fun bs!459597 () Bool)

(declare-fun neg-inst!1384 () Bool)

(declare-fun s!225236 () Bool)

(assert (= bs!459597 (and neg-inst!1384 s!225236)))

(assert (=> bs!459597 (=> true (= (list!11069 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442941))) (list!11069 x!442941)))))

(assert (=> m!2760201 m!2760203))

(assert (=> m!2760201 m!2760205))

(assert (=> m!2760201 m!2760197))

(assert (=> m!2760201 s!225236))

(assert (=> m!2760197 s!225236))

(declare-fun bs!459598 () Bool)

(assert (= bs!459598 (and neg-inst!1384 start!230212)))

(assert (=> bs!459598 (= true inst!1384)))

(declare-fun bs!459599 () Bool)

(declare-fun neg-inst!1385 () Bool)

(declare-fun s!225238 () Bool)

(assert (= bs!459599 (and neg-inst!1385 s!225238)))

(declare-fun res!994698 () Bool)

(declare-fun e!1492809 () Bool)

(assert (=> bs!459599 (=> res!994698 e!1492809)))

(assert (=> bs!459599 (= res!994698 (not (= (list!11069 x!442942) (list!11069 x!442942))))))

(assert (=> bs!459599 (=> true e!1492809)))

(declare-fun b!2329849 () Bool)

(assert (=> b!2329849 (= e!1492809 (= (toValue!8 thiss!3053 x!442942) (toValue!8 thiss!3053 x!442942)))))

(assert (= (and bs!459599 (not res!994698)) b!2329849))

(assert (=> m!2760207 s!225238))

(assert (=> m!2760207 s!225238))

(declare-fun bs!459600 () Bool)

(declare-fun s!225240 () Bool)

(assert (= bs!459600 (and neg-inst!1385 s!225240)))

(declare-fun res!994699 () Bool)

(declare-fun e!1492810 () Bool)

(assert (=> bs!459600 (=> res!994699 e!1492810)))

(assert (=> bs!459600 (= res!994699 (not (= (list!11069 x!442943) (list!11069 x!442942))))))

(assert (=> bs!459600 (=> true e!1492810)))

(declare-fun b!2329850 () Bool)

(assert (=> b!2329850 (= e!1492810 (= (toValue!8 thiss!3053 x!442943) (toValue!8 thiss!3053 x!442942)))))

(assert (= (and bs!459600 (not res!994699)) b!2329850))

(declare-fun bs!459601 () Bool)

(assert (= bs!459601 (and m!2760209 m!2760207)))

(assert (=> bs!459601 m!2760209))

(assert (=> bs!459601 m!2760207))

(assert (=> bs!459601 s!225240))

(declare-fun bs!459602 () Bool)

(declare-fun s!225242 () Bool)

(assert (= bs!459602 (and neg-inst!1385 s!225242)))

(declare-fun res!994700 () Bool)

(declare-fun e!1492811 () Bool)

(assert (=> bs!459602 (=> res!994700 e!1492811)))

(assert (=> bs!459602 (= res!994700 (not (= (list!11069 x!442943) (list!11069 x!442943))))))

(assert (=> bs!459602 (=> true e!1492811)))

(declare-fun b!2329851 () Bool)

(assert (=> b!2329851 (= e!1492811 (= (toValue!8 thiss!3053 x!442943) (toValue!8 thiss!3053 x!442943)))))

(assert (= (and bs!459602 (not res!994700)) b!2329851))

(assert (=> m!2760209 s!225242))

(declare-fun bs!459603 () Bool)

(declare-fun s!225244 () Bool)

(assert (= bs!459603 (and neg-inst!1385 s!225244)))

(declare-fun res!994701 () Bool)

(declare-fun e!1492812 () Bool)

(assert (=> bs!459603 (=> res!994701 e!1492812)))

(assert (=> bs!459603 (= res!994701 (not (= (list!11069 x!442942) (list!11069 x!442943))))))

(assert (=> bs!459603 (=> true e!1492812)))

(declare-fun b!2329852 () Bool)

(assert (=> b!2329852 (= e!1492812 (= (toValue!8 thiss!3053 x!442942) (toValue!8 thiss!3053 x!442943)))))

(assert (= (and bs!459603 (not res!994701)) b!2329852))

(assert (=> bs!459601 m!2760207))

(assert (=> bs!459601 m!2760209))

(assert (=> bs!459601 s!225244))

(assert (=> m!2760209 s!225242))

(declare-fun bs!459604 () Bool)

(assert (= bs!459604 (and m!2760215 m!2760209)))

(assert (=> bs!459604 s!225244))

(declare-fun bs!459605 () Bool)

(assert (= bs!459605 (and m!2760215 m!2760207)))

(assert (=> bs!459605 s!225238))

(assert (=> m!2760215 s!225238))

(assert (=> bs!459604 s!225240))

(assert (=> bs!459605 s!225238))

(assert (=> m!2760215 s!225238))

(declare-fun bs!459606 () Bool)

(declare-fun s!225246 () Bool)

(assert (= bs!459606 (and neg-inst!1385 s!225246)))

(declare-fun res!994702 () Bool)

(declare-fun e!1492813 () Bool)

(assert (=> bs!459606 (=> res!994702 e!1492813)))

(assert (=> bs!459606 (= res!994702 (not (= (list!11069 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442941))) (list!11069 x!442943))))))

(assert (=> bs!459606 (=> true e!1492813)))

(declare-fun b!2329853 () Bool)

(assert (=> b!2329853 (= e!1492813 (= (toValue!8 thiss!3053 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442941))) (toValue!8 thiss!3053 x!442943)))))

(assert (= (and bs!459606 (not res!994702)) b!2329853))

(declare-fun bs!459607 () Bool)

(assert (= bs!459607 (and m!2760205 m!2760209)))

(assert (=> bs!459607 m!2760205))

(assert (=> bs!459607 m!2760209))

(assert (=> bs!459607 s!225246))

(declare-fun bs!459608 () Bool)

(declare-fun s!225248 () Bool)

(assert (= bs!459608 (and neg-inst!1385 s!225248)))

(declare-fun res!994703 () Bool)

(declare-fun e!1492814 () Bool)

(assert (=> bs!459608 (=> res!994703 e!1492814)))

(assert (=> bs!459608 (= res!994703 (not (= (list!11069 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442941))) (list!11069 x!442942))))))

(assert (=> bs!459608 (=> true e!1492814)))

(declare-fun b!2329854 () Bool)

(assert (=> b!2329854 (= e!1492814 (= (toValue!8 thiss!3053 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442941))) (toValue!8 thiss!3053 x!442942)))))

(assert (= (and bs!459608 (not res!994703)) b!2329854))

(declare-fun bs!459609 () Bool)

(assert (= bs!459609 (and m!2760205 m!2760207 m!2760215)))

(assert (=> bs!459609 m!2760205))

(assert (=> bs!459609 m!2760207))

(assert (=> bs!459609 s!225248))

(declare-fun bs!459610 () Bool)

(declare-fun s!225250 () Bool)

(assert (= bs!459610 (and neg-inst!1385 s!225250)))

(declare-fun res!994704 () Bool)

(declare-fun e!1492815 () Bool)

(assert (=> bs!459610 (=> res!994704 e!1492815)))

(assert (=> bs!459610 (= res!994704 (not (= (list!11069 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442941))) (list!11069 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442941))))))))

(assert (=> bs!459610 (=> true e!1492815)))

(declare-fun b!2329855 () Bool)

(assert (=> b!2329855 (= e!1492815 (= (toValue!8 thiss!3053 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442941))) (toValue!8 thiss!3053 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442941)))))))

(assert (= (and bs!459610 (not res!994704)) b!2329855))

(assert (=> m!2760205 s!225250))

(declare-fun bs!459611 () Bool)

(declare-fun s!225252 () Bool)

(assert (= bs!459611 (and neg-inst!1385 s!225252)))

(declare-fun res!994705 () Bool)

(declare-fun e!1492816 () Bool)

(assert (=> bs!459611 (=> res!994705 e!1492816)))

(assert (=> bs!459611 (= res!994705 (not (= (list!11069 x!442943) (list!11069 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442941))))))))

(assert (=> bs!459611 (=> true e!1492816)))

(declare-fun b!2329856 () Bool)

(assert (=> b!2329856 (= e!1492816 (= (toValue!8 thiss!3053 x!442943) (toValue!8 thiss!3053 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442941)))))))

(assert (= (and bs!459611 (not res!994705)) b!2329856))

(assert (=> bs!459607 m!2760209))

(assert (=> bs!459607 m!2760205))

(assert (=> bs!459607 s!225252))

(declare-fun bs!459612 () Bool)

(declare-fun s!225254 () Bool)

(assert (= bs!459612 (and neg-inst!1385 s!225254)))

(declare-fun res!994706 () Bool)

(declare-fun e!1492817 () Bool)

(assert (=> bs!459612 (=> res!994706 e!1492817)))

(assert (=> bs!459612 (= res!994706 (not (= (list!11069 x!442942) (list!11069 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442941))))))))

(assert (=> bs!459612 (=> true e!1492817)))

(declare-fun b!2329857 () Bool)

(assert (=> b!2329857 (= e!1492817 (= (toValue!8 thiss!3053 x!442942) (toValue!8 thiss!3053 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442941)))))))

(assert (= (and bs!459612 (not res!994706)) b!2329857))

(assert (=> bs!459609 m!2760207))

(assert (=> bs!459609 m!2760205))

(assert (=> bs!459609 s!225254))

(assert (=> m!2760205 s!225250))

(declare-fun bs!459613 () Bool)

(assert (= bs!459613 (and m!2760217 m!2760209)))

(assert (=> bs!459613 s!225242))

(declare-fun bs!459614 () Bool)

(assert (= bs!459614 (and m!2760217 m!2760207 m!2760215)))

(assert (=> bs!459614 s!225240))

(declare-fun bs!459615 () Bool)

(assert (= bs!459615 (and m!2760217 m!2760205)))

(assert (=> bs!459615 s!225252))

(assert (=> m!2760217 s!225242))

(assert (=> bs!459613 s!225242))

(assert (=> bs!459614 s!225244))

(assert (=> bs!459615 s!225246))

(assert (=> m!2760217 s!225242))

(declare-fun bs!459616 () Bool)

(declare-fun s!225256 () Bool)

(assert (= bs!459616 (and neg-inst!1385 s!225256)))

(declare-fun res!994707 () Bool)

(declare-fun e!1492818 () Bool)

(assert (=> bs!459616 (=> res!994707 e!1492818)))

(assert (=> bs!459616 (= res!994707 (not (= (list!11069 x!442941) (list!11069 x!442943))))))

(assert (=> bs!459616 (=> true e!1492818)))

(declare-fun b!2329858 () Bool)

(assert (=> b!2329858 (= e!1492818 (= (toValue!8 thiss!3053 x!442941) (toValue!8 thiss!3053 x!442943)))))

(assert (= (and bs!459616 (not res!994707)) b!2329858))

(declare-fun bs!459617 () Bool)

(assert (= bs!459617 (and m!2760201 m!2760209 m!2760217)))

(assert (=> bs!459617 m!2760197))

(assert (=> bs!459617 m!2760209))

(assert (=> bs!459617 s!225256))

(declare-fun bs!459618 () Bool)

(declare-fun s!225258 () Bool)

(assert (= bs!459618 (and neg-inst!1385 s!225258)))

(declare-fun res!994708 () Bool)

(declare-fun e!1492819 () Bool)

(assert (=> bs!459618 (=> res!994708 e!1492819)))

(assert (=> bs!459618 (= res!994708 (not (= (list!11069 x!442941) (list!11069 x!442942))))))

(assert (=> bs!459618 (=> true e!1492819)))

(declare-fun b!2329859 () Bool)

(assert (=> b!2329859 (= e!1492819 (= (toValue!8 thiss!3053 x!442941) (toValue!8 thiss!3053 x!442942)))))

(assert (= (and bs!459618 (not res!994708)) b!2329859))

(declare-fun bs!459619 () Bool)

(assert (= bs!459619 (and m!2760201 m!2760207 m!2760215)))

(assert (=> bs!459619 m!2760197))

(assert (=> bs!459619 m!2760207))

(assert (=> bs!459619 s!225258))

(declare-fun bs!459620 () Bool)

(declare-fun s!225260 () Bool)

(assert (= bs!459620 (and neg-inst!1385 s!225260)))

(declare-fun res!994709 () Bool)

(declare-fun e!1492820 () Bool)

(assert (=> bs!459620 (=> res!994709 e!1492820)))

(assert (=> bs!459620 (= res!994709 (not (= (list!11069 x!442941) (list!11069 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442941))))))))

(assert (=> bs!459620 (=> true e!1492820)))

(declare-fun b!2329860 () Bool)

(assert (=> b!2329860 (= e!1492820 (= (toValue!8 thiss!3053 x!442941) (toValue!8 thiss!3053 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442941)))))))

(assert (= (and bs!459620 (not res!994709)) b!2329860))

(declare-fun bs!459621 () Bool)

(assert (= bs!459621 (and m!2760201 m!2760205)))

(assert (=> bs!459621 m!2760197))

(assert (=> bs!459621 m!2760205))

(assert (=> bs!459621 s!225260))

(declare-fun bs!459622 () Bool)

(declare-fun s!225262 () Bool)

(assert (= bs!459622 (and neg-inst!1385 s!225262)))

(declare-fun res!994710 () Bool)

(declare-fun e!1492821 () Bool)

(assert (=> bs!459622 (=> res!994710 e!1492821)))

(assert (=> bs!459622 (= res!994710 (not (= (list!11069 x!442941) (list!11069 x!442941))))))

(assert (=> bs!459622 (=> true e!1492821)))

(declare-fun b!2329861 () Bool)

(assert (=> b!2329861 (= e!1492821 (= (toValue!8 thiss!3053 x!442941) (toValue!8 thiss!3053 x!442941)))))

(assert (= (and bs!459622 (not res!994710)) b!2329861))

(assert (=> m!2760201 m!2760197))

(assert (=> m!2760201 m!2760197))

(assert (=> m!2760201 s!225262))

(declare-fun bs!459623 () Bool)

(declare-fun s!225264 () Bool)

(assert (= bs!459623 (and neg-inst!1385 s!225264)))

(declare-fun res!994711 () Bool)

(declare-fun e!1492822 () Bool)

(assert (=> bs!459623 (=> res!994711 e!1492822)))

(assert (=> bs!459623 (= res!994711 (not (= (list!11069 x!442943) (list!11069 x!442941))))))

(assert (=> bs!459623 (=> true e!1492822)))

(declare-fun b!2329862 () Bool)

(assert (=> b!2329862 (= e!1492822 (= (toValue!8 thiss!3053 x!442943) (toValue!8 thiss!3053 x!442941)))))

(assert (= (and bs!459623 (not res!994711)) b!2329862))

(assert (=> bs!459617 m!2760209))

(assert (=> bs!459617 m!2760197))

(assert (=> bs!459617 s!225264))

(declare-fun bs!459624 () Bool)

(declare-fun s!225266 () Bool)

(assert (= bs!459624 (and neg-inst!1385 s!225266)))

(declare-fun res!994712 () Bool)

(declare-fun e!1492823 () Bool)

(assert (=> bs!459624 (=> res!994712 e!1492823)))

(assert (=> bs!459624 (= res!994712 (not (= (list!11069 x!442942) (list!11069 x!442941))))))

(assert (=> bs!459624 (=> true e!1492823)))

(declare-fun b!2329863 () Bool)

(assert (=> b!2329863 (= e!1492823 (= (toValue!8 thiss!3053 x!442942) (toValue!8 thiss!3053 x!442941)))))

(assert (= (and bs!459624 (not res!994712)) b!2329863))

(assert (=> bs!459619 m!2760207))

(assert (=> bs!459619 m!2760197))

(assert (=> bs!459619 s!225266))

(declare-fun bs!459625 () Bool)

(declare-fun s!225268 () Bool)

(assert (= bs!459625 (and neg-inst!1385 s!225268)))

(declare-fun res!994713 () Bool)

(declare-fun e!1492824 () Bool)

(assert (=> bs!459625 (=> res!994713 e!1492824)))

(assert (=> bs!459625 (= res!994713 (not (= (list!11069 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442941))) (list!11069 x!442941))))))

(assert (=> bs!459625 (=> true e!1492824)))

(declare-fun b!2329864 () Bool)

(assert (=> b!2329864 (= e!1492824 (= (toValue!8 thiss!3053 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442941))) (toValue!8 thiss!3053 x!442941)))))

(assert (= (and bs!459625 (not res!994713)) b!2329864))

(assert (=> bs!459621 m!2760205))

(assert (=> bs!459621 m!2760197))

(assert (=> bs!459621 s!225268))

(assert (=> m!2760201 s!225262))

(declare-fun bs!459626 () Bool)

(assert (= bs!459626 (and m!2760197 m!2760201)))

(assert (=> bs!459626 s!225262))

(assert (=> m!2760197 s!225262))

(declare-fun bs!459627 () Bool)

(assert (= bs!459627 (and m!2760197 m!2760209 m!2760217)))

(assert (=> bs!459627 s!225256))

(declare-fun bs!459628 () Bool)

(assert (= bs!459628 (and m!2760197 m!2760205)))

(assert (=> bs!459628 s!225260))

(declare-fun bs!459629 () Bool)

(assert (= bs!459629 (and m!2760197 m!2760207 m!2760215)))

(assert (=> bs!459629 s!225258))

(assert (=> bs!459628 s!225268))

(assert (=> bs!459626 s!225262))

(assert (=> bs!459627 s!225264))

(assert (=> bs!459629 s!225266))

(assert (=> m!2760197 s!225262))

(declare-fun bs!459630 () Bool)

(assert (= bs!459630 (and neg-inst!1385 b!2329835)))

(assert (=> bs!459630 (= true inst!1385)))

(declare-fun res!994695 () Bool)

(declare-fun e!1492802 () Bool)

(assert (=> start!230212 (=> res!994695 e!1492802)))

(declare-fun lambda!86594 () Int)

(declare-fun Forall!1123 (Int) Bool)

(assert (=> start!230212 (= res!994695 (not (Forall!1123 lambda!86594)))))

(assert (=> start!230212 (= (Forall!1123 lambda!86594) inst!1384)))

(assert (=> start!230212 (not e!1492802)))

(assert (=> start!230212 true))

(declare-fun e!1492804 () Bool)

(assert (=> b!2329834 (= e!1492802 e!1492804)))

(declare-fun res!994694 () Bool)

(assert (=> b!2329834 (=> res!994694 e!1492804)))

(declare-fun lambda!86595 () Int)

(declare-fun lambda!86596 () Int)

(declare-fun semiInverseModEq!1818 (Int Int) Bool)

(assert (=> b!2329834 (= res!994694 (not (semiInverseModEq!1818 lambda!86595 lambda!86596)))))

(assert (=> b!2329834 (= (semiInverseModEq!1818 lambda!86595 lambda!86596) (Forall!1123 lambda!86594))))

(declare-fun e!1492803 () Bool)

(assert (=> b!2329835 (= e!1492804 e!1492803)))

(declare-fun res!994696 () Bool)

(assert (=> b!2329835 (=> res!994696 e!1492803)))

(declare-fun lambda!86597 () Int)

(declare-fun Forall2!732 (Int) Bool)

(assert (=> b!2329835 (= res!994696 (not (Forall2!732 lambda!86597)))))

(assert (=> b!2329835 (= (Forall2!732 lambda!86597) inst!1385)))

(declare-fun b!2329836 () Bool)

(declare-fun equivClasses!1729 (Int Int) Bool)

(assert (=> b!2329836 (= e!1492803 (equivClasses!1729 lambda!86595 lambda!86596))))

(assert (=> b!2329836 (= (equivClasses!1729 lambda!86595 lambda!86596) (Forall2!732 lambda!86597))))

(assert (= neg-inst!1384 inst!1384))

(assert (= (and start!230212 (not res!994695)) b!2329834))

(assert (= (and b!2329834 (not res!994694)) b!2329835))

(assert (= neg-inst!1385 inst!1385))

(assert (= (and b!2329835 (not res!994696)) b!2329836))

(declare-fun m!2760223 () Bool)

(assert (=> start!230212 m!2760223))

(assert (=> start!230212 m!2760223))

(declare-fun m!2760225 () Bool)

(assert (=> b!2329834 m!2760225))

(assert (=> b!2329834 m!2760225))

(assert (=> b!2329834 m!2760223))

(declare-fun m!2760227 () Bool)

(assert (=> b!2329835 m!2760227))

(assert (=> b!2329835 m!2760227))

(declare-fun m!2760229 () Bool)

(assert (=> b!2329836 m!2760229))

(assert (=> b!2329836 m!2760229))

(assert (=> b!2329836 m!2760227))

(check-sat (not b!2329850) (not b!2329835) (not b!2329848) (not bs!459623) (not b!2329852) (not b!2329861) (not b!2329854) (not start!230212) (not b!2329858) (not bs!459620) (not b!2329859) (not b!2329849) (not b!2329851) (not b!2329834) (not b!2329863) (not bs!459599) (not b!2329846) (not bs!459624) (not bs!459618) (not b!2329845) (not bs!459611) (not bs!459622) (not b!2329836) (not b!2329847) (not bs!459616) (not bs!459608) (not bs!459625) (not b!2329856) (not bs!459612) (not b!2329857) (not bs!459606) (not bs!459610) (not b!2329860) (not b!2329864) (not b!2329855) (not bs!459602) (not bs!459597) (not bs!459600) (not bs!459603) (not b!2329862) (not b!2329853))
(check-sat)
