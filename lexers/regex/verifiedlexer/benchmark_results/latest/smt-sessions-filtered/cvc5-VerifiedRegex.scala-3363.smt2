; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!190502 () Bool)

(assert start!190502)

(declare-fun b!1899997 () Bool)

(declare-fun b_free!53333 () Bool)

(declare-fun b_next!54037 () Bool)

(assert (=> b!1899997 (= b_free!53333 (not b_next!54037))))

(declare-fun tp!542630 () Bool)

(declare-fun b_and!147015 () Bool)

(assert (=> b!1899997 (= tp!542630 b_and!147015)))

(declare-fun b_free!53335 () Bool)

(declare-fun b_next!54039 () Bool)

(assert (=> b!1899997 (= b_free!53335 (not b_next!54039))))

(declare-fun tp!542629 () Bool)

(declare-fun b_and!147017 () Bool)

(assert (=> b!1899997 (= tp!542629 b_and!147017)))

(declare-fun b!1900004 () Bool)

(declare-fun b_free!53337 () Bool)

(declare-fun b_next!54041 () Bool)

(assert (=> b!1900004 (= b_free!53337 (not b_next!54041))))

(declare-fun tp!542625 () Bool)

(declare-fun b_and!147019 () Bool)

(assert (=> b!1900004 (= tp!542625 b_and!147019)))

(declare-fun b_free!53339 () Bool)

(declare-fun b_next!54043 () Bool)

(assert (=> b!1900004 (= b_free!53339 (not b_next!54043))))

(declare-fun tp!542626 () Bool)

(declare-fun b_and!147021 () Bool)

(assert (=> b!1900004 (= tp!542626 b_and!147021)))

(declare-fun b!1900020 () Bool)

(declare-fun b_free!53341 () Bool)

(declare-fun b_next!54045 () Bool)

(assert (=> b!1900020 (= b_free!53341 (not b_next!54045))))

(declare-fun tp!542628 () Bool)

(declare-fun b_and!147023 () Bool)

(assert (=> b!1900020 (= tp!542628 b_and!147023)))

(declare-fun b_free!53343 () Bool)

(declare-fun b_next!54047 () Bool)

(assert (=> b!1900020 (= b_free!53343 (not b_next!54047))))

(declare-fun tp!542622 () Bool)

(declare-fun b_and!147025 () Bool)

(assert (=> b!1900020 (= tp!542622 b_and!147025)))

(declare-fun b!1899995 () Bool)

(declare-fun e!1213450 () Bool)

(assert (=> b!1899995 (= e!1213450 true)))

