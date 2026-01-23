; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!524956 () Bool)

(assert start!524956)

(declare-fun b!4975628 () Bool)

(declare-fun b_free!132879 () Bool)

(declare-fun b_next!133669 () Bool)

(assert (=> b!4975628 (= b_free!132879 (not b_next!133669))))

(declare-fun tp!1395020 () Bool)

(declare-fun b_and!349283 () Bool)

(assert (=> b!4975628 (= tp!1395020 b_and!349283)))

(declare-fun b_free!132881 () Bool)

(declare-fun b_next!133671 () Bool)

(assert (=> b!4975628 (= b_free!132881 (not b_next!133671))))

(declare-fun tp!1395016 () Bool)

(declare-fun b_and!349285 () Bool)

(assert (=> b!4975628 (= tp!1395016 b_and!349285)))

(declare-fun b!4975621 () Bool)

(declare-fun e!3109574 () Bool)

(declare-datatypes ((C!27518 0))(
  ( (C!27519 (val!23125 Int)) )
))
(declare-datatypes ((List!57594 0))(
  ( (Nil!57470) (Cons!57470 (h!63918 C!27518) (t!369594 List!57594)) )
))
(declare-datatypes ((IArray!30367 0))(
  ( (IArray!30368 (innerList!15241 List!57594)) )
))
(declare-datatypes ((Conc!15153 0))(
  ( (Node!15153 (left!41928 Conc!15153) (right!42258 Conc!15153) (csize!30536 Int) (cheight!15364 Int)) (Leaf!25179 (xs!18479 IArray!30367) (csize!30537 Int)) (Empty!15153) )
))
(declare-datatypes ((BalanceConc!29736 0))(
  ( (BalanceConc!29737 (c!849105 Conc!15153)) )
))
(declare-fun totalInput!464 () BalanceConc!29736)

(declare-fun tp!1395017 () Bool)

(declare-fun inv!75134 (Conc!15153) Bool)

(assert (=> b!4975621 (= e!3109574 (and (inv!75134 (c!849105 totalInput!464)) tp!1395017))))

(declare-fun b!4975622 () Bool)

(declare-fun e!3109578 () Bool)

(declare-fun e!3109577 () Bool)

(assert (=> b!4975622 (= e!3109578 e!3109577)))

(declare-fun res!2123876 () Bool)

(assert (=> b!4975622 (=> (not res!2123876) (not e!3109577))))

(declare-fun lt!2054992 () List!57594)

(declare-fun isSuffix!1200 (List!57594 List!57594) Bool)

(declare-fun list!18388 (BalanceConc!29736) List!57594)

(assert (=> b!4975622 (= res!2123876 (isSuffix!1200 lt!2054992 (list!18388 totalInput!464)))))

(declare-fun input!1342 () BalanceConc!29736)

(assert (=> b!4975622 (= lt!2054992 (list!18388 input!1342))))

(declare-fun b!4975623 () Bool)

(declare-fun e!3109573 () Bool)

(declare-fun e!3109572 () Bool)

(declare-fun tp!1395019 () Bool)

(assert (=> b!4975623 (= e!3109573 (and e!3109572 tp!1395019))))

(declare-fun res!2123875 () Bool)

(assert (=> start!524956 (=> (not res!2123875) (not e!3109578))))

(declare-datatypes ((LexerInterface!7993 0))(
  ( (LexerInterfaceExt!7990 (__x!34715 Int)) (Lexer!7991) )
))
(declare-fun thiss!15247 () LexerInterface!7993)

(assert (=> start!524956 (= res!2123875 (is-Lexer!7991 thiss!15247))))

(assert (=> start!524956 e!3109578))

(assert (=> start!524956 true))

(assert (=> start!524956 e!3109573))

(declare-fun e!3109579 () Bool)

(declare-fun inv!75135 (BalanceConc!29736) Bool)

(assert (=> start!524956 (and (inv!75135 input!1342) e!3109579)))

(assert (=> start!524956 (and (inv!75135 totalInput!464) e!3109574)))

(declare-fun b!4975624 () Bool)

(declare-fun res!2123877 () Bool)

(assert (=> b!4975624 (=> (not res!2123877) (not e!3109578))))

