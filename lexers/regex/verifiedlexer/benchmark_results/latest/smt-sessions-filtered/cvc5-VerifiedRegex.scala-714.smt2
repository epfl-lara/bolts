; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!31036 () Bool)

(assert start!31036)

(declare-fun b!286013 () Bool)

(declare-fun b_free!10437 () Bool)

(declare-fun b_next!10437 () Bool)

(assert (=> b!286013 (= b_free!10437 (not b_next!10437))))

(declare-fun tp!104905 () Bool)

(declare-fun b_and!23021 () Bool)

(assert (=> b!286013 (= tp!104905 b_and!23021)))

(declare-fun b_free!10439 () Bool)

(declare-fun b_next!10439 () Bool)

(assert (=> b!286013 (= b_free!10439 (not b_next!10439))))

(declare-fun tp!104907 () Bool)

(declare-fun b_and!23023 () Bool)

(assert (=> b!286013 (= tp!104907 b_and!23023)))

(declare-fun b!286014 () Bool)

(declare-fun b_free!10441 () Bool)

(declare-fun b_next!10441 () Bool)

(assert (=> b!286014 (= b_free!10441 (not b_next!10441))))

(declare-fun tp!104914 () Bool)

(declare-fun b_and!23025 () Bool)

(assert (=> b!286014 (= tp!104914 b_and!23025)))

(declare-fun b_free!10443 () Bool)

(declare-fun b_next!10443 () Bool)

(assert (=> b!286014 (= b_free!10443 (not b_next!10443))))

(declare-fun tp!104904 () Bool)

(declare-fun b_and!23027 () Bool)

(assert (=> b!286014 (= tp!104904 b_and!23027)))

(declare-fun b!286018 () Bool)

(declare-fun b_free!10445 () Bool)

(declare-fun b_next!10445 () Bool)

(assert (=> b!286018 (= b_free!10445 (not b_next!10445))))

(declare-fun tp!104906 () Bool)

(declare-fun b_and!23029 () Bool)

(assert (=> b!286018 (= tp!104906 b_and!23029)))

(declare-fun b_free!10447 () Bool)

(declare-fun b_next!10447 () Bool)

(assert (=> b!286018 (= b_free!10447 (not b_next!10447))))

(declare-fun tp!104911 () Bool)

(declare-fun b_and!23031 () Bool)

(assert (=> b!286018 (= tp!104911 b_and!23031)))

(declare-fun b!286009 () Bool)

(declare-fun e!177926 () Bool)

(declare-datatypes ((List!3928 0))(
  ( (Nil!3918) (Cons!3918 (h!9315 (_ BitVec 16)) (t!40038 List!3928)) )
))
(declare-datatypes ((TokenValue!772 0))(
  ( (FloatLiteralValue!1544 (text!5849 List!3928)) (TokenValueExt!771 (__x!3031 Int)) (Broken!3860 (value!25666 List!3928)) (Object!781) (End!772) (Def!772) (Underscore!772) (Match!772) (Else!772) (Error!772) (Case!772) (If!772) (Extends!772) (Abstract!772) (Class!772) (Val!772) (DelimiterValue!1544 (del!832 List!3928)) (KeywordValue!778 (value!25667 List!3928)) (CommentValue!1544 (value!25668 List!3928)) (WhitespaceValue!1544 (value!25669 List!3928)) (IndentationValue!772 (value!25670 List!3928)) (String!4941) (Int32!772) (Broken!3861 (value!25671 List!3928)) (Boolean!773) (Unit!5272) (OperatorValue!775 (op!832 List!3928)) (IdentifierValue!1544 (value!25672 List!3928)) (IdentifierValue!1545 (value!25673 List!3928)) (WhitespaceValue!1545 (value!25674 List!3928)) (True!1544) (False!1544) (Broken!3862 (value!25675 List!3928)) (Broken!3863 (value!25676 List!3928)) (True!1545) (RightBrace!772) (RightBracket!772) (Colon!772) (Null!772) (Comma!772) (LeftBracket!772) (False!1545) (LeftBrace!772) (ImaginaryLiteralValue!772 (text!5850 List!3928)) (StringLiteralValue!2316 (value!25677 List!3928)) (EOFValue!772 (value!25678 List!3928)) (IdentValue!772 (value!25679 List!3928)) (DelimiterValue!1545 (value!25680 List!3928)) (DedentValue!772 (value!25681 List!3928)) (NewLineValue!772 (value!25682 List!3928)) (IntegerValue!2316 (value!25683 (_ BitVec 32)) (text!5851 List!3928)) (IntegerValue!2317 (value!25684 Int) (text!5852 List!3928)) (Times!772) (Or!772) (Equal!772) (Minus!772) (Broken!3864 (value!25685 List!3928)) (And!772) (Div!772) (LessEqual!772) (Mod!772) (Concat!1746) (Not!772) (Plus!772) (SpaceValue!772 (value!25686 List!3928)) (IntegerValue!2318 (value!25687 Int) (text!5853 List!3928)) (StringLiteralValue!2317 (text!5854 List!3928)) (FloatLiteralValue!1545 (text!5855 List!3928)) (BytesLiteralValue!772 (value!25688 List!3928)) (CommentValue!1545 (value!25689 List!3928)) (StringLiteralValue!2318 (value!25690 List!3928)) (ErrorTokenValue!772 (msg!833 List!3928)) )
))
(declare-datatypes ((C!2870 0))(
  ( (C!2871 (val!1321 Int)) )
))
(declare-datatypes ((List!3929 0))(
  ( (Nil!3919) (Cons!3919 (h!9316 C!2870) (t!40039 List!3929)) )
))
(declare-datatypes ((IArray!2645 0))(
  ( (IArray!2646 (innerList!1380 List!3929)) )
))
(declare-datatypes ((Conc!1322 0))(
  ( (Node!1322 (left!3236 Conc!1322) (right!3566 Conc!1322) (csize!2874 Int) (cheight!1533 Int)) (Leaf!2037 (xs!3921 IArray!2645) (csize!2875 Int)) (Empty!1322) )
))
(declare-datatypes ((BalanceConc!2652 0))(
  ( (BalanceConc!2653 (c!54204 Conc!1322)) )
))
(declare-datatypes ((Regex!974 0))(
  ( (ElementMatch!974 (c!54205 C!2870)) (Concat!1747 (regOne!2460 Regex!974) (regTwo!2460 Regex!974)) (EmptyExpr!974) (Star!974 (reg!1303 Regex!974)) (EmptyLang!974) (Union!974 (regOne!2461 Regex!974) (regTwo!2461 Regex!974)) )
))
(declare-datatypes ((String!4942 0))(
  ( (String!4943 (value!25691 String)) )
))
(declare-datatypes ((TokenValueInjection!1316 0))(
  ( (TokenValueInjection!1317 (toValue!1497 Int) (toChars!1356 Int)) )
))
(declare-datatypes ((Rule!1300 0))(
  ( (Rule!1301 (regex!750 Regex!974) (tag!966 String!4942) (isSeparator!750 Bool) (transformation!750 TokenValueInjection!1316)) )
))
(declare-datatypes ((Token!1244 0))(
  ( (Token!1245 (value!25692 TokenValue!772) (rule!1349 Rule!1300) (size!3142 Int) (originalCharacters!793 List!3929)) )
))
(declare-datatypes ((List!3930 0))(
  ( (Nil!3920) (Cons!3920 (h!9317 Token!1244) (t!40040 List!3930)) )
))
(declare-fun tokens!465 () List!3930)

(declare-fun ListPrimitiveSize!31 (List!3930) Int)

(assert (=> b!286009 (= e!177926 (< (ListPrimitiveSize!31 tokens!465) 0))))

(declare-fun b!286010 () Bool)

(declare-fun res!130710 () Bool)

(assert (=> b!286010 (=> (not res!130710) (not e!177926))))

(declare-datatypes ((List!3931 0))(
  ( (Nil!3921) (Cons!3921 (h!9318 Rule!1300) (t!40041 List!3931)) )
))
(declare-fun rules!1920 () List!3931)

(declare-fun sepAndNonSepRulesDisjointChars!339 (List!3931 List!3931) Bool)