(declare-datatypes ((C!10598 0))(
  ( (C!10599 (val!6251 Int)) )
))
(declare-datatypes ((List!21456 0))(
  ( (Nil!21374) (Cons!21374 (h!26775 C!10598) (t!176727 List!21456)) )
))
(declare-datatypes ((List!21457 0))(
  ( (Nil!21375) (Cons!21375 (h!26776 (_ BitVec 16)) (t!176728 List!21457)) )
))
(declare-datatypes ((TokenValue!3937 0))(
  ( (FloatLiteralValue!7874 (text!28004 List!21457)) (TokenValueExt!3936 (__x!13372 Int)) (Broken!19685 (value!119895 List!21457)) (Object!4018) (End!3937) (Def!3937) (Underscore!3937) (Match!3937) (Else!3937) (Error!3937) (Case!3937) (If!3937) (Extends!3937) (Abstract!3937) (Class!3937) (Val!3937) (DelimiterValue!7874 (del!3997 List!21457)) (KeywordValue!3943 (value!119896 List!21457)) (CommentValue!7874 (value!119897 List!21457)) (WhitespaceValue!7874 (value!119898 List!21457)) (IndentationValue!3937 (value!119899 List!21457)) (String!24804) (Int32!3937) (Broken!19686 (value!119900 List!21457)) (Boolean!3938) (Unit!35702) (OperatorValue!3940 (op!3997 List!21457)) (IdentifierValue!7874 (value!119901 List!21457)) (IdentifierValue!7875 (value!119902 List!21457)) (WhitespaceValue!7875 (value!119903 List!21457)) (True!7874) (False!7874) (Broken!19687 (value!119904 List!21457)) (Broken!19688 (value!119905 List!21457)) (True!7875) (RightBrace!3937) (RightBracket!3937) (Colon!3937) (Null!3937) (Comma!3937) (LeftBracket!3937) (False!7875) (LeftBrace!3937) (ImaginaryLiteralValue!3937 (text!28005 List!21457)) (StringLiteralValue!11811 (value!119906 List!21457)) (EOFValue!3937 (value!119907 List!21457)) (IdentValue!3937 (value!119908 List!21457)) (DelimiterValue!7875 (value!119909 List!21457)) (DedentValue!3937 (value!119910 List!21457)) (NewLineValue!3937 (value!119911 List!21457)) (IntegerValue!11811 (value!119912 (_ BitVec 32)) (text!28006 List!21457)) (IntegerValue!11812 (value!119913 Int) (text!28007 List!21457)) (Times!3937) (Or!3937) (Equal!3937) (Minus!3937) (Broken!19689 (value!119914 List!21457)) (And!3937) (Div!3937) (LessEqual!3937) (Mod!3937) (Concat!9163) (Not!3937) (Plus!3937) (SpaceValue!3937 (value!119915 List!21457)) (IntegerValue!11813 (value!119916 Int) (text!28008 List!21457)) (StringLiteralValue!11812 (text!28009 List!21457)) (FloatLiteralValue!7875 (text!28010 List!21457)) (BytesLiteralValue!3937 (value!119917 List!21457)) (CommentValue!7875 (value!119918 List!21457)) (StringLiteralValue!11813 (value!119919 List!21457)) (ErrorTokenValue!3937 (msg!3998 List!21457)) )
))
(declare-datatypes ((Regex!5226 0))(
  ( (ElementMatch!5226 (c!309634 C!10598)) (Concat!9164 (regOne!10964 Regex!5226) (regTwo!10964 Regex!5226)) (EmptyExpr!5226) (Star!5226 (reg!5555 Regex!5226)) (EmptyLang!5226) (Union!5226 (regOne!10965 Regex!5226) (regTwo!10965 Regex!5226)) )
))
(declare-datatypes ((String!24805 0))(
  ( (String!24806 (value!119920 String)) )
))
(declare-datatypes ((IArray!14229 0))(
  ( (IArray!14230 (innerList!7172 List!21456)) )
))
(declare-datatypes ((Conc!7112 0))(
  ( (Node!7112 (left!17115 Conc!7112) (right!17445 Conc!7112) (csize!14454 Int) (cheight!7323 Int)) (Leaf!10476 (xs!10006 IArray!14229) (csize!14455 Int)) (Empty!7112) )
))
(declare-datatypes ((BalanceConc!14040 0))(
  ( (BalanceConc!14041 (c!309635 Conc!7112)) )
))
(declare-datatypes ((TokenValueInjection!7458 0))(
  ( (TokenValueInjection!7459 (toValue!5418 Int) (toChars!5277 Int)) )
))
(declare-datatypes ((Rule!7402 0))(
  ( (Rule!7403 (regex!3801 Regex!5226) (tag!4225 String!24805) (isSeparator!3801 Bool) (transformation!3801 TokenValueInjection!7458)) )
))
(declare-datatypes ((Token!7154 0))(
  ( (Token!7155 (value!119921 TokenValue!3937) (rule!5994 Rule!7402) (size!16891 Int) (originalCharacters!4608 List!21456)) )
))
(declare-fun separatorToken!354 () Token!7154)

(declare-datatypes ((LexerInterface!3414 0))(
  ( (LexerInterfaceExt!3411 (__x!13373 Int)) (Lexer!3412) )
))
(declare-fun thiss!23328 () LexerInterface!3414)

(declare-datatypes ((List!21458 0))(
  ( (Nil!21376) (Cons!21376 (h!26777 Rule!7402) (t!176729 List!21458)) )
))
(declare-fun rules!3198 () List!21458)

(declare-fun lt!726614 () List!21456)

(declare-datatypes ((List!21459 0))(
  ( (Nil!21377) (Cons!21377 (h!26778 Token!7154) (t!176730 List!21459)) )
))
(declare-fun tokens!598 () List!21459)

