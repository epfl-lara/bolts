; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!348666 () Bool)

(assert start!348666)

(declare-fun b!3700963 () Bool)

(declare-fun b_free!98649 () Bool)

(declare-fun b_next!99353 () Bool)

(assert (=> b!3700963 (= b_free!98649 (not b_next!99353))))

(declare-fun tp!1125082 () Bool)

(declare-fun b_and!276759 () Bool)

(assert (=> b!3700963 (= tp!1125082 b_and!276759)))

(declare-fun b_free!98651 () Bool)

(declare-fun b_next!99355 () Bool)

(assert (=> b!3700963 (= b_free!98651 (not b_next!99355))))

(declare-fun tp!1125084 () Bool)

(declare-fun b_and!276761 () Bool)

(assert (=> b!3700963 (= tp!1125084 b_and!276761)))

(declare-fun b!3700966 () Bool)

(declare-fun b_free!98653 () Bool)

(declare-fun b_next!99357 () Bool)

(assert (=> b!3700966 (= b_free!98653 (not b_next!99357))))

(declare-fun tp!1125087 () Bool)

(declare-fun b_and!276763 () Bool)

(assert (=> b!3700966 (= tp!1125087 b_and!276763)))

(declare-fun b_free!98655 () Bool)

(declare-fun b_next!99359 () Bool)

(assert (=> b!3700966 (= b_free!98655 (not b_next!99359))))

(declare-fun tp!1125088 () Bool)

(declare-fun b_and!276765 () Bool)

(assert (=> b!3700966 (= tp!1125088 b_and!276765)))

(declare-fun e!2292094 () Bool)

(declare-datatypes ((List!39462 0))(
  ( (Nil!39338) (Cons!39338 (h!44758 (_ BitVec 16)) (t!302007 List!39462)) )
))
(declare-datatypes ((TokenValue!6210 0))(
  ( (FloatLiteralValue!12420 (text!43915 List!39462)) (TokenValueExt!6209 (__x!24637 Int)) (Broken!31050 (value!190858 List!39462)) (Object!6333) (End!6210) (Def!6210) (Underscore!6210) (Match!6210) (Else!6210) (Error!6210) (Case!6210) (If!6210) (Extends!6210) (Abstract!6210) (Class!6210) (Val!6210) (DelimiterValue!12420 (del!6270 List!39462)) (KeywordValue!6216 (value!190859 List!39462)) (CommentValue!12420 (value!190860 List!39462)) (WhitespaceValue!12420 (value!190861 List!39462)) (IndentationValue!6210 (value!190862 List!39462)) (String!44383) (Int32!6210) (Broken!31051 (value!190863 List!39462)) (Boolean!6211) (Unit!57305) (OperatorValue!6213 (op!6270 List!39462)) (IdentifierValue!12420 (value!190864 List!39462)) (IdentifierValue!12421 (value!190865 List!39462)) (WhitespaceValue!12421 (value!190866 List!39462)) (True!12420) (False!12420) (Broken!31052 (value!190867 List!39462)) (Broken!31053 (value!190868 List!39462)) (True!12421) (RightBrace!6210) (RightBracket!6210) (Colon!6210) (Null!6210) (Comma!6210) (LeftBracket!6210) (False!12421) (LeftBrace!6210) (ImaginaryLiteralValue!6210 (text!43916 List!39462)) (StringLiteralValue!18630 (value!190869 List!39462)) (EOFValue!6210 (value!190870 List!39462)) (IdentValue!6210 (value!190871 List!39462)) (DelimiterValue!12421 (value!190872 List!39462)) (DedentValue!6210 (value!190873 List!39462)) (NewLineValue!6210 (value!190874 List!39462)) (IntegerValue!18630 (value!190875 (_ BitVec 32)) (text!43917 List!39462)) (IntegerValue!18631 (value!190876 Int) (text!43918 List!39462)) (Times!6210) (Or!6210) (Equal!6210) (Minus!6210) (Broken!31054 (value!190877 List!39462)) (And!6210) (Div!6210) (LessEqual!6210) (Mod!6210) (Concat!16949) (Not!6210) (Plus!6210) (SpaceValue!6210 (value!190878 List!39462)) (IntegerValue!18632 (value!190879 Int) (text!43919 List!39462)) (StringLiteralValue!18631 (text!43920 List!39462)) (FloatLiteralValue!12421 (text!43921 List!39462)) (BytesLiteralValue!6210 (value!190880 List!39462)) (CommentValue!12421 (value!190881 List!39462)) (StringLiteralValue!18632 (value!190882 List!39462)) (ErrorTokenValue!6210 (msg!6271 List!39462)) )
))
(declare-datatypes ((C!21664 0))(
  ( (C!21665 (val!12880 Int)) )
))
(declare-datatypes ((List!39463 0))(
  ( (Nil!39339) (Cons!39339 (h!44759 C!21664) (t!302008 List!39463)) )
))
(declare-datatypes ((IArray!24159 0))(
  ( (IArray!24160 (innerList!12137 List!39463)) )
))
(declare-datatypes ((Conc!12077 0))(
  ( (Node!12077 (left!30617 Conc!12077) (right!30947 Conc!12077) (csize!24384 Int) (cheight!12288 Int)) (Leaf!18678 (xs!15279 IArray!24159) (csize!24385 Int)) (Empty!12077) )
))
(declare-datatypes ((BalanceConc!23768 0))(
  ( (BalanceConc!23769 (c!639472 Conc!12077)) )
))
(declare-datatypes ((TokenValueInjection!11848 0))(
  ( (TokenValueInjection!11849 (toValue!8316 Int) (toChars!8175 Int)) )
))
(declare-datatypes ((Regex!10739 0))(
  ( (ElementMatch!10739 (c!639473 C!21664)) (Concat!16950 (regOne!21990 Regex!10739) (regTwo!21990 Regex!10739)) (EmptyExpr!10739) (Star!10739 (reg!11068 Regex!10739)) (EmptyLang!10739) (Union!10739 (regOne!21991 Regex!10739) (regTwo!21991 Regex!10739)) )
))
(declare-datatypes ((String!44384 0))(
  ( (String!44385 (value!190883 String)) )
))
(declare-datatypes ((Rule!11760 0))(
  ( (Rule!11761 (regex!5980 Regex!10739) (tag!6812 String!44384) (isSeparator!5980 Bool) (transformation!5980 TokenValueInjection!11848)) )
))
(declare-datatypes ((Token!11314 0))(
  ( (Token!11315 (value!190884 TokenValue!6210) (rule!8848 Rule!11760) (size!29992 Int) (originalCharacters!6688 List!39463)) )
))
(declare-fun token!544 () Token!11314)

(declare-fun e!2292084 () Bool)

(declare-fun tp!1125086 () Bool)

(declare-fun b!3700955 () Bool)

(declare-fun inv!21 (TokenValue!6210) Bool)

(assert (=> b!3700955 (= e!2292094 (and (inv!21 (value!190884 token!544)) e!2292084 tp!1125086))))

(declare-fun b!3700956 () Bool)

(declare-fun e!2292076 () Bool)

(declare-fun e!2292080 () Bool)

(assert (=> b!3700956 (= e!2292076 e!2292080)))

(declare-fun res!1505453 () Bool)

(assert (=> b!3700956 (=> (not res!1505453) (not e!2292080))))

(declare-datatypes ((Option!8523 0))(
  ( (None!8522) (Some!8522 (v!38482 Rule!11760)) )
))
(declare-fun lt!1295124 () Option!8523)

(declare-fun isDefined!6712 (Option!8523) Bool)

(assert (=> b!3700956 (= res!1505453 (isDefined!6712 lt!1295124))))

(declare-datatypes ((List!39464 0))(
  ( (Nil!39340) (Cons!39340 (h!44760 Rule!11760) (t!302009 List!39464)) )
))
(declare-fun rules!3598 () List!39464)

(declare-datatypes ((LexerInterface!5569 0))(
  ( (LexerInterfaceExt!5566 (__x!24638 Int)) (Lexer!5567) )
))
(declare-fun thiss!25322 () LexerInterface!5569)

(declare-fun getRuleFromTag!1520 (LexerInterface!5569 List!39464 String!44384) Option!8523)

(assert (=> b!3700956 (= lt!1295124 (getRuleFromTag!1520 thiss!25322 rules!3598 (tag!6812 (rule!8848 token!544))))))

(declare-fun lt!1295128 () Option!8523)

(declare-fun lt!1295131 () List!39464)

(declare-fun get!13100 (Option!8523) Rule!11760)

(assert (=> b!3700956 (= (get!13100 lt!1295128) (get!13100 (getRuleFromTag!1520 thiss!25322 lt!1295131 (tag!6812 (rule!8848 token!544)))))))

(declare-datatypes ((Unit!57306 0))(
  ( (Unit!57307) )
))
(declare-fun lt!1295132 () Unit!57306)

(declare-fun lemmaGetRuleFromTagInListThenSameListWhenAddingARuleDiffTag!10 (LexerInterface!5569 List!39464 Rule!11760 String!44384) Unit!57306)

(assert (=> b!3700956 (= lt!1295132 (lemmaGetRuleFromTagInListThenSameListWhenAddingARuleDiffTag!10 thiss!25322 (t!302009 rules!3598) (h!44760 rules!3598) (tag!6812 (rule!8848 token!544))))))

(declare-fun b!3700957 () Bool)

(declare-fun e!2292081 () Bool)

(declare-datatypes ((tuple2!39196 0))(
  ( (tuple2!39197 (_1!22732 Token!11314) (_2!22732 List!39463)) )
))
(declare-datatypes ((Option!8524 0))(
  ( (None!8523) (Some!8523 (v!38483 tuple2!39196)) )
))
(declare-fun lt!1295130 () Option!8524)

(declare-fun get!13101 (Option!8524) tuple2!39196)

(assert (=> b!3700957 (= e!2292081 (not (= (_1!22732 (get!13101 lt!1295130)) token!544)))))

(declare-fun b!3700958 () Bool)

(declare-fun res!1505447 () Bool)

(assert (=> b!3700958 (=> res!1505447 e!2292076)))

(declare-fun lt!1295133 () Bool)

(assert (=> b!3700958 (= res!1505447 lt!1295133)))

(declare-fun b!3700959 () Bool)

(declare-fun res!1505448 () Bool)

(declare-fun e!2292086 () Bool)

(assert (=> b!3700959 (=> (not res!1505448) (not e!2292086))))

(declare-fun isEmpty!23442 (List!39464) Bool)

(assert (=> b!3700959 (= res!1505448 (not (isEmpty!23442 (t!302009 rules!3598))))))

(declare-fun b!3700960 () Bool)

(declare-fun tp!1125085 () Bool)

(declare-fun e!2292079 () Bool)

(declare-fun inv!52864 (String!44384) Bool)

(declare-fun inv!52867 (TokenValueInjection!11848) Bool)

(assert (=> b!3700960 (= e!2292084 (and tp!1125085 (inv!52864 (tag!6812 (rule!8848 token!544))) (inv!52867 (transformation!5980 (rule!8848 token!544))) e!2292079))))

(declare-fun e!2292085 () Bool)

(declare-fun e!2292077 () Bool)

(declare-fun b!3700961 () Bool)

(declare-fun tp!1125083 () Bool)

(assert (=> b!3700961 (= e!2292085 (and tp!1125083 (inv!52864 (tag!6812 (h!44760 rules!3598))) (inv!52867 (transformation!5980 (h!44760 rules!3598))) e!2292077))))

(declare-fun b!3700962 () Bool)

(declare-fun e!2292092 () Bool)

(declare-fun tp!1125080 () Bool)

(assert (=> b!3700962 (= e!2292092 (and e!2292085 tp!1125080))))

(assert (=> b!3700963 (= e!2292079 (and tp!1125082 tp!1125084))))

(declare-fun res!1505449 () Bool)

(declare-fun e!2292083 () Bool)

(assert (=> start!348666 (=> (not res!1505449) (not e!2292083))))

(get-info :version)

(assert (=> start!348666 (= res!1505449 ((_ is Lexer!5567) thiss!25322))))

(assert (=> start!348666 e!2292083))

(assert (=> start!348666 true))

(assert (=> start!348666 e!2292092))

(declare-fun inv!52868 (Token!11314) Bool)

(assert (=> start!348666 (and (inv!52868 token!544) e!2292094)))

(declare-fun e!2292082 () Bool)

(assert (=> start!348666 e!2292082))

(declare-fun b!3700964 () Bool)

(declare-fun tp_is_empty!18553 () Bool)

(declare-fun tp!1125081 () Bool)

(assert (=> b!3700964 (= e!2292082 (and tp_is_empty!18553 tp!1125081))))

(declare-fun b!3700965 () Bool)

(declare-fun res!1505451 () Bool)

(declare-fun e!2292089 () Bool)

(assert (=> b!3700965 (=> (not res!1505451) (not e!2292089))))

(declare-fun lt!1295134 () Option!8524)

(assert (=> b!3700965 (= res!1505451 (= (_1!22732 (get!13101 lt!1295134)) token!544))))

(assert (=> b!3700966 (= e!2292077 (and tp!1125087 tp!1125088))))

(declare-fun b!3700967 () Bool)

(declare-fun e!2292093 () Bool)

(assert (=> b!3700967 (= e!2292080 e!2292093)))

(declare-fun res!1505450 () Bool)

(assert (=> b!3700967 (=> (not res!1505450) (not e!2292093))))

(declare-fun lt!1295127 () Rule!11760)

(declare-fun matchR!5272 (Regex!10739 List!39463) Bool)

(declare-fun list!14691 (BalanceConc!23768) List!39463)

(declare-fun charsOf!3969 (Token!11314) BalanceConc!23768)

(assert (=> b!3700967 (= res!1505450 (matchR!5272 (regex!5980 lt!1295127) (list!14691 (charsOf!3969 token!544))))))

(assert (=> b!3700967 (= lt!1295127 (get!13100 lt!1295124))))

(declare-fun b!3700968 () Bool)

(assert (=> b!3700968 (= e!2292086 (not e!2292076))))

(declare-fun res!1505445 () Bool)

(assert (=> b!3700968 (=> res!1505445 e!2292076)))

(declare-fun rulesInvariant!4966 (LexerInterface!5569 List!39464) Bool)

(assert (=> b!3700968 (= res!1505445 (not (rulesInvariant!4966 thiss!25322 lt!1295131)))))

(assert (=> b!3700968 (= lt!1295131 (Cons!39340 (h!44760 rules!3598) (t!302009 rules!3598)))))

(declare-fun e!2292091 () Bool)

(assert (=> b!3700968 e!2292091))

(declare-fun res!1505442 () Bool)

(assert (=> b!3700968 (=> (not res!1505442) (not e!2292091))))

(assert (=> b!3700968 (= res!1505442 (not lt!1295133))))

(assert (=> b!3700968 (= lt!1295133 (not (isDefined!6712 lt!1295128)))))

(assert (=> b!3700968 (= lt!1295128 (getRuleFromTag!1520 thiss!25322 (t!302009 rules!3598) (tag!6812 (rule!8848 token!544))))))

(declare-fun input!3172 () List!39463)

(declare-fun lt!1295125 () Unit!57306)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1506 (LexerInterface!5569 List!39464 List!39463 Token!11314) Unit!57306)

(assert (=> b!3700968 (= lt!1295125 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1506 thiss!25322 (t!302009 rules!3598) input!3172 token!544))))

(assert (=> b!3700968 (rulesInvariant!4966 thiss!25322 (t!302009 rules!3598))))

(declare-fun lt!1295129 () Unit!57306)

(declare-fun lemmaInvariantOnRulesThenOnTail!676 (LexerInterface!5569 Rule!11760 List!39464) Unit!57306)

(assert (=> b!3700968 (= lt!1295129 (lemmaInvariantOnRulesThenOnTail!676 thiss!25322 (h!44760 rules!3598) (t!302009 rules!3598)))))

(declare-fun b!3700969 () Bool)

(declare-fun e!2292088 () Bool)

(assert (=> b!3700969 (= e!2292091 e!2292088)))

(declare-fun res!1505446 () Bool)

(assert (=> b!3700969 (=> (not res!1505446) (not e!2292088))))

(declare-fun lt!1295126 () Rule!11760)

(assert (=> b!3700969 (= res!1505446 (matchR!5272 (regex!5980 lt!1295126) (list!14691 (charsOf!3969 token!544))))))

(assert (=> b!3700969 (= lt!1295126 (get!13100 lt!1295128))))

(declare-fun b!3700970 () Bool)

(declare-fun res!1505454 () Bool)

(assert (=> b!3700970 (=> (not res!1505454) (not e!2292083))))

(assert (=> b!3700970 (= res!1505454 (rulesInvariant!4966 thiss!25322 rules!3598))))

(declare-fun b!3700971 () Bool)

(declare-fun res!1505444 () Bool)

(assert (=> b!3700971 (=> (not res!1505444) (not e!2292083))))

(assert (=> b!3700971 (= res!1505444 (not (isEmpty!23442 rules!3598)))))

(declare-fun b!3700972 () Bool)

(assert (=> b!3700972 (= e!2292088 (= (rule!8848 token!544) lt!1295126))))

(declare-fun b!3700973 () Bool)

(declare-fun res!1505455 () Bool)

(assert (=> b!3700973 (=> (not res!1505455) (not e!2292089))))

(assert (=> b!3700973 (= res!1505455 ((_ is Cons!39340) rules!3598))))

(declare-fun b!3700974 () Bool)

(assert (=> b!3700974 (= e!2292089 e!2292086)))

(declare-fun res!1505443 () Bool)

(assert (=> b!3700974 (=> (not res!1505443) (not e!2292086))))

(assert (=> b!3700974 (= res!1505443 e!2292081)))

(declare-fun res!1505452 () Bool)

(assert (=> b!3700974 (=> res!1505452 e!2292081)))

(declare-fun isDefined!6713 (Option!8524) Bool)

(assert (=> b!3700974 (= res!1505452 (not (isDefined!6713 lt!1295130)))))

(declare-fun maxPrefixOneRule!2201 (LexerInterface!5569 Rule!11760 List!39463) Option!8524)

(assert (=> b!3700974 (= lt!1295130 (maxPrefixOneRule!2201 thiss!25322 (h!44760 rules!3598) input!3172))))

(declare-fun b!3700975 () Bool)

(assert (=> b!3700975 (= e!2292093 (= (rule!8848 token!544) lt!1295127))))

(declare-fun b!3700976 () Bool)

(assert (=> b!3700976 (= e!2292083 e!2292089)))

(declare-fun res!1505441 () Bool)

(assert (=> b!3700976 (=> (not res!1505441) (not e!2292089))))

(assert (=> b!3700976 (= res!1505441 (isDefined!6713 lt!1295134))))

(declare-fun maxPrefix!3091 (LexerInterface!5569 List!39464 List!39463) Option!8524)

(assert (=> b!3700976 (= lt!1295134 (maxPrefix!3091 thiss!25322 rules!3598 input!3172))))

(assert (= (and start!348666 res!1505449) b!3700970))

(assert (= (and b!3700970 res!1505454) b!3700971))

(assert (= (and b!3700971 res!1505444) b!3700976))

(assert (= (and b!3700976 res!1505441) b!3700965))

(assert (= (and b!3700965 res!1505451) b!3700973))

(assert (= (and b!3700973 res!1505455) b!3700974))

(assert (= (and b!3700974 (not res!1505452)) b!3700957))

(assert (= (and b!3700974 res!1505443) b!3700959))

(assert (= (and b!3700959 res!1505448) b!3700968))

(assert (= (and b!3700968 res!1505442) b!3700969))

(assert (= (and b!3700969 res!1505446) b!3700972))

(assert (= (and b!3700968 (not res!1505445)) b!3700958))

(assert (= (and b!3700958 (not res!1505447)) b!3700956))

(assert (= (and b!3700956 res!1505453) b!3700967))

(assert (= (and b!3700967 res!1505450) b!3700975))

(assert (= b!3700961 b!3700966))

(assert (= b!3700962 b!3700961))

(assert (= (and start!348666 ((_ is Cons!39340) rules!3598)) b!3700962))

(assert (= b!3700960 b!3700963))

(assert (= b!3700955 b!3700960))

(assert (= start!348666 b!3700955))

(assert (= (and start!348666 ((_ is Cons!39339) input!3172)) b!3700964))

(declare-fun m!4212073 () Bool)

(assert (=> b!3700976 m!4212073))

(declare-fun m!4212075 () Bool)

(assert (=> b!3700976 m!4212075))

(declare-fun m!4212077 () Bool)

(assert (=> b!3700974 m!4212077))

(declare-fun m!4212079 () Bool)

(assert (=> b!3700974 m!4212079))

(declare-fun m!4212081 () Bool)

(assert (=> b!3700967 m!4212081))

(assert (=> b!3700967 m!4212081))

(declare-fun m!4212083 () Bool)

(assert (=> b!3700967 m!4212083))

(assert (=> b!3700967 m!4212083))

(declare-fun m!4212085 () Bool)

(assert (=> b!3700967 m!4212085))

(declare-fun m!4212087 () Bool)

(assert (=> b!3700967 m!4212087))

(declare-fun m!4212089 () Bool)

(assert (=> b!3700959 m!4212089))

(declare-fun m!4212091 () Bool)

(assert (=> start!348666 m!4212091))

(declare-fun m!4212093 () Bool)

(assert (=> b!3700970 m!4212093))

(declare-fun m!4212095 () Bool)

(assert (=> b!3700968 m!4212095))

(declare-fun m!4212097 () Bool)

(assert (=> b!3700968 m!4212097))

(declare-fun m!4212099 () Bool)

(assert (=> b!3700968 m!4212099))

(declare-fun m!4212101 () Bool)

(assert (=> b!3700968 m!4212101))

(declare-fun m!4212103 () Bool)

(assert (=> b!3700968 m!4212103))

(declare-fun m!4212105 () Bool)

(assert (=> b!3700968 m!4212105))

(assert (=> b!3700969 m!4212081))

(assert (=> b!3700969 m!4212081))

(assert (=> b!3700969 m!4212083))

(assert (=> b!3700969 m!4212083))

(declare-fun m!4212107 () Bool)

(assert (=> b!3700969 m!4212107))

(declare-fun m!4212109 () Bool)

(assert (=> b!3700969 m!4212109))

(declare-fun m!4212111 () Bool)

(assert (=> b!3700957 m!4212111))

(declare-fun m!4212113 () Bool)

(assert (=> b!3700956 m!4212113))

(declare-fun m!4212115 () Bool)

(assert (=> b!3700956 m!4212115))

(declare-fun m!4212117 () Bool)

(assert (=> b!3700956 m!4212117))

(declare-fun m!4212119 () Bool)

(assert (=> b!3700956 m!4212119))

(assert (=> b!3700956 m!4212117))

(assert (=> b!3700956 m!4212109))

(declare-fun m!4212121 () Bool)

(assert (=> b!3700956 m!4212121))

(declare-fun m!4212123 () Bool)

(assert (=> b!3700960 m!4212123))

(declare-fun m!4212125 () Bool)

(assert (=> b!3700960 m!4212125))

(declare-fun m!4212127 () Bool)

(assert (=> b!3700971 m!4212127))

(declare-fun m!4212129 () Bool)

(assert (=> b!3700955 m!4212129))

(declare-fun m!4212131 () Bool)

(assert (=> b!3700961 m!4212131))

(declare-fun m!4212133 () Bool)

(assert (=> b!3700961 m!4212133))

(declare-fun m!4212135 () Bool)

(assert (=> b!3700965 m!4212135))

(check-sat (not b!3700970) (not b!3700976) b_and!276763 (not b!3700955) b_and!276759 (not b_next!99353) (not b_next!99357) (not b!3700960) (not b!3700974) (not b!3700961) (not b_next!99359) (not b!3700964) (not b!3700959) (not b_next!99355) (not b!3700962) (not b!3700968) (not b!3700957) (not b!3700967) (not b!3700971) b_and!276761 (not b!3700969) (not b!3700965) (not b!3700956) (not start!348666) b_and!276765 tp_is_empty!18553)
(check-sat (not b_next!99355) b_and!276761 b_and!276763 b_and!276759 (not b_next!99353) (not b_next!99357) (not b_next!99359) b_and!276765)
(get-model)

(declare-fun d!1085163 () Bool)

(assert (=> d!1085163 (= (get!13101 lt!1295134) (v!38483 lt!1295134))))

(assert (=> b!3700965 d!1085163))

(declare-fun d!1085165 () Bool)

(declare-fun isEmpty!23446 (Option!8524) Bool)

(assert (=> d!1085165 (= (isDefined!6713 lt!1295134) (not (isEmpty!23446 lt!1295134)))))

(declare-fun bs!574434 () Bool)

(assert (= bs!574434 d!1085165))

(declare-fun m!4212199 () Bool)

(assert (=> bs!574434 m!4212199))

(assert (=> b!3700976 d!1085165))

(declare-fun b!3701123 () Bool)

(declare-fun e!2292169 () Bool)

(declare-fun lt!1295193 () Option!8524)

(declare-fun contains!7841 (List!39464 Rule!11760) Bool)

(assert (=> b!3701123 (= e!2292169 (contains!7841 rules!3598 (rule!8848 (_1!22732 (get!13101 lt!1295193)))))))

(declare-fun b!3701124 () Bool)

(declare-fun res!1505558 () Bool)

(assert (=> b!3701124 (=> (not res!1505558) (not e!2292169))))

(declare-fun size!29995 (List!39463) Int)

(assert (=> b!3701124 (= res!1505558 (< (size!29995 (_2!22732 (get!13101 lt!1295193))) (size!29995 input!3172)))))

(declare-fun d!1085167 () Bool)

(declare-fun e!2292170 () Bool)

(assert (=> d!1085167 e!2292170))

(declare-fun res!1505559 () Bool)

(assert (=> d!1085167 (=> res!1505559 e!2292170)))

(assert (=> d!1085167 (= res!1505559 (isEmpty!23446 lt!1295193))))

(declare-fun e!2292168 () Option!8524)

(assert (=> d!1085167 (= lt!1295193 e!2292168)))

(declare-fun c!639501 () Bool)

(assert (=> d!1085167 (= c!639501 (and ((_ is Cons!39340) rules!3598) ((_ is Nil!39340) (t!302009 rules!3598))))))

(declare-fun lt!1295192 () Unit!57306)

(declare-fun lt!1295191 () Unit!57306)

(assert (=> d!1085167 (= lt!1295192 lt!1295191)))

(declare-fun isPrefix!3287 (List!39463 List!39463) Bool)

(assert (=> d!1085167 (isPrefix!3287 input!3172 input!3172)))

(declare-fun lemmaIsPrefixRefl!2072 (List!39463 List!39463) Unit!57306)

(assert (=> d!1085167 (= lt!1295191 (lemmaIsPrefixRefl!2072 input!3172 input!3172))))

(declare-fun rulesValidInductive!2153 (LexerInterface!5569 List!39464) Bool)

(assert (=> d!1085167 (rulesValidInductive!2153 thiss!25322 rules!3598)))

(assert (=> d!1085167 (= (maxPrefix!3091 thiss!25322 rules!3598 input!3172) lt!1295193)))

(declare-fun b!3701125 () Bool)

(declare-fun lt!1295194 () Option!8524)

(declare-fun lt!1295195 () Option!8524)

(assert (=> b!3701125 (= e!2292168 (ite (and ((_ is None!8523) lt!1295194) ((_ is None!8523) lt!1295195)) None!8523 (ite ((_ is None!8523) lt!1295195) lt!1295194 (ite ((_ is None!8523) lt!1295194) lt!1295195 (ite (>= (size!29992 (_1!22732 (v!38483 lt!1295194))) (size!29992 (_1!22732 (v!38483 lt!1295195)))) lt!1295194 lt!1295195)))))))

(declare-fun call!267376 () Option!8524)

(assert (=> b!3701125 (= lt!1295194 call!267376)))

(assert (=> b!3701125 (= lt!1295195 (maxPrefix!3091 thiss!25322 (t!302009 rules!3598) input!3172))))

(declare-fun b!3701126 () Bool)

(declare-fun res!1505554 () Bool)

(assert (=> b!3701126 (=> (not res!1505554) (not e!2292169))))

(assert (=> b!3701126 (= res!1505554 (= (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295193)))) (originalCharacters!6688 (_1!22732 (get!13101 lt!1295193)))))))

(declare-fun b!3701127 () Bool)

(declare-fun res!1505555 () Bool)

(assert (=> b!3701127 (=> (not res!1505555) (not e!2292169))))

(declare-fun apply!9406 (TokenValueInjection!11848 BalanceConc!23768) TokenValue!6210)

(declare-fun seqFromList!4485 (List!39463) BalanceConc!23768)

(assert (=> b!3701127 (= res!1505555 (= (value!190884 (_1!22732 (get!13101 lt!1295193))) (apply!9406 (transformation!5980 (rule!8848 (_1!22732 (get!13101 lt!1295193)))) (seqFromList!4485 (originalCharacters!6688 (_1!22732 (get!13101 lt!1295193)))))))))

(declare-fun b!3701128 () Bool)

(assert (=> b!3701128 (= e!2292170 e!2292169)))

(declare-fun res!1505557 () Bool)

(assert (=> b!3701128 (=> (not res!1505557) (not e!2292169))))

(assert (=> b!3701128 (= res!1505557 (isDefined!6713 lt!1295193))))

(declare-fun b!3701129 () Bool)

(declare-fun res!1505560 () Bool)

(assert (=> b!3701129 (=> (not res!1505560) (not e!2292169))))

(declare-fun ++!9766 (List!39463 List!39463) List!39463)

(assert (=> b!3701129 (= res!1505560 (= (++!9766 (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295193)))) (_2!22732 (get!13101 lt!1295193))) input!3172))))

(declare-fun b!3701130 () Bool)

(assert (=> b!3701130 (= e!2292168 call!267376)))

(declare-fun b!3701131 () Bool)

(declare-fun res!1505556 () Bool)

(assert (=> b!3701131 (=> (not res!1505556) (not e!2292169))))

(assert (=> b!3701131 (= res!1505556 (matchR!5272 (regex!5980 (rule!8848 (_1!22732 (get!13101 lt!1295193)))) (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295193))))))))

(declare-fun bm!267371 () Bool)

(assert (=> bm!267371 (= call!267376 (maxPrefixOneRule!2201 thiss!25322 (h!44760 rules!3598) input!3172))))

(assert (= (and d!1085167 c!639501) b!3701130))

(assert (= (and d!1085167 (not c!639501)) b!3701125))

(assert (= (or b!3701130 b!3701125) bm!267371))

(assert (= (and d!1085167 (not res!1505559)) b!3701128))

(assert (= (and b!3701128 res!1505557) b!3701126))

(assert (= (and b!3701126 res!1505554) b!3701124))

(assert (= (and b!3701124 res!1505558) b!3701129))

(assert (= (and b!3701129 res!1505560) b!3701127))

(assert (= (and b!3701127 res!1505555) b!3701131))

(assert (= (and b!3701131 res!1505556) b!3701123))

(declare-fun m!4212269 () Bool)

(assert (=> b!3701127 m!4212269))

(declare-fun m!4212271 () Bool)

(assert (=> b!3701127 m!4212271))

(assert (=> b!3701127 m!4212271))

(declare-fun m!4212273 () Bool)

(assert (=> b!3701127 m!4212273))

(declare-fun m!4212275 () Bool)

(assert (=> b!3701125 m!4212275))

(declare-fun m!4212277 () Bool)

(assert (=> b!3701128 m!4212277))

(assert (=> b!3701126 m!4212269))

(declare-fun m!4212279 () Bool)

(assert (=> b!3701126 m!4212279))

(assert (=> b!3701126 m!4212279))

(declare-fun m!4212281 () Bool)

(assert (=> b!3701126 m!4212281))

(assert (=> bm!267371 m!4212079))

(assert (=> b!3701124 m!4212269))

(declare-fun m!4212283 () Bool)

(assert (=> b!3701124 m!4212283))

(declare-fun m!4212285 () Bool)

(assert (=> b!3701124 m!4212285))

(declare-fun m!4212287 () Bool)

(assert (=> d!1085167 m!4212287))

(declare-fun m!4212289 () Bool)

(assert (=> d!1085167 m!4212289))

(declare-fun m!4212291 () Bool)

(assert (=> d!1085167 m!4212291))

(declare-fun m!4212293 () Bool)

(assert (=> d!1085167 m!4212293))

(assert (=> b!3701123 m!4212269))

(declare-fun m!4212295 () Bool)

(assert (=> b!3701123 m!4212295))

(assert (=> b!3701131 m!4212269))

(assert (=> b!3701131 m!4212279))

(assert (=> b!3701131 m!4212279))

(assert (=> b!3701131 m!4212281))

(assert (=> b!3701131 m!4212281))

(declare-fun m!4212297 () Bool)

(assert (=> b!3701131 m!4212297))

(assert (=> b!3701129 m!4212269))

(assert (=> b!3701129 m!4212279))

(assert (=> b!3701129 m!4212279))

(assert (=> b!3701129 m!4212281))

(assert (=> b!3701129 m!4212281))

(declare-fun m!4212299 () Bool)

(assert (=> b!3701129 m!4212299))

(assert (=> b!3700976 d!1085167))

(declare-fun d!1085189 () Bool)

(assert (=> d!1085189 (= (isDefined!6713 lt!1295130) (not (isEmpty!23446 lt!1295130)))))

(declare-fun bs!574438 () Bool)

(assert (= bs!574438 d!1085189))

(declare-fun m!4212301 () Bool)

(assert (=> bs!574438 m!4212301))

(assert (=> b!3700974 d!1085189))

(declare-fun b!3701238 () Bool)

(declare-fun e!2292230 () Bool)

(declare-datatypes ((tuple2!39200 0))(
  ( (tuple2!39201 (_1!22734 List!39463) (_2!22734 List!39463)) )
))
(declare-fun findLongestMatchInner!1126 (Regex!10739 List!39463 Int List!39463 List!39463 Int) tuple2!39200)

(assert (=> b!3701238 (= e!2292230 (matchR!5272 (regex!5980 (h!44760 rules!3598)) (_1!22734 (findLongestMatchInner!1126 (regex!5980 (h!44760 rules!3598)) Nil!39339 (size!29995 Nil!39339) input!3172 input!3172 (size!29995 input!3172)))))))

(declare-fun d!1085191 () Bool)

(declare-fun e!2292231 () Bool)

(assert (=> d!1085191 e!2292231))

(declare-fun res!1505612 () Bool)

(assert (=> d!1085191 (=> res!1505612 e!2292231)))

(declare-fun lt!1295223 () Option!8524)

(assert (=> d!1085191 (= res!1505612 (isEmpty!23446 lt!1295223))))

(declare-fun e!2292228 () Option!8524)

(assert (=> d!1085191 (= lt!1295223 e!2292228)))

(declare-fun c!639513 () Bool)

(declare-fun lt!1295225 () tuple2!39200)

(declare-fun isEmpty!23447 (List!39463) Bool)

(assert (=> d!1085191 (= c!639513 (isEmpty!23447 (_1!22734 lt!1295225)))))

(declare-fun findLongestMatch!1041 (Regex!10739 List!39463) tuple2!39200)

(assert (=> d!1085191 (= lt!1295225 (findLongestMatch!1041 (regex!5980 (h!44760 rules!3598)) input!3172))))

(declare-fun ruleValid!2164 (LexerInterface!5569 Rule!11760) Bool)

(assert (=> d!1085191 (ruleValid!2164 thiss!25322 (h!44760 rules!3598))))

(assert (=> d!1085191 (= (maxPrefixOneRule!2201 thiss!25322 (h!44760 rules!3598) input!3172) lt!1295223)))

(declare-fun b!3701239 () Bool)

(declare-fun res!1505614 () Bool)

(declare-fun e!2292229 () Bool)

(assert (=> b!3701239 (=> (not res!1505614) (not e!2292229))))

(assert (=> b!3701239 (= res!1505614 (< (size!29995 (_2!22732 (get!13101 lt!1295223))) (size!29995 input!3172)))))

(declare-fun b!3701240 () Bool)

(assert (=> b!3701240 (= e!2292229 (= (size!29992 (_1!22732 (get!13101 lt!1295223))) (size!29995 (originalCharacters!6688 (_1!22732 (get!13101 lt!1295223))))))))

(declare-fun b!3701241 () Bool)

(declare-fun size!29996 (BalanceConc!23768) Int)

(assert (=> b!3701241 (= e!2292228 (Some!8523 (tuple2!39197 (Token!11315 (apply!9406 (transformation!5980 (h!44760 rules!3598)) (seqFromList!4485 (_1!22734 lt!1295225))) (h!44760 rules!3598) (size!29996 (seqFromList!4485 (_1!22734 lt!1295225))) (_1!22734 lt!1295225)) (_2!22734 lt!1295225))))))

(declare-fun lt!1295221 () Unit!57306)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1099 (Regex!10739 List!39463) Unit!57306)

(assert (=> b!3701241 (= lt!1295221 (longestMatchIsAcceptedByMatchOrIsEmpty!1099 (regex!5980 (h!44760 rules!3598)) input!3172))))

(declare-fun res!1505610 () Bool)

(assert (=> b!3701241 (= res!1505610 (isEmpty!23447 (_1!22734 (findLongestMatchInner!1126 (regex!5980 (h!44760 rules!3598)) Nil!39339 (size!29995 Nil!39339) input!3172 input!3172 (size!29995 input!3172)))))))

(assert (=> b!3701241 (=> res!1505610 e!2292230)))

(assert (=> b!3701241 e!2292230))

(declare-fun lt!1295224 () Unit!57306)

(assert (=> b!3701241 (= lt!1295224 lt!1295221)))

(declare-fun lt!1295222 () Unit!57306)

(declare-fun lemmaSemiInverse!1632 (TokenValueInjection!11848 BalanceConc!23768) Unit!57306)

(assert (=> b!3701241 (= lt!1295222 (lemmaSemiInverse!1632 (transformation!5980 (h!44760 rules!3598)) (seqFromList!4485 (_1!22734 lt!1295225))))))

(declare-fun b!3701242 () Bool)

(declare-fun res!1505616 () Bool)

(assert (=> b!3701242 (=> (not res!1505616) (not e!2292229))))

(assert (=> b!3701242 (= res!1505616 (= (++!9766 (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295223)))) (_2!22732 (get!13101 lt!1295223))) input!3172))))

(declare-fun b!3701243 () Bool)

(declare-fun res!1505613 () Bool)

(assert (=> b!3701243 (=> (not res!1505613) (not e!2292229))))

(assert (=> b!3701243 (= res!1505613 (= (value!190884 (_1!22732 (get!13101 lt!1295223))) (apply!9406 (transformation!5980 (rule!8848 (_1!22732 (get!13101 lt!1295223)))) (seqFromList!4485 (originalCharacters!6688 (_1!22732 (get!13101 lt!1295223)))))))))

(declare-fun b!3701244 () Bool)

(declare-fun res!1505611 () Bool)

(assert (=> b!3701244 (=> (not res!1505611) (not e!2292229))))

(assert (=> b!3701244 (= res!1505611 (= (rule!8848 (_1!22732 (get!13101 lt!1295223))) (h!44760 rules!3598)))))

(declare-fun b!3701245 () Bool)

(assert (=> b!3701245 (= e!2292231 e!2292229)))

(declare-fun res!1505615 () Bool)

(assert (=> b!3701245 (=> (not res!1505615) (not e!2292229))))

(assert (=> b!3701245 (= res!1505615 (matchR!5272 (regex!5980 (h!44760 rules!3598)) (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295223))))))))

(declare-fun b!3701246 () Bool)

(assert (=> b!3701246 (= e!2292228 None!8523)))

(assert (= (and d!1085191 c!639513) b!3701246))

(assert (= (and d!1085191 (not c!639513)) b!3701241))

(assert (= (and b!3701241 (not res!1505610)) b!3701238))

(assert (= (and d!1085191 (not res!1505612)) b!3701245))

(assert (= (and b!3701245 res!1505615) b!3701242))

(assert (= (and b!3701242 res!1505616) b!3701239))

(assert (= (and b!3701239 res!1505614) b!3701244))

(assert (= (and b!3701244 res!1505611) b!3701243))

(assert (= (and b!3701243 res!1505613) b!3701240))

(declare-fun m!4212375 () Bool)

(assert (=> b!3701241 m!4212375))

(declare-fun m!4212377 () Bool)

(assert (=> b!3701241 m!4212377))

(declare-fun m!4212379 () Bool)

(assert (=> b!3701241 m!4212379))

(declare-fun m!4212381 () Bool)

(assert (=> b!3701241 m!4212381))

(assert (=> b!3701241 m!4212285))

(declare-fun m!4212383 () Bool)

(assert (=> b!3701241 m!4212383))

(declare-fun m!4212385 () Bool)

(assert (=> b!3701241 m!4212385))

(assert (=> b!3701241 m!4212375))

(assert (=> b!3701241 m!4212375))

(declare-fun m!4212387 () Bool)

(assert (=> b!3701241 m!4212387))

(assert (=> b!3701241 m!4212381))

(assert (=> b!3701241 m!4212285))

(assert (=> b!3701241 m!4212375))

(declare-fun m!4212389 () Bool)

(assert (=> b!3701241 m!4212389))

(declare-fun m!4212391 () Bool)

(assert (=> b!3701239 m!4212391))

(declare-fun m!4212393 () Bool)

(assert (=> b!3701239 m!4212393))

(assert (=> b!3701239 m!4212285))

(assert (=> b!3701244 m!4212391))

(assert (=> b!3701243 m!4212391))

(declare-fun m!4212395 () Bool)

(assert (=> b!3701243 m!4212395))

(assert (=> b!3701243 m!4212395))

(declare-fun m!4212397 () Bool)

(assert (=> b!3701243 m!4212397))

(declare-fun m!4212399 () Bool)

(assert (=> d!1085191 m!4212399))

(declare-fun m!4212401 () Bool)

(assert (=> d!1085191 m!4212401))

(declare-fun m!4212403 () Bool)

(assert (=> d!1085191 m!4212403))

(declare-fun m!4212405 () Bool)

(assert (=> d!1085191 m!4212405))

(assert (=> b!3701245 m!4212391))

(declare-fun m!4212407 () Bool)

(assert (=> b!3701245 m!4212407))

(assert (=> b!3701245 m!4212407))

(declare-fun m!4212409 () Bool)

(assert (=> b!3701245 m!4212409))

(assert (=> b!3701245 m!4212409))

(declare-fun m!4212411 () Bool)

(assert (=> b!3701245 m!4212411))

(assert (=> b!3701240 m!4212391))

(declare-fun m!4212413 () Bool)

(assert (=> b!3701240 m!4212413))

(assert (=> b!3701238 m!4212381))

(assert (=> b!3701238 m!4212285))

(assert (=> b!3701238 m!4212381))

(assert (=> b!3701238 m!4212285))

(assert (=> b!3701238 m!4212383))

(declare-fun m!4212415 () Bool)

(assert (=> b!3701238 m!4212415))

(assert (=> b!3701242 m!4212391))

(assert (=> b!3701242 m!4212407))

(assert (=> b!3701242 m!4212407))

(assert (=> b!3701242 m!4212409))

(assert (=> b!3701242 m!4212409))

(declare-fun m!4212417 () Bool)

(assert (=> b!3701242 m!4212417))

(assert (=> b!3700974 d!1085191))

(declare-fun d!1085213 () Bool)

(assert (=> d!1085213 (= (inv!52864 (tag!6812 (h!44760 rules!3598))) (= (mod (str.len (value!190883 (tag!6812 (h!44760 rules!3598)))) 2) 0))))

(assert (=> b!3700961 d!1085213))

(declare-fun d!1085215 () Bool)

(declare-fun res!1505619 () Bool)

(declare-fun e!2292234 () Bool)

(assert (=> d!1085215 (=> (not res!1505619) (not e!2292234))))

(declare-fun semiInverseModEq!2554 (Int Int) Bool)

(assert (=> d!1085215 (= res!1505619 (semiInverseModEq!2554 (toChars!8175 (transformation!5980 (h!44760 rules!3598))) (toValue!8316 (transformation!5980 (h!44760 rules!3598)))))))

(assert (=> d!1085215 (= (inv!52867 (transformation!5980 (h!44760 rules!3598))) e!2292234)))

(declare-fun b!3701249 () Bool)

(declare-fun equivClasses!2453 (Int Int) Bool)

(assert (=> b!3701249 (= e!2292234 (equivClasses!2453 (toChars!8175 (transformation!5980 (h!44760 rules!3598))) (toValue!8316 (transformation!5980 (h!44760 rules!3598)))))))

(assert (= (and d!1085215 res!1505619) b!3701249))

(declare-fun m!4212419 () Bool)

(assert (=> d!1085215 m!4212419))

(declare-fun m!4212421 () Bool)

(assert (=> b!3701249 m!4212421))

(assert (=> b!3700961 d!1085215))

(declare-fun d!1085217 () Bool)

(assert (=> d!1085217 (= (isEmpty!23442 rules!3598) ((_ is Nil!39340) rules!3598))))

(assert (=> b!3700971 d!1085217))

(declare-fun d!1085219 () Bool)

(assert (=> d!1085219 (= (inv!52864 (tag!6812 (rule!8848 token!544))) (= (mod (str.len (value!190883 (tag!6812 (rule!8848 token!544)))) 2) 0))))

(assert (=> b!3700960 d!1085219))

(declare-fun d!1085221 () Bool)

(declare-fun res!1505620 () Bool)

(declare-fun e!2292235 () Bool)

(assert (=> d!1085221 (=> (not res!1505620) (not e!2292235))))

(assert (=> d!1085221 (= res!1505620 (semiInverseModEq!2554 (toChars!8175 (transformation!5980 (rule!8848 token!544))) (toValue!8316 (transformation!5980 (rule!8848 token!544)))))))

(assert (=> d!1085221 (= (inv!52867 (transformation!5980 (rule!8848 token!544))) e!2292235)))

(declare-fun b!3701250 () Bool)

(assert (=> b!3701250 (= e!2292235 (equivClasses!2453 (toChars!8175 (transformation!5980 (rule!8848 token!544))) (toValue!8316 (transformation!5980 (rule!8848 token!544)))))))

(assert (= (and d!1085221 res!1505620) b!3701250))

(declare-fun m!4212423 () Bool)

(assert (=> d!1085221 m!4212423))

(declare-fun m!4212425 () Bool)

(assert (=> b!3701250 m!4212425))

(assert (=> b!3700960 d!1085221))

(declare-fun d!1085223 () Bool)

(assert (=> d!1085223 (= (isEmpty!23442 (t!302009 rules!3598)) ((_ is Nil!39340) (t!302009 rules!3598)))))

(assert (=> b!3700959 d!1085223))

(declare-fun d!1085225 () Bool)

(declare-fun res!1505623 () Bool)

(declare-fun e!2292238 () Bool)

(assert (=> d!1085225 (=> (not res!1505623) (not e!2292238))))

(declare-fun rulesValid!2311 (LexerInterface!5569 List!39464) Bool)

(assert (=> d!1085225 (= res!1505623 (rulesValid!2311 thiss!25322 rules!3598))))

(assert (=> d!1085225 (= (rulesInvariant!4966 thiss!25322 rules!3598) e!2292238)))

(declare-fun b!3701253 () Bool)

(declare-datatypes ((List!39466 0))(
  ( (Nil!39342) (Cons!39342 (h!44762 String!44384) (t!302023 List!39466)) )
))
(declare-fun noDuplicateTag!2307 (LexerInterface!5569 List!39464 List!39466) Bool)

(assert (=> b!3701253 (= e!2292238 (noDuplicateTag!2307 thiss!25322 rules!3598 Nil!39342))))

(assert (= (and d!1085225 res!1505623) b!3701253))

(declare-fun m!4212427 () Bool)

(assert (=> d!1085225 m!4212427))

(declare-fun m!4212429 () Bool)

(assert (=> b!3701253 m!4212429))

(assert (=> b!3700970 d!1085225))

(declare-fun b!3701282 () Bool)

(declare-fun res!1505646 () Bool)

(declare-fun e!2292258 () Bool)

(assert (=> b!3701282 (=> (not res!1505646) (not e!2292258))))

(declare-fun tail!5732 (List!39463) List!39463)

(assert (=> b!3701282 (= res!1505646 (isEmpty!23447 (tail!5732 (list!14691 (charsOf!3969 token!544)))))))

(declare-fun b!3701283 () Bool)

(declare-fun e!2292255 () Bool)

(declare-fun lt!1295228 () Bool)

(assert (=> b!3701283 (= e!2292255 (not lt!1295228))))

(declare-fun d!1085227 () Bool)

(declare-fun e!2292256 () Bool)

(assert (=> d!1085227 e!2292256))

(declare-fun c!639522 () Bool)

(assert (=> d!1085227 (= c!639522 ((_ is EmptyExpr!10739) (regex!5980 lt!1295126)))))

(declare-fun e!2292257 () Bool)

(assert (=> d!1085227 (= lt!1295228 e!2292257)))

(declare-fun c!639520 () Bool)

(assert (=> d!1085227 (= c!639520 (isEmpty!23447 (list!14691 (charsOf!3969 token!544))))))

(declare-fun validRegex!4904 (Regex!10739) Bool)

(assert (=> d!1085227 (validRegex!4904 (regex!5980 lt!1295126))))

(assert (=> d!1085227 (= (matchR!5272 (regex!5980 lt!1295126) (list!14691 (charsOf!3969 token!544))) lt!1295228)))

(declare-fun b!3701284 () Bool)

(declare-fun head!7995 (List!39463) C!21664)

(assert (=> b!3701284 (= e!2292258 (= (head!7995 (list!14691 (charsOf!3969 token!544))) (c!639473 (regex!5980 lt!1295126))))))

(declare-fun b!3701285 () Bool)

(declare-fun derivativeStep!3282 (Regex!10739 C!21664) Regex!10739)

(assert (=> b!3701285 (= e!2292257 (matchR!5272 (derivativeStep!3282 (regex!5980 lt!1295126) (head!7995 (list!14691 (charsOf!3969 token!544)))) (tail!5732 (list!14691 (charsOf!3969 token!544)))))))

(declare-fun b!3701286 () Bool)

(declare-fun res!1505643 () Bool)

(declare-fun e!2292259 () Bool)

(assert (=> b!3701286 (=> res!1505643 e!2292259)))

(assert (=> b!3701286 (= res!1505643 (not (isEmpty!23447 (tail!5732 (list!14691 (charsOf!3969 token!544))))))))

(declare-fun b!3701287 () Bool)

(assert (=> b!3701287 (= e!2292259 (not (= (head!7995 (list!14691 (charsOf!3969 token!544))) (c!639473 (regex!5980 lt!1295126)))))))

(declare-fun b!3701288 () Bool)

(declare-fun e!2292254 () Bool)

(assert (=> b!3701288 (= e!2292254 e!2292259)))

(declare-fun res!1505647 () Bool)

(assert (=> b!3701288 (=> res!1505647 e!2292259)))

(declare-fun call!267379 () Bool)

(assert (=> b!3701288 (= res!1505647 call!267379)))

(declare-fun b!3701289 () Bool)

(declare-fun e!2292253 () Bool)

(assert (=> b!3701289 (= e!2292253 e!2292254)))

(declare-fun res!1505644 () Bool)

(assert (=> b!3701289 (=> (not res!1505644) (not e!2292254))))

(assert (=> b!3701289 (= res!1505644 (not lt!1295228))))

(declare-fun b!3701290 () Bool)

(declare-fun res!1505642 () Bool)

(assert (=> b!3701290 (=> res!1505642 e!2292253)))

(assert (=> b!3701290 (= res!1505642 (not ((_ is ElementMatch!10739) (regex!5980 lt!1295126))))))

(assert (=> b!3701290 (= e!2292255 e!2292253)))

(declare-fun b!3701291 () Bool)

(assert (=> b!3701291 (= e!2292256 (= lt!1295228 call!267379))))

(declare-fun b!3701292 () Bool)

(assert (=> b!3701292 (= e!2292256 e!2292255)))

(declare-fun c!639521 () Bool)

(assert (=> b!3701292 (= c!639521 ((_ is EmptyLang!10739) (regex!5980 lt!1295126)))))

(declare-fun bm!267374 () Bool)

(assert (=> bm!267374 (= call!267379 (isEmpty!23447 (list!14691 (charsOf!3969 token!544))))))

(declare-fun b!3701293 () Bool)

(declare-fun res!1505641 () Bool)

(assert (=> b!3701293 (=> res!1505641 e!2292253)))

(assert (=> b!3701293 (= res!1505641 e!2292258)))

(declare-fun res!1505640 () Bool)

(assert (=> b!3701293 (=> (not res!1505640) (not e!2292258))))

(assert (=> b!3701293 (= res!1505640 lt!1295228)))

(declare-fun b!3701294 () Bool)

(declare-fun res!1505645 () Bool)

(assert (=> b!3701294 (=> (not res!1505645) (not e!2292258))))

(assert (=> b!3701294 (= res!1505645 (not call!267379))))

(declare-fun b!3701295 () Bool)

(declare-fun nullable!3740 (Regex!10739) Bool)

(assert (=> b!3701295 (= e!2292257 (nullable!3740 (regex!5980 lt!1295126)))))

(assert (= (and d!1085227 c!639520) b!3701295))

(assert (= (and d!1085227 (not c!639520)) b!3701285))

(assert (= (and d!1085227 c!639522) b!3701291))

(assert (= (and d!1085227 (not c!639522)) b!3701292))

(assert (= (and b!3701292 c!639521) b!3701283))

(assert (= (and b!3701292 (not c!639521)) b!3701290))

(assert (= (and b!3701290 (not res!1505642)) b!3701293))

(assert (= (and b!3701293 res!1505640) b!3701294))

(assert (= (and b!3701294 res!1505645) b!3701282))

(assert (= (and b!3701282 res!1505646) b!3701284))

(assert (= (and b!3701293 (not res!1505641)) b!3701289))

(assert (= (and b!3701289 res!1505644) b!3701288))

(assert (= (and b!3701288 (not res!1505647)) b!3701286))

(assert (= (and b!3701286 (not res!1505643)) b!3701287))

(assert (= (or b!3701291 b!3701288 b!3701294) bm!267374))

(assert (=> b!3701285 m!4212083))

(declare-fun m!4212431 () Bool)

(assert (=> b!3701285 m!4212431))

(assert (=> b!3701285 m!4212431))

(declare-fun m!4212433 () Bool)

(assert (=> b!3701285 m!4212433))

(assert (=> b!3701285 m!4212083))

(declare-fun m!4212435 () Bool)

(assert (=> b!3701285 m!4212435))

(assert (=> b!3701285 m!4212433))

(assert (=> b!3701285 m!4212435))

(declare-fun m!4212437 () Bool)

(assert (=> b!3701285 m!4212437))

(assert (=> b!3701287 m!4212083))

(assert (=> b!3701287 m!4212431))

(declare-fun m!4212439 () Bool)

(assert (=> b!3701295 m!4212439))

(assert (=> d!1085227 m!4212083))

(declare-fun m!4212441 () Bool)

(assert (=> d!1085227 m!4212441))

(declare-fun m!4212443 () Bool)

(assert (=> d!1085227 m!4212443))

(assert (=> b!3701282 m!4212083))

(assert (=> b!3701282 m!4212435))

(assert (=> b!3701282 m!4212435))

(declare-fun m!4212445 () Bool)

(assert (=> b!3701282 m!4212445))

(assert (=> b!3701286 m!4212083))

(assert (=> b!3701286 m!4212435))

(assert (=> b!3701286 m!4212435))

(assert (=> b!3701286 m!4212445))

(assert (=> bm!267374 m!4212083))

(assert (=> bm!267374 m!4212441))

(assert (=> b!3701284 m!4212083))

(assert (=> b!3701284 m!4212431))

(assert (=> b!3700969 d!1085227))

(declare-fun d!1085229 () Bool)

(declare-fun list!14693 (Conc!12077) List!39463)

(assert (=> d!1085229 (= (list!14691 (charsOf!3969 token!544)) (list!14693 (c!639472 (charsOf!3969 token!544))))))

(declare-fun bs!574439 () Bool)

(assert (= bs!574439 d!1085229))

(declare-fun m!4212447 () Bool)

(assert (=> bs!574439 m!4212447))

(assert (=> b!3700969 d!1085229))

(declare-fun d!1085231 () Bool)

(declare-fun lt!1295231 () BalanceConc!23768)

(assert (=> d!1085231 (= (list!14691 lt!1295231) (originalCharacters!6688 token!544))))

(declare-fun dynLambda!17184 (Int TokenValue!6210) BalanceConc!23768)

(assert (=> d!1085231 (= lt!1295231 (dynLambda!17184 (toChars!8175 (transformation!5980 (rule!8848 token!544))) (value!190884 token!544)))))

(assert (=> d!1085231 (= (charsOf!3969 token!544) lt!1295231)))

(declare-fun b_lambda!109771 () Bool)

(assert (=> (not b_lambda!109771) (not d!1085231)))

(declare-fun t!302018 () Bool)

(declare-fun tb!214267 () Bool)

(assert (=> (and b!3700963 (= (toChars!8175 (transformation!5980 (rule!8848 token!544))) (toChars!8175 (transformation!5980 (rule!8848 token!544)))) t!302018) tb!214267))

(declare-fun b!3701300 () Bool)

(declare-fun e!2292262 () Bool)

(declare-fun tp!1125130 () Bool)

(declare-fun inv!52871 (Conc!12077) Bool)

(assert (=> b!3701300 (= e!2292262 (and (inv!52871 (c!639472 (dynLambda!17184 (toChars!8175 (transformation!5980 (rule!8848 token!544))) (value!190884 token!544)))) tp!1125130))))

(declare-fun result!261068 () Bool)

(declare-fun inv!52872 (BalanceConc!23768) Bool)

(assert (=> tb!214267 (= result!261068 (and (inv!52872 (dynLambda!17184 (toChars!8175 (transformation!5980 (rule!8848 token!544))) (value!190884 token!544))) e!2292262))))

(assert (= tb!214267 b!3701300))

(declare-fun m!4212449 () Bool)

(assert (=> b!3701300 m!4212449))

(declare-fun m!4212451 () Bool)

(assert (=> tb!214267 m!4212451))

(assert (=> d!1085231 t!302018))

(declare-fun b_and!276779 () Bool)

(assert (= b_and!276761 (and (=> t!302018 result!261068) b_and!276779)))

(declare-fun tb!214269 () Bool)

(declare-fun t!302020 () Bool)

(assert (=> (and b!3700966 (= (toChars!8175 (transformation!5980 (h!44760 rules!3598))) (toChars!8175 (transformation!5980 (rule!8848 token!544)))) t!302020) tb!214269))

(declare-fun result!261072 () Bool)

(assert (= result!261072 result!261068))

(assert (=> d!1085231 t!302020))

(declare-fun b_and!276781 () Bool)

(assert (= b_and!276765 (and (=> t!302020 result!261072) b_and!276781)))

(declare-fun m!4212453 () Bool)

(assert (=> d!1085231 m!4212453))

(declare-fun m!4212455 () Bool)

(assert (=> d!1085231 m!4212455))

(assert (=> b!3700969 d!1085231))

(declare-fun d!1085233 () Bool)

(assert (=> d!1085233 (= (get!13100 lt!1295128) (v!38482 lt!1295128))))

(assert (=> b!3700969 d!1085233))

(declare-fun d!1085235 () Bool)

(declare-fun res!1505652 () Bool)

(declare-fun e!2292265 () Bool)

(assert (=> d!1085235 (=> (not res!1505652) (not e!2292265))))

(assert (=> d!1085235 (= res!1505652 (not (isEmpty!23447 (originalCharacters!6688 token!544))))))

(assert (=> d!1085235 (= (inv!52868 token!544) e!2292265)))

(declare-fun b!3701305 () Bool)

(declare-fun res!1505653 () Bool)

(assert (=> b!3701305 (=> (not res!1505653) (not e!2292265))))

(assert (=> b!3701305 (= res!1505653 (= (originalCharacters!6688 token!544) (list!14691 (dynLambda!17184 (toChars!8175 (transformation!5980 (rule!8848 token!544))) (value!190884 token!544)))))))

(declare-fun b!3701306 () Bool)

(assert (=> b!3701306 (= e!2292265 (= (size!29992 token!544) (size!29995 (originalCharacters!6688 token!544))))))

(assert (= (and d!1085235 res!1505652) b!3701305))

(assert (= (and b!3701305 res!1505653) b!3701306))

(declare-fun b_lambda!109773 () Bool)

(assert (=> (not b_lambda!109773) (not b!3701305)))

(assert (=> b!3701305 t!302018))

(declare-fun b_and!276783 () Bool)

(assert (= b_and!276779 (and (=> t!302018 result!261068) b_and!276783)))

(assert (=> b!3701305 t!302020))

(declare-fun b_and!276785 () Bool)

(assert (= b_and!276781 (and (=> t!302020 result!261072) b_and!276785)))

(declare-fun m!4212457 () Bool)

(assert (=> d!1085235 m!4212457))

(assert (=> b!3701305 m!4212455))

(assert (=> b!3701305 m!4212455))

(declare-fun m!4212459 () Bool)

(assert (=> b!3701305 m!4212459))

(declare-fun m!4212461 () Bool)

(assert (=> b!3701306 m!4212461))

(assert (=> start!348666 d!1085235))

(declare-fun d!1085237 () Bool)

(assert (=> d!1085237 (= (get!13101 lt!1295130) (v!38483 lt!1295130))))

(assert (=> b!3700957 d!1085237))

(declare-fun b!3701319 () Bool)

(declare-fun e!2292275 () Bool)

(declare-fun lt!1295239 () Option!8523)

(assert (=> b!3701319 (= e!2292275 (= (tag!6812 (get!13100 lt!1295239)) (tag!6812 (rule!8848 token!544))))))

(declare-fun b!3701320 () Bool)

(declare-fun e!2292274 () Option!8523)

(assert (=> b!3701320 (= e!2292274 None!8522)))

(declare-fun b!3701321 () Bool)

(declare-fun e!2292277 () Option!8523)

(assert (=> b!3701321 (= e!2292277 (Some!8522 (h!44760 (t!302009 rules!3598))))))

(declare-fun b!3701322 () Bool)

(assert (=> b!3701322 (= e!2292277 e!2292274)))

(declare-fun c!639527 () Bool)

(assert (=> b!3701322 (= c!639527 (and ((_ is Cons!39340) (t!302009 rules!3598)) (not (= (tag!6812 (h!44760 (t!302009 rules!3598))) (tag!6812 (rule!8848 token!544))))))))

(declare-fun d!1085239 () Bool)

(declare-fun e!2292276 () Bool)

(assert (=> d!1085239 e!2292276))

(declare-fun res!1505658 () Bool)

(assert (=> d!1085239 (=> res!1505658 e!2292276)))

(declare-fun isEmpty!23448 (Option!8523) Bool)

(assert (=> d!1085239 (= res!1505658 (isEmpty!23448 lt!1295239))))

(assert (=> d!1085239 (= lt!1295239 e!2292277)))

(declare-fun c!639528 () Bool)

(assert (=> d!1085239 (= c!639528 (and ((_ is Cons!39340) (t!302009 rules!3598)) (= (tag!6812 (h!44760 (t!302009 rules!3598))) (tag!6812 (rule!8848 token!544)))))))

(assert (=> d!1085239 (rulesInvariant!4966 thiss!25322 (t!302009 rules!3598))))

(assert (=> d!1085239 (= (getRuleFromTag!1520 thiss!25322 (t!302009 rules!3598) (tag!6812 (rule!8848 token!544))) lt!1295239)))

(declare-fun b!3701323 () Bool)

(assert (=> b!3701323 (= e!2292276 e!2292275)))

(declare-fun res!1505659 () Bool)

(assert (=> b!3701323 (=> (not res!1505659) (not e!2292275))))

(assert (=> b!3701323 (= res!1505659 (contains!7841 (t!302009 rules!3598) (get!13100 lt!1295239)))))

(declare-fun b!3701324 () Bool)

(declare-fun lt!1295238 () Unit!57306)

(declare-fun lt!1295240 () Unit!57306)

(assert (=> b!3701324 (= lt!1295238 lt!1295240)))

(assert (=> b!3701324 (rulesInvariant!4966 thiss!25322 (t!302009 (t!302009 rules!3598)))))

(assert (=> b!3701324 (= lt!1295240 (lemmaInvariantOnRulesThenOnTail!676 thiss!25322 (h!44760 (t!302009 rules!3598)) (t!302009 (t!302009 rules!3598))))))

(assert (=> b!3701324 (= e!2292274 (getRuleFromTag!1520 thiss!25322 (t!302009 (t!302009 rules!3598)) (tag!6812 (rule!8848 token!544))))))

(assert (= (and d!1085239 c!639528) b!3701321))

(assert (= (and d!1085239 (not c!639528)) b!3701322))

(assert (= (and b!3701322 c!639527) b!3701324))

(assert (= (and b!3701322 (not c!639527)) b!3701320))

(assert (= (and d!1085239 (not res!1505658)) b!3701323))

(assert (= (and b!3701323 res!1505659) b!3701319))

(declare-fun m!4212463 () Bool)

(assert (=> b!3701319 m!4212463))

(declare-fun m!4212465 () Bool)

(assert (=> d!1085239 m!4212465))

(assert (=> d!1085239 m!4212103))

(assert (=> b!3701323 m!4212463))

(assert (=> b!3701323 m!4212463))

(declare-fun m!4212467 () Bool)

(assert (=> b!3701323 m!4212467))

(declare-fun m!4212469 () Bool)

(assert (=> b!3701324 m!4212469))

(declare-fun m!4212471 () Bool)

(assert (=> b!3701324 m!4212471))

(declare-fun m!4212473 () Bool)

(assert (=> b!3701324 m!4212473))

(assert (=> b!3700968 d!1085239))

(declare-fun d!1085241 () Bool)

(assert (=> d!1085241 (= (isDefined!6712 lt!1295128) (not (isEmpty!23448 lt!1295128)))))

(declare-fun bs!574440 () Bool)

(assert (= bs!574440 d!1085241))

(declare-fun m!4212475 () Bool)

(assert (=> bs!574440 m!4212475))

(assert (=> b!3700968 d!1085241))

(declare-fun d!1085243 () Bool)

(declare-fun e!2292280 () Bool)

(assert (=> d!1085243 e!2292280))

(declare-fun res!1505664 () Bool)

(assert (=> d!1085243 (=> (not res!1505664) (not e!2292280))))

(assert (=> d!1085243 (= res!1505664 (isDefined!6712 (getRuleFromTag!1520 thiss!25322 (t!302009 rules!3598) (tag!6812 (rule!8848 token!544)))))))

(declare-fun lt!1295243 () Unit!57306)

(declare-fun choose!22134 (LexerInterface!5569 List!39464 List!39463 Token!11314) Unit!57306)

(assert (=> d!1085243 (= lt!1295243 (choose!22134 thiss!25322 (t!302009 rules!3598) input!3172 token!544))))

(assert (=> d!1085243 (rulesInvariant!4966 thiss!25322 (t!302009 rules!3598))))

(assert (=> d!1085243 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1506 thiss!25322 (t!302009 rules!3598) input!3172 token!544) lt!1295243)))

(declare-fun b!3701329 () Bool)

(declare-fun res!1505665 () Bool)

(assert (=> b!3701329 (=> (not res!1505665) (not e!2292280))))

(assert (=> b!3701329 (= res!1505665 (matchR!5272 (regex!5980 (get!13100 (getRuleFromTag!1520 thiss!25322 (t!302009 rules!3598) (tag!6812 (rule!8848 token!544))))) (list!14691 (charsOf!3969 token!544))))))

(declare-fun b!3701330 () Bool)

(assert (=> b!3701330 (= e!2292280 (= (rule!8848 token!544) (get!13100 (getRuleFromTag!1520 thiss!25322 (t!302009 rules!3598) (tag!6812 (rule!8848 token!544))))))))

(assert (= (and d!1085243 res!1505664) b!3701329))

(assert (= (and b!3701329 res!1505665) b!3701330))

(assert (=> d!1085243 m!4212101))

(assert (=> d!1085243 m!4212101))

(declare-fun m!4212477 () Bool)

(assert (=> d!1085243 m!4212477))

(declare-fun m!4212479 () Bool)

(assert (=> d!1085243 m!4212479))

(assert (=> d!1085243 m!4212103))

(assert (=> b!3701329 m!4212083))

(declare-fun m!4212481 () Bool)

(assert (=> b!3701329 m!4212481))

(assert (=> b!3701329 m!4212081))

(assert (=> b!3701329 m!4212081))

(assert (=> b!3701329 m!4212083))

(assert (=> b!3701329 m!4212101))

(assert (=> b!3701329 m!4212101))

(declare-fun m!4212483 () Bool)

(assert (=> b!3701329 m!4212483))

(assert (=> b!3701330 m!4212101))

(assert (=> b!3701330 m!4212101))

(assert (=> b!3701330 m!4212483))

(assert (=> b!3700968 d!1085243))

(declare-fun d!1085245 () Bool)

(assert (=> d!1085245 (rulesInvariant!4966 thiss!25322 (t!302009 rules!3598))))

(declare-fun lt!1295246 () Unit!57306)

(declare-fun choose!22135 (LexerInterface!5569 Rule!11760 List!39464) Unit!57306)

(assert (=> d!1085245 (= lt!1295246 (choose!22135 thiss!25322 (h!44760 rules!3598) (t!302009 rules!3598)))))

(assert (=> d!1085245 (rulesInvariant!4966 thiss!25322 (Cons!39340 (h!44760 rules!3598) (t!302009 rules!3598)))))

(assert (=> d!1085245 (= (lemmaInvariantOnRulesThenOnTail!676 thiss!25322 (h!44760 rules!3598) (t!302009 rules!3598)) lt!1295246)))

(declare-fun bs!574441 () Bool)

(assert (= bs!574441 d!1085245))

(assert (=> bs!574441 m!4212103))

(declare-fun m!4212485 () Bool)

(assert (=> bs!574441 m!4212485))

(declare-fun m!4212487 () Bool)

(assert (=> bs!574441 m!4212487))

(assert (=> b!3700968 d!1085245))

(declare-fun d!1085247 () Bool)

(declare-fun res!1505666 () Bool)

(declare-fun e!2292281 () Bool)

(assert (=> d!1085247 (=> (not res!1505666) (not e!2292281))))

(assert (=> d!1085247 (= res!1505666 (rulesValid!2311 thiss!25322 (t!302009 rules!3598)))))

(assert (=> d!1085247 (= (rulesInvariant!4966 thiss!25322 (t!302009 rules!3598)) e!2292281)))

(declare-fun b!3701331 () Bool)

(assert (=> b!3701331 (= e!2292281 (noDuplicateTag!2307 thiss!25322 (t!302009 rules!3598) Nil!39342))))

(assert (= (and d!1085247 res!1505666) b!3701331))

(declare-fun m!4212489 () Bool)

(assert (=> d!1085247 m!4212489))

(declare-fun m!4212491 () Bool)

(assert (=> b!3701331 m!4212491))

(assert (=> b!3700968 d!1085247))

(declare-fun d!1085249 () Bool)

(declare-fun res!1505667 () Bool)

(declare-fun e!2292282 () Bool)

(assert (=> d!1085249 (=> (not res!1505667) (not e!2292282))))

(assert (=> d!1085249 (= res!1505667 (rulesValid!2311 thiss!25322 lt!1295131))))

(assert (=> d!1085249 (= (rulesInvariant!4966 thiss!25322 lt!1295131) e!2292282)))

(declare-fun b!3701332 () Bool)

(assert (=> b!3701332 (= e!2292282 (noDuplicateTag!2307 thiss!25322 lt!1295131 Nil!39342))))

(assert (= (and d!1085249 res!1505667) b!3701332))

(declare-fun m!4212493 () Bool)

(assert (=> d!1085249 m!4212493))

(declare-fun m!4212495 () Bool)

(assert (=> b!3701332 m!4212495))

(assert (=> b!3700968 d!1085249))

(declare-fun b!3701333 () Bool)

(declare-fun res!1505674 () Bool)

(declare-fun e!2292288 () Bool)

(assert (=> b!3701333 (=> (not res!1505674) (not e!2292288))))

(assert (=> b!3701333 (= res!1505674 (isEmpty!23447 (tail!5732 (list!14691 (charsOf!3969 token!544)))))))

(declare-fun b!3701334 () Bool)

(declare-fun e!2292285 () Bool)

(declare-fun lt!1295247 () Bool)

(assert (=> b!3701334 (= e!2292285 (not lt!1295247))))

(declare-fun d!1085251 () Bool)

(declare-fun e!2292286 () Bool)

(assert (=> d!1085251 e!2292286))

(declare-fun c!639531 () Bool)

(assert (=> d!1085251 (= c!639531 ((_ is EmptyExpr!10739) (regex!5980 lt!1295127)))))

(declare-fun e!2292287 () Bool)

(assert (=> d!1085251 (= lt!1295247 e!2292287)))

(declare-fun c!639529 () Bool)

(assert (=> d!1085251 (= c!639529 (isEmpty!23447 (list!14691 (charsOf!3969 token!544))))))

(assert (=> d!1085251 (validRegex!4904 (regex!5980 lt!1295127))))

(assert (=> d!1085251 (= (matchR!5272 (regex!5980 lt!1295127) (list!14691 (charsOf!3969 token!544))) lt!1295247)))

(declare-fun b!3701335 () Bool)

(assert (=> b!3701335 (= e!2292288 (= (head!7995 (list!14691 (charsOf!3969 token!544))) (c!639473 (regex!5980 lt!1295127))))))

(declare-fun b!3701336 () Bool)

(assert (=> b!3701336 (= e!2292287 (matchR!5272 (derivativeStep!3282 (regex!5980 lt!1295127) (head!7995 (list!14691 (charsOf!3969 token!544)))) (tail!5732 (list!14691 (charsOf!3969 token!544)))))))

(declare-fun b!3701337 () Bool)

(declare-fun res!1505671 () Bool)

(declare-fun e!2292289 () Bool)

(assert (=> b!3701337 (=> res!1505671 e!2292289)))

(assert (=> b!3701337 (= res!1505671 (not (isEmpty!23447 (tail!5732 (list!14691 (charsOf!3969 token!544))))))))

(declare-fun b!3701338 () Bool)

(assert (=> b!3701338 (= e!2292289 (not (= (head!7995 (list!14691 (charsOf!3969 token!544))) (c!639473 (regex!5980 lt!1295127)))))))

(declare-fun b!3701339 () Bool)

(declare-fun e!2292284 () Bool)

(assert (=> b!3701339 (= e!2292284 e!2292289)))

(declare-fun res!1505675 () Bool)

(assert (=> b!3701339 (=> res!1505675 e!2292289)))

(declare-fun call!267380 () Bool)

(assert (=> b!3701339 (= res!1505675 call!267380)))

(declare-fun b!3701340 () Bool)

(declare-fun e!2292283 () Bool)

(assert (=> b!3701340 (= e!2292283 e!2292284)))

(declare-fun res!1505672 () Bool)

(assert (=> b!3701340 (=> (not res!1505672) (not e!2292284))))

(assert (=> b!3701340 (= res!1505672 (not lt!1295247))))

(declare-fun b!3701341 () Bool)

(declare-fun res!1505670 () Bool)

(assert (=> b!3701341 (=> res!1505670 e!2292283)))

(assert (=> b!3701341 (= res!1505670 (not ((_ is ElementMatch!10739) (regex!5980 lt!1295127))))))

(assert (=> b!3701341 (= e!2292285 e!2292283)))

(declare-fun b!3701342 () Bool)

(assert (=> b!3701342 (= e!2292286 (= lt!1295247 call!267380))))

(declare-fun b!3701343 () Bool)

(assert (=> b!3701343 (= e!2292286 e!2292285)))

(declare-fun c!639530 () Bool)

(assert (=> b!3701343 (= c!639530 ((_ is EmptyLang!10739) (regex!5980 lt!1295127)))))

(declare-fun bm!267375 () Bool)

(assert (=> bm!267375 (= call!267380 (isEmpty!23447 (list!14691 (charsOf!3969 token!544))))))

(declare-fun b!3701344 () Bool)

(declare-fun res!1505669 () Bool)

(assert (=> b!3701344 (=> res!1505669 e!2292283)))

(assert (=> b!3701344 (= res!1505669 e!2292288)))

(declare-fun res!1505668 () Bool)

(assert (=> b!3701344 (=> (not res!1505668) (not e!2292288))))

(assert (=> b!3701344 (= res!1505668 lt!1295247)))

(declare-fun b!3701345 () Bool)

(declare-fun res!1505673 () Bool)

(assert (=> b!3701345 (=> (not res!1505673) (not e!2292288))))

(assert (=> b!3701345 (= res!1505673 (not call!267380))))

(declare-fun b!3701346 () Bool)

(assert (=> b!3701346 (= e!2292287 (nullable!3740 (regex!5980 lt!1295127)))))

(assert (= (and d!1085251 c!639529) b!3701346))

(assert (= (and d!1085251 (not c!639529)) b!3701336))

(assert (= (and d!1085251 c!639531) b!3701342))

(assert (= (and d!1085251 (not c!639531)) b!3701343))

(assert (= (and b!3701343 c!639530) b!3701334))

(assert (= (and b!3701343 (not c!639530)) b!3701341))

(assert (= (and b!3701341 (not res!1505670)) b!3701344))

(assert (= (and b!3701344 res!1505668) b!3701345))

(assert (= (and b!3701345 res!1505673) b!3701333))

(assert (= (and b!3701333 res!1505674) b!3701335))

(assert (= (and b!3701344 (not res!1505669)) b!3701340))

(assert (= (and b!3701340 res!1505672) b!3701339))

(assert (= (and b!3701339 (not res!1505675)) b!3701337))

(assert (= (and b!3701337 (not res!1505671)) b!3701338))

(assert (= (or b!3701342 b!3701339 b!3701345) bm!267375))

(assert (=> b!3701336 m!4212083))

(assert (=> b!3701336 m!4212431))

(assert (=> b!3701336 m!4212431))

(declare-fun m!4212497 () Bool)

(assert (=> b!3701336 m!4212497))

(assert (=> b!3701336 m!4212083))

(assert (=> b!3701336 m!4212435))

(assert (=> b!3701336 m!4212497))

(assert (=> b!3701336 m!4212435))

(declare-fun m!4212499 () Bool)

(assert (=> b!3701336 m!4212499))

(assert (=> b!3701338 m!4212083))

(assert (=> b!3701338 m!4212431))

(declare-fun m!4212501 () Bool)

(assert (=> b!3701346 m!4212501))

(assert (=> d!1085251 m!4212083))

(assert (=> d!1085251 m!4212441))

(declare-fun m!4212503 () Bool)

(assert (=> d!1085251 m!4212503))

(assert (=> b!3701333 m!4212083))

(assert (=> b!3701333 m!4212435))

(assert (=> b!3701333 m!4212435))

(assert (=> b!3701333 m!4212445))

(assert (=> b!3701337 m!4212083))

(assert (=> b!3701337 m!4212435))

(assert (=> b!3701337 m!4212435))

(assert (=> b!3701337 m!4212445))

(assert (=> bm!267375 m!4212083))

(assert (=> bm!267375 m!4212441))

(assert (=> b!3701335 m!4212083))

(assert (=> b!3701335 m!4212431))

(assert (=> b!3700967 d!1085251))

(assert (=> b!3700967 d!1085229))

(assert (=> b!3700967 d!1085231))

(declare-fun d!1085253 () Bool)

(assert (=> d!1085253 (= (get!13100 lt!1295124) (v!38482 lt!1295124))))

(assert (=> b!3700967 d!1085253))

(declare-fun d!1085255 () Bool)

(assert (=> d!1085255 (= (get!13100 (getRuleFromTag!1520 thiss!25322 (t!302009 rules!3598) (tag!6812 (rule!8848 token!544)))) (get!13100 (getRuleFromTag!1520 thiss!25322 (Cons!39340 (h!44760 rules!3598) (t!302009 rules!3598)) (tag!6812 (rule!8848 token!544)))))))

(declare-fun lt!1295250 () Unit!57306)

(declare-fun choose!22136 (LexerInterface!5569 List!39464 Rule!11760 String!44384) Unit!57306)

(assert (=> d!1085255 (= lt!1295250 (choose!22136 thiss!25322 (t!302009 rules!3598) (h!44760 rules!3598) (tag!6812 (rule!8848 token!544))))))

(assert (=> d!1085255 (rulesInvariant!4966 thiss!25322 (Cons!39340 (h!44760 rules!3598) (t!302009 rules!3598)))))

(assert (=> d!1085255 (= (lemmaGetRuleFromTagInListThenSameListWhenAddingARuleDiffTag!10 thiss!25322 (t!302009 rules!3598) (h!44760 rules!3598) (tag!6812 (rule!8848 token!544))) lt!1295250)))

(declare-fun bs!574442 () Bool)

(assert (= bs!574442 d!1085255))

(assert (=> bs!574442 m!4212487))

(declare-fun m!4212505 () Bool)

(assert (=> bs!574442 m!4212505))

(declare-fun m!4212507 () Bool)

(assert (=> bs!574442 m!4212507))

(declare-fun m!4212509 () Bool)

(assert (=> bs!574442 m!4212509))

(assert (=> bs!574442 m!4212101))

(assert (=> bs!574442 m!4212483))

(assert (=> bs!574442 m!4212505))

(assert (=> bs!574442 m!4212101))

(assert (=> b!3700956 d!1085255))

(declare-fun d!1085257 () Bool)

(assert (=> d!1085257 (= (isDefined!6712 lt!1295124) (not (isEmpty!23448 lt!1295124)))))

(declare-fun bs!574443 () Bool)

(assert (= bs!574443 d!1085257))

(declare-fun m!4212511 () Bool)

(assert (=> bs!574443 m!4212511))

(assert (=> b!3700956 d!1085257))

(declare-fun b!3701347 () Bool)

(declare-fun e!2292291 () Bool)

(declare-fun lt!1295252 () Option!8523)

(assert (=> b!3701347 (= e!2292291 (= (tag!6812 (get!13100 lt!1295252)) (tag!6812 (rule!8848 token!544))))))

(declare-fun b!3701348 () Bool)

(declare-fun e!2292290 () Option!8523)

(assert (=> b!3701348 (= e!2292290 None!8522)))

(declare-fun b!3701349 () Bool)

(declare-fun e!2292293 () Option!8523)

(assert (=> b!3701349 (= e!2292293 (Some!8522 (h!44760 rules!3598)))))

(declare-fun b!3701350 () Bool)

(assert (=> b!3701350 (= e!2292293 e!2292290)))

(declare-fun c!639532 () Bool)

(assert (=> b!3701350 (= c!639532 (and ((_ is Cons!39340) rules!3598) (not (= (tag!6812 (h!44760 rules!3598)) (tag!6812 (rule!8848 token!544))))))))

(declare-fun d!1085259 () Bool)

(declare-fun e!2292292 () Bool)

(assert (=> d!1085259 e!2292292))

(declare-fun res!1505676 () Bool)

(assert (=> d!1085259 (=> res!1505676 e!2292292)))

(assert (=> d!1085259 (= res!1505676 (isEmpty!23448 lt!1295252))))

(assert (=> d!1085259 (= lt!1295252 e!2292293)))

(declare-fun c!639533 () Bool)

(assert (=> d!1085259 (= c!639533 (and ((_ is Cons!39340) rules!3598) (= (tag!6812 (h!44760 rules!3598)) (tag!6812 (rule!8848 token!544)))))))

(assert (=> d!1085259 (rulesInvariant!4966 thiss!25322 rules!3598)))

(assert (=> d!1085259 (= (getRuleFromTag!1520 thiss!25322 rules!3598 (tag!6812 (rule!8848 token!544))) lt!1295252)))

(declare-fun b!3701351 () Bool)

(assert (=> b!3701351 (= e!2292292 e!2292291)))

(declare-fun res!1505677 () Bool)

(assert (=> b!3701351 (=> (not res!1505677) (not e!2292291))))

(assert (=> b!3701351 (= res!1505677 (contains!7841 rules!3598 (get!13100 lt!1295252)))))

(declare-fun b!3701352 () Bool)

(declare-fun lt!1295251 () Unit!57306)

(declare-fun lt!1295253 () Unit!57306)

(assert (=> b!3701352 (= lt!1295251 lt!1295253)))

(assert (=> b!3701352 (rulesInvariant!4966 thiss!25322 (t!302009 rules!3598))))

(assert (=> b!3701352 (= lt!1295253 (lemmaInvariantOnRulesThenOnTail!676 thiss!25322 (h!44760 rules!3598) (t!302009 rules!3598)))))

(assert (=> b!3701352 (= e!2292290 (getRuleFromTag!1520 thiss!25322 (t!302009 rules!3598) (tag!6812 (rule!8848 token!544))))))

(assert (= (and d!1085259 c!639533) b!3701349))

(assert (= (and d!1085259 (not c!639533)) b!3701350))

(assert (= (and b!3701350 c!639532) b!3701352))

(assert (= (and b!3701350 (not c!639532)) b!3701348))

(assert (= (and d!1085259 (not res!1505676)) b!3701351))

(assert (= (and b!3701351 res!1505677) b!3701347))

(declare-fun m!4212513 () Bool)

(assert (=> b!3701347 m!4212513))

(declare-fun m!4212515 () Bool)

(assert (=> d!1085259 m!4212515))

(assert (=> d!1085259 m!4212093))

(assert (=> b!3701351 m!4212513))

(assert (=> b!3701351 m!4212513))

(declare-fun m!4212517 () Bool)

(assert (=> b!3701351 m!4212517))

(assert (=> b!3701352 m!4212103))

(assert (=> b!3701352 m!4212095))

(assert (=> b!3701352 m!4212101))

(assert (=> b!3700956 d!1085259))

(assert (=> b!3700956 d!1085233))

(declare-fun b!3701353 () Bool)

(declare-fun e!2292295 () Bool)

(declare-fun lt!1295255 () Option!8523)

(assert (=> b!3701353 (= e!2292295 (= (tag!6812 (get!13100 lt!1295255)) (tag!6812 (rule!8848 token!544))))))

(declare-fun b!3701354 () Bool)

(declare-fun e!2292294 () Option!8523)

(assert (=> b!3701354 (= e!2292294 None!8522)))

(declare-fun b!3701355 () Bool)

(declare-fun e!2292297 () Option!8523)

(assert (=> b!3701355 (= e!2292297 (Some!8522 (h!44760 lt!1295131)))))

(declare-fun b!3701356 () Bool)

(assert (=> b!3701356 (= e!2292297 e!2292294)))

(declare-fun c!639534 () Bool)

(assert (=> b!3701356 (= c!639534 (and ((_ is Cons!39340) lt!1295131) (not (= (tag!6812 (h!44760 lt!1295131)) (tag!6812 (rule!8848 token!544))))))))

(declare-fun d!1085261 () Bool)

(declare-fun e!2292296 () Bool)

(assert (=> d!1085261 e!2292296))

(declare-fun res!1505678 () Bool)

(assert (=> d!1085261 (=> res!1505678 e!2292296)))

(assert (=> d!1085261 (= res!1505678 (isEmpty!23448 lt!1295255))))

(assert (=> d!1085261 (= lt!1295255 e!2292297)))

(declare-fun c!639535 () Bool)

(assert (=> d!1085261 (= c!639535 (and ((_ is Cons!39340) lt!1295131) (= (tag!6812 (h!44760 lt!1295131)) (tag!6812 (rule!8848 token!544)))))))

(assert (=> d!1085261 (rulesInvariant!4966 thiss!25322 lt!1295131)))

(assert (=> d!1085261 (= (getRuleFromTag!1520 thiss!25322 lt!1295131 (tag!6812 (rule!8848 token!544))) lt!1295255)))

(declare-fun b!3701357 () Bool)

(assert (=> b!3701357 (= e!2292296 e!2292295)))

(declare-fun res!1505679 () Bool)

(assert (=> b!3701357 (=> (not res!1505679) (not e!2292295))))

(assert (=> b!3701357 (= res!1505679 (contains!7841 lt!1295131 (get!13100 lt!1295255)))))

(declare-fun b!3701358 () Bool)

(declare-fun lt!1295254 () Unit!57306)

(declare-fun lt!1295256 () Unit!57306)

(assert (=> b!3701358 (= lt!1295254 lt!1295256)))

(assert (=> b!3701358 (rulesInvariant!4966 thiss!25322 (t!302009 lt!1295131))))

(assert (=> b!3701358 (= lt!1295256 (lemmaInvariantOnRulesThenOnTail!676 thiss!25322 (h!44760 lt!1295131) (t!302009 lt!1295131)))))

(assert (=> b!3701358 (= e!2292294 (getRuleFromTag!1520 thiss!25322 (t!302009 lt!1295131) (tag!6812 (rule!8848 token!544))))))

(assert (= (and d!1085261 c!639535) b!3701355))

(assert (= (and d!1085261 (not c!639535)) b!3701356))

(assert (= (and b!3701356 c!639534) b!3701358))

(assert (= (and b!3701356 (not c!639534)) b!3701354))

(assert (= (and d!1085261 (not res!1505678)) b!3701357))

(assert (= (and b!3701357 res!1505679) b!3701353))

(declare-fun m!4212519 () Bool)

(assert (=> b!3701353 m!4212519))

(declare-fun m!4212521 () Bool)

(assert (=> d!1085261 m!4212521))

(assert (=> d!1085261 m!4212099))

(assert (=> b!3701357 m!4212519))

(assert (=> b!3701357 m!4212519))

(declare-fun m!4212523 () Bool)

(assert (=> b!3701357 m!4212523))

(declare-fun m!4212525 () Bool)

(assert (=> b!3701358 m!4212525))

(declare-fun m!4212527 () Bool)

(assert (=> b!3701358 m!4212527))

(declare-fun m!4212529 () Bool)

(assert (=> b!3701358 m!4212529))

(assert (=> b!3700956 d!1085261))

(declare-fun d!1085263 () Bool)

(assert (=> d!1085263 (= (get!13100 (getRuleFromTag!1520 thiss!25322 lt!1295131 (tag!6812 (rule!8848 token!544)))) (v!38482 (getRuleFromTag!1520 thiss!25322 lt!1295131 (tag!6812 (rule!8848 token!544)))))))

(assert (=> b!3700956 d!1085263))

(declare-fun b!3701369 () Bool)

(declare-fun res!1505682 () Bool)

(declare-fun e!2292305 () Bool)

(assert (=> b!3701369 (=> res!1505682 e!2292305)))

(assert (=> b!3701369 (= res!1505682 (not ((_ is IntegerValue!18632) (value!190884 token!544))))))

(declare-fun e!2292306 () Bool)

(assert (=> b!3701369 (= e!2292306 e!2292305)))

(declare-fun b!3701370 () Bool)

(declare-fun e!2292304 () Bool)

(assert (=> b!3701370 (= e!2292304 e!2292306)))

(declare-fun c!639540 () Bool)

(assert (=> b!3701370 (= c!639540 ((_ is IntegerValue!18631) (value!190884 token!544)))))

(declare-fun b!3701371 () Bool)

(declare-fun inv!17 (TokenValue!6210) Bool)

(assert (=> b!3701371 (= e!2292306 (inv!17 (value!190884 token!544)))))

(declare-fun b!3701372 () Bool)

(declare-fun inv!15 (TokenValue!6210) Bool)

(assert (=> b!3701372 (= e!2292305 (inv!15 (value!190884 token!544)))))

(declare-fun d!1085265 () Bool)

(declare-fun c!639541 () Bool)

(assert (=> d!1085265 (= c!639541 ((_ is IntegerValue!18630) (value!190884 token!544)))))

(assert (=> d!1085265 (= (inv!21 (value!190884 token!544)) e!2292304)))

(declare-fun b!3701373 () Bool)

(declare-fun inv!16 (TokenValue!6210) Bool)

(assert (=> b!3701373 (= e!2292304 (inv!16 (value!190884 token!544)))))

(assert (= (and d!1085265 c!639541) b!3701373))

(assert (= (and d!1085265 (not c!639541)) b!3701370))

(assert (= (and b!3701370 c!639540) b!3701371))

(assert (= (and b!3701370 (not c!639540)) b!3701369))

(assert (= (and b!3701369 (not res!1505682)) b!3701372))

(declare-fun m!4212531 () Bool)

(assert (=> b!3701371 m!4212531))

(declare-fun m!4212533 () Bool)

(assert (=> b!3701372 m!4212533))

(declare-fun m!4212535 () Bool)

(assert (=> b!3701373 m!4212535))

(assert (=> b!3700955 d!1085265))

(declare-fun b!3701386 () Bool)

(declare-fun e!2292309 () Bool)

(declare-fun tp!1125144 () Bool)

(assert (=> b!3701386 (= e!2292309 tp!1125144)))

(assert (=> b!3700960 (= tp!1125085 e!2292309)))

(declare-fun b!3701385 () Bool)

(declare-fun tp!1125142 () Bool)

(declare-fun tp!1125141 () Bool)

(assert (=> b!3701385 (= e!2292309 (and tp!1125142 tp!1125141))))

(declare-fun b!3701384 () Bool)

(assert (=> b!3701384 (= e!2292309 tp_is_empty!18553)))

(declare-fun b!3701387 () Bool)

(declare-fun tp!1125143 () Bool)

(declare-fun tp!1125145 () Bool)

(assert (=> b!3701387 (= e!2292309 (and tp!1125143 tp!1125145))))

(assert (= (and b!3700960 ((_ is ElementMatch!10739) (regex!5980 (rule!8848 token!544)))) b!3701384))

(assert (= (and b!3700960 ((_ is Concat!16950) (regex!5980 (rule!8848 token!544)))) b!3701385))

(assert (= (and b!3700960 ((_ is Star!10739) (regex!5980 (rule!8848 token!544)))) b!3701386))

(assert (= (and b!3700960 ((_ is Union!10739) (regex!5980 (rule!8848 token!544)))) b!3701387))

(declare-fun b!3701392 () Bool)

(declare-fun e!2292312 () Bool)

(declare-fun tp!1125148 () Bool)

(assert (=> b!3701392 (= e!2292312 (and tp_is_empty!18553 tp!1125148))))

(assert (=> b!3700964 (= tp!1125081 e!2292312)))

(assert (= (and b!3700964 ((_ is Cons!39339) (t!302008 input!3172))) b!3701392))

(declare-fun b!3701403 () Bool)

(declare-fun b_free!98661 () Bool)

(declare-fun b_next!99365 () Bool)

(assert (=> b!3701403 (= b_free!98661 (not b_next!99365))))

(declare-fun tp!1125157 () Bool)

(declare-fun b_and!276787 () Bool)

(assert (=> b!3701403 (= tp!1125157 b_and!276787)))

(declare-fun b_free!98663 () Bool)

(declare-fun b_next!99367 () Bool)

(assert (=> b!3701403 (= b_free!98663 (not b_next!99367))))

(declare-fun t!302022 () Bool)

(declare-fun tb!214271 () Bool)

(assert (=> (and b!3701403 (= (toChars!8175 (transformation!5980 (h!44760 (t!302009 rules!3598)))) (toChars!8175 (transformation!5980 (rule!8848 token!544)))) t!302022) tb!214271))

(declare-fun result!261080 () Bool)

(assert (= result!261080 result!261068))

(assert (=> d!1085231 t!302022))

(assert (=> b!3701305 t!302022))

(declare-fun b_and!276789 () Bool)

(declare-fun tp!1125160 () Bool)

(assert (=> b!3701403 (= tp!1125160 (and (=> t!302022 result!261080) b_and!276789))))

(declare-fun e!2292321 () Bool)

(assert (=> b!3701403 (= e!2292321 (and tp!1125157 tp!1125160))))

(declare-fun b!3701402 () Bool)

(declare-fun tp!1125159 () Bool)

(declare-fun e!2292324 () Bool)

(assert (=> b!3701402 (= e!2292324 (and tp!1125159 (inv!52864 (tag!6812 (h!44760 (t!302009 rules!3598)))) (inv!52867 (transformation!5980 (h!44760 (t!302009 rules!3598)))) e!2292321))))

(declare-fun b!3701401 () Bool)

(declare-fun e!2292323 () Bool)

(declare-fun tp!1125158 () Bool)

(assert (=> b!3701401 (= e!2292323 (and e!2292324 tp!1125158))))

(assert (=> b!3700962 (= tp!1125080 e!2292323)))

(assert (= b!3701402 b!3701403))

(assert (= b!3701401 b!3701402))

(assert (= (and b!3700962 ((_ is Cons!39340) (t!302009 rules!3598))) b!3701401))

(declare-fun m!4212537 () Bool)

(assert (=> b!3701402 m!4212537))

(declare-fun m!4212539 () Bool)

(assert (=> b!3701402 m!4212539))

(declare-fun b!3701406 () Bool)

(declare-fun e!2292325 () Bool)

(declare-fun tp!1125164 () Bool)

(assert (=> b!3701406 (= e!2292325 tp!1125164)))

(assert (=> b!3700961 (= tp!1125083 e!2292325)))

(declare-fun b!3701405 () Bool)

(declare-fun tp!1125162 () Bool)

(declare-fun tp!1125161 () Bool)

(assert (=> b!3701405 (= e!2292325 (and tp!1125162 tp!1125161))))

(declare-fun b!3701404 () Bool)

(assert (=> b!3701404 (= e!2292325 tp_is_empty!18553)))

(declare-fun b!3701407 () Bool)

(declare-fun tp!1125163 () Bool)

(declare-fun tp!1125165 () Bool)

(assert (=> b!3701407 (= e!2292325 (and tp!1125163 tp!1125165))))

(assert (= (and b!3700961 ((_ is ElementMatch!10739) (regex!5980 (h!44760 rules!3598)))) b!3701404))

(assert (= (and b!3700961 ((_ is Concat!16950) (regex!5980 (h!44760 rules!3598)))) b!3701405))

(assert (= (and b!3700961 ((_ is Star!10739) (regex!5980 (h!44760 rules!3598)))) b!3701406))

(assert (= (and b!3700961 ((_ is Union!10739) (regex!5980 (h!44760 rules!3598)))) b!3701407))

(declare-fun b!3701408 () Bool)

(declare-fun e!2292326 () Bool)

(declare-fun tp!1125166 () Bool)

(assert (=> b!3701408 (= e!2292326 (and tp_is_empty!18553 tp!1125166))))

(assert (=> b!3700955 (= tp!1125086 e!2292326)))

(assert (= (and b!3700955 ((_ is Cons!39339) (originalCharacters!6688 token!544))) b!3701408))

(declare-fun b_lambda!109775 () Bool)

(assert (= b_lambda!109771 (or (and b!3700963 b_free!98651) (and b!3700966 b_free!98655 (= (toChars!8175 (transformation!5980 (h!44760 rules!3598))) (toChars!8175 (transformation!5980 (rule!8848 token!544))))) (and b!3701403 b_free!98663 (= (toChars!8175 (transformation!5980 (h!44760 (t!302009 rules!3598)))) (toChars!8175 (transformation!5980 (rule!8848 token!544))))) b_lambda!109775)))

(declare-fun b_lambda!109777 () Bool)

(assert (= b_lambda!109773 (or (and b!3700963 b_free!98651) (and b!3700966 b_free!98655 (= (toChars!8175 (transformation!5980 (h!44760 rules!3598))) (toChars!8175 (transformation!5980 (rule!8848 token!544))))) (and b!3701403 b_free!98663 (= (toChars!8175 (transformation!5980 (h!44760 (t!302009 rules!3598)))) (toChars!8175 (transformation!5980 (rule!8848 token!544))))) b_lambda!109777)))

(check-sat (not b!3701337) b_and!276759 (not b!3701243) (not b!3701332) b_and!276785 (not b!3701244) (not b!3701305) (not b_next!99355) (not b!3701245) (not b!3701124) (not d!1085255) (not b!3701306) (not d!1085249) (not d!1085165) (not b!3701407) (not b!3701249) (not d!1085257) (not d!1085189) (not b!3701284) (not bm!267371) (not d!1085225) (not d!1085215) (not b!3701401) (not b!3701358) (not b!3701128) (not b!3701405) (not tb!214267) (not b!3701131) (not b!3701386) (not d!1085191) (not b!3701373) (not b!3701372) (not b!3701240) (not d!1085235) (not b!3701352) (not b_next!99365) (not d!1085245) (not b!3701123) (not b!3701331) b_and!276789 (not b!3701286) (not b!3701351) (not b!3701406) (not b!3701385) (not b!3701319) (not bm!267375) b_and!276763 (not b!3701295) b_and!276787 (not b!3701129) (not d!1085243) (not b!3701371) (not b_next!99353) (not d!1085231) (not b_next!99357) (not b!3701338) (not b!3701408) (not b!3701300) (not bm!267374) (not d!1085227) (not b!3701239) (not d!1085239) (not d!1085261) (not b_lambda!109775) (not d!1085241) (not b!3701250) (not b!3701347) (not b!3701287) (not b!3701324) (not b!3701336) (not b!3701392) (not b!3701357) (not b!3701242) (not d!1085251) (not b!3701346) (not b!3701127) (not b!3701402) (not b!3701285) (not b!3701330) (not b_next!99367) (not b!3701253) (not b!3701353) (not b!3701126) (not b_next!99359) b_and!276783 (not b_lambda!109777) (not b!3701323) (not d!1085259) (not b!3701282) (not b!3701238) (not d!1085247) (not b!3701125) (not d!1085229) (not b!3701335) (not b!3701329) tp_is_empty!18553 (not d!1085221) (not d!1085167) (not b!3701333) (not b!3701241) (not b!3701387))
(check-sat (not b_next!99355) (not b_next!99365) b_and!276789 b_and!276763 b_and!276759 b_and!276787 (not b_next!99353) (not b_next!99357) b_and!276785 (not b_next!99367) (not b_next!99359) b_and!276783)
(get-model)

(declare-fun d!1085293 () Bool)

(assert (=> d!1085293 (= (list!14691 lt!1295231) (list!14693 (c!639472 lt!1295231)))))

(declare-fun bs!574447 () Bool)

(assert (= bs!574447 d!1085293))

(declare-fun m!4212569 () Bool)

(assert (=> bs!574447 m!4212569))

(assert (=> d!1085231 d!1085293))

(declare-fun b!3701424 () Bool)

(declare-fun res!1505697 () Bool)

(declare-fun e!2292341 () Bool)

(assert (=> b!3701424 (=> (not res!1505697) (not e!2292341))))

(assert (=> b!3701424 (= res!1505697 (isEmpty!23447 (tail!5732 (_1!22734 (findLongestMatchInner!1126 (regex!5980 (h!44760 rules!3598)) Nil!39339 (size!29995 Nil!39339) input!3172 input!3172 (size!29995 input!3172))))))))

(declare-fun b!3701425 () Bool)

(declare-fun e!2292338 () Bool)

(declare-fun lt!1295265 () Bool)

(assert (=> b!3701425 (= e!2292338 (not lt!1295265))))

(declare-fun d!1085295 () Bool)

(declare-fun e!2292339 () Bool)

(assert (=> d!1085295 e!2292339))

(declare-fun c!639550 () Bool)

(assert (=> d!1085295 (= c!639550 ((_ is EmptyExpr!10739) (regex!5980 (h!44760 rules!3598))))))

(declare-fun e!2292340 () Bool)

(assert (=> d!1085295 (= lt!1295265 e!2292340)))

(declare-fun c!639548 () Bool)

(assert (=> d!1085295 (= c!639548 (isEmpty!23447 (_1!22734 (findLongestMatchInner!1126 (regex!5980 (h!44760 rules!3598)) Nil!39339 (size!29995 Nil!39339) input!3172 input!3172 (size!29995 input!3172)))))))

(assert (=> d!1085295 (validRegex!4904 (regex!5980 (h!44760 rules!3598)))))

(assert (=> d!1085295 (= (matchR!5272 (regex!5980 (h!44760 rules!3598)) (_1!22734 (findLongestMatchInner!1126 (regex!5980 (h!44760 rules!3598)) Nil!39339 (size!29995 Nil!39339) input!3172 input!3172 (size!29995 input!3172)))) lt!1295265)))

(declare-fun b!3701426 () Bool)

(assert (=> b!3701426 (= e!2292341 (= (head!7995 (_1!22734 (findLongestMatchInner!1126 (regex!5980 (h!44760 rules!3598)) Nil!39339 (size!29995 Nil!39339) input!3172 input!3172 (size!29995 input!3172)))) (c!639473 (regex!5980 (h!44760 rules!3598)))))))

(declare-fun b!3701427 () Bool)

(assert (=> b!3701427 (= e!2292340 (matchR!5272 (derivativeStep!3282 (regex!5980 (h!44760 rules!3598)) (head!7995 (_1!22734 (findLongestMatchInner!1126 (regex!5980 (h!44760 rules!3598)) Nil!39339 (size!29995 Nil!39339) input!3172 input!3172 (size!29995 input!3172))))) (tail!5732 (_1!22734 (findLongestMatchInner!1126 (regex!5980 (h!44760 rules!3598)) Nil!39339 (size!29995 Nil!39339) input!3172 input!3172 (size!29995 input!3172))))))))

(declare-fun b!3701428 () Bool)

(declare-fun res!1505694 () Bool)

(declare-fun e!2292342 () Bool)

(assert (=> b!3701428 (=> res!1505694 e!2292342)))

(assert (=> b!3701428 (= res!1505694 (not (isEmpty!23447 (tail!5732 (_1!22734 (findLongestMatchInner!1126 (regex!5980 (h!44760 rules!3598)) Nil!39339 (size!29995 Nil!39339) input!3172 input!3172 (size!29995 input!3172)))))))))

(declare-fun b!3701429 () Bool)

(assert (=> b!3701429 (= e!2292342 (not (= (head!7995 (_1!22734 (findLongestMatchInner!1126 (regex!5980 (h!44760 rules!3598)) Nil!39339 (size!29995 Nil!39339) input!3172 input!3172 (size!29995 input!3172)))) (c!639473 (regex!5980 (h!44760 rules!3598))))))))

(declare-fun b!3701430 () Bool)

(declare-fun e!2292337 () Bool)

(assert (=> b!3701430 (= e!2292337 e!2292342)))

(declare-fun res!1505698 () Bool)

(assert (=> b!3701430 (=> res!1505698 e!2292342)))

(declare-fun call!267381 () Bool)

(assert (=> b!3701430 (= res!1505698 call!267381)))

(declare-fun b!3701431 () Bool)

(declare-fun e!2292336 () Bool)

(assert (=> b!3701431 (= e!2292336 e!2292337)))

(declare-fun res!1505695 () Bool)

(assert (=> b!3701431 (=> (not res!1505695) (not e!2292337))))

(assert (=> b!3701431 (= res!1505695 (not lt!1295265))))

(declare-fun b!3701432 () Bool)

(declare-fun res!1505693 () Bool)

(assert (=> b!3701432 (=> res!1505693 e!2292336)))

(assert (=> b!3701432 (= res!1505693 (not ((_ is ElementMatch!10739) (regex!5980 (h!44760 rules!3598)))))))

(assert (=> b!3701432 (= e!2292338 e!2292336)))

(declare-fun b!3701433 () Bool)

(assert (=> b!3701433 (= e!2292339 (= lt!1295265 call!267381))))

(declare-fun b!3701434 () Bool)

(assert (=> b!3701434 (= e!2292339 e!2292338)))

(declare-fun c!639549 () Bool)

(assert (=> b!3701434 (= c!639549 ((_ is EmptyLang!10739) (regex!5980 (h!44760 rules!3598))))))

(declare-fun bm!267376 () Bool)

(assert (=> bm!267376 (= call!267381 (isEmpty!23447 (_1!22734 (findLongestMatchInner!1126 (regex!5980 (h!44760 rules!3598)) Nil!39339 (size!29995 Nil!39339) input!3172 input!3172 (size!29995 input!3172)))))))

(declare-fun b!3701435 () Bool)

(declare-fun res!1505692 () Bool)

(assert (=> b!3701435 (=> res!1505692 e!2292336)))

(assert (=> b!3701435 (= res!1505692 e!2292341)))

(declare-fun res!1505691 () Bool)

(assert (=> b!3701435 (=> (not res!1505691) (not e!2292341))))

(assert (=> b!3701435 (= res!1505691 lt!1295265)))

(declare-fun b!3701436 () Bool)

(declare-fun res!1505696 () Bool)

(assert (=> b!3701436 (=> (not res!1505696) (not e!2292341))))

(assert (=> b!3701436 (= res!1505696 (not call!267381))))

(declare-fun b!3701437 () Bool)

(assert (=> b!3701437 (= e!2292340 (nullable!3740 (regex!5980 (h!44760 rules!3598))))))

(assert (= (and d!1085295 c!639548) b!3701437))

(assert (= (and d!1085295 (not c!639548)) b!3701427))

(assert (= (and d!1085295 c!639550) b!3701433))

(assert (= (and d!1085295 (not c!639550)) b!3701434))

(assert (= (and b!3701434 c!639549) b!3701425))

(assert (= (and b!3701434 (not c!639549)) b!3701432))

(assert (= (and b!3701432 (not res!1505693)) b!3701435))

(assert (= (and b!3701435 res!1505691) b!3701436))

(assert (= (and b!3701436 res!1505696) b!3701424))

(assert (= (and b!3701424 res!1505697) b!3701426))

(assert (= (and b!3701435 (not res!1505692)) b!3701431))

(assert (= (and b!3701431 res!1505695) b!3701430))

(assert (= (and b!3701430 (not res!1505698)) b!3701428))

(assert (= (and b!3701428 (not res!1505694)) b!3701429))

(assert (= (or b!3701433 b!3701430 b!3701436) bm!267376))

(declare-fun m!4212571 () Bool)

(assert (=> b!3701427 m!4212571))

(assert (=> b!3701427 m!4212571))

(declare-fun m!4212573 () Bool)

(assert (=> b!3701427 m!4212573))

(declare-fun m!4212575 () Bool)

(assert (=> b!3701427 m!4212575))

(assert (=> b!3701427 m!4212573))

(assert (=> b!3701427 m!4212575))

(declare-fun m!4212577 () Bool)

(assert (=> b!3701427 m!4212577))

(assert (=> b!3701429 m!4212571))

(declare-fun m!4212579 () Bool)

(assert (=> b!3701437 m!4212579))

(assert (=> d!1085295 m!4212379))

(declare-fun m!4212581 () Bool)

(assert (=> d!1085295 m!4212581))

(assert (=> b!3701424 m!4212575))

(assert (=> b!3701424 m!4212575))

(declare-fun m!4212583 () Bool)

(assert (=> b!3701424 m!4212583))

(assert (=> b!3701428 m!4212575))

(assert (=> b!3701428 m!4212575))

(assert (=> b!3701428 m!4212583))

(assert (=> bm!267376 m!4212379))

(assert (=> b!3701426 m!4212571))

(assert (=> b!3701238 d!1085295))

(declare-fun bm!267393 () Bool)

(declare-fun call!267403 () Unit!57306)

(declare-fun lemmaIsPrefixSameLengthThenSameList!680 (List!39463 List!39463 List!39463) Unit!57306)

(assert (=> bm!267393 (= call!267403 (lemmaIsPrefixSameLengthThenSameList!680 input!3172 Nil!39339 input!3172))))

(declare-fun bm!267394 () Bool)

(declare-fun call!267402 () Bool)

(assert (=> bm!267394 (= call!267402 (nullable!3740 (regex!5980 (h!44760 rules!3598))))))

(declare-fun bm!267395 () Bool)

(declare-fun call!267405 () Regex!10739)

(declare-fun call!267398 () C!21664)

(assert (=> bm!267395 (= call!267405 (derivativeStep!3282 (regex!5980 (h!44760 rules!3598)) call!267398))))

(declare-fun b!3701466 () Bool)

(declare-fun e!2292359 () Bool)

(declare-fun lt!1295324 () tuple2!39200)

(assert (=> b!3701466 (= e!2292359 (>= (size!29995 (_1!22734 lt!1295324)) (size!29995 Nil!39339)))))

(declare-fun d!1085297 () Bool)

(declare-fun e!2292361 () Bool)

(assert (=> d!1085297 e!2292361))

(declare-fun res!1505703 () Bool)

(assert (=> d!1085297 (=> (not res!1505703) (not e!2292361))))

(assert (=> d!1085297 (= res!1505703 (= (++!9766 (_1!22734 lt!1295324) (_2!22734 lt!1295324)) input!3172))))

(declare-fun e!2292365 () tuple2!39200)

(assert (=> d!1085297 (= lt!1295324 e!2292365)))

(declare-fun c!639566 () Bool)

(declare-fun lostCause!953 (Regex!10739) Bool)

(assert (=> d!1085297 (= c!639566 (lostCause!953 (regex!5980 (h!44760 rules!3598))))))

(declare-fun lt!1295343 () Unit!57306)

(declare-fun Unit!57308 () Unit!57306)

(assert (=> d!1085297 (= lt!1295343 Unit!57308)))

(declare-fun getSuffix!1771 (List!39463 List!39463) List!39463)

(assert (=> d!1085297 (= (getSuffix!1771 input!3172 Nil!39339) input!3172)))

(declare-fun lt!1295338 () Unit!57306)

(declare-fun lt!1295340 () Unit!57306)

(assert (=> d!1085297 (= lt!1295338 lt!1295340)))

(declare-fun lt!1295344 () List!39463)

(assert (=> d!1085297 (= input!3172 lt!1295344)))

(declare-fun lemmaSamePrefixThenSameSuffix!1545 (List!39463 List!39463 List!39463 List!39463 List!39463) Unit!57306)

(assert (=> d!1085297 (= lt!1295340 (lemmaSamePrefixThenSameSuffix!1545 Nil!39339 input!3172 Nil!39339 lt!1295344 input!3172))))

(assert (=> d!1085297 (= lt!1295344 (getSuffix!1771 input!3172 Nil!39339))))

(declare-fun lt!1295327 () Unit!57306)

(declare-fun lt!1295333 () Unit!57306)

(assert (=> d!1085297 (= lt!1295327 lt!1295333)))

(assert (=> d!1085297 (isPrefix!3287 Nil!39339 (++!9766 Nil!39339 input!3172))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2181 (List!39463 List!39463) Unit!57306)

(assert (=> d!1085297 (= lt!1295333 (lemmaConcatTwoListThenFirstIsPrefix!2181 Nil!39339 input!3172))))

(assert (=> d!1085297 (validRegex!4904 (regex!5980 (h!44760 rules!3598)))))

(assert (=> d!1085297 (= (findLongestMatchInner!1126 (regex!5980 (h!44760 rules!3598)) Nil!39339 (size!29995 Nil!39339) input!3172 input!3172 (size!29995 input!3172)) lt!1295324)))

(declare-fun b!3701467 () Bool)

(declare-fun c!639568 () Bool)

(assert (=> b!3701467 (= c!639568 call!267402)))

(declare-fun lt!1295348 () Unit!57306)

(declare-fun lt!1295336 () Unit!57306)

(assert (=> b!3701467 (= lt!1295348 lt!1295336)))

(declare-fun lt!1295330 () C!21664)

(declare-fun lt!1295334 () List!39463)

(assert (=> b!3701467 (= (++!9766 (++!9766 Nil!39339 (Cons!39339 lt!1295330 Nil!39339)) lt!1295334) input!3172)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1191 (List!39463 C!21664 List!39463 List!39463) Unit!57306)

(assert (=> b!3701467 (= lt!1295336 (lemmaMoveElementToOtherListKeepsConcatEq!1191 Nil!39339 lt!1295330 lt!1295334 input!3172))))

(assert (=> b!3701467 (= lt!1295334 (tail!5732 input!3172))))

(assert (=> b!3701467 (= lt!1295330 (head!7995 input!3172))))

(declare-fun lt!1295322 () Unit!57306)

(declare-fun lt!1295335 () Unit!57306)

(assert (=> b!3701467 (= lt!1295322 lt!1295335)))

(assert (=> b!3701467 (isPrefix!3287 (++!9766 Nil!39339 (Cons!39339 (head!7995 (getSuffix!1771 input!3172 Nil!39339)) Nil!39339)) input!3172)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!579 (List!39463 List!39463) Unit!57306)

(assert (=> b!3701467 (= lt!1295335 (lemmaAddHeadSuffixToPrefixStillPrefix!579 Nil!39339 input!3172))))

(declare-fun lt!1295341 () Unit!57306)

(declare-fun lt!1295326 () Unit!57306)

(assert (=> b!3701467 (= lt!1295341 lt!1295326)))

(assert (=> b!3701467 (= lt!1295326 (lemmaAddHeadSuffixToPrefixStillPrefix!579 Nil!39339 input!3172))))

(declare-fun lt!1295346 () List!39463)

(assert (=> b!3701467 (= lt!1295346 (++!9766 Nil!39339 (Cons!39339 (head!7995 input!3172) Nil!39339)))))

(declare-fun lt!1295332 () Unit!57306)

(declare-fun e!2292362 () Unit!57306)

(assert (=> b!3701467 (= lt!1295332 e!2292362)))

(declare-fun c!639564 () Bool)

(assert (=> b!3701467 (= c!639564 (= (size!29995 Nil!39339) (size!29995 input!3172)))))

(declare-fun lt!1295347 () Unit!57306)

(declare-fun lt!1295342 () Unit!57306)

(assert (=> b!3701467 (= lt!1295347 lt!1295342)))

(assert (=> b!3701467 (<= (size!29995 Nil!39339) (size!29995 input!3172))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!387 (List!39463 List!39463) Unit!57306)

(assert (=> b!3701467 (= lt!1295342 (lemmaIsPrefixThenSmallerEqSize!387 Nil!39339 input!3172))))

(declare-fun e!2292363 () tuple2!39200)

(declare-fun e!2292364 () tuple2!39200)

(assert (=> b!3701467 (= e!2292363 e!2292364)))

(declare-fun b!3701468 () Bool)

(assert (=> b!3701468 (= e!2292361 e!2292359)))

(declare-fun res!1505704 () Bool)

(assert (=> b!3701468 (=> res!1505704 e!2292359)))

(assert (=> b!3701468 (= res!1505704 (isEmpty!23447 (_1!22734 lt!1295324)))))

(declare-fun bm!267396 () Bool)

(assert (=> bm!267396 (= call!267398 (head!7995 input!3172))))

(declare-fun b!3701469 () Bool)

(declare-fun Unit!57309 () Unit!57306)

(assert (=> b!3701469 (= e!2292362 Unit!57309)))

(declare-fun lt!1295331 () Unit!57306)

(declare-fun call!267399 () Unit!57306)

(assert (=> b!3701469 (= lt!1295331 call!267399)))

(declare-fun call!267400 () Bool)

(assert (=> b!3701469 call!267400))

(declare-fun lt!1295328 () Unit!57306)

(assert (=> b!3701469 (= lt!1295328 lt!1295331)))

(declare-fun lt!1295325 () Unit!57306)

(assert (=> b!3701469 (= lt!1295325 call!267403)))

(assert (=> b!3701469 (= input!3172 Nil!39339)))

(declare-fun lt!1295329 () Unit!57306)

(assert (=> b!3701469 (= lt!1295329 lt!1295325)))

(assert (=> b!3701469 false))

(declare-fun b!3701470 () Bool)

(declare-fun c!639567 () Bool)

(assert (=> b!3701470 (= c!639567 call!267402)))

(declare-fun lt!1295339 () Unit!57306)

(declare-fun lt!1295323 () Unit!57306)

(assert (=> b!3701470 (= lt!1295339 lt!1295323)))

(assert (=> b!3701470 (= input!3172 Nil!39339)))

(assert (=> b!3701470 (= lt!1295323 call!267403)))

(declare-fun lt!1295345 () Unit!57306)

(declare-fun lt!1295349 () Unit!57306)

(assert (=> b!3701470 (= lt!1295345 lt!1295349)))

(assert (=> b!3701470 call!267400))

(assert (=> b!3701470 (= lt!1295349 call!267399)))

(declare-fun e!2292366 () tuple2!39200)

(assert (=> b!3701470 (= e!2292363 e!2292366)))

(declare-fun b!3701471 () Bool)

(declare-fun e!2292360 () tuple2!39200)

(assert (=> b!3701471 (= e!2292364 e!2292360)))

(declare-fun lt!1295337 () tuple2!39200)

(declare-fun call!267401 () tuple2!39200)

(assert (=> b!3701471 (= lt!1295337 call!267401)))

(declare-fun c!639565 () Bool)

(assert (=> b!3701471 (= c!639565 (isEmpty!23447 (_1!22734 lt!1295337)))))

(declare-fun b!3701472 () Bool)

(assert (=> b!3701472 (= e!2292365 e!2292363)))

(declare-fun c!639563 () Bool)

(assert (=> b!3701472 (= c!639563 (= (size!29995 Nil!39339) (size!29995 input!3172)))))

(declare-fun b!3701473 () Bool)

(declare-fun Unit!57310 () Unit!57306)

(assert (=> b!3701473 (= e!2292362 Unit!57310)))

(declare-fun b!3701474 () Bool)

(assert (=> b!3701474 (= e!2292364 call!267401)))

(declare-fun b!3701475 () Bool)

(assert (=> b!3701475 (= e!2292366 (tuple2!39201 Nil!39339 Nil!39339))))

(declare-fun bm!267397 () Bool)

(assert (=> bm!267397 (= call!267400 (isPrefix!3287 input!3172 input!3172))))

(declare-fun call!267404 () List!39463)

(declare-fun bm!267398 () Bool)

(assert (=> bm!267398 (= call!267401 (findLongestMatchInner!1126 call!267405 lt!1295346 (+ (size!29995 Nil!39339) 1) call!267404 input!3172 (size!29995 input!3172)))))

(declare-fun bm!267399 () Bool)

(assert (=> bm!267399 (= call!267404 (tail!5732 input!3172))))

(declare-fun b!3701476 () Bool)

(assert (=> b!3701476 (= e!2292360 lt!1295337)))

(declare-fun bm!267400 () Bool)

(assert (=> bm!267400 (= call!267399 (lemmaIsPrefixRefl!2072 input!3172 input!3172))))

(declare-fun b!3701477 () Bool)

(assert (=> b!3701477 (= e!2292360 (tuple2!39201 Nil!39339 input!3172))))

(declare-fun b!3701478 () Bool)

(assert (=> b!3701478 (= e!2292366 (tuple2!39201 Nil!39339 input!3172))))

(declare-fun b!3701479 () Bool)

(assert (=> b!3701479 (= e!2292365 (tuple2!39201 Nil!39339 input!3172))))

(assert (= (and d!1085297 c!639566) b!3701479))

(assert (= (and d!1085297 (not c!639566)) b!3701472))

(assert (= (and b!3701472 c!639563) b!3701470))

(assert (= (and b!3701472 (not c!639563)) b!3701467))

(assert (= (and b!3701470 c!639567) b!3701475))

(assert (= (and b!3701470 (not c!639567)) b!3701478))

(assert (= (and b!3701467 c!639564) b!3701469))

(assert (= (and b!3701467 (not c!639564)) b!3701473))

(assert (= (and b!3701467 c!639568) b!3701471))

(assert (= (and b!3701467 (not c!639568)) b!3701474))

(assert (= (and b!3701471 c!639565) b!3701477))

(assert (= (and b!3701471 (not c!639565)) b!3701476))

(assert (= (or b!3701471 b!3701474) bm!267399))

(assert (= (or b!3701471 b!3701474) bm!267396))

(assert (= (or b!3701471 b!3701474) bm!267395))

(assert (= (or b!3701471 b!3701474) bm!267398))

(assert (= (or b!3701470 b!3701469) bm!267400))

(assert (= (or b!3701470 b!3701467) bm!267394))

(assert (= (or b!3701470 b!3701469) bm!267393))

(assert (= (or b!3701470 b!3701469) bm!267397))

(assert (= (and d!1085297 res!1505703) b!3701468))

(assert (= (and b!3701468 (not res!1505704)) b!3701466))

(declare-fun m!4212585 () Bool)

(assert (=> bm!267393 m!4212585))

(declare-fun m!4212587 () Bool)

(assert (=> b!3701471 m!4212587))

(declare-fun m!4212589 () Bool)

(assert (=> bm!267399 m!4212589))

(declare-fun m!4212591 () Bool)

(assert (=> b!3701467 m!4212591))

(declare-fun m!4212593 () Bool)

(assert (=> b!3701467 m!4212593))

(declare-fun m!4212595 () Bool)

(assert (=> b!3701467 m!4212595))

(assert (=> b!3701467 m!4212595))

(declare-fun m!4212597 () Bool)

(assert (=> b!3701467 m!4212597))

(assert (=> b!3701467 m!4212285))

(declare-fun m!4212599 () Bool)

(assert (=> b!3701467 m!4212599))

(assert (=> b!3701467 m!4212599))

(declare-fun m!4212601 () Bool)

(assert (=> b!3701467 m!4212601))

(declare-fun m!4212603 () Bool)

(assert (=> b!3701467 m!4212603))

(assert (=> b!3701467 m!4212381))

(assert (=> b!3701467 m!4212589))

(assert (=> b!3701467 m!4212603))

(declare-fun m!4212605 () Bool)

(assert (=> b!3701467 m!4212605))

(declare-fun m!4212607 () Bool)

(assert (=> b!3701467 m!4212607))

(declare-fun m!4212609 () Bool)

(assert (=> b!3701467 m!4212609))

(declare-fun m!4212611 () Bool)

(assert (=> b!3701467 m!4212611))

(declare-fun m!4212613 () Bool)

(assert (=> d!1085297 m!4212613))

(declare-fun m!4212615 () Bool)

(assert (=> d!1085297 m!4212615))

(declare-fun m!4212617 () Bool)

(assert (=> d!1085297 m!4212617))

(assert (=> d!1085297 m!4212595))

(declare-fun m!4212619 () Bool)

(assert (=> d!1085297 m!4212619))

(assert (=> d!1085297 m!4212581))

(declare-fun m!4212621 () Bool)

(assert (=> d!1085297 m!4212621))

(assert (=> d!1085297 m!4212615))

(declare-fun m!4212623 () Bool)

(assert (=> d!1085297 m!4212623))

(assert (=> bm!267400 m!4212291))

(declare-fun m!4212625 () Bool)

(assert (=> b!3701466 m!4212625))

(assert (=> b!3701466 m!4212381))

(assert (=> bm!267398 m!4212285))

(declare-fun m!4212627 () Bool)

(assert (=> bm!267398 m!4212627))

(assert (=> bm!267397 m!4212289))

(declare-fun m!4212629 () Bool)

(assert (=> b!3701468 m!4212629))

(declare-fun m!4212631 () Bool)

(assert (=> bm!267395 m!4212631))

(assert (=> bm!267396 m!4212591))

(assert (=> bm!267394 m!4212579))

(assert (=> b!3701238 d!1085297))

(declare-fun d!1085299 () Bool)

(declare-fun lt!1295352 () Int)

(assert (=> d!1085299 (>= lt!1295352 0)))

(declare-fun e!2292369 () Int)

(assert (=> d!1085299 (= lt!1295352 e!2292369)))

(declare-fun c!639571 () Bool)

(assert (=> d!1085299 (= c!639571 ((_ is Nil!39339) Nil!39339))))

(assert (=> d!1085299 (= (size!29995 Nil!39339) lt!1295352)))

(declare-fun b!3701484 () Bool)

(assert (=> b!3701484 (= e!2292369 0)))

(declare-fun b!3701485 () Bool)

(assert (=> b!3701485 (= e!2292369 (+ 1 (size!29995 (t!302008 Nil!39339))))))

(assert (= (and d!1085299 c!639571) b!3701484))

(assert (= (and d!1085299 (not c!639571)) b!3701485))

(declare-fun m!4212633 () Bool)

(assert (=> b!3701485 m!4212633))

(assert (=> b!3701238 d!1085299))

(declare-fun d!1085301 () Bool)

(declare-fun lt!1295353 () Int)

(assert (=> d!1085301 (>= lt!1295353 0)))

(declare-fun e!2292370 () Int)

(assert (=> d!1085301 (= lt!1295353 e!2292370)))

(declare-fun c!639572 () Bool)

(assert (=> d!1085301 (= c!639572 ((_ is Nil!39339) input!3172))))

(assert (=> d!1085301 (= (size!29995 input!3172) lt!1295353)))

(declare-fun b!3701486 () Bool)

(assert (=> b!3701486 (= e!2292370 0)))

(declare-fun b!3701487 () Bool)

(assert (=> b!3701487 (= e!2292370 (+ 1 (size!29995 (t!302008 input!3172))))))

(assert (= (and d!1085301 c!639572) b!3701486))

(assert (= (and d!1085301 (not c!639572)) b!3701487))

(declare-fun m!4212635 () Bool)

(assert (=> b!3701487 m!4212635))

(assert (=> b!3701238 d!1085301))

(declare-fun d!1085303 () Bool)

(assert (=> d!1085303 true))

(declare-fun lt!1295491 () Bool)

(assert (=> d!1085303 (= lt!1295491 (rulesValidInductive!2153 thiss!25322 lt!1295131))))

(declare-fun lambda!125078 () Int)

(declare-fun forall!8183 (List!39464 Int) Bool)

(assert (=> d!1085303 (= lt!1295491 (forall!8183 lt!1295131 lambda!125078))))

(assert (=> d!1085303 (= (rulesValid!2311 thiss!25322 lt!1295131) lt!1295491)))

(declare-fun bs!574456 () Bool)

(assert (= bs!574456 d!1085303))

(declare-fun m!4212843 () Bool)

(assert (=> bs!574456 m!4212843))

(declare-fun m!4212845 () Bool)

(assert (=> bs!574456 m!4212845))

(assert (=> d!1085249 d!1085303))

(declare-fun d!1085387 () Bool)

(declare-fun res!1505779 () Bool)

(declare-fun e!2292482 () Bool)

(assert (=> d!1085387 (=> (not res!1505779) (not e!2292482))))

(assert (=> d!1085387 (= res!1505779 (rulesValid!2311 thiss!25322 (t!302009 (t!302009 rules!3598))))))

(assert (=> d!1085387 (= (rulesInvariant!4966 thiss!25322 (t!302009 (t!302009 rules!3598))) e!2292482)))

(declare-fun b!3701661 () Bool)

(assert (=> b!3701661 (= e!2292482 (noDuplicateTag!2307 thiss!25322 (t!302009 (t!302009 rules!3598)) Nil!39342))))

(assert (= (and d!1085387 res!1505779) b!3701661))

(declare-fun m!4212851 () Bool)

(assert (=> d!1085387 m!4212851))

(declare-fun m!4212855 () Bool)

(assert (=> b!3701661 m!4212855))

(assert (=> b!3701324 d!1085387))

(declare-fun d!1085389 () Bool)

(assert (=> d!1085389 (rulesInvariant!4966 thiss!25322 (t!302009 (t!302009 rules!3598)))))

(declare-fun lt!1295495 () Unit!57306)

(assert (=> d!1085389 (= lt!1295495 (choose!22135 thiss!25322 (h!44760 (t!302009 rules!3598)) (t!302009 (t!302009 rules!3598))))))

(assert (=> d!1085389 (rulesInvariant!4966 thiss!25322 (Cons!39340 (h!44760 (t!302009 rules!3598)) (t!302009 (t!302009 rules!3598))))))

(assert (=> d!1085389 (= (lemmaInvariantOnRulesThenOnTail!676 thiss!25322 (h!44760 (t!302009 rules!3598)) (t!302009 (t!302009 rules!3598))) lt!1295495)))

(declare-fun bs!574457 () Bool)

(assert (= bs!574457 d!1085389))

(assert (=> bs!574457 m!4212469))

(declare-fun m!4212863 () Bool)

(assert (=> bs!574457 m!4212863))

(declare-fun m!4212865 () Bool)

(assert (=> bs!574457 m!4212865))

(assert (=> b!3701324 d!1085389))

(declare-fun b!3701662 () Bool)

(declare-fun e!2292484 () Bool)

(declare-fun lt!1295497 () Option!8523)

(assert (=> b!3701662 (= e!2292484 (= (tag!6812 (get!13100 lt!1295497)) (tag!6812 (rule!8848 token!544))))))

(declare-fun b!3701663 () Bool)

(declare-fun e!2292483 () Option!8523)

(assert (=> b!3701663 (= e!2292483 None!8522)))

(declare-fun b!3701664 () Bool)

(declare-fun e!2292486 () Option!8523)

(assert (=> b!3701664 (= e!2292486 (Some!8522 (h!44760 (t!302009 (t!302009 rules!3598)))))))

(declare-fun b!3701665 () Bool)

(assert (=> b!3701665 (= e!2292486 e!2292483)))

(declare-fun c!639617 () Bool)

(assert (=> b!3701665 (= c!639617 (and ((_ is Cons!39340) (t!302009 (t!302009 rules!3598))) (not (= (tag!6812 (h!44760 (t!302009 (t!302009 rules!3598)))) (tag!6812 (rule!8848 token!544))))))))

(declare-fun d!1085393 () Bool)

(declare-fun e!2292485 () Bool)

(assert (=> d!1085393 e!2292485))

(declare-fun res!1505780 () Bool)

(assert (=> d!1085393 (=> res!1505780 e!2292485)))

(assert (=> d!1085393 (= res!1505780 (isEmpty!23448 lt!1295497))))

(assert (=> d!1085393 (= lt!1295497 e!2292486)))

(declare-fun c!639618 () Bool)

(assert (=> d!1085393 (= c!639618 (and ((_ is Cons!39340) (t!302009 (t!302009 rules!3598))) (= (tag!6812 (h!44760 (t!302009 (t!302009 rules!3598)))) (tag!6812 (rule!8848 token!544)))))))

(assert (=> d!1085393 (rulesInvariant!4966 thiss!25322 (t!302009 (t!302009 rules!3598)))))

(assert (=> d!1085393 (= (getRuleFromTag!1520 thiss!25322 (t!302009 (t!302009 rules!3598)) (tag!6812 (rule!8848 token!544))) lt!1295497)))

(declare-fun b!3701666 () Bool)

(assert (=> b!3701666 (= e!2292485 e!2292484)))

(declare-fun res!1505781 () Bool)

(assert (=> b!3701666 (=> (not res!1505781) (not e!2292484))))

(assert (=> b!3701666 (= res!1505781 (contains!7841 (t!302009 (t!302009 rules!3598)) (get!13100 lt!1295497)))))

(declare-fun b!3701667 () Bool)

(declare-fun lt!1295496 () Unit!57306)

(declare-fun lt!1295498 () Unit!57306)

(assert (=> b!3701667 (= lt!1295496 lt!1295498)))

(assert (=> b!3701667 (rulesInvariant!4966 thiss!25322 (t!302009 (t!302009 (t!302009 rules!3598))))))

(assert (=> b!3701667 (= lt!1295498 (lemmaInvariantOnRulesThenOnTail!676 thiss!25322 (h!44760 (t!302009 (t!302009 rules!3598))) (t!302009 (t!302009 (t!302009 rules!3598)))))))

(assert (=> b!3701667 (= e!2292483 (getRuleFromTag!1520 thiss!25322 (t!302009 (t!302009 (t!302009 rules!3598))) (tag!6812 (rule!8848 token!544))))))

(assert (= (and d!1085393 c!639618) b!3701664))

(assert (= (and d!1085393 (not c!639618)) b!3701665))

(assert (= (and b!3701665 c!639617) b!3701667))

(assert (= (and b!3701665 (not c!639617)) b!3701663))

(assert (= (and d!1085393 (not res!1505780)) b!3701666))

(assert (= (and b!3701666 res!1505781) b!3701662))

(declare-fun m!4212869 () Bool)

(assert (=> b!3701662 m!4212869))

(declare-fun m!4212871 () Bool)

(assert (=> d!1085393 m!4212871))

(assert (=> d!1085393 m!4212469))

(assert (=> b!3701666 m!4212869))

(assert (=> b!3701666 m!4212869))

(declare-fun m!4212873 () Bool)

(assert (=> b!3701666 m!4212873))

(declare-fun m!4212875 () Bool)

(assert (=> b!3701667 m!4212875))

(declare-fun m!4212877 () Bool)

(assert (=> b!3701667 m!4212877))

(declare-fun m!4212879 () Bool)

(assert (=> b!3701667 m!4212879))

(assert (=> b!3701324 d!1085393))

(declare-fun d!1085395 () Bool)

(declare-fun res!1505786 () Bool)

(declare-fun e!2292494 () Bool)

(assert (=> d!1085395 (=> res!1505786 e!2292494)))

(assert (=> d!1085395 (= res!1505786 ((_ is Nil!39340) (t!302009 rules!3598)))))

(assert (=> d!1085395 (= (noDuplicateTag!2307 thiss!25322 (t!302009 rules!3598) Nil!39342) e!2292494)))

(declare-fun b!3701676 () Bool)

(declare-fun e!2292495 () Bool)

(assert (=> b!3701676 (= e!2292494 e!2292495)))

(declare-fun res!1505787 () Bool)

(assert (=> b!3701676 (=> (not res!1505787) (not e!2292495))))

(declare-fun contains!7842 (List!39466 String!44384) Bool)

(assert (=> b!3701676 (= res!1505787 (not (contains!7842 Nil!39342 (tag!6812 (h!44760 (t!302009 rules!3598))))))))

(declare-fun b!3701677 () Bool)

(assert (=> b!3701677 (= e!2292495 (noDuplicateTag!2307 thiss!25322 (t!302009 (t!302009 rules!3598)) (Cons!39342 (tag!6812 (h!44760 (t!302009 rules!3598))) Nil!39342)))))

(assert (= (and d!1085395 (not res!1505786)) b!3701676))

(assert (= (and b!3701676 res!1505787) b!3701677))

(declare-fun m!4212889 () Bool)

(assert (=> b!3701676 m!4212889))

(declare-fun m!4212891 () Bool)

(assert (=> b!3701677 m!4212891))

(assert (=> b!3701331 d!1085395))

(declare-fun d!1085405 () Bool)

(declare-fun lt!1295506 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5683 (List!39464) (InoxSet Rule!11760))

(assert (=> d!1085405 (= lt!1295506 (select (content!5683 lt!1295131) (get!13100 lt!1295255)))))

(declare-fun e!2292501 () Bool)

(assert (=> d!1085405 (= lt!1295506 e!2292501)))

(declare-fun res!1505792 () Bool)

(assert (=> d!1085405 (=> (not res!1505792) (not e!2292501))))

(assert (=> d!1085405 (= res!1505792 ((_ is Cons!39340) lt!1295131))))

(assert (=> d!1085405 (= (contains!7841 lt!1295131 (get!13100 lt!1295255)) lt!1295506)))

(declare-fun b!3701684 () Bool)

(declare-fun e!2292500 () Bool)

(assert (=> b!3701684 (= e!2292501 e!2292500)))

(declare-fun res!1505793 () Bool)

(assert (=> b!3701684 (=> res!1505793 e!2292500)))

(assert (=> b!3701684 (= res!1505793 (= (h!44760 lt!1295131) (get!13100 lt!1295255)))))

(declare-fun b!3701685 () Bool)

(assert (=> b!3701685 (= e!2292500 (contains!7841 (t!302009 lt!1295131) (get!13100 lt!1295255)))))

(assert (= (and d!1085405 res!1505792) b!3701684))

(assert (= (and b!3701684 (not res!1505793)) b!3701685))

(declare-fun m!4212895 () Bool)

(assert (=> d!1085405 m!4212895))

(assert (=> d!1085405 m!4212519))

(declare-fun m!4212897 () Bool)

(assert (=> d!1085405 m!4212897))

(assert (=> b!3701685 m!4212519))

(declare-fun m!4212899 () Bool)

(assert (=> b!3701685 m!4212899))

(assert (=> b!3701357 d!1085405))

(declare-fun d!1085411 () Bool)

(assert (=> d!1085411 (= (get!13100 lt!1295255) (v!38482 lt!1295255))))

(assert (=> b!3701357 d!1085411))

(declare-fun d!1085413 () Bool)

(assert (=> d!1085413 (= (isEmpty!23447 (tail!5732 (list!14691 (charsOf!3969 token!544)))) ((_ is Nil!39339) (tail!5732 (list!14691 (charsOf!3969 token!544)))))))

(assert (=> b!3701337 d!1085413))

(declare-fun d!1085415 () Bool)

(assert (=> d!1085415 (= (tail!5732 (list!14691 (charsOf!3969 token!544))) (t!302008 (list!14691 (charsOf!3969 token!544))))))

(assert (=> b!3701337 d!1085415))

(declare-fun d!1085417 () Bool)

(declare-fun isBalanced!3522 (Conc!12077) Bool)

(assert (=> d!1085417 (= (inv!52872 (dynLambda!17184 (toChars!8175 (transformation!5980 (rule!8848 token!544))) (value!190884 token!544))) (isBalanced!3522 (c!639472 (dynLambda!17184 (toChars!8175 (transformation!5980 (rule!8848 token!544))) (value!190884 token!544)))))))

(declare-fun bs!574460 () Bool)

(assert (= bs!574460 d!1085417))

(declare-fun m!4212901 () Bool)

(assert (=> bs!574460 m!4212901))

(assert (=> tb!214267 d!1085417))

(declare-fun b!3701706 () Bool)

(declare-fun e!2292515 () List!39463)

(assert (=> b!3701706 (= e!2292515 Nil!39339)))

(declare-fun b!3701708 () Bool)

(declare-fun e!2292516 () List!39463)

(declare-fun list!14695 (IArray!24159) List!39463)

(assert (=> b!3701708 (= e!2292516 (list!14695 (xs!15279 (c!639472 (charsOf!3969 token!544)))))))

(declare-fun b!3701707 () Bool)

(assert (=> b!3701707 (= e!2292515 e!2292516)))

(declare-fun c!639626 () Bool)

(assert (=> b!3701707 (= c!639626 ((_ is Leaf!18678) (c!639472 (charsOf!3969 token!544))))))

(declare-fun d!1085419 () Bool)

(declare-fun c!639625 () Bool)

(assert (=> d!1085419 (= c!639625 ((_ is Empty!12077) (c!639472 (charsOf!3969 token!544))))))

(assert (=> d!1085419 (= (list!14693 (c!639472 (charsOf!3969 token!544))) e!2292515)))

(declare-fun b!3701709 () Bool)

(assert (=> b!3701709 (= e!2292516 (++!9766 (list!14693 (left!30617 (c!639472 (charsOf!3969 token!544)))) (list!14693 (right!30947 (c!639472 (charsOf!3969 token!544))))))))

(assert (= (and d!1085419 c!639625) b!3701706))

(assert (= (and d!1085419 (not c!639625)) b!3701707))

(assert (= (and b!3701707 c!639626) b!3701708))

(assert (= (and b!3701707 (not c!639626)) b!3701709))

(declare-fun m!4212907 () Bool)

(assert (=> b!3701708 m!4212907))

(declare-fun m!4212909 () Bool)

(assert (=> b!3701709 m!4212909))

(declare-fun m!4212911 () Bool)

(assert (=> b!3701709 m!4212911))

(assert (=> b!3701709 m!4212909))

(assert (=> b!3701709 m!4212911))

(declare-fun m!4212913 () Bool)

(assert (=> b!3701709 m!4212913))

(assert (=> d!1085229 d!1085419))

(assert (=> bm!267371 d!1085191))

(declare-fun d!1085425 () Bool)

(assert (=> d!1085425 (= (isEmpty!23447 (list!14691 (charsOf!3969 token!544))) ((_ is Nil!39339) (list!14691 (charsOf!3969 token!544))))))

(assert (=> bm!267374 d!1085425))

(assert (=> b!3701353 d!1085411))

(declare-fun d!1085427 () Bool)

(assert (=> d!1085427 true))

(declare-fun order!21709 () Int)

(declare-fun order!21707 () Int)

(declare-fun lambda!125087 () Int)

(declare-fun dynLambda!17190 (Int Int) Int)

(declare-fun dynLambda!17191 (Int Int) Int)

(assert (=> d!1085427 (< (dynLambda!17190 order!21707 (toValue!8316 (transformation!5980 (h!44760 rules!3598)))) (dynLambda!17191 order!21709 lambda!125087))))

(declare-fun Forall2!990 (Int) Bool)

(assert (=> d!1085427 (= (equivClasses!2453 (toChars!8175 (transformation!5980 (h!44760 rules!3598))) (toValue!8316 (transformation!5980 (h!44760 rules!3598)))) (Forall2!990 lambda!125087))))

(declare-fun bs!574463 () Bool)

(assert (= bs!574463 d!1085427))

(declare-fun m!4212917 () Bool)

(assert (=> bs!574463 m!4212917))

(assert (=> b!3701249 d!1085427))

(declare-fun d!1085433 () Bool)

(declare-fun lt!1295516 () Bool)

(assert (=> d!1085433 (= lt!1295516 (select (content!5683 rules!3598) (get!13100 lt!1295252)))))

(declare-fun e!2292526 () Bool)

(assert (=> d!1085433 (= lt!1295516 e!2292526)))

(declare-fun res!1505814 () Bool)

(assert (=> d!1085433 (=> (not res!1505814) (not e!2292526))))

(assert (=> d!1085433 (= res!1505814 ((_ is Cons!39340) rules!3598))))

(assert (=> d!1085433 (= (contains!7841 rules!3598 (get!13100 lt!1295252)) lt!1295516)))

(declare-fun b!3701720 () Bool)

(declare-fun e!2292525 () Bool)

(assert (=> b!3701720 (= e!2292526 e!2292525)))

(declare-fun res!1505815 () Bool)

(assert (=> b!3701720 (=> res!1505815 e!2292525)))

(assert (=> b!3701720 (= res!1505815 (= (h!44760 rules!3598) (get!13100 lt!1295252)))))

(declare-fun b!3701721 () Bool)

(assert (=> b!3701721 (= e!2292525 (contains!7841 (t!302009 rules!3598) (get!13100 lt!1295252)))))

(assert (= (and d!1085433 res!1505814) b!3701720))

(assert (= (and b!3701720 (not res!1505815)) b!3701721))

(declare-fun m!4212921 () Bool)

(assert (=> d!1085433 m!4212921))

(assert (=> d!1085433 m!4212513))

(declare-fun m!4212923 () Bool)

(assert (=> d!1085433 m!4212923))

(assert (=> b!3701721 m!4212513))

(declare-fun m!4212925 () Bool)

(assert (=> b!3701721 m!4212925))

(assert (=> b!3701351 d!1085433))

(declare-fun d!1085439 () Bool)

(assert (=> d!1085439 (= (get!13100 lt!1295252) (v!38482 lt!1295252))))

(assert (=> b!3701351 d!1085439))

(declare-fun d!1085441 () Bool)

(assert (=> d!1085441 (= (isEmpty!23447 (originalCharacters!6688 token!544)) ((_ is Nil!39339) (originalCharacters!6688 token!544)))))

(assert (=> d!1085235 d!1085441))

(declare-fun d!1085443 () Bool)

(assert (=> d!1085443 (= (isEmpty!23448 lt!1295124) (not ((_ is Some!8522) lt!1295124)))))

(assert (=> d!1085257 d!1085443))

(declare-fun b!3701749 () Bool)

(declare-fun e!2292539 () List!39463)

(assert (=> b!3701749 (= e!2292539 (Cons!39339 (h!44759 (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295193))))) (++!9766 (t!302008 (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295193))))) (_2!22732 (get!13101 lt!1295193)))))))

(declare-fun b!3701748 () Bool)

(assert (=> b!3701748 (= e!2292539 (_2!22732 (get!13101 lt!1295193)))))

(declare-fun b!3701751 () Bool)

(declare-fun e!2292538 () Bool)

(declare-fun lt!1295520 () List!39463)

(assert (=> b!3701751 (= e!2292538 (or (not (= (_2!22732 (get!13101 lt!1295193)) Nil!39339)) (= lt!1295520 (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295193)))))))))

(declare-fun b!3701750 () Bool)

(declare-fun res!1505828 () Bool)

(assert (=> b!3701750 (=> (not res!1505828) (not e!2292538))))

(assert (=> b!3701750 (= res!1505828 (= (size!29995 lt!1295520) (+ (size!29995 (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295193))))) (size!29995 (_2!22732 (get!13101 lt!1295193))))))))

(declare-fun d!1085445 () Bool)

(assert (=> d!1085445 e!2292538))

(declare-fun res!1505829 () Bool)

(assert (=> d!1085445 (=> (not res!1505829) (not e!2292538))))

(declare-fun content!5684 (List!39463) (InoxSet C!21664))

(assert (=> d!1085445 (= res!1505829 (= (content!5684 lt!1295520) ((_ map or) (content!5684 (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295193))))) (content!5684 (_2!22732 (get!13101 lt!1295193))))))))

(assert (=> d!1085445 (= lt!1295520 e!2292539)))

(declare-fun c!639632 () Bool)

(assert (=> d!1085445 (= c!639632 ((_ is Nil!39339) (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295193))))))))

(assert (=> d!1085445 (= (++!9766 (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295193)))) (_2!22732 (get!13101 lt!1295193))) lt!1295520)))

(assert (= (and d!1085445 c!639632) b!3701748))

(assert (= (and d!1085445 (not c!639632)) b!3701749))

(assert (= (and d!1085445 res!1505829) b!3701750))

(assert (= (and b!3701750 res!1505828) b!3701751))

(declare-fun m!4212943 () Bool)

(assert (=> b!3701749 m!4212943))

(declare-fun m!4212945 () Bool)

(assert (=> b!3701750 m!4212945))

(assert (=> b!3701750 m!4212281))

(declare-fun m!4212947 () Bool)

(assert (=> b!3701750 m!4212947))

(assert (=> b!3701750 m!4212283))

(declare-fun m!4212949 () Bool)

(assert (=> d!1085445 m!4212949))

(assert (=> d!1085445 m!4212281))

(declare-fun m!4212951 () Bool)

(assert (=> d!1085445 m!4212951))

(declare-fun m!4212953 () Bool)

(assert (=> d!1085445 m!4212953))

(assert (=> b!3701129 d!1085445))

(declare-fun d!1085451 () Bool)

(assert (=> d!1085451 (= (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295193)))) (list!14693 (c!639472 (charsOf!3969 (_1!22732 (get!13101 lt!1295193))))))))

(declare-fun bs!574467 () Bool)

(assert (= bs!574467 d!1085451))

(declare-fun m!4212955 () Bool)

(assert (=> bs!574467 m!4212955))

(assert (=> b!3701129 d!1085451))

(declare-fun d!1085453 () Bool)

(declare-fun lt!1295521 () BalanceConc!23768)

(assert (=> d!1085453 (= (list!14691 lt!1295521) (originalCharacters!6688 (_1!22732 (get!13101 lt!1295193))))))

(assert (=> d!1085453 (= lt!1295521 (dynLambda!17184 (toChars!8175 (transformation!5980 (rule!8848 (_1!22732 (get!13101 lt!1295193))))) (value!190884 (_1!22732 (get!13101 lt!1295193)))))))

(assert (=> d!1085453 (= (charsOf!3969 (_1!22732 (get!13101 lt!1295193))) lt!1295521)))

(declare-fun b_lambda!109789 () Bool)

(assert (=> (not b_lambda!109789) (not d!1085453)))

(declare-fun tb!214297 () Bool)

(declare-fun t!302051 () Bool)

(assert (=> (and b!3700963 (= (toChars!8175 (transformation!5980 (rule!8848 token!544))) (toChars!8175 (transformation!5980 (rule!8848 (_1!22732 (get!13101 lt!1295193)))))) t!302051) tb!214297))

(declare-fun b!3701752 () Bool)

(declare-fun e!2292540 () Bool)

(declare-fun tp!1125169 () Bool)

(assert (=> b!3701752 (= e!2292540 (and (inv!52871 (c!639472 (dynLambda!17184 (toChars!8175 (transformation!5980 (rule!8848 (_1!22732 (get!13101 lt!1295193))))) (value!190884 (_1!22732 (get!13101 lt!1295193)))))) tp!1125169))))

(declare-fun result!261108 () Bool)

(assert (=> tb!214297 (= result!261108 (and (inv!52872 (dynLambda!17184 (toChars!8175 (transformation!5980 (rule!8848 (_1!22732 (get!13101 lt!1295193))))) (value!190884 (_1!22732 (get!13101 lt!1295193))))) e!2292540))))

(assert (= tb!214297 b!3701752))

(declare-fun m!4212957 () Bool)

(assert (=> b!3701752 m!4212957))

(declare-fun m!4212959 () Bool)

(assert (=> tb!214297 m!4212959))

(assert (=> d!1085453 t!302051))

(declare-fun b_and!276821 () Bool)

(assert (= b_and!276783 (and (=> t!302051 result!261108) b_and!276821)))

(declare-fun tb!214299 () Bool)

(declare-fun t!302053 () Bool)

(assert (=> (and b!3700966 (= (toChars!8175 (transformation!5980 (h!44760 rules!3598))) (toChars!8175 (transformation!5980 (rule!8848 (_1!22732 (get!13101 lt!1295193)))))) t!302053) tb!214299))

(declare-fun result!261110 () Bool)

(assert (= result!261110 result!261108))

(assert (=> d!1085453 t!302053))

(declare-fun b_and!276823 () Bool)

(assert (= b_and!276785 (and (=> t!302053 result!261110) b_and!276823)))

(declare-fun tb!214301 () Bool)

(declare-fun t!302055 () Bool)

(assert (=> (and b!3701403 (= (toChars!8175 (transformation!5980 (h!44760 (t!302009 rules!3598)))) (toChars!8175 (transformation!5980 (rule!8848 (_1!22732 (get!13101 lt!1295193)))))) t!302055) tb!214301))

(declare-fun result!261112 () Bool)

(assert (= result!261112 result!261108))

(assert (=> d!1085453 t!302055))

(declare-fun b_and!276825 () Bool)

(assert (= b_and!276789 (and (=> t!302055 result!261112) b_and!276825)))

(declare-fun m!4212961 () Bool)

(assert (=> d!1085453 m!4212961))

(declare-fun m!4212963 () Bool)

(assert (=> d!1085453 m!4212963))

(assert (=> b!3701129 d!1085453))

(declare-fun d!1085455 () Bool)

(assert (=> d!1085455 (= (get!13101 lt!1295193) (v!38483 lt!1295193))))

(assert (=> b!3701129 d!1085455))

(declare-fun d!1085457 () Bool)

(assert (=> d!1085457 (= (get!13100 (getRuleFromTag!1520 thiss!25322 (t!302009 rules!3598) (tag!6812 (rule!8848 token!544)))) (v!38482 (getRuleFromTag!1520 thiss!25322 (t!302009 rules!3598) (tag!6812 (rule!8848 token!544)))))))

(assert (=> b!3701330 d!1085457))

(assert (=> b!3701330 d!1085239))

(declare-fun d!1085459 () Bool)

(declare-fun lt!1295522 () Int)

(assert (=> d!1085459 (>= lt!1295522 0)))

(declare-fun e!2292541 () Int)

(assert (=> d!1085459 (= lt!1295522 e!2292541)))

(declare-fun c!639633 () Bool)

(assert (=> d!1085459 (= c!639633 ((_ is Nil!39339) (originalCharacters!6688 token!544)))))

(assert (=> d!1085459 (= (size!29995 (originalCharacters!6688 token!544)) lt!1295522)))

(declare-fun b!3701753 () Bool)

(assert (=> b!3701753 (= e!2292541 0)))

(declare-fun b!3701754 () Bool)

(assert (=> b!3701754 (= e!2292541 (+ 1 (size!29995 (t!302008 (originalCharacters!6688 token!544)))))))

(assert (= (and d!1085459 c!639633) b!3701753))

(assert (= (and d!1085459 (not c!639633)) b!3701754))

(declare-fun m!4212965 () Bool)

(assert (=> b!3701754 m!4212965))

(assert (=> b!3701306 d!1085459))

(declare-fun d!1085461 () Bool)

(assert (=> d!1085461 (= (isEmpty!23448 lt!1295128) (not ((_ is Some!8522) lt!1295128)))))

(assert (=> d!1085241 d!1085461))

(assert (=> b!3701127 d!1085455))

(declare-fun d!1085463 () Bool)

(declare-fun dynLambda!17192 (Int BalanceConc!23768) TokenValue!6210)

(assert (=> d!1085463 (= (apply!9406 (transformation!5980 (rule!8848 (_1!22732 (get!13101 lt!1295193)))) (seqFromList!4485 (originalCharacters!6688 (_1!22732 (get!13101 lt!1295193))))) (dynLambda!17192 (toValue!8316 (transformation!5980 (rule!8848 (_1!22732 (get!13101 lt!1295193))))) (seqFromList!4485 (originalCharacters!6688 (_1!22732 (get!13101 lt!1295193))))))))

(declare-fun b_lambda!109791 () Bool)

(assert (=> (not b_lambda!109791) (not d!1085463)))

(declare-fun t!302057 () Bool)

(declare-fun tb!214303 () Bool)

(assert (=> (and b!3700963 (= (toValue!8316 (transformation!5980 (rule!8848 token!544))) (toValue!8316 (transformation!5980 (rule!8848 (_1!22732 (get!13101 lt!1295193)))))) t!302057) tb!214303))

(declare-fun result!261114 () Bool)

(assert (=> tb!214303 (= result!261114 (inv!21 (dynLambda!17192 (toValue!8316 (transformation!5980 (rule!8848 (_1!22732 (get!13101 lt!1295193))))) (seqFromList!4485 (originalCharacters!6688 (_1!22732 (get!13101 lt!1295193)))))))))

(declare-fun m!4212967 () Bool)

(assert (=> tb!214303 m!4212967))

(assert (=> d!1085463 t!302057))

(declare-fun b_and!276827 () Bool)

(assert (= b_and!276759 (and (=> t!302057 result!261114) b_and!276827)))

(declare-fun tb!214305 () Bool)

(declare-fun t!302059 () Bool)

(assert (=> (and b!3700966 (= (toValue!8316 (transformation!5980 (h!44760 rules!3598))) (toValue!8316 (transformation!5980 (rule!8848 (_1!22732 (get!13101 lt!1295193)))))) t!302059) tb!214305))

(declare-fun result!261118 () Bool)

(assert (= result!261118 result!261114))

(assert (=> d!1085463 t!302059))

(declare-fun b_and!276829 () Bool)

(assert (= b_and!276763 (and (=> t!302059 result!261118) b_and!276829)))

(declare-fun t!302061 () Bool)

(declare-fun tb!214307 () Bool)

(assert (=> (and b!3701403 (= (toValue!8316 (transformation!5980 (h!44760 (t!302009 rules!3598)))) (toValue!8316 (transformation!5980 (rule!8848 (_1!22732 (get!13101 lt!1295193)))))) t!302061) tb!214307))

(declare-fun result!261120 () Bool)

(assert (= result!261120 result!261114))

(assert (=> d!1085463 t!302061))

(declare-fun b_and!276831 () Bool)

(assert (= b_and!276787 (and (=> t!302061 result!261120) b_and!276831)))

(assert (=> d!1085463 m!4212271))

(declare-fun m!4212969 () Bool)

(assert (=> d!1085463 m!4212969))

(assert (=> b!3701127 d!1085463))

(declare-fun d!1085465 () Bool)

(declare-fun fromListB!2067 (List!39463) BalanceConc!23768)

(assert (=> d!1085465 (= (seqFromList!4485 (originalCharacters!6688 (_1!22732 (get!13101 lt!1295193)))) (fromListB!2067 (originalCharacters!6688 (_1!22732 (get!13101 lt!1295193)))))))

(declare-fun bs!574468 () Bool)

(assert (= bs!574468 d!1085465))

(declare-fun m!4212971 () Bool)

(assert (=> bs!574468 m!4212971))

(assert (=> b!3701127 d!1085465))

(declare-fun d!1085467 () Bool)

(declare-fun res!1505830 () Bool)

(declare-fun e!2292555 () Bool)

(assert (=> d!1085467 (=> res!1505830 e!2292555)))

(assert (=> d!1085467 (= res!1505830 ((_ is Nil!39340) rules!3598))))

(assert (=> d!1085467 (= (noDuplicateTag!2307 thiss!25322 rules!3598 Nil!39342) e!2292555)))

(declare-fun b!3701777 () Bool)

(declare-fun e!2292556 () Bool)

(assert (=> b!3701777 (= e!2292555 e!2292556)))

(declare-fun res!1505831 () Bool)

(assert (=> b!3701777 (=> (not res!1505831) (not e!2292556))))

(assert (=> b!3701777 (= res!1505831 (not (contains!7842 Nil!39342 (tag!6812 (h!44760 rules!3598)))))))

(declare-fun b!3701778 () Bool)

(assert (=> b!3701778 (= e!2292556 (noDuplicateTag!2307 thiss!25322 (t!302009 rules!3598) (Cons!39342 (tag!6812 (h!44760 rules!3598)) Nil!39342)))))

(assert (= (and d!1085467 (not res!1505830)) b!3701777))

(assert (= (and b!3701777 res!1505831) b!3701778))

(declare-fun m!4212973 () Bool)

(assert (=> b!3701777 m!4212973))

(declare-fun m!4212975 () Bool)

(assert (=> b!3701778 m!4212975))

(assert (=> b!3701253 d!1085467))

(declare-fun b!3701779 () Bool)

(declare-fun e!2292558 () Bool)

(declare-fun lt!1295527 () Option!8524)

(assert (=> b!3701779 (= e!2292558 (contains!7841 (t!302009 rules!3598) (rule!8848 (_1!22732 (get!13101 lt!1295527)))))))

(declare-fun b!3701780 () Bool)

(declare-fun res!1505836 () Bool)

(assert (=> b!3701780 (=> (not res!1505836) (not e!2292558))))

(assert (=> b!3701780 (= res!1505836 (< (size!29995 (_2!22732 (get!13101 lt!1295527))) (size!29995 input!3172)))))

(declare-fun d!1085469 () Bool)

(declare-fun e!2292559 () Bool)

(assert (=> d!1085469 e!2292559))

(declare-fun res!1505837 () Bool)

(assert (=> d!1085469 (=> res!1505837 e!2292559)))

(assert (=> d!1085469 (= res!1505837 (isEmpty!23446 lt!1295527))))

(declare-fun e!2292557 () Option!8524)

(assert (=> d!1085469 (= lt!1295527 e!2292557)))

(declare-fun c!639644 () Bool)

(assert (=> d!1085469 (= c!639644 (and ((_ is Cons!39340) (t!302009 rules!3598)) ((_ is Nil!39340) (t!302009 (t!302009 rules!3598)))))))

(declare-fun lt!1295526 () Unit!57306)

(declare-fun lt!1295525 () Unit!57306)

(assert (=> d!1085469 (= lt!1295526 lt!1295525)))

(assert (=> d!1085469 (isPrefix!3287 input!3172 input!3172)))

(assert (=> d!1085469 (= lt!1295525 (lemmaIsPrefixRefl!2072 input!3172 input!3172))))

(assert (=> d!1085469 (rulesValidInductive!2153 thiss!25322 (t!302009 rules!3598))))

(assert (=> d!1085469 (= (maxPrefix!3091 thiss!25322 (t!302009 rules!3598) input!3172) lt!1295527)))

(declare-fun b!3701781 () Bool)

(declare-fun lt!1295528 () Option!8524)

(declare-fun lt!1295529 () Option!8524)

(assert (=> b!3701781 (= e!2292557 (ite (and ((_ is None!8523) lt!1295528) ((_ is None!8523) lt!1295529)) None!8523 (ite ((_ is None!8523) lt!1295529) lt!1295528 (ite ((_ is None!8523) lt!1295528) lt!1295529 (ite (>= (size!29992 (_1!22732 (v!38483 lt!1295528))) (size!29992 (_1!22732 (v!38483 lt!1295529)))) lt!1295528 lt!1295529)))))))

(declare-fun call!267449 () Option!8524)

(assert (=> b!3701781 (= lt!1295528 call!267449)))

(assert (=> b!3701781 (= lt!1295529 (maxPrefix!3091 thiss!25322 (t!302009 (t!302009 rules!3598)) input!3172))))

(declare-fun b!3701782 () Bool)

(declare-fun res!1505832 () Bool)

(assert (=> b!3701782 (=> (not res!1505832) (not e!2292558))))

(assert (=> b!3701782 (= res!1505832 (= (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295527)))) (originalCharacters!6688 (_1!22732 (get!13101 lt!1295527)))))))

(declare-fun b!3701783 () Bool)

(declare-fun res!1505833 () Bool)

(assert (=> b!3701783 (=> (not res!1505833) (not e!2292558))))

(assert (=> b!3701783 (= res!1505833 (= (value!190884 (_1!22732 (get!13101 lt!1295527))) (apply!9406 (transformation!5980 (rule!8848 (_1!22732 (get!13101 lt!1295527)))) (seqFromList!4485 (originalCharacters!6688 (_1!22732 (get!13101 lt!1295527)))))))))

(declare-fun b!3701784 () Bool)

(assert (=> b!3701784 (= e!2292559 e!2292558)))

(declare-fun res!1505835 () Bool)

(assert (=> b!3701784 (=> (not res!1505835) (not e!2292558))))

(assert (=> b!3701784 (= res!1505835 (isDefined!6713 lt!1295527))))

(declare-fun b!3701785 () Bool)

(declare-fun res!1505838 () Bool)

(assert (=> b!3701785 (=> (not res!1505838) (not e!2292558))))

(assert (=> b!3701785 (= res!1505838 (= (++!9766 (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295527)))) (_2!22732 (get!13101 lt!1295527))) input!3172))))

(declare-fun b!3701786 () Bool)

(assert (=> b!3701786 (= e!2292557 call!267449)))

(declare-fun b!3701787 () Bool)

(declare-fun res!1505834 () Bool)

(assert (=> b!3701787 (=> (not res!1505834) (not e!2292558))))

(assert (=> b!3701787 (= res!1505834 (matchR!5272 (regex!5980 (rule!8848 (_1!22732 (get!13101 lt!1295527)))) (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295527))))))))

(declare-fun bm!267444 () Bool)

(assert (=> bm!267444 (= call!267449 (maxPrefixOneRule!2201 thiss!25322 (h!44760 (t!302009 rules!3598)) input!3172))))

(assert (= (and d!1085469 c!639644) b!3701786))

(assert (= (and d!1085469 (not c!639644)) b!3701781))

(assert (= (or b!3701786 b!3701781) bm!267444))

(assert (= (and d!1085469 (not res!1505837)) b!3701784))

(assert (= (and b!3701784 res!1505835) b!3701782))

(assert (= (and b!3701782 res!1505832) b!3701780))

(assert (= (and b!3701780 res!1505836) b!3701785))

(assert (= (and b!3701785 res!1505838) b!3701783))

(assert (= (and b!3701783 res!1505833) b!3701787))

(assert (= (and b!3701787 res!1505834) b!3701779))

(declare-fun m!4212977 () Bool)

(assert (=> b!3701783 m!4212977))

(declare-fun m!4212979 () Bool)

(assert (=> b!3701783 m!4212979))

(assert (=> b!3701783 m!4212979))

(declare-fun m!4212981 () Bool)

(assert (=> b!3701783 m!4212981))

(declare-fun m!4212983 () Bool)

(assert (=> b!3701781 m!4212983))

(declare-fun m!4212985 () Bool)

(assert (=> b!3701784 m!4212985))

(assert (=> b!3701782 m!4212977))

(declare-fun m!4212987 () Bool)

(assert (=> b!3701782 m!4212987))

(assert (=> b!3701782 m!4212987))

(declare-fun m!4212989 () Bool)

(assert (=> b!3701782 m!4212989))

(declare-fun m!4212991 () Bool)

(assert (=> bm!267444 m!4212991))

(assert (=> b!3701780 m!4212977))

(declare-fun m!4212993 () Bool)

(assert (=> b!3701780 m!4212993))

(assert (=> b!3701780 m!4212285))

(declare-fun m!4212995 () Bool)

(assert (=> d!1085469 m!4212995))

(assert (=> d!1085469 m!4212289))

(assert (=> d!1085469 m!4212291))

(declare-fun m!4212997 () Bool)

(assert (=> d!1085469 m!4212997))

(assert (=> b!3701779 m!4212977))

(declare-fun m!4212999 () Bool)

(assert (=> b!3701779 m!4212999))

(assert (=> b!3701787 m!4212977))

(assert (=> b!3701787 m!4212987))

(assert (=> b!3701787 m!4212987))

(assert (=> b!3701787 m!4212989))

(assert (=> b!3701787 m!4212989))

(declare-fun m!4213001 () Bool)

(assert (=> b!3701787 m!4213001))

(assert (=> b!3701785 m!4212977))

(assert (=> b!3701785 m!4212987))

(assert (=> b!3701785 m!4212987))

(assert (=> b!3701785 m!4212989))

(assert (=> b!3701785 m!4212989))

(declare-fun m!4213003 () Bool)

(assert (=> b!3701785 m!4213003))

(assert (=> b!3701125 d!1085469))

(declare-fun d!1085471 () Bool)

(assert (=> d!1085471 (= (get!13101 lt!1295223) (v!38483 lt!1295223))))

(assert (=> b!3701244 d!1085471))

(assert (=> b!3701286 d!1085413))

(assert (=> b!3701286 d!1085415))

(declare-fun bs!574469 () Bool)

(declare-fun d!1085473 () Bool)

(assert (= bs!574469 (and d!1085473 d!1085427)))

(declare-fun lambda!125091 () Int)

(assert (=> bs!574469 (= (= (toValue!8316 (transformation!5980 (rule!8848 token!544))) (toValue!8316 (transformation!5980 (h!44760 rules!3598)))) (= lambda!125091 lambda!125087))))

(assert (=> d!1085473 true))

(assert (=> d!1085473 (< (dynLambda!17190 order!21707 (toValue!8316 (transformation!5980 (rule!8848 token!544)))) (dynLambda!17191 order!21709 lambda!125091))))

(assert (=> d!1085473 (= (equivClasses!2453 (toChars!8175 (transformation!5980 (rule!8848 token!544))) (toValue!8316 (transformation!5980 (rule!8848 token!544)))) (Forall2!990 lambda!125091))))

(declare-fun bs!574470 () Bool)

(assert (= bs!574470 d!1085473))

(declare-fun m!4213005 () Bool)

(assert (=> bs!574470 m!4213005))

(assert (=> b!3701250 d!1085473))

(declare-fun d!1085475 () Bool)

(assert (=> d!1085475 (= (head!7995 (list!14691 (charsOf!3969 token!544))) (h!44759 (list!14691 (charsOf!3969 token!544))))))

(assert (=> b!3701284 d!1085475))

(declare-fun d!1085479 () Bool)

(declare-fun charsToBigInt!0 (List!39462 Int) Int)

(assert (=> d!1085479 (= (inv!15 (value!190884 token!544)) (= (charsToBigInt!0 (text!43919 (value!190884 token!544)) 0) (value!190879 (value!190884 token!544))))))

(declare-fun bs!574471 () Bool)

(assert (= bs!574471 d!1085479))

(declare-fun m!4213027 () Bool)

(assert (=> bs!574471 m!4213027))

(assert (=> b!3701372 d!1085479))

(declare-fun d!1085485 () Bool)

(declare-fun lt!1295533 () Bool)

(assert (=> d!1085485 (= lt!1295533 (select (content!5683 rules!3598) (rule!8848 (_1!22732 (get!13101 lt!1295193)))))))

(declare-fun e!2292582 () Bool)

(assert (=> d!1085485 (= lt!1295533 e!2292582)))

(declare-fun res!1505854 () Bool)

(assert (=> d!1085485 (=> (not res!1505854) (not e!2292582))))

(assert (=> d!1085485 (= res!1505854 ((_ is Cons!39340) rules!3598))))

(assert (=> d!1085485 (= (contains!7841 rules!3598 (rule!8848 (_1!22732 (get!13101 lt!1295193)))) lt!1295533)))

(declare-fun b!3701823 () Bool)

(declare-fun e!2292581 () Bool)

(assert (=> b!3701823 (= e!2292582 e!2292581)))

(declare-fun res!1505855 () Bool)

(assert (=> b!3701823 (=> res!1505855 e!2292581)))

(assert (=> b!3701823 (= res!1505855 (= (h!44760 rules!3598) (rule!8848 (_1!22732 (get!13101 lt!1295193)))))))

(declare-fun b!3701824 () Bool)

(assert (=> b!3701824 (= e!2292581 (contains!7841 (t!302009 rules!3598) (rule!8848 (_1!22732 (get!13101 lt!1295193)))))))

(assert (= (and d!1085485 res!1505854) b!3701823))

(assert (= (and b!3701823 (not res!1505855)) b!3701824))

(assert (=> d!1085485 m!4212921))

(declare-fun m!4213031 () Bool)

(assert (=> d!1085485 m!4213031))

(declare-fun m!4213033 () Bool)

(assert (=> b!3701824 m!4213033))

(assert (=> b!3701123 d!1085485))

(assert (=> b!3701123 d!1085455))

(declare-fun b!3701826 () Bool)

(declare-fun e!2292584 () List!39463)

(assert (=> b!3701826 (= e!2292584 (Cons!39339 (h!44759 (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295223))))) (++!9766 (t!302008 (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295223))))) (_2!22732 (get!13101 lt!1295223)))))))

(declare-fun b!3701825 () Bool)

(assert (=> b!3701825 (= e!2292584 (_2!22732 (get!13101 lt!1295223)))))

(declare-fun b!3701828 () Bool)

(declare-fun e!2292583 () Bool)

(declare-fun lt!1295534 () List!39463)

(assert (=> b!3701828 (= e!2292583 (or (not (= (_2!22732 (get!13101 lt!1295223)) Nil!39339)) (= lt!1295534 (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295223)))))))))

(declare-fun b!3701827 () Bool)

(declare-fun res!1505856 () Bool)

(assert (=> b!3701827 (=> (not res!1505856) (not e!2292583))))

(assert (=> b!3701827 (= res!1505856 (= (size!29995 lt!1295534) (+ (size!29995 (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295223))))) (size!29995 (_2!22732 (get!13101 lt!1295223))))))))

(declare-fun d!1085487 () Bool)

(assert (=> d!1085487 e!2292583))

(declare-fun res!1505857 () Bool)

(assert (=> d!1085487 (=> (not res!1505857) (not e!2292583))))

(assert (=> d!1085487 (= res!1505857 (= (content!5684 lt!1295534) ((_ map or) (content!5684 (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295223))))) (content!5684 (_2!22732 (get!13101 lt!1295223))))))))

(assert (=> d!1085487 (= lt!1295534 e!2292584)))

(declare-fun c!639655 () Bool)

(assert (=> d!1085487 (= c!639655 ((_ is Nil!39339) (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295223))))))))

(assert (=> d!1085487 (= (++!9766 (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295223)))) (_2!22732 (get!13101 lt!1295223))) lt!1295534)))

(assert (= (and d!1085487 c!639655) b!3701825))

(assert (= (and d!1085487 (not c!639655)) b!3701826))

(assert (= (and d!1085487 res!1505857) b!3701827))

(assert (= (and b!3701827 res!1505856) b!3701828))

(declare-fun m!4213041 () Bool)

(assert (=> b!3701826 m!4213041))

(declare-fun m!4213043 () Bool)

(assert (=> b!3701827 m!4213043))

(assert (=> b!3701827 m!4212409))

(declare-fun m!4213045 () Bool)

(assert (=> b!3701827 m!4213045))

(assert (=> b!3701827 m!4212393))

(declare-fun m!4213047 () Bool)

(assert (=> d!1085487 m!4213047))

(assert (=> d!1085487 m!4212409))

(declare-fun m!4213049 () Bool)

(assert (=> d!1085487 m!4213049))

(declare-fun m!4213051 () Bool)

(assert (=> d!1085487 m!4213051))

(assert (=> b!3701242 d!1085487))

(declare-fun d!1085491 () Bool)

(assert (=> d!1085491 (= (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295223)))) (list!14693 (c!639472 (charsOf!3969 (_1!22732 (get!13101 lt!1295223))))))))

(declare-fun bs!574472 () Bool)

(assert (= bs!574472 d!1085491))

(declare-fun m!4213053 () Bool)

(assert (=> bs!574472 m!4213053))

(assert (=> b!3701242 d!1085491))

(declare-fun d!1085493 () Bool)

(declare-fun lt!1295536 () BalanceConc!23768)

(assert (=> d!1085493 (= (list!14691 lt!1295536) (originalCharacters!6688 (_1!22732 (get!13101 lt!1295223))))))

(assert (=> d!1085493 (= lt!1295536 (dynLambda!17184 (toChars!8175 (transformation!5980 (rule!8848 (_1!22732 (get!13101 lt!1295223))))) (value!190884 (_1!22732 (get!13101 lt!1295223)))))))

(assert (=> d!1085493 (= (charsOf!3969 (_1!22732 (get!13101 lt!1295223))) lt!1295536)))

(declare-fun b_lambda!109793 () Bool)

(assert (=> (not b_lambda!109793) (not d!1085493)))

(declare-fun tb!214309 () Bool)

(declare-fun t!302063 () Bool)

(assert (=> (and b!3700963 (= (toChars!8175 (transformation!5980 (rule!8848 token!544))) (toChars!8175 (transformation!5980 (rule!8848 (_1!22732 (get!13101 lt!1295223)))))) t!302063) tb!214309))

(declare-fun b!3701839 () Bool)

(declare-fun e!2292590 () Bool)

(declare-fun tp!1125170 () Bool)

(assert (=> b!3701839 (= e!2292590 (and (inv!52871 (c!639472 (dynLambda!17184 (toChars!8175 (transformation!5980 (rule!8848 (_1!22732 (get!13101 lt!1295223))))) (value!190884 (_1!22732 (get!13101 lt!1295223)))))) tp!1125170))))

(declare-fun result!261122 () Bool)

(assert (=> tb!214309 (= result!261122 (and (inv!52872 (dynLambda!17184 (toChars!8175 (transformation!5980 (rule!8848 (_1!22732 (get!13101 lt!1295223))))) (value!190884 (_1!22732 (get!13101 lt!1295223))))) e!2292590))))

(assert (= tb!214309 b!3701839))

(declare-fun m!4213063 () Bool)

(assert (=> b!3701839 m!4213063))

(declare-fun m!4213065 () Bool)

(assert (=> tb!214309 m!4213065))

(assert (=> d!1085493 t!302063))

(declare-fun b_and!276833 () Bool)

(assert (= b_and!276821 (and (=> t!302063 result!261122) b_and!276833)))

(declare-fun t!302065 () Bool)

(declare-fun tb!214311 () Bool)

(assert (=> (and b!3700966 (= (toChars!8175 (transformation!5980 (h!44760 rules!3598))) (toChars!8175 (transformation!5980 (rule!8848 (_1!22732 (get!13101 lt!1295223)))))) t!302065) tb!214311))

(declare-fun result!261124 () Bool)

(assert (= result!261124 result!261122))

(assert (=> d!1085493 t!302065))

(declare-fun b_and!276835 () Bool)

(assert (= b_and!276823 (and (=> t!302065 result!261124) b_and!276835)))

(declare-fun tb!214313 () Bool)

(declare-fun t!302067 () Bool)

(assert (=> (and b!3701403 (= (toChars!8175 (transformation!5980 (h!44760 (t!302009 rules!3598)))) (toChars!8175 (transformation!5980 (rule!8848 (_1!22732 (get!13101 lt!1295223)))))) t!302067) tb!214313))

(declare-fun result!261126 () Bool)

(assert (= result!261126 result!261122))

(assert (=> d!1085493 t!302067))

(declare-fun b_and!276837 () Bool)

(assert (= b_and!276825 (and (=> t!302067 result!261126) b_and!276837)))

(declare-fun m!4213067 () Bool)

(assert (=> d!1085493 m!4213067))

(declare-fun m!4213069 () Bool)

(assert (=> d!1085493 m!4213069))

(assert (=> b!3701242 d!1085493))

(assert (=> b!3701242 d!1085471))

(assert (=> b!3701240 d!1085471))

(declare-fun d!1085497 () Bool)

(declare-fun lt!1295538 () Int)

(assert (=> d!1085497 (>= lt!1295538 0)))

(declare-fun e!2292591 () Int)

(assert (=> d!1085497 (= lt!1295538 e!2292591)))

(declare-fun c!639661 () Bool)

(assert (=> d!1085497 (= c!639661 ((_ is Nil!39339) (originalCharacters!6688 (_1!22732 (get!13101 lt!1295223)))))))

(assert (=> d!1085497 (= (size!29995 (originalCharacters!6688 (_1!22732 (get!13101 lt!1295223)))) lt!1295538)))

(declare-fun b!3701840 () Bool)

(assert (=> b!3701840 (= e!2292591 0)))

(declare-fun b!3701841 () Bool)

(assert (=> b!3701841 (= e!2292591 (+ 1 (size!29995 (t!302008 (originalCharacters!6688 (_1!22732 (get!13101 lt!1295223)))))))))

(assert (= (and d!1085497 c!639661) b!3701840))

(assert (= (and d!1085497 (not c!639661)) b!3701841))

(declare-fun m!4213075 () Bool)

(assert (=> b!3701841 m!4213075))

(assert (=> b!3701240 d!1085497))

(assert (=> b!3701282 d!1085413))

(assert (=> b!3701282 d!1085415))

(declare-fun d!1085503 () Bool)

(assert (=> d!1085503 (= (isEmpty!23446 lt!1295223) (not ((_ is Some!8523) lt!1295223)))))

(assert (=> d!1085191 d!1085503))

(declare-fun d!1085505 () Bool)

(assert (=> d!1085505 (= (isEmpty!23447 (_1!22734 lt!1295225)) ((_ is Nil!39339) (_1!22734 lt!1295225)))))

(assert (=> d!1085191 d!1085505))

(declare-fun d!1085507 () Bool)

(declare-fun lt!1295565 () tuple2!39200)

(assert (=> d!1085507 (= (++!9766 (_1!22734 lt!1295565) (_2!22734 lt!1295565)) input!3172)))

(declare-fun sizeTr!233 (List!39463 Int) Int)

(assert (=> d!1085507 (= lt!1295565 (findLongestMatchInner!1126 (regex!5980 (h!44760 rules!3598)) Nil!39339 0 input!3172 input!3172 (sizeTr!233 input!3172 0)))))

(declare-fun lt!1295562 () Unit!57306)

(declare-fun lt!1295561 () Unit!57306)

(assert (=> d!1085507 (= lt!1295562 lt!1295561)))

(declare-fun lt!1295564 () List!39463)

(declare-fun lt!1295558 () Int)

(assert (=> d!1085507 (= (sizeTr!233 lt!1295564 lt!1295558) (+ (size!29995 lt!1295564) lt!1295558))))

(declare-fun lemmaSizeTrEqualsSize!232 (List!39463 Int) Unit!57306)

(assert (=> d!1085507 (= lt!1295561 (lemmaSizeTrEqualsSize!232 lt!1295564 lt!1295558))))

(assert (=> d!1085507 (= lt!1295558 0)))

(assert (=> d!1085507 (= lt!1295564 Nil!39339)))

(declare-fun lt!1295559 () Unit!57306)

(declare-fun lt!1295563 () Unit!57306)

(assert (=> d!1085507 (= lt!1295559 lt!1295563)))

(declare-fun lt!1295560 () Int)

(assert (=> d!1085507 (= (sizeTr!233 input!3172 lt!1295560) (+ (size!29995 input!3172) lt!1295560))))

(assert (=> d!1085507 (= lt!1295563 (lemmaSizeTrEqualsSize!232 input!3172 lt!1295560))))

(assert (=> d!1085507 (= lt!1295560 0)))

(assert (=> d!1085507 (validRegex!4904 (regex!5980 (h!44760 rules!3598)))))

(assert (=> d!1085507 (= (findLongestMatch!1041 (regex!5980 (h!44760 rules!3598)) input!3172) lt!1295565)))

(declare-fun bs!574488 () Bool)

(assert (= bs!574488 d!1085507))

(declare-fun m!4213137 () Bool)

(assert (=> bs!574488 m!4213137))

(declare-fun m!4213139 () Bool)

(assert (=> bs!574488 m!4213139))

(assert (=> bs!574488 m!4212285))

(declare-fun m!4213141 () Bool)

(assert (=> bs!574488 m!4213141))

(declare-fun m!4213143 () Bool)

(assert (=> bs!574488 m!4213143))

(assert (=> bs!574488 m!4212581))

(declare-fun m!4213145 () Bool)

(assert (=> bs!574488 m!4213145))

(assert (=> bs!574488 m!4213141))

(declare-fun m!4213147 () Bool)

(assert (=> bs!574488 m!4213147))

(declare-fun m!4213149 () Bool)

(assert (=> bs!574488 m!4213149))

(declare-fun m!4213151 () Bool)

(assert (=> bs!574488 m!4213151))

(assert (=> d!1085191 d!1085507))

(declare-fun d!1085539 () Bool)

(declare-fun res!1505884 () Bool)

(declare-fun e!2292616 () Bool)

(assert (=> d!1085539 (=> (not res!1505884) (not e!2292616))))

(assert (=> d!1085539 (= res!1505884 (validRegex!4904 (regex!5980 (h!44760 rules!3598))))))

(assert (=> d!1085539 (= (ruleValid!2164 thiss!25322 (h!44760 rules!3598)) e!2292616)))

(declare-fun b!3701883 () Bool)

(declare-fun res!1505885 () Bool)

(assert (=> b!3701883 (=> (not res!1505885) (not e!2292616))))

(assert (=> b!3701883 (= res!1505885 (not (nullable!3740 (regex!5980 (h!44760 rules!3598)))))))

(declare-fun b!3701884 () Bool)

(assert (=> b!3701884 (= e!2292616 (not (= (tag!6812 (h!44760 rules!3598)) (String!44385 ""))))))

(assert (= (and d!1085539 res!1505884) b!3701883))

(assert (= (and b!3701883 res!1505885) b!3701884))

(assert (=> d!1085539 m!4212581))

(assert (=> b!3701883 m!4212579))

(assert (=> d!1085191 d!1085539))

(declare-fun d!1085545 () Bool)

(declare-fun nullableFct!1049 (Regex!10739) Bool)

(assert (=> d!1085545 (= (nullable!3740 (regex!5980 lt!1295127)) (nullableFct!1049 (regex!5980 lt!1295127)))))

(declare-fun bs!574490 () Bool)

(assert (= bs!574490 d!1085545))

(declare-fun m!4213171 () Bool)

(assert (=> bs!574490 m!4213171))

(assert (=> b!3701346 d!1085545))

(declare-fun d!1085551 () Bool)

(assert (=> d!1085551 (= (isEmpty!23448 lt!1295255) (not ((_ is Some!8522) lt!1295255)))))

(assert (=> d!1085261 d!1085551))

(assert (=> d!1085261 d!1085249))

(assert (=> bm!267375 d!1085425))

(declare-fun d!1085553 () Bool)

(assert (=> d!1085553 (= (isEmpty!23446 lt!1295130) (not ((_ is Some!8523) lt!1295130)))))

(assert (=> d!1085189 d!1085553))

(assert (=> d!1085245 d!1085247))

(declare-fun d!1085555 () Bool)

(assert (=> d!1085555 (rulesInvariant!4966 thiss!25322 (t!302009 rules!3598))))

(assert (=> d!1085555 true))

(declare-fun _$66!548 () Unit!57306)

(assert (=> d!1085555 (= (choose!22135 thiss!25322 (h!44760 rules!3598) (t!302009 rules!3598)) _$66!548)))

(declare-fun bs!574491 () Bool)

(assert (= bs!574491 d!1085555))

(assert (=> bs!574491 m!4212103))

(assert (=> d!1085245 d!1085555))

(declare-fun d!1085561 () Bool)

(declare-fun res!1505895 () Bool)

(declare-fun e!2292625 () Bool)

(assert (=> d!1085561 (=> (not res!1505895) (not e!2292625))))

(assert (=> d!1085561 (= res!1505895 (rulesValid!2311 thiss!25322 (Cons!39340 (h!44760 rules!3598) (t!302009 rules!3598))))))

(assert (=> d!1085561 (= (rulesInvariant!4966 thiss!25322 (Cons!39340 (h!44760 rules!3598) (t!302009 rules!3598))) e!2292625)))

(declare-fun b!3701900 () Bool)

(assert (=> b!3701900 (= e!2292625 (noDuplicateTag!2307 thiss!25322 (Cons!39340 (h!44760 rules!3598) (t!302009 rules!3598)) Nil!39342))))

(assert (= (and d!1085561 res!1505895) b!3701900))

(declare-fun m!4213181 () Bool)

(assert (=> d!1085561 m!4213181))

(declare-fun m!4213183 () Bool)

(assert (=> b!3701900 m!4213183))

(assert (=> d!1085245 d!1085561))

(declare-fun d!1085563 () Bool)

(assert (=> d!1085563 (= (nullable!3740 (regex!5980 lt!1295126)) (nullableFct!1049 (regex!5980 lt!1295126)))))

(declare-fun bs!574492 () Bool)

(assert (= bs!574492 d!1085563))

(declare-fun m!4213185 () Bool)

(assert (=> bs!574492 m!4213185))

(assert (=> b!3701295 d!1085563))

(declare-fun bs!574493 () Bool)

(declare-fun d!1085565 () Bool)

(assert (= bs!574493 (and d!1085565 d!1085303)))

(declare-fun lambda!125095 () Int)

(assert (=> bs!574493 (= lambda!125095 lambda!125078)))

(assert (=> d!1085565 true))

(declare-fun lt!1295569 () Bool)

(assert (=> d!1085565 (= lt!1295569 (rulesValidInductive!2153 thiss!25322 rules!3598))))

(assert (=> d!1085565 (= lt!1295569 (forall!8183 rules!3598 lambda!125095))))

(assert (=> d!1085565 (= (rulesValid!2311 thiss!25322 rules!3598) lt!1295569)))

(declare-fun bs!574494 () Bool)

(assert (= bs!574494 d!1085565))

(assert (=> bs!574494 m!4212293))

(declare-fun m!4213187 () Bool)

(assert (=> bs!574494 m!4213187))

(assert (=> d!1085225 d!1085565))

(declare-fun d!1085567 () Bool)

(declare-fun res!1505896 () Bool)

(declare-fun e!2292626 () Bool)

(assert (=> d!1085567 (=> (not res!1505896) (not e!2292626))))

(assert (=> d!1085567 (= res!1505896 (rulesValid!2311 thiss!25322 (t!302009 lt!1295131)))))

(assert (=> d!1085567 (= (rulesInvariant!4966 thiss!25322 (t!302009 lt!1295131)) e!2292626)))

(declare-fun b!3701901 () Bool)

(assert (=> b!3701901 (= e!2292626 (noDuplicateTag!2307 thiss!25322 (t!302009 lt!1295131) Nil!39342))))

(assert (= (and d!1085567 res!1505896) b!3701901))

(declare-fun m!4213189 () Bool)

(assert (=> d!1085567 m!4213189))

(declare-fun m!4213191 () Bool)

(assert (=> b!3701901 m!4213191))

(assert (=> b!3701358 d!1085567))

(declare-fun d!1085569 () Bool)

(assert (=> d!1085569 (rulesInvariant!4966 thiss!25322 (t!302009 lt!1295131))))

(declare-fun lt!1295570 () Unit!57306)

(assert (=> d!1085569 (= lt!1295570 (choose!22135 thiss!25322 (h!44760 lt!1295131) (t!302009 lt!1295131)))))

(assert (=> d!1085569 (rulesInvariant!4966 thiss!25322 (Cons!39340 (h!44760 lt!1295131) (t!302009 lt!1295131)))))

(assert (=> d!1085569 (= (lemmaInvariantOnRulesThenOnTail!676 thiss!25322 (h!44760 lt!1295131) (t!302009 lt!1295131)) lt!1295570)))

(declare-fun bs!574495 () Bool)

(assert (= bs!574495 d!1085569))

(assert (=> bs!574495 m!4212525))

(declare-fun m!4213193 () Bool)

(assert (=> bs!574495 m!4213193))

(declare-fun m!4213195 () Bool)

(assert (=> bs!574495 m!4213195))

(assert (=> b!3701358 d!1085569))

(declare-fun b!3701902 () Bool)

(declare-fun e!2292628 () Bool)

(declare-fun lt!1295572 () Option!8523)

(assert (=> b!3701902 (= e!2292628 (= (tag!6812 (get!13100 lt!1295572)) (tag!6812 (rule!8848 token!544))))))

(declare-fun b!3701903 () Bool)

(declare-fun e!2292627 () Option!8523)

(assert (=> b!3701903 (= e!2292627 None!8522)))

(declare-fun b!3701904 () Bool)

(declare-fun e!2292630 () Option!8523)

(assert (=> b!3701904 (= e!2292630 (Some!8522 (h!44760 (t!302009 lt!1295131))))))

(declare-fun b!3701905 () Bool)

(assert (=> b!3701905 (= e!2292630 e!2292627)))

(declare-fun c!639672 () Bool)

(assert (=> b!3701905 (= c!639672 (and ((_ is Cons!39340) (t!302009 lt!1295131)) (not (= (tag!6812 (h!44760 (t!302009 lt!1295131))) (tag!6812 (rule!8848 token!544))))))))

(declare-fun d!1085571 () Bool)

(declare-fun e!2292629 () Bool)

(assert (=> d!1085571 e!2292629))

(declare-fun res!1505897 () Bool)

(assert (=> d!1085571 (=> res!1505897 e!2292629)))

(assert (=> d!1085571 (= res!1505897 (isEmpty!23448 lt!1295572))))

(assert (=> d!1085571 (= lt!1295572 e!2292630)))

(declare-fun c!639673 () Bool)

(assert (=> d!1085571 (= c!639673 (and ((_ is Cons!39340) (t!302009 lt!1295131)) (= (tag!6812 (h!44760 (t!302009 lt!1295131))) (tag!6812 (rule!8848 token!544)))))))

(assert (=> d!1085571 (rulesInvariant!4966 thiss!25322 (t!302009 lt!1295131))))

(assert (=> d!1085571 (= (getRuleFromTag!1520 thiss!25322 (t!302009 lt!1295131) (tag!6812 (rule!8848 token!544))) lt!1295572)))

(declare-fun b!3701906 () Bool)

(assert (=> b!3701906 (= e!2292629 e!2292628)))

(declare-fun res!1505898 () Bool)

(assert (=> b!3701906 (=> (not res!1505898) (not e!2292628))))

(assert (=> b!3701906 (= res!1505898 (contains!7841 (t!302009 lt!1295131) (get!13100 lt!1295572)))))

(declare-fun b!3701907 () Bool)

(declare-fun lt!1295571 () Unit!57306)

(declare-fun lt!1295573 () Unit!57306)

(assert (=> b!3701907 (= lt!1295571 lt!1295573)))

(assert (=> b!3701907 (rulesInvariant!4966 thiss!25322 (t!302009 (t!302009 lt!1295131)))))

(assert (=> b!3701907 (= lt!1295573 (lemmaInvariantOnRulesThenOnTail!676 thiss!25322 (h!44760 (t!302009 lt!1295131)) (t!302009 (t!302009 lt!1295131))))))

(assert (=> b!3701907 (= e!2292627 (getRuleFromTag!1520 thiss!25322 (t!302009 (t!302009 lt!1295131)) (tag!6812 (rule!8848 token!544))))))

(assert (= (and d!1085571 c!639673) b!3701904))

(assert (= (and d!1085571 (not c!639673)) b!3701905))

(assert (= (and b!3701905 c!639672) b!3701907))

(assert (= (and b!3701905 (not c!639672)) b!3701903))

(assert (= (and d!1085571 (not res!1505897)) b!3701906))

(assert (= (and b!3701906 res!1505898) b!3701902))

(declare-fun m!4213199 () Bool)

(assert (=> b!3701902 m!4213199))

(declare-fun m!4213201 () Bool)

(assert (=> d!1085571 m!4213201))

(assert (=> d!1085571 m!4212525))

(assert (=> b!3701906 m!4213199))

(assert (=> b!3701906 m!4213199))

(declare-fun m!4213203 () Bool)

(assert (=> b!3701906 m!4213203))

(declare-fun m!4213205 () Bool)

(assert (=> b!3701907 m!4213205))

(declare-fun m!4213209 () Bool)

(assert (=> b!3701907 m!4213209))

(declare-fun m!4213211 () Bool)

(assert (=> b!3701907 m!4213211))

(assert (=> b!3701358 d!1085571))

(declare-fun d!1085577 () Bool)

(assert (=> d!1085577 true))

(declare-fun order!21713 () Int)

(declare-fun order!21711 () Int)

(declare-fun lambda!125099 () Int)

(declare-fun dynLambda!17193 (Int Int) Int)

(declare-fun dynLambda!17194 (Int Int) Int)

(assert (=> d!1085577 (< (dynLambda!17193 order!21711 (toChars!8175 (transformation!5980 (h!44760 rules!3598)))) (dynLambda!17194 order!21713 lambda!125099))))

(assert (=> d!1085577 true))

(assert (=> d!1085577 (< (dynLambda!17190 order!21707 (toValue!8316 (transformation!5980 (h!44760 rules!3598)))) (dynLambda!17194 order!21713 lambda!125099))))

(declare-fun Forall!1392 (Int) Bool)

(assert (=> d!1085577 (= (semiInverseModEq!2554 (toChars!8175 (transformation!5980 (h!44760 rules!3598))) (toValue!8316 (transformation!5980 (h!44760 rules!3598)))) (Forall!1392 lambda!125099))))

(declare-fun bs!574501 () Bool)

(assert (= bs!574501 d!1085577))

(declare-fun m!4213231 () Bool)

(assert (=> bs!574501 m!4213231))

(assert (=> d!1085215 d!1085577))

(declare-fun d!1085581 () Bool)

(assert (=> d!1085581 (= (isEmpty!23448 lt!1295252) (not ((_ is Some!8522) lt!1295252)))))

(assert (=> d!1085259 d!1085581))

(assert (=> d!1085259 d!1085225))

(declare-fun d!1085583 () Bool)

(assert (=> d!1085583 (= (isDefined!6712 (getRuleFromTag!1520 thiss!25322 (t!302009 rules!3598) (tag!6812 (rule!8848 token!544)))) (not (isEmpty!23448 (getRuleFromTag!1520 thiss!25322 (t!302009 rules!3598) (tag!6812 (rule!8848 token!544))))))))

(declare-fun bs!574502 () Bool)

(assert (= bs!574502 d!1085583))

(assert (=> bs!574502 m!4212101))

(declare-fun m!4213233 () Bool)

(assert (=> bs!574502 m!4213233))

(assert (=> d!1085243 d!1085583))

(assert (=> d!1085243 d!1085239))

(declare-fun d!1085585 () Bool)

(declare-fun e!2292665 () Bool)

(assert (=> d!1085585 e!2292665))

(declare-fun res!1505913 () Bool)

(assert (=> d!1085585 (=> (not res!1505913) (not e!2292665))))

(assert (=> d!1085585 (= res!1505913 (isDefined!6712 (getRuleFromTag!1520 thiss!25322 (t!302009 rules!3598) (tag!6812 (rule!8848 token!544)))))))

(assert (=> d!1085585 true))

(declare-fun _$52!2088 () Unit!57306)

(assert (=> d!1085585 (= (choose!22134 thiss!25322 (t!302009 rules!3598) input!3172 token!544) _$52!2088)))

(declare-fun b!3701992 () Bool)

(declare-fun res!1505914 () Bool)

(assert (=> b!3701992 (=> (not res!1505914) (not e!2292665))))

(assert (=> b!3701992 (= res!1505914 (matchR!5272 (regex!5980 (get!13100 (getRuleFromTag!1520 thiss!25322 (t!302009 rules!3598) (tag!6812 (rule!8848 token!544))))) (list!14691 (charsOf!3969 token!544))))))

(declare-fun b!3701993 () Bool)

(assert (=> b!3701993 (= e!2292665 (= (rule!8848 token!544) (get!13100 (getRuleFromTag!1520 thiss!25322 (t!302009 rules!3598) (tag!6812 (rule!8848 token!544))))))))

(assert (= (and d!1085585 res!1505913) b!3701992))

(assert (= (and b!3701992 res!1505914) b!3701993))

(assert (=> d!1085585 m!4212101))

(assert (=> d!1085585 m!4212101))

(assert (=> d!1085585 m!4212477))

(assert (=> b!3701992 m!4212081))

(assert (=> b!3701992 m!4212101))

(assert (=> b!3701992 m!4212101))

(assert (=> b!3701992 m!4212483))

(assert (=> b!3701992 m!4212083))

(assert (=> b!3701992 m!4212481))

(assert (=> b!3701992 m!4212081))

(assert (=> b!3701992 m!4212083))

(assert (=> b!3701993 m!4212101))

(assert (=> b!3701993 m!4212101))

(assert (=> b!3701993 m!4212483))

(assert (=> d!1085243 d!1085585))

(assert (=> d!1085243 d!1085247))

(declare-fun d!1085587 () Bool)

(declare-fun lt!1295577 () Bool)

(assert (=> d!1085587 (= lt!1295577 (select (content!5683 (t!302009 rules!3598)) (get!13100 lt!1295239)))))

(declare-fun e!2292667 () Bool)

(assert (=> d!1085587 (= lt!1295577 e!2292667)))

(declare-fun res!1505915 () Bool)

(assert (=> d!1085587 (=> (not res!1505915) (not e!2292667))))

(assert (=> d!1085587 (= res!1505915 ((_ is Cons!39340) (t!302009 rules!3598)))))

(assert (=> d!1085587 (= (contains!7841 (t!302009 rules!3598) (get!13100 lt!1295239)) lt!1295577)))

(declare-fun b!3701994 () Bool)

(declare-fun e!2292666 () Bool)

(assert (=> b!3701994 (= e!2292667 e!2292666)))

(declare-fun res!1505916 () Bool)

(assert (=> b!3701994 (=> res!1505916 e!2292666)))

(assert (=> b!3701994 (= res!1505916 (= (h!44760 (t!302009 rules!3598)) (get!13100 lt!1295239)))))

(declare-fun b!3701995 () Bool)

(assert (=> b!3701995 (= e!2292666 (contains!7841 (t!302009 (t!302009 rules!3598)) (get!13100 lt!1295239)))))

(assert (= (and d!1085587 res!1505915) b!3701994))

(assert (= (and b!3701994 (not res!1505916)) b!3701995))

(declare-fun m!4213245 () Bool)

(assert (=> d!1085587 m!4213245))

(assert (=> d!1085587 m!4212463))

(declare-fun m!4213247 () Bool)

(assert (=> d!1085587 m!4213247))

(assert (=> b!3701995 m!4212463))

(declare-fun m!4213249 () Bool)

(assert (=> b!3701995 m!4213249))

(assert (=> b!3701323 d!1085587))

(declare-fun d!1085589 () Bool)

(assert (=> d!1085589 (= (get!13100 lt!1295239) (v!38482 lt!1295239))))

(assert (=> b!3701323 d!1085589))

(assert (=> b!3701338 d!1085475))

(assert (=> d!1085227 d!1085425))

(declare-fun b!3702014 () Bool)

(declare-fun e!2292685 () Bool)

(declare-fun e!2292684 () Bool)

(assert (=> b!3702014 (= e!2292685 e!2292684)))

(declare-fun res!1505931 () Bool)

(assert (=> b!3702014 (= res!1505931 (not (nullable!3740 (reg!11068 (regex!5980 lt!1295126)))))))

(assert (=> b!3702014 (=> (not res!1505931) (not e!2292684))))

(declare-fun bm!267467 () Bool)

(declare-fun c!639682 () Bool)

(declare-fun call!267473 () Bool)

(declare-fun c!639681 () Bool)

(assert (=> bm!267467 (= call!267473 (validRegex!4904 (ite c!639682 (reg!11068 (regex!5980 lt!1295126)) (ite c!639681 (regOne!21991 (regex!5980 lt!1295126)) (regOne!21990 (regex!5980 lt!1295126))))))))

(declare-fun b!3702015 () Bool)

(declare-fun e!2292687 () Bool)

(declare-fun call!267474 () Bool)

(assert (=> b!3702015 (= e!2292687 call!267474)))

(declare-fun b!3702016 () Bool)

(assert (=> b!3702016 (= e!2292684 call!267473)))

(declare-fun b!3702017 () Bool)

(declare-fun res!1505930 () Bool)

(declare-fun e!2292683 () Bool)

(assert (=> b!3702017 (=> res!1505930 e!2292683)))

(assert (=> b!3702017 (= res!1505930 (not ((_ is Concat!16950) (regex!5980 lt!1295126))))))

(declare-fun e!2292682 () Bool)

(assert (=> b!3702017 (= e!2292682 e!2292683)))

(declare-fun b!3702018 () Bool)

(declare-fun e!2292688 () Bool)

(assert (=> b!3702018 (= e!2292688 e!2292685)))

(assert (=> b!3702018 (= c!639682 ((_ is Star!10739) (regex!5980 lt!1295126)))))

(declare-fun bm!267468 () Bool)

(declare-fun call!267472 () Bool)

(assert (=> bm!267468 (= call!267472 call!267473)))

(declare-fun b!3702019 () Bool)

(assert (=> b!3702019 (= e!2292685 e!2292682)))

(assert (=> b!3702019 (= c!639681 ((_ is Union!10739) (regex!5980 lt!1295126)))))

(declare-fun b!3702020 () Bool)

(declare-fun e!2292686 () Bool)

(assert (=> b!3702020 (= e!2292686 call!267474)))

(declare-fun b!3702021 () Bool)

(declare-fun res!1505929 () Bool)

(assert (=> b!3702021 (=> (not res!1505929) (not e!2292687))))

(assert (=> b!3702021 (= res!1505929 call!267472)))

(assert (=> b!3702021 (= e!2292682 e!2292687)))

(declare-fun b!3702022 () Bool)

(assert (=> b!3702022 (= e!2292683 e!2292686)))

(declare-fun res!1505927 () Bool)

(assert (=> b!3702022 (=> (not res!1505927) (not e!2292686))))

(assert (=> b!3702022 (= res!1505927 call!267472)))

(declare-fun bm!267469 () Bool)

(assert (=> bm!267469 (= call!267474 (validRegex!4904 (ite c!639681 (regTwo!21991 (regex!5980 lt!1295126)) (regTwo!21990 (regex!5980 lt!1295126)))))))

(declare-fun d!1085591 () Bool)

(declare-fun res!1505928 () Bool)

(assert (=> d!1085591 (=> res!1505928 e!2292688)))

(assert (=> d!1085591 (= res!1505928 ((_ is ElementMatch!10739) (regex!5980 lt!1295126)))))

(assert (=> d!1085591 (= (validRegex!4904 (regex!5980 lt!1295126)) e!2292688)))

(assert (= (and d!1085591 (not res!1505928)) b!3702018))

(assert (= (and b!3702018 c!639682) b!3702014))

(assert (= (and b!3702018 (not c!639682)) b!3702019))

(assert (= (and b!3702014 res!1505931) b!3702016))

(assert (= (and b!3702019 c!639681) b!3702021))

(assert (= (and b!3702019 (not c!639681)) b!3702017))

(assert (= (and b!3702021 res!1505929) b!3702015))

(assert (= (and b!3702017 (not res!1505930)) b!3702022))

(assert (= (and b!3702022 res!1505927) b!3702020))

(assert (= (or b!3702015 b!3702020) bm!267469))

(assert (= (or b!3702021 b!3702022) bm!267468))

(assert (= (or b!3702016 bm!267468) bm!267467))

(declare-fun m!4213251 () Bool)

(assert (=> b!3702014 m!4213251))

(declare-fun m!4213253 () Bool)

(assert (=> bm!267467 m!4213253))

(declare-fun m!4213255 () Bool)

(assert (=> bm!267469 m!4213255))

(assert (=> d!1085227 d!1085591))

(declare-fun d!1085593 () Bool)

(assert (=> d!1085593 (= (inv!52864 (tag!6812 (h!44760 (t!302009 rules!3598)))) (= (mod (str.len (value!190883 (tag!6812 (h!44760 (t!302009 rules!3598))))) 2) 0))))

(assert (=> b!3701402 d!1085593))

(declare-fun d!1085595 () Bool)

(declare-fun res!1505932 () Bool)

(declare-fun e!2292689 () Bool)

(assert (=> d!1085595 (=> (not res!1505932) (not e!2292689))))

(assert (=> d!1085595 (= res!1505932 (semiInverseModEq!2554 (toChars!8175 (transformation!5980 (h!44760 (t!302009 rules!3598)))) (toValue!8316 (transformation!5980 (h!44760 (t!302009 rules!3598))))))))

(assert (=> d!1085595 (= (inv!52867 (transformation!5980 (h!44760 (t!302009 rules!3598)))) e!2292689)))

(declare-fun b!3702023 () Bool)

(assert (=> b!3702023 (= e!2292689 (equivClasses!2453 (toChars!8175 (transformation!5980 (h!44760 (t!302009 rules!3598)))) (toValue!8316 (transformation!5980 (h!44760 (t!302009 rules!3598))))))))

(assert (= (and d!1085595 res!1505932) b!3702023))

(declare-fun m!4213257 () Bool)

(assert (=> d!1085595 m!4213257))

(declare-fun m!4213259 () Bool)

(assert (=> b!3702023 m!4213259))

(assert (=> b!3701402 d!1085595))

(declare-fun bs!574503 () Bool)

(declare-fun d!1085597 () Bool)

(assert (= bs!574503 (and d!1085597 d!1085303)))

(declare-fun lambda!125100 () Int)

(assert (=> bs!574503 (= lambda!125100 lambda!125078)))

(declare-fun bs!574504 () Bool)

(assert (= bs!574504 (and d!1085597 d!1085565)))

(assert (=> bs!574504 (= lambda!125100 lambda!125095)))

(assert (=> d!1085597 true))

(declare-fun lt!1295578 () Bool)

(assert (=> d!1085597 (= lt!1295578 (rulesValidInductive!2153 thiss!25322 (t!302009 rules!3598)))))

(assert (=> d!1085597 (= lt!1295578 (forall!8183 (t!302009 rules!3598) lambda!125100))))

(assert (=> d!1085597 (= (rulesValid!2311 thiss!25322 (t!302009 rules!3598)) lt!1295578)))

(declare-fun bs!574505 () Bool)

(assert (= bs!574505 d!1085597))

(assert (=> bs!574505 m!4212997))

(declare-fun m!4213261 () Bool)

(assert (=> bs!574505 m!4213261))

(assert (=> d!1085247 d!1085597))

(assert (=> b!3701352 d!1085247))

(assert (=> b!3701352 d!1085245))

(assert (=> b!3701352 d!1085239))

(declare-fun b!3702024 () Bool)

(declare-fun e!2292691 () Bool)

(declare-fun lt!1295580 () Option!8523)

(assert (=> b!3702024 (= e!2292691 (= (tag!6812 (get!13100 lt!1295580)) (tag!6812 (rule!8848 token!544))))))

(declare-fun b!3702025 () Bool)

(declare-fun e!2292690 () Option!8523)

(assert (=> b!3702025 (= e!2292690 None!8522)))

(declare-fun b!3702026 () Bool)

(declare-fun e!2292693 () Option!8523)

(assert (=> b!3702026 (= e!2292693 (Some!8522 (h!44760 (Cons!39340 (h!44760 rules!3598) (t!302009 rules!3598)))))))

(declare-fun b!3702027 () Bool)

(assert (=> b!3702027 (= e!2292693 e!2292690)))

(declare-fun c!639683 () Bool)

(assert (=> b!3702027 (= c!639683 (and ((_ is Cons!39340) (Cons!39340 (h!44760 rules!3598) (t!302009 rules!3598))) (not (= (tag!6812 (h!44760 (Cons!39340 (h!44760 rules!3598) (t!302009 rules!3598)))) (tag!6812 (rule!8848 token!544))))))))

(declare-fun d!1085599 () Bool)

(declare-fun e!2292692 () Bool)

(assert (=> d!1085599 e!2292692))

(declare-fun res!1505933 () Bool)

(assert (=> d!1085599 (=> res!1505933 e!2292692)))

(assert (=> d!1085599 (= res!1505933 (isEmpty!23448 lt!1295580))))

(assert (=> d!1085599 (= lt!1295580 e!2292693)))

(declare-fun c!639684 () Bool)

(assert (=> d!1085599 (= c!639684 (and ((_ is Cons!39340) (Cons!39340 (h!44760 rules!3598) (t!302009 rules!3598))) (= (tag!6812 (h!44760 (Cons!39340 (h!44760 rules!3598) (t!302009 rules!3598)))) (tag!6812 (rule!8848 token!544)))))))

(assert (=> d!1085599 (rulesInvariant!4966 thiss!25322 (Cons!39340 (h!44760 rules!3598) (t!302009 rules!3598)))))

(assert (=> d!1085599 (= (getRuleFromTag!1520 thiss!25322 (Cons!39340 (h!44760 rules!3598) (t!302009 rules!3598)) (tag!6812 (rule!8848 token!544))) lt!1295580)))

(declare-fun b!3702028 () Bool)

(assert (=> b!3702028 (= e!2292692 e!2292691)))

(declare-fun res!1505934 () Bool)

(assert (=> b!3702028 (=> (not res!1505934) (not e!2292691))))

(assert (=> b!3702028 (= res!1505934 (contains!7841 (Cons!39340 (h!44760 rules!3598) (t!302009 rules!3598)) (get!13100 lt!1295580)))))

(declare-fun b!3702029 () Bool)

(declare-fun lt!1295579 () Unit!57306)

(declare-fun lt!1295581 () Unit!57306)

(assert (=> b!3702029 (= lt!1295579 lt!1295581)))

(assert (=> b!3702029 (rulesInvariant!4966 thiss!25322 (t!302009 (Cons!39340 (h!44760 rules!3598) (t!302009 rules!3598))))))

(assert (=> b!3702029 (= lt!1295581 (lemmaInvariantOnRulesThenOnTail!676 thiss!25322 (h!44760 (Cons!39340 (h!44760 rules!3598) (t!302009 rules!3598))) (t!302009 (Cons!39340 (h!44760 rules!3598) (t!302009 rules!3598)))))))

(assert (=> b!3702029 (= e!2292690 (getRuleFromTag!1520 thiss!25322 (t!302009 (Cons!39340 (h!44760 rules!3598) (t!302009 rules!3598))) (tag!6812 (rule!8848 token!544))))))

(assert (= (and d!1085599 c!639684) b!3702026))

(assert (= (and d!1085599 (not c!639684)) b!3702027))

(assert (= (and b!3702027 c!639683) b!3702029))

(assert (= (and b!3702027 (not c!639683)) b!3702025))

(assert (= (and d!1085599 (not res!1505933)) b!3702028))

(assert (= (and b!3702028 res!1505934) b!3702024))

(declare-fun m!4213263 () Bool)

(assert (=> b!3702024 m!4213263))

(declare-fun m!4213265 () Bool)

(assert (=> d!1085599 m!4213265))

(assert (=> d!1085599 m!4212487))

(assert (=> b!3702028 m!4213263))

(assert (=> b!3702028 m!4213263))

(declare-fun m!4213267 () Bool)

(assert (=> b!3702028 m!4213267))

(declare-fun m!4213269 () Bool)

(assert (=> b!3702029 m!4213269))

(declare-fun m!4213271 () Bool)

(assert (=> b!3702029 m!4213271))

(declare-fun m!4213273 () Bool)

(assert (=> b!3702029 m!4213273))

(assert (=> d!1085255 d!1085599))

(assert (=> d!1085255 d!1085239))

(assert (=> d!1085255 d!1085457))

(declare-fun d!1085601 () Bool)

(assert (=> d!1085601 (= (get!13100 (getRuleFromTag!1520 thiss!25322 (t!302009 rules!3598) (tag!6812 (rule!8848 token!544)))) (get!13100 (getRuleFromTag!1520 thiss!25322 (Cons!39340 (h!44760 rules!3598) (t!302009 rules!3598)) (tag!6812 (rule!8848 token!544)))))))

(assert (=> d!1085601 true))

(declare-fun _$53!77 () Unit!57306)

(assert (=> d!1085601 (= (choose!22136 thiss!25322 (t!302009 rules!3598) (h!44760 rules!3598) (tag!6812 (rule!8848 token!544))) _$53!77)))

(declare-fun bs!574506 () Bool)

(assert (= bs!574506 d!1085601))

(assert (=> bs!574506 m!4212101))

(assert (=> bs!574506 m!4212101))

(assert (=> bs!574506 m!4212483))

(assert (=> bs!574506 m!4212505))

(assert (=> bs!574506 m!4212505))

(assert (=> bs!574506 m!4212507))

(assert (=> d!1085255 d!1085601))

(assert (=> d!1085255 d!1085561))

(declare-fun d!1085603 () Bool)

(assert (=> d!1085603 (= (get!13100 (getRuleFromTag!1520 thiss!25322 (Cons!39340 (h!44760 rules!3598) (t!302009 rules!3598)) (tag!6812 (rule!8848 token!544)))) (v!38482 (getRuleFromTag!1520 thiss!25322 (Cons!39340 (h!44760 rules!3598) (t!302009 rules!3598)) (tag!6812 (rule!8848 token!544)))))))

(assert (=> d!1085255 d!1085603))

(declare-fun b!3702030 () Bool)

(declare-fun res!1505941 () Bool)

(declare-fun e!2292699 () Bool)

(assert (=> b!3702030 (=> (not res!1505941) (not e!2292699))))

(assert (=> b!3702030 (= res!1505941 (isEmpty!23447 (tail!5732 (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295193)))))))))

(declare-fun b!3702031 () Bool)

(declare-fun e!2292696 () Bool)

(declare-fun lt!1295582 () Bool)

(assert (=> b!3702031 (= e!2292696 (not lt!1295582))))

(declare-fun d!1085605 () Bool)

(declare-fun e!2292697 () Bool)

(assert (=> d!1085605 e!2292697))

(declare-fun c!639687 () Bool)

(assert (=> d!1085605 (= c!639687 ((_ is EmptyExpr!10739) (regex!5980 (rule!8848 (_1!22732 (get!13101 lt!1295193))))))))

(declare-fun e!2292698 () Bool)

(assert (=> d!1085605 (= lt!1295582 e!2292698)))

(declare-fun c!639685 () Bool)

(assert (=> d!1085605 (= c!639685 (isEmpty!23447 (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295193))))))))

(assert (=> d!1085605 (validRegex!4904 (regex!5980 (rule!8848 (_1!22732 (get!13101 lt!1295193)))))))

(assert (=> d!1085605 (= (matchR!5272 (regex!5980 (rule!8848 (_1!22732 (get!13101 lt!1295193)))) (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295193))))) lt!1295582)))

(declare-fun b!3702032 () Bool)

(assert (=> b!3702032 (= e!2292699 (= (head!7995 (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295193))))) (c!639473 (regex!5980 (rule!8848 (_1!22732 (get!13101 lt!1295193)))))))))

(declare-fun b!3702033 () Bool)

(assert (=> b!3702033 (= e!2292698 (matchR!5272 (derivativeStep!3282 (regex!5980 (rule!8848 (_1!22732 (get!13101 lt!1295193)))) (head!7995 (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295193)))))) (tail!5732 (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295193)))))))))

(declare-fun b!3702034 () Bool)

(declare-fun res!1505938 () Bool)

(declare-fun e!2292700 () Bool)

(assert (=> b!3702034 (=> res!1505938 e!2292700)))

(assert (=> b!3702034 (= res!1505938 (not (isEmpty!23447 (tail!5732 (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295193))))))))))

(declare-fun b!3702035 () Bool)

(assert (=> b!3702035 (= e!2292700 (not (= (head!7995 (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295193))))) (c!639473 (regex!5980 (rule!8848 (_1!22732 (get!13101 lt!1295193))))))))))

(declare-fun b!3702036 () Bool)

(declare-fun e!2292695 () Bool)

(assert (=> b!3702036 (= e!2292695 e!2292700)))

(declare-fun res!1505942 () Bool)

(assert (=> b!3702036 (=> res!1505942 e!2292700)))

(declare-fun call!267475 () Bool)

(assert (=> b!3702036 (= res!1505942 call!267475)))

(declare-fun b!3702037 () Bool)

(declare-fun e!2292694 () Bool)

(assert (=> b!3702037 (= e!2292694 e!2292695)))

(declare-fun res!1505939 () Bool)

(assert (=> b!3702037 (=> (not res!1505939) (not e!2292695))))

(assert (=> b!3702037 (= res!1505939 (not lt!1295582))))

(declare-fun b!3702038 () Bool)

(declare-fun res!1505937 () Bool)

(assert (=> b!3702038 (=> res!1505937 e!2292694)))

(assert (=> b!3702038 (= res!1505937 (not ((_ is ElementMatch!10739) (regex!5980 (rule!8848 (_1!22732 (get!13101 lt!1295193)))))))))

(assert (=> b!3702038 (= e!2292696 e!2292694)))

(declare-fun b!3702039 () Bool)

(assert (=> b!3702039 (= e!2292697 (= lt!1295582 call!267475))))

(declare-fun b!3702040 () Bool)

(assert (=> b!3702040 (= e!2292697 e!2292696)))

(declare-fun c!639686 () Bool)

(assert (=> b!3702040 (= c!639686 ((_ is EmptyLang!10739) (regex!5980 (rule!8848 (_1!22732 (get!13101 lt!1295193))))))))

(declare-fun bm!267470 () Bool)

(assert (=> bm!267470 (= call!267475 (isEmpty!23447 (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295193))))))))

(declare-fun b!3702041 () Bool)

(declare-fun res!1505936 () Bool)

(assert (=> b!3702041 (=> res!1505936 e!2292694)))

(assert (=> b!3702041 (= res!1505936 e!2292699)))

(declare-fun res!1505935 () Bool)

(assert (=> b!3702041 (=> (not res!1505935) (not e!2292699))))

(assert (=> b!3702041 (= res!1505935 lt!1295582)))

(declare-fun b!3702042 () Bool)

(declare-fun res!1505940 () Bool)

(assert (=> b!3702042 (=> (not res!1505940) (not e!2292699))))

(assert (=> b!3702042 (= res!1505940 (not call!267475))))

(declare-fun b!3702043 () Bool)

(assert (=> b!3702043 (= e!2292698 (nullable!3740 (regex!5980 (rule!8848 (_1!22732 (get!13101 lt!1295193))))))))

(assert (= (and d!1085605 c!639685) b!3702043))

(assert (= (and d!1085605 (not c!639685)) b!3702033))

(assert (= (and d!1085605 c!639687) b!3702039))

(assert (= (and d!1085605 (not c!639687)) b!3702040))

(assert (= (and b!3702040 c!639686) b!3702031))

(assert (= (and b!3702040 (not c!639686)) b!3702038))

(assert (= (and b!3702038 (not res!1505937)) b!3702041))

(assert (= (and b!3702041 res!1505935) b!3702042))

(assert (= (and b!3702042 res!1505940) b!3702030))

(assert (= (and b!3702030 res!1505941) b!3702032))

(assert (= (and b!3702041 (not res!1505936)) b!3702037))

(assert (= (and b!3702037 res!1505939) b!3702036))

(assert (= (and b!3702036 (not res!1505942)) b!3702034))

(assert (= (and b!3702034 (not res!1505938)) b!3702035))

(assert (= (or b!3702039 b!3702036 b!3702042) bm!267470))

(assert (=> b!3702033 m!4212281))

(declare-fun m!4213275 () Bool)

(assert (=> b!3702033 m!4213275))

(assert (=> b!3702033 m!4213275))

(declare-fun m!4213277 () Bool)

(assert (=> b!3702033 m!4213277))

(assert (=> b!3702033 m!4212281))

(declare-fun m!4213279 () Bool)

(assert (=> b!3702033 m!4213279))

(assert (=> b!3702033 m!4213277))

(assert (=> b!3702033 m!4213279))

(declare-fun m!4213281 () Bool)

(assert (=> b!3702033 m!4213281))

(assert (=> b!3702035 m!4212281))

(assert (=> b!3702035 m!4213275))

(declare-fun m!4213283 () Bool)

(assert (=> b!3702043 m!4213283))

(assert (=> d!1085605 m!4212281))

(declare-fun m!4213285 () Bool)

(assert (=> d!1085605 m!4213285))

(declare-fun m!4213287 () Bool)

(assert (=> d!1085605 m!4213287))

(assert (=> b!3702030 m!4212281))

(assert (=> b!3702030 m!4213279))

(assert (=> b!3702030 m!4213279))

(declare-fun m!4213289 () Bool)

(assert (=> b!3702030 m!4213289))

(assert (=> b!3702034 m!4212281))

(assert (=> b!3702034 m!4213279))

(assert (=> b!3702034 m!4213279))

(assert (=> b!3702034 m!4213289))

(assert (=> bm!267470 m!4212281))

(assert (=> bm!267470 m!4213285))

(assert (=> b!3702032 m!4212281))

(assert (=> b!3702032 m!4213275))

(assert (=> b!3701131 d!1085605))

(assert (=> b!3701131 d!1085455))

(assert (=> b!3701131 d!1085451))

(assert (=> b!3701131 d!1085453))

(declare-fun b!3702044 () Bool)

(declare-fun res!1505949 () Bool)

(declare-fun e!2292706 () Bool)

(assert (=> b!3702044 (=> (not res!1505949) (not e!2292706))))

(assert (=> b!3702044 (= res!1505949 (isEmpty!23447 (tail!5732 (tail!5732 (list!14691 (charsOf!3969 token!544))))))))

(declare-fun b!3702045 () Bool)

(declare-fun e!2292703 () Bool)

(declare-fun lt!1295583 () Bool)

(assert (=> b!3702045 (= e!2292703 (not lt!1295583))))

(declare-fun d!1085607 () Bool)

(declare-fun e!2292704 () Bool)

(assert (=> d!1085607 e!2292704))

(declare-fun c!639690 () Bool)

(assert (=> d!1085607 (= c!639690 ((_ is EmptyExpr!10739) (derivativeStep!3282 (regex!5980 lt!1295127) (head!7995 (list!14691 (charsOf!3969 token!544))))))))

(declare-fun e!2292705 () Bool)

(assert (=> d!1085607 (= lt!1295583 e!2292705)))

(declare-fun c!639688 () Bool)

(assert (=> d!1085607 (= c!639688 (isEmpty!23447 (tail!5732 (list!14691 (charsOf!3969 token!544)))))))

(assert (=> d!1085607 (validRegex!4904 (derivativeStep!3282 (regex!5980 lt!1295127) (head!7995 (list!14691 (charsOf!3969 token!544)))))))

(assert (=> d!1085607 (= (matchR!5272 (derivativeStep!3282 (regex!5980 lt!1295127) (head!7995 (list!14691 (charsOf!3969 token!544)))) (tail!5732 (list!14691 (charsOf!3969 token!544)))) lt!1295583)))

(declare-fun b!3702046 () Bool)

(assert (=> b!3702046 (= e!2292706 (= (head!7995 (tail!5732 (list!14691 (charsOf!3969 token!544)))) (c!639473 (derivativeStep!3282 (regex!5980 lt!1295127) (head!7995 (list!14691 (charsOf!3969 token!544)))))))))

(declare-fun b!3702047 () Bool)

(assert (=> b!3702047 (= e!2292705 (matchR!5272 (derivativeStep!3282 (derivativeStep!3282 (regex!5980 lt!1295127) (head!7995 (list!14691 (charsOf!3969 token!544)))) (head!7995 (tail!5732 (list!14691 (charsOf!3969 token!544))))) (tail!5732 (tail!5732 (list!14691 (charsOf!3969 token!544))))))))

(declare-fun b!3702048 () Bool)

(declare-fun res!1505946 () Bool)

(declare-fun e!2292707 () Bool)

(assert (=> b!3702048 (=> res!1505946 e!2292707)))

(assert (=> b!3702048 (= res!1505946 (not (isEmpty!23447 (tail!5732 (tail!5732 (list!14691 (charsOf!3969 token!544)))))))))

(declare-fun b!3702049 () Bool)

(assert (=> b!3702049 (= e!2292707 (not (= (head!7995 (tail!5732 (list!14691 (charsOf!3969 token!544)))) (c!639473 (derivativeStep!3282 (regex!5980 lt!1295127) (head!7995 (list!14691 (charsOf!3969 token!544))))))))))

(declare-fun b!3702050 () Bool)

(declare-fun e!2292702 () Bool)

(assert (=> b!3702050 (= e!2292702 e!2292707)))

(declare-fun res!1505950 () Bool)

(assert (=> b!3702050 (=> res!1505950 e!2292707)))

(declare-fun call!267476 () Bool)

(assert (=> b!3702050 (= res!1505950 call!267476)))

(declare-fun b!3702051 () Bool)

(declare-fun e!2292701 () Bool)

(assert (=> b!3702051 (= e!2292701 e!2292702)))

(declare-fun res!1505947 () Bool)

(assert (=> b!3702051 (=> (not res!1505947) (not e!2292702))))

(assert (=> b!3702051 (= res!1505947 (not lt!1295583))))

(declare-fun b!3702052 () Bool)

(declare-fun res!1505945 () Bool)

(assert (=> b!3702052 (=> res!1505945 e!2292701)))

(assert (=> b!3702052 (= res!1505945 (not ((_ is ElementMatch!10739) (derivativeStep!3282 (regex!5980 lt!1295127) (head!7995 (list!14691 (charsOf!3969 token!544)))))))))

(assert (=> b!3702052 (= e!2292703 e!2292701)))

(declare-fun b!3702053 () Bool)

(assert (=> b!3702053 (= e!2292704 (= lt!1295583 call!267476))))

(declare-fun b!3702054 () Bool)

(assert (=> b!3702054 (= e!2292704 e!2292703)))

(declare-fun c!639689 () Bool)

(assert (=> b!3702054 (= c!639689 ((_ is EmptyLang!10739) (derivativeStep!3282 (regex!5980 lt!1295127) (head!7995 (list!14691 (charsOf!3969 token!544))))))))

(declare-fun bm!267471 () Bool)

(assert (=> bm!267471 (= call!267476 (isEmpty!23447 (tail!5732 (list!14691 (charsOf!3969 token!544)))))))

(declare-fun b!3702055 () Bool)

(declare-fun res!1505944 () Bool)

(assert (=> b!3702055 (=> res!1505944 e!2292701)))

(assert (=> b!3702055 (= res!1505944 e!2292706)))

(declare-fun res!1505943 () Bool)

(assert (=> b!3702055 (=> (not res!1505943) (not e!2292706))))

(assert (=> b!3702055 (= res!1505943 lt!1295583)))

(declare-fun b!3702056 () Bool)

(declare-fun res!1505948 () Bool)

(assert (=> b!3702056 (=> (not res!1505948) (not e!2292706))))

(assert (=> b!3702056 (= res!1505948 (not call!267476))))

(declare-fun b!3702057 () Bool)

(assert (=> b!3702057 (= e!2292705 (nullable!3740 (derivativeStep!3282 (regex!5980 lt!1295127) (head!7995 (list!14691 (charsOf!3969 token!544))))))))

(assert (= (and d!1085607 c!639688) b!3702057))

(assert (= (and d!1085607 (not c!639688)) b!3702047))

(assert (= (and d!1085607 c!639690) b!3702053))

(assert (= (and d!1085607 (not c!639690)) b!3702054))

(assert (= (and b!3702054 c!639689) b!3702045))

(assert (= (and b!3702054 (not c!639689)) b!3702052))

(assert (= (and b!3702052 (not res!1505945)) b!3702055))

(assert (= (and b!3702055 res!1505943) b!3702056))

(assert (= (and b!3702056 res!1505948) b!3702044))

(assert (= (and b!3702044 res!1505949) b!3702046))

(assert (= (and b!3702055 (not res!1505944)) b!3702051))

(assert (= (and b!3702051 res!1505947) b!3702050))

(assert (= (and b!3702050 (not res!1505950)) b!3702048))

(assert (= (and b!3702048 (not res!1505946)) b!3702049))

(assert (= (or b!3702053 b!3702050 b!3702056) bm!267471))

(assert (=> b!3702047 m!4212435))

(declare-fun m!4213291 () Bool)

(assert (=> b!3702047 m!4213291))

(assert (=> b!3702047 m!4212497))

(assert (=> b!3702047 m!4213291))

(declare-fun m!4213293 () Bool)

(assert (=> b!3702047 m!4213293))

(assert (=> b!3702047 m!4212435))

(declare-fun m!4213295 () Bool)

(assert (=> b!3702047 m!4213295))

(assert (=> b!3702047 m!4213293))

(assert (=> b!3702047 m!4213295))

(declare-fun m!4213297 () Bool)

(assert (=> b!3702047 m!4213297))

(assert (=> b!3702049 m!4212435))

(assert (=> b!3702049 m!4213291))

(assert (=> b!3702057 m!4212497))

(declare-fun m!4213299 () Bool)

(assert (=> b!3702057 m!4213299))

(assert (=> d!1085607 m!4212435))

(assert (=> d!1085607 m!4212445))

(assert (=> d!1085607 m!4212497))

(declare-fun m!4213301 () Bool)

(assert (=> d!1085607 m!4213301))

(assert (=> b!3702044 m!4212435))

(assert (=> b!3702044 m!4213295))

(assert (=> b!3702044 m!4213295))

(declare-fun m!4213303 () Bool)

(assert (=> b!3702044 m!4213303))

(assert (=> b!3702048 m!4212435))

(assert (=> b!3702048 m!4213295))

(assert (=> b!3702048 m!4213295))

(assert (=> b!3702048 m!4213303))

(assert (=> bm!267471 m!4212435))

(assert (=> bm!267471 m!4212445))

(assert (=> b!3702046 m!4212435))

(assert (=> b!3702046 m!4213291))

(assert (=> b!3701336 d!1085607))

(declare-fun b!3702078 () Bool)

(declare-fun e!2292718 () Regex!10739)

(declare-fun call!267488 () Regex!10739)

(declare-fun call!267485 () Regex!10739)

(assert (=> b!3702078 (= e!2292718 (Union!10739 call!267488 call!267485))))

(declare-fun d!1085609 () Bool)

(declare-fun lt!1295586 () Regex!10739)

(assert (=> d!1085609 (validRegex!4904 lt!1295586)))

(declare-fun e!2292722 () Regex!10739)

(assert (=> d!1085609 (= lt!1295586 e!2292722)))

(declare-fun c!639703 () Bool)

(assert (=> d!1085609 (= c!639703 (or ((_ is EmptyExpr!10739) (regex!5980 lt!1295127)) ((_ is EmptyLang!10739) (regex!5980 lt!1295127))))))

(assert (=> d!1085609 (validRegex!4904 (regex!5980 lt!1295127))))

(assert (=> d!1085609 (= (derivativeStep!3282 (regex!5980 lt!1295127) (head!7995 (list!14691 (charsOf!3969 token!544)))) lt!1295586)))

(declare-fun b!3702079 () Bool)

(declare-fun e!2292719 () Regex!10739)

(declare-fun call!267486 () Regex!10739)

(assert (=> b!3702079 (= e!2292719 (Union!10739 (Concat!16950 call!267486 (regTwo!21990 (regex!5980 lt!1295127))) EmptyLang!10739))))

(declare-fun b!3702080 () Bool)

(declare-fun e!2292720 () Regex!10739)

(assert (=> b!3702080 (= e!2292720 (ite (= (head!7995 (list!14691 (charsOf!3969 token!544))) (c!639473 (regex!5980 lt!1295127))) EmptyExpr!10739 EmptyLang!10739))))

(declare-fun bm!267480 () Bool)

(declare-fun c!639705 () Bool)

(assert (=> bm!267480 (= call!267488 (derivativeStep!3282 (ite c!639705 (regOne!21991 (regex!5980 lt!1295127)) (regOne!21990 (regex!5980 lt!1295127))) (head!7995 (list!14691 (charsOf!3969 token!544)))))))

(declare-fun b!3702081 () Bool)

(declare-fun e!2292721 () Regex!10739)

(declare-fun call!267487 () Regex!10739)

(assert (=> b!3702081 (= e!2292721 (Concat!16950 call!267487 (regex!5980 lt!1295127)))))

(declare-fun b!3702082 () Bool)

(assert (=> b!3702082 (= e!2292722 e!2292720)))

(declare-fun c!639701 () Bool)

(assert (=> b!3702082 (= c!639701 ((_ is ElementMatch!10739) (regex!5980 lt!1295127)))))

(declare-fun b!3702083 () Bool)

(assert (=> b!3702083 (= e!2292722 EmptyLang!10739)))

(declare-fun b!3702084 () Bool)

(declare-fun c!639702 () Bool)

(assert (=> b!3702084 (= c!639702 (nullable!3740 (regOne!21990 (regex!5980 lt!1295127))))))

(assert (=> b!3702084 (= e!2292721 e!2292719)))

(declare-fun bm!267481 () Bool)

(assert (=> bm!267481 (= call!267487 call!267485)))

(declare-fun c!639704 () Bool)

(declare-fun bm!267482 () Bool)

(assert (=> bm!267482 (= call!267485 (derivativeStep!3282 (ite c!639705 (regTwo!21991 (regex!5980 lt!1295127)) (ite c!639704 (reg!11068 (regex!5980 lt!1295127)) (ite c!639702 (regTwo!21990 (regex!5980 lt!1295127)) (regOne!21990 (regex!5980 lt!1295127))))) (head!7995 (list!14691 (charsOf!3969 token!544)))))))

(declare-fun b!3702085 () Bool)

(assert (=> b!3702085 (= e!2292719 (Union!10739 (Concat!16950 call!267488 (regTwo!21990 (regex!5980 lt!1295127))) call!267486))))

(declare-fun b!3702086 () Bool)

(assert (=> b!3702086 (= c!639705 ((_ is Union!10739) (regex!5980 lt!1295127)))))

(assert (=> b!3702086 (= e!2292720 e!2292718)))

(declare-fun bm!267483 () Bool)

(assert (=> bm!267483 (= call!267486 call!267487)))

(declare-fun b!3702087 () Bool)

(assert (=> b!3702087 (= e!2292718 e!2292721)))

(assert (=> b!3702087 (= c!639704 ((_ is Star!10739) (regex!5980 lt!1295127)))))

(assert (= (and d!1085609 c!639703) b!3702083))

(assert (= (and d!1085609 (not c!639703)) b!3702082))

(assert (= (and b!3702082 c!639701) b!3702080))

(assert (= (and b!3702082 (not c!639701)) b!3702086))

(assert (= (and b!3702086 c!639705) b!3702078))

(assert (= (and b!3702086 (not c!639705)) b!3702087))

(assert (= (and b!3702087 c!639704) b!3702081))

(assert (= (and b!3702087 (not c!639704)) b!3702084))

(assert (= (and b!3702084 c!639702) b!3702085))

(assert (= (and b!3702084 (not c!639702)) b!3702079))

(assert (= (or b!3702085 b!3702079) bm!267483))

(assert (= (or b!3702081 bm!267483) bm!267481))

(assert (= (or b!3702078 bm!267481) bm!267482))

(assert (= (or b!3702078 b!3702085) bm!267480))

(declare-fun m!4213305 () Bool)

(assert (=> d!1085609 m!4213305))

(assert (=> d!1085609 m!4212503))

(assert (=> bm!267480 m!4212431))

(declare-fun m!4213307 () Bool)

(assert (=> bm!267480 m!4213307))

(declare-fun m!4213309 () Bool)

(assert (=> b!3702084 m!4213309))

(assert (=> bm!267482 m!4212431))

(declare-fun m!4213311 () Bool)

(assert (=> bm!267482 m!4213311))

(assert (=> b!3701336 d!1085609))

(assert (=> b!3701336 d!1085475))

(assert (=> b!3701336 d!1085415))

(assert (=> b!3701319 d!1085589))

(declare-fun d!1085611 () Bool)

(assert (=> d!1085611 (= (isEmpty!23446 lt!1295193) (not ((_ is Some!8523) lt!1295193)))))

(assert (=> d!1085167 d!1085611))

(declare-fun b!3702099 () Bool)

(declare-fun e!2292731 () Bool)

(assert (=> b!3702099 (= e!2292731 (>= (size!29995 input!3172) (size!29995 input!3172)))))

(declare-fun b!3702097 () Bool)

(declare-fun res!1505962 () Bool)

(declare-fun e!2292729 () Bool)

(assert (=> b!3702097 (=> (not res!1505962) (not e!2292729))))

(assert (=> b!3702097 (= res!1505962 (= (head!7995 input!3172) (head!7995 input!3172)))))

(declare-fun b!3702096 () Bool)

(declare-fun e!2292730 () Bool)

(assert (=> b!3702096 (= e!2292730 e!2292729)))

(declare-fun res!1505960 () Bool)

(assert (=> b!3702096 (=> (not res!1505960) (not e!2292729))))

(assert (=> b!3702096 (= res!1505960 (not ((_ is Nil!39339) input!3172)))))

(declare-fun b!3702098 () Bool)

(assert (=> b!3702098 (= e!2292729 (isPrefix!3287 (tail!5732 input!3172) (tail!5732 input!3172)))))

(declare-fun d!1085613 () Bool)

(assert (=> d!1085613 e!2292731))

(declare-fun res!1505959 () Bool)

(assert (=> d!1085613 (=> res!1505959 e!2292731)))

(declare-fun lt!1295589 () Bool)

(assert (=> d!1085613 (= res!1505959 (not lt!1295589))))

(assert (=> d!1085613 (= lt!1295589 e!2292730)))

(declare-fun res!1505961 () Bool)

(assert (=> d!1085613 (=> res!1505961 e!2292730)))

(assert (=> d!1085613 (= res!1505961 ((_ is Nil!39339) input!3172))))

(assert (=> d!1085613 (= (isPrefix!3287 input!3172 input!3172) lt!1295589)))

(assert (= (and d!1085613 (not res!1505961)) b!3702096))

(assert (= (and b!3702096 res!1505960) b!3702097))

(assert (= (and b!3702097 res!1505962) b!3702098))

(assert (= (and d!1085613 (not res!1505959)) b!3702099))

(assert (=> b!3702099 m!4212285))

(assert (=> b!3702099 m!4212285))

(assert (=> b!3702097 m!4212591))

(assert (=> b!3702097 m!4212591))

(assert (=> b!3702098 m!4212589))

(assert (=> b!3702098 m!4212589))

(assert (=> b!3702098 m!4212589))

(assert (=> b!3702098 m!4212589))

(declare-fun m!4213313 () Bool)

(assert (=> b!3702098 m!4213313))

(assert (=> d!1085167 d!1085613))

(declare-fun d!1085615 () Bool)

(assert (=> d!1085615 (isPrefix!3287 input!3172 input!3172)))

(declare-fun lt!1295592 () Unit!57306)

(declare-fun choose!22139 (List!39463 List!39463) Unit!57306)

(assert (=> d!1085615 (= lt!1295592 (choose!22139 input!3172 input!3172))))

(assert (=> d!1085615 (= (lemmaIsPrefixRefl!2072 input!3172 input!3172) lt!1295592)))

(declare-fun bs!574507 () Bool)

(assert (= bs!574507 d!1085615))

(assert (=> bs!574507 m!4212289))

(declare-fun m!4213315 () Bool)

(assert (=> bs!574507 m!4213315))

(assert (=> d!1085167 d!1085615))

(declare-fun bs!574508 () Bool)

(declare-fun d!1085617 () Bool)

(assert (= bs!574508 (and d!1085617 d!1085303)))

(declare-fun lambda!125103 () Int)

(assert (=> bs!574508 (= lambda!125103 lambda!125078)))

(declare-fun bs!574509 () Bool)

(assert (= bs!574509 (and d!1085617 d!1085565)))

(assert (=> bs!574509 (= lambda!125103 lambda!125095)))

(declare-fun bs!574510 () Bool)

(assert (= bs!574510 (and d!1085617 d!1085597)))

(assert (=> bs!574510 (= lambda!125103 lambda!125100)))

(assert (=> d!1085617 true))

(declare-fun lt!1295595 () Bool)

(assert (=> d!1085617 (= lt!1295595 (forall!8183 rules!3598 lambda!125103))))

(declare-fun e!2292736 () Bool)

(assert (=> d!1085617 (= lt!1295595 e!2292736)))

(declare-fun res!1505967 () Bool)

(assert (=> d!1085617 (=> res!1505967 e!2292736)))

(assert (=> d!1085617 (= res!1505967 (not ((_ is Cons!39340) rules!3598)))))

(assert (=> d!1085617 (= (rulesValidInductive!2153 thiss!25322 rules!3598) lt!1295595)))

(declare-fun b!3702104 () Bool)

(declare-fun e!2292737 () Bool)

(assert (=> b!3702104 (= e!2292736 e!2292737)))

(declare-fun res!1505968 () Bool)

(assert (=> b!3702104 (=> (not res!1505968) (not e!2292737))))

(assert (=> b!3702104 (= res!1505968 (ruleValid!2164 thiss!25322 (h!44760 rules!3598)))))

(declare-fun b!3702105 () Bool)

(assert (=> b!3702105 (= e!2292737 (rulesValidInductive!2153 thiss!25322 (t!302009 rules!3598)))))

(assert (= (and d!1085617 (not res!1505967)) b!3702104))

(assert (= (and b!3702104 res!1505968) b!3702105))

(declare-fun m!4213317 () Bool)

(assert (=> d!1085617 m!4213317))

(assert (=> b!3702104 m!4212405))

(assert (=> b!3702105 m!4212997))

(assert (=> d!1085167 d!1085617))

(assert (=> b!3701335 d!1085475))

(declare-fun d!1085619 () Bool)

(declare-fun c!639708 () Bool)

(assert (=> d!1085619 (= c!639708 ((_ is Node!12077) (c!639472 (dynLambda!17184 (toChars!8175 (transformation!5980 (rule!8848 token!544))) (value!190884 token!544)))))))

(declare-fun e!2292742 () Bool)

(assert (=> d!1085619 (= (inv!52871 (c!639472 (dynLambda!17184 (toChars!8175 (transformation!5980 (rule!8848 token!544))) (value!190884 token!544)))) e!2292742)))

(declare-fun b!3702112 () Bool)

(declare-fun inv!52875 (Conc!12077) Bool)

(assert (=> b!3702112 (= e!2292742 (inv!52875 (c!639472 (dynLambda!17184 (toChars!8175 (transformation!5980 (rule!8848 token!544))) (value!190884 token!544)))))))

(declare-fun b!3702113 () Bool)

(declare-fun e!2292743 () Bool)

(assert (=> b!3702113 (= e!2292742 e!2292743)))

(declare-fun res!1505971 () Bool)

(assert (=> b!3702113 (= res!1505971 (not ((_ is Leaf!18678) (c!639472 (dynLambda!17184 (toChars!8175 (transformation!5980 (rule!8848 token!544))) (value!190884 token!544))))))))

(assert (=> b!3702113 (=> res!1505971 e!2292743)))

(declare-fun b!3702114 () Bool)

(declare-fun inv!52876 (Conc!12077) Bool)

(assert (=> b!3702114 (= e!2292743 (inv!52876 (c!639472 (dynLambda!17184 (toChars!8175 (transformation!5980 (rule!8848 token!544))) (value!190884 token!544)))))))

(assert (= (and d!1085619 c!639708) b!3702112))

(assert (= (and d!1085619 (not c!639708)) b!3702113))

(assert (= (and b!3702113 (not res!1505971)) b!3702114))

(declare-fun m!4213319 () Bool)

(assert (=> b!3702112 m!4213319))

(declare-fun m!4213321 () Bool)

(assert (=> b!3702114 m!4213321))

(assert (=> b!3701300 d!1085619))

(assert (=> b!3701333 d!1085413))

(assert (=> b!3701333 d!1085415))

(assert (=> d!1085251 d!1085425))

(declare-fun b!3702115 () Bool)

(declare-fun e!2292747 () Bool)

(declare-fun e!2292746 () Bool)

(assert (=> b!3702115 (= e!2292747 e!2292746)))

(declare-fun res!1505976 () Bool)

(assert (=> b!3702115 (= res!1505976 (not (nullable!3740 (reg!11068 (regex!5980 lt!1295127)))))))

(assert (=> b!3702115 (=> (not res!1505976) (not e!2292746))))

(declare-fun bm!267484 () Bool)

(declare-fun call!267490 () Bool)

(declare-fun c!639709 () Bool)

(declare-fun c!639710 () Bool)

(assert (=> bm!267484 (= call!267490 (validRegex!4904 (ite c!639710 (reg!11068 (regex!5980 lt!1295127)) (ite c!639709 (regOne!21991 (regex!5980 lt!1295127)) (regOne!21990 (regex!5980 lt!1295127))))))))

(declare-fun b!3702116 () Bool)

(declare-fun e!2292749 () Bool)

(declare-fun call!267491 () Bool)

(assert (=> b!3702116 (= e!2292749 call!267491)))

(declare-fun b!3702117 () Bool)

(assert (=> b!3702117 (= e!2292746 call!267490)))

(declare-fun b!3702118 () Bool)

(declare-fun res!1505975 () Bool)

(declare-fun e!2292745 () Bool)

(assert (=> b!3702118 (=> res!1505975 e!2292745)))

(assert (=> b!3702118 (= res!1505975 (not ((_ is Concat!16950) (regex!5980 lt!1295127))))))

(declare-fun e!2292744 () Bool)

(assert (=> b!3702118 (= e!2292744 e!2292745)))

(declare-fun b!3702119 () Bool)

(declare-fun e!2292750 () Bool)

(assert (=> b!3702119 (= e!2292750 e!2292747)))

(assert (=> b!3702119 (= c!639710 ((_ is Star!10739) (regex!5980 lt!1295127)))))

(declare-fun bm!267485 () Bool)

(declare-fun call!267489 () Bool)

(assert (=> bm!267485 (= call!267489 call!267490)))

(declare-fun b!3702120 () Bool)

(assert (=> b!3702120 (= e!2292747 e!2292744)))

(assert (=> b!3702120 (= c!639709 ((_ is Union!10739) (regex!5980 lt!1295127)))))

(declare-fun b!3702121 () Bool)

(declare-fun e!2292748 () Bool)

(assert (=> b!3702121 (= e!2292748 call!267491)))

(declare-fun b!3702122 () Bool)

(declare-fun res!1505974 () Bool)

(assert (=> b!3702122 (=> (not res!1505974) (not e!2292749))))

(assert (=> b!3702122 (= res!1505974 call!267489)))

(assert (=> b!3702122 (= e!2292744 e!2292749)))

(declare-fun b!3702123 () Bool)

(assert (=> b!3702123 (= e!2292745 e!2292748)))

(declare-fun res!1505972 () Bool)

(assert (=> b!3702123 (=> (not res!1505972) (not e!2292748))))

(assert (=> b!3702123 (= res!1505972 call!267489)))

(declare-fun bm!267486 () Bool)

(assert (=> bm!267486 (= call!267491 (validRegex!4904 (ite c!639709 (regTwo!21991 (regex!5980 lt!1295127)) (regTwo!21990 (regex!5980 lt!1295127)))))))

(declare-fun d!1085621 () Bool)

(declare-fun res!1505973 () Bool)

(assert (=> d!1085621 (=> res!1505973 e!2292750)))

(assert (=> d!1085621 (= res!1505973 ((_ is ElementMatch!10739) (regex!5980 lt!1295127)))))

(assert (=> d!1085621 (= (validRegex!4904 (regex!5980 lt!1295127)) e!2292750)))

(assert (= (and d!1085621 (not res!1505973)) b!3702119))

(assert (= (and b!3702119 c!639710) b!3702115))

(assert (= (and b!3702119 (not c!639710)) b!3702120))

(assert (= (and b!3702115 res!1505976) b!3702117))

(assert (= (and b!3702120 c!639709) b!3702122))

(assert (= (and b!3702120 (not c!639709)) b!3702118))

(assert (= (and b!3702122 res!1505974) b!3702116))

(assert (= (and b!3702118 (not res!1505975)) b!3702123))

(assert (= (and b!3702123 res!1505972) b!3702121))

(assert (= (or b!3702116 b!3702121) bm!267486))

(assert (= (or b!3702122 b!3702123) bm!267485))

(assert (= (or b!3702117 bm!267485) bm!267484))

(declare-fun m!4213323 () Bool)

(assert (=> b!3702115 m!4213323))

(declare-fun m!4213325 () Bool)

(assert (=> bm!267484 m!4213325))

(declare-fun m!4213327 () Bool)

(assert (=> bm!267486 m!4213327))

(assert (=> d!1085251 d!1085621))

(declare-fun d!1085623 () Bool)

(assert (=> d!1085623 (= (isDefined!6713 lt!1295193) (not (isEmpty!23446 lt!1295193)))))

(declare-fun bs!574511 () Bool)

(assert (= bs!574511 d!1085623))

(assert (=> bs!574511 m!4212287))

(assert (=> b!3701128 d!1085623))

(assert (=> b!3701126 d!1085451))

(assert (=> b!3701126 d!1085453))

(assert (=> b!3701126 d!1085455))

(assert (=> b!3701287 d!1085475))

(assert (=> b!3701329 d!1085239))

(assert (=> b!3701329 d!1085457))

(assert (=> b!3701329 d!1085231))

(declare-fun b!3702124 () Bool)

(declare-fun res!1505983 () Bool)

(declare-fun e!2292756 () Bool)

(assert (=> b!3702124 (=> (not res!1505983) (not e!2292756))))

(assert (=> b!3702124 (= res!1505983 (isEmpty!23447 (tail!5732 (list!14691 (charsOf!3969 token!544)))))))

(declare-fun b!3702125 () Bool)

(declare-fun e!2292753 () Bool)

(declare-fun lt!1295596 () Bool)

(assert (=> b!3702125 (= e!2292753 (not lt!1295596))))

(declare-fun d!1085625 () Bool)

(declare-fun e!2292754 () Bool)

(assert (=> d!1085625 e!2292754))

(declare-fun c!639713 () Bool)

(assert (=> d!1085625 (= c!639713 ((_ is EmptyExpr!10739) (regex!5980 (get!13100 (getRuleFromTag!1520 thiss!25322 (t!302009 rules!3598) (tag!6812 (rule!8848 token!544)))))))))

(declare-fun e!2292755 () Bool)

(assert (=> d!1085625 (= lt!1295596 e!2292755)))

(declare-fun c!639711 () Bool)

(assert (=> d!1085625 (= c!639711 (isEmpty!23447 (list!14691 (charsOf!3969 token!544))))))

(assert (=> d!1085625 (validRegex!4904 (regex!5980 (get!13100 (getRuleFromTag!1520 thiss!25322 (t!302009 rules!3598) (tag!6812 (rule!8848 token!544))))))))

(assert (=> d!1085625 (= (matchR!5272 (regex!5980 (get!13100 (getRuleFromTag!1520 thiss!25322 (t!302009 rules!3598) (tag!6812 (rule!8848 token!544))))) (list!14691 (charsOf!3969 token!544))) lt!1295596)))

(declare-fun b!3702126 () Bool)

(assert (=> b!3702126 (= e!2292756 (= (head!7995 (list!14691 (charsOf!3969 token!544))) (c!639473 (regex!5980 (get!13100 (getRuleFromTag!1520 thiss!25322 (t!302009 rules!3598) (tag!6812 (rule!8848 token!544))))))))))

(declare-fun b!3702127 () Bool)

(assert (=> b!3702127 (= e!2292755 (matchR!5272 (derivativeStep!3282 (regex!5980 (get!13100 (getRuleFromTag!1520 thiss!25322 (t!302009 rules!3598) (tag!6812 (rule!8848 token!544))))) (head!7995 (list!14691 (charsOf!3969 token!544)))) (tail!5732 (list!14691 (charsOf!3969 token!544)))))))

(declare-fun b!3702128 () Bool)

(declare-fun res!1505980 () Bool)

(declare-fun e!2292757 () Bool)

(assert (=> b!3702128 (=> res!1505980 e!2292757)))

(assert (=> b!3702128 (= res!1505980 (not (isEmpty!23447 (tail!5732 (list!14691 (charsOf!3969 token!544))))))))

(declare-fun b!3702129 () Bool)

(assert (=> b!3702129 (= e!2292757 (not (= (head!7995 (list!14691 (charsOf!3969 token!544))) (c!639473 (regex!5980 (get!13100 (getRuleFromTag!1520 thiss!25322 (t!302009 rules!3598) (tag!6812 (rule!8848 token!544)))))))))))

(declare-fun b!3702130 () Bool)

(declare-fun e!2292752 () Bool)

(assert (=> b!3702130 (= e!2292752 e!2292757)))

(declare-fun res!1505984 () Bool)

(assert (=> b!3702130 (=> res!1505984 e!2292757)))

(declare-fun call!267492 () Bool)

(assert (=> b!3702130 (= res!1505984 call!267492)))

(declare-fun b!3702131 () Bool)

(declare-fun e!2292751 () Bool)

(assert (=> b!3702131 (= e!2292751 e!2292752)))

(declare-fun res!1505981 () Bool)

(assert (=> b!3702131 (=> (not res!1505981) (not e!2292752))))

(assert (=> b!3702131 (= res!1505981 (not lt!1295596))))

(declare-fun b!3702132 () Bool)

(declare-fun res!1505979 () Bool)

(assert (=> b!3702132 (=> res!1505979 e!2292751)))

(assert (=> b!3702132 (= res!1505979 (not ((_ is ElementMatch!10739) (regex!5980 (get!13100 (getRuleFromTag!1520 thiss!25322 (t!302009 rules!3598) (tag!6812 (rule!8848 token!544))))))))))

(assert (=> b!3702132 (= e!2292753 e!2292751)))

(declare-fun b!3702133 () Bool)

(assert (=> b!3702133 (= e!2292754 (= lt!1295596 call!267492))))

(declare-fun b!3702134 () Bool)

(assert (=> b!3702134 (= e!2292754 e!2292753)))

(declare-fun c!639712 () Bool)

(assert (=> b!3702134 (= c!639712 ((_ is EmptyLang!10739) (regex!5980 (get!13100 (getRuleFromTag!1520 thiss!25322 (t!302009 rules!3598) (tag!6812 (rule!8848 token!544)))))))))

(declare-fun bm!267487 () Bool)

(assert (=> bm!267487 (= call!267492 (isEmpty!23447 (list!14691 (charsOf!3969 token!544))))))

(declare-fun b!3702135 () Bool)

(declare-fun res!1505978 () Bool)

(assert (=> b!3702135 (=> res!1505978 e!2292751)))

(assert (=> b!3702135 (= res!1505978 e!2292756)))

(declare-fun res!1505977 () Bool)

(assert (=> b!3702135 (=> (not res!1505977) (not e!2292756))))

(assert (=> b!3702135 (= res!1505977 lt!1295596)))

(declare-fun b!3702136 () Bool)

(declare-fun res!1505982 () Bool)

(assert (=> b!3702136 (=> (not res!1505982) (not e!2292756))))

(assert (=> b!3702136 (= res!1505982 (not call!267492))))

(declare-fun b!3702137 () Bool)

(assert (=> b!3702137 (= e!2292755 (nullable!3740 (regex!5980 (get!13100 (getRuleFromTag!1520 thiss!25322 (t!302009 rules!3598) (tag!6812 (rule!8848 token!544)))))))))

(assert (= (and d!1085625 c!639711) b!3702137))

(assert (= (and d!1085625 (not c!639711)) b!3702127))

(assert (= (and d!1085625 c!639713) b!3702133))

(assert (= (and d!1085625 (not c!639713)) b!3702134))

(assert (= (and b!3702134 c!639712) b!3702125))

(assert (= (and b!3702134 (not c!639712)) b!3702132))

(assert (= (and b!3702132 (not res!1505979)) b!3702135))

(assert (= (and b!3702135 res!1505977) b!3702136))

(assert (= (and b!3702136 res!1505982) b!3702124))

(assert (= (and b!3702124 res!1505983) b!3702126))

(assert (= (and b!3702135 (not res!1505978)) b!3702131))

(assert (= (and b!3702131 res!1505981) b!3702130))

(assert (= (and b!3702130 (not res!1505984)) b!3702128))

(assert (= (and b!3702128 (not res!1505980)) b!3702129))

(assert (= (or b!3702133 b!3702130 b!3702136) bm!267487))

(assert (=> b!3702127 m!4212083))

(assert (=> b!3702127 m!4212431))

(assert (=> b!3702127 m!4212431))

(declare-fun m!4213329 () Bool)

(assert (=> b!3702127 m!4213329))

(assert (=> b!3702127 m!4212083))

(assert (=> b!3702127 m!4212435))

(assert (=> b!3702127 m!4213329))

(assert (=> b!3702127 m!4212435))

(declare-fun m!4213331 () Bool)

(assert (=> b!3702127 m!4213331))

(assert (=> b!3702129 m!4212083))

(assert (=> b!3702129 m!4212431))

(declare-fun m!4213333 () Bool)

(assert (=> b!3702137 m!4213333))

(assert (=> d!1085625 m!4212083))

(assert (=> d!1085625 m!4212441))

(declare-fun m!4213335 () Bool)

(assert (=> d!1085625 m!4213335))

(assert (=> b!3702124 m!4212083))

(assert (=> b!3702124 m!4212435))

(assert (=> b!3702124 m!4212435))

(assert (=> b!3702124 m!4212445))

(assert (=> b!3702128 m!4212083))

(assert (=> b!3702128 m!4212435))

(assert (=> b!3702128 m!4212435))

(assert (=> b!3702128 m!4212445))

(assert (=> bm!267487 m!4212083))

(assert (=> bm!267487 m!4212441))

(assert (=> b!3702126 m!4212083))

(assert (=> b!3702126 m!4212431))

(assert (=> b!3701329 d!1085625))

(assert (=> b!3701329 d!1085229))

(declare-fun d!1085627 () Bool)

(assert (=> d!1085627 (= (list!14691 (dynLambda!17184 (toChars!8175 (transformation!5980 (rule!8848 token!544))) (value!190884 token!544))) (list!14693 (c!639472 (dynLambda!17184 (toChars!8175 (transformation!5980 (rule!8848 token!544))) (value!190884 token!544)))))))

(declare-fun bs!574512 () Bool)

(assert (= bs!574512 d!1085627))

(declare-fun m!4213337 () Bool)

(assert (=> bs!574512 m!4213337))

(assert (=> b!3701305 d!1085627))

(assert (=> b!3701347 d!1085439))

(declare-fun b!3702138 () Bool)

(declare-fun res!1505991 () Bool)

(declare-fun e!2292763 () Bool)

(assert (=> b!3702138 (=> (not res!1505991) (not e!2292763))))

(assert (=> b!3702138 (= res!1505991 (isEmpty!23447 (tail!5732 (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295223)))))))))

(declare-fun b!3702139 () Bool)

(declare-fun e!2292760 () Bool)

(declare-fun lt!1295597 () Bool)

(assert (=> b!3702139 (= e!2292760 (not lt!1295597))))

(declare-fun d!1085629 () Bool)

(declare-fun e!2292761 () Bool)

(assert (=> d!1085629 e!2292761))

(declare-fun c!639716 () Bool)

(assert (=> d!1085629 (= c!639716 ((_ is EmptyExpr!10739) (regex!5980 (h!44760 rules!3598))))))

(declare-fun e!2292762 () Bool)

(assert (=> d!1085629 (= lt!1295597 e!2292762)))

(declare-fun c!639714 () Bool)

(assert (=> d!1085629 (= c!639714 (isEmpty!23447 (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295223))))))))

(assert (=> d!1085629 (validRegex!4904 (regex!5980 (h!44760 rules!3598)))))

(assert (=> d!1085629 (= (matchR!5272 (regex!5980 (h!44760 rules!3598)) (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295223))))) lt!1295597)))

(declare-fun b!3702140 () Bool)

(assert (=> b!3702140 (= e!2292763 (= (head!7995 (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295223))))) (c!639473 (regex!5980 (h!44760 rules!3598)))))))

(declare-fun b!3702141 () Bool)

(assert (=> b!3702141 (= e!2292762 (matchR!5272 (derivativeStep!3282 (regex!5980 (h!44760 rules!3598)) (head!7995 (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295223)))))) (tail!5732 (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295223)))))))))

(declare-fun b!3702142 () Bool)

(declare-fun res!1505988 () Bool)

(declare-fun e!2292764 () Bool)

(assert (=> b!3702142 (=> res!1505988 e!2292764)))

(assert (=> b!3702142 (= res!1505988 (not (isEmpty!23447 (tail!5732 (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295223))))))))))

(declare-fun b!3702143 () Bool)

(assert (=> b!3702143 (= e!2292764 (not (= (head!7995 (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295223))))) (c!639473 (regex!5980 (h!44760 rules!3598))))))))

(declare-fun b!3702144 () Bool)

(declare-fun e!2292759 () Bool)

(assert (=> b!3702144 (= e!2292759 e!2292764)))

(declare-fun res!1505992 () Bool)

(assert (=> b!3702144 (=> res!1505992 e!2292764)))

(declare-fun call!267493 () Bool)

(assert (=> b!3702144 (= res!1505992 call!267493)))

(declare-fun b!3702145 () Bool)

(declare-fun e!2292758 () Bool)

(assert (=> b!3702145 (= e!2292758 e!2292759)))

(declare-fun res!1505989 () Bool)

(assert (=> b!3702145 (=> (not res!1505989) (not e!2292759))))

(assert (=> b!3702145 (= res!1505989 (not lt!1295597))))

(declare-fun b!3702146 () Bool)

(declare-fun res!1505987 () Bool)

(assert (=> b!3702146 (=> res!1505987 e!2292758)))

(assert (=> b!3702146 (= res!1505987 (not ((_ is ElementMatch!10739) (regex!5980 (h!44760 rules!3598)))))))

(assert (=> b!3702146 (= e!2292760 e!2292758)))

(declare-fun b!3702147 () Bool)

(assert (=> b!3702147 (= e!2292761 (= lt!1295597 call!267493))))

(declare-fun b!3702148 () Bool)

(assert (=> b!3702148 (= e!2292761 e!2292760)))

(declare-fun c!639715 () Bool)

(assert (=> b!3702148 (= c!639715 ((_ is EmptyLang!10739) (regex!5980 (h!44760 rules!3598))))))

(declare-fun bm!267488 () Bool)

(assert (=> bm!267488 (= call!267493 (isEmpty!23447 (list!14691 (charsOf!3969 (_1!22732 (get!13101 lt!1295223))))))))

(declare-fun b!3702149 () Bool)

(declare-fun res!1505986 () Bool)

(assert (=> b!3702149 (=> res!1505986 e!2292758)))

(assert (=> b!3702149 (= res!1505986 e!2292763)))

(declare-fun res!1505985 () Bool)

(assert (=> b!3702149 (=> (not res!1505985) (not e!2292763))))

(assert (=> b!3702149 (= res!1505985 lt!1295597)))

(declare-fun b!3702150 () Bool)

(declare-fun res!1505990 () Bool)

(assert (=> b!3702150 (=> (not res!1505990) (not e!2292763))))

(assert (=> b!3702150 (= res!1505990 (not call!267493))))

(declare-fun b!3702151 () Bool)

(assert (=> b!3702151 (= e!2292762 (nullable!3740 (regex!5980 (h!44760 rules!3598))))))

(assert (= (and d!1085629 c!639714) b!3702151))

(assert (= (and d!1085629 (not c!639714)) b!3702141))

(assert (= (and d!1085629 c!639716) b!3702147))

(assert (= (and d!1085629 (not c!639716)) b!3702148))

(assert (= (and b!3702148 c!639715) b!3702139))

(assert (= (and b!3702148 (not c!639715)) b!3702146))

(assert (= (and b!3702146 (not res!1505987)) b!3702149))

(assert (= (and b!3702149 res!1505985) b!3702150))

(assert (= (and b!3702150 res!1505990) b!3702138))

(assert (= (and b!3702138 res!1505991) b!3702140))

(assert (= (and b!3702149 (not res!1505986)) b!3702145))

(assert (= (and b!3702145 res!1505989) b!3702144))

(assert (= (and b!3702144 (not res!1505992)) b!3702142))

(assert (= (and b!3702142 (not res!1505988)) b!3702143))

(assert (= (or b!3702147 b!3702144 b!3702150) bm!267488))

(assert (=> b!3702141 m!4212409))

(declare-fun m!4213339 () Bool)

(assert (=> b!3702141 m!4213339))

(assert (=> b!3702141 m!4213339))

(declare-fun m!4213341 () Bool)

(assert (=> b!3702141 m!4213341))

(assert (=> b!3702141 m!4212409))

(declare-fun m!4213343 () Bool)

(assert (=> b!3702141 m!4213343))

(assert (=> b!3702141 m!4213341))

(assert (=> b!3702141 m!4213343))

(declare-fun m!4213345 () Bool)

(assert (=> b!3702141 m!4213345))

(assert (=> b!3702143 m!4212409))

(assert (=> b!3702143 m!4213339))

(assert (=> b!3702151 m!4212579))

(assert (=> d!1085629 m!4212409))

(declare-fun m!4213347 () Bool)

(assert (=> d!1085629 m!4213347))

(assert (=> d!1085629 m!4212581))

(assert (=> b!3702138 m!4212409))

(assert (=> b!3702138 m!4213343))

(assert (=> b!3702138 m!4213343))

(declare-fun m!4213349 () Bool)

(assert (=> b!3702138 m!4213349))

(assert (=> b!3702142 m!4212409))

(assert (=> b!3702142 m!4213343))

(assert (=> b!3702142 m!4213343))

(assert (=> b!3702142 m!4213349))

(assert (=> bm!267488 m!4212409))

(assert (=> bm!267488 m!4213347))

(assert (=> b!3702140 m!4212409))

(assert (=> b!3702140 m!4213339))

(assert (=> b!3701245 d!1085629))

(assert (=> b!3701245 d!1085491))

(assert (=> b!3701245 d!1085493))

(assert (=> b!3701245 d!1085471))

(declare-fun d!1085631 () Bool)

(declare-fun charsToInt!0 (List!39462) (_ BitVec 32))

(assert (=> d!1085631 (= (inv!16 (value!190884 token!544)) (= (charsToInt!0 (text!43917 (value!190884 token!544))) (value!190875 (value!190884 token!544))))))

(declare-fun bs!574513 () Bool)

(assert (= bs!574513 d!1085631))

(declare-fun m!4213351 () Bool)

(assert (=> bs!574513 m!4213351))

(assert (=> b!3701373 d!1085631))

(assert (=> b!3701243 d!1085471))

(declare-fun d!1085633 () Bool)

(assert (=> d!1085633 (= (apply!9406 (transformation!5980 (rule!8848 (_1!22732 (get!13101 lt!1295223)))) (seqFromList!4485 (originalCharacters!6688 (_1!22732 (get!13101 lt!1295223))))) (dynLambda!17192 (toValue!8316 (transformation!5980 (rule!8848 (_1!22732 (get!13101 lt!1295223))))) (seqFromList!4485 (originalCharacters!6688 (_1!22732 (get!13101 lt!1295223))))))))

(declare-fun b_lambda!109805 () Bool)

(assert (=> (not b_lambda!109805) (not d!1085633)))

(declare-fun tb!214341 () Bool)

(declare-fun t!302095 () Bool)

(assert (=> (and b!3700963 (= (toValue!8316 (transformation!5980 (rule!8848 token!544))) (toValue!8316 (transformation!5980 (rule!8848 (_1!22732 (get!13101 lt!1295223)))))) t!302095) tb!214341))

(declare-fun result!261156 () Bool)

(assert (=> tb!214341 (= result!261156 (inv!21 (dynLambda!17192 (toValue!8316 (transformation!5980 (rule!8848 (_1!22732 (get!13101 lt!1295223))))) (seqFromList!4485 (originalCharacters!6688 (_1!22732 (get!13101 lt!1295223)))))))))

(declare-fun m!4213353 () Bool)

(assert (=> tb!214341 m!4213353))

(assert (=> d!1085633 t!302095))

(declare-fun b_and!276855 () Bool)

(assert (= b_and!276827 (and (=> t!302095 result!261156) b_and!276855)))

(declare-fun t!302097 () Bool)

(declare-fun tb!214343 () Bool)

(assert (=> (and b!3700966 (= (toValue!8316 (transformation!5980 (h!44760 rules!3598))) (toValue!8316 (transformation!5980 (rule!8848 (_1!22732 (get!13101 lt!1295223)))))) t!302097) tb!214343))

(declare-fun result!261158 () Bool)

(assert (= result!261158 result!261156))

(assert (=> d!1085633 t!302097))

(declare-fun b_and!276857 () Bool)

(assert (= b_and!276829 (and (=> t!302097 result!261158) b_and!276857)))

(declare-fun tb!214345 () Bool)

(declare-fun t!302099 () Bool)

(assert (=> (and b!3701403 (= (toValue!8316 (transformation!5980 (h!44760 (t!302009 rules!3598)))) (toValue!8316 (transformation!5980 (rule!8848 (_1!22732 (get!13101 lt!1295223)))))) t!302099) tb!214345))

(declare-fun result!261160 () Bool)

(assert (= result!261160 result!261156))

(assert (=> d!1085633 t!302099))

(declare-fun b_and!276859 () Bool)

(assert (= b_and!276831 (and (=> t!302099 result!261160) b_and!276859)))

(assert (=> d!1085633 m!4212395))

(declare-fun m!4213355 () Bool)

(assert (=> d!1085633 m!4213355))

(assert (=> b!3701243 d!1085633))

(declare-fun d!1085635 () Bool)

(assert (=> d!1085635 (= (seqFromList!4485 (originalCharacters!6688 (_1!22732 (get!13101 lt!1295223)))) (fromListB!2067 (originalCharacters!6688 (_1!22732 (get!13101 lt!1295223)))))))

(declare-fun bs!574514 () Bool)

(assert (= bs!574514 d!1085635))

(declare-fun m!4213357 () Bool)

(assert (=> bs!574514 m!4213357))

(assert (=> b!3701243 d!1085635))

(declare-fun d!1085637 () Bool)

(declare-fun lt!1295598 () Int)

(assert (=> d!1085637 (>= lt!1295598 0)))

(declare-fun e!2292766 () Int)

(assert (=> d!1085637 (= lt!1295598 e!2292766)))

(declare-fun c!639717 () Bool)

(assert (=> d!1085637 (= c!639717 ((_ is Nil!39339) (_2!22732 (get!13101 lt!1295193))))))

(assert (=> d!1085637 (= (size!29995 (_2!22732 (get!13101 lt!1295193))) lt!1295598)))

(declare-fun b!3702152 () Bool)

(assert (=> b!3702152 (= e!2292766 0)))

(declare-fun b!3702153 () Bool)

(assert (=> b!3702153 (= e!2292766 (+ 1 (size!29995 (t!302008 (_2!22732 (get!13101 lt!1295193))))))))

(assert (= (and d!1085637 c!639717) b!3702152))

(assert (= (and d!1085637 (not c!639717)) b!3702153))

(declare-fun m!4213359 () Bool)

(assert (=> b!3702153 m!4213359))

(assert (=> b!3701124 d!1085637))

(assert (=> b!3701124 d!1085455))

(assert (=> b!3701124 d!1085301))

(declare-fun b!3702154 () Bool)

(declare-fun res!1505999 () Bool)

(declare-fun e!2292772 () Bool)

(assert (=> b!3702154 (=> (not res!1505999) (not e!2292772))))

(assert (=> b!3702154 (= res!1505999 (isEmpty!23447 (tail!5732 (tail!5732 (list!14691 (charsOf!3969 token!544))))))))

(declare-fun b!3702155 () Bool)

(declare-fun e!2292769 () Bool)

(declare-fun lt!1295599 () Bool)

(assert (=> b!3702155 (= e!2292769 (not lt!1295599))))

(declare-fun d!1085639 () Bool)

(declare-fun e!2292770 () Bool)

(assert (=> d!1085639 e!2292770))

(declare-fun c!639720 () Bool)

(assert (=> d!1085639 (= c!639720 ((_ is EmptyExpr!10739) (derivativeStep!3282 (regex!5980 lt!1295126) (head!7995 (list!14691 (charsOf!3969 token!544))))))))

(declare-fun e!2292771 () Bool)

(assert (=> d!1085639 (= lt!1295599 e!2292771)))

(declare-fun c!639718 () Bool)

(assert (=> d!1085639 (= c!639718 (isEmpty!23447 (tail!5732 (list!14691 (charsOf!3969 token!544)))))))

(assert (=> d!1085639 (validRegex!4904 (derivativeStep!3282 (regex!5980 lt!1295126) (head!7995 (list!14691 (charsOf!3969 token!544)))))))

(assert (=> d!1085639 (= (matchR!5272 (derivativeStep!3282 (regex!5980 lt!1295126) (head!7995 (list!14691 (charsOf!3969 token!544)))) (tail!5732 (list!14691 (charsOf!3969 token!544)))) lt!1295599)))

(declare-fun b!3702156 () Bool)

(assert (=> b!3702156 (= e!2292772 (= (head!7995 (tail!5732 (list!14691 (charsOf!3969 token!544)))) (c!639473 (derivativeStep!3282 (regex!5980 lt!1295126) (head!7995 (list!14691 (charsOf!3969 token!544)))))))))

(declare-fun b!3702157 () Bool)

(assert (=> b!3702157 (= e!2292771 (matchR!5272 (derivativeStep!3282 (derivativeStep!3282 (regex!5980 lt!1295126) (head!7995 (list!14691 (charsOf!3969 token!544)))) (head!7995 (tail!5732 (list!14691 (charsOf!3969 token!544))))) (tail!5732 (tail!5732 (list!14691 (charsOf!3969 token!544))))))))

(declare-fun b!3702158 () Bool)

(declare-fun res!1505996 () Bool)

(declare-fun e!2292773 () Bool)

(assert (=> b!3702158 (=> res!1505996 e!2292773)))

(assert (=> b!3702158 (= res!1505996 (not (isEmpty!23447 (tail!5732 (tail!5732 (list!14691 (charsOf!3969 token!544)))))))))

(declare-fun b!3702159 () Bool)

(assert (=> b!3702159 (= e!2292773 (not (= (head!7995 (tail!5732 (list!14691 (charsOf!3969 token!544)))) (c!639473 (derivativeStep!3282 (regex!5980 lt!1295126) (head!7995 (list!14691 (charsOf!3969 token!544))))))))))

(declare-fun b!3702160 () Bool)

(declare-fun e!2292768 () Bool)

(assert (=> b!3702160 (= e!2292768 e!2292773)))

(declare-fun res!1506000 () Bool)

(assert (=> b!3702160 (=> res!1506000 e!2292773)))

(declare-fun call!267494 () Bool)

(assert (=> b!3702160 (= res!1506000 call!267494)))

(declare-fun b!3702161 () Bool)

(declare-fun e!2292767 () Bool)

(assert (=> b!3702161 (= e!2292767 e!2292768)))

(declare-fun res!1505997 () Bool)

(assert (=> b!3702161 (=> (not res!1505997) (not e!2292768))))

(assert (=> b!3702161 (= res!1505997 (not lt!1295599))))

(declare-fun b!3702162 () Bool)

(declare-fun res!1505995 () Bool)

(assert (=> b!3702162 (=> res!1505995 e!2292767)))

(assert (=> b!3702162 (= res!1505995 (not ((_ is ElementMatch!10739) (derivativeStep!3282 (regex!5980 lt!1295126) (head!7995 (list!14691 (charsOf!3969 token!544)))))))))

(assert (=> b!3702162 (= e!2292769 e!2292767)))

(declare-fun b!3702163 () Bool)

(assert (=> b!3702163 (= e!2292770 (= lt!1295599 call!267494))))

(declare-fun b!3702164 () Bool)

(assert (=> b!3702164 (= e!2292770 e!2292769)))

(declare-fun c!639719 () Bool)

(assert (=> b!3702164 (= c!639719 ((_ is EmptyLang!10739) (derivativeStep!3282 (regex!5980 lt!1295126) (head!7995 (list!14691 (charsOf!3969 token!544))))))))

(declare-fun bm!267489 () Bool)

(assert (=> bm!267489 (= call!267494 (isEmpty!23447 (tail!5732 (list!14691 (charsOf!3969 token!544)))))))

(declare-fun b!3702165 () Bool)

(declare-fun res!1505994 () Bool)

(assert (=> b!3702165 (=> res!1505994 e!2292767)))

(assert (=> b!3702165 (= res!1505994 e!2292772)))

(declare-fun res!1505993 () Bool)

(assert (=> b!3702165 (=> (not res!1505993) (not e!2292772))))

(assert (=> b!3702165 (= res!1505993 lt!1295599)))

(declare-fun b!3702166 () Bool)

(declare-fun res!1505998 () Bool)

(assert (=> b!3702166 (=> (not res!1505998) (not e!2292772))))

(assert (=> b!3702166 (= res!1505998 (not call!267494))))

(declare-fun b!3702167 () Bool)

(assert (=> b!3702167 (= e!2292771 (nullable!3740 (derivativeStep!3282 (regex!5980 lt!1295126) (head!7995 (list!14691 (charsOf!3969 token!544))))))))

(assert (= (and d!1085639 c!639718) b!3702167))

(assert (= (and d!1085639 (not c!639718)) b!3702157))

(assert (= (and d!1085639 c!639720) b!3702163))

(assert (= (and d!1085639 (not c!639720)) b!3702164))

(assert (= (and b!3702164 c!639719) b!3702155))

(assert (= (and b!3702164 (not c!639719)) b!3702162))

(assert (= (and b!3702162 (not res!1505995)) b!3702165))

(assert (= (and b!3702165 res!1505993) b!3702166))

(assert (= (and b!3702166 res!1505998) b!3702154))

(assert (= (and b!3702154 res!1505999) b!3702156))

(assert (= (and b!3702165 (not res!1505994)) b!3702161))

(assert (= (and b!3702161 res!1505997) b!3702160))

(assert (= (and b!3702160 (not res!1506000)) b!3702158))

(assert (= (and b!3702158 (not res!1505996)) b!3702159))

(assert (= (or b!3702163 b!3702160 b!3702166) bm!267489))

(assert (=> b!3702157 m!4212435))

(assert (=> b!3702157 m!4213291))

(assert (=> b!3702157 m!4212433))

(assert (=> b!3702157 m!4213291))

(declare-fun m!4213361 () Bool)

(assert (=> b!3702157 m!4213361))

(assert (=> b!3702157 m!4212435))

(assert (=> b!3702157 m!4213295))

(assert (=> b!3702157 m!4213361))

(assert (=> b!3702157 m!4213295))

(declare-fun m!4213363 () Bool)

(assert (=> b!3702157 m!4213363))

(assert (=> b!3702159 m!4212435))

(assert (=> b!3702159 m!4213291))

(assert (=> b!3702167 m!4212433))

(declare-fun m!4213365 () Bool)

(assert (=> b!3702167 m!4213365))

(assert (=> d!1085639 m!4212435))

(assert (=> d!1085639 m!4212445))

(assert (=> d!1085639 m!4212433))

(declare-fun m!4213367 () Bool)

(assert (=> d!1085639 m!4213367))

(assert (=> b!3702154 m!4212435))

(assert (=> b!3702154 m!4213295))

(assert (=> b!3702154 m!4213295))

(assert (=> b!3702154 m!4213303))

(assert (=> b!3702158 m!4212435))

(assert (=> b!3702158 m!4213295))

(assert (=> b!3702158 m!4213295))

(assert (=> b!3702158 m!4213303))

(assert (=> bm!267489 m!4212435))

(assert (=> bm!267489 m!4212445))

(assert (=> b!3702156 m!4212435))

(assert (=> b!3702156 m!4213291))

(assert (=> b!3701285 d!1085639))

(declare-fun b!3702168 () Bool)

(declare-fun e!2292774 () Regex!10739)

(declare-fun call!267498 () Regex!10739)

(declare-fun call!267495 () Regex!10739)

(assert (=> b!3702168 (= e!2292774 (Union!10739 call!267498 call!267495))))

(declare-fun d!1085641 () Bool)

(declare-fun lt!1295600 () Regex!10739)

(assert (=> d!1085641 (validRegex!4904 lt!1295600)))

(declare-fun e!2292778 () Regex!10739)

(assert (=> d!1085641 (= lt!1295600 e!2292778)))

(declare-fun c!639723 () Bool)

(assert (=> d!1085641 (= c!639723 (or ((_ is EmptyExpr!10739) (regex!5980 lt!1295126)) ((_ is EmptyLang!10739) (regex!5980 lt!1295126))))))

(assert (=> d!1085641 (validRegex!4904 (regex!5980 lt!1295126))))

(assert (=> d!1085641 (= (derivativeStep!3282 (regex!5980 lt!1295126) (head!7995 (list!14691 (charsOf!3969 token!544)))) lt!1295600)))

(declare-fun b!3702169 () Bool)

(declare-fun e!2292775 () Regex!10739)

(declare-fun call!267496 () Regex!10739)

(assert (=> b!3702169 (= e!2292775 (Union!10739 (Concat!16950 call!267496 (regTwo!21990 (regex!5980 lt!1295126))) EmptyLang!10739))))

(declare-fun b!3702170 () Bool)

(declare-fun e!2292776 () Regex!10739)

(assert (=> b!3702170 (= e!2292776 (ite (= (head!7995 (list!14691 (charsOf!3969 token!544))) (c!639473 (regex!5980 lt!1295126))) EmptyExpr!10739 EmptyLang!10739))))

(declare-fun bm!267490 () Bool)

(declare-fun c!639725 () Bool)

(assert (=> bm!267490 (= call!267498 (derivativeStep!3282 (ite c!639725 (regOne!21991 (regex!5980 lt!1295126)) (regOne!21990 (regex!5980 lt!1295126))) (head!7995 (list!14691 (charsOf!3969 token!544)))))))

(declare-fun b!3702171 () Bool)

(declare-fun e!2292777 () Regex!10739)

(declare-fun call!267497 () Regex!10739)

(assert (=> b!3702171 (= e!2292777 (Concat!16950 call!267497 (regex!5980 lt!1295126)))))

(declare-fun b!3702172 () Bool)

(assert (=> b!3702172 (= e!2292778 e!2292776)))

(declare-fun c!639721 () Bool)

(assert (=> b!3702172 (= c!639721 ((_ is ElementMatch!10739) (regex!5980 lt!1295126)))))

(declare-fun b!3702173 () Bool)

(assert (=> b!3702173 (= e!2292778 EmptyLang!10739)))

(declare-fun b!3702174 () Bool)

(declare-fun c!639722 () Bool)

(assert (=> b!3702174 (= c!639722 (nullable!3740 (regOne!21990 (regex!5980 lt!1295126))))))

(assert (=> b!3702174 (= e!2292777 e!2292775)))

(declare-fun bm!267491 () Bool)

(assert (=> bm!267491 (= call!267497 call!267495)))

(declare-fun bm!267492 () Bool)

(declare-fun c!639724 () Bool)

(assert (=> bm!267492 (= call!267495 (derivativeStep!3282 (ite c!639725 (regTwo!21991 (regex!5980 lt!1295126)) (ite c!639724 (reg!11068 (regex!5980 lt!1295126)) (ite c!639722 (regTwo!21990 (regex!5980 lt!1295126)) (regOne!21990 (regex!5980 lt!1295126))))) (head!7995 (list!14691 (charsOf!3969 token!544)))))))

(declare-fun b!3702175 () Bool)

(assert (=> b!3702175 (= e!2292775 (Union!10739 (Concat!16950 call!267498 (regTwo!21990 (regex!5980 lt!1295126))) call!267496))))

(declare-fun b!3702176 () Bool)

(assert (=> b!3702176 (= c!639725 ((_ is Union!10739) (regex!5980 lt!1295126)))))

(assert (=> b!3702176 (= e!2292776 e!2292774)))

(declare-fun bm!267493 () Bool)

(assert (=> bm!267493 (= call!267496 call!267497)))

(declare-fun b!3702177 () Bool)

(assert (=> b!3702177 (= e!2292774 e!2292777)))

(assert (=> b!3702177 (= c!639724 ((_ is Star!10739) (regex!5980 lt!1295126)))))

(assert (= (and d!1085641 c!639723) b!3702173))

(assert (= (and d!1085641 (not c!639723)) b!3702172))

(assert (= (and b!3702172 c!639721) b!3702170))

(assert (= (and b!3702172 (not c!639721)) b!3702176))

(assert (= (and b!3702176 c!639725) b!3702168))

(assert (= (and b!3702176 (not c!639725)) b!3702177))

(assert (= (and b!3702177 c!639724) b!3702171))

(assert (= (and b!3702177 (not c!639724)) b!3702174))

(assert (= (and b!3702174 c!639722) b!3702175))

(assert (= (and b!3702174 (not c!639722)) b!3702169))

(assert (= (or b!3702175 b!3702169) bm!267493))

(assert (= (or b!3702171 bm!267493) bm!267491))

(assert (= (or b!3702168 bm!267491) bm!267492))

(assert (= (or b!3702168 b!3702175) bm!267490))

(declare-fun m!4213369 () Bool)

(assert (=> d!1085641 m!4213369))

(assert (=> d!1085641 m!4212443))

(assert (=> bm!267490 m!4212431))

(declare-fun m!4213371 () Bool)

(assert (=> bm!267490 m!4213371))

(declare-fun m!4213373 () Bool)

(assert (=> b!3702174 m!4213373))

(assert (=> bm!267492 m!4212431))

(declare-fun m!4213375 () Bool)

(assert (=> bm!267492 m!4213375))

(assert (=> b!3701285 d!1085641))

(assert (=> b!3701285 d!1085475))

(assert (=> b!3701285 d!1085415))

(declare-fun d!1085643 () Bool)

(declare-fun res!1506001 () Bool)

(declare-fun e!2292779 () Bool)

(assert (=> d!1085643 (=> res!1506001 e!2292779)))

(assert (=> d!1085643 (= res!1506001 ((_ is Nil!39340) lt!1295131))))

(assert (=> d!1085643 (= (noDuplicateTag!2307 thiss!25322 lt!1295131 Nil!39342) e!2292779)))

(declare-fun b!3702178 () Bool)

(declare-fun e!2292780 () Bool)

(assert (=> b!3702178 (= e!2292779 e!2292780)))

(declare-fun res!1506002 () Bool)

(assert (=> b!3702178 (=> (not res!1506002) (not e!2292780))))

(assert (=> b!3702178 (= res!1506002 (not (contains!7842 Nil!39342 (tag!6812 (h!44760 lt!1295131)))))))

(declare-fun b!3702179 () Bool)

(assert (=> b!3702179 (= e!2292780 (noDuplicateTag!2307 thiss!25322 (t!302009 lt!1295131) (Cons!39342 (tag!6812 (h!44760 lt!1295131)) Nil!39342)))))

(assert (= (and d!1085643 (not res!1506001)) b!3702178))

(assert (= (and b!3702178 res!1506002) b!3702179))

(declare-fun m!4213377 () Bool)

(assert (=> b!3702178 m!4213377))

(declare-fun m!4213379 () Bool)

(assert (=> b!3702179 m!4213379))

(assert (=> b!3701332 d!1085643))

(declare-fun bs!574515 () Bool)

(declare-fun d!1085645 () Bool)

(assert (= bs!574515 (and d!1085645 d!1085577)))

(declare-fun lambda!125104 () Int)

(assert (=> bs!574515 (= (and (= (toChars!8175 (transformation!5980 (rule!8848 token!544))) (toChars!8175 (transformation!5980 (h!44760 rules!3598)))) (= (toValue!8316 (transformation!5980 (rule!8848 token!544))) (toValue!8316 (transformation!5980 (h!44760 rules!3598))))) (= lambda!125104 lambda!125099))))

(assert (=> d!1085645 true))

(assert (=> d!1085645 (< (dynLambda!17193 order!21711 (toChars!8175 (transformation!5980 (rule!8848 token!544)))) (dynLambda!17194 order!21713 lambda!125104))))

(assert (=> d!1085645 true))

(assert (=> d!1085645 (< (dynLambda!17190 order!21707 (toValue!8316 (transformation!5980 (rule!8848 token!544)))) (dynLambda!17194 order!21713 lambda!125104))))

(assert (=> d!1085645 (= (semiInverseModEq!2554 (toChars!8175 (transformation!5980 (rule!8848 token!544))) (toValue!8316 (transformation!5980 (rule!8848 token!544)))) (Forall!1392 lambda!125104))))

(declare-fun bs!574516 () Bool)

(assert (= bs!574516 d!1085645))

(declare-fun m!4213381 () Bool)

(assert (=> bs!574516 m!4213381))

(assert (=> d!1085221 d!1085645))

(declare-fun d!1085647 () Bool)

(assert (=> d!1085647 (= (isEmpty!23448 lt!1295239) (not ((_ is Some!8522) lt!1295239)))))

(assert (=> d!1085239 d!1085647))

(assert (=> d!1085239 d!1085247))

(declare-fun d!1085649 () Bool)

(declare-fun charsToBigInt!1 (List!39462) Int)

(assert (=> d!1085649 (= (inv!17 (value!190884 token!544)) (= (charsToBigInt!1 (text!43918 (value!190884 token!544))) (value!190876 (value!190884 token!544))))))

(declare-fun bs!574517 () Bool)

(assert (= bs!574517 d!1085649))

(declare-fun m!4213383 () Bool)

(assert (=> bs!574517 m!4213383))

(assert (=> b!3701371 d!1085649))

(declare-fun d!1085651 () Bool)

(assert (=> d!1085651 (= (isEmpty!23446 lt!1295134) (not ((_ is Some!8523) lt!1295134)))))

(assert (=> d!1085165 d!1085651))

(declare-fun d!1085653 () Bool)

(declare-fun e!2292783 () Bool)

(assert (=> d!1085653 e!2292783))

(declare-fun res!1506005 () Bool)

(assert (=> d!1085653 (=> res!1506005 e!2292783)))

(assert (=> d!1085653 (= res!1506005 (isEmpty!23447 (_1!22734 (findLongestMatchInner!1126 (regex!5980 (h!44760 rules!3598)) Nil!39339 (size!29995 Nil!39339) input!3172 input!3172 (size!29995 input!3172)))))))

(declare-fun lt!1295603 () Unit!57306)

(declare-fun choose!22140 (Regex!10739 List!39463) Unit!57306)

(assert (=> d!1085653 (= lt!1295603 (choose!22140 (regex!5980 (h!44760 rules!3598)) input!3172))))

(assert (=> d!1085653 (validRegex!4904 (regex!5980 (h!44760 rules!3598)))))

(assert (=> d!1085653 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1099 (regex!5980 (h!44760 rules!3598)) input!3172) lt!1295603)))

(declare-fun b!3702182 () Bool)

(assert (=> b!3702182 (= e!2292783 (matchR!5272 (regex!5980 (h!44760 rules!3598)) (_1!22734 (findLongestMatchInner!1126 (regex!5980 (h!44760 rules!3598)) Nil!39339 (size!29995 Nil!39339) input!3172 input!3172 (size!29995 input!3172)))))))

(assert (= (and d!1085653 (not res!1506005)) b!3702182))

(assert (=> d!1085653 m!4212379))

(assert (=> d!1085653 m!4212581))

(declare-fun m!4213385 () Bool)

(assert (=> d!1085653 m!4213385))

(assert (=> d!1085653 m!4212381))

(assert (=> d!1085653 m!4212285))

(assert (=> d!1085653 m!4212383))

(assert (=> d!1085653 m!4212285))

(assert (=> d!1085653 m!4212381))

(assert (=> b!3702182 m!4212381))

(assert (=> b!3702182 m!4212285))

(assert (=> b!3702182 m!4212381))

(assert (=> b!3702182 m!4212285))

(assert (=> b!3702182 m!4212383))

(assert (=> b!3702182 m!4212415))

(assert (=> b!3701241 d!1085653))

(assert (=> b!3701241 d!1085301))

(declare-fun d!1085655 () Bool)

(declare-fun lt!1295606 () Int)

(assert (=> d!1085655 (= lt!1295606 (size!29995 (list!14691 (seqFromList!4485 (_1!22734 lt!1295225)))))))

(declare-fun size!29998 (Conc!12077) Int)

(assert (=> d!1085655 (= lt!1295606 (size!29998 (c!639472 (seqFromList!4485 (_1!22734 lt!1295225)))))))

(assert (=> d!1085655 (= (size!29996 (seqFromList!4485 (_1!22734 lt!1295225))) lt!1295606)))

(declare-fun bs!574518 () Bool)

(assert (= bs!574518 d!1085655))

(assert (=> bs!574518 m!4212375))

(declare-fun m!4213387 () Bool)

(assert (=> bs!574518 m!4213387))

(assert (=> bs!574518 m!4213387))

(declare-fun m!4213389 () Bool)

(assert (=> bs!574518 m!4213389))

(declare-fun m!4213391 () Bool)

(assert (=> bs!574518 m!4213391))

(assert (=> b!3701241 d!1085655))

(declare-fun d!1085657 () Bool)

(assert (=> d!1085657 (= (isEmpty!23447 (_1!22734 (findLongestMatchInner!1126 (regex!5980 (h!44760 rules!3598)) Nil!39339 (size!29995 Nil!39339) input!3172 input!3172 (size!29995 input!3172)))) ((_ is Nil!39339) (_1!22734 (findLongestMatchInner!1126 (regex!5980 (h!44760 rules!3598)) Nil!39339 (size!29995 Nil!39339) input!3172 input!3172 (size!29995 input!3172)))))))

(assert (=> b!3701241 d!1085657))

(declare-fun bs!574519 () Bool)

(declare-fun d!1085659 () Bool)

(assert (= bs!574519 (and d!1085659 d!1085577)))

(declare-fun lambda!125107 () Int)

(assert (=> bs!574519 (= lambda!125107 lambda!125099)))

(declare-fun bs!574520 () Bool)

(assert (= bs!574520 (and d!1085659 d!1085645)))

(assert (=> bs!574520 (= (and (= (toChars!8175 (transformation!5980 (h!44760 rules!3598))) (toChars!8175 (transformation!5980 (rule!8848 token!544)))) (= (toValue!8316 (transformation!5980 (h!44760 rules!3598))) (toValue!8316 (transformation!5980 (rule!8848 token!544))))) (= lambda!125107 lambda!125104))))

(declare-fun b!3702187 () Bool)

(declare-fun e!2292786 () Bool)

(assert (=> b!3702187 (= e!2292786 true)))

(assert (=> d!1085659 e!2292786))

(assert (= d!1085659 b!3702187))

(assert (=> b!3702187 (< (dynLambda!17190 order!21707 (toValue!8316 (transformation!5980 (h!44760 rules!3598)))) (dynLambda!17194 order!21713 lambda!125107))))

(assert (=> b!3702187 (< (dynLambda!17193 order!21711 (toChars!8175 (transformation!5980 (h!44760 rules!3598)))) (dynLambda!17194 order!21713 lambda!125107))))

(assert (=> d!1085659 (= (list!14691 (dynLambda!17184 (toChars!8175 (transformation!5980 (h!44760 rules!3598))) (dynLambda!17192 (toValue!8316 (transformation!5980 (h!44760 rules!3598))) (seqFromList!4485 (_1!22734 lt!1295225))))) (list!14691 (seqFromList!4485 (_1!22734 lt!1295225))))))

(declare-fun lt!1295609 () Unit!57306)

(declare-fun ForallOf!760 (Int BalanceConc!23768) Unit!57306)

(assert (=> d!1085659 (= lt!1295609 (ForallOf!760 lambda!125107 (seqFromList!4485 (_1!22734 lt!1295225))))))

(assert (=> d!1085659 (= (lemmaSemiInverse!1632 (transformation!5980 (h!44760 rules!3598)) (seqFromList!4485 (_1!22734 lt!1295225))) lt!1295609)))

(declare-fun b_lambda!109807 () Bool)

(assert (=> (not b_lambda!109807) (not d!1085659)))

(declare-fun tb!214347 () Bool)

(declare-fun t!302101 () Bool)

(assert (=> (and b!3700963 (= (toChars!8175 (transformation!5980 (rule!8848 token!544))) (toChars!8175 (transformation!5980 (h!44760 rules!3598)))) t!302101) tb!214347))

(declare-fun e!2292787 () Bool)

(declare-fun tp!1125242 () Bool)

(declare-fun b!3702188 () Bool)

(assert (=> b!3702188 (= e!2292787 (and (inv!52871 (c!639472 (dynLambda!17184 (toChars!8175 (transformation!5980 (h!44760 rules!3598))) (dynLambda!17192 (toValue!8316 (transformation!5980 (h!44760 rules!3598))) (seqFromList!4485 (_1!22734 lt!1295225)))))) tp!1125242))))

(declare-fun result!261162 () Bool)

(assert (=> tb!214347 (= result!261162 (and (inv!52872 (dynLambda!17184 (toChars!8175 (transformation!5980 (h!44760 rules!3598))) (dynLambda!17192 (toValue!8316 (transformation!5980 (h!44760 rules!3598))) (seqFromList!4485 (_1!22734 lt!1295225))))) e!2292787))))

(assert (= tb!214347 b!3702188))

(declare-fun m!4213393 () Bool)

(assert (=> b!3702188 m!4213393))

(declare-fun m!4213395 () Bool)

(assert (=> tb!214347 m!4213395))

(assert (=> d!1085659 t!302101))

(declare-fun b_and!276861 () Bool)

(assert (= b_and!276833 (and (=> t!302101 result!261162) b_and!276861)))

(declare-fun t!302103 () Bool)

(declare-fun tb!214349 () Bool)

(assert (=> (and b!3700966 (= (toChars!8175 (transformation!5980 (h!44760 rules!3598))) (toChars!8175 (transformation!5980 (h!44760 rules!3598)))) t!302103) tb!214349))

(declare-fun result!261164 () Bool)

(assert (= result!261164 result!261162))

(assert (=> d!1085659 t!302103))

(declare-fun b_and!276863 () Bool)

(assert (= b_and!276835 (and (=> t!302103 result!261164) b_and!276863)))

(declare-fun t!302105 () Bool)

(declare-fun tb!214351 () Bool)

(assert (=> (and b!3701403 (= (toChars!8175 (transformation!5980 (h!44760 (t!302009 rules!3598)))) (toChars!8175 (transformation!5980 (h!44760 rules!3598)))) t!302105) tb!214351))

(declare-fun result!261166 () Bool)

(assert (= result!261166 result!261162))

(assert (=> d!1085659 t!302105))

(declare-fun b_and!276865 () Bool)

(assert (= b_and!276837 (and (=> t!302105 result!261166) b_and!276865)))

(declare-fun b_lambda!109809 () Bool)

(assert (=> (not b_lambda!109809) (not d!1085659)))

(declare-fun tb!214353 () Bool)

(declare-fun t!302107 () Bool)

(assert (=> (and b!3700963 (= (toValue!8316 (transformation!5980 (rule!8848 token!544))) (toValue!8316 (transformation!5980 (h!44760 rules!3598)))) t!302107) tb!214353))

(declare-fun result!261168 () Bool)

(assert (=> tb!214353 (= result!261168 (inv!21 (dynLambda!17192 (toValue!8316 (transformation!5980 (h!44760 rules!3598))) (seqFromList!4485 (_1!22734 lt!1295225)))))))

(declare-fun m!4213397 () Bool)

(assert (=> tb!214353 m!4213397))

(assert (=> d!1085659 t!302107))

(declare-fun b_and!276867 () Bool)

(assert (= b_and!276855 (and (=> t!302107 result!261168) b_and!276867)))

(declare-fun t!302109 () Bool)

(declare-fun tb!214355 () Bool)

(assert (=> (and b!3700966 (= (toValue!8316 (transformation!5980 (h!44760 rules!3598))) (toValue!8316 (transformation!5980 (h!44760 rules!3598)))) t!302109) tb!214355))

(declare-fun result!261170 () Bool)

(assert (= result!261170 result!261168))

(assert (=> d!1085659 t!302109))

(declare-fun b_and!276869 () Bool)

(assert (= b_and!276857 (and (=> t!302109 result!261170) b_and!276869)))

(declare-fun t!302111 () Bool)

(declare-fun tb!214357 () Bool)

(assert (=> (and b!3701403 (= (toValue!8316 (transformation!5980 (h!44760 (t!302009 rules!3598)))) (toValue!8316 (transformation!5980 (h!44760 rules!3598)))) t!302111) tb!214357))

(declare-fun result!261172 () Bool)

(assert (= result!261172 result!261168))

(assert (=> d!1085659 t!302111))

(declare-fun b_and!276871 () Bool)

(assert (= b_and!276859 (and (=> t!302111 result!261172) b_and!276871)))

(declare-fun m!4213399 () Bool)

(assert (=> d!1085659 m!4213399))

(declare-fun m!4213401 () Bool)

(assert (=> d!1085659 m!4213401))

(declare-fun m!4213403 () Bool)

(assert (=> d!1085659 m!4213403))

(assert (=> d!1085659 m!4213399))

(assert (=> d!1085659 m!4212375))

(assert (=> d!1085659 m!4213387))

(assert (=> d!1085659 m!4212375))

(assert (=> d!1085659 m!4213403))

(assert (=> d!1085659 m!4212375))

(declare-fun m!4213405 () Bool)

(assert (=> d!1085659 m!4213405))

(assert (=> b!3701241 d!1085659))

(assert (=> b!3701241 d!1085299))

(assert (=> b!3701241 d!1085297))

(declare-fun d!1085661 () Bool)

(assert (=> d!1085661 (= (apply!9406 (transformation!5980 (h!44760 rules!3598)) (seqFromList!4485 (_1!22734 lt!1295225))) (dynLambda!17192 (toValue!8316 (transformation!5980 (h!44760 rules!3598))) (seqFromList!4485 (_1!22734 lt!1295225))))))

(declare-fun b_lambda!109811 () Bool)

(assert (=> (not b_lambda!109811) (not d!1085661)))

(assert (=> d!1085661 t!302107))

(declare-fun b_and!276873 () Bool)

(assert (= b_and!276867 (and (=> t!302107 result!261168) b_and!276873)))

(assert (=> d!1085661 t!302109))

(declare-fun b_and!276875 () Bool)

(assert (= b_and!276869 (and (=> t!302109 result!261170) b_and!276875)))

(assert (=> d!1085661 t!302111))

(declare-fun b_and!276877 () Bool)

(assert (= b_and!276871 (and (=> t!302111 result!261172) b_and!276877)))

(assert (=> d!1085661 m!4212375))

(assert (=> d!1085661 m!4213403))

(assert (=> b!3701241 d!1085661))

(declare-fun d!1085663 () Bool)

(assert (=> d!1085663 (= (seqFromList!4485 (_1!22734 lt!1295225)) (fromListB!2067 (_1!22734 lt!1295225)))))

(declare-fun bs!574521 () Bool)

(assert (= bs!574521 d!1085663))

(declare-fun m!4213407 () Bool)

(assert (=> bs!574521 m!4213407))

(assert (=> b!3701241 d!1085663))

(declare-fun d!1085665 () Bool)

(declare-fun lt!1295610 () Int)

(assert (=> d!1085665 (>= lt!1295610 0)))

(declare-fun e!2292789 () Int)

(assert (=> d!1085665 (= lt!1295610 e!2292789)))

(declare-fun c!639727 () Bool)

(assert (=> d!1085665 (= c!639727 ((_ is Nil!39339) (_2!22732 (get!13101 lt!1295223))))))

(assert (=> d!1085665 (= (size!29995 (_2!22732 (get!13101 lt!1295223))) lt!1295610)))

(declare-fun b!3702189 () Bool)

(assert (=> b!3702189 (= e!2292789 0)))

(declare-fun b!3702190 () Bool)

(assert (=> b!3702190 (= e!2292789 (+ 1 (size!29995 (t!302008 (_2!22732 (get!13101 lt!1295223))))))))

(assert (= (and d!1085665 c!639727) b!3702189))

(assert (= (and d!1085665 (not c!639727)) b!3702190))

(declare-fun m!4213409 () Bool)

(assert (=> b!3702190 m!4213409))

(assert (=> b!3701239 d!1085665))

(assert (=> b!3701239 d!1085471))

(assert (=> b!3701239 d!1085301))

(declare-fun tp!1125249 () Bool)

(declare-fun tp!1125251 () Bool)

(declare-fun e!2292794 () Bool)

(declare-fun b!3702199 () Bool)

(assert (=> b!3702199 (= e!2292794 (and (inv!52871 (left!30617 (c!639472 (dynLambda!17184 (toChars!8175 (transformation!5980 (rule!8848 token!544))) (value!190884 token!544))))) tp!1125249 (inv!52871 (right!30947 (c!639472 (dynLambda!17184 (toChars!8175 (transformation!5980 (rule!8848 token!544))) (value!190884 token!544))))) tp!1125251))))

(declare-fun b!3702201 () Bool)

(declare-fun e!2292795 () Bool)

(declare-fun tp!1125250 () Bool)

(assert (=> b!3702201 (= e!2292795 tp!1125250)))

(declare-fun b!3702200 () Bool)

(declare-fun inv!52878 (IArray!24159) Bool)

(assert (=> b!3702200 (= e!2292794 (and (inv!52878 (xs!15279 (c!639472 (dynLambda!17184 (toChars!8175 (transformation!5980 (rule!8848 token!544))) (value!190884 token!544))))) e!2292795))))

(assert (=> b!3701300 (= tp!1125130 (and (inv!52871 (c!639472 (dynLambda!17184 (toChars!8175 (transformation!5980 (rule!8848 token!544))) (value!190884 token!544)))) e!2292794))))

(assert (= (and b!3701300 ((_ is Node!12077) (c!639472 (dynLambda!17184 (toChars!8175 (transformation!5980 (rule!8848 token!544))) (value!190884 token!544))))) b!3702199))

(assert (= b!3702200 b!3702201))

(assert (= (and b!3701300 ((_ is Leaf!18678) (c!639472 (dynLambda!17184 (toChars!8175 (transformation!5980 (rule!8848 token!544))) (value!190884 token!544))))) b!3702200))

(declare-fun m!4213411 () Bool)

(assert (=> b!3702199 m!4213411))

(declare-fun m!4213413 () Bool)

(assert (=> b!3702199 m!4213413))

(declare-fun m!4213415 () Bool)

(assert (=> b!3702200 m!4213415))

(assert (=> b!3701300 m!4212449))

(declare-fun b!3702202 () Bool)

(declare-fun e!2292796 () Bool)

(declare-fun tp!1125252 () Bool)

(assert (=> b!3702202 (= e!2292796 (and tp_is_empty!18553 tp!1125252))))

(assert (=> b!3701408 (= tp!1125166 e!2292796)))

(assert (= (and b!3701408 ((_ is Cons!39339) (t!302008 (originalCharacters!6688 token!544)))) b!3702202))

(declare-fun b!3702203 () Bool)

(declare-fun e!2292797 () Bool)

(declare-fun tp!1125253 () Bool)

(assert (=> b!3702203 (= e!2292797 (and tp_is_empty!18553 tp!1125253))))

(assert (=> b!3701392 (= tp!1125148 e!2292797)))

(assert (= (and b!3701392 ((_ is Cons!39339) (t!302008 (t!302008 input!3172)))) b!3702203))

(declare-fun b!3702206 () Bool)

(declare-fun e!2292798 () Bool)

(declare-fun tp!1125257 () Bool)

(assert (=> b!3702206 (= e!2292798 tp!1125257)))

(assert (=> b!3701407 (= tp!1125163 e!2292798)))

(declare-fun b!3702205 () Bool)

(declare-fun tp!1125255 () Bool)

(declare-fun tp!1125254 () Bool)

(assert (=> b!3702205 (= e!2292798 (and tp!1125255 tp!1125254))))

(declare-fun b!3702204 () Bool)

(assert (=> b!3702204 (= e!2292798 tp_is_empty!18553)))

(declare-fun b!3702207 () Bool)

(declare-fun tp!1125256 () Bool)

(declare-fun tp!1125258 () Bool)

(assert (=> b!3702207 (= e!2292798 (and tp!1125256 tp!1125258))))

(assert (= (and b!3701407 ((_ is ElementMatch!10739) (regOne!21991 (regex!5980 (h!44760 rules!3598))))) b!3702204))

(assert (= (and b!3701407 ((_ is Concat!16950) (regOne!21991 (regex!5980 (h!44760 rules!3598))))) b!3702205))

(assert (= (and b!3701407 ((_ is Star!10739) (regOne!21991 (regex!5980 (h!44760 rules!3598))))) b!3702206))

(assert (= (and b!3701407 ((_ is Union!10739) (regOne!21991 (regex!5980 (h!44760 rules!3598))))) b!3702207))

(declare-fun b!3702210 () Bool)

(declare-fun e!2292799 () Bool)

(declare-fun tp!1125262 () Bool)

(assert (=> b!3702210 (= e!2292799 tp!1125262)))

(assert (=> b!3701407 (= tp!1125165 e!2292799)))

(declare-fun b!3702209 () Bool)

(declare-fun tp!1125260 () Bool)

(declare-fun tp!1125259 () Bool)

(assert (=> b!3702209 (= e!2292799 (and tp!1125260 tp!1125259))))

(declare-fun b!3702208 () Bool)

(assert (=> b!3702208 (= e!2292799 tp_is_empty!18553)))

(declare-fun b!3702211 () Bool)

(declare-fun tp!1125261 () Bool)

(declare-fun tp!1125263 () Bool)

(assert (=> b!3702211 (= e!2292799 (and tp!1125261 tp!1125263))))

(assert (= (and b!3701407 ((_ is ElementMatch!10739) (regTwo!21991 (regex!5980 (h!44760 rules!3598))))) b!3702208))

(assert (= (and b!3701407 ((_ is Concat!16950) (regTwo!21991 (regex!5980 (h!44760 rules!3598))))) b!3702209))

(assert (= (and b!3701407 ((_ is Star!10739) (regTwo!21991 (regex!5980 (h!44760 rules!3598))))) b!3702210))

(assert (= (and b!3701407 ((_ is Union!10739) (regTwo!21991 (regex!5980 (h!44760 rules!3598))))) b!3702211))

(declare-fun b!3702214 () Bool)

(declare-fun e!2292800 () Bool)

(declare-fun tp!1125267 () Bool)

(assert (=> b!3702214 (= e!2292800 tp!1125267)))

(assert (=> b!3701406 (= tp!1125164 e!2292800)))

(declare-fun b!3702213 () Bool)

(declare-fun tp!1125265 () Bool)

(declare-fun tp!1125264 () Bool)

(assert (=> b!3702213 (= e!2292800 (and tp!1125265 tp!1125264))))

(declare-fun b!3702212 () Bool)

(assert (=> b!3702212 (= e!2292800 tp_is_empty!18553)))

(declare-fun b!3702215 () Bool)

(declare-fun tp!1125266 () Bool)

(declare-fun tp!1125268 () Bool)

(assert (=> b!3702215 (= e!2292800 (and tp!1125266 tp!1125268))))

(assert (= (and b!3701406 ((_ is ElementMatch!10739) (reg!11068 (regex!5980 (h!44760 rules!3598))))) b!3702212))

(assert (= (and b!3701406 ((_ is Concat!16950) (reg!11068 (regex!5980 (h!44760 rules!3598))))) b!3702213))

(assert (= (and b!3701406 ((_ is Star!10739) (reg!11068 (regex!5980 (h!44760 rules!3598))))) b!3702214))

(assert (= (and b!3701406 ((_ is Union!10739) (reg!11068 (regex!5980 (h!44760 rules!3598))))) b!3702215))

(declare-fun b!3702218 () Bool)

(declare-fun e!2292801 () Bool)

(declare-fun tp!1125272 () Bool)

(assert (=> b!3702218 (= e!2292801 tp!1125272)))

(assert (=> b!3701402 (= tp!1125159 e!2292801)))

(declare-fun b!3702217 () Bool)

(declare-fun tp!1125270 () Bool)

(declare-fun tp!1125269 () Bool)

(assert (=> b!3702217 (= e!2292801 (and tp!1125270 tp!1125269))))

(declare-fun b!3702216 () Bool)

(assert (=> b!3702216 (= e!2292801 tp_is_empty!18553)))

(declare-fun b!3702219 () Bool)

(declare-fun tp!1125271 () Bool)

(declare-fun tp!1125273 () Bool)

(assert (=> b!3702219 (= e!2292801 (and tp!1125271 tp!1125273))))

(assert (= (and b!3701402 ((_ is ElementMatch!10739) (regex!5980 (h!44760 (t!302009 rules!3598))))) b!3702216))

(assert (= (and b!3701402 ((_ is Concat!16950) (regex!5980 (h!44760 (t!302009 rules!3598))))) b!3702217))

(assert (= (and b!3701402 ((_ is Star!10739) (regex!5980 (h!44760 (t!302009 rules!3598))))) b!3702218))

(assert (= (and b!3701402 ((_ is Union!10739) (regex!5980 (h!44760 (t!302009 rules!3598))))) b!3702219))

(declare-fun b!3702222 () Bool)

(declare-fun e!2292802 () Bool)

(declare-fun tp!1125277 () Bool)

(assert (=> b!3702222 (= e!2292802 tp!1125277)))

(assert (=> b!3701387 (= tp!1125143 e!2292802)))

(declare-fun b!3702221 () Bool)

(declare-fun tp!1125275 () Bool)

(declare-fun tp!1125274 () Bool)

(assert (=> b!3702221 (= e!2292802 (and tp!1125275 tp!1125274))))

(declare-fun b!3702220 () Bool)

(assert (=> b!3702220 (= e!2292802 tp_is_empty!18553)))

(declare-fun b!3702223 () Bool)

(declare-fun tp!1125276 () Bool)

(declare-fun tp!1125278 () Bool)

(assert (=> b!3702223 (= e!2292802 (and tp!1125276 tp!1125278))))

(assert (= (and b!3701387 ((_ is ElementMatch!10739) (regOne!21991 (regex!5980 (rule!8848 token!544))))) b!3702220))

(assert (= (and b!3701387 ((_ is Concat!16950) (regOne!21991 (regex!5980 (rule!8848 token!544))))) b!3702221))

(assert (= (and b!3701387 ((_ is Star!10739) (regOne!21991 (regex!5980 (rule!8848 token!544))))) b!3702222))

(assert (= (and b!3701387 ((_ is Union!10739) (regOne!21991 (regex!5980 (rule!8848 token!544))))) b!3702223))

(declare-fun b!3702226 () Bool)

(declare-fun e!2292803 () Bool)

(declare-fun tp!1125282 () Bool)

(assert (=> b!3702226 (= e!2292803 tp!1125282)))

(assert (=> b!3701387 (= tp!1125145 e!2292803)))

(declare-fun b!3702225 () Bool)

(declare-fun tp!1125280 () Bool)

(declare-fun tp!1125279 () Bool)

(assert (=> b!3702225 (= e!2292803 (and tp!1125280 tp!1125279))))

(declare-fun b!3702224 () Bool)

(assert (=> b!3702224 (= e!2292803 tp_is_empty!18553)))

(declare-fun b!3702227 () Bool)

(declare-fun tp!1125281 () Bool)

(declare-fun tp!1125283 () Bool)

(assert (=> b!3702227 (= e!2292803 (and tp!1125281 tp!1125283))))

(assert (= (and b!3701387 ((_ is ElementMatch!10739) (regTwo!21991 (regex!5980 (rule!8848 token!544))))) b!3702224))

(assert (= (and b!3701387 ((_ is Concat!16950) (regTwo!21991 (regex!5980 (rule!8848 token!544))))) b!3702225))

(assert (= (and b!3701387 ((_ is Star!10739) (regTwo!21991 (regex!5980 (rule!8848 token!544))))) b!3702226))

(assert (= (and b!3701387 ((_ is Union!10739) (regTwo!21991 (regex!5980 (rule!8848 token!544))))) b!3702227))

(declare-fun b!3702230 () Bool)

(declare-fun e!2292804 () Bool)

(declare-fun tp!1125287 () Bool)

(assert (=> b!3702230 (= e!2292804 tp!1125287)))

(assert (=> b!3701385 (= tp!1125142 e!2292804)))

(declare-fun b!3702229 () Bool)

(declare-fun tp!1125285 () Bool)

(declare-fun tp!1125284 () Bool)

(assert (=> b!3702229 (= e!2292804 (and tp!1125285 tp!1125284))))

(declare-fun b!3702228 () Bool)

(assert (=> b!3702228 (= e!2292804 tp_is_empty!18553)))

(declare-fun b!3702231 () Bool)

(declare-fun tp!1125286 () Bool)

(declare-fun tp!1125288 () Bool)

(assert (=> b!3702231 (= e!2292804 (and tp!1125286 tp!1125288))))

(assert (= (and b!3701385 ((_ is ElementMatch!10739) (regOne!21990 (regex!5980 (rule!8848 token!544))))) b!3702228))

(assert (= (and b!3701385 ((_ is Concat!16950) (regOne!21990 (regex!5980 (rule!8848 token!544))))) b!3702229))

(assert (= (and b!3701385 ((_ is Star!10739) (regOne!21990 (regex!5980 (rule!8848 token!544))))) b!3702230))

(assert (= (and b!3701385 ((_ is Union!10739) (regOne!21990 (regex!5980 (rule!8848 token!544))))) b!3702231))

(declare-fun b!3702234 () Bool)

(declare-fun e!2292805 () Bool)

(declare-fun tp!1125292 () Bool)

(assert (=> b!3702234 (= e!2292805 tp!1125292)))

(assert (=> b!3701385 (= tp!1125141 e!2292805)))

(declare-fun b!3702233 () Bool)

(declare-fun tp!1125290 () Bool)

(declare-fun tp!1125289 () Bool)

(assert (=> b!3702233 (= e!2292805 (and tp!1125290 tp!1125289))))

(declare-fun b!3702232 () Bool)

(assert (=> b!3702232 (= e!2292805 tp_is_empty!18553)))

(declare-fun b!3702235 () Bool)

(declare-fun tp!1125291 () Bool)

(declare-fun tp!1125293 () Bool)

(assert (=> b!3702235 (= e!2292805 (and tp!1125291 tp!1125293))))

(assert (= (and b!3701385 ((_ is ElementMatch!10739) (regTwo!21990 (regex!5980 (rule!8848 token!544))))) b!3702232))

(assert (= (and b!3701385 ((_ is Concat!16950) (regTwo!21990 (regex!5980 (rule!8848 token!544))))) b!3702233))

(assert (= (and b!3701385 ((_ is Star!10739) (regTwo!21990 (regex!5980 (rule!8848 token!544))))) b!3702234))

(assert (= (and b!3701385 ((_ is Union!10739) (regTwo!21990 (regex!5980 (rule!8848 token!544))))) b!3702235))

(declare-fun b!3702238 () Bool)

(declare-fun e!2292806 () Bool)

(declare-fun tp!1125297 () Bool)

(assert (=> b!3702238 (= e!2292806 tp!1125297)))

(assert (=> b!3701405 (= tp!1125162 e!2292806)))

(declare-fun b!3702237 () Bool)

(declare-fun tp!1125295 () Bool)

(declare-fun tp!1125294 () Bool)

(assert (=> b!3702237 (= e!2292806 (and tp!1125295 tp!1125294))))

(declare-fun b!3702236 () Bool)

(assert (=> b!3702236 (= e!2292806 tp_is_empty!18553)))

(declare-fun b!3702239 () Bool)

(declare-fun tp!1125296 () Bool)

(declare-fun tp!1125298 () Bool)

(assert (=> b!3702239 (= e!2292806 (and tp!1125296 tp!1125298))))

(assert (= (and b!3701405 ((_ is ElementMatch!10739) (regOne!21990 (regex!5980 (h!44760 rules!3598))))) b!3702236))

(assert (= (and b!3701405 ((_ is Concat!16950) (regOne!21990 (regex!5980 (h!44760 rules!3598))))) b!3702237))

(assert (= (and b!3701405 ((_ is Star!10739) (regOne!21990 (regex!5980 (h!44760 rules!3598))))) b!3702238))

(assert (= (and b!3701405 ((_ is Union!10739) (regOne!21990 (regex!5980 (h!44760 rules!3598))))) b!3702239))

(declare-fun b!3702242 () Bool)

(declare-fun e!2292807 () Bool)

(declare-fun tp!1125302 () Bool)

(assert (=> b!3702242 (= e!2292807 tp!1125302)))

(assert (=> b!3701405 (= tp!1125161 e!2292807)))

(declare-fun b!3702241 () Bool)

(declare-fun tp!1125300 () Bool)

(declare-fun tp!1125299 () Bool)

(assert (=> b!3702241 (= e!2292807 (and tp!1125300 tp!1125299))))

(declare-fun b!3702240 () Bool)

(assert (=> b!3702240 (= e!2292807 tp_is_empty!18553)))

(declare-fun b!3702243 () Bool)

(declare-fun tp!1125301 () Bool)

(declare-fun tp!1125303 () Bool)

(assert (=> b!3702243 (= e!2292807 (and tp!1125301 tp!1125303))))

(assert (= (and b!3701405 ((_ is ElementMatch!10739) (regTwo!21990 (regex!5980 (h!44760 rules!3598))))) b!3702240))

(assert (= (and b!3701405 ((_ is Concat!16950) (regTwo!21990 (regex!5980 (h!44760 rules!3598))))) b!3702241))

(assert (= (and b!3701405 ((_ is Star!10739) (regTwo!21990 (regex!5980 (h!44760 rules!3598))))) b!3702242))

(assert (= (and b!3701405 ((_ is Union!10739) (regTwo!21990 (regex!5980 (h!44760 rules!3598))))) b!3702243))

(declare-fun b!3702246 () Bool)

(declare-fun b_free!98669 () Bool)

(declare-fun b_next!99373 () Bool)

(assert (=> b!3702246 (= b_free!98669 (not b_next!99373))))

(declare-fun t!302113 () Bool)

(declare-fun tb!214359 () Bool)

(assert (=> (and b!3702246 (= (toValue!8316 (transformation!5980 (h!44760 (t!302009 (t!302009 rules!3598))))) (toValue!8316 (transformation!5980 (rule!8848 (_1!22732 (get!13101 lt!1295193)))))) t!302113) tb!214359))

(declare-fun result!261176 () Bool)

(assert (= result!261176 result!261114))

(assert (=> d!1085463 t!302113))

(declare-fun t!302115 () Bool)

(declare-fun tb!214361 () Bool)

(assert (=> (and b!3702246 (= (toValue!8316 (transformation!5980 (h!44760 (t!302009 (t!302009 rules!3598))))) (toValue!8316 (transformation!5980 (rule!8848 (_1!22732 (get!13101 lt!1295223)))))) t!302115) tb!214361))

(declare-fun result!261178 () Bool)

(assert (= result!261178 result!261156))

(assert (=> d!1085633 t!302115))

(declare-fun t!302117 () Bool)

(declare-fun tb!214363 () Bool)

(assert (=> (and b!3702246 (= (toValue!8316 (transformation!5980 (h!44760 (t!302009 (t!302009 rules!3598))))) (toValue!8316 (transformation!5980 (h!44760 rules!3598)))) t!302117) tb!214363))

(declare-fun result!261180 () Bool)

(assert (= result!261180 result!261168))

(assert (=> d!1085659 t!302117))

(assert (=> d!1085661 t!302117))

(declare-fun tp!1125304 () Bool)

(declare-fun b_and!276879 () Bool)

(assert (=> b!3702246 (= tp!1125304 (and (=> t!302113 result!261176) (=> t!302115 result!261178) (=> t!302117 result!261180) b_and!276879))))

(declare-fun b_free!98671 () Bool)

(declare-fun b_next!99375 () Bool)

(assert (=> b!3702246 (= b_free!98671 (not b_next!99375))))

(declare-fun t!302119 () Bool)

(declare-fun tb!214365 () Bool)

(assert (=> (and b!3702246 (= (toChars!8175 (transformation!5980 (h!44760 (t!302009 (t!302009 rules!3598))))) (toChars!8175 (transformation!5980 (rule!8848 (_1!22732 (get!13101 lt!1295193)))))) t!302119) tb!214365))

(declare-fun result!261182 () Bool)

(assert (= result!261182 result!261108))

(assert (=> d!1085453 t!302119))

(declare-fun tb!214367 () Bool)

(declare-fun t!302121 () Bool)

(assert (=> (and b!3702246 (= (toChars!8175 (transformation!5980 (h!44760 (t!302009 (t!302009 rules!3598))))) (toChars!8175 (transformation!5980 (rule!8848 token!544)))) t!302121) tb!214367))

(declare-fun result!261184 () Bool)

(assert (= result!261184 result!261068))

(assert (=> d!1085231 t!302121))

(declare-fun t!302123 () Bool)

(declare-fun tb!214369 () Bool)

(assert (=> (and b!3702246 (= (toChars!8175 (transformation!5980 (h!44760 (t!302009 (t!302009 rules!3598))))) (toChars!8175 (transformation!5980 (rule!8848 (_1!22732 (get!13101 lt!1295223)))))) t!302123) tb!214369))

(declare-fun result!261186 () Bool)

(assert (= result!261186 result!261122))

(assert (=> d!1085493 t!302123))

(assert (=> b!3701305 t!302121))

(declare-fun t!302125 () Bool)

(declare-fun tb!214371 () Bool)

(assert (=> (and b!3702246 (= (toChars!8175 (transformation!5980 (h!44760 (t!302009 (t!302009 rules!3598))))) (toChars!8175 (transformation!5980 (h!44760 rules!3598)))) t!302125) tb!214371))

(declare-fun result!261188 () Bool)

(assert (= result!261188 result!261162))

(assert (=> d!1085659 t!302125))

(declare-fun b_and!276881 () Bool)

(declare-fun tp!1125307 () Bool)

(assert (=> b!3702246 (= tp!1125307 (and (=> t!302121 result!261184) (=> t!302119 result!261182) (=> t!302125 result!261188) (=> t!302123 result!261186) b_and!276881))))

(declare-fun e!2292808 () Bool)

(assert (=> b!3702246 (= e!2292808 (and tp!1125304 tp!1125307))))

(declare-fun e!2292811 () Bool)

(declare-fun tp!1125306 () Bool)

(declare-fun b!3702245 () Bool)

(assert (=> b!3702245 (= e!2292811 (and tp!1125306 (inv!52864 (tag!6812 (h!44760 (t!302009 (t!302009 rules!3598))))) (inv!52867 (transformation!5980 (h!44760 (t!302009 (t!302009 rules!3598))))) e!2292808))))

(declare-fun b!3702244 () Bool)

(declare-fun e!2292810 () Bool)

(declare-fun tp!1125305 () Bool)

(assert (=> b!3702244 (= e!2292810 (and e!2292811 tp!1125305))))

(assert (=> b!3701401 (= tp!1125158 e!2292810)))

(assert (= b!3702245 b!3702246))

(assert (= b!3702244 b!3702245))

(assert (= (and b!3701401 ((_ is Cons!39340) (t!302009 (t!302009 rules!3598)))) b!3702244))

(declare-fun m!4213417 () Bool)

(assert (=> b!3702245 m!4213417))

(declare-fun m!4213419 () Bool)

(assert (=> b!3702245 m!4213419))

(declare-fun b!3702249 () Bool)

(declare-fun e!2292812 () Bool)

(declare-fun tp!1125311 () Bool)

(assert (=> b!3702249 (= e!2292812 tp!1125311)))

(assert (=> b!3701386 (= tp!1125144 e!2292812)))

(declare-fun b!3702248 () Bool)

(declare-fun tp!1125309 () Bool)

(declare-fun tp!1125308 () Bool)

(assert (=> b!3702248 (= e!2292812 (and tp!1125309 tp!1125308))))

(declare-fun b!3702247 () Bool)

(assert (=> b!3702247 (= e!2292812 tp_is_empty!18553)))

(declare-fun b!3702250 () Bool)

(declare-fun tp!1125310 () Bool)

(declare-fun tp!1125312 () Bool)

(assert (=> b!3702250 (= e!2292812 (and tp!1125310 tp!1125312))))

(assert (= (and b!3701386 ((_ is ElementMatch!10739) (reg!11068 (regex!5980 (rule!8848 token!544))))) b!3702247))

(assert (= (and b!3701386 ((_ is Concat!16950) (reg!11068 (regex!5980 (rule!8848 token!544))))) b!3702248))

(assert (= (and b!3701386 ((_ is Star!10739) (reg!11068 (regex!5980 (rule!8848 token!544))))) b!3702249))

(assert (= (and b!3701386 ((_ is Union!10739) (reg!11068 (regex!5980 (rule!8848 token!544))))) b!3702250))

(declare-fun b_lambda!109813 () Bool)

(assert (= b_lambda!109811 (or (and b!3700963 b_free!98649 (= (toValue!8316 (transformation!5980 (rule!8848 token!544))) (toValue!8316 (transformation!5980 (h!44760 rules!3598))))) (and b!3700966 b_free!98653) (and b!3701403 b_free!98661 (= (toValue!8316 (transformation!5980 (h!44760 (t!302009 rules!3598)))) (toValue!8316 (transformation!5980 (h!44760 rules!3598))))) (and b!3702246 b_free!98669 (= (toValue!8316 (transformation!5980 (h!44760 (t!302009 (t!302009 rules!3598))))) (toValue!8316 (transformation!5980 (h!44760 rules!3598))))) b_lambda!109813)))

(declare-fun b_lambda!109815 () Bool)

(assert (= b_lambda!109809 (or (and b!3700963 b_free!98649 (= (toValue!8316 (transformation!5980 (rule!8848 token!544))) (toValue!8316 (transformation!5980 (h!44760 rules!3598))))) (and b!3700966 b_free!98653) (and b!3701403 b_free!98661 (= (toValue!8316 (transformation!5980 (h!44760 (t!302009 rules!3598)))) (toValue!8316 (transformation!5980 (h!44760 rules!3598))))) (and b!3702246 b_free!98669 (= (toValue!8316 (transformation!5980 (h!44760 (t!302009 (t!302009 rules!3598))))) (toValue!8316 (transformation!5980 (h!44760 rules!3598))))) b_lambda!109815)))

(declare-fun b_lambda!109817 () Bool)

(assert (= b_lambda!109807 (or (and b!3700963 b_free!98651 (= (toChars!8175 (transformation!5980 (rule!8848 token!544))) (toChars!8175 (transformation!5980 (h!44760 rules!3598))))) (and b!3700966 b_free!98655) (and b!3701403 b_free!98663 (= (toChars!8175 (transformation!5980 (h!44760 (t!302009 rules!3598)))) (toChars!8175 (transformation!5980 (h!44760 rules!3598))))) (and b!3702246 b_free!98671 (= (toChars!8175 (transformation!5980 (h!44760 (t!302009 (t!302009 rules!3598))))) (toChars!8175 (transformation!5980 (h!44760 rules!3598))))) b_lambda!109817)))

(check-sat (not b!3702099) (not b!3701750) (not d!1085601) (not b_next!99355) (not b!3701906) (not b!3702124) (not b!3701685) (not b_lambda!109789) (not b!3702105) (not bm!267393) (not d!1085293) (not b!3702217) (not b!3702153) (not tb!214347) (not bm!267470) (not bm!267482) (not d!1085561) (not b_lambda!109817) (not b!3702234) (not d!1085493) (not b!3702129) (not b!3702244) (not b!3702112) (not b!3702151) (not bm!267492) (not b!3702154) (not b!3702141) (not b!3701661) (not d!1085663) (not b!3701900) (not b!3702202) (not d!1085639) (not b!3702128) (not b!3702138) (not d!1085417) (not b!3702029) (not b_lambda!109813) (not b!3702032) (not b!3702179) (not d!1085583) (not b!3702049) (not b!3701907) (not bm!267488) (not b!3701883) (not bm!267480) (not b!3702237) (not b_lambda!109791) (not b!3702219) (not b!3702115) (not b!3701752) (not b!3702190) (not b!3701437) (not d!1085599) (not b!3702142) (not bm!267398) (not b_lambda!109805) (not b!3701827) (not b!3701787) (not b!3701754) (not b!3702199) (not b!3702231) (not b!3702140) (not b!3701824) (not b!3702223) (not b!3702188) (not b_next!99375) (not b!3701749) (not b_next!99365) (not b!3702158) (not bm!267486) (not b!3701426) (not b!3702182) (not d!1085585) (not b!3702044) (not d!1085617) (not b!3701429) (not b!3701428) (not b!3701708) (not b!3702046) (not bm!267399) (not b!3701777) (not b!3702248) (not d!1085563) (not d!1085569) (not d!1085433) (not b!3701778) (not b!3702245) (not d!1085451) (not b!3702218) (not b_lambda!109815) (not d!1085595) (not d!1085567) (not b!3702209) (not d!1085295) (not b!3702143) (not d!1085545) (not b!3701485) (not b!3701424) (not b!3701841) (not tb!214341) (not b!3701466) (not d!1085405) (not b!3702159) (not b!3702222) (not b!3702242) b_and!276879 (not b!3701993) (not bm!267489) (not b!3702033) (not b!3702030) (not b!3701676) (not d!1085491) (not b!3701826) (not b!3701839) b_and!276865 (not d!1085297) (not b!3702167) (not b!3702043) (not d!1085623) (not b!3702229) (not d!1085539) (not b!3702243) (not d!1085609) (not b!3701468) (not b!3702104) (not d!1085635) (not b!3702157) (not b!3701901) (not b!3702215) (not d!1085469) (not bm!267394) (not b!3702201) (not bm!267490) (not d!1085587) (not d!1085627) (not d!1085565) (not tb!214353) (not d!1085427) (not b!3702047) (not b_next!99353) (not b!3702126) (not bm!267397) (not b!3702035) (not d!1085629) (not b!3701667) (not b_next!99357) (not b!3702225) (not b!3701666) (not d!1085465) (not b!3701709) (not b!3702230) (not b!3702127) (not d!1085303) (not bm!267484) (not d!1085453) (not b!3702156) (not bm!267396) (not d!1085631) (not b!3702137) (not d!1085571) (not b!3701300) (not d!1085607) (not b!3701487) (not b!3702057) (not tb!214297) (not d!1085393) (not b!3702200) (not d!1085645) (not d!1085577) b_and!276863 (not b_lambda!109793) (not b!3702028) (not b!3702034) (not b!3701662) (not d!1085479) (not d!1085473) (not d!1085445) (not b!3702174) (not b!3701471) (not d!1085649) (not d!1085641) (not d!1085555) (not b!3701902) (not b_lambda!109775) (not b!3702249) (not b!3701721) (not b!3702048) (not b!3702097) (not b!3702023) (not bm!267395) (not bm!267471) (not d!1085387) (not b!3702210) (not tb!214309) (not b!3701781) b_and!276875 (not d!1085485) (not d!1085653) (not d!1085615) (not b!3702098) (not d!1085655) (not b!3701467) (not b!3702214) (not b!3701780) (not d!1085487) (not b!3701995) (not d!1085625) (not bm!267376) (not b!3702238) (not b!3702235) (not b!3702227) (not d!1085597) b_and!276861 (not b!3702221) b_and!276873 (not b!3701992) (not b!3702239) (not d!1085605) (not b!3702014) (not b!3702178) (not b!3702233) (not b!3702205) (not b_next!99367) b_and!276881 (not b!3702226) (not d!1085659) (not b!3701783) (not d!1085389) (not bm!267469) (not bm!267467) (not b!3702213) (not d!1085507) (not b!3702207) (not b!3702206) (not b_next!99359) (not b_next!99373) (not b!3702203) (not b!3702241) (not b!3702250) (not b!3701779) (not b_lambda!109777) (not b!3701782) b_and!276877 (not b!3702084) (not bm!267487) (not b!3702211) (not tb!214303) (not bm!267444) (not b!3702114) (not bm!267400) (not b!3701785) tp_is_empty!18553 (not b!3702024) (not b!3701677) (not b!3701427) (not b!3701784))
(check-sat (not b_next!99355) (not b_next!99375) (not b_next!99365) b_and!276879 b_and!276865 (not b_next!99353) (not b_next!99357) b_and!276863 b_and!276875 b_and!276861 b_and!276873 b_and!276877 (not b_next!99367) b_and!276881 (not b_next!99359) (not b_next!99373))
