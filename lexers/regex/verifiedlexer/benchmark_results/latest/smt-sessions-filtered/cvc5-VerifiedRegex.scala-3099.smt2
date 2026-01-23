; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!183840 () Bool)

(assert start!183840)

(assert (=> start!183840 true))

(declare-fun b!1844630 () Bool)

(declare-fun e!1178821 () Bool)

(declare-datatypes ((List!20413 0))(
  ( (Nil!20341) (Cons!20341 (h!25742 (_ BitVec 16)) (t!171950 List!20413)) )
))
(declare-datatypes ((IArray!13481 0))(
  ( (IArray!13482 (innerList!6798 List!20413)) )
))
(declare-datatypes ((Conc!6738 0))(
  ( (Node!6738 (left!16273 Conc!6738) (right!16603 Conc!6738) (csize!13706 Int) (cheight!6949 Int)) (Leaf!9838 (xs!9614 IArray!13481) (csize!13707 Int)) (Empty!6738) )
))
(declare-datatypes ((BalanceConc!13398 0))(
  ( (BalanceConc!13399 (c!301131 Conc!6738)) )
))
(declare-fun x!368538 () BalanceConc!13398)

(declare-fun tp!521671 () Bool)

(declare-fun inv!26626 (Conc!6738) Bool)

(assert (=> b!1844630 (= e!1178821 (and (inv!26626 (c!301131 x!368538)) tp!521671))))

(declare-fun inst!1034 () Bool)

(declare-datatypes ((IdentifierValueInjection!8 0))(
  ( (IdentifierValueInjection!9) )
))
(declare-fun thiss!4669 () IdentifierValueInjection!8)

(declare-fun inv!26627 (BalanceConc!13398) Bool)

(declare-fun list!8265 (BalanceConc!13398) List!20413)

(declare-datatypes ((TokenValue!3754 0))(
  ( (FloatLiteralValue!7508 (text!26723 List!20413)) (TokenValueExt!3753 (__x!12802 Int)) (Broken!18770 (value!114211 List!20413)) (Object!3825) (End!3754) (Def!3754) (Underscore!3754) (Match!3754) (Else!3754) (Error!3754) (Case!3754) (If!3754) (Extends!3754) (Abstract!3754) (Class!3754) (Val!3754) (DelimiterValue!7508 (del!3814 List!20413)) (KeywordValue!3760 (value!114212 List!20413)) (CommentValue!7508 (value!114213 List!20413)) (WhitespaceValue!7508 (value!114214 List!20413)) (IndentationValue!3754 (value!114215 List!20413)) (String!23287) (Int32!3754) (Broken!18771 (value!114216 List!20413)) (Boolean!3755) (Unit!35025) (OperatorValue!3757 (op!3814 List!20413)) (IdentifierValue!7508 (value!114217 List!20413)) (IdentifierValue!7509 (value!114218 List!20413)) (WhitespaceValue!7509 (value!114219 List!20413)) (True!7508) (False!7508) (Broken!18772 (value!114220 List!20413)) (Broken!18773 (value!114221 List!20413)) (True!7509) (RightBrace!3754) (RightBracket!3754) (Colon!3754) (Null!3754) (Comma!3754) (LeftBracket!3754) (False!7509) (LeftBrace!3754) (ImaginaryLiteralValue!3754 (text!26724 List!20413)) (StringLiteralValue!11262 (value!114222 List!20413)) (EOFValue!3754 (value!114223 List!20413)) (IdentValue!3754 (value!114224 List!20413)) (DelimiterValue!7509 (value!114225 List!20413)) (DedentValue!3754 (value!114226 List!20413)) (NewLineValue!3754 (value!114227 List!20413)) (IntegerValue!11262 (value!114228 (_ BitVec 32)) (text!26725 List!20413)) (IntegerValue!11263 (value!114229 Int) (text!26726 List!20413)) (Times!3754) (Or!3754) (Equal!3754) (Minus!3754) (Broken!18774 (value!114230 List!20413)) (And!3754) (Div!3754) (LessEqual!3754) (Mod!3754) (Concat!8744) (Not!3754) (Plus!3754) (SpaceValue!3754 (value!114231 List!20413)) (IntegerValue!11264 (value!114232 Int) (text!26727 List!20413)) (StringLiteralValue!11263 (text!26728 List!20413)) (FloatLiteralValue!7509 (text!26729 List!20413)) (BytesLiteralValue!3754 (value!114233 List!20413)) (CommentValue!7509 (value!114234 List!20413)) (StringLiteralValue!11264 (value!114235 List!20413)) (ErrorTokenValue!3754 (msg!3815 List!20413)) )
))
(declare-fun toCharacters!21 (IdentifierValueInjection!8 TokenValue!3754) BalanceConc!13398)

