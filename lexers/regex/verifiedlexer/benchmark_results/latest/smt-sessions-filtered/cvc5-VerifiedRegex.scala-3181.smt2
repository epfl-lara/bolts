; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!185846 () Bool)

(assert start!185846)

(assert (=> start!185846 true))

(declare-fun b!1860050 () Bool)

(assert (=> b!1860050 true))

(assert (=> b!1860050 true))

(declare-fun b!1860051 () Bool)

(assert (=> b!1860051 true))

(declare-fun b!1860060 () Bool)

(declare-fun e!1187878 () Bool)

(declare-datatypes ((List!20710 0))(
  ( (Nil!20630) (Cons!20630 (h!26031 (_ BitVec 16)) (t!172659 List!20710)) )
))
(declare-datatypes ((IArray!13659 0))(
  ( (IArray!13660 (innerList!6887 List!20710)) )
))
(declare-datatypes ((Conc!6827 0))(
  ( (Node!6827 (left!16584 Conc!6827) (right!16914 Conc!6827) (csize!13884 Int) (cheight!7038 Int)) (Leaf!10009 (xs!9703 IArray!13659) (csize!13885 Int)) (Empty!6827) )
))
(declare-datatypes ((BalanceConc!13584 0))(
  ( (BalanceConc!13585 (c!302929 Conc!6827)) )
))
(declare-fun x!373252 () BalanceConc!13584)

(declare-fun tp!530103 () Bool)

(declare-fun inv!27124 (Conc!6827) Bool)

(assert (=> b!1860060 (= e!1187878 (and (inv!27124 (c!302929 x!373252)) tp!530103))))

(declare-datatypes ((DelimiterValueInjection!16 0))(
  ( (DelimiterValueInjection!17) )
))
(declare-fun thiss!5194 () DelimiterValueInjection!16)

(declare-fun inst!1174 () Bool)

(declare-fun inv!27125 (BalanceConc!13584) Bool)

(declare-fun list!8382 (BalanceConc!13584) List!20710)

(declare-datatypes ((TokenValue!3811 0))(
  ( (FloatLiteralValue!7622 (text!27122 List!20710)) (TokenValueExt!3810 (__x!13000 Int)) (Broken!19055 (value!115955 List!20710)) (Object!3890) (End!3811) (Def!3811) (Underscore!3811) (Match!3811) (Else!3811) (Error!3811) (Case!3811) (If!3811) (Extends!3811) (Abstract!3811) (Class!3811) (Val!3811) (DelimiterValue!7622 (del!3871 List!20710)) (KeywordValue!3817 (value!115956 List!20710)) (CommentValue!7622 (value!115957 List!20710)) (WhitespaceValue!7622 (value!115958 List!20710)) (IndentationValue!3811 (value!115959 List!20710)) (String!23714) (Int32!3811) (Broken!19056 (value!115960 List!20710)) (Boolean!3812) (Unit!35247) (OperatorValue!3814 (op!3871 List!20710)) (IdentifierValue!7622 (value!115961 List!20710)) (IdentifierValue!7623 (value!115962 List!20710)) (WhitespaceValue!7623 (value!115963 List!20710)) (True!7622) (False!7622) (Broken!19057 (value!115964 List!20710)) (Broken!19058 (value!115965 List!20710)) (True!7623) (RightBrace!3811) (RightBracket!3811) (Colon!3811) (Null!3811) (Comma!3811) (LeftBracket!3811) (False!7623) (LeftBrace!3811) (ImaginaryLiteralValue!3811 (text!27123 List!20710)) (StringLiteralValue!11433 (value!115966 List!20710)) (EOFValue!3811 (value!115967 List!20710)) (IdentValue!3811 (value!115968 List!20710)) (DelimiterValue!7623 (value!115969 List!20710)) (DedentValue!3811 (value!115970 List!20710)) (NewLineValue!3811 (value!115971 List!20710)) (IntegerValue!11433 (value!115972 (_ BitVec 32)) (text!27124 List!20710)) (IntegerValue!11434 (value!115973 Int) (text!27125 List!20710)) (Times!3811) (Or!3811) (Equal!3811) (Minus!3811) (Broken!19059 (value!115974 List!20710)) (And!3811) (Div!3811) (LessEqual!3811) (Mod!3811) (Concat!8873) (Not!3811) (Plus!3811) (SpaceValue!3811 (value!115975 List!20710)) (IntegerValue!11435 (value!115976 Int) (text!27126 List!20710)) (StringLiteralValue!11434 (text!27127 List!20710)) (FloatLiteralValue!7623 (text!27128 List!20710)) (BytesLiteralValue!3811 (value!115977 List!20710)) (CommentValue!7623 (value!115978 List!20710)) (StringLiteralValue!11435 (value!115979 List!20710)) (ErrorTokenValue!3811 (msg!3872 List!20710)) )
))
(declare-fun toCharacters!28 (DelimiterValueInjection!16 TokenValue!3811) BalanceConc!13584)

(declare-fun toValue!35 (DelimiterValueInjection!16 BalanceConc!13584) TokenValue!3811)

(assert (=> start!185846 (= inst!1174 (=> (and (inv!27125 x!373252) e!1187878) (= (list!8382 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252))) (list!8382 x!373252))))))

(assert (= start!185846 b!1860060))

(declare-fun m!2283633 () Bool)

(assert (=> b!1860060 m!2283633))

(declare-fun m!2283635 () Bool)

(assert (=> start!185846 m!2283635))

(assert (=> start!185846 m!2283635))

(declare-fun m!2283637 () Bool)

(assert (=> start!185846 m!2283637))

(declare-fun m!2283639 () Bool)

(assert (=> start!185846 m!2283639))

(assert (=> start!185846 m!2283637))

(declare-fun m!2283641 () Bool)

(assert (=> start!185846 m!2283641))

(declare-fun m!2283643 () Bool)

(assert (=> start!185846 m!2283643))

(declare-fun res!832942 () Bool)

(declare-fun e!1187881 () Bool)

(assert (=> b!1860051 (=> res!832942 e!1187881)))

(declare-fun x!373253 () BalanceConc!13584)

(declare-fun x!373254 () BalanceConc!13584)

(assert (=> b!1860051 (= res!832942 (not (= (list!8382 x!373253) (list!8382 x!373254))))))

(declare-fun e!1187879 () Bool)

(declare-fun inst!1175 () Bool)

(declare-fun e!1187880 () Bool)

(assert (=> b!1860051 (= inst!1175 (=> (and (inv!27125 x!373253) e!1187879 (inv!27125 x!373254) e!1187880) e!1187881))))

(declare-fun b!1860061 () Bool)

(assert (=> b!1860061 (= e!1187881 (= (toValue!35 thiss!5194 x!373253) (toValue!35 thiss!5194 x!373254)))))

(declare-fun b!1860062 () Bool)

(declare-fun tp!530104 () Bool)

(assert (=> b!1860062 (= e!1187879 (and (inv!27124 (c!302929 x!373253)) tp!530104))))

(declare-fun b!1860063 () Bool)

(declare-fun tp!530105 () Bool)

(assert (=> b!1860063 (= e!1187880 (and (inv!27124 (c!302929 x!373254)) tp!530105))))

(assert (= (and b!1860051 (not res!832942)) b!1860061))

(assert (= b!1860051 b!1860062))

(assert (= b!1860051 b!1860063))

(declare-fun m!2283645 () Bool)

(assert (=> b!1860051 m!2283645))

(declare-fun m!2283647 () Bool)

(assert (=> b!1860051 m!2283647))

(declare-fun m!2283649 () Bool)

(assert (=> b!1860051 m!2283649))

(declare-fun m!2283651 () Bool)

(assert (=> b!1860051 m!2283651))

(declare-fun m!2283653 () Bool)

(assert (=> b!1860061 m!2283653))

(declare-fun m!2283655 () Bool)

(assert (=> b!1860061 m!2283655))

(declare-fun m!2283657 () Bool)

(assert (=> b!1860062 m!2283657))

(declare-fun m!2283659 () Bool)

(assert (=> b!1860063 m!2283659))

(declare-fun bs!411120 () Bool)

(declare-fun neg-inst!1175 () Bool)

(declare-fun s!221702 () Bool)

(assert (= bs!411120 (and neg-inst!1175 s!221702)))

(assert (=> bs!411120 (=> true (= (list!8382 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252))) (list!8382 x!373252)))))

(assert (=> m!2283643 m!2283635))

(assert (=> m!2283643 m!2283637))

(assert (=> m!2283643 m!2283641))

(assert (=> m!2283643 s!221702))

(assert (=> m!2283635 s!221702))

(declare-fun bs!411121 () Bool)

(assert (= bs!411121 (and neg-inst!1175 start!185846)))

(assert (=> bs!411121 (= true inst!1174)))

(declare-fun bs!411122 () Bool)

(declare-fun neg-inst!1174 () Bool)

(declare-fun s!221704 () Bool)

(assert (= bs!411122 (and neg-inst!1174 s!221704)))

(declare-fun res!832943 () Bool)

(declare-fun e!1187882 () Bool)

(assert (=> bs!411122 (=> res!832943 e!1187882)))

(assert (=> bs!411122 (= res!832943 (not (= (list!8382 x!373254) (list!8382 x!373254))))))

(assert (=> bs!411122 (=> true e!1187882)))

(declare-fun b!1860064 () Bool)

(assert (=> b!1860064 (= e!1187882 (= (toValue!35 thiss!5194 x!373254) (toValue!35 thiss!5194 x!373254)))))

(assert (= (and bs!411122 (not res!832943)) b!1860064))

(assert (=> m!2283655 m!2283647))

(assert (=> m!2283655 m!2283647))

(assert (=> m!2283655 s!221704))

(assert (=> m!2283655 s!221704))

(declare-fun bs!411123 () Bool)

(declare-fun s!221706 () Bool)

(assert (= bs!411123 (and neg-inst!1174 s!221706)))

(declare-fun res!832944 () Bool)

(declare-fun e!1187883 () Bool)

(assert (=> bs!411123 (=> res!832944 e!1187883)))

(assert (=> bs!411123 (= res!832944 (not (= (list!8382 x!373254) (list!8382 x!373252))))))

(assert (=> bs!411123 (=> true e!1187883)))

(declare-fun b!1860065 () Bool)

(assert (=> b!1860065 (= e!1187883 (= (toValue!35 thiss!5194 x!373254) (toValue!35 thiss!5194 x!373252)))))

(assert (= (and bs!411123 (not res!832944)) b!1860065))

(declare-fun bs!411124 () Bool)

(assert (= bs!411124 (and m!2283643 m!2283655)))

(assert (=> bs!411124 m!2283647))

(assert (=> bs!411124 m!2283643))

(assert (=> bs!411124 s!221706))

(declare-fun bs!411125 () Bool)

