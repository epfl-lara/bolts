; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!277358 () Bool)

(assert start!277358)

(declare-fun b!2847827 () Bool)

(declare-fun b_free!82789 () Bool)

(declare-fun b_next!83493 () Bool)

(assert (=> b!2847827 (= b_free!82789 (not b_next!83493))))

(declare-fun tp!914074 () Bool)

(declare-fun b_and!209031 () Bool)

(assert (=> b!2847827 (= tp!914074 b_and!209031)))

(declare-fun b_free!82791 () Bool)

(declare-fun b_next!83495 () Bool)

(assert (=> b!2847827 (= b_free!82791 (not b_next!83495))))

(declare-fun tp!914073 () Bool)

(declare-fun b_and!209033 () Bool)

(assert (=> b!2847827 (= tp!914073 b_and!209033)))

(declare-fun b!2847829 () Bool)

(declare-fun b_free!82793 () Bool)

(declare-fun b_next!83497 () Bool)

(assert (=> b!2847829 (= b_free!82793 (not b_next!83497))))

(declare-fun tp!914068 () Bool)

(declare-fun b_and!209035 () Bool)

(assert (=> b!2847829 (= tp!914068 b_and!209035)))

(declare-fun b_free!82795 () Bool)

(declare-fun b_next!83499 () Bool)

(assert (=> b!2847829 (= b_free!82795 (not b_next!83499))))

(declare-fun tp!914070 () Bool)

(declare-fun b_and!209037 () Bool)

(assert (=> b!2847829 (= tp!914070 b_and!209037)))

(declare-fun res!1183971 () Bool)

(declare-fun e!1804603 () Bool)

(assert (=> start!277358 (=> (not res!1183971) (not e!1804603))))

(declare-datatypes ((LexerInterface!4671 0))(
  ( (LexerInterfaceExt!4668 (__x!22421 Int)) (Lexer!4669) )
))
(declare-fun thiss!10983 () LexerInterface!4671)

(get-info :version)

(assert (=> start!277358 (= res!1183971 ((_ is Lexer!4669) thiss!10983))))

(assert (=> start!277358 e!1804603))

(assert (=> start!277358 true))

(declare-fun e!1804598 () Bool)

(assert (=> start!277358 e!1804598))

(declare-fun e!1804600 () Bool)

(assert (=> start!277358 e!1804600))

(declare-fun e!1804599 () Bool)

(assert (=> b!2847827 (= e!1804599 (and tp!914074 tp!914073))))

(declare-fun b!2847828 () Bool)

(declare-fun res!1183973 () Bool)

(assert (=> b!2847828 (=> (not res!1183973) (not e!1804603))))