(declare-fun toValue!28 (IdentifierValueInjection!8 BalanceConc!13398) TokenValue!3754)

(assert (=> start!183840 (= inst!1034 (=> (and (inv!26627 x!368538) e!1178821) (= (list!8265 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368538))) (list!8265 x!368538))))))

(assert (= start!183840 b!1844630))

(declare-fun m!2272891 () Bool)

(assert (=> b!1844630 m!2272891))

(declare-fun m!2272893 () Bool)

(assert (=> start!183840 m!2272893))

(declare-fun m!2272895 () Bool)

(assert (=> start!183840 m!2272895))

(assert (=> start!183840 m!2272893))

(declare-fun m!2272897 () Bool)

(assert (=> start!183840 m!2272897))

(declare-fun m!2272899 () Bool)

(assert (=> start!183840 m!2272899))

(assert (=> start!183840 m!2272895))

(declare-fun m!2272901 () Bool)

(assert (=> start!183840 m!2272901))

(declare-fun bs!408862 () Bool)

(declare-fun neg-inst!1034 () Bool)

(declare-fun s!220794 () Bool)

(assert (= bs!408862 (and neg-inst!1034 s!220794)))

(assert (=> bs!408862 (=> true (= (list!8265 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368538))) (list!8265 x!368538)))))

(assert (=> m!2272893 m!2272895))

(assert (=> m!2272893 m!2272901))

(assert (=> m!2272893 m!2272897))

(assert (=> m!2272893 s!220794))

(assert (=> m!2272897 s!220794))

(declare-fun bs!408863 () Bool)

(assert (= bs!408863 (and neg-inst!1034 start!183840)))

(assert (=> bs!408863 (= true inst!1034)))

(declare-fun lambda!72427 () Int)

(declare-fun Forall!939 (Int) Bool)

(assert (=> start!183840 (= (Forall!939 lambda!72427) inst!1034)))

(assert (=> start!183840 (not (Forall!939 lambda!72427))))

(assert (=> start!183840 true))

(assert (= neg-inst!1034 inst!1034))

(declare-fun m!2272903 () Bool)

(assert (=> start!183840 m!2272903))

(assert (=> start!183840 m!2272903))

(push 1)

(assert (not bs!408862))

(assert (not start!183840))

(assert (not b!1844630))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!564584 () Bool)

(declare-fun list!8267 (Conc!6738) List!20413)

(assert (=> d!564584 (= (list!8265 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368538))) (list!8267 (c!301131 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368538)))))))

(declare-fun bs!408866 () Bool)

(assert (= bs!408866 d!564584))

(declare-fun m!2272919 () Bool)

(assert (=> bs!408866 m!2272919))

(assert (=> bs!408862 d!564584))

(declare-fun d!564586 () Bool)

(declare-fun c!301136 () Bool)

(assert (=> d!564586 (= c!301136 (is-IdentifierValue!7508 (toValue!28 thiss!4669 x!368538)))))

(declare-fun e!1178827 () BalanceConc!13398)

(assert (=> d!564586 (= (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368538)) e!1178827)))

(declare-fun b!1844640 () Bool)

(declare-fun seqFromList!2607 (List!20413) BalanceConc!13398)

(assert (=> b!1844640 (= e!1178827 (seqFromList!2607 (value!114217 (toValue!28 thiss!4669 x!368538))))))

(declare-fun b!1844641 () Bool)

(assert (=> b!1844641 (= e!1178827 (BalanceConc!13399 Empty!6738))))

(assert (= (and d!564586 c!301136) b!1844640))

(assert (= (and d!564586 (not c!301136)) b!1844641))

(declare-fun m!2272921 () Bool)

(assert (=> b!1844640 m!2272921))

(assert (=> bs!408862 d!564586))

(declare-fun d!564590 () Bool)

(declare-fun efficientList!198 (BalanceConc!13398) List!20413)

(assert (=> d!564590 (= (toValue!28 thiss!4669 x!368538) (IdentifierValue!7508 (efficientList!198 x!368538)))))

(declare-fun bs!408868 () Bool)

