; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!73318 () Bool)

(assert start!73318)

(assert (=> start!73318 true))

(declare-fun b!820830 () Bool)

(assert (=> b!820830 true))

(assert (=> b!820830 true))

(declare-fun b!820831 () Bool)

(assert (=> b!820831 true))

(declare-fun b!820840 () Bool)

(declare-fun e!542310 () Bool)

(declare-datatypes ((List!8838 0))(
  ( (Nil!8822) (Cons!8822 (h!14223 (_ BitVec 16)) (t!92979 List!8838)) )
))
(declare-datatypes ((IArray!5885 0))(
  ( (IArray!5886 (innerList!3000 List!8838)) )
))
(declare-datatypes ((Conc!2940 0))(
  ( (Node!2940 (left!6537 Conc!2940) (right!6867 Conc!2940) (csize!6110 Int) (cheight!3151 Int)) (Leaf!4318 (xs!5629 IArray!5885) (csize!6111 Int)) (Empty!2940) )
))
(declare-datatypes ((BalanceConc!5894 0))(
  ( (BalanceConc!5895 (c!133015 Conc!2940)) )
))
(declare-fun x!176369 () BalanceConc!5894)

(declare-fun tp!256631 () Bool)

(declare-fun inv!11195 (Conc!2940) Bool)

(assert (=> b!820840 (= e!542310 (and (inv!11195 (c!133015 x!176369)) tp!256631))))

(declare-datatypes ((BytesLiteralValueInjection!12 0))(
  ( (BytesLiteralValueInjection!13) )
))
(declare-fun thiss!4819 () BytesLiteralValueInjection!12)

(declare-fun inst!652 () Bool)

(declare-fun inv!11196 (BalanceConc!5894) Bool)

(declare-fun list!3497 (BalanceConc!5894) List!8838)

(declare-datatypes ((TokenValue!1713 0))(
  ( (FloatLiteralValue!3426 (text!12436 List!8838)) (TokenValueExt!1712 (__x!7175 Int)) (Broken!8565 (value!53548 List!8838)) (Object!1728) (End!1713) (Def!1713) (Underscore!1713) (Match!1713) (Else!1713) (Error!1713) (Case!1713) (If!1713) (Extends!1713) (Abstract!1713) (Class!1713) (Val!1713) (DelimiterValue!3426 (del!1773 List!8838)) (KeywordValue!1719 (value!53549 List!8838)) (CommentValue!3426 (value!53550 List!8838)) (WhitespaceValue!3426 (value!53551 List!8838)) (IndentationValue!1713 (value!53552 List!8838)) (String!10364) (Int32!1713) (Broken!8566 (value!53553 List!8838)) (Boolean!1714) (Unit!13339) (OperatorValue!1716 (op!1773 List!8838)) (IdentifierValue!3426 (value!53554 List!8838)) (IdentifierValue!3427 (value!53555 List!8838)) (WhitespaceValue!3427 (value!53556 List!8838)) (True!3426) (False!3426) (Broken!8567 (value!53557 List!8838)) (Broken!8568 (value!53558 List!8838)) (True!3427) (RightBrace!1713) (RightBracket!1713) (Colon!1713) (Null!1713) (Comma!1713) (LeftBracket!1713) (False!3427) (LeftBrace!1713) (ImaginaryLiteralValue!1713 (text!12437 List!8838)) (StringLiteralValue!5139 (value!53559 List!8838)) (EOFValue!1713 (value!53560 List!8838)) (IdentValue!1713 (value!53561 List!8838)) (DelimiterValue!3427 (value!53562 List!8838)) (DedentValue!1713 (value!53563 List!8838)) (NewLineValue!1713 (value!53564 List!8838)) (IntegerValue!5139 (value!53565 (_ BitVec 32)) (text!12438 List!8838)) (IntegerValue!5140 (value!53566 Int) (text!12439 List!8838)) (Times!1713) (Or!1713) (Equal!1713) (Minus!1713) (Broken!8569 (value!53567 List!8838)) (And!1713) (Div!1713) (LessEqual!1713) (Mod!1713) (Concat!3743) (Not!1713) (Plus!1713) (SpaceValue!1713 (value!53568 List!8838)) (IntegerValue!5141 (value!53569 Int) (text!12440 List!8838)) (StringLiteralValue!5140 (text!12441 List!8838)) (FloatLiteralValue!3427 (text!12442 List!8838)) (BytesLiteralValue!1713 (value!53570 List!8838)) (CommentValue!3427 (value!53571 List!8838)) (StringLiteralValue!5141 (value!53572 List!8838)) (ErrorTokenValue!1713 (msg!1774 List!8838)) )
))
(declare-fun toCharacters!23 (BytesLiteralValueInjection!12 TokenValue!1713) BalanceConc!5894)

(declare-fun toValue!30 (BytesLiteralValueInjection!12 BalanceConc!5894) TokenValue!1713)

(assert (=> start!73318 (= inst!652 (=> (and (inv!11196 x!176369) e!542310) (= (list!3497 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369))) (list!3497 x!176369))))))

(assert (= start!73318 b!820840))

(declare-fun m!1061813 () Bool)

(assert (=> b!820840 m!1061813))

(declare-fun m!1061815 () Bool)

(assert (=> start!73318 m!1061815))

(declare-fun m!1061817 () Bool)

(assert (=> start!73318 m!1061817))

(declare-fun m!1061819 () Bool)

(assert (=> start!73318 m!1061819))

(declare-fun m!1061821 () Bool)

(assert (=> start!73318 m!1061821))

(assert (=> start!73318 m!1061819))

(declare-fun m!1061823 () Bool)

(assert (=> start!73318 m!1061823))

(assert (=> start!73318 m!1061817))

(declare-fun res!378852 () Bool)

(declare-fun e!542311 () Bool)

(assert (=> b!820831 (=> res!378852 e!542311)))

(declare-fun x!176370 () BalanceConc!5894)

(declare-fun x!176371 () BalanceConc!5894)

(assert (=> b!820831 (= res!378852 (not (= (list!3497 x!176370) (list!3497 x!176371))))))

(declare-fun e!542312 () Bool)

(declare-fun e!542313 () Bool)

(declare-fun inst!653 () Bool)

(assert (=> b!820831 (= inst!653 (=> (and (inv!11196 x!176370) e!542313 (inv!11196 x!176371) e!542312) e!542311))))

(declare-fun b!820841 () Bool)

(assert (=> b!820841 (= e!542311 (= (toValue!30 thiss!4819 x!176370) (toValue!30 thiss!4819 x!176371)))))

(declare-fun b!820842 () Bool)

(declare-fun tp!256632 () Bool)

(assert (=> b!820842 (= e!542313 (and (inv!11195 (c!133015 x!176370)) tp!256632))))

(declare-fun b!820843 () Bool)

(declare-fun tp!256633 () Bool)

(assert (=> b!820843 (= e!542312 (and (inv!11195 (c!133015 x!176371)) tp!256633))))

(assert (= (and b!820831 (not res!378852)) b!820841))

(assert (= b!820831 b!820842))

(assert (= b!820831 b!820843))

(declare-fun m!1061825 () Bool)

(assert (=> b!820831 m!1061825))

(declare-fun m!1061827 () Bool)

(assert (=> b!820831 m!1061827))

(declare-fun m!1061829 () Bool)

(assert (=> b!820831 m!1061829))

(declare-fun m!1061831 () Bool)

(assert (=> b!820831 m!1061831))

(declare-fun m!1061833 () Bool)

(assert (=> b!820841 m!1061833))

(declare-fun m!1061835 () Bool)

(assert (=> b!820841 m!1061835))

(declare-fun m!1061837 () Bool)

(assert (=> b!820842 m!1061837))

(declare-fun m!1061839 () Bool)

(assert (=> b!820843 m!1061839))

(declare-fun bs!228808 () Bool)

(declare-fun neg-inst!653 () Bool)

(declare-fun s!151213 () Bool)

(assert (= bs!228808 (and neg-inst!653 s!151213)))

(assert (=> bs!228808 (=> true (= (list!3497 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369))) (list!3497 x!176369)))))

(assert (=> m!1061815 m!1061817))

(assert (=> m!1061815 m!1061819))

(assert (=> m!1061815 m!1061823))

(assert (=> m!1061815 s!151213))

(assert (=> m!1061817 s!151213))

(declare-fun bs!228809 () Bool)

(assert (= bs!228809 (and neg-inst!653 start!73318)))

(assert (=> bs!228809 (= true inst!652)))

(declare-fun bs!228810 () Bool)

(declare-fun neg-inst!652 () Bool)

(declare-fun s!151215 () Bool)

(assert (= bs!228810 (and neg-inst!652 s!151215)))

(declare-fun res!378853 () Bool)

(declare-fun e!542314 () Bool)

(assert (=> bs!228810 (=> res!378853 e!542314)))

(assert (=> bs!228810 (= res!378853 (not (= (list!3497 x!176370) (list!3497 x!176370))))))

(assert (=> bs!228810 (=> true e!542314)))

(declare-fun b!820844 () Bool)

(assert (=> b!820844 (= e!542314 (= (toValue!30 thiss!4819 x!176370) (toValue!30 thiss!4819 x!176370)))))

(assert (= (and bs!228810 (not res!378853)) b!820844))

(assert (=> m!1061825 s!151215))

(assert (=> m!1061825 s!151215))

(declare-fun bs!228811 () Bool)

(declare-fun s!151217 () Bool)

(assert (= bs!228811 (and neg-inst!652 s!151217)))

(declare-fun res!378854 () Bool)

(declare-fun e!542315 () Bool)

(assert (=> bs!228811 (=> res!378854 e!542315)))

(assert (=> bs!228811 (= res!378854 (not (= (list!3497 x!176370) (list!3497 x!176369))))))

(assert (=> bs!228811 (=> true e!542315)))

(declare-fun b!820845 () Bool)

(assert (=> b!820845 (= e!542315 (= (toValue!30 thiss!4819 x!176370) (toValue!30 thiss!4819 x!176369)))))

(assert (= (and bs!228811 (not res!378854)) b!820845))

(declare-fun bs!228812 () Bool)

(assert (= bs!228812 (and m!1061815 m!1061825)))

(assert (=> bs!228812 m!1061825))

(assert (=> bs!228812 m!1061815))

(assert (=> bs!228812 s!151217))

(declare-fun bs!228813 () Bool)

(declare-fun s!151219 () Bool)

(assert (= bs!228813 (and neg-inst!652 s!151219)))

