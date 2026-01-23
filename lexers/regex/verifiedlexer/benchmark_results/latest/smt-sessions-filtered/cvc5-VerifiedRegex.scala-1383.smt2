; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!73488 () Bool)

(assert start!73488)

(assert (=> start!73488 true))

(declare-fun b!821652 () Bool)

(assert (=> b!821652 true))

(assert (=> b!821652 true))

(declare-fun b!821653 () Bool)

(assert (=> b!821653 true))

(declare-fun b!821662 () Bool)

(declare-fun e!542872 () Bool)

(declare-datatypes ((List!8850 0))(
  ( (Nil!8834) (Cons!8834 (h!14235 (_ BitVec 16)) (t!93081 List!8850)) )
))
(declare-datatypes ((IArray!5909 0))(
  ( (IArray!5910 (innerList!3012 List!8850)) )
))
(declare-datatypes ((Conc!2952 0))(
  ( (Node!2952 (left!6575 Conc!2952) (right!6905 Conc!2952) (csize!6134 Int) (cheight!3163 Int)) (Leaf!4336 (xs!5641 IArray!5909) (csize!6135 Int)) (Empty!2952) )
))
(declare-datatypes ((BalanceConc!5918 0))(
  ( (BalanceConc!5919 (c!133193 Conc!2952)) )
))
(declare-fun x!177139 () BalanceConc!5918)

(declare-fun tp!256767 () Bool)

(declare-fun inv!11257 (Conc!2952) Bool)

(assert (=> b!821662 (= e!542872 (and (inv!11257 (c!133193 x!177139)) tp!256767))))

(declare-fun inst!700 () Bool)

(declare-datatypes ((CommentValueInjection!16 0))(
  ( (CommentValueInjection!17) )
))
(declare-fun thiss!4444 () CommentValueInjection!16)

(declare-fun inv!11258 (BalanceConc!5918) Bool)

(declare-fun list!3518 (BalanceConc!5918) List!8850)

(declare-datatypes ((TokenValue!1725 0))(
  ( (FloatLiteralValue!3450 (text!12520 List!8850)) (TokenValueExt!1724 (__x!7187 Int)) (Broken!8625 (value!53866 List!8850)) (Object!1740) (End!1725) (Def!1725) (Underscore!1725) (Match!1725) (Else!1725) (Error!1725) (Case!1725) (If!1725) (Extends!1725) (Abstract!1725) (Class!1725) (Val!1725) (DelimiterValue!3450 (del!1785 List!8850)) (KeywordValue!1731 (value!53867 List!8850)) (CommentValue!3450 (value!53868 List!8850)) (WhitespaceValue!3450 (value!53869 List!8850)) (IndentationValue!1725 (value!53870 List!8850)) (String!10400) (Int32!1725) (Broken!8626 (value!53871 List!8850)) (Boolean!1726) (Unit!13359) (OperatorValue!1728 (op!1785 List!8850)) (IdentifierValue!3450 (value!53872 List!8850)) (IdentifierValue!3451 (value!53873 List!8850)) (WhitespaceValue!3451 (value!53874 List!8850)) (True!3450) (False!3450) (Broken!8627 (value!53875 List!8850)) (Broken!8628 (value!53876 List!8850)) (True!3451) (RightBrace!1725) (RightBracket!1725) (Colon!1725) (Null!1725) (Comma!1725) (LeftBracket!1725) (False!3451) (LeftBrace!1725) (ImaginaryLiteralValue!1725 (text!12521 List!8850)) (StringLiteralValue!5175 (value!53877 List!8850)) (EOFValue!1725 (value!53878 List!8850)) (IdentValue!1725 (value!53879 List!8850)) (DelimiterValue!3451 (value!53880 List!8850)) (DedentValue!1725 (value!53881 List!8850)) (NewLineValue!1725 (value!53882 List!8850)) (IntegerValue!5175 (value!53883 (_ BitVec 32)) (text!12522 List!8850)) (IntegerValue!5176 (value!53884 Int) (text!12523 List!8850)) (Times!1725) (Or!1725) (Equal!1725) (Minus!1725) (Broken!8629 (value!53885 List!8850)) (And!1725) (Div!1725) (LessEqual!1725) (Mod!1725) (Concat!3755) (Not!1725) (Plus!1725) (SpaceValue!1725 (value!53886 List!8850)) (IntegerValue!5177 (value!53887 Int) (text!12524 List!8850)) (StringLiteralValue!5176 (text!12525 List!8850)) (FloatLiteralValue!3451 (text!12526 List!8850)) (BytesLiteralValue!1725 (value!53888 List!8850)) (CommentValue!3451 (value!53889 List!8850)) (StringLiteralValue!5177 (value!53890 List!8850)) (ErrorTokenValue!1725 (msg!1786 List!8850)) )
))
(declare-fun toCharacters!18 (CommentValueInjection!16 TokenValue!1725) BalanceConc!5918)

(declare-fun toValue!25 (CommentValueInjection!16 BalanceConc!5918) TokenValue!1725)

(assert (=> start!73488 (= inst!700 (=> (and (inv!11258 x!177139) e!542872) (= (list!3518 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139))) (list!3518 x!177139))))))

(assert (= start!73488 b!821662))

(declare-fun m!1062765 () Bool)

(assert (=> b!821662 m!1062765))

(declare-fun m!1062767 () Bool)

(assert (=> start!73488 m!1062767))

(declare-fun m!1062769 () Bool)

(assert (=> start!73488 m!1062769))

(declare-fun m!1062771 () Bool)

(assert (=> start!73488 m!1062771))

(assert (=> start!73488 m!1062767))

(assert (=> start!73488 m!1062771))

(declare-fun m!1062773 () Bool)

(assert (=> start!73488 m!1062773))

(declare-fun m!1062775 () Bool)

(assert (=> start!73488 m!1062775))

(declare-fun res!379142 () Bool)

(declare-fun e!542873 () Bool)

(assert (=> b!821653 (=> res!379142 e!542873)))

(declare-fun x!177140 () BalanceConc!5918)

(declare-fun x!177141 () BalanceConc!5918)

(assert (=> b!821653 (= res!379142 (not (= (list!3518 x!177140) (list!3518 x!177141))))))

(declare-fun e!542874 () Bool)

(declare-fun e!542875 () Bool)

(declare-fun inst!701 () Bool)

(assert (=> b!821653 (= inst!701 (=> (and (inv!11258 x!177140) e!542874 (inv!11258 x!177141) e!542875) e!542873))))

(declare-fun b!821663 () Bool)

(assert (=> b!821663 (= e!542873 (= (toValue!25 thiss!4444 x!177140) (toValue!25 thiss!4444 x!177141)))))

(declare-fun b!821664 () Bool)

(declare-fun tp!256769 () Bool)

(assert (=> b!821664 (= e!542874 (and (inv!11257 (c!133193 x!177140)) tp!256769))))

(declare-fun b!821665 () Bool)

(declare-fun tp!256768 () Bool)

(assert (=> b!821665 (= e!542875 (and (inv!11257 (c!133193 x!177141)) tp!256768))))

(assert (= (and b!821653 (not res!379142)) b!821663))

(assert (= b!821653 b!821664))

(assert (= b!821653 b!821665))

(declare-fun m!1062777 () Bool)

(assert (=> b!821653 m!1062777))

(declare-fun m!1062779 () Bool)

(assert (=> b!821653 m!1062779))

(declare-fun m!1062781 () Bool)

(assert (=> b!821653 m!1062781))

(declare-fun m!1062783 () Bool)

(assert (=> b!821653 m!1062783))

(declare-fun m!1062785 () Bool)

(assert (=> b!821663 m!1062785))

(declare-fun m!1062787 () Bool)

(assert (=> b!821663 m!1062787))

(declare-fun m!1062789 () Bool)

(assert (=> b!821664 m!1062789))

(declare-fun m!1062791 () Bool)

(assert (=> b!821665 m!1062791))

(declare-fun bs!229186 () Bool)

(declare-fun neg-inst!701 () Bool)

(declare-fun s!151437 () Bool)

(assert (= bs!229186 (and neg-inst!701 s!151437)))

(assert (=> bs!229186 (=> true (= (list!3518 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139))) (list!3518 x!177139)))))

(assert (=> m!1062771 m!1062767))

(assert (=> m!1062771 m!1062769))

(assert (=> m!1062771 m!1062775))

(assert (=> m!1062771 s!151437))

(assert (=> m!1062775 s!151437))

(declare-fun bs!229187 () Bool)

(assert (= bs!229187 (and neg-inst!701 start!73488)))

(assert (=> bs!229187 (= true inst!700)))

(declare-fun bs!229188 () Bool)

(declare-fun neg-inst!700 () Bool)

(declare-fun s!151439 () Bool)

(assert (= bs!229188 (and neg-inst!700 s!151439)))

(declare-fun res!379143 () Bool)

(declare-fun e!542876 () Bool)

(assert (=> bs!229188 (=> res!379143 e!542876)))

(assert (=> bs!229188 (= res!379143 (not (= (list!3518 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139))) (list!3518 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139))))))))

(assert (=> bs!229188 (=> true e!542876)))

(declare-fun b!821666 () Bool)

(assert (=> b!821666 (= e!542876 (= (toValue!25 thiss!4444 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139))) (toValue!25 thiss!4444 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139)))))))

(assert (= (and bs!229188 (not res!379143)) b!821666))

(assert (=> m!1062769 s!151439))

(assert (=> m!1062769 s!151439))

(declare-fun bs!229189 () Bool)

(declare-fun s!151441 () Bool)

(assert (= bs!229189 (and neg-inst!700 s!151441)))

(declare-fun res!379144 () Bool)

(declare-fun e!542877 () Bool)

(assert (=> bs!229189 (=> res!379144 e!542877)))

(assert (=> bs!229189 (= res!379144 (not (= (list!3518 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139))) (list!3518 x!177139))))))

(assert (=> bs!229189 (=> true e!542877)))

(declare-fun b!821667 () Bool)

(assert (=> b!821667 (= e!542877 (= (toValue!25 thiss!4444 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139))) (toValue!25 thiss!4444 x!177139)))))

(assert (= (and bs!229189 (not res!379144)) b!821667))

(declare-fun bs!229190 () Bool)

(assert (= bs!229190 (and m!1062771 m!1062769)))

(assert (=> bs!229190 m!1062769))

(assert (=> bs!229190 m!1062775))

(assert (=> bs!229190 s!151441))

(declare-fun bs!229191 () Bool)

(declare-fun s!151443 () Bool)

