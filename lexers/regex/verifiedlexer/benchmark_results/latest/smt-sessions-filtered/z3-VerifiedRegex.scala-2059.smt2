; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104714 () Bool)

(assert start!104714)

(declare-fun b!1182249 () Bool)

(declare-fun b_free!28237 () Bool)

(declare-fun b_next!28941 () Bool)

(assert (=> b!1182249 (= b_free!28237 (not b_next!28941))))

(declare-fun tp!336891 () Bool)

(declare-fun b_and!81237 () Bool)

(assert (=> b!1182249 (= tp!336891 b_and!81237)))

(declare-fun b_free!28239 () Bool)

(declare-fun b_next!28943 () Bool)

(assert (=> b!1182249 (= b_free!28239 (not b_next!28943))))

(declare-fun tp!336892 () Bool)

(declare-fun b_and!81239 () Bool)

(assert (=> b!1182249 (= tp!336892 b_and!81239)))

(declare-fun b!1182252 () Bool)

(declare-fun b_free!28241 () Bool)

(declare-fun b_next!28945 () Bool)

(assert (=> b!1182252 (= b_free!28241 (not b_next!28945))))

(declare-fun tp!336893 () Bool)

(declare-fun b_and!81241 () Bool)

(assert (=> b!1182252 (= tp!336893 b_and!81241)))

(declare-fun b_free!28243 () Bool)

(declare-fun b_next!28947 () Bool)

(assert (=> b!1182252 (= b_free!28243 (not b_next!28947))))

(declare-fun tp!336888 () Bool)

(declare-fun b_and!81243 () Bool)

(assert (=> b!1182252 (= tp!336888 b_and!81243)))

(declare-fun b!1182269 () Bool)

(declare-fun e!759023 () Bool)

(assert (=> b!1182269 (= e!759023 true)))

(declare-fun b!1182268 () Bool)

(declare-fun e!759022 () Bool)

(assert (=> b!1182268 (= e!759022 e!759023)))

(declare-fun b!1182267 () Bool)

(declare-fun e!759021 () Bool)

(assert (=> b!1182267 (= e!759021 e!759022)))

(declare-fun b!1182257 () Bool)

(assert (=> b!1182257 e!759021))

(assert (= b!1182268 b!1182269))

(assert (= b!1182267 b!1182268))

(declare-datatypes ((C!6976 0))(
  ( (C!6977 (val!3784 Int)) )
))
(declare-datatypes ((List!11826 0))(
  ( (Nil!11802) (Cons!11802 (h!17203 C!6976) (t!111530 List!11826)) )
))
(declare-datatypes ((IArray!7741 0))(
  ( (IArray!7742 (innerList!3928 List!11826)) )
))
(declare-datatypes ((Conc!3868 0))(
  ( (Node!3868 (left!10283 Conc!3868) (right!10613 Conc!3868) (csize!7966 Int) (cheight!4079 Int)) (Leaf!5928 (xs!6573 IArray!7741) (csize!7967 Int)) (Empty!3868) )
))
(declare-datatypes ((List!11827 0))(
  ( (Nil!11803) (Cons!11803 (h!17204 (_ BitVec 16)) (t!111531 List!11827)) )
))
(declare-datatypes ((BalanceConc!7758 0))(
  ( (BalanceConc!7759 (c!196857 Conc!3868)) )
))
(declare-datatypes ((TokenValue!2125 0))(
  ( (FloatLiteralValue!4250 (text!15320 List!11827)) (TokenValueExt!2124 (__x!7961 Int)) (Broken!10625 (value!66712 List!11827)) (Object!2148) (End!2125) (Def!2125) (Underscore!2125) (Match!2125) (Else!2125) (Error!2125) (Case!2125) (If!2125) (Extends!2125) (Abstract!2125) (Class!2125) (Val!2125) (DelimiterValue!4250 (del!2185 List!11827)) (KeywordValue!2131 (value!66713 List!11827)) (CommentValue!4250 (value!66714 List!11827)) (WhitespaceValue!4250 (value!66715 List!11827)) (IndentationValue!2125 (value!66716 List!11827)) (String!14292) (Int32!2125) (Broken!10626 (value!66717 List!11827)) (Boolean!2126) (Unit!18119) (OperatorValue!2128 (op!2185 List!11827)) (IdentifierValue!4250 (value!66718 List!11827)) (IdentifierValue!4251 (value!66719 List!11827)) (WhitespaceValue!4251 (value!66720 List!11827)) (True!4250) (False!4250) (Broken!10627 (value!66721 List!11827)) (Broken!10628 (value!66722 List!11827)) (True!4251) (RightBrace!2125) (RightBracket!2125) (Colon!2125) (Null!2125) (Comma!2125) (LeftBracket!2125) (False!4251) (LeftBrace!2125) (ImaginaryLiteralValue!2125 (text!15321 List!11827)) (StringLiteralValue!6375 (value!66723 List!11827)) (EOFValue!2125 (value!66724 List!11827)) (IdentValue!2125 (value!66725 List!11827)) (DelimiterValue!4251 (value!66726 List!11827)) (DedentValue!2125 (value!66727 List!11827)) (NewLineValue!2125 (value!66728 List!11827)) (IntegerValue!6375 (value!66729 (_ BitVec 32)) (text!15322 List!11827)) (IntegerValue!6376 (value!66730 Int) (text!15323 List!11827)) (Times!2125) (Or!2125) (Equal!2125) (Minus!2125) (Broken!10629 (value!66731 List!11827)) (And!2125) (Div!2125) (LessEqual!2125) (Mod!2125) (Concat!5454) (Not!2125) (Plus!2125) (SpaceValue!2125 (value!66732 List!11827)) (IntegerValue!6377 (value!66733 Int) (text!15324 List!11827)) (StringLiteralValue!6376 (text!15325 List!11827)) (FloatLiteralValue!4251 (text!15326 List!11827)) (BytesLiteralValue!2125 (value!66734 List!11827)) (CommentValue!4251 (value!66735 List!11827)) (StringLiteralValue!6377 (value!66736 List!11827)) (ErrorTokenValue!2125 (msg!2186 List!11827)) )
))
(declare-datatypes ((Regex!3329 0))(
  ( (ElementMatch!3329 (c!196858 C!6976)) (Concat!5455 (regOne!7170 Regex!3329) (regTwo!7170 Regex!3329)) (EmptyExpr!3329) (Star!3329 (reg!3658 Regex!3329)) (EmptyLang!3329) (Union!3329 (regOne!7171 Regex!3329) (regTwo!7171 Regex!3329)) )
))
(declare-datatypes ((String!14293 0))(
  ( (String!14294 (value!66737 String)) )
))
(declare-datatypes ((TokenValueInjection!3950 0))(
  ( (TokenValueInjection!3951 (toValue!3168 Int) (toChars!3027 Int)) )
))
(declare-datatypes ((Rule!3918 0))(
  ( (Rule!3919 (regex!2059 Regex!3329) (tag!2321 String!14293) (isSeparator!2059 Bool) (transformation!2059 TokenValueInjection!3950)) )
))
(declare-datatypes ((List!11828 0))(
  ( (Nil!11804) (Cons!11804 (h!17205 Rule!3918) (t!111532 List!11828)) )
))
(declare-fun rules!4386 () List!11828)

(get-info :version)

(assert (= (and b!1182257 ((_ is Cons!11804) rules!4386)) b!1182267))

(declare-fun order!7275 () Int)

(declare-fun lambda!48691 () Int)

(declare-fun order!7273 () Int)

(declare-fun dynLambda!5230 (Int Int) Int)

(declare-fun dynLambda!5231 (Int Int) Int)

(assert (=> b!1182269 (< (dynLambda!5230 order!7273 (toValue!3168 (transformation!2059 (h!17205 rules!4386)))) (dynLambda!5231 order!7275 lambda!48691))))

(declare-fun order!7277 () Int)

(declare-fun dynLambda!5232 (Int Int) Int)

(assert (=> b!1182269 (< (dynLambda!5232 order!7277 (toChars!3027 (transformation!2059 (h!17205 rules!4386)))) (dynLambda!5231 order!7275 lambda!48691))))

(declare-fun b!1182243 () Bool)

(declare-fun res!534320 () Bool)

(declare-fun e!759001 () Bool)

(assert (=> b!1182243 (=> (not res!534320) (not e!759001))))

(declare-datatypes ((Token!3780 0))(
  ( (Token!3781 (value!66738 TokenValue!2125) (rule!3480 Rule!3918) (size!9319 Int) (originalCharacters!2613 List!11826)) )
))
(declare-datatypes ((List!11829 0))(
  ( (Nil!11805) (Cons!11805 (h!17206 Token!3780) (t!111533 List!11829)) )
))
(declare-fun l!6534 () List!11829)

(declare-datatypes ((LexerInterface!1754 0))(
  ( (LexerInterfaceExt!1751 (__x!7962 Int)) (Lexer!1752) )
))
(declare-fun thiss!27592 () LexerInterface!1754)

(declare-fun rulesProduceEachTokenIndividuallyList!620 (LexerInterface!1754 List!11828 List!11829) Bool)

(assert (=> b!1182243 (= res!534320 (rulesProduceEachTokenIndividuallyList!620 thiss!27592 rules!4386 l!6534))))

(declare-fun e!759014 () Bool)

(declare-fun e!759005 () Bool)

(declare-fun b!1182244 () Bool)

(declare-fun tp!336895 () Bool)

(declare-fun inv!21 (TokenValue!2125) Bool)

(assert (=> b!1182244 (= e!759014 (and (inv!21 (value!66738 (h!17206 l!6534))) e!759005 tp!336895))))

(declare-fun b!1182245 () Bool)

(declare-fun res!534323 () Bool)

(assert (=> b!1182245 (=> (not res!534323) (not e!759001))))

(declare-fun rulesInvariant!1628 (LexerInterface!1754 List!11828) Bool)

(assert (=> b!1182245 (= res!534323 (rulesInvariant!1628 thiss!27592 rules!4386))))

(declare-fun tp!336894 () Bool)

(declare-fun e!759004 () Bool)

(declare-fun b!1182246 () Bool)

(declare-fun e!759002 () Bool)

(declare-fun inv!15620 (String!14293) Bool)

(declare-fun inv!15623 (TokenValueInjection!3950) Bool)

(assert (=> b!1182246 (= e!759002 (and tp!336894 (inv!15620 (tag!2321 (h!17205 rules!4386))) (inv!15623 (transformation!2059 (h!17205 rules!4386))) e!759004))))

(declare-fun b!1182248 () Bool)

(declare-fun e!759008 () Bool)

(declare-fun lt!406935 () List!11829)

(declare-datatypes ((IArray!7743 0))(
  ( (IArray!7744 (innerList!3929 List!11829)) )
))
(declare-datatypes ((Conc!3869 0))(
  ( (Node!3869 (left!10284 Conc!3869) (right!10614 Conc!3869) (csize!7968 Int) (cheight!4080 Int)) (Leaf!5929 (xs!6574 IArray!7743) (csize!7969 Int)) (Empty!3869) )
))
(declare-datatypes ((BalanceConc!7760 0))(
  ( (BalanceConc!7761 (c!196859 Conc!3869)) )
))
(declare-fun rulesProduceEachTokenIndividually!768 (LexerInterface!1754 List!11828 BalanceConc!7760) Bool)

(declare-fun seqFromList!1534 (List!11829) BalanceConc!7760)

(assert (=> b!1182248 (= e!759008 (rulesProduceEachTokenIndividually!768 thiss!27592 rules!4386 (seqFromList!1534 lt!406935)))))

(declare-fun e!759010 () Bool)

(assert (=> b!1182249 (= e!759010 (and tp!336891 tp!336892))))

(declare-fun b!1182250 () Bool)

(declare-fun tp!336889 () Bool)

(assert (=> b!1182250 (= e!759005 (and tp!336889 (inv!15620 (tag!2321 (rule!3480 (h!17206 l!6534)))) (inv!15623 (transformation!2059 (rule!3480 (h!17206 l!6534)))) e!759010))))

(declare-fun b!1182251 () Bool)

(declare-fun e!759011 () Bool)

(assert (=> b!1182251 (= e!759011 (rulesProduceEachTokenIndividuallyList!620 thiss!27592 rules!4386 (t!111533 lt!406935)))))

(assert (=> b!1182252 (= e!759004 (and tp!336893 tp!336888))))

(declare-fun b!1182253 () Bool)

(declare-fun res!534321 () Bool)

(assert (=> b!1182253 (=> (not res!534321) (not e!759001))))

(declare-fun isEmpty!7116 (List!11828) Bool)

(assert (=> b!1182253 (= res!534321 (not (isEmpty!7116 rules!4386)))))

(declare-fun b!1182254 () Bool)

(declare-fun res!534324 () Bool)

(assert (=> b!1182254 (=> (not res!534324) (not e!759001))))

(declare-fun i!1621 () Int)

(assert (=> b!1182254 (= res!534324 (and (not ((_ is Nil!11805) l!6534)) (<= i!1621 0)))))

(declare-fun b!1182255 () Bool)

(declare-fun e!759007 () Bool)

(assert (=> b!1182255 (= e!759007 e!759011)))

(declare-fun res!534328 () Bool)

(assert (=> b!1182255 (=> (not res!534328) (not e!759011))))

(declare-fun rulesProduceIndividualToken!785 (LexerInterface!1754 List!11828 Token!3780) Bool)

(assert (=> b!1182255 (= res!534328 (rulesProduceIndividualToken!785 thiss!27592 rules!4386 (h!17206 lt!406935)))))

(declare-fun res!534325 () Bool)

(assert (=> start!104714 (=> (not res!534325) (not e!759001))))

(assert (=> start!104714 (= res!534325 ((_ is Lexer!1752) thiss!27592))))

(assert (=> start!104714 e!759001))

(assert (=> start!104714 true))

(declare-fun e!759003 () Bool)

(assert (=> start!104714 e!759003))

(declare-fun e!759012 () Bool)

(assert (=> start!104714 e!759012))

(declare-fun tp!336890 () Bool)

(declare-fun b!1182247 () Bool)

(declare-fun inv!15624 (Token!3780) Bool)

(assert (=> b!1182247 (= e!759012 (and (inv!15624 (h!17206 l!6534)) e!759014 tp!336890))))

(declare-fun b!1182256 () Bool)

(declare-fun res!534327 () Bool)