(declare-fun res!378855 () Bool)

(declare-fun e!542316 () Bool)

(assert (=> bs!228813 (=> res!378855 e!542316)))

(assert (=> bs!228813 (= res!378855 (not (= (list!3497 x!176369) (list!3497 x!176369))))))

(assert (=> bs!228813 (=> true e!542316)))

(declare-fun b!820846 () Bool)

(assert (=> b!820846 (= e!542316 (= (toValue!30 thiss!4819 x!176369) (toValue!30 thiss!4819 x!176369)))))

(assert (= (and bs!228813 (not res!378855)) b!820846))

(assert (=> m!1061815 s!151219))

(declare-fun bs!228814 () Bool)

(declare-fun s!151221 () Bool)

(assert (= bs!228814 (and neg-inst!652 s!151221)))

(declare-fun res!378856 () Bool)

(declare-fun e!542317 () Bool)

(assert (=> bs!228814 (=> res!378856 e!542317)))

(assert (=> bs!228814 (= res!378856 (not (= (list!3497 x!176369) (list!3497 x!176370))))))

(assert (=> bs!228814 (=> true e!542317)))

(declare-fun b!820847 () Bool)

(assert (=> b!820847 (= e!542317 (= (toValue!30 thiss!4819 x!176369) (toValue!30 thiss!4819 x!176370)))))

(assert (= (and bs!228814 (not res!378856)) b!820847))

(assert (=> bs!228812 m!1061815))

(assert (=> bs!228812 m!1061825))

(assert (=> bs!228812 s!151221))

(assert (=> m!1061815 s!151219))

(declare-fun bs!228815 () Bool)

(declare-fun s!151223 () Bool)

(assert (= bs!228815 (and neg-inst!652 s!151223)))

(declare-fun res!378857 () Bool)

(declare-fun e!542318 () Bool)

(assert (=> bs!228815 (=> res!378857 e!542318)))

(assert (=> bs!228815 (= res!378857 (not (= (list!3497 x!176370) (list!3497 x!176371))))))

(assert (=> bs!228815 (=> true e!542318)))

(declare-fun b!820848 () Bool)

(assert (=> b!820848 (= e!542318 (= (toValue!30 thiss!4819 x!176370) (toValue!30 thiss!4819 x!176371)))))

(assert (= (and bs!228815 (not res!378857)) b!820848))

(declare-fun bs!228816 () Bool)

(assert (= bs!228816 (and m!1061835 m!1061825)))

(assert (=> bs!228816 m!1061825))

(assert (=> bs!228816 m!1061827))

(assert (=> bs!228816 s!151223))

(declare-fun bs!228817 () Bool)

(declare-fun s!151225 () Bool)

(assert (= bs!228817 (and neg-inst!652 s!151225)))

(declare-fun res!378858 () Bool)

(declare-fun e!542319 () Bool)

(assert (=> bs!228817 (=> res!378858 e!542319)))

(assert (=> bs!228817 (= res!378858 (not (= (list!3497 x!176369) (list!3497 x!176371))))))

(assert (=> bs!228817 (=> true e!542319)))

(declare-fun b!820849 () Bool)

(assert (=> b!820849 (= e!542319 (= (toValue!30 thiss!4819 x!176369) (toValue!30 thiss!4819 x!176371)))))

(assert (= (and bs!228817 (not res!378858)) b!820849))

(declare-fun bs!228818 () Bool)

(assert (= bs!228818 (and m!1061835 m!1061815)))

(assert (=> bs!228818 m!1061815))

(assert (=> bs!228818 m!1061827))

(assert (=> bs!228818 s!151225))

(declare-fun bs!228819 () Bool)

(declare-fun s!151227 () Bool)

(assert (= bs!228819 (and neg-inst!652 s!151227)))

(declare-fun res!378859 () Bool)

(declare-fun e!542320 () Bool)

(assert (=> bs!228819 (=> res!378859 e!542320)))

(assert (=> bs!228819 (= res!378859 (not (= (list!3497 x!176371) (list!3497 x!176371))))))

(assert (=> bs!228819 (=> true e!542320)))

(declare-fun b!820850 () Bool)

(assert (=> b!820850 (= e!542320 (= (toValue!30 thiss!4819 x!176371) (toValue!30 thiss!4819 x!176371)))))

(assert (= (and bs!228819 (not res!378859)) b!820850))

(assert (=> m!1061835 m!1061827))

(assert (=> m!1061835 m!1061827))

(assert (=> m!1061835 s!151227))

(declare-fun bs!228820 () Bool)

(declare-fun s!151229 () Bool)

(assert (= bs!228820 (and neg-inst!652 s!151229)))

(declare-fun res!378860 () Bool)

(declare-fun e!542321 () Bool)

(assert (=> bs!228820 (=> res!378860 e!542321)))

(assert (=> bs!228820 (= res!378860 (not (= (list!3497 x!176371) (list!3497 x!176370))))))

(assert (=> bs!228820 (=> true e!542321)))

(declare-fun b!820851 () Bool)

(assert (=> b!820851 (= e!542321 (= (toValue!30 thiss!4819 x!176371) (toValue!30 thiss!4819 x!176370)))))

(assert (= (and bs!228820 (not res!378860)) b!820851))

(assert (=> bs!228816 m!1061827))

(assert (=> bs!228816 m!1061825))

(assert (=> bs!228816 s!151229))

(declare-fun bs!228821 () Bool)

(declare-fun s!151231 () Bool)

(assert (= bs!228821 (and neg-inst!652 s!151231)))

(declare-fun res!378861 () Bool)

(declare-fun e!542322 () Bool)

(assert (=> bs!228821 (=> res!378861 e!542322)))

(assert (=> bs!228821 (= res!378861 (not (= (list!3497 x!176371) (list!3497 x!176369))))))

(assert (=> bs!228821 (=> true e!542322)))

(declare-fun b!820852 () Bool)

(assert (=> b!820852 (= e!542322 (= (toValue!30 thiss!4819 x!176371) (toValue!30 thiss!4819 x!176369)))))

(assert (= (and bs!228821 (not res!378861)) b!820852))

(assert (=> bs!228818 m!1061827))

(assert (=> bs!228818 m!1061815))

(assert (=> bs!228818 s!151231))

(assert (=> m!1061835 s!151227))

(declare-fun bs!228822 () Bool)

(assert (= bs!228822 (and m!1061817 m!1061825)))

(assert (=> bs!228822 s!151217))

(declare-fun bs!228823 () Bool)

(assert (= bs!228823 (and m!1061817 m!1061835)))

(assert (=> bs!228823 s!151231))

(declare-fun bs!228824 () Bool)

(assert (= bs!228824 (and m!1061817 m!1061815)))

(assert (=> bs!228824 s!151219))

(assert (=> m!1061817 s!151219))

(assert (=> bs!228822 s!151221))

(assert (=> bs!228823 s!151225))

(assert (=> bs!228824 s!151219))

(assert (=> m!1061817 s!151219))

(declare-fun bs!228825 () Bool)

(assert (= bs!228825 (and m!1061827 m!1061825)))

(assert (=> bs!228825 s!151223))

(declare-fun bs!228826 () Bool)

(assert (= bs!228826 (and m!1061827 m!1061835)))

(assert (=> bs!228826 s!151227))

(declare-fun bs!228827 () Bool)

(assert (= bs!228827 (and m!1061827 m!1061815 m!1061817)))

(assert (=> bs!228827 s!151225))

(assert (=> m!1061827 s!151227))

(assert (=> bs!228825 s!151229))

(assert (=> bs!228826 s!151227))

(assert (=> bs!228827 s!151231))

(assert (=> m!1061827 s!151227))

(declare-fun bs!228828 () Bool)

(assert (= bs!228828 (and m!1061833 m!1061825)))

(assert (=> bs!228828 s!151215))

(declare-fun bs!228829 () Bool)

(assert (= bs!228829 (and m!1061833 m!1061835 m!1061827)))

(assert (=> bs!228829 s!151229))

(declare-fun bs!228830 () Bool)

(assert (= bs!228830 (and m!1061833 m!1061815 m!1061817)))

(assert (=> bs!228830 s!151221))

(assert (=> m!1061833 s!151215))

(assert (=> bs!228828 s!151215))

(assert (=> bs!228829 s!151223))

(assert (=> bs!228830 s!151217))

(assert (=> m!1061833 s!151215))

(declare-fun bs!228831 () Bool)

(declare-fun s!151233 () Bool)

(assert (= bs!228831 (and neg-inst!652 s!151233)))

(declare-fun res!378862 () Bool)

(declare-fun e!542323 () Bool)

(assert (=> bs!228831 (=> res!378862 e!542323)))

(assert (=> bs!228831 (= res!378862 (not (= (list!3497 x!176370) (list!3497 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369))))))))

(assert (=> bs!228831 (=> true e!542323)))

(declare-fun b!820853 () Bool)

(assert (=> b!820853 (= e!542323 (= (toValue!30 thiss!4819 x!176370) (toValue!30 thiss!4819 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369)))))))

(assert (= (and bs!228831 (not res!378862)) b!820853))

(declare-fun bs!228832 () Bool)

(assert (= bs!228832 (and m!1061823 m!1061825 m!1061833)))

(assert (=> bs!228832 m!1061825))

(assert (=> bs!228832 m!1061823))

(assert (=> bs!228832 s!151233))

(declare-fun bs!228833 () Bool)

(declare-fun s!151235 () Bool)

(assert (= bs!228833 (and neg-inst!652 s!151235)))

(declare-fun res!378863 () Bool)

(declare-fun e!542324 () Bool)

(assert (=> bs!228833 (=> res!378863 e!542324)))

(assert (=> bs!228833 (= res!378863 (not (= (list!3497 x!176371) (list!3497 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369))))))))

(assert (=> bs!228833 (=> true e!542324)))

(declare-fun b!820854 () Bool)

(assert (=> b!820854 (= e!542324 (= (toValue!30 thiss!4819 x!176371) (toValue!30 thiss!4819 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369)))))))

(assert (= (and bs!228833 (not res!378863)) b!820854))

(declare-fun bs!228834 () Bool)

(assert (= bs!228834 (and m!1061823 m!1061835 m!1061827)))

(assert (=> bs!228834 m!1061827))

(assert (=> bs!228834 m!1061823))

(assert (=> bs!228834 s!151235))

(declare-fun bs!228835 () Bool)

(declare-fun s!151237 () Bool)

