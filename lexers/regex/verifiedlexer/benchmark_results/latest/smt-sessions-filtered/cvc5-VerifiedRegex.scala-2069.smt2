; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!105180 () Bool)

(assert start!105180)

(declare-fun b!1185761 () Bool)

(declare-fun b_free!28469 () Bool)

(declare-fun b_next!29173 () Bool)

(assert (=> b!1185761 (= b_free!28469 (not b_next!29173))))

(declare-fun tp!338052 () Bool)

(declare-fun b_and!81589 () Bool)

(assert (=> b!1185761 (= tp!338052 b_and!81589)))

(declare-fun b_free!28471 () Bool)

(declare-fun b_next!29175 () Bool)

(assert (=> b!1185761 (= b_free!28471 (not b_next!29175))))

(declare-fun tp!338047 () Bool)

(declare-fun b_and!81591 () Bool)

(assert (=> b!1185761 (= tp!338047 b_and!81591)))

(declare-fun b!1185764 () Bool)

(declare-fun b_free!28473 () Bool)

(declare-fun b_next!29177 () Bool)

(assert (=> b!1185764 (= b_free!28473 (not b_next!29177))))

(declare-fun tp!338055 () Bool)

(declare-fun b_and!81593 () Bool)

(assert (=> b!1185764 (= tp!338055 b_and!81593)))

(declare-fun b_free!28475 () Bool)

(declare-fun b_next!29179 () Bool)

(assert (=> b!1185764 (= b_free!28475 (not b_next!29179))))

(declare-fun tp!338050 () Bool)

(declare-fun b_and!81595 () Bool)

(assert (=> b!1185764 (= tp!338050 b_and!81595)))

(declare-datatypes ((C!7014 0))(
  ( (C!7015 (val!3803 Int)) )
))
(declare-datatypes ((List!11908 0))(
  ( (Nil!11884) (Cons!11884 (h!17285 C!7014) (t!111866 List!11908)) )
))
(declare-datatypes ((IArray!7789 0))(
  ( (IArray!7790 (innerList!3952 List!11908)) )
))
(declare-datatypes ((Conc!3892 0))(
  ( (Node!3892 (left!10345 Conc!3892) (right!10675 Conc!3892) (csize!8014 Int) (cheight!4103 Int)) (Leaf!5962 (xs!6597 IArray!7789) (csize!8015 Int)) (Empty!3892) )
))
(declare-datatypes ((List!11909 0))(
  ( (Nil!11885) (Cons!11885 (h!17286 (_ BitVec 16)) (t!111867 List!11909)) )
))
(declare-datatypes ((BalanceConc!7806 0))(
  ( (BalanceConc!7807 (c!197132 Conc!3892)) )
))
(declare-datatypes ((TokenValue!2144 0))(
  ( (FloatLiteralValue!4288 (text!15453 List!11909)) (TokenValueExt!2143 (__x!7999 Int)) (Broken!10720 (value!67255 List!11909)) (Object!2167) (End!2144) (Def!2144) (Underscore!2144) (Match!2144) (Else!2144) (Error!2144) (Case!2144) (If!2144) (Extends!2144) (Abstract!2144) (Class!2144) (Val!2144) (DelimiterValue!4288 (del!2204 List!11909)) (KeywordValue!2150 (value!67256 List!11909)) (CommentValue!4288 (value!67257 List!11909)) (WhitespaceValue!4288 (value!67258 List!11909)) (IndentationValue!2144 (value!67259 List!11909)) (String!14389) (Int32!2144) (Broken!10721 (value!67260 List!11909)) (Boolean!2145) (Unit!18242) (OperatorValue!2147 (op!2204 List!11909)) (IdentifierValue!4288 (value!67261 List!11909)) (IdentifierValue!4289 (value!67262 List!11909)) (WhitespaceValue!4289 (value!67263 List!11909)) (True!4288) (False!4288) (Broken!10722 (value!67264 List!11909)) (Broken!10723 (value!67265 List!11909)) (True!4289) (RightBrace!2144) (RightBracket!2144) (Colon!2144) (Null!2144) (Comma!2144) (LeftBracket!2144) (False!4289) (LeftBrace!2144) (ImaginaryLiteralValue!2144 (text!15454 List!11909)) (StringLiteralValue!6432 (value!67266 List!11909)) (EOFValue!2144 (value!67267 List!11909)) (IdentValue!2144 (value!67268 List!11909)) (DelimiterValue!4289 (value!67269 List!11909)) (DedentValue!2144 (value!67270 List!11909)) (NewLineValue!2144 (value!67271 List!11909)) (IntegerValue!6432 (value!67272 (_ BitVec 32)) (text!15455 List!11909)) (IntegerValue!6433 (value!67273 Int) (text!15456 List!11909)) (Times!2144) (Or!2144) (Equal!2144) (Minus!2144) (Broken!10724 (value!67274 List!11909)) (And!2144) (Div!2144) (LessEqual!2144) (Mod!2144) (Concat!5492) (Not!2144) (Plus!2144) (SpaceValue!2144 (value!67275 List!11909)) (IntegerValue!6434 (value!67276 Int) (text!15457 List!11909)) (StringLiteralValue!6433 (text!15458 List!11909)) (FloatLiteralValue!4289 (text!15459 List!11909)) (BytesLiteralValue!2144 (value!67277 List!11909)) (CommentValue!4289 (value!67278 List!11909)) (StringLiteralValue!6434 (value!67279 List!11909)) (ErrorTokenValue!2144 (msg!2205 List!11909)) )
))
(declare-datatypes ((Regex!3348 0))(
  ( (ElementMatch!3348 (c!197133 C!7014)) (Concat!5493 (regOne!7208 Regex!3348) (regTwo!7208 Regex!3348)) (EmptyExpr!3348) (Star!3348 (reg!3677 Regex!3348)) (EmptyLang!3348) (Union!3348 (regOne!7209 Regex!3348) (regTwo!7209 Regex!3348)) )
))
(declare-datatypes ((String!14390 0))(
  ( (String!14391 (value!67280 String)) )
))
(declare-datatypes ((TokenValueInjection!3988 0))(
  ( (TokenValueInjection!3989 (toValue!3195 Int) (toChars!3054 Int)) )
))
(declare-datatypes ((Rule!3956 0))(
  ( (Rule!3957 (regex!2078 Regex!3348) (tag!2340 String!14390) (isSeparator!2078 Bool) (transformation!2078 TokenValueInjection!3988)) )
))
(declare-datatypes ((List!11910 0))(
  ( (Nil!11886) (Cons!11886 (h!17287 Rule!3956) (t!111868 List!11910)) )
))
(declare-fun rules!4386 () List!11910)