(declare-fun printWithSeparatorTokenWhenNeededList!457 (LexerInterface!3414 List!21458 List!21459 Token!7154) List!21456)

(assert (=> b!1899995 (= lt!726614 (printWithSeparatorTokenWhenNeededList!457 thiss!23328 rules!3198 tokens!598 separatorToken!354))))

(declare-fun b!1899996 () Bool)

(declare-fun res!848255 () Bool)

(declare-fun e!1213449 () Bool)

(assert (=> b!1899996 (=> (not res!848255) (not e!1213449))))

(declare-fun rulesProduceEachTokenIndividuallyList!1145 (LexerInterface!3414 List!21458 List!21459) Bool)

(assert (=> b!1899996 (= res!848255 (rulesProduceEachTokenIndividuallyList!1145 thiss!23328 rules!3198 tokens!598))))

(declare-fun e!1213456 () Bool)

(assert (=> b!1899997 (= e!1213456 (and tp!542630 tp!542629))))

(declare-fun b!1899998 () Bool)

(declare-fun e!1213446 () Bool)

(declare-fun tp!542633 () Bool)

(declare-fun e!1213437 () Bool)

(declare-fun inv!21 (TokenValue!3937) Bool)

(assert (=> b!1899998 (= e!1213446 (and (inv!21 (value!119921 separatorToken!354)) e!1213437 tp!542633))))

(declare-fun tp!542631 () Bool)

(declare-fun e!1213443 () Bool)

(declare-fun b!1899999 () Bool)

(declare-fun e!1213448 () Bool)

(assert (=> b!1899999 (= e!1213448 (and (inv!21 (value!119921 (h!26778 tokens!598))) e!1213443 tp!542631))))

(declare-fun e!1213438 () Bool)

(declare-fun b!1900000 () Bool)

(declare-fun tp!542623 () Bool)

(declare-fun inv!28470 (String!24805) Bool)

(declare-fun inv!28473 (TokenValueInjection!7458) Bool)

(assert (=> b!1900000 (= e!1213438 (and tp!542623 (inv!28470 (tag!4225 (h!26777 rules!3198))) (inv!28473 (transformation!3801 (h!26777 rules!3198))) e!1213456))))

(declare-fun b!1900001 () Bool)

(declare-fun e!1213441 () Bool)

(declare-datatypes ((tuple2!20138 0))(
  ( (tuple2!20139 (_1!11538 Token!7154) (_2!11538 List!21456)) )
))
(declare-datatypes ((Option!4307 0))(
  ( (None!4306) (Some!4306 (v!26335 tuple2!20138)) )
))
(declare-fun lt!726608 () Option!4307)

(declare-fun get!6615 (Option!4307) tuple2!20138)

(assert (=> b!1900001 (= e!1213441 (= (_1!11538 (get!6615 lt!726608)) (h!26778 tokens!598)))))

(declare-fun b!1900002 () Bool)

(declare-fun res!848261 () Bool)

(assert (=> b!1900002 (=> (not res!848261) (not e!1213449))))

(assert (=> b!1900002 (= res!848261 (isSeparator!3801 (rule!5994 separatorToken!354)))))

(declare-fun b!1900003 () Bool)

(declare-fun e!1213435 () Bool)

(declare-fun e!1213436 () Bool)

(assert (=> b!1900003 (= e!1213435 e!1213436)))

(declare-fun res!848263 () Bool)

(assert (=> b!1900003 (=> (not res!848263) (not e!1213436))))

(declare-fun lt!726615 () Rule!7402)

(declare-fun lt!726606 () List!21456)

(declare-fun matchR!2512 (Regex!5226 List!21456) Bool)

(assert (=> b!1900003 (= res!848263 (matchR!2512 (regex!3801 lt!726615) lt!726606))))

(declare-datatypes ((Option!4308 0))(
  ( (None!4307) (Some!4307 (v!26336 Rule!7402)) )
))
(declare-fun lt!726607 () Option!4308)

(declare-fun get!6616 (Option!4308) Rule!7402)

(assert (=> b!1900003 (= lt!726615 (get!6616 lt!726607))))

(declare-fun e!1213455 () Bool)

(assert (=> b!1900004 (= e!1213455 (and tp!542625 tp!542626))))

