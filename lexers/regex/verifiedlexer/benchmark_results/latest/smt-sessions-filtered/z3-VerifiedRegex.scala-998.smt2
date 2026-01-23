; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49936 () Bool)

(assert start!49936)

(declare-fun b!540623 () Bool)

(declare-fun b_free!14913 () Bool)

(declare-fun b_next!14929 () Bool)

(assert (=> b!540623 (= b_free!14913 (not b_next!14929))))

(declare-fun tp!172197 () Bool)

(declare-fun b_and!52827 () Bool)

(assert (=> b!540623 (= tp!172197 b_and!52827)))

(declare-fun b_free!14915 () Bool)

(declare-fun b_next!14931 () Bool)

(assert (=> b!540623 (= b_free!14915 (not b_next!14931))))

(declare-fun tp!172202 () Bool)

(declare-fun b_and!52829 () Bool)

(assert (=> b!540623 (= tp!172202 b_and!52829)))

(declare-fun b!540606 () Bool)

(declare-fun b_free!14917 () Bool)

(declare-fun b_next!14933 () Bool)

(assert (=> b!540606 (= b_free!14917 (not b_next!14933))))

(declare-fun tp!172200 () Bool)

(declare-fun b_and!52831 () Bool)

(assert (=> b!540606 (= tp!172200 b_and!52831)))

(declare-fun b_free!14919 () Bool)

(declare-fun b_next!14935 () Bool)

(assert (=> b!540606 (= b_free!14919 (not b_next!14935))))

(declare-fun tp!172204 () Bool)

(declare-fun b_and!52833 () Bool)

(assert (=> b!540606 (= tp!172204 b_and!52833)))

(declare-fun b!540603 () Bool)

(declare-fun res!229775 () Bool)

(declare-fun e!326441 () Bool)

(assert (=> b!540603 (=> (not res!229775) (not e!326441))))

(declare-datatypes ((C!3556 0))(
  ( (C!3557 (val!2004 Int)) )
))
(declare-datatypes ((Regex!1317 0))(
  ( (ElementMatch!1317 (c!102400 C!3556)) (Concat!2324 (regOne!3146 Regex!1317) (regTwo!3146 Regex!1317)) (EmptyExpr!1317) (Star!1317 (reg!1646 Regex!1317)) (EmptyLang!1317) (Union!1317 (regOne!3147 Regex!1317) (regTwo!3147 Regex!1317)) )
))
(declare-datatypes ((String!6778 0))(
  ( (String!6779 (value!32856 String)) )
))
(declare-datatypes ((List!5291 0))(
  ( (Nil!5281) (Cons!5281 (h!10682 (_ BitVec 16)) (t!74388 List!5291)) )
))
(declare-datatypes ((TokenValue!1007 0))(
  ( (FloatLiteralValue!2014 (text!7494 List!5291)) (TokenValueExt!1006 (__x!3912 Int)) (Broken!5035 (value!32857 List!5291)) (Object!1016) (End!1007) (Def!1007) (Underscore!1007) (Match!1007) (Else!1007) (Error!1007) (Case!1007) (If!1007) (Extends!1007) (Abstract!1007) (Class!1007) (Val!1007) (DelimiterValue!2014 (del!1067 List!5291)) (KeywordValue!1013 (value!32858 List!5291)) (CommentValue!2014 (value!32859 List!5291)) (WhitespaceValue!2014 (value!32860 List!5291)) (IndentationValue!1007 (value!32861 List!5291)) (String!6780) (Int32!1007) (Broken!5036 (value!32862 List!5291)) (Boolean!1008) (Unit!9230) (OperatorValue!1010 (op!1067 List!5291)) (IdentifierValue!2014 (value!32863 List!5291)) (IdentifierValue!2015 (value!32864 List!5291)) (WhitespaceValue!2015 (value!32865 List!5291)) (True!2014) (False!2014) (Broken!5037 (value!32866 List!5291)) (Broken!5038 (value!32867 List!5291)) (True!2015) (RightBrace!1007) (RightBracket!1007) (Colon!1007) (Null!1007) (Comma!1007) (LeftBracket!1007) (False!2015) (LeftBrace!1007) (ImaginaryLiteralValue!1007 (text!7495 List!5291)) (StringLiteralValue!3021 (value!32868 List!5291)) (EOFValue!1007 (value!32869 List!5291)) (IdentValue!1007 (value!32870 List!5291)) (DelimiterValue!2015 (value!32871 List!5291)) (DedentValue!1007 (value!32872 List!5291)) (NewLineValue!1007 (value!32873 List!5291)) (IntegerValue!3021 (value!32874 (_ BitVec 32)) (text!7496 List!5291)) (IntegerValue!3022 (value!32875 Int) (text!7497 List!5291)) (Times!1007) (Or!1007) (Equal!1007) (Minus!1007) (Broken!5039 (value!32876 List!5291)) (And!1007) (Div!1007) (LessEqual!1007) (Mod!1007) (Concat!2325) (Not!1007) (Plus!1007) (SpaceValue!1007 (value!32877 List!5291)) (IntegerValue!3023 (value!32878 Int) (text!7498 List!5291)) (StringLiteralValue!3022 (text!7499 List!5291)) (FloatLiteralValue!2015 (text!7500 List!5291)) (BytesLiteralValue!1007 (value!32879 List!5291)) (CommentValue!2015 (value!32880 List!5291)) (StringLiteralValue!3023 (value!32881 List!5291)) (ErrorTokenValue!1007 (msg!1068 List!5291)) )
))
(declare-datatypes ((List!5292 0))(
  ( (Nil!5282) (Cons!5282 (h!10683 C!3556) (t!74389 List!5292)) )
))
(declare-datatypes ((IArray!3401 0))(
  ( (IArray!3402 (innerList!1758 List!5292)) )
))
(declare-datatypes ((Conc!1700 0))(
  ( (Node!1700 (left!4396 Conc!1700) (right!4726 Conc!1700) (csize!3630 Int) (cheight!1911 Int)) (Leaf!2699 (xs!4337 IArray!3401) (csize!3631 Int)) (Empty!1700) )
))
(declare-datatypes ((BalanceConc!3408 0))(
  ( (BalanceConc!3409 (c!102401 Conc!1700)) )
))
(declare-datatypes ((TokenValueInjection!1782 0))(
  ( (TokenValueInjection!1783 (toValue!1830 Int) (toChars!1689 Int)) )
))
(declare-datatypes ((Rule!1766 0))(
  ( (Rule!1767 (regex!983 Regex!1317) (tag!1245 String!6778) (isSeparator!983 Bool) (transformation!983 TokenValueInjection!1782)) )
))
(declare-datatypes ((List!5293 0))(
  ( (Nil!5283) (Cons!5283 (h!10684 Rule!1766) (t!74390 List!5293)) )
))
(declare-fun rules!3103 () List!5293)

