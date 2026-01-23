; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!216316 () Bool)

(assert start!216316)

(assert (=> start!216316 true))

(declare-fun b!2218892 () Bool)

(assert (=> b!2218892 true))

(assert (=> b!2218892 true))

(declare-fun b!2218893 () Bool)

(assert (=> b!2218893 true))

(declare-fun b!2218902 () Bool)

(declare-fun e!1416982 () Bool)

(declare-datatypes ((List!26075 0))(
  ( (Nil!25991) (Cons!25991 (h!31392 (_ BitVec 16)) (t!199421 List!26075)) )
))
(declare-datatypes ((IArray!16993 0))(
  ( (IArray!16994 (innerList!8554 List!26075)) )
))
(declare-datatypes ((Conc!8494 0))(
  ( (Node!8494 (left!19973 Conc!8494) (right!20303 Conc!8494) (csize!17218 Int) (cheight!8705 Int)) (Leaf!12456 (xs!11436 IArray!16993) (csize!17219 Int)) (Empty!8494) )
))
(declare-datatypes ((BalanceConc!16706 0))(
  ( (BalanceConc!16707 (c!354296 Conc!8494)) )
))
(declare-fun x!427496 () BalanceConc!16706)

(declare-fun tp!691209 () Bool)

(declare-fun inv!35238 (Conc!8494) Bool)

(assert (=> b!2218902 (= e!1416982 (and (inv!35238 (c!354296 x!427496)) tp!691209))))

(declare-fun inst!1222 () Bool)

(declare-datatypes ((IntegerValueInjection!100 0))(
  ( (IntegerValueInjection!101) )
))
(declare-fun thiss!4894 () IntegerValueInjection!100)

(declare-fun inv!35239 (BalanceConc!16706) Bool)

(declare-fun list!10073 (BalanceConc!16706) List!26075)

(declare-datatypes ((TokenValue!4328 0))(
  ( (FloatLiteralValue!8656 (text!30741 List!26075)) (TokenValueExt!4327 (__x!17105 Int)) (Broken!21640 (value!132211 List!26075)) (Object!4411) (End!4328) (Def!4328) (Underscore!4328) (Match!4328) (Else!4328) (Error!4328) (Case!4328) (If!4328) (Extends!4328) (Abstract!4328) (Class!4328) (Val!4328) (DelimiterValue!8656 (del!4388 List!26075)) (KeywordValue!4334 (value!132212 List!26075)) (CommentValue!8656 (value!132213 List!26075)) (WhitespaceValue!8656 (value!132214 List!26075)) (IndentationValue!4328 (value!132215 List!26075)) (String!28361) (Int32!4328) (Broken!21641 (value!132216 List!26075)) (Boolean!4329) (Unit!38956) (OperatorValue!4331 (op!4388 List!26075)) (IdentifierValue!8656 (value!132217 List!26075)) (IdentifierValue!8657 (value!132218 List!26075)) (WhitespaceValue!8657 (value!132219 List!26075)) (True!8656) (False!8656) (Broken!21642 (value!132220 List!26075)) (Broken!21643 (value!132221 List!26075)) (True!8657) (RightBrace!4328) (RightBracket!4328) (Colon!4328) (Null!4328) (Comma!4328) (LeftBracket!4328) (False!8657) (LeftBrace!4328) (ImaginaryLiteralValue!4328 (text!30742 List!26075)) (StringLiteralValue!12984 (value!132222 List!26075)) (EOFValue!4328 (value!132223 List!26075)) (IdentValue!4328 (value!132224 List!26075)) (DelimiterValue!8657 (value!132225 List!26075)) (DedentValue!4328 (value!132226 List!26075)) (NewLineValue!4328 (value!132227 List!26075)) (IntegerValue!12984 (value!132228 (_ BitVec 32)) (text!30743 List!26075)) (IntegerValue!12985 (value!132229 Int) (text!30744 List!26075)) (Times!4328) (Or!4328) (Equal!4328) (Minus!4328) (Broken!21644 (value!132230 List!26075)) (And!4328) (Div!4328) (LessEqual!4328) (Mod!4328) (Concat!10660) (Not!4328) (Plus!4328) (SpaceValue!4328 (value!132231 List!26075)) (IntegerValue!12986 (value!132232 Int) (text!30745 List!26075)) (StringLiteralValue!12985 (text!30746 List!26075)) (FloatLiteralValue!8657 (text!30747 List!26075)) (BytesLiteralValue!4328 (value!132233 List!26075)) (CommentValue!8657 (value!132234 List!26075)) (StringLiteralValue!12986 (value!132235 List!26075)) (ErrorTokenValue!4328 (msg!4389 List!26075)) )
))
(declare-fun toCharacters!24 (IntegerValueInjection!100 TokenValue!4328) BalanceConc!16706)

(declare-fun toValue!31 (IntegerValueInjection!100 BalanceConc!16706) TokenValue!4328)

(assert (=> start!216316 (= inst!1222 (=> (and (inv!35239 x!427496) e!1416982) (= (list!10073 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496))) (list!10073 x!427496))))))

(assert (= start!216316 b!2218902))

(declare-fun m!2659675 () Bool)

(assert (=> b!2218902 m!2659675))

(declare-fun m!2659677 () Bool)

(assert (=> start!216316 m!2659677))

(declare-fun m!2659679 () Bool)

(assert (=> start!216316 m!2659679))

(declare-fun m!2659681 () Bool)

(assert (=> start!216316 m!2659681))

(declare-fun m!2659683 () Bool)

(assert (=> start!216316 m!2659683))

(assert (=> start!216316 m!2659683))

(assert (=> start!216316 m!2659679))

(declare-fun m!2659685 () Bool)

(assert (=> start!216316 m!2659685))

(declare-fun res!952882 () Bool)

(declare-fun e!1416983 () Bool)

(assert (=> b!2218893 (=> res!952882 e!1416983)))

(declare-fun x!427497 () BalanceConc!16706)

(declare-fun x!427498 () BalanceConc!16706)

(assert (=> b!2218893 (= res!952882 (not (= (list!10073 x!427497) (list!10073 x!427498))))))

(declare-fun e!1416985 () Bool)

(declare-fun e!1416984 () Bool)

(declare-fun inst!1223 () Bool)

(assert (=> b!2218893 (= inst!1223 (=> (and (inv!35239 x!427497) e!1416985 (inv!35239 x!427498) e!1416984) e!1416983))))

(declare-fun b!2218903 () Bool)

(assert (=> b!2218903 (= e!1416983 (= (toValue!31 thiss!4894 x!427497) (toValue!31 thiss!4894 x!427498)))))

(declare-fun b!2218904 () Bool)

(declare-fun tp!691211 () Bool)

(assert (=> b!2218904 (= e!1416985 (and (inv!35238 (c!354296 x!427497)) tp!691211))))

(declare-fun b!2218905 () Bool)

(declare-fun tp!691210 () Bool)

(assert (=> b!2218905 (= e!1416984 (and (inv!35238 (c!354296 x!427498)) tp!691210))))

(assert (= (and b!2218893 (not res!952882)) b!2218903))

(assert (= b!2218893 b!2218904))

(assert (= b!2218893 b!2218905))

(declare-fun m!2659687 () Bool)

(assert (=> b!2218893 m!2659687))

(declare-fun m!2659689 () Bool)

(assert (=> b!2218893 m!2659689))

(declare-fun m!2659691 () Bool)

(assert (=> b!2218893 m!2659691))

(declare-fun m!2659693 () Bool)

(assert (=> b!2218893 m!2659693))

(declare-fun m!2659695 () Bool)

(assert (=> b!2218903 m!2659695))

(declare-fun m!2659697 () Bool)

(assert (=> b!2218903 m!2659697))

(declare-fun m!2659699 () Bool)

(assert (=> b!2218904 m!2659699))

(declare-fun m!2659701 () Bool)

(assert (=> b!2218905 m!2659701))

(declare-fun bs!451801 () Bool)

(declare-fun neg-inst!1222 () Bool)

(declare-fun s!223731 () Bool)

(assert (= bs!451801 (and neg-inst!1222 s!223731)))

(assert (=> bs!451801 (=> true (= (list!10073 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496))) (list!10073 x!427496)))))

(assert (=> m!2659683 m!2659679))

(assert (=> m!2659683 m!2659681))

(assert (=> m!2659683 m!2659677))

(assert (=> m!2659683 s!223731))

(assert (=> m!2659677 s!223731))

(declare-fun bs!451802 () Bool)

(assert (= bs!451802 (and neg-inst!1222 start!216316)))

(assert (=> bs!451802 (= true inst!1222)))

(declare-fun bs!451803 () Bool)

(declare-fun neg-inst!1223 () Bool)

(declare-fun s!223733 () Bool)

(assert (= bs!451803 (and neg-inst!1223 s!223733)))

(declare-fun res!952883 () Bool)

(declare-fun e!1416986 () Bool)

(assert (=> bs!451803 (=> res!952883 e!1416986)))

(assert (=> bs!451803 (= res!952883 (not (= (list!10073 x!427497) (list!10073 x!427497))))))

(assert (=> bs!451803 (=> true e!1416986)))

(declare-fun b!2218906 () Bool)

(assert (=> b!2218906 (= e!1416986 (= (toValue!31 thiss!4894 x!427497) (toValue!31 thiss!4894 x!427497)))))

(assert (= (and bs!451803 (not res!952883)) b!2218906))

(assert (=> m!2659687 s!223733))

(assert (=> m!2659687 s!223733))

(declare-fun bs!451804 () Bool)

(declare-fun s!223735 () Bool)

(assert (= bs!451804 (and neg-inst!1223 s!223735)))

(declare-fun res!952884 () Bool)

(declare-fun e!1416987 () Bool)

(assert (=> bs!451804 (=> res!952884 e!1416987)))

(assert (=> bs!451804 (= res!952884 (not (= (list!10073 x!427498) (list!10073 x!427497))))))

(assert (=> bs!451804 (=> true e!1416987)))

(declare-fun b!2218907 () Bool)

(assert (=> b!2218907 (= e!1416987 (= (toValue!31 thiss!4894 x!427498) (toValue!31 thiss!4894 x!427497)))))

(assert (= (and bs!451804 (not res!952884)) b!2218907))

(declare-fun bs!451805 () Bool)

(assert (= bs!451805 (and m!2659697 m!2659687)))

(assert (=> bs!451805 m!2659689))

(assert (=> bs!451805 m!2659687))

(assert (=> bs!451805 s!223735))

(declare-fun bs!451806 () Bool)

(declare-fun s!223737 () Bool)

(assert (= bs!451806 (and neg-inst!1223 s!223737)))

(declare-fun res!952885 () Bool)

(declare-fun e!1416988 () Bool)

(assert (=> bs!451806 (=> res!952885 e!1416988)))

(assert (=> bs!451806 (= res!952885 (not (= (list!10073 x!427498) (list!10073 x!427498))))))

(assert (=> bs!451806 (=> true e!1416988)))

(declare-fun b!2218908 () Bool)

(assert (=> b!2218908 (= e!1416988 (= (toValue!31 thiss!4894 x!427498) (toValue!31 thiss!4894 x!427498)))))

(assert (= (and bs!451806 (not res!952885)) b!2218908))

