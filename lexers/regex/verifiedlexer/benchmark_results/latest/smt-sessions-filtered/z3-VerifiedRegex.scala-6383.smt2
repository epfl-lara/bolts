; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!332130 () Bool)

(assert start!332130)

(declare-fun b!3581956 () Bool)

(declare-fun b_free!92057 () Bool)

(declare-fun b_next!92761 () Bool)

(assert (=> b!3581956 (= b_free!92057 (not b_next!92761))))

(declare-fun tp!1096583 () Bool)

(declare-fun b_and!258487 () Bool)

(assert (=> b!3581956 (= tp!1096583 b_and!258487)))

(declare-fun b_free!92059 () Bool)

(declare-fun b_next!92763 () Bool)

(assert (=> b!3581956 (= b_free!92059 (not b_next!92763))))

(declare-fun tp!1096585 () Bool)

(declare-fun b_and!258489 () Bool)

(assert (=> b!3581956 (= tp!1096585 b_and!258489)))

(declare-fun b!3581961 () Bool)

(declare-fun b_free!92061 () Bool)

(declare-fun b_next!92765 () Bool)

(assert (=> b!3581961 (= b_free!92061 (not b_next!92765))))

(declare-fun tp!1096582 () Bool)

(declare-fun b_and!258491 () Bool)

(assert (=> b!3581961 (= tp!1096582 b_and!258491)))

(declare-fun b_free!92063 () Bool)

(declare-fun b_next!92767 () Bool)

(assert (=> b!3581961 (= b_free!92063 (not b_next!92767))))

(declare-fun tp!1096586 () Bool)

(declare-fun b_and!258493 () Bool)

(assert (=> b!3581961 (= tp!1096586 b_and!258493)))

(declare-fun b!3581945 () Bool)

(declare-fun b_free!92065 () Bool)

(declare-fun b_next!92769 () Bool)

(assert (=> b!3581945 (= b_free!92065 (not b_next!92769))))

(declare-fun tp!1096593 () Bool)

(declare-fun b_and!258495 () Bool)

(assert (=> b!3581945 (= tp!1096593 b_and!258495)))

(declare-fun b_free!92067 () Bool)

(declare-fun b_next!92771 () Bool)

(assert (=> b!3581945 (= b_free!92067 (not b_next!92771))))

(declare-fun tp!1096584 () Bool)

(declare-fun b_and!258497 () Bool)

(assert (=> b!3581945 (= tp!1096584 b_and!258497)))

(declare-fun b!3581947 () Bool)

(declare-fun b_free!92069 () Bool)

(declare-fun b_next!92773 () Bool)

(assert (=> b!3581947 (= b_free!92069 (not b_next!92773))))

(declare-fun tp!1096590 () Bool)

(declare-fun b_and!258499 () Bool)

(assert (=> b!3581947 (= tp!1096590 b_and!258499)))

(declare-fun b_free!92071 () Bool)

(declare-fun b_next!92775 () Bool)

(assert (=> b!3581947 (= b_free!92071 (not b_next!92775))))

(declare-fun tp!1096588 () Bool)

(declare-fun b_and!258501 () Bool)

(assert (=> b!3581947 (= tp!1096588 b_and!258501)))

(declare-fun b!3581941 () Bool)

(declare-fun e!2216281 () Bool)

(declare-fun e!2216270 () Bool)

(assert (=> b!3581941 (= e!2216281 (not e!2216270))))

(declare-fun res!1445244 () Bool)

(assert (=> b!3581941 (=> res!1445244 e!2216270)))

(declare-datatypes ((List!37759 0))(
  ( (Nil!37635) (Cons!37635 (h!43055 (_ BitVec 16)) (t!290348 List!37759)) )
))
(declare-datatypes ((TokenValue!5776 0))(
  ( (FloatLiteralValue!11552 (text!40877 List!37759)) (TokenValueExt!5775 (__x!23769 Int)) (Broken!28880 (value!178495 List!37759)) (Object!5899) (End!5776) (Def!5776) (Underscore!5776) (Match!5776) (Else!5776) (Error!5776) (Case!5776) (If!5776) (Extends!5776) (Abstract!5776) (Class!5776) (Val!5776) (DelimiterValue!11552 (del!5836 List!37759)) (KeywordValue!5782 (value!178496 List!37759)) (CommentValue!11552 (value!178497 List!37759)) (WhitespaceValue!11552 (value!178498 List!37759)) (IndentationValue!5776 (value!178499 List!37759)) (String!42213) (Int32!5776) (Broken!28881 (value!178500 List!37759)) (Boolean!5777) (Unit!53636) (OperatorValue!5779 (op!5836 List!37759)) (IdentifierValue!11552 (value!178501 List!37759)) (IdentifierValue!11553 (value!178502 List!37759)) (WhitespaceValue!11553 (value!178503 List!37759)) (True!11552) (False!11552) (Broken!28882 (value!178504 List!37759)) (Broken!28883 (value!178505 List!37759)) (True!11553) (RightBrace!5776) (RightBracket!5776) (Colon!5776) (Null!5776) (Comma!5776) (LeftBracket!5776) (False!11553) (LeftBrace!5776) (ImaginaryLiteralValue!5776 (text!40878 List!37759)) (StringLiteralValue!17328 (value!178506 List!37759)) (EOFValue!5776 (value!178507 List!37759)) (IdentValue!5776 (value!178508 List!37759)) (DelimiterValue!11553 (value!178509 List!37759)) (DedentValue!5776 (value!178510 List!37759)) (NewLineValue!5776 (value!178511 List!37759)) (IntegerValue!17328 (value!178512 (_ BitVec 32)) (text!40879 List!37759)) (IntegerValue!17329 (value!178513 Int) (text!40880 List!37759)) (Times!5776) (Or!5776) (Equal!5776) (Minus!5776) (Broken!28884 (value!178514 List!37759)) (And!5776) (Div!5776) (LessEqual!5776) (Mod!5776) (Concat!16081) (Not!5776) (Plus!5776) (SpaceValue!5776 (value!178515 List!37759)) (IntegerValue!17330 (value!178516 Int) (text!40881 List!37759)) (StringLiteralValue!17329 (text!40882 List!37759)) (FloatLiteralValue!11553 (text!40883 List!37759)) (BytesLiteralValue!5776 (value!178517 List!37759)) (CommentValue!11553 (value!178518 List!37759)) (StringLiteralValue!17330 (value!178519 List!37759)) (ErrorTokenValue!5776 (msg!5837 List!37759)) )
))
(declare-datatypes ((C!20796 0))(
  ( (C!20797 (val!12446 Int)) )
))
(declare-datatypes ((Regex!10305 0))(
  ( (ElementMatch!10305 (c!620585 C!20796)) (Concat!16082 (regOne!21122 Regex!10305) (regTwo!21122 Regex!10305)) (EmptyExpr!10305) (Star!10305 (reg!10634 Regex!10305)) (EmptyLang!10305) (Union!10305 (regOne!21123 Regex!10305) (regTwo!21123 Regex!10305)) )
))
(declare-datatypes ((String!42214 0))(
  ( (String!42215 (value!178520 String)) )
))
(declare-datatypes ((List!37760 0))(
  ( (Nil!37636) (Cons!37636 (h!43056 C!20796) (t!290349 List!37760)) )
))
(declare-datatypes ((IArray!22893 0))(
  ( (IArray!22894 (innerList!11504 List!37760)) )
))
(declare-datatypes ((Conc!11444 0))(
  ( (Node!11444 (left!29423 Conc!11444) (right!29753 Conc!11444) (csize!23118 Int) (cheight!11655 Int)) (Leaf!17828 (xs!14646 IArray!22893) (csize!23119 Int)) (Empty!11444) )
))
(declare-datatypes ((BalanceConc!22502 0))(
  ( (BalanceConc!22503 (c!620586 Conc!11444)) )
))
(declare-datatypes ((TokenValueInjection!10980 0))(
  ( (TokenValueInjection!10981 (toValue!7822 Int) (toChars!7681 Int)) )
))
(declare-datatypes ((Rule!10892 0))(
  ( (Rule!10893 (regex!5546 Regex!10305) (tag!6212 String!42214) (isSeparator!5546 Bool) (transformation!5546 TokenValueInjection!10980)) )
))
(declare-fun rule!403 () Rule!10892)

(declare-fun lt!1228733 () List!37760)

(declare-fun matchR!4874 (Regex!10305 List!37760) Bool)

(assert (=> b!3581941 (= res!1445244 (not (matchR!4874 (regex!5546 rule!403) lt!1228733)))))

(declare-datatypes ((LexerInterface!5135 0))(
  ( (LexerInterfaceExt!5132 (__x!23770 Int)) (Lexer!5133) )
))
(declare-fun thiss!23823 () LexerInterface!5135)

(declare-fun ruleValid!1811 (LexerInterface!5135 Rule!10892) Bool)

(assert (=> b!3581941 (ruleValid!1811 thiss!23823 rule!403)))

(declare-datatypes ((List!37761 0))(
  ( (Nil!37637) (Cons!37637 (h!43057 Rule!10892) (t!290350 List!37761)) )
))
(declare-fun rules!3307 () List!37761)

(declare-datatypes ((Unit!53637 0))(
  ( (Unit!53638) )
))
(declare-fun lt!1228732 () Unit!53637)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!966 (LexerInterface!5135 Rule!10892 List!37761) Unit!53637)