(assert (= bs!228835 (and neg-inst!652 s!151237)))

(declare-fun res!378864 () Bool)

(declare-fun e!542325 () Bool)

(assert (=> bs!228835 (=> res!378864 e!542325)))

(assert (=> bs!228835 (= res!378864 (not (= (list!3497 x!176369) (list!3497 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369))))))))

(assert (=> bs!228835 (=> true e!542325)))

(declare-fun b!820855 () Bool)

(assert (=> b!820855 (= e!542325 (= (toValue!30 thiss!4819 x!176369) (toValue!30 thiss!4819 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369)))))))

(assert (= (and bs!228835 (not res!378864)) b!820855))

(declare-fun bs!228836 () Bool)

(assert (= bs!228836 (and m!1061823 m!1061815 m!1061817)))

(assert (=> bs!228836 m!1061815))

(assert (=> bs!228836 m!1061823))

(assert (=> bs!228836 s!151237))

(declare-fun bs!228837 () Bool)

(declare-fun s!151239 () Bool)

(assert (= bs!228837 (and neg-inst!652 s!151239)))

(declare-fun res!378865 () Bool)

(declare-fun e!542326 () Bool)

(assert (=> bs!228837 (=> res!378865 e!542326)))

(assert (=> bs!228837 (= res!378865 (not (= (list!3497 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369))) (list!3497 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369))))))))

(assert (=> bs!228837 (=> true e!542326)))

(declare-fun b!820856 () Bool)

(assert (=> b!820856 (= e!542326 (= (toValue!30 thiss!4819 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369))) (toValue!30 thiss!4819 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369)))))))

(assert (= (and bs!228837 (not res!378865)) b!820856))

(assert (=> m!1061823 s!151239))

(declare-fun bs!228838 () Bool)

(declare-fun s!151241 () Bool)

(assert (= bs!228838 (and neg-inst!652 s!151241)))

(declare-fun res!378866 () Bool)

(declare-fun e!542327 () Bool)

(assert (=> bs!228838 (=> res!378866 e!542327)))

(assert (=> bs!228838 (= res!378866 (not (= (list!3497 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369))) (list!3497 x!176370))))))

(assert (=> bs!228838 (=> true e!542327)))

(declare-fun b!820857 () Bool)

(assert (=> b!820857 (= e!542327 (= (toValue!30 thiss!4819 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369))) (toValue!30 thiss!4819 x!176370)))))

(assert (= (and bs!228838 (not res!378866)) b!820857))

(assert (=> bs!228832 m!1061823))

(assert (=> bs!228832 m!1061825))

(assert (=> bs!228832 s!151241))

(declare-fun bs!228839 () Bool)

(declare-fun s!151243 () Bool)

(assert (= bs!228839 (and neg-inst!652 s!151243)))

(declare-fun res!378867 () Bool)

(declare-fun e!542328 () Bool)

(assert (=> bs!228839 (=> res!378867 e!542328)))

(assert (=> bs!228839 (= res!378867 (not (= (list!3497 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369))) (list!3497 x!176371))))))

(assert (=> bs!228839 (=> true e!542328)))

(declare-fun b!820858 () Bool)

(assert (=> b!820858 (= e!542328 (= (toValue!30 thiss!4819 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369))) (toValue!30 thiss!4819 x!176371)))))

(assert (= (and bs!228839 (not res!378867)) b!820858))

(assert (=> bs!228834 m!1061823))

(assert (=> bs!228834 m!1061827))

(assert (=> bs!228834 s!151243))

(declare-fun bs!228840 () Bool)

(declare-fun s!151245 () Bool)

(assert (= bs!228840 (and neg-inst!652 s!151245)))

(declare-fun res!378868 () Bool)

(declare-fun e!542329 () Bool)

(assert (=> bs!228840 (=> res!378868 e!542329)))

(assert (=> bs!228840 (= res!378868 (not (= (list!3497 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369))) (list!3497 x!176369))))))

(assert (=> bs!228840 (=> true e!542329)))

(declare-fun b!820859 () Bool)

(assert (=> b!820859 (= e!542329 (= (toValue!30 thiss!4819 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369))) (toValue!30 thiss!4819 x!176369)))))

(assert (= (and bs!228840 (not res!378868)) b!820859))

(assert (=> bs!228836 m!1061823))

(assert (=> bs!228836 m!1061815))

(assert (=> bs!228836 s!151245))

(assert (=> m!1061823 s!151239))

(declare-fun bs!228841 () Bool)

(assert (= bs!228841 (and neg-inst!652 b!820831)))

(assert (=> bs!228841 (= true inst!653)))

(declare-fun res!378851 () Bool)

(declare-fun e!542308 () Bool)

(assert (=> start!73318 (=> res!378851 e!542308)))

(declare-fun lambda!24448 () Int)

(declare-fun Forall!384 (Int) Bool)

(assert (=> start!73318 (= res!378851 (not (Forall!384 lambda!24448)))))

(assert (=> start!73318 (= (Forall!384 lambda!24448) inst!652)))

(assert (=> start!73318 (not e!542308)))

(assert (=> start!73318 true))

(declare-fun e!542309 () Bool)

(assert (=> b!820830 (= e!542308 e!542309)))

(declare-fun res!378850 () Bool)

(assert (=> b!820830 (=> res!378850 e!542309)))

(declare-fun lambda!24449 () Int)

(declare-fun lambda!24450 () Int)

(declare-fun semiInverseModEq!629 (Int Int) Bool)

(assert (=> b!820830 (= res!378850 (not (semiInverseModEq!629 lambda!24449 lambda!24450)))))

(assert (=> b!820830 (= (semiInverseModEq!629 lambda!24449 lambda!24450) (Forall!384 lambda!24448))))

(declare-fun lambda!24451 () Int)

(declare-fun Forall2!298 (Int) Bool)

(assert (=> b!820831 (= e!542309 (Forall2!298 lambda!24451))))

(assert (=> b!820831 (= (Forall2!298 lambda!24451) inst!653)))

(assert (= neg-inst!653 inst!652))

(assert (= (and start!73318 (not res!378851)) b!820830))

(assert (= (and b!820830 (not res!378850)) b!820831))

(assert (= neg-inst!652 inst!653))

(declare-fun m!1061841 () Bool)

(assert (=> start!73318 m!1061841))

(assert (=> start!73318 m!1061841))

(declare-fun m!1061843 () Bool)

(assert (=> b!820830 m!1061843))

(assert (=> b!820830 m!1061843))

(assert (=> b!820830 m!1061841))

(declare-fun m!1061845 () Bool)

(assert (=> b!820831 m!1061845))

(assert (=> b!820831 m!1061845))

(push 1)

(assert (not b!820857))

(assert (not b!820859))

(assert (not bs!228815))

(assert (not b!820848))

(assert (not bs!228837))

(assert (not bs!228810))

(assert (not b!820849))

(assert (not bs!228811))

(assert (not bs!228813))

(assert (not bs!228838))

(assert (not bs!228831))

(assert (not bs!228820))

(assert (not bs!228839))

(assert (not bs!228821))

(assert (not b!820854))

(assert (not bs!228808))

(assert (not b!820830))

(assert (not b!820847))

(assert (not bs!228817))

(assert (not b!820856))

(assert (not b!820850))

(assert (not b!820841))

(assert (not bs!228840))

(assert (not b!820831))

(assert (not bs!228819))

(assert (not b!820843))

(assert (not start!73318))

(assert (not b!820853))

(assert (not b!820851))

(assert (not bs!228835))

(assert (not bs!228814))

(assert (not b!820844))

(assert (not b!820840))

(assert (not b!820855))

(assert (not b!820858))

(assert (not b!820846))

(assert (not bs!228833))

(assert (not b!820845))

(assert (not b!820852))

(assert (not b!820842))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!258492 () Bool)

(declare-fun efficientList!126 (BalanceConc!5894) List!8838)

(assert (=> d!258492 (= (toValue!30 thiss!4819 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369))) (BytesLiteralValue!1713 (efficientList!126 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369)))))))

(declare-fun bs!228886 () Bool)

(assert (= bs!228886 d!258492))

(assert (=> bs!228886 m!1061819))

(declare-fun m!1061899 () Bool)

(assert (=> bs!228886 m!1061899))

(assert (=> b!820858 d!258492))

(declare-fun d!258502 () Bool)

(assert (=> d!258502 (= (toValue!30 thiss!4819 x!176371) (BytesLiteralValue!1713 (efficientList!126 x!176371)))))

(declare-fun bs!228887 () Bool)

(assert (= bs!228887 d!258502))

(declare-fun m!1061901 () Bool)

(assert (=> bs!228887 m!1061901))

(assert (=> b!820858 d!258502))

(declare-fun d!258504 () Bool)

(declare-fun list!3500 (Conc!2940) List!8838)

(assert (=> d!258504 (= (list!3497 x!176371) (list!3500 (c!133015 x!176371)))))

(declare-fun bs!228895 () Bool)

(assert (= bs!228895 d!258504))

(declare-fun m!1061903 () Bool)

(assert (=> bs!228895 m!1061903))

(assert (=> bs!228819 d!258504))

(declare-fun d!258506 () Bool)

(assert (=> d!258506 (= (list!3497 x!176369) (list!3500 (c!133015 x!176369)))))

(declare-fun bs!228897 () Bool)

(assert (= bs!228897 d!258506))

(declare-fun m!1061905 () Bool)

(assert (=> bs!228897 m!1061905))

(assert (=> bs!228835 d!258506))

(declare-fun d!258508 () Bool)

(assert (=> d!258508 (= (list!3497 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369))) (list!3500 (c!133015 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369)))))))

(declare-fun bs!228899 () Bool)

(assert (= bs!228899 d!258508))

(declare-fun m!1061907 () Bool)

(assert (=> bs!228899 m!1061907))

(assert (=> bs!228835 d!258508))

(declare-fun d!258510 () Bool)

(assert (=> d!258510 (= (toValue!30 thiss!4819 x!176369) (BytesLiteralValue!1713 (efficientList!126 x!176369)))))

(declare-fun bs!228901 () Bool)

(assert (= bs!228901 d!258510))

(declare-fun m!1061909 () Bool)

(assert (=> bs!228901 m!1061909))

(assert (=> b!820846 d!258510))

(assert (=> bs!228840 d!258508))

(assert (=> bs!228840 d!258506))

(assert (=> b!820855 d!258510))

(assert (=> b!820855 d!258492))

(assert (=> bs!228814 d!258506))

