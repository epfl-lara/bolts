; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!272994 () Bool)

(assert start!272994)

(assert (=> start!272994 true))

(declare-fun b!2816020 () Bool)

(declare-fun e!1780768 () Bool)

(declare-datatypes ((List!33050 0))(
  ( (Nil!32926) (Cons!32926 (h!38346 (_ BitVec 16)) (t!230056 List!33050)) )
))
(declare-datatypes ((IArray!20431 0))(
  ( (IArray!20432 (innerList!10273 List!33050)) )
))
(declare-datatypes ((Conc!10213 0))(
  ( (Node!10213 (left!24861 Conc!10213) (right!25191 Conc!10213) (csize!20656 Int) (cheight!10424 Int)) (Leaf!15560 (xs!13325 IArray!20431) (csize!20657 Int)) (Empty!10213) )
))
(declare-datatypes ((BalanceConc!20064 0))(
  ( (BalanceConc!20065 (c!456561 Conc!10213)) )
))
(declare-fun x!519060 () BalanceConc!20064)

(declare-fun tp!898997 () Bool)

(declare-fun inv!44810 (Conc!10213) Bool)

(assert (=> b!2816020 (= e!1780768 (and (inv!44810 (c!456561 x!519060)) tp!898997))))

(declare-fun inst!1526 () Bool)

(declare-datatypes ((StringLiteralValueInjection!112 0))(
  ( (StringLiteralValueInjection!113) )
))
(declare-fun thiss!3195 () StringLiteralValueInjection!112)

(declare-fun inv!44811 (BalanceConc!20064) Bool)

(declare-fun list!12356 (BalanceConc!20064) List!33050)

(declare-datatypes ((TokenValue!5140 0))(
  ( (FloatLiteralValue!10280 (text!36425 List!33050)) (TokenValueExt!5139 (__x!21961 Int)) (Broken!25700 (value!158246 List!33050)) (Object!5263) (End!5140) (Def!5140) (Underscore!5140) (Match!5140) (Else!5140) (Error!5140) (Case!5140) (If!5140) (Extends!5140) (Abstract!5140) (Class!5140) (Val!5140) (DelimiterValue!10280 (del!5200 List!33050)) (KeywordValue!5146 (value!158247 List!33050)) (CommentValue!10280 (value!158248 List!33050)) (WhitespaceValue!10280 (value!158249 List!33050)) (IndentationValue!5140 (value!158250 List!33050)) (String!36173) (Int32!5140) (Broken!25701 (value!158251 List!33050)) (Boolean!5141) (Unit!46910) (OperatorValue!5143 (op!5200 List!33050)) (IdentifierValue!10280 (value!158252 List!33050)) (IdentifierValue!10281 (value!158253 List!33050)) (WhitespaceValue!10281 (value!158254 List!33050)) (True!10280) (False!10280) (Broken!25702 (value!158255 List!33050)) (Broken!25703 (value!158256 List!33050)) (True!10281) (RightBrace!5140) (RightBracket!5140) (Colon!5140) (Null!5140) (Comma!5140) (LeftBracket!5140) (False!10281) (LeftBrace!5140) (ImaginaryLiteralValue!5140 (text!36426 List!33050)) (StringLiteralValue!15420 (value!158257 List!33050)) (EOFValue!5140 (value!158258 List!33050)) (IdentValue!5140 (value!158259 List!33050)) (DelimiterValue!10281 (value!158260 List!33050)) (DedentValue!5140 (value!158261 List!33050)) (NewLineValue!5140 (value!158262 List!33050)) (IntegerValue!15420 (value!158263 (_ BitVec 32)) (text!36427 List!33050)) (IntegerValue!15421 (value!158264 Int) (text!36428 List!33050)) (Times!5140) (Or!5140) (Equal!5140) (Minus!5140) (Broken!25704 (value!158265 List!33050)) (And!5140) (Div!5140) (LessEqual!5140) (Mod!5140) (Concat!13448) (Not!5140) (Plus!5140) (SpaceValue!5140 (value!158266 List!33050)) (IntegerValue!15422 (value!158267 Int) (text!36429 List!33050)) (StringLiteralValue!15421 (text!36430 List!33050)) (FloatLiteralValue!10281 (text!36431 List!33050)) (BytesLiteralValue!5140 (value!158268 List!33050)) (CommentValue!10281 (value!158269 List!33050)) (StringLiteralValue!15422 (value!158270 List!33050)) (ErrorTokenValue!5140 (msg!5201 List!33050)) )
))
(declare-fun toCharacters!3 (StringLiteralValueInjection!112 TokenValue!5140) BalanceConc!20064)