(assert (= bs!229191 (and neg-inst!700 s!151443)))

(declare-fun res!379145 () Bool)

(declare-fun e!542878 () Bool)

(assert (=> bs!229191 (=> res!379145 e!542878)))

(assert (=> bs!229191 (= res!379145 (not (= (list!3518 x!177139) (list!3518 x!177139))))))

(assert (=> bs!229191 (=> true e!542878)))

(declare-fun b!821668 () Bool)

(assert (=> b!821668 (= e!542878 (= (toValue!25 thiss!4444 x!177139) (toValue!25 thiss!4444 x!177139)))))

(assert (= (and bs!229191 (not res!379145)) b!821668))

(assert (=> m!1062771 m!1062775))

(assert (=> m!1062771 m!1062775))

(assert (=> m!1062771 s!151443))

(declare-fun bs!229192 () Bool)

(declare-fun s!151445 () Bool)

(assert (= bs!229192 (and neg-inst!700 s!151445)))

(declare-fun res!379146 () Bool)

(declare-fun e!542879 () Bool)

(assert (=> bs!229192 (=> res!379146 e!542879)))

(assert (=> bs!229192 (= res!379146 (not (= (list!3518 x!177139) (list!3518 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139))))))))

(assert (=> bs!229192 (=> true e!542879)))

(declare-fun b!821669 () Bool)

(assert (=> b!821669 (= e!542879 (= (toValue!25 thiss!4444 x!177139) (toValue!25 thiss!4444 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139)))))))

(assert (= (and bs!229192 (not res!379146)) b!821669))

(assert (=> bs!229190 m!1062775))

(assert (=> bs!229190 m!1062769))

(assert (=> bs!229190 s!151445))

(assert (=> m!1062771 s!151443))

(declare-fun bs!229193 () Bool)

(declare-fun s!151447 () Bool)

(assert (= bs!229193 (and neg-inst!700 s!151447)))

(declare-fun res!379147 () Bool)

(declare-fun e!542880 () Bool)

(assert (=> bs!229193 (=> res!379147 e!542880)))

(assert (=> bs!229193 (= res!379147 (not (= (list!3518 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139))) (list!3518 x!177140))))))

(assert (=> bs!229193 (=> true e!542880)))

(declare-fun b!821670 () Bool)

(assert (=> b!821670 (= e!542880 (= (toValue!25 thiss!4444 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139))) (toValue!25 thiss!4444 x!177140)))))

(assert (= (and bs!229193 (not res!379147)) b!821670))

(declare-fun bs!229194 () Bool)

(assert (= bs!229194 (and m!1062785 m!1062769)))

(assert (=> bs!229194 m!1062769))

(assert (=> bs!229194 m!1062777))

(assert (=> bs!229194 s!151447))

(declare-fun bs!229195 () Bool)

(declare-fun s!151449 () Bool)

(assert (= bs!229195 (and neg-inst!700 s!151449)))

(declare-fun res!379148 () Bool)

(declare-fun e!542881 () Bool)

(assert (=> bs!229195 (=> res!379148 e!542881)))

(assert (=> bs!229195 (= res!379148 (not (= (list!3518 x!177139) (list!3518 x!177140))))))

(assert (=> bs!229195 (=> true e!542881)))

(declare-fun b!821671 () Bool)

(assert (=> b!821671 (= e!542881 (= (toValue!25 thiss!4444 x!177139) (toValue!25 thiss!4444 x!177140)))))

(assert (= (and bs!229195 (not res!379148)) b!821671))

(declare-fun bs!229196 () Bool)

(assert (= bs!229196 (and m!1062785 m!1062771)))

(assert (=> bs!229196 m!1062775))

(assert (=> bs!229196 m!1062777))

(assert (=> bs!229196 s!151449))

(declare-fun bs!229197 () Bool)

(declare-fun s!151451 () Bool)

(assert (= bs!229197 (and neg-inst!700 s!151451)))

(declare-fun res!379149 () Bool)

(declare-fun e!542882 () Bool)

(assert (=> bs!229197 (=> res!379149 e!542882)))

(assert (=> bs!229197 (= res!379149 (not (= (list!3518 x!177140) (list!3518 x!177140))))))

(assert (=> bs!229197 (=> true e!542882)))

(declare-fun b!821672 () Bool)

(assert (=> b!821672 (= e!542882 (= (toValue!25 thiss!4444 x!177140) (toValue!25 thiss!4444 x!177140)))))

(assert (= (and bs!229197 (not res!379149)) b!821672))

(assert (=> m!1062785 m!1062777))

(assert (=> m!1062785 m!1062777))

(assert (=> m!1062785 s!151451))

(declare-fun bs!229198 () Bool)

(declare-fun s!151453 () Bool)

(assert (= bs!229198 (and neg-inst!700 s!151453)))

(declare-fun res!379150 () Bool)

(declare-fun e!542883 () Bool)

(assert (=> bs!229198 (=> res!379150 e!542883)))

(assert (=> bs!229198 (= res!379150 (not (= (list!3518 x!177140) (list!3518 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139))))))))

(assert (=> bs!229198 (=> true e!542883)))

(declare-fun b!821673 () Bool)

(assert (=> b!821673 (= e!542883 (= (toValue!25 thiss!4444 x!177140) (toValue!25 thiss!4444 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139)))))))

(assert (= (and bs!229198 (not res!379150)) b!821673))

(assert (=> bs!229194 m!1062777))

(assert (=> bs!229194 m!1062769))

(assert (=> bs!229194 s!151453))

(declare-fun bs!229199 () Bool)

(declare-fun s!151455 () Bool)

(assert (= bs!229199 (and neg-inst!700 s!151455)))

(declare-fun res!379151 () Bool)

(declare-fun e!542884 () Bool)

(assert (=> bs!229199 (=> res!379151 e!542884)))

(assert (=> bs!229199 (= res!379151 (not (= (list!3518 x!177140) (list!3518 x!177139))))))

(assert (=> bs!229199 (=> true e!542884)))

(declare-fun b!821674 () Bool)

(assert (=> b!821674 (= e!542884 (= (toValue!25 thiss!4444 x!177140) (toValue!25 thiss!4444 x!177139)))))

(assert (= (and bs!229199 (not res!379151)) b!821674))

(assert (=> bs!229196 m!1062777))

(assert (=> bs!229196 m!1062775))

(assert (=> bs!229196 s!151455))

(assert (=> m!1062785 s!151451))

(declare-fun bs!229200 () Bool)

(assert (= bs!229200 (and m!1062775 m!1062785)))

(assert (=> bs!229200 s!151455))

(declare-fun bs!229201 () Bool)

(assert (= bs!229201 (and m!1062775 m!1062769)))

(assert (=> bs!229201 s!151441))

(declare-fun bs!229202 () Bool)

(assert (= bs!229202 (and m!1062775 m!1062771)))

(assert (=> bs!229202 s!151443))

(assert (=> m!1062775 s!151443))

(assert (=> bs!229200 s!151449))

(assert (=> bs!229201 s!151445))

(assert (=> bs!229202 s!151443))

(assert (=> m!1062775 s!151443))

(declare-fun bs!229203 () Bool)

(assert (= bs!229203 (and m!1062777 m!1062785)))

(assert (=> bs!229203 s!151451))

(declare-fun bs!229204 () Bool)

(assert (= bs!229204 (and m!1062777 m!1062769)))

(assert (=> bs!229204 s!151447))

(declare-fun bs!229205 () Bool)

(assert (= bs!229205 (and m!1062777 m!1062771 m!1062775)))

(assert (=> bs!229205 s!151449))

(assert (=> m!1062777 s!151451))

(assert (=> bs!229203 s!151451))

(assert (=> bs!229204 s!151453))

(assert (=> bs!229205 s!151455))

(assert (=> m!1062777 s!151451))

(declare-fun bs!229206 () Bool)

(declare-fun s!151457 () Bool)

(assert (= bs!229206 (and neg-inst!700 s!151457)))

(declare-fun res!379152 () Bool)

(declare-fun e!542885 () Bool)

(assert (=> bs!229206 (=> res!379152 e!542885)))

(assert (=> bs!229206 (= res!379152 (not (= (list!3518 x!177140) (list!3518 x!177141))))))

(assert (=> bs!229206 (=> true e!542885)))

(declare-fun b!821675 () Bool)

(assert (=> b!821675 (= e!542885 (= (toValue!25 thiss!4444 x!177140) (toValue!25 thiss!4444 x!177141)))))

(assert (= (and bs!229206 (not res!379152)) b!821675))

(declare-fun bs!229207 () Bool)

(assert (= bs!229207 (and m!1062779 m!1062785 m!1062777)))

(assert (=> bs!229207 m!1062777))

(assert (=> bs!229207 m!1062779))

(assert (=> bs!229207 s!151457))

(declare-fun bs!229208 () Bool)

(declare-fun s!151459 () Bool)

(assert (= bs!229208 (and neg-inst!700 s!151459)))

(declare-fun res!379153 () Bool)

(declare-fun e!542886 () Bool)

(assert (=> bs!229208 (=> res!379153 e!542886)))

(assert (=> bs!229208 (= res!379153 (not (= (list!3518 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139))) (list!3518 x!177141))))))

(assert (=> bs!229208 (=> true e!542886)))

(declare-fun b!821676 () Bool)

(assert (=> b!821676 (= e!542886 (= (toValue!25 thiss!4444 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139))) (toValue!25 thiss!4444 x!177141)))))

(assert (= (and bs!229208 (not res!379153)) b!821676))

(declare-fun bs!229209 () Bool)

(assert (= bs!229209 (and m!1062779 m!1062769)))

(assert (=> bs!229209 m!1062769))

(assert (=> bs!229209 m!1062779))

(assert (=> bs!229209 s!151459))

(declare-fun bs!229210 () Bool)

(declare-fun s!151461 () Bool)

(assert (= bs!229210 (and neg-inst!700 s!151461)))

(declare-fun res!379154 () Bool)

(declare-fun e!542887 () Bool)

(assert (=> bs!229210 (=> res!379154 e!542887)))

(assert (=> bs!229210 (= res!379154 (not (= (list!3518 x!177139) (list!3518 x!177141))))))

(assert (=> bs!229210 (=> true e!542887)))

(declare-fun b!821677 () Bool)

(assert (=> b!821677 (= e!542887 (= (toValue!25 thiss!4444 x!177139) (toValue!25 thiss!4444 x!177141)))))

(assert (= (and bs!229210 (not res!379154)) b!821677))

(declare-fun bs!229211 () Bool)

