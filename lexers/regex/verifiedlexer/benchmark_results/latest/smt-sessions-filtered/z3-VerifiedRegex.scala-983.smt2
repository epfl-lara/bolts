; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49400 () Bool)

(assert start!49400)

(declare-fun b!535724 () Bool)

(declare-fun b_free!14641 () Bool)

(declare-fun b_next!14657 () Bool)

(assert (=> b!535724 (= b_free!14641 (not b_next!14657))))

(declare-fun tp!170973 () Bool)

(declare-fun b_and!52395 () Bool)

(assert (=> b!535724 (= tp!170973 b_and!52395)))

(declare-fun b_free!14643 () Bool)

(declare-fun b_next!14659 () Bool)

(assert (=> b!535724 (= b_free!14643 (not b_next!14659))))

(declare-fun tp!170974 () Bool)

(declare-fun b_and!52397 () Bool)

(assert (=> b!535724 (= tp!170974 b_and!52397)))

(declare-fun b!535729 () Bool)

(declare-fun b_free!14645 () Bool)

(declare-fun b_next!14661 () Bool)

(assert (=> b!535729 (= b_free!14645 (not b_next!14661))))

(declare-fun tp!170977 () Bool)

(declare-fun b_and!52399 () Bool)

(assert (=> b!535729 (= tp!170977 b_and!52399)))

(declare-fun b_free!14647 () Bool)

(declare-fun b_next!14663 () Bool)

(assert (=> b!535729 (= b_free!14647 (not b_next!14663))))

(declare-fun tp!170976 () Bool)

(declare-fun b_and!52401 () Bool)

(assert (=> b!535729 (= tp!170976 b_and!52401)))

(declare-fun b!535718 () Bool)

(declare-fun e!323039 () Bool)

(declare-fun e!323024 () Bool)

(assert (=> b!535718 (= e!323039 e!323024)))

(declare-fun res!226672 () Bool)

(assert (=> b!535718 (=> (not res!226672) (not e!323024))))

(declare-datatypes ((C!3496 0))(
  ( (C!3497 (val!1974 Int)) )
))
(declare-datatypes ((List!5193 0))(
  ( (Nil!5183) (Cons!5183 (h!10584 C!3496) (t!74098 List!5193)) )
))
(declare-fun suffix!1342 () List!5193)