(declare-datatypes ((List!57595 0))(
  ( (Nil!57471) (Cons!57471 (h!63919 (_ BitVec 16)) (t!369595 List!57595)) )
))
(declare-datatypes ((TokenValue!8711 0))(
  ( (FloatLiteralValue!17422 (text!61422 List!57595)) (TokenValueExt!8710 (__x!34716 Int)) (Broken!43555 (value!268844 List!57595)) (Object!8834) (End!8711) (Def!8711) (Underscore!8711) (Match!8711) (Else!8711) (Error!8711) (Case!8711) (If!8711) (Extends!8711) (Abstract!8711) (Class!8711) (Val!8711) (DelimiterValue!17422 (del!8771 List!57595)) (KeywordValue!8717 (value!268845 List!57595)) (CommentValue!17422 (value!268846 List!57595)) (WhitespaceValue!17422 (value!268847 List!57595)) (IndentationValue!8711 (value!268848 List!57595)) (String!65430) (Int32!8711) (Broken!43556 (value!268849 List!57595)) (Boolean!8712) (Unit!148466) (OperatorValue!8714 (op!8771 List!57595)) (IdentifierValue!17422 (value!268850 List!57595)) (IdentifierValue!17423 (value!268851 List!57595)) (WhitespaceValue!17423 (value!268852 List!57595)) (True!17422) (False!17422) (Broken!43557 (value!268853 List!57595)) (Broken!43558 (value!268854 List!57595)) (True!17423) (RightBrace!8711) (RightBracket!8711) (Colon!8711) (Null!8711) (Comma!8711) (LeftBracket!8711) (False!17423) (LeftBrace!8711) (ImaginaryLiteralValue!8711 (text!61423 List!57595)) (StringLiteralValue!26133 (value!268855 List!57595)) (EOFValue!8711 (value!268856 List!57595)) (IdentValue!8711 (value!268857 List!57595)) (DelimiterValue!17423 (value!268858 List!57595)) (DedentValue!8711 (value!268859 List!57595)) (NewLineValue!8711 (value!268860 List!57595)) (IntegerValue!26133 (value!268861 (_ BitVec 32)) (text!61424 List!57595)) (IntegerValue!26134 (value!268862 Int) (text!61425 List!57595)) (Times!8711) (Or!8711) (Equal!8711) (Minus!8711) (Broken!43559 (value!268863 List!57595)) (And!8711) (Div!8711) (LessEqual!8711) (Mod!8711) (Concat!22345) (Not!8711) (Plus!8711) (SpaceValue!8711 (value!268864 List!57595)) (IntegerValue!26135 (value!268865 Int) (text!61426 List!57595)) (StringLiteralValue!26134 (text!61427 List!57595)) (FloatLiteralValue!17423 (text!61428 List!57595)) (BytesLiteralValue!8711 (value!268866 List!57595)) (CommentValue!17423 (value!268867 List!57595)) (StringLiteralValue!26135 (value!268868 List!57595)) (ErrorTokenValue!8711 (msg!8772 List!57595)) )
))
(declare-datatypes ((Regex!13634 0))(
  ( (ElementMatch!13634 (c!849106 C!27518)) (Concat!22346 (regOne!27780 Regex!13634) (regTwo!27780 Regex!13634)) (EmptyExpr!13634) (Star!13634 (reg!13963 Regex!13634)) (EmptyLang!13634) (Union!13634 (regOne!27781 Regex!13634) (regTwo!27781 Regex!13634)) )
))
(declare-datatypes ((String!65431 0))(
  ( (String!65432 (value!268869 String)) )
))
(declare-datatypes ((TokenValueInjection!16730 0))(
  ( (TokenValueInjection!16731 (toValue!11376 Int) (toChars!11235 Int)) )
))
(declare-datatypes ((Rule!16602 0))(
  ( (Rule!16603 (regex!8401 Regex!13634) (tag!9265 String!65431) (isSeparator!8401 Bool) (transformation!8401 TokenValueInjection!16730)) )
))
(declare-datatypes ((List!57596 0))(
  ( (Nil!57472) (Cons!57472 (h!63920 Rule!16602) (t!369596 List!57596)) )
))
(declare-fun rulesArg!259 () List!57596)

(declare-fun rulesValidInductive!3304 (LexerInterface!7993 List!57596) Bool)

(assert (=> b!4975624 (= res!2123877 (rulesValidInductive!3304 thiss!15247 rulesArg!259))))

(declare-fun b!4975625 () Bool)

(declare-fun res!2123874 () Bool)

(assert (=> b!4975625 (=> (not res!2123874) (not e!3109578))))