(declare-fun d!258512 () Bool)

(assert (=> d!258512 (= (list!3497 x!176370) (list!3500 (c!133015 x!176370)))))

(declare-fun bs!228903 () Bool)

(assert (= bs!228903 d!258512))

(declare-fun m!1061911 () Bool)

(assert (=> bs!228903 m!1061911))

(assert (=> bs!228814 d!258512))

(assert (=> b!820852 d!258502))

(assert (=> b!820852 d!258510))

(assert (=> b!820854 d!258502))

(assert (=> b!820854 d!258492))

(assert (=> b!820857 d!258492))

(declare-fun d!258514 () Bool)

(assert (=> d!258514 (= (toValue!30 thiss!4819 x!176370) (BytesLiteralValue!1713 (efficientList!126 x!176370)))))

(declare-fun bs!228906 () Bool)

(assert (= bs!228906 d!258514))

(declare-fun m!1061913 () Bool)

(assert (=> bs!228906 m!1061913))

(assert (=> b!820857 d!258514))

(assert (=> bs!228817 d!258506))

(assert (=> bs!228817 d!258504))

(assert (=> bs!228813 d!258506))

(assert (=> bs!228839 d!258508))

(assert (=> bs!228839 d!258504))

(assert (=> b!820849 d!258510))

(assert (=> b!820849 d!258502))

(assert (=> bs!228811 d!258512))

(assert (=> bs!228811 d!258506))

(assert (=> b!820848 d!258514))

(assert (=> b!820848 d!258502))

(assert (=> b!820853 d!258514))

(assert (=> b!820853 d!258492))

(assert (=> b!820856 d!258492))

(assert (=> b!820851 d!258502))

(assert (=> b!820851 d!258514))

(assert (=> bs!228833 d!258504))

(assert (=> bs!228833 d!258508))

(assert (=> b!820845 d!258514))

(assert (=> b!820845 d!258510))

(assert (=> bs!228838 d!258508))

(assert (=> bs!228838 d!258512))

(assert (=> bs!228821 d!258504))

(assert (=> bs!228821 d!258506))

(assert (=> b!820847 d!258510))

(assert (=> b!820847 d!258514))

(assert (=> bs!228837 d!258508))

(assert (=> b!820859 d!258492))

(assert (=> b!820859 d!258510))

(assert (=> b!820850 d!258502))

(assert (=> bs!228810 d!258512))

(assert (=> bs!228815 d!258512))

(assert (=> bs!228815 d!258504))

(assert (=> bs!228820 d!258504))

(assert (=> bs!228820 d!258512))

(assert (=> bs!228831 d!258512))

(assert (=> bs!228831 d!258508))

(assert (=> b!820844 d!258514))

(declare-fun bs!228910 () Bool)

(assert (= bs!228910 (and m!1061825 b!820844)))

(assert (=> bs!228910 m!1061833))

(assert (=> bs!228910 m!1061833))

(declare-fun bs!228911 () Bool)

(assert (= bs!228911 (and m!1061815 m!1061825 b!820845)))

(assert (=> bs!228911 m!1061833))

(assert (=> bs!228911 m!1061817))

(declare-fun bs!228912 () Bool)

(assert (= bs!228912 (and m!1061815 b!820846)))

(assert (=> bs!228912 m!1061817))

(assert (=> bs!228912 m!1061817))

(declare-fun bs!228913 () Bool)

(assert (= bs!228913 (and m!1061815 m!1061825 b!820847)))

(assert (=> bs!228913 m!1061817))

(assert (=> bs!228913 m!1061833))

(declare-fun bs!228914 () Bool)

(assert (= bs!228914 (and m!1061835 m!1061825 b!820848)))

(assert (=> bs!228914 m!1061833))

(assert (=> bs!228914 m!1061835))

(declare-fun bs!228915 () Bool)

(assert (= bs!228915 (and m!1061835 m!1061815 b!820849)))

(assert (=> bs!228915 m!1061817))

(assert (=> bs!228915 m!1061835))

(declare-fun bs!228916 () Bool)

(assert (= bs!228916 (and m!1061835 b!820850)))

(assert (=> bs!228916 m!1061835))

(assert (=> bs!228916 m!1061835))

(declare-fun bs!228917 () Bool)

(assert (= bs!228917 (and m!1061835 m!1061825 b!820851)))

(assert (=> bs!228917 m!1061835))

(assert (=> bs!228917 m!1061833))

(declare-fun bs!228918 () Bool)

(assert (= bs!228918 (and m!1061835 m!1061815 b!820852)))

(assert (=> bs!228918 m!1061835))

(assert (=> bs!228918 m!1061817))

(declare-fun bs!228919 () Bool)

(assert (= bs!228919 (and m!1061823 m!1061825 m!1061833 b!820853)))

(assert (=> bs!228919 m!1061833))

(declare-fun m!1061915 () Bool)

(assert (=> bs!228919 m!1061915))

(declare-fun bs!228920 () Bool)

(assert (= bs!228920 (and m!1061823 m!1061835 m!1061827 b!820854)))

(assert (=> bs!228920 m!1061835))

(assert (=> bs!228920 m!1061915))

(declare-fun bs!228921 () Bool)

(assert (= bs!228921 (and m!1061823 m!1061815 m!1061817 b!820855)))

(assert (=> bs!228921 m!1061817))

(assert (=> bs!228921 m!1061915))

(declare-fun bs!228922 () Bool)

(assert (= bs!228922 (and m!1061823 b!820856)))

(assert (=> bs!228922 m!1061915))

(assert (=> bs!228922 m!1061915))

(declare-fun bs!228923 () Bool)

(assert (= bs!228923 (and m!1061823 m!1061825 m!1061833 b!820857)))

(assert (=> bs!228923 m!1061915))

(assert (=> bs!228923 m!1061833))

(declare-fun bs!228924 () Bool)

(assert (= bs!228924 (and m!1061823 m!1061835 m!1061827 b!820858)))

(assert (=> bs!228924 m!1061915))

(assert (=> bs!228924 m!1061835))

(declare-fun bs!228925 () Bool)

(assert (= bs!228925 (and m!1061823 m!1061815 m!1061817 b!820859)))

(assert (=> bs!228925 m!1061915))

(assert (=> bs!228925 m!1061817))

(push 1)

(assert (not d!258510))

(assert (not bs!228808))

(assert (not b!820830))

(assert (not d!258512))

(assert (not d!258506))

(assert (not b!820843))

(assert (not start!73318))

(assert (not d!258504))

(assert (not b!820840))

(assert (not b!820842))

(assert (not d!258502))

(assert (not d!258514))

(assert (not b!820841))

(assert (not b!820831))

(assert (not d!258492))

(assert (not d!258508))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!258516 () Bool)

(declare-fun lt!317156 () List!8838)

(assert (=> d!258516 (= lt!317156 (list!3497 x!176369))))

(declare-fun efficientList!128 (Conc!2940 List!8838) List!8838)

(declare-fun efficientList$default$2!43 (Conc!2940) List!8838)

(assert (=> d!258516 (= lt!317156 (efficientList!128 (c!133015 x!176369) (efficientList$default$2!43 (c!133015 x!176369))))))

(assert (=> d!258516 (= (efficientList!126 x!176369) lt!317156)))

(declare-fun bs!228926 () Bool)

(assert (= bs!228926 d!258516))

(assert (=> bs!228926 m!1061815))

(declare-fun m!1061917 () Bool)

(assert (=> bs!228926 m!1061917))

(assert (=> bs!228926 m!1061917))

(declare-fun m!1061919 () Bool)

(assert (=> bs!228926 m!1061919))

(assert (=> d!258510 d!258516))

(declare-fun b!820916 () Bool)

(declare-fun e!542374 () List!8838)

(assert (=> b!820916 (= e!542374 Nil!8822)))

(declare-fun b!820918 () Bool)

(declare-fun e!542375 () List!8838)

(declare-fun list!3501 (IArray!5885) List!8838)

(assert (=> b!820918 (= e!542375 (list!3501 (xs!5629 (c!133015 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369))))))))

(declare-fun b!820919 () Bool)

(declare-fun ++!2262 (List!8838 List!8838) List!8838)

(assert (=> b!820919 (= e!542375 (++!2262 (list!3500 (left!6537 (c!133015 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369))))) (list!3500 (right!6867 (c!133015 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369)))))))))

(declare-fun b!820917 () Bool)

(assert (=> b!820917 (= e!542374 e!542375)))

(declare-fun c!133022 () Bool)

(assert (=> b!820917 (= c!133022 (is-Leaf!4318 (c!133015 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369)))))))

(declare-fun d!258518 () Bool)

(declare-fun c!133021 () Bool)

(assert (=> d!258518 (= c!133021 (is-Empty!2940 (c!133015 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369)))))))

(assert (=> d!258518 (= (list!3500 (c!133015 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369)))) e!542374)))

(assert (= (and d!258518 c!133021) b!820916))

(assert (= (and d!258518 (not c!133021)) b!820917))

(assert (= (and b!820917 c!133022) b!820918))

(assert (= (and b!820917 (not c!133022)) b!820919))

(declare-fun m!1061921 () Bool)

(assert (=> b!820918 m!1061921))

(declare-fun m!1061923 () Bool)

(assert (=> b!820919 m!1061923))

(declare-fun m!1061925 () Bool)

(assert (=> b!820919 m!1061925))

(assert (=> b!820919 m!1061923))

(assert (=> b!820919 m!1061925))

(declare-fun m!1061927 () Bool)

(assert (=> b!820919 m!1061927))

(assert (=> d!258508 d!258518))

(declare-fun d!258520 () Bool)

(declare-fun lt!317157 () List!8838)

(assert (=> d!258520 (= lt!317157 (list!3497 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369))))))

(assert (=> d!258520 (= lt!317157 (efficientList!128 (c!133015 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369))) (efficientList$default$2!43 (c!133015 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369))))))))

(assert (=> d!258520 (= (efficientList!126 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369))) lt!317157)))

(declare-fun bs!228927 () Bool)

(assert (= bs!228927 d!258520))

(assert (=> bs!228927 m!1061819))

(assert (=> bs!228927 m!1061823))

(declare-fun m!1061929 () Bool)

(assert (=> bs!228927 m!1061929))

(assert (=> bs!228927 m!1061929))

(declare-fun m!1061931 () Bool)

(assert (=> bs!228927 m!1061931))

(assert (=> d!258492 d!258520))

(declare-fun b!820920 () Bool)