(declare-datatypes ((Regex!1287 0))(
  ( (ElementMatch!1287 (c!101942 C!3496)) (Concat!2264 (regOne!3086 Regex!1287) (regTwo!3086 Regex!1287)) (EmptyExpr!1287) (Star!1287 (reg!1616 Regex!1287)) (EmptyLang!1287) (Union!1287 (regOne!3087 Regex!1287) (regTwo!3087 Regex!1287)) )
))
(declare-datatypes ((IArray!3341 0))(
  ( (IArray!3342 (innerList!1728 List!5193)) )
))
(declare-datatypes ((Conc!1670 0))(
  ( (Node!1670 (left!4343 Conc!1670) (right!4673 Conc!1670) (csize!3570 Int) (cheight!1881 Int)) (Leaf!2654 (xs!4307 IArray!3341) (csize!3571 Int)) (Empty!1670) )
))
(declare-datatypes ((BalanceConc!3348 0))(
  ( (BalanceConc!3349 (c!101943 Conc!1670)) )
))
(declare-datatypes ((List!5194 0))(
  ( (Nil!5184) (Cons!5184 (h!10585 (_ BitVec 16)) (t!74099 List!5194)) )
))
(declare-datatypes ((TokenValue!977 0))(
  ( (FloatLiteralValue!1954 (text!7284 List!5194)) (TokenValueExt!976 (__x!3852 Int)) (Broken!4885 (value!32001 List!5194)) (Object!986) (End!977) (Def!977) (Underscore!977) (Match!977) (Else!977) (Error!977) (Case!977) (If!977) (Extends!977) (Abstract!977) (Class!977) (Val!977) (DelimiterValue!1954 (del!1037 List!5194)) (KeywordValue!983 (value!32002 List!5194)) (CommentValue!1954 (value!32003 List!5194)) (WhitespaceValue!1954 (value!32004 List!5194)) (IndentationValue!977 (value!32005 List!5194)) (String!6628) (Int32!977) (Broken!4886 (value!32006 List!5194)) (Boolean!978) (Unit!9048) (OperatorValue!980 (op!1037 List!5194)) (IdentifierValue!1954 (value!32007 List!5194)) (IdentifierValue!1955 (value!32008 List!5194)) (WhitespaceValue!1955 (value!32009 List!5194)) (True!1954) (False!1954) (Broken!4887 (value!32010 List!5194)) (Broken!4888 (value!32011 List!5194)) (True!1955) (RightBrace!977) (RightBracket!977) (Colon!977) (Null!977) (Comma!977) (LeftBracket!977) (False!1955) (LeftBrace!977) (ImaginaryLiteralValue!977 (text!7285 List!5194)) (StringLiteralValue!2931 (value!32012 List!5194)) (EOFValue!977 (value!32013 List!5194)) (IdentValue!977 (value!32014 List!5194)) (DelimiterValue!1955 (value!32015 List!5194)) (DedentValue!977 (value!32016 List!5194)) (NewLineValue!977 (value!32017 List!5194)) (IntegerValue!2931 (value!32018 (_ BitVec 32)) (text!7286 List!5194)) (IntegerValue!2932 (value!32019 Int) (text!7287 List!5194)) (Times!977) (Or!977) (Equal!977) (Minus!977) (Broken!4889 (value!32020 List!5194)) (And!977) (Div!977) (LessEqual!977) (Mod!977) (Concat!2265) (Not!977) (Plus!977) (SpaceValue!977 (value!32021 List!5194)) (IntegerValue!2933 (value!32022 Int) (text!7288 List!5194)) (StringLiteralValue!2932 (text!7289 List!5194)) (FloatLiteralValue!1955 (text!7290 List!5194)) (BytesLiteralValue!977 (value!32023 List!5194)) (CommentValue!1955 (value!32024 List!5194)) (StringLiteralValue!2933 (value!32025 List!5194)) (ErrorTokenValue!977 (msg!1038 List!5194)) )
))
(declare-datatypes ((String!6629 0))(
  ( (String!6630 (value!32026 String)) )
))
(declare-datatypes ((TokenValueInjection!1722 0))(
  ( (TokenValueInjection!1723 (toValue!1800 Int) (toChars!1659 Int)) )
))
(declare-datatypes ((Rule!1706 0))(
  ( (Rule!1707 (regex!953 Regex!1287) (tag!1215 String!6629) (isSeparator!953 Bool) (transformation!953 TokenValueInjection!1722)) )
))
(declare-datatypes ((Token!1642 0))(
  ( (Token!1643 (value!32027 TokenValue!977) (rule!1655 Rule!1706) (size!4176 Int) (originalCharacters!992 List!5193)) )
))
(declare-datatypes ((tuple2!6264 0))(
  ( (tuple2!6265 (_1!3396 Token!1642) (_2!3396 List!5193)) )
))
(declare-fun lt!221368 () tuple2!6264)

(declare-fun token!491 () Token!1642)

(assert (=> b!535718 (= res!226672 (and (= (_1!3396 lt!221368) token!491) (= (_2!3396 lt!221368) suffix!1342)))))

(declare-datatypes ((Option!1303 0))(
  ( (None!1302) (Some!1302 (v!16109 tuple2!6264)) )
))
(declare-fun lt!221381 () Option!1303)

(declare-fun get!1944 (Option!1303) tuple2!6264)

(assert (=> b!535718 (= lt!221368 (get!1944 lt!221381))))

(declare-fun b!535719 () Bool)

(declare-fun e!323033 () Bool)

(declare-fun e!323036 () Bool)

(assert (=> b!535719 (= e!323033 e!323036)))

(declare-fun res!226663 () Bool)

(assert (=> b!535719 (=> (not res!226663) (not e!323036))))