(assert (= bs!408868 d!564590))

(declare-fun m!2272925 () Bool)

(assert (=> bs!408868 m!2272925))

(assert (=> bs!408862 d!564590))

(declare-fun d!564594 () Bool)

(assert (=> d!564594 (= (list!8265 x!368538) (list!8267 (c!301131 x!368538)))))

(declare-fun bs!408869 () Bool)

(assert (= bs!408869 d!564594))

(declare-fun m!2272927 () Bool)

(assert (=> bs!408869 m!2272927))

(assert (=> bs!408862 d!564594))

(push 1)

(assert (not d!564584))

(assert (not d!564590))

(assert (not d!564594))

(assert (not b!1844630))

(assert (not start!183840))

(assert (not b!1844640))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!564600 () Bool)

(declare-fun lt!714639 () List!20413)

(assert (=> d!564600 (= lt!714639 (list!8265 x!368538))))

(declare-fun efficientList!200 (Conc!6738 List!20413) List!20413)

(declare-fun efficientList$default$2!67 (Conc!6738) List!20413)

(assert (=> d!564600 (= lt!714639 (efficientList!200 (c!301131 x!368538) (efficientList$default$2!67 (c!301131 x!368538))))))

(assert (=> d!564600 (= (efficientList!198 x!368538) lt!714639)))

(declare-fun bs!408872 () Bool)

(assert (= bs!408872 d!564600))

(assert (=> bs!408872 m!2272897))

(declare-fun m!2272935 () Bool)

(assert (=> bs!408872 m!2272935))

(assert (=> bs!408872 m!2272935))

(declare-fun m!2272937 () Bool)

(assert (=> bs!408872 m!2272937))

(assert (=> d!564590 d!564600))

(declare-fun b!1844656 () Bool)

(declare-fun e!1178835 () List!20413)

(assert (=> b!1844656 (= e!1178835 Nil!20341)))

(declare-fun b!1844657 () Bool)

(declare-fun e!1178836 () List!20413)

(assert (=> b!1844657 (= e!1178835 e!1178836)))

(declare-fun c!301146 () Bool)

(assert (=> b!1844657 (= c!301146 (is-Leaf!9838 (c!301131 x!368538)))))

(declare-fun b!1844658 () Bool)

(declare-fun list!8269 (IArray!13481) List!20413)

(assert (=> b!1844658 (= e!1178836 (list!8269 (xs!9614 (c!301131 x!368538))))))

(declare-fun b!1844659 () Bool)

(declare-fun ++!5523 (List!20413 List!20413) List!20413)

(assert (=> b!1844659 (= e!1178836 (++!5523 (list!8267 (left!16273 (c!301131 x!368538))) (list!8267 (right!16603 (c!301131 x!368538)))))))

(declare-fun d!564602 () Bool)

(declare-fun c!301145 () Bool)

(assert (=> d!564602 (= c!301145 (is-Empty!6738 (c!301131 x!368538)))))

(assert (=> d!564602 (= (list!8267 (c!301131 x!368538)) e!1178835)))

(assert (= (and d!564602 c!301145) b!1844656))

(assert (= (and d!564602 (not c!301145)) b!1844657))

(assert (= (and b!1844657 c!301146) b!1844658))

(assert (= (and b!1844657 (not c!301146)) b!1844659))

(declare-fun m!2272939 () Bool)

(assert (=> b!1844658 m!2272939))

(declare-fun m!2272941 () Bool)

(assert (=> b!1844659 m!2272941))

(declare-fun m!2272943 () Bool)

(assert (=> b!1844659 m!2272943))

(assert (=> b!1844659 m!2272941))

(assert (=> b!1844659 m!2272943))

(declare-fun m!2272945 () Bool)

(assert (=> b!1844659 m!2272945))

(assert (=> d!564594 d!564602))

(declare-fun b!1844660 () Bool)

(declare-fun e!1178837 () List!20413)

(assert (=> b!1844660 (= e!1178837 Nil!20341)))

(declare-fun b!1844661 () Bool)

(declare-fun e!1178838 () List!20413)

(assert (=> b!1844661 (= e!1178837 e!1178838)))

(declare-fun c!301148 () Bool)

(assert (=> b!1844661 (= c!301148 (is-Leaf!9838 (c!301131 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368538)))))))

(declare-fun b!1844662 () Bool)

(assert (=> b!1844662 (= e!1178838 (list!8269 (xs!9614 (c!301131 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368538))))))))