(declare-datatypes ((List!33954 0))(
  ( (Nil!33830) (Cons!33830 (h!39250 (_ BitVec 16)) (t!232979 List!33954)) )
))
(declare-datatypes ((TokenValue!5312 0))(
  ( (FloatLiteralValue!10624 (text!37629 List!33954)) (TokenValueExt!5311 (__x!22422 Int)) (Broken!26560 (value!163240 List!33954)) (Object!5435) (End!5312) (Def!5312) (Underscore!5312) (Match!5312) (Else!5312) (Error!5312) (Case!5312) (If!5312) (Extends!5312) (Abstract!5312) (Class!5312) (Val!5312) (DelimiterValue!10624 (del!5372 List!33954)) (KeywordValue!5318 (value!163241 List!33954)) (CommentValue!10624 (value!163242 List!33954)) (WhitespaceValue!10624 (value!163243 List!33954)) (IndentationValue!5312 (value!163244 List!33954)) (String!37173) (Int32!5312) (Broken!26561 (value!163245 List!33954)) (Boolean!5313) (Unit!47578) (OperatorValue!5315 (op!5372 List!33954)) (IdentifierValue!10624 (value!163246 List!33954)) (IdentifierValue!10625 (value!163247 List!33954)) (WhitespaceValue!10625 (value!163248 List!33954)) (True!10624) (False!10624) (Broken!26562 (value!163249 List!33954)) (Broken!26563 (value!163250 List!33954)) (True!10625) (RightBrace!5312) (RightBracket!5312) (Colon!5312) (Null!5312) (Comma!5312) (LeftBracket!5312) (False!10625) (LeftBrace!5312) (ImaginaryLiteralValue!5312 (text!37630 List!33954)) (StringLiteralValue!15936 (value!163251 List!33954)) (EOFValue!5312 (value!163252 List!33954)) (IdentValue!5312 (value!163253 List!33954)) (DelimiterValue!10625 (value!163254 List!33954)) (DedentValue!5312 (value!163255 List!33954)) (NewLineValue!5312 (value!163256 List!33954)) (IntegerValue!15936 (value!163257 (_ BitVec 32)) (text!37631 List!33954)) (IntegerValue!15937 (value!163258 Int) (text!37632 List!33954)) (Times!5312) (Or!5312) (Equal!5312) (Minus!5312) (Broken!26564 (value!163259 List!33954)) (And!5312) (Div!5312) (LessEqual!5312) (Mod!5312) (Concat!13809) (Not!5312) (Plus!5312) (SpaceValue!5312 (value!163260 List!33954)) (IntegerValue!15938 (value!163261 Int) (text!37633 List!33954)) (StringLiteralValue!15937 (text!37634 List!33954)) (FloatLiteralValue!10625 (text!37635 List!33954)) (BytesLiteralValue!5312 (value!163262 List!33954)) (CommentValue!10625 (value!163263 List!33954)) (StringLiteralValue!15938 (value!163264 List!33954)) (ErrorTokenValue!5312 (msg!5373 List!33954)) )
))
(declare-datatypes ((String!37174 0))(
  ( (String!37175 (value!163265 String)) )
))
(declare-datatypes ((C!17176 0))(
  ( (C!17177 (val!10622 Int)) )
))
(declare-datatypes ((List!33955 0))(
  ( (Nil!33831) (Cons!33831 (h!39251 C!17176) (t!232980 List!33955)) )
))
(declare-datatypes ((IArray!20985 0))(
  ( (IArray!20986 (innerList!10550 List!33955)) )
))
(declare-datatypes ((Regex!8497 0))(
  ( (ElementMatch!8497 (c!459464 C!17176)) (Concat!13810 (regOne!17506 Regex!8497) (regTwo!17506 Regex!8497)) (EmptyExpr!8497) (Star!8497 (reg!8826 Regex!8497)) (EmptyLang!8497) (Union!8497 (regOne!17507 Regex!8497) (regTwo!17507 Regex!8497)) )
))
(declare-datatypes ((Conc!10490 0))(
  ( (Node!10490 (left!25465 Conc!10490) (right!25795 Conc!10490) (csize!21210 Int) (cheight!10701 Int)) (Leaf!15962 (xs!13608 IArray!20985) (csize!21211 Int)) (Empty!10490) )
))
(declare-datatypes ((BalanceConc!20618 0))(
  ( (BalanceConc!20619 (c!459465 Conc!10490)) )
))
(declare-datatypes ((TokenValueInjection!10052 0))(
  ( (TokenValueInjection!10053 (toValue!7138 Int) (toChars!6997 Int)) )
))
(declare-datatypes ((Rule!9964 0))(
  ( (Rule!9965 (regex!5082 Regex!8497) (tag!5586 String!37174) (isSeparator!5082 Bool) (transformation!5082 TokenValueInjection!10052)) )
))
(declare-datatypes ((List!33956 0))(
  ( (Nil!33832) (Cons!33832 (h!39252 Rule!9964) (t!232981 List!33956)) )
))
(declare-fun rs!188 () List!33956)

(declare-fun rulesValidInductive!1747 (LexerInterface!4671 List!33956) Bool)