(declare-fun lt!221379 () List!5193)

(declare-fun lt!221385 () List!5193)

(assert (=> b!535719 (= res!226663 (= lt!221379 lt!221385))))

(declare-fun lt!221374 () List!5193)

(declare-fun ++!1441 (List!5193 List!5193) List!5193)

(assert (=> b!535719 (= lt!221379 (++!1441 lt!221374 suffix!1342))))

(declare-fun e!323030 () Bool)

(declare-fun e!323025 () Bool)

(declare-fun tp!170969 () Bool)

(declare-fun b!535720 () Bool)

(declare-fun inv!6504 (String!6629) Bool)

(declare-fun inv!6507 (TokenValueInjection!1722) Bool)

(assert (=> b!535720 (= e!323030 (and tp!170969 (inv!6504 (tag!1215 (rule!1655 token!491))) (inv!6507 (transformation!953 (rule!1655 token!491))) e!323025))))

(declare-fun b!535721 () Bool)

(declare-fun res!226666 () Bool)

(declare-fun e!323029 () Bool)

(assert (=> b!535721 (=> (not res!226666) (not e!323029))))

(declare-datatypes ((LexerInterface!839 0))(
  ( (LexerInterfaceExt!836 (__x!3853 Int)) (Lexer!837) )
))
(declare-fun thiss!22590 () LexerInterface!839)

(declare-datatypes ((List!5195 0))(
  ( (Nil!5185) (Cons!5185 (h!10586 Rule!1706) (t!74100 List!5195)) )
))
(declare-fun rules!3103 () List!5195)

(declare-fun rulesInvariant!802 (LexerInterface!839 List!5195) Bool)

(assert (=> b!535721 (= res!226666 (rulesInvariant!802 thiss!22590 rules!3103))))

(declare-fun e!323042 () Bool)

(declare-fun lt!221386 () Option!1303)

(declare-fun lt!221378 () List!5193)

(declare-fun lt!221372 () TokenValue!977)

(declare-fun lt!221377 () Int)

(declare-fun b!535722 () Bool)

(declare-fun lt!221369 () List!5193)

(assert (=> b!535722 (= e!323042 (and (= (size!4176 (_1!3396 (v!16109 lt!221386))) lt!221377) (= (originalCharacters!992 (_1!3396 (v!16109 lt!221386))) lt!221378) (= (v!16109 lt!221386) (tuple2!6265 (Token!1643 lt!221372 (rule!1655 (_1!3396 (v!16109 lt!221386))) lt!221377 lt!221378) lt!221369))))))

(declare-fun res!226676 () Bool)

(assert (=> start!49400 (=> (not res!226676) (not e!323029))))

(get-info :version)

(assert (=> start!49400 (= res!226676 ((_ is Lexer!837) thiss!22590))))

(assert (=> start!49400 e!323029))

(declare-fun e!323037 () Bool)

(assert (=> start!49400 e!323037))

(declare-fun e!323026 () Bool)

(assert (=> start!49400 e!323026))

(declare-fun e!323041 () Bool)

(declare-fun inv!6508 (Token!1642) Bool)

(assert (=> start!49400 (and (inv!6508 token!491) e!323041)))

(assert (=> start!49400 true))

(declare-fun e!323031 () Bool)

(assert (=> start!49400 e!323031))

(declare-fun lt!221367 () Int)

(declare-fun lt!221387 () List!5193)

(declare-fun lt!221388 () TokenValue!977)

(declare-fun e!323043 () Bool)

(declare-fun b!535723 () Bool)

(assert (=> b!535723 (= e!323043 (and (= (size!4176 token!491) lt!221367) (= (originalCharacters!992 token!491) lt!221374) (= (tuple2!6265 token!491 suffix!1342) (tuple2!6265 (Token!1643 lt!221388 (rule!1655 token!491) lt!221367 lt!221374) lt!221387))))))

(declare-fun e!323028 () Bool)

(assert (=> b!535724 (= e!323028 (and tp!170973 tp!170974))))

(declare-fun b!535725 () Bool)