(declare-fun isEmpty!3816 (List!5293) Bool)

(assert (=> b!540603 (= res!229775 (not (isEmpty!3816 rules!3103)))))

(declare-fun b!540604 () Bool)

(declare-fun e!326418 () Bool)

(declare-fun e!326423 () Bool)

(assert (=> b!540604 (= e!326418 e!326423)))

(declare-fun res!229765 () Bool)

(assert (=> b!540604 (=> (not res!229765) (not e!326423))))

(declare-fun suffix!1342 () List!5292)

(declare-datatypes ((Token!1702 0))(
  ( (Token!1703 (value!32882 TokenValue!1007) (rule!1693 Rule!1766) (size!4244 Int) (originalCharacters!1022 List!5292)) )
))
(declare-fun token!491 () Token!1702)

(declare-datatypes ((tuple2!6340 0))(
  ( (tuple2!6341 (_1!3434 Token!1702) (_2!3434 List!5292)) )
))
(declare-fun lt!224900 () tuple2!6340)

(assert (=> b!540604 (= res!229765 (and (= (_1!3434 lt!224900) token!491) (= (_2!3434 lt!224900) suffix!1342)))))

(declare-datatypes ((Option!1333 0))(
  ( (None!1332) (Some!1332 (v!16143 tuple2!6340)) )
))
(declare-fun lt!224905 () Option!1333)

(declare-fun get!1989 (Option!1333) tuple2!6340)

(assert (=> b!540604 (= lt!224900 (get!1989 lt!224905))))

(declare-fun b!540605 () Bool)

(declare-fun lt!224907 () TokenValue!1007)

(declare-fun e!326434 () Bool)

(declare-fun lt!224899 () List!5292)

(declare-fun lt!224929 () List!5292)

(declare-fun lt!224912 () Int)

(assert (=> b!540605 (= e!326434 (and (= (size!4244 token!491) lt!224912) (= (originalCharacters!1022 token!491) lt!224929) (= (tuple2!6341 token!491 suffix!1342) (tuple2!6341 (Token!1703 lt!224907 (rule!1693 token!491) lt!224912 lt!224929) lt!224899))))))

(declare-fun e!326420 () Bool)

(assert (=> b!540606 (= e!326420 (and tp!172200 tp!172204))))

(declare-fun b!540607 () Bool)

(declare-fun res!229771 () Bool)

(declare-fun e!326421 () Bool)

(assert (=> b!540607 (=> res!229771 e!326421)))

(declare-fun lt!224911 () Option!1333)

(declare-fun lt!224903 () List!5292)

(declare-fun matchR!476 (Regex!1317 List!5292) Bool)

(assert (=> b!540607 (= res!229771 (not (matchR!476 (regex!983 (rule!1693 (_1!3434 (v!16143 lt!224911)))) lt!224903)))))

(declare-fun b!540608 () Bool)

(declare-fun res!229774 () Bool)