(assert (=> b!3581941 (= lt!1228732 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!966 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3581942 () Bool)

(declare-fun res!1445242 () Bool)

(declare-fun e!2216276 () Bool)

(assert (=> b!3581942 (=> (not res!1445242) (not e!2216276))))

(declare-fun contains!7151 (List!37761 Rule!10892) Bool)

(assert (=> b!3581942 (= res!1445242 (contains!7151 rules!3307 rule!403))))

(declare-fun res!1445243 () Bool)

(assert (=> start!332130 (=> (not res!1445243) (not e!2216276))))

(get-info :version)

(assert (=> start!332130 (= res!1445243 ((_ is Lexer!5133) thiss!23823))))

(assert (=> start!332130 e!2216276))

(declare-fun e!2216274 () Bool)

(assert (=> start!332130 e!2216274))

(declare-fun e!2216267 () Bool)

(assert (=> start!332130 e!2216267))

(assert (=> start!332130 true))

(declare-datatypes ((Token!10458 0))(
  ( (Token!10459 (value!178521 TokenValue!5776) (rule!8258 Rule!10892) (size!28684 Int) (originalCharacters!6260 List!37760)) )
))
(declare-fun token!511 () Token!10458)

(declare-fun e!2216275 () Bool)

(declare-fun inv!50944 (Token!10458) Bool)

(assert (=> start!332130 (and (inv!50944 token!511) e!2216275)))

(declare-fun e!2216282 () Bool)

(assert (=> start!332130 e!2216282))

(declare-fun e!2216269 () Bool)

(assert (=> start!332130 e!2216269))

(declare-fun tp!1096589 () Bool)

(declare-fun e!2216272 () Bool)

(declare-fun b!3581943 () Bool)

(declare-fun anOtherTypeRule!33 () Rule!10892)

(declare-fun inv!50941 (String!42214) Bool)

(declare-fun inv!50945 (TokenValueInjection!10980) Bool)

(assert (=> b!3581943 (= e!2216269 (and tp!1096589 (inv!50941 (tag!6212 anOtherTypeRule!33)) (inv!50945 (transformation!5546 anOtherTypeRule!33)) e!2216272))))

(declare-fun b!3581944 () Bool)

(declare-fun res!1445247 () Bool)

(assert (=> b!3581944 (=> (not res!1445247) (not e!2216276))))

(assert (=> b!3581944 (= res!1445247 (not (= (isSeparator!5546 anOtherTypeRule!33) (isSeparator!5546 rule!403))))))

(declare-fun e!2216286 () Bool)

(assert (=> b!3581945 (= e!2216286 (and tp!1096593 tp!1096584))))

(declare-fun b!3581946 () Bool)

(declare-fun res!1445250 () Bool)

(assert (=> b!3581946 (=> res!1445250 e!2216270)))

(declare-fun suffix!1395 () List!37760)

(declare-fun isEmpty!22158 (List!37760) Bool)

(assert (=> b!3581946 (= res!1445250 (isEmpty!22158 suffix!1395))))

(declare-fun e!2216277 () Bool)

(assert (=> b!3581947 (= e!2216277 (and tp!1096590 tp!1096588))))

(declare-fun b!3581948 () Bool)

(declare-fun tp_is_empty!17693 () Bool)

(declare-fun tp!1096595 () Bool)

(assert (=> b!3581948 (= e!2216267 (and tp_is_empty!17693 tp!1096595))))

(declare-fun b!3581949 () Bool)

(declare-fun e!2216273 () Bool)

(assert (=> b!3581949 (= e!2216273 e!2216281)))

(declare-fun res!1445240 () Bool)

(assert (=> b!3581949 (=> (not res!1445240) (not e!2216281))))

(declare-datatypes ((tuple2!37534 0))(
  ( (tuple2!37535 (_1!21901 Token!10458) (_2!21901 List!37760)) )
))
(declare-fun lt!1228734 () tuple2!37534)

(assert (=> b!3581949 (= res!1445240 (= (_1!21901 lt!1228734) token!511))))

(declare-datatypes ((Option!7734 0))(
  ( (None!7733) (Some!7733 (v!37379 tuple2!37534)) )
))
(declare-fun lt!1228730 () Option!7734)

(declare-fun get!12119 (Option!7734) tuple2!37534)

(assert (=> b!3581949 (= lt!1228734 (get!12119 lt!1228730))))

(declare-fun b!3581950 () Bool)

(assert (=> b!3581950 (= e!2216276 e!2216273)))

(declare-fun res!1445251 () Bool)

(assert (=> b!3581950 (=> (not res!1445251) (not e!2216273))))

(declare-fun isDefined!5968 (Option!7734) Bool)

(assert (=> b!3581950 (= res!1445251 (isDefined!5968 lt!1228730))))

(declare-fun maxPrefix!2669 (LexerInterface!5135 List!37761 List!37760) Option!7734)

(assert (=> b!3581950 (= lt!1228730 (maxPrefix!2669 thiss!23823 rules!3307 lt!1228733))))

(declare-fun list!13823 (BalanceConc!22502) List!37760)

(declare-fun charsOf!3560 (Token!10458) BalanceConc!22502)

(assert (=> b!3581950 (= lt!1228733 (list!13823 (charsOf!3560 token!511)))))

(declare-fun b!3581951 () Bool)

(declare-fun res!1445252 () Bool)

(assert (=> b!3581951 (=> (not res!1445252) (not e!2216276))))

(declare-fun rulesInvariant!4532 (LexerInterface!5135 List!37761) Bool)

(assert (=> b!3581951 (= res!1445252 (rulesInvariant!4532 thiss!23823 rules!3307))))

(declare-fun b!3581952 () Bool)

(declare-fun e!2216278 () Bool)

(declare-fun tp!1096592 () Bool)

(assert (=> b!3581952 (= e!2216282 (and tp!1096592 (inv!50941 (tag!6212 rule!403)) (inv!50945 (transformation!5546 rule!403)) e!2216278))))

(declare-fun b!3581953 () Bool)

(declare-fun tp!1096596 () Bool)

(declare-fun e!2216279 () Bool)

(assert (=> b!3581953 (= e!2216279 (and tp!1096596 (inv!50941 (tag!6212 (rule!8258 token!511))) (inv!50945 (transformation!5546 (rule!8258 token!511))) e!2216277))))

(declare-fun b!3581954 () Bool)

(declare-fun res!1445245 () Bool)

(assert (=> b!3581954 (=> res!1445245 e!2216270)))

(declare-fun contains!7152 (List!37760 C!20796) Bool)

(declare-fun usedCharacters!760 (Regex!10305) List!37760)

(declare-fun head!7463 (List!37760) C!20796)

(assert (=> b!3581954 (= res!1445245 (contains!7152 (usedCharacters!760 (regex!5546 rule!403)) (head!7463 suffix!1395)))))

(declare-fun e!2216283 () Bool)

(declare-fun b!3581955 () Bool)

(declare-fun tp!1096591 () Bool)

(assert (=> b!3581955 (= e!2216283 (and tp!1096591 (inv!50941 (tag!6212 (h!43057 rules!3307))) (inv!50945 (transformation!5546 (h!43057 rules!3307))) e!2216286))))

(assert (=> b!3581956 (= e!2216272 (and tp!1096583 tp!1096585))))

(declare-fun b!3581957 () Bool)

(declare-fun res!1445246 () Bool)

(assert (=> b!3581957 (=> (not res!1445246) (not e!2216276))))

(assert (=> b!3581957 (= res!1445246 (contains!7151 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3581958 () Bool)

(declare-fun res!1445249 () Bool)

(assert (=> b!3581958 (=> (not res!1445249) (not e!2216276))))

(declare-fun isEmpty!22159 (List!37761) Bool)

(assert (=> b!3581958 (= res!1445249 (not (isEmpty!22159 rules!3307)))))

(declare-fun b!3581959 () Bool)

(assert (=> b!3581959 (= e!2216270 (not (= suffix!1395 Nil!37636)))))

(declare-fun lt!1228731 () List!37760)

(assert (=> b!3581959 (= lt!1228731 (usedCharacters!760 (regex!5546 anOtherTypeRule!33)))))

(declare-fun b!3581960 () Bool)

(declare-fun tp!1096594 () Bool)

(declare-fun inv!21 (TokenValue!5776) Bool)

(assert (=> b!3581960 (= e!2216275 (and (inv!21 (value!178521 token!511)) e!2216279 tp!1096594))))

(assert (=> b!3581961 (= e!2216278 (and tp!1096582 tp!1096586))))

(declare-fun b!3581962 () Bool)

(declare-fun res!1445241 () Bool)

(assert (=> b!3581962 (=> (not res!1445241) (not e!2216281))))

(assert (=> b!3581962 (= res!1445241 (= (rule!8258 token!511) rule!403))))

(declare-fun b!3581963 () Bool)

(declare-fun tp!1096587 () Bool)

(assert (=> b!3581963 (= e!2216274 (and e!2216283 tp!1096587))))

(declare-fun b!3581964 () Bool)

(declare-fun res!1445248 () Bool)

(assert (=> b!3581964 (=> (not res!1445248) (not e!2216281))))

(assert (=> b!3581964 (= res!1445248 (isEmpty!22158 (_2!21901 lt!1228734)))))

(assert (= (and start!332130 res!1445243) b!3581958))

(assert (= (and b!3581958 res!1445249) b!3581951))

(assert (= (and b!3581951 res!1445252) b!3581942))

(assert (= (and b!3581942 res!1445242) b!3581957))

(assert (= (and b!3581957 res!1445246) b!3581944))

(assert (= (and b!3581944 res!1445247) b!3581950))

(assert (= (and b!3581950 res!1445251) b!3581949))

(assert (= (and b!3581949 res!1445240) b!3581964))

(assert (= (and b!3581964 res!1445248) b!3581962))

(assert (= (and b!3581962 res!1445241) b!3581941))

(assert (= (and b!3581941 (not res!1445244)) b!3581946))

(assert (= (and b!3581946 (not res!1445250)) b!3581954))

(assert (= (and b!3581954 (not res!1445245)) b!3581959))

(assert (= b!3581955 b!3581945))

(assert (= b!3581963 b!3581955))

(assert (= (and start!332130 ((_ is Cons!37637) rules!3307)) b!3581963))

(assert (= (and start!332130 ((_ is Cons!37636) suffix!1395)) b!3581948))

(assert (= b!3581953 b!3581947))

(assert (= b!3581960 b!3581953))

(assert (= start!332130 b!3581960))

(assert (= b!3581952 b!3581961))

(assert (= start!332130 b!3581952))

(assert (= b!3581943 b!3581956))

(assert (= start!332130 b!3581943))

(declare-fun m!4075433 () Bool)

(assert (=> b!3581958 m!4075433))

(declare-fun m!4075435 () Bool)

(assert (=> b!3581951 m!4075435))

(declare-fun m!4075437 () Bool)

(assert (=> b!3581964 m!4075437))

(declare-fun m!4075439 () Bool)

(assert (=> start!332130 m!4075439))

(declare-fun m!4075441 () Bool)

(assert (=> b!3581959 m!4075441))

(declare-fun m!4075443 () Bool)

(assert (=> b!3581950 m!4075443))

(declare-fun m!4075445 () Bool)

(assert (=> b!3581950 m!4075445))

(declare-fun m!4075447 () Bool)

(assert (=> b!3581950 m!4075447))

(assert (=> b!3581950 m!4075447))

(declare-fun m!4075449 () Bool)

(assert (=> b!3581950 m!4075449))

(declare-fun m!4075451 () Bool)

(assert (=> b!3581942 m!4075451))

(declare-fun m!4075453 () Bool)

(assert (=> b!3581952 m!4075453))

(declare-fun m!4075455 () Bool)

(assert (=> b!3581952 m!4075455))

(declare-fun m!4075457 () Bool)

(assert (=> b!3581960 m!4075457))

(declare-fun m!4075459 () Bool)

(assert (=> b!3581941 m!4075459))

(declare-fun m!4075461 () Bool)

(assert (=> b!3581941 m!4075461))

(declare-fun m!4075463 () Bool)

(assert (=> b!3581941 m!4075463))

(declare-fun m!4075465 () Bool)

(assert (=> b!3581946 m!4075465))

(declare-fun m!4075467 () Bool)

(assert (=> b!3581955 m!4075467))

(declare-fun m!4075469 () Bool)

(assert (=> b!3581955 m!4075469))

(declare-fun m!4075471 () Bool)

(assert (=> b!3581954 m!4075471))

(declare-fun m!4075473 () Bool)

(assert (=> b!3581954 m!4075473))

(assert (=> b!3581954 m!4075471))

(assert (=> b!3581954 m!4075473))

(declare-fun m!4075475 () Bool)

(assert (=> b!3581954 m!4075475))

(declare-fun m!4075477 () Bool)

(assert (=> b!3581943 m!4075477))

(declare-fun m!4075479 () Bool)

(assert (=> b!3581943 m!4075479))

(declare-fun m!4075481 () Bool)

(assert (=> b!3581953 m!4075481))

(declare-fun m!4075483 () Bool)

(assert (=> b!3581953 m!4075483))

(declare-fun m!4075485 () Bool)

(assert (=> b!3581949 m!4075485))

(declare-fun m!4075487 () Bool)

(assert (=> b!3581957 m!4075487))

(check-sat (not b!3581954) (not b!3581960) (not b!3581950) (not b!3581958) (not b!3581955) (not b!3581963) (not b!3581964) b_and!258491 (not b!3581952) (not b!3581959) b_and!258499 (not b_next!92765) (not b!3581942) (not b!3581953) b_and!258489 b_and!258497 (not b!3581949) (not b!3581948) (not b_next!92773) (not b!3581951) (not b_next!92769) b_and!258495 (not b!3581941) (not b_next!92771) (not start!332130) (not b_next!92767) b_and!258487 (not b!3581946) (not b_next!92761) b_and!258493 b_and!258501 tp_is_empty!17693 (not b!3581943) (not b_next!92763) (not b_next!92775) (not b!3581957))
(check-sat (not b_next!92773) b_and!258491 b_and!258499 b_and!258501 (not b_next!92765) b_and!258489 (not b_next!92763) b_and!258497 (not b_next!92775) (not b_next!92769) b_and!258495 (not b_next!92771) (not b_next!92767) b_and!258487 (not b_next!92761) b_and!258493)
(get-model)

(declare-fun d!1056254 () Bool)

(declare-fun res!1445259 () Bool)

(declare-fun e!2216289 () Bool)

(assert (=> d!1056254 (=> (not res!1445259) (not e!2216289))))

(declare-fun rulesValid!2109 (LexerInterface!5135 List!37761) Bool)

(assert (=> d!1056254 (= res!1445259 (rulesValid!2109 thiss!23823 rules!3307))))

(assert (=> d!1056254 (= (rulesInvariant!4532 thiss!23823 rules!3307) e!2216289)))

(declare-fun b!3581967 () Bool)

(declare-datatypes ((List!37763 0))(
  ( (Nil!37639) (Cons!37639 (h!43059 String!42214) (t!290372 List!37763)) )
))
(declare-fun noDuplicateTag!2105 (LexerInterface!5135 List!37761 List!37763) Bool)

(assert (=> b!3581967 (= e!2216289 (noDuplicateTag!2105 thiss!23823 rules!3307 Nil!37639))))

(assert (= (and d!1056254 res!1445259) b!3581967))

(declare-fun m!4075489 () Bool)

(assert (=> d!1056254 m!4075489))

(declare-fun m!4075491 () Bool)

(assert (=> b!3581967 m!4075491))

(assert (=> b!3581951 d!1056254))

(declare-fun d!1056256 () Bool)

(assert (=> d!1056256 (= (get!12119 lt!1228730) (v!37379 lt!1228730))))

(assert (=> b!3581949 d!1056256))

(declare-fun b!3581978 () Bool)

(declare-fun e!2216296 () Bool)

(declare-fun inv!17 (TokenValue!5776) Bool)

(assert (=> b!3581978 (= e!2216296 (inv!17 (value!178521 token!511)))))

(declare-fun b!3581979 () Bool)

(declare-fun res!1445266 () Bool)

(declare-fun e!2216298 () Bool)

(assert (=> b!3581979 (=> res!1445266 e!2216298)))

(assert (=> b!3581979 (= res!1445266 (not ((_ is IntegerValue!17330) (value!178521 token!511))))))

(assert (=> b!3581979 (= e!2216296 e!2216298)))

(declare-fun b!3581981 () Bool)

(declare-fun inv!15 (TokenValue!5776) Bool)

(assert (=> b!3581981 (= e!2216298 (inv!15 (value!178521 token!511)))))

(declare-fun b!3581982 () Bool)

(declare-fun e!2216297 () Bool)

(assert (=> b!3581982 (= e!2216297 e!2216296)))

(declare-fun c!620592 () Bool)

(assert (=> b!3581982 (= c!620592 ((_ is IntegerValue!17329) (value!178521 token!511)))))

(declare-fun d!1056258 () Bool)

(declare-fun c!620591 () Bool)

(assert (=> d!1056258 (= c!620591 ((_ is IntegerValue!17328) (value!178521 token!511)))))

(assert (=> d!1056258 (= (inv!21 (value!178521 token!511)) e!2216297)))

(declare-fun b!3581980 () Bool)

(declare-fun inv!16 (TokenValue!5776) Bool)

(assert (=> b!3581980 (= e!2216297 (inv!16 (value!178521 token!511)))))

(assert (= (and d!1056258 c!620591) b!3581980))

(assert (= (and d!1056258 (not c!620591)) b!3581982))

(assert (= (and b!3581982 c!620592) b!3581978))

(assert (= (and b!3581982 (not c!620592)) b!3581979))

(assert (= (and b!3581979 (not res!1445266)) b!3581981))

(declare-fun m!4075493 () Bool)

(assert (=> b!3581978 m!4075493))

(declare-fun m!4075495 () Bool)

(assert (=> b!3581981 m!4075495))

(declare-fun m!4075497 () Bool)

(assert (=> b!3581980 m!4075497))

(assert (=> b!3581960 d!1056258))

(declare-fun d!1056260 () Bool)

(declare-fun isEmpty!22160 (Option!7734) Bool)

(assert (=> d!1056260 (= (isDefined!5968 lt!1228730) (not (isEmpty!22160 lt!1228730)))))

(declare-fun bs!569896 () Bool)

(assert (= bs!569896 d!1056260))

(declare-fun m!4075499 () Bool)

(assert (=> bs!569896 m!4075499))

(assert (=> b!3581950 d!1056260))

(declare-fun b!3582088 () Bool)

(declare-fun e!2216358 () Option!7734)

(declare-fun call!259368 () Option!7734)

(assert (=> b!3582088 (= e!2216358 call!259368)))

(declare-fun b!3582089 () Bool)

(declare-fun res!1445327 () Bool)

(declare-fun e!2216356 () Bool)

(assert (=> b!3582089 (=> (not res!1445327) (not e!2216356))))

(declare-fun lt!1228759 () Option!7734)

(assert (=> b!3582089 (= res!1445327 (matchR!4874 (regex!5546 (rule!8258 (_1!21901 (get!12119 lt!1228759)))) (list!13823 (charsOf!3560 (_1!21901 (get!12119 lt!1228759))))))))

(declare-fun b!3582090 () Bool)

(declare-fun res!1445328 () Bool)

(assert (=> b!3582090 (=> (not res!1445328) (not e!2216356))))

(declare-fun ++!9358 (List!37760 List!37760) List!37760)

(assert (=> b!3582090 (= res!1445328 (= (++!9358 (list!13823 (charsOf!3560 (_1!21901 (get!12119 lt!1228759)))) (_2!21901 (get!12119 lt!1228759))) lt!1228733))))

(declare-fun b!3582091 () Bool)

(declare-fun res!1445329 () Bool)

(assert (=> b!3582091 (=> (not res!1445329) (not e!2216356))))

(assert (=> b!3582091 (= res!1445329 (= (list!13823 (charsOf!3560 (_1!21901 (get!12119 lt!1228759)))) (originalCharacters!6260 (_1!21901 (get!12119 lt!1228759)))))))

(declare-fun b!3582093 () Bool)

(declare-fun e!2216357 () Bool)

(assert (=> b!3582093 (= e!2216357 e!2216356)))

(declare-fun res!1445330 () Bool)

(assert (=> b!3582093 (=> (not res!1445330) (not e!2216356))))

(assert (=> b!3582093 (= res!1445330 (isDefined!5968 lt!1228759))))

(declare-fun bm!259363 () Bool)

(declare-fun maxPrefixOneRule!1826 (LexerInterface!5135 Rule!10892 List!37760) Option!7734)

(assert (=> bm!259363 (= call!259368 (maxPrefixOneRule!1826 thiss!23823 (h!43057 rules!3307) lt!1228733))))

(declare-fun b!3582094 () Bool)

(assert (=> b!3582094 (= e!2216356 (contains!7151 rules!3307 (rule!8258 (_1!21901 (get!12119 lt!1228759)))))))

(declare-fun b!3582095 () Bool)

(declare-fun lt!1228757 () Option!7734)

(declare-fun lt!1228758 () Option!7734)

(assert (=> b!3582095 (= e!2216358 (ite (and ((_ is None!7733) lt!1228757) ((_ is None!7733) lt!1228758)) None!7733 (ite ((_ is None!7733) lt!1228758) lt!1228757 (ite ((_ is None!7733) lt!1228757) lt!1228758 (ite (>= (size!28684 (_1!21901 (v!37379 lt!1228757))) (size!28684 (_1!21901 (v!37379 lt!1228758)))) lt!1228757 lt!1228758)))))))

(assert (=> b!3582095 (= lt!1228757 call!259368)))

(assert (=> b!3582095 (= lt!1228758 (maxPrefix!2669 thiss!23823 (t!290350 rules!3307) lt!1228733))))

(declare-fun b!3582096 () Bool)

(declare-fun res!1445331 () Bool)

(assert (=> b!3582096 (=> (not res!1445331) (not e!2216356))))

(declare-fun size!28685 (List!37760) Int)

(assert (=> b!3582096 (= res!1445331 (< (size!28685 (_2!21901 (get!12119 lt!1228759))) (size!28685 lt!1228733)))))

(declare-fun d!1056262 () Bool)

(assert (=> d!1056262 e!2216357))

(declare-fun res!1445326 () Bool)

(assert (=> d!1056262 (=> res!1445326 e!2216357)))

(assert (=> d!1056262 (= res!1445326 (isEmpty!22160 lt!1228759))))

(assert (=> d!1056262 (= lt!1228759 e!2216358)))

(declare-fun c!620616 () Bool)

(assert (=> d!1056262 (= c!620616 (and ((_ is Cons!37637) rules!3307) ((_ is Nil!37637) (t!290350 rules!3307))))))

(declare-fun lt!1228760 () Unit!53637)

(declare-fun lt!1228761 () Unit!53637)

(assert (=> d!1056262 (= lt!1228760 lt!1228761)))

(declare-fun isPrefix!2908 (List!37760 List!37760) Bool)

(assert (=> d!1056262 (isPrefix!2908 lt!1228733 lt!1228733)))

(declare-fun lemmaIsPrefixRefl!1867 (List!37760 List!37760) Unit!53637)

(assert (=> d!1056262 (= lt!1228761 (lemmaIsPrefixRefl!1867 lt!1228733 lt!1228733))))

(declare-fun rulesValidInductive!1928 (LexerInterface!5135 List!37761) Bool)

(assert (=> d!1056262 (rulesValidInductive!1928 thiss!23823 rules!3307)))

(assert (=> d!1056262 (= (maxPrefix!2669 thiss!23823 rules!3307 lt!1228733) lt!1228759)))

(declare-fun b!3582092 () Bool)

(declare-fun res!1445332 () Bool)

(assert (=> b!3582092 (=> (not res!1445332) (not e!2216356))))

(declare-fun apply!9063 (TokenValueInjection!10980 BalanceConc!22502) TokenValue!5776)

(declare-fun seqFromList!4106 (List!37760) BalanceConc!22502)

(assert (=> b!3582092 (= res!1445332 (= (value!178521 (_1!21901 (get!12119 lt!1228759))) (apply!9063 (transformation!5546 (rule!8258 (_1!21901 (get!12119 lt!1228759)))) (seqFromList!4106 (originalCharacters!6260 (_1!21901 (get!12119 lt!1228759)))))))))

(assert (= (and d!1056262 c!620616) b!3582088))

(assert (= (and d!1056262 (not c!620616)) b!3582095))

(assert (= (or b!3582088 b!3582095) bm!259363))

(assert (= (and d!1056262 (not res!1445326)) b!3582093))

(assert (= (and b!3582093 res!1445330) b!3582091))

(assert (= (and b!3582091 res!1445329) b!3582096))

(assert (= (and b!3582096 res!1445331) b!3582090))

(assert (= (and b!3582090 res!1445328) b!3582092))

(assert (= (and b!3582092 res!1445332) b!3582089))

(assert (= (and b!3582089 res!1445327) b!3582094))

(declare-fun m!4075547 () Bool)

(assert (=> b!3582096 m!4075547))

(declare-fun m!4075549 () Bool)

(assert (=> b!3582096 m!4075549))

(declare-fun m!4075551 () Bool)

(assert (=> b!3582096 m!4075551))

(assert (=> b!3582090 m!4075547))

(declare-fun m!4075553 () Bool)

(assert (=> b!3582090 m!4075553))

(assert (=> b!3582090 m!4075553))

(declare-fun m!4075555 () Bool)

(assert (=> b!3582090 m!4075555))

(assert (=> b!3582090 m!4075555))

(declare-fun m!4075557 () Bool)

(assert (=> b!3582090 m!4075557))

(declare-fun m!4075559 () Bool)

(assert (=> b!3582093 m!4075559))

(assert (=> b!3582094 m!4075547))

(declare-fun m!4075561 () Bool)

(assert (=> b!3582094 m!4075561))

(assert (=> b!3582091 m!4075547))

(assert (=> b!3582091 m!4075553))

(assert (=> b!3582091 m!4075553))

(assert (=> b!3582091 m!4075555))

(declare-fun m!4075563 () Bool)

(assert (=> b!3582095 m!4075563))

(assert (=> b!3582092 m!4075547))

(declare-fun m!4075565 () Bool)

(assert (=> b!3582092 m!4075565))

(assert (=> b!3582092 m!4075565))

(declare-fun m!4075567 () Bool)

(assert (=> b!3582092 m!4075567))

(declare-fun m!4075569 () Bool)

(assert (=> bm!259363 m!4075569))

(assert (=> b!3582089 m!4075547))

(assert (=> b!3582089 m!4075553))

(assert (=> b!3582089 m!4075553))

(assert (=> b!3582089 m!4075555))

(assert (=> b!3582089 m!4075555))

(declare-fun m!4075571 () Bool)

(assert (=> b!3582089 m!4075571))

(declare-fun m!4075573 () Bool)

(assert (=> d!1056262 m!4075573))

(declare-fun m!4075575 () Bool)

(assert (=> d!1056262 m!4075575))

(declare-fun m!4075577 () Bool)

(assert (=> d!1056262 m!4075577))

(declare-fun m!4075579 () Bool)

(assert (=> d!1056262 m!4075579))

(assert (=> b!3581950 d!1056262))

(declare-fun d!1056286 () Bool)

(declare-fun list!13824 (Conc!11444) List!37760)

(assert (=> d!1056286 (= (list!13823 (charsOf!3560 token!511)) (list!13824 (c!620586 (charsOf!3560 token!511))))))

(declare-fun bs!569898 () Bool)

(assert (= bs!569898 d!1056286))

(declare-fun m!4075581 () Bool)

(assert (=> bs!569898 m!4075581))

(assert (=> b!3581950 d!1056286))

(declare-fun d!1056288 () Bool)

(declare-fun lt!1228765 () BalanceConc!22502)

(assert (=> d!1056288 (= (list!13823 lt!1228765) (originalCharacters!6260 token!511))))

(declare-fun dynLambda!16185 (Int TokenValue!5776) BalanceConc!22502)

(assert (=> d!1056288 (= lt!1228765 (dynLambda!16185 (toChars!7681 (transformation!5546 (rule!8258 token!511))) (value!178521 token!511)))))

(assert (=> d!1056288 (= (charsOf!3560 token!511) lt!1228765)))

(declare-fun b_lambda!105859 () Bool)

(assert (=> (not b_lambda!105859) (not d!1056288)))

(declare-fun t!290352 () Bool)

(declare-fun tb!204361 () Bool)

(assert (=> (and b!3581956 (= (toChars!7681 (transformation!5546 anOtherTypeRule!33)) (toChars!7681 (transformation!5546 (rule!8258 token!511)))) t!290352) tb!204361))

(declare-fun b!3582125 () Bool)

(declare-fun e!2216377 () Bool)

(declare-fun tp!1096599 () Bool)

(declare-fun inv!50946 (Conc!11444) Bool)

(assert (=> b!3582125 (= e!2216377 (and (inv!50946 (c!620586 (dynLambda!16185 (toChars!7681 (transformation!5546 (rule!8258 token!511))) (value!178521 token!511)))) tp!1096599))))

(declare-fun result!249150 () Bool)

(declare-fun inv!50947 (BalanceConc!22502) Bool)

(assert (=> tb!204361 (= result!249150 (and (inv!50947 (dynLambda!16185 (toChars!7681 (transformation!5546 (rule!8258 token!511))) (value!178521 token!511))) e!2216377))))

(assert (= tb!204361 b!3582125))

(declare-fun m!4075595 () Bool)

(assert (=> b!3582125 m!4075595))

(declare-fun m!4075597 () Bool)

(assert (=> tb!204361 m!4075597))

(assert (=> d!1056288 t!290352))

(declare-fun b_and!258503 () Bool)

(assert (= b_and!258489 (and (=> t!290352 result!249150) b_and!258503)))

(declare-fun t!290354 () Bool)

(declare-fun tb!204363 () Bool)

(assert (=> (and b!3581961 (= (toChars!7681 (transformation!5546 rule!403)) (toChars!7681 (transformation!5546 (rule!8258 token!511)))) t!290354) tb!204363))

(declare-fun result!249154 () Bool)

(assert (= result!249154 result!249150))

(assert (=> d!1056288 t!290354))

(declare-fun b_and!258505 () Bool)

(assert (= b_and!258493 (and (=> t!290354 result!249154) b_and!258505)))

(declare-fun tb!204365 () Bool)

(declare-fun t!290356 () Bool)

(assert (=> (and b!3581945 (= (toChars!7681 (transformation!5546 (h!43057 rules!3307))) (toChars!7681 (transformation!5546 (rule!8258 token!511)))) t!290356) tb!204365))

(declare-fun result!249156 () Bool)

(assert (= result!249156 result!249150))

(assert (=> d!1056288 t!290356))

(declare-fun b_and!258507 () Bool)

(assert (= b_and!258497 (and (=> t!290356 result!249156) b_and!258507)))

(declare-fun t!290358 () Bool)

(declare-fun tb!204367 () Bool)

(assert (=> (and b!3581947 (= (toChars!7681 (transformation!5546 (rule!8258 token!511))) (toChars!7681 (transformation!5546 (rule!8258 token!511)))) t!290358) tb!204367))

(declare-fun result!249158 () Bool)

(assert (= result!249158 result!249150))

(assert (=> d!1056288 t!290358))

(declare-fun b_and!258509 () Bool)

(assert (= b_and!258501 (and (=> t!290358 result!249158) b_and!258509)))

(declare-fun m!4075599 () Bool)

(assert (=> d!1056288 m!4075599))

(declare-fun m!4075601 () Bool)

(assert (=> d!1056288 m!4075601))

(assert (=> b!3581950 d!1056288))

(declare-fun b!3582149 () Bool)

(declare-fun e!2216394 () List!37760)

(assert (=> b!3582149 (= e!2216394 (Cons!37636 (c!620585 (regex!5546 anOtherTypeRule!33)) Nil!37636))))

(declare-fun b!3582150 () Bool)

(declare-fun e!2216392 () List!37760)

(declare-fun e!2216393 () List!37760)

(assert (=> b!3582150 (= e!2216392 e!2216393)))

(declare-fun c!620638 () Bool)

(assert (=> b!3582150 (= c!620638 ((_ is Union!10305) (regex!5546 anOtherTypeRule!33)))))

(declare-fun bm!259376 () Bool)

(declare-fun call!259384 () List!37760)

(declare-fun call!259383 () List!37760)

(assert (=> bm!259376 (= call!259384 call!259383)))

(declare-fun b!3582152 () Bool)

(declare-fun call!259381 () List!37760)

(assert (=> b!3582152 (= e!2216393 call!259381)))

(declare-fun b!3582153 () Bool)

(assert (=> b!3582153 (= e!2216393 call!259381)))

(declare-fun b!3582154 () Bool)

(declare-fun c!620636 () Bool)

(assert (=> b!3582154 (= c!620636 ((_ is Star!10305) (regex!5546 anOtherTypeRule!33)))))

(assert (=> b!3582154 (= e!2216394 e!2216392)))

(declare-fun b!3582155 () Bool)

(declare-fun e!2216391 () List!37760)

(assert (=> b!3582155 (= e!2216391 e!2216394)))

(declare-fun c!620635 () Bool)

(assert (=> b!3582155 (= c!620635 ((_ is ElementMatch!10305) (regex!5546 anOtherTypeRule!33)))))

(declare-fun call!259382 () List!37760)

(declare-fun bm!259377 () Bool)

(assert (=> bm!259377 (= call!259381 (++!9358 (ite c!620638 call!259382 call!259384) (ite c!620638 call!259384 call!259382)))))

(declare-fun bm!259378 () Bool)

(assert (=> bm!259378 (= call!259382 (usedCharacters!760 (ite c!620638 (regOne!21123 (regex!5546 anOtherTypeRule!33)) (regTwo!21122 (regex!5546 anOtherTypeRule!33)))))))

(declare-fun b!3582156 () Bool)

(assert (=> b!3582156 (= e!2216391 Nil!37636)))

(declare-fun bm!259379 () Bool)

(assert (=> bm!259379 (= call!259383 (usedCharacters!760 (ite c!620636 (reg!10634 (regex!5546 anOtherTypeRule!33)) (ite c!620638 (regTwo!21123 (regex!5546 anOtherTypeRule!33)) (regOne!21122 (regex!5546 anOtherTypeRule!33))))))))

(declare-fun d!1056302 () Bool)

(declare-fun c!620637 () Bool)

(assert (=> d!1056302 (= c!620637 (or ((_ is EmptyExpr!10305) (regex!5546 anOtherTypeRule!33)) ((_ is EmptyLang!10305) (regex!5546 anOtherTypeRule!33))))))

(assert (=> d!1056302 (= (usedCharacters!760 (regex!5546 anOtherTypeRule!33)) e!2216391)))

(declare-fun b!3582151 () Bool)

(assert (=> b!3582151 (= e!2216392 call!259383)))

(assert (= (and d!1056302 c!620637) b!3582156))

(assert (= (and d!1056302 (not c!620637)) b!3582155))

(assert (= (and b!3582155 c!620635) b!3582149))

(assert (= (and b!3582155 (not c!620635)) b!3582154))

(assert (= (and b!3582154 c!620636) b!3582151))

(assert (= (and b!3582154 (not c!620636)) b!3582150))

(assert (= (and b!3582150 c!620638) b!3582153))

(assert (= (and b!3582150 (not c!620638)) b!3582152))

(assert (= (or b!3582153 b!3582152) bm!259378))

(assert (= (or b!3582153 b!3582152) bm!259376))

(assert (= (or b!3582153 b!3582152) bm!259377))

(assert (= (or b!3582151 bm!259376) bm!259379))

(declare-fun m!4075619 () Bool)

(assert (=> bm!259377 m!4075619))

(declare-fun m!4075621 () Bool)

(assert (=> bm!259378 m!4075621))

(declare-fun m!4075623 () Bool)

(assert (=> bm!259379 m!4075623))

(assert (=> b!3581959 d!1056302))

(declare-fun d!1056320 () Bool)

(declare-fun lt!1228768 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5340 (List!37761) (InoxSet Rule!10892))

(assert (=> d!1056320 (= lt!1228768 (select (content!5340 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2216399 () Bool)

(assert (=> d!1056320 (= lt!1228768 e!2216399)))

(declare-fun res!1445348 () Bool)

(assert (=> d!1056320 (=> (not res!1445348) (not e!2216399))))

(assert (=> d!1056320 (= res!1445348 ((_ is Cons!37637) rules!3307))))

(assert (=> d!1056320 (= (contains!7151 rules!3307 anOtherTypeRule!33) lt!1228768)))

(declare-fun b!3582161 () Bool)

(declare-fun e!2216400 () Bool)

(assert (=> b!3582161 (= e!2216399 e!2216400)))

(declare-fun res!1445349 () Bool)

(assert (=> b!3582161 (=> res!1445349 e!2216400)))

(assert (=> b!3582161 (= res!1445349 (= (h!43057 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3582162 () Bool)

(assert (=> b!3582162 (= e!2216400 (contains!7151 (t!290350 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1056320 res!1445348) b!3582161))

(assert (= (and b!3582161 (not res!1445349)) b!3582162))

(declare-fun m!4075625 () Bool)

(assert (=> d!1056320 m!4075625))

(declare-fun m!4075627 () Bool)

(assert (=> d!1056320 m!4075627))

(declare-fun m!4075629 () Bool)

(assert (=> b!3582162 m!4075629))

(assert (=> b!3581957 d!1056320))

(declare-fun d!1056322 () Bool)

(assert (=> d!1056322 (= (isEmpty!22159 rules!3307) ((_ is Nil!37637) rules!3307))))

(assert (=> b!3581958 d!1056322))

(declare-fun d!1056324 () Bool)

(assert (=> d!1056324 (= (isEmpty!22158 suffix!1395) ((_ is Nil!37636) suffix!1395))))

(assert (=> b!3581946 d!1056324))

(declare-fun d!1056326 () Bool)

(assert (=> d!1056326 (= (inv!50941 (tag!6212 (h!43057 rules!3307))) (= (mod (str.len (value!178520 (tag!6212 (h!43057 rules!3307)))) 2) 0))))

(assert (=> b!3581955 d!1056326))

(declare-fun d!1056328 () Bool)

(declare-fun res!1445352 () Bool)

(declare-fun e!2216403 () Bool)

(assert (=> d!1056328 (=> (not res!1445352) (not e!2216403))))

(declare-fun semiInverseModEq!2350 (Int Int) Bool)

(assert (=> d!1056328 (= res!1445352 (semiInverseModEq!2350 (toChars!7681 (transformation!5546 (h!43057 rules!3307))) (toValue!7822 (transformation!5546 (h!43057 rules!3307)))))))

(assert (=> d!1056328 (= (inv!50945 (transformation!5546 (h!43057 rules!3307))) e!2216403)))

(declare-fun b!3582165 () Bool)

(declare-fun equivClasses!2249 (Int Int) Bool)

(assert (=> b!3582165 (= e!2216403 (equivClasses!2249 (toChars!7681 (transformation!5546 (h!43057 rules!3307))) (toValue!7822 (transformation!5546 (h!43057 rules!3307)))))))

(assert (= (and d!1056328 res!1445352) b!3582165))

(declare-fun m!4075631 () Bool)

(assert (=> d!1056328 m!4075631))

(declare-fun m!4075633 () Bool)

(assert (=> b!3582165 m!4075633))

(assert (=> b!3581955 d!1056328))

(declare-fun d!1056330 () Bool)

(assert (=> d!1056330 (= (inv!50941 (tag!6212 (rule!8258 token!511))) (= (mod (str.len (value!178520 (tag!6212 (rule!8258 token!511)))) 2) 0))))

(assert (=> b!3581953 d!1056330))

(declare-fun d!1056332 () Bool)

(declare-fun res!1445353 () Bool)

(declare-fun e!2216404 () Bool)

(assert (=> d!1056332 (=> (not res!1445353) (not e!2216404))))

(assert (=> d!1056332 (= res!1445353 (semiInverseModEq!2350 (toChars!7681 (transformation!5546 (rule!8258 token!511))) (toValue!7822 (transformation!5546 (rule!8258 token!511)))))))

(assert (=> d!1056332 (= (inv!50945 (transformation!5546 (rule!8258 token!511))) e!2216404)))

(declare-fun b!3582166 () Bool)

(assert (=> b!3582166 (= e!2216404 (equivClasses!2249 (toChars!7681 (transformation!5546 (rule!8258 token!511))) (toValue!7822 (transformation!5546 (rule!8258 token!511)))))))

(assert (= (and d!1056332 res!1445353) b!3582166))

(declare-fun m!4075635 () Bool)

(assert (=> d!1056332 m!4075635))

(declare-fun m!4075637 () Bool)

(assert (=> b!3582166 m!4075637))

(assert (=> b!3581953 d!1056332))

(declare-fun d!1056334 () Bool)

(assert (=> d!1056334 (= (isEmpty!22158 (_2!21901 lt!1228734)) ((_ is Nil!37636) (_2!21901 lt!1228734)))))

(assert (=> b!3581964 d!1056334))

(declare-fun d!1056336 () Bool)

(assert (=> d!1056336 (= (inv!50941 (tag!6212 anOtherTypeRule!33)) (= (mod (str.len (value!178520 (tag!6212 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3581943 d!1056336))

(declare-fun d!1056338 () Bool)

(declare-fun res!1445354 () Bool)

(declare-fun e!2216405 () Bool)

(assert (=> d!1056338 (=> (not res!1445354) (not e!2216405))))

(assert (=> d!1056338 (= res!1445354 (semiInverseModEq!2350 (toChars!7681 (transformation!5546 anOtherTypeRule!33)) (toValue!7822 (transformation!5546 anOtherTypeRule!33))))))

(assert (=> d!1056338 (= (inv!50945 (transformation!5546 anOtherTypeRule!33)) e!2216405)))

(declare-fun b!3582167 () Bool)

(assert (=> b!3582167 (= e!2216405 (equivClasses!2249 (toChars!7681 (transformation!5546 anOtherTypeRule!33)) (toValue!7822 (transformation!5546 anOtherTypeRule!33))))))

(assert (= (and d!1056338 res!1445354) b!3582167))

(declare-fun m!4075639 () Bool)

(assert (=> d!1056338 m!4075639))

(declare-fun m!4075641 () Bool)

(assert (=> b!3582167 m!4075641))

(assert (=> b!3581943 d!1056338))

(declare-fun d!1056340 () Bool)

(declare-fun res!1445373 () Bool)

(declare-fun e!2216414 () Bool)

(assert (=> d!1056340 (=> (not res!1445373) (not e!2216414))))

(assert (=> d!1056340 (= res!1445373 (not (isEmpty!22158 (originalCharacters!6260 token!511))))))

(assert (=> d!1056340 (= (inv!50944 token!511) e!2216414)))

(declare-fun b!3582190 () Bool)

(declare-fun res!1445374 () Bool)

(assert (=> b!3582190 (=> (not res!1445374) (not e!2216414))))

(assert (=> b!3582190 (= res!1445374 (= (originalCharacters!6260 token!511) (list!13823 (dynLambda!16185 (toChars!7681 (transformation!5546 (rule!8258 token!511))) (value!178521 token!511)))))))

(declare-fun b!3582191 () Bool)

(assert (=> b!3582191 (= e!2216414 (= (size!28684 token!511) (size!28685 (originalCharacters!6260 token!511))))))

(assert (= (and d!1056340 res!1445373) b!3582190))

(assert (= (and b!3582190 res!1445374) b!3582191))

(declare-fun b_lambda!105861 () Bool)

(assert (=> (not b_lambda!105861) (not b!3582190)))

(assert (=> b!3582190 t!290352))

(declare-fun b_and!258511 () Bool)

(assert (= b_and!258503 (and (=> t!290352 result!249150) b_and!258511)))

(assert (=> b!3582190 t!290354))

(declare-fun b_and!258513 () Bool)

(assert (= b_and!258505 (and (=> t!290354 result!249154) b_and!258513)))

(assert (=> b!3582190 t!290356))

(declare-fun b_and!258515 () Bool)

(assert (= b_and!258507 (and (=> t!290356 result!249156) b_and!258515)))

(assert (=> b!3582190 t!290358))

(declare-fun b_and!258517 () Bool)

(assert (= b_and!258509 (and (=> t!290358 result!249158) b_and!258517)))

(declare-fun m!4075643 () Bool)

(assert (=> d!1056340 m!4075643))

(assert (=> b!3582190 m!4075601))

(assert (=> b!3582190 m!4075601))

(declare-fun m!4075645 () Bool)

(assert (=> b!3582190 m!4075645))

(declare-fun m!4075647 () Bool)

(assert (=> b!3582191 m!4075647))

(assert (=> start!332130 d!1056340))

(declare-fun d!1056342 () Bool)

(declare-fun lt!1228786 () Bool)

(declare-fun content!5341 (List!37760) (InoxSet C!20796))

(assert (=> d!1056342 (= lt!1228786 (select (content!5341 (usedCharacters!760 (regex!5546 rule!403))) (head!7463 suffix!1395)))))

(declare-fun e!2216422 () Bool)

(assert (=> d!1056342 (= lt!1228786 e!2216422)))

(declare-fun res!1445387 () Bool)

(assert (=> d!1056342 (=> (not res!1445387) (not e!2216422))))

(assert (=> d!1056342 (= res!1445387 ((_ is Cons!37636) (usedCharacters!760 (regex!5546 rule!403))))))

(assert (=> d!1056342 (= (contains!7152 (usedCharacters!760 (regex!5546 rule!403)) (head!7463 suffix!1395)) lt!1228786)))

(declare-fun b!3582205 () Bool)

(declare-fun e!2216423 () Bool)

(assert (=> b!3582205 (= e!2216422 e!2216423)))

(declare-fun res!1445386 () Bool)

(assert (=> b!3582205 (=> res!1445386 e!2216423)))

(assert (=> b!3582205 (= res!1445386 (= (h!43056 (usedCharacters!760 (regex!5546 rule!403))) (head!7463 suffix!1395)))))

(declare-fun b!3582206 () Bool)

(assert (=> b!3582206 (= e!2216423 (contains!7152 (t!290349 (usedCharacters!760 (regex!5546 rule!403))) (head!7463 suffix!1395)))))

(assert (= (and d!1056342 res!1445387) b!3582205))

(assert (= (and b!3582205 (not res!1445386)) b!3582206))

(assert (=> d!1056342 m!4075471))

(declare-fun m!4075683 () Bool)

(assert (=> d!1056342 m!4075683))

(assert (=> d!1056342 m!4075473))

(declare-fun m!4075685 () Bool)

(assert (=> d!1056342 m!4075685))

(assert (=> b!3582206 m!4075473))

(declare-fun m!4075687 () Bool)

(assert (=> b!3582206 m!4075687))

(assert (=> b!3581954 d!1056342))

(declare-fun b!3582207 () Bool)

(declare-fun e!2216427 () List!37760)

(assert (=> b!3582207 (= e!2216427 (Cons!37636 (c!620585 (regex!5546 rule!403)) Nil!37636))))

(declare-fun b!3582208 () Bool)

(declare-fun e!2216425 () List!37760)

(declare-fun e!2216426 () List!37760)

(assert (=> b!3582208 (= e!2216425 e!2216426)))

(declare-fun c!620645 () Bool)

(assert (=> b!3582208 (= c!620645 ((_ is Union!10305) (regex!5546 rule!403)))))

(declare-fun bm!259383 () Bool)

(declare-fun call!259391 () List!37760)

(declare-fun call!259390 () List!37760)

(assert (=> bm!259383 (= call!259391 call!259390)))

(declare-fun b!3582210 () Bool)

(declare-fun call!259388 () List!37760)

(assert (=> b!3582210 (= e!2216426 call!259388)))

(declare-fun b!3582211 () Bool)

(assert (=> b!3582211 (= e!2216426 call!259388)))

(declare-fun b!3582212 () Bool)

(declare-fun c!620643 () Bool)

(assert (=> b!3582212 (= c!620643 ((_ is Star!10305) (regex!5546 rule!403)))))

(assert (=> b!3582212 (= e!2216427 e!2216425)))

(declare-fun b!3582213 () Bool)

(declare-fun e!2216424 () List!37760)

(assert (=> b!3582213 (= e!2216424 e!2216427)))

(declare-fun c!620642 () Bool)

(assert (=> b!3582213 (= c!620642 ((_ is ElementMatch!10305) (regex!5546 rule!403)))))

(declare-fun call!259389 () List!37760)

(declare-fun bm!259384 () Bool)

(assert (=> bm!259384 (= call!259388 (++!9358 (ite c!620645 call!259389 call!259391) (ite c!620645 call!259391 call!259389)))))

(declare-fun bm!259385 () Bool)

(assert (=> bm!259385 (= call!259389 (usedCharacters!760 (ite c!620645 (regOne!21123 (regex!5546 rule!403)) (regTwo!21122 (regex!5546 rule!403)))))))

(declare-fun b!3582214 () Bool)

(assert (=> b!3582214 (= e!2216424 Nil!37636)))

(declare-fun bm!259386 () Bool)

(assert (=> bm!259386 (= call!259390 (usedCharacters!760 (ite c!620643 (reg!10634 (regex!5546 rule!403)) (ite c!620645 (regTwo!21123 (regex!5546 rule!403)) (regOne!21122 (regex!5546 rule!403))))))))

(declare-fun d!1056346 () Bool)

(declare-fun c!620644 () Bool)

(assert (=> d!1056346 (= c!620644 (or ((_ is EmptyExpr!10305) (regex!5546 rule!403)) ((_ is EmptyLang!10305) (regex!5546 rule!403))))))

(assert (=> d!1056346 (= (usedCharacters!760 (regex!5546 rule!403)) e!2216424)))

(declare-fun b!3582209 () Bool)

(assert (=> b!3582209 (= e!2216425 call!259390)))

(assert (= (and d!1056346 c!620644) b!3582214))

(assert (= (and d!1056346 (not c!620644)) b!3582213))

(assert (= (and b!3582213 c!620642) b!3582207))

(assert (= (and b!3582213 (not c!620642)) b!3582212))

(assert (= (and b!3582212 c!620643) b!3582209))

(assert (= (and b!3582212 (not c!620643)) b!3582208))

(assert (= (and b!3582208 c!620645) b!3582211))

(assert (= (and b!3582208 (not c!620645)) b!3582210))

(assert (= (or b!3582211 b!3582210) bm!259385))

(assert (= (or b!3582211 b!3582210) bm!259383))

(assert (= (or b!3582211 b!3582210) bm!259384))

(assert (= (or b!3582209 bm!259383) bm!259386))

(declare-fun m!4075691 () Bool)

(assert (=> bm!259384 m!4075691))

(declare-fun m!4075693 () Bool)

(assert (=> bm!259385 m!4075693))

(declare-fun m!4075695 () Bool)

(assert (=> bm!259386 m!4075695))

(assert (=> b!3581954 d!1056346))

(declare-fun d!1056350 () Bool)

(assert (=> d!1056350 (= (head!7463 suffix!1395) (h!43056 suffix!1395))))

(assert (=> b!3581954 d!1056350))

(declare-fun b!3582297 () Bool)

(declare-fun res!1445417 () Bool)

(declare-fun e!2216472 () Bool)

(assert (=> b!3582297 (=> res!1445417 e!2216472)))

(declare-fun tail!5549 (List!37760) List!37760)

(assert (=> b!3582297 (= res!1445417 (not (isEmpty!22158 (tail!5549 lt!1228733))))))

(declare-fun b!3582298 () Bool)

(declare-fun res!1445410 () Bool)

(declare-fun e!2216475 () Bool)

(assert (=> b!3582298 (=> res!1445410 e!2216475)))

(assert (=> b!3582298 (= res!1445410 (not ((_ is ElementMatch!10305) (regex!5546 rule!403))))))

(declare-fun e!2216474 () Bool)

(assert (=> b!3582298 (= e!2216474 e!2216475)))

(declare-fun b!3582299 () Bool)

(declare-fun res!1445412 () Bool)

(assert (=> b!3582299 (=> res!1445412 e!2216475)))

(declare-fun e!2216470 () Bool)

(assert (=> b!3582299 (= res!1445412 e!2216470)))

(declare-fun res!1445416 () Bool)

(assert (=> b!3582299 (=> (not res!1445416) (not e!2216470))))

(declare-fun lt!1228792 () Bool)

(assert (=> b!3582299 (= res!1445416 lt!1228792)))

(declare-fun b!3582300 () Bool)

(declare-fun e!2216473 () Bool)

(declare-fun nullable!3552 (Regex!10305) Bool)

(assert (=> b!3582300 (= e!2216473 (nullable!3552 (regex!5546 rule!403)))))

(declare-fun b!3582301 () Bool)

(assert (=> b!3582301 (= e!2216474 (not lt!1228792))))

(declare-fun d!1056352 () Bool)

(declare-fun e!2216471 () Bool)

(assert (=> d!1056352 e!2216471))

(declare-fun c!620653 () Bool)

(assert (=> d!1056352 (= c!620653 ((_ is EmptyExpr!10305) (regex!5546 rule!403)))))

(assert (=> d!1056352 (= lt!1228792 e!2216473)))

(declare-fun c!620654 () Bool)

(assert (=> d!1056352 (= c!620654 (isEmpty!22158 lt!1228733))))

(declare-fun validRegex!4708 (Regex!10305) Bool)

(assert (=> d!1056352 (validRegex!4708 (regex!5546 rule!403))))

(assert (=> d!1056352 (= (matchR!4874 (regex!5546 rule!403) lt!1228733) lt!1228792)))

(declare-fun b!3582302 () Bool)

(declare-fun derivativeStep!3101 (Regex!10305 C!20796) Regex!10305)

(assert (=> b!3582302 (= e!2216473 (matchR!4874 (derivativeStep!3101 (regex!5546 rule!403) (head!7463 lt!1228733)) (tail!5549 lt!1228733)))))

(declare-fun b!3582303 () Bool)

(declare-fun e!2216476 () Bool)

(assert (=> b!3582303 (= e!2216475 e!2216476)))

(declare-fun res!1445411 () Bool)

(assert (=> b!3582303 (=> (not res!1445411) (not e!2216476))))

(assert (=> b!3582303 (= res!1445411 (not lt!1228792))))

(declare-fun b!3582304 () Bool)

(declare-fun call!259394 () Bool)

(assert (=> b!3582304 (= e!2216471 (= lt!1228792 call!259394))))

(declare-fun b!3582305 () Bool)

(assert (=> b!3582305 (= e!2216472 (not (= (head!7463 lt!1228733) (c!620585 (regex!5546 rule!403)))))))

(declare-fun b!3582306 () Bool)

(declare-fun res!1445413 () Bool)

(assert (=> b!3582306 (=> (not res!1445413) (not e!2216470))))

(assert (=> b!3582306 (= res!1445413 (isEmpty!22158 (tail!5549 lt!1228733)))))

(declare-fun b!3582307 () Bool)

(assert (=> b!3582307 (= e!2216470 (= (head!7463 lt!1228733) (c!620585 (regex!5546 rule!403))))))

(declare-fun b!3582308 () Bool)

(declare-fun res!1445415 () Bool)

(assert (=> b!3582308 (=> (not res!1445415) (not e!2216470))))

(assert (=> b!3582308 (= res!1445415 (not call!259394))))

(declare-fun b!3582309 () Bool)

(assert (=> b!3582309 (= e!2216471 e!2216474)))

(declare-fun c!620652 () Bool)

(assert (=> b!3582309 (= c!620652 ((_ is EmptyLang!10305) (regex!5546 rule!403)))))

(declare-fun b!3582310 () Bool)

(assert (=> b!3582310 (= e!2216476 e!2216472)))

(declare-fun res!1445414 () Bool)

(assert (=> b!3582310 (=> res!1445414 e!2216472)))

(assert (=> b!3582310 (= res!1445414 call!259394)))

(declare-fun bm!259389 () Bool)

(assert (=> bm!259389 (= call!259394 (isEmpty!22158 lt!1228733))))

(assert (= (and d!1056352 c!620654) b!3582300))

(assert (= (and d!1056352 (not c!620654)) b!3582302))

(assert (= (and d!1056352 c!620653) b!3582304))

(assert (= (and d!1056352 (not c!620653)) b!3582309))

(assert (= (and b!3582309 c!620652) b!3582301))

(assert (= (and b!3582309 (not c!620652)) b!3582298))

(assert (= (and b!3582298 (not res!1445410)) b!3582299))

(assert (= (and b!3582299 res!1445416) b!3582308))

(assert (= (and b!3582308 res!1445415) b!3582306))

(assert (= (and b!3582306 res!1445413) b!3582307))

(assert (= (and b!3582299 (not res!1445412)) b!3582303))

(assert (= (and b!3582303 res!1445411) b!3582310))

(assert (= (and b!3582310 (not res!1445414)) b!3582297))

(assert (= (and b!3582297 (not res!1445417)) b!3582305))

(assert (= (or b!3582304 b!3582310 b!3582308) bm!259389))

(declare-fun m!4075715 () Bool)

(assert (=> b!3582297 m!4075715))

(assert (=> b!3582297 m!4075715))

(declare-fun m!4075717 () Bool)

(assert (=> b!3582297 m!4075717))

(declare-fun m!4075719 () Bool)

(assert (=> bm!259389 m!4075719))

(declare-fun m!4075721 () Bool)

(assert (=> b!3582305 m!4075721))

(assert (=> b!3582302 m!4075721))

(assert (=> b!3582302 m!4075721))

(declare-fun m!4075723 () Bool)

(assert (=> b!3582302 m!4075723))

(assert (=> b!3582302 m!4075715))

(assert (=> b!3582302 m!4075723))

(assert (=> b!3582302 m!4075715))

(declare-fun m!4075725 () Bool)

(assert (=> b!3582302 m!4075725))

(assert (=> d!1056352 m!4075719))

(declare-fun m!4075727 () Bool)

(assert (=> d!1056352 m!4075727))

(declare-fun m!4075729 () Bool)

(assert (=> b!3582300 m!4075729))

(assert (=> b!3582306 m!4075715))

(assert (=> b!3582306 m!4075715))

(assert (=> b!3582306 m!4075717))

(assert (=> b!3582307 m!4075721))

(assert (=> b!3581941 d!1056352))

(declare-fun d!1056356 () Bool)

(declare-fun res!1445422 () Bool)

(declare-fun e!2216479 () Bool)

(assert (=> d!1056356 (=> (not res!1445422) (not e!2216479))))

(assert (=> d!1056356 (= res!1445422 (validRegex!4708 (regex!5546 rule!403)))))

(assert (=> d!1056356 (= (ruleValid!1811 thiss!23823 rule!403) e!2216479)))

(declare-fun b!3582315 () Bool)

(declare-fun res!1445423 () Bool)

(assert (=> b!3582315 (=> (not res!1445423) (not e!2216479))))

(assert (=> b!3582315 (= res!1445423 (not (nullable!3552 (regex!5546 rule!403))))))

(declare-fun b!3582316 () Bool)

(assert (=> b!3582316 (= e!2216479 (not (= (tag!6212 rule!403) (String!42215 ""))))))

(assert (= (and d!1056356 res!1445422) b!3582315))

(assert (= (and b!3582315 res!1445423) b!3582316))

(assert (=> d!1056356 m!4075727))

(assert (=> b!3582315 m!4075729))

(assert (=> b!3581941 d!1056356))

(declare-fun d!1056358 () Bool)

(assert (=> d!1056358 (ruleValid!1811 thiss!23823 rule!403)))

(declare-fun lt!1228795 () Unit!53637)

(declare-fun choose!20846 (LexerInterface!5135 Rule!10892 List!37761) Unit!53637)

(assert (=> d!1056358 (= lt!1228795 (choose!20846 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1056358 (contains!7151 rules!3307 rule!403)))

(assert (=> d!1056358 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!966 thiss!23823 rule!403 rules!3307) lt!1228795)))

(declare-fun bs!569901 () Bool)

(assert (= bs!569901 d!1056358))

(assert (=> bs!569901 m!4075461))

(declare-fun m!4075731 () Bool)

(assert (=> bs!569901 m!4075731))

(assert (=> bs!569901 m!4075451))

(assert (=> b!3581941 d!1056358))

(declare-fun d!1056360 () Bool)

(assert (=> d!1056360 (= (inv!50941 (tag!6212 rule!403)) (= (mod (str.len (value!178520 (tag!6212 rule!403))) 2) 0))))

(assert (=> b!3581952 d!1056360))

(declare-fun d!1056362 () Bool)

(declare-fun res!1445424 () Bool)

(declare-fun e!2216480 () Bool)

(assert (=> d!1056362 (=> (not res!1445424) (not e!2216480))))

(assert (=> d!1056362 (= res!1445424 (semiInverseModEq!2350 (toChars!7681 (transformation!5546 rule!403)) (toValue!7822 (transformation!5546 rule!403))))))

(assert (=> d!1056362 (= (inv!50945 (transformation!5546 rule!403)) e!2216480)))

(declare-fun b!3582317 () Bool)

(assert (=> b!3582317 (= e!2216480 (equivClasses!2249 (toChars!7681 (transformation!5546 rule!403)) (toValue!7822 (transformation!5546 rule!403))))))

(assert (= (and d!1056362 res!1445424) b!3582317))

(declare-fun m!4075733 () Bool)

(assert (=> d!1056362 m!4075733))

(declare-fun m!4075735 () Bool)

(assert (=> b!3582317 m!4075735))

(assert (=> b!3581952 d!1056362))

(declare-fun d!1056364 () Bool)

(declare-fun lt!1228796 () Bool)

(assert (=> d!1056364 (= lt!1228796 (select (content!5340 rules!3307) rule!403))))

(declare-fun e!2216481 () Bool)

(assert (=> d!1056364 (= lt!1228796 e!2216481)))

(declare-fun res!1445425 () Bool)

(assert (=> d!1056364 (=> (not res!1445425) (not e!2216481))))

(assert (=> d!1056364 (= res!1445425 ((_ is Cons!37637) rules!3307))))

(assert (=> d!1056364 (= (contains!7151 rules!3307 rule!403) lt!1228796)))

(declare-fun b!3582318 () Bool)

(declare-fun e!2216482 () Bool)

(assert (=> b!3582318 (= e!2216481 e!2216482)))

(declare-fun res!1445426 () Bool)

(assert (=> b!3582318 (=> res!1445426 e!2216482)))

(assert (=> b!3582318 (= res!1445426 (= (h!43057 rules!3307) rule!403))))

(declare-fun b!3582319 () Bool)

(assert (=> b!3582319 (= e!2216482 (contains!7151 (t!290350 rules!3307) rule!403))))

(assert (= (and d!1056364 res!1445425) b!3582318))

(assert (= (and b!3582318 (not res!1445426)) b!3582319))

(assert (=> d!1056364 m!4075625))

(declare-fun m!4075737 () Bool)

(assert (=> d!1056364 m!4075737))

(declare-fun m!4075739 () Bool)

(assert (=> b!3582319 m!4075739))

(assert (=> b!3581942 d!1056364))

(declare-fun b!3582324 () Bool)

(declare-fun e!2216485 () Bool)

(declare-fun tp!1096651 () Bool)

(assert (=> b!3582324 (= e!2216485 (and tp_is_empty!17693 tp!1096651))))

(assert (=> b!3581960 (= tp!1096594 e!2216485)))

(assert (= (and b!3581960 ((_ is Cons!37636) (originalCharacters!6260 token!511))) b!3582324))

(declare-fun e!2216488 () Bool)

(assert (=> b!3581955 (= tp!1096591 e!2216488)))

(declare-fun b!3582335 () Bool)

(assert (=> b!3582335 (= e!2216488 tp_is_empty!17693)))

(declare-fun b!3582337 () Bool)

(declare-fun tp!1096664 () Bool)

(assert (=> b!3582337 (= e!2216488 tp!1096664)))

(declare-fun b!3582338 () Bool)

(declare-fun tp!1096662 () Bool)

(declare-fun tp!1096665 () Bool)

(assert (=> b!3582338 (= e!2216488 (and tp!1096662 tp!1096665))))

(declare-fun b!3582336 () Bool)

(declare-fun tp!1096663 () Bool)

(declare-fun tp!1096666 () Bool)

(assert (=> b!3582336 (= e!2216488 (and tp!1096663 tp!1096666))))

(assert (= (and b!3581955 ((_ is ElementMatch!10305) (regex!5546 (h!43057 rules!3307)))) b!3582335))

(assert (= (and b!3581955 ((_ is Concat!16082) (regex!5546 (h!43057 rules!3307)))) b!3582336))

(assert (= (and b!3581955 ((_ is Star!10305) (regex!5546 (h!43057 rules!3307)))) b!3582337))

(assert (= (and b!3581955 ((_ is Union!10305) (regex!5546 (h!43057 rules!3307)))) b!3582338))

(declare-fun e!2216489 () Bool)

(assert (=> b!3581953 (= tp!1096596 e!2216489)))

(declare-fun b!3582339 () Bool)

(assert (=> b!3582339 (= e!2216489 tp_is_empty!17693)))

(declare-fun b!3582341 () Bool)

(declare-fun tp!1096669 () Bool)

(assert (=> b!3582341 (= e!2216489 tp!1096669)))

(declare-fun b!3582342 () Bool)

(declare-fun tp!1096667 () Bool)

(declare-fun tp!1096670 () Bool)

(assert (=> b!3582342 (= e!2216489 (and tp!1096667 tp!1096670))))

(declare-fun b!3582340 () Bool)

(declare-fun tp!1096668 () Bool)

(declare-fun tp!1096671 () Bool)

(assert (=> b!3582340 (= e!2216489 (and tp!1096668 tp!1096671))))

(assert (= (and b!3581953 ((_ is ElementMatch!10305) (regex!5546 (rule!8258 token!511)))) b!3582339))

(assert (= (and b!3581953 ((_ is Concat!16082) (regex!5546 (rule!8258 token!511)))) b!3582340))

(assert (= (and b!3581953 ((_ is Star!10305) (regex!5546 (rule!8258 token!511)))) b!3582341))

(assert (= (and b!3581953 ((_ is Union!10305) (regex!5546 (rule!8258 token!511)))) b!3582342))

(declare-fun b!3582343 () Bool)

(declare-fun e!2216490 () Bool)

(declare-fun tp!1096672 () Bool)

(assert (=> b!3582343 (= e!2216490 (and tp_is_empty!17693 tp!1096672))))

(assert (=> b!3581948 (= tp!1096595 e!2216490)))

(assert (= (and b!3581948 ((_ is Cons!37636) (t!290349 suffix!1395))) b!3582343))

(declare-fun e!2216491 () Bool)

(assert (=> b!3581943 (= tp!1096589 e!2216491)))

(declare-fun b!3582344 () Bool)

(assert (=> b!3582344 (= e!2216491 tp_is_empty!17693)))

(declare-fun b!3582346 () Bool)

(declare-fun tp!1096675 () Bool)

(assert (=> b!3582346 (= e!2216491 tp!1096675)))

(declare-fun b!3582347 () Bool)

(declare-fun tp!1096673 () Bool)

(declare-fun tp!1096676 () Bool)

(assert (=> b!3582347 (= e!2216491 (and tp!1096673 tp!1096676))))

(declare-fun b!3582345 () Bool)

(declare-fun tp!1096674 () Bool)

(declare-fun tp!1096677 () Bool)

(assert (=> b!3582345 (= e!2216491 (and tp!1096674 tp!1096677))))

(assert (= (and b!3581943 ((_ is ElementMatch!10305) (regex!5546 anOtherTypeRule!33))) b!3582344))

(assert (= (and b!3581943 ((_ is Concat!16082) (regex!5546 anOtherTypeRule!33))) b!3582345))

(assert (= (and b!3581943 ((_ is Star!10305) (regex!5546 anOtherTypeRule!33))) b!3582346))

(assert (= (and b!3581943 ((_ is Union!10305) (regex!5546 anOtherTypeRule!33))) b!3582347))

(declare-fun e!2216492 () Bool)

(assert (=> b!3581952 (= tp!1096592 e!2216492)))

(declare-fun b!3582348 () Bool)

(assert (=> b!3582348 (= e!2216492 tp_is_empty!17693)))

(declare-fun b!3582350 () Bool)

(declare-fun tp!1096680 () Bool)

(assert (=> b!3582350 (= e!2216492 tp!1096680)))

(declare-fun b!3582351 () Bool)

(declare-fun tp!1096678 () Bool)

(declare-fun tp!1096681 () Bool)

(assert (=> b!3582351 (= e!2216492 (and tp!1096678 tp!1096681))))

(declare-fun b!3582349 () Bool)

(declare-fun tp!1096679 () Bool)

(declare-fun tp!1096682 () Bool)

(assert (=> b!3582349 (= e!2216492 (and tp!1096679 tp!1096682))))

(assert (= (and b!3581952 ((_ is ElementMatch!10305) (regex!5546 rule!403))) b!3582348))

(assert (= (and b!3581952 ((_ is Concat!16082) (regex!5546 rule!403))) b!3582349))

(assert (= (and b!3581952 ((_ is Star!10305) (regex!5546 rule!403))) b!3582350))

(assert (= (and b!3581952 ((_ is Union!10305) (regex!5546 rule!403))) b!3582351))

(declare-fun b!3582362 () Bool)

(declare-fun b_free!92077 () Bool)

(declare-fun b_next!92781 () Bool)

(assert (=> b!3582362 (= b_free!92077 (not b_next!92781))))

(declare-fun tp!1096691 () Bool)

(declare-fun b_and!258539 () Bool)

(assert (=> b!3582362 (= tp!1096691 b_and!258539)))

(declare-fun b_free!92079 () Bool)

(declare-fun b_next!92783 () Bool)

(assert (=> b!3582362 (= b_free!92079 (not b_next!92783))))

(declare-fun t!290371 () Bool)

(declare-fun tb!204379 () Bool)

(assert (=> (and b!3582362 (= (toChars!7681 (transformation!5546 (h!43057 (t!290350 rules!3307)))) (toChars!7681 (transformation!5546 (rule!8258 token!511)))) t!290371) tb!204379))

(declare-fun result!249184 () Bool)

(assert (= result!249184 result!249150))

(assert (=> d!1056288 t!290371))

(assert (=> b!3582190 t!290371))

(declare-fun b_and!258541 () Bool)

(declare-fun tp!1096693 () Bool)

(assert (=> b!3582362 (= tp!1096693 (and (=> t!290371 result!249184) b_and!258541))))

(declare-fun e!2216501 () Bool)

(assert (=> b!3582362 (= e!2216501 (and tp!1096691 tp!1096693))))

(declare-fun b!3582361 () Bool)

(declare-fun tp!1096692 () Bool)

(declare-fun e!2216503 () Bool)

(assert (=> b!3582361 (= e!2216503 (and tp!1096692 (inv!50941 (tag!6212 (h!43057 (t!290350 rules!3307)))) (inv!50945 (transformation!5546 (h!43057 (t!290350 rules!3307)))) e!2216501))))

(declare-fun b!3582360 () Bool)

(declare-fun e!2216504 () Bool)

(declare-fun tp!1096694 () Bool)

(assert (=> b!3582360 (= e!2216504 (and e!2216503 tp!1096694))))

(assert (=> b!3581963 (= tp!1096587 e!2216504)))

(assert (= b!3582361 b!3582362))

(assert (= b!3582360 b!3582361))

(assert (= (and b!3581963 ((_ is Cons!37637) (t!290350 rules!3307))) b!3582360))

(declare-fun m!4075741 () Bool)

(assert (=> b!3582361 m!4075741))

(declare-fun m!4075743 () Bool)

(assert (=> b!3582361 m!4075743))

(declare-fun b_lambda!105871 () Bool)

(assert (= b_lambda!105861 (or (and b!3581947 b_free!92071) (and b!3581961 b_free!92063 (= (toChars!7681 (transformation!5546 rule!403)) (toChars!7681 (transformation!5546 (rule!8258 token!511))))) (and b!3582362 b_free!92079 (= (toChars!7681 (transformation!5546 (h!43057 (t!290350 rules!3307)))) (toChars!7681 (transformation!5546 (rule!8258 token!511))))) (and b!3581945 b_free!92067 (= (toChars!7681 (transformation!5546 (h!43057 rules!3307))) (toChars!7681 (transformation!5546 (rule!8258 token!511))))) (and b!3581956 b_free!92059 (= (toChars!7681 (transformation!5546 anOtherTypeRule!33)) (toChars!7681 (transformation!5546 (rule!8258 token!511))))) b_lambda!105871)))

(declare-fun b_lambda!105873 () Bool)

(assert (= b_lambda!105859 (or (and b!3581947 b_free!92071) (and b!3581961 b_free!92063 (= (toChars!7681 (transformation!5546 rule!403)) (toChars!7681 (transformation!5546 (rule!8258 token!511))))) (and b!3582362 b_free!92079 (= (toChars!7681 (transformation!5546 (h!43057 (t!290350 rules!3307)))) (toChars!7681 (transformation!5546 (rule!8258 token!511))))) (and b!3581945 b_free!92067 (= (toChars!7681 (transformation!5546 (h!43057 rules!3307))) (toChars!7681 (transformation!5546 (rule!8258 token!511))))) (and b!3581956 b_free!92059 (= (toChars!7681 (transformation!5546 anOtherTypeRule!33)) (toChars!7681 (transformation!5546 (rule!8258 token!511))))) b_lambda!105873)))

(check-sat (not b!3582305) (not b!3581978) b_and!258541 (not bm!259363) (not b!3582350) (not b!3582162) (not b!3582324) (not b!3582206) (not b!3582336) b_and!258539 (not d!1056288) (not b!3582166) (not d!1056352) (not bm!259379) (not d!1056356) (not b!3582089) (not b!3582092) (not b!3582090) (not b_next!92773) (not d!1056286) (not b_next!92769) b_and!258495 (not b_next!92771) (not tb!204361) (not b!3582125) (not d!1056260) (not b!3582342) (not b!3582167) (not b!3582306) (not b!3582093) (not b!3582094) (not d!1056362) (not b!3582300) (not d!1056340) (not b!3582340) (not b!3582347) b_and!258517 (not b_lambda!105871) (not b!3582351) (not b!3582361) b_and!258491 b_and!258513 (not b!3582337) (not b!3582165) (not b!3581981) (not b!3582297) (not b!3582315) (not b!3581967) b_and!258511 (not b!3582360) (not b_next!92783) (not d!1056342) (not b!3582096) (not bm!259384) (not d!1056320) (not b!3582346) (not d!1056328) b_and!258499 (not b_next!92767) b_and!258487 (not d!1056364) (not b!3582190) (not b_next!92761) (not d!1056332) (not b!3582345) b_and!258515 tp_is_empty!17693 (not b!3582343) (not b!3582319) (not b!3582338) (not b!3582341) (not b_next!92765) (not d!1056254) (not bm!259378) (not d!1056338) (not d!1056262) (not bm!259386) (not b!3582302) (not b!3582307) (not b!3582095) (not b!3582191) (not b!3582091) (not b_next!92781) (not b!3582317) (not d!1056358) (not bm!259377) (not b_next!92763) (not b!3581980) (not bm!259389) (not b!3582349) (not bm!259385) (not b_next!92775) (not b_lambda!105873))
(check-sat b_and!258539 (not b_next!92773) b_and!258517 b_and!258491 b_and!258541 b_and!258513 b_and!258511 (not b_next!92783) b_and!258499 (not b_next!92761) b_and!258515 (not b_next!92765) (not b_next!92781) (not b_next!92763) (not b_next!92775) (not b_next!92769) b_and!258495 (not b_next!92771) (not b_next!92767) b_and!258487)