(declare-fun toValue!10 (StringLiteralValueInjection!112 BalanceConc!20064) TokenValue!5140)

(assert (=> start!272994 (= inst!1526 (=> (and (inv!44811 x!519060) e!1780768) (= (list!12356 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519060))) (list!12356 x!519060))))))

(assert (= start!272994 b!2816020))

(declare-fun m!3247001 () Bool)

(assert (=> b!2816020 m!3247001))

(declare-fun m!3247003 () Bool)

(assert (=> start!272994 m!3247003))

(declare-fun m!3247005 () Bool)

(assert (=> start!272994 m!3247005))

(declare-fun m!3247007 () Bool)

(assert (=> start!272994 m!3247007))

(assert (=> start!272994 m!3247007))

(declare-fun m!3247009 () Bool)

(assert (=> start!272994 m!3247009))

(assert (=> start!272994 m!3247005))

(declare-fun m!3247011 () Bool)

(assert (=> start!272994 m!3247011))

(declare-fun bs!516734 () Bool)

(declare-fun neg-inst!1526 () Bool)

(declare-fun s!229839 () Bool)

(assert (= bs!516734 (and neg-inst!1526 s!229839)))

(assert (=> bs!516734 (=> true (= (list!12356 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519060))) (list!12356 x!519060)))))

(assert (=> m!3247011 m!3247005))

(assert (=> m!3247011 m!3247007))

(assert (=> m!3247011 m!3247009))

(assert (=> m!3247011 s!229839))

(assert (=> m!3247005 s!229839))

(declare-fun bs!516735 () Bool)

(assert (= bs!516735 (and neg-inst!1526 start!272994)))

(assert (=> bs!516735 (= true inst!1526)))

(declare-fun lambda!103250 () Int)

(declare-fun Forall!1223 (Int) Bool)

(assert (=> start!272994 (= (Forall!1223 lambda!103250) inst!1526)))

(assert (=> start!272994 (not (Forall!1223 lambda!103250))))

(assert (=> start!272994 true))

(assert (= neg-inst!1526 inst!1526))

(declare-fun m!3247013 () Bool)

(assert (=> start!272994 m!3247013))

(assert (=> start!272994 m!3247013))

(push 1)

(assert (not bs!516734))

(assert (not start!272994))

(assert (not b!2816020))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!817873 () Bool)

(declare-fun list!12358 (Conc!10213) List!33050)

(assert (=> d!817873 (= (list!12356 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519060))) (list!12358 (c!456561 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519060)))))))

(declare-fun bs!516738 () Bool)

(assert (= bs!516738 d!817873))

(declare-fun m!3247029 () Bool)

(assert (=> bs!516738 m!3247029))

(assert (=> bs!516734 d!817873))

(declare-fun d!817875 () Bool)

(declare-fun c!456566 () Bool)

(assert (=> d!817875 (= c!456566 (is-StringLiteralValue!15421 (toValue!10 thiss!3195 x!519060)))))

(declare-fun e!1780774 () BalanceConc!20064)

(assert (=> d!817875 (= (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519060)) e!1780774)))

(declare-fun b!2816030 () Bool)

