; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!273426 () Bool)

(assert start!273426)

(declare-fun b!2818959 () Bool)

(declare-fun b_free!80533 () Bool)

(declare-fun b_next!81237 () Bool)

(assert (=> b!2818959 (= b_free!80533 (not b_next!81237))))

(declare-fun tp!900177 () Bool)

(declare-fun b_and!205871 () Bool)

(assert (=> b!2818959 (= tp!900177 b_and!205871)))

(declare-fun b_free!80535 () Bool)

(declare-fun b_next!81239 () Bool)

(assert (=> b!2818959 (= b_free!80535 (not b_next!81239))))

(declare-fun tp!900179 () Bool)

(declare-fun b_and!205873 () Bool)

(assert (=> b!2818959 (= tp!900179 b_and!205873)))

(declare-fun b!2818961 () Bool)

(declare-fun b_free!80537 () Bool)

(declare-fun b_next!81241 () Bool)

(assert (=> b!2818961 (= b_free!80537 (not b_next!81241))))

(declare-fun tp!900182 () Bool)

(declare-fun b_and!205875 () Bool)

(assert (=> b!2818961 (= tp!900182 b_and!205875)))

(declare-fun b_free!80539 () Bool)

(declare-fun b_next!81243 () Bool)

(assert (=> b!2818961 (= b_free!80539 (not b_next!81243))))

(declare-fun tp!900178 () Bool)

(declare-fun b_and!205877 () Bool)

(assert (=> b!2818961 (= tp!900178 b_and!205877)))

(declare-fun b!2818979 () Bool)

(declare-fun e!1783024 () Bool)

(assert (=> b!2818979 (= e!1783024 true)))

(declare-fun b!2818978 () Bool)

(declare-fun e!1783023 () Bool)

(assert (=> b!2818978 (= e!1783023 e!1783024)))

(declare-fun b!2818977 () Bool)

(declare-fun e!1783022 () Bool)

(assert (=> b!2818977 (= e!1783022 e!1783023)))

(declare-fun b!2818962 () Bool)

(assert (=> b!2818962 e!1783022))

(assert (= b!2818978 b!2818979))

(assert (= b!2818977 b!2818978))

(declare-datatypes ((C!16848 0))(
  ( (C!16849 (val!10404 Int)) )
))
(declare-datatypes ((List!33162 0))(
  ( (Nil!33038) (Cons!33038 (h!38458 (_ BitVec 16)) (t!230319 List!33162)) )
))
(declare-datatypes ((TokenValue!5173 0))(
  ( (FloatLiteralValue!10346 (text!36656 List!33162)) (TokenValueExt!5172 (__x!22019 Int)) (Broken!25865 (value!159169 List!33162)) (Object!5296) (End!5173) (Def!5173) (Underscore!5173) (Match!5173) (Else!5173) (Error!5173) (Case!5173) (If!5173) (Extends!5173) (Abstract!5173) (Class!5173) (Val!5173) (DelimiterValue!10346 (del!5233 List!33162)) (KeywordValue!5179 (value!159170 List!33162)) (CommentValue!10346 (value!159171 List!33162)) (WhitespaceValue!10346 (value!159172 List!33162)) (IndentationValue!5173 (value!159173 List!33162)) (String!36320) (Int32!5173) (Broken!25866 (value!159174 List!33162)) (Boolean!5174) (Unit!46980) (OperatorValue!5176 (op!5233 List!33162)) (IdentifierValue!10346 (value!159175 List!33162)) (IdentifierValue!10347 (value!159176 List!33162)) (WhitespaceValue!10347 (value!159177 List!33162)) (True!10346) (False!10346) (Broken!25867 (value!159178 List!33162)) (Broken!25868 (value!159179 List!33162)) (True!10347) (RightBrace!5173) (RightBracket!5173) (Colon!5173) (Null!5173) (Comma!5173) (LeftBracket!5173) (False!10347) (LeftBrace!5173) (ImaginaryLiteralValue!5173 (text!36657 List!33162)) (StringLiteralValue!15519 (value!159180 List!33162)) (EOFValue!5173 (value!159181 List!33162)) (IdentValue!5173 (value!159182 List!33162)) (DelimiterValue!10347 (value!159183 List!33162)) (DedentValue!5173 (value!159184 List!33162)) (NewLineValue!5173 (value!159185 List!33162)) (IntegerValue!15519 (value!159186 (_ BitVec 32)) (text!36658 List!33162)) (IntegerValue!15520 (value!159187 Int) (text!36659 List!33162)) (Times!5173) (Or!5173) (Equal!5173) (Minus!5173) (Broken!25869 (value!159188 List!33162)) (And!5173) (Div!5173) (LessEqual!5173) (Mod!5173) (Concat!13506) (Not!5173) (Plus!5173) (SpaceValue!5173 (value!159189 List!33162)) (IntegerValue!15521 (value!159190 Int) (text!36660 List!33162)) (StringLiteralValue!15520 (text!36661 List!33162)) (FloatLiteralValue!10347 (text!36662 List!33162)) (BytesLiteralValue!5173 (value!159191 List!33162)) (CommentValue!10347 (value!159192 List!33162)) (StringLiteralValue!15521 (value!159193 List!33162)) (ErrorTokenValue!5173 (msg!5234 List!33162)) )
))
(declare-datatypes ((List!33163 0))(
  ( (Nil!33039) (Cons!33039 (h!38459 C!16848) (t!230320 List!33163)) )
))
(declare-datatypes ((IArray!20505 0))(
  ( (IArray!20506 (innerList!10310 List!33163)) )
))
(declare-datatypes ((Conc!10250 0))(
  ( (Node!10250 (left!24944 Conc!10250) (right!25274 Conc!10250) (csize!20730 Int) (cheight!10461 Int)) (Leaf!15613 (xs!13362 IArray!20505) (csize!20731 Int)) (Empty!10250) )
))
(declare-datatypes ((BalanceConc!20138 0))(
  ( (BalanceConc!20139 (c!456896 Conc!10250)) )
))
(declare-datatypes ((TokenValueInjection!9774 0))(
  ( (TokenValueInjection!9775 (toValue!6957 Int) (toChars!6816 Int)) )
))
(declare-datatypes ((String!36321 0))(
  ( (String!36322 (value!159194 String)) )
))
(declare-datatypes ((Regex!8333 0))(
  ( (ElementMatch!8333 (c!456897 C!16848)) (Concat!13507 (regOne!17178 Regex!8333) (regTwo!17178 Regex!8333)) (EmptyExpr!8333) (Star!8333 (reg!8662 Regex!8333)) (EmptyLang!8333) (Union!8333 (regOne!17179 Regex!8333) (regTwo!17179 Regex!8333)) )
))
(declare-datatypes ((Rule!9686 0))(
  ( (Rule!9687 (regex!4943 Regex!8333) (tag!5447 String!36321) (isSeparator!4943 Bool) (transformation!4943 TokenValueInjection!9774)) )
))
(declare-datatypes ((List!33164 0))(
  ( (Nil!33040) (Cons!33040 (h!38460 Rule!9686) (t!230321 List!33164)) )
))
(declare-fun rules!4424 () List!33164)

(get-info :version)

(assert (= (and b!2818962 ((_ is Cons!33040) rules!4424)) b!2818977))

(declare-fun lambda!103453 () Int)

(declare-fun order!17497 () Int)

(declare-fun order!17495 () Int)

(declare-fun dynLambda!13790 (Int Int) Int)

(declare-fun dynLambda!13791 (Int Int) Int)

(assert (=> b!2818979 (< (dynLambda!13790 order!17495 (toValue!6957 (transformation!4943 (h!38460 rules!4424)))) (dynLambda!13791 order!17497 lambda!103453))))

(declare-fun order!17499 () Int)

(declare-fun dynLambda!13792 (Int Int) Int)

(assert (=> b!2818979 (< (dynLambda!13792 order!17499 (toChars!6816 (transformation!4943 (h!38460 rules!4424)))) (dynLambda!13791 order!17497 lambda!103453))))

(declare-fun b!2818954 () Bool)

(declare-fun res!1173095 () Bool)

(declare-fun e!1783007 () Bool)

(assert (=> b!2818954 (=> (not res!1173095) (not e!1783007))))

(declare-fun isEmpty!18272 (List!33164) Bool)

(assert (=> b!2818954 (= res!1173095 (not (isEmpty!18272 rules!4424)))))

(declare-fun b!2818955 () Bool)

(declare-fun e!1783012 () Bool)

(declare-fun e!1783011 () Bool)

(assert (=> b!2818955 (= e!1783012 e!1783011)))

