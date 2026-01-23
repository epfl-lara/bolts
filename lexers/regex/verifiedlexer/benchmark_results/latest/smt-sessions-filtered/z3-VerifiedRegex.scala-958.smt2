; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48600 () Bool)

(assert start!48600)

(declare-fun b!529709 () Bool)

(declare-fun b_free!14169 () Bool)

(declare-fun b_next!14185 () Bool)

(assert (=> b!529709 (= b_free!14169 (not b_next!14185))))

(declare-fun tp!168677 () Bool)

(declare-fun b_and!51683 () Bool)

(assert (=> b!529709 (= tp!168677 b_and!51683)))

(declare-fun b_free!14171 () Bool)

(declare-fun b_next!14187 () Bool)

(assert (=> b!529709 (= b_free!14171 (not b_next!14187))))

(declare-fun tp!168676 () Bool)

(declare-fun b_and!51685 () Bool)

(assert (=> b!529709 (= tp!168676 b_and!51685)))

(declare-fun b!529704 () Bool)

(declare-fun b_free!14173 () Bool)

(declare-fun b_next!14189 () Bool)

(assert (=> b!529704 (= b_free!14173 (not b_next!14189))))

(declare-fun tp!168678 () Bool)

(declare-fun b_and!51687 () Bool)

(assert (=> b!529704 (= tp!168678 b_and!51687)))

(declare-fun b_free!14175 () Bool)

(declare-fun b_next!14191 () Bool)

(assert (=> b!529704 (= b_free!14175 (not b_next!14191))))

(declare-fun tp!168669 () Bool)

(declare-fun b_and!51689 () Bool)

(assert (=> b!529704 (= tp!168669 b_and!51689)))

(declare-fun b!529702 () Bool)

(declare-fun tp!168672 () Bool)

(declare-fun e!318745 () Bool)

(declare-datatypes ((C!3396 0))(
  ( (C!3397 (val!1924 Int)) )
))
(declare-datatypes ((Regex!1237 0))(
  ( (ElementMatch!1237 (c!101290 C!3396)) (Concat!2164 (regOne!2986 Regex!1237) (regTwo!2986 Regex!1237)) (EmptyExpr!1237) (Star!1237 (reg!1566 Regex!1237)) (EmptyLang!1237) (Union!1237 (regOne!2987 Regex!1237) (regTwo!2987 Regex!1237)) )
))
(declare-datatypes ((String!6378 0))(
  ( (String!6379 (value!30576 String)) )
))
(declare-datatypes ((List!5027 0))(
  ( (Nil!5017) (Cons!5017 (h!10418 (_ BitVec 16)) (t!73666 List!5027)) )
))
(declare-datatypes ((TokenValue!927 0))(
  ( (FloatLiteralValue!1854 (text!6934 List!5027)) (TokenValueExt!926 (__x!3752 Int)) (Broken!4635 (value!30577 List!5027)) (Object!936) (End!927) (Def!927) (Underscore!927) (Match!927) (Else!927) (Error!927) (Case!927) (If!927) (Extends!927) (Abstract!927) (Class!927) (Val!927) (DelimiterValue!1854 (del!987 List!5027)) (KeywordValue!933 (value!30578 List!5027)) (CommentValue!1854 (value!30579 List!5027)) (WhitespaceValue!1854 (value!30580 List!5027)) (IndentationValue!927 (value!30581 List!5027)) (String!6380) (Int32!927) (Broken!4636 (value!30582 List!5027)) (Boolean!928) (Unit!8822) (OperatorValue!930 (op!987 List!5027)) (IdentifierValue!1854 (value!30583 List!5027)) (IdentifierValue!1855 (value!30584 List!5027)) (WhitespaceValue!1855 (value!30585 List!5027)) (True!1854) (False!1854) (Broken!4637 (value!30586 List!5027)) (Broken!4638 (value!30587 List!5027)) (True!1855) (RightBrace!927) (RightBracket!927) (Colon!927) (Null!927) (Comma!927) (LeftBracket!927) (False!1855) (LeftBrace!927) (ImaginaryLiteralValue!927 (text!6935 List!5027)) (StringLiteralValue!2781 (value!30588 List!5027)) (EOFValue!927 (value!30589 List!5027)) (IdentValue!927 (value!30590 List!5027)) (DelimiterValue!1855 (value!30591 List!5027)) (DedentValue!927 (value!30592 List!5027)) (NewLineValue!927 (value!30593 List!5027)) (IntegerValue!2781 (value!30594 (_ BitVec 32)) (text!6936 List!5027)) (IntegerValue!2782 (value!30595 Int) (text!6937 List!5027)) (Times!927) (Or!927) (Equal!927) (Minus!927) (Broken!4639 (value!30596 List!5027)) (And!927) (Div!927) (LessEqual!927) (Mod!927) (Concat!2165) (Not!927) (Plus!927) (SpaceValue!927 (value!30597 List!5027)) (IntegerValue!2783 (value!30598 Int) (text!6938 List!5027)) (StringLiteralValue!2782 (text!6939 List!5027)) (FloatLiteralValue!1855 (text!6940 List!5027)) (BytesLiteralValue!927 (value!30599 List!5027)) (CommentValue!1855 (value!30600 List!5027)) (StringLiteralValue!2783 (value!30601 List!5027)) (ErrorTokenValue!927 (msg!988 List!5027)) )
))
(declare-datatypes ((List!5028 0))(
  ( (Nil!5018) (Cons!5018 (h!10419 C!3396) (t!73667 List!5028)) )
))
(declare-datatypes ((IArray!3241 0))(
  ( (IArray!3242 (innerList!1678 List!5028)) )
))
(declare-datatypes ((Conc!1620 0))(
  ( (Node!1620 (left!4248 Conc!1620) (right!4578 Conc!1620) (csize!3470 Int) (cheight!1831 Int)) (Leaf!2579 (xs!4257 IArray!3241) (csize!3471 Int)) (Empty!1620) )
))
(declare-datatypes ((BalanceConc!3248 0))(
  ( (BalanceConc!3249 (c!101291 Conc!1620)) )
))
(declare-datatypes ((TokenValueInjection!1622 0))(
  ( (TokenValueInjection!1623 (toValue!1746 Int) (toChars!1605 Int)) )
))
(declare-datatypes ((Rule!1606 0))(
  ( (Rule!1607 (regex!903 Regex!1237) (tag!1165 String!6378) (isSeparator!903 Bool) (transformation!903 TokenValueInjection!1622)) )
))
(declare-datatypes ((List!5029 0))(
  ( (Nil!5019) (Cons!5019 (h!10420 Rule!1606) (t!73668 List!5029)) )
))
(declare-fun rules!3103 () List!5029)