(declare-fun seqFromList!3228 (List!33050) BalanceConc!20064)

(assert (=> b!2816030 (= e!1780774 (seqFromList!3228 (text!36430 (toValue!10 thiss!3195 x!519060))))))

(declare-fun b!2816031 () Bool)

(assert (=> b!2816031 (= e!1780774 (BalanceConc!20065 Empty!10213))))

(assert (= (and d!817875 c!456566) b!2816030))

(assert (= (and d!817875 (not c!456566)) b!2816031))

(declare-fun m!3247031 () Bool)

(assert (=> b!2816030 m!3247031))

(assert (=> bs!516734 d!817875))

(declare-fun d!817877 () Bool)

(declare-fun efficientList!403 (BalanceConc!20064) List!33050)

(assert (=> d!817877 (= (toValue!10 thiss!3195 x!519060) (StringLiteralValue!15421 (efficientList!403 x!519060)))))

(declare-fun bs!516739 () Bool)

(assert (= bs!516739 d!817877))

(declare-fun m!3247033 () Bool)

(assert (=> bs!516739 m!3247033))

(assert (=> bs!516734 d!817877))

(declare-fun d!817879 () Bool)

(assert (=> d!817879 (= (list!12356 x!519060) (list!12358 (c!456561 x!519060)))))

(declare-fun bs!516740 () Bool)

(assert (= bs!516740 d!817879))

(declare-fun m!3247035 () Bool)

(assert (=> bs!516740 m!3247035))

(assert (=> bs!516734 d!817879))

(push 1)

(assert (not b!2816020))

(assert (not d!817873))

(assert (not d!817877))

(assert (not d!817879))

(assert (not b!2816030))

(assert (not start!272994))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2816047 () Bool)

(declare-fun e!1780782 () List!33050)

(declare-fun e!1780783 () List!33050)

(assert (=> b!2816047 (= e!1780782 e!1780783)))

(declare-fun c!456576 () Bool)

(assert (=> b!2816047 (= c!456576 (is-Leaf!15560 (c!456561 x!519060)))))

(declare-fun b!2816048 () Bool)

(declare-fun list!12359 (IArray!20431) List!33050)

(assert (=> b!2816048 (= e!1780783 (list!12359 (xs!13325 (c!456561 x!519060))))))

(declare-fun b!2816046 () Bool)

(assert (=> b!2816046 (= e!1780782 Nil!32926)))

(declare-fun b!2816049 () Bool)

(declare-fun ++!8086 (List!33050 List!33050) List!33050)

(assert (=> b!2816049 (= e!1780783 (++!8086 (list!12358 (left!24861 (c!456561 x!519060))) (list!12358 (right!25191 (c!456561 x!519060)))))))

(declare-fun d!817885 () Bool)

(declare-fun c!456575 () Bool)

(assert (=> d!817885 (= c!456575 (is-Empty!10213 (c!456561 x!519060)))))

(assert (=> d!817885 (= (list!12358 (c!456561 x!519060)) e!1780782)))

(assert (= (and d!817885 c!456575) b!2816046))

(assert (= (and d!817885 (not c!456575)) b!2816047))

(assert (= (and b!2816047 c!456576) b!2816048))

(assert (= (and b!2816047 (not c!456576)) b!2816049))

(declare-fun m!3247041 () Bool)

(assert (=> b!2816048 m!3247041))

(declare-fun m!3247043 () Bool)

(assert (=> b!2816049 m!3247043))

(declare-fun m!3247045 () Bool)

(assert (=> b!2816049 m!3247045))

(assert (=> b!2816049 m!3247043))

(assert (=> b!2816049 m!3247045))

(declare-fun m!3247047 () Bool)

(assert (=> b!2816049 m!3247047))

(assert (=> d!817879 d!817885))

(declare-fun b!2816051 () Bool)

(declare-fun e!1780784 () List!33050)

(declare-fun e!1780785 () List!33050)

