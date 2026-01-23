; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!410400 () Bool)

(assert start!410400)

(assert (=> start!410400 true))

(declare-fun b!4275093 () Bool)

(assert (=> b!4275093 true))

(assert (=> b!4275093 true))

(assert (=> b!4275093 true))

(declare-fun b!4275103 () Bool)

(declare-fun e!2654162 () Bool)

(declare-datatypes ((List!47452 0))(
  ( (Nil!47328) (Cons!47328 (h!52748 (_ BitVec 16)) (t!353905 List!47452)) )
))
(declare-datatypes ((IArray!28625 0))(
  ( (IArray!28626 (innerList!14370 List!47452)) )
))
(declare-datatypes ((Conc!14310 0))(
  ( (Node!14310 (left!35222 Conc!14310) (right!35552 Conc!14310) (csize!28850 Int) (cheight!14521 Int)) (Leaf!22121 (xs!17616 IArray!28625) (csize!28851 Int)) (Empty!14310) )
))
(declare-datatypes ((BalanceConc!28130 0))(
  ( (BalanceConc!28131 (c!727905 Conc!14310)) )
))
(declare-fun x!742681 () BalanceConc!28130)

(declare-fun tp!1308433 () Bool)

(declare-fun inv!62553 (Conc!14310) Bool)

(assert (=> b!4275103 (= e!2654162 (and (inv!62553 (c!727905 x!742681)) tp!1308433))))

(declare-fun inst!1786 () Bool)

(declare-datatypes ((KeywordValueInjection!196 0))(
  ( (KeywordValueInjection!197) )
))
(declare-fun thiss!2319 () KeywordValueInjection!196)

(declare-fun inv!62554 (BalanceConc!28130) Bool)

(declare-fun list!17214 (BalanceConc!28130) List!47452)

(declare-datatypes ((TokenValue!8283 0))(
  ( (FloatLiteralValue!16566 (text!58426 List!47452)) (TokenValueExt!8282 (__x!28729 Int)) (Broken!41415 (value!249977 List!47452)) (Object!8406) (End!8283) (Def!8283) (Underscore!8283) (Match!8283) (Else!8283) (Error!8283) (Case!8283) (If!8283) (Extends!8283) (Abstract!8283) (Class!8283) (Val!8283) (DelimiterValue!16566 (del!8343 List!47452)) (KeywordValue!8289 (value!249978 List!47452)) (CommentValue!16566 (value!249979 List!47452)) (WhitespaceValue!16566 (value!249980 List!47452)) (IndentationValue!8283 (value!249981 List!47452)) (String!55326) (Int32!8283) (Broken!41416 (value!249982 List!47452)) (Boolean!8284) (Unit!66269) (OperatorValue!8286 (op!8343 List!47452)) (IdentifierValue!16566 (value!249983 List!47452)) (IdentifierValue!16567 (value!249984 List!47452)) (WhitespaceValue!16567 (value!249985 List!47452)) (True!16566) (False!16566) (Broken!41417 (value!249986 List!47452)) (Broken!41418 (value!249987 List!47452)) (True!16567) (RightBrace!8283) (RightBracket!8283) (Colon!8283) (Null!8283) (Comma!8283) (LeftBracket!8283) (False!16567) (LeftBrace!8283) (ImaginaryLiteralValue!8283 (text!58427 List!47452)) (StringLiteralValue!24849 (value!249988 List!47452)) (EOFValue!8283 (value!249989 List!47452)) (IdentValue!8283 (value!249990 List!47452)) (DelimiterValue!16567 (value!249991 List!47452)) (DedentValue!8283 (value!249992 List!47452)) (NewLineValue!8283 (value!249993 List!47452)) (IntegerValue!24849 (value!249994 (_ BitVec 32)) (text!58428 List!47452)) (IntegerValue!24850 (value!249995 Int) (text!58429 List!47452)) (Times!8283) (Or!8283) (Equal!8283) (Minus!8283) (Broken!41419 (value!249996 List!47452)) (And!8283) (Div!8283) (LessEqual!8283) (Mod!8283) (Concat!21181) (Not!8283) (Plus!8283) (SpaceValue!8283 (value!249997 List!47452)) (IntegerValue!24851 (value!249998 Int) (text!58430 List!47452)) (StringLiteralValue!24850 (text!58431 List!47452)) (FloatLiteralValue!16567 (text!58432 List!47452)) (BytesLiteralValue!8283 (value!249999 List!47452)) (CommentValue!16567 (value!250000 List!47452)) (StringLiteralValue!24851 (value!250001 List!47452)) (ErrorTokenValue!8283 (msg!8344 List!47452)) )
))
(declare-fun toCharacters!7 (KeywordValueInjection!196 TokenValue!8283) BalanceConc!28130)

(declare-fun toValue!14 (KeywordValueInjection!196 BalanceConc!28130) TokenValue!8283)

(assert (=> start!410400 (= inst!1786 (=> (and (inv!62554 x!742681) e!2654162) (= (list!17214 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742681))) (list!17214 x!742681))))))

(assert (= start!410400 b!4275103))

(declare-fun m!4870729 () Bool)

(assert (=> b!4275103 m!4870729))

(declare-fun m!4870731 () Bool)

(assert (=> start!410400 m!4870731))

(declare-fun m!4870733 () Bool)

(assert (=> start!410400 m!4870733))

(declare-fun m!4870735 () Bool)

(assert (=> start!410400 m!4870735))

(declare-fun m!4870737 () Bool)

(assert (=> start!410400 m!4870737))

(assert (=> start!410400 m!4870731))

(assert (=> start!410400 m!4870733))

(declare-fun m!4870739 () Bool)

(assert (=> start!410400 m!4870739))

(declare-fun res!1755633 () Bool)

(declare-fun e!2654164 () Bool)

(assert (=> b!4275093 (=> res!1755633 e!2654164)))

(declare-fun x!742682 () BalanceConc!28130)

(declare-fun x!742683 () BalanceConc!28130)

(assert (=> b!4275093 (= res!1755633 (not (= (list!17214 x!742682) (list!17214 x!742683))))))

(declare-fun e!2654165 () Bool)

(declare-fun e!2654163 () Bool)

(declare-fun inst!1787 () Bool)

(assert (=> b!4275093 (= inst!1787 (=> (and (inv!62554 x!742682) e!2654163 (inv!62554 x!742683) e!2654165) e!2654164))))

(declare-fun b!4275104 () Bool)

(assert (=> b!4275104 (= e!2654164 (= (toValue!14 thiss!2319 x!742682) (toValue!14 thiss!2319 x!742683)))))

(declare-fun b!4275105 () Bool)

(declare-fun tp!1308434 () Bool)

(assert (=> b!4275105 (= e!2654163 (and (inv!62553 (c!727905 x!742682)) tp!1308434))))

(declare-fun b!4275106 () Bool)

(declare-fun tp!1308435 () Bool)

(assert (=> b!4275106 (= e!2654165 (and (inv!62553 (c!727905 x!742683)) tp!1308435))))

(assert (= (and b!4275093 (not res!1755633)) b!4275104))

(assert (= b!4275093 b!4275105))

(assert (= b!4275093 b!4275106))

(declare-fun m!4870741 () Bool)

(assert (=> b!4275093 m!4870741))

(declare-fun m!4870743 () Bool)

(assert (=> b!4275093 m!4870743))

(declare-fun m!4870745 () Bool)

(assert (=> b!4275093 m!4870745))

(declare-fun m!4870747 () Bool)

(assert (=> b!4275093 m!4870747))

(declare-fun m!4870749 () Bool)

(assert (=> b!4275104 m!4870749))

(declare-fun m!4870751 () Bool)

(assert (=> b!4275104 m!4870751))

(declare-fun m!4870753 () Bool)

(assert (=> b!4275105 m!4870753))

(declare-fun m!4870755 () Bool)

(assert (=> b!4275106 m!4870755))

(declare-fun bs!601820 () Bool)

(declare-fun neg-inst!1787 () Bool)

(declare-fun s!240224 () Bool)

(assert (= bs!601820 (and neg-inst!1787 s!240224)))

(assert (=> bs!601820 (=> true (= (list!17214 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742681))) (list!17214 x!742681)))))

(assert (=> m!4870735 m!4870731))

(assert (=> m!4870735 m!4870733))

(assert (=> m!4870735 m!4870739))

(assert (=> m!4870735 s!240224))

(assert (=> m!4870731 s!240224))

(declare-fun bs!601821 () Bool)

(assert (= bs!601821 (and neg-inst!1787 start!410400)))

(assert (=> bs!601821 (= true inst!1786)))

(declare-fun bs!601822 () Bool)

(declare-fun neg-inst!1786 () Bool)

(declare-fun s!240226 () Bool)

(assert (= bs!601822 (and neg-inst!1786 s!240226)))

(declare-fun res!1755634 () Bool)

(declare-fun e!2654166 () Bool)

(assert (=> bs!601822 (=> res!1755634 e!2654166)))

(assert (=> bs!601822 (= res!1755634 (not (= (list!17214 x!742681) (list!17214 x!742681))))))

(assert (=> bs!601822 (=> true e!2654166)))

(declare-fun b!4275107 () Bool)

(assert (=> b!4275107 (= e!2654166 (= (toValue!14 thiss!2319 x!742681) (toValue!14 thiss!2319 x!742681)))))

(assert (= (and bs!601822 (not res!1755634)) b!4275107))

(assert (=> m!4870735 s!240226))

(assert (=> m!4870735 s!240226))

(declare-fun bs!601823 () Bool)

(declare-fun s!240228 () Bool)

(assert (= bs!601823 (and neg-inst!1786 s!240228)))

(declare-fun res!1755635 () Bool)

(declare-fun e!2654167 () Bool)

(assert (=> bs!601823 (=> res!1755635 e!2654167)))