(assert (=> m!2659697 m!2659689))

(assert (=> m!2659697 m!2659689))

(assert (=> m!2659697 s!223737))

(declare-fun bs!451807 () Bool)

(declare-fun s!223739 () Bool)

(assert (= bs!451807 (and neg-inst!1223 s!223739)))

(declare-fun res!952886 () Bool)

(declare-fun e!1416989 () Bool)

(assert (=> bs!451807 (=> res!952886 e!1416989)))

(assert (=> bs!451807 (= res!952886 (not (= (list!10073 x!427497) (list!10073 x!427498))))))

(assert (=> bs!451807 (=> true e!1416989)))

(declare-fun b!2218909 () Bool)

(assert (=> b!2218909 (= e!1416989 (= (toValue!31 thiss!4894 x!427497) (toValue!31 thiss!4894 x!427498)))))

(assert (= (and bs!451807 (not res!952886)) b!2218909))

(assert (=> bs!451805 m!2659687))

(assert (=> bs!451805 m!2659689))

(assert (=> bs!451805 s!223739))

(assert (=> m!2659697 s!223737))

(declare-fun bs!451808 () Bool)

(declare-fun s!223741 () Bool)

(assert (= bs!451808 (and neg-inst!1223 s!223741)))

(declare-fun res!952887 () Bool)

(declare-fun e!1416990 () Bool)

(assert (=> bs!451808 (=> res!952887 e!1416990)))

(assert (=> bs!451808 (= res!952887 (not (= (list!10073 x!427496) (list!10073 x!427497))))))

(assert (=> bs!451808 (=> true e!1416990)))

(declare-fun b!2218910 () Bool)

(assert (=> b!2218910 (= e!1416990 (= (toValue!31 thiss!4894 x!427496) (toValue!31 thiss!4894 x!427497)))))

(assert (= (and bs!451808 (not res!952887)) b!2218910))

(declare-fun bs!451809 () Bool)

(assert (= bs!451809 (and m!2659683 m!2659687)))

(assert (=> bs!451809 m!2659677))

(assert (=> bs!451809 m!2659687))

(assert (=> bs!451809 s!223741))

(declare-fun bs!451810 () Bool)

(declare-fun s!223743 () Bool)

(assert (= bs!451810 (and neg-inst!1223 s!223743)))

(declare-fun res!952888 () Bool)

(declare-fun e!1416991 () Bool)

(assert (=> bs!451810 (=> res!952888 e!1416991)))

(assert (=> bs!451810 (= res!952888 (not (= (list!10073 x!427496) (list!10073 x!427498))))))

(assert (=> bs!451810 (=> true e!1416991)))

(declare-fun b!2218911 () Bool)

(assert (=> b!2218911 (= e!1416991 (= (toValue!31 thiss!4894 x!427496) (toValue!31 thiss!4894 x!427498)))))

(assert (= (and bs!451810 (not res!952888)) b!2218911))

(declare-fun bs!451811 () Bool)

(assert (= bs!451811 (and m!2659683 m!2659697)))

(assert (=> bs!451811 m!2659677))

(assert (=> bs!451811 m!2659689))

(assert (=> bs!451811 s!223743))

(declare-fun bs!451812 () Bool)

(declare-fun s!223745 () Bool)

(assert (= bs!451812 (and neg-inst!1223 s!223745)))

(declare-fun res!952889 () Bool)

(declare-fun e!1416992 () Bool)

(assert (=> bs!451812 (=> res!952889 e!1416992)))

(assert (=> bs!451812 (= res!952889 (not (= (list!10073 x!427496) (list!10073 x!427496))))))

(assert (=> bs!451812 (=> true e!1416992)))

(declare-fun b!2218912 () Bool)

(assert (=> b!2218912 (= e!1416992 (= (toValue!31 thiss!4894 x!427496) (toValue!31 thiss!4894 x!427496)))))

(assert (= (and bs!451812 (not res!952889)) b!2218912))

(assert (=> m!2659683 m!2659677))

(assert (=> m!2659683 m!2659677))

(assert (=> m!2659683 s!223745))

(declare-fun bs!451813 () Bool)

(declare-fun s!223747 () Bool)

(assert (= bs!451813 (and neg-inst!1223 s!223747)))

(declare-fun res!952890 () Bool)

(declare-fun e!1416993 () Bool)

(assert (=> bs!451813 (=> res!952890 e!1416993)))

(assert (=> bs!451813 (= res!952890 (not (= (list!10073 x!427497) (list!10073 x!427496))))))

(assert (=> bs!451813 (=> true e!1416993)))

(declare-fun b!2218913 () Bool)

(assert (=> b!2218913 (= e!1416993 (= (toValue!31 thiss!4894 x!427497) (toValue!31 thiss!4894 x!427496)))))

(assert (= (and bs!451813 (not res!952890)) b!2218913))

(assert (=> bs!451809 m!2659687))

(assert (=> bs!451809 m!2659677))

(assert (=> bs!451809 s!223747))

(declare-fun bs!451814 () Bool)

(declare-fun s!223749 () Bool)

(assert (= bs!451814 (and neg-inst!1223 s!223749)))

(declare-fun res!952891 () Bool)

(declare-fun e!1416994 () Bool)

(assert (=> bs!451814 (=> res!952891 e!1416994)))

(assert (=> bs!451814 (= res!952891 (not (= (list!10073 x!427498) (list!10073 x!427496))))))

(assert (=> bs!451814 (=> true e!1416994)))

(declare-fun b!2218914 () Bool)

(assert (=> b!2218914 (= e!1416994 (= (toValue!31 thiss!4894 x!427498) (toValue!31 thiss!4894 x!427496)))))

(assert (= (and bs!451814 (not res!952891)) b!2218914))

(assert (=> bs!451811 m!2659689))

(assert (=> bs!451811 m!2659677))

(assert (=> bs!451811 s!223749))

(assert (=> m!2659683 s!223745))

(declare-fun bs!451815 () Bool)

(assert (= bs!451815 (and m!2659689 m!2659683)))

(assert (=> bs!451815 s!223749))

(declare-fun bs!451816 () Bool)

(assert (= bs!451816 (and m!2659689 m!2659687)))

(assert (=> bs!451816 s!223735))

(declare-fun bs!451817 () Bool)

(assert (= bs!451817 (and m!2659689 m!2659697)))

(assert (=> bs!451817 s!223737))

(assert (=> m!2659689 s!223737))

(assert (=> bs!451815 s!223743))

(assert (=> bs!451816 s!223739))

(assert (=> bs!451817 s!223737))

(assert (=> m!2659689 s!223737))

(declare-fun bs!451818 () Bool)

(assert (= bs!451818 (and m!2659677 m!2659683)))

(assert (=> bs!451818 s!223745))

(declare-fun bs!451819 () Bool)

(assert (= bs!451819 (and m!2659677 m!2659687)))

(assert (=> bs!451819 s!223741))

(declare-fun bs!451820 () Bool)

(assert (= bs!451820 (and m!2659677 m!2659697 m!2659689)))

(assert (=> bs!451820 s!223743))

(assert (=> m!2659677 s!223745))

(assert (=> bs!451818 s!223745))

(assert (=> bs!451819 s!223747))

(assert (=> bs!451820 s!223749))

(assert (=> m!2659677 s!223745))

(declare-fun bs!451821 () Bool)

(declare-fun s!223751 () Bool)

(assert (= bs!451821 (and neg-inst!1223 s!223751)))

(declare-fun res!952892 () Bool)

(declare-fun e!1416995 () Bool)

(assert (=> bs!451821 (=> res!952892 e!1416995)))

(assert (=> bs!451821 (= res!952892 (not (= (list!10073 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496))) (list!10073 x!427496))))))

(assert (=> bs!451821 (=> true e!1416995)))

(declare-fun b!2218915 () Bool)

(assert (=> b!2218915 (= e!1416995 (= (toValue!31 thiss!4894 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496))) (toValue!31 thiss!4894 x!427496)))))

(assert (= (and bs!451821 (not res!952892)) b!2218915))

(declare-fun bs!451822 () Bool)

(assert (= bs!451822 (and m!2659681 m!2659683 m!2659677)))

(assert (=> bs!451822 m!2659681))

(assert (=> bs!451822 m!2659677))

(assert (=> bs!451822 s!223751))

(declare-fun bs!451823 () Bool)

(declare-fun s!223753 () Bool)

(assert (= bs!451823 (and neg-inst!1223 s!223753)))

(declare-fun res!952893 () Bool)

(declare-fun e!1416996 () Bool)

(assert (=> bs!451823 (=> res!952893 e!1416996)))

(assert (=> bs!451823 (= res!952893 (not (= (list!10073 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496))) (list!10073 x!427497))))))

(assert (=> bs!451823 (=> true e!1416996)))

(declare-fun b!2218916 () Bool)

(assert (=> b!2218916 (= e!1416996 (= (toValue!31 thiss!4894 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496))) (toValue!31 thiss!4894 x!427497)))))

(assert (= (and bs!451823 (not res!952893)) b!2218916))

(declare-fun bs!451824 () Bool)

(assert (= bs!451824 (and m!2659681 m!2659687)))

(assert (=> bs!451824 m!2659681))

(assert (=> bs!451824 m!2659687))

(assert (=> bs!451824 s!223753))

(declare-fun bs!451825 () Bool)

(declare-fun s!223755 () Bool)

(assert (= bs!451825 (and neg-inst!1223 s!223755)))

(declare-fun res!952894 () Bool)

(declare-fun e!1416997 () Bool)

(assert (=> bs!451825 (=> res!952894 e!1416997)))

(assert (=> bs!451825 (= res!952894 (not (= (list!10073 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496))) (list!10073 x!427498))))))

(assert (=> bs!451825 (=> true e!1416997)))

(declare-fun b!2218917 () Bool)

(assert (=> b!2218917 (= e!1416997 (= (toValue!31 thiss!4894 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496))) (toValue!31 thiss!4894 x!427498)))))

(assert (= (and bs!451825 (not res!952894)) b!2218917))

(declare-fun bs!451826 () Bool)

(assert (= bs!451826 (and m!2659681 m!2659697 m!2659689)))

(assert (=> bs!451826 m!2659681))

(assert (=> bs!451826 m!2659689))

(assert (=> bs!451826 s!223755))

(declare-fun bs!451827 () Bool)

(declare-fun s!223757 () Bool)

(assert (= bs!451827 (and neg-inst!1223 s!223757)))

(declare-fun res!952895 () Bool)

(declare-fun e!1416998 () Bool)

(assert (=> bs!451827 (=> res!952895 e!1416998)))

(assert (=> bs!451827 (= res!952895 (not (= (list!10073 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496))) (list!10073 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496))))))))

(assert (=> bs!451827 (=> true e!1416998)))

(declare-fun b!2218918 () Bool)

(assert (=> b!2218918 (= e!1416998 (= (toValue!31 thiss!4894 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496))) (toValue!31 thiss!4894 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496)))))))

(assert (= (and bs!451827 (not res!952895)) b!2218918))

(assert (=> m!2659681 s!223757))

(declare-fun bs!451828 () Bool)

(declare-fun s!223759 () Bool)