(assert (= bs!229211 (and m!1062779 m!1062771 m!1062775)))

(assert (=> bs!229211 m!1062775))

(assert (=> bs!229211 m!1062779))

(assert (=> bs!229211 s!151461))

(declare-fun bs!229212 () Bool)

(declare-fun s!151463 () Bool)

(assert (= bs!229212 (and neg-inst!700 s!151463)))

(declare-fun res!379155 () Bool)

(declare-fun e!542888 () Bool)

(assert (=> bs!229212 (=> res!379155 e!542888)))

(assert (=> bs!229212 (= res!379155 (not (= (list!3518 x!177141) (list!3518 x!177141))))))

(assert (=> bs!229212 (=> true e!542888)))

(declare-fun b!821678 () Bool)

(assert (=> b!821678 (= e!542888 (= (toValue!25 thiss!4444 x!177141) (toValue!25 thiss!4444 x!177141)))))

(assert (= (and bs!229212 (not res!379155)) b!821678))

(assert (=> m!1062779 s!151463))

(declare-fun bs!229213 () Bool)

(declare-fun s!151465 () Bool)

(assert (= bs!229213 (and neg-inst!700 s!151465)))

(declare-fun res!379156 () Bool)

(declare-fun e!542889 () Bool)

(assert (=> bs!229213 (=> res!379156 e!542889)))

(assert (=> bs!229213 (= res!379156 (not (= (list!3518 x!177141) (list!3518 x!177140))))))

(assert (=> bs!229213 (=> true e!542889)))

(declare-fun b!821679 () Bool)

(assert (=> b!821679 (= e!542889 (= (toValue!25 thiss!4444 x!177141) (toValue!25 thiss!4444 x!177140)))))

(assert (= (and bs!229213 (not res!379156)) b!821679))

(assert (=> bs!229207 m!1062779))

(assert (=> bs!229207 m!1062777))

(assert (=> bs!229207 s!151465))

(declare-fun bs!229214 () Bool)

(declare-fun s!151467 () Bool)

(assert (= bs!229214 (and neg-inst!700 s!151467)))

(declare-fun res!379157 () Bool)

(declare-fun e!542890 () Bool)

(assert (=> bs!229214 (=> res!379157 e!542890)))

(assert (=> bs!229214 (= res!379157 (not (= (list!3518 x!177141) (list!3518 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139))))))))

(assert (=> bs!229214 (=> true e!542890)))

(declare-fun b!821680 () Bool)

(assert (=> b!821680 (= e!542890 (= (toValue!25 thiss!4444 x!177141) (toValue!25 thiss!4444 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139)))))))

(assert (= (and bs!229214 (not res!379157)) b!821680))

(assert (=> bs!229209 m!1062779))

(assert (=> bs!229209 m!1062769))

(assert (=> bs!229209 s!151467))

(declare-fun bs!229215 () Bool)

(declare-fun s!151469 () Bool)

(assert (= bs!229215 (and neg-inst!700 s!151469)))

(declare-fun res!379158 () Bool)

(declare-fun e!542891 () Bool)

(assert (=> bs!229215 (=> res!379158 e!542891)))

(assert (=> bs!229215 (= res!379158 (not (= (list!3518 x!177141) (list!3518 x!177139))))))

(assert (=> bs!229215 (=> true e!542891)))

(declare-fun b!821681 () Bool)

(assert (=> b!821681 (= e!542891 (= (toValue!25 thiss!4444 x!177141) (toValue!25 thiss!4444 x!177139)))))

(assert (= (and bs!229215 (not res!379158)) b!821681))

(assert (=> bs!229211 m!1062779))

(assert (=> bs!229211 m!1062775))

(assert (=> bs!229211 s!151469))

(assert (=> m!1062779 s!151463))

(declare-fun bs!229216 () Bool)

(assert (= bs!229216 (and m!1062787 m!1062769)))

(assert (=> bs!229216 s!151459))

(declare-fun bs!229217 () Bool)

(assert (= bs!229217 (and m!1062787 m!1062785 m!1062777)))

(assert (=> bs!229217 s!151457))

(declare-fun bs!229218 () Bool)

(assert (= bs!229218 (and m!1062787 m!1062771 m!1062775)))

(assert (=> bs!229218 s!151461))

(assert (=> m!1062787 s!151463))

(declare-fun bs!229219 () Bool)

(assert (= bs!229219 (and m!1062787 m!1062779)))

(assert (=> bs!229219 s!151463))

(assert (=> bs!229216 s!151467))

(assert (=> bs!229219 s!151463))

(assert (=> bs!229217 s!151465))

(assert (=> m!1062787 s!151463))

(assert (=> bs!229218 s!151469))

(declare-fun bs!229220 () Bool)

(assert (= bs!229220 (and neg-inst!700 b!821653)))

(assert (=> bs!229220 (= true inst!701)))

(declare-fun res!379140 () Bool)

(declare-fun e!542871 () Bool)

(assert (=> start!73488 (=> res!379140 e!542871)))

(declare-fun lambda!24687 () Int)

(declare-fun Forall!394 (Int) Bool)

(assert (=> start!73488 (= res!379140 (not (Forall!394 lambda!24687)))))

(assert (=> start!73488 (= (Forall!394 lambda!24687) inst!700)))

(assert (=> start!73488 (not e!542871)))

(assert (=> start!73488 true))

(declare-fun e!542870 () Bool)

(assert (=> b!821652 (= e!542871 e!542870)))

(declare-fun res!379141 () Bool)

(assert (=> b!821652 (=> res!379141 e!542870)))

(declare-fun lambda!24688 () Int)

(declare-fun lambda!24689 () Int)

(declare-fun semiInverseModEq!637 (Int Int) Bool)

(assert (=> b!821652 (= res!379141 (not (semiInverseModEq!637 lambda!24688 lambda!24689)))))

(assert (=> b!821652 (= (semiInverseModEq!637 lambda!24688 lambda!24689) (Forall!394 lambda!24687))))

(declare-fun lambda!24690 () Int)

(declare-fun Forall2!304 (Int) Bool)

(assert (=> b!821653 (= e!542870 (Forall2!304 lambda!24690))))

(assert (=> b!821653 (= (Forall2!304 lambda!24690) inst!701)))

(assert (= neg-inst!701 inst!700))

(assert (= (and start!73488 (not res!379140)) b!821652))

(assert (= (and b!821652 (not res!379141)) b!821653))

(assert (= neg-inst!700 inst!701))

(declare-fun m!1062793 () Bool)

(assert (=> start!73488 m!1062793))

(assert (=> start!73488 m!1062793))

(declare-fun m!1062795 () Bool)

(assert (=> b!821652 m!1062795))

(assert (=> b!821652 m!1062795))

(assert (=> b!821652 m!1062793))

(declare-fun m!1062797 () Bool)

(assert (=> b!821653 m!1062797))

(assert (=> b!821653 m!1062797))

(push 1)

(assert (not bs!229192))

(assert (not b!821679))

(assert (not b!821681))

(assert (not b!821677))

(assert (not bs!229193))

(assert (not bs!229215))

(assert (not b!821664))

(assert (not bs!229199))

(assert (not b!821672))

(assert (not bs!229210))

(assert (not bs!229198))

(assert (not bs!229197))

(assert (not b!821680))

(assert (not b!821673))

(assert (not b!821675))

(assert (not b!821666))

(assert (not b!821678))

(assert (not bs!229214))

(assert (not b!821653))

(assert (not bs!229206))

(assert (not bs!229195))

(assert (not b!821671))

(assert (not bs!229188))

(assert (not b!821674))

(assert (not b!821670))

(assert (not bs!229213))

(assert (not bs!229208))

(assert (not bs!229212))

(assert (not bs!229189))

(assert (not b!821667))

(assert (not b!821668))

(assert (not b!821665))

(assert (not bs!229186))

(assert (not b!821652))

(assert (not start!73488))

(assert (not b!821663))

(assert (not bs!229191))

(assert (not b!821676))

(assert (not b!821662))

(assert (not b!821669))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!258768 () Bool)

(declare-fun list!3520 (Conc!2952) List!8850)

(assert (=> d!258768 (= (list!3518 x!177140) (list!3520 (c!133193 x!177140)))))

(declare-fun bs!229256 () Bool)

(assert (= bs!229256 d!258768))

(declare-fun m!1062833 () Bool)

(assert (=> bs!229256 m!1062833))

(assert (=> bs!229197 d!258768))

(declare-fun d!258770 () Bool)

(assert (=> d!258770 (= (list!3518 x!177141) (list!3520 (c!133193 x!177141)))))

(declare-fun bs!229257 () Bool)

(assert (= bs!229257 d!258770))

(declare-fun m!1062835 () Bool)

(assert (=> bs!229257 m!1062835))

(assert (=> bs!229215 d!258770))

(declare-fun d!258772 () Bool)

(assert (=> d!258772 (= (list!3518 x!177139) (list!3520 (c!133193 x!177139)))))

(declare-fun bs!229258 () Bool)

(assert (= bs!229258 d!258772))

(declare-fun m!1062837 () Bool)

(assert (=> bs!229258 m!1062837))

(assert (=> bs!229215 d!258772))

(declare-fun d!258774 () Bool)

(declare-fun efficientList!143 (BalanceConc!5918) List!8850)

(assert (=> d!258774 (= (toValue!25 thiss!4444 x!177139) (CommentValue!3451 (efficientList!143 x!177139)))))

(declare-fun bs!229259 () Bool)

(assert (= bs!229259 d!258774))

(declare-fun m!1062839 () Bool)

(assert (=> bs!229259 m!1062839))

(assert (=> b!821668 d!258774))

(assert (=> b!821677 d!258774))

(declare-fun d!258778 () Bool)

(assert (=> d!258778 (= (toValue!25 thiss!4444 x!177141) (CommentValue!3451 (efficientList!143 x!177141)))))

(declare-fun bs!229260 () Bool)

(assert (= bs!229260 d!258778))

(declare-fun m!1062841 () Bool)

(assert (=> bs!229260 m!1062841))

(assert (=> b!821677 d!258778))

(assert (=> b!821671 d!258774))

(declare-fun d!258780 () Bool)

(assert (=> d!258780 (= (toValue!25 thiss!4444 x!177140) (CommentValue!3451 (efficientList!143 x!177140)))))

(declare-fun bs!229261 () Bool)

(assert (= bs!229261 d!258780))

(declare-fun m!1062843 () Bool)

(assert (=> bs!229261 m!1062843))

(assert (=> b!821671 d!258780))

(assert (=> b!821680 d!258778))