(assert (=> b!2847828 (= res!1183973 (rulesValidInductive!1747 thiss!10983 rs!188))))

(declare-fun e!1804601 () Bool)

(assert (=> b!2847829 (= e!1804601 (and tp!914068 tp!914070))))

(declare-fun b!2847830 () Bool)

(declare-fun e!1804602 () Bool)

(declare-fun tp!914071 () Bool)

(assert (=> b!2847830 (= e!1804600 (and e!1804602 tp!914071))))

(declare-fun b!2847831 () Bool)

(declare-fun res!1183972 () Bool)

(assert (=> b!2847831 (=> (not res!1183972) (not e!1804603))))

(declare-fun rules!1039 () List!33956)

(assert (=> b!2847831 (= res!1183972 (rulesValidInductive!1747 thiss!10983 rules!1039))))

(declare-fun tp!914072 () Bool)

(declare-fun b!2847832 () Bool)

(declare-fun inv!45865 (String!37174) Bool)

(declare-fun inv!45867 (TokenValueInjection!10052) Bool)

(assert (=> b!2847832 (= e!1804602 (and tp!914072 (inv!45865 (tag!5586 (h!39252 rs!188))) (inv!45867 (transformation!5082 (h!39252 rs!188))) e!1804601))))

(declare-fun b!2847833 () Bool)

(declare-fun tp!914067 () Bool)

(declare-fun e!1804606 () Bool)

(assert (=> b!2847833 (= e!1804606 (and tp!914067 (inv!45865 (tag!5586 (h!39252 rules!1039))) (inv!45867 (transformation!5082 (h!39252 rules!1039))) e!1804599))))

(declare-fun b!2847834 () Bool)

(declare-fun ListPrimitiveSize!235 (List!33956) Int)

(assert (=> b!2847834 (= e!1804603 (< (ListPrimitiveSize!235 rs!188) 0))))

(declare-fun b!2847835 () Bool)

(declare-fun tp!914069 () Bool)

(assert (=> b!2847835 (= e!1804598 (and e!1804606 tp!914069))))

(assert (= (and start!277358 res!1183971) b!2847831))

(assert (= (and b!2847831 res!1183972) b!2847828))

(assert (= (and b!2847828 res!1183973) b!2847834))

(assert (= b!2847833 b!2847827))

(assert (= b!2847835 b!2847833))

(assert (= (and start!277358 ((_ is Cons!33832) rules!1039)) b!2847835))

(assert (= b!2847832 b!2847829))

(assert (= b!2847830 b!2847832))

(assert (= (and start!277358 ((_ is Cons!33832) rs!188)) b!2847830))

(declare-fun m!3275135 () Bool)

(assert (=> b!2847828 m!3275135))

(declare-fun m!3275137 () Bool)

(assert (=> b!2847833 m!3275137))

(declare-fun m!3275139 () Bool)

(assert (=> b!2847833 m!3275139))

(declare-fun m!3275141 () Bool)

(assert (=> b!2847834 m!3275141))

(declare-fun m!3275143 () Bool)

(assert (=> b!2847832 m!3275143))

(declare-fun m!3275145 () Bool)

(assert (=> b!2847832 m!3275145))

(declare-fun m!3275147 () Bool)

(assert (=> b!2847831 m!3275147))

(check-sat (not b_next!83493) (not b!2847835) (not b!2847834) b_and!209035 (not b!2847828) (not b_next!83499) (not b!2847830) (not b_next!83495) b_and!209031 (not b!2847831) (not b!2847833) b_and!209033 (not b!2847832) (not b_next!83497) b_and!209037)
(check-sat b_and!209033 (not b_next!83493) b_and!209035 (not b_next!83499) (not b_next!83495) b_and!209031 (not b_next!83497) b_and!209037)
(get-model)

(declare-fun d!825566 () Bool)

(assert (=> d!825566 true))

(declare-fun lt!1012989 () Bool)

(declare-fun lambda!104568 () Int)

