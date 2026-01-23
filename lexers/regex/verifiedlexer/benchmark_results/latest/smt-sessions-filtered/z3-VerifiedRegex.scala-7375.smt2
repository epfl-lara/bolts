; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!392038 () Bool)

(assert start!392038)

(declare-fun b!4130536 () Bool)

(declare-fun b_free!117147 () Bool)

(declare-fun b_next!117851 () Bool)

(assert (=> b!4130536 (= b_free!117147 (not b_next!117851))))

(declare-fun tp!1258759 () Bool)

(declare-fun b_and!320077 () Bool)

(assert (=> b!4130536 (= tp!1258759 b_and!320077)))

(declare-fun b_free!117149 () Bool)

(declare-fun b_next!117853 () Bool)

(assert (=> b!4130536 (= b_free!117149 (not b_next!117853))))

(declare-fun tp!1258762 () Bool)

(declare-fun b_and!320079 () Bool)

(assert (=> b!4130536 (= tp!1258762 b_and!320079)))

(declare-fun b!4130537 () Bool)

(declare-fun b_free!117151 () Bool)

(declare-fun b_next!117855 () Bool)

(assert (=> b!4130537 (= b_free!117151 (not b_next!117855))))

(declare-fun tp!1258757 () Bool)

(declare-fun b_and!320081 () Bool)

(assert (=> b!4130537 (= tp!1258757 b_and!320081)))

(declare-fun b_free!117153 () Bool)

(declare-fun b_next!117857 () Bool)

(assert (=> b!4130537 (= b_free!117153 (not b_next!117857))))

(declare-fun tp!1258760 () Bool)

(declare-fun b_and!320083 () Bool)

(assert (=> b!4130537 (= tp!1258760 b_and!320083)))

(declare-fun b!4130540 () Bool)

(declare-fun b_free!117155 () Bool)

(declare-fun b_next!117859 () Bool)

(assert (=> b!4130540 (= b_free!117155 (not b_next!117859))))

(declare-fun tp!1258765 () Bool)

(declare-fun b_and!320085 () Bool)

(assert (=> b!4130540 (= tp!1258765 b_and!320085)))

(declare-fun b_free!117157 () Bool)

(declare-fun b_next!117861 () Bool)

(assert (=> b!4130540 (= b_free!117157 (not b_next!117861))))

(declare-fun tp!1258761 () Bool)

(declare-fun b_and!320087 () Bool)

(assert (=> b!4130540 (= tp!1258761 b_and!320087)))

(declare-fun b!4130529 () Bool)

(declare-fun res!1688618 () Bool)

(declare-fun e!2562869 () Bool)

(assert (=> b!4130529 (=> (not res!1688618) (not e!2562869))))

(declare-datatypes ((List!44843 0))(
  ( (Nil!44719) (Cons!44719 (h!50139 (_ BitVec 16)) (t!341516 List!44843)) )
))
(declare-datatypes ((TokenValue!7552 0))(
  ( (FloatLiteralValue!15104 (text!53309 List!44843)) (TokenValueExt!7551 (__x!27321 Int)) (Broken!37760 (value!229205 List!44843)) (Object!7675) (End!7552) (Def!7552) (Underscore!7552) (Match!7552) (Else!7552) (Error!7552) (Case!7552) (If!7552) (Extends!7552) (Abstract!7552) (Class!7552) (Val!7552) (DelimiterValue!15104 (del!7612 List!44843)) (KeywordValue!7558 (value!229206 List!44843)) (CommentValue!15104 (value!229207 List!44843)) (WhitespaceValue!15104 (value!229208 List!44843)) (IndentationValue!7552 (value!229209 List!44843)) (String!51509) (Int32!7552) (Broken!37761 (value!229210 List!44843)) (Boolean!7553) (Unit!64048) (OperatorValue!7555 (op!7612 List!44843)) (IdentifierValue!15104 (value!229211 List!44843)) (IdentifierValue!15105 (value!229212 List!44843)) (WhitespaceValue!15105 (value!229213 List!44843)) (True!15104) (False!15104) (Broken!37762 (value!229214 List!44843)) (Broken!37763 (value!229215 List!44843)) (True!15105) (RightBrace!7552) (RightBracket!7552) (Colon!7552) (Null!7552) (Comma!7552) (LeftBracket!7552) (False!15105) (LeftBrace!7552) (ImaginaryLiteralValue!7552 (text!53310 List!44843)) (StringLiteralValue!22656 (value!229216 List!44843)) (EOFValue!7552 (value!229217 List!44843)) (IdentValue!7552 (value!229218 List!44843)) (DelimiterValue!15105 (value!229219 List!44843)) (DedentValue!7552 (value!229220 List!44843)) (NewLineValue!7552 (value!229221 List!44843)) (IntegerValue!22656 (value!229222 (_ BitVec 32)) (text!53311 List!44843)) (IntegerValue!22657 (value!229223 Int) (text!53312 List!44843)) (Times!7552) (Or!7552) (Equal!7552) (Minus!7552) (Broken!37764 (value!229224 List!44843)) (And!7552) (Div!7552) (LessEqual!7552) (Mod!7552) (Concat!19779) (Not!7552) (Plus!7552) (SpaceValue!7552 (value!229225 List!44843)) (IntegerValue!22658 (value!229226 Int) (text!53313 List!44843)) (StringLiteralValue!22657 (text!53314 List!44843)) (FloatLiteralValue!15105 (text!53315 List!44843)) (BytesLiteralValue!7552 (value!229227 List!44843)) (CommentValue!15105 (value!229228 List!44843)) (StringLiteralValue!22658 (value!229229 List!44843)) (ErrorTokenValue!7552 (msg!7613 List!44843)) )
))
(declare-datatypes ((C!24640 0))(
  ( (C!24641 (val!14430 Int)) )
))
(declare-datatypes ((List!44844 0))(
  ( (Nil!44720) (Cons!44720 (h!50140 C!24640) (t!341517 List!44844)) )
))
(declare-datatypes ((IArray!27071 0))(
  ( (IArray!27072 (innerList!13593 List!44844)) )
))
(declare-datatypes ((Conc!13533 0))(
  ( (Node!13533 (left!33488 Conc!13533) (right!33818 Conc!13533) (csize!27296 Int) (cheight!13744 Int)) (Leaf!20909 (xs!16839 IArray!27071) (csize!27297 Int)) (Empty!13533) )
))
(declare-datatypes ((BalanceConc!26660 0))(
  ( (BalanceConc!26661 (c!708760 Conc!13533)) )
))
(declare-datatypes ((String!51510 0))(
  ( (String!51511 (value!229230 String)) )
))
(declare-datatypes ((Regex!12227 0))(
  ( (ElementMatch!12227 (c!708761 C!24640)) (Concat!19780 (regOne!24966 Regex!12227) (regTwo!24966 Regex!12227)) (EmptyExpr!12227) (Star!12227 (reg!12556 Regex!12227)) (EmptyLang!12227) (Union!12227 (regOne!24967 Regex!12227) (regTwo!24967 Regex!12227)) )
))
(declare-datatypes ((TokenValueInjection!14532 0))(
  ( (TokenValueInjection!14533 (toValue!9982 Int) (toChars!9841 Int)) )
))
(declare-datatypes ((Rule!14444 0))(
  ( (Rule!14445 (regex!7322 Regex!12227) (tag!8182 String!51510) (isSeparator!7322 Bool) (transformation!7322 TokenValueInjection!14532)) )
))
(declare-datatypes ((List!44845 0))(
  ( (Nil!44721) (Cons!44721 (h!50141 Rule!14444) (t!341518 List!44845)) )
))
(declare-fun rules!3756 () List!44845)

(declare-fun rBis!149 () Rule!14444)

(declare-fun contains!8998 (List!44845 Rule!14444) Bool)

(assert (=> b!4130529 (= res!1688618 (contains!8998 rules!3756 rBis!149))))

(declare-fun res!1688617 () Bool)

(assert (=> start!392038 (=> (not res!1688617) (not e!2562869))))

(declare-datatypes ((LexerInterface!6911 0))(
  ( (LexerInterfaceExt!6908 (__x!27322 Int)) (Lexer!6909) )
))
(declare-fun thiss!25645 () LexerInterface!6911)

(get-info :version)

(assert (=> start!392038 (= res!1688617 ((_ is Lexer!6909) thiss!25645))))

(assert (=> start!392038 e!2562869))

(declare-fun e!2562873 () Bool)

(assert (=> start!392038 e!2562873))

(declare-fun e!2562880 () Bool)

(assert (=> start!392038 e!2562880))

(assert (=> start!392038 true))

(declare-fun e!2562868 () Bool)

(assert (=> start!392038 e!2562868))

(declare-fun e!2562872 () Bool)

(assert (=> start!392038 e!2562872))

(declare-fun e!2562878 () Bool)

(assert (=> start!392038 e!2562878))

(declare-fun e!2562875 () Bool)

(declare-fun e!2562877 () Bool)

(declare-fun b!4130530 () Bool)

(declare-fun tp!1258755 () Bool)

(declare-fun inv!59310 (String!51510) Bool)

(declare-fun inv!59313 (TokenValueInjection!14532) Bool)

(assert (=> b!4130530 (= e!2562877 (and tp!1258755 (inv!59310 (tag!8182 (h!50141 rules!3756))) (inv!59313 (transformation!7322 (h!50141 rules!3756))) e!2562875))))

(declare-fun b!4130531 () Bool)

(declare-fun res!1688614 () Bool)

(assert (=> b!4130531 (=> (not res!1688614) (not e!2562869))))

(declare-fun isEmpty!26627 (List!44845) Bool)

(assert (=> b!4130531 (= res!1688614 (not (isEmpty!26627 rules!3756)))))

(declare-fun b!4130532 () Bool)

(declare-fun res!1688616 () Bool)

(assert (=> b!4130532 (=> (not res!1688616) (not e!2562869))))

(declare-fun p!2912 () List!44844)

(declare-fun input!3238 () List!44844)

(declare-fun isPrefix!4257 (List!44844 List!44844) Bool)

(assert (=> b!4130532 (= res!1688616 (isPrefix!4257 p!2912 input!3238))))

(declare-fun b!4130533 () Bool)

(declare-fun tp!1258763 () Bool)

(assert (=> b!4130533 (= e!2562873 (and e!2562877 tp!1258763))))

(declare-fun e!2562870 () Bool)

(declare-fun b!4130534 () Bool)

(declare-fun tp!1258766 () Bool)

(declare-fun r!4008 () Rule!14444)

(assert (=> b!4130534 (= e!2562868 (and tp!1258766 (inv!59310 (tag!8182 r!4008)) (inv!59313 (transformation!7322 r!4008)) e!2562870))))

(declare-fun b!4130535 () Bool)

(declare-fun e!2562871 () Bool)

(declare-fun tp!1258756 () Bool)

(assert (=> b!4130535 (= e!2562878 (and tp!1258756 (inv!59310 (tag!8182 rBis!149)) (inv!59313 (transformation!7322 rBis!149)) e!2562871))))

(assert (=> b!4130536 (= e!2562870 (and tp!1258759 tp!1258762))))

(assert (=> b!4130537 (= e!2562871 (and tp!1258757 tp!1258760))))

(declare-fun b!4130538 () Bool)

(declare-fun tp_is_empty!21377 () Bool)

(declare-fun tp!1258764 () Bool)

(assert (=> b!4130538 (= e!2562880 (and tp_is_empty!21377 tp!1258764))))

(declare-fun b!4130539 () Bool)

(declare-fun tp!1258758 () Bool)

(assert (=> b!4130539 (= e!2562872 (and tp_is_empty!21377 tp!1258758))))

(assert (=> b!4130540 (= e!2562875 (and tp!1258765 tp!1258761))))

(declare-fun b!4130541 () Bool)

(declare-fun res!1688613 () Bool)

(assert (=> b!4130541 (=> (not res!1688613) (not e!2562869))))

(declare-fun rulesInvariant!6208 (LexerInterface!6911 List!44845) Bool)

(assert (=> b!4130541 (= res!1688613 (rulesInvariant!6208 thiss!25645 rules!3756))))

(declare-fun b!4130542 () Bool)

(declare-fun res!1688612 () Bool)

(assert (=> b!4130542 (=> (not res!1688612) (not e!2562869))))

(assert (=> b!4130542 (= res!1688612 (contains!8998 rules!3756 r!4008))))

(declare-fun b!4130543 () Bool)

(declare-fun lt!1473222 () BalanceConc!26660)

(declare-datatypes ((Token!13574 0))(
  ( (Token!13575 (value!229231 TokenValue!7552) (rule!10414 Rule!14444) (size!33109 Int) (originalCharacters!7818 List!44844)) )
))
(declare-fun inv!59314 (Token!13574) Bool)

(declare-fun apply!10395 (TokenValueInjection!14532 BalanceConc!26660) TokenValue!7552)

(declare-fun size!33110 (List!44844) Int)

(assert (=> b!4130543 (= e!2562869 (not (inv!59314 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912))))))

(declare-datatypes ((Unit!64049 0))(
  ( (Unit!64050) )
))
(declare-fun lt!1473221 () Unit!64049)

(declare-fun lemmaSemiInverse!2180 (TokenValueInjection!14532 BalanceConc!26660) Unit!64049)

(assert (=> b!4130543 (= lt!1473221 (lemmaSemiInverse!2180 (transformation!7322 r!4008) lt!1473222))))

(declare-fun seqFromList!5439 (List!44844) BalanceConc!26660)

(assert (=> b!4130543 (= lt!1473222 (seqFromList!5439 p!2912))))

(declare-fun b!4130544 () Bool)

(declare-fun res!1688615 () Bool)

(assert (=> b!4130544 (=> (not res!1688615) (not e!2562869))))

(declare-fun isEmpty!26628 (List!44844) Bool)

(assert (=> b!4130544 (= res!1688615 (not (isEmpty!26628 p!2912)))))

(assert (= (and start!392038 res!1688617) b!4130532))

(assert (= (and b!4130532 res!1688616) b!4130531))

(assert (= (and b!4130531 res!1688614) b!4130541))

(assert (= (and b!4130541 res!1688613) b!4130542))

(assert (= (and b!4130542 res!1688612) b!4130529))

(assert (= (and b!4130529 res!1688618) b!4130544))

(assert (= (and b!4130544 res!1688615) b!4130543))

(assert (= b!4130530 b!4130540))

(assert (= b!4130533 b!4130530))

(assert (= (and start!392038 ((_ is Cons!44721) rules!3756)) b!4130533))

(assert (= (and start!392038 ((_ is Cons!44720) p!2912)) b!4130538))

(assert (= b!4130534 b!4130536))

(assert (= start!392038 b!4130534))

(assert (= (and start!392038 ((_ is Cons!44720) input!3238)) b!4130539))

(assert (= b!4130535 b!4130537))

(assert (= start!392038 b!4130535))

(declare-fun m!4728319 () Bool)

(assert (=> b!4130541 m!4728319))

(declare-fun m!4728321 () Bool)

(assert (=> b!4130530 m!4728321))

(declare-fun m!4728323 () Bool)

(assert (=> b!4130530 m!4728323))

(declare-fun m!4728325 () Bool)

(assert (=> b!4130529 m!4728325))

(declare-fun m!4728327 () Bool)

(assert (=> b!4130534 m!4728327))

(declare-fun m!4728329 () Bool)

(assert (=> b!4130534 m!4728329))

(declare-fun m!4728331 () Bool)

(assert (=> b!4130532 m!4728331))

(declare-fun m!4728333 () Bool)

(assert (=> b!4130544 m!4728333))

(declare-fun m!4728335 () Bool)

(assert (=> b!4130531 m!4728335))

(declare-fun m!4728337 () Bool)

(assert (=> b!4130542 m!4728337))

(declare-fun m!4728339 () Bool)

(assert (=> b!4130543 m!4728339))

(declare-fun m!4728341 () Bool)

(assert (=> b!4130543 m!4728341))

(declare-fun m!4728343 () Bool)

(assert (=> b!4130543 m!4728343))

(declare-fun m!4728345 () Bool)

(assert (=> b!4130543 m!4728345))

(declare-fun m!4728347 () Bool)

(assert (=> b!4130543 m!4728347))

(declare-fun m!4728349 () Bool)

(assert (=> b!4130535 m!4728349))

(declare-fun m!4728351 () Bool)

(assert (=> b!4130535 m!4728351))

