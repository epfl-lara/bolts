; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!410568 () Bool)

(assert start!410568)

(assert (=> start!410568 true))

(declare-fun b!4275954 () Bool)

(assert (=> b!4275954 true))

(assert (=> b!4275954 true))

(assert (=> b!4275954 true))

(declare-fun b!4275964 () Bool)

(declare-fun e!2654711 () Bool)

(declare-datatypes ((List!47460 0))(
  ( (Nil!47336) (Cons!47336 (h!52756 (_ BitVec 16)) (t!353959 List!47460)) )
))
(declare-datatypes ((IArray!28641 0))(
  ( (IArray!28642 (innerList!14378 List!47460)) )
))
(declare-datatypes ((Conc!14318 0))(
  ( (Node!14318 (left!35246 Conc!14318) (right!35576 Conc!14318) (csize!28866 Int) (cheight!14529 Int)) (Leaf!22133 (xs!17624 IArray!28641) (csize!28867 Int)) (Empty!14318) )
))
(declare-datatypes ((BalanceConc!28146 0))(
  ( (BalanceConc!28147 (c!728165 Conc!14318)) )
))
(declare-fun x!743277 () BalanceConc!28146)

(declare-fun tp!1308545 () Bool)

(declare-fun inv!62600 (Conc!14318) Bool)

(assert (=> b!4275964 (= e!2654711 (and (inv!62600 (c!728165 x!743277)) tp!1308545))))

(declare-fun inst!1816 () Bool)

(declare-datatypes ((DelimiterValueInjection!36 0))(
  ( (DelimiterValueInjection!37) )
))
(declare-fun thiss!2654 () DelimiterValueInjection!36)

(declare-fun inv!62601 (BalanceConc!28146) Bool)

(declare-fun list!17232 (BalanceConc!28146) List!47460)

(declare-datatypes ((TokenValue!8291 0))(
  ( (FloatLiteralValue!16582 (text!58482 List!47460)) (TokenValueExt!8290 (__x!28737 Int)) (Broken!41455 (value!250189 List!47460)) (Object!8414) (End!8291) (Def!8291) (Underscore!8291) (Match!8291) (Else!8291) (Error!8291) (Case!8291) (If!8291) (Extends!8291) (Abstract!8291) (Class!8291) (Val!8291) (DelimiterValue!16582 (del!8351 List!47460)) (KeywordValue!8297 (value!250190 List!47460)) (CommentValue!16582 (value!250191 List!47460)) (WhitespaceValue!16582 (value!250192 List!47460)) (IndentationValue!8291 (value!250193 List!47460)) (String!55350) (Int32!8291) (Broken!41456 (value!250194 List!47460)) (Boolean!8292) (Unit!66283) (OperatorValue!8294 (op!8351 List!47460)) (IdentifierValue!16582 (value!250195 List!47460)) (IdentifierValue!16583 (value!250196 List!47460)) (WhitespaceValue!16583 (value!250197 List!47460)) (True!16582) (False!16582) (Broken!41457 (value!250198 List!47460)) (Broken!41458 (value!250199 List!47460)) (True!16583) (RightBrace!8291) (RightBracket!8291) (Colon!8291) (Null!8291) (Comma!8291) (LeftBracket!8291) (False!16583) (LeftBrace!8291) (ImaginaryLiteralValue!8291 (text!58483 List!47460)) (StringLiteralValue!24873 (value!250200 List!47460)) (EOFValue!8291 (value!250201 List!47460)) (IdentValue!8291 (value!250202 List!47460)) (DelimiterValue!16583 (value!250203 List!47460)) (DedentValue!8291 (value!250204 List!47460)) (NewLineValue!8291 (value!250205 List!47460)) (IntegerValue!24873 (value!250206 (_ BitVec 32)) (text!58484 List!47460)) (IntegerValue!24874 (value!250207 Int) (text!58485 List!47460)) (Times!8291) (Or!8291) (Equal!8291) (Minus!8291) (Broken!41459 (value!250208 List!47460)) (And!8291) (Div!8291) (LessEqual!8291) (Mod!8291) (Concat!21189) (Not!8291) (Plus!8291) (SpaceValue!8291 (value!250209 List!47460)) (IntegerValue!24875 (value!250210 Int) (text!58486 List!47460)) (StringLiteralValue!24874 (text!58487 List!47460)) (FloatLiteralValue!16583 (text!58488 List!47460)) (BytesLiteralValue!8291 (value!250211 List!47460)) (CommentValue!16583 (value!250212 List!47460)) (StringLiteralValue!24875 (value!250213 List!47460)) (ErrorTokenValue!8291 (msg!8352 List!47460)) )
))
(declare-fun toCharacters!12 (DelimiterValueInjection!36 TokenValue!8291) BalanceConc!28146)

(declare-fun toValue!19 (DelimiterValueInjection!36 BalanceConc!28146) TokenValue!8291)

(assert (=> start!410568 (= inst!1816 (=> (and (inv!62601 x!743277) e!2654711) (= (list!17232 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743277))) (list!17232 x!743277))))))

(assert (= start!410568 b!4275964))

(declare-fun m!4871661 () Bool)

(assert (=> b!4275964 m!4871661))

(declare-fun m!4871663 () Bool)

(assert (=> start!410568 m!4871663))

(declare-fun m!4871665 () Bool)

(assert (=> start!410568 m!4871665))

(declare-fun m!4871667 () Bool)

(assert (=> start!410568 m!4871667))

(declare-fun m!4871669 () Bool)

(assert (=> start!410568 m!4871669))

(declare-fun m!4871671 () Bool)

(assert (=> start!410568 m!4871671))

(assert (=> start!410568 m!4871671))

(assert (=> start!410568 m!4871663))

(declare-fun res!1755856 () Bool)

(declare-fun e!2654714 () Bool)

(assert (=> b!4275954 (=> res!1755856 e!2654714)))

(declare-fun x!743278 () BalanceConc!28146)

(declare-fun x!743279 () BalanceConc!28146)

(assert (=> b!4275954 (= res!1755856 (not (= (list!17232 x!743278) (list!17232 x!743279))))))

(declare-fun e!2654712 () Bool)

(declare-fun e!2654713 () Bool)

(declare-fun inst!1817 () Bool)

(assert (=> b!4275954 (= inst!1817 (=> (and (inv!62601 x!743278) e!2654713 (inv!62601 x!743279) e!2654712) e!2654714))))

(declare-fun b!4275965 () Bool)

(assert (=> b!4275965 (= e!2654714 (= (toValue!19 thiss!2654 x!743278) (toValue!19 thiss!2654 x!743279)))))

(declare-fun b!4275966 () Bool)

(declare-fun tp!1308546 () Bool)

(assert (=> b!4275966 (= e!2654713 (and (inv!62600 (c!728165 x!743278)) tp!1308546))))

(declare-fun b!4275967 () Bool)

(declare-fun tp!1308547 () Bool)

(assert (=> b!4275967 (= e!2654712 (and (inv!62600 (c!728165 x!743279)) tp!1308547))))

(assert (= (and b!4275954 (not res!1755856)) b!4275965))

(assert (= b!4275954 b!4275966))

(assert (= b!4275954 b!4275967))