(assert (=> b!1182256 (=> (not res!534327) (not e!759001))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!148 (LexerInterface!1754 List!11829 List!11828) Bool)

(assert (=> b!1182256 (= res!534327 (tokensListTwoByTwoPredicateSeparableList!148 thiss!27592 l!6534 rules!4386))))

(assert (=> b!1182257 (= e!759001 (not e!759008))))

(declare-fun res!534326 () Bool)

(assert (=> b!1182257 (=> res!534326 e!759008)))

(declare-fun lt!406933 () Bool)

(assert (=> b!1182257 (= res!534326 (not lt!406933))))

(declare-fun forall!3122 (List!11829 Int) Bool)

(assert (=> b!1182257 (forall!3122 lt!406935 lambda!48691)))

(declare-datatypes ((Unit!18120 0))(
  ( (Unit!18121) )
))
(declare-fun lt!406936 () Unit!18120)

(declare-fun lemmaForallSubseq!179 (List!11829 List!11829 Int) Unit!18120)

(assert (=> b!1182257 (= lt!406936 (lemmaForallSubseq!179 lt!406935 l!6534 lambda!48691))))

(declare-fun subseq!315 (List!11829 List!11829) Bool)

(assert (=> b!1182257 (subseq!315 lt!406935 l!6534)))

(declare-fun lt!406934 () Unit!18120)

(declare-fun lemmaDropSubseq!78 (List!11829 Int) Unit!18120)

(assert (=> b!1182257 (= lt!406934 (lemmaDropSubseq!78 l!6534 i!1621))))

(assert (=> b!1182257 (= lt!406933 e!759007)))

(declare-fun res!534322 () Bool)

(assert (=> b!1182257 (=> res!534322 e!759007)))

(assert (=> b!1182257 (= res!534322 (not ((_ is Cons!11805) lt!406935)))))

(assert (=> b!1182257 (= lt!406933 (rulesProduceEachTokenIndividuallyList!620 thiss!27592 rules!4386 lt!406935))))

(declare-fun drop!539 (List!11829 Int) List!11829)

(assert (=> b!1182257 (= lt!406935 (drop!539 l!6534 i!1621))))

(declare-fun b!1182258 () Bool)

(declare-fun tp!336896 () Bool)

(assert (=> b!1182258 (= e!759003 (and e!759002 tp!336896))))

(assert (= (and start!104714 res!534325) b!1182253))

(assert (= (and b!1182253 res!534321) b!1182245))

(assert (= (and b!1182245 res!534323) b!1182243))

(assert (= (and b!1182243 res!534320) b!1182256))

(assert (= (and b!1182256 res!534327) b!1182254))

(assert (= (and b!1182254 res!534324) b!1182257))

(assert (= (and b!1182257 (not res!534322)) b!1182255))

(assert (= (and b!1182255 res!534328) b!1182251))

(assert (= (and b!1182257 (not res!534326)) b!1182248))

(assert (= b!1182246 b!1182252))

(assert (= b!1182258 b!1182246))

(assert (= (and start!104714 ((_ is Cons!11804) rules!4386)) b!1182258))

(assert (= b!1182250 b!1182249))

(assert (= b!1182244 b!1182250))

(assert (= b!1182247 b!1182244))

(assert (= (and start!104714 ((_ is Cons!11805) l!6534)) b!1182247))

(declare-fun m!1358133 () Bool)

(assert (=> b!1182250 m!1358133))

(declare-fun m!1358135 () Bool)

(assert (=> b!1182250 m!1358135))

(declare-fun m!1358137 () Bool)

(assert (=> b!1182243 m!1358137))

(declare-fun m!1358139 () Bool)

(assert (=> b!1182244 m!1358139))

(declare-fun m!1358141 () Bool)

(assert (=> b!1182246 m!1358141))

(declare-fun m!1358143 () Bool)

(assert (=> b!1182246 m!1358143))

(declare-fun m!1358145 () Bool)

(assert (=> b!1182245 m!1358145))

(declare-fun m!1358147 () Bool)

(assert (=> b!1182248 m!1358147))

(assert (=> b!1182248 m!1358147))

(declare-fun m!1358149 () Bool)

(assert (=> b!1182248 m!1358149))

(declare-fun m!1358151 () Bool)

(assert (=> b!1182247 m!1358151))

(declare-fun m!1358153 () Bool)

(assert (=> b!1182253 m!1358153))

(declare-fun m!1358155 () Bool)

(assert (=> b!1182256 m!1358155))

(declare-fun m!1358157 () Bool)

(assert (=> b!1182251 m!1358157))

(declare-fun m!1358159 () Bool)

(assert (=> b!1182255 m!1358159))

(declare-fun m!1358161 () Bool)

(assert (=> b!1182257 m!1358161))

(declare-fun m!1358163 () Bool)

(assert (=> b!1182257 m!1358163))

(declare-fun m!1358165 () Bool)

(assert (=> b!1182257 m!1358165))

(declare-fun m!1358167 () Bool)

(assert (=> b!1182257 m!1358167))

(declare-fun m!1358169 () Bool)

(assert (=> b!1182257 m!1358169))

(declare-fun m!1358171 () Bool)

(assert (=> b!1182257 m!1358171))

(check-sat (not b!1182253) (not b!1182257) (not b!1182244) (not b_next!28941) (not b!1182267) (not b_next!28945) (not b!1182248) (not b!1182251) (not b!1182258) (not b!1182246) b_and!81237 (not b!1182256) (not b!1182255) b_and!81243 b_and!81239 (not b!1182247) (not b!1182243) (not b_next!28947) b_and!81241 (not b_next!28943) (not b!1182250) (not b!1182245))
(check-sat (not b_next!28947) (not b_next!28941) (not b_next!28945) b_and!81237 b_and!81243 b_and!81239 b_and!81241 (not b_next!28943))
(get-model)

(declare-fun d!338248 () Bool)

(assert (=> d!338248 (= (inv!15620 (tag!2321 (rule!3480 (h!17206 l!6534)))) (= (mod (str.len (value!66737 (tag!2321 (rule!3480 (h!17206 l!6534))))) 2) 0))))

(assert (=> b!1182250 d!338248))

(declare-fun d!338250 () Bool)

(declare-fun res!534339 () Bool)

(declare-fun e!759029 () Bool)

(assert (=> d!338250 (=> (not res!534339) (not e!759029))))

(declare-fun semiInverseModEq!743 (Int Int) Bool)

(assert (=> d!338250 (= res!534339 (semiInverseModEq!743 (toChars!3027 (transformation!2059 (rule!3480 (h!17206 l!6534)))) (toValue!3168 (transformation!2059 (rule!3480 (h!17206 l!6534))))))))

(assert (=> d!338250 (= (inv!15623 (transformation!2059 (rule!3480 (h!17206 l!6534)))) e!759029)))

(declare-fun b!1182275 () Bool)

(declare-fun equivClasses!710 (Int Int) Bool)

(assert (=> b!1182275 (= e!759029 (equivClasses!710 (toChars!3027 (transformation!2059 (rule!3480 (h!17206 l!6534)))) (toValue!3168 (transformation!2059 (rule!3480 (h!17206 l!6534))))))))

(assert (= (and d!338250 res!534339) b!1182275))

(declare-fun m!1358177 () Bool)

(assert (=> d!338250 m!1358177))

(declare-fun m!1358179 () Bool)

(assert (=> b!1182275 m!1358179))

(assert (=> b!1182250 d!338250))

(declare-fun bs!287032 () Bool)

(declare-fun d!338252 () Bool)

(assert (= bs!287032 (and d!338252 b!1182257)))

(declare-fun lambda!48702 () Int)

(assert (=> bs!287032 (= (= thiss!27592 Lexer!1752) (= lambda!48702 lambda!48691))))

(declare-fun b!1182327 () Bool)

(declare-fun e!759068 () Bool)

(assert (=> b!1182327 (= e!759068 true)))

(declare-fun b!1182326 () Bool)

(declare-fun e!759067 () Bool)

(assert (=> b!1182326 (= e!759067 e!759068)))

(declare-fun b!1182325 () Bool)

(declare-fun e!759066 () Bool)

(assert (=> b!1182325 (= e!759066 e!759067)))

(assert (=> d!338252 e!759066))

(assert (= b!1182326 b!1182327))

(assert (= b!1182325 b!1182326))

(assert (= (and d!338252 ((_ is Cons!11804) rules!4386)) b!1182325))

(assert (=> b!1182327 (< (dynLambda!5230 order!7273 (toValue!3168 (transformation!2059 (h!17205 rules!4386)))) (dynLambda!5231 order!7275 lambda!48702))))

(assert (=> b!1182327 (< (dynLambda!5232 order!7277 (toChars!3027 (transformation!2059 (h!17205 rules!4386)))) (dynLambda!5231 order!7275 lambda!48702))))

(assert (=> d!338252 true))

(declare-fun lt!406945 () Bool)

(assert (=> d!338252 (= lt!406945 (forall!3122 (t!111533 lt!406935) lambda!48702))))

(declare-fun e!759065 () Bool)

(assert (=> d!338252 (= lt!406945 e!759065)))

(declare-fun res!534362 () Bool)

(assert (=> d!338252 (=> res!534362 e!759065)))

(assert (=> d!338252 (= res!534362 (not ((_ is Cons!11805) (t!111533 lt!406935))))))

(assert (=> d!338252 (not (isEmpty!7116 rules!4386))))

(assert (=> d!338252 (= (rulesProduceEachTokenIndividuallyList!620 thiss!27592 rules!4386 (t!111533 lt!406935)) lt!406945)))

(declare-fun b!1182323 () Bool)

(declare-fun e!759064 () Bool)

(assert (=> b!1182323 (= e!759065 e!759064)))

(declare-fun res!534363 () Bool)

(assert (=> b!1182323 (=> (not res!534363) (not e!759064))))

(assert (=> b!1182323 (= res!534363 (rulesProduceIndividualToken!785 thiss!27592 rules!4386 (h!17206 (t!111533 lt!406935))))))

(declare-fun b!1182324 () Bool)

(assert (=> b!1182324 (= e!759064 (rulesProduceEachTokenIndividuallyList!620 thiss!27592 rules!4386 (t!111533 (t!111533 lt!406935))))))

(assert (= (and d!338252 (not res!534362)) b!1182323))

(assert (= (and b!1182323 res!534363) b!1182324))

(declare-fun m!1358215 () Bool)

(assert (=> d!338252 m!1358215))

(assert (=> d!338252 m!1358153))

(declare-fun m!1358217 () Bool)

(assert (=> b!1182323 m!1358217))

(declare-fun m!1358219 () Bool)

(assert (=> b!1182324 m!1358219))

(assert (=> b!1182251 d!338252))

(declare-fun d!338264 () Bool)

(assert (=> d!338264 (= (isEmpty!7116 rules!4386) ((_ is Nil!11804) rules!4386))))

(assert (=> b!1182253 d!338264))

(declare-fun bs!287033 () Bool)

(declare-fun d!338266 () Bool)

(assert (= bs!287033 (and d!338266 b!1182257)))

(declare-fun lambda!48703 () Int)

(assert (=> bs!287033 (= (= thiss!27592 Lexer!1752) (= lambda!48703 lambda!48691))))

(declare-fun bs!287034 () Bool)

(assert (= bs!287034 (and d!338266 d!338252)))

(assert (=> bs!287034 (= lambda!48703 lambda!48702)))

(declare-fun b!1182334 () Bool)

(declare-fun e!759073 () Bool)

(assert (=> b!1182334 (= e!759073 true)))

(declare-fun b!1182333 () Bool)

(declare-fun e!759072 () Bool)

(assert (=> b!1182333 (= e!759072 e!759073)))

(declare-fun b!1182332 () Bool)

(declare-fun e!759071 () Bool)

(assert (=> b!1182332 (= e!759071 e!759072)))

(assert (=> d!338266 e!759071))

(assert (= b!1182333 b!1182334))

(assert (= b!1182332 b!1182333))

(assert (= (and d!338266 ((_ is Cons!11804) rules!4386)) b!1182332))

(assert (=> b!1182334 (< (dynLambda!5230 order!7273 (toValue!3168 (transformation!2059 (h!17205 rules!4386)))) (dynLambda!5231 order!7275 lambda!48703))))

(assert (=> b!1182334 (< (dynLambda!5232 order!7277 (toChars!3027 (transformation!2059 (h!17205 rules!4386)))) (dynLambda!5231 order!7275 lambda!48703))))

(assert (=> d!338266 true))

(declare-fun lt!406946 () Bool)

(assert (=> d!338266 (= lt!406946 (forall!3122 l!6534 lambda!48703))))

(declare-fun e!759070 () Bool)

(assert (=> d!338266 (= lt!406946 e!759070)))

(declare-fun res!534364 () Bool)

(assert (=> d!338266 (=> res!534364 e!759070)))

(assert (=> d!338266 (= res!534364 (not ((_ is Cons!11805) l!6534)))))

(assert (=> d!338266 (not (isEmpty!7116 rules!4386))))

(assert (=> d!338266 (= (rulesProduceEachTokenIndividuallyList!620 thiss!27592 rules!4386 l!6534) lt!406946)))

(declare-fun b!1182330 () Bool)

(declare-fun e!759069 () Bool)

(assert (=> b!1182330 (= e!759070 e!759069)))

(declare-fun res!534365 () Bool)

(assert (=> b!1182330 (=> (not res!534365) (not e!759069))))

(assert (=> b!1182330 (= res!534365 (rulesProduceIndividualToken!785 thiss!27592 rules!4386 (h!17206 l!6534)))))

(declare-fun b!1182331 () Bool)

(assert (=> b!1182331 (= e!759069 (rulesProduceEachTokenIndividuallyList!620 thiss!27592 rules!4386 (t!111533 l!6534)))))

(assert (= (and d!338266 (not res!534364)) b!1182330))

(assert (= (and b!1182330 res!534365) b!1182331))

(declare-fun m!1358221 () Bool)

(assert (=> d!338266 m!1358221))

(assert (=> d!338266 m!1358153))

(declare-fun m!1358223 () Bool)

(assert (=> b!1182330 m!1358223))

(declare-fun m!1358225 () Bool)

(assert (=> b!1182331 m!1358225))

(assert (=> b!1182243 d!338266))

(declare-fun b!1182345 () Bool)

(declare-fun res!534368 () Bool)

(declare-fun e!759082 () Bool)

(assert (=> b!1182345 (=> res!534368 e!759082)))

(assert (=> b!1182345 (= res!534368 (not ((_ is IntegerValue!6377) (value!66738 (h!17206 l!6534)))))))

(declare-fun e!759081 () Bool)

(assert (=> b!1182345 (= e!759081 e!759082)))

(declare-fun b!1182346 () Bool)

(declare-fun inv!15 (TokenValue!2125) Bool)

(assert (=> b!1182346 (= e!759082 (inv!15 (value!66738 (h!17206 l!6534))))))

(declare-fun b!1182347 () Bool)

(declare-fun e!759080 () Bool)

(declare-fun inv!16 (TokenValue!2125) Bool)

(assert (=> b!1182347 (= e!759080 (inv!16 (value!66738 (h!17206 l!6534))))))

(declare-fun b!1182348 () Bool)

(assert (=> b!1182348 (= e!759080 e!759081)))

(declare-fun c!196870 () Bool)

(assert (=> b!1182348 (= c!196870 ((_ is IntegerValue!6376) (value!66738 (h!17206 l!6534))))))

(declare-fun b!1182349 () Bool)

(declare-fun inv!17 (TokenValue!2125) Bool)

(assert (=> b!1182349 (= e!759081 (inv!17 (value!66738 (h!17206 l!6534))))))

(declare-fun d!338268 () Bool)

(declare-fun c!196871 () Bool)

(assert (=> d!338268 (= c!196871 ((_ is IntegerValue!6375) (value!66738 (h!17206 l!6534))))))

(assert (=> d!338268 (= (inv!21 (value!66738 (h!17206 l!6534))) e!759080)))

(assert (= (and d!338268 c!196871) b!1182347))

(assert (= (and d!338268 (not c!196871)) b!1182348))

(assert (= (and b!1182348 c!196870) b!1182349))

(assert (= (and b!1182348 (not c!196870)) b!1182345))

(assert (= (and b!1182345 (not res!534368)) b!1182346))

(declare-fun m!1358227 () Bool)

(assert (=> b!1182346 m!1358227))

(declare-fun m!1358229 () Bool)

(assert (=> b!1182347 m!1358229))

(declare-fun m!1358231 () Bool)

(assert (=> b!1182349 m!1358231))

(assert (=> b!1182244 d!338268))

(declare-fun d!338270 () Bool)

(declare-fun lt!406979 () Bool)

(declare-fun e!759130 () Bool)

(assert (=> d!338270 (= lt!406979 e!759130)))

(declare-fun res!534405 () Bool)

(assert (=> d!338270 (=> (not res!534405) (not e!759130))))

(declare-fun list!4349 (BalanceConc!7760) List!11829)

(declare-datatypes ((tuple2!12092 0))(
  ( (tuple2!12093 (_1!6893 BalanceConc!7760) (_2!6893 BalanceConc!7758)) )
))
(declare-fun lex!732 (LexerInterface!1754 List!11828 BalanceConc!7758) tuple2!12092)

(declare-fun print!669 (LexerInterface!1754 BalanceConc!7760) BalanceConc!7758)

(declare-fun singletonSeq!713 (Token!3780) BalanceConc!7760)

(assert (=> d!338270 (= res!534405 (= (list!4349 (_1!6893 (lex!732 thiss!27592 rules!4386 (print!669 thiss!27592 (singletonSeq!713 (h!17206 lt!406935)))))) (list!4349 (singletonSeq!713 (h!17206 lt!406935)))))))

(declare-fun e!759129 () Bool)

(assert (=> d!338270 (= lt!406979 e!759129)))

(declare-fun res!534407 () Bool)

(assert (=> d!338270 (=> (not res!534407) (not e!759129))))

(declare-fun lt!406978 () tuple2!12092)

(declare-fun size!9324 (BalanceConc!7760) Int)

(assert (=> d!338270 (= res!534407 (= (size!9324 (_1!6893 lt!406978)) 1))))

(assert (=> d!338270 (= lt!406978 (lex!732 thiss!27592 rules!4386 (print!669 thiss!27592 (singletonSeq!713 (h!17206 lt!406935)))))))

(assert (=> d!338270 (not (isEmpty!7116 rules!4386))))

(assert (=> d!338270 (= (rulesProduceIndividualToken!785 thiss!27592 rules!4386 (h!17206 lt!406935)) lt!406979)))

(declare-fun b!1182410 () Bool)

(declare-fun res!534406 () Bool)

(assert (=> b!1182410 (=> (not res!534406) (not e!759129))))

(declare-fun apply!2576 (BalanceConc!7760 Int) Token!3780)

(assert (=> b!1182410 (= res!534406 (= (apply!2576 (_1!6893 lt!406978) 0) (h!17206 lt!406935)))))

(declare-fun b!1182411 () Bool)

(declare-fun isEmpty!7119 (BalanceConc!7758) Bool)

(assert (=> b!1182411 (= e!759129 (isEmpty!7119 (_2!6893 lt!406978)))))

(declare-fun b!1182412 () Bool)

(assert (=> b!1182412 (= e!759130 (isEmpty!7119 (_2!6893 (lex!732 thiss!27592 rules!4386 (print!669 thiss!27592 (singletonSeq!713 (h!17206 lt!406935)))))))))

(assert (= (and d!338270 res!534407) b!1182410))

(assert (= (and b!1182410 res!534406) b!1182411))

(assert (= (and d!338270 res!534405) b!1182412))

(declare-fun m!1358273 () Bool)

(assert (=> d!338270 m!1358273))

(declare-fun m!1358275 () Bool)

(assert (=> d!338270 m!1358275))

(assert (=> d!338270 m!1358153))

(declare-fun m!1358277 () Bool)

(assert (=> d!338270 m!1358277))

(assert (=> d!338270 m!1358277))

(assert (=> d!338270 m!1358273))

(declare-fun m!1358279 () Bool)

(assert (=> d!338270 m!1358279))

(declare-fun m!1358281 () Bool)

(assert (=> d!338270 m!1358281))

(assert (=> d!338270 m!1358277))

(declare-fun m!1358283 () Bool)

(assert (=> d!338270 m!1358283))

(declare-fun m!1358285 () Bool)

(assert (=> b!1182410 m!1358285))

(declare-fun m!1358287 () Bool)

(assert (=> b!1182411 m!1358287))

(assert (=> b!1182412 m!1358277))

(assert (=> b!1182412 m!1358277))

(assert (=> b!1182412 m!1358273))

(assert (=> b!1182412 m!1358273))

(assert (=> b!1182412 m!1358275))

(declare-fun m!1358289 () Bool)

(assert (=> b!1182412 m!1358289))

(assert (=> b!1182255 d!338270))

(declare-fun d!338286 () Bool)

(declare-fun res!534412 () Bool)

(declare-fun e!759138 () Bool)

(assert (=> d!338286 (=> (not res!534412) (not e!759138))))

(declare-fun rulesValid!731 (LexerInterface!1754 List!11828) Bool)

(assert (=> d!338286 (= res!534412 (rulesValid!731 thiss!27592 rules!4386))))

(assert (=> d!338286 (= (rulesInvariant!1628 thiss!27592 rules!4386) e!759138)))

(declare-fun b!1182420 () Bool)

(declare-datatypes ((List!11831 0))(
  ( (Nil!11807) (Cons!11807 (h!17208 String!14293) (t!111565 List!11831)) )
))
(declare-fun noDuplicateTag!731 (LexerInterface!1754 List!11828 List!11831) Bool)

(assert (=> b!1182420 (= e!759138 (noDuplicateTag!731 thiss!27592 rules!4386 Nil!11807))))

(assert (= (and d!338286 res!534412) b!1182420))

(declare-fun m!1358297 () Bool)

(assert (=> d!338286 m!1358297))

(declare-fun m!1358299 () Bool)

(assert (=> b!1182420 m!1358299))

(assert (=> b!1182245 d!338286))

(declare-fun d!338292 () Bool)

(declare-fun res!534430 () Bool)

(declare-fun e!759185 () Bool)

(assert (=> d!338292 (=> res!534430 e!759185)))

(assert (=> d!338292 (= res!534430 (or (not ((_ is Cons!11805) l!6534)) (not ((_ is Cons!11805) (t!111533 l!6534)))))))

(assert (=> d!338292 (= (tokensListTwoByTwoPredicateSeparableList!148 thiss!27592 l!6534 rules!4386) e!759185)))

(declare-fun b!1182480 () Bool)

(declare-fun e!759186 () Bool)

(assert (=> b!1182480 (= e!759185 e!759186)))

(declare-fun res!534429 () Bool)

(assert (=> b!1182480 (=> (not res!534429) (not e!759186))))

(declare-fun separableTokensPredicate!154 (LexerInterface!1754 Token!3780 Token!3780 List!11828) Bool)

(assert (=> b!1182480 (= res!534429 (separableTokensPredicate!154 thiss!27592 (h!17206 l!6534) (h!17206 (t!111533 l!6534)) rules!4386))))

(declare-fun lt!407007 () Unit!18120)

(declare-fun Unit!18125 () Unit!18120)

(assert (=> b!1182480 (= lt!407007 Unit!18125)))

(declare-fun size!9325 (BalanceConc!7758) Int)

(declare-fun charsOf!1092 (Token!3780) BalanceConc!7758)

(assert (=> b!1182480 (> (size!9325 (charsOf!1092 (h!17206 (t!111533 l!6534)))) 0)))

(declare-fun lt!407006 () Unit!18120)

(declare-fun Unit!18126 () Unit!18120)

(assert (=> b!1182480 (= lt!407006 Unit!18126)))

(assert (=> b!1182480 (rulesProduceIndividualToken!785 thiss!27592 rules!4386 (h!17206 (t!111533 l!6534)))))

(declare-fun lt!407008 () Unit!18120)

(declare-fun Unit!18127 () Unit!18120)

(assert (=> b!1182480 (= lt!407008 Unit!18127)))

(assert (=> b!1182480 (rulesProduceIndividualToken!785 thiss!27592 rules!4386 (h!17206 l!6534))))

(declare-fun lt!407011 () Unit!18120)

(declare-fun lt!407005 () Unit!18120)

(assert (=> b!1182480 (= lt!407011 lt!407005)))

(assert (=> b!1182480 (rulesProduceIndividualToken!785 thiss!27592 rules!4386 (h!17206 (t!111533 l!6534)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!313 (LexerInterface!1754 List!11828 List!11829 Token!3780) Unit!18120)

(assert (=> b!1182480 (= lt!407005 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!313 thiss!27592 rules!4386 l!6534 (h!17206 (t!111533 l!6534))))))

(declare-fun lt!407010 () Unit!18120)

(declare-fun lt!407009 () Unit!18120)

(assert (=> b!1182480 (= lt!407010 lt!407009)))

(assert (=> b!1182480 (rulesProduceIndividualToken!785 thiss!27592 rules!4386 (h!17206 l!6534))))

(assert (=> b!1182480 (= lt!407009 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!313 thiss!27592 rules!4386 l!6534 (h!17206 l!6534)))))

(declare-fun b!1182481 () Bool)

(assert (=> b!1182481 (= e!759186 (tokensListTwoByTwoPredicateSeparableList!148 thiss!27592 (Cons!11805 (h!17206 (t!111533 l!6534)) (t!111533 (t!111533 l!6534))) rules!4386))))

(assert (= (and d!338292 (not res!534430)) b!1182480))

(assert (= (and b!1182480 res!534429) b!1182481))

(assert (=> b!1182480 m!1358223))

(declare-fun m!1358333 () Bool)

(assert (=> b!1182480 m!1358333))

(declare-fun m!1358335 () Bool)

(assert (=> b!1182480 m!1358335))

(declare-fun m!1358337 () Bool)

(assert (=> b!1182480 m!1358337))

(assert (=> b!1182480 m!1358335))

(declare-fun m!1358339 () Bool)

(assert (=> b!1182480 m!1358339))

(declare-fun m!1358341 () Bool)

(assert (=> b!1182480 m!1358341))

(declare-fun m!1358343 () Bool)

(assert (=> b!1182480 m!1358343))

(declare-fun m!1358345 () Bool)

(assert (=> b!1182481 m!1358345))

(assert (=> b!1182256 d!338292))

(declare-fun d!338300 () Bool)

(assert (=> d!338300 (= (inv!15620 (tag!2321 (h!17205 rules!4386))) (= (mod (str.len (value!66737 (tag!2321 (h!17205 rules!4386)))) 2) 0))))

(assert (=> b!1182246 d!338300))

(declare-fun d!338302 () Bool)

(declare-fun res!534431 () Bool)

(declare-fun e!759193 () Bool)

(assert (=> d!338302 (=> (not res!534431) (not e!759193))))

(assert (=> d!338302 (= res!534431 (semiInverseModEq!743 (toChars!3027 (transformation!2059 (h!17205 rules!4386))) (toValue!3168 (transformation!2059 (h!17205 rules!4386)))))))

(assert (=> d!338302 (= (inv!15623 (transformation!2059 (h!17205 rules!4386))) e!759193)))

(declare-fun b!1182482 () Bool)

(assert (=> b!1182482 (= e!759193 (equivClasses!710 (toChars!3027 (transformation!2059 (h!17205 rules!4386))) (toValue!3168 (transformation!2059 (h!17205 rules!4386)))))))

(assert (= (and d!338302 res!534431) b!1182482))

(declare-fun m!1358347 () Bool)

(assert (=> d!338302 m!1358347))

(declare-fun m!1358349 () Bool)

(assert (=> b!1182482 m!1358349))

(assert (=> b!1182246 d!338302))

(declare-fun d!338304 () Bool)

(assert (=> d!338304 (subseq!315 (drop!539 l!6534 i!1621) l!6534)))

(declare-fun lt!407014 () Unit!18120)

(declare-fun choose!7652 (List!11829 Int) Unit!18120)

(assert (=> d!338304 (= lt!407014 (choose!7652 l!6534 i!1621))))

(assert (=> d!338304 (= (lemmaDropSubseq!78 l!6534 i!1621) lt!407014)))

(declare-fun bs!287045 () Bool)

(assert (= bs!287045 d!338304))

(assert (=> bs!287045 m!1358161))

(assert (=> bs!287045 m!1358161))

(declare-fun m!1358361 () Bool)

(assert (=> bs!287045 m!1358361))

(declare-fun m!1358363 () Bool)

(assert (=> bs!287045 m!1358363))

(assert (=> b!1182257 d!338304))

(declare-fun bs!287046 () Bool)

(declare-fun d!338308 () Bool)

(assert (= bs!287046 (and d!338308 b!1182257)))

(declare-fun lambda!48706 () Int)

(assert (=> bs!287046 (= (= thiss!27592 Lexer!1752) (= lambda!48706 lambda!48691))))

(declare-fun bs!287047 () Bool)

(assert (= bs!287047 (and d!338308 d!338252)))

(assert (=> bs!287047 (= lambda!48706 lambda!48702)))

(declare-fun bs!287048 () Bool)

(assert (= bs!287048 (and d!338308 d!338266)))

(assert (=> bs!287048 (= lambda!48706 lambda!48703)))

(declare-fun b!1182498 () Bool)

(declare-fun e!759202 () Bool)

(assert (=> b!1182498 (= e!759202 true)))

(declare-fun b!1182497 () Bool)

(declare-fun e!759201 () Bool)

(assert (=> b!1182497 (= e!759201 e!759202)))

(declare-fun b!1182496 () Bool)

(declare-fun e!759200 () Bool)

(assert (=> b!1182496 (= e!759200 e!759201)))

(assert (=> d!338308 e!759200))

(assert (= b!1182497 b!1182498))

(assert (= b!1182496 b!1182497))

(assert (= (and d!338308 ((_ is Cons!11804) rules!4386)) b!1182496))

(assert (=> b!1182498 (< (dynLambda!5230 order!7273 (toValue!3168 (transformation!2059 (h!17205 rules!4386)))) (dynLambda!5231 order!7275 lambda!48706))))

(assert (=> b!1182498 (< (dynLambda!5232 order!7277 (toChars!3027 (transformation!2059 (h!17205 rules!4386)))) (dynLambda!5231 order!7275 lambda!48706))))

(assert (=> d!338308 true))

(declare-fun lt!407015 () Bool)

(assert (=> d!338308 (= lt!407015 (forall!3122 lt!406935 lambda!48706))))

(declare-fun e!759199 () Bool)

(assert (=> d!338308 (= lt!407015 e!759199)))

(declare-fun res!534432 () Bool)

(assert (=> d!338308 (=> res!534432 e!759199)))

(assert (=> d!338308 (= res!534432 (not ((_ is Cons!11805) lt!406935)))))

(assert (=> d!338308 (not (isEmpty!7116 rules!4386))))

(assert (=> d!338308 (= (rulesProduceEachTokenIndividuallyList!620 thiss!27592 rules!4386 lt!406935) lt!407015)))

(declare-fun b!1182494 () Bool)

(declare-fun e!759198 () Bool)

(assert (=> b!1182494 (= e!759199 e!759198)))

(declare-fun res!534433 () Bool)

(assert (=> b!1182494 (=> (not res!534433) (not e!759198))))

(assert (=> b!1182494 (= res!534433 (rulesProduceIndividualToken!785 thiss!27592 rules!4386 (h!17206 lt!406935)))))

(declare-fun b!1182495 () Bool)

(assert (=> b!1182495 (= e!759198 (rulesProduceEachTokenIndividuallyList!620 thiss!27592 rules!4386 (t!111533 lt!406935)))))

(assert (= (and d!338308 (not res!534432)) b!1182494))

(assert (= (and b!1182494 res!534433) b!1182495))

(declare-fun m!1358365 () Bool)

(assert (=> d!338308 m!1358365))

(assert (=> d!338308 m!1358153))

(assert (=> b!1182494 m!1358159))

(assert (=> b!1182495 m!1358157))

(assert (=> b!1182257 d!338308))

(declare-fun d!338310 () Bool)

(assert (=> d!338310 (forall!3122 lt!406935 lambda!48691)))

(declare-fun lt!407018 () Unit!18120)

(declare-fun choose!7653 (List!11829 List!11829 Int) Unit!18120)

(assert (=> d!338310 (= lt!407018 (choose!7653 lt!406935 l!6534 lambda!48691))))

(assert (=> d!338310 (forall!3122 l!6534 lambda!48691)))

(assert (=> d!338310 (= (lemmaForallSubseq!179 lt!406935 l!6534 lambda!48691) lt!407018)))

(declare-fun bs!287049 () Bool)

(assert (= bs!287049 d!338310))

(assert (=> bs!287049 m!1358171))

(declare-fun m!1358367 () Bool)

(assert (=> bs!287049 m!1358367))

(declare-fun m!1358369 () Bool)

(assert (=> bs!287049 m!1358369))

(assert (=> b!1182257 d!338310))

(declare-fun d!338312 () Bool)

(declare-fun res!534438 () Bool)

(declare-fun e!759207 () Bool)

(assert (=> d!338312 (=> res!534438 e!759207)))

(assert (=> d!338312 (= res!534438 ((_ is Nil!11805) lt!406935))))

(assert (=> d!338312 (= (forall!3122 lt!406935 lambda!48691) e!759207)))

(declare-fun b!1182503 () Bool)

(declare-fun e!759208 () Bool)

(assert (=> b!1182503 (= e!759207 e!759208)))

(declare-fun res!534439 () Bool)

(assert (=> b!1182503 (=> (not res!534439) (not e!759208))))

(declare-fun dynLambda!5235 (Int Token!3780) Bool)

(assert (=> b!1182503 (= res!534439 (dynLambda!5235 lambda!48691 (h!17206 lt!406935)))))

(declare-fun b!1182504 () Bool)

(assert (=> b!1182504 (= e!759208 (forall!3122 (t!111533 lt!406935) lambda!48691))))

(assert (= (and d!338312 (not res!534438)) b!1182503))

(assert (= (and b!1182503 res!534439) b!1182504))

(declare-fun b_lambda!35347 () Bool)

(assert (=> (not b_lambda!35347) (not b!1182503)))

(declare-fun m!1358371 () Bool)

(assert (=> b!1182503 m!1358371))

(declare-fun m!1358373 () Bool)

(assert (=> b!1182504 m!1358373))

(assert (=> b!1182257 d!338312))

(declare-fun b!1182514 () Bool)

(declare-fun e!759217 () Bool)

(declare-fun e!759219 () Bool)

(assert (=> b!1182514 (= e!759217 e!759219)))

(declare-fun res!534448 () Bool)

(assert (=> b!1182514 (=> res!534448 e!759219)))

(declare-fun e!759220 () Bool)

(assert (=> b!1182514 (= res!534448 e!759220)))

(declare-fun res!534451 () Bool)

(assert (=> b!1182514 (=> (not res!534451) (not e!759220))))

(assert (=> b!1182514 (= res!534451 (= (h!17206 lt!406935) (h!17206 l!6534)))))

(declare-fun d!338314 () Bool)

(declare-fun res!534449 () Bool)

(declare-fun e!759218 () Bool)

(assert (=> d!338314 (=> res!534449 e!759218)))

(assert (=> d!338314 (= res!534449 ((_ is Nil!11805) lt!406935))))

(assert (=> d!338314 (= (subseq!315 lt!406935 l!6534) e!759218)))

(declare-fun b!1182516 () Bool)

(assert (=> b!1182516 (= e!759219 (subseq!315 lt!406935 (t!111533 l!6534)))))

(declare-fun b!1182515 () Bool)

(assert (=> b!1182515 (= e!759220 (subseq!315 (t!111533 lt!406935) (t!111533 l!6534)))))

(declare-fun b!1182513 () Bool)

(assert (=> b!1182513 (= e!759218 e!759217)))

(declare-fun res!534450 () Bool)

(assert (=> b!1182513 (=> (not res!534450) (not e!759217))))

(assert (=> b!1182513 (= res!534450 ((_ is Cons!11805) l!6534))))

(assert (= (and d!338314 (not res!534449)) b!1182513))

(assert (= (and b!1182513 res!534450) b!1182514))

(assert (= (and b!1182514 res!534451) b!1182515))

(assert (= (and b!1182514 (not res!534448)) b!1182516))

(declare-fun m!1358375 () Bool)

(assert (=> b!1182516 m!1358375))

(declare-fun m!1358377 () Bool)

(assert (=> b!1182515 m!1358377))

(assert (=> b!1182257 d!338314))

(declare-fun b!1182535 () Bool)

(declare-fun e!759234 () Bool)

(declare-fun lt!407021 () List!11829)

(declare-fun e!759232 () Int)

(declare-fun size!9326 (List!11829) Int)

(assert (=> b!1182535 (= e!759234 (= (size!9326 lt!407021) e!759232))))

(declare-fun c!196892 () Bool)

(assert (=> b!1182535 (= c!196892 (<= i!1621 0))))

(declare-fun b!1182536 () Bool)

(declare-fun call!82602 () Int)

(assert (=> b!1182536 (= e!759232 call!82602)))

(declare-fun d!338316 () Bool)

(assert (=> d!338316 e!759234))

(declare-fun res!534454 () Bool)

(assert (=> d!338316 (=> (not res!534454) (not e!759234))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1638 (List!11829) (InoxSet Token!3780))

(assert (=> d!338316 (= res!534454 (= ((_ map implies) (content!1638 lt!407021) (content!1638 l!6534)) ((as const (InoxSet Token!3780)) true)))))

(declare-fun e!759231 () List!11829)

(assert (=> d!338316 (= lt!407021 e!759231)))

(declare-fun c!196895 () Bool)

(assert (=> d!338316 (= c!196895 ((_ is Nil!11805) l!6534))))

(assert (=> d!338316 (= (drop!539 l!6534 i!1621) lt!407021)))

(declare-fun b!1182537 () Bool)

(declare-fun e!759235 () List!11829)

(assert (=> b!1182537 (= e!759235 l!6534)))

(declare-fun b!1182538 () Bool)

(assert (=> b!1182538 (= e!759231 e!759235)))

(declare-fun c!196894 () Bool)

(assert (=> b!1182538 (= c!196894 (<= i!1621 0))))

(declare-fun b!1182539 () Bool)

(assert (=> b!1182539 (= e!759231 Nil!11805)))

(declare-fun b!1182540 () Bool)

(assert (=> b!1182540 (= e!759235 (drop!539 (t!111533 l!6534) (- i!1621 1)))))

(declare-fun b!1182541 () Bool)

(declare-fun e!759233 () Int)

(assert (=> b!1182541 (= e!759232 e!759233)))

(declare-fun c!196893 () Bool)

(assert (=> b!1182541 (= c!196893 (>= i!1621 call!82602))))

(declare-fun bm!82597 () Bool)

(assert (=> bm!82597 (= call!82602 (size!9326 l!6534))))

(declare-fun b!1182542 () Bool)

(assert (=> b!1182542 (= e!759233 0)))

(declare-fun b!1182543 () Bool)

(assert (=> b!1182543 (= e!759233 (- call!82602 i!1621))))

(assert (= (and d!338316 c!196895) b!1182539))

(assert (= (and d!338316 (not c!196895)) b!1182538))

(assert (= (and b!1182538 c!196894) b!1182537))

(assert (= (and b!1182538 (not c!196894)) b!1182540))

(assert (= (and d!338316 res!534454) b!1182535))

(assert (= (and b!1182535 c!196892) b!1182536))

(assert (= (and b!1182535 (not c!196892)) b!1182541))

(assert (= (and b!1182541 c!196893) b!1182542))

(assert (= (and b!1182541 (not c!196893)) b!1182543))

(assert (= (or b!1182536 b!1182541 b!1182543) bm!82597))

(declare-fun m!1358379 () Bool)

(assert (=> b!1182535 m!1358379))

(declare-fun m!1358381 () Bool)

(assert (=> d!338316 m!1358381))

(declare-fun m!1358383 () Bool)

(assert (=> d!338316 m!1358383))

(declare-fun m!1358385 () Bool)

(assert (=> b!1182540 m!1358385))

(declare-fun m!1358387 () Bool)

(assert (=> bm!82597 m!1358387))

(assert (=> b!1182257 d!338316))

(declare-fun d!338318 () Bool)

(declare-fun res!534459 () Bool)

(declare-fun e!759238 () Bool)

(assert (=> d!338318 (=> (not res!534459) (not e!759238))))

(declare-fun isEmpty!7120 (List!11826) Bool)

(assert (=> d!338318 (= res!534459 (not (isEmpty!7120 (originalCharacters!2613 (h!17206 l!6534)))))))

(assert (=> d!338318 (= (inv!15624 (h!17206 l!6534)) e!759238)))

(declare-fun b!1182548 () Bool)

(declare-fun res!534460 () Bool)

(assert (=> b!1182548 (=> (not res!534460) (not e!759238))))

(declare-fun list!4350 (BalanceConc!7758) List!11826)

(declare-fun dynLambda!5236 (Int TokenValue!2125) BalanceConc!7758)

(assert (=> b!1182548 (= res!534460 (= (originalCharacters!2613 (h!17206 l!6534)) (list!4350 (dynLambda!5236 (toChars!3027 (transformation!2059 (rule!3480 (h!17206 l!6534)))) (value!66738 (h!17206 l!6534))))))))

(declare-fun b!1182549 () Bool)

(declare-fun size!9327 (List!11826) Int)

(assert (=> b!1182549 (= e!759238 (= (size!9319 (h!17206 l!6534)) (size!9327 (originalCharacters!2613 (h!17206 l!6534)))))))

(assert (= (and d!338318 res!534459) b!1182548))

(assert (= (and b!1182548 res!534460) b!1182549))

(declare-fun b_lambda!35349 () Bool)

(assert (=> (not b_lambda!35349) (not b!1182548)))

(declare-fun t!111554 () Bool)

(declare-fun tb!66165 () Bool)

(assert (=> (and b!1182249 (= (toChars!3027 (transformation!2059 (rule!3480 (h!17206 l!6534)))) (toChars!3027 (transformation!2059 (rule!3480 (h!17206 l!6534))))) t!111554) tb!66165))

(declare-fun b!1182554 () Bool)

(declare-fun e!759241 () Bool)

(declare-fun tp!336952 () Bool)

(declare-fun inv!15627 (Conc!3868) Bool)

(assert (=> b!1182554 (= e!759241 (and (inv!15627 (c!196857 (dynLambda!5236 (toChars!3027 (transformation!2059 (rule!3480 (h!17206 l!6534)))) (value!66738 (h!17206 l!6534))))) tp!336952))))

(declare-fun result!79412 () Bool)

(declare-fun inv!15628 (BalanceConc!7758) Bool)

(assert (=> tb!66165 (= result!79412 (and (inv!15628 (dynLambda!5236 (toChars!3027 (transformation!2059 (rule!3480 (h!17206 l!6534)))) (value!66738 (h!17206 l!6534)))) e!759241))))

(assert (= tb!66165 b!1182554))

(declare-fun m!1358389 () Bool)

(assert (=> b!1182554 m!1358389))

(declare-fun m!1358391 () Bool)

(assert (=> tb!66165 m!1358391))

(assert (=> b!1182548 t!111554))

(declare-fun b_and!81257 () Bool)

(assert (= b_and!81239 (and (=> t!111554 result!79412) b_and!81257)))

(declare-fun t!111556 () Bool)

(declare-fun tb!66167 () Bool)

(assert (=> (and b!1182252 (= (toChars!3027 (transformation!2059 (h!17205 rules!4386))) (toChars!3027 (transformation!2059 (rule!3480 (h!17206 l!6534))))) t!111556) tb!66167))

(declare-fun result!79416 () Bool)

(assert (= result!79416 result!79412))

(assert (=> b!1182548 t!111556))

(declare-fun b_and!81259 () Bool)

(assert (= b_and!81243 (and (=> t!111556 result!79416) b_and!81259)))

(declare-fun m!1358393 () Bool)

(assert (=> d!338318 m!1358393))

(declare-fun m!1358395 () Bool)

(assert (=> b!1182548 m!1358395))

(assert (=> b!1182548 m!1358395))

(declare-fun m!1358397 () Bool)

(assert (=> b!1182548 m!1358397))

(declare-fun m!1358399 () Bool)

(assert (=> b!1182549 m!1358399))

(assert (=> b!1182247 d!338318))

(declare-fun bs!287050 () Bool)

(declare-fun d!338320 () Bool)

(assert (= bs!287050 (and d!338320 b!1182257)))

(declare-fun lambda!48711 () Int)

(assert (=> bs!287050 (= (= thiss!27592 Lexer!1752) (= lambda!48711 lambda!48691))))

(declare-fun bs!287051 () Bool)

(assert (= bs!287051 (and d!338320 d!338252)))

(assert (=> bs!287051 (= lambda!48711 lambda!48702)))

(declare-fun bs!287052 () Bool)

(assert (= bs!287052 (and d!338320 d!338266)))

(assert (=> bs!287052 (= lambda!48711 lambda!48703)))

(declare-fun bs!287053 () Bool)

(assert (= bs!287053 (and d!338320 d!338308)))

(assert (=> bs!287053 (= lambda!48711 lambda!48706)))

(declare-fun b!1182560 () Bool)

(declare-fun e!759247 () Bool)

(assert (=> b!1182560 (= e!759247 true)))

(declare-fun b!1182559 () Bool)

(declare-fun e!759246 () Bool)

(assert (=> b!1182559 (= e!759246 e!759247)))

(declare-fun b!1182558 () Bool)

(declare-fun e!759245 () Bool)

(assert (=> b!1182558 (= e!759245 e!759246)))

(assert (=> d!338320 e!759245))

(assert (= b!1182559 b!1182560))

(assert (= b!1182558 b!1182559))

(assert (= (and d!338320 ((_ is Cons!11804) rules!4386)) b!1182558))

(assert (=> b!1182560 (< (dynLambda!5230 order!7273 (toValue!3168 (transformation!2059 (h!17205 rules!4386)))) (dynLambda!5231 order!7275 lambda!48711))))

(assert (=> b!1182560 (< (dynLambda!5232 order!7277 (toChars!3027 (transformation!2059 (h!17205 rules!4386)))) (dynLambda!5231 order!7275 lambda!48711))))

(assert (=> d!338320 true))

(declare-fun e!759244 () Bool)

(assert (=> d!338320 e!759244))

(declare-fun res!534463 () Bool)

(assert (=> d!338320 (=> (not res!534463) (not e!759244))))

(declare-fun lt!407024 () Bool)

(assert (=> d!338320 (= res!534463 (= lt!407024 (forall!3122 (list!4349 (seqFromList!1534 lt!406935)) lambda!48711)))))

(declare-fun forall!3124 (BalanceConc!7760 Int) Bool)

(assert (=> d!338320 (= lt!407024 (forall!3124 (seqFromList!1534 lt!406935) lambda!48711))))

(assert (=> d!338320 (not (isEmpty!7116 rules!4386))))

(assert (=> d!338320 (= (rulesProduceEachTokenIndividually!768 thiss!27592 rules!4386 (seqFromList!1534 lt!406935)) lt!407024)))

(declare-fun b!1182557 () Bool)

(assert (=> b!1182557 (= e!759244 (= lt!407024 (rulesProduceEachTokenIndividuallyList!620 thiss!27592 rules!4386 (list!4349 (seqFromList!1534 lt!406935)))))))

(assert (= (and d!338320 res!534463) b!1182557))

(assert (=> d!338320 m!1358147))

(declare-fun m!1358401 () Bool)

(assert (=> d!338320 m!1358401))

(assert (=> d!338320 m!1358401))

(declare-fun m!1358403 () Bool)

(assert (=> d!338320 m!1358403))

(assert (=> d!338320 m!1358147))

(declare-fun m!1358405 () Bool)

(assert (=> d!338320 m!1358405))

(assert (=> d!338320 m!1358153))

(assert (=> b!1182557 m!1358147))

(assert (=> b!1182557 m!1358401))

(assert (=> b!1182557 m!1358401))

(declare-fun m!1358407 () Bool)

(assert (=> b!1182557 m!1358407))

(assert (=> b!1182248 d!338320))

(declare-fun d!338322 () Bool)

(declare-fun fromListB!681 (List!11829) BalanceConc!7760)

(assert (=> d!338322 (= (seqFromList!1534 lt!406935) (fromListB!681 lt!406935))))

(declare-fun bs!287054 () Bool)

(assert (= bs!287054 d!338322))

(declare-fun m!1358409 () Bool)

(assert (=> bs!287054 m!1358409))

(assert (=> b!1182248 d!338322))

(declare-fun b!1182573 () Bool)

(declare-fun e!759250 () Bool)

(declare-fun tp!336965 () Bool)

(assert (=> b!1182573 (= e!759250 tp!336965)))

(declare-fun b!1182571 () Bool)

(declare-fun tp_is_empty!5815 () Bool)

(assert (=> b!1182571 (= e!759250 tp_is_empty!5815)))

(assert (=> b!1182250 (= tp!336889 e!759250)))

(declare-fun b!1182574 () Bool)

(declare-fun tp!336964 () Bool)

(declare-fun tp!336966 () Bool)

(assert (=> b!1182574 (= e!759250 (and tp!336964 tp!336966))))

(declare-fun b!1182572 () Bool)

(declare-fun tp!336967 () Bool)

(declare-fun tp!336963 () Bool)

(assert (=> b!1182572 (= e!759250 (and tp!336967 tp!336963))))

(assert (= (and b!1182250 ((_ is ElementMatch!3329) (regex!2059 (rule!3480 (h!17206 l!6534))))) b!1182571))

(assert (= (and b!1182250 ((_ is Concat!5455) (regex!2059 (rule!3480 (h!17206 l!6534))))) b!1182572))

(assert (= (and b!1182250 ((_ is Star!3329) (regex!2059 (rule!3480 (h!17206 l!6534))))) b!1182573))

(assert (= (and b!1182250 ((_ is Union!3329) (regex!2059 (rule!3480 (h!17206 l!6534))))) b!1182574))

(declare-fun b!1182577 () Bool)

(declare-fun e!759251 () Bool)

(declare-fun tp!336970 () Bool)

(assert (=> b!1182577 (= e!759251 tp!336970)))

(declare-fun b!1182575 () Bool)

(assert (=> b!1182575 (= e!759251 tp_is_empty!5815)))

(assert (=> b!1182246 (= tp!336894 e!759251)))

(declare-fun b!1182578 () Bool)

(declare-fun tp!336969 () Bool)

(declare-fun tp!336971 () Bool)

(assert (=> b!1182578 (= e!759251 (and tp!336969 tp!336971))))

(declare-fun b!1182576 () Bool)

(declare-fun tp!336972 () Bool)

(declare-fun tp!336968 () Bool)

(assert (=> b!1182576 (= e!759251 (and tp!336972 tp!336968))))

(assert (= (and b!1182246 ((_ is ElementMatch!3329) (regex!2059 (h!17205 rules!4386)))) b!1182575))

(assert (= (and b!1182246 ((_ is Concat!5455) (regex!2059 (h!17205 rules!4386)))) b!1182576))

(assert (= (and b!1182246 ((_ is Star!3329) (regex!2059 (h!17205 rules!4386)))) b!1182577))

(assert (= (and b!1182246 ((_ is Union!3329) (regex!2059 (h!17205 rules!4386)))) b!1182578))

(declare-fun b!1182581 () Bool)

(declare-fun e!759254 () Bool)

(assert (=> b!1182581 (= e!759254 true)))

(declare-fun b!1182580 () Bool)

(declare-fun e!759253 () Bool)

(assert (=> b!1182580 (= e!759253 e!759254)))

(declare-fun b!1182579 () Bool)

(declare-fun e!759252 () Bool)

(assert (=> b!1182579 (= e!759252 e!759253)))

(assert (=> b!1182267 e!759252))

(assert (= b!1182580 b!1182581))

(assert (= b!1182579 b!1182580))

(assert (= (and b!1182267 ((_ is Cons!11804) (t!111532 rules!4386))) b!1182579))

(assert (=> b!1182581 (< (dynLambda!5230 order!7273 (toValue!3168 (transformation!2059 (h!17205 (t!111532 rules!4386))))) (dynLambda!5231 order!7275 lambda!48691))))

(assert (=> b!1182581 (< (dynLambda!5232 order!7277 (toChars!3027 (transformation!2059 (h!17205 (t!111532 rules!4386))))) (dynLambda!5231 order!7275 lambda!48691))))

(declare-fun b!1182595 () Bool)

(declare-fun b_free!28253 () Bool)

(declare-fun b_next!28957 () Bool)

(assert (=> b!1182595 (= b_free!28253 (not b_next!28957))))

(declare-fun tp!336987 () Bool)

(declare-fun b_and!81261 () Bool)

(assert (=> b!1182595 (= tp!336987 b_and!81261)))

(declare-fun b_free!28255 () Bool)

(declare-fun b_next!28959 () Bool)

(assert (=> b!1182595 (= b_free!28255 (not b_next!28959))))

(declare-fun t!111562 () Bool)

(declare-fun tb!66169 () Bool)

(assert (=> (and b!1182595 (= (toChars!3027 (transformation!2059 (rule!3480 (h!17206 (t!111533 l!6534))))) (toChars!3027 (transformation!2059 (rule!3480 (h!17206 l!6534))))) t!111562) tb!66169))

(declare-fun result!79422 () Bool)

(assert (= result!79422 result!79412))

(assert (=> b!1182548 t!111562))

(declare-fun tp!336985 () Bool)

(declare-fun b_and!81263 () Bool)

(assert (=> b!1182595 (= tp!336985 (and (=> t!111562 result!79422) b_and!81263))))

(declare-fun e!759268 () Bool)

(assert (=> b!1182595 (= e!759268 (and tp!336987 tp!336985))))

(declare-fun tp!336983 () Bool)

(declare-fun b!1182593 () Bool)

(declare-fun e!759272 () Bool)

(declare-fun e!759267 () Bool)

(assert (=> b!1182593 (= e!759267 (and (inv!21 (value!66738 (h!17206 (t!111533 l!6534)))) e!759272 tp!336983))))

(declare-fun b!1182594 () Bool)

(declare-fun tp!336986 () Bool)

(assert (=> b!1182594 (= e!759272 (and tp!336986 (inv!15620 (tag!2321 (rule!3480 (h!17206 (t!111533 l!6534))))) (inv!15623 (transformation!2059 (rule!3480 (h!17206 (t!111533 l!6534))))) e!759268))))

(declare-fun tp!336984 () Bool)

(declare-fun b!1182592 () Bool)

(declare-fun e!759271 () Bool)

(assert (=> b!1182592 (= e!759271 (and (inv!15624 (h!17206 (t!111533 l!6534))) e!759267 tp!336984))))

(assert (=> b!1182247 (= tp!336890 e!759271)))

(assert (= b!1182594 b!1182595))

(assert (= b!1182593 b!1182594))

(assert (= b!1182592 b!1182593))

(assert (= (and b!1182247 ((_ is Cons!11805) (t!111533 l!6534))) b!1182592))

(declare-fun m!1358411 () Bool)

(assert (=> b!1182593 m!1358411))

(declare-fun m!1358413 () Bool)

(assert (=> b!1182594 m!1358413))

(declare-fun m!1358415 () Bool)

(assert (=> b!1182594 m!1358415))

(declare-fun m!1358417 () Bool)

(assert (=> b!1182592 m!1358417))

(declare-fun b!1182606 () Bool)

(declare-fun b_free!28257 () Bool)

(declare-fun b_next!28961 () Bool)

(assert (=> b!1182606 (= b_free!28257 (not b_next!28961))))

(declare-fun tp!336996 () Bool)

(declare-fun b_and!81265 () Bool)

(assert (=> b!1182606 (= tp!336996 b_and!81265)))

(declare-fun b_free!28259 () Bool)

(declare-fun b_next!28963 () Bool)

(assert (=> b!1182606 (= b_free!28259 (not b_next!28963))))

(declare-fun t!111564 () Bool)

(declare-fun tb!66171 () Bool)

(assert (=> (and b!1182606 (= (toChars!3027 (transformation!2059 (h!17205 (t!111532 rules!4386)))) (toChars!3027 (transformation!2059 (rule!3480 (h!17206 l!6534))))) t!111564) tb!66171))

(declare-fun result!79426 () Bool)

(assert (= result!79426 result!79412))

(assert (=> b!1182548 t!111564))

(declare-fun tp!336999 () Bool)

(declare-fun b_and!81267 () Bool)

(assert (=> b!1182606 (= tp!336999 (and (=> t!111564 result!79426) b_and!81267))))

(declare-fun e!759283 () Bool)

(assert (=> b!1182606 (= e!759283 (and tp!336996 tp!336999))))

(declare-fun b!1182605 () Bool)

(declare-fun tp!336998 () Bool)

(declare-fun e!759282 () Bool)

(assert (=> b!1182605 (= e!759282 (and tp!336998 (inv!15620 (tag!2321 (h!17205 (t!111532 rules!4386)))) (inv!15623 (transformation!2059 (h!17205 (t!111532 rules!4386)))) e!759283))))

(declare-fun b!1182604 () Bool)

(declare-fun e!759284 () Bool)

(declare-fun tp!336997 () Bool)

(assert (=> b!1182604 (= e!759284 (and e!759282 tp!336997))))

(assert (=> b!1182258 (= tp!336896 e!759284)))

(assert (= b!1182605 b!1182606))

(assert (= b!1182604 b!1182605))

(assert (= (and b!1182258 ((_ is Cons!11804) (t!111532 rules!4386))) b!1182604))

(declare-fun m!1358419 () Bool)

(assert (=> b!1182605 m!1358419))

(declare-fun m!1358421 () Bool)

(assert (=> b!1182605 m!1358421))

(declare-fun b!1182611 () Bool)

(declare-fun e!759287 () Bool)

(declare-fun tp!337002 () Bool)

(assert (=> b!1182611 (= e!759287 (and tp_is_empty!5815 tp!337002))))

(assert (=> b!1182244 (= tp!336895 e!759287)))

(assert (= (and b!1182244 ((_ is Cons!11802) (originalCharacters!2613 (h!17206 l!6534)))) b!1182611))

(declare-fun b_lambda!35351 () Bool)

(assert (= b_lambda!35347 (or b!1182257 b_lambda!35351)))

(declare-fun bs!287055 () Bool)

(declare-fun d!338324 () Bool)

(assert (= bs!287055 (and d!338324 b!1182257)))

(assert (=> bs!287055 (= (dynLambda!5235 lambda!48691 (h!17206 lt!406935)) (rulesProduceIndividualToken!785 Lexer!1752 rules!4386 (h!17206 lt!406935)))))

(declare-fun m!1358423 () Bool)

(assert (=> bs!287055 m!1358423))

(assert (=> b!1182503 d!338324))

(declare-fun b_lambda!35353 () Bool)

(assert (= b_lambda!35349 (or (and b!1182249 b_free!28239) (and b!1182252 b_free!28243 (= (toChars!3027 (transformation!2059 (h!17205 rules!4386))) (toChars!3027 (transformation!2059 (rule!3480 (h!17206 l!6534)))))) (and b!1182595 b_free!28255 (= (toChars!3027 (transformation!2059 (rule!3480 (h!17206 (t!111533 l!6534))))) (toChars!3027 (transformation!2059 (rule!3480 (h!17206 l!6534)))))) (and b!1182606 b_free!28259 (= (toChars!3027 (transformation!2059 (h!17205 (t!111532 rules!4386)))) (toChars!3027 (transformation!2059 (rule!3480 (h!17206 l!6534)))))) b_lambda!35353)))

(check-sat (not b_next!28961) (not b!1182605) (not b_lambda!35353) (not b!1182554) (not b_next!28957) (not b!1182325) (not b_next!28963) (not b!1182482) (not b!1182494) tp_is_empty!5815 (not b!1182558) (not d!338304) (not b!1182481) (not b!1182346) (not b_next!28947) (not b!1182611) (not b!1182420) (not d!338316) (not b!1182594) (not b!1182573) (not b!1182516) (not d!338320) (not b!1182574) (not b!1182572) (not b!1182577) (not b!1182535) (not b!1182495) b_and!81241 (not b_next!28943) (not b!1182515) (not b!1182496) b_and!81261 (not d!338252) (not b!1182410) (not b!1182480) (not tb!66165) (not b!1182412) (not bs!287055) (not b!1182576) b_and!81267 (not b!1182557) (not bm!82597) (not d!338302) (not b!1182324) (not b_next!28941) (not b_next!28959) (not d!338308) (not b!1182349) (not b!1182604) (not b!1182504) (not b!1182330) (not b!1182331) (not b_next!28945) (not d!338318) (not b!1182323) (not b_lambda!35351) (not d!338266) (not b!1182347) (not d!338286) (not b!1182549) (not d!338250) (not b!1182593) b_and!81259 b_and!81263 b_and!81265 (not d!338270) (not b!1182332) (not b!1182548) (not b!1182411) (not b!1182275) b_and!81237 (not b!1182578) b_and!81257 (not b!1182540) (not b!1182579) (not d!338322) (not d!338310) (not b!1182592))
(check-sat (not b_next!28957) (not b_next!28963) (not b_next!28947) b_and!81261 (not b_next!28961) b_and!81267 (not b_next!28941) (not b_next!28959) (not b_next!28945) b_and!81265 b_and!81241 (not b_next!28943) b_and!81259 b_and!81263 b_and!81237 b_and!81257)
(get-model)

(declare-fun d!338330 () Bool)

(declare-fun charsToInt!0 (List!11827) (_ BitVec 32))

(assert (=> d!338330 (= (inv!16 (value!66738 (h!17206 l!6534))) (= (charsToInt!0 (text!15322 (value!66738 (h!17206 l!6534)))) (value!66729 (value!66738 (h!17206 l!6534)))))))

(declare-fun bs!287057 () Bool)

(assert (= bs!287057 d!338330))

(declare-fun m!1358431 () Bool)

(assert (=> bs!287057 m!1358431))

(assert (=> b!1182347 d!338330))

(declare-fun d!338332 () Bool)

(declare-fun res!534469 () Bool)

(declare-fun e!759288 () Bool)

(assert (=> d!338332 (=> res!534469 e!759288)))

(assert (=> d!338332 (= res!534469 ((_ is Nil!11805) (t!111533 lt!406935)))))

(assert (=> d!338332 (= (forall!3122 (t!111533 lt!406935) lambda!48691) e!759288)))

(declare-fun b!1182612 () Bool)

(declare-fun e!759289 () Bool)

(assert (=> b!1182612 (= e!759288 e!759289)))

(declare-fun res!534470 () Bool)

(assert (=> b!1182612 (=> (not res!534470) (not e!759289))))

(assert (=> b!1182612 (= res!534470 (dynLambda!5235 lambda!48691 (h!17206 (t!111533 lt!406935))))))

(declare-fun b!1182613 () Bool)

(assert (=> b!1182613 (= e!759289 (forall!3122 (t!111533 (t!111533 lt!406935)) lambda!48691))))

(assert (= (and d!338332 (not res!534469)) b!1182612))

(assert (= (and b!1182612 res!534470) b!1182613))

(declare-fun b_lambda!35355 () Bool)

(assert (=> (not b_lambda!35355) (not b!1182612)))

(declare-fun m!1358433 () Bool)

(assert (=> b!1182612 m!1358433))

(declare-fun m!1358435 () Bool)

(assert (=> b!1182613 m!1358435))

(assert (=> b!1182504 d!338332))

(declare-fun bs!287058 () Bool)

(declare-fun d!338334 () Bool)

(assert (= bs!287058 (and d!338334 b!1182257)))

(declare-fun lambda!48712 () Int)

(assert (=> bs!287058 (= (= thiss!27592 Lexer!1752) (= lambda!48712 lambda!48691))))

(declare-fun bs!287059 () Bool)

(assert (= bs!287059 (and d!338334 d!338308)))

(assert (=> bs!287059 (= lambda!48712 lambda!48706)))

(declare-fun bs!287060 () Bool)

(assert (= bs!287060 (and d!338334 d!338252)))

(assert (=> bs!287060 (= lambda!48712 lambda!48702)))

(declare-fun bs!287061 () Bool)

(assert (= bs!287061 (and d!338334 d!338266)))

(assert (=> bs!287061 (= lambda!48712 lambda!48703)))

(declare-fun bs!287062 () Bool)

(assert (= bs!287062 (and d!338334 d!338320)))

(assert (=> bs!287062 (= lambda!48712 lambda!48711)))

(declare-fun b!1182618 () Bool)

(declare-fun e!759294 () Bool)

(assert (=> b!1182618 (= e!759294 true)))

(declare-fun b!1182617 () Bool)

(declare-fun e!759293 () Bool)

(assert (=> b!1182617 (= e!759293 e!759294)))

(declare-fun b!1182616 () Bool)

(declare-fun e!759292 () Bool)

(assert (=> b!1182616 (= e!759292 e!759293)))

(assert (=> d!338334 e!759292))

(assert (= b!1182617 b!1182618))

(assert (= b!1182616 b!1182617))

(assert (= (and d!338334 ((_ is Cons!11804) rules!4386)) b!1182616))

(assert (=> b!1182618 (< (dynLambda!5230 order!7273 (toValue!3168 (transformation!2059 (h!17205 rules!4386)))) (dynLambda!5231 order!7275 lambda!48712))))

(assert (=> b!1182618 (< (dynLambda!5232 order!7277 (toChars!3027 (transformation!2059 (h!17205 rules!4386)))) (dynLambda!5231 order!7275 lambda!48712))))

(assert (=> d!338334 true))

(declare-fun lt!407028 () Bool)

(assert (=> d!338334 (= lt!407028 (forall!3122 (t!111533 (t!111533 lt!406935)) lambda!48712))))

(declare-fun e!759291 () Bool)

(assert (=> d!338334 (= lt!407028 e!759291)))

(declare-fun res!534471 () Bool)

(assert (=> d!338334 (=> res!534471 e!759291)))

(assert (=> d!338334 (= res!534471 (not ((_ is Cons!11805) (t!111533 (t!111533 lt!406935)))))))

(assert (=> d!338334 (not (isEmpty!7116 rules!4386))))

(assert (=> d!338334 (= (rulesProduceEachTokenIndividuallyList!620 thiss!27592 rules!4386 (t!111533 (t!111533 lt!406935))) lt!407028)))

(declare-fun b!1182614 () Bool)

(declare-fun e!759290 () Bool)

(assert (=> b!1182614 (= e!759291 e!759290)))

(declare-fun res!534472 () Bool)

(assert (=> b!1182614 (=> (not res!534472) (not e!759290))))

(assert (=> b!1182614 (= res!534472 (rulesProduceIndividualToken!785 thiss!27592 rules!4386 (h!17206 (t!111533 (t!111533 lt!406935)))))))

(declare-fun b!1182615 () Bool)

(assert (=> b!1182615 (= e!759290 (rulesProduceEachTokenIndividuallyList!620 thiss!27592 rules!4386 (t!111533 (t!111533 (t!111533 lt!406935)))))))

(assert (= (and d!338334 (not res!534471)) b!1182614))

(assert (= (and b!1182614 res!534472) b!1182615))

(declare-fun m!1358437 () Bool)

(assert (=> d!338334 m!1358437))

(assert (=> d!338334 m!1358153))

(declare-fun m!1358439 () Bool)

(assert (=> b!1182614 m!1358439))

(declare-fun m!1358441 () Bool)

(assert (=> b!1182615 m!1358441))

(assert (=> b!1182324 d!338334))

(assert (=> d!338310 d!338312))

(declare-fun d!338336 () Bool)

(assert (=> d!338336 (forall!3122 lt!406935 lambda!48691)))

(assert (=> d!338336 true))

(declare-fun _$37!331 () Unit!18120)

(assert (=> d!338336 (= (choose!7653 lt!406935 l!6534 lambda!48691) _$37!331)))

(declare-fun bs!287063 () Bool)

(assert (= bs!287063 d!338336))

(assert (=> bs!287063 m!1358171))

(assert (=> d!338310 d!338336))

(declare-fun d!338338 () Bool)

(declare-fun res!534473 () Bool)

(declare-fun e!759295 () Bool)

(assert (=> d!338338 (=> res!534473 e!759295)))

(assert (=> d!338338 (= res!534473 ((_ is Nil!11805) l!6534))))

(assert (=> d!338338 (= (forall!3122 l!6534 lambda!48691) e!759295)))

(declare-fun b!1182619 () Bool)

(declare-fun e!759296 () Bool)

(assert (=> b!1182619 (= e!759295 e!759296)))

(declare-fun res!534474 () Bool)

(assert (=> b!1182619 (=> (not res!534474) (not e!759296))))

(assert (=> b!1182619 (= res!534474 (dynLambda!5235 lambda!48691 (h!17206 l!6534)))))

(declare-fun b!1182620 () Bool)

(assert (=> b!1182620 (= e!759296 (forall!3122 (t!111533 l!6534) lambda!48691))))

(assert (= (and d!338338 (not res!534473)) b!1182619))

(assert (= (and b!1182619 res!534474) b!1182620))

(declare-fun b_lambda!35357 () Bool)

(assert (=> (not b_lambda!35357) (not b!1182619)))

(declare-fun m!1358443 () Bool)

(assert (=> b!1182619 m!1358443))

(declare-fun m!1358445 () Bool)

(assert (=> b!1182620 m!1358445))

(assert (=> d!338310 d!338338))

(declare-fun d!338340 () Bool)

(declare-fun res!534475 () Bool)

(declare-fun e!759297 () Bool)

(assert (=> d!338340 (=> res!534475 e!759297)))

(assert (=> d!338340 (= res!534475 ((_ is Nil!11805) lt!406935))))

(assert (=> d!338340 (= (forall!3122 lt!406935 lambda!48706) e!759297)))

(declare-fun b!1182621 () Bool)

(declare-fun e!759298 () Bool)

(assert (=> b!1182621 (= e!759297 e!759298)))

(declare-fun res!534476 () Bool)

(assert (=> b!1182621 (=> (not res!534476) (not e!759298))))

(assert (=> b!1182621 (= res!534476 (dynLambda!5235 lambda!48706 (h!17206 lt!406935)))))

(declare-fun b!1182622 () Bool)

(assert (=> b!1182622 (= e!759298 (forall!3122 (t!111533 lt!406935) lambda!48706))))

(assert (= (and d!338340 (not res!534475)) b!1182621))

(assert (= (and b!1182621 res!534476) b!1182622))

(declare-fun b_lambda!35359 () Bool)

(assert (=> (not b_lambda!35359) (not b!1182621)))

(declare-fun m!1358447 () Bool)

(assert (=> b!1182621 m!1358447))

(declare-fun m!1358449 () Bool)

(assert (=> b!1182622 m!1358449))

(assert (=> d!338308 d!338340))

(assert (=> d!338308 d!338264))

(declare-fun d!338342 () Bool)

(declare-fun charsToBigInt!1 (List!11827) Int)

(assert (=> d!338342 (= (inv!17 (value!66738 (h!17206 l!6534))) (= (charsToBigInt!1 (text!15323 (value!66738 (h!17206 l!6534)))) (value!66730 (value!66738 (h!17206 l!6534)))))))

(declare-fun bs!287064 () Bool)

(assert (= bs!287064 d!338342))

(declare-fun m!1358451 () Bool)

(assert (=> bs!287064 m!1358451))

(assert (=> b!1182349 d!338342))

(declare-fun d!338344 () Bool)

(assert (=> d!338344 true))

(declare-fun lambda!48715 () Int)

(declare-fun order!7279 () Int)

(declare-fun dynLambda!5239 (Int Int) Int)

(assert (=> d!338344 (< (dynLambda!5232 order!7277 (toChars!3027 (transformation!2059 (h!17205 rules!4386)))) (dynLambda!5239 order!7279 lambda!48715))))

(assert (=> d!338344 true))

(assert (=> d!338344 (< (dynLambda!5230 order!7273 (toValue!3168 (transformation!2059 (h!17205 rules!4386)))) (dynLambda!5239 order!7279 lambda!48715))))

(declare-fun Forall!446 (Int) Bool)

(assert (=> d!338344 (= (semiInverseModEq!743 (toChars!3027 (transformation!2059 (h!17205 rules!4386))) (toValue!3168 (transformation!2059 (h!17205 rules!4386)))) (Forall!446 lambda!48715))))

(declare-fun bs!287065 () Bool)

(assert (= bs!287065 d!338344))

(declare-fun m!1358453 () Bool)

(assert (=> bs!287065 m!1358453))

(assert (=> d!338302 d!338344))

(declare-fun d!338346 () Bool)

(declare-fun lt!407031 () Int)

(assert (=> d!338346 (>= lt!407031 0)))

(declare-fun e!759301 () Int)

(assert (=> d!338346 (= lt!407031 e!759301)))

(declare-fun c!196898 () Bool)

(assert (=> d!338346 (= c!196898 ((_ is Nil!11805) l!6534))))

(assert (=> d!338346 (= (size!9326 l!6534) lt!407031)))

(declare-fun b!1182631 () Bool)

(assert (=> b!1182631 (= e!759301 0)))

(declare-fun b!1182632 () Bool)

(assert (=> b!1182632 (= e!759301 (+ 1 (size!9326 (t!111533 l!6534))))))

(assert (= (and d!338346 c!196898) b!1182631))

(assert (= (and d!338346 (not c!196898)) b!1182632))

(declare-fun m!1358455 () Bool)

(assert (=> b!1182632 m!1358455))

(assert (=> bm!82597 d!338346))

(declare-fun d!338348 () Bool)

(declare-fun res!534477 () Bool)

(declare-fun e!759302 () Bool)

(assert (=> d!338348 (=> res!534477 e!759302)))

(assert (=> d!338348 (= res!534477 ((_ is Nil!11805) (t!111533 lt!406935)))))

(assert (=> d!338348 (= (forall!3122 (t!111533 lt!406935) lambda!48702) e!759302)))

(declare-fun b!1182633 () Bool)

(declare-fun e!759303 () Bool)

(assert (=> b!1182633 (= e!759302 e!759303)))

(declare-fun res!534478 () Bool)

(assert (=> b!1182633 (=> (not res!534478) (not e!759303))))

(assert (=> b!1182633 (= res!534478 (dynLambda!5235 lambda!48702 (h!17206 (t!111533 lt!406935))))))

(declare-fun b!1182634 () Bool)

(assert (=> b!1182634 (= e!759303 (forall!3122 (t!111533 (t!111533 lt!406935)) lambda!48702))))

(assert (= (and d!338348 (not res!534477)) b!1182633))

(assert (= (and b!1182633 res!534478) b!1182634))

(declare-fun b_lambda!35361 () Bool)

(assert (=> (not b_lambda!35361) (not b!1182633)))

(declare-fun m!1358457 () Bool)

(assert (=> b!1182633 m!1358457))

(declare-fun m!1358459 () Bool)

(assert (=> b!1182634 m!1358459))

(assert (=> d!338252 d!338348))

(assert (=> d!338252 d!338264))

(declare-fun d!338350 () Bool)

(declare-fun res!534480 () Bool)

(declare-fun e!759304 () Bool)

(assert (=> d!338350 (=> res!534480 e!759304)))

(assert (=> d!338350 (= res!534480 (or (not ((_ is Cons!11805) (Cons!11805 (h!17206 (t!111533 l!6534)) (t!111533 (t!111533 l!6534))))) (not ((_ is Cons!11805) (t!111533 (Cons!11805 (h!17206 (t!111533 l!6534)) (t!111533 (t!111533 l!6534))))))))))

(assert (=> d!338350 (= (tokensListTwoByTwoPredicateSeparableList!148 thiss!27592 (Cons!11805 (h!17206 (t!111533 l!6534)) (t!111533 (t!111533 l!6534))) rules!4386) e!759304)))

(declare-fun b!1182635 () Bool)

(declare-fun e!759305 () Bool)

(assert (=> b!1182635 (= e!759304 e!759305)))

(declare-fun res!534479 () Bool)

(assert (=> b!1182635 (=> (not res!534479) (not e!759305))))

(assert (=> b!1182635 (= res!534479 (separableTokensPredicate!154 thiss!27592 (h!17206 (Cons!11805 (h!17206 (t!111533 l!6534)) (t!111533 (t!111533 l!6534)))) (h!17206 (t!111533 (Cons!11805 (h!17206 (t!111533 l!6534)) (t!111533 (t!111533 l!6534))))) rules!4386))))

(declare-fun lt!407034 () Unit!18120)

(declare-fun Unit!18128 () Unit!18120)

(assert (=> b!1182635 (= lt!407034 Unit!18128)))

(assert (=> b!1182635 (> (size!9325 (charsOf!1092 (h!17206 (t!111533 (Cons!11805 (h!17206 (t!111533 l!6534)) (t!111533 (t!111533 l!6534))))))) 0)))

(declare-fun lt!407033 () Unit!18120)

(declare-fun Unit!18129 () Unit!18120)

(assert (=> b!1182635 (= lt!407033 Unit!18129)))

(assert (=> b!1182635 (rulesProduceIndividualToken!785 thiss!27592 rules!4386 (h!17206 (t!111533 (Cons!11805 (h!17206 (t!111533 l!6534)) (t!111533 (t!111533 l!6534))))))))

(declare-fun lt!407035 () Unit!18120)

(declare-fun Unit!18130 () Unit!18120)

(assert (=> b!1182635 (= lt!407035 Unit!18130)))

(assert (=> b!1182635 (rulesProduceIndividualToken!785 thiss!27592 rules!4386 (h!17206 (Cons!11805 (h!17206 (t!111533 l!6534)) (t!111533 (t!111533 l!6534)))))))

(declare-fun lt!407038 () Unit!18120)

(declare-fun lt!407032 () Unit!18120)

(assert (=> b!1182635 (= lt!407038 lt!407032)))

(assert (=> b!1182635 (rulesProduceIndividualToken!785 thiss!27592 rules!4386 (h!17206 (t!111533 (Cons!11805 (h!17206 (t!111533 l!6534)) (t!111533 (t!111533 l!6534))))))))

(assert (=> b!1182635 (= lt!407032 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!313 thiss!27592 rules!4386 (Cons!11805 (h!17206 (t!111533 l!6534)) (t!111533 (t!111533 l!6534))) (h!17206 (t!111533 (Cons!11805 (h!17206 (t!111533 l!6534)) (t!111533 (t!111533 l!6534)))))))))

(declare-fun lt!407037 () Unit!18120)

(declare-fun lt!407036 () Unit!18120)

(assert (=> b!1182635 (= lt!407037 lt!407036)))

(assert (=> b!1182635 (rulesProduceIndividualToken!785 thiss!27592 rules!4386 (h!17206 (Cons!11805 (h!17206 (t!111533 l!6534)) (t!111533 (t!111533 l!6534)))))))

(assert (=> b!1182635 (= lt!407036 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!313 thiss!27592 rules!4386 (Cons!11805 (h!17206 (t!111533 l!6534)) (t!111533 (t!111533 l!6534))) (h!17206 (Cons!11805 (h!17206 (t!111533 l!6534)) (t!111533 (t!111533 l!6534))))))))

(declare-fun b!1182636 () Bool)

(assert (=> b!1182636 (= e!759305 (tokensListTwoByTwoPredicateSeparableList!148 thiss!27592 (Cons!11805 (h!17206 (t!111533 (Cons!11805 (h!17206 (t!111533 l!6534)) (t!111533 (t!111533 l!6534))))) (t!111533 (t!111533 (Cons!11805 (h!17206 (t!111533 l!6534)) (t!111533 (t!111533 l!6534)))))) rules!4386))))

(assert (= (and d!338350 (not res!534480)) b!1182635))

(assert (= (and b!1182635 res!534479) b!1182636))

(declare-fun m!1358461 () Bool)

(assert (=> b!1182635 m!1358461))

(declare-fun m!1358463 () Bool)

(assert (=> b!1182635 m!1358463))

(declare-fun m!1358465 () Bool)

(assert (=> b!1182635 m!1358465))

(declare-fun m!1358467 () Bool)

(assert (=> b!1182635 m!1358467))

(assert (=> b!1182635 m!1358465))

(declare-fun m!1358469 () Bool)

(assert (=> b!1182635 m!1358469))

(declare-fun m!1358471 () Bool)

(assert (=> b!1182635 m!1358471))

(declare-fun m!1358473 () Bool)

(assert (=> b!1182635 m!1358473))

(declare-fun m!1358475 () Bool)

(assert (=> b!1182636 m!1358475))

(assert (=> b!1182481 d!338350))

(declare-fun b!1182638 () Bool)

(declare-fun e!759306 () Bool)

(declare-fun e!759308 () Bool)

(assert (=> b!1182638 (= e!759306 e!759308)))

(declare-fun res!534481 () Bool)

(assert (=> b!1182638 (=> res!534481 e!759308)))

(declare-fun e!759309 () Bool)

(assert (=> b!1182638 (= res!534481 e!759309)))

(declare-fun res!534484 () Bool)

(assert (=> b!1182638 (=> (not res!534484) (not e!759309))))

(assert (=> b!1182638 (= res!534484 (= (h!17206 (drop!539 l!6534 i!1621)) (h!17206 l!6534)))))

(declare-fun d!338352 () Bool)

(declare-fun res!534482 () Bool)

(declare-fun e!759307 () Bool)

(assert (=> d!338352 (=> res!534482 e!759307)))

(assert (=> d!338352 (= res!534482 ((_ is Nil!11805) (drop!539 l!6534 i!1621)))))

(assert (=> d!338352 (= (subseq!315 (drop!539 l!6534 i!1621) l!6534) e!759307)))

(declare-fun b!1182640 () Bool)

(assert (=> b!1182640 (= e!759308 (subseq!315 (drop!539 l!6534 i!1621) (t!111533 l!6534)))))

(declare-fun b!1182639 () Bool)

(assert (=> b!1182639 (= e!759309 (subseq!315 (t!111533 (drop!539 l!6534 i!1621)) (t!111533 l!6534)))))

(declare-fun b!1182637 () Bool)

(assert (=> b!1182637 (= e!759307 e!759306)))

(declare-fun res!534483 () Bool)

(assert (=> b!1182637 (=> (not res!534483) (not e!759306))))

(assert (=> b!1182637 (= res!534483 ((_ is Cons!11805) l!6534))))

(assert (= (and d!338352 (not res!534482)) b!1182637))

(assert (= (and b!1182637 res!534483) b!1182638))

(assert (= (and b!1182638 res!534484) b!1182639))

(assert (= (and b!1182638 (not res!534481)) b!1182640))

(assert (=> b!1182640 m!1358161))

(declare-fun m!1358477 () Bool)

(assert (=> b!1182640 m!1358477))

(declare-fun m!1358479 () Bool)

(assert (=> b!1182639 m!1358479))

(assert (=> d!338304 d!338352))

(assert (=> d!338304 d!338316))

(declare-fun d!338354 () Bool)

(assert (=> d!338354 (subseq!315 (drop!539 l!6534 i!1621) l!6534)))

(assert (=> d!338354 true))

(declare-fun _$26!174 () Unit!18120)

(assert (=> d!338354 (= (choose!7652 l!6534 i!1621) _$26!174)))

(declare-fun bs!287066 () Bool)

(assert (= bs!287066 d!338354))

(assert (=> bs!287066 m!1358161))

(assert (=> bs!287066 m!1358161))

(assert (=> bs!287066 m!1358361))

(assert (=> d!338304 d!338354))

(declare-fun d!338356 () Bool)

(declare-fun res!534485 () Bool)

(declare-fun e!759310 () Bool)

(assert (=> d!338356 (=> res!534485 e!759310)))

(assert (=> d!338356 (= res!534485 ((_ is Nil!11805) l!6534))))

(assert (=> d!338356 (= (forall!3122 l!6534 lambda!48703) e!759310)))

(declare-fun b!1182641 () Bool)

(declare-fun e!759311 () Bool)

(assert (=> b!1182641 (= e!759310 e!759311)))

(declare-fun res!534486 () Bool)

(assert (=> b!1182641 (=> (not res!534486) (not e!759311))))

(assert (=> b!1182641 (= res!534486 (dynLambda!5235 lambda!48703 (h!17206 l!6534)))))

(declare-fun b!1182642 () Bool)

(assert (=> b!1182642 (= e!759311 (forall!3122 (t!111533 l!6534) lambda!48703))))

(assert (= (and d!338356 (not res!534485)) b!1182641))

(assert (= (and b!1182641 res!534486) b!1182642))

(declare-fun b_lambda!35363 () Bool)

(assert (=> (not b_lambda!35363) (not b!1182641)))

(declare-fun m!1358481 () Bool)

(assert (=> b!1182641 m!1358481))

(declare-fun m!1358483 () Bool)

(assert (=> b!1182642 m!1358483))

(assert (=> d!338266 d!338356))

(assert (=> d!338266 d!338264))

(declare-fun d!338358 () Bool)

(assert (=> d!338358 (rulesProduceIndividualToken!785 thiss!27592 rules!4386 (h!17206 (t!111533 l!6534)))))

(declare-fun lt!407068 () Unit!18120)

(declare-fun choose!7655 (LexerInterface!1754 List!11828 List!11829 Token!3780) Unit!18120)

(assert (=> d!338358 (= lt!407068 (choose!7655 thiss!27592 rules!4386 l!6534 (h!17206 (t!111533 l!6534))))))

(assert (=> d!338358 (not (isEmpty!7116 rules!4386))))

(assert (=> d!338358 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!313 thiss!27592 rules!4386 l!6534 (h!17206 (t!111533 l!6534))) lt!407068)))