(check-sat (not b!4130529) (not b!4130539) (not b!4130535) (not b!4130530) (not b!4130533) (not b_next!117853) (not b!4130534) (not b_next!117851) b_and!320079 (not b!4130542) b_and!320087 (not b_next!117855) b_and!320085 (not b!4130541) (not b!4130538) b_and!320081 b_and!320083 tp_is_empty!21377 (not b!4130531) (not b_next!117857) (not b!4130543) (not b_next!117861) b_and!320077 (not b!4130532) (not b!4130544) (not b_next!117859))
(check-sat (not b_next!117853) (not b_next!117857) (not b_next!117851) b_and!320079 b_and!320087 (not b_next!117855) b_and!320085 (not b_next!117859) b_and!320081 b_and!320083 (not b_next!117861) b_and!320077)
(get-model)

(declare-fun b!4130641 () Bool)

(declare-fun e!2562945 () Bool)

(assert (=> b!4130641 (= e!2562945 true)))

(declare-fun d!1223764 () Bool)

(assert (=> d!1223764 e!2562945))

(assert (= d!1223764 b!4130641))

(declare-fun order!23583 () Int)

(declare-fun lambda!128821 () Int)

(declare-fun order!23581 () Int)

(declare-fun dynLambda!19159 (Int Int) Int)

(declare-fun dynLambda!19160 (Int Int) Int)

(assert (=> b!4130641 (< (dynLambda!19159 order!23581 (toValue!9982 (transformation!7322 r!4008))) (dynLambda!19160 order!23583 lambda!128821))))

(declare-fun order!23585 () Int)

(declare-fun dynLambda!19161 (Int Int) Int)

(assert (=> b!4130641 (< (dynLambda!19161 order!23585 (toChars!9841 (transformation!7322 r!4008))) (dynLambda!19160 order!23583 lambda!128821))))

(declare-fun list!16387 (BalanceConc!26660) List!44844)

(declare-fun dynLambda!19162 (Int TokenValue!7552) BalanceConc!26660)

(declare-fun dynLambda!19163 (Int BalanceConc!26660) TokenValue!7552)

(assert (=> d!1223764 (= (list!16387 (dynLambda!19162 (toChars!9841 (transformation!7322 r!4008)) (dynLambda!19163 (toValue!9982 (transformation!7322 r!4008)) lt!1473222))) (list!16387 lt!1473222))))

(declare-fun lt!1473238 () Unit!64049)

(declare-fun ForallOf!940 (Int BalanceConc!26660) Unit!64049)

(assert (=> d!1223764 (= lt!1473238 (ForallOf!940 lambda!128821 lt!1473222))))

(assert (=> d!1223764 (= (lemmaSemiInverse!2180 (transformation!7322 r!4008) lt!1473222) lt!1473238)))

(declare-fun b_lambda!121305 () Bool)

(assert (=> (not b_lambda!121305) (not d!1223764)))

(declare-fun t!341545 () Bool)

(declare-fun tb!247919 () Bool)

(assert (=> (and b!4130536 (= (toChars!9841 (transformation!7322 r!4008)) (toChars!9841 (transformation!7322 r!4008))) t!341545) tb!247919))

(declare-fun tp!1258814 () Bool)

(declare-fun b!4130646 () Bool)

(declare-fun e!2562948 () Bool)

(declare-fun inv!59317 (Conc!13533) Bool)

(assert (=> b!4130646 (= e!2562948 (and (inv!59317 (c!708760 (dynLambda!19162 (toChars!9841 (transformation!7322 r!4008)) (dynLambda!19163 (toValue!9982 (transformation!7322 r!4008)) lt!1473222)))) tp!1258814))))

(declare-fun result!301302 () Bool)

(declare-fun inv!59318 (BalanceConc!26660) Bool)

(assert (=> tb!247919 (= result!301302 (and (inv!59318 (dynLambda!19162 (toChars!9841 (transformation!7322 r!4008)) (dynLambda!19163 (toValue!9982 (transformation!7322 r!4008)) lt!1473222))) e!2562948))))

(assert (= tb!247919 b!4130646))

(declare-fun m!4728427 () Bool)

(assert (=> b!4130646 m!4728427))

(declare-fun m!4728429 () Bool)

(assert (=> tb!247919 m!4728429))

(assert (=> d!1223764 t!341545))

(declare-fun b_and!320117 () Bool)

(assert (= b_and!320079 (and (=> t!341545 result!301302) b_and!320117)))

(declare-fun t!341547 () Bool)

(declare-fun tb!247921 () Bool)

(assert (=> (and b!4130537 (= (toChars!9841 (transformation!7322 rBis!149)) (toChars!9841 (transformation!7322 r!4008))) t!341547) tb!247921))

(declare-fun result!301306 () Bool)

(assert (= result!301306 result!301302))

(assert (=> d!1223764 t!341547))

(declare-fun b_and!320119 () Bool)

(assert (= b_and!320083 (and (=> t!341547 result!301306) b_and!320119)))

(declare-fun t!341549 () Bool)

(declare-fun tb!247923 () Bool)

(assert (=> (and b!4130540 (= (toChars!9841 (transformation!7322 (h!50141 rules!3756))) (toChars!9841 (transformation!7322 r!4008))) t!341549) tb!247923))

(declare-fun result!301308 () Bool)

(assert (= result!301308 result!301302))

(assert (=> d!1223764 t!341549))

(declare-fun b_and!320121 () Bool)

(assert (= b_and!320087 (and (=> t!341549 result!301308) b_and!320121)))

(declare-fun b_lambda!121307 () Bool)

(assert (=> (not b_lambda!121307) (not d!1223764)))

(declare-fun t!341551 () Bool)

(declare-fun tb!247925 () Bool)

(assert (=> (and b!4130536 (= (toValue!9982 (transformation!7322 r!4008)) (toValue!9982 (transformation!7322 r!4008))) t!341551) tb!247925))

(declare-fun result!301310 () Bool)

(declare-fun inv!21 (TokenValue!7552) Bool)

(assert (=> tb!247925 (= result!301310 (inv!21 (dynLambda!19163 (toValue!9982 (transformation!7322 r!4008)) lt!1473222)))))

(declare-fun m!4728431 () Bool)

(assert (=> tb!247925 m!4728431))

(assert (=> d!1223764 t!341551))

(declare-fun b_and!320123 () Bool)

(assert (= b_and!320077 (and (=> t!341551 result!301310) b_and!320123)))

(declare-fun tb!247927 () Bool)

(declare-fun t!341553 () Bool)

(assert (=> (and b!4130537 (= (toValue!9982 (transformation!7322 rBis!149)) (toValue!9982 (transformation!7322 r!4008))) t!341553) tb!247927))

(declare-fun result!301314 () Bool)

(assert (= result!301314 result!301310))

(assert (=> d!1223764 t!341553))

(declare-fun b_and!320125 () Bool)

(assert (= b_and!320081 (and (=> t!341553 result!301314) b_and!320125)))

(declare-fun t!341555 () Bool)

(declare-fun tb!247929 () Bool)

(assert (=> (and b!4130540 (= (toValue!9982 (transformation!7322 (h!50141 rules!3756))) (toValue!9982 (transformation!7322 r!4008))) t!341555) tb!247929))

(declare-fun result!301316 () Bool)

(assert (= result!301316 result!301310))

(assert (=> d!1223764 t!341555))

(declare-fun b_and!320127 () Bool)

(assert (= b_and!320085 (and (=> t!341555 result!301316) b_and!320127)))

(declare-fun m!4728433 () Bool)

(assert (=> d!1223764 m!4728433))

(declare-fun m!4728435 () Bool)

(assert (=> d!1223764 m!4728435))

(assert (=> d!1223764 m!4728433))

(declare-fun m!4728437 () Bool)

(assert (=> d!1223764 m!4728437))

(declare-fun m!4728439 () Bool)

(assert (=> d!1223764 m!4728439))

(assert (=> d!1223764 m!4728435))

(declare-fun m!4728441 () Bool)

(assert (=> d!1223764 m!4728441))

(assert (=> b!4130543 d!1223764))

(declare-fun d!1223800 () Bool)

(assert (=> d!1223800 (= (apply!10395 (transformation!7322 r!4008) lt!1473222) (dynLambda!19163 (toValue!9982 (transformation!7322 r!4008)) lt!1473222))))

(declare-fun b_lambda!121309 () Bool)

(assert (=> (not b_lambda!121309) (not d!1223800)))

(assert (=> d!1223800 t!341551))

(declare-fun b_and!320129 () Bool)

(assert (= b_and!320123 (and (=> t!341551 result!301310) b_and!320129)))

(assert (=> d!1223800 t!341553))

(declare-fun b_and!320131 () Bool)

(assert (= b_and!320125 (and (=> t!341553 result!301314) b_and!320131)))

(assert (=> d!1223800 t!341555))

(declare-fun b_and!320133 () Bool)

(assert (= b_and!320127 (and (=> t!341555 result!301316) b_and!320133)))

(assert (=> d!1223800 m!4728433))

(assert (=> b!4130543 d!1223800))

(declare-fun d!1223802 () Bool)

(declare-fun fromListB!2490 (List!44844) BalanceConc!26660)

(assert (=> d!1223802 (= (seqFromList!5439 p!2912) (fromListB!2490 p!2912))))

(declare-fun bs!594999 () Bool)

(assert (= bs!594999 d!1223802))

(declare-fun m!4728443 () Bool)

(assert (=> bs!594999 m!4728443))

(assert (=> b!4130543 d!1223802))

(declare-fun d!1223804 () Bool)

(declare-fun res!1688665 () Bool)

(declare-fun e!2562954 () Bool)

(assert (=> d!1223804 (=> (not res!1688665) (not e!2562954))))

(assert (=> d!1223804 (= res!1688665 (not (isEmpty!26628 (originalCharacters!7818 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912)))))))

(assert (=> d!1223804 (= (inv!59314 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912)) e!2562954)))

(declare-fun b!4130653 () Bool)

(declare-fun res!1688666 () Bool)

(assert (=> b!4130653 (=> (not res!1688666) (not e!2562954))))

(assert (=> b!4130653 (= res!1688666 (= (originalCharacters!7818 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912)) (list!16387 (dynLambda!19162 (toChars!9841 (transformation!7322 (rule!10414 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912)))) (value!229231 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912))))))))

(declare-fun b!4130654 () Bool)

(assert (=> b!4130654 (= e!2562954 (= (size!33109 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912)) (size!33110 (originalCharacters!7818 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912)))))))

(assert (= (and d!1223804 res!1688665) b!4130653))

(assert (= (and b!4130653 res!1688666) b!4130654))

(declare-fun b_lambda!121311 () Bool)

(assert (=> (not b_lambda!121311) (not b!4130653)))

(declare-fun t!341557 () Bool)

(declare-fun tb!247931 () Bool)

(assert (=> (and b!4130536 (= (toChars!9841 (transformation!7322 r!4008)) (toChars!9841 (transformation!7322 (rule!10414 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912))))) t!341557) tb!247931))

(declare-fun e!2562955 () Bool)

(declare-fun tp!1258815 () Bool)

(declare-fun b!4130655 () Bool)

(assert (=> b!4130655 (= e!2562955 (and (inv!59317 (c!708760 (dynLambda!19162 (toChars!9841 (transformation!7322 (rule!10414 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912)))) (value!229231 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912))))) tp!1258815))))

(declare-fun result!301318 () Bool)

(assert (=> tb!247931 (= result!301318 (and (inv!59318 (dynLambda!19162 (toChars!9841 (transformation!7322 (rule!10414 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912)))) (value!229231 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912)))) e!2562955))))

(assert (= tb!247931 b!4130655))

(declare-fun m!4728445 () Bool)

(assert (=> b!4130655 m!4728445))

(declare-fun m!4728447 () Bool)

(assert (=> tb!247931 m!4728447))

(assert (=> b!4130653 t!341557))

(declare-fun b_and!320135 () Bool)

(assert (= b_and!320117 (and (=> t!341557 result!301318) b_and!320135)))

(declare-fun tb!247933 () Bool)

(declare-fun t!341559 () Bool)

(assert (=> (and b!4130537 (= (toChars!9841 (transformation!7322 rBis!149)) (toChars!9841 (transformation!7322 (rule!10414 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912))))) t!341559) tb!247933))

(declare-fun result!301320 () Bool)

(assert (= result!301320 result!301318))

(assert (=> b!4130653 t!341559))

(declare-fun b_and!320137 () Bool)

(assert (= b_and!320119 (and (=> t!341559 result!301320) b_and!320137)))

(declare-fun t!341561 () Bool)

(declare-fun tb!247935 () Bool)

(assert (=> (and b!4130540 (= (toChars!9841 (transformation!7322 (h!50141 rules!3756))) (toChars!9841 (transformation!7322 (rule!10414 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912))))) t!341561) tb!247935))

(declare-fun result!301322 () Bool)

(assert (= result!301322 result!301318))

(assert (=> b!4130653 t!341561))

(declare-fun b_and!320139 () Bool)

(assert (= b_and!320121 (and (=> t!341561 result!301322) b_and!320139)))

(declare-fun m!4728449 () Bool)

(assert (=> d!1223804 m!4728449))

(declare-fun m!4728451 () Bool)

(assert (=> b!4130653 m!4728451))

(assert (=> b!4130653 m!4728451))

(declare-fun m!4728453 () Bool)

(assert (=> b!4130653 m!4728453))

(declare-fun m!4728455 () Bool)

(assert (=> b!4130654 m!4728455))

(assert (=> b!4130543 d!1223804))

(declare-fun d!1223806 () Bool)

(declare-fun lt!1473241 () Int)

(assert (=> d!1223806 (>= lt!1473241 0)))

(declare-fun e!2562958 () Int)

(assert (=> d!1223806 (= lt!1473241 e!2562958)))

(declare-fun c!708769 () Bool)

(assert (=> d!1223806 (= c!708769 ((_ is Nil!44720) p!2912))))

(assert (=> d!1223806 (= (size!33110 p!2912) lt!1473241)))

(declare-fun b!4130660 () Bool)

(assert (=> b!4130660 (= e!2562958 0)))

(declare-fun b!4130661 () Bool)

(assert (=> b!4130661 (= e!2562958 (+ 1 (size!33110 (t!341517 p!2912))))))

(assert (= (and d!1223806 c!708769) b!4130660))

(assert (= (and d!1223806 (not c!708769)) b!4130661))

(declare-fun m!4728457 () Bool)

(assert (=> b!4130661 m!4728457))

(assert (=> b!4130543 d!1223806))

(declare-fun b!4130672 () Bool)

(declare-fun e!2562967 () Bool)

(declare-fun tail!6477 (List!44844) List!44844)

(assert (=> b!4130672 (= e!2562967 (isPrefix!4257 (tail!6477 p!2912) (tail!6477 input!3238)))))

(declare-fun b!4130670 () Bool)

(declare-fun e!2562965 () Bool)

(assert (=> b!4130670 (= e!2562965 e!2562967)))

(declare-fun res!1688677 () Bool)

(assert (=> b!4130670 (=> (not res!1688677) (not e!2562967))))

(assert (=> b!4130670 (= res!1688677 (not ((_ is Nil!44720) input!3238)))))

(declare-fun b!4130671 () Bool)

(declare-fun res!1688678 () Bool)

(assert (=> b!4130671 (=> (not res!1688678) (not e!2562967))))

(declare-fun head!8704 (List!44844) C!24640)

(assert (=> b!4130671 (= res!1688678 (= (head!8704 p!2912) (head!8704 input!3238)))))

(declare-fun b!4130673 () Bool)

(declare-fun e!2562966 () Bool)

(assert (=> b!4130673 (= e!2562966 (>= (size!33110 input!3238) (size!33110 p!2912)))))

(declare-fun d!1223808 () Bool)

(assert (=> d!1223808 e!2562966))

(declare-fun res!1688676 () Bool)

(assert (=> d!1223808 (=> res!1688676 e!2562966)))

(declare-fun lt!1473244 () Bool)

(assert (=> d!1223808 (= res!1688676 (not lt!1473244))))

(assert (=> d!1223808 (= lt!1473244 e!2562965)))

(declare-fun res!1688675 () Bool)

(assert (=> d!1223808 (=> res!1688675 e!2562965)))

(assert (=> d!1223808 (= res!1688675 ((_ is Nil!44720) p!2912))))

(assert (=> d!1223808 (= (isPrefix!4257 p!2912 input!3238) lt!1473244)))