(declare-fun m!4871673 () Bool)

(assert (=> b!4275954 m!4871673))

(declare-fun m!4871675 () Bool)

(assert (=> b!4275954 m!4871675))

(declare-fun m!4871677 () Bool)

(assert (=> b!4275954 m!4871677))

(declare-fun m!4871679 () Bool)

(assert (=> b!4275954 m!4871679))

(declare-fun m!4871681 () Bool)

(assert (=> b!4275965 m!4871681))

(declare-fun m!4871683 () Bool)

(assert (=> b!4275965 m!4871683))

(declare-fun m!4871685 () Bool)

(assert (=> b!4275966 m!4871685))

(declare-fun m!4871687 () Bool)

(assert (=> b!4275967 m!4871687))

(declare-fun bs!602129 () Bool)

(declare-fun neg-inst!1817 () Bool)

(declare-fun s!240372 () Bool)

(assert (= bs!602129 (and neg-inst!1817 s!240372)))

(assert (=> bs!602129 (=> true (= (list!17232 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743277))) (list!17232 x!743277)))))

(assert (=> m!4871671 m!4871663))

(assert (=> m!4871671 m!4871665))

(assert (=> m!4871671 m!4871667))

(assert (=> m!4871671 s!240372))

(assert (=> m!4871667 s!240372))

(declare-fun bs!602130 () Bool)

(assert (= bs!602130 (and neg-inst!1817 start!410568)))

(assert (=> bs!602130 (= true inst!1816)))

(declare-fun bs!602131 () Bool)

(declare-fun neg-inst!1816 () Bool)

(declare-fun s!240374 () Bool)

(assert (= bs!602131 (and neg-inst!1816 s!240374)))

(declare-fun res!1755857 () Bool)

(declare-fun e!2654715 () Bool)

(assert (=> bs!602131 (=> res!1755857 e!2654715)))

(assert (=> bs!602131 (= res!1755857 (not (= (list!17232 x!743278) (list!17232 x!743278))))))

(assert (=> bs!602131 (=> true e!2654715)))

(declare-fun b!4275968 () Bool)

(assert (=> b!4275968 (= e!2654715 (= (toValue!19 thiss!2654 x!743278) (toValue!19 thiss!2654 x!743278)))))

(assert (= (and bs!602131 (not res!1755857)) b!4275968))

(assert (=> m!4871681 m!4871673))

(assert (=> m!4871681 m!4871673))

(assert (=> m!4871681 s!240374))

(assert (=> m!4871681 s!240374))

(declare-fun bs!602132 () Bool)

(declare-fun s!240376 () Bool)

(assert (= bs!602132 (and neg-inst!1816 s!240376)))

(declare-fun res!1755858 () Bool)

(declare-fun e!2654716 () Bool)

(assert (=> bs!602132 (=> res!1755858 e!2654716)))

(assert (=> bs!602132 (= res!1755858 (not (= (list!17232 x!743278) (list!17232 x!743279))))))

(assert (=> bs!602132 (=> true e!2654716)))

(declare-fun b!4275969 () Bool)

(assert (=> b!4275969 (= e!2654716 (= (toValue!19 thiss!2654 x!743278) (toValue!19 thiss!2654 x!743279)))))

(assert (= (and bs!602132 (not res!1755858)) b!4275969))

(declare-fun bs!602133 () Bool)

(assert (= bs!602133 (and m!4871683 m!4871681)))

(assert (=> bs!602133 m!4871673))

(assert (=> bs!602133 m!4871675))

(assert (=> bs!602133 s!240376))

(declare-fun bs!602134 () Bool)

(declare-fun s!240378 () Bool)

(assert (= bs!602134 (and neg-inst!1816 s!240378)))

(declare-fun res!1755859 () Bool)

(declare-fun e!2654717 () Bool)

(assert (=> bs!602134 (=> res!1755859 e!2654717)))

(assert (=> bs!602134 (= res!1755859 (not (= (list!17232 x!743279) (list!17232 x!743279))))))

(assert (=> bs!602134 (=> true e!2654717)))

(declare-fun b!4275970 () Bool)

(assert (=> b!4275970 (= e!2654717 (= (toValue!19 thiss!2654 x!743279) (toValue!19 thiss!2654 x!743279)))))

(assert (= (and bs!602134 (not res!1755859)) b!4275970))

(assert (=> m!4871683 m!4871675))

(assert (=> m!4871683 m!4871675))

(assert (=> m!4871683 s!240378))

(declare-fun bs!602135 () Bool)

(declare-fun s!240380 () Bool)

(assert (= bs!602135 (and neg-inst!1816 s!240380)))

(declare-fun res!1755860 () Bool)

(declare-fun e!2654718 () Bool)

(assert (=> bs!602135 (=> res!1755860 e!2654718)))

(assert (=> bs!602135 (= res!1755860 (not (= (list!17232 x!743279) (list!17232 x!743278))))))

(assert (=> bs!602135 (=> true e!2654718)))

(declare-fun b!4275971 () Bool)

(assert (=> b!4275971 (= e!2654718 (= (toValue!19 thiss!2654 x!743279) (toValue!19 thiss!2654 x!743278)))))

(assert (= (and bs!602135 (not res!1755860)) b!4275971))

(assert (=> bs!602133 m!4871675))

(assert (=> bs!602133 m!4871673))

(assert (=> bs!602133 s!240380))

(assert (=> m!4871683 s!240378))

(declare-fun bs!602136 () Bool)

(assert (= bs!602136 (and m!4871675 m!4871681)))

(assert (=> bs!602136 s!240376))

(declare-fun bs!602137 () Bool)

(assert (= bs!602137 (and m!4871675 m!4871683)))

(assert (=> bs!602137 s!240378))

(assert (=> m!4871675 s!240378))

(assert (=> bs!602136 s!240380))

(assert (=> bs!602137 s!240378))

(assert (=> m!4871675 s!240378))

(declare-fun bs!602138 () Bool)

(declare-fun s!240382 () Bool)

(assert (= bs!602138 (and neg-inst!1816 s!240382)))

(declare-fun res!1755861 () Bool)

(declare-fun e!2654719 () Bool)

(assert (=> bs!602138 (=> res!1755861 e!2654719)))

(assert (=> bs!602138 (= res!1755861 (not (= (list!17232 x!743278) (list!17232 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743277))))))))

(assert (=> bs!602138 (=> true e!2654719)))

(declare-fun b!4275972 () Bool)

(assert (=> b!4275972 (= e!2654719 (= (toValue!19 thiss!2654 x!743278) (toValue!19 thiss!2654 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743277)))))))

(assert (= (and bs!602138 (not res!1755861)) b!4275972))

(declare-fun bs!602139 () Bool)

(assert (= bs!602139 (and m!4871665 m!4871681)))

(assert (=> bs!602139 m!4871673))

(assert (=> bs!602139 m!4871665))

(assert (=> bs!602139 s!240382))

(declare-fun bs!602140 () Bool)

(declare-fun s!240384 () Bool)

(assert (= bs!602140 (and neg-inst!1816 s!240384)))

(declare-fun res!1755862 () Bool)

(declare-fun e!2654720 () Bool)

(assert (=> bs!602140 (=> res!1755862 e!2654720)))