(declare-fun res!1173088 () Bool)

(assert (=> b!2818955 (=> (not res!1173088) (not e!1783011))))

(declare-datatypes ((Token!9288 0))(
  ( (Token!9289 (value!159195 TokenValue!5173) (rule!7371 Rule!9686) (size!25721 Int) (originalCharacters!5675 List!33163)) )
))
(declare-datatypes ((List!33165 0))(
  ( (Nil!33041) (Cons!33041 (h!38461 Token!9288) (t!230322 List!33165)) )
))
(declare-fun lt!1006399 () List!33165)

(declare-datatypes ((LexerInterface!4534 0))(
  ( (LexerInterfaceExt!4531 (__x!22020 Int)) (Lexer!4532) )
))
(declare-fun thiss!27755 () LexerInterface!4534)

(declare-fun rulesProduceIndividualToken!2072 (LexerInterface!4534 List!33164 Token!9288) Bool)

(assert (=> b!2818955 (= res!1173088 (rulesProduceIndividualToken!2072 thiss!27755 rules!4424 (h!38461 lt!1006399)))))

(declare-fun b!2818956 () Bool)

(declare-fun res!1173091 () Bool)

(assert (=> b!2818956 (=> (not res!1173091) (not e!1783007))))

(declare-fun l!6581 () List!33165)

(declare-fun tokensListTwoByTwoPredicateSeparableList!671 (LexerInterface!4534 List!33165 List!33164) Bool)

(assert (=> b!2818956 (= res!1173091 (tokensListTwoByTwoPredicateSeparableList!671 thiss!27755 l!6581 rules!4424))))

(declare-fun b!2818957 () Bool)

(declare-fun res!1173089 () Bool)

(assert (=> b!2818957 (=> (not res!1173089) (not e!1783007))))

(declare-fun i!1730 () Int)

(assert (=> b!2818957 (= res!1173089 (and (not ((_ is Nil!33041) l!6581)) (<= i!1730 0)))))

(declare-fun b!2818958 () Bool)

(declare-fun e!1783014 () Bool)

(declare-fun e!1783004 () Bool)

(declare-fun tp!900181 () Bool)

(declare-fun inv!44956 (Token!9288) Bool)

(assert (=> b!2818958 (= e!1783004 (and (inv!44956 (h!38461 l!6581)) e!1783014 tp!900181))))

(declare-fun e!1783013 () Bool)

(assert (=> b!2818959 (= e!1783013 (and tp!900177 tp!900179))))

(declare-fun b!2818960 () Bool)

(declare-fun res!1173093 () Bool)

(assert (=> b!2818960 (=> (not res!1173093) (not e!1783007))))

(declare-fun rulesProduceEachTokenIndividuallyList!1586 (LexerInterface!4534 List!33164 List!33165) Bool)

(assert (=> b!2818960 (= res!1173093 (rulesProduceEachTokenIndividuallyList!1586 thiss!27755 rules!4424 l!6581))))

(declare-fun e!1783010 () Bool)

(assert (=> b!2818961 (= e!1783010 (and tp!900182 tp!900178))))

(declare-fun lt!1006401 () Bool)

(assert (=> b!2818962 (= e!1783007 (not lt!1006401))))

(declare-fun forall!6761 (List!33165 Int) Bool)

(assert (=> b!2818962 (forall!6761 lt!1006399 lambda!103453)))

(declare-datatypes ((Unit!46981 0))(
  ( (Unit!46982) )
))
(declare-fun lt!1006400 () Unit!46981)

(declare-fun lemmaForallSubseq!211 (List!33165 List!33165 Int) Unit!46981)

(assert (=> b!2818962 (= lt!1006400 (lemmaForallSubseq!211 lt!1006399 l!6581 lambda!103453))))

(assert (=> b!2818962 (= lt!1006401 e!1783012)))

(declare-fun res!1173090 () Bool)

(assert (=> b!2818962 (=> res!1173090 e!1783012)))

(assert (=> b!2818962 (= res!1173090 (not ((_ is Cons!33041) lt!1006399)))))

(assert (=> b!2818962 (= lt!1006401 (rulesProduceEachTokenIndividuallyList!1586 thiss!27755 rules!4424 lt!1006399))))

(declare-fun take!537 (List!33165 Int) List!33165)

(assert (=> b!2818962 (= lt!1006399 (take!537 l!6581 i!1730))))

(declare-fun b!2818963 () Bool)

(declare-fun res!1173094 () Bool)

(assert (=> b!2818963 (=> (not res!1173094) (not e!1783007))))

(declare-fun rulesInvariant!3952 (LexerInterface!4534 List!33164) Bool)

(assert (=> b!2818963 (= res!1173094 (rulesInvariant!3952 thiss!27755 rules!4424))))

(declare-fun b!2818964 () Bool)

(declare-fun tp!900175 () Bool)

(declare-fun e!1783009 () Bool)

(declare-fun inv!44953 (String!36321) Bool)

(declare-fun inv!44957 (TokenValueInjection!9774) Bool)

(assert (=> b!2818964 (= e!1783009 (and tp!900175 (inv!44953 (tag!5447 (h!38460 rules!4424))) (inv!44957 (transformation!4943 (h!38460 rules!4424))) e!1783010))))

(declare-fun tp!900174 () Bool)

(declare-fun e!1783006 () Bool)

(declare-fun b!2818965 () Bool)

(assert (=> b!2818965 (= e!1783006 (and tp!900174 (inv!44953 (tag!5447 (rule!7371 (h!38461 l!6581)))) (inv!44957 (transformation!4943 (rule!7371 (h!38461 l!6581)))) e!1783013))))

(declare-fun res!1173092 () Bool)

(assert (=> start!273426 (=> (not res!1173092) (not e!1783007))))

(assert (=> start!273426 (= res!1173092 ((_ is Lexer!4532) thiss!27755))))

(assert (=> start!273426 e!1783007))

(assert (=> start!273426 true))

(declare-fun e!1783005 () Bool)

(assert (=> start!273426 e!1783005))

(assert (=> start!273426 e!1783004))

(declare-fun b!2818966 () Bool)

(assert (=> b!2818966 (= e!1783011 (rulesProduceEachTokenIndividuallyList!1586 thiss!27755 rules!4424 (t!230322 lt!1006399)))))

(declare-fun b!2818967 () Bool)

(declare-fun tp!900180 () Bool)

(declare-fun inv!21 (TokenValue!5173) Bool)

(assert (=> b!2818967 (= e!1783014 (and (inv!21 (value!159195 (h!38461 l!6581))) e!1783006 tp!900180))))

(declare-fun b!2818968 () Bool)

(declare-fun tp!900176 () Bool)

(assert (=> b!2818968 (= e!1783005 (and e!1783009 tp!900176))))

(assert (= (and start!273426 res!1173092) b!2818954))

(assert (= (and b!2818954 res!1173095) b!2818963))

(assert (= (and b!2818963 res!1173094) b!2818960))

(assert (= (and b!2818960 res!1173093) b!2818956))

(assert (= (and b!2818956 res!1173091) b!2818957))

(assert (= (and b!2818957 res!1173089) b!2818962))

(assert (= (and b!2818962 (not res!1173090)) b!2818955))

(assert (= (and b!2818955 res!1173088) b!2818966))

(assert (= b!2818964 b!2818961))

(assert (= b!2818968 b!2818964))

(assert (= (and start!273426 ((_ is Cons!33040) rules!4424)) b!2818968))

(assert (= b!2818965 b!2818959))

(assert (= b!2818967 b!2818965))

(assert (= b!2818958 b!2818967))

(assert (= (and start!273426 ((_ is Cons!33041) l!6581)) b!2818958))

(declare-fun m!3249635 () Bool)

(assert (=> b!2818956 m!3249635))

(declare-fun m!3249637 () Bool)

(assert (=> b!2818958 m!3249637))

(declare-fun m!3249639 () Bool)

(assert (=> b!2818962 m!3249639))

(declare-fun m!3249641 () Bool)

(assert (=> b!2818962 m!3249641))

(declare-fun m!3249643 () Bool)

(assert (=> b!2818962 m!3249643))

(declare-fun m!3249645 () Bool)

(assert (=> b!2818962 m!3249645))

(declare-fun m!3249647 () Bool)

(assert (=> b!2818965 m!3249647))

(declare-fun m!3249649 () Bool)

(assert (=> b!2818965 m!3249649))

(declare-fun m!3249651 () Bool)

(assert (=> b!2818955 m!3249651))

(declare-fun m!3249653 () Bool)

(assert (=> b!2818954 m!3249653))