(assert (=> b!2816051 (= e!1780784 e!1780785)))

(declare-fun c!456578 () Bool)

(assert (=> b!2816051 (= c!456578 (is-Leaf!15560 (c!456561 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519060)))))))

(declare-fun b!2816052 () Bool)

(assert (=> b!2816052 (= e!1780785 (list!12359 (xs!13325 (c!456561 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519060))))))))

(declare-fun b!2816050 () Bool)

(assert (=> b!2816050 (= e!1780784 Nil!32926)))

(declare-fun b!2816053 () Bool)

(assert (=> b!2816053 (= e!1780785 (++!8086 (list!12358 (left!24861 (c!456561 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519060))))) (list!12358 (right!25191 (c!456561 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519060)))))))))

(declare-fun d!817889 () Bool)

(declare-fun c!456577 () Bool)

(assert (=> d!817889 (= c!456577 (is-Empty!10213 (c!456561 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519060)))))))

(assert (=> d!817889 (= (list!12358 (c!456561 (toCharacters!3 thiss!3195 (toValue!10 thiss!3195 x!519060)))) e!1780784)))

(assert (= (and d!817889 c!456577) b!2816050))

(assert (= (and d!817889 (not c!456577)) b!2816051))

(assert (= (and b!2816051 c!456578) b!2816052))

(assert (= (and b!2816051 (not c!456578)) b!2816053))

(declare-fun m!3247049 () Bool)

(assert (=> b!2816052 m!3247049))

(declare-fun m!3247051 () Bool)

(assert (=> b!2816053 m!3247051))

(declare-fun m!3247053 () Bool)

(assert (=> b!2816053 m!3247053))

(assert (=> b!2816053 m!3247051))

(assert (=> b!2816053 m!3247053))

(declare-fun m!3247055 () Bool)

(assert (=> b!2816053 m!3247055))

(assert (=> d!817873 d!817889))

(declare-fun d!817891 () Bool)

(declare-fun lt!1005872 () List!33050)

(assert (=> d!817891 (= lt!1005872 (list!12356 x!519060))))

(declare-fun efficientList!404 (Conc!10213 List!33050) List!33050)

(declare-fun efficientList$default$2!141 (Conc!10213) List!33050)

(assert (=> d!817891 (= lt!1005872 (efficientList!404 (c!456561 x!519060) (efficientList$default$2!141 (c!456561 x!519060))))))

(assert (=> d!817891 (= (efficientList!403 x!519060) lt!1005872)))

(declare-fun bs!516742 () Bool)

(assert (= bs!516742 d!817891))

(assert (=> bs!516742 m!3247011))

(declare-fun m!3247057 () Bool)

(assert (=> bs!516742 m!3247057))

(assert (=> bs!516742 m!3247057))

(declare-fun m!3247059 () Bool)

(assert (=> bs!516742 m!3247059))

(assert (=> d!817877 d!817891))

(push 1)

(assert (not b!2816020))

(assert (not b!2816052))

(assert (not b!2816053))

(assert (not b!2816049))

(assert (not d!817891))

(assert (not b!2816030))

(assert (not b!2816048))

(assert (not start!272994))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!817895 () Bool)

(declare-fun fromListB!1461 (List!33050) BalanceConc!20064)

(assert (=> d!817895 (= (seqFromList!3228 (text!36430 (toValue!10 thiss!3195 x!519060))) (fromListB!1461 (text!36430 (toValue!10 thiss!3195 x!519060))))))

(declare-fun bs!516745 () Bool)

(assert (= bs!516745 d!817895))

(declare-fun m!3247065 () Bool)

(assert (=> bs!516745 m!3247065))

(assert (=> b!2816030 d!817895))

(assert (=> start!272994 d!817879))

(assert (=> start!272994 d!817873))

(declare-fun d!817897 () Bool)

(declare-fun isBalanced!3102 (Conc!10213) Bool)

