; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51156 () Bool)

(assert start!51156)

(declare-fun b!552418 () Bool)

(declare-fun b_free!15473 () Bool)

(declare-fun b_next!15489 () Bool)

(assert (=> b!552418 (= b_free!15473 (not b_next!15489))))

(declare-fun tp!174748 () Bool)

(declare-fun b_and!53955 () Bool)

(assert (=> b!552418 (= tp!174748 b_and!53955)))

(declare-fun b_free!15475 () Bool)

(declare-fun b_next!15491 () Bool)

(assert (=> b!552418 (= b_free!15475 (not b_next!15491))))

(declare-fun tp!174750 () Bool)

(declare-fun b_and!53957 () Bool)

(assert (=> b!552418 (= tp!174750 b_and!53957)))

(declare-fun b!552412 () Bool)

(declare-fun b_free!15477 () Bool)

(declare-fun b_next!15493 () Bool)

(assert (=> b!552412 (= b_free!15477 (not b_next!15493))))

(declare-fun tp!174743 () Bool)

(declare-fun b_and!53959 () Bool)

(assert (=> b!552412 (= tp!174743 b_and!53959)))

(declare-fun b_free!15479 () Bool)

(declare-fun b_next!15495 () Bool)

(assert (=> b!552412 (= b_free!15479 (not b_next!15495))))

(declare-fun tp!174751 () Bool)

(declare-fun b_and!53961 () Bool)

(assert (=> b!552412 (= tp!174751 b_and!53961)))

(declare-fun b!552404 () Bool)

(declare-fun e!334235 () Bool)

(declare-fun tp_is_empty!3113 () Bool)

(declare-fun tp!174745 () Bool)

(assert (=> b!552404 (= e!334235 (and tp_is_empty!3113 tp!174745))))

(declare-fun b!552405 () Bool)

(declare-fun e!334239 () Bool)

(declare-fun e!334241 () Bool)

(declare-fun tp!174744 () Bool)

(assert (=> b!552405 (= e!334239 (and e!334241 tp!174744))))

(declare-fun b!552406 () Bool)

(declare-fun e!334236 () Bool)

(declare-fun e!334242 () Bool)

(assert (=> b!552406 (= e!334236 e!334242)))

(declare-fun res!236919 () Bool)

(assert (=> b!552406 (=> (not res!236919) (not e!334242))))

(declare-datatypes ((C!3680 0))(
  ( (C!3681 (val!2066 Int)) )
))
(declare-datatypes ((List!5493 0))(
  ( (Nil!5483) (Cons!5483 (h!10884 C!3680) (t!75166 List!5493)) )
))
(declare-fun suffix!1342 () List!5493)

(declare-datatypes ((String!7088 0))(
  ( (String!7089 (value!34623 String)) )
))
(declare-datatypes ((Regex!1379 0))(
  ( (ElementMatch!1379 (c!103786 C!3680)) (Concat!2448 (regOne!3270 Regex!1379) (regTwo!3270 Regex!1379)) (EmptyExpr!1379) (Star!1379 (reg!1708 Regex!1379)) (EmptyLang!1379) (Union!1379 (regOne!3271 Regex!1379) (regTwo!3271 Regex!1379)) )
))
(declare-datatypes ((List!5494 0))(
  ( (Nil!5484) (Cons!5484 (h!10885 (_ BitVec 16)) (t!75167 List!5494)) )
))
(declare-datatypes ((TokenValue!1069 0))(
  ( (FloatLiteralValue!2138 (text!7928 List!5494)) (TokenValueExt!1068 (__x!4036 Int)) (Broken!5345 (value!34624 List!5494)) (Object!1078) (End!1069) (Def!1069) (Underscore!1069) (Match!1069) (Else!1069) (Error!1069) (Case!1069) (If!1069) (Extends!1069) (Abstract!1069) (Class!1069) (Val!1069) (DelimiterValue!2138 (del!1129 List!5494)) (KeywordValue!1075 (value!34625 List!5494)) (CommentValue!2138 (value!34626 List!5494)) (WhitespaceValue!2138 (value!34627 List!5494)) (IndentationValue!1069 (value!34628 List!5494)) (String!7090) (Int32!1069) (Broken!5346 (value!34629 List!5494)) (Boolean!1070) (Unit!9726) (OperatorValue!1072 (op!1129 List!5494)) (IdentifierValue!2138 (value!34630 List!5494)) (IdentifierValue!2139 (value!34631 List!5494)) (WhitespaceValue!2139 (value!34632 List!5494)) (True!2138) (False!2138) (Broken!5347 (value!34633 List!5494)) (Broken!5348 (value!34634 List!5494)) (True!2139) (RightBrace!1069) (RightBracket!1069) (Colon!1069) (Null!1069) (Comma!1069) (LeftBracket!1069) (False!2139) (LeftBrace!1069) (ImaginaryLiteralValue!1069 (text!7929 List!5494)) (StringLiteralValue!3207 (value!34635 List!5494)) (EOFValue!1069 (value!34636 List!5494)) (IdentValue!1069 (value!34637 List!5494)) (DelimiterValue!2139 (value!34638 List!5494)) (DedentValue!1069 (value!34639 List!5494)) (NewLineValue!1069 (value!34640 List!5494)) (IntegerValue!3207 (value!34641 (_ BitVec 32)) (text!7930 List!5494)) (IntegerValue!3208 (value!34642 Int) (text!7931 List!5494)) (Times!1069) (Or!1069) (Equal!1069) (Minus!1069) (Broken!5349 (value!34643 List!5494)) (And!1069) (Div!1069) (LessEqual!1069) (Mod!1069) (Concat!2449) (Not!1069) (Plus!1069) (SpaceValue!1069 (value!34644 List!5494)) (IntegerValue!3209 (value!34645 Int) (text!7932 List!5494)) (StringLiteralValue!3208 (text!7933 List!5494)) (FloatLiteralValue!2139 (text!7934 List!5494)) (BytesLiteralValue!1069 (value!34646 List!5494)) (CommentValue!2139 (value!34647 List!5494)) (StringLiteralValue!3209 (value!34648 List!5494)) (ErrorTokenValue!1069 (msg!1130 List!5494)) )
))
(declare-datatypes ((IArray!3525 0))(
  ( (IArray!3526 (innerList!1820 List!5493)) )
))
(declare-datatypes ((Conc!1762 0))(
  ( (Node!1762 (left!4521 Conc!1762) (right!4851 Conc!1762) (csize!3754 Int) (cheight!1973 Int)) (Leaf!2792 (xs!4399 IArray!3525) (csize!3755 Int)) (Empty!1762) )
))
(declare-datatypes ((BalanceConc!3532 0))(
  ( (BalanceConc!3533 (c!103787 Conc!1762)) )
))
(declare-datatypes ((TokenValueInjection!1906 0))(
  ( (TokenValueInjection!1907 (toValue!1892 Int) (toChars!1751 Int)) )
))
(declare-datatypes ((Rule!1890 0))(
  ( (Rule!1891 (regex!1045 Regex!1379) (tag!1307 String!7088) (isSeparator!1045 Bool) (transformation!1045 TokenValueInjection!1906)) )
))
(declare-datatypes ((Token!1826 0))(
  ( (Token!1827 (value!34649 TokenValue!1069) (rule!1771 Rule!1890) (size!4376 Int) (originalCharacters!1084 List!5493)) )
))
(declare-fun token!491 () Token!1826)

(declare-datatypes ((tuple2!6496 0))(
  ( (tuple2!6497 (_1!3512 Token!1826) (_2!3512 List!5493)) )
))
(declare-fun lt!233065 () tuple2!6496)

(assert (=> b!552406 (= res!236919 (and (= (_1!3512 lt!233065) token!491) (= (_2!3512 lt!233065) suffix!1342)))))

(declare-datatypes ((Option!1395 0))(
  ( (None!1394) (Some!1394 (v!16221 tuple2!6496)) )
))
(declare-fun lt!233059 () Option!1395)

(declare-fun get!2082 (Option!1395) tuple2!6496)

(assert (=> b!552406 (= lt!233065 (get!2082 lt!233059))))

(declare-fun b!552407 () Bool)

(declare-fun e!334243 () Bool)

(assert (=> b!552407 (= e!334243 e!334236)))

(declare-fun res!236923 () Bool)

(assert (=> b!552407 (=> (not res!236923) (not e!334236))))

(declare-fun isDefined!1207 (Option!1395) Bool)

(assert (=> b!552407 (= res!236923 (isDefined!1207 lt!233059))))

(declare-datatypes ((List!5495 0))(
  ( (Nil!5485) (Cons!5485 (h!10886 Rule!1890) (t!75168 List!5495)) )
))
(declare-fun rules!3103 () List!5495)

(declare-fun lt!233062 () List!5493)

(declare-datatypes ((LexerInterface!931 0))(
  ( (LexerInterfaceExt!928 (__x!4037 Int)) (Lexer!929) )
))
(declare-fun thiss!22590 () LexerInterface!931)

(declare-fun maxPrefix!629 (LexerInterface!931 List!5495 List!5493) Option!1395)

(assert (=> b!552407 (= lt!233059 (maxPrefix!629 thiss!22590 rules!3103 lt!233062))))

(declare-fun input!2705 () List!5493)

(declare-fun ++!1533 (List!5493 List!5493) List!5493)

(assert (=> b!552407 (= lt!233062 (++!1533 input!2705 suffix!1342))))

(declare-fun b!552408 () Bool)

(declare-fun res!236918 () Bool)

(declare-fun e!334247 () Bool)

(assert (=> b!552408 (=> (not res!236918) (not e!334247))))

(declare-fun isEmpty!3956 (List!5495) Bool)

(assert (=> b!552408 (= res!236918 (not (isEmpty!3956 rules!3103)))))

(declare-fun lt!233064 () Option!1395)

(declare-fun b!552409 () Bool)

(declare-fun lt!233063 () List!5493)

(declare-fun e!334234 () Bool)

(assert (=> b!552409 (= e!334234 (= (++!1533 lt!233063 (_2!3512 (v!16221 lt!233064))) input!2705))))

(declare-fun b!552410 () Bool)

(assert (=> b!552410 (= e!334247 e!334243)))

(declare-fun res!236924 () Bool)

(assert (=> b!552410 (=> (not res!236924) (not e!334243))))

(declare-fun lt!233060 () List!5493)

(assert (=> b!552410 (= res!236924 (= lt!233060 input!2705))))

(declare-fun list!2271 (BalanceConc!3532) List!5493)

(declare-fun charsOf!674 (Token!1826) BalanceConc!3532)

(assert (=> b!552410 (= lt!233060 (list!2271 (charsOf!674 token!491)))))

(declare-fun b!552411 () Bool)

(declare-fun e!334245 () Bool)

(declare-fun tp!174749 () Bool)

(assert (=> b!552411 (= e!334245 (and tp_is_empty!3113 tp!174749))))

(declare-fun e!334250 () Bool)

(assert (=> b!552412 (= e!334250 (and tp!174743 tp!174751))))

(declare-fun b!552413 () Bool)

(declare-fun e!334237 () Bool)

(assert (=> b!552413 (= e!334242 e!334237)))

(declare-fun res!236915 () Bool)

(assert (=> b!552413 (=> (not res!236915) (not e!334237))))

(get-info :version)

(assert (=> b!552413 (= res!236915 ((_ is Some!1394) lt!233064))))

(assert (=> b!552413 (= lt!233064 (maxPrefix!629 thiss!22590 rules!3103 input!2705))))

(declare-fun b!552414 () Bool)

(declare-fun e!334249 () Bool)

(declare-fun e!334248 () Bool)

(declare-fun tp!174752 () Bool)

(declare-fun inv!21 (TokenValue!1069) Bool)

(assert (=> b!552414 (= e!334248 (and (inv!21 (value!34649 token!491)) e!334249 tp!174752))))

(declare-fun tp!174746 () Bool)

(declare-fun b!552415 () Bool)

(declare-fun inv!6874 (String!7088) Bool)

(declare-fun inv!6877 (TokenValueInjection!1906) Bool)

(assert (=> b!552415 (= e!334249 (and tp!174746 (inv!6874 (tag!1307 (rule!1771 token!491))) (inv!6877 (transformation!1045 (rule!1771 token!491))) e!334250))))

(declare-fun b!552416 () Bool)

(assert (=> b!552416 (= e!334237 (not e!334234))))

(declare-fun res!236921 () Bool)

(assert (=> b!552416 (=> res!236921 e!334234)))

(declare-fun size!4377 (List!5493) Int)

(assert (=> b!552416 (= res!236921 (<= (size!4377 lt!233063) (size!4377 lt!233060)))))

(assert (=> b!552416 (= lt!233063 (list!2271 (charsOf!674 (_1!3512 (v!16221 lt!233064)))))))

(assert (=> b!552416 (= lt!233064 (Some!1394 (v!16221 lt!233064)))))

(declare-datatypes ((Unit!9727 0))(
  ( (Unit!9728) )
))
(declare-fun lt!233061 () Unit!9727)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!122 (List!5493 List!5493 List!5493 List!5493) Unit!9727)

(assert (=> b!552416 (= lt!233061 (lemmaConcatSameAndSameSizesThenSameLists!122 lt!233060 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!552417 () Bool)

(declare-fun res!236916 () Bool)

(assert (=> b!552417 (=> (not res!236916) (not e!334237))))

(assert (=> b!552417 (= res!236916 (= (++!1533 lt!233060 suffix!1342) lt!233062))))

(declare-fun res!236917 () Bool)

(assert (=> start!51156 (=> (not res!236917) (not e!334247))))

(assert (=> start!51156 (= res!236917 ((_ is Lexer!929) thiss!22590))))

(assert (=> start!51156 e!334247))

(assert (=> start!51156 e!334245))

(assert (=> start!51156 e!334239))

(declare-fun inv!6878 (Token!1826) Bool)

(assert (=> start!51156 (and (inv!6878 token!491) e!334248)))

(assert (=> start!51156 true))

(assert (=> start!51156 e!334235))

(declare-fun e!334240 () Bool)

(assert (=> b!552418 (= e!334240 (and tp!174748 tp!174750))))

(declare-fun b!552419 () Bool)

(declare-fun res!236920 () Bool)

(assert (=> b!552419 (=> (not res!236920) (not e!334247))))

(declare-fun isEmpty!3957 (List!5493) Bool)

(assert (=> b!552419 (= res!236920 (not (isEmpty!3957 input!2705)))))

(declare-fun b!552420 () Bool)

(declare-fun res!236922 () Bool)

(assert (=> b!552420 (=> (not res!236922) (not e!334247))))

(declare-fun rulesInvariant!894 (LexerInterface!931 List!5495) Bool)

(assert (=> b!552420 (= res!236922 (rulesInvariant!894 thiss!22590 rules!3103))))

(declare-fun b!552421 () Bool)

(declare-fun tp!174747 () Bool)

(assert (=> b!552421 (= e!334241 (and tp!174747 (inv!6874 (tag!1307 (h!10886 rules!3103))) (inv!6877 (transformation!1045 (h!10886 rules!3103))) e!334240))))

(assert (= (and start!51156 res!236917) b!552408))

(assert (= (and b!552408 res!236918) b!552420))

(assert (= (and b!552420 res!236922) b!552419))

(assert (= (and b!552419 res!236920) b!552410))

(assert (= (and b!552410 res!236924) b!552407))

(assert (= (and b!552407 res!236923) b!552406))

(assert (= (and b!552406 res!236919) b!552413))

(assert (= (and b!552413 res!236915) b!552417))

(assert (= (and b!552417 res!236916) b!552416))

(assert (= (and b!552416 (not res!236921)) b!552409))

(assert (= (and start!51156 ((_ is Cons!5483) suffix!1342)) b!552411))

(assert (= b!552421 b!552418))

(assert (= b!552405 b!552421))

(assert (= (and start!51156 ((_ is Cons!5485) rules!3103)) b!552405))

(assert (= b!552415 b!552412))

(assert (= b!552414 b!552415))

(assert (= start!51156 b!552414))

(assert (= (and start!51156 ((_ is Cons!5483) input!2705)) b!552404))

(declare-fun m!801913 () Bool)

(assert (=> b!552416 m!801913))

(declare-fun m!801915 () Bool)

(assert (=> b!552416 m!801915))

(declare-fun m!801917 () Bool)

(assert (=> b!552416 m!801917))

(declare-fun m!801919 () Bool)

(assert (=> b!552416 m!801919))

(assert (=> b!552416 m!801915))

(declare-fun m!801921 () Bool)

(assert (=> b!552416 m!801921))

(declare-fun m!801923 () Bool)

(assert (=> b!552407 m!801923))

(declare-fun m!801925 () Bool)

(assert (=> b!552407 m!801925))

(declare-fun m!801927 () Bool)

(assert (=> b!552407 m!801927))

(declare-fun m!801929 () Bool)

(assert (=> b!552413 m!801929))

(declare-fun m!801931 () Bool)

(assert (=> b!552406 m!801931))

(declare-fun m!801933 () Bool)

(assert (=> start!51156 m!801933))

(declare-fun m!801935 () Bool)

(assert (=> b!552419 m!801935))

(declare-fun m!801937 () Bool)

(assert (=> b!552408 m!801937))

(declare-fun m!801939 () Bool)

(assert (=> b!552410 m!801939))

(assert (=> b!552410 m!801939))

(declare-fun m!801941 () Bool)

(assert (=> b!552410 m!801941))

(declare-fun m!801943 () Bool)

(assert (=> b!552414 m!801943))

(declare-fun m!801945 () Bool)

(assert (=> b!552421 m!801945))

(declare-fun m!801947 () Bool)

(assert (=> b!552421 m!801947))

(declare-fun m!801949 () Bool)

(assert (=> b!552415 m!801949))

(declare-fun m!801951 () Bool)

(assert (=> b!552415 m!801951))

(declare-fun m!801953 () Bool)

(assert (=> b!552420 m!801953))

(declare-fun m!801955 () Bool)

(assert (=> b!552417 m!801955))

(declare-fun m!801957 () Bool)

(assert (=> b!552409 m!801957))

(check-sat b_and!53957 (not b!552419) (not start!51156) b_and!53961 (not b!552417) b_and!53955 (not b!552414) (not b_next!15491) (not b_next!15495) b_and!53959 tp_is_empty!3113 (not b!552405) (not b!552415) (not b!552416) (not b!552407) (not b!552420) (not b_next!15489) (not b!552406) (not b!552411) (not b!552404) (not b_next!15493) (not b!552413) (not b!552421) (not b!552408) (not b!552409) (not b!552410))
(check-sat b_and!53957 (not b_next!15489) (not b_next!15493) b_and!53961 b_and!53955 (not b_next!15491) (not b_next!15495) b_and!53959)
(get-model)

(declare-fun d!192604 () Bool)

(declare-fun list!2273 (Conc!1762) List!5493)

(assert (=> d!192604 (= (list!2271 (charsOf!674 token!491)) (list!2273 (c!103787 (charsOf!674 token!491))))))

(declare-fun bs!67912 () Bool)

(assert (= bs!67912 d!192604))

(declare-fun m!801963 () Bool)

(assert (=> bs!67912 m!801963))

(assert (=> b!552410 d!192604))

(declare-fun d!192606 () Bool)

(declare-fun lt!233071 () BalanceConc!3532)

(assert (=> d!192606 (= (list!2271 lt!233071) (originalCharacters!1084 token!491))))

(declare-fun dynLambda!3183 (Int TokenValue!1069) BalanceConc!3532)

(assert (=> d!192606 (= lt!233071 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 token!491))) (value!34649 token!491)))))

(assert (=> d!192606 (= (charsOf!674 token!491) lt!233071)))

(declare-fun b_lambda!21247 () Bool)

(assert (=> (not b_lambda!21247) (not d!192606)))

(declare-fun tb!48243 () Bool)

(declare-fun t!75170 () Bool)

(assert (=> (and b!552418 (= (toChars!1751 (transformation!1045 (h!10886 rules!3103))) (toChars!1751 (transformation!1045 (rule!1771 token!491)))) t!75170) tb!48243))

(declare-fun b!552441 () Bool)

(declare-fun e!334262 () Bool)

(declare-fun tp!174755 () Bool)

(declare-fun inv!6881 (Conc!1762) Bool)

(assert (=> b!552441 (= e!334262 (and (inv!6881 (c!103787 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 token!491))) (value!34649 token!491)))) tp!174755))))

(declare-fun result!53998 () Bool)

(declare-fun inv!6882 (BalanceConc!3532) Bool)

(assert (=> tb!48243 (= result!53998 (and (inv!6882 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 token!491))) (value!34649 token!491))) e!334262))))

(assert (= tb!48243 b!552441))

(declare-fun m!801977 () Bool)

(assert (=> b!552441 m!801977))

(declare-fun m!801979 () Bool)

(assert (=> tb!48243 m!801979))

(assert (=> d!192606 t!75170))

(declare-fun b_and!53963 () Bool)

(assert (= b_and!53957 (and (=> t!75170 result!53998) b_and!53963)))

(declare-fun t!75172 () Bool)

(declare-fun tb!48245 () Bool)

(assert (=> (and b!552412 (= (toChars!1751 (transformation!1045 (rule!1771 token!491))) (toChars!1751 (transformation!1045 (rule!1771 token!491)))) t!75172) tb!48245))

(declare-fun result!54002 () Bool)

(assert (= result!54002 result!53998))

(assert (=> d!192606 t!75172))

(declare-fun b_and!53965 () Bool)

(assert (= b_and!53961 (and (=> t!75172 result!54002) b_and!53965)))

(declare-fun m!801981 () Bool)

(assert (=> d!192606 m!801981))

(declare-fun m!801983 () Bool)

(assert (=> d!192606 m!801983))

(assert (=> b!552410 d!192606))

(declare-fun d!192610 () Bool)

(assert (=> d!192610 (= (inv!6874 (tag!1307 (h!10886 rules!3103))) (= (mod (str.len (value!34623 (tag!1307 (h!10886 rules!3103)))) 2) 0))))

(assert (=> b!552421 d!192610))

(declare-fun d!192614 () Bool)

(declare-fun res!236949 () Bool)

(declare-fun e!334277 () Bool)

(assert (=> d!192614 (=> (not res!236949) (not e!334277))))

(declare-fun semiInverseModEq!401 (Int Int) Bool)

(assert (=> d!192614 (= res!236949 (semiInverseModEq!401 (toChars!1751 (transformation!1045 (h!10886 rules!3103))) (toValue!1892 (transformation!1045 (h!10886 rules!3103)))))))

(assert (=> d!192614 (= (inv!6877 (transformation!1045 (h!10886 rules!3103))) e!334277)))

(declare-fun b!552462 () Bool)

(declare-fun equivClasses!384 (Int Int) Bool)

(assert (=> b!552462 (= e!334277 (equivClasses!384 (toChars!1751 (transformation!1045 (h!10886 rules!3103))) (toValue!1892 (transformation!1045 (h!10886 rules!3103)))))))

(assert (= (and d!192614 res!236949) b!552462))

(declare-fun m!801995 () Bool)

(assert (=> d!192614 m!801995))

(declare-fun m!801997 () Bool)

(assert (=> b!552462 m!801997))

(assert (=> b!552421 d!192614))

(declare-fun d!192620 () Bool)

(declare-fun res!236956 () Bool)

(declare-fun e!334282 () Bool)

(assert (=> d!192620 (=> (not res!236956) (not e!334282))))

(assert (=> d!192620 (= res!236956 (not (isEmpty!3957 (originalCharacters!1084 token!491))))))

(assert (=> d!192620 (= (inv!6878 token!491) e!334282)))

(declare-fun b!552471 () Bool)

(declare-fun res!236957 () Bool)

(assert (=> b!552471 (=> (not res!236957) (not e!334282))))

(assert (=> b!552471 (= res!236957 (= (originalCharacters!1084 token!491) (list!2271 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 token!491))) (value!34649 token!491)))))))

(declare-fun b!552472 () Bool)

(assert (=> b!552472 (= e!334282 (= (size!4376 token!491) (size!4377 (originalCharacters!1084 token!491))))))

(assert (= (and d!192620 res!236956) b!552471))

(assert (= (and b!552471 res!236957) b!552472))

(declare-fun b_lambda!21249 () Bool)

(assert (=> (not b_lambda!21249) (not b!552471)))

(assert (=> b!552471 t!75170))

(declare-fun b_and!53967 () Bool)

(assert (= b_and!53963 (and (=> t!75170 result!53998) b_and!53967)))

(assert (=> b!552471 t!75172))

(declare-fun b_and!53969 () Bool)

(assert (= b_and!53965 (and (=> t!75172 result!54002) b_and!53969)))

(declare-fun m!802013 () Bool)

(assert (=> d!192620 m!802013))

(assert (=> b!552471 m!801983))

(assert (=> b!552471 m!801983))

(declare-fun m!802015 () Bool)

(assert (=> b!552471 m!802015))

(declare-fun m!802017 () Bool)

(assert (=> b!552472 m!802017))

(assert (=> start!51156 d!192620))

(declare-fun b!552588 () Bool)

(declare-fun res!237011 () Bool)

(declare-fun e!334337 () Bool)

(assert (=> b!552588 (=> (not res!237011) (not e!334337))))

(declare-fun lt!233118 () Option!1395)

(assert (=> b!552588 (= res!237011 (< (size!4377 (_2!3512 (get!2082 lt!233118))) (size!4377 input!2705)))))

(declare-fun b!552589 () Bool)

(declare-fun res!237013 () Bool)

(assert (=> b!552589 (=> (not res!237013) (not e!334337))))

(declare-fun apply!1312 (TokenValueInjection!1906 BalanceConc!3532) TokenValue!1069)

(declare-fun seqFromList!1235 (List!5493) BalanceConc!3532)

(assert (=> b!552589 (= res!237013 (= (value!34649 (_1!3512 (get!2082 lt!233118))) (apply!1312 (transformation!1045 (rule!1771 (_1!3512 (get!2082 lt!233118)))) (seqFromList!1235 (originalCharacters!1084 (_1!3512 (get!2082 lt!233118)))))))))

(declare-fun b!552590 () Bool)

(declare-fun res!237010 () Bool)

(assert (=> b!552590 (=> (not res!237010) (not e!334337))))

(assert (=> b!552590 (= res!237010 (= (++!1533 (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233118)))) (_2!3512 (get!2082 lt!233118))) input!2705))))

(declare-fun b!552591 () Bool)

(declare-fun res!237009 () Bool)

(assert (=> b!552591 (=> (not res!237009) (not e!334337))))

(declare-fun matchR!532 (Regex!1379 List!5493) Bool)

(assert (=> b!552591 (= res!237009 (matchR!532 (regex!1045 (rule!1771 (_1!3512 (get!2082 lt!233118)))) (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233118))))))))

(declare-fun d!192628 () Bool)

(declare-fun e!334336 () Bool)

(assert (=> d!192628 e!334336))

(declare-fun res!237012 () Bool)

(assert (=> d!192628 (=> res!237012 e!334336)))

(declare-fun isEmpty!3959 (Option!1395) Bool)

(assert (=> d!192628 (= res!237012 (isEmpty!3959 lt!233118))))

(declare-fun e!334338 () Option!1395)

(assert (=> d!192628 (= lt!233118 e!334338)))

(declare-fun c!103809 () Bool)

(assert (=> d!192628 (= c!103809 (and ((_ is Cons!5485) rules!3103) ((_ is Nil!5485) (t!75168 rules!3103))))))

(declare-fun lt!233117 () Unit!9727)

(declare-fun lt!233119 () Unit!9727)

(assert (=> d!192628 (= lt!233117 lt!233119)))

(declare-fun isPrefix!681 (List!5493 List!5493) Bool)

(assert (=> d!192628 (isPrefix!681 input!2705 input!2705)))

(declare-fun lemmaIsPrefixRefl!419 (List!5493 List!5493) Unit!9727)

(assert (=> d!192628 (= lt!233119 (lemmaIsPrefixRefl!419 input!2705 input!2705))))

(declare-fun rulesValidInductive!370 (LexerInterface!931 List!5495) Bool)

(assert (=> d!192628 (rulesValidInductive!370 thiss!22590 rules!3103)))

(assert (=> d!192628 (= (maxPrefix!629 thiss!22590 rules!3103 input!2705) lt!233118)))

(declare-fun call!38440 () Option!1395)

(declare-fun bm!38435 () Bool)

(declare-fun maxPrefixOneRule!336 (LexerInterface!931 Rule!1890 List!5493) Option!1395)