(declare-fun e!761722 () Bool)

(declare-fun e!761725 () Bool)

(declare-fun tp!338049 () Bool)

(declare-fun b!1185760 () Bool)

(declare-fun inv!15712 (String!14390) Bool)

(declare-fun inv!15715 (TokenValueInjection!3988) Bool)

(assert (=> b!1185760 (= e!761725 (and tp!338049 (inv!15712 (tag!2340 (h!17287 rules!4386))) (inv!15715 (transformation!2078 (h!17287 rules!4386))) e!761722))))

(declare-fun e!761723 () Bool)

(assert (=> b!1185761 (= e!761723 (and tp!338052 tp!338047))))

(declare-fun b!1185762 () Bool)

(declare-fun res!535931 () Bool)

(declare-fun e!761716 () Bool)

(assert (=> b!1185762 (=> (not res!535931) (not e!761716))))

(declare-datatypes ((LexerInterface!1773 0))(
  ( (LexerInterfaceExt!1770 (__x!8000 Int)) (Lexer!1771) )
))
(declare-fun thiss!27592 () LexerInterface!1773)

(declare-fun rulesInvariant!1647 (LexerInterface!1773 List!11910) Bool)

(assert (=> b!1185762 (= res!535931 (rulesInvariant!1647 thiss!27592 rules!4386))))

(declare-fun b!1185763 () Bool)

(declare-fun e!761717 () Bool)

(declare-datatypes ((Token!3818 0))(
  ( (Token!3819 (value!67281 TokenValue!2144) (rule!3499 Rule!3956) (size!9370 Int) (originalCharacters!2632 List!11908)) )
))
(declare-datatypes ((List!11911 0))(
  ( (Nil!11887) (Cons!11887 (h!17288 Token!3818) (t!111869 List!11911)) )
))
(declare-fun l!6534 () List!11911)

(declare-fun e!761724 () Bool)

(declare-fun tp!338051 () Bool)

(declare-fun inv!21 (TokenValue!2144) Bool)

(assert (=> b!1185763 (= e!761717 (and (inv!21 (value!67281 (h!17288 l!6534))) e!761724 tp!338051))))

(assert (=> b!1185764 (= e!761722 (and tp!338055 tp!338050))))

(declare-fun tp!338048 () Bool)

(declare-fun e!761720 () Bool)

(declare-fun b!1185765 () Bool)

(declare-fun inv!15716 (Token!3818) Bool)

(assert (=> b!1185765 (= e!761720 (and (inv!15716 (h!17288 l!6534)) e!761717 tp!338048))))

(declare-fun tp!338053 () Bool)

(declare-fun b!1185766 () Bool)

(assert (=> b!1185766 (= e!761724 (and tp!338053 (inv!15712 (tag!2340 (rule!3499 (h!17288 l!6534)))) (inv!15715 (transformation!2078 (rule!3499 (h!17288 l!6534)))) e!761723))))

(declare-fun b!1185767 () Bool)

(declare-fun res!535930 () Bool)