(assert (=> bs!602140 (= res!1755862 (not (= (list!17232 x!743279) (list!17232 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743277))))))))

(assert (=> bs!602140 (=> true e!2654720)))

(declare-fun b!4275973 () Bool)

(assert (=> b!4275973 (= e!2654720 (= (toValue!19 thiss!2654 x!743279) (toValue!19 thiss!2654 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743277)))))))

(assert (= (and bs!602140 (not res!1755862)) b!4275973))

(declare-fun bs!602141 () Bool)

(assert (= bs!602141 (and m!4871665 m!4871683 m!4871675)))

(assert (=> bs!602141 m!4871675))

(assert (=> bs!602141 m!4871665))

(assert (=> bs!602141 s!240384))

(declare-fun bs!602142 () Bool)

(declare-fun s!240386 () Bool)

(assert (= bs!602142 (and neg-inst!1816 s!240386)))

(declare-fun res!1755863 () Bool)

(declare-fun e!2654721 () Bool)

(assert (=> bs!602142 (=> res!1755863 e!2654721)))

(assert (=> bs!602142 (= res!1755863 (not (= (list!17232 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743277))) (list!17232 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743277))))))))

(assert (=> bs!602142 (=> true e!2654721)))

(declare-fun b!4275974 () Bool)

(assert (=> b!4275974 (= e!2654721 (= (toValue!19 thiss!2654 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743277))) (toValue!19 thiss!2654 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743277)))))))

(assert (= (and bs!602142 (not res!1755863)) b!4275974))

(assert (=> m!4871665 s!240386))

(declare-fun bs!602143 () Bool)

(declare-fun s!240388 () Bool)

(assert (= bs!602143 (and neg-inst!1816 s!240388)))

(declare-fun res!1755864 () Bool)

(declare-fun e!2654722 () Bool)

(assert (=> bs!602143 (=> res!1755864 e!2654722)))

(assert (=> bs!602143 (= res!1755864 (not (= (list!17232 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743277))) (list!17232 x!743278))))))

(assert (=> bs!602143 (=> true e!2654722)))

(declare-fun b!4275975 () Bool)

(assert (=> b!4275975 (= e!2654722 (= (toValue!19 thiss!2654 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743277))) (toValue!19 thiss!2654 x!743278)))))

(assert (= (and bs!602143 (not res!1755864)) b!4275975))

(assert (=> bs!602139 m!4871665))

(assert (=> bs!602139 m!4871673))

(assert (=> bs!602139 s!240388))

(declare-fun bs!602144 () Bool)

(declare-fun s!240390 () Bool)

(assert (= bs!602144 (and neg-inst!1816 s!240390)))

(declare-fun res!1755865 () Bool)

(declare-fun e!2654723 () Bool)

(assert (=> bs!602144 (=> res!1755865 e!2654723)))

(assert (=> bs!602144 (= res!1755865 (not (= (list!17232 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743277))) (list!17232 x!743279))))))

(assert (=> bs!602144 (=> true e!2654723)))

(declare-fun b!4275976 () Bool)

(assert (=> b!4275976 (= e!2654723 (= (toValue!19 thiss!2654 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743277))) (toValue!19 thiss!2654 x!743279)))))

(assert (= (and bs!602144 (not res!1755865)) b!4275976))

(assert (=> bs!602141 m!4871665))

(assert (=> bs!602141 m!4871675))

(assert (=> bs!602141 s!240390))

(assert (=> m!4871665 s!240386))

(declare-fun bs!602145 () Bool)

(assert (= bs!602145 (and m!4871673 m!4871681)))

(assert (=> bs!602145 s!240374))

(declare-fun bs!602146 () Bool)

(assert (= bs!602146 (and m!4871673 m!4871665)))

(assert (=> bs!602146 s!240388))

(declare-fun bs!602147 () Bool)

(assert (= bs!602147 (and m!4871673 m!4871683 m!4871675)))

(assert (=> bs!602147 s!240380))

(assert (=> m!4871673 s!240374))

(assert (=> bs!602145 s!240374))

(assert (=> bs!602146 s!240382))

(assert (=> bs!602147 s!240376))

(assert (=> m!4871673 s!240374))

(declare-fun bs!602148 () Bool)

(declare-fun s!240392 () Bool)

(assert (= bs!602148 (and neg-inst!1816 s!240392)))

(declare-fun res!1755866 () Bool)

(declare-fun e!2654724 () Bool)

(assert (=> bs!602148 (=> res!1755866 e!2654724)))

(assert (=> bs!602148 (= res!1755866 (not (= (list!17232 x!743278) (list!17232 x!743277))))))

(assert (=> bs!602148 (=> true e!2654724)))

(declare-fun b!4275977 () Bool)

(assert (=> b!4275977 (= e!2654724 (= (toValue!19 thiss!2654 x!743278) (toValue!19 thiss!2654 x!743277)))))

(assert (= (and bs!602148 (not res!1755866)) b!4275977))

(declare-fun bs!602149 () Bool)

(assert (= bs!602149 (and m!4871671 m!4871681 m!4871673)))

(assert (=> bs!602149 m!4871673))

(assert (=> bs!602149 m!4871667))

(assert (=> bs!602149 s!240392))

(declare-fun bs!602150 () Bool)

(declare-fun s!240394 () Bool)

(assert (= bs!602150 (and neg-inst!1816 s!240394)))

(declare-fun res!1755867 () Bool)

(declare-fun e!2654725 () Bool)

(assert (=> bs!602150 (=> res!1755867 e!2654725)))

(assert (=> bs!602150 (= res!1755867 (not (= (list!17232 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743277))) (list!17232 x!743277))))))

(assert (=> bs!602150 (=> true e!2654725)))

(declare-fun b!4275978 () Bool)

(assert (=> b!4275978 (= e!2654725 (= (toValue!19 thiss!2654 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743277))) (toValue!19 thiss!2654 x!743277)))))

(assert (= (and bs!602150 (not res!1755867)) b!4275978))

(declare-fun bs!602151 () Bool)

(assert (= bs!602151 (and m!4871671 m!4871665)))

(assert (=> bs!602151 m!4871665))

(assert (=> bs!602151 m!4871667))

(assert (=> bs!602151 s!240394))

(declare-fun bs!602152 () Bool)

(declare-fun s!240396 () Bool)

(assert (= bs!602152 (and neg-inst!1816 s!240396)))

(declare-fun res!1755868 () Bool)

(declare-fun e!2654726 () Bool)

(assert (=> bs!602152 (=> res!1755868 e!2654726)))

(assert (=> bs!602152 (= res!1755868 (not (= (list!17232 x!743279) (list!17232 x!743277))))))

(assert (=> bs!602152 (=> true e!2654726)))

(declare-fun b!4275979 () Bool)

(assert (=> b!4275979 (= e!2654726 (= (toValue!19 thiss!2654 x!743279) (toValue!19 thiss!2654 x!743277)))))

(assert (= (and bs!602152 (not res!1755868)) b!4275979))

(declare-fun bs!602153 () Bool)

(assert (= bs!602153 (and m!4871671 m!4871683 m!4871675)))

(assert (=> bs!602153 m!4871675))

(assert (=> bs!602153 m!4871667))