(declare-fun b!1844663 () Bool)

(assert (=> b!1844663 (= e!1178838 (++!5523 (list!8267 (left!16273 (c!301131 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368538))))) (list!8267 (right!16603 (c!301131 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368538)))))))))

(declare-fun d!564604 () Bool)

(declare-fun c!301147 () Bool)

(assert (=> d!564604 (= c!301147 (is-Empty!6738 (c!301131 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368538)))))))

(assert (=> d!564604 (= (list!8267 (c!301131 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!368538)))) e!1178837)))

(assert (= (and d!564604 c!301147) b!1844660))

(assert (= (and d!564604 (not c!301147)) b!1844661))

(assert (= (and b!1844661 c!301148) b!1844662))

(assert (= (and b!1844661 (not c!301148)) b!1844663))

(declare-fun m!2272947 () Bool)

(assert (=> b!1844662 m!2272947))

(declare-fun m!2272949 () Bool)

(assert (=> b!1844663 m!2272949))

(declare-fun m!2272951 () Bool)

(assert (=> b!1844663 m!2272951))

(assert (=> b!1844663 m!2272949))

(assert (=> b!1844663 m!2272951))

(declare-fun m!2272953 () Bool)

(assert (=> b!1844663 m!2272953))

(assert (=> d!564584 d!564604))

(push 1)

(assert (not b!1844662))

(assert (not b!1844663))

(assert (not b!1844658))

(assert (not b!1844640))

(assert (not b!1844630))

(assert (not d!564600))

(assert (not b!1844659))

(assert (not start!183840))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> start!183840 d!564586))

(assert (=> start!183840 d!564584))

(assert (=> start!183840 d!564594))

(declare-fun d!564612 () Bool)

(declare-fun choose!11604 (Int) Bool)

(assert (=> d!564612 (= (Forall!939 lambda!72427) (choose!11604 lambda!72427))))

(declare-fun bs!408874 () Bool)

(assert (= bs!408874 d!564612))

(declare-fun m!2272975 () Bool)

(assert (=> bs!408874 m!2272975))

(assert (=> start!183840 d!564612))

(declare-fun d!564614 () Bool)

(declare-fun isBalanced!2098 (Conc!6738) Bool)

(assert (=> d!564614 (= (inv!26627 x!368538) (isBalanced!2098 (c!301131 x!368538)))))

(declare-fun bs!408875 () Bool)

(assert (= bs!408875 d!564614))

(declare-fun m!2272977 () Bool)

(assert (=> bs!408875 m!2272977))

(assert (=> start!183840 d!564614))

(assert (=> start!183840 d!564590))

(declare-fun d!564616 () Bool)

(declare-fun c!301159 () Bool)

(assert (=> d!564616 (= c!301159 (is-Node!6738 (c!301131 x!368538)))))

(declare-fun e!1178851 () Bool)

(assert (=> d!564616 (= (inv!26626 (c!301131 x!368538)) e!1178851)))

(declare-fun b!1844686 () Bool)

(declare-fun inv!26630 (Conc!6738) Bool)

(assert (=> b!1844686 (= e!1178851 (inv!26630 (c!301131 x!368538)))))

(declare-fun b!1844687 () Bool)

(declare-fun e!1178852 () Bool)

(assert (=> b!1844687 (= e!1178851 e!1178852)))

(declare-fun res!828482 () Bool)

(assert (=> b!1844687 (= res!828482 (not (is-Leaf!9838 (c!301131 x!368538))))))

(assert (=> b!1844687 (=> res!828482 e!1178852)))

(declare-fun b!1844688 () Bool)

(declare-fun inv!26631 (Conc!6738) Bool)

(assert (=> b!1844688 (= e!1178852 (inv!26631 (c!301131 x!368538)))))

(assert (= (and d!564616 c!301159) b!1844686))

(assert (= (and d!564616 (not c!301159)) b!1844687))

(assert (= (and b!1844687 (not res!828482)) b!1844688))

(declare-fun m!2272979 () Bool)

(assert (=> b!1844686 m!2272979))

(declare-fun m!2272981 () Bool)

(assert (=> b!1844688 m!2272981))

(assert (=> b!1844630 d!564616))

(assert (=> d!564600 d!564594))

(declare-fun b!1844701 () Bool)

(declare-fun e!1178859 () List!20413)

(declare-fun e!1178860 () List!20413)