(assert (=> b!1185767 (=> (not res!535930) (not e!761716))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!167 (LexerInterface!1773 List!11911 List!11910) Bool)

(assert (=> b!1185767 (= res!535930 (tokensListTwoByTwoPredicateSeparableList!167 thiss!27592 l!6534 rules!4386))))

(declare-fun b!1185768 () Bool)

(declare-fun res!535933 () Bool)

(assert (=> b!1185768 (=> (not res!535933) (not e!761716))))

(declare-fun isEmpty!7155 (List!11910) Bool)

(assert (=> b!1185768 (= res!535933 (not (isEmpty!7155 rules!4386)))))

(declare-fun res!535929 () Bool)

(assert (=> start!105180 (=> (not res!535929) (not e!761716))))

(assert (=> start!105180 (= res!535929 (is-Lexer!1771 thiss!27592))))

(assert (=> start!105180 e!761716))

(assert (=> start!105180 true))

(declare-fun e!761719 () Bool)

(assert (=> start!105180 e!761719))

(assert (=> start!105180 e!761720))

(declare-fun b!1185769 () Bool)

(declare-fun tp!338054 () Bool)

(assert (=> b!1185769 (= e!761719 (and e!761725 tp!338054))))

(declare-fun b!1185770 () Bool)

(declare-fun ListPrimitiveSize!69 (List!11911) Int)

(assert (=> b!1185770 (= e!761716 (< (ListPrimitiveSize!69 l!6534) 0))))

(declare-fun b!1185771 () Bool)

(declare-fun res!535932 () Bool)

(assert (=> b!1185771 (=> (not res!535932) (not e!761716))))

(declare-fun rulesProduceEachTokenIndividuallyList!639 (LexerInterface!1773 List!11910 List!11911) Bool)

(assert (=> b!1185771 (= res!535932 (rulesProduceEachTokenIndividuallyList!639 thiss!27592 rules!4386 l!6534))))

(assert (= (and start!105180 res!535929) b!1185768))

(assert (= (and b!1185768 res!535933) b!1185762))

(assert (= (and b!1185762 res!535931) b!1185771))

(assert (= (and b!1185771 res!535932) b!1185767))

(assert (= (and b!1185767 res!535930) b!1185770))

(assert (= b!1185760 b!1185764))

(assert (= b!1185769 b!1185760))

(assert (= (and start!105180 (is-Cons!11886 rules!4386)) b!1185769))

(assert (= b!1185766 b!1185761))

(assert (= b!1185763 b!1185766))

(assert (= b!1185765 b!1185763))

(assert (= (and start!105180 (is-Cons!11887 l!6534)) b!1185765))

(declare-fun m!1362089 () Bool)

(assert (=> b!1185760 m!1362089))

(declare-fun m!1362091 () Bool)

(assert (=> b!1185760 m!1362091))

(declare-fun m!1362093 () Bool)

(assert (=> b!1185771 m!1362093))

(declare-fun m!1362095 () Bool)

(assert (=> b!1185768 m!1362095))

(declare-fun m!1362097 () Bool)

(assert (=> b!1185766 m!1362097))

(declare-fun m!1362099 () Bool)

(assert (=> b!1185766 m!1362099))

(declare-fun m!1362101 () Bool)

(assert (=> b!1185770 m!1362101))

(declare-fun m!1362103 () Bool)

(assert (=> b!1185763 m!1362103))

(declare-fun m!1362105 () Bool)

(assert (=> b!1185762 m!1362105))

(declare-fun m!1362107 () Bool)

(assert (=> b!1185765 m!1362107))

(declare-fun m!1362109 () Bool)

(assert (=> b!1185767 m!1362109))

(push 1)

(assert b_and!81591)

(assert (not b!1185760))

(assert (not b_next!29173))

(assert b_and!81595)

(assert (not b_next!29177))

(assert (not b!1185771))

(assert b_and!81589)

(assert b_and!81593)

(assert (not b!1185766))

(assert (not b!1185763))

(assert (not b!1185762))

(assert (not b!1185767))

(assert (not b!1185770))

(assert (not b_next!29175))

(assert (not b_next!29179))

(assert (not b!1185769))

(assert (not b!1185765))

(assert (not b!1185768))

(check-sat)

(pop 1)

(push 1)

(assert b_and!81591)

(assert (not b_next!29173))

(assert b_and!81595)

(assert (not b_next!29177))

(assert b_and!81589)

(assert b_and!81593)

(assert (not b_next!29175))

(assert (not b_next!29179))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1185818 () Bool)

(declare-fun e!761768 () Bool)

(declare-fun e!761766 () Bool)

(assert (=> b!1185818 (= e!761768 e!761766)))

(declare-fun c!197141 () Bool)

(assert (=> b!1185818 (= c!197141 (is-IntegerValue!6433 (value!67281 (h!17288 l!6534))))))

(declare-fun b!1185819 () Bool)

(declare-fun res!535951 () Bool)

(declare-fun e!761767 () Bool)

(assert (=> b!1185819 (=> res!535951 e!761767)))

(assert (=> b!1185819 (= res!535951 (not (is-IntegerValue!6434 (value!67281 (h!17288 l!6534)))))))

(assert (=> b!1185819 (= e!761766 e!761767)))

(declare-fun d!339358 () Bool)

(declare-fun c!197140 () Bool)

(assert (=> d!339358 (= c!197140 (is-IntegerValue!6432 (value!67281 (h!17288 l!6534))))))

(assert (=> d!339358 (= (inv!21 (value!67281 (h!17288 l!6534))) e!761768)))

(declare-fun b!1185820 () Bool)

(declare-fun inv!15 (TokenValue!2144) Bool)

(assert (=> b!1185820 (= e!761767 (inv!15 (value!67281 (h!17288 l!6534))))))

(declare-fun b!1185821 () Bool)

(declare-fun inv!17 (TokenValue!2144) Bool)

(assert (=> b!1185821 (= e!761766 (inv!17 (value!67281 (h!17288 l!6534))))))

(declare-fun b!1185822 () Bool)

(declare-fun inv!16 (TokenValue!2144) Bool)

(assert (=> b!1185822 (= e!761768 (inv!16 (value!67281 (h!17288 l!6534))))))

(assert (= (and d!339358 c!197140) b!1185822))

(assert (= (and d!339358 (not c!197140)) b!1185818))

(assert (= (and b!1185818 c!197141) b!1185821))

(assert (= (and b!1185818 (not c!197141)) b!1185819))

(assert (= (and b!1185819 (not res!535951)) b!1185820))

(declare-fun m!1362133 () Bool)

(assert (=> b!1185820 m!1362133))

(declare-fun m!1362135 () Bool)

(assert (=> b!1185821 m!1362135))

(declare-fun m!1362137 () Bool)

(assert (=> b!1185822 m!1362137))

(assert (=> b!1185763 d!339358))

(declare-fun d!339360 () Bool)

(declare-fun lt!408055 () Int)

(assert (=> d!339360 (>= lt!408055 0)))

(declare-fun e!761771 () Int)

(assert (=> d!339360 (= lt!408055 e!761771)))

(declare-fun c!197144 () Bool)

(assert (=> d!339360 (= c!197144 (is-Nil!11887 l!6534))))

(assert (=> d!339360 (= (ListPrimitiveSize!69 l!6534) lt!408055)))

(declare-fun b!1185827 () Bool)

(assert (=> b!1185827 (= e!761771 0)))

(declare-fun b!1185828 () Bool)

(assert (=> b!1185828 (= e!761771 (+ 1 (ListPrimitiveSize!69 (t!111869 l!6534))))))