(assert (=> bm!38435 (= call!38440 (maxPrefixOneRule!336 thiss!22590 (h!10886 rules!3103) input!2705))))

(declare-fun b!552592 () Bool)

(declare-fun contains!1281 (List!5495 Rule!1890) Bool)

(assert (=> b!552592 (= e!334337 (contains!1281 rules!3103 (rule!1771 (_1!3512 (get!2082 lt!233118)))))))

(declare-fun b!552593 () Bool)

(declare-fun res!237014 () Bool)

(assert (=> b!552593 (=> (not res!237014) (not e!334337))))

(assert (=> b!552593 (= res!237014 (= (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233118)))) (originalCharacters!1084 (_1!3512 (get!2082 lt!233118)))))))

(declare-fun b!552594 () Bool)

(declare-fun lt!233115 () Option!1395)

(declare-fun lt!233116 () Option!1395)

(assert (=> b!552594 (= e!334338 (ite (and ((_ is None!1394) lt!233115) ((_ is None!1394) lt!233116)) None!1394 (ite ((_ is None!1394) lt!233116) lt!233115 (ite ((_ is None!1394) lt!233115) lt!233116 (ite (>= (size!4376 (_1!3512 (v!16221 lt!233115))) (size!4376 (_1!3512 (v!16221 lt!233116)))) lt!233115 lt!233116)))))))

(assert (=> b!552594 (= lt!233115 call!38440)))

(assert (=> b!552594 (= lt!233116 (maxPrefix!629 thiss!22590 (t!75168 rules!3103) input!2705))))

(declare-fun b!552595 () Bool)

(assert (=> b!552595 (= e!334336 e!334337)))

(declare-fun res!237015 () Bool)

(assert (=> b!552595 (=> (not res!237015) (not e!334337))))

(assert (=> b!552595 (= res!237015 (isDefined!1207 lt!233118))))

(declare-fun b!552596 () Bool)

(assert (=> b!552596 (= e!334338 call!38440)))

(assert (= (and d!192628 c!103809) b!552596))

(assert (= (and d!192628 (not c!103809)) b!552594))

(assert (= (or b!552596 b!552594) bm!38435))

(assert (= (and d!192628 (not res!237012)) b!552595))

(assert (= (and b!552595 res!237015) b!552593))

(assert (= (and b!552593 res!237014) b!552588))

(assert (= (and b!552588 res!237011) b!552590))

(assert (= (and b!552590 res!237010) b!552589))

(assert (= (and b!552589 res!237013) b!552591))

(assert (= (and b!552591 res!237009) b!552592))

(declare-fun m!802133 () Bool)

(assert (=> b!552589 m!802133))

(declare-fun m!802135 () Bool)

(assert (=> b!552589 m!802135))

(assert (=> b!552589 m!802135))

(declare-fun m!802137 () Bool)

(assert (=> b!552589 m!802137))

(declare-fun m!802139 () Bool)

(assert (=> bm!38435 m!802139))

(assert (=> b!552593 m!802133))

(declare-fun m!802141 () Bool)

(assert (=> b!552593 m!802141))

(assert (=> b!552593 m!802141))

(declare-fun m!802143 () Bool)

(assert (=> b!552593 m!802143))

(declare-fun m!802145 () Bool)

(assert (=> d!192628 m!802145))

(declare-fun m!802147 () Bool)

(assert (=> d!192628 m!802147))

(declare-fun m!802149 () Bool)

(assert (=> d!192628 m!802149))

(declare-fun m!802151 () Bool)

(assert (=> d!192628 m!802151))

(declare-fun m!802153 () Bool)

(assert (=> b!552594 m!802153))

(assert (=> b!552588 m!802133))

(declare-fun m!802155 () Bool)

(assert (=> b!552588 m!802155))

(declare-fun m!802157 () Bool)

(assert (=> b!552588 m!802157))

(assert (=> b!552592 m!802133))

(declare-fun m!802159 () Bool)

(assert (=> b!552592 m!802159))

(declare-fun m!802161 () Bool)

(assert (=> b!552595 m!802161))

(assert (=> b!552590 m!802133))

(assert (=> b!552590 m!802141))

(assert (=> b!552590 m!802141))

(assert (=> b!552590 m!802143))

(assert (=> b!552590 m!802143))

(declare-fun m!802163 () Bool)

(assert (=> b!552590 m!802163))

(assert (=> b!552591 m!802133))

(assert (=> b!552591 m!802141))

(assert (=> b!552591 m!802141))

(assert (=> b!552591 m!802143))

(assert (=> b!552591 m!802143))

(declare-fun m!802165 () Bool)

(assert (=> b!552591 m!802165))

(assert (=> b!552413 d!192628))

(declare-fun d!192656 () Bool)

(declare-fun c!103815 () Bool)

(assert (=> d!192656 (= c!103815 ((_ is IntegerValue!3207) (value!34649 token!491)))))

(declare-fun e!334346 () Bool)

(assert (=> d!192656 (= (inv!21 (value!34649 token!491)) e!334346)))

(declare-fun b!552607 () Bool)

(declare-fun e!334345 () Bool)

(declare-fun inv!15 (TokenValue!1069) Bool)

(assert (=> b!552607 (= e!334345 (inv!15 (value!34649 token!491)))))

(declare-fun b!552608 () Bool)

(declare-fun e!334347 () Bool)

(assert (=> b!552608 (= e!334346 e!334347)))

(declare-fun c!103814 () Bool)

(assert (=> b!552608 (= c!103814 ((_ is IntegerValue!3208) (value!34649 token!491)))))

(declare-fun b!552609 () Bool)

(declare-fun res!237018 () Bool)

(assert (=> b!552609 (=> res!237018 e!334345)))

(assert (=> b!552609 (= res!237018 (not ((_ is IntegerValue!3209) (value!34649 token!491))))))

(assert (=> b!552609 (= e!334347 e!334345)))

(declare-fun b!552610 () Bool)

(declare-fun inv!17 (TokenValue!1069) Bool)

(assert (=> b!552610 (= e!334347 (inv!17 (value!34649 token!491)))))

(declare-fun b!552611 () Bool)

(declare-fun inv!16 (TokenValue!1069) Bool)

(assert (=> b!552611 (= e!334346 (inv!16 (value!34649 token!491)))))

(assert (= (and d!192656 c!103815) b!552611))

(assert (= (and d!192656 (not c!103815)) b!552608))

(assert (= (and b!552608 c!103814) b!552610))

(assert (= (and b!552608 (not c!103814)) b!552609))

(assert (= (and b!552609 (not res!237018)) b!552607))

(declare-fun m!802167 () Bool)

(assert (=> b!552607 m!802167))

(declare-fun m!802169 () Bool)

(assert (=> b!552610 m!802169))

(declare-fun m!802171 () Bool)

(assert (=> b!552611 m!802171))

(assert (=> b!552414 d!192656))

(declare-fun d!192658 () Bool)

(assert (=> d!192658 (= (inv!6874 (tag!1307 (rule!1771 token!491))) (= (mod (str.len (value!34623 (tag!1307 (rule!1771 token!491)))) 2) 0))))

(assert (=> b!552415 d!192658))

(declare-fun d!192660 () Bool)

(declare-fun res!237019 () Bool)

(declare-fun e!334348 () Bool)

(assert (=> d!192660 (=> (not res!237019) (not e!334348))))

(assert (=> d!192660 (= res!237019 (semiInverseModEq!401 (toChars!1751 (transformation!1045 (rule!1771 token!491))) (toValue!1892 (transformation!1045 (rule!1771 token!491)))))))

(assert (=> d!192660 (= (inv!6877 (transformation!1045 (rule!1771 token!491))) e!334348)))

(declare-fun b!552612 () Bool)

(assert (=> b!552612 (= e!334348 (equivClasses!384 (toChars!1751 (transformation!1045 (rule!1771 token!491))) (toValue!1892 (transformation!1045 (rule!1771 token!491)))))))

(assert (= (and d!192660 res!237019) b!552612))

(declare-fun m!802173 () Bool)

(assert (=> d!192660 m!802173))

(declare-fun m!802175 () Bool)

(assert (=> b!552612 m!802175))

(assert (=> b!552415 d!192660))

(declare-fun d!192662 () Bool)

(declare-fun lt!233122 () Int)

(assert (=> d!192662 (>= lt!233122 0)))

(declare-fun e!334351 () Int)

(assert (=> d!192662 (= lt!233122 e!334351)))

(declare-fun c!103818 () Bool)

(assert (=> d!192662 (= c!103818 ((_ is Nil!5483) lt!233060))))

(assert (=> d!192662 (= (size!4377 lt!233060) lt!233122)))

(declare-fun b!552617 () Bool)

(assert (=> b!552617 (= e!334351 0)))

(declare-fun b!552618 () Bool)

(assert (=> b!552618 (= e!334351 (+ 1 (size!4377 (t!75166 lt!233060))))))

(assert (= (and d!192662 c!103818) b!552617))

(assert (= (and d!192662 (not c!103818)) b!552618))

(declare-fun m!802177 () Bool)

(assert (=> b!552618 m!802177))

(assert (=> b!552416 d!192662))

(declare-fun d!192664 () Bool)

(assert (=> d!192664 (and (= lt!233060 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!233125 () Unit!9727)

(declare-fun choose!3942 (List!5493 List!5493 List!5493 List!5493) Unit!9727)

(assert (=> d!192664 (= lt!233125 (choose!3942 lt!233060 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!192664 (= (++!1533 lt!233060 suffix!1342) (++!1533 input!2705 suffix!1342))))

(assert (=> d!192664 (= (lemmaConcatSameAndSameSizesThenSameLists!122 lt!233060 suffix!1342 input!2705 suffix!1342) lt!233125)))

(declare-fun bs!67917 () Bool)

(assert (= bs!67917 d!192664))

(declare-fun m!802179 () Bool)

(assert (=> bs!67917 m!802179))

(assert (=> bs!67917 m!801955))

(assert (=> bs!67917 m!801927))

(assert (=> b!552416 d!192664))

(declare-fun d!192666 () Bool)

(declare-fun lt!233126 () Int)

(assert (=> d!192666 (>= lt!233126 0)))

(declare-fun e!334352 () Int)

(assert (=> d!192666 (= lt!233126 e!334352)))

(declare-fun c!103819 () Bool)

(assert (=> d!192666 (= c!103819 ((_ is Nil!5483) lt!233063))))

(assert (=> d!192666 (= (size!4377 lt!233063) lt!233126)))

(declare-fun b!552619 () Bool)

(assert (=> b!552619 (= e!334352 0)))

(declare-fun b!552620 () Bool)

(assert (=> b!552620 (= e!334352 (+ 1 (size!4377 (t!75166 lt!233063))))))

(assert (= (and d!192666 c!103819) b!552619))

(assert (= (and d!192666 (not c!103819)) b!552620))

(declare-fun m!802181 () Bool)

(assert (=> b!552620 m!802181))

(assert (=> b!552416 d!192666))

(declare-fun d!192668 () Bool)

(assert (=> d!192668 (= (list!2271 (charsOf!674 (_1!3512 (v!16221 lt!233064)))) (list!2273 (c!103787 (charsOf!674 (_1!3512 (v!16221 lt!233064))))))))

(declare-fun bs!67918 () Bool)

(assert (= bs!67918 d!192668))

(declare-fun m!802183 () Bool)

(assert (=> bs!67918 m!802183))

(assert (=> b!552416 d!192668))

(declare-fun d!192670 () Bool)

(declare-fun lt!233127 () BalanceConc!3532)

(assert (=> d!192670 (= (list!2271 lt!233127) (originalCharacters!1084 (_1!3512 (v!16221 lt!233064))))))

(assert (=> d!192670 (= lt!233127 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 (_1!3512 (v!16221 lt!233064))))) (value!34649 (_1!3512 (v!16221 lt!233064)))))))

(assert (=> d!192670 (= (charsOf!674 (_1!3512 (v!16221 lt!233064))) lt!233127)))

(declare-fun b_lambda!21261 () Bool)

(assert (=> (not b_lambda!21261) (not d!192670)))

(declare-fun tb!48259 () Bool)

(declare-fun t!75187 () Bool)

(assert (=> (and b!552418 (= (toChars!1751 (transformation!1045 (h!10886 rules!3103))) (toChars!1751 (transformation!1045 (rule!1771 (_1!3512 (v!16221 lt!233064)))))) t!75187) tb!48259))

(declare-fun b!552621 () Bool)

(declare-fun e!334353 () Bool)

(declare-fun tp!174797 () Bool)

(assert (=> b!552621 (= e!334353 (and (inv!6881 (c!103787 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 (_1!3512 (v!16221 lt!233064))))) (value!34649 (_1!3512 (v!16221 lt!233064)))))) tp!174797))))

(declare-fun result!54024 () Bool)

(assert (=> tb!48259 (= result!54024 (and (inv!6882 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 (_1!3512 (v!16221 lt!233064))))) (value!34649 (_1!3512 (v!16221 lt!233064))))) e!334353))))

(assert (= tb!48259 b!552621))

(declare-fun m!802185 () Bool)

(assert (=> b!552621 m!802185))

(declare-fun m!802187 () Bool)

(assert (=> tb!48259 m!802187))

(assert (=> d!192670 t!75187))

(declare-fun b_and!53987 () Bool)

(assert (= b_and!53967 (and (=> t!75187 result!54024) b_and!53987)))

(declare-fun t!75189 () Bool)

(declare-fun tb!48261 () Bool)

(assert (=> (and b!552412 (= (toChars!1751 (transformation!1045 (rule!1771 token!491))) (toChars!1751 (transformation!1045 (rule!1771 (_1!3512 (v!16221 lt!233064)))))) t!75189) tb!48261))

(declare-fun result!54026 () Bool)

(assert (= result!54026 result!54024))

(assert (=> d!192670 t!75189))

(declare-fun b_and!53989 () Bool)

(assert (= b_and!53969 (and (=> t!75189 result!54026) b_and!53989)))

(declare-fun m!802189 () Bool)

(assert (=> d!192670 m!802189))

(declare-fun m!802191 () Bool)

(assert (=> d!192670 m!802191))

(assert (=> b!552416 d!192670))

(declare-fun d!192672 () Bool)

(assert (=> d!192672 (= (get!2082 lt!233059) (v!16221 lt!233059))))

(assert (=> b!552406 d!192672))

(declare-fun b!552631 () Bool)

(declare-fun e!334359 () List!5493)

(assert (=> b!552631 (= e!334359 (Cons!5483 (h!10884 lt!233060) (++!1533 (t!75166 lt!233060) suffix!1342)))))

(declare-fun lt!233130 () List!5493)

(declare-fun e!334358 () Bool)

(declare-fun b!552633 () Bool)

(assert (=> b!552633 (= e!334358 (or (not (= suffix!1342 Nil!5483)) (= lt!233130 lt!233060)))))

(declare-fun d!192674 () Bool)

(assert (=> d!192674 e!334358))

(declare-fun res!237025 () Bool)

(assert (=> d!192674 (=> (not res!237025) (not e!334358))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!956 (List!5493) (InoxSet C!3680))

(assert (=> d!192674 (= res!237025 (= (content!956 lt!233130) ((_ map or) (content!956 lt!233060) (content!956 suffix!1342))))))

(assert (=> d!192674 (= lt!233130 e!334359)))

(declare-fun c!103822 () Bool)

(assert (=> d!192674 (= c!103822 ((_ is Nil!5483) lt!233060))))

(assert (=> d!192674 (= (++!1533 lt!233060 suffix!1342) lt!233130)))

(declare-fun b!552630 () Bool)

(assert (=> b!552630 (= e!334359 suffix!1342)))

(declare-fun b!552632 () Bool)

(declare-fun res!237024 () Bool)

(assert (=> b!552632 (=> (not res!237024) (not e!334358))))

(assert (=> b!552632 (= res!237024 (= (size!4377 lt!233130) (+ (size!4377 lt!233060) (size!4377 suffix!1342))))))

(assert (= (and d!192674 c!103822) b!552630))

(assert (= (and d!192674 (not c!103822)) b!552631))

(assert (= (and d!192674 res!237025) b!552632))

(assert (= (and b!552632 res!237024) b!552633))

(declare-fun m!802193 () Bool)

(assert (=> b!552631 m!802193))

(declare-fun m!802195 () Bool)

(assert (=> d!192674 m!802195))

(declare-fun m!802197 () Bool)

(assert (=> d!192674 m!802197))

(declare-fun m!802199 () Bool)

(assert (=> d!192674 m!802199))

(declare-fun m!802201 () Bool)

(assert (=> b!552632 m!802201))

(assert (=> b!552632 m!801917))

(declare-fun m!802203 () Bool)

(assert (=> b!552632 m!802203))

(assert (=> b!552417 d!192674))

(declare-fun d!192676 () Bool)

(assert (=> d!192676 (= (isDefined!1207 lt!233059) (not (isEmpty!3959 lt!233059)))))

(declare-fun bs!67919 () Bool)

(assert (= bs!67919 d!192676))

(declare-fun m!802205 () Bool)

(assert (=> bs!67919 m!802205))

(assert (=> b!552407 d!192676))

(declare-fun b!552634 () Bool)

(declare-fun res!237028 () Bool)

(declare-fun e!334361 () Bool)

(assert (=> b!552634 (=> (not res!237028) (not e!334361))))

(declare-fun lt!233134 () Option!1395)

(assert (=> b!552634 (= res!237028 (< (size!4377 (_2!3512 (get!2082 lt!233134))) (size!4377 lt!233062)))))

(declare-fun b!552635 () Bool)

(declare-fun res!237030 () Bool)

(assert (=> b!552635 (=> (not res!237030) (not e!334361))))

(assert (=> b!552635 (= res!237030 (= (value!34649 (_1!3512 (get!2082 lt!233134))) (apply!1312 (transformation!1045 (rule!1771 (_1!3512 (get!2082 lt!233134)))) (seqFromList!1235 (originalCharacters!1084 (_1!3512 (get!2082 lt!233134)))))))))

(declare-fun b!552636 () Bool)

(declare-fun res!237027 () Bool)

(assert (=> b!552636 (=> (not res!237027) (not e!334361))))

(assert (=> b!552636 (= res!237027 (= (++!1533 (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233134)))) (_2!3512 (get!2082 lt!233134))) lt!233062))))

(declare-fun b!552637 () Bool)

(declare-fun res!237026 () Bool)

(assert (=> b!552637 (=> (not res!237026) (not e!334361))))

(assert (=> b!552637 (= res!237026 (matchR!532 (regex!1045 (rule!1771 (_1!3512 (get!2082 lt!233134)))) (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233134))))))))

(declare-fun d!192678 () Bool)

(declare-fun e!334360 () Bool)

(assert (=> d!192678 e!334360))

(declare-fun res!237029 () Bool)

(assert (=> d!192678 (=> res!237029 e!334360)))

(assert (=> d!192678 (= res!237029 (isEmpty!3959 lt!233134))))

(declare-fun e!334362 () Option!1395)

(assert (=> d!192678 (= lt!233134 e!334362)))

(declare-fun c!103823 () Bool)

(assert (=> d!192678 (= c!103823 (and ((_ is Cons!5485) rules!3103) ((_ is Nil!5485) (t!75168 rules!3103))))))

(declare-fun lt!233133 () Unit!9727)

(declare-fun lt!233135 () Unit!9727)

(assert (=> d!192678 (= lt!233133 lt!233135)))

(assert (=> d!192678 (isPrefix!681 lt!233062 lt!233062)))

(assert (=> d!192678 (= lt!233135 (lemmaIsPrefixRefl!419 lt!233062 lt!233062))))

(assert (=> d!192678 (rulesValidInductive!370 thiss!22590 rules!3103)))

(assert (=> d!192678 (= (maxPrefix!629 thiss!22590 rules!3103 lt!233062) lt!233134)))

(declare-fun bm!38436 () Bool)

(declare-fun call!38441 () Option!1395)

(assert (=> bm!38436 (= call!38441 (maxPrefixOneRule!336 thiss!22590 (h!10886 rules!3103) lt!233062))))

(declare-fun b!552638 () Bool)

(assert (=> b!552638 (= e!334361 (contains!1281 rules!3103 (rule!1771 (_1!3512 (get!2082 lt!233134)))))))

(declare-fun b!552639 () Bool)

(declare-fun res!237031 () Bool)

(assert (=> b!552639 (=> (not res!237031) (not e!334361))))

(assert (=> b!552639 (= res!237031 (= (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233134)))) (originalCharacters!1084 (_1!3512 (get!2082 lt!233134)))))))

(declare-fun b!552640 () Bool)

(declare-fun lt!233131 () Option!1395)

(declare-fun lt!233132 () Option!1395)

(assert (=> b!552640 (= e!334362 (ite (and ((_ is None!1394) lt!233131) ((_ is None!1394) lt!233132)) None!1394 (ite ((_ is None!1394) lt!233132) lt!233131 (ite ((_ is None!1394) lt!233131) lt!233132 (ite (>= (size!4376 (_1!3512 (v!16221 lt!233131))) (size!4376 (_1!3512 (v!16221 lt!233132)))) lt!233131 lt!233132)))))))

(assert (=> b!552640 (= lt!233131 call!38441)))

(assert (=> b!552640 (= lt!233132 (maxPrefix!629 thiss!22590 (t!75168 rules!3103) lt!233062))))

(declare-fun b!552641 () Bool)

(assert (=> b!552641 (= e!334360 e!334361)))

(declare-fun res!237032 () Bool)

(assert (=> b!552641 (=> (not res!237032) (not e!334361))))

(assert (=> b!552641 (= res!237032 (isDefined!1207 lt!233134))))

(declare-fun b!552642 () Bool)

(assert (=> b!552642 (= e!334362 call!38441)))

(assert (= (and d!192678 c!103823) b!552642))

(assert (= (and d!192678 (not c!103823)) b!552640))

(assert (= (or b!552642 b!552640) bm!38436))

(assert (= (and d!192678 (not res!237029)) b!552641))

(assert (= (and b!552641 res!237032) b!552639))

(assert (= (and b!552639 res!237031) b!552634))

(assert (= (and b!552634 res!237028) b!552636))

(assert (= (and b!552636 res!237027) b!552635))

(assert (= (and b!552635 res!237030) b!552637))

(assert (= (and b!552637 res!237026) b!552638))

(declare-fun m!802207 () Bool)

(assert (=> b!552635 m!802207))

(declare-fun m!802209 () Bool)

(assert (=> b!552635 m!802209))

(assert (=> b!552635 m!802209))

(declare-fun m!802211 () Bool)

(assert (=> b!552635 m!802211))

(declare-fun m!802213 () Bool)

(assert (=> bm!38436 m!802213))

(assert (=> b!552639 m!802207))

(declare-fun m!802215 () Bool)

(assert (=> b!552639 m!802215))

(assert (=> b!552639 m!802215))

(declare-fun m!802217 () Bool)

(assert (=> b!552639 m!802217))

(declare-fun m!802219 () Bool)

(assert (=> d!192678 m!802219))

(declare-fun m!802221 () Bool)

(assert (=> d!192678 m!802221))

(declare-fun m!802223 () Bool)

(assert (=> d!192678 m!802223))

(assert (=> d!192678 m!802151))

(declare-fun m!802225 () Bool)

(assert (=> b!552640 m!802225))

(assert (=> b!552634 m!802207))

(declare-fun m!802227 () Bool)

(assert (=> b!552634 m!802227))

(declare-fun m!802229 () Bool)

(assert (=> b!552634 m!802229))

(assert (=> b!552638 m!802207))

(declare-fun m!802231 () Bool)

(assert (=> b!552638 m!802231))

(declare-fun m!802233 () Bool)

(assert (=> b!552641 m!802233))

(assert (=> b!552636 m!802207))

(assert (=> b!552636 m!802215))

(assert (=> b!552636 m!802215))

(assert (=> b!552636 m!802217))

(assert (=> b!552636 m!802217))

(declare-fun m!802235 () Bool)

(assert (=> b!552636 m!802235))

(assert (=> b!552637 m!802207))

(assert (=> b!552637 m!802215))

(assert (=> b!552637 m!802215))

(assert (=> b!552637 m!802217))

(assert (=> b!552637 m!802217))

(declare-fun m!802237 () Bool)

(assert (=> b!552637 m!802237))

(assert (=> b!552407 d!192678))

(declare-fun b!552644 () Bool)

(declare-fun e!334364 () List!5493)

(assert (=> b!552644 (= e!334364 (Cons!5483 (h!10884 input!2705) (++!1533 (t!75166 input!2705) suffix!1342)))))

(declare-fun b!552646 () Bool)

(declare-fun lt!233136 () List!5493)

(declare-fun e!334363 () Bool)

(assert (=> b!552646 (= e!334363 (or (not (= suffix!1342 Nil!5483)) (= lt!233136 input!2705)))))

(declare-fun d!192680 () Bool)

(assert (=> d!192680 e!334363))

(declare-fun res!237034 () Bool)

(assert (=> d!192680 (=> (not res!237034) (not e!334363))))

(assert (=> d!192680 (= res!237034 (= (content!956 lt!233136) ((_ map or) (content!956 input!2705) (content!956 suffix!1342))))))

(assert (=> d!192680 (= lt!233136 e!334364)))

(declare-fun c!103824 () Bool)

(assert (=> d!192680 (= c!103824 ((_ is Nil!5483) input!2705))))

(assert (=> d!192680 (= (++!1533 input!2705 suffix!1342) lt!233136)))

(declare-fun b!552643 () Bool)

(assert (=> b!552643 (= e!334364 suffix!1342)))

(declare-fun b!552645 () Bool)

(declare-fun res!237033 () Bool)

(assert (=> b!552645 (=> (not res!237033) (not e!334363))))

(assert (=> b!552645 (= res!237033 (= (size!4377 lt!233136) (+ (size!4377 input!2705) (size!4377 suffix!1342))))))

(assert (= (and d!192680 c!103824) b!552643))

(assert (= (and d!192680 (not c!103824)) b!552644))

(assert (= (and d!192680 res!237034) b!552645))

(assert (= (and b!552645 res!237033) b!552646))

(declare-fun m!802239 () Bool)

(assert (=> b!552644 m!802239))

(declare-fun m!802241 () Bool)

(assert (=> d!192680 m!802241))

(declare-fun m!802243 () Bool)

(assert (=> d!192680 m!802243))

(assert (=> d!192680 m!802199))

(declare-fun m!802245 () Bool)

(assert (=> b!552645 m!802245))

(assert (=> b!552645 m!802157))

(assert (=> b!552645 m!802203))

(assert (=> b!552407 d!192680))

(declare-fun d!192682 () Bool)

(assert (=> d!192682 (= (isEmpty!3956 rules!3103) ((_ is Nil!5485) rules!3103))))

(assert (=> b!552408 d!192682))

(declare-fun d!192684 () Bool)

(assert (=> d!192684 (= (isEmpty!3957 input!2705) ((_ is Nil!5483) input!2705))))

(assert (=> b!552419 d!192684))

(declare-fun d!192686 () Bool)

(declare-fun res!237037 () Bool)

(declare-fun e!334367 () Bool)

(assert (=> d!192686 (=> (not res!237037) (not e!334367))))

(declare-fun rulesValid!366 (LexerInterface!931 List!5495) Bool)

(assert (=> d!192686 (= res!237037 (rulesValid!366 thiss!22590 rules!3103))))

(assert (=> d!192686 (= (rulesInvariant!894 thiss!22590 rules!3103) e!334367)))

(declare-fun b!552649 () Bool)

(declare-datatypes ((List!5497 0))(
  ( (Nil!5487) (Cons!5487 (h!10888 String!7088) (t!75194 List!5497)) )
))
(declare-fun noDuplicateTag!366 (LexerInterface!931 List!5495 List!5497) Bool)

(assert (=> b!552649 (= e!334367 (noDuplicateTag!366 thiss!22590 rules!3103 Nil!5487))))

(assert (= (and d!192686 res!237037) b!552649))

(declare-fun m!802247 () Bool)

(assert (=> d!192686 m!802247))

(declare-fun m!802249 () Bool)

(assert (=> b!552649 m!802249))

(assert (=> b!552420 d!192686))

(declare-fun b!552651 () Bool)

(declare-fun e!334369 () List!5493)

(assert (=> b!552651 (= e!334369 (Cons!5483 (h!10884 lt!233063) (++!1533 (t!75166 lt!233063) (_2!3512 (v!16221 lt!233064)))))))