(declare-fun m!3249655 () Bool)

(assert (=> b!2818966 m!3249655))

(declare-fun m!3249657 () Bool)

(assert (=> b!2818960 m!3249657))

(declare-fun m!3249659 () Bool)

(assert (=> b!2818964 m!3249659))

(declare-fun m!3249661 () Bool)

(assert (=> b!2818964 m!3249661))

(declare-fun m!3249663 () Bool)

(assert (=> b!2818967 m!3249663))

(declare-fun m!3249665 () Bool)

(assert (=> b!2818963 m!3249665))

(check-sat b_and!205877 (not b!2818954) (not b!2818968) (not b_next!81241) b_and!205871 (not b!2818977) (not b!2818962) (not b!2818965) (not b!2818967) (not b!2818956) (not b!2818955) (not b!2818964) b_and!205875 (not b_next!81243) (not b!2818966) (not b!2818960) (not b_next!81237) (not b!2818963) b_and!205873 (not b_next!81239) (not b!2818958))
(check-sat b_and!205877 (not b_next!81241) b_and!205871 b_and!205875 (not b_next!81243) (not b_next!81237) b_and!205873 (not b_next!81239))
(get-model)

(declare-fun d!818569 () Bool)

(assert (=> d!818569 (= (isEmpty!18272 rules!4424) ((_ is Nil!33040) rules!4424))))

(assert (=> b!2818954 d!818569))

(declare-fun d!818571 () Bool)

(assert (=> d!818571 (= (inv!44953 (tag!5447 (rule!7371 (h!38461 l!6581)))) (= (mod (str.len (value!159194 (tag!5447 (rule!7371 (h!38461 l!6581))))) 2) 0))))

(assert (=> b!2818965 d!818571))

(declare-fun d!818573 () Bool)

(declare-fun res!1173105 () Bool)

(declare-fun e!1783027 () Bool)

(assert (=> d!818573 (=> (not res!1173105) (not e!1783027))))

(declare-fun semiInverseModEq!2046 (Int Int) Bool)

(assert (=> d!818573 (= res!1173105 (semiInverseModEq!2046 (toChars!6816 (transformation!4943 (rule!7371 (h!38461 l!6581)))) (toValue!6957 (transformation!4943 (rule!7371 (h!38461 l!6581))))))))

(assert (=> d!818573 (= (inv!44957 (transformation!4943 (rule!7371 (h!38461 l!6581)))) e!1783027)))

(declare-fun b!2818982 () Bool)

(declare-fun equivClasses!1945 (Int Int) Bool)

(assert (=> b!2818982 (= e!1783027 (equivClasses!1945 (toChars!6816 (transformation!4943 (rule!7371 (h!38461 l!6581)))) (toValue!6957 (transformation!4943 (rule!7371 (h!38461 l!6581))))))))

(assert (= (and d!818573 res!1173105) b!2818982))

(declare-fun m!3249667 () Bool)

(assert (=> d!818573 m!3249667))

(declare-fun m!3249669 () Bool)

(assert (=> b!2818982 m!3249669))

(assert (=> b!2818965 d!818573))

(declare-fun bs!517209 () Bool)

(declare-fun d!818575 () Bool)

(assert (= bs!517209 (and d!818575 b!2818962)))

(declare-fun lambda!103460 () Int)

(assert (=> bs!517209 (= (= thiss!27755 Lexer!4532) (= lambda!103460 lambda!103453))))

(declare-fun b!2819034 () Bool)

(declare-fun e!1783068 () Bool)

(assert (=> b!2819034 (= e!1783068 true)))

(declare-fun b!2819033 () Bool)

(declare-fun e!1783067 () Bool)

(assert (=> b!2819033 (= e!1783067 e!1783068)))

(declare-fun b!2819032 () Bool)

(declare-fun e!1783066 () Bool)

(assert (=> b!2819032 (= e!1783066 e!1783067)))

(assert (=> d!818575 e!1783066))

(assert (= b!2819033 b!2819034))

(assert (= b!2819032 b!2819033))

(assert (= (and d!818575 ((_ is Cons!33040) rules!4424)) b!2819032))

(assert (=> b!2819034 (< (dynLambda!13790 order!17495 (toValue!6957 (transformation!4943 (h!38460 rules!4424)))) (dynLambda!13791 order!17497 lambda!103460))))

(assert (=> b!2819034 (< (dynLambda!13792 order!17499 (toChars!6816 (transformation!4943 (h!38460 rules!4424)))) (dynLambda!13791 order!17497 lambda!103460))))

(assert (=> d!818575 true))

(declare-fun lt!1006414 () Bool)

(assert (=> d!818575 (= lt!1006414 (forall!6761 l!6581 lambda!103460))))

(declare-fun e!1783065 () Bool)

(assert (=> d!818575 (= lt!1006414 e!1783065)))

(declare-fun res!1173134 () Bool)

(assert (=> d!818575 (=> res!1173134 e!1783065)))

(assert (=> d!818575 (= res!1173134 (not ((_ is Cons!33041) l!6581)))))

(assert (=> d!818575 (not (isEmpty!18272 rules!4424))))

(assert (=> d!818575 (= (rulesProduceEachTokenIndividuallyList!1586 thiss!27755 rules!4424 l!6581) lt!1006414)))

(declare-fun b!2819030 () Bool)

(declare-fun e!1783064 () Bool)

(assert (=> b!2819030 (= e!1783065 e!1783064)))

(declare-fun res!1173133 () Bool)

(assert (=> b!2819030 (=> (not res!1173133) (not e!1783064))))

(assert (=> b!2819030 (= res!1173133 (rulesProduceIndividualToken!2072 thiss!27755 rules!4424 (h!38461 l!6581)))))

(declare-fun b!2819031 () Bool)

(assert (=> b!2819031 (= e!1783064 (rulesProduceEachTokenIndividuallyList!1586 thiss!27755 rules!4424 (t!230322 l!6581)))))

(assert (= (and d!818575 (not res!1173134)) b!2819030))

(assert (= (and b!2819030 res!1173133) b!2819031))

(declare-fun m!3249711 () Bool)

(assert (=> d!818575 m!3249711))

(assert (=> d!818575 m!3249653))

(declare-fun m!3249713 () Bool)

(assert (=> b!2819030 m!3249713))

(declare-fun m!3249715 () Bool)

(assert (=> b!2819031 m!3249715))

(assert (=> b!2818960 d!818575))

(declare-fun d!818591 () Bool)

(declare-fun res!1173137 () Bool)

(declare-fun e!1783071 () Bool)

(assert (=> d!818591 (=> (not res!1173137) (not e!1783071))))

(declare-fun rulesValid!1816 (LexerInterface!4534 List!33164) Bool)

(assert (=> d!818591 (= res!1173137 (rulesValid!1816 thiss!27755 rules!4424))))

(assert (=> d!818591 (= (rulesInvariant!3952 thiss!27755 rules!4424) e!1783071)))

(declare-fun b!2819039 () Bool)

(declare-datatypes ((List!33167 0))(
  ( (Nil!33043) (Cons!33043 (h!38463 String!36321) (t!230346 List!33167)) )
))
(declare-fun noDuplicateTag!1812 (LexerInterface!4534 List!33164 List!33167) Bool)

(assert (=> b!2819039 (= e!1783071 (noDuplicateTag!1812 thiss!27755 rules!4424 Nil!33043))))

(assert (= (and d!818591 res!1173137) b!2819039))

(declare-fun m!3249717 () Bool)

(assert (=> d!818591 m!3249717))

(declare-fun m!3249719 () Bool)

(assert (=> b!2819039 m!3249719))

(assert (=> b!2818963 d!818591))

(declare-fun d!818593 () Bool)

(declare-fun res!1173142 () Bool)

(declare-fun e!1783074 () Bool)

(assert (=> d!818593 (=> (not res!1173142) (not e!1783074))))

(declare-fun isEmpty!18275 (List!33163) Bool)

(assert (=> d!818593 (= res!1173142 (not (isEmpty!18275 (originalCharacters!5675 (h!38461 l!6581)))))))

(assert (=> d!818593 (= (inv!44956 (h!38461 l!6581)) e!1783074)))

(declare-fun b!2819044 () Bool)

(declare-fun res!1173143 () Bool)

(assert (=> b!2819044 (=> (not res!1173143) (not e!1783074))))

(declare-fun list!12387 (BalanceConc!20138) List!33163)

(declare-fun dynLambda!13795 (Int TokenValue!5173) BalanceConc!20138)

