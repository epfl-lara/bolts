; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!340786 () Bool)

(assert start!340786)

(declare-fun b!3645910 () Bool)

(declare-fun b_free!95697 () Bool)

(declare-fun b_next!96401 () Bool)

(assert (=> b!3645910 (= b_free!95697 (not b_next!96401))))

(declare-fun tp!1111792 () Bool)

(declare-fun b_and!269243 () Bool)

(assert (=> b!3645910 (= tp!1111792 b_and!269243)))

(declare-fun b_free!95699 () Bool)

(declare-fun b_next!96403 () Bool)

(assert (=> b!3645910 (= b_free!95699 (not b_next!96403))))

(declare-fun tp!1111790 () Bool)

(declare-fun b_and!269245 () Bool)

(assert (=> b!3645910 (= tp!1111790 b_and!269245)))

(declare-fun b!3645905 () Bool)

(declare-fun b_free!95701 () Bool)

(declare-fun b_next!96405 () Bool)

(assert (=> b!3645905 (= b_free!95701 (not b_next!96405))))

(declare-fun tp!1111785 () Bool)

(declare-fun b_and!269247 () Bool)

(assert (=> b!3645905 (= tp!1111785 b_and!269247)))

(declare-fun b_free!95703 () Bool)

(declare-fun b_next!96407 () Bool)

(assert (=> b!3645905 (= b_free!95703 (not b_next!96407))))

(declare-fun tp!1111786 () Bool)

(declare-fun b_and!269249 () Bool)

(assert (=> b!3645905 (= tp!1111786 b_and!269249)))

(declare-fun b!3645906 () Bool)

(declare-fun b_free!95705 () Bool)

(declare-fun b_next!96409 () Bool)

(assert (=> b!3645906 (= b_free!95705 (not b_next!96409))))

(declare-fun tp!1111780 () Bool)

(declare-fun b_and!269251 () Bool)

(assert (=> b!3645906 (= tp!1111780 b_and!269251)))

(declare-fun b_free!95707 () Bool)

(declare-fun b_next!96411 () Bool)

(assert (=> b!3645906 (= b_free!95707 (not b_next!96411))))

(declare-fun tp!1111782 () Bool)

(declare-fun b_and!269253 () Bool)

(assert (=> b!3645906 (= tp!1111782 b_and!269253)))

(declare-fun b!3645924 () Bool)

(declare-fun b_free!95709 () Bool)

(declare-fun b_next!96413 () Bool)

(assert (=> b!3645924 (= b_free!95709 (not b_next!96413))))

(declare-fun tp!1111794 () Bool)

(declare-fun b_and!269255 () Bool)

(assert (=> b!3645924 (= tp!1111794 b_and!269255)))

(declare-fun b_free!95711 () Bool)

(declare-fun b_next!96415 () Bool)

(assert (=> b!3645924 (= b_free!95711 (not b_next!96415))))

(declare-fun tp!1111783 () Bool)

(declare-fun b_and!269257 () Bool)

(assert (=> b!3645924 (= tp!1111783 b_and!269257)))

(declare-fun b!3645904 () Bool)

(declare-fun e!2257051 () Bool)

(declare-fun tp_is_empty!18093 () Bool)

(declare-fun tp!1111787 () Bool)

(assert (=> b!3645904 (= e!2257051 (and tp_is_empty!18093 tp!1111787))))

(declare-fun e!2257061 () Bool)

(assert (=> b!3645905 (= e!2257061 (and tp!1111785 tp!1111786))))

(declare-fun e!2257043 () Bool)

(assert (=> b!3645906 (= e!2257043 (and tp!1111780 tp!1111782))))

(declare-fun b!3645907 () Bool)

(declare-fun e!2257060 () Bool)

(assert (=> b!3645907 (= e!2257060 true)))

(assert (=> b!3645907 false))