(assert (=> d!817897 (= (inv!44811 x!519060) (isBalanced!3102 (c!456561 x!519060)))))

(declare-fun bs!516746 () Bool)

(assert (= bs!516746 d!817897))

(declare-fun m!3247067 () Bool)

(assert (=> bs!516746 m!3247067))

(assert (=> start!272994 d!817897))

(assert (=> start!272994 d!817875))

(assert (=> start!272994 d!817877))

(declare-fun d!817899 () Bool)

(declare-fun choose!16657 (Int) Bool)

(assert (=> d!817899 (= (Forall!1223 lambda!103250) (choose!16657 lambda!103250))))

(declare-fun bs!516747 () Bool)

(assert (= bs!516747 d!817899))

(declare-fun m!3247069 () Bool)

(assert (=> bs!516747 m!3247069))

(assert (=> start!272994 d!817899))

(declare-fun d!817901 () Bool)

(declare-fun c!456581 () Bool)

(assert (=> d!817901 (= c!456581 (is-Node!10213 (c!456561 x!519060)))))

(declare-fun e!1780790 () Bool)

(assert (=> d!817901 (= (inv!44810 (c!456561 x!519060)) e!1780790)))

(declare-fun b!2816060 () Bool)

(declare-fun inv!44814 (Conc!10213) Bool)

(assert (=> b!2816060 (= e!1780790 (inv!44814 (c!456561 x!519060)))))

(declare-fun b!2816061 () Bool)

(declare-fun e!1780791 () Bool)

(assert (=> b!2816061 (= e!1780790 e!1780791)))

(declare-fun res!1171947 () Bool)

(assert (=> b!2816061 (= res!1171947 (not (is-Leaf!15560 (c!456561 x!519060))))))

(assert (=> b!2816061 (=> res!1171947 e!1780791)))

(declare-fun b!2816062 () Bool)

(declare-fun inv!44815 (Conc!10213) Bool)

(assert (=> b!2816062 (= e!1780791 (inv!44815 (c!456561 x!519060)))))

(assert (= (and d!817901 c!456581) b!2816060))

(assert (= (and d!817901 (not c!456581)) b!2816061))

(assert (= (and b!2816061 (not res!1171947)) b!2816062))

(declare-fun m!3247071 () Bool)

(assert (=> b!2816060 m!3247071))

(declare-fun m!3247073 () Bool)

(assert (=> b!2816062 m!3247073))

(assert (=> b!2816020 d!817901))

(assert (=> d!817891 d!817879))

(declare-fun b!2816075 () Bool)

(declare-fun e!1780798 () List!33050)

(declare-fun lt!1005886 () List!33050)

(assert (=> b!2816075 (= e!1780798 lt!1005886)))

(declare-fun b!2816076 () Bool)

(declare-fun e!1780799 () List!33050)

(declare-fun e!1780800 () List!33050)

(assert (=> b!2816076 (= e!1780799 e!1780800)))

(declare-fun c!456590 () Bool)

(assert (=> b!2816076 (= c!456590 (is-Leaf!15560 (c!456561 x!519060)))))

(declare-fun b!2816077 () Bool)

(declare-fun efficientList!406 (IArray!20431) List!33050)

(assert (=> b!2816077 (= e!1780798 (efficientList!406 (xs!13325 (c!456561 x!519060))))))

(declare-fun bm!183226 () Bool)

(declare-fun c!456589 () Bool)

(assert (=> bm!183226 (= c!456589 c!456590)))

(declare-fun call!183231 () List!33050)

(declare-fun lt!1005884 () List!33050)

(assert (=> bm!183226 (= call!183231 (++!8086 e!1780798 (ite c!456590 (efficientList$default$2!141 (c!456561 x!519060)) lt!1005884)))))

(declare-fun b!2816078 () Bool)

(assert (=> b!2816078 (= e!1780800 call!183231)))