(declare-fun s!221708 () Bool)

(assert (= bs!411125 (and neg-inst!1174 s!221708)))

(declare-fun res!832945 () Bool)

(declare-fun e!1187884 () Bool)

(assert (=> bs!411125 (=> res!832945 e!1187884)))

(assert (=> bs!411125 (= res!832945 (not (= (list!8382 x!373252) (list!8382 x!373252))))))

(assert (=> bs!411125 (=> true e!1187884)))

(declare-fun b!1860066 () Bool)

(assert (=> b!1860066 (= e!1187884 (= (toValue!35 thiss!5194 x!373252) (toValue!35 thiss!5194 x!373252)))))

(assert (= (and bs!411125 (not res!832945)) b!1860066))

(assert (=> m!2283643 s!221708))

(declare-fun bs!411126 () Bool)

(declare-fun s!221710 () Bool)

(assert (= bs!411126 (and neg-inst!1174 s!221710)))

(declare-fun res!832946 () Bool)

(declare-fun e!1187885 () Bool)

(assert (=> bs!411126 (=> res!832946 e!1187885)))

(assert (=> bs!411126 (= res!832946 (not (= (list!8382 x!373252) (list!8382 x!373254))))))

(assert (=> bs!411126 (=> true e!1187885)))

(declare-fun b!1860067 () Bool)

(assert (=> b!1860067 (= e!1187885 (= (toValue!35 thiss!5194 x!373252) (toValue!35 thiss!5194 x!373254)))))

(assert (= (and bs!411126 (not res!832946)) b!1860067))

(assert (=> bs!411124 m!2283643))

(assert (=> bs!411124 m!2283647))

(assert (=> bs!411124 s!221710))

(assert (=> m!2283643 s!221708))

(declare-fun bs!411127 () Bool)

(assert (= bs!411127 (and m!2283635 m!2283643)))

(assert (=> bs!411127 s!221708))

(declare-fun bs!411128 () Bool)

(assert (= bs!411128 (and m!2283635 m!2283655)))

(assert (=> bs!411128 s!221706))

(assert (=> m!2283635 s!221708))

(assert (=> bs!411127 s!221708))

(assert (=> bs!411128 s!221710))

(assert (=> m!2283635 s!221708))

(declare-fun bs!411129 () Bool)

(declare-fun s!221712 () Bool)

(assert (= bs!411129 (and neg-inst!1174 s!221712)))

(declare-fun res!832947 () Bool)

(declare-fun e!1187886 () Bool)

(assert (=> bs!411129 (=> res!832947 e!1187886)))

(assert (=> bs!411129 (= res!832947 (not (= (list!8382 x!373252) (list!8382 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252))))))))

(assert (=> bs!411129 (=> true e!1187886)))

(declare-fun b!1860068 () Bool)

(assert (=> b!1860068 (= e!1187886 (= (toValue!35 thiss!5194 x!373252) (toValue!35 thiss!5194 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252)))))))

(assert (= (and bs!411129 (not res!832947)) b!1860068))

(declare-fun bs!411130 () Bool)

(assert (= bs!411130 (and m!2283641 m!2283643 m!2283635)))

(assert (=> bs!411130 m!2283643))

(assert (=> bs!411130 m!2283641))

(assert (=> bs!411130 s!221712))

(declare-fun bs!411131 () Bool)

(declare-fun s!221714 () Bool)

(assert (= bs!411131 (and neg-inst!1174 s!221714)))

(declare-fun res!832948 () Bool)

(declare-fun e!1187887 () Bool)

(assert (=> bs!411131 (=> res!832948 e!1187887)))

(assert (=> bs!411131 (= res!832948 (not (= (list!8382 x!373254) (list!8382 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252))))))))

(assert (=> bs!411131 (=> true e!1187887)))

(declare-fun b!1860069 () Bool)

(assert (=> b!1860069 (= e!1187887 (= (toValue!35 thiss!5194 x!373254) (toValue!35 thiss!5194 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252)))))))

(assert (= (and bs!411131 (not res!832948)) b!1860069))

(declare-fun bs!411132 () Bool)

(assert (= bs!411132 (and m!2283641 m!2283655)))

(assert (=> bs!411132 m!2283647))

(assert (=> bs!411132 m!2283641))

(assert (=> bs!411132 s!221714))

(declare-fun bs!411133 () Bool)

(declare-fun s!221716 () Bool)

(assert (= bs!411133 (and neg-inst!1174 s!221716)))

(declare-fun res!832949 () Bool)

(declare-fun e!1187888 () Bool)

(assert (=> bs!411133 (=> res!832949 e!1187888)))

(assert (=> bs!411133 (= res!832949 (not (= (list!8382 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252))) (list!8382 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252))))))))

(assert (=> bs!411133 (=> true e!1187888)))

(declare-fun b!1860070 () Bool)

(assert (=> b!1860070 (= e!1187888 (= (toValue!35 thiss!5194 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252))) (toValue!35 thiss!5194 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252)))))))

(assert (= (and bs!411133 (not res!832949)) b!1860070))

(assert (=> m!2283641 s!221716))

(declare-fun bs!411134 () Bool)

(declare-fun s!221718 () Bool)

(assert (= bs!411134 (and neg-inst!1174 s!221718)))

(declare-fun res!832950 () Bool)

(declare-fun e!1187889 () Bool)

(assert (=> bs!411134 (=> res!832950 e!1187889)))

(assert (=> bs!411134 (= res!832950 (not (= (list!8382 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252))) (list!8382 x!373252))))))

(assert (=> bs!411134 (=> true e!1187889)))

(declare-fun b!1860071 () Bool)

(assert (=> b!1860071 (= e!1187889 (= (toValue!35 thiss!5194 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252))) (toValue!35 thiss!5194 x!373252)))))

(assert (= (and bs!411134 (not res!832950)) b!1860071))

(assert (=> bs!411130 m!2283641))

(assert (=> bs!411130 m!2283643))

(assert (=> bs!411130 s!221718))

(declare-fun bs!411135 () Bool)

(declare-fun s!221720 () Bool)

(assert (= bs!411135 (and neg-inst!1174 s!221720)))

(declare-fun res!832951 () Bool)

(declare-fun e!1187890 () Bool)

(assert (=> bs!411135 (=> res!832951 e!1187890)))

(assert (=> bs!411135 (= res!832951 (not (= (list!8382 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252))) (list!8382 x!373254))))))

(assert (=> bs!411135 (=> true e!1187890)))

(declare-fun b!1860072 () Bool)

(assert (=> b!1860072 (= e!1187890 (= (toValue!35 thiss!5194 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252))) (toValue!35 thiss!5194 x!373254)))))

(assert (= (and bs!411135 (not res!832951)) b!1860072))

(assert (=> bs!411132 m!2283641))

(assert (=> bs!411132 m!2283647))

(assert (=> bs!411132 s!221720))

(assert (=> m!2283641 s!221716))

(declare-fun bs!411136 () Bool)

(declare-fun s!221722 () Bool)

(assert (= bs!411136 (and neg-inst!1174 s!221722)))

(declare-fun res!832952 () Bool)

(declare-fun e!1187891 () Bool)

(assert (=> bs!411136 (=> res!832952 e!1187891)))

(assert (=> bs!411136 (= res!832952 (not (= (list!8382 x!373252) (list!8382 x!373253))))))

(assert (=> bs!411136 (=> true e!1187891)))

(declare-fun b!1860073 () Bool)

(assert (=> b!1860073 (= e!1187891 (= (toValue!35 thiss!5194 x!373252) (toValue!35 thiss!5194 x!373253)))))

(assert (= (and bs!411136 (not res!832952)) b!1860073))

(declare-fun bs!411137 () Bool)

(assert (= bs!411137 (and m!2283653 m!2283643 m!2283635)))

(assert (=> bs!411137 m!2283643))

(assert (=> bs!411137 m!2283645))

(assert (=> bs!411137 s!221722))

(declare-fun bs!411138 () Bool)

(declare-fun s!221724 () Bool)

(assert (= bs!411138 (and neg-inst!1174 s!221724)))

(declare-fun res!832953 () Bool)

(declare-fun e!1187892 () Bool)

(assert (=> bs!411138 (=> res!832953 e!1187892)))

(assert (=> bs!411138 (= res!832953 (not (= (list!8382 x!373254) (list!8382 x!373253))))))

(assert (=> bs!411138 (=> true e!1187892)))

(declare-fun b!1860074 () Bool)

(assert (=> b!1860074 (= e!1187892 (= (toValue!35 thiss!5194 x!373254) (toValue!35 thiss!5194 x!373253)))))

(assert (= (and bs!411138 (not res!832953)) b!1860074))

(declare-fun bs!411139 () Bool)

(assert (= bs!411139 (and m!2283653 m!2283655)))

(assert (=> bs!411139 m!2283647))

(assert (=> bs!411139 m!2283645))

(assert (=> bs!411139 s!221724))

(declare-fun bs!411140 () Bool)

(declare-fun s!221726 () Bool)

(assert (= bs!411140 (and neg-inst!1174 s!221726)))

(declare-fun res!832954 () Bool)

(declare-fun e!1187893 () Bool)

(assert (=> bs!411140 (=> res!832954 e!1187893)))

(assert (=> bs!411140 (= res!832954 (not (= (list!8382 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252))) (list!8382 x!373253))))))

(assert (=> bs!411140 (=> true e!1187893)))

(declare-fun b!1860075 () Bool)

(assert (=> b!1860075 (= e!1187893 (= (toValue!35 thiss!5194 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252))) (toValue!35 thiss!5194 x!373253)))))

(assert (= (and bs!411140 (not res!832954)) b!1860075))

(declare-fun bs!411141 () Bool)

(assert (= bs!411141 (and m!2283653 m!2283641)))

(assert (=> bs!411141 m!2283641))

(assert (=> bs!411141 m!2283645))

(assert (=> bs!411141 s!221726))

(declare-fun bs!411142 () Bool)

(declare-fun s!221728 () Bool)

(assert (= bs!411142 (and neg-inst!1174 s!221728)))

(declare-fun res!832955 () Bool)

(declare-fun e!1187894 () Bool)

(assert (=> bs!411142 (=> res!832955 e!1187894)))

(assert (=> bs!411142 (= res!832955 (not (= (list!8382 x!373253) (list!8382 x!373253))))))

(assert (=> bs!411142 (=> true e!1187894)))

(declare-fun b!1860076 () Bool)

(assert (=> b!1860076 (= e!1187894 (= (toValue!35 thiss!5194 x!373253) (toValue!35 thiss!5194 x!373253)))))

(assert (= (and bs!411142 (not res!832955)) b!1860076))

(assert (=> m!2283653 m!2283645))

(assert (=> m!2283653 m!2283645))

(assert (=> m!2283653 s!221728))

(declare-fun bs!411143 () Bool)