(assert (= (and d!339360 c!197144) b!1185827))

(assert (= (and d!339360 (not c!197144)) b!1185828))

(declare-fun m!1362139 () Bool)

(assert (=> b!1185828 m!1362139))

(assert (=> b!1185770 d!339360))

(declare-fun d!339362 () Bool)

(assert (=> d!339362 (= (inv!15712 (tag!2340 (h!17287 rules!4386))) (= (mod (str.len (value!67280 (tag!2340 (h!17287 rules!4386)))) 2) 0))))

(assert (=> b!1185760 d!339362))

(declare-fun d!339364 () Bool)

(declare-fun res!535954 () Bool)

(declare-fun e!761774 () Bool)

(assert (=> d!339364 (=> (not res!535954) (not e!761774))))

(declare-fun semiInverseModEq!748 (Int Int) Bool)

(assert (=> d!339364 (= res!535954 (semiInverseModEq!748 (toChars!3054 (transformation!2078 (h!17287 rules!4386))) (toValue!3195 (transformation!2078 (h!17287 rules!4386)))))))

(assert (=> d!339364 (= (inv!15715 (transformation!2078 (h!17287 rules!4386))) e!761774)))

(declare-fun b!1185831 () Bool)

(declare-fun equivClasses!715 (Int Int) Bool)

(assert (=> b!1185831 (= e!761774 (equivClasses!715 (toChars!3054 (transformation!2078 (h!17287 rules!4386))) (toValue!3195 (transformation!2078 (h!17287 rules!4386)))))))

(assert (= (and d!339364 res!535954) b!1185831))

(declare-fun m!1362141 () Bool)

(assert (=> d!339364 m!1362141))

(declare-fun m!1362143 () Bool)

(assert (=> b!1185831 m!1362143))

(assert (=> b!1185760 d!339364))

(declare-fun d!339366 () Bool)

(declare-fun res!535959 () Bool)

(declare-fun e!761777 () Bool)

(assert (=> d!339366 (=> (not res!535959) (not e!761777))))

(declare-fun isEmpty!7157 (List!11908) Bool)

(assert (=> d!339366 (= res!535959 (not (isEmpty!7157 (originalCharacters!2632 (h!17288 l!6534)))))))

(assert (=> d!339366 (= (inv!15716 (h!17288 l!6534)) e!761777)))

(declare-fun b!1185836 () Bool)

(declare-fun res!535960 () Bool)

(assert (=> b!1185836 (=> (not res!535960) (not e!761777))))

(declare-fun list!4367 (BalanceConc!7806) List!11908)

(declare-fun dynLambda!5295 (Int TokenValue!2144) BalanceConc!7806)

(assert (=> b!1185836 (= res!535960 (= (originalCharacters!2632 (h!17288 l!6534)) (list!4367 (dynLambda!5295 (toChars!3054 (transformation!2078 (rule!3499 (h!17288 l!6534)))) (value!67281 (h!17288 l!6534))))))))

(declare-fun b!1185837 () Bool)

(declare-fun size!9372 (List!11908) Int)

(assert (=> b!1185837 (= e!761777 (= (size!9370 (h!17288 l!6534)) (size!9372 (originalCharacters!2632 (h!17288 l!6534)))))))

(assert (= (and d!339366 res!535959) b!1185836))

(assert (= (and b!1185836 res!535960) b!1185837))

(declare-fun b_lambda!35599 () Bool)

(assert (=> (not b_lambda!35599) (not b!1185836)))

(declare-fun t!111875 () Bool)

(declare-fun tb!66317 () Bool)

(assert (=> (and b!1185761 (= (toChars!3054 (transformation!2078 (rule!3499 (h!17288 l!6534)))) (toChars!3054 (transformation!2078 (rule!3499 (h!17288 l!6534))))) t!111875) tb!66317))

(declare-fun b!1185842 () Bool)

(declare-fun e!761780 () Bool)

(declare-fun tp!338085 () Bool)

(declare-fun inv!15719 (Conc!3892) Bool)

(assert (=> b!1185842 (= e!761780 (and (inv!15719 (c!197132 (dynLambda!5295 (toChars!3054 (transformation!2078 (rule!3499 (h!17288 l!6534)))) (value!67281 (h!17288 l!6534))))) tp!338085))))

(declare-fun result!79622 () Bool)

(declare-fun inv!15720 (BalanceConc!7806) Bool)

(assert (=> tb!66317 (= result!79622 (and (inv!15720 (dynLambda!5295 (toChars!3054 (transformation!2078 (rule!3499 (h!17288 l!6534)))) (value!67281 (h!17288 l!6534)))) e!761780))))

(assert (= tb!66317 b!1185842))

(declare-fun m!1362145 () Bool)

(assert (=> b!1185842 m!1362145))

(declare-fun m!1362147 () Bool)

(assert (=> tb!66317 m!1362147))

(assert (=> b!1185836 t!111875))

(declare-fun b_and!81605 () Bool)

(assert (= b_and!81591 (and (=> t!111875 result!79622) b_and!81605)))

(declare-fun tb!66319 () Bool)

(declare-fun t!111877 () Bool)

(assert (=> (and b!1185764 (= (toChars!3054 (transformation!2078 (h!17287 rules!4386))) (toChars!3054 (transformation!2078 (rule!3499 (h!17288 l!6534))))) t!111877) tb!66319))

(declare-fun result!79626 () Bool)

(assert (= result!79626 result!79622))

(assert (=> b!1185836 t!111877))

(declare-fun b_and!81607 () Bool)

(assert (= b_and!81595 (and (=> t!111877 result!79626) b_and!81607)))

(declare-fun m!1362149 () Bool)

(assert (=> d!339366 m!1362149))