(declare-fun bs!287083 () Bool)

(assert (= bs!287083 d!338358))

(assert (=> bs!287083 m!1358341))

(declare-fun m!1358605 () Bool)

(assert (=> bs!287083 m!1358605))

(assert (=> bs!287083 m!1358153))

(assert (=> b!1182480 d!338358))

(declare-fun d!338420 () Bool)

(assert (=> d!338420 (rulesProduceIndividualToken!785 thiss!27592 rules!4386 (h!17206 l!6534))))

(declare-fun lt!407069 () Unit!18120)

(assert (=> d!338420 (= lt!407069 (choose!7655 thiss!27592 rules!4386 l!6534 (h!17206 l!6534)))))

(assert (=> d!338420 (not (isEmpty!7116 rules!4386))))

(assert (=> d!338420 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!313 thiss!27592 rules!4386 l!6534 (h!17206 l!6534)) lt!407069)))

(declare-fun bs!287084 () Bool)

(assert (= bs!287084 d!338420))

(assert (=> bs!287084 m!1358223))

(declare-fun m!1358607 () Bool)

(assert (=> bs!287084 m!1358607))

(assert (=> bs!287084 m!1358153))

(assert (=> b!1182480 d!338420))

(declare-fun d!338422 () Bool)

(declare-fun lt!407071 () Bool)

