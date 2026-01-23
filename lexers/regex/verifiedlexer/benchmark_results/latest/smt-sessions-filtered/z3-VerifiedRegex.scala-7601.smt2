; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!401294 () Bool)

(assert start!401294)

(declare-fun b!4200958 () Bool)

(declare-fun b_free!122627 () Bool)

(declare-fun b_next!123331 () Bool)

(assert (=> b!4200958 (= b_free!122627 (not b_next!123331))))

(declare-fun tp!1283658 () Bool)

(declare-fun b_and!329681 () Bool)

(assert (=> b!4200958 (= tp!1283658 b_and!329681)))

(declare-fun b_free!122629 () Bool)

(declare-fun b_next!123333 () Bool)

(assert (=> b!4200958 (= b_free!122629 (not b_next!123333))))

(declare-fun tp!1283663 () Bool)

(declare-fun b_and!329683 () Bool)

(assert (=> b!4200958 (= tp!1283663 b_and!329683)))

(declare-fun b!4200957 () Bool)

(declare-fun b_free!122631 () Bool)

(declare-fun b_next!123335 () Bool)

(assert (=> b!4200957 (= b_free!122631 (not b_next!123335))))

(declare-fun tp!1283664 () Bool)

(declare-fun b_and!329685 () Bool)

(assert (=> b!4200957 (= tp!1283664 b_and!329685)))

(declare-fun b_free!122633 () Bool)

(declare-fun b_next!123337 () Bool)

(assert (=> b!4200957 (= b_free!122633 (not b_next!123337))))

(declare-fun tp!1283667 () Bool)

(declare-fun b_and!329687 () Bool)

(assert (=> b!4200957 (= tp!1283667 b_and!329687)))

(declare-fun b!4200966 () Bool)

(declare-fun b_free!122635 () Bool)

(declare-fun b_next!123339 () Bool)

(assert (=> b!4200966 (= b_free!122635 (not b_next!123339))))

(declare-fun tp!1283656 () Bool)

(declare-fun b_and!329689 () Bool)

(assert (=> b!4200966 (= tp!1283656 b_and!329689)))

(declare-fun b_free!122637 () Bool)

(declare-fun b_next!123341 () Bool)

(assert (=> b!4200966 (= b_free!122637 (not b_next!123341))))

(declare-fun tp!1283655 () Bool)

(declare-fun b_and!329691 () Bool)

(assert (=> b!4200966 (= tp!1283655 b_and!329691)))

(declare-fun b!4200976 () Bool)

(declare-fun b_free!122639 () Bool)

(declare-fun b_next!123343 () Bool)

(assert (=> b!4200976 (= b_free!122639 (not b_next!123343))))

(declare-fun tp!1283669 () Bool)

(declare-fun b_and!329693 () Bool)

(assert (=> b!4200976 (= tp!1283669 b_and!329693)))

(declare-fun b_free!122641 () Bool)

(declare-fun b_next!123345 () Bool)

(assert (=> b!4200976 (= b_free!122641 (not b_next!123345))))

(declare-fun tp!1283674 () Bool)

(declare-fun b_and!329695 () Bool)

(assert (=> b!4200976 (= tp!1283674 b_and!329695)))

(declare-fun e!2607847 () Bool)

(assert (=> b!4200957 (= e!2607847 (and tp!1283664 tp!1283667))))

(declare-fun e!2607851 () Bool)

(assert (=> b!4200958 (= e!2607851 (and tp!1283658 tp!1283663))))

(declare-fun tp!1283661 () Bool)

(declare-fun b!4200959 () Bool)

(declare-datatypes ((List!46305 0))(
  ( (Nil!46181) (Cons!46181 (h!51601 (_ BitVec 16)) (t!346810 List!46305)) )
))
(declare-datatypes ((TokenValue!7946 0))(
  ( (FloatLiteralValue!15892 (text!56067 List!46305)) (TokenValueExt!7945 (__x!28115 Int)) (Broken!39730 (value!240409 List!46305)) (Object!8069) (End!7946) (Def!7946) (Underscore!7946) (Match!7946) (Else!7946) (Error!7946) (Case!7946) (If!7946) (Extends!7946) (Abstract!7946) (Class!7946) (Val!7946) (DelimiterValue!15892 (del!8006 List!46305)) (KeywordValue!7952 (value!240410 List!46305)) (CommentValue!15892 (value!240411 List!46305)) (WhitespaceValue!15892 (value!240412 List!46305)) (IndentationValue!7946 (value!240413 List!46305)) (String!53599) (Int32!7946) (Broken!39731 (value!240414 List!46305)) (Boolean!7947) (Unit!65270) (OperatorValue!7949 (op!8006 List!46305)) (IdentifierValue!15892 (value!240415 List!46305)) (IdentifierValue!15893 (value!240416 List!46305)) (WhitespaceValue!15893 (value!240417 List!46305)) (True!15892) (False!15892) (Broken!39732 (value!240418 List!46305)) (Broken!39733 (value!240419 List!46305)) (True!15893) (RightBrace!7946) (RightBracket!7946) (Colon!7946) (Null!7946) (Comma!7946) (LeftBracket!7946) (False!15893) (LeftBrace!7946) (ImaginaryLiteralValue!7946 (text!56068 List!46305)) (StringLiteralValue!23838 (value!240420 List!46305)) (EOFValue!7946 (value!240421 List!46305)) (IdentValue!7946 (value!240422 List!46305)) (DelimiterValue!15893 (value!240423 List!46305)) (DedentValue!7946 (value!240424 List!46305)) (NewLineValue!7946 (value!240425 List!46305)) (IntegerValue!23838 (value!240426 (_ BitVec 32)) (text!56069 List!46305)) (IntegerValue!23839 (value!240427 Int) (text!56070 List!46305)) (Times!7946) (Or!7946) (Equal!7946) (Minus!7946) (Broken!39734 (value!240428 List!46305)) (And!7946) (Div!7946) (LessEqual!7946) (Mod!7946) (Concat!20567) (Not!7946) (Plus!7946) (SpaceValue!7946 (value!240429 List!46305)) (IntegerValue!23840 (value!240430 Int) (text!56071 List!46305)) (StringLiteralValue!23839 (text!56072 List!46305)) (FloatLiteralValue!15893 (text!56073 List!46305)) (BytesLiteralValue!7946 (value!240431 List!46305)) (CommentValue!15893 (value!240432 List!46305)) (StringLiteralValue!23840 (value!240433 List!46305)) (ErrorTokenValue!7946 (msg!8007 List!46305)) )
))
(declare-datatypes ((C!25436 0))(
  ( (C!25437 (val!14880 Int)) )
))
(declare-datatypes ((List!46306 0))(
  ( (Nil!46182) (Cons!46182 (h!51602 C!25436) (t!346811 List!46306)) )
))
(declare-datatypes ((IArray!27859 0))(
  ( (IArray!27860 (innerList!13987 List!46306)) )
))
(declare-datatypes ((Regex!12621 0))(
  ( (ElementMatch!12621 (c!716228 C!25436)) (Concat!20568 (regOne!25754 Regex!12621) (regTwo!25754 Regex!12621)) (EmptyExpr!12621) (Star!12621 (reg!12950 Regex!12621)) (EmptyLang!12621) (Union!12621 (regOne!25755 Regex!12621) (regTwo!25755 Regex!12621)) )
))
(declare-datatypes ((Conc!13927 0))(
  ( (Node!13927 (left!34396 Conc!13927) (right!34726 Conc!13927) (csize!28084 Int) (cheight!14138 Int)) (Leaf!21529 (xs!17233 IArray!27859) (csize!28085 Int)) (Empty!13927) )
))
(declare-datatypes ((BalanceConc!27448 0))(
  ( (BalanceConc!27449 (c!716229 Conc!13927)) )
))
(declare-datatypes ((String!53600 0))(
  ( (String!53601 (value!240434 String)) )
))
(declare-datatypes ((TokenValueInjection!15320 0))(
  ( (TokenValueInjection!15321 (toValue!10420 Int) (toChars!10279 Int)) )
))
(declare-datatypes ((Rule!15232 0))(
  ( (Rule!15233 (regex!7716 Regex!12621) (tag!8580 String!53600) (isSeparator!7716 Bool) (transformation!7716 TokenValueInjection!15320)) )
))
(declare-datatypes ((Token!14134 0))(
  ( (Token!14135 (value!240435 TokenValue!7946) (rule!10812 Rule!15232) (size!33931 Int) (originalCharacters!8098 List!46306)) )
))
(declare-fun t!8364 () Token!14134)

(declare-fun e!2607859 () Bool)

(declare-fun e!2607841 () Bool)

(declare-fun inv!21 (TokenValue!7946) Bool)

(assert (=> b!4200959 (= e!2607841 (and (inv!21 (value!240435 t!8364)) e!2607859 tp!1283661))))

(declare-fun tBis!41 () Token!14134)

(declare-fun tp!1283662 () Bool)

(declare-fun b!4200960 () Bool)

(declare-fun e!2607857 () Bool)

(declare-fun e!2607846 () Bool)

(assert (=> b!4200960 (= e!2607857 (and (inv!21 (value!240435 tBis!41)) e!2607846 tp!1283662))))

(declare-fun b!4200961 () Bool)

(declare-fun e!2607843 () Bool)

(declare-datatypes ((LexerInterface!7311 0))(
  ( (LexerInterfaceExt!7308 (__x!28116 Int)) (Lexer!7309) )
))
(declare-fun thiss!26544 () LexerInterface!7311)

(declare-datatypes ((List!46307 0))(
  ( (Nil!46183) (Cons!46183 (h!51603 Rule!15232) (t!346812 List!46307)) )
))
(declare-fun rules!3967 () List!46307)

(declare-fun ruleValid!3428 (LexerInterface!7311 Rule!15232) Bool)

(assert (=> b!4200961 (= e!2607843 (ruleValid!3428 thiss!26544 (h!51603 rules!3967)))))

(declare-fun b!4200962 () Bool)

(declare-fun res!1725238 () Bool)

(declare-fun e!2607845 () Bool)

(assert (=> b!4200962 (=> (not res!1725238) (not e!2607845))))

(declare-fun rBis!178 () Rule!15232)

(assert (=> b!4200962 (= res!1725238 (ruleValid!3428 thiss!26544 rBis!178))))

(declare-fun b!4200963 () Bool)

(declare-fun e!2607840 () Bool)

(declare-fun tp_is_empty!22209 () Bool)

(declare-fun tp!1283673 () Bool)

(assert (=> b!4200963 (= e!2607840 (and tp_is_empty!22209 tp!1283673))))

(declare-fun b!4200964 () Bool)

(declare-fun e!2607837 () Bool)

(declare-fun tp!1283657 () Bool)

(assert (=> b!4200964 (= e!2607837 (and tp_is_empty!22209 tp!1283657))))

(declare-fun res!1725239 () Bool)

(assert (=> start!401294 (=> (not res!1725239) (not e!2607845))))

(get-info :version)

(assert (=> start!401294 (= res!1725239 ((_ is Lexer!7309) thiss!26544))))

(assert (=> start!401294 e!2607845))

(declare-fun inv!60740 (Token!14134) Bool)

(assert (=> start!401294 (and (inv!60740 tBis!41) e!2607857)))

(assert (=> start!401294 true))

(declare-fun e!2607852 () Bool)

(assert (=> start!401294 e!2607852))

(assert (=> start!401294 e!2607840))

(declare-fun e!2607855 () Bool)

(assert (=> start!401294 e!2607855))

(declare-fun e!2607839 () Bool)

(assert (=> start!401294 e!2607839))

(assert (=> start!401294 (and (inv!60740 t!8364) e!2607841)))

(declare-fun e!2607838 () Bool)

(assert (=> start!401294 e!2607838))

(assert (=> start!401294 e!2607837))

(declare-fun e!2607853 () Bool)

(assert (=> start!401294 e!2607853))

(declare-fun b!4200965 () Bool)

(declare-fun res!1725233 () Bool)

(assert (=> b!4200965 (=> res!1725233 e!2607843)))

(assert (=> b!4200965 (= res!1725233 (or (and ((_ is Cons!46183) rules!3967) ((_ is Nil!46183) (t!346812 rules!3967))) (not ((_ is Cons!46183) rules!3967)) (= (h!51603 rules!3967) rBis!178)))))

(declare-fun e!2607842 () Bool)

(assert (=> b!4200966 (= e!2607842 (and tp!1283656 tp!1283655))))

(declare-fun b!4200967 () Bool)

(declare-fun res!1725232 () Bool)

(assert (=> b!4200967 (=> (not res!1725232) (not e!2607845))))

(declare-fun contains!9529 (List!46307 Rule!15232) Bool)

(assert (=> b!4200967 (= res!1725232 (contains!9529 rules!3967 rBis!178))))

(declare-fun tp!1283672 () Bool)

(declare-fun b!4200968 () Bool)

(declare-fun inv!60737 (String!53600) Bool)

(declare-fun inv!60741 (TokenValueInjection!15320) Bool)

(assert (=> b!4200968 (= e!2607852 (and tp!1283672 (inv!60737 (tag!8580 rBis!178)) (inv!60741 (transformation!7716 rBis!178)) e!2607847))))

(declare-fun b!4200969 () Bool)

(declare-fun res!1725237 () Bool)

(assert (=> b!4200969 (=> (not res!1725237) (not e!2607845))))

(declare-fun isEmpty!27341 (List!46307) Bool)

(assert (=> b!4200969 (= res!1725237 (not (isEmpty!27341 rules!3967)))))

(declare-fun b!4200970 () Bool)

(declare-fun res!1725236 () Bool)

(assert (=> b!4200970 (=> (not res!1725236) (not e!2607845))))

(declare-fun p!3001 () List!46306)

(declare-fun input!3517 () List!46306)

(declare-fun suffix!1557 () List!46306)

(declare-fun ++!11790 (List!46306 List!46306) List!46306)

(assert (=> b!4200970 (= res!1725236 (= (++!11790 p!3001 suffix!1557) input!3517))))

(declare-fun b!4200971 () Bool)

(declare-fun res!1725243 () Bool)

(assert (=> b!4200971 (=> (not res!1725243) (not e!2607845))))

(declare-fun pBis!121 () List!46306)

(declare-fun isPrefix!4575 (List!46306 List!46306) Bool)

(assert (=> b!4200971 (= res!1725243 (isPrefix!4575 pBis!121 input!3517))))

(declare-fun b!4200972 () Bool)

(declare-fun tp!1283666 () Bool)

(assert (=> b!4200972 (= e!2607838 (and tp_is_empty!22209 tp!1283666))))

(declare-fun b!4200973 () Bool)

(declare-fun res!1725242 () Bool)

(assert (=> b!4200973 (=> res!1725242 e!2607843)))

(declare-fun list!16683 (BalanceConc!27448) List!46306)

(declare-fun charsOf!5139 (Token!14134) BalanceConc!27448)

(assert (=> b!4200973 (= res!1725242 (not (= (list!16683 (charsOf!5139 tBis!41)) pBis!121)))))

(declare-fun b!4200974 () Bool)

(declare-fun res!1725241 () Bool)

(assert (=> b!4200974 (=> (not res!1725241) (not e!2607845))))

(declare-datatypes ((tuple2!43938 0))(
  ( (tuple2!43939 (_1!25103 Token!14134) (_2!25103 List!46306)) )
))
(declare-datatypes ((Option!9904 0))(
  ( (None!9903) (Some!9903 (v!40755 tuple2!43938)) )
))
(declare-fun maxPrefix!4351 (LexerInterface!7311 List!46307 List!46306) Option!9904)

(assert (=> b!4200974 (= res!1725241 (= (maxPrefix!4351 thiss!26544 rules!3967 input!3517) (Some!9903 (tuple2!43939 t!8364 suffix!1557))))))

(declare-fun b!4200975 () Bool)

(declare-fun res!1725231 () Bool)

(assert (=> b!4200975 (=> res!1725231 e!2607843)))

(assert (=> b!4200975 (= res!1725231 (not (= (rule!10812 tBis!41) rBis!178)))))

(declare-fun e!2607856 () Bool)

(assert (=> b!4200976 (= e!2607856 (and tp!1283669 tp!1283674))))

(declare-fun b!4200977 () Bool)

(declare-fun e!2607860 () Bool)

(declare-fun tp!1283660 () Bool)

(assert (=> b!4200977 (= e!2607855 (and e!2607860 tp!1283660))))

(declare-fun tp!1283670 () Bool)

(declare-fun b!4200978 () Bool)

(assert (=> b!4200978 (= e!2607859 (and tp!1283670 (inv!60737 (tag!8580 (rule!10812 t!8364))) (inv!60741 (transformation!7716 (rule!10812 t!8364))) e!2607851))))

(declare-fun b!4200979 () Bool)

(declare-fun tp!1283668 () Bool)

(assert (=> b!4200979 (= e!2607839 (and tp_is_empty!22209 tp!1283668))))

(declare-fun b!4200980 () Bool)

(declare-fun res!1725244 () Bool)

(assert (=> b!4200980 (=> (not res!1725244) (not e!2607845))))

(assert (=> b!4200980 (= res!1725244 (isPrefix!4575 p!3001 input!3517))))

(declare-fun b!4200981 () Bool)

(assert (=> b!4200981 (= e!2607845 (not e!2607843))))

(declare-fun res!1725240 () Bool)

(assert (=> b!4200981 (=> res!1725240 e!2607843)))

(declare-fun suffixBis!41 () List!46306)

(declare-fun maxPrefixOneRule!3306 (LexerInterface!7311 Rule!15232 List!46306) Option!9904)

(assert (=> b!4200981 (= res!1725240 (not (= (maxPrefixOneRule!3306 thiss!26544 rBis!178 input!3517) (Some!9903 (tuple2!43939 tBis!41 suffixBis!41)))))))

(assert (=> b!4200981 (isPrefix!4575 input!3517 input!3517)))

(declare-datatypes ((Unit!65271 0))(
  ( (Unit!65272) )
))
(declare-fun lt!1496330 () Unit!65271)

(declare-fun lemmaIsPrefixRefl!2992 (List!46306 List!46306) Unit!65271)

(assert (=> b!4200981 (= lt!1496330 (lemmaIsPrefixRefl!2992 input!3517 input!3517))))

(declare-fun b!4200982 () Bool)

(declare-fun tp!1283665 () Bool)

(assert (=> b!4200982 (= e!2607846 (and tp!1283665 (inv!60737 (tag!8580 (rule!10812 tBis!41))) (inv!60741 (transformation!7716 (rule!10812 tBis!41))) e!2607856))))

(declare-fun b!4200983 () Bool)

(declare-fun tp!1283659 () Bool)

(assert (=> b!4200983 (= e!2607853 (and tp_is_empty!22209 tp!1283659))))

(declare-fun b!4200984 () Bool)

(declare-fun res!1725234 () Bool)

(assert (=> b!4200984 (=> (not res!1725234) (not e!2607845))))

(declare-fun rulesInvariant!6522 (LexerInterface!7311 List!46307) Bool)

(assert (=> b!4200984 (= res!1725234 (rulesInvariant!6522 thiss!26544 rules!3967))))

(declare-fun b!4200985 () Bool)

(declare-fun res!1725235 () Bool)

(assert (=> b!4200985 (=> res!1725235 e!2607843)))

(assert (=> b!4200985 (= res!1725235 (not (= (++!11790 pBis!121 suffixBis!41) input!3517)))))

(declare-fun tp!1283671 () Bool)

(declare-fun b!4200986 () Bool)

(assert (=> b!4200986 (= e!2607860 (and tp!1283671 (inv!60737 (tag!8580 (h!51603 rules!3967))) (inv!60741 (transformation!7716 (h!51603 rules!3967))) e!2607842))))

(assert (= (and start!401294 res!1725239) b!4200970))

(assert (= (and b!4200970 res!1725236) b!4200980))

(assert (= (and b!4200980 res!1725244) b!4200971))

(assert (= (and b!4200971 res!1725243) b!4200969))

(assert (= (and b!4200969 res!1725237) b!4200984))

(assert (= (and b!4200984 res!1725234) b!4200967))

(assert (= (and b!4200967 res!1725232) b!4200974))

(assert (= (and b!4200974 res!1725241) b!4200962))

(assert (= (and b!4200962 res!1725238) b!4200981))

(assert (= (and b!4200981 (not res!1725240)) b!4200975))

(assert (= (and b!4200975 (not res!1725231)) b!4200973))

(assert (= (and b!4200973 (not res!1725242)) b!4200985))

(assert (= (and b!4200985 (not res!1725235)) b!4200965))

(assert (= (and b!4200965 (not res!1725233)) b!4200961))

(assert (= b!4200982 b!4200976))

(assert (= b!4200960 b!4200982))

(assert (= start!401294 b!4200960))

(assert (= b!4200968 b!4200957))

(assert (= start!401294 b!4200968))

(assert (= (and start!401294 ((_ is Cons!46182) p!3001)) b!4200963))

(assert (= b!4200986 b!4200966))

(assert (= b!4200977 b!4200986))

(assert (= (and start!401294 ((_ is Cons!46183) rules!3967)) b!4200977))

(assert (= (and start!401294 ((_ is Cons!46182) input!3517)) b!4200979))

(assert (= b!4200978 b!4200958))

(assert (= b!4200959 b!4200978))

(assert (= start!401294 b!4200959))

(assert (= (and start!401294 ((_ is Cons!46182) pBis!121)) b!4200972))

(assert (= (and start!401294 ((_ is Cons!46182) suffix!1557)) b!4200964))

(assert (= (and start!401294 ((_ is Cons!46182) suffixBis!41)) b!4200983))

(declare-fun m!4789133 () Bool)

(assert (=> b!4200980 m!4789133))

(declare-fun m!4789135 () Bool)

(assert (=> b!4200969 m!4789135))

(declare-fun m!4789137 () Bool)

(assert (=> b!4200971 m!4789137))

(declare-fun m!4789139 () Bool)

(assert (=> b!4200981 m!4789139))

(declare-fun m!4789141 () Bool)

(assert (=> b!4200981 m!4789141))

(declare-fun m!4789143 () Bool)

(assert (=> b!4200981 m!4789143))

(declare-fun m!4789145 () Bool)

(assert (=> b!4200982 m!4789145))

(declare-fun m!4789147 () Bool)

(assert (=> b!4200982 m!4789147))

(declare-fun m!4789149 () Bool)

(assert (=> b!4200959 m!4789149))

(declare-fun m!4789151 () Bool)

(assert (=> b!4200962 m!4789151))

(declare-fun m!4789153 () Bool)

(assert (=> b!4200974 m!4789153))

(declare-fun m!4789155 () Bool)

(assert (=> b!4200985 m!4789155))

(declare-fun m!4789157 () Bool)

(assert (=> b!4200986 m!4789157))

(declare-fun m!4789159 () Bool)

(assert (=> b!4200986 m!4789159))

(declare-fun m!4789161 () Bool)

(assert (=> b!4200973 m!4789161))

(assert (=> b!4200973 m!4789161))

(declare-fun m!4789163 () Bool)

(assert (=> b!4200973 m!4789163))

(declare-fun m!4789165 () Bool)

(assert (=> start!401294 m!4789165))

(declare-fun m!4789167 () Bool)

(assert (=> start!401294 m!4789167))

(declare-fun m!4789169 () Bool)

(assert (=> b!4200984 m!4789169))

(declare-fun m!4789171 () Bool)

(assert (=> b!4200961 m!4789171))

(declare-fun m!4789173 () Bool)

(assert (=> b!4200978 m!4789173))

(declare-fun m!4789175 () Bool)

(assert (=> b!4200978 m!4789175))

(declare-fun m!4789177 () Bool)

(assert (=> b!4200960 m!4789177))

(declare-fun m!4789179 () Bool)

(assert (=> b!4200967 m!4789179))

(declare-fun m!4789181 () Bool)

(assert (=> b!4200970 m!4789181))

(declare-fun m!4789183 () Bool)

(assert (=> b!4200968 m!4789183))

(declare-fun m!4789185 () Bool)

(assert (=> b!4200968 m!4789185))

(check-sat (not b!4200964) (not b!4200959) (not b!4200962) (not b!4200985) (not b!4200974) b_and!329693 (not b!4200971) (not b_next!123331) b_and!329687 (not b_next!123343) (not b!4200983) (not start!401294) (not b!4200982) (not b_next!123335) (not b!4200963) (not b!4200980) (not b!4200972) (not b!4200961) b_and!329681 b_and!329683 (not b!4200968) (not b!4200984) b_and!329685 (not b!4200979) (not b_next!123341) (not b!4200960) (not b_next!123337) (not b!4200977) b_and!329689 b_and!329695 (not b!4200970) (not b!4200986) (not b!4200973) tp_is_empty!22209 (not b_next!123339) (not b!4200978) (not b!4200981) (not b_next!123345) (not b!4200967) (not b!4200969) (not b_next!123333) b_and!329691)
(check-sat b_and!329681 b_and!329683 b_and!329685 (not b_next!123341) b_and!329695 b_and!329693 (not b_next!123331) (not b_next!123339) b_and!329687 (not b_next!123343) (not b_next!123345) (not b_next!123335) (not b_next!123337) b_and!329689 (not b_next!123333) b_and!329691)
(get-model)

(declare-fun d!1238474 () Bool)

(declare-fun res!1725305 () Bool)

(declare-fun e!2607899 () Bool)

(assert (=> d!1238474 (=> (not res!1725305) (not e!2607899))))

(declare-fun validRegex!5726 (Regex!12621) Bool)

(assert (=> d!1238474 (= res!1725305 (validRegex!5726 (regex!7716 (h!51603 rules!3967))))))

(assert (=> d!1238474 (= (ruleValid!3428 thiss!26544 (h!51603 rules!3967)) e!2607899)))

(declare-fun b!4201041 () Bool)

(declare-fun res!1725306 () Bool)

(assert (=> b!4201041 (=> (not res!1725306) (not e!2607899))))

(declare-fun nullable!4439 (Regex!12621) Bool)

(assert (=> b!4201041 (= res!1725306 (not (nullable!4439 (regex!7716 (h!51603 rules!3967)))))))

(declare-fun b!4201042 () Bool)

(assert (=> b!4201042 (= e!2607899 (not (= (tag!8580 (h!51603 rules!3967)) (String!53601 ""))))))

(assert (= (and d!1238474 res!1725305) b!4201041))

(assert (= (and b!4201041 res!1725306) b!4201042))

(declare-fun m!4789267 () Bool)

(assert (=> d!1238474 m!4789267))

(declare-fun m!4789269 () Bool)

(assert (=> b!4201041 m!4789269))

(assert (=> b!4200961 d!1238474))

(declare-fun d!1238476 () Bool)

(declare-fun res!1725311 () Bool)

(declare-fun e!2607902 () Bool)

(assert (=> d!1238476 (=> (not res!1725311) (not e!2607902))))

(declare-fun isEmpty!27344 (List!46306) Bool)

(assert (=> d!1238476 (= res!1725311 (not (isEmpty!27344 (originalCharacters!8098 tBis!41))))))

(assert (=> d!1238476 (= (inv!60740 tBis!41) e!2607902)))

(declare-fun b!4201047 () Bool)

(declare-fun res!1725312 () Bool)

(assert (=> b!4201047 (=> (not res!1725312) (not e!2607902))))

(declare-fun dynLambda!19910 (Int TokenValue!7946) BalanceConc!27448)

(assert (=> b!4201047 (= res!1725312 (= (originalCharacters!8098 tBis!41) (list!16683 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 tBis!41))) (value!240435 tBis!41)))))))

(declare-fun b!4201048 () Bool)

(declare-fun size!33934 (List!46306) Int)

(assert (=> b!4201048 (= e!2607902 (= (size!33931 tBis!41) (size!33934 (originalCharacters!8098 tBis!41))))))

(assert (= (and d!1238476 res!1725311) b!4201047))

(assert (= (and b!4201047 res!1725312) b!4201048))

(declare-fun b_lambda!123633 () Bool)

(assert (=> (not b_lambda!123633) (not b!4201047)))

(declare-fun t!346830 () Bool)

(declare-fun tb!251731 () Bool)

(assert (=> (and b!4200958 (= (toChars!10279 (transformation!7716 (rule!10812 t!8364))) (toChars!10279 (transformation!7716 (rule!10812 tBis!41)))) t!346830) tb!251731))

(declare-fun b!4201053 () Bool)

(declare-fun e!2607905 () Bool)

(declare-fun tp!1283681 () Bool)

(declare-fun inv!60744 (Conc!13927) Bool)

(assert (=> b!4201053 (= e!2607905 (and (inv!60744 (c!716229 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 tBis!41))) (value!240435 tBis!41)))) tp!1283681))))

(declare-fun result!306854 () Bool)

(declare-fun inv!60745 (BalanceConc!27448) Bool)

(assert (=> tb!251731 (= result!306854 (and (inv!60745 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 tBis!41))) (value!240435 tBis!41))) e!2607905))))

(assert (= tb!251731 b!4201053))

(declare-fun m!4789271 () Bool)

(assert (=> b!4201053 m!4789271))

(declare-fun m!4789273 () Bool)

(assert (=> tb!251731 m!4789273))

(assert (=> b!4201047 t!346830))

(declare-fun b_and!329721 () Bool)

(assert (= b_and!329683 (and (=> t!346830 result!306854) b_and!329721)))

(declare-fun t!346832 () Bool)

(declare-fun tb!251733 () Bool)

(assert (=> (and b!4200957 (= (toChars!10279 (transformation!7716 rBis!178)) (toChars!10279 (transformation!7716 (rule!10812 tBis!41)))) t!346832) tb!251733))

(declare-fun result!306858 () Bool)

(assert (= result!306858 result!306854))

(assert (=> b!4201047 t!346832))

(declare-fun b_and!329723 () Bool)

(assert (= b_and!329687 (and (=> t!346832 result!306858) b_and!329723)))

(declare-fun tb!251735 () Bool)

(declare-fun t!346834 () Bool)

(assert (=> (and b!4200966 (= (toChars!10279 (transformation!7716 (h!51603 rules!3967))) (toChars!10279 (transformation!7716 (rule!10812 tBis!41)))) t!346834) tb!251735))

(declare-fun result!306860 () Bool)

(assert (= result!306860 result!306854))

(assert (=> b!4201047 t!346834))

(declare-fun b_and!329725 () Bool)

(assert (= b_and!329691 (and (=> t!346834 result!306860) b_and!329725)))

(declare-fun t!346836 () Bool)

(declare-fun tb!251737 () Bool)

(assert (=> (and b!4200976 (= (toChars!10279 (transformation!7716 (rule!10812 tBis!41))) (toChars!10279 (transformation!7716 (rule!10812 tBis!41)))) t!346836) tb!251737))

(declare-fun result!306862 () Bool)

(assert (= result!306862 result!306854))

(assert (=> b!4201047 t!346836))

(declare-fun b_and!329727 () Bool)

(assert (= b_and!329695 (and (=> t!346836 result!306862) b_and!329727)))

(declare-fun m!4789275 () Bool)

(assert (=> d!1238476 m!4789275))

(declare-fun m!4789277 () Bool)

(assert (=> b!4201047 m!4789277))

(assert (=> b!4201047 m!4789277))

(declare-fun m!4789279 () Bool)

(assert (=> b!4201047 m!4789279))

(declare-fun m!4789281 () Bool)

(assert (=> b!4201048 m!4789281))

(assert (=> start!401294 d!1238476))

(declare-fun d!1238478 () Bool)

(declare-fun res!1725313 () Bool)

(declare-fun e!2607906 () Bool)

(assert (=> d!1238478 (=> (not res!1725313) (not e!2607906))))

(assert (=> d!1238478 (= res!1725313 (not (isEmpty!27344 (originalCharacters!8098 t!8364))))))

(assert (=> d!1238478 (= (inv!60740 t!8364) e!2607906)))

(declare-fun b!4201054 () Bool)

(declare-fun res!1725314 () Bool)

(assert (=> b!4201054 (=> (not res!1725314) (not e!2607906))))

(assert (=> b!4201054 (= res!1725314 (= (originalCharacters!8098 t!8364) (list!16683 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 t!8364))) (value!240435 t!8364)))))))

(declare-fun b!4201055 () Bool)

(assert (=> b!4201055 (= e!2607906 (= (size!33931 t!8364) (size!33934 (originalCharacters!8098 t!8364))))))

(assert (= (and d!1238478 res!1725313) b!4201054))

(assert (= (and b!4201054 res!1725314) b!4201055))

(declare-fun b_lambda!123635 () Bool)

(assert (=> (not b_lambda!123635) (not b!4201054)))

(declare-fun t!346838 () Bool)

(declare-fun tb!251739 () Bool)

(assert (=> (and b!4200958 (= (toChars!10279 (transformation!7716 (rule!10812 t!8364))) (toChars!10279 (transformation!7716 (rule!10812 t!8364)))) t!346838) tb!251739))

(declare-fun b!4201056 () Bool)

(declare-fun e!2607907 () Bool)

(declare-fun tp!1283682 () Bool)

(assert (=> b!4201056 (= e!2607907 (and (inv!60744 (c!716229 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 t!8364))) (value!240435 t!8364)))) tp!1283682))))

(declare-fun result!306864 () Bool)

(assert (=> tb!251739 (= result!306864 (and (inv!60745 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 t!8364))) (value!240435 t!8364))) e!2607907))))

(assert (= tb!251739 b!4201056))

(declare-fun m!4789283 () Bool)

(assert (=> b!4201056 m!4789283))

(declare-fun m!4789285 () Bool)

(assert (=> tb!251739 m!4789285))

(assert (=> b!4201054 t!346838))

(declare-fun b_and!329729 () Bool)

(assert (= b_and!329721 (and (=> t!346838 result!306864) b_and!329729)))

(declare-fun t!346840 () Bool)

(declare-fun tb!251741 () Bool)

(assert (=> (and b!4200957 (= (toChars!10279 (transformation!7716 rBis!178)) (toChars!10279 (transformation!7716 (rule!10812 t!8364)))) t!346840) tb!251741))

(declare-fun result!306866 () Bool)

(assert (= result!306866 result!306864))

(assert (=> b!4201054 t!346840))

(declare-fun b_and!329731 () Bool)

(assert (= b_and!329723 (and (=> t!346840 result!306866) b_and!329731)))

(declare-fun tb!251743 () Bool)

(declare-fun t!346842 () Bool)

(assert (=> (and b!4200966 (= (toChars!10279 (transformation!7716 (h!51603 rules!3967))) (toChars!10279 (transformation!7716 (rule!10812 t!8364)))) t!346842) tb!251743))

(declare-fun result!306868 () Bool)

(assert (= result!306868 result!306864))

(assert (=> b!4201054 t!346842))

(declare-fun b_and!329733 () Bool)

(assert (= b_and!329725 (and (=> t!346842 result!306868) b_and!329733)))

(declare-fun t!346844 () Bool)

(declare-fun tb!251745 () Bool)

(assert (=> (and b!4200976 (= (toChars!10279 (transformation!7716 (rule!10812 tBis!41))) (toChars!10279 (transformation!7716 (rule!10812 t!8364)))) t!346844) tb!251745))

(declare-fun result!306870 () Bool)

(assert (= result!306870 result!306864))

(assert (=> b!4201054 t!346844))

(declare-fun b_and!329735 () Bool)

(assert (= b_and!329727 (and (=> t!346844 result!306870) b_and!329735)))

(declare-fun m!4789287 () Bool)

(assert (=> d!1238478 m!4789287))

(declare-fun m!4789289 () Bool)

(assert (=> b!4201054 m!4789289))

(assert (=> b!4201054 m!4789289))

(declare-fun m!4789291 () Bool)

(assert (=> b!4201054 m!4789291))

(declare-fun m!4789293 () Bool)

(assert (=> b!4201055 m!4789293))

(assert (=> start!401294 d!1238478))

(declare-fun b!4201083 () Bool)

(declare-fun e!2607921 () Bool)

(declare-fun e!2607922 () Bool)

(assert (=> b!4201083 (= e!2607921 e!2607922)))

(declare-fun res!1725339 () Bool)

(assert (=> b!4201083 (=> (not res!1725339) (not e!2607922))))

(assert (=> b!4201083 (= res!1725339 (not ((_ is Nil!46182) input!3517)))))

(declare-fun d!1238480 () Bool)

(declare-fun e!2607920 () Bool)

(assert (=> d!1238480 e!2607920))

(declare-fun res!1725337 () Bool)

(assert (=> d!1238480 (=> res!1725337 e!2607920)))

(declare-fun lt!1496353 () Bool)

(assert (=> d!1238480 (= res!1725337 (not lt!1496353))))

(assert (=> d!1238480 (= lt!1496353 e!2607921)))

(declare-fun res!1725340 () Bool)

(assert (=> d!1238480 (=> res!1725340 e!2607921)))

(assert (=> d!1238480 (= res!1725340 ((_ is Nil!46182) pBis!121))))

(assert (=> d!1238480 (= (isPrefix!4575 pBis!121 input!3517) lt!1496353)))

(declare-fun b!4201086 () Bool)

(assert (=> b!4201086 (= e!2607920 (>= (size!33934 input!3517) (size!33934 pBis!121)))))

(declare-fun b!4201085 () Bool)

(declare-fun tail!6763 (List!46306) List!46306)

(assert (=> b!4201085 (= e!2607922 (isPrefix!4575 (tail!6763 pBis!121) (tail!6763 input!3517)))))

(declare-fun b!4201084 () Bool)

(declare-fun res!1725338 () Bool)

(assert (=> b!4201084 (=> (not res!1725338) (not e!2607922))))

(declare-fun head!8916 (List!46306) C!25436)

(assert (=> b!4201084 (= res!1725338 (= (head!8916 pBis!121) (head!8916 input!3517)))))

(assert (= (and d!1238480 (not res!1725340)) b!4201083))

(assert (= (and b!4201083 res!1725339) b!4201084))

(assert (= (and b!4201084 res!1725338) b!4201085))

(assert (= (and d!1238480 (not res!1725337)) b!4201086))

(declare-fun m!4789295 () Bool)

(assert (=> b!4201086 m!4789295))

(declare-fun m!4789297 () Bool)

(assert (=> b!4201086 m!4789297))

(declare-fun m!4789299 () Bool)

(assert (=> b!4201085 m!4789299))

(declare-fun m!4789301 () Bool)

(assert (=> b!4201085 m!4789301))

(assert (=> b!4201085 m!4789299))

(assert (=> b!4201085 m!4789301))

(declare-fun m!4789303 () Bool)

(assert (=> b!4201085 m!4789303))

(declare-fun m!4789305 () Bool)

(assert (=> b!4201084 m!4789305))

(declare-fun m!4789307 () Bool)

(assert (=> b!4201084 m!4789307))

(assert (=> b!4200971 d!1238480))

(declare-fun d!1238482 () Bool)

(assert (=> d!1238482 (= (inv!60737 (tag!8580 (rule!10812 tBis!41))) (= (mod (str.len (value!240434 (tag!8580 (rule!10812 tBis!41)))) 2) 0))))

(assert (=> b!4200982 d!1238482))

(declare-fun d!1238484 () Bool)

(declare-fun res!1725356 () Bool)

(declare-fun e!2607934 () Bool)

(assert (=> d!1238484 (=> (not res!1725356) (not e!2607934))))

(declare-fun semiInverseModEq!3348 (Int Int) Bool)

(assert (=> d!1238484 (= res!1725356 (semiInverseModEq!3348 (toChars!10279 (transformation!7716 (rule!10812 tBis!41))) (toValue!10420 (transformation!7716 (rule!10812 tBis!41)))))))

(assert (=> d!1238484 (= (inv!60741 (transformation!7716 (rule!10812 tBis!41))) e!2607934)))

(declare-fun b!4201110 () Bool)

(declare-fun equivClasses!3247 (Int Int) Bool)

(assert (=> b!4201110 (= e!2607934 (equivClasses!3247 (toChars!10279 (transformation!7716 (rule!10812 tBis!41))) (toValue!10420 (transformation!7716 (rule!10812 tBis!41)))))))

(assert (= (and d!1238484 res!1725356) b!4201110))

(declare-fun m!4789349 () Bool)

(assert (=> d!1238484 m!4789349))

(declare-fun m!4789351 () Bool)

(assert (=> b!4201110 m!4789351))

(assert (=> b!4200982 d!1238484))

(declare-fun d!1238490 () Bool)

(declare-fun e!2608005 () Bool)

(assert (=> d!1238490 e!2608005))

(declare-fun res!1725405 () Bool)

(assert (=> d!1238490 (=> res!1725405 e!2608005)))

(declare-fun lt!1496392 () Option!9904)

(declare-fun isEmpty!27345 (Option!9904) Bool)

(assert (=> d!1238490 (= res!1725405 (isEmpty!27345 lt!1496392))))

(declare-fun e!2608002 () Option!9904)

(assert (=> d!1238490 (= lt!1496392 e!2608002)))

(declare-fun c!716250 () Bool)

(declare-datatypes ((tuple2!43942 0))(
  ( (tuple2!43943 (_1!25105 List!46306) (_2!25105 List!46306)) )
))
(declare-fun lt!1496396 () tuple2!43942)

(assert (=> d!1238490 (= c!716250 (isEmpty!27344 (_1!25105 lt!1496396)))))

(declare-fun findLongestMatch!1540 (Regex!12621 List!46306) tuple2!43942)

(assert (=> d!1238490 (= lt!1496396 (findLongestMatch!1540 (regex!7716 rBis!178) input!3517))))

(assert (=> d!1238490 (ruleValid!3428 thiss!26544 rBis!178)))

(assert (=> d!1238490 (= (maxPrefixOneRule!3306 thiss!26544 rBis!178 input!3517) lt!1496392)))

(declare-fun b!4201235 () Bool)

(declare-fun e!2608003 () Bool)

(declare-fun matchR!6346 (Regex!12621 List!46306) Bool)

(declare-fun findLongestMatchInner!1627 (Regex!12621 List!46306 Int List!46306 List!46306 Int) tuple2!43942)

(assert (=> b!4201235 (= e!2608003 (matchR!6346 (regex!7716 rBis!178) (_1!25105 (findLongestMatchInner!1627 (regex!7716 rBis!178) Nil!46182 (size!33934 Nil!46182) input!3517 input!3517 (size!33934 input!3517)))))))

(declare-fun b!4201236 () Bool)

(assert (=> b!4201236 (= e!2608002 None!9903)))

(declare-fun b!4201237 () Bool)

(declare-fun res!1725407 () Bool)

(declare-fun e!2608004 () Bool)

(assert (=> b!4201237 (=> (not res!1725407) (not e!2608004))))

(declare-fun get!15020 (Option!9904) tuple2!43938)

(assert (=> b!4201237 (= res!1725407 (< (size!33934 (_2!25103 (get!15020 lt!1496392))) (size!33934 input!3517)))))

(declare-fun b!4201238 () Bool)

(assert (=> b!4201238 (= e!2608005 e!2608004)))

(declare-fun res!1725410 () Bool)

(assert (=> b!4201238 (=> (not res!1725410) (not e!2608004))))

(assert (=> b!4201238 (= res!1725410 (matchR!6346 (regex!7716 rBis!178) (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496392))))))))

(declare-fun b!4201239 () Bool)

(declare-fun apply!10667 (TokenValueInjection!15320 BalanceConc!27448) TokenValue!7946)

(declare-fun seqFromList!5727 (List!46306) BalanceConc!27448)

(declare-fun size!33935 (BalanceConc!27448) Int)

(assert (=> b!4201239 (= e!2608002 (Some!9903 (tuple2!43939 (Token!14135 (apply!10667 (transformation!7716 rBis!178) (seqFromList!5727 (_1!25105 lt!1496396))) rBis!178 (size!33935 (seqFromList!5727 (_1!25105 lt!1496396))) (_1!25105 lt!1496396)) (_2!25105 lt!1496396))))))

(declare-fun lt!1496393 () Unit!65271)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1600 (Regex!12621 List!46306) Unit!65271)

(assert (=> b!4201239 (= lt!1496393 (longestMatchIsAcceptedByMatchOrIsEmpty!1600 (regex!7716 rBis!178) input!3517))))

(declare-fun res!1725409 () Bool)

(assert (=> b!4201239 (= res!1725409 (isEmpty!27344 (_1!25105 (findLongestMatchInner!1627 (regex!7716 rBis!178) Nil!46182 (size!33934 Nil!46182) input!3517 input!3517 (size!33934 input!3517)))))))

(assert (=> b!4201239 (=> res!1725409 e!2608003)))

(assert (=> b!4201239 e!2608003))

(declare-fun lt!1496395 () Unit!65271)

(assert (=> b!4201239 (= lt!1496395 lt!1496393)))

(declare-fun lt!1496394 () Unit!65271)

(declare-fun lemmaSemiInverse!2468 (TokenValueInjection!15320 BalanceConc!27448) Unit!65271)

(assert (=> b!4201239 (= lt!1496394 (lemmaSemiInverse!2468 (transformation!7716 rBis!178) (seqFromList!5727 (_1!25105 lt!1496396))))))

(declare-fun b!4201240 () Bool)

(declare-fun res!1725411 () Bool)

(assert (=> b!4201240 (=> (not res!1725411) (not e!2608004))))

(assert (=> b!4201240 (= res!1725411 (= (rule!10812 (_1!25103 (get!15020 lt!1496392))) rBis!178))))

(declare-fun b!4201241 () Bool)

(declare-fun res!1725408 () Bool)

(assert (=> b!4201241 (=> (not res!1725408) (not e!2608004))))

(assert (=> b!4201241 (= res!1725408 (= (value!240435 (_1!25103 (get!15020 lt!1496392))) (apply!10667 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496392)))) (seqFromList!5727 (originalCharacters!8098 (_1!25103 (get!15020 lt!1496392)))))))))

(declare-fun b!4201242 () Bool)

(declare-fun res!1725406 () Bool)

(assert (=> b!4201242 (=> (not res!1725406) (not e!2608004))))

(assert (=> b!4201242 (= res!1725406 (= (++!11790 (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496392)))) (_2!25103 (get!15020 lt!1496392))) input!3517))))

(declare-fun b!4201243 () Bool)

(assert (=> b!4201243 (= e!2608004 (= (size!33931 (_1!25103 (get!15020 lt!1496392))) (size!33934 (originalCharacters!8098 (_1!25103 (get!15020 lt!1496392))))))))

(assert (= (and d!1238490 c!716250) b!4201236))

(assert (= (and d!1238490 (not c!716250)) b!4201239))

(assert (= (and b!4201239 (not res!1725409)) b!4201235))

(assert (= (and d!1238490 (not res!1725405)) b!4201238))

(assert (= (and b!4201238 res!1725410) b!4201242))

(assert (= (and b!4201242 res!1725406) b!4201237))

(assert (= (and b!4201237 res!1725407) b!4201240))

(assert (= (and b!4201240 res!1725411) b!4201241))

(assert (= (and b!4201241 res!1725408) b!4201243))

(declare-fun m!4789431 () Bool)

(assert (=> b!4201238 m!4789431))

(declare-fun m!4789433 () Bool)

(assert (=> b!4201238 m!4789433))

(assert (=> b!4201238 m!4789433))

(declare-fun m!4789435 () Bool)

(assert (=> b!4201238 m!4789435))

(assert (=> b!4201238 m!4789435))

(declare-fun m!4789437 () Bool)

(assert (=> b!4201238 m!4789437))

(declare-fun m!4789439 () Bool)

(assert (=> b!4201239 m!4789439))

(declare-fun m!4789441 () Bool)

(assert (=> b!4201239 m!4789441))

(assert (=> b!4201239 m!4789439))

(declare-fun m!4789443 () Bool)

(assert (=> b!4201239 m!4789443))

(assert (=> b!4201239 m!4789295))

(assert (=> b!4201239 m!4789439))

(declare-fun m!4789445 () Bool)

(assert (=> b!4201239 m!4789445))

(declare-fun m!4789447 () Bool)

(assert (=> b!4201239 m!4789447))

(declare-fun m!4789449 () Bool)

(assert (=> b!4201239 m!4789449))

(assert (=> b!4201239 m!4789439))

(declare-fun m!4789451 () Bool)

(assert (=> b!4201239 m!4789451))

(assert (=> b!4201239 m!4789445))

(assert (=> b!4201239 m!4789295))

(declare-fun m!4789453 () Bool)

(assert (=> b!4201239 m!4789453))

(assert (=> b!4201240 m!4789431))

(assert (=> b!4201242 m!4789431))

(assert (=> b!4201242 m!4789433))

(assert (=> b!4201242 m!4789433))

(assert (=> b!4201242 m!4789435))

(assert (=> b!4201242 m!4789435))

(declare-fun m!4789455 () Bool)

(assert (=> b!4201242 m!4789455))

(declare-fun m!4789457 () Bool)

(assert (=> d!1238490 m!4789457))

(declare-fun m!4789459 () Bool)

(assert (=> d!1238490 m!4789459))

(declare-fun m!4789461 () Bool)

(assert (=> d!1238490 m!4789461))

(assert (=> d!1238490 m!4789151))

(assert (=> b!4201235 m!4789445))

(assert (=> b!4201235 m!4789295))

(assert (=> b!4201235 m!4789445))

(assert (=> b!4201235 m!4789295))

(assert (=> b!4201235 m!4789453))

(declare-fun m!4789463 () Bool)

(assert (=> b!4201235 m!4789463))

(assert (=> b!4201241 m!4789431))

(declare-fun m!4789465 () Bool)

(assert (=> b!4201241 m!4789465))

(assert (=> b!4201241 m!4789465))

(declare-fun m!4789467 () Bool)

(assert (=> b!4201241 m!4789467))

(assert (=> b!4201237 m!4789431))

(declare-fun m!4789469 () Bool)

(assert (=> b!4201237 m!4789469))

(assert (=> b!4201237 m!4789295))

(assert (=> b!4201243 m!4789431))

(declare-fun m!4789471 () Bool)

(assert (=> b!4201243 m!4789471))

(assert (=> b!4200981 d!1238490))

(declare-fun b!4201244 () Bool)

(declare-fun e!2608007 () Bool)

(declare-fun e!2608008 () Bool)

(assert (=> b!4201244 (= e!2608007 e!2608008)))

(declare-fun res!1725414 () Bool)

(assert (=> b!4201244 (=> (not res!1725414) (not e!2608008))))

(assert (=> b!4201244 (= res!1725414 (not ((_ is Nil!46182) input!3517)))))

(declare-fun d!1238506 () Bool)

(declare-fun e!2608006 () Bool)

(assert (=> d!1238506 e!2608006))

(declare-fun res!1725412 () Bool)

(assert (=> d!1238506 (=> res!1725412 e!2608006)))

(declare-fun lt!1496397 () Bool)

(assert (=> d!1238506 (= res!1725412 (not lt!1496397))))

(assert (=> d!1238506 (= lt!1496397 e!2608007)))

(declare-fun res!1725415 () Bool)

(assert (=> d!1238506 (=> res!1725415 e!2608007)))

(assert (=> d!1238506 (= res!1725415 ((_ is Nil!46182) input!3517))))

(assert (=> d!1238506 (= (isPrefix!4575 input!3517 input!3517) lt!1496397)))

(declare-fun b!4201247 () Bool)

(assert (=> b!4201247 (= e!2608006 (>= (size!33934 input!3517) (size!33934 input!3517)))))

(declare-fun b!4201246 () Bool)

(assert (=> b!4201246 (= e!2608008 (isPrefix!4575 (tail!6763 input!3517) (tail!6763 input!3517)))))

(declare-fun b!4201245 () Bool)

(declare-fun res!1725413 () Bool)

(assert (=> b!4201245 (=> (not res!1725413) (not e!2608008))))

(assert (=> b!4201245 (= res!1725413 (= (head!8916 input!3517) (head!8916 input!3517)))))

(assert (= (and d!1238506 (not res!1725415)) b!4201244))

(assert (= (and b!4201244 res!1725414) b!4201245))

(assert (= (and b!4201245 res!1725413) b!4201246))

(assert (= (and d!1238506 (not res!1725412)) b!4201247))

(assert (=> b!4201247 m!4789295))

(assert (=> b!4201247 m!4789295))

(assert (=> b!4201246 m!4789301))

(assert (=> b!4201246 m!4789301))

(assert (=> b!4201246 m!4789301))

(assert (=> b!4201246 m!4789301))

(declare-fun m!4789473 () Bool)

(assert (=> b!4201246 m!4789473))

(assert (=> b!4201245 m!4789307))

(assert (=> b!4201245 m!4789307))

(assert (=> b!4200981 d!1238506))

(declare-fun d!1238508 () Bool)

(assert (=> d!1238508 (isPrefix!4575 input!3517 input!3517)))

(declare-fun lt!1496400 () Unit!65271)

(declare-fun choose!25766 (List!46306 List!46306) Unit!65271)

(assert (=> d!1238508 (= lt!1496400 (choose!25766 input!3517 input!3517))))

(assert (=> d!1238508 (= (lemmaIsPrefixRefl!2992 input!3517 input!3517) lt!1496400)))

(declare-fun bs!596952 () Bool)

(assert (= bs!596952 d!1238508))

(assert (=> bs!596952 m!4789141))

(declare-fun m!4789475 () Bool)

(assert (=> bs!596952 m!4789475))

(assert (=> b!4200981 d!1238508))

(declare-fun d!1238510 () Bool)

(declare-fun c!716255 () Bool)

(assert (=> d!1238510 (= c!716255 ((_ is IntegerValue!23838) (value!240435 tBis!41)))))

(declare-fun e!2608017 () Bool)

(assert (=> d!1238510 (= (inv!21 (value!240435 tBis!41)) e!2608017)))

(declare-fun b!4201258 () Bool)

(declare-fun res!1725418 () Bool)

(declare-fun e!2608015 () Bool)

(assert (=> b!4201258 (=> res!1725418 e!2608015)))

(assert (=> b!4201258 (= res!1725418 (not ((_ is IntegerValue!23840) (value!240435 tBis!41))))))

(declare-fun e!2608016 () Bool)

(assert (=> b!4201258 (= e!2608016 e!2608015)))

(declare-fun b!4201259 () Bool)

(declare-fun inv!16 (TokenValue!7946) Bool)

(assert (=> b!4201259 (= e!2608017 (inv!16 (value!240435 tBis!41)))))

(declare-fun b!4201260 () Bool)

(declare-fun inv!17 (TokenValue!7946) Bool)

(assert (=> b!4201260 (= e!2608016 (inv!17 (value!240435 tBis!41)))))

(declare-fun b!4201261 () Bool)

(assert (=> b!4201261 (= e!2608017 e!2608016)))

(declare-fun c!716256 () Bool)

(assert (=> b!4201261 (= c!716256 ((_ is IntegerValue!23839) (value!240435 tBis!41)))))

(declare-fun b!4201262 () Bool)

(declare-fun inv!15 (TokenValue!7946) Bool)

(assert (=> b!4201262 (= e!2608015 (inv!15 (value!240435 tBis!41)))))

(assert (= (and d!1238510 c!716255) b!4201259))

(assert (= (and d!1238510 (not c!716255)) b!4201261))

(assert (= (and b!4201261 c!716256) b!4201260))

(assert (= (and b!4201261 (not c!716256)) b!4201258))

(assert (= (and b!4201258 (not res!1725418)) b!4201262))

(declare-fun m!4789477 () Bool)

(assert (=> b!4201259 m!4789477))

(declare-fun m!4789479 () Bool)

(assert (=> b!4201260 m!4789479))

(declare-fun m!4789481 () Bool)

(assert (=> b!4201262 m!4789481))

(assert (=> b!4200960 d!1238510))

(declare-fun d!1238512 () Bool)

(declare-fun c!716257 () Bool)

(assert (=> d!1238512 (= c!716257 ((_ is IntegerValue!23838) (value!240435 t!8364)))))

(declare-fun e!2608020 () Bool)

(assert (=> d!1238512 (= (inv!21 (value!240435 t!8364)) e!2608020)))

(declare-fun b!4201263 () Bool)

(declare-fun res!1725419 () Bool)

(declare-fun e!2608018 () Bool)

(assert (=> b!4201263 (=> res!1725419 e!2608018)))

(assert (=> b!4201263 (= res!1725419 (not ((_ is IntegerValue!23840) (value!240435 t!8364))))))

(declare-fun e!2608019 () Bool)

(assert (=> b!4201263 (= e!2608019 e!2608018)))

(declare-fun b!4201264 () Bool)

(assert (=> b!4201264 (= e!2608020 (inv!16 (value!240435 t!8364)))))

(declare-fun b!4201265 () Bool)

(assert (=> b!4201265 (= e!2608019 (inv!17 (value!240435 t!8364)))))

(declare-fun b!4201266 () Bool)

(assert (=> b!4201266 (= e!2608020 e!2608019)))

(declare-fun c!716258 () Bool)

(assert (=> b!4201266 (= c!716258 ((_ is IntegerValue!23839) (value!240435 t!8364)))))

(declare-fun b!4201267 () Bool)

(assert (=> b!4201267 (= e!2608018 (inv!15 (value!240435 t!8364)))))

(assert (= (and d!1238512 c!716257) b!4201264))

(assert (= (and d!1238512 (not c!716257)) b!4201266))

(assert (= (and b!4201266 c!716258) b!4201265))

(assert (= (and b!4201266 (not c!716258)) b!4201263))

(assert (= (and b!4201263 (not res!1725419)) b!4201267))

(declare-fun m!4789483 () Bool)

(assert (=> b!4201264 m!4789483))

(declare-fun m!4789485 () Bool)

(assert (=> b!4201265 m!4789485))

(declare-fun m!4789487 () Bool)

(assert (=> b!4201267 m!4789487))

(assert (=> b!4200959 d!1238512))

(declare-fun b!4201278 () Bool)

(declare-fun res!1725425 () Bool)

(declare-fun e!2608025 () Bool)

(assert (=> b!4201278 (=> (not res!1725425) (not e!2608025))))

(declare-fun lt!1496403 () List!46306)

(assert (=> b!4201278 (= res!1725425 (= (size!33934 lt!1496403) (+ (size!33934 p!3001) (size!33934 suffix!1557))))))

(declare-fun d!1238514 () Bool)

(assert (=> d!1238514 e!2608025))

(declare-fun res!1725424 () Bool)

(assert (=> d!1238514 (=> (not res!1725424) (not e!2608025))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7212 (List!46306) (InoxSet C!25436))

(assert (=> d!1238514 (= res!1725424 (= (content!7212 lt!1496403) ((_ map or) (content!7212 p!3001) (content!7212 suffix!1557))))))

(declare-fun e!2608026 () List!46306)

(assert (=> d!1238514 (= lt!1496403 e!2608026)))

(declare-fun c!716261 () Bool)

(assert (=> d!1238514 (= c!716261 ((_ is Nil!46182) p!3001))))

(assert (=> d!1238514 (= (++!11790 p!3001 suffix!1557) lt!1496403)))

(declare-fun b!4201277 () Bool)

(assert (=> b!4201277 (= e!2608026 (Cons!46182 (h!51602 p!3001) (++!11790 (t!346811 p!3001) suffix!1557)))))

(declare-fun b!4201279 () Bool)

(assert (=> b!4201279 (= e!2608025 (or (not (= suffix!1557 Nil!46182)) (= lt!1496403 p!3001)))))

(declare-fun b!4201276 () Bool)

(assert (=> b!4201276 (= e!2608026 suffix!1557)))

(assert (= (and d!1238514 c!716261) b!4201276))

(assert (= (and d!1238514 (not c!716261)) b!4201277))

(assert (= (and d!1238514 res!1725424) b!4201278))

(assert (= (and b!4201278 res!1725425) b!4201279))

(declare-fun m!4789489 () Bool)

(assert (=> b!4201278 m!4789489))

(declare-fun m!4789491 () Bool)

(assert (=> b!4201278 m!4789491))

(declare-fun m!4789493 () Bool)

(assert (=> b!4201278 m!4789493))

(declare-fun m!4789495 () Bool)

(assert (=> d!1238514 m!4789495))

(declare-fun m!4789497 () Bool)

(assert (=> d!1238514 m!4789497))

(declare-fun m!4789499 () Bool)

(assert (=> d!1238514 m!4789499))

(declare-fun m!4789501 () Bool)

(assert (=> b!4201277 m!4789501))

(assert (=> b!4200970 d!1238514))

(declare-fun d!1238516 () Bool)

(assert (=> d!1238516 (= (isEmpty!27341 rules!3967) ((_ is Nil!46183) rules!3967))))

(assert (=> b!4200969 d!1238516))

(declare-fun b!4201280 () Bool)

(declare-fun e!2608028 () Bool)

(declare-fun e!2608029 () Bool)

(assert (=> b!4201280 (= e!2608028 e!2608029)))

(declare-fun res!1725428 () Bool)

(assert (=> b!4201280 (=> (not res!1725428) (not e!2608029))))

(assert (=> b!4201280 (= res!1725428 (not ((_ is Nil!46182) input!3517)))))

(declare-fun d!1238518 () Bool)

(declare-fun e!2608027 () Bool)

(assert (=> d!1238518 e!2608027))

(declare-fun res!1725426 () Bool)

(assert (=> d!1238518 (=> res!1725426 e!2608027)))

(declare-fun lt!1496404 () Bool)

(assert (=> d!1238518 (= res!1725426 (not lt!1496404))))

(assert (=> d!1238518 (= lt!1496404 e!2608028)))

(declare-fun res!1725429 () Bool)

(assert (=> d!1238518 (=> res!1725429 e!2608028)))

(assert (=> d!1238518 (= res!1725429 ((_ is Nil!46182) p!3001))))

(assert (=> d!1238518 (= (isPrefix!4575 p!3001 input!3517) lt!1496404)))

(declare-fun b!4201283 () Bool)

(assert (=> b!4201283 (= e!2608027 (>= (size!33934 input!3517) (size!33934 p!3001)))))

(declare-fun b!4201282 () Bool)

(assert (=> b!4201282 (= e!2608029 (isPrefix!4575 (tail!6763 p!3001) (tail!6763 input!3517)))))

(declare-fun b!4201281 () Bool)

(declare-fun res!1725427 () Bool)

(assert (=> b!4201281 (=> (not res!1725427) (not e!2608029))))

(assert (=> b!4201281 (= res!1725427 (= (head!8916 p!3001) (head!8916 input!3517)))))

(assert (= (and d!1238518 (not res!1725429)) b!4201280))

(assert (= (and b!4201280 res!1725428) b!4201281))

(assert (= (and b!4201281 res!1725427) b!4201282))

(assert (= (and d!1238518 (not res!1725426)) b!4201283))

(assert (=> b!4201283 m!4789295))

(assert (=> b!4201283 m!4789491))

(declare-fun m!4789503 () Bool)

(assert (=> b!4201282 m!4789503))

(assert (=> b!4201282 m!4789301))

(assert (=> b!4201282 m!4789503))

(assert (=> b!4201282 m!4789301))

(declare-fun m!4789505 () Bool)

(assert (=> b!4201282 m!4789505))

(declare-fun m!4789507 () Bool)

(assert (=> b!4201281 m!4789507))

(assert (=> b!4201281 m!4789307))

(assert (=> b!4200980 d!1238518))

(declare-fun d!1238520 () Bool)

(assert (=> d!1238520 (= (inv!60737 (tag!8580 rBis!178)) (= (mod (str.len (value!240434 (tag!8580 rBis!178))) 2) 0))))

(assert (=> b!4200968 d!1238520))

(declare-fun d!1238522 () Bool)

(declare-fun res!1725430 () Bool)

(declare-fun e!2608030 () Bool)

(assert (=> d!1238522 (=> (not res!1725430) (not e!2608030))))

(assert (=> d!1238522 (= res!1725430 (semiInverseModEq!3348 (toChars!10279 (transformation!7716 rBis!178)) (toValue!10420 (transformation!7716 rBis!178))))))

(assert (=> d!1238522 (= (inv!60741 (transformation!7716 rBis!178)) e!2608030)))

(declare-fun b!4201284 () Bool)

(assert (=> b!4201284 (= e!2608030 (equivClasses!3247 (toChars!10279 (transformation!7716 rBis!178)) (toValue!10420 (transformation!7716 rBis!178))))))

(assert (= (and d!1238522 res!1725430) b!4201284))

(declare-fun m!4789509 () Bool)

(assert (=> d!1238522 m!4789509))

(declare-fun m!4789511 () Bool)

(assert (=> b!4201284 m!4789511))

(assert (=> b!4200968 d!1238522))

(declare-fun d!1238524 () Bool)

(declare-fun lt!1496407 () Bool)

(declare-fun content!7213 (List!46307) (InoxSet Rule!15232))

(assert (=> d!1238524 (= lt!1496407 (select (content!7213 rules!3967) rBis!178))))

(declare-fun e!2608035 () Bool)

(assert (=> d!1238524 (= lt!1496407 e!2608035)))

(declare-fun res!1725435 () Bool)

(assert (=> d!1238524 (=> (not res!1725435) (not e!2608035))))

(assert (=> d!1238524 (= res!1725435 ((_ is Cons!46183) rules!3967))))

(assert (=> d!1238524 (= (contains!9529 rules!3967 rBis!178) lt!1496407)))

(declare-fun b!4201289 () Bool)

(declare-fun e!2608036 () Bool)

(assert (=> b!4201289 (= e!2608035 e!2608036)))

(declare-fun res!1725436 () Bool)

(assert (=> b!4201289 (=> res!1725436 e!2608036)))

(assert (=> b!4201289 (= res!1725436 (= (h!51603 rules!3967) rBis!178))))

(declare-fun b!4201290 () Bool)

(assert (=> b!4201290 (= e!2608036 (contains!9529 (t!346812 rules!3967) rBis!178))))

(assert (= (and d!1238524 res!1725435) b!4201289))

(assert (= (and b!4201289 (not res!1725436)) b!4201290))

(declare-fun m!4789513 () Bool)

(assert (=> d!1238524 m!4789513))

(declare-fun m!4789515 () Bool)

(assert (=> d!1238524 m!4789515))

(declare-fun m!4789517 () Bool)

(assert (=> b!4201290 m!4789517))

(assert (=> b!4200967 d!1238524))

(declare-fun d!1238526 () Bool)

(assert (=> d!1238526 (= (inv!60737 (tag!8580 (rule!10812 t!8364))) (= (mod (str.len (value!240434 (tag!8580 (rule!10812 t!8364)))) 2) 0))))

(assert (=> b!4200978 d!1238526))

(declare-fun d!1238528 () Bool)

(declare-fun res!1725437 () Bool)

(declare-fun e!2608037 () Bool)

(assert (=> d!1238528 (=> (not res!1725437) (not e!2608037))))

(assert (=> d!1238528 (= res!1725437 (semiInverseModEq!3348 (toChars!10279 (transformation!7716 (rule!10812 t!8364))) (toValue!10420 (transformation!7716 (rule!10812 t!8364)))))))

(assert (=> d!1238528 (= (inv!60741 (transformation!7716 (rule!10812 t!8364))) e!2608037)))

(declare-fun b!4201291 () Bool)

(assert (=> b!4201291 (= e!2608037 (equivClasses!3247 (toChars!10279 (transformation!7716 (rule!10812 t!8364))) (toValue!10420 (transformation!7716 (rule!10812 t!8364)))))))

(assert (= (and d!1238528 res!1725437) b!4201291))

(declare-fun m!4789519 () Bool)

(assert (=> d!1238528 m!4789519))

(declare-fun m!4789521 () Bool)

(assert (=> b!4201291 m!4789521))

(assert (=> b!4200978 d!1238528))

(declare-fun d!1238530 () Bool)

(assert (=> d!1238530 (= (inv!60737 (tag!8580 (h!51603 rules!3967))) (= (mod (str.len (value!240434 (tag!8580 (h!51603 rules!3967)))) 2) 0))))

(assert (=> b!4200986 d!1238530))

(declare-fun d!1238532 () Bool)

(declare-fun res!1725438 () Bool)

(declare-fun e!2608038 () Bool)

(assert (=> d!1238532 (=> (not res!1725438) (not e!2608038))))

(assert (=> d!1238532 (= res!1725438 (semiInverseModEq!3348 (toChars!10279 (transformation!7716 (h!51603 rules!3967))) (toValue!10420 (transformation!7716 (h!51603 rules!3967)))))))

(assert (=> d!1238532 (= (inv!60741 (transformation!7716 (h!51603 rules!3967))) e!2608038)))

(declare-fun b!4201292 () Bool)

(assert (=> b!4201292 (= e!2608038 (equivClasses!3247 (toChars!10279 (transformation!7716 (h!51603 rules!3967))) (toValue!10420 (transformation!7716 (h!51603 rules!3967)))))))

(assert (= (and d!1238532 res!1725438) b!4201292))

(declare-fun m!4789523 () Bool)

(assert (=> d!1238532 m!4789523))

(declare-fun m!4789525 () Bool)

(assert (=> b!4201292 m!4789525))

(assert (=> b!4200986 d!1238532))

(declare-fun b!4201295 () Bool)

(declare-fun res!1725440 () Bool)

(declare-fun e!2608039 () Bool)

(assert (=> b!4201295 (=> (not res!1725440) (not e!2608039))))

(declare-fun lt!1496408 () List!46306)

(assert (=> b!4201295 (= res!1725440 (= (size!33934 lt!1496408) (+ (size!33934 pBis!121) (size!33934 suffixBis!41))))))

(declare-fun d!1238534 () Bool)

(assert (=> d!1238534 e!2608039))

(declare-fun res!1725439 () Bool)

(assert (=> d!1238534 (=> (not res!1725439) (not e!2608039))))

(assert (=> d!1238534 (= res!1725439 (= (content!7212 lt!1496408) ((_ map or) (content!7212 pBis!121) (content!7212 suffixBis!41))))))

(declare-fun e!2608040 () List!46306)

(assert (=> d!1238534 (= lt!1496408 e!2608040)))

(declare-fun c!716262 () Bool)

(assert (=> d!1238534 (= c!716262 ((_ is Nil!46182) pBis!121))))

(assert (=> d!1238534 (= (++!11790 pBis!121 suffixBis!41) lt!1496408)))

(declare-fun b!4201294 () Bool)

(assert (=> b!4201294 (= e!2608040 (Cons!46182 (h!51602 pBis!121) (++!11790 (t!346811 pBis!121) suffixBis!41)))))

(declare-fun b!4201296 () Bool)

(assert (=> b!4201296 (= e!2608039 (or (not (= suffixBis!41 Nil!46182)) (= lt!1496408 pBis!121)))))

(declare-fun b!4201293 () Bool)

(assert (=> b!4201293 (= e!2608040 suffixBis!41)))

(assert (= (and d!1238534 c!716262) b!4201293))

(assert (= (and d!1238534 (not c!716262)) b!4201294))

(assert (= (and d!1238534 res!1725439) b!4201295))

(assert (= (and b!4201295 res!1725440) b!4201296))

(declare-fun m!4789527 () Bool)

(assert (=> b!4201295 m!4789527))

(assert (=> b!4201295 m!4789297))

(declare-fun m!4789529 () Bool)

(assert (=> b!4201295 m!4789529))

(declare-fun m!4789531 () Bool)

(assert (=> d!1238534 m!4789531))

(declare-fun m!4789533 () Bool)

(assert (=> d!1238534 m!4789533))

(declare-fun m!4789535 () Bool)

(assert (=> d!1238534 m!4789535))

(declare-fun m!4789537 () Bool)

(assert (=> b!4201294 m!4789537))

(assert (=> b!4200985 d!1238534))

(declare-fun d!1238536 () Bool)

(declare-fun e!2608049 () Bool)

(assert (=> d!1238536 e!2608049))

(declare-fun res!1725461 () Bool)

(assert (=> d!1238536 (=> res!1725461 e!2608049)))

(declare-fun lt!1496423 () Option!9904)

(assert (=> d!1238536 (= res!1725461 (isEmpty!27345 lt!1496423))))

(declare-fun e!2608047 () Option!9904)

(assert (=> d!1238536 (= lt!1496423 e!2608047)))

(declare-fun c!716265 () Bool)

(assert (=> d!1238536 (= c!716265 (and ((_ is Cons!46183) rules!3967) ((_ is Nil!46183) (t!346812 rules!3967))))))

(declare-fun lt!1496422 () Unit!65271)

(declare-fun lt!1496419 () Unit!65271)

(assert (=> d!1238536 (= lt!1496422 lt!1496419)))

(assert (=> d!1238536 (isPrefix!4575 input!3517 input!3517)))

(assert (=> d!1238536 (= lt!1496419 (lemmaIsPrefixRefl!2992 input!3517 input!3517))))

(declare-fun rulesValidInductive!2856 (LexerInterface!7311 List!46307) Bool)

(assert (=> d!1238536 (rulesValidInductive!2856 thiss!26544 rules!3967)))

(assert (=> d!1238536 (= (maxPrefix!4351 thiss!26544 rules!3967 input!3517) lt!1496423)))

(declare-fun b!4201315 () Bool)

(declare-fun e!2608048 () Bool)

(assert (=> b!4201315 (= e!2608048 (contains!9529 rules!3967 (rule!10812 (_1!25103 (get!15020 lt!1496423)))))))

(declare-fun b!4201316 () Bool)

(declare-fun res!1725460 () Bool)

(assert (=> b!4201316 (=> (not res!1725460) (not e!2608048))))

(assert (=> b!4201316 (= res!1725460 (= (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496423)))) (originalCharacters!8098 (_1!25103 (get!15020 lt!1496423)))))))

(declare-fun b!4201317 () Bool)

(declare-fun res!1725457 () Bool)

(assert (=> b!4201317 (=> (not res!1725457) (not e!2608048))))

(assert (=> b!4201317 (= res!1725457 (< (size!33934 (_2!25103 (get!15020 lt!1496423))) (size!33934 input!3517)))))

(declare-fun b!4201318 () Bool)

(declare-fun lt!1496420 () Option!9904)

(declare-fun lt!1496421 () Option!9904)

(assert (=> b!4201318 (= e!2608047 (ite (and ((_ is None!9903) lt!1496420) ((_ is None!9903) lt!1496421)) None!9903 (ite ((_ is None!9903) lt!1496421) lt!1496420 (ite ((_ is None!9903) lt!1496420) lt!1496421 (ite (>= (size!33931 (_1!25103 (v!40755 lt!1496420))) (size!33931 (_1!25103 (v!40755 lt!1496421)))) lt!1496420 lt!1496421)))))))

(declare-fun call!292574 () Option!9904)

(assert (=> b!4201318 (= lt!1496420 call!292574)))

(assert (=> b!4201318 (= lt!1496421 (maxPrefix!4351 thiss!26544 (t!346812 rules!3967) input!3517))))

(declare-fun b!4201319 () Bool)

(declare-fun res!1725458 () Bool)

(assert (=> b!4201319 (=> (not res!1725458) (not e!2608048))))

(assert (=> b!4201319 (= res!1725458 (matchR!6346 (regex!7716 (rule!10812 (_1!25103 (get!15020 lt!1496423)))) (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496423))))))))

(declare-fun b!4201320 () Bool)

(declare-fun res!1725459 () Bool)

(assert (=> b!4201320 (=> (not res!1725459) (not e!2608048))))

(assert (=> b!4201320 (= res!1725459 (= (++!11790 (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496423)))) (_2!25103 (get!15020 lt!1496423))) input!3517))))

(declare-fun b!4201321 () Bool)

(declare-fun res!1725455 () Bool)

(assert (=> b!4201321 (=> (not res!1725455) (not e!2608048))))

(assert (=> b!4201321 (= res!1725455 (= (value!240435 (_1!25103 (get!15020 lt!1496423))) (apply!10667 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496423)))) (seqFromList!5727 (originalCharacters!8098 (_1!25103 (get!15020 lt!1496423)))))))))

(declare-fun b!4201322 () Bool)

(assert (=> b!4201322 (= e!2608047 call!292574)))

(declare-fun b!4201323 () Bool)

(assert (=> b!4201323 (= e!2608049 e!2608048)))

(declare-fun res!1725456 () Bool)

(assert (=> b!4201323 (=> (not res!1725456) (not e!2608048))))

(declare-fun isDefined!7368 (Option!9904) Bool)

(assert (=> b!4201323 (= res!1725456 (isDefined!7368 lt!1496423))))

(declare-fun bm!292569 () Bool)

(assert (=> bm!292569 (= call!292574 (maxPrefixOneRule!3306 thiss!26544 (h!51603 rules!3967) input!3517))))

(assert (= (and d!1238536 c!716265) b!4201322))

(assert (= (and d!1238536 (not c!716265)) b!4201318))

(assert (= (or b!4201322 b!4201318) bm!292569))

(assert (= (and d!1238536 (not res!1725461)) b!4201323))

(assert (= (and b!4201323 res!1725456) b!4201316))

(assert (= (and b!4201316 res!1725460) b!4201317))

(assert (= (and b!4201317 res!1725457) b!4201320))

(assert (= (and b!4201320 res!1725459) b!4201321))

(assert (= (and b!4201321 res!1725455) b!4201319))

(assert (= (and b!4201319 res!1725458) b!4201315))

(declare-fun m!4789539 () Bool)

(assert (=> b!4201323 m!4789539))

(declare-fun m!4789541 () Bool)

(assert (=> d!1238536 m!4789541))

(assert (=> d!1238536 m!4789141))

(assert (=> d!1238536 m!4789143))

(declare-fun m!4789543 () Bool)

(assert (=> d!1238536 m!4789543))

(declare-fun m!4789545 () Bool)

(assert (=> b!4201316 m!4789545))

(declare-fun m!4789547 () Bool)

(assert (=> b!4201316 m!4789547))

(assert (=> b!4201316 m!4789547))

(declare-fun m!4789549 () Bool)

(assert (=> b!4201316 m!4789549))

(assert (=> b!4201320 m!4789545))

(assert (=> b!4201320 m!4789547))

(assert (=> b!4201320 m!4789547))

(assert (=> b!4201320 m!4789549))

(assert (=> b!4201320 m!4789549))

(declare-fun m!4789551 () Bool)

(assert (=> b!4201320 m!4789551))

(assert (=> b!4201315 m!4789545))

(declare-fun m!4789553 () Bool)

(assert (=> b!4201315 m!4789553))

(declare-fun m!4789555 () Bool)

(assert (=> b!4201318 m!4789555))

(declare-fun m!4789557 () Bool)

(assert (=> bm!292569 m!4789557))

(assert (=> b!4201321 m!4789545))

(declare-fun m!4789559 () Bool)

(assert (=> b!4201321 m!4789559))

(assert (=> b!4201321 m!4789559))

(declare-fun m!4789561 () Bool)

(assert (=> b!4201321 m!4789561))

(assert (=> b!4201319 m!4789545))

(assert (=> b!4201319 m!4789547))

(assert (=> b!4201319 m!4789547))

(assert (=> b!4201319 m!4789549))

(assert (=> b!4201319 m!4789549))

(declare-fun m!4789563 () Bool)

(assert (=> b!4201319 m!4789563))

(assert (=> b!4201317 m!4789545))

(declare-fun m!4789565 () Bool)

(assert (=> b!4201317 m!4789565))

(assert (=> b!4201317 m!4789295))

(assert (=> b!4200974 d!1238536))

(declare-fun d!1238538 () Bool)

(declare-fun list!16685 (Conc!13927) List!46306)

(assert (=> d!1238538 (= (list!16683 (charsOf!5139 tBis!41)) (list!16685 (c!716229 (charsOf!5139 tBis!41))))))

(declare-fun bs!596953 () Bool)

(assert (= bs!596953 d!1238538))

(declare-fun m!4789567 () Bool)

(assert (=> bs!596953 m!4789567))

(assert (=> b!4200973 d!1238538))

(declare-fun d!1238540 () Bool)

(declare-fun lt!1496426 () BalanceConc!27448)

(assert (=> d!1238540 (= (list!16683 lt!1496426) (originalCharacters!8098 tBis!41))))

(assert (=> d!1238540 (= lt!1496426 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 tBis!41))) (value!240435 tBis!41)))))

(assert (=> d!1238540 (= (charsOf!5139 tBis!41) lt!1496426)))

(declare-fun b_lambda!123643 () Bool)

(assert (=> (not b_lambda!123643) (not d!1238540)))

(assert (=> d!1238540 t!346830))

(declare-fun b_and!329741 () Bool)

(assert (= b_and!329729 (and (=> t!346830 result!306854) b_and!329741)))

(assert (=> d!1238540 t!346832))

(declare-fun b_and!329743 () Bool)

(assert (= b_and!329731 (and (=> t!346832 result!306858) b_and!329743)))

(assert (=> d!1238540 t!346834))

(declare-fun b_and!329745 () Bool)

(assert (= b_and!329733 (and (=> t!346834 result!306860) b_and!329745)))

(assert (=> d!1238540 t!346836))

(declare-fun b_and!329747 () Bool)

(assert (= b_and!329735 (and (=> t!346836 result!306862) b_and!329747)))

(declare-fun m!4789569 () Bool)

(assert (=> d!1238540 m!4789569))

(assert (=> d!1238540 m!4789277))

(assert (=> b!4200973 d!1238540))

(declare-fun d!1238542 () Bool)

(declare-fun res!1725464 () Bool)

(declare-fun e!2608052 () Bool)

(assert (=> d!1238542 (=> (not res!1725464) (not e!2608052))))

(declare-fun rulesValid!3016 (LexerInterface!7311 List!46307) Bool)

(assert (=> d!1238542 (= res!1725464 (rulesValid!3016 thiss!26544 rules!3967))))

(assert (=> d!1238542 (= (rulesInvariant!6522 thiss!26544 rules!3967) e!2608052)))

(declare-fun b!4201326 () Bool)

(declare-datatypes ((List!46309 0))(
  ( (Nil!46185) (Cons!46185 (h!51605 String!53600) (t!346854 List!46309)) )
))
(declare-fun noDuplicateTag!3177 (LexerInterface!7311 List!46307 List!46309) Bool)

(assert (=> b!4201326 (= e!2608052 (noDuplicateTag!3177 thiss!26544 rules!3967 Nil!46185))))

(assert (= (and d!1238542 res!1725464) b!4201326))

(declare-fun m!4789571 () Bool)

(assert (=> d!1238542 m!4789571))

(declare-fun m!4789573 () Bool)

(assert (=> b!4201326 m!4789573))

(assert (=> b!4200984 d!1238542))

(declare-fun d!1238544 () Bool)

(declare-fun res!1725465 () Bool)

(declare-fun e!2608053 () Bool)

(assert (=> d!1238544 (=> (not res!1725465) (not e!2608053))))

(assert (=> d!1238544 (= res!1725465 (validRegex!5726 (regex!7716 rBis!178)))))

(assert (=> d!1238544 (= (ruleValid!3428 thiss!26544 rBis!178) e!2608053)))

(declare-fun b!4201327 () Bool)

(declare-fun res!1725466 () Bool)

(assert (=> b!4201327 (=> (not res!1725466) (not e!2608053))))

(assert (=> b!4201327 (= res!1725466 (not (nullable!4439 (regex!7716 rBis!178))))))

(declare-fun b!4201328 () Bool)

(assert (=> b!4201328 (= e!2608053 (not (= (tag!8580 rBis!178) (String!53601 ""))))))

(assert (= (and d!1238544 res!1725465) b!4201327))

(assert (= (and b!4201327 res!1725466) b!4201328))

(declare-fun m!4789575 () Bool)

(assert (=> d!1238544 m!4789575))

(declare-fun m!4789577 () Bool)

(assert (=> b!4201327 m!4789577))

(assert (=> b!4200962 d!1238544))

(declare-fun b!4201333 () Bool)

(declare-fun e!2608056 () Bool)

(declare-fun tp!1283736 () Bool)

(assert (=> b!4201333 (= e!2608056 (and tp_is_empty!22209 tp!1283736))))

(assert (=> b!4200972 (= tp!1283666 e!2608056)))

(assert (= (and b!4200972 ((_ is Cons!46182) (t!346811 pBis!121))) b!4201333))

(declare-fun b!4201347 () Bool)

(declare-fun e!2608059 () Bool)

(declare-fun tp!1283750 () Bool)

(declare-fun tp!1283748 () Bool)

(assert (=> b!4201347 (= e!2608059 (and tp!1283750 tp!1283748))))

(declare-fun b!4201344 () Bool)

(assert (=> b!4201344 (= e!2608059 tp_is_empty!22209)))

(declare-fun b!4201346 () Bool)

(declare-fun tp!1283749 () Bool)

(assert (=> b!4201346 (= e!2608059 tp!1283749)))

(assert (=> b!4200982 (= tp!1283665 e!2608059)))

(declare-fun b!4201345 () Bool)

(declare-fun tp!1283751 () Bool)

(declare-fun tp!1283747 () Bool)

(assert (=> b!4201345 (= e!2608059 (and tp!1283751 tp!1283747))))

(assert (= (and b!4200982 ((_ is ElementMatch!12621) (regex!7716 (rule!10812 tBis!41)))) b!4201344))

(assert (= (and b!4200982 ((_ is Concat!20568) (regex!7716 (rule!10812 tBis!41)))) b!4201345))

(assert (= (and b!4200982 ((_ is Star!12621) (regex!7716 (rule!10812 tBis!41)))) b!4201346))

(assert (= (and b!4200982 ((_ is Union!12621) (regex!7716 (rule!10812 tBis!41)))) b!4201347))

(declare-fun b!4201348 () Bool)

(declare-fun e!2608060 () Bool)

(declare-fun tp!1283752 () Bool)

(assert (=> b!4201348 (= e!2608060 (and tp_is_empty!22209 tp!1283752))))

(assert (=> b!4200960 (= tp!1283662 e!2608060)))

(assert (= (and b!4200960 ((_ is Cons!46182) (originalCharacters!8098 tBis!41))) b!4201348))

(declare-fun b!4201349 () Bool)

(declare-fun e!2608061 () Bool)

(declare-fun tp!1283753 () Bool)

(assert (=> b!4201349 (= e!2608061 (and tp_is_empty!22209 tp!1283753))))

(assert (=> b!4200959 (= tp!1283661 e!2608061)))

(assert (= (and b!4200959 ((_ is Cons!46182) (originalCharacters!8098 t!8364))) b!4201349))

(declare-fun b!4201350 () Bool)

(declare-fun e!2608062 () Bool)

(declare-fun tp!1283754 () Bool)

(assert (=> b!4201350 (= e!2608062 (and tp_is_empty!22209 tp!1283754))))

(assert (=> b!4200979 (= tp!1283668 e!2608062)))

(assert (= (and b!4200979 ((_ is Cons!46182) (t!346811 input!3517))) b!4201350))

(declare-fun b!4201354 () Bool)

(declare-fun e!2608063 () Bool)

(declare-fun tp!1283758 () Bool)

(declare-fun tp!1283756 () Bool)

(assert (=> b!4201354 (= e!2608063 (and tp!1283758 tp!1283756))))

(declare-fun b!4201351 () Bool)

(assert (=> b!4201351 (= e!2608063 tp_is_empty!22209)))

(declare-fun b!4201353 () Bool)

(declare-fun tp!1283757 () Bool)

(assert (=> b!4201353 (= e!2608063 tp!1283757)))

(assert (=> b!4200968 (= tp!1283672 e!2608063)))

(declare-fun b!4201352 () Bool)

(declare-fun tp!1283759 () Bool)

(declare-fun tp!1283755 () Bool)

(assert (=> b!4201352 (= e!2608063 (and tp!1283759 tp!1283755))))

(assert (= (and b!4200968 ((_ is ElementMatch!12621) (regex!7716 rBis!178))) b!4201351))

(assert (= (and b!4200968 ((_ is Concat!20568) (regex!7716 rBis!178))) b!4201352))

(assert (= (and b!4200968 ((_ is Star!12621) (regex!7716 rBis!178))) b!4201353))

(assert (= (and b!4200968 ((_ is Union!12621) (regex!7716 rBis!178))) b!4201354))

(declare-fun b!4201358 () Bool)

(declare-fun e!2608064 () Bool)

(declare-fun tp!1283763 () Bool)

(declare-fun tp!1283761 () Bool)

(assert (=> b!4201358 (= e!2608064 (and tp!1283763 tp!1283761))))

(declare-fun b!4201355 () Bool)

(assert (=> b!4201355 (= e!2608064 tp_is_empty!22209)))

(declare-fun b!4201357 () Bool)

(declare-fun tp!1283762 () Bool)

(assert (=> b!4201357 (= e!2608064 tp!1283762)))

(assert (=> b!4200978 (= tp!1283670 e!2608064)))

(declare-fun b!4201356 () Bool)

(declare-fun tp!1283764 () Bool)

(declare-fun tp!1283760 () Bool)

(assert (=> b!4201356 (= e!2608064 (and tp!1283764 tp!1283760))))

(assert (= (and b!4200978 ((_ is ElementMatch!12621) (regex!7716 (rule!10812 t!8364)))) b!4201355))

(assert (= (and b!4200978 ((_ is Concat!20568) (regex!7716 (rule!10812 t!8364)))) b!4201356))

(assert (= (and b!4200978 ((_ is Star!12621) (regex!7716 (rule!10812 t!8364)))) b!4201357))

(assert (= (and b!4200978 ((_ is Union!12621) (regex!7716 (rule!10812 t!8364)))) b!4201358))

(declare-fun b!4201369 () Bool)

(declare-fun b_free!122647 () Bool)

(declare-fun b_next!123351 () Bool)

(assert (=> b!4201369 (= b_free!122647 (not b_next!123351))))

(declare-fun tp!1283776 () Bool)

(declare-fun b_and!329749 () Bool)

(assert (=> b!4201369 (= tp!1283776 b_and!329749)))

(declare-fun b_free!122649 () Bool)

(declare-fun b_next!123353 () Bool)

(assert (=> b!4201369 (= b_free!122649 (not b_next!123353))))

(declare-fun t!346851 () Bool)

(declare-fun tb!251751 () Bool)

(assert (=> (and b!4201369 (= (toChars!10279 (transformation!7716 (h!51603 (t!346812 rules!3967)))) (toChars!10279 (transformation!7716 (rule!10812 tBis!41)))) t!346851) tb!251751))

(declare-fun result!306888 () Bool)

(assert (= result!306888 result!306854))

(assert (=> b!4201047 t!346851))

(declare-fun tb!251753 () Bool)

(declare-fun t!346853 () Bool)

(assert (=> (and b!4201369 (= (toChars!10279 (transformation!7716 (h!51603 (t!346812 rules!3967)))) (toChars!10279 (transformation!7716 (rule!10812 t!8364)))) t!346853) tb!251753))

(declare-fun result!306890 () Bool)

(assert (= result!306890 result!306864))

(assert (=> b!4201054 t!346853))

(assert (=> d!1238540 t!346851))

(declare-fun b_and!329751 () Bool)

(declare-fun tp!1283774 () Bool)

(assert (=> b!4201369 (= tp!1283774 (and (=> t!346851 result!306888) (=> t!346853 result!306890) b_and!329751))))

(declare-fun e!2608074 () Bool)

(assert (=> b!4201369 (= e!2608074 (and tp!1283776 tp!1283774))))

(declare-fun tp!1283773 () Bool)

(declare-fun e!2608073 () Bool)

(declare-fun b!4201368 () Bool)

(assert (=> b!4201368 (= e!2608073 (and tp!1283773 (inv!60737 (tag!8580 (h!51603 (t!346812 rules!3967)))) (inv!60741 (transformation!7716 (h!51603 (t!346812 rules!3967)))) e!2608074))))

(declare-fun b!4201367 () Bool)

(declare-fun e!2608076 () Bool)

(declare-fun tp!1283775 () Bool)

(assert (=> b!4201367 (= e!2608076 (and e!2608073 tp!1283775))))

(assert (=> b!4200977 (= tp!1283660 e!2608076)))

(assert (= b!4201368 b!4201369))

(assert (= b!4201367 b!4201368))

(assert (= (and b!4200977 ((_ is Cons!46183) (t!346812 rules!3967))) b!4201367))

(declare-fun m!4789579 () Bool)

(assert (=> b!4201368 m!4789579))

(declare-fun m!4789581 () Bool)

(assert (=> b!4201368 m!4789581))

(declare-fun b!4201373 () Bool)

(declare-fun e!2608077 () Bool)

(declare-fun tp!1283780 () Bool)

(declare-fun tp!1283778 () Bool)

(assert (=> b!4201373 (= e!2608077 (and tp!1283780 tp!1283778))))

(declare-fun b!4201370 () Bool)

(assert (=> b!4201370 (= e!2608077 tp_is_empty!22209)))

(declare-fun b!4201372 () Bool)

(declare-fun tp!1283779 () Bool)

(assert (=> b!4201372 (= e!2608077 tp!1283779)))

(assert (=> b!4200986 (= tp!1283671 e!2608077)))

(declare-fun b!4201371 () Bool)

(declare-fun tp!1283781 () Bool)

(declare-fun tp!1283777 () Bool)

(assert (=> b!4201371 (= e!2608077 (and tp!1283781 tp!1283777))))

(assert (= (and b!4200986 ((_ is ElementMatch!12621) (regex!7716 (h!51603 rules!3967)))) b!4201370))

(assert (= (and b!4200986 ((_ is Concat!20568) (regex!7716 (h!51603 rules!3967)))) b!4201371))

(assert (= (and b!4200986 ((_ is Star!12621) (regex!7716 (h!51603 rules!3967)))) b!4201372))

(assert (= (and b!4200986 ((_ is Union!12621) (regex!7716 (h!51603 rules!3967)))) b!4201373))

(declare-fun b!4201374 () Bool)

(declare-fun e!2608078 () Bool)

(declare-fun tp!1283782 () Bool)

(assert (=> b!4201374 (= e!2608078 (and tp_is_empty!22209 tp!1283782))))

(assert (=> b!4200964 (= tp!1283657 e!2608078)))

(assert (= (and b!4200964 ((_ is Cons!46182) (t!346811 suffix!1557))) b!4201374))

(declare-fun b!4201375 () Bool)

(declare-fun e!2608079 () Bool)

(declare-fun tp!1283783 () Bool)

(assert (=> b!4201375 (= e!2608079 (and tp_is_empty!22209 tp!1283783))))

(assert (=> b!4200963 (= tp!1283673 e!2608079)))

(assert (= (and b!4200963 ((_ is Cons!46182) (t!346811 p!3001))) b!4201375))

(declare-fun b!4201376 () Bool)

(declare-fun e!2608080 () Bool)

(declare-fun tp!1283784 () Bool)

(assert (=> b!4201376 (= e!2608080 (and tp_is_empty!22209 tp!1283784))))

(assert (=> b!4200983 (= tp!1283659 e!2608080)))

(assert (= (and b!4200983 ((_ is Cons!46182) (t!346811 suffixBis!41))) b!4201376))

(declare-fun b_lambda!123645 () Bool)

(assert (= b_lambda!123643 (or (and b!4200966 b_free!122637 (= (toChars!10279 (transformation!7716 (h!51603 rules!3967))) (toChars!10279 (transformation!7716 (rule!10812 tBis!41))))) (and b!4200957 b_free!122633 (= (toChars!10279 (transformation!7716 rBis!178)) (toChars!10279 (transformation!7716 (rule!10812 tBis!41))))) (and b!4200976 b_free!122641) (and b!4201369 b_free!122649 (= (toChars!10279 (transformation!7716 (h!51603 (t!346812 rules!3967)))) (toChars!10279 (transformation!7716 (rule!10812 tBis!41))))) (and b!4200958 b_free!122629 (= (toChars!10279 (transformation!7716 (rule!10812 t!8364))) (toChars!10279 (transformation!7716 (rule!10812 tBis!41))))) b_lambda!123645)))

(declare-fun b_lambda!123647 () Bool)

(assert (= b_lambda!123635 (or (and b!4201369 b_free!122649 (= (toChars!10279 (transformation!7716 (h!51603 (t!346812 rules!3967)))) (toChars!10279 (transformation!7716 (rule!10812 t!8364))))) (and b!4200958 b_free!122629) (and b!4200957 b_free!122633 (= (toChars!10279 (transformation!7716 rBis!178)) (toChars!10279 (transformation!7716 (rule!10812 t!8364))))) (and b!4200976 b_free!122641 (= (toChars!10279 (transformation!7716 (rule!10812 tBis!41))) (toChars!10279 (transformation!7716 (rule!10812 t!8364))))) (and b!4200966 b_free!122637 (= (toChars!10279 (transformation!7716 (h!51603 rules!3967))) (toChars!10279 (transformation!7716 (rule!10812 t!8364))))) b_lambda!123647)))

(declare-fun b_lambda!123649 () Bool)

(assert (= b_lambda!123633 (or (and b!4200966 b_free!122637 (= (toChars!10279 (transformation!7716 (h!51603 rules!3967))) (toChars!10279 (transformation!7716 (rule!10812 tBis!41))))) (and b!4200957 b_free!122633 (= (toChars!10279 (transformation!7716 rBis!178)) (toChars!10279 (transformation!7716 (rule!10812 tBis!41))))) (and b!4200976 b_free!122641) (and b!4201369 b_free!122649 (= (toChars!10279 (transformation!7716 (h!51603 (t!346812 rules!3967)))) (toChars!10279 (transformation!7716 (rule!10812 tBis!41))))) (and b!4200958 b_free!122629 (= (toChars!10279 (transformation!7716 (rule!10812 t!8364))) (toChars!10279 (transformation!7716 (rule!10812 tBis!41))))) b_lambda!123649)))

(check-sat (not b!4201264) (not b!4201235) (not b_lambda!123649) (not b!4201345) (not d!1238540) (not d!1238514) (not tb!251739) (not b!4201347) (not d!1238522) (not b!4201292) (not b!4201053) b_and!329741 (not b!4201055) (not b!4201084) (not b!4201260) b_and!329751 (not b!4201259) (not b!4201316) (not b!4201247) (not d!1238536) (not b!4201246) (not b!4201291) b_and!329681 (not b_next!123353) (not b!4201326) b_and!329685 (not b!4201245) (not b!4201085) (not b!4201240) (not b!4201357) (not b!4201283) (not b!4201238) (not b!4201327) (not b_next!123341) (not b!4201110) (not b!4201368) (not b!4201267) (not b!4201241) (not b!4201318) (not d!1238532) (not b!4201353) (not b!4201278) (not b!4201371) (not b!4201086) b_and!329745 (not b_next!123337) (not b_next!123351) b_and!329689 (not b!4201281) (not b!4201054) (not b_lambda!123647) (not b!4201374) (not b!4201317) (not b!4201290) (not bm!292569) b_and!329693 (not d!1238524) (not b!4201376) (not b!4201295) (not b!4201282) (not tb!251731) (not b!4201262) (not b!4201243) (not b!4201041) (not b!4201367) (not b!4201372) (not b!4201346) (not d!1238476) (not b!4201265) b_and!329747 (not b_next!123331) tp_is_empty!22209 (not b_next!123339) (not d!1238490) b_and!329749 (not b!4201323) (not d!1238478) (not b!4201294) (not b!4201356) (not b_lambda!123645) (not d!1238474) (not b!4201358) (not d!1238528) (not b_next!123343) (not b!4201321) (not b_next!123345) (not b!4201348) b_and!329743 (not b!4201277) (not b!4201349) (not b!4201237) (not b!4201373) (not b!4201315) (not b!4201284) (not d!1238508) (not b!4201375) (not b!4201047) (not d!1238538) (not b_next!123333) (not b!4201354) (not b!4201239) (not d!1238542) (not d!1238544) (not b_next!123335) (not b!4201352) (not b!4201319) (not d!1238484) (not b!4201350) (not b!4201048) (not b!4201242) (not b!4201320) (not d!1238534) (not b!4201333) (not b!4201056))
(check-sat b_and!329741 b_and!329751 b_and!329685 (not b_next!123341) b_and!329693 (not b_next!123343) (not b_next!123333) (not b_next!123335) (not b_next!123353) b_and!329681 b_and!329745 (not b_next!123337) (not b_next!123351) b_and!329689 b_and!329747 (not b_next!123331) (not b_next!123339) b_and!329749 (not b_next!123345) b_and!329743)
(get-model)

(declare-fun d!1238554 () Bool)

(assert (=> d!1238554 (= (head!8916 input!3517) (h!51602 input!3517))))

(assert (=> b!4201245 d!1238554))

(declare-fun d!1238556 () Bool)

(declare-fun lt!1496434 () Int)

(assert (=> d!1238556 (>= lt!1496434 0)))

(declare-fun e!2608088 () Int)

(assert (=> d!1238556 (= lt!1496434 e!2608088)))

(declare-fun c!716273 () Bool)

(assert (=> d!1238556 (= c!716273 ((_ is Nil!46182) (_2!25103 (get!15020 lt!1496423))))))

(assert (=> d!1238556 (= (size!33934 (_2!25103 (get!15020 lt!1496423))) lt!1496434)))

(declare-fun b!4201391 () Bool)

(assert (=> b!4201391 (= e!2608088 0)))

(declare-fun b!4201392 () Bool)

(assert (=> b!4201392 (= e!2608088 (+ 1 (size!33934 (t!346811 (_2!25103 (get!15020 lt!1496423))))))))

(assert (= (and d!1238556 c!716273) b!4201391))

(assert (= (and d!1238556 (not c!716273)) b!4201392))

(declare-fun m!4789589 () Bool)

(assert (=> b!4201392 m!4789589))

(assert (=> b!4201317 d!1238556))

(declare-fun d!1238558 () Bool)

(assert (=> d!1238558 (= (get!15020 lt!1496423) (v!40755 lt!1496423))))

(assert (=> b!4201317 d!1238558))

(declare-fun d!1238560 () Bool)

(declare-fun lt!1496435 () Int)

(assert (=> d!1238560 (>= lt!1496435 0)))

(declare-fun e!2608089 () Int)

(assert (=> d!1238560 (= lt!1496435 e!2608089)))

(declare-fun c!716274 () Bool)

(assert (=> d!1238560 (= c!716274 ((_ is Nil!46182) input!3517))))

(assert (=> d!1238560 (= (size!33934 input!3517) lt!1496435)))

(declare-fun b!4201393 () Bool)

(assert (=> b!4201393 (= e!2608089 0)))

(declare-fun b!4201394 () Bool)

(assert (=> b!4201394 (= e!2608089 (+ 1 (size!33934 (t!346811 input!3517))))))

(assert (= (and d!1238560 c!716274) b!4201393))

(assert (= (and d!1238560 (not c!716274)) b!4201394))

(declare-fun m!4789591 () Bool)

(assert (=> b!4201394 m!4789591))

(assert (=> b!4201317 d!1238560))

(declare-fun b!4201423 () Bool)

(declare-fun e!2608104 () Bool)

(declare-fun e!2608110 () Bool)

(assert (=> b!4201423 (= e!2608104 e!2608110)))

(declare-fun res!1725493 () Bool)

(assert (=> b!4201423 (=> res!1725493 e!2608110)))

(declare-fun call!292577 () Bool)

(assert (=> b!4201423 (= res!1725493 call!292577)))

(declare-fun b!4201424 () Bool)

(declare-fun res!1725497 () Bool)

(declare-fun e!2608107 () Bool)

(assert (=> b!4201424 (=> res!1725497 e!2608107)))

(declare-fun e!2608105 () Bool)

(assert (=> b!4201424 (= res!1725497 e!2608105)))

(declare-fun res!1725491 () Bool)

(assert (=> b!4201424 (=> (not res!1725491) (not e!2608105))))

(declare-fun lt!1496438 () Bool)

(assert (=> b!4201424 (= res!1725491 lt!1496438)))

(declare-fun b!4201425 () Bool)

(declare-fun res!1725496 () Bool)

(assert (=> b!4201425 (=> (not res!1725496) (not e!2608105))))

(assert (=> b!4201425 (= res!1725496 (isEmpty!27344 (tail!6763 (_1!25105 (findLongestMatchInner!1627 (regex!7716 rBis!178) Nil!46182 (size!33934 Nil!46182) input!3517 input!3517 (size!33934 input!3517))))))))

(declare-fun b!4201426 () Bool)

(assert (=> b!4201426 (= e!2608107 e!2608104)))

(declare-fun res!1725494 () Bool)

(assert (=> b!4201426 (=> (not res!1725494) (not e!2608104))))

(assert (=> b!4201426 (= res!1725494 (not lt!1496438))))

(declare-fun b!4201427 () Bool)

(declare-fun res!1725490 () Bool)

(assert (=> b!4201427 (=> res!1725490 e!2608107)))

(assert (=> b!4201427 (= res!1725490 (not ((_ is ElementMatch!12621) (regex!7716 rBis!178))))))

(declare-fun e!2608106 () Bool)

(assert (=> b!4201427 (= e!2608106 e!2608107)))

(declare-fun b!4201428 () Bool)

(declare-fun e!2608108 () Bool)

(assert (=> b!4201428 (= e!2608108 (nullable!4439 (regex!7716 rBis!178)))))

(declare-fun d!1238562 () Bool)

(declare-fun e!2608109 () Bool)

(assert (=> d!1238562 e!2608109))

(declare-fun c!716282 () Bool)

(assert (=> d!1238562 (= c!716282 ((_ is EmptyExpr!12621) (regex!7716 rBis!178)))))

(assert (=> d!1238562 (= lt!1496438 e!2608108)))

(declare-fun c!716283 () Bool)

(assert (=> d!1238562 (= c!716283 (isEmpty!27344 (_1!25105 (findLongestMatchInner!1627 (regex!7716 rBis!178) Nil!46182 (size!33934 Nil!46182) input!3517 input!3517 (size!33934 input!3517)))))))

(assert (=> d!1238562 (validRegex!5726 (regex!7716 rBis!178))))

(assert (=> d!1238562 (= (matchR!6346 (regex!7716 rBis!178) (_1!25105 (findLongestMatchInner!1627 (regex!7716 rBis!178) Nil!46182 (size!33934 Nil!46182) input!3517 input!3517 (size!33934 input!3517)))) lt!1496438)))

(declare-fun b!4201429 () Bool)

(assert (=> b!4201429 (= e!2608109 e!2608106)))

(declare-fun c!716281 () Bool)

(assert (=> b!4201429 (= c!716281 ((_ is EmptyLang!12621) (regex!7716 rBis!178)))))

(declare-fun b!4201430 () Bool)

(assert (=> b!4201430 (= e!2608109 (= lt!1496438 call!292577))))

(declare-fun b!4201431 () Bool)

(declare-fun derivativeStep!3827 (Regex!12621 C!25436) Regex!12621)

(assert (=> b!4201431 (= e!2608108 (matchR!6346 (derivativeStep!3827 (regex!7716 rBis!178) (head!8916 (_1!25105 (findLongestMatchInner!1627 (regex!7716 rBis!178) Nil!46182 (size!33934 Nil!46182) input!3517 input!3517 (size!33934 input!3517))))) (tail!6763 (_1!25105 (findLongestMatchInner!1627 (regex!7716 rBis!178) Nil!46182 (size!33934 Nil!46182) input!3517 input!3517 (size!33934 input!3517))))))))

(declare-fun b!4201432 () Bool)

(assert (=> b!4201432 (= e!2608110 (not (= (head!8916 (_1!25105 (findLongestMatchInner!1627 (regex!7716 rBis!178) Nil!46182 (size!33934 Nil!46182) input!3517 input!3517 (size!33934 input!3517)))) (c!716228 (regex!7716 rBis!178)))))))

(declare-fun b!4201433 () Bool)

(assert (=> b!4201433 (= e!2608106 (not lt!1496438))))

(declare-fun b!4201434 () Bool)

(assert (=> b!4201434 (= e!2608105 (= (head!8916 (_1!25105 (findLongestMatchInner!1627 (regex!7716 rBis!178) Nil!46182 (size!33934 Nil!46182) input!3517 input!3517 (size!33934 input!3517)))) (c!716228 (regex!7716 rBis!178))))))

(declare-fun b!4201435 () Bool)

(declare-fun res!1725492 () Bool)

(assert (=> b!4201435 (=> res!1725492 e!2608110)))

(assert (=> b!4201435 (= res!1725492 (not (isEmpty!27344 (tail!6763 (_1!25105 (findLongestMatchInner!1627 (regex!7716 rBis!178) Nil!46182 (size!33934 Nil!46182) input!3517 input!3517 (size!33934 input!3517)))))))))

(declare-fun b!4201436 () Bool)

(declare-fun res!1725495 () Bool)

(assert (=> b!4201436 (=> (not res!1725495) (not e!2608105))))

(assert (=> b!4201436 (= res!1725495 (not call!292577))))

(declare-fun bm!292572 () Bool)

(assert (=> bm!292572 (= call!292577 (isEmpty!27344 (_1!25105 (findLongestMatchInner!1627 (regex!7716 rBis!178) Nil!46182 (size!33934 Nil!46182) input!3517 input!3517 (size!33934 input!3517)))))))

(assert (= (and d!1238562 c!716283) b!4201428))

(assert (= (and d!1238562 (not c!716283)) b!4201431))

(assert (= (and d!1238562 c!716282) b!4201430))

(assert (= (and d!1238562 (not c!716282)) b!4201429))

(assert (= (and b!4201429 c!716281) b!4201433))

(assert (= (and b!4201429 (not c!716281)) b!4201427))

(assert (= (and b!4201427 (not res!1725490)) b!4201424))

(assert (= (and b!4201424 res!1725491) b!4201436))

(assert (= (and b!4201436 res!1725495) b!4201425))

(assert (= (and b!4201425 res!1725496) b!4201434))

(assert (= (and b!4201424 (not res!1725497)) b!4201426))

(assert (= (and b!4201426 res!1725494) b!4201423))

(assert (= (and b!4201423 (not res!1725493)) b!4201435))

(assert (= (and b!4201435 (not res!1725492)) b!4201432))

(assert (= (or b!4201430 b!4201423 b!4201436) bm!292572))

(declare-fun m!4789593 () Bool)

(assert (=> b!4201432 m!4789593))

(assert (=> bm!292572 m!4789447))

(assert (=> b!4201434 m!4789593))

(declare-fun m!4789595 () Bool)

(assert (=> b!4201435 m!4789595))

(assert (=> b!4201435 m!4789595))

(declare-fun m!4789597 () Bool)

(assert (=> b!4201435 m!4789597))

(assert (=> b!4201428 m!4789577))

(assert (=> b!4201425 m!4789595))

(assert (=> b!4201425 m!4789595))

(assert (=> b!4201425 m!4789597))

(assert (=> d!1238562 m!4789447))

(assert (=> d!1238562 m!4789575))

(assert (=> b!4201431 m!4789593))

(assert (=> b!4201431 m!4789593))

(declare-fun m!4789599 () Bool)

(assert (=> b!4201431 m!4789599))

(assert (=> b!4201431 m!4789595))

(assert (=> b!4201431 m!4789599))

(assert (=> b!4201431 m!4789595))

(declare-fun m!4789601 () Bool)

(assert (=> b!4201431 m!4789601))

(assert (=> b!4201235 d!1238562))

(declare-fun b!4201495 () Bool)

(declare-fun e!2608140 () tuple2!43942)

(declare-fun e!2608143 () tuple2!43942)

(assert (=> b!4201495 (= e!2608140 e!2608143)))

(declare-fun c!716307 () Bool)

(assert (=> b!4201495 (= c!716307 (= (size!33934 Nil!46182) (size!33934 input!3517)))))

(declare-fun b!4201496 () Bool)

(declare-fun e!2608139 () tuple2!43942)

(declare-fun call!292596 () tuple2!43942)

(assert (=> b!4201496 (= e!2608139 call!292596)))

(declare-fun lt!1496526 () List!46306)

(declare-fun call!292601 () Regex!12621)

(declare-fun bm!292590 () Bool)

(declare-fun call!292600 () List!46306)

(assert (=> bm!292590 (= call!292596 (findLongestMatchInner!1627 call!292601 lt!1496526 (+ (size!33934 Nil!46182) 1) call!292600 input!3517 (size!33934 input!3517)))))

(declare-fun b!4201497 () Bool)

(declare-fun c!716306 () Bool)

(declare-fun call!292597 () Bool)

(assert (=> b!4201497 (= c!716306 call!292597)))

(declare-fun lt!1496531 () Unit!65271)

(declare-fun lt!1496509 () Unit!65271)

(assert (=> b!4201497 (= lt!1496531 lt!1496509)))

(declare-fun lt!1496525 () C!25436)

(declare-fun lt!1496513 () List!46306)

(assert (=> b!4201497 (= (++!11790 (++!11790 Nil!46182 (Cons!46182 lt!1496525 Nil!46182)) lt!1496513) input!3517)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1295 (List!46306 C!25436 List!46306 List!46306) Unit!65271)

(assert (=> b!4201497 (= lt!1496509 (lemmaMoveElementToOtherListKeepsConcatEq!1295 Nil!46182 lt!1496525 lt!1496513 input!3517))))

(assert (=> b!4201497 (= lt!1496513 (tail!6763 input!3517))))

(assert (=> b!4201497 (= lt!1496525 (head!8916 input!3517))))

(declare-fun lt!1496514 () Unit!65271)

(declare-fun lt!1496517 () Unit!65271)

(assert (=> b!4201497 (= lt!1496514 lt!1496517)))

(declare-fun getSuffix!2852 (List!46306 List!46306) List!46306)

(assert (=> b!4201497 (isPrefix!4575 (++!11790 Nil!46182 (Cons!46182 (head!8916 (getSuffix!2852 input!3517 Nil!46182)) Nil!46182)) input!3517)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!677 (List!46306 List!46306) Unit!65271)

(assert (=> b!4201497 (= lt!1496517 (lemmaAddHeadSuffixToPrefixStillPrefix!677 Nil!46182 input!3517))))

(declare-fun lt!1496533 () Unit!65271)

(declare-fun lt!1496511 () Unit!65271)

(assert (=> b!4201497 (= lt!1496533 lt!1496511)))

(assert (=> b!4201497 (= lt!1496511 (lemmaAddHeadSuffixToPrefixStillPrefix!677 Nil!46182 input!3517))))

(assert (=> b!4201497 (= lt!1496526 (++!11790 Nil!46182 (Cons!46182 (head!8916 input!3517) Nil!46182)))))

(declare-fun lt!1496518 () Unit!65271)

(declare-fun e!2608141 () Unit!65271)

(assert (=> b!4201497 (= lt!1496518 e!2608141)))

(declare-fun c!716304 () Bool)

(assert (=> b!4201497 (= c!716304 (= (size!33934 Nil!46182) (size!33934 input!3517)))))

(declare-fun lt!1496522 () Unit!65271)

(declare-fun lt!1496520 () Unit!65271)

(assert (=> b!4201497 (= lt!1496522 lt!1496520)))

(assert (=> b!4201497 (<= (size!33934 Nil!46182) (size!33934 input!3517))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!589 (List!46306 List!46306) Unit!65271)

(assert (=> b!4201497 (= lt!1496520 (lemmaIsPrefixThenSmallerEqSize!589 Nil!46182 input!3517))))

(assert (=> b!4201497 (= e!2608143 e!2608139)))

(declare-fun bm!292591 () Bool)

(assert (=> bm!292591 (= call!292600 (tail!6763 input!3517))))

(declare-fun b!4201498 () Bool)

(declare-fun c!716302 () Bool)

(assert (=> b!4201498 (= c!716302 call!292597)))

(declare-fun lt!1496530 () Unit!65271)

(declare-fun lt!1496535 () Unit!65271)

(assert (=> b!4201498 (= lt!1496530 lt!1496535)))

(assert (=> b!4201498 (= input!3517 Nil!46182)))

(declare-fun call!292599 () Unit!65271)

(assert (=> b!4201498 (= lt!1496535 call!292599)))

(declare-fun lt!1496523 () Unit!65271)

(declare-fun lt!1496510 () Unit!65271)

(assert (=> b!4201498 (= lt!1496523 lt!1496510)))

(declare-fun call!292598 () Bool)

(assert (=> b!4201498 call!292598))

(declare-fun call!292595 () Unit!65271)

(assert (=> b!4201498 (= lt!1496510 call!292595)))

(declare-fun e!2608144 () tuple2!43942)

(assert (=> b!4201498 (= e!2608143 e!2608144)))

(declare-fun bm!292592 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1023 (List!46306 List!46306 List!46306) Unit!65271)

(assert (=> bm!292592 (= call!292599 (lemmaIsPrefixSameLengthThenSameList!1023 input!3517 Nil!46182 input!3517))))

(declare-fun b!4201499 () Bool)

(declare-fun e!2608138 () tuple2!43942)

(declare-fun lt!1496512 () tuple2!43942)

(assert (=> b!4201499 (= e!2608138 lt!1496512)))

(declare-fun b!4201500 () Bool)

(declare-fun Unit!65276 () Unit!65271)

(assert (=> b!4201500 (= e!2608141 Unit!65276)))

(declare-fun b!4201501 () Bool)

(assert (=> b!4201501 (= e!2608140 (tuple2!43943 Nil!46182 input!3517))))

(declare-fun bm!292593 () Bool)

(assert (=> bm!292593 (= call!292597 (nullable!4439 (regex!7716 rBis!178)))))

(declare-fun b!4201502 () Bool)

(declare-fun e!2608145 () Bool)

(declare-fun lt!1496515 () tuple2!43942)

(assert (=> b!4201502 (= e!2608145 (>= (size!33934 (_1!25105 lt!1496515)) (size!33934 Nil!46182)))))

(declare-fun bm!292594 () Bool)

(declare-fun call!292602 () C!25436)

(assert (=> bm!292594 (= call!292602 (head!8916 input!3517))))

(declare-fun b!4201503 () Bool)

(declare-fun e!2608142 () Bool)

(assert (=> b!4201503 (= e!2608142 e!2608145)))

(declare-fun res!1725517 () Bool)

(assert (=> b!4201503 (=> res!1725517 e!2608145)))

(assert (=> b!4201503 (= res!1725517 (isEmpty!27344 (_1!25105 lt!1496515)))))

(declare-fun bm!292595 () Bool)

(assert (=> bm!292595 (= call!292598 (isPrefix!4575 input!3517 input!3517))))

(declare-fun b!4201505 () Bool)

(assert (=> b!4201505 (= e!2608144 (tuple2!43943 Nil!46182 input!3517))))

(declare-fun b!4201506 () Bool)

(assert (=> b!4201506 (= e!2608144 (tuple2!43943 Nil!46182 Nil!46182))))

(declare-fun b!4201507 () Bool)

(assert (=> b!4201507 (= e!2608138 (tuple2!43943 Nil!46182 input!3517))))

(declare-fun bm!292596 () Bool)

(assert (=> bm!292596 (= call!292595 (lemmaIsPrefixRefl!2992 input!3517 input!3517))))

(declare-fun b!4201508 () Bool)

(declare-fun Unit!65277 () Unit!65271)

(assert (=> b!4201508 (= e!2608141 Unit!65277)))

(declare-fun lt!1496532 () Unit!65271)

(assert (=> b!4201508 (= lt!1496532 call!292595)))

(assert (=> b!4201508 call!292598))

(declare-fun lt!1496529 () Unit!65271)

(assert (=> b!4201508 (= lt!1496529 lt!1496532)))

(declare-fun lt!1496534 () Unit!65271)

(assert (=> b!4201508 (= lt!1496534 call!292599)))

(assert (=> b!4201508 (= input!3517 Nil!46182)))

(declare-fun lt!1496521 () Unit!65271)

(assert (=> b!4201508 (= lt!1496521 lt!1496534)))

(assert (=> b!4201508 false))

(declare-fun bm!292597 () Bool)

(assert (=> bm!292597 (= call!292601 (derivativeStep!3827 (regex!7716 rBis!178) call!292602))))

(declare-fun b!4201504 () Bool)

(assert (=> b!4201504 (= e!2608139 e!2608138)))

(assert (=> b!4201504 (= lt!1496512 call!292596)))

(declare-fun c!716305 () Bool)

(assert (=> b!4201504 (= c!716305 (isEmpty!27344 (_1!25105 lt!1496512)))))

(declare-fun d!1238564 () Bool)

(assert (=> d!1238564 e!2608142))

(declare-fun res!1725516 () Bool)

(assert (=> d!1238564 (=> (not res!1725516) (not e!2608142))))

(assert (=> d!1238564 (= res!1725516 (= (++!11790 (_1!25105 lt!1496515) (_2!25105 lt!1496515)) input!3517))))

(assert (=> d!1238564 (= lt!1496515 e!2608140)))

(declare-fun c!716303 () Bool)

(declare-fun lostCause!1051 (Regex!12621) Bool)

(assert (=> d!1238564 (= c!716303 (lostCause!1051 (regex!7716 rBis!178)))))

(declare-fun lt!1496519 () Unit!65271)

(declare-fun Unit!65278 () Unit!65271)

(assert (=> d!1238564 (= lt!1496519 Unit!65278)))

(assert (=> d!1238564 (= (getSuffix!2852 input!3517 Nil!46182) input!3517)))

(declare-fun lt!1496524 () Unit!65271)

(declare-fun lt!1496527 () Unit!65271)

(assert (=> d!1238564 (= lt!1496524 lt!1496527)))

(declare-fun lt!1496516 () List!46306)

(assert (=> d!1238564 (= input!3517 lt!1496516)))

(declare-fun lemmaSamePrefixThenSameSuffix!2268 (List!46306 List!46306 List!46306 List!46306 List!46306) Unit!65271)

(assert (=> d!1238564 (= lt!1496527 (lemmaSamePrefixThenSameSuffix!2268 Nil!46182 input!3517 Nil!46182 lt!1496516 input!3517))))

(assert (=> d!1238564 (= lt!1496516 (getSuffix!2852 input!3517 Nil!46182))))

(declare-fun lt!1496528 () Unit!65271)

(declare-fun lt!1496536 () Unit!65271)

(assert (=> d!1238564 (= lt!1496528 lt!1496536)))

(assert (=> d!1238564 (isPrefix!4575 Nil!46182 (++!11790 Nil!46182 input!3517))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3056 (List!46306 List!46306) Unit!65271)

(assert (=> d!1238564 (= lt!1496536 (lemmaConcatTwoListThenFirstIsPrefix!3056 Nil!46182 input!3517))))

(assert (=> d!1238564 (validRegex!5726 (regex!7716 rBis!178))))

(assert (=> d!1238564 (= (findLongestMatchInner!1627 (regex!7716 rBis!178) Nil!46182 (size!33934 Nil!46182) input!3517 input!3517 (size!33934 input!3517)) lt!1496515)))

(assert (= (and d!1238564 c!716303) b!4201501))

(assert (= (and d!1238564 (not c!716303)) b!4201495))

(assert (= (and b!4201495 c!716307) b!4201498))

(assert (= (and b!4201495 (not c!716307)) b!4201497))

(assert (= (and b!4201498 c!716302) b!4201506))

(assert (= (and b!4201498 (not c!716302)) b!4201505))

(assert (= (and b!4201497 c!716304) b!4201508))

(assert (= (and b!4201497 (not c!716304)) b!4201500))

(assert (= (and b!4201497 c!716306) b!4201504))

(assert (= (and b!4201497 (not c!716306)) b!4201496))

(assert (= (and b!4201504 c!716305) b!4201507))

(assert (= (and b!4201504 (not c!716305)) b!4201499))

(assert (= (or b!4201504 b!4201496) bm!292594))

(assert (= (or b!4201504 b!4201496) bm!292591))

(assert (= (or b!4201504 b!4201496) bm!292597))

(assert (= (or b!4201504 b!4201496) bm!292590))

(assert (= (or b!4201498 b!4201508) bm!292596))

(assert (= (or b!4201498 b!4201497) bm!292593))

(assert (= (or b!4201498 b!4201508) bm!292595))

(assert (= (or b!4201498 b!4201508) bm!292592))

(assert (= (and d!1238564 res!1725516) b!4201503))

(assert (= (and b!4201503 (not res!1725517)) b!4201502))

(assert (=> bm!292593 m!4789577))

(declare-fun m!4789685 () Bool)

(assert (=> b!4201502 m!4789685))

(assert (=> b!4201502 m!4789445))

(declare-fun m!4789687 () Bool)

(assert (=> d!1238564 m!4789687))

(assert (=> d!1238564 m!4789575))

(declare-fun m!4789689 () Bool)

(assert (=> d!1238564 m!4789689))

(declare-fun m!4789691 () Bool)

(assert (=> d!1238564 m!4789691))

(declare-fun m!4789693 () Bool)

(assert (=> d!1238564 m!4789693))

(declare-fun m!4789695 () Bool)

(assert (=> d!1238564 m!4789695))

(assert (=> d!1238564 m!4789687))

(declare-fun m!4789697 () Bool)

(assert (=> d!1238564 m!4789697))

(declare-fun m!4789699 () Bool)

(assert (=> d!1238564 m!4789699))

(declare-fun m!4789701 () Bool)

(assert (=> bm!292597 m!4789701))

(assert (=> bm!292596 m!4789143))

(assert (=> bm!292595 m!4789141))

(declare-fun m!4789703 () Bool)

(assert (=> b!4201503 m!4789703))

(declare-fun m!4789705 () Bool)

(assert (=> bm!292592 m!4789705))

(declare-fun m!4789707 () Bool)

(assert (=> b!4201497 m!4789707))

(assert (=> b!4201497 m!4789689))

(declare-fun m!4789709 () Bool)

(assert (=> b!4201497 m!4789709))

(declare-fun m!4789711 () Bool)

(assert (=> b!4201497 m!4789711))

(declare-fun m!4789713 () Bool)

(assert (=> b!4201497 m!4789713))

(assert (=> b!4201497 m!4789445))

(assert (=> b!4201497 m!4789689))

(assert (=> b!4201497 m!4789295))

(declare-fun m!4789715 () Bool)

(assert (=> b!4201497 m!4789715))

(declare-fun m!4789717 () Bool)

(assert (=> b!4201497 m!4789717))

(assert (=> b!4201497 m!4789307))

(assert (=> b!4201497 m!4789707))

(declare-fun m!4789719 () Bool)

(assert (=> b!4201497 m!4789719))

(assert (=> b!4201497 m!4789711))

(assert (=> b!4201497 m!4789301))

(declare-fun m!4789721 () Bool)

(assert (=> b!4201497 m!4789721))

(declare-fun m!4789723 () Bool)

(assert (=> b!4201497 m!4789723))

(assert (=> bm!292594 m!4789307))

(assert (=> bm!292590 m!4789295))

(declare-fun m!4789725 () Bool)

(assert (=> bm!292590 m!4789725))

(declare-fun m!4789727 () Bool)

(assert (=> b!4201504 m!4789727))

(assert (=> bm!292591 m!4789301))

(assert (=> b!4201235 d!1238564))

(declare-fun d!1238592 () Bool)

(declare-fun lt!1496537 () Int)

(assert (=> d!1238592 (>= lt!1496537 0)))

(declare-fun e!2608146 () Int)

(assert (=> d!1238592 (= lt!1496537 e!2608146)))

(declare-fun c!716308 () Bool)

(assert (=> d!1238592 (= c!716308 ((_ is Nil!46182) Nil!46182))))

(assert (=> d!1238592 (= (size!33934 Nil!46182) lt!1496537)))

(declare-fun b!4201509 () Bool)

(assert (=> b!4201509 (= e!2608146 0)))

(declare-fun b!4201510 () Bool)

(assert (=> b!4201510 (= e!2608146 (+ 1 (size!33934 (t!346811 Nil!46182))))))

(assert (= (and d!1238592 c!716308) b!4201509))

(assert (= (and d!1238592 (not c!716308)) b!4201510))

(declare-fun m!4789729 () Bool)

(assert (=> b!4201510 m!4789729))

(assert (=> b!4201235 d!1238592))

(assert (=> b!4201235 d!1238560))

(declare-fun d!1238594 () Bool)

(declare-fun lt!1496538 () Bool)

(assert (=> d!1238594 (= lt!1496538 (select (content!7213 rules!3967) (rule!10812 (_1!25103 (get!15020 lt!1496423)))))))

(declare-fun e!2608147 () Bool)

(assert (=> d!1238594 (= lt!1496538 e!2608147)))

(declare-fun res!1725518 () Bool)

(assert (=> d!1238594 (=> (not res!1725518) (not e!2608147))))

(assert (=> d!1238594 (= res!1725518 ((_ is Cons!46183) rules!3967))))

(assert (=> d!1238594 (= (contains!9529 rules!3967 (rule!10812 (_1!25103 (get!15020 lt!1496423)))) lt!1496538)))

(declare-fun b!4201511 () Bool)

(declare-fun e!2608148 () Bool)

(assert (=> b!4201511 (= e!2608147 e!2608148)))

(declare-fun res!1725519 () Bool)

(assert (=> b!4201511 (=> res!1725519 e!2608148)))

(assert (=> b!4201511 (= res!1725519 (= (h!51603 rules!3967) (rule!10812 (_1!25103 (get!15020 lt!1496423)))))))

(declare-fun b!4201512 () Bool)

(assert (=> b!4201512 (= e!2608148 (contains!9529 (t!346812 rules!3967) (rule!10812 (_1!25103 (get!15020 lt!1496423)))))))

(assert (= (and d!1238594 res!1725518) b!4201511))

(assert (= (and b!4201511 (not res!1725519)) b!4201512))

(assert (=> d!1238594 m!4789513))

(declare-fun m!4789731 () Bool)

(assert (=> d!1238594 m!4789731))

(declare-fun m!4789733 () Bool)

(assert (=> b!4201512 m!4789733))

(assert (=> b!4201315 d!1238594))

(assert (=> b!4201315 d!1238558))

(declare-fun d!1238596 () Bool)

(declare-fun isBalanced!3740 (Conc!13927) Bool)

(assert (=> d!1238596 (= (inv!60745 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 tBis!41))) (value!240435 tBis!41))) (isBalanced!3740 (c!716229 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 tBis!41))) (value!240435 tBis!41)))))))

(declare-fun bs!596957 () Bool)

(assert (= bs!596957 d!1238596))

(declare-fun m!4789735 () Bool)

(assert (=> bs!596957 m!4789735))

(assert (=> tb!251731 d!1238596))

(declare-fun d!1238598 () Bool)

(declare-fun res!1725540 () Bool)

(declare-fun e!2608167 () Bool)

(assert (=> d!1238598 (=> res!1725540 e!2608167)))

(assert (=> d!1238598 (= res!1725540 ((_ is Nil!46183) rules!3967))))

(assert (=> d!1238598 (= (noDuplicateTag!3177 thiss!26544 rules!3967 Nil!46185) e!2608167)))

(declare-fun b!4201545 () Bool)

(declare-fun e!2608168 () Bool)

(assert (=> b!4201545 (= e!2608167 e!2608168)))

(declare-fun res!1725541 () Bool)

(assert (=> b!4201545 (=> (not res!1725541) (not e!2608168))))

(declare-fun contains!9531 (List!46309 String!53600) Bool)

(assert (=> b!4201545 (= res!1725541 (not (contains!9531 Nil!46185 (tag!8580 (h!51603 rules!3967)))))))

(declare-fun b!4201546 () Bool)

(assert (=> b!4201546 (= e!2608168 (noDuplicateTag!3177 thiss!26544 (t!346812 rules!3967) (Cons!46185 (tag!8580 (h!51603 rules!3967)) Nil!46185)))))

(assert (= (and d!1238598 (not res!1725540)) b!4201545))

(assert (= (and b!4201545 res!1725541) b!4201546))

(declare-fun m!4789737 () Bool)

(assert (=> b!4201545 m!4789737))

(declare-fun m!4789739 () Bool)

(assert (=> b!4201546 m!4789739))

(assert (=> b!4201326 d!1238598))

(assert (=> b!4201086 d!1238560))

(declare-fun d!1238600 () Bool)

(declare-fun lt!1496541 () Int)

(assert (=> d!1238600 (>= lt!1496541 0)))

(declare-fun e!2608169 () Int)

(assert (=> d!1238600 (= lt!1496541 e!2608169)))

(declare-fun c!716315 () Bool)

(assert (=> d!1238600 (= c!716315 ((_ is Nil!46182) pBis!121))))

(assert (=> d!1238600 (= (size!33934 pBis!121) lt!1496541)))

(declare-fun b!4201547 () Bool)

(assert (=> b!4201547 (= e!2608169 0)))

(declare-fun b!4201548 () Bool)

(assert (=> b!4201548 (= e!2608169 (+ 1 (size!33934 (t!346811 pBis!121))))))

(assert (= (and d!1238600 c!716315) b!4201547))

(assert (= (and d!1238600 (not c!716315)) b!4201548))

(declare-fun m!4789741 () Bool)

(assert (=> b!4201548 m!4789741))

(assert (=> b!4201086 d!1238600))

(declare-fun d!1238602 () Bool)

(assert (=> d!1238602 true))

(declare-fun order!24491 () Int)

(declare-fun order!24493 () Int)

(declare-fun lambda!129625 () Int)

(declare-fun dynLambda!19916 (Int Int) Int)

(declare-fun dynLambda!19917 (Int Int) Int)

(assert (=> d!1238602 (< (dynLambda!19916 order!24491 (toChars!10279 (transformation!7716 (rule!10812 t!8364)))) (dynLambda!19917 order!24493 lambda!129625))))

(assert (=> d!1238602 true))

(declare-fun order!24495 () Int)

(declare-fun dynLambda!19918 (Int Int) Int)

(assert (=> d!1238602 (< (dynLambda!19918 order!24495 (toValue!10420 (transformation!7716 (rule!10812 t!8364)))) (dynLambda!19917 order!24493 lambda!129625))))

(declare-fun Forall!1572 (Int) Bool)

(assert (=> d!1238602 (= (semiInverseModEq!3348 (toChars!10279 (transformation!7716 (rule!10812 t!8364))) (toValue!10420 (transformation!7716 (rule!10812 t!8364)))) (Forall!1572 lambda!129625))))

(declare-fun bs!597003 () Bool)

(assert (= bs!597003 d!1238602))

(declare-fun m!4790097 () Bool)

(assert (=> bs!597003 m!4790097))

(assert (=> d!1238528 d!1238602))

(declare-fun d!1238762 () Bool)

(assert (=> d!1238762 (= (list!16683 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 t!8364))) (value!240435 t!8364))) (list!16685 (c!716229 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 t!8364))) (value!240435 t!8364)))))))

(declare-fun bs!597004 () Bool)

(assert (= bs!597004 d!1238762))

(declare-fun m!4790099 () Bool)

(assert (=> bs!597004 m!4790099))

(assert (=> b!4201054 d!1238762))

(declare-fun d!1238764 () Bool)

(assert (=> d!1238764 true))

(declare-fun order!24497 () Int)

(declare-fun lambda!129628 () Int)

(declare-fun dynLambda!19919 (Int Int) Int)

(assert (=> d!1238764 (< (dynLambda!19918 order!24495 (toValue!10420 (transformation!7716 rBis!178))) (dynLambda!19919 order!24497 lambda!129628))))

(declare-fun Forall2!1171 (Int) Bool)

(assert (=> d!1238764 (= (equivClasses!3247 (toChars!10279 (transformation!7716 rBis!178)) (toValue!10420 (transformation!7716 rBis!178))) (Forall2!1171 lambda!129628))))

(declare-fun bs!597005 () Bool)

(assert (= bs!597005 d!1238764))

(declare-fun m!4790101 () Bool)

(assert (=> bs!597005 m!4790101))

(assert (=> b!4201284 d!1238764))

(declare-fun d!1238766 () Bool)

(assert (=> d!1238766 (= (head!8916 pBis!121) (h!51602 pBis!121))))

(assert (=> b!4201084 d!1238766))

(assert (=> b!4201084 d!1238554))

(declare-fun d!1238768 () Bool)

(declare-fun c!716385 () Bool)

(assert (=> d!1238768 (= c!716385 ((_ is Node!13927) (c!716229 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 tBis!41))) (value!240435 tBis!41)))))))

(declare-fun e!2608370 () Bool)

(assert (=> d!1238768 (= (inv!60744 (c!716229 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 tBis!41))) (value!240435 tBis!41)))) e!2608370)))

(declare-fun b!4201913 () Bool)

(declare-fun inv!60746 (Conc!13927) Bool)

(assert (=> b!4201913 (= e!2608370 (inv!60746 (c!716229 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 tBis!41))) (value!240435 tBis!41)))))))

(declare-fun b!4201914 () Bool)

(declare-fun e!2608371 () Bool)

(assert (=> b!4201914 (= e!2608370 e!2608371)))

(declare-fun res!1725642 () Bool)

(assert (=> b!4201914 (= res!1725642 (not ((_ is Leaf!21529) (c!716229 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 tBis!41))) (value!240435 tBis!41))))))))

(assert (=> b!4201914 (=> res!1725642 e!2608371)))

(declare-fun b!4201915 () Bool)

(declare-fun inv!60747 (Conc!13927) Bool)

(assert (=> b!4201915 (= e!2608371 (inv!60747 (c!716229 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 tBis!41))) (value!240435 tBis!41)))))))

(assert (= (and d!1238768 c!716385) b!4201913))

(assert (= (and d!1238768 (not c!716385)) b!4201914))

(assert (= (and b!4201914 (not res!1725642)) b!4201915))

(declare-fun m!4790103 () Bool)

(assert (=> b!4201913 m!4790103))

(declare-fun m!4790105 () Bool)

(assert (=> b!4201915 m!4790105))

(assert (=> b!4201053 d!1238768))

(declare-fun d!1238770 () Bool)

(declare-fun lt!1496685 () Int)

(assert (=> d!1238770 (>= lt!1496685 0)))

(declare-fun e!2608372 () Int)

(assert (=> d!1238770 (= lt!1496685 e!2608372)))

(declare-fun c!716386 () Bool)

(assert (=> d!1238770 (= c!716386 ((_ is Nil!46182) (originalCharacters!8098 tBis!41)))))

(assert (=> d!1238770 (= (size!33934 (originalCharacters!8098 tBis!41)) lt!1496685)))

(declare-fun b!4201916 () Bool)

(assert (=> b!4201916 (= e!2608372 0)))

(declare-fun b!4201917 () Bool)

(assert (=> b!4201917 (= e!2608372 (+ 1 (size!33934 (t!346811 (originalCharacters!8098 tBis!41)))))))

(assert (= (and d!1238770 c!716386) b!4201916))

(assert (= (and d!1238770 (not c!716386)) b!4201917))

(declare-fun m!4790107 () Bool)

(assert (=> b!4201917 m!4790107))

(assert (=> b!4201048 d!1238770))

(declare-fun d!1238772 () Bool)

(assert (=> d!1238772 (= (isEmpty!27344 (originalCharacters!8098 t!8364)) ((_ is Nil!46182) (originalCharacters!8098 t!8364)))))

(assert (=> d!1238478 d!1238772))

(declare-fun d!1238774 () Bool)

(declare-fun charsToBigInt!0 (List!46305 Int) Int)

(assert (=> d!1238774 (= (inv!15 (value!240435 t!8364)) (= (charsToBigInt!0 (text!56071 (value!240435 t!8364)) 0) (value!240430 (value!240435 t!8364))))))

(declare-fun bs!597006 () Bool)

(assert (= bs!597006 d!1238774))

(declare-fun m!4790109 () Bool)

(assert (=> bs!597006 m!4790109))

(assert (=> b!4201267 d!1238774))

(declare-fun d!1238776 () Bool)

(declare-fun charsToBigInt!1 (List!46305) Int)

(assert (=> d!1238776 (= (inv!17 (value!240435 tBis!41)) (= (charsToBigInt!1 (text!56070 (value!240435 tBis!41))) (value!240427 (value!240435 tBis!41))))))

(declare-fun bs!597007 () Bool)

(assert (= bs!597007 d!1238776))

(declare-fun m!4790111 () Bool)

(assert (=> bs!597007 m!4790111))

(assert (=> b!4201260 d!1238776))

(declare-fun d!1238778 () Bool)

(declare-fun nullableFct!1220 (Regex!12621) Bool)

(assert (=> d!1238778 (= (nullable!4439 (regex!7716 rBis!178)) (nullableFct!1220 (regex!7716 rBis!178)))))

(declare-fun bs!597008 () Bool)

(assert (= bs!597008 d!1238778))

(declare-fun m!4790113 () Bool)

(assert (=> bs!597008 m!4790113))

(assert (=> b!4201327 d!1238778))

(declare-fun b!4201920 () Bool)

(declare-fun res!1725644 () Bool)

(declare-fun e!2608373 () Bool)

(assert (=> b!4201920 (=> (not res!1725644) (not e!2608373))))

(declare-fun lt!1496686 () List!46306)

(assert (=> b!4201920 (= res!1725644 (= (size!33934 lt!1496686) (+ (size!33934 (t!346811 p!3001)) (size!33934 suffix!1557))))))

(declare-fun d!1238780 () Bool)

(assert (=> d!1238780 e!2608373))

(declare-fun res!1725643 () Bool)

(assert (=> d!1238780 (=> (not res!1725643) (not e!2608373))))

(assert (=> d!1238780 (= res!1725643 (= (content!7212 lt!1496686) ((_ map or) (content!7212 (t!346811 p!3001)) (content!7212 suffix!1557))))))

(declare-fun e!2608374 () List!46306)

(assert (=> d!1238780 (= lt!1496686 e!2608374)))

(declare-fun c!716387 () Bool)

(assert (=> d!1238780 (= c!716387 ((_ is Nil!46182) (t!346811 p!3001)))))

(assert (=> d!1238780 (= (++!11790 (t!346811 p!3001) suffix!1557) lt!1496686)))

(declare-fun b!4201919 () Bool)

(assert (=> b!4201919 (= e!2608374 (Cons!46182 (h!51602 (t!346811 p!3001)) (++!11790 (t!346811 (t!346811 p!3001)) suffix!1557)))))

(declare-fun b!4201921 () Bool)

(assert (=> b!4201921 (= e!2608373 (or (not (= suffix!1557 Nil!46182)) (= lt!1496686 (t!346811 p!3001))))))

(declare-fun b!4201918 () Bool)

(assert (=> b!4201918 (= e!2608374 suffix!1557)))

(assert (= (and d!1238780 c!716387) b!4201918))

(assert (= (and d!1238780 (not c!716387)) b!4201919))

(assert (= (and d!1238780 res!1725643) b!4201920))

(assert (= (and b!4201920 res!1725644) b!4201921))

(declare-fun m!4790115 () Bool)

(assert (=> b!4201920 m!4790115))

(declare-fun m!4790117 () Bool)

(assert (=> b!4201920 m!4790117))

(assert (=> b!4201920 m!4789493))

(declare-fun m!4790119 () Bool)

(assert (=> d!1238780 m!4790119))

(declare-fun m!4790121 () Bool)

(assert (=> d!1238780 m!4790121))

(assert (=> d!1238780 m!4789499))

(declare-fun m!4790123 () Bool)

(assert (=> b!4201919 m!4790123))

(assert (=> b!4201277 d!1238780))

(declare-fun bs!597009 () Bool)

(declare-fun d!1238782 () Bool)

(assert (= bs!597009 (and d!1238782 d!1238764)))

(declare-fun lambda!129629 () Int)

(assert (=> bs!597009 (= (= (toValue!10420 (transformation!7716 (h!51603 rules!3967))) (toValue!10420 (transformation!7716 rBis!178))) (= lambda!129629 lambda!129628))))

(assert (=> d!1238782 true))

(assert (=> d!1238782 (< (dynLambda!19918 order!24495 (toValue!10420 (transformation!7716 (h!51603 rules!3967)))) (dynLambda!19919 order!24497 lambda!129629))))

(assert (=> d!1238782 (= (equivClasses!3247 (toChars!10279 (transformation!7716 (h!51603 rules!3967))) (toValue!10420 (transformation!7716 (h!51603 rules!3967)))) (Forall2!1171 lambda!129629))))

(declare-fun bs!597010 () Bool)

(assert (= bs!597010 d!1238782))

(declare-fun m!4790125 () Bool)

(assert (=> bs!597010 m!4790125))

(assert (=> b!4201292 d!1238782))

(declare-fun d!1238784 () Bool)

(assert (=> d!1238784 (= (get!15020 lt!1496392) (v!40755 lt!1496392))))

(assert (=> b!4201243 d!1238784))

(declare-fun d!1238786 () Bool)

(declare-fun lt!1496687 () Int)

(assert (=> d!1238786 (>= lt!1496687 0)))

(declare-fun e!2608375 () Int)

(assert (=> d!1238786 (= lt!1496687 e!2608375)))

(declare-fun c!716388 () Bool)

(assert (=> d!1238786 (= c!716388 ((_ is Nil!46182) (originalCharacters!8098 (_1!25103 (get!15020 lt!1496392)))))))

(assert (=> d!1238786 (= (size!33934 (originalCharacters!8098 (_1!25103 (get!15020 lt!1496392)))) lt!1496687)))

(declare-fun b!4201922 () Bool)

(assert (=> b!4201922 (= e!2608375 0)))

(declare-fun b!4201923 () Bool)

(assert (=> b!4201923 (= e!2608375 (+ 1 (size!33934 (t!346811 (originalCharacters!8098 (_1!25103 (get!15020 lt!1496392)))))))))

(assert (= (and d!1238786 c!716388) b!4201922))

(assert (= (and d!1238786 (not c!716388)) b!4201923))

(declare-fun m!4790127 () Bool)

(assert (=> b!4201923 m!4790127))

(assert (=> b!4201243 d!1238786))

(declare-fun d!1238788 () Bool)

(assert (=> d!1238788 (= (inv!17 (value!240435 t!8364)) (= (charsToBigInt!1 (text!56070 (value!240435 t!8364))) (value!240427 (value!240435 t!8364))))))

(declare-fun bs!597011 () Bool)

(assert (= bs!597011 d!1238788))

(declare-fun m!4790129 () Bool)

(assert (=> bs!597011 m!4790129))

(assert (=> b!4201265 d!1238788))

(declare-fun d!1238790 () Bool)

(assert (=> d!1238790 (= (isDefined!7368 lt!1496423) (not (isEmpty!27345 lt!1496423)))))

(declare-fun bs!597012 () Bool)

(assert (= bs!597012 d!1238790))

(assert (=> bs!597012 m!4789541))

(assert (=> b!4201323 d!1238790))

(assert (=> b!4201241 d!1238784))

(declare-fun d!1238792 () Bool)

(declare-fun dynLambda!19920 (Int BalanceConc!27448) TokenValue!7946)

(assert (=> d!1238792 (= (apply!10667 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496392)))) (seqFromList!5727 (originalCharacters!8098 (_1!25103 (get!15020 lt!1496392))))) (dynLambda!19920 (toValue!10420 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496392))))) (seqFromList!5727 (originalCharacters!8098 (_1!25103 (get!15020 lt!1496392))))))))

(declare-fun b_lambda!123671 () Bool)

(assert (=> (not b_lambda!123671) (not d!1238792)))

(declare-fun tb!251831 () Bool)

(declare-fun t!346933 () Bool)

(assert (=> (and b!4200957 (= (toValue!10420 (transformation!7716 rBis!178)) (toValue!10420 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496392)))))) t!346933) tb!251831))

(declare-fun result!306972 () Bool)

(assert (=> tb!251831 (= result!306972 (inv!21 (dynLambda!19920 (toValue!10420 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496392))))) (seqFromList!5727 (originalCharacters!8098 (_1!25103 (get!15020 lt!1496392)))))))))

(declare-fun m!4790131 () Bool)

(assert (=> tb!251831 m!4790131))

(assert (=> d!1238792 t!346933))

(declare-fun b_and!329827 () Bool)

(assert (= b_and!329685 (and (=> t!346933 result!306972) b_and!329827)))

(declare-fun t!346935 () Bool)

(declare-fun tb!251833 () Bool)

(assert (=> (and b!4200966 (= (toValue!10420 (transformation!7716 (h!51603 rules!3967))) (toValue!10420 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496392)))))) t!346935) tb!251833))

(declare-fun result!306976 () Bool)

(assert (= result!306976 result!306972))

(assert (=> d!1238792 t!346935))

(declare-fun b_and!329829 () Bool)

(assert (= b_and!329689 (and (=> t!346935 result!306976) b_and!329829)))

(declare-fun tb!251835 () Bool)

(declare-fun t!346937 () Bool)

(assert (=> (and b!4201369 (= (toValue!10420 (transformation!7716 (h!51603 (t!346812 rules!3967)))) (toValue!10420 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496392)))))) t!346937) tb!251835))

(declare-fun result!306978 () Bool)

(assert (= result!306978 result!306972))

(assert (=> d!1238792 t!346937))

(declare-fun b_and!329831 () Bool)

(assert (= b_and!329749 (and (=> t!346937 result!306978) b_and!329831)))

(declare-fun tb!251837 () Bool)

(declare-fun t!346939 () Bool)

(assert (=> (and b!4200958 (= (toValue!10420 (transformation!7716 (rule!10812 t!8364))) (toValue!10420 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496392)))))) t!346939) tb!251837))

(declare-fun result!306980 () Bool)

(assert (= result!306980 result!306972))

(assert (=> d!1238792 t!346939))

(declare-fun b_and!329833 () Bool)

(assert (= b_and!329681 (and (=> t!346939 result!306980) b_and!329833)))

(declare-fun tb!251839 () Bool)

(declare-fun t!346941 () Bool)

(assert (=> (and b!4200976 (= (toValue!10420 (transformation!7716 (rule!10812 tBis!41))) (toValue!10420 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496392)))))) t!346941) tb!251839))

(declare-fun result!306982 () Bool)

(assert (= result!306982 result!306972))

(assert (=> d!1238792 t!346941))

(declare-fun b_and!329835 () Bool)

(assert (= b_and!329693 (and (=> t!346941 result!306982) b_and!329835)))

(assert (=> d!1238792 m!4789465))

(declare-fun m!4790133 () Bool)

(assert (=> d!1238792 m!4790133))

(assert (=> b!4201241 d!1238792))

(declare-fun d!1238794 () Bool)

(declare-fun fromListB!2628 (List!46306) BalanceConc!27448)

(assert (=> d!1238794 (= (seqFromList!5727 (originalCharacters!8098 (_1!25103 (get!15020 lt!1496392)))) (fromListB!2628 (originalCharacters!8098 (_1!25103 (get!15020 lt!1496392)))))))

(declare-fun bs!597013 () Bool)

(assert (= bs!597013 d!1238794))

(declare-fun m!4790135 () Bool)

(assert (=> bs!597013 m!4790135))

(assert (=> b!4201241 d!1238794))

(declare-fun d!1238796 () Bool)

(declare-fun c!716389 () Bool)

(assert (=> d!1238796 (= c!716389 ((_ is Node!13927) (c!716229 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 t!8364))) (value!240435 t!8364)))))))

(declare-fun e!2608379 () Bool)

(assert (=> d!1238796 (= (inv!60744 (c!716229 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 t!8364))) (value!240435 t!8364)))) e!2608379)))

(declare-fun b!4201926 () Bool)

(assert (=> b!4201926 (= e!2608379 (inv!60746 (c!716229 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 t!8364))) (value!240435 t!8364)))))))

(declare-fun b!4201927 () Bool)

(declare-fun e!2608380 () Bool)

(assert (=> b!4201927 (= e!2608379 e!2608380)))

(declare-fun res!1725645 () Bool)

(assert (=> b!4201927 (= res!1725645 (not ((_ is Leaf!21529) (c!716229 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 t!8364))) (value!240435 t!8364))))))))

(assert (=> b!4201927 (=> res!1725645 e!2608380)))

(declare-fun b!4201928 () Bool)

(assert (=> b!4201928 (= e!2608380 (inv!60747 (c!716229 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 t!8364))) (value!240435 t!8364)))))))

(assert (= (and d!1238796 c!716389) b!4201926))

(assert (= (and d!1238796 (not c!716389)) b!4201927))

(assert (= (and b!4201927 (not res!1725645)) b!4201928))

(declare-fun m!4790137 () Bool)

(assert (=> b!4201926 m!4790137))

(declare-fun m!4790139 () Bool)

(assert (=> b!4201928 m!4790139))

(assert (=> b!4201056 d!1238796))

(declare-fun bs!597014 () Bool)

(declare-fun d!1238798 () Bool)

(assert (= bs!597014 (and d!1238798 d!1238764)))

(declare-fun lambda!129630 () Int)

(assert (=> bs!597014 (= (= (toValue!10420 (transformation!7716 (rule!10812 tBis!41))) (toValue!10420 (transformation!7716 rBis!178))) (= lambda!129630 lambda!129628))))

(declare-fun bs!597015 () Bool)

(assert (= bs!597015 (and d!1238798 d!1238782)))

(assert (=> bs!597015 (= (= (toValue!10420 (transformation!7716 (rule!10812 tBis!41))) (toValue!10420 (transformation!7716 (h!51603 rules!3967)))) (= lambda!129630 lambda!129629))))

(assert (=> d!1238798 true))

(assert (=> d!1238798 (< (dynLambda!19918 order!24495 (toValue!10420 (transformation!7716 (rule!10812 tBis!41)))) (dynLambda!19919 order!24497 lambda!129630))))

(assert (=> d!1238798 (= (equivClasses!3247 (toChars!10279 (transformation!7716 (rule!10812 tBis!41))) (toValue!10420 (transformation!7716 (rule!10812 tBis!41)))) (Forall2!1171 lambda!129630))))

(declare-fun bs!597016 () Bool)

(assert (= bs!597016 d!1238798))

(declare-fun m!4790141 () Bool)

(assert (=> bs!597016 m!4790141))

(assert (=> b!4201110 d!1238798))

(declare-fun b!4201947 () Bool)

(declare-fun e!2608398 () Bool)

(declare-fun e!2608399 () Bool)

(assert (=> b!4201947 (= e!2608398 e!2608399)))

(declare-fun res!1725656 () Bool)

(assert (=> b!4201947 (=> (not res!1725656) (not e!2608399))))

(declare-fun call!292650 () Bool)

(assert (=> b!4201947 (= res!1725656 call!292650)))

(declare-fun b!4201948 () Bool)

(declare-fun call!292652 () Bool)

(assert (=> b!4201948 (= e!2608399 call!292652)))

(declare-fun bm!292645 () Bool)

(declare-fun call!292651 () Bool)

(assert (=> bm!292645 (= call!292650 call!292651)))

(declare-fun b!4201949 () Bool)

(declare-fun e!2608400 () Bool)

(assert (=> b!4201949 (= e!2608400 call!292652)))

(declare-fun b!4201950 () Bool)

(declare-fun e!2608397 () Bool)

(declare-fun e!2608395 () Bool)

(assert (=> b!4201950 (= e!2608397 e!2608395)))

(declare-fun c!716395 () Bool)

(assert (=> b!4201950 (= c!716395 ((_ is Union!12621) (regex!7716 rBis!178)))))

(declare-fun d!1238800 () Bool)

(declare-fun res!1725658 () Bool)

(declare-fun e!2608396 () Bool)

(assert (=> d!1238800 (=> res!1725658 e!2608396)))

(assert (=> d!1238800 (= res!1725658 ((_ is ElementMatch!12621) (regex!7716 rBis!178)))))

(assert (=> d!1238800 (= (validRegex!5726 (regex!7716 rBis!178)) e!2608396)))

(declare-fun b!4201951 () Bool)

(declare-fun res!1725657 () Bool)

(assert (=> b!4201951 (=> (not res!1725657) (not e!2608400))))

(assert (=> b!4201951 (= res!1725657 call!292650)))

(assert (=> b!4201951 (= e!2608395 e!2608400)))

(declare-fun c!716394 () Bool)

(declare-fun bm!292646 () Bool)

(assert (=> bm!292646 (= call!292651 (validRegex!5726 (ite c!716394 (reg!12950 (regex!7716 rBis!178)) (ite c!716395 (regOne!25755 (regex!7716 rBis!178)) (regOne!25754 (regex!7716 rBis!178))))))))

(declare-fun b!4201952 () Bool)

(assert (=> b!4201952 (= e!2608396 e!2608397)))

(assert (=> b!4201952 (= c!716394 ((_ is Star!12621) (regex!7716 rBis!178)))))

(declare-fun b!4201953 () Bool)

(declare-fun res!1725659 () Bool)

(assert (=> b!4201953 (=> res!1725659 e!2608398)))

(assert (=> b!4201953 (= res!1725659 (not ((_ is Concat!20568) (regex!7716 rBis!178))))))

(assert (=> b!4201953 (= e!2608395 e!2608398)))

(declare-fun b!4201954 () Bool)

(declare-fun e!2608401 () Bool)

(assert (=> b!4201954 (= e!2608401 call!292651)))

(declare-fun bm!292647 () Bool)

(assert (=> bm!292647 (= call!292652 (validRegex!5726 (ite c!716395 (regTwo!25755 (regex!7716 rBis!178)) (regTwo!25754 (regex!7716 rBis!178)))))))

(declare-fun b!4201955 () Bool)

(assert (=> b!4201955 (= e!2608397 e!2608401)))

(declare-fun res!1725660 () Bool)

(assert (=> b!4201955 (= res!1725660 (not (nullable!4439 (reg!12950 (regex!7716 rBis!178)))))))

(assert (=> b!4201955 (=> (not res!1725660) (not e!2608401))))

(assert (= (and d!1238800 (not res!1725658)) b!4201952))

(assert (= (and b!4201952 c!716394) b!4201955))

(assert (= (and b!4201952 (not c!716394)) b!4201950))

(assert (= (and b!4201955 res!1725660) b!4201954))

(assert (= (and b!4201950 c!716395) b!4201951))

(assert (= (and b!4201950 (not c!716395)) b!4201953))

(assert (= (and b!4201951 res!1725657) b!4201949))

(assert (= (and b!4201953 (not res!1725659)) b!4201947))

(assert (= (and b!4201947 res!1725656) b!4201948))

(assert (= (or b!4201949 b!4201948) bm!292647))

(assert (= (or b!4201951 b!4201947) bm!292645))

(assert (= (or b!4201954 bm!292645) bm!292646))

(declare-fun m!4790143 () Bool)

(assert (=> bm!292646 m!4790143))

(declare-fun m!4790145 () Bool)

(assert (=> bm!292647 m!4790145))

(declare-fun m!4790147 () Bool)

(assert (=> b!4201955 m!4790147))

(assert (=> d!1238544 d!1238800))

(assert (=> d!1238508 d!1238506))

(declare-fun d!1238802 () Bool)

(assert (=> d!1238802 (isPrefix!4575 input!3517 input!3517)))

(assert (=> d!1238802 true))

(declare-fun _$45!2075 () Unit!65271)

(assert (=> d!1238802 (= (choose!25766 input!3517 input!3517) _$45!2075)))

(declare-fun bs!597017 () Bool)

(assert (= bs!597017 d!1238802))

(assert (=> bs!597017 m!4789141))

(assert (=> d!1238508 d!1238802))

(assert (=> b!4201321 d!1238558))

(declare-fun d!1238804 () Bool)

(assert (=> d!1238804 (= (apply!10667 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496423)))) (seqFromList!5727 (originalCharacters!8098 (_1!25103 (get!15020 lt!1496423))))) (dynLambda!19920 (toValue!10420 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496423))))) (seqFromList!5727 (originalCharacters!8098 (_1!25103 (get!15020 lt!1496423))))))))

(declare-fun b_lambda!123673 () Bool)

(assert (=> (not b_lambda!123673) (not d!1238804)))

(declare-fun t!346943 () Bool)

(declare-fun tb!251841 () Bool)

(assert (=> (and b!4200957 (= (toValue!10420 (transformation!7716 rBis!178)) (toValue!10420 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496423)))))) t!346943) tb!251841))

(declare-fun result!306984 () Bool)

(assert (=> tb!251841 (= result!306984 (inv!21 (dynLambda!19920 (toValue!10420 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496423))))) (seqFromList!5727 (originalCharacters!8098 (_1!25103 (get!15020 lt!1496423)))))))))

(declare-fun m!4790149 () Bool)

(assert (=> tb!251841 m!4790149))

(assert (=> d!1238804 t!346943))

(declare-fun b_and!329837 () Bool)

(assert (= b_and!329827 (and (=> t!346943 result!306984) b_and!329837)))

(declare-fun tb!251843 () Bool)

(declare-fun t!346945 () Bool)

(assert (=> (and b!4201369 (= (toValue!10420 (transformation!7716 (h!51603 (t!346812 rules!3967)))) (toValue!10420 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496423)))))) t!346945) tb!251843))

(declare-fun result!306986 () Bool)

(assert (= result!306986 result!306984))

(assert (=> d!1238804 t!346945))

(declare-fun b_and!329839 () Bool)

(assert (= b_and!329831 (and (=> t!346945 result!306986) b_and!329839)))

(declare-fun tb!251845 () Bool)

(declare-fun t!346947 () Bool)

(assert (=> (and b!4200966 (= (toValue!10420 (transformation!7716 (h!51603 rules!3967))) (toValue!10420 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496423)))))) t!346947) tb!251845))

(declare-fun result!306988 () Bool)

(assert (= result!306988 result!306984))

(assert (=> d!1238804 t!346947))

(declare-fun b_and!329841 () Bool)

(assert (= b_and!329829 (and (=> t!346947 result!306988) b_and!329841)))

(declare-fun tb!251847 () Bool)

(declare-fun t!346949 () Bool)

(assert (=> (and b!4200958 (= (toValue!10420 (transformation!7716 (rule!10812 t!8364))) (toValue!10420 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496423)))))) t!346949) tb!251847))

(declare-fun result!306990 () Bool)

(assert (= result!306990 result!306984))

(assert (=> d!1238804 t!346949))

(declare-fun b_and!329843 () Bool)

(assert (= b_and!329833 (and (=> t!346949 result!306990) b_and!329843)))

(declare-fun t!346951 () Bool)

(declare-fun tb!251849 () Bool)

(assert (=> (and b!4200976 (= (toValue!10420 (transformation!7716 (rule!10812 tBis!41))) (toValue!10420 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496423)))))) t!346951) tb!251849))

(declare-fun result!306992 () Bool)

(assert (= result!306992 result!306984))

(assert (=> d!1238804 t!346951))

(declare-fun b_and!329845 () Bool)

(assert (= b_and!329835 (and (=> t!346951 result!306992) b_and!329845)))

(assert (=> d!1238804 m!4789559))

(declare-fun m!4790151 () Bool)

(assert (=> d!1238804 m!4790151))

(assert (=> b!4201321 d!1238804))

(declare-fun d!1238806 () Bool)

(assert (=> d!1238806 (= (seqFromList!5727 (originalCharacters!8098 (_1!25103 (get!15020 lt!1496423)))) (fromListB!2628 (originalCharacters!8098 (_1!25103 (get!15020 lt!1496423)))))))

(declare-fun bs!597018 () Bool)

(assert (= bs!597018 d!1238806))

(declare-fun m!4790153 () Bool)

(assert (=> bs!597018 m!4790153))

(assert (=> b!4201321 d!1238806))

(declare-fun d!1238808 () Bool)

(assert (=> d!1238808 (= (seqFromList!5727 (_1!25105 lt!1496396)) (fromListB!2628 (_1!25105 lt!1496396)))))

(declare-fun bs!597019 () Bool)

(assert (= bs!597019 d!1238808))

(declare-fun m!4790155 () Bool)

(assert (=> bs!597019 m!4790155))

(assert (=> b!4201239 d!1238808))

(assert (=> b!4201239 d!1238560))

(declare-fun d!1238810 () Bool)

(declare-fun e!2608405 () Bool)

(assert (=> d!1238810 e!2608405))

(declare-fun res!1725663 () Bool)

(assert (=> d!1238810 (=> res!1725663 e!2608405)))

(assert (=> d!1238810 (= res!1725663 (isEmpty!27344 (_1!25105 (findLongestMatchInner!1627 (regex!7716 rBis!178) Nil!46182 (size!33934 Nil!46182) input!3517 input!3517 (size!33934 input!3517)))))))

(declare-fun lt!1496690 () Unit!65271)

(declare-fun choose!25768 (Regex!12621 List!46306) Unit!65271)

(assert (=> d!1238810 (= lt!1496690 (choose!25768 (regex!7716 rBis!178) input!3517))))

(assert (=> d!1238810 (validRegex!5726 (regex!7716 rBis!178))))

(assert (=> d!1238810 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1600 (regex!7716 rBis!178) input!3517) lt!1496690)))

(declare-fun b!4201958 () Bool)

(assert (=> b!4201958 (= e!2608405 (matchR!6346 (regex!7716 rBis!178) (_1!25105 (findLongestMatchInner!1627 (regex!7716 rBis!178) Nil!46182 (size!33934 Nil!46182) input!3517 input!3517 (size!33934 input!3517)))))))

(assert (= (and d!1238810 (not res!1725663)) b!4201958))

(assert (=> d!1238810 m!4789445))

(assert (=> d!1238810 m!4789295))

(assert (=> d!1238810 m!4789453))

(assert (=> d!1238810 m!4789447))

(declare-fun m!4790157 () Bool)

(assert (=> d!1238810 m!4790157))

(assert (=> d!1238810 m!4789445))

(assert (=> d!1238810 m!4789295))

(assert (=> d!1238810 m!4789575))

(assert (=> b!4201958 m!4789445))

(assert (=> b!4201958 m!4789295))

(assert (=> b!4201958 m!4789445))

(assert (=> b!4201958 m!4789295))

(assert (=> b!4201958 m!4789453))

(assert (=> b!4201958 m!4789463))

(assert (=> b!4201239 d!1238810))

(declare-fun d!1238812 () Bool)

(assert (=> d!1238812 (= (isEmpty!27344 (_1!25105 (findLongestMatchInner!1627 (regex!7716 rBis!178) Nil!46182 (size!33934 Nil!46182) input!3517 input!3517 (size!33934 input!3517)))) ((_ is Nil!46182) (_1!25105 (findLongestMatchInner!1627 (regex!7716 rBis!178) Nil!46182 (size!33934 Nil!46182) input!3517 input!3517 (size!33934 input!3517)))))))

(assert (=> b!4201239 d!1238812))

(assert (=> b!4201239 d!1238592))

(declare-fun bs!597020 () Bool)

(declare-fun d!1238814 () Bool)

(assert (= bs!597020 (and d!1238814 d!1238602)))

(declare-fun lambda!129633 () Int)

(assert (=> bs!597020 (= (and (= (toChars!10279 (transformation!7716 rBis!178)) (toChars!10279 (transformation!7716 (rule!10812 t!8364)))) (= (toValue!10420 (transformation!7716 rBis!178)) (toValue!10420 (transformation!7716 (rule!10812 t!8364))))) (= lambda!129633 lambda!129625))))

(declare-fun b!4201963 () Bool)

(declare-fun e!2608408 () Bool)

(assert (=> b!4201963 (= e!2608408 true)))

(assert (=> d!1238814 e!2608408))

(assert (= d!1238814 b!4201963))

(assert (=> b!4201963 (< (dynLambda!19918 order!24495 (toValue!10420 (transformation!7716 rBis!178))) (dynLambda!19917 order!24493 lambda!129633))))

(assert (=> b!4201963 (< (dynLambda!19916 order!24491 (toChars!10279 (transformation!7716 rBis!178))) (dynLambda!19917 order!24493 lambda!129633))))

(assert (=> d!1238814 (= (list!16683 (dynLambda!19910 (toChars!10279 (transformation!7716 rBis!178)) (dynLambda!19920 (toValue!10420 (transformation!7716 rBis!178)) (seqFromList!5727 (_1!25105 lt!1496396))))) (list!16683 (seqFromList!5727 (_1!25105 lt!1496396))))))

(declare-fun lt!1496693 () Unit!65271)

(declare-fun ForallOf!1079 (Int BalanceConc!27448) Unit!65271)

(assert (=> d!1238814 (= lt!1496693 (ForallOf!1079 lambda!129633 (seqFromList!5727 (_1!25105 lt!1496396))))))

(assert (=> d!1238814 (= (lemmaSemiInverse!2468 (transformation!7716 rBis!178) (seqFromList!5727 (_1!25105 lt!1496396))) lt!1496693)))

(declare-fun b_lambda!123675 () Bool)

(assert (=> (not b_lambda!123675) (not d!1238814)))

(declare-fun tb!251851 () Bool)

(declare-fun t!346953 () Bool)

(assert (=> (and b!4200976 (= (toChars!10279 (transformation!7716 (rule!10812 tBis!41))) (toChars!10279 (transformation!7716 rBis!178))) t!346953) tb!251851))

(declare-fun e!2608409 () Bool)

(declare-fun tp!1283916 () Bool)

(declare-fun b!4201964 () Bool)

(assert (=> b!4201964 (= e!2608409 (and (inv!60744 (c!716229 (dynLambda!19910 (toChars!10279 (transformation!7716 rBis!178)) (dynLambda!19920 (toValue!10420 (transformation!7716 rBis!178)) (seqFromList!5727 (_1!25105 lt!1496396)))))) tp!1283916))))

(declare-fun result!306994 () Bool)

(assert (=> tb!251851 (= result!306994 (and (inv!60745 (dynLambda!19910 (toChars!10279 (transformation!7716 rBis!178)) (dynLambda!19920 (toValue!10420 (transformation!7716 rBis!178)) (seqFromList!5727 (_1!25105 lt!1496396))))) e!2608409))))

(assert (= tb!251851 b!4201964))

(declare-fun m!4790159 () Bool)

(assert (=> b!4201964 m!4790159))

(declare-fun m!4790161 () Bool)

(assert (=> tb!251851 m!4790161))

(assert (=> d!1238814 t!346953))

(declare-fun b_and!329847 () Bool)

(assert (= b_and!329747 (and (=> t!346953 result!306994) b_and!329847)))

(declare-fun tb!251853 () Bool)

(declare-fun t!346955 () Bool)

(assert (=> (and b!4200958 (= (toChars!10279 (transformation!7716 (rule!10812 t!8364))) (toChars!10279 (transformation!7716 rBis!178))) t!346955) tb!251853))

(declare-fun result!306996 () Bool)

(assert (= result!306996 result!306994))

(assert (=> d!1238814 t!346955))

(declare-fun b_and!329849 () Bool)

(assert (= b_and!329741 (and (=> t!346955 result!306996) b_and!329849)))

(declare-fun t!346957 () Bool)

(declare-fun tb!251855 () Bool)

(assert (=> (and b!4200966 (= (toChars!10279 (transformation!7716 (h!51603 rules!3967))) (toChars!10279 (transformation!7716 rBis!178))) t!346957) tb!251855))

(declare-fun result!306998 () Bool)

(assert (= result!306998 result!306994))

(assert (=> d!1238814 t!346957))

(declare-fun b_and!329851 () Bool)

(assert (= b_and!329745 (and (=> t!346957 result!306998) b_and!329851)))

(declare-fun t!346959 () Bool)

(declare-fun tb!251857 () Bool)

(assert (=> (and b!4201369 (= (toChars!10279 (transformation!7716 (h!51603 (t!346812 rules!3967)))) (toChars!10279 (transformation!7716 rBis!178))) t!346959) tb!251857))

(declare-fun result!307000 () Bool)

(assert (= result!307000 result!306994))

(assert (=> d!1238814 t!346959))

(declare-fun b_and!329853 () Bool)

(assert (= b_and!329751 (and (=> t!346959 result!307000) b_and!329853)))

(declare-fun t!346961 () Bool)

(declare-fun tb!251859 () Bool)

(assert (=> (and b!4200957 (= (toChars!10279 (transformation!7716 rBis!178)) (toChars!10279 (transformation!7716 rBis!178))) t!346961) tb!251859))

(declare-fun result!307002 () Bool)

(assert (= result!307002 result!306994))

(assert (=> d!1238814 t!346961))

(declare-fun b_and!329855 () Bool)

(assert (= b_and!329743 (and (=> t!346961 result!307002) b_and!329855)))

(declare-fun b_lambda!123677 () Bool)

(assert (=> (not b_lambda!123677) (not d!1238814)))

(declare-fun t!346963 () Bool)

(declare-fun tb!251861 () Bool)

(assert (=> (and b!4200976 (= (toValue!10420 (transformation!7716 (rule!10812 tBis!41))) (toValue!10420 (transformation!7716 rBis!178))) t!346963) tb!251861))

(declare-fun result!307004 () Bool)

(assert (=> tb!251861 (= result!307004 (inv!21 (dynLambda!19920 (toValue!10420 (transformation!7716 rBis!178)) (seqFromList!5727 (_1!25105 lt!1496396)))))))

(declare-fun m!4790163 () Bool)

(assert (=> tb!251861 m!4790163))

(assert (=> d!1238814 t!346963))

(declare-fun b_and!329857 () Bool)

(assert (= b_and!329845 (and (=> t!346963 result!307004) b_and!329857)))

(declare-fun t!346965 () Bool)

(declare-fun tb!251863 () Bool)

(assert (=> (and b!4200957 (= (toValue!10420 (transformation!7716 rBis!178)) (toValue!10420 (transformation!7716 rBis!178))) t!346965) tb!251863))

(declare-fun result!307006 () Bool)

(assert (= result!307006 result!307004))

(assert (=> d!1238814 t!346965))

(declare-fun b_and!329859 () Bool)

(assert (= b_and!329837 (and (=> t!346965 result!307006) b_and!329859)))

(declare-fun t!346967 () Bool)

(declare-fun tb!251865 () Bool)

(assert (=> (and b!4200958 (= (toValue!10420 (transformation!7716 (rule!10812 t!8364))) (toValue!10420 (transformation!7716 rBis!178))) t!346967) tb!251865))

(declare-fun result!307008 () Bool)

(assert (= result!307008 result!307004))

(assert (=> d!1238814 t!346967))

(declare-fun b_and!329861 () Bool)

(assert (= b_and!329843 (and (=> t!346967 result!307008) b_and!329861)))

(declare-fun tb!251867 () Bool)

(declare-fun t!346969 () Bool)

(assert (=> (and b!4200966 (= (toValue!10420 (transformation!7716 (h!51603 rules!3967))) (toValue!10420 (transformation!7716 rBis!178))) t!346969) tb!251867))

(declare-fun result!307010 () Bool)

(assert (= result!307010 result!307004))

(assert (=> d!1238814 t!346969))

(declare-fun b_and!329863 () Bool)

(assert (= b_and!329841 (and (=> t!346969 result!307010) b_and!329863)))

(declare-fun t!346971 () Bool)

(declare-fun tb!251869 () Bool)

(assert (=> (and b!4201369 (= (toValue!10420 (transformation!7716 (h!51603 (t!346812 rules!3967)))) (toValue!10420 (transformation!7716 rBis!178))) t!346971) tb!251869))

(declare-fun result!307012 () Bool)

(assert (= result!307012 result!307004))

(assert (=> d!1238814 t!346971))

(declare-fun b_and!329865 () Bool)

(assert (= b_and!329839 (and (=> t!346971 result!307012) b_and!329865)))

(declare-fun m!4790165 () Bool)

(assert (=> d!1238814 m!4790165))

(declare-fun m!4790167 () Bool)

(assert (=> d!1238814 m!4790167))

(assert (=> d!1238814 m!4789439))

(assert (=> d!1238814 m!4790165))

(assert (=> d!1238814 m!4789439))

(declare-fun m!4790169 () Bool)

(assert (=> d!1238814 m!4790169))

(assert (=> d!1238814 m!4789439))

(declare-fun m!4790171 () Bool)

(assert (=> d!1238814 m!4790171))

(assert (=> d!1238814 m!4790167))

(declare-fun m!4790173 () Bool)

(assert (=> d!1238814 m!4790173))

(assert (=> b!4201239 d!1238814))

(assert (=> b!4201239 d!1238564))

(declare-fun d!1238816 () Bool)

(assert (=> d!1238816 (= (apply!10667 (transformation!7716 rBis!178) (seqFromList!5727 (_1!25105 lt!1496396))) (dynLambda!19920 (toValue!10420 (transformation!7716 rBis!178)) (seqFromList!5727 (_1!25105 lt!1496396))))))

(declare-fun b_lambda!123679 () Bool)

(assert (=> (not b_lambda!123679) (not d!1238816)))

(assert (=> d!1238816 t!346969))

(declare-fun b_and!329867 () Bool)

(assert (= b_and!329863 (and (=> t!346969 result!307010) b_and!329867)))

(assert (=> d!1238816 t!346967))

(declare-fun b_and!329869 () Bool)

(assert (= b_and!329861 (and (=> t!346967 result!307008) b_and!329869)))

(assert (=> d!1238816 t!346971))

(declare-fun b_and!329871 () Bool)

(assert (= b_and!329865 (and (=> t!346971 result!307012) b_and!329871)))

(assert (=> d!1238816 t!346965))

(declare-fun b_and!329873 () Bool)

(assert (= b_and!329859 (and (=> t!346965 result!307006) b_and!329873)))

(assert (=> d!1238816 t!346963))

(declare-fun b_and!329875 () Bool)

(assert (= b_and!329857 (and (=> t!346963 result!307004) b_and!329875)))

(assert (=> d!1238816 m!4789439))

(assert (=> d!1238816 m!4790165))

(assert (=> b!4201239 d!1238816))

(declare-fun d!1238818 () Bool)

(declare-fun lt!1496696 () Int)

(assert (=> d!1238818 (= lt!1496696 (size!33934 (list!16683 (seqFromList!5727 (_1!25105 lt!1496396)))))))

(declare-fun size!33937 (Conc!13927) Int)

(assert (=> d!1238818 (= lt!1496696 (size!33937 (c!716229 (seqFromList!5727 (_1!25105 lt!1496396)))))))

(assert (=> d!1238818 (= (size!33935 (seqFromList!5727 (_1!25105 lt!1496396))) lt!1496696)))

(declare-fun bs!597021 () Bool)

(assert (= bs!597021 d!1238818))

(assert (=> bs!597021 m!4789439))

(assert (=> bs!597021 m!4790169))

(assert (=> bs!597021 m!4790169))

(declare-fun m!4790175 () Bool)

(assert (=> bs!597021 m!4790175))

(declare-fun m!4790177 () Bool)

(assert (=> bs!597021 m!4790177))

(assert (=> b!4201239 d!1238818))

(declare-fun b!4201965 () Bool)

(declare-fun e!2608411 () Bool)

(declare-fun e!2608417 () Bool)

(assert (=> b!4201965 (= e!2608411 e!2608417)))

(declare-fun res!1725667 () Bool)

(assert (=> b!4201965 (=> res!1725667 e!2608417)))

(declare-fun call!292653 () Bool)

(assert (=> b!4201965 (= res!1725667 call!292653)))

(declare-fun b!4201966 () Bool)

(declare-fun res!1725671 () Bool)

(declare-fun e!2608414 () Bool)

(assert (=> b!4201966 (=> res!1725671 e!2608414)))

(declare-fun e!2608412 () Bool)

(assert (=> b!4201966 (= res!1725671 e!2608412)))

(declare-fun res!1725665 () Bool)

(assert (=> b!4201966 (=> (not res!1725665) (not e!2608412))))

(declare-fun lt!1496697 () Bool)

(assert (=> b!4201966 (= res!1725665 lt!1496697)))

(declare-fun b!4201967 () Bool)

(declare-fun res!1725670 () Bool)

(assert (=> b!4201967 (=> (not res!1725670) (not e!2608412))))

(assert (=> b!4201967 (= res!1725670 (isEmpty!27344 (tail!6763 (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496423)))))))))

(declare-fun b!4201968 () Bool)

(assert (=> b!4201968 (= e!2608414 e!2608411)))

(declare-fun res!1725668 () Bool)

(assert (=> b!4201968 (=> (not res!1725668) (not e!2608411))))

(assert (=> b!4201968 (= res!1725668 (not lt!1496697))))

(declare-fun b!4201969 () Bool)

(declare-fun res!1725664 () Bool)

(assert (=> b!4201969 (=> res!1725664 e!2608414)))

(assert (=> b!4201969 (= res!1725664 (not ((_ is ElementMatch!12621) (regex!7716 (rule!10812 (_1!25103 (get!15020 lt!1496423)))))))))

(declare-fun e!2608413 () Bool)

(assert (=> b!4201969 (= e!2608413 e!2608414)))

(declare-fun b!4201970 () Bool)

(declare-fun e!2608415 () Bool)

(assert (=> b!4201970 (= e!2608415 (nullable!4439 (regex!7716 (rule!10812 (_1!25103 (get!15020 lt!1496423))))))))

(declare-fun d!1238820 () Bool)

(declare-fun e!2608416 () Bool)

(assert (=> d!1238820 e!2608416))

(declare-fun c!716398 () Bool)

(assert (=> d!1238820 (= c!716398 ((_ is EmptyExpr!12621) (regex!7716 (rule!10812 (_1!25103 (get!15020 lt!1496423))))))))

(assert (=> d!1238820 (= lt!1496697 e!2608415)))

(declare-fun c!716399 () Bool)

(assert (=> d!1238820 (= c!716399 (isEmpty!27344 (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496423))))))))

(assert (=> d!1238820 (validRegex!5726 (regex!7716 (rule!10812 (_1!25103 (get!15020 lt!1496423)))))))

(assert (=> d!1238820 (= (matchR!6346 (regex!7716 (rule!10812 (_1!25103 (get!15020 lt!1496423)))) (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496423))))) lt!1496697)))

(declare-fun b!4201971 () Bool)

(assert (=> b!4201971 (= e!2608416 e!2608413)))

(declare-fun c!716397 () Bool)

(assert (=> b!4201971 (= c!716397 ((_ is EmptyLang!12621) (regex!7716 (rule!10812 (_1!25103 (get!15020 lt!1496423))))))))

(declare-fun b!4201972 () Bool)

(assert (=> b!4201972 (= e!2608416 (= lt!1496697 call!292653))))

(declare-fun b!4201973 () Bool)

(assert (=> b!4201973 (= e!2608415 (matchR!6346 (derivativeStep!3827 (regex!7716 (rule!10812 (_1!25103 (get!15020 lt!1496423)))) (head!8916 (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496423)))))) (tail!6763 (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496423)))))))))

(declare-fun b!4201974 () Bool)

(assert (=> b!4201974 (= e!2608417 (not (= (head!8916 (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496423))))) (c!716228 (regex!7716 (rule!10812 (_1!25103 (get!15020 lt!1496423))))))))))

(declare-fun b!4201975 () Bool)

(assert (=> b!4201975 (= e!2608413 (not lt!1496697))))

(declare-fun b!4201976 () Bool)

(assert (=> b!4201976 (= e!2608412 (= (head!8916 (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496423))))) (c!716228 (regex!7716 (rule!10812 (_1!25103 (get!15020 lt!1496423)))))))))

(declare-fun b!4201977 () Bool)

(declare-fun res!1725666 () Bool)

(assert (=> b!4201977 (=> res!1725666 e!2608417)))

(assert (=> b!4201977 (= res!1725666 (not (isEmpty!27344 (tail!6763 (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496423))))))))))

(declare-fun b!4201978 () Bool)

(declare-fun res!1725669 () Bool)

(assert (=> b!4201978 (=> (not res!1725669) (not e!2608412))))

(assert (=> b!4201978 (= res!1725669 (not call!292653))))

(declare-fun bm!292648 () Bool)

(assert (=> bm!292648 (= call!292653 (isEmpty!27344 (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496423))))))))

(assert (= (and d!1238820 c!716399) b!4201970))

(assert (= (and d!1238820 (not c!716399)) b!4201973))

(assert (= (and d!1238820 c!716398) b!4201972))

(assert (= (and d!1238820 (not c!716398)) b!4201971))

(assert (= (and b!4201971 c!716397) b!4201975))

(assert (= (and b!4201971 (not c!716397)) b!4201969))

(assert (= (and b!4201969 (not res!1725664)) b!4201966))

(assert (= (and b!4201966 res!1725665) b!4201978))

(assert (= (and b!4201978 res!1725669) b!4201967))

(assert (= (and b!4201967 res!1725670) b!4201976))

(assert (= (and b!4201966 (not res!1725671)) b!4201968))

(assert (= (and b!4201968 res!1725668) b!4201965))

(assert (= (and b!4201965 (not res!1725667)) b!4201977))

(assert (= (and b!4201977 (not res!1725666)) b!4201974))

(assert (= (or b!4201972 b!4201965 b!4201978) bm!292648))

(assert (=> b!4201974 m!4789549))

(declare-fun m!4790179 () Bool)

(assert (=> b!4201974 m!4790179))

(assert (=> bm!292648 m!4789549))

(declare-fun m!4790181 () Bool)

(assert (=> bm!292648 m!4790181))

(assert (=> b!4201976 m!4789549))

(assert (=> b!4201976 m!4790179))

(assert (=> b!4201977 m!4789549))

(declare-fun m!4790183 () Bool)

(assert (=> b!4201977 m!4790183))

(assert (=> b!4201977 m!4790183))

(declare-fun m!4790185 () Bool)

(assert (=> b!4201977 m!4790185))

(declare-fun m!4790187 () Bool)

(assert (=> b!4201970 m!4790187))

(assert (=> b!4201967 m!4789549))

(assert (=> b!4201967 m!4790183))

(assert (=> b!4201967 m!4790183))

(assert (=> b!4201967 m!4790185))

(assert (=> d!1238820 m!4789549))

(assert (=> d!1238820 m!4790181))

(declare-fun m!4790189 () Bool)

(assert (=> d!1238820 m!4790189))

(assert (=> b!4201973 m!4789549))

(assert (=> b!4201973 m!4790179))

(assert (=> b!4201973 m!4790179))

(declare-fun m!4790191 () Bool)

(assert (=> b!4201973 m!4790191))

(assert (=> b!4201973 m!4789549))

(assert (=> b!4201973 m!4790183))

(assert (=> b!4201973 m!4790191))

(assert (=> b!4201973 m!4790183))

(declare-fun m!4790193 () Bool)

(assert (=> b!4201973 m!4790193))

(assert (=> b!4201319 d!1238820))

(assert (=> b!4201319 d!1238558))

(declare-fun d!1238822 () Bool)

(assert (=> d!1238822 (= (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496423)))) (list!16685 (c!716229 (charsOf!5139 (_1!25103 (get!15020 lt!1496423))))))))

(declare-fun bs!597022 () Bool)

(assert (= bs!597022 d!1238822))

(declare-fun m!4790195 () Bool)

(assert (=> bs!597022 m!4790195))

(assert (=> b!4201319 d!1238822))

(declare-fun d!1238824 () Bool)

(declare-fun lt!1496698 () BalanceConc!27448)

(assert (=> d!1238824 (= (list!16683 lt!1496698) (originalCharacters!8098 (_1!25103 (get!15020 lt!1496423))))))

(assert (=> d!1238824 (= lt!1496698 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496423))))) (value!240435 (_1!25103 (get!15020 lt!1496423)))))))

(assert (=> d!1238824 (= (charsOf!5139 (_1!25103 (get!15020 lt!1496423))) lt!1496698)))

(declare-fun b_lambda!123681 () Bool)

(assert (=> (not b_lambda!123681) (not d!1238824)))

(declare-fun tb!251871 () Bool)

(declare-fun t!346973 () Bool)

(assert (=> (and b!4200966 (= (toChars!10279 (transformation!7716 (h!51603 rules!3967))) (toChars!10279 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496423)))))) t!346973) tb!251871))

(declare-fun b!4201979 () Bool)

(declare-fun e!2608418 () Bool)

(declare-fun tp!1283917 () Bool)

(assert (=> b!4201979 (= e!2608418 (and (inv!60744 (c!716229 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496423))))) (value!240435 (_1!25103 (get!15020 lt!1496423)))))) tp!1283917))))

(declare-fun result!307014 () Bool)

(assert (=> tb!251871 (= result!307014 (and (inv!60745 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496423))))) (value!240435 (_1!25103 (get!15020 lt!1496423))))) e!2608418))))

(assert (= tb!251871 b!4201979))

(declare-fun m!4790197 () Bool)

(assert (=> b!4201979 m!4790197))

(declare-fun m!4790199 () Bool)

(assert (=> tb!251871 m!4790199))

(assert (=> d!1238824 t!346973))

(declare-fun b_and!329877 () Bool)

(assert (= b_and!329851 (and (=> t!346973 result!307014) b_and!329877)))

(declare-fun t!346975 () Bool)

(declare-fun tb!251873 () Bool)

(assert (=> (and b!4200957 (= (toChars!10279 (transformation!7716 rBis!178)) (toChars!10279 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496423)))))) t!346975) tb!251873))

(declare-fun result!307016 () Bool)

(assert (= result!307016 result!307014))

(assert (=> d!1238824 t!346975))

(declare-fun b_and!329879 () Bool)

(assert (= b_and!329855 (and (=> t!346975 result!307016) b_and!329879)))

(declare-fun tb!251875 () Bool)

(declare-fun t!346977 () Bool)

(assert (=> (and b!4200958 (= (toChars!10279 (transformation!7716 (rule!10812 t!8364))) (toChars!10279 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496423)))))) t!346977) tb!251875))

(declare-fun result!307018 () Bool)

(assert (= result!307018 result!307014))

(assert (=> d!1238824 t!346977))

(declare-fun b_and!329881 () Bool)

(assert (= b_and!329849 (and (=> t!346977 result!307018) b_and!329881)))

(declare-fun tb!251877 () Bool)

(declare-fun t!346979 () Bool)

(assert (=> (and b!4201369 (= (toChars!10279 (transformation!7716 (h!51603 (t!346812 rules!3967)))) (toChars!10279 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496423)))))) t!346979) tb!251877))

(declare-fun result!307020 () Bool)

(assert (= result!307020 result!307014))

(assert (=> d!1238824 t!346979))

(declare-fun b_and!329883 () Bool)

(assert (= b_and!329853 (and (=> t!346979 result!307020) b_and!329883)))

(declare-fun tb!251879 () Bool)

(declare-fun t!346981 () Bool)

(assert (=> (and b!4200976 (= (toChars!10279 (transformation!7716 (rule!10812 tBis!41))) (toChars!10279 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496423)))))) t!346981) tb!251879))

(declare-fun result!307022 () Bool)

(assert (= result!307022 result!307014))

(assert (=> d!1238824 t!346981))

(declare-fun b_and!329885 () Bool)

(assert (= b_and!329847 (and (=> t!346981 result!307022) b_and!329885)))

(declare-fun m!4790201 () Bool)

(assert (=> d!1238824 m!4790201))

(declare-fun m!4790203 () Bool)

(assert (=> d!1238824 m!4790203))

(assert (=> b!4201319 d!1238824))

(declare-fun d!1238826 () Bool)

(declare-fun lt!1496699 () Int)

(assert (=> d!1238826 (>= lt!1496699 0)))

(declare-fun e!2608419 () Int)

(assert (=> d!1238826 (= lt!1496699 e!2608419)))

(declare-fun c!716400 () Bool)

(assert (=> d!1238826 (= c!716400 ((_ is Nil!46182) (_2!25103 (get!15020 lt!1496392))))))

(assert (=> d!1238826 (= (size!33934 (_2!25103 (get!15020 lt!1496392))) lt!1496699)))

(declare-fun b!4201980 () Bool)

(assert (=> b!4201980 (= e!2608419 0)))

(declare-fun b!4201981 () Bool)

(assert (=> b!4201981 (= e!2608419 (+ 1 (size!33934 (t!346811 (_2!25103 (get!15020 lt!1496392))))))))

(assert (= (and d!1238826 c!716400) b!4201980))

(assert (= (and d!1238826 (not c!716400)) b!4201981))

(declare-fun m!4790205 () Bool)

(assert (=> b!4201981 m!4790205))

(assert (=> b!4201237 d!1238826))

(assert (=> b!4201237 d!1238784))

(assert (=> b!4201237 d!1238560))

(assert (=> b!4201283 d!1238560))

(declare-fun d!1238828 () Bool)

(declare-fun lt!1496700 () Int)

(assert (=> d!1238828 (>= lt!1496700 0)))

(declare-fun e!2608420 () Int)

(assert (=> d!1238828 (= lt!1496700 e!2608420)))

(declare-fun c!716401 () Bool)

(assert (=> d!1238828 (= c!716401 ((_ is Nil!46182) p!3001))))

(assert (=> d!1238828 (= (size!33934 p!3001) lt!1496700)))

(declare-fun b!4201982 () Bool)

(assert (=> b!4201982 (= e!2608420 0)))

(declare-fun b!4201983 () Bool)

(assert (=> b!4201983 (= e!2608420 (+ 1 (size!33934 (t!346811 p!3001))))))

(assert (= (and d!1238828 c!716401) b!4201982))

(assert (= (and d!1238828 (not c!716401)) b!4201983))

(assert (=> b!4201983 m!4790117))

(assert (=> b!4201283 d!1238828))

(declare-fun d!1238830 () Bool)

(declare-fun c!716404 () Bool)

(assert (=> d!1238830 (= c!716404 ((_ is Nil!46183) rules!3967))))

(declare-fun e!2608423 () (InoxSet Rule!15232))

(assert (=> d!1238830 (= (content!7213 rules!3967) e!2608423)))

(declare-fun b!4201988 () Bool)

(assert (=> b!4201988 (= e!2608423 ((as const (Array Rule!15232 Bool)) false))))

(declare-fun b!4201989 () Bool)

(assert (=> b!4201989 (= e!2608423 ((_ map or) (store ((as const (Array Rule!15232 Bool)) false) (h!51603 rules!3967) true) (content!7213 (t!346812 rules!3967))))))

(assert (= (and d!1238830 c!716404) b!4201988))

(assert (= (and d!1238830 (not c!716404)) b!4201989))

(declare-fun m!4790207 () Bool)

(assert (=> b!4201989 m!4790207))

(declare-fun m!4790209 () Bool)

(assert (=> b!4201989 m!4790209))

(assert (=> d!1238524 d!1238830))

(declare-fun d!1238832 () Bool)

(assert (=> d!1238832 true))

(declare-fun lt!1496703 () Bool)

(assert (=> d!1238832 (= lt!1496703 (rulesValidInductive!2856 thiss!26544 rules!3967))))

(declare-fun lambda!129636 () Int)

(declare-fun forall!8484 (List!46307 Int) Bool)

(assert (=> d!1238832 (= lt!1496703 (forall!8484 rules!3967 lambda!129636))))

(assert (=> d!1238832 (= (rulesValid!3016 thiss!26544 rules!3967) lt!1496703)))

(declare-fun bs!597023 () Bool)

(assert (= bs!597023 d!1238832))

(assert (=> bs!597023 m!4789543))

(declare-fun m!4790211 () Bool)

(assert (=> bs!597023 m!4790211))

(assert (=> d!1238542 d!1238832))

(declare-fun d!1238834 () Bool)

(assert (=> d!1238834 (= (head!8916 p!3001) (h!51602 p!3001))))

(assert (=> b!4201281 d!1238834))

(assert (=> b!4201281 d!1238554))

(assert (=> b!4201247 d!1238560))

(declare-fun d!1238836 () Bool)

(declare-fun lt!1496704 () Int)

(assert (=> d!1238836 (>= lt!1496704 0)))

(declare-fun e!2608424 () Int)

(assert (=> d!1238836 (= lt!1496704 e!2608424)))

(declare-fun c!716405 () Bool)

(assert (=> d!1238836 (= c!716405 ((_ is Nil!46182) lt!1496408))))

(assert (=> d!1238836 (= (size!33934 lt!1496408) lt!1496704)))

(declare-fun b!4201992 () Bool)

(assert (=> b!4201992 (= e!2608424 0)))

(declare-fun b!4201993 () Bool)

(assert (=> b!4201993 (= e!2608424 (+ 1 (size!33934 (t!346811 lt!1496408))))))

(assert (= (and d!1238836 c!716405) b!4201992))

(assert (= (and d!1238836 (not c!716405)) b!4201993))

(declare-fun m!4790213 () Bool)

(assert (=> b!4201993 m!4790213))

(assert (=> b!4201295 d!1238836))

(assert (=> b!4201295 d!1238600))

(declare-fun d!1238838 () Bool)

(declare-fun lt!1496705 () Int)

(assert (=> d!1238838 (>= lt!1496705 0)))

(declare-fun e!2608425 () Int)

(assert (=> d!1238838 (= lt!1496705 e!2608425)))

(declare-fun c!716406 () Bool)

(assert (=> d!1238838 (= c!716406 ((_ is Nil!46182) suffixBis!41))))

(assert (=> d!1238838 (= (size!33934 suffixBis!41) lt!1496705)))

(declare-fun b!4201994 () Bool)

(assert (=> b!4201994 (= e!2608425 0)))

(declare-fun b!4201995 () Bool)

(assert (=> b!4201995 (= e!2608425 (+ 1 (size!33934 (t!346811 suffixBis!41))))))

(assert (= (and d!1238838 c!716406) b!4201994))

(assert (= (and d!1238838 (not c!716406)) b!4201995))

(declare-fun m!4790215 () Bool)

(assert (=> b!4201995 m!4790215))

(assert (=> b!4201295 d!1238838))

(declare-fun b!4201996 () Bool)

(declare-fun e!2608427 () Bool)

(declare-fun e!2608428 () Bool)

(assert (=> b!4201996 (= e!2608427 e!2608428)))

(declare-fun res!1725674 () Bool)

(assert (=> b!4201996 (=> (not res!1725674) (not e!2608428))))

(assert (=> b!4201996 (= res!1725674 (not ((_ is Nil!46182) (tail!6763 input!3517))))))

(declare-fun d!1238840 () Bool)

(declare-fun e!2608426 () Bool)

(assert (=> d!1238840 e!2608426))

(declare-fun res!1725672 () Bool)

(assert (=> d!1238840 (=> res!1725672 e!2608426)))

(declare-fun lt!1496706 () Bool)

(assert (=> d!1238840 (= res!1725672 (not lt!1496706))))

(assert (=> d!1238840 (= lt!1496706 e!2608427)))

(declare-fun res!1725675 () Bool)

(assert (=> d!1238840 (=> res!1725675 e!2608427)))

(assert (=> d!1238840 (= res!1725675 ((_ is Nil!46182) (tail!6763 input!3517)))))

(assert (=> d!1238840 (= (isPrefix!4575 (tail!6763 input!3517) (tail!6763 input!3517)) lt!1496706)))

(declare-fun b!4201999 () Bool)

(assert (=> b!4201999 (= e!2608426 (>= (size!33934 (tail!6763 input!3517)) (size!33934 (tail!6763 input!3517))))))

(declare-fun b!4201998 () Bool)

(assert (=> b!4201998 (= e!2608428 (isPrefix!4575 (tail!6763 (tail!6763 input!3517)) (tail!6763 (tail!6763 input!3517))))))

(declare-fun b!4201997 () Bool)

(declare-fun res!1725673 () Bool)

(assert (=> b!4201997 (=> (not res!1725673) (not e!2608428))))

(assert (=> b!4201997 (= res!1725673 (= (head!8916 (tail!6763 input!3517)) (head!8916 (tail!6763 input!3517))))))

(assert (= (and d!1238840 (not res!1725675)) b!4201996))

(assert (= (and b!4201996 res!1725674) b!4201997))

(assert (= (and b!4201997 res!1725673) b!4201998))

(assert (= (and d!1238840 (not res!1725672)) b!4201999))

(assert (=> b!4201999 m!4789301))

(declare-fun m!4790217 () Bool)

(assert (=> b!4201999 m!4790217))

(assert (=> b!4201999 m!4789301))

(assert (=> b!4201999 m!4790217))

(assert (=> b!4201998 m!4789301))

(declare-fun m!4790219 () Bool)

(assert (=> b!4201998 m!4790219))

(assert (=> b!4201998 m!4789301))

(assert (=> b!4201998 m!4790219))

(assert (=> b!4201998 m!4790219))

(assert (=> b!4201998 m!4790219))

(declare-fun m!4790221 () Bool)

(assert (=> b!4201998 m!4790221))

(assert (=> b!4201997 m!4789301))

(declare-fun m!4790223 () Bool)

(assert (=> b!4201997 m!4790223))

(assert (=> b!4201997 m!4789301))

(assert (=> b!4201997 m!4790223))

(assert (=> b!4201246 d!1238840))

(declare-fun d!1238842 () Bool)

(assert (=> d!1238842 (= (tail!6763 input!3517) (t!346811 input!3517))))

(assert (=> b!4201246 d!1238842))

(assert (=> b!4201316 d!1238822))

(assert (=> b!4201316 d!1238824))

(assert (=> b!4201316 d!1238558))

(declare-fun d!1238844 () Bool)

(declare-fun c!716409 () Bool)

(assert (=> d!1238844 (= c!716409 ((_ is Nil!46182) lt!1496403))))

(declare-fun e!2608431 () (InoxSet C!25436))

(assert (=> d!1238844 (= (content!7212 lt!1496403) e!2608431)))

(declare-fun b!4202004 () Bool)

(assert (=> b!4202004 (= e!2608431 ((as const (Array C!25436 Bool)) false))))

(declare-fun b!4202005 () Bool)

(assert (=> b!4202005 (= e!2608431 ((_ map or) (store ((as const (Array C!25436 Bool)) false) (h!51602 lt!1496403) true) (content!7212 (t!346811 lt!1496403))))))

(assert (= (and d!1238844 c!716409) b!4202004))

(assert (= (and d!1238844 (not c!716409)) b!4202005))

(declare-fun m!4790225 () Bool)

(assert (=> b!4202005 m!4790225))

(declare-fun m!4790227 () Bool)

(assert (=> b!4202005 m!4790227))

(assert (=> d!1238514 d!1238844))

(declare-fun d!1238846 () Bool)

(declare-fun c!716410 () Bool)

(assert (=> d!1238846 (= c!716410 ((_ is Nil!46182) p!3001))))

(declare-fun e!2608432 () (InoxSet C!25436))

(assert (=> d!1238846 (= (content!7212 p!3001) e!2608432)))

(declare-fun b!4202006 () Bool)

(assert (=> b!4202006 (= e!2608432 ((as const (Array C!25436 Bool)) false))))

(declare-fun b!4202007 () Bool)

(assert (=> b!4202007 (= e!2608432 ((_ map or) (store ((as const (Array C!25436 Bool)) false) (h!51602 p!3001) true) (content!7212 (t!346811 p!3001))))))

(assert (= (and d!1238846 c!716410) b!4202006))

(assert (= (and d!1238846 (not c!716410)) b!4202007))

(declare-fun m!4790229 () Bool)

(assert (=> b!4202007 m!4790229))

(assert (=> b!4202007 m!4790121))

(assert (=> d!1238514 d!1238846))

(declare-fun d!1238848 () Bool)

(declare-fun c!716411 () Bool)

(assert (=> d!1238848 (= c!716411 ((_ is Nil!46182) suffix!1557))))

(declare-fun e!2608433 () (InoxSet C!25436))

(assert (=> d!1238848 (= (content!7212 suffix!1557) e!2608433)))

(declare-fun b!4202008 () Bool)

(assert (=> b!4202008 (= e!2608433 ((as const (Array C!25436 Bool)) false))))

(declare-fun b!4202009 () Bool)

(assert (=> b!4202009 (= e!2608433 ((_ map or) (store ((as const (Array C!25436 Bool)) false) (h!51602 suffix!1557) true) (content!7212 (t!346811 suffix!1557))))))

(assert (= (and d!1238848 c!716411) b!4202008))

(assert (= (and d!1238848 (not c!716411)) b!4202009))

(declare-fun m!4790231 () Bool)

(assert (=> b!4202009 m!4790231))

(declare-fun m!4790233 () Bool)

(assert (=> b!4202009 m!4790233))

(assert (=> d!1238514 d!1238848))

(declare-fun bs!597024 () Bool)

(declare-fun d!1238850 () Bool)

(assert (= bs!597024 (and d!1238850 d!1238764)))

(declare-fun lambda!129637 () Int)

(assert (=> bs!597024 (= (= (toValue!10420 (transformation!7716 (rule!10812 t!8364))) (toValue!10420 (transformation!7716 rBis!178))) (= lambda!129637 lambda!129628))))

(declare-fun bs!597025 () Bool)

(assert (= bs!597025 (and d!1238850 d!1238782)))

(assert (=> bs!597025 (= (= (toValue!10420 (transformation!7716 (rule!10812 t!8364))) (toValue!10420 (transformation!7716 (h!51603 rules!3967)))) (= lambda!129637 lambda!129629))))

(declare-fun bs!597026 () Bool)

(assert (= bs!597026 (and d!1238850 d!1238798)))

(assert (=> bs!597026 (= (= (toValue!10420 (transformation!7716 (rule!10812 t!8364))) (toValue!10420 (transformation!7716 (rule!10812 tBis!41)))) (= lambda!129637 lambda!129630))))

(assert (=> d!1238850 true))

(assert (=> d!1238850 (< (dynLambda!19918 order!24495 (toValue!10420 (transformation!7716 (rule!10812 t!8364)))) (dynLambda!19919 order!24497 lambda!129637))))

(assert (=> d!1238850 (= (equivClasses!3247 (toChars!10279 (transformation!7716 (rule!10812 t!8364))) (toValue!10420 (transformation!7716 (rule!10812 t!8364)))) (Forall2!1171 lambda!129637))))

(declare-fun bs!597027 () Bool)

(assert (= bs!597027 d!1238850))

(declare-fun m!4790235 () Bool)

(assert (=> bs!597027 m!4790235))

(assert (=> b!4201291 d!1238850))

(declare-fun b!4202010 () Bool)

(declare-fun e!2608435 () Bool)

(declare-fun e!2608436 () Bool)

(assert (=> b!4202010 (= e!2608435 e!2608436)))

(declare-fun res!1725678 () Bool)

(assert (=> b!4202010 (=> (not res!1725678) (not e!2608436))))

(assert (=> b!4202010 (= res!1725678 (not ((_ is Nil!46182) (tail!6763 input!3517))))))

(declare-fun d!1238852 () Bool)

(declare-fun e!2608434 () Bool)

(assert (=> d!1238852 e!2608434))

(declare-fun res!1725676 () Bool)

(assert (=> d!1238852 (=> res!1725676 e!2608434)))

(declare-fun lt!1496707 () Bool)

(assert (=> d!1238852 (= res!1725676 (not lt!1496707))))

(assert (=> d!1238852 (= lt!1496707 e!2608435)))

(declare-fun res!1725679 () Bool)

(assert (=> d!1238852 (=> res!1725679 e!2608435)))

(assert (=> d!1238852 (= res!1725679 ((_ is Nil!46182) (tail!6763 pBis!121)))))

(assert (=> d!1238852 (= (isPrefix!4575 (tail!6763 pBis!121) (tail!6763 input!3517)) lt!1496707)))

(declare-fun b!4202013 () Bool)

(assert (=> b!4202013 (= e!2608434 (>= (size!33934 (tail!6763 input!3517)) (size!33934 (tail!6763 pBis!121))))))

(declare-fun b!4202012 () Bool)

(assert (=> b!4202012 (= e!2608436 (isPrefix!4575 (tail!6763 (tail!6763 pBis!121)) (tail!6763 (tail!6763 input!3517))))))

(declare-fun b!4202011 () Bool)

(declare-fun res!1725677 () Bool)

(assert (=> b!4202011 (=> (not res!1725677) (not e!2608436))))

(assert (=> b!4202011 (= res!1725677 (= (head!8916 (tail!6763 pBis!121)) (head!8916 (tail!6763 input!3517))))))

(assert (= (and d!1238852 (not res!1725679)) b!4202010))

(assert (= (and b!4202010 res!1725678) b!4202011))

(assert (= (and b!4202011 res!1725677) b!4202012))

(assert (= (and d!1238852 (not res!1725676)) b!4202013))

(assert (=> b!4202013 m!4789301))

(assert (=> b!4202013 m!4790217))

(assert (=> b!4202013 m!4789299))

(declare-fun m!4790237 () Bool)

(assert (=> b!4202013 m!4790237))

(assert (=> b!4202012 m!4789299))

(declare-fun m!4790239 () Bool)

(assert (=> b!4202012 m!4790239))

(assert (=> b!4202012 m!4789301))

(assert (=> b!4202012 m!4790219))

(assert (=> b!4202012 m!4790239))

(assert (=> b!4202012 m!4790219))

(declare-fun m!4790241 () Bool)

(assert (=> b!4202012 m!4790241))

(assert (=> b!4202011 m!4789299))

(declare-fun m!4790243 () Bool)

(assert (=> b!4202011 m!4790243))

(assert (=> b!4202011 m!4789301))

(assert (=> b!4202011 m!4790223))

(assert (=> b!4201085 d!1238852))

(declare-fun d!1238854 () Bool)

(assert (=> d!1238854 (= (tail!6763 pBis!121) (t!346811 pBis!121))))

(assert (=> b!4201085 d!1238854))

(assert (=> b!4201085 d!1238842))

(declare-fun d!1238856 () Bool)

(assert (=> d!1238856 (= (isEmpty!27344 (originalCharacters!8098 tBis!41)) ((_ is Nil!46182) (originalCharacters!8098 tBis!41)))))

(assert (=> d!1238476 d!1238856))

(declare-fun d!1238858 () Bool)

(declare-fun lt!1496708 () Int)

(assert (=> d!1238858 (>= lt!1496708 0)))

(declare-fun e!2608437 () Int)

(assert (=> d!1238858 (= lt!1496708 e!2608437)))

(declare-fun c!716412 () Bool)

(assert (=> d!1238858 (= c!716412 ((_ is Nil!46182) (originalCharacters!8098 t!8364)))))

(assert (=> d!1238858 (= (size!33934 (originalCharacters!8098 t!8364)) lt!1496708)))

(declare-fun b!4202014 () Bool)

(assert (=> b!4202014 (= e!2608437 0)))

(declare-fun b!4202015 () Bool)

(assert (=> b!4202015 (= e!2608437 (+ 1 (size!33934 (t!346811 (originalCharacters!8098 t!8364)))))))

(assert (= (and d!1238858 c!716412) b!4202014))

(assert (= (and d!1238858 (not c!716412)) b!4202015))

(declare-fun m!4790245 () Bool)

(assert (=> b!4202015 m!4790245))

(assert (=> b!4201055 d!1238858))

(declare-fun d!1238860 () Bool)

(assert (=> d!1238860 (= (isEmpty!27345 lt!1496423) (not ((_ is Some!9903) lt!1496423)))))

(assert (=> d!1238536 d!1238860))

(assert (=> d!1238536 d!1238506))

(assert (=> d!1238536 d!1238508))

(declare-fun bs!597028 () Bool)

(declare-fun d!1238862 () Bool)

(assert (= bs!597028 (and d!1238862 d!1238832)))

(declare-fun lambda!129640 () Int)

(assert (=> bs!597028 (= lambda!129640 lambda!129636)))

(assert (=> d!1238862 true))

(declare-fun lt!1496711 () Bool)

(assert (=> d!1238862 (= lt!1496711 (forall!8484 rules!3967 lambda!129640))))

(declare-fun e!2608443 () Bool)

(assert (=> d!1238862 (= lt!1496711 e!2608443)))

(declare-fun res!1725685 () Bool)

(assert (=> d!1238862 (=> res!1725685 e!2608443)))

(assert (=> d!1238862 (= res!1725685 (not ((_ is Cons!46183) rules!3967)))))

(assert (=> d!1238862 (= (rulesValidInductive!2856 thiss!26544 rules!3967) lt!1496711)))

(declare-fun b!4202020 () Bool)

(declare-fun e!2608442 () Bool)

(assert (=> b!4202020 (= e!2608443 e!2608442)))

(declare-fun res!1725684 () Bool)

(assert (=> b!4202020 (=> (not res!1725684) (not e!2608442))))

(assert (=> b!4202020 (= res!1725684 (ruleValid!3428 thiss!26544 (h!51603 rules!3967)))))

(declare-fun b!4202021 () Bool)

(assert (=> b!4202021 (= e!2608442 (rulesValidInductive!2856 thiss!26544 (t!346812 rules!3967)))))

(assert (= (and d!1238862 (not res!1725685)) b!4202020))

(assert (= (and b!4202020 res!1725684) b!4202021))

(declare-fun m!4790247 () Bool)

(assert (=> d!1238862 m!4790247))

(assert (=> b!4202020 m!4789171))

(declare-fun m!4790249 () Bool)

(assert (=> b!4202021 m!4790249))

(assert (=> d!1238536 d!1238862))

(declare-fun d!1238864 () Bool)

(declare-fun c!716417 () Bool)

(assert (=> d!1238864 (= c!716417 ((_ is Empty!13927) (c!716229 (charsOf!5139 tBis!41))))))

(declare-fun e!2608448 () List!46306)

(assert (=> d!1238864 (= (list!16685 (c!716229 (charsOf!5139 tBis!41))) e!2608448)))

(declare-fun b!4202031 () Bool)

(declare-fun e!2608449 () List!46306)

(assert (=> b!4202031 (= e!2608448 e!2608449)))

(declare-fun c!716418 () Bool)

(assert (=> b!4202031 (= c!716418 ((_ is Leaf!21529) (c!716229 (charsOf!5139 tBis!41))))))

(declare-fun b!4202032 () Bool)

(declare-fun list!16686 (IArray!27859) List!46306)

(assert (=> b!4202032 (= e!2608449 (list!16686 (xs!17233 (c!716229 (charsOf!5139 tBis!41)))))))

(declare-fun b!4202030 () Bool)

(assert (=> b!4202030 (= e!2608448 Nil!46182)))

(declare-fun b!4202033 () Bool)

(assert (=> b!4202033 (= e!2608449 (++!11790 (list!16685 (left!34396 (c!716229 (charsOf!5139 tBis!41)))) (list!16685 (right!34726 (c!716229 (charsOf!5139 tBis!41))))))))

(assert (= (and d!1238864 c!716417) b!4202030))

(assert (= (and d!1238864 (not c!716417)) b!4202031))

(assert (= (and b!4202031 c!716418) b!4202032))

(assert (= (and b!4202031 (not c!716418)) b!4202033))

(declare-fun m!4790251 () Bool)

(assert (=> b!4202032 m!4790251))

(declare-fun m!4790253 () Bool)

(assert (=> b!4202033 m!4790253))

(declare-fun m!4790255 () Bool)

(assert (=> b!4202033 m!4790255))

(assert (=> b!4202033 m!4790253))

(assert (=> b!4202033 m!4790255))

(declare-fun m!4790257 () Bool)

(assert (=> b!4202033 m!4790257))

(assert (=> d!1238538 d!1238864))

(declare-fun d!1238866 () Bool)

(declare-fun c!716419 () Bool)

(assert (=> d!1238866 (= c!716419 ((_ is Nil!46182) lt!1496408))))

(declare-fun e!2608450 () (InoxSet C!25436))

(assert (=> d!1238866 (= (content!7212 lt!1496408) e!2608450)))

(declare-fun b!4202034 () Bool)

(assert (=> b!4202034 (= e!2608450 ((as const (Array C!25436 Bool)) false))))

(declare-fun b!4202035 () Bool)

(assert (=> b!4202035 (= e!2608450 ((_ map or) (store ((as const (Array C!25436 Bool)) false) (h!51602 lt!1496408) true) (content!7212 (t!346811 lt!1496408))))))

(assert (= (and d!1238866 c!716419) b!4202034))

(assert (= (and d!1238866 (not c!716419)) b!4202035))

(declare-fun m!4790259 () Bool)

(assert (=> b!4202035 m!4790259))

(declare-fun m!4790261 () Bool)

(assert (=> b!4202035 m!4790261))

(assert (=> d!1238534 d!1238866))

(declare-fun d!1238868 () Bool)

(declare-fun c!716420 () Bool)

(assert (=> d!1238868 (= c!716420 ((_ is Nil!46182) pBis!121))))

(declare-fun e!2608451 () (InoxSet C!25436))

(assert (=> d!1238868 (= (content!7212 pBis!121) e!2608451)))

(declare-fun b!4202036 () Bool)

(assert (=> b!4202036 (= e!2608451 ((as const (Array C!25436 Bool)) false))))

(declare-fun b!4202037 () Bool)

(assert (=> b!4202037 (= e!2608451 ((_ map or) (store ((as const (Array C!25436 Bool)) false) (h!51602 pBis!121) true) (content!7212 (t!346811 pBis!121))))))

(assert (= (and d!1238868 c!716420) b!4202036))

(assert (= (and d!1238868 (not c!716420)) b!4202037))

(declare-fun m!4790263 () Bool)

(assert (=> b!4202037 m!4790263))

(declare-fun m!4790265 () Bool)

(assert (=> b!4202037 m!4790265))

(assert (=> d!1238534 d!1238868))

(declare-fun d!1238870 () Bool)

(declare-fun c!716421 () Bool)

(assert (=> d!1238870 (= c!716421 ((_ is Nil!46182) suffixBis!41))))

(declare-fun e!2608452 () (InoxSet C!25436))

(assert (=> d!1238870 (= (content!7212 suffixBis!41) e!2608452)))

(declare-fun b!4202038 () Bool)

(assert (=> b!4202038 (= e!2608452 ((as const (Array C!25436 Bool)) false))))

(declare-fun b!4202039 () Bool)

(assert (=> b!4202039 (= e!2608452 ((_ map or) (store ((as const (Array C!25436 Bool)) false) (h!51602 suffixBis!41) true) (content!7212 (t!346811 suffixBis!41))))))

(assert (= (and d!1238870 c!716421) b!4202038))

(assert (= (and d!1238870 (not c!716421)) b!4202039))

(declare-fun m!4790267 () Bool)

(assert (=> b!4202039 m!4790267))

(declare-fun m!4790269 () Bool)

(assert (=> b!4202039 m!4790269))

(assert (=> d!1238534 d!1238870))

(declare-fun b!4202040 () Bool)

(declare-fun e!2608456 () Bool)

(declare-fun e!2608457 () Bool)

(assert (=> b!4202040 (= e!2608456 e!2608457)))

(declare-fun res!1725686 () Bool)

(assert (=> b!4202040 (=> (not res!1725686) (not e!2608457))))

(declare-fun call!292654 () Bool)

(assert (=> b!4202040 (= res!1725686 call!292654)))

(declare-fun b!4202041 () Bool)

(declare-fun call!292656 () Bool)

(assert (=> b!4202041 (= e!2608457 call!292656)))

(declare-fun bm!292649 () Bool)

(declare-fun call!292655 () Bool)

(assert (=> bm!292649 (= call!292654 call!292655)))

(declare-fun b!4202042 () Bool)

(declare-fun e!2608458 () Bool)

(assert (=> b!4202042 (= e!2608458 call!292656)))

(declare-fun b!4202043 () Bool)

(declare-fun e!2608455 () Bool)

(declare-fun e!2608453 () Bool)

(assert (=> b!4202043 (= e!2608455 e!2608453)))

(declare-fun c!716423 () Bool)

(assert (=> b!4202043 (= c!716423 ((_ is Union!12621) (regex!7716 (h!51603 rules!3967))))))

(declare-fun d!1238872 () Bool)

(declare-fun res!1725688 () Bool)

(declare-fun e!2608454 () Bool)

(assert (=> d!1238872 (=> res!1725688 e!2608454)))

(assert (=> d!1238872 (= res!1725688 ((_ is ElementMatch!12621) (regex!7716 (h!51603 rules!3967))))))

(assert (=> d!1238872 (= (validRegex!5726 (regex!7716 (h!51603 rules!3967))) e!2608454)))

(declare-fun b!4202044 () Bool)

(declare-fun res!1725687 () Bool)

(assert (=> b!4202044 (=> (not res!1725687) (not e!2608458))))

(assert (=> b!4202044 (= res!1725687 call!292654)))

(assert (=> b!4202044 (= e!2608453 e!2608458)))

(declare-fun bm!292650 () Bool)

(declare-fun c!716422 () Bool)

(assert (=> bm!292650 (= call!292655 (validRegex!5726 (ite c!716422 (reg!12950 (regex!7716 (h!51603 rules!3967))) (ite c!716423 (regOne!25755 (regex!7716 (h!51603 rules!3967))) (regOne!25754 (regex!7716 (h!51603 rules!3967)))))))))

(declare-fun b!4202045 () Bool)

(assert (=> b!4202045 (= e!2608454 e!2608455)))

(assert (=> b!4202045 (= c!716422 ((_ is Star!12621) (regex!7716 (h!51603 rules!3967))))))

(declare-fun b!4202046 () Bool)

(declare-fun res!1725689 () Bool)

(assert (=> b!4202046 (=> res!1725689 e!2608456)))

(assert (=> b!4202046 (= res!1725689 (not ((_ is Concat!20568) (regex!7716 (h!51603 rules!3967)))))))

(assert (=> b!4202046 (= e!2608453 e!2608456)))

(declare-fun b!4202047 () Bool)

(declare-fun e!2608459 () Bool)

(assert (=> b!4202047 (= e!2608459 call!292655)))

(declare-fun bm!292651 () Bool)

(assert (=> bm!292651 (= call!292656 (validRegex!5726 (ite c!716423 (regTwo!25755 (regex!7716 (h!51603 rules!3967))) (regTwo!25754 (regex!7716 (h!51603 rules!3967))))))))

(declare-fun b!4202048 () Bool)

(assert (=> b!4202048 (= e!2608455 e!2608459)))

(declare-fun res!1725690 () Bool)

(assert (=> b!4202048 (= res!1725690 (not (nullable!4439 (reg!12950 (regex!7716 (h!51603 rules!3967))))))))

(assert (=> b!4202048 (=> (not res!1725690) (not e!2608459))))

(assert (= (and d!1238872 (not res!1725688)) b!4202045))

(assert (= (and b!4202045 c!716422) b!4202048))

(assert (= (and b!4202045 (not c!716422)) b!4202043))

(assert (= (and b!4202048 res!1725690) b!4202047))

(assert (= (and b!4202043 c!716423) b!4202044))

(assert (= (and b!4202043 (not c!716423)) b!4202046))

(assert (= (and b!4202044 res!1725687) b!4202042))

(assert (= (and b!4202046 (not res!1725689)) b!4202040))

(assert (= (and b!4202040 res!1725686) b!4202041))

(assert (= (or b!4202042 b!4202041) bm!292651))

(assert (= (or b!4202044 b!4202040) bm!292649))

(assert (= (or b!4202047 bm!292649) bm!292650))

(declare-fun m!4790271 () Bool)

(assert (=> bm!292650 m!4790271))

(declare-fun m!4790273 () Bool)

(assert (=> bm!292651 m!4790273))

(declare-fun m!4790275 () Bool)

(assert (=> b!4202048 m!4790275))

(assert (=> d!1238474 d!1238872))

(declare-fun d!1238874 () Bool)

(assert (=> d!1238874 (= (inv!15 (value!240435 tBis!41)) (= (charsToBigInt!0 (text!56071 (value!240435 tBis!41)) 0) (value!240430 (value!240435 tBis!41))))))

(declare-fun bs!597029 () Bool)

(assert (= bs!597029 d!1238874))

(declare-fun m!4790277 () Bool)

(assert (=> bs!597029 m!4790277))

(assert (=> b!4201262 d!1238874))

(declare-fun bs!597030 () Bool)

(declare-fun d!1238876 () Bool)

(assert (= bs!597030 (and d!1238876 d!1238602)))

(declare-fun lambda!129641 () Int)

(assert (=> bs!597030 (= (and (= (toChars!10279 (transformation!7716 rBis!178)) (toChars!10279 (transformation!7716 (rule!10812 t!8364)))) (= (toValue!10420 (transformation!7716 rBis!178)) (toValue!10420 (transformation!7716 (rule!10812 t!8364))))) (= lambda!129641 lambda!129625))))

(declare-fun bs!597031 () Bool)

(assert (= bs!597031 (and d!1238876 d!1238814)))

(assert (=> bs!597031 (= lambda!129641 lambda!129633)))

(assert (=> d!1238876 true))

(assert (=> d!1238876 (< (dynLambda!19916 order!24491 (toChars!10279 (transformation!7716 rBis!178))) (dynLambda!19917 order!24493 lambda!129641))))

(assert (=> d!1238876 true))

(assert (=> d!1238876 (< (dynLambda!19918 order!24495 (toValue!10420 (transformation!7716 rBis!178))) (dynLambda!19917 order!24493 lambda!129641))))

(assert (=> d!1238876 (= (semiInverseModEq!3348 (toChars!10279 (transformation!7716 rBis!178)) (toValue!10420 (transformation!7716 rBis!178))) (Forall!1572 lambda!129641))))

(declare-fun bs!597032 () Bool)

(assert (= bs!597032 d!1238876))

(declare-fun m!4790279 () Bool)

(assert (=> bs!597032 m!4790279))

(assert (=> d!1238522 d!1238876))

(declare-fun d!1238878 () Bool)

(assert (=> d!1238878 (= (list!16683 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 tBis!41))) (value!240435 tBis!41))) (list!16685 (c!716229 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 tBis!41))) (value!240435 tBis!41)))))))

(declare-fun bs!597033 () Bool)

(assert (= bs!597033 d!1238878))

(declare-fun m!4790281 () Bool)

(assert (=> bs!597033 m!4790281))

(assert (=> b!4201047 d!1238878))

(declare-fun d!1238880 () Bool)

(declare-fun lt!1496712 () Int)

(assert (=> d!1238880 (>= lt!1496712 0)))

(declare-fun e!2608460 () Int)

(assert (=> d!1238880 (= lt!1496712 e!2608460)))

(declare-fun c!716424 () Bool)

(assert (=> d!1238880 (= c!716424 ((_ is Nil!46182) lt!1496403))))

(assert (=> d!1238880 (= (size!33934 lt!1496403) lt!1496712)))

(declare-fun b!4202049 () Bool)

(assert (=> b!4202049 (= e!2608460 0)))

(declare-fun b!4202050 () Bool)

(assert (=> b!4202050 (= e!2608460 (+ 1 (size!33934 (t!346811 lt!1496403))))))

(assert (= (and d!1238880 c!716424) b!4202049))

(assert (= (and d!1238880 (not c!716424)) b!4202050))

(declare-fun m!4790283 () Bool)

(assert (=> b!4202050 m!4790283))

(assert (=> b!4201278 d!1238880))

(assert (=> b!4201278 d!1238828))

(declare-fun d!1238882 () Bool)

(declare-fun lt!1496713 () Int)

(assert (=> d!1238882 (>= lt!1496713 0)))

(declare-fun e!2608461 () Int)

(assert (=> d!1238882 (= lt!1496713 e!2608461)))

(declare-fun c!716425 () Bool)

(assert (=> d!1238882 (= c!716425 ((_ is Nil!46182) suffix!1557))))

(assert (=> d!1238882 (= (size!33934 suffix!1557) lt!1496713)))

(declare-fun b!4202051 () Bool)

(assert (=> b!4202051 (= e!2608461 0)))

(declare-fun b!4202052 () Bool)

(assert (=> b!4202052 (= e!2608461 (+ 1 (size!33934 (t!346811 suffix!1557))))))

(assert (= (and d!1238882 c!716425) b!4202051))

(assert (= (and d!1238882 (not c!716425)) b!4202052))

(declare-fun m!4790285 () Bool)

(assert (=> b!4202052 m!4790285))

(assert (=> b!4201278 d!1238882))

(declare-fun d!1238884 () Bool)

(assert (=> d!1238884 (= (nullable!4439 (regex!7716 (h!51603 rules!3967))) (nullableFct!1220 (regex!7716 (h!51603 rules!3967))))))

(declare-fun bs!597034 () Bool)

(assert (= bs!597034 d!1238884))

(declare-fun m!4790287 () Bool)

(assert (=> bs!597034 m!4790287))

(assert (=> b!4201041 d!1238884))

(declare-fun d!1238886 () Bool)

(declare-fun charsToInt!0 (List!46305) (_ BitVec 32))

(assert (=> d!1238886 (= (inv!16 (value!240435 tBis!41)) (= (charsToInt!0 (text!56069 (value!240435 tBis!41))) (value!240426 (value!240435 tBis!41))))))

(declare-fun bs!597035 () Bool)

(assert (= bs!597035 d!1238886))

(declare-fun m!4790289 () Bool)

(assert (=> bs!597035 m!4790289))

(assert (=> b!4201259 d!1238886))

(declare-fun b!4202055 () Bool)

(declare-fun res!1725692 () Bool)

(declare-fun e!2608462 () Bool)

(assert (=> b!4202055 (=> (not res!1725692) (not e!2608462))))

(declare-fun lt!1496714 () List!46306)

(assert (=> b!4202055 (= res!1725692 (= (size!33934 lt!1496714) (+ (size!33934 (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496392))))) (size!33934 (_2!25103 (get!15020 lt!1496392))))))))

(declare-fun d!1238888 () Bool)

(assert (=> d!1238888 e!2608462))

(declare-fun res!1725691 () Bool)

(assert (=> d!1238888 (=> (not res!1725691) (not e!2608462))))

(assert (=> d!1238888 (= res!1725691 (= (content!7212 lt!1496714) ((_ map or) (content!7212 (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496392))))) (content!7212 (_2!25103 (get!15020 lt!1496392))))))))

(declare-fun e!2608463 () List!46306)

(assert (=> d!1238888 (= lt!1496714 e!2608463)))

(declare-fun c!716426 () Bool)

(assert (=> d!1238888 (= c!716426 ((_ is Nil!46182) (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496392))))))))

(assert (=> d!1238888 (= (++!11790 (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496392)))) (_2!25103 (get!15020 lt!1496392))) lt!1496714)))

(declare-fun b!4202054 () Bool)

(assert (=> b!4202054 (= e!2608463 (Cons!46182 (h!51602 (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496392))))) (++!11790 (t!346811 (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496392))))) (_2!25103 (get!15020 lt!1496392)))))))

(declare-fun b!4202056 () Bool)

(assert (=> b!4202056 (= e!2608462 (or (not (= (_2!25103 (get!15020 lt!1496392)) Nil!46182)) (= lt!1496714 (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496392)))))))))

(declare-fun b!4202053 () Bool)

(assert (=> b!4202053 (= e!2608463 (_2!25103 (get!15020 lt!1496392)))))

(assert (= (and d!1238888 c!716426) b!4202053))

(assert (= (and d!1238888 (not c!716426)) b!4202054))

(assert (= (and d!1238888 res!1725691) b!4202055))

(assert (= (and b!4202055 res!1725692) b!4202056))

(declare-fun m!4790291 () Bool)

(assert (=> b!4202055 m!4790291))

(assert (=> b!4202055 m!4789435))

(declare-fun m!4790293 () Bool)

(assert (=> b!4202055 m!4790293))

(assert (=> b!4202055 m!4789469))

(declare-fun m!4790295 () Bool)

(assert (=> d!1238888 m!4790295))

(assert (=> d!1238888 m!4789435))

(declare-fun m!4790297 () Bool)

(assert (=> d!1238888 m!4790297))

(declare-fun m!4790299 () Bool)

(assert (=> d!1238888 m!4790299))

(declare-fun m!4790301 () Bool)

(assert (=> b!4202054 m!4790301))

(assert (=> b!4201242 d!1238888))

(declare-fun d!1238890 () Bool)

(assert (=> d!1238890 (= (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496392)))) (list!16685 (c!716229 (charsOf!5139 (_1!25103 (get!15020 lt!1496392))))))))

(declare-fun bs!597036 () Bool)

(assert (= bs!597036 d!1238890))

(declare-fun m!4790303 () Bool)

(assert (=> bs!597036 m!4790303))

(assert (=> b!4201242 d!1238890))

(declare-fun d!1238892 () Bool)

(declare-fun lt!1496715 () BalanceConc!27448)

(assert (=> d!1238892 (= (list!16683 lt!1496715) (originalCharacters!8098 (_1!25103 (get!15020 lt!1496392))))))

(assert (=> d!1238892 (= lt!1496715 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496392))))) (value!240435 (_1!25103 (get!15020 lt!1496392)))))))

(assert (=> d!1238892 (= (charsOf!5139 (_1!25103 (get!15020 lt!1496392))) lt!1496715)))

(declare-fun b_lambda!123683 () Bool)

(assert (=> (not b_lambda!123683) (not d!1238892)))

(declare-fun tb!251881 () Bool)

(declare-fun t!346984 () Bool)

(assert (=> (and b!4200966 (= (toChars!10279 (transformation!7716 (h!51603 rules!3967))) (toChars!10279 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496392)))))) t!346984) tb!251881))

(declare-fun b!4202057 () Bool)

(declare-fun e!2608464 () Bool)

(declare-fun tp!1283918 () Bool)

(assert (=> b!4202057 (= e!2608464 (and (inv!60744 (c!716229 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496392))))) (value!240435 (_1!25103 (get!15020 lt!1496392)))))) tp!1283918))))

(declare-fun result!307024 () Bool)

(assert (=> tb!251881 (= result!307024 (and (inv!60745 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496392))))) (value!240435 (_1!25103 (get!15020 lt!1496392))))) e!2608464))))

(assert (= tb!251881 b!4202057))

(declare-fun m!4790305 () Bool)

(assert (=> b!4202057 m!4790305))

(declare-fun m!4790307 () Bool)

(assert (=> tb!251881 m!4790307))

(assert (=> d!1238892 t!346984))

(declare-fun b_and!329887 () Bool)

(assert (= b_and!329877 (and (=> t!346984 result!307024) b_and!329887)))

(declare-fun tb!251883 () Bool)

(declare-fun t!346986 () Bool)

(assert (=> (and b!4201369 (= (toChars!10279 (transformation!7716 (h!51603 (t!346812 rules!3967)))) (toChars!10279 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496392)))))) t!346986) tb!251883))

(declare-fun result!307026 () Bool)

(assert (= result!307026 result!307024))

(assert (=> d!1238892 t!346986))

(declare-fun b_and!329889 () Bool)

(assert (= b_and!329883 (and (=> t!346986 result!307026) b_and!329889)))

(declare-fun t!346988 () Bool)

(declare-fun tb!251885 () Bool)

(assert (=> (and b!4200957 (= (toChars!10279 (transformation!7716 rBis!178)) (toChars!10279 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496392)))))) t!346988) tb!251885))

(declare-fun result!307028 () Bool)

(assert (= result!307028 result!307024))

(assert (=> d!1238892 t!346988))

(declare-fun b_and!329891 () Bool)

(assert (= b_and!329879 (and (=> t!346988 result!307028) b_and!329891)))

(declare-fun tb!251887 () Bool)

(declare-fun t!346990 () Bool)

(assert (=> (and b!4200958 (= (toChars!10279 (transformation!7716 (rule!10812 t!8364))) (toChars!10279 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496392)))))) t!346990) tb!251887))

(declare-fun result!307030 () Bool)

(assert (= result!307030 result!307024))

(assert (=> d!1238892 t!346990))

(declare-fun b_and!329893 () Bool)

(assert (= b_and!329881 (and (=> t!346990 result!307030) b_and!329893)))

(declare-fun t!346992 () Bool)

(declare-fun tb!251889 () Bool)

(assert (=> (and b!4200976 (= (toChars!10279 (transformation!7716 (rule!10812 tBis!41))) (toChars!10279 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496392)))))) t!346992) tb!251889))

(declare-fun result!307032 () Bool)

(assert (= result!307032 result!307024))

(assert (=> d!1238892 t!346992))

(declare-fun b_and!329895 () Bool)

(assert (= b_and!329885 (and (=> t!346992 result!307032) b_and!329895)))

(declare-fun m!4790309 () Bool)

(assert (=> d!1238892 m!4790309))

(declare-fun m!4790311 () Bool)

(assert (=> d!1238892 m!4790311))

(assert (=> b!4201242 d!1238892))

(assert (=> b!4201242 d!1238784))

(declare-fun d!1238894 () Bool)

(assert (=> d!1238894 (= (inv!16 (value!240435 t!8364)) (= (charsToInt!0 (text!56069 (value!240435 t!8364))) (value!240426 (value!240435 t!8364))))))

(declare-fun bs!597037 () Bool)

(assert (= bs!597037 d!1238894))

(declare-fun m!4790313 () Bool)

(assert (=> bs!597037 m!4790313))

(assert (=> b!4201264 d!1238894))

(declare-fun bs!597038 () Bool)

(declare-fun d!1238896 () Bool)

(assert (= bs!597038 (and d!1238896 d!1238602)))

(declare-fun lambda!129642 () Int)

(assert (=> bs!597038 (= (and (= (toChars!10279 (transformation!7716 (rule!10812 tBis!41))) (toChars!10279 (transformation!7716 (rule!10812 t!8364)))) (= (toValue!10420 (transformation!7716 (rule!10812 tBis!41))) (toValue!10420 (transformation!7716 (rule!10812 t!8364))))) (= lambda!129642 lambda!129625))))

(declare-fun bs!597039 () Bool)

(assert (= bs!597039 (and d!1238896 d!1238814)))

(assert (=> bs!597039 (= (and (= (toChars!10279 (transformation!7716 (rule!10812 tBis!41))) (toChars!10279 (transformation!7716 rBis!178))) (= (toValue!10420 (transformation!7716 (rule!10812 tBis!41))) (toValue!10420 (transformation!7716 rBis!178)))) (= lambda!129642 lambda!129633))))

(declare-fun bs!597040 () Bool)

(assert (= bs!597040 (and d!1238896 d!1238876)))

(assert (=> bs!597040 (= (and (= (toChars!10279 (transformation!7716 (rule!10812 tBis!41))) (toChars!10279 (transformation!7716 rBis!178))) (= (toValue!10420 (transformation!7716 (rule!10812 tBis!41))) (toValue!10420 (transformation!7716 rBis!178)))) (= lambda!129642 lambda!129641))))

(assert (=> d!1238896 true))

(assert (=> d!1238896 (< (dynLambda!19916 order!24491 (toChars!10279 (transformation!7716 (rule!10812 tBis!41)))) (dynLambda!19917 order!24493 lambda!129642))))

(assert (=> d!1238896 true))

(assert (=> d!1238896 (< (dynLambda!19918 order!24495 (toValue!10420 (transformation!7716 (rule!10812 tBis!41)))) (dynLambda!19917 order!24493 lambda!129642))))

(assert (=> d!1238896 (= (semiInverseModEq!3348 (toChars!10279 (transformation!7716 (rule!10812 tBis!41))) (toValue!10420 (transformation!7716 (rule!10812 tBis!41)))) (Forall!1572 lambda!129642))))

(declare-fun bs!597041 () Bool)

(assert (= bs!597041 d!1238896))

(declare-fun m!4790315 () Bool)

(assert (=> bs!597041 m!4790315))

(assert (=> d!1238484 d!1238896))

(declare-fun d!1238898 () Bool)

(declare-fun e!2608468 () Bool)

(assert (=> d!1238898 e!2608468))

(declare-fun res!1725693 () Bool)

(assert (=> d!1238898 (=> res!1725693 e!2608468)))

(declare-fun lt!1496716 () Option!9904)

(assert (=> d!1238898 (= res!1725693 (isEmpty!27345 lt!1496716))))

(declare-fun e!2608465 () Option!9904)

(assert (=> d!1238898 (= lt!1496716 e!2608465)))

(declare-fun c!716427 () Bool)

(declare-fun lt!1496720 () tuple2!43942)

(assert (=> d!1238898 (= c!716427 (isEmpty!27344 (_1!25105 lt!1496720)))))

(assert (=> d!1238898 (= lt!1496720 (findLongestMatch!1540 (regex!7716 (h!51603 rules!3967)) input!3517))))

(assert (=> d!1238898 (ruleValid!3428 thiss!26544 (h!51603 rules!3967))))

(assert (=> d!1238898 (= (maxPrefixOneRule!3306 thiss!26544 (h!51603 rules!3967) input!3517) lt!1496716)))

(declare-fun b!4202058 () Bool)

(declare-fun e!2608466 () Bool)

(assert (=> b!4202058 (= e!2608466 (matchR!6346 (regex!7716 (h!51603 rules!3967)) (_1!25105 (findLongestMatchInner!1627 (regex!7716 (h!51603 rules!3967)) Nil!46182 (size!33934 Nil!46182) input!3517 input!3517 (size!33934 input!3517)))))))

(declare-fun b!4202059 () Bool)

(assert (=> b!4202059 (= e!2608465 None!9903)))

(declare-fun b!4202060 () Bool)

(declare-fun res!1725695 () Bool)

(declare-fun e!2608467 () Bool)

(assert (=> b!4202060 (=> (not res!1725695) (not e!2608467))))

(assert (=> b!4202060 (= res!1725695 (< (size!33934 (_2!25103 (get!15020 lt!1496716))) (size!33934 input!3517)))))

(declare-fun b!4202061 () Bool)

(assert (=> b!4202061 (= e!2608468 e!2608467)))

(declare-fun res!1725698 () Bool)

(assert (=> b!4202061 (=> (not res!1725698) (not e!2608467))))

(assert (=> b!4202061 (= res!1725698 (matchR!6346 (regex!7716 (h!51603 rules!3967)) (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496716))))))))

(declare-fun b!4202062 () Bool)

(assert (=> b!4202062 (= e!2608465 (Some!9903 (tuple2!43939 (Token!14135 (apply!10667 (transformation!7716 (h!51603 rules!3967)) (seqFromList!5727 (_1!25105 lt!1496720))) (h!51603 rules!3967) (size!33935 (seqFromList!5727 (_1!25105 lt!1496720))) (_1!25105 lt!1496720)) (_2!25105 lt!1496720))))))

(declare-fun lt!1496717 () Unit!65271)

(assert (=> b!4202062 (= lt!1496717 (longestMatchIsAcceptedByMatchOrIsEmpty!1600 (regex!7716 (h!51603 rules!3967)) input!3517))))

(declare-fun res!1725697 () Bool)

(assert (=> b!4202062 (= res!1725697 (isEmpty!27344 (_1!25105 (findLongestMatchInner!1627 (regex!7716 (h!51603 rules!3967)) Nil!46182 (size!33934 Nil!46182) input!3517 input!3517 (size!33934 input!3517)))))))

(assert (=> b!4202062 (=> res!1725697 e!2608466)))

(assert (=> b!4202062 e!2608466))

(declare-fun lt!1496719 () Unit!65271)

(assert (=> b!4202062 (= lt!1496719 lt!1496717)))

(declare-fun lt!1496718 () Unit!65271)

(assert (=> b!4202062 (= lt!1496718 (lemmaSemiInverse!2468 (transformation!7716 (h!51603 rules!3967)) (seqFromList!5727 (_1!25105 lt!1496720))))))

(declare-fun b!4202063 () Bool)

(declare-fun res!1725699 () Bool)

(assert (=> b!4202063 (=> (not res!1725699) (not e!2608467))))

(assert (=> b!4202063 (= res!1725699 (= (rule!10812 (_1!25103 (get!15020 lt!1496716))) (h!51603 rules!3967)))))

(declare-fun b!4202064 () Bool)

(declare-fun res!1725696 () Bool)

(assert (=> b!4202064 (=> (not res!1725696) (not e!2608467))))

(assert (=> b!4202064 (= res!1725696 (= (value!240435 (_1!25103 (get!15020 lt!1496716))) (apply!10667 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496716)))) (seqFromList!5727 (originalCharacters!8098 (_1!25103 (get!15020 lt!1496716)))))))))

(declare-fun b!4202065 () Bool)

(declare-fun res!1725694 () Bool)

(assert (=> b!4202065 (=> (not res!1725694) (not e!2608467))))

(assert (=> b!4202065 (= res!1725694 (= (++!11790 (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496716)))) (_2!25103 (get!15020 lt!1496716))) input!3517))))

(declare-fun b!4202066 () Bool)

(assert (=> b!4202066 (= e!2608467 (= (size!33931 (_1!25103 (get!15020 lt!1496716))) (size!33934 (originalCharacters!8098 (_1!25103 (get!15020 lt!1496716))))))))

(assert (= (and d!1238898 c!716427) b!4202059))

(assert (= (and d!1238898 (not c!716427)) b!4202062))

(assert (= (and b!4202062 (not res!1725697)) b!4202058))

(assert (= (and d!1238898 (not res!1725693)) b!4202061))

(assert (= (and b!4202061 res!1725698) b!4202065))

(assert (= (and b!4202065 res!1725694) b!4202060))

(assert (= (and b!4202060 res!1725695) b!4202063))

(assert (= (and b!4202063 res!1725699) b!4202064))

(assert (= (and b!4202064 res!1725696) b!4202066))

(declare-fun m!4790317 () Bool)

(assert (=> b!4202061 m!4790317))

(declare-fun m!4790319 () Bool)

(assert (=> b!4202061 m!4790319))

(assert (=> b!4202061 m!4790319))

(declare-fun m!4790321 () Bool)

(assert (=> b!4202061 m!4790321))

(assert (=> b!4202061 m!4790321))

(declare-fun m!4790323 () Bool)

(assert (=> b!4202061 m!4790323))

(declare-fun m!4790325 () Bool)

(assert (=> b!4202062 m!4790325))

(declare-fun m!4790327 () Bool)

(assert (=> b!4202062 m!4790327))

(assert (=> b!4202062 m!4790325))

(declare-fun m!4790329 () Bool)

(assert (=> b!4202062 m!4790329))

(assert (=> b!4202062 m!4789295))

(assert (=> b!4202062 m!4790325))

(assert (=> b!4202062 m!4789445))

(declare-fun m!4790331 () Bool)

(assert (=> b!4202062 m!4790331))

(declare-fun m!4790333 () Bool)

(assert (=> b!4202062 m!4790333))

(assert (=> b!4202062 m!4790325))

(declare-fun m!4790335 () Bool)

(assert (=> b!4202062 m!4790335))

(assert (=> b!4202062 m!4789445))

(assert (=> b!4202062 m!4789295))

(declare-fun m!4790337 () Bool)

(assert (=> b!4202062 m!4790337))

(assert (=> b!4202063 m!4790317))

(assert (=> b!4202065 m!4790317))

(assert (=> b!4202065 m!4790319))

(assert (=> b!4202065 m!4790319))

(assert (=> b!4202065 m!4790321))

(assert (=> b!4202065 m!4790321))

(declare-fun m!4790339 () Bool)

(assert (=> b!4202065 m!4790339))

(declare-fun m!4790341 () Bool)

(assert (=> d!1238898 m!4790341))

(declare-fun m!4790343 () Bool)

(assert (=> d!1238898 m!4790343))

(declare-fun m!4790345 () Bool)

(assert (=> d!1238898 m!4790345))

(assert (=> d!1238898 m!4789171))

(assert (=> b!4202058 m!4789445))

(assert (=> b!4202058 m!4789295))

(assert (=> b!4202058 m!4789445))

(assert (=> b!4202058 m!4789295))

(assert (=> b!4202058 m!4790337))

(declare-fun m!4790347 () Bool)

(assert (=> b!4202058 m!4790347))

(assert (=> b!4202064 m!4790317))

(declare-fun m!4790349 () Bool)

(assert (=> b!4202064 m!4790349))

(assert (=> b!4202064 m!4790349))

(declare-fun m!4790351 () Bool)

(assert (=> b!4202064 m!4790351))

(assert (=> b!4202060 m!4790317))

(declare-fun m!4790353 () Bool)

(assert (=> b!4202060 m!4790353))

(assert (=> b!4202060 m!4789295))

(assert (=> b!4202066 m!4790317))

(declare-fun m!4790355 () Bool)

(assert (=> b!4202066 m!4790355))

(assert (=> bm!292569 d!1238898))

(declare-fun bs!597042 () Bool)

(declare-fun d!1238900 () Bool)

(assert (= bs!597042 (and d!1238900 d!1238602)))

(declare-fun lambda!129643 () Int)

(assert (=> bs!597042 (= (and (= (toChars!10279 (transformation!7716 (h!51603 rules!3967))) (toChars!10279 (transformation!7716 (rule!10812 t!8364)))) (= (toValue!10420 (transformation!7716 (h!51603 rules!3967))) (toValue!10420 (transformation!7716 (rule!10812 t!8364))))) (= lambda!129643 lambda!129625))))

(declare-fun bs!597043 () Bool)

(assert (= bs!597043 (and d!1238900 d!1238814)))

(assert (=> bs!597043 (= (and (= (toChars!10279 (transformation!7716 (h!51603 rules!3967))) (toChars!10279 (transformation!7716 rBis!178))) (= (toValue!10420 (transformation!7716 (h!51603 rules!3967))) (toValue!10420 (transformation!7716 rBis!178)))) (= lambda!129643 lambda!129633))))

(declare-fun bs!597044 () Bool)

(assert (= bs!597044 (and d!1238900 d!1238876)))

(assert (=> bs!597044 (= (and (= (toChars!10279 (transformation!7716 (h!51603 rules!3967))) (toChars!10279 (transformation!7716 rBis!178))) (= (toValue!10420 (transformation!7716 (h!51603 rules!3967))) (toValue!10420 (transformation!7716 rBis!178)))) (= lambda!129643 lambda!129641))))

(declare-fun bs!597045 () Bool)

(assert (= bs!597045 (and d!1238900 d!1238896)))

(assert (=> bs!597045 (= (and (= (toChars!10279 (transformation!7716 (h!51603 rules!3967))) (toChars!10279 (transformation!7716 (rule!10812 tBis!41)))) (= (toValue!10420 (transformation!7716 (h!51603 rules!3967))) (toValue!10420 (transformation!7716 (rule!10812 tBis!41))))) (= lambda!129643 lambda!129642))))

(assert (=> d!1238900 true))

(assert (=> d!1238900 (< (dynLambda!19916 order!24491 (toChars!10279 (transformation!7716 (h!51603 rules!3967)))) (dynLambda!19917 order!24493 lambda!129643))))

(assert (=> d!1238900 true))

(assert (=> d!1238900 (< (dynLambda!19918 order!24495 (toValue!10420 (transformation!7716 (h!51603 rules!3967)))) (dynLambda!19917 order!24493 lambda!129643))))

(assert (=> d!1238900 (= (semiInverseModEq!3348 (toChars!10279 (transformation!7716 (h!51603 rules!3967))) (toValue!10420 (transformation!7716 (h!51603 rules!3967)))) (Forall!1572 lambda!129643))))

(declare-fun bs!597046 () Bool)

(assert (= bs!597046 d!1238900))

(declare-fun m!4790357 () Bool)

(assert (=> bs!597046 m!4790357))

(assert (=> d!1238532 d!1238900))

(assert (=> b!4201240 d!1238784))

(declare-fun d!1238902 () Bool)

(declare-fun lt!1496721 () Bool)

(assert (=> d!1238902 (= lt!1496721 (select (content!7213 (t!346812 rules!3967)) rBis!178))))

(declare-fun e!2608469 () Bool)

(assert (=> d!1238902 (= lt!1496721 e!2608469)))

(declare-fun res!1725700 () Bool)

(assert (=> d!1238902 (=> (not res!1725700) (not e!2608469))))

(assert (=> d!1238902 (= res!1725700 ((_ is Cons!46183) (t!346812 rules!3967)))))

(assert (=> d!1238902 (= (contains!9529 (t!346812 rules!3967) rBis!178) lt!1496721)))

(declare-fun b!4202067 () Bool)

(declare-fun e!2608470 () Bool)

(assert (=> b!4202067 (= e!2608469 e!2608470)))

(declare-fun res!1725701 () Bool)

(assert (=> b!4202067 (=> res!1725701 e!2608470)))

(assert (=> b!4202067 (= res!1725701 (= (h!51603 (t!346812 rules!3967)) rBis!178))))

(declare-fun b!4202068 () Bool)

(assert (=> b!4202068 (= e!2608470 (contains!9529 (t!346812 (t!346812 rules!3967)) rBis!178))))

(assert (= (and d!1238902 res!1725700) b!4202067))

(assert (= (and b!4202067 (not res!1725701)) b!4202068))

(assert (=> d!1238902 m!4790209))

(declare-fun m!4790359 () Bool)

(assert (=> d!1238902 m!4790359))

(declare-fun m!4790361 () Bool)

(assert (=> b!4202068 m!4790361))

(assert (=> b!4201290 d!1238902))

(declare-fun b!4202069 () Bool)

(declare-fun e!2608471 () Bool)

(declare-fun e!2608477 () Bool)

(assert (=> b!4202069 (= e!2608471 e!2608477)))

(declare-fun res!1725705 () Bool)

(assert (=> b!4202069 (=> res!1725705 e!2608477)))

(declare-fun call!292657 () Bool)

(assert (=> b!4202069 (= res!1725705 call!292657)))

(declare-fun b!4202070 () Bool)

(declare-fun res!1725709 () Bool)

(declare-fun e!2608474 () Bool)

(assert (=> b!4202070 (=> res!1725709 e!2608474)))

(declare-fun e!2608472 () Bool)

(assert (=> b!4202070 (= res!1725709 e!2608472)))

(declare-fun res!1725703 () Bool)

(assert (=> b!4202070 (=> (not res!1725703) (not e!2608472))))

(declare-fun lt!1496722 () Bool)

(assert (=> b!4202070 (= res!1725703 lt!1496722)))

(declare-fun b!4202071 () Bool)

(declare-fun res!1725708 () Bool)

(assert (=> b!4202071 (=> (not res!1725708) (not e!2608472))))

(assert (=> b!4202071 (= res!1725708 (isEmpty!27344 (tail!6763 (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496392)))))))))

(declare-fun b!4202072 () Bool)

(assert (=> b!4202072 (= e!2608474 e!2608471)))

(declare-fun res!1725706 () Bool)

(assert (=> b!4202072 (=> (not res!1725706) (not e!2608471))))

(assert (=> b!4202072 (= res!1725706 (not lt!1496722))))

(declare-fun b!4202073 () Bool)

(declare-fun res!1725702 () Bool)

(assert (=> b!4202073 (=> res!1725702 e!2608474)))

(assert (=> b!4202073 (= res!1725702 (not ((_ is ElementMatch!12621) (regex!7716 rBis!178))))))

(declare-fun e!2608473 () Bool)

(assert (=> b!4202073 (= e!2608473 e!2608474)))

(declare-fun b!4202074 () Bool)

(declare-fun e!2608475 () Bool)

(assert (=> b!4202074 (= e!2608475 (nullable!4439 (regex!7716 rBis!178)))))

(declare-fun d!1238904 () Bool)

(declare-fun e!2608476 () Bool)

(assert (=> d!1238904 e!2608476))

(declare-fun c!716429 () Bool)

(assert (=> d!1238904 (= c!716429 ((_ is EmptyExpr!12621) (regex!7716 rBis!178)))))

(assert (=> d!1238904 (= lt!1496722 e!2608475)))

(declare-fun c!716430 () Bool)

(assert (=> d!1238904 (= c!716430 (isEmpty!27344 (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496392))))))))

(assert (=> d!1238904 (validRegex!5726 (regex!7716 rBis!178))))

(assert (=> d!1238904 (= (matchR!6346 (regex!7716 rBis!178) (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496392))))) lt!1496722)))

(declare-fun b!4202075 () Bool)

(assert (=> b!4202075 (= e!2608476 e!2608473)))

(declare-fun c!716428 () Bool)

(assert (=> b!4202075 (= c!716428 ((_ is EmptyLang!12621) (regex!7716 rBis!178)))))

(declare-fun b!4202076 () Bool)

(assert (=> b!4202076 (= e!2608476 (= lt!1496722 call!292657))))

(declare-fun b!4202077 () Bool)

(assert (=> b!4202077 (= e!2608475 (matchR!6346 (derivativeStep!3827 (regex!7716 rBis!178) (head!8916 (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496392)))))) (tail!6763 (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496392)))))))))

(declare-fun b!4202078 () Bool)

(assert (=> b!4202078 (= e!2608477 (not (= (head!8916 (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496392))))) (c!716228 (regex!7716 rBis!178)))))))

(declare-fun b!4202079 () Bool)

(assert (=> b!4202079 (= e!2608473 (not lt!1496722))))

(declare-fun b!4202080 () Bool)

(assert (=> b!4202080 (= e!2608472 (= (head!8916 (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496392))))) (c!716228 (regex!7716 rBis!178))))))

(declare-fun b!4202081 () Bool)

(declare-fun res!1725704 () Bool)

(assert (=> b!4202081 (=> res!1725704 e!2608477)))

(assert (=> b!4202081 (= res!1725704 (not (isEmpty!27344 (tail!6763 (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496392))))))))))

(declare-fun b!4202082 () Bool)

(declare-fun res!1725707 () Bool)

(assert (=> b!4202082 (=> (not res!1725707) (not e!2608472))))

(assert (=> b!4202082 (= res!1725707 (not call!292657))))

(declare-fun bm!292652 () Bool)

(assert (=> bm!292652 (= call!292657 (isEmpty!27344 (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496392))))))))

(assert (= (and d!1238904 c!716430) b!4202074))

(assert (= (and d!1238904 (not c!716430)) b!4202077))

(assert (= (and d!1238904 c!716429) b!4202076))

(assert (= (and d!1238904 (not c!716429)) b!4202075))

(assert (= (and b!4202075 c!716428) b!4202079))

(assert (= (and b!4202075 (not c!716428)) b!4202073))

(assert (= (and b!4202073 (not res!1725702)) b!4202070))

(assert (= (and b!4202070 res!1725703) b!4202082))

(assert (= (and b!4202082 res!1725707) b!4202071))

(assert (= (and b!4202071 res!1725708) b!4202080))

(assert (= (and b!4202070 (not res!1725709)) b!4202072))

(assert (= (and b!4202072 res!1725706) b!4202069))

(assert (= (and b!4202069 (not res!1725705)) b!4202081))

(assert (= (and b!4202081 (not res!1725704)) b!4202078))

(assert (= (or b!4202076 b!4202069 b!4202082) bm!292652))

(assert (=> b!4202078 m!4789435))

(declare-fun m!4790363 () Bool)

(assert (=> b!4202078 m!4790363))

(assert (=> bm!292652 m!4789435))

(declare-fun m!4790365 () Bool)

(assert (=> bm!292652 m!4790365))

(assert (=> b!4202080 m!4789435))

(assert (=> b!4202080 m!4790363))

(assert (=> b!4202081 m!4789435))

(declare-fun m!4790367 () Bool)

(assert (=> b!4202081 m!4790367))

(assert (=> b!4202081 m!4790367))

(declare-fun m!4790369 () Bool)

(assert (=> b!4202081 m!4790369))

(assert (=> b!4202074 m!4789577))

(assert (=> b!4202071 m!4789435))

(assert (=> b!4202071 m!4790367))

(assert (=> b!4202071 m!4790367))

(assert (=> b!4202071 m!4790369))

(assert (=> d!1238904 m!4789435))

(assert (=> d!1238904 m!4790365))

(assert (=> d!1238904 m!4789575))

(assert (=> b!4202077 m!4789435))

(assert (=> b!4202077 m!4790363))

(assert (=> b!4202077 m!4790363))

(declare-fun m!4790371 () Bool)

(assert (=> b!4202077 m!4790371))

(assert (=> b!4202077 m!4789435))

(assert (=> b!4202077 m!4790367))

(assert (=> b!4202077 m!4790371))

(assert (=> b!4202077 m!4790367))

(declare-fun m!4790373 () Bool)

(assert (=> b!4202077 m!4790373))

(assert (=> b!4201238 d!1238904))

(assert (=> b!4201238 d!1238890))

(assert (=> b!4201238 d!1238892))

(assert (=> b!4201238 d!1238784))

(declare-fun d!1238906 () Bool)

(assert (=> d!1238906 (= (inv!60737 (tag!8580 (h!51603 (t!346812 rules!3967)))) (= (mod (str.len (value!240434 (tag!8580 (h!51603 (t!346812 rules!3967))))) 2) 0))))

(assert (=> b!4201368 d!1238906))

(declare-fun d!1238908 () Bool)

(declare-fun res!1725710 () Bool)

(declare-fun e!2608478 () Bool)

(assert (=> d!1238908 (=> (not res!1725710) (not e!2608478))))

(assert (=> d!1238908 (= res!1725710 (semiInverseModEq!3348 (toChars!10279 (transformation!7716 (h!51603 (t!346812 rules!3967)))) (toValue!10420 (transformation!7716 (h!51603 (t!346812 rules!3967))))))))

(assert (=> d!1238908 (= (inv!60741 (transformation!7716 (h!51603 (t!346812 rules!3967)))) e!2608478)))

(declare-fun b!4202083 () Bool)

(assert (=> b!4202083 (= e!2608478 (equivClasses!3247 (toChars!10279 (transformation!7716 (h!51603 (t!346812 rules!3967)))) (toValue!10420 (transformation!7716 (h!51603 (t!346812 rules!3967))))))))

(assert (= (and d!1238908 res!1725710) b!4202083))

(declare-fun m!4790375 () Bool)

(assert (=> d!1238908 m!4790375))

(declare-fun m!4790377 () Bool)

(assert (=> b!4202083 m!4790377))

(assert (=> b!4201368 d!1238908))

(declare-fun b!4202084 () Bool)

(declare-fun e!2608480 () Bool)

(declare-fun e!2608481 () Bool)

(assert (=> b!4202084 (= e!2608480 e!2608481)))

(declare-fun res!1725713 () Bool)

(assert (=> b!4202084 (=> (not res!1725713) (not e!2608481))))

(assert (=> b!4202084 (= res!1725713 (not ((_ is Nil!46182) (tail!6763 input!3517))))))

(declare-fun d!1238910 () Bool)

(declare-fun e!2608479 () Bool)

(assert (=> d!1238910 e!2608479))

(declare-fun res!1725711 () Bool)

(assert (=> d!1238910 (=> res!1725711 e!2608479)))

(declare-fun lt!1496723 () Bool)

(assert (=> d!1238910 (= res!1725711 (not lt!1496723))))

(assert (=> d!1238910 (= lt!1496723 e!2608480)))

(declare-fun res!1725714 () Bool)

(assert (=> d!1238910 (=> res!1725714 e!2608480)))

(assert (=> d!1238910 (= res!1725714 ((_ is Nil!46182) (tail!6763 p!3001)))))

(assert (=> d!1238910 (= (isPrefix!4575 (tail!6763 p!3001) (tail!6763 input!3517)) lt!1496723)))

(declare-fun b!4202087 () Bool)

(assert (=> b!4202087 (= e!2608479 (>= (size!33934 (tail!6763 input!3517)) (size!33934 (tail!6763 p!3001))))))

(declare-fun b!4202086 () Bool)

(assert (=> b!4202086 (= e!2608481 (isPrefix!4575 (tail!6763 (tail!6763 p!3001)) (tail!6763 (tail!6763 input!3517))))))

(declare-fun b!4202085 () Bool)

(declare-fun res!1725712 () Bool)

(assert (=> b!4202085 (=> (not res!1725712) (not e!2608481))))

(assert (=> b!4202085 (= res!1725712 (= (head!8916 (tail!6763 p!3001)) (head!8916 (tail!6763 input!3517))))))

(assert (= (and d!1238910 (not res!1725714)) b!4202084))

(assert (= (and b!4202084 res!1725713) b!4202085))

(assert (= (and b!4202085 res!1725712) b!4202086))

(assert (= (and d!1238910 (not res!1725711)) b!4202087))

(assert (=> b!4202087 m!4789301))

(assert (=> b!4202087 m!4790217))

(assert (=> b!4202087 m!4789503))

(declare-fun m!4790379 () Bool)

(assert (=> b!4202087 m!4790379))

(assert (=> b!4202086 m!4789503))

(declare-fun m!4790381 () Bool)

(assert (=> b!4202086 m!4790381))

(assert (=> b!4202086 m!4789301))

(assert (=> b!4202086 m!4790219))

(assert (=> b!4202086 m!4790381))

(assert (=> b!4202086 m!4790219))

(declare-fun m!4790383 () Bool)

(assert (=> b!4202086 m!4790383))

(assert (=> b!4202085 m!4789503))

(declare-fun m!4790385 () Bool)

(assert (=> b!4202085 m!4790385))

(assert (=> b!4202085 m!4789301))

(assert (=> b!4202085 m!4790223))

(assert (=> b!4201282 d!1238910))

(declare-fun d!1238912 () Bool)

(assert (=> d!1238912 (= (tail!6763 p!3001) (t!346811 p!3001))))

(assert (=> b!4201282 d!1238912))

(assert (=> b!4201282 d!1238842))

(declare-fun d!1238914 () Bool)

(assert (=> d!1238914 (= (inv!60745 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 t!8364))) (value!240435 t!8364))) (isBalanced!3740 (c!716229 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 t!8364))) (value!240435 t!8364)))))))

(declare-fun bs!597047 () Bool)

(assert (= bs!597047 d!1238914))

(declare-fun m!4790387 () Bool)

(assert (=> bs!597047 m!4790387))

(assert (=> tb!251739 d!1238914))

(declare-fun d!1238916 () Bool)

(assert (=> d!1238916 (= (list!16683 lt!1496426) (list!16685 (c!716229 lt!1496426)))))

(declare-fun bs!597048 () Bool)

(assert (= bs!597048 d!1238916))

(declare-fun m!4790389 () Bool)

(assert (=> bs!597048 m!4790389))

(assert (=> d!1238540 d!1238916))

(declare-fun b!4202090 () Bool)

(declare-fun res!1725716 () Bool)

(declare-fun e!2608482 () Bool)

(assert (=> b!4202090 (=> (not res!1725716) (not e!2608482))))

(declare-fun lt!1496724 () List!46306)

(assert (=> b!4202090 (= res!1725716 (= (size!33934 lt!1496724) (+ (size!33934 (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496423))))) (size!33934 (_2!25103 (get!15020 lt!1496423))))))))

(declare-fun d!1238918 () Bool)

(assert (=> d!1238918 e!2608482))

(declare-fun res!1725715 () Bool)

(assert (=> d!1238918 (=> (not res!1725715) (not e!2608482))))

(assert (=> d!1238918 (= res!1725715 (= (content!7212 lt!1496724) ((_ map or) (content!7212 (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496423))))) (content!7212 (_2!25103 (get!15020 lt!1496423))))))))

(declare-fun e!2608483 () List!46306)

(assert (=> d!1238918 (= lt!1496724 e!2608483)))

(declare-fun c!716431 () Bool)

(assert (=> d!1238918 (= c!716431 ((_ is Nil!46182) (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496423))))))))

(assert (=> d!1238918 (= (++!11790 (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496423)))) (_2!25103 (get!15020 lt!1496423))) lt!1496724)))

(declare-fun b!4202089 () Bool)

(assert (=> b!4202089 (= e!2608483 (Cons!46182 (h!51602 (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496423))))) (++!11790 (t!346811 (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496423))))) (_2!25103 (get!15020 lt!1496423)))))))

(declare-fun b!4202091 () Bool)

(assert (=> b!4202091 (= e!2608482 (or (not (= (_2!25103 (get!15020 lt!1496423)) Nil!46182)) (= lt!1496724 (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496423)))))))))

(declare-fun b!4202088 () Bool)

(assert (=> b!4202088 (= e!2608483 (_2!25103 (get!15020 lt!1496423)))))

(assert (= (and d!1238918 c!716431) b!4202088))

(assert (= (and d!1238918 (not c!716431)) b!4202089))

(assert (= (and d!1238918 res!1725715) b!4202090))

(assert (= (and b!4202090 res!1725716) b!4202091))

(declare-fun m!4790391 () Bool)

(assert (=> b!4202090 m!4790391))

(assert (=> b!4202090 m!4789549))

(declare-fun m!4790393 () Bool)

(assert (=> b!4202090 m!4790393))

(assert (=> b!4202090 m!4789565))

(declare-fun m!4790395 () Bool)

(assert (=> d!1238918 m!4790395))

(assert (=> d!1238918 m!4789549))

(declare-fun m!4790397 () Bool)

(assert (=> d!1238918 m!4790397))

(declare-fun m!4790399 () Bool)

(assert (=> d!1238918 m!4790399))

(declare-fun m!4790401 () Bool)

(assert (=> b!4202089 m!4790401))

(assert (=> b!4201320 d!1238918))

(assert (=> b!4201320 d!1238822))

(assert (=> b!4201320 d!1238824))

(assert (=> b!4201320 d!1238558))

(declare-fun b!4202094 () Bool)

(declare-fun res!1725718 () Bool)

(declare-fun e!2608484 () Bool)

(assert (=> b!4202094 (=> (not res!1725718) (not e!2608484))))

(declare-fun lt!1496725 () List!46306)

(assert (=> b!4202094 (= res!1725718 (= (size!33934 lt!1496725) (+ (size!33934 (t!346811 pBis!121)) (size!33934 suffixBis!41))))))

(declare-fun d!1238920 () Bool)

(assert (=> d!1238920 e!2608484))

(declare-fun res!1725717 () Bool)

(assert (=> d!1238920 (=> (not res!1725717) (not e!2608484))))

(assert (=> d!1238920 (= res!1725717 (= (content!7212 lt!1496725) ((_ map or) (content!7212 (t!346811 pBis!121)) (content!7212 suffixBis!41))))))

(declare-fun e!2608485 () List!46306)

(assert (=> d!1238920 (= lt!1496725 e!2608485)))

(declare-fun c!716432 () Bool)

(assert (=> d!1238920 (= c!716432 ((_ is Nil!46182) (t!346811 pBis!121)))))

(assert (=> d!1238920 (= (++!11790 (t!346811 pBis!121) suffixBis!41) lt!1496725)))

(declare-fun b!4202093 () Bool)

(assert (=> b!4202093 (= e!2608485 (Cons!46182 (h!51602 (t!346811 pBis!121)) (++!11790 (t!346811 (t!346811 pBis!121)) suffixBis!41)))))

(declare-fun b!4202095 () Bool)

(assert (=> b!4202095 (= e!2608484 (or (not (= suffixBis!41 Nil!46182)) (= lt!1496725 (t!346811 pBis!121))))))

(declare-fun b!4202092 () Bool)

(assert (=> b!4202092 (= e!2608485 suffixBis!41)))

(assert (= (and d!1238920 c!716432) b!4202092))

(assert (= (and d!1238920 (not c!716432)) b!4202093))

(assert (= (and d!1238920 res!1725717) b!4202094))

(assert (= (and b!4202094 res!1725718) b!4202095))

(declare-fun m!4790403 () Bool)

(assert (=> b!4202094 m!4790403))

(assert (=> b!4202094 m!4789741))

(assert (=> b!4202094 m!4789529))

(declare-fun m!4790405 () Bool)

(assert (=> d!1238920 m!4790405))

(assert (=> d!1238920 m!4790265))

(assert (=> d!1238920 m!4789535))

(declare-fun m!4790407 () Bool)

(assert (=> b!4202093 m!4790407))

(assert (=> b!4201294 d!1238920))

(declare-fun d!1238922 () Bool)

(declare-fun e!2608488 () Bool)

(assert (=> d!1238922 e!2608488))

(declare-fun res!1725725 () Bool)

(assert (=> d!1238922 (=> res!1725725 e!2608488)))

(declare-fun lt!1496730 () Option!9904)

(assert (=> d!1238922 (= res!1725725 (isEmpty!27345 lt!1496730))))

(declare-fun e!2608486 () Option!9904)

(assert (=> d!1238922 (= lt!1496730 e!2608486)))

(declare-fun c!716433 () Bool)

(assert (=> d!1238922 (= c!716433 (and ((_ is Cons!46183) (t!346812 rules!3967)) ((_ is Nil!46183) (t!346812 (t!346812 rules!3967)))))))

(declare-fun lt!1496729 () Unit!65271)

(declare-fun lt!1496726 () Unit!65271)

(assert (=> d!1238922 (= lt!1496729 lt!1496726)))

(assert (=> d!1238922 (isPrefix!4575 input!3517 input!3517)))

(assert (=> d!1238922 (= lt!1496726 (lemmaIsPrefixRefl!2992 input!3517 input!3517))))

(assert (=> d!1238922 (rulesValidInductive!2856 thiss!26544 (t!346812 rules!3967))))

(assert (=> d!1238922 (= (maxPrefix!4351 thiss!26544 (t!346812 rules!3967) input!3517) lt!1496730)))

(declare-fun b!4202096 () Bool)

(declare-fun e!2608487 () Bool)

(assert (=> b!4202096 (= e!2608487 (contains!9529 (t!346812 rules!3967) (rule!10812 (_1!25103 (get!15020 lt!1496730)))))))

(declare-fun b!4202097 () Bool)

(declare-fun res!1725724 () Bool)

(assert (=> b!4202097 (=> (not res!1725724) (not e!2608487))))

(assert (=> b!4202097 (= res!1725724 (= (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496730)))) (originalCharacters!8098 (_1!25103 (get!15020 lt!1496730)))))))

(declare-fun b!4202098 () Bool)

(declare-fun res!1725721 () Bool)

(assert (=> b!4202098 (=> (not res!1725721) (not e!2608487))))

(assert (=> b!4202098 (= res!1725721 (< (size!33934 (_2!25103 (get!15020 lt!1496730))) (size!33934 input!3517)))))

(declare-fun b!4202099 () Bool)

(declare-fun lt!1496727 () Option!9904)

(declare-fun lt!1496728 () Option!9904)

(assert (=> b!4202099 (= e!2608486 (ite (and ((_ is None!9903) lt!1496727) ((_ is None!9903) lt!1496728)) None!9903 (ite ((_ is None!9903) lt!1496728) lt!1496727 (ite ((_ is None!9903) lt!1496727) lt!1496728 (ite (>= (size!33931 (_1!25103 (v!40755 lt!1496727))) (size!33931 (_1!25103 (v!40755 lt!1496728)))) lt!1496727 lt!1496728)))))))

(declare-fun call!292658 () Option!9904)

(assert (=> b!4202099 (= lt!1496727 call!292658)))

(assert (=> b!4202099 (= lt!1496728 (maxPrefix!4351 thiss!26544 (t!346812 (t!346812 rules!3967)) input!3517))))

(declare-fun b!4202100 () Bool)

(declare-fun res!1725722 () Bool)

(assert (=> b!4202100 (=> (not res!1725722) (not e!2608487))))

(assert (=> b!4202100 (= res!1725722 (matchR!6346 (regex!7716 (rule!10812 (_1!25103 (get!15020 lt!1496730)))) (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496730))))))))

(declare-fun b!4202101 () Bool)

(declare-fun res!1725723 () Bool)

(assert (=> b!4202101 (=> (not res!1725723) (not e!2608487))))

(assert (=> b!4202101 (= res!1725723 (= (++!11790 (list!16683 (charsOf!5139 (_1!25103 (get!15020 lt!1496730)))) (_2!25103 (get!15020 lt!1496730))) input!3517))))

(declare-fun b!4202102 () Bool)

(declare-fun res!1725719 () Bool)

(assert (=> b!4202102 (=> (not res!1725719) (not e!2608487))))

(assert (=> b!4202102 (= res!1725719 (= (value!240435 (_1!25103 (get!15020 lt!1496730))) (apply!10667 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496730)))) (seqFromList!5727 (originalCharacters!8098 (_1!25103 (get!15020 lt!1496730)))))))))

(declare-fun b!4202103 () Bool)

(assert (=> b!4202103 (= e!2608486 call!292658)))

(declare-fun b!4202104 () Bool)

(assert (=> b!4202104 (= e!2608488 e!2608487)))

(declare-fun res!1725720 () Bool)

(assert (=> b!4202104 (=> (not res!1725720) (not e!2608487))))

(assert (=> b!4202104 (= res!1725720 (isDefined!7368 lt!1496730))))

(declare-fun bm!292653 () Bool)

(assert (=> bm!292653 (= call!292658 (maxPrefixOneRule!3306 thiss!26544 (h!51603 (t!346812 rules!3967)) input!3517))))

(assert (= (and d!1238922 c!716433) b!4202103))

(assert (= (and d!1238922 (not c!716433)) b!4202099))

(assert (= (or b!4202103 b!4202099) bm!292653))

(assert (= (and d!1238922 (not res!1725725)) b!4202104))

(assert (= (and b!4202104 res!1725720) b!4202097))

(assert (= (and b!4202097 res!1725724) b!4202098))

(assert (= (and b!4202098 res!1725721) b!4202101))

(assert (= (and b!4202101 res!1725723) b!4202102))

(assert (= (and b!4202102 res!1725719) b!4202100))

(assert (= (and b!4202100 res!1725722) b!4202096))

(declare-fun m!4790409 () Bool)

(assert (=> b!4202104 m!4790409))

(declare-fun m!4790411 () Bool)

(assert (=> d!1238922 m!4790411))

(assert (=> d!1238922 m!4789141))

(assert (=> d!1238922 m!4789143))

(assert (=> d!1238922 m!4790249))

(declare-fun m!4790413 () Bool)

(assert (=> b!4202097 m!4790413))

(declare-fun m!4790415 () Bool)

(assert (=> b!4202097 m!4790415))

(assert (=> b!4202097 m!4790415))

(declare-fun m!4790417 () Bool)

(assert (=> b!4202097 m!4790417))

(assert (=> b!4202101 m!4790413))

(assert (=> b!4202101 m!4790415))

(assert (=> b!4202101 m!4790415))

(assert (=> b!4202101 m!4790417))

(assert (=> b!4202101 m!4790417))

(declare-fun m!4790419 () Bool)

(assert (=> b!4202101 m!4790419))

(assert (=> b!4202096 m!4790413))

(declare-fun m!4790421 () Bool)

(assert (=> b!4202096 m!4790421))

(declare-fun m!4790423 () Bool)

(assert (=> b!4202099 m!4790423))

(declare-fun m!4790425 () Bool)

(assert (=> bm!292653 m!4790425))

(assert (=> b!4202102 m!4790413))

(declare-fun m!4790427 () Bool)

(assert (=> b!4202102 m!4790427))

(assert (=> b!4202102 m!4790427))

(declare-fun m!4790429 () Bool)

(assert (=> b!4202102 m!4790429))

(assert (=> b!4202100 m!4790413))

(assert (=> b!4202100 m!4790415))

(assert (=> b!4202100 m!4790415))

(assert (=> b!4202100 m!4790417))

(assert (=> b!4202100 m!4790417))

(declare-fun m!4790431 () Bool)

(assert (=> b!4202100 m!4790431))

(assert (=> b!4202098 m!4790413))

(declare-fun m!4790433 () Bool)

(assert (=> b!4202098 m!4790433))

(assert (=> b!4202098 m!4789295))

(assert (=> b!4201318 d!1238922))

(declare-fun d!1238924 () Bool)

(assert (=> d!1238924 (= (isEmpty!27345 lt!1496392) (not ((_ is Some!9903) lt!1496392)))))

(assert (=> d!1238490 d!1238924))

(declare-fun d!1238926 () Bool)

(assert (=> d!1238926 (= (isEmpty!27344 (_1!25105 lt!1496396)) ((_ is Nil!46182) (_1!25105 lt!1496396)))))

(assert (=> d!1238490 d!1238926))

(declare-fun d!1238928 () Bool)

(declare-fun lt!1496750 () tuple2!43942)

(assert (=> d!1238928 (= (++!11790 (_1!25105 lt!1496750) (_2!25105 lt!1496750)) input!3517)))

(declare-fun sizeTr!314 (List!46306 Int) Int)

(assert (=> d!1238928 (= lt!1496750 (findLongestMatchInner!1627 (regex!7716 rBis!178) Nil!46182 0 input!3517 input!3517 (sizeTr!314 input!3517 0)))))

(declare-fun lt!1496753 () Unit!65271)

(declare-fun lt!1496751 () Unit!65271)

(assert (=> d!1238928 (= lt!1496753 lt!1496751)))

(declare-fun lt!1496754 () List!46306)

(declare-fun lt!1496749 () Int)

(assert (=> d!1238928 (= (sizeTr!314 lt!1496754 lt!1496749) (+ (size!33934 lt!1496754) lt!1496749))))

(declare-fun lemmaSizeTrEqualsSize!313 (List!46306 Int) Unit!65271)

(assert (=> d!1238928 (= lt!1496751 (lemmaSizeTrEqualsSize!313 lt!1496754 lt!1496749))))

(assert (=> d!1238928 (= lt!1496749 0)))

(assert (=> d!1238928 (= lt!1496754 Nil!46182)))

(declare-fun lt!1496748 () Unit!65271)

(declare-fun lt!1496747 () Unit!65271)

(assert (=> d!1238928 (= lt!1496748 lt!1496747)))

(declare-fun lt!1496752 () Int)

(assert (=> d!1238928 (= (sizeTr!314 input!3517 lt!1496752) (+ (size!33934 input!3517) lt!1496752))))

(assert (=> d!1238928 (= lt!1496747 (lemmaSizeTrEqualsSize!313 input!3517 lt!1496752))))

(assert (=> d!1238928 (= lt!1496752 0)))

(assert (=> d!1238928 (validRegex!5726 (regex!7716 rBis!178))))

(assert (=> d!1238928 (= (findLongestMatch!1540 (regex!7716 rBis!178) input!3517) lt!1496750)))

(declare-fun bs!597049 () Bool)

(assert (= bs!597049 d!1238928))

(declare-fun m!4790435 () Bool)

(assert (=> bs!597049 m!4790435))

(assert (=> bs!597049 m!4789575))

(declare-fun m!4790437 () Bool)

(assert (=> bs!597049 m!4790437))

(declare-fun m!4790439 () Bool)

(assert (=> bs!597049 m!4790439))

(assert (=> bs!597049 m!4789295))

(declare-fun m!4790441 () Bool)

(assert (=> bs!597049 m!4790441))

(declare-fun m!4790443 () Bool)

(assert (=> bs!597049 m!4790443))

(declare-fun m!4790445 () Bool)

(assert (=> bs!597049 m!4790445))

(declare-fun m!4790447 () Bool)

(assert (=> bs!597049 m!4790447))

(declare-fun m!4790449 () Bool)

(assert (=> bs!597049 m!4790449))

(assert (=> bs!597049 m!4790441))

(assert (=> d!1238490 d!1238928))

(assert (=> d!1238490 d!1238544))

(declare-fun b!4202108 () Bool)

(declare-fun e!2608489 () Bool)

(declare-fun tp!1283922 () Bool)

(declare-fun tp!1283920 () Bool)

(assert (=> b!4202108 (= e!2608489 (and tp!1283922 tp!1283920))))

(declare-fun b!4202105 () Bool)

(assert (=> b!4202105 (= e!2608489 tp_is_empty!22209)))

(declare-fun b!4202107 () Bool)

(declare-fun tp!1283921 () Bool)

(assert (=> b!4202107 (= e!2608489 tp!1283921)))

(assert (=> b!4201352 (= tp!1283759 e!2608489)))

(declare-fun b!4202106 () Bool)

(declare-fun tp!1283923 () Bool)

(declare-fun tp!1283919 () Bool)

(assert (=> b!4202106 (= e!2608489 (and tp!1283923 tp!1283919))))

(assert (= (and b!4201352 ((_ is ElementMatch!12621) (regOne!25754 (regex!7716 rBis!178)))) b!4202105))

(assert (= (and b!4201352 ((_ is Concat!20568) (regOne!25754 (regex!7716 rBis!178)))) b!4202106))

(assert (= (and b!4201352 ((_ is Star!12621) (regOne!25754 (regex!7716 rBis!178)))) b!4202107))

(assert (= (and b!4201352 ((_ is Union!12621) (regOne!25754 (regex!7716 rBis!178)))) b!4202108))

(declare-fun b!4202112 () Bool)

(declare-fun e!2608490 () Bool)

(declare-fun tp!1283927 () Bool)

(declare-fun tp!1283925 () Bool)

(assert (=> b!4202112 (= e!2608490 (and tp!1283927 tp!1283925))))

(declare-fun b!4202109 () Bool)

(assert (=> b!4202109 (= e!2608490 tp_is_empty!22209)))

(declare-fun b!4202111 () Bool)

(declare-fun tp!1283926 () Bool)

(assert (=> b!4202111 (= e!2608490 tp!1283926)))

(assert (=> b!4201352 (= tp!1283755 e!2608490)))

(declare-fun b!4202110 () Bool)

(declare-fun tp!1283928 () Bool)

(declare-fun tp!1283924 () Bool)

(assert (=> b!4202110 (= e!2608490 (and tp!1283928 tp!1283924))))

(assert (= (and b!4201352 ((_ is ElementMatch!12621) (regTwo!25754 (regex!7716 rBis!178)))) b!4202109))

(assert (= (and b!4201352 ((_ is Concat!20568) (regTwo!25754 (regex!7716 rBis!178)))) b!4202110))

(assert (= (and b!4201352 ((_ is Star!12621) (regTwo!25754 (regex!7716 rBis!178)))) b!4202111))

(assert (= (and b!4201352 ((_ is Union!12621) (regTwo!25754 (regex!7716 rBis!178)))) b!4202112))

(declare-fun b!4202116 () Bool)

(declare-fun e!2608491 () Bool)

(declare-fun tp!1283932 () Bool)

(declare-fun tp!1283930 () Bool)

(assert (=> b!4202116 (= e!2608491 (and tp!1283932 tp!1283930))))

(declare-fun b!4202113 () Bool)

(assert (=> b!4202113 (= e!2608491 tp_is_empty!22209)))

(declare-fun b!4202115 () Bool)

(declare-fun tp!1283931 () Bool)

(assert (=> b!4202115 (= e!2608491 tp!1283931)))

(assert (=> b!4201354 (= tp!1283758 e!2608491)))

(declare-fun b!4202114 () Bool)

(declare-fun tp!1283933 () Bool)

(declare-fun tp!1283929 () Bool)

(assert (=> b!4202114 (= e!2608491 (and tp!1283933 tp!1283929))))

(assert (= (and b!4201354 ((_ is ElementMatch!12621) (regOne!25755 (regex!7716 rBis!178)))) b!4202113))

(assert (= (and b!4201354 ((_ is Concat!20568) (regOne!25755 (regex!7716 rBis!178)))) b!4202114))

(assert (= (and b!4201354 ((_ is Star!12621) (regOne!25755 (regex!7716 rBis!178)))) b!4202115))

(assert (= (and b!4201354 ((_ is Union!12621) (regOne!25755 (regex!7716 rBis!178)))) b!4202116))

(declare-fun b!4202120 () Bool)

(declare-fun e!2608492 () Bool)

(declare-fun tp!1283937 () Bool)

(declare-fun tp!1283935 () Bool)

(assert (=> b!4202120 (= e!2608492 (and tp!1283937 tp!1283935))))

(declare-fun b!4202117 () Bool)

(assert (=> b!4202117 (= e!2608492 tp_is_empty!22209)))

(declare-fun b!4202119 () Bool)

(declare-fun tp!1283936 () Bool)

(assert (=> b!4202119 (= e!2608492 tp!1283936)))

(assert (=> b!4201354 (= tp!1283756 e!2608492)))

(declare-fun b!4202118 () Bool)

(declare-fun tp!1283938 () Bool)

(declare-fun tp!1283934 () Bool)

(assert (=> b!4202118 (= e!2608492 (and tp!1283938 tp!1283934))))

(assert (= (and b!4201354 ((_ is ElementMatch!12621) (regTwo!25755 (regex!7716 rBis!178)))) b!4202117))

(assert (= (and b!4201354 ((_ is Concat!20568) (regTwo!25755 (regex!7716 rBis!178)))) b!4202118))

(assert (= (and b!4201354 ((_ is Star!12621) (regTwo!25755 (regex!7716 rBis!178)))) b!4202119))

(assert (= (and b!4201354 ((_ is Union!12621) (regTwo!25755 (regex!7716 rBis!178)))) b!4202120))

(declare-fun b!4202124 () Bool)

(declare-fun e!2608493 () Bool)

(declare-fun tp!1283942 () Bool)

(declare-fun tp!1283940 () Bool)

(assert (=> b!4202124 (= e!2608493 (and tp!1283942 tp!1283940))))

(declare-fun b!4202121 () Bool)

(assert (=> b!4202121 (= e!2608493 tp_is_empty!22209)))

(declare-fun b!4202123 () Bool)

(declare-fun tp!1283941 () Bool)

(assert (=> b!4202123 (= e!2608493 tp!1283941)))

(assert (=> b!4201371 (= tp!1283781 e!2608493)))

(declare-fun b!4202122 () Bool)

(declare-fun tp!1283943 () Bool)

(declare-fun tp!1283939 () Bool)

(assert (=> b!4202122 (= e!2608493 (and tp!1283943 tp!1283939))))

(assert (= (and b!4201371 ((_ is ElementMatch!12621) (regOne!25754 (regex!7716 (h!51603 rules!3967))))) b!4202121))

(assert (= (and b!4201371 ((_ is Concat!20568) (regOne!25754 (regex!7716 (h!51603 rules!3967))))) b!4202122))

(assert (= (and b!4201371 ((_ is Star!12621) (regOne!25754 (regex!7716 (h!51603 rules!3967))))) b!4202123))

(assert (= (and b!4201371 ((_ is Union!12621) (regOne!25754 (regex!7716 (h!51603 rules!3967))))) b!4202124))

(declare-fun b!4202128 () Bool)

(declare-fun e!2608494 () Bool)

(declare-fun tp!1283947 () Bool)

(declare-fun tp!1283945 () Bool)

(assert (=> b!4202128 (= e!2608494 (and tp!1283947 tp!1283945))))

(declare-fun b!4202125 () Bool)

(assert (=> b!4202125 (= e!2608494 tp_is_empty!22209)))

(declare-fun b!4202127 () Bool)

(declare-fun tp!1283946 () Bool)

(assert (=> b!4202127 (= e!2608494 tp!1283946)))

(assert (=> b!4201371 (= tp!1283777 e!2608494)))

(declare-fun b!4202126 () Bool)

(declare-fun tp!1283948 () Bool)

(declare-fun tp!1283944 () Bool)

(assert (=> b!4202126 (= e!2608494 (and tp!1283948 tp!1283944))))

(assert (= (and b!4201371 ((_ is ElementMatch!12621) (regTwo!25754 (regex!7716 (h!51603 rules!3967))))) b!4202125))

(assert (= (and b!4201371 ((_ is Concat!20568) (regTwo!25754 (regex!7716 (h!51603 rules!3967))))) b!4202126))

(assert (= (and b!4201371 ((_ is Star!12621) (regTwo!25754 (regex!7716 (h!51603 rules!3967))))) b!4202127))

(assert (= (and b!4201371 ((_ is Union!12621) (regTwo!25754 (regex!7716 (h!51603 rules!3967))))) b!4202128))

(declare-fun b!4202132 () Bool)

(declare-fun e!2608495 () Bool)

(declare-fun tp!1283952 () Bool)

(declare-fun tp!1283950 () Bool)

(assert (=> b!4202132 (= e!2608495 (and tp!1283952 tp!1283950))))

(declare-fun b!4202129 () Bool)

(assert (=> b!4202129 (= e!2608495 tp_is_empty!22209)))

(declare-fun b!4202131 () Bool)

(declare-fun tp!1283951 () Bool)

(assert (=> b!4202131 (= e!2608495 tp!1283951)))

(assert (=> b!4201353 (= tp!1283757 e!2608495)))

(declare-fun b!4202130 () Bool)

(declare-fun tp!1283953 () Bool)

(declare-fun tp!1283949 () Bool)

(assert (=> b!4202130 (= e!2608495 (and tp!1283953 tp!1283949))))

(assert (= (and b!4201353 ((_ is ElementMatch!12621) (reg!12950 (regex!7716 rBis!178)))) b!4202129))

(assert (= (and b!4201353 ((_ is Concat!20568) (reg!12950 (regex!7716 rBis!178)))) b!4202130))

(assert (= (and b!4201353 ((_ is Star!12621) (reg!12950 (regex!7716 rBis!178)))) b!4202131))

(assert (= (and b!4201353 ((_ is Union!12621) (reg!12950 (regex!7716 rBis!178)))) b!4202132))

(declare-fun b!4202141 () Bool)

(declare-fun tp!1283962 () Bool)

(declare-fun e!2608501 () Bool)

(declare-fun tp!1283961 () Bool)

(assert (=> b!4202141 (= e!2608501 (and (inv!60744 (left!34396 (c!716229 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 tBis!41))) (value!240435 tBis!41))))) tp!1283962 (inv!60744 (right!34726 (c!716229 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 tBis!41))) (value!240435 tBis!41))))) tp!1283961))))

(declare-fun b!4202143 () Bool)

(declare-fun e!2608500 () Bool)

(declare-fun tp!1283960 () Bool)

(assert (=> b!4202143 (= e!2608500 tp!1283960)))

(declare-fun b!4202142 () Bool)

(declare-fun inv!60751 (IArray!27859) Bool)

(assert (=> b!4202142 (= e!2608501 (and (inv!60751 (xs!17233 (c!716229 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 tBis!41))) (value!240435 tBis!41))))) e!2608500))))

(assert (=> b!4201053 (= tp!1283681 (and (inv!60744 (c!716229 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 tBis!41))) (value!240435 tBis!41)))) e!2608501))))

(assert (= (and b!4201053 ((_ is Node!13927) (c!716229 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 tBis!41))) (value!240435 tBis!41))))) b!4202141))

(assert (= b!4202142 b!4202143))

(assert (= (and b!4201053 ((_ is Leaf!21529) (c!716229 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 tBis!41))) (value!240435 tBis!41))))) b!4202142))

(declare-fun m!4790451 () Bool)

(assert (=> b!4202141 m!4790451))

(declare-fun m!4790453 () Bool)

(assert (=> b!4202141 m!4790453))

(declare-fun m!4790455 () Bool)

(assert (=> b!4202142 m!4790455))

(assert (=> b!4201053 m!4789271))

(declare-fun b!4202144 () Bool)

(declare-fun e!2608502 () Bool)

(declare-fun tp!1283963 () Bool)

(assert (=> b!4202144 (= e!2608502 (and tp_is_empty!22209 tp!1283963))))

(assert (=> b!4201350 (= tp!1283754 e!2608502)))

(assert (= (and b!4201350 ((_ is Cons!46182) (t!346811 (t!346811 input!3517)))) b!4202144))

(declare-fun b!4202148 () Bool)

(declare-fun e!2608503 () Bool)

(declare-fun tp!1283967 () Bool)

(declare-fun tp!1283965 () Bool)

(assert (=> b!4202148 (= e!2608503 (and tp!1283967 tp!1283965))))

(declare-fun b!4202145 () Bool)

(assert (=> b!4202145 (= e!2608503 tp_is_empty!22209)))

(declare-fun b!4202147 () Bool)

(declare-fun tp!1283966 () Bool)

(assert (=> b!4202147 (= e!2608503 tp!1283966)))

(assert (=> b!4201357 (= tp!1283762 e!2608503)))

(declare-fun b!4202146 () Bool)

(declare-fun tp!1283968 () Bool)

(declare-fun tp!1283964 () Bool)

(assert (=> b!4202146 (= e!2608503 (and tp!1283968 tp!1283964))))

(assert (= (and b!4201357 ((_ is ElementMatch!12621) (reg!12950 (regex!7716 (rule!10812 t!8364))))) b!4202145))

(assert (= (and b!4201357 ((_ is Concat!20568) (reg!12950 (regex!7716 (rule!10812 t!8364))))) b!4202146))

(assert (= (and b!4201357 ((_ is Star!12621) (reg!12950 (regex!7716 (rule!10812 t!8364))))) b!4202147))

(assert (= (and b!4201357 ((_ is Union!12621) (reg!12950 (regex!7716 (rule!10812 t!8364))))) b!4202148))

(declare-fun b!4202149 () Bool)

(declare-fun e!2608504 () Bool)

(declare-fun tp!1283969 () Bool)

(assert (=> b!4202149 (= e!2608504 (and tp_is_empty!22209 tp!1283969))))

(assert (=> b!4201349 (= tp!1283753 e!2608504)))

(assert (= (and b!4201349 ((_ is Cons!46182) (t!346811 (originalCharacters!8098 t!8364)))) b!4202149))

(declare-fun b!4202150 () Bool)

(declare-fun e!2608505 () Bool)

(declare-fun tp!1283970 () Bool)

(assert (=> b!4202150 (= e!2608505 (and tp_is_empty!22209 tp!1283970))))

(assert (=> b!4201376 (= tp!1283784 e!2608505)))

(assert (= (and b!4201376 ((_ is Cons!46182) (t!346811 (t!346811 suffixBis!41)))) b!4202150))

(declare-fun b!4202154 () Bool)

(declare-fun e!2608506 () Bool)

(declare-fun tp!1283974 () Bool)

(declare-fun tp!1283972 () Bool)

(assert (=> b!4202154 (= e!2608506 (and tp!1283974 tp!1283972))))

(declare-fun b!4202151 () Bool)

(assert (=> b!4202151 (= e!2608506 tp_is_empty!22209)))

(declare-fun b!4202153 () Bool)

(declare-fun tp!1283973 () Bool)

(assert (=> b!4202153 (= e!2608506 tp!1283973)))

(assert (=> b!4201358 (= tp!1283763 e!2608506)))

(declare-fun b!4202152 () Bool)

(declare-fun tp!1283975 () Bool)

(declare-fun tp!1283971 () Bool)

(assert (=> b!4202152 (= e!2608506 (and tp!1283975 tp!1283971))))

(assert (= (and b!4201358 ((_ is ElementMatch!12621) (regOne!25755 (regex!7716 (rule!10812 t!8364))))) b!4202151))

(assert (= (and b!4201358 ((_ is Concat!20568) (regOne!25755 (regex!7716 (rule!10812 t!8364))))) b!4202152))

(assert (= (and b!4201358 ((_ is Star!12621) (regOne!25755 (regex!7716 (rule!10812 t!8364))))) b!4202153))

(assert (= (and b!4201358 ((_ is Union!12621) (regOne!25755 (regex!7716 (rule!10812 t!8364))))) b!4202154))

(declare-fun b!4202158 () Bool)

(declare-fun e!2608507 () Bool)

(declare-fun tp!1283979 () Bool)

(declare-fun tp!1283977 () Bool)

(assert (=> b!4202158 (= e!2608507 (and tp!1283979 tp!1283977))))

(declare-fun b!4202155 () Bool)

(assert (=> b!4202155 (= e!2608507 tp_is_empty!22209)))

(declare-fun b!4202157 () Bool)

(declare-fun tp!1283978 () Bool)

(assert (=> b!4202157 (= e!2608507 tp!1283978)))

(assert (=> b!4201358 (= tp!1283761 e!2608507)))

(declare-fun b!4202156 () Bool)

(declare-fun tp!1283980 () Bool)

(declare-fun tp!1283976 () Bool)

(assert (=> b!4202156 (= e!2608507 (and tp!1283980 tp!1283976))))

(assert (= (and b!4201358 ((_ is ElementMatch!12621) (regTwo!25755 (regex!7716 (rule!10812 t!8364))))) b!4202155))

(assert (= (and b!4201358 ((_ is Concat!20568) (regTwo!25755 (regex!7716 (rule!10812 t!8364))))) b!4202156))

(assert (= (and b!4201358 ((_ is Star!12621) (regTwo!25755 (regex!7716 (rule!10812 t!8364))))) b!4202157))

(assert (= (and b!4201358 ((_ is Union!12621) (regTwo!25755 (regex!7716 (rule!10812 t!8364))))) b!4202158))

(declare-fun b!4202159 () Bool)

(declare-fun e!2608508 () Bool)

(declare-fun tp!1283981 () Bool)

(assert (=> b!4202159 (= e!2608508 (and tp_is_empty!22209 tp!1283981))))

(assert (=> b!4201333 (= tp!1283736 e!2608508)))

(assert (= (and b!4201333 ((_ is Cons!46182) (t!346811 (t!346811 pBis!121)))) b!4202159))

(declare-fun b!4202163 () Bool)

(declare-fun e!2608509 () Bool)

(declare-fun tp!1283985 () Bool)

(declare-fun tp!1283983 () Bool)

(assert (=> b!4202163 (= e!2608509 (and tp!1283985 tp!1283983))))

(declare-fun b!4202160 () Bool)

(assert (=> b!4202160 (= e!2608509 tp_is_empty!22209)))

(declare-fun b!4202162 () Bool)

(declare-fun tp!1283984 () Bool)

(assert (=> b!4202162 (= e!2608509 tp!1283984)))

(assert (=> b!4201356 (= tp!1283764 e!2608509)))

(declare-fun b!4202161 () Bool)

(declare-fun tp!1283986 () Bool)

(declare-fun tp!1283982 () Bool)

(assert (=> b!4202161 (= e!2608509 (and tp!1283986 tp!1283982))))

(assert (= (and b!4201356 ((_ is ElementMatch!12621) (regOne!25754 (regex!7716 (rule!10812 t!8364))))) b!4202160))

(assert (= (and b!4201356 ((_ is Concat!20568) (regOne!25754 (regex!7716 (rule!10812 t!8364))))) b!4202161))

(assert (= (and b!4201356 ((_ is Star!12621) (regOne!25754 (regex!7716 (rule!10812 t!8364))))) b!4202162))

(assert (= (and b!4201356 ((_ is Union!12621) (regOne!25754 (regex!7716 (rule!10812 t!8364))))) b!4202163))

(declare-fun b!4202167 () Bool)

(declare-fun e!2608510 () Bool)

(declare-fun tp!1283990 () Bool)

(declare-fun tp!1283988 () Bool)

(assert (=> b!4202167 (= e!2608510 (and tp!1283990 tp!1283988))))

(declare-fun b!4202164 () Bool)

(assert (=> b!4202164 (= e!2608510 tp_is_empty!22209)))

(declare-fun b!4202166 () Bool)

(declare-fun tp!1283989 () Bool)

(assert (=> b!4202166 (= e!2608510 tp!1283989)))

(assert (=> b!4201356 (= tp!1283760 e!2608510)))

(declare-fun b!4202165 () Bool)

(declare-fun tp!1283991 () Bool)

(declare-fun tp!1283987 () Bool)

(assert (=> b!4202165 (= e!2608510 (and tp!1283991 tp!1283987))))

(assert (= (and b!4201356 ((_ is ElementMatch!12621) (regTwo!25754 (regex!7716 (rule!10812 t!8364))))) b!4202164))

(assert (= (and b!4201356 ((_ is Concat!20568) (regTwo!25754 (regex!7716 (rule!10812 t!8364))))) b!4202165))

(assert (= (and b!4201356 ((_ is Star!12621) (regTwo!25754 (regex!7716 (rule!10812 t!8364))))) b!4202166))

(assert (= (and b!4201356 ((_ is Union!12621) (regTwo!25754 (regex!7716 (rule!10812 t!8364))))) b!4202167))

(declare-fun b!4202168 () Bool)

(declare-fun e!2608511 () Bool)

(declare-fun tp!1283992 () Bool)

(assert (=> b!4202168 (= e!2608511 (and tp_is_empty!22209 tp!1283992))))

(assert (=> b!4201375 (= tp!1283783 e!2608511)))

(assert (= (and b!4201375 ((_ is Cons!46182) (t!346811 (t!346811 p!3001)))) b!4202168))

(declare-fun b!4202169 () Bool)

(declare-fun tp!1283995 () Bool)

(declare-fun tp!1283994 () Bool)

(declare-fun e!2608513 () Bool)

(assert (=> b!4202169 (= e!2608513 (and (inv!60744 (left!34396 (c!716229 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 t!8364))) (value!240435 t!8364))))) tp!1283995 (inv!60744 (right!34726 (c!716229 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 t!8364))) (value!240435 t!8364))))) tp!1283994))))

(declare-fun b!4202171 () Bool)

(declare-fun e!2608512 () Bool)

(declare-fun tp!1283993 () Bool)

(assert (=> b!4202171 (= e!2608512 tp!1283993)))

(declare-fun b!4202170 () Bool)

(assert (=> b!4202170 (= e!2608513 (and (inv!60751 (xs!17233 (c!716229 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 t!8364))) (value!240435 t!8364))))) e!2608512))))

(assert (=> b!4201056 (= tp!1283682 (and (inv!60744 (c!716229 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 t!8364))) (value!240435 t!8364)))) e!2608513))))

(assert (= (and b!4201056 ((_ is Node!13927) (c!716229 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 t!8364))) (value!240435 t!8364))))) b!4202169))

(assert (= b!4202170 b!4202171))

(assert (= (and b!4201056 ((_ is Leaf!21529) (c!716229 (dynLambda!19910 (toChars!10279 (transformation!7716 (rule!10812 t!8364))) (value!240435 t!8364))))) b!4202170))

(declare-fun m!4790457 () Bool)

(assert (=> b!4202169 m!4790457))

(declare-fun m!4790459 () Bool)

(assert (=> b!4202169 m!4790459))

(declare-fun m!4790461 () Bool)

(assert (=> b!4202170 m!4790461))

(assert (=> b!4201056 m!4789283))

(declare-fun b!4202175 () Bool)

(declare-fun e!2608514 () Bool)

(declare-fun tp!1283999 () Bool)

(declare-fun tp!1283997 () Bool)

(assert (=> b!4202175 (= e!2608514 (and tp!1283999 tp!1283997))))

(declare-fun b!4202172 () Bool)

(assert (=> b!4202172 (= e!2608514 tp_is_empty!22209)))

(declare-fun b!4202174 () Bool)

(declare-fun tp!1283998 () Bool)

(assert (=> b!4202174 (= e!2608514 tp!1283998)))

(assert (=> b!4201368 (= tp!1283773 e!2608514)))

(declare-fun b!4202173 () Bool)

(declare-fun tp!1284000 () Bool)

(declare-fun tp!1283996 () Bool)

(assert (=> b!4202173 (= e!2608514 (and tp!1284000 tp!1283996))))

(assert (= (and b!4201368 ((_ is ElementMatch!12621) (regex!7716 (h!51603 (t!346812 rules!3967))))) b!4202172))

(assert (= (and b!4201368 ((_ is Concat!20568) (regex!7716 (h!51603 (t!346812 rules!3967))))) b!4202173))

(assert (= (and b!4201368 ((_ is Star!12621) (regex!7716 (h!51603 (t!346812 rules!3967))))) b!4202174))

(assert (= (and b!4201368 ((_ is Union!12621) (regex!7716 (h!51603 (t!346812 rules!3967))))) b!4202175))

(declare-fun b!4202176 () Bool)

(declare-fun e!2608515 () Bool)

(declare-fun tp!1284001 () Bool)

(assert (=> b!4202176 (= e!2608515 (and tp_is_empty!22209 tp!1284001))))

(assert (=> b!4201348 (= tp!1283752 e!2608515)))

(assert (= (and b!4201348 ((_ is Cons!46182) (t!346811 (originalCharacters!8098 tBis!41)))) b!4202176))

(declare-fun b!4202177 () Bool)

(declare-fun e!2608516 () Bool)

(declare-fun tp!1284002 () Bool)

(assert (=> b!4202177 (= e!2608516 (and tp_is_empty!22209 tp!1284002))))

(assert (=> b!4201374 (= tp!1283782 e!2608516)))

(assert (= (and b!4201374 ((_ is Cons!46182) (t!346811 (t!346811 suffix!1557)))) b!4202177))

(declare-fun b!4202180 () Bool)

(declare-fun b_free!122655 () Bool)

(declare-fun b_next!123359 () Bool)

(assert (=> b!4202180 (= b_free!122655 (not b_next!123359))))

(declare-fun tb!251891 () Bool)

(declare-fun t!346994 () Bool)

(assert (=> (and b!4202180 (= (toValue!10420 (transformation!7716 (h!51603 (t!346812 (t!346812 rules!3967))))) (toValue!10420 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496392)))))) t!346994) tb!251891))

(declare-fun result!307036 () Bool)

(assert (= result!307036 result!306972))

(assert (=> d!1238792 t!346994))

(declare-fun tb!251893 () Bool)

(declare-fun t!346996 () Bool)

(assert (=> (and b!4202180 (= (toValue!10420 (transformation!7716 (h!51603 (t!346812 (t!346812 rules!3967))))) (toValue!10420 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496423)))))) t!346996) tb!251893))

(declare-fun result!307038 () Bool)

(assert (= result!307038 result!306984))

(assert (=> d!1238804 t!346996))

(declare-fun t!346998 () Bool)

(declare-fun tb!251895 () Bool)

(assert (=> (and b!4202180 (= (toValue!10420 (transformation!7716 (h!51603 (t!346812 (t!346812 rules!3967))))) (toValue!10420 (transformation!7716 rBis!178))) t!346998) tb!251895))

(declare-fun result!307040 () Bool)

(assert (= result!307040 result!307004))

(assert (=> d!1238814 t!346998))

(assert (=> d!1238816 t!346998))

(declare-fun b_and!329897 () Bool)

(declare-fun tp!1284006 () Bool)

(assert (=> b!4202180 (= tp!1284006 (and (=> t!346994 result!307036) (=> t!346996 result!307038) (=> t!346998 result!307040) b_and!329897))))

(declare-fun b_free!122657 () Bool)

(declare-fun b_next!123361 () Bool)

(assert (=> b!4202180 (= b_free!122657 (not b_next!123361))))

(declare-fun t!347000 () Bool)

(declare-fun tb!251897 () Bool)

(assert (=> (and b!4202180 (= (toChars!10279 (transformation!7716 (h!51603 (t!346812 (t!346812 rules!3967))))) (toChars!10279 (transformation!7716 (rule!10812 tBis!41)))) t!347000) tb!251897))

(declare-fun result!307042 () Bool)

(assert (= result!307042 result!306854))

(assert (=> b!4201047 t!347000))

(declare-fun t!347002 () Bool)

(declare-fun tb!251899 () Bool)

(assert (=> (and b!4202180 (= (toChars!10279 (transformation!7716 (h!51603 (t!346812 (t!346812 rules!3967))))) (toChars!10279 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496392)))))) t!347002) tb!251899))

(declare-fun result!307044 () Bool)

(assert (= result!307044 result!307024))

(assert (=> d!1238892 t!347002))

(assert (=> d!1238540 t!347000))

(declare-fun t!347004 () Bool)

(declare-fun tb!251901 () Bool)

(assert (=> (and b!4202180 (= (toChars!10279 (transformation!7716 (h!51603 (t!346812 (t!346812 rules!3967))))) (toChars!10279 (transformation!7716 rBis!178))) t!347004) tb!251901))

(declare-fun result!307046 () Bool)

(assert (= result!307046 result!306994))

(assert (=> d!1238814 t!347004))

(declare-fun tb!251903 () Bool)

(declare-fun t!347006 () Bool)

(assert (=> (and b!4202180 (= (toChars!10279 (transformation!7716 (h!51603 (t!346812 (t!346812 rules!3967))))) (toChars!10279 (transformation!7716 (rule!10812 (_1!25103 (get!15020 lt!1496423)))))) t!347006) tb!251903))

(declare-fun result!307048 () Bool)

(assert (= result!307048 result!307014))

(assert (=> d!1238824 t!347006))

(declare-fun t!347008 () Bool)

(declare-fun tb!251905 () Bool)

(assert (=> (and b!4202180 (= (toChars!10279 (transformation!7716 (h!51603 (t!346812 (t!346812 rules!3967))))) (toChars!10279 (transformation!7716 (rule!10812 t!8364)))) t!347008) tb!251905))

(declare-fun result!307050 () Bool)

(assert (= result!307050 result!306864))

(assert (=> b!4201054 t!347008))

(declare-fun tp!1284004 () Bool)

(declare-fun b_and!329899 () Bool)

(assert (=> b!4202180 (= tp!1284004 (and (=> t!347000 result!307042) (=> t!347008 result!307050) (=> t!347006 result!307048) (=> t!347004 result!307046) (=> t!347002 result!307044) b_and!329899))))

(declare-fun e!2608518 () Bool)

(assert (=> b!4202180 (= e!2608518 (and tp!1284006 tp!1284004))))

(declare-fun tp!1284003 () Bool)

(declare-fun e!2608517 () Bool)

(declare-fun b!4202179 () Bool)

(assert (=> b!4202179 (= e!2608517 (and tp!1284003 (inv!60737 (tag!8580 (h!51603 (t!346812 (t!346812 rules!3967))))) (inv!60741 (transformation!7716 (h!51603 (t!346812 (t!346812 rules!3967))))) e!2608518))))

(declare-fun b!4202178 () Bool)

(declare-fun e!2608520 () Bool)

(declare-fun tp!1284005 () Bool)

(assert (=> b!4202178 (= e!2608520 (and e!2608517 tp!1284005))))

(assert (=> b!4201367 (= tp!1283775 e!2608520)))

(assert (= b!4202179 b!4202180))

(assert (= b!4202178 b!4202179))

(assert (= (and b!4201367 ((_ is Cons!46183) (t!346812 (t!346812 rules!3967)))) b!4202178))

(declare-fun m!4790463 () Bool)

(assert (=> b!4202179 m!4790463))

(declare-fun m!4790465 () Bool)

(assert (=> b!4202179 m!4790465))

(declare-fun b!4202184 () Bool)

(declare-fun e!2608521 () Bool)

(declare-fun tp!1284010 () Bool)

(declare-fun tp!1284008 () Bool)

(assert (=> b!4202184 (= e!2608521 (and tp!1284010 tp!1284008))))

(declare-fun b!4202181 () Bool)

(assert (=> b!4202181 (= e!2608521 tp_is_empty!22209)))

(declare-fun b!4202183 () Bool)

(declare-fun tp!1284009 () Bool)

(assert (=> b!4202183 (= e!2608521 tp!1284009)))

(assert (=> b!4201347 (= tp!1283750 e!2608521)))

(declare-fun b!4202182 () Bool)

(declare-fun tp!1284011 () Bool)

(declare-fun tp!1284007 () Bool)

(assert (=> b!4202182 (= e!2608521 (and tp!1284011 tp!1284007))))

(assert (= (and b!4201347 ((_ is ElementMatch!12621) (regOne!25755 (regex!7716 (rule!10812 tBis!41))))) b!4202181))

(assert (= (and b!4201347 ((_ is Concat!20568) (regOne!25755 (regex!7716 (rule!10812 tBis!41))))) b!4202182))

(assert (= (and b!4201347 ((_ is Star!12621) (regOne!25755 (regex!7716 (rule!10812 tBis!41))))) b!4202183))

(assert (= (and b!4201347 ((_ is Union!12621) (regOne!25755 (regex!7716 (rule!10812 tBis!41))))) b!4202184))

(declare-fun b!4202188 () Bool)

(declare-fun e!2608522 () Bool)

(declare-fun tp!1284015 () Bool)

(declare-fun tp!1284013 () Bool)

(assert (=> b!4202188 (= e!2608522 (and tp!1284015 tp!1284013))))

(declare-fun b!4202185 () Bool)

(assert (=> b!4202185 (= e!2608522 tp_is_empty!22209)))

(declare-fun b!4202187 () Bool)

(declare-fun tp!1284014 () Bool)

(assert (=> b!4202187 (= e!2608522 tp!1284014)))

(assert (=> b!4201347 (= tp!1283748 e!2608522)))

(declare-fun b!4202186 () Bool)

(declare-fun tp!1284016 () Bool)

(declare-fun tp!1284012 () Bool)

(assert (=> b!4202186 (= e!2608522 (and tp!1284016 tp!1284012))))

(assert (= (and b!4201347 ((_ is ElementMatch!12621) (regTwo!25755 (regex!7716 (rule!10812 tBis!41))))) b!4202185))

(assert (= (and b!4201347 ((_ is Concat!20568) (regTwo!25755 (regex!7716 (rule!10812 tBis!41))))) b!4202186))

(assert (= (and b!4201347 ((_ is Star!12621) (regTwo!25755 (regex!7716 (rule!10812 tBis!41))))) b!4202187))

(assert (= (and b!4201347 ((_ is Union!12621) (regTwo!25755 (regex!7716 (rule!10812 tBis!41))))) b!4202188))

(declare-fun b!4202192 () Bool)

(declare-fun e!2608523 () Bool)

(declare-fun tp!1284020 () Bool)

(declare-fun tp!1284018 () Bool)

(assert (=> b!4202192 (= e!2608523 (and tp!1284020 tp!1284018))))

(declare-fun b!4202189 () Bool)

(assert (=> b!4202189 (= e!2608523 tp_is_empty!22209)))

(declare-fun b!4202191 () Bool)

(declare-fun tp!1284019 () Bool)

(assert (=> b!4202191 (= e!2608523 tp!1284019)))

(assert (=> b!4201372 (= tp!1283779 e!2608523)))

(declare-fun b!4202190 () Bool)

(declare-fun tp!1284021 () Bool)

(declare-fun tp!1284017 () Bool)

(assert (=> b!4202190 (= e!2608523 (and tp!1284021 tp!1284017))))

(assert (= (and b!4201372 ((_ is ElementMatch!12621) (reg!12950 (regex!7716 (h!51603 rules!3967))))) b!4202189))

(assert (= (and b!4201372 ((_ is Concat!20568) (reg!12950 (regex!7716 (h!51603 rules!3967))))) b!4202190))

(assert (= (and b!4201372 ((_ is Star!12621) (reg!12950 (regex!7716 (h!51603 rules!3967))))) b!4202191))

(assert (= (and b!4201372 ((_ is Union!12621) (reg!12950 (regex!7716 (h!51603 rules!3967))))) b!4202192))

(declare-fun b!4202196 () Bool)

(declare-fun e!2608524 () Bool)

(declare-fun tp!1284025 () Bool)

(declare-fun tp!1284023 () Bool)

(assert (=> b!4202196 (= e!2608524 (and tp!1284025 tp!1284023))))

(declare-fun b!4202193 () Bool)

(assert (=> b!4202193 (= e!2608524 tp_is_empty!22209)))

(declare-fun b!4202195 () Bool)

(declare-fun tp!1284024 () Bool)

(assert (=> b!4202195 (= e!2608524 tp!1284024)))

(assert (=> b!4201345 (= tp!1283751 e!2608524)))

(declare-fun b!4202194 () Bool)

(declare-fun tp!1284026 () Bool)

(declare-fun tp!1284022 () Bool)

(assert (=> b!4202194 (= e!2608524 (and tp!1284026 tp!1284022))))

(assert (= (and b!4201345 ((_ is ElementMatch!12621) (regOne!25754 (regex!7716 (rule!10812 tBis!41))))) b!4202193))

(assert (= (and b!4201345 ((_ is Concat!20568) (regOne!25754 (regex!7716 (rule!10812 tBis!41))))) b!4202194))

(assert (= (and b!4201345 ((_ is Star!12621) (regOne!25754 (regex!7716 (rule!10812 tBis!41))))) b!4202195))

(assert (= (and b!4201345 ((_ is Union!12621) (regOne!25754 (regex!7716 (rule!10812 tBis!41))))) b!4202196))

(declare-fun b!4202200 () Bool)

(declare-fun e!2608525 () Bool)

(declare-fun tp!1284030 () Bool)

(declare-fun tp!1284028 () Bool)

(assert (=> b!4202200 (= e!2608525 (and tp!1284030 tp!1284028))))

(declare-fun b!4202197 () Bool)

(assert (=> b!4202197 (= e!2608525 tp_is_empty!22209)))

(declare-fun b!4202199 () Bool)

(declare-fun tp!1284029 () Bool)

(assert (=> b!4202199 (= e!2608525 tp!1284029)))

(assert (=> b!4201345 (= tp!1283747 e!2608525)))

(declare-fun b!4202198 () Bool)

(declare-fun tp!1284031 () Bool)

(declare-fun tp!1284027 () Bool)

(assert (=> b!4202198 (= e!2608525 (and tp!1284031 tp!1284027))))

(assert (= (and b!4201345 ((_ is ElementMatch!12621) (regTwo!25754 (regex!7716 (rule!10812 tBis!41))))) b!4202197))

(assert (= (and b!4201345 ((_ is Concat!20568) (regTwo!25754 (regex!7716 (rule!10812 tBis!41))))) b!4202198))

(assert (= (and b!4201345 ((_ is Star!12621) (regTwo!25754 (regex!7716 (rule!10812 tBis!41))))) b!4202199))

(assert (= (and b!4201345 ((_ is Union!12621) (regTwo!25754 (regex!7716 (rule!10812 tBis!41))))) b!4202200))

(declare-fun b!4202204 () Bool)

(declare-fun e!2608526 () Bool)

(declare-fun tp!1284035 () Bool)

(declare-fun tp!1284033 () Bool)

(assert (=> b!4202204 (= e!2608526 (and tp!1284035 tp!1284033))))

(declare-fun b!4202201 () Bool)

(assert (=> b!4202201 (= e!2608526 tp_is_empty!22209)))

(declare-fun b!4202203 () Bool)

(declare-fun tp!1284034 () Bool)

(assert (=> b!4202203 (= e!2608526 tp!1284034)))

(assert (=> b!4201346 (= tp!1283749 e!2608526)))

(declare-fun b!4202202 () Bool)

(declare-fun tp!1284036 () Bool)

(declare-fun tp!1284032 () Bool)

(assert (=> b!4202202 (= e!2608526 (and tp!1284036 tp!1284032))))

(assert (= (and b!4201346 ((_ is ElementMatch!12621) (reg!12950 (regex!7716 (rule!10812 tBis!41))))) b!4202201))

(assert (= (and b!4201346 ((_ is Concat!20568) (reg!12950 (regex!7716 (rule!10812 tBis!41))))) b!4202202))

(assert (= (and b!4201346 ((_ is Star!12621) (reg!12950 (regex!7716 (rule!10812 tBis!41))))) b!4202203))

(assert (= (and b!4201346 ((_ is Union!12621) (reg!12950 (regex!7716 (rule!10812 tBis!41))))) b!4202204))

(declare-fun b!4202208 () Bool)

(declare-fun e!2608527 () Bool)

(declare-fun tp!1284040 () Bool)

(declare-fun tp!1284038 () Bool)

(assert (=> b!4202208 (= e!2608527 (and tp!1284040 tp!1284038))))

(declare-fun b!4202205 () Bool)

(assert (=> b!4202205 (= e!2608527 tp_is_empty!22209)))

(declare-fun b!4202207 () Bool)

(declare-fun tp!1284039 () Bool)

(assert (=> b!4202207 (= e!2608527 tp!1284039)))

(assert (=> b!4201373 (= tp!1283780 e!2608527)))

(declare-fun b!4202206 () Bool)

(declare-fun tp!1284041 () Bool)

(declare-fun tp!1284037 () Bool)

(assert (=> b!4202206 (= e!2608527 (and tp!1284041 tp!1284037))))

(assert (= (and b!4201373 ((_ is ElementMatch!12621) (regOne!25755 (regex!7716 (h!51603 rules!3967))))) b!4202205))

(assert (= (and b!4201373 ((_ is Concat!20568) (regOne!25755 (regex!7716 (h!51603 rules!3967))))) b!4202206))

(assert (= (and b!4201373 ((_ is Star!12621) (regOne!25755 (regex!7716 (h!51603 rules!3967))))) b!4202207))

(assert (= (and b!4201373 ((_ is Union!12621) (regOne!25755 (regex!7716 (h!51603 rules!3967))))) b!4202208))

(declare-fun b!4202212 () Bool)

(declare-fun e!2608528 () Bool)

(declare-fun tp!1284045 () Bool)

(declare-fun tp!1284043 () Bool)

(assert (=> b!4202212 (= e!2608528 (and tp!1284045 tp!1284043))))

(declare-fun b!4202209 () Bool)

(assert (=> b!4202209 (= e!2608528 tp_is_empty!22209)))

(declare-fun b!4202211 () Bool)

(declare-fun tp!1284044 () Bool)

(assert (=> b!4202211 (= e!2608528 tp!1284044)))

(assert (=> b!4201373 (= tp!1283778 e!2608528)))

(declare-fun b!4202210 () Bool)

(declare-fun tp!1284046 () Bool)

(declare-fun tp!1284042 () Bool)

(assert (=> b!4202210 (= e!2608528 (and tp!1284046 tp!1284042))))

(assert (= (and b!4201373 ((_ is ElementMatch!12621) (regTwo!25755 (regex!7716 (h!51603 rules!3967))))) b!4202209))

(assert (= (and b!4201373 ((_ is Concat!20568) (regTwo!25755 (regex!7716 (h!51603 rules!3967))))) b!4202210))

(assert (= (and b!4201373 ((_ is Star!12621) (regTwo!25755 (regex!7716 (h!51603 rules!3967))))) b!4202211))

(assert (= (and b!4201373 ((_ is Union!12621) (regTwo!25755 (regex!7716 (h!51603 rules!3967))))) b!4202212))

(declare-fun b_lambda!123685 () Bool)

(assert (= b_lambda!123679 (or (and b!4202180 b_free!122655 (= (toValue!10420 (transformation!7716 (h!51603 (t!346812 (t!346812 rules!3967))))) (toValue!10420 (transformation!7716 rBis!178)))) (and b!4200957 b_free!122631) (and b!4200966 b_free!122635 (= (toValue!10420 (transformation!7716 (h!51603 rules!3967))) (toValue!10420 (transformation!7716 rBis!178)))) (and b!4200976 b_free!122639 (= (toValue!10420 (transformation!7716 (rule!10812 tBis!41))) (toValue!10420 (transformation!7716 rBis!178)))) (and b!4200958 b_free!122627 (= (toValue!10420 (transformation!7716 (rule!10812 t!8364))) (toValue!10420 (transformation!7716 rBis!178)))) (and b!4201369 b_free!122647 (= (toValue!10420 (transformation!7716 (h!51603 (t!346812 rules!3967)))) (toValue!10420 (transformation!7716 rBis!178)))) b_lambda!123685)))

(declare-fun b_lambda!123687 () Bool)

(assert (= b_lambda!123677 (or (and b!4202180 b_free!122655 (= (toValue!10420 (transformation!7716 (h!51603 (t!346812 (t!346812 rules!3967))))) (toValue!10420 (transformation!7716 rBis!178)))) (and b!4200957 b_free!122631) (and b!4200966 b_free!122635 (= (toValue!10420 (transformation!7716 (h!51603 rules!3967))) (toValue!10420 (transformation!7716 rBis!178)))) (and b!4200976 b_free!122639 (= (toValue!10420 (transformation!7716 (rule!10812 tBis!41))) (toValue!10420 (transformation!7716 rBis!178)))) (and b!4200958 b_free!122627 (= (toValue!10420 (transformation!7716 (rule!10812 t!8364))) (toValue!10420 (transformation!7716 rBis!178)))) (and b!4201369 b_free!122647 (= (toValue!10420 (transformation!7716 (h!51603 (t!346812 rules!3967)))) (toValue!10420 (transformation!7716 rBis!178)))) b_lambda!123687)))

(declare-fun b_lambda!123689 () Bool)

(assert (= b_lambda!123675 (or (and b!4200957 b_free!122633) (and b!4202180 b_free!122657 (= (toChars!10279 (transformation!7716 (h!51603 (t!346812 (t!346812 rules!3967))))) (toChars!10279 (transformation!7716 rBis!178)))) (and b!4200966 b_free!122637 (= (toChars!10279 (transformation!7716 (h!51603 rules!3967))) (toChars!10279 (transformation!7716 rBis!178)))) (and b!4200958 b_free!122629 (= (toChars!10279 (transformation!7716 (rule!10812 t!8364))) (toChars!10279 (transformation!7716 rBis!178)))) (and b!4200976 b_free!122641 (= (toChars!10279 (transformation!7716 (rule!10812 tBis!41))) (toChars!10279 (transformation!7716 rBis!178)))) (and b!4201369 b_free!122649 (= (toChars!10279 (transformation!7716 (h!51603 (t!346812 rules!3967)))) (toChars!10279 (transformation!7716 rBis!178)))) b_lambda!123689)))

(check-sat (not d!1238908) (not bm!292646) (not b!4202012) (not b!4202196) (not b!4202130) (not b!4201913) (not b!4202050) b_and!329897 (not b!4202090) (not b!4201503) (not b!4202169) (not b!4201928) (not d!1238884) (not b_lambda!123685) (not d!1238794) (not b!4202058) (not b!4202154) (not tb!251841) (not b!4201548) (not b!4202142) (not b_lambda!123681) (not d!1238806) (not d!1238564) (not d!1238890) (not b!4201053) (not b!4202161) (not b!4202202) (not b!4202182) (not b!4202177) (not b!4202131) (not b!4202098) (not b!4201974) (not bm!292572) (not b_lambda!123687) (not b!4202083) (not b!4202074) b_and!329873 (not b!4202126) (not b!4202184) (not bm!292590) (not b!4202167) (not b!4202054) (not b!4201970) (not d!1238602) (not b!4202094) (not b_next!123353) b_and!329867 (not b!4202110) (not b!4202171) (not b!4202081) (not b!4202114) (not b!4201926) (not b!4202156) (not b!4201979) (not b_lambda!123649) (not b!4202123) (not b!4202119) (not b!4202108) (not b!4202173) (not b!4202032) (not b_next!123341) (not d!1238918) (not tb!251851) (not bm!292595) (not b!4201919) (not b!4201920) (not b!4202147) (not b!4202152) (not b!4202035) (not b!4201976) (not d!1238898) (not b!4201955) (not b!4202178) (not b!4202062) (not b!4202099) (not d!1238900) (not b!4202100) (not b!4202124) (not b!4202093) (not d!1238876) (not b!4201512) (not b!4202033) (not d!1238888) (not d!1238808) b_and!329869 (not b_next!123337) (not d!1238896) (not d!1238874) (not bm!292651) (not b_next!123351) (not b!4202168) (not b!4202165) (not b!4201546) (not d!1238916) (not b!4202071) (not b!4202021) (not b!4201998) (not b!4202080) (not b!4202057) (not b!4202200) (not bm!292593) b_and!329889 (not b_lambda!123647) (not b!4202086) (not b!4202020) (not b!4202162) (not b!4202111) (not d!1238788) (not b!4202183) (not d!1238764) (not b!4202048) (not d!1238780) (not b!4201923) (not bm!292592) (not b!4202127) (not b!4202112) (not b!4202077) (not b!4202203) (not b!4202128) (not b_lambda!123671) (not b!4202188) (not b!4201983) (not d!1238922) (not d!1238762) (not bm!292648) (not b_lambda!123673) (not b!4202176) (not b!4201432) (not b!4201545) (not b!4202146) (not b!4201995) (not b!4202211) (not b!4202190) (not b!4202037) b_and!329871 (not d!1238802) (not b!4201989) (not b!4201964) (not b!4202210) (not b!4202179) (not b!4202150) (not b!4202107) (not d!1238810) (not b!4202065) (not b!4202085) (not b!4201510) (not bm!292653) (not d!1238782) (not b!4202153) (not b!4202087) (not bm!292596) b_and!329899 (not b!4202159) (not b_next!123331) (not tb!251831) b_and!329891 (not b!4201973) (not b!4201425) tp_is_empty!22209 (not b!4202120) (not b!4201967) (not b!4202013) (not b_next!123339) (not b!4201394) (not b!4201434) (not b!4202015) (not b!4201915) (not b!4202096) (not b!4202106) (not b!4201502) (not b!4202060) (not bm!292591) (not b_next!123361) (not b!4202163) (not b!4201435) (not bm!292650) (not d!1238914) (not d!1238886) (not b!4202064) (not bm!292594) (not bm!292652) (not b!4202206) (not b!4202011) (not b!4201993) (not b!4202192) (not d!1238798) (not b!4202187) (not b!4202195) (not b!4202116) (not bm!292647) (not b!4202115) (not d!1238774) (not b!4202157) (not b_lambda!123645) (not bm!292597) (not b!4202143) (not d!1238904) (not b!4202122) (not b!4202212) (not b!4202204) (not tb!251861) (not b!4202191) (not b!4202132) (not b!4201428) b_and!329893 (not b!4202158) (not b!4202208) (not b_next!123343) (not b!4202055) (not d!1238862) (not b!4201977) (not tb!251881) (not b!4202207) (not b!4202101) (not tb!251871) (not b!4201917) (not b_next!123345) (not d!1238832) b_and!329875 (not b!4202102) (not d!1238894) (not d!1238594) (not d!1238778) (not d!1238776) (not b!4202118) (not b!4202097) (not b!4202068) (not b!4201981) b_and!329887 (not b!4201504) (not d!1238902) (not b!4202066) (not b!4202063) (not b!4202148) (not d!1238878) (not b_next!123333) (not b!4202149) (not b!4202005) (not b!4201958) (not b!4202166) (not b!4202199) (not d!1238928) (not d!1238596) (not d!1238822) (not b!4202170) (not d!1238790) (not b_next!123359) (not d!1238562) (not b!4202009) (not b_lambda!123683) (not b!4202144) (not b!4202174) (not d!1238850) (not d!1238818) (not d!1238820) (not b!4202198) (not b!4201999) (not b!4202007) b_and!329895 (not b!4202061) (not d!1238892) (not b_lambda!123689) (not b_next!123335) (not b!4202141) (not d!1238920) (not d!1238824) (not b!4202186) (not b!4202039) (not b!4202175) (not b!4202194) (not b!4202104) (not b!4202052) (not b!4202089) (not b!4201997) (not b!4201497) (not b!4201056) (not b!4202078) (not b!4201392) (not b!4201431) (not d!1238814))
(check-sat b_and!329897 b_and!329873 (not b_next!123341) b_and!329889 b_and!329871 (not b_next!123339) (not b_next!123361) b_and!329887 (not b_next!123333) (not b_next!123359) b_and!329895 (not b_next!123335) (not b_next!123353) b_and!329867 b_and!329869 (not b_next!123337) (not b_next!123351) b_and!329899 (not b_next!123331) b_and!329891 (not b_next!123343) b_and!329893 (not b_next!123345) b_and!329875)