(declare-fun m!1362151 () Bool)

(assert (=> b!1185836 m!1362151))

(assert (=> b!1185836 m!1362151))

(declare-fun m!1362153 () Bool)

(assert (=> b!1185836 m!1362153))

(declare-fun m!1362155 () Bool)

(assert (=> b!1185837 m!1362155))

(assert (=> b!1185765 d!339366))

(declare-fun d!339368 () Bool)

(assert (=> d!339368 (= (inv!15712 (tag!2340 (rule!3499 (h!17288 l!6534)))) (= (mod (str.len (value!67280 (tag!2340 (rule!3499 (h!17288 l!6534))))) 2) 0))))

(assert (=> b!1185766 d!339368))

(declare-fun d!339370 () Bool)

(declare-fun res!535961 () Bool)

(declare-fun e!761781 () Bool)

(assert (=> d!339370 (=> (not res!535961) (not e!761781))))

(assert (=> d!339370 (= res!535961 (semiInverseModEq!748 (toChars!3054 (transformation!2078 (rule!3499 (h!17288 l!6534)))) (toValue!3195 (transformation!2078 (rule!3499 (h!17288 l!6534))))))))

(assert (=> d!339370 (= (inv!15715 (transformation!2078 (rule!3499 (h!17288 l!6534)))) e!761781)))

(declare-fun b!1185843 () Bool)

(assert (=> b!1185843 (= e!761781 (equivClasses!715 (toChars!3054 (transformation!2078 (rule!3499 (h!17288 l!6534)))) (toValue!3195 (transformation!2078 (rule!3499 (h!17288 l!6534))))))))

(assert (= (and d!339370 res!535961) b!1185843))

(declare-fun m!1362157 () Bool)

(assert (=> d!339370 m!1362157))

(declare-fun m!1362159 () Bool)

(assert (=> b!1185843 m!1362159))

(assert (=> b!1185766 d!339370))

(declare-fun b!1185864 () Bool)

(declare-fun e!761800 () Bool)

(assert (=> b!1185864 (= e!761800 true)))

(declare-fun b!1185863 () Bool)

(declare-fun e!761799 () Bool)

(assert (=> b!1185863 (= e!761799 e!761800)))

(declare-fun b!1185862 () Bool)

(declare-fun e!761798 () Bool)

(assert (=> b!1185862 (= e!761798 e!761799)))

(declare-fun d!339372 () Bool)

(assert (=> d!339372 e!761798))

(assert (= b!1185863 b!1185864))

(assert (= b!1185862 b!1185863))

(assert (= (and d!339372 (is-Cons!11886 rules!4386)) b!1185862))

(declare-fun lambda!48890 () Int)

(declare-fun order!7379 () Int)

(declare-fun order!7381 () Int)

(declare-fun dynLambda!5296 (Int Int) Int)

(declare-fun dynLambda!5297 (Int Int) Int)

(assert (=> b!1185864 (< (dynLambda!5296 order!7379 (toValue!3195 (transformation!2078 (h!17287 rules!4386)))) (dynLambda!5297 order!7381 lambda!48890))))

(declare-fun order!7383 () Int)

(declare-fun dynLambda!5298 (Int Int) Int)

(assert (=> b!1185864 (< (dynLambda!5298 order!7383 (toChars!3054 (transformation!2078 (h!17287 rules!4386)))) (dynLambda!5297 order!7381 lambda!48890))))

(assert (=> d!339372 true))

(declare-fun lt!408060 () Bool)

(declare-fun forall!3149 (List!11911 Int) Bool)

(assert (=> d!339372 (= lt!408060 (forall!3149 l!6534 lambda!48890))))

(declare-fun e!761790 () Bool)

(assert (=> d!339372 (= lt!408060 e!761790)))

(declare-fun res!535971 () Bool)

(assert (=> d!339372 (=> res!535971 e!761790)))

(assert (=> d!339372 (= res!535971 (not (is-Cons!11887 l!6534)))))

(assert (=> d!339372 (not (isEmpty!7155 rules!4386))))

(assert (=> d!339372 (= (rulesProduceEachTokenIndividuallyList!639 thiss!27592 rules!4386 l!6534) lt!408060)))

(declare-fun b!1185852 () Bool)

(declare-fun e!761791 () Bool)

(assert (=> b!1185852 (= e!761790 e!761791)))

(declare-fun res!535970 () Bool)

(assert (=> b!1185852 (=> (not res!535970) (not e!761791))))

(declare-fun rulesProduceIndividualToken!800 (LexerInterface!1773 List!11910 Token!3818) Bool)

(assert (=> b!1185852 (= res!535970 (rulesProduceIndividualToken!800 thiss!27592 rules!4386 (h!17288 l!6534)))))

(declare-fun b!1185853 () Bool)

(assert (=> b!1185853 (= e!761791 (rulesProduceEachTokenIndividuallyList!639 thiss!27592 rules!4386 (t!111869 l!6534)))))

(assert (= (and d!339372 (not res!535971)) b!1185852))

(assert (= (and b!1185852 res!535970) b!1185853))

(declare-fun m!1362161 () Bool)

(assert (=> d!339372 m!1362161))

(assert (=> d!339372 m!1362095))

(declare-fun m!1362163 () Bool)

(assert (=> b!1185852 m!1362163))

(declare-fun m!1362165 () Bool)

(assert (=> b!1185853 m!1362165))

(assert (=> b!1185771 d!339372))

(declare-fun d!339374 () Bool)

(declare-fun res!535974 () Bool)

(declare-fun e!761803 () Bool)

(assert (=> d!339374 (=> (not res!535974) (not e!761803))))

(declare-fun rulesValid!736 (LexerInterface!1773 List!11910) Bool)