(assert (=> bs!602153 s!240396))

(declare-fun bs!602154 () Bool)

(declare-fun s!240398 () Bool)

(assert (= bs!602154 (and neg-inst!1816 s!240398)))

(declare-fun res!1755869 () Bool)

(declare-fun e!2654727 () Bool)

(assert (=> bs!602154 (=> res!1755869 e!2654727)))

(assert (=> bs!602154 (= res!1755869 (not (= (list!17232 x!743277) (list!17232 x!743277))))))

(assert (=> bs!602154 (=> true e!2654727)))

(declare-fun b!4275980 () Bool)

(assert (=> b!4275980 (= e!2654727 (= (toValue!19 thiss!2654 x!743277) (toValue!19 thiss!2654 x!743277)))))

(assert (= (and bs!602154 (not res!1755869)) b!4275980))

(assert (=> m!4871671 m!4871667))

(assert (=> m!4871671 m!4871667))

(assert (=> m!4871671 s!240398))

(declare-fun bs!602155 () Bool)

(declare-fun s!240400 () Bool)

(assert (= bs!602155 (and neg-inst!1816 s!240400)))

(declare-fun res!1755870 () Bool)

(declare-fun e!2654728 () Bool)

(assert (=> bs!602155 (=> res!1755870 e!2654728)))

(assert (=> bs!602155 (= res!1755870 (not (= (list!17232 x!743277) (list!17232 x!743278))))))

(assert (=> bs!602155 (=> true e!2654728)))

(declare-fun b!4275981 () Bool)

(assert (=> b!4275981 (= e!2654728 (= (toValue!19 thiss!2654 x!743277) (toValue!19 thiss!2654 x!743278)))))

(assert (= (and bs!602155 (not res!1755870)) b!4275981))

(assert (=> bs!602149 m!4871667))

(assert (=> bs!602149 m!4871673))

(assert (=> bs!602149 s!240400))

(declare-fun bs!602156 () Bool)

(declare-fun s!240402 () Bool)

(assert (= bs!602156 (and neg-inst!1816 s!240402)))

(declare-fun res!1755871 () Bool)

(declare-fun e!2654729 () Bool)

(assert (=> bs!602156 (=> res!1755871 e!2654729)))

(assert (=> bs!602156 (= res!1755871 (not (= (list!17232 x!743277) (list!17232 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743277))))))))

(assert (=> bs!602156 (=> true e!2654729)))

(declare-fun b!4275982 () Bool)

(assert (=> b!4275982 (= e!2654729 (= (toValue!19 thiss!2654 x!743277) (toValue!19 thiss!2654 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743277)))))))

(assert (= (and bs!602156 (not res!1755871)) b!4275982))

(assert (=> bs!602151 m!4871667))

(assert (=> bs!602151 m!4871665))

(assert (=> bs!602151 s!240402))

(declare-fun bs!602157 () Bool)

(declare-fun s!240404 () Bool)

(assert (= bs!602157 (and neg-inst!1816 s!240404)))

(declare-fun res!1755872 () Bool)

(declare-fun e!2654730 () Bool)

(assert (=> bs!602157 (=> res!1755872 e!2654730)))

(assert (=> bs!602157 (= res!1755872 (not (= (list!17232 x!743277) (list!17232 x!743279))))))

(assert (=> bs!602157 (=> true e!2654730)))

(declare-fun b!4275983 () Bool)

(assert (=> b!4275983 (= e!2654730 (= (toValue!19 thiss!2654 x!743277) (toValue!19 thiss!2654 x!743279)))))

(assert (= (and bs!602157 (not res!1755872)) b!4275983))

(assert (=> bs!602153 m!4871667))

(assert (=> bs!602153 m!4871675))

(assert (=> bs!602153 s!240404))

(assert (=> m!4871671 s!240398))

(declare-fun bs!602158 () Bool)

(assert (= bs!602158 (and m!4871667 m!4871683 m!4871675)))

(assert (=> bs!602158 s!240396))

(declare-fun bs!602159 () Bool)

(assert (= bs!602159 (and m!4871667 m!4871671)))

(assert (=> bs!602159 s!240398))

(declare-fun bs!602160 () Bool)

(assert (= bs!602160 (and m!4871667 m!4871681 m!4871673)))

(assert (=> bs!602160 s!240392))

(assert (=> m!4871667 s!240398))

(declare-fun bs!602161 () Bool)

(assert (= bs!602161 (and m!4871667 m!4871665)))

(assert (=> bs!602161 s!240394))

(assert (=> bs!602160 s!240400))

(assert (=> bs!602161 s!240402))

(assert (=> bs!602158 s!240404))

(assert (=> bs!602159 s!240398))

(assert (=> m!4871667 s!240398))

(declare-fun bs!602162 () Bool)

(assert (= bs!602162 (and neg-inst!1816 b!4275954)))

(assert (=> bs!602162 (= true inst!1817)))

(declare-fun res!1755855 () Bool)

(declare-fun e!2654710 () Bool)

(assert (=> start!410568 (=> res!1755855 e!2654710)))

(declare-fun lambda!131320 () Int)

(declare-fun Forall!1659 (Int) Bool)

(assert (=> start!410568 (= res!1755855 (not (Forall!1659 lambda!131320)))))

(assert (=> start!410568 (= (Forall!1659 lambda!131320) inst!1816)))

(assert (=> start!410568 (not e!2654710)))

(assert (=> start!410568 true))

(declare-fun e!2654709 () Bool)

(assert (=> b!4275954 (= e!2654710 e!2654709)))

(declare-fun res!1755854 () Bool)

(assert (=> b!4275954 (=> res!1755854 e!2654709)))

(declare-fun lambda!131323 () Int)

(declare-fun Forall2!1240 (Int) Bool)

(assert (=> b!4275954 (= res!1755854 (not (Forall2!1240 lambda!131323)))))

(assert (=> b!4275954 (= (Forall2!1240 lambda!131323) inst!1817)))

(declare-fun lambda!131321 () Int)

(declare-fun lambda!131322 () Int)

(declare-fun semiInverseModEq!3525 (Int Int) Bool)

(assert (=> b!4275954 (= (semiInverseModEq!3525 lambda!131321 lambda!131322) (Forall!1659 lambda!131320))))

(declare-fun b!4275955 () Bool)

(declare-datatypes ((TokenValueInjection!15906 0))(
  ( (TokenValueInjection!15907 (toValue!10833 Int) (toChars!10692 Int)) )
))
(declare-fun inv!62602 (TokenValueInjection!15906) Bool)

(assert (=> b!4275955 (= e!2654709 (inv!62602 (TokenValueInjection!15907 lambda!131322 lambda!131321)))))

(declare-fun equivClasses!3406 (Int Int) Bool)

(assert (=> b!4275955 (= (equivClasses!3406 lambda!131321 lambda!131322) (Forall2!1240 lambda!131323))))

(assert (= neg-inst!1817 inst!1816))

(assert (= (and start!410568 (not res!1755855)) b!4275954))

(assert (= neg-inst!1816 inst!1817))

(assert (= (and b!4275954 (not res!1755854)) b!4275955))

(declare-fun m!4871689 () Bool)

(assert (=> start!410568 m!4871689))