(declare-fun tp!542621 () Bool)

(declare-fun b!1900005 () Bool)

(assert (=> b!1900005 (= e!1213437 (and tp!542621 (inv!28470 (tag!4225 (rule!5994 separatorToken!354))) (inv!28473 (transformation!3801 (rule!5994 separatorToken!354))) e!1213455))))

(declare-fun b!1900006 () Bool)

(declare-fun e!1213439 () Bool)

(declare-fun e!1213453 () Bool)

(assert (=> b!1900006 (= e!1213439 e!1213453)))

(declare-fun res!848253 () Bool)

(assert (=> b!1900006 (=> (not res!848253) (not e!1213453))))

(declare-fun lt!726612 () Rule!7402)

(declare-fun lt!726613 () List!21456)

(assert (=> b!1900006 (= res!848253 (matchR!2512 (regex!3801 lt!726612) lt!726613))))

(declare-fun lt!726605 () Option!4308)

(assert (=> b!1900006 (= lt!726612 (get!6616 lt!726605))))

(declare-fun res!848267 () Bool)

(assert (=> start!190502 (=> (not res!848267) (not e!1213449))))

(assert (=> start!190502 (= res!848267 (is-Lexer!3412 thiss!23328))))

(assert (=> start!190502 e!1213449))

(assert (=> start!190502 true))

(declare-fun e!1213454 () Bool)

(assert (=> start!190502 e!1213454))

(declare-fun e!1213452 () Bool)

(assert (=> start!190502 e!1213452))

(declare-fun inv!28474 (Token!7154) Bool)

(assert (=> start!190502 (and (inv!28474 separatorToken!354) e!1213446)))

(declare-fun b!1900007 () Bool)

(declare-fun res!848265 () Bool)

(assert (=> b!1900007 (=> res!848265 e!1213450)))

(declare-fun isEmpty!13109 (List!21459) Bool)

(assert (=> b!1900007 (= res!848265 (isEmpty!13109 tokens!598))))

(declare-fun b!1900008 () Bool)

(declare-fun res!848256 () Bool)

(assert (=> b!1900008 (=> (not res!848256) (not e!1213449))))

(assert (=> b!1900008 (= res!848256 (is-Cons!21377 tokens!598))))

(declare-fun b!1900009 () Bool)

(declare-fun res!848258 () Bool)

(assert (=> b!1900009 (=> (not res!848258) (not e!1213449))))

(declare-fun rulesInvariant!3021 (LexerInterface!3414 List!21458) Bool)

(assert (=> b!1900009 (= res!848258 (rulesInvariant!3021 thiss!23328 rules!3198))))

(declare-fun b!1900010 () Bool)

(assert (=> b!1900010 (= e!1213453 (= (rule!5994 (h!26778 tokens!598)) lt!726612))))

(declare-fun b!1900011 () Bool)

(declare-fun tp!542624 () Bool)

(assert (=> b!1900011 (= e!1213452 (and (inv!28474 (h!26778 tokens!598)) e!1213448 tp!542624))))

(declare-fun b!1900012 () Bool)

(declare-fun res!848254 () Bool)

(assert (=> b!1900012 (=> (not res!848254) (not e!1213449))))

(declare-fun sepAndNonSepRulesDisjointChars!899 (List!21458 List!21458) Bool)

(assert (=> b!1900012 (= res!848254 (sepAndNonSepRulesDisjointChars!899 rules!3198 rules!3198))))

(declare-fun b!1900013 () Bool)

(declare-fun res!848257 () Bool)

(assert (=> b!1900013 (=> (not res!848257) (not e!1213449))))

(declare-fun rulesProduceIndividualToken!1586 (LexerInterface!3414 List!21458 Token!7154) Bool)