(assert (= (and d!1223808 (not res!1688675)) b!4130670))

(assert (= (and b!4130670 res!1688677) b!4130671))

(assert (= (and b!4130671 res!1688678) b!4130672))

(assert (= (and d!1223808 (not res!1688676)) b!4130673))

(declare-fun m!4728459 () Bool)

(assert (=> b!4130672 m!4728459))

(declare-fun m!4728461 () Bool)

(assert (=> b!4130672 m!4728461))

(assert (=> b!4130672 m!4728459))

(assert (=> b!4130672 m!4728461))

(declare-fun m!4728463 () Bool)

(assert (=> b!4130672 m!4728463))

(declare-fun m!4728465 () Bool)

(assert (=> b!4130671 m!4728465))

(declare-fun m!4728467 () Bool)

(assert (=> b!4130671 m!4728467))

(declare-fun m!4728469 () Bool)

(assert (=> b!4130673 m!4728469))

(assert (=> b!4130673 m!4728347))

(assert (=> b!4130532 d!1223808))

(declare-fun d!1223810 () Bool)

(assert (=> d!1223810 (= (isEmpty!26627 rules!3756) ((_ is Nil!44721) rules!3756))))

(assert (=> b!4130531 d!1223810))

(declare-fun d!1223812 () Bool)

(declare-fun lt!1473247 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6898 (List!44845) (InoxSet Rule!14444))

(assert (=> d!1223812 (= lt!1473247 (select (content!6898 rules!3756) r!4008))))

(declare-fun e!2562972 () Bool)

(assert (=> d!1223812 (= lt!1473247 e!2562972)))

(declare-fun res!1688684 () Bool)

(assert (=> d!1223812 (=> (not res!1688684) (not e!2562972))))

(assert (=> d!1223812 (= res!1688684 ((_ is Cons!44721) rules!3756))))

(assert (=> d!1223812 (= (contains!8998 rules!3756 r!4008) lt!1473247)))

(declare-fun b!4130678 () Bool)

(declare-fun e!2562973 () Bool)

(assert (=> b!4130678 (= e!2562972 e!2562973)))

(declare-fun res!1688683 () Bool)

(assert (=> b!4130678 (=> res!1688683 e!2562973)))

(assert (=> b!4130678 (= res!1688683 (= (h!50141 rules!3756) r!4008))))

(declare-fun b!4130679 () Bool)

(assert (=> b!4130679 (= e!2562973 (contains!8998 (t!341518 rules!3756) r!4008))))

(assert (= (and d!1223812 res!1688684) b!4130678))

(assert (= (and b!4130678 (not res!1688683)) b!4130679))

(declare-fun m!4728471 () Bool)

(assert (=> d!1223812 m!4728471))

(declare-fun m!4728473 () Bool)

(assert (=> d!1223812 m!4728473))

(declare-fun m!4728475 () Bool)

(assert (=> b!4130679 m!4728475))

(assert (=> b!4130542 d!1223812))

(declare-fun d!1223814 () Bool)

(declare-fun res!1688687 () Bool)

(declare-fun e!2562976 () Bool)

(assert (=> d!1223814 (=> (not res!1688687) (not e!2562976))))

(declare-fun rulesValid!2872 (LexerInterface!6911 List!44845) Bool)

(assert (=> d!1223814 (= res!1688687 (rulesValid!2872 thiss!25645 rules!3756))))

(assert (=> d!1223814 (= (rulesInvariant!6208 thiss!25645 rules!3756) e!2562976)))

(declare-fun b!4130682 () Bool)

(declare-datatypes ((List!44847 0))(
  ( (Nil!44723) (Cons!44723 (h!50143 String!51510) (t!341568 List!44847)) )
))
(declare-fun noDuplicateTag!2955 (LexerInterface!6911 List!44845 List!44847) Bool)

(assert (=> b!4130682 (= e!2562976 (noDuplicateTag!2955 thiss!25645 rules!3756 Nil!44723))))

(assert (= (and d!1223814 res!1688687) b!4130682))

(declare-fun m!4728477 () Bool)

(assert (=> d!1223814 m!4728477))

(declare-fun m!4728479 () Bool)

(assert (=> b!4130682 m!4728479))

(assert (=> b!4130541 d!1223814))

(declare-fun d!1223816 () Bool)

(assert (=> d!1223816 (= (inv!59310 (tag!8182 rBis!149)) (= (mod (str.len (value!229230 (tag!8182 rBis!149))) 2) 0))))

(assert (=> b!4130535 d!1223816))

(declare-fun d!1223818 () Bool)

(declare-fun res!1688690 () Bool)

(declare-fun e!2562979 () Bool)

(assert (=> d!1223818 (=> (not res!1688690) (not e!2562979))))

(declare-fun semiInverseModEq!3157 (Int Int) Bool)

(assert (=> d!1223818 (= res!1688690 (semiInverseModEq!3157 (toChars!9841 (transformation!7322 rBis!149)) (toValue!9982 (transformation!7322 rBis!149))))))

(assert (=> d!1223818 (= (inv!59313 (transformation!7322 rBis!149)) e!2562979)))

(declare-fun b!4130685 () Bool)

(declare-fun equivClasses!3056 (Int Int) Bool)

(assert (=> b!4130685 (= e!2562979 (equivClasses!3056 (toChars!9841 (transformation!7322 rBis!149)) (toValue!9982 (transformation!7322 rBis!149))))))

(assert (= (and d!1223818 res!1688690) b!4130685))

(declare-fun m!4728481 () Bool)

(assert (=> d!1223818 m!4728481))

(declare-fun m!4728483 () Bool)

(assert (=> b!4130685 m!4728483))

(assert (=> b!4130535 d!1223818))

(declare-fun d!1223820 () Bool)

(assert (=> d!1223820 (= (inv!59310 (tag!8182 (h!50141 rules!3756))) (= (mod (str.len (value!229230 (tag!8182 (h!50141 rules!3756)))) 2) 0))))

(assert (=> b!4130530 d!1223820))

(declare-fun d!1223822 () Bool)

(declare-fun res!1688691 () Bool)

(declare-fun e!2562980 () Bool)

(assert (=> d!1223822 (=> (not res!1688691) (not e!2562980))))

(assert (=> d!1223822 (= res!1688691 (semiInverseModEq!3157 (toChars!9841 (transformation!7322 (h!50141 rules!3756))) (toValue!9982 (transformation!7322 (h!50141 rules!3756)))))))

(assert (=> d!1223822 (= (inv!59313 (transformation!7322 (h!50141 rules!3756))) e!2562980)))

(declare-fun b!4130686 () Bool)

(assert (=> b!4130686 (= e!2562980 (equivClasses!3056 (toChars!9841 (transformation!7322 (h!50141 rules!3756))) (toValue!9982 (transformation!7322 (h!50141 rules!3756)))))))

(assert (= (and d!1223822 res!1688691) b!4130686))

(declare-fun m!4728485 () Bool)

(assert (=> d!1223822 m!4728485))

(declare-fun m!4728487 () Bool)

(assert (=> b!4130686 m!4728487))

(assert (=> b!4130530 d!1223822))

(declare-fun d!1223824 () Bool)

(declare-fun lt!1473248 () Bool)

(assert (=> d!1223824 (= lt!1473248 (select (content!6898 rules!3756) rBis!149))))

(declare-fun e!2562981 () Bool)

(assert (=> d!1223824 (= lt!1473248 e!2562981)))

(declare-fun res!1688693 () Bool)

(assert (=> d!1223824 (=> (not res!1688693) (not e!2562981))))

(assert (=> d!1223824 (= res!1688693 ((_ is Cons!44721) rules!3756))))

(assert (=> d!1223824 (= (contains!8998 rules!3756 rBis!149) lt!1473248)))

(declare-fun b!4130687 () Bool)

(declare-fun e!2562982 () Bool)

(assert (=> b!4130687 (= e!2562981 e!2562982)))

(declare-fun res!1688692 () Bool)

(assert (=> b!4130687 (=> res!1688692 e!2562982)))

(assert (=> b!4130687 (= res!1688692 (= (h!50141 rules!3756) rBis!149))))

(declare-fun b!4130688 () Bool)

(assert (=> b!4130688 (= e!2562982 (contains!8998 (t!341518 rules!3756) rBis!149))))

(assert (= (and d!1223824 res!1688693) b!4130687))

(assert (= (and b!4130687 (not res!1688692)) b!4130688))

(assert (=> d!1223824 m!4728471))

(declare-fun m!4728489 () Bool)

(assert (=> d!1223824 m!4728489))

(declare-fun m!4728491 () Bool)

(assert (=> b!4130688 m!4728491))

(assert (=> b!4130529 d!1223824))

(declare-fun d!1223826 () Bool)

(assert (=> d!1223826 (= (inv!59310 (tag!8182 r!4008)) (= (mod (str.len (value!229230 (tag!8182 r!4008))) 2) 0))))

(assert (=> b!4130534 d!1223826))

(declare-fun d!1223828 () Bool)

(declare-fun res!1688694 () Bool)

(declare-fun e!2562983 () Bool)

(assert (=> d!1223828 (=> (not res!1688694) (not e!2562983))))

(assert (=> d!1223828 (= res!1688694 (semiInverseModEq!3157 (toChars!9841 (transformation!7322 r!4008)) (toValue!9982 (transformation!7322 r!4008))))))

(assert (=> d!1223828 (= (inv!59313 (transformation!7322 r!4008)) e!2562983)))

(declare-fun b!4130689 () Bool)

(assert (=> b!4130689 (= e!2562983 (equivClasses!3056 (toChars!9841 (transformation!7322 r!4008)) (toValue!9982 (transformation!7322 r!4008))))))

(assert (= (and d!1223828 res!1688694) b!4130689))

(declare-fun m!4728493 () Bool)

(assert (=> d!1223828 m!4728493))

(declare-fun m!4728495 () Bool)

(assert (=> b!4130689 m!4728495))

(assert (=> b!4130534 d!1223828))

(declare-fun d!1223830 () Bool)

(assert (=> d!1223830 (= (isEmpty!26628 p!2912) ((_ is Nil!44720) p!2912))))

(assert (=> b!4130544 d!1223830))

(declare-fun b!4130694 () Bool)

(declare-fun e!2562986 () Bool)

(declare-fun tp!1258818 () Bool)

(assert (=> b!4130694 (= e!2562986 (and tp_is_empty!21377 tp!1258818))))

(assert (=> b!4130538 (= tp!1258764 e!2562986)))

(assert (= (and b!4130538 ((_ is Cons!44720) (t!341517 p!2912))) b!4130694))

(declare-fun e!2562989 () Bool)

(assert (=> b!4130535 (= tp!1258756 e!2562989)))

(declare-fun b!4130706 () Bool)

(declare-fun tp!1258830 () Bool)

(declare-fun tp!1258832 () Bool)

(assert (=> b!4130706 (= e!2562989 (and tp!1258830 tp!1258832))))

(declare-fun b!4130708 () Bool)

(declare-fun tp!1258829 () Bool)

(declare-fun tp!1258833 () Bool)

(assert (=> b!4130708 (= e!2562989 (and tp!1258829 tp!1258833))))

(declare-fun b!4130705 () Bool)

(assert (=> b!4130705 (= e!2562989 tp_is_empty!21377)))

(declare-fun b!4130707 () Bool)

(declare-fun tp!1258831 () Bool)

(assert (=> b!4130707 (= e!2562989 tp!1258831)))

(assert (= (and b!4130535 ((_ is ElementMatch!12227) (regex!7322 rBis!149))) b!4130705))

(assert (= (and b!4130535 ((_ is Concat!19780) (regex!7322 rBis!149))) b!4130706))

(assert (= (and b!4130535 ((_ is Star!12227) (regex!7322 rBis!149))) b!4130707))

(assert (= (and b!4130535 ((_ is Union!12227) (regex!7322 rBis!149))) b!4130708))

(declare-fun e!2562990 () Bool)

(assert (=> b!4130530 (= tp!1258755 e!2562990)))

(declare-fun b!4130710 () Bool)

(declare-fun tp!1258835 () Bool)

(declare-fun tp!1258837 () Bool)

(assert (=> b!4130710 (= e!2562990 (and tp!1258835 tp!1258837))))

(declare-fun b!4130712 () Bool)

(declare-fun tp!1258834 () Bool)

(declare-fun tp!1258838 () Bool)

(assert (=> b!4130712 (= e!2562990 (and tp!1258834 tp!1258838))))

(declare-fun b!4130709 () Bool)

(assert (=> b!4130709 (= e!2562990 tp_is_empty!21377)))

(declare-fun b!4130711 () Bool)

(declare-fun tp!1258836 () Bool)

(assert (=> b!4130711 (= e!2562990 tp!1258836)))

(assert (= (and b!4130530 ((_ is ElementMatch!12227) (regex!7322 (h!50141 rules!3756)))) b!4130709))

(assert (= (and b!4130530 ((_ is Concat!19780) (regex!7322 (h!50141 rules!3756)))) b!4130710))

(assert (= (and b!4130530 ((_ is Star!12227) (regex!7322 (h!50141 rules!3756)))) b!4130711))

(assert (= (and b!4130530 ((_ is Union!12227) (regex!7322 (h!50141 rules!3756)))) b!4130712))

(declare-fun b!4130713 () Bool)

(declare-fun e!2562991 () Bool)

(declare-fun tp!1258839 () Bool)

(assert (=> b!4130713 (= e!2562991 (and tp_is_empty!21377 tp!1258839))))

(assert (=> b!4130539 (= tp!1258758 e!2562991)))

(assert (= (and b!4130539 ((_ is Cons!44720) (t!341517 input!3238))) b!4130713))

(declare-fun e!2562992 () Bool)

(assert (=> b!4130534 (= tp!1258766 e!2562992)))

(declare-fun b!4130715 () Bool)

(declare-fun tp!1258841 () Bool)

(declare-fun tp!1258843 () Bool)

(assert (=> b!4130715 (= e!2562992 (and tp!1258841 tp!1258843))))

(declare-fun b!4130717 () Bool)

(declare-fun tp!1258840 () Bool)

(declare-fun tp!1258844 () Bool)

(assert (=> b!4130717 (= e!2562992 (and tp!1258840 tp!1258844))))

(declare-fun b!4130714 () Bool)

(assert (=> b!4130714 (= e!2562992 tp_is_empty!21377)))

(declare-fun b!4130716 () Bool)

(declare-fun tp!1258842 () Bool)

(assert (=> b!4130716 (= e!2562992 tp!1258842)))

(assert (= (and b!4130534 ((_ is ElementMatch!12227) (regex!7322 r!4008))) b!4130714))

(assert (= (and b!4130534 ((_ is Concat!19780) (regex!7322 r!4008))) b!4130715))

(assert (= (and b!4130534 ((_ is Star!12227) (regex!7322 r!4008))) b!4130716))

(assert (= (and b!4130534 ((_ is Union!12227) (regex!7322 r!4008))) b!4130717))

(declare-fun b!4130728 () Bool)

(declare-fun b_free!117163 () Bool)

(declare-fun b_next!117867 () Bool)

(assert (=> b!4130728 (= b_free!117163 (not b_next!117867))))

(declare-fun t!341563 () Bool)

(declare-fun tb!247937 () Bool)

(assert (=> (and b!4130728 (= (toValue!9982 (transformation!7322 (h!50141 (t!341518 rules!3756)))) (toValue!9982 (transformation!7322 r!4008))) t!341563) tb!247937))

(declare-fun result!301330 () Bool)

(assert (= result!301330 result!301310))

(assert (=> d!1223764 t!341563))

(assert (=> d!1223800 t!341563))

(declare-fun tp!1258856 () Bool)

(declare-fun b_and!320141 () Bool)

(assert (=> b!4130728 (= tp!1258856 (and (=> t!341563 result!301330) b_and!320141))))

(declare-fun b_free!117165 () Bool)

(declare-fun b_next!117869 () Bool)

(assert (=> b!4130728 (= b_free!117165 (not b_next!117869))))

(declare-fun tb!247939 () Bool)

(declare-fun t!341565 () Bool)

(assert (=> (and b!4130728 (= (toChars!9841 (transformation!7322 (h!50141 (t!341518 rules!3756)))) (toChars!9841 (transformation!7322 r!4008))) t!341565) tb!247939))

(declare-fun result!301332 () Bool)

(assert (= result!301332 result!301302))