(assert (=> bs!601823 (= res!1755635 (not (= (list!17214 x!742683) (list!17214 x!742681))))))

(assert (=> bs!601823 (=> true e!2654167)))

(declare-fun b!4275108 () Bool)

(assert (=> b!4275108 (= e!2654167 (= (toValue!14 thiss!2319 x!742683) (toValue!14 thiss!2319 x!742681)))))

(assert (= (and bs!601823 (not res!1755635)) b!4275108))

(declare-fun bs!601824 () Bool)

(assert (= bs!601824 (and m!4870743 m!4870735)))

(assert (=> bs!601824 m!4870743))

(assert (=> bs!601824 m!4870735))

(assert (=> bs!601824 s!240228))

(declare-fun bs!601825 () Bool)

(declare-fun s!240230 () Bool)

(assert (= bs!601825 (and neg-inst!1786 s!240230)))

(declare-fun res!1755636 () Bool)

(declare-fun e!2654168 () Bool)

(assert (=> bs!601825 (=> res!1755636 e!2654168)))

(assert (=> bs!601825 (= res!1755636 (not (= (list!17214 x!742683) (list!17214 x!742683))))))

(assert (=> bs!601825 (=> true e!2654168)))

(declare-fun b!4275109 () Bool)

(assert (=> b!4275109 (= e!2654168 (= (toValue!14 thiss!2319 x!742683) (toValue!14 thiss!2319 x!742683)))))

(assert (= (and bs!601825 (not res!1755636)) b!4275109))

(assert (=> m!4870743 s!240230))

(declare-fun bs!601826 () Bool)

(declare-fun s!240232 () Bool)

(assert (= bs!601826 (and neg-inst!1786 s!240232)))

(declare-fun res!1755637 () Bool)

(declare-fun e!2654169 () Bool)

(assert (=> bs!601826 (=> res!1755637 e!2654169)))

(assert (=> bs!601826 (= res!1755637 (not (= (list!17214 x!742681) (list!17214 x!742683))))))

(assert (=> bs!601826 (=> true e!2654169)))

(declare-fun b!4275110 () Bool)

(assert (=> b!4275110 (= e!2654169 (= (toValue!14 thiss!2319 x!742681) (toValue!14 thiss!2319 x!742683)))))

(assert (= (and bs!601826 (not res!1755637)) b!4275110))

(assert (=> bs!601824 m!4870735))

(assert (=> bs!601824 m!4870743))

(assert (=> bs!601824 s!240232))

(assert (=> m!4870743 s!240230))

(declare-fun bs!601827 () Bool)

(declare-fun s!240234 () Bool)

(assert (= bs!601827 (and neg-inst!1786 s!240234)))

(declare-fun res!1755638 () Bool)

(declare-fun e!2654170 () Bool)

(assert (=> bs!601827 (=> res!1755638 e!2654170)))

(assert (=> bs!601827 (= res!1755638 (not (= (list!17214 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742681))) (list!17214 x!742683))))))

(assert (=> bs!601827 (=> true e!2654170)))

(declare-fun b!4275111 () Bool)

(assert (=> b!4275111 (= e!2654170 (= (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742681))) (toValue!14 thiss!2319 x!742683)))))

(assert (= (and bs!601827 (not res!1755638)) b!4275111))

(declare-fun bs!601828 () Bool)

(assert (= bs!601828 (and m!4870739 m!4870743)))

(assert (=> bs!601828 m!4870739))

(assert (=> bs!601828 m!4870743))

(assert (=> bs!601828 s!240234))

(declare-fun bs!601829 () Bool)

(declare-fun s!240236 () Bool)

(assert (= bs!601829 (and neg-inst!1786 s!240236)))

(declare-fun res!1755639 () Bool)

(declare-fun e!2654171 () Bool)

(assert (=> bs!601829 (=> res!1755639 e!2654171)))

(assert (=> bs!601829 (= res!1755639 (not (= (list!17214 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742681))) (list!17214 x!742681))))))

(assert (=> bs!601829 (=> true e!2654171)))

(declare-fun b!4275112 () Bool)

(assert (=> b!4275112 (= e!2654171 (= (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742681))) (toValue!14 thiss!2319 x!742681)))))

(assert (= (and bs!601829 (not res!1755639)) b!4275112))

(declare-fun bs!601830 () Bool)

(assert (= bs!601830 (and m!4870739 m!4870735)))

(assert (=> bs!601830 m!4870739))

(assert (=> bs!601830 m!4870735))

(assert (=> bs!601830 s!240236))

(declare-fun bs!601831 () Bool)

(declare-fun s!240238 () Bool)

(assert (= bs!601831 (and neg-inst!1786 s!240238)))

(declare-fun res!1755640 () Bool)

(declare-fun e!2654172 () Bool)

(assert (=> bs!601831 (=> res!1755640 e!2654172)))

(assert (=> bs!601831 (= res!1755640 (not (= (list!17214 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742681))) (list!17214 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742681))))))))

(assert (=> bs!601831 (=> true e!2654172)))

(declare-fun b!4275113 () Bool)

(assert (=> b!4275113 (= e!2654172 (= (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742681))) (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742681)))))))

(assert (= (and bs!601831 (not res!1755640)) b!4275113))

(assert (=> m!4870739 s!240238))

(declare-fun bs!601832 () Bool)

(declare-fun s!240240 () Bool)

(assert (= bs!601832 (and neg-inst!1786 s!240240)))

(declare-fun res!1755641 () Bool)

(declare-fun e!2654173 () Bool)

(assert (=> bs!601832 (=> res!1755641 e!2654173)))

(assert (=> bs!601832 (= res!1755641 (not (= (list!17214 x!742683) (list!17214 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742681))))))))

(assert (=> bs!601832 (=> true e!2654173)))

(declare-fun b!4275114 () Bool)

(assert (=> b!4275114 (= e!2654173 (= (toValue!14 thiss!2319 x!742683) (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742681)))))))

(assert (= (and bs!601832 (not res!1755641)) b!4275114))

(assert (=> bs!601828 m!4870743))

(assert (=> bs!601828 m!4870739))

(assert (=> bs!601828 s!240240))

(declare-fun bs!601833 () Bool)

(declare-fun s!240242 () Bool)

(assert (= bs!601833 (and neg-inst!1786 s!240242)))

(declare-fun res!1755642 () Bool)

(declare-fun e!2654174 () Bool)

(assert (=> bs!601833 (=> res!1755642 e!2654174)))

(assert (=> bs!601833 (= res!1755642 (not (= (list!17214 x!742681) (list!17214 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742681))))))))

(assert (=> bs!601833 (=> true e!2654174)))

(declare-fun b!4275115 () Bool)

(assert (=> b!4275115 (= e!2654174 (= (toValue!14 thiss!2319 x!742681) (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742681)))))))

(assert (= (and bs!601833 (not res!1755642)) b!4275115))

(assert (=> bs!601830 m!4870735))

(assert (=> bs!601830 m!4870739))

(assert (=> bs!601830 s!240242))

(assert (=> m!4870739 s!240238))

(declare-fun bs!601834 () Bool)

(declare-fun s!240244 () Bool)

(assert (= bs!601834 (and neg-inst!1786 s!240244)))

(declare-fun res!1755643 () Bool)

(declare-fun e!2654175 () Bool)

(assert (=> bs!601834 (=> res!1755643 e!2654175)))

(assert (=> bs!601834 (= res!1755643 (not (= (list!17214 x!742682) (list!17214 x!742683))))))

(assert (=> bs!601834 (=> true e!2654175)))

(declare-fun b!4275116 () Bool)

(assert (=> b!4275116 (= e!2654175 (= (toValue!14 thiss!2319 x!742682) (toValue!14 thiss!2319 x!742683)))))

(assert (= (and bs!601834 (not res!1755643)) b!4275116))

(declare-fun bs!601835 () Bool)

(assert (= bs!601835 (and m!4870741 m!4870743)))

(assert (=> bs!601835 m!4870741))

(assert (=> bs!601835 m!4870743))

(assert (=> bs!601835 s!240244))

(declare-fun bs!601836 () Bool)

(declare-fun s!240246 () Bool)

(assert (= bs!601836 (and neg-inst!1786 s!240246)))

(declare-fun res!1755644 () Bool)

(declare-fun e!2654176 () Bool)

(assert (=> bs!601836 (=> res!1755644 e!2654176)))

(assert (=> bs!601836 (= res!1755644 (not (= (list!17214 x!742682) (list!17214 x!742681))))))

(assert (=> bs!601836 (=> true e!2654176)))

(declare-fun b!4275117 () Bool)

(assert (=> b!4275117 (= e!2654176 (= (toValue!14 thiss!2319 x!742682) (toValue!14 thiss!2319 x!742681)))))

(assert (= (and bs!601836 (not res!1755644)) b!4275117))

(declare-fun bs!601837 () Bool)

(assert (= bs!601837 (and m!4870741 m!4870735)))

(assert (=> bs!601837 m!4870741))

(assert (=> bs!601837 m!4870735))

(assert (=> bs!601837 s!240246))

(declare-fun bs!601838 () Bool)

(declare-fun s!240248 () Bool)

(assert (= bs!601838 (and neg-inst!1786 s!240248)))

(declare-fun res!1755645 () Bool)

(declare-fun e!2654177 () Bool)

(assert (=> bs!601838 (=> res!1755645 e!2654177)))

(assert (=> bs!601838 (= res!1755645 (not (= (list!17214 x!742682) (list!17214 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742681))))))))

(assert (=> bs!601838 (=> true e!2654177)))

(declare-fun b!4275118 () Bool)

(assert (=> b!4275118 (= e!2654177 (= (toValue!14 thiss!2319 x!742682) (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742681)))))))

(assert (= (and bs!601838 (not res!1755645)) b!4275118))