(assert (=> start!410568 m!4871689))

(declare-fun m!4871691 () Bool)

(assert (=> b!4275954 m!4871691))

(assert (=> b!4275954 m!4871691))

(declare-fun m!4871693 () Bool)

(assert (=> b!4275954 m!4871693))

(assert (=> b!4275954 m!4871689))

(declare-fun m!4871695 () Bool)

(assert (=> b!4275955 m!4871695))

(declare-fun m!4871697 () Bool)

(assert (=> b!4275955 m!4871697))

(assert (=> b!4275955 m!4871691))

(push 1)

(assert (not b!4275955))

(assert (not b!4275980))

(assert (not b!4275981))

(assert (not bs!602134))

(assert (not bs!602140))

(assert (not b!4275964))

(assert (not b!4275974))

(assert (not b!4275975))

(assert (not b!4275979))

(assert (not bs!602129))

(assert (not b!4275971))

(assert (not bs!602156))

(assert (not bs!602135))

(assert (not start!410568))

(assert (not bs!602155))

(assert (not b!4275977))

(assert (not b!4275976))

(assert (not b!4275969))

(assert (not bs!602157))

(assert (not b!4275968))

(assert (not b!4275954))

(assert (not bs!602143))

(assert (not bs!602154))

(assert (not bs!602152))

(assert (not bs!602138))

(assert (not b!4275983))

(assert (not b!4275970))

(assert (not b!4275978))

(assert (not bs!602131))

(assert (not b!4275965))

(assert (not b!4275967))

(assert (not b!4275982))

(assert (not b!4275973))

(assert (not bs!602148))

(assert (not bs!602142))

(assert (not bs!602150))

(assert (not b!4275972))

(assert (not b!4275966))

(assert (not bs!602144))

(assert (not bs!602132))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!602197 () Bool)

(assert (= bs!602197 (and m!4871681 b!4275968)))

(assert (=> bs!602197 m!4871681))

(assert (=> bs!602197 m!4871681))

(declare-fun bs!602198 () Bool)

(assert (= bs!602198 (and m!4871683 m!4871681 b!4275969)))

(assert (=> bs!602198 m!4871681))

(assert (=> bs!602198 m!4871683))

(declare-fun bs!602199 () Bool)

(assert (= bs!602199 (and m!4871683 b!4275970)))

(assert (=> bs!602199 m!4871683))

(assert (=> bs!602199 m!4871683))

(declare-fun bs!602200 () Bool)

(assert (= bs!602200 (and m!4871683 m!4871681 b!4275971)))

(assert (=> bs!602200 m!4871683))

(assert (=> bs!602200 m!4871681))

(declare-fun bs!602201 () Bool)

(assert (= bs!602201 (and m!4871665 m!4871681 b!4275972)))

(assert (=> bs!602201 m!4871681))

(declare-fun m!4871737 () Bool)

(assert (=> bs!602201 m!4871737))

(declare-fun bs!602202 () Bool)

(assert (= bs!602202 (and m!4871665 m!4871683 m!4871675 b!4275973)))

(assert (=> bs!602202 m!4871683))

(assert (=> bs!602202 m!4871737))

(declare-fun bs!602203 () Bool)

(assert (= bs!602203 (and m!4871665 b!4275974)))

(assert (=> bs!602203 m!4871737))

(assert (=> bs!602203 m!4871737))

(declare-fun bs!602204 () Bool)

(assert (= bs!602204 (and m!4871665 m!4871681 b!4275975)))

(assert (=> bs!602204 m!4871737))

(assert (=> bs!602204 m!4871681))

(declare-fun bs!602205 () Bool)

(assert (= bs!602205 (and m!4871665 m!4871683 m!4871675 b!4275976)))

(assert (=> bs!602205 m!4871737))

(assert (=> bs!602205 m!4871683))

(declare-fun bs!602206 () Bool)

(assert (= bs!602206 (and m!4871671 m!4871681 m!4871673 b!4275977)))

(assert (=> bs!602206 m!4871681))

(assert (=> bs!602206 m!4871671))

(declare-fun bs!602207 () Bool)

(assert (= bs!602207 (and m!4871671 m!4871665 b!4275978)))

(assert (=> bs!602207 m!4871737))

(assert (=> bs!602207 m!4871671))

(declare-fun bs!602208 () Bool)

(assert (= bs!602208 (and m!4871671 m!4871683 m!4871675 b!4275979)))

(assert (=> bs!602208 m!4871683))

(assert (=> bs!602208 m!4871671))

(declare-fun bs!602209 () Bool)

(assert (= bs!602209 (and m!4871671 b!4275980)))

(assert (=> bs!602209 m!4871671))

(assert (=> bs!602209 m!4871671))

(declare-fun bs!602210 () Bool)

(assert (= bs!602210 (and m!4871671 m!4871681 m!4871673 b!4275981)))

(assert (=> bs!602210 m!4871671))

(assert (=> bs!602210 m!4871681))

(declare-fun bs!602211 () Bool)

(assert (= bs!602211 (and m!4871671 m!4871665 b!4275982)))

(assert (=> bs!602211 m!4871671))

(assert (=> bs!602211 m!4871737))

(declare-fun bs!602212 () Bool)

(assert (= bs!602212 (and m!4871671 m!4871683 m!4871675 b!4275983)))

(assert (=> bs!602212 m!4871671))

(assert (=> bs!602212 m!4871683))

(push 1)

(assert (not b!4275955))

(assert (not b!4275980))

(assert (not b!4275981))

(assert (not bs!602134))

(assert (not bs!602140))

(assert (not b!4275964))

(assert (not b!4275974))

(assert (not b!4275975))

(assert (not b!4275979))

(assert (not bs!602129))

(assert (not b!4275971))

(assert (not bs!602156))

(assert (not bs!602135))

(assert (not start!410568))

(assert (not bs!602155))

(assert (not b!4275977))

(assert (not b!4275976))

(assert (not b!4275969))

(assert (not bs!602157))

(assert (not b!4275968))

(assert (not b!4275954))

(assert (not bs!602143))

(assert (not bs!602154))

(assert (not bs!602152))

(assert (not bs!602138))

(assert (not b!4275983))

(assert (not b!4275970))

(assert (not b!4275978))

(assert (not bs!602131))

(assert (not b!4275965))

(assert (not b!4275967))

(assert (not b!4275982))

(assert (not b!4275973))

(assert (not bs!602148))

(assert (not bs!602142))

(assert (not bs!602150))

(assert (not b!4275972))

(assert (not b!4275966))

(assert (not bs!602144))

(assert (not bs!602132))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1262219 () Bool)

(declare-fun efficientList!571 (BalanceConc!28146) List!47460)

(assert (=> d!1262219 (= (toValue!19 thiss!2654 x!743279) (DelimiterValue!16583 (efficientList!571 x!743279)))))

(declare-fun bs!602235 () Bool)

(assert (= bs!602235 d!1262219))

(declare-fun m!4871753 () Bool)

(assert (=> bs!602235 m!4871753))

(assert (=> b!4275979 d!1262219))

(declare-fun d!1262221 () Bool)

(assert (=> d!1262221 (= (toValue!19 thiss!2654 x!743277) (DelimiterValue!16583 (efficientList!571 x!743277)))))