(assert (=> d!339374 (= res!535974 (rulesValid!736 thiss!27592 rules!4386))))

(assert (=> d!339374 (= (rulesInvariant!1647 thiss!27592 rules!4386) e!761803)))

(declare-fun b!1185869 () Bool)

(declare-datatypes ((List!11916 0))(
  ( (Nil!11892) (Cons!11892 (h!17293 String!14390) (t!111886 List!11916)) )
))
(declare-fun noDuplicateTag!736 (LexerInterface!1773 List!11910 List!11916) Bool)

(assert (=> b!1185869 (= e!761803 (noDuplicateTag!736 thiss!27592 rules!4386 Nil!11892))))

(assert (= (and d!339374 res!535974) b!1185869))

(declare-fun m!1362167 () Bool)

(assert (=> d!339374 m!1362167))

(declare-fun m!1362169 () Bool)

(assert (=> b!1185869 m!1362169))

(assert (=> b!1185762 d!339374))

(declare-fun d!339376 () Bool)

(declare-fun res!535985 () Bool)

(declare-fun e!761822 () Bool)

(assert (=> d!339376 (=> res!535985 e!761822)))

(assert (=> d!339376 (= res!535985 (or (not (is-Cons!11887 l!6534)) (not (is-Cons!11887 (t!111869 l!6534)))))))

(assert (=> d!339376 (= (tokensListTwoByTwoPredicateSeparableList!167 thiss!27592 l!6534 rules!4386) e!761822)))

(declare-fun b!1185892 () Bool)

(declare-fun e!761823 () Bool)

(assert (=> b!1185892 (= e!761822 e!761823)))

(declare-fun res!535984 () Bool)

(assert (=> b!1185892 (=> (not res!535984) (not e!761823))))

(declare-fun separableTokensPredicate!159 (LexerInterface!1773 Token!3818 Token!3818 List!11910) Bool)

(assert (=> b!1185892 (= res!535984 (separableTokensPredicate!159 thiss!27592 (h!17288 l!6534) (h!17288 (t!111869 l!6534)) rules!4386))))

(declare-datatypes ((Unit!18244 0))(
  ( (Unit!18245) )
))
(declare-fun lt!408082 () Unit!18244)

(declare-fun Unit!18246 () Unit!18244)

(assert (=> b!1185892 (= lt!408082 Unit!18246)))

(declare-fun size!9373 (BalanceConc!7806) Int)

(declare-fun charsOf!1097 (Token!3818) BalanceConc!7806)

(assert (=> b!1185892 (> (size!9373 (charsOf!1097 (h!17288 (t!111869 l!6534)))) 0)))

(declare-fun lt!408079 () Unit!18244)

(declare-fun Unit!18247 () Unit!18244)

(assert (=> b!1185892 (= lt!408079 Unit!18247)))

(assert (=> b!1185892 (rulesProduceIndividualToken!800 thiss!27592 rules!4386 (h!17288 (t!111869 l!6534)))))

(declare-fun lt!408078 () Unit!18244)

(declare-fun Unit!18248 () Unit!18244)

(assert (=> b!1185892 (= lt!408078 Unit!18248)))

(assert (=> b!1185892 (rulesProduceIndividualToken!800 thiss!27592 rules!4386 (h!17288 l!6534))))

(declare-fun lt!408076 () Unit!18244)

(declare-fun lt!408077 () Unit!18244)

(assert (=> b!1185892 (= lt!408076 lt!408077)))