(assert (= bs!451828 (and neg-inst!1223 s!223759)))

(declare-fun res!952896 () Bool)

(declare-fun e!1416999 () Bool)

(assert (=> bs!451828 (=> res!952896 e!1416999)))

(assert (=> bs!451828 (= res!952896 (not (= (list!10073 x!427496) (list!10073 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496))))))))

(assert (=> bs!451828 (=> true e!1416999)))

(declare-fun b!2218919 () Bool)

(assert (=> b!2218919 (= e!1416999 (= (toValue!31 thiss!4894 x!427496) (toValue!31 thiss!4894 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496)))))))

(assert (= (and bs!451828 (not res!952896)) b!2218919))

(assert (=> bs!451822 m!2659677))

(assert (=> bs!451822 m!2659681))

(assert (=> bs!451822 s!223759))

(declare-fun bs!451829 () Bool)

(declare-fun s!223761 () Bool)

(assert (= bs!451829 (and neg-inst!1223 s!223761)))

(declare-fun res!952897 () Bool)

(declare-fun e!1417000 () Bool)

(assert (=> bs!451829 (=> res!952897 e!1417000)))

(assert (=> bs!451829 (= res!952897 (not (= (list!10073 x!427497) (list!10073 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496))))))))

(assert (=> bs!451829 (=> true e!1417000)))

(declare-fun b!2218920 () Bool)

(assert (=> b!2218920 (= e!1417000 (= (toValue!31 thiss!4894 x!427497) (toValue!31 thiss!4894 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496)))))))

(assert (= (and bs!451829 (not res!952897)) b!2218920))

(assert (=> bs!451824 m!2659687))

(assert (=> bs!451824 m!2659681))

(assert (=> bs!451824 s!223761))

(declare-fun bs!451830 () Bool)

(declare-fun s!223763 () Bool)

(assert (= bs!451830 (and neg-inst!1223 s!223763)))

(declare-fun res!952898 () Bool)

(declare-fun e!1417001 () Bool)

(assert (=> bs!451830 (=> res!952898 e!1417001)))

(assert (=> bs!451830 (= res!952898 (not (= (list!10073 x!427498) (list!10073 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496))))))))

(assert (=> bs!451830 (=> true e!1417001)))

(declare-fun b!2218921 () Bool)

(assert (=> b!2218921 (= e!1417001 (= (toValue!31 thiss!4894 x!427498) (toValue!31 thiss!4894 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496)))))))

(assert (= (and bs!451830 (not res!952898)) b!2218921))

(assert (=> bs!451826 m!2659689))

(assert (=> bs!451826 m!2659681))

(assert (=> bs!451826 s!223763))

(assert (=> m!2659681 s!223757))

(declare-fun bs!451831 () Bool)

(assert (= bs!451831 (and m!2659695 m!2659681)))

(assert (=> bs!451831 s!223761))

(declare-fun bs!451832 () Bool)

(assert (= bs!451832 (and m!2659695 m!2659687)))

(assert (=> bs!451832 s!223733))

(declare-fun bs!451833 () Bool)

(assert (= bs!451833 (and m!2659695 m!2659683 m!2659677)))

(assert (=> bs!451833 s!223747))

(declare-fun bs!451834 () Bool)

(assert (= bs!451834 (and m!2659695 m!2659697 m!2659689)))

(assert (=> bs!451834 s!223739))

(assert (=> m!2659695 s!223733))

(assert (=> bs!451831 s!223753))

(assert (=> bs!451833 s!223741))

(assert (=> bs!451832 s!223733))

(assert (=> bs!451834 s!223735))

(assert (=> m!2659695 s!223733))

(declare-fun bs!451835 () Bool)

(assert (= bs!451835 (and neg-inst!1223 b!2218893)))

(assert (=> bs!451835 (= true inst!1223)))

(declare-fun res!952880 () Bool)

(declare-fun e!1416980 () Bool)

(assert (=> start!216316 (=> res!952880 e!1416980)))

(declare-fun lambda!83592 () Int)

(declare-fun Forall!1044 (Int) Bool)

(assert (=> start!216316 (= res!952880 (not (Forall!1044 lambda!83592)))))

(assert (=> start!216316 (= (Forall!1044 lambda!83592) inst!1222)))

(assert (=> start!216316 (not e!1416980)))

(assert (=> start!216316 true))

(declare-fun e!1416981 () Bool)

(assert (=> b!2218892 (= e!1416980 e!1416981)))

(declare-fun res!952881 () Bool)

(assert (=> b!2218892 (=> res!952881 e!1416981)))

(declare-fun lambda!83593 () Int)

(declare-fun lambda!83594 () Int)

(declare-fun semiInverseModEq!1677 (Int Int) Bool)

(assert (=> b!2218892 (= res!952881 (not (semiInverseModEq!1677 lambda!83593 lambda!83594)))))

(assert (=> b!2218892 (= (semiInverseModEq!1677 lambda!83593 lambda!83594) (Forall!1044 lambda!83592))))

(declare-fun lambda!83595 () Int)

(declare-fun Forall2!665 (Int) Bool)

(assert (=> b!2218893 (= e!1416981 (Forall2!665 lambda!83595))))

(assert (=> b!2218893 (= (Forall2!665 lambda!83595) inst!1223)))

(assert (= neg-inst!1222 inst!1222))

(assert (= (and start!216316 (not res!952880)) b!2218892))

(assert (= (and b!2218892 (not res!952881)) b!2218893))

(assert (= neg-inst!1223 inst!1223))

(declare-fun m!2659703 () Bool)

(assert (=> start!216316 m!2659703))

(assert (=> start!216316 m!2659703))

(declare-fun m!2659705 () Bool)

(assert (=> b!2218892 m!2659705))

(assert (=> b!2218892 m!2659705))

(assert (=> b!2218892 m!2659703))

(declare-fun m!2659707 () Bool)

(assert (=> b!2218893 m!2659707))

(assert (=> b!2218893 m!2659707))

(push 1)

(assert (not bs!451808))

(assert (not b!2218908))

(assert (not bs!451812))

(assert (not b!2218905))

(assert (not bs!451830))

(assert (not bs!451821))

(assert (not b!2218920))

(assert (not bs!451804))

(assert (not b!2218907))

(assert (not b!2218917))

(assert (not bs!451828))

(assert (not b!2218918))

(assert (not bs!451810))

(assert (not b!2218906))

(assert (not bs!451814))

(assert (not bs!451823))

(assert (not b!2218916))

(assert (not b!2218893))

(assert (not bs!451825))

(assert (not b!2218912))

(assert (not start!216316))

(assert (not b!2218902))

(assert (not b!2218911))

(assert (not b!2218892))

(assert (not bs!451807))

(assert (not bs!451803))

(assert (not bs!451827))

(assert (not b!2218904))

(assert (not b!2218909))

(assert (not b!2218914))

(assert (not b!2218910))

(assert (not b!2218913))

(assert (not bs!451801))

(assert (not b!2218915))

(assert (not bs!451829))

(assert (not b!2218903))

(assert (not bs!451806))

(assert (not b!2218919))

(assert (not b!2218921))

(assert (not bs!451813))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!663264 () Bool)

(declare-fun list!10075 (Conc!8494) List!26075)

(assert (=> d!663264 (= (list!10073 x!427498) (list!10075 (c!354296 x!427498)))))

(declare-fun bs!451873 () Bool)

(assert (= bs!451873 d!663264))

(declare-fun m!2659743 () Bool)

(assert (=> bs!451873 m!2659743))

(assert (=> bs!451830 d!663264))

(declare-fun d!663266 () Bool)

(assert (=> d!663266 (= (list!10073 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496))) (list!10075 (c!354296 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496)))))))

(declare-fun bs!451874 () Bool)

(assert (= bs!451874 d!663266))

(declare-fun m!2659745 () Bool)

(assert (=> bs!451874 m!2659745))

(assert (=> bs!451830 d!663266))

(declare-fun d!663268 () Bool)

(declare-fun lt!827133 () List!26075)

(declare-fun efficientList!272 (BalanceConc!16706) List!26075)

(assert (=> d!663268 (= lt!827133 (efficientList!272 x!427498))))

(declare-fun charsToBigInt!1 (List!26075) Int)

(assert (=> d!663268 (= (toValue!31 thiss!4894 x!427498) (IntegerValue!12985 (charsToBigInt!1 lt!827133) lt!827133))))

(declare-fun bs!451875 () Bool)

(assert (= bs!451875 d!663268))

(declare-fun m!2659747 () Bool)

(assert (=> bs!451875 m!2659747))

(declare-fun m!2659749 () Bool)

(assert (=> bs!451875 m!2659749))

(assert (=> b!2218908 d!663268))

(declare-fun d!663270 () Bool)

(declare-fun lt!827134 () List!26075)

(assert (=> d!663270 (= lt!827134 (efficientList!272 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496))))))

(assert (=> d!663270 (= (toValue!31 thiss!4894 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496))) (IntegerValue!12985 (charsToBigInt!1 lt!827134) lt!827134))))

(declare-fun bs!451876 () Bool)

(assert (= bs!451876 d!663270))

(assert (=> bs!451876 m!2659679))

(declare-fun m!2659751 () Bool)

(assert (=> bs!451876 m!2659751))

(declare-fun m!2659753 () Bool)

(assert (=> bs!451876 m!2659753))

(assert (=> b!2218917 d!663270))

(assert (=> b!2218917 d!663268))

(declare-fun d!663272 () Bool)

(assert (=> d!663272 (= (list!10073 x!427497) (list!10075 (c!354296 x!427497)))))

(declare-fun bs!451877 () Bool)

(assert (= bs!451877 d!663272))

(declare-fun m!2659755 () Bool)

(assert (=> bs!451877 m!2659755))

(assert (=> bs!451807 d!663272))

(assert (=> bs!451807 d!663264))

(declare-fun d!663274 () Bool)

(assert (=> d!663274 (= (list!10073 x!427496) (list!10075 (c!354296 x!427496)))))

(declare-fun bs!451878 () Bool)

(assert (= bs!451878 d!663274))

(declare-fun m!2659757 () Bool)

(assert (=> bs!451878 m!2659757))

(assert (=> bs!451812 d!663274))

(assert (=> b!2218914 d!663268))

(declare-fun d!663276 () Bool)

(declare-fun lt!827135 () List!26075)

(assert (=> d!663276 (= lt!827135 (efficientList!272 x!427496))))

(assert (=> d!663276 (= (toValue!31 thiss!4894 x!427496) (IntegerValue!12985 (charsToBigInt!1 lt!827135) lt!827135))))

(declare-fun bs!451879 () Bool)

(assert (= bs!451879 d!663276))

(declare-fun m!2659759 () Bool)

(assert (=> bs!451879 m!2659759))

(declare-fun m!2659761 () Bool)

(assert (=> bs!451879 m!2659761))

(assert (=> b!2218914 d!663276))

(assert (=> bs!451810 d!663274))

(assert (=> bs!451810 d!663264))

(assert (=> bs!451829 d!663272))

(assert (=> bs!451829 d!663266))

(assert (=> b!2218907 d!663268))

(declare-fun d!663278 () Bool)

(declare-fun lt!827136 () List!26075)