(declare-fun isEmpty!30981 (List!57596) Bool)

(assert (=> b!4975625 (= res!2123874 (not (isEmpty!30981 rulesArg!259)))))

(declare-fun e!3109576 () Bool)

(declare-fun b!4975626 () Bool)

(declare-fun tp!1395018 () Bool)

(declare-fun inv!75131 (String!65431) Bool)

(declare-fun inv!75136 (TokenValueInjection!16730) Bool)

(assert (=> b!4975626 (= e!3109572 (and tp!1395018 (inv!75131 (tag!9265 (h!63920 rulesArg!259))) (inv!75136 (transformation!8401 (h!63920 rulesArg!259))) e!3109576))))

(declare-fun b!4975627 () Bool)

(declare-fun tp!1395015 () Bool)

(assert (=> b!4975627 (= e!3109579 (and (inv!75134 (c!849105 input!1342)) tp!1395015))))

(assert (=> b!4975628 (= e!3109576 (and tp!1395020 tp!1395016))))

(declare-fun b!4975629 () Bool)

(assert (=> b!4975629 (= e!3109577 (not (or (and (is-Cons!57472 rulesArg!259) (is-Nil!57472 (t!369596 rulesArg!259))) (is-Cons!57472 rulesArg!259))))))

(declare-fun isPrefix!5252 (List!57594 List!57594) Bool)

(assert (=> b!4975629 (isPrefix!5252 lt!2054992 lt!2054992)))

(declare-datatypes ((Unit!148467 0))(
  ( (Unit!148468) )
))
(declare-fun lt!2054991 () Unit!148467)

(declare-fun lemmaIsPrefixRefl!3576 (List!57594 List!57594) Unit!148467)

(assert (=> b!4975629 (= lt!2054991 (lemmaIsPrefixRefl!3576 lt!2054992 lt!2054992))))

(assert (= (and start!524956 res!2123875) b!4975624))

(assert (= (and b!4975624 res!2123877) b!4975625))

(assert (= (and b!4975625 res!2123874) b!4975622))

(assert (= (and b!4975622 res!2123876) b!4975629))

(assert (= b!4975626 b!4975628))

(assert (= b!4975623 b!4975626))

(assert (= (and start!524956 (is-Cons!57472 rulesArg!259)) b!4975623))

(assert (= start!524956 b!4975627))

(assert (= start!524956 b!4975621))

(declare-fun m!6005986 () Bool)

(assert (=> b!4975624 m!6005986))

(declare-fun m!6005988 () Bool)

(assert (=> start!524956 m!6005988))

(declare-fun m!6005990 () Bool)

(assert (=> start!524956 m!6005990))

(declare-fun m!6005992 () Bool)

(assert (=> b!4975621 m!6005992))

(declare-fun m!6005994 () Bool)

(assert (=> b!4975629 m!6005994))

(declare-fun m!6005996 () Bool)

(assert (=> b!4975629 m!6005996))

(declare-fun m!6005998 () Bool)

(assert (=> b!4975627 m!6005998))

(declare-fun m!6006000 () Bool)

(assert (=> b!4975625 m!6006000))

(declare-fun m!6006002 () Bool)

(assert (=> b!4975626 m!6006002))

(declare-fun m!6006004 () Bool)

(assert (=> b!4975626 m!6006004))

(declare-fun m!6006006 () Bool)

(assert (=> b!4975622 m!6006006))

(assert (=> b!4975622 m!6006006))

(declare-fun m!6006008 () Bool)

(assert (=> b!4975622 m!6006008))

(declare-fun m!6006010 () Bool)

(assert (=> b!4975622 m!6006010))

(push 1)

(assert b_and!349283)

(assert (not b!4975621))

(assert (not b_next!133671))

(assert (not b!4975625))

(assert (not start!524956))

(assert (not b!4975627))

(assert (not b_next!133669))

(assert (not b!4975626))

(assert (not b!4975623))

(assert b_and!349285)

(assert (not b!4975622))

(assert (not b!4975624))

(assert (not b!4975629))

(check-sat)

(pop 1)

(push 1)

(assert b_and!349283)

(assert b_and!349285)

(assert (not b_next!133669))

(assert (not b_next!133671))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1602704 () Bool)

(declare-fun e!3109610 () Bool)

(assert (=> d!1602704 e!3109610))

(declare-fun res!2123896 () Bool)

(assert (=> d!1602704 (=> res!2123896 e!3109610)))