(declare-fun b!2816079 () Bool)

(assert (=> b!2816079 (= e!1780799 (efficientList$default$2!141 (c!456561 x!519060)))))

(declare-fun b!2816080 () Bool)

(declare-datatypes ((Unit!46912 0))(
  ( (Unit!46913) )
))
(declare-fun lt!1005883 () Unit!46912)

(declare-fun lt!1005887 () Unit!46912)

(assert (=> b!2816080 (= lt!1005883 lt!1005887)))

(assert (=> b!2816080 (= (++!8086 call!183231 (efficientList$default$2!141 (c!456561 x!519060))) (++!8086 lt!1005886 (++!8086 lt!1005884 (efficientList$default$2!141 (c!456561 x!519060)))))))

(declare-fun lemmaConcatAssociativity!1681 (List!33050 List!33050 List!33050) Unit!46912)

(assert (=> b!2816080 (= lt!1005887 (lemmaConcatAssociativity!1681 lt!1005886 lt!1005884 (efficientList$default$2!141 (c!456561 x!519060))))))

(assert (=> b!2816080 (= lt!1005884 (list!12358 (right!25191 (c!456561 x!519060))))))

(assert (=> b!2816080 (= lt!1005886 (list!12358 (left!24861 (c!456561 x!519060))))))

(assert (=> b!2816080 (= e!1780800 (efficientList!404 (left!24861 (c!456561 x!519060)) (efficientList!404 (right!25191 (c!456561 x!519060)) (efficientList$default$2!141 (c!456561 x!519060)))))))

(declare-fun d!817903 () Bool)

(declare-fun lt!1005885 () List!33050)

(assert (=> d!817903 (= lt!1005885 (++!8086 (list!12358 (c!456561 x!519060)) (efficientList$default$2!141 (c!456561 x!519060))))))

(assert (=> d!817903 (= lt!1005885 e!1780799)))

(declare-fun c!456588 () Bool)

(assert (=> d!817903 (= c!456588 (is-Empty!10213 (c!456561 x!519060)))))

(assert (=> d!817903 (= (efficientList!404 (c!456561 x!519060) (efficientList$default$2!141 (c!456561 x!519060))) lt!1005885)))

(assert (= (and d!817903 c!456588) b!2816079))

(assert (= (and d!817903 (not c!456588)) b!2816076))

(assert (= (and b!2816076 c!456590) b!2816078))

(assert (= (and b!2816076 (not c!456590)) b!2816080))

(assert (= (or b!2816078 b!2816080) bm!183226))

(assert (= (and bm!183226 c!456589) b!2816077))

(assert (= (and bm!183226 (not c!456589)) b!2816075))

(declare-fun m!3247075 () Bool)

(assert (=> b!2816077 m!3247075))

(declare-fun m!3247077 () Bool)

(assert (=> bm!183226 m!3247077))

(assert (=> b!2816080 m!3247045))

(declare-fun m!3247079 () Bool)

(assert (=> b!2816080 m!3247079))

(declare-fun m!3247081 () Bool)

(assert (=> b!2816080 m!3247081))

(declare-fun m!3247083 () Bool)

(assert (=> b!2816080 m!3247083))

(declare-fun m!3247085 () Bool)

(assert (=> b!2816080 m!3247085))

(assert (=> b!2816080 m!3247043))

(assert (=> b!2816080 m!3247057))

(declare-fun m!3247087 () Bool)

(assert (=> b!2816080 m!3247087))

(assert (=> b!2816080 m!3247057))

(declare-fun m!3247089 () Bool)

(assert (=> b!2816080 m!3247089))

(assert (=> b!2816080 m!3247057))

(assert (=> b!2816080 m!3247083))

(assert (=> b!2816080 m!3247057))

(assert (=> b!2816080 m!3247079))

(assert (=> d!817903 m!3247035))

(assert (=> d!817903 m!3247035))