(declare-fun s!221730 () Bool)

(assert (= bs!411143 (and neg-inst!1174 s!221730)))

(declare-fun res!832956 () Bool)

(declare-fun e!1187895 () Bool)

(assert (=> bs!411143 (=> res!832956 e!1187895)))

(assert (=> bs!411143 (= res!832956 (not (= (list!8382 x!373253) (list!8382 x!373252))))))

(assert (=> bs!411143 (=> true e!1187895)))

(declare-fun b!1860077 () Bool)

(assert (=> b!1860077 (= e!1187895 (= (toValue!35 thiss!5194 x!373253) (toValue!35 thiss!5194 x!373252)))))

(assert (= (and bs!411143 (not res!832956)) b!1860077))

(assert (=> bs!411137 m!2283645))

(assert (=> bs!411137 m!2283643))

(assert (=> bs!411137 s!221730))

(declare-fun bs!411144 () Bool)

(declare-fun s!221732 () Bool)

(assert (= bs!411144 (and neg-inst!1174 s!221732)))

(declare-fun res!832957 () Bool)

(declare-fun e!1187896 () Bool)

(assert (=> bs!411144 (=> res!832957 e!1187896)))

(assert (=> bs!411144 (= res!832957 (not (= (list!8382 x!373253) (list!8382 x!373254))))))

(assert (=> bs!411144 (=> true e!1187896)))

(declare-fun b!1860078 () Bool)

(assert (=> b!1860078 (= e!1187896 (= (toValue!35 thiss!5194 x!373253) (toValue!35 thiss!5194 x!373254)))))

(assert (= (and bs!411144 (not res!832957)) b!1860078))

(assert (=> bs!411139 m!2283645))

(assert (=> bs!411139 m!2283647))

(assert (=> bs!411139 s!221732))

(declare-fun bs!411145 () Bool)

(declare-fun s!221734 () Bool)

(assert (= bs!411145 (and neg-inst!1174 s!221734)))

(declare-fun res!832958 () Bool)

(declare-fun e!1187897 () Bool)

(assert (=> bs!411145 (=> res!832958 e!1187897)))

(assert (=> bs!411145 (= res!832958 (not (= (list!8382 x!373253) (list!8382 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252))))))))

(assert (=> bs!411145 (=> true e!1187897)))

(declare-fun b!1860079 () Bool)

(assert (=> b!1860079 (= e!1187897 (= (toValue!35 thiss!5194 x!373253) (toValue!35 thiss!5194 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252)))))))

(assert (= (and bs!411145 (not res!832958)) b!1860079))

(assert (=> bs!411141 m!2283645))

(assert (=> bs!411141 m!2283641))

(assert (=> bs!411141 s!221734))

(assert (=> m!2283653 s!221728))

(declare-fun bs!411146 () Bool)

(assert (= bs!411146 (and m!2283645 m!2283655)))

(assert (=> bs!411146 s!221724))

(declare-fun bs!411147 () Bool)

(assert (= bs!411147 (and m!2283645 m!2283641)))

(assert (=> bs!411147 s!221726))

(declare-fun bs!411148 () Bool)

(assert (= bs!411148 (and m!2283645 m!2283643 m!2283635)))

(assert (=> bs!411148 s!221722))

(declare-fun bs!411149 () Bool)

(assert (= bs!411149 (and m!2283645 m!2283653)))

(assert (=> bs!411149 s!221728))

(assert (=> m!2283645 s!221728))

(assert (=> bs!411148 s!221730))

(assert (=> bs!411146 s!221732))

(assert (=> bs!411149 s!221728))

(assert (=> m!2283645 s!221728))

(assert (=> bs!411147 s!221734))

(assert (=> m!2283647 s!221704))

(declare-fun bs!411150 () Bool)

(assert (= bs!411150 (and m!2283647 m!2283655)))

(assert (=> bs!411150 s!221704))

(declare-fun bs!411151 () Bool)

(assert (= bs!411151 (and m!2283647 m!2283643 m!2283635)))

(assert (=> bs!411151 s!221710))

(declare-fun bs!411152 () Bool)

(assert (= bs!411152 (and m!2283647 m!2283653 m!2283645)))

(assert (=> bs!411152 s!221732))

(declare-fun bs!411153 () Bool)

(assert (= bs!411153 (and m!2283647 m!2283641)))

(assert (=> bs!411153 s!221720))

(assert (=> m!2283647 s!221704))

(assert (=> bs!411151 s!221706))

(assert (=> bs!411153 s!221714))

(assert (=> bs!411152 s!221724))

(assert (=> bs!411150 s!221704))

(declare-fun bs!411154 () Bool)

(assert (= bs!411154 (and neg-inst!1174 b!1860051)))

(assert (=> bs!411154 (= true inst!1175)))

(declare-fun res!832941 () Bool)

(declare-fun e!1187876 () Bool)

(assert (=> start!185846 (=> res!832941 e!1187876)))

(declare-fun lambda!73557 () Int)

(declare-fun Forall!975 (Int) Bool)

(assert (=> start!185846 (= res!832941 (not (Forall!975 lambda!73557)))))

(assert (=> start!185846 (= (Forall!975 lambda!73557) inst!1174)))

(assert (=> start!185846 (not e!1187876)))

(assert (=> start!185846 true))

(declare-fun e!1187877 () Bool)

(assert (=> b!1860050 (= e!1187876 e!1187877)))

(declare-fun res!832940 () Bool)

(assert (=> b!1860050 (=> res!832940 e!1187877)))

(declare-fun lambda!73558 () Int)

(declare-fun lambda!73559 () Int)

(declare-fun semiInverseModEq!1503 (Int Int) Bool)

(assert (=> b!1860050 (= res!832940 (not (semiInverseModEq!1503 lambda!73558 lambda!73559)))))

(assert (=> b!1860050 (= (semiInverseModEq!1503 lambda!73558 lambda!73559) (Forall!975 lambda!73557))))

(declare-fun lambda!73560 () Int)

(declare-fun Forall2!600 (Int) Bool)

(assert (=> b!1860051 (= e!1187877 (Forall2!600 lambda!73560))))

(assert (=> b!1860051 (= (Forall2!600 lambda!73560) inst!1175)))

(assert (= neg-inst!1175 inst!1174))

(assert (= (and start!185846 (not res!832941)) b!1860050))

(assert (= (and b!1860050 (not res!832940)) b!1860051))

(assert (= neg-inst!1174 inst!1175))

(declare-fun m!2283661 () Bool)

(assert (=> start!185846 m!2283661))

(assert (=> start!185846 m!2283661))

(declare-fun m!2283663 () Bool)

(assert (=> b!1860050 m!2283663))

(assert (=> b!1860050 m!2283663))

(assert (=> b!1860050 m!2283661))

(declare-fun m!2283665 () Bool)

(assert (=> b!1860051 m!2283665))

(assert (=> b!1860051 m!2283665))

(push 1)

(assert (not b!1860075))

(assert (not b!1860071))

(assert (not bs!411133))

(assert (not b!1860072))

(assert (not bs!411145))

(assert (not bs!411123))

(assert (not bs!411129))

(assert (not b!1860062))

(assert (not bs!411140))

(assert (not bs!411136))

(assert (not b!1860063))

(assert (not bs!411125))

(assert (not bs!411138))

(assert (not bs!411144))

(assert (not b!1860067))

(assert (not b!1860070))

(assert (not b!1860079))

(assert (not b!1860078))

(assert (not b!1860073))

(assert (not b!1860066))

(assert (not bs!411142))

(assert (not b!1860060))

(assert (not bs!411120))

(assert (not b!1860077))

(assert (not bs!411134))

(assert (not b!1860051))

(assert (not b!1860074))

(assert (not b!1860068))

(assert (not b!1860064))

(assert (not b!1860065))

(assert (not b!1860050))

(assert (not b!1860076))

(assert (not bs!411126))

(assert (not bs!411131))

(assert (not bs!411122))

(assert (not start!185846))

(assert (not bs!411143))

(assert (not b!1860069))

(assert (not bs!411135))

(assert (not b!1860061))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!567586 () Bool)

(declare-fun efficientList!254 (BalanceConc!13584) List!20710)

(assert (=> d!567586 (= (toValue!35 thiss!5194 x!373254) (DelimiterValue!7622 (efficientList!254 x!373254)))))

(declare-fun bs!411192 () Bool)

(assert (= bs!411192 d!567586))

(declare-fun m!2283701 () Bool)

(assert (=> bs!411192 m!2283701))

(assert (=> b!1860069 d!567586))

(declare-fun d!567588 () Bool)

(assert (=> d!567588 (= (toValue!35 thiss!5194 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252))) (DelimiterValue!7622 (efficientList!254 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252)))))))

(declare-fun bs!411193 () Bool)

(assert (= bs!411193 d!567588))

(assert (=> bs!411193 m!2283637))

(declare-fun m!2283703 () Bool)

(assert (=> bs!411193 m!2283703))

(assert (=> b!1860069 d!567588))

(declare-fun d!567590 () Bool)

(assert (=> d!567590 (= (toValue!35 thiss!5194 x!373253) (DelimiterValue!7622 (efficientList!254 x!373253)))))

(declare-fun bs!411194 () Bool)

(assert (= bs!411194 d!567590))

(declare-fun m!2283705 () Bool)

(assert (=> bs!411194 m!2283705))

(assert (=> b!1860079 d!567590))

(assert (=> b!1860079 d!567588))

(declare-fun d!567592 () Bool)

(declare-fun list!8384 (Conc!6827) List!20710)

(assert (=> d!567592 (= (list!8382 x!373252) (list!8384 (c!302929 x!373252)))))

(declare-fun bs!411195 () Bool)

(assert (= bs!411195 d!567592))

(declare-fun m!2283707 () Bool)

(assert (=> bs!411195 m!2283707))

(assert (=> bs!411136 d!567592))

(declare-fun d!567594 () Bool)

(assert (=> d!567594 (= (list!8382 x!373253) (list!8384 (c!302929 x!373253)))))

(declare-fun bs!411196 () Bool)

(assert (= bs!411196 d!567594))

(declare-fun m!2283709 () Bool)

(assert (=> bs!411196 m!2283709))

(assert (=> bs!411136 d!567594))

(declare-fun d!567596 () Bool)

(assert (=> d!567596 (= (toValue!35 thiss!5194 x!373252) (DelimiterValue!7622 (efficientList!254 x!373252)))))

(declare-fun bs!411197 () Bool)

(assert (= bs!411197 d!567596))

(declare-fun m!2283711 () Bool)

(assert (=> bs!411197 m!2283711))

(assert (=> b!1860066 d!567596))

(assert (=> bs!411142 d!567594))

(assert (=> bs!411125 d!567592))

(declare-fun d!567598 () Bool)