(assert (=> d!1223764 t!341565))

(declare-fun tb!247941 () Bool)

(declare-fun t!341567 () Bool)

(assert (=> (and b!4130728 (= (toChars!9841 (transformation!7322 (h!50141 (t!341518 rules!3756)))) (toChars!9841 (transformation!7322 (rule!10414 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912))))) t!341567) tb!247941))

(declare-fun result!301334 () Bool)

(assert (= result!301334 result!301318))

(assert (=> b!4130653 t!341567))

(declare-fun b_and!320143 () Bool)

(declare-fun tp!1258853 () Bool)

(assert (=> b!4130728 (= tp!1258853 (and (=> t!341565 result!301332) (=> t!341567 result!301334) b_and!320143))))

(declare-fun e!2563001 () Bool)

(assert (=> b!4130728 (= e!2563001 (and tp!1258856 tp!1258853))))

(declare-fun tp!1258854 () Bool)

(declare-fun b!4130727 () Bool)

(declare-fun e!2563002 () Bool)

(assert (=> b!4130727 (= e!2563002 (and tp!1258854 (inv!59310 (tag!8182 (h!50141 (t!341518 rules!3756)))) (inv!59313 (transformation!7322 (h!50141 (t!341518 rules!3756)))) e!2563001))))

(declare-fun b!4130726 () Bool)

(declare-fun e!2563004 () Bool)

(declare-fun tp!1258855 () Bool)

(assert (=> b!4130726 (= e!2563004 (and e!2563002 tp!1258855))))

(assert (=> b!4130533 (= tp!1258763 e!2563004)))

(assert (= b!4130727 b!4130728))

(assert (= b!4130726 b!4130727))

(assert (= (and b!4130533 ((_ is Cons!44721) (t!341518 rules!3756))) b!4130726))

(declare-fun m!4728497 () Bool)

(assert (=> b!4130727 m!4728497))

(declare-fun m!4728499 () Bool)

(assert (=> b!4130727 m!4728499))

(declare-fun b_lambda!121313 () Bool)

(assert (= b_lambda!121307 (or (and b!4130536 b_free!117147) (and b!4130537 b_free!117151 (= (toValue!9982 (transformation!7322 rBis!149)) (toValue!9982 (transformation!7322 r!4008)))) (and b!4130540 b_free!117155 (= (toValue!9982 (transformation!7322 (h!50141 rules!3756))) (toValue!9982 (transformation!7322 r!4008)))) (and b!4130728 b_free!117163 (= (toValue!9982 (transformation!7322 (h!50141 (t!341518 rules!3756)))) (toValue!9982 (transformation!7322 r!4008)))) b_lambda!121313)))

(declare-fun b_lambda!121315 () Bool)

(assert (= b_lambda!121309 (or (and b!4130536 b_free!117147) (and b!4130537 b_free!117151 (= (toValue!9982 (transformation!7322 rBis!149)) (toValue!9982 (transformation!7322 r!4008)))) (and b!4130540 b_free!117155 (= (toValue!9982 (transformation!7322 (h!50141 rules!3756))) (toValue!9982 (transformation!7322 r!4008)))) (and b!4130728 b_free!117163 (= (toValue!9982 (transformation!7322 (h!50141 (t!341518 rules!3756)))) (toValue!9982 (transformation!7322 r!4008)))) b_lambda!121315)))

(declare-fun b_lambda!121317 () Bool)

(assert (= b_lambda!121305 (or (and b!4130536 b_free!117149) (and b!4130537 b_free!117153 (= (toChars!9841 (transformation!7322 rBis!149)) (toChars!9841 (transformation!7322 r!4008)))) (and b!4130540 b_free!117157 (= (toChars!9841 (transformation!7322 (h!50141 rules!3756))) (toChars!9841 (transformation!7322 r!4008)))) (and b!4130728 b_free!117165 (= (toChars!9841 (transformation!7322 (h!50141 (t!341518 rules!3756)))) (toChars!9841 (transformation!7322 r!4008)))) b_lambda!121317)))

(check-sat b_and!320139 (not b!4130671) (not b!4130707) (not tb!247931) (not b!4130711) (not b!4130653) b_and!320133 (not b_next!117867) (not b!4130661) b_and!320143 (not b!4130679) (not d!1223824) (not b!4130727) (not d!1223814) (not b_next!117869) (not b!4130717) (not b!4130716) (not b!4130712) (not b_lambda!121315) (not b!4130726) (not b!4130713) (not b!4130715) tp_is_empty!21377 b_and!320135 (not b!4130708) (not b!4130710) b_and!320131 (not b_lambda!121311) (not b!4130646) (not b_next!117853) (not b!4130694) (not b!4130688) b_and!320137 (not b_lambda!121317) b_and!320141 (not d!1223818) (not b_next!117857) (not b!4130685) (not b_next!117851) (not b!4130686) (not b!4130689) (not b_next!117861) (not b!4130673) (not b!4130672) (not tb!247925) (not d!1223764) (not b!4130654) (not d!1223828) (not b_next!117855) (not tb!247919) (not b!4130706) (not d!1223812) b_and!320129 (not d!1223804) (not b_next!117859) (not d!1223822) (not b_lambda!121313) (not b!4130655) (not b!4130682) (not d!1223802))
(check-sat b_and!320133 b_and!320139 (not b_next!117869) b_and!320135 b_and!320131 (not b_next!117853) (not b_next!117857) (not b_next!117851) (not b_next!117861) (not b_next!117855) b_and!320129 (not b_next!117859) (not b_next!117867) b_and!320143 b_and!320137 b_and!320141)
(get-model)

(declare-fun d!1223880 () Bool)

(declare-fun c!708787 () Bool)

(assert (=> d!1223880 (= c!708787 ((_ is Node!13533) (c!708760 (dynLambda!19162 (toChars!9841 (transformation!7322 (rule!10414 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912)))) (value!229231 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912))))))))

(declare-fun e!2563046 () Bool)

(assert (=> d!1223880 (= (inv!59317 (c!708760 (dynLambda!19162 (toChars!9841 (transformation!7322 (rule!10414 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912)))) (value!229231 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912))))) e!2563046)))

(declare-fun b!4130796 () Bool)

(declare-fun inv!59321 (Conc!13533) Bool)

(assert (=> b!4130796 (= e!2563046 (inv!59321 (c!708760 (dynLambda!19162 (toChars!9841 (transformation!7322 (rule!10414 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912)))) (value!229231 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912))))))))

(declare-fun b!4130797 () Bool)

(declare-fun e!2563047 () Bool)

(assert (=> b!4130797 (= e!2563046 e!2563047)))

(declare-fun res!1688720 () Bool)

(assert (=> b!4130797 (= res!1688720 (not ((_ is Leaf!20909) (c!708760 (dynLambda!19162 (toChars!9841 (transformation!7322 (rule!10414 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912)))) (value!229231 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912)))))))))

(assert (=> b!4130797 (=> res!1688720 e!2563047)))

(declare-fun b!4130798 () Bool)

(declare-fun inv!59322 (Conc!13533) Bool)

(assert (=> b!4130798 (= e!2563047 (inv!59322 (c!708760 (dynLambda!19162 (toChars!9841 (transformation!7322 (rule!10414 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912)))) (value!229231 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912))))))))

(assert (= (and d!1223880 c!708787) b!4130796))

(assert (= (and d!1223880 (not c!708787)) b!4130797))

(assert (= (and b!4130797 (not res!1688720)) b!4130798))

(declare-fun m!4728571 () Bool)

(assert (=> b!4130796 m!4728571))

(declare-fun m!4728573 () Bool)

(assert (=> b!4130798 m!4728573))

(assert (=> b!4130655 d!1223880))

(declare-fun d!1223888 () Bool)

(assert (=> d!1223888 true))

(declare-fun lambda!128837 () Int)

(declare-fun order!23589 () Int)

(declare-fun dynLambda!19165 (Int Int) Int)

(assert (=> d!1223888 (< (dynLambda!19159 order!23581 (toValue!9982 (transformation!7322 (h!50141 rules!3756)))) (dynLambda!19165 order!23589 lambda!128837))))

(declare-fun Forall2!1149 (Int) Bool)

(assert (=> d!1223888 (= (equivClasses!3056 (toChars!9841 (transformation!7322 (h!50141 rules!3756))) (toValue!9982 (transformation!7322 (h!50141 rules!3756)))) (Forall2!1149 lambda!128837))))

(declare-fun bs!595021 () Bool)

(assert (= bs!595021 d!1223888))

(declare-fun m!4728587 () Bool)

(assert (=> bs!595021 m!4728587))

(assert (=> b!4130686 d!1223888))

(declare-fun bs!595023 () Bool)

(declare-fun d!1223898 () Bool)

(assert (= bs!595023 (and d!1223898 d!1223764)))

(declare-fun lambda!128840 () Int)

(assert (=> bs!595023 (= lambda!128840 lambda!128821)))

(assert (=> d!1223898 true))

(assert (=> d!1223898 (< (dynLambda!19161 order!23585 (toChars!9841 (transformation!7322 r!4008))) (dynLambda!19160 order!23583 lambda!128840))))

(assert (=> d!1223898 true))

(assert (=> d!1223898 (< (dynLambda!19159 order!23581 (toValue!9982 (transformation!7322 r!4008))) (dynLambda!19160 order!23583 lambda!128840))))

(declare-fun Forall!1549 (Int) Bool)

(assert (=> d!1223898 (= (semiInverseModEq!3157 (toChars!9841 (transformation!7322 r!4008)) (toValue!9982 (transformation!7322 r!4008))) (Forall!1549 lambda!128840))))

(declare-fun bs!595024 () Bool)

(assert (= bs!595024 d!1223898))

(declare-fun m!4728603 () Bool)

(assert (=> bs!595024 m!4728603))

(assert (=> d!1223828 d!1223898))

(declare-fun bs!595025 () Bool)

(declare-fun d!1223902 () Bool)

(assert (= bs!595025 (and d!1223902 d!1223764)))

(declare-fun lambda!128841 () Int)

(assert (=> bs!595025 (= (and (= (toChars!9841 (transformation!7322 rBis!149)) (toChars!9841 (transformation!7322 r!4008))) (= (toValue!9982 (transformation!7322 rBis!149)) (toValue!9982 (transformation!7322 r!4008)))) (= lambda!128841 lambda!128821))))

(declare-fun bs!595026 () Bool)

(assert (= bs!595026 (and d!1223902 d!1223898)))

(assert (=> bs!595026 (= (and (= (toChars!9841 (transformation!7322 rBis!149)) (toChars!9841 (transformation!7322 r!4008))) (= (toValue!9982 (transformation!7322 rBis!149)) (toValue!9982 (transformation!7322 r!4008)))) (= lambda!128841 lambda!128840))))

(assert (=> d!1223902 true))

(assert (=> d!1223902 (< (dynLambda!19161 order!23585 (toChars!9841 (transformation!7322 rBis!149))) (dynLambda!19160 order!23583 lambda!128841))))

(assert (=> d!1223902 true))

(assert (=> d!1223902 (< (dynLambda!19159 order!23581 (toValue!9982 (transformation!7322 rBis!149))) (dynLambda!19160 order!23583 lambda!128841))))

(assert (=> d!1223902 (= (semiInverseModEq!3157 (toChars!9841 (transformation!7322 rBis!149)) (toValue!9982 (transformation!7322 rBis!149))) (Forall!1549 lambda!128841))))

(declare-fun bs!595027 () Bool)

(assert (= bs!595027 d!1223902))

(declare-fun m!4728605 () Bool)

(assert (=> bs!595027 m!4728605))

(assert (=> d!1223818 d!1223902))

(declare-fun bs!595028 () Bool)

(declare-fun d!1223904 () Bool)

(assert (= bs!595028 (and d!1223904 d!1223764)))

(declare-fun lambda!128842 () Int)

(assert (=> bs!595028 (= (and (= (toChars!9841 (transformation!7322 (h!50141 rules!3756))) (toChars!9841 (transformation!7322 r!4008))) (= (toValue!9982 (transformation!7322 (h!50141 rules!3756))) (toValue!9982 (transformation!7322 r!4008)))) (= lambda!128842 lambda!128821))))

(declare-fun bs!595029 () Bool)

(assert (= bs!595029 (and d!1223904 d!1223898)))

(assert (=> bs!595029 (= (and (= (toChars!9841 (transformation!7322 (h!50141 rules!3756))) (toChars!9841 (transformation!7322 r!4008))) (= (toValue!9982 (transformation!7322 (h!50141 rules!3756))) (toValue!9982 (transformation!7322 r!4008)))) (= lambda!128842 lambda!128840))))

(declare-fun bs!595030 () Bool)

(assert (= bs!595030 (and d!1223904 d!1223902)))

(assert (=> bs!595030 (= (and (= (toChars!9841 (transformation!7322 (h!50141 rules!3756))) (toChars!9841 (transformation!7322 rBis!149))) (= (toValue!9982 (transformation!7322 (h!50141 rules!3756))) (toValue!9982 (transformation!7322 rBis!149)))) (= lambda!128842 lambda!128841))))

(assert (=> d!1223904 true))

(assert (=> d!1223904 (< (dynLambda!19161 order!23585 (toChars!9841 (transformation!7322 (h!50141 rules!3756)))) (dynLambda!19160 order!23583 lambda!128842))))

(assert (=> d!1223904 true))

(assert (=> d!1223904 (< (dynLambda!19159 order!23581 (toValue!9982 (transformation!7322 (h!50141 rules!3756)))) (dynLambda!19160 order!23583 lambda!128842))))

(assert (=> d!1223904 (= (semiInverseModEq!3157 (toChars!9841 (transformation!7322 (h!50141 rules!3756))) (toValue!9982 (transformation!7322 (h!50141 rules!3756)))) (Forall!1549 lambda!128842))))

(declare-fun bs!595031 () Bool)

(assert (= bs!595031 d!1223904))

(declare-fun m!4728609 () Bool)

(assert (=> bs!595031 m!4728609))

(assert (=> d!1223822 d!1223904))

(declare-fun d!1223906 () Bool)

(assert (=> d!1223906 true))

(declare-fun lt!1473266 () Bool)

(declare-fun rulesValidInductive!2707 (LexerInterface!6911 List!44845) Bool)

(assert (=> d!1223906 (= lt!1473266 (rulesValidInductive!2707 thiss!25645 rules!3756))))

(declare-fun lambda!128845 () Int)

(declare-fun forall!8453 (List!44845 Int) Bool)

(assert (=> d!1223906 (= lt!1473266 (forall!8453 rules!3756 lambda!128845))))

(assert (=> d!1223906 (= (rulesValid!2872 thiss!25645 rules!3756) lt!1473266)))

(declare-fun bs!595032 () Bool)

(assert (= bs!595032 d!1223906))

(declare-fun m!4728617 () Bool)

(assert (=> bs!595032 m!4728617))

(declare-fun m!4728621 () Bool)

(assert (=> bs!595032 m!4728621))

(assert (=> d!1223814 d!1223906))

(declare-fun d!1223908 () Bool)

(assert (=> d!1223908 (= (inv!59310 (tag!8182 (h!50141 (t!341518 rules!3756)))) (= (mod (str.len (value!229230 (tag!8182 (h!50141 (t!341518 rules!3756))))) 2) 0))))

(assert (=> b!4130727 d!1223908))

(declare-fun d!1223910 () Bool)

(declare-fun res!1688727 () Bool)

(declare-fun e!2563085 () Bool)

(assert (=> d!1223910 (=> (not res!1688727) (not e!2563085))))

(assert (=> d!1223910 (= res!1688727 (semiInverseModEq!3157 (toChars!9841 (transformation!7322 (h!50141 (t!341518 rules!3756)))) (toValue!9982 (transformation!7322 (h!50141 (t!341518 rules!3756))))))))

(assert (=> d!1223910 (= (inv!59313 (transformation!7322 (h!50141 (t!341518 rules!3756)))) e!2563085)))

(declare-fun b!4130898 () Bool)

(assert (=> b!4130898 (= e!2563085 (equivClasses!3056 (toChars!9841 (transformation!7322 (h!50141 (t!341518 rules!3756)))) (toValue!9982 (transformation!7322 (h!50141 (t!341518 rules!3756))))))))

(assert (= (and d!1223910 res!1688727) b!4130898))

(declare-fun m!4728625 () Bool)

(assert (=> d!1223910 m!4728625))

(declare-fun m!4728627 () Bool)