(declare-fun e!542376 () List!8838)

(assert (=> b!820920 (= e!542376 Nil!8822)))

(declare-fun b!820922 () Bool)

(declare-fun e!542377 () List!8838)

(assert (=> b!820922 (= e!542377 (list!3501 (xs!5629 (c!133015 x!176371))))))

(declare-fun b!820923 () Bool)

(assert (=> b!820923 (= e!542377 (++!2262 (list!3500 (left!6537 (c!133015 x!176371))) (list!3500 (right!6867 (c!133015 x!176371)))))))

(declare-fun b!820921 () Bool)

(assert (=> b!820921 (= e!542376 e!542377)))

(declare-fun c!133024 () Bool)

(assert (=> b!820921 (= c!133024 (is-Leaf!4318 (c!133015 x!176371)))))

(declare-fun d!258522 () Bool)

(declare-fun c!133023 () Bool)

(assert (=> d!258522 (= c!133023 (is-Empty!2940 (c!133015 x!176371)))))

(assert (=> d!258522 (= (list!3500 (c!133015 x!176371)) e!542376)))

(assert (= (and d!258522 c!133023) b!820920))

(assert (= (and d!258522 (not c!133023)) b!820921))

(assert (= (and b!820921 c!133024) b!820922))

(assert (= (and b!820921 (not c!133024)) b!820923))

(declare-fun m!1061933 () Bool)

(assert (=> b!820922 m!1061933))

(declare-fun m!1061935 () Bool)

(assert (=> b!820923 m!1061935))

(declare-fun m!1061937 () Bool)

(assert (=> b!820923 m!1061937))

(assert (=> b!820923 m!1061935))

(assert (=> b!820923 m!1061937))

(declare-fun m!1061939 () Bool)

(assert (=> b!820923 m!1061939))

(assert (=> d!258504 d!258522))

(declare-fun b!820924 () Bool)

(declare-fun e!542378 () List!8838)

(assert (=> b!820924 (= e!542378 Nil!8822)))

(declare-fun b!820926 () Bool)

(declare-fun e!542379 () List!8838)

(assert (=> b!820926 (= e!542379 (list!3501 (xs!5629 (c!133015 x!176369))))))

(declare-fun b!820927 () Bool)

(assert (=> b!820927 (= e!542379 (++!2262 (list!3500 (left!6537 (c!133015 x!176369))) (list!3500 (right!6867 (c!133015 x!176369)))))))

(declare-fun b!820925 () Bool)

(assert (=> b!820925 (= e!542378 e!542379)))

(declare-fun c!133026 () Bool)

(assert (=> b!820925 (= c!133026 (is-Leaf!4318 (c!133015 x!176369)))))

(declare-fun d!258524 () Bool)

(declare-fun c!133025 () Bool)

(assert (=> d!258524 (= c!133025 (is-Empty!2940 (c!133015 x!176369)))))

(assert (=> d!258524 (= (list!3500 (c!133015 x!176369)) e!542378)))

(assert (= (and d!258524 c!133025) b!820924))

(assert (= (and d!258524 (not c!133025)) b!820925))

(assert (= (and b!820925 c!133026) b!820926))

(assert (= (and b!820925 (not c!133026)) b!820927))

(declare-fun m!1061941 () Bool)

(assert (=> b!820926 m!1061941))

(declare-fun m!1061943 () Bool)

(assert (=> b!820927 m!1061943))

(declare-fun m!1061945 () Bool)

(assert (=> b!820927 m!1061945))

(assert (=> b!820927 m!1061943))

(assert (=> b!820927 m!1061945))

(declare-fun m!1061947 () Bool)

(assert (=> b!820927 m!1061947))

(assert (=> d!258506 d!258524))

(declare-fun d!258526 () Bool)

(declare-fun lt!317158 () List!8838)

(assert (=> d!258526 (= lt!317158 (list!3497 x!176370))))

(assert (=> d!258526 (= lt!317158 (efficientList!128 (c!133015 x!176370) (efficientList$default$2!43 (c!133015 x!176370))))))

(assert (=> d!258526 (= (efficientList!126 x!176370) lt!317158)))

(declare-fun bs!228928 () Bool)

(assert (= bs!228928 d!258526))

(assert (=> bs!228928 m!1061825))

(declare-fun m!1061949 () Bool)

(assert (=> bs!228928 m!1061949))

(assert (=> bs!228928 m!1061949))

(declare-fun m!1061951 () Bool)

(assert (=> bs!228928 m!1061951))

(assert (=> d!258514 d!258526))

(declare-fun d!258528 () Bool)

(declare-fun lt!317159 () List!8838)

(assert (=> d!258528 (= lt!317159 (list!3497 x!176371))))

(assert (=> d!258528 (= lt!317159 (efficientList!128 (c!133015 x!176371) (efficientList$default$2!43 (c!133015 x!176371))))))

(assert (=> d!258528 (= (efficientList!126 x!176371) lt!317159)))

(declare-fun bs!228929 () Bool)

(assert (= bs!228929 d!258528))

(assert (=> bs!228929 m!1061827))

(declare-fun m!1061953 () Bool)

(assert (=> bs!228929 m!1061953))

(assert (=> bs!228929 m!1061953))

(declare-fun m!1061955 () Bool)

(assert (=> bs!228929 m!1061955))

(assert (=> d!258502 d!258528))

(declare-fun b!820928 () Bool)

(declare-fun e!542380 () List!8838)

(assert (=> b!820928 (= e!542380 Nil!8822)))

(declare-fun b!820930 () Bool)

(declare-fun e!542381 () List!8838)

(assert (=> b!820930 (= e!542381 (list!3501 (xs!5629 (c!133015 x!176370))))))

(declare-fun b!820931 () Bool)

(assert (=> b!820931 (= e!542381 (++!2262 (list!3500 (left!6537 (c!133015 x!176370))) (list!3500 (right!6867 (c!133015 x!176370)))))))

(declare-fun b!820929 () Bool)

(assert (=> b!820929 (= e!542380 e!542381)))

(declare-fun c!133028 () Bool)

(assert (=> b!820929 (= c!133028 (is-Leaf!4318 (c!133015 x!176370)))))

(declare-fun d!258530 () Bool)

(declare-fun c!133027 () Bool)

(assert (=> d!258530 (= c!133027 (is-Empty!2940 (c!133015 x!176370)))))

(assert (=> d!258530 (= (list!3500 (c!133015 x!176370)) e!542380)))

(assert (= (and d!258530 c!133027) b!820928))

(assert (= (and d!258530 (not c!133027)) b!820929))

(assert (= (and b!820929 c!133028) b!820930))

(assert (= (and b!820929 (not c!133028)) b!820931))

(declare-fun m!1061957 () Bool)

(assert (=> b!820930 m!1061957))

(declare-fun m!1061959 () Bool)

(assert (=> b!820931 m!1061959))

(declare-fun m!1061961 () Bool)

(assert (=> b!820931 m!1061961))

(assert (=> b!820931 m!1061959))

(assert (=> b!820931 m!1061961))

(declare-fun m!1061963 () Bool)

(assert (=> b!820931 m!1061963))

(assert (=> d!258512 d!258530))

(push 1)

(assert (not d!258528))

(assert (not b!820922))

(assert (not b!820830))

(assert (not d!258516))

(assert (not b!820926))

(assert (not start!73318))

(assert (not b!820927))

(assert (not b!820840))

(assert (not b!820923))

(assert (not b!820919))

(assert (not bs!228808))

(assert (not d!258520))

(assert (not b!820841))

(assert (not b!820831))

(assert (not b!820931))

(assert (not d!258526))

(assert (not b!820843))

(assert (not b!820842))

(assert (not b!820930))

(assert (not b!820918))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!258548 () Bool)

(declare-fun c!133043 () Bool)

(assert (=> d!258548 (= c!133043 (is-Node!2940 (c!133015 x!176369)))))

(declare-fun e!542398 () Bool)

(assert (=> d!258548 (= (inv!11195 (c!133015 x!176369)) e!542398)))

(declare-fun b!820962 () Bool)

(declare-fun inv!11199 (Conc!2940) Bool)

(assert (=> b!820962 (= e!542398 (inv!11199 (c!133015 x!176369)))))

(declare-fun b!820963 () Bool)

(declare-fun e!542399 () Bool)

(assert (=> b!820963 (= e!542398 e!542399)))

(declare-fun res!378912 () Bool)

(assert (=> b!820963 (= res!378912 (not (is-Leaf!4318 (c!133015 x!176369))))))

(assert (=> b!820963 (=> res!378912 e!542399)))

(declare-fun b!820964 () Bool)

(declare-fun inv!11200 (Conc!2940) Bool)

(assert (=> b!820964 (= e!542399 (inv!11200 (c!133015 x!176369)))))

(assert (= (and d!258548 c!133043) b!820962))

(assert (= (and d!258548 (not c!133043)) b!820963))

(assert (= (and b!820963 (not res!378912)) b!820964))

(declare-fun m!1062013 () Bool)

(assert (=> b!820962 m!1062013))

(declare-fun m!1062015 () Bool)

(assert (=> b!820964 m!1062015))

(assert (=> b!820840 d!258548))

(assert (=> b!820841 d!258514))

(assert (=> b!820841 d!258502))

(assert (=> bs!228808 d!258508))

(declare-fun d!258550 () Bool)

(declare-fun c!133047 () Bool)

(assert (=> d!258550 (= c!133047 (is-BytesLiteralValue!1713 (toValue!30 thiss!4819 x!176369)))))

(declare-fun e!542402 () BalanceConc!5894)

(assert (=> d!258550 (= (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369)) e!542402)))

(declare-fun b!820969 () Bool)

(declare-fun seqFromList!1510 (List!8838) BalanceConc!5894)

(assert (=> b!820969 (= e!542402 (seqFromList!1510 (value!53570 (toValue!30 thiss!4819 x!176369))))))

(declare-fun b!820970 () Bool)

(assert (=> b!820970 (= e!542402 (BalanceConc!5895 Empty!2940))))

(assert (= (and d!258550 c!133047) b!820969))

(assert (= (and d!258550 (not c!133047)) b!820970))

(declare-fun m!1062017 () Bool)

(assert (=> b!820969 m!1062017))

(assert (=> bs!228808 d!258550))

(assert (=> bs!228808 d!258510))

(assert (=> bs!228808 d!258506))

(assert (=> d!258526 d!258512))

(declare-fun b!820983 () Bool)