(declare-fun e!318744 () Bool)

(declare-fun inv!6291 (String!6378) Bool)

(declare-fun inv!6294 (TokenValueInjection!1622) Bool)

(assert (=> b!529702 (= e!318745 (and tp!168672 (inv!6291 (tag!1165 (h!10420 rules!3103))) (inv!6294 (transformation!903 (h!10420 rules!3103))) e!318744))))

(declare-fun b!529703 () Bool)

(declare-fun res!223642 () Bool)

(declare-fun e!318737 () Bool)

(assert (=> b!529703 (=> (not res!223642) (not e!318737))))

(declare-fun input!2705 () List!5028)

(declare-fun isEmpty!3632 (List!5028) Bool)

(assert (=> b!529703 (= res!223642 (not (isEmpty!3632 input!2705)))))

(declare-fun e!318740 () Bool)

(assert (=> b!529704 (= e!318740 (and tp!168678 tp!168669))))

(declare-fun b!529705 () Bool)

(declare-fun e!318743 () Bool)

(declare-fun tp_is_empty!2829 () Bool)

(declare-fun tp!168674 () Bool)

(assert (=> b!529705 (= e!318743 (and tp_is_empty!2829 tp!168674))))

(declare-fun b!529706 () Bool)

(declare-fun e!318746 () Bool)

(declare-fun tp!168675 () Bool)

(assert (=> b!529706 (= e!318746 (and e!318745 tp!168675))))

(declare-fun b!529707 () Bool)

(declare-fun res!223639 () Bool)

(assert (=> b!529707 (=> (not res!223639) (not e!318737))))

(declare-datatypes ((Token!1542 0))(
  ( (Token!1543 (value!30602 TokenValue!927) (rule!1603 Rule!1606) (size!4083 Int) (originalCharacters!942 List!5028)) )
))
(declare-fun token!491 () Token!1542)

(declare-fun list!2087 (BalanceConc!3248) List!5028)

(declare-fun charsOf!532 (Token!1542) BalanceConc!3248)

(assert (=> b!529707 (= res!223639 (= (list!2087 (charsOf!532 token!491)) input!2705))))

(assert (=> b!529709 (= e!318744 (and tp!168677 tp!168676))))

(declare-fun b!529710 () Bool)

(declare-fun res!223640 () Bool)

(assert (=> b!529710 (=> (not res!223640) (not e!318737))))

(declare-datatypes ((LexerInterface!789 0))(
  ( (LexerInterfaceExt!786 (__x!3753 Int)) (Lexer!787) )
))
(declare-fun thiss!22590 () LexerInterface!789)

(declare-fun rulesInvariant!752 (LexerInterface!789 List!5029) Bool)

(assert (=> b!529710 (= res!223640 (rulesInvariant!752 thiss!22590 rules!3103))))

(declare-fun b!529711 () Bool)

(declare-fun res!223638 () Bool)

(assert (=> b!529711 (=> (not res!223638) (not e!318737))))

(declare-fun suffix!1342 () List!5028)

(declare-datatypes ((tuple2!6160 0))(
  ( (tuple2!6161 (_1!3344 Token!1542) (_2!3344 List!5028)) )
))
(declare-datatypes ((Option!1253 0))(
  ( (None!1252) (Some!1252 (v!16057 tuple2!6160)) )
))
(declare-fun isDefined!1065 (Option!1253) Bool)

(declare-fun maxPrefix!487 (LexerInterface!789 List!5029 List!5028) Option!1253)

(declare-fun ++!1391 (List!5028 List!5028) List!5028)

(assert (=> b!529711 (= res!223638 (isDefined!1065 (maxPrefix!487 thiss!22590 rules!3103 (++!1391 input!2705 suffix!1342))))))

(declare-fun tp!168671 () Bool)

(declare-fun b!529712 () Bool)

(declare-fun e!318742 () Bool)

(assert (=> b!529712 (= e!318742 (and tp!168671 (inv!6291 (tag!1165 (rule!1603 token!491))) (inv!6294 (transformation!903 (rule!1603 token!491))) e!318740))))

(declare-fun b!529713 () Bool)

(declare-fun rulesValidInductive!304 (LexerInterface!789 List!5029) Bool)

(assert (=> b!529713 (= e!318737 (not (rulesValidInductive!304 thiss!22590 rules!3103)))))

(declare-fun b!529708 () Bool)

(declare-fun res!223641 () Bool)

(assert (=> b!529708 (=> (not res!223641) (not e!318737))))

(declare-fun isEmpty!3633 (List!5029) Bool)

(assert (=> b!529708 (= res!223641 (not (isEmpty!3633 rules!3103)))))

(declare-fun res!223643 () Bool)

(assert (=> start!48600 (=> (not res!223643) (not e!318737))))

(get-info :version)

(assert (=> start!48600 (= res!223643 ((_ is Lexer!787) thiss!22590))))

(assert (=> start!48600 e!318737))

(assert (=> start!48600 e!318743))

(assert (=> start!48600 e!318746))

(declare-fun e!318739 () Bool)

(declare-fun inv!6295 (Token!1542) Bool)

(assert (=> start!48600 (and (inv!6295 token!491) e!318739)))

(assert (=> start!48600 true))

(declare-fun e!318738 () Bool)

(assert (=> start!48600 e!318738))

(declare-fun b!529714 () Bool)

(declare-fun tp!168670 () Bool)

(declare-fun inv!21 (TokenValue!927) Bool)

(assert (=> b!529714 (= e!318739 (and (inv!21 (value!30602 token!491)) e!318742 tp!168670))))

(declare-fun b!529715 () Bool)

(declare-fun tp!168673 () Bool)

(assert (=> b!529715 (= e!318738 (and tp_is_empty!2829 tp!168673))))

(assert (= (and start!48600 res!223643) b!529708))