(assert (=> d!567598 (= (list!8382 x!373254) (list!8384 (c!302929 x!373254)))))

(declare-fun bs!411198 () Bool)

(assert (= bs!411198 d!567598))

(declare-fun m!2283713 () Bool)

(assert (=> bs!411198 m!2283713))

(assert (=> bs!411131 d!567598))

(declare-fun d!567600 () Bool)

(assert (=> d!567600 (= (list!8382 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252))) (list!8384 (c!302929 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252)))))))

(declare-fun bs!411199 () Bool)

(assert (= bs!411199 d!567600))

(declare-fun m!2283715 () Bool)

(assert (=> bs!411199 m!2283715))

(assert (=> bs!411131 d!567600))

(assert (=> bs!411145 d!567594))

(assert (=> bs!411145 d!567600))

(assert (=> b!1860072 d!567588))

(assert (=> b!1860072 d!567586))

(assert (=> b!1860067 d!567596))

(assert (=> b!1860067 d!567586))

(assert (=> bs!411143 d!567594))

(assert (=> bs!411143 d!567592))

(assert (=> b!1860070 d!567588))

(assert (=> bs!411122 d!567598))

(assert (=> bs!411133 d!567600))

(assert (=> b!1860073 d!567596))

(assert (=> b!1860073 d!567590))

(assert (=> bs!411126 d!567592))

(assert (=> bs!411126 d!567598))

(assert (=> b!1860076 d!567590))

(assert (=> bs!411123 d!567598))

(assert (=> bs!411123 d!567592))

(assert (=> bs!411144 d!567594))

(assert (=> bs!411144 d!567598))

(assert (=> b!1860074 d!567586))

(assert (=> b!1860074 d!567590))

(assert (=> bs!411129 d!567592))

(assert (=> bs!411129 d!567600))

(assert (=> b!1860077 d!567590))

(assert (=> b!1860077 d!567596))

(assert (=> bs!411134 d!567600))

(assert (=> bs!411134 d!567592))

(assert (=> bs!411138 d!567598))

(assert (=> bs!411138 d!567594))

(assert (=> b!1860064 d!567586))

(assert (=> b!1860075 d!567588))

(assert (=> b!1860075 d!567590))

(assert (=> bs!411135 d!567600))

(assert (=> bs!411135 d!567598))

(assert (=> b!1860065 d!567586))

(assert (=> b!1860065 d!567596))

(assert (=> bs!411140 d!567600))

(assert (=> bs!411140 d!567594))

(assert (=> b!1860068 d!567596))

(assert (=> b!1860068 d!567588))

(assert (=> b!1860078 d!567590))

(assert (=> b!1860078 d!567586))

(assert (=> b!1860071 d!567588))

(assert (=> b!1860071 d!567596))

(declare-fun bs!411200 () Bool)

(assert (= bs!411200 (and m!2283655 b!1860064)))

(assert (=> bs!411200 m!2283655))

(assert (=> bs!411200 m!2283655))

(declare-fun bs!411201 () Bool)

(assert (= bs!411201 (and m!2283643 m!2283655 b!1860065)))

(assert (=> bs!411201 m!2283655))

(assert (=> bs!411201 m!2283635))

(declare-fun bs!411202 () Bool)

(assert (= bs!411202 (and m!2283643 b!1860066)))

(assert (=> bs!411202 m!2283635))

(assert (=> bs!411202 m!2283635))

(declare-fun bs!411203 () Bool)

(assert (= bs!411203 (and m!2283643 m!2283655 b!1860067)))

(assert (=> bs!411203 m!2283635))

(assert (=> bs!411203 m!2283655))

(declare-fun bs!411204 () Bool)

(assert (= bs!411204 (and m!2283641 m!2283643 m!2283635 b!1860068)))

(assert (=> bs!411204 m!2283635))

(declare-fun m!2283717 () Bool)

(assert (=> bs!411204 m!2283717))

(declare-fun bs!411205 () Bool)

(assert (= bs!411205 (and m!2283641 m!2283655 b!1860069)))

(assert (=> bs!411205 m!2283655))

(assert (=> bs!411205 m!2283717))

(declare-fun bs!411206 () Bool)

(assert (= bs!411206 (and m!2283641 b!1860070)))

(assert (=> bs!411206 m!2283717))

(assert (=> bs!411206 m!2283717))

(declare-fun bs!411207 () Bool)

(assert (= bs!411207 (and m!2283641 m!2283643 m!2283635 b!1860071)))

(assert (=> bs!411207 m!2283717))

(assert (=> bs!411207 m!2283635))

(declare-fun bs!411208 () Bool)

(assert (= bs!411208 (and m!2283641 m!2283655 b!1860072)))

(assert (=> bs!411208 m!2283717))

(assert (=> bs!411208 m!2283655))

(declare-fun bs!411209 () Bool)

(assert (= bs!411209 (and m!2283653 m!2283643 m!2283635 b!1860073)))

(assert (=> bs!411209 m!2283635))

(assert (=> bs!411209 m!2283653))

(declare-fun bs!411210 () Bool)

(assert (= bs!411210 (and m!2283653 m!2283655 b!1860074)))

(assert (=> bs!411210 m!2283655))

(assert (=> bs!411210 m!2283653))

(declare-fun bs!411211 () Bool)

(assert (= bs!411211 (and m!2283653 m!2283641 b!1860075)))

(assert (=> bs!411211 m!2283717))

(assert (=> bs!411211 m!2283653))

(declare-fun bs!411212 () Bool)

(assert (= bs!411212 (and m!2283653 b!1860076)))

(assert (=> bs!411212 m!2283653))

(assert (=> bs!411212 m!2283653))

(declare-fun bs!411213 () Bool)

(assert (= bs!411213 (and m!2283653 m!2283643 m!2283635 b!1860077)))

(assert (=> bs!411213 m!2283653))

(assert (=> bs!411213 m!2283635))

(declare-fun bs!411214 () Bool)

(assert (= bs!411214 (and m!2283653 m!2283655 b!1860078)))

(assert (=> bs!411214 m!2283653))

(assert (=> bs!411214 m!2283655))

(declare-fun bs!411215 () Bool)

(assert (= bs!411215 (and m!2283653 m!2283641 b!1860079)))

(assert (=> bs!411215 m!2283653))

(assert (=> bs!411215 m!2283717))

(push 1)

(assert (not d!567592))

(assert (not d!567598))

(assert (not d!567596))

(assert (not d!567588))

(assert (not d!567586))

(assert (not b!1860051))

(assert (not d!567594))

(assert (not b!1860050))

(assert (not b!1860062))

(assert (not b!1860061))

(assert (not b!1860060))

(assert (not bs!411120))

(assert (not start!185846))

(assert (not d!567590))

(assert (not b!1860063))

(assert (not d!567600))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!567618 () Bool)

(declare-fun lt!717650 () List!20710)

(assert (=> d!567618 (= lt!717650 (list!8382 x!373253))))

(declare-fun efficientList!256 (Conc!6827 List!20710) List!20710)

(declare-fun efficientList$default$2!87 (Conc!6827) List!20710)

(assert (=> d!567618 (= lt!717650 (efficientList!256 (c!302929 x!373253) (efficientList$default$2!87 (c!302929 x!373253))))))

(assert (=> d!567618 (= (efficientList!254 x!373253) lt!717650)))

(declare-fun bs!411240 () Bool)

(assert (= bs!411240 d!567618))

(assert (=> bs!411240 m!2283645))

(declare-fun m!2283737 () Bool)

(assert (=> bs!411240 m!2283737))

(assert (=> bs!411240 m!2283737))

(declare-fun m!2283739 () Bool)

(assert (=> bs!411240 m!2283739))

(assert (=> d!567590 d!567618))

(declare-fun d!567620 () Bool)

(declare-fun lt!717651 () List!20710)

(assert (=> d!567620 (= lt!717651 (list!8382 x!373252))))

(assert (=> d!567620 (= lt!717651 (efficientList!256 (c!302929 x!373252) (efficientList$default$2!87 (c!302929 x!373252))))))

(assert (=> d!567620 (= (efficientList!254 x!373252) lt!717651)))

(declare-fun bs!411241 () Bool)

(assert (= bs!411241 d!567620))

(assert (=> bs!411241 m!2283643))

(declare-fun m!2283741 () Bool)

(assert (=> bs!411241 m!2283741))

(assert (=> bs!411241 m!2283741))

(declare-fun m!2283743 () Bool)

(assert (=> bs!411241 m!2283743))

(assert (=> d!567596 d!567620))

(declare-fun b!1860137 () Bool)

(declare-fun e!1187942 () List!20710)

(declare-fun e!1187943 () List!20710)

(assert (=> b!1860137 (= e!1187942 e!1187943)))

(declare-fun c!302936 () Bool)

(assert (=> b!1860137 (= c!302936 (is-Leaf!10009 (c!302929 x!373252)))))

(declare-fun d!567622 () Bool)

(declare-fun c!302935 () Bool)

(assert (=> d!567622 (= c!302935 (is-Empty!6827 (c!302929 x!373252)))))

(assert (=> d!567622 (= (list!8384 (c!302929 x!373252)) e!1187942)))

(declare-fun b!1860138 () Bool)

(declare-fun list!8386 (IArray!13659) List!20710)

(assert (=> b!1860138 (= e!1187943 (list!8386 (xs!9703 (c!302929 x!373252))))))

(declare-fun b!1860139 () Bool)

(declare-fun ++!5568 (List!20710 List!20710) List!20710)

(assert (=> b!1860139 (= e!1187943 (++!5568 (list!8384 (left!16584 (c!302929 x!373252))) (list!8384 (right!16914 (c!302929 x!373252)))))))

(declare-fun b!1860136 () Bool)

(assert (=> b!1860136 (= e!1187942 Nil!20630)))

(assert (= (and d!567622 c!302935) b!1860136))

(assert (= (and d!567622 (not c!302935)) b!1860137))

(assert (= (and b!1860137 c!302936) b!1860138))

(assert (= (and b!1860137 (not c!302936)) b!1860139))

(declare-fun m!2283745 () Bool)

(assert (=> b!1860138 m!2283745))

(declare-fun m!2283747 () Bool)

(assert (=> b!1860139 m!2283747))

(declare-fun m!2283749 () Bool)

(assert (=> b!1860139 m!2283749))

(assert (=> b!1860139 m!2283747))

(assert (=> b!1860139 m!2283749))

(declare-fun m!2283751 () Bool)

(assert (=> b!1860139 m!2283751))

(assert (=> d!567592 d!567622))

(declare-fun d!567624 () Bool)

(declare-fun lt!717652 () List!20710)

(assert (=> d!567624 (= lt!717652 (list!8382 x!373254))))

(assert (=> d!567624 (= lt!717652 (efficientList!256 (c!302929 x!373254) (efficientList$default$2!87 (c!302929 x!373254))))))