(declare-fun forall!6943 (List!33956 Int) Bool)

(assert (=> d!825566 (= lt!1012989 (forall!6943 rs!188 lambda!104568))))

(declare-fun e!1804615 () Bool)

(assert (=> d!825566 (= lt!1012989 e!1804615)))

(declare-fun res!1183982 () Bool)

(assert (=> d!825566 (=> res!1183982 e!1804615)))

(assert (=> d!825566 (= res!1183982 (not ((_ is Cons!33832) rs!188)))))

(assert (=> d!825566 (= (rulesValidInductive!1747 thiss!10983 rs!188) lt!1012989)))

(declare-fun b!2847844 () Bool)

(declare-fun e!1804616 () Bool)

(assert (=> b!2847844 (= e!1804615 e!1804616)))

(declare-fun res!1183983 () Bool)

(assert (=> b!2847844 (=> (not res!1183983) (not e!1804616))))

(declare-fun ruleValid!1609 (LexerInterface!4671 Rule!9964) Bool)

(assert (=> b!2847844 (= res!1183983 (ruleValid!1609 thiss!10983 (h!39252 rs!188)))))

(declare-fun b!2847845 () Bool)

(assert (=> b!2847845 (= e!1804616 (rulesValidInductive!1747 thiss!10983 (t!232981 rs!188)))))

(assert (= (and d!825566 (not res!1183982)) b!2847844))

(assert (= (and b!2847844 res!1183983) b!2847845))

(declare-fun m!3275149 () Bool)

(assert (=> d!825566 m!3275149))

(declare-fun m!3275151 () Bool)

(assert (=> b!2847844 m!3275151))

(declare-fun m!3275153 () Bool)

(assert (=> b!2847845 m!3275153))

(assert (=> b!2847828 d!825566))

(declare-fun d!825570 () Bool)

(assert (=> d!825570 (= (inv!45865 (tag!5586 (h!39252 rules!1039))) (= (mod (str.len (value!163265 (tag!5586 (h!39252 rules!1039)))) 2) 0))))

(assert (=> b!2847833 d!825570))

(declare-fun d!825572 () Bool)

(declare-fun res!1183986 () Bool)

(declare-fun e!1804619 () Bool)

(assert (=> d!825572 (=> (not res!1183986) (not e!1804619))))

(declare-fun semiInverseModEq!2120 (Int Int) Bool)

(assert (=> d!825572 (= res!1183986 (semiInverseModEq!2120 (toChars!6997 (transformation!5082 (h!39252 rules!1039))) (toValue!7138 (transformation!5082 (h!39252 rules!1039)))))))

(assert (=> d!825572 (= (inv!45867 (transformation!5082 (h!39252 rules!1039))) e!1804619)))

(declare-fun b!2847850 () Bool)

(declare-fun equivClasses!2019 (Int Int) Bool)

(assert (=> b!2847850 (= e!1804619 (equivClasses!2019 (toChars!6997 (transformation!5082 (h!39252 rules!1039))) (toValue!7138 (transformation!5082 (h!39252 rules!1039)))))))

(assert (= (and d!825572 res!1183986) b!2847850))

(declare-fun m!3275155 () Bool)

(assert (=> d!825572 m!3275155))

(declare-fun m!3275157 () Bool)

(assert (=> b!2847850 m!3275157))

(assert (=> b!2847833 d!825572))

(declare-fun d!825574 () Bool)

(declare-fun lt!1012992 () Int)

(assert (=> d!825574 (>= lt!1012992 0)))

(declare-fun e!1804622 () Int)

(assert (=> d!825574 (= lt!1012992 e!1804622)))

(declare-fun c!459468 () Bool)

(assert (=> d!825574 (= c!459468 ((_ is Nil!33832) rs!188))))

(assert (=> d!825574 (= (ListPrimitiveSize!235 rs!188) lt!1012992)))

(declare-fun b!2847855 () Bool)