(assert (= (and b!529708 res!223641) b!529710))

(assert (= (and b!529710 res!223640) b!529703))

(assert (= (and b!529703 res!223642) b!529707))

(assert (= (and b!529707 res!223639) b!529711))

(assert (= (and b!529711 res!223638) b!529713))

(assert (= (and start!48600 ((_ is Cons!5018) suffix!1342)) b!529705))

(assert (= b!529702 b!529709))

(assert (= b!529706 b!529702))

(assert (= (and start!48600 ((_ is Cons!5019) rules!3103)) b!529706))

(assert (= b!529712 b!529704))

(assert (= b!529714 b!529712))

(assert (= start!48600 b!529714))

(assert (= (and start!48600 ((_ is Cons!5018) input!2705)) b!529715))

(declare-fun m!775137 () Bool)

(assert (=> b!529703 m!775137))

(declare-fun m!775139 () Bool)

(assert (=> b!529710 m!775139))

(declare-fun m!775141 () Bool)

(assert (=> b!529712 m!775141))

(declare-fun m!775143 () Bool)

(assert (=> b!529712 m!775143))

(declare-fun m!775145 () Bool)

(assert (=> start!48600 m!775145))

(declare-fun m!775147 () Bool)

(assert (=> b!529708 m!775147))

(declare-fun m!775149 () Bool)

(assert (=> b!529702 m!775149))

(declare-fun m!775151 () Bool)

(assert (=> b!529702 m!775151))

(declare-fun m!775153 () Bool)

(assert (=> b!529711 m!775153))

(assert (=> b!529711 m!775153))

(declare-fun m!775155 () Bool)

(assert (=> b!529711 m!775155))

(assert (=> b!529711 m!775155))

(declare-fun m!775157 () Bool)

(assert (=> b!529711 m!775157))

(declare-fun m!775159 () Bool)

(assert (=> b!529714 m!775159))

(declare-fun m!775161 () Bool)

(assert (=> b!529707 m!775161))

(assert (=> b!529707 m!775161))

(declare-fun m!775163 () Bool)

(assert (=> b!529707 m!775163))

(declare-fun m!775165 () Bool)

(assert (=> b!529713 m!775165))

(check-sat (not b_next!14187) (not b!529710) (not b!529708) (not b!529706) (not b!529713) (not b!529705) (not b_next!14185) (not b!529712) (not b!529711) (not b!529703) b_and!51689 b_and!51683 (not b!529714) (not b_next!14191) (not start!48600) b_and!51685 (not b!529715) (not b_next!14189) tp_is_empty!2829 b_and!51687 (not b!529702) (not b!529707))
(check-sat (not b_next!14191) (not b_next!14187) (not b_next!14185) b_and!51685 b_and!51689 b_and!51683 (not b_next!14189) b_and!51687)
(get-model)

(declare-fun d!188139 () Bool)

(assert (=> d!188139 (= (isEmpty!3632 input!2705) ((_ is Nil!5018) input!2705))))

(assert (=> b!529703 d!188139))

(declare-fun b!529726 () Bool)

(declare-fun e!318755 () Bool)

(declare-fun inv!17 (TokenValue!927) Bool)

(assert (=> b!529726 (= e!318755 (inv!17 (value!30602 token!491)))))

(declare-fun b!529727 () Bool)

(declare-fun e!318753 () Bool)

(declare-fun inv!15 (TokenValue!927) Bool)

(assert (=> b!529727 (= e!318753 (inv!15 (value!30602 token!491)))))

(declare-fun b!529728 () Bool)

(declare-fun e!318754 () Bool)

(declare-fun inv!16 (TokenValue!927) Bool)

(assert (=> b!529728 (= e!318754 (inv!16 (value!30602 token!491)))))

(declare-fun b!529729 () Bool)

(declare-fun res!223648 () Bool)

(assert (=> b!529729 (=> res!223648 e!318753)))

(assert (=> b!529729 (= res!223648 (not ((_ is IntegerValue!2783) (value!30602 token!491))))))

(assert (=> b!529729 (= e!318755 e!318753)))

(declare-fun d!188141 () Bool)

(declare-fun c!101296 () Bool)

(assert (=> d!188141 (= c!101296 ((_ is IntegerValue!2781) (value!30602 token!491)))))

(assert (=> d!188141 (= (inv!21 (value!30602 token!491)) e!318754)))

(declare-fun b!529730 () Bool)

(assert (=> b!529730 (= e!318754 e!318755)))

(declare-fun c!101297 () Bool)

(assert (=> b!529730 (= c!101297 ((_ is IntegerValue!2782) (value!30602 token!491)))))

(assert (= (and d!188141 c!101296) b!529728))

(assert (= (and d!188141 (not c!101296)) b!529730))

(assert (= (and b!529730 c!101297) b!529726))

(assert (= (and b!529730 (not c!101297)) b!529729))

(assert (= (and b!529729 (not res!223648)) b!529727))

(declare-fun m!775167 () Bool)

(assert (=> b!529726 m!775167))

(declare-fun m!775169 () Bool)

(assert (=> b!529727 m!775169))

(declare-fun m!775171 () Bool)

(assert (=> b!529728 m!775171))

(assert (=> b!529714 d!188141))

(declare-fun d!188143 () Bool)

(declare-fun res!223655 () Bool)

(declare-fun e!318758 () Bool)

(assert (=> d!188143 (=> (not res!223655) (not e!318758))))

(assert (=> d!188143 (= res!223655 (not (isEmpty!3632 (originalCharacters!942 token!491))))))

(assert (=> d!188143 (= (inv!6295 token!491) e!318758)))

(declare-fun b!529735 () Bool)

(declare-fun res!223656 () Bool)

(assert (=> b!529735 (=> (not res!223656) (not e!318758))))

(declare-fun dynLambda!3055 (Int TokenValue!927) BalanceConc!3248)

(assert (=> b!529735 (= res!223656 (= (originalCharacters!942 token!491) (list!2087 (dynLambda!3055 (toChars!1605 (transformation!903 (rule!1603 token!491))) (value!30602 token!491)))))))

(declare-fun b!529736 () Bool)

(declare-fun size!4085 (List!5028) Int)