(declare-fun e!759378 () Bool)

(assert (=> d!338422 (= lt!407071 e!759378)))

(declare-fun res!534534 () Bool)

(assert (=> d!338422 (=> (not res!534534) (not e!759378))))

(assert (=> d!338422 (= res!534534 (= (list!4349 (_1!6893 (lex!732 thiss!27592 rules!4386 (print!669 thiss!27592 (singletonSeq!713 (h!17206 l!6534)))))) (list!4349 (singletonSeq!713 (h!17206 l!6534)))))))

(declare-fun e!759377 () Bool)

(assert (=> d!338422 (= lt!407071 e!759377)))

(declare-fun res!534536 () Bool)

(assert (=> d!338422 (=> (not res!534536) (not e!759377))))

(declare-fun lt!407070 () tuple2!12092)

(assert (=> d!338422 (= res!534536 (= (size!9324 (_1!6893 lt!407070)) 1))))

(assert (=> d!338422 (= lt!407070 (lex!732 thiss!27592 rules!4386 (print!669 thiss!27592 (singletonSeq!713 (h!17206 l!6534)))))))

(assert (=> d!338422 (not (isEmpty!7116 rules!4386))))

(assert (=> d!338422 (= (rulesProduceIndividualToken!785 thiss!27592 rules!4386 (h!17206 l!6534)) lt!407071)))

(declare-fun b!1182737 () Bool)

(declare-fun res!534535 () Bool)

(assert (=> b!1182737 (=> (not res!534535) (not e!759377))))

(assert (=> b!1182737 (= res!534535 (= (apply!2576 (_1!6893 lt!407070) 0) (h!17206 l!6534)))))

(declare-fun b!1182738 () Bool)

(assert (=> b!1182738 (= e!759377 (isEmpty!7119 (_2!6893 lt!407070)))))

(declare-fun b!1182739 () Bool)

(assert (=> b!1182739 (= e!759378 (isEmpty!7119 (_2!6893 (lex!732 thiss!27592 rules!4386 (print!669 thiss!27592 (singletonSeq!713 (h!17206 l!6534)))))))))

(assert (= (and d!338422 res!534536) b!1182737))

(assert (= (and b!1182737 res!534535) b!1182738))

(assert (= (and d!338422 res!534534) b!1182739))

(declare-fun m!1358609 () Bool)

(assert (=> d!338422 m!1358609))

(declare-fun m!1358611 () Bool)

(assert (=> d!338422 m!1358611))

(assert (=> d!338422 m!1358153))

(declare-fun m!1358613 () Bool)

(assert (=> d!338422 m!1358613))

(assert (=> d!338422 m!1358613))

(assert (=> d!338422 m!1358609))

(declare-fun m!1358615 () Bool)

(assert (=> d!338422 m!1358615))

(declare-fun m!1358617 () Bool)

(assert (=> d!338422 m!1358617))

(assert (=> d!338422 m!1358613))

(declare-fun m!1358619 () Bool)

(assert (=> d!338422 m!1358619))

(declare-fun m!1358621 () Bool)

(assert (=> b!1182737 m!1358621))

(declare-fun m!1358623 () Bool)

(assert (=> b!1182738 m!1358623))

(assert (=> b!1182739 m!1358613))

(assert (=> b!1182739 m!1358613))

(assert (=> b!1182739 m!1358609))

(assert (=> b!1182739 m!1358609))

(assert (=> b!1182739 m!1358611))

(declare-fun m!1358625 () Bool)

(assert (=> b!1182739 m!1358625))

(assert (=> b!1182480 d!338422))

(declare-fun d!338424 () Bool)

(declare-fun lt!407073 () Bool)

(declare-fun e!759380 () Bool)

(assert (=> d!338424 (= lt!407073 e!759380)))

(declare-fun res!534537 () Bool)

(assert (=> d!338424 (=> (not res!534537) (not e!759380))))

(assert (=> d!338424 (= res!534537 (= (list!4349 (_1!6893 (lex!732 thiss!27592 rules!4386 (print!669 thiss!27592 (singletonSeq!713 (h!17206 (t!111533 l!6534))))))) (list!4349 (singletonSeq!713 (h!17206 (t!111533 l!6534))))))))

(declare-fun e!759379 () Bool)

(assert (=> d!338424 (= lt!407073 e!759379)))

(declare-fun res!534539 () Bool)

(assert (=> d!338424 (=> (not res!534539) (not e!759379))))

(declare-fun lt!407072 () tuple2!12092)

(assert (=> d!338424 (= res!534539 (= (size!9324 (_1!6893 lt!407072)) 1))))

(assert (=> d!338424 (= lt!407072 (lex!732 thiss!27592 rules!4386 (print!669 thiss!27592 (singletonSeq!713 (h!17206 (t!111533 l!6534))))))))

(assert (=> d!338424 (not (isEmpty!7116 rules!4386))))

(assert (=> d!338424 (= (rulesProduceIndividualToken!785 thiss!27592 rules!4386 (h!17206 (t!111533 l!6534))) lt!407073)))

(declare-fun b!1182740 () Bool)

(declare-fun res!534538 () Bool)

(assert (=> b!1182740 (=> (not res!534538) (not e!759379))))

(assert (=> b!1182740 (= res!534538 (= (apply!2576 (_1!6893 lt!407072) 0) (h!17206 (t!111533 l!6534))))))

(declare-fun b!1182741 () Bool)

(assert (=> b!1182741 (= e!759379 (isEmpty!7119 (_2!6893 lt!407072)))))

(declare-fun b!1182742 () Bool)

(assert (=> b!1182742 (= e!759380 (isEmpty!7119 (_2!6893 (lex!732 thiss!27592 rules!4386 (print!669 thiss!27592 (singletonSeq!713 (h!17206 (t!111533 l!6534))))))))))

(assert (= (and d!338424 res!534539) b!1182740))

(assert (= (and b!1182740 res!534538) b!1182741))

(assert (= (and d!338424 res!534537) b!1182742))

(declare-fun m!1358627 () Bool)

(assert (=> d!338424 m!1358627))

(declare-fun m!1358629 () Bool)

(assert (=> d!338424 m!1358629))

(assert (=> d!338424 m!1358153))

(declare-fun m!1358631 () Bool)

(assert (=> d!338424 m!1358631))

(assert (=> d!338424 m!1358631))

(assert (=> d!338424 m!1358627))

(declare-fun m!1358633 () Bool)

(assert (=> d!338424 m!1358633))

(declare-fun m!1358635 () Bool)

(assert (=> d!338424 m!1358635))

(assert (=> d!338424 m!1358631))

(declare-fun m!1358637 () Bool)

(assert (=> d!338424 m!1358637))

(declare-fun m!1358639 () Bool)

(assert (=> b!1182740 m!1358639))

(declare-fun m!1358641 () Bool)

(assert (=> b!1182741 m!1358641))

(assert (=> b!1182742 m!1358631))

(assert (=> b!1182742 m!1358631))

(assert (=> b!1182742 m!1358627))

(assert (=> b!1182742 m!1358627))

(assert (=> b!1182742 m!1358629))

(declare-fun m!1358643 () Bool)

(assert (=> b!1182742 m!1358643))

(assert (=> b!1182480 d!338424))

(declare-fun d!338426 () Bool)

(declare-fun lt!407076 () BalanceConc!7758)

(assert (=> d!338426 (= (list!4350 lt!407076) (originalCharacters!2613 (h!17206 (t!111533 l!6534))))))

(assert (=> d!338426 (= lt!407076 (dynLambda!5236 (toChars!3027 (transformation!2059 (rule!3480 (h!17206 (t!111533 l!6534))))) (value!66738 (h!17206 (t!111533 l!6534)))))))

(assert (=> d!338426 (= (charsOf!1092 (h!17206 (t!111533 l!6534))) lt!407076)))

(declare-fun b_lambda!35369 () Bool)

(assert (=> (not b_lambda!35369) (not d!338426)))

(declare-fun t!111569 () Bool)

(declare-fun tb!66173 () Bool)

(assert (=> (and b!1182249 (= (toChars!3027 (transformation!2059 (rule!3480 (h!17206 l!6534)))) (toChars!3027 (transformation!2059 (rule!3480 (h!17206 (t!111533 l!6534)))))) t!111569) tb!66173))

(declare-fun b!1182743 () Bool)

(declare-fun e!759381 () Bool)

(declare-fun tp!337003 () Bool)

(assert (=> b!1182743 (= e!759381 (and (inv!15627 (c!196857 (dynLambda!5236 (toChars!3027 (transformation!2059 (rule!3480 (h!17206 (t!111533 l!6534))))) (value!66738 (h!17206 (t!111533 l!6534)))))) tp!337003))))

(declare-fun result!79430 () Bool)

(assert (=> tb!66173 (= result!79430 (and (inv!15628 (dynLambda!5236 (toChars!3027 (transformation!2059 (rule!3480 (h!17206 (t!111533 l!6534))))) (value!66738 (h!17206 (t!111533 l!6534))))) e!759381))))

(assert (= tb!66173 b!1182743))

(declare-fun m!1358645 () Bool)

(assert (=> b!1182743 m!1358645))

(declare-fun m!1358647 () Bool)

(assert (=> tb!66173 m!1358647))

(assert (=> d!338426 t!111569))

(declare-fun b_and!81269 () Bool)

(assert (= b_and!81257 (and (=> t!111569 result!79430) b_and!81269)))

(declare-fun t!111571 () Bool)

(declare-fun tb!66175 () Bool)

(assert (=> (and b!1182252 (= (toChars!3027 (transformation!2059 (h!17205 rules!4386))) (toChars!3027 (transformation!2059 (rule!3480 (h!17206 (t!111533 l!6534)))))) t!111571) tb!66175))

(declare-fun result!79432 () Bool)

(assert (= result!79432 result!79430))

(assert (=> d!338426 t!111571))

(declare-fun b_and!81271 () Bool)

(assert (= b_and!81259 (and (=> t!111571 result!79432) b_and!81271)))

(declare-fun t!111573 () Bool)

(declare-fun tb!66177 () Bool)

(assert (=> (and b!1182595 (= (toChars!3027 (transformation!2059 (rule!3480 (h!17206 (t!111533 l!6534))))) (toChars!3027 (transformation!2059 (rule!3480 (h!17206 (t!111533 l!6534)))))) t!111573) tb!66177))

(declare-fun result!79434 () Bool)

(assert (= result!79434 result!79430))

(assert (=> d!338426 t!111573))

(declare-fun b_and!81273 () Bool)