(assert (=> b!286010 (= res!130710 (sepAndNonSepRulesDisjointChars!339 rules!1920 rules!1920))))

(declare-fun tp!104912 () Bool)

(declare-fun e!177919 () Bool)

(declare-fun e!177929 () Bool)

(declare-fun b!286011 () Bool)

(declare-fun inv!4847 (String!4942) Bool)

(declare-fun inv!4850 (TokenValueInjection!1316) Bool)

(assert (=> b!286011 (= e!177919 (and tp!104912 (inv!4847 (tag!966 (h!9318 rules!1920))) (inv!4850 (transformation!750 (h!9318 rules!1920))) e!177929))))

(declare-fun b!286012 () Bool)

(declare-fun e!177915 () Bool)

(declare-fun tp!104908 () Bool)

(assert (=> b!286012 (= e!177915 (and e!177919 tp!104908))))

(declare-fun res!130711 () Bool)

(assert (=> start!31036 (=> (not res!130711) (not e!177926))))

(declare-datatypes ((LexerInterface!636 0))(
  ( (LexerInterfaceExt!633 (__x!3032 Int)) (Lexer!634) )
))
(declare-fun thiss!17480 () LexerInterface!636)

(assert (=> start!31036 (= res!130711 (is-Lexer!634 thiss!17480))))

(assert (=> start!31036 e!177926))

(assert (=> start!31036 true))

(assert (=> start!31036 e!177915))

(declare-fun e!177917 () Bool)

(assert (=> start!31036 e!177917))

(declare-fun separatorToken!170 () Token!1244)

(declare-fun e!177916 () Bool)

(declare-fun inv!4851 (Token!1244) Bool)

(assert (=> start!31036 (and (inv!4851 separatorToken!170) e!177916)))

(declare-fun e!177922 () Bool)

(assert (=> b!286013 (= e!177922 (and tp!104905 tp!104907))))

(assert (=> b!286014 (= e!177929 (and tp!104914 tp!104904))))

(declare-fun b!286015 () Bool)

(declare-fun res!130708 () Bool)

(assert (=> b!286015 (=> (not res!130708) (not e!177926))))

(assert (=> b!286015 (= res!130708 (isSeparator!750 (rule!1349 separatorToken!170)))))

(declare-fun b!286016 () Bool)

(declare-fun tp!104909 () Bool)

(declare-fun e!177923 () Bool)

(assert (=> b!286016 (= e!177923 (and tp!104909 (inv!4847 (tag!966 (rule!1349 (h!9317 tokens!465)))) (inv!4850 (transformation!750 (rule!1349 (h!9317 tokens!465)))) e!177922))))

(declare-fun b!286017 () Bool)

(declare-fun res!130707 () Bool)

(assert (=> b!286017 (=> (not res!130707) (not e!177926))))

(declare-fun rulesProduceIndividualToken!385 (LexerInterface!636 List!3931 Token!1244) Bool)

(assert (=> b!286017 (= res!130707 (rulesProduceIndividualToken!385 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun e!177925 () Bool)

(assert (=> b!286018 (= e!177925 (and tp!104906 tp!104911))))

(declare-fun tp!104910 () Bool)

(declare-fun b!286019 () Bool)

(declare-fun e!177928 () Bool)

(declare-fun inv!21 (TokenValue!772) Bool)

(assert (=> b!286019 (= e!177928 (and (inv!21 (value!25692 (h!9317 tokens!465))) e!177923 tp!104910))))

(declare-fun b!286020 () Bool)

(declare-fun res!130709 () Bool)

(assert (=> b!286020 (=> (not res!130709) (not e!177926))))

(declare-fun isEmpty!2589 (List!3931) Bool)

(assert (=> b!286020 (= res!130709 (not (isEmpty!2589 rules!1920)))))

(declare-fun tp!104915 () Bool)

(declare-fun e!177918 () Bool)

(declare-fun b!286021 () Bool)

(assert (=> b!286021 (= e!177918 (and tp!104915 (inv!4847 (tag!966 (rule!1349 separatorToken!170))) (inv!4850 (transformation!750 (rule!1349 separatorToken!170))) e!177925))))

(declare-fun b!286022 () Bool)

(declare-fun tp!104916 () Bool)

(assert (=> b!286022 (= e!177917 (and (inv!4851 (h!9317 tokens!465)) e!177928 tp!104916))))

(declare-fun b!286023 () Bool)

(declare-fun res!130705 () Bool)

(assert (=> b!286023 (=> (not res!130705) (not e!177926))))

(declare-fun rulesInvariant!602 (LexerInterface!636 List!3931) Bool)

(assert (=> b!286023 (= res!130705 (rulesInvariant!602 thiss!17480 rules!1920))))

(declare-fun b!286024 () Bool)

(declare-fun res!130706 () Bool)

(assert (=> b!286024 (=> (not res!130706) (not e!177926))))

(declare-datatypes ((IArray!2647 0))(
  ( (IArray!2648 (innerList!1381 List!3930)) )
))
(declare-datatypes ((Conc!1323 0))(
  ( (Node!1323 (left!3237 Conc!1323) (right!3567 Conc!1323) (csize!2876 Int) (cheight!1534 Int)) (Leaf!2038 (xs!3922 IArray!2647) (csize!2877 Int)) (Empty!1323) )
))
(declare-datatypes ((BalanceConc!2654 0))(
  ( (BalanceConc!2655 (c!54206 Conc!1323)) )
))
(declare-fun rulesProduceEachTokenIndividually!428 (LexerInterface!636 List!3931 BalanceConc!2654) Bool)

(declare-fun seqFromList!867 (List!3930) BalanceConc!2654)

(assert (=> b!286024 (= res!130706 (rulesProduceEachTokenIndividually!428 thiss!17480 rules!1920 (seqFromList!867 tokens!465)))))

(declare-fun b!286025 () Bool)

(declare-fun res!130704 () Bool)

(assert (=> b!286025 (=> (not res!130704) (not e!177926))))

(declare-fun lambda!9779 () Int)

(declare-fun forall!1007 (List!3930 Int) Bool)

(assert (=> b!286025 (= res!130704 (forall!1007 tokens!465 lambda!9779))))

(declare-fun b!286026 () Bool)

(declare-fun tp!104913 () Bool)

(assert (=> b!286026 (= e!177916 (and (inv!21 (value!25692 separatorToken!170)) e!177918 tp!104913))))

(assert (= (and start!31036 res!130711) b!286020))

(assert (= (and b!286020 res!130709) b!286023))

(assert (= (and b!286023 res!130705) b!286024))

(assert (= (and b!286024 res!130706) b!286017))

(assert (= (and b!286017 res!130707) b!286015))

(assert (= (and b!286015 res!130708) b!286025))

(assert (= (and b!286025 res!130704) b!286010))

(assert (= (and b!286010 res!130710) b!286009))

(assert (= b!286011 b!286014))

(assert (= b!286012 b!286011))

(assert (= (and start!31036 (is-Cons!3921 rules!1920)) b!286012))

(assert (= b!286016 b!286013))

(assert (= b!286019 b!286016))

(assert (= b!286022 b!286019))

(assert (= (and start!31036 (is-Cons!3920 tokens!465)) b!286022))

(assert (= b!286021 b!286018))

(assert (= b!286026 b!286021))

(assert (= start!31036 b!286026))

(declare-fun m!370271 () Bool)

(assert (=> b!286016 m!370271))

(declare-fun m!370273 () Bool)

(assert (=> b!286016 m!370273))

(declare-fun m!370275 () Bool)

(assert (=> b!286020 m!370275))

(declare-fun m!370277 () Bool)

(assert (=> b!286021 m!370277))

(declare-fun m!370279 () Bool)

(assert (=> b!286021 m!370279))

(declare-fun m!370281 () Bool)

(assert (=> b!286026 m!370281))

(declare-fun m!370283 () Bool)

(assert (=> b!286022 m!370283))

(declare-fun m!370285 () Bool)

(assert (=> b!286009 m!370285))

(declare-fun m!370287 () Bool)

(assert (=> b!286023 m!370287))

(declare-fun m!370289 () Bool)

(assert (=> b!286019 m!370289))

(declare-fun m!370291 () Bool)

(assert (=> b!286024 m!370291))

(assert (=> b!286024 m!370291))

(declare-fun m!370293 () Bool)

(assert (=> b!286024 m!370293))

(declare-fun m!370295 () Bool)

(assert (=> b!286010 m!370295))

(declare-fun m!370297 () Bool)

(assert (=> b!286011 m!370297))

(declare-fun m!370299 () Bool)

(assert (=> b!286011 m!370299))

(declare-fun m!370301 () Bool)

(assert (=> start!31036 m!370301))

(declare-fun m!370303 () Bool)

(assert (=> b!286017 m!370303))

(declare-fun m!370305 () Bool)

(assert (=> b!286025 m!370305))

(push 1)

(assert (not b!286012))

(assert (not b!286021))

(assert (not b!286009))

(assert (not b!286022))

(assert (not b!286023))

(assert (not b!286019))

(assert (not b!286026))

(assert (not b!286010))

(assert (not b_next!10441))

(assert b_and!23027)

(assert (not b!286011))

(assert (not b_next!10437))

(assert (not b!286025))

(assert b_and!23031)

(assert (not b_next!10447))

(assert b_and!23029)

(assert b_and!23023)

(assert (not b_next!10443))

(assert (not b_next!10439))

(assert (not start!31036))

(assert (not b!286024))

(assert b_and!23021)

(assert (not b_next!10445))

(assert (not b!286017))

(assert (not b!286020))

(assert b_and!23025)

(assert (not b!286016))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!10439))

(assert b_and!23021)

(assert (not b_next!10441))

(assert b_and!23027)

(assert (not b_next!10445))

(assert (not b_next!10437))

(assert b_and!23031)

(assert (not b_next!10447))

(assert b_and!23029)

(assert b_and!23023)

(assert b_and!23025)

(assert (not b_next!10443))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!84739 () Bool)