(declare-fun e!323044 () Bool)

(assert (=> b!535725 (= e!323044 e!323039)))

(declare-fun res!226675 () Bool)

(assert (=> b!535725 (=> (not res!226675) (not e!323039))))

(declare-fun isDefined!1115 (Option!1303) Bool)

(assert (=> b!535725 (= res!226675 (isDefined!1115 lt!221381))))

(declare-fun maxPrefix!537 (LexerInterface!839 List!5195 List!5193) Option!1303)

(assert (=> b!535725 (= lt!221381 (maxPrefix!537 thiss!22590 rules!3103 lt!221385))))

(declare-fun input!2705 () List!5193)

(assert (=> b!535725 (= lt!221385 (++!1441 input!2705 suffix!1342))))

(declare-fun b!535726 () Bool)

(declare-fun res!226671 () Bool)

(assert (=> b!535726 (=> (not res!226671) (not e!323029))))

(declare-fun isEmpty!3748 (List!5195) Bool)

(assert (=> b!535726 (= res!226671 (not (isEmpty!3748 rules!3103)))))

(declare-fun b!535727 () Bool)

(assert (=> b!535727 (= e!323029 e!323044)))

(declare-fun res!226668 () Bool)

(assert (=> b!535727 (=> (not res!226668) (not e!323044))))

(assert (=> b!535727 (= res!226668 (= lt!221374 input!2705))))

(declare-fun list!2155 (BalanceConc!3348) List!5193)

(declare-fun charsOf!582 (Token!1642) BalanceConc!3348)

(assert (=> b!535727 (= lt!221374 (list!2155 (charsOf!582 token!491)))))

(declare-fun tp!170975 () Bool)

(declare-fun e!323032 () Bool)

(declare-fun b!535728 () Bool)

(assert (=> b!535728 (= e!323032 (and tp!170975 (inv!6504 (tag!1215 (h!10586 rules!3103))) (inv!6507 (transformation!953 (h!10586 rules!3103))) e!323028))))

(assert (=> b!535729 (= e!323025 (and tp!170977 tp!170976))))

(declare-fun b!535730 () Bool)

(declare-fun tp_is_empty!2929 () Bool)

(declare-fun tp!170970 () Bool)

(assert (=> b!535730 (= e!323037 (and tp_is_empty!2929 tp!170970))))

(declare-fun b!535731 () Bool)

(declare-datatypes ((Unit!9049 0))(
  ( (Unit!9050) )
))
(declare-fun e!323035 () Unit!9049)

(declare-fun Unit!9051 () Unit!9049)

(assert (=> b!535731 (= e!323035 Unit!9051)))

(declare-fun b!535732 () Bool)

(assert (=> b!535732 (= e!323024 e!323033)))

(declare-fun res!226665 () Bool)

(assert (=> b!535732 (=> (not res!226665) (not e!323033))))

(assert (=> b!535732 (= res!226665 ((_ is Some!1302) lt!221386))))

(assert (=> b!535732 (= lt!221386 (maxPrefix!537 thiss!22590 rules!3103 input!2705))))

(declare-fun b!535733 () Bool)

(declare-fun res!226664 () Bool)

(assert (=> b!535733 (=> (not res!226664) (not e!323042))))

(declare-fun size!4177 (List!5193) Int)

(assert (=> b!535733 (= res!226664 (= (size!4176 (_1!3396 (v!16109 lt!221386))) (size!4177 (originalCharacters!992 (_1!3396 (v!16109 lt!221386))))))))

(declare-fun b!535734 () Bool)

(declare-fun res!226674 () Bool)

(assert (=> b!535734 (=> (not res!226674) (not e!323043))))

(assert (=> b!535734 (= res!226674 (= (size!4176 token!491) (size!4177 (originalCharacters!992 token!491))))))

(declare-fun b!535735 () Bool)

(declare-fun res!226667 () Bool)

(assert (=> b!535735 (=> (not res!226667) (not e!323029))))

(declare-fun isEmpty!3749 (List!5193) Bool)