(assert (=> d!663278 (= lt!827136 (efficientList!272 x!427497))))

(assert (=> d!663278 (= (toValue!31 thiss!4894 x!427497) (IntegerValue!12985 (charsToBigInt!1 lt!827136) lt!827136))))

(declare-fun bs!451880 () Bool)

(assert (= bs!451880 d!663278))

(declare-fun m!2659763 () Bool)

(assert (=> bs!451880 m!2659763))

(declare-fun m!2659765 () Bool)

(assert (=> bs!451880 m!2659765))

(assert (=> b!2218907 d!663278))

(assert (=> b!2218916 d!663270))

(assert (=> b!2218916 d!663278))

(assert (=> b!2218911 d!663276))

(assert (=> b!2218911 d!663268))

(assert (=> b!2218920 d!663278))

(assert (=> b!2218920 d!663270))

(assert (=> bs!451806 d!663264))

(assert (=> bs!451825 d!663266))

(assert (=> bs!451825 d!663264))

(assert (=> bs!451804 d!663264))

(assert (=> bs!451804 d!663272))

(assert (=> bs!451823 d!663266))

(assert (=> bs!451823 d!663272))

(assert (=> b!2218913 d!663278))

(assert (=> b!2218913 d!663276))

(assert (=> bs!451828 d!663274))

(assert (=> bs!451828 d!663266))

(assert (=> bs!451808 d!663274))

(assert (=> bs!451808 d!663272))

(assert (=> bs!451814 d!663264))

(assert (=> bs!451814 d!663274))

(assert (=> b!2218919 d!663276))

(assert (=> b!2218919 d!663270))

(assert (=> b!2218910 d!663276))

(assert (=> b!2218910 d!663278))

(assert (=> b!2218909 d!663278))

(assert (=> b!2218909 d!663268))

(assert (=> bs!451803 d!663272))

(assert (=> b!2218912 d!663276))

(assert (=> bs!451821 d!663266))

(assert (=> bs!451821 d!663274))

(assert (=> bs!451827 d!663266))

(assert (=> b!2218921 d!663268))

(assert (=> b!2218921 d!663270))

(assert (=> b!2218906 d!663278))

(assert (=> bs!451813 d!663272))

(assert (=> bs!451813 d!663274))

(assert (=> b!2218915 d!663270))

(assert (=> b!2218915 d!663276))

(assert (=> b!2218918 d!663270))

(declare-fun bs!451881 () Bool)

(assert (= bs!451881 (and m!2659687 b!2218906)))

(assert (=> bs!451881 m!2659695))

(assert (=> bs!451881 m!2659695))

(declare-fun bs!451882 () Bool)

(assert (= bs!451882 (and m!2659697 m!2659687 b!2218907)))

(assert (=> bs!451882 m!2659697))

(assert (=> bs!451882 m!2659695))

(declare-fun bs!451883 () Bool)

(assert (= bs!451883 (and m!2659697 b!2218908)))

(assert (=> bs!451883 m!2659697))

(assert (=> bs!451883 m!2659697))

(declare-fun bs!451884 () Bool)

(assert (= bs!451884 (and m!2659697 m!2659687 b!2218909)))

(assert (=> bs!451884 m!2659695))

(assert (=> bs!451884 m!2659697))

(declare-fun bs!451885 () Bool)

(assert (= bs!451885 (and m!2659683 m!2659687 b!2218910)))

(assert (=> bs!451885 m!2659683))

(assert (=> bs!451885 m!2659695))

(declare-fun bs!451886 () Bool)

(assert (= bs!451886 (and m!2659683 m!2659697 b!2218911)))

(assert (=> bs!451886 m!2659683))

(assert (=> bs!451886 m!2659697))

(declare-fun bs!451887 () Bool)

(assert (= bs!451887 (and m!2659683 b!2218912)))

(assert (=> bs!451887 m!2659683))

(assert (=> bs!451887 m!2659683))

(declare-fun bs!451888 () Bool)

(assert (= bs!451888 (and m!2659683 m!2659687 b!2218913)))

(assert (=> bs!451888 m!2659695))

(assert (=> bs!451888 m!2659683))

(declare-fun bs!451889 () Bool)

(assert (= bs!451889 (and m!2659683 m!2659697 b!2218914)))

(assert (=> bs!451889 m!2659697))

(assert (=> bs!451889 m!2659683))

(declare-fun bs!451890 () Bool)

(assert (= bs!451890 (and m!2659681 m!2659683 m!2659677 b!2218915)))

(declare-fun m!2659767 () Bool)

(assert (=> bs!451890 m!2659767))

(assert (=> bs!451890 m!2659683))

(declare-fun bs!451891 () Bool)

(assert (= bs!451891 (and m!2659681 m!2659687 b!2218916)))

(assert (=> bs!451891 m!2659767))

(assert (=> bs!451891 m!2659695))

(declare-fun bs!451892 () Bool)

(assert (= bs!451892 (and m!2659681 m!2659697 m!2659689 b!2218917)))

(assert (=> bs!451892 m!2659767))

(assert (=> bs!451892 m!2659697))

(declare-fun bs!451893 () Bool)

(assert (= bs!451893 (and m!2659681 b!2218918)))

(assert (=> bs!451893 m!2659767))

(assert (=> bs!451893 m!2659767))

(declare-fun bs!451894 () Bool)

(assert (= bs!451894 (and m!2659681 m!2659683 m!2659677 b!2218919)))

(assert (=> bs!451894 m!2659683))

(assert (=> bs!451894 m!2659767))

(declare-fun bs!451895 () Bool)

(assert (= bs!451895 (and m!2659681 m!2659687 b!2218920)))

(assert (=> bs!451895 m!2659695))

(assert (=> bs!451895 m!2659767))

(declare-fun bs!451896 () Bool)

(assert (= bs!451896 (and m!2659681 m!2659697 m!2659689 b!2218921)))

(assert (=> bs!451896 m!2659697))

(assert (=> bs!451896 m!2659767))

(push 1)

(assert (not d!663278))

(assert (not b!2218893))

(assert (not start!216316))

(assert (not b!2218905))

(assert (not d!663266))

(assert (not d!663272))

(assert (not b!2218892))

(assert (not b!2218904))

(assert (not d!663264))

(assert (not d!663268))

(assert (not b!2218902))

(assert (not d!663276))

(assert (not d!663270))

(assert (not bs!451801))

(assert (not b!2218903))

(assert (not d!663274))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!663296 () Bool)

(declare-fun lt!827145 () List!26075)

(assert (=> d!663296 (= lt!827145 (list!10073 x!427496))))

(declare-fun efficientList!274 (Conc!8494 List!26075) List!26075)

(declare-fun efficientList$default$2!94 (Conc!8494) List!26075)

(assert (=> d!663296 (= lt!827145 (efficientList!274 (c!354296 x!427496) (efficientList$default$2!94 (c!354296 x!427496))))))

(assert (=> d!663296 (= (efficientList!272 x!427496) lt!827145)))

(declare-fun bs!451921 () Bool)

(assert (= bs!451921 d!663296))

(assert (=> bs!451921 m!2659677))

(declare-fun m!2659795 () Bool)

(assert (=> bs!451921 m!2659795))

(assert (=> bs!451921 m!2659795))

(declare-fun m!2659797 () Bool)

(assert (=> bs!451921 m!2659797))

(assert (=> d!663276 d!663296))

(declare-fun d!663298 () Bool)

(declare-fun choose!644 (List!26075) Int)

(assert (=> d!663298 (= (charsToBigInt!1 lt!827135) (choose!644 lt!827135))))

(declare-fun bs!451922 () Bool)

(assert (= bs!451922 d!663298))

(declare-fun m!2659799 () Bool)

(assert (=> bs!451922 m!2659799))

(assert (=> d!663276 d!663298))

(declare-fun b!2218981 () Bool)

(declare-fun e!1417047 () List!26075)

(declare-fun ++!6473 (List!26075 List!26075) List!26075)

(assert (=> b!2218981 (= e!1417047 (++!6473 (list!10075 (left!19973 (c!354296 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496))))) (list!10075 (right!20303 (c!354296 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496)))))))))

(declare-fun b!2218978 () Bool)

(declare-fun e!1417046 () List!26075)

(assert (=> b!2218978 (= e!1417046 Nil!25991)))

(declare-fun b!2218979 () Bool)

(assert (=> b!2218979 (= e!1417046 e!1417047)))

(declare-fun c!354303 () Bool)

(assert (=> b!2218979 (= c!354303 (is-Leaf!12456 (c!354296 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496)))))))

(declare-fun d!663300 () Bool)

(declare-fun c!354302 () Bool)

(assert (=> d!663300 (= c!354302 (is-Empty!8494 (c!354296 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496)))))))

(assert (=> d!663300 (= (list!10075 (c!354296 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496)))) e!1417046)))

(declare-fun b!2218980 () Bool)

(declare-fun list!10077 (IArray!16993) List!26075)

(assert (=> b!2218980 (= e!1417047 (list!10077 (xs!11436 (c!354296 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496))))))))

(assert (= (and d!663300 c!354302) b!2218978))

(assert (= (and d!663300 (not c!354302)) b!2218979))

(assert (= (and b!2218979 c!354303) b!2218980))

(assert (= (and b!2218979 (not c!354303)) b!2218981))

(declare-fun m!2659801 () Bool)

(assert (=> b!2218981 m!2659801))

(declare-fun m!2659803 () Bool)

(assert (=> b!2218981 m!2659803))

(assert (=> b!2218981 m!2659801))

(assert (=> b!2218981 m!2659803))

(declare-fun m!2659805 () Bool)

(assert (=> b!2218981 m!2659805))

(declare-fun m!2659807 () Bool)

(assert (=> b!2218980 m!2659807))

(assert (=> d!663266 d!663300))

(declare-fun d!663302 () Bool)

(declare-fun lt!827146 () List!26075)

(assert (=> d!663302 (= lt!827146 (list!10073 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496))))))

(assert (=> d!663302 (= lt!827146 (efficientList!274 (c!354296 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496))) (efficientList$default$2!94 (c!354296 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496))))))))

(assert (=> d!663302 (= (efficientList!272 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496))) lt!827146)))

(declare-fun bs!451923 () Bool)

(assert (= bs!451923 d!663302))

(assert (=> bs!451923 m!2659679))

(assert (=> bs!451923 m!2659681))

(declare-fun m!2659809 () Bool)

(assert (=> bs!451923 m!2659809))

(assert (=> bs!451923 m!2659809))

(declare-fun m!2659811 () Bool)

(assert (=> bs!451923 m!2659811))

(assert (=> d!663270 d!663302))

(declare-fun d!663304 () Bool)

(assert (=> d!663304 (= (charsToBigInt!1 lt!827134) (choose!644 lt!827134))))

(declare-fun bs!451924 () Bool)

(assert (= bs!451924 d!663304))

(declare-fun m!2659813 () Bool)

(assert (=> bs!451924 m!2659813))

(assert (=> d!663270 d!663304))

(declare-fun b!2218985 () Bool)

(declare-fun e!1417049 () List!26075)

(assert (=> b!2218985 (= e!1417049 (++!6473 (list!10075 (left!19973 (c!354296 x!427496))) (list!10075 (right!20303 (c!354296 x!427496)))))))