(assert (=> b!540608 (=> (not res!229774) (not e!326441))))

(declare-fun input!2705 () List!5292)

(declare-fun isEmpty!3817 (List!5292) Bool)

(assert (=> b!540608 (= res!229774 (not (isEmpty!3817 input!2705)))))

(declare-fun tp!172206 () Bool)

(declare-fun e!326438 () Bool)

(declare-fun e!326424 () Bool)

(declare-fun b!540609 () Bool)

(declare-fun inv!6625 (String!6778) Bool)

(declare-fun inv!6628 (TokenValueInjection!1782) Bool)

(assert (=> b!540609 (= e!326424 (and tp!172206 (inv!6625 (tag!1245 (rule!1693 token!491))) (inv!6628 (transformation!983 (rule!1693 token!491))) e!326438))))

(declare-fun b!540610 () Bool)

(declare-fun e!326429 () Bool)

(assert (=> b!540610 (= e!326429 (= (_1!3434 (get!1989 lt!224911)) (_1!3434 (v!16143 lt!224911))))))

(declare-fun e!326439 () Bool)

(declare-fun tp!172199 () Bool)

(declare-fun b!540611 () Bool)

(assert (=> b!540611 (= e!326439 (and tp!172199 (inv!6625 (tag!1245 (h!10684 rules!3103))) (inv!6628 (transformation!983 (h!10684 rules!3103))) e!326420))))

(declare-fun b!540612 () Bool)

(declare-datatypes ((Unit!9231 0))(
  ( (Unit!9232) )
))
(declare-fun e!326426 () Unit!9231)

(declare-fun Unit!9233 () Unit!9231)

(assert (=> b!540612 (= e!326426 Unit!9233)))

(assert (=> b!540612 false))

(declare-fun b!540613 () Bool)

(declare-fun e!326440 () Bool)

(declare-fun e!326432 () Bool)

(assert (=> b!540613 (= e!326440 (not e!326432))))

(declare-fun res!229789 () Bool)

(assert (=> b!540613 (=> res!229789 e!326432)))

(declare-fun lt!224901 () List!5292)

(declare-fun isPrefix!625 (List!5292 List!5292) Bool)

(assert (=> b!540613 (= res!229789 (not (isPrefix!625 input!2705 lt!224901)))))

(assert (=> b!540613 (isPrefix!625 lt!224929 lt!224901)))

(declare-fun lt!224909 () Unit!9231)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!476 (List!5292 List!5292) Unit!9231)

(assert (=> b!540613 (= lt!224909 (lemmaConcatTwoListThenFirstIsPrefix!476 lt!224929 suffix!1342))))

(declare-fun lt!224915 () List!5292)

(assert (=> b!540613 (isPrefix!625 input!2705 lt!224915)))

(declare-fun lt!224902 () Unit!9231)

(assert (=> b!540613 (= lt!224902 (lemmaConcatTwoListThenFirstIsPrefix!476 input!2705 suffix!1342))))

(declare-fun e!326427 () Bool)

(assert (=> b!540613 e!326427))

(declare-fun res!229772 () Bool)

(assert (=> b!540613 (=> (not res!229772) (not e!326427))))

(declare-fun lt!224906 () TokenValue!1007)

(assert (=> b!540613 (= res!229772 (= (value!32882 (_1!3434 (v!16143 lt!224911))) lt!224906))))

(declare-fun lt!224908 () BalanceConc!3408)

(declare-fun apply!1258 (TokenValueInjection!1782 BalanceConc!3408) TokenValue!1007)

(assert (=> b!540613 (= lt!224906 (apply!1258 (transformation!983 (rule!1693 (_1!3434 (v!16143 lt!224911)))) lt!224908))))

(declare-fun seqFromList!1181 (List!5292) BalanceConc!3408)

(assert (=> b!540613 (= lt!224908 (seqFromList!1181 lt!224903))))

(declare-fun lt!224931 () Unit!9231)

(declare-fun lemmaInv!131 (TokenValueInjection!1782) Unit!9231)

(assert (=> b!540613 (= lt!224931 (lemmaInv!131 (transformation!983 (rule!1693 token!491))))))

(declare-fun lt!224916 () Unit!9231)

(assert (=> b!540613 (= lt!224916 (lemmaInv!131 (transformation!983 (rule!1693 (_1!3434 (v!16143 lt!224911))))))))

(declare-datatypes ((LexerInterface!869 0))(
  ( (LexerInterfaceExt!866 (__x!3913 Int)) (Lexer!867) )
))
(declare-fun thiss!22590 () LexerInterface!869)

(declare-fun ruleValid!203 (LexerInterface!869 Rule!1766) Bool)

(assert (=> b!540613 (ruleValid!203 thiss!22590 (rule!1693 token!491))))

(declare-fun lt!224917 () Unit!9231)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!62 (LexerInterface!869 Rule!1766 List!5293) Unit!9231)