(declare-fun b!552653 () Bool)

(declare-fun lt!233137 () List!5493)

(declare-fun e!334368 () Bool)

(assert (=> b!552653 (= e!334368 (or (not (= (_2!3512 (v!16221 lt!233064)) Nil!5483)) (= lt!233137 lt!233063)))))

(declare-fun d!192688 () Bool)

(assert (=> d!192688 e!334368))

(declare-fun res!237039 () Bool)

(assert (=> d!192688 (=> (not res!237039) (not e!334368))))

(assert (=> d!192688 (= res!237039 (= (content!956 lt!233137) ((_ map or) (content!956 lt!233063) (content!956 (_2!3512 (v!16221 lt!233064))))))))

(assert (=> d!192688 (= lt!233137 e!334369)))

(declare-fun c!103825 () Bool)

(assert (=> d!192688 (= c!103825 ((_ is Nil!5483) lt!233063))))

(assert (=> d!192688 (= (++!1533 lt!233063 (_2!3512 (v!16221 lt!233064))) lt!233137)))

(declare-fun b!552650 () Bool)

(assert (=> b!552650 (= e!334369 (_2!3512 (v!16221 lt!233064)))))

(declare-fun b!552652 () Bool)

(declare-fun res!237038 () Bool)

(assert (=> b!552652 (=> (not res!237038) (not e!334368))))

(assert (=> b!552652 (= res!237038 (= (size!4377 lt!233137) (+ (size!4377 lt!233063) (size!4377 (_2!3512 (v!16221 lt!233064))))))))

(assert (= (and d!192688 c!103825) b!552650))

(assert (= (and d!192688 (not c!103825)) b!552651))

(assert (= (and d!192688 res!237039) b!552652))

(assert (= (and b!552652 res!237038) b!552653))

(declare-fun m!802251 () Bool)

(assert (=> b!552651 m!802251))

(declare-fun m!802253 () Bool)

(assert (=> d!192688 m!802253))

(declare-fun m!802255 () Bool)

(assert (=> d!192688 m!802255))

(declare-fun m!802257 () Bool)

(assert (=> d!192688 m!802257))

(declare-fun m!802259 () Bool)

(assert (=> b!552652 m!802259))

(assert (=> b!552652 m!801913))

(declare-fun m!802261 () Bool)

(assert (=> b!552652 m!802261))

(assert (=> b!552409 d!192688))

(declare-fun b!552666 () Bool)

(declare-fun e!334372 () Bool)

(declare-fun tp!174811 () Bool)

(assert (=> b!552666 (= e!334372 tp!174811)))

(declare-fun b!552665 () Bool)

(declare-fun tp!174812 () Bool)

(declare-fun tp!174808 () Bool)

(assert (=> b!552665 (= e!334372 (and tp!174812 tp!174808))))

(declare-fun b!552664 () Bool)

(assert (=> b!552664 (= e!334372 tp_is_empty!3113)))

(assert (=> b!552415 (= tp!174746 e!334372)))

(declare-fun b!552667 () Bool)

(declare-fun tp!174810 () Bool)

(declare-fun tp!174809 () Bool)

(assert (=> b!552667 (= e!334372 (and tp!174810 tp!174809))))

(assert (= (and b!552415 ((_ is ElementMatch!1379) (regex!1045 (rule!1771 token!491)))) b!552664))

(assert (= (and b!552415 ((_ is Concat!2448) (regex!1045 (rule!1771 token!491)))) b!552665))

(assert (= (and b!552415 ((_ is Star!1379) (regex!1045 (rule!1771 token!491)))) b!552666))

(assert (= (and b!552415 ((_ is Union!1379) (regex!1045 (rule!1771 token!491)))) b!552667))

(declare-fun b!552670 () Bool)

(declare-fun e!334373 () Bool)

(declare-fun tp!174816 () Bool)

(assert (=> b!552670 (= e!334373 tp!174816)))

(declare-fun b!552669 () Bool)

(declare-fun tp!174817 () Bool)

(declare-fun tp!174813 () Bool)

(assert (=> b!552669 (= e!334373 (and tp!174817 tp!174813))))

(declare-fun b!552668 () Bool)

(assert (=> b!552668 (= e!334373 tp_is_empty!3113)))

(assert (=> b!552421 (= tp!174747 e!334373)))

(declare-fun b!552671 () Bool)

(declare-fun tp!174815 () Bool)

(declare-fun tp!174814 () Bool)

(assert (=> b!552671 (= e!334373 (and tp!174815 tp!174814))))

(assert (= (and b!552421 ((_ is ElementMatch!1379) (regex!1045 (h!10886 rules!3103)))) b!552668))

(assert (= (and b!552421 ((_ is Concat!2448) (regex!1045 (h!10886 rules!3103)))) b!552669))

(assert (= (and b!552421 ((_ is Star!1379) (regex!1045 (h!10886 rules!3103)))) b!552670))

(assert (= (and b!552421 ((_ is Union!1379) (regex!1045 (h!10886 rules!3103)))) b!552671))

(declare-fun b!552682 () Bool)

(declare-fun b_free!15485 () Bool)

(declare-fun b_next!15501 () Bool)

(assert (=> b!552682 (= b_free!15485 (not b_next!15501))))

(declare-fun tp!174827 () Bool)

(declare-fun b_and!53991 () Bool)

(assert (=> b!552682 (= tp!174827 b_and!53991)))

(declare-fun b_free!15487 () Bool)

(declare-fun b_next!15503 () Bool)

(assert (=> b!552682 (= b_free!15487 (not b_next!15503))))

(declare-fun t!75191 () Bool)

(declare-fun tb!48263 () Bool)

(assert (=> (and b!552682 (= (toChars!1751 (transformation!1045 (h!10886 (t!75168 rules!3103)))) (toChars!1751 (transformation!1045 (rule!1771 token!491)))) t!75191) tb!48263))

(declare-fun result!54032 () Bool)

(assert (= result!54032 result!53998))

(assert (=> d!192606 t!75191))

(assert (=> b!552471 t!75191))

(declare-fun tb!48265 () Bool)

(declare-fun t!75193 () Bool)

(assert (=> (and b!552682 (= (toChars!1751 (transformation!1045 (h!10886 (t!75168 rules!3103)))) (toChars!1751 (transformation!1045 (rule!1771 (_1!3512 (v!16221 lt!233064)))))) t!75193) tb!48265))

(declare-fun result!54034 () Bool)

(assert (= result!54034 result!54024))

(assert (=> d!192670 t!75193))

(declare-fun b_and!53993 () Bool)

(declare-fun tp!174826 () Bool)

(assert (=> b!552682 (= tp!174826 (and (=> t!75191 result!54032) (=> t!75193 result!54034) b_and!53993))))

(declare-fun e!334382 () Bool)

(assert (=> b!552682 (= e!334382 (and tp!174827 tp!174826))))

(declare-fun b!552681 () Bool)

(declare-fun e!334385 () Bool)

(declare-fun tp!174829 () Bool)

(assert (=> b!552681 (= e!334385 (and tp!174829 (inv!6874 (tag!1307 (h!10886 (t!75168 rules!3103)))) (inv!6877 (transformation!1045 (h!10886 (t!75168 rules!3103)))) e!334382))))

(declare-fun b!552680 () Bool)

(declare-fun e!334384 () Bool)

(declare-fun tp!174828 () Bool)

(assert (=> b!552680 (= e!334384 (and e!334385 tp!174828))))

(assert (=> b!552405 (= tp!174744 e!334384)))

(assert (= b!552681 b!552682))

(assert (= b!552680 b!552681))

(assert (= (and b!552405 ((_ is Cons!5485) (t!75168 rules!3103))) b!552680))

(declare-fun m!802263 () Bool)

(assert (=> b!552681 m!802263))

(declare-fun m!802265 () Bool)

(assert (=> b!552681 m!802265))

(declare-fun b!552687 () Bool)

(declare-fun e!334388 () Bool)

(declare-fun tp!174832 () Bool)

(assert (=> b!552687 (= e!334388 (and tp_is_empty!3113 tp!174832))))

(assert (=> b!552411 (= tp!174749 e!334388)))

(assert (= (and b!552411 ((_ is Cons!5483) (t!75166 suffix!1342))) b!552687))

(declare-fun b!552688 () Bool)

(declare-fun e!334389 () Bool)

(declare-fun tp!174833 () Bool)

(assert (=> b!552688 (= e!334389 (and tp_is_empty!3113 tp!174833))))

(assert (=> b!552414 (= tp!174752 e!334389)))

(assert (= (and b!552414 ((_ is Cons!5483) (originalCharacters!1084 token!491))) b!552688))

(declare-fun b!552689 () Bool)

(declare-fun e!334390 () Bool)

(declare-fun tp!174834 () Bool)

(assert (=> b!552689 (= e!334390 (and tp_is_empty!3113 tp!174834))))

(assert (=> b!552404 (= tp!174745 e!334390)))

(assert (= (and b!552404 ((_ is Cons!5483) (t!75166 input!2705))) b!552689))

(declare-fun b_lambda!21263 () Bool)

(assert (= b_lambda!21247 (or (and b!552418 b_free!15475 (= (toChars!1751 (transformation!1045 (h!10886 rules!3103))) (toChars!1751 (transformation!1045 (rule!1771 token!491))))) (and b!552412 b_free!15479) (and b!552682 b_free!15487 (= (toChars!1751 (transformation!1045 (h!10886 (t!75168 rules!3103)))) (toChars!1751 (transformation!1045 (rule!1771 token!491))))) b_lambda!21263)))

(declare-fun b_lambda!21265 () Bool)

(assert (= b_lambda!21249 (or (and b!552418 b_free!15475 (= (toChars!1751 (transformation!1045 (h!10886 rules!3103))) (toChars!1751 (transformation!1045 (rule!1771 token!491))))) (and b!552412 b_free!15479) (and b!552682 b_free!15487 (= (toChars!1751 (transformation!1045 (h!10886 (t!75168 rules!3103)))) (toChars!1751 (transformation!1045 (rule!1771 token!491))))) b_lambda!21265)))

(check-sat (not b!552687) (not b!552589) (not b!552645) (not b!552612) b_and!53989 (not b!552638) (not b!552666) (not b!552670) (not d!192620) (not d!192688) (not b!552688) (not b!552651) (not b!552634) (not d!192678) (not b!552462) (not b_lambda!21261) (not bm!38435) b_and!53993 (not b!552631) (not b_next!15489) (not d!192668) (not bm!38436) (not b!552595) (not b!552610) (not b!552639) (not b_next!15493) (not b!552640) (not b!552471) (not b!552680) (not b!552592) (not d!192674) (not b!552665) b_and!53991 (not b_lambda!21263) (not d!192664) (not b!552588) (not b!552649) (not b!552689) (not b!552636) (not b!552590) (not b!552593) (not d!192686) (not b!552641) (not b!552441) (not d!192676) (not b!552635) (not b!552594) (not d!192670) (not b!552652) (not b!552644) b_and!53955 (not d!192660) (not b!552671) (not b!552637) (not b!552621) (not b_next!15491) (not b!552681) (not b!552591) (not b_next!15495) (not b!552607) (not d!192680) (not b_next!15501) (not d!192628) b_and!53959 (not d!192606) (not b!552620) (not d!192604) (not b!552667) (not b!552669) tp_is_empty!3113 (not b_next!15503) (not tb!48243) (not b!552611) (not b!552618) (not d!192614) (not b_lambda!21265) (not tb!48259) (not b!552632) b_and!53987 (not b!552472))
(check-sat b_and!53993 (not b_next!15489) (not b_next!15493) b_and!53991 b_and!53955 (not b_next!15491) (not b_next!15495) (not b_next!15501) b_and!53959 (not b_next!15503) b_and!53989 b_and!53987)
(get-model)

(declare-fun d!192712 () Bool)

(declare-fun res!237071 () Bool)

(declare-fun e!334416 () Bool)

(assert (=> d!192712 (=> res!237071 e!334416)))

(assert (=> d!192712 (= res!237071 ((_ is Nil!5485) rules!3103))))

(assert (=> d!192712 (= (noDuplicateTag!366 thiss!22590 rules!3103 Nil!5487) e!334416)))

(declare-fun b!552725 () Bool)

(declare-fun e!334417 () Bool)

(assert (=> b!552725 (= e!334416 e!334417)))

(declare-fun res!237072 () Bool)

(assert (=> b!552725 (=> (not res!237072) (not e!334417))))

(declare-fun contains!1282 (List!5497 String!7088) Bool)

(assert (=> b!552725 (= res!237072 (not (contains!1282 Nil!5487 (tag!1307 (h!10886 rules!3103)))))))

(declare-fun b!552726 () Bool)

(assert (=> b!552726 (= e!334417 (noDuplicateTag!366 thiss!22590 (t!75168 rules!3103) (Cons!5487 (tag!1307 (h!10886 rules!3103)) Nil!5487)))))

(assert (= (and d!192712 (not res!237071)) b!552725))

(assert (= (and b!552725 res!237072) b!552726))

(declare-fun m!802309 () Bool)

(assert (=> b!552725 m!802309))

(declare-fun m!802311 () Bool)

(assert (=> b!552726 m!802311))

(assert (=> b!552649 d!192712))

(declare-fun b!552728 () Bool)

(declare-fun e!334419 () List!5493)

(assert (=> b!552728 (= e!334419 (Cons!5483 (h!10884 (t!75166 lt!233060)) (++!1533 (t!75166 (t!75166 lt!233060)) suffix!1342)))))

(declare-fun e!334418 () Bool)

(declare-fun lt!233148 () List!5493)

(declare-fun b!552730 () Bool)

(assert (=> b!552730 (= e!334418 (or (not (= suffix!1342 Nil!5483)) (= lt!233148 (t!75166 lt!233060))))))

(declare-fun d!192714 () Bool)

(assert (=> d!192714 e!334418))

(declare-fun res!237074 () Bool)

(assert (=> d!192714 (=> (not res!237074) (not e!334418))))

(assert (=> d!192714 (= res!237074 (= (content!956 lt!233148) ((_ map or) (content!956 (t!75166 lt!233060)) (content!956 suffix!1342))))))

(assert (=> d!192714 (= lt!233148 e!334419)))

(declare-fun c!103832 () Bool)

(assert (=> d!192714 (= c!103832 ((_ is Nil!5483) (t!75166 lt!233060)))))

(assert (=> d!192714 (= (++!1533 (t!75166 lt!233060) suffix!1342) lt!233148)))

(declare-fun b!552727 () Bool)

(assert (=> b!552727 (= e!334419 suffix!1342)))

(declare-fun b!552729 () Bool)

(declare-fun res!237073 () Bool)

(assert (=> b!552729 (=> (not res!237073) (not e!334418))))

(assert (=> b!552729 (= res!237073 (= (size!4377 lt!233148) (+ (size!4377 (t!75166 lt!233060)) (size!4377 suffix!1342))))))

(assert (= (and d!192714 c!103832) b!552727))

(assert (= (and d!192714 (not c!103832)) b!552728))

(assert (= (and d!192714 res!237074) b!552729))

(assert (= (and b!552729 res!237073) b!552730))

(declare-fun m!802313 () Bool)

(assert (=> b!552728 m!802313))

(declare-fun m!802315 () Bool)

(assert (=> d!192714 m!802315))

(declare-fun m!802317 () Bool)

(assert (=> d!192714 m!802317))

(assert (=> d!192714 m!802199))

(declare-fun m!802319 () Bool)

(assert (=> b!552729 m!802319))

(assert (=> b!552729 m!802177))

(assert (=> b!552729 m!802203))

(assert (=> b!552631 d!192714))

(declare-fun d!192716 () Bool)

(assert (=> d!192716 (= (get!2082 lt!233118) (v!16221 lt!233118))))

(assert (=> b!552589 d!192716))

(declare-fun d!192718 () Bool)

(declare-fun dynLambda!3189 (Int BalanceConc!3532) TokenValue!1069)

(assert (=> d!192718 (= (apply!1312 (transformation!1045 (rule!1771 (_1!3512 (get!2082 lt!233118)))) (seqFromList!1235 (originalCharacters!1084 (_1!3512 (get!2082 lt!233118))))) (dynLambda!3189 (toValue!1892 (transformation!1045 (rule!1771 (_1!3512 (get!2082 lt!233118))))) (seqFromList!1235 (originalCharacters!1084 (_1!3512 (get!2082 lt!233118))))))))

(declare-fun b_lambda!21269 () Bool)

(assert (=> (not b_lambda!21269) (not d!192718)))

(declare-fun tb!48273 () Bool)

(declare-fun t!75202 () Bool)

(assert (=> (and b!552418 (= (toValue!1892 (transformation!1045 (h!10886 rules!3103))) (toValue!1892 (transformation!1045 (rule!1771 (_1!3512 (get!2082 lt!233118)))))) t!75202) tb!48273))

(declare-fun result!54044 () Bool)

(assert (=> tb!48273 (= result!54044 (inv!21 (dynLambda!3189 (toValue!1892 (transformation!1045 (rule!1771 (_1!3512 (get!2082 lt!233118))))) (seqFromList!1235 (originalCharacters!1084 (_1!3512 (get!2082 lt!233118)))))))))

(declare-fun m!802321 () Bool)

(assert (=> tb!48273 m!802321))

(assert (=> d!192718 t!75202))

(declare-fun b_and!54001 () Bool)

(assert (= b_and!53955 (and (=> t!75202 result!54044) b_and!54001)))

(declare-fun t!75204 () Bool)

(declare-fun tb!48275 () Bool)

(assert (=> (and b!552412 (= (toValue!1892 (transformation!1045 (rule!1771 token!491))) (toValue!1892 (transformation!1045 (rule!1771 (_1!3512 (get!2082 lt!233118)))))) t!75204) tb!48275))

(declare-fun result!54048 () Bool)

(assert (= result!54048 result!54044))

(assert (=> d!192718 t!75204))

(declare-fun b_and!54003 () Bool)

(assert (= b_and!53959 (and (=> t!75204 result!54048) b_and!54003)))

(declare-fun t!75206 () Bool)

(declare-fun tb!48277 () Bool)

(assert (=> (and b!552682 (= (toValue!1892 (transformation!1045 (h!10886 (t!75168 rules!3103)))) (toValue!1892 (transformation!1045 (rule!1771 (_1!3512 (get!2082 lt!233118)))))) t!75206) tb!48277))

(declare-fun result!54050 () Bool)

(assert (= result!54050 result!54044))

(assert (=> d!192718 t!75206))

(declare-fun b_and!54005 () Bool)

(assert (= b_and!53991 (and (=> t!75206 result!54050) b_and!54005)))

(assert (=> d!192718 m!802135))

(declare-fun m!802323 () Bool)

(assert (=> d!192718 m!802323))

(assert (=> b!552589 d!192718))

(declare-fun d!192720 () Bool)

(declare-fun fromListB!537 (List!5493) BalanceConc!3532)

(assert (=> d!192720 (= (seqFromList!1235 (originalCharacters!1084 (_1!3512 (get!2082 lt!233118)))) (fromListB!537 (originalCharacters!1084 (_1!3512 (get!2082 lt!233118)))))))

(declare-fun bs!67922 () Bool)

(assert (= bs!67922 d!192720))

(declare-fun m!802325 () Bool)

(assert (=> bs!67922 m!802325))

(assert (=> b!552589 d!192720))

(declare-fun d!192722 () Bool)

(declare-fun lt!233149 () Int)

(assert (=> d!192722 (>= lt!233149 0)))

(declare-fun e!334423 () Int)

(assert (=> d!192722 (= lt!233149 e!334423)))

(declare-fun c!103833 () Bool)

(assert (=> d!192722 (= c!103833 ((_ is Nil!5483) (_2!3512 (get!2082 lt!233134))))))

(assert (=> d!192722 (= (size!4377 (_2!3512 (get!2082 lt!233134))) lt!233149)))

(declare-fun b!552733 () Bool)

(assert (=> b!552733 (= e!334423 0)))

(declare-fun b!552734 () Bool)

(assert (=> b!552734 (= e!334423 (+ 1 (size!4377 (t!75166 (_2!3512 (get!2082 lt!233134))))))))

(assert (= (and d!192722 c!103833) b!552733))

(assert (= (and d!192722 (not c!103833)) b!552734))

(declare-fun m!802327 () Bool)

(assert (=> b!552734 m!802327))

(assert (=> b!552634 d!192722))

(declare-fun d!192724 () Bool)

(assert (=> d!192724 (= (get!2082 lt!233134) (v!16221 lt!233134))))

(assert (=> b!552634 d!192724))

(declare-fun d!192726 () Bool)

(declare-fun lt!233150 () Int)

(assert (=> d!192726 (>= lt!233150 0)))

(declare-fun e!334424 () Int)

(assert (=> d!192726 (= lt!233150 e!334424)))

(declare-fun c!103834 () Bool)

(assert (=> d!192726 (= c!103834 ((_ is Nil!5483) lt!233062))))

(assert (=> d!192726 (= (size!4377 lt!233062) lt!233150)))

(declare-fun b!552735 () Bool)

(assert (=> b!552735 (= e!334424 0)))

(declare-fun b!552736 () Bool)

(assert (=> b!552736 (= e!334424 (+ 1 (size!4377 (t!75166 lt!233062))))))

(assert (= (and d!192726 c!103834) b!552735))

(assert (= (and d!192726 (not c!103834)) b!552736))

(declare-fun m!802329 () Bool)

(assert (=> b!552736 m!802329))

(assert (=> b!552634 d!192726))

(declare-fun d!192728 () Bool)

(declare-fun isBalanced!503 (Conc!1762) Bool)

(assert (=> d!192728 (= (inv!6882 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 (_1!3512 (v!16221 lt!233064))))) (value!34649 (_1!3512 (v!16221 lt!233064))))) (isBalanced!503 (c!103787 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 (_1!3512 (v!16221 lt!233064))))) (value!34649 (_1!3512 (v!16221 lt!233064)))))))))

(declare-fun bs!67923 () Bool)

(assert (= bs!67923 d!192728))

(declare-fun m!802331 () Bool)

(assert (=> bs!67923 m!802331))

(assert (=> tb!48259 d!192728))

(declare-fun d!192730 () Bool)

(declare-fun charsToBigInt!0 (List!5494 Int) Int)

(assert (=> d!192730 (= (inv!15 (value!34649 token!491)) (= (charsToBigInt!0 (text!7932 (value!34649 token!491)) 0) (value!34645 (value!34649 token!491))))))

(declare-fun bs!67924 () Bool)

(assert (= bs!67924 d!192730))

(declare-fun m!802333 () Bool)

(assert (=> bs!67924 m!802333))

(assert (=> b!552607 d!192730))

(declare-fun d!192732 () Bool)

(declare-fun lt!233151 () Int)

(assert (=> d!192732 (>= lt!233151 0)))

(declare-fun e!334425 () Int)

(assert (=> d!192732 (= lt!233151 e!334425)))

(declare-fun c!103835 () Bool)

(assert (=> d!192732 (= c!103835 ((_ is Nil!5483) (t!75166 lt!233060)))))

(assert (=> d!192732 (= (size!4377 (t!75166 lt!233060)) lt!233151)))

(declare-fun b!552737 () Bool)

(assert (=> b!552737 (= e!334425 0)))

(declare-fun b!552738 () Bool)

(assert (=> b!552738 (= e!334425 (+ 1 (size!4377 (t!75166 (t!75166 lt!233060)))))))

(assert (= (and d!192732 c!103835) b!552737))

(assert (= (and d!192732 (not c!103835)) b!552738))

(declare-fun m!802335 () Bool)

(assert (=> b!552738 m!802335))

(assert (=> b!552618 d!192732))

(declare-fun b!552750 () Bool)

(declare-fun e!334431 () List!5493)

(assert (=> b!552750 (= e!334431 (++!1533 (list!2273 (left!4521 (c!103787 (charsOf!674 token!491)))) (list!2273 (right!4851 (c!103787 (charsOf!674 token!491))))))))

(declare-fun b!552748 () Bool)

(declare-fun e!334430 () List!5493)

(assert (=> b!552748 (= e!334430 e!334431)))

(declare-fun c!103841 () Bool)

(assert (=> b!552748 (= c!103841 ((_ is Leaf!2792) (c!103787 (charsOf!674 token!491))))))

(declare-fun b!552749 () Bool)

(declare-fun list!2275 (IArray!3525) List!5493)

(assert (=> b!552749 (= e!334431 (list!2275 (xs!4399 (c!103787 (charsOf!674 token!491)))))))

(declare-fun d!192734 () Bool)

(declare-fun c!103840 () Bool)

(assert (=> d!192734 (= c!103840 ((_ is Empty!1762) (c!103787 (charsOf!674 token!491))))))

(assert (=> d!192734 (= (list!2273 (c!103787 (charsOf!674 token!491))) e!334430)))

(declare-fun b!552747 () Bool)

(assert (=> b!552747 (= e!334430 Nil!5483)))

(assert (= (and d!192734 c!103840) b!552747))

(assert (= (and d!192734 (not c!103840)) b!552748))

(assert (= (and b!552748 c!103841) b!552749))

(assert (= (and b!552748 (not c!103841)) b!552750))

(declare-fun m!802337 () Bool)

(assert (=> b!552750 m!802337))

(declare-fun m!802339 () Bool)

(assert (=> b!552750 m!802339))

(assert (=> b!552750 m!802337))

(assert (=> b!552750 m!802339))

(declare-fun m!802341 () Bool)

(assert (=> b!552750 m!802341))

(declare-fun m!802343 () Bool)

(assert (=> b!552749 m!802343))

(assert (=> d!192604 d!192734))

(declare-fun d!192736 () Bool)

(assert (=> d!192736 (= (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233134)))) (list!2273 (c!103787 (charsOf!674 (_1!3512 (get!2082 lt!233134))))))))

(declare-fun bs!67925 () Bool)

(assert (= bs!67925 d!192736))

(declare-fun m!802345 () Bool)

(assert (=> bs!67925 m!802345))

(assert (=> b!552639 d!192736))

(declare-fun d!192738 () Bool)

(declare-fun lt!233152 () BalanceConc!3532)

(assert (=> d!192738 (= (list!2271 lt!233152) (originalCharacters!1084 (_1!3512 (get!2082 lt!233134))))))

(assert (=> d!192738 (= lt!233152 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 (_1!3512 (get!2082 lt!233134))))) (value!34649 (_1!3512 (get!2082 lt!233134)))))))

(assert (=> d!192738 (= (charsOf!674 (_1!3512 (get!2082 lt!233134))) lt!233152)))

(declare-fun b_lambda!21271 () Bool)

(assert (=> (not b_lambda!21271) (not d!192738)))

(declare-fun tb!48279 () Bool)

(declare-fun t!75209 () Bool)

(assert (=> (and b!552418 (= (toChars!1751 (transformation!1045 (h!10886 rules!3103))) (toChars!1751 (transformation!1045 (rule!1771 (_1!3512 (get!2082 lt!233134)))))) t!75209) tb!48279))

(declare-fun b!552751 () Bool)

(declare-fun e!334432 () Bool)

(declare-fun tp!174836 () Bool)

(assert (=> b!552751 (= e!334432 (and (inv!6881 (c!103787 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 (_1!3512 (get!2082 lt!233134))))) (value!34649 (_1!3512 (get!2082 lt!233134)))))) tp!174836))))

(declare-fun result!54052 () Bool)

(assert (=> tb!48279 (= result!54052 (and (inv!6882 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 (_1!3512 (get!2082 lt!233134))))) (value!34649 (_1!3512 (get!2082 lt!233134))))) e!334432))))

(assert (= tb!48279 b!552751))

(declare-fun m!802347 () Bool)

(assert (=> b!552751 m!802347))

(declare-fun m!802349 () Bool)

(assert (=> tb!48279 m!802349))

(assert (=> d!192738 t!75209))

(declare-fun b_and!54007 () Bool)

(assert (= b_and!53987 (and (=> t!75209 result!54052) b_and!54007)))

(declare-fun t!75211 () Bool)

(declare-fun tb!48281 () Bool)

(assert (=> (and b!552412 (= (toChars!1751 (transformation!1045 (rule!1771 token!491))) (toChars!1751 (transformation!1045 (rule!1771 (_1!3512 (get!2082 lt!233134)))))) t!75211) tb!48281))

(declare-fun result!54054 () Bool)

(assert (= result!54054 result!54052))

(assert (=> d!192738 t!75211))

(declare-fun b_and!54009 () Bool)