(assert (=> b!535735 (= res!226667 (not (isEmpty!3749 input!2705)))))

(declare-fun b!535736 () Bool)

(declare-fun e!323034 () Bool)

(assert (=> b!535736 (= e!323034 true)))

(declare-fun maxPrefixOneRule!252 (LexerInterface!839 Rule!1706 List!5193) Option!1303)

(assert (=> b!535736 (= (maxPrefixOneRule!252 thiss!22590 (rule!1655 token!491) lt!221385) (Some!1302 (tuple2!6265 (Token!1643 lt!221388 (rule!1655 token!491) lt!221367 lt!221374) suffix!1342)))))

(declare-fun lt!221371 () Unit!9049)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!4 (LexerInterface!839 List!5195 List!5193 List!5193 List!5193 Rule!1706) Unit!9049)

(assert (=> b!535736 (= lt!221371 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!4 thiss!22590 rules!3103 lt!221374 lt!221385 suffix!1342 (rule!1655 token!491)))))

(assert (=> b!535736 (= (maxPrefixOneRule!252 thiss!22590 (rule!1655 (_1!3396 (v!16109 lt!221386))) input!2705) (Some!1302 (tuple2!6265 (Token!1643 lt!221372 (rule!1655 (_1!3396 (v!16109 lt!221386))) lt!221377 lt!221378) (_2!3396 (v!16109 lt!221386)))))))

(declare-fun lt!221394 () Unit!9049)

(assert (=> b!535736 (= lt!221394 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!4 thiss!22590 rules!3103 lt!221378 input!2705 (_2!3396 (v!16109 lt!221386)) (rule!1655 (_1!3396 (v!16109 lt!221386)))))))

(assert (=> b!535736 e!323043))

(declare-fun res!226670 () Bool)

(assert (=> b!535736 (=> (not res!226670) (not e!323043))))

(assert (=> b!535736 (= res!226670 (= (value!32027 token!491) lt!221388))))

(declare-fun apply!1228 (TokenValueInjection!1722 BalanceConc!3348) TokenValue!977)

(declare-fun seqFromList!1151 (List!5193) BalanceConc!3348)

(assert (=> b!535736 (= lt!221388 (apply!1228 (transformation!953 (rule!1655 token!491)) (seqFromList!1151 lt!221374)))))

(assert (=> b!535736 (= suffix!1342 lt!221387)))

(declare-fun lt!221390 () Unit!9049)

(declare-fun lemmaSamePrefixThenSameSuffix!322 (List!5193 List!5193 List!5193 List!5193 List!5193) Unit!9049)

(assert (=> b!535736 (= lt!221390 (lemmaSamePrefixThenSameSuffix!322 lt!221374 suffix!1342 lt!221374 lt!221387 lt!221385))))

(declare-fun getSuffix!118 (List!5193 List!5193) List!5193)

(assert (=> b!535736 (= lt!221387 (getSuffix!118 lt!221385 lt!221374))))

(declare-fun b!535737 () Bool)

(assert (=> b!535737 (= e!323036 (not e!323034))))

(declare-fun res!226669 () Bool)

(assert (=> b!535737 (=> res!226669 e!323034)))

(declare-fun isPrefix!595 (List!5193 List!5193) Bool)

(assert (=> b!535737 (= res!226669 (not (isPrefix!595 input!2705 lt!221379)))))

(assert (=> b!535737 (isPrefix!595 lt!221374 lt!221379)))

(declare-fun lt!221375 () Unit!9049)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!446 (List!5193 List!5193) Unit!9049)

(assert (=> b!535737 (= lt!221375 (lemmaConcatTwoListThenFirstIsPrefix!446 lt!221374 suffix!1342))))

(assert (=> b!535737 (isPrefix!595 input!2705 lt!221385)))

(declare-fun lt!221380 () Unit!9049)

(assert (=> b!535737 (= lt!221380 (lemmaConcatTwoListThenFirstIsPrefix!446 input!2705 suffix!1342))))

(assert (=> b!535737 e!323042))

(declare-fun res!226673 () Bool)