(assert (=> b!1900013 (= res!848257 (rulesProduceIndividualToken!1586 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1900014 () Bool)

(assert (=> b!1900014 (= e!1213436 (= (rule!5994 separatorToken!354) lt!726615))))

(declare-fun b!1900015 () Bool)

(declare-fun res!848264 () Bool)

(assert (=> b!1900015 (=> (not res!848264) (not e!1213449))))

(declare-fun isEmpty!13110 (List!21458) Bool)

(assert (=> b!1900015 (= res!848264 (not (isEmpty!13110 rules!3198)))))

(declare-fun b!1900016 () Bool)

(declare-fun tp!542632 () Bool)

(assert (=> b!1900016 (= e!1213454 (and e!1213438 tp!542632))))

(declare-fun b!1900017 () Bool)

(assert (=> b!1900017 (= e!1213449 (not e!1213450))))

(declare-fun res!848259 () Bool)

(assert (=> b!1900017 (=> res!848259 e!1213450)))

(declare-fun lt!726610 () Option!4307)

(assert (=> b!1900017 (= res!848259 (or (not (is-Some!4306 lt!726610)) (not (= (_1!11538 (v!26335 lt!726610)) (h!26778 tokens!598)))))))

(declare-fun maxPrefix!1860 (LexerInterface!3414 List!21458 List!21456) Option!4307)

(declare-fun ++!5744 (List!21456 List!21456) List!21456)

(assert (=> b!1900017 (= lt!726610 (maxPrefix!1860 thiss!23328 rules!3198 (++!5744 lt!726613 (printWithSeparatorTokenWhenNeededList!457 thiss!23328 rules!3198 (t!176730 tokens!598) separatorToken!354))))))

(assert (=> b!1900017 e!1213439))

(declare-fun res!848262 () Bool)

(assert (=> b!1900017 (=> (not res!848262) (not e!1213439))))

(declare-fun isDefined!3605 (Option!4308) Bool)

(assert (=> b!1900017 (= res!848262 (isDefined!3605 lt!726605))))

(declare-fun getRuleFromTag!644 (LexerInterface!3414 List!21458 String!24805) Option!4308)

(assert (=> b!1900017 (= lt!726605 (getRuleFromTag!644 thiss!23328 rules!3198 (tag!4225 (rule!5994 (h!26778 tokens!598)))))))

(declare-datatypes ((Unit!35703 0))(
  ( (Unit!35704) )
))
(declare-fun lt!726603 () Unit!35703)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!644 (LexerInterface!3414 List!21458 List!21456 Token!7154) Unit!35703)

(assert (=> b!1900017 (= lt!726603 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!644 thiss!23328 rules!3198 lt!726613 (h!26778 tokens!598)))))

(assert (=> b!1900017 e!1213441))

(declare-fun res!848268 () Bool)

(assert (=> b!1900017 (=> (not res!848268) (not e!1213441))))

(declare-fun isDefined!3606 (Option!4307) Bool)

(assert (=> b!1900017 (= res!848268 (isDefined!3606 lt!726608))))

(assert (=> b!1900017 (= lt!726608 (maxPrefix!1860 thiss!23328 rules!3198 lt!726613))))

(declare-fun lt!726611 () BalanceConc!14040)

(declare-fun list!8689 (BalanceConc!14040) List!21456)

(assert (=> b!1900017 (= lt!726613 (list!8689 lt!726611))))

(assert (=> b!1900017 e!1213435))

(declare-fun res!848266 () Bool)

(assert (=> b!1900017 (=> (not res!848266) (not e!1213435))))

(assert (=> b!1900017 (= res!848266 (isDefined!3605 lt!726607))))

(assert (=> b!1900017 (= lt!726607 (getRuleFromTag!644 thiss!23328 rules!3198 (tag!4225 (rule!5994 separatorToken!354))))))

(declare-fun lt!726604 () Unit!35703)

(assert (=> b!1900017 (= lt!726604 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!644 thiss!23328 rules!3198 lt!726606 separatorToken!354))))

(declare-fun charsOf!2357 (Token!7154) BalanceConc!14040)

(assert (=> b!1900017 (= lt!726606 (list!8689 (charsOf!2357 separatorToken!354)))))

(declare-fun lt!726616 () Unit!35703)

(declare-fun lemmaEqSameImage!509 (TokenValueInjection!7458 BalanceConc!14040 BalanceConc!14040) Unit!35703)

(declare-fun seqFromList!2673 (List!21456) BalanceConc!14040)

(assert (=> b!1900017 (= lt!726616 (lemmaEqSameImage!509 (transformation!3801 (rule!5994 (h!26778 tokens!598))) lt!726611 (seqFromList!2673 (originalCharacters!4608 (h!26778 tokens!598)))))))