(declare-fun d!258782 () Bool)

(assert (=> d!258782 (= (toValue!25 thiss!4444 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139))) (CommentValue!3451 (efficientList!143 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139)))))))

(declare-fun bs!229262 () Bool)

(assert (= bs!229262 d!258782))

(assert (=> bs!229262 m!1062767))

(declare-fun m!1062845 () Bool)

(assert (=> bs!229262 m!1062845))

(assert (=> b!821680 d!258782))

(assert (=> bs!229210 d!258772))

(assert (=> bs!229210 d!258770))

(assert (=> bs!229191 d!258772))

(assert (=> b!821669 d!258774))

(assert (=> b!821669 d!258782))

(assert (=> b!821678 d!258778))

(declare-fun d!258784 () Bool)

(assert (=> d!258784 (= (list!3518 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139))) (list!3520 (c!133193 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139)))))))

(declare-fun bs!229263 () Bool)

(assert (= bs!229263 d!258784))

(declare-fun m!1062847 () Bool)

(assert (=> bs!229263 m!1062847))

(assert (=> bs!229188 d!258784))

(assert (=> b!821672 d!258780))

(assert (=> b!821681 d!258778))

(assert (=> b!821681 d!258774))

(assert (=> bs!229206 d!258768))

(assert (=> bs!229206 d!258770))

(assert (=> bs!229212 d!258770))

(assert (=> bs!229192 d!258772))

(assert (=> bs!229192 d!258784))

(assert (=> b!821670 d!258782))

(assert (=> b!821670 d!258780))

(assert (=> bs!229208 d!258784))

(assert (=> bs!229208 d!258770))

(assert (=> bs!229189 d!258784))

(assert (=> bs!229189 d!258772))

(assert (=> b!821673 d!258780))

(assert (=> b!821673 d!258782))

(assert (=> bs!229213 d!258770))

(assert (=> bs!229213 d!258768))

(assert (=> bs!229193 d!258784))

(assert (=> bs!229193 d!258768))

(assert (=> b!821666 d!258782))

(assert (=> b!821675 d!258780))

(assert (=> b!821675 d!258778))

(assert (=> bs!229198 d!258768))

(assert (=> bs!229198 d!258784))

(assert (=> b!821674 d!258780))

(assert (=> b!821674 d!258774))

(assert (=> bs!229195 d!258772))

(assert (=> bs!229195 d!258768))

(assert (=> bs!229214 d!258770))

(assert (=> bs!229214 d!258784))

(assert (=> b!821676 d!258782))

(assert (=> b!821676 d!258778))

(assert (=> b!821667 d!258782))

(assert (=> b!821667 d!258774))

(assert (=> b!821679 d!258778))

(assert (=> b!821679 d!258780))

(assert (=> bs!229199 d!258768))

(assert (=> bs!229199 d!258772))

(declare-fun bs!229264 () Bool)

(assert (= bs!229264 (and m!1062769 b!821666)))

(declare-fun m!1062849 () Bool)

(assert (=> bs!229264 m!1062849))

(assert (=> bs!229264 m!1062849))

(declare-fun bs!229265 () Bool)

(assert (= bs!229265 (and m!1062771 m!1062769 b!821667)))

(assert (=> bs!229265 m!1062849))

(assert (=> bs!229265 m!1062771))

(declare-fun bs!229266 () Bool)

(assert (= bs!229266 (and m!1062771 b!821668)))

(assert (=> bs!229266 m!1062771))

(assert (=> bs!229266 m!1062771))

(declare-fun bs!229267 () Bool)

(assert (= bs!229267 (and m!1062771 m!1062769 b!821669)))

(assert (=> bs!229267 m!1062771))

(assert (=> bs!229267 m!1062849))

(declare-fun bs!229268 () Bool)

(assert (= bs!229268 (and m!1062785 m!1062769 b!821670)))

(assert (=> bs!229268 m!1062849))

(assert (=> bs!229268 m!1062785))

(declare-fun bs!229269 () Bool)

(assert (= bs!229269 (and m!1062785 m!1062771 b!821671)))

(assert (=> bs!229269 m!1062771))

(assert (=> bs!229269 m!1062785))

(declare-fun bs!229270 () Bool)

(assert (= bs!229270 (and m!1062785 b!821672)))

(assert (=> bs!229270 m!1062785))

(assert (=> bs!229270 m!1062785))

(declare-fun bs!229271 () Bool)

(assert (= bs!229271 (and m!1062785 m!1062769 b!821673)))

(assert (=> bs!229271 m!1062785))

(assert (=> bs!229271 m!1062849))

(declare-fun bs!229272 () Bool)

(assert (= bs!229272 (and m!1062785 m!1062771 b!821674)))

(assert (=> bs!229272 m!1062785))

(assert (=> bs!229272 m!1062771))

(declare-fun bs!229273 () Bool)

(assert (= bs!229273 (and m!1062779 m!1062785 m!1062777 b!821675)))

(assert (=> bs!229273 m!1062785))

(assert (=> bs!229273 m!1062787))

(declare-fun bs!229274 () Bool)

(assert (= bs!229274 (and m!1062779 m!1062769 b!821676)))

(assert (=> bs!229274 m!1062849))

(assert (=> bs!229274 m!1062787))

(declare-fun bs!229275 () Bool)

(assert (= bs!229275 (and m!1062779 m!1062771 m!1062775 b!821677)))

(assert (=> bs!229275 m!1062771))

(assert (=> bs!229275 m!1062787))

(declare-fun bs!229276 () Bool)

(assert (= bs!229276 (and m!1062779 b!821678)))

(assert (=> bs!229276 m!1062787))

(assert (=> bs!229276 m!1062787))

(declare-fun bs!229277 () Bool)

(assert (= bs!229277 (and m!1062779 m!1062785 m!1062777 b!821679)))

(assert (=> bs!229277 m!1062787))

(assert (=> bs!229277 m!1062785))

(declare-fun bs!229278 () Bool)

(assert (= bs!229278 (and m!1062779 m!1062769 b!821680)))

(assert (=> bs!229278 m!1062787))

(assert (=> bs!229278 m!1062849))

(declare-fun bs!229279 () Bool)

(assert (= bs!229279 (and m!1062779 m!1062771 m!1062775 b!821681)))

(assert (=> bs!229279 m!1062787))

(assert (=> bs!229279 m!1062771))

(push 1)

(assert (not b!821653))

(assert (not d!258774))

(assert (not d!258768))

(assert (not d!258770))

(assert (not d!258772))

(assert (not b!821664))

(assert (not d!258782))

(assert (not d!258778))

(assert (not d!258780))

(assert (not b!821665))

(assert (not bs!229186))

(assert (not b!821652))

(assert (not start!73488))

(assert (not b!821663))

(assert (not d!258784))

(assert (not b!821662))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!821740 () Bool)

(declare-fun e!542937 () List!8850)

(declare-fun list!3522 (IArray!5909) List!8850)

(assert (=> b!821740 (= e!542937 (list!3522 (xs!5641 (c!133193 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139))))))))

(declare-fun b!821739 () Bool)

(declare-fun e!542936 () List!8850)

(assert (=> b!821739 (= e!542936 e!542937)))

(declare-fun c!133200 () Bool)

(assert (=> b!821739 (= c!133200 (is-Leaf!4336 (c!133193 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139)))))))

(declare-fun b!821741 () Bool)

(declare-fun ++!2266 (List!8850 List!8850) List!8850)

(assert (=> b!821741 (= e!542937 (++!2266 (list!3520 (left!6575 (c!133193 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139))))) (list!3520 (right!6905 (c!133193 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139)))))))))

(declare-fun d!258800 () Bool)

(declare-fun c!133199 () Bool)

(assert (=> d!258800 (= c!133199 (is-Empty!2952 (c!133193 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139)))))))

(assert (=> d!258800 (= (list!3520 (c!133193 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139)))) e!542936)))

(declare-fun b!821738 () Bool)

(assert (=> b!821738 (= e!542936 Nil!8834)))

(assert (= (and d!258800 c!133199) b!821738))

(assert (= (and d!258800 (not c!133199)) b!821739))

(assert (= (and b!821739 c!133200) b!821740))

(assert (= (and b!821739 (not c!133200)) b!821741))

(declare-fun m!1062869 () Bool)

(assert (=> b!821740 m!1062869))

(declare-fun m!1062871 () Bool)

(assert (=> b!821741 m!1062871))

(declare-fun m!1062873 () Bool)

(assert (=> b!821741 m!1062873))

(assert (=> b!821741 m!1062871))

(assert (=> b!821741 m!1062873))

(declare-fun m!1062875 () Bool)

(assert (=> b!821741 m!1062875))

(assert (=> d!258784 d!258800))

(declare-fun d!258802 () Bool)

(declare-fun lt!317276 () List!8850)

(assert (=> d!258802 (= lt!317276 (list!3518 x!177141))))

(declare-fun efficientList!145 (Conc!2952 List!8850) List!8850)

(declare-fun efficientList$default$2!49 (Conc!2952) List!8850)

(assert (=> d!258802 (= lt!317276 (efficientList!145 (c!133193 x!177141) (efficientList$default$2!49 (c!133193 x!177141))))))

(assert (=> d!258802 (= (efficientList!143 x!177141) lt!317276)))

(declare-fun bs!229304 () Bool)

(assert (= bs!229304 d!258802))

(assert (=> bs!229304 m!1062779))

(declare-fun m!1062877 () Bool)

(assert (=> bs!229304 m!1062877))

(assert (=> bs!229304 m!1062877))

(declare-fun m!1062879 () Bool)

(assert (=> bs!229304 m!1062879))

(assert (=> d!258778 d!258802))

(declare-fun b!821744 () Bool)

(declare-fun e!542939 () List!8850)

(assert (=> b!821744 (= e!542939 (list!3522 (xs!5641 (c!133193 x!177141))))))

(declare-fun b!821743 () Bool)

(declare-fun e!542938 () List!8850)

(assert (=> b!821743 (= e!542938 e!542939)))

(declare-fun c!133202 () Bool)

(assert (=> b!821743 (= c!133202 (is-Leaf!4336 (c!133193 x!177141)))))

(declare-fun b!821745 () Bool)

(assert (=> b!821745 (= e!542939 (++!2266 (list!3520 (left!6575 (c!133193 x!177141))) (list!3520 (right!6905 (c!133193 x!177141)))))))

(declare-fun d!258804 () Bool)

(declare-fun c!133201 () Bool)

(assert (=> d!258804 (= c!133201 (is-Empty!2952 (c!133193 x!177141)))))