(assert (=> b!529736 (= e!318758 (= (size!4083 token!491) (size!4085 (originalCharacters!942 token!491))))))

(assert (= (and d!188143 res!223655) b!529735))

(assert (= (and b!529735 res!223656) b!529736))

(declare-fun b_lambda!20495 () Bool)

(assert (=> (not b_lambda!20495) (not b!529735)))

(declare-fun tb!47211 () Bool)

(declare-fun t!73670 () Bool)

(assert (=> (and b!529709 (= (toChars!1605 (transformation!903 (h!10420 rules!3103))) (toChars!1605 (transformation!903 (rule!1603 token!491)))) t!73670) tb!47211))

(declare-fun b!529741 () Bool)

(declare-fun e!318761 () Bool)

(declare-fun tp!168681 () Bool)

(declare-fun inv!6298 (Conc!1620) Bool)

(assert (=> b!529741 (= e!318761 (and (inv!6298 (c!101291 (dynLambda!3055 (toChars!1605 (transformation!903 (rule!1603 token!491))) (value!30602 token!491)))) tp!168681))))

(declare-fun result!52578 () Bool)

(declare-fun inv!6299 (BalanceConc!3248) Bool)

(assert (=> tb!47211 (= result!52578 (and (inv!6299 (dynLambda!3055 (toChars!1605 (transformation!903 (rule!1603 token!491))) (value!30602 token!491))) e!318761))))

(assert (= tb!47211 b!529741))

(declare-fun m!775173 () Bool)

(assert (=> b!529741 m!775173))

(declare-fun m!775175 () Bool)

(assert (=> tb!47211 m!775175))

(assert (=> b!529735 t!73670))

(declare-fun b_and!51691 () Bool)

(assert (= b_and!51685 (and (=> t!73670 result!52578) b_and!51691)))

(declare-fun t!73672 () Bool)

(declare-fun tb!47213 () Bool)

(assert (=> (and b!529704 (= (toChars!1605 (transformation!903 (rule!1603 token!491))) (toChars!1605 (transformation!903 (rule!1603 token!491)))) t!73672) tb!47213))

(declare-fun result!52582 () Bool)

(assert (= result!52582 result!52578))

(assert (=> b!529735 t!73672))

(declare-fun b_and!51693 () Bool)

(assert (= b_and!51689 (and (=> t!73672 result!52582) b_and!51693)))

(declare-fun m!775177 () Bool)

(assert (=> d!188143 m!775177))

(declare-fun m!775179 () Bool)

(assert (=> b!529735 m!775179))

(assert (=> b!529735 m!775179))

(declare-fun m!775181 () Bool)

(assert (=> b!529735 m!775181))

(declare-fun m!775183 () Bool)

(assert (=> b!529736 m!775183))

(assert (=> start!48600 d!188143))

(declare-fun d!188147 () Bool)

(declare-fun list!2089 (Conc!1620) List!5028)

(assert (=> d!188147 (= (list!2087 (charsOf!532 token!491)) (list!2089 (c!101291 (charsOf!532 token!491))))))

(declare-fun bs!67106 () Bool)

(assert (= bs!67106 d!188147))

(declare-fun m!775185 () Bool)

(assert (=> bs!67106 m!775185))

(assert (=> b!529707 d!188147))

(declare-fun d!188149 () Bool)

(declare-fun lt!218370 () BalanceConc!3248)

(assert (=> d!188149 (= (list!2087 lt!218370) (originalCharacters!942 token!491))))

(assert (=> d!188149 (= lt!218370 (dynLambda!3055 (toChars!1605 (transformation!903 (rule!1603 token!491))) (value!30602 token!491)))))

(assert (=> d!188149 (= (charsOf!532 token!491) lt!218370)))

(declare-fun b_lambda!20497 () Bool)

(assert (=> (not b_lambda!20497) (not d!188149)))

(assert (=> d!188149 t!73670))

(declare-fun b_and!51695 () Bool)

(assert (= b_and!51691 (and (=> t!73670 result!52578) b_and!51695)))

(assert (=> d!188149 t!73672))

(declare-fun b_and!51697 () Bool)

(assert (= b_and!51693 (and (=> t!73672 result!52582) b_and!51697)))

(declare-fun m!775191 () Bool)

(assert (=> d!188149 m!775191))

(assert (=> d!188149 m!775179))

(assert (=> b!529707 d!188149))

(declare-fun d!188153 () Bool)

(assert (=> d!188153 (= (inv!6291 (tag!1165 (h!10420 rules!3103))) (= (mod (str.len (value!30576 (tag!1165 (h!10420 rules!3103)))) 2) 0))))

(assert (=> b!529702 d!188153))

(declare-fun d!188155 () Bool)

(declare-fun res!223666 () Bool)

(declare-fun e!318771 () Bool)

(assert (=> d!188155 (=> (not res!223666) (not e!318771))))

(declare-fun semiInverseModEq!361 (Int Int) Bool)

(assert (=> d!188155 (= res!223666 (semiInverseModEq!361 (toChars!1605 (transformation!903 (h!10420 rules!3103))) (toValue!1746 (transformation!903 (h!10420 rules!3103)))))))

(assert (=> d!188155 (= (inv!6294 (transformation!903 (h!10420 rules!3103))) e!318771)))

(declare-fun b!529751 () Bool)

(declare-fun equivClasses!344 (Int Int) Bool)

(assert (=> b!529751 (= e!318771 (equivClasses!344 (toChars!1605 (transformation!903 (h!10420 rules!3103))) (toValue!1746 (transformation!903 (h!10420 rules!3103)))))))

(assert (= (and d!188155 res!223666) b!529751))

(declare-fun m!775193 () Bool)

(assert (=> d!188155 m!775193))

(declare-fun m!775195 () Bool)

(assert (=> b!529751 m!775195))

(assert (=> b!529702 d!188155))

(declare-fun d!188157 () Bool)

(assert (=> d!188157 true))

(declare-fun lt!218385 () Bool)

(declare-fun lambda!15387 () Int)

(declare-fun forall!1506 (List!5029 Int) Bool)

(assert (=> d!188157 (= lt!218385 (forall!1506 rules!3103 lambda!15387))))

(declare-fun e!318798 () Bool)

(assert (=> d!188157 (= lt!218385 e!318798)))