(assert (= b_and!53989 (and (=> t!75211 result!54054) b_and!54009)))

(declare-fun t!75213 () Bool)

(declare-fun tb!48283 () Bool)

(assert (=> (and b!552682 (= (toChars!1751 (transformation!1045 (h!10886 (t!75168 rules!3103)))) (toChars!1751 (transformation!1045 (rule!1771 (_1!3512 (get!2082 lt!233134)))))) t!75213) tb!48283))

(declare-fun result!54056 () Bool)

(assert (= result!54056 result!54052))

(assert (=> d!192738 t!75213))

(declare-fun b_and!54011 () Bool)

(assert (= b_and!53993 (and (=> t!75213 result!54056) b_and!54011)))

(declare-fun m!802351 () Bool)

(assert (=> d!192738 m!802351))

(declare-fun m!802353 () Bool)

(assert (=> d!192738 m!802353))

(assert (=> b!552639 d!192738))

(assert (=> b!552639 d!192724))

(declare-fun d!192740 () Bool)

(declare-fun lt!233155 () Bool)

(declare-fun content!958 (List!5495) (InoxSet Rule!1890))

(assert (=> d!192740 (= lt!233155 (select (content!958 rules!3103) (rule!1771 (_1!3512 (get!2082 lt!233118)))))))

(declare-fun e!334438 () Bool)

(assert (=> d!192740 (= lt!233155 e!334438)))

(declare-fun res!237080 () Bool)

(assert (=> d!192740 (=> (not res!237080) (not e!334438))))

(assert (=> d!192740 (= res!237080 ((_ is Cons!5485) rules!3103))))

(assert (=> d!192740 (= (contains!1281 rules!3103 (rule!1771 (_1!3512 (get!2082 lt!233118)))) lt!233155)))

(declare-fun b!552756 () Bool)

(declare-fun e!334437 () Bool)

(assert (=> b!552756 (= e!334438 e!334437)))

(declare-fun res!237079 () Bool)

(assert (=> b!552756 (=> res!237079 e!334437)))

(assert (=> b!552756 (= res!237079 (= (h!10886 rules!3103) (rule!1771 (_1!3512 (get!2082 lt!233118)))))))

(declare-fun b!552757 () Bool)

(assert (=> b!552757 (= e!334437 (contains!1281 (t!75168 rules!3103) (rule!1771 (_1!3512 (get!2082 lt!233118)))))))

(assert (= (and d!192740 res!237080) b!552756))

(assert (= (and b!552756 (not res!237079)) b!552757))

(declare-fun m!802355 () Bool)

(assert (=> d!192740 m!802355))

(declare-fun m!802357 () Bool)

(assert (=> d!192740 m!802357))

(declare-fun m!802359 () Bool)

(assert (=> b!552757 m!802359))

(assert (=> b!552592 d!192740))

(assert (=> b!552592 d!192716))

(declare-fun b!552824 () Bool)

(declare-fun e!334474 () Bool)

(declare-datatypes ((tuple2!6500 0))(
  ( (tuple2!6501 (_1!3514 List!5493) (_2!3514 List!5493)) )
))
(declare-fun findLongestMatchInner!147 (Regex!1379 List!5493 Int List!5493 List!5493 Int) tuple2!6500)

(assert (=> b!552824 (= e!334474 (matchR!532 (regex!1045 (h!10886 rules!3103)) (_1!3514 (findLongestMatchInner!147 (regex!1045 (h!10886 rules!3103)) Nil!5483 (size!4377 Nil!5483) lt!233062 lt!233062 (size!4377 lt!233062)))))))

(declare-fun b!552825 () Bool)

(declare-fun e!334476 () Bool)

(declare-fun lt!233176 () Option!1395)

(assert (=> b!552825 (= e!334476 (= (size!4376 (_1!3512 (get!2082 lt!233176))) (size!4377 (originalCharacters!1084 (_1!3512 (get!2082 lt!233176))))))))

(declare-fun b!552826 () Bool)

(declare-fun e!334475 () Option!1395)

(declare-fun lt!233178 () tuple2!6500)

(declare-fun size!4379 (BalanceConc!3532) Int)

(assert (=> b!552826 (= e!334475 (Some!1394 (tuple2!6497 (Token!1827 (apply!1312 (transformation!1045 (h!10886 rules!3103)) (seqFromList!1235 (_1!3514 lt!233178))) (h!10886 rules!3103) (size!4379 (seqFromList!1235 (_1!3514 lt!233178))) (_1!3514 lt!233178)) (_2!3514 lt!233178))))))

(declare-fun lt!233180 () Unit!9727)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!131 (Regex!1379 List!5493) Unit!9727)

(assert (=> b!552826 (= lt!233180 (longestMatchIsAcceptedByMatchOrIsEmpty!131 (regex!1045 (h!10886 rules!3103)) lt!233062))))

(declare-fun res!237112 () Bool)

(assert (=> b!552826 (= res!237112 (isEmpty!3957 (_1!3514 (findLongestMatchInner!147 (regex!1045 (h!10886 rules!3103)) Nil!5483 (size!4377 Nil!5483) lt!233062 lt!233062 (size!4377 lt!233062)))))))

(assert (=> b!552826 (=> res!237112 e!334474)))

(assert (=> b!552826 e!334474))

(declare-fun lt!233179 () Unit!9727)

(assert (=> b!552826 (= lt!233179 lt!233180)))

(declare-fun lt!233177 () Unit!9727)

(declare-fun lemmaSemiInverse!166 (TokenValueInjection!1906 BalanceConc!3532) Unit!9727)

(assert (=> b!552826 (= lt!233177 (lemmaSemiInverse!166 (transformation!1045 (h!10886 rules!3103)) (seqFromList!1235 (_1!3514 lt!233178))))))

(declare-fun b!552827 () Bool)

(declare-fun res!237108 () Bool)

(assert (=> b!552827 (=> (not res!237108) (not e!334476))))

(assert (=> b!552827 (= res!237108 (= (++!1533 (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233176)))) (_2!3512 (get!2082 lt!233176))) lt!233062))))

(declare-fun d!192742 () Bool)

(declare-fun e!334473 () Bool)

(assert (=> d!192742 e!334473))

(declare-fun res!237110 () Bool)

(assert (=> d!192742 (=> res!237110 e!334473)))

(assert (=> d!192742 (= res!237110 (isEmpty!3959 lt!233176))))

(assert (=> d!192742 (= lt!233176 e!334475)))

(declare-fun c!103860 () Bool)

(assert (=> d!192742 (= c!103860 (isEmpty!3957 (_1!3514 lt!233178)))))

(declare-fun findLongestMatch!126 (Regex!1379 List!5493) tuple2!6500)

(assert (=> d!192742 (= lt!233178 (findLongestMatch!126 (regex!1045 (h!10886 rules!3103)) lt!233062))))

(declare-fun ruleValid!257 (LexerInterface!931 Rule!1890) Bool)

(assert (=> d!192742 (ruleValid!257 thiss!22590 (h!10886 rules!3103))))

(assert (=> d!192742 (= (maxPrefixOneRule!336 thiss!22590 (h!10886 rules!3103) lt!233062) lt!233176)))

(declare-fun b!552828 () Bool)

(assert (=> b!552828 (= e!334475 None!1394)))

(declare-fun b!552829 () Bool)

(declare-fun res!237107 () Bool)

(assert (=> b!552829 (=> (not res!237107) (not e!334476))))

(assert (=> b!552829 (= res!237107 (< (size!4377 (_2!3512 (get!2082 lt!233176))) (size!4377 lt!233062)))))

(declare-fun b!552830 () Bool)

(assert (=> b!552830 (= e!334473 e!334476)))

(declare-fun res!237113 () Bool)

(assert (=> b!552830 (=> (not res!237113) (not e!334476))))

(assert (=> b!552830 (= res!237113 (matchR!532 (regex!1045 (h!10886 rules!3103)) (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233176))))))))

(declare-fun b!552831 () Bool)

(declare-fun res!237111 () Bool)

(assert (=> b!552831 (=> (not res!237111) (not e!334476))))

(assert (=> b!552831 (= res!237111 (= (rule!1771 (_1!3512 (get!2082 lt!233176))) (h!10886 rules!3103)))))

(declare-fun b!552832 () Bool)

(declare-fun res!237109 () Bool)

(assert (=> b!552832 (=> (not res!237109) (not e!334476))))

(assert (=> b!552832 (= res!237109 (= (value!34649 (_1!3512 (get!2082 lt!233176))) (apply!1312 (transformation!1045 (rule!1771 (_1!3512 (get!2082 lt!233176)))) (seqFromList!1235 (originalCharacters!1084 (_1!3512 (get!2082 lt!233176)))))))))

(assert (= (and d!192742 c!103860) b!552828))

(assert (= (and d!192742 (not c!103860)) b!552826))

(assert (= (and b!552826 (not res!237112)) b!552824))

(assert (= (and d!192742 (not res!237110)) b!552830))

(assert (= (and b!552830 res!237113) b!552827))

(assert (= (and b!552827 res!237108) b!552829))

(assert (= (and b!552829 res!237107) b!552831))

(assert (= (and b!552831 res!237111) b!552832))

(assert (= (and b!552832 res!237109) b!552825))

(declare-fun m!802431 () Bool)

(assert (=> b!552832 m!802431))

(declare-fun m!802433 () Bool)

(assert (=> b!552832 m!802433))

(assert (=> b!552832 m!802433))

(declare-fun m!802435 () Bool)

(assert (=> b!552832 m!802435))

(declare-fun m!802437 () Bool)

(assert (=> b!552824 m!802437))

(assert (=> b!552824 m!802229))

(assert (=> b!552824 m!802437))

(assert (=> b!552824 m!802229))

(declare-fun m!802439 () Bool)

(assert (=> b!552824 m!802439))

(declare-fun m!802441 () Bool)

(assert (=> b!552824 m!802441))

(assert (=> b!552826 m!802437))

(assert (=> b!552826 m!802229))

(assert (=> b!552826 m!802439))

(assert (=> b!552826 m!802229))

(declare-fun m!802443 () Bool)

(assert (=> b!552826 m!802443))

(declare-fun m!802445 () Bool)

(assert (=> b!552826 m!802445))

(assert (=> b!552826 m!802445))

(declare-fun m!802447 () Bool)

(assert (=> b!552826 m!802447))

(assert (=> b!552826 m!802437))

(declare-fun m!802449 () Bool)

(assert (=> b!552826 m!802449))

(assert (=> b!552826 m!802445))

(declare-fun m!802451 () Bool)

(assert (=> b!552826 m!802451))

(assert (=> b!552826 m!802445))

(declare-fun m!802453 () Bool)

(assert (=> b!552826 m!802453))

(assert (=> b!552825 m!802431))

(declare-fun m!802455 () Bool)

(assert (=> b!552825 m!802455))

(declare-fun m!802457 () Bool)

(assert (=> d!192742 m!802457))

(declare-fun m!802459 () Bool)

(assert (=> d!192742 m!802459))

(declare-fun m!802461 () Bool)

(assert (=> d!192742 m!802461))

(declare-fun m!802463 () Bool)

(assert (=> d!192742 m!802463))

(assert (=> b!552829 m!802431))

(declare-fun m!802465 () Bool)

(assert (=> b!552829 m!802465))

(assert (=> b!552829 m!802229))

(assert (=> b!552827 m!802431))

(declare-fun m!802467 () Bool)

(assert (=> b!552827 m!802467))

(assert (=> b!552827 m!802467))

(declare-fun m!802469 () Bool)

(assert (=> b!552827 m!802469))

(assert (=> b!552827 m!802469))

(declare-fun m!802471 () Bool)

(assert (=> b!552827 m!802471))

(assert (=> b!552830 m!802431))

(assert (=> b!552830 m!802467))

(assert (=> b!552830 m!802467))

(assert (=> b!552830 m!802469))

(assert (=> b!552830 m!802469))

(declare-fun m!802475 () Bool)

(assert (=> b!552830 m!802475))

(assert (=> b!552831 m!802431))

(assert (=> bm!38436 d!192742))

(declare-fun d!192776 () Bool)

(assert (=> d!192776 (= (list!2271 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 token!491))) (value!34649 token!491))) (list!2273 (c!103787 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 token!491))) (value!34649 token!491)))))))

(declare-fun bs!67932 () Bool)

(assert (= bs!67932 d!192776))

(declare-fun m!802479 () Bool)

(assert (=> bs!67932 m!802479))

(assert (=> b!552471 d!192776))

(declare-fun d!192780 () Bool)

(declare-fun charsToInt!0 (List!5494) (_ BitVec 32))

(assert (=> d!192780 (= (inv!16 (value!34649 token!491)) (= (charsToInt!0 (text!7930 (value!34649 token!491))) (value!34641 (value!34649 token!491))))))

(declare-fun bs!67933 () Bool)

(assert (= bs!67933 d!192780))

(declare-fun m!802489 () Bool)

(assert (=> bs!67933 m!802489))

(assert (=> b!552611 d!192780))

(declare-fun d!192784 () Bool)

(assert (=> d!192784 (and (= lt!233060 input!2705) (= suffix!1342 suffix!1342))))

(assert (=> d!192784 true))

(declare-fun _$50!205 () Unit!9727)

(assert (=> d!192784 (= (choose!3942 lt!233060 suffix!1342 input!2705 suffix!1342) _$50!205)))

(assert (=> d!192664 d!192784))

(assert (=> d!192664 d!192674))

(assert (=> d!192664 d!192680))

(declare-fun b!552886 () Bool)

(declare-fun e!334502 () Bool)

(declare-fun lt!233188 () Bool)

(assert (=> b!552886 (= e!334502 (not lt!233188))))

(declare-fun d!192788 () Bool)

(declare-fun e!334505 () Bool)

(assert (=> d!192788 e!334505))

(declare-fun c!103874 () Bool)

(assert (=> d!192788 (= c!103874 ((_ is EmptyExpr!1379) (regex!1045 (rule!1771 (_1!3512 (get!2082 lt!233118))))))))

(declare-fun e!334503 () Bool)

(assert (=> d!192788 (= lt!233188 e!334503)))

(declare-fun c!103873 () Bool)

(assert (=> d!192788 (= c!103873 (isEmpty!3957 (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233118))))))))

(declare-fun validRegex!458 (Regex!1379) Bool)

(assert (=> d!192788 (validRegex!458 (regex!1045 (rule!1771 (_1!3512 (get!2082 lt!233118)))))))

(assert (=> d!192788 (= (matchR!532 (regex!1045 (rule!1771 (_1!3512 (get!2082 lt!233118)))) (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233118))))) lt!233188)))

(declare-fun b!552887 () Bool)

(declare-fun e!334506 () Bool)

(declare-fun head!1200 (List!5493) C!3680)

(assert (=> b!552887 (= e!334506 (not (= (head!1200 (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233118))))) (c!103786 (regex!1045 (rule!1771 (_1!3512 (get!2082 lt!233118))))))))))

(declare-fun b!552888 () Bool)

(declare-fun call!38445 () Bool)

(assert (=> b!552888 (= e!334505 (= lt!233188 call!38445))))

(declare-fun b!552889 () Bool)

(declare-fun res!237141 () Bool)

(assert (=> b!552889 (=> res!237141 e!334506)))

(declare-fun tail!729 (List!5493) List!5493)

(assert (=> b!552889 (= res!237141 (not (isEmpty!3957 (tail!729 (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233118))))))))))

(declare-fun b!552890 () Bool)

(declare-fun derivativeStep!279 (Regex!1379 C!3680) Regex!1379)

(assert (=> b!552890 (= e!334503 (matchR!532 (derivativeStep!279 (regex!1045 (rule!1771 (_1!3512 (get!2082 lt!233118)))) (head!1200 (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233118)))))) (tail!729 (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233118)))))))))

(declare-fun b!552891 () Bool)

(assert (=> b!552891 (= e!334505 e!334502)))

(declare-fun c!103875 () Bool)

(assert (=> b!552891 (= c!103875 ((_ is EmptyLang!1379) (regex!1045 (rule!1771 (_1!3512 (get!2082 lt!233118))))))))

(declare-fun bm!38440 () Bool)

(assert (=> bm!38440 (= call!38445 (isEmpty!3957 (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233118))))))))

(declare-fun b!552892 () Bool)

(declare-fun res!237136 () Bool)

(declare-fun e!334507 () Bool)

(assert (=> b!552892 (=> res!237136 e!334507)))

(assert (=> b!552892 (= res!237136 (not ((_ is ElementMatch!1379) (regex!1045 (rule!1771 (_1!3512 (get!2082 lt!233118)))))))))

(assert (=> b!552892 (= e!334502 e!334507)))

(declare-fun b!552893 () Bool)

(declare-fun res!237143 () Bool)

(declare-fun e!334504 () Bool)

(assert (=> b!552893 (=> (not res!237143) (not e!334504))))

(assert (=> b!552893 (= res!237143 (isEmpty!3957 (tail!729 (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233118)))))))))

(declare-fun b!552894 () Bool)

(declare-fun res!237142 () Bool)

(assert (=> b!552894 (=> (not res!237142) (not e!334504))))

(assert (=> b!552894 (= res!237142 (not call!38445))))

(declare-fun b!552895 () Bool)

(declare-fun e!334508 () Bool)

(assert (=> b!552895 (= e!334508 e!334506)))

(declare-fun res!237139 () Bool)

(assert (=> b!552895 (=> res!237139 e!334506)))

(assert (=> b!552895 (= res!237139 call!38445)))

(declare-fun b!552896 () Bool)

(declare-fun res!237137 () Bool)

(assert (=> b!552896 (=> res!237137 e!334507)))

(assert (=> b!552896 (= res!237137 e!334504)))

(declare-fun res!237138 () Bool)

(assert (=> b!552896 (=> (not res!237138) (not e!334504))))

(assert (=> b!552896 (= res!237138 lt!233188)))

(declare-fun b!552897 () Bool)

(assert (=> b!552897 (= e!334507 e!334508)))

(declare-fun res!237140 () Bool)

(assert (=> b!552897 (=> (not res!237140) (not e!334508))))

(assert (=> b!552897 (= res!237140 (not lt!233188))))

(declare-fun b!552898 () Bool)

(assert (=> b!552898 (= e!334504 (= (head!1200 (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233118))))) (c!103786 (regex!1045 (rule!1771 (_1!3512 (get!2082 lt!233118)))))))))

(declare-fun b!552899 () Bool)

(declare-fun nullable!363 (Regex!1379) Bool)

(assert (=> b!552899 (= e!334503 (nullable!363 (regex!1045 (rule!1771 (_1!3512 (get!2082 lt!233118))))))))

(assert (= (and d!192788 c!103873) b!552899))

(assert (= (and d!192788 (not c!103873)) b!552890))

(assert (= (and d!192788 c!103874) b!552888))

(assert (= (and d!192788 (not c!103874)) b!552891))

(assert (= (and b!552891 c!103875) b!552886))

(assert (= (and b!552891 (not c!103875)) b!552892))

(assert (= (and b!552892 (not res!237136)) b!552896))

(assert (= (and b!552896 res!237138) b!552894))

(assert (= (and b!552894 res!237142) b!552893))

(assert (= (and b!552893 res!237143) b!552898))

(assert (= (and b!552896 (not res!237137)) b!552897))

(assert (= (and b!552897 res!237140) b!552895))

(assert (= (and b!552895 (not res!237139)) b!552889))

(assert (= (and b!552889 (not res!237141)) b!552887))

(assert (= (or b!552888 b!552894 b!552895) bm!38440))

(assert (=> b!552887 m!802143))

(declare-fun m!802515 () Bool)

(assert (=> b!552887 m!802515))

(assert (=> b!552890 m!802143))

(assert (=> b!552890 m!802515))

(assert (=> b!552890 m!802515))

(declare-fun m!802517 () Bool)

(assert (=> b!552890 m!802517))

(assert (=> b!552890 m!802143))

(declare-fun m!802519 () Bool)

(assert (=> b!552890 m!802519))

(assert (=> b!552890 m!802517))

(assert (=> b!552890 m!802519))

(declare-fun m!802521 () Bool)

(assert (=> b!552890 m!802521))

(assert (=> b!552889 m!802143))

(assert (=> b!552889 m!802519))

(assert (=> b!552889 m!802519))

(declare-fun m!802523 () Bool)

(assert (=> b!552889 m!802523))

(assert (=> b!552898 m!802143))

(assert (=> b!552898 m!802515))

(declare-fun m!802525 () Bool)

(assert (=> b!552899 m!802525))

(assert (=> bm!38440 m!802143))

(declare-fun m!802527 () Bool)

(assert (=> bm!38440 m!802527))

(assert (=> d!192788 m!802143))

(assert (=> d!192788 m!802527))

(declare-fun m!802529 () Bool)

(assert (=> d!192788 m!802529))

(assert (=> b!552893 m!802143))

(assert (=> b!552893 m!802519))

(assert (=> b!552893 m!802519))

(assert (=> b!552893 m!802523))

(assert (=> b!552591 d!192788))

(assert (=> b!552591 d!192716))

(declare-fun d!192804 () Bool)

(assert (=> d!192804 (= (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233118)))) (list!2273 (c!103787 (charsOf!674 (_1!3512 (get!2082 lt!233118))))))))

(declare-fun bs!67937 () Bool)

(assert (= bs!67937 d!192804))

(declare-fun m!802531 () Bool)

(assert (=> bs!67937 m!802531))

(assert (=> b!552591 d!192804))

(declare-fun d!192806 () Bool)

(declare-fun lt!233189 () BalanceConc!3532)

(assert (=> d!192806 (= (list!2271 lt!233189) (originalCharacters!1084 (_1!3512 (get!2082 lt!233118))))))

(assert (=> d!192806 (= lt!233189 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 (_1!3512 (get!2082 lt!233118))))) (value!34649 (_1!3512 (get!2082 lt!233118)))))))

(assert (=> d!192806 (= (charsOf!674 (_1!3512 (get!2082 lt!233118))) lt!233189)))

(declare-fun b_lambda!21277 () Bool)

(assert (=> (not b_lambda!21277) (not d!192806)))

(declare-fun t!75228 () Bool)

(declare-fun tb!48297 () Bool)

(assert (=> (and b!552418 (= (toChars!1751 (transformation!1045 (h!10886 rules!3103))) (toChars!1751 (transformation!1045 (rule!1771 (_1!3512 (get!2082 lt!233118)))))) t!75228) tb!48297))

(declare-fun b!552924 () Bool)

(declare-fun e!334521 () Bool)

(declare-fun tp!174838 () Bool)

(assert (=> b!552924 (= e!334521 (and (inv!6881 (c!103787 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 (_1!3512 (get!2082 lt!233118))))) (value!34649 (_1!3512 (get!2082 lt!233118)))))) tp!174838))))

(declare-fun result!54072 () Bool)

(assert (=> tb!48297 (= result!54072 (and (inv!6882 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 (_1!3512 (get!2082 lt!233118))))) (value!34649 (_1!3512 (get!2082 lt!233118))))) e!334521))))

(assert (= tb!48297 b!552924))

(declare-fun m!802533 () Bool)

(assert (=> b!552924 m!802533))

(declare-fun m!802535 () Bool)

(assert (=> tb!48297 m!802535))

(assert (=> d!192806 t!75228))

(declare-fun b_and!54025 () Bool)

(assert (= b_and!54007 (and (=> t!75228 result!54072) b_and!54025)))

(declare-fun tb!48299 () Bool)

(declare-fun t!75230 () Bool)

(assert (=> (and b!552412 (= (toChars!1751 (transformation!1045 (rule!1771 token!491))) (toChars!1751 (transformation!1045 (rule!1771 (_1!3512 (get!2082 lt!233118)))))) t!75230) tb!48299))

(declare-fun result!54074 () Bool)

(assert (= result!54074 result!54072))

(assert (=> d!192806 t!75230))

(declare-fun b_and!54027 () Bool)

(assert (= b_and!54009 (and (=> t!75230 result!54074) b_and!54027)))

(declare-fun t!75232 () Bool)

(declare-fun tb!48301 () Bool)

(assert (=> (and b!552682 (= (toChars!1751 (transformation!1045 (h!10886 (t!75168 rules!3103)))) (toChars!1751 (transformation!1045 (rule!1771 (_1!3512 (get!2082 lt!233118)))))) t!75232) tb!48301))

(declare-fun result!54076 () Bool)

(assert (= result!54076 result!54072))

(assert (=> d!192806 t!75232))

(declare-fun b_and!54029 () Bool)

(assert (= b_and!54011 (and (=> t!75232 result!54076) b_and!54029)))

(declare-fun m!802537 () Bool)

(assert (=> d!192806 m!802537))

(declare-fun m!802539 () Bool)

(assert (=> d!192806 m!802539))

(assert (=> b!552591 d!192806))

(declare-fun b!552926 () Bool)

(declare-fun e!334523 () List!5493)

(assert (=> b!552926 (= e!334523 (Cons!5483 (h!10884 (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233134))))) (++!1533 (t!75166 (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233134))))) (_2!3512 (get!2082 lt!233134)))))))

(declare-fun b!552928 () Bool)

(declare-fun e!334522 () Bool)

(declare-fun lt!233190 () List!5493)

(assert (=> b!552928 (= e!334522 (or (not (= (_2!3512 (get!2082 lt!233134)) Nil!5483)) (= lt!233190 (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233134)))))))))

(declare-fun d!192808 () Bool)

(assert (=> d!192808 e!334522))

(declare-fun res!237161 () Bool)

(assert (=> d!192808 (=> (not res!237161) (not e!334522))))

(assert (=> d!192808 (= res!237161 (= (content!956 lt!233190) ((_ map or) (content!956 (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233134))))) (content!956 (_2!3512 (get!2082 lt!233134))))))))

(assert (=> d!192808 (= lt!233190 e!334523)))

(declare-fun c!103880 () Bool)

(assert (=> d!192808 (= c!103880 ((_ is Nil!5483) (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233134))))))))

(assert (=> d!192808 (= (++!1533 (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233134)))) (_2!3512 (get!2082 lt!233134))) lt!233190)))

(declare-fun b!552925 () Bool)

(assert (=> b!552925 (= e!334523 (_2!3512 (get!2082 lt!233134)))))

(declare-fun b!552927 () Bool)

(declare-fun res!237160 () Bool)

(assert (=> b!552927 (=> (not res!237160) (not e!334522))))

(assert (=> b!552927 (= res!237160 (= (size!4377 lt!233190) (+ (size!4377 (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233134))))) (size!4377 (_2!3512 (get!2082 lt!233134))))))))

(assert (= (and d!192808 c!103880) b!552925))

(assert (= (and d!192808 (not c!103880)) b!552926))

(assert (= (and d!192808 res!237161) b!552927))

(assert (= (and b!552927 res!237160) b!552928))

(declare-fun m!802541 () Bool)

(assert (=> b!552926 m!802541))

(declare-fun m!802543 () Bool)

(assert (=> d!192808 m!802543))

(assert (=> d!192808 m!802217))

(declare-fun m!802545 () Bool)

(assert (=> d!192808 m!802545))

(declare-fun m!802547 () Bool)

(assert (=> d!192808 m!802547))

(declare-fun m!802549 () Bool)

(assert (=> b!552927 m!802549))

(assert (=> b!552927 m!802217))

(declare-fun m!802551 () Bool)

(assert (=> b!552927 m!802551))

(assert (=> b!552927 m!802227))

(assert (=> b!552636 d!192808))

(assert (=> b!552636 d!192736))

(assert (=> b!552636 d!192738))

(assert (=> b!552636 d!192724))

(declare-fun d!192810 () Bool)

(assert (=> d!192810 (= (isEmpty!3959 lt!233118) (not ((_ is Some!1394) lt!233118)))))

(assert (=> d!192628 d!192810))

(declare-fun b!552952 () Bool)

(declare-fun res!237181 () Bool)

(declare-fun e!334538 () Bool)

(assert (=> b!552952 (=> (not res!237181) (not e!334538))))

(assert (=> b!552952 (= res!237181 (= (head!1200 input!2705) (head!1200 input!2705)))))

(declare-fun b!552954 () Bool)

(declare-fun e!334537 () Bool)

(assert (=> b!552954 (= e!334537 (>= (size!4377 input!2705) (size!4377 input!2705)))))

(declare-fun b!552951 () Bool)

(declare-fun e!334539 () Bool)

(assert (=> b!552951 (= e!334539 e!334538)))

(declare-fun res!237179 () Bool)