(declare-fun lt!2055003 () Bool)

(assert (=> d!1602704 (= res!2123896 (not lt!2055003))))

(declare-fun drop!2357 (List!57594 Int) List!57594)

(declare-fun size!38101 (List!57594) Int)

(assert (=> d!1602704 (= lt!2055003 (= lt!2054992 (drop!2357 (list!18388 totalInput!464) (- (size!38101 (list!18388 totalInput!464)) (size!38101 lt!2054992)))))))

(assert (=> d!1602704 (= (isSuffix!1200 lt!2054992 (list!18388 totalInput!464)) lt!2055003)))

(declare-fun b!4975663 () Bool)

(assert (=> b!4975663 (= e!3109610 (>= (size!38101 (list!18388 totalInput!464)) (size!38101 lt!2054992)))))

(assert (= (and d!1602704 (not res!2123896)) b!4975663))

(assert (=> d!1602704 m!6006006))

(declare-fun m!6006038 () Bool)

(assert (=> d!1602704 m!6006038))

(declare-fun m!6006040 () Bool)

(assert (=> d!1602704 m!6006040))

(assert (=> d!1602704 m!6006006))

(declare-fun m!6006042 () Bool)

(assert (=> d!1602704 m!6006042))

(assert (=> b!4975663 m!6006006))

(assert (=> b!4975663 m!6006038))

(assert (=> b!4975663 m!6006040))

(assert (=> b!4975622 d!1602704))

(declare-fun d!1602706 () Bool)

(declare-fun list!18390 (Conc!15153) List!57594)

(assert (=> d!1602706 (= (list!18388 totalInput!464) (list!18390 (c!849105 totalInput!464)))))

(declare-fun bs!1183941 () Bool)

(assert (= bs!1183941 d!1602706))

(declare-fun m!6006044 () Bool)

(assert (=> bs!1183941 m!6006044))

(assert (=> b!4975622 d!1602706))

(declare-fun d!1602708 () Bool)

(assert (=> d!1602708 (= (list!18388 input!1342) (list!18390 (c!849105 input!1342)))))

(declare-fun bs!1183942 () Bool)

(assert (= bs!1183942 d!1602708))

(declare-fun m!6006046 () Bool)

(assert (=> bs!1183942 m!6006046))

(assert (=> b!4975622 d!1602708))

(declare-fun d!1602710 () Bool)

(declare-fun isBalanced!4210 (Conc!15153) Bool)

(assert (=> d!1602710 (= (inv!75135 input!1342) (isBalanced!4210 (c!849105 input!1342)))))

(declare-fun bs!1183943 () Bool)

(assert (= bs!1183943 d!1602710))

(declare-fun m!6006048 () Bool)

(assert (=> bs!1183943 m!6006048))

(assert (=> start!524956 d!1602710))

(declare-fun d!1602712 () Bool)

(assert (=> d!1602712 (= (inv!75135 totalInput!464) (isBalanced!4210 (c!849105 totalInput!464)))))

(declare-fun bs!1183944 () Bool)

(assert (= bs!1183944 d!1602712))

(declare-fun m!6006050 () Bool)

(assert (=> bs!1183944 m!6006050))

(assert (=> start!524956 d!1602712))

(declare-fun d!1602714 () Bool)

(declare-fun c!849111 () Bool)

(assert (=> d!1602714 (= c!849111 (is-Node!15153 (c!849105 input!1342)))))

(declare-fun e!3109615 () Bool)

(assert (=> d!1602714 (= (inv!75134 (c!849105 input!1342)) e!3109615)))

(declare-fun b!4975670 () Bool)

(declare-fun inv!75140 (Conc!15153) Bool)

(assert (=> b!4975670 (= e!3109615 (inv!75140 (c!849105 input!1342)))))

(declare-fun b!4975671 () Bool)

(declare-fun e!3109616 () Bool)

(assert (=> b!4975671 (= e!3109615 e!3109616)))

(declare-fun res!2123899 () Bool)

(assert (=> b!4975671 (= res!2123899 (not (is-Leaf!25179 (c!849105 input!1342))))))

(assert (=> b!4975671 (=> res!2123899 e!3109616)))

(declare-fun b!4975672 () Bool)

(declare-fun inv!75141 (Conc!15153) Bool)

(assert (=> b!4975672 (= e!3109616 (inv!75141 (c!849105 input!1342)))))

(assert (= (and d!1602714 c!849111) b!4975670))