(declare-datatypes ((List!38553 0))(
  ( (Nil!38429) (Cons!38429 (h!43849 (_ BitVec 16)) (t!297056 List!38553)) )
))
(declare-datatypes ((TokenValue!5976 0))(
  ( (FloatLiteralValue!11952 (text!42277 List!38553)) (TokenValueExt!5975 (__x!24169 Int)) (Broken!29880 (value!184195 List!38553)) (Object!6099) (End!5976) (Def!5976) (Underscore!5976) (Match!5976) (Else!5976) (Error!5976) (Case!5976) (If!5976) (Extends!5976) (Abstract!5976) (Class!5976) (Val!5976) (DelimiterValue!11952 (del!6036 List!38553)) (KeywordValue!5982 (value!184196 List!38553)) (CommentValue!11952 (value!184197 List!38553)) (WhitespaceValue!11952 (value!184198 List!38553)) (IndentationValue!5976 (value!184199 List!38553)) (String!43213) (Int32!5976) (Broken!29881 (value!184200 List!38553)) (Boolean!5977) (Unit!55311) (OperatorValue!5979 (op!6036 List!38553)) (IdentifierValue!11952 (value!184201 List!38553)) (IdentifierValue!11953 (value!184202 List!38553)) (WhitespaceValue!11953 (value!184203 List!38553)) (True!11952) (False!11952) (Broken!29882 (value!184204 List!38553)) (Broken!29883 (value!184205 List!38553)) (True!11953) (RightBrace!5976) (RightBracket!5976) (Colon!5976) (Null!5976) (Comma!5976) (LeftBracket!5976) (False!11953) (LeftBrace!5976) (ImaginaryLiteralValue!5976 (text!42278 List!38553)) (StringLiteralValue!17928 (value!184206 List!38553)) (EOFValue!5976 (value!184207 List!38553)) (IdentValue!5976 (value!184208 List!38553)) (DelimiterValue!11953 (value!184209 List!38553)) (DedentValue!5976 (value!184210 List!38553)) (NewLineValue!5976 (value!184211 List!38553)) (IntegerValue!17928 (value!184212 (_ BitVec 32)) (text!42279 List!38553)) (IntegerValue!17929 (value!184213 Int) (text!42280 List!38553)) (Times!5976) (Or!5976) (Equal!5976) (Minus!5976) (Broken!29884 (value!184214 List!38553)) (And!5976) (Div!5976) (LessEqual!5976) (Mod!5976) (Concat!16481) (Not!5976) (Plus!5976) (SpaceValue!5976 (value!184215 List!38553)) (IntegerValue!17930 (value!184216 Int) (text!42281 List!38553)) (StringLiteralValue!17929 (text!42282 List!38553)) (FloatLiteralValue!11953 (text!42283 List!38553)) (BytesLiteralValue!5976 (value!184217 List!38553)) (CommentValue!11953 (value!184218 List!38553)) (StringLiteralValue!17930 (value!184219 List!38553)) (ErrorTokenValue!5976 (msg!6037 List!38553)) )
))
(declare-datatypes ((C!21196 0))(
  ( (C!21197 (val!12646 Int)) )
))
(declare-datatypes ((Regex!10505 0))(
  ( (ElementMatch!10505 (c!630258 C!21196)) (Concat!16482 (regOne!21522 Regex!10505) (regTwo!21522 Regex!10505)) (EmptyExpr!10505) (Star!10505 (reg!10834 Regex!10505)) (EmptyLang!10505) (Union!10505 (regOne!21523 Regex!10505) (regTwo!21523 Regex!10505)) )
))
(declare-datatypes ((String!43214 0))(
  ( (String!43215 (value!184220 String)) )
))
(declare-datatypes ((List!38554 0))(
  ( (Nil!38430) (Cons!38430 (h!43850 C!21196) (t!297057 List!38554)) )
))
(declare-datatypes ((IArray!23483 0))(
  ( (IArray!23484 (innerList!11799 List!38554)) )
))
(declare-datatypes ((Conc!11739 0))(
  ( (Node!11739 (left!30006 Conc!11739) (right!30336 Conc!11739) (csize!23708 Int) (cheight!11950 Int)) (Leaf!18223 (xs!14941 IArray!23483) (csize!23709 Int)) (Empty!11739) )
))
(declare-datatypes ((BalanceConc!23092 0))(
  ( (BalanceConc!23093 (c!630259 Conc!11739)) )
))
(declare-datatypes ((TokenValueInjection!11380 0))(
  ( (TokenValueInjection!11381 (toValue!8038 Int) (toChars!7897 Int)) )
))
(declare-datatypes ((Rule!11292 0))(
  ( (Rule!11293 (regex!5746 Regex!10505) (tag!6504 String!43214) (isSeparator!5746 Bool) (transformation!5746 TokenValueInjection!11380)) )
))
(declare-datatypes ((Token!10858 0))(
  ( (Token!10859 (value!184221 TokenValue!5976) (rule!8538 Rule!11292) (size!29335 Int) (originalCharacters!6460 List!38554)) )
))
(declare-datatypes ((tuple2!38304 0))(
  ( (tuple2!38305 (_1!22286 Token!10858) (_2!22286 List!38554)) )
))
(declare-fun lt!1263297 () tuple2!38304)

(declare-fun lt!1263293 () C!21196)

(declare-datatypes ((Unit!55312 0))(
  ( (Unit!55313) )
))
(declare-fun lt!1263269 () Unit!55312)

(declare-fun lt!1263281 () List!38554)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!694 (Regex!10505 List!38554 C!21196) Unit!55312)

(assert (=> b!3645907 (= lt!1263269 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!694 (regex!5746 (rule!8538 (_1!22286 lt!1263297))) lt!1263281 lt!1263293))))

(declare-fun contains!7557 (List!38554 C!21196) Bool)

(declare-fun usedCharacters!958 (Regex!10505) List!38554)

(assert (=> b!3645907 (not (contains!7557 (usedCharacters!958 (regex!5746 (rule!8538 (_1!22286 lt!1263297)))) lt!1263293))))

(declare-datatypes ((List!38555 0))(
  ( (Nil!38431) (Cons!38431 (h!43851 Rule!11292) (t!297058 List!38555)) )
))
(declare-fun rules!3307 () List!38555)

(declare-fun lt!1263292 () Unit!55312)

(declare-datatypes ((LexerInterface!5335 0))(
  ( (LexerInterfaceExt!5332 (__x!24170 Int)) (Lexer!5333) )
))
(declare-fun thiss!23823 () LexerInterface!5335)

(declare-fun rule!403 () Rule!11292)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!274 (LexerInterface!5335 List!38555 List!38555 Rule!11292 Rule!11292 C!21196) Unit!55312)

(assert (=> b!3645907 (= lt!1263292 (lemmaSepRuleNotContainsCharContainedInANonSepRule!274 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8538 (_1!22286 lt!1263297)) lt!1263293))))

