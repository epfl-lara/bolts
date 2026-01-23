; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!387108 () Bool)

(assert start!387108)

(declare-fun b!4090773 () Bool)

(declare-fun b_free!114377 () Bool)

(declare-fun b_next!115081 () Bool)

(assert (=> b!4090773 (= b_free!114377 (not b_next!115081))))

(declare-fun tp!1238484 () Bool)

(declare-fun b_and!315175 () Bool)

(assert (=> b!4090773 (= tp!1238484 b_and!315175)))

(declare-fun b_free!114379 () Bool)

(declare-fun b_next!115083 () Bool)

(assert (=> b!4090773 (= b_free!114379 (not b_next!115083))))

(declare-fun tp!1238485 () Bool)

(declare-fun b_and!315177 () Bool)

(assert (=> b!4090773 (= tp!1238485 b_and!315177)))

(declare-fun b!4090777 () Bool)

(declare-fun b_free!114381 () Bool)

(declare-fun b_next!115085 () Bool)

(assert (=> b!4090777 (= b_free!114381 (not b_next!115085))))

(declare-fun tp!1238489 () Bool)

(declare-fun b_and!315179 () Bool)

(assert (=> b!4090777 (= tp!1238489 b_and!315179)))

(declare-fun b_free!114383 () Bool)

(declare-fun b_next!115087 () Bool)

(assert (=> b!4090777 (= b_free!114383 (not b_next!115087))))

(declare-fun tp!1238490 () Bool)

(declare-fun b_and!315181 () Bool)

(assert (=> b!4090777 (= tp!1238490 b_and!315181)))

(declare-fun b!4090764 () Bool)

(declare-fun e!2538766 () Bool)

(declare-datatypes ((List!43995 0))(
  ( (Nil!43871) (Cons!43871 (h!49291 (_ BitVec 16)) (t!338594 List!43995)) )
))
(declare-datatypes ((TokenValue!7326 0))(
  ( (FloatLiteralValue!14652 (text!51727 List!43995)) (TokenValueExt!7325 (__x!26869 Int)) (Broken!36630 (value!222862 List!43995)) (Object!7449) (End!7326) (Def!7326) (Underscore!7326) (Match!7326) (Else!7326) (Error!7326) (Case!7326) (If!7326) (Extends!7326) (Abstract!7326) (Class!7326) (Val!7326) (DelimiterValue!14652 (del!7386 List!43995)) (KeywordValue!7332 (value!222863 List!43995)) (CommentValue!14652 (value!222864 List!43995)) (WhitespaceValue!14652 (value!222865 List!43995)) (IndentationValue!7326 (value!222866 List!43995)) (String!50379) (Int32!7326) (Broken!36631 (value!222867 List!43995)) (Boolean!7327) (Unit!63390) (OperatorValue!7329 (op!7386 List!43995)) (IdentifierValue!14652 (value!222868 List!43995)) (IdentifierValue!14653 (value!222869 List!43995)) (WhitespaceValue!14653 (value!222870 List!43995)) (True!14652) (False!14652) (Broken!36632 (value!222871 List!43995)) (Broken!36633 (value!222872 List!43995)) (True!14653) (RightBrace!7326) (RightBracket!7326) (Colon!7326) (Null!7326) (Comma!7326) (LeftBracket!7326) (False!14653) (LeftBrace!7326) (ImaginaryLiteralValue!7326 (text!51728 List!43995)) (StringLiteralValue!21978 (value!222873 List!43995)) (EOFValue!7326 (value!222874 List!43995)) (IdentValue!7326 (value!222875 List!43995)) (DelimiterValue!14653 (value!222876 List!43995)) (DedentValue!7326 (value!222877 List!43995)) (NewLineValue!7326 (value!222878 List!43995)) (IntegerValue!21978 (value!222879 (_ BitVec 32)) (text!51729 List!43995)) (IntegerValue!21979 (value!222880 Int) (text!51730 List!43995)) (Times!7326) (Or!7326) (Equal!7326) (Minus!7326) (Broken!36634 (value!222881 List!43995)) (And!7326) (Div!7326) (LessEqual!7326) (Mod!7326) (Concat!19327) (Not!7326) (Plus!7326) (SpaceValue!7326 (value!222882 List!43995)) (IntegerValue!21980 (value!222883 Int) (text!51731 List!43995)) (StringLiteralValue!21979 (text!51732 List!43995)) (FloatLiteralValue!14653 (text!51733 List!43995)) (BytesLiteralValue!7326 (value!222884 List!43995)) (CommentValue!14653 (value!222885 List!43995)) (StringLiteralValue!21980 (value!222886 List!43995)) (ErrorTokenValue!7326 (msg!7387 List!43995)) )
))
(declare-datatypes ((C!24188 0))(
  ( (C!24189 (val!14204 Int)) )
))
(declare-datatypes ((Regex!12001 0))(
  ( (ElementMatch!12001 (c!705010 C!24188)) (Concat!19328 (regOne!24514 Regex!12001) (regTwo!24514 Regex!12001)) (EmptyExpr!12001) (Star!12001 (reg!12330 Regex!12001)) (EmptyLang!12001) (Union!12001 (regOne!24515 Regex!12001) (regTwo!24515 Regex!12001)) )
))
(declare-datatypes ((String!50380 0))(
  ( (String!50381 (value!222887 String)) )
))
(declare-datatypes ((List!43996 0))(
  ( (Nil!43872) (Cons!43872 (h!49292 C!24188) (t!338595 List!43996)) )
))
(declare-datatypes ((IArray!26619 0))(
  ( (IArray!26620 (innerList!13367 List!43996)) )
))
(declare-datatypes ((Conc!13307 0))(
  ( (Node!13307 (left!32977 Conc!13307) (right!33307 Conc!13307) (csize!26844 Int) (cheight!13518 Int)) (Leaf!20570 (xs!16613 IArray!26619) (csize!26845 Int)) (Empty!13307) )
))
(declare-datatypes ((BalanceConc!26208 0))(
  ( (BalanceConc!26209 (c!705011 Conc!13307)) )
))
(declare-datatypes ((TokenValueInjection!14080 0))(
  ( (TokenValueInjection!14081 (toValue!9684 Int) (toChars!9543 Int)) )
))
(declare-datatypes ((Rule!13992 0))(
  ( (Rule!13993 (regex!7096 Regex!12001) (tag!7956 String!50380) (isSeparator!7096 Bool) (transformation!7096 TokenValueInjection!14080)) )
))
(declare-fun r!4213 () Rule!13992)

(declare-fun tp!1238481 () Bool)

(declare-fun e!2538765 () Bool)

(declare-fun inv!58571 (String!50380) Bool)

(declare-fun inv!58574 (TokenValueInjection!14080) Bool)

(assert (=> b!4090764 (= e!2538765 (and tp!1238481 (inv!58571 (tag!7956 r!4213)) (inv!58574 (transformation!7096 r!4213)) e!2538766))))

(declare-fun b!4090765 () Bool)

(declare-fun e!2538770 () Bool)

(declare-fun e!2538764 () Bool)

(assert (=> b!4090765 (= e!2538770 e!2538764)))

(declare-fun res!1671969 () Bool)

(assert (=> b!4090765 (=> (not res!1671969) (not e!2538764))))

(declare-datatypes ((LexerInterface!6685 0))(
  ( (LexerInterfaceExt!6682 (__x!26870 Int)) (Lexer!6683) )
))
(declare-fun thiss!26199 () LexerInterface!6685)

(declare-datatypes ((List!43997 0))(
  ( (Nil!43873) (Cons!43873 (h!49293 Rule!13992) (t!338596 List!43997)) )
))
(declare-fun rules!3870 () List!43997)

(declare-datatypes ((Token!13318 0))(
  ( (Token!13319 (value!222888 TokenValue!7326) (rule!10238 Rule!13992) (size!32770 Int) (originalCharacters!7690 List!43996)) )
))
(declare-datatypes ((tuple2!42804 0))(
  ( (tuple2!42805 (_1!24536 Token!13318) (_2!24536 List!43996)) )
))
(declare-datatypes ((Option!9502 0))(
  ( (None!9501) (Some!9501 (v!39989 tuple2!42804)) )
))
(declare-fun lt!1463042 () Option!9502)

(declare-fun input!3411 () List!43996)

(declare-fun maxPrefix!3975 (LexerInterface!6685 List!43997 List!43996) Option!9502)

(assert (=> b!4090765 (= res!1671969 (= (maxPrefix!3975 thiss!26199 rules!3870 input!3411) lt!1463042))))

(declare-fun lt!1463041 () Token!13318)

(declare-fun suffix!1518 () List!43996)

(assert (=> b!4090765 (= lt!1463042 (Some!9501 (tuple2!42805 lt!1463041 suffix!1518)))))

(declare-fun p!2988 () List!43996)

(declare-fun lt!1463039 () BalanceConc!26208)

(declare-fun apply!10279 (TokenValueInjection!14080 BalanceConc!26208) TokenValue!7326)

(declare-fun size!32771 (List!43996) Int)

(assert (=> b!4090765 (= lt!1463041 (Token!13319 (apply!10279 (transformation!7096 r!4213) lt!1463039) r!4213 (size!32771 p!2988) p!2988))))

(declare-datatypes ((Unit!63391 0))(
  ( (Unit!63392) )
))
(declare-fun lt!1463038 () Unit!63391)

(declare-fun lemmaSemiInverse!2063 (TokenValueInjection!14080 BalanceConc!26208) Unit!63391)

(assert (=> b!4090765 (= lt!1463038 (lemmaSemiInverse!2063 (transformation!7096 r!4213) lt!1463039))))

(declare-fun seqFromList!5313 (List!43996) BalanceConc!26208)

(assert (=> b!4090765 (= lt!1463039 (seqFromList!5313 p!2988))))

(declare-fun b!4090766 () Bool)

(declare-fun res!1671967 () Bool)

(declare-fun e!2538775 () Bool)

(assert (=> b!4090766 (=> res!1671967 e!2538775)))

(declare-fun isEmpty!26241 (List!43997) Bool)

(assert (=> b!4090766 (= res!1671967 (isEmpty!26241 (t!338596 rules!3870)))))

(declare-fun b!4090767 () Bool)

(declare-fun res!1671970 () Bool)

(assert (=> b!4090767 (=> (not res!1671970) (not e!2538770))))

(declare-fun isEmpty!26242 (List!43996) Bool)

(assert (=> b!4090767 (= res!1671970 (not (isEmpty!26242 p!2988)))))

(declare-fun b!4090768 () Bool)

(declare-fun e!2538773 () Bool)

(assert (=> b!4090768 (= e!2538764 (not e!2538773))))

(declare-fun res!1671958 () Bool)

(assert (=> b!4090768 (=> res!1671958 e!2538773)))

(declare-fun matchR!5942 (Regex!12001 List!43996) Bool)

(assert (=> b!4090768 (= res!1671958 (not (matchR!5942 (regex!7096 r!4213) p!2988)))))

(declare-fun ruleValid!3016 (LexerInterface!6685 Rule!13992) Bool)

(assert (=> b!4090768 (ruleValid!3016 thiss!26199 r!4213)))

(declare-fun lt!1463040 () Unit!63391)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2082 (LexerInterface!6685 Rule!13992 List!43997) Unit!63391)

(assert (=> b!4090768 (= lt!1463040 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2082 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4090769 () Bool)

(declare-fun res!1671968 () Bool)

(assert (=> b!4090769 (=> (not res!1671968) (not e!2538770))))

(assert (=> b!4090769 (= res!1671968 (not (isEmpty!26241 rules!3870)))))

(declare-fun b!4090770 () Bool)

(declare-fun res!1671963 () Bool)

(assert (=> b!4090770 (=> (not res!1671963) (not e!2538770))))

(declare-fun rulesInvariant!6028 (LexerInterface!6685 List!43997) Bool)

(assert (=> b!4090770 (= res!1671963 (rulesInvariant!6028 thiss!26199 rules!3870))))

(declare-fun b!4090771 () Bool)

(declare-fun res!1671964 () Bool)

(assert (=> b!4090771 (=> (not res!1671964) (not e!2538770))))

(declare-fun ++!11502 (List!43996 List!43996) List!43996)

(assert (=> b!4090771 (= res!1671964 (= input!3411 (++!11502 p!2988 suffix!1518)))))

(declare-fun b!4090772 () Bool)

(assert (=> b!4090772 (= e!2538773 e!2538775)))

(declare-fun res!1671966 () Bool)

(assert (=> b!4090772 (=> res!1671966 e!2538775)))

(declare-fun isEmpty!26243 (Option!9502) Bool)

(declare-fun maxPrefixOneRule!2957 (LexerInterface!6685 Rule!13992 List!43996) Option!9502)

(assert (=> b!4090772 (= res!1671966 (not (isEmpty!26243 (maxPrefixOneRule!2957 thiss!26199 (h!49293 rules!3870) input!3411))))))

(assert (=> b!4090772 (rulesInvariant!6028 thiss!26199 (t!338596 rules!3870))))

(declare-fun lt!1463045 () Unit!63391)

(declare-fun lemmaInvariantOnRulesThenOnTail!798 (LexerInterface!6685 Rule!13992 List!43997) Unit!63391)

(assert (=> b!4090772 (= lt!1463045 (lemmaInvariantOnRulesThenOnTail!798 thiss!26199 (h!49293 rules!3870) (t!338596 rules!3870)))))

(assert (=> b!4090773 (= e!2538766 (and tp!1238484 tp!1238485))))

(declare-fun b!4090774 () Bool)

(declare-fun res!1671960 () Bool)

(assert (=> b!4090774 (=> res!1671960 e!2538775)))

(assert (=> b!4090774 (= res!1671960 (not (= (maxPrefix!3975 thiss!26199 (t!338596 rules!3870) input!3411) lt!1463042)))))

(declare-fun res!1671962 () Bool)

(assert (=> start!387108 (=> (not res!1671962) (not e!2538770))))

(get-info :version)

(assert (=> start!387108 (= res!1671962 ((_ is Lexer!6683) thiss!26199))))

(assert (=> start!387108 e!2538770))

(assert (=> start!387108 true))

(declare-fun e!2538771 () Bool)

(assert (=> start!387108 e!2538771))

(declare-fun e!2538769 () Bool)

(assert (=> start!387108 e!2538769))

(declare-fun e!2538768 () Bool)

(assert (=> start!387108 e!2538768))

(declare-fun e!2538772 () Bool)

(assert (=> start!387108 e!2538772))

(assert (=> start!387108 e!2538765))

(declare-fun b!4090775 () Bool)

(declare-fun inv!58575 (Token!13318) Bool)

(assert (=> b!4090775 (= e!2538775 (inv!58575 lt!1463041))))

(assert (=> b!4090775 (= (maxPrefixOneRule!2957 thiss!26199 r!4213 input!3411) lt!1463042)))

(declare-fun lt!1463043 () Unit!63391)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1699 (LexerInterface!6685 List!43997 List!43996 List!43996 List!43996 Rule!13992) Unit!63391)

(assert (=> b!4090775 (= lt!1463043 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1699 thiss!26199 (t!338596 rules!3870) p!2988 input!3411 suffix!1518 r!4213))))

(declare-fun lt!1463044 () Unit!63391)

(assert (=> b!4090775 (= lt!1463044 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2082 thiss!26199 r!4213 (t!338596 rules!3870)))))

(declare-fun b!4090776 () Bool)

(declare-fun res!1671965 () Bool)

(assert (=> b!4090776 (=> res!1671965 e!2538773)))

(assert (=> b!4090776 (= res!1671965 (or (and ((_ is Cons!43873) rules!3870) (= (h!49293 rules!3870) r!4213)) (not ((_ is Cons!43873) rules!3870)) (= (h!49293 rules!3870) r!4213)))))

(declare-fun e!2538763 () Bool)

(assert (=> b!4090777 (= e!2538763 (and tp!1238489 tp!1238490))))

(declare-fun b!4090778 () Bool)

(declare-fun e!2538767 () Bool)

(declare-fun tp!1238488 () Bool)

(assert (=> b!4090778 (= e!2538769 (and e!2538767 tp!1238488))))

(declare-fun tp!1238486 () Bool)

(declare-fun b!4090779 () Bool)

(assert (=> b!4090779 (= e!2538767 (and tp!1238486 (inv!58571 (tag!7956 (h!49293 rules!3870))) (inv!58574 (transformation!7096 (h!49293 rules!3870))) e!2538763))))

(declare-fun b!4090780 () Bool)

(declare-fun res!1671959 () Bool)

(assert (=> b!4090780 (=> (not res!1671959) (not e!2538770))))

(declare-fun contains!8775 (List!43997 Rule!13992) Bool)

(assert (=> b!4090780 (= res!1671959 (contains!8775 rules!3870 r!4213))))

(declare-fun b!4090781 () Bool)

(declare-fun res!1671961 () Bool)

(assert (=> b!4090781 (=> res!1671961 e!2538775)))

(assert (=> b!4090781 (= res!1671961 (not (contains!8775 (t!338596 rules!3870) r!4213)))))

(declare-fun b!4090782 () Bool)

(declare-fun tp_is_empty!21005 () Bool)

(declare-fun tp!1238487 () Bool)

(assert (=> b!4090782 (= e!2538768 (and tp_is_empty!21005 tp!1238487))))

(declare-fun b!4090783 () Bool)

(declare-fun tp!1238482 () Bool)

(assert (=> b!4090783 (= e!2538772 (and tp_is_empty!21005 tp!1238482))))

(declare-fun b!4090784 () Bool)

(declare-fun tp!1238483 () Bool)

(assert (=> b!4090784 (= e!2538771 (and tp_is_empty!21005 tp!1238483))))

(assert (= (and start!387108 res!1671962) b!4090769))

(assert (= (and b!4090769 res!1671968) b!4090770))

(assert (= (and b!4090770 res!1671963) b!4090780))

(assert (= (and b!4090780 res!1671959) b!4090771))

(assert (= (and b!4090771 res!1671964) b!4090767))

(assert (= (and b!4090767 res!1671970) b!4090765))

(assert (= (and b!4090765 res!1671969) b!4090768))

(assert (= (and b!4090768 (not res!1671958)) b!4090776))

(assert (= (and b!4090776 (not res!1671965)) b!4090772))

(assert (= (and b!4090772 (not res!1671966)) b!4090766))

(assert (= (and b!4090766 (not res!1671967)) b!4090781))

(assert (= (and b!4090781 (not res!1671961)) b!4090774))

(assert (= (and b!4090774 (not res!1671960)) b!4090775))

(assert (= (and start!387108 ((_ is Cons!43872) suffix!1518)) b!4090784))

(assert (= b!4090779 b!4090777))

(assert (= b!4090778 b!4090779))

(assert (= (and start!387108 ((_ is Cons!43873) rules!3870)) b!4090778))

(assert (= (and start!387108 ((_ is Cons!43872) p!2988)) b!4090782))

(assert (= (and start!387108 ((_ is Cons!43872) input!3411)) b!4090783))

(assert (= b!4090764 b!4090773))

(assert (= start!387108 b!4090764))

(declare-fun m!4697465 () Bool)

(assert (=> b!4090779 m!4697465))

(declare-fun m!4697467 () Bool)

(assert (=> b!4090779 m!4697467))

(declare-fun m!4697469 () Bool)

(assert (=> b!4090765 m!4697469))

(declare-fun m!4697471 () Bool)

(assert (=> b!4090765 m!4697471))

(declare-fun m!4697473 () Bool)

(assert (=> b!4090765 m!4697473))

(declare-fun m!4697475 () Bool)

(assert (=> b!4090765 m!4697475))

(declare-fun m!4697477 () Bool)

(assert (=> b!4090765 m!4697477))

(declare-fun m!4697479 () Bool)

(assert (=> b!4090766 m!4697479))

(declare-fun m!4697481 () Bool)

(assert (=> b!4090769 m!4697481))

(declare-fun m!4697483 () Bool)

(assert (=> b!4090768 m!4697483))

(declare-fun m!4697485 () Bool)

(assert (=> b!4090768 m!4697485))

(declare-fun m!4697487 () Bool)

(assert (=> b!4090768 m!4697487))

(declare-fun m!4697489 () Bool)

(assert (=> b!4090780 m!4697489))

(declare-fun m!4697491 () Bool)

(assert (=> b!4090772 m!4697491))

(assert (=> b!4090772 m!4697491))

(declare-fun m!4697493 () Bool)

(assert (=> b!4090772 m!4697493))

(declare-fun m!4697495 () Bool)

(assert (=> b!4090772 m!4697495))

(declare-fun m!4697497 () Bool)

(assert (=> b!4090772 m!4697497))

(declare-fun m!4697499 () Bool)

(assert (=> b!4090764 m!4697499))

(declare-fun m!4697501 () Bool)

(assert (=> b!4090764 m!4697501))

(declare-fun m!4697503 () Bool)

(assert (=> b!4090774 m!4697503))

(declare-fun m!4697505 () Bool)

(assert (=> b!4090767 m!4697505))

(declare-fun m!4697507 () Bool)

(assert (=> b!4090771 m!4697507))

(declare-fun m!4697509 () Bool)

(assert (=> b!4090781 m!4697509))

(declare-fun m!4697511 () Bool)

(assert (=> b!4090770 m!4697511))

(declare-fun m!4697513 () Bool)

(assert (=> b!4090775 m!4697513))

(declare-fun m!4697515 () Bool)

(assert (=> b!4090775 m!4697515))

(declare-fun m!4697517 () Bool)

(assert (=> b!4090775 m!4697517))

(declare-fun m!4697519 () Bool)

(assert (=> b!4090775 m!4697519))

(check-sat (not b!4090774) b_and!315181 (not b!4090781) (not b!4090765) (not b!4090779) (not b!4090783) (not b_next!115085) (not b!4090766) (not b_next!115087) (not b!4090780) (not b_next!115083) (not b!4090784) tp_is_empty!21005 (not b!4090767) b_and!315179 b_and!315175 (not b_next!115081) (not b!4090764) (not b!4090778) b_and!315177 (not b!4090769) (not b!4090770) (not b!4090775) (not b!4090772) (not b!4090782) (not b!4090771) (not b!4090768))
(check-sat (not b_next!115087) b_and!315181 (not b_next!115083) b_and!315177 (not b_next!115085) b_and!315179 b_and!315175 (not b_next!115081))
(get-model)

(declare-fun b!4090886 () Bool)

(declare-fun res!1672053 () Bool)

(declare-fun e!2538824 () Bool)

(assert (=> b!4090886 (=> (not res!1672053) (not e!2538824))))

(declare-fun lt!1463086 () Option!9502)

(declare-fun get!14388 (Option!9502) tuple2!42804)

(assert (=> b!4090886 (= res!1672053 (= (value!222888 (_1!24536 (get!14388 lt!1463086))) (apply!10279 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463086)))) (seqFromList!5313 (originalCharacters!7690 (_1!24536 (get!14388 lt!1463086)))))))))

(declare-fun b!4090887 () Bool)

(declare-fun e!2538825 () Option!9502)

(declare-fun lt!1463084 () Option!9502)

(declare-fun lt!1463087 () Option!9502)

(assert (=> b!4090887 (= e!2538825 (ite (and ((_ is None!9501) lt!1463084) ((_ is None!9501) lt!1463087)) None!9501 (ite ((_ is None!9501) lt!1463087) lt!1463084 (ite ((_ is None!9501) lt!1463084) lt!1463087 (ite (>= (size!32770 (_1!24536 (v!39989 lt!1463084))) (size!32770 (_1!24536 (v!39989 lt!1463087)))) lt!1463084 lt!1463087)))))))

(declare-fun call!289103 () Option!9502)

(assert (=> b!4090887 (= lt!1463084 call!289103)))

(assert (=> b!4090887 (= lt!1463087 (maxPrefix!3975 thiss!26199 (t!338596 rules!3870) input!3411))))

(declare-fun b!4090888 () Bool)

(declare-fun e!2538826 () Bool)

(assert (=> b!4090888 (= e!2538826 e!2538824)))

(declare-fun res!1672057 () Bool)

(assert (=> b!4090888 (=> (not res!1672057) (not e!2538824))))

(declare-fun isDefined!7192 (Option!9502) Bool)

(assert (=> b!4090888 (= res!1672057 (isDefined!7192 lt!1463086))))

(declare-fun bm!289098 () Bool)

(assert (=> bm!289098 (= call!289103 (maxPrefixOneRule!2957 thiss!26199 (h!49293 rules!3870) input!3411))))

(declare-fun b!4090889 () Bool)

(declare-fun res!1672054 () Bool)

(assert (=> b!4090889 (=> (not res!1672054) (not e!2538824))))

(assert (=> b!4090889 (= res!1672054 (< (size!32771 (_2!24536 (get!14388 lt!1463086))) (size!32771 input!3411)))))

(declare-fun b!4090890 () Bool)

(assert (=> b!4090890 (= e!2538824 (contains!8775 rules!3870 (rule!10238 (_1!24536 (get!14388 lt!1463086)))))))

(declare-fun d!1214463 () Bool)

(assert (=> d!1214463 e!2538826))

(declare-fun res!1672052 () Bool)

(assert (=> d!1214463 (=> res!1672052 e!2538826)))

(assert (=> d!1214463 (= res!1672052 (isEmpty!26243 lt!1463086))))

(assert (=> d!1214463 (= lt!1463086 e!2538825)))

(declare-fun c!705027 () Bool)

(assert (=> d!1214463 (= c!705027 (and ((_ is Cons!43873) rules!3870) ((_ is Nil!43873) (t!338596 rules!3870))))))

(declare-fun lt!1463083 () Unit!63391)

(declare-fun lt!1463085 () Unit!63391)

(assert (=> d!1214463 (= lt!1463083 lt!1463085)))

(declare-fun isPrefix!4143 (List!43996 List!43996) Bool)

(assert (=> d!1214463 (isPrefix!4143 input!3411 input!3411)))

(declare-fun lemmaIsPrefixRefl!2694 (List!43996 List!43996) Unit!63391)

(assert (=> d!1214463 (= lt!1463085 (lemmaIsPrefixRefl!2694 input!3411 input!3411))))

(declare-fun rulesValidInductive!2625 (LexerInterface!6685 List!43997) Bool)

(assert (=> d!1214463 (rulesValidInductive!2625 thiss!26199 rules!3870)))

(assert (=> d!1214463 (= (maxPrefix!3975 thiss!26199 rules!3870 input!3411) lt!1463086)))

(declare-fun b!4090891 () Bool)

(declare-fun res!1672055 () Bool)

(assert (=> b!4090891 (=> (not res!1672055) (not e!2538824))))

(declare-fun list!16284 (BalanceConc!26208) List!43996)

(declare-fun charsOf!4856 (Token!13318) BalanceConc!26208)

(assert (=> b!4090891 (= res!1672055 (= (++!11502 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463086)))) (_2!24536 (get!14388 lt!1463086))) input!3411))))

(declare-fun b!4090892 () Bool)

(declare-fun res!1672056 () Bool)

(assert (=> b!4090892 (=> (not res!1672056) (not e!2538824))))

(assert (=> b!4090892 (= res!1672056 (matchR!5942 (regex!7096 (rule!10238 (_1!24536 (get!14388 lt!1463086)))) (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463086))))))))

(declare-fun b!4090893 () Bool)

(declare-fun res!1672051 () Bool)

(assert (=> b!4090893 (=> (not res!1672051) (not e!2538824))))

(assert (=> b!4090893 (= res!1672051 (= (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463086)))) (originalCharacters!7690 (_1!24536 (get!14388 lt!1463086)))))))

(declare-fun b!4090894 () Bool)

(assert (=> b!4090894 (= e!2538825 call!289103)))

(assert (= (and d!1214463 c!705027) b!4090894))

(assert (= (and d!1214463 (not c!705027)) b!4090887))

(assert (= (or b!4090894 b!4090887) bm!289098))

(assert (= (and d!1214463 (not res!1672052)) b!4090888))

(assert (= (and b!4090888 res!1672057) b!4090893))

(assert (= (and b!4090893 res!1672051) b!4090889))

(assert (= (and b!4090889 res!1672054) b!4090891))

(assert (= (and b!4090891 res!1672055) b!4090886))

(assert (= (and b!4090886 res!1672053) b!4090892))

(assert (= (and b!4090892 res!1672056) b!4090890))

(declare-fun m!4697581 () Bool)

(assert (=> d!1214463 m!4697581))

(declare-fun m!4697583 () Bool)

(assert (=> d!1214463 m!4697583))

(declare-fun m!4697585 () Bool)

(assert (=> d!1214463 m!4697585))

(declare-fun m!4697587 () Bool)

(assert (=> d!1214463 m!4697587))

(declare-fun m!4697589 () Bool)

(assert (=> b!4090889 m!4697589))

(declare-fun m!4697591 () Bool)

(assert (=> b!4090889 m!4697591))

(declare-fun m!4697593 () Bool)

(assert (=> b!4090889 m!4697593))

(assert (=> b!4090891 m!4697589))

(declare-fun m!4697595 () Bool)

(assert (=> b!4090891 m!4697595))

(assert (=> b!4090891 m!4697595))

(declare-fun m!4697597 () Bool)

(assert (=> b!4090891 m!4697597))

(assert (=> b!4090891 m!4697597))

(declare-fun m!4697599 () Bool)

(assert (=> b!4090891 m!4697599))

(assert (=> b!4090887 m!4697503))

(assert (=> b!4090893 m!4697589))

(assert (=> b!4090893 m!4697595))

(assert (=> b!4090893 m!4697595))

(assert (=> b!4090893 m!4697597))

(assert (=> b!4090890 m!4697589))

(declare-fun m!4697601 () Bool)

(assert (=> b!4090890 m!4697601))

(assert (=> bm!289098 m!4697491))

(declare-fun m!4697603 () Bool)

(assert (=> b!4090888 m!4697603))

(assert (=> b!4090886 m!4697589))

(declare-fun m!4697605 () Bool)

(assert (=> b!4090886 m!4697605))

(assert (=> b!4090886 m!4697605))

(declare-fun m!4697607 () Bool)

(assert (=> b!4090886 m!4697607))

(assert (=> b!4090892 m!4697589))

(assert (=> b!4090892 m!4697595))

(assert (=> b!4090892 m!4697595))

(assert (=> b!4090892 m!4697597))

(assert (=> b!4090892 m!4697597))

(declare-fun m!4697609 () Bool)

(assert (=> b!4090892 m!4697609))

(assert (=> b!4090765 d!1214463))

(declare-fun d!1214475 () Bool)

(declare-fun lt!1463090 () Int)

(assert (=> d!1214475 (>= lt!1463090 0)))

(declare-fun e!2538829 () Int)

(assert (=> d!1214475 (= lt!1463090 e!2538829)))

(declare-fun c!705030 () Bool)

(assert (=> d!1214475 (= c!705030 ((_ is Nil!43872) p!2988))))

(assert (=> d!1214475 (= (size!32771 p!2988) lt!1463090)))

(declare-fun b!4090899 () Bool)

(assert (=> b!4090899 (= e!2538829 0)))

(declare-fun b!4090900 () Bool)

(assert (=> b!4090900 (= e!2538829 (+ 1 (size!32771 (t!338595 p!2988))))))

(assert (= (and d!1214475 c!705030) b!4090899))

(assert (= (and d!1214475 (not c!705030)) b!4090900))

(declare-fun m!4697611 () Bool)

(assert (=> b!4090900 m!4697611))

(assert (=> b!4090765 d!1214475))

(declare-fun d!1214477 () Bool)

(declare-fun fromListB!2436 (List!43996) BalanceConc!26208)

(assert (=> d!1214477 (= (seqFromList!5313 p!2988) (fromListB!2436 p!2988))))

(declare-fun bs!593264 () Bool)

(assert (= bs!593264 d!1214477))

(declare-fun m!4697613 () Bool)

(assert (=> bs!593264 m!4697613))

(assert (=> b!4090765 d!1214477))

(declare-fun b!4090962 () Bool)

(declare-fun e!2538862 () Bool)

(assert (=> b!4090962 (= e!2538862 true)))

(declare-fun d!1214479 () Bool)

(assert (=> d!1214479 e!2538862))

(assert (= d!1214479 b!4090962))

(declare-fun order!23079 () Int)

(declare-fun lambda!128001 () Int)

(declare-fun order!23077 () Int)

(declare-fun dynLambda!18776 (Int Int) Int)

(declare-fun dynLambda!18777 (Int Int) Int)

(assert (=> b!4090962 (< (dynLambda!18776 order!23077 (toValue!9684 (transformation!7096 r!4213))) (dynLambda!18777 order!23079 lambda!128001))))

(declare-fun order!23081 () Int)

(declare-fun dynLambda!18778 (Int Int) Int)

(assert (=> b!4090962 (< (dynLambda!18778 order!23081 (toChars!9543 (transformation!7096 r!4213))) (dynLambda!18777 order!23079 lambda!128001))))

(declare-fun dynLambda!18779 (Int TokenValue!7326) BalanceConc!26208)

(declare-fun dynLambda!18780 (Int BalanceConc!26208) TokenValue!7326)

(assert (=> d!1214479 (= (list!16284 (dynLambda!18779 (toChars!9543 (transformation!7096 r!4213)) (dynLambda!18780 (toValue!9684 (transformation!7096 r!4213)) lt!1463039))) (list!16284 lt!1463039))))

(declare-fun lt!1463117 () Unit!63391)

(declare-fun ForallOf!889 (Int BalanceConc!26208) Unit!63391)

(assert (=> d!1214479 (= lt!1463117 (ForallOf!889 lambda!128001 lt!1463039))))

(assert (=> d!1214479 (= (lemmaSemiInverse!2063 (transformation!7096 r!4213) lt!1463039) lt!1463117)))

(declare-fun b_lambda!119885 () Bool)

(assert (=> (not b_lambda!119885) (not d!1214479)))

(declare-fun t!338606 () Bool)

(declare-fun tb!245833 () Bool)

(assert (=> (and b!4090773 (= (toChars!9543 (transformation!7096 r!4213)) (toChars!9543 (transformation!7096 r!4213))) t!338606) tb!245833))

(declare-fun b!4090969 () Bool)

(declare-fun tp!1238496 () Bool)

(declare-fun e!2538867 () Bool)

(declare-fun inv!58578 (Conc!13307) Bool)

(assert (=> b!4090969 (= e!2538867 (and (inv!58578 (c!705011 (dynLambda!18779 (toChars!9543 (transformation!7096 r!4213)) (dynLambda!18780 (toValue!9684 (transformation!7096 r!4213)) lt!1463039)))) tp!1238496))))

(declare-fun result!298326 () Bool)

(declare-fun inv!58579 (BalanceConc!26208) Bool)

(assert (=> tb!245833 (= result!298326 (and (inv!58579 (dynLambda!18779 (toChars!9543 (transformation!7096 r!4213)) (dynLambda!18780 (toValue!9684 (transformation!7096 r!4213)) lt!1463039))) e!2538867))))

(assert (= tb!245833 b!4090969))

(declare-fun m!4697707 () Bool)

(assert (=> b!4090969 m!4697707))

(declare-fun m!4697709 () Bool)

(assert (=> tb!245833 m!4697709))

(assert (=> d!1214479 t!338606))

(declare-fun b_and!315195 () Bool)

(assert (= b_and!315177 (and (=> t!338606 result!298326) b_and!315195)))

(declare-fun t!338608 () Bool)

(declare-fun tb!245835 () Bool)

(assert (=> (and b!4090777 (= (toChars!9543 (transformation!7096 (h!49293 rules!3870))) (toChars!9543 (transformation!7096 r!4213))) t!338608) tb!245835))

(declare-fun result!298330 () Bool)

(assert (= result!298330 result!298326))

(assert (=> d!1214479 t!338608))

(declare-fun b_and!315197 () Bool)

(assert (= b_and!315181 (and (=> t!338608 result!298330) b_and!315197)))

(declare-fun b_lambda!119887 () Bool)

(assert (=> (not b_lambda!119887) (not d!1214479)))

(declare-fun t!338610 () Bool)

(declare-fun tb!245837 () Bool)

(assert (=> (and b!4090773 (= (toValue!9684 (transformation!7096 r!4213)) (toValue!9684 (transformation!7096 r!4213))) t!338610) tb!245837))

(declare-fun result!298332 () Bool)

(declare-fun inv!21 (TokenValue!7326) Bool)

(assert (=> tb!245837 (= result!298332 (inv!21 (dynLambda!18780 (toValue!9684 (transformation!7096 r!4213)) lt!1463039)))))

(declare-fun m!4697715 () Bool)

(assert (=> tb!245837 m!4697715))

(assert (=> d!1214479 t!338610))

(declare-fun b_and!315199 () Bool)

(assert (= b_and!315175 (and (=> t!338610 result!298332) b_and!315199)))

(declare-fun tb!245839 () Bool)

(declare-fun t!338612 () Bool)

(assert (=> (and b!4090777 (= (toValue!9684 (transformation!7096 (h!49293 rules!3870))) (toValue!9684 (transformation!7096 r!4213))) t!338612) tb!245839))

(declare-fun result!298336 () Bool)

(assert (= result!298336 result!298332))

(assert (=> d!1214479 t!338612))

(declare-fun b_and!315201 () Bool)

(assert (= b_and!315179 (and (=> t!338612 result!298336) b_and!315201)))

(declare-fun m!4697717 () Bool)

(assert (=> d!1214479 m!4697717))

(declare-fun m!4697719 () Bool)

(assert (=> d!1214479 m!4697719))

(declare-fun m!4697721 () Bool)

(assert (=> d!1214479 m!4697721))

(declare-fun m!4697723 () Bool)

(assert (=> d!1214479 m!4697723))

(assert (=> d!1214479 m!4697719))

(assert (=> d!1214479 m!4697721))

(declare-fun m!4697725 () Bool)

(assert (=> d!1214479 m!4697725))

(assert (=> b!4090765 d!1214479))

(declare-fun d!1214505 () Bool)

(assert (=> d!1214505 (= (apply!10279 (transformation!7096 r!4213) lt!1463039) (dynLambda!18780 (toValue!9684 (transformation!7096 r!4213)) lt!1463039))))

(declare-fun b_lambda!119889 () Bool)

(assert (=> (not b_lambda!119889) (not d!1214505)))

(assert (=> d!1214505 t!338610))

(declare-fun b_and!315203 () Bool)

(assert (= b_and!315199 (and (=> t!338610 result!298332) b_and!315203)))

(assert (=> d!1214505 t!338612))

(declare-fun b_and!315205 () Bool)

(assert (= b_and!315201 (and (=> t!338612 result!298336) b_and!315205)))

(assert (=> d!1214505 m!4697719))

(assert (=> b!4090765 d!1214505))

(declare-fun d!1214507 () Bool)

(assert (=> d!1214507 (= (inv!58571 (tag!7956 r!4213)) (= (mod (str.len (value!222887 (tag!7956 r!4213))) 2) 0))))

(assert (=> b!4090764 d!1214507))

(declare-fun d!1214509 () Bool)

(declare-fun res!1672094 () Bool)

(declare-fun e!2538876 () Bool)

(assert (=> d!1214509 (=> (not res!1672094) (not e!2538876))))

(declare-fun semiInverseModEq!3050 (Int Int) Bool)

(assert (=> d!1214509 (= res!1672094 (semiInverseModEq!3050 (toChars!9543 (transformation!7096 r!4213)) (toValue!9684 (transformation!7096 r!4213))))))

(assert (=> d!1214509 (= (inv!58574 (transformation!7096 r!4213)) e!2538876)))

(declare-fun b!4090979 () Bool)

(declare-fun equivClasses!2949 (Int Int) Bool)

(assert (=> b!4090979 (= e!2538876 (equivClasses!2949 (toChars!9543 (transformation!7096 r!4213)) (toValue!9684 (transformation!7096 r!4213))))))

(assert (= (and d!1214509 res!1672094) b!4090979))

(declare-fun m!4697731 () Bool)

(assert (=> d!1214509 m!4697731))

(declare-fun m!4697733 () Bool)

(assert (=> b!4090979 m!4697733))

(assert (=> b!4090764 d!1214509))

(declare-fun d!1214513 () Bool)

(declare-fun res!1672106 () Bool)

(declare-fun e!2538884 () Bool)

(assert (=> d!1214513 (=> (not res!1672106) (not e!2538884))))

(assert (=> d!1214513 (= res!1672106 (not (isEmpty!26242 (originalCharacters!7690 lt!1463041))))))

(assert (=> d!1214513 (= (inv!58575 lt!1463041) e!2538884)))

(declare-fun b!4090993 () Bool)

(declare-fun res!1672107 () Bool)

(assert (=> b!4090993 (=> (not res!1672107) (not e!2538884))))

(assert (=> b!4090993 (= res!1672107 (= (originalCharacters!7690 lt!1463041) (list!16284 (dynLambda!18779 (toChars!9543 (transformation!7096 (rule!10238 lt!1463041))) (value!222888 lt!1463041)))))))

(declare-fun b!4090994 () Bool)

(assert (=> b!4090994 (= e!2538884 (= (size!32770 lt!1463041) (size!32771 (originalCharacters!7690 lt!1463041))))))

(assert (= (and d!1214513 res!1672106) b!4090993))

(assert (= (and b!4090993 res!1672107) b!4090994))

(declare-fun b_lambda!119891 () Bool)

(assert (=> (not b_lambda!119891) (not b!4090993)))

(declare-fun tb!245841 () Bool)

(declare-fun t!338614 () Bool)

(assert (=> (and b!4090773 (= (toChars!9543 (transformation!7096 r!4213)) (toChars!9543 (transformation!7096 (rule!10238 lt!1463041)))) t!338614) tb!245841))

(declare-fun b!4090996 () Bool)

(declare-fun e!2538886 () Bool)

(declare-fun tp!1238497 () Bool)

(assert (=> b!4090996 (= e!2538886 (and (inv!58578 (c!705011 (dynLambda!18779 (toChars!9543 (transformation!7096 (rule!10238 lt!1463041))) (value!222888 lt!1463041)))) tp!1238497))))

(declare-fun result!298338 () Bool)

(assert (=> tb!245841 (= result!298338 (and (inv!58579 (dynLambda!18779 (toChars!9543 (transformation!7096 (rule!10238 lt!1463041))) (value!222888 lt!1463041))) e!2538886))))

(assert (= tb!245841 b!4090996))

(declare-fun m!4697755 () Bool)

(assert (=> b!4090996 m!4697755))

(declare-fun m!4697757 () Bool)

(assert (=> tb!245841 m!4697757))

(assert (=> b!4090993 t!338614))

(declare-fun b_and!315207 () Bool)

(assert (= b_and!315195 (and (=> t!338614 result!298338) b_and!315207)))

(declare-fun t!338616 () Bool)

(declare-fun tb!245843 () Bool)

(assert (=> (and b!4090777 (= (toChars!9543 (transformation!7096 (h!49293 rules!3870))) (toChars!9543 (transformation!7096 (rule!10238 lt!1463041)))) t!338616) tb!245843))

(declare-fun result!298340 () Bool)

(assert (= result!298340 result!298338))

(assert (=> b!4090993 t!338616))

(declare-fun b_and!315209 () Bool)

(assert (= b_and!315197 (and (=> t!338616 result!298340) b_and!315209)))

(declare-fun m!4697759 () Bool)

(assert (=> d!1214513 m!4697759))

(declare-fun m!4697761 () Bool)

(assert (=> b!4090993 m!4697761))

(assert (=> b!4090993 m!4697761))

(declare-fun m!4697763 () Bool)

(assert (=> b!4090993 m!4697763))

(declare-fun m!4697765 () Bool)

(assert (=> b!4090994 m!4697765))

(assert (=> b!4090775 d!1214513))

(declare-fun b!4091067 () Bool)

(declare-fun res!1672142 () Bool)

(declare-fun e!2538925 () Bool)

(assert (=> b!4091067 (=> (not res!1672142) (not e!2538925))))

(declare-fun lt!1463144 () Option!9502)

(assert (=> b!4091067 (= res!1672142 (= (value!222888 (_1!24536 (get!14388 lt!1463144))) (apply!10279 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463144)))) (seqFromList!5313 (originalCharacters!7690 (_1!24536 (get!14388 lt!1463144)))))))))

(declare-fun b!4091068 () Bool)

(declare-fun e!2538926 () Bool)

(declare-datatypes ((tuple2!42808 0))(
  ( (tuple2!42809 (_1!24538 List!43996) (_2!24538 List!43996)) )
))
(declare-fun findLongestMatchInner!1462 (Regex!12001 List!43996 Int List!43996 List!43996 Int) tuple2!42808)

(assert (=> b!4091068 (= e!2538926 (matchR!5942 (regex!7096 r!4213) (_1!24538 (findLongestMatchInner!1462 (regex!7096 r!4213) Nil!43872 (size!32771 Nil!43872) input!3411 input!3411 (size!32771 input!3411)))))))

(declare-fun b!4091069 () Bool)

(declare-fun res!1672138 () Bool)

(assert (=> b!4091069 (=> (not res!1672138) (not e!2538925))))

(assert (=> b!4091069 (= res!1672138 (< (size!32771 (_2!24536 (get!14388 lt!1463144))) (size!32771 input!3411)))))

(declare-fun b!4091070 () Bool)

(declare-fun res!1672140 () Bool)

(assert (=> b!4091070 (=> (not res!1672140) (not e!2538925))))

(assert (=> b!4091070 (= res!1672140 (= (rule!10238 (_1!24536 (get!14388 lt!1463144))) r!4213))))

(declare-fun d!1214525 () Bool)

(declare-fun e!2538927 () Bool)

(assert (=> d!1214525 e!2538927))

(declare-fun res!1672141 () Bool)

(assert (=> d!1214525 (=> res!1672141 e!2538927)))

(assert (=> d!1214525 (= res!1672141 (isEmpty!26243 lt!1463144))))

(declare-fun e!2538924 () Option!9502)

(assert (=> d!1214525 (= lt!1463144 e!2538924)))

(declare-fun c!705045 () Bool)

(declare-fun lt!1463147 () tuple2!42808)

(assert (=> d!1214525 (= c!705045 (isEmpty!26242 (_1!24538 lt!1463147)))))

(declare-fun findLongestMatch!1375 (Regex!12001 List!43996) tuple2!42808)

(assert (=> d!1214525 (= lt!1463147 (findLongestMatch!1375 (regex!7096 r!4213) input!3411))))

(assert (=> d!1214525 (ruleValid!3016 thiss!26199 r!4213)))

(assert (=> d!1214525 (= (maxPrefixOneRule!2957 thiss!26199 r!4213 input!3411) lt!1463144)))

(declare-fun b!4091071 () Bool)

(assert (=> b!4091071 (= e!2538927 e!2538925)))

(declare-fun res!1672139 () Bool)

(assert (=> b!4091071 (=> (not res!1672139) (not e!2538925))))

(assert (=> b!4091071 (= res!1672139 (matchR!5942 (regex!7096 r!4213) (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463144))))))))

(declare-fun b!4091072 () Bool)

(declare-fun size!32773 (BalanceConc!26208) Int)

(assert (=> b!4091072 (= e!2538924 (Some!9501 (tuple2!42805 (Token!13319 (apply!10279 (transformation!7096 r!4213) (seqFromList!5313 (_1!24538 lt!1463147))) r!4213 (size!32773 (seqFromList!5313 (_1!24538 lt!1463147))) (_1!24538 lt!1463147)) (_2!24538 lt!1463147))))))

(declare-fun lt!1463143 () Unit!63391)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1435 (Regex!12001 List!43996) Unit!63391)

(assert (=> b!4091072 (= lt!1463143 (longestMatchIsAcceptedByMatchOrIsEmpty!1435 (regex!7096 r!4213) input!3411))))

(declare-fun res!1672137 () Bool)

(assert (=> b!4091072 (= res!1672137 (isEmpty!26242 (_1!24538 (findLongestMatchInner!1462 (regex!7096 r!4213) Nil!43872 (size!32771 Nil!43872) input!3411 input!3411 (size!32771 input!3411)))))))

(assert (=> b!4091072 (=> res!1672137 e!2538926)))

(assert (=> b!4091072 e!2538926))

(declare-fun lt!1463146 () Unit!63391)

(assert (=> b!4091072 (= lt!1463146 lt!1463143)))

(declare-fun lt!1463145 () Unit!63391)

(assert (=> b!4091072 (= lt!1463145 (lemmaSemiInverse!2063 (transformation!7096 r!4213) (seqFromList!5313 (_1!24538 lt!1463147))))))

(declare-fun b!4091073 () Bool)

(assert (=> b!4091073 (= e!2538925 (= (size!32770 (_1!24536 (get!14388 lt!1463144))) (size!32771 (originalCharacters!7690 (_1!24536 (get!14388 lt!1463144))))))))

(declare-fun b!4091074 () Bool)

(assert (=> b!4091074 (= e!2538924 None!9501)))

(declare-fun b!4091075 () Bool)

(declare-fun res!1672136 () Bool)

(assert (=> b!4091075 (=> (not res!1672136) (not e!2538925))))

(assert (=> b!4091075 (= res!1672136 (= (++!11502 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463144)))) (_2!24536 (get!14388 lt!1463144))) input!3411))))

(assert (= (and d!1214525 c!705045) b!4091074))

(assert (= (and d!1214525 (not c!705045)) b!4091072))

(assert (= (and b!4091072 (not res!1672137)) b!4091068))

(assert (= (and d!1214525 (not res!1672141)) b!4091071))

(assert (= (and b!4091071 res!1672139) b!4091075))

(assert (= (and b!4091075 res!1672136) b!4091069))

(assert (= (and b!4091069 res!1672138) b!4091070))

(assert (= (and b!4091070 res!1672140) b!4091067))

(assert (= (and b!4091067 res!1672142) b!4091073))

(declare-fun m!4697829 () Bool)

(assert (=> b!4091071 m!4697829))

(declare-fun m!4697831 () Bool)

(assert (=> b!4091071 m!4697831))

(assert (=> b!4091071 m!4697831))

(declare-fun m!4697833 () Bool)

(assert (=> b!4091071 m!4697833))

(assert (=> b!4091071 m!4697833))

(declare-fun m!4697835 () Bool)

(assert (=> b!4091071 m!4697835))

(declare-fun m!4697837 () Bool)

(assert (=> b!4091068 m!4697837))

(assert (=> b!4091068 m!4697593))

(assert (=> b!4091068 m!4697837))

(assert (=> b!4091068 m!4697593))

(declare-fun m!4697839 () Bool)

(assert (=> b!4091068 m!4697839))

(declare-fun m!4697841 () Bool)

(assert (=> b!4091068 m!4697841))

(assert (=> b!4091075 m!4697829))

(assert (=> b!4091075 m!4697831))

(assert (=> b!4091075 m!4697831))

(assert (=> b!4091075 m!4697833))

(assert (=> b!4091075 m!4697833))

(declare-fun m!4697843 () Bool)

(assert (=> b!4091075 m!4697843))

(assert (=> b!4091072 m!4697837))

(assert (=> b!4091072 m!4697593))

(declare-fun m!4697845 () Bool)

(assert (=> b!4091072 m!4697845))

(declare-fun m!4697847 () Bool)

(assert (=> b!4091072 m!4697847))

(declare-fun m!4697849 () Bool)

(assert (=> b!4091072 m!4697849))

(assert (=> b!4091072 m!4697847))

(declare-fun m!4697851 () Bool)

(assert (=> b!4091072 m!4697851))

(assert (=> b!4091072 m!4697847))

(assert (=> b!4091072 m!4697847))

(declare-fun m!4697853 () Bool)

(assert (=> b!4091072 m!4697853))

(assert (=> b!4091072 m!4697837))

(assert (=> b!4091072 m!4697593))

(assert (=> b!4091072 m!4697839))

(declare-fun m!4697855 () Bool)

(assert (=> b!4091072 m!4697855))

(declare-fun m!4697857 () Bool)

(assert (=> d!1214525 m!4697857))

(declare-fun m!4697859 () Bool)

(assert (=> d!1214525 m!4697859))

(declare-fun m!4697861 () Bool)

(assert (=> d!1214525 m!4697861))

(assert (=> d!1214525 m!4697485))

(assert (=> b!4091069 m!4697829))

(declare-fun m!4697863 () Bool)

(assert (=> b!4091069 m!4697863))

(assert (=> b!4091069 m!4697593))

(assert (=> b!4091067 m!4697829))

(declare-fun m!4697865 () Bool)

(assert (=> b!4091067 m!4697865))

(assert (=> b!4091067 m!4697865))

(declare-fun m!4697867 () Bool)

(assert (=> b!4091067 m!4697867))

(assert (=> b!4091070 m!4697829))

(assert (=> b!4091073 m!4697829))

(declare-fun m!4697869 () Bool)

(assert (=> b!4091073 m!4697869))

(assert (=> b!4090775 d!1214525))

(declare-fun d!1214533 () Bool)

(assert (=> d!1214533 (= (maxPrefixOneRule!2957 thiss!26199 r!4213 input!3411) (Some!9501 (tuple2!42805 (Token!13319 (apply!10279 (transformation!7096 r!4213) (seqFromList!5313 p!2988)) r!4213 (size!32771 p!2988) p!2988) suffix!1518)))))

(declare-fun lt!1463150 () Unit!63391)

(declare-fun choose!24986 (LexerInterface!6685 List!43997 List!43996 List!43996 List!43996 Rule!13992) Unit!63391)

(assert (=> d!1214533 (= lt!1463150 (choose!24986 thiss!26199 (t!338596 rules!3870) p!2988 input!3411 suffix!1518 r!4213))))

(assert (=> d!1214533 (not (isEmpty!26241 (t!338596 rules!3870)))))

(assert (=> d!1214533 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1699 thiss!26199 (t!338596 rules!3870) p!2988 input!3411 suffix!1518 r!4213) lt!1463150)))

(declare-fun bs!593269 () Bool)

(assert (= bs!593269 d!1214533))

(assert (=> bs!593269 m!4697471))

(declare-fun m!4697871 () Bool)

(assert (=> bs!593269 m!4697871))

(assert (=> bs!593269 m!4697479))

(assert (=> bs!593269 m!4697471))

(assert (=> bs!593269 m!4697477))

(assert (=> bs!593269 m!4697515))

(declare-fun m!4697873 () Bool)

(assert (=> bs!593269 m!4697873))

(assert (=> b!4090775 d!1214533))

(declare-fun d!1214535 () Bool)

(assert (=> d!1214535 (ruleValid!3016 thiss!26199 r!4213)))

(declare-fun lt!1463153 () Unit!63391)

(declare-fun choose!24987 (LexerInterface!6685 Rule!13992 List!43997) Unit!63391)

(assert (=> d!1214535 (= lt!1463153 (choose!24987 thiss!26199 r!4213 (t!338596 rules!3870)))))

(assert (=> d!1214535 (contains!8775 (t!338596 rules!3870) r!4213)))

(assert (=> d!1214535 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2082 thiss!26199 r!4213 (t!338596 rules!3870)) lt!1463153)))

(declare-fun bs!593270 () Bool)

(assert (= bs!593270 d!1214535))

(assert (=> bs!593270 m!4697485))

(declare-fun m!4697875 () Bool)

(assert (=> bs!593270 m!4697875))

(assert (=> bs!593270 m!4697509))

(assert (=> b!4090775 d!1214535))

(declare-fun b!4091076 () Bool)

(declare-fun res!1672145 () Bool)

(declare-fun e!2538928 () Bool)

(assert (=> b!4091076 (=> (not res!1672145) (not e!2538928))))

(declare-fun lt!1463157 () Option!9502)

(assert (=> b!4091076 (= res!1672145 (= (value!222888 (_1!24536 (get!14388 lt!1463157))) (apply!10279 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463157)))) (seqFromList!5313 (originalCharacters!7690 (_1!24536 (get!14388 lt!1463157)))))))))

(declare-fun b!4091077 () Bool)

(declare-fun e!2538929 () Option!9502)

(declare-fun lt!1463155 () Option!9502)

(declare-fun lt!1463158 () Option!9502)

(assert (=> b!4091077 (= e!2538929 (ite (and ((_ is None!9501) lt!1463155) ((_ is None!9501) lt!1463158)) None!9501 (ite ((_ is None!9501) lt!1463158) lt!1463155 (ite ((_ is None!9501) lt!1463155) lt!1463158 (ite (>= (size!32770 (_1!24536 (v!39989 lt!1463155))) (size!32770 (_1!24536 (v!39989 lt!1463158)))) lt!1463155 lt!1463158)))))))

(declare-fun call!289105 () Option!9502)

(assert (=> b!4091077 (= lt!1463155 call!289105)))

(assert (=> b!4091077 (= lt!1463158 (maxPrefix!3975 thiss!26199 (t!338596 (t!338596 rules!3870)) input!3411))))

(declare-fun b!4091078 () Bool)

(declare-fun e!2538930 () Bool)

(assert (=> b!4091078 (= e!2538930 e!2538928)))

(declare-fun res!1672149 () Bool)

(assert (=> b!4091078 (=> (not res!1672149) (not e!2538928))))

(assert (=> b!4091078 (= res!1672149 (isDefined!7192 lt!1463157))))

(declare-fun bm!289100 () Bool)

(assert (=> bm!289100 (= call!289105 (maxPrefixOneRule!2957 thiss!26199 (h!49293 (t!338596 rules!3870)) input!3411))))

(declare-fun b!4091079 () Bool)

(declare-fun res!1672146 () Bool)

(assert (=> b!4091079 (=> (not res!1672146) (not e!2538928))))

(assert (=> b!4091079 (= res!1672146 (< (size!32771 (_2!24536 (get!14388 lt!1463157))) (size!32771 input!3411)))))

(declare-fun b!4091080 () Bool)

(assert (=> b!4091080 (= e!2538928 (contains!8775 (t!338596 rules!3870) (rule!10238 (_1!24536 (get!14388 lt!1463157)))))))

(declare-fun d!1214537 () Bool)

(assert (=> d!1214537 e!2538930))

(declare-fun res!1672144 () Bool)

(assert (=> d!1214537 (=> res!1672144 e!2538930)))

(assert (=> d!1214537 (= res!1672144 (isEmpty!26243 lt!1463157))))

(assert (=> d!1214537 (= lt!1463157 e!2538929)))

(declare-fun c!705046 () Bool)

(assert (=> d!1214537 (= c!705046 (and ((_ is Cons!43873) (t!338596 rules!3870)) ((_ is Nil!43873) (t!338596 (t!338596 rules!3870)))))))

(declare-fun lt!1463154 () Unit!63391)

(declare-fun lt!1463156 () Unit!63391)

(assert (=> d!1214537 (= lt!1463154 lt!1463156)))

(assert (=> d!1214537 (isPrefix!4143 input!3411 input!3411)))

(assert (=> d!1214537 (= lt!1463156 (lemmaIsPrefixRefl!2694 input!3411 input!3411))))

(assert (=> d!1214537 (rulesValidInductive!2625 thiss!26199 (t!338596 rules!3870))))

(assert (=> d!1214537 (= (maxPrefix!3975 thiss!26199 (t!338596 rules!3870) input!3411) lt!1463157)))

(declare-fun b!4091081 () Bool)

(declare-fun res!1672147 () Bool)

(assert (=> b!4091081 (=> (not res!1672147) (not e!2538928))))

(assert (=> b!4091081 (= res!1672147 (= (++!11502 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463157)))) (_2!24536 (get!14388 lt!1463157))) input!3411))))

(declare-fun b!4091082 () Bool)

(declare-fun res!1672148 () Bool)

(assert (=> b!4091082 (=> (not res!1672148) (not e!2538928))))

(assert (=> b!4091082 (= res!1672148 (matchR!5942 (regex!7096 (rule!10238 (_1!24536 (get!14388 lt!1463157)))) (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463157))))))))

(declare-fun b!4091083 () Bool)

(declare-fun res!1672143 () Bool)

(assert (=> b!4091083 (=> (not res!1672143) (not e!2538928))))

(assert (=> b!4091083 (= res!1672143 (= (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463157)))) (originalCharacters!7690 (_1!24536 (get!14388 lt!1463157)))))))

(declare-fun b!4091084 () Bool)

(assert (=> b!4091084 (= e!2538929 call!289105)))

(assert (= (and d!1214537 c!705046) b!4091084))

(assert (= (and d!1214537 (not c!705046)) b!4091077))

(assert (= (or b!4091084 b!4091077) bm!289100))

(assert (= (and d!1214537 (not res!1672144)) b!4091078))

(assert (= (and b!4091078 res!1672149) b!4091083))

(assert (= (and b!4091083 res!1672143) b!4091079))

(assert (= (and b!4091079 res!1672146) b!4091081))

(assert (= (and b!4091081 res!1672147) b!4091076))

(assert (= (and b!4091076 res!1672145) b!4091082))

(assert (= (and b!4091082 res!1672148) b!4091080))

(declare-fun m!4697877 () Bool)

(assert (=> d!1214537 m!4697877))

(assert (=> d!1214537 m!4697583))

(assert (=> d!1214537 m!4697585))

(declare-fun m!4697879 () Bool)

(assert (=> d!1214537 m!4697879))

(declare-fun m!4697881 () Bool)

(assert (=> b!4091079 m!4697881))

(declare-fun m!4697883 () Bool)

(assert (=> b!4091079 m!4697883))

(assert (=> b!4091079 m!4697593))

(assert (=> b!4091081 m!4697881))

(declare-fun m!4697885 () Bool)

(assert (=> b!4091081 m!4697885))

(assert (=> b!4091081 m!4697885))

(declare-fun m!4697887 () Bool)

(assert (=> b!4091081 m!4697887))

(assert (=> b!4091081 m!4697887))

(declare-fun m!4697889 () Bool)

(assert (=> b!4091081 m!4697889))

(declare-fun m!4697891 () Bool)

(assert (=> b!4091077 m!4697891))

(assert (=> b!4091083 m!4697881))

(assert (=> b!4091083 m!4697885))

(assert (=> b!4091083 m!4697885))

(assert (=> b!4091083 m!4697887))

(assert (=> b!4091080 m!4697881))

(declare-fun m!4697893 () Bool)

(assert (=> b!4091080 m!4697893))

(declare-fun m!4697895 () Bool)

(assert (=> bm!289100 m!4697895))

(declare-fun m!4697897 () Bool)

(assert (=> b!4091078 m!4697897))

(assert (=> b!4091076 m!4697881))

(declare-fun m!4697899 () Bool)

(assert (=> b!4091076 m!4697899))

(assert (=> b!4091076 m!4697899))

(declare-fun m!4697901 () Bool)

(assert (=> b!4091076 m!4697901))

(assert (=> b!4091082 m!4697881))

(assert (=> b!4091082 m!4697885))

(assert (=> b!4091082 m!4697885))

(assert (=> b!4091082 m!4697887))

(assert (=> b!4091082 m!4697887))

(declare-fun m!4697903 () Bool)

(assert (=> b!4091082 m!4697903))

(assert (=> b!4090774 d!1214537))

(declare-fun d!1214539 () Bool)

(assert (=> d!1214539 (= (isEmpty!26243 (maxPrefixOneRule!2957 thiss!26199 (h!49293 rules!3870) input!3411)) (not ((_ is Some!9501) (maxPrefixOneRule!2957 thiss!26199 (h!49293 rules!3870) input!3411))))))

(assert (=> b!4090772 d!1214539))

(declare-fun b!4091085 () Bool)

(declare-fun res!1672156 () Bool)

(declare-fun e!2538932 () Bool)

(assert (=> b!4091085 (=> (not res!1672156) (not e!2538932))))

(declare-fun lt!1463160 () Option!9502)

(assert (=> b!4091085 (= res!1672156 (= (value!222888 (_1!24536 (get!14388 lt!1463160))) (apply!10279 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463160)))) (seqFromList!5313 (originalCharacters!7690 (_1!24536 (get!14388 lt!1463160)))))))))

(declare-fun b!4091086 () Bool)

(declare-fun e!2538933 () Bool)

(assert (=> b!4091086 (= e!2538933 (matchR!5942 (regex!7096 (h!49293 rules!3870)) (_1!24538 (findLongestMatchInner!1462 (regex!7096 (h!49293 rules!3870)) Nil!43872 (size!32771 Nil!43872) input!3411 input!3411 (size!32771 input!3411)))))))

(declare-fun b!4091087 () Bool)

(declare-fun res!1672152 () Bool)

(assert (=> b!4091087 (=> (not res!1672152) (not e!2538932))))

(assert (=> b!4091087 (= res!1672152 (< (size!32771 (_2!24536 (get!14388 lt!1463160))) (size!32771 input!3411)))))

(declare-fun b!4091088 () Bool)

(declare-fun res!1672154 () Bool)

(assert (=> b!4091088 (=> (not res!1672154) (not e!2538932))))

(assert (=> b!4091088 (= res!1672154 (= (rule!10238 (_1!24536 (get!14388 lt!1463160))) (h!49293 rules!3870)))))

(declare-fun d!1214541 () Bool)

(declare-fun e!2538934 () Bool)

(assert (=> d!1214541 e!2538934))

(declare-fun res!1672155 () Bool)

(assert (=> d!1214541 (=> res!1672155 e!2538934)))

(assert (=> d!1214541 (= res!1672155 (isEmpty!26243 lt!1463160))))

(declare-fun e!2538931 () Option!9502)

(assert (=> d!1214541 (= lt!1463160 e!2538931)))

(declare-fun c!705047 () Bool)

(declare-fun lt!1463163 () tuple2!42808)

(assert (=> d!1214541 (= c!705047 (isEmpty!26242 (_1!24538 lt!1463163)))))

(assert (=> d!1214541 (= lt!1463163 (findLongestMatch!1375 (regex!7096 (h!49293 rules!3870)) input!3411))))

(assert (=> d!1214541 (ruleValid!3016 thiss!26199 (h!49293 rules!3870))))

(assert (=> d!1214541 (= (maxPrefixOneRule!2957 thiss!26199 (h!49293 rules!3870) input!3411) lt!1463160)))

(declare-fun b!4091089 () Bool)

(assert (=> b!4091089 (= e!2538934 e!2538932)))

(declare-fun res!1672153 () Bool)

(assert (=> b!4091089 (=> (not res!1672153) (not e!2538932))))

(assert (=> b!4091089 (= res!1672153 (matchR!5942 (regex!7096 (h!49293 rules!3870)) (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463160))))))))

(declare-fun b!4091090 () Bool)

(assert (=> b!4091090 (= e!2538931 (Some!9501 (tuple2!42805 (Token!13319 (apply!10279 (transformation!7096 (h!49293 rules!3870)) (seqFromList!5313 (_1!24538 lt!1463163))) (h!49293 rules!3870) (size!32773 (seqFromList!5313 (_1!24538 lt!1463163))) (_1!24538 lt!1463163)) (_2!24538 lt!1463163))))))

(declare-fun lt!1463159 () Unit!63391)

(assert (=> b!4091090 (= lt!1463159 (longestMatchIsAcceptedByMatchOrIsEmpty!1435 (regex!7096 (h!49293 rules!3870)) input!3411))))

(declare-fun res!1672151 () Bool)

(assert (=> b!4091090 (= res!1672151 (isEmpty!26242 (_1!24538 (findLongestMatchInner!1462 (regex!7096 (h!49293 rules!3870)) Nil!43872 (size!32771 Nil!43872) input!3411 input!3411 (size!32771 input!3411)))))))

(assert (=> b!4091090 (=> res!1672151 e!2538933)))

(assert (=> b!4091090 e!2538933))

(declare-fun lt!1463162 () Unit!63391)

(assert (=> b!4091090 (= lt!1463162 lt!1463159)))

(declare-fun lt!1463161 () Unit!63391)

(assert (=> b!4091090 (= lt!1463161 (lemmaSemiInverse!2063 (transformation!7096 (h!49293 rules!3870)) (seqFromList!5313 (_1!24538 lt!1463163))))))

(declare-fun b!4091091 () Bool)

(assert (=> b!4091091 (= e!2538932 (= (size!32770 (_1!24536 (get!14388 lt!1463160))) (size!32771 (originalCharacters!7690 (_1!24536 (get!14388 lt!1463160))))))))

(declare-fun b!4091092 () Bool)

(assert (=> b!4091092 (= e!2538931 None!9501)))

(declare-fun b!4091093 () Bool)

(declare-fun res!1672150 () Bool)

(assert (=> b!4091093 (=> (not res!1672150) (not e!2538932))))

(assert (=> b!4091093 (= res!1672150 (= (++!11502 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463160)))) (_2!24536 (get!14388 lt!1463160))) input!3411))))

(assert (= (and d!1214541 c!705047) b!4091092))

(assert (= (and d!1214541 (not c!705047)) b!4091090))

(assert (= (and b!4091090 (not res!1672151)) b!4091086))

(assert (= (and d!1214541 (not res!1672155)) b!4091089))

(assert (= (and b!4091089 res!1672153) b!4091093))

(assert (= (and b!4091093 res!1672150) b!4091087))

(assert (= (and b!4091087 res!1672152) b!4091088))

(assert (= (and b!4091088 res!1672154) b!4091085))

(assert (= (and b!4091085 res!1672156) b!4091091))

(declare-fun m!4697905 () Bool)

(assert (=> b!4091089 m!4697905))

(declare-fun m!4697907 () Bool)

(assert (=> b!4091089 m!4697907))

(assert (=> b!4091089 m!4697907))

(declare-fun m!4697909 () Bool)

(assert (=> b!4091089 m!4697909))

(assert (=> b!4091089 m!4697909))

(declare-fun m!4697911 () Bool)

(assert (=> b!4091089 m!4697911))

(assert (=> b!4091086 m!4697837))

(assert (=> b!4091086 m!4697593))

(assert (=> b!4091086 m!4697837))

(assert (=> b!4091086 m!4697593))

(declare-fun m!4697913 () Bool)

(assert (=> b!4091086 m!4697913))

(declare-fun m!4697915 () Bool)

(assert (=> b!4091086 m!4697915))

(assert (=> b!4091093 m!4697905))

(assert (=> b!4091093 m!4697907))

(assert (=> b!4091093 m!4697907))

(assert (=> b!4091093 m!4697909))

(assert (=> b!4091093 m!4697909))

(declare-fun m!4697917 () Bool)

(assert (=> b!4091093 m!4697917))

(assert (=> b!4091090 m!4697837))

(assert (=> b!4091090 m!4697593))

(declare-fun m!4697919 () Bool)

(assert (=> b!4091090 m!4697919))

(declare-fun m!4697921 () Bool)

(assert (=> b!4091090 m!4697921))

(declare-fun m!4697923 () Bool)

(assert (=> b!4091090 m!4697923))

(assert (=> b!4091090 m!4697921))

(declare-fun m!4697925 () Bool)

(assert (=> b!4091090 m!4697925))

(assert (=> b!4091090 m!4697921))

(assert (=> b!4091090 m!4697921))

(declare-fun m!4697927 () Bool)

(assert (=> b!4091090 m!4697927))

(assert (=> b!4091090 m!4697837))

(assert (=> b!4091090 m!4697593))

(assert (=> b!4091090 m!4697913))

(declare-fun m!4697929 () Bool)

(assert (=> b!4091090 m!4697929))

(declare-fun m!4697931 () Bool)

(assert (=> d!1214541 m!4697931))

(declare-fun m!4697933 () Bool)

(assert (=> d!1214541 m!4697933))

(declare-fun m!4697935 () Bool)

(assert (=> d!1214541 m!4697935))

(declare-fun m!4697937 () Bool)

(assert (=> d!1214541 m!4697937))

(assert (=> b!4091087 m!4697905))

(declare-fun m!4697939 () Bool)

(assert (=> b!4091087 m!4697939))

(assert (=> b!4091087 m!4697593))

(assert (=> b!4091085 m!4697905))

(declare-fun m!4697941 () Bool)

(assert (=> b!4091085 m!4697941))

(assert (=> b!4091085 m!4697941))

(declare-fun m!4697943 () Bool)

(assert (=> b!4091085 m!4697943))

(assert (=> b!4091088 m!4697905))

(assert (=> b!4091091 m!4697905))

(declare-fun m!4697945 () Bool)

(assert (=> b!4091091 m!4697945))

(assert (=> b!4090772 d!1214541))

(declare-fun d!1214543 () Bool)

(declare-fun res!1672159 () Bool)

(declare-fun e!2538937 () Bool)

(assert (=> d!1214543 (=> (not res!1672159) (not e!2538937))))

(declare-fun rulesValid!2784 (LexerInterface!6685 List!43997) Bool)

(assert (=> d!1214543 (= res!1672159 (rulesValid!2784 thiss!26199 (t!338596 rules!3870)))))

(assert (=> d!1214543 (= (rulesInvariant!6028 thiss!26199 (t!338596 rules!3870)) e!2538937)))

(declare-fun b!4091096 () Bool)

(declare-datatypes ((List!43999 0))(
  ( (Nil!43875) (Cons!43875 (h!49295 String!50380) (t!338634 List!43999)) )
))
(declare-fun noDuplicateTag!2785 (LexerInterface!6685 List!43997 List!43999) Bool)

(assert (=> b!4091096 (= e!2538937 (noDuplicateTag!2785 thiss!26199 (t!338596 rules!3870) Nil!43875))))

(assert (= (and d!1214543 res!1672159) b!4091096))

(declare-fun m!4697947 () Bool)

(assert (=> d!1214543 m!4697947))

(declare-fun m!4697949 () Bool)

(assert (=> b!4091096 m!4697949))

(assert (=> b!4090772 d!1214543))

(declare-fun d!1214545 () Bool)

(assert (=> d!1214545 (rulesInvariant!6028 thiss!26199 (t!338596 rules!3870))))

(declare-fun lt!1463166 () Unit!63391)

(declare-fun choose!24989 (LexerInterface!6685 Rule!13992 List!43997) Unit!63391)

(assert (=> d!1214545 (= lt!1463166 (choose!24989 thiss!26199 (h!49293 rules!3870) (t!338596 rules!3870)))))

(assert (=> d!1214545 (rulesInvariant!6028 thiss!26199 (Cons!43873 (h!49293 rules!3870) (t!338596 rules!3870)))))

(assert (=> d!1214545 (= (lemmaInvariantOnRulesThenOnTail!798 thiss!26199 (h!49293 rules!3870) (t!338596 rules!3870)) lt!1463166)))

(declare-fun bs!593271 () Bool)

(assert (= bs!593271 d!1214545))

(assert (=> bs!593271 m!4697495))

(declare-fun m!4697951 () Bool)

(assert (=> bs!593271 m!4697951))

(declare-fun m!4697953 () Bool)

(assert (=> bs!593271 m!4697953))

(assert (=> b!4090772 d!1214545))

(declare-fun d!1214547 () Bool)

(declare-fun e!2538942 () Bool)

(assert (=> d!1214547 e!2538942))

(declare-fun res!1672164 () Bool)

(assert (=> d!1214547 (=> (not res!1672164) (not e!2538942))))

(declare-fun lt!1463169 () List!43996)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6762 (List!43996) (InoxSet C!24188))

(assert (=> d!1214547 (= res!1672164 (= (content!6762 lt!1463169) ((_ map or) (content!6762 p!2988) (content!6762 suffix!1518))))))

(declare-fun e!2538943 () List!43996)

(assert (=> d!1214547 (= lt!1463169 e!2538943)))

(declare-fun c!705050 () Bool)

(assert (=> d!1214547 (= c!705050 ((_ is Nil!43872) p!2988))))

(assert (=> d!1214547 (= (++!11502 p!2988 suffix!1518) lt!1463169)))

(declare-fun b!4091107 () Bool)

(declare-fun res!1672165 () Bool)

(assert (=> b!4091107 (=> (not res!1672165) (not e!2538942))))

(assert (=> b!4091107 (= res!1672165 (= (size!32771 lt!1463169) (+ (size!32771 p!2988) (size!32771 suffix!1518))))))

(declare-fun b!4091108 () Bool)

(assert (=> b!4091108 (= e!2538942 (or (not (= suffix!1518 Nil!43872)) (= lt!1463169 p!2988)))))

(declare-fun b!4091106 () Bool)

(assert (=> b!4091106 (= e!2538943 (Cons!43872 (h!49292 p!2988) (++!11502 (t!338595 p!2988) suffix!1518)))))

(declare-fun b!4091105 () Bool)

(assert (=> b!4091105 (= e!2538943 suffix!1518)))

(assert (= (and d!1214547 c!705050) b!4091105))

(assert (= (and d!1214547 (not c!705050)) b!4091106))

(assert (= (and d!1214547 res!1672164) b!4091107))

(assert (= (and b!4091107 res!1672165) b!4091108))

(declare-fun m!4697955 () Bool)

(assert (=> d!1214547 m!4697955))

(declare-fun m!4697957 () Bool)

(assert (=> d!1214547 m!4697957))

(declare-fun m!4697959 () Bool)

(assert (=> d!1214547 m!4697959))

(declare-fun m!4697961 () Bool)

(assert (=> b!4091107 m!4697961))

(assert (=> b!4091107 m!4697477))

(declare-fun m!4697963 () Bool)

(assert (=> b!4091107 m!4697963))

(declare-fun m!4697965 () Bool)

(assert (=> b!4091106 m!4697965))

(assert (=> b!4090771 d!1214547))

(declare-fun d!1214549 () Bool)

(declare-fun res!1672166 () Bool)

(declare-fun e!2538944 () Bool)

(assert (=> d!1214549 (=> (not res!1672166) (not e!2538944))))

(assert (=> d!1214549 (= res!1672166 (rulesValid!2784 thiss!26199 rules!3870))))

(assert (=> d!1214549 (= (rulesInvariant!6028 thiss!26199 rules!3870) e!2538944)))

(declare-fun b!4091109 () Bool)

(assert (=> b!4091109 (= e!2538944 (noDuplicateTag!2785 thiss!26199 rules!3870 Nil!43875))))

(assert (= (and d!1214549 res!1672166) b!4091109))

(declare-fun m!4697967 () Bool)

(assert (=> d!1214549 m!4697967))

(declare-fun m!4697969 () Bool)

(assert (=> b!4091109 m!4697969))

(assert (=> b!4090770 d!1214549))

(declare-fun d!1214551 () Bool)

(declare-fun lt!1463172 () Bool)

(declare-fun content!6763 (List!43997) (InoxSet Rule!13992))

(assert (=> d!1214551 (= lt!1463172 (select (content!6763 (t!338596 rules!3870)) r!4213))))

(declare-fun e!2538950 () Bool)

(assert (=> d!1214551 (= lt!1463172 e!2538950)))

(declare-fun res!1672172 () Bool)

(assert (=> d!1214551 (=> (not res!1672172) (not e!2538950))))

(assert (=> d!1214551 (= res!1672172 ((_ is Cons!43873) (t!338596 rules!3870)))))

(assert (=> d!1214551 (= (contains!8775 (t!338596 rules!3870) r!4213) lt!1463172)))

(declare-fun b!4091114 () Bool)

(declare-fun e!2538949 () Bool)

(assert (=> b!4091114 (= e!2538950 e!2538949)))

(declare-fun res!1672171 () Bool)

(assert (=> b!4091114 (=> res!1672171 e!2538949)))

(assert (=> b!4091114 (= res!1672171 (= (h!49293 (t!338596 rules!3870)) r!4213))))

(declare-fun b!4091115 () Bool)

(assert (=> b!4091115 (= e!2538949 (contains!8775 (t!338596 (t!338596 rules!3870)) r!4213))))

(assert (= (and d!1214551 res!1672172) b!4091114))

(assert (= (and b!4091114 (not res!1672171)) b!4091115))

(declare-fun m!4697971 () Bool)

(assert (=> d!1214551 m!4697971))

(declare-fun m!4697973 () Bool)

(assert (=> d!1214551 m!4697973))

(declare-fun m!4697975 () Bool)

(assert (=> b!4091115 m!4697975))

(assert (=> b!4090781 d!1214551))

(declare-fun d!1214553 () Bool)

(declare-fun lt!1463173 () Bool)

(assert (=> d!1214553 (= lt!1463173 (select (content!6763 rules!3870) r!4213))))

(declare-fun e!2538952 () Bool)

(assert (=> d!1214553 (= lt!1463173 e!2538952)))

(declare-fun res!1672174 () Bool)

(assert (=> d!1214553 (=> (not res!1672174) (not e!2538952))))

(assert (=> d!1214553 (= res!1672174 ((_ is Cons!43873) rules!3870))))

(assert (=> d!1214553 (= (contains!8775 rules!3870 r!4213) lt!1463173)))

(declare-fun b!4091116 () Bool)

(declare-fun e!2538951 () Bool)

(assert (=> b!4091116 (= e!2538952 e!2538951)))

(declare-fun res!1672173 () Bool)

(assert (=> b!4091116 (=> res!1672173 e!2538951)))

(assert (=> b!4091116 (= res!1672173 (= (h!49293 rules!3870) r!4213))))

(declare-fun b!4091117 () Bool)

(assert (=> b!4091117 (= e!2538951 (contains!8775 (t!338596 rules!3870) r!4213))))

(assert (= (and d!1214553 res!1672174) b!4091116))

(assert (= (and b!4091116 (not res!1672173)) b!4091117))

(declare-fun m!4697977 () Bool)

(assert (=> d!1214553 m!4697977))

(declare-fun m!4697979 () Bool)

(assert (=> d!1214553 m!4697979))

(assert (=> b!4091117 m!4697509))

(assert (=> b!4090780 d!1214553))

(declare-fun d!1214555 () Bool)

(assert (=> d!1214555 (= (isEmpty!26241 rules!3870) ((_ is Nil!43873) rules!3870))))

(assert (=> b!4090769 d!1214555))

(declare-fun b!4091146 () Bool)

(declare-fun e!2538973 () Bool)

(declare-fun e!2538969 () Bool)

(assert (=> b!4091146 (= e!2538973 e!2538969)))

(declare-fun res!1672196 () Bool)

(assert (=> b!4091146 (=> (not res!1672196) (not e!2538969))))

(declare-fun lt!1463176 () Bool)

(assert (=> b!4091146 (= res!1672196 (not lt!1463176))))

(declare-fun b!4091147 () Bool)

(declare-fun res!1672191 () Bool)

(assert (=> b!4091147 (=> res!1672191 e!2538973)))

(declare-fun e!2538970 () Bool)

(assert (=> b!4091147 (= res!1672191 e!2538970)))

(declare-fun res!1672193 () Bool)

(assert (=> b!4091147 (=> (not res!1672193) (not e!2538970))))

(assert (=> b!4091147 (= res!1672193 lt!1463176)))

(declare-fun b!4091148 () Bool)

(declare-fun head!8649 (List!43996) C!24188)

(assert (=> b!4091148 (= e!2538970 (= (head!8649 p!2988) (c!705010 (regex!7096 r!4213))))))

(declare-fun b!4091149 () Bool)

(declare-fun e!2538971 () Bool)

(declare-fun call!289108 () Bool)

(assert (=> b!4091149 (= e!2538971 (= lt!1463176 call!289108))))

(declare-fun b!4091150 () Bool)

(declare-fun e!2538968 () Bool)

(declare-fun nullable!4238 (Regex!12001) Bool)

(assert (=> b!4091150 (= e!2538968 (nullable!4238 (regex!7096 r!4213)))))

(declare-fun b!4091152 () Bool)

(declare-fun res!1672195 () Bool)

(assert (=> b!4091152 (=> (not res!1672195) (not e!2538970))))

(declare-fun tail!6383 (List!43996) List!43996)

(assert (=> b!4091152 (= res!1672195 (isEmpty!26242 (tail!6383 p!2988)))))

(declare-fun b!4091153 () Bool)

(declare-fun e!2538967 () Bool)

(assert (=> b!4091153 (= e!2538971 e!2538967)))

(declare-fun c!705059 () Bool)

(assert (=> b!4091153 (= c!705059 ((_ is EmptyLang!12001) (regex!7096 r!4213)))))

(declare-fun bm!289103 () Bool)

(assert (=> bm!289103 (= call!289108 (isEmpty!26242 p!2988))))

(declare-fun b!4091154 () Bool)

(declare-fun e!2538972 () Bool)

(assert (=> b!4091154 (= e!2538969 e!2538972)))

(declare-fun res!1672198 () Bool)

(assert (=> b!4091154 (=> res!1672198 e!2538972)))

(assert (=> b!4091154 (= res!1672198 call!289108)))

(declare-fun b!4091155 () Bool)

(declare-fun derivativeStep!3639 (Regex!12001 C!24188) Regex!12001)

(assert (=> b!4091155 (= e!2538968 (matchR!5942 (derivativeStep!3639 (regex!7096 r!4213) (head!8649 p!2988)) (tail!6383 p!2988)))))

(declare-fun b!4091156 () Bool)

(declare-fun res!1672194 () Bool)

(assert (=> b!4091156 (=> res!1672194 e!2538972)))

(assert (=> b!4091156 (= res!1672194 (not (isEmpty!26242 (tail!6383 p!2988))))))

(declare-fun b!4091157 () Bool)

(assert (=> b!4091157 (= e!2538972 (not (= (head!8649 p!2988) (c!705010 (regex!7096 r!4213)))))))

(declare-fun b!4091158 () Bool)

(declare-fun res!1672192 () Bool)

(assert (=> b!4091158 (=> (not res!1672192) (not e!2538970))))

(assert (=> b!4091158 (= res!1672192 (not call!289108))))

(declare-fun b!4091159 () Bool)

(declare-fun res!1672197 () Bool)

(assert (=> b!4091159 (=> res!1672197 e!2538973)))

(assert (=> b!4091159 (= res!1672197 (not ((_ is ElementMatch!12001) (regex!7096 r!4213))))))

(assert (=> b!4091159 (= e!2538967 e!2538973)))

(declare-fun d!1214557 () Bool)

(assert (=> d!1214557 e!2538971))

(declare-fun c!705058 () Bool)

(assert (=> d!1214557 (= c!705058 ((_ is EmptyExpr!12001) (regex!7096 r!4213)))))

(assert (=> d!1214557 (= lt!1463176 e!2538968)))

(declare-fun c!705057 () Bool)

(assert (=> d!1214557 (= c!705057 (isEmpty!26242 p!2988))))

(declare-fun validRegex!5438 (Regex!12001) Bool)

(assert (=> d!1214557 (validRegex!5438 (regex!7096 r!4213))))

(assert (=> d!1214557 (= (matchR!5942 (regex!7096 r!4213) p!2988) lt!1463176)))

(declare-fun b!4091151 () Bool)

(assert (=> b!4091151 (= e!2538967 (not lt!1463176))))

(assert (= (and d!1214557 c!705057) b!4091150))

(assert (= (and d!1214557 (not c!705057)) b!4091155))

(assert (= (and d!1214557 c!705058) b!4091149))

(assert (= (and d!1214557 (not c!705058)) b!4091153))

(assert (= (and b!4091153 c!705059) b!4091151))

(assert (= (and b!4091153 (not c!705059)) b!4091159))

(assert (= (and b!4091159 (not res!1672197)) b!4091147))

(assert (= (and b!4091147 res!1672193) b!4091158))

(assert (= (and b!4091158 res!1672192) b!4091152))

(assert (= (and b!4091152 res!1672195) b!4091148))

(assert (= (and b!4091147 (not res!1672191)) b!4091146))

(assert (= (and b!4091146 res!1672196) b!4091154))

(assert (= (and b!4091154 (not res!1672198)) b!4091156))

(assert (= (and b!4091156 (not res!1672194)) b!4091157))

(assert (= (or b!4091149 b!4091154 b!4091158) bm!289103))

(assert (=> d!1214557 m!4697505))

(declare-fun m!4697981 () Bool)

(assert (=> d!1214557 m!4697981))

(declare-fun m!4697983 () Bool)

(assert (=> b!4091150 m!4697983))

(assert (=> bm!289103 m!4697505))

(declare-fun m!4697985 () Bool)

(assert (=> b!4091155 m!4697985))

(assert (=> b!4091155 m!4697985))

(declare-fun m!4697987 () Bool)

(assert (=> b!4091155 m!4697987))

(declare-fun m!4697989 () Bool)

(assert (=> b!4091155 m!4697989))

(assert (=> b!4091155 m!4697987))

(assert (=> b!4091155 m!4697989))

(declare-fun m!4697991 () Bool)

(assert (=> b!4091155 m!4697991))

(assert (=> b!4091157 m!4697985))

(assert (=> b!4091152 m!4697989))

(assert (=> b!4091152 m!4697989))

(declare-fun m!4697993 () Bool)

(assert (=> b!4091152 m!4697993))

(assert (=> b!4091148 m!4697985))

(assert (=> b!4091156 m!4697989))

(assert (=> b!4091156 m!4697989))

(assert (=> b!4091156 m!4697993))

(assert (=> b!4090768 d!1214557))

(declare-fun d!1214559 () Bool)

(declare-fun res!1672203 () Bool)

(declare-fun e!2538976 () Bool)

(assert (=> d!1214559 (=> (not res!1672203) (not e!2538976))))

(assert (=> d!1214559 (= res!1672203 (validRegex!5438 (regex!7096 r!4213)))))

(assert (=> d!1214559 (= (ruleValid!3016 thiss!26199 r!4213) e!2538976)))

(declare-fun b!4091164 () Bool)

(declare-fun res!1672204 () Bool)

(assert (=> b!4091164 (=> (not res!1672204) (not e!2538976))))

(assert (=> b!4091164 (= res!1672204 (not (nullable!4238 (regex!7096 r!4213))))))

(declare-fun b!4091165 () Bool)

(assert (=> b!4091165 (= e!2538976 (not (= (tag!7956 r!4213) (String!50381 ""))))))

(assert (= (and d!1214559 res!1672203) b!4091164))

(assert (= (and b!4091164 res!1672204) b!4091165))

(assert (=> d!1214559 m!4697981))

(assert (=> b!4091164 m!4697983))

(assert (=> b!4090768 d!1214559))

(declare-fun d!1214561 () Bool)

(assert (=> d!1214561 (ruleValid!3016 thiss!26199 r!4213)))

(declare-fun lt!1463177 () Unit!63391)

(assert (=> d!1214561 (= lt!1463177 (choose!24987 thiss!26199 r!4213 rules!3870))))

(assert (=> d!1214561 (contains!8775 rules!3870 r!4213)))

(assert (=> d!1214561 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2082 thiss!26199 r!4213 rules!3870) lt!1463177)))

(declare-fun bs!593272 () Bool)

(assert (= bs!593272 d!1214561))

(assert (=> bs!593272 m!4697485))

(declare-fun m!4697995 () Bool)

(assert (=> bs!593272 m!4697995))

(assert (=> bs!593272 m!4697489))

(assert (=> b!4090768 d!1214561))

(declare-fun d!1214563 () Bool)

(assert (=> d!1214563 (= (inv!58571 (tag!7956 (h!49293 rules!3870))) (= (mod (str.len (value!222887 (tag!7956 (h!49293 rules!3870)))) 2) 0))))

(assert (=> b!4090779 d!1214563))

(declare-fun d!1214565 () Bool)

(declare-fun res!1672205 () Bool)

(declare-fun e!2538977 () Bool)

(assert (=> d!1214565 (=> (not res!1672205) (not e!2538977))))

(assert (=> d!1214565 (= res!1672205 (semiInverseModEq!3050 (toChars!9543 (transformation!7096 (h!49293 rules!3870))) (toValue!9684 (transformation!7096 (h!49293 rules!3870)))))))

(assert (=> d!1214565 (= (inv!58574 (transformation!7096 (h!49293 rules!3870))) e!2538977)))

(declare-fun b!4091166 () Bool)

(assert (=> b!4091166 (= e!2538977 (equivClasses!2949 (toChars!9543 (transformation!7096 (h!49293 rules!3870))) (toValue!9684 (transformation!7096 (h!49293 rules!3870)))))))

(assert (= (and d!1214565 res!1672205) b!4091166))

(declare-fun m!4697997 () Bool)

(assert (=> d!1214565 m!4697997))

(declare-fun m!4697999 () Bool)

(assert (=> b!4091166 m!4697999))

(assert (=> b!4090779 d!1214565))

(declare-fun d!1214567 () Bool)

(assert (=> d!1214567 (= (isEmpty!26242 p!2988) ((_ is Nil!43872) p!2988))))

(assert (=> b!4090767 d!1214567))

(declare-fun d!1214569 () Bool)

(assert (=> d!1214569 (= (isEmpty!26241 (t!338596 rules!3870)) ((_ is Nil!43873) (t!338596 rules!3870)))))

(assert (=> b!4090766 d!1214569))

(declare-fun e!2538980 () Bool)

(assert (=> b!4090764 (= tp!1238481 e!2538980)))

(declare-fun b!4091177 () Bool)

(assert (=> b!4091177 (= e!2538980 tp_is_empty!21005)))

(declare-fun b!4091178 () Bool)

(declare-fun tp!1238550 () Bool)

(declare-fun tp!1238548 () Bool)

(assert (=> b!4091178 (= e!2538980 (and tp!1238550 tp!1238548))))

(declare-fun b!4091179 () Bool)

(declare-fun tp!1238547 () Bool)

(assert (=> b!4091179 (= e!2538980 tp!1238547)))

(declare-fun b!4091180 () Bool)

(declare-fun tp!1238549 () Bool)

(declare-fun tp!1238546 () Bool)

(assert (=> b!4091180 (= e!2538980 (and tp!1238549 tp!1238546))))

(assert (= (and b!4090764 ((_ is ElementMatch!12001) (regex!7096 r!4213))) b!4091177))

(assert (= (and b!4090764 ((_ is Concat!19328) (regex!7096 r!4213))) b!4091178))

(assert (= (and b!4090764 ((_ is Star!12001) (regex!7096 r!4213))) b!4091179))

(assert (= (and b!4090764 ((_ is Union!12001) (regex!7096 r!4213))) b!4091180))

(declare-fun b!4091185 () Bool)

(declare-fun e!2538983 () Bool)

(declare-fun tp!1238553 () Bool)

(assert (=> b!4091185 (= e!2538983 (and tp_is_empty!21005 tp!1238553))))

(assert (=> b!4090784 (= tp!1238483 e!2538983)))

(assert (= (and b!4090784 ((_ is Cons!43872) (t!338595 suffix!1518))) b!4091185))

(declare-fun e!2538984 () Bool)

(assert (=> b!4090779 (= tp!1238486 e!2538984)))

(declare-fun b!4091186 () Bool)

(assert (=> b!4091186 (= e!2538984 tp_is_empty!21005)))

(declare-fun b!4091187 () Bool)

(declare-fun tp!1238558 () Bool)

(declare-fun tp!1238556 () Bool)

(assert (=> b!4091187 (= e!2538984 (and tp!1238558 tp!1238556))))

(declare-fun b!4091188 () Bool)

(declare-fun tp!1238555 () Bool)

(assert (=> b!4091188 (= e!2538984 tp!1238555)))

(declare-fun b!4091189 () Bool)

(declare-fun tp!1238557 () Bool)

(declare-fun tp!1238554 () Bool)

(assert (=> b!4091189 (= e!2538984 (and tp!1238557 tp!1238554))))

(assert (= (and b!4090779 ((_ is ElementMatch!12001) (regex!7096 (h!49293 rules!3870)))) b!4091186))

(assert (= (and b!4090779 ((_ is Concat!19328) (regex!7096 (h!49293 rules!3870)))) b!4091187))

(assert (= (and b!4090779 ((_ is Star!12001) (regex!7096 (h!49293 rules!3870)))) b!4091188))

(assert (= (and b!4090779 ((_ is Union!12001) (regex!7096 (h!49293 rules!3870)))) b!4091189))

(declare-fun b!4091200 () Bool)

(declare-fun b_free!114389 () Bool)

(declare-fun b_next!115093 () Bool)

(assert (=> b!4091200 (= b_free!114389 (not b_next!115093))))

(declare-fun t!338628 () Bool)

(declare-fun tb!245855 () Bool)

(assert (=> (and b!4091200 (= (toValue!9684 (transformation!7096 (h!49293 (t!338596 rules!3870)))) (toValue!9684 (transformation!7096 r!4213))) t!338628) tb!245855))

(declare-fun result!298364 () Bool)

(assert (= result!298364 result!298332))

(assert (=> d!1214479 t!338628))

(assert (=> d!1214505 t!338628))

(declare-fun b_and!315219 () Bool)

(declare-fun tp!1238567 () Bool)

(assert (=> b!4091200 (= tp!1238567 (and (=> t!338628 result!298364) b_and!315219))))

(declare-fun b_free!114391 () Bool)

(declare-fun b_next!115095 () Bool)

(assert (=> b!4091200 (= b_free!114391 (not b_next!115095))))

(declare-fun tb!245857 () Bool)

(declare-fun t!338630 () Bool)

(assert (=> (and b!4091200 (= (toChars!9543 (transformation!7096 (h!49293 (t!338596 rules!3870)))) (toChars!9543 (transformation!7096 r!4213))) t!338630) tb!245857))

(declare-fun result!298366 () Bool)

(assert (= result!298366 result!298326))

(assert (=> d!1214479 t!338630))

(declare-fun t!338632 () Bool)

(declare-fun tb!245859 () Bool)

(assert (=> (and b!4091200 (= (toChars!9543 (transformation!7096 (h!49293 (t!338596 rules!3870)))) (toChars!9543 (transformation!7096 (rule!10238 lt!1463041)))) t!338632) tb!245859))

(declare-fun result!298368 () Bool)

(assert (= result!298368 result!298338))

(assert (=> b!4090993 t!338632))

(declare-fun b_and!315221 () Bool)

(declare-fun tp!1238569 () Bool)

(assert (=> b!4091200 (= tp!1238569 (and (=> t!338630 result!298366) (=> t!338632 result!298368) b_and!315221))))

(declare-fun e!2538995 () Bool)

(assert (=> b!4091200 (= e!2538995 (and tp!1238567 tp!1238569))))

(declare-fun b!4091199 () Bool)

(declare-fun tp!1238568 () Bool)

(declare-fun e!2538993 () Bool)

(assert (=> b!4091199 (= e!2538993 (and tp!1238568 (inv!58571 (tag!7956 (h!49293 (t!338596 rules!3870)))) (inv!58574 (transformation!7096 (h!49293 (t!338596 rules!3870)))) e!2538995))))

(declare-fun b!4091198 () Bool)

(declare-fun e!2538996 () Bool)

(declare-fun tp!1238570 () Bool)

(assert (=> b!4091198 (= e!2538996 (and e!2538993 tp!1238570))))

(assert (=> b!4090778 (= tp!1238488 e!2538996)))

(assert (= b!4091199 b!4091200))

(assert (= b!4091198 b!4091199))

(assert (= (and b!4090778 ((_ is Cons!43873) (t!338596 rules!3870))) b!4091198))

(declare-fun m!4698001 () Bool)

(assert (=> b!4091199 m!4698001))

(declare-fun m!4698003 () Bool)

(assert (=> b!4091199 m!4698003))

(declare-fun b!4091201 () Bool)

(declare-fun e!2538997 () Bool)

(declare-fun tp!1238571 () Bool)

(assert (=> b!4091201 (= e!2538997 (and tp_is_empty!21005 tp!1238571))))

(assert (=> b!4090783 (= tp!1238482 e!2538997)))

(assert (= (and b!4090783 ((_ is Cons!43872) (t!338595 input!3411))) b!4091201))

(declare-fun b!4091202 () Bool)

(declare-fun e!2538998 () Bool)

(declare-fun tp!1238572 () Bool)

(assert (=> b!4091202 (= e!2538998 (and tp_is_empty!21005 tp!1238572))))

(assert (=> b!4090782 (= tp!1238487 e!2538998)))

(assert (= (and b!4090782 ((_ is Cons!43872) (t!338595 p!2988))) b!4091202))

(declare-fun b_lambda!119901 () Bool)

(assert (= b_lambda!119885 (or (and b!4090773 b_free!114379) (and b!4090777 b_free!114383 (= (toChars!9543 (transformation!7096 (h!49293 rules!3870))) (toChars!9543 (transformation!7096 r!4213)))) (and b!4091200 b_free!114391 (= (toChars!9543 (transformation!7096 (h!49293 (t!338596 rules!3870)))) (toChars!9543 (transformation!7096 r!4213)))) b_lambda!119901)))

(declare-fun b_lambda!119903 () Bool)

(assert (= b_lambda!119887 (or (and b!4090773 b_free!114377) (and b!4090777 b_free!114381 (= (toValue!9684 (transformation!7096 (h!49293 rules!3870))) (toValue!9684 (transformation!7096 r!4213)))) (and b!4091200 b_free!114389 (= (toValue!9684 (transformation!7096 (h!49293 (t!338596 rules!3870)))) (toValue!9684 (transformation!7096 r!4213)))) b_lambda!119903)))

(declare-fun b_lambda!119905 () Bool)

(assert (= b_lambda!119889 (or (and b!4090773 b_free!114377) (and b!4090777 b_free!114381 (= (toValue!9684 (transformation!7096 (h!49293 rules!3870))) (toValue!9684 (transformation!7096 r!4213)))) (and b!4091200 b_free!114389 (= (toValue!9684 (transformation!7096 (h!49293 (t!338596 rules!3870)))) (toValue!9684 (transformation!7096 r!4213)))) b_lambda!119905)))

(check-sat (not b!4091178) (not b!4091073) b_and!315219 (not b!4091115) (not d!1214551) (not b!4090886) (not d!1214565) (not b_lambda!119905) (not d!1214547) (not d!1214543) (not d!1214537) (not b_next!115093) b_and!315209 (not b!4091164) (not b!4090994) b_and!315221 (not d!1214559) (not b!4091080) (not d!1214477) (not b!4091199) (not tb!245841) (not b!4091083) (not d!1214541) (not b!4091069) (not tb!245837) (not b!4091088) (not b!4091148) (not b_next!115087) (not b!4091089) (not b!4091106) (not b_next!115083) (not b!4091179) (not b!4091157) (not b!4091185) (not b!4091093) (not d!1214545) (not b!4091166) b_and!315207 (not bm!289100) (not b!4091201) (not b!4091156) (not b!4090889) (not b!4091067) (not b!4091070) (not b!4090893) (not b!4091086) (not b!4091188) (not b!4090996) (not b!4091180) (not d!1214549) (not b!4091078) tp_is_empty!21005 b_and!315205 (not b!4090900) (not b!4091202) (not b_next!115081) (not b!4090979) (not b!4091096) (not b!4090890) (not b!4091109) (not b!4091071) (not bm!289103) (not b_next!115095) (not d!1214557) (not b!4090993) (not b!4090892) (not b!4091107) (not d!1214463) (not b!4091075) (not b!4091152) (not b!4091085) (not d!1214553) (not b!4091091) (not b_lambda!119903) (not b!4091077) (not tb!245833) b_and!315203 (not b!4091155) (not b!4090891) (not b!4090888) (not d!1214525) (not b!4091079) (not d!1214561) (not d!1214509) (not d!1214513) (not b!4091081) (not b!4091076) (not b_lambda!119901) (not b!4091090) (not b_lambda!119891) (not b!4091087) (not b_next!115085) (not d!1214535) (not b!4091082) (not b!4091117) (not b!4091072) (not b!4091187) (not bm!289098) (not b!4091150) (not b!4090887) (not b!4091198) (not d!1214479) (not b!4091189) (not b!4090969) (not b!4091068) (not d!1214533))
(check-sat b_and!315221 (not b_next!115087) b_and!315219 (not b_next!115083) b_and!315207 (not b_next!115095) b_and!315203 (not b_next!115085) (not b_next!115093) b_and!315209 b_and!315205 (not b_next!115081))
(get-model)

(declare-fun d!1214623 () Bool)

(assert (=> d!1214623 (= (isDefined!7192 lt!1463086) (not (isEmpty!26243 lt!1463086)))))

(declare-fun bs!593281 () Bool)

(assert (= bs!593281 d!1214623))

(assert (=> bs!593281 m!4697581))

(assert (=> b!4090888 d!1214623))

(declare-fun d!1214627 () Bool)

(assert (=> d!1214627 (= (isEmpty!26242 (originalCharacters!7690 lt!1463041)) ((_ is Nil!43872) (originalCharacters!7690 lt!1463041)))))

(assert (=> d!1214513 d!1214627))

(declare-fun b!4091296 () Bool)

(declare-fun e!2539050 () Bool)

(declare-fun inv!16 (TokenValue!7326) Bool)

(assert (=> b!4091296 (= e!2539050 (inv!16 (dynLambda!18780 (toValue!9684 (transformation!7096 r!4213)) lt!1463039)))))

(declare-fun d!1214629 () Bool)

(declare-fun c!705079 () Bool)

(assert (=> d!1214629 (= c!705079 ((_ is IntegerValue!21978) (dynLambda!18780 (toValue!9684 (transformation!7096 r!4213)) lt!1463039)))))

(assert (=> d!1214629 (= (inv!21 (dynLambda!18780 (toValue!9684 (transformation!7096 r!4213)) lt!1463039)) e!2539050)))

(declare-fun b!4091297 () Bool)

(declare-fun res!1672253 () Bool)

(declare-fun e!2539051 () Bool)

(assert (=> b!4091297 (=> res!1672253 e!2539051)))

(assert (=> b!4091297 (= res!1672253 (not ((_ is IntegerValue!21980) (dynLambda!18780 (toValue!9684 (transformation!7096 r!4213)) lt!1463039))))))

(declare-fun e!2539049 () Bool)

(assert (=> b!4091297 (= e!2539049 e!2539051)))

(declare-fun b!4091298 () Bool)

(declare-fun inv!15 (TokenValue!7326) Bool)

(assert (=> b!4091298 (= e!2539051 (inv!15 (dynLambda!18780 (toValue!9684 (transformation!7096 r!4213)) lt!1463039)))))

(declare-fun b!4091299 () Bool)

(assert (=> b!4091299 (= e!2539050 e!2539049)))

(declare-fun c!705078 () Bool)

(assert (=> b!4091299 (= c!705078 ((_ is IntegerValue!21979) (dynLambda!18780 (toValue!9684 (transformation!7096 r!4213)) lt!1463039)))))

(declare-fun b!4091300 () Bool)

(declare-fun inv!17 (TokenValue!7326) Bool)

(assert (=> b!4091300 (= e!2539049 (inv!17 (dynLambda!18780 (toValue!9684 (transformation!7096 r!4213)) lt!1463039)))))

(assert (= (and d!1214629 c!705079) b!4091296))

(assert (= (and d!1214629 (not c!705079)) b!4091299))

(assert (= (and b!4091299 c!705078) b!4091300))

(assert (= (and b!4091299 (not c!705078)) b!4091297))

(assert (= (and b!4091297 (not res!1672253)) b!4091298))

(declare-fun m!4698159 () Bool)

(assert (=> b!4091296 m!4698159))

(declare-fun m!4698161 () Bool)

(assert (=> b!4091298 m!4698161))

(declare-fun m!4698163 () Bool)

(assert (=> b!4091300 m!4698163))

(assert (=> tb!245837 d!1214629))

(declare-fun d!1214631 () Bool)

(assert (=> d!1214631 (= (get!14388 lt!1463086) (v!39989 lt!1463086))))

(assert (=> b!4090886 d!1214631))

(declare-fun d!1214635 () Bool)

(assert (=> d!1214635 (= (apply!10279 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463086)))) (seqFromList!5313 (originalCharacters!7690 (_1!24536 (get!14388 lt!1463086))))) (dynLambda!18780 (toValue!9684 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463086))))) (seqFromList!5313 (originalCharacters!7690 (_1!24536 (get!14388 lt!1463086))))))))

(declare-fun b_lambda!119911 () Bool)

(assert (=> (not b_lambda!119911) (not d!1214635)))

(declare-fun t!338648 () Bool)

(declare-fun tb!245873 () Bool)

(assert (=> (and b!4090773 (= (toValue!9684 (transformation!7096 r!4213)) (toValue!9684 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463086)))))) t!338648) tb!245873))

(declare-fun result!298382 () Bool)

(assert (=> tb!245873 (= result!298382 (inv!21 (dynLambda!18780 (toValue!9684 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463086))))) (seqFromList!5313 (originalCharacters!7690 (_1!24536 (get!14388 lt!1463086)))))))))

(declare-fun m!4698169 () Bool)

(assert (=> tb!245873 m!4698169))

(assert (=> d!1214635 t!338648))

(declare-fun b_and!315235 () Bool)

(assert (= b_and!315203 (and (=> t!338648 result!298382) b_and!315235)))

(declare-fun t!338650 () Bool)

(declare-fun tb!245875 () Bool)

(assert (=> (and b!4090777 (= (toValue!9684 (transformation!7096 (h!49293 rules!3870))) (toValue!9684 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463086)))))) t!338650) tb!245875))

(declare-fun result!298384 () Bool)

(assert (= result!298384 result!298382))

(assert (=> d!1214635 t!338650))

(declare-fun b_and!315237 () Bool)

(assert (= b_and!315205 (and (=> t!338650 result!298384) b_and!315237)))

(declare-fun t!338652 () Bool)

(declare-fun tb!245877 () Bool)

(assert (=> (and b!4091200 (= (toValue!9684 (transformation!7096 (h!49293 (t!338596 rules!3870)))) (toValue!9684 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463086)))))) t!338652) tb!245877))

(declare-fun result!298386 () Bool)

(assert (= result!298386 result!298382))

(assert (=> d!1214635 t!338652))

(declare-fun b_and!315239 () Bool)

(assert (= b_and!315219 (and (=> t!338652 result!298386) b_and!315239)))

(assert (=> d!1214635 m!4697605))

(declare-fun m!4698171 () Bool)

(assert (=> d!1214635 m!4698171))

(assert (=> b!4090886 d!1214635))

(declare-fun d!1214637 () Bool)

(assert (=> d!1214637 (= (seqFromList!5313 (originalCharacters!7690 (_1!24536 (get!14388 lt!1463086)))) (fromListB!2436 (originalCharacters!7690 (_1!24536 (get!14388 lt!1463086)))))))

(declare-fun bs!593282 () Bool)

(assert (= bs!593282 d!1214637))

(declare-fun m!4698173 () Bool)

(assert (=> bs!593282 m!4698173))

(assert (=> b!4090886 d!1214637))

(declare-fun bs!593283 () Bool)

(declare-fun d!1214639 () Bool)

(assert (= bs!593283 (and d!1214639 d!1214479)))

(declare-fun lambda!128013 () Int)

(assert (=> bs!593283 (= (and (= (toChars!9543 (transformation!7096 (h!49293 rules!3870))) (toChars!9543 (transformation!7096 r!4213))) (= (toValue!9684 (transformation!7096 (h!49293 rules!3870))) (toValue!9684 (transformation!7096 r!4213)))) (= lambda!128013 lambda!128001))))

(assert (=> d!1214639 true))

(assert (=> d!1214639 (< (dynLambda!18778 order!23081 (toChars!9543 (transformation!7096 (h!49293 rules!3870)))) (dynLambda!18777 order!23079 lambda!128013))))

(assert (=> d!1214639 true))

(assert (=> d!1214639 (< (dynLambda!18776 order!23077 (toValue!9684 (transformation!7096 (h!49293 rules!3870)))) (dynLambda!18777 order!23079 lambda!128013))))

(declare-fun Forall!1514 (Int) Bool)

(assert (=> d!1214639 (= (semiInverseModEq!3050 (toChars!9543 (transformation!7096 (h!49293 rules!3870))) (toValue!9684 (transformation!7096 (h!49293 rules!3870)))) (Forall!1514 lambda!128013))))

(declare-fun bs!593284 () Bool)

(assert (= bs!593284 d!1214639))

(declare-fun m!4698181 () Bool)

(assert (=> bs!593284 m!4698181))

(assert (=> d!1214565 d!1214639))

(declare-fun d!1214643 () Bool)

(declare-fun e!2539074 () Bool)

(assert (=> d!1214643 e!2539074))

(declare-fun res!1672272 () Bool)

(assert (=> d!1214643 (=> (not res!1672272) (not e!2539074))))

(declare-fun lt!1463213 () BalanceConc!26208)

(assert (=> d!1214643 (= res!1672272 (= (list!16284 lt!1463213) p!2988))))

(declare-fun fromList!882 (List!43996) Conc!13307)

(assert (=> d!1214643 (= lt!1463213 (BalanceConc!26209 (fromList!882 p!2988)))))

(assert (=> d!1214643 (= (fromListB!2436 p!2988) lt!1463213)))

(declare-fun b!4091336 () Bool)

(declare-fun isBalanced!3703 (Conc!13307) Bool)

(assert (=> b!4091336 (= e!2539074 (isBalanced!3703 (fromList!882 p!2988)))))

(assert (= (and d!1214643 res!1672272) b!4091336))

(declare-fun m!4698213 () Bool)

(assert (=> d!1214643 m!4698213))

(declare-fun m!4698215 () Bool)

(assert (=> d!1214643 m!4698215))

(assert (=> b!4091336 m!4698215))

(assert (=> b!4091336 m!4698215))

(declare-fun m!4698217 () Bool)

(assert (=> b!4091336 m!4698217))

(assert (=> d!1214477 d!1214643))

(declare-fun d!1214659 () Bool)

(declare-fun c!705089 () Bool)

(assert (=> d!1214659 (= c!705089 ((_ is Nil!43873) rules!3870))))

(declare-fun e!2539077 () (InoxSet Rule!13992))

(assert (=> d!1214659 (= (content!6763 rules!3870) e!2539077)))

(declare-fun b!4091341 () Bool)

(assert (=> b!4091341 (= e!2539077 ((as const (Array Rule!13992 Bool)) false))))

(declare-fun b!4091342 () Bool)

(assert (=> b!4091342 (= e!2539077 ((_ map or) (store ((as const (Array Rule!13992 Bool)) false) (h!49293 rules!3870) true) (content!6763 (t!338596 rules!3870))))))

(assert (= (and d!1214659 c!705089) b!4091341))

(assert (= (and d!1214659 (not c!705089)) b!4091342))

(declare-fun m!4698233 () Bool)

(assert (=> b!4091342 m!4698233))

(assert (=> b!4091342 m!4697971))

(assert (=> d!1214553 d!1214659))

(declare-fun d!1214663 () Bool)

(assert (=> d!1214663 true))

(declare-fun lt!1463216 () Bool)

(assert (=> d!1214663 (= lt!1463216 (rulesValidInductive!2625 thiss!26199 rules!3870))))

(declare-fun lambda!128016 () Int)

(declare-fun forall!8412 (List!43997 Int) Bool)

(assert (=> d!1214663 (= lt!1463216 (forall!8412 rules!3870 lambda!128016))))

(assert (=> d!1214663 (= (rulesValid!2784 thiss!26199 rules!3870) lt!1463216)))

(declare-fun bs!593287 () Bool)

(assert (= bs!593287 d!1214663))

(assert (=> bs!593287 m!4697587))

(declare-fun m!4698235 () Bool)

(assert (=> bs!593287 m!4698235))

(assert (=> d!1214549 d!1214663))

(declare-fun bs!593288 () Bool)

(declare-fun d!1214665 () Bool)

(assert (= bs!593288 (and d!1214665 d!1214479)))

(declare-fun lambda!128017 () Int)

(assert (=> bs!593288 (= lambda!128017 lambda!128001)))

(declare-fun bs!593289 () Bool)

(assert (= bs!593289 (and d!1214665 d!1214639)))

(assert (=> bs!593289 (= (and (= (toChars!9543 (transformation!7096 r!4213)) (toChars!9543 (transformation!7096 (h!49293 rules!3870)))) (= (toValue!9684 (transformation!7096 r!4213)) (toValue!9684 (transformation!7096 (h!49293 rules!3870))))) (= lambda!128017 lambda!128013))))

(assert (=> d!1214665 true))

(assert (=> d!1214665 (< (dynLambda!18778 order!23081 (toChars!9543 (transformation!7096 r!4213))) (dynLambda!18777 order!23079 lambda!128017))))

(assert (=> d!1214665 true))

(assert (=> d!1214665 (< (dynLambda!18776 order!23077 (toValue!9684 (transformation!7096 r!4213))) (dynLambda!18777 order!23079 lambda!128017))))

(assert (=> d!1214665 (= (semiInverseModEq!3050 (toChars!9543 (transformation!7096 r!4213)) (toValue!9684 (transformation!7096 r!4213))) (Forall!1514 lambda!128017))))

(declare-fun bs!593290 () Bool)

(assert (= bs!593290 d!1214665))

(declare-fun m!4698237 () Bool)

(assert (=> bs!593290 m!4698237))

(assert (=> d!1214509 d!1214665))

(declare-fun d!1214667 () Bool)

(declare-fun c!705092 () Bool)

(assert (=> d!1214667 (= c!705092 ((_ is Node!13307) (c!705011 (dynLambda!18779 (toChars!9543 (transformation!7096 (rule!10238 lt!1463041))) (value!222888 lt!1463041)))))))

(declare-fun e!2539082 () Bool)

(assert (=> d!1214667 (= (inv!58578 (c!705011 (dynLambda!18779 (toChars!9543 (transformation!7096 (rule!10238 lt!1463041))) (value!222888 lt!1463041)))) e!2539082)))

(declare-fun b!4091351 () Bool)

(declare-fun inv!58580 (Conc!13307) Bool)

(assert (=> b!4091351 (= e!2539082 (inv!58580 (c!705011 (dynLambda!18779 (toChars!9543 (transformation!7096 (rule!10238 lt!1463041))) (value!222888 lt!1463041)))))))

(declare-fun b!4091352 () Bool)

(declare-fun e!2539083 () Bool)

(assert (=> b!4091352 (= e!2539082 e!2539083)))

(declare-fun res!1672275 () Bool)

(assert (=> b!4091352 (= res!1672275 (not ((_ is Leaf!20570) (c!705011 (dynLambda!18779 (toChars!9543 (transformation!7096 (rule!10238 lt!1463041))) (value!222888 lt!1463041))))))))

(assert (=> b!4091352 (=> res!1672275 e!2539083)))

(declare-fun b!4091353 () Bool)

(declare-fun inv!58581 (Conc!13307) Bool)

(assert (=> b!4091353 (= e!2539083 (inv!58581 (c!705011 (dynLambda!18779 (toChars!9543 (transformation!7096 (rule!10238 lt!1463041))) (value!222888 lt!1463041)))))))

(assert (= (and d!1214667 c!705092) b!4091351))

(assert (= (and d!1214667 (not c!705092)) b!4091352))

(assert (= (and b!4091352 (not res!1672275)) b!4091353))

(declare-fun m!4698239 () Bool)

(assert (=> b!4091351 m!4698239))

(declare-fun m!4698241 () Bool)

(assert (=> b!4091353 m!4698241))

(assert (=> b!4090996 d!1214667))

(declare-fun d!1214669 () Bool)

(declare-fun lt!1463217 () Int)

(assert (=> d!1214669 (>= lt!1463217 0)))

(declare-fun e!2539084 () Int)

(assert (=> d!1214669 (= lt!1463217 e!2539084)))

(declare-fun c!705093 () Bool)

(assert (=> d!1214669 (= c!705093 ((_ is Nil!43872) (t!338595 p!2988)))))

(assert (=> d!1214669 (= (size!32771 (t!338595 p!2988)) lt!1463217)))

(declare-fun b!4091354 () Bool)

(assert (=> b!4091354 (= e!2539084 0)))

(declare-fun b!4091355 () Bool)

(assert (=> b!4091355 (= e!2539084 (+ 1 (size!32771 (t!338595 (t!338595 p!2988)))))))

(assert (= (and d!1214669 c!705093) b!4091354))

(assert (= (and d!1214669 (not c!705093)) b!4091355))

(declare-fun m!4698243 () Bool)

(assert (=> b!4091355 m!4698243))

(assert (=> b!4090900 d!1214669))

(declare-fun d!1214671 () Bool)

(declare-fun list!16286 (Conc!13307) List!43996)

(assert (=> d!1214671 (= (list!16284 (dynLambda!18779 (toChars!9543 (transformation!7096 (rule!10238 lt!1463041))) (value!222888 lt!1463041))) (list!16286 (c!705011 (dynLambda!18779 (toChars!9543 (transformation!7096 (rule!10238 lt!1463041))) (value!222888 lt!1463041)))))))

(declare-fun bs!593291 () Bool)

(assert (= bs!593291 d!1214671))

(declare-fun m!4698245 () Bool)

(assert (=> bs!593291 m!4698245))

(assert (=> b!4090993 d!1214671))

(declare-fun d!1214673 () Bool)

(assert (=> d!1214673 (= (isEmpty!26242 (tail!6383 p!2988)) ((_ is Nil!43872) (tail!6383 p!2988)))))

(assert (=> b!4091156 d!1214673))

(declare-fun d!1214675 () Bool)

(assert (=> d!1214675 (= (tail!6383 p!2988) (t!338595 p!2988))))

(assert (=> b!4091156 d!1214675))

(declare-fun bs!593292 () Bool)

(declare-fun d!1214677 () Bool)

(assert (= bs!593292 (and d!1214677 d!1214663)))

(declare-fun lambda!128018 () Int)

(assert (=> bs!593292 (= lambda!128018 lambda!128016)))

(assert (=> d!1214677 true))

(declare-fun lt!1463218 () Bool)

(assert (=> d!1214677 (= lt!1463218 (rulesValidInductive!2625 thiss!26199 (t!338596 rules!3870)))))

(assert (=> d!1214677 (= lt!1463218 (forall!8412 (t!338596 rules!3870) lambda!128018))))

(assert (=> d!1214677 (= (rulesValid!2784 thiss!26199 (t!338596 rules!3870)) lt!1463218)))

(declare-fun bs!593293 () Bool)

(assert (= bs!593293 d!1214677))

(assert (=> bs!593293 m!4697879))

(declare-fun m!4698247 () Bool)

(assert (=> bs!593293 m!4698247))

(assert (=> d!1214543 d!1214677))

(declare-fun d!1214679 () Bool)

(declare-fun c!705094 () Bool)

(assert (=> d!1214679 (= c!705094 ((_ is Node!13307) (c!705011 (dynLambda!18779 (toChars!9543 (transformation!7096 r!4213)) (dynLambda!18780 (toValue!9684 (transformation!7096 r!4213)) lt!1463039)))))))

(declare-fun e!2539085 () Bool)

(assert (=> d!1214679 (= (inv!58578 (c!705011 (dynLambda!18779 (toChars!9543 (transformation!7096 r!4213)) (dynLambda!18780 (toValue!9684 (transformation!7096 r!4213)) lt!1463039)))) e!2539085)))

(declare-fun b!4091356 () Bool)

(assert (=> b!4091356 (= e!2539085 (inv!58580 (c!705011 (dynLambda!18779 (toChars!9543 (transformation!7096 r!4213)) (dynLambda!18780 (toValue!9684 (transformation!7096 r!4213)) lt!1463039)))))))

(declare-fun b!4091357 () Bool)

(declare-fun e!2539086 () Bool)

(assert (=> b!4091357 (= e!2539085 e!2539086)))

(declare-fun res!1672276 () Bool)

(assert (=> b!4091357 (= res!1672276 (not ((_ is Leaf!20570) (c!705011 (dynLambda!18779 (toChars!9543 (transformation!7096 r!4213)) (dynLambda!18780 (toValue!9684 (transformation!7096 r!4213)) lt!1463039))))))))

(assert (=> b!4091357 (=> res!1672276 e!2539086)))

(declare-fun b!4091358 () Bool)

(assert (=> b!4091358 (= e!2539086 (inv!58581 (c!705011 (dynLambda!18779 (toChars!9543 (transformation!7096 r!4213)) (dynLambda!18780 (toValue!9684 (transformation!7096 r!4213)) lt!1463039)))))))

(assert (= (and d!1214679 c!705094) b!4091356))

(assert (= (and d!1214679 (not c!705094)) b!4091357))

(assert (= (and b!4091357 (not res!1672276)) b!4091358))

(declare-fun m!4698249 () Bool)

(assert (=> b!4091356 m!4698249))

(declare-fun m!4698251 () Bool)

(assert (=> b!4091358 m!4698251))

(assert (=> b!4090969 d!1214679))

(declare-fun d!1214681 () Bool)

(assert (=> d!1214681 (= (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463157)))) (list!16286 (c!705011 (charsOf!4856 (_1!24536 (get!14388 lt!1463157))))))))

(declare-fun bs!593294 () Bool)

(assert (= bs!593294 d!1214681))

(declare-fun m!4698253 () Bool)

(assert (=> bs!593294 m!4698253))

(assert (=> b!4091083 d!1214681))

(declare-fun d!1214683 () Bool)

(declare-fun lt!1463221 () BalanceConc!26208)

(assert (=> d!1214683 (= (list!16284 lt!1463221) (originalCharacters!7690 (_1!24536 (get!14388 lt!1463157))))))

(assert (=> d!1214683 (= lt!1463221 (dynLambda!18779 (toChars!9543 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463157))))) (value!222888 (_1!24536 (get!14388 lt!1463157)))))))

(assert (=> d!1214683 (= (charsOf!4856 (_1!24536 (get!14388 lt!1463157))) lt!1463221)))

(declare-fun b_lambda!119917 () Bool)

(assert (=> (not b_lambda!119917) (not d!1214683)))

(declare-fun tb!245891 () Bool)

(declare-fun t!338666 () Bool)

(assert (=> (and b!4090773 (= (toChars!9543 (transformation!7096 r!4213)) (toChars!9543 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463157)))))) t!338666) tb!245891))

(declare-fun b!4091359 () Bool)

(declare-fun e!2539087 () Bool)

(declare-fun tp!1238576 () Bool)

(assert (=> b!4091359 (= e!2539087 (and (inv!58578 (c!705011 (dynLambda!18779 (toChars!9543 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463157))))) (value!222888 (_1!24536 (get!14388 lt!1463157)))))) tp!1238576))))

(declare-fun result!298400 () Bool)

(assert (=> tb!245891 (= result!298400 (and (inv!58579 (dynLambda!18779 (toChars!9543 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463157))))) (value!222888 (_1!24536 (get!14388 lt!1463157))))) e!2539087))))

(assert (= tb!245891 b!4091359))

(declare-fun m!4698255 () Bool)

(assert (=> b!4091359 m!4698255))

(declare-fun m!4698257 () Bool)

(assert (=> tb!245891 m!4698257))

(assert (=> d!1214683 t!338666))

(declare-fun b_and!315253 () Bool)

(assert (= b_and!315207 (and (=> t!338666 result!298400) b_and!315253)))

(declare-fun tb!245893 () Bool)

(declare-fun t!338668 () Bool)

(assert (=> (and b!4090777 (= (toChars!9543 (transformation!7096 (h!49293 rules!3870))) (toChars!9543 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463157)))))) t!338668) tb!245893))

(declare-fun result!298402 () Bool)

(assert (= result!298402 result!298400))

(assert (=> d!1214683 t!338668))

(declare-fun b_and!315255 () Bool)

(assert (= b_and!315209 (and (=> t!338668 result!298402) b_and!315255)))

(declare-fun t!338670 () Bool)

(declare-fun tb!245895 () Bool)

(assert (=> (and b!4091200 (= (toChars!9543 (transformation!7096 (h!49293 (t!338596 rules!3870)))) (toChars!9543 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463157)))))) t!338670) tb!245895))

(declare-fun result!298404 () Bool)

(assert (= result!298404 result!298400))

(assert (=> d!1214683 t!338670))

(declare-fun b_and!315257 () Bool)

(assert (= b_and!315221 (and (=> t!338670 result!298404) b_and!315257)))

(declare-fun m!4698259 () Bool)

(assert (=> d!1214683 m!4698259))

(declare-fun m!4698261 () Bool)

(assert (=> d!1214683 m!4698261))

(assert (=> b!4091083 d!1214683))

(declare-fun d!1214685 () Bool)

(assert (=> d!1214685 (= (get!14388 lt!1463157) (v!39989 lt!1463157))))

(assert (=> b!4091083 d!1214685))

(declare-fun d!1214687 () Bool)

(assert (=> d!1214687 (= (seqFromList!5313 (_1!24538 lt!1463147)) (fromListB!2436 (_1!24538 lt!1463147)))))

(declare-fun bs!593295 () Bool)

(assert (= bs!593295 d!1214687))

(declare-fun m!4698263 () Bool)

(assert (=> bs!593295 m!4698263))

(assert (=> b!4091072 d!1214687))

(declare-fun d!1214689 () Bool)

(assert (=> d!1214689 (= (apply!10279 (transformation!7096 r!4213) (seqFromList!5313 (_1!24538 lt!1463147))) (dynLambda!18780 (toValue!9684 (transformation!7096 r!4213)) (seqFromList!5313 (_1!24538 lt!1463147))))))

(declare-fun b_lambda!119919 () Bool)

(assert (=> (not b_lambda!119919) (not d!1214689)))

(declare-fun t!338672 () Bool)

(declare-fun tb!245897 () Bool)

(assert (=> (and b!4090773 (= (toValue!9684 (transformation!7096 r!4213)) (toValue!9684 (transformation!7096 r!4213))) t!338672) tb!245897))

(declare-fun result!298406 () Bool)

(assert (=> tb!245897 (= result!298406 (inv!21 (dynLambda!18780 (toValue!9684 (transformation!7096 r!4213)) (seqFromList!5313 (_1!24538 lt!1463147)))))))

(declare-fun m!4698265 () Bool)

(assert (=> tb!245897 m!4698265))

(assert (=> d!1214689 t!338672))

(declare-fun b_and!315259 () Bool)

(assert (= b_and!315235 (and (=> t!338672 result!298406) b_and!315259)))

(declare-fun tb!245899 () Bool)

(declare-fun t!338674 () Bool)

(assert (=> (and b!4090777 (= (toValue!9684 (transformation!7096 (h!49293 rules!3870))) (toValue!9684 (transformation!7096 r!4213))) t!338674) tb!245899))

(declare-fun result!298408 () Bool)

(assert (= result!298408 result!298406))

(assert (=> d!1214689 t!338674))

(declare-fun b_and!315261 () Bool)

(assert (= b_and!315237 (and (=> t!338674 result!298408) b_and!315261)))

(declare-fun tb!245901 () Bool)

(declare-fun t!338676 () Bool)

(assert (=> (and b!4091200 (= (toValue!9684 (transformation!7096 (h!49293 (t!338596 rules!3870)))) (toValue!9684 (transformation!7096 r!4213))) t!338676) tb!245901))

(declare-fun result!298410 () Bool)

(assert (= result!298410 result!298406))

(assert (=> d!1214689 t!338676))

(declare-fun b_and!315263 () Bool)

(assert (= b_and!315239 (and (=> t!338676 result!298410) b_and!315263)))

(assert (=> d!1214689 m!4697847))

(declare-fun m!4698267 () Bool)

(assert (=> d!1214689 m!4698267))

(assert (=> b!4091072 d!1214689))

(declare-fun bs!593296 () Bool)

(declare-fun d!1214691 () Bool)

(assert (= bs!593296 (and d!1214691 d!1214479)))

(declare-fun lambda!128019 () Int)

(assert (=> bs!593296 (= lambda!128019 lambda!128001)))

(declare-fun bs!593297 () Bool)

(assert (= bs!593297 (and d!1214691 d!1214639)))

(assert (=> bs!593297 (= (and (= (toChars!9543 (transformation!7096 r!4213)) (toChars!9543 (transformation!7096 (h!49293 rules!3870)))) (= (toValue!9684 (transformation!7096 r!4213)) (toValue!9684 (transformation!7096 (h!49293 rules!3870))))) (= lambda!128019 lambda!128013))))

(declare-fun bs!593298 () Bool)

(assert (= bs!593298 (and d!1214691 d!1214665)))

(assert (=> bs!593298 (= lambda!128019 lambda!128017)))

(declare-fun b!4091360 () Bool)

(declare-fun e!2539089 () Bool)

(assert (=> b!4091360 (= e!2539089 true)))

(assert (=> d!1214691 e!2539089))

(assert (= d!1214691 b!4091360))

(assert (=> b!4091360 (< (dynLambda!18776 order!23077 (toValue!9684 (transformation!7096 r!4213))) (dynLambda!18777 order!23079 lambda!128019))))

(assert (=> b!4091360 (< (dynLambda!18778 order!23081 (toChars!9543 (transformation!7096 r!4213))) (dynLambda!18777 order!23079 lambda!128019))))

(assert (=> d!1214691 (= (list!16284 (dynLambda!18779 (toChars!9543 (transformation!7096 r!4213)) (dynLambda!18780 (toValue!9684 (transformation!7096 r!4213)) (seqFromList!5313 (_1!24538 lt!1463147))))) (list!16284 (seqFromList!5313 (_1!24538 lt!1463147))))))

(declare-fun lt!1463222 () Unit!63391)

(assert (=> d!1214691 (= lt!1463222 (ForallOf!889 lambda!128019 (seqFromList!5313 (_1!24538 lt!1463147))))))

(assert (=> d!1214691 (= (lemmaSemiInverse!2063 (transformation!7096 r!4213) (seqFromList!5313 (_1!24538 lt!1463147))) lt!1463222)))

(declare-fun b_lambda!119921 () Bool)

(assert (=> (not b_lambda!119921) (not d!1214691)))

(declare-fun t!338678 () Bool)

(declare-fun tb!245903 () Bool)

(assert (=> (and b!4090773 (= (toChars!9543 (transformation!7096 r!4213)) (toChars!9543 (transformation!7096 r!4213))) t!338678) tb!245903))

(declare-fun e!2539090 () Bool)

(declare-fun b!4091361 () Bool)

(declare-fun tp!1238577 () Bool)

(assert (=> b!4091361 (= e!2539090 (and (inv!58578 (c!705011 (dynLambda!18779 (toChars!9543 (transformation!7096 r!4213)) (dynLambda!18780 (toValue!9684 (transformation!7096 r!4213)) (seqFromList!5313 (_1!24538 lt!1463147)))))) tp!1238577))))

(declare-fun result!298412 () Bool)

(assert (=> tb!245903 (= result!298412 (and (inv!58579 (dynLambda!18779 (toChars!9543 (transformation!7096 r!4213)) (dynLambda!18780 (toValue!9684 (transformation!7096 r!4213)) (seqFromList!5313 (_1!24538 lt!1463147))))) e!2539090))))

(assert (= tb!245903 b!4091361))

(declare-fun m!4698269 () Bool)

(assert (=> b!4091361 m!4698269))

(declare-fun m!4698271 () Bool)

(assert (=> tb!245903 m!4698271))

(assert (=> d!1214691 t!338678))

(declare-fun b_and!315265 () Bool)

(assert (= b_and!315253 (and (=> t!338678 result!298412) b_and!315265)))

(declare-fun tb!245905 () Bool)

(declare-fun t!338680 () Bool)

(assert (=> (and b!4090777 (= (toChars!9543 (transformation!7096 (h!49293 rules!3870))) (toChars!9543 (transformation!7096 r!4213))) t!338680) tb!245905))

(declare-fun result!298414 () Bool)

(assert (= result!298414 result!298412))

(assert (=> d!1214691 t!338680))

(declare-fun b_and!315267 () Bool)

(assert (= b_and!315255 (and (=> t!338680 result!298414) b_and!315267)))

(declare-fun tb!245907 () Bool)

(declare-fun t!338682 () Bool)

(assert (=> (and b!4091200 (= (toChars!9543 (transformation!7096 (h!49293 (t!338596 rules!3870)))) (toChars!9543 (transformation!7096 r!4213))) t!338682) tb!245907))

(declare-fun result!298416 () Bool)

(assert (= result!298416 result!298412))

(assert (=> d!1214691 t!338682))

(declare-fun b_and!315269 () Bool)

(assert (= b_and!315257 (and (=> t!338682 result!298416) b_and!315269)))

(declare-fun b_lambda!119923 () Bool)

(assert (=> (not b_lambda!119923) (not d!1214691)))

(assert (=> d!1214691 t!338672))

(declare-fun b_and!315271 () Bool)

(assert (= b_and!315259 (and (=> t!338672 result!298406) b_and!315271)))

(assert (=> d!1214691 t!338674))

(declare-fun b_and!315273 () Bool)

(assert (= b_and!315261 (and (=> t!338674 result!298408) b_and!315273)))

(assert (=> d!1214691 t!338676))

(declare-fun b_and!315275 () Bool)

(assert (= b_and!315263 (and (=> t!338676 result!298410) b_and!315275)))

(assert (=> d!1214691 m!4697847))

(declare-fun m!4698273 () Bool)

(assert (=> d!1214691 m!4698273))

(assert (=> d!1214691 m!4697847))

(assert (=> d!1214691 m!4698267))

(declare-fun m!4698275 () Bool)

(assert (=> d!1214691 m!4698275))

(declare-fun m!4698277 () Bool)

(assert (=> d!1214691 m!4698277))

(assert (=> d!1214691 m!4698267))

(assert (=> d!1214691 m!4698275))

(assert (=> d!1214691 m!4697847))

(declare-fun m!4698279 () Bool)

(assert (=> d!1214691 m!4698279))

(assert (=> b!4091072 d!1214691))

(declare-fun d!1214693 () Bool)

(assert (=> d!1214693 (= (isEmpty!26242 (_1!24538 (findLongestMatchInner!1462 (regex!7096 r!4213) Nil!43872 (size!32771 Nil!43872) input!3411 input!3411 (size!32771 input!3411)))) ((_ is Nil!43872) (_1!24538 (findLongestMatchInner!1462 (regex!7096 r!4213) Nil!43872 (size!32771 Nil!43872) input!3411 input!3411 (size!32771 input!3411)))))))

(assert (=> b!4091072 d!1214693))

(declare-fun d!1214695 () Bool)

(declare-fun lt!1463223 () Int)

(assert (=> d!1214695 (>= lt!1463223 0)))

(declare-fun e!2539091 () Int)

(assert (=> d!1214695 (= lt!1463223 e!2539091)))

(declare-fun c!705095 () Bool)

(assert (=> d!1214695 (= c!705095 ((_ is Nil!43872) input!3411))))

(assert (=> d!1214695 (= (size!32771 input!3411) lt!1463223)))

(declare-fun b!4091362 () Bool)

(assert (=> b!4091362 (= e!2539091 0)))

(declare-fun b!4091363 () Bool)

(assert (=> b!4091363 (= e!2539091 (+ 1 (size!32771 (t!338595 input!3411))))))

(assert (= (and d!1214695 c!705095) b!4091362))

(assert (= (and d!1214695 (not c!705095)) b!4091363))

(declare-fun m!4698281 () Bool)

(assert (=> b!4091363 m!4698281))

(assert (=> b!4091072 d!1214695))

(declare-fun d!1214697 () Bool)

(declare-fun lt!1463224 () Int)

(assert (=> d!1214697 (>= lt!1463224 0)))

(declare-fun e!2539092 () Int)

(assert (=> d!1214697 (= lt!1463224 e!2539092)))

(declare-fun c!705096 () Bool)

(assert (=> d!1214697 (= c!705096 ((_ is Nil!43872) Nil!43872))))

(assert (=> d!1214697 (= (size!32771 Nil!43872) lt!1463224)))

(declare-fun b!4091364 () Bool)

(assert (=> b!4091364 (= e!2539092 0)))

(declare-fun b!4091365 () Bool)

(assert (=> b!4091365 (= e!2539092 (+ 1 (size!32771 (t!338595 Nil!43872))))))

(assert (= (and d!1214697 c!705096) b!4091364))

(assert (= (and d!1214697 (not c!705096)) b!4091365))

(declare-fun m!4698283 () Bool)

(assert (=> b!4091365 m!4698283))

(assert (=> b!4091072 d!1214697))

(declare-fun d!1214699 () Bool)

(declare-fun e!2539095 () Bool)

(assert (=> d!1214699 e!2539095))

(declare-fun res!1672279 () Bool)

(assert (=> d!1214699 (=> res!1672279 e!2539095)))

(assert (=> d!1214699 (= res!1672279 (isEmpty!26242 (_1!24538 (findLongestMatchInner!1462 (regex!7096 r!4213) Nil!43872 (size!32771 Nil!43872) input!3411 input!3411 (size!32771 input!3411)))))))

(declare-fun lt!1463227 () Unit!63391)

(declare-fun choose!24991 (Regex!12001 List!43996) Unit!63391)

(assert (=> d!1214699 (= lt!1463227 (choose!24991 (regex!7096 r!4213) input!3411))))

(assert (=> d!1214699 (validRegex!5438 (regex!7096 r!4213))))

(assert (=> d!1214699 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1435 (regex!7096 r!4213) input!3411) lt!1463227)))

(declare-fun b!4091368 () Bool)

(assert (=> b!4091368 (= e!2539095 (matchR!5942 (regex!7096 r!4213) (_1!24538 (findLongestMatchInner!1462 (regex!7096 r!4213) Nil!43872 (size!32771 Nil!43872) input!3411 input!3411 (size!32771 input!3411)))))))

(assert (= (and d!1214699 (not res!1672279)) b!4091368))

(declare-fun m!4698285 () Bool)

(assert (=> d!1214699 m!4698285))

(assert (=> d!1214699 m!4697837))

(assert (=> d!1214699 m!4697845))

(assert (=> d!1214699 m!4697981))

(assert (=> d!1214699 m!4697837))

(assert (=> d!1214699 m!4697593))

(assert (=> d!1214699 m!4697839))

(assert (=> d!1214699 m!4697593))

(assert (=> b!4091368 m!4697837))

(assert (=> b!4091368 m!4697593))

(assert (=> b!4091368 m!4697837))

(assert (=> b!4091368 m!4697593))

(assert (=> b!4091368 m!4697839))

(assert (=> b!4091368 m!4697841))

(assert (=> b!4091072 d!1214699))

(declare-fun b!4091492 () Bool)

(declare-fun e!2539168 () tuple2!42808)

(declare-fun call!289166 () tuple2!42808)

(assert (=> b!4091492 (= e!2539168 call!289166)))

(declare-fun b!4091493 () Bool)

(declare-fun e!2539169 () tuple2!42808)

(declare-fun e!2539167 () tuple2!42808)

(assert (=> b!4091493 (= e!2539169 e!2539167)))

(declare-fun c!705151 () Bool)

(assert (=> b!4091493 (= c!705151 (= (size!32771 Nil!43872) (size!32771 input!3411)))))

(declare-fun call!289168 () Regex!12001)

(declare-fun call!289172 () List!43996)

(declare-fun bm!289160 () Bool)

(declare-fun lt!1463394 () List!43996)

(assert (=> bm!289160 (= call!289166 (findLongestMatchInner!1462 call!289168 lt!1463394 (+ (size!32771 Nil!43872) 1) call!289172 input!3411 (size!32771 input!3411)))))

(declare-fun b!4091494 () Bool)

(declare-fun e!2539170 () Unit!63391)

(declare-fun Unit!63393 () Unit!63391)

(assert (=> b!4091494 (= e!2539170 Unit!63393)))

(declare-fun lt!1463378 () Unit!63391)

(declare-fun call!289169 () Unit!63391)

(assert (=> b!4091494 (= lt!1463378 call!289169)))

(declare-fun call!289170 () Bool)

(assert (=> b!4091494 call!289170))

(declare-fun lt!1463400 () Unit!63391)

(assert (=> b!4091494 (= lt!1463400 lt!1463378)))

(declare-fun lt!1463399 () Unit!63391)

(declare-fun call!289165 () Unit!63391)

(assert (=> b!4091494 (= lt!1463399 call!289165)))

(assert (=> b!4091494 (= input!3411 Nil!43872)))

(declare-fun lt!1463385 () Unit!63391)

(assert (=> b!4091494 (= lt!1463385 lt!1463399)))

(assert (=> b!4091494 false))

(declare-fun bm!289161 () Bool)

(assert (=> bm!289161 (= call!289172 (tail!6383 input!3411))))

(declare-fun b!4091495 () Bool)

(declare-fun e!2539166 () tuple2!42808)

(declare-fun lt!1463397 () tuple2!42808)

(assert (=> b!4091495 (= e!2539166 lt!1463397)))

(declare-fun b!4091496 () Bool)

(assert (=> b!4091496 (= e!2539166 (tuple2!42809 Nil!43872 input!3411))))

(declare-fun bm!289162 () Bool)

(assert (=> bm!289162 (= call!289169 (lemmaIsPrefixRefl!2694 input!3411 input!3411))))

(declare-fun b!4091497 () Bool)

(assert (=> b!4091497 (= e!2539169 (tuple2!42809 Nil!43872 input!3411))))

(declare-fun b!4091498 () Bool)

(declare-fun e!2539165 () Bool)

(declare-fun e!2539171 () Bool)

(assert (=> b!4091498 (= e!2539165 e!2539171)))

(declare-fun res!1672302 () Bool)

(assert (=> b!4091498 (=> res!1672302 e!2539171)))

(declare-fun lt!1463392 () tuple2!42808)

(assert (=> b!4091498 (= res!1672302 (isEmpty!26242 (_1!24538 lt!1463392)))))

(declare-fun b!4091499 () Bool)

(declare-fun e!2539164 () tuple2!42808)

(assert (=> b!4091499 (= e!2539164 (tuple2!42809 Nil!43872 Nil!43872))))

(declare-fun b!4091500 () Bool)

(assert (=> b!4091500 (= e!2539164 (tuple2!42809 Nil!43872 input!3411))))

(declare-fun bm!289164 () Bool)

(assert (=> bm!289164 (= call!289170 (isPrefix!4143 input!3411 input!3411))))

(declare-fun bm!289165 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!964 (List!43996 List!43996 List!43996) Unit!63391)

(assert (=> bm!289165 (= call!289165 (lemmaIsPrefixSameLengthThenSameList!964 input!3411 Nil!43872 input!3411))))

(declare-fun bm!289166 () Bool)

(declare-fun call!289171 () Bool)

(assert (=> bm!289166 (= call!289171 (nullable!4238 (regex!7096 r!4213)))))

(declare-fun bm!289167 () Bool)

(declare-fun call!289167 () C!24188)

(assert (=> bm!289167 (= call!289168 (derivativeStep!3639 (regex!7096 r!4213) call!289167))))

(declare-fun b!4091501 () Bool)

(declare-fun c!705149 () Bool)

(assert (=> b!4091501 (= c!705149 call!289171)))

(declare-fun lt!1463382 () Unit!63391)

(declare-fun lt!1463387 () Unit!63391)

(assert (=> b!4091501 (= lt!1463382 lt!1463387)))

(declare-fun lt!1463377 () C!24188)

(declare-fun lt!1463401 () List!43996)

(assert (=> b!4091501 (= (++!11502 (++!11502 Nil!43872 (Cons!43872 lt!1463377 Nil!43872)) lt!1463401) input!3411)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1270 (List!43996 C!24188 List!43996 List!43996) Unit!63391)

(assert (=> b!4091501 (= lt!1463387 (lemmaMoveElementToOtherListKeepsConcatEq!1270 Nil!43872 lt!1463377 lt!1463401 input!3411))))

(assert (=> b!4091501 (= lt!1463401 (tail!6383 input!3411))))

(assert (=> b!4091501 (= lt!1463377 (head!8649 input!3411))))

(declare-fun lt!1463375 () Unit!63391)

(declare-fun lt!1463389 () Unit!63391)

(assert (=> b!4091501 (= lt!1463375 lt!1463389)))

(declare-fun getSuffix!2499 (List!43996 List!43996) List!43996)

(assert (=> b!4091501 (isPrefix!4143 (++!11502 Nil!43872 (Cons!43872 (head!8649 (getSuffix!2499 input!3411 Nil!43872)) Nil!43872)) input!3411)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!652 (List!43996 List!43996) Unit!63391)

(assert (=> b!4091501 (= lt!1463389 (lemmaAddHeadSuffixToPrefixStillPrefix!652 Nil!43872 input!3411))))

(declare-fun lt!1463388 () Unit!63391)

(declare-fun lt!1463383 () Unit!63391)

(assert (=> b!4091501 (= lt!1463388 lt!1463383)))

(assert (=> b!4091501 (= lt!1463383 (lemmaAddHeadSuffixToPrefixStillPrefix!652 Nil!43872 input!3411))))

(assert (=> b!4091501 (= lt!1463394 (++!11502 Nil!43872 (Cons!43872 (head!8649 input!3411) Nil!43872)))))

(declare-fun lt!1463402 () Unit!63391)

(assert (=> b!4091501 (= lt!1463402 e!2539170)))

(declare-fun c!705152 () Bool)

(assert (=> b!4091501 (= c!705152 (= (size!32771 Nil!43872) (size!32771 input!3411)))))

(declare-fun lt!1463379 () Unit!63391)

(declare-fun lt!1463395 () Unit!63391)

(assert (=> b!4091501 (= lt!1463379 lt!1463395)))

(assert (=> b!4091501 (<= (size!32771 Nil!43872) (size!32771 input!3411))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!460 (List!43996 List!43996) Unit!63391)

(assert (=> b!4091501 (= lt!1463395 (lemmaIsPrefixThenSmallerEqSize!460 Nil!43872 input!3411))))

(assert (=> b!4091501 (= e!2539167 e!2539168)))

(declare-fun d!1214701 () Bool)

(assert (=> d!1214701 e!2539165))

(declare-fun res!1672301 () Bool)

(assert (=> d!1214701 (=> (not res!1672301) (not e!2539165))))

(assert (=> d!1214701 (= res!1672301 (= (++!11502 (_1!24538 lt!1463392) (_2!24538 lt!1463392)) input!3411))))

(assert (=> d!1214701 (= lt!1463392 e!2539169)))

(declare-fun c!705150 () Bool)

(declare-fun lostCause!1026 (Regex!12001) Bool)

(assert (=> d!1214701 (= c!705150 (lostCause!1026 (regex!7096 r!4213)))))

(declare-fun lt!1463391 () Unit!63391)

(declare-fun Unit!63394 () Unit!63391)

(assert (=> d!1214701 (= lt!1463391 Unit!63394)))

(assert (=> d!1214701 (= (getSuffix!2499 input!3411 Nil!43872) input!3411)))

(declare-fun lt!1463376 () Unit!63391)

(declare-fun lt!1463393 () Unit!63391)

(assert (=> d!1214701 (= lt!1463376 lt!1463393)))

(declare-fun lt!1463380 () List!43996)

(assert (=> d!1214701 (= input!3411 lt!1463380)))

(declare-fun lemmaSamePrefixThenSameSuffix!2243 (List!43996 List!43996 List!43996 List!43996 List!43996) Unit!63391)

(assert (=> d!1214701 (= lt!1463393 (lemmaSamePrefixThenSameSuffix!2243 Nil!43872 input!3411 Nil!43872 lt!1463380 input!3411))))

(assert (=> d!1214701 (= lt!1463380 (getSuffix!2499 input!3411 Nil!43872))))

(declare-fun lt!1463386 () Unit!63391)

(declare-fun lt!1463381 () Unit!63391)

(assert (=> d!1214701 (= lt!1463386 lt!1463381)))

(assert (=> d!1214701 (isPrefix!4143 Nil!43872 (++!11502 Nil!43872 input!3411))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2917 (List!43996 List!43996) Unit!63391)

(assert (=> d!1214701 (= lt!1463381 (lemmaConcatTwoListThenFirstIsPrefix!2917 Nil!43872 input!3411))))

(assert (=> d!1214701 (validRegex!5438 (regex!7096 r!4213))))

(assert (=> d!1214701 (= (findLongestMatchInner!1462 (regex!7096 r!4213) Nil!43872 (size!32771 Nil!43872) input!3411 input!3411 (size!32771 input!3411)) lt!1463392)))

(declare-fun bm!289163 () Bool)

(assert (=> bm!289163 (= call!289167 (head!8649 input!3411))))

(declare-fun b!4091502 () Bool)

(assert (=> b!4091502 (= e!2539168 e!2539166)))

(assert (=> b!4091502 (= lt!1463397 call!289166)))

(declare-fun c!705153 () Bool)

(assert (=> b!4091502 (= c!705153 (isEmpty!26242 (_1!24538 lt!1463397)))))

(declare-fun b!4091503 () Bool)

(declare-fun Unit!63395 () Unit!63391)

(assert (=> b!4091503 (= e!2539170 Unit!63395)))

(declare-fun b!4091504 () Bool)

(assert (=> b!4091504 (= e!2539171 (>= (size!32771 (_1!24538 lt!1463392)) (size!32771 Nil!43872)))))

(declare-fun b!4091505 () Bool)

(declare-fun c!705148 () Bool)

(assert (=> b!4091505 (= c!705148 call!289171)))

(declare-fun lt!1463384 () Unit!63391)

(declare-fun lt!1463398 () Unit!63391)

(assert (=> b!4091505 (= lt!1463384 lt!1463398)))

(assert (=> b!4091505 (= input!3411 Nil!43872)))

(assert (=> b!4091505 (= lt!1463398 call!289165)))

(declare-fun lt!1463396 () Unit!63391)

(declare-fun lt!1463390 () Unit!63391)

(assert (=> b!4091505 (= lt!1463396 lt!1463390)))

(assert (=> b!4091505 call!289170))

(assert (=> b!4091505 (= lt!1463390 call!289169)))

(assert (=> b!4091505 (= e!2539167 e!2539164)))

(assert (= (and d!1214701 c!705150) b!4091497))

(assert (= (and d!1214701 (not c!705150)) b!4091493))

(assert (= (and b!4091493 c!705151) b!4091505))

(assert (= (and b!4091493 (not c!705151)) b!4091501))

(assert (= (and b!4091505 c!705148) b!4091499))

(assert (= (and b!4091505 (not c!705148)) b!4091500))

(assert (= (and b!4091501 c!705152) b!4091494))

(assert (= (and b!4091501 (not c!705152)) b!4091503))

(assert (= (and b!4091501 c!705149) b!4091502))

(assert (= (and b!4091501 (not c!705149)) b!4091492))

(assert (= (and b!4091502 c!705153) b!4091496))

(assert (= (and b!4091502 (not c!705153)) b!4091495))

(assert (= (or b!4091502 b!4091492) bm!289163))

(assert (= (or b!4091502 b!4091492) bm!289161))

(assert (= (or b!4091502 b!4091492) bm!289167))

(assert (= (or b!4091502 b!4091492) bm!289160))

(assert (= (or b!4091505 b!4091494) bm!289164))

(assert (= (or b!4091505 b!4091494) bm!289162))

(assert (= (or b!4091505 b!4091501) bm!289166))

(assert (= (or b!4091505 b!4091494) bm!289165))

(assert (= (and d!1214701 res!1672301) b!4091498))

(assert (= (and b!4091498 (not res!1672302)) b!4091504))

(declare-fun m!4698371 () Bool)

(assert (=> bm!289167 m!4698371))

(declare-fun m!4698373 () Bool)

(assert (=> b!4091502 m!4698373))

(assert (=> b!4091501 m!4697837))

(assert (=> b!4091501 m!4697593))

(declare-fun m!4698375 () Bool)

(assert (=> b!4091501 m!4698375))

(assert (=> b!4091501 m!4698375))

(declare-fun m!4698377 () Bool)

(assert (=> b!4091501 m!4698377))

(declare-fun m!4698379 () Bool)

(assert (=> b!4091501 m!4698379))

(declare-fun m!4698381 () Bool)

(assert (=> b!4091501 m!4698381))

(assert (=> b!4091501 m!4698379))

(declare-fun m!4698383 () Bool)

(assert (=> b!4091501 m!4698383))

(declare-fun m!4698385 () Bool)

(assert (=> b!4091501 m!4698385))

(declare-fun m!4698387 () Bool)

(assert (=> b!4091501 m!4698387))

(declare-fun m!4698389 () Bool)

(assert (=> b!4091501 m!4698389))

(declare-fun m!4698391 () Bool)

(assert (=> b!4091501 m!4698391))

(assert (=> b!4091501 m!4698385))

(declare-fun m!4698393 () Bool)

(assert (=> b!4091501 m!4698393))

(declare-fun m!4698395 () Bool)

(assert (=> b!4091501 m!4698395))

(declare-fun m!4698397 () Bool)

(assert (=> b!4091501 m!4698397))

(declare-fun m!4698399 () Bool)

(assert (=> d!1214701 m!4698399))

(declare-fun m!4698401 () Bool)

(assert (=> d!1214701 m!4698401))

(declare-fun m!4698403 () Bool)

(assert (=> d!1214701 m!4698403))

(assert (=> d!1214701 m!4697981))

(declare-fun m!4698405 () Bool)

(assert (=> d!1214701 m!4698405))

(assert (=> d!1214701 m!4698375))

(declare-fun m!4698407 () Bool)

(assert (=> d!1214701 m!4698407))

(assert (=> d!1214701 m!4698405))

(declare-fun m!4698409 () Bool)

(assert (=> d!1214701 m!4698409))

(assert (=> bm!289161 m!4698391))

(assert (=> bm!289164 m!4697583))

(assert (=> bm!289160 m!4697593))

(declare-fun m!4698411 () Bool)

(assert (=> bm!289160 m!4698411))

(assert (=> bm!289163 m!4698389))

(declare-fun m!4698413 () Bool)

(assert (=> b!4091504 m!4698413))

(assert (=> b!4091504 m!4697837))

(declare-fun m!4698415 () Bool)

(assert (=> b!4091498 m!4698415))

(declare-fun m!4698417 () Bool)

(assert (=> bm!289165 m!4698417))

(assert (=> bm!289166 m!4697983))

(assert (=> bm!289162 m!4697585))

(assert (=> b!4091072 d!1214701))

(declare-fun d!1214725 () Bool)

(declare-fun lt!1463405 () Int)

(assert (=> d!1214725 (= lt!1463405 (size!32771 (list!16284 (seqFromList!5313 (_1!24538 lt!1463147)))))))

(declare-fun size!32774 (Conc!13307) Int)

(assert (=> d!1214725 (= lt!1463405 (size!32774 (c!705011 (seqFromList!5313 (_1!24538 lt!1463147)))))))

(assert (=> d!1214725 (= (size!32773 (seqFromList!5313 (_1!24538 lt!1463147))) lt!1463405)))

(declare-fun bs!593300 () Bool)

(assert (= bs!593300 d!1214725))

(assert (=> bs!593300 m!4697847))

(assert (=> bs!593300 m!4698273))

(assert (=> bs!593300 m!4698273))

(declare-fun m!4698419 () Bool)

(assert (=> bs!593300 m!4698419))

(declare-fun m!4698421 () Bool)

(assert (=> bs!593300 m!4698421))

(assert (=> b!4091072 d!1214725))

(assert (=> d!1214561 d!1214559))

(declare-fun d!1214727 () Bool)

(assert (=> d!1214727 (ruleValid!3016 thiss!26199 r!4213)))

(assert (=> d!1214727 true))

(declare-fun _$65!1573 () Unit!63391)

(assert (=> d!1214727 (= (choose!24987 thiss!26199 r!4213 rules!3870) _$65!1573)))

(declare-fun bs!593302 () Bool)

(assert (= bs!593302 d!1214727))

(assert (=> bs!593302 m!4697485))

(assert (=> d!1214561 d!1214727))

(assert (=> d!1214561 d!1214553))

(declare-fun bm!289174 () Bool)

(declare-fun call!289180 () Bool)

(declare-fun call!289181 () Bool)

(assert (=> bm!289174 (= call!289180 call!289181)))

(declare-fun b!4091528 () Bool)

(declare-fun e!2539195 () Bool)

(assert (=> b!4091528 (= e!2539195 call!289180)))

(declare-fun c!705159 () Bool)

(declare-fun c!705158 () Bool)

(declare-fun bm!289175 () Bool)

(assert (=> bm!289175 (= call!289181 (validRegex!5438 (ite c!705159 (reg!12330 (regex!7096 r!4213)) (ite c!705158 (regTwo!24515 (regex!7096 r!4213)) (regTwo!24514 (regex!7096 r!4213))))))))

(declare-fun b!4091529 () Bool)

(declare-fun e!2539193 () Bool)

(declare-fun e!2539197 () Bool)

(assert (=> b!4091529 (= e!2539193 e!2539197)))

(assert (=> b!4091529 (= c!705159 ((_ is Star!12001) (regex!7096 r!4213)))))

(declare-fun b!4091530 () Bool)

(declare-fun e!2539198 () Bool)

(assert (=> b!4091530 (= e!2539198 call!289181)))

(declare-fun b!4091531 () Bool)

(declare-fun e!2539194 () Bool)

(declare-fun e!2539196 () Bool)

(assert (=> b!4091531 (= e!2539194 e!2539196)))

(declare-fun res!1672319 () Bool)

(assert (=> b!4091531 (=> (not res!1672319) (not e!2539196))))

(declare-fun call!289179 () Bool)

(assert (=> b!4091531 (= res!1672319 call!289179)))

(declare-fun b!4091532 () Bool)

(declare-fun res!1672317 () Bool)

(assert (=> b!4091532 (=> (not res!1672317) (not e!2539195))))

(assert (=> b!4091532 (= res!1672317 call!289179)))

(declare-fun e!2539192 () Bool)

(assert (=> b!4091532 (= e!2539192 e!2539195)))

(declare-fun b!4091533 () Bool)

(assert (=> b!4091533 (= e!2539197 e!2539192)))

(assert (=> b!4091533 (= c!705158 ((_ is Union!12001) (regex!7096 r!4213)))))

(declare-fun b!4091534 () Bool)

(assert (=> b!4091534 (= e!2539197 e!2539198)))

(declare-fun res!1672315 () Bool)

(assert (=> b!4091534 (= res!1672315 (not (nullable!4238 (reg!12330 (regex!7096 r!4213)))))))

(assert (=> b!4091534 (=> (not res!1672315) (not e!2539198))))

(declare-fun bm!289176 () Bool)

(assert (=> bm!289176 (= call!289179 (validRegex!5438 (ite c!705158 (regOne!24515 (regex!7096 r!4213)) (regOne!24514 (regex!7096 r!4213)))))))

(declare-fun d!1214733 () Bool)

(declare-fun res!1672318 () Bool)

(assert (=> d!1214733 (=> res!1672318 e!2539193)))

(assert (=> d!1214733 (= res!1672318 ((_ is ElementMatch!12001) (regex!7096 r!4213)))))

(assert (=> d!1214733 (= (validRegex!5438 (regex!7096 r!4213)) e!2539193)))

(declare-fun b!4091535 () Bool)

(assert (=> b!4091535 (= e!2539196 call!289180)))

(declare-fun b!4091536 () Bool)

(declare-fun res!1672316 () Bool)

(assert (=> b!4091536 (=> res!1672316 e!2539194)))

(assert (=> b!4091536 (= res!1672316 (not ((_ is Concat!19328) (regex!7096 r!4213))))))

(assert (=> b!4091536 (= e!2539192 e!2539194)))

(assert (= (and d!1214733 (not res!1672318)) b!4091529))

(assert (= (and b!4091529 c!705159) b!4091534))

(assert (= (and b!4091529 (not c!705159)) b!4091533))

(assert (= (and b!4091534 res!1672315) b!4091530))

(assert (= (and b!4091533 c!705158) b!4091532))

(assert (= (and b!4091533 (not c!705158)) b!4091536))

(assert (= (and b!4091532 res!1672317) b!4091528))

(assert (= (and b!4091536 (not res!1672316)) b!4091531))

(assert (= (and b!4091531 res!1672319) b!4091535))

(assert (= (or b!4091528 b!4091535) bm!289174))

(assert (= (or b!4091532 b!4091531) bm!289176))

(assert (= (or b!4091530 bm!289174) bm!289175))

(declare-fun m!4698447 () Bool)

(assert (=> bm!289175 m!4698447))

(declare-fun m!4698449 () Bool)

(assert (=> b!4091534 m!4698449))

(declare-fun m!4698451 () Bool)

(assert (=> bm!289176 m!4698451))

(assert (=> d!1214559 d!1214733))

(declare-fun d!1214745 () Bool)

(declare-fun e!2539199 () Bool)

(assert (=> d!1214745 e!2539199))

(declare-fun res!1672320 () Bool)

(assert (=> d!1214745 (=> (not res!1672320) (not e!2539199))))

(declare-fun lt!1463411 () List!43996)

(assert (=> d!1214745 (= res!1672320 (= (content!6762 lt!1463411) ((_ map or) (content!6762 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463157))))) (content!6762 (_2!24536 (get!14388 lt!1463157))))))))

(declare-fun e!2539200 () List!43996)

(assert (=> d!1214745 (= lt!1463411 e!2539200)))

(declare-fun c!705160 () Bool)

(assert (=> d!1214745 (= c!705160 ((_ is Nil!43872) (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463157))))))))

(assert (=> d!1214745 (= (++!11502 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463157)))) (_2!24536 (get!14388 lt!1463157))) lt!1463411)))

(declare-fun b!4091539 () Bool)

(declare-fun res!1672321 () Bool)

(assert (=> b!4091539 (=> (not res!1672321) (not e!2539199))))

(assert (=> b!4091539 (= res!1672321 (= (size!32771 lt!1463411) (+ (size!32771 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463157))))) (size!32771 (_2!24536 (get!14388 lt!1463157))))))))

(declare-fun b!4091540 () Bool)

(assert (=> b!4091540 (= e!2539199 (or (not (= (_2!24536 (get!14388 lt!1463157)) Nil!43872)) (= lt!1463411 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463157)))))))))

(declare-fun b!4091538 () Bool)

(assert (=> b!4091538 (= e!2539200 (Cons!43872 (h!49292 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463157))))) (++!11502 (t!338595 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463157))))) (_2!24536 (get!14388 lt!1463157)))))))

(declare-fun b!4091537 () Bool)

(assert (=> b!4091537 (= e!2539200 (_2!24536 (get!14388 lt!1463157)))))

(assert (= (and d!1214745 c!705160) b!4091537))

(assert (= (and d!1214745 (not c!705160)) b!4091538))

(assert (= (and d!1214745 res!1672320) b!4091539))

(assert (= (and b!4091539 res!1672321) b!4091540))

(declare-fun m!4698457 () Bool)

(assert (=> d!1214745 m!4698457))

(assert (=> d!1214745 m!4697887))

(declare-fun m!4698459 () Bool)

(assert (=> d!1214745 m!4698459))

(declare-fun m!4698461 () Bool)

(assert (=> d!1214745 m!4698461))

(declare-fun m!4698463 () Bool)

(assert (=> b!4091539 m!4698463))

(assert (=> b!4091539 m!4697887))

(declare-fun m!4698465 () Bool)

(assert (=> b!4091539 m!4698465))

(assert (=> b!4091539 m!4697883))

(declare-fun m!4698467 () Bool)

(assert (=> b!4091538 m!4698467))

(assert (=> b!4091081 d!1214745))

(assert (=> b!4091081 d!1214681))

(assert (=> b!4091081 d!1214683))

(assert (=> b!4091081 d!1214685))

(declare-fun d!1214751 () Bool)

(declare-fun lt!1463438 () Bool)

(assert (=> d!1214751 (= lt!1463438 (select (content!6763 (t!338596 (t!338596 rules!3870))) r!4213))))

(declare-fun e!2539210 () Bool)

(assert (=> d!1214751 (= lt!1463438 e!2539210)))

(declare-fun res!1672325 () Bool)

(assert (=> d!1214751 (=> (not res!1672325) (not e!2539210))))

(assert (=> d!1214751 (= res!1672325 ((_ is Cons!43873) (t!338596 (t!338596 rules!3870))))))

(assert (=> d!1214751 (= (contains!8775 (t!338596 (t!338596 rules!3870)) r!4213) lt!1463438)))

(declare-fun b!4091542 () Bool)

(declare-fun e!2539208 () Bool)

(assert (=> b!4091542 (= e!2539210 e!2539208)))

(declare-fun res!1672324 () Bool)

(assert (=> b!4091542 (=> res!1672324 e!2539208)))

(assert (=> b!4091542 (= res!1672324 (= (h!49293 (t!338596 (t!338596 rules!3870))) r!4213))))

(declare-fun b!4091544 () Bool)

(assert (=> b!4091544 (= e!2539208 (contains!8775 (t!338596 (t!338596 (t!338596 rules!3870))) r!4213))))

(assert (= (and d!1214751 res!1672325) b!4091542))

(assert (= (and b!4091542 (not res!1672324)) b!4091544))

(declare-fun m!4698469 () Bool)

(assert (=> d!1214751 m!4698469))

(declare-fun m!4698471 () Bool)

(assert (=> d!1214751 m!4698471))

(declare-fun m!4698473 () Bool)

(assert (=> b!4091544 m!4698473))

(assert (=> b!4091115 d!1214751))

(assert (=> b!4091090 d!1214695))

(assert (=> b!4091090 d!1214697))

(declare-fun d!1214753 () Bool)

(assert (=> d!1214753 (= (seqFromList!5313 (_1!24538 lt!1463163)) (fromListB!2436 (_1!24538 lt!1463163)))))

(declare-fun bs!593308 () Bool)

(assert (= bs!593308 d!1214753))

(declare-fun m!4698475 () Bool)

(assert (=> bs!593308 m!4698475))

(assert (=> b!4091090 d!1214753))

(declare-fun b!4091557 () Bool)

(declare-fun e!2539215 () tuple2!42808)

(declare-fun call!289191 () tuple2!42808)

(assert (=> b!4091557 (= e!2539215 call!289191)))

(declare-fun b!4091558 () Bool)

(declare-fun e!2539216 () tuple2!42808)

(declare-fun e!2539214 () tuple2!42808)

(assert (=> b!4091558 (= e!2539216 e!2539214)))

(declare-fun c!705170 () Bool)

(assert (=> b!4091558 (= c!705170 (= (size!32771 Nil!43872) (size!32771 input!3411)))))

(declare-fun bm!289185 () Bool)

(declare-fun call!289193 () Regex!12001)

(declare-fun call!289197 () List!43996)

(declare-fun lt!1463460 () List!43996)

(assert (=> bm!289185 (= call!289191 (findLongestMatchInner!1462 call!289193 lt!1463460 (+ (size!32771 Nil!43872) 1) call!289197 input!3411 (size!32771 input!3411)))))

(declare-fun b!4091559 () Bool)

(declare-fun e!2539217 () Unit!63391)

(declare-fun Unit!63396 () Unit!63391)

(assert (=> b!4091559 (= e!2539217 Unit!63396)))

(declare-fun lt!1463444 () Unit!63391)

(declare-fun call!289194 () Unit!63391)

(assert (=> b!4091559 (= lt!1463444 call!289194)))

(declare-fun call!289195 () Bool)

(assert (=> b!4091559 call!289195))

(declare-fun lt!1463466 () Unit!63391)

(assert (=> b!4091559 (= lt!1463466 lt!1463444)))

(declare-fun lt!1463465 () Unit!63391)

(declare-fun call!289190 () Unit!63391)

(assert (=> b!4091559 (= lt!1463465 call!289190)))

(assert (=> b!4091559 (= input!3411 Nil!43872)))

(declare-fun lt!1463451 () Unit!63391)

(assert (=> b!4091559 (= lt!1463451 lt!1463465)))

(assert (=> b!4091559 false))

(declare-fun bm!289186 () Bool)

(assert (=> bm!289186 (= call!289197 (tail!6383 input!3411))))

(declare-fun b!4091560 () Bool)

(declare-fun e!2539213 () tuple2!42808)

(declare-fun lt!1463463 () tuple2!42808)

(assert (=> b!4091560 (= e!2539213 lt!1463463)))

(declare-fun b!4091561 () Bool)

(assert (=> b!4091561 (= e!2539213 (tuple2!42809 Nil!43872 input!3411))))

(declare-fun bm!289187 () Bool)

(assert (=> bm!289187 (= call!289194 (lemmaIsPrefixRefl!2694 input!3411 input!3411))))

(declare-fun b!4091562 () Bool)

(assert (=> b!4091562 (= e!2539216 (tuple2!42809 Nil!43872 input!3411))))

(declare-fun b!4091563 () Bool)

(declare-fun e!2539212 () Bool)

(declare-fun e!2539218 () Bool)

(assert (=> b!4091563 (= e!2539212 e!2539218)))

(declare-fun res!1672327 () Bool)

(assert (=> b!4091563 (=> res!1672327 e!2539218)))

(declare-fun lt!1463458 () tuple2!42808)

(assert (=> b!4091563 (= res!1672327 (isEmpty!26242 (_1!24538 lt!1463458)))))

(declare-fun b!4091564 () Bool)

(declare-fun e!2539211 () tuple2!42808)

(assert (=> b!4091564 (= e!2539211 (tuple2!42809 Nil!43872 Nil!43872))))

(declare-fun b!4091565 () Bool)

(assert (=> b!4091565 (= e!2539211 (tuple2!42809 Nil!43872 input!3411))))

(declare-fun bm!289189 () Bool)

(assert (=> bm!289189 (= call!289195 (isPrefix!4143 input!3411 input!3411))))

(declare-fun bm!289190 () Bool)

(assert (=> bm!289190 (= call!289190 (lemmaIsPrefixSameLengthThenSameList!964 input!3411 Nil!43872 input!3411))))

(declare-fun bm!289191 () Bool)

(declare-fun call!289196 () Bool)

(assert (=> bm!289191 (= call!289196 (nullable!4238 (regex!7096 (h!49293 rules!3870))))))

(declare-fun bm!289192 () Bool)

(declare-fun call!289192 () C!24188)

(assert (=> bm!289192 (= call!289193 (derivativeStep!3639 (regex!7096 (h!49293 rules!3870)) call!289192))))

(declare-fun b!4091566 () Bool)

(declare-fun c!705168 () Bool)

(assert (=> b!4091566 (= c!705168 call!289196)))

(declare-fun lt!1463448 () Unit!63391)

(declare-fun lt!1463453 () Unit!63391)

(assert (=> b!4091566 (= lt!1463448 lt!1463453)))

(declare-fun lt!1463443 () C!24188)

(declare-fun lt!1463467 () List!43996)

(assert (=> b!4091566 (= (++!11502 (++!11502 Nil!43872 (Cons!43872 lt!1463443 Nil!43872)) lt!1463467) input!3411)))

(assert (=> b!4091566 (= lt!1463453 (lemmaMoveElementToOtherListKeepsConcatEq!1270 Nil!43872 lt!1463443 lt!1463467 input!3411))))

(assert (=> b!4091566 (= lt!1463467 (tail!6383 input!3411))))

(assert (=> b!4091566 (= lt!1463443 (head!8649 input!3411))))

(declare-fun lt!1463441 () Unit!63391)

(declare-fun lt!1463455 () Unit!63391)

(assert (=> b!4091566 (= lt!1463441 lt!1463455)))

(assert (=> b!4091566 (isPrefix!4143 (++!11502 Nil!43872 (Cons!43872 (head!8649 (getSuffix!2499 input!3411 Nil!43872)) Nil!43872)) input!3411)))

(assert (=> b!4091566 (= lt!1463455 (lemmaAddHeadSuffixToPrefixStillPrefix!652 Nil!43872 input!3411))))

(declare-fun lt!1463454 () Unit!63391)

(declare-fun lt!1463449 () Unit!63391)

(assert (=> b!4091566 (= lt!1463454 lt!1463449)))

(assert (=> b!4091566 (= lt!1463449 (lemmaAddHeadSuffixToPrefixStillPrefix!652 Nil!43872 input!3411))))

(assert (=> b!4091566 (= lt!1463460 (++!11502 Nil!43872 (Cons!43872 (head!8649 input!3411) Nil!43872)))))

(declare-fun lt!1463468 () Unit!63391)

(assert (=> b!4091566 (= lt!1463468 e!2539217)))

(declare-fun c!705171 () Bool)

(assert (=> b!4091566 (= c!705171 (= (size!32771 Nil!43872) (size!32771 input!3411)))))

(declare-fun lt!1463445 () Unit!63391)

(declare-fun lt!1463461 () Unit!63391)

(assert (=> b!4091566 (= lt!1463445 lt!1463461)))

(assert (=> b!4091566 (<= (size!32771 Nil!43872) (size!32771 input!3411))))

(assert (=> b!4091566 (= lt!1463461 (lemmaIsPrefixThenSmallerEqSize!460 Nil!43872 input!3411))))

(assert (=> b!4091566 (= e!2539214 e!2539215)))

(declare-fun d!1214755 () Bool)

(assert (=> d!1214755 e!2539212))

(declare-fun res!1672326 () Bool)

(assert (=> d!1214755 (=> (not res!1672326) (not e!2539212))))

(assert (=> d!1214755 (= res!1672326 (= (++!11502 (_1!24538 lt!1463458) (_2!24538 lt!1463458)) input!3411))))

(assert (=> d!1214755 (= lt!1463458 e!2539216)))

(declare-fun c!705169 () Bool)

(assert (=> d!1214755 (= c!705169 (lostCause!1026 (regex!7096 (h!49293 rules!3870))))))

(declare-fun lt!1463457 () Unit!63391)

(declare-fun Unit!63398 () Unit!63391)

(assert (=> d!1214755 (= lt!1463457 Unit!63398)))

(assert (=> d!1214755 (= (getSuffix!2499 input!3411 Nil!43872) input!3411)))

(declare-fun lt!1463442 () Unit!63391)

(declare-fun lt!1463459 () Unit!63391)

(assert (=> d!1214755 (= lt!1463442 lt!1463459)))

(declare-fun lt!1463446 () List!43996)

(assert (=> d!1214755 (= input!3411 lt!1463446)))

(assert (=> d!1214755 (= lt!1463459 (lemmaSamePrefixThenSameSuffix!2243 Nil!43872 input!3411 Nil!43872 lt!1463446 input!3411))))

(assert (=> d!1214755 (= lt!1463446 (getSuffix!2499 input!3411 Nil!43872))))

(declare-fun lt!1463452 () Unit!63391)

(declare-fun lt!1463447 () Unit!63391)

(assert (=> d!1214755 (= lt!1463452 lt!1463447)))

(assert (=> d!1214755 (isPrefix!4143 Nil!43872 (++!11502 Nil!43872 input!3411))))

(assert (=> d!1214755 (= lt!1463447 (lemmaConcatTwoListThenFirstIsPrefix!2917 Nil!43872 input!3411))))

(assert (=> d!1214755 (validRegex!5438 (regex!7096 (h!49293 rules!3870)))))

(assert (=> d!1214755 (= (findLongestMatchInner!1462 (regex!7096 (h!49293 rules!3870)) Nil!43872 (size!32771 Nil!43872) input!3411 input!3411 (size!32771 input!3411)) lt!1463458)))

(declare-fun bm!289188 () Bool)

(assert (=> bm!289188 (= call!289192 (head!8649 input!3411))))

(declare-fun b!4091567 () Bool)

(assert (=> b!4091567 (= e!2539215 e!2539213)))

(assert (=> b!4091567 (= lt!1463463 call!289191)))

(declare-fun c!705172 () Bool)

(assert (=> b!4091567 (= c!705172 (isEmpty!26242 (_1!24538 lt!1463463)))))

(declare-fun b!4091568 () Bool)

(declare-fun Unit!63400 () Unit!63391)

(assert (=> b!4091568 (= e!2539217 Unit!63400)))

(declare-fun b!4091569 () Bool)

(assert (=> b!4091569 (= e!2539218 (>= (size!32771 (_1!24538 lt!1463458)) (size!32771 Nil!43872)))))

(declare-fun b!4091570 () Bool)

(declare-fun c!705167 () Bool)

(assert (=> b!4091570 (= c!705167 call!289196)))

(declare-fun lt!1463450 () Unit!63391)

(declare-fun lt!1463464 () Unit!63391)

(assert (=> b!4091570 (= lt!1463450 lt!1463464)))

(assert (=> b!4091570 (= input!3411 Nil!43872)))

(assert (=> b!4091570 (= lt!1463464 call!289190)))

(declare-fun lt!1463462 () Unit!63391)

(declare-fun lt!1463456 () Unit!63391)

(assert (=> b!4091570 (= lt!1463462 lt!1463456)))

(assert (=> b!4091570 call!289195))

(assert (=> b!4091570 (= lt!1463456 call!289194)))

(assert (=> b!4091570 (= e!2539214 e!2539211)))

(assert (= (and d!1214755 c!705169) b!4091562))

(assert (= (and d!1214755 (not c!705169)) b!4091558))

(assert (= (and b!4091558 c!705170) b!4091570))

(assert (= (and b!4091558 (not c!705170)) b!4091566))

(assert (= (and b!4091570 c!705167) b!4091564))

(assert (= (and b!4091570 (not c!705167)) b!4091565))

(assert (= (and b!4091566 c!705171) b!4091559))

(assert (= (and b!4091566 (not c!705171)) b!4091568))

(assert (= (and b!4091566 c!705168) b!4091567))

(assert (= (and b!4091566 (not c!705168)) b!4091557))

(assert (= (and b!4091567 c!705172) b!4091561))

(assert (= (and b!4091567 (not c!705172)) b!4091560))

(assert (= (or b!4091567 b!4091557) bm!289188))

(assert (= (or b!4091567 b!4091557) bm!289186))

(assert (= (or b!4091567 b!4091557) bm!289192))

(assert (= (or b!4091567 b!4091557) bm!289185))

(assert (= (or b!4091570 b!4091559) bm!289189))

(assert (= (or b!4091570 b!4091559) bm!289187))

(assert (= (or b!4091570 b!4091566) bm!289191))

(assert (= (or b!4091570 b!4091559) bm!289190))

(assert (= (and d!1214755 res!1672326) b!4091563))

(assert (= (and b!4091563 (not res!1672327)) b!4091569))

(declare-fun m!4698495 () Bool)

(assert (=> bm!289192 m!4698495))

(declare-fun m!4698499 () Bool)

(assert (=> b!4091567 m!4698499))

(assert (=> b!4091566 m!4697837))

(assert (=> b!4091566 m!4697593))

(assert (=> b!4091566 m!4698375))

(assert (=> b!4091566 m!4698375))

(assert (=> b!4091566 m!4698377))

(assert (=> b!4091566 m!4698379))

(assert (=> b!4091566 m!4698381))

(assert (=> b!4091566 m!4698379))

(declare-fun m!4698505 () Bool)

(assert (=> b!4091566 m!4698505))

(declare-fun m!4698507 () Bool)

(assert (=> b!4091566 m!4698507))

(declare-fun m!4698509 () Bool)

(assert (=> b!4091566 m!4698509))

(assert (=> b!4091566 m!4698389))

(assert (=> b!4091566 m!4698391))

(assert (=> b!4091566 m!4698507))

(assert (=> b!4091566 m!4698393))

(assert (=> b!4091566 m!4698395))

(assert (=> b!4091566 m!4698397))

(assert (=> d!1214755 m!4698399))

(declare-fun m!4698511 () Bool)

(assert (=> d!1214755 m!4698511))

(declare-fun m!4698513 () Bool)

(assert (=> d!1214755 m!4698513))

(declare-fun m!4698515 () Bool)

(assert (=> d!1214755 m!4698515))

(assert (=> d!1214755 m!4698405))

(assert (=> d!1214755 m!4698375))

(declare-fun m!4698517 () Bool)

(assert (=> d!1214755 m!4698517))

(assert (=> d!1214755 m!4698405))

(assert (=> d!1214755 m!4698409))

(assert (=> bm!289186 m!4698391))

(assert (=> bm!289189 m!4697583))

(assert (=> bm!289185 m!4697593))

(declare-fun m!4698519 () Bool)

(assert (=> bm!289185 m!4698519))

(assert (=> bm!289188 m!4698389))

(declare-fun m!4698521 () Bool)

(assert (=> b!4091569 m!4698521))

(assert (=> b!4091569 m!4697837))

(declare-fun m!4698523 () Bool)

(assert (=> b!4091563 m!4698523))

(assert (=> bm!289190 m!4698417))

(declare-fun m!4698525 () Bool)

(assert (=> bm!289191 m!4698525))

(assert (=> bm!289187 m!4697585))

(assert (=> b!4091090 d!1214755))

(declare-fun d!1214763 () Bool)

(assert (=> d!1214763 (= (isEmpty!26242 (_1!24538 (findLongestMatchInner!1462 (regex!7096 (h!49293 rules!3870)) Nil!43872 (size!32771 Nil!43872) input!3411 input!3411 (size!32771 input!3411)))) ((_ is Nil!43872) (_1!24538 (findLongestMatchInner!1462 (regex!7096 (h!49293 rules!3870)) Nil!43872 (size!32771 Nil!43872) input!3411 input!3411 (size!32771 input!3411)))))))

(assert (=> b!4091090 d!1214763))

(declare-fun d!1214765 () Bool)

(declare-fun lt!1463469 () Int)

(assert (=> d!1214765 (= lt!1463469 (size!32771 (list!16284 (seqFromList!5313 (_1!24538 lt!1463163)))))))

(assert (=> d!1214765 (= lt!1463469 (size!32774 (c!705011 (seqFromList!5313 (_1!24538 lt!1463163)))))))

(assert (=> d!1214765 (= (size!32773 (seqFromList!5313 (_1!24538 lt!1463163))) lt!1463469)))

(declare-fun bs!593310 () Bool)

(assert (= bs!593310 d!1214765))

(assert (=> bs!593310 m!4697921))

(declare-fun m!4698527 () Bool)

(assert (=> bs!593310 m!4698527))

(assert (=> bs!593310 m!4698527))

(declare-fun m!4698529 () Bool)

(assert (=> bs!593310 m!4698529))

(declare-fun m!4698531 () Bool)

(assert (=> bs!593310 m!4698531))

(assert (=> b!4091090 d!1214765))

(declare-fun d!1214767 () Bool)

(assert (=> d!1214767 (= (apply!10279 (transformation!7096 (h!49293 rules!3870)) (seqFromList!5313 (_1!24538 lt!1463163))) (dynLambda!18780 (toValue!9684 (transformation!7096 (h!49293 rules!3870))) (seqFromList!5313 (_1!24538 lt!1463163))))))

(declare-fun b_lambda!119935 () Bool)

(assert (=> (not b_lambda!119935) (not d!1214767)))

(declare-fun t!338708 () Bool)

(declare-fun tb!245933 () Bool)

(assert (=> (and b!4090773 (= (toValue!9684 (transformation!7096 r!4213)) (toValue!9684 (transformation!7096 (h!49293 rules!3870)))) t!338708) tb!245933))

(declare-fun result!298442 () Bool)

(assert (=> tb!245933 (= result!298442 (inv!21 (dynLambda!18780 (toValue!9684 (transformation!7096 (h!49293 rules!3870))) (seqFromList!5313 (_1!24538 lt!1463163)))))))

(declare-fun m!4698533 () Bool)

(assert (=> tb!245933 m!4698533))

(assert (=> d!1214767 t!338708))

(declare-fun b_and!315307 () Bool)

(assert (= b_and!315271 (and (=> t!338708 result!298442) b_and!315307)))

(declare-fun t!338710 () Bool)

(declare-fun tb!245935 () Bool)

(assert (=> (and b!4090777 (= (toValue!9684 (transformation!7096 (h!49293 rules!3870))) (toValue!9684 (transformation!7096 (h!49293 rules!3870)))) t!338710) tb!245935))

(declare-fun result!298444 () Bool)

(assert (= result!298444 result!298442))

(assert (=> d!1214767 t!338710))

(declare-fun b_and!315309 () Bool)

(assert (= b_and!315273 (and (=> t!338710 result!298444) b_and!315309)))

(declare-fun t!338712 () Bool)

(declare-fun tb!245937 () Bool)

(assert (=> (and b!4091200 (= (toValue!9684 (transformation!7096 (h!49293 (t!338596 rules!3870)))) (toValue!9684 (transformation!7096 (h!49293 rules!3870)))) t!338712) tb!245937))

(declare-fun result!298446 () Bool)

(assert (= result!298446 result!298442))

(assert (=> d!1214767 t!338712))

(declare-fun b_and!315311 () Bool)

(assert (= b_and!315275 (and (=> t!338712 result!298446) b_and!315311)))

(assert (=> d!1214767 m!4697921))

(declare-fun m!4698535 () Bool)

(assert (=> d!1214767 m!4698535))

(assert (=> b!4091090 d!1214767))

(declare-fun d!1214769 () Bool)

(declare-fun e!2539220 () Bool)

(assert (=> d!1214769 e!2539220))

(declare-fun res!1672328 () Bool)

(assert (=> d!1214769 (=> res!1672328 e!2539220)))

(assert (=> d!1214769 (= res!1672328 (isEmpty!26242 (_1!24538 (findLongestMatchInner!1462 (regex!7096 (h!49293 rules!3870)) Nil!43872 (size!32771 Nil!43872) input!3411 input!3411 (size!32771 input!3411)))))))

(declare-fun lt!1463470 () Unit!63391)

(assert (=> d!1214769 (= lt!1463470 (choose!24991 (regex!7096 (h!49293 rules!3870)) input!3411))))

(assert (=> d!1214769 (validRegex!5438 (regex!7096 (h!49293 rules!3870)))))

(assert (=> d!1214769 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1435 (regex!7096 (h!49293 rules!3870)) input!3411) lt!1463470)))

(declare-fun b!4091571 () Bool)

(assert (=> b!4091571 (= e!2539220 (matchR!5942 (regex!7096 (h!49293 rules!3870)) (_1!24538 (findLongestMatchInner!1462 (regex!7096 (h!49293 rules!3870)) Nil!43872 (size!32771 Nil!43872) input!3411 input!3411 (size!32771 input!3411)))))))

(assert (= (and d!1214769 (not res!1672328)) b!4091571))

(declare-fun m!4698537 () Bool)

(assert (=> d!1214769 m!4698537))

(assert (=> d!1214769 m!4697837))

(assert (=> d!1214769 m!4697919))

(assert (=> d!1214769 m!4698515))

(assert (=> d!1214769 m!4697837))

(assert (=> d!1214769 m!4697593))

(assert (=> d!1214769 m!4697913))

(assert (=> d!1214769 m!4697593))

(assert (=> b!4091571 m!4697837))

(assert (=> b!4091571 m!4697593))

(assert (=> b!4091571 m!4697837))

(assert (=> b!4091571 m!4697593))

(assert (=> b!4091571 m!4697913))

(assert (=> b!4091571 m!4697915))

(assert (=> b!4091090 d!1214769))

(declare-fun bs!593311 () Bool)

(declare-fun d!1214771 () Bool)

(assert (= bs!593311 (and d!1214771 d!1214479)))

(declare-fun lambda!128022 () Int)

(assert (=> bs!593311 (= (and (= (toChars!9543 (transformation!7096 (h!49293 rules!3870))) (toChars!9543 (transformation!7096 r!4213))) (= (toValue!9684 (transformation!7096 (h!49293 rules!3870))) (toValue!9684 (transformation!7096 r!4213)))) (= lambda!128022 lambda!128001))))

(declare-fun bs!593312 () Bool)

(assert (= bs!593312 (and d!1214771 d!1214639)))

(assert (=> bs!593312 (= lambda!128022 lambda!128013)))

(declare-fun bs!593313 () Bool)

(assert (= bs!593313 (and d!1214771 d!1214665)))

(assert (=> bs!593313 (= (and (= (toChars!9543 (transformation!7096 (h!49293 rules!3870))) (toChars!9543 (transformation!7096 r!4213))) (= (toValue!9684 (transformation!7096 (h!49293 rules!3870))) (toValue!9684 (transformation!7096 r!4213)))) (= lambda!128022 lambda!128017))))

(declare-fun bs!593314 () Bool)

(assert (= bs!593314 (and d!1214771 d!1214691)))

(assert (=> bs!593314 (= (and (= (toChars!9543 (transformation!7096 (h!49293 rules!3870))) (toChars!9543 (transformation!7096 r!4213))) (= (toValue!9684 (transformation!7096 (h!49293 rules!3870))) (toValue!9684 (transformation!7096 r!4213)))) (= lambda!128022 lambda!128019))))

(declare-fun b!4091572 () Bool)

(declare-fun e!2539221 () Bool)

(assert (=> b!4091572 (= e!2539221 true)))

(assert (=> d!1214771 e!2539221))

(assert (= d!1214771 b!4091572))

(assert (=> b!4091572 (< (dynLambda!18776 order!23077 (toValue!9684 (transformation!7096 (h!49293 rules!3870)))) (dynLambda!18777 order!23079 lambda!128022))))

(assert (=> b!4091572 (< (dynLambda!18778 order!23081 (toChars!9543 (transformation!7096 (h!49293 rules!3870)))) (dynLambda!18777 order!23079 lambda!128022))))

(assert (=> d!1214771 (= (list!16284 (dynLambda!18779 (toChars!9543 (transformation!7096 (h!49293 rules!3870))) (dynLambda!18780 (toValue!9684 (transformation!7096 (h!49293 rules!3870))) (seqFromList!5313 (_1!24538 lt!1463163))))) (list!16284 (seqFromList!5313 (_1!24538 lt!1463163))))))

(declare-fun lt!1463471 () Unit!63391)

(assert (=> d!1214771 (= lt!1463471 (ForallOf!889 lambda!128022 (seqFromList!5313 (_1!24538 lt!1463163))))))

(assert (=> d!1214771 (= (lemmaSemiInverse!2063 (transformation!7096 (h!49293 rules!3870)) (seqFromList!5313 (_1!24538 lt!1463163))) lt!1463471)))

(declare-fun b_lambda!119937 () Bool)

(assert (=> (not b_lambda!119937) (not d!1214771)))

(declare-fun tb!245939 () Bool)

(declare-fun t!338714 () Bool)

(assert (=> (and b!4090773 (= (toChars!9543 (transformation!7096 r!4213)) (toChars!9543 (transformation!7096 (h!49293 rules!3870)))) t!338714) tb!245939))

(declare-fun e!2539222 () Bool)

(declare-fun b!4091573 () Bool)

(declare-fun tp!1238579 () Bool)

(assert (=> b!4091573 (= e!2539222 (and (inv!58578 (c!705011 (dynLambda!18779 (toChars!9543 (transformation!7096 (h!49293 rules!3870))) (dynLambda!18780 (toValue!9684 (transformation!7096 (h!49293 rules!3870))) (seqFromList!5313 (_1!24538 lt!1463163)))))) tp!1238579))))

(declare-fun result!298448 () Bool)

(assert (=> tb!245939 (= result!298448 (and (inv!58579 (dynLambda!18779 (toChars!9543 (transformation!7096 (h!49293 rules!3870))) (dynLambda!18780 (toValue!9684 (transformation!7096 (h!49293 rules!3870))) (seqFromList!5313 (_1!24538 lt!1463163))))) e!2539222))))

(assert (= tb!245939 b!4091573))

(declare-fun m!4698539 () Bool)

(assert (=> b!4091573 m!4698539))

(declare-fun m!4698541 () Bool)

(assert (=> tb!245939 m!4698541))

(assert (=> d!1214771 t!338714))

(declare-fun b_and!315313 () Bool)

(assert (= b_and!315265 (and (=> t!338714 result!298448) b_and!315313)))

(declare-fun t!338716 () Bool)

(declare-fun tb!245941 () Bool)

(assert (=> (and b!4090777 (= (toChars!9543 (transformation!7096 (h!49293 rules!3870))) (toChars!9543 (transformation!7096 (h!49293 rules!3870)))) t!338716) tb!245941))

(declare-fun result!298450 () Bool)

(assert (= result!298450 result!298448))

(assert (=> d!1214771 t!338716))

(declare-fun b_and!315315 () Bool)

(assert (= b_and!315267 (and (=> t!338716 result!298450) b_and!315315)))

(declare-fun t!338718 () Bool)

(declare-fun tb!245943 () Bool)

(assert (=> (and b!4091200 (= (toChars!9543 (transformation!7096 (h!49293 (t!338596 rules!3870)))) (toChars!9543 (transformation!7096 (h!49293 rules!3870)))) t!338718) tb!245943))

(declare-fun result!298452 () Bool)

(assert (= result!298452 result!298448))

(assert (=> d!1214771 t!338718))

(declare-fun b_and!315317 () Bool)

(assert (= b_and!315269 (and (=> t!338718 result!298452) b_and!315317)))

(declare-fun b_lambda!119939 () Bool)

(assert (=> (not b_lambda!119939) (not d!1214771)))

(assert (=> d!1214771 t!338708))

(declare-fun b_and!315319 () Bool)

(assert (= b_and!315307 (and (=> t!338708 result!298442) b_and!315319)))

(assert (=> d!1214771 t!338710))

(declare-fun b_and!315321 () Bool)

(assert (= b_and!315309 (and (=> t!338710 result!298444) b_and!315321)))

(assert (=> d!1214771 t!338712))

(declare-fun b_and!315323 () Bool)

(assert (= b_and!315311 (and (=> t!338712 result!298446) b_and!315323)))

(assert (=> d!1214771 m!4697921))

(assert (=> d!1214771 m!4698527))

(assert (=> d!1214771 m!4697921))

(assert (=> d!1214771 m!4698535))

(declare-fun m!4698543 () Bool)

(assert (=> d!1214771 m!4698543))

(declare-fun m!4698545 () Bool)

(assert (=> d!1214771 m!4698545))

(assert (=> d!1214771 m!4698535))

(assert (=> d!1214771 m!4698543))

(assert (=> d!1214771 m!4697921))

(declare-fun m!4698547 () Bool)

(assert (=> d!1214771 m!4698547))

(assert (=> b!4091090 d!1214771))

(declare-fun d!1214773 () Bool)

(assert (=> d!1214773 (= (get!14388 lt!1463144) (v!39989 lt!1463144))))

(assert (=> b!4091070 d!1214773))

(declare-fun d!1214775 () Bool)

(declare-fun lt!1463472 () Int)

(assert (=> d!1214775 (>= lt!1463472 0)))

(declare-fun e!2539223 () Int)

(assert (=> d!1214775 (= lt!1463472 e!2539223)))

(declare-fun c!705173 () Bool)

(assert (=> d!1214775 (= c!705173 ((_ is Nil!43872) (_2!24536 (get!14388 lt!1463157))))))

(assert (=> d!1214775 (= (size!32771 (_2!24536 (get!14388 lt!1463157))) lt!1463472)))

(declare-fun b!4091574 () Bool)

(assert (=> b!4091574 (= e!2539223 0)))

(declare-fun b!4091575 () Bool)

(assert (=> b!4091575 (= e!2539223 (+ 1 (size!32771 (t!338595 (_2!24536 (get!14388 lt!1463157))))))))

(assert (= (and d!1214775 c!705173) b!4091574))

(assert (= (and d!1214775 (not c!705173)) b!4091575))

(declare-fun m!4698549 () Bool)

(assert (=> b!4091575 m!4698549))

(assert (=> b!4091079 d!1214775))

(assert (=> b!4091079 d!1214685))

(assert (=> b!4091079 d!1214695))

(declare-fun b!4091576 () Bool)

(declare-fun e!2539230 () Bool)

(declare-fun e!2539226 () Bool)

(assert (=> b!4091576 (= e!2539230 e!2539226)))

(declare-fun res!1672334 () Bool)

(assert (=> b!4091576 (=> (not res!1672334) (not e!2539226))))

(declare-fun lt!1463473 () Bool)

(assert (=> b!4091576 (= res!1672334 (not lt!1463473))))

(declare-fun b!4091577 () Bool)

(declare-fun res!1672329 () Bool)

(assert (=> b!4091577 (=> res!1672329 e!2539230)))

(declare-fun e!2539227 () Bool)

(assert (=> b!4091577 (= res!1672329 e!2539227)))

(declare-fun res!1672331 () Bool)

(assert (=> b!4091577 (=> (not res!1672331) (not e!2539227))))

(assert (=> b!4091577 (= res!1672331 lt!1463473)))

(declare-fun b!4091578 () Bool)

(assert (=> b!4091578 (= e!2539227 (= (head!8649 (_1!24538 (findLongestMatchInner!1462 (regex!7096 r!4213) Nil!43872 (size!32771 Nil!43872) input!3411 input!3411 (size!32771 input!3411)))) (c!705010 (regex!7096 r!4213))))))

(declare-fun b!4091579 () Bool)

(declare-fun e!2539228 () Bool)

(declare-fun call!289198 () Bool)

(assert (=> b!4091579 (= e!2539228 (= lt!1463473 call!289198))))

(declare-fun b!4091580 () Bool)

(declare-fun e!2539225 () Bool)

(assert (=> b!4091580 (= e!2539225 (nullable!4238 (regex!7096 r!4213)))))

(declare-fun b!4091582 () Bool)

(declare-fun res!1672333 () Bool)

(assert (=> b!4091582 (=> (not res!1672333) (not e!2539227))))

(assert (=> b!4091582 (= res!1672333 (isEmpty!26242 (tail!6383 (_1!24538 (findLongestMatchInner!1462 (regex!7096 r!4213) Nil!43872 (size!32771 Nil!43872) input!3411 input!3411 (size!32771 input!3411))))))))

(declare-fun b!4091583 () Bool)

(declare-fun e!2539224 () Bool)

(assert (=> b!4091583 (= e!2539228 e!2539224)))

(declare-fun c!705176 () Bool)

(assert (=> b!4091583 (= c!705176 ((_ is EmptyLang!12001) (regex!7096 r!4213)))))

(declare-fun bm!289193 () Bool)

(assert (=> bm!289193 (= call!289198 (isEmpty!26242 (_1!24538 (findLongestMatchInner!1462 (regex!7096 r!4213) Nil!43872 (size!32771 Nil!43872) input!3411 input!3411 (size!32771 input!3411)))))))

(declare-fun b!4091584 () Bool)

(declare-fun e!2539229 () Bool)

(assert (=> b!4091584 (= e!2539226 e!2539229)))

(declare-fun res!1672336 () Bool)

(assert (=> b!4091584 (=> res!1672336 e!2539229)))

(assert (=> b!4091584 (= res!1672336 call!289198)))

(declare-fun b!4091585 () Bool)

(assert (=> b!4091585 (= e!2539225 (matchR!5942 (derivativeStep!3639 (regex!7096 r!4213) (head!8649 (_1!24538 (findLongestMatchInner!1462 (regex!7096 r!4213) Nil!43872 (size!32771 Nil!43872) input!3411 input!3411 (size!32771 input!3411))))) (tail!6383 (_1!24538 (findLongestMatchInner!1462 (regex!7096 r!4213) Nil!43872 (size!32771 Nil!43872) input!3411 input!3411 (size!32771 input!3411))))))))

(declare-fun b!4091586 () Bool)

(declare-fun res!1672332 () Bool)

(assert (=> b!4091586 (=> res!1672332 e!2539229)))

(assert (=> b!4091586 (= res!1672332 (not (isEmpty!26242 (tail!6383 (_1!24538 (findLongestMatchInner!1462 (regex!7096 r!4213) Nil!43872 (size!32771 Nil!43872) input!3411 input!3411 (size!32771 input!3411)))))))))

(declare-fun b!4091587 () Bool)

(assert (=> b!4091587 (= e!2539229 (not (= (head!8649 (_1!24538 (findLongestMatchInner!1462 (regex!7096 r!4213) Nil!43872 (size!32771 Nil!43872) input!3411 input!3411 (size!32771 input!3411)))) (c!705010 (regex!7096 r!4213)))))))

(declare-fun b!4091588 () Bool)

(declare-fun res!1672330 () Bool)

(assert (=> b!4091588 (=> (not res!1672330) (not e!2539227))))

(assert (=> b!4091588 (= res!1672330 (not call!289198))))

(declare-fun b!4091589 () Bool)

(declare-fun res!1672335 () Bool)

(assert (=> b!4091589 (=> res!1672335 e!2539230)))

(assert (=> b!4091589 (= res!1672335 (not ((_ is ElementMatch!12001) (regex!7096 r!4213))))))

(assert (=> b!4091589 (= e!2539224 e!2539230)))

(declare-fun d!1214777 () Bool)

(assert (=> d!1214777 e!2539228))

(declare-fun c!705175 () Bool)

(assert (=> d!1214777 (= c!705175 ((_ is EmptyExpr!12001) (regex!7096 r!4213)))))

(assert (=> d!1214777 (= lt!1463473 e!2539225)))

(declare-fun c!705174 () Bool)

(assert (=> d!1214777 (= c!705174 (isEmpty!26242 (_1!24538 (findLongestMatchInner!1462 (regex!7096 r!4213) Nil!43872 (size!32771 Nil!43872) input!3411 input!3411 (size!32771 input!3411)))))))

(assert (=> d!1214777 (validRegex!5438 (regex!7096 r!4213))))

(assert (=> d!1214777 (= (matchR!5942 (regex!7096 r!4213) (_1!24538 (findLongestMatchInner!1462 (regex!7096 r!4213) Nil!43872 (size!32771 Nil!43872) input!3411 input!3411 (size!32771 input!3411)))) lt!1463473)))

(declare-fun b!4091581 () Bool)

(assert (=> b!4091581 (= e!2539224 (not lt!1463473))))

(assert (= (and d!1214777 c!705174) b!4091580))

(assert (= (and d!1214777 (not c!705174)) b!4091585))

(assert (= (and d!1214777 c!705175) b!4091579))

(assert (= (and d!1214777 (not c!705175)) b!4091583))

(assert (= (and b!4091583 c!705176) b!4091581))

(assert (= (and b!4091583 (not c!705176)) b!4091589))

(assert (= (and b!4091589 (not res!1672335)) b!4091577))

(assert (= (and b!4091577 res!1672331) b!4091588))

(assert (= (and b!4091588 res!1672330) b!4091582))

(assert (= (and b!4091582 res!1672333) b!4091578))

(assert (= (and b!4091577 (not res!1672329)) b!4091576))

(assert (= (and b!4091576 res!1672334) b!4091584))

(assert (= (and b!4091584 (not res!1672336)) b!4091586))

(assert (= (and b!4091586 (not res!1672332)) b!4091587))

(assert (= (or b!4091579 b!4091584 b!4091588) bm!289193))

(assert (=> d!1214777 m!4697845))

(assert (=> d!1214777 m!4697981))

(assert (=> b!4091580 m!4697983))

(assert (=> bm!289193 m!4697845))

(declare-fun m!4698551 () Bool)

(assert (=> b!4091585 m!4698551))

(assert (=> b!4091585 m!4698551))

(declare-fun m!4698553 () Bool)

(assert (=> b!4091585 m!4698553))

(declare-fun m!4698555 () Bool)

(assert (=> b!4091585 m!4698555))

(assert (=> b!4091585 m!4698553))

(assert (=> b!4091585 m!4698555))

(declare-fun m!4698557 () Bool)

(assert (=> b!4091585 m!4698557))

(assert (=> b!4091587 m!4698551))

(assert (=> b!4091582 m!4698555))

(assert (=> b!4091582 m!4698555))

(declare-fun m!4698559 () Bool)

(assert (=> b!4091582 m!4698559))

(assert (=> b!4091578 m!4698551))

(assert (=> b!4091586 m!4698555))

(assert (=> b!4091586 m!4698555))

(assert (=> b!4091586 m!4698559))

(assert (=> b!4091068 d!1214777))

(assert (=> b!4091068 d!1214701))

(assert (=> b!4091068 d!1214697))

(assert (=> b!4091068 d!1214695))

(declare-fun d!1214779 () Bool)

(assert (=> d!1214779 (= (inv!58579 (dynLambda!18779 (toChars!9543 (transformation!7096 r!4213)) (dynLambda!18780 (toValue!9684 (transformation!7096 r!4213)) lt!1463039))) (isBalanced!3703 (c!705011 (dynLambda!18779 (toChars!9543 (transformation!7096 r!4213)) (dynLambda!18780 (toValue!9684 (transformation!7096 r!4213)) lt!1463039)))))))

(declare-fun bs!593315 () Bool)

(assert (= bs!593315 d!1214779))

(declare-fun m!4698563 () Bool)

(assert (=> bs!593315 m!4698563))

(assert (=> tb!245833 d!1214779))

(declare-fun d!1214783 () Bool)

(assert (=> d!1214783 (= (isDefined!7192 lt!1463157) (not (isEmpty!26243 lt!1463157)))))

(declare-fun bs!593316 () Bool)

(assert (= bs!593316 d!1214783))

(assert (=> bs!593316 m!4697877))

(assert (=> b!4091078 d!1214783))

(declare-fun d!1214785 () Bool)

(declare-fun res!1672346 () Bool)

(declare-fun e!2539244 () Bool)

(assert (=> d!1214785 (=> res!1672346 e!2539244)))

(assert (=> d!1214785 (= res!1672346 ((_ is Nil!43873) (t!338596 rules!3870)))))

(assert (=> d!1214785 (= (noDuplicateTag!2785 thiss!26199 (t!338596 rules!3870) Nil!43875) e!2539244)))

(declare-fun b!4091607 () Bool)

(declare-fun e!2539245 () Bool)

(assert (=> b!4091607 (= e!2539244 e!2539245)))

(declare-fun res!1672347 () Bool)

(assert (=> b!4091607 (=> (not res!1672347) (not e!2539245))))

(declare-fun contains!8777 (List!43999 String!50380) Bool)

(assert (=> b!4091607 (= res!1672347 (not (contains!8777 Nil!43875 (tag!7956 (h!49293 (t!338596 rules!3870))))))))

(declare-fun b!4091608 () Bool)

(assert (=> b!4091608 (= e!2539245 (noDuplicateTag!2785 thiss!26199 (t!338596 (t!338596 rules!3870)) (Cons!43875 (tag!7956 (h!49293 (t!338596 rules!3870))) Nil!43875)))))

(assert (= (and d!1214785 (not res!1672346)) b!4091607))

(assert (= (and b!4091607 res!1672347) b!4091608))

(declare-fun m!4698565 () Bool)

(assert (=> b!4091607 m!4698565))

(declare-fun m!4698567 () Bool)

(assert (=> b!4091608 m!4698567))

(assert (=> b!4091096 d!1214785))

(declare-fun d!1214787 () Bool)

(declare-fun c!705183 () Bool)

(assert (=> d!1214787 (= c!705183 ((_ is Nil!43873) (t!338596 rules!3870)))))

(declare-fun e!2539249 () (InoxSet Rule!13992))

(assert (=> d!1214787 (= (content!6763 (t!338596 rules!3870)) e!2539249)))

(declare-fun b!4091614 () Bool)

(assert (=> b!4091614 (= e!2539249 ((as const (Array Rule!13992 Bool)) false))))

(declare-fun b!4091615 () Bool)

(assert (=> b!4091615 (= e!2539249 ((_ map or) (store ((as const (Array Rule!13992 Bool)) false) (h!49293 (t!338596 rules!3870)) true) (content!6763 (t!338596 (t!338596 rules!3870)))))))

(assert (= (and d!1214787 c!705183) b!4091614))

(assert (= (and d!1214787 (not c!705183)) b!4091615))

(declare-fun m!4698569 () Bool)

(assert (=> b!4091615 m!4698569))

(assert (=> b!4091615 m!4698469))

(assert (=> d!1214551 d!1214787))

(declare-fun b!4091616 () Bool)

(declare-fun e!2539256 () Bool)

(declare-fun e!2539252 () Bool)

(assert (=> b!4091616 (= e!2539256 e!2539252)))

(declare-fun res!1672354 () Bool)

(assert (=> b!4091616 (=> (not res!1672354) (not e!2539252))))

(declare-fun lt!1463477 () Bool)

(assert (=> b!4091616 (= res!1672354 (not lt!1463477))))

(declare-fun b!4091617 () Bool)

(declare-fun res!1672349 () Bool)

(assert (=> b!4091617 (=> res!1672349 e!2539256)))

(declare-fun e!2539253 () Bool)

(assert (=> b!4091617 (= res!1672349 e!2539253)))

(declare-fun res!1672351 () Bool)

(assert (=> b!4091617 (=> (not res!1672351) (not e!2539253))))

(assert (=> b!4091617 (= res!1672351 lt!1463477)))

(declare-fun b!4091618 () Bool)

(assert (=> b!4091618 (= e!2539253 (= (head!8649 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463086))))) (c!705010 (regex!7096 (rule!10238 (_1!24536 (get!14388 lt!1463086)))))))))

(declare-fun b!4091619 () Bool)

(declare-fun e!2539254 () Bool)

(declare-fun call!289199 () Bool)

(assert (=> b!4091619 (= e!2539254 (= lt!1463477 call!289199))))

(declare-fun b!4091620 () Bool)

(declare-fun e!2539251 () Bool)

(assert (=> b!4091620 (= e!2539251 (nullable!4238 (regex!7096 (rule!10238 (_1!24536 (get!14388 lt!1463086))))))))

(declare-fun b!4091622 () Bool)

(declare-fun res!1672353 () Bool)

(assert (=> b!4091622 (=> (not res!1672353) (not e!2539253))))

(assert (=> b!4091622 (= res!1672353 (isEmpty!26242 (tail!6383 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463086)))))))))

(declare-fun b!4091623 () Bool)

(declare-fun e!2539250 () Bool)

(assert (=> b!4091623 (= e!2539254 e!2539250)))

(declare-fun c!705186 () Bool)

(assert (=> b!4091623 (= c!705186 ((_ is EmptyLang!12001) (regex!7096 (rule!10238 (_1!24536 (get!14388 lt!1463086))))))))

(declare-fun bm!289194 () Bool)

(assert (=> bm!289194 (= call!289199 (isEmpty!26242 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463086))))))))

(declare-fun b!4091624 () Bool)

(declare-fun e!2539255 () Bool)

(assert (=> b!4091624 (= e!2539252 e!2539255)))

(declare-fun res!1672356 () Bool)

(assert (=> b!4091624 (=> res!1672356 e!2539255)))

(assert (=> b!4091624 (= res!1672356 call!289199)))

(declare-fun b!4091625 () Bool)

(assert (=> b!4091625 (= e!2539251 (matchR!5942 (derivativeStep!3639 (regex!7096 (rule!10238 (_1!24536 (get!14388 lt!1463086)))) (head!8649 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463086)))))) (tail!6383 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463086)))))))))

(declare-fun b!4091626 () Bool)

(declare-fun res!1672352 () Bool)

(assert (=> b!4091626 (=> res!1672352 e!2539255)))

(assert (=> b!4091626 (= res!1672352 (not (isEmpty!26242 (tail!6383 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463086))))))))))

(declare-fun b!4091627 () Bool)

(assert (=> b!4091627 (= e!2539255 (not (= (head!8649 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463086))))) (c!705010 (regex!7096 (rule!10238 (_1!24536 (get!14388 lt!1463086))))))))))

(declare-fun b!4091628 () Bool)

(declare-fun res!1672350 () Bool)

(assert (=> b!4091628 (=> (not res!1672350) (not e!2539253))))

(assert (=> b!4091628 (= res!1672350 (not call!289199))))

(declare-fun b!4091629 () Bool)

(declare-fun res!1672355 () Bool)

(assert (=> b!4091629 (=> res!1672355 e!2539256)))

(assert (=> b!4091629 (= res!1672355 (not ((_ is ElementMatch!12001) (regex!7096 (rule!10238 (_1!24536 (get!14388 lt!1463086)))))))))

(assert (=> b!4091629 (= e!2539250 e!2539256)))

(declare-fun d!1214789 () Bool)

(assert (=> d!1214789 e!2539254))

(declare-fun c!705185 () Bool)

(assert (=> d!1214789 (= c!705185 ((_ is EmptyExpr!12001) (regex!7096 (rule!10238 (_1!24536 (get!14388 lt!1463086))))))))

(assert (=> d!1214789 (= lt!1463477 e!2539251)))

(declare-fun c!705184 () Bool)

(assert (=> d!1214789 (= c!705184 (isEmpty!26242 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463086))))))))

(assert (=> d!1214789 (validRegex!5438 (regex!7096 (rule!10238 (_1!24536 (get!14388 lt!1463086)))))))

(assert (=> d!1214789 (= (matchR!5942 (regex!7096 (rule!10238 (_1!24536 (get!14388 lt!1463086)))) (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463086))))) lt!1463477)))

(declare-fun b!4091621 () Bool)

(assert (=> b!4091621 (= e!2539250 (not lt!1463477))))

(assert (= (and d!1214789 c!705184) b!4091620))

(assert (= (and d!1214789 (not c!705184)) b!4091625))

(assert (= (and d!1214789 c!705185) b!4091619))

(assert (= (and d!1214789 (not c!705185)) b!4091623))

(assert (= (and b!4091623 c!705186) b!4091621))

(assert (= (and b!4091623 (not c!705186)) b!4091629))

(assert (= (and b!4091629 (not res!1672355)) b!4091617))

(assert (= (and b!4091617 res!1672351) b!4091628))

(assert (= (and b!4091628 res!1672350) b!4091622))

(assert (= (and b!4091622 res!1672353) b!4091618))

(assert (= (and b!4091617 (not res!1672349)) b!4091616))

(assert (= (and b!4091616 res!1672354) b!4091624))

(assert (= (and b!4091624 (not res!1672356)) b!4091626))

(assert (= (and b!4091626 (not res!1672352)) b!4091627))

(assert (= (or b!4091619 b!4091624 b!4091628) bm!289194))

(assert (=> d!1214789 m!4697597))

(declare-fun m!4698579 () Bool)

(assert (=> d!1214789 m!4698579))

(declare-fun m!4698581 () Bool)

(assert (=> d!1214789 m!4698581))

(declare-fun m!4698583 () Bool)

(assert (=> b!4091620 m!4698583))

(assert (=> bm!289194 m!4697597))

(assert (=> bm!289194 m!4698579))

(assert (=> b!4091625 m!4697597))

(declare-fun m!4698585 () Bool)

(assert (=> b!4091625 m!4698585))

(assert (=> b!4091625 m!4698585))

(declare-fun m!4698587 () Bool)

(assert (=> b!4091625 m!4698587))

(assert (=> b!4091625 m!4697597))

(declare-fun m!4698589 () Bool)

(assert (=> b!4091625 m!4698589))

(assert (=> b!4091625 m!4698587))

(assert (=> b!4091625 m!4698589))

(declare-fun m!4698591 () Bool)

(assert (=> b!4091625 m!4698591))

(assert (=> b!4091627 m!4697597))

(assert (=> b!4091627 m!4698585))

(assert (=> b!4091622 m!4697597))

(assert (=> b!4091622 m!4698589))

(assert (=> b!4091622 m!4698589))

(declare-fun m!4698593 () Bool)

(assert (=> b!4091622 m!4698593))

(assert (=> b!4091618 m!4697597))

(assert (=> b!4091618 m!4698585))

(assert (=> b!4091626 m!4697597))

(assert (=> b!4091626 m!4698589))

(assert (=> b!4091626 m!4698589))

(assert (=> b!4091626 m!4698593))

(assert (=> b!4090892 d!1214789))

(assert (=> b!4090892 d!1214631))

(declare-fun d!1214795 () Bool)

(assert (=> d!1214795 (= (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463086)))) (list!16286 (c!705011 (charsOf!4856 (_1!24536 (get!14388 lt!1463086))))))))

(declare-fun bs!593317 () Bool)

(assert (= bs!593317 d!1214795))

(declare-fun m!4698595 () Bool)

(assert (=> bs!593317 m!4698595))

(assert (=> b!4090892 d!1214795))

(declare-fun d!1214797 () Bool)

(declare-fun lt!1463479 () BalanceConc!26208)

(assert (=> d!1214797 (= (list!16284 lt!1463479) (originalCharacters!7690 (_1!24536 (get!14388 lt!1463086))))))

(assert (=> d!1214797 (= lt!1463479 (dynLambda!18779 (toChars!9543 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463086))))) (value!222888 (_1!24536 (get!14388 lt!1463086)))))))

(assert (=> d!1214797 (= (charsOf!4856 (_1!24536 (get!14388 lt!1463086))) lt!1463479)))

(declare-fun b_lambda!119941 () Bool)

(assert (=> (not b_lambda!119941) (not d!1214797)))

(declare-fun t!338720 () Bool)

(declare-fun tb!245945 () Bool)

(assert (=> (and b!4090773 (= (toChars!9543 (transformation!7096 r!4213)) (toChars!9543 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463086)))))) t!338720) tb!245945))

(declare-fun b!4091632 () Bool)

(declare-fun e!2539258 () Bool)

(declare-fun tp!1238580 () Bool)

(assert (=> b!4091632 (= e!2539258 (and (inv!58578 (c!705011 (dynLambda!18779 (toChars!9543 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463086))))) (value!222888 (_1!24536 (get!14388 lt!1463086)))))) tp!1238580))))

(declare-fun result!298454 () Bool)

(assert (=> tb!245945 (= result!298454 (and (inv!58579 (dynLambda!18779 (toChars!9543 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463086))))) (value!222888 (_1!24536 (get!14388 lt!1463086))))) e!2539258))))

(assert (= tb!245945 b!4091632))

(declare-fun m!4698597 () Bool)

(assert (=> b!4091632 m!4698597))

(declare-fun m!4698599 () Bool)

(assert (=> tb!245945 m!4698599))

(assert (=> d!1214797 t!338720))

(declare-fun b_and!315325 () Bool)

(assert (= b_and!315313 (and (=> t!338720 result!298454) b_and!315325)))

(declare-fun t!338722 () Bool)

(declare-fun tb!245947 () Bool)

(assert (=> (and b!4090777 (= (toChars!9543 (transformation!7096 (h!49293 rules!3870))) (toChars!9543 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463086)))))) t!338722) tb!245947))

(declare-fun result!298456 () Bool)

(assert (= result!298456 result!298454))

(assert (=> d!1214797 t!338722))

(declare-fun b_and!315327 () Bool)

(assert (= b_and!315315 (and (=> t!338722 result!298456) b_and!315327)))

(declare-fun t!338724 () Bool)

(declare-fun tb!245949 () Bool)

(assert (=> (and b!4091200 (= (toChars!9543 (transformation!7096 (h!49293 (t!338596 rules!3870)))) (toChars!9543 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463086)))))) t!338724) tb!245949))

(declare-fun result!298458 () Bool)

(assert (= result!298458 result!298454))

(assert (=> d!1214797 t!338724))

(declare-fun b_and!315329 () Bool)

(assert (= b_and!315317 (and (=> t!338724 result!298458) b_and!315329)))

(declare-fun m!4698601 () Bool)

(assert (=> d!1214797 m!4698601))

(declare-fun m!4698603 () Bool)

(assert (=> d!1214797 m!4698603))

(assert (=> b!4090892 d!1214797))

(declare-fun d!1214799 () Bool)

(assert (=> d!1214799 true))

(declare-fun order!23085 () Int)

(declare-fun lambda!128025 () Int)

(declare-fun dynLambda!18782 (Int Int) Int)

(assert (=> d!1214799 (< (dynLambda!18776 order!23077 (toValue!9684 (transformation!7096 r!4213))) (dynLambda!18782 order!23085 lambda!128025))))

(declare-fun Forall2!1114 (Int) Bool)

(assert (=> d!1214799 (= (equivClasses!2949 (toChars!9543 (transformation!7096 r!4213)) (toValue!9684 (transformation!7096 r!4213))) (Forall2!1114 lambda!128025))))

(declare-fun bs!593319 () Bool)

(assert (= bs!593319 d!1214799))

(declare-fun m!4698625 () Bool)

(assert (=> bs!593319 m!4698625))

(assert (=> b!4090979 d!1214799))

(declare-fun d!1214809 () Bool)

(assert (=> d!1214809 (= (get!14388 lt!1463160) (v!39989 lt!1463160))))

(assert (=> b!4091088 d!1214809))

(declare-fun d!1214811 () Bool)

(assert (=> d!1214811 (= (isEmpty!26243 lt!1463160) (not ((_ is Some!9501) lt!1463160)))))

(assert (=> d!1214541 d!1214811))

(declare-fun d!1214813 () Bool)

(assert (=> d!1214813 (= (isEmpty!26242 (_1!24538 lt!1463163)) ((_ is Nil!43872) (_1!24538 lt!1463163)))))

(assert (=> d!1214541 d!1214813))

(declare-fun d!1214815 () Bool)

(declare-fun lt!1463507 () tuple2!42808)

(assert (=> d!1214815 (= (++!11502 (_1!24538 lt!1463507) (_2!24538 lt!1463507)) input!3411)))

(declare-fun sizeTr!289 (List!43996 Int) Int)

(assert (=> d!1214815 (= lt!1463507 (findLongestMatchInner!1462 (regex!7096 (h!49293 rules!3870)) Nil!43872 0 input!3411 input!3411 (sizeTr!289 input!3411 0)))))

(declare-fun lt!1463501 () Unit!63391)

(declare-fun lt!1463508 () Unit!63391)

(assert (=> d!1214815 (= lt!1463501 lt!1463508)))

(declare-fun lt!1463504 () List!43996)

(declare-fun lt!1463503 () Int)

(assert (=> d!1214815 (= (sizeTr!289 lt!1463504 lt!1463503) (+ (size!32771 lt!1463504) lt!1463503))))

(declare-fun lemmaSizeTrEqualsSize!288 (List!43996 Int) Unit!63391)

(assert (=> d!1214815 (= lt!1463508 (lemmaSizeTrEqualsSize!288 lt!1463504 lt!1463503))))

(assert (=> d!1214815 (= lt!1463503 0)))

(assert (=> d!1214815 (= lt!1463504 Nil!43872)))

(declare-fun lt!1463502 () Unit!63391)

(declare-fun lt!1463505 () Unit!63391)

(assert (=> d!1214815 (= lt!1463502 lt!1463505)))

(declare-fun lt!1463506 () Int)

(assert (=> d!1214815 (= (sizeTr!289 input!3411 lt!1463506) (+ (size!32771 input!3411) lt!1463506))))

(assert (=> d!1214815 (= lt!1463505 (lemmaSizeTrEqualsSize!288 input!3411 lt!1463506))))

(assert (=> d!1214815 (= lt!1463506 0)))

(assert (=> d!1214815 (validRegex!5438 (regex!7096 (h!49293 rules!3870)))))

(assert (=> d!1214815 (= (findLongestMatch!1375 (regex!7096 (h!49293 rules!3870)) input!3411) lt!1463507)))

(declare-fun bs!593324 () Bool)

(assert (= bs!593324 d!1214815))

(declare-fun m!4698667 () Bool)

(assert (=> bs!593324 m!4698667))

(declare-fun m!4698669 () Bool)

(assert (=> bs!593324 m!4698669))

(declare-fun m!4698671 () Bool)

(assert (=> bs!593324 m!4698671))

(assert (=> bs!593324 m!4698667))

(declare-fun m!4698673 () Bool)

(assert (=> bs!593324 m!4698673))

(declare-fun m!4698675 () Bool)

(assert (=> bs!593324 m!4698675))

(declare-fun m!4698677 () Bool)

(assert (=> bs!593324 m!4698677))

(declare-fun m!4698679 () Bool)

(assert (=> bs!593324 m!4698679))

(assert (=> bs!593324 m!4698515))

(declare-fun m!4698681 () Bool)

(assert (=> bs!593324 m!4698681))

(assert (=> bs!593324 m!4697593))

(assert (=> d!1214541 d!1214815))

(declare-fun d!1214833 () Bool)

(declare-fun res!1672389 () Bool)

(declare-fun e!2539303 () Bool)

(assert (=> d!1214833 (=> (not res!1672389) (not e!2539303))))

(assert (=> d!1214833 (= res!1672389 (validRegex!5438 (regex!7096 (h!49293 rules!3870))))))

(assert (=> d!1214833 (= (ruleValid!3016 thiss!26199 (h!49293 rules!3870)) e!2539303)))

(declare-fun b!4091695 () Bool)

(declare-fun res!1672390 () Bool)

(assert (=> b!4091695 (=> (not res!1672390) (not e!2539303))))

(assert (=> b!4091695 (= res!1672390 (not (nullable!4238 (regex!7096 (h!49293 rules!3870)))))))

(declare-fun b!4091696 () Bool)

(assert (=> b!4091696 (= e!2539303 (not (= (tag!7956 (h!49293 rules!3870)) (String!50381 ""))))))

(assert (= (and d!1214833 res!1672389) b!4091695))

(assert (= (and b!4091695 res!1672390) b!4091696))

(assert (=> d!1214833 m!4698515))

(assert (=> b!4091695 m!4698525))

(assert (=> d!1214541 d!1214833))

(declare-fun d!1214835 () Bool)

(declare-fun lt!1463509 () Bool)

(assert (=> d!1214835 (= lt!1463509 (select (content!6763 rules!3870) (rule!10238 (_1!24536 (get!14388 lt!1463086)))))))

(declare-fun e!2539305 () Bool)

(assert (=> d!1214835 (= lt!1463509 e!2539305)))

(declare-fun res!1672392 () Bool)

(assert (=> d!1214835 (=> (not res!1672392) (not e!2539305))))

(assert (=> d!1214835 (= res!1672392 ((_ is Cons!43873) rules!3870))))

(assert (=> d!1214835 (= (contains!8775 rules!3870 (rule!10238 (_1!24536 (get!14388 lt!1463086)))) lt!1463509)))

(declare-fun b!4091697 () Bool)

(declare-fun e!2539304 () Bool)

(assert (=> b!4091697 (= e!2539305 e!2539304)))

(declare-fun res!1672391 () Bool)

(assert (=> b!4091697 (=> res!1672391 e!2539304)))

(assert (=> b!4091697 (= res!1672391 (= (h!49293 rules!3870) (rule!10238 (_1!24536 (get!14388 lt!1463086)))))))

(declare-fun b!4091698 () Bool)

(assert (=> b!4091698 (= e!2539304 (contains!8775 (t!338596 rules!3870) (rule!10238 (_1!24536 (get!14388 lt!1463086)))))))

(assert (= (and d!1214835 res!1672392) b!4091697))

(assert (= (and b!4091697 (not res!1672391)) b!4091698))

(assert (=> d!1214835 m!4697977))

(declare-fun m!4698687 () Bool)

(assert (=> d!1214835 m!4698687))

(declare-fun m!4698689 () Bool)

(assert (=> b!4091698 m!4698689))

(assert (=> b!4090890 d!1214835))

(assert (=> b!4090890 d!1214631))

(declare-fun b!4091700 () Bool)

(declare-fun e!2539313 () Bool)

(declare-fun e!2539309 () Bool)

(assert (=> b!4091700 (= e!2539313 e!2539309)))

(declare-fun res!1672398 () Bool)

(assert (=> b!4091700 (=> (not res!1672398) (not e!2539309))))

(declare-fun lt!1463510 () Bool)

(assert (=> b!4091700 (= res!1672398 (not lt!1463510))))

(declare-fun b!4091701 () Bool)

(declare-fun res!1672393 () Bool)

(assert (=> b!4091701 (=> res!1672393 e!2539313)))

(declare-fun e!2539310 () Bool)

(assert (=> b!4091701 (= res!1672393 e!2539310)))

(declare-fun res!1672395 () Bool)

(assert (=> b!4091701 (=> (not res!1672395) (not e!2539310))))

(assert (=> b!4091701 (= res!1672395 lt!1463510)))

(declare-fun b!4091702 () Bool)

(assert (=> b!4091702 (= e!2539310 (= (head!8649 (_1!24538 (findLongestMatchInner!1462 (regex!7096 (h!49293 rules!3870)) Nil!43872 (size!32771 Nil!43872) input!3411 input!3411 (size!32771 input!3411)))) (c!705010 (regex!7096 (h!49293 rules!3870)))))))

(declare-fun b!4091703 () Bool)

(declare-fun e!2539311 () Bool)

(declare-fun call!289210 () Bool)

(assert (=> b!4091703 (= e!2539311 (= lt!1463510 call!289210))))

(declare-fun b!4091704 () Bool)

(declare-fun e!2539308 () Bool)

(assert (=> b!4091704 (= e!2539308 (nullable!4238 (regex!7096 (h!49293 rules!3870))))))

(declare-fun b!4091706 () Bool)

(declare-fun res!1672397 () Bool)

(assert (=> b!4091706 (=> (not res!1672397) (not e!2539310))))

(assert (=> b!4091706 (= res!1672397 (isEmpty!26242 (tail!6383 (_1!24538 (findLongestMatchInner!1462 (regex!7096 (h!49293 rules!3870)) Nil!43872 (size!32771 Nil!43872) input!3411 input!3411 (size!32771 input!3411))))))))

(declare-fun b!4091707 () Bool)

(declare-fun e!2539307 () Bool)

(assert (=> b!4091707 (= e!2539311 e!2539307)))

(declare-fun c!705203 () Bool)

(assert (=> b!4091707 (= c!705203 ((_ is EmptyLang!12001) (regex!7096 (h!49293 rules!3870))))))

(declare-fun bm!289205 () Bool)

(assert (=> bm!289205 (= call!289210 (isEmpty!26242 (_1!24538 (findLongestMatchInner!1462 (regex!7096 (h!49293 rules!3870)) Nil!43872 (size!32771 Nil!43872) input!3411 input!3411 (size!32771 input!3411)))))))

(declare-fun b!4091708 () Bool)

(declare-fun e!2539312 () Bool)

(assert (=> b!4091708 (= e!2539309 e!2539312)))

(declare-fun res!1672400 () Bool)

(assert (=> b!4091708 (=> res!1672400 e!2539312)))

(assert (=> b!4091708 (= res!1672400 call!289210)))

(declare-fun b!4091709 () Bool)

(assert (=> b!4091709 (= e!2539308 (matchR!5942 (derivativeStep!3639 (regex!7096 (h!49293 rules!3870)) (head!8649 (_1!24538 (findLongestMatchInner!1462 (regex!7096 (h!49293 rules!3870)) Nil!43872 (size!32771 Nil!43872) input!3411 input!3411 (size!32771 input!3411))))) (tail!6383 (_1!24538 (findLongestMatchInner!1462 (regex!7096 (h!49293 rules!3870)) Nil!43872 (size!32771 Nil!43872) input!3411 input!3411 (size!32771 input!3411))))))))

(declare-fun b!4091710 () Bool)

(declare-fun res!1672396 () Bool)

(assert (=> b!4091710 (=> res!1672396 e!2539312)))

(assert (=> b!4091710 (= res!1672396 (not (isEmpty!26242 (tail!6383 (_1!24538 (findLongestMatchInner!1462 (regex!7096 (h!49293 rules!3870)) Nil!43872 (size!32771 Nil!43872) input!3411 input!3411 (size!32771 input!3411)))))))))

(declare-fun b!4091711 () Bool)

(assert (=> b!4091711 (= e!2539312 (not (= (head!8649 (_1!24538 (findLongestMatchInner!1462 (regex!7096 (h!49293 rules!3870)) Nil!43872 (size!32771 Nil!43872) input!3411 input!3411 (size!32771 input!3411)))) (c!705010 (regex!7096 (h!49293 rules!3870))))))))

(declare-fun b!4091712 () Bool)

(declare-fun res!1672394 () Bool)

(assert (=> b!4091712 (=> (not res!1672394) (not e!2539310))))

(assert (=> b!4091712 (= res!1672394 (not call!289210))))

(declare-fun b!4091713 () Bool)

(declare-fun res!1672399 () Bool)

(assert (=> b!4091713 (=> res!1672399 e!2539313)))

(assert (=> b!4091713 (= res!1672399 (not ((_ is ElementMatch!12001) (regex!7096 (h!49293 rules!3870)))))))

(assert (=> b!4091713 (= e!2539307 e!2539313)))

(declare-fun d!1214837 () Bool)

(assert (=> d!1214837 e!2539311))

(declare-fun c!705202 () Bool)

(assert (=> d!1214837 (= c!705202 ((_ is EmptyExpr!12001) (regex!7096 (h!49293 rules!3870))))))

(assert (=> d!1214837 (= lt!1463510 e!2539308)))

(declare-fun c!705201 () Bool)

(assert (=> d!1214837 (= c!705201 (isEmpty!26242 (_1!24538 (findLongestMatchInner!1462 (regex!7096 (h!49293 rules!3870)) Nil!43872 (size!32771 Nil!43872) input!3411 input!3411 (size!32771 input!3411)))))))

(assert (=> d!1214837 (validRegex!5438 (regex!7096 (h!49293 rules!3870)))))

(assert (=> d!1214837 (= (matchR!5942 (regex!7096 (h!49293 rules!3870)) (_1!24538 (findLongestMatchInner!1462 (regex!7096 (h!49293 rules!3870)) Nil!43872 (size!32771 Nil!43872) input!3411 input!3411 (size!32771 input!3411)))) lt!1463510)))

(declare-fun b!4091705 () Bool)

(assert (=> b!4091705 (= e!2539307 (not lt!1463510))))

(assert (= (and d!1214837 c!705201) b!4091704))

(assert (= (and d!1214837 (not c!705201)) b!4091709))

(assert (= (and d!1214837 c!705202) b!4091703))

(assert (= (and d!1214837 (not c!705202)) b!4091707))

(assert (= (and b!4091707 c!705203) b!4091705))

(assert (= (and b!4091707 (not c!705203)) b!4091713))

(assert (= (and b!4091713 (not res!1672399)) b!4091701))

(assert (= (and b!4091701 res!1672395) b!4091712))

(assert (= (and b!4091712 res!1672394) b!4091706))

(assert (= (and b!4091706 res!1672397) b!4091702))

(assert (= (and b!4091701 (not res!1672393)) b!4091700))

(assert (= (and b!4091700 res!1672398) b!4091708))

(assert (= (and b!4091708 (not res!1672400)) b!4091710))

(assert (= (and b!4091710 (not res!1672396)) b!4091711))

(assert (= (or b!4091703 b!4091708 b!4091712) bm!289205))

(assert (=> d!1214837 m!4697919))

(assert (=> d!1214837 m!4698515))

(assert (=> b!4091704 m!4698525))

(assert (=> bm!289205 m!4697919))

(declare-fun m!4698699 () Bool)

(assert (=> b!4091709 m!4698699))

(assert (=> b!4091709 m!4698699))

(declare-fun m!4698703 () Bool)

(assert (=> b!4091709 m!4698703))

(declare-fun m!4698705 () Bool)

(assert (=> b!4091709 m!4698705))

(assert (=> b!4091709 m!4698703))

(assert (=> b!4091709 m!4698705))

(declare-fun m!4698707 () Bool)

(assert (=> b!4091709 m!4698707))

(assert (=> b!4091711 m!4698699))

(assert (=> b!4091706 m!4698705))

(assert (=> b!4091706 m!4698705))

(declare-fun m!4698709 () Bool)

(assert (=> b!4091706 m!4698709))

(assert (=> b!4091702 m!4698699))

(assert (=> b!4091710 m!4698705))

(assert (=> b!4091710 m!4698705))

(assert (=> b!4091710 m!4698709))

(assert (=> b!4091086 d!1214837))

(assert (=> b!4091086 d!1214755))

(assert (=> b!4091086 d!1214697))

(assert (=> b!4091086 d!1214695))

(assert (=> b!4091076 d!1214685))

(declare-fun d!1214843 () Bool)

(assert (=> d!1214843 (= (apply!10279 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463157)))) (seqFromList!5313 (originalCharacters!7690 (_1!24536 (get!14388 lt!1463157))))) (dynLambda!18780 (toValue!9684 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463157))))) (seqFromList!5313 (originalCharacters!7690 (_1!24536 (get!14388 lt!1463157))))))))

(declare-fun b_lambda!119953 () Bool)

(assert (=> (not b_lambda!119953) (not d!1214843)))

(declare-fun t!338750 () Bool)

(declare-fun tb!245975 () Bool)

(assert (=> (and b!4090773 (= (toValue!9684 (transformation!7096 r!4213)) (toValue!9684 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463157)))))) t!338750) tb!245975))

(declare-fun result!298484 () Bool)

(assert (=> tb!245975 (= result!298484 (inv!21 (dynLambda!18780 (toValue!9684 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463157))))) (seqFromList!5313 (originalCharacters!7690 (_1!24536 (get!14388 lt!1463157)))))))))

(declare-fun m!4698715 () Bool)

(assert (=> tb!245975 m!4698715))

(assert (=> d!1214843 t!338750))

(declare-fun b_and!315361 () Bool)

(assert (= b_and!315319 (and (=> t!338750 result!298484) b_and!315361)))

(declare-fun t!338752 () Bool)

(declare-fun tb!245977 () Bool)

(assert (=> (and b!4090777 (= (toValue!9684 (transformation!7096 (h!49293 rules!3870))) (toValue!9684 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463157)))))) t!338752) tb!245977))

(declare-fun result!298486 () Bool)

(assert (= result!298486 result!298484))

(assert (=> d!1214843 t!338752))

(declare-fun b_and!315363 () Bool)

(assert (= b_and!315321 (and (=> t!338752 result!298486) b_and!315363)))

(declare-fun t!338754 () Bool)

(declare-fun tb!245979 () Bool)

(assert (=> (and b!4091200 (= (toValue!9684 (transformation!7096 (h!49293 (t!338596 rules!3870)))) (toValue!9684 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463157)))))) t!338754) tb!245979))

(declare-fun result!298488 () Bool)

(assert (= result!298488 result!298484))

(assert (=> d!1214843 t!338754))

(declare-fun b_and!315365 () Bool)

(assert (= b_and!315323 (and (=> t!338754 result!298488) b_and!315365)))

(assert (=> d!1214843 m!4697899))

(declare-fun m!4698717 () Bool)

(assert (=> d!1214843 m!4698717))

(assert (=> b!4091076 d!1214843))

(declare-fun d!1214851 () Bool)

(assert (=> d!1214851 (= (seqFromList!5313 (originalCharacters!7690 (_1!24536 (get!14388 lt!1463157)))) (fromListB!2436 (originalCharacters!7690 (_1!24536 (get!14388 lt!1463157)))))))

(declare-fun bs!593329 () Bool)

(assert (= bs!593329 d!1214851))

(declare-fun m!4698719 () Bool)

(assert (=> bs!593329 m!4698719))

(assert (=> b!4091076 d!1214851))

(assert (=> b!4091117 d!1214551))

(assert (=> bm!289098 d!1214541))

(declare-fun d!1214853 () Bool)

(assert (=> d!1214853 (= (isEmpty!26243 lt!1463086) (not ((_ is Some!9501) lt!1463086)))))

(assert (=> d!1214463 d!1214853))

(declare-fun b!4091747 () Bool)

(declare-fun e!2539336 () Bool)

(assert (=> b!4091747 (= e!2539336 (isPrefix!4143 (tail!6383 input!3411) (tail!6383 input!3411)))))

(declare-fun d!1214855 () Bool)

(declare-fun e!2539335 () Bool)

(assert (=> d!1214855 e!2539335))

(declare-fun res!1672419 () Bool)

(assert (=> d!1214855 (=> res!1672419 e!2539335)))

(declare-fun lt!1463517 () Bool)

(assert (=> d!1214855 (= res!1672419 (not lt!1463517))))

(declare-fun e!2539334 () Bool)

(assert (=> d!1214855 (= lt!1463517 e!2539334)))

(declare-fun res!1672418 () Bool)

(assert (=> d!1214855 (=> res!1672418 e!2539334)))

(assert (=> d!1214855 (= res!1672418 ((_ is Nil!43872) input!3411))))

(assert (=> d!1214855 (= (isPrefix!4143 input!3411 input!3411) lt!1463517)))

(declare-fun b!4091748 () Bool)

(assert (=> b!4091748 (= e!2539335 (>= (size!32771 input!3411) (size!32771 input!3411)))))

(declare-fun b!4091746 () Bool)

(declare-fun res!1672420 () Bool)

(assert (=> b!4091746 (=> (not res!1672420) (not e!2539336))))

(assert (=> b!4091746 (= res!1672420 (= (head!8649 input!3411) (head!8649 input!3411)))))

(declare-fun b!4091745 () Bool)

(assert (=> b!4091745 (= e!2539334 e!2539336)))

(declare-fun res!1672421 () Bool)

(assert (=> b!4091745 (=> (not res!1672421) (not e!2539336))))

(assert (=> b!4091745 (= res!1672421 (not ((_ is Nil!43872) input!3411)))))

(assert (= (and d!1214855 (not res!1672418)) b!4091745))

(assert (= (and b!4091745 res!1672421) b!4091746))

(assert (= (and b!4091746 res!1672420) b!4091747))

(assert (= (and d!1214855 (not res!1672419)) b!4091748))

(assert (=> b!4091747 m!4698391))

(assert (=> b!4091747 m!4698391))

(assert (=> b!4091747 m!4698391))

(assert (=> b!4091747 m!4698391))

(declare-fun m!4698743 () Bool)

(assert (=> b!4091747 m!4698743))

(assert (=> b!4091748 m!4697593))

(assert (=> b!4091748 m!4697593))

(assert (=> b!4091746 m!4698389))

(assert (=> b!4091746 m!4698389))

(assert (=> d!1214463 d!1214855))

(declare-fun d!1214867 () Bool)

(assert (=> d!1214867 (isPrefix!4143 input!3411 input!3411)))

(declare-fun lt!1463521 () Unit!63391)

(declare-fun choose!24992 (List!43996 List!43996) Unit!63391)

(assert (=> d!1214867 (= lt!1463521 (choose!24992 input!3411 input!3411))))

(assert (=> d!1214867 (= (lemmaIsPrefixRefl!2694 input!3411 input!3411) lt!1463521)))

(declare-fun bs!593333 () Bool)

(assert (= bs!593333 d!1214867))

(assert (=> bs!593333 m!4697583))

(declare-fun m!4698757 () Bool)

(assert (=> bs!593333 m!4698757))

(assert (=> d!1214463 d!1214867))

(declare-fun bs!593340 () Bool)

(declare-fun d!1214877 () Bool)

(assert (= bs!593340 (and d!1214877 d!1214663)))

(declare-fun lambda!128030 () Int)

(assert (=> bs!593340 (= lambda!128030 lambda!128016)))

(declare-fun bs!593341 () Bool)

(assert (= bs!593341 (and d!1214877 d!1214677)))

(assert (=> bs!593341 (= lambda!128030 lambda!128018)))

(assert (=> d!1214877 true))

(declare-fun lt!1463527 () Bool)

(assert (=> d!1214877 (= lt!1463527 (forall!8412 rules!3870 lambda!128030))))

(declare-fun e!2539343 () Bool)

(assert (=> d!1214877 (= lt!1463527 e!2539343)))

(declare-fun res!1672426 () Bool)

(assert (=> d!1214877 (=> res!1672426 e!2539343)))

(assert (=> d!1214877 (= res!1672426 (not ((_ is Cons!43873) rules!3870)))))

(assert (=> d!1214877 (= (rulesValidInductive!2625 thiss!26199 rules!3870) lt!1463527)))

(declare-fun b!4091755 () Bool)

(declare-fun e!2539342 () Bool)

(assert (=> b!4091755 (= e!2539343 e!2539342)))

(declare-fun res!1672427 () Bool)

(assert (=> b!4091755 (=> (not res!1672427) (not e!2539342))))

(assert (=> b!4091755 (= res!1672427 (ruleValid!3016 thiss!26199 (h!49293 rules!3870)))))

(declare-fun b!4091756 () Bool)

(assert (=> b!4091756 (= e!2539342 (rulesValidInductive!2625 thiss!26199 (t!338596 rules!3870)))))

(assert (= (and d!1214877 (not res!1672426)) b!4091755))

(assert (= (and b!4091755 res!1672427) b!4091756))

(declare-fun m!4698767 () Bool)

(assert (=> d!1214877 m!4698767))

(assert (=> b!4091755 m!4697937))

(assert (=> b!4091756 m!4697879))

(assert (=> d!1214463 d!1214877))

(declare-fun d!1214883 () Bool)

(declare-fun e!2539344 () Bool)

(assert (=> d!1214883 e!2539344))

(declare-fun res!1672428 () Bool)

(assert (=> d!1214883 (=> (not res!1672428) (not e!2539344))))

(declare-fun lt!1463530 () List!43996)

(assert (=> d!1214883 (= res!1672428 (= (content!6762 lt!1463530) ((_ map or) (content!6762 (t!338595 p!2988)) (content!6762 suffix!1518))))))

(declare-fun e!2539345 () List!43996)

(assert (=> d!1214883 (= lt!1463530 e!2539345)))

(declare-fun c!705212 () Bool)

(assert (=> d!1214883 (= c!705212 ((_ is Nil!43872) (t!338595 p!2988)))))

(assert (=> d!1214883 (= (++!11502 (t!338595 p!2988) suffix!1518) lt!1463530)))

(declare-fun b!4091759 () Bool)

(declare-fun res!1672429 () Bool)

(assert (=> b!4091759 (=> (not res!1672429) (not e!2539344))))

(assert (=> b!4091759 (= res!1672429 (= (size!32771 lt!1463530) (+ (size!32771 (t!338595 p!2988)) (size!32771 suffix!1518))))))

(declare-fun b!4091760 () Bool)

(assert (=> b!4091760 (= e!2539344 (or (not (= suffix!1518 Nil!43872)) (= lt!1463530 (t!338595 p!2988))))))

(declare-fun b!4091758 () Bool)

(assert (=> b!4091758 (= e!2539345 (Cons!43872 (h!49292 (t!338595 p!2988)) (++!11502 (t!338595 (t!338595 p!2988)) suffix!1518)))))

(declare-fun b!4091757 () Bool)

(assert (=> b!4091757 (= e!2539345 suffix!1518)))

(assert (= (and d!1214883 c!705212) b!4091757))

(assert (= (and d!1214883 (not c!705212)) b!4091758))

(assert (= (and d!1214883 res!1672428) b!4091759))

(assert (= (and b!4091759 res!1672429) b!4091760))

(declare-fun m!4698769 () Bool)

(assert (=> d!1214883 m!4698769))

(declare-fun m!4698771 () Bool)

(assert (=> d!1214883 m!4698771))

(assert (=> d!1214883 m!4697959))

(declare-fun m!4698773 () Bool)

(assert (=> b!4091759 m!4698773))

(assert (=> b!4091759 m!4697611))

(assert (=> b!4091759 m!4697963))

(declare-fun m!4698775 () Bool)

(assert (=> b!4091758 m!4698775))

(assert (=> b!4091106 d!1214883))

(assert (=> b!4090887 d!1214537))

(declare-fun bs!593344 () Bool)

(declare-fun d!1214885 () Bool)

(assert (= bs!593344 (and d!1214885 d!1214799)))

(declare-fun lambda!128034 () Int)

(assert (=> bs!593344 (= (= (toValue!9684 (transformation!7096 (h!49293 rules!3870))) (toValue!9684 (transformation!7096 r!4213))) (= lambda!128034 lambda!128025))))

(assert (=> d!1214885 true))

(assert (=> d!1214885 (< (dynLambda!18776 order!23077 (toValue!9684 (transformation!7096 (h!49293 rules!3870)))) (dynLambda!18782 order!23085 lambda!128034))))

(assert (=> d!1214885 (= (equivClasses!2949 (toChars!9543 (transformation!7096 (h!49293 rules!3870))) (toValue!9684 (transformation!7096 (h!49293 rules!3870)))) (Forall2!1114 lambda!128034))))

(declare-fun bs!593346 () Bool)

(assert (= bs!593346 d!1214885))

(declare-fun m!4698779 () Bool)

(assert (=> bs!593346 m!4698779))

(assert (=> b!4091166 d!1214885))

(declare-fun d!1214889 () Bool)

(declare-fun res!1672430 () Bool)

(declare-fun e!2539346 () Bool)

(assert (=> d!1214889 (=> res!1672430 e!2539346)))

(assert (=> d!1214889 (= res!1672430 ((_ is Nil!43873) rules!3870))))

(assert (=> d!1214889 (= (noDuplicateTag!2785 thiss!26199 rules!3870 Nil!43875) e!2539346)))

(declare-fun b!4091761 () Bool)

(declare-fun e!2539347 () Bool)

(assert (=> b!4091761 (= e!2539346 e!2539347)))

(declare-fun res!1672431 () Bool)

(assert (=> b!4091761 (=> (not res!1672431) (not e!2539347))))

(assert (=> b!4091761 (= res!1672431 (not (contains!8777 Nil!43875 (tag!7956 (h!49293 rules!3870)))))))

(declare-fun b!4091762 () Bool)

(assert (=> b!4091762 (= e!2539347 (noDuplicateTag!2785 thiss!26199 (t!338596 rules!3870) (Cons!43875 (tag!7956 (h!49293 rules!3870)) Nil!43875)))))

(assert (= (and d!1214889 (not res!1672430)) b!4091761))

(assert (= (and b!4091761 res!1672431) b!4091762))

(declare-fun m!4698783 () Bool)

(assert (=> b!4091761 m!4698783))

(declare-fun m!4698785 () Bool)

(assert (=> b!4091762 m!4698785))

(assert (=> b!4091109 d!1214889))

(declare-fun d!1214893 () Bool)

(assert (=> d!1214893 (= (isEmpty!26243 lt!1463144) (not ((_ is Some!9501) lt!1463144)))))

(assert (=> d!1214525 d!1214893))

(declare-fun d!1214895 () Bool)

(assert (=> d!1214895 (= (isEmpty!26242 (_1!24538 lt!1463147)) ((_ is Nil!43872) (_1!24538 lt!1463147)))))

(assert (=> d!1214525 d!1214895))

(declare-fun d!1214897 () Bool)

(declare-fun lt!1463538 () tuple2!42808)

(assert (=> d!1214897 (= (++!11502 (_1!24538 lt!1463538) (_2!24538 lt!1463538)) input!3411)))

(assert (=> d!1214897 (= lt!1463538 (findLongestMatchInner!1462 (regex!7096 r!4213) Nil!43872 0 input!3411 input!3411 (sizeTr!289 input!3411 0)))))

(declare-fun lt!1463532 () Unit!63391)

(declare-fun lt!1463539 () Unit!63391)

(assert (=> d!1214897 (= lt!1463532 lt!1463539)))

(declare-fun lt!1463535 () List!43996)

(declare-fun lt!1463534 () Int)

(assert (=> d!1214897 (= (sizeTr!289 lt!1463535 lt!1463534) (+ (size!32771 lt!1463535) lt!1463534))))

(assert (=> d!1214897 (= lt!1463539 (lemmaSizeTrEqualsSize!288 lt!1463535 lt!1463534))))

(assert (=> d!1214897 (= lt!1463534 0)))

(assert (=> d!1214897 (= lt!1463535 Nil!43872)))

(declare-fun lt!1463533 () Unit!63391)

(declare-fun lt!1463536 () Unit!63391)

(assert (=> d!1214897 (= lt!1463533 lt!1463536)))

(declare-fun lt!1463537 () Int)

(assert (=> d!1214897 (= (sizeTr!289 input!3411 lt!1463537) (+ (size!32771 input!3411) lt!1463537))))

(assert (=> d!1214897 (= lt!1463536 (lemmaSizeTrEqualsSize!288 input!3411 lt!1463537))))

(assert (=> d!1214897 (= lt!1463537 0)))

(assert (=> d!1214897 (validRegex!5438 (regex!7096 r!4213))))

(assert (=> d!1214897 (= (findLongestMatch!1375 (regex!7096 r!4213) input!3411) lt!1463538)))

(declare-fun bs!593348 () Bool)

(assert (= bs!593348 d!1214897))

(assert (=> bs!593348 m!4698667))

(declare-fun m!4698791 () Bool)

(assert (=> bs!593348 m!4698791))

(declare-fun m!4698793 () Bool)

(assert (=> bs!593348 m!4698793))

(assert (=> bs!593348 m!4698667))

(declare-fun m!4698795 () Bool)

(assert (=> bs!593348 m!4698795))

(declare-fun m!4698797 () Bool)

(assert (=> bs!593348 m!4698797))

(declare-fun m!4698799 () Bool)

(assert (=> bs!593348 m!4698799))

(declare-fun m!4698801 () Bool)

(assert (=> bs!593348 m!4698801))

(assert (=> bs!593348 m!4697981))

(declare-fun m!4698803 () Bool)

(assert (=> bs!593348 m!4698803))

(assert (=> bs!593348 m!4697593))

(assert (=> d!1214525 d!1214897))

(assert (=> d!1214525 d!1214559))

(assert (=> d!1214535 d!1214559))

(declare-fun d!1214901 () Bool)

(assert (=> d!1214901 (ruleValid!3016 thiss!26199 r!4213)))

(assert (=> d!1214901 true))

(declare-fun _$65!1577 () Unit!63391)

(assert (=> d!1214901 (= (choose!24987 thiss!26199 r!4213 (t!338596 rules!3870)) _$65!1577)))

(declare-fun bs!593349 () Bool)

(assert (= bs!593349 d!1214901))

(assert (=> bs!593349 m!4697485))

(assert (=> d!1214535 d!1214901))

(assert (=> d!1214535 d!1214551))

(assert (=> d!1214533 d!1214525))

(assert (=> d!1214533 d!1214475))

(declare-fun d!1214903 () Bool)

(assert (=> d!1214903 (= (apply!10279 (transformation!7096 r!4213) (seqFromList!5313 p!2988)) (dynLambda!18780 (toValue!9684 (transformation!7096 r!4213)) (seqFromList!5313 p!2988)))))

(declare-fun b_lambda!119959 () Bool)

(assert (=> (not b_lambda!119959) (not d!1214903)))

(declare-fun t!338762 () Bool)

(declare-fun tb!245987 () Bool)

(assert (=> (and b!4090773 (= (toValue!9684 (transformation!7096 r!4213)) (toValue!9684 (transformation!7096 r!4213))) t!338762) tb!245987))

(declare-fun result!298496 () Bool)

(assert (=> tb!245987 (= result!298496 (inv!21 (dynLambda!18780 (toValue!9684 (transformation!7096 r!4213)) (seqFromList!5313 p!2988))))))

(declare-fun m!4698811 () Bool)

(assert (=> tb!245987 m!4698811))

(assert (=> d!1214903 t!338762))

(declare-fun b_and!315373 () Bool)

(assert (= b_and!315361 (and (=> t!338762 result!298496) b_and!315373)))

(declare-fun t!338764 () Bool)

(declare-fun tb!245989 () Bool)

(assert (=> (and b!4090777 (= (toValue!9684 (transformation!7096 (h!49293 rules!3870))) (toValue!9684 (transformation!7096 r!4213))) t!338764) tb!245989))

(declare-fun result!298498 () Bool)

(assert (= result!298498 result!298496))

(assert (=> d!1214903 t!338764))

(declare-fun b_and!315375 () Bool)

(assert (= b_and!315363 (and (=> t!338764 result!298498) b_and!315375)))

(declare-fun tb!245991 () Bool)

(declare-fun t!338766 () Bool)

(assert (=> (and b!4091200 (= (toValue!9684 (transformation!7096 (h!49293 (t!338596 rules!3870)))) (toValue!9684 (transformation!7096 r!4213))) t!338766) tb!245991))

(declare-fun result!298500 () Bool)

(assert (= result!298500 result!298496))

(assert (=> d!1214903 t!338766))

(declare-fun b_and!315377 () Bool)

(assert (= b_and!315365 (and (=> t!338766 result!298500) b_and!315377)))

(assert (=> d!1214903 m!4697471))

(declare-fun m!4698819 () Bool)

(assert (=> d!1214903 m!4698819))

(assert (=> d!1214533 d!1214903))

(declare-fun d!1214905 () Bool)

(assert (=> d!1214905 (= (maxPrefixOneRule!2957 thiss!26199 r!4213 input!3411) (Some!9501 (tuple2!42805 (Token!13319 (apply!10279 (transformation!7096 r!4213) (seqFromList!5313 p!2988)) r!4213 (size!32771 p!2988) p!2988) suffix!1518)))))

(assert (=> d!1214905 true))

(declare-fun _$59!733 () Unit!63391)

(assert (=> d!1214905 (= (choose!24986 thiss!26199 (t!338596 rules!3870) p!2988 input!3411 suffix!1518 r!4213) _$59!733)))

(declare-fun bs!593353 () Bool)

(assert (= bs!593353 d!1214905))

(assert (=> bs!593353 m!4697515))

(assert (=> bs!593353 m!4697471))

(assert (=> bs!593353 m!4697471))

(assert (=> bs!593353 m!4697871))

(assert (=> bs!593353 m!4697477))

(assert (=> d!1214533 d!1214905))

(assert (=> d!1214533 d!1214569))

(assert (=> d!1214533 d!1214477))

(declare-fun d!1214929 () Bool)

(declare-fun e!2539368 () Bool)

(assert (=> d!1214929 e!2539368))

(declare-fun res!1672448 () Bool)

(assert (=> d!1214929 (=> (not res!1672448) (not e!2539368))))

(declare-fun lt!1463547 () List!43996)

(assert (=> d!1214929 (= res!1672448 (= (content!6762 lt!1463547) ((_ map or) (content!6762 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463144))))) (content!6762 (_2!24536 (get!14388 lt!1463144))))))))

(declare-fun e!2539369 () List!43996)

(assert (=> d!1214929 (= lt!1463547 e!2539369)))

(declare-fun c!705221 () Bool)

(assert (=> d!1214929 (= c!705221 ((_ is Nil!43872) (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463144))))))))

(assert (=> d!1214929 (= (++!11502 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463144)))) (_2!24536 (get!14388 lt!1463144))) lt!1463547)))

(declare-fun b!4091795 () Bool)

(declare-fun res!1672449 () Bool)

(assert (=> b!4091795 (=> (not res!1672449) (not e!2539368))))

(assert (=> b!4091795 (= res!1672449 (= (size!32771 lt!1463547) (+ (size!32771 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463144))))) (size!32771 (_2!24536 (get!14388 lt!1463144))))))))

(declare-fun b!4091796 () Bool)

(assert (=> b!4091796 (= e!2539368 (or (not (= (_2!24536 (get!14388 lt!1463144)) Nil!43872)) (= lt!1463547 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463144)))))))))

(declare-fun b!4091794 () Bool)

(assert (=> b!4091794 (= e!2539369 (Cons!43872 (h!49292 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463144))))) (++!11502 (t!338595 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463144))))) (_2!24536 (get!14388 lt!1463144)))))))

(declare-fun b!4091793 () Bool)

(assert (=> b!4091793 (= e!2539369 (_2!24536 (get!14388 lt!1463144)))))

(assert (= (and d!1214929 c!705221) b!4091793))

(assert (= (and d!1214929 (not c!705221)) b!4091794))

(assert (= (and d!1214929 res!1672448) b!4091795))

(assert (= (and b!4091795 res!1672449) b!4091796))

(declare-fun m!4698845 () Bool)

(assert (=> d!1214929 m!4698845))

(assert (=> d!1214929 m!4697833))

(declare-fun m!4698847 () Bool)

(assert (=> d!1214929 m!4698847))

(declare-fun m!4698849 () Bool)

(assert (=> d!1214929 m!4698849))

(declare-fun m!4698851 () Bool)

(assert (=> b!4091795 m!4698851))

(assert (=> b!4091795 m!4697833))

(declare-fun m!4698853 () Bool)

(assert (=> b!4091795 m!4698853))

(assert (=> b!4091795 m!4697863))

(declare-fun m!4698855 () Bool)

(assert (=> b!4091794 m!4698855))

(assert (=> b!4091075 d!1214929))

(declare-fun d!1214931 () Bool)

(assert (=> d!1214931 (= (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463144)))) (list!16286 (c!705011 (charsOf!4856 (_1!24536 (get!14388 lt!1463144))))))))

(declare-fun bs!593354 () Bool)

(assert (= bs!593354 d!1214931))

(declare-fun m!4698857 () Bool)

(assert (=> bs!593354 m!4698857))

(assert (=> b!4091075 d!1214931))

(declare-fun d!1214933 () Bool)

(declare-fun lt!1463548 () BalanceConc!26208)

(assert (=> d!1214933 (= (list!16284 lt!1463548) (originalCharacters!7690 (_1!24536 (get!14388 lt!1463144))))))

(assert (=> d!1214933 (= lt!1463548 (dynLambda!18779 (toChars!9543 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463144))))) (value!222888 (_1!24536 (get!14388 lt!1463144)))))))

(assert (=> d!1214933 (= (charsOf!4856 (_1!24536 (get!14388 lt!1463144))) lt!1463548)))

(declare-fun b_lambda!119961 () Bool)

(assert (=> (not b_lambda!119961) (not d!1214933)))

(declare-fun t!338768 () Bool)

(declare-fun tb!245993 () Bool)

(assert (=> (and b!4090773 (= (toChars!9543 (transformation!7096 r!4213)) (toChars!9543 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463144)))))) t!338768) tb!245993))

(declare-fun b!4091797 () Bool)

(declare-fun e!2539370 () Bool)

(declare-fun tp!1238583 () Bool)

(assert (=> b!4091797 (= e!2539370 (and (inv!58578 (c!705011 (dynLambda!18779 (toChars!9543 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463144))))) (value!222888 (_1!24536 (get!14388 lt!1463144)))))) tp!1238583))))

(declare-fun result!298502 () Bool)

(assert (=> tb!245993 (= result!298502 (and (inv!58579 (dynLambda!18779 (toChars!9543 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463144))))) (value!222888 (_1!24536 (get!14388 lt!1463144))))) e!2539370))))

(assert (= tb!245993 b!4091797))

(declare-fun m!4698859 () Bool)

(assert (=> b!4091797 m!4698859))

(declare-fun m!4698861 () Bool)

(assert (=> tb!245993 m!4698861))

(assert (=> d!1214933 t!338768))

(declare-fun b_and!315379 () Bool)

(assert (= b_and!315325 (and (=> t!338768 result!298502) b_and!315379)))

(declare-fun tb!245995 () Bool)

(declare-fun t!338770 () Bool)

(assert (=> (and b!4090777 (= (toChars!9543 (transformation!7096 (h!49293 rules!3870))) (toChars!9543 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463144)))))) t!338770) tb!245995))

(declare-fun result!298504 () Bool)

(assert (= result!298504 result!298502))

(assert (=> d!1214933 t!338770))

(declare-fun b_and!315381 () Bool)

(assert (= b_and!315327 (and (=> t!338770 result!298504) b_and!315381)))

(declare-fun t!338772 () Bool)

(declare-fun tb!245997 () Bool)

(assert (=> (and b!4091200 (= (toChars!9543 (transformation!7096 (h!49293 (t!338596 rules!3870)))) (toChars!9543 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463144)))))) t!338772) tb!245997))

(declare-fun result!298506 () Bool)

(assert (= result!298506 result!298502))

(assert (=> d!1214933 t!338772))

(declare-fun b_and!315383 () Bool)

(assert (= b_and!315329 (and (=> t!338772 result!298506) b_and!315383)))

(declare-fun m!4698863 () Bool)

(assert (=> d!1214933 m!4698863))

(declare-fun m!4698865 () Bool)

(assert (=> d!1214933 m!4698865))

(assert (=> b!4091075 d!1214933))

(assert (=> b!4091075 d!1214773))

(assert (=> d!1214557 d!1214567))

(assert (=> d!1214557 d!1214733))

(assert (=> d!1214545 d!1214543))

(declare-fun d!1214935 () Bool)

(assert (=> d!1214935 (rulesInvariant!6028 thiss!26199 (t!338596 rules!3870))))

(assert (=> d!1214935 true))

(declare-fun _$66!590 () Unit!63391)

(assert (=> d!1214935 (= (choose!24989 thiss!26199 (h!49293 rules!3870) (t!338596 rules!3870)) _$66!590)))

(declare-fun bs!593355 () Bool)

(assert (= bs!593355 d!1214935))

(assert (=> bs!593355 m!4697495))

(assert (=> d!1214545 d!1214935))

(declare-fun d!1214937 () Bool)

(declare-fun res!1672450 () Bool)

(declare-fun e!2539371 () Bool)

(assert (=> d!1214937 (=> (not res!1672450) (not e!2539371))))

(assert (=> d!1214937 (= res!1672450 (rulesValid!2784 thiss!26199 (Cons!43873 (h!49293 rules!3870) (t!338596 rules!3870))))))

(assert (=> d!1214937 (= (rulesInvariant!6028 thiss!26199 (Cons!43873 (h!49293 rules!3870) (t!338596 rules!3870))) e!2539371)))

(declare-fun b!4091798 () Bool)

(assert (=> b!4091798 (= e!2539371 (noDuplicateTag!2785 thiss!26199 (Cons!43873 (h!49293 rules!3870) (t!338596 rules!3870)) Nil!43875))))

(assert (= (and d!1214937 res!1672450) b!4091798))

(declare-fun m!4698867 () Bool)

(assert (=> d!1214937 m!4698867))

(declare-fun m!4698869 () Bool)

(assert (=> b!4091798 m!4698869))

(assert (=> d!1214545 d!1214937))

(declare-fun d!1214939 () Bool)

(declare-fun lt!1463549 () Int)

(assert (=> d!1214939 (>= lt!1463549 0)))

(declare-fun e!2539372 () Int)

(assert (=> d!1214939 (= lt!1463549 e!2539372)))

(declare-fun c!705222 () Bool)

(assert (=> d!1214939 (= c!705222 ((_ is Nil!43872) (originalCharacters!7690 lt!1463041)))))

(assert (=> d!1214939 (= (size!32771 (originalCharacters!7690 lt!1463041)) lt!1463549)))

(declare-fun b!4091799 () Bool)

(assert (=> b!4091799 (= e!2539372 0)))

(declare-fun b!4091800 () Bool)

(assert (=> b!4091800 (= e!2539372 (+ 1 (size!32771 (t!338595 (originalCharacters!7690 lt!1463041)))))))

(assert (= (and d!1214939 c!705222) b!4091799))

(assert (= (and d!1214939 (not c!705222)) b!4091800))

(declare-fun m!4698871 () Bool)

(assert (=> b!4091800 m!4698871))

(assert (=> b!4090994 d!1214939))

(declare-fun d!1214941 () Bool)

(assert (=> d!1214941 (= (head!8649 p!2988) (h!49292 p!2988))))

(assert (=> b!4091157 d!1214941))

(declare-fun b!4091801 () Bool)

(declare-fun e!2539379 () Bool)

(declare-fun e!2539375 () Bool)

(assert (=> b!4091801 (= e!2539379 e!2539375)))

(declare-fun res!1672456 () Bool)

(assert (=> b!4091801 (=> (not res!1672456) (not e!2539375))))

(declare-fun lt!1463564 () Bool)

(assert (=> b!4091801 (= res!1672456 (not lt!1463564))))

(declare-fun b!4091802 () Bool)

(declare-fun res!1672451 () Bool)

(assert (=> b!4091802 (=> res!1672451 e!2539379)))

(declare-fun e!2539376 () Bool)

(assert (=> b!4091802 (= res!1672451 e!2539376)))

(declare-fun res!1672453 () Bool)

(assert (=> b!4091802 (=> (not res!1672453) (not e!2539376))))

(assert (=> b!4091802 (= res!1672453 lt!1463564)))

(declare-fun b!4091803 () Bool)

(assert (=> b!4091803 (= e!2539376 (= (head!8649 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463157))))) (c!705010 (regex!7096 (rule!10238 (_1!24536 (get!14388 lt!1463157)))))))))

(declare-fun b!4091804 () Bool)

(declare-fun e!2539377 () Bool)

(declare-fun call!289213 () Bool)

(assert (=> b!4091804 (= e!2539377 (= lt!1463564 call!289213))))

(declare-fun b!4091805 () Bool)

(declare-fun e!2539374 () Bool)

(assert (=> b!4091805 (= e!2539374 (nullable!4238 (regex!7096 (rule!10238 (_1!24536 (get!14388 lt!1463157))))))))

(declare-fun b!4091807 () Bool)

(declare-fun res!1672455 () Bool)

(assert (=> b!4091807 (=> (not res!1672455) (not e!2539376))))

(assert (=> b!4091807 (= res!1672455 (isEmpty!26242 (tail!6383 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463157)))))))))

(declare-fun b!4091808 () Bool)

(declare-fun e!2539373 () Bool)

(assert (=> b!4091808 (= e!2539377 e!2539373)))

(declare-fun c!705225 () Bool)

(assert (=> b!4091808 (= c!705225 ((_ is EmptyLang!12001) (regex!7096 (rule!10238 (_1!24536 (get!14388 lt!1463157))))))))

(declare-fun bm!289208 () Bool)

(assert (=> bm!289208 (= call!289213 (isEmpty!26242 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463157))))))))

(declare-fun b!4091809 () Bool)

(declare-fun e!2539378 () Bool)

(assert (=> b!4091809 (= e!2539375 e!2539378)))

(declare-fun res!1672458 () Bool)

(assert (=> b!4091809 (=> res!1672458 e!2539378)))

(assert (=> b!4091809 (= res!1672458 call!289213)))

(declare-fun b!4091810 () Bool)

(assert (=> b!4091810 (= e!2539374 (matchR!5942 (derivativeStep!3639 (regex!7096 (rule!10238 (_1!24536 (get!14388 lt!1463157)))) (head!8649 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463157)))))) (tail!6383 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463157)))))))))

(declare-fun b!4091811 () Bool)

(declare-fun res!1672454 () Bool)

(assert (=> b!4091811 (=> res!1672454 e!2539378)))

(assert (=> b!4091811 (= res!1672454 (not (isEmpty!26242 (tail!6383 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463157))))))))))

(declare-fun b!4091812 () Bool)

(assert (=> b!4091812 (= e!2539378 (not (= (head!8649 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463157))))) (c!705010 (regex!7096 (rule!10238 (_1!24536 (get!14388 lt!1463157))))))))))

(declare-fun b!4091813 () Bool)

(declare-fun res!1672452 () Bool)

(assert (=> b!4091813 (=> (not res!1672452) (not e!2539376))))

(assert (=> b!4091813 (= res!1672452 (not call!289213))))

(declare-fun b!4091814 () Bool)

(declare-fun res!1672457 () Bool)

(assert (=> b!4091814 (=> res!1672457 e!2539379)))

(assert (=> b!4091814 (= res!1672457 (not ((_ is ElementMatch!12001) (regex!7096 (rule!10238 (_1!24536 (get!14388 lt!1463157)))))))))

(assert (=> b!4091814 (= e!2539373 e!2539379)))

(declare-fun d!1214943 () Bool)

(assert (=> d!1214943 e!2539377))

(declare-fun c!705224 () Bool)

(assert (=> d!1214943 (= c!705224 ((_ is EmptyExpr!12001) (regex!7096 (rule!10238 (_1!24536 (get!14388 lt!1463157))))))))

(assert (=> d!1214943 (= lt!1463564 e!2539374)))

(declare-fun c!705223 () Bool)

(assert (=> d!1214943 (= c!705223 (isEmpty!26242 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463157))))))))

(assert (=> d!1214943 (validRegex!5438 (regex!7096 (rule!10238 (_1!24536 (get!14388 lt!1463157)))))))

(assert (=> d!1214943 (= (matchR!5942 (regex!7096 (rule!10238 (_1!24536 (get!14388 lt!1463157)))) (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463157))))) lt!1463564)))

(declare-fun b!4091806 () Bool)

(assert (=> b!4091806 (= e!2539373 (not lt!1463564))))

(assert (= (and d!1214943 c!705223) b!4091805))

(assert (= (and d!1214943 (not c!705223)) b!4091810))

(assert (= (and d!1214943 c!705224) b!4091804))

(assert (= (and d!1214943 (not c!705224)) b!4091808))

(assert (= (and b!4091808 c!705225) b!4091806))

(assert (= (and b!4091808 (not c!705225)) b!4091814))

(assert (= (and b!4091814 (not res!1672457)) b!4091802))

(assert (= (and b!4091802 res!1672453) b!4091813))

(assert (= (and b!4091813 res!1672452) b!4091807))

(assert (= (and b!4091807 res!1672455) b!4091803))

(assert (= (and b!4091802 (not res!1672451)) b!4091801))

(assert (= (and b!4091801 res!1672456) b!4091809))

(assert (= (and b!4091809 (not res!1672458)) b!4091811))

(assert (= (and b!4091811 (not res!1672454)) b!4091812))

(assert (= (or b!4091804 b!4091809 b!4091813) bm!289208))

(assert (=> d!1214943 m!4697887))

(declare-fun m!4698873 () Bool)

(assert (=> d!1214943 m!4698873))

(declare-fun m!4698875 () Bool)

(assert (=> d!1214943 m!4698875))

(declare-fun m!4698877 () Bool)

(assert (=> b!4091805 m!4698877))

(assert (=> bm!289208 m!4697887))

(assert (=> bm!289208 m!4698873))

(assert (=> b!4091810 m!4697887))

(declare-fun m!4698879 () Bool)

(assert (=> b!4091810 m!4698879))

(assert (=> b!4091810 m!4698879))

(declare-fun m!4698881 () Bool)

(assert (=> b!4091810 m!4698881))

(assert (=> b!4091810 m!4697887))

(declare-fun m!4698883 () Bool)

(assert (=> b!4091810 m!4698883))

(assert (=> b!4091810 m!4698881))

(assert (=> b!4091810 m!4698883))

(declare-fun m!4698885 () Bool)

(assert (=> b!4091810 m!4698885))

(assert (=> b!4091812 m!4697887))

(assert (=> b!4091812 m!4698879))

(assert (=> b!4091807 m!4697887))

(assert (=> b!4091807 m!4698883))

(assert (=> b!4091807 m!4698883))

(declare-fun m!4698887 () Bool)

(assert (=> b!4091807 m!4698887))

(assert (=> b!4091803 m!4697887))

(assert (=> b!4091803 m!4698879))

(assert (=> b!4091811 m!4697887))

(assert (=> b!4091811 m!4698883))

(assert (=> b!4091811 m!4698883))

(assert (=> b!4091811 m!4698887))

(assert (=> b!4091082 d!1214943))

(assert (=> b!4091082 d!1214685))

(assert (=> b!4091082 d!1214681))

(assert (=> b!4091082 d!1214683))

(declare-fun b!4091815 () Bool)

(declare-fun e!2539386 () Bool)

(declare-fun e!2539382 () Bool)

(assert (=> b!4091815 (= e!2539386 e!2539382)))

(declare-fun res!1672464 () Bool)

(assert (=> b!4091815 (=> (not res!1672464) (not e!2539382))))

(declare-fun lt!1463575 () Bool)

(assert (=> b!4091815 (= res!1672464 (not lt!1463575))))

(declare-fun b!4091816 () Bool)

(declare-fun res!1672459 () Bool)

(assert (=> b!4091816 (=> res!1672459 e!2539386)))

(declare-fun e!2539383 () Bool)

(assert (=> b!4091816 (= res!1672459 e!2539383)))

(declare-fun res!1672461 () Bool)

(assert (=> b!4091816 (=> (not res!1672461) (not e!2539383))))

(assert (=> b!4091816 (= res!1672461 lt!1463575)))

(declare-fun b!4091817 () Bool)

(assert (=> b!4091817 (= e!2539383 (= (head!8649 (tail!6383 p!2988)) (c!705010 (derivativeStep!3639 (regex!7096 r!4213) (head!8649 p!2988)))))))

(declare-fun b!4091818 () Bool)

(declare-fun e!2539384 () Bool)

(declare-fun call!289214 () Bool)

(assert (=> b!4091818 (= e!2539384 (= lt!1463575 call!289214))))

(declare-fun b!4091819 () Bool)

(declare-fun e!2539381 () Bool)

(assert (=> b!4091819 (= e!2539381 (nullable!4238 (derivativeStep!3639 (regex!7096 r!4213) (head!8649 p!2988))))))

(declare-fun b!4091821 () Bool)

(declare-fun res!1672463 () Bool)

(assert (=> b!4091821 (=> (not res!1672463) (not e!2539383))))

(assert (=> b!4091821 (= res!1672463 (isEmpty!26242 (tail!6383 (tail!6383 p!2988))))))

(declare-fun b!4091822 () Bool)

(declare-fun e!2539380 () Bool)

(assert (=> b!4091822 (= e!2539384 e!2539380)))

(declare-fun c!705228 () Bool)

(assert (=> b!4091822 (= c!705228 ((_ is EmptyLang!12001) (derivativeStep!3639 (regex!7096 r!4213) (head!8649 p!2988))))))

(declare-fun bm!289209 () Bool)

(assert (=> bm!289209 (= call!289214 (isEmpty!26242 (tail!6383 p!2988)))))

(declare-fun b!4091823 () Bool)

(declare-fun e!2539385 () Bool)

(assert (=> b!4091823 (= e!2539382 e!2539385)))

(declare-fun res!1672466 () Bool)

(assert (=> b!4091823 (=> res!1672466 e!2539385)))

(assert (=> b!4091823 (= res!1672466 call!289214)))

(declare-fun b!4091824 () Bool)

(assert (=> b!4091824 (= e!2539381 (matchR!5942 (derivativeStep!3639 (derivativeStep!3639 (regex!7096 r!4213) (head!8649 p!2988)) (head!8649 (tail!6383 p!2988))) (tail!6383 (tail!6383 p!2988))))))

(declare-fun b!4091825 () Bool)

(declare-fun res!1672462 () Bool)

(assert (=> b!4091825 (=> res!1672462 e!2539385)))

(assert (=> b!4091825 (= res!1672462 (not (isEmpty!26242 (tail!6383 (tail!6383 p!2988)))))))

(declare-fun b!4091826 () Bool)

(assert (=> b!4091826 (= e!2539385 (not (= (head!8649 (tail!6383 p!2988)) (c!705010 (derivativeStep!3639 (regex!7096 r!4213) (head!8649 p!2988))))))))

(declare-fun b!4091827 () Bool)

(declare-fun res!1672460 () Bool)

(assert (=> b!4091827 (=> (not res!1672460) (not e!2539383))))

(assert (=> b!4091827 (= res!1672460 (not call!289214))))

(declare-fun b!4091828 () Bool)

(declare-fun res!1672465 () Bool)

(assert (=> b!4091828 (=> res!1672465 e!2539386)))

(assert (=> b!4091828 (= res!1672465 (not ((_ is ElementMatch!12001) (derivativeStep!3639 (regex!7096 r!4213) (head!8649 p!2988)))))))

(assert (=> b!4091828 (= e!2539380 e!2539386)))

(declare-fun d!1214945 () Bool)

(assert (=> d!1214945 e!2539384))

(declare-fun c!705227 () Bool)

(assert (=> d!1214945 (= c!705227 ((_ is EmptyExpr!12001) (derivativeStep!3639 (regex!7096 r!4213) (head!8649 p!2988))))))

(assert (=> d!1214945 (= lt!1463575 e!2539381)))

(declare-fun c!705226 () Bool)

(assert (=> d!1214945 (= c!705226 (isEmpty!26242 (tail!6383 p!2988)))))

(assert (=> d!1214945 (validRegex!5438 (derivativeStep!3639 (regex!7096 r!4213) (head!8649 p!2988)))))

(assert (=> d!1214945 (= (matchR!5942 (derivativeStep!3639 (regex!7096 r!4213) (head!8649 p!2988)) (tail!6383 p!2988)) lt!1463575)))

(declare-fun b!4091820 () Bool)

(assert (=> b!4091820 (= e!2539380 (not lt!1463575))))

(assert (= (and d!1214945 c!705226) b!4091819))

(assert (= (and d!1214945 (not c!705226)) b!4091824))

(assert (= (and d!1214945 c!705227) b!4091818))

(assert (= (and d!1214945 (not c!705227)) b!4091822))

(assert (= (and b!4091822 c!705228) b!4091820))

(assert (= (and b!4091822 (not c!705228)) b!4091828))

(assert (= (and b!4091828 (not res!1672465)) b!4091816))

(assert (= (and b!4091816 res!1672461) b!4091827))

(assert (= (and b!4091827 res!1672460) b!4091821))

(assert (= (and b!4091821 res!1672463) b!4091817))

(assert (= (and b!4091816 (not res!1672459)) b!4091815))

(assert (= (and b!4091815 res!1672464) b!4091823))

(assert (= (and b!4091823 (not res!1672466)) b!4091825))

(assert (= (and b!4091825 (not res!1672462)) b!4091826))

(assert (= (or b!4091818 b!4091823 b!4091827) bm!289209))

(assert (=> d!1214945 m!4697989))

(assert (=> d!1214945 m!4697993))

(assert (=> d!1214945 m!4697987))

(declare-fun m!4698905 () Bool)

(assert (=> d!1214945 m!4698905))

(assert (=> b!4091819 m!4697987))

(declare-fun m!4698907 () Bool)

(assert (=> b!4091819 m!4698907))

(assert (=> bm!289209 m!4697989))

(assert (=> bm!289209 m!4697993))

(assert (=> b!4091824 m!4697989))

(declare-fun m!4698909 () Bool)

(assert (=> b!4091824 m!4698909))

(assert (=> b!4091824 m!4697987))

(assert (=> b!4091824 m!4698909))

(declare-fun m!4698911 () Bool)

(assert (=> b!4091824 m!4698911))

(assert (=> b!4091824 m!4697989))

(declare-fun m!4698913 () Bool)

(assert (=> b!4091824 m!4698913))

(assert (=> b!4091824 m!4698911))

(assert (=> b!4091824 m!4698913))

(declare-fun m!4698915 () Bool)

(assert (=> b!4091824 m!4698915))

(assert (=> b!4091826 m!4697989))

(assert (=> b!4091826 m!4698909))

(assert (=> b!4091821 m!4697989))

(assert (=> b!4091821 m!4698913))

(assert (=> b!4091821 m!4698913))

(declare-fun m!4698917 () Bool)

(assert (=> b!4091821 m!4698917))

(assert (=> b!4091817 m!4697989))

(assert (=> b!4091817 m!4698909))

(assert (=> b!4091825 m!4697989))

(assert (=> b!4091825 m!4698913))

(assert (=> b!4091825 m!4698913))

(assert (=> b!4091825 m!4698917))

(assert (=> b!4091155 d!1214945))

(declare-fun b!4091903 () Bool)

(declare-fun c!705243 () Bool)

(assert (=> b!4091903 (= c!705243 ((_ is Union!12001) (regex!7096 r!4213)))))

(declare-fun e!2539425 () Regex!12001)

(declare-fun e!2539427 () Regex!12001)

(assert (=> b!4091903 (= e!2539425 e!2539427)))

(declare-fun b!4091904 () Bool)

(assert (=> b!4091904 (= e!2539425 (ite (= (head!8649 p!2988) (c!705010 (regex!7096 r!4213))) EmptyExpr!12001 EmptyLang!12001))))

(declare-fun bm!289219 () Bool)

(declare-fun call!289227 () Regex!12001)

(declare-fun call!289226 () Regex!12001)

(assert (=> bm!289219 (= call!289227 call!289226)))

(declare-fun bm!289220 () Bool)

(declare-fun call!289225 () Regex!12001)

(assert (=> bm!289220 (= call!289225 (derivativeStep!3639 (ite c!705243 (regTwo!24515 (regex!7096 r!4213)) (regTwo!24514 (regex!7096 r!4213))) (head!8649 p!2988)))))

(declare-fun b!4091905 () Bool)

(declare-fun e!2539428 () Regex!12001)

(assert (=> b!4091905 (= e!2539428 (Concat!19328 call!289227 (regex!7096 r!4213)))))

(declare-fun b!4091906 () Bool)

(declare-fun e!2539429 () Regex!12001)

(assert (=> b!4091906 (= e!2539429 EmptyLang!12001)))

(declare-fun b!4091907 () Bool)

(assert (=> b!4091907 (= e!2539429 e!2539425)))

(declare-fun c!705246 () Bool)

(assert (=> b!4091907 (= c!705246 ((_ is ElementMatch!12001) (regex!7096 r!4213)))))

(declare-fun b!4091908 () Bool)

(declare-fun c!705245 () Bool)

(assert (=> b!4091908 (= c!705245 (nullable!4238 (regOne!24514 (regex!7096 r!4213))))))

(declare-fun e!2539426 () Regex!12001)

(assert (=> b!4091908 (= e!2539428 e!2539426)))

(declare-fun b!4091909 () Bool)

(declare-fun call!289224 () Regex!12001)

(assert (=> b!4091909 (= e!2539426 (Union!12001 (Concat!19328 call!289224 (regTwo!24514 (regex!7096 r!4213))) call!289225))))

(declare-fun c!705244 () Bool)

(declare-fun bm!289222 () Bool)

(assert (=> bm!289222 (= call!289226 (derivativeStep!3639 (ite c!705243 (regOne!24515 (regex!7096 r!4213)) (ite c!705244 (reg!12330 (regex!7096 r!4213)) (regOne!24514 (regex!7096 r!4213)))) (head!8649 p!2988)))))

(declare-fun b!4091910 () Bool)

(assert (=> b!4091910 (= e!2539427 (Union!12001 call!289226 call!289225))))

(declare-fun b!4091911 () Bool)

(assert (=> b!4091911 (= e!2539427 e!2539428)))

(assert (=> b!4091911 (= c!705244 ((_ is Star!12001) (regex!7096 r!4213)))))

(declare-fun b!4091912 () Bool)

(assert (=> b!4091912 (= e!2539426 (Union!12001 (Concat!19328 call!289224 (regTwo!24514 (regex!7096 r!4213))) EmptyLang!12001))))

(declare-fun bm!289221 () Bool)

(assert (=> bm!289221 (= call!289224 call!289227)))

(declare-fun d!1214955 () Bool)

(declare-fun lt!1463590 () Regex!12001)

(assert (=> d!1214955 (validRegex!5438 lt!1463590)))

(assert (=> d!1214955 (= lt!1463590 e!2539429)))

(declare-fun c!705247 () Bool)

(assert (=> d!1214955 (= c!705247 (or ((_ is EmptyExpr!12001) (regex!7096 r!4213)) ((_ is EmptyLang!12001) (regex!7096 r!4213))))))

(assert (=> d!1214955 (validRegex!5438 (regex!7096 r!4213))))

(assert (=> d!1214955 (= (derivativeStep!3639 (regex!7096 r!4213) (head!8649 p!2988)) lt!1463590)))

(assert (= (and d!1214955 c!705247) b!4091906))

(assert (= (and d!1214955 (not c!705247)) b!4091907))

(assert (= (and b!4091907 c!705246) b!4091904))

(assert (= (and b!4091907 (not c!705246)) b!4091903))

(assert (= (and b!4091903 c!705243) b!4091910))

(assert (= (and b!4091903 (not c!705243)) b!4091911))

(assert (= (and b!4091911 c!705244) b!4091905))

(assert (= (and b!4091911 (not c!705244)) b!4091908))

(assert (= (and b!4091908 c!705245) b!4091909))

(assert (= (and b!4091908 (not c!705245)) b!4091912))

(assert (= (or b!4091909 b!4091912) bm!289221))

(assert (= (or b!4091905 bm!289221) bm!289219))

(assert (= (or b!4091910 bm!289219) bm!289222))

(assert (= (or b!4091910 b!4091909) bm!289220))

(assert (=> bm!289220 m!4697985))

(declare-fun m!4698971 () Bool)

(assert (=> bm!289220 m!4698971))

(declare-fun m!4698973 () Bool)

(assert (=> b!4091908 m!4698973))

(assert (=> bm!289222 m!4697985))

(declare-fun m!4698975 () Bool)

(assert (=> bm!289222 m!4698975))

(declare-fun m!4698977 () Bool)

(assert (=> d!1214955 m!4698977))

(assert (=> d!1214955 m!4697981))

(assert (=> b!4091155 d!1214955))

(assert (=> b!4091155 d!1214941))

(assert (=> b!4091155 d!1214675))

(declare-fun d!1214971 () Bool)

(declare-fun e!2539437 () Bool)

(assert (=> d!1214971 e!2539437))

(declare-fun res!1672481 () Bool)

(assert (=> d!1214971 (=> (not res!1672481) (not e!2539437))))

(declare-fun lt!1463591 () List!43996)

(assert (=> d!1214971 (= res!1672481 (= (content!6762 lt!1463591) ((_ map or) (content!6762 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463160))))) (content!6762 (_2!24536 (get!14388 lt!1463160))))))))

(declare-fun e!2539438 () List!43996)

(assert (=> d!1214971 (= lt!1463591 e!2539438)))

(declare-fun c!705248 () Bool)

(assert (=> d!1214971 (= c!705248 ((_ is Nil!43872) (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463160))))))))

(assert (=> d!1214971 (= (++!11502 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463160)))) (_2!24536 (get!14388 lt!1463160))) lt!1463591)))

(declare-fun b!4091938 () Bool)

(declare-fun res!1672482 () Bool)

(assert (=> b!4091938 (=> (not res!1672482) (not e!2539437))))

(assert (=> b!4091938 (= res!1672482 (= (size!32771 lt!1463591) (+ (size!32771 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463160))))) (size!32771 (_2!24536 (get!14388 lt!1463160))))))))

(declare-fun b!4091939 () Bool)

(assert (=> b!4091939 (= e!2539437 (or (not (= (_2!24536 (get!14388 lt!1463160)) Nil!43872)) (= lt!1463591 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463160)))))))))

(declare-fun b!4091937 () Bool)

(assert (=> b!4091937 (= e!2539438 (Cons!43872 (h!49292 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463160))))) (++!11502 (t!338595 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463160))))) (_2!24536 (get!14388 lt!1463160)))))))

(declare-fun b!4091936 () Bool)

(assert (=> b!4091936 (= e!2539438 (_2!24536 (get!14388 lt!1463160)))))

(assert (= (and d!1214971 c!705248) b!4091936))

(assert (= (and d!1214971 (not c!705248)) b!4091937))

(assert (= (and d!1214971 res!1672481) b!4091938))

(assert (= (and b!4091938 res!1672482) b!4091939))

(declare-fun m!4698985 () Bool)

(assert (=> d!1214971 m!4698985))

(assert (=> d!1214971 m!4697909))

(declare-fun m!4698987 () Bool)

(assert (=> d!1214971 m!4698987))

(declare-fun m!4698989 () Bool)

(assert (=> d!1214971 m!4698989))

(declare-fun m!4698991 () Bool)

(assert (=> b!4091938 m!4698991))

(assert (=> b!4091938 m!4697909))

(declare-fun m!4698993 () Bool)

(assert (=> b!4091938 m!4698993))

(assert (=> b!4091938 m!4697939))

(declare-fun m!4698995 () Bool)

(assert (=> b!4091937 m!4698995))

(assert (=> b!4091093 d!1214971))

(declare-fun d!1214973 () Bool)

(assert (=> d!1214973 (= (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463160)))) (list!16286 (c!705011 (charsOf!4856 (_1!24536 (get!14388 lt!1463160))))))))

(declare-fun bs!593364 () Bool)

(assert (= bs!593364 d!1214973))

(declare-fun m!4698997 () Bool)

(assert (=> bs!593364 m!4698997))

(assert (=> b!4091093 d!1214973))

(declare-fun d!1214975 () Bool)

(declare-fun lt!1463592 () BalanceConc!26208)

(assert (=> d!1214975 (= (list!16284 lt!1463592) (originalCharacters!7690 (_1!24536 (get!14388 lt!1463160))))))

(assert (=> d!1214975 (= lt!1463592 (dynLambda!18779 (toChars!9543 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463160))))) (value!222888 (_1!24536 (get!14388 lt!1463160)))))))

(assert (=> d!1214975 (= (charsOf!4856 (_1!24536 (get!14388 lt!1463160))) lt!1463592)))

(declare-fun b_lambda!119967 () Bool)

(assert (=> (not b_lambda!119967) (not d!1214975)))

(declare-fun t!338806 () Bool)

(declare-fun tb!246031 () Bool)

(assert (=> (and b!4090773 (= (toChars!9543 (transformation!7096 r!4213)) (toChars!9543 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463160)))))) t!338806) tb!246031))

(declare-fun b!4091949 () Bool)

(declare-fun e!2539442 () Bool)

(declare-fun tp!1238658 () Bool)

(assert (=> b!4091949 (= e!2539442 (and (inv!58578 (c!705011 (dynLambda!18779 (toChars!9543 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463160))))) (value!222888 (_1!24536 (get!14388 lt!1463160)))))) tp!1238658))))

(declare-fun result!298542 () Bool)

(assert (=> tb!246031 (= result!298542 (and (inv!58579 (dynLambda!18779 (toChars!9543 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463160))))) (value!222888 (_1!24536 (get!14388 lt!1463160))))) e!2539442))))

(assert (= tb!246031 b!4091949))

(declare-fun m!4698999 () Bool)

(assert (=> b!4091949 m!4698999))

(declare-fun m!4699001 () Bool)

(assert (=> tb!246031 m!4699001))

(assert (=> d!1214975 t!338806))

(declare-fun b_and!315389 () Bool)

(assert (= b_and!315379 (and (=> t!338806 result!298542) b_and!315389)))

(declare-fun tb!246033 () Bool)

(declare-fun t!338808 () Bool)

(assert (=> (and b!4090777 (= (toChars!9543 (transformation!7096 (h!49293 rules!3870))) (toChars!9543 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463160)))))) t!338808) tb!246033))

(declare-fun result!298544 () Bool)

(assert (= result!298544 result!298542))

(assert (=> d!1214975 t!338808))

(declare-fun b_and!315391 () Bool)

(assert (= b_and!315381 (and (=> t!338808 result!298544) b_and!315391)))

(declare-fun t!338810 () Bool)

(declare-fun tb!246035 () Bool)

(assert (=> (and b!4091200 (= (toChars!9543 (transformation!7096 (h!49293 (t!338596 rules!3870)))) (toChars!9543 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463160)))))) t!338810) tb!246035))

(declare-fun result!298546 () Bool)

(assert (= result!298546 result!298542))

(assert (=> d!1214975 t!338810))

(declare-fun b_and!315393 () Bool)

(assert (= b_and!315383 (and (=> t!338810 result!298546) b_and!315393)))

(declare-fun m!4699003 () Bool)

(assert (=> d!1214975 m!4699003))

(declare-fun m!4699005 () Bool)

(assert (=> d!1214975 m!4699005))

(assert (=> b!4091093 d!1214975))

(assert (=> b!4091093 d!1214809))

(assert (=> b!4091073 d!1214773))

(declare-fun d!1214979 () Bool)

(declare-fun lt!1463593 () Int)

(assert (=> d!1214979 (>= lt!1463593 0)))

(declare-fun e!2539443 () Int)

(assert (=> d!1214979 (= lt!1463593 e!2539443)))

(declare-fun c!705249 () Bool)

(assert (=> d!1214979 (= c!705249 ((_ is Nil!43872) (originalCharacters!7690 (_1!24536 (get!14388 lt!1463144)))))))

(assert (=> d!1214979 (= (size!32771 (originalCharacters!7690 (_1!24536 (get!14388 lt!1463144)))) lt!1463593)))

(declare-fun b!4091950 () Bool)

(assert (=> b!4091950 (= e!2539443 0)))

(declare-fun b!4091951 () Bool)

(assert (=> b!4091951 (= e!2539443 (+ 1 (size!32771 (t!338595 (originalCharacters!7690 (_1!24536 (get!14388 lt!1463144)))))))))

(assert (= (and d!1214979 c!705249) b!4091950))

(assert (= (and d!1214979 (not c!705249)) b!4091951))

(declare-fun m!4699007 () Bool)

(assert (=> b!4091951 m!4699007))

(assert (=> b!4091073 d!1214979))

(declare-fun d!1214981 () Bool)

(declare-fun c!705252 () Bool)

(assert (=> d!1214981 (= c!705252 ((_ is Nil!43872) lt!1463169))))

(declare-fun e!2539446 () (InoxSet C!24188))

(assert (=> d!1214981 (= (content!6762 lt!1463169) e!2539446)))

(declare-fun b!4091956 () Bool)

(assert (=> b!4091956 (= e!2539446 ((as const (Array C!24188 Bool)) false))))

(declare-fun b!4091957 () Bool)

(assert (=> b!4091957 (= e!2539446 ((_ map or) (store ((as const (Array C!24188 Bool)) false) (h!49292 lt!1463169) true) (content!6762 (t!338595 lt!1463169))))))

(assert (= (and d!1214981 c!705252) b!4091956))

(assert (= (and d!1214981 (not c!705252)) b!4091957))

(declare-fun m!4699009 () Bool)

(assert (=> b!4091957 m!4699009))

(declare-fun m!4699011 () Bool)

(assert (=> b!4091957 m!4699011))

(assert (=> d!1214547 d!1214981))

(declare-fun d!1214983 () Bool)

(declare-fun c!705253 () Bool)

(assert (=> d!1214983 (= c!705253 ((_ is Nil!43872) p!2988))))

(declare-fun e!2539447 () (InoxSet C!24188))

(assert (=> d!1214983 (= (content!6762 p!2988) e!2539447)))

(declare-fun b!4091958 () Bool)

(assert (=> b!4091958 (= e!2539447 ((as const (Array C!24188 Bool)) false))))

(declare-fun b!4091959 () Bool)

(assert (=> b!4091959 (= e!2539447 ((_ map or) (store ((as const (Array C!24188 Bool)) false) (h!49292 p!2988) true) (content!6762 (t!338595 p!2988))))))

(assert (= (and d!1214983 c!705253) b!4091958))

(assert (= (and d!1214983 (not c!705253)) b!4091959))

(declare-fun m!4699013 () Bool)

(assert (=> b!4091959 m!4699013))

(assert (=> b!4091959 m!4698771))

(assert (=> d!1214547 d!1214983))

(declare-fun d!1214985 () Bool)

(declare-fun c!705254 () Bool)

(assert (=> d!1214985 (= c!705254 ((_ is Nil!43872) suffix!1518))))

(declare-fun e!2539448 () (InoxSet C!24188))

(assert (=> d!1214985 (= (content!6762 suffix!1518) e!2539448)))

(declare-fun b!4091960 () Bool)

(assert (=> b!4091960 (= e!2539448 ((as const (Array C!24188 Bool)) false))))

(declare-fun b!4091961 () Bool)

(assert (=> b!4091961 (= e!2539448 ((_ map or) (store ((as const (Array C!24188 Bool)) false) (h!49292 suffix!1518) true) (content!6762 (t!338595 suffix!1518))))))

(assert (= (and d!1214985 c!705254) b!4091960))

(assert (= (and d!1214985 (not c!705254)) b!4091961))

(declare-fun m!4699015 () Bool)

(assert (=> b!4091961 m!4699015))

(declare-fun m!4699017 () Bool)

(assert (=> b!4091961 m!4699017))

(assert (=> d!1214547 d!1214985))

(declare-fun b!4091962 () Bool)

(declare-fun e!2539455 () Bool)

(declare-fun e!2539451 () Bool)

(assert (=> b!4091962 (= e!2539455 e!2539451)))

(declare-fun res!1672488 () Bool)

(assert (=> b!4091962 (=> (not res!1672488) (not e!2539451))))

(declare-fun lt!1463594 () Bool)

(assert (=> b!4091962 (= res!1672488 (not lt!1463594))))

(declare-fun b!4091963 () Bool)

(declare-fun res!1672483 () Bool)

(assert (=> b!4091963 (=> res!1672483 e!2539455)))

(declare-fun e!2539452 () Bool)

(assert (=> b!4091963 (= res!1672483 e!2539452)))

(declare-fun res!1672485 () Bool)

(assert (=> b!4091963 (=> (not res!1672485) (not e!2539452))))

(assert (=> b!4091963 (= res!1672485 lt!1463594)))

(declare-fun b!4091964 () Bool)

(assert (=> b!4091964 (= e!2539452 (= (head!8649 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463144))))) (c!705010 (regex!7096 r!4213))))))

(declare-fun b!4091965 () Bool)

(declare-fun e!2539453 () Bool)

(declare-fun call!289228 () Bool)

(assert (=> b!4091965 (= e!2539453 (= lt!1463594 call!289228))))

(declare-fun b!4091966 () Bool)

(declare-fun e!2539450 () Bool)

(assert (=> b!4091966 (= e!2539450 (nullable!4238 (regex!7096 r!4213)))))

(declare-fun b!4091968 () Bool)

(declare-fun res!1672487 () Bool)

(assert (=> b!4091968 (=> (not res!1672487) (not e!2539452))))

(assert (=> b!4091968 (= res!1672487 (isEmpty!26242 (tail!6383 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463144)))))))))

(declare-fun b!4091969 () Bool)

(declare-fun e!2539449 () Bool)

(assert (=> b!4091969 (= e!2539453 e!2539449)))

(declare-fun c!705257 () Bool)

(assert (=> b!4091969 (= c!705257 ((_ is EmptyLang!12001) (regex!7096 r!4213)))))

(declare-fun bm!289223 () Bool)

(assert (=> bm!289223 (= call!289228 (isEmpty!26242 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463144))))))))

(declare-fun b!4091970 () Bool)

(declare-fun e!2539454 () Bool)

(assert (=> b!4091970 (= e!2539451 e!2539454)))

(declare-fun res!1672490 () Bool)

(assert (=> b!4091970 (=> res!1672490 e!2539454)))

(assert (=> b!4091970 (= res!1672490 call!289228)))

(declare-fun b!4091971 () Bool)

(assert (=> b!4091971 (= e!2539450 (matchR!5942 (derivativeStep!3639 (regex!7096 r!4213) (head!8649 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463144)))))) (tail!6383 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463144)))))))))

(declare-fun b!4091972 () Bool)

(declare-fun res!1672486 () Bool)

(assert (=> b!4091972 (=> res!1672486 e!2539454)))

(assert (=> b!4091972 (= res!1672486 (not (isEmpty!26242 (tail!6383 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463144))))))))))

(declare-fun b!4091973 () Bool)

(assert (=> b!4091973 (= e!2539454 (not (= (head!8649 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463144))))) (c!705010 (regex!7096 r!4213)))))))

(declare-fun b!4091974 () Bool)

(declare-fun res!1672484 () Bool)

(assert (=> b!4091974 (=> (not res!1672484) (not e!2539452))))

(assert (=> b!4091974 (= res!1672484 (not call!289228))))

(declare-fun b!4091975 () Bool)

(declare-fun res!1672489 () Bool)

(assert (=> b!4091975 (=> res!1672489 e!2539455)))

(assert (=> b!4091975 (= res!1672489 (not ((_ is ElementMatch!12001) (regex!7096 r!4213))))))

(assert (=> b!4091975 (= e!2539449 e!2539455)))

(declare-fun d!1214987 () Bool)

(assert (=> d!1214987 e!2539453))

(declare-fun c!705256 () Bool)

(assert (=> d!1214987 (= c!705256 ((_ is EmptyExpr!12001) (regex!7096 r!4213)))))

(assert (=> d!1214987 (= lt!1463594 e!2539450)))

(declare-fun c!705255 () Bool)

(assert (=> d!1214987 (= c!705255 (isEmpty!26242 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463144))))))))

(assert (=> d!1214987 (validRegex!5438 (regex!7096 r!4213))))

(assert (=> d!1214987 (= (matchR!5942 (regex!7096 r!4213) (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463144))))) lt!1463594)))

(declare-fun b!4091967 () Bool)

(assert (=> b!4091967 (= e!2539449 (not lt!1463594))))

(assert (= (and d!1214987 c!705255) b!4091966))

(assert (= (and d!1214987 (not c!705255)) b!4091971))

(assert (= (and d!1214987 c!705256) b!4091965))

(assert (= (and d!1214987 (not c!705256)) b!4091969))

(assert (= (and b!4091969 c!705257) b!4091967))

(assert (= (and b!4091969 (not c!705257)) b!4091975))

(assert (= (and b!4091975 (not res!1672489)) b!4091963))

(assert (= (and b!4091963 res!1672485) b!4091974))

(assert (= (and b!4091974 res!1672484) b!4091968))

(assert (= (and b!4091968 res!1672487) b!4091964))

(assert (= (and b!4091963 (not res!1672483)) b!4091962))

(assert (= (and b!4091962 res!1672488) b!4091970))

(assert (= (and b!4091970 (not res!1672490)) b!4091972))

(assert (= (and b!4091972 (not res!1672486)) b!4091973))

(assert (= (or b!4091965 b!4091970 b!4091974) bm!289223))

(assert (=> d!1214987 m!4697833))

(declare-fun m!4699019 () Bool)

(assert (=> d!1214987 m!4699019))

(assert (=> d!1214987 m!4697981))

(assert (=> b!4091966 m!4697983))

(assert (=> bm!289223 m!4697833))

(assert (=> bm!289223 m!4699019))

(assert (=> b!4091971 m!4697833))

(declare-fun m!4699021 () Bool)

(assert (=> b!4091971 m!4699021))

(assert (=> b!4091971 m!4699021))

(declare-fun m!4699023 () Bool)

(assert (=> b!4091971 m!4699023))

(assert (=> b!4091971 m!4697833))

(declare-fun m!4699025 () Bool)

(assert (=> b!4091971 m!4699025))

(assert (=> b!4091971 m!4699023))

(assert (=> b!4091971 m!4699025))

(declare-fun m!4699027 () Bool)

(assert (=> b!4091971 m!4699027))

(assert (=> b!4091973 m!4697833))

(assert (=> b!4091973 m!4699021))

(assert (=> b!4091968 m!4697833))

(assert (=> b!4091968 m!4699025))

(assert (=> b!4091968 m!4699025))

(declare-fun m!4699029 () Bool)

(assert (=> b!4091968 m!4699029))

(assert (=> b!4091964 m!4697833))

(assert (=> b!4091964 m!4699021))

(assert (=> b!4091972 m!4697833))

(assert (=> b!4091972 m!4699025))

(assert (=> b!4091972 m!4699025))

(assert (=> b!4091972 m!4699029))

(assert (=> b!4091071 d!1214987))

(assert (=> b!4091071 d!1214931))

(assert (=> b!4091071 d!1214933))

(assert (=> b!4091071 d!1214773))

(declare-fun d!1214989 () Bool)

(assert (=> d!1214989 (= (inv!58579 (dynLambda!18779 (toChars!9543 (transformation!7096 (rule!10238 lt!1463041))) (value!222888 lt!1463041))) (isBalanced!3703 (c!705011 (dynLambda!18779 (toChars!9543 (transformation!7096 (rule!10238 lt!1463041))) (value!222888 lt!1463041)))))))

(declare-fun bs!593366 () Bool)

(assert (= bs!593366 d!1214989))

(declare-fun m!4699031 () Bool)

(assert (=> bs!593366 m!4699031))

(assert (=> tb!245841 d!1214989))

(declare-fun d!1214991 () Bool)

(declare-fun lt!1463595 () Bool)

(assert (=> d!1214991 (= lt!1463595 (select (content!6763 (t!338596 rules!3870)) (rule!10238 (_1!24536 (get!14388 lt!1463157)))))))

(declare-fun e!2539457 () Bool)

(assert (=> d!1214991 (= lt!1463595 e!2539457)))

(declare-fun res!1672492 () Bool)

(assert (=> d!1214991 (=> (not res!1672492) (not e!2539457))))

(assert (=> d!1214991 (= res!1672492 ((_ is Cons!43873) (t!338596 rules!3870)))))

(assert (=> d!1214991 (= (contains!8775 (t!338596 rules!3870) (rule!10238 (_1!24536 (get!14388 lt!1463157)))) lt!1463595)))

(declare-fun b!4091976 () Bool)

(declare-fun e!2539456 () Bool)

(assert (=> b!4091976 (= e!2539457 e!2539456)))

(declare-fun res!1672491 () Bool)

(assert (=> b!4091976 (=> res!1672491 e!2539456)))

(assert (=> b!4091976 (= res!1672491 (= (h!49293 (t!338596 rules!3870)) (rule!10238 (_1!24536 (get!14388 lt!1463157)))))))

(declare-fun b!4091977 () Bool)

(assert (=> b!4091977 (= e!2539456 (contains!8775 (t!338596 (t!338596 rules!3870)) (rule!10238 (_1!24536 (get!14388 lt!1463157)))))))

(assert (= (and d!1214991 res!1672492) b!4091976))

(assert (= (and b!4091976 (not res!1672491)) b!4091977))

(assert (=> d!1214991 m!4697971))

(declare-fun m!4699033 () Bool)

(assert (=> d!1214991 m!4699033))

(declare-fun m!4699035 () Bool)

(assert (=> b!4091977 m!4699035))

(assert (=> b!4091080 d!1214991))

(assert (=> b!4091080 d!1214685))

(assert (=> bm!289103 d!1214567))

(declare-fun b!4091978 () Bool)

(declare-fun res!1672499 () Bool)

(declare-fun e!2539459 () Bool)

(assert (=> b!4091978 (=> (not res!1672499) (not e!2539459))))

(declare-fun lt!1463597 () Option!9502)

(assert (=> b!4091978 (= res!1672499 (= (value!222888 (_1!24536 (get!14388 lt!1463597))) (apply!10279 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463597)))) (seqFromList!5313 (originalCharacters!7690 (_1!24536 (get!14388 lt!1463597)))))))))

(declare-fun b!4091979 () Bool)

(declare-fun e!2539460 () Bool)

(assert (=> b!4091979 (= e!2539460 (matchR!5942 (regex!7096 (h!49293 (t!338596 rules!3870))) (_1!24538 (findLongestMatchInner!1462 (regex!7096 (h!49293 (t!338596 rules!3870))) Nil!43872 (size!32771 Nil!43872) input!3411 input!3411 (size!32771 input!3411)))))))

(declare-fun b!4091980 () Bool)

(declare-fun res!1672495 () Bool)

(assert (=> b!4091980 (=> (not res!1672495) (not e!2539459))))

(assert (=> b!4091980 (= res!1672495 (< (size!32771 (_2!24536 (get!14388 lt!1463597))) (size!32771 input!3411)))))

(declare-fun b!4091981 () Bool)

(declare-fun res!1672497 () Bool)

(assert (=> b!4091981 (=> (not res!1672497) (not e!2539459))))

(assert (=> b!4091981 (= res!1672497 (= (rule!10238 (_1!24536 (get!14388 lt!1463597))) (h!49293 (t!338596 rules!3870))))))

(declare-fun d!1214993 () Bool)

(declare-fun e!2539461 () Bool)

(assert (=> d!1214993 e!2539461))

(declare-fun res!1672498 () Bool)

(assert (=> d!1214993 (=> res!1672498 e!2539461)))

(assert (=> d!1214993 (= res!1672498 (isEmpty!26243 lt!1463597))))

(declare-fun e!2539458 () Option!9502)

(assert (=> d!1214993 (= lt!1463597 e!2539458)))

(declare-fun c!705258 () Bool)

(declare-fun lt!1463600 () tuple2!42808)

(assert (=> d!1214993 (= c!705258 (isEmpty!26242 (_1!24538 lt!1463600)))))

(assert (=> d!1214993 (= lt!1463600 (findLongestMatch!1375 (regex!7096 (h!49293 (t!338596 rules!3870))) input!3411))))

(assert (=> d!1214993 (ruleValid!3016 thiss!26199 (h!49293 (t!338596 rules!3870)))))

(assert (=> d!1214993 (= (maxPrefixOneRule!2957 thiss!26199 (h!49293 (t!338596 rules!3870)) input!3411) lt!1463597)))

(declare-fun b!4091982 () Bool)

(assert (=> b!4091982 (= e!2539461 e!2539459)))

(declare-fun res!1672496 () Bool)

(assert (=> b!4091982 (=> (not res!1672496) (not e!2539459))))

(assert (=> b!4091982 (= res!1672496 (matchR!5942 (regex!7096 (h!49293 (t!338596 rules!3870))) (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463597))))))))

(declare-fun b!4091983 () Bool)

(assert (=> b!4091983 (= e!2539458 (Some!9501 (tuple2!42805 (Token!13319 (apply!10279 (transformation!7096 (h!49293 (t!338596 rules!3870))) (seqFromList!5313 (_1!24538 lt!1463600))) (h!49293 (t!338596 rules!3870)) (size!32773 (seqFromList!5313 (_1!24538 lt!1463600))) (_1!24538 lt!1463600)) (_2!24538 lt!1463600))))))

(declare-fun lt!1463596 () Unit!63391)

(assert (=> b!4091983 (= lt!1463596 (longestMatchIsAcceptedByMatchOrIsEmpty!1435 (regex!7096 (h!49293 (t!338596 rules!3870))) input!3411))))

(declare-fun res!1672494 () Bool)

(assert (=> b!4091983 (= res!1672494 (isEmpty!26242 (_1!24538 (findLongestMatchInner!1462 (regex!7096 (h!49293 (t!338596 rules!3870))) Nil!43872 (size!32771 Nil!43872) input!3411 input!3411 (size!32771 input!3411)))))))

(assert (=> b!4091983 (=> res!1672494 e!2539460)))

(assert (=> b!4091983 e!2539460))

(declare-fun lt!1463599 () Unit!63391)

(assert (=> b!4091983 (= lt!1463599 lt!1463596)))

(declare-fun lt!1463598 () Unit!63391)

(assert (=> b!4091983 (= lt!1463598 (lemmaSemiInverse!2063 (transformation!7096 (h!49293 (t!338596 rules!3870))) (seqFromList!5313 (_1!24538 lt!1463600))))))

(declare-fun b!4091984 () Bool)

(assert (=> b!4091984 (= e!2539459 (= (size!32770 (_1!24536 (get!14388 lt!1463597))) (size!32771 (originalCharacters!7690 (_1!24536 (get!14388 lt!1463597))))))))

(declare-fun b!4091985 () Bool)

(assert (=> b!4091985 (= e!2539458 None!9501)))

(declare-fun b!4091986 () Bool)

(declare-fun res!1672493 () Bool)

(assert (=> b!4091986 (=> (not res!1672493) (not e!2539459))))

(assert (=> b!4091986 (= res!1672493 (= (++!11502 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463597)))) (_2!24536 (get!14388 lt!1463597))) input!3411))))

(assert (= (and d!1214993 c!705258) b!4091985))

(assert (= (and d!1214993 (not c!705258)) b!4091983))

(assert (= (and b!4091983 (not res!1672494)) b!4091979))

(assert (= (and d!1214993 (not res!1672498)) b!4091982))

(assert (= (and b!4091982 res!1672496) b!4091986))

(assert (= (and b!4091986 res!1672493) b!4091980))

(assert (= (and b!4091980 res!1672495) b!4091981))

(assert (= (and b!4091981 res!1672497) b!4091978))

(assert (= (and b!4091978 res!1672499) b!4091984))

(declare-fun m!4699037 () Bool)

(assert (=> b!4091982 m!4699037))

(declare-fun m!4699039 () Bool)

(assert (=> b!4091982 m!4699039))

(assert (=> b!4091982 m!4699039))

(declare-fun m!4699041 () Bool)

(assert (=> b!4091982 m!4699041))

(assert (=> b!4091982 m!4699041))

(declare-fun m!4699043 () Bool)

(assert (=> b!4091982 m!4699043))

(assert (=> b!4091979 m!4697837))

(assert (=> b!4091979 m!4697593))

(assert (=> b!4091979 m!4697837))

(assert (=> b!4091979 m!4697593))

(declare-fun m!4699045 () Bool)

(assert (=> b!4091979 m!4699045))

(declare-fun m!4699047 () Bool)

(assert (=> b!4091979 m!4699047))

(assert (=> b!4091986 m!4699037))

(assert (=> b!4091986 m!4699039))

(assert (=> b!4091986 m!4699039))

(assert (=> b!4091986 m!4699041))

(assert (=> b!4091986 m!4699041))

(declare-fun m!4699049 () Bool)

(assert (=> b!4091986 m!4699049))

(assert (=> b!4091983 m!4697837))

(assert (=> b!4091983 m!4697593))

(declare-fun m!4699051 () Bool)

(assert (=> b!4091983 m!4699051))

(declare-fun m!4699053 () Bool)

(assert (=> b!4091983 m!4699053))

(declare-fun m!4699055 () Bool)

(assert (=> b!4091983 m!4699055))

(assert (=> b!4091983 m!4699053))

(declare-fun m!4699057 () Bool)

(assert (=> b!4091983 m!4699057))

(assert (=> b!4091983 m!4699053))

(assert (=> b!4091983 m!4699053))

(declare-fun m!4699059 () Bool)

(assert (=> b!4091983 m!4699059))

(assert (=> b!4091983 m!4697837))

(assert (=> b!4091983 m!4697593))

(assert (=> b!4091983 m!4699045))

(declare-fun m!4699061 () Bool)

(assert (=> b!4091983 m!4699061))

(declare-fun m!4699063 () Bool)

(assert (=> d!1214993 m!4699063))

(declare-fun m!4699065 () Bool)

(assert (=> d!1214993 m!4699065))

(declare-fun m!4699067 () Bool)

(assert (=> d!1214993 m!4699067))

(declare-fun m!4699069 () Bool)

(assert (=> d!1214993 m!4699069))

(assert (=> b!4091980 m!4699037))

(declare-fun m!4699071 () Bool)

(assert (=> b!4091980 m!4699071))

(assert (=> b!4091980 m!4697593))

(assert (=> b!4091978 m!4699037))

(declare-fun m!4699073 () Bool)

(assert (=> b!4091978 m!4699073))

(assert (=> b!4091978 m!4699073))

(declare-fun m!4699075 () Bool)

(assert (=> b!4091978 m!4699075))

(assert (=> b!4091981 m!4699037))

(assert (=> b!4091984 m!4699037))

(declare-fun m!4699077 () Bool)

(assert (=> b!4091984 m!4699077))

(assert (=> bm!289100 d!1214993))

(assert (=> b!4091152 d!1214673))

(assert (=> b!4091152 d!1214675))

(declare-fun d!1214995 () Bool)

(assert (=> d!1214995 (= (isEmpty!26243 lt!1463157) (not ((_ is Some!9501) lt!1463157)))))

(assert (=> d!1214537 d!1214995))

(assert (=> d!1214537 d!1214855))

(assert (=> d!1214537 d!1214867))

(declare-fun bs!593367 () Bool)

(declare-fun d!1214997 () Bool)

(assert (= bs!593367 (and d!1214997 d!1214663)))

(declare-fun lambda!128037 () Int)

(assert (=> bs!593367 (= lambda!128037 lambda!128016)))

(declare-fun bs!593368 () Bool)

(assert (= bs!593368 (and d!1214997 d!1214677)))

(assert (=> bs!593368 (= lambda!128037 lambda!128018)))

(declare-fun bs!593369 () Bool)

(assert (= bs!593369 (and d!1214997 d!1214877)))

(assert (=> bs!593369 (= lambda!128037 lambda!128030)))

(assert (=> d!1214997 true))

(declare-fun lt!1463601 () Bool)

(assert (=> d!1214997 (= lt!1463601 (forall!8412 (t!338596 rules!3870) lambda!128037))))

(declare-fun e!2539463 () Bool)

(assert (=> d!1214997 (= lt!1463601 e!2539463)))

(declare-fun res!1672500 () Bool)

(assert (=> d!1214997 (=> res!1672500 e!2539463)))

(assert (=> d!1214997 (= res!1672500 (not ((_ is Cons!43873) (t!338596 rules!3870))))))

(assert (=> d!1214997 (= (rulesValidInductive!2625 thiss!26199 (t!338596 rules!3870)) lt!1463601)))

(declare-fun b!4091987 () Bool)

(declare-fun e!2539462 () Bool)

(assert (=> b!4091987 (= e!2539463 e!2539462)))

(declare-fun res!1672501 () Bool)

(assert (=> b!4091987 (=> (not res!1672501) (not e!2539462))))

(assert (=> b!4091987 (= res!1672501 (ruleValid!3016 thiss!26199 (h!49293 (t!338596 rules!3870))))))

(declare-fun b!4091988 () Bool)

(assert (=> b!4091988 (= e!2539462 (rulesValidInductive!2625 thiss!26199 (t!338596 (t!338596 rules!3870))))))

(assert (= (and d!1214997 (not res!1672500)) b!4091987))

(assert (= (and b!4091987 res!1672501) b!4091988))

(declare-fun m!4699079 () Bool)

(assert (=> d!1214997 m!4699079))

(assert (=> b!4091987 m!4699069))

(declare-fun m!4699081 () Bool)

(assert (=> b!4091988 m!4699081))

(assert (=> d!1214537 d!1214997))

(assert (=> b!4091091 d!1214809))

(declare-fun d!1214999 () Bool)

(declare-fun lt!1463602 () Int)

(assert (=> d!1214999 (>= lt!1463602 0)))

(declare-fun e!2539464 () Int)

(assert (=> d!1214999 (= lt!1463602 e!2539464)))

(declare-fun c!705259 () Bool)

(assert (=> d!1214999 (= c!705259 ((_ is Nil!43872) (originalCharacters!7690 (_1!24536 (get!14388 lt!1463160)))))))

(assert (=> d!1214999 (= (size!32771 (originalCharacters!7690 (_1!24536 (get!14388 lt!1463160)))) lt!1463602)))

(declare-fun b!4091989 () Bool)

(assert (=> b!4091989 (= e!2539464 0)))

(declare-fun b!4091990 () Bool)

(assert (=> b!4091990 (= e!2539464 (+ 1 (size!32771 (t!338595 (originalCharacters!7690 (_1!24536 (get!14388 lt!1463160)))))))))

(assert (= (and d!1214999 c!705259) b!4091989))

(assert (= (and d!1214999 (not c!705259)) b!4091990))

(declare-fun m!4699083 () Bool)

(assert (=> b!4091990 m!4699083))

(assert (=> b!4091091 d!1214999))

(declare-fun b!4091991 () Bool)

(declare-fun e!2539471 () Bool)

(declare-fun e!2539467 () Bool)

(assert (=> b!4091991 (= e!2539471 e!2539467)))

(declare-fun res!1672507 () Bool)

(assert (=> b!4091991 (=> (not res!1672507) (not e!2539467))))

(declare-fun lt!1463603 () Bool)

(assert (=> b!4091991 (= res!1672507 (not lt!1463603))))

(declare-fun b!4091992 () Bool)

(declare-fun res!1672502 () Bool)

(assert (=> b!4091992 (=> res!1672502 e!2539471)))

(declare-fun e!2539468 () Bool)

(assert (=> b!4091992 (= res!1672502 e!2539468)))

(declare-fun res!1672504 () Bool)

(assert (=> b!4091992 (=> (not res!1672504) (not e!2539468))))

(assert (=> b!4091992 (= res!1672504 lt!1463603)))

(declare-fun b!4091993 () Bool)

(assert (=> b!4091993 (= e!2539468 (= (head!8649 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463160))))) (c!705010 (regex!7096 (h!49293 rules!3870)))))))

(declare-fun b!4091994 () Bool)

(declare-fun e!2539469 () Bool)

(declare-fun call!289229 () Bool)

(assert (=> b!4091994 (= e!2539469 (= lt!1463603 call!289229))))

(declare-fun b!4091995 () Bool)

(declare-fun e!2539466 () Bool)

(assert (=> b!4091995 (= e!2539466 (nullable!4238 (regex!7096 (h!49293 rules!3870))))))

(declare-fun b!4091997 () Bool)

(declare-fun res!1672506 () Bool)

(assert (=> b!4091997 (=> (not res!1672506) (not e!2539468))))

(assert (=> b!4091997 (= res!1672506 (isEmpty!26242 (tail!6383 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463160)))))))))

(declare-fun b!4091998 () Bool)

(declare-fun e!2539465 () Bool)

(assert (=> b!4091998 (= e!2539469 e!2539465)))

(declare-fun c!705262 () Bool)

(assert (=> b!4091998 (= c!705262 ((_ is EmptyLang!12001) (regex!7096 (h!49293 rules!3870))))))

(declare-fun bm!289224 () Bool)

(assert (=> bm!289224 (= call!289229 (isEmpty!26242 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463160))))))))

(declare-fun b!4091999 () Bool)

(declare-fun e!2539470 () Bool)

(assert (=> b!4091999 (= e!2539467 e!2539470)))

(declare-fun res!1672509 () Bool)

(assert (=> b!4091999 (=> res!1672509 e!2539470)))

(assert (=> b!4091999 (= res!1672509 call!289229)))

(declare-fun b!4092000 () Bool)

(assert (=> b!4092000 (= e!2539466 (matchR!5942 (derivativeStep!3639 (regex!7096 (h!49293 rules!3870)) (head!8649 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463160)))))) (tail!6383 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463160)))))))))

(declare-fun b!4092001 () Bool)

(declare-fun res!1672505 () Bool)

(assert (=> b!4092001 (=> res!1672505 e!2539470)))

(assert (=> b!4092001 (= res!1672505 (not (isEmpty!26242 (tail!6383 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463160))))))))))

(declare-fun b!4092002 () Bool)

(assert (=> b!4092002 (= e!2539470 (not (= (head!8649 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463160))))) (c!705010 (regex!7096 (h!49293 rules!3870))))))))

(declare-fun b!4092003 () Bool)

(declare-fun res!1672503 () Bool)

(assert (=> b!4092003 (=> (not res!1672503) (not e!2539468))))

(assert (=> b!4092003 (= res!1672503 (not call!289229))))

(declare-fun b!4092004 () Bool)

(declare-fun res!1672508 () Bool)

(assert (=> b!4092004 (=> res!1672508 e!2539471)))

(assert (=> b!4092004 (= res!1672508 (not ((_ is ElementMatch!12001) (regex!7096 (h!49293 rules!3870)))))))

(assert (=> b!4092004 (= e!2539465 e!2539471)))

(declare-fun d!1215001 () Bool)

(assert (=> d!1215001 e!2539469))

(declare-fun c!705261 () Bool)

(assert (=> d!1215001 (= c!705261 ((_ is EmptyExpr!12001) (regex!7096 (h!49293 rules!3870))))))

(assert (=> d!1215001 (= lt!1463603 e!2539466)))

(declare-fun c!705260 () Bool)

(assert (=> d!1215001 (= c!705260 (isEmpty!26242 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463160))))))))

(assert (=> d!1215001 (validRegex!5438 (regex!7096 (h!49293 rules!3870)))))

(assert (=> d!1215001 (= (matchR!5942 (regex!7096 (h!49293 rules!3870)) (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463160))))) lt!1463603)))

(declare-fun b!4091996 () Bool)

(assert (=> b!4091996 (= e!2539465 (not lt!1463603))))

(assert (= (and d!1215001 c!705260) b!4091995))

(assert (= (and d!1215001 (not c!705260)) b!4092000))

(assert (= (and d!1215001 c!705261) b!4091994))

(assert (= (and d!1215001 (not c!705261)) b!4091998))

(assert (= (and b!4091998 c!705262) b!4091996))

(assert (= (and b!4091998 (not c!705262)) b!4092004))

(assert (= (and b!4092004 (not res!1672508)) b!4091992))

(assert (= (and b!4091992 res!1672504) b!4092003))

(assert (= (and b!4092003 res!1672503) b!4091997))

(assert (= (and b!4091997 res!1672506) b!4091993))

(assert (= (and b!4091992 (not res!1672502)) b!4091991))

(assert (= (and b!4091991 res!1672507) b!4091999))

(assert (= (and b!4091999 (not res!1672509)) b!4092001))

(assert (= (and b!4092001 (not res!1672505)) b!4092002))

(assert (= (or b!4091994 b!4091999 b!4092003) bm!289224))

(assert (=> d!1215001 m!4697909))

(declare-fun m!4699085 () Bool)

(assert (=> d!1215001 m!4699085))

(assert (=> d!1215001 m!4698515))

(assert (=> b!4091995 m!4698525))

(assert (=> bm!289224 m!4697909))

(assert (=> bm!289224 m!4699085))

(assert (=> b!4092000 m!4697909))

(declare-fun m!4699087 () Bool)

(assert (=> b!4092000 m!4699087))

(assert (=> b!4092000 m!4699087))

(declare-fun m!4699089 () Bool)

(assert (=> b!4092000 m!4699089))

(assert (=> b!4092000 m!4697909))

(declare-fun m!4699091 () Bool)

(assert (=> b!4092000 m!4699091))

(assert (=> b!4092000 m!4699089))

(assert (=> b!4092000 m!4699091))

(declare-fun m!4699093 () Bool)

(assert (=> b!4092000 m!4699093))

(assert (=> b!4092002 m!4697909))

(assert (=> b!4092002 m!4699087))

(assert (=> b!4091997 m!4697909))

(assert (=> b!4091997 m!4699091))

(assert (=> b!4091997 m!4699091))

(declare-fun m!4699095 () Bool)

(assert (=> b!4091997 m!4699095))

(assert (=> b!4091993 m!4697909))

(assert (=> b!4091993 m!4699087))

(assert (=> b!4092001 m!4697909))

(assert (=> b!4092001 m!4699091))

(assert (=> b!4092001 m!4699091))

(assert (=> b!4092001 m!4699095))

(assert (=> b!4091089 d!1215001))

(assert (=> b!4091089 d!1214973))

(assert (=> b!4091089 d!1214975))

(assert (=> b!4091089 d!1214809))

(assert (=> b!4090893 d!1214795))

(assert (=> b!4090893 d!1214797))

(assert (=> b!4090893 d!1214631))

(declare-fun d!1215003 () Bool)

(declare-fun lt!1463604 () Int)

(assert (=> d!1215003 (>= lt!1463604 0)))

(declare-fun e!2539472 () Int)

(assert (=> d!1215003 (= lt!1463604 e!2539472)))

(declare-fun c!705263 () Bool)

(assert (=> d!1215003 (= c!705263 ((_ is Nil!43872) (_2!24536 (get!14388 lt!1463144))))))

(assert (=> d!1215003 (= (size!32771 (_2!24536 (get!14388 lt!1463144))) lt!1463604)))

(declare-fun b!4092005 () Bool)

(assert (=> b!4092005 (= e!2539472 0)))

(declare-fun b!4092006 () Bool)

(assert (=> b!4092006 (= e!2539472 (+ 1 (size!32771 (t!338595 (_2!24536 (get!14388 lt!1463144))))))))

(assert (= (and d!1215003 c!705263) b!4092005))

(assert (= (and d!1215003 (not c!705263)) b!4092006))

(declare-fun m!4699097 () Bool)

(assert (=> b!4092006 m!4699097))

(assert (=> b!4091069 d!1215003))

(assert (=> b!4091069 d!1214773))

(assert (=> b!4091069 d!1214695))

(declare-fun d!1215005 () Bool)

(declare-fun nullableFct!1186 (Regex!12001) Bool)

(assert (=> d!1215005 (= (nullable!4238 (regex!7096 r!4213)) (nullableFct!1186 (regex!7096 r!4213)))))

(declare-fun bs!593370 () Bool)

(assert (= bs!593370 d!1215005))

(declare-fun m!4699099 () Bool)

(assert (=> bs!593370 m!4699099))

(assert (=> b!4091164 d!1215005))

(declare-fun d!1215007 () Bool)

(declare-fun e!2539473 () Bool)

(assert (=> d!1215007 e!2539473))

(declare-fun res!1672510 () Bool)

(assert (=> d!1215007 (=> (not res!1672510) (not e!2539473))))

(declare-fun lt!1463605 () List!43996)

(assert (=> d!1215007 (= res!1672510 (= (content!6762 lt!1463605) ((_ map or) (content!6762 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463086))))) (content!6762 (_2!24536 (get!14388 lt!1463086))))))))

(declare-fun e!2539474 () List!43996)

(assert (=> d!1215007 (= lt!1463605 e!2539474)))

(declare-fun c!705264 () Bool)

(assert (=> d!1215007 (= c!705264 ((_ is Nil!43872) (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463086))))))))

(assert (=> d!1215007 (= (++!11502 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463086)))) (_2!24536 (get!14388 lt!1463086))) lt!1463605)))

(declare-fun b!4092009 () Bool)

(declare-fun res!1672511 () Bool)

(assert (=> b!4092009 (=> (not res!1672511) (not e!2539473))))

(assert (=> b!4092009 (= res!1672511 (= (size!32771 lt!1463605) (+ (size!32771 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463086))))) (size!32771 (_2!24536 (get!14388 lt!1463086))))))))

(declare-fun b!4092010 () Bool)

(assert (=> b!4092010 (= e!2539473 (or (not (= (_2!24536 (get!14388 lt!1463086)) Nil!43872)) (= lt!1463605 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463086)))))))))

(declare-fun b!4092008 () Bool)

(assert (=> b!4092008 (= e!2539474 (Cons!43872 (h!49292 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463086))))) (++!11502 (t!338595 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463086))))) (_2!24536 (get!14388 lt!1463086)))))))

(declare-fun b!4092007 () Bool)

(assert (=> b!4092007 (= e!2539474 (_2!24536 (get!14388 lt!1463086)))))

(assert (= (and d!1215007 c!705264) b!4092007))

(assert (= (and d!1215007 (not c!705264)) b!4092008))

(assert (= (and d!1215007 res!1672510) b!4092009))

(assert (= (and b!4092009 res!1672511) b!4092010))

(declare-fun m!4699101 () Bool)

(assert (=> d!1215007 m!4699101))

(assert (=> d!1215007 m!4697597))

(declare-fun m!4699103 () Bool)

(assert (=> d!1215007 m!4699103))

(declare-fun m!4699105 () Bool)

(assert (=> d!1215007 m!4699105))

(declare-fun m!4699107 () Bool)

(assert (=> b!4092009 m!4699107))

(assert (=> b!4092009 m!4697597))

(declare-fun m!4699109 () Bool)

(assert (=> b!4092009 m!4699109))

(assert (=> b!4092009 m!4697591))

(declare-fun m!4699111 () Bool)

(assert (=> b!4092008 m!4699111))

(assert (=> b!4090891 d!1215007))

(assert (=> b!4090891 d!1214795))

(assert (=> b!4090891 d!1214797))

(assert (=> b!4090891 d!1214631))

(assert (=> b!4091067 d!1214773))

(declare-fun d!1215009 () Bool)

(assert (=> d!1215009 (= (apply!10279 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463144)))) (seqFromList!5313 (originalCharacters!7690 (_1!24536 (get!14388 lt!1463144))))) (dynLambda!18780 (toValue!9684 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463144))))) (seqFromList!5313 (originalCharacters!7690 (_1!24536 (get!14388 lt!1463144))))))))

(declare-fun b_lambda!119987 () Bool)

(assert (=> (not b_lambda!119987) (not d!1215009)))

(declare-fun tb!246037 () Bool)

(declare-fun t!338812 () Bool)

(assert (=> (and b!4090773 (= (toValue!9684 (transformation!7096 r!4213)) (toValue!9684 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463144)))))) t!338812) tb!246037))

(declare-fun result!298548 () Bool)

(assert (=> tb!246037 (= result!298548 (inv!21 (dynLambda!18780 (toValue!9684 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463144))))) (seqFromList!5313 (originalCharacters!7690 (_1!24536 (get!14388 lt!1463144)))))))))

(declare-fun m!4699113 () Bool)

(assert (=> tb!246037 m!4699113))

(assert (=> d!1215009 t!338812))

(declare-fun b_and!315411 () Bool)

(assert (= b_and!315373 (and (=> t!338812 result!298548) b_and!315411)))

(declare-fun tb!246039 () Bool)

(declare-fun t!338814 () Bool)

(assert (=> (and b!4090777 (= (toValue!9684 (transformation!7096 (h!49293 rules!3870))) (toValue!9684 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463144)))))) t!338814) tb!246039))

(declare-fun result!298550 () Bool)

(assert (= result!298550 result!298548))

(assert (=> d!1215009 t!338814))

(declare-fun b_and!315413 () Bool)

(assert (= b_and!315375 (and (=> t!338814 result!298550) b_and!315413)))

(declare-fun t!338816 () Bool)

(declare-fun tb!246041 () Bool)

(assert (=> (and b!4091200 (= (toValue!9684 (transformation!7096 (h!49293 (t!338596 rules!3870)))) (toValue!9684 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463144)))))) t!338816) tb!246041))

(declare-fun result!298552 () Bool)

(assert (= result!298552 result!298548))

(assert (=> d!1215009 t!338816))

(declare-fun b_and!315415 () Bool)

(assert (= b_and!315377 (and (=> t!338816 result!298552) b_and!315415)))

(assert (=> d!1215009 m!4697865))

(declare-fun m!4699115 () Bool)

(assert (=> d!1215009 m!4699115))

(assert (=> b!4091067 d!1215009))

(declare-fun d!1215011 () Bool)

(assert (=> d!1215011 (= (seqFromList!5313 (originalCharacters!7690 (_1!24536 (get!14388 lt!1463144)))) (fromListB!2436 (originalCharacters!7690 (_1!24536 (get!14388 lt!1463144)))))))

(declare-fun bs!593371 () Bool)

(assert (= bs!593371 d!1215011))

(declare-fun m!4699117 () Bool)

(assert (=> bs!593371 m!4699117))

(assert (=> b!4091067 d!1215011))

(declare-fun d!1215013 () Bool)

(assert (=> d!1215013 (= (list!16284 (dynLambda!18779 (toChars!9543 (transformation!7096 r!4213)) (dynLambda!18780 (toValue!9684 (transformation!7096 r!4213)) lt!1463039))) (list!16286 (c!705011 (dynLambda!18779 (toChars!9543 (transformation!7096 r!4213)) (dynLambda!18780 (toValue!9684 (transformation!7096 r!4213)) lt!1463039)))))))

(declare-fun bs!593372 () Bool)

(assert (= bs!593372 d!1215013))

(declare-fun m!4699119 () Bool)

(assert (=> bs!593372 m!4699119))

(assert (=> d!1214479 d!1215013))

(declare-fun d!1215015 () Bool)

(assert (=> d!1215015 (= (list!16284 lt!1463039) (list!16286 (c!705011 lt!1463039)))))

(declare-fun bs!593373 () Bool)

(assert (= bs!593373 d!1215015))

(declare-fun m!4699121 () Bool)

(assert (=> bs!593373 m!4699121))

(assert (=> d!1214479 d!1215015))

(declare-fun d!1215017 () Bool)

(declare-fun dynLambda!18784 (Int BalanceConc!26208) Bool)

(assert (=> d!1215017 (dynLambda!18784 lambda!128001 lt!1463039)))

(declare-fun lt!1463608 () Unit!63391)

(declare-fun choose!24995 (Int BalanceConc!26208) Unit!63391)

(assert (=> d!1215017 (= lt!1463608 (choose!24995 lambda!128001 lt!1463039))))

(assert (=> d!1215017 (Forall!1514 lambda!128001)))

(assert (=> d!1215017 (= (ForallOf!889 lambda!128001 lt!1463039) lt!1463608)))

(declare-fun b_lambda!119989 () Bool)

(assert (=> (not b_lambda!119989) (not d!1215017)))

(declare-fun bs!593374 () Bool)

(assert (= bs!593374 d!1215017))

(declare-fun m!4699123 () Bool)

(assert (=> bs!593374 m!4699123))

(declare-fun m!4699125 () Bool)

(assert (=> bs!593374 m!4699125))

(declare-fun m!4699127 () Bool)

(assert (=> bs!593374 m!4699127))

(assert (=> d!1214479 d!1215017))

(declare-fun b!4092011 () Bool)

(declare-fun res!1672514 () Bool)

(declare-fun e!2539476 () Bool)

(assert (=> b!4092011 (=> (not res!1672514) (not e!2539476))))

(declare-fun lt!1463612 () Option!9502)

(assert (=> b!4092011 (= res!1672514 (= (value!222888 (_1!24536 (get!14388 lt!1463612))) (apply!10279 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463612)))) (seqFromList!5313 (originalCharacters!7690 (_1!24536 (get!14388 lt!1463612)))))))))

(declare-fun b!4092012 () Bool)

(declare-fun e!2539477 () Option!9502)

(declare-fun lt!1463610 () Option!9502)

(declare-fun lt!1463613 () Option!9502)

(assert (=> b!4092012 (= e!2539477 (ite (and ((_ is None!9501) lt!1463610) ((_ is None!9501) lt!1463613)) None!9501 (ite ((_ is None!9501) lt!1463613) lt!1463610 (ite ((_ is None!9501) lt!1463610) lt!1463613 (ite (>= (size!32770 (_1!24536 (v!39989 lt!1463610))) (size!32770 (_1!24536 (v!39989 lt!1463613)))) lt!1463610 lt!1463613)))))))

(declare-fun call!289230 () Option!9502)

(assert (=> b!4092012 (= lt!1463610 call!289230)))

(assert (=> b!4092012 (= lt!1463613 (maxPrefix!3975 thiss!26199 (t!338596 (t!338596 (t!338596 rules!3870))) input!3411))))

(declare-fun b!4092013 () Bool)

(declare-fun e!2539478 () Bool)

(assert (=> b!4092013 (= e!2539478 e!2539476)))

(declare-fun res!1672518 () Bool)

(assert (=> b!4092013 (=> (not res!1672518) (not e!2539476))))

(assert (=> b!4092013 (= res!1672518 (isDefined!7192 lt!1463612))))

(declare-fun bm!289225 () Bool)

(assert (=> bm!289225 (= call!289230 (maxPrefixOneRule!2957 thiss!26199 (h!49293 (t!338596 (t!338596 rules!3870))) input!3411))))

(declare-fun b!4092014 () Bool)

(declare-fun res!1672515 () Bool)

(assert (=> b!4092014 (=> (not res!1672515) (not e!2539476))))

(assert (=> b!4092014 (= res!1672515 (< (size!32771 (_2!24536 (get!14388 lt!1463612))) (size!32771 input!3411)))))

(declare-fun b!4092015 () Bool)

(assert (=> b!4092015 (= e!2539476 (contains!8775 (t!338596 (t!338596 rules!3870)) (rule!10238 (_1!24536 (get!14388 lt!1463612)))))))

(declare-fun d!1215019 () Bool)

(assert (=> d!1215019 e!2539478))

(declare-fun res!1672513 () Bool)

(assert (=> d!1215019 (=> res!1672513 e!2539478)))

(assert (=> d!1215019 (= res!1672513 (isEmpty!26243 lt!1463612))))

(assert (=> d!1215019 (= lt!1463612 e!2539477)))

(declare-fun c!705265 () Bool)

(assert (=> d!1215019 (= c!705265 (and ((_ is Cons!43873) (t!338596 (t!338596 rules!3870))) ((_ is Nil!43873) (t!338596 (t!338596 (t!338596 rules!3870))))))))

(declare-fun lt!1463609 () Unit!63391)

(declare-fun lt!1463611 () Unit!63391)

(assert (=> d!1215019 (= lt!1463609 lt!1463611)))

(assert (=> d!1215019 (isPrefix!4143 input!3411 input!3411)))

(assert (=> d!1215019 (= lt!1463611 (lemmaIsPrefixRefl!2694 input!3411 input!3411))))

(assert (=> d!1215019 (rulesValidInductive!2625 thiss!26199 (t!338596 (t!338596 rules!3870)))))

(assert (=> d!1215019 (= (maxPrefix!3975 thiss!26199 (t!338596 (t!338596 rules!3870)) input!3411) lt!1463612)))

(declare-fun b!4092016 () Bool)

(declare-fun res!1672516 () Bool)

(assert (=> b!4092016 (=> (not res!1672516) (not e!2539476))))

(assert (=> b!4092016 (= res!1672516 (= (++!11502 (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463612)))) (_2!24536 (get!14388 lt!1463612))) input!3411))))

(declare-fun b!4092017 () Bool)

(declare-fun res!1672517 () Bool)

(assert (=> b!4092017 (=> (not res!1672517) (not e!2539476))))

(assert (=> b!4092017 (= res!1672517 (matchR!5942 (regex!7096 (rule!10238 (_1!24536 (get!14388 lt!1463612)))) (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463612))))))))

(declare-fun b!4092018 () Bool)

(declare-fun res!1672512 () Bool)

(assert (=> b!4092018 (=> (not res!1672512) (not e!2539476))))

(assert (=> b!4092018 (= res!1672512 (= (list!16284 (charsOf!4856 (_1!24536 (get!14388 lt!1463612)))) (originalCharacters!7690 (_1!24536 (get!14388 lt!1463612)))))))

(declare-fun b!4092019 () Bool)

(assert (=> b!4092019 (= e!2539477 call!289230)))

(assert (= (and d!1215019 c!705265) b!4092019))

(assert (= (and d!1215019 (not c!705265)) b!4092012))

(assert (= (or b!4092019 b!4092012) bm!289225))

(assert (= (and d!1215019 (not res!1672513)) b!4092013))

(assert (= (and b!4092013 res!1672518) b!4092018))

(assert (= (and b!4092018 res!1672512) b!4092014))

(assert (= (and b!4092014 res!1672515) b!4092016))

(assert (= (and b!4092016 res!1672516) b!4092011))

(assert (= (and b!4092011 res!1672514) b!4092017))

(assert (= (and b!4092017 res!1672517) b!4092015))

(declare-fun m!4699129 () Bool)

(assert (=> d!1215019 m!4699129))

(assert (=> d!1215019 m!4697583))

(assert (=> d!1215019 m!4697585))

(assert (=> d!1215019 m!4699081))

(declare-fun m!4699131 () Bool)

(assert (=> b!4092014 m!4699131))

(declare-fun m!4699133 () Bool)

(assert (=> b!4092014 m!4699133))

(assert (=> b!4092014 m!4697593))

(assert (=> b!4092016 m!4699131))

(declare-fun m!4699135 () Bool)

(assert (=> b!4092016 m!4699135))

(assert (=> b!4092016 m!4699135))

(declare-fun m!4699137 () Bool)

(assert (=> b!4092016 m!4699137))

(assert (=> b!4092016 m!4699137))

(declare-fun m!4699139 () Bool)

(assert (=> b!4092016 m!4699139))

(declare-fun m!4699141 () Bool)

(assert (=> b!4092012 m!4699141))

(assert (=> b!4092018 m!4699131))

(assert (=> b!4092018 m!4699135))

(assert (=> b!4092018 m!4699135))

(assert (=> b!4092018 m!4699137))

(assert (=> b!4092015 m!4699131))

(declare-fun m!4699143 () Bool)

(assert (=> b!4092015 m!4699143))

(declare-fun m!4699145 () Bool)

(assert (=> bm!289225 m!4699145))

(declare-fun m!4699147 () Bool)

(assert (=> b!4092013 m!4699147))

(assert (=> b!4092011 m!4699131))

(declare-fun m!4699149 () Bool)

(assert (=> b!4092011 m!4699149))

(assert (=> b!4092011 m!4699149))

(declare-fun m!4699151 () Bool)

(assert (=> b!4092011 m!4699151))

(assert (=> b!4092017 m!4699131))

(assert (=> b!4092017 m!4699135))

(assert (=> b!4092017 m!4699135))

(assert (=> b!4092017 m!4699137))

(assert (=> b!4092017 m!4699137))

(declare-fun m!4699153 () Bool)

(assert (=> b!4092017 m!4699153))

(assert (=> b!4091077 d!1215019))

(assert (=> b!4091150 d!1215005))

(declare-fun d!1215021 () Bool)

(assert (=> d!1215021 (= (inv!58571 (tag!7956 (h!49293 (t!338596 rules!3870)))) (= (mod (str.len (value!222887 (tag!7956 (h!49293 (t!338596 rules!3870))))) 2) 0))))

(assert (=> b!4091199 d!1215021))

(declare-fun d!1215023 () Bool)

(declare-fun res!1672519 () Bool)

(declare-fun e!2539479 () Bool)

(assert (=> d!1215023 (=> (not res!1672519) (not e!2539479))))

(assert (=> d!1215023 (= res!1672519 (semiInverseModEq!3050 (toChars!9543 (transformation!7096 (h!49293 (t!338596 rules!3870)))) (toValue!9684 (transformation!7096 (h!49293 (t!338596 rules!3870))))))))

(assert (=> d!1215023 (= (inv!58574 (transformation!7096 (h!49293 (t!338596 rules!3870)))) e!2539479)))

(declare-fun b!4092020 () Bool)

(assert (=> b!4092020 (= e!2539479 (equivClasses!2949 (toChars!9543 (transformation!7096 (h!49293 (t!338596 rules!3870)))) (toValue!9684 (transformation!7096 (h!49293 (t!338596 rules!3870))))))))

(assert (= (and d!1215023 res!1672519) b!4092020))

(declare-fun m!4699155 () Bool)

(assert (=> d!1215023 m!4699155))

(declare-fun m!4699157 () Bool)

(assert (=> b!4092020 m!4699157))

(assert (=> b!4091199 d!1215023))

(assert (=> b!4091148 d!1214941))

(declare-fun d!1215025 () Bool)

(declare-fun lt!1463614 () Int)

(assert (=> d!1215025 (>= lt!1463614 0)))

(declare-fun e!2539480 () Int)

(assert (=> d!1215025 (= lt!1463614 e!2539480)))

(declare-fun c!705266 () Bool)

(assert (=> d!1215025 (= c!705266 ((_ is Nil!43872) (_2!24536 (get!14388 lt!1463160))))))

(assert (=> d!1215025 (= (size!32771 (_2!24536 (get!14388 lt!1463160))) lt!1463614)))

(declare-fun b!4092021 () Bool)

(assert (=> b!4092021 (= e!2539480 0)))

(declare-fun b!4092022 () Bool)

(assert (=> b!4092022 (= e!2539480 (+ 1 (size!32771 (t!338595 (_2!24536 (get!14388 lt!1463160))))))))

(assert (= (and d!1215025 c!705266) b!4092021))

(assert (= (and d!1215025 (not c!705266)) b!4092022))

(declare-fun m!4699159 () Bool)

(assert (=> b!4092022 m!4699159))

(assert (=> b!4091087 d!1215025))

(assert (=> b!4091087 d!1214809))

(assert (=> b!4091087 d!1214695))

(assert (=> b!4091085 d!1214809))

(declare-fun d!1215027 () Bool)

(assert (=> d!1215027 (= (apply!10279 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463160)))) (seqFromList!5313 (originalCharacters!7690 (_1!24536 (get!14388 lt!1463160))))) (dynLambda!18780 (toValue!9684 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463160))))) (seqFromList!5313 (originalCharacters!7690 (_1!24536 (get!14388 lt!1463160))))))))

(declare-fun b_lambda!119991 () Bool)

(assert (=> (not b_lambda!119991) (not d!1215027)))

(declare-fun t!338818 () Bool)

(declare-fun tb!246043 () Bool)

(assert (=> (and b!4090773 (= (toValue!9684 (transformation!7096 r!4213)) (toValue!9684 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463160)))))) t!338818) tb!246043))

(declare-fun result!298554 () Bool)

(assert (=> tb!246043 (= result!298554 (inv!21 (dynLambda!18780 (toValue!9684 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463160))))) (seqFromList!5313 (originalCharacters!7690 (_1!24536 (get!14388 lt!1463160)))))))))

(declare-fun m!4699161 () Bool)

(assert (=> tb!246043 m!4699161))

(assert (=> d!1215027 t!338818))

(declare-fun b_and!315417 () Bool)

(assert (= b_and!315411 (and (=> t!338818 result!298554) b_and!315417)))

(declare-fun tb!246045 () Bool)

(declare-fun t!338820 () Bool)

(assert (=> (and b!4090777 (= (toValue!9684 (transformation!7096 (h!49293 rules!3870))) (toValue!9684 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463160)))))) t!338820) tb!246045))

(declare-fun result!298556 () Bool)

(assert (= result!298556 result!298554))

(assert (=> d!1215027 t!338820))

(declare-fun b_and!315419 () Bool)

(assert (= b_and!315413 (and (=> t!338820 result!298556) b_and!315419)))

(declare-fun t!338822 () Bool)

(declare-fun tb!246047 () Bool)

(assert (=> (and b!4091200 (= (toValue!9684 (transformation!7096 (h!49293 (t!338596 rules!3870)))) (toValue!9684 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463160)))))) t!338822) tb!246047))

(declare-fun result!298558 () Bool)

(assert (= result!298558 result!298554))

(assert (=> d!1215027 t!338822))

(declare-fun b_and!315421 () Bool)

(assert (= b_and!315415 (and (=> t!338822 result!298558) b_and!315421)))

(assert (=> d!1215027 m!4697941))

(declare-fun m!4699163 () Bool)

(assert (=> d!1215027 m!4699163))

(assert (=> b!4091085 d!1215027))

(declare-fun d!1215029 () Bool)

(assert (=> d!1215029 (= (seqFromList!5313 (originalCharacters!7690 (_1!24536 (get!14388 lt!1463160)))) (fromListB!2436 (originalCharacters!7690 (_1!24536 (get!14388 lt!1463160)))))))

(declare-fun bs!593375 () Bool)

(assert (= bs!593375 d!1215029))

(declare-fun m!4699165 () Bool)

(assert (=> bs!593375 m!4699165))

(assert (=> b!4091085 d!1215029))

(declare-fun d!1215031 () Bool)

(declare-fun lt!1463615 () Int)

(assert (=> d!1215031 (>= lt!1463615 0)))

(declare-fun e!2539482 () Int)

(assert (=> d!1215031 (= lt!1463615 e!2539482)))

(declare-fun c!705267 () Bool)

(assert (=> d!1215031 (= c!705267 ((_ is Nil!43872) lt!1463169))))

(assert (=> d!1215031 (= (size!32771 lt!1463169) lt!1463615)))

(declare-fun b!4092023 () Bool)

(assert (=> b!4092023 (= e!2539482 0)))

(declare-fun b!4092024 () Bool)

(assert (=> b!4092024 (= e!2539482 (+ 1 (size!32771 (t!338595 lt!1463169))))))

(assert (= (and d!1215031 c!705267) b!4092023))

(assert (= (and d!1215031 (not c!705267)) b!4092024))

(declare-fun m!4699167 () Bool)

(assert (=> b!4092024 m!4699167))

(assert (=> b!4091107 d!1215031))

(assert (=> b!4091107 d!1214475))

(declare-fun d!1215033 () Bool)

(declare-fun lt!1463616 () Int)

(assert (=> d!1215033 (>= lt!1463616 0)))

(declare-fun e!2539483 () Int)

(assert (=> d!1215033 (= lt!1463616 e!2539483)))

(declare-fun c!705268 () Bool)

(assert (=> d!1215033 (= c!705268 ((_ is Nil!43872) suffix!1518))))

(assert (=> d!1215033 (= (size!32771 suffix!1518) lt!1463616)))

(declare-fun b!4092025 () Bool)

(assert (=> b!4092025 (= e!2539483 0)))

(declare-fun b!4092026 () Bool)

(assert (=> b!4092026 (= e!2539483 (+ 1 (size!32771 (t!338595 suffix!1518))))))

(assert (= (and d!1215033 c!705268) b!4092025))

(assert (= (and d!1215033 (not c!705268)) b!4092026))

(declare-fun m!4699169 () Bool)

(assert (=> b!4092026 m!4699169))

(assert (=> b!4091107 d!1215033))

(declare-fun d!1215035 () Bool)

(declare-fun lt!1463617 () Int)

(assert (=> d!1215035 (>= lt!1463617 0)))

(declare-fun e!2539484 () Int)

(assert (=> d!1215035 (= lt!1463617 e!2539484)))

(declare-fun c!705269 () Bool)

(assert (=> d!1215035 (= c!705269 ((_ is Nil!43872) (_2!24536 (get!14388 lt!1463086))))))

(assert (=> d!1215035 (= (size!32771 (_2!24536 (get!14388 lt!1463086))) lt!1463617)))

(declare-fun b!4092027 () Bool)

(assert (=> b!4092027 (= e!2539484 0)))

(declare-fun b!4092028 () Bool)

(assert (=> b!4092028 (= e!2539484 (+ 1 (size!32771 (t!338595 (_2!24536 (get!14388 lt!1463086))))))))

(assert (= (and d!1215035 c!705269) b!4092027))

(assert (= (and d!1215035 (not c!705269)) b!4092028))

(declare-fun m!4699171 () Bool)

(assert (=> b!4092028 m!4699171))

(assert (=> b!4090889 d!1215035))

(assert (=> b!4090889 d!1214631))

(assert (=> b!4090889 d!1214695))

(declare-fun b!4092037 () Bool)

(declare-fun e!2539489 () Bool)

(declare-fun tp!1238665 () Bool)

(declare-fun tp!1238667 () Bool)

(assert (=> b!4092037 (= e!2539489 (and (inv!58578 (left!32977 (c!705011 (dynLambda!18779 (toChars!9543 (transformation!7096 r!4213)) (dynLambda!18780 (toValue!9684 (transformation!7096 r!4213)) lt!1463039))))) tp!1238667 (inv!58578 (right!33307 (c!705011 (dynLambda!18779 (toChars!9543 (transformation!7096 r!4213)) (dynLambda!18780 (toValue!9684 (transformation!7096 r!4213)) lt!1463039))))) tp!1238665))))

(declare-fun b!4092039 () Bool)

(declare-fun e!2539490 () Bool)

(declare-fun tp!1238666 () Bool)

(assert (=> b!4092039 (= e!2539490 tp!1238666)))

(declare-fun b!4092038 () Bool)

(declare-fun inv!58584 (IArray!26619) Bool)

(assert (=> b!4092038 (= e!2539489 (and (inv!58584 (xs!16613 (c!705011 (dynLambda!18779 (toChars!9543 (transformation!7096 r!4213)) (dynLambda!18780 (toValue!9684 (transformation!7096 r!4213)) lt!1463039))))) e!2539490))))

(assert (=> b!4090969 (= tp!1238496 (and (inv!58578 (c!705011 (dynLambda!18779 (toChars!9543 (transformation!7096 r!4213)) (dynLambda!18780 (toValue!9684 (transformation!7096 r!4213)) lt!1463039)))) e!2539489))))

(assert (= (and b!4090969 ((_ is Node!13307) (c!705011 (dynLambda!18779 (toChars!9543 (transformation!7096 r!4213)) (dynLambda!18780 (toValue!9684 (transformation!7096 r!4213)) lt!1463039))))) b!4092037))

(assert (= b!4092038 b!4092039))

(assert (= (and b!4090969 ((_ is Leaf!20570) (c!705011 (dynLambda!18779 (toChars!9543 (transformation!7096 r!4213)) (dynLambda!18780 (toValue!9684 (transformation!7096 r!4213)) lt!1463039))))) b!4092038))

(declare-fun m!4699173 () Bool)

(assert (=> b!4092037 m!4699173))

(declare-fun m!4699175 () Bool)

(assert (=> b!4092037 m!4699175))

(declare-fun m!4699177 () Bool)

(assert (=> b!4092038 m!4699177))

(assert (=> b!4090969 m!4697707))

(declare-fun b!4092040 () Bool)

(declare-fun e!2539491 () Bool)

(declare-fun tp!1238668 () Bool)

(assert (=> b!4092040 (= e!2539491 (and tp_is_empty!21005 tp!1238668))))

(assert (=> b!4091201 (= tp!1238571 e!2539491)))

(assert (= (and b!4091201 ((_ is Cons!43872) (t!338595 (t!338595 input!3411)))) b!4092040))

(declare-fun e!2539492 () Bool)

(assert (=> b!4091189 (= tp!1238557 e!2539492)))

(declare-fun b!4092041 () Bool)

(assert (=> b!4092041 (= e!2539492 tp_is_empty!21005)))

(declare-fun b!4092042 () Bool)

(declare-fun tp!1238673 () Bool)

(declare-fun tp!1238671 () Bool)

(assert (=> b!4092042 (= e!2539492 (and tp!1238673 tp!1238671))))

(declare-fun b!4092043 () Bool)

(declare-fun tp!1238670 () Bool)

(assert (=> b!4092043 (= e!2539492 tp!1238670)))

(declare-fun b!4092044 () Bool)

(declare-fun tp!1238672 () Bool)

(declare-fun tp!1238669 () Bool)

(assert (=> b!4092044 (= e!2539492 (and tp!1238672 tp!1238669))))

(assert (= (and b!4091189 ((_ is ElementMatch!12001) (regOne!24515 (regex!7096 (h!49293 rules!3870))))) b!4092041))

(assert (= (and b!4091189 ((_ is Concat!19328) (regOne!24515 (regex!7096 (h!49293 rules!3870))))) b!4092042))

(assert (= (and b!4091189 ((_ is Star!12001) (regOne!24515 (regex!7096 (h!49293 rules!3870))))) b!4092043))

(assert (= (and b!4091189 ((_ is Union!12001) (regOne!24515 (regex!7096 (h!49293 rules!3870))))) b!4092044))

(declare-fun e!2539493 () Bool)

(assert (=> b!4091189 (= tp!1238554 e!2539493)))

(declare-fun b!4092045 () Bool)

(assert (=> b!4092045 (= e!2539493 tp_is_empty!21005)))

(declare-fun b!4092046 () Bool)

(declare-fun tp!1238678 () Bool)

(declare-fun tp!1238676 () Bool)

(assert (=> b!4092046 (= e!2539493 (and tp!1238678 tp!1238676))))

(declare-fun b!4092047 () Bool)

(declare-fun tp!1238675 () Bool)

(assert (=> b!4092047 (= e!2539493 tp!1238675)))

(declare-fun b!4092048 () Bool)

(declare-fun tp!1238677 () Bool)

(declare-fun tp!1238674 () Bool)

(assert (=> b!4092048 (= e!2539493 (and tp!1238677 tp!1238674))))

(assert (= (and b!4091189 ((_ is ElementMatch!12001) (regTwo!24515 (regex!7096 (h!49293 rules!3870))))) b!4092045))

(assert (= (and b!4091189 ((_ is Concat!19328) (regTwo!24515 (regex!7096 (h!49293 rules!3870))))) b!4092046))

(assert (= (and b!4091189 ((_ is Star!12001) (regTwo!24515 (regex!7096 (h!49293 rules!3870))))) b!4092047))

(assert (= (and b!4091189 ((_ is Union!12001) (regTwo!24515 (regex!7096 (h!49293 rules!3870))))) b!4092048))

(declare-fun b!4092049 () Bool)

(declare-fun e!2539494 () Bool)

(declare-fun tp!1238679 () Bool)

(assert (=> b!4092049 (= e!2539494 (and tp_is_empty!21005 tp!1238679))))

(assert (=> b!4091185 (= tp!1238553 e!2539494)))

(assert (= (and b!4091185 ((_ is Cons!43872) (t!338595 (t!338595 suffix!1518)))) b!4092049))

(declare-fun e!2539495 () Bool)

(assert (=> b!4091188 (= tp!1238555 e!2539495)))

(declare-fun b!4092050 () Bool)

(assert (=> b!4092050 (= e!2539495 tp_is_empty!21005)))

(declare-fun b!4092051 () Bool)

(declare-fun tp!1238684 () Bool)

(declare-fun tp!1238682 () Bool)

(assert (=> b!4092051 (= e!2539495 (and tp!1238684 tp!1238682))))

(declare-fun b!4092052 () Bool)

(declare-fun tp!1238681 () Bool)

(assert (=> b!4092052 (= e!2539495 tp!1238681)))

(declare-fun b!4092053 () Bool)

(declare-fun tp!1238683 () Bool)

(declare-fun tp!1238680 () Bool)

(assert (=> b!4092053 (= e!2539495 (and tp!1238683 tp!1238680))))

(assert (= (and b!4091188 ((_ is ElementMatch!12001) (reg!12330 (regex!7096 (h!49293 rules!3870))))) b!4092050))

(assert (= (and b!4091188 ((_ is Concat!19328) (reg!12330 (regex!7096 (h!49293 rules!3870))))) b!4092051))

(assert (= (and b!4091188 ((_ is Star!12001) (reg!12330 (regex!7096 (h!49293 rules!3870))))) b!4092052))

(assert (= (and b!4091188 ((_ is Union!12001) (reg!12330 (regex!7096 (h!49293 rules!3870))))) b!4092053))

(declare-fun e!2539496 () Bool)

(assert (=> b!4091187 (= tp!1238558 e!2539496)))

(declare-fun b!4092054 () Bool)

(assert (=> b!4092054 (= e!2539496 tp_is_empty!21005)))

(declare-fun b!4092055 () Bool)

(declare-fun tp!1238689 () Bool)

(declare-fun tp!1238687 () Bool)

(assert (=> b!4092055 (= e!2539496 (and tp!1238689 tp!1238687))))

(declare-fun b!4092056 () Bool)

(declare-fun tp!1238686 () Bool)

(assert (=> b!4092056 (= e!2539496 tp!1238686)))

(declare-fun b!4092057 () Bool)

(declare-fun tp!1238688 () Bool)

(declare-fun tp!1238685 () Bool)

(assert (=> b!4092057 (= e!2539496 (and tp!1238688 tp!1238685))))

(assert (= (and b!4091187 ((_ is ElementMatch!12001) (regOne!24514 (regex!7096 (h!49293 rules!3870))))) b!4092054))

(assert (= (and b!4091187 ((_ is Concat!19328) (regOne!24514 (regex!7096 (h!49293 rules!3870))))) b!4092055))

(assert (= (and b!4091187 ((_ is Star!12001) (regOne!24514 (regex!7096 (h!49293 rules!3870))))) b!4092056))

(assert (= (and b!4091187 ((_ is Union!12001) (regOne!24514 (regex!7096 (h!49293 rules!3870))))) b!4092057))

(declare-fun e!2539497 () Bool)

(assert (=> b!4091187 (= tp!1238556 e!2539497)))

(declare-fun b!4092058 () Bool)

(assert (=> b!4092058 (= e!2539497 tp_is_empty!21005)))

(declare-fun b!4092059 () Bool)

(declare-fun tp!1238694 () Bool)

(declare-fun tp!1238692 () Bool)

(assert (=> b!4092059 (= e!2539497 (and tp!1238694 tp!1238692))))

(declare-fun b!4092060 () Bool)

(declare-fun tp!1238691 () Bool)

(assert (=> b!4092060 (= e!2539497 tp!1238691)))

(declare-fun b!4092061 () Bool)

(declare-fun tp!1238693 () Bool)

(declare-fun tp!1238690 () Bool)

(assert (=> b!4092061 (= e!2539497 (and tp!1238693 tp!1238690))))

(assert (= (and b!4091187 ((_ is ElementMatch!12001) (regTwo!24514 (regex!7096 (h!49293 rules!3870))))) b!4092058))

(assert (= (and b!4091187 ((_ is Concat!19328) (regTwo!24514 (regex!7096 (h!49293 rules!3870))))) b!4092059))

(assert (= (and b!4091187 ((_ is Star!12001) (regTwo!24514 (regex!7096 (h!49293 rules!3870))))) b!4092060))

(assert (= (and b!4091187 ((_ is Union!12001) (regTwo!24514 (regex!7096 (h!49293 rules!3870))))) b!4092061))

(declare-fun e!2539498 () Bool)

(assert (=> b!4091199 (= tp!1238568 e!2539498)))

(declare-fun b!4092062 () Bool)

(assert (=> b!4092062 (= e!2539498 tp_is_empty!21005)))

(declare-fun b!4092063 () Bool)

(declare-fun tp!1238699 () Bool)

(declare-fun tp!1238697 () Bool)

(assert (=> b!4092063 (= e!2539498 (and tp!1238699 tp!1238697))))

(declare-fun b!4092064 () Bool)

(declare-fun tp!1238696 () Bool)

(assert (=> b!4092064 (= e!2539498 tp!1238696)))

(declare-fun b!4092065 () Bool)

(declare-fun tp!1238698 () Bool)

(declare-fun tp!1238695 () Bool)

(assert (=> b!4092065 (= e!2539498 (and tp!1238698 tp!1238695))))

(assert (= (and b!4091199 ((_ is ElementMatch!12001) (regex!7096 (h!49293 (t!338596 rules!3870))))) b!4092062))

(assert (= (and b!4091199 ((_ is Concat!19328) (regex!7096 (h!49293 (t!338596 rules!3870))))) b!4092063))

(assert (= (and b!4091199 ((_ is Star!12001) (regex!7096 (h!49293 (t!338596 rules!3870))))) b!4092064))

(assert (= (and b!4091199 ((_ is Union!12001) (regex!7096 (h!49293 (t!338596 rules!3870))))) b!4092065))

(declare-fun e!2539499 () Bool)

(declare-fun tp!1238702 () Bool)

(declare-fun b!4092066 () Bool)

(declare-fun tp!1238700 () Bool)

(assert (=> b!4092066 (= e!2539499 (and (inv!58578 (left!32977 (c!705011 (dynLambda!18779 (toChars!9543 (transformation!7096 (rule!10238 lt!1463041))) (value!222888 lt!1463041))))) tp!1238702 (inv!58578 (right!33307 (c!705011 (dynLambda!18779 (toChars!9543 (transformation!7096 (rule!10238 lt!1463041))) (value!222888 lt!1463041))))) tp!1238700))))

(declare-fun b!4092068 () Bool)

(declare-fun e!2539500 () Bool)

(declare-fun tp!1238701 () Bool)

(assert (=> b!4092068 (= e!2539500 tp!1238701)))

(declare-fun b!4092067 () Bool)

(assert (=> b!4092067 (= e!2539499 (and (inv!58584 (xs!16613 (c!705011 (dynLambda!18779 (toChars!9543 (transformation!7096 (rule!10238 lt!1463041))) (value!222888 lt!1463041))))) e!2539500))))

(assert (=> b!4090996 (= tp!1238497 (and (inv!58578 (c!705011 (dynLambda!18779 (toChars!9543 (transformation!7096 (rule!10238 lt!1463041))) (value!222888 lt!1463041)))) e!2539499))))

(assert (= (and b!4090996 ((_ is Node!13307) (c!705011 (dynLambda!18779 (toChars!9543 (transformation!7096 (rule!10238 lt!1463041))) (value!222888 lt!1463041))))) b!4092066))

(assert (= b!4092067 b!4092068))

(assert (= (and b!4090996 ((_ is Leaf!20570) (c!705011 (dynLambda!18779 (toChars!9543 (transformation!7096 (rule!10238 lt!1463041))) (value!222888 lt!1463041))))) b!4092067))

(declare-fun m!4699179 () Bool)

(assert (=> b!4092066 m!4699179))

(declare-fun m!4699181 () Bool)

(assert (=> b!4092066 m!4699181))

(declare-fun m!4699183 () Bool)

(assert (=> b!4092067 m!4699183))

(assert (=> b!4090996 m!4697755))

(declare-fun e!2539501 () Bool)

(assert (=> b!4091180 (= tp!1238549 e!2539501)))

(declare-fun b!4092069 () Bool)

(assert (=> b!4092069 (= e!2539501 tp_is_empty!21005)))

(declare-fun b!4092070 () Bool)

(declare-fun tp!1238707 () Bool)

(declare-fun tp!1238705 () Bool)

(assert (=> b!4092070 (= e!2539501 (and tp!1238707 tp!1238705))))

(declare-fun b!4092071 () Bool)

(declare-fun tp!1238704 () Bool)

(assert (=> b!4092071 (= e!2539501 tp!1238704)))

(declare-fun b!4092072 () Bool)

(declare-fun tp!1238706 () Bool)

(declare-fun tp!1238703 () Bool)

(assert (=> b!4092072 (= e!2539501 (and tp!1238706 tp!1238703))))

(assert (= (and b!4091180 ((_ is ElementMatch!12001) (regOne!24515 (regex!7096 r!4213)))) b!4092069))

(assert (= (and b!4091180 ((_ is Concat!19328) (regOne!24515 (regex!7096 r!4213)))) b!4092070))

(assert (= (and b!4091180 ((_ is Star!12001) (regOne!24515 (regex!7096 r!4213)))) b!4092071))

(assert (= (and b!4091180 ((_ is Union!12001) (regOne!24515 (regex!7096 r!4213)))) b!4092072))

(declare-fun e!2539502 () Bool)

(assert (=> b!4091180 (= tp!1238546 e!2539502)))

(declare-fun b!4092073 () Bool)

(assert (=> b!4092073 (= e!2539502 tp_is_empty!21005)))

(declare-fun b!4092074 () Bool)

(declare-fun tp!1238712 () Bool)

(declare-fun tp!1238710 () Bool)

(assert (=> b!4092074 (= e!2539502 (and tp!1238712 tp!1238710))))

(declare-fun b!4092075 () Bool)

(declare-fun tp!1238709 () Bool)

(assert (=> b!4092075 (= e!2539502 tp!1238709)))

(declare-fun b!4092076 () Bool)

(declare-fun tp!1238711 () Bool)

(declare-fun tp!1238708 () Bool)

(assert (=> b!4092076 (= e!2539502 (and tp!1238711 tp!1238708))))

(assert (= (and b!4091180 ((_ is ElementMatch!12001) (regTwo!24515 (regex!7096 r!4213)))) b!4092073))

(assert (= (and b!4091180 ((_ is Concat!19328) (regTwo!24515 (regex!7096 r!4213)))) b!4092074))

(assert (= (and b!4091180 ((_ is Star!12001) (regTwo!24515 (regex!7096 r!4213)))) b!4092075))

(assert (= (and b!4091180 ((_ is Union!12001) (regTwo!24515 (regex!7096 r!4213)))) b!4092076))

(declare-fun b!4092077 () Bool)

(declare-fun e!2539503 () Bool)

(declare-fun tp!1238713 () Bool)

(assert (=> b!4092077 (= e!2539503 (and tp_is_empty!21005 tp!1238713))))

(assert (=> b!4091202 (= tp!1238572 e!2539503)))

(assert (= (and b!4091202 ((_ is Cons!43872) (t!338595 (t!338595 p!2988)))) b!4092077))

(declare-fun b!4092080 () Bool)

(declare-fun b_free!114397 () Bool)

(declare-fun b_next!115101 () Bool)

(assert (=> b!4092080 (= b_free!114397 (not b_next!115101))))

(declare-fun t!338824 () Bool)

(declare-fun tb!246049 () Bool)

(assert (=> (and b!4092080 (= (toValue!9684 (transformation!7096 (h!49293 (t!338596 (t!338596 rules!3870))))) (toValue!9684 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463144)))))) t!338824) tb!246049))

(declare-fun result!298562 () Bool)

(assert (= result!298562 result!298548))

(assert (=> d!1215009 t!338824))

(declare-fun t!338826 () Bool)

(declare-fun tb!246051 () Bool)

(assert (=> (and b!4092080 (= (toValue!9684 (transformation!7096 (h!49293 (t!338596 (t!338596 rules!3870))))) (toValue!9684 (transformation!7096 (h!49293 rules!3870)))) t!338826) tb!246051))

(declare-fun result!298564 () Bool)

(assert (= result!298564 result!298442))

(assert (=> d!1214771 t!338826))

(declare-fun tb!246053 () Bool)

(declare-fun t!338828 () Bool)

(assert (=> (and b!4092080 (= (toValue!9684 (transformation!7096 (h!49293 (t!338596 (t!338596 rules!3870))))) (toValue!9684 (transformation!7096 r!4213))) t!338828) tb!246053))

(declare-fun result!298566 () Bool)

(assert (= result!298566 result!298406))

(assert (=> d!1214691 t!338828))

(declare-fun tb!246055 () Bool)

(declare-fun t!338830 () Bool)

(assert (=> (and b!4092080 (= (toValue!9684 (transformation!7096 (h!49293 (t!338596 (t!338596 rules!3870))))) (toValue!9684 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463157)))))) t!338830) tb!246055))

(declare-fun result!298568 () Bool)

(assert (= result!298568 result!298484))

(assert (=> d!1214843 t!338830))

(declare-fun t!338832 () Bool)

(declare-fun tb!246057 () Bool)

(assert (=> (and b!4092080 (= (toValue!9684 (transformation!7096 (h!49293 (t!338596 (t!338596 rules!3870))))) (toValue!9684 (transformation!7096 r!4213))) t!338832) tb!246057))

(declare-fun result!298570 () Bool)

(assert (= result!298570 result!298496))

(assert (=> d!1214903 t!338832))

(declare-fun t!338834 () Bool)

(declare-fun tb!246059 () Bool)

(assert (=> (and b!4092080 (= (toValue!9684 (transformation!7096 (h!49293 (t!338596 (t!338596 rules!3870))))) (toValue!9684 (transformation!7096 r!4213))) t!338834) tb!246059))

(declare-fun result!298572 () Bool)

(assert (= result!298572 result!298332))

(assert (=> d!1214505 t!338834))

(declare-fun tb!246061 () Bool)

(declare-fun t!338836 () Bool)

(assert (=> (and b!4092080 (= (toValue!9684 (transformation!7096 (h!49293 (t!338596 (t!338596 rules!3870))))) (toValue!9684 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463160)))))) t!338836) tb!246061))

(declare-fun result!298574 () Bool)

(assert (= result!298574 result!298554))

(assert (=> d!1215027 t!338836))

(assert (=> d!1214689 t!338828))

(assert (=> d!1214767 t!338826))

(declare-fun t!338838 () Bool)

(declare-fun tb!246063 () Bool)

(assert (=> (and b!4092080 (= (toValue!9684 (transformation!7096 (h!49293 (t!338596 (t!338596 rules!3870))))) (toValue!9684 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463086)))))) t!338838) tb!246063))

(declare-fun result!298576 () Bool)

(assert (= result!298576 result!298382))

(assert (=> d!1214635 t!338838))

(assert (=> d!1214479 t!338834))

(declare-fun tp!1238714 () Bool)

(declare-fun b_and!315423 () Bool)

(assert (=> b!4092080 (= tp!1238714 (and (=> t!338836 result!298574) (=> t!338834 result!298572) (=> t!338832 result!298570) (=> t!338830 result!298568) (=> t!338824 result!298562) (=> t!338828 result!298566) (=> t!338838 result!298576) (=> t!338826 result!298564) b_and!315423))))

(declare-fun b_free!114399 () Bool)

(declare-fun b_next!115103 () Bool)

(assert (=> b!4092080 (= b_free!114399 (not b_next!115103))))

(declare-fun tb!246065 () Bool)

(declare-fun t!338840 () Bool)

(assert (=> (and b!4092080 (= (toChars!9543 (transformation!7096 (h!49293 (t!338596 (t!338596 rules!3870))))) (toChars!9543 (transformation!7096 r!4213))) t!338840) tb!246065))

(declare-fun result!298578 () Bool)

(assert (= result!298578 result!298412))

(assert (=> d!1214691 t!338840))

(declare-fun t!338842 () Bool)

(declare-fun tb!246067 () Bool)

(assert (=> (and b!4092080 (= (toChars!9543 (transformation!7096 (h!49293 (t!338596 (t!338596 rules!3870))))) (toChars!9543 (transformation!7096 (h!49293 rules!3870)))) t!338842) tb!246067))

(declare-fun result!298580 () Bool)

(assert (= result!298580 result!298448))

(assert (=> d!1214771 t!338842))

(declare-fun t!338844 () Bool)

(declare-fun tb!246069 () Bool)

(assert (=> (and b!4092080 (= (toChars!9543 (transformation!7096 (h!49293 (t!338596 (t!338596 rules!3870))))) (toChars!9543 (transformation!7096 (rule!10238 lt!1463041)))) t!338844) tb!246069))

(declare-fun result!298582 () Bool)

(assert (= result!298582 result!298338))

(assert (=> b!4090993 t!338844))

(declare-fun tb!246071 () Bool)

(declare-fun t!338846 () Bool)

(assert (=> (and b!4092080 (= (toChars!9543 (transformation!7096 (h!49293 (t!338596 (t!338596 rules!3870))))) (toChars!9543 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463086)))))) t!338846) tb!246071))

(declare-fun result!298584 () Bool)

(assert (= result!298584 result!298454))

(assert (=> d!1214797 t!338846))

(declare-fun t!338848 () Bool)

(declare-fun tb!246073 () Bool)

(assert (=> (and b!4092080 (= (toChars!9543 (transformation!7096 (h!49293 (t!338596 (t!338596 rules!3870))))) (toChars!9543 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463160)))))) t!338848) tb!246073))

(declare-fun result!298586 () Bool)

(assert (= result!298586 result!298542))

(assert (=> d!1214975 t!338848))

(declare-fun t!338850 () Bool)

(declare-fun tb!246075 () Bool)

(assert (=> (and b!4092080 (= (toChars!9543 (transformation!7096 (h!49293 (t!338596 (t!338596 rules!3870))))) (toChars!9543 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463157)))))) t!338850) tb!246075))

(declare-fun result!298588 () Bool)

(assert (= result!298588 result!298400))

(assert (=> d!1214683 t!338850))

(declare-fun tb!246077 () Bool)

(declare-fun t!338852 () Bool)

(assert (=> (and b!4092080 (= (toChars!9543 (transformation!7096 (h!49293 (t!338596 (t!338596 rules!3870))))) (toChars!9543 (transformation!7096 r!4213))) t!338852) tb!246077))

(declare-fun result!298590 () Bool)

(assert (= result!298590 result!298326))

(assert (=> d!1214479 t!338852))

(declare-fun t!338854 () Bool)

(declare-fun tb!246079 () Bool)

(assert (=> (and b!4092080 (= (toChars!9543 (transformation!7096 (h!49293 (t!338596 (t!338596 rules!3870))))) (toChars!9543 (transformation!7096 (rule!10238 (_1!24536 (get!14388 lt!1463144)))))) t!338854) tb!246079))

(declare-fun result!298592 () Bool)

(assert (= result!298592 result!298502))

(assert (=> d!1214933 t!338854))

(declare-fun tp!1238716 () Bool)

(declare-fun b_and!315425 () Bool)

(assert (=> b!4092080 (= tp!1238716 (and (=> t!338850 result!298588) (=> t!338852 result!298590) (=> t!338842 result!298580) (=> t!338848 result!298586) (=> t!338846 result!298584) (=> t!338844 result!298582) (=> t!338854 result!298592) (=> t!338840 result!298578) b_and!315425))))

(declare-fun e!2539506 () Bool)

(assert (=> b!4092080 (= e!2539506 (and tp!1238714 tp!1238716))))

(declare-fun b!4092079 () Bool)

(declare-fun e!2539504 () Bool)

(declare-fun tp!1238715 () Bool)

(assert (=> b!4092079 (= e!2539504 (and tp!1238715 (inv!58571 (tag!7956 (h!49293 (t!338596 (t!338596 rules!3870))))) (inv!58574 (transformation!7096 (h!49293 (t!338596 (t!338596 rules!3870))))) e!2539506))))

(declare-fun b!4092078 () Bool)

(declare-fun e!2539507 () Bool)

(declare-fun tp!1238717 () Bool)

(assert (=> b!4092078 (= e!2539507 (and e!2539504 tp!1238717))))

(assert (=> b!4091198 (= tp!1238570 e!2539507)))

(assert (= b!4092079 b!4092080))

(assert (= b!4092078 b!4092079))

(assert (= (and b!4091198 ((_ is Cons!43873) (t!338596 (t!338596 rules!3870)))) b!4092078))

(declare-fun m!4699185 () Bool)

(assert (=> b!4092079 m!4699185))

(declare-fun m!4699187 () Bool)

(assert (=> b!4092079 m!4699187))

(declare-fun e!2539508 () Bool)

(assert (=> b!4091178 (= tp!1238550 e!2539508)))

(declare-fun b!4092081 () Bool)

(assert (=> b!4092081 (= e!2539508 tp_is_empty!21005)))

(declare-fun b!4092082 () Bool)

(declare-fun tp!1238722 () Bool)

(declare-fun tp!1238720 () Bool)

(assert (=> b!4092082 (= e!2539508 (and tp!1238722 tp!1238720))))

(declare-fun b!4092083 () Bool)

(declare-fun tp!1238719 () Bool)

(assert (=> b!4092083 (= e!2539508 tp!1238719)))

(declare-fun b!4092084 () Bool)

(declare-fun tp!1238721 () Bool)

(declare-fun tp!1238718 () Bool)

(assert (=> b!4092084 (= e!2539508 (and tp!1238721 tp!1238718))))

(assert (= (and b!4091178 ((_ is ElementMatch!12001) (regOne!24514 (regex!7096 r!4213)))) b!4092081))

(assert (= (and b!4091178 ((_ is Concat!19328) (regOne!24514 (regex!7096 r!4213)))) b!4092082))

(assert (= (and b!4091178 ((_ is Star!12001) (regOne!24514 (regex!7096 r!4213)))) b!4092083))

(assert (= (and b!4091178 ((_ is Union!12001) (regOne!24514 (regex!7096 r!4213)))) b!4092084))

(declare-fun e!2539509 () Bool)

(assert (=> b!4091178 (= tp!1238548 e!2539509)))

(declare-fun b!4092085 () Bool)

(assert (=> b!4092085 (= e!2539509 tp_is_empty!21005)))

(declare-fun b!4092086 () Bool)

(declare-fun tp!1238727 () Bool)

(declare-fun tp!1238725 () Bool)

(assert (=> b!4092086 (= e!2539509 (and tp!1238727 tp!1238725))))

(declare-fun b!4092087 () Bool)

(declare-fun tp!1238724 () Bool)

(assert (=> b!4092087 (= e!2539509 tp!1238724)))

(declare-fun b!4092088 () Bool)

(declare-fun tp!1238726 () Bool)

(declare-fun tp!1238723 () Bool)

(assert (=> b!4092088 (= e!2539509 (and tp!1238726 tp!1238723))))

(assert (= (and b!4091178 ((_ is ElementMatch!12001) (regTwo!24514 (regex!7096 r!4213)))) b!4092085))

(assert (= (and b!4091178 ((_ is Concat!19328) (regTwo!24514 (regex!7096 r!4213)))) b!4092086))

(assert (= (and b!4091178 ((_ is Star!12001) (regTwo!24514 (regex!7096 r!4213)))) b!4092087))

(assert (= (and b!4091178 ((_ is Union!12001) (regTwo!24514 (regex!7096 r!4213)))) b!4092088))

(declare-fun e!2539510 () Bool)

(assert (=> b!4091179 (= tp!1238547 e!2539510)))

(declare-fun b!4092089 () Bool)

(assert (=> b!4092089 (= e!2539510 tp_is_empty!21005)))

(declare-fun b!4092090 () Bool)

(declare-fun tp!1238732 () Bool)

(declare-fun tp!1238730 () Bool)

(assert (=> b!4092090 (= e!2539510 (and tp!1238732 tp!1238730))))

(declare-fun b!4092091 () Bool)

(declare-fun tp!1238729 () Bool)

(assert (=> b!4092091 (= e!2539510 tp!1238729)))

(declare-fun b!4092092 () Bool)

(declare-fun tp!1238731 () Bool)

(declare-fun tp!1238728 () Bool)

(assert (=> b!4092092 (= e!2539510 (and tp!1238731 tp!1238728))))

(assert (= (and b!4091179 ((_ is ElementMatch!12001) (reg!12330 (regex!7096 r!4213)))) b!4092089))

(assert (= (and b!4091179 ((_ is Concat!19328) (reg!12330 (regex!7096 r!4213)))) b!4092090))

(assert (= (and b!4091179 ((_ is Star!12001) (reg!12330 (regex!7096 r!4213)))) b!4092091))

(assert (= (and b!4091179 ((_ is Union!12001) (reg!12330 (regex!7096 r!4213)))) b!4092092))

(declare-fun b_lambda!119993 () Bool)

(assert (= b_lambda!119919 (or (and b!4090773 b_free!114377) (and b!4090777 b_free!114381 (= (toValue!9684 (transformation!7096 (h!49293 rules!3870))) (toValue!9684 (transformation!7096 r!4213)))) (and b!4091200 b_free!114389 (= (toValue!9684 (transformation!7096 (h!49293 (t!338596 rules!3870)))) (toValue!9684 (transformation!7096 r!4213)))) (and b!4092080 b_free!114397 (= (toValue!9684 (transformation!7096 (h!49293 (t!338596 (t!338596 rules!3870))))) (toValue!9684 (transformation!7096 r!4213)))) b_lambda!119993)))

(declare-fun b_lambda!119995 () Bool)

(assert (= b_lambda!119989 (or d!1214479 b_lambda!119995)))

(declare-fun bs!593376 () Bool)

(declare-fun d!1215037 () Bool)

(assert (= bs!593376 (and d!1215037 d!1214479)))

(assert (=> bs!593376 (= (dynLambda!18784 lambda!128001 lt!1463039) (= (list!16284 (dynLambda!18779 (toChars!9543 (transformation!7096 r!4213)) (dynLambda!18780 (toValue!9684 (transformation!7096 r!4213)) lt!1463039))) (list!16284 lt!1463039)))))

(declare-fun b_lambda!120011 () Bool)

(assert (=> (not b_lambda!120011) (not bs!593376)))

(assert (=> bs!593376 t!338606))

(declare-fun b_and!315427 () Bool)

(assert (= b_and!315389 (and (=> t!338606 result!298326) b_and!315427)))

(assert (=> bs!593376 t!338608))

(declare-fun b_and!315429 () Bool)

(assert (= b_and!315391 (and (=> t!338608 result!298330) b_and!315429)))

(assert (=> bs!593376 t!338630))

(declare-fun b_and!315431 () Bool)

(assert (= b_and!315393 (and (=> t!338630 result!298366) b_and!315431)))

(assert (=> bs!593376 t!338852))

(declare-fun b_and!315433 () Bool)

(assert (= b_and!315425 (and (=> t!338852 result!298590) b_and!315433)))

(declare-fun b_lambda!120013 () Bool)

(assert (=> (not b_lambda!120013) (not bs!593376)))

(assert (=> bs!593376 t!338610))

(declare-fun b_and!315435 () Bool)

(assert (= b_and!315417 (and (=> t!338610 result!298332) b_and!315435)))

(assert (=> bs!593376 t!338612))

(declare-fun b_and!315437 () Bool)

(assert (= b_and!315419 (and (=> t!338612 result!298336) b_and!315437)))

(assert (=> bs!593376 t!338628))

(declare-fun b_and!315439 () Bool)

(assert (= b_and!315421 (and (=> t!338628 result!298364) b_and!315439)))

(assert (=> bs!593376 t!338834))

(declare-fun b_and!315441 () Bool)

(assert (= b_and!315423 (and (=> t!338834 result!298572) b_and!315441)))

(assert (=> bs!593376 m!4697719))

(assert (=> bs!593376 m!4697717))

(assert (=> bs!593376 m!4697719))

(assert (=> bs!593376 m!4697721))

(assert (=> bs!593376 m!4697721))

(assert (=> bs!593376 m!4697723))

(assert (=> d!1215017 d!1215037))

(declare-fun b_lambda!119997 () Bool)

(assert (= b_lambda!119935 (or (and b!4090773 b_free!114377 (= (toValue!9684 (transformation!7096 r!4213)) (toValue!9684 (transformation!7096 (h!49293 rules!3870))))) (and b!4090777 b_free!114381) (and b!4091200 b_free!114389 (= (toValue!9684 (transformation!7096 (h!49293 (t!338596 rules!3870)))) (toValue!9684 (transformation!7096 (h!49293 rules!3870))))) (and b!4092080 b_free!114397 (= (toValue!9684 (transformation!7096 (h!49293 (t!338596 (t!338596 rules!3870))))) (toValue!9684 (transformation!7096 (h!49293 rules!3870))))) b_lambda!119997)))

(declare-fun b_lambda!119999 () Bool)

(assert (= b_lambda!119939 (or (and b!4090773 b_free!114377 (= (toValue!9684 (transformation!7096 r!4213)) (toValue!9684 (transformation!7096 (h!49293 rules!3870))))) (and b!4090777 b_free!114381) (and b!4091200 b_free!114389 (= (toValue!9684 (transformation!7096 (h!49293 (t!338596 rules!3870)))) (toValue!9684 (transformation!7096 (h!49293 rules!3870))))) (and b!4092080 b_free!114397 (= (toValue!9684 (transformation!7096 (h!49293 (t!338596 (t!338596 rules!3870))))) (toValue!9684 (transformation!7096 (h!49293 rules!3870))))) b_lambda!119999)))

(declare-fun b_lambda!120001 () Bool)

(assert (= b_lambda!119921 (or (and b!4090773 b_free!114379) (and b!4090777 b_free!114383 (= (toChars!9543 (transformation!7096 (h!49293 rules!3870))) (toChars!9543 (transformation!7096 r!4213)))) (and b!4091200 b_free!114391 (= (toChars!9543 (transformation!7096 (h!49293 (t!338596 rules!3870)))) (toChars!9543 (transformation!7096 r!4213)))) (and b!4092080 b_free!114399 (= (toChars!9543 (transformation!7096 (h!49293 (t!338596 (t!338596 rules!3870))))) (toChars!9543 (transformation!7096 r!4213)))) b_lambda!120001)))

(declare-fun b_lambda!120003 () Bool)

(assert (= b_lambda!119923 (or (and b!4090773 b_free!114377) (and b!4090777 b_free!114381 (= (toValue!9684 (transformation!7096 (h!49293 rules!3870))) (toValue!9684 (transformation!7096 r!4213)))) (and b!4091200 b_free!114389 (= (toValue!9684 (transformation!7096 (h!49293 (t!338596 rules!3870)))) (toValue!9684 (transformation!7096 r!4213)))) (and b!4092080 b_free!114397 (= (toValue!9684 (transformation!7096 (h!49293 (t!338596 (t!338596 rules!3870))))) (toValue!9684 (transformation!7096 r!4213)))) b_lambda!120003)))

(declare-fun b_lambda!120005 () Bool)

(assert (= b_lambda!119959 (or (and b!4090773 b_free!114377) (and b!4090777 b_free!114381 (= (toValue!9684 (transformation!7096 (h!49293 rules!3870))) (toValue!9684 (transformation!7096 r!4213)))) (and b!4091200 b_free!114389 (= (toValue!9684 (transformation!7096 (h!49293 (t!338596 rules!3870)))) (toValue!9684 (transformation!7096 r!4213)))) (and b!4092080 b_free!114397 (= (toValue!9684 (transformation!7096 (h!49293 (t!338596 (t!338596 rules!3870))))) (toValue!9684 (transformation!7096 r!4213)))) b_lambda!120005)))

(declare-fun b_lambda!120007 () Bool)

(assert (= b_lambda!119937 (or (and b!4090773 b_free!114379 (= (toChars!9543 (transformation!7096 r!4213)) (toChars!9543 (transformation!7096 (h!49293 rules!3870))))) (and b!4090777 b_free!114383) (and b!4091200 b_free!114391 (= (toChars!9543 (transformation!7096 (h!49293 (t!338596 rules!3870)))) (toChars!9543 (transformation!7096 (h!49293 rules!3870))))) (and b!4092080 b_free!114399 (= (toChars!9543 (transformation!7096 (h!49293 (t!338596 (t!338596 rules!3870))))) (toChars!9543 (transformation!7096 (h!49293 rules!3870))))) b_lambda!120007)))

(declare-fun b_lambda!120009 () Bool)

(assert (= b_lambda!119891 (or (and b!4090773 b_free!114379 (= (toChars!9543 (transformation!7096 r!4213)) (toChars!9543 (transformation!7096 (rule!10238 lt!1463041))))) (and b!4090777 b_free!114383 (= (toChars!9543 (transformation!7096 (h!49293 rules!3870))) (toChars!9543 (transformation!7096 (rule!10238 lt!1463041))))) (and b!4091200 b_free!114391 (= (toChars!9543 (transformation!7096 (h!49293 (t!338596 rules!3870)))) (toChars!9543 (transformation!7096 (rule!10238 lt!1463041))))) (and b!4092080 b_free!114399 (= (toChars!9543 (transformation!7096 (h!49293 (t!338596 (t!338596 rules!3870))))) (toChars!9543 (transformation!7096 (rule!10238 lt!1463041))))) b_lambda!120009)))

(check-sat (not b!4091620) (not b_lambda!119905) (not b!4092038) (not d!1215023) (not d!1214867) (not b!4092084) (not b!4092015) (not d!1214643) (not bm!289192) (not b!4091702) (not b!4091803) (not b!4091498) (not d!1214973) (not d!1214989) (not b!4091567) (not bm!289162) (not b_next!115093) (not b!4091351) (not tb!245939) (not d!1215007) (not b!4091997) (not b!4091824) (not tb!245987) (not b!4091979) (not d!1214699) (not d!1214933) (not d!1214987) (not d!1214835) b_and!315439 (not b!4092074) (not b!4092012) (not bm!289224) (not bm!289208) b_and!315433 (not b!4092047) (not b!4092052) (not b!4092090) (not b!4091365) (not d!1214663) (not b!4091755) (not b!4091538) (not d!1214945) (not b!4091951) (not b!4091993) (not d!1214877) (not b!4092026) (not b_lambda!120009) (not d!1214929) (not b!4091578) (not d!1214935) (not d!1214815) (not b!4091819) (not b_lambda!119987) (not b!4092042) (not b!4091794) (not b!4091971) (not b!4092001) (not b!4091544) b_and!315441 (not d!1214725) (not b!4091582) (not b!4091706) (not b_lambda!119993) (not b_next!115103) (not b!4091756) (not b!4091747) (not b!4091539) (not bs!593376) (not tb!245993) (not b!4091984) (not b!4092060) (not bm!289193) (not b!4091798) (not b!4092088) (not b!4091810) (not b!4091607) (not b_lambda!120011) (not b!4091355) (not b_next!115087) (not b!4091632) (not b!4091957) (not tb!245873) (not b_lambda!119997) (not bm!289186) (not b!4091762) (not b!4091711) (not d!1214799) (not b!4092064) (not d!1214905) (not b!4091709) (not d!1214637) (not d!1214851) (not d!1214797) (not d!1215029) (not b_next!115083) (not b!4091368) (not b!4091968) (not b!4092039) (not b!4091363) (not b_next!115101) (not tb!245891) (not tb!245897) (not b!4091571) (not b!4092009) (not b!4092000) (not b!4091825) (not b!4091695) (not b!4091563) (not bm!289194) (not b!4091585) (not b!4092063) (not tb!246043) (not bm!289187) (not b!4091988) (not b!4091797) (not tb!246031) (not d!1214975) (not d!1214931) (not b!4092048) (not b!4091300) (not d!1214993) (not b!4091983) (not b_lambda!120013) (not bm!289163) (not b!4091981) (not bm!289190) (not b!4092092) (not b!4091805) (not b!4091986) (not b!4091980) (not b!4091811) (not b!4092056) (not bm!289185) (not bm!289189) (not b!4092077) (not b_lambda!119941) (not b!4091821) (not b!4092087) (not bm!289209) (not b!4092075) (not b!4092057) b_and!315427 (not b_lambda!119917) (not b!4091812) (not b!4091759) (not b!4091534) (not b!4090996) (not b!4092020) (not d!1214897) (not b!4091982) (not b!4092011) (not d!1214755) (not bm!289175) (not b!4092016) (not b!4091586) (not b!4092061) (not d!1214751) (not b!4091627) (not bm!289166) (not b!4091987) (not b!4091977) (not d!1214745) (not b!4092049) tp_is_empty!21005 (not d!1215005) (not d!1214623) (not b!4091966) (not b!4092071) (not bm!289160) (not d!1214997) (not d!1214687) (not d!1214677) (not b!4091990) (not d!1214883) (not b!4091704) (not b!4091358) (not b!4091937) (not b!4091800) (not b!4091504) (not b_lambda!119999) (not b_next!115081) (not b!4092006) (not b!4092068) (not b!4092078) (not b!4091615) (not b!4091502) (not b!4092072) (not b!4091575) (not b!4091359) (not b_lambda!119995) (not d!1214671) (not b!4091964) b_and!315431 (not b!4092053) (not b!4092091) (not d!1214833) (not b_next!115095) (not b!4091587) (not d!1214753) (not bm!289165) (not bm!289164) (not b!4091573) (not b!4092022) (not b!4092083) (not tb!246037) (not d!1214789) (not d!1215013) (not d!1214765) (not d!1214943) (not b!4091961) (not d!1214701) (not b_lambda!119961) (not b_lambda!119967) (not b!4091501) (not d!1214971) (not d!1214779) (not b_lambda!119903) (not d!1214777) (not b_lambda!119991) (not b!4091698) (not d!1214683) (not b!4091748) (not d!1214771) (not d!1214837) (not b_lambda!120007) (not d!1214937) (not b_lambda!120005) (not b!4091995) (not b!4092037) (not bm!289223) (not b!4092043) (not b!4092059) (not b!4092067) (not d!1214639) (not b!4092044) (not b!4091298) (not b!4092086) (not b!4092076) (not d!1215011) (not b!4092066) (not b_lambda!119953) (not b_lambda!119901) (not b!4091566) (not b_lambda!120003) (not b!4091580) (not b!4092008) (not d!1214955) (not d!1214681) (not d!1214991) (not b!4091826) (not b!4091710) (not b!4091342) b_and!315437 b_and!315435 (not bm!289161) (not b!4091626) (not b!4091949) (not bm!289167) (not b!4091761) (not b!4092018) (not bm!289225) (not b!4092024) (not b!4092040) (not bm!289188) (not d!1215015) (not b!4091758) (not d!1214665) (not b!4092017) (not bm!289191) (not d!1214727) (not b!4092070) (not b_next!115085) (not b!4092051) (not b!4092002) (not d!1214885) (not b!4091972) (not b!4091938) (not b!4091356) (not b!4092065) (not b!4091336) (not d!1215017) (not b!4092028) (not b!4091959) b_and!315429 (not b!4092013) (not b!4091817) (not bm!289220) (not d!1214691) (not b!4092014) (not b!4091569) (not b!4091622) (not d!1214901) (not b!4092055) (not d!1215019) (not d!1214769) (not b!4091973) (not b!4092046) (not d!1215001) (not b!4091608) (not tb!245945) (not b!4092079) (not d!1214783) (not tb!245975) (not b!4091625) (not b!4091353) (not tb!245903) (not b!4091746) (not b!4091618) (not bm!289205) (not b!4091908) (not b!4091978) (not b!4091296) (not b_lambda!120001) (not b!4091361) (not b!4091795) (not bm!289176) (not d!1214795) (not b_lambda!119911) (not tb!245933) (not bm!289222) (not b!4092082) (not b!4090969) (not b!4091807))
(check-sat (not b_next!115093) (not b_next!115087) b_and!315427 (not b_next!115081) b_and!315431 (not b_next!115095) (not b_next!115085) b_and!315429 b_and!315439 b_and!315433 (not b_next!115103) b_and!315441 (not b_next!115083) (not b_next!115101) b_and!315437 b_and!315435)