(declare-fun bs!602236 () Bool)

(assert (= bs!602236 d!1262221))

(declare-fun m!4871755 () Bool)

(assert (=> bs!602236 m!4871755))

(assert (=> b!4275979 d!1262221))

(assert (=> b!4275973 d!1262219))

(declare-fun d!1262223 () Bool)

(assert (=> d!1262223 (= (toValue!19 thiss!2654 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743277))) (DelimiterValue!16583 (efficientList!571 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743277)))))))

(declare-fun bs!602237 () Bool)

(assert (= bs!602237 d!1262223))

(assert (=> bs!602237 m!4871663))

(declare-fun m!4871757 () Bool)

(assert (=> bs!602237 m!4871757))

(assert (=> b!4275973 d!1262223))

(declare-fun d!1262225 () Bool)

(declare-fun list!17235 (Conc!14318) List!47460)

(assert (=> d!1262225 (= (list!17232 x!743277) (list!17235 (c!728165 x!743277)))))

(declare-fun bs!602238 () Bool)

(assert (= bs!602238 d!1262225))

(declare-fun m!4871759 () Bool)

(assert (=> bs!602238 m!4871759))

(assert (=> bs!602157 d!1262225))

(declare-fun d!1262227 () Bool)

(assert (=> d!1262227 (= (list!17232 x!743279) (list!17235 (c!728165 x!743279)))))

(declare-fun bs!602239 () Bool)

(assert (= bs!602239 d!1262227))

(declare-fun m!4871761 () Bool)

(assert (=> bs!602239 m!4871761))

(assert (=> bs!602157 d!1262227))

(assert (=> b!4275970 d!1262219))

(declare-fun d!1262229 () Bool)

(declare-fun c!728169 () Bool)

(assert (=> d!1262229 (= c!728169 (is-Node!14318 (c!728165 x!743277)))))

(declare-fun e!2654777 () Bool)

(assert (=> d!1262229 (= (inv!62600 (c!728165 x!743277)) e!2654777)))

(declare-fun b!4276040 () Bool)

(declare-fun inv!62606 (Conc!14318) Bool)

(assert (=> b!4276040 (= e!2654777 (inv!62606 (c!728165 x!743277)))))

(declare-fun b!4276041 () Bool)

(declare-fun e!2654778 () Bool)

(assert (=> b!4276041 (= e!2654777 e!2654778)))

(declare-fun res!1755914 () Bool)

(assert (=> b!4276041 (= res!1755914 (not (is-Leaf!22133 (c!728165 x!743277))))))

(assert (=> b!4276041 (=> res!1755914 e!2654778)))

(declare-fun b!4276042 () Bool)

(declare-fun inv!62607 (Conc!14318) Bool)

(assert (=> b!4276042 (= e!2654778 (inv!62607 (c!728165 x!743277)))))

(assert (= (and d!1262229 c!728169) b!4276040))

(assert (= (and d!1262229 (not c!728169)) b!4276041))

(assert (= (and b!4276041 (not res!1755914)) b!4276042))

(declare-fun m!4871763 () Bool)

(assert (=> b!4276040 m!4871763))

(declare-fun m!4871765 () Bool)

(assert (=> b!4276042 m!4871765))

(assert (=> b!4275964 d!1262229))

(assert (=> bs!602152 d!1262227))

(assert (=> bs!602152 d!1262225))

(assert (=> bs!602140 d!1262227))

(declare-fun d!1262231 () Bool)

(assert (=> d!1262231 (= (list!17232 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743277))) (list!17235 (c!728165 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743277)))))))

(declare-fun bs!602240 () Bool)

(assert (= bs!602240 d!1262231))

(declare-fun m!4871767 () Bool)

(assert (=> bs!602240 m!4871767))

(assert (=> bs!602140 d!1262231))

(assert (=> b!4275982 d!1262221))

(assert (=> b!4275982 d!1262223))

(assert (=> bs!602134 d!1262227))

(assert (=> b!4275976 d!1262223))

(assert (=> b!4275976 d!1262219))

(assert (=> bs!602156 d!1262225))

(assert (=> bs!602156 d!1262231))

(assert (=> bs!602144 d!1262231))

(assert (=> bs!602144 d!1262227))

(assert (=> b!4275981 d!1262221))

(declare-fun d!1262233 () Bool)

(assert (=> d!1262233 (= (toValue!19 thiss!2654 x!743278) (DelimiterValue!16583 (efficientList!571 x!743278)))))

(declare-fun bs!602241 () Bool)

(assert (= bs!602241 d!1262233))

(declare-fun m!4871769 () Bool)

(assert (=> bs!602241 m!4871769))

(assert (=> b!4275981 d!1262233))

(assert (=> b!4275975 d!1262223))

(assert (=> b!4275975 d!1262233))

(assert (=> b!4275978 d!1262223))

(assert (=> b!4275978 d!1262221))

(assert (=> b!4275972 d!1262233))

(assert (=> b!4275972 d!1262223))

(assert (=> b!4275969 d!1262233))

(assert (=> b!4275969 d!1262219))

(assert (=> bs!602143 d!1262231))

(declare-fun d!1262235 () Bool)

(assert (=> d!1262235 (= (list!17232 x!743278) (list!17235 (c!728165 x!743278)))))

(declare-fun bs!602242 () Bool)

(assert (= bs!602242 d!1262235))

(declare-fun m!4871771 () Bool)

(assert (=> bs!602242 m!4871771))

(assert (=> bs!602143 d!1262235))

(assert (=> bs!602150 d!1262231))

(assert (=> bs!602150 d!1262225))

(assert (=> bs!602138 d!1262235))

(assert (=> bs!602138 d!1262231))

(assert (=> bs!602132 d!1262235))

(assert (=> bs!602132 d!1262227))

(declare-fun d!1262237 () Bool)

(declare-fun res!1755917 () Bool)

(declare-fun e!2654781 () Bool)

(assert (=> d!1262237 (=> (not res!1755917) (not e!2654781))))

(assert (=> d!1262237 (= res!1755917 (semiInverseModEq!3525 (toChars!10692 (TokenValueInjection!15907 lambda!131322 lambda!131321)) (toValue!10833 (TokenValueInjection!15907 lambda!131322 lambda!131321))))))

(assert (=> d!1262237 (= (inv!62602 (TokenValueInjection!15907 lambda!131322 lambda!131321)) e!2654781)))

(declare-fun b!4276045 () Bool)

(assert (=> b!4276045 (= e!2654781 (equivClasses!3406 (toChars!10692 (TokenValueInjection!15907 lambda!131322 lambda!131321)) (toValue!10833 (TokenValueInjection!15907 lambda!131322 lambda!131321))))))

(assert (= (and d!1262237 res!1755917) b!4276045))

(declare-fun m!4871773 () Bool)

(assert (=> d!1262237 m!4871773))

(declare-fun m!4871775 () Bool)

(assert (=> b!4276045 m!4871775))

(assert (=> b!4275955 d!1262237))

(declare-fun bs!602243 () Bool)

(declare-fun d!1262239 () Bool)

(assert (= bs!602243 (and d!1262239 b!4275954)))