(assert (=> b!2819044 (= res!1173143 (= (originalCharacters!5675 (h!38461 l!6581)) (list!12387 (dynLambda!13795 (toChars!6816 (transformation!4943 (rule!7371 (h!38461 l!6581)))) (value!159195 (h!38461 l!6581))))))))

(declare-fun b!2819045 () Bool)

(declare-fun size!25726 (List!33163) Int)

(assert (=> b!2819045 (= e!1783074 (= (size!25721 (h!38461 l!6581)) (size!25726 (originalCharacters!5675 (h!38461 l!6581)))))))

(assert (= (and d!818593 res!1173142) b!2819044))

(assert (= (and b!2819044 res!1173143) b!2819045))

(declare-fun b_lambda!84311 () Bool)

(assert (=> (not b_lambda!84311) (not b!2819044)))

(declare-fun t!230329 () Bool)

(declare-fun tb!153733 () Bool)

(assert (=> (and b!2818959 (= (toChars!6816 (transformation!4943 (rule!7371 (h!38461 l!6581)))) (toChars!6816 (transformation!4943 (rule!7371 (h!38461 l!6581))))) t!230329) tb!153733))

(declare-fun b!2819050 () Bool)

(declare-fun e!1783077 () Bool)

(declare-fun tp!900185 () Bool)

(declare-fun inv!44960 (Conc!10250) Bool)

(assert (=> b!2819050 (= e!1783077 (and (inv!44960 (c!456896 (dynLambda!13795 (toChars!6816 (transformation!4943 (rule!7371 (h!38461 l!6581)))) (value!159195 (h!38461 l!6581))))) tp!900185))))

(declare-fun result!191362 () Bool)

(declare-fun inv!44961 (BalanceConc!20138) Bool)

(assert (=> tb!153733 (= result!191362 (and (inv!44961 (dynLambda!13795 (toChars!6816 (transformation!4943 (rule!7371 (h!38461 l!6581)))) (value!159195 (h!38461 l!6581)))) e!1783077))))

(assert (= tb!153733 b!2819050))

(declare-fun m!3249721 () Bool)

(assert (=> b!2819050 m!3249721))

(declare-fun m!3249723 () Bool)

(assert (=> tb!153733 m!3249723))

(assert (=> b!2819044 t!230329))

(declare-fun b_and!205879 () Bool)

(assert (= b_and!205873 (and (=> t!230329 result!191362) b_and!205879)))

(declare-fun tb!153735 () Bool)

(declare-fun t!230331 () Bool)

(assert (=> (and b!2818961 (= (toChars!6816 (transformation!4943 (h!38460 rules!4424))) (toChars!6816 (transformation!4943 (rule!7371 (h!38461 l!6581))))) t!230331) tb!153735))

(declare-fun result!191366 () Bool)

(assert (= result!191366 result!191362))

(assert (=> b!2819044 t!230331))

(declare-fun b_and!205881 () Bool)

(assert (= b_and!205877 (and (=> t!230331 result!191366) b_and!205881)))

(declare-fun m!3249725 () Bool)

(assert (=> d!818593 m!3249725))

(declare-fun m!3249727 () Bool)

(assert (=> b!2819044 m!3249727))

(assert (=> b!2819044 m!3249727))

(declare-fun m!3249729 () Bool)

(assert (=> b!2819044 m!3249729))

(declare-fun m!3249731 () Bool)

(assert (=> b!2819045 m!3249731))

(assert (=> b!2818958 d!818593))

(declare-fun d!818595 () Bool)

(assert (=> d!818595 (= (inv!44953 (tag!5447 (h!38460 rules!4424))) (= (mod (str.len (value!159194 (tag!5447 (h!38460 rules!4424)))) 2) 0))))

(assert (=> b!2818964 d!818595))

(declare-fun d!818597 () Bool)

(declare-fun res!1173144 () Bool)

(declare-fun e!1783078 () Bool)

(assert (=> d!818597 (=> (not res!1173144) (not e!1783078))))

(assert (=> d!818597 (= res!1173144 (semiInverseModEq!2046 (toChars!6816 (transformation!4943 (h!38460 rules!4424))) (toValue!6957 (transformation!4943 (h!38460 rules!4424)))))))

(assert (=> d!818597 (= (inv!44957 (transformation!4943 (h!38460 rules!4424))) e!1783078)))

(declare-fun b!2819051 () Bool)

(assert (=> b!2819051 (= e!1783078 (equivClasses!1945 (toChars!6816 (transformation!4943 (h!38460 rules!4424))) (toValue!6957 (transformation!4943 (h!38460 rules!4424)))))))

(assert (= (and d!818597 res!1173144) b!2819051))

(declare-fun m!3249733 () Bool)

(assert (=> d!818597 m!3249733))

(declare-fun m!3249735 () Bool)

(assert (=> b!2819051 m!3249735))

(assert (=> b!2818964 d!818597))

(declare-fun b!2819062 () Bool)

(declare-fun res!1173147 () Bool)

(declare-fun e!1783085 () Bool)

(assert (=> b!2819062 (=> res!1173147 e!1783085)))

(assert (=> b!2819062 (= res!1173147 (not ((_ is IntegerValue!15521) (value!159195 (h!38461 l!6581)))))))

(declare-fun e!1783086 () Bool)

(assert (=> b!2819062 (= e!1783086 e!1783085)))

(declare-fun b!2819063 () Bool)

(declare-fun e!1783087 () Bool)

(assert (=> b!2819063 (= e!1783087 e!1783086)))

(declare-fun c!456908 () Bool)

(assert (=> b!2819063 (= c!456908 ((_ is IntegerValue!15520) (value!159195 (h!38461 l!6581))))))

(declare-fun b!2819064 () Bool)

(declare-fun inv!17 (TokenValue!5173) Bool)

(assert (=> b!2819064 (= e!1783086 (inv!17 (value!159195 (h!38461 l!6581))))))

(declare-fun b!2819065 () Bool)

(declare-fun inv!16 (TokenValue!5173) Bool)

(assert (=> b!2819065 (= e!1783087 (inv!16 (value!159195 (h!38461 l!6581))))))

(declare-fun b!2819066 () Bool)

(declare-fun inv!15 (TokenValue!5173) Bool)

(assert (=> b!2819066 (= e!1783085 (inv!15 (value!159195 (h!38461 l!6581))))))

(declare-fun d!818599 () Bool)

(declare-fun c!456909 () Bool)

(assert (=> d!818599 (= c!456909 ((_ is IntegerValue!15519) (value!159195 (h!38461 l!6581))))))

(assert (=> d!818599 (= (inv!21 (value!159195 (h!38461 l!6581))) e!1783087)))

(assert (= (and d!818599 c!456909) b!2819065))

(assert (= (and d!818599 (not c!456909)) b!2819063))

(assert (= (and b!2819063 c!456908) b!2819064))

(assert (= (and b!2819063 (not c!456908)) b!2819062))

(assert (= (and b!2819062 (not res!1173147)) b!2819066))

(declare-fun m!3249737 () Bool)

(assert (=> b!2819064 m!3249737))

(declare-fun m!3249739 () Bool)

(assert (=> b!2819065 m!3249739))

(declare-fun m!3249741 () Bool)

(assert (=> b!2819066 m!3249741))

(assert (=> b!2818967 d!818599))

(declare-fun d!818601 () Bool)

(declare-fun res!1173152 () Bool)

(declare-fun e!1783092 () Bool)

(assert (=> d!818601 (=> res!1173152 e!1783092)))

(assert (=> d!818601 (= res!1173152 ((_ is Nil!33041) lt!1006399))))

(assert (=> d!818601 (= (forall!6761 lt!1006399 lambda!103453) e!1783092)))

(declare-fun b!2819071 () Bool)

(declare-fun e!1783093 () Bool)

(assert (=> b!2819071 (= e!1783092 e!1783093)))

(declare-fun res!1173153 () Bool)

(assert (=> b!2819071 (=> (not res!1173153) (not e!1783093))))

(declare-fun dynLambda!13796 (Int Token!9288) Bool)

(assert (=> b!2819071 (= res!1173153 (dynLambda!13796 lambda!103453 (h!38461 lt!1006399)))))

(declare-fun b!2819072 () Bool)

(assert (=> b!2819072 (= e!1783093 (forall!6761 (t!230322 lt!1006399) lambda!103453))))

(assert (= (and d!818601 (not res!1173152)) b!2819071))

(assert (= (and b!2819071 res!1173153) b!2819072))

(declare-fun b_lambda!84313 () Bool)

(assert (=> (not b_lambda!84313) (not b!2819071)))

(declare-fun m!3249743 () Bool)

(assert (=> b!2819071 m!3249743))