(declare-fun b!3645908 () Bool)

(declare-fun e!2257037 () Bool)

(declare-fun e!2257042 () Bool)

(assert (=> b!3645908 (= e!2257037 e!2257042)))

(declare-fun res!1478510 () Bool)

(assert (=> b!3645908 (=> res!1478510 e!2257042)))

(declare-fun lt!1263289 () List!38554)

(declare-fun lt!1263291 () C!21196)

(assert (=> b!3645908 (= res!1478510 (contains!7557 lt!1263289 lt!1263291))))

(declare-fun suffix!1395 () List!38554)

(declare-fun head!7754 (List!38554) C!21196)

(assert (=> b!3645908 (= lt!1263291 (head!7754 suffix!1395))))

(assert (=> b!3645908 (= lt!1263289 (usedCharacters!958 (regex!5746 rule!403)))))

(declare-fun e!2257046 () Bool)

(declare-fun tp!1111789 () Bool)

(declare-fun token!511 () Token!10858)

(declare-fun e!2257041 () Bool)

(declare-fun b!3645909 () Bool)

(declare-fun inv!21 (TokenValue!5976) Bool)

(assert (=> b!3645909 (= e!2257041 (and (inv!21 (value!184221 token!511)) e!2257046 tp!1111789))))

(declare-fun e!2257058 () Bool)

(assert (=> b!3645910 (= e!2257058 (and tp!1111792 tp!1111790))))

(declare-fun b!3645911 () Bool)

(declare-fun res!1478523 () Bool)

(declare-fun e!2257063 () Bool)

(assert (=> b!3645911 (=> (not res!1478523) (not e!2257063))))

(declare-fun anOtherTypeRule!33 () Rule!11292)

(assert (=> b!3645911 (= res!1478523 (not (= (isSeparator!5746 anOtherTypeRule!33) (isSeparator!5746 rule!403))))))

(declare-fun b!3645912 () Bool)

(declare-fun res!1478524 () Bool)

(declare-fun e!2257054 () Bool)

(assert (=> b!3645912 (=> res!1478524 e!2257054)))

(declare-fun matchR!5074 (Regex!10505 List!38554) Bool)

(assert (=> b!3645912 (= res!1478524 (not (matchR!5074 (regex!5746 (rule!8538 (_1!22286 lt!1263297))) lt!1263281)))))

(declare-fun b!3645913 () Bool)

(declare-fun e!2257049 () Bool)

(declare-fun e!2257057 () Bool)

(assert (=> b!3645913 (= e!2257049 e!2257057)))

(declare-fun res!1478515 () Bool)

(assert (=> b!3645913 (=> res!1478515 e!2257057)))

(declare-fun lt!1263294 () List!38554)

(declare-datatypes ((Option!8120 0))(
  ( (None!8119) (Some!8119 (v!37967 tuple2!38304)) )
))
(declare-fun lt!1263282 () Option!8120)

(assert (=> b!3645913 (= res!1478515 (or (not (= lt!1263294 (_2!22286 lt!1263297))) (not (= lt!1263282 (Some!8119 (tuple2!38305 (_1!22286 lt!1263297) lt!1263294))))))))

(assert (=> b!3645913 (= (_2!22286 lt!1263297) lt!1263294)))

(declare-fun lt!1263273 () List!38554)

(declare-fun lt!1263274 () Unit!55312)

(declare-fun lemmaSamePrefixThenSameSuffix!1436 (List!38554 List!38554 List!38554 List!38554 List!38554) Unit!55312)

(assert (=> b!3645913 (= lt!1263274 (lemmaSamePrefixThenSameSuffix!1436 lt!1263281 (_2!22286 lt!1263297) lt!1263281 lt!1263294 lt!1263273))))

(declare-fun getSuffix!1662 (List!38554 List!38554) List!38554)

(assert (=> b!3645913 (= lt!1263294 (getSuffix!1662 lt!1263273 lt!1263281))))

(declare-fun lt!1263287 () Int)

(declare-fun lt!1263296 () TokenValue!5976)

(assert (=> b!3645913 (= lt!1263282 (Some!8119 (tuple2!38305 (Token!10859 lt!1263296 (rule!8538 (_1!22286 lt!1263297)) lt!1263287 lt!1263281) (_2!22286 lt!1263297))))))

(declare-fun maxPrefixOneRule!2007 (LexerInterface!5335 Rule!11292 List!38554) Option!8120)

(assert (=> b!3645913 (= lt!1263282 (maxPrefixOneRule!2007 thiss!23823 (rule!8538 (_1!22286 lt!1263297)) lt!1263273))))

(declare-fun size!29336 (List!38554) Int)

(assert (=> b!3645913 (= lt!1263287 (size!29336 lt!1263281))))

(declare-fun apply!9248 (TokenValueInjection!11380 BalanceConc!23092) TokenValue!5976)

(declare-fun seqFromList!4295 (List!38554) BalanceConc!23092)

(assert (=> b!3645913 (= lt!1263296 (apply!9248 (transformation!5746 (rule!8538 (_1!22286 lt!1263297))) (seqFromList!4295 lt!1263281)))))

(declare-fun lt!1263271 () Unit!55312)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1063 (LexerInterface!5335 List!38555 List!38554 List!38554 List!38554 Rule!11292) Unit!55312)