(declare-fun b!2218982 () Bool)

(declare-fun e!1417048 () List!26075)

(assert (=> b!2218982 (= e!1417048 Nil!25991)))

(declare-fun b!2218983 () Bool)

(assert (=> b!2218983 (= e!1417048 e!1417049)))

(declare-fun c!354305 () Bool)

(assert (=> b!2218983 (= c!354305 (is-Leaf!12456 (c!354296 x!427496)))))

(declare-fun d!663306 () Bool)

(declare-fun c!354304 () Bool)

(assert (=> d!663306 (= c!354304 (is-Empty!8494 (c!354296 x!427496)))))

(assert (=> d!663306 (= (list!10075 (c!354296 x!427496)) e!1417048)))

(declare-fun b!2218984 () Bool)

(assert (=> b!2218984 (= e!1417049 (list!10077 (xs!11436 (c!354296 x!427496))))))

(assert (= (and d!663306 c!354304) b!2218982))

(assert (= (and d!663306 (not c!354304)) b!2218983))

(assert (= (and b!2218983 c!354305) b!2218984))

(assert (= (and b!2218983 (not c!354305)) b!2218985))

(declare-fun m!2659815 () Bool)

(assert (=> b!2218985 m!2659815))

(declare-fun m!2659817 () Bool)

(assert (=> b!2218985 m!2659817))

(assert (=> b!2218985 m!2659815))

(assert (=> b!2218985 m!2659817))

(declare-fun m!2659819 () Bool)

(assert (=> b!2218985 m!2659819))

(declare-fun m!2659821 () Bool)

(assert (=> b!2218984 m!2659821))

(assert (=> d!663274 d!663306))

(declare-fun b!2218989 () Bool)

(declare-fun e!1417051 () List!26075)

(assert (=> b!2218989 (= e!1417051 (++!6473 (list!10075 (left!19973 (c!354296 x!427498))) (list!10075 (right!20303 (c!354296 x!427498)))))))

(declare-fun b!2218986 () Bool)

(declare-fun e!1417050 () List!26075)

(assert (=> b!2218986 (= e!1417050 Nil!25991)))

(declare-fun b!2218987 () Bool)

(assert (=> b!2218987 (= e!1417050 e!1417051)))

(declare-fun c!354307 () Bool)

(assert (=> b!2218987 (= c!354307 (is-Leaf!12456 (c!354296 x!427498)))))

(declare-fun d!663308 () Bool)

(declare-fun c!354306 () Bool)

(assert (=> d!663308 (= c!354306 (is-Empty!8494 (c!354296 x!427498)))))

(assert (=> d!663308 (= (list!10075 (c!354296 x!427498)) e!1417050)))

(declare-fun b!2218988 () Bool)

(assert (=> b!2218988 (= e!1417051 (list!10077 (xs!11436 (c!354296 x!427498))))))

(assert (= (and d!663308 c!354306) b!2218986))

(assert (= (and d!663308 (not c!354306)) b!2218987))

(assert (= (and b!2218987 c!354307) b!2218988))

(assert (= (and b!2218987 (not c!354307)) b!2218989))

(declare-fun m!2659823 () Bool)

(assert (=> b!2218989 m!2659823))

(declare-fun m!2659825 () Bool)

(assert (=> b!2218989 m!2659825))

(assert (=> b!2218989 m!2659823))

(assert (=> b!2218989 m!2659825))

(declare-fun m!2659827 () Bool)

(assert (=> b!2218989 m!2659827))

(declare-fun m!2659829 () Bool)

(assert (=> b!2218988 m!2659829))

(assert (=> d!663264 d!663308))

(declare-fun b!2218993 () Bool)

(declare-fun e!1417053 () List!26075)

(assert (=> b!2218993 (= e!1417053 (++!6473 (list!10075 (left!19973 (c!354296 x!427497))) (list!10075 (right!20303 (c!354296 x!427497)))))))

(declare-fun b!2218990 () Bool)

(declare-fun e!1417052 () List!26075)

(assert (=> b!2218990 (= e!1417052 Nil!25991)))

(declare-fun b!2218991 () Bool)

(assert (=> b!2218991 (= e!1417052 e!1417053)))

(declare-fun c!354309 () Bool)

(assert (=> b!2218991 (= c!354309 (is-Leaf!12456 (c!354296 x!427497)))))

(declare-fun d!663310 () Bool)

(declare-fun c!354308 () Bool)

(assert (=> d!663310 (= c!354308 (is-Empty!8494 (c!354296 x!427497)))))

(assert (=> d!663310 (= (list!10075 (c!354296 x!427497)) e!1417052)))

(declare-fun b!2218992 () Bool)

(assert (=> b!2218992 (= e!1417053 (list!10077 (xs!11436 (c!354296 x!427497))))))

(assert (= (and d!663310 c!354308) b!2218990))

(assert (= (and d!663310 (not c!354308)) b!2218991))

(assert (= (and b!2218991 c!354309) b!2218992))

(assert (= (and b!2218991 (not c!354309)) b!2218993))

(declare-fun m!2659831 () Bool)

(assert (=> b!2218993 m!2659831))

(declare-fun m!2659833 () Bool)

(assert (=> b!2218993 m!2659833))

(assert (=> b!2218993 m!2659831))

(assert (=> b!2218993 m!2659833))

(declare-fun m!2659835 () Bool)

(assert (=> b!2218993 m!2659835))

(declare-fun m!2659837 () Bool)

(assert (=> b!2218992 m!2659837))

(assert (=> d!663272 d!663310))

(declare-fun d!663312 () Bool)

(declare-fun lt!827147 () List!26075)

(assert (=> d!663312 (= lt!827147 (list!10073 x!427498))))

(assert (=> d!663312 (= lt!827147 (efficientList!274 (c!354296 x!427498) (efficientList$default$2!94 (c!354296 x!427498))))))

(assert (=> d!663312 (= (efficientList!272 x!427498) lt!827147)))

(declare-fun bs!451925 () Bool)

(assert (= bs!451925 d!663312))

(assert (=> bs!451925 m!2659689))

(declare-fun m!2659839 () Bool)

(assert (=> bs!451925 m!2659839))

(assert (=> bs!451925 m!2659839))

(declare-fun m!2659841 () Bool)

(assert (=> bs!451925 m!2659841))

(assert (=> d!663268 d!663312))

(declare-fun d!663314 () Bool)

(assert (=> d!663314 (= (charsToBigInt!1 lt!827133) (choose!644 lt!827133))))

(declare-fun bs!451926 () Bool)

(assert (= bs!451926 d!663314))

(declare-fun m!2659843 () Bool)

(assert (=> bs!451926 m!2659843))

(assert (=> d!663268 d!663314))

(declare-fun d!663316 () Bool)

(declare-fun lt!827148 () List!26075)

(assert (=> d!663316 (= lt!827148 (list!10073 x!427497))))

(assert (=> d!663316 (= lt!827148 (efficientList!274 (c!354296 x!427497) (efficientList$default$2!94 (c!354296 x!427497))))))

(assert (=> d!663316 (= (efficientList!272 x!427497) lt!827148)))

(declare-fun bs!451927 () Bool)

(assert (= bs!451927 d!663316))

(assert (=> bs!451927 m!2659687))

(declare-fun m!2659845 () Bool)

(assert (=> bs!451927 m!2659845))

(assert (=> bs!451927 m!2659845))

(declare-fun m!2659847 () Bool)

(assert (=> bs!451927 m!2659847))

(assert (=> d!663278 d!663316))

(declare-fun d!663318 () Bool)

(assert (=> d!663318 (= (charsToBigInt!1 lt!827136) (choose!644 lt!827136))))

(declare-fun bs!451928 () Bool)

(assert (= bs!451928 d!663318))

(declare-fun m!2659849 () Bool)

(assert (=> bs!451928 m!2659849))

(assert (=> d!663278 d!663318))

(push 1)

(assert (not b!2218893))

(assert (not b!2218989))

(assert (not b!2218905))

(assert (not b!2218892))

(assert (not b!2218984))

(assert (not b!2218985))

(assert (not d!663312))

(assert (not b!2218904))

(assert (not d!663318))

(assert (not bs!451801))

(assert (not b!2218980))

(assert (not b!2218981))

(assert (not d!663316))

(assert (not start!216316))

(assert (not d!663304))

(assert (not d!663298))

(assert (not d!663302))

(assert (not d!663314))

(assert (not b!2218902))

(assert (not b!2218993))

(assert (not b!2218988))

(assert (not d!663296))

(assert (not b!2218992))

(assert (not b!2218903))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!663320 () Bool)

(declare-fun c!354312 () Bool)

(assert (=> d!663320 (= c!354312 (is-Node!8494 (c!354296 x!427497)))))

(declare-fun e!1417058 () Bool)

(assert (=> d!663320 (= (inv!35238 (c!354296 x!427497)) e!1417058)))

(declare-fun b!2219000 () Bool)

(declare-fun inv!35242 (Conc!8494) Bool)

(assert (=> b!2219000 (= e!1417058 (inv!35242 (c!354296 x!427497)))))

(declare-fun b!2219001 () Bool)

(declare-fun e!1417059 () Bool)

(assert (=> b!2219001 (= e!1417058 e!1417059)))

(declare-fun res!952942 () Bool)

(assert (=> b!2219001 (= res!952942 (not (is-Leaf!12456 (c!354296 x!427497))))))

(assert (=> b!2219001 (=> res!952942 e!1417059)))

(declare-fun b!2219002 () Bool)

(declare-fun inv!35243 (Conc!8494) Bool)

(assert (=> b!2219002 (= e!1417059 (inv!35243 (c!354296 x!427497)))))

(assert (= (and d!663320 c!354312) b!2219000))

(assert (= (and d!663320 (not c!354312)) b!2219001))

(assert (= (and b!2219001 (not res!952942)) b!2219002))

(declare-fun m!2659851 () Bool)

(assert (=> b!2219000 m!2659851))

(declare-fun m!2659853 () Bool)

(assert (=> b!2219002 m!2659853))

(assert (=> b!2218904 d!663320))

(assert (=> b!2218903 d!663278))

(assert (=> b!2218903 d!663268))

(assert (=> bs!451801 d!663266))

(declare-fun d!663322 () Bool)

(declare-fun c!354316 () Bool)

(assert (=> d!663322 (= c!354316 (is-IntegerValue!12985 (toValue!31 thiss!4894 x!427496)))))

(declare-fun e!1417062 () BalanceConc!16706)

(assert (=> d!663322 (= (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496)) e!1417062)))

(declare-fun b!2219007 () Bool)

(declare-fun seqFromList!2884 (List!26075) BalanceConc!16706)

(assert (=> b!2219007 (= e!1417062 (seqFromList!2884 (text!30744 (toValue!31 thiss!4894 x!427496))))))

(declare-fun b!2219008 () Bool)

(assert (=> b!2219008 (= e!1417062 (BalanceConc!16707 Empty!8494))))

(assert (= (and d!663322 c!354316) b!2219007))

(assert (= (and d!663322 (not c!354316)) b!2219008))

(declare-fun m!2659855 () Bool)

(assert (=> b!2219007 m!2659855))

(assert (=> bs!451801 d!663322))