(assert (=> b!552951 (=> (not res!237179) (not e!334538))))

(assert (=> b!552951 (= res!237179 (not ((_ is Nil!5483) input!2705)))))

(declare-fun d!192812 () Bool)

(assert (=> d!192812 e!334537))

(declare-fun res!237180 () Bool)

(assert (=> d!192812 (=> res!237180 e!334537)))

(declare-fun lt!233194 () Bool)

(assert (=> d!192812 (= res!237180 (not lt!233194))))

(assert (=> d!192812 (= lt!233194 e!334539)))

(declare-fun res!237178 () Bool)

(assert (=> d!192812 (=> res!237178 e!334539)))

(assert (=> d!192812 (= res!237178 ((_ is Nil!5483) input!2705))))

(assert (=> d!192812 (= (isPrefix!681 input!2705 input!2705) lt!233194)))

(declare-fun b!552953 () Bool)

(assert (=> b!552953 (= e!334538 (isPrefix!681 (tail!729 input!2705) (tail!729 input!2705)))))

(assert (= (and d!192812 (not res!237178)) b!552951))

(assert (= (and b!552951 res!237179) b!552952))

(assert (= (and b!552952 res!237181) b!552953))

(assert (= (and d!192812 (not res!237180)) b!552954))

(declare-fun m!802571 () Bool)

(assert (=> b!552952 m!802571))

(assert (=> b!552952 m!802571))

(assert (=> b!552954 m!802157))

(assert (=> b!552954 m!802157))

(declare-fun m!802573 () Bool)

(assert (=> b!552953 m!802573))

(assert (=> b!552953 m!802573))

(assert (=> b!552953 m!802573))

(assert (=> b!552953 m!802573))

(declare-fun m!802575 () Bool)

(assert (=> b!552953 m!802575))

(assert (=> d!192628 d!192812))

(declare-fun d!192818 () Bool)

(assert (=> d!192818 (isPrefix!681 input!2705 input!2705)))

(declare-fun lt!233197 () Unit!9727)

(declare-fun choose!3944 (List!5493 List!5493) Unit!9727)

(assert (=> d!192818 (= lt!233197 (choose!3944 input!2705 input!2705))))

(assert (=> d!192818 (= (lemmaIsPrefixRefl!419 input!2705 input!2705) lt!233197)))

(declare-fun bs!67939 () Bool)

(assert (= bs!67939 d!192818))

(assert (=> bs!67939 m!802147))

(declare-fun m!802577 () Bool)

(assert (=> bs!67939 m!802577))

(assert (=> d!192628 d!192818))

(declare-fun d!192820 () Bool)

(assert (=> d!192820 true))

(declare-fun lt!233245 () Bool)

(declare-fun lambda!15554 () Int)

(declare-fun forall!1530 (List!5495 Int) Bool)

(assert (=> d!192820 (= lt!233245 (forall!1530 rules!3103 lambda!15554))))

(declare-fun e!334633 () Bool)

(assert (=> d!192820 (= lt!233245 e!334633)))

(declare-fun res!237254 () Bool)

(assert (=> d!192820 (=> res!237254 e!334633)))

(assert (=> d!192820 (= res!237254 (not ((_ is Cons!5485) rules!3103)))))

(assert (=> d!192820 (= (rulesValidInductive!370 thiss!22590 rules!3103) lt!233245)))

(declare-fun b!553134 () Bool)

(declare-fun e!334632 () Bool)

(assert (=> b!553134 (= e!334633 e!334632)))

(declare-fun res!237253 () Bool)

(assert (=> b!553134 (=> (not res!237253) (not e!334632))))

(assert (=> b!553134 (= res!237253 (ruleValid!257 thiss!22590 (h!10886 rules!3103)))))

(declare-fun b!553135 () Bool)

(assert (=> b!553135 (= e!334632 (rulesValidInductive!370 thiss!22590 (t!75168 rules!3103)))))

(assert (= (and d!192820 (not res!237254)) b!553134))

(assert (= (and b!553134 res!237253) b!553135))

(declare-fun m!802815 () Bool)

(assert (=> d!192820 m!802815))

(assert (=> b!553134 m!802463))

(declare-fun m!802817 () Bool)

(assert (=> b!553135 m!802817))

(assert (=> d!192628 d!192820))

(declare-fun b!553141 () Bool)

(declare-fun e!334635 () List!5493)

(assert (=> b!553141 (= e!334635 (++!1533 (list!2273 (left!4521 (c!103787 (charsOf!674 (_1!3512 (v!16221 lt!233064)))))) (list!2273 (right!4851 (c!103787 (charsOf!674 (_1!3512 (v!16221 lt!233064))))))))))

(declare-fun b!553139 () Bool)

(declare-fun e!334634 () List!5493)

(assert (=> b!553139 (= e!334634 e!334635)))

(declare-fun c!103907 () Bool)

(assert (=> b!553139 (= c!103907 ((_ is Leaf!2792) (c!103787 (charsOf!674 (_1!3512 (v!16221 lt!233064))))))))

(declare-fun b!553140 () Bool)

(assert (=> b!553140 (= e!334635 (list!2275 (xs!4399 (c!103787 (charsOf!674 (_1!3512 (v!16221 lt!233064)))))))))

(declare-fun d!192894 () Bool)

(declare-fun c!103906 () Bool)

(assert (=> d!192894 (= c!103906 ((_ is Empty!1762) (c!103787 (charsOf!674 (_1!3512 (v!16221 lt!233064))))))))

(assert (=> d!192894 (= (list!2273 (c!103787 (charsOf!674 (_1!3512 (v!16221 lt!233064))))) e!334634)))

(declare-fun b!553138 () Bool)

(assert (=> b!553138 (= e!334634 Nil!5483)))

(assert (= (and d!192894 c!103906) b!553138))

(assert (= (and d!192894 (not c!103906)) b!553139))

(assert (= (and b!553139 c!103907) b!553140))

(assert (= (and b!553139 (not c!103907)) b!553141))

(declare-fun m!802819 () Bool)

(assert (=> b!553141 m!802819))

(declare-fun m!802821 () Bool)

(assert (=> b!553141 m!802821))

(assert (=> b!553141 m!802819))

(assert (=> b!553141 m!802821))

(declare-fun m!802823 () Bool)

(assert (=> b!553141 m!802823))

(declare-fun m!802825 () Bool)

(assert (=> b!553140 m!802825))

(assert (=> d!192668 d!192894))

(declare-fun b!553143 () Bool)

(declare-fun e!334637 () List!5493)

(assert (=> b!553143 (= e!334637 (Cons!5483 (h!10884 (t!75166 input!2705)) (++!1533 (t!75166 (t!75166 input!2705)) suffix!1342)))))

(declare-fun lt!233246 () List!5493)

(declare-fun e!334636 () Bool)

(declare-fun b!553145 () Bool)

(assert (=> b!553145 (= e!334636 (or (not (= suffix!1342 Nil!5483)) (= lt!233246 (t!75166 input!2705))))))

(declare-fun d!192896 () Bool)

(assert (=> d!192896 e!334636))

(declare-fun res!237256 () Bool)

(assert (=> d!192896 (=> (not res!237256) (not e!334636))))

(assert (=> d!192896 (= res!237256 (= (content!956 lt!233246) ((_ map or) (content!956 (t!75166 input!2705)) (content!956 suffix!1342))))))

(assert (=> d!192896 (= lt!233246 e!334637)))

(declare-fun c!103908 () Bool)

(assert (=> d!192896 (= c!103908 ((_ is Nil!5483) (t!75166 input!2705)))))

(assert (=> d!192896 (= (++!1533 (t!75166 input!2705) suffix!1342) lt!233246)))

(declare-fun b!553142 () Bool)

(assert (=> b!553142 (= e!334637 suffix!1342)))

(declare-fun b!553144 () Bool)

(declare-fun res!237255 () Bool)

(assert (=> b!553144 (=> (not res!237255) (not e!334636))))

(assert (=> b!553144 (= res!237255 (= (size!4377 lt!233246) (+ (size!4377 (t!75166 input!2705)) (size!4377 suffix!1342))))))

(assert (= (and d!192896 c!103908) b!553142))

(assert (= (and d!192896 (not c!103908)) b!553143))

(assert (= (and d!192896 res!237256) b!553144))

(assert (= (and b!553144 res!237255) b!553145))

(declare-fun m!802827 () Bool)

(assert (=> b!553143 m!802827))

(declare-fun m!802829 () Bool)

(assert (=> d!192896 m!802829))

(declare-fun m!802831 () Bool)

(assert (=> d!192896 m!802831))

(assert (=> d!192896 m!802199))

(declare-fun m!802833 () Bool)

(assert (=> b!553144 m!802833))

(declare-fun m!802835 () Bool)

(assert (=> b!553144 m!802835))

(assert (=> b!553144 m!802203))

(assert (=> b!552644 d!192896))

(declare-fun d!192898 () Bool)

(assert (=> d!192898 (= (isDefined!1207 lt!233118) (not (isEmpty!3959 lt!233118)))))

(declare-fun bs!67952 () Bool)

(assert (= bs!67952 d!192898))

(assert (=> bs!67952 m!802145))

(assert (=> b!552595 d!192898))

(declare-fun b!553146 () Bool)

(declare-fun res!237259 () Bool)

(declare-fun e!334639 () Bool)

(assert (=> b!553146 (=> (not res!237259) (not e!334639))))

(declare-fun lt!233250 () Option!1395)

(assert (=> b!553146 (= res!237259 (< (size!4377 (_2!3512 (get!2082 lt!233250))) (size!4377 lt!233062)))))

(declare-fun b!553147 () Bool)

(declare-fun res!237261 () Bool)

(assert (=> b!553147 (=> (not res!237261) (not e!334639))))

(assert (=> b!553147 (= res!237261 (= (value!34649 (_1!3512 (get!2082 lt!233250))) (apply!1312 (transformation!1045 (rule!1771 (_1!3512 (get!2082 lt!233250)))) (seqFromList!1235 (originalCharacters!1084 (_1!3512 (get!2082 lt!233250)))))))))

(declare-fun b!553148 () Bool)

(declare-fun res!237258 () Bool)

(assert (=> b!553148 (=> (not res!237258) (not e!334639))))

(assert (=> b!553148 (= res!237258 (= (++!1533 (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233250)))) (_2!3512 (get!2082 lt!233250))) lt!233062))))

(declare-fun b!553149 () Bool)

(declare-fun res!237257 () Bool)

(assert (=> b!553149 (=> (not res!237257) (not e!334639))))

(assert (=> b!553149 (= res!237257 (matchR!532 (regex!1045 (rule!1771 (_1!3512 (get!2082 lt!233250)))) (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233250))))))))

(declare-fun d!192900 () Bool)

(declare-fun e!334638 () Bool)

(assert (=> d!192900 e!334638))

(declare-fun res!237260 () Bool)

(assert (=> d!192900 (=> res!237260 e!334638)))

(assert (=> d!192900 (= res!237260 (isEmpty!3959 lt!233250))))

(declare-fun e!334640 () Option!1395)

(assert (=> d!192900 (= lt!233250 e!334640)))

(declare-fun c!103909 () Bool)

(assert (=> d!192900 (= c!103909 (and ((_ is Cons!5485) (t!75168 rules!3103)) ((_ is Nil!5485) (t!75168 (t!75168 rules!3103)))))))

(declare-fun lt!233249 () Unit!9727)

(declare-fun lt!233251 () Unit!9727)

(assert (=> d!192900 (= lt!233249 lt!233251)))

(assert (=> d!192900 (isPrefix!681 lt!233062 lt!233062)))

(assert (=> d!192900 (= lt!233251 (lemmaIsPrefixRefl!419 lt!233062 lt!233062))))

(assert (=> d!192900 (rulesValidInductive!370 thiss!22590 (t!75168 rules!3103))))

(assert (=> d!192900 (= (maxPrefix!629 thiss!22590 (t!75168 rules!3103) lt!233062) lt!233250)))

(declare-fun call!38451 () Option!1395)

(declare-fun bm!38446 () Bool)

(assert (=> bm!38446 (= call!38451 (maxPrefixOneRule!336 thiss!22590 (h!10886 (t!75168 rules!3103)) lt!233062))))

(declare-fun b!553150 () Bool)

(assert (=> b!553150 (= e!334639 (contains!1281 (t!75168 rules!3103) (rule!1771 (_1!3512 (get!2082 lt!233250)))))))

(declare-fun b!553151 () Bool)

(declare-fun res!237262 () Bool)

(assert (=> b!553151 (=> (not res!237262) (not e!334639))))

(assert (=> b!553151 (= res!237262 (= (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233250)))) (originalCharacters!1084 (_1!3512 (get!2082 lt!233250)))))))

(declare-fun b!553152 () Bool)

(declare-fun lt!233247 () Option!1395)

(declare-fun lt!233248 () Option!1395)

(assert (=> b!553152 (= e!334640 (ite (and ((_ is None!1394) lt!233247) ((_ is None!1394) lt!233248)) None!1394 (ite ((_ is None!1394) lt!233248) lt!233247 (ite ((_ is None!1394) lt!233247) lt!233248 (ite (>= (size!4376 (_1!3512 (v!16221 lt!233247))) (size!4376 (_1!3512 (v!16221 lt!233248)))) lt!233247 lt!233248)))))))

(assert (=> b!553152 (= lt!233247 call!38451)))

(assert (=> b!553152 (= lt!233248 (maxPrefix!629 thiss!22590 (t!75168 (t!75168 rules!3103)) lt!233062))))

(declare-fun b!553153 () Bool)

(assert (=> b!553153 (= e!334638 e!334639)))

(declare-fun res!237263 () Bool)

(assert (=> b!553153 (=> (not res!237263) (not e!334639))))

(assert (=> b!553153 (= res!237263 (isDefined!1207 lt!233250))))

(declare-fun b!553154 () Bool)

(assert (=> b!553154 (= e!334640 call!38451)))

(assert (= (and d!192900 c!103909) b!553154))

(assert (= (and d!192900 (not c!103909)) b!553152))

(assert (= (or b!553154 b!553152) bm!38446))

(assert (= (and d!192900 (not res!237260)) b!553153))

(assert (= (and b!553153 res!237263) b!553151))

(assert (= (and b!553151 res!237262) b!553146))

(assert (= (and b!553146 res!237259) b!553148))

(assert (= (and b!553148 res!237258) b!553147))

(assert (= (and b!553147 res!237261) b!553149))

(assert (= (and b!553149 res!237257) b!553150))

(declare-fun m!802837 () Bool)

(assert (=> b!553147 m!802837))

(declare-fun m!802839 () Bool)

(assert (=> b!553147 m!802839))

(assert (=> b!553147 m!802839))

(declare-fun m!802841 () Bool)

(assert (=> b!553147 m!802841))

(declare-fun m!802843 () Bool)

(assert (=> bm!38446 m!802843))

(assert (=> b!553151 m!802837))

(declare-fun m!802845 () Bool)

(assert (=> b!553151 m!802845))

(assert (=> b!553151 m!802845))

(declare-fun m!802847 () Bool)

(assert (=> b!553151 m!802847))

(declare-fun m!802849 () Bool)

(assert (=> d!192900 m!802849))

(assert (=> d!192900 m!802221))

(assert (=> d!192900 m!802223))

(assert (=> d!192900 m!802817))

(declare-fun m!802851 () Bool)

(assert (=> b!553152 m!802851))

(assert (=> b!553146 m!802837))

(declare-fun m!802853 () Bool)

(assert (=> b!553146 m!802853))

(assert (=> b!553146 m!802229))

(assert (=> b!553150 m!802837))

(declare-fun m!802855 () Bool)

(assert (=> b!553150 m!802855))

(declare-fun m!802857 () Bool)

(assert (=> b!553153 m!802857))

(assert (=> b!553148 m!802837))

(assert (=> b!553148 m!802845))

(assert (=> b!553148 m!802845))

(assert (=> b!553148 m!802847))

(assert (=> b!553148 m!802847))

(declare-fun m!802859 () Bool)

(assert (=> b!553148 m!802859))

(assert (=> b!553149 m!802837))

(assert (=> b!553149 m!802845))

(assert (=> b!553149 m!802845))

(assert (=> b!553149 m!802847))

(assert (=> b!553149 m!802847))

(declare-fun m!802861 () Bool)

(assert (=> b!553149 m!802861))

(assert (=> b!552640 d!192900))

(declare-fun d!192902 () Bool)

(assert (=> d!192902 true))

(declare-fun order!4531 () Int)

(declare-fun order!4533 () Int)

(declare-fun lambda!15557 () Int)

(declare-fun dynLambda!3190 (Int Int) Int)

(declare-fun dynLambda!3191 (Int Int) Int)

(assert (=> d!192902 (< (dynLambda!3190 order!4531 (toValue!1892 (transformation!1045 (rule!1771 token!491)))) (dynLambda!3191 order!4533 lambda!15557))))

(declare-fun Forall2!204 (Int) Bool)

(assert (=> d!192902 (= (equivClasses!384 (toChars!1751 (transformation!1045 (rule!1771 token!491))) (toValue!1892 (transformation!1045 (rule!1771 token!491)))) (Forall2!204 lambda!15557))))

(declare-fun bs!67953 () Bool)

(assert (= bs!67953 d!192902))

(declare-fun m!802863 () Bool)

(assert (=> bs!67953 m!802863))

(assert (=> b!552612 d!192902))

(declare-fun d!192904 () Bool)

(declare-fun lt!233252 () Int)

(assert (=> d!192904 (>= lt!233252 0)))

(declare-fun e!334643 () Int)

(assert (=> d!192904 (= lt!233252 e!334643)))

(declare-fun c!103910 () Bool)

(assert (=> d!192904 (= c!103910 ((_ is Nil!5483) lt!233137))))

(assert (=> d!192904 (= (size!4377 lt!233137) lt!233252)))

(declare-fun b!553159 () Bool)

(assert (=> b!553159 (= e!334643 0)))

(declare-fun b!553160 () Bool)

(assert (=> b!553160 (= e!334643 (+ 1 (size!4377 (t!75166 lt!233137))))))

(assert (= (and d!192904 c!103910) b!553159))

(assert (= (and d!192904 (not c!103910)) b!553160))

(declare-fun m!802865 () Bool)

(assert (=> b!553160 m!802865))

(assert (=> b!552652 d!192904))

(assert (=> b!552652 d!192666))

(declare-fun d!192906 () Bool)

(declare-fun lt!233253 () Int)

(assert (=> d!192906 (>= lt!233253 0)))

(declare-fun e!334644 () Int)

(assert (=> d!192906 (= lt!233253 e!334644)))

(declare-fun c!103911 () Bool)

(assert (=> d!192906 (= c!103911 ((_ is Nil!5483) (_2!3512 (v!16221 lt!233064))))))

(assert (=> d!192906 (= (size!4377 (_2!3512 (v!16221 lt!233064))) lt!233253)))

(declare-fun b!553161 () Bool)

(assert (=> b!553161 (= e!334644 0)))

(declare-fun b!553162 () Bool)

(assert (=> b!553162 (= e!334644 (+ 1 (size!4377 (t!75166 (_2!3512 (v!16221 lt!233064))))))))

(assert (= (and d!192906 c!103911) b!553161))

(assert (= (and d!192906 (not c!103911)) b!553162))

(declare-fun m!802867 () Bool)

(assert (=> b!553162 m!802867))

(assert (=> b!552652 d!192906))

(declare-fun d!192908 () Bool)

(assert (=> d!192908 (= (inv!6882 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 token!491))) (value!34649 token!491))) (isBalanced!503 (c!103787 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 token!491))) (value!34649 token!491)))))))

(declare-fun bs!67954 () Bool)

(assert (= bs!67954 d!192908))

(declare-fun m!802869 () Bool)

(assert (=> bs!67954 m!802869))

(assert (=> tb!48243 d!192908))

(declare-fun d!192910 () Bool)

(declare-fun c!103914 () Bool)

(assert (=> d!192910 (= c!103914 ((_ is Nil!5483) lt!233136))))

(declare-fun e!334647 () (InoxSet C!3680))

(assert (=> d!192910 (= (content!956 lt!233136) e!334647)))

(declare-fun b!553167 () Bool)

(assert (=> b!553167 (= e!334647 ((as const (Array C!3680 Bool)) false))))

(declare-fun b!553168 () Bool)

(assert (=> b!553168 (= e!334647 ((_ map or) (store ((as const (Array C!3680 Bool)) false) (h!10884 lt!233136) true) (content!956 (t!75166 lt!233136))))))

(assert (= (and d!192910 c!103914) b!553167))

(assert (= (and d!192910 (not c!103914)) b!553168))

(declare-fun m!802871 () Bool)

(assert (=> b!553168 m!802871))

(declare-fun m!802873 () Bool)

(assert (=> b!553168 m!802873))

(assert (=> d!192680 d!192910))

(declare-fun d!192912 () Bool)

(declare-fun c!103915 () Bool)

(assert (=> d!192912 (= c!103915 ((_ is Nil!5483) input!2705))))

(declare-fun e!334648 () (InoxSet C!3680))

(assert (=> d!192912 (= (content!956 input!2705) e!334648)))

(declare-fun b!553169 () Bool)

(assert (=> b!553169 (= e!334648 ((as const (Array C!3680 Bool)) false))))

(declare-fun b!553170 () Bool)

(assert (=> b!553170 (= e!334648 ((_ map or) (store ((as const (Array C!3680 Bool)) false) (h!10884 input!2705) true) (content!956 (t!75166 input!2705))))))

(assert (= (and d!192912 c!103915) b!553169))

(assert (= (and d!192912 (not c!103915)) b!553170))

(declare-fun m!802875 () Bool)

(assert (=> b!553170 m!802875))

(assert (=> b!553170 m!802831))

(assert (=> d!192680 d!192912))

(declare-fun d!192914 () Bool)

(declare-fun c!103916 () Bool)

(assert (=> d!192914 (= c!103916 ((_ is Nil!5483) suffix!1342))))

(declare-fun e!334649 () (InoxSet C!3680))

(assert (=> d!192914 (= (content!956 suffix!1342) e!334649)))

(declare-fun b!553171 () Bool)

(assert (=> b!553171 (= e!334649 ((as const (Array C!3680 Bool)) false))))

(declare-fun b!553172 () Bool)

(assert (=> b!553172 (= e!334649 ((_ map or) (store ((as const (Array C!3680 Bool)) false) (h!10884 suffix!1342) true) (content!956 (t!75166 suffix!1342))))))

(assert (= (and d!192914 c!103916) b!553171))

(assert (= (and d!192914 (not c!103916)) b!553172))

(declare-fun m!802877 () Bool)

(assert (=> b!553172 m!802877))

(declare-fun m!802879 () Bool)

(assert (=> b!553172 m!802879))

(assert (=> d!192680 d!192914))

(declare-fun d!192916 () Bool)

(declare-fun lt!233254 () Int)

(assert (=> d!192916 (>= lt!233254 0)))

(declare-fun e!334650 () Int)

(assert (=> d!192916 (= lt!233254 e!334650)))

(declare-fun c!103917 () Bool)

(assert (=> d!192916 (= c!103917 ((_ is Nil!5483) (_2!3512 (get!2082 lt!233118))))))

(assert (=> d!192916 (= (size!4377 (_2!3512 (get!2082 lt!233118))) lt!233254)))

(declare-fun b!553173 () Bool)

(assert (=> b!553173 (= e!334650 0)))

(declare-fun b!553174 () Bool)

(assert (=> b!553174 (= e!334650 (+ 1 (size!4377 (t!75166 (_2!3512 (get!2082 lt!233118))))))))

(assert (= (and d!192916 c!103917) b!553173))

(assert (= (and d!192916 (not c!103917)) b!553174))

(declare-fun m!802881 () Bool)

(assert (=> b!553174 m!802881))

(assert (=> b!552588 d!192916))

(assert (=> b!552588 d!192716))

(declare-fun d!192918 () Bool)

(declare-fun lt!233255 () Int)

(assert (=> d!192918 (>= lt!233255 0)))

(declare-fun e!334651 () Int)

(assert (=> d!192918 (= lt!233255 e!334651)))

(declare-fun c!103918 () Bool)

(assert (=> d!192918 (= c!103918 ((_ is Nil!5483) input!2705))))

(assert (=> d!192918 (= (size!4377 input!2705) lt!233255)))

(declare-fun b!553175 () Bool)

(assert (=> b!553175 (= e!334651 0)))

(declare-fun b!553176 () Bool)

(assert (=> b!553176 (= e!334651 (+ 1 (size!4377 (t!75166 input!2705))))))

(assert (= (and d!192918 c!103918) b!553175))

(assert (= (and d!192918 (not c!103918)) b!553176))

(assert (=> b!553176 m!802835))

(assert (=> b!552588 d!192918))

(declare-fun d!192920 () Bool)

(declare-fun c!103921 () Bool)

(assert (=> d!192920 (= c!103921 ((_ is Node!1762) (c!103787 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 token!491))) (value!34649 token!491)))))))

(declare-fun e!334656 () Bool)

(assert (=> d!192920 (= (inv!6881 (c!103787 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 token!491))) (value!34649 token!491)))) e!334656)))

(declare-fun b!553183 () Bool)

(declare-fun inv!6885 (Conc!1762) Bool)

(assert (=> b!553183 (= e!334656 (inv!6885 (c!103787 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 token!491))) (value!34649 token!491)))))))

(declare-fun b!553184 () Bool)

(declare-fun e!334657 () Bool)

(assert (=> b!553184 (= e!334656 e!334657)))

(declare-fun res!237268 () Bool)

(assert (=> b!553184 (= res!237268 (not ((_ is Leaf!2792) (c!103787 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 token!491))) (value!34649 token!491))))))))

(assert (=> b!553184 (=> res!237268 e!334657)))

(declare-fun b!553185 () Bool)

(declare-fun inv!6886 (Conc!1762) Bool)

(assert (=> b!553185 (= e!334657 (inv!6886 (c!103787 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 token!491))) (value!34649 token!491)))))))

(assert (= (and d!192920 c!103921) b!553183))

(assert (= (and d!192920 (not c!103921)) b!553184))

(assert (= (and b!553184 (not res!237268)) b!553185))

(declare-fun m!802883 () Bool)

(assert (=> b!553183 m!802883))

(declare-fun m!802885 () Bool)

(assert (=> b!553185 m!802885))

(assert (=> b!552441 d!192920))

(declare-fun d!192922 () Bool)

(assert (=> d!192922 (= (list!2271 lt!233071) (list!2273 (c!103787 lt!233071)))))

(declare-fun bs!67955 () Bool)

(assert (= bs!67955 d!192922))

(declare-fun m!802887 () Bool)

(assert (=> bs!67955 m!802887))

(assert (=> d!192606 d!192922))

(declare-fun d!192924 () Bool)

(assert (=> d!192924 true))

(declare-fun lambda!15560 () Int)

(declare-fun order!4537 () Int)

(declare-fun order!4535 () Int)

(declare-fun dynLambda!3192 (Int Int) Int)

(declare-fun dynLambda!3193 (Int Int) Int)

(assert (=> d!192924 (< (dynLambda!3192 order!4535 (toChars!1751 (transformation!1045 (h!10886 rules!3103)))) (dynLambda!3193 order!4537 lambda!15560))))

(assert (=> d!192924 true))

(assert (=> d!192924 (< (dynLambda!3190 order!4531 (toValue!1892 (transformation!1045 (h!10886 rules!3103)))) (dynLambda!3193 order!4537 lambda!15560))))

(declare-fun Forall!278 (Int) Bool)

(assert (=> d!192924 (= (semiInverseModEq!401 (toChars!1751 (transformation!1045 (h!10886 rules!3103))) (toValue!1892 (transformation!1045 (h!10886 rules!3103)))) (Forall!278 lambda!15560))))

(declare-fun bs!67956 () Bool)

(assert (= bs!67956 d!192924))

(declare-fun m!802889 () Bool)

(assert (=> bs!67956 m!802889))

(assert (=> d!192614 d!192924))

(assert (=> b!552593 d!192804))

(assert (=> b!552593 d!192806))

(assert (=> b!552593 d!192716))

(declare-fun d!192926 () Bool)

(declare-fun lt!233256 () Bool)

(assert (=> d!192926 (= lt!233256 (select (content!958 rules!3103) (rule!1771 (_1!3512 (get!2082 lt!233134)))))))

(declare-fun e!334659 () Bool)

(assert (=> d!192926 (= lt!233256 e!334659)))