(assert (=> b!3645913 (= lt!1263271 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1063 thiss!23823 rules!3307 lt!1263281 lt!1263273 (_2!22286 lt!1263297) (rule!8538 (_1!22286 lt!1263297))))))

(declare-fun b!3645914 () Bool)

(assert (=> b!3645914 (= e!2257054 e!2257049)))

(declare-fun res!1478504 () Bool)

(assert (=> b!3645914 (=> res!1478504 e!2257049)))

(declare-fun lt!1263278 () BalanceConc!23092)

(declare-fun lt!1263267 () Option!8120)

(declare-fun size!29337 (BalanceConc!23092) Int)

(assert (=> b!3645914 (= res!1478504 (not (= lt!1263267 (Some!8119 (tuple2!38305 (Token!10859 (apply!9248 (transformation!5746 (rule!8538 (_1!22286 lt!1263297))) lt!1263278) (rule!8538 (_1!22286 lt!1263297)) (size!29337 lt!1263278) lt!1263281) (_2!22286 lt!1263297))))))))

(declare-fun lt!1263298 () Unit!55312)

(declare-fun lemmaCharactersSize!791 (Token!10858) Unit!55312)

(assert (=> b!3645914 (= lt!1263298 (lemmaCharactersSize!791 (_1!22286 lt!1263297)))))

(declare-fun lt!1263275 () Unit!55312)

(declare-fun lemmaEqSameImage!929 (TokenValueInjection!11380 BalanceConc!23092 BalanceConc!23092) Unit!55312)

(assert (=> b!3645914 (= lt!1263275 (lemmaEqSameImage!929 (transformation!5746 (rule!8538 (_1!22286 lt!1263297))) lt!1263278 (seqFromList!4295 (originalCharacters!6460 (_1!22286 lt!1263297)))))))

(declare-fun lt!1263295 () Unit!55312)

(declare-fun lemmaSemiInverse!1495 (TokenValueInjection!11380 BalanceConc!23092) Unit!55312)

(assert (=> b!3645914 (= lt!1263295 (lemmaSemiInverse!1495 (transformation!5746 (rule!8538 (_1!22286 lt!1263297))) lt!1263278))))

(declare-fun b!3645915 () Bool)

(declare-fun e!2257040 () Bool)

(declare-fun tp!1111793 () Bool)

(declare-fun inv!51868 (String!43214) Bool)

(declare-fun inv!51871 (TokenValueInjection!11380) Bool)

(assert (=> b!3645915 (= e!2257040 (and tp!1111793 (inv!51868 (tag!6504 rule!403)) (inv!51871 (transformation!5746 rule!403)) e!2257061))))

(declare-fun b!3645916 () Bool)

(assert (=> b!3645916 (= e!2257057 e!2257060)))

(declare-fun res!1478505 () Bool)

(assert (=> b!3645916 (=> res!1478505 e!2257060)))

(assert (=> b!3645916 (= res!1478505 (or (isSeparator!5746 rule!403) (not (isSeparator!5746 (rule!8538 (_1!22286 lt!1263297))))))))

(declare-fun lt!1263270 () Unit!55312)

(declare-fun e!2257048 () Unit!55312)

(assert (=> b!3645916 (= lt!1263270 e!2257048)))

(declare-fun c!630257 () Bool)

(declare-fun lt!1263284 () Bool)

(assert (=> b!3645916 (= c!630257 lt!1263284)))

(assert (=> b!3645916 (= lt!1263284 (not (contains!7557 lt!1263289 lt!1263293)))))

(assert (=> b!3645916 (= lt!1263293 (head!7754 lt!1263281))))

(declare-fun b!3645917 () Bool)

(declare-fun e!2257055 () Bool)

(declare-fun e!2257052 () Bool)

(declare-fun tp!1111788 () Bool)

(assert (=> b!3645917 (= e!2257055 (and e!2257052 tp!1111788))))

(declare-fun b!3645918 () Bool)

(declare-fun res!1478517 () Bool)

(assert (=> b!3645918 (=> res!1478517 e!2257037)))

(declare-fun isEmpty!22764 (List!38554) Bool)

(assert (=> b!3645918 (= res!1478517 (isEmpty!22764 suffix!1395))))

(declare-fun b!3645919 () Bool)

(declare-fun e!2257062 () Bool)

(declare-fun e!2257045 () Bool)

(assert (=> b!3645919 (= e!2257062 e!2257045)))

(declare-fun res!1478520 () Bool)

(assert (=> b!3645919 (=> (not res!1478520) (not e!2257045))))

(declare-fun lt!1263280 () Rule!11292)

(declare-fun list!14236 (BalanceConc!23092) List!38554)

(declare-fun charsOf!3760 (Token!10858) BalanceConc!23092)

(assert (=> b!3645919 (= res!1478520 (matchR!5074 (regex!5746 lt!1263280) (list!14236 (charsOf!3760 (_1!22286 lt!1263297)))))))

(declare-datatypes ((Option!8121 0))(
  ( (None!8120) (Some!8120 (v!37968 Rule!11292)) )
))
(declare-fun lt!1263283 () Option!8121)

(declare-fun get!12603 (Option!8121) Rule!11292)

(assert (=> b!3645919 (= lt!1263280 (get!12603 lt!1263283))))

(declare-fun res!1478511 () Bool)

(assert (=> start!340786 (=> (not res!1478511) (not e!2257063))))

(get-info :version)

