; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!192366 () Bool)

(assert start!192366)

(declare-fun b!1920817 () Bool)

(declare-fun b_free!54941 () Bool)

(declare-fun b_next!55645 () Bool)

(assert (=> b!1920817 (= b_free!54941 (not b_next!55645))))

(declare-fun tp!549017 () Bool)

(declare-fun b_and!150171 () Bool)

(assert (=> b!1920817 (= tp!549017 b_and!150171)))

(declare-fun b_free!54943 () Bool)

(declare-fun b_next!55647 () Bool)

(assert (=> b!1920817 (= b_free!54943 (not b_next!55647))))

(declare-fun tp!549021 () Bool)

(declare-fun b_and!150173 () Bool)

(assert (=> b!1920817 (= tp!549021 b_and!150173)))

(declare-fun b!1920821 () Bool)

(declare-fun b_free!54945 () Bool)

(declare-fun b_next!55649 () Bool)

(assert (=> b!1920821 (= b_free!54945 (not b_next!55649))))

(declare-fun tp!549018 () Bool)

(declare-fun b_and!150175 () Bool)

(assert (=> b!1920821 (= tp!549018 b_and!150175)))

(declare-fun b_free!54947 () Bool)

(declare-fun b_next!55651 () Bool)

(assert (=> b!1920821 (= b_free!54947 (not b_next!55651))))

(declare-fun tp!549022 () Bool)

(declare-fun b_and!150177 () Bool)

(assert (=> b!1920821 (= tp!549022 b_and!150177)))

(declare-fun b!1920810 () Bool)

(declare-fun b_free!54949 () Bool)

(declare-fun b_next!55653 () Bool)

(assert (=> b!1920810 (= b_free!54949 (not b_next!55653))))

(declare-fun tp!549027 () Bool)

(declare-fun b_and!150179 () Bool)

(assert (=> b!1920810 (= tp!549027 b_and!150179)))

(declare-fun b_free!54951 () Bool)

(declare-fun b_next!55655 () Bool)

(assert (=> b!1920810 (= b_free!54951 (not b_next!55655))))

(declare-fun tp!549023 () Bool)

(declare-fun b_and!150181 () Bool)

(assert (=> b!1920810 (= tp!549023 b_and!150181)))

(declare-fun b!1920805 () Bool)

(declare-fun res!859018 () Bool)

(declare-fun e!1227840 () Bool)

(assert (=> b!1920805 (=> (not res!859018) (not e!1227840))))

(declare-datatypes ((List!21946 0))(
  ( (Nil!21864) (Cons!21864 (h!27265 (_ BitVec 16)) (t!178789 List!21946)) )
))
(declare-datatypes ((TokenValue!4055 0))(
  ( (FloatLiteralValue!8110 (text!28830 List!21946)) (TokenValueExt!4054 (__x!13608 Int)) (Broken!20275 (value!123258 List!21946)) (Object!4136) (End!4055) (Def!4055) (Underscore!4055) (Match!4055) (Else!4055) (Error!4055) (Case!4055) (If!4055) (Extends!4055) (Abstract!4055) (Class!4055) (Val!4055) (DelimiterValue!8110 (del!4115 List!21946)) (KeywordValue!4061 (value!123259 List!21946)) (CommentValue!8110 (value!123260 List!21946)) (WhitespaceValue!8110 (value!123261 List!21946)) (IndentationValue!4055 (value!123262 List!21946)) (String!25394) (Int32!4055) (Broken!20276 (value!123263 List!21946)) (Boolean!4056) (Unit!36190) (OperatorValue!4058 (op!4115 List!21946)) (IdentifierValue!8110 (value!123264 List!21946)) (IdentifierValue!8111 (value!123265 List!21946)) (WhitespaceValue!8111 (value!123266 List!21946)) (True!8110) (False!8110) (Broken!20277 (value!123267 List!21946)) (Broken!20278 (value!123268 List!21946)) (True!8111) (RightBrace!4055) (RightBracket!4055) (Colon!4055) (Null!4055) (Comma!4055) (LeftBracket!4055) (False!8111) (LeftBrace!4055) (ImaginaryLiteralValue!4055 (text!28831 List!21946)) (StringLiteralValue!12165 (value!123269 List!21946)) (EOFValue!4055 (value!123270 List!21946)) (IdentValue!4055 (value!123271 List!21946)) (DelimiterValue!8111 (value!123272 List!21946)) (DedentValue!4055 (value!123273 List!21946)) (NewLineValue!4055 (value!123274 List!21946)) (IntegerValue!12165 (value!123275 (_ BitVec 32)) (text!28832 List!21946)) (IntegerValue!12166 (value!123276 Int) (text!28833 List!21946)) (Times!4055) (Or!4055) (Equal!4055) (Minus!4055) (Broken!20279 (value!123277 List!21946)) (And!4055) (Div!4055) (LessEqual!4055) (Mod!4055) (Concat!9399) (Not!4055) (Plus!4055) (SpaceValue!4055 (value!123278 List!21946)) (IntegerValue!12167 (value!123279 Int) (text!28834 List!21946)) (StringLiteralValue!12166 (text!28835 List!21946)) (FloatLiteralValue!8111 (text!28836 List!21946)) (BytesLiteralValue!4055 (value!123280 List!21946)) (CommentValue!8111 (value!123281 List!21946)) (StringLiteralValue!12167 (value!123282 List!21946)) (ErrorTokenValue!4055 (msg!4116 List!21946)) )
))
(declare-datatypes ((C!10834 0))(
  ( (C!10835 (val!6369 Int)) )
))
(declare-datatypes ((List!21947 0))(
  ( (Nil!21865) (Cons!21865 (h!27266 C!10834) (t!178790 List!21947)) )
))
(declare-datatypes ((Regex!5344 0))(
  ( (ElementMatch!5344 (c!312216 C!10834)) (Concat!9400 (regOne!11200 Regex!5344) (regTwo!11200 Regex!5344)) (EmptyExpr!5344) (Star!5344 (reg!5673 Regex!5344)) (EmptyLang!5344) (Union!5344 (regOne!11201 Regex!5344) (regTwo!11201 Regex!5344)) )
))
(declare-datatypes ((String!25395 0))(
  ( (String!25396 (value!123283 String)) )
))
(declare-datatypes ((IArray!14593 0))(
  ( (IArray!14594 (innerList!7354 List!21947)) )
))
(declare-datatypes ((Conc!7294 0))(
  ( (Node!7294 (left!17392 Conc!7294) (right!17722 Conc!7294) (csize!14818 Int) (cheight!7505 Int)) (Leaf!10717 (xs!10188 IArray!14593) (csize!14819 Int)) (Empty!7294) )
))
(declare-datatypes ((BalanceConc!14404 0))(
  ( (BalanceConc!14405 (c!312217 Conc!7294)) )
))
(declare-datatypes ((TokenValueInjection!7694 0))(
  ( (TokenValueInjection!7695 (toValue!5548 Int) (toChars!5407 Int)) )
))
(declare-datatypes ((Rule!7638 0))(
  ( (Rule!7639 (regex!3919 Regex!5344) (tag!4359 String!25395) (isSeparator!3919 Bool) (transformation!3919 TokenValueInjection!7694)) )
))
(declare-datatypes ((Token!7390 0))(
  ( (Token!7391 (value!123284 TokenValue!4055) (rule!6122 Rule!7638) (size!17067 Int) (originalCharacters!4726 List!21947)) )
))
(declare-datatypes ((List!21948 0))(
  ( (Nil!21866) (Cons!21866 (h!27267 Token!7390) (t!178791 List!21948)) )
))
(declare-fun tokens!598 () List!21948)

(declare-fun isEmpty!13443 (List!21948) Bool)

(assert (=> b!1920805 (= res!859018 (not (isEmpty!13443 tokens!598)))))

(declare-fun b!1920806 () Bool)

(declare-fun res!859019 () Bool)

(assert (=> b!1920806 (=> (not res!859019) (not e!1227840))))

(declare-fun separatorToken!354 () Token!7390)

(declare-datatypes ((LexerInterface!3532 0))(
  ( (LexerInterfaceExt!3529 (__x!13609 Int)) (Lexer!3530) )
))
(declare-fun thiss!23328 () LexerInterface!3532)

(declare-datatypes ((List!21949 0))(
  ( (Nil!21867) (Cons!21867 (h!27268 Rule!7638) (t!178792 List!21949)) )
))
(declare-fun rules!3198 () List!21949)

(declare-fun rulesProduceIndividualToken!1704 (LexerInterface!3532 List!21949 Token!7390) Bool)