(declare-fun res!237270 () Bool)

(assert (=> d!192926 (=> (not res!237270) (not e!334659))))

(assert (=> d!192926 (= res!237270 ((_ is Cons!5485) rules!3103))))

(assert (=> d!192926 (= (contains!1281 rules!3103 (rule!1771 (_1!3512 (get!2082 lt!233134)))) lt!233256)))

(declare-fun b!553190 () Bool)

(declare-fun e!334658 () Bool)

(assert (=> b!553190 (= e!334659 e!334658)))

(declare-fun res!237269 () Bool)

(assert (=> b!553190 (=> res!237269 e!334658)))

(assert (=> b!553190 (= res!237269 (= (h!10886 rules!3103) (rule!1771 (_1!3512 (get!2082 lt!233134)))))))

(declare-fun b!553191 () Bool)

(assert (=> b!553191 (= e!334658 (contains!1281 (t!75168 rules!3103) (rule!1771 (_1!3512 (get!2082 lt!233134)))))))

(assert (= (and d!192926 res!237270) b!553190))

(assert (= (and b!553190 (not res!237269)) b!553191))

(assert (=> d!192926 m!802355))

(declare-fun m!802891 () Bool)

(assert (=> d!192926 m!802891))

(declare-fun m!802893 () Bool)

(assert (=> b!553191 m!802893))

(assert (=> b!552638 d!192926))

(assert (=> b!552638 d!192724))

(declare-fun d!192928 () Bool)

(declare-fun lt!233257 () Int)

(assert (=> d!192928 (>= lt!233257 0)))

(declare-fun e!334660 () Int)

(assert (=> d!192928 (= lt!233257 e!334660)))

(declare-fun c!103922 () Bool)

(assert (=> d!192928 (= c!103922 ((_ is Nil!5483) (t!75166 lt!233063)))))

(assert (=> d!192928 (= (size!4377 (t!75166 lt!233063)) lt!233257)))

(declare-fun b!553192 () Bool)

(assert (=> b!553192 (= e!334660 0)))

(declare-fun b!553193 () Bool)

(assert (=> b!553193 (= e!334660 (+ 1 (size!4377 (t!75166 (t!75166 lt!233063)))))))

(assert (= (and d!192928 c!103922) b!553192))

(assert (= (and d!192928 (not c!103922)) b!553193))

(declare-fun m!802895 () Bool)

(assert (=> b!553193 m!802895))

(assert (=> b!552620 d!192928))

(declare-fun d!192930 () Bool)

(declare-fun c!103923 () Bool)

(assert (=> d!192930 (= c!103923 ((_ is Node!1762) (c!103787 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 (_1!3512 (v!16221 lt!233064))))) (value!34649 (_1!3512 (v!16221 lt!233064)))))))))

(declare-fun e!334661 () Bool)

(assert (=> d!192930 (= (inv!6881 (c!103787 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 (_1!3512 (v!16221 lt!233064))))) (value!34649 (_1!3512 (v!16221 lt!233064)))))) e!334661)))

(declare-fun b!553194 () Bool)

(assert (=> b!553194 (= e!334661 (inv!6885 (c!103787 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 (_1!3512 (v!16221 lt!233064))))) (value!34649 (_1!3512 (v!16221 lt!233064)))))))))

(declare-fun b!553195 () Bool)

(declare-fun e!334662 () Bool)

(assert (=> b!553195 (= e!334661 e!334662)))

(declare-fun res!237271 () Bool)

(assert (=> b!553195 (= res!237271 (not ((_ is Leaf!2792) (c!103787 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 (_1!3512 (v!16221 lt!233064))))) (value!34649 (_1!3512 (v!16221 lt!233064))))))))))

(assert (=> b!553195 (=> res!237271 e!334662)))

(declare-fun b!553196 () Bool)

(assert (=> b!553196 (= e!334662 (inv!6886 (c!103787 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 (_1!3512 (v!16221 lt!233064))))) (value!34649 (_1!3512 (v!16221 lt!233064)))))))))

(assert (= (and d!192930 c!103923) b!553194))

(assert (= (and d!192930 (not c!103923)) b!553195))

(assert (= (and b!553195 (not res!237271)) b!553196))

(declare-fun m!802897 () Bool)

(assert (=> b!553194 m!802897))

(declare-fun m!802899 () Bool)

(assert (=> b!553196 m!802899))

(assert (=> b!552621 d!192930))

(declare-fun d!192932 () Bool)

(assert (=> d!192932 (= (isEmpty!3959 lt!233134) (not ((_ is Some!1394) lt!233134)))))

(assert (=> d!192678 d!192932))

(declare-fun b!553198 () Bool)

(declare-fun res!237275 () Bool)

(declare-fun e!334664 () Bool)

(assert (=> b!553198 (=> (not res!237275) (not e!334664))))

(assert (=> b!553198 (= res!237275 (= (head!1200 lt!233062) (head!1200 lt!233062)))))

(declare-fun b!553200 () Bool)

(declare-fun e!334663 () Bool)

(assert (=> b!553200 (= e!334663 (>= (size!4377 lt!233062) (size!4377 lt!233062)))))

(declare-fun b!553197 () Bool)

(declare-fun e!334665 () Bool)

(assert (=> b!553197 (= e!334665 e!334664)))

(declare-fun res!237273 () Bool)

(assert (=> b!553197 (=> (not res!237273) (not e!334664))))

(assert (=> b!553197 (= res!237273 (not ((_ is Nil!5483) lt!233062)))))

(declare-fun d!192934 () Bool)

(assert (=> d!192934 e!334663))

(declare-fun res!237274 () Bool)

(assert (=> d!192934 (=> res!237274 e!334663)))

(declare-fun lt!233258 () Bool)

(assert (=> d!192934 (= res!237274 (not lt!233258))))

(assert (=> d!192934 (= lt!233258 e!334665)))

(declare-fun res!237272 () Bool)

(assert (=> d!192934 (=> res!237272 e!334665)))

(assert (=> d!192934 (= res!237272 ((_ is Nil!5483) lt!233062))))

(assert (=> d!192934 (= (isPrefix!681 lt!233062 lt!233062) lt!233258)))

(declare-fun b!553199 () Bool)

(assert (=> b!553199 (= e!334664 (isPrefix!681 (tail!729 lt!233062) (tail!729 lt!233062)))))

(assert (= (and d!192934 (not res!237272)) b!553197))

(assert (= (and b!553197 res!237273) b!553198))

(assert (= (and b!553198 res!237275) b!553199))

(assert (= (and d!192934 (not res!237274)) b!553200))

(declare-fun m!802901 () Bool)

(assert (=> b!553198 m!802901))

(assert (=> b!553198 m!802901))

(assert (=> b!553200 m!802229))

(assert (=> b!553200 m!802229))

(declare-fun m!802903 () Bool)

(assert (=> b!553199 m!802903))

(assert (=> b!553199 m!802903))

(assert (=> b!553199 m!802903))

(assert (=> b!553199 m!802903))

(declare-fun m!802905 () Bool)

(assert (=> b!553199 m!802905))

(assert (=> d!192678 d!192934))

(declare-fun d!192936 () Bool)

(assert (=> d!192936 (isPrefix!681 lt!233062 lt!233062)))

(declare-fun lt!233259 () Unit!9727)

(assert (=> d!192936 (= lt!233259 (choose!3944 lt!233062 lt!233062))))

(assert (=> d!192936 (= (lemmaIsPrefixRefl!419 lt!233062 lt!233062) lt!233259)))

(declare-fun bs!67957 () Bool)

(assert (= bs!67957 d!192936))

(assert (=> bs!67957 m!802221))

(declare-fun m!802907 () Bool)

(assert (=> bs!67957 m!802907))

(assert (=> d!192678 d!192936))

(assert (=> d!192678 d!192820))

(declare-fun b!553201 () Bool)

(declare-fun e!334667 () Bool)

(assert (=> b!553201 (= e!334667 (matchR!532 (regex!1045 (h!10886 rules!3103)) (_1!3514 (findLongestMatchInner!147 (regex!1045 (h!10886 rules!3103)) Nil!5483 (size!4377 Nil!5483) input!2705 input!2705 (size!4377 input!2705)))))))

(declare-fun b!553202 () Bool)

(declare-fun e!334669 () Bool)

(declare-fun lt!233260 () Option!1395)

(assert (=> b!553202 (= e!334669 (= (size!4376 (_1!3512 (get!2082 lt!233260))) (size!4377 (originalCharacters!1084 (_1!3512 (get!2082 lt!233260))))))))

(declare-fun b!553203 () Bool)

(declare-fun e!334668 () Option!1395)

(declare-fun lt!233262 () tuple2!6500)

(assert (=> b!553203 (= e!334668 (Some!1394 (tuple2!6497 (Token!1827 (apply!1312 (transformation!1045 (h!10886 rules!3103)) (seqFromList!1235 (_1!3514 lt!233262))) (h!10886 rules!3103) (size!4379 (seqFromList!1235 (_1!3514 lt!233262))) (_1!3514 lt!233262)) (_2!3514 lt!233262))))))

(declare-fun lt!233264 () Unit!9727)

(assert (=> b!553203 (= lt!233264 (longestMatchIsAcceptedByMatchOrIsEmpty!131 (regex!1045 (h!10886 rules!3103)) input!2705))))

(declare-fun res!237281 () Bool)

(assert (=> b!553203 (= res!237281 (isEmpty!3957 (_1!3514 (findLongestMatchInner!147 (regex!1045 (h!10886 rules!3103)) Nil!5483 (size!4377 Nil!5483) input!2705 input!2705 (size!4377 input!2705)))))))

(assert (=> b!553203 (=> res!237281 e!334667)))

(assert (=> b!553203 e!334667))

(declare-fun lt!233263 () Unit!9727)

(assert (=> b!553203 (= lt!233263 lt!233264)))

(declare-fun lt!233261 () Unit!9727)

(assert (=> b!553203 (= lt!233261 (lemmaSemiInverse!166 (transformation!1045 (h!10886 rules!3103)) (seqFromList!1235 (_1!3514 lt!233262))))))

(declare-fun b!553204 () Bool)

(declare-fun res!237277 () Bool)

(assert (=> b!553204 (=> (not res!237277) (not e!334669))))

(assert (=> b!553204 (= res!237277 (= (++!1533 (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233260)))) (_2!3512 (get!2082 lt!233260))) input!2705))))

(declare-fun d!192938 () Bool)

(declare-fun e!334666 () Bool)

(assert (=> d!192938 e!334666))

(declare-fun res!237279 () Bool)

(assert (=> d!192938 (=> res!237279 e!334666)))

(assert (=> d!192938 (= res!237279 (isEmpty!3959 lt!233260))))

(assert (=> d!192938 (= lt!233260 e!334668)))

(declare-fun c!103924 () Bool)

(assert (=> d!192938 (= c!103924 (isEmpty!3957 (_1!3514 lt!233262)))))

(assert (=> d!192938 (= lt!233262 (findLongestMatch!126 (regex!1045 (h!10886 rules!3103)) input!2705))))

(assert (=> d!192938 (ruleValid!257 thiss!22590 (h!10886 rules!3103))))

(assert (=> d!192938 (= (maxPrefixOneRule!336 thiss!22590 (h!10886 rules!3103) input!2705) lt!233260)))

(declare-fun b!553205 () Bool)

(assert (=> b!553205 (= e!334668 None!1394)))

(declare-fun b!553206 () Bool)

(declare-fun res!237276 () Bool)

(assert (=> b!553206 (=> (not res!237276) (not e!334669))))

(assert (=> b!553206 (= res!237276 (< (size!4377 (_2!3512 (get!2082 lt!233260))) (size!4377 input!2705)))))

(declare-fun b!553207 () Bool)

(assert (=> b!553207 (= e!334666 e!334669)))

(declare-fun res!237282 () Bool)

(assert (=> b!553207 (=> (not res!237282) (not e!334669))))

(assert (=> b!553207 (= res!237282 (matchR!532 (regex!1045 (h!10886 rules!3103)) (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233260))))))))

(declare-fun b!553208 () Bool)

(declare-fun res!237280 () Bool)

(assert (=> b!553208 (=> (not res!237280) (not e!334669))))

(assert (=> b!553208 (= res!237280 (= (rule!1771 (_1!3512 (get!2082 lt!233260))) (h!10886 rules!3103)))))

(declare-fun b!553209 () Bool)

(declare-fun res!237278 () Bool)

(assert (=> b!553209 (=> (not res!237278) (not e!334669))))

(assert (=> b!553209 (= res!237278 (= (value!34649 (_1!3512 (get!2082 lt!233260))) (apply!1312 (transformation!1045 (rule!1771 (_1!3512 (get!2082 lt!233260)))) (seqFromList!1235 (originalCharacters!1084 (_1!3512 (get!2082 lt!233260)))))))))

(assert (= (and d!192938 c!103924) b!553205))

(assert (= (and d!192938 (not c!103924)) b!553203))

(assert (= (and b!553203 (not res!237281)) b!553201))

(assert (= (and d!192938 (not res!237279)) b!553207))

(assert (= (and b!553207 res!237282) b!553204))

(assert (= (and b!553204 res!237277) b!553206))

(assert (= (and b!553206 res!237276) b!553208))

(assert (= (and b!553208 res!237280) b!553209))

(assert (= (and b!553209 res!237278) b!553202))

(declare-fun m!802909 () Bool)

(assert (=> b!553209 m!802909))

(declare-fun m!802911 () Bool)

(assert (=> b!553209 m!802911))

(assert (=> b!553209 m!802911))

(declare-fun m!802913 () Bool)

(assert (=> b!553209 m!802913))

(assert (=> b!553201 m!802437))

(assert (=> b!553201 m!802157))

(assert (=> b!553201 m!802437))

(assert (=> b!553201 m!802157))

(declare-fun m!802915 () Bool)

(assert (=> b!553201 m!802915))

(declare-fun m!802917 () Bool)

(assert (=> b!553201 m!802917))

(assert (=> b!553203 m!802437))

(assert (=> b!553203 m!802157))

(assert (=> b!553203 m!802915))

(assert (=> b!553203 m!802157))

(declare-fun m!802919 () Bool)

(assert (=> b!553203 m!802919))

(declare-fun m!802921 () Bool)

(assert (=> b!553203 m!802921))

(assert (=> b!553203 m!802921))

(declare-fun m!802923 () Bool)

(assert (=> b!553203 m!802923))

(assert (=> b!553203 m!802437))

(declare-fun m!802925 () Bool)

(assert (=> b!553203 m!802925))

(assert (=> b!553203 m!802921))

(declare-fun m!802927 () Bool)

(assert (=> b!553203 m!802927))

(assert (=> b!553203 m!802921))

(declare-fun m!802929 () Bool)

(assert (=> b!553203 m!802929))

(assert (=> b!553202 m!802909))

(declare-fun m!802931 () Bool)

(assert (=> b!553202 m!802931))

(declare-fun m!802933 () Bool)

(assert (=> d!192938 m!802933))

(declare-fun m!802935 () Bool)

(assert (=> d!192938 m!802935))

(declare-fun m!802937 () Bool)

(assert (=> d!192938 m!802937))

(assert (=> d!192938 m!802463))

(assert (=> b!553206 m!802909))

(declare-fun m!802939 () Bool)

(assert (=> b!553206 m!802939))

(assert (=> b!553206 m!802157))

(assert (=> b!553204 m!802909))

(declare-fun m!802941 () Bool)

(assert (=> b!553204 m!802941))

(assert (=> b!553204 m!802941))

(declare-fun m!802943 () Bool)

(assert (=> b!553204 m!802943))

(assert (=> b!553204 m!802943))

(declare-fun m!802945 () Bool)

(assert (=> b!553204 m!802945))

(assert (=> b!553207 m!802909))

(assert (=> b!553207 m!802941))

(assert (=> b!553207 m!802941))

(assert (=> b!553207 m!802943))

(assert (=> b!553207 m!802943))

(declare-fun m!802947 () Bool)

(assert (=> b!553207 m!802947))

(assert (=> b!553208 m!802909))

(assert (=> bm!38435 d!192938))

(declare-fun b!553210 () Bool)

(declare-fun e!334670 () Bool)

(declare-fun lt!233265 () Bool)

(assert (=> b!553210 (= e!334670 (not lt!233265))))

(declare-fun d!192940 () Bool)

(declare-fun e!334673 () Bool)

(assert (=> d!192940 e!334673))

(declare-fun c!103926 () Bool)

(assert (=> d!192940 (= c!103926 ((_ is EmptyExpr!1379) (regex!1045 (rule!1771 (_1!3512 (get!2082 lt!233134))))))))

(declare-fun e!334671 () Bool)

(assert (=> d!192940 (= lt!233265 e!334671)))

(declare-fun c!103925 () Bool)

(assert (=> d!192940 (= c!103925 (isEmpty!3957 (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233134))))))))

(assert (=> d!192940 (validRegex!458 (regex!1045 (rule!1771 (_1!3512 (get!2082 lt!233134)))))))

(assert (=> d!192940 (= (matchR!532 (regex!1045 (rule!1771 (_1!3512 (get!2082 lt!233134)))) (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233134))))) lt!233265)))

(declare-fun b!553211 () Bool)

(declare-fun e!334674 () Bool)

(assert (=> b!553211 (= e!334674 (not (= (head!1200 (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233134))))) (c!103786 (regex!1045 (rule!1771 (_1!3512 (get!2082 lt!233134))))))))))

(declare-fun b!553212 () Bool)

(declare-fun call!38452 () Bool)

(assert (=> b!553212 (= e!334673 (= lt!233265 call!38452))))

(declare-fun b!553213 () Bool)

(declare-fun res!237288 () Bool)

(assert (=> b!553213 (=> res!237288 e!334674)))

(assert (=> b!553213 (= res!237288 (not (isEmpty!3957 (tail!729 (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233134))))))))))

(declare-fun b!553214 () Bool)

(assert (=> b!553214 (= e!334671 (matchR!532 (derivativeStep!279 (regex!1045 (rule!1771 (_1!3512 (get!2082 lt!233134)))) (head!1200 (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233134)))))) (tail!729 (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233134)))))))))

(declare-fun b!553215 () Bool)

(assert (=> b!553215 (= e!334673 e!334670)))

(declare-fun c!103927 () Bool)

(assert (=> b!553215 (= c!103927 ((_ is EmptyLang!1379) (regex!1045 (rule!1771 (_1!3512 (get!2082 lt!233134))))))))

(declare-fun bm!38447 () Bool)

(assert (=> bm!38447 (= call!38452 (isEmpty!3957 (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233134))))))))

(declare-fun b!553216 () Bool)

(declare-fun res!237283 () Bool)

(declare-fun e!334675 () Bool)

(assert (=> b!553216 (=> res!237283 e!334675)))

(assert (=> b!553216 (= res!237283 (not ((_ is ElementMatch!1379) (regex!1045 (rule!1771 (_1!3512 (get!2082 lt!233134)))))))))

(assert (=> b!553216 (= e!334670 e!334675)))

(declare-fun b!553217 () Bool)

(declare-fun res!237290 () Bool)

(declare-fun e!334672 () Bool)

(assert (=> b!553217 (=> (not res!237290) (not e!334672))))

(assert (=> b!553217 (= res!237290 (isEmpty!3957 (tail!729 (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233134)))))))))

(declare-fun b!553218 () Bool)

(declare-fun res!237289 () Bool)

(assert (=> b!553218 (=> (not res!237289) (not e!334672))))

(assert (=> b!553218 (= res!237289 (not call!38452))))

(declare-fun b!553219 () Bool)

(declare-fun e!334676 () Bool)

(assert (=> b!553219 (= e!334676 e!334674)))

(declare-fun res!237286 () Bool)

(assert (=> b!553219 (=> res!237286 e!334674)))

(assert (=> b!553219 (= res!237286 call!38452)))

(declare-fun b!553220 () Bool)

(declare-fun res!237284 () Bool)

(assert (=> b!553220 (=> res!237284 e!334675)))

(assert (=> b!553220 (= res!237284 e!334672)))

(declare-fun res!237285 () Bool)

(assert (=> b!553220 (=> (not res!237285) (not e!334672))))

(assert (=> b!553220 (= res!237285 lt!233265)))

(declare-fun b!553221 () Bool)

(assert (=> b!553221 (= e!334675 e!334676)))

(declare-fun res!237287 () Bool)

(assert (=> b!553221 (=> (not res!237287) (not e!334676))))

(assert (=> b!553221 (= res!237287 (not lt!233265))))

(declare-fun b!553222 () Bool)

(assert (=> b!553222 (= e!334672 (= (head!1200 (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233134))))) (c!103786 (regex!1045 (rule!1771 (_1!3512 (get!2082 lt!233134)))))))))

(declare-fun b!553223 () Bool)

(assert (=> b!553223 (= e!334671 (nullable!363 (regex!1045 (rule!1771 (_1!3512 (get!2082 lt!233134))))))))

(assert (= (and d!192940 c!103925) b!553223))

(assert (= (and d!192940 (not c!103925)) b!553214))

(assert (= (and d!192940 c!103926) b!553212))

(assert (= (and d!192940 (not c!103926)) b!553215))

(assert (= (and b!553215 c!103927) b!553210))

(assert (= (and b!553215 (not c!103927)) b!553216))

(assert (= (and b!553216 (not res!237283)) b!553220))

(assert (= (and b!553220 res!237285) b!553218))

(assert (= (and b!553218 res!237289) b!553217))

(assert (= (and b!553217 res!237290) b!553222))

(assert (= (and b!553220 (not res!237284)) b!553221))

(assert (= (and b!553221 res!237287) b!553219))

(assert (= (and b!553219 (not res!237286)) b!553213))

(assert (= (and b!553213 (not res!237288)) b!553211))

(assert (= (or b!553212 b!553218 b!553219) bm!38447))

(assert (=> b!553211 m!802217))

(declare-fun m!802949 () Bool)

(assert (=> b!553211 m!802949))

(assert (=> b!553214 m!802217))

(assert (=> b!553214 m!802949))

(assert (=> b!553214 m!802949))

(declare-fun m!802951 () Bool)

(assert (=> b!553214 m!802951))

(assert (=> b!553214 m!802217))

(declare-fun m!802953 () Bool)

(assert (=> b!553214 m!802953))

(assert (=> b!553214 m!802951))

(assert (=> b!553214 m!802953))

(declare-fun m!802955 () Bool)

(assert (=> b!553214 m!802955))

(assert (=> b!553213 m!802217))

(assert (=> b!553213 m!802953))

(assert (=> b!553213 m!802953))

(declare-fun m!802957 () Bool)

(assert (=> b!553213 m!802957))

(assert (=> b!553222 m!802217))

(assert (=> b!553222 m!802949))

(declare-fun m!802959 () Bool)

(assert (=> b!553223 m!802959))

(assert (=> bm!38447 m!802217))

(declare-fun m!802961 () Bool)

(assert (=> bm!38447 m!802961))

(assert (=> d!192940 m!802217))

(assert (=> d!192940 m!802961))

(declare-fun m!802963 () Bool)

(assert (=> d!192940 m!802963))

(assert (=> b!553217 m!802217))

(assert (=> b!553217 m!802953))

(assert (=> b!553217 m!802953))

(assert (=> b!553217 m!802957))

(assert (=> b!552637 d!192940))

(assert (=> b!552637 d!192724))

(assert (=> b!552637 d!192736))

(assert (=> b!552637 d!192738))

(declare-fun d!192942 () Bool)

(declare-fun lt!233266 () Int)

(assert (=> d!192942 (>= lt!233266 0)))

(declare-fun e!334677 () Int)

(assert (=> d!192942 (= lt!233266 e!334677)))

(declare-fun c!103928 () Bool)

(assert (=> d!192942 (= c!103928 ((_ is Nil!5483) (originalCharacters!1084 token!491)))))

(assert (=> d!192942 (= (size!4377 (originalCharacters!1084 token!491)) lt!233266)))

(declare-fun b!553224 () Bool)

(assert (=> b!553224 (= e!334677 0)))

(declare-fun b!553225 () Bool)

(assert (=> b!553225 (= e!334677 (+ 1 (size!4377 (t!75166 (originalCharacters!1084 token!491)))))))

(assert (= (and d!192942 c!103928) b!553224))

(assert (= (and d!192942 (not c!103928)) b!553225))

(declare-fun m!802965 () Bool)

(assert (=> b!553225 m!802965))

(assert (=> b!552472 d!192942))

(declare-fun d!192944 () Bool)

(declare-fun charsToBigInt!1 (List!5494) Int)

(assert (=> d!192944 (= (inv!17 (value!34649 token!491)) (= (charsToBigInt!1 (text!7931 (value!34649 token!491))) (value!34642 (value!34649 token!491))))))

(declare-fun bs!67958 () Bool)

(assert (= bs!67958 d!192944))

(declare-fun m!802967 () Bool)

(assert (=> bs!67958 m!802967))

(assert (=> b!552610 d!192944))

(declare-fun bs!67959 () Bool)

(declare-fun d!192946 () Bool)

(assert (= bs!67959 (and d!192946 d!192902)))

(declare-fun lambda!15561 () Int)

(assert (=> bs!67959 (= (= (toValue!1892 (transformation!1045 (h!10886 rules!3103))) (toValue!1892 (transformation!1045 (rule!1771 token!491)))) (= lambda!15561 lambda!15557))))

(assert (=> d!192946 true))

(assert (=> d!192946 (< (dynLambda!3190 order!4531 (toValue!1892 (transformation!1045 (h!10886 rules!3103)))) (dynLambda!3191 order!4533 lambda!15561))))

(assert (=> d!192946 (= (equivClasses!384 (toChars!1751 (transformation!1045 (h!10886 rules!3103))) (toValue!1892 (transformation!1045 (h!10886 rules!3103)))) (Forall2!204 lambda!15561))))

(declare-fun bs!67960 () Bool)

(assert (= bs!67960 d!192946))

(declare-fun m!802969 () Bool)

(assert (=> bs!67960 m!802969))

(assert (=> b!552462 d!192946))

(declare-fun d!192948 () Bool)

(declare-fun lt!233267 () Int)

(assert (=> d!192948 (>= lt!233267 0)))

(declare-fun e!334678 () Int)

(assert (=> d!192948 (= lt!233267 e!334678)))

(declare-fun c!103929 () Bool)

(assert (=> d!192948 (= c!103929 ((_ is Nil!5483) lt!233130))))

(assert (=> d!192948 (= (size!4377 lt!233130) lt!233267)))

(declare-fun b!553226 () Bool)

(assert (=> b!553226 (= e!334678 0)))

(declare-fun b!553227 () Bool)

(assert (=> b!553227 (= e!334678 (+ 1 (size!4377 (t!75166 lt!233130))))))

(assert (= (and d!192948 c!103929) b!553226))

(assert (= (and d!192948 (not c!103929)) b!553227))

(declare-fun m!802971 () Bool)

(assert (=> b!553227 m!802971))

(assert (=> b!552632 d!192948))

(assert (=> b!552632 d!192662))

(declare-fun d!192950 () Bool)

(declare-fun lt!233268 () Int)

(assert (=> d!192950 (>= lt!233268 0)))

(declare-fun e!334679 () Int)

(assert (=> d!192950 (= lt!233268 e!334679)))

(declare-fun c!103930 () Bool)

(assert (=> d!192950 (= c!103930 ((_ is Nil!5483) suffix!1342))))

(assert (=> d!192950 (= (size!4377 suffix!1342) lt!233268)))

(declare-fun b!553228 () Bool)

(assert (=> b!553228 (= e!334679 0)))

(declare-fun b!553229 () Bool)

(assert (=> b!553229 (= e!334679 (+ 1 (size!4377 (t!75166 suffix!1342))))))

(assert (= (and d!192950 c!103930) b!553228))

(assert (= (and d!192950 (not c!103930)) b!553229))

(declare-fun m!802973 () Bool)

(assert (=> b!553229 m!802973))

(assert (=> b!552632 d!192950))

(declare-fun b!553231 () Bool)

(declare-fun e!334681 () List!5493)

(assert (=> b!553231 (= e!334681 (Cons!5483 (h!10884 (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233118))))) (++!1533 (t!75166 (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233118))))) (_2!3512 (get!2082 lt!233118)))))))

(declare-fun b!553233 () Bool)

(declare-fun e!334680 () Bool)

(declare-fun lt!233269 () List!5493)

(assert (=> b!553233 (= e!334680 (or (not (= (_2!3512 (get!2082 lt!233118)) Nil!5483)) (= lt!233269 (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233118)))))))))