(declare-fun m!3249745 () Bool)

(assert (=> b!2819072 m!3249745))

(assert (=> b!2818962 d!818601))

(declare-fun d!818603 () Bool)

(assert (=> d!818603 (forall!6761 lt!1006399 lambda!103453)))

(declare-fun lt!1006417 () Unit!46981)

(declare-fun choose!16671 (List!33165 List!33165 Int) Unit!46981)

(assert (=> d!818603 (= lt!1006417 (choose!16671 lt!1006399 l!6581 lambda!103453))))

(assert (=> d!818603 (forall!6761 l!6581 lambda!103453)))

(assert (=> d!818603 (= (lemmaForallSubseq!211 lt!1006399 l!6581 lambda!103453) lt!1006417)))

(declare-fun bs!517210 () Bool)

(assert (= bs!517210 d!818603))

(assert (=> bs!517210 m!3249639))

(declare-fun m!3249747 () Bool)

(assert (=> bs!517210 m!3249747))

(declare-fun m!3249749 () Bool)

(assert (=> bs!517210 m!3249749))

(assert (=> b!2818962 d!818603))

(declare-fun bs!517211 () Bool)

(declare-fun d!818605 () Bool)

(assert (= bs!517211 (and d!818605 b!2818962)))

(declare-fun lambda!103461 () Int)

(assert (=> bs!517211 (= (= thiss!27755 Lexer!4532) (= lambda!103461 lambda!103453))))

(declare-fun bs!517212 () Bool)

(assert (= bs!517212 (and d!818605 d!818575)))

(assert (=> bs!517212 (= lambda!103461 lambda!103460)))

(declare-fun b!2819077 () Bool)

(declare-fun e!1783098 () Bool)

(assert (=> b!2819077 (= e!1783098 true)))

(declare-fun b!2819076 () Bool)

(declare-fun e!1783097 () Bool)

(assert (=> b!2819076 (= e!1783097 e!1783098)))

(declare-fun b!2819075 () Bool)

(declare-fun e!1783096 () Bool)

(assert (=> b!2819075 (= e!1783096 e!1783097)))

(assert (=> d!818605 e!1783096))

(assert (= b!2819076 b!2819077))

(assert (= b!2819075 b!2819076))

(assert (= (and d!818605 ((_ is Cons!33040) rules!4424)) b!2819075))

(assert (=> b!2819077 (< (dynLambda!13790 order!17495 (toValue!6957 (transformation!4943 (h!38460 rules!4424)))) (dynLambda!13791 order!17497 lambda!103461))))

(assert (=> b!2819077 (< (dynLambda!13792 order!17499 (toChars!6816 (transformation!4943 (h!38460 rules!4424)))) (dynLambda!13791 order!17497 lambda!103461))))

(assert (=> d!818605 true))

(declare-fun lt!1006418 () Bool)

(assert (=> d!818605 (= lt!1006418 (forall!6761 lt!1006399 lambda!103461))))

(declare-fun e!1783095 () Bool)

(assert (=> d!818605 (= lt!1006418 e!1783095)))

(declare-fun res!1173155 () Bool)

(assert (=> d!818605 (=> res!1173155 e!1783095)))

(assert (=> d!818605 (= res!1173155 (not ((_ is Cons!33041) lt!1006399)))))

(assert (=> d!818605 (not (isEmpty!18272 rules!4424))))

(assert (=> d!818605 (= (rulesProduceEachTokenIndividuallyList!1586 thiss!27755 rules!4424 lt!1006399) lt!1006418)))

(declare-fun b!2819073 () Bool)

(declare-fun e!1783094 () Bool)

(assert (=> b!2819073 (= e!1783095 e!1783094)))

(declare-fun res!1173154 () Bool)

(assert (=> b!2819073 (=> (not res!1173154) (not e!1783094))))

(assert (=> b!2819073 (= res!1173154 (rulesProduceIndividualToken!2072 thiss!27755 rules!4424 (h!38461 lt!1006399)))))

(declare-fun b!2819074 () Bool)

(assert (=> b!2819074 (= e!1783094 (rulesProduceEachTokenIndividuallyList!1586 thiss!27755 rules!4424 (t!230322 lt!1006399)))))

(assert (= (and d!818605 (not res!1173155)) b!2819073))

(assert (= (and b!2819073 res!1173154) b!2819074))

(declare-fun m!3249751 () Bool)

(assert (=> d!818605 m!3249751))

(assert (=> d!818605 m!3249653))

(assert (=> b!2819073 m!3249651))

(assert (=> b!2819074 m!3249655))

(assert (=> b!2818962 d!818605))

(declare-fun b!2819092 () Bool)

(declare-fun e!1783109 () List!33165)

(assert (=> b!2819092 (= e!1783109 Nil!33041)))

(declare-fun b!2819093 () Bool)

(declare-fun e!1783108 () Int)

(assert (=> b!2819093 (= e!1783108 0)))

(declare-fun d!818607 () Bool)

(declare-fun e!1783107 () Bool)

(assert (=> d!818607 e!1783107))

(declare-fun res!1173158 () Bool)

(assert (=> d!818607 (=> (not res!1173158) (not e!1783107))))

(declare-fun lt!1006421 () List!33165)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4606 (List!33165) (InoxSet Token!9288))

(assert (=> d!818607 (= res!1173158 (= ((_ map implies) (content!4606 lt!1006421) (content!4606 l!6581)) ((as const (InoxSet Token!9288)) true)))))

(assert (=> d!818607 (= lt!1006421 e!1783109)))

(declare-fun c!456918 () Bool)

(assert (=> d!818607 (= c!456918 (or ((_ is Nil!33041) l!6581) (<= i!1730 0)))))

(assert (=> d!818607 (= (take!537 l!6581 i!1730) lt!1006421)))

(declare-fun b!2819094 () Bool)

(assert (=> b!2819094 (= e!1783109 (Cons!33041 (h!38461 l!6581) (take!537 (t!230322 l!6581) (- i!1730 1))))))

(declare-fun b!2819095 () Bool)

(declare-fun e!1783110 () Int)

(declare-fun size!25727 (List!33165) Int)

(assert (=> b!2819095 (= e!1783110 (size!25727 l!6581))))

(declare-fun b!2819096 () Bool)

(assert (=> b!2819096 (= e!1783108 e!1783110)))

(declare-fun c!456916 () Bool)

(assert (=> b!2819096 (= c!456916 (>= i!1730 (size!25727 l!6581)))))

(declare-fun b!2819097 () Bool)

(assert (=> b!2819097 (= e!1783107 (= (size!25727 lt!1006421) e!1783108))))

(declare-fun c!456917 () Bool)

(assert (=> b!2819097 (= c!456917 (<= i!1730 0))))

(declare-fun b!2819098 () Bool)

(assert (=> b!2819098 (= e!1783110 i!1730)))

(assert (= (and d!818607 c!456918) b!2819092))

(assert (= (and d!818607 (not c!456918)) b!2819094))

(assert (= (and d!818607 res!1173158) b!2819097))

(assert (= (and b!2819097 c!456917) b!2819093))

(assert (= (and b!2819097 (not c!456917)) b!2819096))

(assert (= (and b!2819096 c!456916) b!2819095))

(assert (= (and b!2819096 (not c!456916)) b!2819098))

(declare-fun m!3249753 () Bool)

(assert (=> b!2819097 m!3249753))

(declare-fun m!3249755 () Bool)

(assert (=> b!2819094 m!3249755))

(declare-fun m!3249757 () Bool)

(assert (=> b!2819095 m!3249757))

(assert (=> b!2819096 m!3249757))

(declare-fun m!3249759 () Bool)

(assert (=> d!818607 m!3249759))

(declare-fun m!3249761 () Bool)

(assert (=> d!818607 m!3249761))

(assert (=> b!2818962 d!818607))

(declare-fun d!818609 () Bool)

(declare-fun lt!1006455 () Bool)

(declare-fun e!1783195 () Bool)

(assert (=> d!818609 (= lt!1006455 e!1783195)))

(declare-fun res!1173193 () Bool)

(assert (=> d!818609 (=> (not res!1173193) (not e!1783195))))

(declare-datatypes ((IArray!20509 0))(
  ( (IArray!20510 (innerList!10312 List!33165)) )
))
(declare-datatypes ((Conc!10252 0))(
  ( (Node!10252 (left!24946 Conc!10252) (right!25276 Conc!10252) (csize!20734 Int) (cheight!10463 Int)) (Leaf!15615 (xs!13364 IArray!20509) (csize!20735 Int)) (Empty!10252) )
))
(declare-datatypes ((BalanceConc!20142 0))(
  ( (BalanceConc!20143 (c!456929 Conc!10252)) )
))
(declare-fun list!12388 (BalanceConc!20142) List!33165)