(declare-datatypes ((Unit!13341 0))(
  ( (Unit!13342) )
))
(declare-fun lt!317176 () Unit!13341)

(declare-fun lt!317177 () Unit!13341)

(assert (=> b!820983 (= lt!317176 lt!317177)))

(declare-fun lt!317178 () List!8838)

(declare-fun call!47064 () List!8838)

(declare-fun lt!317180 () List!8838)

(assert (=> b!820983 (= (++!2262 (++!2262 lt!317180 lt!317178) (efficientList$default$2!43 (c!133015 x!176370))) (++!2262 lt!317180 call!47064))))

(declare-fun lemmaConcatAssociativity!716 (List!8838 List!8838 List!8838) Unit!13341)

(assert (=> b!820983 (= lt!317177 (lemmaConcatAssociativity!716 lt!317180 lt!317178 (efficientList$default$2!43 (c!133015 x!176370))))))

(assert (=> b!820983 (= lt!317178 (list!3500 (right!6867 (c!133015 x!176370))))))

(assert (=> b!820983 (= lt!317180 (list!3500 (left!6537 (c!133015 x!176370))))))

(declare-fun e!542411 () List!8838)

(assert (=> b!820983 (= e!542411 (efficientList!128 (left!6537 (c!133015 x!176370)) (efficientList!128 (right!6867 (c!133015 x!176370)) (efficientList$default$2!43 (c!133015 x!176370)))))))

(declare-fun b!820984 () Bool)

(declare-fun e!542409 () List!8838)

(assert (=> b!820984 (= e!542409 (efficientList$default$2!43 (c!133015 x!176370)))))

(declare-fun b!820985 () Bool)

(assert (=> b!820985 (= e!542409 e!542411)))

(declare-fun c!133056 () Bool)

(assert (=> b!820985 (= c!133056 (is-Leaf!4318 (c!133015 x!176370)))))

(declare-fun b!820986 () Bool)

(assert (=> b!820986 (= e!542411 call!47064)))

(declare-fun bm!47059 () Bool)

(declare-fun c!133055 () Bool)

(assert (=> bm!47059 (= c!133055 c!133056)))

(declare-fun e!542410 () List!8838)

(assert (=> bm!47059 (= call!47064 (++!2262 e!542410 (efficientList$default$2!43 (c!133015 x!176370))))))

(declare-fun b!820987 () Bool)

(declare-fun efficientList!130 (IArray!5885) List!8838)

(assert (=> b!820987 (= e!542410 (efficientList!130 (xs!5629 (c!133015 x!176370))))))

(declare-fun d!258552 () Bool)

(declare-fun lt!317179 () List!8838)

(assert (=> d!258552 (= lt!317179 (++!2262 (list!3500 (c!133015 x!176370)) (efficientList$default$2!43 (c!133015 x!176370))))))

(assert (=> d!258552 (= lt!317179 e!542409)))

(declare-fun c!133054 () Bool)

(assert (=> d!258552 (= c!133054 (is-Empty!2940 (c!133015 x!176370)))))

(assert (=> d!258552 (= (efficientList!128 (c!133015 x!176370) (efficientList$default$2!43 (c!133015 x!176370))) lt!317179)))

(declare-fun b!820988 () Bool)

(assert (=> b!820988 (= e!542410 lt!317178)))

(assert (= (and d!258552 c!133054) b!820984))

(assert (= (and d!258552 (not c!133054)) b!820985))

(assert (= (and b!820985 c!133056) b!820986))

(assert (= (and b!820985 (not c!133056)) b!820983))

(assert (= (or b!820986 b!820983) bm!47059))

(assert (= (and bm!47059 c!133055) b!820987))

(assert (= (and bm!47059 (not c!133055)) b!820988))

(assert (=> b!820983 m!1061949))

(declare-fun m!1062019 () Bool)

(assert (=> b!820983 m!1062019))

(declare-fun m!1062021 () Bool)

(assert (=> b!820983 m!1062021))

(assert (=> b!820983 m!1061949))

(declare-fun m!1062023 () Bool)

(assert (=> b!820983 m!1062023))

(assert (=> b!820983 m!1061959))

(declare-fun m!1062025 () Bool)

(assert (=> b!820983 m!1062025))

(declare-fun m!1062027 () Bool)

(assert (=> b!820983 m!1062027))

(declare-fun m!1062029 () Bool)

(assert (=> b!820983 m!1062029))

(assert (=> b!820983 m!1061949))

(assert (=> b!820983 m!1062025))

(assert (=> b!820983 m!1061961))

(assert (=> b!820983 m!1062021))

(assert (=> bm!47059 m!1061949))

(declare-fun m!1062031 () Bool)

(assert (=> bm!47059 m!1062031))

(declare-fun m!1062033 () Bool)

(assert (=> b!820987 m!1062033))

(assert (=> d!258552 m!1061911))

(assert (=> d!258552 m!1061911))

(assert (=> d!258552 m!1061949))

(declare-fun m!1062035 () Bool)

(assert (=> d!258552 m!1062035))

(assert (=> d!258526 d!258552))

(declare-fun d!258554 () Bool)

(assert (=> d!258554 (= (efficientList$default$2!43 (c!133015 x!176370)) Nil!8822)))

(assert (=> d!258526 d!258554))

(declare-fun d!258556 () Bool)

(declare-fun c!133057 () Bool)

(assert (=> d!258556 (= c!133057 (is-Node!2940 (c!133015 x!176371)))))

(declare-fun e!542412 () Bool)

(assert (=> d!258556 (= (inv!11195 (c!133015 x!176371)) e!542412)))

(declare-fun b!820989 () Bool)

(assert (=> b!820989 (= e!542412 (inv!11199 (c!133015 x!176371)))))

(declare-fun b!820990 () Bool)

(declare-fun e!542413 () Bool)

(assert (=> b!820990 (= e!542412 e!542413)))

(declare-fun res!378913 () Bool)

(assert (=> b!820990 (= res!378913 (not (is-Leaf!4318 (c!133015 x!176371))))))

(assert (=> b!820990 (=> res!378913 e!542413)))

(declare-fun b!820991 () Bool)

(assert (=> b!820991 (= e!542413 (inv!11200 (c!133015 x!176371)))))

(assert (= (and d!258556 c!133057) b!820989))

(assert (= (and d!258556 (not c!133057)) b!820990))

(assert (= (and b!820990 (not res!378913)) b!820991))

(declare-fun m!1062037 () Bool)

(assert (=> b!820989 m!1062037))

(declare-fun m!1062039 () Bool)

(assert (=> b!820991 m!1062039))

(assert (=> b!820843 d!258556))

(declare-fun d!258558 () Bool)

(declare-fun c!133058 () Bool)

(assert (=> d!258558 (= c!133058 (is-Node!2940 (c!133015 x!176370)))))

(declare-fun e!542414 () Bool)

(assert (=> d!258558 (= (inv!11195 (c!133015 x!176370)) e!542414)))

(declare-fun b!820992 () Bool)

(assert (=> b!820992 (= e!542414 (inv!11199 (c!133015 x!176370)))))

(declare-fun b!820993 () Bool)

(declare-fun e!542415 () Bool)

(assert (=> b!820993 (= e!542414 e!542415)))

(declare-fun res!378914 () Bool)

(assert (=> b!820993 (= res!378914 (not (is-Leaf!4318 (c!133015 x!176370))))))

(assert (=> b!820993 (=> res!378914 e!542415)))

(declare-fun b!820994 () Bool)

(assert (=> b!820994 (= e!542415 (inv!11200 (c!133015 x!176370)))))

(assert (= (and d!258558 c!133058) b!820992))

(assert (= (and d!258558 (not c!133058)) b!820993))

(assert (= (and b!820993 (not res!378914)) b!820994))

(declare-fun m!1062041 () Bool)

(assert (=> b!820992 m!1062041))

(declare-fun m!1062043 () Bool)

(assert (=> b!820994 m!1062043))

(assert (=> b!820842 d!258558))

(assert (=> d!258520 d!258508))

(declare-fun b!820995 () Bool)

(declare-fun lt!317181 () Unit!13341)

(declare-fun lt!317182 () Unit!13341)

(assert (=> b!820995 (= lt!317181 lt!317182)))

(declare-fun lt!317183 () List!8838)

(declare-fun call!47065 () List!8838)

(declare-fun lt!317185 () List!8838)

(assert (=> b!820995 (= (++!2262 (++!2262 lt!317185 lt!317183) (efficientList$default$2!43 (c!133015 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369))))) (++!2262 lt!317185 call!47065))))

(assert (=> b!820995 (= lt!317182 (lemmaConcatAssociativity!716 lt!317185 lt!317183 (efficientList$default$2!43 (c!133015 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369))))))))

(assert (=> b!820995 (= lt!317183 (list!3500 (right!6867 (c!133015 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369))))))))

(assert (=> b!820995 (= lt!317185 (list!3500 (left!6537 (c!133015 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369))))))))

(declare-fun e!542418 () List!8838)

(assert (=> b!820995 (= e!542418 (efficientList!128 (left!6537 (c!133015 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369)))) (efficientList!128 (right!6867 (c!133015 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369)))) (efficientList$default$2!43 (c!133015 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369)))))))))

(declare-fun b!820996 () Bool)

(declare-fun e!542416 () List!8838)

(assert (=> b!820996 (= e!542416 (efficientList$default$2!43 (c!133015 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369)))))))

(declare-fun b!820997 () Bool)

(assert (=> b!820997 (= e!542416 e!542418)))

(declare-fun c!133061 () Bool)

(assert (=> b!820997 (= c!133061 (is-Leaf!4318 (c!133015 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369)))))))

(declare-fun b!820998 () Bool)

(assert (=> b!820998 (= e!542418 call!47065)))

(declare-fun bm!47060 () Bool)

(declare-fun c!133060 () Bool)

(assert (=> bm!47060 (= c!133060 c!133061)))

(declare-fun e!542417 () List!8838)

(assert (=> bm!47060 (= call!47065 (++!2262 e!542417 (efficientList$default$2!43 (c!133015 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369))))))))

(declare-fun b!820999 () Bool)

(assert (=> b!820999 (= e!542417 (efficientList!130 (xs!5629 (c!133015 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369))))))))

(declare-fun d!258560 () Bool)

(declare-fun lt!317184 () List!8838)

(assert (=> d!258560 (= lt!317184 (++!2262 (list!3500 (c!133015 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369)))) (efficientList$default$2!43 (c!133015 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369))))))))