(assert (=> b!1920806 (= res!859019 (rulesProduceIndividualToken!1704 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun e!1227851 () Bool)

(declare-fun e!1227849 () Bool)

(declare-fun b!1920807 () Bool)

(declare-fun tp!549025 () Bool)

(declare-fun inv!28935 (String!25395) Bool)

(declare-fun inv!28938 (TokenValueInjection!7694) Bool)

(assert (=> b!1920807 (= e!1227849 (and tp!549025 (inv!28935 (tag!4359 (rule!6122 separatorToken!354))) (inv!28938 (transformation!3919 (rule!6122 separatorToken!354))) e!1227851))))

(declare-fun b!1920809 () Bool)

(declare-fun res!859012 () Bool)

(assert (=> b!1920809 (=> (not res!859012) (not e!1227840))))

(declare-fun sepAndNonSepRulesDisjointChars!1017 (List!21949 List!21949) Bool)

(assert (=> b!1920809 (= res!859012 (sepAndNonSepRulesDisjointChars!1017 rules!3198 rules!3198))))

(declare-fun e!1227844 () Bool)

(assert (=> b!1920810 (= e!1227844 (and tp!549027 tp!549023))))

(declare-fun b!1920811 () Bool)

(declare-fun res!859010 () Bool)

(assert (=> b!1920811 (=> (not res!859010) (not e!1227840))))

(declare-fun isEmpty!13444 (List!21949) Bool)

(assert (=> b!1920811 (= res!859010 (not (isEmpty!13444 rules!3198)))))

(declare-fun b!1920812 () Bool)

(declare-fun res!859013 () Bool)

(assert (=> b!1920812 (=> (not res!859013) (not e!1227840))))

(declare-fun rulesInvariant!3139 (LexerInterface!3532 List!21949) Bool)

(assert (=> b!1920812 (= res!859013 (rulesInvariant!3139 thiss!23328 rules!3198))))

(declare-fun b!1920813 () Bool)

(declare-fun e!1227843 () Bool)

(declare-fun tp!549026 () Bool)

(declare-fun inv!21 (TokenValue!4055) Bool)

(assert (=> b!1920813 (= e!1227843 (and (inv!21 (value!123284 separatorToken!354)) e!1227849 tp!549026))))

(declare-fun b!1920814 () Bool)

(declare-fun res!859011 () Bool)

(assert (=> b!1920814 (=> (not res!859011) (not e!1227840))))

(assert (=> b!1920814 (= res!859011 (not (is-Cons!21866 tokens!598)))))

(declare-fun b!1920808 () Bool)

(declare-fun res!859016 () Bool)

(assert (=> b!1920808 (=> (not res!859016) (not e!1227840))))

(declare-datatypes ((tuple2!20488 0))(
  ( (tuple2!20489 (_1!11713 Token!7390) (_2!11713 List!21947)) )
))
(declare-datatypes ((Option!4519 0))(
  ( (None!4518) (Some!4518 (v!26591 tuple2!20488)) )
))
(declare-fun isDefined!3813 (Option!4519) Bool)

(declare-fun maxPrefix!1970 (LexerInterface!3532 List!21949 List!21947) Option!4519)

(declare-fun printWithSeparatorTokenWhenNeededList!571 (LexerInterface!3532 List!21949 List!21948 Token!7390) List!21947)

(assert (=> b!1920808 (= res!859016 (isDefined!3813 (maxPrefix!1970 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!571 thiss!23328 rules!3198 tokens!598 separatorToken!354))))))

(declare-fun res!859017 () Bool)

(assert (=> start!192366 (=> (not res!859017) (not e!1227840))))

(assert (=> start!192366 (= res!859017 (is-Lexer!3530 thiss!23328))))

(assert (=> start!192366 e!1227840))

(assert (=> start!192366 true))

(declare-fun e!1227837 () Bool)

(assert (=> start!192366 e!1227837))

(declare-fun e!1227839 () Bool)

(assert (=> start!192366 e!1227839))

(declare-fun inv!28939 (Token!7390) Bool)

(assert (=> start!192366 (and (inv!28939 separatorToken!354) e!1227843)))

(declare-fun b!1920815 () Bool)

(declare-fun e!1227850 () Bool)

(declare-fun tp!549016 () Bool)

(declare-fun e!1227845 () Bool)

(assert (=> b!1920815 (= e!1227845 (and tp!549016 (inv!28935 (tag!4359 (h!27268 rules!3198))) (inv!28938 (transformation!3919 (h!27268 rules!3198))) e!1227850))))

(declare-fun b!1920816 () Bool)

(declare-fun res!859009 () Bool)

(assert (=> b!1920816 (=> (not res!859009) (not e!1227840))))

(declare-fun lambda!74990 () Int)

(declare-fun forall!4617 (List!21948 Int) Bool)

(assert (=> b!1920816 (= res!859009 (forall!4617 tokens!598 lambda!74990))))

(assert (=> b!1920817 (= e!1227851 (and tp!549017 tp!549021))))

(declare-fun b!1920818 () Bool)

(declare-fun tp!549024 () Bool)

(assert (=> b!1920818 (= e!1227837 (and e!1227845 tp!549024))))

(declare-fun e!1227838 () Bool)

(declare-fun e!1227846 () Bool)

(declare-fun b!1920819 () Bool)

(declare-fun tp!549015 () Bool)

(assert (=> b!1920819 (= e!1227846 (and (inv!21 (value!123284 (h!27267 tokens!598))) e!1227838 tp!549015))))

(declare-fun b!1920820 () Bool)

(declare-fun res!859015 () Bool)

(assert (=> b!1920820 (=> (not res!859015) (not e!1227840))))

(assert (=> b!1920820 (= res!859015 (isSeparator!3919 (rule!6122 separatorToken!354)))))

(assert (=> b!1920821 (= e!1227850 (and tp!549018 tp!549022))))

(declare-fun b!1920822 () Bool)

(declare-fun rulesValidInductive!1327 (LexerInterface!3532 List!21949) Bool)

(assert (=> b!1920822 (= e!1227840 (not (rulesValidInductive!1327 thiss!23328 rules!3198)))))

(declare-fun tp!549020 () Bool)

(declare-fun b!1920823 () Bool)

(assert (=> b!1920823 (= e!1227839 (and (inv!28939 (h!27267 tokens!598)) e!1227846 tp!549020))))

(declare-fun b!1920824 () Bool)

(declare-fun res!859014 () Bool)

(assert (=> b!1920824 (=> (not res!859014) (not e!1227840))))

(declare-fun rulesProduceEachTokenIndividuallyList!1263 (LexerInterface!3532 List!21949 List!21948) Bool)

(assert (=> b!1920824 (= res!859014 (rulesProduceEachTokenIndividuallyList!1263 thiss!23328 rules!3198 tokens!598))))

(declare-fun tp!549019 () Bool)

(declare-fun b!1920825 () Bool)

(assert (=> b!1920825 (= e!1227838 (and tp!549019 (inv!28935 (tag!4359 (rule!6122 (h!27267 tokens!598)))) (inv!28938 (transformation!3919 (rule!6122 (h!27267 tokens!598)))) e!1227844))))

(assert (= (and start!192366 res!859017) b!1920811))

(assert (= (and b!1920811 res!859010) b!1920812))

(assert (= (and b!1920812 res!859013) b!1920824))

(assert (= (and b!1920824 res!859014) b!1920806))

(assert (= (and b!1920806 res!859019) b!1920820))

(assert (= (and b!1920820 res!859015) b!1920816))

(assert (= (and b!1920816 res!859009) b!1920809))

(assert (= (and b!1920809 res!859012) b!1920814))

(assert (= (and b!1920814 res!859011) b!1920805))

(assert (= (and b!1920805 res!859018) b!1920808))

(assert (= (and b!1920808 res!859016) b!1920822))

(assert (= b!1920815 b!1920821))

(assert (= b!1920818 b!1920815))

(assert (= (and start!192366 (is-Cons!21867 rules!3198)) b!1920818))

(assert (= b!1920825 b!1920810))

(assert (= b!1920819 b!1920825))

(assert (= b!1920823 b!1920819))

(assert (= (and start!192366 (is-Cons!21866 tokens!598)) b!1920823))

(assert (= b!1920807 b!1920817))

(assert (= b!1920813 b!1920807))

(assert (= start!192366 b!1920813))

(declare-fun m!2355843 () Bool)

(assert (=> b!1920805 m!2355843))

(declare-fun m!2355845 () Bool)

(assert (=> b!1920816 m!2355845))

(declare-fun m!2355847 () Bool)

(assert (=> b!1920812 m!2355847))

(declare-fun m!2355849 () Bool)

(assert (=> b!1920813 m!2355849))

(declare-fun m!2355851 () Bool)

(assert (=> b!1920824 m!2355851))

(declare-fun m!2355853 () Bool)

(assert (=> b!1920819 m!2355853))

(declare-fun m!2355855 () Bool)

(assert (=> b!1920806 m!2355855))

(declare-fun m!2355857 () Bool)

(assert (=> b!1920825 m!2355857))

(declare-fun m!2355859 () Bool)

(assert (=> b!1920825 m!2355859))

(declare-fun m!2355861 () Bool)

(assert (=> b!1920809 m!2355861))

(declare-fun m!2355863 () Bool)

(assert (=> start!192366 m!2355863))

(declare-fun m!2355865 () Bool)

(assert (=> b!1920815 m!2355865))

(declare-fun m!2355867 () Bool)

(assert (=> b!1920815 m!2355867))

(declare-fun m!2355869 () Bool)

(assert (=> b!1920808 m!2355869))

(assert (=> b!1920808 m!2355869))

(declare-fun m!2355871 () Bool)

(assert (=> b!1920808 m!2355871))

(assert (=> b!1920808 m!2355871))

(declare-fun m!2355873 () Bool)

(assert (=> b!1920808 m!2355873))

(declare-fun m!2355875 () Bool)

(assert (=> b!1920807 m!2355875))

(declare-fun m!2355877 () Bool)

(assert (=> b!1920807 m!2355877))

(declare-fun m!2355879 () Bool)

(assert (=> b!1920823 m!2355879))

(declare-fun m!2355881 () Bool)

(assert (=> b!1920811 m!2355881))

(declare-fun m!2355883 () Bool)

(assert (=> b!1920822 m!2355883))

(push 1)

(assert (not b!1920819))

(assert (not b!1920815))

(assert (not b!1920813))

(assert (not b!1920816))

(assert b_and!150171)

(assert b_and!150181)

(assert (not b_next!55647))

(assert (not b_next!55645))

(assert (not b_next!55655))

(assert (not b!1920822))

(assert b_and!150175)

(assert (not b!1920818))

(assert (not b!1920824))

(assert (not b!1920806))

(assert (not b!1920811))

(assert (not b!1920825))

(assert (not b_next!55649))

(assert (not b!1920812))

(assert (not b_next!55653))

(assert (not b!1920823))

(assert (not b_next!55651))

(assert (not b!1920809))

(assert (not start!192366))

(assert (not b!1920807))

(assert b_and!150173)

(assert (not b!1920805))

(assert (not b!1920808))

(assert b_and!150179)

(assert b_and!150177)

(check-sat)

(pop 1)

(push 1)

(assert b_and!150175)

(assert (not b_next!55649))

(assert (not b_next!55653))

(assert b_and!150171)

(assert b_and!150181)

(assert (not b_next!55647))

(assert (not b_next!55651))

(assert (not b_next!55645))

(assert (not b_next!55655))

(assert b_and!150173)

(assert b_and!150179)

(assert b_and!150177)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!585431 () Bool)

(declare-fun res!859061 () Bool)

(declare-fun e!1227903 () Bool)

(assert (=> d!585431 (=> (not res!859061) (not e!1227903))))

(declare-fun isEmpty!13447 (List!21947) Bool)

(assert (=> d!585431 (= res!859061 (not (isEmpty!13447 (originalCharacters!4726 (h!27267 tokens!598)))))))

(assert (=> d!585431 (= (inv!28939 (h!27267 tokens!598)) e!1227903)))

(declare-fun b!1920893 () Bool)

(declare-fun res!859062 () Bool)

(assert (=> b!1920893 (=> (not res!859062) (not e!1227903))))

(declare-fun list!8838 (BalanceConc!14404) List!21947)

(declare-fun dynLambda!10546 (Int TokenValue!4055) BalanceConc!14404)

(assert (=> b!1920893 (= res!859062 (= (originalCharacters!4726 (h!27267 tokens!598)) (list!8838 (dynLambda!10546 (toChars!5407 (transformation!3919 (rule!6122 (h!27267 tokens!598)))) (value!123284 (h!27267 tokens!598))))))))

(declare-fun b!1920894 () Bool)

(declare-fun size!17069 (List!21947) Int)

(assert (=> b!1920894 (= e!1227903 (= (size!17067 (h!27267 tokens!598)) (size!17069 (originalCharacters!4726 (h!27267 tokens!598)))))))

(assert (= (and d!585431 res!859061) b!1920893))

(assert (= (and b!1920893 res!859062) b!1920894))

(declare-fun b_lambda!63449 () Bool)

(assert (=> (not b_lambda!63449) (not b!1920893)))

(declare-fun tb!117313 () Bool)

(declare-fun t!178798 () Bool)

(assert (=> (and b!1920817 (= (toChars!5407 (transformation!3919 (rule!6122 separatorToken!354))) (toChars!5407 (transformation!3919 (rule!6122 (h!27267 tokens!598))))) t!178798) tb!117313))

(declare-fun b!1920899 () Bool)

(declare-fun e!1227906 () Bool)

(declare-fun tp!549069 () Bool)

(declare-fun inv!28942 (Conc!7294) Bool)

(assert (=> b!1920899 (= e!1227906 (and (inv!28942 (c!312217 (dynLambda!10546 (toChars!5407 (transformation!3919 (rule!6122 (h!27267 tokens!598)))) (value!123284 (h!27267 tokens!598))))) tp!549069))))

(declare-fun result!141764 () Bool)

(declare-fun inv!28943 (BalanceConc!14404) Bool)

(assert (=> tb!117313 (= result!141764 (and (inv!28943 (dynLambda!10546 (toChars!5407 (transformation!3919 (rule!6122 (h!27267 tokens!598)))) (value!123284 (h!27267 tokens!598)))) e!1227906))))

(assert (= tb!117313 b!1920899))

(declare-fun m!2355927 () Bool)

(assert (=> b!1920899 m!2355927))

(declare-fun m!2355929 () Bool)

(assert (=> tb!117313 m!2355929))

(assert (=> b!1920893 t!178798))

(declare-fun b_and!150195 () Bool)

(assert (= b_and!150173 (and (=> t!178798 result!141764) b_and!150195)))

(declare-fun tb!117315 () Bool)

(declare-fun t!178800 () Bool)

(assert (=> (and b!1920821 (= (toChars!5407 (transformation!3919 (h!27268 rules!3198))) (toChars!5407 (transformation!3919 (rule!6122 (h!27267 tokens!598))))) t!178800) tb!117315))

(declare-fun result!141768 () Bool)

(assert (= result!141768 result!141764))

(assert (=> b!1920893 t!178800))

(declare-fun b_and!150197 () Bool)

(assert (= b_and!150177 (and (=> t!178800 result!141768) b_and!150197)))

(declare-fun t!178802 () Bool)

(declare-fun tb!117317 () Bool)

(assert (=> (and b!1920810 (= (toChars!5407 (transformation!3919 (rule!6122 (h!27267 tokens!598)))) (toChars!5407 (transformation!3919 (rule!6122 (h!27267 tokens!598))))) t!178802) tb!117317))

(declare-fun result!141770 () Bool)

(assert (= result!141770 result!141764))

(assert (=> b!1920893 t!178802))

(declare-fun b_and!150199 () Bool)

(assert (= b_and!150181 (and (=> t!178802 result!141770) b_and!150199)))

(declare-fun m!2355931 () Bool)

(assert (=> d!585431 m!2355931))

(declare-fun m!2355933 () Bool)

(assert (=> b!1920893 m!2355933))

(assert (=> b!1920893 m!2355933))

(declare-fun m!2355935 () Bool)

(assert (=> b!1920893 m!2355935))

(declare-fun m!2355937 () Bool)

(assert (=> b!1920894 m!2355937))

(assert (=> b!1920823 d!585431))

(declare-fun d!585433 () Bool)

(declare-fun res!859065 () Bool)

(declare-fun e!1227909 () Bool)

(assert (=> d!585433 (=> (not res!859065) (not e!1227909))))

(declare-fun rulesValid!1441 (LexerInterface!3532 List!21949) Bool)

(assert (=> d!585433 (= res!859065 (rulesValid!1441 thiss!23328 rules!3198))))

(assert (=> d!585433 (= (rulesInvariant!3139 thiss!23328 rules!3198) e!1227909)))

(declare-fun b!1920902 () Bool)

(declare-datatypes ((List!21954 0))(
  ( (Nil!21872) (Cons!21872 (h!27273 String!25395) (t!178831 List!21954)) )
))
(declare-fun noDuplicateTag!1439 (LexerInterface!3532 List!21949 List!21954) Bool)

(assert (=> b!1920902 (= e!1227909 (noDuplicateTag!1439 thiss!23328 rules!3198 Nil!21872))))

(assert (= (and d!585433 res!859065) b!1920902))

(declare-fun m!2355939 () Bool)

(assert (=> d!585433 m!2355939))

(declare-fun m!2355941 () Bool)

(assert (=> b!1920902 m!2355941))

(assert (=> b!1920812 d!585433))

(declare-fun d!585435 () Bool)

(declare-fun c!312225 () Bool)

(assert (=> d!585435 (= c!312225 (is-IntegerValue!12165 (value!123284 separatorToken!354)))))

(declare-fun e!1227917 () Bool)

(assert (=> d!585435 (= (inv!21 (value!123284 separatorToken!354)) e!1227917)))

(declare-fun b!1920913 () Bool)

(declare-fun e!1227916 () Bool)

(assert (=> b!1920913 (= e!1227917 e!1227916)))

(declare-fun c!312226 () Bool)

(assert (=> b!1920913 (= c!312226 (is-IntegerValue!12166 (value!123284 separatorToken!354)))))

(declare-fun b!1920914 () Bool)

(declare-fun inv!17 (TokenValue!4055) Bool)

(assert (=> b!1920914 (= e!1227916 (inv!17 (value!123284 separatorToken!354)))))

(declare-fun b!1920915 () Bool)

(declare-fun inv!16 (TokenValue!4055) Bool)

(assert (=> b!1920915 (= e!1227917 (inv!16 (value!123284 separatorToken!354)))))

(declare-fun b!1920916 () Bool)

(declare-fun e!1227918 () Bool)

(declare-fun inv!15 (TokenValue!4055) Bool)

(assert (=> b!1920916 (= e!1227918 (inv!15 (value!123284 separatorToken!354)))))

(declare-fun b!1920917 () Bool)

(declare-fun res!859068 () Bool)

(assert (=> b!1920917 (=> res!859068 e!1227918)))

(assert (=> b!1920917 (= res!859068 (not (is-IntegerValue!12167 (value!123284 separatorToken!354))))))

(assert (=> b!1920917 (= e!1227916 e!1227918)))

(assert (= (and d!585435 c!312225) b!1920915))

(assert (= (and d!585435 (not c!312225)) b!1920913))

(assert (= (and b!1920913 c!312226) b!1920914))

(assert (= (and b!1920913 (not c!312226)) b!1920917))

(assert (= (and b!1920917 (not res!859068)) b!1920916))

(declare-fun m!2355943 () Bool)

(assert (=> b!1920914 m!2355943))

(declare-fun m!2355945 () Bool)

(assert (=> b!1920915 m!2355945))

(declare-fun m!2355947 () Bool)

(assert (=> b!1920916 m!2355947))

(assert (=> b!1920813 d!585435))

(declare-fun bs!414370 () Bool)

(declare-fun d!585437 () Bool)

(assert (= bs!414370 (and d!585437 b!1920816)))

(declare-fun lambda!74996 () Int)

(assert (=> bs!414370 (not (= lambda!74996 lambda!74990))))

(declare-fun b!1920981 () Bool)

(declare-fun e!1227954 () Bool)

(assert (=> b!1920981 (= e!1227954 true)))

(declare-fun b!1920980 () Bool)

(declare-fun e!1227953 () Bool)

(assert (=> b!1920980 (= e!1227953 e!1227954)))

(declare-fun b!1920979 () Bool)

(declare-fun e!1227952 () Bool)

(assert (=> b!1920979 (= e!1227952 e!1227953)))

(assert (=> d!585437 e!1227952))

(assert (= b!1920980 b!1920981))

(assert (= b!1920979 b!1920980))

(assert (= (and d!585437 (is-Cons!21867 rules!3198)) b!1920979))

(declare-fun order!13673 () Int)

(declare-fun order!13675 () Int)

(declare-fun dynLambda!10547 (Int Int) Int)

(declare-fun dynLambda!10548 (Int Int) Int)

(assert (=> b!1920981 (< (dynLambda!10547 order!13673 (toValue!5548 (transformation!3919 (h!27268 rules!3198)))) (dynLambda!10548 order!13675 lambda!74996))))

(declare-fun order!13677 () Int)

(declare-fun dynLambda!10549 (Int Int) Int)

(assert (=> b!1920981 (< (dynLambda!10549 order!13677 (toChars!5407 (transformation!3919 (h!27268 rules!3198)))) (dynLambda!10548 order!13675 lambda!74996))))

(assert (=> d!585437 true))

(declare-fun lt!736380 () Bool)

(assert (=> d!585437 (= lt!736380 (forall!4617 tokens!598 lambda!74996))))

(declare-fun e!1227944 () Bool)

(assert (=> d!585437 (= lt!736380 e!1227944)))

(declare-fun res!859110 () Bool)

(assert (=> d!585437 (=> res!859110 e!1227944)))

(assert (=> d!585437 (= res!859110 (not (is-Cons!21866 tokens!598)))))

(assert (=> d!585437 (not (isEmpty!13444 rules!3198))))

(assert (=> d!585437 (= (rulesProduceEachTokenIndividuallyList!1263 thiss!23328 rules!3198 tokens!598) lt!736380)))

(declare-fun b!1920969 () Bool)

(declare-fun e!1227945 () Bool)

(assert (=> b!1920969 (= e!1227944 e!1227945)))

(declare-fun res!859109 () Bool)

(assert (=> b!1920969 (=> (not res!859109) (not e!1227945))))

(assert (=> b!1920969 (= res!859109 (rulesProduceIndividualToken!1704 thiss!23328 rules!3198 (h!27267 tokens!598)))))

(declare-fun b!1920970 () Bool)

(assert (=> b!1920970 (= e!1227945 (rulesProduceEachTokenIndividuallyList!1263 thiss!23328 rules!3198 (t!178791 tokens!598)))))

(assert (= (and d!585437 (not res!859110)) b!1920969))

(assert (= (and b!1920969 res!859109) b!1920970))

(declare-fun m!2356013 () Bool)

(assert (=> d!585437 m!2356013))

(assert (=> d!585437 m!2355881))

(declare-fun m!2356015 () Bool)

(assert (=> b!1920969 m!2356015))

(declare-fun m!2356017 () Bool)

(assert (=> b!1920970 m!2356017))

(assert (=> b!1920824 d!585437))

(declare-fun d!585451 () Bool)

(declare-fun res!859111 () Bool)

(declare-fun e!1227955 () Bool)

(assert (=> d!585451 (=> (not res!859111) (not e!1227955))))

(assert (=> d!585451 (= res!859111 (not (isEmpty!13447 (originalCharacters!4726 separatorToken!354))))))

(assert (=> d!585451 (= (inv!28939 separatorToken!354) e!1227955)))

(declare-fun b!1920984 () Bool)

(declare-fun res!859112 () Bool)

(assert (=> b!1920984 (=> (not res!859112) (not e!1227955))))

(assert (=> b!1920984 (= res!859112 (= (originalCharacters!4726 separatorToken!354) (list!8838 (dynLambda!10546 (toChars!5407 (transformation!3919 (rule!6122 separatorToken!354))) (value!123284 separatorToken!354)))))))

(declare-fun b!1920985 () Bool)

(assert (=> b!1920985 (= e!1227955 (= (size!17067 separatorToken!354) (size!17069 (originalCharacters!4726 separatorToken!354))))))

(assert (= (and d!585451 res!859111) b!1920984))

(assert (= (and b!1920984 res!859112) b!1920985))

(declare-fun b_lambda!63453 () Bool)

(assert (=> (not b_lambda!63453) (not b!1920984)))

(declare-fun t!178813 () Bool)

(declare-fun tb!117325 () Bool)

(assert (=> (and b!1920817 (= (toChars!5407 (transformation!3919 (rule!6122 separatorToken!354))) (toChars!5407 (transformation!3919 (rule!6122 separatorToken!354)))) t!178813) tb!117325))

(declare-fun b!1920986 () Bool)

(declare-fun e!1227956 () Bool)

(declare-fun tp!549073 () Bool)

(assert (=> b!1920986 (= e!1227956 (and (inv!28942 (c!312217 (dynLambda!10546 (toChars!5407 (transformation!3919 (rule!6122 separatorToken!354))) (value!123284 separatorToken!354)))) tp!549073))))

(declare-fun result!141780 () Bool)

(assert (=> tb!117325 (= result!141780 (and (inv!28943 (dynLambda!10546 (toChars!5407 (transformation!3919 (rule!6122 separatorToken!354))) (value!123284 separatorToken!354))) e!1227956))))

(assert (= tb!117325 b!1920986))

(declare-fun m!2356019 () Bool)

(assert (=> b!1920986 m!2356019))

(declare-fun m!2356021 () Bool)

(assert (=> tb!117325 m!2356021))

(assert (=> b!1920984 t!178813))

(declare-fun b_and!150207 () Bool)

(assert (= b_and!150195 (and (=> t!178813 result!141780) b_and!150207)))

(declare-fun t!178815 () Bool)

(declare-fun tb!117327 () Bool)

(assert (=> (and b!1920821 (= (toChars!5407 (transformation!3919 (h!27268 rules!3198))) (toChars!5407 (transformation!3919 (rule!6122 separatorToken!354)))) t!178815) tb!117327))

(declare-fun result!141782 () Bool)

(assert (= result!141782 result!141780))

(assert (=> b!1920984 t!178815))

(declare-fun b_and!150209 () Bool)

(assert (= b_and!150197 (and (=> t!178815 result!141782) b_and!150209)))

(declare-fun t!178817 () Bool)

(declare-fun tb!117329 () Bool)

(assert (=> (and b!1920810 (= (toChars!5407 (transformation!3919 (rule!6122 (h!27267 tokens!598)))) (toChars!5407 (transformation!3919 (rule!6122 separatorToken!354)))) t!178817) tb!117329))

(declare-fun result!141784 () Bool)

(assert (= result!141784 result!141780))

(assert (=> b!1920984 t!178817))

(declare-fun b_and!150211 () Bool)

(assert (= b_and!150199 (and (=> t!178817 result!141784) b_and!150211)))

(declare-fun m!2356023 () Bool)

(assert (=> d!585451 m!2356023))

(declare-fun m!2356025 () Bool)

(assert (=> b!1920984 m!2356025))

(assert (=> b!1920984 m!2356025))

(declare-fun m!2356027 () Bool)

(assert (=> b!1920984 m!2356027))

(declare-fun m!2356029 () Bool)

(assert (=> b!1920985 m!2356029))

(assert (=> start!192366 d!585451))

(declare-fun d!585453 () Bool)

(assert (=> d!585453 (= (inv!28935 (tag!4359 (rule!6122 (h!27267 tokens!598)))) (= (mod (str.len (value!123283 (tag!4359 (rule!6122 (h!27267 tokens!598))))) 2) 0))))

(assert (=> b!1920825 d!585453))

(declare-fun d!585455 () Bool)

(declare-fun res!859115 () Bool)

(declare-fun e!1227959 () Bool)

(assert (=> d!585455 (=> (not res!859115) (not e!1227959))))

(declare-fun semiInverseModEq!1554 (Int Int) Bool)

(assert (=> d!585455 (= res!859115 (semiInverseModEq!1554 (toChars!5407 (transformation!3919 (rule!6122 (h!27267 tokens!598)))) (toValue!5548 (transformation!3919 (rule!6122 (h!27267 tokens!598))))))))

(assert (=> d!585455 (= (inv!28938 (transformation!3919 (rule!6122 (h!27267 tokens!598)))) e!1227959)))

(declare-fun b!1920989 () Bool)

(declare-fun equivClasses!1481 (Int Int) Bool)

(assert (=> b!1920989 (= e!1227959 (equivClasses!1481 (toChars!5407 (transformation!3919 (rule!6122 (h!27267 tokens!598)))) (toValue!5548 (transformation!3919 (rule!6122 (h!27267 tokens!598))))))))

(assert (= (and d!585455 res!859115) b!1920989))

(declare-fun m!2356031 () Bool)

(assert (=> d!585455 m!2356031))

(declare-fun m!2356033 () Bool)

(assert (=> b!1920989 m!2356033))

(assert (=> b!1920825 d!585455))

(declare-fun d!585457 () Bool)

(assert (=> d!585457 (= (isEmpty!13444 rules!3198) (is-Nil!21867 rules!3198))))

(assert (=> b!1920811 d!585457))

(declare-fun d!585459 () Bool)

(assert (=> d!585459 true))

(declare-fun lt!736383 () Bool)

(declare-fun lambda!74999 () Int)

(declare-fun forall!4619 (List!21949 Int) Bool)

(assert (=> d!585459 (= lt!736383 (forall!4619 rules!3198 lambda!74999))))

(declare-fun e!1227965 () Bool)

(assert (=> d!585459 (= lt!736383 e!1227965)))

(declare-fun res!859120 () Bool)

(assert (=> d!585459 (=> res!859120 e!1227965)))

(assert (=> d!585459 (= res!859120 (not (is-Cons!21867 rules!3198)))))

(assert (=> d!585459 (= (rulesValidInductive!1327 thiss!23328 rules!3198) lt!736383)))

(declare-fun b!1920994 () Bool)

(declare-fun e!1227964 () Bool)

(assert (=> b!1920994 (= e!1227965 e!1227964)))

(declare-fun res!859121 () Bool)

(assert (=> b!1920994 (=> (not res!859121) (not e!1227964))))

(declare-fun ruleValid!1190 (LexerInterface!3532 Rule!7638) Bool)

(assert (=> b!1920994 (= res!859121 (ruleValid!1190 thiss!23328 (h!27268 rules!3198)))))

(declare-fun b!1920995 () Bool)

(assert (=> b!1920995 (= e!1227964 (rulesValidInductive!1327 thiss!23328 (t!178792 rules!3198)))))

(assert (= (and d!585459 (not res!859120)) b!1920994))

(assert (= (and b!1920994 res!859121) b!1920995))

(declare-fun m!2356035 () Bool)

(assert (=> d!585459 m!2356035))

(declare-fun m!2356037 () Bool)

(assert (=> b!1920994 m!2356037))

(declare-fun m!2356039 () Bool)

(assert (=> b!1920995 m!2356039))

(assert (=> b!1920822 d!585459))

(declare-fun d!585461 () Bool)

(assert (=> d!585461 (= (inv!28935 (tag!4359 (rule!6122 separatorToken!354))) (= (mod (str.len (value!123283 (tag!4359 (rule!6122 separatorToken!354)))) 2) 0))))

(assert (=> b!1920807 d!585461))

(declare-fun d!585463 () Bool)

(declare-fun res!859122 () Bool)

(declare-fun e!1227966 () Bool)

(assert (=> d!585463 (=> (not res!859122) (not e!1227966))))

(assert (=> d!585463 (= res!859122 (semiInverseModEq!1554 (toChars!5407 (transformation!3919 (rule!6122 separatorToken!354))) (toValue!5548 (transformation!3919 (rule!6122 separatorToken!354)))))))

(assert (=> d!585463 (= (inv!28938 (transformation!3919 (rule!6122 separatorToken!354))) e!1227966)))

(declare-fun b!1920998 () Bool)

(assert (=> b!1920998 (= e!1227966 (equivClasses!1481 (toChars!5407 (transformation!3919 (rule!6122 separatorToken!354))) (toValue!5548 (transformation!3919 (rule!6122 separatorToken!354)))))))

(assert (= (and d!585463 res!859122) b!1920998))

(declare-fun m!2356041 () Bool)

(assert (=> d!585463 m!2356041))

(declare-fun m!2356043 () Bool)

(assert (=> b!1920998 m!2356043))

(assert (=> b!1920807 d!585463))

(declare-fun d!585465 () Bool)

(declare-fun c!312230 () Bool)

(assert (=> d!585465 (= c!312230 (is-IntegerValue!12165 (value!123284 (h!27267 tokens!598))))))

(declare-fun e!1227968 () Bool)

(assert (=> d!585465 (= (inv!21 (value!123284 (h!27267 tokens!598))) e!1227968)))

(declare-fun b!1920999 () Bool)

(declare-fun e!1227967 () Bool)

(assert (=> b!1920999 (= e!1227968 e!1227967)))

(declare-fun c!312231 () Bool)

(assert (=> b!1920999 (= c!312231 (is-IntegerValue!12166 (value!123284 (h!27267 tokens!598))))))

(declare-fun b!1921000 () Bool)

(assert (=> b!1921000 (= e!1227967 (inv!17 (value!123284 (h!27267 tokens!598))))))

(declare-fun b!1921001 () Bool)

(assert (=> b!1921001 (= e!1227968 (inv!16 (value!123284 (h!27267 tokens!598))))))

(declare-fun b!1921002 () Bool)

(declare-fun e!1227969 () Bool)

(assert (=> b!1921002 (= e!1227969 (inv!15 (value!123284 (h!27267 tokens!598))))))

(declare-fun b!1921003 () Bool)

(declare-fun res!859123 () Bool)

(assert (=> b!1921003 (=> res!859123 e!1227969)))

(assert (=> b!1921003 (= res!859123 (not (is-IntegerValue!12167 (value!123284 (h!27267 tokens!598)))))))

(assert (=> b!1921003 (= e!1227967 e!1227969)))

(assert (= (and d!585465 c!312230) b!1921001))

(assert (= (and d!585465 (not c!312230)) b!1920999))

(assert (= (and b!1920999 c!312231) b!1921000))

(assert (= (and b!1920999 (not c!312231)) b!1921003))

(assert (= (and b!1921003 (not res!859123)) b!1921002))

(declare-fun m!2356045 () Bool)

(assert (=> b!1921000 m!2356045))

(declare-fun m!2356047 () Bool)

(assert (=> b!1921001 m!2356047))

(declare-fun m!2356049 () Bool)

(assert (=> b!1921002 m!2356049))

(assert (=> b!1920819 d!585465))

(declare-fun d!585467 () Bool)

(declare-fun isEmpty!13448 (Option!4519) Bool)

(assert (=> d!585467 (= (isDefined!3813 (maxPrefix!1970 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!571 thiss!23328 rules!3198 tokens!598 separatorToken!354))) (not (isEmpty!13448 (maxPrefix!1970 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!571 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))))

(declare-fun bs!414371 () Bool)

(assert (= bs!414371 d!585467))

(assert (=> bs!414371 m!2355871))

(declare-fun m!2356051 () Bool)

(assert (=> bs!414371 m!2356051))

(assert (=> b!1920808 d!585467))

(declare-fun b!1921022 () Bool)

(declare-fun res!859144 () Bool)

(declare-fun e!1227977 () Bool)

(assert (=> b!1921022 (=> (not res!859144) (not e!1227977))))

(declare-fun lt!736395 () Option!4519)

(declare-fun matchR!2614 (Regex!5344 List!21947) Bool)

(declare-fun get!6878 (Option!4519) tuple2!20488)

(declare-fun charsOf!2461 (Token!7390) BalanceConc!14404)

(assert (=> b!1921022 (= res!859144 (matchR!2614 (regex!3919 (rule!6122 (_1!11713 (get!6878 lt!736395)))) (list!8838 (charsOf!2461 (_1!11713 (get!6878 lt!736395))))))))

(declare-fun b!1921023 () Bool)

(declare-fun e!1227976 () Bool)

(assert (=> b!1921023 (= e!1227976 e!1227977)))

(declare-fun res!859139 () Bool)

(assert (=> b!1921023 (=> (not res!859139) (not e!1227977))))

(assert (=> b!1921023 (= res!859139 (isDefined!3813 lt!736395))))

(declare-fun b!1921024 () Bool)

(declare-fun res!859138 () Bool)

(assert (=> b!1921024 (=> (not res!859138) (not e!1227977))))

(declare-fun ++!5860 (List!21947 List!21947) List!21947)

(assert (=> b!1921024 (= res!859138 (= (++!5860 (list!8838 (charsOf!2461 (_1!11713 (get!6878 lt!736395)))) (_2!11713 (get!6878 lt!736395))) (printWithSeparatorTokenWhenNeededList!571 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(declare-fun b!1921025 () Bool)

(declare-fun e!1227978 () Option!4519)

(declare-fun lt!736396 () Option!4519)

(declare-fun lt!736398 () Option!4519)

(assert (=> b!1921025 (= e!1227978 (ite (and (is-None!4518 lt!736396) (is-None!4518 lt!736398)) None!4518 (ite (is-None!4518 lt!736398) lt!736396 (ite (is-None!4518 lt!736396) lt!736398 (ite (>= (size!17067 (_1!11713 (v!26591 lt!736396))) (size!17067 (_1!11713 (v!26591 lt!736398)))) lt!736396 lt!736398)))))))

(declare-fun call!118004 () Option!4519)

(assert (=> b!1921025 (= lt!736396 call!118004)))

(assert (=> b!1921025 (= lt!736398 (maxPrefix!1970 thiss!23328 (t!178792 rules!3198) (printWithSeparatorTokenWhenNeededList!571 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(declare-fun bm!117999 () Bool)

(declare-fun maxPrefixOneRule!1212 (LexerInterface!3532 Rule!7638 List!21947) Option!4519)

(assert (=> bm!117999 (= call!118004 (maxPrefixOneRule!1212 thiss!23328 (h!27268 rules!3198) (printWithSeparatorTokenWhenNeededList!571 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(declare-fun b!1921026 () Bool)

(declare-fun res!859143 () Bool)

(assert (=> b!1921026 (=> (not res!859143) (not e!1227977))))

(declare-fun apply!5664 (TokenValueInjection!7694 BalanceConc!14404) TokenValue!4055)

(declare-fun seqFromList!2775 (List!21947) BalanceConc!14404)

(assert (=> b!1921026 (= res!859143 (= (value!123284 (_1!11713 (get!6878 lt!736395))) (apply!5664 (transformation!3919 (rule!6122 (_1!11713 (get!6878 lt!736395)))) (seqFromList!2775 (originalCharacters!4726 (_1!11713 (get!6878 lt!736395)))))))))

(declare-fun d!585469 () Bool)

(assert (=> d!585469 e!1227976))

(declare-fun res!859140 () Bool)

(assert (=> d!585469 (=> res!859140 e!1227976)))

(assert (=> d!585469 (= res!859140 (isEmpty!13448 lt!736395))))

(assert (=> d!585469 (= lt!736395 e!1227978)))

(declare-fun c!312234 () Bool)

(assert (=> d!585469 (= c!312234 (and (is-Cons!21867 rules!3198) (is-Nil!21867 (t!178792 rules!3198))))))

(declare-datatypes ((Unit!36192 0))(
  ( (Unit!36193) )
))
(declare-fun lt!736397 () Unit!36192)

(declare-fun lt!736394 () Unit!36192)

(assert (=> d!585469 (= lt!736397 lt!736394)))

(declare-fun isPrefix!1930 (List!21947 List!21947) Bool)

(assert (=> d!585469 (isPrefix!1930 (printWithSeparatorTokenWhenNeededList!571 thiss!23328 rules!3198 tokens!598 separatorToken!354) (printWithSeparatorTokenWhenNeededList!571 thiss!23328 rules!3198 tokens!598 separatorToken!354))))

(declare-fun lemmaIsPrefixRefl!1248 (List!21947 List!21947) Unit!36192)

(assert (=> d!585469 (= lt!736394 (lemmaIsPrefixRefl!1248 (printWithSeparatorTokenWhenNeededList!571 thiss!23328 rules!3198 tokens!598 separatorToken!354) (printWithSeparatorTokenWhenNeededList!571 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(assert (=> d!585469 (rulesValidInductive!1327 thiss!23328 rules!3198)))

(assert (=> d!585469 (= (maxPrefix!1970 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!571 thiss!23328 rules!3198 tokens!598 separatorToken!354)) lt!736395)))

(declare-fun b!1921027 () Bool)

(declare-fun res!859141 () Bool)

(assert (=> b!1921027 (=> (not res!859141) (not e!1227977))))

(assert (=> b!1921027 (= res!859141 (< (size!17069 (_2!11713 (get!6878 lt!736395))) (size!17069 (printWithSeparatorTokenWhenNeededList!571 thiss!23328 rules!3198 tokens!598 separatorToken!354))))))

(declare-fun b!1921028 () Bool)

(assert (=> b!1921028 (= e!1227978 call!118004)))

(declare-fun b!1921029 () Bool)

(declare-fun res!859142 () Bool)

(assert (=> b!1921029 (=> (not res!859142) (not e!1227977))))

(assert (=> b!1921029 (= res!859142 (= (list!8838 (charsOf!2461 (_1!11713 (get!6878 lt!736395)))) (originalCharacters!4726 (_1!11713 (get!6878 lt!736395)))))))

(declare-fun b!1921030 () Bool)

(declare-fun contains!3942 (List!21949 Rule!7638) Bool)

(assert (=> b!1921030 (= e!1227977 (contains!3942 rules!3198 (rule!6122 (_1!11713 (get!6878 lt!736395)))))))

(assert (= (and d!585469 c!312234) b!1921028))

(assert (= (and d!585469 (not c!312234)) b!1921025))

(assert (= (or b!1921028 b!1921025) bm!117999))

(assert (= (and d!585469 (not res!859140)) b!1921023))

(assert (= (and b!1921023 res!859139) b!1921029))

(assert (= (and b!1921029 res!859142) b!1921027))

(assert (= (and b!1921027 res!859141) b!1921024))

(assert (= (and b!1921024 res!859138) b!1921026))

(assert (= (and b!1921026 res!859143) b!1921022))

(assert (= (and b!1921022 res!859144) b!1921030))

(assert (=> bm!117999 m!2355869))

(declare-fun m!2356053 () Bool)

(assert (=> bm!117999 m!2356053))

(declare-fun m!2356055 () Bool)

(assert (=> b!1921026 m!2356055))

(declare-fun m!2356057 () Bool)

(assert (=> b!1921026 m!2356057))

(assert (=> b!1921026 m!2356057))

(declare-fun m!2356059 () Bool)

(assert (=> b!1921026 m!2356059))

(declare-fun m!2356061 () Bool)

(assert (=> b!1921023 m!2356061))

(assert (=> b!1921025 m!2355869))

(declare-fun m!2356063 () Bool)

(assert (=> b!1921025 m!2356063))

(assert (=> b!1921027 m!2356055))

(declare-fun m!2356065 () Bool)

(assert (=> b!1921027 m!2356065))

(assert (=> b!1921027 m!2355869))

(declare-fun m!2356067 () Bool)

(assert (=> b!1921027 m!2356067))

(assert (=> b!1921024 m!2356055))

(declare-fun m!2356069 () Bool)

(assert (=> b!1921024 m!2356069))

(assert (=> b!1921024 m!2356069))

(declare-fun m!2356071 () Bool)

(assert (=> b!1921024 m!2356071))

(assert (=> b!1921024 m!2356071))

(declare-fun m!2356073 () Bool)

(assert (=> b!1921024 m!2356073))

(assert (=> b!1921022 m!2356055))

(assert (=> b!1921022 m!2356069))

(assert (=> b!1921022 m!2356069))

(assert (=> b!1921022 m!2356071))

(assert (=> b!1921022 m!2356071))

(declare-fun m!2356075 () Bool)

(assert (=> b!1921022 m!2356075))

(assert (=> b!1921029 m!2356055))

(assert (=> b!1921029 m!2356069))

(assert (=> b!1921029 m!2356069))

(assert (=> b!1921029 m!2356071))

(declare-fun m!2356077 () Bool)

(assert (=> d!585469 m!2356077))

(assert (=> d!585469 m!2355869))

(assert (=> d!585469 m!2355869))

(declare-fun m!2356079 () Bool)

(assert (=> d!585469 m!2356079))

(assert (=> d!585469 m!2355869))

(assert (=> d!585469 m!2355869))

(declare-fun m!2356081 () Bool)

(assert (=> d!585469 m!2356081))

(assert (=> d!585469 m!2355883))

(assert (=> b!1921030 m!2356055))

(declare-fun m!2356083 () Bool)

(assert (=> b!1921030 m!2356083))

(assert (=> b!1920808 d!585469))

(declare-fun bs!414372 () Bool)

(declare-fun b!1921058 () Bool)

(assert (= bs!414372 (and b!1921058 b!1920816)))

(declare-fun lambda!75002 () Int)

(assert (=> bs!414372 (not (= lambda!75002 lambda!74990))))

(declare-fun bs!414373 () Bool)

(assert (= bs!414373 (and b!1921058 d!585437)))

(assert (=> bs!414373 (= lambda!75002 lambda!74996)))

(declare-fun b!1921061 () Bool)

(declare-fun e!1227995 () Bool)

(assert (=> b!1921061 (= e!1227995 true)))

(declare-fun b!1921060 () Bool)

(declare-fun e!1227994 () Bool)

(assert (=> b!1921060 (= e!1227994 e!1227995)))

(declare-fun b!1921059 () Bool)

(declare-fun e!1227993 () Bool)

(assert (=> b!1921059 (= e!1227993 e!1227994)))

(assert (=> b!1921058 e!1227993))

(assert (= b!1921060 b!1921061))

(assert (= b!1921059 b!1921060))

(assert (= (and b!1921058 (is-Cons!21867 rules!3198)) b!1921059))

(assert (=> b!1921061 (< (dynLambda!10547 order!13673 (toValue!5548 (transformation!3919 (h!27268 rules!3198)))) (dynLambda!10548 order!13675 lambda!75002))))

(assert (=> b!1921061 (< (dynLambda!10549 order!13677 (toChars!5407 (transformation!3919 (h!27268 rules!3198)))) (dynLambda!10548 order!13675 lambda!75002))))

(assert (=> b!1921058 true))

(declare-fun d!585471 () Bool)

(declare-fun c!312246 () Bool)

(assert (=> d!585471 (= c!312246 (is-Cons!21866 tokens!598))))

(declare-fun e!1227990 () List!21947)

(assert (=> d!585471 (= (printWithSeparatorTokenWhenNeededList!571 thiss!23328 rules!3198 tokens!598 separatorToken!354) e!1227990)))

(declare-fun bm!118010 () Bool)

(declare-fun c!312247 () Bool)

(declare-fun c!312248 () Bool)

(assert (=> bm!118010 (= c!312247 c!312248)))

(declare-fun call!118018 () List!21947)

(declare-fun e!1227991 () List!21947)

(declare-fun lt!736413 () List!21947)

(declare-fun call!118015 () List!21947)

(assert (=> bm!118010 (= call!118018 (++!5860 e!1227991 (ite c!312248 lt!736413 call!118015)))))

(declare-fun b!1921051 () Bool)

(declare-fun e!1227989 () List!21947)

(assert (=> b!1921051 (= e!1227989 Nil!21865)))

(declare-datatypes ((IArray!14597 0))(
  ( (IArray!14598 (innerList!7356 List!21948)) )
))
(declare-datatypes ((Conc!7296 0))(
  ( (Node!7296 (left!17398 Conc!7296) (right!17728 Conc!7296) (csize!14822 Int) (cheight!7507 Int)) (Leaf!10719 (xs!10190 IArray!14597) (csize!14823 Int)) (Empty!7296) )
))
(declare-datatypes ((BalanceConc!14408 0))(
  ( (BalanceConc!14409 (c!312259 Conc!7296)) )
))
(declare-fun print!1504 (LexerInterface!3532 BalanceConc!14408) BalanceConc!14404)

(declare-fun singletonSeq!1905 (Token!7390) BalanceConc!14408)

(declare-fun printTailRec!1010 (LexerInterface!3532 BalanceConc!14408 Int BalanceConc!14404) BalanceConc!14404)

(assert (=> b!1921051 (= (print!1504 thiss!23328 (singletonSeq!1905 (h!27267 tokens!598))) (printTailRec!1010 thiss!23328 (singletonSeq!1905 (h!27267 tokens!598)) 0 (BalanceConc!14405 Empty!7294)))))

(declare-fun lt!736417 () Unit!36192)

(declare-fun Unit!36194 () Unit!36192)

(assert (=> b!1921051 (= lt!736417 Unit!36194)))

(declare-fun lt!736415 () Unit!36192)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!732 (LexerInterface!3532 List!21949 List!21947 List!21947) Unit!36192)

(assert (=> b!1921051 (= lt!736415 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!732 thiss!23328 rules!3198 call!118015 lt!736413))))

(assert (=> b!1921051 false))

(declare-fun lt!736416 () Unit!36192)

(declare-fun Unit!36195 () Unit!36192)

(assert (=> b!1921051 (= lt!736416 Unit!36195)))

(declare-fun c!312245 () Bool)

(declare-fun bm!118011 () Bool)

(declare-fun call!118016 () BalanceConc!14404)

(assert (=> bm!118011 (= call!118016 (charsOf!2461 (ite c!312248 (h!27267 tokens!598) (ite c!312245 separatorToken!354 (h!27267 tokens!598)))))))

(declare-fun b!1921052 () Bool)

(declare-fun call!118019 () List!21947)

(assert (=> b!1921052 (= e!1227991 call!118019)))

(declare-fun b!1921053 () Bool)

(assert (=> b!1921053 (= e!1227990 Nil!21865)))

(declare-fun b!1921054 () Bool)

(declare-fun e!1227992 () List!21947)

(assert (=> b!1921054 (= e!1227992 call!118018)))

(declare-fun b!1921055 () Bool)

(assert (=> b!1921055 (= e!1227989 (++!5860 call!118018 lt!736413))))

(declare-fun bm!118012 () Bool)

(declare-fun call!118017 () BalanceConc!14404)

(assert (=> bm!118012 (= call!118017 call!118016)))

(declare-fun b!1921056 () Bool)

(declare-fun lt!736418 () Option!4519)

(assert (=> b!1921056 (= c!312245 (and (is-Some!4518 lt!736418) (not (= (_1!11713 (v!26591 lt!736418)) (h!27267 tokens!598)))))))

(assert (=> b!1921056 (= e!1227992 e!1227989)))

(declare-fun bm!118013 () Bool)

(assert (=> bm!118013 (= call!118015 call!118019)))

(declare-fun b!1921057 () Bool)

(assert (=> b!1921057 (= e!1227991 (list!8838 (charsOf!2461 (h!27267 tokens!598))))))

(declare-fun bm!118014 () Bool)

(assert (=> bm!118014 (= call!118019 (list!8838 (ite c!312248 call!118016 call!118017)))))

(assert (=> b!1921058 (= e!1227990 e!1227992)))

(declare-fun lt!736414 () Unit!36192)

(declare-fun forallContained!701 (List!21948 Int Token!7390) Unit!36192)

(assert (=> b!1921058 (= lt!736414 (forallContained!701 tokens!598 lambda!75002 (h!27267 tokens!598)))))

(assert (=> b!1921058 (= lt!736413 (printWithSeparatorTokenWhenNeededList!571 thiss!23328 rules!3198 (t!178791 tokens!598) separatorToken!354))))

(assert (=> b!1921058 (= lt!736418 (maxPrefix!1970 thiss!23328 rules!3198 (++!5860 (list!8838 (charsOf!2461 (h!27267 tokens!598))) lt!736413)))))

(assert (=> b!1921058 (= c!312248 (and (is-Some!4518 lt!736418) (= (_1!11713 (v!26591 lt!736418)) (h!27267 tokens!598))))))

(assert (= (and d!585471 c!312246) b!1921058))

(assert (= (and d!585471 (not c!312246)) b!1921053))

(assert (= (and b!1921058 c!312248) b!1921054))

(assert (= (and b!1921058 (not c!312248)) b!1921056))

(assert (= (and b!1921056 c!312245) b!1921055))

(assert (= (and b!1921056 (not c!312245)) b!1921051))

(assert (= (or b!1921055 b!1921051) bm!118012))

(assert (= (or b!1921055 b!1921051) bm!118013))

(assert (= (or b!1921054 bm!118012) bm!118011))

(assert (= (or b!1921054 bm!118013) bm!118014))

(assert (= (or b!1921054 b!1921055) bm!118010))

(assert (= (and bm!118010 c!312247) b!1921052))

(assert (= (and bm!118010 (not c!312247)) b!1921057))

(declare-fun m!2356085 () Bool)

(assert (=> bm!118014 m!2356085))

(declare-fun m!2356087 () Bool)

(assert (=> b!1921051 m!2356087))

(assert (=> b!1921051 m!2356087))

(declare-fun m!2356089 () Bool)

(assert (=> b!1921051 m!2356089))

(assert (=> b!1921051 m!2356087))

(declare-fun m!2356091 () Bool)

(assert (=> b!1921051 m!2356091))

(declare-fun m!2356093 () Bool)

(assert (=> b!1921051 m!2356093))

(declare-fun m!2356095 () Bool)

(assert (=> bm!118010 m!2356095))

(declare-fun m!2356097 () Bool)

(assert (=> b!1921055 m!2356097))

(declare-fun m!2356099 () Bool)

(assert (=> b!1921057 m!2356099))

(assert (=> b!1921057 m!2356099))

(declare-fun m!2356101 () Bool)

(assert (=> b!1921057 m!2356101))

(declare-fun m!2356103 () Bool)

(assert (=> bm!118011 m!2356103))

(assert (=> b!1921058 m!2356099))

(assert (=> b!1921058 m!2356101))

(assert (=> b!1921058 m!2356099))

(declare-fun m!2356105 () Bool)

(assert (=> b!1921058 m!2356105))

(assert (=> b!1921058 m!2356101))

(declare-fun m!2356107 () Bool)

(assert (=> b!1921058 m!2356107))

(declare-fun m!2356109 () Bool)

(assert (=> b!1921058 m!2356109))

(assert (=> b!1921058 m!2356107))

(declare-fun m!2356111 () Bool)

(assert (=> b!1921058 m!2356111))

(assert (=> b!1920808 d!585471))

(declare-fun d!585473 () Bool)

(declare-fun res!859149 () Bool)

(declare-fun e!1228000 () Bool)

(assert (=> d!585473 (=> res!859149 e!1228000)))

(assert (=> d!585473 (= res!859149 (not (is-Cons!21867 rules!3198)))))

(assert (=> d!585473 (= (sepAndNonSepRulesDisjointChars!1017 rules!3198 rules!3198) e!1228000)))

(declare-fun b!1921066 () Bool)

(declare-fun e!1228001 () Bool)

(assert (=> b!1921066 (= e!1228000 e!1228001)))

(declare-fun res!859150 () Bool)

(assert (=> b!1921066 (=> (not res!859150) (not e!1228001))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!438 (Rule!7638 List!21949) Bool)

(assert (=> b!1921066 (= res!859150 (ruleDisjointCharsFromAllFromOtherType!438 (h!27268 rules!3198) rules!3198))))

(declare-fun b!1921067 () Bool)

(assert (=> b!1921067 (= e!1228001 (sepAndNonSepRulesDisjointChars!1017 rules!3198 (t!178792 rules!3198)))))

(assert (= (and d!585473 (not res!859149)) b!1921066))

(assert (= (and b!1921066 res!859150) b!1921067))

(declare-fun m!2356113 () Bool)

(assert (=> b!1921066 m!2356113))

(declare-fun m!2356115 () Bool)

(assert (=> b!1921067 m!2356115))

(assert (=> b!1920809 d!585473))

(declare-fun d!585475 () Bool)

(assert (=> d!585475 (= (inv!28935 (tag!4359 (h!27268 rules!3198))) (= (mod (str.len (value!123283 (tag!4359 (h!27268 rules!3198)))) 2) 0))))

(assert (=> b!1920815 d!585475))

(declare-fun d!585477 () Bool)

(declare-fun res!859151 () Bool)

(declare-fun e!1228002 () Bool)

(assert (=> d!585477 (=> (not res!859151) (not e!1228002))))

(assert (=> d!585477 (= res!859151 (semiInverseModEq!1554 (toChars!5407 (transformation!3919 (h!27268 rules!3198))) (toValue!5548 (transformation!3919 (h!27268 rules!3198)))))))

(assert (=> d!585477 (= (inv!28938 (transformation!3919 (h!27268 rules!3198))) e!1228002)))

(declare-fun b!1921068 () Bool)

(assert (=> b!1921068 (= e!1228002 (equivClasses!1481 (toChars!5407 (transformation!3919 (h!27268 rules!3198))) (toValue!5548 (transformation!3919 (h!27268 rules!3198)))))))

(assert (= (and d!585477 res!859151) b!1921068))

(declare-fun m!2356117 () Bool)

(assert (=> d!585477 m!2356117))

(declare-fun m!2356119 () Bool)

(assert (=> b!1921068 m!2356119))

(assert (=> b!1920815 d!585477))

(declare-fun d!585479 () Bool)

(assert (=> d!585479 (= (isEmpty!13443 tokens!598) (is-Nil!21866 tokens!598))))

(assert (=> b!1920805 d!585479))

(declare-fun d!585481 () Bool)

(declare-fun res!859156 () Bool)

(declare-fun e!1228007 () Bool)

(assert (=> d!585481 (=> res!859156 e!1228007)))

(assert (=> d!585481 (= res!859156 (is-Nil!21866 tokens!598))))

(assert (=> d!585481 (= (forall!4617 tokens!598 lambda!74990) e!1228007)))

(declare-fun b!1921073 () Bool)

(declare-fun e!1228008 () Bool)

(assert (=> b!1921073 (= e!1228007 e!1228008)))

(declare-fun res!859157 () Bool)

(assert (=> b!1921073 (=> (not res!859157) (not e!1228008))))

(declare-fun dynLambda!10550 (Int Token!7390) Bool)

(assert (=> b!1921073 (= res!859157 (dynLambda!10550 lambda!74990 (h!27267 tokens!598)))))

(declare-fun b!1921074 () Bool)

(assert (=> b!1921074 (= e!1228008 (forall!4617 (t!178791 tokens!598) lambda!74990))))

(assert (= (and d!585481 (not res!859156)) b!1921073))

(assert (= (and b!1921073 res!859157) b!1921074))

(declare-fun b_lambda!63455 () Bool)

(assert (=> (not b_lambda!63455) (not b!1921073)))

(declare-fun m!2356121 () Bool)

(assert (=> b!1921073 m!2356121))

(declare-fun m!2356123 () Bool)

(assert (=> b!1921074 m!2356123))

(assert (=> b!1920816 d!585481))

(declare-fun d!585483 () Bool)

(declare-fun lt!736423 () Bool)

(declare-fun e!1228014 () Bool)

(assert (=> d!585483 (= lt!736423 e!1228014)))

(declare-fun res!859164 () Bool)

(assert (=> d!585483 (=> (not res!859164) (not e!1228014))))

(declare-fun list!8839 (BalanceConc!14408) List!21948)

(declare-datatypes ((tuple2!20492 0))(
  ( (tuple2!20493 (_1!11715 BalanceConc!14408) (_2!11715 BalanceConc!14404)) )
))
(declare-fun lex!1562 (LexerInterface!3532 List!21949 BalanceConc!14404) tuple2!20492)

(assert (=> d!585483 (= res!859164 (= (list!8839 (_1!11715 (lex!1562 thiss!23328 rules!3198 (print!1504 thiss!23328 (singletonSeq!1905 separatorToken!354))))) (list!8839 (singletonSeq!1905 separatorToken!354))))))

(declare-fun e!1228013 () Bool)

(assert (=> d!585483 (= lt!736423 e!1228013)))

(declare-fun res!859165 () Bool)

(assert (=> d!585483 (=> (not res!859165) (not e!1228013))))

(declare-fun lt!736424 () tuple2!20492)

(declare-fun size!17070 (BalanceConc!14408) Int)

(assert (=> d!585483 (= res!859165 (= (size!17070 (_1!11715 lt!736424)) 1))))

(assert (=> d!585483 (= lt!736424 (lex!1562 thiss!23328 rules!3198 (print!1504 thiss!23328 (singletonSeq!1905 separatorToken!354))))))

(assert (=> d!585483 (not (isEmpty!13444 rules!3198))))

(assert (=> d!585483 (= (rulesProduceIndividualToken!1704 thiss!23328 rules!3198 separatorToken!354) lt!736423)))

(declare-fun b!1921081 () Bool)

(declare-fun res!859166 () Bool)

(assert (=> b!1921081 (=> (not res!859166) (not e!1228013))))

(declare-fun apply!5665 (BalanceConc!14408 Int) Token!7390)

(assert (=> b!1921081 (= res!859166 (= (apply!5665 (_1!11715 lt!736424) 0) separatorToken!354))))

(declare-fun b!1921082 () Bool)

(declare-fun isEmpty!13449 (BalanceConc!14404) Bool)

(assert (=> b!1921082 (= e!1228013 (isEmpty!13449 (_2!11715 lt!736424)))))

(declare-fun b!1921083 () Bool)

(assert (=> b!1921083 (= e!1228014 (isEmpty!13449 (_2!11715 (lex!1562 thiss!23328 rules!3198 (print!1504 thiss!23328 (singletonSeq!1905 separatorToken!354))))))))

(assert (= (and d!585483 res!859165) b!1921081))

(assert (= (and b!1921081 res!859166) b!1921082))

(assert (= (and d!585483 res!859164) b!1921083))

(declare-fun m!2356125 () Bool)

(assert (=> d!585483 m!2356125))

(declare-fun m!2356127 () Bool)

(assert (=> d!585483 m!2356127))

(assert (=> d!585483 m!2356125))

(declare-fun m!2356129 () Bool)

(assert (=> d!585483 m!2356129))

(declare-fun m!2356131 () Bool)

(assert (=> d!585483 m!2356131))

(declare-fun m!2356133 () Bool)

(assert (=> d!585483 m!2356133))

(assert (=> d!585483 m!2356125))

(assert (=> d!585483 m!2356131))

(assert (=> d!585483 m!2355881))

(declare-fun m!2356135 () Bool)

(assert (=> d!585483 m!2356135))

(declare-fun m!2356137 () Bool)

(assert (=> b!1921081 m!2356137))

(declare-fun m!2356139 () Bool)

(assert (=> b!1921082 m!2356139))

(assert (=> b!1921083 m!2356125))

(assert (=> b!1921083 m!2356125))

(assert (=> b!1921083 m!2356131))

(assert (=> b!1921083 m!2356131))

(assert (=> b!1921083 m!2356133))

(declare-fun m!2356141 () Bool)

(assert (=> b!1921083 m!2356141))

(assert (=> b!1920806 d!585483))

(declare-fun b!1921096 () Bool)

(declare-fun e!1228017 () Bool)

(declare-fun tp!549088 () Bool)

(assert (=> b!1921096 (= e!1228017 tp!549088)))

(declare-fun b!1921095 () Bool)

(declare-fun tp!549087 () Bool)

(declare-fun tp!549086 () Bool)

(assert (=> b!1921095 (= e!1228017 (and tp!549087 tp!549086))))

(declare-fun b!1921094 () Bool)

(declare-fun tp_is_empty!9115 () Bool)

(assert (=> b!1921094 (= e!1228017 tp_is_empty!9115)))

(declare-fun b!1921097 () Bool)

(declare-fun tp!549085 () Bool)

(declare-fun tp!549084 () Bool)

(assert (=> b!1921097 (= e!1228017 (and tp!549085 tp!549084))))

(assert (=> b!1920807 (= tp!549025 e!1228017)))

(assert (= (and b!1920807 (is-ElementMatch!5344 (regex!3919 (rule!6122 separatorToken!354)))) b!1921094))

(assert (= (and b!1920807 (is-Concat!9400 (regex!3919 (rule!6122 separatorToken!354)))) b!1921095))

(assert (= (and b!1920807 (is-Star!5344 (regex!3919 (rule!6122 separatorToken!354)))) b!1921096))

(assert (= (and b!1920807 (is-Union!5344 (regex!3919 (rule!6122 separatorToken!354)))) b!1921097))

(declare-fun b!1921111 () Bool)

(declare-fun b_free!54965 () Bool)

(declare-fun b_next!55669 () Bool)

(assert (=> b!1921111 (= b_free!54965 (not b_next!55669))))

(declare-fun tp!549099 () Bool)

(declare-fun b_and!150213 () Bool)

(assert (=> b!1921111 (= tp!549099 b_and!150213)))

(declare-fun b_free!54967 () Bool)

(declare-fun b_next!55671 () Bool)

(assert (=> b!1921111 (= b_free!54967 (not b_next!55671))))

(declare-fun t!178824 () Bool)

(declare-fun tb!117331 () Bool)

(assert (=> (and b!1921111 (= (toChars!5407 (transformation!3919 (rule!6122 (h!27267 (t!178791 tokens!598))))) (toChars!5407 (transformation!3919 (rule!6122 (h!27267 tokens!598))))) t!178824) tb!117331))

(declare-fun result!141790 () Bool)

(assert (= result!141790 result!141764))

(assert (=> b!1920893 t!178824))

(declare-fun tb!117333 () Bool)

(declare-fun t!178826 () Bool)

(assert (=> (and b!1921111 (= (toChars!5407 (transformation!3919 (rule!6122 (h!27267 (t!178791 tokens!598))))) (toChars!5407 (transformation!3919 (rule!6122 separatorToken!354)))) t!178826) tb!117333))

(declare-fun result!141792 () Bool)

(assert (= result!141792 result!141780))

(assert (=> b!1920984 t!178826))

(declare-fun b_and!150215 () Bool)

(declare-fun tp!549102 () Bool)

(assert (=> b!1921111 (= tp!549102 (and (=> t!178824 result!141790) (=> t!178826 result!141792) b_and!150215))))

(declare-fun e!1228030 () Bool)

(declare-fun e!1228033 () Bool)

(declare-fun b!1921109 () Bool)

(declare-fun tp!549103 () Bool)

(assert (=> b!1921109 (= e!1228030 (and (inv!21 (value!123284 (h!27267 (t!178791 tokens!598)))) e!1228033 tp!549103))))

(declare-fun b!1921108 () Bool)

(declare-fun e!1228034 () Bool)

(declare-fun tp!549100 () Bool)

(assert (=> b!1921108 (= e!1228034 (and (inv!28939 (h!27267 (t!178791 tokens!598))) e!1228030 tp!549100))))

(declare-fun e!1228035 () Bool)

(declare-fun b!1921110 () Bool)

(declare-fun tp!549101 () Bool)

(assert (=> b!1921110 (= e!1228033 (and tp!549101 (inv!28935 (tag!4359 (rule!6122 (h!27267 (t!178791 tokens!598))))) (inv!28938 (transformation!3919 (rule!6122 (h!27267 (t!178791 tokens!598))))) e!1228035))))

(assert (=> b!1921111 (= e!1228035 (and tp!549099 tp!549102))))

(assert (=> b!1920823 (= tp!549020 e!1228034)))

(assert (= b!1921110 b!1921111))

(assert (= b!1921109 b!1921110))

(assert (= b!1921108 b!1921109))

(assert (= (and b!1920823 (is-Cons!21866 (t!178791 tokens!598))) b!1921108))

(declare-fun m!2356143 () Bool)

(assert (=> b!1921109 m!2356143))

(declare-fun m!2356145 () Bool)

(assert (=> b!1921108 m!2356145))

(declare-fun m!2356147 () Bool)

(assert (=> b!1921110 m!2356147))

(declare-fun m!2356149 () Bool)

(assert (=> b!1921110 m!2356149))

(declare-fun b!1921116 () Bool)

(declare-fun e!1228038 () Bool)

(declare-fun tp!549106 () Bool)

(assert (=> b!1921116 (= e!1228038 (and tp_is_empty!9115 tp!549106))))

(assert (=> b!1920813 (= tp!549026 e!1228038)))

(assert (= (and b!1920813 (is-Cons!21865 (originalCharacters!4726 separatorToken!354))) b!1921116))

(declare-fun b!1921127 () Bool)

(declare-fun b_free!54969 () Bool)

(declare-fun b_next!55673 () Bool)

(assert (=> b!1921127 (= b_free!54969 (not b_next!55673))))

(declare-fun tp!549117 () Bool)

(declare-fun b_and!150217 () Bool)

(assert (=> b!1921127 (= tp!549117 b_and!150217)))

(declare-fun b_free!54971 () Bool)

(declare-fun b_next!55675 () Bool)

(assert (=> b!1921127 (= b_free!54971 (not b_next!55675))))

(declare-fun t!178828 () Bool)

(declare-fun tb!117335 () Bool)

(assert (=> (and b!1921127 (= (toChars!5407 (transformation!3919 (h!27268 (t!178792 rules!3198)))) (toChars!5407 (transformation!3919 (rule!6122 (h!27267 tokens!598))))) t!178828) tb!117335))

(declare-fun result!141798 () Bool)

(assert (= result!141798 result!141764))

(assert (=> b!1920893 t!178828))

(declare-fun tb!117337 () Bool)

(declare-fun t!178830 () Bool)

(assert (=> (and b!1921127 (= (toChars!5407 (transformation!3919 (h!27268 (t!178792 rules!3198)))) (toChars!5407 (transformation!3919 (rule!6122 separatorToken!354)))) t!178830) tb!117337))

(declare-fun result!141800 () Bool)

(assert (= result!141800 result!141780))

(assert (=> b!1920984 t!178830))

(declare-fun b_and!150219 () Bool)

(declare-fun tp!549115 () Bool)

(assert (=> b!1921127 (= tp!549115 (and (=> t!178828 result!141798) (=> t!178830 result!141800) b_and!150219))))

(declare-fun e!1228047 () Bool)

(assert (=> b!1921127 (= e!1228047 (and tp!549117 tp!549115))))

(declare-fun tp!549116 () Bool)

(declare-fun e!1228048 () Bool)

(declare-fun b!1921126 () Bool)

(assert (=> b!1921126 (= e!1228048 (and tp!549116 (inv!28935 (tag!4359 (h!27268 (t!178792 rules!3198)))) (inv!28938 (transformation!3919 (h!27268 (t!178792 rules!3198)))) e!1228047))))

(declare-fun b!1921125 () Bool)

(declare-fun e!1228050 () Bool)

(declare-fun tp!549118 () Bool)

(assert (=> b!1921125 (= e!1228050 (and e!1228048 tp!549118))))

(assert (=> b!1920818 (= tp!549024 e!1228050)))

(assert (= b!1921126 b!1921127))

(assert (= b!1921125 b!1921126))

(assert (= (and b!1920818 (is-Cons!21867 (t!178792 rules!3198))) b!1921125))

(declare-fun m!2356151 () Bool)

(assert (=> b!1921126 m!2356151))

(declare-fun m!2356153 () Bool)

(assert (=> b!1921126 m!2356153))

(declare-fun b!1921128 () Bool)

(declare-fun e!1228051 () Bool)

(declare-fun tp!549119 () Bool)

(assert (=> b!1921128 (= e!1228051 (and tp_is_empty!9115 tp!549119))))

(assert (=> b!1920819 (= tp!549015 e!1228051)))

(assert (= (and b!1920819 (is-Cons!21865 (originalCharacters!4726 (h!27267 tokens!598)))) b!1921128))

(declare-fun b!1921131 () Bool)

(declare-fun e!1228052 () Bool)

(declare-fun tp!549124 () Bool)

(assert (=> b!1921131 (= e!1228052 tp!549124)))

(declare-fun b!1921130 () Bool)

(declare-fun tp!549123 () Bool)

(declare-fun tp!549122 () Bool)

(assert (=> b!1921130 (= e!1228052 (and tp!549123 tp!549122))))

(declare-fun b!1921129 () Bool)

(assert (=> b!1921129 (= e!1228052 tp_is_empty!9115)))

(declare-fun b!1921132 () Bool)

(declare-fun tp!549121 () Bool)

(declare-fun tp!549120 () Bool)

(assert (=> b!1921132 (= e!1228052 (and tp!549121 tp!549120))))

(assert (=> b!1920825 (= tp!549019 e!1228052)))

(assert (= (and b!1920825 (is-ElementMatch!5344 (regex!3919 (rule!6122 (h!27267 tokens!598))))) b!1921129))

(assert (= (and b!1920825 (is-Concat!9400 (regex!3919 (rule!6122 (h!27267 tokens!598))))) b!1921130))

(assert (= (and b!1920825 (is-Star!5344 (regex!3919 (rule!6122 (h!27267 tokens!598))))) b!1921131))

(assert (= (and b!1920825 (is-Union!5344 (regex!3919 (rule!6122 (h!27267 tokens!598))))) b!1921132))

(declare-fun b!1921135 () Bool)

(declare-fun e!1228053 () Bool)

(declare-fun tp!549129 () Bool)

(assert (=> b!1921135 (= e!1228053 tp!549129)))

(declare-fun b!1921134 () Bool)

(declare-fun tp!549128 () Bool)

(declare-fun tp!549127 () Bool)

(assert (=> b!1921134 (= e!1228053 (and tp!549128 tp!549127))))

(declare-fun b!1921133 () Bool)

(assert (=> b!1921133 (= e!1228053 tp_is_empty!9115)))

(declare-fun b!1921136 () Bool)

(declare-fun tp!549126 () Bool)

(declare-fun tp!549125 () Bool)

(assert (=> b!1921136 (= e!1228053 (and tp!549126 tp!549125))))

(assert (=> b!1920815 (= tp!549016 e!1228053)))

(assert (= (and b!1920815 (is-ElementMatch!5344 (regex!3919 (h!27268 rules!3198)))) b!1921133))

(assert (= (and b!1920815 (is-Concat!9400 (regex!3919 (h!27268 rules!3198)))) b!1921134))

(assert (= (and b!1920815 (is-Star!5344 (regex!3919 (h!27268 rules!3198)))) b!1921135))

(assert (= (and b!1920815 (is-Union!5344 (regex!3919 (h!27268 rules!3198)))) b!1921136))

(declare-fun b_lambda!63457 () Bool)

(assert (= b_lambda!63455 (or b!1920816 b_lambda!63457)))

(declare-fun bs!414374 () Bool)

(declare-fun d!585485 () Bool)

(assert (= bs!414374 (and d!585485 b!1920816)))

(assert (=> bs!414374 (= (dynLambda!10550 lambda!74990 (h!27267 tokens!598)) (not (isSeparator!3919 (rule!6122 (h!27267 tokens!598)))))))

(assert (=> b!1921073 d!585485))

(declare-fun b_lambda!63459 () Bool)

(assert (= b_lambda!63449 (or (and b!1920817 b_free!54943 (= (toChars!5407 (transformation!3919 (rule!6122 separatorToken!354))) (toChars!5407 (transformation!3919 (rule!6122 (h!27267 tokens!598)))))) (and b!1921111 b_free!54967 (= (toChars!5407 (transformation!3919 (rule!6122 (h!27267 (t!178791 tokens!598))))) (toChars!5407 (transformation!3919 (rule!6122 (h!27267 tokens!598)))))) (and b!1920821 b_free!54947 (= (toChars!5407 (transformation!3919 (h!27268 rules!3198))) (toChars!5407 (transformation!3919 (rule!6122 (h!27267 tokens!598)))))) (and b!1921127 b_free!54971 (= (toChars!5407 (transformation!3919 (h!27268 (t!178792 rules!3198)))) (toChars!5407 (transformation!3919 (rule!6122 (h!27267 tokens!598)))))) (and b!1920810 b_free!54951) b_lambda!63459)))

(declare-fun b_lambda!63461 () Bool)

(assert (= b_lambda!63453 (or (and b!1921111 b_free!54967 (= (toChars!5407 (transformation!3919 (rule!6122 (h!27267 (t!178791 tokens!598))))) (toChars!5407 (transformation!3919 (rule!6122 separatorToken!354))))) (and b!1921127 b_free!54971 (= (toChars!5407 (transformation!3919 (h!27268 (t!178792 rules!3198)))) (toChars!5407 (transformation!3919 (rule!6122 separatorToken!354))))) (and b!1920810 b_free!54951 (= (toChars!5407 (transformation!3919 (rule!6122 (h!27267 tokens!598)))) (toChars!5407 (transformation!3919 (rule!6122 separatorToken!354))))) (and b!1920817 b_free!54943) (and b!1920821 b_free!54947 (= (toChars!5407 (transformation!3919 (h!27268 rules!3198))) (toChars!5407 (transformation!3919 (rule!6122 separatorToken!354))))) b_lambda!63461)))

(push 1)

(assert (not b!1920969))

(assert (not b!1920989))

(assert (not b!1921108))

(assert (not b_lambda!63461))

(assert (not b!1921066))

(assert (not b!1920894))

(assert (not b_lambda!63459))

(assert (not b!1921081))

(assert b_and!150175)

(assert (not d!585467))

(assert (not b!1921027))

(assert (not b!1920979))

(assert (not b!1921002))

(assert (not b_lambda!63457))

(assert (not d!585437))

(assert (not b!1921026))

(assert (not b!1920893))

(assert (not b!1921131))

(assert (not b_next!55649))

(assert (not b!1921067))

(assert (not d!585459))

(assert b_and!150213)

(assert (not b!1920915))

(assert (not bm!118011))

(assert (not b!1921109))

(assert (not tb!117325))

(assert (not b!1920902))

(assert (not b!1921055))

(assert (not b!1921110))

(assert (not b!1921125))

(assert (not d!585463))

(assert (not b_next!55669))

(assert (not d!585431))

(assert (not b!1921058))

(assert (not b_next!55653))

(assert (not b!1921024))

(assert (not d!585455))

(assert b_and!150217)

(assert b_and!150219)

(assert (not b!1921135))

(assert (not d!585483))

(assert (not b!1921029))

(assert (not b!1921126))

(assert (not b_next!55673))

(assert (not b!1921136))

(assert (not d!585469))

(assert (not b!1921000))

(assert (not b!1921051))

(assert b_and!150171)

(assert (not b!1920994))

(assert (not b!1921128))

(assert (not b!1921134))

(assert (not bm!117999))

(assert (not b_next!55671))

(assert (not b!1921001))

(assert tp_is_empty!9115)

(assert (not b!1920970))

(assert (not b!1920916))

(assert (not b_next!55647))

(assert (not b!1920984))

(assert (not b!1921023))

(assert (not b!1921025))

(assert b_and!150209)

(assert (not b!1921097))

(assert (not d!585451))

(assert (not b!1920998))

(assert (not b!1921116))

(assert (not b!1920986))

(assert (not d!585477))

(assert (not b!1921059))

(assert (not b_next!55675))

(assert (not b!1921132))

(assert (not b_next!55651))

(assert (not b_next!55645))

(assert (not b!1921074))

(assert (not b!1921096))

(assert (not b!1921095))

(assert (not b_next!55655))

(assert (not b!1921068))

(assert (not b!1920985))

(assert b_and!150207)

(assert (not b!1920914))

(assert (not bm!118014))

(assert (not b!1921022))

(assert (not b!1920995))

(assert (not b!1921082))

(assert (not d!585433))

(assert (not b!1921083))

(assert (not b!1921057))

(assert b_and!150211)

(assert b_and!150215)

(assert (not tb!117313))

(assert b_and!150179)

(assert (not b!1921030))

(assert (not b!1921130))

(assert (not b!1920899))

(assert (not bm!118010))

(check-sat)

(pop 1)

(push 1)

(assert b_and!150175)

(assert (not b_next!55649))

(assert b_and!150213)

(assert (not b_next!55673))

(assert b_and!150171)

(assert (not b_next!55671))

(assert (not b_next!55647))

(assert b_and!150209)

(assert (not b_next!55645))

(assert (not b_next!55655))

(assert b_and!150207)

(assert b_and!150179)

(assert (not b_next!55669))

(assert (not b_next!55653))

(assert b_and!150217)

(assert b_and!150219)

(assert (not b_next!55675))

(assert (not b_next!55651))

(assert b_and!150211)

(assert b_and!150215)

(check-sat)

(pop 1)