(declare-fun bs!601839 () Bool)

(assert (= bs!601839 (and m!4870741 m!4870739)))

(assert (=> bs!601839 m!4870741))

(assert (=> bs!601839 m!4870739))

(assert (=> bs!601839 s!240248))

(declare-fun bs!601840 () Bool)

(declare-fun s!240250 () Bool)

(assert (= bs!601840 (and neg-inst!1786 s!240250)))

(declare-fun res!1755646 () Bool)

(declare-fun e!2654178 () Bool)

(assert (=> bs!601840 (=> res!1755646 e!2654178)))

(assert (=> bs!601840 (= res!1755646 (not (= (list!17214 x!742682) (list!17214 x!742682))))))

(assert (=> bs!601840 (=> true e!2654178)))

(declare-fun b!4275119 () Bool)

(assert (=> b!4275119 (= e!2654178 (= (toValue!14 thiss!2319 x!742682) (toValue!14 thiss!2319 x!742682)))))

(assert (= (and bs!601840 (not res!1755646)) b!4275119))

(assert (=> m!4870741 s!240250))

(declare-fun bs!601841 () Bool)

(declare-fun s!240252 () Bool)

(assert (= bs!601841 (and neg-inst!1786 s!240252)))

(declare-fun res!1755647 () Bool)

(declare-fun e!2654179 () Bool)

(assert (=> bs!601841 (=> res!1755647 e!2654179)))

(assert (=> bs!601841 (= res!1755647 (not (= (list!17214 x!742683) (list!17214 x!742682))))))

(assert (=> bs!601841 (=> true e!2654179)))

(declare-fun b!4275120 () Bool)

(assert (=> b!4275120 (= e!2654179 (= (toValue!14 thiss!2319 x!742683) (toValue!14 thiss!2319 x!742682)))))

(assert (= (and bs!601841 (not res!1755647)) b!4275120))

(assert (=> bs!601835 m!4870743))

(assert (=> bs!601835 m!4870741))

(assert (=> bs!601835 s!240252))

(declare-fun bs!601842 () Bool)

(declare-fun s!240254 () Bool)

(assert (= bs!601842 (and neg-inst!1786 s!240254)))

(declare-fun res!1755648 () Bool)

(declare-fun e!2654180 () Bool)

(assert (=> bs!601842 (=> res!1755648 e!2654180)))

(assert (=> bs!601842 (= res!1755648 (not (= (list!17214 x!742681) (list!17214 x!742682))))))

(assert (=> bs!601842 (=> true e!2654180)))

(declare-fun b!4275121 () Bool)

(assert (=> b!4275121 (= e!2654180 (= (toValue!14 thiss!2319 x!742681) (toValue!14 thiss!2319 x!742682)))))

(assert (= (and bs!601842 (not res!1755648)) b!4275121))

(assert (=> bs!601837 m!4870735))

(assert (=> bs!601837 m!4870741))

(assert (=> bs!601837 s!240254))

(declare-fun bs!601843 () Bool)

(declare-fun s!240256 () Bool)

(assert (= bs!601843 (and neg-inst!1786 s!240256)))

(declare-fun res!1755649 () Bool)

(declare-fun e!2654181 () Bool)

(assert (=> bs!601843 (=> res!1755649 e!2654181)))

(assert (=> bs!601843 (= res!1755649 (not (= (list!17214 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742681))) (list!17214 x!742682))))))

(assert (=> bs!601843 (=> true e!2654181)))

(declare-fun b!4275122 () Bool)

(assert (=> b!4275122 (= e!2654181 (= (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742681))) (toValue!14 thiss!2319 x!742682)))))

(assert (= (and bs!601843 (not res!1755649)) b!4275122))

(assert (=> bs!601839 m!4870739))

(assert (=> bs!601839 m!4870741))

(assert (=> bs!601839 s!240256))

(assert (=> m!4870741 s!240250))

(declare-fun bs!601844 () Bool)

(assert (= bs!601844 (and m!4870731 m!4870739)))

(assert (=> bs!601844 s!240242))

(declare-fun bs!601845 () Bool)

(assert (= bs!601845 (and m!4870731 m!4870735)))

(assert (=> bs!601845 s!240226))

(declare-fun bs!601846 () Bool)

(assert (= bs!601846 (and m!4870731 m!4870741)))

(assert (=> bs!601846 s!240254))

(declare-fun bs!601847 () Bool)

(assert (= bs!601847 (and m!4870731 m!4870743)))

(assert (=> bs!601847 s!240232))

(assert (=> m!4870731 s!240226))

(assert (=> bs!601847 s!240228))

(assert (=> bs!601846 s!240246))

(assert (=> bs!601845 s!240226))

(assert (=> m!4870731 s!240226))

(assert (=> bs!601844 s!240236))

(assert (=> m!4870749 s!240250))

(declare-fun bs!601848 () Bool)

(assert (= bs!601848 (and m!4870749 m!4870739)))

(assert (=> bs!601848 s!240248))

(declare-fun bs!601849 () Bool)

(assert (= bs!601849 (and m!4870749 m!4870743)))

(assert (=> bs!601849 s!240244))

(declare-fun bs!601850 () Bool)

(assert (= bs!601850 (and m!4870749 m!4870735 m!4870731)))

(assert (=> bs!601850 s!240246))

(declare-fun bs!601851 () Bool)

(assert (= bs!601851 (and m!4870749 m!4870741)))

(assert (=> bs!601851 s!240250))

(assert (=> m!4870749 s!240250))

(assert (=> bs!601851 s!240250))

(assert (=> bs!601850 s!240254))

(assert (=> bs!601848 s!240256))

(assert (=> bs!601849 s!240252))

(declare-fun bs!601852 () Bool)

(assert (= bs!601852 (and m!4870751 m!4870735 m!4870731)))

(assert (=> bs!601852 s!240228))

(declare-fun bs!601853 () Bool)

(assert (= bs!601853 (and m!4870751 m!4870741 m!4870749)))

(assert (=> bs!601853 s!240252))

(declare-fun bs!601854 () Bool)

(assert (= bs!601854 (and m!4870751 m!4870739)))

(assert (=> bs!601854 s!240240))

(assert (=> m!4870751 s!240230))

(declare-fun bs!601855 () Bool)

(assert (= bs!601855 (and m!4870751 m!4870743)))

(assert (=> bs!601855 s!240230))

(assert (=> bs!601854 s!240234))

(assert (=> m!4870751 s!240230))

(assert (=> bs!601855 s!240230))

(assert (=> bs!601853 s!240244))

(assert (=> bs!601852 s!240232))

(declare-fun bs!601856 () Bool)

(assert (= bs!601856 (and neg-inst!1786 b!4275093)))

(assert (=> bs!601856 (= true inst!1787)))

(declare-fun res!1755632 () Bool)

(declare-fun e!2654160 () Bool)

(assert (=> start!410400 (=> res!1755632 e!2654160)))

(declare-fun lambda!131200 () Int)

(declare-fun Forall!1653 (Int) Bool)

(assert (=> start!410400 (= res!1755632 (not (Forall!1653 lambda!131200)))))

(assert (=> start!410400 (= (Forall!1653 lambda!131200) inst!1786)))

(assert (=> start!410400 (not e!2654160)))

(assert (=> start!410400 true))

(declare-fun e!2654161 () Bool)

(assert (=> b!4275093 (= e!2654160 e!2654161)))

(declare-fun res!1755631 () Bool)

(assert (=> b!4275093 (=> res!1755631 e!2654161)))

(declare-fun lambda!131203 () Int)

(declare-fun Forall2!1236 (Int) Bool)

(assert (=> b!4275093 (= res!1755631 (not (Forall2!1236 lambda!131203)))))

(assert (=> b!4275093 (= (Forall2!1236 lambda!131203) inst!1787)))

(declare-fun lambda!131201 () Int)

(declare-fun lambda!131202 () Int)

(declare-fun semiInverseModEq!3521 (Int Int) Bool)

(assert (=> b!4275093 (= (semiInverseModEq!3521 lambda!131201 lambda!131202) (Forall!1653 lambda!131200))))

(declare-fun b!4275094 () Bool)

(declare-datatypes ((TokenValueInjection!15902 0))(
  ( (TokenValueInjection!15903 (toValue!10825 Int) (toChars!10684 Int)) )
))
(declare-fun inv!62555 (TokenValueInjection!15902) Bool)

(assert (=> b!4275094 (= e!2654161 (inv!62555 (TokenValueInjection!15903 lambda!131202 lambda!131201)))))

(declare-fun equivClasses!3404 (Int Int) Bool)

(assert (=> b!4275094 (= (equivClasses!3404 lambda!131201 lambda!131202) (Forall2!1236 lambda!131203))))

(assert (= neg-inst!1787 inst!1786))

(assert (= (and start!410400 (not res!1755632)) b!4275093))

(assert (= neg-inst!1786 inst!1787))

(assert (= (and b!4275093 (not res!1755631)) b!4275094))

(declare-fun m!4870757 () Bool)

(assert (=> start!410400 m!4870757))

(assert (=> start!410400 m!4870757))

(declare-fun m!4870759 () Bool)

(assert (=> b!4275093 m!4870759))

(assert (=> b!4275093 m!4870759))

(declare-fun m!4870761 () Bool)

(assert (=> b!4275093 m!4870761))

(assert (=> b!4275093 m!4870757))

(declare-fun m!4870763 () Bool)

(assert (=> b!4275094 m!4870763))

(declare-fun m!4870765 () Bool)

(assert (=> b!4275094 m!4870765))

(assert (=> b!4275094 m!4870759))

(push 1)

(assert (not b!4275094))

(assert (not b!4275117))

(assert (not bs!601833))

(assert (not b!4275103))

(assert (not bs!601825))

(assert (not b!4275110))

(assert (not bs!601826))

(assert (not start!410400))

