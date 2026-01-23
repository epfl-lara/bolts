; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241118 () Bool)

(assert start!241118)

(declare-fun b!2472269 () Bool)

(declare-fun b_free!71477 () Bool)

(declare-fun b_next!72181 () Bool)

(assert (=> b!2472269 (= b_free!71477 (not b_next!72181))))

(declare-fun tp!790089 () Bool)

(declare-fun b_and!187413 () Bool)

(assert (=> b!2472269 (= tp!790089 b_and!187413)))

(declare-fun b_free!71479 () Bool)

(declare-fun b_next!72183 () Bool)

(assert (=> b!2472269 (= b_free!71479 (not b_next!72183))))

(declare-fun tp!790081 () Bool)

(declare-fun b_and!187415 () Bool)

(assert (=> b!2472269 (= tp!790081 b_and!187415)))

(declare-fun b!2472280 () Bool)

(declare-fun b_free!71481 () Bool)

(declare-fun b_next!72185 () Bool)

(assert (=> b!2472280 (= b_free!71481 (not b_next!72185))))

(declare-fun tp!790090 () Bool)

(declare-fun b_and!187417 () Bool)

(assert (=> b!2472280 (= tp!790090 b_and!187417)))

(declare-fun b_free!71483 () Bool)

(declare-fun b_next!72187 () Bool)

(assert (=> b!2472280 (= b_free!71483 (not b_next!72187))))

(declare-fun tp!790084 () Bool)

(declare-fun b_and!187419 () Bool)

(assert (=> b!2472280 (= tp!790084 b_and!187419)))

(declare-fun b!2472273 () Bool)

(declare-fun b_free!71485 () Bool)

(declare-fun b_next!72189 () Bool)

(assert (=> b!2472273 (= b_free!71485 (not b_next!72189))))

(declare-fun tp!790085 () Bool)

(declare-fun b_and!187421 () Bool)

(assert (=> b!2472273 (= tp!790085 b_and!187421)))

(declare-fun b_free!71487 () Bool)

(declare-fun b_next!72191 () Bool)

(assert (=> b!2472273 (= b_free!71487 (not b_next!72191))))

(declare-fun tp!790087 () Bool)

(declare-fun b_and!187423 () Bool)

(assert (=> b!2472273 (= tp!790087 b_and!187423)))

(declare-fun b!2472262 () Bool)

(declare-fun b_free!71489 () Bool)

(declare-fun b_next!72193 () Bool)

(assert (=> b!2472262 (= b_free!71489 (not b_next!72193))))

(declare-fun tp!790093 () Bool)

(declare-fun b_and!187425 () Bool)

(assert (=> b!2472262 (= tp!790093 b_and!187425)))

(declare-fun b_free!71491 () Bool)

(declare-fun b_next!72195 () Bool)

(assert (=> b!2472262 (= b_free!71491 (not b_next!72195))))

(declare-fun tp!790097 () Bool)

(declare-fun b_and!187427 () Bool)

(assert (=> b!2472262 (= tp!790097 b_and!187427)))

(declare-fun b!2472260 () Bool)

(declare-fun res!1046743 () Bool)

(declare-fun e!1568058 () Bool)

(assert (=> b!2472260 (=> (not res!1046743) (not e!1568058))))

(declare-datatypes ((List!28930 0))(
  ( (Nil!28830) (Cons!28830 (h!34231 (_ BitVec 16)) (t!210097 List!28930)) )
))
(declare-datatypes ((TokenValue!4679 0))(
  ( (FloatLiteralValue!9358 (text!33198 List!28930)) (TokenValueExt!4678 (__x!18613 Int)) (Broken!23395 (value!143430 List!28930)) (Object!4778) (End!4679) (Def!4679) (Underscore!4679) (Match!4679) (Else!4679) (Error!4679) (Case!4679) (If!4679) (Extends!4679) (Abstract!4679) (Class!4679) (Val!4679) (DelimiterValue!9358 (del!4739 List!28930)) (KeywordValue!4685 (value!143431 List!28930)) (CommentValue!9358 (value!143432 List!28930)) (WhitespaceValue!9358 (value!143433 List!28930)) (IndentationValue!4679 (value!143434 List!28930)) (String!31690) (Int32!4679) (Broken!23396 (value!143435 List!28930)) (Boolean!4680) (Unit!42175) (OperatorValue!4682 (op!4739 List!28930)) (IdentifierValue!9358 (value!143436 List!28930)) (IdentifierValue!9359 (value!143437 List!28930)) (WhitespaceValue!9359 (value!143438 List!28930)) (True!9358) (False!9358) (Broken!23397 (value!143439 List!28930)) (Broken!23398 (value!143440 List!28930)) (True!9359) (RightBrace!4679) (RightBracket!4679) (Colon!4679) (Null!4679) (Comma!4679) (LeftBracket!4679) (False!9359) (LeftBrace!4679) (ImaginaryLiteralValue!4679 (text!33199 List!28930)) (StringLiteralValue!14037 (value!143441 List!28930)) (EOFValue!4679 (value!143442 List!28930)) (IdentValue!4679 (value!143443 List!28930)) (DelimiterValue!9359 (value!143444 List!28930)) (DedentValue!4679 (value!143445 List!28930)) (NewLineValue!4679 (value!143446 List!28930)) (IntegerValue!14037 (value!143447 (_ BitVec 32)) (text!33200 List!28930)) (IntegerValue!14038 (value!143448 Int) (text!33201 List!28930)) (Times!4679) (Or!4679) (Equal!4679) (Minus!4679) (Broken!23399 (value!143449 List!28930)) (And!4679) (Div!4679) (LessEqual!4679) (Mod!4679) (Concat!11960) (Not!4679) (Plus!4679) (SpaceValue!4679 (value!143450 List!28930)) (IntegerValue!14039 (value!143451 Int) (text!33202 List!28930)) (StringLiteralValue!14038 (text!33203 List!28930)) (FloatLiteralValue!9359 (text!33204 List!28930)) (BytesLiteralValue!4679 (value!143452 List!28930)) (CommentValue!9359 (value!143453 List!28930)) (StringLiteralValue!14039 (value!143454 List!28930)) (ErrorTokenValue!4679 (msg!4740 List!28930)) )
))
(declare-datatypes ((C!14720 0))(
  ( (C!14721 (val!8620 Int)) )
))
(declare-datatypes ((List!28931 0))(
  ( (Nil!28831) (Cons!28831 (h!34232 C!14720) (t!210098 List!28931)) )
))
(declare-datatypes ((IArray!18427 0))(
  ( (IArray!18428 (innerList!9271 List!28931)) )
))
(declare-datatypes ((Conc!9211 0))(
  ( (Node!9211 (left!22116 Conc!9211) (right!22446 Conc!9211) (csize!18652 Int) (cheight!9422 Int)) (Leaf!13765 (xs!12195 IArray!18427) (csize!18653 Int)) (Empty!9211) )
))
(declare-datatypes ((BalanceConc!18036 0))(
  ( (BalanceConc!18037 (c!393774 Conc!9211)) )
))
(declare-datatypes ((Regex!7281 0))(
  ( (ElementMatch!7281 (c!393775 C!14720)) (Concat!11961 (regOne!15074 Regex!7281) (regTwo!15074 Regex!7281)) (EmptyExpr!7281) (Star!7281 (reg!7610 Regex!7281)) (EmptyLang!7281) (Union!7281 (regOne!15075 Regex!7281) (regTwo!15075 Regex!7281)) )
))
(declare-datatypes ((String!31691 0))(
  ( (String!31692 (value!143455 String)) )
))
(declare-datatypes ((TokenValueInjection!8858 0))(
  ( (TokenValueInjection!8859 (toValue!6357 Int) (toChars!6216 Int)) )
))
(declare-datatypes ((Rule!8786 0))(
  ( (Rule!8787 (regex!4493 Regex!7281) (tag!4983 String!31691) (isSeparator!4493 Bool) (transformation!4493 TokenValueInjection!8858)) )
))
(declare-datatypes ((Token!8456 0))(
  ( (Token!8457 (value!143456 TokenValue!4679) (rule!6851 Rule!8786) (size!22437 Int) (originalCharacters!5259 List!28931)) )
))
(declare-datatypes ((List!28932 0))(
  ( (Nil!28832) (Cons!28832 (h!34233 Token!8456) (t!210099 List!28932)) )
))
(declare-fun l!6611 () List!28932)

(declare-fun i!1803 () Int)

(declare-fun t1!67 () Token!8456)

(declare-fun apply!6802 (List!28932 Int) Token!8456)

(assert (=> b!2472260 (= res!1046743 (= (apply!6802 l!6611 i!1803) t1!67))))

(declare-datatypes ((LexerInterface!4090 0))(
  ( (LexerInterfaceExt!4087 (__x!18614 Int)) (Lexer!4088) )
))
(declare-fun thiss!27932 () LexerInterface!4090)

(declare-datatypes ((List!28933 0))(
  ( (Nil!28833) (Cons!28833 (h!34234 Rule!8786) (t!210100 List!28933)) )
))
(declare-fun rules!4472 () List!28933)

(declare-fun b!2472261 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1406 (LexerInterface!4090 List!28933 List!28932) Bool)

(declare-fun tail!3926 (List!28932) List!28932)

(assert (=> b!2472261 (= e!1568058 (not (rulesProduceEachTokenIndividuallyList!1406 thiss!27932 rules!4472 (tail!3926 l!6611))))))

(declare-fun e!1568063 () Bool)

(assert (=> b!2472262 (= e!1568063 (and tp!790093 tp!790097))))

(declare-fun tp!790096 () Bool)

(declare-fun b!2472263 () Bool)

(declare-fun e!1568054 () Bool)

(declare-fun e!1568069 () Bool)

(declare-fun inv!38918 (String!31691) Bool)

(declare-fun inv!38921 (TokenValueInjection!8858) Bool)

(assert (=> b!2472263 (= e!1568069 (and tp!790096 (inv!38918 (tag!4983 (h!34234 rules!4472))) (inv!38921 (transformation!4493 (h!34234 rules!4472))) e!1568054))))

(declare-fun b!2472264 () Bool)

(declare-fun res!1046746 () Bool)

(assert (=> b!2472264 (=> (not res!1046746) (not e!1568058))))

(declare-fun isEmpty!16744 (List!28933) Bool)

(assert (=> b!2472264 (= res!1046746 (not (isEmpty!16744 rules!4472)))))

(declare-fun tp!790091 () Bool)

(declare-fun b!2472265 () Bool)

(declare-fun e!1568060 () Bool)

(declare-fun e!1568059 () Bool)

(assert (=> b!2472265 (= e!1568059 (and tp!790091 (inv!38918 (tag!4983 (rule!6851 (h!34233 l!6611)))) (inv!38921 (transformation!4493 (rule!6851 (h!34233 l!6611)))) e!1568060))))