(assert (=> b!4130898 m!4728627))

(assert (=> b!4130727 d!1223910))

(declare-fun d!1223914 () Bool)

(declare-fun e!2563088 () Bool)

(assert (=> d!1223914 e!2563088))

(declare-fun res!1688730 () Bool)

(assert (=> d!1223914 (=> (not res!1688730) (not e!2563088))))

(declare-fun lt!1473269 () BalanceConc!26660)

(assert (=> d!1223914 (= res!1688730 (= (list!16387 lt!1473269) p!2912))))

(declare-fun fromList!900 (List!44844) Conc!13533)

(assert (=> d!1223914 (= lt!1473269 (BalanceConc!26661 (fromList!900 p!2912)))))

(assert (=> d!1223914 (= (fromListB!2490 p!2912) lt!1473269)))

(declare-fun b!4130901 () Bool)

(declare-fun isBalanced!3722 (Conc!13533) Bool)

(assert (=> b!4130901 (= e!2563088 (isBalanced!3722 (fromList!900 p!2912)))))

(assert (= (and d!1223914 res!1688730) b!4130901))

(declare-fun m!4728629 () Bool)

(assert (=> d!1223914 m!4728629))

(declare-fun m!4728631 () Bool)

(assert (=> d!1223914 m!4728631))

(assert (=> b!4130901 m!4728631))

(assert (=> b!4130901 m!4728631))

(declare-fun m!4728633 () Bool)

(assert (=> b!4130901 m!4728633))

(assert (=> d!1223802 d!1223914))

(declare-fun d!1223916 () Bool)

(declare-fun c!708793 () Bool)

(assert (=> d!1223916 (= c!708793 ((_ is Nil!44721) rules!3756))))

(declare-fun e!2563091 () (InoxSet Rule!14444))

(assert (=> d!1223916 (= (content!6898 rules!3756) e!2563091)))

(declare-fun b!4130906 () Bool)

(assert (=> b!4130906 (= e!2563091 ((as const (Array Rule!14444 Bool)) false))))

(declare-fun b!4130907 () Bool)

(assert (=> b!4130907 (= e!2563091 ((_ map or) (store ((as const (Array Rule!14444 Bool)) false) (h!50141 rules!3756) true) (content!6898 (t!341518 rules!3756))))))

(assert (= (and d!1223916 c!708793) b!4130906))

(assert (= (and d!1223916 (not c!708793)) b!4130907))

(declare-fun m!4728635 () Bool)

(assert (=> b!4130907 m!4728635))

(declare-fun m!4728637 () Bool)

(assert (=> b!4130907 m!4728637))

(assert (=> d!1223812 d!1223916))

(declare-fun d!1223918 () Bool)

(declare-fun c!708794 () Bool)

(assert (=> d!1223918 (= c!708794 ((_ is Node!13533) (c!708760 (dynLambda!19162 (toChars!9841 (transformation!7322 r!4008)) (dynLambda!19163 (toValue!9982 (transformation!7322 r!4008)) lt!1473222)))))))

(declare-fun e!2563092 () Bool)

(assert (=> d!1223918 (= (inv!59317 (c!708760 (dynLambda!19162 (toChars!9841 (transformation!7322 r!4008)) (dynLambda!19163 (toValue!9982 (transformation!7322 r!4008)) lt!1473222)))) e!2563092)))

(declare-fun b!4130908 () Bool)

(assert (=> b!4130908 (= e!2563092 (inv!59321 (c!708760 (dynLambda!19162 (toChars!9841 (transformation!7322 r!4008)) (dynLambda!19163 (toValue!9982 (transformation!7322 r!4008)) lt!1473222)))))))

(declare-fun b!4130909 () Bool)

(declare-fun e!2563093 () Bool)

(assert (=> b!4130909 (= e!2563092 e!2563093)))

(declare-fun res!1688731 () Bool)

(assert (=> b!4130909 (= res!1688731 (not ((_ is Leaf!20909) (c!708760 (dynLambda!19162 (toChars!9841 (transformation!7322 r!4008)) (dynLambda!19163 (toValue!9982 (transformation!7322 r!4008)) lt!1473222))))))))

(assert (=> b!4130909 (=> res!1688731 e!2563093)))

(declare-fun b!4130910 () Bool)

(assert (=> b!4130910 (= e!2563093 (inv!59322 (c!708760 (dynLambda!19162 (toChars!9841 (transformation!7322 r!4008)) (dynLambda!19163 (toValue!9982 (transformation!7322 r!4008)) lt!1473222)))))))

(assert (= (and d!1223918 c!708794) b!4130908))

(assert (= (and d!1223918 (not c!708794)) b!4130909))

(assert (= (and b!4130909 (not res!1688731)) b!4130910))

(declare-fun m!4728639 () Bool)

(assert (=> b!4130908 m!4728639))

(declare-fun m!4728641 () Bool)

(assert (=> b!4130910 m!4728641))

(assert (=> b!4130646 d!1223918))

(declare-fun bs!595034 () Bool)

(declare-fun d!1223920 () Bool)

(assert (= bs!595034 (and d!1223920 d!1223888)))

(declare-fun lambda!128846 () Int)

(assert (=> bs!595034 (= (= (toValue!9982 (transformation!7322 r!4008)) (toValue!9982 (transformation!7322 (h!50141 rules!3756)))) (= lambda!128846 lambda!128837))))

(assert (=> d!1223920 true))

(assert (=> d!1223920 (< (dynLambda!19159 order!23581 (toValue!9982 (transformation!7322 r!4008))) (dynLambda!19165 order!23589 lambda!128846))))

(assert (=> d!1223920 (= (equivClasses!3056 (toChars!9841 (transformation!7322 r!4008)) (toValue!9982 (transformation!7322 r!4008))) (Forall2!1149 lambda!128846))))

(declare-fun bs!595035 () Bool)

(assert (= bs!595035 d!1223920))

(declare-fun m!4728643 () Bool)

(assert (=> bs!595035 m!4728643))

(assert (=> b!4130689 d!1223920))

(declare-fun d!1223922 () Bool)

(declare-fun list!16389 (Conc!13533) List!44844)

(assert (=> d!1223922 (= (list!16387 (dynLambda!19162 (toChars!9841 (transformation!7322 r!4008)) (dynLambda!19163 (toValue!9982 (transformation!7322 r!4008)) lt!1473222))) (list!16389 (c!708760 (dynLambda!19162 (toChars!9841 (transformation!7322 r!4008)) (dynLambda!19163 (toValue!9982 (transformation!7322 r!4008)) lt!1473222)))))))

(declare-fun bs!595036 () Bool)

(assert (= bs!595036 d!1223922))

(declare-fun m!4728645 () Bool)

(assert (=> bs!595036 m!4728645))

(assert (=> d!1223764 d!1223922))

(declare-fun d!1223924 () Bool)

(assert (=> d!1223924 (= (list!16387 lt!1473222) (list!16389 (c!708760 lt!1473222)))))

(declare-fun bs!595037 () Bool)

(assert (= bs!595037 d!1223924))

(declare-fun m!4728647 () Bool)

(assert (=> bs!595037 m!4728647))

(assert (=> d!1223764 d!1223924))

(declare-fun d!1223926 () Bool)

(declare-fun dynLambda!19166 (Int BalanceConc!26660) Bool)

(assert (=> d!1223926 (dynLambda!19166 lambda!128821 lt!1473222)))

(declare-fun lt!1473272 () Unit!64049)

(declare-fun choose!25252 (Int BalanceConc!26660) Unit!64049)

(assert (=> d!1223926 (= lt!1473272 (choose!25252 lambda!128821 lt!1473222))))

(assert (=> d!1223926 (Forall!1549 lambda!128821)))

(assert (=> d!1223926 (= (ForallOf!940 lambda!128821 lt!1473222) lt!1473272)))

(declare-fun b_lambda!121329 () Bool)

(assert (=> (not b_lambda!121329) (not d!1223926)))

(declare-fun bs!595038 () Bool)

(assert (= bs!595038 d!1223926))

(declare-fun m!4728649 () Bool)

(assert (=> bs!595038 m!4728649))

(declare-fun m!4728651 () Bool)

(assert (=> bs!595038 m!4728651))

(declare-fun m!4728653 () Bool)

(assert (=> bs!595038 m!4728653))

(assert (=> d!1223764 d!1223926))

(declare-fun bs!595039 () Bool)

(declare-fun d!1223928 () Bool)

(assert (= bs!595039 (and d!1223928 d!1223888)))

(declare-fun lambda!128847 () Int)

(assert (=> bs!595039 (= (= (toValue!9982 (transformation!7322 rBis!149)) (toValue!9982 (transformation!7322 (h!50141 rules!3756)))) (= lambda!128847 lambda!128837))))

(declare-fun bs!595040 () Bool)

(assert (= bs!595040 (and d!1223928 d!1223920)))

(assert (=> bs!595040 (= (= (toValue!9982 (transformation!7322 rBis!149)) (toValue!9982 (transformation!7322 r!4008))) (= lambda!128847 lambda!128846))))

(assert (=> d!1223928 true))

(assert (=> d!1223928 (< (dynLambda!19159 order!23581 (toValue!9982 (transformation!7322 rBis!149))) (dynLambda!19165 order!23589 lambda!128847))))

(assert (=> d!1223928 (= (equivClasses!3056 (toChars!9841 (transformation!7322 rBis!149)) (toValue!9982 (transformation!7322 rBis!149))) (Forall2!1149 lambda!128847))))

(declare-fun bs!595041 () Bool)

(assert (= bs!595041 d!1223928))

(declare-fun m!4728655 () Bool)

(assert (=> bs!595041 m!4728655))

(assert (=> b!4130685 d!1223928))

(declare-fun d!1223930 () Bool)

(declare-fun res!1688736 () Bool)

(declare-fun e!2563098 () Bool)

(assert (=> d!1223930 (=> res!1688736 e!2563098)))

(assert (=> d!1223930 (= res!1688736 ((_ is Nil!44721) rules!3756))))

(assert (=> d!1223930 (= (noDuplicateTag!2955 thiss!25645 rules!3756 Nil!44723) e!2563098)))

(declare-fun b!4130915 () Bool)

(declare-fun e!2563099 () Bool)

(assert (=> b!4130915 (= e!2563098 e!2563099)))

(declare-fun res!1688737 () Bool)

(assert (=> b!4130915 (=> (not res!1688737) (not e!2563099))))

(declare-fun contains!9000 (List!44847 String!51510) Bool)

(assert (=> b!4130915 (= res!1688737 (not (contains!9000 Nil!44723 (tag!8182 (h!50141 rules!3756)))))))

(declare-fun b!4130916 () Bool)

(assert (=> b!4130916 (= e!2563099 (noDuplicateTag!2955 thiss!25645 (t!341518 rules!3756) (Cons!44723 (tag!8182 (h!50141 rules!3756)) Nil!44723)))))

(assert (= (and d!1223930 (not res!1688736)) b!4130915))

(assert (= (and b!4130915 res!1688737) b!4130916))

(declare-fun m!4728657 () Bool)

(assert (=> b!4130915 m!4728657))

(declare-fun m!4728659 () Bool)

(assert (=> b!4130916 m!4728659))

(assert (=> b!4130682 d!1223930))

(declare-fun d!1223932 () Bool)

(assert (=> d!1223932 (= (list!16387 (dynLambda!19162 (toChars!9841 (transformation!7322 (rule!10414 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912)))) (value!229231 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912)))) (list!16389 (c!708760 (dynLambda!19162 (toChars!9841 (transformation!7322 (rule!10414 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912)))) (value!229231 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912))))))))

(declare-fun bs!595042 () Bool)

(assert (= bs!595042 d!1223932))

(declare-fun m!4728661 () Bool)

(assert (=> bs!595042 m!4728661))

(assert (=> b!4130653 d!1223932))

(declare-fun d!1223934 () Bool)

(assert (=> d!1223934 (= (inv!59318 (dynLambda!19162 (toChars!9841 (transformation!7322 r!4008)) (dynLambda!19163 (toValue!9982 (transformation!7322 r!4008)) lt!1473222))) (isBalanced!3722 (c!708760 (dynLambda!19162 (toChars!9841 (transformation!7322 r!4008)) (dynLambda!19163 (toValue!9982 (transformation!7322 r!4008)) lt!1473222)))))))

(declare-fun bs!595043 () Bool)

(assert (= bs!595043 d!1223934))

(declare-fun m!4728663 () Bool)

(assert (=> bs!595043 m!4728663))

(assert (=> tb!247919 d!1223934))

(declare-fun d!1223936 () Bool)

(declare-fun lt!1473273 () Int)

(assert (=> d!1223936 (>= lt!1473273 0)))

(declare-fun e!2563100 () Int)

(assert (=> d!1223936 (= lt!1473273 e!2563100)))

(declare-fun c!708795 () Bool)

(assert (=> d!1223936 (= c!708795 ((_ is Nil!44720) (originalCharacters!7818 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912))))))

(assert (=> d!1223936 (= (size!33110 (originalCharacters!7818 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912))) lt!1473273)))

(declare-fun b!4130917 () Bool)

(assert (=> b!4130917 (= e!2563100 0)))

(declare-fun b!4130918 () Bool)

(assert (=> b!4130918 (= e!2563100 (+ 1 (size!33110 (t!341517 (originalCharacters!7818 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912))))))))

(assert (= (and d!1223936 c!708795) b!4130917))

(assert (= (and d!1223936 (not c!708795)) b!4130918))

(declare-fun m!4728665 () Bool)

(assert (=> b!4130918 m!4728665))

(assert (=> b!4130654 d!1223936))

(declare-fun d!1223938 () Bool)

(declare-fun lt!1473274 () Bool)

(assert (=> d!1223938 (= lt!1473274 (select (content!6898 (t!341518 rules!3756)) r!4008))))

(declare-fun e!2563101 () Bool)

(assert (=> d!1223938 (= lt!1473274 e!2563101)))

(declare-fun res!1688739 () Bool)

(assert (=> d!1223938 (=> (not res!1688739) (not e!2563101))))

(assert (=> d!1223938 (= res!1688739 ((_ is Cons!44721) (t!341518 rules!3756)))))

(assert (=> d!1223938 (= (contains!8998 (t!341518 rules!3756) r!4008) lt!1473274)))

(declare-fun b!4130919 () Bool)

(declare-fun e!2563102 () Bool)

(assert (=> b!4130919 (= e!2563101 e!2563102)))

(declare-fun res!1688738 () Bool)

(assert (=> b!4130919 (=> res!1688738 e!2563102)))

(assert (=> b!4130919 (= res!1688738 (= (h!50141 (t!341518 rules!3756)) r!4008))))

(declare-fun b!4130920 () Bool)

(assert (=> b!4130920 (= e!2563102 (contains!8998 (t!341518 (t!341518 rules!3756)) r!4008))))

(assert (= (and d!1223938 res!1688739) b!4130919))

(assert (= (and b!4130919 (not res!1688738)) b!4130920))

(assert (=> d!1223938 m!4728637))

(declare-fun m!4728667 () Bool)

(assert (=> d!1223938 m!4728667))

(declare-fun m!4728669 () Bool)

(assert (=> b!4130920 m!4728669))

(assert (=> b!4130679 d!1223938))

(declare-fun d!1223940 () Bool)

(declare-fun lt!1473275 () Int)

(assert (=> d!1223940 (>= lt!1473275 0)))

(declare-fun e!2563103 () Int)

(assert (=> d!1223940 (= lt!1473275 e!2563103)))

(declare-fun c!708796 () Bool)

(assert (=> d!1223940 (= c!708796 ((_ is Nil!44720) input!3238))))

(assert (=> d!1223940 (= (size!33110 input!3238) lt!1473275)))

(declare-fun b!4130921 () Bool)

(assert (=> b!4130921 (= e!2563103 0)))

(declare-fun b!4130922 () Bool)

(assert (=> b!4130922 (= e!2563103 (+ 1 (size!33110 (t!341517 input!3238))))))

(assert (= (and d!1223940 c!708796) b!4130921))

(assert (= (and d!1223940 (not c!708796)) b!4130922))

(declare-fun m!4728671 () Bool)

(assert (=> b!4130922 m!4728671))

(assert (=> b!4130673 d!1223940))

(assert (=> b!4130673 d!1223806))

(assert (=> d!1223824 d!1223916))

(declare-fun d!1223942 () Bool)