(declare-datatypes ((tuple2!33368 0))(
  ( (tuple2!33369 (_1!19777 BalanceConc!20142) (_2!19777 BalanceConc!20138)) )
))
(declare-fun lex!1984 (LexerInterface!4534 List!33164 BalanceConc!20138) tuple2!33368)

(declare-fun print!1703 (LexerInterface!4534 BalanceConc!20142) BalanceConc!20138)

(declare-fun singletonSeq!2125 (Token!9288) BalanceConc!20142)

(assert (=> d!818609 (= res!1173193 (= (list!12388 (_1!19777 (lex!1984 thiss!27755 rules!4424 (print!1703 thiss!27755 (singletonSeq!2125 (h!38461 lt!1006399)))))) (list!12388 (singletonSeq!2125 (h!38461 lt!1006399)))))))

(declare-fun e!1783194 () Bool)

(assert (=> d!818609 (= lt!1006455 e!1783194)))

(declare-fun res!1173194 () Bool)

(assert (=> d!818609 (=> (not res!1173194) (not e!1783194))))

(declare-fun lt!1006454 () tuple2!33368)

(declare-fun size!25728 (BalanceConc!20142) Int)

(assert (=> d!818609 (= res!1173194 (= (size!25728 (_1!19777 lt!1006454)) 1))))

(assert (=> d!818609 (= lt!1006454 (lex!1984 thiss!27755 rules!4424 (print!1703 thiss!27755 (singletonSeq!2125 (h!38461 lt!1006399)))))))

(assert (=> d!818609 (not (isEmpty!18272 rules!4424))))

(assert (=> d!818609 (= (rulesProduceIndividualToken!2072 thiss!27755 rules!4424 (h!38461 lt!1006399)) lt!1006455)))

(declare-fun b!2819209 () Bool)

(declare-fun res!1173192 () Bool)

(assert (=> b!2819209 (=> (not res!1173192) (not e!1783194))))

(declare-fun apply!7716 (BalanceConc!20142 Int) Token!9288)

(assert (=> b!2819209 (= res!1173192 (= (apply!7716 (_1!19777 lt!1006454) 0) (h!38461 lt!1006399)))))

(declare-fun b!2819210 () Bool)

(declare-fun isEmpty!18276 (BalanceConc!20138) Bool)

(assert (=> b!2819210 (= e!1783194 (isEmpty!18276 (_2!19777 lt!1006454)))))

(declare-fun b!2819211 () Bool)

(assert (=> b!2819211 (= e!1783195 (isEmpty!18276 (_2!19777 (lex!1984 thiss!27755 rules!4424 (print!1703 thiss!27755 (singletonSeq!2125 (h!38461 lt!1006399)))))))))

(assert (= (and d!818609 res!1173194) b!2819209))

(assert (= (and b!2819209 res!1173192) b!2819210))

(assert (= (and d!818609 res!1173193) b!2819211))

(declare-fun m!3249831 () Bool)

(assert (=> d!818609 m!3249831))

(declare-fun m!3249833 () Bool)

(assert (=> d!818609 m!3249833))

(declare-fun m!3249835 () Bool)

(assert (=> d!818609 m!3249835))

(declare-fun m!3249837 () Bool)

(assert (=> d!818609 m!3249837))

(assert (=> d!818609 m!3249835))

(declare-fun m!3249839 () Bool)

(assert (=> d!818609 m!3249839))

(assert (=> d!818609 m!3249839))

(declare-fun m!3249841 () Bool)

(assert (=> d!818609 m!3249841))

(assert (=> d!818609 m!3249653))

(assert (=> d!818609 m!3249835))

(declare-fun m!3249843 () Bool)

(assert (=> b!2819209 m!3249843))

(declare-fun m!3249845 () Bool)

(assert (=> b!2819210 m!3249845))

(assert (=> b!2819211 m!3249835))

(assert (=> b!2819211 m!3249835))

(assert (=> b!2819211 m!3249839))

(assert (=> b!2819211 m!3249839))

(assert (=> b!2819211 m!3249841))

(declare-fun m!3249847 () Bool)

(assert (=> b!2819211 m!3249847))

(assert (=> b!2818955 d!818609))

(declare-fun bs!517218 () Bool)

(declare-fun d!818629 () Bool)

(assert (= bs!517218 (and d!818629 b!2818962)))

(declare-fun lambda!103463 () Int)

(assert (=> bs!517218 (= (= thiss!27755 Lexer!4532) (= lambda!103463 lambda!103453))))

(declare-fun bs!517219 () Bool)

(assert (= bs!517219 (and d!818629 d!818575)))

(assert (=> bs!517219 (= lambda!103463 lambda!103460)))

(declare-fun bs!517220 () Bool)

(assert (= bs!517220 (and d!818629 d!818605)))

(assert (=> bs!517220 (= lambda!103463 lambda!103461)))

(declare-fun b!2819216 () Bool)

(declare-fun e!1783200 () Bool)

(assert (=> b!2819216 (= e!1783200 true)))

(declare-fun b!2819215 () Bool)

(declare-fun e!1783199 () Bool)

(assert (=> b!2819215 (= e!1783199 e!1783200)))

(declare-fun b!2819214 () Bool)

(declare-fun e!1783198 () Bool)

(assert (=> b!2819214 (= e!1783198 e!1783199)))

(assert (=> d!818629 e!1783198))

(assert (= b!2819215 b!2819216))

(assert (= b!2819214 b!2819215))

(assert (= (and d!818629 ((_ is Cons!33040) rules!4424)) b!2819214))

(assert (=> b!2819216 (< (dynLambda!13790 order!17495 (toValue!6957 (transformation!4943 (h!38460 rules!4424)))) (dynLambda!13791 order!17497 lambda!103463))))

(assert (=> b!2819216 (< (dynLambda!13792 order!17499 (toChars!6816 (transformation!4943 (h!38460 rules!4424)))) (dynLambda!13791 order!17497 lambda!103463))))

(assert (=> d!818629 true))

(declare-fun lt!1006456 () Bool)

(assert (=> d!818629 (= lt!1006456 (forall!6761 (t!230322 lt!1006399) lambda!103463))))

(declare-fun e!1783197 () Bool)

(assert (=> d!818629 (= lt!1006456 e!1783197)))

(declare-fun res!1173196 () Bool)

(assert (=> d!818629 (=> res!1173196 e!1783197)))

(assert (=> d!818629 (= res!1173196 (not ((_ is Cons!33041) (t!230322 lt!1006399))))))

(assert (=> d!818629 (not (isEmpty!18272 rules!4424))))

(assert (=> d!818629 (= (rulesProduceEachTokenIndividuallyList!1586 thiss!27755 rules!4424 (t!230322 lt!1006399)) lt!1006456)))

(declare-fun b!2819212 () Bool)

(declare-fun e!1783196 () Bool)

(assert (=> b!2819212 (= e!1783197 e!1783196)))

(declare-fun res!1173195 () Bool)

(assert (=> b!2819212 (=> (not res!1173195) (not e!1783196))))

(assert (=> b!2819212 (= res!1173195 (rulesProduceIndividualToken!2072 thiss!27755 rules!4424 (h!38461 (t!230322 lt!1006399))))))

(declare-fun b!2819213 () Bool)

(assert (=> b!2819213 (= e!1783196 (rulesProduceEachTokenIndividuallyList!1586 thiss!27755 rules!4424 (t!230322 (t!230322 lt!1006399))))))

(assert (= (and d!818629 (not res!1173196)) b!2819212))

(assert (= (and b!2819212 res!1173195) b!2819213))

(declare-fun m!3249849 () Bool)

(assert (=> d!818629 m!3249849))

(assert (=> d!818629 m!3249653))

(declare-fun m!3249851 () Bool)

(assert (=> b!2819212 m!3249851))

(declare-fun m!3249853 () Bool)

(assert (=> b!2819213 m!3249853))

(assert (=> b!2818966 d!818629))

(declare-fun d!818631 () Bool)

(declare-fun res!1173201 () Bool)

(declare-fun e!1783205 () Bool)

(assert (=> d!818631 (=> res!1173201 e!1783205)))

(assert (=> d!818631 (= res!1173201 (or (not ((_ is Cons!33041) l!6581)) (not ((_ is Cons!33041) (t!230322 l!6581)))))))

(assert (=> d!818631 (= (tokensListTwoByTwoPredicateSeparableList!671 thiss!27755 l!6581 rules!4424) e!1783205)))