(assert (=> b!540613 (= lt!224917 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!62 thiss!22590 (rule!1693 token!491) rules!3103))))

(assert (=> b!540613 (ruleValid!203 thiss!22590 (rule!1693 (_1!3434 (v!16143 lt!224911))))))

(declare-fun lt!224928 () Unit!9231)

(assert (=> b!540613 (= lt!224928 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!62 thiss!22590 (rule!1693 (_1!3434 (v!16143 lt!224911))) rules!3103))))

(assert (=> b!540613 (isPrefix!625 input!2705 input!2705)))

(declare-fun lt!224910 () Unit!9231)

(declare-fun lemmaIsPrefixRefl!365 (List!5292 List!5292) Unit!9231)

(assert (=> b!540613 (= lt!224910 (lemmaIsPrefixRefl!365 input!2705 input!2705))))

(declare-fun lt!224926 () List!5292)

(assert (=> b!540613 (= (_2!3434 (v!16143 lt!224911)) lt!224926)))

(declare-fun lt!224904 () Unit!9231)

(declare-fun lemmaSamePrefixThenSameSuffix!352 (List!5292 List!5292 List!5292 List!5292 List!5292) Unit!9231)

(assert (=> b!540613 (= lt!224904 (lemmaSamePrefixThenSameSuffix!352 lt!224903 (_2!3434 (v!16143 lt!224911)) lt!224903 lt!224926 input!2705))))

(declare-fun getSuffix!148 (List!5292 List!5292) List!5292)

(assert (=> b!540613 (= lt!224926 (getSuffix!148 input!2705 lt!224903))))

(declare-fun lt!224919 () List!5292)

(assert (=> b!540613 (isPrefix!625 lt!224903 lt!224919)))

(declare-fun ++!1471 (List!5292 List!5292) List!5292)

(assert (=> b!540613 (= lt!224919 (++!1471 lt!224903 (_2!3434 (v!16143 lt!224911))))))

(declare-fun lt!224924 () Unit!9231)

(assert (=> b!540613 (= lt!224924 (lemmaConcatTwoListThenFirstIsPrefix!476 lt!224903 (_2!3434 (v!16143 lt!224911))))))

(declare-fun lt!224922 () Unit!9231)

(declare-fun lemmaCharactersSize!62 (Token!1702) Unit!9231)

(assert (=> b!540613 (= lt!224922 (lemmaCharactersSize!62 token!491))))

(declare-fun lt!224913 () Unit!9231)

(assert (=> b!540613 (= lt!224913 (lemmaCharactersSize!62 (_1!3434 (v!16143 lt!224911))))))

(declare-fun lt!224920 () Unit!9231)

(assert (=> b!540613 (= lt!224920 e!326426)))

(declare-fun c!102399 () Bool)

(declare-fun lt!224927 () Int)

(assert (=> b!540613 (= c!102399 (> lt!224927 lt!224912))))

(declare-fun size!4245 (List!5292) Int)

(assert (=> b!540613 (= lt!224912 (size!4245 lt!224929))))

(assert (=> b!540613 (= lt!224927 (size!4245 lt!224903))))

(declare-fun list!2193 (BalanceConc!3408) List!5292)

(declare-fun charsOf!612 (Token!1702) BalanceConc!3408)

(assert (=> b!540613 (= lt!224903 (list!2193 (charsOf!612 (_1!3434 (v!16143 lt!224911)))))))

(declare-fun lt!224923 () tuple2!6340)

(assert (=> b!540613 (= lt!224911 (Some!1332 lt!224923))))

(assert (=> b!540613 (= lt!224923 (tuple2!6341 (_1!3434 (v!16143 lt!224911)) (_2!3434 (v!16143 lt!224911))))))

(declare-fun lt!224930 () Unit!9231)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!68 (List!5292 List!5292 List!5292 List!5292) Unit!9231)