(assert (=> b!535737 (=> (not res!226673) (not e!323042))))

(assert (=> b!535737 (= res!226673 (= (value!32027 (_1!3396 (v!16109 lt!221386))) lt!221372))))

(assert (=> b!535737 (= lt!221372 (apply!1228 (transformation!953 (rule!1655 (_1!3396 (v!16109 lt!221386)))) (seqFromList!1151 lt!221378)))))

(declare-fun lt!221391 () Unit!9049)

(declare-fun lemmaInv!101 (TokenValueInjection!1722) Unit!9049)

(assert (=> b!535737 (= lt!221391 (lemmaInv!101 (transformation!953 (rule!1655 token!491))))))

(declare-fun lt!221382 () Unit!9049)

(assert (=> b!535737 (= lt!221382 (lemmaInv!101 (transformation!953 (rule!1655 (_1!3396 (v!16109 lt!221386))))))))

(declare-fun ruleValid!173 (LexerInterface!839 Rule!1706) Bool)

(assert (=> b!535737 (ruleValid!173 thiss!22590 (rule!1655 token!491))))

(declare-fun lt!221389 () Unit!9049)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!32 (LexerInterface!839 Rule!1706 List!5195) Unit!9049)

(assert (=> b!535737 (= lt!221389 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!32 thiss!22590 (rule!1655 token!491) rules!3103))))

(assert (=> b!535737 (ruleValid!173 thiss!22590 (rule!1655 (_1!3396 (v!16109 lt!221386))))))

(declare-fun lt!221392 () Unit!9049)

(assert (=> b!535737 (= lt!221392 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!32 thiss!22590 (rule!1655 (_1!3396 (v!16109 lt!221386))) rules!3103))))

(assert (=> b!535737 (isPrefix!595 input!2705 input!2705)))

(declare-fun lt!221393 () Unit!9049)

(declare-fun lemmaIsPrefixRefl!335 (List!5193 List!5193) Unit!9049)

(assert (=> b!535737 (= lt!221393 (lemmaIsPrefixRefl!335 input!2705 input!2705))))

(assert (=> b!535737 (= (_2!3396 (v!16109 lt!221386)) lt!221369)))

(declare-fun lt!221395 () Unit!9049)

(assert (=> b!535737 (= lt!221395 (lemmaSamePrefixThenSameSuffix!322 lt!221378 (_2!3396 (v!16109 lt!221386)) lt!221378 lt!221369 input!2705))))

(assert (=> b!535737 (= lt!221369 (getSuffix!118 input!2705 lt!221378))))

(assert (=> b!535737 (isPrefix!595 lt!221378 (++!1441 lt!221378 (_2!3396 (v!16109 lt!221386))))))

(declare-fun lt!221383 () Unit!9049)

(assert (=> b!535737 (= lt!221383 (lemmaConcatTwoListThenFirstIsPrefix!446 lt!221378 (_2!3396 (v!16109 lt!221386))))))

(declare-fun lt!221384 () Unit!9049)

(declare-fun lemmaCharactersSize!32 (Token!1642) Unit!9049)

(assert (=> b!535737 (= lt!221384 (lemmaCharactersSize!32 token!491))))

(declare-fun lt!221376 () Unit!9049)

(assert (=> b!535737 (= lt!221376 (lemmaCharactersSize!32 (_1!3396 (v!16109 lt!221386))))))

(declare-fun lt!221373 () Unit!9049)

(assert (=> b!535737 (= lt!221373 e!323035)))

(declare-fun c!101941 () Bool)

(assert (=> b!535737 (= c!101941 (> lt!221377 lt!221367))))

(assert (=> b!535737 (= lt!221367 (size!4177 lt!221374))))

(assert (=> b!535737 (= lt!221377 (size!4177 lt!221378))))

(assert (=> b!535737 (= lt!221378 (list!2155 (charsOf!582 (_1!3396 (v!16109 lt!221386)))))))

(assert (=> b!535737 (= lt!221386 (Some!1302 (v!16109 lt!221386)))))