(assert (=> d!1223942 (= (head!8704 p!2912) (h!50140 p!2912))))

(assert (=> b!4130671 d!1223942))

(declare-fun d!1223944 () Bool)

(assert (=> d!1223944 (= (head!8704 input!3238) (h!50140 input!3238))))

(assert (=> b!4130671 d!1223944))

(declare-fun b!4130925 () Bool)

(declare-fun e!2563106 () Bool)

(assert (=> b!4130925 (= e!2563106 (isPrefix!4257 (tail!6477 (tail!6477 p!2912)) (tail!6477 (tail!6477 input!3238))))))

(declare-fun b!4130923 () Bool)

(declare-fun e!2563104 () Bool)

(assert (=> b!4130923 (= e!2563104 e!2563106)))

(declare-fun res!1688742 () Bool)

(assert (=> b!4130923 (=> (not res!1688742) (not e!2563106))))

(assert (=> b!4130923 (= res!1688742 (not ((_ is Nil!44720) (tail!6477 input!3238))))))

(declare-fun b!4130924 () Bool)

(declare-fun res!1688743 () Bool)

(assert (=> b!4130924 (=> (not res!1688743) (not e!2563106))))

(assert (=> b!4130924 (= res!1688743 (= (head!8704 (tail!6477 p!2912)) (head!8704 (tail!6477 input!3238))))))

(declare-fun b!4130926 () Bool)

(declare-fun e!2563105 () Bool)

(assert (=> b!4130926 (= e!2563105 (>= (size!33110 (tail!6477 input!3238)) (size!33110 (tail!6477 p!2912))))))

(declare-fun d!1223946 () Bool)

(assert (=> d!1223946 e!2563105))

(declare-fun res!1688741 () Bool)

(assert (=> d!1223946 (=> res!1688741 e!2563105)))

(declare-fun lt!1473276 () Bool)

(assert (=> d!1223946 (= res!1688741 (not lt!1473276))))

(assert (=> d!1223946 (= lt!1473276 e!2563104)))

(declare-fun res!1688740 () Bool)

(assert (=> d!1223946 (=> res!1688740 e!2563104)))

(assert (=> d!1223946 (= res!1688740 ((_ is Nil!44720) (tail!6477 p!2912)))))

(assert (=> d!1223946 (= (isPrefix!4257 (tail!6477 p!2912) (tail!6477 input!3238)) lt!1473276)))

(assert (= (and d!1223946 (not res!1688740)) b!4130923))

(assert (= (and b!4130923 res!1688742) b!4130924))

(assert (= (and b!4130924 res!1688743) b!4130925))

(assert (= (and d!1223946 (not res!1688741)) b!4130926))

(assert (=> b!4130925 m!4728459))

(declare-fun m!4728673 () Bool)

(assert (=> b!4130925 m!4728673))

(assert (=> b!4130925 m!4728461))

(declare-fun m!4728675 () Bool)

(assert (=> b!4130925 m!4728675))

(assert (=> b!4130925 m!4728673))

(assert (=> b!4130925 m!4728675))

(declare-fun m!4728677 () Bool)

(assert (=> b!4130925 m!4728677))

(assert (=> b!4130924 m!4728459))

(declare-fun m!4728679 () Bool)

(assert (=> b!4130924 m!4728679))

(assert (=> b!4130924 m!4728461))

(declare-fun m!4728681 () Bool)

(assert (=> b!4130924 m!4728681))

(assert (=> b!4130926 m!4728461))

(declare-fun m!4728683 () Bool)

(assert (=> b!4130926 m!4728683))

(assert (=> b!4130926 m!4728459))

(declare-fun m!4728685 () Bool)

(assert (=> b!4130926 m!4728685))

(assert (=> b!4130672 d!1223946))

(declare-fun d!1223948 () Bool)

(assert (=> d!1223948 (= (tail!6477 p!2912) (t!341517 p!2912))))

(assert (=> b!4130672 d!1223948))

(declare-fun d!1223950 () Bool)

(assert (=> d!1223950 (= (tail!6477 input!3238) (t!341517 input!3238))))

(assert (=> b!4130672 d!1223950))

(declare-fun d!1223952 () Bool)

(declare-fun lt!1473277 () Int)

(assert (=> d!1223952 (>= lt!1473277 0)))

(declare-fun e!2563107 () Int)

(assert (=> d!1223952 (= lt!1473277 e!2563107)))

(declare-fun c!708797 () Bool)

(assert (=> d!1223952 (= c!708797 ((_ is Nil!44720) (t!341517 p!2912)))))

(assert (=> d!1223952 (= (size!33110 (t!341517 p!2912)) lt!1473277)))

(declare-fun b!4130927 () Bool)

(assert (=> b!4130927 (= e!2563107 0)))

(declare-fun b!4130928 () Bool)

(assert (=> b!4130928 (= e!2563107 (+ 1 (size!33110 (t!341517 (t!341517 p!2912)))))))

(assert (= (and d!1223952 c!708797) b!4130927))

(assert (= (and d!1223952 (not c!708797)) b!4130928))

(declare-fun m!4728687 () Bool)

(assert (=> b!4130928 m!4728687))

(assert (=> b!4130661 d!1223952))

(declare-fun d!1223954 () Bool)

(assert (=> d!1223954 (= (inv!59318 (dynLambda!19162 (toChars!9841 (transformation!7322 (rule!10414 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912)))) (value!229231 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912)))) (isBalanced!3722 (c!708760 (dynLambda!19162 (toChars!9841 (transformation!7322 (rule!10414 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912)))) (value!229231 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912))))))))

(declare-fun bs!595044 () Bool)

(assert (= bs!595044 d!1223954))

(declare-fun m!4728689 () Bool)

(assert (=> bs!595044 m!4728689))

(assert (=> tb!247931 d!1223954))

(declare-fun d!1223956 () Bool)

(assert (=> d!1223956 (= (isEmpty!26628 (originalCharacters!7818 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912))) ((_ is Nil!44720) (originalCharacters!7818 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912))))))

(assert (=> d!1223804 d!1223956))

(declare-fun d!1223958 () Bool)

(declare-fun lt!1473278 () Bool)

(assert (=> d!1223958 (= lt!1473278 (select (content!6898 (t!341518 rules!3756)) rBis!149))))

(declare-fun e!2563108 () Bool)

(assert (=> d!1223958 (= lt!1473278 e!2563108)))

(declare-fun res!1688745 () Bool)

(assert (=> d!1223958 (=> (not res!1688745) (not e!2563108))))

(assert (=> d!1223958 (= res!1688745 ((_ is Cons!44721) (t!341518 rules!3756)))))

(assert (=> d!1223958 (= (contains!8998 (t!341518 rules!3756) rBis!149) lt!1473278)))

(declare-fun b!4130929 () Bool)

(declare-fun e!2563109 () Bool)

(assert (=> b!4130929 (= e!2563108 e!2563109)))

(declare-fun res!1688744 () Bool)

(assert (=> b!4130929 (=> res!1688744 e!2563109)))

(assert (=> b!4130929 (= res!1688744 (= (h!50141 (t!341518 rules!3756)) rBis!149))))

(declare-fun b!4130930 () Bool)

(assert (=> b!4130930 (= e!2563109 (contains!8998 (t!341518 (t!341518 rules!3756)) rBis!149))))

(assert (= (and d!1223958 res!1688745) b!4130929))

(assert (= (and b!4130929 (not res!1688744)) b!4130930))

(assert (=> d!1223958 m!4728637))

(declare-fun m!4728691 () Bool)

(assert (=> d!1223958 m!4728691))

(declare-fun m!4728693 () Bool)

(assert (=> b!4130930 m!4728693))

(assert (=> b!4130688 d!1223958))

(declare-fun b!4130941 () Bool)

(declare-fun res!1688748 () Bool)

(declare-fun e!2563117 () Bool)

(assert (=> b!4130941 (=> res!1688748 e!2563117)))

(assert (=> b!4130941 (= res!1688748 (not ((_ is IntegerValue!22658) (dynLambda!19163 (toValue!9982 (transformation!7322 r!4008)) lt!1473222))))))

(declare-fun e!2563118 () Bool)

(assert (=> b!4130941 (= e!2563118 e!2563117)))

(declare-fun b!4130942 () Bool)

(declare-fun inv!15 (TokenValue!7552) Bool)

(assert (=> b!4130942 (= e!2563117 (inv!15 (dynLambda!19163 (toValue!9982 (transformation!7322 r!4008)) lt!1473222)))))

(declare-fun d!1223960 () Bool)

(declare-fun c!708802 () Bool)

(assert (=> d!1223960 (= c!708802 ((_ is IntegerValue!22656) (dynLambda!19163 (toValue!9982 (transformation!7322 r!4008)) lt!1473222)))))

(declare-fun e!2563116 () Bool)

(assert (=> d!1223960 (= (inv!21 (dynLambda!19163 (toValue!9982 (transformation!7322 r!4008)) lt!1473222)) e!2563116)))

(declare-fun b!4130943 () Bool)

(assert (=> b!4130943 (= e!2563116 e!2563118)))

(declare-fun c!708803 () Bool)

(assert (=> b!4130943 (= c!708803 ((_ is IntegerValue!22657) (dynLambda!19163 (toValue!9982 (transformation!7322 r!4008)) lt!1473222)))))

(declare-fun b!4130944 () Bool)

(declare-fun inv!17 (TokenValue!7552) Bool)

(assert (=> b!4130944 (= e!2563118 (inv!17 (dynLambda!19163 (toValue!9982 (transformation!7322 r!4008)) lt!1473222)))))

(declare-fun b!4130945 () Bool)

(declare-fun inv!16 (TokenValue!7552) Bool)

(assert (=> b!4130945 (= e!2563116 (inv!16 (dynLambda!19163 (toValue!9982 (transformation!7322 r!4008)) lt!1473222)))))

(assert (= (and d!1223960 c!708802) b!4130945))

(assert (= (and d!1223960 (not c!708802)) b!4130943))

(assert (= (and b!4130943 c!708803) b!4130944))

(assert (= (and b!4130943 (not c!708803)) b!4130941))

(assert (= (and b!4130941 (not res!1688748)) b!4130942))

(declare-fun m!4728695 () Bool)

(assert (=> b!4130942 m!4728695))

(declare-fun m!4728697 () Bool)

(assert (=> b!4130944 m!4728697))

(declare-fun m!4728699 () Bool)

(assert (=> b!4130945 m!4728699))

(assert (=> tb!247925 d!1223960))

(declare-fun e!2563119 () Bool)

(assert (=> b!4130716 (= tp!1258842 e!2563119)))

(declare-fun b!4130947 () Bool)

(declare-fun tp!1258956 () Bool)

(declare-fun tp!1258958 () Bool)

(assert (=> b!4130947 (= e!2563119 (and tp!1258956 tp!1258958))))

(declare-fun b!4130949 () Bool)

(declare-fun tp!1258955 () Bool)

(declare-fun tp!1258959 () Bool)

(assert (=> b!4130949 (= e!2563119 (and tp!1258955 tp!1258959))))

(declare-fun b!4130946 () Bool)

(assert (=> b!4130946 (= e!2563119 tp_is_empty!21377)))

(declare-fun b!4130948 () Bool)

(declare-fun tp!1258957 () Bool)

(assert (=> b!4130948 (= e!2563119 tp!1258957)))

(assert (= (and b!4130716 ((_ is ElementMatch!12227) (reg!12556 (regex!7322 r!4008)))) b!4130946))

(assert (= (and b!4130716 ((_ is Concat!19780) (reg!12556 (regex!7322 r!4008)))) b!4130947))

(assert (= (and b!4130716 ((_ is Star!12227) (reg!12556 (regex!7322 r!4008)))) b!4130948))

(assert (= (and b!4130716 ((_ is Union!12227) (reg!12556 (regex!7322 r!4008)))) b!4130949))

(declare-fun e!2563124 () Bool)

(declare-fun tp!1258966 () Bool)

(declare-fun b!4130958 () Bool)

(declare-fun tp!1258968 () Bool)

(assert (=> b!4130958 (= e!2563124 (and (inv!59317 (left!33488 (c!708760 (dynLambda!19162 (toChars!9841 (transformation!7322 (rule!10414 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912)))) (value!229231 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912)))))) tp!1258966 (inv!59317 (right!33818 (c!708760 (dynLambda!19162 (toChars!9841 (transformation!7322 (rule!10414 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912)))) (value!229231 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912)))))) tp!1258968))))

(declare-fun b!4130960 () Bool)

(declare-fun e!2563125 () Bool)

(declare-fun tp!1258967 () Bool)

(assert (=> b!4130960 (= e!2563125 tp!1258967)))

(declare-fun b!4130959 () Bool)

(declare-fun inv!59324 (IArray!27071) Bool)

(assert (=> b!4130959 (= e!2563124 (and (inv!59324 (xs!16839 (c!708760 (dynLambda!19162 (toChars!9841 (transformation!7322 (rule!10414 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912)))) (value!229231 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912)))))) e!2563125))))

(assert (=> b!4130655 (= tp!1258815 (and (inv!59317 (c!708760 (dynLambda!19162 (toChars!9841 (transformation!7322 (rule!10414 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912)))) (value!229231 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912))))) e!2563124))))

(assert (= (and b!4130655 ((_ is Node!13533) (c!708760 (dynLambda!19162 (toChars!9841 (transformation!7322 (rule!10414 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912)))) (value!229231 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912)))))) b!4130958))

(assert (= b!4130959 b!4130960))

(assert (= (and b!4130655 ((_ is Leaf!20909) (c!708760 (dynLambda!19162 (toChars!9841 (transformation!7322 (rule!10414 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912)))) (value!229231 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912)))))) b!4130959))

(declare-fun m!4728701 () Bool)

(assert (=> b!4130958 m!4728701))

(declare-fun m!4728703 () Bool)

(assert (=> b!4130958 m!4728703))

(declare-fun m!4728705 () Bool)

(assert (=> b!4130959 m!4728705))

(assert (=> b!4130655 m!4728445))

(declare-fun e!2563126 () Bool)

(assert (=> b!4130712 (= tp!1258834 e!2563126)))

(declare-fun b!4130962 () Bool)

(declare-fun tp!1258970 () Bool)

(declare-fun tp!1258972 () Bool)

(assert (=> b!4130962 (= e!2563126 (and tp!1258970 tp!1258972))))

(declare-fun b!4130964 () Bool)

(declare-fun tp!1258969 () Bool)

(declare-fun tp!1258973 () Bool)

(assert (=> b!4130964 (= e!2563126 (and tp!1258969 tp!1258973))))

(declare-fun b!4130961 () Bool)

(assert (=> b!4130961 (= e!2563126 tp_is_empty!21377)))

(declare-fun b!4130963 () Bool)

(declare-fun tp!1258971 () Bool)

(assert (=> b!4130963 (= e!2563126 tp!1258971)))

(assert (= (and b!4130712 ((_ is ElementMatch!12227) (regOne!24967 (regex!7322 (h!50141 rules!3756))))) b!4130961))

(assert (= (and b!4130712 ((_ is Concat!19780) (regOne!24967 (regex!7322 (h!50141 rules!3756))))) b!4130962))

(assert (= (and b!4130712 ((_ is Star!12227) (regOne!24967 (regex!7322 (h!50141 rules!3756))))) b!4130963))

(assert (= (and b!4130712 ((_ is Union!12227) (regOne!24967 (regex!7322 (h!50141 rules!3756))))) b!4130964))

(declare-fun e!2563127 () Bool)

(assert (=> b!4130712 (= tp!1258838 e!2563127)))

(declare-fun b!4130966 () Bool)

(declare-fun tp!1258975 () Bool)

(declare-fun tp!1258977 () Bool)

(assert (=> b!4130966 (= e!2563127 (and tp!1258975 tp!1258977))))

(declare-fun b!4130968 () Bool)

(declare-fun tp!1258974 () Bool)

(declare-fun tp!1258978 () Bool)

(assert (=> b!4130968 (= e!2563127 (and tp!1258974 tp!1258978))))

(declare-fun b!4130965 () Bool)

(assert (=> b!4130965 (= e!2563127 tp_is_empty!21377)))

(declare-fun b!4130967 () Bool)

(declare-fun tp!1258976 () Bool)

(assert (=> b!4130967 (= e!2563127 tp!1258976)))

(assert (= (and b!4130712 ((_ is ElementMatch!12227) (regTwo!24967 (regex!7322 (h!50141 rules!3756))))) b!4130965))