(declare-fun lambda!131354 () Int)

(assert (=> bs!602243 (not (= lambda!131354 lambda!131323))))

(assert (=> d!1262239 true))

(declare-fun order!24997 () Int)

(declare-fun order!24999 () Int)

(declare-fun dynLambda!20302 (Int Int) Int)

(declare-fun dynLambda!20303 (Int Int) Int)

(assert (=> d!1262239 (< (dynLambda!20302 order!24997 lambda!131322) (dynLambda!20303 order!24999 lambda!131354))))

(assert (=> d!1262239 (= (equivClasses!3406 lambda!131321 lambda!131322) (Forall2!1240 lambda!131354))))

(declare-fun bs!602244 () Bool)

(assert (= bs!602244 d!1262239))

(declare-fun m!4871777 () Bool)

(assert (=> bs!602244 m!4871777))

(assert (=> b!4275955 d!1262239))

(declare-fun d!1262241 () Bool)

(declare-fun choose!26073 (Int) Bool)

(assert (=> d!1262241 (= (Forall2!1240 lambda!131323) (choose!26073 lambda!131323))))

(declare-fun bs!602245 () Bool)

(assert (= bs!602245 d!1262241))

(declare-fun m!4871779 () Bool)

(assert (=> bs!602245 m!4871779))

(assert (=> b!4275955 d!1262241))

(assert (=> b!4275974 d!1262223))

(assert (=> b!4275968 d!1262233))

(declare-fun d!1262243 () Bool)

(declare-fun isBalanced!3861 (Conc!14318) Bool)

(assert (=> d!1262243 (= (inv!62601 x!743277) (isBalanced!3861 (c!728165 x!743277)))))

(declare-fun bs!602246 () Bool)

(assert (= bs!602246 d!1262243))

(declare-fun m!4871781 () Bool)

(assert (=> bs!602246 m!4871781))

(assert (=> start!410568 d!1262243))

(assert (=> start!410568 d!1262221))

(declare-fun d!1262245 () Bool)

(declare-fun c!728173 () Bool)

(assert (=> d!1262245 (= c!728173 (is-DelimiterValue!16583 (toValue!19 thiss!2654 x!743277)))))

(declare-fun e!2654786 () BalanceConc!28146)

(assert (=> d!1262245 (= (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743277)) e!2654786)))

(declare-fun b!4276054 () Bool)

(declare-fun seqFromList!5887 (List!47460) BalanceConc!28146)

(assert (=> b!4276054 (= e!2654786 (seqFromList!5887 (value!250203 (toValue!19 thiss!2654 x!743277))))))

(declare-fun b!4276055 () Bool)

(assert (=> b!4276055 (= e!2654786 (BalanceConc!28147 Empty!14318))))

(assert (= (and d!1262245 c!728173) b!4276054))

(assert (= (and d!1262245 (not c!728173)) b!4276055))

(declare-fun m!4871783 () Bool)

(assert (=> b!4276054 m!4871783))

(assert (=> start!410568 d!1262245))

(declare-fun d!1262247 () Bool)

(declare-fun choose!26074 (Int) Bool)

(assert (=> d!1262247 (= (Forall!1659 lambda!131320) (choose!26074 lambda!131320))))

(declare-fun bs!602247 () Bool)

(assert (= bs!602247 d!1262247))

(declare-fun m!4871785 () Bool)

(assert (=> bs!602247 m!4871785))

(assert (=> start!410568 d!1262247))

(assert (=> start!410568 d!1262231))

(assert (=> start!410568 d!1262225))

(assert (=> bs!602155 d!1262225))

(assert (=> bs!602155 d!1262235))

(assert (=> bs!602131 d!1262235))

(declare-fun d!1262249 () Bool)

(assert (=> d!1262249 (= (inv!62601 x!743279) (isBalanced!3861 (c!728165 x!743279)))))

(declare-fun bs!602248 () Bool)

(assert (= bs!602248 d!1262249))

(declare-fun m!4871787 () Bool)

(assert (=> bs!602248 m!4871787))

(assert (=> b!4275954 d!1262249))

(assert (=> b!4275954 d!1262235))

(declare-fun bs!602249 () Bool)

(declare-fun d!1262251 () Bool)

(assert (= bs!602249 (and d!1262251 start!410568)))

(declare-fun lambda!131357 () Int)

(assert (=> bs!602249 (not (= lambda!131357 lambda!131320))))

(assert (=> d!1262251 true))

(declare-fun order!25001 () Int)

(declare-fun order!25003 () Int)

(declare-fun dynLambda!20304 (Int Int) Int)

(declare-fun dynLambda!20305 (Int Int) Int)

(assert (=> d!1262251 (< (dynLambda!20304 order!25001 lambda!131321) (dynLambda!20305 order!25003 lambda!131357))))

(assert (=> d!1262251 true))

(assert (=> d!1262251 (< (dynLambda!20302 order!24997 lambda!131322) (dynLambda!20305 order!25003 lambda!131357))))

(assert (=> d!1262251 (= (semiInverseModEq!3525 lambda!131321 lambda!131322) (Forall!1659 lambda!131357))))

(declare-fun bs!602250 () Bool)

(assert (= bs!602250 d!1262251))

(declare-fun m!4871789 () Bool)

(assert (=> bs!602250 m!4871789))

(assert (=> b!4275954 d!1262251))

(declare-fun d!1262253 () Bool)

(assert (=> d!1262253 (= (inv!62601 x!743278) (isBalanced!3861 (c!728165 x!743278)))))

(declare-fun bs!602251 () Bool)

(assert (= bs!602251 d!1262253))

(declare-fun m!4871791 () Bool)

(assert (=> bs!602251 m!4871791))

(assert (=> b!4275954 d!1262253))

(assert (=> b!4275954 d!1262247))

(assert (=> b!4275954 d!1262227))

(assert (=> b!4275954 d!1262241))

(assert (=> b!4275971 d!1262219))

(assert (=> b!4275971 d!1262233))

(assert (=> b!4275980 d!1262221))

(assert (=> b!4275977 d!1262233))

(assert (=> b!4275977 d!1262221))

(assert (=> bs!602129 d!1262231))

(assert (=> bs!602129 d!1262245))

(assert (=> bs!602129 d!1262221))

(assert (=> bs!602129 d!1262225))

(assert (=> b!4275965 d!1262233))

(assert (=> b!4275965 d!1262219))

(declare-fun d!1262255 () Bool)

(declare-fun c!728174 () Bool)

(assert (=> d!1262255 (= c!728174 (is-Node!14318 (c!728165 x!743278)))))

(declare-fun e!2654787 () Bool)

(assert (=> d!1262255 (= (inv!62600 (c!728165 x!743278)) e!2654787)))

(declare-fun b!4276060 () Bool)

(assert (=> b!4276060 (= e!2654787 (inv!62606 (c!728165 x!743278)))))

(declare-fun b!4276061 () Bool)

(declare-fun e!2654788 () Bool)

(assert (=> b!4276061 (= e!2654787 e!2654788)))

(declare-fun res!1755920 () Bool)

(assert (=> b!4276061 (= res!1755920 (not (is-Leaf!22133 (c!728165 x!743278))))))