(assert (=> d!567624 (= (efficientList!254 x!373254) lt!717652)))

(declare-fun bs!411242 () Bool)

(assert (= bs!411242 d!567624))

(assert (=> bs!411242 m!2283647))

(declare-fun m!2283753 () Bool)

(assert (=> bs!411242 m!2283753))

(assert (=> bs!411242 m!2283753))

(declare-fun m!2283755 () Bool)

(assert (=> bs!411242 m!2283755))

(assert (=> d!567586 d!567624))

(declare-fun b!1860141 () Bool)

(declare-fun e!1187944 () List!20710)

(declare-fun e!1187945 () List!20710)

(assert (=> b!1860141 (= e!1187944 e!1187945)))

(declare-fun c!302938 () Bool)

(assert (=> b!1860141 (= c!302938 (is-Leaf!10009 (c!302929 x!373254)))))

(declare-fun d!567626 () Bool)

(declare-fun c!302937 () Bool)

(assert (=> d!567626 (= c!302937 (is-Empty!6827 (c!302929 x!373254)))))

(assert (=> d!567626 (= (list!8384 (c!302929 x!373254)) e!1187944)))

(declare-fun b!1860142 () Bool)

(assert (=> b!1860142 (= e!1187945 (list!8386 (xs!9703 (c!302929 x!373254))))))

(declare-fun b!1860143 () Bool)

(assert (=> b!1860143 (= e!1187945 (++!5568 (list!8384 (left!16584 (c!302929 x!373254))) (list!8384 (right!16914 (c!302929 x!373254)))))))

(declare-fun b!1860140 () Bool)

(assert (=> b!1860140 (= e!1187944 Nil!20630)))

(assert (= (and d!567626 c!302937) b!1860140))

(assert (= (and d!567626 (not c!302937)) b!1860141))

(assert (= (and b!1860141 c!302938) b!1860142))

(assert (= (and b!1860141 (not c!302938)) b!1860143))

(declare-fun m!2283757 () Bool)

(assert (=> b!1860142 m!2283757))

(declare-fun m!2283759 () Bool)

(assert (=> b!1860143 m!2283759))

(declare-fun m!2283761 () Bool)

(assert (=> b!1860143 m!2283761))

(assert (=> b!1860143 m!2283759))

(assert (=> b!1860143 m!2283761))

(declare-fun m!2283763 () Bool)

(assert (=> b!1860143 m!2283763))

(assert (=> d!567598 d!567626))

(declare-fun b!1860145 () Bool)

(declare-fun e!1187946 () List!20710)

(declare-fun e!1187947 () List!20710)

(assert (=> b!1860145 (= e!1187946 e!1187947)))

(declare-fun c!302940 () Bool)

(assert (=> b!1860145 (= c!302940 (is-Leaf!10009 (c!302929 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252)))))))

(declare-fun d!567628 () Bool)

(declare-fun c!302939 () Bool)

(assert (=> d!567628 (= c!302939 (is-Empty!6827 (c!302929 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252)))))))

(assert (=> d!567628 (= (list!8384 (c!302929 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252)))) e!1187946)))

(declare-fun b!1860146 () Bool)

(assert (=> b!1860146 (= e!1187947 (list!8386 (xs!9703 (c!302929 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252))))))))

(declare-fun b!1860147 () Bool)

(assert (=> b!1860147 (= e!1187947 (++!5568 (list!8384 (left!16584 (c!302929 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252))))) (list!8384 (right!16914 (c!302929 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252)))))))))

(declare-fun b!1860144 () Bool)

(assert (=> b!1860144 (= e!1187946 Nil!20630)))

(assert (= (and d!567628 c!302939) b!1860144))

(assert (= (and d!567628 (not c!302939)) b!1860145))

(assert (= (and b!1860145 c!302940) b!1860146))

(assert (= (and b!1860145 (not c!302940)) b!1860147))

(declare-fun m!2283765 () Bool)

(assert (=> b!1860146 m!2283765))

(declare-fun m!2283767 () Bool)

(assert (=> b!1860147 m!2283767))

(declare-fun m!2283769 () Bool)

(assert (=> b!1860147 m!2283769))

(assert (=> b!1860147 m!2283767))

(assert (=> b!1860147 m!2283769))

(declare-fun m!2283771 () Bool)

(assert (=> b!1860147 m!2283771))

(assert (=> d!567600 d!567628))

(declare-fun d!567630 () Bool)

(declare-fun lt!717653 () List!20710)

(assert (=> d!567630 (= lt!717653 (list!8382 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252))))))

(assert (=> d!567630 (= lt!717653 (efficientList!256 (c!302929 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252))) (efficientList$default$2!87 (c!302929 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252))))))))

(assert (=> d!567630 (= (efficientList!254 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252))) lt!717653)))

(declare-fun bs!411243 () Bool)

(assert (= bs!411243 d!567630))

(assert (=> bs!411243 m!2283637))

(assert (=> bs!411243 m!2283641))

(declare-fun m!2283773 () Bool)

(assert (=> bs!411243 m!2283773))

(assert (=> bs!411243 m!2283773))

(declare-fun m!2283775 () Bool)

(assert (=> bs!411243 m!2283775))

(assert (=> d!567588 d!567630))

(declare-fun b!1860149 () Bool)

(declare-fun e!1187948 () List!20710)

(declare-fun e!1187949 () List!20710)

(assert (=> b!1860149 (= e!1187948 e!1187949)))

(declare-fun c!302942 () Bool)

(assert (=> b!1860149 (= c!302942 (is-Leaf!10009 (c!302929 x!373253)))))

(declare-fun d!567632 () Bool)

(declare-fun c!302941 () Bool)

(assert (=> d!567632 (= c!302941 (is-Empty!6827 (c!302929 x!373253)))))

(assert (=> d!567632 (= (list!8384 (c!302929 x!373253)) e!1187948)))

(declare-fun b!1860150 () Bool)

(assert (=> b!1860150 (= e!1187949 (list!8386 (xs!9703 (c!302929 x!373253))))))

(declare-fun b!1860151 () Bool)

(assert (=> b!1860151 (= e!1187949 (++!5568 (list!8384 (left!16584 (c!302929 x!373253))) (list!8384 (right!16914 (c!302929 x!373253)))))))

(declare-fun b!1860148 () Bool)

(assert (=> b!1860148 (= e!1187948 Nil!20630)))

(assert (= (and d!567632 c!302941) b!1860148))

(assert (= (and d!567632 (not c!302941)) b!1860149))

(assert (= (and b!1860149 c!302942) b!1860150))

(assert (= (and b!1860149 (not c!302942)) b!1860151))

(declare-fun m!2283777 () Bool)

(assert (=> b!1860150 m!2283777))

(declare-fun m!2283779 () Bool)

(assert (=> b!1860151 m!2283779))

(declare-fun m!2283781 () Bool)

(assert (=> b!1860151 m!2283781))

(assert (=> b!1860151 m!2283779))

(assert (=> b!1860151 m!2283781))

(declare-fun m!2283783 () Bool)

(assert (=> b!1860151 m!2283783))

(assert (=> d!567594 d!567632))

(push 1)

(assert (not b!1860143))

(assert (not b!1860139))

(assert (not b!1860151))

(assert (not b!1860142))

(assert (not b!1860138))

(assert (not b!1860050))

(assert (not b!1860061))

(assert (not b!1860063))

(assert (not d!567630))

(assert (not d!567620))

(assert (not b!1860060))

(assert (not bs!411120))

(assert (not b!1860146))

(assert (not b!1860150))

(assert (not b!1860051))

(assert (not d!567618))

(assert (not start!185846))

(assert (not b!1860147))

(assert (not b!1860062))

(assert (not d!567624))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!567642 () Bool)

(declare-fun c!302957 () Bool)

(assert (=> d!567642 (= c!302957 (is-Node!6827 (c!302929 x!373252)))))

(declare-fun e!1187966 () Bool)

(assert (=> d!567642 (= (inv!27124 (c!302929 x!373252)) e!1187966)))

(declare-fun b!1860182 () Bool)

(declare-fun inv!27128 (Conc!6827) Bool)

(assert (=> b!1860182 (= e!1187966 (inv!27128 (c!302929 x!373252)))))

(declare-fun b!1860183 () Bool)

(declare-fun e!1187967 () Bool)

(assert (=> b!1860183 (= e!1187966 e!1187967)))

(declare-fun res!833002 () Bool)

(assert (=> b!1860183 (= res!833002 (not (is-Leaf!10009 (c!302929 x!373252))))))

(assert (=> b!1860183 (=> res!833002 e!1187967)))

(declare-fun b!1860184 () Bool)

(declare-fun inv!27129 (Conc!6827) Bool)

(assert (=> b!1860184 (= e!1187967 (inv!27129 (c!302929 x!373252)))))

(assert (= (and d!567642 c!302957) b!1860182))

(assert (= (and d!567642 (not c!302957)) b!1860183))

(assert (= (and b!1860183 (not res!833002)) b!1860184))

(declare-fun m!2283827 () Bool)

(assert (=> b!1860182 m!2283827))

(declare-fun m!2283829 () Bool)

(assert (=> b!1860184 m!2283829))

(assert (=> b!1860060 d!567642))

(assert (=> b!1860061 d!567590))

(assert (=> b!1860061 d!567586))

(assert (=> d!567630 d!567600))

(declare-fun b!1860197 () Bool)

(declare-fun e!1187975 () List!20710)

(declare-fun lt!717673 () List!20710)

(assert (=> b!1860197 (= e!1187975 lt!717673)))

(declare-fun b!1860198 () Bool)

(declare-datatypes ((Unit!35249 0))(
  ( (Unit!35250) )
))
(declare-fun lt!717670 () Unit!35249)

(declare-fun lt!717671 () Unit!35249)

(assert (=> b!1860198 (= lt!717670 lt!717671)))

(declare-fun call!115678 () List!20710)

(declare-fun lt!717672 () List!20710)

(assert (=> b!1860198 (= (++!5568 call!115678 (efficientList$default$2!87 (c!302929 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252))))) (++!5568 lt!717673 (++!5568 lt!717672 (efficientList$default$2!87 (c!302929 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252)))))))))

(declare-fun lemmaConcatAssociativity!1099 (List!20710 List!20710 List!20710) Unit!35249)

(assert (=> b!1860198 (= lt!717671 (lemmaConcatAssociativity!1099 lt!717673 lt!717672 (efficientList$default$2!87 (c!302929 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252))))))))

(assert (=> b!1860198 (= lt!717672 (list!8384 (right!16914 (c!302929 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252))))))))

(assert (=> b!1860198 (= lt!717673 (list!8384 (left!16584 (c!302929 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252))))))))

(declare-fun e!1187976 () List!20710)