(declare-fun res!223686 () Bool)

(assert (=> d!188157 (=> res!223686 e!318798)))

(assert (=> d!188157 (= res!223686 (not ((_ is Cons!5019) rules!3103)))))

(assert (=> d!188157 (= (rulesValidInductive!304 thiss!22590 rules!3103) lt!218385)))

(declare-fun b!529792 () Bool)

(declare-fun e!318797 () Bool)

(assert (=> b!529792 (= e!318798 e!318797)))

(declare-fun res!223687 () Bool)

(assert (=> b!529792 (=> (not res!223687) (not e!318797))))

(declare-fun ruleValid!143 (LexerInterface!789 Rule!1606) Bool)

(assert (=> b!529792 (= res!223687 (ruleValid!143 thiss!22590 (h!10420 rules!3103)))))

(declare-fun b!529793 () Bool)

(assert (=> b!529793 (= e!318797 (rulesValidInductive!304 thiss!22590 (t!73668 rules!3103)))))

(assert (= (and d!188157 (not res!223686)) b!529792))

(assert (= (and b!529792 res!223687) b!529793))

(declare-fun m!775235 () Bool)

(assert (=> d!188157 m!775235))

(declare-fun m!775237 () Bool)

(assert (=> b!529792 m!775237))

(declare-fun m!775239 () Bool)

(assert (=> b!529793 m!775239))

(assert (=> b!529713 d!188157))

(declare-fun d!188181 () Bool)

(assert (=> d!188181 (= (isEmpty!3633 rules!3103) ((_ is Nil!5019) rules!3103))))

(assert (=> b!529708 d!188181))

(declare-fun d!188183 () Bool)

(declare-fun isEmpty!3635 (Option!1253) Bool)

(assert (=> d!188183 (= (isDefined!1065 (maxPrefix!487 thiss!22590 rules!3103 (++!1391 input!2705 suffix!1342))) (not (isEmpty!3635 (maxPrefix!487 thiss!22590 rules!3103 (++!1391 input!2705 suffix!1342)))))))

(declare-fun bs!67109 () Bool)

(assert (= bs!67109 d!188183))

(assert (=> bs!67109 m!775155))

(declare-fun m!775241 () Bool)

(assert (=> bs!67109 m!775241))

(assert (=> b!529711 d!188183))

(declare-fun b!529887 () Bool)

(declare-fun e!318843 () Bool)

(declare-fun lt!218409 () Option!1253)

(declare-fun contains!1179 (List!5029 Rule!1606) Bool)

(declare-fun get!1871 (Option!1253) tuple2!6160)

(assert (=> b!529887 (= e!318843 (contains!1179 rules!3103 (rule!1603 (_1!3344 (get!1871 lt!218409)))))))

(declare-fun d!188185 () Bool)

(declare-fun e!318841 () Bool)

(assert (=> d!188185 e!318841))

(declare-fun res!223729 () Bool)

(assert (=> d!188185 (=> res!223729 e!318841)))

(assert (=> d!188185 (= res!223729 (isEmpty!3635 lt!218409))))

(declare-fun e!318842 () Option!1253)

(assert (=> d!188185 (= lt!218409 e!318842)))

(declare-fun c!101312 () Bool)

(assert (=> d!188185 (= c!101312 (and ((_ is Cons!5019) rules!3103) ((_ is Nil!5019) (t!73668 rules!3103))))))

(declare-datatypes ((Unit!8825 0))(
  ( (Unit!8826) )
))
(declare-fun lt!218411 () Unit!8825)

(declare-fun lt!218412 () Unit!8825)

(assert (=> d!188185 (= lt!218411 lt!218412)))

(declare-fun isPrefix!557 (List!5028 List!5028) Bool)

(assert (=> d!188185 (isPrefix!557 (++!1391 input!2705 suffix!1342) (++!1391 input!2705 suffix!1342))))

(declare-fun lemmaIsPrefixRefl!303 (List!5028 List!5028) Unit!8825)

(assert (=> d!188185 (= lt!218412 (lemmaIsPrefixRefl!303 (++!1391 input!2705 suffix!1342) (++!1391 input!2705 suffix!1342)))))

(assert (=> d!188185 (rulesValidInductive!304 thiss!22590 rules!3103)))

(assert (=> d!188185 (= (maxPrefix!487 thiss!22590 rules!3103 (++!1391 input!2705 suffix!1342)) lt!218409)))

(declare-fun b!529888 () Bool)

(declare-fun lt!218410 () Option!1253)

(declare-fun lt!218408 () Option!1253)

(assert (=> b!529888 (= e!318842 (ite (and ((_ is None!1252) lt!218410) ((_ is None!1252) lt!218408)) None!1252 (ite ((_ is None!1252) lt!218408) lt!218410 (ite ((_ is None!1252) lt!218410) lt!218408 (ite (>= (size!4083 (_1!3344 (v!16057 lt!218410))) (size!4083 (_1!3344 (v!16057 lt!218408)))) lt!218410 lt!218408)))))))

(declare-fun call!38139 () Option!1253)

(assert (=> b!529888 (= lt!218410 call!38139)))

(assert (=> b!529888 (= lt!218408 (maxPrefix!487 thiss!22590 (t!73668 rules!3103) (++!1391 input!2705 suffix!1342)))))

(declare-fun b!529889 () Bool)

(declare-fun res!223731 () Bool)

(assert (=> b!529889 (=> (not res!223731) (not e!318843))))

(declare-fun apply!1200 (TokenValueInjection!1622 BalanceConc!3248) TokenValue!927)

(declare-fun seqFromList!1123 (List!5028) BalanceConc!3248)

(assert (=> b!529889 (= res!223731 (= (value!30602 (_1!3344 (get!1871 lt!218409))) (apply!1200 (transformation!903 (rule!1603 (_1!3344 (get!1871 lt!218409)))) (seqFromList!1123 (originalCharacters!942 (_1!3344 (get!1871 lt!218409)))))))))

(declare-fun b!529890 () Bool)

(declare-fun res!223730 () Bool)

(assert (=> b!529890 (=> (not res!223730) (not e!318843))))

(declare-fun matchR!434 (Regex!1237 List!5028) Bool)