(assert (=> d!817903 m!3247057))

(declare-fun m!3247091 () Bool)

(assert (=> d!817903 m!3247091))

(assert (=> d!817891 d!817903))

(declare-fun d!817907 () Bool)

(assert (=> d!817907 (= (efficientList$default$2!141 (c!456561 x!519060)) Nil!32926)))

(assert (=> d!817891 d!817907))

(declare-fun tp!899006 () Bool)

(declare-fun tp!899005 () Bool)

(declare-fun e!1780809 () Bool)

(declare-fun b!2816095 () Bool)

(assert (=> b!2816095 (= e!1780809 (and (inv!44810 (left!24861 (c!456561 x!519060))) tp!899005 (inv!44810 (right!25191 (c!456561 x!519060))) tp!899006))))

(declare-fun b!2816096 () Bool)

(declare-fun inv!44816 (IArray!20431) Bool)

(assert (=> b!2816096 (= e!1780809 (inv!44816 (xs!13325 (c!456561 x!519060))))))

(assert (=> b!2816020 (= tp!898997 (and (inv!44810 (c!456561 x!519060)) e!1780809))))

(assert (= (and b!2816020 (is-Node!10213 (c!456561 x!519060))) b!2816095))

(assert (= (and b!2816020 (is-Leaf!15560 (c!456561 x!519060))) b!2816096))

(declare-fun m!3247093 () Bool)

(assert (=> b!2816095 m!3247093))

(declare-fun m!3247095 () Bool)

(assert (=> b!2816095 m!3247095))

(declare-fun m!3247097 () Bool)

(assert (=> b!2816096 m!3247097))

(assert (=> b!2816020 m!3247001))

(push 1)

(assert (not b!2816020))

(assert (not b!2816080))

(assert (not d!817897))

(assert (not b!2816096))

(assert (not b!2816052))

(assert (not d!817899))

(assert (not b!2816062))

(assert (not b!2816053))

(assert (not b!2816049))

(assert (not b!2816060))

(assert (not d!817903))

(assert (not b!2816048))

(assert (not b!2816095))

(assert (not b!2816077))

(assert (not d!817895))

(assert (not bm!183226))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2816113 () Bool)

(declare-fun e!1780820 () List!33050)

(assert (=> b!2816113 (= e!1780820 (efficientList$default$2!141 (c!456561 x!519060)))))

(declare-fun b!2816116 () Bool)

(declare-fun e!1780819 () Bool)

(declare-fun lt!1005893 () List!33050)

(assert (=> b!2816116 (= e!1780819 (or (not (= (efficientList$default$2!141 (c!456561 x!519060)) Nil!32926)) (= lt!1005893 (list!12358 (c!456561 x!519060)))))))

(declare-fun b!2816114 () Bool)

(assert (=> b!2816114 (= e!1780820 (Cons!32926 (h!38346 (list!12358 (c!456561 x!519060))) (++!8086 (t!230056 (list!12358 (c!456561 x!519060))) (efficientList$default$2!141 (c!456561 x!519060)))))))

(declare-fun b!2816115 () Bool)

(declare-fun res!1171952 () Bool)

(assert (=> b!2816115 (=> (not res!1171952) (not e!1780819))))

(declare-fun size!25677 (List!33050) Int)

(assert (=> b!2816115 (= res!1171952 (= (size!25677 lt!1005893) (+ (size!25677 (list!12358 (c!456561 x!519060))) (size!25677 (efficientList$default$2!141 (c!456561 x!519060))))))))

(declare-fun d!817913 () Bool)

(assert (=> d!817913 e!1780819))

(declare-fun res!1171953 () Bool)

(assert (=> d!817913 (=> (not res!1171953) (not e!1780819))))

(declare-fun content!4600 (List!33050) (Set (_ BitVec 16)))