(assert (=> d!258804 (= (list!3520 (c!133193 x!177141)) e!542938)))

(declare-fun b!821742 () Bool)

(assert (=> b!821742 (= e!542938 Nil!8834)))

(assert (= (and d!258804 c!133201) b!821742))

(assert (= (and d!258804 (not c!133201)) b!821743))

(assert (= (and b!821743 c!133202) b!821744))

(assert (= (and b!821743 (not c!133202)) b!821745))

(declare-fun m!1062881 () Bool)

(assert (=> b!821744 m!1062881))

(declare-fun m!1062883 () Bool)

(assert (=> b!821745 m!1062883))

(declare-fun m!1062885 () Bool)

(assert (=> b!821745 m!1062885))

(assert (=> b!821745 m!1062883))

(assert (=> b!821745 m!1062885))

(declare-fun m!1062887 () Bool)

(assert (=> b!821745 m!1062887))

(assert (=> d!258770 d!258804))

(declare-fun b!821748 () Bool)

(declare-fun e!542941 () List!8850)

(assert (=> b!821748 (= e!542941 (list!3522 (xs!5641 (c!133193 x!177139))))))

(declare-fun b!821747 () Bool)

(declare-fun e!542940 () List!8850)

(assert (=> b!821747 (= e!542940 e!542941)))

(declare-fun c!133204 () Bool)

(assert (=> b!821747 (= c!133204 (is-Leaf!4336 (c!133193 x!177139)))))

(declare-fun b!821749 () Bool)

(assert (=> b!821749 (= e!542941 (++!2266 (list!3520 (left!6575 (c!133193 x!177139))) (list!3520 (right!6905 (c!133193 x!177139)))))))

(declare-fun d!258806 () Bool)

(declare-fun c!133203 () Bool)

(assert (=> d!258806 (= c!133203 (is-Empty!2952 (c!133193 x!177139)))))

(assert (=> d!258806 (= (list!3520 (c!133193 x!177139)) e!542940)))

(declare-fun b!821746 () Bool)

(assert (=> b!821746 (= e!542940 Nil!8834)))

(assert (= (and d!258806 c!133203) b!821746))

(assert (= (and d!258806 (not c!133203)) b!821747))

(assert (= (and b!821747 c!133204) b!821748))

(assert (= (and b!821747 (not c!133204)) b!821749))

(declare-fun m!1062889 () Bool)

(assert (=> b!821748 m!1062889))

(declare-fun m!1062891 () Bool)

(assert (=> b!821749 m!1062891))

(declare-fun m!1062893 () Bool)

(assert (=> b!821749 m!1062893))

(assert (=> b!821749 m!1062891))

(assert (=> b!821749 m!1062893))

(declare-fun m!1062895 () Bool)

(assert (=> b!821749 m!1062895))

(assert (=> d!258772 d!258806))

(declare-fun d!258808 () Bool)

(declare-fun lt!317277 () List!8850)

(assert (=> d!258808 (= lt!317277 (list!3518 x!177140))))

(assert (=> d!258808 (= lt!317277 (efficientList!145 (c!133193 x!177140) (efficientList$default$2!49 (c!133193 x!177140))))))

(assert (=> d!258808 (= (efficientList!143 x!177140) lt!317277)))

(declare-fun bs!229305 () Bool)

(assert (= bs!229305 d!258808))

(assert (=> bs!229305 m!1062777))

(declare-fun m!1062897 () Bool)

(assert (=> bs!229305 m!1062897))

(assert (=> bs!229305 m!1062897))

(declare-fun m!1062899 () Bool)

(assert (=> bs!229305 m!1062899))

(assert (=> d!258780 d!258808))

(declare-fun b!821752 () Bool)

(declare-fun e!542943 () List!8850)

(assert (=> b!821752 (= e!542943 (list!3522 (xs!5641 (c!133193 x!177140))))))

(declare-fun b!821751 () Bool)

(declare-fun e!542942 () List!8850)

(assert (=> b!821751 (= e!542942 e!542943)))

(declare-fun c!133206 () Bool)

(assert (=> b!821751 (= c!133206 (is-Leaf!4336 (c!133193 x!177140)))))

(declare-fun b!821753 () Bool)

(assert (=> b!821753 (= e!542943 (++!2266 (list!3520 (left!6575 (c!133193 x!177140))) (list!3520 (right!6905 (c!133193 x!177140)))))))

(declare-fun d!258810 () Bool)

(declare-fun c!133205 () Bool)

(assert (=> d!258810 (= c!133205 (is-Empty!2952 (c!133193 x!177140)))))

(assert (=> d!258810 (= (list!3520 (c!133193 x!177140)) e!542942)))

(declare-fun b!821750 () Bool)

(assert (=> b!821750 (= e!542942 Nil!8834)))

(assert (= (and d!258810 c!133205) b!821750))

(assert (= (and d!258810 (not c!133205)) b!821751))

(assert (= (and b!821751 c!133206) b!821752))

(assert (= (and b!821751 (not c!133206)) b!821753))

(declare-fun m!1062901 () Bool)

(assert (=> b!821752 m!1062901))

(declare-fun m!1062903 () Bool)

(assert (=> b!821753 m!1062903))

(declare-fun m!1062905 () Bool)

(assert (=> b!821753 m!1062905))

(assert (=> b!821753 m!1062903))

(assert (=> b!821753 m!1062905))

(declare-fun m!1062907 () Bool)

(assert (=> b!821753 m!1062907))

(assert (=> d!258768 d!258810))

(declare-fun d!258812 () Bool)

(declare-fun lt!317278 () List!8850)

(assert (=> d!258812 (= lt!317278 (list!3518 x!177139))))

(assert (=> d!258812 (= lt!317278 (efficientList!145 (c!133193 x!177139) (efficientList$default$2!49 (c!133193 x!177139))))))

(assert (=> d!258812 (= (efficientList!143 x!177139) lt!317278)))

(declare-fun bs!229306 () Bool)

(assert (= bs!229306 d!258812))

(assert (=> bs!229306 m!1062775))

(declare-fun m!1062909 () Bool)

(assert (=> bs!229306 m!1062909))

(assert (=> bs!229306 m!1062909))

(declare-fun m!1062911 () Bool)

(assert (=> bs!229306 m!1062911))

(assert (=> d!258774 d!258812))

(declare-fun d!258814 () Bool)

(declare-fun lt!317279 () List!8850)

(assert (=> d!258814 (= lt!317279 (list!3518 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139))))))

(assert (=> d!258814 (= lt!317279 (efficientList!145 (c!133193 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139))) (efficientList$default$2!49 (c!133193 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139))))))))

(assert (=> d!258814 (= (efficientList!143 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139))) lt!317279)))

(declare-fun bs!229307 () Bool)

(assert (= bs!229307 d!258814))

(assert (=> bs!229307 m!1062767))

(assert (=> bs!229307 m!1062769))

(declare-fun m!1062913 () Bool)

(assert (=> bs!229307 m!1062913))

(assert (=> bs!229307 m!1062913))

(declare-fun m!1062915 () Bool)

(assert (=> bs!229307 m!1062915))

(assert (=> d!258782 d!258814))

(push 1)

(assert (not b!821749))

(assert (not b!821745))

(assert (not d!258814))

(assert (not b!821744))

(assert (not b!821741))

(assert (not b!821752))

(assert (not b!821753))

(assert (not b!821748))

(assert (not d!258812))

(assert (not d!258808))

(assert (not b!821653))

(assert (not b!821740))

(assert (not b!821664))

(assert (not b!821665))

(assert (not bs!229186))

(assert (not b!821652))

(assert (not start!73488))

(assert (not b!821663))

(assert (not d!258802))

(assert (not b!821662))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> bs!229186 d!258784))

(declare-fun d!258832 () Bool)

(declare-fun c!133222 () Bool)

(assert (=> d!258832 (= c!133222 (is-CommentValue!3451 (toValue!25 thiss!4444 x!177139)))))

(declare-fun e!542958 () BalanceConc!5918)

(assert (=> d!258832 (= (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139)) e!542958)))

(declare-fun b!821782 () Bool)

(declare-fun seqFromList!1515 (List!8850) BalanceConc!5918)

(assert (=> b!821782 (= e!542958 (seqFromList!1515 (value!53889 (toValue!25 thiss!4444 x!177139))))))

(declare-fun b!821783 () Bool)

(assert (=> b!821783 (= e!542958 (BalanceConc!5919 Empty!2952))))

(assert (= (and d!258832 c!133222) b!821782))

(assert (= (and d!258832 (not c!133222)) b!821783))

(declare-fun m!1062965 () Bool)

(assert (=> b!821782 m!1062965))

(assert (=> bs!229186 d!258832))

(assert (=> bs!229186 d!258774))

(assert (=> bs!229186 d!258772))

(assert (=> b!821663 d!258780))

(assert (=> b!821663 d!258778))

(declare-fun d!258834 () Bool)

(declare-fun c!133225 () Bool)

(assert (=> d!258834 (= c!133225 (is-Node!2952 (c!133193 x!177139)))))

(declare-fun e!542963 () Bool)

(assert (=> d!258834 (= (inv!11257 (c!133193 x!177139)) e!542963)))

(declare-fun b!821790 () Bool)

(declare-fun inv!11261 (Conc!2952) Bool)

(assert (=> b!821790 (= e!542963 (inv!11261 (c!133193 x!177139)))))

(declare-fun b!821791 () Bool)

(declare-fun e!542964 () Bool)

(assert (=> b!821791 (= e!542963 e!542964)))

(declare-fun res!379202 () Bool)

(assert (=> b!821791 (= res!379202 (not (is-Leaf!4336 (c!133193 x!177139))))))

(assert (=> b!821791 (=> res!379202 e!542964)))

(declare-fun b!821792 () Bool)

(declare-fun inv!11262 (Conc!2952) Bool)

(assert (=> b!821792 (= e!542964 (inv!11262 (c!133193 x!177139)))))

(assert (= (and d!258834 c!133225) b!821790))

(assert (= (and d!258834 (not c!133225)) b!821791))

(assert (= (and b!821791 (not res!379202)) b!821792))

(declare-fun m!1062967 () Bool)

(assert (=> b!821790 m!1062967))

(declare-fun m!1062969 () Bool)

(assert (=> b!821792 m!1062969))

(assert (=> b!821662 d!258834))

(assert (=> d!258802 d!258770))

(declare-fun b!821805 () Bool)

(declare-fun e!542973 () List!8850)

(assert (=> b!821805 (= e!542973 (efficientList$default$2!49 (c!133193 x!177141)))))