(assert (=> b!1860198 (= e!1187976 (efficientList!256 (left!16584 (c!302929 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252)))) (efficientList!256 (right!16914 (c!302929 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252)))) (efficientList$default$2!87 (c!302929 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252)))))))))

(declare-fun b!1860199 () Bool)

(declare-fun efficientList!258 (IArray!13659) List!20710)

(assert (=> b!1860199 (= e!1187975 (efficientList!258 (xs!9703 (c!302929 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252))))))))

(declare-fun b!1860200 () Bool)

(declare-fun e!1187974 () List!20710)

(assert (=> b!1860200 (= e!1187974 (efficientList$default$2!87 (c!302929 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252)))))))

(declare-fun b!1860201 () Bool)

(assert (=> b!1860201 (= e!1187974 e!1187976)))

(declare-fun c!302964 () Bool)

(assert (=> b!1860201 (= c!302964 (is-Leaf!10009 (c!302929 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252)))))))

(declare-fun d!567652 () Bool)

(declare-fun lt!717674 () List!20710)

(assert (=> d!567652 (= lt!717674 (++!5568 (list!8384 (c!302929 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252)))) (efficientList$default$2!87 (c!302929 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252))))))))

(assert (=> d!567652 (= lt!717674 e!1187974)))

(declare-fun c!302965 () Bool)

(assert (=> d!567652 (= c!302965 (is-Empty!6827 (c!302929 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252)))))))

(assert (=> d!567652 (= (efficientList!256 (c!302929 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252))) (efficientList$default$2!87 (c!302929 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252))))) lt!717674)))

(declare-fun bm!115673 () Bool)

(declare-fun c!302966 () Bool)

(assert (=> bm!115673 (= c!302966 c!302964)))

(assert (=> bm!115673 (= call!115678 (++!5568 e!1187975 (ite c!302964 (efficientList$default$2!87 (c!302929 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252)))) lt!717672)))))

(declare-fun b!1860202 () Bool)

(assert (=> b!1860202 (= e!1187976 call!115678)))

(assert (= (and d!567652 c!302965) b!1860200))

(assert (= (and d!567652 (not c!302965)) b!1860201))

(assert (= (and b!1860201 c!302964) b!1860202))

(assert (= (and b!1860201 (not c!302964)) b!1860198))

(assert (= (or b!1860202 b!1860198) bm!115673))

(assert (= (and bm!115673 c!302966) b!1860199))

(assert (= (and bm!115673 (not c!302966)) b!1860197))

(assert (=> b!1860198 m!2283773))

(declare-fun m!2283837 () Bool)

(assert (=> b!1860198 m!2283837))

(assert (=> b!1860198 m!2283773))

(declare-fun m!2283839 () Bool)

(assert (=> b!1860198 m!2283839))

(assert (=> b!1860198 m!2283767))

(declare-fun m!2283841 () Bool)

(assert (=> b!1860198 m!2283841))

(declare-fun m!2283843 () Bool)

(assert (=> b!1860198 m!2283843))

(assert (=> b!1860198 m!2283837))

(declare-fun m!2283845 () Bool)

(assert (=> b!1860198 m!2283845))

(assert (=> b!1860198 m!2283773))

(assert (=> b!1860198 m!2283841))

(assert (=> b!1860198 m!2283773))

(declare-fun m!2283847 () Bool)

(assert (=> b!1860198 m!2283847))

(assert (=> b!1860198 m!2283769))

(declare-fun m!2283849 () Bool)

(assert (=> b!1860199 m!2283849))

(assert (=> d!567652 m!2283715))

(assert (=> d!567652 m!2283715))

(assert (=> d!567652 m!2283773))

(declare-fun m!2283851 () Bool)

(assert (=> d!567652 m!2283851))

(declare-fun m!2283853 () Bool)

(assert (=> bm!115673 m!2283853))

(assert (=> d!567630 d!567652))

(declare-fun d!567654 () Bool)

(assert (=> d!567654 (= (efficientList$default$2!87 (c!302929 (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252)))) Nil!20630)))

(assert (=> d!567630 d!567654))

(assert (=> bs!411120 d!567600))

(declare-fun d!567656 () Bool)

(declare-fun c!302970 () Bool)

(assert (=> d!567656 (= c!302970 (is-DelimiterValue!7622 (toValue!35 thiss!5194 x!373252)))))

(declare-fun e!1187979 () BalanceConc!13584)

(assert (=> d!567656 (= (toCharacters!28 thiss!5194 (toValue!35 thiss!5194 x!373252)) e!1187979)))

(declare-fun b!1860207 () Bool)

(declare-fun seqFromList!2625 (List!20710) BalanceConc!13584)

(assert (=> b!1860207 (= e!1187979 (seqFromList!2625 (del!3871 (toValue!35 thiss!5194 x!373252))))))

(declare-fun b!1860208 () Bool)

(assert (=> b!1860208 (= e!1187979 (BalanceConc!13585 Empty!6827))))

(assert (= (and d!567656 c!302970) b!1860207))

(assert (= (and d!567656 (not c!302970)) b!1860208))

(declare-fun m!2283855 () Bool)

(assert (=> b!1860207 m!2283855))

(assert (=> bs!411120 d!567656))

(assert (=> bs!411120 d!567596))

(assert (=> bs!411120 d!567592))

(assert (=> d!567624 d!567598))

(declare-fun b!1860209 () Bool)

(declare-fun e!1187981 () List!20710)

(declare-fun lt!717678 () List!20710)

(assert (=> b!1860209 (= e!1187981 lt!717678)))

(declare-fun b!1860210 () Bool)

(declare-fun lt!717675 () Unit!35249)

(declare-fun lt!717676 () Unit!35249)

(assert (=> b!1860210 (= lt!717675 lt!717676)))

(declare-fun call!115679 () List!20710)

(declare-fun lt!717677 () List!20710)

(assert (=> b!1860210 (= (++!5568 call!115679 (efficientList$default$2!87 (c!302929 x!373254))) (++!5568 lt!717678 (++!5568 lt!717677 (efficientList$default$2!87 (c!302929 x!373254)))))))

(assert (=> b!1860210 (= lt!717676 (lemmaConcatAssociativity!1099 lt!717678 lt!717677 (efficientList$default$2!87 (c!302929 x!373254))))))

(assert (=> b!1860210 (= lt!717677 (list!8384 (right!16914 (c!302929 x!373254))))))

(assert (=> b!1860210 (= lt!717678 (list!8384 (left!16584 (c!302929 x!373254))))))

(declare-fun e!1187982 () List!20710)

(assert (=> b!1860210 (= e!1187982 (efficientList!256 (left!16584 (c!302929 x!373254)) (efficientList!256 (right!16914 (c!302929 x!373254)) (efficientList$default$2!87 (c!302929 x!373254)))))))

(declare-fun b!1860211 () Bool)

(assert (=> b!1860211 (= e!1187981 (efficientList!258 (xs!9703 (c!302929 x!373254))))))

(declare-fun b!1860212 () Bool)

(declare-fun e!1187980 () List!20710)

(assert (=> b!1860212 (= e!1187980 (efficientList$default$2!87 (c!302929 x!373254)))))

(declare-fun b!1860213 () Bool)

(assert (=> b!1860213 (= e!1187980 e!1187982)))

(declare-fun c!302971 () Bool)

(assert (=> b!1860213 (= c!302971 (is-Leaf!10009 (c!302929 x!373254)))))

(declare-fun d!567658 () Bool)

(declare-fun lt!717679 () List!20710)

(assert (=> d!567658 (= lt!717679 (++!5568 (list!8384 (c!302929 x!373254)) (efficientList$default$2!87 (c!302929 x!373254))))))

(assert (=> d!567658 (= lt!717679 e!1187980)))

(declare-fun c!302972 () Bool)

(assert (=> d!567658 (= c!302972 (is-Empty!6827 (c!302929 x!373254)))))

(assert (=> d!567658 (= (efficientList!256 (c!302929 x!373254) (efficientList$default$2!87 (c!302929 x!373254))) lt!717679)))

(declare-fun bm!115674 () Bool)

(declare-fun c!302973 () Bool)

(assert (=> bm!115674 (= c!302973 c!302971)))

(assert (=> bm!115674 (= call!115679 (++!5568 e!1187981 (ite c!302971 (efficientList$default$2!87 (c!302929 x!373254)) lt!717677)))))

(declare-fun b!1860214 () Bool)

(assert (=> b!1860214 (= e!1187982 call!115679)))

(assert (= (and d!567658 c!302972) b!1860212))

(assert (= (and d!567658 (not c!302972)) b!1860213))

(assert (= (and b!1860213 c!302971) b!1860214))

(assert (= (and b!1860213 (not c!302971)) b!1860210))

(assert (= (or b!1860214 b!1860210) bm!115674))

(assert (= (and bm!115674 c!302973) b!1860211))

(assert (= (and bm!115674 (not c!302973)) b!1860209))

(assert (=> b!1860210 m!2283753))

(declare-fun m!2283857 () Bool)

(assert (=> b!1860210 m!2283857))

(assert (=> b!1860210 m!2283753))

(declare-fun m!2283859 () Bool)

(assert (=> b!1860210 m!2283859))

(assert (=> b!1860210 m!2283759))

(declare-fun m!2283861 () Bool)

(assert (=> b!1860210 m!2283861))

(declare-fun m!2283863 () Bool)

(assert (=> b!1860210 m!2283863))

(assert (=> b!1860210 m!2283857))

(declare-fun m!2283865 () Bool)

(assert (=> b!1860210 m!2283865))

(assert (=> b!1860210 m!2283753))

(assert (=> b!1860210 m!2283861))

(assert (=> b!1860210 m!2283753))

(declare-fun m!2283867 () Bool)

(assert (=> b!1860210 m!2283867))

(assert (=> b!1860210 m!2283761))

(declare-fun m!2283869 () Bool)

(assert (=> b!1860211 m!2283869))

(assert (=> d!567658 m!2283713))

(assert (=> d!567658 m!2283713))

(assert (=> d!567658 m!2283753))

(declare-fun m!2283871 () Bool)

(assert (=> d!567658 m!2283871))

(declare-fun m!2283873 () Bool)

(assert (=> bm!115674 m!2283873))

(assert (=> d!567624 d!567658))

(declare-fun d!567660 () Bool)

(assert (=> d!567660 (= (efficientList$default$2!87 (c!302929 x!373254)) Nil!20630)))

(assert (=> d!567624 d!567660))

(assert (=> d!567620 d!567592))

(declare-fun b!1860215 () Bool)

(declare-fun e!1187984 () List!20710)

(declare-fun lt!717683 () List!20710)

(assert (=> b!1860215 (= e!1187984 lt!717683)))

(declare-fun b!1860216 () Bool)

(declare-fun lt!717680 () Unit!35249)

(declare-fun lt!717681 () Unit!35249)