(assert (=> b!2847855 (= e!1804622 0)))

(declare-fun b!2847856 () Bool)

(assert (=> b!2847856 (= e!1804622 (+ 1 (ListPrimitiveSize!235 (t!232981 rs!188))))))

(assert (= (and d!825574 c!459468) b!2847855))

(assert (= (and d!825574 (not c!459468)) b!2847856))

(declare-fun m!3275159 () Bool)

(assert (=> b!2847856 m!3275159))

(assert (=> b!2847834 d!825574))

(declare-fun bs!519993 () Bool)

(declare-fun d!825576 () Bool)

(assert (= bs!519993 (and d!825576 d!825566)))

(declare-fun lambda!104569 () Int)

(assert (=> bs!519993 (= lambda!104569 lambda!104568)))

(assert (=> d!825576 true))

(declare-fun lt!1012993 () Bool)

(assert (=> d!825576 (= lt!1012993 (forall!6943 rules!1039 lambda!104569))))

(declare-fun e!1804623 () Bool)

(assert (=> d!825576 (= lt!1012993 e!1804623)))

(declare-fun res!1183987 () Bool)

(assert (=> d!825576 (=> res!1183987 e!1804623)))

(assert (=> d!825576 (= res!1183987 (not ((_ is Cons!33832) rules!1039)))))

(assert (=> d!825576 (= (rulesValidInductive!1747 thiss!10983 rules!1039) lt!1012993)))

(declare-fun b!2847857 () Bool)

(declare-fun e!1804624 () Bool)

(assert (=> b!2847857 (= e!1804623 e!1804624)))

(declare-fun res!1183988 () Bool)

(assert (=> b!2847857 (=> (not res!1183988) (not e!1804624))))

(assert (=> b!2847857 (= res!1183988 (ruleValid!1609 thiss!10983 (h!39252 rules!1039)))))

(declare-fun b!2847858 () Bool)

(assert (=> b!2847858 (= e!1804624 (rulesValidInductive!1747 thiss!10983 (t!232981 rules!1039)))))

(assert (= (and d!825576 (not res!1183987)) b!2847857))

(assert (= (and b!2847857 res!1183988) b!2847858))

(declare-fun m!3275161 () Bool)

(assert (=> d!825576 m!3275161))

(declare-fun m!3275163 () Bool)

(assert (=> b!2847857 m!3275163))

(declare-fun m!3275165 () Bool)

(assert (=> b!2847858 m!3275165))

(assert (=> b!2847831 d!825576))

(declare-fun d!825578 () Bool)

(assert (=> d!825578 (= (inv!45865 (tag!5586 (h!39252 rs!188))) (= (mod (str.len (value!163265 (tag!5586 (h!39252 rs!188)))) 2) 0))))

(assert (=> b!2847832 d!825578))

(declare-fun d!825580 () Bool)

(declare-fun res!1183989 () Bool)

(declare-fun e!1804625 () Bool)

(assert (=> d!825580 (=> (not res!1183989) (not e!1804625))))

(assert (=> d!825580 (= res!1183989 (semiInverseModEq!2120 (toChars!6997 (transformation!5082 (h!39252 rs!188))) (toValue!7138 (transformation!5082 (h!39252 rs!188)))))))

(assert (=> d!825580 (= (inv!45867 (transformation!5082 (h!39252 rs!188))) e!1804625)))

(declare-fun b!2847859 () Bool)

(assert (=> b!2847859 (= e!1804625 (equivClasses!2019 (toChars!6997 (transformation!5082 (h!39252 rs!188))) (toValue!7138 (transformation!5082 (h!39252 rs!188)))))))

(assert (= (and d!825580 res!1183989) b!2847859))

(declare-fun m!3275167 () Bool)

(assert (=> d!825580 m!3275167))

(declare-fun m!3275169 () Bool)

(assert (=> b!2847859 m!3275169))

(assert (=> b!2847832 d!825580))