(declare-fun b!821806 () Bool)

(declare-datatypes ((Unit!13361 0))(
  ( (Unit!13362) )
))
(declare-fun lt!317297 () Unit!13361)

(declare-fun lt!317300 () Unit!13361)

(assert (=> b!821806 (= lt!317297 lt!317300)))

(declare-fun lt!317296 () List!8850)

(declare-fun call!47082 () List!8850)

(declare-fun lt!317298 () List!8850)

(assert (=> b!821806 (= (++!2266 call!47082 (efficientList$default$2!49 (c!133193 x!177141))) (++!2266 lt!317298 (++!2266 lt!317296 (efficientList$default$2!49 (c!133193 x!177141)))))))

(declare-fun lemmaConcatAssociativity!720 (List!8850 List!8850 List!8850) Unit!13361)

(assert (=> b!821806 (= lt!317300 (lemmaConcatAssociativity!720 lt!317298 lt!317296 (efficientList$default$2!49 (c!133193 x!177141))))))

(assert (=> b!821806 (= lt!317296 (list!3520 (right!6905 (c!133193 x!177141))))))

(assert (=> b!821806 (= lt!317298 (list!3520 (left!6575 (c!133193 x!177141))))))

(declare-fun e!542971 () List!8850)

(assert (=> b!821806 (= e!542971 (efficientList!145 (left!6575 (c!133193 x!177141)) (efficientList!145 (right!6905 (c!133193 x!177141)) (efficientList$default$2!49 (c!133193 x!177141)))))))

(declare-fun b!821808 () Bool)

(declare-fun e!542972 () List!8850)

(assert (=> b!821808 (= e!542972 lt!317298)))

(declare-fun b!821809 () Bool)

(declare-fun efficientList!147 (IArray!5909) List!8850)

(assert (=> b!821809 (= e!542972 (efficientList!147 (xs!5641 (c!133193 x!177141))))))

(declare-fun b!821810 () Bool)

(assert (=> b!821810 (= e!542973 e!542971)))

(declare-fun c!133232 () Bool)

(assert (=> b!821810 (= c!133232 (is-Leaf!4336 (c!133193 x!177141)))))

(declare-fun bm!47077 () Bool)

(declare-fun c!133233 () Bool)

(assert (=> bm!47077 (= c!133233 c!133232)))

(assert (=> bm!47077 (= call!47082 (++!2266 e!542972 (ite c!133232 (efficientList$default$2!49 (c!133193 x!177141)) lt!317296)))))

(declare-fun b!821807 () Bool)

(assert (=> b!821807 (= e!542971 call!47082)))

(declare-fun d!258836 () Bool)

(declare-fun lt!317299 () List!8850)

(assert (=> d!258836 (= lt!317299 (++!2266 (list!3520 (c!133193 x!177141)) (efficientList$default$2!49 (c!133193 x!177141))))))

(assert (=> d!258836 (= lt!317299 e!542973)))

(declare-fun c!133234 () Bool)

(assert (=> d!258836 (= c!133234 (is-Empty!2952 (c!133193 x!177141)))))

(assert (=> d!258836 (= (efficientList!145 (c!133193 x!177141) (efficientList$default$2!49 (c!133193 x!177141))) lt!317299)))

(assert (= (and d!258836 c!133234) b!821805))

(assert (= (and d!258836 (not c!133234)) b!821810))

(assert (= (and b!821810 c!133232) b!821807))

(assert (= (and b!821810 (not c!133232)) b!821806))

(assert (= (or b!821807 b!821806) bm!47077))

(assert (= (and bm!47077 c!133233) b!821809))

(assert (= (and bm!47077 (not c!133233)) b!821808))

(declare-fun m!1062971 () Bool)

(assert (=> b!821806 m!1062971))

(declare-fun m!1062973 () Bool)

(assert (=> b!821806 m!1062973))

(assert (=> b!821806 m!1062885))

(assert (=> b!821806 m!1062877))

(declare-fun m!1062975 () Bool)

(assert (=> b!821806 m!1062975))

(assert (=> b!821806 m!1062877))

(declare-fun m!1062977 () Bool)

(assert (=> b!821806 m!1062977))

(assert (=> b!821806 m!1062877))

(assert (=> b!821806 m!1062971))

(assert (=> b!821806 m!1062883))

(declare-fun m!1062979 () Bool)

(assert (=> b!821806 m!1062979))

(declare-fun m!1062981 () Bool)

(assert (=> b!821806 m!1062981))

(assert (=> b!821806 m!1062877))

(assert (=> b!821806 m!1062979))

(declare-fun m!1062983 () Bool)

(assert (=> b!821809 m!1062983))

(declare-fun m!1062985 () Bool)

(assert (=> bm!47077 m!1062985))

(assert (=> d!258836 m!1062835))

(assert (=> d!258836 m!1062835))

(assert (=> d!258836 m!1062877))

(declare-fun m!1062987 () Bool)

(assert (=> d!258836 m!1062987))

(assert (=> d!258802 d!258836))

(declare-fun d!258838 () Bool)

(assert (=> d!258838 (= (efficientList$default$2!49 (c!133193 x!177141)) Nil!8834)))

(assert (=> d!258802 d!258838))

(declare-fun d!258840 () Bool)

(declare-fun isBalanced!807 (Conc!2952) Bool)

(assert (=> d!258840 (= (inv!11258 x!177141) (isBalanced!807 (c!133193 x!177141)))))

(declare-fun bs!229312 () Bool)

(assert (= bs!229312 d!258840))

(declare-fun m!1062989 () Bool)

(assert (=> bs!229312 m!1062989))

(assert (=> b!821653 d!258840))

(assert (=> b!821653 d!258768))

(declare-fun d!258842 () Bool)

(declare-fun choose!4923 (Int) Bool)

(assert (=> d!258842 (= (Forall2!304 lambda!24690) (choose!4923 lambda!24690))))

(declare-fun bs!229313 () Bool)

(assert (= bs!229313 d!258842))

(declare-fun m!1062991 () Bool)

(assert (=> bs!229313 m!1062991))

(assert (=> b!821653 d!258842))

(assert (=> b!821653 d!258770))

(declare-fun d!258844 () Bool)

(assert (=> d!258844 (= (inv!11258 x!177140) (isBalanced!807 (c!133193 x!177140)))))

(declare-fun bs!229314 () Bool)

(assert (= bs!229314 d!258844))

(declare-fun m!1062993 () Bool)

(assert (=> bs!229314 m!1062993))

(assert (=> b!821653 d!258844))

(declare-fun bs!229315 () Bool)

(declare-fun d!258846 () Bool)

(assert (= bs!229315 (and d!258846 start!73488)))

(declare-fun lambda!24715 () Int)

(assert (=> bs!229315 (not (= lambda!24715 lambda!24687))))

(assert (=> d!258846 true))

(declare-fun order!5655 () Int)

(declare-fun order!5653 () Int)

(declare-fun dynLambda!4112 (Int Int) Int)

(declare-fun dynLambda!4113 (Int Int) Int)

(assert (=> d!258846 (< (dynLambda!4112 order!5653 lambda!24688) (dynLambda!4113 order!5655 lambda!24715))))

(assert (=> d!258846 true))

(declare-fun order!5657 () Int)

(declare-fun dynLambda!4114 (Int Int) Int)

(assert (=> d!258846 (< (dynLambda!4114 order!5657 lambda!24689) (dynLambda!4113 order!5655 lambda!24715))))

(assert (=> d!258846 (= (semiInverseModEq!637 lambda!24688 lambda!24689) (Forall!394 lambda!24715))))

(declare-fun bs!229316 () Bool)

(assert (= bs!229316 d!258846))

(declare-fun m!1062995 () Bool)

(assert (=> bs!229316 m!1062995))

(assert (=> b!821652 d!258846))

(declare-fun d!258848 () Bool)

(declare-fun choose!4924 (Int) Bool)

(assert (=> d!258848 (= (Forall!394 lambda!24687) (choose!4924 lambda!24687))))

(declare-fun bs!229317 () Bool)

(assert (= bs!229317 d!258848))

(declare-fun m!1062997 () Bool)

(assert (=> bs!229317 m!1062997))

(assert (=> b!821652 d!258848))

(assert (=> d!258808 d!258768))

(declare-fun b!821815 () Bool)

(declare-fun e!542976 () List!8850)

(assert (=> b!821815 (= e!542976 (efficientList$default$2!49 (c!133193 x!177140)))))

(declare-fun b!821816 () Bool)

(declare-fun lt!317302 () Unit!13361)

(declare-fun lt!317305 () Unit!13361)

(assert (=> b!821816 (= lt!317302 lt!317305)))

(declare-fun lt!317303 () List!8850)

(declare-fun lt!317301 () List!8850)

(declare-fun call!47083 () List!8850)

(assert (=> b!821816 (= (++!2266 call!47083 (efficientList$default$2!49 (c!133193 x!177140))) (++!2266 lt!317303 (++!2266 lt!317301 (efficientList$default$2!49 (c!133193 x!177140)))))))

(assert (=> b!821816 (= lt!317305 (lemmaConcatAssociativity!720 lt!317303 lt!317301 (efficientList$default$2!49 (c!133193 x!177140))))))

(assert (=> b!821816 (= lt!317301 (list!3520 (right!6905 (c!133193 x!177140))))))

(assert (=> b!821816 (= lt!317303 (list!3520 (left!6575 (c!133193 x!177140))))))

(declare-fun e!542974 () List!8850)

(assert (=> b!821816 (= e!542974 (efficientList!145 (left!6575 (c!133193 x!177140)) (efficientList!145 (right!6905 (c!133193 x!177140)) (efficientList$default$2!49 (c!133193 x!177140)))))))

(declare-fun b!821818 () Bool)

(declare-fun e!542975 () List!8850)

(assert (=> b!821818 (= e!542975 lt!317303)))

(declare-fun b!821819 () Bool)

(assert (=> b!821819 (= e!542975 (efficientList!147 (xs!5641 (c!133193 x!177140))))))

(declare-fun b!821820 () Bool)

(assert (=> b!821820 (= e!542976 e!542974)))

(declare-fun c!133235 () Bool)

(assert (=> b!821820 (= c!133235 (is-Leaf!4336 (c!133193 x!177140)))))

(declare-fun bm!47078 () Bool)

(declare-fun c!133236 () Bool)

(assert (=> bm!47078 (= c!133236 c!133235)))