(declare-fun d!192952 () Bool)

(assert (=> d!192952 e!334680))

(declare-fun res!237292 () Bool)

(assert (=> d!192952 (=> (not res!237292) (not e!334680))))

(assert (=> d!192952 (= res!237292 (= (content!956 lt!233269) ((_ map or) (content!956 (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233118))))) (content!956 (_2!3512 (get!2082 lt!233118))))))))

(assert (=> d!192952 (= lt!233269 e!334681)))

(declare-fun c!103931 () Bool)

(assert (=> d!192952 (= c!103931 ((_ is Nil!5483) (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233118))))))))

(assert (=> d!192952 (= (++!1533 (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233118)))) (_2!3512 (get!2082 lt!233118))) lt!233269)))

(declare-fun b!553230 () Bool)

(assert (=> b!553230 (= e!334681 (_2!3512 (get!2082 lt!233118)))))

(declare-fun b!553232 () Bool)

(declare-fun res!237291 () Bool)

(assert (=> b!553232 (=> (not res!237291) (not e!334680))))

(assert (=> b!553232 (= res!237291 (= (size!4377 lt!233269) (+ (size!4377 (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233118))))) (size!4377 (_2!3512 (get!2082 lt!233118))))))))

(assert (= (and d!192952 c!103931) b!553230))

(assert (= (and d!192952 (not c!103931)) b!553231))

(assert (= (and d!192952 res!237292) b!553232))

(assert (= (and b!553232 res!237291) b!553233))

(declare-fun m!802975 () Bool)

(assert (=> b!553231 m!802975))

(declare-fun m!802977 () Bool)

(assert (=> d!192952 m!802977))

(assert (=> d!192952 m!802143))

(declare-fun m!802979 () Bool)

(assert (=> d!192952 m!802979))

(declare-fun m!802981 () Bool)

(assert (=> d!192952 m!802981))

(declare-fun m!802983 () Bool)

(assert (=> b!553232 m!802983))

(assert (=> b!553232 m!802143))

(declare-fun m!802985 () Bool)

(assert (=> b!553232 m!802985))

(assert (=> b!553232 m!802155))

(assert (=> b!552590 d!192952))

(assert (=> b!552590 d!192804))

(assert (=> b!552590 d!192806))

(assert (=> b!552590 d!192716))

(assert (=> b!552635 d!192724))

(declare-fun d!192954 () Bool)

(assert (=> d!192954 (= (apply!1312 (transformation!1045 (rule!1771 (_1!3512 (get!2082 lt!233134)))) (seqFromList!1235 (originalCharacters!1084 (_1!3512 (get!2082 lt!233134))))) (dynLambda!3189 (toValue!1892 (transformation!1045 (rule!1771 (_1!3512 (get!2082 lt!233134))))) (seqFromList!1235 (originalCharacters!1084 (_1!3512 (get!2082 lt!233134))))))))

(declare-fun b_lambda!21283 () Bool)

(assert (=> (not b_lambda!21283) (not d!192954)))

(declare-fun t!75252 () Bool)

(declare-fun tb!48321 () Bool)

(assert (=> (and b!552418 (= (toValue!1892 (transformation!1045 (h!10886 rules!3103))) (toValue!1892 (transformation!1045 (rule!1771 (_1!3512 (get!2082 lt!233134)))))) t!75252) tb!48321))

(declare-fun result!54098 () Bool)

(assert (=> tb!48321 (= result!54098 (inv!21 (dynLambda!3189 (toValue!1892 (transformation!1045 (rule!1771 (_1!3512 (get!2082 lt!233134))))) (seqFromList!1235 (originalCharacters!1084 (_1!3512 (get!2082 lt!233134)))))))))

(declare-fun m!802987 () Bool)

(assert (=> tb!48321 m!802987))

(assert (=> d!192954 t!75252))

(declare-fun b_and!54041 () Bool)

(assert (= b_and!54001 (and (=> t!75252 result!54098) b_and!54041)))

(declare-fun tb!48323 () Bool)

(declare-fun t!75254 () Bool)

(assert (=> (and b!552412 (= (toValue!1892 (transformation!1045 (rule!1771 token!491))) (toValue!1892 (transformation!1045 (rule!1771 (_1!3512 (get!2082 lt!233134)))))) t!75254) tb!48323))

(declare-fun result!54100 () Bool)

(assert (= result!54100 result!54098))

(assert (=> d!192954 t!75254))

(declare-fun b_and!54043 () Bool)

(assert (= b_and!54003 (and (=> t!75254 result!54100) b_and!54043)))

(declare-fun tb!48325 () Bool)

(declare-fun t!75256 () Bool)

(assert (=> (and b!552682 (= (toValue!1892 (transformation!1045 (h!10886 (t!75168 rules!3103)))) (toValue!1892 (transformation!1045 (rule!1771 (_1!3512 (get!2082 lt!233134)))))) t!75256) tb!48325))

(declare-fun result!54102 () Bool)

(assert (= result!54102 result!54098))

(assert (=> d!192954 t!75256))

(declare-fun b_and!54045 () Bool)

(assert (= b_and!54005 (and (=> t!75256 result!54102) b_and!54045)))

(assert (=> d!192954 m!802209))

(declare-fun m!802989 () Bool)

(assert (=> d!192954 m!802989))

(assert (=> b!552635 d!192954))

(declare-fun d!192956 () Bool)

(assert (=> d!192956 (= (seqFromList!1235 (originalCharacters!1084 (_1!3512 (get!2082 lt!233134)))) (fromListB!537 (originalCharacters!1084 (_1!3512 (get!2082 lt!233134)))))))

(declare-fun bs!67961 () Bool)

(assert (= bs!67961 d!192956))

(declare-fun m!802991 () Bool)

(assert (=> bs!67961 m!802991))

(assert (=> b!552635 d!192956))

(declare-fun d!192958 () Bool)

(declare-fun c!103932 () Bool)

(assert (=> d!192958 (= c!103932 ((_ is Nil!5483) lt!233130))))

(declare-fun e!334683 () (InoxSet C!3680))

(assert (=> d!192958 (= (content!956 lt!233130) e!334683)))

(declare-fun b!553234 () Bool)

(assert (=> b!553234 (= e!334683 ((as const (Array C!3680 Bool)) false))))

(declare-fun b!553235 () Bool)

(assert (=> b!553235 (= e!334683 ((_ map or) (store ((as const (Array C!3680 Bool)) false) (h!10884 lt!233130) true) (content!956 (t!75166 lt!233130))))))

(assert (= (and d!192958 c!103932) b!553234))

(assert (= (and d!192958 (not c!103932)) b!553235))

(declare-fun m!802993 () Bool)

(assert (=> b!553235 m!802993))

(declare-fun m!802995 () Bool)

(assert (=> b!553235 m!802995))

(assert (=> d!192674 d!192958))

(declare-fun d!192960 () Bool)

(declare-fun c!103933 () Bool)

(assert (=> d!192960 (= c!103933 ((_ is Nil!5483) lt!233060))))

(declare-fun e!334684 () (InoxSet C!3680))

(assert (=> d!192960 (= (content!956 lt!233060) e!334684)))

(declare-fun b!553236 () Bool)

(assert (=> b!553236 (= e!334684 ((as const (Array C!3680 Bool)) false))))

(declare-fun b!553237 () Bool)

(assert (=> b!553237 (= e!334684 ((_ map or) (store ((as const (Array C!3680 Bool)) false) (h!10884 lt!233060) true) (content!956 (t!75166 lt!233060))))))

(assert (= (and d!192960 c!103933) b!553236))

(assert (= (and d!192960 (not c!103933)) b!553237))

(declare-fun m!802997 () Bool)

(assert (=> b!553237 m!802997))

(assert (=> b!553237 m!802317))

(assert (=> d!192674 d!192960))

(assert (=> d!192674 d!192914))

(declare-fun d!192962 () Bool)

(assert (=> d!192962 (= (inv!6874 (tag!1307 (h!10886 (t!75168 rules!3103)))) (= (mod (str.len (value!34623 (tag!1307 (h!10886 (t!75168 rules!3103))))) 2) 0))))

(assert (=> b!552681 d!192962))

(declare-fun d!192964 () Bool)

(declare-fun res!237293 () Bool)

(declare-fun e!334685 () Bool)

(assert (=> d!192964 (=> (not res!237293) (not e!334685))))

(assert (=> d!192964 (= res!237293 (semiInverseModEq!401 (toChars!1751 (transformation!1045 (h!10886 (t!75168 rules!3103)))) (toValue!1892 (transformation!1045 (h!10886 (t!75168 rules!3103))))))))

(assert (=> d!192964 (= (inv!6877 (transformation!1045 (h!10886 (t!75168 rules!3103)))) e!334685)))

(declare-fun b!553238 () Bool)

(assert (=> b!553238 (= e!334685 (equivClasses!384 (toChars!1751 (transformation!1045 (h!10886 (t!75168 rules!3103)))) (toValue!1892 (transformation!1045 (h!10886 (t!75168 rules!3103))))))))

(assert (= (and d!192964 res!237293) b!553238))

(declare-fun m!802999 () Bool)

(assert (=> d!192964 m!802999))

(declare-fun m!803001 () Bool)

(assert (=> b!553238 m!803001))

(assert (=> b!552681 d!192964))

(declare-fun d!192966 () Bool)

(declare-fun lt!233270 () Int)

(assert (=> d!192966 (>= lt!233270 0)))

(declare-fun e!334686 () Int)

(assert (=> d!192966 (= lt!233270 e!334686)))

(declare-fun c!103934 () Bool)

(assert (=> d!192966 (= c!103934 ((_ is Nil!5483) lt!233136))))

(assert (=> d!192966 (= (size!4377 lt!233136) lt!233270)))

(declare-fun b!553239 () Bool)

(assert (=> b!553239 (= e!334686 0)))

(declare-fun b!553240 () Bool)

(assert (=> b!553240 (= e!334686 (+ 1 (size!4377 (t!75166 lt!233136))))))

(assert (= (and d!192966 c!103934) b!553239))

(assert (= (and d!192966 (not c!103934)) b!553240))

(declare-fun m!803003 () Bool)

(assert (=> b!553240 m!803003))

(assert (=> b!552645 d!192966))

(assert (=> b!552645 d!192918))

(assert (=> b!552645 d!192950))

(declare-fun bs!67962 () Bool)

(declare-fun d!192968 () Bool)

(assert (= bs!67962 (and d!192968 d!192820)))

(declare-fun lambda!15564 () Int)

(assert (=> bs!67962 (= lambda!15564 lambda!15554)))

(assert (=> d!192968 true))

(declare-fun lt!233273 () Bool)

(assert (=> d!192968 (= lt!233273 (rulesValidInductive!370 thiss!22590 rules!3103))))

(assert (=> d!192968 (= lt!233273 (forall!1530 rules!3103 lambda!15564))))

(assert (=> d!192968 (= (rulesValid!366 thiss!22590 rules!3103) lt!233273)))

(declare-fun bs!67963 () Bool)

(assert (= bs!67963 d!192968))

(assert (=> bs!67963 m!802151))

(declare-fun m!803005 () Bool)

(assert (=> bs!67963 m!803005))

(assert (=> d!192686 d!192968))

(declare-fun d!192970 () Bool)

(assert (=> d!192970 (= (isDefined!1207 lt!233134) (not (isEmpty!3959 lt!233134)))))

(declare-fun bs!67964 () Bool)

(assert (= bs!67964 d!192970))

(assert (=> bs!67964 m!802219))

(assert (=> b!552641 d!192970))

(declare-fun d!192972 () Bool)

(declare-fun c!103935 () Bool)

(assert (=> d!192972 (= c!103935 ((_ is Nil!5483) lt!233137))))

(declare-fun e!334687 () (InoxSet C!3680))

(assert (=> d!192972 (= (content!956 lt!233137) e!334687)))

(declare-fun b!553241 () Bool)

(assert (=> b!553241 (= e!334687 ((as const (Array C!3680 Bool)) false))))

(declare-fun b!553242 () Bool)

(assert (=> b!553242 (= e!334687 ((_ map or) (store ((as const (Array C!3680 Bool)) false) (h!10884 lt!233137) true) (content!956 (t!75166 lt!233137))))))

(assert (= (and d!192972 c!103935) b!553241))

(assert (= (and d!192972 (not c!103935)) b!553242))

(declare-fun m!803007 () Bool)

(assert (=> b!553242 m!803007))

(declare-fun m!803009 () Bool)

(assert (=> b!553242 m!803009))

(assert (=> d!192688 d!192972))

(declare-fun d!192974 () Bool)

(declare-fun c!103936 () Bool)

(assert (=> d!192974 (= c!103936 ((_ is Nil!5483) lt!233063))))

(declare-fun e!334688 () (InoxSet C!3680))

(assert (=> d!192974 (= (content!956 lt!233063) e!334688)))

(declare-fun b!553243 () Bool)

(assert (=> b!553243 (= e!334688 ((as const (Array C!3680 Bool)) false))))

(declare-fun b!553244 () Bool)

(assert (=> b!553244 (= e!334688 ((_ map or) (store ((as const (Array C!3680 Bool)) false) (h!10884 lt!233063) true) (content!956 (t!75166 lt!233063))))))

(assert (= (and d!192974 c!103936) b!553243))

(assert (= (and d!192974 (not c!103936)) b!553244))

(declare-fun m!803011 () Bool)

(assert (=> b!553244 m!803011))

(declare-fun m!803013 () Bool)

(assert (=> b!553244 m!803013))

(assert (=> d!192688 d!192974))

(declare-fun d!192976 () Bool)

(declare-fun c!103937 () Bool)

(assert (=> d!192976 (= c!103937 ((_ is Nil!5483) (_2!3512 (v!16221 lt!233064))))))

(declare-fun e!334689 () (InoxSet C!3680))

(assert (=> d!192976 (= (content!956 (_2!3512 (v!16221 lt!233064))) e!334689)))

(declare-fun b!553245 () Bool)

(assert (=> b!553245 (= e!334689 ((as const (Array C!3680 Bool)) false))))

(declare-fun b!553246 () Bool)

(assert (=> b!553246 (= e!334689 ((_ map or) (store ((as const (Array C!3680 Bool)) false) (h!10884 (_2!3512 (v!16221 lt!233064))) true) (content!956 (t!75166 (_2!3512 (v!16221 lt!233064))))))))

(assert (= (and d!192976 c!103937) b!553245))

(assert (= (and d!192976 (not c!103937)) b!553246))

(declare-fun m!803015 () Bool)

(assert (=> b!553246 m!803015))

(declare-fun m!803017 () Bool)

(assert (=> b!553246 m!803017))

(assert (=> d!192688 d!192976))

(declare-fun b!553247 () Bool)

(declare-fun res!237296 () Bool)

(declare-fun e!334691 () Bool)

(assert (=> b!553247 (=> (not res!237296) (not e!334691))))

(declare-fun lt!233277 () Option!1395)

(assert (=> b!553247 (= res!237296 (< (size!4377 (_2!3512 (get!2082 lt!233277))) (size!4377 input!2705)))))

(declare-fun b!553248 () Bool)

(declare-fun res!237298 () Bool)

(assert (=> b!553248 (=> (not res!237298) (not e!334691))))

(assert (=> b!553248 (= res!237298 (= (value!34649 (_1!3512 (get!2082 lt!233277))) (apply!1312 (transformation!1045 (rule!1771 (_1!3512 (get!2082 lt!233277)))) (seqFromList!1235 (originalCharacters!1084 (_1!3512 (get!2082 lt!233277)))))))))

(declare-fun b!553249 () Bool)

(declare-fun res!237295 () Bool)

(assert (=> b!553249 (=> (not res!237295) (not e!334691))))

(assert (=> b!553249 (= res!237295 (= (++!1533 (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233277)))) (_2!3512 (get!2082 lt!233277))) input!2705))))

(declare-fun b!553250 () Bool)

(declare-fun res!237294 () Bool)

(assert (=> b!553250 (=> (not res!237294) (not e!334691))))

(assert (=> b!553250 (= res!237294 (matchR!532 (regex!1045 (rule!1771 (_1!3512 (get!2082 lt!233277)))) (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233277))))))))

(declare-fun d!192978 () Bool)

(declare-fun e!334690 () Bool)

(assert (=> d!192978 e!334690))

(declare-fun res!237297 () Bool)

(assert (=> d!192978 (=> res!237297 e!334690)))

(assert (=> d!192978 (= res!237297 (isEmpty!3959 lt!233277))))

(declare-fun e!334692 () Option!1395)

(assert (=> d!192978 (= lt!233277 e!334692)))

(declare-fun c!103938 () Bool)

(assert (=> d!192978 (= c!103938 (and ((_ is Cons!5485) (t!75168 rules!3103)) ((_ is Nil!5485) (t!75168 (t!75168 rules!3103)))))))

(declare-fun lt!233276 () Unit!9727)

(declare-fun lt!233278 () Unit!9727)

(assert (=> d!192978 (= lt!233276 lt!233278)))

(assert (=> d!192978 (isPrefix!681 input!2705 input!2705)))

(assert (=> d!192978 (= lt!233278 (lemmaIsPrefixRefl!419 input!2705 input!2705))))

(assert (=> d!192978 (rulesValidInductive!370 thiss!22590 (t!75168 rules!3103))))

(assert (=> d!192978 (= (maxPrefix!629 thiss!22590 (t!75168 rules!3103) input!2705) lt!233277)))

(declare-fun bm!38448 () Bool)

(declare-fun call!38453 () Option!1395)

(assert (=> bm!38448 (= call!38453 (maxPrefixOneRule!336 thiss!22590 (h!10886 (t!75168 rules!3103)) input!2705))))

(declare-fun b!553251 () Bool)

(assert (=> b!553251 (= e!334691 (contains!1281 (t!75168 rules!3103) (rule!1771 (_1!3512 (get!2082 lt!233277)))))))

(declare-fun b!553252 () Bool)

(declare-fun res!237299 () Bool)

(assert (=> b!553252 (=> (not res!237299) (not e!334691))))

(assert (=> b!553252 (= res!237299 (= (list!2271 (charsOf!674 (_1!3512 (get!2082 lt!233277)))) (originalCharacters!1084 (_1!3512 (get!2082 lt!233277)))))))

(declare-fun b!553253 () Bool)

(declare-fun lt!233274 () Option!1395)

(declare-fun lt!233275 () Option!1395)

(assert (=> b!553253 (= e!334692 (ite (and ((_ is None!1394) lt!233274) ((_ is None!1394) lt!233275)) None!1394 (ite ((_ is None!1394) lt!233275) lt!233274 (ite ((_ is None!1394) lt!233274) lt!233275 (ite (>= (size!4376 (_1!3512 (v!16221 lt!233274))) (size!4376 (_1!3512 (v!16221 lt!233275)))) lt!233274 lt!233275)))))))

(assert (=> b!553253 (= lt!233274 call!38453)))

(assert (=> b!553253 (= lt!233275 (maxPrefix!629 thiss!22590 (t!75168 (t!75168 rules!3103)) input!2705))))

(declare-fun b!553254 () Bool)

(assert (=> b!553254 (= e!334690 e!334691)))

(declare-fun res!237300 () Bool)

(assert (=> b!553254 (=> (not res!237300) (not e!334691))))

(assert (=> b!553254 (= res!237300 (isDefined!1207 lt!233277))))

(declare-fun b!553255 () Bool)

(assert (=> b!553255 (= e!334692 call!38453)))

(assert (= (and d!192978 c!103938) b!553255))

(assert (= (and d!192978 (not c!103938)) b!553253))

(assert (= (or b!553255 b!553253) bm!38448))

(assert (= (and d!192978 (not res!237297)) b!553254))

(assert (= (and b!553254 res!237300) b!553252))

(assert (= (and b!553252 res!237299) b!553247))

(assert (= (and b!553247 res!237296) b!553249))

(assert (= (and b!553249 res!237295) b!553248))

(assert (= (and b!553248 res!237298) b!553250))

(assert (= (and b!553250 res!237294) b!553251))

(declare-fun m!803019 () Bool)

(assert (=> b!553248 m!803019))

(declare-fun m!803021 () Bool)

(assert (=> b!553248 m!803021))

(assert (=> b!553248 m!803021))

(declare-fun m!803023 () Bool)

(assert (=> b!553248 m!803023))

(declare-fun m!803025 () Bool)

(assert (=> bm!38448 m!803025))

(assert (=> b!553252 m!803019))

(declare-fun m!803027 () Bool)

(assert (=> b!553252 m!803027))

(assert (=> b!553252 m!803027))

(declare-fun m!803029 () Bool)

(assert (=> b!553252 m!803029))

(declare-fun m!803031 () Bool)

(assert (=> d!192978 m!803031))

(assert (=> d!192978 m!802147))

(assert (=> d!192978 m!802149))

(assert (=> d!192978 m!802817))

(declare-fun m!803033 () Bool)

(assert (=> b!553253 m!803033))

(assert (=> b!553247 m!803019))

(declare-fun m!803035 () Bool)

(assert (=> b!553247 m!803035))

(assert (=> b!553247 m!802157))

(assert (=> b!553251 m!803019))

(declare-fun m!803037 () Bool)

(assert (=> b!553251 m!803037))

(declare-fun m!803039 () Bool)

(assert (=> b!553254 m!803039))

(assert (=> b!553249 m!803019))

(assert (=> b!553249 m!803027))

(assert (=> b!553249 m!803027))

(assert (=> b!553249 m!803029))

(assert (=> b!553249 m!803029))

(declare-fun m!803041 () Bool)

(assert (=> b!553249 m!803041))

(assert (=> b!553250 m!803019))

(assert (=> b!553250 m!803027))

(assert (=> b!553250 m!803027))

(assert (=> b!553250 m!803029))

(assert (=> b!553250 m!803029))

(declare-fun m!803043 () Bool)

(assert (=> b!553250 m!803043))

(assert (=> b!552594 d!192978))

(declare-fun d!192980 () Bool)

(assert (=> d!192980 (= (isEmpty!3959 lt!233059) (not ((_ is Some!1394) lt!233059)))))

(assert (=> d!192676 d!192980))

(declare-fun b!553257 () Bool)

(declare-fun e!334694 () List!5493)

(assert (=> b!553257 (= e!334694 (Cons!5483 (h!10884 (t!75166 lt!233063)) (++!1533 (t!75166 (t!75166 lt!233063)) (_2!3512 (v!16221 lt!233064)))))))

(declare-fun e!334693 () Bool)

(declare-fun b!553259 () Bool)

(declare-fun lt!233279 () List!5493)

(assert (=> b!553259 (= e!334693 (or (not (= (_2!3512 (v!16221 lt!233064)) Nil!5483)) (= lt!233279 (t!75166 lt!233063))))))

(declare-fun d!192982 () Bool)

(assert (=> d!192982 e!334693))

(declare-fun res!237302 () Bool)

(assert (=> d!192982 (=> (not res!237302) (not e!334693))))

(assert (=> d!192982 (= res!237302 (= (content!956 lt!233279) ((_ map or) (content!956 (t!75166 lt!233063)) (content!956 (_2!3512 (v!16221 lt!233064))))))))

(assert (=> d!192982 (= lt!233279 e!334694)))

(declare-fun c!103939 () Bool)

(assert (=> d!192982 (= c!103939 ((_ is Nil!5483) (t!75166 lt!233063)))))

(assert (=> d!192982 (= (++!1533 (t!75166 lt!233063) (_2!3512 (v!16221 lt!233064))) lt!233279)))

(declare-fun b!553256 () Bool)

(assert (=> b!553256 (= e!334694 (_2!3512 (v!16221 lt!233064)))))

(declare-fun b!553258 () Bool)

(declare-fun res!237301 () Bool)

(assert (=> b!553258 (=> (not res!237301) (not e!334693))))

(assert (=> b!553258 (= res!237301 (= (size!4377 lt!233279) (+ (size!4377 (t!75166 lt!233063)) (size!4377 (_2!3512 (v!16221 lt!233064))))))))

(assert (= (and d!192982 c!103939) b!553256))

(assert (= (and d!192982 (not c!103939)) b!553257))

(assert (= (and d!192982 res!237302) b!553258))

(assert (= (and b!553258 res!237301) b!553259))

(declare-fun m!803045 () Bool)

(assert (=> b!553257 m!803045))

(declare-fun m!803047 () Bool)

(assert (=> d!192982 m!803047))

(assert (=> d!192982 m!803013))

(assert (=> d!192982 m!802257))

(declare-fun m!803049 () Bool)

(assert (=> b!553258 m!803049))

(assert (=> b!553258 m!802181))

(assert (=> b!553258 m!802261))

(assert (=> b!552651 d!192982))

(declare-fun d!192984 () Bool)

(assert (=> d!192984 (= (list!2271 lt!233127) (list!2273 (c!103787 lt!233127)))))

(declare-fun bs!67965 () Bool)

(assert (= bs!67965 d!192984))

(declare-fun m!803051 () Bool)

(assert (=> bs!67965 m!803051))

(assert (=> d!192670 d!192984))

(declare-fun bs!67966 () Bool)

(declare-fun d!192986 () Bool)

(assert (= bs!67966 (and d!192986 d!192924)))

(declare-fun lambda!15565 () Int)

(assert (=> bs!67966 (= (and (= (toChars!1751 (transformation!1045 (rule!1771 token!491))) (toChars!1751 (transformation!1045 (h!10886 rules!3103)))) (= (toValue!1892 (transformation!1045 (rule!1771 token!491))) (toValue!1892 (transformation!1045 (h!10886 rules!3103))))) (= lambda!15565 lambda!15560))))

(assert (=> d!192986 true))

(assert (=> d!192986 (< (dynLambda!3192 order!4535 (toChars!1751 (transformation!1045 (rule!1771 token!491)))) (dynLambda!3193 order!4537 lambda!15565))))

(assert (=> d!192986 true))

(assert (=> d!192986 (< (dynLambda!3190 order!4531 (toValue!1892 (transformation!1045 (rule!1771 token!491)))) (dynLambda!3193 order!4537 lambda!15565))))

(assert (=> d!192986 (= (semiInverseModEq!401 (toChars!1751 (transformation!1045 (rule!1771 token!491))) (toValue!1892 (transformation!1045 (rule!1771 token!491)))) (Forall!278 lambda!15565))))

(declare-fun bs!67967 () Bool)

(assert (= bs!67967 d!192986))

(declare-fun m!803053 () Bool)

(assert (=> bs!67967 m!803053))

(assert (=> d!192660 d!192986))

(declare-fun d!192988 () Bool)

(assert (=> d!192988 (= (isEmpty!3957 (originalCharacters!1084 token!491)) ((_ is Nil!5483) (originalCharacters!1084 token!491)))))

(assert (=> d!192620 d!192988))

(declare-fun b!553262 () Bool)

(declare-fun e!334695 () Bool)

(declare-fun tp!174916 () Bool)

(assert (=> b!553262 (= e!334695 tp!174916)))

(declare-fun b!553261 () Bool)

(declare-fun tp!174917 () Bool)

(declare-fun tp!174913 () Bool)

(assert (=> b!553261 (= e!334695 (and tp!174917 tp!174913))))

(declare-fun b!553260 () Bool)

(assert (=> b!553260 (= e!334695 tp_is_empty!3113)))

(assert (=> b!552665 (= tp!174812 e!334695)))

(declare-fun b!553263 () Bool)

(declare-fun tp!174915 () Bool)

(declare-fun tp!174914 () Bool)

(assert (=> b!553263 (= e!334695 (and tp!174915 tp!174914))))

(assert (= (and b!552665 ((_ is ElementMatch!1379) (regOne!3270 (regex!1045 (rule!1771 token!491))))) b!553260))

(assert (= (and b!552665 ((_ is Concat!2448) (regOne!3270 (regex!1045 (rule!1771 token!491))))) b!553261))

(assert (= (and b!552665 ((_ is Star!1379) (regOne!3270 (regex!1045 (rule!1771 token!491))))) b!553262))

(assert (= (and b!552665 ((_ is Union!1379) (regOne!3270 (regex!1045 (rule!1771 token!491))))) b!553263))

(declare-fun b!553266 () Bool)

(declare-fun e!334696 () Bool)

(declare-fun tp!174921 () Bool)

(assert (=> b!553266 (= e!334696 tp!174921)))

(declare-fun b!553265 () Bool)

(declare-fun tp!174922 () Bool)

(declare-fun tp!174918 () Bool)