(assert (= b_and!81263 (and (=> t!111573 result!79434) b_and!81273)))

(declare-fun t!111575 () Bool)

(declare-fun tb!66179 () Bool)

(assert (=> (and b!1182606 (= (toChars!3027 (transformation!2059 (h!17205 (t!111532 rules!4386)))) (toChars!3027 (transformation!2059 (rule!3480 (h!17206 (t!111533 l!6534)))))) t!111575) tb!66179))

(declare-fun result!79436 () Bool)

(assert (= result!79436 result!79430))

(assert (=> d!338426 t!111575))

(declare-fun b_and!81275 () Bool)

(assert (= b_and!81267 (and (=> t!111575 result!79436) b_and!81275)))

(declare-fun m!1358649 () Bool)

(assert (=> d!338426 m!1358649))

(declare-fun m!1358651 () Bool)

(assert (=> d!338426 m!1358651))

(assert (=> b!1182480 d!338426))

(declare-fun d!338428 () Bool)

(declare-fun prefixMatchZipperSequence!113 (Regex!3329 BalanceConc!7758) Bool)

(declare-fun rulesRegex!84 (LexerInterface!1754 List!11828) Regex!3329)

(declare-fun ++!3026 (BalanceConc!7758 BalanceConc!7758) BalanceConc!7758)

(declare-fun singletonSeq!715 (C!6976) BalanceConc!7758)

(declare-fun apply!2580 (BalanceConc!7758 Int) C!6976)

(assert (=> d!338428 (= (separableTokensPredicate!154 thiss!27592 (h!17206 l!6534) (h!17206 (t!111533 l!6534)) rules!4386) (not (prefixMatchZipperSequence!113 (rulesRegex!84 thiss!27592 rules!4386) (++!3026 (charsOf!1092 (h!17206 l!6534)) (singletonSeq!715 (apply!2580 (charsOf!1092 (h!17206 (t!111533 l!6534))) 0))))))))

(declare-fun bs!287085 () Bool)

(assert (= bs!287085 d!338428))

(assert (=> bs!287085 m!1358335))

(declare-fun m!1358653 () Bool)

(assert (=> bs!287085 m!1358653))

(declare-fun m!1358655 () Bool)

(assert (=> bs!287085 m!1358655))

(declare-fun m!1358657 () Bool)

(assert (=> bs!287085 m!1358657))

(declare-fun m!1358659 () Bool)

(assert (=> bs!287085 m!1358659))

(declare-fun m!1358661 () Bool)

(assert (=> bs!287085 m!1358661))

(assert (=> bs!287085 m!1358335))

(assert (=> bs!287085 m!1358655))

(declare-fun m!1358663 () Bool)

(assert (=> bs!287085 m!1358663))

(assert (=> bs!287085 m!1358659))

(assert (=> bs!287085 m!1358653))

(assert (=> bs!287085 m!1358663))

(assert (=> bs!287085 m!1358657))

(assert (=> b!1182480 d!338428))

(declare-fun d!338430 () Bool)

(declare-fun lt!407079 () Int)

(assert (=> d!338430 (= lt!407079 (size!9327 (list!4350 (charsOf!1092 (h!17206 (t!111533 l!6534))))))))

(declare-fun size!9329 (Conc!3868) Int)

(assert (=> d!338430 (= lt!407079 (size!9329 (c!196857 (charsOf!1092 (h!17206 (t!111533 l!6534))))))))

(assert (=> d!338430 (= (size!9325 (charsOf!1092 (h!17206 (t!111533 l!6534)))) lt!407079)))

(declare-fun bs!287086 () Bool)

(assert (= bs!287086 d!338430))

(assert (=> bs!287086 m!1358335))

(declare-fun m!1358665 () Bool)

(assert (=> bs!287086 m!1358665))

(assert (=> bs!287086 m!1358665))

(declare-fun m!1358667 () Bool)

(assert (=> bs!287086 m!1358667))

(declare-fun m!1358669 () Bool)

(assert (=> bs!287086 m!1358669))

(assert (=> b!1182480 d!338430))

(declare-fun b!1182744 () Bool)

(declare-fun e!759385 () Bool)

(declare-fun lt!407080 () List!11829)

(declare-fun e!759383 () Int)

(assert (=> b!1182744 (= e!759385 (= (size!9326 lt!407080) e!759383))))

(declare-fun c!196918 () Bool)

(assert (=> b!1182744 (= c!196918 (<= (- i!1621 1) 0))))

(declare-fun b!1182745 () Bool)

(declare-fun call!82604 () Int)

(assert (=> b!1182745 (= e!759383 call!82604)))

(declare-fun d!338432 () Bool)

(assert (=> d!338432 e!759385))

(declare-fun res!534540 () Bool)

(assert (=> d!338432 (=> (not res!534540) (not e!759385))))

(assert (=> d!338432 (= res!534540 (= ((_ map implies) (content!1638 lt!407080) (content!1638 (t!111533 l!6534))) ((as const (InoxSet Token!3780)) true)))))

(declare-fun e!759382 () List!11829)

(assert (=> d!338432 (= lt!407080 e!759382)))

(declare-fun c!196921 () Bool)

(assert (=> d!338432 (= c!196921 ((_ is Nil!11805) (t!111533 l!6534)))))

(assert (=> d!338432 (= (drop!539 (t!111533 l!6534) (- i!1621 1)) lt!407080)))

(declare-fun b!1182746 () Bool)

(declare-fun e!759386 () List!11829)

(assert (=> b!1182746 (= e!759386 (t!111533 l!6534))))

(declare-fun b!1182747 () Bool)

(assert (=> b!1182747 (= e!759382 e!759386)))

(declare-fun c!196920 () Bool)

(assert (=> b!1182747 (= c!196920 (<= (- i!1621 1) 0))))

(declare-fun b!1182748 () Bool)

(assert (=> b!1182748 (= e!759382 Nil!11805)))

(declare-fun b!1182749 () Bool)

(assert (=> b!1182749 (= e!759386 (drop!539 (t!111533 (t!111533 l!6534)) (- (- i!1621 1) 1)))))

(declare-fun b!1182750 () Bool)

(declare-fun e!759384 () Int)

(assert (=> b!1182750 (= e!759383 e!759384)))

(declare-fun c!196919 () Bool)

(assert (=> b!1182750 (= c!196919 (>= (- i!1621 1) call!82604))))

(declare-fun bm!82599 () Bool)

(assert (=> bm!82599 (= call!82604 (size!9326 (t!111533 l!6534)))))

(declare-fun b!1182751 () Bool)

(assert (=> b!1182751 (= e!759384 0)))

(declare-fun b!1182752 () Bool)

(assert (=> b!1182752 (= e!759384 (- call!82604 (- i!1621 1)))))

(assert (= (and d!338432 c!196921) b!1182748))

(assert (= (and d!338432 (not c!196921)) b!1182747))

(assert (= (and b!1182747 c!196920) b!1182746))

(assert (= (and b!1182747 (not c!196920)) b!1182749))

(assert (= (and d!338432 res!534540) b!1182744))

(assert (= (and b!1182744 c!196918) b!1182745))

(assert (= (and b!1182744 (not c!196918)) b!1182750))

(assert (= (and b!1182750 c!196919) b!1182751))

(assert (= (and b!1182750 (not c!196919)) b!1182752))

(assert (= (or b!1182745 b!1182750 b!1182752) bm!82599))

(declare-fun m!1358671 () Bool)

(assert (=> b!1182744 m!1358671))

(declare-fun m!1358673 () Bool)

(assert (=> d!338432 m!1358673))

(declare-fun m!1358675 () Bool)

(assert (=> d!338432 m!1358675))

(declare-fun m!1358677 () Bool)

(assert (=> b!1182749 m!1358677))

(assert (=> bm!82599 m!1358455))

(assert (=> b!1182540 d!338432))

(declare-fun d!338434 () Bool)

(declare-fun isBalanced!1101 (Conc!3868) Bool)

(assert (=> d!338434 (= (inv!15628 (dynLambda!5236 (toChars!3027 (transformation!2059 (rule!3480 (h!17206 l!6534)))) (value!66738 (h!17206 l!6534)))) (isBalanced!1101 (c!196857 (dynLambda!5236 (toChars!3027 (transformation!2059 (rule!3480 (h!17206 l!6534)))) (value!66738 (h!17206 l!6534))))))))

(declare-fun bs!287087 () Bool)

(assert (= bs!287087 d!338434))

(declare-fun m!1358679 () Bool)

(assert (=> bs!287087 m!1358679))

(assert (=> tb!66165 d!338434))

(declare-fun d!338436 () Bool)

(declare-fun lt!407082 () Bool)

(declare-fun e!759388 () Bool)

(assert (=> d!338436 (= lt!407082 e!759388)))

(declare-fun res!534541 () Bool)

(assert (=> d!338436 (=> (not res!534541) (not e!759388))))

(assert (=> d!338436 (= res!534541 (= (list!4349 (_1!6893 (lex!732 Lexer!1752 rules!4386 (print!669 Lexer!1752 (singletonSeq!713 (h!17206 lt!406935)))))) (list!4349 (singletonSeq!713 (h!17206 lt!406935)))))))

(declare-fun e!759387 () Bool)

(assert (=> d!338436 (= lt!407082 e!759387)))

(declare-fun res!534543 () Bool)

(assert (=> d!338436 (=> (not res!534543) (not e!759387))))

(declare-fun lt!407081 () tuple2!12092)

(assert (=> d!338436 (= res!534543 (= (size!9324 (_1!6893 lt!407081)) 1))))

(assert (=> d!338436 (= lt!407081 (lex!732 Lexer!1752 rules!4386 (print!669 Lexer!1752 (singletonSeq!713 (h!17206 lt!406935)))))))

(assert (=> d!338436 (not (isEmpty!7116 rules!4386))))

(assert (=> d!338436 (= (rulesProduceIndividualToken!785 Lexer!1752 rules!4386 (h!17206 lt!406935)) lt!407082)))

(declare-fun b!1182753 () Bool)

(declare-fun res!534542 () Bool)

(assert (=> b!1182753 (=> (not res!534542) (not e!759387))))

(assert (=> b!1182753 (= res!534542 (= (apply!2576 (_1!6893 lt!407081) 0) (h!17206 lt!406935)))))

(declare-fun b!1182754 () Bool)

(assert (=> b!1182754 (= e!759387 (isEmpty!7119 (_2!6893 lt!407081)))))

(declare-fun b!1182755 () Bool)

(assert (=> b!1182755 (= e!759388 (isEmpty!7119 (_2!6893 (lex!732 Lexer!1752 rules!4386 (print!669 Lexer!1752 (singletonSeq!713 (h!17206 lt!406935)))))))))

(assert (= (and d!338436 res!534543) b!1182753))

(assert (= (and b!1182753 res!534542) b!1182754))

(assert (= (and d!338436 res!534541) b!1182755))

(declare-fun m!1358681 () Bool)

(assert (=> d!338436 m!1358681))

(declare-fun m!1358683 () Bool)

(assert (=> d!338436 m!1358683))

(assert (=> d!338436 m!1358153))

(assert (=> d!338436 m!1358277))

(assert (=> d!338436 m!1358277))

(assert (=> d!338436 m!1358681))

(declare-fun m!1358685 () Bool)

(assert (=> d!338436 m!1358685))

(declare-fun m!1358687 () Bool)

(assert (=> d!338436 m!1358687))

(assert (=> d!338436 m!1358277))

(assert (=> d!338436 m!1358283))

(declare-fun m!1358689 () Bool)

(assert (=> b!1182753 m!1358689))

(declare-fun m!1358691 () Bool)

(assert (=> b!1182754 m!1358691))

(assert (=> b!1182755 m!1358277))

(assert (=> b!1182755 m!1358277))

(assert (=> b!1182755 m!1358681))

(assert (=> b!1182755 m!1358681))

(assert (=> b!1182755 m!1358683))

(declare-fun m!1358693 () Bool)

(assert (=> b!1182755 m!1358693))

(assert (=> bs!287055 d!338436))

(declare-fun bs!287088 () Bool)

(declare-fun d!338438 () Bool)

(assert (= bs!287088 (and d!338438 d!338344)))

(declare-fun lambda!48727 () Int)

(assert (=> bs!287088 (= (and (= (toChars!3027 (transformation!2059 (rule!3480 (h!17206 l!6534)))) (toChars!3027 (transformation!2059 (h!17205 rules!4386)))) (= (toValue!3168 (transformation!2059 (rule!3480 (h!17206 l!6534)))) (toValue!3168 (transformation!2059 (h!17205 rules!4386))))) (= lambda!48727 lambda!48715))))

(assert (=> d!338438 true))

(assert (=> d!338438 (< (dynLambda!5232 order!7277 (toChars!3027 (transformation!2059 (rule!3480 (h!17206 l!6534))))) (dynLambda!5239 order!7279 lambda!48727))))

(assert (=> d!338438 true))

(assert (=> d!338438 (< (dynLambda!5230 order!7273 (toValue!3168 (transformation!2059 (rule!3480 (h!17206 l!6534))))) (dynLambda!5239 order!7279 lambda!48727))))

(assert (=> d!338438 (= (semiInverseModEq!743 (toChars!3027 (transformation!2059 (rule!3480 (h!17206 l!6534)))) (toValue!3168 (transformation!2059 (rule!3480 (h!17206 l!6534))))) (Forall!446 lambda!48727))))

(declare-fun bs!287089 () Bool)

(assert (= bs!287089 d!338438))

(declare-fun m!1358695 () Bool)

(assert (=> bs!287089 m!1358695))

(assert (=> d!338250 d!338438))

(declare-fun lt!407085 () Bool)

(declare-fun d!338440 () Bool)

(assert (=> d!338440 (= lt!407085 (isEmpty!7120 (list!4350 (_2!6893 (lex!732 thiss!27592 rules!4386 (print!669 thiss!27592 (singletonSeq!713 (h!17206 lt!406935))))))))))

(declare-fun isEmpty!7123 (Conc!3868) Bool)

(assert (=> d!338440 (= lt!407085 (isEmpty!7123 (c!196857 (_2!6893 (lex!732 thiss!27592 rules!4386 (print!669 thiss!27592 (singletonSeq!713 (h!17206 lt!406935))))))))))

(assert (=> d!338440 (= (isEmpty!7119 (_2!6893 (lex!732 thiss!27592 rules!4386 (print!669 thiss!27592 (singletonSeq!713 (h!17206 lt!406935)))))) lt!407085)))

(declare-fun bs!287090 () Bool)

(assert (= bs!287090 d!338440))

(declare-fun m!1358697 () Bool)

(assert (=> bs!287090 m!1358697))

(assert (=> bs!287090 m!1358697))

(declare-fun m!1358699 () Bool)

(assert (=> bs!287090 m!1358699))

(declare-fun m!1358701 () Bool)

(assert (=> bs!287090 m!1358701))

(assert (=> b!1182412 d!338440))

(declare-fun d!338442 () Bool)

(declare-fun e!759443 () Bool)

(assert (=> d!338442 e!759443))

(declare-fun res!534582 () Bool)

(assert (=> d!338442 (=> (not res!534582) (not e!759443))))

(declare-fun e!759444 () Bool)

(assert (=> d!338442 (= res!534582 e!759444)))

(declare-fun c!196929 () Bool)

(declare-fun lt!407122 () tuple2!12092)

(assert (=> d!338442 (= c!196929 (> (size!9324 (_1!6893 lt!407122)) 0))))

(declare-fun lexTailRecV2!327 (LexerInterface!1754 List!11828 BalanceConc!7758 BalanceConc!7758 BalanceConc!7758 BalanceConc!7760) tuple2!12092)

(assert (=> d!338442 (= lt!407122 (lexTailRecV2!327 thiss!27592 rules!4386 (print!669 thiss!27592 (singletonSeq!713 (h!17206 lt!406935))) (BalanceConc!7759 Empty!3868) (print!669 thiss!27592 (singletonSeq!713 (h!17206 lt!406935))) (BalanceConc!7761 Empty!3869)))))

(assert (=> d!338442 (= (lex!732 thiss!27592 rules!4386 (print!669 thiss!27592 (singletonSeq!713 (h!17206 lt!406935)))) lt!407122)))

(declare-fun b!1182822 () Bool)

(assert (=> b!1182822 (= e!759444 (= (_2!6893 lt!407122) (print!669 thiss!27592 (singletonSeq!713 (h!17206 lt!406935)))))))

(declare-fun b!1182823 () Bool)

(declare-fun res!534584 () Bool)

(assert (=> b!1182823 (=> (not res!534584) (not e!759443))))

(declare-datatypes ((tuple2!12096 0))(
  ( (tuple2!12097 (_1!6895 List!11829) (_2!6895 List!11826)) )
))
(declare-fun lexList!420 (LexerInterface!1754 List!11828 List!11826) tuple2!12096)

(assert (=> b!1182823 (= res!534584 (= (list!4349 (_1!6893 lt!407122)) (_1!6895 (lexList!420 thiss!27592 rules!4386 (list!4350 (print!669 thiss!27592 (singletonSeq!713 (h!17206 lt!406935))))))))))

(declare-fun b!1182824 () Bool)

(assert (=> b!1182824 (= e!759443 (= (list!4350 (_2!6893 lt!407122)) (_2!6895 (lexList!420 thiss!27592 rules!4386 (list!4350 (print!669 thiss!27592 (singletonSeq!713 (h!17206 lt!406935))))))))))

(declare-fun b!1182825 () Bool)

(declare-fun e!759445 () Bool)

(declare-fun isEmpty!7124 (BalanceConc!7760) Bool)

(assert (=> b!1182825 (= e!759445 (not (isEmpty!7124 (_1!6893 lt!407122))))))

(declare-fun b!1182826 () Bool)

(assert (=> b!1182826 (= e!759444 e!759445)))

(declare-fun res!534583 () Bool)

(assert (=> b!1182826 (= res!534583 (< (size!9325 (_2!6893 lt!407122)) (size!9325 (print!669 thiss!27592 (singletonSeq!713 (h!17206 lt!406935))))))))

(assert (=> b!1182826 (=> (not res!534583) (not e!759445))))

(assert (= (and d!338442 c!196929) b!1182826))

(assert (= (and d!338442 (not c!196929)) b!1182822))

(assert (= (and b!1182826 res!534583) b!1182825))

(assert (= (and d!338442 res!534582) b!1182823))

(assert (= (and b!1182823 res!534584) b!1182824))

(declare-fun m!1358885 () Bool)

(assert (=> b!1182824 m!1358885))

(assert (=> b!1182824 m!1358273))

(declare-fun m!1358887 () Bool)

(assert (=> b!1182824 m!1358887))

(assert (=> b!1182824 m!1358887))

(declare-fun m!1358889 () Bool)

(assert (=> b!1182824 m!1358889))

(declare-fun m!1358891 () Bool)

(assert (=> b!1182825 m!1358891))

(declare-fun m!1358893 () Bool)

(assert (=> b!1182826 m!1358893))

(assert (=> b!1182826 m!1358273))

(declare-fun m!1358895 () Bool)

(assert (=> b!1182826 m!1358895))

(declare-fun m!1358897 () Bool)

(assert (=> d!338442 m!1358897))

(assert (=> d!338442 m!1358273))

(assert (=> d!338442 m!1358273))

(declare-fun m!1358899 () Bool)

(assert (=> d!338442 m!1358899))

(declare-fun m!1358901 () Bool)

(assert (=> b!1182823 m!1358901))

(assert (=> b!1182823 m!1358273))

(assert (=> b!1182823 m!1358887))

(assert (=> b!1182823 m!1358887))

(assert (=> b!1182823 m!1358889))

(assert (=> b!1182412 d!338442))

(declare-fun d!338502 () Bool)

(declare-fun lt!407125 () BalanceConc!7758)

(declare-fun printList!520 (LexerInterface!1754 List!11829) List!11826)

(assert (=> d!338502 (= (list!4350 lt!407125) (printList!520 thiss!27592 (list!4349 (singletonSeq!713 (h!17206 lt!406935)))))))

(declare-fun printTailRec!502 (LexerInterface!1754 BalanceConc!7760 Int BalanceConc!7758) BalanceConc!7758)

(assert (=> d!338502 (= lt!407125 (printTailRec!502 thiss!27592 (singletonSeq!713 (h!17206 lt!406935)) 0 (BalanceConc!7759 Empty!3868)))))

(assert (=> d!338502 (= (print!669 thiss!27592 (singletonSeq!713 (h!17206 lt!406935))) lt!407125)))

(declare-fun bs!287124 () Bool)

(assert (= bs!287124 d!338502))

(declare-fun m!1358917 () Bool)

(assert (=> bs!287124 m!1358917))

(assert (=> bs!287124 m!1358277))

(assert (=> bs!287124 m!1358283))

(assert (=> bs!287124 m!1358283))

(declare-fun m!1358919 () Bool)

(assert (=> bs!287124 m!1358919))

(assert (=> bs!287124 m!1358277))

(declare-fun m!1358921 () Bool)

(assert (=> bs!287124 m!1358921))

(assert (=> b!1182412 d!338502))

(declare-fun d!338516 () Bool)

(declare-fun e!759484 () Bool)

(assert (=> d!338516 e!759484))

(declare-fun res!534587 () Bool)

(assert (=> d!338516 (=> (not res!534587) (not e!759484))))

(declare-fun lt!407128 () BalanceConc!7760)

(assert (=> d!338516 (= res!534587 (= (list!4349 lt!407128) (Cons!11805 (h!17206 lt!406935) Nil!11805)))))

(declare-fun singleton!310 (Token!3780) BalanceConc!7760)

(assert (=> d!338516 (= lt!407128 (singleton!310 (h!17206 lt!406935)))))

(assert (=> d!338516 (= (singletonSeq!713 (h!17206 lt!406935)) lt!407128)))

(declare-fun b!1182905 () Bool)

(declare-fun isBalanced!1102 (Conc!3869) Bool)

(assert (=> b!1182905 (= e!759484 (isBalanced!1102 (c!196859 lt!407128)))))

(assert (= (and d!338516 res!534587) b!1182905))

(declare-fun m!1358923 () Bool)

(assert (=> d!338516 m!1358923))

(declare-fun m!1358925 () Bool)

(assert (=> d!338516 m!1358925))

(declare-fun m!1358927 () Bool)

(assert (=> b!1182905 m!1358927))

(assert (=> b!1182412 d!338516))

(declare-fun d!338518 () Bool)

(declare-fun res!534588 () Bool)

(declare-fun e!759485 () Bool)

(assert (=> d!338518 (=> res!534588 e!759485)))

(assert (=> d!338518 (= res!534588 ((_ is Nil!11805) (list!4349 (seqFromList!1534 lt!406935))))))

(assert (=> d!338518 (= (forall!3122 (list!4349 (seqFromList!1534 lt!406935)) lambda!48711) e!759485)))

(declare-fun b!1182906 () Bool)

(declare-fun e!759486 () Bool)

(assert (=> b!1182906 (= e!759485 e!759486)))

(declare-fun res!534589 () Bool)

(assert (=> b!1182906 (=> (not res!534589) (not e!759486))))

(assert (=> b!1182906 (= res!534589 (dynLambda!5235 lambda!48711 (h!17206 (list!4349 (seqFromList!1534 lt!406935)))))))

(declare-fun b!1182907 () Bool)

(assert (=> b!1182907 (= e!759486 (forall!3122 (t!111533 (list!4349 (seqFromList!1534 lt!406935))) lambda!48711))))

(assert (= (and d!338518 (not res!534588)) b!1182906))

(assert (= (and b!1182906 res!534589) b!1182907))

(declare-fun b_lambda!35399 () Bool)

(assert (=> (not b_lambda!35399) (not b!1182906)))

(declare-fun m!1358929 () Bool)

(assert (=> b!1182906 m!1358929))

(declare-fun m!1358931 () Bool)

(assert (=> b!1182907 m!1358931))

(assert (=> d!338320 d!338518))

(declare-fun d!338520 () Bool)

(declare-fun list!4353 (Conc!3869) List!11829)

(assert (=> d!338520 (= (list!4349 (seqFromList!1534 lt!406935)) (list!4353 (c!196859 (seqFromList!1534 lt!406935))))))

(declare-fun bs!287125 () Bool)

(assert (= bs!287125 d!338520))

(declare-fun m!1358933 () Bool)

(assert (=> bs!287125 m!1358933))

(assert (=> d!338320 d!338520))

(declare-fun d!338522 () Bool)

(declare-fun lt!407131 () Bool)

(assert (=> d!338522 (= lt!407131 (forall!3122 (list!4349 (seqFromList!1534 lt!406935)) lambda!48711))))

(declare-fun forall!3126 (Conc!3869 Int) Bool)

(assert (=> d!338522 (= lt!407131 (forall!3126 (c!196859 (seqFromList!1534 lt!406935)) lambda!48711))))

(assert (=> d!338522 (= (forall!3124 (seqFromList!1534 lt!406935) lambda!48711) lt!407131)))

(declare-fun bs!287126 () Bool)

(assert (= bs!287126 d!338522))

(assert (=> bs!287126 m!1358147))

(assert (=> bs!287126 m!1358401))

(assert (=> bs!287126 m!1358401))

(assert (=> bs!287126 m!1358403))

(declare-fun m!1358935 () Bool)

(assert (=> bs!287126 m!1358935))

(assert (=> d!338320 d!338522))

(assert (=> d!338320 d!338264))

(declare-fun d!338524 () Bool)

(declare-fun lt!407132 () Bool)

(assert (=> d!338524 (= lt!407132 (isEmpty!7120 (list!4350 (_2!6893 lt!406978))))))

(assert (=> d!338524 (= lt!407132 (isEmpty!7123 (c!196857 (_2!6893 lt!406978))))))

(assert (=> d!338524 (= (isEmpty!7119 (_2!6893 lt!406978)) lt!407132)))

(declare-fun bs!287127 () Bool)

(assert (= bs!287127 d!338524))

(declare-fun m!1358937 () Bool)

(assert (=> bs!287127 m!1358937))

(assert (=> bs!287127 m!1358937))

(declare-fun m!1358939 () Bool)

(assert (=> bs!287127 m!1358939))

(declare-fun m!1358941 () Bool)

(assert (=> bs!287127 m!1358941))

(assert (=> b!1182411 d!338524))

(assert (=> d!338270 d!338264))

(assert (=> d!338270 d!338442))

(declare-fun d!338526 () Bool)

(assert (=> d!338526 (= (list!4349 (singletonSeq!713 (h!17206 lt!406935))) (list!4353 (c!196859 (singletonSeq!713 (h!17206 lt!406935)))))))

(declare-fun bs!287128 () Bool)

(assert (= bs!287128 d!338526))

(declare-fun m!1358943 () Bool)

(assert (=> bs!287128 m!1358943))

(assert (=> d!338270 d!338526))

(assert (=> d!338270 d!338516))

(assert (=> d!338270 d!338502))

(declare-fun d!338528 () Bool)

(assert (=> d!338528 (= (list!4349 (_1!6893 (lex!732 thiss!27592 rules!4386 (print!669 thiss!27592 (singletonSeq!713 (h!17206 lt!406935)))))) (list!4353 (c!196859 (_1!6893 (lex!732 thiss!27592 rules!4386 (print!669 thiss!27592 (singletonSeq!713 (h!17206 lt!406935))))))))))

(declare-fun bs!287129 () Bool)

(assert (= bs!287129 d!338528))

(declare-fun m!1358945 () Bool)

(assert (=> bs!287129 m!1358945))

(assert (=> d!338270 d!338528))

(declare-fun d!338530 () Bool)

(declare-fun lt!407135 () Int)

(assert (=> d!338530 (= lt!407135 (size!9326 (list!4349 (_1!6893 lt!406978))))))

(declare-fun size!9331 (Conc!3869) Int)

(assert (=> d!338530 (= lt!407135 (size!9331 (c!196859 (_1!6893 lt!406978))))))

(assert (=> d!338530 (= (size!9324 (_1!6893 lt!406978)) lt!407135)))