(assert (=> bm!47078 (= call!47083 (++!2266 e!542975 (ite c!133235 (efficientList$default$2!49 (c!133193 x!177140)) lt!317301)))))

(declare-fun b!821817 () Bool)

(assert (=> b!821817 (= e!542974 call!47083)))

(declare-fun d!258850 () Bool)

(declare-fun lt!317304 () List!8850)

(assert (=> d!258850 (= lt!317304 (++!2266 (list!3520 (c!133193 x!177140)) (efficientList$default$2!49 (c!133193 x!177140))))))

(assert (=> d!258850 (= lt!317304 e!542976)))

(declare-fun c!133237 () Bool)

(assert (=> d!258850 (= c!133237 (is-Empty!2952 (c!133193 x!177140)))))

(assert (=> d!258850 (= (efficientList!145 (c!133193 x!177140) (efficientList$default$2!49 (c!133193 x!177140))) lt!317304)))

(assert (= (and d!258850 c!133237) b!821815))

(assert (= (and d!258850 (not c!133237)) b!821820))

(assert (= (and b!821820 c!133235) b!821817))

(assert (= (and b!821820 (not c!133235)) b!821816))

(assert (= (or b!821817 b!821816) bm!47078))

(assert (= (and bm!47078 c!133236) b!821819))

(assert (= (and bm!47078 (not c!133236)) b!821818))

(declare-fun m!1062999 () Bool)

(assert (=> b!821816 m!1062999))

(declare-fun m!1063001 () Bool)

(assert (=> b!821816 m!1063001))

(assert (=> b!821816 m!1062905))

(assert (=> b!821816 m!1062897))

(declare-fun m!1063003 () Bool)

(assert (=> b!821816 m!1063003))

(assert (=> b!821816 m!1062897))

(declare-fun m!1063005 () Bool)

(assert (=> b!821816 m!1063005))

(assert (=> b!821816 m!1062897))

(assert (=> b!821816 m!1062999))

(assert (=> b!821816 m!1062903))

(declare-fun m!1063007 () Bool)

(assert (=> b!821816 m!1063007))

(declare-fun m!1063009 () Bool)

(assert (=> b!821816 m!1063009))

(assert (=> b!821816 m!1062897))

(assert (=> b!821816 m!1063007))

(declare-fun m!1063011 () Bool)

(assert (=> b!821819 m!1063011))

(declare-fun m!1063013 () Bool)

(assert (=> bm!47078 m!1063013))

(assert (=> d!258850 m!1062833))

(assert (=> d!258850 m!1062833))

(assert (=> d!258850 m!1062897))

(declare-fun m!1063015 () Bool)

(assert (=> d!258850 m!1063015))

(assert (=> d!258808 d!258850))

(declare-fun d!258852 () Bool)

(assert (=> d!258852 (= (efficientList$default$2!49 (c!133193 x!177140)) Nil!8834)))

(assert (=> d!258808 d!258852))

(declare-fun d!258854 () Bool)

(declare-fun c!133238 () Bool)

(assert (=> d!258854 (= c!133238 (is-Node!2952 (c!133193 x!177141)))))

(declare-fun e!542977 () Bool)

(assert (=> d!258854 (= (inv!11257 (c!133193 x!177141)) e!542977)))

(declare-fun b!821821 () Bool)

(assert (=> b!821821 (= e!542977 (inv!11261 (c!133193 x!177141)))))

(declare-fun b!821822 () Bool)

(declare-fun e!542978 () Bool)

(assert (=> b!821822 (= e!542977 e!542978)))

(declare-fun res!379203 () Bool)

(assert (=> b!821822 (= res!379203 (not (is-Leaf!4336 (c!133193 x!177141))))))

(assert (=> b!821822 (=> res!379203 e!542978)))

(declare-fun b!821823 () Bool)

(assert (=> b!821823 (= e!542978 (inv!11262 (c!133193 x!177141)))))

(assert (= (and d!258854 c!133238) b!821821))

(assert (= (and d!258854 (not c!133238)) b!821822))

(assert (= (and b!821822 (not res!379203)) b!821823))

(declare-fun m!1063017 () Bool)

(assert (=> b!821821 m!1063017))

(declare-fun m!1063019 () Bool)

(assert (=> b!821823 m!1063019))

(assert (=> b!821665 d!258854))

(declare-fun d!258856 () Bool)

(declare-fun c!133239 () Bool)

(assert (=> d!258856 (= c!133239 (is-Node!2952 (c!133193 x!177140)))))

(declare-fun e!542979 () Bool)

(assert (=> d!258856 (= (inv!11257 (c!133193 x!177140)) e!542979)))

(declare-fun b!821824 () Bool)

(assert (=> b!821824 (= e!542979 (inv!11261 (c!133193 x!177140)))))

(declare-fun b!821825 () Bool)

(declare-fun e!542980 () Bool)

(assert (=> b!821825 (= e!542979 e!542980)))

(declare-fun res!379204 () Bool)

(assert (=> b!821825 (= res!379204 (not (is-Leaf!4336 (c!133193 x!177140))))))

(assert (=> b!821825 (=> res!379204 e!542980)))

(declare-fun b!821826 () Bool)

(assert (=> b!821826 (= e!542980 (inv!11262 (c!133193 x!177140)))))

(assert (= (and d!258856 c!133239) b!821824))

(assert (= (and d!258856 (not c!133239)) b!821825))

(assert (= (and b!821825 (not res!379204)) b!821826))

(declare-fun m!1063021 () Bool)

(assert (=> b!821824 m!1063021))

(declare-fun m!1063023 () Bool)

(assert (=> b!821826 m!1063023))

(assert (=> b!821664 d!258856))

(assert (=> start!73488 d!258832))

(declare-fun d!258858 () Bool)

(assert (=> d!258858 (= (inv!11258 x!177139) (isBalanced!807 (c!133193 x!177139)))))

(declare-fun bs!229318 () Bool)

(assert (= bs!229318 d!258858))

(declare-fun m!1063025 () Bool)

(assert (=> bs!229318 m!1063025))

(assert (=> start!73488 d!258858))

(assert (=> start!73488 d!258772))

(assert (=> start!73488 d!258848))

(assert (=> start!73488 d!258784))

(assert (=> start!73488 d!258774))

(assert (=> d!258812 d!258772))

(declare-fun b!821827 () Bool)

(declare-fun e!542983 () List!8850)

(assert (=> b!821827 (= e!542983 (efficientList$default$2!49 (c!133193 x!177139)))))

(declare-fun b!821828 () Bool)

(declare-fun lt!317307 () Unit!13361)

(declare-fun lt!317310 () Unit!13361)

(assert (=> b!821828 (= lt!317307 lt!317310)))

(declare-fun lt!317308 () List!8850)

(declare-fun call!47084 () List!8850)

(declare-fun lt!317306 () List!8850)

(assert (=> b!821828 (= (++!2266 call!47084 (efficientList$default$2!49 (c!133193 x!177139))) (++!2266 lt!317308 (++!2266 lt!317306 (efficientList$default$2!49 (c!133193 x!177139)))))))

(assert (=> b!821828 (= lt!317310 (lemmaConcatAssociativity!720 lt!317308 lt!317306 (efficientList$default$2!49 (c!133193 x!177139))))))

(assert (=> b!821828 (= lt!317306 (list!3520 (right!6905 (c!133193 x!177139))))))

(assert (=> b!821828 (= lt!317308 (list!3520 (left!6575 (c!133193 x!177139))))))

(declare-fun e!542981 () List!8850)

(assert (=> b!821828 (= e!542981 (efficientList!145 (left!6575 (c!133193 x!177139)) (efficientList!145 (right!6905 (c!133193 x!177139)) (efficientList$default$2!49 (c!133193 x!177139)))))))

(declare-fun b!821830 () Bool)

(declare-fun e!542982 () List!8850)

(assert (=> b!821830 (= e!542982 lt!317308)))

(declare-fun b!821831 () Bool)

(assert (=> b!821831 (= e!542982 (efficientList!147 (xs!5641 (c!133193 x!177139))))))

(declare-fun b!821832 () Bool)

(assert (=> b!821832 (= e!542983 e!542981)))

(declare-fun c!133240 () Bool)

(assert (=> b!821832 (= c!133240 (is-Leaf!4336 (c!133193 x!177139)))))

(declare-fun bm!47079 () Bool)

(declare-fun c!133241 () Bool)

(assert (=> bm!47079 (= c!133241 c!133240)))

(assert (=> bm!47079 (= call!47084 (++!2266 e!542982 (ite c!133240 (efficientList$default$2!49 (c!133193 x!177139)) lt!317306)))))

(declare-fun b!821829 () Bool)

(assert (=> b!821829 (= e!542981 call!47084)))

(declare-fun d!258860 () Bool)

(declare-fun lt!317309 () List!8850)

(assert (=> d!258860 (= lt!317309 (++!2266 (list!3520 (c!133193 x!177139)) (efficientList$default$2!49 (c!133193 x!177139))))))

(assert (=> d!258860 (= lt!317309 e!542983)))

(declare-fun c!133242 () Bool)

(assert (=> d!258860 (= c!133242 (is-Empty!2952 (c!133193 x!177139)))))

(assert (=> d!258860 (= (efficientList!145 (c!133193 x!177139) (efficientList$default$2!49 (c!133193 x!177139))) lt!317309)))

(assert (= (and d!258860 c!133242) b!821827))

(assert (= (and d!258860 (not c!133242)) b!821832))

(assert (= (and b!821832 c!133240) b!821829))

(assert (= (and b!821832 (not c!133240)) b!821828))

(assert (= (or b!821829 b!821828) bm!47079))

(assert (= (and bm!47079 c!133241) b!821831))

(assert (= (and bm!47079 (not c!133241)) b!821830))

(declare-fun m!1063027 () Bool)

(assert (=> b!821828 m!1063027))

(declare-fun m!1063029 () Bool)

(assert (=> b!821828 m!1063029))

(assert (=> b!821828 m!1062893))

(assert (=> b!821828 m!1062909))

(declare-fun m!1063031 () Bool)

(assert (=> b!821828 m!1063031))

(assert (=> b!821828 m!1062909))

(declare-fun m!1063033 () Bool)

(assert (=> b!821828 m!1063033))

(assert (=> b!821828 m!1062909))

(assert (=> b!821828 m!1063027))

(assert (=> b!821828 m!1062891))

(declare-fun m!1063035 () Bool)

(assert (=> b!821828 m!1063035))

(declare-fun m!1063037 () Bool)

(assert (=> b!821828 m!1063037))

(assert (=> b!821828 m!1062909))

(assert (=> b!821828 m!1063035))