(assert (=> start!340786 (= res!1478511 ((_ is Lexer!5333) thiss!23823))))

(assert (=> start!340786 e!2257063))

(assert (=> start!340786 e!2257055))

(assert (=> start!340786 e!2257051))

(assert (=> start!340786 true))

(declare-fun inv!51872 (Token!10858) Bool)

(assert (=> start!340786 (and (inv!51872 token!511) e!2257041)))

(assert (=> start!340786 e!2257040))

(declare-fun e!2257056 () Bool)

(assert (=> start!340786 e!2257056))

(declare-fun tp!1111781 () Bool)

(declare-fun e!2257059 () Bool)

(declare-fun b!3645920 () Bool)

(assert (=> b!3645920 (= e!2257056 (and tp!1111781 (inv!51868 (tag!6504 anOtherTypeRule!33)) (inv!51871 (transformation!5746 anOtherTypeRule!33)) e!2257059))))

(declare-fun b!3645921 () Bool)

(declare-fun tp!1111784 () Bool)

(assert (=> b!3645921 (= e!2257052 (and tp!1111784 (inv!51868 (tag!6504 (h!43851 rules!3307))) (inv!51871 (transformation!5746 (h!43851 rules!3307))) e!2257043))))

(declare-fun b!3645922 () Bool)

(declare-fun res!1478516 () Bool)

(assert (=> b!3645922 (=> (not res!1478516) (not e!2257063))))

(declare-fun isEmpty!22765 (List!38555) Bool)

(assert (=> b!3645922 (= res!1478516 (not (isEmpty!22765 rules!3307)))))

(declare-fun b!3645923 () Bool)

(declare-fun res!1478522 () Bool)

(assert (=> b!3645923 (=> (not res!1478522) (not e!2257063))))

(declare-fun contains!7558 (List!38555 Rule!11292) Bool)

(assert (=> b!3645923 (= res!1478522 (contains!7558 rules!3307 anOtherTypeRule!33))))

(assert (=> b!3645924 (= e!2257059 (and tp!1111794 tp!1111783))))

(declare-fun b!3645925 () Bool)

(declare-fun res!1478506 () Bool)

(assert (=> b!3645925 (=> (not res!1478506) (not e!2257063))))

(declare-fun rulesInvariant!4732 (LexerInterface!5335 List!38555) Bool)

(assert (=> b!3645925 (= res!1478506 (rulesInvariant!4732 thiss!23823 rules!3307))))

(declare-fun b!3645926 () Bool)

(assert (=> b!3645926 (= e!2257045 (= (rule!8538 (_1!22286 lt!1263297)) lt!1263280))))

(declare-fun b!3645927 () Bool)

(declare-fun res!1478525 () Bool)

(assert (=> b!3645927 (=> res!1478525 e!2257042)))

(assert (=> b!3645927 (= res!1478525 (not (contains!7557 (usedCharacters!958 (regex!5746 anOtherTypeRule!33)) lt!1263291)))))

(declare-fun b!3645928 () Bool)

(declare-fun e!2257050 () Bool)

(declare-fun e!2257047 () Bool)

(assert (=> b!3645928 (= e!2257050 e!2257047)))

(declare-fun res!1478512 () Bool)

(assert (=> b!3645928 (=> (not res!1478512) (not e!2257047))))

(declare-fun lt!1263286 () tuple2!38304)

(assert (=> b!3645928 (= res!1478512 (= (_1!22286 lt!1263286) token!511))))

(declare-fun lt!1263276 () Option!8120)

(declare-fun get!12604 (Option!8120) tuple2!38304)

(assert (=> b!3645928 (= lt!1263286 (get!12604 lt!1263276))))

(declare-fun b!3645929 () Bool)

(declare-fun res!1478519 () Bool)

(assert (=> b!3645929 (=> res!1478519 e!2257042)))

(declare-fun sepAndNonSepRulesDisjointChars!1914 (List!38555 List!38555) Bool)

(assert (=> b!3645929 (= res!1478519 (not (sepAndNonSepRulesDisjointChars!1914 rules!3307 rules!3307)))))

(declare-fun b!3645930 () Bool)

(assert (=> b!3645930 (= e!2257047 (not e!2257037))))

(declare-fun res!1478502 () Bool)

(assert (=> b!3645930 (=> res!1478502 e!2257037)))

(declare-fun lt!1263277 () List!38554)

(assert (=> b!3645930 (= res!1478502 (not (matchR!5074 (regex!5746 rule!403) lt!1263277)))))

(declare-fun ruleValid!2010 (LexerInterface!5335 Rule!11292) Bool)

(assert (=> b!3645930 (ruleValid!2010 thiss!23823 rule!403)))

(declare-fun lt!1263290 () Unit!55312)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1164 (LexerInterface!5335 Rule!11292 List!38555) Unit!55312)