(assert (= (and b!4130712 ((_ is Concat!19780) (regTwo!24967 (regex!7322 (h!50141 rules!3756))))) b!4130966))

(assert (= (and b!4130712 ((_ is Star!12227) (regTwo!24967 (regex!7322 (h!50141 rules!3756))))) b!4130967))

(assert (= (and b!4130712 ((_ is Union!12227) (regTwo!24967 (regex!7322 (h!50141 rules!3756))))) b!4130968))

(declare-fun e!2563128 () Bool)

(assert (=> b!4130707 (= tp!1258831 e!2563128)))

(declare-fun b!4130970 () Bool)

(declare-fun tp!1258980 () Bool)

(declare-fun tp!1258982 () Bool)

(assert (=> b!4130970 (= e!2563128 (and tp!1258980 tp!1258982))))

(declare-fun b!4130972 () Bool)

(declare-fun tp!1258979 () Bool)

(declare-fun tp!1258983 () Bool)

(assert (=> b!4130972 (= e!2563128 (and tp!1258979 tp!1258983))))

(declare-fun b!4130969 () Bool)

(assert (=> b!4130969 (= e!2563128 tp_is_empty!21377)))

(declare-fun b!4130971 () Bool)

(declare-fun tp!1258981 () Bool)

(assert (=> b!4130971 (= e!2563128 tp!1258981)))

(assert (= (and b!4130707 ((_ is ElementMatch!12227) (reg!12556 (regex!7322 rBis!149)))) b!4130969))

(assert (= (and b!4130707 ((_ is Concat!19780) (reg!12556 (regex!7322 rBis!149)))) b!4130970))

(assert (= (and b!4130707 ((_ is Star!12227) (reg!12556 (regex!7322 rBis!149)))) b!4130971))

(assert (= (and b!4130707 ((_ is Union!12227) (reg!12556 (regex!7322 rBis!149)))) b!4130972))

(declare-fun e!2563129 () Bool)

(assert (=> b!4130708 (= tp!1258829 e!2563129)))

(declare-fun b!4130974 () Bool)

(declare-fun tp!1258985 () Bool)

(declare-fun tp!1258987 () Bool)

(assert (=> b!4130974 (= e!2563129 (and tp!1258985 tp!1258987))))

(declare-fun b!4130976 () Bool)

(declare-fun tp!1258984 () Bool)

(declare-fun tp!1258988 () Bool)

(assert (=> b!4130976 (= e!2563129 (and tp!1258984 tp!1258988))))

(declare-fun b!4130973 () Bool)

(assert (=> b!4130973 (= e!2563129 tp_is_empty!21377)))

(declare-fun b!4130975 () Bool)

(declare-fun tp!1258986 () Bool)

(assert (=> b!4130975 (= e!2563129 tp!1258986)))

(assert (= (and b!4130708 ((_ is ElementMatch!12227) (regOne!24967 (regex!7322 rBis!149)))) b!4130973))

(assert (= (and b!4130708 ((_ is Concat!19780) (regOne!24967 (regex!7322 rBis!149)))) b!4130974))

(assert (= (and b!4130708 ((_ is Star!12227) (regOne!24967 (regex!7322 rBis!149)))) b!4130975))

(assert (= (and b!4130708 ((_ is Union!12227) (regOne!24967 (regex!7322 rBis!149)))) b!4130976))

(declare-fun e!2563130 () Bool)

(assert (=> b!4130708 (= tp!1258833 e!2563130)))

(declare-fun b!4130978 () Bool)

(declare-fun tp!1258990 () Bool)

(declare-fun tp!1258992 () Bool)

(assert (=> b!4130978 (= e!2563130 (and tp!1258990 tp!1258992))))

(declare-fun b!4130980 () Bool)

(declare-fun tp!1258989 () Bool)

(declare-fun tp!1258993 () Bool)

(assert (=> b!4130980 (= e!2563130 (and tp!1258989 tp!1258993))))

(declare-fun b!4130977 () Bool)

(assert (=> b!4130977 (= e!2563130 tp_is_empty!21377)))

(declare-fun b!4130979 () Bool)

(declare-fun tp!1258991 () Bool)

(assert (=> b!4130979 (= e!2563130 tp!1258991)))

(assert (= (and b!4130708 ((_ is ElementMatch!12227) (regTwo!24967 (regex!7322 rBis!149)))) b!4130977))

(assert (= (and b!4130708 ((_ is Concat!19780) (regTwo!24967 (regex!7322 rBis!149)))) b!4130978))

(assert (= (and b!4130708 ((_ is Star!12227) (regTwo!24967 (regex!7322 rBis!149)))) b!4130979))

(assert (= (and b!4130708 ((_ is Union!12227) (regTwo!24967 (regex!7322 rBis!149)))) b!4130980))

(declare-fun e!2563131 () Bool)

(assert (=> b!4130715 (= tp!1258841 e!2563131)))

(declare-fun b!4130982 () Bool)

(declare-fun tp!1258995 () Bool)

(declare-fun tp!1258997 () Bool)

(assert (=> b!4130982 (= e!2563131 (and tp!1258995 tp!1258997))))

(declare-fun b!4130984 () Bool)

(declare-fun tp!1258994 () Bool)

(declare-fun tp!1258998 () Bool)

(assert (=> b!4130984 (= e!2563131 (and tp!1258994 tp!1258998))))

(declare-fun b!4130981 () Bool)

(assert (=> b!4130981 (= e!2563131 tp_is_empty!21377)))

(declare-fun b!4130983 () Bool)

(declare-fun tp!1258996 () Bool)

(assert (=> b!4130983 (= e!2563131 tp!1258996)))

(assert (= (and b!4130715 ((_ is ElementMatch!12227) (regOne!24966 (regex!7322 r!4008)))) b!4130981))

(assert (= (and b!4130715 ((_ is Concat!19780) (regOne!24966 (regex!7322 r!4008)))) b!4130982))

(assert (= (and b!4130715 ((_ is Star!12227) (regOne!24966 (regex!7322 r!4008)))) b!4130983))

(assert (= (and b!4130715 ((_ is Union!12227) (regOne!24966 (regex!7322 r!4008)))) b!4130984))

(declare-fun e!2563132 () Bool)

(assert (=> b!4130715 (= tp!1258843 e!2563132)))

(declare-fun b!4130986 () Bool)

(declare-fun tp!1259000 () Bool)

(declare-fun tp!1259002 () Bool)

(assert (=> b!4130986 (= e!2563132 (and tp!1259000 tp!1259002))))

(declare-fun b!4130988 () Bool)

(declare-fun tp!1258999 () Bool)

(declare-fun tp!1259003 () Bool)

(assert (=> b!4130988 (= e!2563132 (and tp!1258999 tp!1259003))))

(declare-fun b!4130985 () Bool)

(assert (=> b!4130985 (= e!2563132 tp_is_empty!21377)))

(declare-fun b!4130987 () Bool)

(declare-fun tp!1259001 () Bool)

(assert (=> b!4130987 (= e!2563132 tp!1259001)))

(assert (= (and b!4130715 ((_ is ElementMatch!12227) (regTwo!24966 (regex!7322 r!4008)))) b!4130985))

(assert (= (and b!4130715 ((_ is Concat!19780) (regTwo!24966 (regex!7322 r!4008)))) b!4130986))

(assert (= (and b!4130715 ((_ is Star!12227) (regTwo!24966 (regex!7322 r!4008)))) b!4130987))

(assert (= (and b!4130715 ((_ is Union!12227) (regTwo!24966 (regex!7322 r!4008)))) b!4130988))

(declare-fun e!2563133 () Bool)

(assert (=> b!4130706 (= tp!1258830 e!2563133)))

(declare-fun b!4130990 () Bool)

(declare-fun tp!1259005 () Bool)

(declare-fun tp!1259007 () Bool)

(assert (=> b!4130990 (= e!2563133 (and tp!1259005 tp!1259007))))

(declare-fun b!4130992 () Bool)

(declare-fun tp!1259004 () Bool)

(declare-fun tp!1259008 () Bool)

(assert (=> b!4130992 (= e!2563133 (and tp!1259004 tp!1259008))))

(declare-fun b!4130989 () Bool)

(assert (=> b!4130989 (= e!2563133 tp_is_empty!21377)))

(declare-fun b!4130991 () Bool)

(declare-fun tp!1259006 () Bool)

(assert (=> b!4130991 (= e!2563133 tp!1259006)))

(assert (= (and b!4130706 ((_ is ElementMatch!12227) (regOne!24966 (regex!7322 rBis!149)))) b!4130989))

(assert (= (and b!4130706 ((_ is Concat!19780) (regOne!24966 (regex!7322 rBis!149)))) b!4130990))

(assert (= (and b!4130706 ((_ is Star!12227) (regOne!24966 (regex!7322 rBis!149)))) b!4130991))

(assert (= (and b!4130706 ((_ is Union!12227) (regOne!24966 (regex!7322 rBis!149)))) b!4130992))

(declare-fun e!2563134 () Bool)

(assert (=> b!4130706 (= tp!1258832 e!2563134)))

(declare-fun b!4130994 () Bool)

(declare-fun tp!1259010 () Bool)

(declare-fun tp!1259012 () Bool)

(assert (=> b!4130994 (= e!2563134 (and tp!1259010 tp!1259012))))

(declare-fun b!4130996 () Bool)

(declare-fun tp!1259009 () Bool)

(declare-fun tp!1259013 () Bool)

(assert (=> b!4130996 (= e!2563134 (and tp!1259009 tp!1259013))))

(declare-fun b!4130993 () Bool)

(assert (=> b!4130993 (= e!2563134 tp_is_empty!21377)))

(declare-fun b!4130995 () Bool)

(declare-fun tp!1259011 () Bool)

(assert (=> b!4130995 (= e!2563134 tp!1259011)))

(assert (= (and b!4130706 ((_ is ElementMatch!12227) (regTwo!24966 (regex!7322 rBis!149)))) b!4130993))

(assert (= (and b!4130706 ((_ is Concat!19780) (regTwo!24966 (regex!7322 rBis!149)))) b!4130994))

(assert (= (and b!4130706 ((_ is Star!12227) (regTwo!24966 (regex!7322 rBis!149)))) b!4130995))

(assert (= (and b!4130706 ((_ is Union!12227) (regTwo!24966 (regex!7322 rBis!149)))) b!4130996))

(declare-fun e!2563135 () Bool)

(assert (=> b!4130711 (= tp!1258836 e!2563135)))

(declare-fun b!4130998 () Bool)

(declare-fun tp!1259015 () Bool)

(declare-fun tp!1259017 () Bool)

(assert (=> b!4130998 (= e!2563135 (and tp!1259015 tp!1259017))))

(declare-fun b!4131000 () Bool)

(declare-fun tp!1259014 () Bool)

(declare-fun tp!1259018 () Bool)

(assert (=> b!4131000 (= e!2563135 (and tp!1259014 tp!1259018))))

(declare-fun b!4130997 () Bool)

(assert (=> b!4130997 (= e!2563135 tp_is_empty!21377)))

(declare-fun b!4130999 () Bool)

(declare-fun tp!1259016 () Bool)

(assert (=> b!4130999 (= e!2563135 tp!1259016)))

(assert (= (and b!4130711 ((_ is ElementMatch!12227) (reg!12556 (regex!7322 (h!50141 rules!3756))))) b!4130997))

(assert (= (and b!4130711 ((_ is Concat!19780) (reg!12556 (regex!7322 (h!50141 rules!3756))))) b!4130998))

(assert (= (and b!4130711 ((_ is Star!12227) (reg!12556 (regex!7322 (h!50141 rules!3756))))) b!4130999))

(assert (= (and b!4130711 ((_ is Union!12227) (reg!12556 (regex!7322 (h!50141 rules!3756))))) b!4131000))

(declare-fun e!2563136 () Bool)

(assert (=> b!4130710 (= tp!1258835 e!2563136)))

(declare-fun b!4131002 () Bool)

(declare-fun tp!1259020 () Bool)

(declare-fun tp!1259022 () Bool)

(assert (=> b!4131002 (= e!2563136 (and tp!1259020 tp!1259022))))

(declare-fun b!4131004 () Bool)

(declare-fun tp!1259019 () Bool)

(declare-fun tp!1259023 () Bool)

(assert (=> b!4131004 (= e!2563136 (and tp!1259019 tp!1259023))))

(declare-fun b!4131001 () Bool)

(assert (=> b!4131001 (= e!2563136 tp_is_empty!21377)))

(declare-fun b!4131003 () Bool)

(declare-fun tp!1259021 () Bool)

(assert (=> b!4131003 (= e!2563136 tp!1259021)))

(assert (= (and b!4130710 ((_ is ElementMatch!12227) (regOne!24966 (regex!7322 (h!50141 rules!3756))))) b!4131001))

(assert (= (and b!4130710 ((_ is Concat!19780) (regOne!24966 (regex!7322 (h!50141 rules!3756))))) b!4131002))

(assert (= (and b!4130710 ((_ is Star!12227) (regOne!24966 (regex!7322 (h!50141 rules!3756))))) b!4131003))

(assert (= (and b!4130710 ((_ is Union!12227) (regOne!24966 (regex!7322 (h!50141 rules!3756))))) b!4131004))

(declare-fun e!2563137 () Bool)

(assert (=> b!4130710 (= tp!1258837 e!2563137)))

(declare-fun b!4131006 () Bool)

(declare-fun tp!1259025 () Bool)

(declare-fun tp!1259027 () Bool)

(assert (=> b!4131006 (= e!2563137 (and tp!1259025 tp!1259027))))

(declare-fun b!4131008 () Bool)

(declare-fun tp!1259024 () Bool)

(declare-fun tp!1259028 () Bool)

(assert (=> b!4131008 (= e!2563137 (and tp!1259024 tp!1259028))))

(declare-fun b!4131005 () Bool)

(assert (=> b!4131005 (= e!2563137 tp_is_empty!21377)))

(declare-fun b!4131007 () Bool)

(declare-fun tp!1259026 () Bool)

(assert (=> b!4131007 (= e!2563137 tp!1259026)))

(assert (= (and b!4130710 ((_ is ElementMatch!12227) (regTwo!24966 (regex!7322 (h!50141 rules!3756))))) b!4131005))

(assert (= (and b!4130710 ((_ is Concat!19780) (regTwo!24966 (regex!7322 (h!50141 rules!3756))))) b!4131006))

(assert (= (and b!4130710 ((_ is Star!12227) (regTwo!24966 (regex!7322 (h!50141 rules!3756))))) b!4131007))

(assert (= (and b!4130710 ((_ is Union!12227) (regTwo!24966 (regex!7322 (h!50141 rules!3756))))) b!4131008))

(declare-fun e!2563138 () Bool)

(assert (=> b!4130727 (= tp!1258854 e!2563138)))

(declare-fun b!4131010 () Bool)

(declare-fun tp!1259030 () Bool)

(declare-fun tp!1259032 () Bool)

(assert (=> b!4131010 (= e!2563138 (and tp!1259030 tp!1259032))))

(declare-fun b!4131012 () Bool)

(declare-fun tp!1259029 () Bool)

(declare-fun tp!1259033 () Bool)

(assert (=> b!4131012 (= e!2563138 (and tp!1259029 tp!1259033))))

(declare-fun b!4131009 () Bool)

(assert (=> b!4131009 (= e!2563138 tp_is_empty!21377)))

(declare-fun b!4131011 () Bool)

(declare-fun tp!1259031 () Bool)

(assert (=> b!4131011 (= e!2563138 tp!1259031)))

(assert (= (and b!4130727 ((_ is ElementMatch!12227) (regex!7322 (h!50141 (t!341518 rules!3756))))) b!4131009))

(assert (= (and b!4130727 ((_ is Concat!19780) (regex!7322 (h!50141 (t!341518 rules!3756))))) b!4131010))

(assert (= (and b!4130727 ((_ is Star!12227) (regex!7322 (h!50141 (t!341518 rules!3756))))) b!4131011))

(assert (= (and b!4130727 ((_ is Union!12227) (regex!7322 (h!50141 (t!341518 rules!3756))))) b!4131012))

(declare-fun b!4131013 () Bool)

(declare-fun e!2563139 () Bool)

(declare-fun tp!1259034 () Bool)

(assert (=> b!4131013 (= e!2563139 (and tp_is_empty!21377 tp!1259034))))