(declare-fun m!1063039 () Bool)

(assert (=> b!821831 m!1063039))

(declare-fun m!1063041 () Bool)

(assert (=> bm!47079 m!1063041))

(assert (=> d!258860 m!1062837))

(assert (=> d!258860 m!1062837))

(assert (=> d!258860 m!1062909))

(declare-fun m!1063043 () Bool)

(assert (=> d!258860 m!1063043))

(assert (=> d!258812 d!258860))

(declare-fun d!258862 () Bool)

(assert (=> d!258862 (= (efficientList$default$2!49 (c!133193 x!177139)) Nil!8834)))

(assert (=> d!258812 d!258862))

(assert (=> d!258814 d!258784))

(declare-fun b!821833 () Bool)

(declare-fun e!542986 () List!8850)

(assert (=> b!821833 (= e!542986 (efficientList$default$2!49 (c!133193 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139)))))))

(declare-fun b!821834 () Bool)

(declare-fun lt!317312 () Unit!13361)

(declare-fun lt!317315 () Unit!13361)

(assert (=> b!821834 (= lt!317312 lt!317315)))

(declare-fun lt!317313 () List!8850)

(declare-fun call!47085 () List!8850)

(declare-fun lt!317311 () List!8850)

(assert (=> b!821834 (= (++!2266 call!47085 (efficientList$default$2!49 (c!133193 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139))))) (++!2266 lt!317313 (++!2266 lt!317311 (efficientList$default$2!49 (c!133193 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139)))))))))

(assert (=> b!821834 (= lt!317315 (lemmaConcatAssociativity!720 lt!317313 lt!317311 (efficientList$default$2!49 (c!133193 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139))))))))

(assert (=> b!821834 (= lt!317311 (list!3520 (right!6905 (c!133193 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139))))))))

(assert (=> b!821834 (= lt!317313 (list!3520 (left!6575 (c!133193 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139))))))))

(declare-fun e!542984 () List!8850)

(assert (=> b!821834 (= e!542984 (efficientList!145 (left!6575 (c!133193 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139)))) (efficientList!145 (right!6905 (c!133193 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139)))) (efficientList$default$2!49 (c!133193 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139)))))))))

(declare-fun b!821836 () Bool)

(declare-fun e!542985 () List!8850)

(assert (=> b!821836 (= e!542985 lt!317313)))

(declare-fun b!821837 () Bool)

(assert (=> b!821837 (= e!542985 (efficientList!147 (xs!5641 (c!133193 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139))))))))

(declare-fun b!821838 () Bool)

(assert (=> b!821838 (= e!542986 e!542984)))

(declare-fun c!133243 () Bool)

(assert (=> b!821838 (= c!133243 (is-Leaf!4336 (c!133193 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139)))))))

(declare-fun bm!47080 () Bool)

(declare-fun c!133244 () Bool)

(assert (=> bm!47080 (= c!133244 c!133243)))

(assert (=> bm!47080 (= call!47085 (++!2266 e!542985 (ite c!133243 (efficientList$default$2!49 (c!133193 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139)))) lt!317311)))))

(declare-fun b!821835 () Bool)

(assert (=> b!821835 (= e!542984 call!47085)))

(declare-fun d!258864 () Bool)

(declare-fun lt!317314 () List!8850)

(assert (=> d!258864 (= lt!317314 (++!2266 (list!3520 (c!133193 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139)))) (efficientList$default$2!49 (c!133193 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139))))))))

(assert (=> d!258864 (= lt!317314 e!542986)))

(declare-fun c!133245 () Bool)

(assert (=> d!258864 (= c!133245 (is-Empty!2952 (c!133193 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139)))))))

(assert (=> d!258864 (= (efficientList!145 (c!133193 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139))) (efficientList$default$2!49 (c!133193 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139))))) lt!317314)))

(assert (= (and d!258864 c!133245) b!821833))

(assert (= (and d!258864 (not c!133245)) b!821838))

(assert (= (and b!821838 c!133243) b!821835))

(assert (= (and b!821838 (not c!133243)) b!821834))

(assert (= (or b!821835 b!821834) bm!47080))

(assert (= (and bm!47080 c!133244) b!821837))

(assert (= (and bm!47080 (not c!133244)) b!821836))

(declare-fun m!1063045 () Bool)

(assert (=> b!821834 m!1063045))

(declare-fun m!1063047 () Bool)

(assert (=> b!821834 m!1063047))

(assert (=> b!821834 m!1062873))

(assert (=> b!821834 m!1062913))

(declare-fun m!1063049 () Bool)

(assert (=> b!821834 m!1063049))

(assert (=> b!821834 m!1062913))

(declare-fun m!1063051 () Bool)

(assert (=> b!821834 m!1063051))

(assert (=> b!821834 m!1062913))

(assert (=> b!821834 m!1063045))

(assert (=> b!821834 m!1062871))

(declare-fun m!1063053 () Bool)

(assert (=> b!821834 m!1063053))

(declare-fun m!1063055 () Bool)

(assert (=> b!821834 m!1063055))

(assert (=> b!821834 m!1062913))

(assert (=> b!821834 m!1063053))

(declare-fun m!1063057 () Bool)

(assert (=> b!821837 m!1063057))

(declare-fun m!1063059 () Bool)

(assert (=> bm!47080 m!1063059))

(assert (=> d!258864 m!1062847))

(assert (=> d!258864 m!1062847))

(assert (=> d!258864 m!1062913))

(declare-fun m!1063061 () Bool)

(assert (=> d!258864 m!1063061))

(assert (=> d!258814 d!258864))

(declare-fun d!258866 () Bool)

(assert (=> d!258866 (= (efficientList$default$2!49 (c!133193 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177139)))) Nil!8834)))

(assert (=> d!258814 d!258866))

(declare-fun b!821845 () Bool)

(declare-fun tp!256784 () Bool)

(declare-fun tp!256783 () Bool)

(declare-fun e!542991 () Bool)

(assert (=> b!821845 (= e!542991 (and (inv!11257 (left!6575 (c!133193 x!177139))) tp!256783 (inv!11257 (right!6905 (c!133193 x!177139))) tp!256784))))

(declare-fun b!821846 () Bool)

(declare-fun inv!11263 (IArray!5909) Bool)

(assert (=> b!821846 (= e!542991 (inv!11263 (xs!5641 (c!133193 x!177139))))))

(assert (=> b!821662 (= tp!256767 (and (inv!11257 (c!133193 x!177139)) e!542991))))

(assert (= (and b!821662 (is-Node!2952 (c!133193 x!177139))) b!821845))

(assert (= (and b!821662 (is-Leaf!4336 (c!133193 x!177139))) b!821846))

(declare-fun m!1063063 () Bool)

(assert (=> b!821845 m!1063063))

(declare-fun m!1063065 () Bool)

(assert (=> b!821845 m!1063065))

(declare-fun m!1063067 () Bool)

(assert (=> b!821846 m!1063067))

(assert (=> b!821662 m!1062765))

(declare-fun tp!256786 () Bool)

(declare-fun tp!256785 () Bool)

(declare-fun e!542993 () Bool)

(declare-fun b!821847 () Bool)

(assert (=> b!821847 (= e!542993 (and (inv!11257 (left!6575 (c!133193 x!177141))) tp!256785 (inv!11257 (right!6905 (c!133193 x!177141))) tp!256786))))

(declare-fun b!821848 () Bool)

(assert (=> b!821848 (= e!542993 (inv!11263 (xs!5641 (c!133193 x!177141))))))

(assert (=> b!821665 (= tp!256768 (and (inv!11257 (c!133193 x!177141)) e!542993))))

(assert (= (and b!821665 (is-Node!2952 (c!133193 x!177141))) b!821847))

(assert (= (and b!821665 (is-Leaf!4336 (c!133193 x!177141))) b!821848))

(declare-fun m!1063069 () Bool)

(assert (=> b!821847 m!1063069))

(declare-fun m!1063071 () Bool)

(assert (=> b!821847 m!1063071))

(declare-fun m!1063073 () Bool)

(assert (=> b!821848 m!1063073))

(assert (=> b!821665 m!1062791))

(declare-fun e!542995 () Bool)

(declare-fun b!821849 () Bool)

(declare-fun tp!256788 () Bool)

(declare-fun tp!256787 () Bool)

(assert (=> b!821849 (= e!542995 (and (inv!11257 (left!6575 (c!133193 x!177140))) tp!256787 (inv!11257 (right!6905 (c!133193 x!177140))) tp!256788))))

(declare-fun b!821850 () Bool)

(assert (=> b!821850 (= e!542995 (inv!11263 (xs!5641 (c!133193 x!177140))))))

(assert (=> b!821664 (= tp!256769 (and (inv!11257 (c!133193 x!177140)) e!542995))))

(assert (= (and b!821664 (is-Node!2952 (c!133193 x!177140))) b!821849))

(assert (= (and b!821664 (is-Leaf!4336 (c!133193 x!177140))) b!821850))

(declare-fun m!1063075 () Bool)

(assert (=> b!821849 m!1063075))

(declare-fun m!1063077 () Bool)

(assert (=> b!821849 m!1063077))

(declare-fun m!1063079 () Bool)

(assert (=> b!821850 m!1063079))

(assert (=> b!821664 m!1062789))

(push 1)

(assert (not b!821831))

(assert (not b!821745))

(assert (not b!821752))

(assert (not d!258846))

(assert (not b!821753))

(assert (not b!821748))

(assert (not b!821848))

(assert (not d!258842))

(assert (not b!821849))

(assert (not b!821819))

(assert (not b!821834))

(assert (not b!821662))

(assert (not b!821837))

(assert (not b!821847))

(assert (not b!821806))

(assert (not b!821749))

(assert (not b!821824))

(assert (not b!821790))

(assert (not d!258864))

(assert (not b!821744))

(assert (not b!821782))

(assert (not b!821845))

(assert (not d!258840))

(assert (not bm!47080))

(assert (not b!821741))

(assert (not bm!47077))

(assert (not b!821826))

(assert (not d!258850))

(assert (not d!258858))

(assert (not b!821740))

(assert (not b!821664))

(assert (not b!821816))

(assert (not d!258844))

(assert (not d!258836))

(assert (not b!821828))

(assert (not b!821850))

(assert (not b!821823))

(assert (not b!821665))

(assert (not d!258848))

(assert (not bm!47078))

(assert (not b!821809))

(assert (not b!821846))

(assert (not bm!47079))

(assert (not d!258860))

(assert (not b!821792))

(assert (not b!821821))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