(assert (=> bs!451801 d!663276))

(assert (=> bs!451801 d!663274))

(declare-fun d!663326 () Bool)

(declare-fun c!354317 () Bool)

(assert (=> d!663326 (= c!354317 (is-Node!8494 (c!354296 x!427496)))))

(declare-fun e!1417063 () Bool)

(assert (=> d!663326 (= (inv!35238 (c!354296 x!427496)) e!1417063)))

(declare-fun b!2219009 () Bool)

(assert (=> b!2219009 (= e!1417063 (inv!35242 (c!354296 x!427496)))))

(declare-fun b!2219010 () Bool)

(declare-fun e!1417064 () Bool)

(assert (=> b!2219010 (= e!1417063 e!1417064)))

(declare-fun res!952943 () Bool)

(assert (=> b!2219010 (= res!952943 (not (is-Leaf!12456 (c!354296 x!427496))))))

(assert (=> b!2219010 (=> res!952943 e!1417064)))

(declare-fun b!2219011 () Bool)

(assert (=> b!2219011 (= e!1417064 (inv!35243 (c!354296 x!427496)))))

(assert (= (and d!663326 c!354317) b!2219009))

(assert (= (and d!663326 (not c!354317)) b!2219010))

(assert (= (and b!2219010 (not res!952943)) b!2219011))

(declare-fun m!2659857 () Bool)

(assert (=> b!2219009 m!2659857))

(declare-fun m!2659859 () Bool)

(assert (=> b!2219011 m!2659859))

(assert (=> b!2218902 d!663326))

(assert (=> d!663316 d!663272))

(declare-fun b!2219036 () Bool)

(declare-datatypes ((Unit!38958 0))(
  ( (Unit!38959) )
))
(declare-fun lt!827160 () Unit!38958)

(declare-fun lt!827162 () Unit!38958)

(assert (=> b!2219036 (= lt!827160 lt!827162)))

(declare-fun lt!827159 () List!26075)

(declare-fun lt!827163 () List!26075)

(declare-fun call!132417 () List!26075)

(assert (=> b!2219036 (= (++!6473 (++!6473 lt!827159 lt!827163) (efficientList$default$2!94 (c!354296 x!427497))) (++!6473 lt!827159 call!132417))))

(declare-fun lemmaConcatAssociativity!1329 (List!26075 List!26075 List!26075) Unit!38958)

(assert (=> b!2219036 (= lt!827162 (lemmaConcatAssociativity!1329 lt!827159 lt!827163 (efficientList$default$2!94 (c!354296 x!427497))))))

(assert (=> b!2219036 (= lt!827163 (list!10075 (right!20303 (c!354296 x!427497))))))

(assert (=> b!2219036 (= lt!827159 (list!10075 (left!19973 (c!354296 x!427497))))))

(declare-fun e!1417077 () List!26075)

(assert (=> b!2219036 (= e!1417077 (efficientList!274 (left!19973 (c!354296 x!427497)) (efficientList!274 (right!20303 (c!354296 x!427497)) (efficientList$default$2!94 (c!354296 x!427497)))))))

(declare-fun b!2219037 () Bool)

(declare-fun e!1417078 () List!26075)

(assert (=> b!2219037 (= e!1417078 (efficientList$default$2!94 (c!354296 x!427497)))))

(declare-fun bm!132412 () Bool)

(declare-fun c!354330 () Bool)

(declare-fun c!354331 () Bool)

(assert (=> bm!132412 (= c!354330 c!354331)))

(declare-fun e!1417079 () List!26075)

(assert (=> bm!132412 (= call!132417 (++!6473 e!1417079 (efficientList$default$2!94 (c!354296 x!427497))))))

(declare-fun b!2219039 () Bool)

(assert (=> b!2219039 (= e!1417078 e!1417077)))

(assert (=> b!2219039 (= c!354331 (is-Leaf!12456 (c!354296 x!427497)))))

(declare-fun b!2219040 () Bool)

(declare-fun efficientList!276 (IArray!16993) List!26075)

(assert (=> b!2219040 (= e!1417079 (efficientList!276 (xs!11436 (c!354296 x!427497))))))

(declare-fun b!2219041 () Bool)

(assert (=> b!2219041 (= e!1417077 call!132417)))

(declare-fun d!663328 () Bool)

(declare-fun lt!827161 () List!26075)

(assert (=> d!663328 (= lt!827161 (++!6473 (list!10075 (c!354296 x!427497)) (efficientList$default$2!94 (c!354296 x!427497))))))

(assert (=> d!663328 (= lt!827161 e!1417078)))

(declare-fun c!354332 () Bool)

(assert (=> d!663328 (= c!354332 (is-Empty!8494 (c!354296 x!427497)))))

(assert (=> d!663328 (= (efficientList!274 (c!354296 x!427497) (efficientList$default$2!94 (c!354296 x!427497))) lt!827161)))

(declare-fun b!2219038 () Bool)

(assert (=> b!2219038 (= e!1417079 lt!827163)))

(assert (= (and d!663328 c!354332) b!2219037))

(assert (= (and d!663328 (not c!354332)) b!2219039))

(assert (= (and b!2219039 c!354331) b!2219041))

(assert (= (and b!2219039 (not c!354331)) b!2219036))

(assert (= (or b!2219041 b!2219036) bm!132412))

(assert (= (and bm!132412 c!354330) b!2219040))

(assert (= (and bm!132412 (not c!354330)) b!2219038))

(declare-fun m!2659869 () Bool)

(assert (=> b!2219036 m!2659869))

(assert (=> b!2219036 m!2659869))

(assert (=> b!2219036 m!2659845))

(declare-fun m!2659871 () Bool)

(assert (=> b!2219036 m!2659871))

(assert (=> b!2219036 m!2659831))

(assert (=> b!2219036 m!2659833))

(declare-fun m!2659873 () Bool)

(assert (=> b!2219036 m!2659873))

(declare-fun m!2659875 () Bool)

(assert (=> b!2219036 m!2659875))

(declare-fun m!2659877 () Bool)

(assert (=> b!2219036 m!2659877))

(assert (=> b!2219036 m!2659845))

(declare-fun m!2659879 () Bool)

(assert (=> b!2219036 m!2659879))

(assert (=> b!2219036 m!2659845))

(assert (=> b!2219036 m!2659873))

(assert (=> bm!132412 m!2659845))

(declare-fun m!2659881 () Bool)

(assert (=> bm!132412 m!2659881))

(declare-fun m!2659883 () Bool)

(assert (=> b!2219040 m!2659883))

(assert (=> d!663328 m!2659755))

(assert (=> d!663328 m!2659755))

(assert (=> d!663328 m!2659845))

(declare-fun m!2659885 () Bool)

(assert (=> d!663328 m!2659885))

(assert (=> d!663316 d!663328))

(declare-fun d!663332 () Bool)

(assert (=> d!663332 (= (efficientList$default$2!94 (c!354296 x!427497)) Nil!25991)))

(assert (=> d!663316 d!663332))

(declare-fun d!663334 () Bool)

(assert (=> d!663334 true))

(assert (=> d!663334 true))

(declare-fun res!952946 () Int)

(assert (=> d!663334 (= (choose!644 lt!827134) res!952946)))

(assert (=> d!663304 d!663334))

(declare-fun d!663336 () Bool)

(assert (=> d!663336 true))

(assert (=> d!663336 true))

(declare-fun res!952947 () Int)

(assert (=> d!663336 (= (choose!644 lt!827133) res!952947)))

(assert (=> d!663314 d!663336))

(assert (=> start!216316 d!663266))

(declare-fun d!663338 () Bool)

(declare-fun isBalanced!2630 (Conc!8494) Bool)

(assert (=> d!663338 (= (inv!35239 x!427496) (isBalanced!2630 (c!354296 x!427496)))))

(declare-fun bs!451929 () Bool)

(assert (= bs!451929 d!663338))

(declare-fun m!2659887 () Bool)

(assert (=> bs!451929 m!2659887))

(assert (=> start!216316 d!663338))

(assert (=> start!216316 d!663274))

(assert (=> start!216316 d!663322))

(assert (=> start!216316 d!663276))

(declare-fun d!663340 () Bool)

(declare-fun choose!13076 (Int) Bool)

(assert (=> d!663340 (= (Forall!1044 lambda!83592) (choose!13076 lambda!83592))))

(declare-fun bs!451930 () Bool)

(assert (= bs!451930 d!663340))

(declare-fun m!2659889 () Bool)

(assert (=> bs!451930 m!2659889))

(assert (=> start!216316 d!663340))

(assert (=> d!663312 d!663264))

(declare-fun b!2219042 () Bool)

(declare-fun lt!827165 () Unit!38958)

(declare-fun lt!827167 () Unit!38958)

(assert (=> b!2219042 (= lt!827165 lt!827167)))

(declare-fun call!132418 () List!26075)

(declare-fun lt!827164 () List!26075)

(declare-fun lt!827168 () List!26075)

(assert (=> b!2219042 (= (++!6473 (++!6473 lt!827164 lt!827168) (efficientList$default$2!94 (c!354296 x!427498))) (++!6473 lt!827164 call!132418))))

(assert (=> b!2219042 (= lt!827167 (lemmaConcatAssociativity!1329 lt!827164 lt!827168 (efficientList$default$2!94 (c!354296 x!427498))))))

(assert (=> b!2219042 (= lt!827168 (list!10075 (right!20303 (c!354296 x!427498))))))

(assert (=> b!2219042 (= lt!827164 (list!10075 (left!19973 (c!354296 x!427498))))))

(declare-fun e!1417080 () List!26075)

(assert (=> b!2219042 (= e!1417080 (efficientList!274 (left!19973 (c!354296 x!427498)) (efficientList!274 (right!20303 (c!354296 x!427498)) (efficientList$default$2!94 (c!354296 x!427498)))))))

(declare-fun b!2219043 () Bool)

(declare-fun e!1417081 () List!26075)

(assert (=> b!2219043 (= e!1417081 (efficientList$default$2!94 (c!354296 x!427498)))))

(declare-fun bm!132413 () Bool)

(declare-fun c!354333 () Bool)

(declare-fun c!354334 () Bool)

(assert (=> bm!132413 (= c!354333 c!354334)))

(declare-fun e!1417082 () List!26075)

(assert (=> bm!132413 (= call!132418 (++!6473 e!1417082 (efficientList$default$2!94 (c!354296 x!427498))))))

(declare-fun b!2219045 () Bool)

(assert (=> b!2219045 (= e!1417081 e!1417080)))

(assert (=> b!2219045 (= c!354334 (is-Leaf!12456 (c!354296 x!427498)))))

(declare-fun b!2219046 () Bool)

(assert (=> b!2219046 (= e!1417082 (efficientList!276 (xs!11436 (c!354296 x!427498))))))

(declare-fun b!2219047 () Bool)

(assert (=> b!2219047 (= e!1417080 call!132418)))

(declare-fun d!663342 () Bool)

(declare-fun lt!827166 () List!26075)

(assert (=> d!663342 (= lt!827166 (++!6473 (list!10075 (c!354296 x!427498)) (efficientList$default$2!94 (c!354296 x!427498))))))