(assert (not bs!601834))

(assert (not bs!601831))

(assert (not b!4275122))

(assert (not b!4275106))

(assert (not b!4275108))

(assert (not b!4275113))

(assert (not bs!601832))

(assert (not b!4275107))

(assert (not b!4275119))

(assert (not bs!601838))

(assert (not b!4275109))

(assert (not bs!601842))

(assert (not b!4275120))

(assert (not b!4275121))

(assert (not bs!601843))

(assert (not b!4275114))

(assert (not b!4275104))

(assert (not bs!601829))

(assert (not bs!601840))

(assert (not bs!601820))

(assert (not b!4275105))

(assert (not b!4275093))

(assert (not b!4275118))

(assert (not b!4275116))

(assert (not b!4275115))

(assert (not b!4275111))

(assert (not bs!601823))

(assert (not bs!601836))

(assert (not bs!601841))

(assert (not bs!601827))

(assert (not b!4275112))

(assert (not bs!601822))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!601891 () Bool)

(assert (= bs!601891 (and m!4870735 b!4275107)))

(assert (=> bs!601891 m!4870731))

(assert (=> bs!601891 m!4870731))

(declare-fun bs!601892 () Bool)

(assert (= bs!601892 (and m!4870743 m!4870735 b!4275108)))

(assert (=> bs!601892 m!4870751))

(assert (=> bs!601892 m!4870731))

(declare-fun bs!601893 () Bool)

(assert (= bs!601893 (and m!4870743 b!4275109)))

(assert (=> bs!601893 m!4870751))

(assert (=> bs!601893 m!4870751))

(declare-fun bs!601894 () Bool)

(assert (= bs!601894 (and m!4870743 m!4870735 b!4275110)))

(assert (=> bs!601894 m!4870731))

(assert (=> bs!601894 m!4870751))

(declare-fun bs!601895 () Bool)

(assert (= bs!601895 (and m!4870739 m!4870743 b!4275111)))

(declare-fun m!4870805 () Bool)

(assert (=> bs!601895 m!4870805))

(assert (=> bs!601895 m!4870751))

(declare-fun bs!601896 () Bool)

(assert (= bs!601896 (and m!4870739 m!4870735 b!4275112)))

(assert (=> bs!601896 m!4870805))

(assert (=> bs!601896 m!4870731))

(declare-fun bs!601897 () Bool)

(assert (= bs!601897 (and m!4870739 b!4275113)))

(assert (=> bs!601897 m!4870805))

(assert (=> bs!601897 m!4870805))

(declare-fun bs!601898 () Bool)

(assert (= bs!601898 (and m!4870739 m!4870743 b!4275114)))

(assert (=> bs!601898 m!4870751))

(assert (=> bs!601898 m!4870805))

(declare-fun bs!601899 () Bool)

(assert (= bs!601899 (and m!4870739 m!4870735 b!4275115)))

(assert (=> bs!601899 m!4870731))

(assert (=> bs!601899 m!4870805))

(declare-fun bs!601900 () Bool)

(assert (= bs!601900 (and m!4870741 m!4870743 b!4275116)))

(assert (=> bs!601900 m!4870749))

(assert (=> bs!601900 m!4870751))

(declare-fun bs!601901 () Bool)

(assert (= bs!601901 (and m!4870741 m!4870735 b!4275117)))

(assert (=> bs!601901 m!4870749))

(assert (=> bs!601901 m!4870731))

(declare-fun bs!601902 () Bool)

(assert (= bs!601902 (and m!4870741 m!4870739 b!4275118)))

(assert (=> bs!601902 m!4870749))

(assert (=> bs!601902 m!4870805))

(declare-fun bs!601903 () Bool)

(assert (= bs!601903 (and m!4870741 b!4275119)))

(assert (=> bs!601903 m!4870749))

(assert (=> bs!601903 m!4870749))

(declare-fun bs!601904 () Bool)

(assert (= bs!601904 (and m!4870741 m!4870743 b!4275120)))

(assert (=> bs!601904 m!4870751))

(assert (=> bs!601904 m!4870749))

(declare-fun bs!601905 () Bool)

(assert (= bs!601905 (and m!4870741 m!4870735 b!4275121)))

(assert (=> bs!601905 m!4870731))

(assert (=> bs!601905 m!4870749))

(declare-fun bs!601906 () Bool)

(assert (= bs!601906 (and m!4870741 m!4870739 b!4275122)))

(assert (=> bs!601906 m!4870805))

(assert (=> bs!601906 m!4870749))

(push 1)

(assert (not b!4275094))

(assert (not b!4275117))

(assert (not bs!601833))

(assert (not b!4275103))

(assert (not bs!601825))

(assert (not b!4275110))

(assert (not bs!601826))

(assert (not start!410400))

(assert (not bs!601834))

(assert (not bs!601831))

(assert (not b!4275122))

(assert (not b!4275106))

(assert (not b!4275108))

(assert (not b!4275113))

(assert (not bs!601832))

(assert (not b!4275107))

(assert (not b!4275119))

(assert (not bs!601838))

(assert (not b!4275109))

(assert (not bs!601842))

(assert (not b!4275120))

(assert (not b!4275121))

(assert (not bs!601843))

(assert (not b!4275114))

(assert (not b!4275104))

(assert (not bs!601829))

(assert (not bs!601840))

(assert (not bs!601820))

(assert (not b!4275105))

(assert (not b!4275093))

(assert (not b!4275118))

(assert (not b!4275116))

(assert (not b!4275115))

(assert (not b!4275111))

(assert (not bs!601823))

(assert (not bs!601836))

(assert (not bs!601841))

(assert (not bs!601827))

(assert (not b!4275112))

(assert (not bs!601822))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1261915 () Bool)

(declare-fun list!17216 (Conc!14310) List!47452)

(assert (=> d!1261915 (= (list!17214 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742681))) (list!17216 (c!727905 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742681)))))))

(declare-fun bs!601923 () Bool)

(assert (= bs!601923 d!1261915))

(declare-fun m!4870809 () Bool)

(assert (=> bs!601923 m!4870809))

(assert (=> bs!601829 d!1261915))

(declare-fun d!1261917 () Bool)

(assert (=> d!1261917 (= (list!17214 x!742681) (list!17216 (c!727905 x!742681)))))

(declare-fun bs!601924 () Bool)

(assert (= bs!601924 d!1261917))

(declare-fun m!4870811 () Bool)

(assert (=> bs!601924 m!4870811))

(assert (=> bs!601829 d!1261917))

(assert (=> bs!601843 d!1261915))

(declare-fun d!1261919 () Bool)

(assert (=> d!1261919 (= (list!17214 x!742682) (list!17216 (c!727905 x!742682)))))

(declare-fun bs!601925 () Bool)

(assert (= bs!601925 d!1261919))

(declare-fun m!4870813 () Bool)

(assert (=> bs!601925 m!4870813))

(assert (=> bs!601843 d!1261919))

(declare-fun d!1261921 () Bool)

(declare-fun lt!1513624 () List!47452)

(declare-fun efficientList!552 (BalanceConc!28130) List!47452)

(assert (=> d!1261921 (= lt!1513624 (efficientList!552 x!742682))))