(assert (=> d!817913 (= res!1171953 (= (content!4600 lt!1005893) (set.union (content!4600 (list!12358 (c!456561 x!519060))) (content!4600 (efficientList$default$2!141 (c!456561 x!519060))))))))

(assert (=> d!817913 (= lt!1005893 e!1780820)))

(declare-fun c!456601 () Bool)

(assert (=> d!817913 (= c!456601 (is-Nil!32926 (list!12358 (c!456561 x!519060))))))

(assert (=> d!817913 (= (++!8086 (list!12358 (c!456561 x!519060)) (efficientList$default$2!141 (c!456561 x!519060))) lt!1005893)))

(assert (= (and d!817913 c!456601) b!2816113))

(assert (= (and d!817913 (not c!456601)) b!2816114))

(assert (= (and d!817913 res!1171953) b!2816115))

(assert (= (and b!2816115 res!1171952) b!2816116))

(assert (=> b!2816114 m!3247057))

(declare-fun m!3247119 () Bool)

(assert (=> b!2816114 m!3247119))

(declare-fun m!3247121 () Bool)

(assert (=> b!2816115 m!3247121))

(assert (=> b!2816115 m!3247035))

(declare-fun m!3247123 () Bool)

(assert (=> b!2816115 m!3247123))

(assert (=> b!2816115 m!3247057))

(declare-fun m!3247125 () Bool)

(assert (=> b!2816115 m!3247125))

(declare-fun m!3247127 () Bool)

(assert (=> d!817913 m!3247127))

(assert (=> d!817913 m!3247035))

(declare-fun m!3247129 () Bool)

(assert (=> d!817913 m!3247129))

(assert (=> d!817913 m!3247057))

(declare-fun m!3247131 () Bool)

(assert (=> d!817913 m!3247131))

(assert (=> d!817903 d!817913))

(assert (=> d!817903 d!817885))

(declare-fun d!817917 () Bool)

(declare-fun e!1780823 () Bool)

(assert (=> d!817917 e!1780823))

(declare-fun res!1171956 () Bool)

(assert (=> d!817917 (=> (not res!1171956) (not e!1780823))))

(declare-fun lt!1005896 () BalanceConc!20064)

(assert (=> d!817917 (= res!1171956 (= (list!12356 lt!1005896) (text!36430 (toValue!10 thiss!3195 x!519060))))))

(declare-fun fromList!573 (List!33050) Conc!10213)

(assert (=> d!817917 (= lt!1005896 (BalanceConc!20065 (fromList!573 (text!36430 (toValue!10 thiss!3195 x!519060)))))))

(assert (=> d!817917 (= (fromListB!1461 (text!36430 (toValue!10 thiss!3195 x!519060))) lt!1005896)))

(declare-fun b!2816119 () Bool)

(assert (=> b!2816119 (= e!1780823 (isBalanced!3102 (fromList!573 (text!36430 (toValue!10 thiss!3195 x!519060)))))))

(assert (= (and d!817917 res!1171956) b!2816119))

(declare-fun m!3247133 () Bool)

(assert (=> d!817917 m!3247133))

(declare-fun m!3247135 () Bool)

(assert (=> d!817917 m!3247135))

(assert (=> b!2816119 m!3247135))

(assert (=> b!2816119 m!3247135))

(declare-fun m!3247137 () Bool)

(assert (=> b!2816119 m!3247137))

(assert (=> d!817895 d!817917))

(push 1)

(assert (not b!2816020))

(assert (not b!2816080))

(assert (not b!2816052))

(assert (not b!2816062))

(assert (not b!2816053))

(assert (not b!2816119))

(assert (not bm!183226))

(assert (not b!2816049))

(assert (not b!2816060))

(assert (not b!2816114))

(assert (not b!2816048))

(assert (not b!2816095))

(assert (not b!2816077))

(assert (not d!817913))

(assert (not d!817897))

(assert (not d!817917))

(assert (not b!2816096))

(assert (not d!817899))

(assert (not b!2816115))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