(assert (=> d!663342 (= lt!827166 e!1417081)))

(declare-fun c!354335 () Bool)

(assert (=> d!663342 (= c!354335 (is-Empty!8494 (c!354296 x!427498)))))

(assert (=> d!663342 (= (efficientList!274 (c!354296 x!427498) (efficientList$default$2!94 (c!354296 x!427498))) lt!827166)))

(declare-fun b!2219044 () Bool)

(assert (=> b!2219044 (= e!1417082 lt!827168)))

(assert (= (and d!663342 c!354335) b!2219043))

(assert (= (and d!663342 (not c!354335)) b!2219045))

(assert (= (and b!2219045 c!354334) b!2219047))

(assert (= (and b!2219045 (not c!354334)) b!2219042))

(assert (= (or b!2219047 b!2219042) bm!132413))

(assert (= (and bm!132413 c!354333) b!2219046))

(assert (= (and bm!132413 (not c!354333)) b!2219044))

(declare-fun m!2659891 () Bool)

(assert (=> b!2219042 m!2659891))

(assert (=> b!2219042 m!2659891))

(assert (=> b!2219042 m!2659839))

(declare-fun m!2659893 () Bool)

(assert (=> b!2219042 m!2659893))

(assert (=> b!2219042 m!2659823))

(assert (=> b!2219042 m!2659825))

(declare-fun m!2659895 () Bool)

(assert (=> b!2219042 m!2659895))

(declare-fun m!2659897 () Bool)

(assert (=> b!2219042 m!2659897))

(declare-fun m!2659899 () Bool)

(assert (=> b!2219042 m!2659899))

(assert (=> b!2219042 m!2659839))

(declare-fun m!2659901 () Bool)

(assert (=> b!2219042 m!2659901))

(assert (=> b!2219042 m!2659839))

(assert (=> b!2219042 m!2659895))

(assert (=> bm!132413 m!2659839))

(declare-fun m!2659903 () Bool)

(assert (=> bm!132413 m!2659903))

(declare-fun m!2659905 () Bool)

(assert (=> b!2219046 m!2659905))

(assert (=> d!663342 m!2659743))

(assert (=> d!663342 m!2659743))

(assert (=> d!663342 m!2659839))

(declare-fun m!2659907 () Bool)

(assert (=> d!663342 m!2659907))

(assert (=> d!663312 d!663342))

(declare-fun d!663344 () Bool)

(assert (=> d!663344 (= (efficientList$default$2!94 (c!354296 x!427498)) Nil!25991)))

(assert (=> d!663312 d!663344))

(declare-fun d!663346 () Bool)

(assert (=> d!663346 true))

(assert (=> d!663346 true))

(declare-fun res!952948 () Int)

(assert (=> d!663346 (= (choose!644 lt!827136) res!952948)))

(assert (=> d!663318 d!663346))

(assert (=> d!663296 d!663274))

(declare-fun b!2219048 () Bool)

(declare-fun lt!827170 () Unit!38958)

(declare-fun lt!827172 () Unit!38958)

(assert (=> b!2219048 (= lt!827170 lt!827172)))

(declare-fun lt!827173 () List!26075)

(declare-fun call!132419 () List!26075)

(declare-fun lt!827169 () List!26075)

(assert (=> b!2219048 (= (++!6473 (++!6473 lt!827169 lt!827173) (efficientList$default$2!94 (c!354296 x!427496))) (++!6473 lt!827169 call!132419))))

(assert (=> b!2219048 (= lt!827172 (lemmaConcatAssociativity!1329 lt!827169 lt!827173 (efficientList$default$2!94 (c!354296 x!427496))))))

(assert (=> b!2219048 (= lt!827173 (list!10075 (right!20303 (c!354296 x!427496))))))

(assert (=> b!2219048 (= lt!827169 (list!10075 (left!19973 (c!354296 x!427496))))))

(declare-fun e!1417083 () List!26075)

(assert (=> b!2219048 (= e!1417083 (efficientList!274 (left!19973 (c!354296 x!427496)) (efficientList!274 (right!20303 (c!354296 x!427496)) (efficientList$default$2!94 (c!354296 x!427496)))))))

(declare-fun b!2219049 () Bool)

(declare-fun e!1417084 () List!26075)

(assert (=> b!2219049 (= e!1417084 (efficientList$default$2!94 (c!354296 x!427496)))))

(declare-fun bm!132414 () Bool)

(declare-fun c!354336 () Bool)

(declare-fun c!354337 () Bool)

(assert (=> bm!132414 (= c!354336 c!354337)))

(declare-fun e!1417085 () List!26075)

(assert (=> bm!132414 (= call!132419 (++!6473 e!1417085 (efficientList$default$2!94 (c!354296 x!427496))))))

(declare-fun b!2219051 () Bool)

(assert (=> b!2219051 (= e!1417084 e!1417083)))

(assert (=> b!2219051 (= c!354337 (is-Leaf!12456 (c!354296 x!427496)))))

(declare-fun b!2219052 () Bool)

(assert (=> b!2219052 (= e!1417085 (efficientList!276 (xs!11436 (c!354296 x!427496))))))

(declare-fun b!2219053 () Bool)

(assert (=> b!2219053 (= e!1417083 call!132419)))

(declare-fun d!663348 () Bool)

(declare-fun lt!827171 () List!26075)

(assert (=> d!663348 (= lt!827171 (++!6473 (list!10075 (c!354296 x!427496)) (efficientList$default$2!94 (c!354296 x!427496))))))

(assert (=> d!663348 (= lt!827171 e!1417084)))

(declare-fun c!354338 () Bool)

(assert (=> d!663348 (= c!354338 (is-Empty!8494 (c!354296 x!427496)))))

(assert (=> d!663348 (= (efficientList!274 (c!354296 x!427496) (efficientList$default$2!94 (c!354296 x!427496))) lt!827171)))

(declare-fun b!2219050 () Bool)

(assert (=> b!2219050 (= e!1417085 lt!827173)))

(assert (= (and d!663348 c!354338) b!2219049))

(assert (= (and d!663348 (not c!354338)) b!2219051))

(assert (= (and b!2219051 c!354337) b!2219053))

(assert (= (and b!2219051 (not c!354337)) b!2219048))

(assert (= (or b!2219053 b!2219048) bm!132414))

(assert (= (and bm!132414 c!354336) b!2219052))

(assert (= (and bm!132414 (not c!354336)) b!2219050))

(declare-fun m!2659909 () Bool)

(assert (=> b!2219048 m!2659909))

(assert (=> b!2219048 m!2659909))

(assert (=> b!2219048 m!2659795))

(declare-fun m!2659911 () Bool)

(assert (=> b!2219048 m!2659911))

(assert (=> b!2219048 m!2659815))

(assert (=> b!2219048 m!2659817))

(declare-fun m!2659913 () Bool)

(assert (=> b!2219048 m!2659913))

(declare-fun m!2659915 () Bool)

(assert (=> b!2219048 m!2659915))

(declare-fun m!2659917 () Bool)

(assert (=> b!2219048 m!2659917))

(assert (=> b!2219048 m!2659795))

(declare-fun m!2659919 () Bool)

(assert (=> b!2219048 m!2659919))

(assert (=> b!2219048 m!2659795))

(assert (=> b!2219048 m!2659913))

(assert (=> bm!132414 m!2659795))

(declare-fun m!2659921 () Bool)

(assert (=> bm!132414 m!2659921))

(declare-fun m!2659923 () Bool)

(assert (=> b!2219052 m!2659923))

(assert (=> d!663348 m!2659757))

(assert (=> d!663348 m!2659757))

(assert (=> d!663348 m!2659795))

(declare-fun m!2659925 () Bool)

(assert (=> d!663348 m!2659925))

(assert (=> d!663296 d!663348))

(declare-fun d!663350 () Bool)

(assert (=> d!663350 (= (efficientList$default$2!94 (c!354296 x!427496)) Nil!25991)))

(assert (=> d!663296 d!663350))

(declare-fun bs!451932 () Bool)

(declare-fun d!663352 () Bool)

(assert (= bs!451932 (and d!663352 start!216316)))

(declare-fun lambda!83620 () Int)

(assert (=> bs!451932 (not (= lambda!83620 lambda!83592))))

(assert (=> d!663352 true))

(declare-fun order!14835 () Int)

(declare-fun order!14837 () Int)

(declare-fun dynLambda!11492 (Int Int) Int)

(declare-fun dynLambda!11493 (Int Int) Int)

(assert (=> d!663352 (< (dynLambda!11492 order!14835 lambda!83593) (dynLambda!11493 order!14837 lambda!83620))))

(assert (=> d!663352 true))

(declare-fun order!14839 () Int)

(declare-fun dynLambda!11494 (Int Int) Int)

(assert (=> d!663352 (< (dynLambda!11494 order!14839 lambda!83594) (dynLambda!11493 order!14837 lambda!83620))))

(assert (=> d!663352 (= (semiInverseModEq!1677 lambda!83593 lambda!83594) (Forall!1044 lambda!83620))))

(declare-fun bs!451933 () Bool)

(assert (= bs!451933 d!663352))

(declare-fun m!2659931 () Bool)

(assert (=> bs!451933 m!2659931))

(assert (=> b!2218892 d!663352))

(assert (=> b!2218892 d!663340))

(declare-fun d!663356 () Bool)

(assert (=> d!663356 true))

(assert (=> d!663356 true))

(declare-fun res!952949 () Int)

(assert (=> d!663356 (= (choose!644 lt!827135) res!952949)))

(assert (=> d!663298 d!663356))

(declare-fun d!663358 () Bool)

(declare-fun c!354339 () Bool)

(assert (=> d!663358 (= c!354339 (is-Node!8494 (c!354296 x!427498)))))

(declare-fun e!1417086 () Bool)

(assert (=> d!663358 (= (inv!35238 (c!354296 x!427498)) e!1417086)))

(declare-fun b!2219058 () Bool)

(assert (=> b!2219058 (= e!1417086 (inv!35242 (c!354296 x!427498)))))

(declare-fun b!2219059 () Bool)

(declare-fun e!1417087 () Bool)

(assert (=> b!2219059 (= e!1417086 e!1417087)))

(declare-fun res!952950 () Bool)

(assert (=> b!2219059 (= res!952950 (not (is-Leaf!12456 (c!354296 x!427498))))))

(assert (=> b!2219059 (=> res!952950 e!1417087)))

(declare-fun b!2219060 () Bool)

(assert (=> b!2219060 (= e!1417087 (inv!35243 (c!354296 x!427498)))))

(assert (= (and d!663358 c!354339) b!2219058))

(assert (= (and d!663358 (not c!354339)) b!2219059))

(assert (= (and b!2219059 (not res!952950)) b!2219060))

(declare-fun m!2659935 () Bool)

(assert (=> b!2219058 m!2659935))

(declare-fun m!2659937 () Bool)

(assert (=> b!2219060 m!2659937))

(assert (=> b!2218905 d!663358))

(assert (=> b!2218893 d!663264))

(declare-fun d!663362 () Bool)

(assert (=> d!663362 (= (inv!35239 x!427498) (isBalanced!2630 (c!354296 x!427498)))))

(declare-fun bs!451935 () Bool)

(assert (= bs!451935 d!663362))