(assert (=> b!1860216 (= lt!717680 lt!717681)))

(declare-fun call!115680 () List!20710)

(declare-fun lt!717682 () List!20710)

(assert (=> b!1860216 (= (++!5568 call!115680 (efficientList$default$2!87 (c!302929 x!373252))) (++!5568 lt!717683 (++!5568 lt!717682 (efficientList$default$2!87 (c!302929 x!373252)))))))

(assert (=> b!1860216 (= lt!717681 (lemmaConcatAssociativity!1099 lt!717683 lt!717682 (efficientList$default$2!87 (c!302929 x!373252))))))

(assert (=> b!1860216 (= lt!717682 (list!8384 (right!16914 (c!302929 x!373252))))))

(assert (=> b!1860216 (= lt!717683 (list!8384 (left!16584 (c!302929 x!373252))))))

(declare-fun e!1187985 () List!20710)

(assert (=> b!1860216 (= e!1187985 (efficientList!256 (left!16584 (c!302929 x!373252)) (efficientList!256 (right!16914 (c!302929 x!373252)) (efficientList$default$2!87 (c!302929 x!373252)))))))

(declare-fun b!1860217 () Bool)

(assert (=> b!1860217 (= e!1187984 (efficientList!258 (xs!9703 (c!302929 x!373252))))))

(declare-fun b!1860218 () Bool)

(declare-fun e!1187983 () List!20710)

(assert (=> b!1860218 (= e!1187983 (efficientList$default$2!87 (c!302929 x!373252)))))

(declare-fun b!1860219 () Bool)

(assert (=> b!1860219 (= e!1187983 e!1187985)))

(declare-fun c!302974 () Bool)

(assert (=> b!1860219 (= c!302974 (is-Leaf!10009 (c!302929 x!373252)))))

(declare-fun d!567662 () Bool)

(declare-fun lt!717684 () List!20710)

(assert (=> d!567662 (= lt!717684 (++!5568 (list!8384 (c!302929 x!373252)) (efficientList$default$2!87 (c!302929 x!373252))))))

(assert (=> d!567662 (= lt!717684 e!1187983)))

(declare-fun c!302975 () Bool)

(assert (=> d!567662 (= c!302975 (is-Empty!6827 (c!302929 x!373252)))))

(assert (=> d!567662 (= (efficientList!256 (c!302929 x!373252) (efficientList$default$2!87 (c!302929 x!373252))) lt!717684)))

(declare-fun bm!115675 () Bool)

(declare-fun c!302976 () Bool)

(assert (=> bm!115675 (= c!302976 c!302974)))

(assert (=> bm!115675 (= call!115680 (++!5568 e!1187984 (ite c!302974 (efficientList$default$2!87 (c!302929 x!373252)) lt!717682)))))

(declare-fun b!1860220 () Bool)

(assert (=> b!1860220 (= e!1187985 call!115680)))

(assert (= (and d!567662 c!302975) b!1860218))

(assert (= (and d!567662 (not c!302975)) b!1860219))

(assert (= (and b!1860219 c!302974) b!1860220))

(assert (= (and b!1860219 (not c!302974)) b!1860216))

(assert (= (or b!1860220 b!1860216) bm!115675))

(assert (= (and bm!115675 c!302976) b!1860217))

(assert (= (and bm!115675 (not c!302976)) b!1860215))

(assert (=> b!1860216 m!2283741))

(declare-fun m!2283875 () Bool)

(assert (=> b!1860216 m!2283875))

(assert (=> b!1860216 m!2283741))

(declare-fun m!2283877 () Bool)

(assert (=> b!1860216 m!2283877))

(assert (=> b!1860216 m!2283747))

(declare-fun m!2283879 () Bool)

(assert (=> b!1860216 m!2283879))

(declare-fun m!2283881 () Bool)

(assert (=> b!1860216 m!2283881))

(assert (=> b!1860216 m!2283875))

(declare-fun m!2283883 () Bool)

(assert (=> b!1860216 m!2283883))

(assert (=> b!1860216 m!2283741))

(assert (=> b!1860216 m!2283879))

(assert (=> b!1860216 m!2283741))

(declare-fun m!2283885 () Bool)

(assert (=> b!1860216 m!2283885))

(assert (=> b!1860216 m!2283749))

(declare-fun m!2283887 () Bool)

(assert (=> b!1860217 m!2283887))

(assert (=> d!567662 m!2283707))

(assert (=> d!567662 m!2283707))

(assert (=> d!567662 m!2283741))

(declare-fun m!2283889 () Bool)

(assert (=> d!567662 m!2283889))

(declare-fun m!2283891 () Bool)

(assert (=> bm!115675 m!2283891))

(assert (=> d!567620 d!567662))

(declare-fun d!567664 () Bool)

(assert (=> d!567664 (= (efficientList$default$2!87 (c!302929 x!373252)) Nil!20630)))

(assert (=> d!567620 d!567664))

(assert (=> d!567618 d!567594))

(declare-fun b!1860221 () Bool)

(declare-fun e!1187987 () List!20710)

(declare-fun lt!717688 () List!20710)

(assert (=> b!1860221 (= e!1187987 lt!717688)))

(declare-fun b!1860222 () Bool)

(declare-fun lt!717685 () Unit!35249)

(declare-fun lt!717686 () Unit!35249)

(assert (=> b!1860222 (= lt!717685 lt!717686)))

(declare-fun lt!717687 () List!20710)

(declare-fun call!115681 () List!20710)

(assert (=> b!1860222 (= (++!5568 call!115681 (efficientList$default$2!87 (c!302929 x!373253))) (++!5568 lt!717688 (++!5568 lt!717687 (efficientList$default$2!87 (c!302929 x!373253)))))))

(assert (=> b!1860222 (= lt!717686 (lemmaConcatAssociativity!1099 lt!717688 lt!717687 (efficientList$default$2!87 (c!302929 x!373253))))))

(assert (=> b!1860222 (= lt!717687 (list!8384 (right!16914 (c!302929 x!373253))))))

(assert (=> b!1860222 (= lt!717688 (list!8384 (left!16584 (c!302929 x!373253))))))

(declare-fun e!1187988 () List!20710)

(assert (=> b!1860222 (= e!1187988 (efficientList!256 (left!16584 (c!302929 x!373253)) (efficientList!256 (right!16914 (c!302929 x!373253)) (efficientList$default$2!87 (c!302929 x!373253)))))))

(declare-fun b!1860223 () Bool)

(assert (=> b!1860223 (= e!1187987 (efficientList!258 (xs!9703 (c!302929 x!373253))))))

(declare-fun b!1860224 () Bool)

(declare-fun e!1187986 () List!20710)

(assert (=> b!1860224 (= e!1187986 (efficientList$default$2!87 (c!302929 x!373253)))))

(declare-fun b!1860225 () Bool)

(assert (=> b!1860225 (= e!1187986 e!1187988)))

(declare-fun c!302977 () Bool)

(assert (=> b!1860225 (= c!302977 (is-Leaf!10009 (c!302929 x!373253)))))

(declare-fun d!567666 () Bool)

(declare-fun lt!717689 () List!20710)

(assert (=> d!567666 (= lt!717689 (++!5568 (list!8384 (c!302929 x!373253)) (efficientList$default$2!87 (c!302929 x!373253))))))

(assert (=> d!567666 (= lt!717689 e!1187986)))

(declare-fun c!302978 () Bool)

(assert (=> d!567666 (= c!302978 (is-Empty!6827 (c!302929 x!373253)))))

(assert (=> d!567666 (= (efficientList!256 (c!302929 x!373253) (efficientList$default$2!87 (c!302929 x!373253))) lt!717689)))

(declare-fun bm!115676 () Bool)

(declare-fun c!302979 () Bool)

(assert (=> bm!115676 (= c!302979 c!302977)))

(assert (=> bm!115676 (= call!115681 (++!5568 e!1187987 (ite c!302977 (efficientList$default$2!87 (c!302929 x!373253)) lt!717687)))))

(declare-fun b!1860226 () Bool)

(assert (=> b!1860226 (= e!1187988 call!115681)))

(assert (= (and d!567666 c!302978) b!1860224))

(assert (= (and d!567666 (not c!302978)) b!1860225))

(assert (= (and b!1860225 c!302977) b!1860226))

(assert (= (and b!1860225 (not c!302977)) b!1860222))

(assert (= (or b!1860226 b!1860222) bm!115676))

(assert (= (and bm!115676 c!302979) b!1860223))

(assert (= (and bm!115676 (not c!302979)) b!1860221))

(assert (=> b!1860222 m!2283737))

(declare-fun m!2283893 () Bool)

(assert (=> b!1860222 m!2283893))

(assert (=> b!1860222 m!2283737))

(declare-fun m!2283895 () Bool)

(assert (=> b!1860222 m!2283895))

(assert (=> b!1860222 m!2283779))

(declare-fun m!2283897 () Bool)

(assert (=> b!1860222 m!2283897))

(declare-fun m!2283899 () Bool)

(assert (=> b!1860222 m!2283899))

(assert (=> b!1860222 m!2283893))

(declare-fun m!2283901 () Bool)

(assert (=> b!1860222 m!2283901))

(assert (=> b!1860222 m!2283737))

(assert (=> b!1860222 m!2283897))

(assert (=> b!1860222 m!2283737))

(declare-fun m!2283903 () Bool)

(assert (=> b!1860222 m!2283903))

(assert (=> b!1860222 m!2283781))

(declare-fun m!2283905 () Bool)

(assert (=> b!1860223 m!2283905))

(assert (=> d!567666 m!2283709))

(assert (=> d!567666 m!2283709))

(assert (=> d!567666 m!2283737))

(declare-fun m!2283907 () Bool)

(assert (=> d!567666 m!2283907))

(declare-fun m!2283909 () Bool)

(assert (=> bm!115676 m!2283909))

(assert (=> d!567618 d!567666))

(declare-fun d!567668 () Bool)

(assert (=> d!567668 (= (efficientList$default$2!87 (c!302929 x!373253)) Nil!20630)))

(assert (=> d!567618 d!567668))

(declare-fun d!567670 () Bool)

(declare-fun choose!11703 (Int) Bool)

(assert (=> d!567670 (= (Forall2!600 lambda!73560) (choose!11703 lambda!73560))))

(declare-fun bs!411248 () Bool)

(assert (= bs!411248 d!567670))

(declare-fun m!2283911 () Bool)

(assert (=> bs!411248 m!2283911))

(assert (=> b!1860051 d!567670))

(assert (=> b!1860051 d!567594))

(declare-fun d!567672 () Bool)

(declare-fun isBalanced!2131 (Conc!6827) Bool)

(assert (=> d!567672 (= (inv!27125 x!373254) (isBalanced!2131 (c!302929 x!373254)))))

(declare-fun bs!411249 () Bool)