(declare-fun bs!287130 () Bool)

(assert (= bs!287130 d!338530))

(declare-fun m!1358947 () Bool)

(assert (=> bs!287130 m!1358947))

(assert (=> bs!287130 m!1358947))

(declare-fun m!1358949 () Bool)

(assert (=> bs!287130 m!1358949))

(declare-fun m!1358951 () Bool)

(assert (=> bs!287130 m!1358951))

(assert (=> d!338270 d!338530))

(declare-fun d!338532 () Bool)

(declare-fun c!196932 () Bool)

(assert (=> d!338532 (= c!196932 ((_ is Nil!11805) lt!407021))))

(declare-fun e!759489 () (InoxSet Token!3780))

(assert (=> d!338532 (= (content!1638 lt!407021) e!759489)))

(declare-fun b!1182912 () Bool)

(assert (=> b!1182912 (= e!759489 ((as const (Array Token!3780 Bool)) false))))

(declare-fun b!1182913 () Bool)

(assert (=> b!1182913 (= e!759489 ((_ map or) (store ((as const (Array Token!3780 Bool)) false) (h!17206 lt!407021) true) (content!1638 (t!111533 lt!407021))))))

(assert (= (and d!338532 c!196932) b!1182912))

(assert (= (and d!338532 (not c!196932)) b!1182913))

(declare-fun m!1358953 () Bool)

(assert (=> b!1182913 m!1358953))

(declare-fun m!1358955 () Bool)

(assert (=> b!1182913 m!1358955))

(assert (=> d!338316 d!338532))

(declare-fun d!338534 () Bool)

(declare-fun c!196933 () Bool)

(assert (=> d!338534 (= c!196933 ((_ is Nil!11805) l!6534))))

(declare-fun e!759490 () (InoxSet Token!3780))

(assert (=> d!338534 (= (content!1638 l!6534) e!759490)))

(declare-fun b!1182914 () Bool)

(assert (=> b!1182914 (= e!759490 ((as const (Array Token!3780 Bool)) false))))

(declare-fun b!1182915 () Bool)

(assert (=> b!1182915 (= e!759490 ((_ map or) (store ((as const (Array Token!3780 Bool)) false) (h!17206 l!6534) true) (content!1638 (t!111533 l!6534))))))

(assert (= (and d!338534 c!196933) b!1182914))

(assert (= (and d!338534 (not c!196933)) b!1182915))

(declare-fun m!1358957 () Bool)

(assert (=> b!1182915 m!1358957))

(assert (=> b!1182915 m!1358675))

(assert (=> d!338316 d!338534))

(declare-fun d!338536 () Bool)

(declare-fun lt!407138 () Token!3780)

(declare-fun apply!2581 (List!11829 Int) Token!3780)

(assert (=> d!338536 (= lt!407138 (apply!2581 (list!4349 (_1!6893 lt!406978)) 0))))

(declare-fun apply!2582 (Conc!3869 Int) Token!3780)

(assert (=> d!338536 (= lt!407138 (apply!2582 (c!196859 (_1!6893 lt!406978)) 0))))

(declare-fun e!759493 () Bool)

(assert (=> d!338536 e!759493))

(declare-fun res!534592 () Bool)

(assert (=> d!338536 (=> (not res!534592) (not e!759493))))

(assert (=> d!338536 (= res!534592 (<= 0 0))))

(assert (=> d!338536 (= (apply!2576 (_1!6893 lt!406978) 0) lt!407138)))

(declare-fun b!1182918 () Bool)

(assert (=> b!1182918 (= e!759493 (< 0 (size!9324 (_1!6893 lt!406978))))))

(assert (= (and d!338536 res!534592) b!1182918))

(assert (=> d!338536 m!1358947))

(assert (=> d!338536 m!1358947))

(declare-fun m!1358959 () Bool)

(assert (=> d!338536 m!1358959))

(declare-fun m!1358961 () Bool)

(assert (=> d!338536 m!1358961))

(assert (=> b!1182918 m!1358279))

(assert (=> b!1182410 d!338536))

(declare-fun d!338538 () Bool)

(assert (=> d!338538 (= (inv!15620 (tag!2321 (h!17205 (t!111532 rules!4386)))) (= (mod (str.len (value!66737 (tag!2321 (h!17205 (t!111532 rules!4386))))) 2) 0))))

(assert (=> b!1182605 d!338538))

(declare-fun d!338540 () Bool)

(declare-fun res!534593 () Bool)

(declare-fun e!759494 () Bool)

(assert (=> d!338540 (=> (not res!534593) (not e!759494))))

(assert (=> d!338540 (= res!534593 (semiInverseModEq!743 (toChars!3027 (transformation!2059 (h!17205 (t!111532 rules!4386)))) (toValue!3168 (transformation!2059 (h!17205 (t!111532 rules!4386))))))))

(assert (=> d!338540 (= (inv!15623 (transformation!2059 (h!17205 (t!111532 rules!4386)))) e!759494)))

(declare-fun b!1182919 () Bool)

(assert (=> b!1182919 (= e!759494 (equivClasses!710 (toChars!3027 (transformation!2059 (h!17205 (t!111532 rules!4386)))) (toValue!3168 (transformation!2059 (h!17205 (t!111532 rules!4386))))))))

(assert (= (and d!338540 res!534593) b!1182919))

(declare-fun m!1358963 () Bool)

(assert (=> d!338540 m!1358963))

(declare-fun m!1358965 () Bool)

(assert (=> b!1182919 m!1358965))

(assert (=> b!1182605 d!338540))

(declare-fun d!338542 () Bool)

(assert (=> d!338542 (= (isEmpty!7120 (originalCharacters!2613 (h!17206 l!6534))) ((_ is Nil!11802) (originalCharacters!2613 (h!17206 l!6534))))))

(assert (=> d!338318 d!338542))

(declare-fun d!338544 () Bool)

(assert (=> d!338544 (= (inv!15620 (tag!2321 (rule!3480 (h!17206 (t!111533 l!6534))))) (= (mod (str.len (value!66737 (tag!2321 (rule!3480 (h!17206 (t!111533 l!6534)))))) 2) 0))))

(assert (=> b!1182594 d!338544))

(declare-fun d!338546 () Bool)

(declare-fun res!534594 () Bool)

(declare-fun e!759495 () Bool)

(assert (=> d!338546 (=> (not res!534594) (not e!759495))))

(assert (=> d!338546 (= res!534594 (semiInverseModEq!743 (toChars!3027 (transformation!2059 (rule!3480 (h!17206 (t!111533 l!6534))))) (toValue!3168 (transformation!2059 (rule!3480 (h!17206 (t!111533 l!6534)))))))))

(assert (=> d!338546 (= (inv!15623 (transformation!2059 (rule!3480 (h!17206 (t!111533 l!6534))))) e!759495)))

(declare-fun b!1182920 () Bool)

(assert (=> b!1182920 (= e!759495 (equivClasses!710 (toChars!3027 (transformation!2059 (rule!3480 (h!17206 (t!111533 l!6534))))) (toValue!3168 (transformation!2059 (rule!3480 (h!17206 (t!111533 l!6534)))))))))

(assert (= (and d!338546 res!534594) b!1182920))

(declare-fun m!1358967 () Bool)

(assert (=> d!338546 m!1358967))

(declare-fun m!1358969 () Bool)

(assert (=> b!1182920 m!1358969))

(assert (=> b!1182594 d!338546))

(assert (=> b!1182330 d!338422))

(declare-fun d!338548 () Bool)

(declare-fun lt!407139 () Int)

(assert (=> d!338548 (>= lt!407139 0)))

(declare-fun e!759496 () Int)

(assert (=> d!338548 (= lt!407139 e!759496)))

(declare-fun c!196934 () Bool)

(assert (=> d!338548 (= c!196934 ((_ is Nil!11805) lt!407021))))

(assert (=> d!338548 (= (size!9326 lt!407021) lt!407139)))

(declare-fun b!1182921 () Bool)

(assert (=> b!1182921 (= e!759496 0)))

(declare-fun b!1182922 () Bool)

(assert (=> b!1182922 (= e!759496 (+ 1 (size!9326 (t!111533 lt!407021))))))

(assert (= (and d!338548 c!196934) b!1182921))

(assert (= (and d!338548 (not c!196934)) b!1182922))

(declare-fun m!1358971 () Bool)

(assert (=> b!1182922 m!1358971))

(assert (=> b!1182535 d!338548))

(declare-fun d!338550 () Bool)

(declare-fun c!196937 () Bool)

(assert (=> d!338550 (= c!196937 ((_ is Node!3868) (c!196857 (dynLambda!5236 (toChars!3027 (transformation!2059 (rule!3480 (h!17206 l!6534)))) (value!66738 (h!17206 l!6534))))))))

(declare-fun e!759501 () Bool)

(assert (=> d!338550 (= (inv!15627 (c!196857 (dynLambda!5236 (toChars!3027 (transformation!2059 (rule!3480 (h!17206 l!6534)))) (value!66738 (h!17206 l!6534))))) e!759501)))

(declare-fun b!1182929 () Bool)

(declare-fun inv!15631 (Conc!3868) Bool)

(assert (=> b!1182929 (= e!759501 (inv!15631 (c!196857 (dynLambda!5236 (toChars!3027 (transformation!2059 (rule!3480 (h!17206 l!6534)))) (value!66738 (h!17206 l!6534))))))))

(declare-fun b!1182930 () Bool)

(declare-fun e!759502 () Bool)

(assert (=> b!1182930 (= e!759501 e!759502)))

(declare-fun res!534597 () Bool)

(assert (=> b!1182930 (= res!534597 (not ((_ is Leaf!5928) (c!196857 (dynLambda!5236 (toChars!3027 (transformation!2059 (rule!3480 (h!17206 l!6534)))) (value!66738 (h!17206 l!6534)))))))))

(assert (=> b!1182930 (=> res!534597 e!759502)))

(declare-fun b!1182931 () Bool)

(declare-fun inv!15632 (Conc!3868) Bool)

(assert (=> b!1182931 (= e!759502 (inv!15632 (c!196857 (dynLambda!5236 (toChars!3027 (transformation!2059 (rule!3480 (h!17206 l!6534)))) (value!66738 (h!17206 l!6534))))))))

(assert (= (and d!338550 c!196937) b!1182929))

(assert (= (and d!338550 (not c!196937)) b!1182930))

(assert (= (and b!1182930 (not res!534597)) b!1182931))

(declare-fun m!1358973 () Bool)

(assert (=> b!1182929 m!1358973))

(declare-fun m!1358975 () Bool)

(assert (=> b!1182931 m!1358975))

(assert (=> b!1182554 d!338550))

(declare-fun b!1182932 () Bool)

(declare-fun res!534598 () Bool)

(declare-fun e!759505 () Bool)

(assert (=> b!1182932 (=> res!534598 e!759505)))

(assert (=> b!1182932 (= res!534598 (not ((_ is IntegerValue!6377) (value!66738 (h!17206 (t!111533 l!6534))))))))

(declare-fun e!759504 () Bool)

(assert (=> b!1182932 (= e!759504 e!759505)))

(declare-fun b!1182933 () Bool)

(assert (=> b!1182933 (= e!759505 (inv!15 (value!66738 (h!17206 (t!111533 l!6534)))))))

(declare-fun b!1182934 () Bool)

(declare-fun e!759503 () Bool)

(assert (=> b!1182934 (= e!759503 (inv!16 (value!66738 (h!17206 (t!111533 l!6534)))))))

(declare-fun b!1182935 () Bool)

(assert (=> b!1182935 (= e!759503 e!759504)))

(declare-fun c!196938 () Bool)

(assert (=> b!1182935 (= c!196938 ((_ is IntegerValue!6376) (value!66738 (h!17206 (t!111533 l!6534)))))))

(declare-fun b!1182936 () Bool)

(assert (=> b!1182936 (= e!759504 (inv!17 (value!66738 (h!17206 (t!111533 l!6534)))))))

(declare-fun d!338552 () Bool)

(declare-fun c!196939 () Bool)

(assert (=> d!338552 (= c!196939 ((_ is IntegerValue!6375) (value!66738 (h!17206 (t!111533 l!6534)))))))

(assert (=> d!338552 (= (inv!21 (value!66738 (h!17206 (t!111533 l!6534)))) e!759503)))

(assert (= (and d!338552 c!196939) b!1182934))

(assert (= (and d!338552 (not c!196939)) b!1182935))

(assert (= (and b!1182935 c!196938) b!1182936))

(assert (= (and b!1182935 (not c!196938)) b!1182932))

(assert (= (and b!1182932 (not res!534598)) b!1182933))

(declare-fun m!1358977 () Bool)

(assert (=> b!1182933 m!1358977))

(declare-fun m!1358979 () Bool)

(assert (=> b!1182934 m!1358979))

(declare-fun m!1358981 () Bool)

(assert (=> b!1182936 m!1358981))

(assert (=> b!1182593 d!338552))

(declare-fun bs!287131 () Bool)

(declare-fun d!338554 () Bool)

(assert (= bs!287131 (and d!338554 d!338334)))

(declare-fun lambda!48731 () Int)

(assert (=> bs!287131 (= lambda!48731 lambda!48712)))

(declare-fun bs!287132 () Bool)

(assert (= bs!287132 (and d!338554 b!1182257)))

(assert (=> bs!287132 (= (= thiss!27592 Lexer!1752) (= lambda!48731 lambda!48691))))

(declare-fun bs!287133 () Bool)

(assert (= bs!287133 (and d!338554 d!338308)))

(assert (=> bs!287133 (= lambda!48731 lambda!48706)))

(declare-fun bs!287134 () Bool)

(assert (= bs!287134 (and d!338554 d!338252)))

(assert (=> bs!287134 (= lambda!48731 lambda!48702)))

(declare-fun bs!287135 () Bool)

(assert (= bs!287135 (and d!338554 d!338266)))

(assert (=> bs!287135 (= lambda!48731 lambda!48703)))

(declare-fun bs!287136 () Bool)

(assert (= bs!287136 (and d!338554 d!338320)))

(assert (=> bs!287136 (= lambda!48731 lambda!48711)))

(declare-fun b!1182941 () Bool)

(declare-fun e!759510 () Bool)

(assert (=> b!1182941 (= e!759510 true)))

(declare-fun b!1182940 () Bool)

(declare-fun e!759509 () Bool)

(assert (=> b!1182940 (= e!759509 e!759510)))

(declare-fun b!1182939 () Bool)

(declare-fun e!759508 () Bool)

(assert (=> b!1182939 (= e!759508 e!759509)))

(assert (=> d!338554 e!759508))

(assert (= b!1182940 b!1182941))

(assert (= b!1182939 b!1182940))

(assert (= (and d!338554 ((_ is Cons!11804) rules!4386)) b!1182939))

(assert (=> b!1182941 (< (dynLambda!5230 order!7273 (toValue!3168 (transformation!2059 (h!17205 rules!4386)))) (dynLambda!5231 order!7275 lambda!48731))))

(assert (=> b!1182941 (< (dynLambda!5232 order!7277 (toChars!3027 (transformation!2059 (h!17205 rules!4386)))) (dynLambda!5231 order!7275 lambda!48731))))

(assert (=> d!338554 true))

(declare-fun lt!407140 () Bool)

(assert (=> d!338554 (= lt!407140 (forall!3122 (t!111533 l!6534) lambda!48731))))

(declare-fun e!759507 () Bool)

(assert (=> d!338554 (= lt!407140 e!759507)))

(declare-fun res!534599 () Bool)

(assert (=> d!338554 (=> res!534599 e!759507)))

(assert (=> d!338554 (= res!534599 (not ((_ is Cons!11805) (t!111533 l!6534))))))

(assert (=> d!338554 (not (isEmpty!7116 rules!4386))))

(assert (=> d!338554 (= (rulesProduceEachTokenIndividuallyList!620 thiss!27592 rules!4386 (t!111533 l!6534)) lt!407140)))

(declare-fun b!1182937 () Bool)

(declare-fun e!759506 () Bool)

(assert (=> b!1182937 (= e!759507 e!759506)))

(declare-fun res!534600 () Bool)

(assert (=> b!1182937 (=> (not res!534600) (not e!759506))))

(assert (=> b!1182937 (= res!534600 (rulesProduceIndividualToken!785 thiss!27592 rules!4386 (h!17206 (t!111533 l!6534))))))

(declare-fun b!1182938 () Bool)

(assert (=> b!1182938 (= e!759506 (rulesProduceEachTokenIndividuallyList!620 thiss!27592 rules!4386 (t!111533 (t!111533 l!6534))))))

(assert (= (and d!338554 (not res!534599)) b!1182937))

(assert (= (and b!1182937 res!534600) b!1182938))

(declare-fun m!1358983 () Bool)

(assert (=> d!338554 m!1358983))

(assert (=> d!338554 m!1358153))

(assert (=> b!1182937 m!1358341))

(declare-fun m!1358985 () Bool)

(assert (=> b!1182938 m!1358985))

(assert (=> b!1182331 d!338554))

(declare-fun d!338556 () Bool)

(declare-fun res!534601 () Bool)

(declare-fun e!759511 () Bool)

(assert (=> d!338556 (=> (not res!534601) (not e!759511))))

(assert (=> d!338556 (= res!534601 (not (isEmpty!7120 (originalCharacters!2613 (h!17206 (t!111533 l!6534))))))))

(assert (=> d!338556 (= (inv!15624 (h!17206 (t!111533 l!6534))) e!759511)))

(declare-fun b!1182942 () Bool)

(declare-fun res!534602 () Bool)

(assert (=> b!1182942 (=> (not res!534602) (not e!759511))))

(assert (=> b!1182942 (= res!534602 (= (originalCharacters!2613 (h!17206 (t!111533 l!6534))) (list!4350 (dynLambda!5236 (toChars!3027 (transformation!2059 (rule!3480 (h!17206 (t!111533 l!6534))))) (value!66738 (h!17206 (t!111533 l!6534)))))))))

(declare-fun b!1182943 () Bool)

(assert (=> b!1182943 (= e!759511 (= (size!9319 (h!17206 (t!111533 l!6534))) (size!9327 (originalCharacters!2613 (h!17206 (t!111533 l!6534))))))))

(assert (= (and d!338556 res!534601) b!1182942))

(assert (= (and b!1182942 res!534602) b!1182943))

(declare-fun b_lambda!35401 () Bool)

(assert (=> (not b_lambda!35401) (not b!1182942)))

(assert (=> b!1182942 t!111569))

(declare-fun b_and!81301 () Bool)

(assert (= b_and!81269 (and (=> t!111569 result!79430) b_and!81301)))

(assert (=> b!1182942 t!111571))

(declare-fun b_and!81303 () Bool)

(assert (= b_and!81271 (and (=> t!111571 result!79432) b_and!81303)))

(assert (=> b!1182942 t!111573))

(declare-fun b_and!81305 () Bool)

(assert (= b_and!81273 (and (=> t!111573 result!79434) b_and!81305)))

(assert (=> b!1182942 t!111575))

(declare-fun b_and!81307 () Bool)

(assert (= b_and!81275 (and (=> t!111575 result!79436) b_and!81307)))

(declare-fun m!1358987 () Bool)

(assert (=> d!338556 m!1358987))

(assert (=> b!1182942 m!1358651))

(assert (=> b!1182942 m!1358651))

(declare-fun m!1358989 () Bool)

(assert (=> b!1182942 m!1358989))

(declare-fun m!1358991 () Bool)

(assert (=> b!1182943 m!1358991))

(assert (=> b!1182592 d!338556))

(declare-fun d!338558 () Bool)

(assert (=> d!338558 true))

(declare-fun lambda!48734 () Int)

(declare-fun order!7285 () Int)

(declare-fun dynLambda!5240 (Int Int) Int)

(assert (=> d!338558 (< (dynLambda!5230 order!7273 (toValue!3168 (transformation!2059 (h!17205 rules!4386)))) (dynLambda!5240 order!7285 lambda!48734))))

(declare-fun Forall2!356 (Int) Bool)

(assert (=> d!338558 (= (equivClasses!710 (toChars!3027 (transformation!2059 (h!17205 rules!4386))) (toValue!3168 (transformation!2059 (h!17205 rules!4386)))) (Forall2!356 lambda!48734))))

(declare-fun bs!287137 () Bool)

(assert (= bs!287137 d!338558))

(declare-fun m!1358993 () Bool)

(assert (=> bs!287137 m!1358993))

(assert (=> b!1182482 d!338558))

(declare-fun bs!287138 () Bool)

(declare-fun d!338560 () Bool)

(assert (= bs!287138 (and d!338560 d!338334)))

(declare-fun lambda!48735 () Int)

(assert (=> bs!287138 (= lambda!48735 lambda!48712)))

(declare-fun bs!287139 () Bool)

(assert (= bs!287139 (and d!338560 b!1182257)))

(assert (=> bs!287139 (= (= thiss!27592 Lexer!1752) (= lambda!48735 lambda!48691))))

(declare-fun bs!287140 () Bool)

(assert (= bs!287140 (and d!338560 d!338308)))

(assert (=> bs!287140 (= lambda!48735 lambda!48706)))

(declare-fun bs!287141 () Bool)

(assert (= bs!287141 (and d!338560 d!338252)))

(assert (=> bs!287141 (= lambda!48735 lambda!48702)))

(declare-fun bs!287142 () Bool)

(assert (= bs!287142 (and d!338560 d!338266)))

(assert (=> bs!287142 (= lambda!48735 lambda!48703)))

(declare-fun bs!287143 () Bool)

(assert (= bs!287143 (and d!338560 d!338320)))

(assert (=> bs!287143 (= lambda!48735 lambda!48711)))

(declare-fun bs!287144 () Bool)

(assert (= bs!287144 (and d!338560 d!338554)))

(assert (=> bs!287144 (= lambda!48735 lambda!48731)))

(declare-fun b!1182952 () Bool)

(declare-fun e!759518 () Bool)

(assert (=> b!1182952 (= e!759518 true)))

(declare-fun b!1182951 () Bool)

(declare-fun e!759517 () Bool)

(assert (=> b!1182951 (= e!759517 e!759518)))

(declare-fun b!1182950 () Bool)

(declare-fun e!759516 () Bool)

(assert (=> b!1182950 (= e!759516 e!759517)))

(assert (=> d!338560 e!759516))

(assert (= b!1182951 b!1182952))

(assert (= b!1182950 b!1182951))

(assert (= (and d!338560 ((_ is Cons!11804) rules!4386)) b!1182950))

(assert (=> b!1182952 (< (dynLambda!5230 order!7273 (toValue!3168 (transformation!2059 (h!17205 rules!4386)))) (dynLambda!5231 order!7275 lambda!48735))))

(assert (=> b!1182952 (< (dynLambda!5232 order!7277 (toChars!3027 (transformation!2059 (h!17205 rules!4386)))) (dynLambda!5231 order!7275 lambda!48735))))

(assert (=> d!338560 true))

(declare-fun lt!407141 () Bool)

(assert (=> d!338560 (= lt!407141 (forall!3122 (list!4349 (seqFromList!1534 lt!406935)) lambda!48735))))

(declare-fun e!759515 () Bool)

(assert (=> d!338560 (= lt!407141 e!759515)))

(declare-fun res!534605 () Bool)

(assert (=> d!338560 (=> res!534605 e!759515)))

(assert (=> d!338560 (= res!534605 (not ((_ is Cons!11805) (list!4349 (seqFromList!1534 lt!406935)))))))

(assert (=> d!338560 (not (isEmpty!7116 rules!4386))))

(assert (=> d!338560 (= (rulesProduceEachTokenIndividuallyList!620 thiss!27592 rules!4386 (list!4349 (seqFromList!1534 lt!406935))) lt!407141)))

(declare-fun b!1182948 () Bool)

(declare-fun e!759514 () Bool)

(assert (=> b!1182948 (= e!759515 e!759514)))

(declare-fun res!534606 () Bool)

(assert (=> b!1182948 (=> (not res!534606) (not e!759514))))

(assert (=> b!1182948 (= res!534606 (rulesProduceIndividualToken!785 thiss!27592 rules!4386 (h!17206 (list!4349 (seqFromList!1534 lt!406935)))))))

(declare-fun b!1182949 () Bool)

(assert (=> b!1182949 (= e!759514 (rulesProduceEachTokenIndividuallyList!620 thiss!27592 rules!4386 (t!111533 (list!4349 (seqFromList!1534 lt!406935)))))))

(assert (= (and d!338560 (not res!534605)) b!1182948))

(assert (= (and b!1182948 res!534606) b!1182949))

(assert (=> d!338560 m!1358401))

(declare-fun m!1358995 () Bool)

(assert (=> d!338560 m!1358995))

(assert (=> d!338560 m!1358153))

(declare-fun m!1358997 () Bool)

(assert (=> b!1182948 m!1358997))

(declare-fun m!1358999 () Bool)

(assert (=> b!1182949 m!1358999))

(assert (=> b!1182557 d!338560))

(assert (=> b!1182557 d!338520))

(declare-fun d!338562 () Bool)

(declare-fun lt!407144 () Int)

(assert (=> d!338562 (>= lt!407144 0)))

(declare-fun e!759521 () Int)

(assert (=> d!338562 (= lt!407144 e!759521)))

(declare-fun c!196942 () Bool)

(assert (=> d!338562 (= c!196942 ((_ is Nil!11802) (originalCharacters!2613 (h!17206 l!6534))))))

(assert (=> d!338562 (= (size!9327 (originalCharacters!2613 (h!17206 l!6534))) lt!407144)))

(declare-fun b!1182957 () Bool)

(assert (=> b!1182957 (= e!759521 0)))

(declare-fun b!1182958 () Bool)

(assert (=> b!1182958 (= e!759521 (+ 1 (size!9327 (t!111530 (originalCharacters!2613 (h!17206 l!6534))))))))

(assert (= (and d!338562 c!196942) b!1182957))

(assert (= (and d!338562 (not c!196942)) b!1182958))

(declare-fun m!1359001 () Bool)

(assert (=> b!1182958 m!1359001))

(assert (=> b!1182549 d!338562))

(declare-fun d!338564 () Bool)

(declare-fun e!759524 () Bool)

(assert (=> d!338564 e!759524))

(declare-fun res!534609 () Bool)

(assert (=> d!338564 (=> (not res!534609) (not e!759524))))

(declare-fun lt!407147 () BalanceConc!7760)

(assert (=> d!338564 (= res!534609 (= (list!4349 lt!407147) lt!406935))))

(declare-fun fromList!322 (List!11829) Conc!3869)

(assert (=> d!338564 (= lt!407147 (BalanceConc!7761 (fromList!322 lt!406935)))))

(assert (=> d!338564 (= (fromListB!681 lt!406935) lt!407147)))

(declare-fun b!1182961 () Bool)

(assert (=> b!1182961 (= e!759524 (isBalanced!1102 (fromList!322 lt!406935)))))

(assert (= (and d!338564 res!534609) b!1182961))

(declare-fun m!1359003 () Bool)

(assert (=> d!338564 m!1359003))

(declare-fun m!1359005 () Bool)

(assert (=> d!338564 m!1359005))

(assert (=> b!1182961 m!1359005))

(assert (=> b!1182961 m!1359005))

(declare-fun m!1359007 () Bool)

(assert (=> b!1182961 m!1359007))

(assert (=> d!338322 d!338564))

(assert (=> b!1182495 d!338252))

(declare-fun d!338566 () Bool)

(declare-fun list!4354 (Conc!3868) List!11826)

(assert (=> d!338566 (= (list!4350 (dynLambda!5236 (toChars!3027 (transformation!2059 (rule!3480 (h!17206 l!6534)))) (value!66738 (h!17206 l!6534)))) (list!4354 (c!196857 (dynLambda!5236 (toChars!3027 (transformation!2059 (rule!3480 (h!17206 l!6534)))) (value!66738 (h!17206 l!6534))))))))

(declare-fun bs!287145 () Bool)

(assert (= bs!287145 d!338566))

(declare-fun m!1359009 () Bool)