(declare-fun m!2659939 () Bool)

(assert (=> bs!451935 m!2659939))

(assert (=> b!2218893 d!663362))

(declare-fun d!663364 () Bool)

(declare-fun choose!13077 (Int) Bool)

(assert (=> d!663364 (= (Forall2!665 lambda!83595) (choose!13077 lambda!83595))))

(declare-fun bs!451936 () Bool)

(assert (= bs!451936 d!663364))

(declare-fun m!2659941 () Bool)

(assert (=> bs!451936 m!2659941))

(assert (=> b!2218893 d!663364))

(assert (=> b!2218893 d!663272))

(declare-fun d!663366 () Bool)

(assert (=> d!663366 (= (inv!35239 x!427497) (isBalanced!2630 (c!354296 x!427497)))))

(declare-fun bs!451937 () Bool)

(assert (= bs!451937 d!663366))

(declare-fun m!2659945 () Bool)

(assert (=> bs!451937 m!2659945))

(assert (=> b!2218893 d!663366))

(assert (=> d!663302 d!663266))

(declare-fun b!2219065 () Bool)

(declare-fun lt!827178 () Unit!38958)

(declare-fun lt!827180 () Unit!38958)

(assert (=> b!2219065 (= lt!827178 lt!827180)))

(declare-fun lt!827181 () List!26075)

(declare-fun call!132420 () List!26075)

(declare-fun lt!827177 () List!26075)

(assert (=> b!2219065 (= (++!6473 (++!6473 lt!827177 lt!827181) (efficientList$default$2!94 (c!354296 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496))))) (++!6473 lt!827177 call!132420))))

(assert (=> b!2219065 (= lt!827180 (lemmaConcatAssociativity!1329 lt!827177 lt!827181 (efficientList$default$2!94 (c!354296 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496))))))))

(assert (=> b!2219065 (= lt!827181 (list!10075 (right!20303 (c!354296 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496))))))))

(assert (=> b!2219065 (= lt!827177 (list!10075 (left!19973 (c!354296 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496))))))))

(declare-fun e!1417090 () List!26075)

(assert (=> b!2219065 (= e!1417090 (efficientList!274 (left!19973 (c!354296 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496)))) (efficientList!274 (right!20303 (c!354296 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496)))) (efficientList$default$2!94 (c!354296 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496)))))))))

(declare-fun b!2219066 () Bool)

(declare-fun e!1417091 () List!26075)

(assert (=> b!2219066 (= e!1417091 (efficientList$default$2!94 (c!354296 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496)))))))

(declare-fun bm!132415 () Bool)

(declare-fun c!354342 () Bool)

(declare-fun c!354343 () Bool)

(assert (=> bm!132415 (= c!354342 c!354343)))

(declare-fun e!1417092 () List!26075)

(assert (=> bm!132415 (= call!132420 (++!6473 e!1417092 (efficientList$default$2!94 (c!354296 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496))))))))

(declare-fun b!2219068 () Bool)

(assert (=> b!2219068 (= e!1417091 e!1417090)))

(assert (=> b!2219068 (= c!354343 (is-Leaf!12456 (c!354296 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496)))))))

(declare-fun b!2219069 () Bool)

(assert (=> b!2219069 (= e!1417092 (efficientList!276 (xs!11436 (c!354296 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496))))))))

(declare-fun b!2219070 () Bool)

(assert (=> b!2219070 (= e!1417090 call!132420)))

(declare-fun d!663368 () Bool)

(declare-fun lt!827179 () List!26075)

(assert (=> d!663368 (= lt!827179 (++!6473 (list!10075 (c!354296 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496)))) (efficientList$default$2!94 (c!354296 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496))))))))

(assert (=> d!663368 (= lt!827179 e!1417091)))

(declare-fun c!354344 () Bool)

(assert (=> d!663368 (= c!354344 (is-Empty!8494 (c!354296 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496)))))))

(assert (=> d!663368 (= (efficientList!274 (c!354296 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496))) (efficientList$default$2!94 (c!354296 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496))))) lt!827179)))

(declare-fun b!2219067 () Bool)

(assert (=> b!2219067 (= e!1417092 lt!827181)))

(assert (= (and d!663368 c!354344) b!2219066))

(assert (= (and d!663368 (not c!354344)) b!2219068))

(assert (= (and b!2219068 c!354343) b!2219070))

(assert (= (and b!2219068 (not c!354343)) b!2219065))

(assert (= (or b!2219070 b!2219065) bm!132415))

(assert (= (and bm!132415 c!354342) b!2219069))

(assert (= (and bm!132415 (not c!354342)) b!2219067))

(declare-fun m!2659953 () Bool)

(assert (=> b!2219065 m!2659953))

(assert (=> b!2219065 m!2659953))

(assert (=> b!2219065 m!2659809))

(declare-fun m!2659957 () Bool)

(assert (=> b!2219065 m!2659957))

(assert (=> b!2219065 m!2659801))

(assert (=> b!2219065 m!2659803))

(declare-fun m!2659961 () Bool)

(assert (=> b!2219065 m!2659961))

(declare-fun m!2659963 () Bool)

(assert (=> b!2219065 m!2659963))

(declare-fun m!2659965 () Bool)

(assert (=> b!2219065 m!2659965))

(assert (=> b!2219065 m!2659809))

(declare-fun m!2659967 () Bool)

(assert (=> b!2219065 m!2659967))

(assert (=> b!2219065 m!2659809))

(assert (=> b!2219065 m!2659961))

(assert (=> bm!132415 m!2659809))

(declare-fun m!2659969 () Bool)

(assert (=> bm!132415 m!2659969))

(declare-fun m!2659973 () Bool)

(assert (=> b!2219069 m!2659973))

(assert (=> d!663368 m!2659745))

(assert (=> d!663368 m!2659745))

(assert (=> d!663368 m!2659809))

(declare-fun m!2659975 () Bool)

(assert (=> d!663368 m!2659975))

(assert (=> d!663302 d!663368))

(declare-fun d!663376 () Bool)

(assert (=> d!663376 (= (efficientList$default$2!94 (c!354296 (toCharacters!24 thiss!4894 (toValue!31 thiss!4894 x!427496)))) Nil!25991)))

(assert (=> d!663302 d!663376))

(declare-fun e!1417099 () Bool)

(declare-fun b!2219081 () Bool)

(declare-fun tp!691225 () Bool)

(declare-fun tp!691226 () Bool)

(assert (=> b!2219081 (= e!1417099 (and (inv!35238 (left!19973 (c!354296 x!427498))) tp!691225 (inv!35238 (right!20303 (c!354296 x!427498))) tp!691226))))

(declare-fun b!2219082 () Bool)

(declare-fun inv!35244 (IArray!16993) Bool)

(assert (=> b!2219082 (= e!1417099 (inv!35244 (xs!11436 (c!354296 x!427498))))))

(assert (=> b!2218905 (= tp!691210 (and (inv!35238 (c!354296 x!427498)) e!1417099))))

(assert (= (and b!2218905 (is-Node!8494 (c!354296 x!427498))) b!2219081))

(assert (= (and b!2218905 (is-Leaf!12456 (c!354296 x!427498))) b!2219082))

(declare-fun m!2659995 () Bool)

(assert (=> b!2219081 m!2659995))

(declare-fun m!2659997 () Bool)

(assert (=> b!2219081 m!2659997))

(declare-fun m!2659999 () Bool)

(assert (=> b!2219082 m!2659999))

(assert (=> b!2218905 m!2659701))

(declare-fun tp!691227 () Bool)

(declare-fun tp!691228 () Bool)

(declare-fun e!1417101 () Bool)

(declare-fun b!2219083 () Bool)

(assert (=> b!2219083 (= e!1417101 (and (inv!35238 (left!19973 (c!354296 x!427497))) tp!691227 (inv!35238 (right!20303 (c!354296 x!427497))) tp!691228))))

(declare-fun b!2219084 () Bool)

(assert (=> b!2219084 (= e!1417101 (inv!35244 (xs!11436 (c!354296 x!427497))))))

(assert (=> b!2218904 (= tp!691211 (and (inv!35238 (c!354296 x!427497)) e!1417101))))

(assert (= (and b!2218904 (is-Node!8494 (c!354296 x!427497))) b!2219083))

(assert (= (and b!2218904 (is-Leaf!12456 (c!354296 x!427497))) b!2219084))

(declare-fun m!2660003 () Bool)

(assert (=> b!2219083 m!2660003))

(declare-fun m!2660005 () Bool)

(assert (=> b!2219083 m!2660005))

(declare-fun m!2660007 () Bool)

(assert (=> b!2219084 m!2660007))

(assert (=> b!2218904 m!2659699))

(declare-fun tp!691230 () Bool)

(declare-fun b!2219089 () Bool)

(declare-fun tp!691229 () Bool)

(declare-fun e!1417105 () Bool)

(assert (=> b!2219089 (= e!1417105 (and (inv!35238 (left!19973 (c!354296 x!427496))) tp!691229 (inv!35238 (right!20303 (c!354296 x!427496))) tp!691230))))

(declare-fun b!2219090 () Bool)

(assert (=> b!2219090 (= e!1417105 (inv!35244 (xs!11436 (c!354296 x!427496))))))

(assert (=> b!2218902 (= tp!691209 (and (inv!35238 (c!354296 x!427496)) e!1417105))))

(assert (= (and b!2218902 (is-Node!8494 (c!354296 x!427496))) b!2219089))

(assert (= (and b!2218902 (is-Leaf!12456 (c!354296 x!427496))) b!2219090))

(declare-fun m!2660009 () Bool)

(assert (=> b!2219089 m!2660009))

(declare-fun m!2660011 () Bool)

(assert (=> b!2219089 m!2660011))

(declare-fun m!2660013 () Bool)

(assert (=> b!2219090 m!2660013))

(assert (=> b!2218902 m!2659675))

(push 1)

(assert (not b!2219060))

(assert (not b!2218981))

(assert (not b!2219052))

(assert (not b!2218905))

(assert (not d!663348))

(assert (not b!2218985))

(assert (not b!2219040))

(assert (not b!2218980))

(assert (not b!2218992))

(assert (not b!2219007))

(assert (not b!2219036))

(assert (not d!663328))

(assert (not d!663366))

(assert (not bm!132414))

(assert (not d!663352))

(assert (not b!2218989))

(assert (not b!2219011))

(assert (not b!2219090))

(assert (not b!2219069))

(assert (not d!663340))

(assert (not bm!132412))

(assert (not bm!132413))

(assert (not b!2219089))

(assert (not b!2218902))

(assert (not d!663362))

(assert (not b!2218993))

(assert (not b!2218988))

(assert (not b!2219058))

(assert (not bm!132415))

(assert (not b!2219084))

(assert (not b!2219081))

(assert (not d!663368))

(assert (not b!2219002))

(assert (not b!2219000))

(assert (not b!2219046))

(assert (not b!2219048))

(assert (not b!2219009))

(assert (not b!2219065))

(assert (not b!2218984))

(assert (not b!2219083))

(assert (not b!2218904))

(assert (not b!2219082))

(assert (not d!663338))

(assert (not d!663364))

(assert (not b!2219042))

(assert (not d!663342))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