(assert (= (and d!1602714 (not c!849111)) b!4975671))

(assert (= (and b!4975671 (not res!2123899)) b!4975672))

(declare-fun m!6006052 () Bool)

(assert (=> b!4975670 m!6006052))

(declare-fun m!6006054 () Bool)

(assert (=> b!4975672 m!6006054))

(assert (=> b!4975627 d!1602714))

(declare-fun d!1602716 () Bool)

(declare-fun c!849112 () Bool)

(assert (=> d!1602716 (= c!849112 (is-Node!15153 (c!849105 totalInput!464)))))

(declare-fun e!3109617 () Bool)

(assert (=> d!1602716 (= (inv!75134 (c!849105 totalInput!464)) e!3109617)))

(declare-fun b!4975673 () Bool)

(assert (=> b!4975673 (= e!3109617 (inv!75140 (c!849105 totalInput!464)))))

(declare-fun b!4975674 () Bool)

(declare-fun e!3109618 () Bool)

(assert (=> b!4975674 (= e!3109617 e!3109618)))

(declare-fun res!2123900 () Bool)

(assert (=> b!4975674 (= res!2123900 (not (is-Leaf!25179 (c!849105 totalInput!464))))))

(assert (=> b!4975674 (=> res!2123900 e!3109618)))

(declare-fun b!4975675 () Bool)

(assert (=> b!4975675 (= e!3109618 (inv!75141 (c!849105 totalInput!464)))))

(assert (= (and d!1602716 c!849112) b!4975673))

(assert (= (and d!1602716 (not c!849112)) b!4975674))

(assert (= (and b!4975674 (not res!2123900)) b!4975675))

(declare-fun m!6006056 () Bool)

(assert (=> b!4975673 m!6006056))

(declare-fun m!6006058 () Bool)

(assert (=> b!4975675 m!6006058))

(assert (=> b!4975621 d!1602716))

(declare-fun d!1602718 () Bool)

(assert (=> d!1602718 (= (inv!75131 (tag!9265 (h!63920 rulesArg!259))) (= (mod (str.len (value!268869 (tag!9265 (h!63920 rulesArg!259)))) 2) 0))))

(assert (=> b!4975626 d!1602718))

(declare-fun d!1602720 () Bool)

(declare-fun res!2123903 () Bool)

(declare-fun e!3109621 () Bool)

(assert (=> d!1602720 (=> (not res!2123903) (not e!3109621))))

(declare-fun semiInverseModEq!3708 (Int Int) Bool)

(assert (=> d!1602720 (= res!2123903 (semiInverseModEq!3708 (toChars!11235 (transformation!8401 (h!63920 rulesArg!259))) (toValue!11376 (transformation!8401 (h!63920 rulesArg!259)))))))

(assert (=> d!1602720 (= (inv!75136 (transformation!8401 (h!63920 rulesArg!259))) e!3109621)))

(declare-fun b!4975678 () Bool)

(declare-fun equivClasses!3556 (Int Int) Bool)

(assert (=> b!4975678 (= e!3109621 (equivClasses!3556 (toChars!11235 (transformation!8401 (h!63920 rulesArg!259))) (toValue!11376 (transformation!8401 (h!63920 rulesArg!259)))))))

(assert (= (and d!1602720 res!2123903) b!4975678))

(declare-fun m!6006060 () Bool)

(assert (=> d!1602720 m!6006060))

(declare-fun m!6006062 () Bool)

(assert (=> b!4975678 m!6006062))

(assert (=> b!4975626 d!1602720))

(declare-fun d!1602722 () Bool)

(assert (=> d!1602722 (= (isEmpty!30981 rulesArg!259) (is-Nil!57472 rulesArg!259))))

(assert (=> b!4975625 d!1602722))

(declare-fun d!1602724 () Bool)

(assert (=> d!1602724 true))

(declare-fun lt!2055006 () Bool)

(declare-fun lambda!247551 () Int)

(declare-fun forall!13336 (List!57596 Int) Bool)

(assert (=> d!1602724 (= lt!2055006 (forall!13336 rulesArg!259 lambda!247551))))

(declare-fun e!3109626 () Bool)

(assert (=> d!1602724 (= lt!2055006 e!3109626)))

(declare-fun res!2123909 () Bool)

(assert (=> d!1602724 (=> res!2123909 e!3109626)))

(assert (=> d!1602724 (= res!2123909 (not (is-Cons!57472 rulesArg!259)))))