(assert (=> b!553265 (= e!334696 (and tp!174922 tp!174918))))

(declare-fun b!553264 () Bool)

(assert (=> b!553264 (= e!334696 tp_is_empty!3113)))

(assert (=> b!552665 (= tp!174808 e!334696)))

(declare-fun b!553267 () Bool)

(declare-fun tp!174920 () Bool)

(declare-fun tp!174919 () Bool)

(assert (=> b!553267 (= e!334696 (and tp!174920 tp!174919))))

(assert (= (and b!552665 ((_ is ElementMatch!1379) (regTwo!3270 (regex!1045 (rule!1771 token!491))))) b!553264))

(assert (= (and b!552665 ((_ is Concat!2448) (regTwo!3270 (regex!1045 (rule!1771 token!491))))) b!553265))

(assert (= (and b!552665 ((_ is Star!1379) (regTwo!3270 (regex!1045 (rule!1771 token!491))))) b!553266))

(assert (= (and b!552665 ((_ is Union!1379) (regTwo!3270 (regex!1045 (rule!1771 token!491))))) b!553267))

(declare-fun b!553270 () Bool)

(declare-fun e!334697 () Bool)

(declare-fun tp!174926 () Bool)

(assert (=> b!553270 (= e!334697 tp!174926)))

(declare-fun b!553269 () Bool)

(declare-fun tp!174927 () Bool)

(declare-fun tp!174923 () Bool)

(assert (=> b!553269 (= e!334697 (and tp!174927 tp!174923))))

(declare-fun b!553268 () Bool)

(assert (=> b!553268 (= e!334697 tp_is_empty!3113)))

(assert (=> b!552681 (= tp!174829 e!334697)))

(declare-fun b!553271 () Bool)

(declare-fun tp!174925 () Bool)

(declare-fun tp!174924 () Bool)

(assert (=> b!553271 (= e!334697 (and tp!174925 tp!174924))))

(assert (= (and b!552681 ((_ is ElementMatch!1379) (regex!1045 (h!10886 (t!75168 rules!3103))))) b!553268))

(assert (= (and b!552681 ((_ is Concat!2448) (regex!1045 (h!10886 (t!75168 rules!3103))))) b!553269))

(assert (= (and b!552681 ((_ is Star!1379) (regex!1045 (h!10886 (t!75168 rules!3103))))) b!553270))

(assert (= (and b!552681 ((_ is Union!1379) (regex!1045 (h!10886 (t!75168 rules!3103))))) b!553271))

(declare-fun b!553274 () Bool)

(declare-fun e!334698 () Bool)

(declare-fun tp!174931 () Bool)

(assert (=> b!553274 (= e!334698 tp!174931)))

(declare-fun b!553273 () Bool)

(declare-fun tp!174932 () Bool)

(declare-fun tp!174928 () Bool)

(assert (=> b!553273 (= e!334698 (and tp!174932 tp!174928))))

(declare-fun b!553272 () Bool)

(assert (=> b!553272 (= e!334698 tp_is_empty!3113)))

(assert (=> b!552669 (= tp!174817 e!334698)))

(declare-fun b!553275 () Bool)

(declare-fun tp!174930 () Bool)

(declare-fun tp!174929 () Bool)

(assert (=> b!553275 (= e!334698 (and tp!174930 tp!174929))))

(assert (= (and b!552669 ((_ is ElementMatch!1379) (regOne!3270 (regex!1045 (h!10886 rules!3103))))) b!553272))

(assert (= (and b!552669 ((_ is Concat!2448) (regOne!3270 (regex!1045 (h!10886 rules!3103))))) b!553273))

(assert (= (and b!552669 ((_ is Star!1379) (regOne!3270 (regex!1045 (h!10886 rules!3103))))) b!553274))

(assert (= (and b!552669 ((_ is Union!1379) (regOne!3270 (regex!1045 (h!10886 rules!3103))))) b!553275))

(declare-fun b!553278 () Bool)

(declare-fun e!334699 () Bool)

(declare-fun tp!174936 () Bool)

(assert (=> b!553278 (= e!334699 tp!174936)))

(declare-fun b!553277 () Bool)

(declare-fun tp!174937 () Bool)

(declare-fun tp!174933 () Bool)

(assert (=> b!553277 (= e!334699 (and tp!174937 tp!174933))))

(declare-fun b!553276 () Bool)

(assert (=> b!553276 (= e!334699 tp_is_empty!3113)))

(assert (=> b!552669 (= tp!174813 e!334699)))

(declare-fun b!553279 () Bool)

(declare-fun tp!174935 () Bool)

(declare-fun tp!174934 () Bool)

(assert (=> b!553279 (= e!334699 (and tp!174935 tp!174934))))

(assert (= (and b!552669 ((_ is ElementMatch!1379) (regTwo!3270 (regex!1045 (h!10886 rules!3103))))) b!553276))

(assert (= (and b!552669 ((_ is Concat!2448) (regTwo!3270 (regex!1045 (h!10886 rules!3103))))) b!553277))

(assert (= (and b!552669 ((_ is Star!1379) (regTwo!3270 (regex!1045 (h!10886 rules!3103))))) b!553278))

(assert (= (and b!552669 ((_ is Union!1379) (regTwo!3270 (regex!1045 (h!10886 rules!3103))))) b!553279))

(declare-fun b!553282 () Bool)

(declare-fun b_free!15493 () Bool)

(declare-fun b_next!15509 () Bool)

(assert (=> b!553282 (= b_free!15493 (not b_next!15509))))

(declare-fun tb!48327 () Bool)

(declare-fun t!75258 () Bool)

(assert (=> (and b!553282 (= (toValue!1892 (transformation!1045 (h!10886 (t!75168 (t!75168 rules!3103))))) (toValue!1892 (transformation!1045 (rule!1771 (_1!3512 (get!2082 lt!233118)))))) t!75258) tb!48327))

(declare-fun result!54104 () Bool)

(assert (= result!54104 result!54044))

(assert (=> d!192718 t!75258))

(declare-fun t!75260 () Bool)

(declare-fun tb!48329 () Bool)

(assert (=> (and b!553282 (= (toValue!1892 (transformation!1045 (h!10886 (t!75168 (t!75168 rules!3103))))) (toValue!1892 (transformation!1045 (rule!1771 (_1!3512 (get!2082 lt!233134)))))) t!75260) tb!48329))

(declare-fun result!54106 () Bool)

(assert (= result!54106 result!54098))

(assert (=> d!192954 t!75260))

(declare-fun b_and!54047 () Bool)

(declare-fun tp!174939 () Bool)

(assert (=> b!553282 (= tp!174939 (and (=> t!75258 result!54104) (=> t!75260 result!54106) b_and!54047))))

(declare-fun b_free!15495 () Bool)

(declare-fun b_next!15511 () Bool)

(assert (=> b!553282 (= b_free!15495 (not b_next!15511))))

(declare-fun t!75262 () Bool)

(declare-fun tb!48331 () Bool)

(assert (=> (and b!553282 (= (toChars!1751 (transformation!1045 (h!10886 (t!75168 (t!75168 rules!3103))))) (toChars!1751 (transformation!1045 (rule!1771 (_1!3512 (get!2082 lt!233118)))))) t!75262) tb!48331))

(declare-fun result!54108 () Bool)

(assert (= result!54108 result!54072))

(assert (=> d!192806 t!75262))

(declare-fun t!75264 () Bool)

(declare-fun tb!48333 () Bool)

(assert (=> (and b!553282 (= (toChars!1751 (transformation!1045 (h!10886 (t!75168 (t!75168 rules!3103))))) (toChars!1751 (transformation!1045 (rule!1771 (_1!3512 (v!16221 lt!233064)))))) t!75264) tb!48333))

(declare-fun result!54110 () Bool)

(assert (= result!54110 result!54024))

(assert (=> d!192670 t!75264))

(declare-fun t!75266 () Bool)

(declare-fun tb!48335 () Bool)

(assert (=> (and b!553282 (= (toChars!1751 (transformation!1045 (h!10886 (t!75168 (t!75168 rules!3103))))) (toChars!1751 (transformation!1045 (rule!1771 token!491)))) t!75266) tb!48335))

(declare-fun result!54112 () Bool)

(assert (= result!54112 result!53998))

(assert (=> b!552471 t!75266))

(assert (=> d!192606 t!75266))

(declare-fun t!75268 () Bool)

(declare-fun tb!48337 () Bool)

(assert (=> (and b!553282 (= (toChars!1751 (transformation!1045 (h!10886 (t!75168 (t!75168 rules!3103))))) (toChars!1751 (transformation!1045 (rule!1771 (_1!3512 (get!2082 lt!233134)))))) t!75268) tb!48337))

(declare-fun result!54114 () Bool)

(assert (= result!54114 result!54052))

(assert (=> d!192738 t!75268))

(declare-fun b_and!54049 () Bool)

(declare-fun tp!174938 () Bool)

(assert (=> b!553282 (= tp!174938 (and (=> t!75264 result!54110) (=> t!75266 result!54112) (=> t!75268 result!54114) (=> t!75262 result!54108) b_and!54049))))

(declare-fun e!334700 () Bool)

(assert (=> b!553282 (= e!334700 (and tp!174939 tp!174938))))

(declare-fun e!334703 () Bool)

(declare-fun tp!174941 () Bool)

(declare-fun b!553281 () Bool)

(assert (=> b!553281 (= e!334703 (and tp!174941 (inv!6874 (tag!1307 (h!10886 (t!75168 (t!75168 rules!3103))))) (inv!6877 (transformation!1045 (h!10886 (t!75168 (t!75168 rules!3103))))) e!334700))))

(declare-fun b!553280 () Bool)

(declare-fun e!334702 () Bool)

(declare-fun tp!174940 () Bool)

(assert (=> b!553280 (= e!334702 (and e!334703 tp!174940))))

(assert (=> b!552680 (= tp!174828 e!334702)))

(assert (= b!553281 b!553282))

(assert (= b!553280 b!553281))

(assert (= (and b!552680 ((_ is Cons!5485) (t!75168 (t!75168 rules!3103)))) b!553280))

(declare-fun m!803055 () Bool)

(assert (=> b!553281 m!803055))

(declare-fun m!803057 () Bool)

(assert (=> b!553281 m!803057))

(declare-fun b!553291 () Bool)

(declare-fun tp!174948 () Bool)

(declare-fun tp!174949 () Bool)

(declare-fun e!334708 () Bool)

(assert (=> b!553291 (= e!334708 (and (inv!6881 (left!4521 (c!103787 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 token!491))) (value!34649 token!491))))) tp!174948 (inv!6881 (right!4851 (c!103787 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 token!491))) (value!34649 token!491))))) tp!174949))))

(declare-fun b!553293 () Bool)

(declare-fun e!334709 () Bool)

(declare-fun tp!174950 () Bool)

(assert (=> b!553293 (= e!334709 tp!174950)))

(declare-fun b!553292 () Bool)

(declare-fun inv!6888 (IArray!3525) Bool)

(assert (=> b!553292 (= e!334708 (and (inv!6888 (xs!4399 (c!103787 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 token!491))) (value!34649 token!491))))) e!334709))))

(assert (=> b!552441 (= tp!174755 (and (inv!6881 (c!103787 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 token!491))) (value!34649 token!491)))) e!334708))))

(assert (= (and b!552441 ((_ is Node!1762) (c!103787 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 token!491))) (value!34649 token!491))))) b!553291))

(assert (= b!553292 b!553293))

(assert (= (and b!552441 ((_ is Leaf!2792) (c!103787 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 token!491))) (value!34649 token!491))))) b!553292))

(declare-fun m!803059 () Bool)

(assert (=> b!553291 m!803059))

(declare-fun m!803061 () Bool)

(assert (=> b!553291 m!803061))

(declare-fun m!803063 () Bool)

(assert (=> b!553292 m!803063))

(assert (=> b!552441 m!801977))

(declare-fun b!553294 () Bool)

(declare-fun e!334710 () Bool)

(declare-fun tp!174951 () Bool)

(assert (=> b!553294 (= e!334710 (and tp_is_empty!3113 tp!174951))))

(assert (=> b!552689 (= tp!174834 e!334710)))

(assert (= (and b!552689 ((_ is Cons!5483) (t!75166 (t!75166 input!2705)))) b!553294))

(declare-fun b!553295 () Bool)

(declare-fun e!334711 () Bool)

(declare-fun tp!174952 () Bool)

(assert (=> b!553295 (= e!334711 (and tp_is_empty!3113 tp!174952))))

(assert (=> b!552688 (= tp!174833 e!334711)))

(assert (= (and b!552688 ((_ is Cons!5483) (t!75166 (originalCharacters!1084 token!491)))) b!553295))

(declare-fun b!553296 () Bool)

(declare-fun tp!174953 () Bool)

(declare-fun tp!174954 () Bool)

(declare-fun e!334712 () Bool)

(assert (=> b!553296 (= e!334712 (and (inv!6881 (left!4521 (c!103787 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 (_1!3512 (v!16221 lt!233064))))) (value!34649 (_1!3512 (v!16221 lt!233064))))))) tp!174953 (inv!6881 (right!4851 (c!103787 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 (_1!3512 (v!16221 lt!233064))))) (value!34649 (_1!3512 (v!16221 lt!233064))))))) tp!174954))))

(declare-fun b!553298 () Bool)

(declare-fun e!334713 () Bool)

(declare-fun tp!174955 () Bool)

(assert (=> b!553298 (= e!334713 tp!174955)))

(declare-fun b!553297 () Bool)

(assert (=> b!553297 (= e!334712 (and (inv!6888 (xs!4399 (c!103787 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 (_1!3512 (v!16221 lt!233064))))) (value!34649 (_1!3512 (v!16221 lt!233064))))))) e!334713))))

(assert (=> b!552621 (= tp!174797 (and (inv!6881 (c!103787 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 (_1!3512 (v!16221 lt!233064))))) (value!34649 (_1!3512 (v!16221 lt!233064)))))) e!334712))))

(assert (= (and b!552621 ((_ is Node!1762) (c!103787 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 (_1!3512 (v!16221 lt!233064))))) (value!34649 (_1!3512 (v!16221 lt!233064))))))) b!553296))

(assert (= b!553297 b!553298))

(assert (= (and b!552621 ((_ is Leaf!2792) (c!103787 (dynLambda!3183 (toChars!1751 (transformation!1045 (rule!1771 (_1!3512 (v!16221 lt!233064))))) (value!34649 (_1!3512 (v!16221 lt!233064))))))) b!553297))

(declare-fun m!803065 () Bool)

(assert (=> b!553296 m!803065))

(declare-fun m!803067 () Bool)

(assert (=> b!553296 m!803067))

(declare-fun m!803069 () Bool)

(assert (=> b!553297 m!803069))

(assert (=> b!552621 m!802185))

(declare-fun b!553301 () Bool)

(declare-fun e!334714 () Bool)

(declare-fun tp!174959 () Bool)

(assert (=> b!553301 (= e!334714 tp!174959)))

(declare-fun b!553300 () Bool)

(declare-fun tp!174960 () Bool)

(declare-fun tp!174956 () Bool)

(assert (=> b!553300 (= e!334714 (and tp!174960 tp!174956))))

(declare-fun b!553299 () Bool)

(assert (=> b!553299 (= e!334714 tp_is_empty!3113)))

(assert (=> b!552667 (= tp!174810 e!334714)))

(declare-fun b!553302 () Bool)

(declare-fun tp!174958 () Bool)

(declare-fun tp!174957 () Bool)

(assert (=> b!553302 (= e!334714 (and tp!174958 tp!174957))))

(assert (= (and b!552667 ((_ is ElementMatch!1379) (regOne!3271 (regex!1045 (rule!1771 token!491))))) b!553299))

(assert (= (and b!552667 ((_ is Concat!2448) (regOne!3271 (regex!1045 (rule!1771 token!491))))) b!553300))

(assert (= (and b!552667 ((_ is Star!1379) (regOne!3271 (regex!1045 (rule!1771 token!491))))) b!553301))

(assert (= (and b!552667 ((_ is Union!1379) (regOne!3271 (regex!1045 (rule!1771 token!491))))) b!553302))

(declare-fun b!553305 () Bool)

(declare-fun e!334715 () Bool)

(declare-fun tp!174964 () Bool)

(assert (=> b!553305 (= e!334715 tp!174964)))

(declare-fun b!553304 () Bool)

(declare-fun tp!174965 () Bool)

(declare-fun tp!174961 () Bool)

(assert (=> b!553304 (= e!334715 (and tp!174965 tp!174961))))

(declare-fun b!553303 () Bool)

(assert (=> b!553303 (= e!334715 tp_is_empty!3113)))

(assert (=> b!552667 (= tp!174809 e!334715)))

(declare-fun b!553306 () Bool)

(declare-fun tp!174963 () Bool)

(declare-fun tp!174962 () Bool)

(assert (=> b!553306 (= e!334715 (and tp!174963 tp!174962))))

(assert (= (and b!552667 ((_ is ElementMatch!1379) (regTwo!3271 (regex!1045 (rule!1771 token!491))))) b!553303))

(assert (= (and b!552667 ((_ is Concat!2448) (regTwo!3271 (regex!1045 (rule!1771 token!491))))) b!553304))

(assert (= (and b!552667 ((_ is Star!1379) (regTwo!3271 (regex!1045 (rule!1771 token!491))))) b!553305))

(assert (= (and b!552667 ((_ is Union!1379) (regTwo!3271 (regex!1045 (rule!1771 token!491))))) b!553306))

(declare-fun b!553309 () Bool)

(declare-fun e!334716 () Bool)

(declare-fun tp!174969 () Bool)

(assert (=> b!553309 (= e!334716 tp!174969)))

(declare-fun b!553308 () Bool)

(declare-fun tp!174970 () Bool)

(declare-fun tp!174966 () Bool)

(assert (=> b!553308 (= e!334716 (and tp!174970 tp!174966))))

(declare-fun b!553307 () Bool)

(assert (=> b!553307 (= e!334716 tp_is_empty!3113)))

(assert (=> b!552671 (= tp!174815 e!334716)))

(declare-fun b!553310 () Bool)

(declare-fun tp!174968 () Bool)

(declare-fun tp!174967 () Bool)

(assert (=> b!553310 (= e!334716 (and tp!174968 tp!174967))))

(assert (= (and b!552671 ((_ is ElementMatch!1379) (regOne!3271 (regex!1045 (h!10886 rules!3103))))) b!553307))

(assert (= (and b!552671 ((_ is Concat!2448) (regOne!3271 (regex!1045 (h!10886 rules!3103))))) b!553308))

(assert (= (and b!552671 ((_ is Star!1379) (regOne!3271 (regex!1045 (h!10886 rules!3103))))) b!553309))

(assert (= (and b!552671 ((_ is Union!1379) (regOne!3271 (regex!1045 (h!10886 rules!3103))))) b!553310))

(declare-fun b!553313 () Bool)

(declare-fun e!334717 () Bool)

(declare-fun tp!174974 () Bool)

(assert (=> b!553313 (= e!334717 tp!174974)))

(declare-fun b!553312 () Bool)

(declare-fun tp!174975 () Bool)

(declare-fun tp!174971 () Bool)

(assert (=> b!553312 (= e!334717 (and tp!174975 tp!174971))))

(declare-fun b!553311 () Bool)

(assert (=> b!553311 (= e!334717 tp_is_empty!3113)))

(assert (=> b!552671 (= tp!174814 e!334717)))

(declare-fun b!553314 () Bool)

(declare-fun tp!174973 () Bool)

(declare-fun tp!174972 () Bool)

(assert (=> b!553314 (= e!334717 (and tp!174973 tp!174972))))

(assert (= (and b!552671 ((_ is ElementMatch!1379) (regTwo!3271 (regex!1045 (h!10886 rules!3103))))) b!553311))

(assert (= (and b!552671 ((_ is Concat!2448) (regTwo!3271 (regex!1045 (h!10886 rules!3103))))) b!553312))

(assert (= (and b!552671 ((_ is Star!1379) (regTwo!3271 (regex!1045 (h!10886 rules!3103))))) b!553313))

(assert (= (and b!552671 ((_ is Union!1379) (regTwo!3271 (regex!1045 (h!10886 rules!3103))))) b!553314))

(declare-fun b!553315 () Bool)

(declare-fun e!334718 () Bool)

(declare-fun tp!174976 () Bool)

(assert (=> b!553315 (= e!334718 (and tp_is_empty!3113 tp!174976))))

(assert (=> b!552687 (= tp!174832 e!334718)))

(assert (= (and b!552687 ((_ is Cons!5483) (t!75166 (t!75166 suffix!1342)))) b!553315))

(declare-fun b!553318 () Bool)

(declare-fun e!334719 () Bool)

(declare-fun tp!174980 () Bool)

(assert (=> b!553318 (= e!334719 tp!174980)))

(declare-fun b!553317 () Bool)

(declare-fun tp!174981 () Bool)

(declare-fun tp!174977 () Bool)

(assert (=> b!553317 (= e!334719 (and tp!174981 tp!174977))))

(declare-fun b!553316 () Bool)

(assert (=> b!553316 (= e!334719 tp_is_empty!3113)))

(assert (=> b!552666 (= tp!174811 e!334719)))

(declare-fun b!553319 () Bool)

(declare-fun tp!174979 () Bool)

(declare-fun tp!174978 () Bool)

(assert (=> b!553319 (= e!334719 (and tp!174979 tp!174978))))

(assert (= (and b!552666 ((_ is ElementMatch!1379) (reg!1708 (regex!1045 (rule!1771 token!491))))) b!553316))

(assert (= (and b!552666 ((_ is Concat!2448) (reg!1708 (regex!1045 (rule!1771 token!491))))) b!553317))

(assert (= (and b!552666 ((_ is Star!1379) (reg!1708 (regex!1045 (rule!1771 token!491))))) b!553318))

(assert (= (and b!552666 ((_ is Union!1379) (reg!1708 (regex!1045 (rule!1771 token!491))))) b!553319))

(declare-fun b!553322 () Bool)

(declare-fun e!334720 () Bool)

(declare-fun tp!174985 () Bool)

(assert (=> b!553322 (= e!334720 tp!174985)))

(declare-fun b!553321 () Bool)

(declare-fun tp!174986 () Bool)

(declare-fun tp!174982 () Bool)

(assert (=> b!553321 (= e!334720 (and tp!174986 tp!174982))))

(declare-fun b!553320 () Bool)

(assert (=> b!553320 (= e!334720 tp_is_empty!3113)))

(assert (=> b!552670 (= tp!174816 e!334720)))

(declare-fun b!553323 () Bool)

(declare-fun tp!174984 () Bool)

(declare-fun tp!174983 () Bool)

(assert (=> b!553323 (= e!334720 (and tp!174984 tp!174983))))

(assert (= (and b!552670 ((_ is ElementMatch!1379) (reg!1708 (regex!1045 (h!10886 rules!3103))))) b!553320))

(assert (= (and b!552670 ((_ is Concat!2448) (reg!1708 (regex!1045 (h!10886 rules!3103))))) b!553321))

(assert (= (and b!552670 ((_ is Star!1379) (reg!1708 (regex!1045 (h!10886 rules!3103))))) b!553322))

(assert (= (and b!552670 ((_ is Union!1379) (reg!1708 (regex!1045 (h!10886 rules!3103))))) b!553323))

(declare-fun b_lambda!21285 () Bool)

(assert (= b_lambda!21261 (or (and b!552418 b_free!15475 (= (toChars!1751 (transformation!1045 (h!10886 rules!3103))) (toChars!1751 (transformation!1045 (rule!1771 (_1!3512 (v!16221 lt!233064))))))) (and b!552412 b_free!15479 (= (toChars!1751 (transformation!1045 (rule!1771 token!491))) (toChars!1751 (transformation!1045 (rule!1771 (_1!3512 (v!16221 lt!233064))))))) (and b!552682 b_free!15487 (= (toChars!1751 (transformation!1045 (h!10886 (t!75168 rules!3103)))) (toChars!1751 (transformation!1045 (rule!1771 (_1!3512 (v!16221 lt!233064))))))) (and b!553282 b_free!15495 (= (toChars!1751 (transformation!1045 (h!10886 (t!75168 (t!75168 rules!3103))))) (toChars!1751 (transformation!1045 (rule!1771 (_1!3512 (v!16221 lt!233064))))))) b_lambda!21285)))

(check-sat (not b!553196) (not b!553147) (not b!553306) (not b_next!15511) (not b!553257) (not d!192740) (not b!553271) (not d!192818) (not b!553144) (not b!553305) b_and!54049 (not b!553253) b_and!54045 (not b!553247) (not b!553261) (not b!553304) (not b!553227) (not d!192986) (not b!553134) (not b!553160) (not bm!38447) (not b!553323) (not b!553262) b_and!54043 (not b!552725) (not b!552826) (not b!552952) (not b!552738) (not b_next!15489) (not d!192982) (not b!553292) (not b!553315) (not d!192940) (not b!553280) (not b!552890) (not b!553246) (not b_next!15493) b_and!54029 (not tb!48273) (not d!192776) (not b!553279) (not b!553249) (not d!192922) (not b!552954) (not b!553135) (not d!192728) (not b!552893) (not d!192970) (not b!553202) (not b!552899) (not b_lambda!21263) (not b!553244) (not b!553308) (not b!553146) (not b!552953) (not b!553251) (not d!192936) (not d!192944) (not b!553294) (not b!553206) (not b!552734) (not b!553162) (not b!553269) (not tb!48321) (not b!553297) (not b!553313) (not b!553194) (not b!553321) (not d!192730) (not b!553291) (not d!192820) (not b!552757) b_and!54047 (not d!192806) (not b!553293) (not bm!38440) (not bm!38448) (not b!552751) (not b!553301) (not d!192900) (not tb!48297) (not d!192978) (not b!553295) (not b!553225) (not b!553258) (not b!552729) (not b!553275) (not b!553143) (not b!553322) (not b!553149) (not d!192968) (not tb!48279) (not b!553201) (not b!553211) (not d!192924) (not b!552924) (not b!553174) (not d!192964) (not d!192952) b_and!54027 (not b!553152) (not d!192808) (not b!552441) (not d!192898) (not b_lambda!21269) (not b!553183) (not b!553214) (not b!553140) (not b!553250) (not b!553317) (not b!553266) (not b!553231) (not b_next!15509) (not b!553267) (not b!552824) (not b!553240) (not b!553310) (not b!552825) (not b!552728) (not b!553217) (not b!552887) (not d!192780) (not b!553203) (not b_lambda!21277) (not b!552927) (not bm!38446) (not d!192896) (not b!552827) (not b!553277) (not b!552726) (not d!192742) (not d!192738) (not b!553232) (not b!552621) (not b!553318) (not d!192788) (not b!552889) (not b!552831) (not b_next!15491) (not b!553238) (not b!553319) (not b!553198) (not b!553151) (not b!553302) (not d!192720) (not b!553168) (not b!553200) (not d!192804) (not b!553150) (not b!552749) (not b!552829) (not b!553314) (not b!553193) (not b!553248) (not b!553141) (not b!553208) (not b_next!15495) (not d!192938) (not b!553265) (not b!553207) (not b!553278) (not b!553204) (not b!553172) (not b!553223) (not b_next!15501) (not b!552830) (not b!552832) (not b!553254) (not b!553170) (not b!553148) (not b!553274) (not d!192736) (not b!552736) b_and!54025 tp_is_empty!3113 (not d!192956) (not b!553191) (not b!553213) (not b_next!15503) (not b!553296) (not b!552926) (not d!192902) (not b!553185) (not b!552898) (not b!553199) (not b!553273) (not b!553237) (not d!192908) (not b_lambda!21271) (not b!552750) (not b_lambda!21283) (not b!553300) (not b!553209) (not b!553235) (not b!553298) (not b!553263) (not b!553176) (not b!553153) (not b!553312) (not b_lambda!21285) (not b!553242) (not b!553222) (not d!192714) (not d!192946) (not b!553281) (not b_lambda!21265) (not b!553252) b_and!54041 (not d!192926) (not b!553229) (not b!553309) (not b!553270) (not d!192984))
(check-sat (not b_next!15511) b_and!54043 (not b_next!15489) b_and!54047 b_and!54027 (not b_next!15509) (not b_next!15491) (not b_next!15495) (not b_next!15501) b_and!54041 b_and!54049 b_and!54045 (not b_next!15493) b_and!54029 b_and!54025 (not b_next!15503))