(assert (=> b!529890 (= res!223730 (matchR!434 (regex!903 (rule!1603 (_1!3344 (get!1871 lt!218409)))) (list!2087 (charsOf!532 (_1!3344 (get!1871 lt!218409))))))))

(declare-fun b!529891 () Bool)

(assert (=> b!529891 (= e!318841 e!318843)))

(declare-fun res!223733 () Bool)

(assert (=> b!529891 (=> (not res!223733) (not e!318843))))

(assert (=> b!529891 (= res!223733 (isDefined!1065 lt!218409))))

(declare-fun b!529892 () Bool)

(assert (=> b!529892 (= e!318842 call!38139)))

(declare-fun b!529893 () Bool)

(declare-fun res!223735 () Bool)

(assert (=> b!529893 (=> (not res!223735) (not e!318843))))

(assert (=> b!529893 (= res!223735 (< (size!4085 (_2!3344 (get!1871 lt!218409))) (size!4085 (++!1391 input!2705 suffix!1342))))))

(declare-fun bm!38134 () Bool)

(declare-fun maxPrefixOneRule!234 (LexerInterface!789 Rule!1606 List!5028) Option!1253)

(assert (=> bm!38134 (= call!38139 (maxPrefixOneRule!234 thiss!22590 (h!10420 rules!3103) (++!1391 input!2705 suffix!1342)))))

(declare-fun b!529894 () Bool)

(declare-fun res!223732 () Bool)

(assert (=> b!529894 (=> (not res!223732) (not e!318843))))

(assert (=> b!529894 (= res!223732 (= (++!1391 (list!2087 (charsOf!532 (_1!3344 (get!1871 lt!218409)))) (_2!3344 (get!1871 lt!218409))) (++!1391 input!2705 suffix!1342)))))

(declare-fun b!529895 () Bool)

(declare-fun res!223734 () Bool)

(assert (=> b!529895 (=> (not res!223734) (not e!318843))))

(assert (=> b!529895 (= res!223734 (= (list!2087 (charsOf!532 (_1!3344 (get!1871 lt!218409)))) (originalCharacters!942 (_1!3344 (get!1871 lt!218409)))))))

(assert (= (and d!188185 c!101312) b!529892))

(assert (= (and d!188185 (not c!101312)) b!529888))

(assert (= (or b!529892 b!529888) bm!38134))

(assert (= (and d!188185 (not res!223729)) b!529891))

(assert (= (and b!529891 res!223733) b!529895))

(assert (= (and b!529895 res!223734) b!529893))

(assert (= (and b!529893 res!223735) b!529894))

(assert (= (and b!529894 res!223732) b!529889))

(assert (= (and b!529889 res!223731) b!529890))

(assert (= (and b!529890 res!223730) b!529887))

(declare-fun m!775293 () Bool)

(assert (=> b!529887 m!775293))

(declare-fun m!775295 () Bool)

(assert (=> b!529887 m!775295))

(assert (=> b!529888 m!775153))

(declare-fun m!775297 () Bool)

(assert (=> b!529888 m!775297))

(declare-fun m!775299 () Bool)

(assert (=> b!529891 m!775299))

(assert (=> b!529894 m!775293))

(declare-fun m!775301 () Bool)

(assert (=> b!529894 m!775301))

(assert (=> b!529894 m!775301))

(declare-fun m!775303 () Bool)

(assert (=> b!529894 m!775303))

(assert (=> b!529894 m!775303))

(declare-fun m!775305 () Bool)

(assert (=> b!529894 m!775305))

(assert (=> b!529893 m!775293))

(declare-fun m!775307 () Bool)

(assert (=> b!529893 m!775307))

(assert (=> b!529893 m!775153))

(declare-fun m!775309 () Bool)

(assert (=> b!529893 m!775309))

(declare-fun m!775311 () Bool)

(assert (=> d!188185 m!775311))

(assert (=> d!188185 m!775153))

(assert (=> d!188185 m!775153))

(declare-fun m!775313 () Bool)

(assert (=> d!188185 m!775313))

(assert (=> d!188185 m!775153))

(assert (=> d!188185 m!775153))

(declare-fun m!775315 () Bool)

(assert (=> d!188185 m!775315))

(assert (=> d!188185 m!775165))

(assert (=> b!529889 m!775293))

(declare-fun m!775317 () Bool)

(assert (=> b!529889 m!775317))

(assert (=> b!529889 m!775317))

(declare-fun m!775319 () Bool)

(assert (=> b!529889 m!775319))

(assert (=> b!529890 m!775293))

(assert (=> b!529890 m!775301))

(assert (=> b!529890 m!775301))

(assert (=> b!529890 m!775303))

(assert (=> b!529890 m!775303))

(declare-fun m!775321 () Bool)

(assert (=> b!529890 m!775321))

(assert (=> bm!38134 m!775153))

(declare-fun m!775323 () Bool)

(assert (=> bm!38134 m!775323))

(assert (=> b!529895 m!775293))

(assert (=> b!529895 m!775301))

(assert (=> b!529895 m!775301))

(assert (=> b!529895 m!775303))

(assert (=> b!529711 d!188185))

(declare-fun b!529906 () Bool)

(declare-fun res!223740 () Bool)

(declare-fun e!318848 () Bool)

(assert (=> b!529906 (=> (not res!223740) (not e!318848))))

(declare-fun lt!218415 () List!5028)

(assert (=> b!529906 (= res!223740 (= (size!4085 lt!218415) (+ (size!4085 input!2705) (size!4085 suffix!1342))))))

(declare-fun d!188191 () Bool)

(assert (=> d!188191 e!318848))

(declare-fun res!223741 () Bool)