(assert (=> d!1602724 (= (rulesValidInductive!3304 thiss!15247 rulesArg!259) lt!2055006)))

(declare-fun b!4975683 () Bool)

(declare-fun e!3109627 () Bool)

(assert (=> b!4975683 (= e!3109626 e!3109627)))

(declare-fun res!2123908 () Bool)

(assert (=> b!4975683 (=> (not res!2123908) (not e!3109627))))

(declare-fun ruleValid!3810 (LexerInterface!7993 Rule!16602) Bool)

(assert (=> b!4975683 (= res!2123908 (ruleValid!3810 thiss!15247 (h!63920 rulesArg!259)))))

(declare-fun b!4975684 () Bool)

(assert (=> b!4975684 (= e!3109627 (rulesValidInductive!3304 thiss!15247 (t!369596 rulesArg!259)))))

(assert (= (and d!1602724 (not res!2123909)) b!4975683))

(assert (= (and b!4975683 res!2123908) b!4975684))

(declare-fun m!6006064 () Bool)

(assert (=> d!1602724 m!6006064))

(declare-fun m!6006066 () Bool)

(assert (=> b!4975683 m!6006066))

(declare-fun m!6006068 () Bool)

(assert (=> b!4975684 m!6006068))

(assert (=> b!4975624 d!1602724))

(declare-fun b!4975697 () Bool)

(declare-fun e!3109636 () Bool)

(declare-fun tail!9809 (List!57594) List!57594)

(assert (=> b!4975697 (= e!3109636 (isPrefix!5252 (tail!9809 lt!2054992) (tail!9809 lt!2054992)))))

(declare-fun d!1602726 () Bool)

(declare-fun e!3109635 () Bool)

(assert (=> d!1602726 e!3109635))

(declare-fun res!2123921 () Bool)

(assert (=> d!1602726 (=> res!2123921 e!3109635)))

(declare-fun lt!2055009 () Bool)

(assert (=> d!1602726 (= res!2123921 (not lt!2055009))))

(declare-fun e!3109634 () Bool)

(assert (=> d!1602726 (= lt!2055009 e!3109634)))

(declare-fun res!2123920 () Bool)

(assert (=> d!1602726 (=> res!2123920 e!3109634)))

(assert (=> d!1602726 (= res!2123920 (is-Nil!57470 lt!2054992))))

(assert (=> d!1602726 (= (isPrefix!5252 lt!2054992 lt!2054992) lt!2055009)))

(declare-fun b!4975695 () Bool)

(assert (=> b!4975695 (= e!3109634 e!3109636)))

(declare-fun res!2123918 () Bool)

(assert (=> b!4975695 (=> (not res!2123918) (not e!3109636))))

(assert (=> b!4975695 (= res!2123918 (not (is-Nil!57470 lt!2054992)))))

(declare-fun b!4975696 () Bool)

(declare-fun res!2123919 () Bool)

(assert (=> b!4975696 (=> (not res!2123919) (not e!3109636))))

(declare-fun head!10676 (List!57594) C!27518)

(assert (=> b!4975696 (= res!2123919 (= (head!10676 lt!2054992) (head!10676 lt!2054992)))))

(declare-fun b!4975698 () Bool)

(assert (=> b!4975698 (= e!3109635 (>= (size!38101 lt!2054992) (size!38101 lt!2054992)))))

(assert (= (and d!1602726 (not res!2123920)) b!4975695))

(assert (= (and b!4975695 res!2123918) b!4975696))

(assert (= (and b!4975696 res!2123919) b!4975697))

(assert (= (and d!1602726 (not res!2123921)) b!4975698))

(declare-fun m!6006070 () Bool)

(assert (=> b!4975697 m!6006070))

(assert (=> b!4975697 m!6006070))

(assert (=> b!4975697 m!6006070))

(assert (=> b!4975697 m!6006070))

(declare-fun m!6006072 () Bool)

(assert (=> b!4975697 m!6006072))

(declare-fun m!6006074 () Bool)

(assert (=> b!4975696 m!6006074))

(assert (=> b!4975696 m!6006074))

(assert (=> b!4975698 m!6006040))

(assert (=> b!4975698 m!6006040))

(assert (=> b!4975629 d!1602726))

(declare-fun d!1602728 () Bool)

(assert (=> d!1602728 (isPrefix!5252 lt!2054992 lt!2054992)))