(assert (=> d!1261921 (= (toValue!14 thiss!2319 x!742682) (ite (= lt!1513624 (Cons!47328 #x0061 (Cons!47328 #x0062 (Cons!47328 #x0073 (Cons!47328 #x0074 (Cons!47328 #x0072 (Cons!47328 #x0061 (Cons!47328 #x0063 (Cons!47328 #x0074 Nil!47328))))))))) Abstract!8283 (ite (= lt!1513624 (Cons!47328 #x0063 (Cons!47328 #x0061 (Cons!47328 #x0073 (Cons!47328 #x0065 Nil!47328))))) Case!8283 (ite (= lt!1513624 (Cons!47328 #x0063 (Cons!47328 #x006C (Cons!47328 #x0061 (Cons!47328 #x0073 (Cons!47328 #x0073 Nil!47328)))))) Class!8283 (ite (= lt!1513624 (Cons!47328 #x0064 (Cons!47328 #x0065 (Cons!47328 #x0066 Nil!47328)))) Def!8283 (ite (= lt!1513624 (Cons!47328 #x0065 (Cons!47328 #x006C (Cons!47328 #x0073 (Cons!47328 #x0065 Nil!47328))))) Else!8283 (ite (= lt!1513624 (Cons!47328 #x0065 (Cons!47328 #x0078 (Cons!47328 #x0074 (Cons!47328 #x0065 (Cons!47328 #x006E (Cons!47328 #x0064 (Cons!47328 #x0073 Nil!47328)))))))) Extends!8283 (ite (= lt!1513624 (Cons!47328 #x0069 (Cons!47328 #x0066 Nil!47328))) If!8283 (ite (= lt!1513624 (Cons!47328 #x006D (Cons!47328 #x0061 (Cons!47328 #x0074 (Cons!47328 #x0063 (Cons!47328 #x0068 Nil!47328)))))) Match!8283 (ite (= lt!1513624 (Cons!47328 #x006F (Cons!47328 #x0062 (Cons!47328 #x006A (Cons!47328 #x0065 (Cons!47328 #x0063 (Cons!47328 #x0074 Nil!47328))))))) Object!8406 (ite (= lt!1513624 (Cons!47328 #x0076 (Cons!47328 #x0061 (Cons!47328 #x006C Nil!47328)))) Val!8283 (ite (= lt!1513624 (Cons!47328 #x0065 (Cons!47328 #x0072 (Cons!47328 #x0072 (Cons!47328 #x006F (Cons!47328 #x0072 Nil!47328)))))) Error!8283 (ite (= lt!1513624 (Cons!47328 #x005F Nil!47328)) Underscore!8283 (ite (= lt!1513624 (Cons!47328 #x0065 (Cons!47328 #x006E (Cons!47328 #x0064 Nil!47328)))) End!8283 (Broken!41415 lt!1513624)))))))))))))))))

(declare-fun bs!601926 () Bool)

(assert (= bs!601926 d!1261921))

(declare-fun m!4870815 () Bool)

(assert (=> bs!601926 m!4870815))

(assert (=> b!4275118 d!1261921))

(declare-fun d!1261923 () Bool)

(declare-fun lt!1513625 () List!47452)

(assert (=> d!1261923 (= lt!1513625 (efficientList!552 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742681))))))

(assert (=> d!1261923 (= (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742681))) (ite (= lt!1513625 (Cons!47328 #x0061 (Cons!47328 #x0062 (Cons!47328 #x0073 (Cons!47328 #x0074 (Cons!47328 #x0072 (Cons!47328 #x0061 (Cons!47328 #x0063 (Cons!47328 #x0074 Nil!47328))))))))) Abstract!8283 (ite (= lt!1513625 (Cons!47328 #x0063 (Cons!47328 #x0061 (Cons!47328 #x0073 (Cons!47328 #x0065 Nil!47328))))) Case!8283 (ite (= lt!1513625 (Cons!47328 #x0063 (Cons!47328 #x006C (Cons!47328 #x0061 (Cons!47328 #x0073 (Cons!47328 #x0073 Nil!47328)))))) Class!8283 (ite (= lt!1513625 (Cons!47328 #x0064 (Cons!47328 #x0065 (Cons!47328 #x0066 Nil!47328)))) Def!8283 (ite (= lt!1513625 (Cons!47328 #x0065 (Cons!47328 #x006C (Cons!47328 #x0073 (Cons!47328 #x0065 Nil!47328))))) Else!8283 (ite (= lt!1513625 (Cons!47328 #x0065 (Cons!47328 #x0078 (Cons!47328 #x0074 (Cons!47328 #x0065 (Cons!47328 #x006E (Cons!47328 #x0064 (Cons!47328 #x0073 Nil!47328)))))))) Extends!8283 (ite (= lt!1513625 (Cons!47328 #x0069 (Cons!47328 #x0066 Nil!47328))) If!8283 (ite (= lt!1513625 (Cons!47328 #x006D (Cons!47328 #x0061 (Cons!47328 #x0074 (Cons!47328 #x0063 (Cons!47328 #x0068 Nil!47328)))))) Match!8283 (ite (= lt!1513625 (Cons!47328 #x006F (Cons!47328 #x0062 (Cons!47328 #x006A (Cons!47328 #x0065 (Cons!47328 #x0063 (Cons!47328 #x0074 Nil!47328))))))) Object!8406 (ite (= lt!1513625 (Cons!47328 #x0076 (Cons!47328 #x0061 (Cons!47328 #x006C Nil!47328)))) Val!8283 (ite (= lt!1513625 (Cons!47328 #x0065 (Cons!47328 #x0072 (Cons!47328 #x0072 (Cons!47328 #x006F (Cons!47328 #x0072 Nil!47328)))))) Error!8283 (ite (= lt!1513625 (Cons!47328 #x005F Nil!47328)) Underscore!8283 (ite (= lt!1513625 (Cons!47328 #x0065 (Cons!47328 #x006E (Cons!47328 #x0064 Nil!47328)))) End!8283 (Broken!41415 lt!1513625)))))))))))))))))

(declare-fun bs!601927 () Bool)

(assert (= bs!601927 d!1261923))

(assert (=> bs!601927 m!4870733))

(declare-fun m!4870817 () Bool)

(assert (=> bs!601927 m!4870817))

(assert (=> b!4275118 d!1261923))

(declare-fun d!1261925 () Bool)

(declare-fun lt!1513626 () List!47452)

(assert (=> d!1261925 (= lt!1513626 (efficientList!552 x!742683))))

(assert (=> d!1261925 (= (toValue!14 thiss!2319 x!742683) (ite (= lt!1513626 (Cons!47328 #x0061 (Cons!47328 #x0062 (Cons!47328 #x0073 (Cons!47328 #x0074 (Cons!47328 #x0072 (Cons!47328 #x0061 (Cons!47328 #x0063 (Cons!47328 #x0074 Nil!47328))))))))) Abstract!8283 (ite (= lt!1513626 (Cons!47328 #x0063 (Cons!47328 #x0061 (Cons!47328 #x0073 (Cons!47328 #x0065 Nil!47328))))) Case!8283 (ite (= lt!1513626 (Cons!47328 #x0063 (Cons!47328 #x006C (Cons!47328 #x0061 (Cons!47328 #x0073 (Cons!47328 #x0073 Nil!47328)))))) Class!8283 (ite (= lt!1513626 (Cons!47328 #x0064 (Cons!47328 #x0065 (Cons!47328 #x0066 Nil!47328)))) Def!8283 (ite (= lt!1513626 (Cons!47328 #x0065 (Cons!47328 #x006C (Cons!47328 #x0073 (Cons!47328 #x0065 Nil!47328))))) Else!8283 (ite (= lt!1513626 (Cons!47328 #x0065 (Cons!47328 #x0078 (Cons!47328 #x0074 (Cons!47328 #x0065 (Cons!47328 #x006E (Cons!47328 #x0064 (Cons!47328 #x0073 Nil!47328)))))))) Extends!8283 (ite (= lt!1513626 (Cons!47328 #x0069 (Cons!47328 #x0066 Nil!47328))) If!8283 (ite (= lt!1513626 (Cons!47328 #x006D (Cons!47328 #x0061 (Cons!47328 #x0074 (Cons!47328 #x0063 (Cons!47328 #x0068 Nil!47328)))))) Match!8283 (ite (= lt!1513626 (Cons!47328 #x006F (Cons!47328 #x0062 (Cons!47328 #x006A (Cons!47328 #x0065 (Cons!47328 #x0063 (Cons!47328 #x0074 Nil!47328))))))) Object!8406 (ite (= lt!1513626 (Cons!47328 #x0076 (Cons!47328 #x0061 (Cons!47328 #x006C Nil!47328)))) Val!8283 (ite (= lt!1513626 (Cons!47328 #x0065 (Cons!47328 #x0072 (Cons!47328 #x0072 (Cons!47328 #x006F (Cons!47328 #x0072 Nil!47328)))))) Error!8283 (ite (= lt!1513626 (Cons!47328 #x005F Nil!47328)) Underscore!8283 (ite (= lt!1513626 (Cons!47328 #x0065 (Cons!47328 #x006E (Cons!47328 #x0064 Nil!47328)))) End!8283 (Broken!41415 lt!1513626)))))))))))))))))

(declare-fun bs!601928 () Bool)

(assert (= bs!601928 d!1261925))

(declare-fun m!4870819 () Bool)

(assert (=> bs!601928 m!4870819))

(assert (=> b!4275108 d!1261925))

(declare-fun d!1261927 () Bool)

(declare-fun lt!1513627 () List!47452)

(assert (=> d!1261927 (= lt!1513627 (efficientList!552 x!742681))))

(assert (=> d!1261927 (= (toValue!14 thiss!2319 x!742681) (ite (= lt!1513627 (Cons!47328 #x0061 (Cons!47328 #x0062 (Cons!47328 #x0073 (Cons!47328 #x0074 (Cons!47328 #x0072 (Cons!47328 #x0061 (Cons!47328 #x0063 (Cons!47328 #x0074 Nil!47328))))))))) Abstract!8283 (ite (= lt!1513627 (Cons!47328 #x0063 (Cons!47328 #x0061 (Cons!47328 #x0073 (Cons!47328 #x0065 Nil!47328))))) Case!8283 (ite (= lt!1513627 (Cons!47328 #x0063 (Cons!47328 #x006C (Cons!47328 #x0061 (Cons!47328 #x0073 (Cons!47328 #x0073 Nil!47328)))))) Class!8283 (ite (= lt!1513627 (Cons!47328 #x0064 (Cons!47328 #x0065 (Cons!47328 #x0066 Nil!47328)))) Def!8283 (ite (= lt!1513627 (Cons!47328 #x0065 (Cons!47328 #x006C (Cons!47328 #x0073 (Cons!47328 #x0065 Nil!47328))))) Else!8283 (ite (= lt!1513627 (Cons!47328 #x0065 (Cons!47328 #x0078 (Cons!47328 #x0074 (Cons!47328 #x0065 (Cons!47328 #x006E (Cons!47328 #x0064 (Cons!47328 #x0073 Nil!47328)))))))) Extends!8283 (ite (= lt!1513627 (Cons!47328 #x0069 (Cons!47328 #x0066 Nil!47328))) If!8283 (ite (= lt!1513627 (Cons!47328 #x006D (Cons!47328 #x0061 (Cons!47328 #x0074 (Cons!47328 #x0063 (Cons!47328 #x0068 Nil!47328)))))) Match!8283 (ite (= lt!1513627 (Cons!47328 #x006F (Cons!47328 #x0062 (Cons!47328 #x006A (Cons!47328 #x0065 (Cons!47328 #x0063 (Cons!47328 #x0074 Nil!47328))))))) Object!8406 (ite (= lt!1513627 (Cons!47328 #x0076 (Cons!47328 #x0061 (Cons!47328 #x006C Nil!47328)))) Val!8283 (ite (= lt!1513627 (Cons!47328 #x0065 (Cons!47328 #x0072 (Cons!47328 #x0072 (Cons!47328 #x006F (Cons!47328 #x0072 Nil!47328)))))) Error!8283 (ite (= lt!1513627 (Cons!47328 #x005F Nil!47328)) Underscore!8283 (ite (= lt!1513627 (Cons!47328 #x0065 (Cons!47328 #x006E (Cons!47328 #x0064 Nil!47328)))) End!8283 (Broken!41415 lt!1513627)))))))))))))))))

(declare-fun bs!601929 () Bool)

(assert (= bs!601929 d!1261927))

(declare-fun m!4870821 () Bool)

(assert (=> bs!601929 m!4870821))

(assert (=> b!4275108 d!1261927))

(assert (=> bs!601833 d!1261917))

(assert (=> bs!601833 d!1261915))

(assert (=> b!4275121 d!1261927))

(assert (=> b!4275121 d!1261921))

(assert (=> bs!601838 d!1261919))

(assert (=> bs!601838 d!1261915))

(assert (=> b!4275111 d!1261923))

(assert (=> b!4275111 d!1261925))

(declare-fun d!1261929 () Bool)

(assert (=> d!1261929 (= (list!17214 x!742683) (list!17216 (c!727905 x!742683)))))

(declare-fun bs!601930 () Bool)

(assert (= bs!601930 d!1261929))

(declare-fun m!4870823 () Bool)

(assert (=> bs!601930 m!4870823))

(assert (=> bs!601823 d!1261929))

(assert (=> bs!601823 d!1261917))

(assert (=> b!4275114 d!1261925))

(assert (=> b!4275114 d!1261923))

(assert (=> bs!601842 d!1261917))

(assert (=> bs!601842 d!1261919))

(assert (=> bs!601827 d!1261915))

(assert (=> bs!601827 d!1261929))

(declare-fun d!1261931 () Bool)

(declare-fun isBalanced!3855 (Conc!14310) Bool)

(assert (=> d!1261931 (= (inv!62554 x!742681) (isBalanced!3855 (c!727905 x!742681)))))

(declare-fun bs!601931 () Bool)

(assert (= bs!601931 d!1261931))

(declare-fun m!4870825 () Bool)

(assert (=> bs!601931 m!4870825))

(assert (=> start!410400 d!1261931))

(declare-fun b!4275229 () Bool)

(declare-fun c!727944 () Bool)

(assert (=> b!4275229 (= c!727944 (is-Object!8406 (toValue!14 thiss!2319 x!742681)))))

(declare-fun e!2654262 () BalanceConc!28130)

(declare-fun e!2654264 () BalanceConc!28130)

(assert (=> b!4275229 (= e!2654262 e!2654264)))

(declare-fun b!4275230 () Bool)

(declare-fun e!2654252 () BalanceConc!28130)

(declare-fun stringAbstractConc!0 () BalanceConc!28130)

(assert (=> b!4275230 (= e!2654252 stringAbstractConc!0)))

(declare-fun b!4275231 () Bool)

(declare-fun stringMatchConc!0 () BalanceConc!28130)

(assert (=> b!4275231 (= e!2654262 stringMatchConc!0)))

(declare-fun b!4275232 () Bool)

(declare-fun e!2654257 () BalanceConc!28130)

(declare-fun stringDefConc!0 () BalanceConc!28130)

(assert (=> b!4275232 (= e!2654257 stringDefConc!0)))

(declare-fun b!4275233 () Bool)

(declare-fun e!2654256 () BalanceConc!28130)

(declare-fun stringElseConc!0 () BalanceConc!28130)

(assert (=> b!4275233 (= e!2654256 stringElseConc!0)))

(declare-fun b!4275234 () Bool)

(declare-fun e!2654258 () BalanceConc!28130)

(declare-fun stringValConc!0 () BalanceConc!28130)

(assert (=> b!4275234 (= e!2654258 stringValConc!0)))

(declare-fun b!4275235 () Bool)

(declare-fun e!2654265 () BalanceConc!28130)

(declare-fun stringCaseConc!0 () BalanceConc!28130)

(assert (=> b!4275235 (= e!2654265 stringCaseConc!0)))

(declare-fun b!4275236 () Bool)

(declare-fun e!2654254 () BalanceConc!28130)

(assert (=> b!4275236 (= e!2654254 (BalanceConc!28131 Empty!14310))))

(declare-fun b!4275237 () Bool)

(declare-fun stringObjectConc!0 () BalanceConc!28130)

(assert (=> b!4275237 (= e!2654264 stringObjectConc!0)))

(declare-fun b!4275238 () Bool)

(declare-fun c!727943 () Bool)

(assert (=> b!4275238 (= c!727943 (is-If!8283 (toValue!14 thiss!2319 x!742681)))))

(declare-fun e!2654255 () BalanceConc!28130)

(declare-fun e!2654261 () BalanceConc!28130)

(assert (=> b!4275238 (= e!2654255 e!2654261)))

(declare-fun b!4275239 () Bool)

(declare-fun e!2654260 () BalanceConc!28130)

(assert (=> b!4275239 (= e!2654260 e!2654257)))

(declare-fun c!727952 () Bool)

(assert (=> b!4275239 (= c!727952 (is-Def!8283 (toValue!14 thiss!2319 x!742681)))))

(declare-fun b!4275240 () Bool)

(declare-fun c!727956 () Bool)

(assert (=> b!4275240 (= c!727956 (is-Else!8283 (toValue!14 thiss!2319 x!742681)))))

(assert (=> b!4275240 (= e!2654257 e!2654256)))

(declare-fun b!4275241 () Bool)

(declare-fun stringIfConc!0 () BalanceConc!28130)

(assert (=> b!4275241 (= e!2654261 stringIfConc!0)))

(declare-fun b!4275242 () Bool)

(declare-fun e!2654253 () BalanceConc!28130)

(declare-fun stringErrorConc!0 () BalanceConc!28130)

(assert (=> b!4275242 (= e!2654253 stringErrorConc!0)))

(declare-fun b!4275243 () Bool)

(assert (=> b!4275243 (= e!2654256 e!2654255)))

(declare-fun c!727949 () Bool)

(assert (=> b!4275243 (= c!727949 (is-Extends!8283 (toValue!14 thiss!2319 x!742681)))))

(declare-fun b!4275244 () Bool)

(declare-fun e!2654263 () BalanceConc!28130)

(declare-fun stringEndConc!0 () BalanceConc!28130)

(assert (=> b!4275244 (= e!2654263 stringEndConc!0)))

(declare-fun b!4275245 () Bool)

(declare-fun seqFromList!5883 (List!47452) BalanceConc!28130)

(assert (=> b!4275245 (= e!2654254 (seqFromList!5883 (value!249977 (toValue!14 thiss!2319 x!742681))))))

(declare-fun b!4275246 () Bool)

(declare-fun c!727955 () Bool)

(assert (=> b!4275246 (= c!727955 (is-Error!8283 (toValue!14 thiss!2319 x!742681)))))

(assert (=> b!4275246 (= e!2654258 e!2654253)))

(declare-fun b!4275247 () Bool)

(declare-fun stringExtendsConc!0 () BalanceConc!28130)

(assert (=> b!4275247 (= e!2654255 stringExtendsConc!0)))

(declare-fun b!4275248 () Bool)

(assert (=> b!4275248 (= e!2654263 e!2654254)))

(declare-fun c!727945 () Bool)

(assert (=> b!4275248 (= c!727945 (is-Broken!41415 (toValue!14 thiss!2319 x!742681)))))

(declare-fun d!1261933 () Bool)

(declare-fun c!727946 () Bool)

(assert (=> d!1261933 (= c!727946 (is-Abstract!8283 (toValue!14 thiss!2319 x!742681)))))

(assert (=> d!1261933 (= (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742681)) e!2654252)))

(declare-fun b!4275249 () Bool)

(assert (=> b!4275249 (= e!2654264 e!2654258)))

(declare-fun c!727953 () Bool)

(assert (=> b!4275249 (= c!727953 (is-Val!8283 (toValue!14 thiss!2319 x!742681)))))

(declare-fun b!4275250 () Bool)

(declare-fun e!2654259 () BalanceConc!28130)

(declare-fun stringUnderscoreConc!0 () BalanceConc!28130)

(assert (=> b!4275250 (= e!2654259 stringUnderscoreConc!0)))

(declare-fun b!4275251 () Bool)

(assert (=> b!4275251 (= e!2654253 e!2654259)))

(declare-fun c!727954 () Bool)

(assert (=> b!4275251 (= c!727954 (is-Underscore!8283 (toValue!14 thiss!2319 x!742681)))))

(declare-fun b!4275252 () Bool)

(declare-fun c!727950 () Bool)

(assert (=> b!4275252 (= c!727950 (is-Class!8283 (toValue!14 thiss!2319 x!742681)))))

(assert (=> b!4275252 (= e!2654265 e!2654260)))

(declare-fun b!4275253 () Bool)

(declare-fun c!727948 () Bool)

(assert (=> b!4275253 (= c!727948 (is-End!8283 (toValue!14 thiss!2319 x!742681)))))

(assert (=> b!4275253 (= e!2654259 e!2654263)))

(declare-fun b!4275254 () Bool)

(assert (=> b!4275254 (= e!2654252 e!2654265)))

(declare-fun c!727951 () Bool)

(assert (=> b!4275254 (= c!727951 (is-Case!8283 (toValue!14 thiss!2319 x!742681)))))

(declare-fun b!4275255 () Bool)

(declare-fun stringClassConc!0 () BalanceConc!28130)

(assert (=> b!4275255 (= e!2654260 stringClassConc!0)))

(declare-fun b!4275256 () Bool)

(assert (=> b!4275256 (= e!2654261 e!2654262)))

(declare-fun c!727947 () Bool)

(assert (=> b!4275256 (= c!727947 (is-Match!8283 (toValue!14 thiss!2319 x!742681)))))

(assert (= (and d!1261933 c!727946) b!4275230))

(assert (= (and d!1261933 (not c!727946)) b!4275254))

(assert (= (and b!4275254 c!727951) b!4275235))

(assert (= (and b!4275254 (not c!727951)) b!4275252))

(assert (= (and b!4275252 c!727950) b!4275255))

(assert (= (and b!4275252 (not c!727950)) b!4275239))

(assert (= (and b!4275239 c!727952) b!4275232))

(assert (= (and b!4275239 (not c!727952)) b!4275240))

(assert (= (and b!4275240 c!727956) b!4275233))

(assert (= (and b!4275240 (not c!727956)) b!4275243))

(assert (= (and b!4275243 c!727949) b!4275247))

(assert (= (and b!4275243 (not c!727949)) b!4275238))

(assert (= (and b!4275238 c!727943) b!4275241))

(assert (= (and b!4275238 (not c!727943)) b!4275256))

(assert (= (and b!4275256 c!727947) b!4275231))

(assert (= (and b!4275256 (not c!727947)) b!4275229))

(assert (= (and b!4275229 c!727944) b!4275237))

(assert (= (and b!4275229 (not c!727944)) b!4275249))

(assert (= (and b!4275249 c!727953) b!4275234))

(assert (= (and b!4275249 (not c!727953)) b!4275246))

(assert (= (and b!4275246 c!727955) b!4275242))

(assert (= (and b!4275246 (not c!727955)) b!4275251))

(assert (= (and b!4275251 c!727954) b!4275250))

(assert (= (and b!4275251 (not c!727954)) b!4275253))

(assert (= (and b!4275253 c!727948) b!4275244))

(assert (= (and b!4275253 (not c!727948)) b!4275248))

(assert (= (and b!4275248 c!727945) b!4275245))

(assert (= (and b!4275248 (not c!727945)) b!4275236))

(declare-fun m!4870827 () Bool)

(assert (=> b!4275250 m!4870827))

(declare-fun m!4870829 () Bool)

(assert (=> b!4275230 m!4870829))

(declare-fun m!4870831 () Bool)

(assert (=> b!4275245 m!4870831))

(declare-fun m!4870833 () Bool)

(assert (=> b!4275244 m!4870833))

(declare-fun m!4870835 () Bool)

(assert (=> b!4275242 m!4870835))

(declare-fun m!4870837 () Bool)

(assert (=> b!4275232 m!4870837))

(declare-fun m!4870839 () Bool)

(assert (=> b!4275255 m!4870839))

(declare-fun m!4870841 () Bool)

(assert (=> b!4275237 m!4870841))

(declare-fun m!4870843 () Bool)

(assert (=> b!4275247 m!4870843))

(declare-fun m!4870845 () Bool)

(assert (=> b!4275233 m!4870845))

(declare-fun m!4870847 () Bool)

(assert (=> b!4275235 m!4870847))

(declare-fun m!4870849 () Bool)

(assert (=> b!4275241 m!4870849))

(declare-fun m!4870851 () Bool)

(assert (=> b!4275234 m!4870851))

(declare-fun m!4870853 () Bool)

(assert (=> b!4275231 m!4870853))

(assert (=> start!410400 d!1261933))

(assert (=> start!410400 d!1261917))

(assert (=> start!410400 d!1261927))

(declare-fun d!1261937 () Bool)

(declare-fun choose!26066 (Int) Bool)

(assert (=> d!1261937 (= (Forall!1653 lambda!131200) (choose!26066 lambda!131200))))

(declare-fun bs!601932 () Bool)

(assert (= bs!601932 d!1261937))

(declare-fun m!4870855 () Bool)

(assert (=> bs!601932 m!4870855))

(assert (=> start!410400 d!1261937))

(assert (=> start!410400 d!1261915))

(assert (=> b!4275107 d!1261927))

(assert (=> b!4275117 d!1261921))

(assert (=> b!4275117 d!1261927))

(assert (=> bs!601832 d!1261929))

(assert (=> bs!601832 d!1261915))

(assert (=> b!4275120 d!1261925))

(assert (=> b!4275120 d!1261921))

(declare-fun d!1261939 () Bool)

(declare-fun res!1755693 () Bool)

(declare-fun e!2654268 () Bool)

(assert (=> d!1261939 (=> (not res!1755693) (not e!2654268))))

(assert (=> d!1261939 (= res!1755693 (semiInverseModEq!3521 (toChars!10684 (TokenValueInjection!15903 lambda!131202 lambda!131201)) (toValue!10825 (TokenValueInjection!15903 lambda!131202 lambda!131201))))))

(assert (=> d!1261939 (= (inv!62555 (TokenValueInjection!15903 lambda!131202 lambda!131201)) e!2654268)))

(declare-fun b!4275259 () Bool)

(assert (=> b!4275259 (= e!2654268 (equivClasses!3404 (toChars!10684 (TokenValueInjection!15903 lambda!131202 lambda!131201)) (toValue!10825 (TokenValueInjection!15903 lambda!131202 lambda!131201))))))

(assert (= (and d!1261939 res!1755693) b!4275259))

(declare-fun m!4870857 () Bool)

(assert (=> d!1261939 m!4870857))

(declare-fun m!4870859 () Bool)

(assert (=> b!4275259 m!4870859))

(assert (=> b!4275094 d!1261939))

(declare-fun bs!601933 () Bool)

(declare-fun d!1261941 () Bool)

(assert (= bs!601933 (and d!1261941 b!4275093)))

(declare-fun lambda!131234 () Int)

(assert (=> bs!601933 (not (= lambda!131234 lambda!131203))))

(assert (=> d!1261941 true))

(declare-fun order!24971 () Int)

(declare-fun order!24969 () Int)

(declare-fun dynLambda!20291 (Int Int) Int)

(declare-fun dynLambda!20292 (Int Int) Int)

(assert (=> d!1261941 (< (dynLambda!20291 order!24969 lambda!131202) (dynLambda!20292 order!24971 lambda!131234))))

(assert (=> d!1261941 (= (equivClasses!3404 lambda!131201 lambda!131202) (Forall2!1236 lambda!131234))))

(declare-fun bs!601934 () Bool)

(assert (= bs!601934 d!1261941))

(declare-fun m!4870861 () Bool)

(assert (=> bs!601934 m!4870861))

(assert (=> b!4275094 d!1261941))

(declare-fun d!1261943 () Bool)

(declare-fun choose!26067 (Int) Bool)

(assert (=> d!1261943 (= (Forall2!1236 lambda!131203) (choose!26067 lambda!131203))))

(declare-fun bs!601935 () Bool)

(assert (= bs!601935 d!1261943))

(declare-fun m!4870863 () Bool)

(assert (=> bs!601935 m!4870863))

(assert (=> b!4275094 d!1261943))

(assert (=> b!4275093 d!1261929))

(assert (=> b!4275093 d!1261919))

(declare-fun bs!601936 () Bool)

(declare-fun d!1261945 () Bool)

(assert (= bs!601936 (and d!1261945 start!410400)))

(declare-fun lambda!131237 () Int)

(assert (=> bs!601936 (not (= lambda!131237 lambda!131200))))

(assert (=> d!1261945 true))

(declare-fun order!24975 () Int)

(declare-fun order!24973 () Int)

(declare-fun dynLambda!20293 (Int Int) Int)

(declare-fun dynLambda!20294 (Int Int) Int)

(assert (=> d!1261945 (< (dynLambda!20293 order!24973 lambda!131201) (dynLambda!20294 order!24975 lambda!131237))))

(assert (=> d!1261945 true))

(assert (=> d!1261945 (< (dynLambda!20291 order!24969 lambda!131202) (dynLambda!20294 order!24975 lambda!131237))))

(assert (=> d!1261945 (= (semiInverseModEq!3521 lambda!131201 lambda!131202) (Forall!1653 lambda!131237))))

(declare-fun bs!601937 () Bool)

(assert (= bs!601937 d!1261945))

(declare-fun m!4870865 () Bool)

(assert (=> bs!601937 m!4870865))

(assert (=> b!4275093 d!1261945))

(assert (=> b!4275093 d!1261943))

(declare-fun d!1261947 () Bool)

(assert (=> d!1261947 (= (inv!62554 x!742683) (isBalanced!3855 (c!727905 x!742683)))))

(declare-fun bs!601938 () Bool)

(assert (= bs!601938 d!1261947))

(declare-fun m!4870867 () Bool)

(assert (=> bs!601938 m!4870867))

(assert (=> b!4275093 d!1261947))

(assert (=> b!4275093 d!1261937))

(declare-fun d!1261949 () Bool)

(assert (=> d!1261949 (= (inv!62554 x!742682) (isBalanced!3855 (c!727905 x!742682)))))

(declare-fun bs!601939 () Bool)

(assert (= bs!601939 d!1261949))

(declare-fun m!4870869 () Bool)

(assert (=> bs!601939 m!4870869))

(assert (=> b!4275093 d!1261949))

(assert (=> b!4275110 d!1261927))

(assert (=> b!4275110 d!1261925))

(assert (=> bs!601822 d!1261917))

(assert (=> bs!601836 d!1261919))

(assert (=> bs!601836 d!1261917))

(assert (=> b!4275113 d!1261923))

(declare-fun d!1261951 () Bool)

(declare-fun c!727959 () Bool)

(assert (=> d!1261951 (= c!727959 (is-Node!14310 (c!727905 x!742683)))))

(declare-fun e!2654275 () Bool)

(assert (=> d!1261951 (= (inv!62553 (c!727905 x!742683)) e!2654275)))

(declare-fun b!4275274 () Bool)

(declare-fun inv!62559 (Conc!14310) Bool)

(assert (=> b!4275274 (= e!2654275 (inv!62559 (c!727905 x!742683)))))

(declare-fun b!4275275 () Bool)

(declare-fun e!2654276 () Bool)

(assert (=> b!4275275 (= e!2654275 e!2654276)))

(declare-fun res!1755698 () Bool)

(assert (=> b!4275275 (= res!1755698 (not (is-Leaf!22121 (c!727905 x!742683))))))

(assert (=> b!4275275 (=> res!1755698 e!2654276)))

(declare-fun b!4275276 () Bool)

(declare-fun inv!62560 (Conc!14310) Bool)

(assert (=> b!4275276 (= e!2654276 (inv!62560 (c!727905 x!742683)))))

(assert (= (and d!1261951 c!727959) b!4275274))

(assert (= (and d!1261951 (not c!727959)) b!4275275))

(assert (= (and b!4275275 (not res!1755698)) b!4275276))

(declare-fun m!4870871 () Bool)

(assert (=> b!4275274 m!4870871))

(declare-fun m!4870873 () Bool)

(assert (=> b!4275276 m!4870873))

(assert (=> b!4275106 d!1261951))

(assert (=> bs!601841 d!1261929))

(assert (=> bs!601841 d!1261919))

(assert (=> bs!601826 d!1261917))

(assert (=> bs!601826 d!1261929))

(declare-fun d!1261953 () Bool)

(declare-fun c!727960 () Bool)

(assert (=> d!1261953 (= c!727960 (is-Node!14310 (c!727905 x!742682)))))

(declare-fun e!2654277 () Bool)

(assert (=> d!1261953 (= (inv!62553 (c!727905 x!742682)) e!2654277)))

(declare-fun b!4275277 () Bool)

(assert (=> b!4275277 (= e!2654277 (inv!62559 (c!727905 x!742682)))))

(declare-fun b!4275278 () Bool)

(declare-fun e!2654278 () Bool)

(assert (=> b!4275278 (= e!2654277 e!2654278)))

(declare-fun res!1755699 () Bool)

(assert (=> b!4275278 (= res!1755699 (not (is-Leaf!22121 (c!727905 x!742682))))))

(assert (=> b!4275278 (=> res!1755699 e!2654278)))

(declare-fun b!4275279 () Bool)

(assert (=> b!4275279 (= e!2654278 (inv!62560 (c!727905 x!742682)))))

(assert (= (and d!1261953 c!727960) b!4275277))

(assert (= (and d!1261953 (not c!727960)) b!4275278))

(assert (= (and b!4275278 (not res!1755699)) b!4275279))

(declare-fun m!4870875 () Bool)

(assert (=> b!4275277 m!4870875))

(declare-fun m!4870877 () Bool)

(assert (=> b!4275279 m!4870877))

(assert (=> b!4275105 d!1261953))

(assert (=> b!4275104 d!1261921))

(assert (=> b!4275104 d!1261925))

(assert (=> bs!601831 d!1261915))

(declare-fun d!1261955 () Bool)

(declare-fun c!727961 () Bool)

(assert (=> d!1261955 (= c!727961 (is-Node!14310 (c!727905 x!742681)))))

(declare-fun e!2654279 () Bool)

(assert (=> d!1261955 (= (inv!62553 (c!727905 x!742681)) e!2654279)))

(declare-fun b!4275280 () Bool)

(assert (=> b!4275280 (= e!2654279 (inv!62559 (c!727905 x!742681)))))

(declare-fun b!4275281 () Bool)

(declare-fun e!2654280 () Bool)

(assert (=> b!4275281 (= e!2654279 e!2654280)))

(declare-fun res!1755700 () Bool)

(assert (=> b!4275281 (= res!1755700 (not (is-Leaf!22121 (c!727905 x!742681))))))

(assert (=> b!4275281 (=> res!1755700 e!2654280)))

(declare-fun b!4275282 () Bool)

(assert (=> b!4275282 (= e!2654280 (inv!62560 (c!727905 x!742681)))))

(assert (= (and d!1261955 c!727961) b!4275280))

(assert (= (and d!1261955 (not c!727961)) b!4275281))

(assert (= (and b!4275281 (not res!1755700)) b!4275282))

(declare-fun m!4870879 () Bool)

(assert (=> b!4275280 m!4870879))

(declare-fun m!4870881 () Bool)

(assert (=> b!4275282 m!4870881))

(assert (=> b!4275103 d!1261955))

(assert (=> b!4275119 d!1261921))

(assert (=> bs!601820 d!1261915))

(assert (=> bs!601820 d!1261933))

(assert (=> bs!601820 d!1261927))

(assert (=> bs!601820 d!1261917))

(assert (=> b!4275116 d!1261921))

(assert (=> b!4275116 d!1261925))

(assert (=> b!4275109 d!1261925))

(assert (=> bs!601834 d!1261919))

(assert (=> bs!601834 d!1261929))

(assert (=> b!4275112 d!1261923))

(assert (=> b!4275112 d!1261927))

(assert (=> b!4275122 d!1261923))

(assert (=> b!4275122 d!1261921))

(assert (=> bs!601840 d!1261919))

(assert (=> bs!601825 d!1261929))

(assert (=> b!4275115 d!1261927))

(assert (=> b!4275115 d!1261923))

(declare-fun tp!1308450 () Bool)

(declare-fun tp!1308449 () Bool)

(declare-fun b!4275289 () Bool)

(declare-fun e!2654285 () Bool)

(assert (=> b!4275289 (= e!2654285 (and (inv!62553 (left!35222 (c!727905 x!742683))) tp!1308449 (inv!62553 (right!35552 (c!727905 x!742683))) tp!1308450))))

(declare-fun b!4275290 () Bool)

(declare-fun inv!62561 (IArray!28625) Bool)

(assert (=> b!4275290 (= e!2654285 (inv!62561 (xs!17616 (c!727905 x!742683))))))

(assert (=> b!4275106 (= tp!1308435 (and (inv!62553 (c!727905 x!742683)) e!2654285))))

(assert (= (and b!4275106 (is-Node!14310 (c!727905 x!742683))) b!4275289))

(assert (= (and b!4275106 (is-Leaf!22121 (c!727905 x!742683))) b!4275290))

(declare-fun m!4870883 () Bool)

(assert (=> b!4275289 m!4870883))

(declare-fun m!4870885 () Bool)

(assert (=> b!4275289 m!4870885))

(declare-fun m!4870887 () Bool)

(assert (=> b!4275290 m!4870887))

(assert (=> b!4275106 m!4870755))

(declare-fun e!2654287 () Bool)

(declare-fun tp!1308452 () Bool)

(declare-fun tp!1308451 () Bool)

(declare-fun b!4275291 () Bool)

(assert (=> b!4275291 (= e!2654287 (and (inv!62553 (left!35222 (c!727905 x!742682))) tp!1308451 (inv!62553 (right!35552 (c!727905 x!742682))) tp!1308452))))

(declare-fun b!4275292 () Bool)

(assert (=> b!4275292 (= e!2654287 (inv!62561 (xs!17616 (c!727905 x!742682))))))

(assert (=> b!4275105 (= tp!1308434 (and (inv!62553 (c!727905 x!742682)) e!2654287))))

(assert (= (and b!4275105 (is-Node!14310 (c!727905 x!742682))) b!4275291))

(assert (= (and b!4275105 (is-Leaf!22121 (c!727905 x!742682))) b!4275292))

(declare-fun m!4870889 () Bool)

(assert (=> b!4275291 m!4870889))

(declare-fun m!4870891 () Bool)

(assert (=> b!4275291 m!4870891))

(declare-fun m!4870893 () Bool)

(assert (=> b!4275292 m!4870893))

(assert (=> b!4275105 m!4870753))

(declare-fun tp!1308454 () Bool)

(declare-fun e!2654289 () Bool)

(declare-fun b!4275293 () Bool)

(declare-fun tp!1308453 () Bool)

(assert (=> b!4275293 (= e!2654289 (and (inv!62553 (left!35222 (c!727905 x!742681))) tp!1308453 (inv!62553 (right!35552 (c!727905 x!742681))) tp!1308454))))

(declare-fun b!4275294 () Bool)

(assert (=> b!4275294 (= e!2654289 (inv!62561 (xs!17616 (c!727905 x!742681))))))

(assert (=> b!4275103 (= tp!1308433 (and (inv!62553 (c!727905 x!742681)) e!2654289))))

(assert (= (and b!4275103 (is-Node!14310 (c!727905 x!742681))) b!4275293))

(assert (= (and b!4275103 (is-Leaf!22121 (c!727905 x!742681))) b!4275294))

(declare-fun m!4870895 () Bool)

(assert (=> b!4275293 m!4870895))

(declare-fun m!4870897 () Bool)

(assert (=> b!4275293 m!4870897))

(declare-fun m!4870899 () Bool)

(assert (=> b!4275294 m!4870899))

(assert (=> b!4275103 m!4870729))

(push 1)

(assert (not b!4275282))

(assert (not b!4275279))

(assert (not b!4275105))

(assert (not b!4275259))

(assert (not d!1261927))

(assert (not b!4275245))

(assert (not b!4275293))

(assert (not d!1261917))

(assert (not b!4275247))

(assert (not d!1261949))

(assert (not b!4275233))

(assert (not b!4275231))

(assert (not d!1261941))

(assert (not b!4275244))

(assert (not b!4275250))

(assert (not b!4275276))

(assert (not b!4275289))

(assert (not d!1261947))

(assert (not b!4275103))

(assert (not d!1261923))

(assert (not d!1261929))

(assert (not d!1261931))

(assert (not b!4275230))

(assert (not b!4275294))

(assert (not d!1261925))

(assert (not d!1261945))

(assert (not d!1261937))

(assert (not b!4275235))

(assert (not b!4275106))

(assert (not d!1261921))

(assert (not d!1261919))

(assert (not b!4275274))

(assert (not b!4275292))

(assert (not d!1261939))

(assert (not d!1261943))

(assert (not b!4275280))

(assert (not b!4275237))

(assert (not b!4275255))

(assert (not b!4275234))

(assert (not b!4275290))

(assert (not d!1261915))

(assert (not b!4275277))

(assert (not b!4275291))

(assert (not b!4275242))

(assert (not b!4275232))

(assert (not b!4275241))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