(assert (=> bs!287145 m!1359009))

(assert (=> b!1182548 d!338566))

(declare-fun b!1182963 () Bool)

(declare-fun e!759525 () Bool)

(declare-fun e!759527 () Bool)

(assert (=> b!1182963 (= e!759525 e!759527)))

(declare-fun res!534610 () Bool)

(assert (=> b!1182963 (=> res!534610 e!759527)))

(declare-fun e!759528 () Bool)

(assert (=> b!1182963 (= res!534610 e!759528)))

(declare-fun res!534613 () Bool)

(assert (=> b!1182963 (=> (not res!534613) (not e!759528))))

(assert (=> b!1182963 (= res!534613 (= (h!17206 lt!406935) (h!17206 (t!111533 l!6534))))))

(declare-fun d!338568 () Bool)

(declare-fun res!534611 () Bool)

(declare-fun e!759526 () Bool)

(assert (=> d!338568 (=> res!534611 e!759526)))

(assert (=> d!338568 (= res!534611 ((_ is Nil!11805) lt!406935))))

(assert (=> d!338568 (= (subseq!315 lt!406935 (t!111533 l!6534)) e!759526)))

(declare-fun b!1182965 () Bool)

(assert (=> b!1182965 (= e!759527 (subseq!315 lt!406935 (t!111533 (t!111533 l!6534))))))

(declare-fun b!1182964 () Bool)

(assert (=> b!1182964 (= e!759528 (subseq!315 (t!111533 lt!406935) (t!111533 (t!111533 l!6534))))))

(declare-fun b!1182962 () Bool)

(assert (=> b!1182962 (= e!759526 e!759525)))

(declare-fun res!534612 () Bool)

(assert (=> b!1182962 (=> (not res!534612) (not e!759525))))

(assert (=> b!1182962 (= res!534612 ((_ is Cons!11805) (t!111533 l!6534)))))

(assert (= (and d!338568 (not res!534611)) b!1182962))

(assert (= (and b!1182962 res!534612) b!1182963))

(assert (= (and b!1182963 res!534613) b!1182964))

(assert (= (and b!1182963 (not res!534610)) b!1182965))

(declare-fun m!1359011 () Bool)

(assert (=> b!1182965 m!1359011))

(declare-fun m!1359013 () Bool)

(assert (=> b!1182964 m!1359013))

(assert (=> b!1182516 d!338568))

(assert (=> b!1182494 d!338270))

(declare-fun b!1182967 () Bool)

(declare-fun e!759529 () Bool)

(declare-fun e!759531 () Bool)

(assert (=> b!1182967 (= e!759529 e!759531)))

(declare-fun res!534614 () Bool)

(assert (=> b!1182967 (=> res!534614 e!759531)))

(declare-fun e!759532 () Bool)

(assert (=> b!1182967 (= res!534614 e!759532)))

(declare-fun res!534617 () Bool)

(assert (=> b!1182967 (=> (not res!534617) (not e!759532))))

(assert (=> b!1182967 (= res!534617 (= (h!17206 (t!111533 lt!406935)) (h!17206 (t!111533 l!6534))))))

(declare-fun d!338570 () Bool)

(declare-fun res!534615 () Bool)

(declare-fun e!759530 () Bool)

(assert (=> d!338570 (=> res!534615 e!759530)))

(assert (=> d!338570 (= res!534615 ((_ is Nil!11805) (t!111533 lt!406935)))))

(assert (=> d!338570 (= (subseq!315 (t!111533 lt!406935) (t!111533 l!6534)) e!759530)))

(declare-fun b!1182969 () Bool)

(assert (=> b!1182969 (= e!759531 (subseq!315 (t!111533 lt!406935) (t!111533 (t!111533 l!6534))))))

(declare-fun b!1182968 () Bool)

(assert (=> b!1182968 (= e!759532 (subseq!315 (t!111533 (t!111533 lt!406935)) (t!111533 (t!111533 l!6534))))))

(declare-fun b!1182966 () Bool)

(assert (=> b!1182966 (= e!759530 e!759529)))

(declare-fun res!534616 () Bool)

(assert (=> b!1182966 (=> (not res!534616) (not e!759529))))

(assert (=> b!1182966 (= res!534616 ((_ is Cons!11805) (t!111533 l!6534)))))

(assert (= (and d!338570 (not res!534615)) b!1182966))

(assert (= (and b!1182966 res!534616) b!1182967))

(assert (= (and b!1182967 res!534617) b!1182968))

(assert (= (and b!1182967 (not res!534614)) b!1182969))

(assert (=> b!1182969 m!1359013))

(declare-fun m!1359015 () Bool)

(assert (=> b!1182968 m!1359015))

(assert (=> b!1182515 d!338570))

(declare-fun d!338572 () Bool)

(declare-fun res!534622 () Bool)

(declare-fun e!759537 () Bool)

(assert (=> d!338572 (=> res!534622 e!759537)))

(assert (=> d!338572 (= res!534622 ((_ is Nil!11804) rules!4386))))

(assert (=> d!338572 (= (noDuplicateTag!731 thiss!27592 rules!4386 Nil!11807) e!759537)))

(declare-fun b!1182974 () Bool)

(declare-fun e!759538 () Bool)

(assert (=> b!1182974 (= e!759537 e!759538)))

(declare-fun res!534623 () Bool)

(assert (=> b!1182974 (=> (not res!534623) (not e!759538))))

(declare-fun contains!2018 (List!11831 String!14293) Bool)

(assert (=> b!1182974 (= res!534623 (not (contains!2018 Nil!11807 (tag!2321 (h!17205 rules!4386)))))))

(declare-fun b!1182975 () Bool)

(assert (=> b!1182975 (= e!759538 (noDuplicateTag!731 thiss!27592 (t!111532 rules!4386) (Cons!11807 (tag!2321 (h!17205 rules!4386)) Nil!11807)))))

(assert (= (and d!338572 (not res!534622)) b!1182974))

(assert (= (and b!1182974 res!534623) b!1182975))

(declare-fun m!1359017 () Bool)

(assert (=> b!1182974 m!1359017))

(declare-fun m!1359019 () Bool)

(assert (=> b!1182975 m!1359019))

(assert (=> b!1182420 d!338572))

(declare-fun d!338574 () Bool)

(assert (=> d!338574 true))

(declare-fun lt!407150 () Bool)

(declare-fun rulesValidInductive!649 (LexerInterface!1754 List!11828) Bool)

(assert (=> d!338574 (= lt!407150 (rulesValidInductive!649 thiss!27592 rules!4386))))

(declare-fun lambda!48738 () Int)

(declare-fun forall!3128 (List!11828 Int) Bool)

(assert (=> d!338574 (= lt!407150 (forall!3128 rules!4386 lambda!48738))))

(assert (=> d!338574 (= (rulesValid!731 thiss!27592 rules!4386) lt!407150)))

(declare-fun bs!287146 () Bool)

(assert (= bs!287146 d!338574))

(declare-fun m!1359021 () Bool)

(assert (=> bs!287146 m!1359021))

(declare-fun m!1359023 () Bool)

(assert (=> bs!287146 m!1359023))

(assert (=> d!338286 d!338574))

(declare-fun d!338576 () Bool)

(declare-fun charsToBigInt!0 (List!11827 Int) Int)

(assert (=> d!338576 (= (inv!15 (value!66738 (h!17206 l!6534))) (= (charsToBigInt!0 (text!15324 (value!66738 (h!17206 l!6534))) 0) (value!66733 (value!66738 (h!17206 l!6534)))))))

(declare-fun bs!287147 () Bool)

(assert (= bs!287147 d!338576))

(declare-fun m!1359025 () Bool)

(assert (=> bs!287147 m!1359025))

(assert (=> b!1182346 d!338576))

(declare-fun bs!287148 () Bool)

(declare-fun d!338578 () Bool)

(assert (= bs!287148 (and d!338578 d!338558)))

(declare-fun lambda!48739 () Int)

(assert (=> bs!287148 (= (= (toValue!3168 (transformation!2059 (rule!3480 (h!17206 l!6534)))) (toValue!3168 (transformation!2059 (h!17205 rules!4386)))) (= lambda!48739 lambda!48734))))

(assert (=> d!338578 true))

(assert (=> d!338578 (< (dynLambda!5230 order!7273 (toValue!3168 (transformation!2059 (rule!3480 (h!17206 l!6534))))) (dynLambda!5240 order!7285 lambda!48739))))

(assert (=> d!338578 (= (equivClasses!710 (toChars!3027 (transformation!2059 (rule!3480 (h!17206 l!6534)))) (toValue!3168 (transformation!2059 (rule!3480 (h!17206 l!6534))))) (Forall2!356 lambda!48739))))

(declare-fun bs!287149 () Bool)

(assert (= bs!287149 d!338578))

(declare-fun m!1359027 () Bool)

(assert (=> bs!287149 m!1359027))

(assert (=> b!1182275 d!338578))

(declare-fun d!338580 () Bool)

(declare-fun lt!407152 () Bool)

(declare-fun e!759540 () Bool)

(assert (=> d!338580 (= lt!407152 e!759540)))

(declare-fun res!534624 () Bool)

(assert (=> d!338580 (=> (not res!534624) (not e!759540))))

(assert (=> d!338580 (= res!534624 (= (list!4349 (_1!6893 (lex!732 thiss!27592 rules!4386 (print!669 thiss!27592 (singletonSeq!713 (h!17206 (t!111533 lt!406935))))))) (list!4349 (singletonSeq!713 (h!17206 (t!111533 lt!406935))))))))

(declare-fun e!759539 () Bool)

(assert (=> d!338580 (= lt!407152 e!759539)))

(declare-fun res!534626 () Bool)

(assert (=> d!338580 (=> (not res!534626) (not e!759539))))

(declare-fun lt!407151 () tuple2!12092)

(assert (=> d!338580 (= res!534626 (= (size!9324 (_1!6893 lt!407151)) 1))))

(assert (=> d!338580 (= lt!407151 (lex!732 thiss!27592 rules!4386 (print!669 thiss!27592 (singletonSeq!713 (h!17206 (t!111533 lt!406935))))))))

(assert (=> d!338580 (not (isEmpty!7116 rules!4386))))

(assert (=> d!338580 (= (rulesProduceIndividualToken!785 thiss!27592 rules!4386 (h!17206 (t!111533 lt!406935))) lt!407152)))

(declare-fun b!1182978 () Bool)

(declare-fun res!534625 () Bool)

(assert (=> b!1182978 (=> (not res!534625) (not e!759539))))

(assert (=> b!1182978 (= res!534625 (= (apply!2576 (_1!6893 lt!407151) 0) (h!17206 (t!111533 lt!406935))))))

(declare-fun b!1182979 () Bool)

(assert (=> b!1182979 (= e!759539 (isEmpty!7119 (_2!6893 lt!407151)))))

(declare-fun b!1182980 () Bool)

(assert (=> b!1182980 (= e!759540 (isEmpty!7119 (_2!6893 (lex!732 thiss!27592 rules!4386 (print!669 thiss!27592 (singletonSeq!713 (h!17206 (t!111533 lt!406935))))))))))

(assert (= (and d!338580 res!534626) b!1182978))

(assert (= (and b!1182978 res!534625) b!1182979))

(assert (= (and d!338580 res!534624) b!1182980))

(declare-fun m!1359029 () Bool)

(assert (=> d!338580 m!1359029))

(declare-fun m!1359031 () Bool)

(assert (=> d!338580 m!1359031))

(assert (=> d!338580 m!1358153))

(declare-fun m!1359033 () Bool)

(assert (=> d!338580 m!1359033))

(assert (=> d!338580 m!1359033))

(assert (=> d!338580 m!1359029))

(declare-fun m!1359035 () Bool)

(assert (=> d!338580 m!1359035))

(declare-fun m!1359037 () Bool)

(assert (=> d!338580 m!1359037))

(assert (=> d!338580 m!1359033))

(declare-fun m!1359039 () Bool)

(assert (=> d!338580 m!1359039))

(declare-fun m!1359041 () Bool)

(assert (=> b!1182978 m!1359041))

(declare-fun m!1359043 () Bool)

(assert (=> b!1182979 m!1359043))

(assert (=> b!1182980 m!1359033))

(assert (=> b!1182980 m!1359033))

(assert (=> b!1182980 m!1359029))

(assert (=> b!1182980 m!1359029))

(assert (=> b!1182980 m!1359031))

(declare-fun m!1359045 () Bool)

(assert (=> b!1182980 m!1359045))

(assert (=> b!1182323 d!338580))

(declare-fun b!1182983 () Bool)

(declare-fun e!759543 () Bool)

(assert (=> b!1182983 (= e!759543 true)))

(declare-fun b!1182982 () Bool)

(declare-fun e!759542 () Bool)

(assert (=> b!1182982 (= e!759542 e!759543)))

(declare-fun b!1182981 () Bool)

(declare-fun e!759541 () Bool)

(assert (=> b!1182981 (= e!759541 e!759542)))

(assert (=> b!1182496 e!759541))

(assert (= b!1182982 b!1182983))

(assert (= b!1182981 b!1182982))

(assert (= (and b!1182496 ((_ is Cons!11804) (t!111532 rules!4386))) b!1182981))

(assert (=> b!1182983 (< (dynLambda!5230 order!7273 (toValue!3168 (transformation!2059 (h!17205 (t!111532 rules!4386))))) (dynLambda!5231 order!7275 lambda!48706))))

(assert (=> b!1182983 (< (dynLambda!5232 order!7277 (toChars!3027 (transformation!2059 (h!17205 (t!111532 rules!4386))))) (dynLambda!5231 order!7275 lambda!48706))))

(declare-fun b!1182986 () Bool)

(declare-fun e!759544 () Bool)

(declare-fun tp!337087 () Bool)

(assert (=> b!1182986 (= e!759544 tp!337087)))

(declare-fun b!1182984 () Bool)

(assert (=> b!1182984 (= e!759544 tp_is_empty!5815)))

(assert (=> b!1182605 (= tp!336998 e!759544)))

(declare-fun b!1182987 () Bool)

(declare-fun tp!337086 () Bool)

(declare-fun tp!337088 () Bool)

(assert (=> b!1182987 (= e!759544 (and tp!337086 tp!337088))))

(declare-fun b!1182985 () Bool)

(declare-fun tp!337089 () Bool)

(declare-fun tp!337085 () Bool)

(assert (=> b!1182985 (= e!759544 (and tp!337089 tp!337085))))

(assert (= (and b!1182605 ((_ is ElementMatch!3329) (regex!2059 (h!17205 (t!111532 rules!4386))))) b!1182984))

(assert (= (and b!1182605 ((_ is Concat!5455) (regex!2059 (h!17205 (t!111532 rules!4386))))) b!1182985))

(assert (= (and b!1182605 ((_ is Star!3329) (regex!2059 (h!17205 (t!111532 rules!4386))))) b!1182986))

(assert (= (and b!1182605 ((_ is Union!3329) (regex!2059 (h!17205 (t!111532 rules!4386))))) b!1182987))

(declare-fun b!1182990 () Bool)

(declare-fun b_free!28269 () Bool)

(declare-fun b_next!28973 () Bool)

(assert (=> b!1182990 (= b_free!28269 (not b_next!28973))))

(declare-fun tp!337090 () Bool)

(declare-fun b_and!81309 () Bool)

(assert (=> b!1182990 (= tp!337090 b_and!81309)))

(declare-fun b_free!28271 () Bool)

(declare-fun b_next!28975 () Bool)

(assert (=> b!1182990 (= b_free!28271 (not b_next!28975))))

(declare-fun tb!66197 () Bool)

(declare-fun t!111595 () Bool)

(assert (=> (and b!1182990 (= (toChars!3027 (transformation!2059 (h!17205 (t!111532 (t!111532 rules!4386))))) (toChars!3027 (transformation!2059 (rule!3480 (h!17206 l!6534))))) t!111595) tb!66197))

(declare-fun result!79456 () Bool)

(assert (= result!79456 result!79412))

(assert (=> b!1182548 t!111595))

(declare-fun tb!66199 () Bool)

(declare-fun t!111597 () Bool)

(assert (=> (and b!1182990 (= (toChars!3027 (transformation!2059 (h!17205 (t!111532 (t!111532 rules!4386))))) (toChars!3027 (transformation!2059 (rule!3480 (h!17206 (t!111533 l!6534)))))) t!111597) tb!66199))

(declare-fun result!79458 () Bool)

(assert (= result!79458 result!79430))

(assert (=> d!338426 t!111597))

(assert (=> b!1182942 t!111597))

(declare-fun tp!337093 () Bool)

(declare-fun b_and!81311 () Bool)

(assert (=> b!1182990 (= tp!337093 (and (=> t!111595 result!79456) (=> t!111597 result!79458) b_and!81311))))

(declare-fun e!759547 () Bool)

(assert (=> b!1182990 (= e!759547 (and tp!337090 tp!337093))))

(declare-fun tp!337092 () Bool)

(declare-fun b!1182989 () Bool)

(declare-fun e!759546 () Bool)

(assert (=> b!1182989 (= e!759546 (and tp!337092 (inv!15620 (tag!2321 (h!17205 (t!111532 (t!111532 rules!4386))))) (inv!15623 (transformation!2059 (h!17205 (t!111532 (t!111532 rules!4386))))) e!759547))))

(declare-fun b!1182988 () Bool)

(declare-fun e!759548 () Bool)

(declare-fun tp!337091 () Bool)

(assert (=> b!1182988 (= e!759548 (and e!759546 tp!337091))))

(assert (=> b!1182604 (= tp!336997 e!759548)))

(assert (= b!1182989 b!1182990))

(assert (= b!1182988 b!1182989))

(assert (= (and b!1182604 ((_ is Cons!11804) (t!111532 (t!111532 rules!4386)))) b!1182988))

(declare-fun m!1359047 () Bool)

(assert (=> b!1182989 m!1359047))

(declare-fun m!1359049 () Bool)

(assert (=> b!1182989 m!1359049))

(declare-fun b!1182993 () Bool)

(declare-fun e!759549 () Bool)

(declare-fun tp!337096 () Bool)

(assert (=> b!1182993 (= e!759549 tp!337096)))

(declare-fun b!1182991 () Bool)

(assert (=> b!1182991 (= e!759549 tp_is_empty!5815)))

(assert (=> b!1182594 (= tp!336986 e!759549)))

(declare-fun b!1182994 () Bool)

(declare-fun tp!337095 () Bool)

(declare-fun tp!337097 () Bool)

(assert (=> b!1182994 (= e!759549 (and tp!337095 tp!337097))))

(declare-fun b!1182992 () Bool)

(declare-fun tp!337098 () Bool)

(declare-fun tp!337094 () Bool)

(assert (=> b!1182992 (= e!759549 (and tp!337098 tp!337094))))

(assert (= (and b!1182594 ((_ is ElementMatch!3329) (regex!2059 (rule!3480 (h!17206 (t!111533 l!6534)))))) b!1182991))

(assert (= (and b!1182594 ((_ is Concat!5455) (regex!2059 (rule!3480 (h!17206 (t!111533 l!6534)))))) b!1182992))

(assert (= (and b!1182594 ((_ is Star!3329) (regex!2059 (rule!3480 (h!17206 (t!111533 l!6534)))))) b!1182993))

(assert (= (and b!1182594 ((_ is Union!3329) (regex!2059 (rule!3480 (h!17206 (t!111533 l!6534)))))) b!1182994))

(declare-fun tp!337106 () Bool)

(declare-fun tp!337107 () Bool)

(declare-fun e!759555 () Bool)

(declare-fun b!1183003 () Bool)

(assert (=> b!1183003 (= e!759555 (and (inv!15627 (left!10283 (c!196857 (dynLambda!5236 (toChars!3027 (transformation!2059 (rule!3480 (h!17206 l!6534)))) (value!66738 (h!17206 l!6534)))))) tp!337106 (inv!15627 (right!10613 (c!196857 (dynLambda!5236 (toChars!3027 (transformation!2059 (rule!3480 (h!17206 l!6534)))) (value!66738 (h!17206 l!6534)))))) tp!337107))))

(declare-fun b!1183005 () Bool)

(declare-fun e!759554 () Bool)

(declare-fun tp!337105 () Bool)

(assert (=> b!1183005 (= e!759554 tp!337105)))

(declare-fun b!1183004 () Bool)

(declare-fun inv!15633 (IArray!7741) Bool)

(assert (=> b!1183004 (= e!759555 (and (inv!15633 (xs!6573 (c!196857 (dynLambda!5236 (toChars!3027 (transformation!2059 (rule!3480 (h!17206 l!6534)))) (value!66738 (h!17206 l!6534)))))) e!759554))))

(assert (=> b!1182554 (= tp!336952 (and (inv!15627 (c!196857 (dynLambda!5236 (toChars!3027 (transformation!2059 (rule!3480 (h!17206 l!6534)))) (value!66738 (h!17206 l!6534))))) e!759555))))

(assert (= (and b!1182554 ((_ is Node!3868) (c!196857 (dynLambda!5236 (toChars!3027 (transformation!2059 (rule!3480 (h!17206 l!6534)))) (value!66738 (h!17206 l!6534)))))) b!1183003))

(assert (= b!1183004 b!1183005))

(assert (= (and b!1182554 ((_ is Leaf!5928) (c!196857 (dynLambda!5236 (toChars!3027 (transformation!2059 (rule!3480 (h!17206 l!6534)))) (value!66738 (h!17206 l!6534)))))) b!1183004))

(declare-fun m!1359051 () Bool)

(assert (=> b!1183003 m!1359051))

(declare-fun m!1359053 () Bool)

(assert (=> b!1183003 m!1359053))

(declare-fun m!1359055 () Bool)

(assert (=> b!1183004 m!1359055))

(assert (=> b!1182554 m!1358389))

(declare-fun b!1183006 () Bool)

(declare-fun e!759556 () Bool)

(declare-fun tp!337108 () Bool)

(assert (=> b!1183006 (= e!759556 (and tp_is_empty!5815 tp!337108))))

(assert (=> b!1182593 (= tp!336983 e!759556)))

(assert (= (and b!1182593 ((_ is Cons!11802) (originalCharacters!2613 (h!17206 (t!111533 l!6534))))) b!1183006))

(declare-fun b!1183009 () Bool)

(declare-fun e!759557 () Bool)

(declare-fun tp!337111 () Bool)

(assert (=> b!1183009 (= e!759557 tp!337111)))

(declare-fun b!1183007 () Bool)

(assert (=> b!1183007 (= e!759557 tp_is_empty!5815)))

(assert (=> b!1182574 (= tp!336964 e!759557)))

(declare-fun b!1183010 () Bool)

(declare-fun tp!337110 () Bool)

(declare-fun tp!337112 () Bool)

(assert (=> b!1183010 (= e!759557 (and tp!337110 tp!337112))))

(declare-fun b!1183008 () Bool)

(declare-fun tp!337113 () Bool)

(declare-fun tp!337109 () Bool)

(assert (=> b!1183008 (= e!759557 (and tp!337113 tp!337109))))

(assert (= (and b!1182574 ((_ is ElementMatch!3329) (regOne!7171 (regex!2059 (rule!3480 (h!17206 l!6534)))))) b!1183007))

(assert (= (and b!1182574 ((_ is Concat!5455) (regOne!7171 (regex!2059 (rule!3480 (h!17206 l!6534)))))) b!1183008))

(assert (= (and b!1182574 ((_ is Star!3329) (regOne!7171 (regex!2059 (rule!3480 (h!17206 l!6534)))))) b!1183009))

(assert (= (and b!1182574 ((_ is Union!3329) (regOne!7171 (regex!2059 (rule!3480 (h!17206 l!6534)))))) b!1183010))

(declare-fun b!1183013 () Bool)

(declare-fun e!759558 () Bool)

(declare-fun tp!337116 () Bool)

(assert (=> b!1183013 (= e!759558 tp!337116)))

(declare-fun b!1183011 () Bool)

(assert (=> b!1183011 (= e!759558 tp_is_empty!5815)))

(assert (=> b!1182574 (= tp!336966 e!759558)))

(declare-fun b!1183014 () Bool)

(declare-fun tp!337115 () Bool)

(declare-fun tp!337117 () Bool)

(assert (=> b!1183014 (= e!759558 (and tp!337115 tp!337117))))

(declare-fun b!1183012 () Bool)

(declare-fun tp!337118 () Bool)

(declare-fun tp!337114 () Bool)

(assert (=> b!1183012 (= e!759558 (and tp!337118 tp!337114))))

(assert (= (and b!1182574 ((_ is ElementMatch!3329) (regTwo!7171 (regex!2059 (rule!3480 (h!17206 l!6534)))))) b!1183011))

(assert (= (and b!1182574 ((_ is Concat!5455) (regTwo!7171 (regex!2059 (rule!3480 (h!17206 l!6534)))))) b!1183012))

(assert (= (and b!1182574 ((_ is Star!3329) (regTwo!7171 (regex!2059 (rule!3480 (h!17206 l!6534)))))) b!1183013))

(assert (= (and b!1182574 ((_ is Union!3329) (regTwo!7171 (regex!2059 (rule!3480 (h!17206 l!6534)))))) b!1183014))

(declare-fun b!1183018 () Bool)

(declare-fun b_free!28273 () Bool)

(declare-fun b_next!28977 () Bool)

(assert (=> b!1183018 (= b_free!28273 (not b_next!28977))))

(declare-fun tp!337123 () Bool)

(declare-fun b_and!81313 () Bool)

(assert (=> b!1183018 (= tp!337123 b_and!81313)))

(declare-fun b_free!28275 () Bool)

(declare-fun b_next!28979 () Bool)

(assert (=> b!1183018 (= b_free!28275 (not b_next!28979))))

(declare-fun t!111599 () Bool)

(declare-fun tb!66201 () Bool)

(assert (=> (and b!1183018 (= (toChars!3027 (transformation!2059 (rule!3480 (h!17206 (t!111533 (t!111533 l!6534)))))) (toChars!3027 (transformation!2059 (rule!3480 (h!17206 l!6534))))) t!111599) tb!66201))

(declare-fun result!79462 () Bool)

(assert (= result!79462 result!79412))

(assert (=> b!1182548 t!111599))

(declare-fun t!111601 () Bool)

(declare-fun tb!66203 () Bool)

(assert (=> (and b!1183018 (= (toChars!3027 (transformation!2059 (rule!3480 (h!17206 (t!111533 (t!111533 l!6534)))))) (toChars!3027 (transformation!2059 (rule!3480 (h!17206 (t!111533 l!6534)))))) t!111601) tb!66203))

(declare-fun result!79464 () Bool)

(assert (= result!79464 result!79430))

(assert (=> d!338426 t!111601))

(assert (=> b!1182942 t!111601))

(declare-fun tp!337121 () Bool)

(declare-fun b_and!81315 () Bool)

(assert (=> b!1183018 (= tp!337121 (and (=> t!111599 result!79462) (=> t!111601 result!79464) b_and!81315))))

(declare-fun e!759560 () Bool)

(assert (=> b!1183018 (= e!759560 (and tp!337123 tp!337121))))

(declare-fun tp!337119 () Bool)

(declare-fun e!759564 () Bool)

(declare-fun e!759559 () Bool)

(declare-fun b!1183016 () Bool)

(assert (=> b!1183016 (= e!759559 (and (inv!21 (value!66738 (h!17206 (t!111533 (t!111533 l!6534))))) e!759564 tp!337119))))

(declare-fun tp!337122 () Bool)

(declare-fun b!1183017 () Bool)

(assert (=> b!1183017 (= e!759564 (and tp!337122 (inv!15620 (tag!2321 (rule!3480 (h!17206 (t!111533 (t!111533 l!6534)))))) (inv!15623 (transformation!2059 (rule!3480 (h!17206 (t!111533 (t!111533 l!6534)))))) e!759560))))

(declare-fun tp!337120 () Bool)

(declare-fun e!759563 () Bool)

(declare-fun b!1183015 () Bool)