(assert (=> b!4130694 (= tp!1258818 e!2563139)))

(assert (= (and b!4130694 ((_ is Cons!44720) (t!341517 (t!341517 p!2912)))) b!4131013))

(declare-fun b!4131016 () Bool)

(declare-fun b_free!117171 () Bool)

(declare-fun b_next!117875 () Bool)

(assert (=> b!4131016 (= b_free!117171 (not b_next!117875))))

(declare-fun t!341576 () Bool)

(declare-fun tb!247949 () Bool)

(assert (=> (and b!4131016 (= (toValue!9982 (transformation!7322 (h!50141 (t!341518 (t!341518 rules!3756))))) (toValue!9982 (transformation!7322 r!4008))) t!341576) tb!247949))

(declare-fun result!301346 () Bool)

(assert (= result!301346 result!301310))

(assert (=> d!1223764 t!341576))

(assert (=> d!1223800 t!341576))

(declare-fun b_and!320169 () Bool)

(declare-fun tp!1259038 () Bool)

(assert (=> b!4131016 (= tp!1259038 (and (=> t!341576 result!301346) b_and!320169))))

(declare-fun b_free!117173 () Bool)

(declare-fun b_next!117877 () Bool)

(assert (=> b!4131016 (= b_free!117173 (not b_next!117877))))

(declare-fun t!341578 () Bool)

(declare-fun tb!247951 () Bool)

(assert (=> (and b!4131016 (= (toChars!9841 (transformation!7322 (h!50141 (t!341518 (t!341518 rules!3756))))) (toChars!9841 (transformation!7322 r!4008))) t!341578) tb!247951))

(declare-fun result!301348 () Bool)

(assert (= result!301348 result!301302))

(assert (=> d!1223764 t!341578))

(declare-fun t!341580 () Bool)

(declare-fun tb!247953 () Bool)

(assert (=> (and b!4131016 (= (toChars!9841 (transformation!7322 (h!50141 (t!341518 (t!341518 rules!3756))))) (toChars!9841 (transformation!7322 (rule!10414 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912))))) t!341580) tb!247953))

(declare-fun result!301350 () Bool)

(assert (= result!301350 result!301318))

(assert (=> b!4130653 t!341580))

(declare-fun tp!1259035 () Bool)

(declare-fun b_and!320171 () Bool)

(assert (=> b!4131016 (= tp!1259035 (and (=> t!341578 result!301348) (=> t!341580 result!301350) b_and!320171))))

(declare-fun e!2563140 () Bool)

(assert (=> b!4131016 (= e!2563140 (and tp!1259038 tp!1259035))))

(declare-fun e!2563141 () Bool)

(declare-fun b!4131015 () Bool)

(declare-fun tp!1259036 () Bool)

(assert (=> b!4131015 (= e!2563141 (and tp!1259036 (inv!59310 (tag!8182 (h!50141 (t!341518 (t!341518 rules!3756))))) (inv!59313 (transformation!7322 (h!50141 (t!341518 (t!341518 rules!3756))))) e!2563140))))

(declare-fun b!4131014 () Bool)

(declare-fun e!2563143 () Bool)

(declare-fun tp!1259037 () Bool)

(assert (=> b!4131014 (= e!2563143 (and e!2563141 tp!1259037))))

(assert (=> b!4130726 (= tp!1258855 e!2563143)))

(assert (= b!4131015 b!4131016))

(assert (= b!4131014 b!4131015))

(assert (= (and b!4130726 ((_ is Cons!44721) (t!341518 (t!341518 rules!3756)))) b!4131014))

(declare-fun m!4728707 () Bool)

(assert (=> b!4131015 m!4728707))

(declare-fun m!4728709 () Bool)

(assert (=> b!4131015 m!4728709))

(declare-fun b!4131017 () Bool)

(declare-fun tp!1259039 () Bool)

(declare-fun e!2563144 () Bool)

(declare-fun tp!1259041 () Bool)

(assert (=> b!4131017 (= e!2563144 (and (inv!59317 (left!33488 (c!708760 (dynLambda!19162 (toChars!9841 (transformation!7322 r!4008)) (dynLambda!19163 (toValue!9982 (transformation!7322 r!4008)) lt!1473222))))) tp!1259039 (inv!59317 (right!33818 (c!708760 (dynLambda!19162 (toChars!9841 (transformation!7322 r!4008)) (dynLambda!19163 (toValue!9982 (transformation!7322 r!4008)) lt!1473222))))) tp!1259041))))

(declare-fun b!4131019 () Bool)

(declare-fun e!2563145 () Bool)

(declare-fun tp!1259040 () Bool)

(assert (=> b!4131019 (= e!2563145 tp!1259040)))

(declare-fun b!4131018 () Bool)

(assert (=> b!4131018 (= e!2563144 (and (inv!59324 (xs!16839 (c!708760 (dynLambda!19162 (toChars!9841 (transformation!7322 r!4008)) (dynLambda!19163 (toValue!9982 (transformation!7322 r!4008)) lt!1473222))))) e!2563145))))

(assert (=> b!4130646 (= tp!1258814 (and (inv!59317 (c!708760 (dynLambda!19162 (toChars!9841 (transformation!7322 r!4008)) (dynLambda!19163 (toValue!9982 (transformation!7322 r!4008)) lt!1473222)))) e!2563144))))

(assert (= (and b!4130646 ((_ is Node!13533) (c!708760 (dynLambda!19162 (toChars!9841 (transformation!7322 r!4008)) (dynLambda!19163 (toValue!9982 (transformation!7322 r!4008)) lt!1473222))))) b!4131017))

(assert (= b!4131018 b!4131019))

(assert (= (and b!4130646 ((_ is Leaf!20909) (c!708760 (dynLambda!19162 (toChars!9841 (transformation!7322 r!4008)) (dynLambda!19163 (toValue!9982 (transformation!7322 r!4008)) lt!1473222))))) b!4131018))

(declare-fun m!4728711 () Bool)

(assert (=> b!4131017 m!4728711))

(declare-fun m!4728713 () Bool)

(assert (=> b!4131017 m!4728713))

(declare-fun m!4728715 () Bool)

(assert (=> b!4131018 m!4728715))

(assert (=> b!4130646 m!4728427))

(declare-fun e!2563146 () Bool)

(assert (=> b!4130717 (= tp!1258840 e!2563146)))

(declare-fun b!4131021 () Bool)

(declare-fun tp!1259043 () Bool)

(declare-fun tp!1259045 () Bool)

(assert (=> b!4131021 (= e!2563146 (and tp!1259043 tp!1259045))))

(declare-fun b!4131023 () Bool)

(declare-fun tp!1259042 () Bool)

(declare-fun tp!1259046 () Bool)

(assert (=> b!4131023 (= e!2563146 (and tp!1259042 tp!1259046))))

(declare-fun b!4131020 () Bool)

(assert (=> b!4131020 (= e!2563146 tp_is_empty!21377)))

(declare-fun b!4131022 () Bool)

(declare-fun tp!1259044 () Bool)

(assert (=> b!4131022 (= e!2563146 tp!1259044)))

(assert (= (and b!4130717 ((_ is ElementMatch!12227) (regOne!24967 (regex!7322 r!4008)))) b!4131020))

(assert (= (and b!4130717 ((_ is Concat!19780) (regOne!24967 (regex!7322 r!4008)))) b!4131021))

(assert (= (and b!4130717 ((_ is Star!12227) (regOne!24967 (regex!7322 r!4008)))) b!4131022))

(assert (= (and b!4130717 ((_ is Union!12227) (regOne!24967 (regex!7322 r!4008)))) b!4131023))

(declare-fun e!2563147 () Bool)

(assert (=> b!4130717 (= tp!1258844 e!2563147)))

(declare-fun b!4131025 () Bool)

(declare-fun tp!1259048 () Bool)

(declare-fun tp!1259050 () Bool)

(assert (=> b!4131025 (= e!2563147 (and tp!1259048 tp!1259050))))

(declare-fun b!4131027 () Bool)

(declare-fun tp!1259047 () Bool)

(declare-fun tp!1259051 () Bool)

(assert (=> b!4131027 (= e!2563147 (and tp!1259047 tp!1259051))))

(declare-fun b!4131024 () Bool)

(assert (=> b!4131024 (= e!2563147 tp_is_empty!21377)))

(declare-fun b!4131026 () Bool)

(declare-fun tp!1259049 () Bool)

(assert (=> b!4131026 (= e!2563147 tp!1259049)))

(assert (= (and b!4130717 ((_ is ElementMatch!12227) (regTwo!24967 (regex!7322 r!4008)))) b!4131024))

(assert (= (and b!4130717 ((_ is Concat!19780) (regTwo!24967 (regex!7322 r!4008)))) b!4131025))

(assert (= (and b!4130717 ((_ is Star!12227) (regTwo!24967 (regex!7322 r!4008)))) b!4131026))

(assert (= (and b!4130717 ((_ is Union!12227) (regTwo!24967 (regex!7322 r!4008)))) b!4131027))

(declare-fun b!4131028 () Bool)

(declare-fun e!2563148 () Bool)

(declare-fun tp!1259052 () Bool)

(assert (=> b!4131028 (= e!2563148 (and tp_is_empty!21377 tp!1259052))))

(assert (=> b!4130713 (= tp!1258839 e!2563148)))

(assert (= (and b!4130713 ((_ is Cons!44720) (t!341517 (t!341517 input!3238)))) b!4131028))

(declare-fun b_lambda!121331 () Bool)

(assert (= b_lambda!121311 (or (and b!4130537 b_free!117153 (= (toChars!9841 (transformation!7322 rBis!149)) (toChars!9841 (transformation!7322 (rule!10414 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912)))))) (and b!4130540 b_free!117157 (= (toChars!9841 (transformation!7322 (h!50141 rules!3756))) (toChars!9841 (transformation!7322 (rule!10414 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912)))))) (and b!4130728 b_free!117165 (= (toChars!9841 (transformation!7322 (h!50141 (t!341518 rules!3756)))) (toChars!9841 (transformation!7322 (rule!10414 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912)))))) (and b!4131016 b_free!117173 (= (toChars!9841 (transformation!7322 (h!50141 (t!341518 (t!341518 rules!3756))))) (toChars!9841 (transformation!7322 (rule!10414 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912)))))) (and b!4130536 b_free!117149 (= (toChars!9841 (transformation!7322 r!4008)) (toChars!9841 (transformation!7322 (rule!10414 (Token!13575 (apply!10395 (transformation!7322 r!4008) lt!1473222) r!4008 (size!33110 p!2912) p!2912)))))) b_lambda!121331)))

(declare-fun b_lambda!121333 () Bool)

(assert (= b_lambda!121329 (or d!1223764 b_lambda!121333)))

(declare-fun bs!595045 () Bool)

(declare-fun d!1223962 () Bool)

(assert (= bs!595045 (and d!1223962 d!1223764)))

(assert (=> bs!595045 (= (dynLambda!19166 lambda!128821 lt!1473222) (= (list!16387 (dynLambda!19162 (toChars!9841 (transformation!7322 r!4008)) (dynLambda!19163 (toValue!9982 (transformation!7322 r!4008)) lt!1473222))) (list!16387 lt!1473222)))))

(declare-fun b_lambda!121335 () Bool)

(assert (=> (not b_lambda!121335) (not bs!595045)))

(assert (=> bs!595045 t!341565))

(declare-fun b_and!320173 () Bool)

(assert (= b_and!320143 (and (=> t!341565 result!301332) b_and!320173)))

(assert (=> bs!595045 t!341578))

(declare-fun b_and!320175 () Bool)

(assert (= b_and!320171 (and (=> t!341578 result!301348) b_and!320175)))

(assert (=> bs!595045 t!341545))

(declare-fun b_and!320177 () Bool)

(assert (= b_and!320135 (and (=> t!341545 result!301302) b_and!320177)))

(assert (=> bs!595045 t!341549))

(declare-fun b_and!320179 () Bool)

(assert (= b_and!320139 (and (=> t!341549 result!301308) b_and!320179)))

(assert (=> bs!595045 t!341547))

(declare-fun b_and!320181 () Bool)

(assert (= b_and!320137 (and (=> t!341547 result!301306) b_and!320181)))

(declare-fun b_lambda!121337 () Bool)

(assert (=> (not b_lambda!121337) (not bs!595045)))

(assert (=> bs!595045 t!341576))

(declare-fun b_and!320183 () Bool)

(assert (= b_and!320169 (and (=> t!341576 result!301346) b_and!320183)))

(assert (=> bs!595045 t!341555))

(declare-fun b_and!320185 () Bool)

(assert (= b_and!320133 (and (=> t!341555 result!301316) b_and!320185)))

(assert (=> bs!595045 t!341553))

(declare-fun b_and!320187 () Bool)

(assert (= b_and!320131 (and (=> t!341553 result!301314) b_and!320187)))

(assert (=> bs!595045 t!341551))

(declare-fun b_and!320189 () Bool)

(assert (= b_and!320129 (and (=> t!341551 result!301310) b_and!320189)))

(assert (=> bs!595045 t!341563))

(declare-fun b_and!320191 () Bool)

(assert (= b_and!320141 (and (=> t!341563 result!301330) b_and!320191)))

(assert (=> bs!595045 m!4728433))

(assert (=> bs!595045 m!4728435))

(assert (=> bs!595045 m!4728441))

(assert (=> bs!595045 m!4728433))

(assert (=> bs!595045 m!4728435))

(assert (=> bs!595045 m!4728437))

(assert (=> d!1223926 d!1223962))

(check-sat (not d!1223938) (not d!1223906) (not b!4130986) (not b_lambda!121333) (not d!1223958) (not d!1223920) (not b!4130979) (not d!1223924) (not b!4131013) (not b!4130796) (not b!4130978) (not b!4130924) (not b!4131000) (not b!4130980) (not b!4130910) (not b!4130972) (not d!1223910) (not b_next!117867) (not b!4130907) (not b!4130964) (not b!4131006) (not b!4130992) (not b!4131007) (not b_lambda!121337) (not b!4130918) (not b!4131002) (not d!1223922) (not b!4130970) (not b!4130926) (not d!1223902) b_and!320185 (not b_next!117869) (not b!4130982) (not b!4131004) (not b_lambda!121335) (not bs!595045) (not b!4130942) (not d!1223914) b_and!320187 (not b_lambda!121315) b_and!320183 (not b!4131015) (not b!4130962) (not b!4130995) (not d!1223898) tp_is_empty!21377 (not b_lambda!121331) (not b!4130945) (not b!4130988) (not d!1223932) (not b_next!117877) (not b!4130901) (not b!4130987) (not b!4130971) (not b!4130975) (not d!1223904) (not b!4130976) (not b!4131010) (not b_next!117875) (not b!4131028) (not b!4130948) (not b!4130959) b_and!320173 (not b_next!117853) b_and!320189 (not d!1223934) (not b!4130646) (not b!4130944) (not b!4130968) (not b!4131022) b_and!320179 (not b!4131014) (not b!4130916) (not b_lambda!121317) (not b!4130966) (not b_next!117857) b_and!320181 (not b!4131025) (not b!4131011) (not b!4131019) (not b!4130998) (not b!4130798) (not d!1223928) (not b!4130928) (not b_next!117851) (not b!4131026) (not b!4130915) (not b!4130922) (not b!4131018) (not d!1223954) (not b!4130960) (not b!4130984) (not b!4130991) b_and!320191 (not b!4130958) (not b_next!117861) (not b!4131027) (not b!4130925) (not b!4130947) (not b!4131008) (not b!4130930) b_and!320175 (not b!4131003) (not b!4131012) (not b!4130999) (not b!4131017) (not b!4130920) (not b!4130974) b_and!320177 (not b!4130994) (not b!4130996) (not d!1223888) (not b_next!117855) (not b!4130967) (not b!4130963) (not d!1223926) (not b!4131023) (not b_next!117859) (not b!4130908) (not b!4130949) (not b!4130898) (not b!4130983) (not b!4131021) (not b_lambda!121313) (not b!4130990) (not b!4130655))
(check-sat (not b_next!117867) b_and!320185 (not b_next!117869) b_and!320187 b_and!320183 (not b_next!117877) b_and!320179 (not b_next!117857) b_and!320181 (not b_next!117851) b_and!320191 b_and!320177 (not b_next!117855) (not b_next!117859) (not b_next!117875) b_and!320173 (not b_next!117853) b_and!320189 (not b_next!117861) b_and!320175)