(assert (=> d!188191 (=> (not res!223741) (not e!318848))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!894 (List!5028) (InoxSet C!3396))

(assert (=> d!188191 (= res!223741 (= (content!894 lt!218415) ((_ map or) (content!894 input!2705) (content!894 suffix!1342))))))

(declare-fun e!318849 () List!5028)

(assert (=> d!188191 (= lt!218415 e!318849)))

(declare-fun c!101315 () Bool)

(assert (=> d!188191 (= c!101315 ((_ is Nil!5018) input!2705))))

(assert (=> d!188191 (= (++!1391 input!2705 suffix!1342) lt!218415)))

(declare-fun b!529907 () Bool)

(assert (=> b!529907 (= e!318848 (or (not (= suffix!1342 Nil!5018)) (= lt!218415 input!2705)))))

(declare-fun b!529905 () Bool)

(assert (=> b!529905 (= e!318849 (Cons!5018 (h!10419 input!2705) (++!1391 (t!73667 input!2705) suffix!1342)))))

(declare-fun b!529904 () Bool)

(assert (=> b!529904 (= e!318849 suffix!1342)))

(assert (= (and d!188191 c!101315) b!529904))

(assert (= (and d!188191 (not c!101315)) b!529905))

(assert (= (and d!188191 res!223741) b!529906))

(assert (= (and b!529906 res!223740) b!529907))

(declare-fun m!775325 () Bool)

(assert (=> b!529906 m!775325))

(declare-fun m!775327 () Bool)

(assert (=> b!529906 m!775327))

(declare-fun m!775329 () Bool)

(assert (=> b!529906 m!775329))

(declare-fun m!775331 () Bool)

(assert (=> d!188191 m!775331))

(declare-fun m!775333 () Bool)

(assert (=> d!188191 m!775333))

(declare-fun m!775335 () Bool)

(assert (=> d!188191 m!775335))

(declare-fun m!775337 () Bool)

(assert (=> b!529905 m!775337))

(assert (=> b!529711 d!188191))

(declare-fun d!188193 () Bool)

(assert (=> d!188193 (= (inv!6291 (tag!1165 (rule!1603 token!491))) (= (mod (str.len (value!30576 (tag!1165 (rule!1603 token!491)))) 2) 0))))

(assert (=> b!529712 d!188193))

(declare-fun d!188195 () Bool)

(declare-fun res!223742 () Bool)

(declare-fun e!318850 () Bool)

(assert (=> d!188195 (=> (not res!223742) (not e!318850))))

(assert (=> d!188195 (= res!223742 (semiInverseModEq!361 (toChars!1605 (transformation!903 (rule!1603 token!491))) (toValue!1746 (transformation!903 (rule!1603 token!491)))))))

(assert (=> d!188195 (= (inv!6294 (transformation!903 (rule!1603 token!491))) e!318850)))

(declare-fun b!529908 () Bool)

(assert (=> b!529908 (= e!318850 (equivClasses!344 (toChars!1605 (transformation!903 (rule!1603 token!491))) (toValue!1746 (transformation!903 (rule!1603 token!491)))))))

(assert (= (and d!188195 res!223742) b!529908))

(declare-fun m!775339 () Bool)

(assert (=> d!188195 m!775339))

(declare-fun m!775341 () Bool)

(assert (=> b!529908 m!775341))

(assert (=> b!529712 d!188195))

(declare-fun d!188197 () Bool)

(declare-fun res!223745 () Bool)

(declare-fun e!318853 () Bool)

(assert (=> d!188197 (=> (not res!223745) (not e!318853))))

(declare-fun rulesValid!326 (LexerInterface!789 List!5029) Bool)

(assert (=> d!188197 (= res!223745 (rulesValid!326 thiss!22590 rules!3103))))

(assert (=> d!188197 (= (rulesInvariant!752 thiss!22590 rules!3103) e!318853)))

(declare-fun b!529911 () Bool)

(declare-datatypes ((List!5031 0))(
  ( (Nil!5021) (Cons!5021 (h!10422 String!6378) (t!73682 List!5031)) )
))
(declare-fun noDuplicateTag!326 (LexerInterface!789 List!5029 List!5031) Bool)

(assert (=> b!529911 (= e!318853 (noDuplicateTag!326 thiss!22590 rules!3103 Nil!5021))))

(assert (= (and d!188197 res!223745) b!529911))

(declare-fun m!775343 () Bool)

(assert (=> d!188197 m!775343))

(declare-fun m!775345 () Bool)

(assert (=> b!529911 m!775345))

(assert (=> b!529710 d!188197))

(declare-fun b!529916 () Bool)

(declare-fun e!318856 () Bool)

(declare-fun tp!168724 () Bool)

(assert (=> b!529916 (= e!318856 (and tp_is_empty!2829 tp!168724))))

(assert (=> b!529714 (= tp!168670 e!318856)))

(assert (= (and b!529714 ((_ is Cons!5018) (originalCharacters!942 token!491))) b!529916))

(declare-fun b!529928 () Bool)

(declare-fun e!318859 () Bool)

(declare-fun tp!168735 () Bool)

(declare-fun tp!168737 () Bool)

(assert (=> b!529928 (= e!318859 (and tp!168735 tp!168737))))

(declare-fun b!529930 () Bool)

(declare-fun tp!168736 () Bool)

(declare-fun tp!168739 () Bool)

(assert (=> b!529930 (= e!318859 (and tp!168736 tp!168739))))

(declare-fun b!529927 () Bool)

(assert (=> b!529927 (= e!318859 tp_is_empty!2829)))

(declare-fun b!529929 () Bool)

(declare-fun tp!168738 () Bool)

(assert (=> b!529929 (= e!318859 tp!168738)))

(assert (=> b!529702 (= tp!168672 e!318859)))

(assert (= (and b!529702 ((_ is ElementMatch!1237) (regex!903 (h!10420 rules!3103)))) b!529927))

(assert (= (and b!529702 ((_ is Concat!2164) (regex!903 (h!10420 rules!3103)))) b!529928))

(assert (= (and b!529702 ((_ is Star!1237) (regex!903 (h!10420 rules!3103)))) b!529929))

(assert (= (and b!529702 ((_ is Union!1237) (regex!903 (h!10420 rules!3103)))) b!529930))

(declare-fun b!529941 () Bool)

(declare-fun b_free!14181 () Bool)

(declare-fun b_next!14197 () Bool)

(assert (=> b!529941 (= b_free!14181 (not b_next!14197))))

(declare-fun tp!168749 () Bool)

(declare-fun b_and!51711 () Bool)

(assert (=> b!529941 (= tp!168749 b_and!51711)))

(declare-fun b_free!14183 () Bool)

(declare-fun b_next!14199 () Bool)

(assert (=> b!529941 (= b_free!14183 (not b_next!14199))))

(declare-fun tb!47221 () Bool)

(declare-fun t!73681 () Bool)

(assert (=> (and b!529941 (= (toChars!1605 (transformation!903 (h!10420 (t!73668 rules!3103)))) (toChars!1605 (transformation!903 (rule!1603 token!491)))) t!73681) tb!47221))

(declare-fun result!52604 () Bool)

(assert (= result!52604 result!52578))

(assert (=> b!529735 t!73681))

(assert (=> d!188149 t!73681))

(declare-fun tp!168750 () Bool)

(declare-fun b_and!51713 () Bool)

(assert (=> b!529941 (= tp!168750 (and (=> t!73681 result!52604) b_and!51713))))

(declare-fun e!318870 () Bool)

(assert (=> b!529941 (= e!318870 (and tp!168749 tp!168750))))

(declare-fun b!529940 () Bool)

(declare-fun tp!168751 () Bool)

(declare-fun e!318871 () Bool)

(assert (=> b!529940 (= e!318871 (and tp!168751 (inv!6291 (tag!1165 (h!10420 (t!73668 rules!3103)))) (inv!6294 (transformation!903 (h!10420 (t!73668 rules!3103)))) e!318870))))

(declare-fun b!529939 () Bool)

(declare-fun e!318868 () Bool)

(declare-fun tp!168748 () Bool)

(assert (=> b!529939 (= e!318868 (and e!318871 tp!168748))))

(assert (=> b!529706 (= tp!168675 e!318868)))

(assert (= b!529940 b!529941))

(assert (= b!529939 b!529940))

(assert (= (and b!529706 ((_ is Cons!5019) (t!73668 rules!3103))) b!529939))

(declare-fun m!775347 () Bool)

(assert (=> b!529940 m!775347))

(declare-fun m!775349 () Bool)

(assert (=> b!529940 m!775349))

(declare-fun b!529943 () Bool)

(declare-fun e!318872 () Bool)

(declare-fun tp!168752 () Bool)

(declare-fun tp!168754 () Bool)

(assert (=> b!529943 (= e!318872 (and tp!168752 tp!168754))))

(declare-fun b!529945 () Bool)

(declare-fun tp!168753 () Bool)

(declare-fun tp!168756 () Bool)

(assert (=> b!529945 (= e!318872 (and tp!168753 tp!168756))))

(declare-fun b!529942 () Bool)

(assert (=> b!529942 (= e!318872 tp_is_empty!2829)))

(declare-fun b!529944 () Bool)

(declare-fun tp!168755 () Bool)

(assert (=> b!529944 (= e!318872 tp!168755)))

(assert (=> b!529712 (= tp!168671 e!318872)))

(assert (= (and b!529712 ((_ is ElementMatch!1237) (regex!903 (rule!1603 token!491)))) b!529942))

(assert (= (and b!529712 ((_ is Concat!2164) (regex!903 (rule!1603 token!491)))) b!529943))

(assert (= (and b!529712 ((_ is Star!1237) (regex!903 (rule!1603 token!491)))) b!529944))

(assert (= (and b!529712 ((_ is Union!1237) (regex!903 (rule!1603 token!491)))) b!529945))

(declare-fun b!529946 () Bool)

(declare-fun e!318873 () Bool)

(declare-fun tp!168757 () Bool)

(assert (=> b!529946 (= e!318873 (and tp_is_empty!2829 tp!168757))))

(assert (=> b!529715 (= tp!168673 e!318873)))

(assert (= (and b!529715 ((_ is Cons!5018) (t!73667 input!2705))) b!529946))

(declare-fun b!529947 () Bool)

(declare-fun e!318874 () Bool)

(declare-fun tp!168758 () Bool)

(assert (=> b!529947 (= e!318874 (and tp_is_empty!2829 tp!168758))))

(assert (=> b!529705 (= tp!168674 e!318874)))

(assert (= (and b!529705 ((_ is Cons!5018) (t!73667 suffix!1342))) b!529947))

(declare-fun b_lambda!20507 () Bool)

(assert (= b_lambda!20497 (or (and b!529709 b_free!14171 (= (toChars!1605 (transformation!903 (h!10420 rules!3103))) (toChars!1605 (transformation!903 (rule!1603 token!491))))) (and b!529704 b_free!14175) (and b!529941 b_free!14183 (= (toChars!1605 (transformation!903 (h!10420 (t!73668 rules!3103)))) (toChars!1605 (transformation!903 (rule!1603 token!491))))) b_lambda!20507)))

(declare-fun b_lambda!20509 () Bool)

(assert (= b_lambda!20495 (or (and b!529709 b_free!14171 (= (toChars!1605 (transformation!903 (h!10420 rules!3103))) (toChars!1605 (transformation!903 (rule!1603 token!491))))) (and b!529704 b_free!14175) (and b!529941 b_free!14183 (= (toChars!1605 (transformation!903 (h!10420 (t!73668 rules!3103)))) (toChars!1605 (transformation!903 (rule!1603 token!491))))) b_lambda!20509)))

(check-sat (not b!529928) (not d!188197) (not b!529944) b_and!51711 (not b_next!14185) (not b!529894) (not b!529887) (not b!529946) b_and!51695 (not d!188157) (not b_next!14191) (not d!188183) (not b!529943) (not b!529908) (not b!529906) (not b!529728) (not b!529945) (not b_next!14197) (not b!529911) (not b_next!14187) (not b!529726) (not b_next!14199) (not b!529736) (not d!188149) (not d!188191) (not b_lambda!20509) (not d!188143) (not b!529947) (not bm!38134) (not d!188155) (not b!529893) (not b!529735) (not b!529792) (not b!529727) b_and!51713 (not b!529895) (not b!529940) (not b!529939) (not b_lambda!20507) (not tb!47211) (not b!529751) (not d!188185) (not b_next!14189) tp_is_empty!2829 (not b!529888) b_and!51687 (not b!529929) (not b!529793) (not b!529741) (not b!529916) (not b!529905) b_and!51683 b_and!51697 (not d!188147) (not b!529891) (not b!529890) (not b!529930) (not b!529889) (not d!188195))
(check-sat (not b_next!14191) (not b_next!14197) b_and!51711 b_and!51713 (not b_next!14185) b_and!51695 (not b_next!14187) (not b_next!14199) (not b_next!14189) b_and!51687 b_and!51683 b_and!51697)