(declare-fun lt!2055012 () Unit!148467)

(declare-fun choose!36733 (List!57594 List!57594) Unit!148467)

(assert (=> d!1602728 (= lt!2055012 (choose!36733 lt!2054992 lt!2054992))))

(assert (=> d!1602728 (= (lemmaIsPrefixRefl!3576 lt!2054992 lt!2054992) lt!2055012)))

(declare-fun bs!1183945 () Bool)

(assert (= bs!1183945 d!1602728))

(assert (=> bs!1183945 m!6005994))

(declare-fun m!6006076 () Bool)

(assert (=> bs!1183945 m!6006076))

(assert (=> b!4975629 d!1602728))

(declare-fun b!4975709 () Bool)

(declare-fun b_free!132887 () Bool)

(declare-fun b_next!133677 () Bool)

(assert (=> b!4975709 (= b_free!132887 (not b_next!133677))))

(declare-fun tp!1395047 () Bool)

(declare-fun b_and!349291 () Bool)

(assert (=> b!4975709 (= tp!1395047 b_and!349291)))

(declare-fun b_free!132889 () Bool)

(declare-fun b_next!133679 () Bool)

(assert (=> b!4975709 (= b_free!132889 (not b_next!133679))))

(declare-fun tp!1395048 () Bool)

(declare-fun b_and!349293 () Bool)

(assert (=> b!4975709 (= tp!1395048 b_and!349293)))

(declare-fun e!3109647 () Bool)

(assert (=> b!4975709 (= e!3109647 (and tp!1395047 tp!1395048))))

(declare-fun tp!1395050 () Bool)

(declare-fun e!3109646 () Bool)

(declare-fun b!4975708 () Bool)

(assert (=> b!4975708 (= e!3109646 (and tp!1395050 (inv!75131 (tag!9265 (h!63920 (t!369596 rulesArg!259)))) (inv!75136 (transformation!8401 (h!63920 (t!369596 rulesArg!259)))) e!3109647))))

(declare-fun b!4975707 () Bool)

(declare-fun e!3109648 () Bool)

(declare-fun tp!1395049 () Bool)

(assert (=> b!4975707 (= e!3109648 (and e!3109646 tp!1395049))))

(assert (=> b!4975623 (= tp!1395019 e!3109648)))

(assert (= b!4975708 b!4975709))

(assert (= b!4975707 b!4975708))

(assert (= (and b!4975623 (is-Cons!57472 (t!369596 rulesArg!259))) b!4975707))

(declare-fun m!6006078 () Bool)

(assert (=> b!4975708 m!6006078))

(declare-fun m!6006080 () Bool)

(assert (=> b!4975708 m!6006080))

(declare-fun tp!1395057 () Bool)

(declare-fun b!4975718 () Bool)

(declare-fun tp!1395058 () Bool)

(declare-fun e!3109654 () Bool)

(assert (=> b!4975718 (= e!3109654 (and (inv!75134 (left!41928 (c!849105 input!1342))) tp!1395057 (inv!75134 (right!42258 (c!849105 input!1342))) tp!1395058))))

(declare-fun b!4975720 () Bool)

(declare-fun e!3109653 () Bool)

(declare-fun tp!1395059 () Bool)

(assert (=> b!4975720 (= e!3109653 tp!1395059)))

(declare-fun b!4975719 () Bool)

(declare-fun inv!75142 (IArray!30367) Bool)

(assert (=> b!4975719 (= e!3109654 (and (inv!75142 (xs!18479 (c!849105 input!1342))) e!3109653))))

(assert (=> b!4975627 (= tp!1395015 (and (inv!75134 (c!849105 input!1342)) e!3109654))))

(assert (= (and b!4975627 (is-Node!15153 (c!849105 input!1342))) b!4975718))

(assert (= b!4975719 b!4975720))

(assert (= (and b!4975627 (is-Leaf!25179 (c!849105 input!1342))) b!4975719))

(declare-fun m!6006082 () Bool)

(assert (=> b!4975718 m!6006082))

(declare-fun m!6006084 () Bool)

(assert (=> b!4975718 m!6006084))

(declare-fun m!6006086 () Bool)

(assert (=> b!4975719 m!6006086))

(assert (=> b!4975627 m!6005998))

(declare-fun b!4975721 () Bool)

(declare-fun tp!1395060 () Bool)

(declare-fun tp!1395061 () Bool)

(declare-fun e!3109656 () Bool)