(assert (= bs!411249 d!567672))

(declare-fun m!2283913 () Bool)

(assert (=> bs!411249 m!2283913))

(assert (=> b!1860051 d!567672))

(assert (=> b!1860051 d!567598))

(declare-fun d!567674 () Bool)

(assert (=> d!567674 (= (inv!27125 x!373253) (isBalanced!2131 (c!302929 x!373253)))))

(declare-fun bs!411250 () Bool)

(assert (= bs!411250 d!567674))

(declare-fun m!2283915 () Bool)

(assert (=> bs!411250 m!2283915))

(assert (=> b!1860051 d!567674))

(declare-fun bs!411251 () Bool)

(declare-fun d!567676 () Bool)

(assert (= bs!411251 (and d!567676 start!185846)))

(declare-fun lambda!73585 () Int)

(assert (=> bs!411251 (not (= lambda!73585 lambda!73557))))

(assert (=> d!567676 true))

(declare-fun order!13267 () Int)

(declare-fun order!13265 () Int)

(declare-fun dynLambda!10210 (Int Int) Int)

(declare-fun dynLambda!10211 (Int Int) Int)

(assert (=> d!567676 (< (dynLambda!10210 order!13265 lambda!73558) (dynLambda!10211 order!13267 lambda!73585))))

(assert (=> d!567676 true))

(declare-fun order!13269 () Int)

(declare-fun dynLambda!10212 (Int Int) Int)

(assert (=> d!567676 (< (dynLambda!10212 order!13269 lambda!73559) (dynLambda!10211 order!13267 lambda!73585))))

(assert (=> d!567676 (= (semiInverseModEq!1503 lambda!73558 lambda!73559) (Forall!975 lambda!73585))))

(declare-fun bs!411252 () Bool)

(assert (= bs!411252 d!567676))

(declare-fun m!2283917 () Bool)

(assert (=> bs!411252 m!2283917))

(assert (=> b!1860050 d!567676))

(declare-fun d!567678 () Bool)

(declare-fun choose!11704 (Int) Bool)

(assert (=> d!567678 (= (Forall!975 lambda!73557) (choose!11704 lambda!73557))))

(declare-fun bs!411253 () Bool)

(assert (= bs!411253 d!567678))

(declare-fun m!2283919 () Bool)

(assert (=> bs!411253 m!2283919))

(assert (=> b!1860050 d!567678))

(declare-fun d!567680 () Bool)

(declare-fun c!302980 () Bool)

(assert (=> d!567680 (= c!302980 (is-Node!6827 (c!302929 x!373254)))))

(declare-fun e!1187989 () Bool)

(assert (=> d!567680 (= (inv!27124 (c!302929 x!373254)) e!1187989)))

(declare-fun b!1860231 () Bool)

(assert (=> b!1860231 (= e!1187989 (inv!27128 (c!302929 x!373254)))))

(declare-fun b!1860232 () Bool)

(declare-fun e!1187990 () Bool)

(assert (=> b!1860232 (= e!1187989 e!1187990)))

(declare-fun res!833003 () Bool)

(assert (=> b!1860232 (= res!833003 (not (is-Leaf!10009 (c!302929 x!373254))))))

(assert (=> b!1860232 (=> res!833003 e!1187990)))

(declare-fun b!1860233 () Bool)

(assert (=> b!1860233 (= e!1187990 (inv!27129 (c!302929 x!373254)))))

(assert (= (and d!567680 c!302980) b!1860231))

(assert (= (and d!567680 (not c!302980)) b!1860232))

(assert (= (and b!1860232 (not res!833003)) b!1860233))

(declare-fun m!2283921 () Bool)

(assert (=> b!1860231 m!2283921))

(declare-fun m!2283923 () Bool)

(assert (=> b!1860233 m!2283923))

(assert (=> b!1860063 d!567680))

(declare-fun d!567682 () Bool)

(declare-fun c!302981 () Bool)

(assert (=> d!567682 (= c!302981 (is-Node!6827 (c!302929 x!373253)))))

(declare-fun e!1187991 () Bool)

(assert (=> d!567682 (= (inv!27124 (c!302929 x!373253)) e!1187991)))

(declare-fun b!1860234 () Bool)

(assert (=> b!1860234 (= e!1187991 (inv!27128 (c!302929 x!373253)))))

(declare-fun b!1860235 () Bool)

(declare-fun e!1187992 () Bool)

(assert (=> b!1860235 (= e!1187991 e!1187992)))

(declare-fun res!833004 () Bool)

(assert (=> b!1860235 (= res!833004 (not (is-Leaf!10009 (c!302929 x!373253))))))

(assert (=> b!1860235 (=> res!833004 e!1187992)))

(declare-fun b!1860236 () Bool)

(assert (=> b!1860236 (= e!1187992 (inv!27129 (c!302929 x!373253)))))

(assert (= (and d!567682 c!302981) b!1860234))

(assert (= (and d!567682 (not c!302981)) b!1860235))

(assert (= (and b!1860235 (not res!833004)) b!1860236))

(declare-fun m!2283925 () Bool)

(assert (=> b!1860234 m!2283925))

(declare-fun m!2283927 () Bool)

(assert (=> b!1860236 m!2283927))

(assert (=> b!1860062 d!567682))

(assert (=> start!185846 d!567600))

(declare-fun d!567684 () Bool)

(assert (=> d!567684 (= (inv!27125 x!373252) (isBalanced!2131 (c!302929 x!373252)))))

(declare-fun bs!411254 () Bool)

(assert (= bs!411254 d!567684))

(declare-fun m!2283929 () Bool)

(assert (=> bs!411254 m!2283929))

(assert (=> start!185846 d!567684))

(assert (=> start!185846 d!567596))

(assert (=> start!185846 d!567656))

(assert (=> start!185846 d!567592))

(assert (=> start!185846 d!567678))

(declare-fun tp!530120 () Bool)

(declare-fun b!1860243 () Bool)

(declare-fun e!1187997 () Bool)

(declare-fun tp!530119 () Bool)

(assert (=> b!1860243 (= e!1187997 (and (inv!27124 (left!16584 (c!302929 x!373252))) tp!530119 (inv!27124 (right!16914 (c!302929 x!373252))) tp!530120))))

(declare-fun b!1860244 () Bool)

(declare-fun inv!27130 (IArray!13659) Bool)

(assert (=> b!1860244 (= e!1187997 (inv!27130 (xs!9703 (c!302929 x!373252))))))

(assert (=> b!1860060 (= tp!530103 (and (inv!27124 (c!302929 x!373252)) e!1187997))))

(assert (= (and b!1860060 (is-Node!6827 (c!302929 x!373252))) b!1860243))

(assert (= (and b!1860060 (is-Leaf!10009 (c!302929 x!373252))) b!1860244))

(declare-fun m!2283931 () Bool)

(assert (=> b!1860243 m!2283931))

(declare-fun m!2283933 () Bool)

(assert (=> b!1860243 m!2283933))

(declare-fun m!2283935 () Bool)

(assert (=> b!1860244 m!2283935))

(assert (=> b!1860060 m!2283633))

(declare-fun e!1187999 () Bool)

(declare-fun tp!530121 () Bool)

(declare-fun tp!530122 () Bool)

(declare-fun b!1860245 () Bool)

(assert (=> b!1860245 (= e!1187999 (and (inv!27124 (left!16584 (c!302929 x!373254))) tp!530121 (inv!27124 (right!16914 (c!302929 x!373254))) tp!530122))))

(declare-fun b!1860246 () Bool)

(assert (=> b!1860246 (= e!1187999 (inv!27130 (xs!9703 (c!302929 x!373254))))))

(assert (=> b!1860063 (= tp!530105 (and (inv!27124 (c!302929 x!373254)) e!1187999))))

(assert (= (and b!1860063 (is-Node!6827 (c!302929 x!373254))) b!1860245))

(assert (= (and b!1860063 (is-Leaf!10009 (c!302929 x!373254))) b!1860246))

(declare-fun m!2283937 () Bool)

(assert (=> b!1860245 m!2283937))

(declare-fun m!2283939 () Bool)

(assert (=> b!1860245 m!2283939))

(declare-fun m!2283941 () Bool)

(assert (=> b!1860246 m!2283941))

(assert (=> b!1860063 m!2283659))

(declare-fun tp!530123 () Bool)

(declare-fun e!1188001 () Bool)

(declare-fun b!1860247 () Bool)

(declare-fun tp!530124 () Bool)

(assert (=> b!1860247 (= e!1188001 (and (inv!27124 (left!16584 (c!302929 x!373253))) tp!530123 (inv!27124 (right!16914 (c!302929 x!373253))) tp!530124))))

(declare-fun b!1860248 () Bool)

(assert (=> b!1860248 (= e!1188001 (inv!27130 (xs!9703 (c!302929 x!373253))))))

(assert (=> b!1860062 (= tp!530104 (and (inv!27124 (c!302929 x!373253)) e!1188001))))

(assert (= (and b!1860062 (is-Node!6827 (c!302929 x!373253))) b!1860247))

(assert (= (and b!1860062 (is-Leaf!10009 (c!302929 x!373253))) b!1860248))

(declare-fun m!2283943 () Bool)

(assert (=> b!1860247 m!2283943))

(declare-fun m!2283945 () Bool)

(assert (=> b!1860247 m!2283945))

(declare-fun m!2283947 () Bool)

(assert (=> b!1860248 m!2283947))

(assert (=> b!1860062 m!2283657))

(push 1)

(assert (not b!1860216))

(assert (not bm!115676))

(assert (not d!567684))

(assert (not d!567678))

(assert (not b!1860233))

(assert (not bm!115675))

(assert (not d!567674))

(assert (not b!1860062))

(assert (not b!1860184))

(assert (not b!1860210))

(assert (not b!1860063))

(assert (not d!567676))

(assert (not bm!115674))

(assert (not d!567652))

(assert (not b!1860247))

(assert (not b!1860143))

(assert (not b!1860217))

(assert (not d!567670))

(assert (not bm!115673))

(assert (not d!567658))

(assert (not b!1860246))

(assert (not b!1860223))

(assert (not b!1860236))

(assert (not b!1860207))

(assert (not b!1860244))

(assert (not b!1860243))

(assert (not b!1860139))

(assert (not b!1860231))

(assert (not b!1860211))

(assert (not b!1860060))

(assert (not b!1860146))

(assert (not d!567662))

(assert (not d!567672))

(assert (not b!1860151))

(assert (not b!1860222))

(assert (not b!1860150))

(assert (not b!1860142))

(assert (not b!1860199))

(assert (not b!1860138))

(assert (not b!1860245))

(assert (not b!1860248))

(assert (not b!1860147))

(assert (not b!1860182))

(assert (not d!567666))

(assert (not b!1860234))

(assert (not b!1860198))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