(declare-fun e!1804628 () Bool)

(assert (=> b!2847833 (= tp!914067 e!1804628)))

(declare-fun b!2847873 () Bool)

(declare-fun tp!914087 () Bool)

(declare-fun tp!914088 () Bool)

(assert (=> b!2847873 (= e!1804628 (and tp!914087 tp!914088))))

(declare-fun b!2847870 () Bool)

(declare-fun tp_is_empty!14733 () Bool)

(assert (=> b!2847870 (= e!1804628 tp_is_empty!14733)))

(declare-fun b!2847872 () Bool)

(declare-fun tp!914089 () Bool)

(assert (=> b!2847872 (= e!1804628 tp!914089)))

(declare-fun b!2847871 () Bool)

(declare-fun tp!914086 () Bool)

(declare-fun tp!914085 () Bool)

(assert (=> b!2847871 (= e!1804628 (and tp!914086 tp!914085))))

(assert (= (and b!2847833 ((_ is ElementMatch!8497) (regex!5082 (h!39252 rules!1039)))) b!2847870))

(assert (= (and b!2847833 ((_ is Concat!13810) (regex!5082 (h!39252 rules!1039)))) b!2847871))

(assert (= (and b!2847833 ((_ is Star!8497) (regex!5082 (h!39252 rules!1039)))) b!2847872))

(assert (= (and b!2847833 ((_ is Union!8497) (regex!5082 (h!39252 rules!1039)))) b!2847873))

(declare-fun b!2847884 () Bool)

(declare-fun b_free!82797 () Bool)

(declare-fun b_next!83501 () Bool)

(assert (=> b!2847884 (= b_free!82797 (not b_next!83501))))

(declare-fun tp!914100 () Bool)

(declare-fun b_and!209039 () Bool)

(assert (=> b!2847884 (= tp!914100 b_and!209039)))

(declare-fun b_free!82799 () Bool)

(declare-fun b_next!83503 () Bool)

(assert (=> b!2847884 (= b_free!82799 (not b_next!83503))))

(declare-fun tp!914101 () Bool)

(declare-fun b_and!209041 () Bool)

(assert (=> b!2847884 (= tp!914101 b_and!209041)))

(declare-fun e!1804640 () Bool)

(assert (=> b!2847884 (= e!1804640 (and tp!914100 tp!914101))))

(declare-fun e!1804637 () Bool)

(declare-fun tp!914098 () Bool)

(declare-fun b!2847883 () Bool)

(assert (=> b!2847883 (= e!1804637 (and tp!914098 (inv!45865 (tag!5586 (h!39252 (t!232981 rules!1039)))) (inv!45867 (transformation!5082 (h!39252 (t!232981 rules!1039)))) e!1804640))))

(declare-fun b!2847882 () Bool)

(declare-fun e!1804639 () Bool)

(declare-fun tp!914099 () Bool)

(assert (=> b!2847882 (= e!1804639 (and e!1804637 tp!914099))))

(assert (=> b!2847835 (= tp!914069 e!1804639)))

(assert (= b!2847883 b!2847884))

(assert (= b!2847882 b!2847883))

(assert (= (and b!2847835 ((_ is Cons!33832) (t!232981 rules!1039))) b!2847882))

(declare-fun m!3275171 () Bool)

(assert (=> b!2847883 m!3275171))

(declare-fun m!3275173 () Bool)

(assert (=> b!2847883 m!3275173))

(declare-fun b!2847887 () Bool)

(declare-fun b_free!82801 () Bool)

(declare-fun b_next!83505 () Bool)

(assert (=> b!2847887 (= b_free!82801 (not b_next!83505))))

(declare-fun tp!914104 () Bool)

(declare-fun b_and!209043 () Bool)

(assert (=> b!2847887 (= tp!914104 b_and!209043)))

(declare-fun b_free!82803 () Bool)

(declare-fun b_next!83507 () Bool)

(assert (=> b!2847887 (= b_free!82803 (not b_next!83507))))