(assert (=> b!4975721 (= e!3109656 (and (inv!75134 (left!41928 (c!849105 totalInput!464))) tp!1395060 (inv!75134 (right!42258 (c!849105 totalInput!464))) tp!1395061))))

(declare-fun b!4975723 () Bool)

(declare-fun e!3109655 () Bool)

(declare-fun tp!1395062 () Bool)

(assert (=> b!4975723 (= e!3109655 tp!1395062)))

(declare-fun b!4975722 () Bool)

(assert (=> b!4975722 (= e!3109656 (and (inv!75142 (xs!18479 (c!849105 totalInput!464))) e!3109655))))

(assert (=> b!4975621 (= tp!1395017 (and (inv!75134 (c!849105 totalInput!464)) e!3109656))))

(assert (= (and b!4975621 (is-Node!15153 (c!849105 totalInput!464))) b!4975721))

(assert (= b!4975722 b!4975723))

(assert (= (and b!4975621 (is-Leaf!25179 (c!849105 totalInput!464))) b!4975722))

(declare-fun m!6006088 () Bool)

(assert (=> b!4975721 m!6006088))

(declare-fun m!6006090 () Bool)

(assert (=> b!4975721 m!6006090))

(declare-fun m!6006092 () Bool)

(assert (=> b!4975722 m!6006092))

(assert (=> b!4975621 m!6005992))

(declare-fun e!3109659 () Bool)

(assert (=> b!4975626 (= tp!1395018 e!3109659)))

(declare-fun b!4975736 () Bool)

(declare-fun tp!1395075 () Bool)

(assert (=> b!4975736 (= e!3109659 tp!1395075)))

(declare-fun b!4975735 () Bool)

(declare-fun tp!1395076 () Bool)

(declare-fun tp!1395073 () Bool)

(assert (=> b!4975735 (= e!3109659 (and tp!1395076 tp!1395073))))

(declare-fun b!4975737 () Bool)

(declare-fun tp!1395074 () Bool)

(declare-fun tp!1395077 () Bool)

(assert (=> b!4975737 (= e!3109659 (and tp!1395074 tp!1395077))))

(declare-fun b!4975734 () Bool)

(declare-fun tp_is_empty!36349 () Bool)

(assert (=> b!4975734 (= e!3109659 tp_is_empty!36349)))

(assert (= (and b!4975626 (is-ElementMatch!13634 (regex!8401 (h!63920 rulesArg!259)))) b!4975734))

(assert (= (and b!4975626 (is-Concat!22346 (regex!8401 (h!63920 rulesArg!259)))) b!4975735))

(assert (= (and b!4975626 (is-Star!13634 (regex!8401 (h!63920 rulesArg!259)))) b!4975736))

(assert (= (and b!4975626 (is-Union!13634 (regex!8401 (h!63920 rulesArg!259)))) b!4975737))

(push 1)

(assert (not b!4975698))

(assert (not b_next!133671))

(assert (not d!1602704))

(assert (not b!4975720))

(assert (not b!4975672))

(assert (not b!4975627))

(assert tp_is_empty!36349)

(assert (not b!4975697))

(assert (not b!4975678))

(assert (not b!4975696))

(assert (not b!4975684))

(assert (not d!1602724))

(assert (not d!1602712))

(assert (not b!4975719))

(assert (not b!4975707))

(assert b_and!349283)

(assert (not b!4975718))

(assert (not d!1602710))

(assert (not b!4975721))

(assert (not b!4975737))

(assert (not d!1602728))

(assert (not b_next!133677))

(assert (not d!1602708))

(assert (not b!4975675))

(assert b_and!349291)

(assert (not b!4975670))

(assert (not b!4975621))

(assert (not b!4975735))

(assert (not b!4975663))

(assert b_and!349285)

(assert b_and!349293)

(assert (not b!4975673))

(assert (not b!4975683))

(assert (not b!4975708))

(assert (not d!1602706))

(assert (not d!1602720))

(assert (not b_next!133669))

(assert (not b!4975722))

(assert (not b!4975736))

(assert (not b!4975723))

(assert (not b_next!133679))

(check-sat)

(pop 1)

(push 1)

(assert b_and!349283)

(assert (not b_next!133677))

(assert b_and!349291)

(assert (not b_next!133671))

(assert (not b_next!133669))

(assert (not b_next!133679))

(assert b_and!349285)

(assert b_and!349293)

(check-sat)

(pop 1)