(assert (=> b!540613 (= lt!224930 (lemmaConcatSameAndSameSizesThenSameLists!68 lt!224929 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!540614 () Bool)

(declare-fun res!229764 () Bool)

(declare-fun e!326431 () Bool)

(assert (=> b!540614 (=> res!229764 e!326431)))

(assert (=> b!540614 (= res!229764 (not (= lt!224919 input!2705)))))

(declare-fun b!540615 () Bool)

(declare-fun e!326442 () Bool)

(assert (=> b!540615 (= e!326423 e!326442)))

(declare-fun res!229767 () Bool)

(assert (=> b!540615 (=> (not res!229767) (not e!326442))))

(get-info :version)

(assert (=> b!540615 (= res!229767 ((_ is Some!1332) lt!224911))))

(declare-fun maxPrefix!567 (LexerInterface!869 List!5293 List!5292) Option!1333)

(assert (=> b!540615 (= lt!224911 (maxPrefix!567 thiss!22590 rules!3103 input!2705))))

(declare-fun b!540616 () Bool)

(declare-fun e!326437 () Bool)

(declare-fun tp_is_empty!2989 () Bool)

(declare-fun tp!172205 () Bool)

(assert (=> b!540616 (= e!326437 (and tp_is_empty!2989 tp!172205))))

(declare-fun b!540617 () Bool)

(declare-fun res!229770 () Bool)

(assert (=> b!540617 (=> (not res!229770) (not e!326427))))

(assert (=> b!540617 (= res!229770 (= (size!4244 (_1!3434 (v!16143 lt!224911))) (size!4245 (originalCharacters!1022 (_1!3434 (v!16143 lt!224911))))))))

(declare-fun res!229779 () Bool)

(assert (=> start!49936 (=> (not res!229779) (not e!326441))))

(assert (=> start!49936 (= res!229779 ((_ is Lexer!867) thiss!22590))))

(assert (=> start!49936 e!326441))

(assert (=> start!49936 e!326437))

(declare-fun e!326436 () Bool)

(assert (=> start!49936 e!326436))

(declare-fun e!326425 () Bool)

(declare-fun inv!6629 (Token!1702) Bool)

(assert (=> start!49936 (and (inv!6629 token!491) e!326425)))

(assert (=> start!49936 true))

(declare-fun e!326435 () Bool)

(assert (=> start!49936 e!326435))

(declare-fun b!540618 () Bool)

(declare-fun res!229780 () Bool)

(assert (=> b!540618 (=> res!229780 e!326431)))

(assert (=> b!540618 (= res!229780 (not (matchR!476 (regex!983 (rule!1693 token!491)) input!2705)))))

(declare-fun b!540619 () Bool)

(declare-fun e!326428 () Bool)

(assert (=> b!540619 (= e!326428 e!326418)))

(declare-fun res!229773 () Bool)

(assert (=> b!540619 (=> (not res!229773) (not e!326418))))

(declare-fun isDefined!1145 (Option!1333) Bool)

(assert (=> b!540619 (= res!229773 (isDefined!1145 lt!224905))))

(assert (=> b!540619 (= lt!224905 (maxPrefix!567 thiss!22590 rules!3103 lt!224915))))

(assert (=> b!540619 (= lt!224915 (++!1471 input!2705 suffix!1342))))

(declare-fun b!540620 () Bool)

(declare-fun tp!172201 () Bool)

(declare-fun inv!21 (TokenValue!1007) Bool)

(assert (=> b!540620 (= e!326425 (and (inv!21 (value!32882 token!491)) e!326424 tp!172201))))

(declare-fun b!540621 () Bool)

(declare-fun e!326417 () Bool)

(assert (=> b!540621 (= e!326417 e!326429)))

(declare-fun res!229776 () Bool)

(assert (=> b!540621 (=> (not res!229776) (not e!326429))))

(assert (=> b!540621 (= res!229776 (isDefined!1145 lt!224911))))

(declare-fun b!540622 () Bool)

(declare-fun res!229781 () Bool)

(assert (=> b!540622 (=> (not res!229781) (not e!326441))))

(declare-fun rulesInvariant!832 (LexerInterface!869 List!5293) Bool)

(assert (=> b!540622 (= res!229781 (rulesInvariant!832 thiss!22590 rules!3103))))

(assert (=> b!540623 (= e!326438 (and tp!172197 tp!172202))))

(declare-fun b!540624 () Bool)

(declare-fun tp!172198 () Bool)

(assert (=> b!540624 (= e!326436 (and e!326439 tp!172198))))

(declare-fun b!540625 () Bool)

(declare-fun res!229788 () Bool)

(assert (=> b!540625 (=> res!229788 e!326431)))

(declare-fun contains!1227 (List!5293 Rule!1766) Bool)

(assert (=> b!540625 (= res!229788 (not (contains!1227 rules!3103 (rule!1693 token!491))))))

(declare-fun b!540626 () Bool)

(declare-fun tp!172203 () Bool)

(assert (=> b!540626 (= e!326435 (and tp_is_empty!2989 tp!172203))))

(declare-fun b!540627 () Bool)

(assert (=> b!540627 (= e!326441 e!326428)))

(declare-fun res!229786 () Bool)

(assert (=> b!540627 (=> (not res!229786) (not e!326428))))

(assert (=> b!540627 (= res!229786 (= lt!224929 input!2705))))

(assert (=> b!540627 (= lt!224929 (list!2193 (charsOf!612 token!491)))))

(declare-fun b!540628 () Bool)

(declare-fun res!229777 () Bool)

(assert (=> b!540628 (=> res!229777 e!326431)))

(assert (=> b!540628 (= res!229777 (not (= (++!1471 lt!224903 lt!224926) input!2705)))))

(declare-fun b!540629 () Bool)

(declare-fun res!229783 () Bool)

(assert (=> b!540629 (=> res!229783 e!326431)))

(assert (=> b!540629 (= res!229783 (not (isPrefix!625 lt!224903 input!2705)))))

(declare-fun b!540630 () Bool)

(assert (=> b!540630 (= e!326431 e!326421)))

(declare-fun res!229768 () Bool)

(assert (=> b!540630 (=> res!229768 e!326421)))

(assert (=> b!540630 (= res!229768 (not (contains!1227 rules!3103 (rule!1693 (_1!3434 (v!16143 lt!224911))))))))

(assert (=> b!540630 (= lt!224926 (_2!3434 (v!16143 lt!224911)))))

(declare-fun b!540631 () Bool)

(declare-fun res!229787 () Bool)

(assert (=> b!540631 (=> res!229787 e!326431)))

(assert (=> b!540631 (= res!229787 (not (isPrefix!625 lt!224929 input!2705)))))

(declare-fun b!540632 () Bool)

(assert (=> b!540632 (= e!326427 (and (= (size!4244 (_1!3434 (v!16143 lt!224911))) lt!224927) (= (originalCharacters!1022 (_1!3434 (v!16143 lt!224911))) lt!224903) (= lt!224923 (tuple2!6341 (Token!1703 lt!224906 (rule!1693 (_1!3434 (v!16143 lt!224911))) lt!224927 lt!224903) lt!224926))))))

(declare-fun b!540633 () Bool)

(declare-fun res!229790 () Bool)

(assert (=> b!540633 (=> res!229790 e!326431)))

(assert (=> b!540633 (= res!229790 (not (= (getSuffix!148 input!2705 input!2705) Nil!5282)))))

(declare-fun b!540634 () Bool)

(declare-fun e!326433 () Bool)

(assert (=> b!540634 (= e!326433 e!326417)))

(declare-fun res!229784 () Bool)

(assert (=> b!540634 (=> res!229784 e!326417)))

(assert (=> b!540634 (= res!229784 (>= lt!224927 lt!224912))))

(declare-fun b!540635 () Bool)

(declare-fun res!229782 () Bool)

(assert (=> b!540635 (=> (not res!229782) (not e!326434))))

(assert (=> b!540635 (= res!229782 (= (size!4244 token!491) (size!4245 (originalCharacters!1022 token!491))))))

(declare-fun b!540636 () Bool)

(assert (=> b!540636 (= e!326432 e!326431)))

(declare-fun res!229769 () Bool)

(assert (=> b!540636 (=> res!229769 e!326431)))

(assert (=> b!540636 (= res!229769 (>= lt!224927 lt!224912))))

(assert (=> b!540636 e!326433))

(declare-fun res!229785 () Bool)

(assert (=> b!540636 (=> (not res!229785) (not e!326433))))

(declare-fun maxPrefixOneRule!282 (LexerInterface!869 Rule!1766 List!5292) Option!1333)

(assert (=> b!540636 (= res!229785 (= (maxPrefixOneRule!282 thiss!22590 (rule!1693 token!491) lt!224915) (Some!1332 (tuple2!6341 (Token!1703 lt!224907 (rule!1693 token!491) lt!224912 lt!224929) suffix!1342))))))

(declare-fun lt!224921 () Unit!9231)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!34 (LexerInterface!869 List!5293 List!5292 List!5292 List!5292 Rule!1766) Unit!9231)

(assert (=> b!540636 (= lt!224921 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!34 thiss!22590 rules!3103 lt!224929 lt!224915 suffix!1342 (rule!1693 token!491)))))

(assert (=> b!540636 (= (maxPrefixOneRule!282 thiss!22590 (rule!1693 (_1!3434 (v!16143 lt!224911))) input!2705) (Some!1332 (tuple2!6341 (Token!1703 lt!224906 (rule!1693 (_1!3434 (v!16143 lt!224911))) lt!224927 lt!224903) (_2!3434 (v!16143 lt!224911)))))))

(declare-fun lt!224918 () Unit!9231)

(assert (=> b!540636 (= lt!224918 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!34 thiss!22590 rules!3103 lt!224903 input!2705 (_2!3434 (v!16143 lt!224911)) (rule!1693 (_1!3434 (v!16143 lt!224911)))))))