(assert (=> d!84739 (= (inv!4847 (tag!966 (h!9318 rules!1920))) (= (mod (str.len (value!25691 (tag!966 (h!9318 rules!1920)))) 2) 0))))

(assert (=> b!286011 d!84739))

(declare-fun d!84741 () Bool)

(declare-fun res!130744 () Bool)

(declare-fun e!177983 () Bool)

(assert (=> d!84741 (=> (not res!130744) (not e!177983))))

(declare-fun semiInverseModEq!274 (Int Int) Bool)

(assert (=> d!84741 (= res!130744 (semiInverseModEq!274 (toChars!1356 (transformation!750 (h!9318 rules!1920))) (toValue!1497 (transformation!750 (h!9318 rules!1920)))))))

(assert (=> d!84741 (= (inv!4850 (transformation!750 (h!9318 rules!1920))) e!177983)))

(declare-fun b!286083 () Bool)

(declare-fun equivClasses!257 (Int Int) Bool)

(assert (=> b!286083 (= e!177983 (equivClasses!257 (toChars!1356 (transformation!750 (h!9318 rules!1920))) (toValue!1497 (transformation!750 (h!9318 rules!1920)))))))

(assert (= (and d!84741 res!130744) b!286083))

(declare-fun m!370343 () Bool)

(assert (=> d!84741 m!370343))

(declare-fun m!370345 () Bool)

(assert (=> b!286083 m!370345))

(assert (=> b!286011 d!84741))

(declare-fun d!84745 () Bool)

(declare-fun res!130750 () Bool)

(declare-fun e!177987 () Bool)

(assert (=> d!84745 (=> (not res!130750) (not e!177987))))

(declare-fun isEmpty!2591 (List!3929) Bool)

(assert (=> d!84745 (= res!130750 (not (isEmpty!2591 (originalCharacters!793 (h!9317 tokens!465)))))))

(assert (=> d!84745 (= (inv!4851 (h!9317 tokens!465)) e!177987)))

(declare-fun b!286091 () Bool)

(declare-fun res!130751 () Bool)

(assert (=> b!286091 (=> (not res!130751) (not e!177987))))

(declare-fun list!1634 (BalanceConc!2652) List!3929)

(declare-fun dynLambda!2066 (Int TokenValue!772) BalanceConc!2652)

(assert (=> b!286091 (= res!130751 (= (originalCharacters!793 (h!9317 tokens!465)) (list!1634 (dynLambda!2066 (toChars!1356 (transformation!750 (rule!1349 (h!9317 tokens!465)))) (value!25692 (h!9317 tokens!465))))))))

(declare-fun b!286092 () Bool)

(declare-fun size!3144 (List!3929) Int)

(assert (=> b!286092 (= e!177987 (= (size!3142 (h!9317 tokens!465)) (size!3144 (originalCharacters!793 (h!9317 tokens!465)))))))

(assert (= (and d!84745 res!130750) b!286091))

(assert (= (and b!286091 res!130751) b!286092))

(declare-fun b_lambda!9447 () Bool)

(assert (=> (not b_lambda!9447) (not b!286091)))

(declare-fun t!40047 () Bool)

(declare-fun tb!16541 () Bool)

(assert (=> (and b!286013 (= (toChars!1356 (transformation!750 (rule!1349 (h!9317 tokens!465)))) (toChars!1356 (transformation!750 (rule!1349 (h!9317 tokens!465))))) t!40047) tb!16541))

(declare-fun b!286099 () Bool)

(declare-fun e!177992 () Bool)

(declare-fun tp!104958 () Bool)

(declare-fun inv!4854 (Conc!1322) Bool)

(assert (=> b!286099 (= e!177992 (and (inv!4854 (c!54204 (dynLambda!2066 (toChars!1356 (transformation!750 (rule!1349 (h!9317 tokens!465)))) (value!25692 (h!9317 tokens!465))))) tp!104958))))

(declare-fun result!20320 () Bool)

(declare-fun inv!4855 (BalanceConc!2652) Bool)

(assert (=> tb!16541 (= result!20320 (and (inv!4855 (dynLambda!2066 (toChars!1356 (transformation!750 (rule!1349 (h!9317 tokens!465)))) (value!25692 (h!9317 tokens!465)))) e!177992))))

(assert (= tb!16541 b!286099))

(declare-fun m!370351 () Bool)

(assert (=> b!286099 m!370351))

(declare-fun m!370353 () Bool)

(assert (=> tb!16541 m!370353))

(assert (=> b!286091 t!40047))

(declare-fun b_and!23045 () Bool)

(assert (= b_and!23023 (and (=> t!40047 result!20320) b_and!23045)))

(declare-fun t!40049 () Bool)

(declare-fun tb!16543 () Bool)

(assert (=> (and b!286014 (= (toChars!1356 (transformation!750 (h!9318 rules!1920))) (toChars!1356 (transformation!750 (rule!1349 (h!9317 tokens!465))))) t!40049) tb!16543))

(declare-fun result!20324 () Bool)

(assert (= result!20324 result!20320))

(assert (=> b!286091 t!40049))

(declare-fun b_and!23047 () Bool)

(assert (= b_and!23027 (and (=> t!40049 result!20324) b_and!23047)))

(declare-fun tb!16545 () Bool)

(declare-fun t!40051 () Bool)

(assert (=> (and b!286018 (= (toChars!1356 (transformation!750 (rule!1349 separatorToken!170))) (toChars!1356 (transformation!750 (rule!1349 (h!9317 tokens!465))))) t!40051) tb!16545))

(declare-fun result!20326 () Bool)

(assert (= result!20326 result!20320))

(assert (=> b!286091 t!40051))

(declare-fun b_and!23049 () Bool)

(assert (= b_and!23031 (and (=> t!40051 result!20326) b_and!23049)))

(declare-fun m!370355 () Bool)

(assert (=> d!84745 m!370355))

(declare-fun m!370357 () Bool)

(assert (=> b!286091 m!370357))

(assert (=> b!286091 m!370357))

(declare-fun m!370359 () Bool)

(assert (=> b!286091 m!370359))

(declare-fun m!370361 () Bool)

(assert (=> b!286092 m!370361))

(assert (=> b!286022 d!84745))

(declare-fun d!84751 () Bool)

(declare-fun res!130754 () Bool)

(declare-fun e!177993 () Bool)

(assert (=> d!84751 (=> (not res!130754) (not e!177993))))