(assert (=> b!3645930 (= lt!1263290 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1164 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3645931 () Bool)

(declare-fun res!1478518 () Bool)

(assert (=> b!3645931 (=> (not res!1478518) (not e!2257063))))

(assert (=> b!3645931 (= res!1478518 (contains!7558 rules!3307 rule!403))))

(declare-fun b!3645932 () Bool)

(declare-fun res!1478507 () Bool)

(assert (=> b!3645932 (=> (not res!1478507) (not e!2257047))))

(assert (=> b!3645932 (= res!1478507 (isEmpty!22764 (_2!22286 lt!1263286)))))

(declare-fun b!3645933 () Bool)

(assert (=> b!3645933 (= e!2257042 e!2257054)))

(declare-fun res!1478508 () Bool)

(assert (=> b!3645933 (=> res!1478508 e!2257054)))

(declare-fun isPrefix!3109 (List!38554 List!38554) Bool)

(assert (=> b!3645933 (= res!1478508 (not (isPrefix!3109 lt!1263281 lt!1263273)))))

(declare-fun ++!9562 (List!38554 List!38554) List!38554)

(assert (=> b!3645933 (isPrefix!3109 lt!1263281 (++!9562 lt!1263281 (_2!22286 lt!1263297)))))

(declare-fun lt!1263272 () Unit!55312)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2028 (List!38554 List!38554) Unit!55312)

(assert (=> b!3645933 (= lt!1263272 (lemmaConcatTwoListThenFirstIsPrefix!2028 lt!1263281 (_2!22286 lt!1263297)))))

(assert (=> b!3645933 (= lt!1263281 (list!14236 lt!1263278))))

(assert (=> b!3645933 (= lt!1263278 (charsOf!3760 (_1!22286 lt!1263297)))))

(assert (=> b!3645933 e!2257062))

(declare-fun res!1478513 () Bool)

(assert (=> b!3645933 (=> (not res!1478513) (not e!2257062))))

(declare-fun isDefined!6352 (Option!8121) Bool)

(assert (=> b!3645933 (= res!1478513 (isDefined!6352 lt!1263283))))

(declare-fun getRuleFromTag!1350 (LexerInterface!5335 List!38555 String!43214) Option!8121)

(assert (=> b!3645933 (= lt!1263283 (getRuleFromTag!1350 thiss!23823 rules!3307 (tag!6504 (rule!8538 (_1!22286 lt!1263297)))))))

(declare-fun lt!1263288 () Unit!55312)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1350 (LexerInterface!5335 List!38555 List!38554 Token!10858) Unit!55312)

(assert (=> b!3645933 (= lt!1263288 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1350 thiss!23823 rules!3307 lt!1263273 (_1!22286 lt!1263297)))))

(assert (=> b!3645933 (= lt!1263297 (get!12604 lt!1263267))))

(declare-fun lt!1263268 () Unit!55312)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1013 (LexerInterface!5335 List!38555 List!38554 List!38554) Unit!55312)

(assert (=> b!3645933 (= lt!1263268 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1013 thiss!23823 rules!3307 lt!1263277 suffix!1395))))

(declare-fun maxPrefix!2869 (LexerInterface!5335 List!38555 List!38554) Option!8120)

(assert (=> b!3645933 (= lt!1263267 (maxPrefix!2869 thiss!23823 rules!3307 lt!1263273))))

(assert (=> b!3645933 (isPrefix!3109 lt!1263277 lt!1263273)))

(declare-fun lt!1263285 () Unit!55312)

(assert (=> b!3645933 (= lt!1263285 (lemmaConcatTwoListThenFirstIsPrefix!2028 lt!1263277 suffix!1395))))

(assert (=> b!3645933 (= lt!1263273 (++!9562 lt!1263277 suffix!1395))))

(declare-fun b!3645934 () Bool)

(declare-fun Unit!55314 () Unit!55312)

(assert (=> b!3645934 (= e!2257048 Unit!55314)))

(declare-fun b!3645935 () Bool)

(declare-fun res!1478521 () Bool)

(assert (=> b!3645935 (=> res!1478521 e!2257060)))

(assert (=> b!3645935 (= res!1478521 lt!1263284)))

(declare-fun b!3645936 () Bool)

(assert (=> b!3645936 (= e!2257063 e!2257050)))

(declare-fun res!1478503 () Bool)

(assert (=> b!3645936 (=> (not res!1478503) (not e!2257050))))

(declare-fun isDefined!6353 (Option!8120) Bool)

(assert (=> b!3645936 (= res!1478503 (isDefined!6353 lt!1263276))))

(assert (=> b!3645936 (= lt!1263276 (maxPrefix!2869 thiss!23823 rules!3307 lt!1263277))))

(assert (=> b!3645936 (= lt!1263277 (list!14236 (charsOf!3760 token!511)))))

(declare-fun b!3645937 () Bool)

(declare-fun tp!1111791 () Bool)

(assert (=> b!3645937 (= e!2257046 (and tp!1111791 (inv!51868 (tag!6504 (rule!8538 token!511))) (inv!51871 (transformation!5746 (rule!8538 token!511))) e!2257058))))

(declare-fun b!3645938 () Bool)

(declare-fun Unit!55315 () Unit!55312)

(assert (=> b!3645938 (= e!2257048 Unit!55315)))

(declare-fun lt!1263279 () Unit!55312)

(assert (=> b!3645938 (= lt!1263279 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!694 (regex!5746 rule!403) lt!1263277 lt!1263293))))

(assert (=> b!3645938 false))

(declare-fun b!3645939 () Bool)

(declare-fun res!1478509 () Bool)

(assert (=> b!3645939 (=> res!1478509 e!2257060)))

(assert (=> b!3645939 (= res!1478509 (not (contains!7557 lt!1263277 lt!1263293)))))

(declare-fun b!3645940 () Bool)

(declare-fun res!1478514 () Bool)