(assert (=> b!1844701 (= e!1178859 e!1178860)))

(declare-fun c!301167 () Bool)

(assert (=> b!1844701 (= c!301167 (is-Leaf!9838 (c!301131 x!368538)))))

(declare-fun bm!115092 () Bool)

(declare-fun c!301168 () Bool)

(assert (=> bm!115092 (= c!301168 c!301167)))

(declare-fun call!115097 () List!20413)

(declare-fun e!1178861 () List!20413)

(assert (=> bm!115092 (= call!115097 (++!5523 e!1178861 (efficientList$default$2!67 (c!301131 x!368538))))))

(declare-fun b!1844702 () Bool)

(declare-fun lt!714653 () List!20413)

(assert (=> b!1844702 (= e!1178861 lt!714653)))

(declare-fun b!1844703 () Bool)

(declare-datatypes ((Unit!35027 0))(
  ( (Unit!35028) )
))
(declare-fun lt!714654 () Unit!35027)

(declare-fun lt!714655 () Unit!35027)

(assert (=> b!1844703 (= lt!714654 lt!714655)))

(declare-fun lt!714657 () List!20413)

(assert (=> b!1844703 (= (++!5523 (++!5523 lt!714657 lt!714653) (efficientList$default$2!67 (c!301131 x!368538))) (++!5523 lt!714657 call!115097))))

(declare-fun lemmaConcatAssociativity!1084 (List!20413 List!20413 List!20413) Unit!35027)

(assert (=> b!1844703 (= lt!714655 (lemmaConcatAssociativity!1084 lt!714657 lt!714653 (efficientList$default$2!67 (c!301131 x!368538))))))

(assert (=> b!1844703 (= lt!714653 (list!8267 (right!16603 (c!301131 x!368538))))))

(assert (=> b!1844703 (= lt!714657 (list!8267 (left!16273 (c!301131 x!368538))))))

(assert (=> b!1844703 (= e!1178860 (efficientList!200 (left!16273 (c!301131 x!368538)) (efficientList!200 (right!16603 (c!301131 x!368538)) (efficientList$default$2!67 (c!301131 x!368538)))))))

(declare-fun b!1844704 () Bool)

(assert (=> b!1844704 (= e!1178860 call!115097)))

(declare-fun b!1844705 () Bool)

(declare-fun efficientList!202 (IArray!13481) List!20413)

(assert (=> b!1844705 (= e!1178861 (efficientList!202 (xs!9614 (c!301131 x!368538))))))

(declare-fun b!1844706 () Bool)

(assert (=> b!1844706 (= e!1178859 (efficientList$default$2!67 (c!301131 x!368538)))))

(declare-fun d!564618 () Bool)

(declare-fun lt!714656 () List!20413)

(assert (=> d!564618 (= lt!714656 (++!5523 (list!8267 (c!301131 x!368538)) (efficientList$default$2!67 (c!301131 x!368538))))))

(assert (=> d!564618 (= lt!714656 e!1178859)))

(declare-fun c!301166 () Bool)

(assert (=> d!564618 (= c!301166 (is-Empty!6738 (c!301131 x!368538)))))

(assert (=> d!564618 (= (efficientList!200 (c!301131 x!368538) (efficientList$default$2!67 (c!301131 x!368538))) lt!714656)))

(assert (= (and d!564618 c!301166) b!1844706))

(assert (= (and d!564618 (not c!301166)) b!1844701))

(assert (= (and b!1844701 c!301167) b!1844704))

(assert (= (and b!1844701 (not c!301167)) b!1844703))

(assert (= (or b!1844704 b!1844703) bm!115092))

(assert (= (and bm!115092 c!301168) b!1844705))

(assert (= (and bm!115092 (not c!301168)) b!1844702))

(assert (=> bm!115092 m!2272935))

(declare-fun m!2272983 () Bool)

(assert (=> bm!115092 m!2272983))

(assert (=> b!1844703 m!2272935))

(declare-fun m!2272985 () Bool)

(assert (=> b!1844703 m!2272985))

(declare-fun m!2272987 () Bool)

(assert (=> b!1844703 m!2272987))

(assert (=> b!1844703 m!2272935))

(declare-fun m!2272989 () Bool)

(assert (=> b!1844703 m!2272989))

(assert (=> b!1844703 m!2272985))

(declare-fun m!2272991 () Bool)

(assert (=> b!1844703 m!2272991))

(declare-fun m!2272993 () Bool)