(assert (=> d!84751 (= res!130754 (not (isEmpty!2591 (originalCharacters!793 separatorToken!170))))))

(assert (=> d!84751 (= (inv!4851 separatorToken!170) e!177993)))

(declare-fun b!286100 () Bool)

(declare-fun res!130755 () Bool)

(assert (=> b!286100 (=> (not res!130755) (not e!177993))))

(assert (=> b!286100 (= res!130755 (= (originalCharacters!793 separatorToken!170) (list!1634 (dynLambda!2066 (toChars!1356 (transformation!750 (rule!1349 separatorToken!170))) (value!25692 separatorToken!170)))))))

(declare-fun b!286101 () Bool)

(assert (=> b!286101 (= e!177993 (= (size!3142 separatorToken!170) (size!3144 (originalCharacters!793 separatorToken!170))))))

(assert (= (and d!84751 res!130754) b!286100))

(assert (= (and b!286100 res!130755) b!286101))

(declare-fun b_lambda!9449 () Bool)

(assert (=> (not b_lambda!9449) (not b!286100)))

(declare-fun tb!16547 () Bool)

(declare-fun t!40053 () Bool)

(assert (=> (and b!286013 (= (toChars!1356 (transformation!750 (rule!1349 (h!9317 tokens!465)))) (toChars!1356 (transformation!750 (rule!1349 separatorToken!170)))) t!40053) tb!16547))

(declare-fun b!286103 () Bool)

(declare-fun e!177995 () Bool)

(declare-fun tp!104959 () Bool)

(assert (=> b!286103 (= e!177995 (and (inv!4854 (c!54204 (dynLambda!2066 (toChars!1356 (transformation!750 (rule!1349 separatorToken!170))) (value!25692 separatorToken!170)))) tp!104959))))

(declare-fun result!20328 () Bool)

(assert (=> tb!16547 (= result!20328 (and (inv!4855 (dynLambda!2066 (toChars!1356 (transformation!750 (rule!1349 separatorToken!170))) (value!25692 separatorToken!170))) e!177995))))

(assert (= tb!16547 b!286103))

(declare-fun m!370367 () Bool)

(assert (=> b!286103 m!370367))

(declare-fun m!370369 () Bool)

(assert (=> tb!16547 m!370369))

(assert (=> b!286100 t!40053))

(declare-fun b_and!23051 () Bool)

(assert (= b_and!23045 (and (=> t!40053 result!20328) b_and!23051)))

(declare-fun tb!16549 () Bool)

(declare-fun t!40055 () Bool)

(assert (=> (and b!286014 (= (toChars!1356 (transformation!750 (h!9318 rules!1920))) (toChars!1356 (transformation!750 (rule!1349 separatorToken!170)))) t!40055) tb!16549))

(declare-fun result!20330 () Bool)

(assert (= result!20330 result!20328))

(assert (=> b!286100 t!40055))

(declare-fun b_and!23053 () Bool)

(assert (= b_and!23047 (and (=> t!40055 result!20330) b_and!23053)))

(declare-fun t!40057 () Bool)

(declare-fun tb!16551 () Bool)

(assert (=> (and b!286018 (= (toChars!1356 (transformation!750 (rule!1349 separatorToken!170))) (toChars!1356 (transformation!750 (rule!1349 separatorToken!170)))) t!40057) tb!16551))

(declare-fun result!20332 () Bool)

(assert (= result!20332 result!20328))

(assert (=> b!286100 t!40057))

(declare-fun b_and!23055 () Bool)

(assert (= b_and!23049 (and (=> t!40057 result!20332) b_and!23055)))

(declare-fun m!370371 () Bool)

(assert (=> d!84751 m!370371))

(declare-fun m!370373 () Bool)

(assert (=> b!286100 m!370373))

(assert (=> b!286100 m!370373))

(declare-fun m!370375 () Bool)

(assert (=> b!286100 m!370375))

(declare-fun m!370377 () Bool)

(assert (=> b!286101 m!370377))

(assert (=> start!31036 d!84751))

(declare-fun d!84755 () Bool)

(declare-fun res!130761 () Bool)

(declare-fun e!178000 () Bool)

(assert (=> d!84755 (=> res!130761 e!178000)))

(assert (=> d!84755 (= res!130761 (not (is-Cons!3921 rules!1920)))))

(assert (=> d!84755 (= (sepAndNonSepRulesDisjointChars!339 rules!1920 rules!1920) e!178000)))

(declare-fun b!286108 () Bool)

(declare-fun e!178001 () Bool)

(assert (=> b!286108 (= e!178000 e!178001)))

(declare-fun res!130762 () Bool)