(assert (=> b!3645940 (=> (not res!1478514) (not e!2257047))))

(assert (=> b!3645940 (= res!1478514 (= (rule!8538 token!511) rule!403))))

(assert (= (and start!340786 res!1478511) b!3645922))

(assert (= (and b!3645922 res!1478516) b!3645925))

(assert (= (and b!3645925 res!1478506) b!3645931))

(assert (= (and b!3645931 res!1478518) b!3645923))

(assert (= (and b!3645923 res!1478522) b!3645911))

(assert (= (and b!3645911 res!1478523) b!3645936))

(assert (= (and b!3645936 res!1478503) b!3645928))

(assert (= (and b!3645928 res!1478512) b!3645932))

(assert (= (and b!3645932 res!1478507) b!3645940))

(assert (= (and b!3645940 res!1478514) b!3645930))

(assert (= (and b!3645930 (not res!1478502)) b!3645918))

(assert (= (and b!3645918 (not res!1478517)) b!3645908))

(assert (= (and b!3645908 (not res!1478510)) b!3645927))

(assert (= (and b!3645927 (not res!1478525)) b!3645929))

(assert (= (and b!3645929 (not res!1478519)) b!3645933))

(assert (= (and b!3645933 res!1478513) b!3645919))

(assert (= (and b!3645919 res!1478520) b!3645926))

(assert (= (and b!3645933 (not res!1478508)) b!3645912))

(assert (= (and b!3645912 (not res!1478524)) b!3645914))

(assert (= (and b!3645914 (not res!1478504)) b!3645913))

(assert (= (and b!3645913 (not res!1478515)) b!3645916))

(assert (= (and b!3645916 c!630257) b!3645938))

(assert (= (and b!3645916 (not c!630257)) b!3645934))

(assert (= (and b!3645916 (not res!1478505)) b!3645939))

(assert (= (and b!3645939 (not res!1478509)) b!3645935))

(assert (= (and b!3645935 (not res!1478521)) b!3645907))

(assert (= b!3645921 b!3645906))

(assert (= b!3645917 b!3645921))

(assert (= (and start!340786 ((_ is Cons!38431) rules!3307)) b!3645917))

(assert (= (and start!340786 ((_ is Cons!38430) suffix!1395)) b!3645904))

(assert (= b!3645937 b!3645910))

(assert (= b!3645909 b!3645937))

(assert (= start!340786 b!3645909))

(assert (= b!3645915 b!3645905))

(assert (= start!340786 b!3645915))

(assert (= b!3645920 b!3645924))

(assert (= start!340786 b!3645920))

(declare-fun m!4149633 () Bool)

(assert (=> b!3645928 m!4149633))

(declare-fun m!4149635 () Bool)

(assert (=> b!3645912 m!4149635))

(declare-fun m!4149637 () Bool)

(assert (=> b!3645936 m!4149637))

(declare-fun m!4149639 () Bool)

(assert (=> b!3645936 m!4149639))

(declare-fun m!4149641 () Bool)

(assert (=> b!3645936 m!4149641))

(assert (=> b!3645936 m!4149641))

(declare-fun m!4149643 () Bool)

(assert (=> b!3645936 m!4149643))

(declare-fun m!4149645 () Bool)

(assert (=> b!3645909 m!4149645))

(declare-fun m!4149647 () Bool)

(assert (=> b!3645932 m!4149647))

(declare-fun m!4149649 () Bool)

(assert (=> b!3645930 m!4149649))

(declare-fun m!4149651 () Bool)

(assert (=> b!3645930 m!4149651))

(declare-fun m!4149653 () Bool)

(assert (=> b!3645930 m!4149653))

(declare-fun m!4149655 () Bool)

(assert (=> start!340786 m!4149655))

(declare-fun m!4149657 () Bool)

(assert (=> b!3645921 m!4149657))

(declare-fun m!4149659 () Bool)

(assert (=> b!3645921 m!4149659))

(declare-fun m!4149661 () Bool)

(assert (=> b!3645937 m!4149661))

(declare-fun m!4149663 () Bool)

(assert (=> b!3645937 m!4149663))

(declare-fun m!4149665 () Bool)

(assert (=> b!3645920 m!4149665))

(declare-fun m!4149667 () Bool)

(assert (=> b!3645920 m!4149667))

(declare-fun m!4149669 () Bool)

(assert (=> b!3645923 m!4149669))

(declare-fun m!4149671 () Bool)

(assert (=> b!3645916 m!4149671))

(declare-fun m!4149673 () Bool)

(assert (=> b!3645916 m!4149673))

(declare-fun m!4149675 () Bool)

(assert (=> b!3645931 m!4149675))

(declare-fun m!4149677 () Bool)

(assert (=> b!3645939 m!4149677))

(declare-fun m!4149679 () Bool)

(assert (=> b!3645913 m!4149679))

(declare-fun m!4149681 () Bool)

(assert (=> b!3645913 m!4149681))

(declare-fun m!4149683 () Bool)

(assert (=> b!3645913 m!4149683))

(declare-fun m!4149685 () Bool)

(assert (=> b!3645913 m!4149685))

(declare-fun m!4149687 () Bool)

(assert (=> b!3645913 m!4149687))

(declare-fun m!4149689 () Bool)

(assert (=> b!3645913 m!4149689))

(declare-fun m!4149691 () Bool)

(assert (=> b!3645913 m!4149691))