(assert (=> d!258560 (= lt!317184 e!542416)))

(declare-fun c!133059 () Bool)

(assert (=> d!258560 (= c!133059 (is-Empty!2940 (c!133015 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369)))))))

(assert (=> d!258560 (= (efficientList!128 (c!133015 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369))) (efficientList$default$2!43 (c!133015 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369))))) lt!317184)))

(declare-fun b!821000 () Bool)

(assert (=> b!821000 (= e!542417 lt!317183)))

(assert (= (and d!258560 c!133059) b!820996))

(assert (= (and d!258560 (not c!133059)) b!820997))

(assert (= (and b!820997 c!133061) b!820998))

(assert (= (and b!820997 (not c!133061)) b!820995))

(assert (= (or b!820998 b!820995) bm!47060))

(assert (= (and bm!47060 c!133060) b!820999))

(assert (= (and bm!47060 (not c!133060)) b!821000))

(assert (=> b!820995 m!1061929))

(declare-fun m!1062045 () Bool)

(assert (=> b!820995 m!1062045))

(declare-fun m!1062047 () Bool)

(assert (=> b!820995 m!1062047))

(assert (=> b!820995 m!1061929))

(declare-fun m!1062049 () Bool)

(assert (=> b!820995 m!1062049))

(assert (=> b!820995 m!1061923))

(declare-fun m!1062051 () Bool)

(assert (=> b!820995 m!1062051))

(declare-fun m!1062053 () Bool)

(assert (=> b!820995 m!1062053))

(declare-fun m!1062055 () Bool)

(assert (=> b!820995 m!1062055))

(assert (=> b!820995 m!1061929))

(assert (=> b!820995 m!1062051))

(assert (=> b!820995 m!1061925))

(assert (=> b!820995 m!1062047))

(assert (=> bm!47060 m!1061929))

(declare-fun m!1062057 () Bool)

(assert (=> bm!47060 m!1062057))

(declare-fun m!1062059 () Bool)

(assert (=> b!820999 m!1062059))

(assert (=> d!258560 m!1061907))

(assert (=> d!258560 m!1061907))

(assert (=> d!258560 m!1061929))

(declare-fun m!1062061 () Bool)

(assert (=> d!258560 m!1062061))

(assert (=> d!258520 d!258560))

(declare-fun d!258562 () Bool)

(assert (=> d!258562 (= (efficientList$default$2!43 (c!133015 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176369)))) Nil!8822)))

(assert (=> d!258520 d!258562))

(assert (=> start!73318 d!258508))

(assert (=> start!73318 d!258510))

(assert (=> start!73318 d!258506))

(declare-fun d!258564 () Bool)

(declare-fun choose!4915 (Int) Bool)

(assert (=> d!258564 (= (Forall!384 lambda!24448) (choose!4915 lambda!24448))))

(declare-fun bs!228934 () Bool)

(assert (= bs!228934 d!258564))

(declare-fun m!1062063 () Bool)

(assert (=> bs!228934 m!1062063))

(assert (=> start!73318 d!258564))

(declare-fun d!258566 () Bool)

(declare-fun isBalanced!800 (Conc!2940) Bool)

(assert (=> d!258566 (= (inv!11196 x!176369) (isBalanced!800 (c!133015 x!176369)))))

(declare-fun bs!228935 () Bool)

(assert (= bs!228935 d!258566))

(declare-fun m!1062065 () Bool)

(assert (=> bs!228935 m!1062065))

(assert (=> start!73318 d!258566))

(assert (=> start!73318 d!258550))

(assert (=> d!258516 d!258506))

(declare-fun b!821001 () Bool)

(declare-fun lt!317186 () Unit!13341)

(declare-fun lt!317187 () Unit!13341)

(assert (=> b!821001 (= lt!317186 lt!317187)))

(declare-fun call!47066 () List!8838)

(declare-fun lt!317188 () List!8838)

(declare-fun lt!317190 () List!8838)

(assert (=> b!821001 (= (++!2262 (++!2262 lt!317190 lt!317188) (efficientList$default$2!43 (c!133015 x!176369))) (++!2262 lt!317190 call!47066))))

(assert (=> b!821001 (= lt!317187 (lemmaConcatAssociativity!716 lt!317190 lt!317188 (efficientList$default$2!43 (c!133015 x!176369))))))

(assert (=> b!821001 (= lt!317188 (list!3500 (right!6867 (c!133015 x!176369))))))

(assert (=> b!821001 (= lt!317190 (list!3500 (left!6537 (c!133015 x!176369))))))

(declare-fun e!542421 () List!8838)

(assert (=> b!821001 (= e!542421 (efficientList!128 (left!6537 (c!133015 x!176369)) (efficientList!128 (right!6867 (c!133015 x!176369)) (efficientList$default$2!43 (c!133015 x!176369)))))))

(declare-fun b!821002 () Bool)

(declare-fun e!542419 () List!8838)

(assert (=> b!821002 (= e!542419 (efficientList$default$2!43 (c!133015 x!176369)))))

(declare-fun b!821003 () Bool)

(assert (=> b!821003 (= e!542419 e!542421)))

(declare-fun c!133064 () Bool)

(assert (=> b!821003 (= c!133064 (is-Leaf!4318 (c!133015 x!176369)))))

(declare-fun b!821004 () Bool)

(assert (=> b!821004 (= e!542421 call!47066)))

(declare-fun bm!47061 () Bool)

(declare-fun c!133063 () Bool)

(assert (=> bm!47061 (= c!133063 c!133064)))

(declare-fun e!542420 () List!8838)

(assert (=> bm!47061 (= call!47066 (++!2262 e!542420 (efficientList$default$2!43 (c!133015 x!176369))))))

(declare-fun b!821005 () Bool)

(assert (=> b!821005 (= e!542420 (efficientList!130 (xs!5629 (c!133015 x!176369))))))

(declare-fun d!258568 () Bool)

(declare-fun lt!317189 () List!8838)

(assert (=> d!258568 (= lt!317189 (++!2262 (list!3500 (c!133015 x!176369)) (efficientList$default$2!43 (c!133015 x!176369))))))

(assert (=> d!258568 (= lt!317189 e!542419)))

(declare-fun c!133062 () Bool)

(assert (=> d!258568 (= c!133062 (is-Empty!2940 (c!133015 x!176369)))))

(assert (=> d!258568 (= (efficientList!128 (c!133015 x!176369) (efficientList$default$2!43 (c!133015 x!176369))) lt!317189)))

(declare-fun b!821006 () Bool)

(assert (=> b!821006 (= e!542420 lt!317188)))

(assert (= (and d!258568 c!133062) b!821002))

(assert (= (and d!258568 (not c!133062)) b!821003))

(assert (= (and b!821003 c!133064) b!821004))

(assert (= (and b!821003 (not c!133064)) b!821001))

(assert (= (or b!821004 b!821001) bm!47061))

(assert (= (and bm!47061 c!133063) b!821005))

(assert (= (and bm!47061 (not c!133063)) b!821006))

(assert (=> b!821001 m!1061917))

(declare-fun m!1062067 () Bool)

(assert (=> b!821001 m!1062067))

(declare-fun m!1062069 () Bool)

(assert (=> b!821001 m!1062069))

(assert (=> b!821001 m!1061917))

(declare-fun m!1062071 () Bool)

(assert (=> b!821001 m!1062071))

(assert (=> b!821001 m!1061943))

(declare-fun m!1062073 () Bool)

(assert (=> b!821001 m!1062073))

(declare-fun m!1062075 () Bool)

(assert (=> b!821001 m!1062075))

(declare-fun m!1062077 () Bool)

(assert (=> b!821001 m!1062077))

(assert (=> b!821001 m!1061917))

(assert (=> b!821001 m!1062073))

(assert (=> b!821001 m!1061945))

(assert (=> b!821001 m!1062069))

(assert (=> bm!47061 m!1061917))

(declare-fun m!1062079 () Bool)

(assert (=> bm!47061 m!1062079))

(declare-fun m!1062081 () Bool)

(assert (=> b!821005 m!1062081))

(assert (=> d!258568 m!1061905))

(assert (=> d!258568 m!1061905))

(assert (=> d!258568 m!1061917))

(declare-fun m!1062083 () Bool)

(assert (=> d!258568 m!1062083))

(assert (=> d!258516 d!258568))

(declare-fun d!258570 () Bool)

(assert (=> d!258570 (= (efficientList$default$2!43 (c!133015 x!176369)) Nil!8822)))

(assert (=> d!258516 d!258570))

(assert (=> b!820831 d!258504))

(declare-fun d!258572 () Bool)

(declare-fun choose!4916 (Int) Bool)

(assert (=> d!258572 (= (Forall2!298 lambda!24451) (choose!4916 lambda!24451))))

(declare-fun bs!228936 () Bool)

(assert (= bs!228936 d!258572))

(declare-fun m!1062085 () Bool)

(assert (=> bs!228936 m!1062085))

(assert (=> b!820831 d!258572))

(declare-fun d!258574 () Bool)

(assert (=> d!258574 (= (inv!11196 x!176371) (isBalanced!800 (c!133015 x!176371)))))

(declare-fun bs!228937 () Bool)

(assert (= bs!228937 d!258574))

(declare-fun m!1062087 () Bool)

(assert (=> bs!228937 m!1062087))

(assert (=> b!820831 d!258574))

(assert (=> b!820831 d!258512))

(declare-fun d!258576 () Bool)

(assert (=> d!258576 (= (inv!11196 x!176370) (isBalanced!800 (c!133015 x!176370)))))

(declare-fun bs!228938 () Bool)

(assert (= bs!228938 d!258576))

(declare-fun m!1062089 () Bool)

(assert (=> bs!228938 m!1062089))

(assert (=> b!820831 d!258576))

(declare-fun bs!228939 () Bool)

(declare-fun d!258578 () Bool)

(assert (= bs!228939 (and d!258578 start!73318)))

(declare-fun lambda!24476 () Int)

(assert (=> bs!228939 (not (= lambda!24476 lambda!24448))))

(assert (=> d!258578 true))

(declare-fun order!5629 () Int)

(declare-fun order!5627 () Int)

(declare-fun dynLambda!4105 (Int Int) Int)

(declare-fun dynLambda!4106 (Int Int) Int)

(assert (=> d!258578 (< (dynLambda!4105 order!5627 lambda!24449) (dynLambda!4106 order!5629 lambda!24476))))

(assert (=> d!258578 true))

(declare-fun order!5631 () Int)