(assert (=> b!286108 (=> (not res!130762) (not e!178001))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!132 (Rule!1300 List!3931) Bool)

(assert (=> b!286108 (= res!130762 (ruleDisjointCharsFromAllFromOtherType!132 (h!9318 rules!1920) rules!1920))))

(declare-fun b!286109 () Bool)

(assert (=> b!286109 (= e!178001 (sepAndNonSepRulesDisjointChars!339 rules!1920 (t!40041 rules!1920)))))

(assert (= (and d!84755 (not res!130761)) b!286108))

(assert (= (and b!286108 res!130762) b!286109))

(declare-fun m!370379 () Bool)

(assert (=> b!286108 m!370379))

(declare-fun m!370381 () Bool)

(assert (=> b!286109 m!370381))

(assert (=> b!286010 d!84755))

(declare-fun d!84757 () Bool)

(assert (=> d!84757 (= (inv!4847 (tag!966 (rule!1349 separatorToken!170))) (= (mod (str.len (value!25691 (tag!966 (rule!1349 separatorToken!170)))) 2) 0))))

(assert (=> b!286021 d!84757))

(declare-fun d!84759 () Bool)

(declare-fun res!130763 () Bool)

(declare-fun e!178002 () Bool)

(assert (=> d!84759 (=> (not res!130763) (not e!178002))))

(assert (=> d!84759 (= res!130763 (semiInverseModEq!274 (toChars!1356 (transformation!750 (rule!1349 separatorToken!170))) (toValue!1497 (transformation!750 (rule!1349 separatorToken!170)))))))

(assert (=> d!84759 (= (inv!4850 (transformation!750 (rule!1349 separatorToken!170))) e!178002)))

(declare-fun b!286110 () Bool)

(assert (=> b!286110 (= e!178002 (equivClasses!257 (toChars!1356 (transformation!750 (rule!1349 separatorToken!170))) (toValue!1497 (transformation!750 (rule!1349 separatorToken!170)))))))

(assert (= (and d!84759 res!130763) b!286110))

(declare-fun m!370383 () Bool)

(assert (=> d!84759 m!370383))

(declare-fun m!370385 () Bool)

(assert (=> b!286110 m!370385))

(assert (=> b!286021 d!84759))

(declare-fun d!84761 () Bool)

(declare-fun res!130768 () Bool)

(declare-fun e!178007 () Bool)

(assert (=> d!84761 (=> res!130768 e!178007)))

(assert (=> d!84761 (= res!130768 (is-Nil!3920 tokens!465))))

(assert (=> d!84761 (= (forall!1007 tokens!465 lambda!9779) e!178007)))

(declare-fun b!286115 () Bool)

(declare-fun e!178008 () Bool)

(assert (=> b!286115 (= e!178007 e!178008)))

(declare-fun res!130769 () Bool)

(assert (=> b!286115 (=> (not res!130769) (not e!178008))))

(declare-fun dynLambda!2067 (Int Token!1244) Bool)

(assert (=> b!286115 (= res!130769 (dynLambda!2067 lambda!9779 (h!9317 tokens!465)))))

(declare-fun b!286116 () Bool)

(assert (=> b!286116 (= e!178008 (forall!1007 (t!40040 tokens!465) lambda!9779))))

(assert (= (and d!84761 (not res!130768)) b!286115))

(assert (= (and b!286115 res!130769) b!286116))

(declare-fun b_lambda!9451 () Bool)

(assert (=> (not b_lambda!9451) (not b!286115)))

(declare-fun m!370387 () Bool)

(assert (=> b!286115 m!370387))

(declare-fun m!370389 () Bool)

(assert (=> b!286116 m!370389))

(assert (=> b!286025 d!84761))

(declare-fun d!84763 () Bool)

(declare-fun res!130772 () Bool)

(declare-fun e!178011 () Bool)

(assert (=> d!84763 (=> (not res!130772) (not e!178011))))

(declare-fun rulesValid!239 (LexerInterface!636 List!3931) Bool)

(assert (=> d!84763 (= res!130772 (rulesValid!239 thiss!17480 rules!1920))))

(assert (=> d!84763 (= (rulesInvariant!602 thiss!17480 rules!1920) e!178011)))

(declare-fun b!286119 () Bool)

(declare-datatypes ((List!3936 0))(
  ( (Nil!3926) (Cons!3926 (h!9323 String!4942) (t!40087 List!3936)) )
))
(declare-fun noDuplicateTag!239 (LexerInterface!636 List!3931 List!3936) Bool)

(assert (=> b!286119 (= e!178011 (noDuplicateTag!239 thiss!17480 rules!1920 Nil!3926))))

(assert (= (and d!84763 res!130772) b!286119))

(declare-fun m!370391 () Bool)

(assert (=> d!84763 m!370391))

(declare-fun m!370393 () Bool)

(assert (=> b!286119 m!370393))

(assert (=> b!286023 d!84763))

(declare-fun bs!32303 () Bool)

(declare-fun d!84765 () Bool)

(assert (= bs!32303 (and d!84765 b!286025)))

(declare-fun lambda!9787 () Int)

(assert (=> bs!32303 (not (= lambda!9787 lambda!9779))))

(declare-fun b!286133 () Bool)

(declare-fun e!178023 () Bool)

(assert (=> b!286133 (= e!178023 true)))

(declare-fun b!286132 () Bool)

(declare-fun e!178022 () Bool)

(assert (=> b!286132 (= e!178022 e!178023)))

(declare-fun b!286131 () Bool)

(declare-fun e!178021 () Bool)

(assert (=> b!286131 (= e!178021 e!178022)))

(assert (=> d!84765 e!178021))

(assert (= b!286132 b!286133))

(assert (= b!286131 b!286132))

(assert (= (and d!84765 (is-Cons!3921 rules!1920)) b!286131))

(declare-fun order!3083 () Int)

(declare-fun order!3085 () Int)

(declare-fun dynLambda!2068 (Int Int) Int)

(declare-fun dynLambda!2069 (Int Int) Int)

(assert (=> b!286133 (< (dynLambda!2068 order!3083 (toValue!1497 (transformation!750 (h!9318 rules!1920)))) (dynLambda!2069 order!3085 lambda!9787))))

(declare-fun order!3087 () Int)

(declare-fun dynLambda!2070 (Int Int) Int)

(assert (=> b!286133 (< (dynLambda!2070 order!3087 (toChars!1356 (transformation!750 (h!9318 rules!1920)))) (dynLambda!2069 order!3085 lambda!9787))))

(assert (=> d!84765 true))

(declare-fun e!178014 () Bool)

(assert (=> d!84765 e!178014))

(declare-fun res!130775 () Bool)

(assert (=> d!84765 (=> (not res!130775) (not e!178014))))

(declare-fun lt!120407 () Bool)

(declare-fun list!1635 (BalanceConc!2654) List!3930)

(assert (=> d!84765 (= res!130775 (= lt!120407 (forall!1007 (list!1635 (seqFromList!867 tokens!465)) lambda!9787)))))

(declare-fun forall!1009 (BalanceConc!2654 Int) Bool)

(assert (=> d!84765 (= lt!120407 (forall!1009 (seqFromList!867 tokens!465) lambda!9787))))

(assert (=> d!84765 (not (isEmpty!2589 rules!1920))))

(assert (=> d!84765 (= (rulesProduceEachTokenIndividually!428 thiss!17480 rules!1920 (seqFromList!867 tokens!465)) lt!120407)))

(declare-fun b!286122 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!244 (LexerInterface!636 List!3931 List!3930) Bool)

(assert (=> b!286122 (= e!178014 (= lt!120407 (rulesProduceEachTokenIndividuallyList!244 thiss!17480 rules!1920 (list!1635 (seqFromList!867 tokens!465)))))))

(assert (= (and d!84765 res!130775) b!286122))

(assert (=> d!84765 m!370291))

(declare-fun m!370395 () Bool)

(assert (=> d!84765 m!370395))

(assert (=> d!84765 m!370395))

(declare-fun m!370397 () Bool)

(assert (=> d!84765 m!370397))

(assert (=> d!84765 m!370291))

(declare-fun m!370399 () Bool)

(assert (=> d!84765 m!370399))

(assert (=> d!84765 m!370275))

(assert (=> b!286122 m!370291))

(assert (=> b!286122 m!370395))

(assert (=> b!286122 m!370395))

(declare-fun m!370401 () Bool)

(assert (=> b!286122 m!370401))

(assert (=> b!286024 d!84765))

(declare-fun d!84767 () Bool)

(declare-fun fromListB!350 (List!3930) BalanceConc!2654)

(assert (=> d!84767 (= (seqFromList!867 tokens!465) (fromListB!350 tokens!465))))

(declare-fun bs!32304 () Bool)

(assert (= bs!32304 d!84767))

(declare-fun m!370403 () Bool)

(assert (=> bs!32304 m!370403))

(assert (=> b!286024 d!84767))

(declare-fun d!84769 () Bool)

(declare-fun lt!120413 () Bool)

(declare-fun e!178029 () Bool)

(assert (=> d!84769 (= lt!120413 e!178029)))

(declare-fun res!130782 () Bool)

(assert (=> d!84769 (=> (not res!130782) (not e!178029))))

(declare-datatypes ((tuple2!4456 0))(
  ( (tuple2!4457 (_1!2444 BalanceConc!2654) (_2!2444 BalanceConc!2652)) )
))
(declare-fun lex!428 (LexerInterface!636 List!3931 BalanceConc!2652) tuple2!4456)

(declare-fun print!361 (LexerInterface!636 BalanceConc!2654) BalanceConc!2652)

(declare-fun singletonSeq!296 (Token!1244) BalanceConc!2654)

(assert (=> d!84769 (= res!130782 (= (list!1635 (_1!2444 (lex!428 thiss!17480 rules!1920 (print!361 thiss!17480 (singletonSeq!296 separatorToken!170))))) (list!1635 (singletonSeq!296 separatorToken!170))))))

(declare-fun e!178028 () Bool)

(assert (=> d!84769 (= lt!120413 e!178028)))

(declare-fun res!130783 () Bool)

(assert (=> d!84769 (=> (not res!130783) (not e!178028))))

(declare-fun lt!120412 () tuple2!4456)

(declare-fun size!3145 (BalanceConc!2654) Int)

(assert (=> d!84769 (= res!130783 (= (size!3145 (_1!2444 lt!120412)) 1))))

(assert (=> d!84769 (= lt!120412 (lex!428 thiss!17480 rules!1920 (print!361 thiss!17480 (singletonSeq!296 separatorToken!170))))))

(assert (=> d!84769 (not (isEmpty!2589 rules!1920))))

(assert (=> d!84769 (= (rulesProduceIndividualToken!385 thiss!17480 rules!1920 separatorToken!170) lt!120413)))

(declare-fun b!286142 () Bool)

(declare-fun res!130784 () Bool)

(assert (=> b!286142 (=> (not res!130784) (not e!178028))))

(declare-fun apply!833 (BalanceConc!2654 Int) Token!1244)

(assert (=> b!286142 (= res!130784 (= (apply!833 (_1!2444 lt!120412) 0) separatorToken!170))))

(declare-fun b!286143 () Bool)

(declare-fun isEmpty!2592 (BalanceConc!2652) Bool)

(assert (=> b!286143 (= e!178028 (isEmpty!2592 (_2!2444 lt!120412)))))

(declare-fun b!286144 () Bool)

(assert (=> b!286144 (= e!178029 (isEmpty!2592 (_2!2444 (lex!428 thiss!17480 rules!1920 (print!361 thiss!17480 (singletonSeq!296 separatorToken!170))))))))

(assert (= (and d!84769 res!130783) b!286142))

(assert (= (and b!286142 res!130784) b!286143))

(assert (= (and d!84769 res!130782) b!286144))

(declare-fun m!370405 () Bool)

(assert (=> d!84769 m!370405))

(assert (=> d!84769 m!370275))

(declare-fun m!370407 () Bool)

(assert (=> d!84769 m!370407))

(assert (=> d!84769 m!370405))

(declare-fun m!370409 () Bool)

(assert (=> d!84769 m!370409))

(declare-fun m!370411 () Bool)

(assert (=> d!84769 m!370411))

(assert (=> d!84769 m!370409))

(declare-fun m!370413 () Bool)

(assert (=> d!84769 m!370413))

(assert (=> d!84769 m!370405))

(declare-fun m!370415 () Bool)

(assert (=> d!84769 m!370415))

(declare-fun m!370417 () Bool)

(assert (=> b!286142 m!370417))

(declare-fun m!370419 () Bool)

(assert (=> b!286143 m!370419))

(assert (=> b!286144 m!370405))

(assert (=> b!286144 m!370405))

(assert (=> b!286144 m!370409))

(assert (=> b!286144 m!370409))

(assert (=> b!286144 m!370413))

(declare-fun m!370421 () Bool)

(assert (=> b!286144 m!370421))

(assert (=> b!286017 d!84769))

(declare-fun b!286155 () Bool)

(declare-fun e!178037 () Bool)

(declare-fun inv!17 (TokenValue!772) Bool)

(assert (=> b!286155 (= e!178037 (inv!17 (value!25692 separatorToken!170)))))

(declare-fun d!84771 () Bool)

(declare-fun c!54216 () Bool)

(assert (=> d!84771 (= c!54216 (is-IntegerValue!2316 (value!25692 separatorToken!170)))))

(declare-fun e!178036 () Bool)

(assert (=> d!84771 (= (inv!21 (value!25692 separatorToken!170)) e!178036)))

(declare-fun b!286156 () Bool)

(assert (=> b!286156 (= e!178036 e!178037)))

(declare-fun c!54215 () Bool)

(assert (=> b!286156 (= c!54215 (is-IntegerValue!2317 (value!25692 separatorToken!170)))))

(declare-fun b!286157 () Bool)

(declare-fun res!130787 () Bool)

(declare-fun e!178038 () Bool)

(assert (=> b!286157 (=> res!130787 e!178038)))

(assert (=> b!286157 (= res!130787 (not (is-IntegerValue!2318 (value!25692 separatorToken!170))))))

(assert (=> b!286157 (= e!178037 e!178038)))

(declare-fun b!286158 () Bool)

(declare-fun inv!15 (TokenValue!772) Bool)

(assert (=> b!286158 (= e!178038 (inv!15 (value!25692 separatorToken!170)))))

(declare-fun b!286159 () Bool)

(declare-fun inv!16 (TokenValue!772) Bool)

(assert (=> b!286159 (= e!178036 (inv!16 (value!25692 separatorToken!170)))))

(assert (= (and d!84771 c!54216) b!286159))

(assert (= (and d!84771 (not c!54216)) b!286156))

(assert (= (and b!286156 c!54215) b!286155))

(assert (= (and b!286156 (not c!54215)) b!286157))

(assert (= (and b!286157 (not res!130787)) b!286158))

(declare-fun m!370423 () Bool)

(assert (=> b!286155 m!370423))

(declare-fun m!370425 () Bool)

(assert (=> b!286158 m!370425))

(declare-fun m!370427 () Bool)

(assert (=> b!286159 m!370427))

(assert (=> b!286026 d!84771))

(declare-fun d!84773 () Bool)

(assert (=> d!84773 (= (inv!4847 (tag!966 (rule!1349 (h!9317 tokens!465)))) (= (mod (str.len (value!25691 (tag!966 (rule!1349 (h!9317 tokens!465))))) 2) 0))))

(assert (=> b!286016 d!84773))

(declare-fun d!84775 () Bool)

(declare-fun res!130788 () Bool)

(declare-fun e!178039 () Bool)

(assert (=> d!84775 (=> (not res!130788) (not e!178039))))

(assert (=> d!84775 (= res!130788 (semiInverseModEq!274 (toChars!1356 (transformation!750 (rule!1349 (h!9317 tokens!465)))) (toValue!1497 (transformation!750 (rule!1349 (h!9317 tokens!465))))))))

(assert (=> d!84775 (= (inv!4850 (transformation!750 (rule!1349 (h!9317 tokens!465)))) e!178039)))

(declare-fun b!286160 () Bool)

(assert (=> b!286160 (= e!178039 (equivClasses!257 (toChars!1356 (transformation!750 (rule!1349 (h!9317 tokens!465)))) (toValue!1497 (transformation!750 (rule!1349 (h!9317 tokens!465))))))))

(assert (= (and d!84775 res!130788) b!286160))

(declare-fun m!370429 () Bool)

(assert (=> d!84775 m!370429))

(declare-fun m!370431 () Bool)

(assert (=> b!286160 m!370431))

(assert (=> b!286016 d!84775))

(declare-fun b!286161 () Bool)

(declare-fun e!178041 () Bool)

(assert (=> b!286161 (= e!178041 (inv!17 (value!25692 (h!9317 tokens!465))))))

(declare-fun d!84777 () Bool)

(declare-fun c!54218 () Bool)

(assert (=> d!84777 (= c!54218 (is-IntegerValue!2316 (value!25692 (h!9317 tokens!465))))))

(declare-fun e!178040 () Bool)

(assert (=> d!84777 (= (inv!21 (value!25692 (h!9317 tokens!465))) e!178040)))

(declare-fun b!286162 () Bool)

(assert (=> b!286162 (= e!178040 e!178041)))

(declare-fun c!54217 () Bool)

(assert (=> b!286162 (= c!54217 (is-IntegerValue!2317 (value!25692 (h!9317 tokens!465))))))

(declare-fun b!286163 () Bool)

(declare-fun res!130789 () Bool)

(declare-fun e!178042 () Bool)

(assert (=> b!286163 (=> res!130789 e!178042)))

(assert (=> b!286163 (= res!130789 (not (is-IntegerValue!2318 (value!25692 (h!9317 tokens!465)))))))

(assert (=> b!286163 (= e!178041 e!178042)))

(declare-fun b!286164 () Bool)

(assert (=> b!286164 (= e!178042 (inv!15 (value!25692 (h!9317 tokens!465))))))

(declare-fun b!286165 () Bool)

(assert (=> b!286165 (= e!178040 (inv!16 (value!25692 (h!9317 tokens!465))))))

(assert (= (and d!84777 c!54218) b!286165))

(assert (= (and d!84777 (not c!54218)) b!286162))

(assert (= (and b!286162 c!54217) b!286161))

(assert (= (and b!286162 (not c!54217)) b!286163))

(assert (= (and b!286163 (not res!130789)) b!286164))

(declare-fun m!370433 () Bool)

(assert (=> b!286161 m!370433))

(declare-fun m!370435 () Bool)

(assert (=> b!286164 m!370435))

(declare-fun m!370437 () Bool)

(assert (=> b!286165 m!370437))

(assert (=> b!286019 d!84777))

(declare-fun d!84779 () Bool)

(declare-fun lt!120416 () Int)

(assert (=> d!84779 (>= lt!120416 0)))

(declare-fun e!178045 () Int)

(assert (=> d!84779 (= lt!120416 e!178045)))

(declare-fun c!54221 () Bool)

(assert (=> d!84779 (= c!54221 (is-Nil!3920 tokens!465))))

(assert (=> d!84779 (= (ListPrimitiveSize!31 tokens!465) lt!120416)))

(declare-fun b!286170 () Bool)

(assert (=> b!286170 (= e!178045 0)))

(declare-fun b!286171 () Bool)

(assert (=> b!286171 (= e!178045 (+ 1 (ListPrimitiveSize!31 (t!40040 tokens!465))))))

(assert (= (and d!84779 c!54221) b!286170))

(assert (= (and d!84779 (not c!54221)) b!286171))

(declare-fun m!370439 () Bool)

(assert (=> b!286171 m!370439))

(assert (=> b!286009 d!84779))

(declare-fun d!84781 () Bool)

(assert (=> d!84781 (= (isEmpty!2589 rules!1920) (is-Nil!3921 rules!1920))))

(assert (=> b!286020 d!84781))

(declare-fun b!286185 () Bool)

(declare-fun e!178048 () Bool)

(declare-fun tp!104972 () Bool)

(declare-fun tp!104970 () Bool)

(assert (=> b!286185 (= e!178048 (and tp!104972 tp!104970))))

(declare-fun b!286183 () Bool)

(declare-fun tp!104971 () Bool)

(declare-fun tp!104974 () Bool)

(assert (=> b!286183 (= e!178048 (and tp!104971 tp!104974))))

(assert (=> b!286011 (= tp!104912 e!178048)))

(declare-fun b!286184 () Bool)

(declare-fun tp!104973 () Bool)

(assert (=> b!286184 (= e!178048 tp!104973)))

(declare-fun b!286182 () Bool)

(declare-fun tp_is_empty!1845 () Bool)

(assert (=> b!286182 (= e!178048 tp_is_empty!1845)))

(assert (= (and b!286011 (is-ElementMatch!974 (regex!750 (h!9318 rules!1920)))) b!286182))

(assert (= (and b!286011 (is-Concat!1747 (regex!750 (h!9318 rules!1920)))) b!286183))

(assert (= (and b!286011 (is-Star!974 (regex!750 (h!9318 rules!1920)))) b!286184))

(assert (= (and b!286011 (is-Union!974 (regex!750 (h!9318 rules!1920)))) b!286185))

(declare-fun b!286199 () Bool)

(declare-fun b_free!10461 () Bool)

(declare-fun b_next!10461 () Bool)

(assert (=> b!286199 (= b_free!10461 (not b_next!10461))))

(declare-fun tp!104986 () Bool)

(declare-fun b_and!23057 () Bool)

(assert (=> b!286199 (= tp!104986 b_and!23057)))

(declare-fun b_free!10463 () Bool)

(declare-fun b_next!10463 () Bool)

(assert (=> b!286199 (= b_free!10463 (not b_next!10463))))

(declare-fun t!40066 () Bool)

(declare-fun tb!16553 () Bool)

(assert (=> (and b!286199 (= (toChars!1356 (transformation!750 (rule!1349 (h!9317 (t!40040 tokens!465))))) (toChars!1356 (transformation!750 (rule!1349 (h!9317 tokens!465))))) t!40066) tb!16553))

(declare-fun result!20338 () Bool)

(assert (= result!20338 result!20320))

(assert (=> b!286091 t!40066))

(declare-fun t!40068 () Bool)

(declare-fun tb!16555 () Bool)

(assert (=> (and b!286199 (= (toChars!1356 (transformation!750 (rule!1349 (h!9317 (t!40040 tokens!465))))) (toChars!1356 (transformation!750 (rule!1349 separatorToken!170)))) t!40068) tb!16555))

(declare-fun result!20340 () Bool)

(assert (= result!20340 result!20328))

(assert (=> b!286100 t!40068))

(declare-fun tp!104985 () Bool)

(declare-fun b_and!23059 () Bool)

(assert (=> b!286199 (= tp!104985 (and (=> t!40066 result!20338) (=> t!40068 result!20340) b_and!23059))))

(declare-fun e!178062 () Bool)

(assert (=> b!286022 (= tp!104916 e!178062)))

(declare-fun b!286198 () Bool)

(declare-fun tp!104987 () Bool)

(declare-fun e!178065 () Bool)

(declare-fun e!178061 () Bool)

(assert (=> b!286198 (= e!178065 (and tp!104987 (inv!4847 (tag!966 (rule!1349 (h!9317 (t!40040 tokens!465))))) (inv!4850 (transformation!750 (rule!1349 (h!9317 (t!40040 tokens!465))))) e!178061))))

(assert (=> b!286199 (= e!178061 (and tp!104986 tp!104985))))

(declare-fun tp!104988 () Bool)

(declare-fun e!178066 () Bool)

(declare-fun b!286197 () Bool)

(assert (=> b!286197 (= e!178066 (and (inv!21 (value!25692 (h!9317 (t!40040 tokens!465)))) e!178065 tp!104988))))

(declare-fun b!286196 () Bool)

(declare-fun tp!104989 () Bool)

(assert (=> b!286196 (= e!178062 (and (inv!4851 (h!9317 (t!40040 tokens!465))) e!178066 tp!104989))))

(assert (= b!286198 b!286199))

(assert (= b!286197 b!286198))

(assert (= b!286196 b!286197))

(assert (= (and b!286022 (is-Cons!3920 (t!40040 tokens!465))) b!286196))

(declare-fun m!370441 () Bool)

(assert (=> b!286198 m!370441))

(declare-fun m!370443 () Bool)

(assert (=> b!286198 m!370443))

(declare-fun m!370445 () Bool)

(assert (=> b!286197 m!370445))

(declare-fun m!370447 () Bool)

(assert (=> b!286196 m!370447))

(declare-fun b!286210 () Bool)

(declare-fun b_free!10465 () Bool)

(declare-fun b_next!10465 () Bool)

(assert (=> b!286210 (= b_free!10465 (not b_next!10465))))

(declare-fun tp!104998 () Bool)

(declare-fun b_and!23061 () Bool)

(assert (=> b!286210 (= tp!104998 b_and!23061)))

(declare-fun b_free!10467 () Bool)

(declare-fun b_next!10467 () Bool)

(assert (=> b!286210 (= b_free!10467 (not b_next!10467))))

(declare-fun t!40072 () Bool)

(declare-fun tb!16557 () Bool)

(assert (=> (and b!286210 (= (toChars!1356 (transformation!750 (h!9318 (t!40041 rules!1920)))) (toChars!1356 (transformation!750 (rule!1349 (h!9317 tokens!465))))) t!40072) tb!16557))

(declare-fun result!20344 () Bool)

(assert (= result!20344 result!20320))

(assert (=> b!286091 t!40072))

(declare-fun tb!16559 () Bool)

(declare-fun t!40074 () Bool)

(assert (=> (and b!286210 (= (toChars!1356 (transformation!750 (h!9318 (t!40041 rules!1920)))) (toChars!1356 (transformation!750 (rule!1349 separatorToken!170)))) t!40074) tb!16559))

(declare-fun result!20346 () Bool)

(assert (= result!20346 result!20328))

(assert (=> b!286100 t!40074))

(declare-fun b_and!23063 () Bool)

(declare-fun tp!105000 () Bool)

(assert (=> b!286210 (= tp!105000 (and (=> t!40072 result!20344) (=> t!40074 result!20346) b_and!23063))))

(declare-fun e!178077 () Bool)

(assert (=> b!286210 (= e!178077 (and tp!104998 tp!105000))))

(declare-fun e!178078 () Bool)

(declare-fun b!286209 () Bool)

(declare-fun tp!104999 () Bool)

(assert (=> b!286209 (= e!178078 (and tp!104999 (inv!4847 (tag!966 (h!9318 (t!40041 rules!1920)))) (inv!4850 (transformation!750 (h!9318 (t!40041 rules!1920)))) e!178077))))

(declare-fun b!286208 () Bool)

(declare-fun e!178079 () Bool)

(declare-fun tp!105001 () Bool)

(assert (=> b!286208 (= e!178079 (and e!178078 tp!105001))))

(assert (=> b!286012 (= tp!104908 e!178079)))

(assert (= b!286209 b!286210))

(assert (= b!286208 b!286209))

(assert (= (and b!286012 (is-Cons!3921 (t!40041 rules!1920))) b!286208))

(declare-fun m!370449 () Bool)

(assert (=> b!286209 m!370449))

(declare-fun m!370451 () Bool)

(assert (=> b!286209 m!370451))

(declare-fun b!286217 () Bool)

(declare-fun e!178083 () Bool)

(declare-fun tp!105004 () Bool)

(assert (=> b!286217 (= e!178083 (and tp_is_empty!1845 tp!105004))))

(assert (=> b!286026 (= tp!104913 e!178083)))

(assert (= (and b!286026 (is-Cons!3919 (originalCharacters!793 separatorToken!170))) b!286217))

(declare-fun b!286221 () Bool)

(declare-fun e!178084 () Bool)

(declare-fun tp!105007 () Bool)

(declare-fun tp!105005 () Bool)

(assert (=> b!286221 (= e!178084 (and tp!105007 tp!105005))))

(declare-fun b!286219 () Bool)

(declare-fun tp!105006 () Bool)

(declare-fun tp!105009 () Bool)

(assert (=> b!286219 (= e!178084 (and tp!105006 tp!105009))))

(assert (=> b!286021 (= tp!104915 e!178084)))

(declare-fun b!286220 () Bool)

(declare-fun tp!105008 () Bool)

(assert (=> b!286220 (= e!178084 tp!105008)))

(declare-fun b!286218 () Bool)

(assert (=> b!286218 (= e!178084 tp_is_empty!1845)))

(assert (= (and b!286021 (is-ElementMatch!974 (regex!750 (rule!1349 separatorToken!170)))) b!286218))

(assert (= (and b!286021 (is-Concat!1747 (regex!750 (rule!1349 separatorToken!170)))) b!286219))

(assert (= (and b!286021 (is-Star!974 (regex!750 (rule!1349 separatorToken!170)))) b!286220))

(assert (= (and b!286021 (is-Union!974 (regex!750 (rule!1349 separatorToken!170)))) b!286221))

(declare-fun b!286225 () Bool)

(declare-fun e!178085 () Bool)

(declare-fun tp!105012 () Bool)

(declare-fun tp!105010 () Bool)

(assert (=> b!286225 (= e!178085 (and tp!105012 tp!105010))))

(declare-fun b!286223 () Bool)

(declare-fun tp!105011 () Bool)

(declare-fun tp!105014 () Bool)

(assert (=> b!286223 (= e!178085 (and tp!105011 tp!105014))))

(assert (=> b!286016 (= tp!104909 e!178085)))

(declare-fun b!286224 () Bool)

(declare-fun tp!105013 () Bool)

(assert (=> b!286224 (= e!178085 tp!105013)))

(declare-fun b!286222 () Bool)

(assert (=> b!286222 (= e!178085 tp_is_empty!1845)))

(assert (= (and b!286016 (is-ElementMatch!974 (regex!750 (rule!1349 (h!9317 tokens!465))))) b!286222))

(assert (= (and b!286016 (is-Concat!1747 (regex!750 (rule!1349 (h!9317 tokens!465))))) b!286223))

(assert (= (and b!286016 (is-Star!974 (regex!750 (rule!1349 (h!9317 tokens!465))))) b!286224))

(assert (= (and b!286016 (is-Union!974 (regex!750 (rule!1349 (h!9317 tokens!465))))) b!286225))

(declare-fun b!286226 () Bool)

(declare-fun e!178086 () Bool)

(declare-fun tp!105015 () Bool)

(assert (=> b!286226 (= e!178086 (and tp_is_empty!1845 tp!105015))))

(assert (=> b!286019 (= tp!104910 e!178086)))

(assert (= (and b!286019 (is-Cons!3919 (originalCharacters!793 (h!9317 tokens!465)))) b!286226))

(declare-fun b_lambda!9453 () Bool)

(assert (= b_lambda!9451 (or b!286025 b_lambda!9453)))

(declare-fun bs!32305 () Bool)

(declare-fun d!84783 () Bool)

(assert (= bs!32305 (and d!84783 b!286025)))

(assert (=> bs!32305 (= (dynLambda!2067 lambda!9779 (h!9317 tokens!465)) (not (isSeparator!750 (rule!1349 (h!9317 tokens!465)))))))

(assert (=> b!286115 d!84783))

(declare-fun b_lambda!9455 () Bool)

(assert (= b_lambda!9449 (or (and b!286210 b_free!10467 (= (toChars!1356 (transformation!750 (h!9318 (t!40041 rules!1920)))) (toChars!1356 (transformation!750 (rule!1349 separatorToken!170))))) (and b!286014 b_free!10443 (= (toChars!1356 (transformation!750 (h!9318 rules!1920))) (toChars!1356 (transformation!750 (rule!1349 separatorToken!170))))) (and b!286199 b_free!10463 (= (toChars!1356 (transformation!750 (rule!1349 (h!9317 (t!40040 tokens!465))))) (toChars!1356 (transformation!750 (rule!1349 separatorToken!170))))) (and b!286018 b_free!10447) (and b!286013 b_free!10439 (= (toChars!1356 (transformation!750 (rule!1349 (h!9317 tokens!465)))) (toChars!1356 (transformation!750 (rule!1349 separatorToken!170))))) b_lambda!9455)))

(declare-fun b_lambda!9457 () Bool)

(assert (= b_lambda!9447 (or (and b!286014 b_free!10443 (= (toChars!1356 (transformation!750 (h!9318 rules!1920))) (toChars!1356 (transformation!750 (rule!1349 (h!9317 tokens!465)))))) (and b!286210 b_free!10467 (= (toChars!1356 (transformation!750 (h!9318 (t!40041 rules!1920)))) (toChars!1356 (transformation!750 (rule!1349 (h!9317 tokens!465)))))) (and b!286013 b_free!10439) (and b!286018 b_free!10447 (= (toChars!1356 (transformation!750 (rule!1349 separatorToken!170))) (toChars!1356 (transformation!750 (rule!1349 (h!9317 tokens!465)))))) (and b!286199 b_free!10463 (= (toChars!1356 (transformation!750 (rule!1349 (h!9317 (t!40040 tokens!465))))) (toChars!1356 (transformation!750 (rule!1349 (h!9317 tokens!465)))))) b_lambda!9457)))

(push 1)

(assert (not b!286131))

(assert (not b!286143))

(assert (not b!286219))

(assert (not b!286122))

(assert (not b!286184))

(assert (not b_next!10445))

(assert (not d!84751))

(assert (not b!286103))

(assert b_and!23029)

(assert b_and!23063)

(assert (not d!84765))

(assert (not b_next!10463))

(assert (not b_lambda!9457))

(assert tp_is_empty!1845)

(assert (not b!286223))

(assert (not b!286116))

(assert (not b_next!10439))

(assert (not b_lambda!9455))

(assert (not b!286100))

(assert b_and!23059)

(assert (not tb!16541))

(assert (not b!286217))

(assert (not b_lambda!9453))

(assert (not tb!16547))

(assert (not b!286164))

(assert (not b!286225))

(assert (not b!286083))

(assert b_and!23051)

(assert b_and!23057)

(assert (not d!84775))

(assert b_and!23061)

(assert (not b!286108))

(assert b_and!23021)

(assert (not b!286224))

(assert (not b!286142))

(assert (not b!286183))

(assert (not b_next!10441))

(assert (not b!286198))

(assert (not b!286226))

(assert (not b!286161))

(assert (not b!286196))

(assert (not b_next!10467))

(assert (not b!286119))

(assert (not d!84767))

(assert (not b_next!10437))

(assert (not b!286091))

(assert (not b!286197))

(assert b_and!23055)

(assert (not b_next!10465))

(assert (not b!286220))

(assert (not b!286099))

(assert (not d!84745))

(assert (not d!84741))

(assert (not b!286155))

(assert (not b!286101))

(assert (not d!84769))

(assert (not d!84763))

(assert (not b!286209))

(assert (not b_next!10461))

(assert (not b!286158))

(assert (not d!84759))

(assert (not b_next!10447))

(assert (not b!286110))

(assert (not b!286221))

(assert (not b!286165))

(assert (not b!286109))

(assert (not b!286208))

(assert (not b!286171))

(assert (not b!286144))

(assert b_and!23053)

(assert b_and!23025)

(assert (not b!286092))

(assert (not b!286159))

(assert (not b!286160))

(assert (not b!286185))

(assert (not b_next!10443))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!10439))

(assert b_and!23059)

(assert b_and!23051)

(assert b_and!23057)

(assert (not b_next!10441))

(assert (not b_next!10445))

(assert (not b_next!10467))

(assert (not b_next!10437))

(assert b_and!23055)

(assert (not b_next!10465))

(assert (not b_next!10461))

(assert (not b_next!10447))

(assert b_and!23029)

(assert (not b_next!10443))

(assert b_and!23063)

(assert (not b_next!10463))

(assert b_and!23061)

(assert b_and!23021)

(assert b_and!23053)

(assert b_and!23025)

(check-sat)

(pop 1)