(declare-fun tp!790095 () Bool)

(declare-fun e!1568071 () Bool)

(declare-fun b!2472266 () Bool)

(declare-fun e!1568061 () Bool)

(declare-fun t2!67 () Token!8456)

(declare-fun inv!21 (TokenValue!4679) Bool)

(assert (=> b!2472266 (= e!1568071 (and (inv!21 (value!143456 t2!67)) e!1568061 tp!790095))))

(declare-fun tp!790088 () Bool)

(declare-fun e!1568066 () Bool)

(declare-fun b!2472267 () Bool)

(declare-fun e!1568072 () Bool)

(assert (=> b!2472267 (= e!1568072 (and tp!790088 (inv!38918 (tag!4983 (rule!6851 t1!67))) (inv!38921 (transformation!4493 (rule!6851 t1!67))) e!1568066))))

(declare-fun b!2472268 () Bool)

(declare-fun res!1046745 () Bool)

(assert (=> b!2472268 (=> (not res!1046745) (not e!1568058))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!629 (LexerInterface!4090 List!28932 List!28933) Bool)

(assert (=> b!2472268 (= res!1046745 (tokensListTwoByTwoPredicateSeparableList!629 thiss!27932 l!6611 rules!4472))))

(assert (=> b!2472269 (= e!1568060 (and tp!790089 tp!790081))))

(declare-fun tp!790092 () Bool)

(declare-fun b!2472270 () Bool)

(assert (=> b!2472270 (= e!1568061 (and tp!790092 (inv!38918 (tag!4983 (rule!6851 t2!67))) (inv!38921 (transformation!4493 (rule!6851 t2!67))) e!1568063))))

(declare-fun b!2472271 () Bool)

(declare-fun res!1046744 () Bool)

(assert (=> b!2472271 (=> (not res!1046744) (not e!1568058))))

(assert (=> b!2472271 (= res!1046744 (= (apply!6802 l!6611 (+ 1 i!1803)) t2!67))))

(declare-fun b!2472272 () Bool)

(declare-fun e!1568064 () Bool)

(declare-fun tp!790094 () Bool)

(assert (=> b!2472272 (= e!1568064 (and e!1568069 tp!790094))))

(assert (=> b!2472273 (= e!1568066 (and tp!790085 tp!790087))))

(declare-fun e!1568067 () Bool)

(declare-fun e!1568068 () Bool)

(declare-fun b!2472274 () Bool)

(declare-fun tp!790086 () Bool)

(declare-fun inv!38922 (Token!8456) Bool)

(assert (=> b!2472274 (= e!1568067 (and (inv!38922 (h!34233 l!6611)) e!1568068 tp!790086))))

(declare-fun b!2472275 () Bool)

(declare-fun res!1046739 () Bool)

(assert (=> b!2472275 (=> (not res!1046739) (not e!1568058))))

(assert (=> b!2472275 (= res!1046739 (rulesProduceEachTokenIndividuallyList!1406 thiss!27932 rules!4472 l!6611))))

(declare-fun b!2472276 () Bool)

(declare-fun res!1046747 () Bool)

(assert (=> b!2472276 (=> (not res!1046747) (not e!1568058))))

(declare-fun rulesInvariant!3590 (LexerInterface!4090 List!28933) Bool)

(assert (=> b!2472276 (= res!1046747 (rulesInvariant!3590 thiss!27932 rules!4472))))

(declare-fun b!2472277 () Bool)

(declare-fun tp!790082 () Bool)

(assert (=> b!2472277 (= e!1568068 (and (inv!21 (value!143456 (h!34233 l!6611))) e!1568059 tp!790082))))

(declare-fun b!2472278 () Bool)

(declare-fun e!1568073 () Bool)

(declare-fun tp!790083 () Bool)

(assert (=> b!2472278 (= e!1568073 (and (inv!21 (value!143456 t1!67)) e!1568072 tp!790083))))

(declare-fun res!1046740 () Bool)

(assert (=> start!241118 (=> (not res!1046740) (not e!1568058))))

(get-info :version)

(assert (=> start!241118 (= res!1046740 ((_ is Lexer!4088) thiss!27932))))

(assert (=> start!241118 e!1568058))

(assert (=> start!241118 true))

(assert (=> start!241118 e!1568064))

(assert (=> start!241118 (and (inv!38922 t2!67) e!1568071)))

(assert (=> start!241118 e!1568067))

(assert (=> start!241118 (and (inv!38922 t1!67) e!1568073)))

(declare-fun b!2472279 () Bool)

(declare-fun res!1046738 () Bool)

(assert (=> b!2472279 (=> (not res!1046738) (not e!1568058))))

(assert (=> b!2472279 (= res!1046738 (>= i!1803 0))))

(assert (=> b!2472280 (= e!1568054 (and tp!790090 tp!790084))))

(declare-fun b!2472281 () Bool)

(declare-fun res!1046742 () Bool)

(assert (=> b!2472281 (=> (not res!1046742) (not e!1568058))))

(declare-fun size!22438 (List!28932) Int)

(assert (=> b!2472281 (= res!1046742 (< (+ 1 i!1803) (size!22438 l!6611)))))

(declare-fun b!2472282 () Bool)

(declare-fun res!1046741 () Bool)

(assert (=> b!2472282 (=> (not res!1046741) (not e!1568058))))

(assert (=> b!2472282 (= res!1046741 (not (= i!1803 0)))))

(assert (= (and start!241118 res!1046740) b!2472264))

(assert (= (and b!2472264 res!1046746) b!2472276))

(assert (= (and b!2472276 res!1046747) b!2472275))

(assert (= (and b!2472275 res!1046739) b!2472268))

(assert (= (and b!2472268 res!1046745) b!2472279))

(assert (= (and b!2472279 res!1046738) b!2472281))

(assert (= (and b!2472281 res!1046742) b!2472260))

(assert (= (and b!2472260 res!1046743) b!2472271))

(assert (= (and b!2472271 res!1046744) b!2472282))

(assert (= (and b!2472282 res!1046741) b!2472261))

(assert (= b!2472263 b!2472280))

(assert (= b!2472272 b!2472263))

(assert (= (and start!241118 ((_ is Cons!28833) rules!4472)) b!2472272))

(assert (= b!2472270 b!2472262))

(assert (= b!2472266 b!2472270))

(assert (= start!241118 b!2472266))

(assert (= b!2472265 b!2472269))

(assert (= b!2472277 b!2472265))

(assert (= b!2472274 b!2472277))

(assert (= (and start!241118 ((_ is Cons!28832) l!6611)) b!2472274))

(assert (= b!2472267 b!2472273))

(assert (= b!2472278 b!2472267))

(assert (= start!241118 b!2472278))

(declare-fun m!2841005 () Bool)

(assert (=> b!2472267 m!2841005))

(declare-fun m!2841007 () Bool)

(assert (=> b!2472267 m!2841007))

(declare-fun m!2841009 () Bool)

(assert (=> b!2472264 m!2841009))

(declare-fun m!2841011 () Bool)

(assert (=> b!2472274 m!2841011))

(declare-fun m!2841013 () Bool)

(assert (=> b!2472268 m!2841013))

(declare-fun m!2841015 () Bool)

(assert (=> b!2472270 m!2841015))

(declare-fun m!2841017 () Bool)

(assert (=> b!2472270 m!2841017))

(declare-fun m!2841019 () Bool)

(assert (=> b!2472275 m!2841019))

(declare-fun m!2841021 () Bool)

(assert (=> start!241118 m!2841021))

(declare-fun m!2841023 () Bool)

(assert (=> start!241118 m!2841023))

(declare-fun m!2841025 () Bool)

(assert (=> b!2472271 m!2841025))

(declare-fun m!2841027 () Bool)

(assert (=> b!2472266 m!2841027))

(declare-fun m!2841029 () Bool)

(assert (=> b!2472276 m!2841029))

(declare-fun m!2841031 () Bool)

(assert (=> b!2472263 m!2841031))

(declare-fun m!2841033 () Bool)

(assert (=> b!2472263 m!2841033))

(declare-fun m!2841035 () Bool)

(assert (=> b!2472261 m!2841035))

(assert (=> b!2472261 m!2841035))

(declare-fun m!2841037 () Bool)

(assert (=> b!2472261 m!2841037))

(declare-fun m!2841039 () Bool)

(assert (=> b!2472277 m!2841039))

(declare-fun m!2841041 () Bool)

(assert (=> b!2472281 m!2841041))

(declare-fun m!2841043 () Bool)

(assert (=> b!2472260 m!2841043))

(declare-fun m!2841045 () Bool)

(assert (=> b!2472278 m!2841045))

(declare-fun m!2841047 () Bool)

(assert (=> b!2472265 m!2841047))

(declare-fun m!2841049 () Bool)

(assert (=> b!2472265 m!2841049))

(check-sat b_and!187425 (not b!2472274) (not b_next!72195) (not b_next!72189) (not b_next!72181) (not b!2472268) b_and!187421 (not b_next!72183) (not b!2472267) (not b!2472276) (not b!2472278) b_and!187427 (not b!2472266) b_and!187413 (not start!241118) (not b!2472263) (not b!2472265) b_and!187417 (not b!2472260) b_and!187415 (not b!2472281) (not b_next!72187) (not b_next!72191) (not b!2472271) (not b!2472272) (not b!2472264) (not b_next!72193) (not b!2472277) (not b!2472270) (not b_next!72185) (not b!2472275) (not b!2472261) b_and!187423 b_and!187419)
(check-sat b_and!187425 b_and!187413 (not b_next!72195) (not b_next!72189) (not b_next!72181) b_and!187417 b_and!187415 b_and!187421 (not b_next!72183) (not b_next!72193) (not b_next!72185) b_and!187427 (not b_next!72187) (not b_next!72191) b_and!187423 b_and!187419)
(get-model)

(declare-fun b!2472324 () Bool)

(declare-fun e!1568101 () Bool)

(declare-fun inv!16 (TokenValue!4679) Bool)

(assert (=> b!2472324 (= e!1568101 (inv!16 (value!143456 t1!67)))))

(declare-fun b!2472325 () Bool)

(declare-fun res!1046771 () Bool)

(declare-fun e!1568103 () Bool)

(assert (=> b!2472325 (=> res!1046771 e!1568103)))

(assert (=> b!2472325 (= res!1046771 (not ((_ is IntegerValue!14039) (value!143456 t1!67))))))

(declare-fun e!1568102 () Bool)

(assert (=> b!2472325 (= e!1568102 e!1568103)))

(declare-fun d!711534 () Bool)

(declare-fun c!393789 () Bool)

(assert (=> d!711534 (= c!393789 ((_ is IntegerValue!14037) (value!143456 t1!67)))))

(assert (=> d!711534 (= (inv!21 (value!143456 t1!67)) e!1568101)))

(declare-fun b!2472326 () Bool)

(declare-fun inv!17 (TokenValue!4679) Bool)

(assert (=> b!2472326 (= e!1568102 (inv!17 (value!143456 t1!67)))))

(declare-fun b!2472327 () Bool)

(assert (=> b!2472327 (= e!1568101 e!1568102)))

(declare-fun c!393790 () Bool)

(assert (=> b!2472327 (= c!393790 ((_ is IntegerValue!14038) (value!143456 t1!67)))))

(declare-fun b!2472328 () Bool)

(declare-fun inv!15 (TokenValue!4679) Bool)

(assert (=> b!2472328 (= e!1568103 (inv!15 (value!143456 t1!67)))))

(assert (= (and d!711534 c!393789) b!2472324))

(assert (= (and d!711534 (not c!393789)) b!2472327))

(assert (= (and b!2472327 c!393790) b!2472326))

(assert (= (and b!2472327 (not c!393790)) b!2472325))

(assert (= (and b!2472325 (not res!1046771)) b!2472328))

(declare-fun m!2841067 () Bool)

(assert (=> b!2472324 m!2841067))

(declare-fun m!2841069 () Bool)

(assert (=> b!2472326 m!2841069))

(declare-fun m!2841071 () Bool)

(assert (=> b!2472328 m!2841071))

(assert (=> b!2472278 d!711534))

(declare-fun d!711540 () Bool)

(declare-fun res!1046790 () Bool)

(declare-fun e!1568126 () Bool)

(assert (=> d!711540 (=> res!1046790 e!1568126)))

(assert (=> d!711540 (= res!1046790 (or (not ((_ is Cons!28832) l!6611)) (not ((_ is Cons!28832) (t!210099 l!6611)))))))

(assert (=> d!711540 (= (tokensListTwoByTwoPredicateSeparableList!629 thiss!27932 l!6611 rules!4472) e!1568126)))

(declare-fun b!2472357 () Bool)

(declare-fun e!1568127 () Bool)

(assert (=> b!2472357 (= e!1568126 e!1568127)))

(declare-fun res!1046791 () Bool)

(assert (=> b!2472357 (=> (not res!1046791) (not e!1568127))))

(declare-fun separableTokensPredicate!866 (LexerInterface!4090 Token!8456 Token!8456 List!28933) Bool)

(assert (=> b!2472357 (= res!1046791 (separableTokensPredicate!866 thiss!27932 (h!34233 l!6611) (h!34233 (t!210099 l!6611)) rules!4472))))

(declare-datatypes ((Unit!42176 0))(
  ( (Unit!42177) )
))
(declare-fun lt!883386 () Unit!42176)

(declare-fun Unit!42178 () Unit!42176)

(assert (=> b!2472357 (= lt!883386 Unit!42178)))

(declare-fun size!22439 (BalanceConc!18036) Int)

(declare-fun charsOf!2827 (Token!8456) BalanceConc!18036)

(assert (=> b!2472357 (> (size!22439 (charsOf!2827 (h!34233 (t!210099 l!6611)))) 0)))

(declare-fun lt!883387 () Unit!42176)

(declare-fun Unit!42179 () Unit!42176)

(assert (=> b!2472357 (= lt!883387 Unit!42179)))

(declare-fun rulesProduceIndividualToken!1819 (LexerInterface!4090 List!28933 Token!8456) Bool)

(assert (=> b!2472357 (rulesProduceIndividualToken!1819 thiss!27932 rules!4472 (h!34233 (t!210099 l!6611)))))

(declare-fun lt!883388 () Unit!42176)

(declare-fun Unit!42180 () Unit!42176)

(assert (=> b!2472357 (= lt!883388 Unit!42180)))

(assert (=> b!2472357 (rulesProduceIndividualToken!1819 thiss!27932 rules!4472 (h!34233 l!6611))))

(declare-fun lt!883392 () Unit!42176)

(declare-fun lt!883391 () Unit!42176)

(assert (=> b!2472357 (= lt!883392 lt!883391)))

(assert (=> b!2472357 (rulesProduceIndividualToken!1819 thiss!27932 rules!4472 (h!34233 (t!210099 l!6611)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!680 (LexerInterface!4090 List!28933 List!28932 Token!8456) Unit!42176)

(assert (=> b!2472357 (= lt!883391 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!680 thiss!27932 rules!4472 l!6611 (h!34233 (t!210099 l!6611))))))

(declare-fun lt!883390 () Unit!42176)

(declare-fun lt!883389 () Unit!42176)

(assert (=> b!2472357 (= lt!883390 lt!883389)))

(assert (=> b!2472357 (rulesProduceIndividualToken!1819 thiss!27932 rules!4472 (h!34233 l!6611))))

(assert (=> b!2472357 (= lt!883389 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!680 thiss!27932 rules!4472 l!6611 (h!34233 l!6611)))))

(declare-fun b!2472358 () Bool)

(assert (=> b!2472358 (= e!1568127 (tokensListTwoByTwoPredicateSeparableList!629 thiss!27932 (Cons!28832 (h!34233 (t!210099 l!6611)) (t!210099 (t!210099 l!6611))) rules!4472))))

(assert (= (and d!711540 (not res!1046790)) b!2472357))

(assert (= (and b!2472357 res!1046791) b!2472358))

(declare-fun m!2841115 () Bool)

(assert (=> b!2472357 m!2841115))

(declare-fun m!2841117 () Bool)

(assert (=> b!2472357 m!2841117))

(declare-fun m!2841119 () Bool)

(assert (=> b!2472357 m!2841119))

(declare-fun m!2841121 () Bool)

(assert (=> b!2472357 m!2841121))

(assert (=> b!2472357 m!2841119))

(declare-fun m!2841123 () Bool)

(assert (=> b!2472357 m!2841123))

(declare-fun m!2841125 () Bool)

(assert (=> b!2472357 m!2841125))

(declare-fun m!2841127 () Bool)

(assert (=> b!2472357 m!2841127))

(declare-fun m!2841129 () Bool)

(assert (=> b!2472358 m!2841129))

(assert (=> b!2472268 d!711540))

(declare-fun b!2472359 () Bool)

(declare-fun e!1568128 () Bool)

(assert (=> b!2472359 (= e!1568128 (inv!16 (value!143456 (h!34233 l!6611))))))

(declare-fun b!2472360 () Bool)

(declare-fun res!1046792 () Bool)

(declare-fun e!1568130 () Bool)

(assert (=> b!2472360 (=> res!1046792 e!1568130)))

(assert (=> b!2472360 (= res!1046792 (not ((_ is IntegerValue!14039) (value!143456 (h!34233 l!6611)))))))

(declare-fun e!1568129 () Bool)

(assert (=> b!2472360 (= e!1568129 e!1568130)))

(declare-fun d!711560 () Bool)

(declare-fun c!393793 () Bool)

(assert (=> d!711560 (= c!393793 ((_ is IntegerValue!14037) (value!143456 (h!34233 l!6611))))))

(assert (=> d!711560 (= (inv!21 (value!143456 (h!34233 l!6611))) e!1568128)))

(declare-fun b!2472361 () Bool)

(assert (=> b!2472361 (= e!1568129 (inv!17 (value!143456 (h!34233 l!6611))))))

(declare-fun b!2472362 () Bool)

(assert (=> b!2472362 (= e!1568128 e!1568129)))

(declare-fun c!393794 () Bool)

(assert (=> b!2472362 (= c!393794 ((_ is IntegerValue!14038) (value!143456 (h!34233 l!6611))))))

(declare-fun b!2472363 () Bool)

(assert (=> b!2472363 (= e!1568130 (inv!15 (value!143456 (h!34233 l!6611))))))

(assert (= (and d!711560 c!393793) b!2472359))

(assert (= (and d!711560 (not c!393793)) b!2472362))

(assert (= (and b!2472362 c!393794) b!2472361))

(assert (= (and b!2472362 (not c!393794)) b!2472360))

(assert (= (and b!2472360 (not res!1046792)) b!2472363))

(declare-fun m!2841131 () Bool)

(assert (=> b!2472359 m!2841131))

(declare-fun m!2841133 () Bool)

(assert (=> b!2472361 m!2841133))

(declare-fun m!2841135 () Bool)

(assert (=> b!2472363 m!2841135))

(assert (=> b!2472277 d!711560))

(declare-fun b!2472364 () Bool)

(declare-fun e!1568131 () Bool)

(assert (=> b!2472364 (= e!1568131 (inv!16 (value!143456 t2!67)))))

(declare-fun b!2472365 () Bool)

(declare-fun res!1046793 () Bool)

(declare-fun e!1568133 () Bool)

(assert (=> b!2472365 (=> res!1046793 e!1568133)))

(assert (=> b!2472365 (= res!1046793 (not ((_ is IntegerValue!14039) (value!143456 t2!67))))))

(declare-fun e!1568132 () Bool)

(assert (=> b!2472365 (= e!1568132 e!1568133)))

(declare-fun d!711562 () Bool)

(declare-fun c!393795 () Bool)

(assert (=> d!711562 (= c!393795 ((_ is IntegerValue!14037) (value!143456 t2!67)))))

(assert (=> d!711562 (= (inv!21 (value!143456 t2!67)) e!1568131)))

(declare-fun b!2472366 () Bool)

(assert (=> b!2472366 (= e!1568132 (inv!17 (value!143456 t2!67)))))

(declare-fun b!2472367 () Bool)

(assert (=> b!2472367 (= e!1568131 e!1568132)))

(declare-fun c!393796 () Bool)

(assert (=> b!2472367 (= c!393796 ((_ is IntegerValue!14038) (value!143456 t2!67)))))

(declare-fun b!2472368 () Bool)

(assert (=> b!2472368 (= e!1568133 (inv!15 (value!143456 t2!67)))))

(assert (= (and d!711562 c!393795) b!2472364))

(assert (= (and d!711562 (not c!393795)) b!2472367))

(assert (= (and b!2472367 c!393796) b!2472366))

(assert (= (and b!2472367 (not c!393796)) b!2472365))

(assert (= (and b!2472365 (not res!1046793)) b!2472368))

(declare-fun m!2841137 () Bool)

(assert (=> b!2472364 m!2841137))

(declare-fun m!2841139 () Bool)

(assert (=> b!2472366 m!2841139))

(declare-fun m!2841141 () Bool)

(assert (=> b!2472368 m!2841141))

(assert (=> b!2472266 d!711562))

(declare-fun d!711564 () Bool)

(assert (=> d!711564 (= (inv!38918 (tag!4983 (rule!6851 t1!67))) (= (mod (str.len (value!143455 (tag!4983 (rule!6851 t1!67)))) 2) 0))))

(assert (=> b!2472267 d!711564))

(declare-fun d!711566 () Bool)

(declare-fun res!1046796 () Bool)

(declare-fun e!1568136 () Bool)

(assert (=> d!711566 (=> (not res!1046796) (not e!1568136))))

(declare-fun semiInverseModEq!1849 (Int Int) Bool)

(assert (=> d!711566 (= res!1046796 (semiInverseModEq!1849 (toChars!6216 (transformation!4493 (rule!6851 t1!67))) (toValue!6357 (transformation!4493 (rule!6851 t1!67)))))))

(assert (=> d!711566 (= (inv!38921 (transformation!4493 (rule!6851 t1!67))) e!1568136)))

(declare-fun b!2472371 () Bool)

(declare-fun equivClasses!1760 (Int Int) Bool)

(assert (=> b!2472371 (= e!1568136 (equivClasses!1760 (toChars!6216 (transformation!4493 (rule!6851 t1!67))) (toValue!6357 (transformation!4493 (rule!6851 t1!67)))))))

(assert (= (and d!711566 res!1046796) b!2472371))

(declare-fun m!2841143 () Bool)

(assert (=> d!711566 m!2841143))

(declare-fun m!2841145 () Bool)

(assert (=> b!2472371 m!2841145))

(assert (=> b!2472267 d!711566))

(declare-fun d!711568 () Bool)

(declare-fun lt!883395 () Int)

(assert (=> d!711568 (>= lt!883395 0)))

(declare-fun e!1568139 () Int)

(assert (=> d!711568 (= lt!883395 e!1568139)))

(declare-fun c!393799 () Bool)

(assert (=> d!711568 (= c!393799 ((_ is Nil!28832) l!6611))))

(assert (=> d!711568 (= (size!22438 l!6611) lt!883395)))

(declare-fun b!2472376 () Bool)

(assert (=> b!2472376 (= e!1568139 0)))

(declare-fun b!2472377 () Bool)

(assert (=> b!2472377 (= e!1568139 (+ 1 (size!22438 (t!210099 l!6611))))))

(assert (= (and d!711568 c!393799) b!2472376))

(assert (= (and d!711568 (not c!393799)) b!2472377))

(declare-fun m!2841147 () Bool)

(assert (=> b!2472377 m!2841147))

(assert (=> b!2472281 d!711568))

(declare-fun d!711570 () Bool)

(assert (=> d!711570 (= (inv!38918 (tag!4983 (rule!6851 t2!67))) (= (mod (str.len (value!143455 (tag!4983 (rule!6851 t2!67)))) 2) 0))))

(assert (=> b!2472270 d!711570))

(declare-fun d!711572 () Bool)

(declare-fun res!1046797 () Bool)

(declare-fun e!1568140 () Bool)

(assert (=> d!711572 (=> (not res!1046797) (not e!1568140))))

(assert (=> d!711572 (= res!1046797 (semiInverseModEq!1849 (toChars!6216 (transformation!4493 (rule!6851 t2!67))) (toValue!6357 (transformation!4493 (rule!6851 t2!67)))))))

(assert (=> d!711572 (= (inv!38921 (transformation!4493 (rule!6851 t2!67))) e!1568140)))

(declare-fun b!2472378 () Bool)

(assert (=> b!2472378 (= e!1568140 (equivClasses!1760 (toChars!6216 (transformation!4493 (rule!6851 t2!67))) (toValue!6357 (transformation!4493 (rule!6851 t2!67)))))))

(assert (= (and d!711572 res!1046797) b!2472378))

(declare-fun m!2841149 () Bool)

(assert (=> d!711572 m!2841149))

(declare-fun m!2841151 () Bool)

(assert (=> b!2472378 m!2841151))

(assert (=> b!2472270 d!711572))

(declare-fun d!711574 () Bool)

(declare-fun lt!883398 () Token!8456)

(declare-fun contains!4923 (List!28932 Token!8456) Bool)

(assert (=> d!711574 (contains!4923 l!6611 lt!883398)))

(declare-fun e!1568145 () Token!8456)

(assert (=> d!711574 (= lt!883398 e!1568145)))

(declare-fun c!393802 () Bool)

(assert (=> d!711574 (= c!393802 (= (+ 1 i!1803) 0))))

(declare-fun e!1568146 () Bool)

(assert (=> d!711574 e!1568146))

(declare-fun res!1046800 () Bool)

(assert (=> d!711574 (=> (not res!1046800) (not e!1568146))))

(assert (=> d!711574 (= res!1046800 (<= 0 (+ 1 i!1803)))))

(assert (=> d!711574 (= (apply!6802 l!6611 (+ 1 i!1803)) lt!883398)))

(declare-fun b!2472385 () Bool)

(assert (=> b!2472385 (= e!1568146 (< (+ 1 i!1803) (size!22438 l!6611)))))

(declare-fun b!2472386 () Bool)

(declare-fun head!5645 (List!28932) Token!8456)

(assert (=> b!2472386 (= e!1568145 (head!5645 l!6611))))

(declare-fun b!2472387 () Bool)

(assert (=> b!2472387 (= e!1568145 (apply!6802 (tail!3926 l!6611) (- (+ 1 i!1803) 1)))))

(assert (= (and d!711574 res!1046800) b!2472385))

(assert (= (and d!711574 c!393802) b!2472386))

(assert (= (and d!711574 (not c!393802)) b!2472387))

(declare-fun m!2841153 () Bool)

(assert (=> d!711574 m!2841153))

(assert (=> b!2472385 m!2841041))

(declare-fun m!2841155 () Bool)

(assert (=> b!2472386 m!2841155))

(assert (=> b!2472387 m!2841035))

(assert (=> b!2472387 m!2841035))

(declare-fun m!2841157 () Bool)

(assert (=> b!2472387 m!2841157))

(assert (=> b!2472271 d!711574))

(declare-fun d!711576 () Bool)

(declare-fun lt!883399 () Token!8456)

(assert (=> d!711576 (contains!4923 l!6611 lt!883399)))

(declare-fun e!1568147 () Token!8456)

(assert (=> d!711576 (= lt!883399 e!1568147)))

(declare-fun c!393803 () Bool)

(assert (=> d!711576 (= c!393803 (= i!1803 0))))

(declare-fun e!1568148 () Bool)

(assert (=> d!711576 e!1568148))

(declare-fun res!1046801 () Bool)

(assert (=> d!711576 (=> (not res!1046801) (not e!1568148))))

(assert (=> d!711576 (= res!1046801 (<= 0 i!1803))))

(assert (=> d!711576 (= (apply!6802 l!6611 i!1803) lt!883399)))

(declare-fun b!2472388 () Bool)

(assert (=> b!2472388 (= e!1568148 (< i!1803 (size!22438 l!6611)))))

(declare-fun b!2472389 () Bool)

(assert (=> b!2472389 (= e!1568147 (head!5645 l!6611))))

(declare-fun b!2472390 () Bool)

(assert (=> b!2472390 (= e!1568147 (apply!6802 (tail!3926 l!6611) (- i!1803 1)))))

(assert (= (and d!711576 res!1046801) b!2472388))

(assert (= (and d!711576 c!393803) b!2472389))

(assert (= (and d!711576 (not c!393803)) b!2472390))

(declare-fun m!2841159 () Bool)

(assert (=> d!711576 m!2841159))

(assert (=> b!2472388 m!2841041))

(assert (=> b!2472389 m!2841155))

(assert (=> b!2472390 m!2841035))

(assert (=> b!2472390 m!2841035))

(declare-fun m!2841161 () Bool)

(assert (=> b!2472390 m!2841161))

(assert (=> b!2472260 d!711576))

(declare-fun d!711578 () Bool)

(assert (=> d!711578 (= (inv!38918 (tag!4983 (h!34234 rules!4472))) (= (mod (str.len (value!143455 (tag!4983 (h!34234 rules!4472)))) 2) 0))))

(assert (=> b!2472263 d!711578))

(declare-fun d!711580 () Bool)

(declare-fun res!1046802 () Bool)

(declare-fun e!1568149 () Bool)

(assert (=> d!711580 (=> (not res!1046802) (not e!1568149))))

(assert (=> d!711580 (= res!1046802 (semiInverseModEq!1849 (toChars!6216 (transformation!4493 (h!34234 rules!4472))) (toValue!6357 (transformation!4493 (h!34234 rules!4472)))))))

(assert (=> d!711580 (= (inv!38921 (transformation!4493 (h!34234 rules!4472))) e!1568149)))

(declare-fun b!2472391 () Bool)

(assert (=> b!2472391 (= e!1568149 (equivClasses!1760 (toChars!6216 (transformation!4493 (h!34234 rules!4472))) (toValue!6357 (transformation!4493 (h!34234 rules!4472)))))))

(assert (= (and d!711580 res!1046802) b!2472391))

(declare-fun m!2841163 () Bool)

(assert (=> d!711580 m!2841163))

(declare-fun m!2841165 () Bool)

(assert (=> b!2472391 m!2841165))

(assert (=> b!2472263 d!711580))

(declare-fun d!711582 () Bool)

(declare-fun res!1046807 () Bool)

(declare-fun e!1568152 () Bool)

(assert (=> d!711582 (=> (not res!1046807) (not e!1568152))))

(declare-fun isEmpty!16746 (List!28931) Bool)

(assert (=> d!711582 (= res!1046807 (not (isEmpty!16746 (originalCharacters!5259 t2!67))))))

(assert (=> d!711582 (= (inv!38922 t2!67) e!1568152)))

(declare-fun b!2472396 () Bool)

(declare-fun res!1046808 () Bool)

(assert (=> b!2472396 (=> (not res!1046808) (not e!1568152))))

(declare-fun list!11147 (BalanceConc!18036) List!28931)

(declare-fun dynLambda!12386 (Int TokenValue!4679) BalanceConc!18036)

(assert (=> b!2472396 (= res!1046808 (= (originalCharacters!5259 t2!67) (list!11147 (dynLambda!12386 (toChars!6216 (transformation!4493 (rule!6851 t2!67))) (value!143456 t2!67)))))))

(declare-fun b!2472397 () Bool)

(declare-fun size!22441 (List!28931) Int)

(assert (=> b!2472397 (= e!1568152 (= (size!22437 t2!67) (size!22441 (originalCharacters!5259 t2!67))))))

(assert (= (and d!711582 res!1046807) b!2472396))

(assert (= (and b!2472396 res!1046808) b!2472397))

(declare-fun b_lambda!75843 () Bool)

(assert (=> (not b_lambda!75843) (not b!2472396)))

(declare-fun t!210120 () Bool)

(declare-fun tb!139937 () Bool)

(assert (=> (and b!2472269 (= (toChars!6216 (transformation!4493 (rule!6851 (h!34233 l!6611)))) (toChars!6216 (transformation!4493 (rule!6851 t2!67)))) t!210120) tb!139937))

(declare-fun b!2472402 () Bool)

(declare-fun e!1568155 () Bool)

(declare-fun tp!790104 () Bool)

(declare-fun inv!38925 (Conc!9211) Bool)

(assert (=> b!2472402 (= e!1568155 (and (inv!38925 (c!393774 (dynLambda!12386 (toChars!6216 (transformation!4493 (rule!6851 t2!67))) (value!143456 t2!67)))) tp!790104))))

(declare-fun result!172690 () Bool)

(declare-fun inv!38926 (BalanceConc!18036) Bool)

(assert (=> tb!139937 (= result!172690 (and (inv!38926 (dynLambda!12386 (toChars!6216 (transformation!4493 (rule!6851 t2!67))) (value!143456 t2!67))) e!1568155))))

(assert (= tb!139937 b!2472402))

(declare-fun m!2841167 () Bool)

(assert (=> b!2472402 m!2841167))

(declare-fun m!2841169 () Bool)

(assert (=> tb!139937 m!2841169))

(assert (=> b!2472396 t!210120))

(declare-fun b_and!187445 () Bool)

(assert (= b_and!187415 (and (=> t!210120 result!172690) b_and!187445)))

(declare-fun tb!139939 () Bool)

(declare-fun t!210122 () Bool)

(assert (=> (and b!2472280 (= (toChars!6216 (transformation!4493 (h!34234 rules!4472))) (toChars!6216 (transformation!4493 (rule!6851 t2!67)))) t!210122) tb!139939))

(declare-fun result!172694 () Bool)

(assert (= result!172694 result!172690))

(assert (=> b!2472396 t!210122))

(declare-fun b_and!187447 () Bool)

(assert (= b_and!187419 (and (=> t!210122 result!172694) b_and!187447)))

(declare-fun t!210124 () Bool)

(declare-fun tb!139941 () Bool)

(assert (=> (and b!2472273 (= (toChars!6216 (transformation!4493 (rule!6851 t1!67))) (toChars!6216 (transformation!4493 (rule!6851 t2!67)))) t!210124) tb!139941))

(declare-fun result!172696 () Bool)

(assert (= result!172696 result!172690))

(assert (=> b!2472396 t!210124))

(declare-fun b_and!187449 () Bool)

(assert (= b_and!187423 (and (=> t!210124 result!172696) b_and!187449)))

(declare-fun t!210126 () Bool)

(declare-fun tb!139943 () Bool)

(assert (=> (and b!2472262 (= (toChars!6216 (transformation!4493 (rule!6851 t2!67))) (toChars!6216 (transformation!4493 (rule!6851 t2!67)))) t!210126) tb!139943))

(declare-fun result!172698 () Bool)

(assert (= result!172698 result!172690))

(assert (=> b!2472396 t!210126))

(declare-fun b_and!187451 () Bool)

(assert (= b_and!187427 (and (=> t!210126 result!172698) b_and!187451)))

(declare-fun m!2841171 () Bool)

(assert (=> d!711582 m!2841171))

(declare-fun m!2841173 () Bool)

(assert (=> b!2472396 m!2841173))

(assert (=> b!2472396 m!2841173))

(declare-fun m!2841175 () Bool)

(assert (=> b!2472396 m!2841175))

(declare-fun m!2841177 () Bool)

(assert (=> b!2472397 m!2841177))

(assert (=> start!241118 d!711582))

(declare-fun d!711584 () Bool)

(declare-fun res!1046809 () Bool)

(declare-fun e!1568156 () Bool)

(assert (=> d!711584 (=> (not res!1046809) (not e!1568156))))

(assert (=> d!711584 (= res!1046809 (not (isEmpty!16746 (originalCharacters!5259 t1!67))))))

(assert (=> d!711584 (= (inv!38922 t1!67) e!1568156)))

(declare-fun b!2472403 () Bool)

(declare-fun res!1046810 () Bool)

(assert (=> b!2472403 (=> (not res!1046810) (not e!1568156))))

(assert (=> b!2472403 (= res!1046810 (= (originalCharacters!5259 t1!67) (list!11147 (dynLambda!12386 (toChars!6216 (transformation!4493 (rule!6851 t1!67))) (value!143456 t1!67)))))))

(declare-fun b!2472404 () Bool)

(assert (=> b!2472404 (= e!1568156 (= (size!22437 t1!67) (size!22441 (originalCharacters!5259 t1!67))))))

(assert (= (and d!711584 res!1046809) b!2472403))

(assert (= (and b!2472403 res!1046810) b!2472404))

(declare-fun b_lambda!75845 () Bool)

(assert (=> (not b_lambda!75845) (not b!2472403)))

(declare-fun tb!139945 () Bool)

(declare-fun t!210128 () Bool)

(assert (=> (and b!2472269 (= (toChars!6216 (transformation!4493 (rule!6851 (h!34233 l!6611)))) (toChars!6216 (transformation!4493 (rule!6851 t1!67)))) t!210128) tb!139945))

(declare-fun b!2472405 () Bool)

(declare-fun e!1568157 () Bool)

(declare-fun tp!790105 () Bool)

(assert (=> b!2472405 (= e!1568157 (and (inv!38925 (c!393774 (dynLambda!12386 (toChars!6216 (transformation!4493 (rule!6851 t1!67))) (value!143456 t1!67)))) tp!790105))))

(declare-fun result!172700 () Bool)

(assert (=> tb!139945 (= result!172700 (and (inv!38926 (dynLambda!12386 (toChars!6216 (transformation!4493 (rule!6851 t1!67))) (value!143456 t1!67))) e!1568157))))

(assert (= tb!139945 b!2472405))

(declare-fun m!2841179 () Bool)

(assert (=> b!2472405 m!2841179))

(declare-fun m!2841181 () Bool)

(assert (=> tb!139945 m!2841181))

(assert (=> b!2472403 t!210128))

(declare-fun b_and!187453 () Bool)

(assert (= b_and!187445 (and (=> t!210128 result!172700) b_and!187453)))

(declare-fun tb!139947 () Bool)

(declare-fun t!210130 () Bool)

(assert (=> (and b!2472280 (= (toChars!6216 (transformation!4493 (h!34234 rules!4472))) (toChars!6216 (transformation!4493 (rule!6851 t1!67)))) t!210130) tb!139947))

(declare-fun result!172702 () Bool)

(assert (= result!172702 result!172700))

(assert (=> b!2472403 t!210130))

(declare-fun b_and!187455 () Bool)

(assert (= b_and!187447 (and (=> t!210130 result!172702) b_and!187455)))

(declare-fun t!210132 () Bool)

(declare-fun tb!139949 () Bool)

(assert (=> (and b!2472273 (= (toChars!6216 (transformation!4493 (rule!6851 t1!67))) (toChars!6216 (transformation!4493 (rule!6851 t1!67)))) t!210132) tb!139949))

(declare-fun result!172704 () Bool)

(assert (= result!172704 result!172700))

(assert (=> b!2472403 t!210132))

(declare-fun b_and!187457 () Bool)

(assert (= b_and!187449 (and (=> t!210132 result!172704) b_and!187457)))

(declare-fun tb!139951 () Bool)

(declare-fun t!210134 () Bool)

(assert (=> (and b!2472262 (= (toChars!6216 (transformation!4493 (rule!6851 t2!67))) (toChars!6216 (transformation!4493 (rule!6851 t1!67)))) t!210134) tb!139951))

(declare-fun result!172706 () Bool)

(assert (= result!172706 result!172700))

(assert (=> b!2472403 t!210134))

(declare-fun b_and!187459 () Bool)

(assert (= b_and!187451 (and (=> t!210134 result!172706) b_and!187459)))

(declare-fun m!2841183 () Bool)

(assert (=> d!711584 m!2841183))

(declare-fun m!2841185 () Bool)

(assert (=> b!2472403 m!2841185))

(assert (=> b!2472403 m!2841185))

(declare-fun m!2841187 () Bool)

(assert (=> b!2472403 m!2841187))

(declare-fun m!2841189 () Bool)

(assert (=> b!2472404 m!2841189))

(assert (=> start!241118 d!711584))

(declare-fun b!2472458 () Bool)

(declare-fun e!1568200 () Bool)

(assert (=> b!2472458 (= e!1568200 true)))

(declare-fun b!2472457 () Bool)

(declare-fun e!1568199 () Bool)

(assert (=> b!2472457 (= e!1568199 e!1568200)))

(declare-fun b!2472456 () Bool)

(declare-fun e!1568198 () Bool)

(assert (=> b!2472456 (= e!1568198 e!1568199)))

(declare-fun d!711586 () Bool)

(assert (=> d!711586 e!1568198))

(assert (= b!2472457 b!2472458))

(assert (= b!2472456 b!2472457))

(assert (= (and d!711586 ((_ is Cons!28833) rules!4472)) b!2472456))

(declare-fun order!15635 () Int)

(declare-fun lambda!93346 () Int)

(declare-fun order!15637 () Int)

(declare-fun dynLambda!12387 (Int Int) Int)

(declare-fun dynLambda!12388 (Int Int) Int)

(assert (=> b!2472458 (< (dynLambda!12387 order!15635 (toValue!6357 (transformation!4493 (h!34234 rules!4472)))) (dynLambda!12388 order!15637 lambda!93346))))

(declare-fun order!15639 () Int)

(declare-fun dynLambda!12389 (Int Int) Int)

(assert (=> b!2472458 (< (dynLambda!12389 order!15639 (toChars!6216 (transformation!4493 (h!34234 rules!4472)))) (dynLambda!12388 order!15637 lambda!93346))))

(assert (=> d!711586 true))

(declare-fun lt!883419 () Bool)

(declare-fun forall!5910 (List!28932 Int) Bool)

(assert (=> d!711586 (= lt!883419 (forall!5910 (tail!3926 l!6611) lambda!93346))))

(declare-fun e!1568190 () Bool)

(assert (=> d!711586 (= lt!883419 e!1568190)))

(declare-fun res!1046828 () Bool)

(assert (=> d!711586 (=> res!1046828 e!1568190)))

(assert (=> d!711586 (= res!1046828 (not ((_ is Cons!28832) (tail!3926 l!6611))))))

(assert (=> d!711586 (not (isEmpty!16744 rules!4472))))

(assert (=> d!711586 (= (rulesProduceEachTokenIndividuallyList!1406 thiss!27932 rules!4472 (tail!3926 l!6611)) lt!883419)))

(declare-fun b!2472446 () Bool)

(declare-fun e!1568191 () Bool)

(assert (=> b!2472446 (= e!1568190 e!1568191)))

(declare-fun res!1046829 () Bool)

(assert (=> b!2472446 (=> (not res!1046829) (not e!1568191))))

(assert (=> b!2472446 (= res!1046829 (rulesProduceIndividualToken!1819 thiss!27932 rules!4472 (h!34233 (tail!3926 l!6611))))))

(declare-fun b!2472447 () Bool)

(assert (=> b!2472447 (= e!1568191 (rulesProduceEachTokenIndividuallyList!1406 thiss!27932 rules!4472 (t!210099 (tail!3926 l!6611))))))

(assert (= (and d!711586 (not res!1046828)) b!2472446))

(assert (= (and b!2472446 res!1046829) b!2472447))

(assert (=> d!711586 m!2841035))

(declare-fun m!2841229 () Bool)

(assert (=> d!711586 m!2841229))

(assert (=> d!711586 m!2841009))

(declare-fun m!2841231 () Bool)

(assert (=> b!2472446 m!2841231))

(declare-fun m!2841233 () Bool)

(assert (=> b!2472447 m!2841233))

(assert (=> b!2472261 d!711586))

(declare-fun d!711604 () Bool)

(assert (=> d!711604 (= (tail!3926 l!6611) (t!210099 l!6611))))

(assert (=> b!2472261 d!711604))

(declare-fun d!711608 () Bool)

(assert (=> d!711608 (= (inv!38918 (tag!4983 (rule!6851 (h!34233 l!6611)))) (= (mod (str.len (value!143455 (tag!4983 (rule!6851 (h!34233 l!6611))))) 2) 0))))

(assert (=> b!2472265 d!711608))

(declare-fun d!711610 () Bool)

(declare-fun res!1046832 () Bool)

(declare-fun e!1568203 () Bool)

(assert (=> d!711610 (=> (not res!1046832) (not e!1568203))))

(assert (=> d!711610 (= res!1046832 (semiInverseModEq!1849 (toChars!6216 (transformation!4493 (rule!6851 (h!34233 l!6611)))) (toValue!6357 (transformation!4493 (rule!6851 (h!34233 l!6611))))))))

(assert (=> d!711610 (= (inv!38921 (transformation!4493 (rule!6851 (h!34233 l!6611)))) e!1568203)))

(declare-fun b!2472463 () Bool)

(assert (=> b!2472463 (= e!1568203 (equivClasses!1760 (toChars!6216 (transformation!4493 (rule!6851 (h!34233 l!6611)))) (toValue!6357 (transformation!4493 (rule!6851 (h!34233 l!6611))))))))

(assert (= (and d!711610 res!1046832) b!2472463))

(declare-fun m!2841249 () Bool)

(assert (=> d!711610 m!2841249))

(declare-fun m!2841251 () Bool)

(assert (=> b!2472463 m!2841251))

(assert (=> b!2472265 d!711610))

(declare-fun d!711612 () Bool)

(declare-fun res!1046835 () Bool)

(declare-fun e!1568215 () Bool)

(assert (=> d!711612 (=> (not res!1046835) (not e!1568215))))

(declare-fun rulesValid!1673 (LexerInterface!4090 List!28933) Bool)

(assert (=> d!711612 (= res!1046835 (rulesValid!1673 thiss!27932 rules!4472))))

(assert (=> d!711612 (= (rulesInvariant!3590 thiss!27932 rules!4472) e!1568215)))

(declare-fun b!2472482 () Bool)

(declare-datatypes ((List!28935 0))(
  ( (Nil!28835) (Cons!28835 (h!34236 String!31691) (t!210178 List!28935)) )
))
(declare-fun noDuplicateTag!1671 (LexerInterface!4090 List!28933 List!28935) Bool)

(assert (=> b!2472482 (= e!1568215 (noDuplicateTag!1671 thiss!27932 rules!4472 Nil!28835))))

(assert (= (and d!711612 res!1046835) b!2472482))

(declare-fun m!2841255 () Bool)

(assert (=> d!711612 m!2841255))

(declare-fun m!2841257 () Bool)

(assert (=> b!2472482 m!2841257))

(assert (=> b!2472276 d!711612))

(declare-fun d!711614 () Bool)

(declare-fun res!1046836 () Bool)

(declare-fun e!1568216 () Bool)

(assert (=> d!711614 (=> (not res!1046836) (not e!1568216))))

(assert (=> d!711614 (= res!1046836 (not (isEmpty!16746 (originalCharacters!5259 (h!34233 l!6611)))))))

(assert (=> d!711614 (= (inv!38922 (h!34233 l!6611)) e!1568216)))

(declare-fun b!2472489 () Bool)

(declare-fun res!1046837 () Bool)

(assert (=> b!2472489 (=> (not res!1046837) (not e!1568216))))

(assert (=> b!2472489 (= res!1046837 (= (originalCharacters!5259 (h!34233 l!6611)) (list!11147 (dynLambda!12386 (toChars!6216 (transformation!4493 (rule!6851 (h!34233 l!6611)))) (value!143456 (h!34233 l!6611))))))))

(declare-fun b!2472490 () Bool)

(assert (=> b!2472490 (= e!1568216 (= (size!22437 (h!34233 l!6611)) (size!22441 (originalCharacters!5259 (h!34233 l!6611)))))))

(assert (= (and d!711614 res!1046836) b!2472489))

(assert (= (and b!2472489 res!1046837) b!2472490))

(declare-fun b_lambda!75849 () Bool)

(assert (=> (not b_lambda!75849) (not b!2472489)))

(declare-fun t!210146 () Bool)

(declare-fun tb!139961 () Bool)

(assert (=> (and b!2472269 (= (toChars!6216 (transformation!4493 (rule!6851 (h!34233 l!6611)))) (toChars!6216 (transformation!4493 (rule!6851 (h!34233 l!6611))))) t!210146) tb!139961))

(declare-fun b!2472491 () Bool)

(declare-fun e!1568217 () Bool)

(declare-fun tp!790123 () Bool)

(assert (=> b!2472491 (= e!1568217 (and (inv!38925 (c!393774 (dynLambda!12386 (toChars!6216 (transformation!4493 (rule!6851 (h!34233 l!6611)))) (value!143456 (h!34233 l!6611))))) tp!790123))))

(declare-fun result!172720 () Bool)

(assert (=> tb!139961 (= result!172720 (and (inv!38926 (dynLambda!12386 (toChars!6216 (transformation!4493 (rule!6851 (h!34233 l!6611)))) (value!143456 (h!34233 l!6611)))) e!1568217))))

(assert (= tb!139961 b!2472491))

(declare-fun m!2841259 () Bool)

(assert (=> b!2472491 m!2841259))

(declare-fun m!2841261 () Bool)

(assert (=> tb!139961 m!2841261))

(assert (=> b!2472489 t!210146))

(declare-fun b_and!187469 () Bool)

(assert (= b_and!187453 (and (=> t!210146 result!172720) b_and!187469)))

(declare-fun t!210148 () Bool)

(declare-fun tb!139963 () Bool)

(assert (=> (and b!2472280 (= (toChars!6216 (transformation!4493 (h!34234 rules!4472))) (toChars!6216 (transformation!4493 (rule!6851 (h!34233 l!6611))))) t!210148) tb!139963))

(declare-fun result!172722 () Bool)

(assert (= result!172722 result!172720))

(assert (=> b!2472489 t!210148))

(declare-fun b_and!187471 () Bool)

(assert (= b_and!187455 (and (=> t!210148 result!172722) b_and!187471)))

(declare-fun t!210150 () Bool)

(declare-fun tb!139965 () Bool)

(assert (=> (and b!2472273 (= (toChars!6216 (transformation!4493 (rule!6851 t1!67))) (toChars!6216 (transformation!4493 (rule!6851 (h!34233 l!6611))))) t!210150) tb!139965))

(declare-fun result!172724 () Bool)

(assert (= result!172724 result!172720))

(assert (=> b!2472489 t!210150))

(declare-fun b_and!187473 () Bool)

(assert (= b_and!187457 (and (=> t!210150 result!172724) b_and!187473)))

(declare-fun t!210152 () Bool)

(declare-fun tb!139967 () Bool)

(assert (=> (and b!2472262 (= (toChars!6216 (transformation!4493 (rule!6851 t2!67))) (toChars!6216 (transformation!4493 (rule!6851 (h!34233 l!6611))))) t!210152) tb!139967))

(declare-fun result!172726 () Bool)

(assert (= result!172726 result!172720))

(assert (=> b!2472489 t!210152))

(declare-fun b_and!187475 () Bool)

(assert (= b_and!187459 (and (=> t!210152 result!172726) b_and!187475)))

(declare-fun m!2841263 () Bool)

(assert (=> d!711614 m!2841263))

(declare-fun m!2841265 () Bool)

(assert (=> b!2472489 m!2841265))

(assert (=> b!2472489 m!2841265))

(declare-fun m!2841267 () Bool)

(assert (=> b!2472489 m!2841267))

(declare-fun m!2841269 () Bool)

(assert (=> b!2472490 m!2841269))

(assert (=> b!2472274 d!711614))

(declare-fun bs!466967 () Bool)

(declare-fun d!711616 () Bool)

(assert (= bs!466967 (and d!711616 d!711586)))

(declare-fun lambda!93347 () Int)

(assert (=> bs!466967 (= lambda!93347 lambda!93346)))

(declare-fun b!2472512 () Bool)

(declare-fun e!1568227 () Bool)

(assert (=> b!2472512 (= e!1568227 true)))

(declare-fun b!2472511 () Bool)

(declare-fun e!1568226 () Bool)

(assert (=> b!2472511 (= e!1568226 e!1568227)))

(declare-fun b!2472510 () Bool)

(declare-fun e!1568225 () Bool)

(assert (=> b!2472510 (= e!1568225 e!1568226)))

(assert (=> d!711616 e!1568225))

(assert (= b!2472511 b!2472512))

(assert (= b!2472510 b!2472511))

(assert (= (and d!711616 ((_ is Cons!28833) rules!4472)) b!2472510))

(assert (=> b!2472512 (< (dynLambda!12387 order!15635 (toValue!6357 (transformation!4493 (h!34234 rules!4472)))) (dynLambda!12388 order!15637 lambda!93347))))

(assert (=> b!2472512 (< (dynLambda!12389 order!15639 (toChars!6216 (transformation!4493 (h!34234 rules!4472)))) (dynLambda!12388 order!15637 lambda!93347))))

(assert (=> d!711616 true))

(declare-fun lt!883430 () Bool)

(assert (=> d!711616 (= lt!883430 (forall!5910 l!6611 lambda!93347))))

(declare-fun e!1568223 () Bool)

(assert (=> d!711616 (= lt!883430 e!1568223)))

(declare-fun res!1046838 () Bool)

(assert (=> d!711616 (=> res!1046838 e!1568223)))

(assert (=> d!711616 (= res!1046838 (not ((_ is Cons!28832) l!6611)))))

(assert (=> d!711616 (not (isEmpty!16744 rules!4472))))

(assert (=> d!711616 (= (rulesProduceEachTokenIndividuallyList!1406 thiss!27932 rules!4472 l!6611) lt!883430)))

(declare-fun b!2472508 () Bool)

(declare-fun e!1568224 () Bool)

(assert (=> b!2472508 (= e!1568223 e!1568224)))

(declare-fun res!1046839 () Bool)

(assert (=> b!2472508 (=> (not res!1046839) (not e!1568224))))

(assert (=> b!2472508 (= res!1046839 (rulesProduceIndividualToken!1819 thiss!27932 rules!4472 (h!34233 l!6611)))))

(declare-fun b!2472509 () Bool)

(assert (=> b!2472509 (= e!1568224 (rulesProduceEachTokenIndividuallyList!1406 thiss!27932 rules!4472 (t!210099 l!6611)))))

(assert (= (and d!711616 (not res!1046838)) b!2472508))

(assert (= (and b!2472508 res!1046839) b!2472509))

(declare-fun m!2841271 () Bool)

(assert (=> d!711616 m!2841271))

(assert (=> d!711616 m!2841009))

(assert (=> b!2472508 m!2841117))

(declare-fun m!2841273 () Bool)

(assert (=> b!2472509 m!2841273))

(assert (=> b!2472275 d!711616))

(declare-fun d!711618 () Bool)

(assert (=> d!711618 (= (isEmpty!16744 rules!4472) ((_ is Nil!28833) rules!4472))))

(assert (=> b!2472264 d!711618))

(declare-fun b!2472524 () Bool)

(declare-fun e!1568240 () Bool)

(declare-fun tp_is_empty!11963 () Bool)

(declare-fun tp!790151 () Bool)

(assert (=> b!2472524 (= e!1568240 (and tp_is_empty!11963 tp!790151))))

(assert (=> b!2472278 (= tp!790083 e!1568240)))

(assert (= (and b!2472278 ((_ is Cons!28831) (originalCharacters!5259 t1!67))) b!2472524))

(declare-fun b!2472525 () Bool)

(declare-fun e!1568241 () Bool)

(declare-fun tp!790152 () Bool)

(assert (=> b!2472525 (= e!1568241 (and tp_is_empty!11963 tp!790152))))

(assert (=> b!2472277 (= tp!790082 e!1568241)))

(assert (= (and b!2472277 ((_ is Cons!28831) (originalCharacters!5259 (h!34233 l!6611)))) b!2472525))

(declare-fun b!2472526 () Bool)

(declare-fun e!1568242 () Bool)

(declare-fun tp!790153 () Bool)

(assert (=> b!2472526 (= e!1568242 (and tp_is_empty!11963 tp!790153))))

(assert (=> b!2472266 (= tp!790095 e!1568242)))

(assert (= (and b!2472266 ((_ is Cons!28831) (originalCharacters!5259 t2!67))) b!2472526))

(declare-fun b!2472547 () Bool)

(declare-fun e!1568248 () Bool)

(declare-fun tp!790172 () Bool)

(assert (=> b!2472547 (= e!1568248 tp!790172)))

(assert (=> b!2472267 (= tp!790088 e!1568248)))

(declare-fun b!2472548 () Bool)

(declare-fun tp!790169 () Bool)

(declare-fun tp!790171 () Bool)

(assert (=> b!2472548 (= e!1568248 (and tp!790169 tp!790171))))

(declare-fun b!2472545 () Bool)

(assert (=> b!2472545 (= e!1568248 tp_is_empty!11963)))

(declare-fun b!2472546 () Bool)

(declare-fun tp!790170 () Bool)

(declare-fun tp!790173 () Bool)

(assert (=> b!2472546 (= e!1568248 (and tp!790170 tp!790173))))

(assert (= (and b!2472267 ((_ is ElementMatch!7281) (regex!4493 (rule!6851 t1!67)))) b!2472545))

(assert (= (and b!2472267 ((_ is Concat!11961) (regex!4493 (rule!6851 t1!67)))) b!2472546))

(assert (= (and b!2472267 ((_ is Star!7281) (regex!4493 (rule!6851 t1!67)))) b!2472547))

(assert (= (and b!2472267 ((_ is Union!7281) (regex!4493 (rule!6851 t1!67)))) b!2472548))

(declare-fun b!2472553 () Bool)

(declare-fun e!1568253 () Bool)

(declare-fun tp!790177 () Bool)

(assert (=> b!2472553 (= e!1568253 tp!790177)))

(assert (=> b!2472270 (= tp!790092 e!1568253)))

(declare-fun b!2472554 () Bool)

(declare-fun tp!790174 () Bool)

(declare-fun tp!790176 () Bool)

(assert (=> b!2472554 (= e!1568253 (and tp!790174 tp!790176))))

(declare-fun b!2472551 () Bool)

(assert (=> b!2472551 (= e!1568253 tp_is_empty!11963)))

(declare-fun b!2472552 () Bool)

(declare-fun tp!790175 () Bool)

(declare-fun tp!790178 () Bool)

(assert (=> b!2472552 (= e!1568253 (and tp!790175 tp!790178))))

(assert (= (and b!2472270 ((_ is ElementMatch!7281) (regex!4493 (rule!6851 t2!67)))) b!2472551))

(assert (= (and b!2472270 ((_ is Concat!11961) (regex!4493 (rule!6851 t2!67)))) b!2472552))

(assert (= (and b!2472270 ((_ is Star!7281) (regex!4493 (rule!6851 t2!67)))) b!2472553))

(assert (= (and b!2472270 ((_ is Union!7281) (regex!4493 (rule!6851 t2!67)))) b!2472554))

(declare-fun b!2472557 () Bool)

(declare-fun e!1568254 () Bool)

(declare-fun tp!790182 () Bool)

(assert (=> b!2472557 (= e!1568254 tp!790182)))

(assert (=> b!2472263 (= tp!790096 e!1568254)))

(declare-fun b!2472558 () Bool)

(declare-fun tp!790179 () Bool)

(declare-fun tp!790181 () Bool)

(assert (=> b!2472558 (= e!1568254 (and tp!790179 tp!790181))))

(declare-fun b!2472555 () Bool)

(assert (=> b!2472555 (= e!1568254 tp_is_empty!11963)))

(declare-fun b!2472556 () Bool)

(declare-fun tp!790180 () Bool)

(declare-fun tp!790183 () Bool)

(assert (=> b!2472556 (= e!1568254 (and tp!790180 tp!790183))))

(assert (= (and b!2472263 ((_ is ElementMatch!7281) (regex!4493 (h!34234 rules!4472)))) b!2472555))

(assert (= (and b!2472263 ((_ is Concat!11961) (regex!4493 (h!34234 rules!4472)))) b!2472556))

(assert (= (and b!2472263 ((_ is Star!7281) (regex!4493 (h!34234 rules!4472)))) b!2472557))

(assert (= (and b!2472263 ((_ is Union!7281) (regex!4493 (h!34234 rules!4472)))) b!2472558))

(declare-fun b!2472577 () Bool)

(declare-fun b_free!71499 () Bool)

(declare-fun b_next!72203 () Bool)

(assert (=> b!2472577 (= b_free!71499 (not b_next!72203))))

(declare-fun tp!790208 () Bool)

(declare-fun b_and!187485 () Bool)

(assert (=> b!2472577 (= tp!790208 b_and!187485)))

(declare-fun b_free!71503 () Bool)

(declare-fun b_next!72207 () Bool)

(assert (=> b!2472577 (= b_free!71503 (not b_next!72207))))

(declare-fun t!210164 () Bool)

(declare-fun tb!139979 () Bool)

(assert (=> (and b!2472577 (= (toChars!6216 (transformation!4493 (h!34234 (t!210100 rules!4472)))) (toChars!6216 (transformation!4493 (rule!6851 t2!67)))) t!210164) tb!139979))

(declare-fun result!172748 () Bool)

(assert (= result!172748 result!172690))

(assert (=> b!2472396 t!210164))

(declare-fun tb!139983 () Bool)

(declare-fun t!210168 () Bool)

(assert (=> (and b!2472577 (= (toChars!6216 (transformation!4493 (h!34234 (t!210100 rules!4472)))) (toChars!6216 (transformation!4493 (rule!6851 t1!67)))) t!210168) tb!139983))

(declare-fun result!172752 () Bool)

(assert (= result!172752 result!172700))

(assert (=> b!2472403 t!210168))

(declare-fun t!210170 () Bool)

(declare-fun tb!139985 () Bool)

(assert (=> (and b!2472577 (= (toChars!6216 (transformation!4493 (h!34234 (t!210100 rules!4472)))) (toChars!6216 (transformation!4493 (rule!6851 (h!34233 l!6611))))) t!210170) tb!139985))

(declare-fun result!172754 () Bool)

(assert (= result!172754 result!172720))

(assert (=> b!2472489 t!210170))

(declare-fun b_and!187487 () Bool)

(declare-fun tp!790210 () Bool)

(assert (=> b!2472577 (= tp!790210 (and (=> t!210164 result!172748) (=> t!210168 result!172752) (=> t!210170 result!172754) b_and!187487))))

(declare-fun e!1568276 () Bool)

(assert (=> b!2472577 (= e!1568276 (and tp!790208 tp!790210))))

(declare-fun e!1568277 () Bool)

(declare-fun tp!790207 () Bool)

(declare-fun b!2472576 () Bool)

(assert (=> b!2472576 (= e!1568277 (and tp!790207 (inv!38918 (tag!4983 (h!34234 (t!210100 rules!4472)))) (inv!38921 (transformation!4493 (h!34234 (t!210100 rules!4472)))) e!1568276))))

(declare-fun b!2472575 () Bool)

(declare-fun e!1568275 () Bool)

(declare-fun tp!790209 () Bool)

(assert (=> b!2472575 (= e!1568275 (and e!1568277 tp!790209))))

(assert (=> b!2472272 (= tp!790094 e!1568275)))

(assert (= b!2472576 b!2472577))

(assert (= b!2472575 b!2472576))

(assert (= (and b!2472272 ((_ is Cons!28833) (t!210100 rules!4472))) b!2472575))

(declare-fun m!2841283 () Bool)

(assert (=> b!2472576 m!2841283))

(declare-fun m!2841289 () Bool)

(assert (=> b!2472576 m!2841289))

(declare-fun b!2472581 () Bool)

(declare-fun e!1568280 () Bool)

(declare-fun tp!790215 () Bool)

(assert (=> b!2472581 (= e!1568280 tp!790215)))

(assert (=> b!2472265 (= tp!790091 e!1568280)))

(declare-fun b!2472582 () Bool)

(declare-fun tp!790212 () Bool)

(declare-fun tp!790214 () Bool)

(assert (=> b!2472582 (= e!1568280 (and tp!790212 tp!790214))))

(declare-fun b!2472579 () Bool)

(assert (=> b!2472579 (= e!1568280 tp_is_empty!11963)))

(declare-fun b!2472580 () Bool)

(declare-fun tp!790213 () Bool)

(declare-fun tp!790216 () Bool)

(assert (=> b!2472580 (= e!1568280 (and tp!790213 tp!790216))))

(assert (= (and b!2472265 ((_ is ElementMatch!7281) (regex!4493 (rule!6851 (h!34233 l!6611))))) b!2472579))

(assert (= (and b!2472265 ((_ is Concat!11961) (regex!4493 (rule!6851 (h!34233 l!6611))))) b!2472580))

(assert (= (and b!2472265 ((_ is Star!7281) (regex!4493 (rule!6851 (h!34233 l!6611))))) b!2472581))

(assert (= (and b!2472265 ((_ is Union!7281) (regex!4493 (rule!6851 (h!34233 l!6611))))) b!2472582))

(declare-fun b!2472596 () Bool)

(declare-fun b_free!71505 () Bool)

(declare-fun b_next!72209 () Bool)

(assert (=> b!2472596 (= b_free!71505 (not b_next!72209))))

(declare-fun tp!790227 () Bool)

(declare-fun b_and!187489 () Bool)

(assert (=> b!2472596 (= tp!790227 b_and!187489)))

(declare-fun b_free!71507 () Bool)

(declare-fun b_next!72211 () Bool)

(assert (=> b!2472596 (= b_free!71507 (not b_next!72211))))

(declare-fun t!210173 () Bool)

(declare-fun tb!139987 () Bool)

(assert (=> (and b!2472596 (= (toChars!6216 (transformation!4493 (rule!6851 (h!34233 (t!210099 l!6611))))) (toChars!6216 (transformation!4493 (rule!6851 t2!67)))) t!210173) tb!139987))

(declare-fun result!172758 () Bool)

(assert (= result!172758 result!172690))

(assert (=> b!2472396 t!210173))

(declare-fun tb!139989 () Bool)

(declare-fun t!210175 () Bool)

(assert (=> (and b!2472596 (= (toChars!6216 (transformation!4493 (rule!6851 (h!34233 (t!210099 l!6611))))) (toChars!6216 (transformation!4493 (rule!6851 t1!67)))) t!210175) tb!139989))

(declare-fun result!172760 () Bool)

(assert (= result!172760 result!172700))

(assert (=> b!2472403 t!210175))

(declare-fun t!210177 () Bool)

(declare-fun tb!139991 () Bool)

(assert (=> (and b!2472596 (= (toChars!6216 (transformation!4493 (rule!6851 (h!34233 (t!210099 l!6611))))) (toChars!6216 (transformation!4493 (rule!6851 (h!34233 l!6611))))) t!210177) tb!139991))

(declare-fun result!172762 () Bool)

(assert (= result!172762 result!172720))

(assert (=> b!2472489 t!210177))

(declare-fun tp!790229 () Bool)

(declare-fun b_and!187491 () Bool)

(assert (=> b!2472596 (= tp!790229 (and (=> t!210173 result!172758) (=> t!210175 result!172760) (=> t!210177 result!172762) b_and!187491))))

(declare-fun e!1568296 () Bool)

(assert (=> b!2472596 (= e!1568296 (and tp!790227 tp!790229))))

(declare-fun tp!790230 () Bool)

(declare-fun e!1568298 () Bool)

(declare-fun b!2472594 () Bool)

(declare-fun e!1568295 () Bool)

(assert (=> b!2472594 (= e!1568295 (and (inv!21 (value!143456 (h!34233 (t!210099 l!6611)))) e!1568298 tp!790230))))

(declare-fun e!1568293 () Bool)

(assert (=> b!2472274 (= tp!790086 e!1568293)))

(declare-fun tp!790231 () Bool)

(declare-fun b!2472593 () Bool)

(assert (=> b!2472593 (= e!1568293 (and (inv!38922 (h!34233 (t!210099 l!6611))) e!1568295 tp!790231))))

(declare-fun tp!790228 () Bool)

(declare-fun b!2472595 () Bool)

(assert (=> b!2472595 (= e!1568298 (and tp!790228 (inv!38918 (tag!4983 (rule!6851 (h!34233 (t!210099 l!6611))))) (inv!38921 (transformation!4493 (rule!6851 (h!34233 (t!210099 l!6611))))) e!1568296))))

(assert (= b!2472595 b!2472596))

(assert (= b!2472594 b!2472595))

(assert (= b!2472593 b!2472594))

(assert (= (and b!2472274 ((_ is Cons!28832) (t!210099 l!6611))) b!2472593))

(declare-fun m!2841291 () Bool)

(assert (=> b!2472594 m!2841291))

(declare-fun m!2841293 () Bool)

(assert (=> b!2472593 m!2841293))

(declare-fun m!2841295 () Bool)

(assert (=> b!2472595 m!2841295))

(declare-fun m!2841297 () Bool)

(assert (=> b!2472595 m!2841297))

(declare-fun b_lambda!75857 () Bool)

(assert (= b_lambda!75845 (or (and b!2472269 b_free!71479 (= (toChars!6216 (transformation!4493 (rule!6851 (h!34233 l!6611)))) (toChars!6216 (transformation!4493 (rule!6851 t1!67))))) (and b!2472273 b_free!71487) (and b!2472577 b_free!71503 (= (toChars!6216 (transformation!4493 (h!34234 (t!210100 rules!4472)))) (toChars!6216 (transformation!4493 (rule!6851 t1!67))))) (and b!2472262 b_free!71491 (= (toChars!6216 (transformation!4493 (rule!6851 t2!67))) (toChars!6216 (transformation!4493 (rule!6851 t1!67))))) (and b!2472280 b_free!71483 (= (toChars!6216 (transformation!4493 (h!34234 rules!4472))) (toChars!6216 (transformation!4493 (rule!6851 t1!67))))) (and b!2472596 b_free!71507 (= (toChars!6216 (transformation!4493 (rule!6851 (h!34233 (t!210099 l!6611))))) (toChars!6216 (transformation!4493 (rule!6851 t1!67))))) b_lambda!75857)))

(declare-fun b_lambda!75859 () Bool)

(assert (= b_lambda!75843 (or (and b!2472596 b_free!71507 (= (toChars!6216 (transformation!4493 (rule!6851 (h!34233 (t!210099 l!6611))))) (toChars!6216 (transformation!4493 (rule!6851 t2!67))))) (and b!2472577 b_free!71503 (= (toChars!6216 (transformation!4493 (h!34234 (t!210100 rules!4472)))) (toChars!6216 (transformation!4493 (rule!6851 t2!67))))) (and b!2472269 b_free!71479 (= (toChars!6216 (transformation!4493 (rule!6851 (h!34233 l!6611)))) (toChars!6216 (transformation!4493 (rule!6851 t2!67))))) (and b!2472280 b_free!71483 (= (toChars!6216 (transformation!4493 (h!34234 rules!4472))) (toChars!6216 (transformation!4493 (rule!6851 t2!67))))) (and b!2472273 b_free!71487 (= (toChars!6216 (transformation!4493 (rule!6851 t1!67))) (toChars!6216 (transformation!4493 (rule!6851 t2!67))))) (and b!2472262 b_free!71491) b_lambda!75859)))

(declare-fun b_lambda!75861 () Bool)

(assert (= b_lambda!75849 (or (and b!2472273 b_free!71487 (= (toChars!6216 (transformation!4493 (rule!6851 t1!67))) (toChars!6216 (transformation!4493 (rule!6851 (h!34233 l!6611)))))) (and b!2472269 b_free!71479) (and b!2472577 b_free!71503 (= (toChars!6216 (transformation!4493 (h!34234 (t!210100 rules!4472)))) (toChars!6216 (transformation!4493 (rule!6851 (h!34233 l!6611)))))) (and b!2472280 b_free!71483 (= (toChars!6216 (transformation!4493 (h!34234 rules!4472))) (toChars!6216 (transformation!4493 (rule!6851 (h!34233 l!6611)))))) (and b!2472596 b_free!71507 (= (toChars!6216 (transformation!4493 (rule!6851 (h!34233 (t!210099 l!6611))))) (toChars!6216 (transformation!4493 (rule!6851 (h!34233 l!6611)))))) (and b!2472262 b_free!71491 (= (toChars!6216 (transformation!4493 (rule!6851 t2!67))) (toChars!6216 (transformation!4493 (rule!6851 (h!34233 l!6611)))))) b_lambda!75861)))

(check-sat b_and!187469 (not d!711580) (not b!2472396) (not b!2472357) (not b!2472366) b_and!187425 (not d!711614) (not b!2472389) b_and!187487 (not b!2472525) (not b!2472388) (not d!711610) (not b!2472387) b_and!187413 (not tb!139961) (not b!2472397) (not b!2472463) (not b_next!72211) (not b_next!72195) (not b!2472385) (not b!2472554) (not d!711574) (not b!2472404) (not b_next!72189) (not d!711576) (not b!2472547) b_and!187473 (not b!2472490) b_and!187471 (not d!711582) (not b_next!72181) (not tb!139937) (not b!2472446) (not b!2472553) b_and!187417 (not b_next!72209) (not d!711612) (not b!2472508) (not b!2472593) (not b!2472359) (not b!2472361) (not b!2472582) (not b!2472402) (not b!2472524) b_and!187485 (not d!711566) (not b!2472368) (not b_next!72191) (not b!2472581) (not b_next!72187) (not b!2472489) (not b!2472556) (not b!2472557) (not b!2472328) (not b_next!72207) (not b!2472371) (not b!2472391) b_and!187421 (not b!2472548) (not b!2472363) (not b!2472546) (not b!2472364) (not tb!139945) (not b_next!72183) (not b!2472526) (not b_next!72193) (not b!2472326) (not b!2472595) (not d!711616) b_and!187475 (not b!2472482) (not b!2472594) (not b_lambda!75859) (not b!2472509) (not b!2472491) (not d!711572) (not d!711584) (not b_lambda!75857) (not b_next!72185) (not b!2472580) (not b!2472405) (not b!2472358) (not b!2472510) b_and!187491 (not b!2472456) b_and!187489 (not b!2472378) (not d!711586) tp_is_empty!11963 (not b!2472386) (not b!2472552) (not b_next!72203) (not b!2472324) (not b!2472558) (not b!2472403) (not b!2472390) (not b!2472576) (not b!2472575) (not b!2472447) (not b!2472377) (not b_lambda!75861))
(check-sat b_and!187425 b_and!187487 (not b_next!72195) (not b_next!72189) b_and!187473 b_and!187417 (not b_next!72209) b_and!187485 (not b_next!72207) b_and!187421 (not b_next!72183) (not b_next!72193) b_and!187469 b_and!187475 (not b_next!72185) (not b_next!72203) b_and!187413 (not b_next!72211) b_and!187471 (not b_next!72181) (not b_next!72187) (not b_next!72191) b_and!187491 b_and!187489)