(declare-fun dynLambda!4107 (Int Int) Int)

(assert (=> d!258578 (< (dynLambda!4107 order!5631 lambda!24450) (dynLambda!4106 order!5629 lambda!24476))))

(assert (=> d!258578 (= (semiInverseModEq!629 lambda!24449 lambda!24450) (Forall!384 lambda!24476))))

(declare-fun bs!228940 () Bool)

(assert (= bs!228940 d!258578))

(declare-fun m!1062091 () Bool)

(assert (=> bs!228940 m!1062091))

(assert (=> b!820830 d!258578))

(assert (=> b!820830 d!258564))

(assert (=> d!258528 d!258504))

(declare-fun b!821011 () Bool)

(declare-fun lt!317191 () Unit!13341)

(declare-fun lt!317192 () Unit!13341)

(assert (=> b!821011 (= lt!317191 lt!317192)))

(declare-fun lt!317195 () List!8838)

(declare-fun lt!317193 () List!8838)

(declare-fun call!47067 () List!8838)

(assert (=> b!821011 (= (++!2262 (++!2262 lt!317195 lt!317193) (efficientList$default$2!43 (c!133015 x!176371))) (++!2262 lt!317195 call!47067))))

(assert (=> b!821011 (= lt!317192 (lemmaConcatAssociativity!716 lt!317195 lt!317193 (efficientList$default$2!43 (c!133015 x!176371))))))

(assert (=> b!821011 (= lt!317193 (list!3500 (right!6867 (c!133015 x!176371))))))

(assert (=> b!821011 (= lt!317195 (list!3500 (left!6537 (c!133015 x!176371))))))

(declare-fun e!542424 () List!8838)

(assert (=> b!821011 (= e!542424 (efficientList!128 (left!6537 (c!133015 x!176371)) (efficientList!128 (right!6867 (c!133015 x!176371)) (efficientList$default$2!43 (c!133015 x!176371)))))))

(declare-fun b!821012 () Bool)

(declare-fun e!542422 () List!8838)

(assert (=> b!821012 (= e!542422 (efficientList$default$2!43 (c!133015 x!176371)))))

(declare-fun b!821013 () Bool)

(assert (=> b!821013 (= e!542422 e!542424)))

(declare-fun c!133067 () Bool)

(assert (=> b!821013 (= c!133067 (is-Leaf!4318 (c!133015 x!176371)))))

(declare-fun b!821014 () Bool)

(assert (=> b!821014 (= e!542424 call!47067)))

(declare-fun bm!47062 () Bool)

(declare-fun c!133066 () Bool)

(assert (=> bm!47062 (= c!133066 c!133067)))

(declare-fun e!542423 () List!8838)

(assert (=> bm!47062 (= call!47067 (++!2262 e!542423 (efficientList$default$2!43 (c!133015 x!176371))))))

(declare-fun b!821015 () Bool)

(assert (=> b!821015 (= e!542423 (efficientList!130 (xs!5629 (c!133015 x!176371))))))

(declare-fun d!258580 () Bool)

(declare-fun lt!317194 () List!8838)

(assert (=> d!258580 (= lt!317194 (++!2262 (list!3500 (c!133015 x!176371)) (efficientList$default$2!43 (c!133015 x!176371))))))

(assert (=> d!258580 (= lt!317194 e!542422)))

(declare-fun c!133065 () Bool)

(assert (=> d!258580 (= c!133065 (is-Empty!2940 (c!133015 x!176371)))))

(assert (=> d!258580 (= (efficientList!128 (c!133015 x!176371) (efficientList$default$2!43 (c!133015 x!176371))) lt!317194)))

(declare-fun b!821016 () Bool)

(assert (=> b!821016 (= e!542423 lt!317193)))

(assert (= (and d!258580 c!133065) b!821012))

(assert (= (and d!258580 (not c!133065)) b!821013))

(assert (= (and b!821013 c!133067) b!821014))

(assert (= (and b!821013 (not c!133067)) b!821011))

(assert (= (or b!821014 b!821011) bm!47062))

(assert (= (and bm!47062 c!133066) b!821015))

(assert (= (and bm!47062 (not c!133066)) b!821016))

(assert (=> b!821011 m!1061953))

(declare-fun m!1062093 () Bool)

(assert (=> b!821011 m!1062093))

(declare-fun m!1062095 () Bool)

(assert (=> b!821011 m!1062095))

(assert (=> b!821011 m!1061953))

(declare-fun m!1062097 () Bool)

(assert (=> b!821011 m!1062097))

(assert (=> b!821011 m!1061935))

(declare-fun m!1062099 () Bool)

(assert (=> b!821011 m!1062099))

(declare-fun m!1062101 () Bool)

(assert (=> b!821011 m!1062101))

(declare-fun m!1062103 () Bool)

(assert (=> b!821011 m!1062103))

(assert (=> b!821011 m!1061953))

(assert (=> b!821011 m!1062099))

(assert (=> b!821011 m!1061937))

(assert (=> b!821011 m!1062095))

(assert (=> bm!47062 m!1061953))

(declare-fun m!1062105 () Bool)

(assert (=> bm!47062 m!1062105))

(declare-fun m!1062107 () Bool)

(assert (=> b!821015 m!1062107))

(assert (=> d!258580 m!1061903))

(assert (=> d!258580 m!1061903))

(assert (=> d!258580 m!1061953))

(declare-fun m!1062109 () Bool)

(assert (=> d!258580 m!1062109))

(assert (=> d!258528 d!258580))

(declare-fun d!258582 () Bool)

(assert (=> d!258582 (= (efficientList$default$2!43 (c!133015 x!176371)) Nil!8822)))

(assert (=> d!258528 d!258582))

(declare-fun b!821023 () Bool)

(declare-fun tp!256648 () Bool)

(declare-fun tp!256647 () Bool)

(declare-fun e!542429 () Bool)

(assert (=> b!821023 (= e!542429 (and (inv!11195 (left!6537 (c!133015 x!176369))) tp!256647 (inv!11195 (right!6867 (c!133015 x!176369))) tp!256648))))

(declare-fun b!821024 () Bool)

(declare-fun inv!11201 (IArray!5885) Bool)

(assert (=> b!821024 (= e!542429 (inv!11201 (xs!5629 (c!133015 x!176369))))))

(assert (=> b!820840 (= tp!256631 (and (inv!11195 (c!133015 x!176369)) e!542429))))

(assert (= (and b!820840 (is-Node!2940 (c!133015 x!176369))) b!821023))

(assert (= (and b!820840 (is-Leaf!4318 (c!133015 x!176369))) b!821024))

(declare-fun m!1062111 () Bool)

(assert (=> b!821023 m!1062111))

(declare-fun m!1062113 () Bool)

(assert (=> b!821023 m!1062113))

(declare-fun m!1062115 () Bool)

(assert (=> b!821024 m!1062115))

(assert (=> b!820840 m!1061813))

(declare-fun e!542431 () Bool)

(declare-fun tp!256649 () Bool)

(declare-fun b!821025 () Bool)

(declare-fun tp!256650 () Bool)

(assert (=> b!821025 (= e!542431 (and (inv!11195 (left!6537 (c!133015 x!176371))) tp!256649 (inv!11195 (right!6867 (c!133015 x!176371))) tp!256650))))

(declare-fun b!821026 () Bool)

(assert (=> b!821026 (= e!542431 (inv!11201 (xs!5629 (c!133015 x!176371))))))

(assert (=> b!820843 (= tp!256633 (and (inv!11195 (c!133015 x!176371)) e!542431))))

(assert (= (and b!820843 (is-Node!2940 (c!133015 x!176371))) b!821025))

(assert (= (and b!820843 (is-Leaf!4318 (c!133015 x!176371))) b!821026))

(declare-fun m!1062117 () Bool)

(assert (=> b!821025 m!1062117))

(declare-fun m!1062119 () Bool)

(assert (=> b!821025 m!1062119))

(declare-fun m!1062121 () Bool)

(assert (=> b!821026 m!1062121))

(assert (=> b!820843 m!1061839))

(declare-fun b!821027 () Bool)

(declare-fun tp!256651 () Bool)

(declare-fun e!542433 () Bool)

(declare-fun tp!256652 () Bool)

(assert (=> b!821027 (= e!542433 (and (inv!11195 (left!6537 (c!133015 x!176370))) tp!256651 (inv!11195 (right!6867 (c!133015 x!176370))) tp!256652))))

(declare-fun b!821028 () Bool)

(assert (=> b!821028 (= e!542433 (inv!11201 (xs!5629 (c!133015 x!176370))))))

(assert (=> b!820842 (= tp!256632 (and (inv!11195 (c!133015 x!176370)) e!542433))))

(assert (= (and b!820842 (is-Node!2940 (c!133015 x!176370))) b!821027))

(assert (= (and b!820842 (is-Leaf!4318 (c!133015 x!176370))) b!821028))

(declare-fun m!1062123 () Bool)

(assert (=> b!821027 m!1062123))

(declare-fun m!1062125 () Bool)

(assert (=> b!821027 m!1062125))

(declare-fun m!1062127 () Bool)

(assert (=> b!821028 m!1062127))

(assert (=> b!820842 m!1061837))

(push 1)

(assert (not b!820983))

(assert (not b!820991))

(assert (not b!820994))

(assert (not b!821011))

(assert (not d!258560))

(assert (not d!258564))

(assert (not bm!47059))

(assert (not b!821028))

(assert (not d!258568))

(assert (not b!820922))

(assert (not b!820919))

(assert (not b!821024))

(assert (not b!821023))

(assert (not b!820999))

(assert (not b!821026))

(assert (not d!258552))

(assert (not b!820992))

(assert (not b!820995))

(assert (not b!821001))

(assert (not bm!47061))

(assert (not b!821015))

(assert (not b!820931))

(assert (not b!821025))

(assert (not b!820843))

(assert (not b!820926))

(assert (not b!820989))

(assert (not b!820964))

(assert (not d!258578))

(assert (not d!258572))

(assert (not d!258576))

(assert (not b!821027))

(assert (not bm!47060))

(assert (not bm!47062))

(assert (not b!820969))

(assert (not b!820927))

(assert (not b!820840))

(assert (not d!258566))

(assert (not b!820987))

(assert (not b!821005))

(assert (not b!820923))

(assert (not d!258574))

(assert (not b!820962))

(assert (not d!258580))

(assert (not b!820842))

(assert (not b!820930))

(assert (not b!820918))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