(declare-fun lt!221370 () Unit!9049)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!38 (List!5193 List!5193 List!5193 List!5193) Unit!9049)

(assert (=> b!535737 (= lt!221370 (lemmaConcatSameAndSameSizesThenSameLists!38 lt!221374 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!535738 () Bool)

(declare-fun tp!170971 () Bool)

(assert (=> b!535738 (= e!323031 (and tp_is_empty!2929 tp!170971))))

(declare-fun b!535739 () Bool)

(declare-fun Unit!9052 () Unit!9049)

(assert (=> b!535739 (= e!323035 Unit!9052)))

(assert (=> b!535739 false))

(declare-fun b!535740 () Bool)

(declare-fun tp!170972 () Bool)

(assert (=> b!535740 (= e!323026 (and e!323032 tp!170972))))

(declare-fun b!535741 () Bool)

(declare-fun tp!170978 () Bool)

(declare-fun inv!21 (TokenValue!977) Bool)

(assert (=> b!535741 (= e!323041 (and (inv!21 (value!32027 token!491)) e!323030 tp!170978))))

(assert (= (and start!49400 res!226676) b!535726))

(assert (= (and b!535726 res!226671) b!535721))

(assert (= (and b!535721 res!226666) b!535735))

(assert (= (and b!535735 res!226667) b!535727))

(assert (= (and b!535727 res!226668) b!535725))

(assert (= (and b!535725 res!226675) b!535718))

(assert (= (and b!535718 res!226672) b!535732))

(assert (= (and b!535732 res!226665) b!535719))

(assert (= (and b!535719 res!226663) b!535737))

(assert (= (and b!535737 c!101941) b!535739))

(assert (= (and b!535737 (not c!101941)) b!535731))

(assert (= (and b!535737 res!226673) b!535733))

(assert (= (and b!535733 res!226664) b!535722))

(assert (= (and b!535737 (not res!226669)) b!535736))

(assert (= (and b!535736 res!226670) b!535734))

(assert (= (and b!535734 res!226674) b!535723))

(assert (= (and start!49400 ((_ is Cons!5183) suffix!1342)) b!535730))

(assert (= b!535728 b!535724))

(assert (= b!535740 b!535728))

(assert (= (and start!49400 ((_ is Cons!5185) rules!3103)) b!535740))

(assert (= b!535720 b!535729))

(assert (= b!535741 b!535720))

(assert (= start!49400 b!535741))

(assert (= (and start!49400 ((_ is Cons!5183) input!2705)) b!535738))

(declare-fun m!781783 () Bool)

(assert (=> b!535718 m!781783))

(declare-fun m!781785 () Bool)

(assert (=> b!535725 m!781785))

(declare-fun m!781787 () Bool)

(assert (=> b!535725 m!781787))

(declare-fun m!781789 () Bool)

(assert (=> b!535725 m!781789))

(declare-fun m!781791 () Bool)

(assert (=> b!535732 m!781791))

(declare-fun m!781793 () Bool)

(assert (=> b!535720 m!781793))

(declare-fun m!781795 () Bool)

(assert (=> b!535720 m!781795))

(declare-fun m!781797 () Bool)

(assert (=> b!535733 m!781797))

(declare-fun m!781799 () Bool)

(assert (=> start!49400 m!781799))

(declare-fun m!781801 () Bool)

(assert (=> b!535736 m!781801))

(declare-fun m!781803 () Bool)

(assert (=> b!535736 m!781803))

(declare-fun m!781805 () Bool)

(assert (=> b!535736 m!781805))

(declare-fun m!781807 () Bool)

(assert (=> b!535736 m!781807))

(assert (=> b!535736 m!781801))

(declare-fun m!781809 () Bool)

(assert (=> b!535736 m!781809))

(declare-fun m!781811 () Bool)

(assert (=> b!535736 m!781811))

(declare-fun m!781813 () Bool)

(assert (=> b!535736 m!781813))

(declare-fun m!781815 () Bool)

(assert (=> b!535736 m!781815))

(declare-fun m!781817 () Bool)

(assert (=> b!535741 m!781817))

(declare-fun m!781819 () Bool)

(assert (=> b!535728 m!781819))

(declare-fun m!781821 () Bool)

(assert (=> b!535728 m!781821))

(declare-fun m!781823 () Bool)

(assert (=> b!535734 m!781823))

(declare-fun m!781825 () Bool)

(assert (=> b!535726 m!781825))

(declare-fun m!781827 () Bool)

(assert (=> b!535735 m!781827))

(declare-fun m!781829 () Bool)

(assert (=> b!535719 m!781829))

(declare-fun m!781831 () Bool)

(assert (=> b!535737 m!781831))

(declare-fun m!781833 () Bool)

(assert (=> b!535737 m!781833))

(declare-fun m!781835 () Bool)

(assert (=> b!535737 m!781835))

(declare-fun m!781837 () Bool)

(assert (=> b!535737 m!781837))

(declare-fun m!781839 () Bool)

(assert (=> b!535737 m!781839))

(declare-fun m!781841 () Bool)

(assert (=> b!535737 m!781841))

(declare-fun m!781843 () Bool)

(assert (=> b!535737 m!781843))

(declare-fun m!781845 () Bool)

(assert (=> b!535737 m!781845))

(declare-fun m!781847 () Bool)

(assert (=> b!535737 m!781847))

(declare-fun m!781849 () Bool)

(assert (=> b!535737 m!781849))

(declare-fun m!781851 () Bool)

(assert (=> b!535737 m!781851))

(declare-fun m!781853 () Bool)

(assert (=> b!535737 m!781853))

(declare-fun m!781855 () Bool)

(assert (=> b!535737 m!781855))

(declare-fun m!781857 () Bool)

(assert (=> b!535737 m!781857))

(assert (=> b!535737 m!781851))

(declare-fun m!781859 () Bool)

(assert (=> b!535737 m!781859))

(declare-fun m!781861 () Bool)

(assert (=> b!535737 m!781861))

(declare-fun m!781863 () Bool)

(assert (=> b!535737 m!781863))

(declare-fun m!781865 () Bool)

(assert (=> b!535737 m!781865))

(declare-fun m!781867 () Bool)

(assert (=> b!535737 m!781867))

(declare-fun m!781869 () Bool)

(assert (=> b!535737 m!781869))

(assert (=> b!535737 m!781843))

(declare-fun m!781871 () Bool)

(assert (=> b!535737 m!781871))

(declare-fun m!781873 () Bool)

(assert (=> b!535737 m!781873))

(declare-fun m!781875 () Bool)

(assert (=> b!535737 m!781875))

(declare-fun m!781877 () Bool)

(assert (=> b!535737 m!781877))

(declare-fun m!781879 () Bool)

(assert (=> b!535737 m!781879))

(declare-fun m!781881 () Bool)

(assert (=> b!535737 m!781881))

(assert (=> b!535737 m!781861))

(declare-fun m!781883 () Bool)

(assert (=> b!535737 m!781883))

(declare-fun m!781885 () Bool)

(assert (=> b!535721 m!781885))

(declare-fun m!781887 () Bool)

(assert (=> b!535727 m!781887))

(assert (=> b!535727 m!781887))

(declare-fun m!781889 () Bool)

(assert (=> b!535727 m!781889))

(check-sat (not b!535740) (not b!535720) (not b!535737) (not b!535735) (not b_next!14659) (not b_next!14661) b_and!52397 (not b!535734) (not b!535727) (not b_next!14657) (not b!535736) (not b!535730) (not b_next!14663) (not b!535741) (not b!535719) (not b!535733) b_and!52395 (not b!535718) (not b!535728) (not start!49400) b_and!52401 tp_is_empty!2929 (not b!535725) (not b!535732) b_and!52399 (not b!535726) (not b!535738) (not b!535721))
(check-sat (not b_next!14663) b_and!52395 b_and!52401 (not b_next!14659) (not b_next!14661) b_and!52399 b_and!52397 (not b_next!14657))