(assert (=> b!1185892 (rulesProduceIndividualToken!800 thiss!27592 rules!4386 (h!17288 (t!111869 l!6534)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!318 (LexerInterface!1773 List!11910 List!11911 Token!3818) Unit!18244)

(assert (=> b!1185892 (= lt!408077 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!318 thiss!27592 rules!4386 l!6534 (h!17288 (t!111869 l!6534))))))

(declare-fun lt!408081 () Unit!18244)

(declare-fun lt!408080 () Unit!18244)

(assert (=> b!1185892 (= lt!408081 lt!408080)))

(assert (=> b!1185892 (rulesProduceIndividualToken!800 thiss!27592 rules!4386 (h!17288 l!6534))))

(assert (=> b!1185892 (= lt!408080 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!318 thiss!27592 rules!4386 l!6534 (h!17288 l!6534)))))

(declare-fun b!1185893 () Bool)

(assert (=> b!1185893 (= e!761823 (tokensListTwoByTwoPredicateSeparableList!167 thiss!27592 (Cons!11887 (h!17288 (t!111869 l!6534)) (t!111869 (t!111869 l!6534))) rules!4386))))

(assert (= (and d!339376 (not res!535985)) b!1185892))

(assert (= (and b!1185892 res!535984) b!1185893))

(assert (=> b!1185892 m!1362163))

(declare-fun m!1362181 () Bool)

(assert (=> b!1185892 m!1362181))

(declare-fun m!1362183 () Bool)

(assert (=> b!1185892 m!1362183))

(declare-fun m!1362185 () Bool)

(assert (=> b!1185892 m!1362185))

(declare-fun m!1362187 () Bool)

(assert (=> b!1185892 m!1362187))

(assert (=> b!1185892 m!1362185))

(declare-fun m!1362189 () Bool)

(assert (=> b!1185892 m!1362189))

(declare-fun m!1362191 () Bool)

(assert (=> b!1185892 m!1362191))

(declare-fun m!1362193 () Bool)

(assert (=> b!1185893 m!1362193))

(assert (=> b!1185767 d!339376))

(declare-fun d!339382 () Bool)

(assert (=> d!339382 (= (isEmpty!7155 rules!4386) (is-Nil!11886 rules!4386))))

(assert (=> b!1185768 d!339382))

(declare-fun b!1185898 () Bool)

(declare-fun e!761826 () Bool)

(declare-fun tp_is_empty!5825 () Bool)

(declare-fun tp!338088 () Bool)

(assert (=> b!1185898 (= e!761826 (and tp_is_empty!5825 tp!338088))))

(assert (=> b!1185763 (= tp!338051 e!761826)))

(assert (= (and b!1185763 (is-Cons!11884 (originalCharacters!2632 (h!17288 l!6534)))) b!1185898))

(declare-fun b!1185909 () Bool)

(declare-fun b_free!28485 () Bool)

(declare-fun b_next!29189 () Bool)

(assert (=> b!1185909 (= b_free!28485 (not b_next!29189))))

(declare-fun tp!338099 () Bool)

(declare-fun b_and!81609 () Bool)

(assert (=> b!1185909 (= tp!338099 b_and!81609)))

(declare-fun b_free!28487 () Bool)

(declare-fun b_next!29191 () Bool)

(assert (=> b!1185909 (= b_free!28487 (not b_next!29191))))

(declare-fun t!111883 () Bool)

(declare-fun tb!66321 () Bool)

(assert (=> (and b!1185909 (= (toChars!3054 (transformation!2078 (h!17287 (t!111868 rules!4386)))) (toChars!3054 (transformation!2078 (rule!3499 (h!17288 l!6534))))) t!111883) tb!66321))

(declare-fun result!79632 () Bool)

(assert (= result!79632 result!79622))

(assert (=> b!1185836 t!111883))

(declare-fun b_and!81611 () Bool)

(declare-fun tp!338100 () Bool)

(assert (=> b!1185909 (= tp!338100 (and (=> t!111883 result!79632) b_and!81611))))

(declare-fun e!761837 () Bool)

(assert (=> b!1185909 (= e!761837 (and tp!338099 tp!338100))))

(declare-fun tp!338098 () Bool)

(declare-fun e!761838 () Bool)

(declare-fun b!1185908 () Bool)

(assert (=> b!1185908 (= e!761838 (and tp!338098 (inv!15712 (tag!2340 (h!17287 (t!111868 rules!4386)))) (inv!15715 (transformation!2078 (h!17287 (t!111868 rules!4386)))) e!761837))))

(declare-fun b!1185907 () Bool)

(declare-fun e!761835 () Bool)

(declare-fun tp!338097 () Bool)

(assert (=> b!1185907 (= e!761835 (and e!761838 tp!338097))))

(assert (=> b!1185769 (= tp!338054 e!761835)))

(assert (= b!1185908 b!1185909))

(assert (= b!1185907 b!1185908))

(assert (= (and b!1185769 (is-Cons!11886 (t!111868 rules!4386))) b!1185907))

(declare-fun m!1362195 () Bool)

(assert (=> b!1185908 m!1362195))

(declare-fun m!1362197 () Bool)

(assert (=> b!1185908 m!1362197))

(declare-fun e!761841 () Bool)

(assert (=> b!1185760 (= tp!338049 e!761841)))

(declare-fun b!1185923 () Bool)

(declare-fun tp!338115 () Bool)

(declare-fun tp!338113 () Bool)

(assert (=> b!1185923 (= e!761841 (and tp!338115 tp!338113))))

(declare-fun b!1185922 () Bool)

(declare-fun tp!338114 () Bool)

(assert (=> b!1185922 (= e!761841 tp!338114)))

(declare-fun b!1185921 () Bool)

(declare-fun tp!338111 () Bool)

(declare-fun tp!338112 () Bool)

(assert (=> b!1185921 (= e!761841 (and tp!338111 tp!338112))))

(declare-fun b!1185920 () Bool)

(assert (=> b!1185920 (= e!761841 tp_is_empty!5825)))

(assert (= (and b!1185760 (is-ElementMatch!3348 (regex!2078 (h!17287 rules!4386)))) b!1185920))

(assert (= (and b!1185760 (is-Concat!5493 (regex!2078 (h!17287 rules!4386)))) b!1185921))

(assert (= (and b!1185760 (is-Star!3348 (regex!2078 (h!17287 rules!4386)))) b!1185922))

(assert (= (and b!1185760 (is-Union!3348 (regex!2078 (h!17287 rules!4386)))) b!1185923))

(declare-fun b!1185937 () Bool)

(declare-fun b_free!28489 () Bool)

(declare-fun b_next!29193 () Bool)

(assert (=> b!1185937 (= b_free!28489 (not b_next!29193))))

(declare-fun tp!338129 () Bool)

(declare-fun b_and!81613 () Bool)

(assert (=> b!1185937 (= tp!338129 b_and!81613)))

(declare-fun b_free!28491 () Bool)

(declare-fun b_next!29195 () Bool)

(assert (=> b!1185937 (= b_free!28491 (not b_next!29195))))

(declare-fun t!111885 () Bool)

(declare-fun tb!66323 () Bool)

(assert (=> (and b!1185937 (= (toChars!3054 (transformation!2078 (rule!3499 (h!17288 (t!111869 l!6534))))) (toChars!3054 (transformation!2078 (rule!3499 (h!17288 l!6534))))) t!111885) tb!66323))

(declare-fun result!79638 () Bool)

(assert (= result!79638 result!79622))

(assert (=> b!1185836 t!111885))

(declare-fun b_and!81615 () Bool)

(declare-fun tp!338130 () Bool)

(assert (=> b!1185937 (= tp!338130 (and (=> t!111885 result!79638) b_and!81615))))

(declare-fun e!761855 () Bool)

(assert (=> b!1185765 (= tp!338048 e!761855)))

(declare-fun e!761859 () Bool)

(assert (=> b!1185937 (= e!761859 (and tp!338129 tp!338130))))

(declare-fun tp!338127 () Bool)

(declare-fun e!761856 () Bool)

(declare-fun e!761858 () Bool)

(declare-fun b!1185935 () Bool)

(assert (=> b!1185935 (= e!761858 (and (inv!21 (value!67281 (h!17288 (t!111869 l!6534)))) e!761856 tp!338127))))

(declare-fun b!1185934 () Bool)

(declare-fun tp!338126 () Bool)

(assert (=> b!1185934 (= e!761855 (and (inv!15716 (h!17288 (t!111869 l!6534))) e!761858 tp!338126))))

(declare-fun tp!338128 () Bool)

(declare-fun b!1185936 () Bool)

(assert (=> b!1185936 (= e!761856 (and tp!338128 (inv!15712 (tag!2340 (rule!3499 (h!17288 (t!111869 l!6534))))) (inv!15715 (transformation!2078 (rule!3499 (h!17288 (t!111869 l!6534))))) e!761859))))

(assert (= b!1185936 b!1185937))

(assert (= b!1185935 b!1185936))

(assert (= b!1185934 b!1185935))

(assert (= (and b!1185765 (is-Cons!11887 (t!111869 l!6534))) b!1185934))

(declare-fun m!1362199 () Bool)

(assert (=> b!1185935 m!1362199))

(declare-fun m!1362201 () Bool)

(assert (=> b!1185934 m!1362201))

(declare-fun m!1362203 () Bool)

(assert (=> b!1185936 m!1362203))

(declare-fun m!1362205 () Bool)

(assert (=> b!1185936 m!1362205))

(declare-fun e!761860 () Bool)

(assert (=> b!1185766 (= tp!338053 e!761860)))

(declare-fun b!1185941 () Bool)

(declare-fun tp!338135 () Bool)

(declare-fun tp!338133 () Bool)

(assert (=> b!1185941 (= e!761860 (and tp!338135 tp!338133))))

(declare-fun b!1185940 () Bool)

(declare-fun tp!338134 () Bool)

(assert (=> b!1185940 (= e!761860 tp!338134)))

(declare-fun b!1185939 () Bool)

(declare-fun tp!338131 () Bool)

(declare-fun tp!338132 () Bool)

(assert (=> b!1185939 (= e!761860 (and tp!338131 tp!338132))))

(declare-fun b!1185938 () Bool)

(assert (=> b!1185938 (= e!761860 tp_is_empty!5825)))

(assert (= (and b!1185766 (is-ElementMatch!3348 (regex!2078 (rule!3499 (h!17288 l!6534))))) b!1185938))

(assert (= (and b!1185766 (is-Concat!5493 (regex!2078 (rule!3499 (h!17288 l!6534))))) b!1185939))

(assert (= (and b!1185766 (is-Star!3348 (regex!2078 (rule!3499 (h!17288 l!6534))))) b!1185940))

(assert (= (and b!1185766 (is-Union!3348 (regex!2078 (rule!3499 (h!17288 l!6534))))) b!1185941))

(declare-fun b_lambda!35601 () Bool)

(assert (= b_lambda!35599 (or (and b!1185761 b_free!28471) (and b!1185764 b_free!28475 (= (toChars!3054 (transformation!2078 (h!17287 rules!4386))) (toChars!3054 (transformation!2078 (rule!3499 (h!17288 l!6534)))))) (and b!1185909 b_free!28487 (= (toChars!3054 (transformation!2078 (h!17287 (t!111868 rules!4386)))) (toChars!3054 (transformation!2078 (rule!3499 (h!17288 l!6534)))))) (and b!1185937 b_free!28491 (= (toChars!3054 (transformation!2078 (rule!3499 (h!17288 (t!111869 l!6534))))) (toChars!3054 (transformation!2078 (rule!3499 (h!17288 l!6534)))))) b_lambda!35601)))

(push 1)

(assert (not b!1185908))

(assert (not b_lambda!35601))

(assert b_and!81611)

(assert (not b!1185907))

(assert (not b!1185837))

(assert (not b!1185922))

(assert (not b_next!29193))

(assert (not b!1185936))

(assert (not b!1185941))

(assert (not d!339370))

(assert (not b_next!29195))

(assert (not b!1185862))

(assert (not tb!66317))

(assert (not b!1185939))

(assert (not b!1185836))

(assert (not b!1185852))

(assert b_and!81613)

(assert (not b!1185820))

(assert (not b!1185935))

(assert (not b!1185842))

(assert (not b!1185892))

(assert tp_is_empty!5825)

(assert (not b_next!29173))

(assert (not b!1185923))

(assert (not b_next!29175))

(assert (not b_next!29179))

(assert (not b!1185921))

(assert (not b!1185828))

(assert (not b!1185898))

(assert (not b_next!29177))

(assert (not d!339374))

(assert (not d!339372))

(assert (not b!1185821))

(assert (not b!1185940))

(assert b_and!81609)

(assert b_and!81607)

(assert (not b!1185934))

(assert (not b!1185831))

(assert (not b!1185853))

(assert (not b!1185822))

(assert (not b_next!29191))

(assert b_and!81589)

(assert (not b_next!29189))

(assert (not b!1185869))

(assert (not b!1185843))

(assert b_and!81593)

(assert (not d!339364))

(assert (not d!339366))

(assert b_and!81605)

(assert (not b!1185893))

(assert b_and!81615)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!29195))

(assert b_and!81613)

(assert b_and!81611)

(assert (not b_next!29173))

(assert (not b_next!29177))

(assert b_and!81609)

(assert b_and!81607)

(assert (not b_next!29191))

(assert b_and!81593)

(assert (not b_next!29193))

(assert (not b_next!29175))

(assert (not b_next!29179))

(assert b_and!81589)

(assert (not b_next!29189))

(assert b_and!81605)

(assert b_and!81615)

(check-sat)

(pop 1)