(declare-fun b!2819221 () Bool)

(declare-fun e!1783206 () Bool)

(assert (=> b!2819221 (= e!1783205 e!1783206)))

(declare-fun res!1173202 () Bool)

(assert (=> b!2819221 (=> (not res!1173202) (not e!1783206))))

(declare-fun separableTokensPredicate!887 (LexerInterface!4534 Token!9288 Token!9288 List!33164) Bool)

(assert (=> b!2819221 (= res!1173202 (separableTokensPredicate!887 thiss!27755 (h!38461 l!6581) (h!38461 (t!230322 l!6581)) rules!4424))))

(declare-fun lt!1006475 () Unit!46981)

(declare-fun Unit!46986 () Unit!46981)

(assert (=> b!2819221 (= lt!1006475 Unit!46986)))

(declare-fun size!25729 (BalanceConc!20138) Int)

(declare-fun charsOf!3062 (Token!9288) BalanceConc!20138)

(assert (=> b!2819221 (> (size!25729 (charsOf!3062 (h!38461 (t!230322 l!6581)))) 0)))

(declare-fun lt!1006471 () Unit!46981)

(declare-fun Unit!46987 () Unit!46981)

(assert (=> b!2819221 (= lt!1006471 Unit!46987)))

(assert (=> b!2819221 (rulesProduceIndividualToken!2072 thiss!27755 rules!4424 (h!38461 (t!230322 l!6581)))))

(declare-fun lt!1006473 () Unit!46981)

(declare-fun Unit!46988 () Unit!46981)

(assert (=> b!2819221 (= lt!1006473 Unit!46988)))

(assert (=> b!2819221 (rulesProduceIndividualToken!2072 thiss!27755 rules!4424 (h!38461 l!6581))))

(declare-fun lt!1006472 () Unit!46981)

(declare-fun lt!1006476 () Unit!46981)

(assert (=> b!2819221 (= lt!1006472 lt!1006476)))