(declare-fun tp!914105 () Bool)

(declare-fun b_and!209045 () Bool)

(assert (=> b!2847887 (= tp!914105 b_and!209045)))

(declare-fun e!1804644 () Bool)

(assert (=> b!2847887 (= e!1804644 (and tp!914104 tp!914105))))

(declare-fun e!1804641 () Bool)

(declare-fun tp!914102 () Bool)

(declare-fun b!2847886 () Bool)

(assert (=> b!2847886 (= e!1804641 (and tp!914102 (inv!45865 (tag!5586 (h!39252 (t!232981 rs!188)))) (inv!45867 (transformation!5082 (h!39252 (t!232981 rs!188)))) e!1804644))))

(declare-fun b!2847885 () Bool)

(declare-fun e!1804643 () Bool)

(declare-fun tp!914103 () Bool)

(assert (=> b!2847885 (= e!1804643 (and e!1804641 tp!914103))))

(assert (=> b!2847830 (= tp!914071 e!1804643)))

(assert (= b!2847886 b!2847887))

(assert (= b!2847885 b!2847886))

(assert (= (and b!2847830 ((_ is Cons!33832) (t!232981 rs!188))) b!2847885))

(declare-fun m!3275175 () Bool)

(assert (=> b!2847886 m!3275175))

(declare-fun m!3275177 () Bool)

(assert (=> b!2847886 m!3275177))

(declare-fun e!1804645 () Bool)

(assert (=> b!2847832 (= tp!914072 e!1804645)))

(declare-fun b!2847891 () Bool)

(declare-fun tp!914108 () Bool)

(declare-fun tp!914109 () Bool)

(assert (=> b!2847891 (= e!1804645 (and tp!914108 tp!914109))))

(declare-fun b!2847888 () Bool)

(assert (=> b!2847888 (= e!1804645 tp_is_empty!14733)))

(declare-fun b!2847890 () Bool)

(declare-fun tp!914110 () Bool)

(assert (=> b!2847890 (= e!1804645 tp!914110)))

(declare-fun b!2847889 () Bool)

(declare-fun tp!914107 () Bool)

(declare-fun tp!914106 () Bool)

(assert (=> b!2847889 (= e!1804645 (and tp!914107 tp!914106))))

(assert (= (and b!2847832 ((_ is ElementMatch!8497) (regex!5082 (h!39252 rs!188)))) b!2847888))

(assert (= (and b!2847832 ((_ is Concat!13810) (regex!5082 (h!39252 rs!188)))) b!2847889))

(assert (= (and b!2847832 ((_ is Star!8497) (regex!5082 (h!39252 rs!188)))) b!2847890))

(assert (= (and b!2847832 ((_ is Union!8497) (regex!5082 (h!39252 rs!188)))) b!2847891))

(check-sat (not b!2847882) (not b!2847873) (not b!2847850) b_and!209041 (not d!825566) (not b!2847890) (not b!2847885) (not b!2847871) b_and!209035 (not b!2847886) (not b_next!83499) b_and!209039 (not b_next!83495) (not b!2847845) (not b_next!83507) (not b!2847857) b_and!209033 (not b_next!83493) (not b!2847859) (not b!2847883) (not b!2847844) (not d!825580) (not b!2847889) (not d!825572) (not b_next!83505) (not b!2847858) (not b_next!83501) b_and!209045 (not b!2847856) (not b!2847891) (not b!2847872) (not b_next!83497) b_and!209037 tp_is_empty!14733 (not b_next!83503) b_and!209043 b_and!209031 (not d!825576))
(check-sat (not b_next!83493) b_and!209041 (not b_next!83505) b_and!209035 (not b_next!83499) b_and!209039 (not b_next!83495) b_and!209031 (not b_next!83507) b_and!209033 (not b_next!83501) b_and!209045 (not b_next!83497) b_and!209037 (not b_next!83503) b_and!209043)