(assert (=> b!540636 e!326434))

(declare-fun res!229766 () Bool)

(assert (=> b!540636 (=> (not res!229766) (not e!326434))))

(assert (=> b!540636 (= res!229766 (= (value!32882 token!491) lt!224907))))

(assert (=> b!540636 (= lt!224907 (apply!1258 (transformation!983 (rule!1693 token!491)) (seqFromList!1181 lt!224929)))))

(assert (=> b!540636 (= suffix!1342 lt!224899)))

(declare-fun lt!224925 () Unit!9231)

(assert (=> b!540636 (= lt!224925 (lemmaSamePrefixThenSameSuffix!352 lt!224929 suffix!1342 lt!224929 lt!224899 lt!224915))))

(assert (=> b!540636 (= lt!224899 (getSuffix!148 lt!224915 lt!224929))))

(declare-fun b!540637 () Bool)

(assert (=> b!540637 (= e!326421 true)))

(declare-fun lt!224914 () Unit!9231)

(declare-fun lemmaSemiInverse!112 (TokenValueInjection!1782 BalanceConc!3408) Unit!9231)

(assert (=> b!540637 (= lt!224914 (lemmaSemiInverse!112 (transformation!983 (rule!1693 (_1!3434 (v!16143 lt!224911)))) lt!224908))))