(declare-fun lt!726609 () Unit!35703)

(declare-fun lemmaSemiInverse!780 (TokenValueInjection!7458 BalanceConc!14040) Unit!35703)

(assert (=> b!1900017 (= lt!726609 (lemmaSemiInverse!780 (transformation!3801 (rule!5994 (h!26778 tokens!598))) lt!726611))))

(assert (=> b!1900017 (= lt!726611 (charsOf!2357 (h!26778 tokens!598)))))

(declare-fun tp!542627 () Bool)

(declare-fun e!1213445 () Bool)

(declare-fun b!1900018 () Bool)

(assert (=> b!1900018 (= e!1213443 (and tp!542627 (inv!28470 (tag!4225 (rule!5994 (h!26778 tokens!598)))) (inv!28473 (transformation!3801 (rule!5994 (h!26778 tokens!598)))) e!1213445))))

(declare-fun b!1900019 () Bool)

(declare-fun res!848260 () Bool)

(assert (=> b!1900019 (=> (not res!848260) (not e!1213449))))

(declare-fun lambda!74252 () Int)

(declare-fun forall!4481 (List!21459 Int) Bool)

(assert (=> b!1900019 (= res!848260 (forall!4481 tokens!598 lambda!74252))))

(assert (=> b!1900020 (= e!1213445 (and tp!542628 tp!542622))))

(assert (= (and start!190502 res!848267) b!1900015))

(assert (= (and b!1900015 res!848264) b!1900009))

(assert (= (and b!1900009 res!848258) b!1899996))

(assert (= (and b!1899996 res!848255) b!1900013))

(assert (= (and b!1900013 res!848257) b!1900002))

(assert (= (and b!1900002 res!848261) b!1900019))

(assert (= (and b!1900019 res!848260) b!1900012))

(assert (= (and b!1900012 res!848254) b!1900008))

(assert (= (and b!1900008 res!848256) b!1900017))

(assert (= (and b!1900017 res!848266) b!1900003))

(assert (= (and b!1900003 res!848263) b!1900014))

(assert (= (and b!1900017 res!848268) b!1900001))

(assert (= (and b!1900017 res!848262) b!1900006))

(assert (= (and b!1900006 res!848253) b!1900010))

(assert (= (and b!1900017 (not res!848259)) b!1900007))

(assert (= (and b!1900007 (not res!848265)) b!1899995))

(assert (= b!1900000 b!1899997))

(assert (= b!1900016 b!1900000))

(assert (= (and start!190502 (is-Cons!21376 rules!3198)) b!1900016))

(assert (= b!1900018 b!1900020))

(assert (= b!1899999 b!1900018))

(assert (= b!1900011 b!1899999))

(assert (= (and start!190502 (is-Cons!21377 tokens!598)) b!1900011))

(assert (= b!1900005 b!1900004))

(assert (= b!1899998 b!1900005))

(assert (= start!190502 b!1899998))

(declare-fun m!2331095 () Bool)

(assert (=> b!1899998 m!2331095))

(declare-fun m!2331097 () Bool)

(assert (=> b!1900015 m!2331097))

(declare-fun m!2331099 () Bool)

(assert (=> b!1900011 m!2331099))

(declare-fun m!2331101 () Bool)

(assert (=> b!1900012 m!2331101))

(declare-fun m!2331103 () Bool)

(assert (=> b!1899995 m!2331103))

(declare-fun m!2331105 () Bool)

(assert (=> b!1900018 m!2331105))

(declare-fun m!2331107 () Bool)

(assert (=> b!1900018 m!2331107))

(declare-fun m!2331109 () Bool)

(assert (=> b!1900017 m!2331109))

(declare-fun m!2331111 () Bool)

(assert (=> b!1900017 m!2331111))

(declare-fun m!2331113 () Bool)

(assert (=> b!1900017 m!2331113))

(declare-fun m!2331115 () Bool)

(assert (=> b!1900017 m!2331115))

(declare-fun m!2331117 () Bool)

(assert (=> b!1900017 m!2331117))

(declare-fun m!2331119 () Bool)

(assert (=> b!1900017 m!2331119))