(assert (=> b!1844703 m!2272993))

(assert (=> b!1844703 m!2272941))

(assert (=> b!1844703 m!2272943))

(assert (=> b!1844703 m!2272935))

(declare-fun m!2272995 () Bool)

(assert (=> b!1844703 m!2272995))

(assert (=> b!1844703 m!2272987))

(declare-fun m!2272997 () Bool)

(assert (=> b!1844705 m!2272997))

(assert (=> d!564618 m!2272927))

(assert (=> d!564618 m!2272927))

(assert (=> d!564618 m!2272935))

(declare-fun m!2272999 () Bool)

(assert (=> d!564618 m!2272999))

(assert (=> d!564600 d!564618))

(declare-fun d!564620 () Bool)

(assert (=> d!564620 (= (efficientList$default$2!67 (c!301131 x!368538)) Nil!20341)))

(assert (=> d!564600 d!564620))

(declare-fun d!564622 () Bool)

(declare-fun fromListB!1197 (List!20413) BalanceConc!13398)

(assert (=> d!564622 (= (seqFromList!2607 (value!114217 (toValue!28 thiss!4669 x!368538))) (fromListB!1197 (value!114217 (toValue!28 thiss!4669 x!368538))))))

(declare-fun bs!408876 () Bool)

(assert (= bs!408876 d!564622))

(declare-fun m!2273001 () Bool)

(assert (=> bs!408876 m!2273001))

(assert (=> b!1844640 d!564622))

(declare-fun e!1178866 () Bool)

(declare-fun tp!521680 () Bool)

(declare-fun tp!521679 () Bool)

(declare-fun b!1844713 () Bool)

(assert (=> b!1844713 (= e!1178866 (and (inv!26626 (left!16273 (c!301131 x!368538))) tp!521679 (inv!26626 (right!16603 (c!301131 x!368538))) tp!521680))))

(declare-fun b!1844714 () Bool)

(declare-fun inv!26632 (IArray!13481) Bool)

(assert (=> b!1844714 (= e!1178866 (inv!26632 (xs!9614 (c!301131 x!368538))))))

(assert (=> b!1844630 (= tp!521671 (and (inv!26626 (c!301131 x!368538)) e!1178866))))

(assert (= (and b!1844630 (is-Node!6738 (c!301131 x!368538))) b!1844713))

(assert (= (and b!1844630 (is-Leaf!9838 (c!301131 x!368538))) b!1844714))

(declare-fun m!2273003 () Bool)

(assert (=> b!1844713 m!2273003))

(declare-fun m!2273005 () Bool)

(assert (=> b!1844713 m!2273005))

(declare-fun m!2273007 () Bool)

(assert (=> b!1844714 m!2273007))

(assert (=> b!1844630 m!2272891))

(push 1)

(assert (not d!564614))

(assert (not d!564622))

(assert (not b!1844686))

(assert (not b!1844663))

(assert (not d!564618))

(assert (not d!564612))

(assert (not b!1844688))

(assert (not b!1844714))

(assert (not b!1844705))

(assert (not b!1844713))

(assert (not b!1844630))

(assert (not b!1844659))

(assert (not b!1844703))

(assert (not b!1844662))

(assert (not bm!115092))

(assert (not b!1844658))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!564636 () Bool)

(declare-fun e!1178891 () Bool)

(assert (=> d!564636 e!1178891))

(declare-fun res!828488 () Bool)

(assert (=> d!564636 (=> (not res!828488) (not e!1178891))))

(declare-fun lt!714675 () BalanceConc!13398)

(assert (=> d!564636 (= res!828488 (= (list!8265 lt!714675) (value!114217 (toValue!28 thiss!4669 x!368538))))))

(declare-fun fromList!463 (List!20413) Conc!6738)

(assert (=> d!564636 (= lt!714675 (BalanceConc!13399 (fromList!463 (value!114217 (toValue!28 thiss!4669 x!368538)))))))

(assert (=> d!564636 (= (fromListB!1197 (value!114217 (toValue!28 thiss!4669 x!368538))) lt!714675)))

(declare-fun b!1844752 () Bool)

(assert (=> b!1844752 (= e!1178891 (isBalanced!2098 (fromList!463 (value!114217 (toValue!28 thiss!4669 x!368538)))))))

(assert (= (and d!564636 res!828488) b!1844752))

(declare-fun m!2273043 () Bool)