(declare-fun b!540638 () Bool)

(declare-fun Unit!9234 () Unit!9231)

(assert (=> b!540638 (= e!326426 Unit!9234)))

(declare-fun b!540639 () Bool)

(assert (=> b!540639 (= e!326442 e!326440)))

(declare-fun res!229778 () Bool)

(assert (=> b!540639 (=> (not res!229778) (not e!326440))))

(assert (=> b!540639 (= res!229778 (= lt!224901 lt!224915))))

(assert (=> b!540639 (= lt!224901 (++!1471 lt!224929 suffix!1342))))

(assert (= (and start!49936 res!229779) b!540603))

(assert (= (and b!540603 res!229775) b!540622))

(assert (= (and b!540622 res!229781) b!540608))

(assert (= (and b!540608 res!229774) b!540627))

(assert (= (and b!540627 res!229786) b!540619))

(assert (= (and b!540619 res!229773) b!540604))

(assert (= (and b!540604 res!229765) b!540615))

(assert (= (and b!540615 res!229767) b!540639))

(assert (= (and b!540639 res!229778) b!540613))

(assert (= (and b!540613 c!102399) b!540612))

(assert (= (and b!540613 (not c!102399)) b!540638))

(assert (= (and b!540613 res!229772) b!540617))

(assert (= (and b!540617 res!229770) b!540632))

(assert (= (and b!540613 (not res!229789)) b!540636))

(assert (= (and b!540636 res!229766) b!540635))

(assert (= (and b!540635 res!229782) b!540605))

(assert (= (and b!540636 res!229785) b!540634))

(assert (= (and b!540634 (not res!229784)) b!540621))

(assert (= (and b!540621 res!229776) b!540610))

(assert (= (and b!540636 (not res!229769)) b!540625))

(assert (= (and b!540625 (not res!229788)) b!540618))

(assert (= (and b!540618 (not res!229780)) b!540631))

(assert (= (and b!540631 (not res!229787)) b!540633))

(assert (= (and b!540633 (not res!229790)) b!540614))

(assert (= (and b!540614 (not res!229764)) b!540629))

(assert (= (and b!540629 (not res!229783)) b!540628))

(assert (= (and b!540628 (not res!229777)) b!540630))

(assert (= (and b!540630 (not res!229768)) b!540607))

(assert (= (and b!540607 (not res!229771)) b!540637))

(assert (= (and start!49936 ((_ is Cons!5282) suffix!1342)) b!540616))

(assert (= b!540611 b!540606))

(assert (= b!540624 b!540611))

(assert (= (and start!49936 ((_ is Cons!5283) rules!3103)) b!540624))

(assert (= b!540609 b!540623))

(assert (= b!540620 b!540609))

(assert (= start!49936 b!540620))

(assert (= (and start!49936 ((_ is Cons!5282) input!2705)) b!540626))

(declare-fun m!788157 () Bool)

(assert (=> b!540604 m!788157))

(declare-fun m!788159 () Bool)

(assert (=> b!540635 m!788159))

(declare-fun m!788161 () Bool)

(assert (=> b!540625 m!788161))

(declare-fun m!788163 () Bool)

(assert (=> b!540627 m!788163))

(assert (=> b!540627 m!788163))

(declare-fun m!788165 () Bool)

(assert (=> b!540627 m!788165))

(declare-fun m!788167 () Bool)

(assert (=> b!540633 m!788167))

(declare-fun m!788169 () Bool)

(assert (=> b!540609 m!788169))

(declare-fun m!788171 () Bool)

(assert (=> b!540609 m!788171))

(declare-fun m!788173 () Bool)

(assert (=> b!540630 m!788173))

(declare-fun m!788175 () Bool)

(assert (=> b!540619 m!788175))

(declare-fun m!788177 () Bool)

(assert (=> b!540619 m!788177))

(declare-fun m!788179 () Bool)

(assert (=> b!540619 m!788179))

(declare-fun m!788181 () Bool)

(assert (=> b!540608 m!788181))

(declare-fun m!788183 () Bool)

(assert (=> b!540613 m!788183))

(declare-fun m!788185 () Bool)

(assert (=> b!540613 m!788185))

(declare-fun m!788187 () Bool)

(assert (=> b!540613 m!788187))

(declare-fun m!788189 () Bool)

(assert (=> b!540613 m!788189))

(declare-fun m!788191 () Bool)

(assert (=> b!540613 m!788191))

(declare-fun m!788193 () Bool)

(assert (=> b!540613 m!788193))