(assert (=> b!2819221 (rulesProduceIndividualToken!2072 thiss!27755 rules!4424 (h!38461 (t!230322 l!6581)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!701 (LexerInterface!4534 List!33164 List!33165 Token!9288) Unit!46981)

(assert (=> b!2819221 (= lt!1006476 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!701 thiss!27755 rules!4424 l!6581 (h!38461 (t!230322 l!6581))))))

(declare-fun lt!1006474 () Unit!46981)

(declare-fun lt!1006477 () Unit!46981)

(assert (=> b!2819221 (= lt!1006474 lt!1006477)))

(assert (=> b!2819221 (rulesProduceIndividualToken!2072 thiss!27755 rules!4424 (h!38461 l!6581))))

(assert (=> b!2819221 (= lt!1006477 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!701 thiss!27755 rules!4424 l!6581 (h!38461 l!6581)))))

(declare-fun b!2819222 () Bool)

(assert (=> b!2819222 (= e!1783206 (tokensListTwoByTwoPredicateSeparableList!671 thiss!27755 (Cons!33041 (h!38461 (t!230322 l!6581)) (t!230322 (t!230322 l!6581))) rules!4424))))

(assert (= (and d!818631 (not res!1173201)) b!2819221))

(assert (= (and b!2819221 res!1173202) b!2819222))

(declare-fun m!3249855 () Bool)

(assert (=> b!2819221 m!3249855))

(assert (=> b!2819221 m!3249713))

(declare-fun m!3249857 () Bool)

(assert (=> b!2819221 m!3249857))

(declare-fun m!3249859 () Bool)

(assert (=> b!2819221 m!3249859))

(declare-fun m!3249861 () Bool)

(assert (=> b!2819221 m!3249861))

(assert (=> b!2819221 m!3249859))

(declare-fun m!3249863 () Bool)

(assert (=> b!2819221 m!3249863))

(declare-fun m!3249865 () Bool)

(assert (=> b!2819221 m!3249865))

(declare-fun m!3249867 () Bool)

(assert (=> b!2819222 m!3249867))

(assert (=> b!2818956 d!818631))

(declare-fun b!2819234 () Bool)

(declare-fun e!1783209 () Bool)

(declare-fun tp!900249 () Bool)

(declare-fun tp!900250 () Bool)

(assert (=> b!2819234 (= e!1783209 (and tp!900249 tp!900250))))

(declare-fun b!2819235 () Bool)

(declare-fun tp!900253 () Bool)

(assert (=> b!2819235 (= e!1783209 tp!900253)))

(assert (=> b!2818965 (= tp!900174 e!1783209)))

(declare-fun b!2819233 () Bool)

(declare-fun tp_is_empty!14439 () Bool)

(assert (=> b!2819233 (= e!1783209 tp_is_empty!14439)))

(declare-fun b!2819236 () Bool)

(declare-fun tp!900252 () Bool)

(declare-fun tp!900251 () Bool)

(assert (=> b!2819236 (= e!1783209 (and tp!900252 tp!900251))))

(assert (= (and b!2818965 ((_ is ElementMatch!8333) (regex!4943 (rule!7371 (h!38461 l!6581))))) b!2819233))

(assert (= (and b!2818965 ((_ is Concat!13507) (regex!4943 (rule!7371 (h!38461 l!6581))))) b!2819234))

(assert (= (and b!2818965 ((_ is Star!8333) (regex!4943 (rule!7371 (h!38461 l!6581))))) b!2819235))

(assert (= (and b!2818965 ((_ is Union!8333) (regex!4943 (rule!7371 (h!38461 l!6581))))) b!2819236))

(declare-fun b!2819250 () Bool)

(declare-fun b_free!80549 () Bool)

(declare-fun b_next!81253 () Bool)

(assert (=> b!2819250 (= b_free!80549 (not b_next!81253))))

(declare-fun tp!900266 () Bool)

(declare-fun b_and!205895 () Bool)

(assert (=> b!2819250 (= tp!900266 b_and!205895)))

(declare-fun b_free!80551 () Bool)

(declare-fun b_next!81255 () Bool)

(assert (=> b!2819250 (= b_free!80551 (not b_next!81255))))

(declare-fun t!230343 () Bool)

(declare-fun tb!153745 () Bool)

(assert (=> (and b!2819250 (= (toChars!6816 (transformation!4943 (rule!7371 (h!38461 (t!230322 l!6581))))) (toChars!6816 (transformation!4943 (rule!7371 (h!38461 l!6581))))) t!230343) tb!153745))

(declare-fun result!191390 () Bool)

(assert (= result!191390 result!191362))

(assert (=> b!2819044 t!230343))

(declare-fun b_and!205897 () Bool)

(declare-fun tp!900268 () Bool)

(assert (=> b!2819250 (= tp!900268 (and (=> t!230343 result!191390) b_and!205897))))

(declare-fun e!1783223 () Bool)

(assert (=> b!2819250 (= e!1783223 (and tp!900266 tp!900268))))

(declare-fun tp!900264 () Bool)

(declare-fun b!2819249 () Bool)

(declare-fun e!1783224 () Bool)

(assert (=> b!2819249 (= e!1783224 (and tp!900264 (inv!44953 (tag!5447 (rule!7371 (h!38461 (t!230322 l!6581))))) (inv!44957 (transformation!4943 (rule!7371 (h!38461 (t!230322 l!6581))))) e!1783223))))

(declare-fun b!2819247 () Bool)

(declare-fun e!1783226 () Bool)

(declare-fun e!1783225 () Bool)

(declare-fun tp!900267 () Bool)

(assert (=> b!2819247 (= e!1783226 (and (inv!44956 (h!38461 (t!230322 l!6581))) e!1783225 tp!900267))))

(declare-fun b!2819248 () Bool)

(declare-fun tp!900265 () Bool)

(assert (=> b!2819248 (= e!1783225 (and (inv!21 (value!159195 (h!38461 (t!230322 l!6581)))) e!1783224 tp!900265))))

(assert (=> b!2818958 (= tp!900181 e!1783226)))

(assert (= b!2819249 b!2819250))

(assert (= b!2819248 b!2819249))

(assert (= b!2819247 b!2819248))

(assert (= (and b!2818958 ((_ is Cons!33041) (t!230322 l!6581))) b!2819247))

(declare-fun m!3249869 () Bool)

(assert (=> b!2819249 m!3249869))

(declare-fun m!3249871 () Bool)

(assert (=> b!2819249 m!3249871))

(declare-fun m!3249873 () Bool)

(assert (=> b!2819247 m!3249873))

(declare-fun m!3249875 () Bool)

(assert (=> b!2819248 m!3249875))

(declare-fun b!2819252 () Bool)

(declare-fun e!1783228 () Bool)

(declare-fun tp!900269 () Bool)

(declare-fun tp!900270 () Bool)

(assert (=> b!2819252 (= e!1783228 (and tp!900269 tp!900270))))

(declare-fun b!2819253 () Bool)

(declare-fun tp!900273 () Bool)

(assert (=> b!2819253 (= e!1783228 tp!900273)))

(assert (=> b!2818964 (= tp!900175 e!1783228)))

(declare-fun b!2819251 () Bool)

(assert (=> b!2819251 (= e!1783228 tp_is_empty!14439)))

(declare-fun b!2819254 () Bool)

(declare-fun tp!900272 () Bool)

(declare-fun tp!900271 () Bool)

(assert (=> b!2819254 (= e!1783228 (and tp!900272 tp!900271))))

(assert (= (and b!2818964 ((_ is ElementMatch!8333) (regex!4943 (h!38460 rules!4424)))) b!2819251))

(assert (= (and b!2818964 ((_ is Concat!13507) (regex!4943 (h!38460 rules!4424)))) b!2819252))

(assert (= (and b!2818964 ((_ is Star!8333) (regex!4943 (h!38460 rules!4424)))) b!2819253))

(assert (= (and b!2818964 ((_ is Union!8333) (regex!4943 (h!38460 rules!4424)))) b!2819254))

(declare-fun b!2819259 () Bool)

(declare-fun e!1783231 () Bool)

(declare-fun tp!900276 () Bool)

(assert (=> b!2819259 (= e!1783231 (and tp_is_empty!14439 tp!900276))))

(assert (=> b!2818967 (= tp!900180 e!1783231)))

(assert (= (and b!2818967 ((_ is Cons!33039) (originalCharacters!5675 (h!38461 l!6581)))) b!2819259))

(declare-fun b!2819262 () Bool)

(declare-fun e!1783234 () Bool)

(assert (=> b!2819262 (= e!1783234 true)))

(declare-fun b!2819261 () Bool)

(declare-fun e!1783233 () Bool)

(assert (=> b!2819261 (= e!1783233 e!1783234)))

(declare-fun b!2819260 () Bool)

(declare-fun e!1783232 () Bool)

(assert (=> b!2819260 (= e!1783232 e!1783233)))

(assert (=> b!2818977 e!1783232))

(assert (= b!2819261 b!2819262))

(assert (= b!2819260 b!2819261))

(assert (= (and b!2818977 ((_ is Cons!33040) (t!230321 rules!4424))) b!2819260))

(assert (=> b!2819262 (< (dynLambda!13790 order!17495 (toValue!6957 (transformation!4943 (h!38460 (t!230321 rules!4424))))) (dynLambda!13791 order!17497 lambda!103453))))

(assert (=> b!2819262 (< (dynLambda!13792 order!17499 (toChars!6816 (transformation!4943 (h!38460 (t!230321 rules!4424))))) (dynLambda!13791 order!17497 lambda!103453))))

(declare-fun b!2819273 () Bool)

(declare-fun b_free!80553 () Bool)

(declare-fun b_next!81257 () Bool)

(assert (=> b!2819273 (= b_free!80553 (not b_next!81257))))

(declare-fun tp!900287 () Bool)

(declare-fun b_and!205899 () Bool)

(assert (=> b!2819273 (= tp!900287 b_and!205899)))

(declare-fun b_free!80555 () Bool)

(declare-fun b_next!81259 () Bool)

(assert (=> b!2819273 (= b_free!80555 (not b_next!81259))))

(declare-fun tb!153747 () Bool)

(declare-fun t!230345 () Bool)

(assert (=> (and b!2819273 (= (toChars!6816 (transformation!4943 (h!38460 (t!230321 rules!4424)))) (toChars!6816 (transformation!4943 (rule!7371 (h!38461 l!6581))))) t!230345) tb!153747))

(declare-fun result!191396 () Bool)

(assert (= result!191396 result!191362))

(assert (=> b!2819044 t!230345))

(declare-fun b_and!205901 () Bool)

(declare-fun tp!900286 () Bool)

(assert (=> b!2819273 (= tp!900286 (and (=> t!230345 result!191396) b_and!205901))))

(declare-fun e!1783246 () Bool)

(assert (=> b!2819273 (= e!1783246 (and tp!900287 tp!900286))))

(declare-fun tp!900288 () Bool)

(declare-fun b!2819272 () Bool)

(declare-fun e!1783243 () Bool)

(assert (=> b!2819272 (= e!1783243 (and tp!900288 (inv!44953 (tag!5447 (h!38460 (t!230321 rules!4424)))) (inv!44957 (transformation!4943 (h!38460 (t!230321 rules!4424)))) e!1783246))))

(declare-fun b!2819271 () Bool)

(declare-fun e!1783245 () Bool)

(declare-fun tp!900285 () Bool)

(assert (=> b!2819271 (= e!1783245 (and e!1783243 tp!900285))))

(assert (=> b!2818968 (= tp!900176 e!1783245)))

(assert (= b!2819272 b!2819273))

(assert (= b!2819271 b!2819272))

(assert (= (and b!2818968 ((_ is Cons!33040) (t!230321 rules!4424))) b!2819271))

(declare-fun m!3249877 () Bool)

(assert (=> b!2819272 m!3249877))

(declare-fun m!3249879 () Bool)

(assert (=> b!2819272 m!3249879))

(declare-fun b_lambda!84323 () Bool)

(assert (= b_lambda!84313 (or b!2818962 b_lambda!84323)))

(declare-fun bs!517221 () Bool)

(declare-fun d!818633 () Bool)

(assert (= bs!517221 (and d!818633 b!2818962)))

(assert (=> bs!517221 (= (dynLambda!13796 lambda!103453 (h!38461 lt!1006399)) (rulesProduceIndividualToken!2072 Lexer!4532 rules!4424 (h!38461 lt!1006399)))))

(declare-fun m!3249881 () Bool)

(assert (=> bs!517221 m!3249881))

(assert (=> b!2819071 d!818633))

(declare-fun b_lambda!84325 () Bool)

(assert (= b_lambda!84311 (or (and b!2818959 b_free!80535) (and b!2818961 b_free!80539 (= (toChars!6816 (transformation!4943 (h!38460 rules!4424))) (toChars!6816 (transformation!4943 (rule!7371 (h!38461 l!6581)))))) (and b!2819250 b_free!80551 (= (toChars!6816 (transformation!4943 (rule!7371 (h!38461 (t!230322 l!6581))))) (toChars!6816 (transformation!4943 (rule!7371 (h!38461 l!6581)))))) (and b!2819273 b_free!80555 (= (toChars!6816 (transformation!4943 (h!38460 (t!230321 rules!4424)))) (toChars!6816 (transformation!4943 (rule!7371 (h!38461 l!6581)))))) b_lambda!84325)))

(check-sat (not b!2819209) (not b!2819210) (not b_next!81241) b_and!205875 (not b_next!81243) (not b!2819252) (not d!818597) (not tb!153733) (not b!2819075) (not d!818591) (not bs!517221) (not b!2819096) (not b!2819260) tp_is_empty!14439 b_and!205901 (not b!2819236) (not b_next!81253) (not b!2819222) (not b!2819072) (not b!2819064) (not b_next!81255) (not d!818573) (not b!2819032) (not b!2819030) (not b!2819249) (not b!2819254) (not b!2819271) b_and!205871 (not b!2819045) (not d!818605) (not d!818593) b_and!205895 (not b!2819074) (not b!2819050) (not b!2819259) (not b_next!81259) (not b!2819248) (not b!2819065) (not b_lambda!84325) (not d!818603) (not b!2819039) (not b!2819221) (not b!2819094) (not d!818575) b_and!205881 (not b!2819235) (not d!818609) b_and!205897 (not b!2819051) b_and!205879 (not b!2819073) (not b!2819212) (not b!2819211) (not b_next!81257) (not b_next!81237) (not b!2818982) (not b!2819234) b_and!205899 (not d!818629) (not b!2819097) (not b_lambda!84323) (not b!2819272) (not b!2819044) (not b!2819066) (not b!2819031) (not b!2819213) (not d!818607) (not b!2819214) (not b!2819253) (not b_next!81239) (not b!2819095) (not b!2819247))
(check-sat b_and!205901 (not b_next!81253) (not b_next!81255) (not b_next!81241) b_and!205871 b_and!205895 (not b_next!81259) b_and!205881 b_and!205897 b_and!205875 (not b_next!81243) b_and!205899 (not b_next!81239) b_and!205879 (not b_next!81257) (not b_next!81237))