(assert (=> b!4276061 (=> res!1755920 e!2654788)))

(declare-fun b!4276062 () Bool)

(assert (=> b!4276062 (= e!2654788 (inv!62607 (c!728165 x!743278)))))

(assert (= (and d!1262255 c!728174) b!4276060))

(assert (= (and d!1262255 (not c!728174)) b!4276061))

(assert (= (and b!4276061 (not res!1755920)) b!4276062))

(declare-fun m!4871793 () Bool)

(assert (=> b!4276060 m!4871793))

(declare-fun m!4871795 () Bool)

(assert (=> b!4276062 m!4871795))

(assert (=> b!4275966 d!1262255))

(assert (=> b!4275983 d!1262221))

(assert (=> b!4275983 d!1262219))

(assert (=> bs!602154 d!1262225))

(assert (=> bs!602135 d!1262227))

(assert (=> bs!602135 d!1262235))

(assert (=> bs!602148 d!1262235))

(assert (=> bs!602148 d!1262225))

(declare-fun d!1262257 () Bool)

(declare-fun c!728175 () Bool)

(assert (=> d!1262257 (= c!728175 (is-Node!14318 (c!728165 x!743279)))))

(declare-fun e!2654789 () Bool)

(assert (=> d!1262257 (= (inv!62600 (c!728165 x!743279)) e!2654789)))

(declare-fun b!4276063 () Bool)

(assert (=> b!4276063 (= e!2654789 (inv!62606 (c!728165 x!743279)))))

(declare-fun b!4276064 () Bool)

(declare-fun e!2654790 () Bool)

(assert (=> b!4276064 (= e!2654789 e!2654790)))

(declare-fun res!1755921 () Bool)

(assert (=> b!4276064 (= res!1755921 (not (is-Leaf!22133 (c!728165 x!743279))))))

(assert (=> b!4276064 (=> res!1755921 e!2654790)))

(declare-fun b!4276065 () Bool)

(assert (=> b!4276065 (= e!2654790 (inv!62607 (c!728165 x!743279)))))

(assert (= (and d!1262257 c!728175) b!4276063))

(assert (= (and d!1262257 (not c!728175)) b!4276064))

(assert (= (and b!4276064 (not res!1755921)) b!4276065))

(declare-fun m!4871797 () Bool)

(assert (=> b!4276063 m!4871797))

(declare-fun m!4871799 () Bool)

(assert (=> b!4276065 m!4871799))

(assert (=> b!4275967 d!1262257))

(assert (=> bs!602142 d!1262231))

(declare-fun b!4276072 () Bool)

(declare-fun e!2654795 () Bool)

(declare-fun tp!1308562 () Bool)

(declare-fun tp!1308561 () Bool)

(assert (=> b!4276072 (= e!2654795 (and (inv!62600 (left!35246 (c!728165 x!743277))) tp!1308561 (inv!62600 (right!35576 (c!728165 x!743277))) tp!1308562))))

(declare-fun b!4276073 () Bool)

(declare-fun inv!62608 (IArray!28641) Bool)

(assert (=> b!4276073 (= e!2654795 (inv!62608 (xs!17624 (c!728165 x!743277))))))

(assert (=> b!4275964 (= tp!1308545 (and (inv!62600 (c!728165 x!743277)) e!2654795))))

(assert (= (and b!4275964 (is-Node!14318 (c!728165 x!743277))) b!4276072))

(assert (= (and b!4275964 (is-Leaf!22133 (c!728165 x!743277))) b!4276073))

(declare-fun m!4871801 () Bool)

(assert (=> b!4276072 m!4871801))

(declare-fun m!4871803 () Bool)

(assert (=> b!4276072 m!4871803))

(declare-fun m!4871805 () Bool)

(assert (=> b!4276073 m!4871805))

(assert (=> b!4275964 m!4871661))

(declare-fun e!2654797 () Bool)

(declare-fun tp!1308563 () Bool)

(declare-fun b!4276074 () Bool)

(declare-fun tp!1308564 () Bool)

(assert (=> b!4276074 (= e!2654797 (and (inv!62600 (left!35246 (c!728165 x!743278))) tp!1308563 (inv!62600 (right!35576 (c!728165 x!743278))) tp!1308564))))

(declare-fun b!4276075 () Bool)

(assert (=> b!4276075 (= e!2654797 (inv!62608 (xs!17624 (c!728165 x!743278))))))

(assert (=> b!4275966 (= tp!1308546 (and (inv!62600 (c!728165 x!743278)) e!2654797))))

(assert (= (and b!4275966 (is-Node!14318 (c!728165 x!743278))) b!4276074))

(assert (= (and b!4275966 (is-Leaf!22133 (c!728165 x!743278))) b!4276075))

(declare-fun m!4871807 () Bool)

(assert (=> b!4276074 m!4871807))

(declare-fun m!4871809 () Bool)

(assert (=> b!4276074 m!4871809))

(declare-fun m!4871811 () Bool)

(assert (=> b!4276075 m!4871811))

(assert (=> b!4275966 m!4871685))

(declare-fun tp!1308565 () Bool)

(declare-fun b!4276076 () Bool)

(declare-fun e!2654799 () Bool)

(declare-fun tp!1308566 () Bool)

(assert (=> b!4276076 (= e!2654799 (and (inv!62600 (left!35246 (c!728165 x!743279))) tp!1308565 (inv!62600 (right!35576 (c!728165 x!743279))) tp!1308566))))

(declare-fun b!4276077 () Bool)

(assert (=> b!4276077 (= e!2654799 (inv!62608 (xs!17624 (c!728165 x!743279))))))

(assert (=> b!4275967 (= tp!1308547 (and (inv!62600 (c!728165 x!743279)) e!2654799))))

(assert (= (and b!4275967 (is-Node!14318 (c!728165 x!743279))) b!4276076))

(assert (= (and b!4275967 (is-Leaf!22133 (c!728165 x!743279))) b!4276077))

(declare-fun m!4871813 () Bool)

(assert (=> b!4276076 m!4871813))

(declare-fun m!4871815 () Bool)

(assert (=> b!4276076 m!4871815))

(declare-fun m!4871817 () Bool)

(assert (=> b!4276077 m!4871817))

(assert (=> b!4275967 m!4871687))

(push 1)

(assert (not d!1262225))

(assert (not b!4276075))

(assert (not d!1262235))

(assert (not b!4276054))

(assert (not d!1262251))

(assert (not d!1262239))

(assert (not b!4276073))

(assert (not d!1262237))

(assert (not d!1262233))

(assert (not b!4276077))

(assert (not b!4276063))

(assert (not b!4275967))

(assert (not d!1262219))

(assert (not d!1262243))

(assert (not b!4276042))

(assert (not d!1262227))

(assert (not b!4276045))

(assert (not d!1262221))

(assert (not d!1262247))

(assert (not d!1262249))

(assert (not d!1262241))

(assert (not b!4276074))

(assert (not b!4275964))

(assert (not b!4276072))

(assert (not d!1262253))

(assert (not b!4276062))

(assert (not b!4276040))

(assert (not b!4276060))

(assert (not d!1262231))

(assert (not b!4276076))

(assert (not b!4275966))

(assert (not d!1262223))

(assert (not b!4276065))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