(assert (=> b!3645913 m!4149679))

(declare-fun m!4149693 () Bool)

(assert (=> b!3645918 m!4149693))

(declare-fun m!4149695 () Bool)

(assert (=> b!3645922 m!4149695))

(declare-fun m!4149697 () Bool)

(assert (=> b!3645925 m!4149697))

(declare-fun m!4149699 () Bool)

(assert (=> b!3645938 m!4149699))

(declare-fun m!4149701 () Bool)

(assert (=> b!3645914 m!4149701))

(declare-fun m!4149703 () Bool)

(assert (=> b!3645914 m!4149703))

(declare-fun m!4149705 () Bool)

(assert (=> b!3645914 m!4149705))

(declare-fun m!4149707 () Bool)

(assert (=> b!3645914 m!4149707))

(declare-fun m!4149709 () Bool)

(assert (=> b!3645914 m!4149709))

(declare-fun m!4149711 () Bool)

(assert (=> b!3645914 m!4149711))

(assert (=> b!3645914 m!4149705))

(declare-fun m!4149713 () Bool)

(assert (=> b!3645933 m!4149713))

(declare-fun m!4149715 () Bool)

(assert (=> b!3645933 m!4149715))

(declare-fun m!4149717 () Bool)

(assert (=> b!3645933 m!4149717))

(declare-fun m!4149719 () Bool)

(assert (=> b!3645933 m!4149719))

(declare-fun m!4149721 () Bool)

(assert (=> b!3645933 m!4149721))

(declare-fun m!4149723 () Bool)

(assert (=> b!3645933 m!4149723))

(declare-fun m!4149725 () Bool)

(assert (=> b!3645933 m!4149725))

(declare-fun m!4149727 () Bool)

(assert (=> b!3645933 m!4149727))

(declare-fun m!4149729 () Bool)

(assert (=> b!3645933 m!4149729))

(declare-fun m!4149731 () Bool)

(assert (=> b!3645933 m!4149731))

(declare-fun m!4149733 () Bool)

(assert (=> b!3645933 m!4149733))

(declare-fun m!4149735 () Bool)

(assert (=> b!3645933 m!4149735))

(declare-fun m!4149737 () Bool)

(assert (=> b!3645933 m!4149737))

(declare-fun m!4149739 () Bool)

(assert (=> b!3645933 m!4149739))

(assert (=> b!3645933 m!4149735))

(declare-fun m!4149741 () Bool)

(assert (=> b!3645933 m!4149741))

(declare-fun m!4149743 () Bool)

(assert (=> b!3645908 m!4149743))

(declare-fun m!4149745 () Bool)

(assert (=> b!3645908 m!4149745))

(declare-fun m!4149747 () Bool)

(assert (=> b!3645908 m!4149747))

(declare-fun m!4149749 () Bool)

(assert (=> b!3645915 m!4149749))

(declare-fun m!4149751 () Bool)

(assert (=> b!3645915 m!4149751))

(declare-fun m!4149753 () Bool)

(assert (=> b!3645907 m!4149753))

(declare-fun m!4149755 () Bool)

(assert (=> b!3645907 m!4149755))

(assert (=> b!3645907 m!4149755))

(declare-fun m!4149757 () Bool)

(assert (=> b!3645907 m!4149757))

(declare-fun m!4149759 () Bool)

(assert (=> b!3645907 m!4149759))

(declare-fun m!4149761 () Bool)

(assert (=> b!3645929 m!4149761))

(assert (=> b!3645919 m!4149731))

(assert (=> b!3645919 m!4149731))

(declare-fun m!4149763 () Bool)

(assert (=> b!3645919 m!4149763))

(assert (=> b!3645919 m!4149763))

(declare-fun m!4149765 () Bool)

(assert (=> b!3645919 m!4149765))

(declare-fun m!4149767 () Bool)

(assert (=> b!3645919 m!4149767))

(declare-fun m!4149769 () Bool)

(assert (=> b!3645927 m!4149769))

(assert (=> b!3645927 m!4149769))

(declare-fun m!4149771 () Bool)

(assert (=> b!3645927 m!4149771))

(check-sat b_and!269249 (not b_next!96401) (not b_next!96403) (not b_next!96405) (not b!3645915) (not b!3645914) (not b!3645909) (not b_next!96411) b_and!269257 b_and!269243 b_and!269247 (not b!3645923) (not b!3645931) (not b!3645922) b_and!269245 (not b!3645907) (not b!3645913) (not b!3645927) b_and!269251 (not b!3645939) (not b_next!96409) (not b!3645930) (not b!3645916) (not b!3645933) (not b!3645938) (not b!3645928) (not b_next!96415) (not b!3645932) (not b!3645904) (not b!3645912) b_and!269255 (not b_next!96407) (not b!3645918) (not b!3645920) (not b!3645937) (not b!3645921) (not b!3645936) (not b!3645919) (not b!3645925) (not start!340786) b_and!269253 tp_is_empty!18093 (not b!3645908) (not b!3645917) (not b!3645929) (not b_next!96413))
(check-sat b_and!269245 b_and!269249 (not b_next!96401) (not b_next!96403) (not b_next!96405) (not b_next!96415) b_and!269255 (not b_next!96411) b_and!269257 (not b_next!96407) b_and!269253 b_and!269243 (not b_next!96413) b_and!269247 b_and!269251 (not b_next!96409))