(declare-fun m!2331121 () Bool)

(assert (=> b!1900017 m!2331121))

(declare-fun m!2331123 () Bool)

(assert (=> b!1900017 m!2331123))

(declare-fun m!2331125 () Bool)

(assert (=> b!1900017 m!2331125))

(declare-fun m!2331127 () Bool)

(assert (=> b!1900017 m!2331127))

(declare-fun m!2331129 () Bool)

(assert (=> b!1900017 m!2331129))

(declare-fun m!2331131 () Bool)

(assert (=> b!1900017 m!2331131))

(assert (=> b!1900017 m!2331123))

(declare-fun m!2331133 () Bool)

(assert (=> b!1900017 m!2331133))

(declare-fun m!2331135 () Bool)

(assert (=> b!1900017 m!2331135))

(declare-fun m!2331137 () Bool)

(assert (=> b!1900017 m!2331137))

(declare-fun m!2331139 () Bool)

(assert (=> b!1900017 m!2331139))

(assert (=> b!1900017 m!2331109))

(declare-fun m!2331141 () Bool)

(assert (=> b!1900017 m!2331141))

(assert (=> b!1900017 m!2331119))

(declare-fun m!2331143 () Bool)

(assert (=> b!1900017 m!2331143))

(assert (=> b!1900017 m!2331117))

(declare-fun m!2331145 () Bool)

(assert (=> b!1900001 m!2331145))

(declare-fun m!2331147 () Bool)

(assert (=> b!1900013 m!2331147))

(declare-fun m!2331149 () Bool)

(assert (=> start!190502 m!2331149))

(declare-fun m!2331151 () Bool)

(assert (=> b!1900005 m!2331151))

(declare-fun m!2331153 () Bool)

(assert (=> b!1900005 m!2331153))

(declare-fun m!2331155 () Bool)

(assert (=> b!1899999 m!2331155))

(declare-fun m!2331157 () Bool)

(assert (=> b!1900003 m!2331157))

(declare-fun m!2331159 () Bool)

(assert (=> b!1900003 m!2331159))

(declare-fun m!2331161 () Bool)

(assert (=> b!1900019 m!2331161))

(declare-fun m!2331163 () Bool)

(assert (=> b!1900006 m!2331163))

(declare-fun m!2331165 () Bool)

(assert (=> b!1900006 m!2331165))

(declare-fun m!2331167 () Bool)

(assert (=> b!1900000 m!2331167))

(declare-fun m!2331169 () Bool)

(assert (=> b!1900000 m!2331169))

(declare-fun m!2331171 () Bool)

(assert (=> b!1899996 m!2331171))

(declare-fun m!2331173 () Bool)

(assert (=> b!1900009 m!2331173))

(declare-fun m!2331175 () Bool)

(assert (=> b!1900007 m!2331175))

(push 1)

(assert (not b!1900019))

(assert (not b!1900013))

(assert (not b!1900001))

(assert (not b!1900005))

(assert (not b!1900003))

(assert b_and!147019)

(assert (not b_next!54047))

(assert (not b_next!54041))

(assert (not b_next!54045))

(assert (not start!190502))

(assert b_and!147017)

(assert (not b!1900000))

(assert (not b!1899996))

(assert (not b!1900006))

(assert (not b!1900009))

(assert (not b!1900015))

(assert b_and!147015)

(assert (not b_next!54043))

(assert (not b!1900007))

(assert (not b!1900017))

(assert b_and!147021)

(assert (not b!1899995))

(assert (not b_next!54037))

(assert b_and!147025)

(assert (not b!1899998))

(assert (not b!1899999))

(assert (not b_next!54039))

(assert (not b!1900018))

(assert (not b!1900012))

(assert (not b!1900011))

(assert (not b!1900016))

(assert b_and!147023)

(check-sat)

(pop 1)

(push 1)

(assert b_and!147019)

(assert (not b_next!54047))

(assert (not b_next!54041))

(assert b_and!147021)

(assert (not b_next!54045))

(assert (not b_next!54037))

(assert b_and!147017)

(assert b_and!147025)

(assert (not b_next!54039))

(assert b_and!147023)

(assert b_and!147015)

(assert (not b_next!54043))

(check-sat)

(pop 1)