(assert (=> b!1183015 (= e!759563 (and (inv!15624 (h!17206 (t!111533 (t!111533 l!6534)))) e!759559 tp!337120))))

(assert (=> b!1182592 (= tp!336984 e!759563)))

(assert (= b!1183017 b!1183018))

(assert (= b!1183016 b!1183017))

(assert (= b!1183015 b!1183016))

(assert (= (and b!1182592 ((_ is Cons!11805) (t!111533 (t!111533 l!6534)))) b!1183015))

(declare-fun m!1359057 () Bool)

(assert (=> b!1183016 m!1359057))

(declare-fun m!1359059 () Bool)

(assert (=> b!1183017 m!1359059))

(declare-fun m!1359061 () Bool)

(assert (=> b!1183017 m!1359061))

(declare-fun m!1359063 () Bool)

(assert (=> b!1183015 m!1359063))

(declare-fun b!1183021 () Bool)

(declare-fun e!759565 () Bool)

(declare-fun tp!337126 () Bool)

(assert (=> b!1183021 (= e!759565 tp!337126)))

(declare-fun b!1183019 () Bool)

(assert (=> b!1183019 (= e!759565 tp_is_empty!5815)))

(assert (=> b!1182578 (= tp!336969 e!759565)))

(declare-fun b!1183022 () Bool)

(declare-fun tp!337125 () Bool)

(declare-fun tp!337127 () Bool)

(assert (=> b!1183022 (= e!759565 (and tp!337125 tp!337127))))

(declare-fun b!1183020 () Bool)

(declare-fun tp!337128 () Bool)

(declare-fun tp!337124 () Bool)

(assert (=> b!1183020 (= e!759565 (and tp!337128 tp!337124))))

(assert (= (and b!1182578 ((_ is ElementMatch!3329) (regOne!7171 (regex!2059 (h!17205 rules!4386))))) b!1183019))

(assert (= (and b!1182578 ((_ is Concat!5455) (regOne!7171 (regex!2059 (h!17205 rules!4386))))) b!1183020))

(assert (= (and b!1182578 ((_ is Star!3329) (regOne!7171 (regex!2059 (h!17205 rules!4386))))) b!1183021))

(assert (= (and b!1182578 ((_ is Union!3329) (regOne!7171 (regex!2059 (h!17205 rules!4386))))) b!1183022))

(declare-fun b!1183025 () Bool)

(declare-fun e!759566 () Bool)

(declare-fun tp!337131 () Bool)

(assert (=> b!1183025 (= e!759566 tp!337131)))

(declare-fun b!1183023 () Bool)

(assert (=> b!1183023 (= e!759566 tp_is_empty!5815)))

(assert (=> b!1182578 (= tp!336971 e!759566)))

(declare-fun b!1183026 () Bool)

(declare-fun tp!337130 () Bool)

(declare-fun tp!337132 () Bool)

(assert (=> b!1183026 (= e!759566 (and tp!337130 tp!337132))))

(declare-fun b!1183024 () Bool)

(declare-fun tp!337133 () Bool)

(declare-fun tp!337129 () Bool)

(assert (=> b!1183024 (= e!759566 (and tp!337133 tp!337129))))

(assert (= (and b!1182578 ((_ is ElementMatch!3329) (regTwo!7171 (regex!2059 (h!17205 rules!4386))))) b!1183023))

(assert (= (and b!1182578 ((_ is Concat!5455) (regTwo!7171 (regex!2059 (h!17205 rules!4386))))) b!1183024))

(assert (= (and b!1182578 ((_ is Star!3329) (regTwo!7171 (regex!2059 (h!17205 rules!4386))))) b!1183025))

(assert (= (and b!1182578 ((_ is Union!3329) (regTwo!7171 (regex!2059 (h!17205 rules!4386))))) b!1183026))

(declare-fun b!1183029 () Bool)

(declare-fun e!759567 () Bool)

(declare-fun tp!337136 () Bool)

(assert (=> b!1183029 (= e!759567 tp!337136)))

(declare-fun b!1183027 () Bool)

(assert (=> b!1183027 (= e!759567 tp_is_empty!5815)))

(assert (=> b!1182573 (= tp!336965 e!759567)))

(declare-fun b!1183030 () Bool)

(declare-fun tp!337135 () Bool)

(declare-fun tp!337137 () Bool)

(assert (=> b!1183030 (= e!759567 (and tp!337135 tp!337137))))

(declare-fun b!1183028 () Bool)

(declare-fun tp!337138 () Bool)

(declare-fun tp!337134 () Bool)

(assert (=> b!1183028 (= e!759567 (and tp!337138 tp!337134))))

(assert (= (and b!1182573 ((_ is ElementMatch!3329) (reg!3658 (regex!2059 (rule!3480 (h!17206 l!6534)))))) b!1183027))

(assert (= (and b!1182573 ((_ is Concat!5455) (reg!3658 (regex!2059 (rule!3480 (h!17206 l!6534)))))) b!1183028))

(assert (= (and b!1182573 ((_ is Star!3329) (reg!3658 (regex!2059 (rule!3480 (h!17206 l!6534)))))) b!1183029))

(assert (= (and b!1182573 ((_ is Union!3329) (reg!3658 (regex!2059 (rule!3480 (h!17206 l!6534)))))) b!1183030))

(declare-fun b!1183033 () Bool)

(declare-fun e!759568 () Bool)

(declare-fun tp!337141 () Bool)

(assert (=> b!1183033 (= e!759568 tp!337141)))

(declare-fun b!1183031 () Bool)

(assert (=> b!1183031 (= e!759568 tp_is_empty!5815)))

(assert (=> b!1182577 (= tp!336970 e!759568)))

(declare-fun b!1183034 () Bool)

(declare-fun tp!337140 () Bool)

(declare-fun tp!337142 () Bool)

(assert (=> b!1183034 (= e!759568 (and tp!337140 tp!337142))))

(declare-fun b!1183032 () Bool)

(declare-fun tp!337143 () Bool)

(declare-fun tp!337139 () Bool)

(assert (=> b!1183032 (= e!759568 (and tp!337143 tp!337139))))

(assert (= (and b!1182577 ((_ is ElementMatch!3329) (reg!3658 (regex!2059 (h!17205 rules!4386))))) b!1183031))

(assert (= (and b!1182577 ((_ is Concat!5455) (reg!3658 (regex!2059 (h!17205 rules!4386))))) b!1183032))

(assert (= (and b!1182577 ((_ is Star!3329) (reg!3658 (regex!2059 (h!17205 rules!4386))))) b!1183033))

(assert (= (and b!1182577 ((_ is Union!3329) (reg!3658 (regex!2059 (h!17205 rules!4386))))) b!1183034))

(declare-fun b!1183037 () Bool)

(declare-fun e!759569 () Bool)

(declare-fun tp!337146 () Bool)

(assert (=> b!1183037 (= e!759569 tp!337146)))

(declare-fun b!1183035 () Bool)

(assert (=> b!1183035 (= e!759569 tp_is_empty!5815)))

(assert (=> b!1182572 (= tp!336967 e!759569)))

(declare-fun b!1183038 () Bool)

(declare-fun tp!337145 () Bool)

(declare-fun tp!337147 () Bool)

(assert (=> b!1183038 (= e!759569 (and tp!337145 tp!337147))))

(declare-fun b!1183036 () Bool)

(declare-fun tp!337148 () Bool)

(declare-fun tp!337144 () Bool)

(assert (=> b!1183036 (= e!759569 (and tp!337148 tp!337144))))

(assert (= (and b!1182572 ((_ is ElementMatch!3329) (regOne!7170 (regex!2059 (rule!3480 (h!17206 l!6534)))))) b!1183035))

(assert (= (and b!1182572 ((_ is Concat!5455) (regOne!7170 (regex!2059 (rule!3480 (h!17206 l!6534)))))) b!1183036))

(assert (= (and b!1182572 ((_ is Star!3329) (regOne!7170 (regex!2059 (rule!3480 (h!17206 l!6534)))))) b!1183037))

(assert (= (and b!1182572 ((_ is Union!3329) (regOne!7170 (regex!2059 (rule!3480 (h!17206 l!6534)))))) b!1183038))

(declare-fun b!1183041 () Bool)

(declare-fun e!759570 () Bool)

(declare-fun tp!337151 () Bool)

(assert (=> b!1183041 (= e!759570 tp!337151)))

(declare-fun b!1183039 () Bool)

(assert (=> b!1183039 (= e!759570 tp_is_empty!5815)))

(assert (=> b!1182572 (= tp!336963 e!759570)))

(declare-fun b!1183042 () Bool)

(declare-fun tp!337150 () Bool)

(declare-fun tp!337152 () Bool)

(assert (=> b!1183042 (= e!759570 (and tp!337150 tp!337152))))

(declare-fun b!1183040 () Bool)

(declare-fun tp!337153 () Bool)

(declare-fun tp!337149 () Bool)

(assert (=> b!1183040 (= e!759570 (and tp!337153 tp!337149))))

(assert (= (and b!1182572 ((_ is ElementMatch!3329) (regTwo!7170 (regex!2059 (rule!3480 (h!17206 l!6534)))))) b!1183039))

(assert (= (and b!1182572 ((_ is Concat!5455) (regTwo!7170 (regex!2059 (rule!3480 (h!17206 l!6534)))))) b!1183040))

(assert (= (and b!1182572 ((_ is Star!3329) (regTwo!7170 (regex!2059 (rule!3480 (h!17206 l!6534)))))) b!1183041))

(assert (= (and b!1182572 ((_ is Union!3329) (regTwo!7170 (regex!2059 (rule!3480 (h!17206 l!6534)))))) b!1183042))

(declare-fun b!1183043 () Bool)

(declare-fun e!759571 () Bool)

(declare-fun tp!337154 () Bool)

(assert (=> b!1183043 (= e!759571 (and tp_is_empty!5815 tp!337154))))

(assert (=> b!1182611 (= tp!337002 e!759571)))

(assert (= (and b!1182611 ((_ is Cons!11802) (t!111530 (originalCharacters!2613 (h!17206 l!6534))))) b!1183043))

(declare-fun b!1183046 () Bool)

(declare-fun e!759574 () Bool)

(assert (=> b!1183046 (= e!759574 true)))

(declare-fun b!1183045 () Bool)

(declare-fun e!759573 () Bool)

(assert (=> b!1183045 (= e!759573 e!759574)))

(declare-fun b!1183044 () Bool)

(declare-fun e!759572 () Bool)

(assert (=> b!1183044 (= e!759572 e!759573)))

(assert (=> b!1182325 e!759572))

(assert (= b!1183045 b!1183046))

(assert (= b!1183044 b!1183045))

(assert (= (and b!1182325 ((_ is Cons!11804) (t!111532 rules!4386))) b!1183044))

(assert (=> b!1183046 (< (dynLambda!5230 order!7273 (toValue!3168 (transformation!2059 (h!17205 (t!111532 rules!4386))))) (dynLambda!5231 order!7275 lambda!48702))))

(assert (=> b!1183046 (< (dynLambda!5232 order!7277 (toChars!3027 (transformation!2059 (h!17205 (t!111532 rules!4386))))) (dynLambda!5231 order!7275 lambda!48702))))

(declare-fun b!1183049 () Bool)

(declare-fun e!759575 () Bool)

(declare-fun tp!337157 () Bool)

(assert (=> b!1183049 (= e!759575 tp!337157)))

(declare-fun b!1183047 () Bool)

(assert (=> b!1183047 (= e!759575 tp_is_empty!5815)))

(assert (=> b!1182576 (= tp!336972 e!759575)))

(declare-fun b!1183050 () Bool)

(declare-fun tp!337156 () Bool)

(declare-fun tp!337158 () Bool)

(assert (=> b!1183050 (= e!759575 (and tp!337156 tp!337158))))

(declare-fun b!1183048 () Bool)

(declare-fun tp!337159 () Bool)

(declare-fun tp!337155 () Bool)

(assert (=> b!1183048 (= e!759575 (and tp!337159 tp!337155))))

(assert (= (and b!1182576 ((_ is ElementMatch!3329) (regOne!7170 (regex!2059 (h!17205 rules!4386))))) b!1183047))

(assert (= (and b!1182576 ((_ is Concat!5455) (regOne!7170 (regex!2059 (h!17205 rules!4386))))) b!1183048))

(assert (= (and b!1182576 ((_ is Star!3329) (regOne!7170 (regex!2059 (h!17205 rules!4386))))) b!1183049))

(assert (= (and b!1182576 ((_ is Union!3329) (regOne!7170 (regex!2059 (h!17205 rules!4386))))) b!1183050))

(declare-fun b!1183053 () Bool)

(declare-fun e!759576 () Bool)

(declare-fun tp!337162 () Bool)

(assert (=> b!1183053 (= e!759576 tp!337162)))

(declare-fun b!1183051 () Bool)

(assert (=> b!1183051 (= e!759576 tp_is_empty!5815)))

(assert (=> b!1182576 (= tp!336968 e!759576)))

(declare-fun b!1183054 () Bool)

(declare-fun tp!337161 () Bool)

(declare-fun tp!337163 () Bool)

(assert (=> b!1183054 (= e!759576 (and tp!337161 tp!337163))))

(declare-fun b!1183052 () Bool)

(declare-fun tp!337164 () Bool)

(declare-fun tp!337160 () Bool)

(assert (=> b!1183052 (= e!759576 (and tp!337164 tp!337160))))

(assert (= (and b!1182576 ((_ is ElementMatch!3329) (regTwo!7170 (regex!2059 (h!17205 rules!4386))))) b!1183051))

(assert (= (and b!1182576 ((_ is Concat!5455) (regTwo!7170 (regex!2059 (h!17205 rules!4386))))) b!1183052))

(assert (= (and b!1182576 ((_ is Star!3329) (regTwo!7170 (regex!2059 (h!17205 rules!4386))))) b!1183053))

(assert (= (and b!1182576 ((_ is Union!3329) (regTwo!7170 (regex!2059 (h!17205 rules!4386))))) b!1183054))

(declare-fun b!1183057 () Bool)

(declare-fun e!759579 () Bool)

(assert (=> b!1183057 (= e!759579 true)))

(declare-fun b!1183056 () Bool)

(declare-fun e!759578 () Bool)

(assert (=> b!1183056 (= e!759578 e!759579)))

(declare-fun b!1183055 () Bool)

(declare-fun e!759577 () Bool)

(assert (=> b!1183055 (= e!759577 e!759578)))

(assert (=> b!1182332 e!759577))

(assert (= b!1183056 b!1183057))

(assert (= b!1183055 b!1183056))

(assert (= (and b!1182332 ((_ is Cons!11804) (t!111532 rules!4386))) b!1183055))

(assert (=> b!1183057 (< (dynLambda!5230 order!7273 (toValue!3168 (transformation!2059 (h!17205 (t!111532 rules!4386))))) (dynLambda!5231 order!7275 lambda!48703))))

(assert (=> b!1183057 (< (dynLambda!5232 order!7277 (toChars!3027 (transformation!2059 (h!17205 (t!111532 rules!4386))))) (dynLambda!5231 order!7275 lambda!48703))))

(declare-fun b!1183060 () Bool)

(declare-fun e!759582 () Bool)

(assert (=> b!1183060 (= e!759582 true)))

(declare-fun b!1183059 () Bool)

(declare-fun e!759581 () Bool)

(assert (=> b!1183059 (= e!759581 e!759582)))

(declare-fun b!1183058 () Bool)

(declare-fun e!759580 () Bool)

(assert (=> b!1183058 (= e!759580 e!759581)))

(assert (=> b!1182558 e!759580))

(assert (= b!1183059 b!1183060))

(assert (= b!1183058 b!1183059))

(assert (= (and b!1182558 ((_ is Cons!11804) (t!111532 rules!4386))) b!1183058))

(assert (=> b!1183060 (< (dynLambda!5230 order!7273 (toValue!3168 (transformation!2059 (h!17205 (t!111532 rules!4386))))) (dynLambda!5231 order!7275 lambda!48711))))

(assert (=> b!1183060 (< (dynLambda!5232 order!7277 (toChars!3027 (transformation!2059 (h!17205 (t!111532 rules!4386))))) (dynLambda!5231 order!7275 lambda!48711))))

(declare-fun b!1183063 () Bool)

(declare-fun e!759585 () Bool)

(assert (=> b!1183063 (= e!759585 true)))

(declare-fun b!1183062 () Bool)

(declare-fun e!759584 () Bool)

(assert (=> b!1183062 (= e!759584 e!759585)))

(declare-fun b!1183061 () Bool)

(declare-fun e!759583 () Bool)

(assert (=> b!1183061 (= e!759583 e!759584)))

(assert (=> b!1182579 e!759583))

(assert (= b!1183062 b!1183063))

(assert (= b!1183061 b!1183062))

(assert (= (and b!1182579 ((_ is Cons!11804) (t!111532 (t!111532 rules!4386)))) b!1183061))

(assert (=> b!1183063 (< (dynLambda!5230 order!7273 (toValue!3168 (transformation!2059 (h!17205 (t!111532 (t!111532 rules!4386)))))) (dynLambda!5231 order!7275 lambda!48691))))

(assert (=> b!1183063 (< (dynLambda!5232 order!7277 (toChars!3027 (transformation!2059 (h!17205 (t!111532 (t!111532 rules!4386)))))) (dynLambda!5231 order!7275 lambda!48691))))

(declare-fun b_lambda!35403 () Bool)

(assert (= b_lambda!35357 (or b!1182257 b_lambda!35403)))

(declare-fun bs!287150 () Bool)

(declare-fun d!338582 () Bool)

(assert (= bs!287150 (and d!338582 b!1182257)))

(assert (=> bs!287150 (= (dynLambda!5235 lambda!48691 (h!17206 l!6534)) (rulesProduceIndividualToken!785 Lexer!1752 rules!4386 (h!17206 l!6534)))))

(declare-fun m!1359065 () Bool)

(assert (=> bs!287150 m!1359065))

(assert (=> b!1182619 d!338582))

(declare-fun b_lambda!35405 () Bool)

(assert (= b_lambda!35359 (or d!338308 b_lambda!35405)))

(declare-fun bs!287151 () Bool)

(declare-fun d!338584 () Bool)

(assert (= bs!287151 (and d!338584 d!338308)))

(assert (=> bs!287151 (= (dynLambda!5235 lambda!48706 (h!17206 lt!406935)) (rulesProduceIndividualToken!785 thiss!27592 rules!4386 (h!17206 lt!406935)))))

(assert (=> bs!287151 m!1358159))

(assert (=> b!1182621 d!338584))

(declare-fun b_lambda!35407 () Bool)

(assert (= b_lambda!35355 (or b!1182257 b_lambda!35407)))

(declare-fun bs!287152 () Bool)

(declare-fun d!338586 () Bool)

(assert (= bs!287152 (and d!338586 b!1182257)))

(assert (=> bs!287152 (= (dynLambda!5235 lambda!48691 (h!17206 (t!111533 lt!406935))) (rulesProduceIndividualToken!785 Lexer!1752 rules!4386 (h!17206 (t!111533 lt!406935))))))

(declare-fun m!1359067 () Bool)

(assert (=> bs!287152 m!1359067))

(assert (=> b!1182612 d!338586))

(declare-fun b_lambda!35409 () Bool)

(assert (= b_lambda!35363 (or d!338266 b_lambda!35409)))

(declare-fun bs!287153 () Bool)

(declare-fun d!338588 () Bool)

(assert (= bs!287153 (and d!338588 d!338266)))

(assert (=> bs!287153 (= (dynLambda!5235 lambda!48703 (h!17206 l!6534)) (rulesProduceIndividualToken!785 thiss!27592 rules!4386 (h!17206 l!6534)))))

(assert (=> bs!287153 m!1358223))

(assert (=> b!1182641 d!338588))

(declare-fun b_lambda!35411 () Bool)

(assert (= b_lambda!35399 (or d!338320 b_lambda!35411)))

(declare-fun bs!287154 () Bool)

(declare-fun d!338590 () Bool)

(assert (= bs!287154 (and d!338590 d!338320)))

(assert (=> bs!287154 (= (dynLambda!5235 lambda!48711 (h!17206 (list!4349 (seqFromList!1534 lt!406935)))) (rulesProduceIndividualToken!785 thiss!27592 rules!4386 (h!17206 (list!4349 (seqFromList!1534 lt!406935)))))))

(assert (=> bs!287154 m!1358997))

(assert (=> b!1182906 d!338590))

(declare-fun b_lambda!35413 () Bool)

(assert (= b_lambda!35401 (or (and b!1183018 b_free!28275 (= (toChars!3027 (transformation!2059 (rule!3480 (h!17206 (t!111533 (t!111533 l!6534)))))) (toChars!3027 (transformation!2059 (rule!3480 (h!17206 (t!111533 l!6534))))))) (and b!1182252 b_free!28243 (= (toChars!3027 (transformation!2059 (h!17205 rules!4386))) (toChars!3027 (transformation!2059 (rule!3480 (h!17206 (t!111533 l!6534))))))) (and b!1182595 b_free!28255) (and b!1182990 b_free!28271 (= (toChars!3027 (transformation!2059 (h!17205 (t!111532 (t!111532 rules!4386))))) (toChars!3027 (transformation!2059 (rule!3480 (h!17206 (t!111533 l!6534))))))) (and b!1182606 b_free!28259 (= (toChars!3027 (transformation!2059 (h!17205 (t!111532 rules!4386)))) (toChars!3027 (transformation!2059 (rule!3480 (h!17206 (t!111533 l!6534))))))) (and b!1182249 b_free!28239 (= (toChars!3027 (transformation!2059 (rule!3480 (h!17206 l!6534)))) (toChars!3027 (transformation!2059 (rule!3480 (h!17206 (t!111533 l!6534))))))) b_lambda!35413)))

(declare-fun b_lambda!35415 () Bool)

(assert (= b_lambda!35361 (or d!338252 b_lambda!35415)))

(declare-fun bs!287155 () Bool)

(declare-fun d!338592 () Bool)

(assert (= bs!287155 (and d!338592 d!338252)))

(assert (=> bs!287155 (= (dynLambda!5235 lambda!48702 (h!17206 (t!111533 lt!406935))) (rulesProduceIndividualToken!785 thiss!27592 rules!4386 (h!17206 (t!111533 lt!406935))))))

(assert (=> bs!287155 m!1358217))

(assert (=> b!1182633 d!338592))

(declare-fun b_lambda!35417 () Bool)

(assert (= b_lambda!35369 (or (and b!1183018 b_free!28275 (= (toChars!3027 (transformation!2059 (rule!3480 (h!17206 (t!111533 (t!111533 l!6534)))))) (toChars!3027 (transformation!2059 (rule!3480 (h!17206 (t!111533 l!6534))))))) (and b!1182252 b_free!28243 (= (toChars!3027 (transformation!2059 (h!17205 rules!4386))) (toChars!3027 (transformation!2059 (rule!3480 (h!17206 (t!111533 l!6534))))))) (and b!1182595 b_free!28255) (and b!1182990 b_free!28271 (= (toChars!3027 (transformation!2059 (h!17205 (t!111532 (t!111532 rules!4386))))) (toChars!3027 (transformation!2059 (rule!3480 (h!17206 (t!111533 l!6534))))))) (and b!1182606 b_free!28259 (= (toChars!3027 (transformation!2059 (h!17205 (t!111532 rules!4386)))) (toChars!3027 (transformation!2059 (rule!3480 (h!17206 (t!111533 l!6534))))))) (and b!1182249 b_free!28239 (= (toChars!3027 (transformation!2059 (rule!3480 (h!17206 l!6534)))) (toChars!3027 (transformation!2059 (rule!3480 (h!17206 (t!111533 l!6534))))))) b_lambda!35417)))

(check-sat (not b!1182919) b_and!81315 (not d!338524) (not b_next!28957) (not b!1183026) (not b_next!28975) (not b!1183044) (not b!1182949) (not b!1183017) (not d!338528) (not b!1182740) (not b!1182981) (not d!338574) (not b!1182988) (not d!338336) (not b!1182905) (not b_next!28963) (not b!1183010) (not b!1183050) (not b!1183029) tp_is_empty!5815 (not b!1182738) (not b!1182964) (not b!1183053) (not b!1182615) (not b!1183028) (not d!338440) (not d!338540) (not b!1182642) (not b!1182987) b_and!81303 (not b_next!28947) (not b_lambda!35411) (not bs!287154) (not b!1182975) (not b!1182986) (not b!1183054) (not b_lambda!35405) (not d!338422) (not d!338358) (not b!1183006) (not bs!287151) (not b!1182974) (not b!1182737) (not d!338334) (not d!338330) (not b!1182929) (not b!1183042) (not b_next!28977) (not b!1182754) (not d!338434) (not b!1183015) (not b!1182741) (not d!338438) (not b!1183038) (not b_lambda!35415) (not b!1183052) (not b!1182933) (not b!1182744) (not b!1183013) (not d!338580) (not b!1182969) (not b!1183036) (not b_next!28943) b_and!81241 (not b!1183004) (not b!1183025) (not b!1182937) (not b!1182994) b_and!81305 (not b!1182739) b_and!81261 (not b!1182979) (not b!1182907) (not d!338502) (not b!1182616) (not d!338354) (not b!1182931) (not b_lambda!35413) (not b!1182968) (not b!1183037) (not b_lambda!35409) (not b!1183021) (not d!338432) (not b_lambda!35417) (not b!1182939) (not b_next!28961) (not b_lambda!35403) (not b!1182634) (not b!1182640) (not d!338560) (not d!338546) (not b!1183041) (not b_next!28973) (not b!1183043) (not b!1182915) (not b!1182743) (not b!1182639) (not d!338530) (not b_next!28941) (not b!1183033) (not b_next!28959) (not b!1183030) (not b!1182961) (not b!1182920) (not b!1183034) (not b!1183040) (not b!1183012) (not b!1182942) (not bm!82599) (not d!338564) (not b!1182965) b_and!81311 (not b_lambda!35353) (not b!1183032) (not d!338424) (not b_next!28945) (not d!338576) (not b!1182948) (not b!1182636) b_and!81301 (not b_lambda!35351) (not b!1182824) (not b!1182993) (not b!1182922) (not d!338558) (not b!1182938) (not bs!287150) (not b!1182554) (not bs!287152) (not b!1182749) (not b!1183055) (not b!1182980) b_and!81309 (not d!338436) (not b!1182950) (not b!1182936) (not bs!287153) (not b!1182943) (not b!1182913) (not b!1182613) (not b!1183058) (not b!1183061) (not d!338536) (not b!1182622) (not b!1183049) (not d!338426) (not b_next!28979) (not b!1182825) (not d!338522) (not b!1182989) (not b!1182826) (not b!1182978) (not b_lambda!35407) (not b!1182742) (not b!1183008) (not d!338516) (not b!1183014) (not b!1183024) (not b!1182632) (not b!1182934) b_and!81313 (not b!1183020) (not d!338520) (not d!338342) (not d!338344) (not b!1182823) (not b!1183005) b_and!81265 (not b!1182992) (not b!1182958) (not b!1182755) (not d!338430) (not d!338556) (not d!338526) (not b!1182985) (not b!1183003) (not b!1183016) b_and!81237 (not b!1183022) (not tb!66173) (not bs!287155) (not d!338420) (not b!1183009) (not d!338566) (not b!1183048) (not d!338428) b_and!81307 (not d!338442) (not b!1182614) (not d!338554) (not b!1182620) (not b!1182753) (not b!1182635) (not b!1182918) (not d!338578))
(check-sat (not b_next!28963) (not b_next!28977) (not b_next!28961) (not b_next!28973) (not b_next!28941) (not b_next!28959) b_and!81311 b_and!81309 (not b_next!28979) b_and!81315 b_and!81237 b_and!81307 (not b_next!28957) (not b_next!28975) b_and!81303 (not b_next!28947) b_and!81241 (not b_next!28943) b_and!81305 b_and!81261 (not b_next!28945) b_and!81301 b_and!81313 b_and!81265)