(assert (=> d!564636 m!2273043))

(declare-fun m!2273045 () Bool)

(assert (=> d!564636 m!2273045))

(assert (=> b!1844752 m!2273045))

(assert (=> b!1844752 m!2273045))

(declare-fun m!2273047 () Bool)

(assert (=> b!1844752 m!2273047))

(assert (=> d!564622 d!564636))

(declare-fun b!1844762 () Bool)

(declare-fun e!1178897 () List!20413)

(assert (=> b!1844762 (= e!1178897 (Cons!20341 (h!25742 (list!8267 (c!301131 x!368538))) (++!5523 (t!171950 (list!8267 (c!301131 x!368538))) (efficientList$default$2!67 (c!301131 x!368538)))))))

(declare-fun b!1844763 () Bool)

(declare-fun res!828493 () Bool)

(declare-fun e!1178896 () Bool)

(assert (=> b!1844763 (=> (not res!828493) (not e!1178896))))

(declare-fun lt!714678 () List!20413)

(declare-fun size!16107 (List!20413) Int)

(assert (=> b!1844763 (= res!828493 (= (size!16107 lt!714678) (+ (size!16107 (list!8267 (c!301131 x!368538))) (size!16107 (efficientList$default$2!67 (c!301131 x!368538))))))))

(declare-fun b!1844764 () Bool)

(assert (=> b!1844764 (= e!1178896 (or (not (= (efficientList$default$2!67 (c!301131 x!368538)) Nil!20341)) (= lt!714678 (list!8267 (c!301131 x!368538)))))))

(declare-fun b!1844761 () Bool)

(assert (=> b!1844761 (= e!1178897 (efficientList$default$2!67 (c!301131 x!368538)))))

(declare-fun d!564638 () Bool)

(assert (=> d!564638 e!1178896))

(declare-fun res!828494 () Bool)

(assert (=> d!564638 (=> (not res!828494) (not e!1178896))))

(declare-fun content!3026 (List!20413) (Set (_ BitVec 16)))

(assert (=> d!564638 (= res!828494 (= (content!3026 lt!714678) (set.union (content!3026 (list!8267 (c!301131 x!368538))) (content!3026 (efficientList$default$2!67 (c!301131 x!368538))))))))

(assert (=> d!564638 (= lt!714678 e!1178897)))

(declare-fun c!301184 () Bool)

(assert (=> d!564638 (= c!301184 (is-Nil!20341 (list!8267 (c!301131 x!368538))))))

(assert (=> d!564638 (= (++!5523 (list!8267 (c!301131 x!368538)) (efficientList$default$2!67 (c!301131 x!368538))) lt!714678)))

(assert (= (and d!564638 c!301184) b!1844761))

(assert (= (and d!564638 (not c!301184)) b!1844762))

(assert (= (and d!564638 res!828494) b!1844763))

(assert (= (and b!1844763 res!828493) b!1844764))

(assert (=> b!1844762 m!2272935))

(declare-fun m!2273049 () Bool)

(assert (=> b!1844762 m!2273049))

(declare-fun m!2273051 () Bool)

(assert (=> b!1844763 m!2273051))

(assert (=> b!1844763 m!2272927))

(declare-fun m!2273053 () Bool)

(assert (=> b!1844763 m!2273053))

(assert (=> b!1844763 m!2272935))

(declare-fun m!2273055 () Bool)

(assert (=> b!1844763 m!2273055))

(declare-fun m!2273057 () Bool)

(assert (=> d!564638 m!2273057))

(assert (=> d!564638 m!2272927))

(declare-fun m!2273059 () Bool)

(assert (=> d!564638 m!2273059))

(assert (=> d!564638 m!2272935))

(declare-fun m!2273061 () Bool)

(assert (=> d!564638 m!2273061))

(assert (=> d!564618 d!564638))

(assert (=> d!564618 d!564602))

(push 1)

(assert (not d!564614))

(assert (not b!1844686))

(assert (not b!1844663))

(assert (not d!564612))

(assert (not b!1844688))

(assert (not b!1844752))

(assert (not b!1844714))

(assert (not b!1844705))

(assert (not b!1844713))

(assert (not b!1844763))

(assert (not b!1844630))

(assert (not b!1844659))

(assert (not b!1844762))

(assert (not b!1844703))

(assert (not b!1844662))

(assert (not bm!115092))

(assert (not b!1844658))

(assert (not d!564636))

(assert (not d!564638))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