(declare-fun m!788195 () Bool)

(assert (=> b!540613 m!788195))

(declare-fun m!788197 () Bool)

(assert (=> b!540613 m!788197))

(declare-fun m!788199 () Bool)

(assert (=> b!540613 m!788199))

(declare-fun m!788201 () Bool)

(assert (=> b!540613 m!788201))

(declare-fun m!788203 () Bool)

(assert (=> b!540613 m!788203))

(declare-fun m!788205 () Bool)

(assert (=> b!540613 m!788205))

(declare-fun m!788207 () Bool)

(assert (=> b!540613 m!788207))

(declare-fun m!788209 () Bool)

(assert (=> b!540613 m!788209))

(declare-fun m!788211 () Bool)

(assert (=> b!540613 m!788211))

(assert (=> b!540613 m!788193))

(declare-fun m!788213 () Bool)

(assert (=> b!540613 m!788213))

(declare-fun m!788215 () Bool)

(assert (=> b!540613 m!788215))

(declare-fun m!788217 () Bool)

(assert (=> b!540613 m!788217))

(declare-fun m!788219 () Bool)

(assert (=> b!540613 m!788219))

(declare-fun m!788221 () Bool)

(assert (=> b!540613 m!788221))

(declare-fun m!788223 () Bool)

(assert (=> b!540613 m!788223))

(declare-fun m!788225 () Bool)

(assert (=> b!540613 m!788225))

(declare-fun m!788227 () Bool)

(assert (=> b!540613 m!788227))

(declare-fun m!788229 () Bool)

(assert (=> b!540613 m!788229))

(declare-fun m!788231 () Bool)

(assert (=> b!540613 m!788231))

(declare-fun m!788233 () Bool)

(assert (=> b!540613 m!788233))

(declare-fun m!788235 () Bool)

(assert (=> b!540613 m!788235))

(declare-fun m!788237 () Bool)

(assert (=> b!540617 m!788237))

(declare-fun m!788239 () Bool)

(assert (=> b!540639 m!788239))

(declare-fun m!788241 () Bool)

(assert (=> b!540618 m!788241))

(declare-fun m!788243 () Bool)

(assert (=> b!540620 m!788243))

(declare-fun m!788245 () Bool)

(assert (=> b!540636 m!788245))

(declare-fun m!788247 () Bool)

(assert (=> b!540636 m!788247))

(declare-fun m!788249 () Bool)

(assert (=> b!540636 m!788249))

(declare-fun m!788251 () Bool)

(assert (=> b!540636 m!788251))

(assert (=> b!540636 m!788251))

(declare-fun m!788253 () Bool)

(assert (=> b!540636 m!788253))

(declare-fun m!788255 () Bool)

(assert (=> b!540636 m!788255))

(declare-fun m!788257 () Bool)

(assert (=> b!540636 m!788257))

(declare-fun m!788259 () Bool)

(assert (=> b!540636 m!788259))

(declare-fun m!788261 () Bool)

(assert (=> b!540603 m!788261))

(declare-fun m!788263 () Bool)

(assert (=> b!540621 m!788263))

(declare-fun m!788265 () Bool)

(assert (=> b!540622 m!788265))

(declare-fun m!788267 () Bool)

(assert (=> b!540629 m!788267))

(declare-fun m!788269 () Bool)

(assert (=> b!540615 m!788269))

(declare-fun m!788271 () Bool)

(assert (=> b!540637 m!788271))

(declare-fun m!788273 () Bool)

(assert (=> b!540607 m!788273))

(declare-fun m!788275 () Bool)

(assert (=> b!540610 m!788275))

(declare-fun m!788277 () Bool)

(assert (=> start!49936 m!788277))

(declare-fun m!788279 () Bool)

(assert (=> b!540631 m!788279))

(declare-fun m!788281 () Bool)

(assert (=> b!540611 m!788281))

(declare-fun m!788283 () Bool)

(assert (=> b!540611 m!788283))

(declare-fun m!788285 () Bool)

(assert (=> b!540628 m!788285))

(check-sat (not b!540619) (not b!540637) b_and!52827 (not b!540609) (not b!540626) (not b_next!14933) (not b!540613) b_and!52829 (not b!540624) (not b!540639) (not b!540631) (not b!540621) (not b!540610) (not b!540636) (not b!540611) (not b!540629) b_and!52833 (not b!540615) (not b!540633) (not b!540635) (not start!49936) (not b!540620) (not b!540625) (not b_next!14931) (not b!540604) (not b!540630) (not b!540628) (not b!540618) (not b!540627) (not b!540616) (not b!540617) (not b_next!14929) (not b!540608) b_and!52831 tp_is_empty!2989 (not b!540603) (not b_next!14935) (not b!540607) (not b!540622))
(check-sat b_and!52827 b_and!52833 (not b_next!14931) (not b_next!14929) (not b_next!14933) b_and!52831 b_and!52829 (not b_next!14935))
