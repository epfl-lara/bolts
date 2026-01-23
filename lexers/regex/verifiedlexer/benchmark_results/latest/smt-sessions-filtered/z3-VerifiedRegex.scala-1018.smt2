; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50824 () Bool)

(assert start!50824)

(declare-fun b!549003 () Bool)

(declare-fun b_free!15281 () Bool)

(declare-fun b_next!15297 () Bool)

(assert (=> b!549003 (= b_free!15281 (not b_next!15297))))

(declare-fun tp!173912 () Bool)

(declare-fun b_and!53619 () Bool)

(assert (=> b!549003 (= tp!173912 b_and!53619)))

(declare-fun b_free!15283 () Bool)

(declare-fun b_next!15299 () Bool)

(assert (=> b!549003 (= b_free!15283 (not b_next!15299))))

(declare-fun tp!173918 () Bool)

(declare-fun b_and!53621 () Bool)

(assert (=> b!549003 (= tp!173918 b_and!53621)))

(declare-fun b!549007 () Bool)

(declare-fun b_free!15285 () Bool)

(declare-fun b_next!15301 () Bool)

(assert (=> b!549007 (= b_free!15285 (not b_next!15301))))

(declare-fun tp!173911 () Bool)

(declare-fun b_and!53623 () Bool)

(assert (=> b!549007 (= tp!173911 b_and!53623)))

(declare-fun b_free!15287 () Bool)

(declare-fun b_next!15303 () Bool)

(assert (=> b!549007 (= b_free!15287 (not b_next!15303))))

(declare-fun tp!173917 () Bool)

(declare-fun b_and!53625 () Bool)

(assert (=> b!549007 (= tp!173917 b_and!53625)))

(declare-fun b!549001 () Bool)

(declare-fun e!331895 () Bool)

(declare-fun e!331880 () Bool)

(assert (=> b!549001 (= e!331895 e!331880)))

(declare-fun res!235030 () Bool)

(assert (=> b!549001 (=> res!235030 e!331880)))

(declare-fun lt!230807 () Int)

(declare-fun lt!230828 () Int)

(assert (=> b!549001 (= res!235030 (>= lt!230807 lt!230828))))

(declare-fun b!549002 () Bool)

(declare-fun e!331874 () Bool)

(assert (=> b!549002 (= e!331880 e!331874)))

(declare-fun res!235026 () Bool)

(assert (=> b!549002 (=> (not res!235026) (not e!331874))))

(declare-datatypes ((C!3636 0))(
  ( (C!3637 (val!2044 Int)) )
))
(declare-datatypes ((Regex!1357 0))(
  ( (ElementMatch!1357 (c!103340 C!3636)) (Concat!2404 (regOne!3226 Regex!1357) (regTwo!3226 Regex!1357)) (EmptyExpr!1357) (Star!1357 (reg!1686 Regex!1357)) (EmptyLang!1357) (Union!1357 (regOne!3227 Regex!1357) (regTwo!3227 Regex!1357)) )
))
(declare-datatypes ((List!5423 0))(
  ( (Nil!5413) (Cons!5413 (h!10814 (_ BitVec 16)) (t!74952 List!5423)) )
))
(declare-datatypes ((List!5424 0))(
  ( (Nil!5414) (Cons!5414 (h!10815 C!3636) (t!74953 List!5424)) )
))
(declare-datatypes ((IArray!3481 0))(
  ( (IArray!3482 (innerList!1798 List!5424)) )
))
(declare-datatypes ((Conc!1740 0))(
  ( (Node!1740 (left!4480 Conc!1740) (right!4810 Conc!1740) (csize!3710 Int) (cheight!1951 Int)) (Leaf!2759 (xs!4377 IArray!3481) (csize!3711 Int)) (Empty!1740) )
))
(declare-datatypes ((BalanceConc!3488 0))(
  ( (BalanceConc!3489 (c!103341 Conc!1740)) )
))
(declare-datatypes ((TokenValue!1047 0))(
  ( (FloatLiteralValue!2094 (text!7774 List!5423)) (TokenValueExt!1046 (__x!3992 Int)) (Broken!5235 (value!33996 List!5423)) (Object!1056) (End!1047) (Def!1047) (Underscore!1047) (Match!1047) (Else!1047) (Error!1047) (Case!1047) (If!1047) (Extends!1047) (Abstract!1047) (Class!1047) (Val!1047) (DelimiterValue!2094 (del!1107 List!5423)) (KeywordValue!1053 (value!33997 List!5423)) (CommentValue!2094 (value!33998 List!5423)) (WhitespaceValue!2094 (value!33999 List!5423)) (IndentationValue!1047 (value!34000 List!5423)) (String!6978) (Int32!1047) (Broken!5236 (value!34001 List!5423)) (Boolean!1048) (Unit!9542) (OperatorValue!1050 (op!1107 List!5423)) (IdentifierValue!2094 (value!34002 List!5423)) (IdentifierValue!2095 (value!34003 List!5423)) (WhitespaceValue!2095 (value!34004 List!5423)) (True!2094) (False!2094) (Broken!5237 (value!34005 List!5423)) (Broken!5238 (value!34006 List!5423)) (True!2095) (RightBrace!1047) (RightBracket!1047) (Colon!1047) (Null!1047) (Comma!1047) (LeftBracket!1047) (False!2095) (LeftBrace!1047) (ImaginaryLiteralValue!1047 (text!7775 List!5423)) (StringLiteralValue!3141 (value!34007 List!5423)) (EOFValue!1047 (value!34008 List!5423)) (IdentValue!1047 (value!34009 List!5423)) (DelimiterValue!2095 (value!34010 List!5423)) (DedentValue!1047 (value!34011 List!5423)) (NewLineValue!1047 (value!34012 List!5423)) (IntegerValue!3141 (value!34013 (_ BitVec 32)) (text!7776 List!5423)) (IntegerValue!3142 (value!34014 Int) (text!7777 List!5423)) (Times!1047) (Or!1047) (Equal!1047) (Minus!1047) (Broken!5239 (value!34015 List!5423)) (And!1047) (Div!1047) (LessEqual!1047) (Mod!1047) (Concat!2405) (Not!1047) (Plus!1047) (SpaceValue!1047 (value!34016 List!5423)) (IntegerValue!3143 (value!34017 Int) (text!7778 List!5423)) (StringLiteralValue!3142 (text!7779 List!5423)) (FloatLiteralValue!2095 (text!7780 List!5423)) (BytesLiteralValue!1047 (value!34018 List!5423)) (CommentValue!2095 (value!34019 List!5423)) (StringLiteralValue!3143 (value!34020 List!5423)) (ErrorTokenValue!1047 (msg!1108 List!5423)) )
))
(declare-datatypes ((String!6979 0))(
  ( (String!6980 (value!34021 String)) )
))
(declare-datatypes ((TokenValueInjection!1862 0))(
  ( (TokenValueInjection!1863 (toValue!1870 Int) (toChars!1729 Int)) )
))
(declare-datatypes ((Rule!1846 0))(
  ( (Rule!1847 (regex!1023 Regex!1357) (tag!1285 String!6979) (isSeparator!1023 Bool) (transformation!1023 TokenValueInjection!1862)) )
))
(declare-datatypes ((Token!1782 0))(
  ( (Token!1783 (value!34022 TokenValue!1047) (rule!1745 Rule!1846) (size!4336 Int) (originalCharacters!1062 List!5424)) )
))
(declare-datatypes ((tuple2!6444 0))(
  ( (tuple2!6445 (_1!3486 Token!1782) (_2!3486 List!5424)) )
))
(declare-datatypes ((Option!1373 0))(
  ( (None!1372) (Some!1372 (v!16195 tuple2!6444)) )
))
(declare-fun lt!230820 () Option!1373)

(declare-fun isDefined!1185 (Option!1373) Bool)

(assert (=> b!549002 (= res!235026 (isDefined!1185 lt!230820))))

(declare-fun e!331882 () Bool)

(assert (=> b!549003 (= e!331882 (and tp!173912 tp!173918))))

(declare-fun b!549004 () Bool)

(declare-datatypes ((Unit!9543 0))(
  ( (Unit!9544) )
))
(declare-fun e!331902 () Unit!9543)

(declare-fun Unit!9545 () Unit!9543)

(assert (=> b!549004 (= e!331902 Unit!9545)))

(assert (=> b!549004 false))

(declare-fun b!549005 () Bool)

(declare-fun res!235025 () Bool)

(declare-fun e!331892 () Bool)

(assert (=> b!549005 (=> (not res!235025) (not e!331892))))

(declare-fun token!491 () Token!1782)

(declare-fun size!4337 (List!5424) Int)

(assert (=> b!549005 (= res!235025 (= (size!4336 token!491) (size!4337 (originalCharacters!1062 token!491))))))

(declare-fun b!549006 () Bool)

(declare-fun res!235022 () Bool)

(assert (=> b!549006 (=> (not res!235022) (not e!331874))))

(declare-fun get!2049 (Option!1373) tuple2!6444)

(assert (=> b!549006 (= res!235022 (= (_1!3486 (get!2049 lt!230820)) (_1!3486 (v!16195 lt!230820))))))

(declare-fun e!331884 () Bool)

(assert (=> b!549007 (= e!331884 (and tp!173911 tp!173917))))

(declare-fun b!549008 () Bool)

(declare-fun e!331885 () Bool)

(declare-fun e!331875 () Bool)

(assert (=> b!549008 (= e!331885 e!331875)))

(declare-fun res!235027 () Bool)

(assert (=> b!549008 (=> (not res!235027) (not e!331875))))

(declare-fun lt!230821 () tuple2!6444)

(declare-fun suffix!1342 () List!5424)

(assert (=> b!549008 (= res!235027 (and (= (_1!3486 lt!230821) token!491) (= (_2!3486 lt!230821) suffix!1342)))))

(declare-fun lt!230808 () Option!1373)

(assert (=> b!549008 (= lt!230821 (get!2049 lt!230808))))

(declare-fun b!549009 () Bool)

(declare-fun e!331898 () Bool)

(assert (=> b!549009 (= e!331898 true)))

(declare-fun lt!230829 () List!5424)

(declare-fun input!2705 () List!5424)

(declare-fun getSuffix!188 (List!5424 List!5424) List!5424)

(assert (=> b!549009 (= lt!230829 (getSuffix!188 input!2705 input!2705))))

(declare-fun lt!230834 () Int)

(assert (=> b!549009 (= lt!230834 (size!4337 input!2705))))

(declare-fun lt!230817 () TokenValue!1047)

(declare-fun lt!230803 () BalanceConc!3488)

(declare-fun apply!1298 (TokenValueInjection!1862 BalanceConc!3488) TokenValue!1047)

(assert (=> b!549009 (= lt!230817 (apply!1298 (transformation!1023 (rule!1745 (_1!3486 (v!16195 lt!230820)))) lt!230803))))

(declare-fun lt!230830 () Unit!9543)

(declare-fun lemmaSemiInverse!152 (TokenValueInjection!1862 BalanceConc!3488) Unit!9543)

(assert (=> b!549009 (= lt!230830 (lemmaSemiInverse!152 (transformation!1023 (rule!1745 (_1!3486 (v!16195 lt!230820)))) lt!230803))))

(declare-fun seqFromList!1221 (List!5424) BalanceConc!3488)

(assert (=> b!549009 (= lt!230803 (seqFromList!1221 input!2705))))

(declare-fun e!331876 () Bool)

(declare-fun tp!173914 () Bool)

(declare-fun b!549010 () Bool)

(declare-fun e!331893 () Bool)

(declare-fun inv!21 (TokenValue!1047) Bool)

(assert (=> b!549010 (= e!331893 (and (inv!21 (value!34022 token!491)) e!331876 tp!173914))))

(declare-fun res!235007 () Bool)

(declare-fun e!331888 () Bool)

(assert (=> start!50824 (=> (not res!235007) (not e!331888))))

(declare-datatypes ((LexerInterface!909 0))(
  ( (LexerInterfaceExt!906 (__x!3993 Int)) (Lexer!907) )
))
(declare-fun thiss!22590 () LexerInterface!909)

(get-info :version)

(assert (=> start!50824 (= res!235007 ((_ is Lexer!907) thiss!22590))))

(assert (=> start!50824 e!331888))

(declare-fun e!331878 () Bool)

(assert (=> start!50824 e!331878))

(declare-fun e!331894 () Bool)

(assert (=> start!50824 e!331894))

(declare-fun inv!6792 (Token!1782) Bool)

(assert (=> start!50824 (and (inv!6792 token!491) e!331893)))

(assert (=> start!50824 true))

(declare-fun e!331897 () Bool)

(assert (=> start!50824 e!331897))

(declare-fun b!549000 () Bool)

(declare-fun e!331873 () Bool)

(declare-fun tp!173919 () Bool)

(assert (=> b!549000 (= e!331894 (and e!331873 tp!173919))))

(declare-fun b!549011 () Bool)

(declare-fun e!331879 () Unit!9543)

(declare-fun Unit!9546 () Unit!9543)

(assert (=> b!549011 (= e!331879 Unit!9546)))

(declare-fun lt!230798 () Unit!9543)

(declare-fun lt!230813 () BalanceConc!3488)

(assert (=> b!549011 (= lt!230798 (lemmaSemiInverse!152 (transformation!1023 (rule!1745 (_1!3486 (v!16195 lt!230820)))) lt!230813))))

(declare-datatypes ((List!5425 0))(
  ( (Nil!5415) (Cons!5415 (h!10816 Rule!1846) (t!74954 List!5425)) )
))
(declare-fun rules!3103 () List!5425)

(declare-fun lt!230819 () List!5424)

(declare-fun lt!230811 () Unit!9543)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!28 (LexerInterface!909 List!5425 Rule!1846 List!5424 List!5424 List!5424 Rule!1846) Unit!9543)

(assert (=> b!549011 (= lt!230811 (lemmaMaxPrefixOutputsMaxPrefix!28 thiss!22590 rules!3103 (rule!1745 (_1!3486 (v!16195 lt!230820))) lt!230819 input!2705 input!2705 (rule!1745 token!491)))))

(declare-fun res!235009 () Bool)

(declare-fun matchR!516 (Regex!1357 List!5424) Bool)

(assert (=> b!549011 (= res!235009 (not (matchR!516 (regex!1023 (rule!1745 token!491)) input!2705)))))

(declare-fun e!331881 () Bool)

(assert (=> b!549011 (=> (not res!235009) (not e!331881))))

(assert (=> b!549011 e!331881))

(declare-fun b!549012 () Bool)

(declare-fun res!235011 () Bool)

(declare-fun e!331883 () Bool)

(assert (=> b!549012 (=> res!235011 e!331883)))

(declare-fun isEmpty!3908 (List!5424) Bool)

(assert (=> b!549012 (= res!235011 (not (isEmpty!3908 (_2!3486 (v!16195 lt!230820)))))))

(declare-fun b!549013 () Bool)

(declare-fun e!331901 () Bool)

(assert (=> b!549013 (= e!331901 false)))

(declare-fun b!549014 () Bool)

(declare-fun e!331896 () Bool)

(assert (=> b!549014 (= e!331888 e!331896)))

(declare-fun res!235012 () Bool)

(assert (=> b!549014 (=> (not res!235012) (not e!331896))))

(declare-fun lt!230815 () List!5424)

(assert (=> b!549014 (= res!235012 (= lt!230815 input!2705))))

(declare-fun list!2245 (BalanceConc!3488) List!5424)

(declare-fun charsOf!652 (Token!1782) BalanceConc!3488)

(assert (=> b!549014 (= lt!230815 (list!2245 (charsOf!652 token!491)))))

(declare-fun lt!230809 () TokenValue!1047)

(declare-fun e!331889 () Bool)

(declare-fun lt!230792 () tuple2!6444)

(declare-fun b!549015 () Bool)

(declare-fun lt!230827 () List!5424)

(assert (=> b!549015 (= e!331889 (and (= (size!4336 (_1!3486 (v!16195 lt!230820))) lt!230807) (= (originalCharacters!1062 (_1!3486 (v!16195 lt!230820))) lt!230819) (= lt!230792 (tuple2!6445 (Token!1783 lt!230809 (rule!1745 (_1!3486 (v!16195 lt!230820))) lt!230807 lt!230819) lt!230827))))))

(declare-fun b!549016 () Bool)

(assert (=> b!549016 (= e!331896 e!331885)))

(declare-fun res!235021 () Bool)

(assert (=> b!549016 (=> (not res!235021) (not e!331885))))

(assert (=> b!549016 (= res!235021 (isDefined!1185 lt!230808))))

(declare-fun lt!230822 () List!5424)

(declare-fun maxPrefix!607 (LexerInterface!909 List!5425 List!5424) Option!1373)

(assert (=> b!549016 (= lt!230808 (maxPrefix!607 thiss!22590 rules!3103 lt!230822))))

(declare-fun ++!1511 (List!5424 List!5424) List!5424)

(assert (=> b!549016 (= lt!230822 (++!1511 input!2705 suffix!1342))))

(declare-fun b!549017 () Bool)

(assert (=> b!549017 (= e!331883 e!331898)))

(declare-fun res!235032 () Bool)

(assert (=> b!549017 (=> res!235032 e!331898)))

(declare-fun lt!230826 () Int)

(declare-fun lt!230806 () Int)

(assert (=> b!549017 (= res!235032 (<= lt!230826 lt!230806))))

(declare-fun lt!230804 () Unit!9543)

(declare-fun e!331887 () Unit!9543)

(assert (=> b!549017 (= lt!230804 e!331887)))

(declare-fun c!103338 () Bool)

(assert (=> b!549017 (= c!103338 (< lt!230826 lt!230806))))

(declare-fun getIndex!24 (List!5425 Rule!1846) Int)

(assert (=> b!549017 (= lt!230806 (getIndex!24 rules!3103 (rule!1745 token!491)))))

(assert (=> b!549017 (= lt!230826 (getIndex!24 rules!3103 (rule!1745 (_1!3486 (v!16195 lt!230820)))))))

(declare-fun b!549018 () Bool)

(declare-fun res!235018 () Bool)

(assert (=> b!549018 (=> res!235018 e!331883)))

(declare-fun contains!1265 (List!5425 Rule!1846) Bool)

(assert (=> b!549018 (= res!235018 (not (contains!1265 rules!3103 (rule!1745 (_1!3486 (v!16195 lt!230820))))))))

(declare-fun b!549019 () Bool)

(assert (=> b!549019 (= e!331874 (= lt!230827 (_2!3486 (v!16195 lt!230820))))))

(declare-fun b!549020 () Bool)

(declare-fun e!331886 () Bool)

(declare-fun e!331899 () Bool)

(assert (=> b!549020 (= e!331886 (not e!331899))))

(declare-fun res!235008 () Bool)

(assert (=> b!549020 (=> res!235008 e!331899)))

(declare-fun lt!230789 () List!5424)

(declare-fun isPrefix!665 (List!5424 List!5424) Bool)

(assert (=> b!549020 (= res!235008 (not (isPrefix!665 input!2705 lt!230789)))))

(assert (=> b!549020 (isPrefix!665 lt!230815 lt!230789)))

(declare-fun lt!230835 () Unit!9543)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!516 (List!5424 List!5424) Unit!9543)

(assert (=> b!549020 (= lt!230835 (lemmaConcatTwoListThenFirstIsPrefix!516 lt!230815 suffix!1342))))

(assert (=> b!549020 (isPrefix!665 input!2705 lt!230822)))

(declare-fun lt!230823 () Unit!9543)

(assert (=> b!549020 (= lt!230823 (lemmaConcatTwoListThenFirstIsPrefix!516 input!2705 suffix!1342))))

(assert (=> b!549020 e!331889))

(declare-fun res!235028 () Bool)

(assert (=> b!549020 (=> (not res!235028) (not e!331889))))

(assert (=> b!549020 (= res!235028 (= (value!34022 (_1!3486 (v!16195 lt!230820))) lt!230809))))

(assert (=> b!549020 (= lt!230809 (apply!1298 (transformation!1023 (rule!1745 (_1!3486 (v!16195 lt!230820)))) lt!230813))))

(assert (=> b!549020 (= lt!230813 (seqFromList!1221 lt!230819))))

(declare-fun lt!230818 () Unit!9543)

(declare-fun lemmaInv!171 (TokenValueInjection!1862) Unit!9543)

(assert (=> b!549020 (= lt!230818 (lemmaInv!171 (transformation!1023 (rule!1745 token!491))))))

(declare-fun lt!230796 () Unit!9543)

(assert (=> b!549020 (= lt!230796 (lemmaInv!171 (transformation!1023 (rule!1745 (_1!3486 (v!16195 lt!230820))))))))

(declare-fun ruleValid!243 (LexerInterface!909 Rule!1846) Bool)

(assert (=> b!549020 (ruleValid!243 thiss!22590 (rule!1745 token!491))))

(declare-fun lt!230791 () Unit!9543)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!102 (LexerInterface!909 Rule!1846 List!5425) Unit!9543)

(assert (=> b!549020 (= lt!230791 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!102 thiss!22590 (rule!1745 token!491) rules!3103))))

(assert (=> b!549020 (ruleValid!243 thiss!22590 (rule!1745 (_1!3486 (v!16195 lt!230820))))))

(declare-fun lt!230810 () Unit!9543)

(assert (=> b!549020 (= lt!230810 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!102 thiss!22590 (rule!1745 (_1!3486 (v!16195 lt!230820))) rules!3103))))

(assert (=> b!549020 (isPrefix!665 input!2705 input!2705)))

(declare-fun lt!230832 () Unit!9543)

(declare-fun lemmaIsPrefixRefl!405 (List!5424 List!5424) Unit!9543)

(assert (=> b!549020 (= lt!230832 (lemmaIsPrefixRefl!405 input!2705 input!2705))))

(assert (=> b!549020 (= (_2!3486 (v!16195 lt!230820)) lt!230827)))

(declare-fun lt!230801 () Unit!9543)

(declare-fun lemmaSamePrefixThenSameSuffix!392 (List!5424 List!5424 List!5424 List!5424 List!5424) Unit!9543)

(assert (=> b!549020 (= lt!230801 (lemmaSamePrefixThenSameSuffix!392 lt!230819 (_2!3486 (v!16195 lt!230820)) lt!230819 lt!230827 input!2705))))

(assert (=> b!549020 (= lt!230827 (getSuffix!188 input!2705 lt!230819))))

(declare-fun lt!230800 () List!5424)

(assert (=> b!549020 (isPrefix!665 lt!230819 lt!230800)))

(assert (=> b!549020 (= lt!230800 (++!1511 lt!230819 (_2!3486 (v!16195 lt!230820))))))

(declare-fun lt!230805 () Unit!9543)

(assert (=> b!549020 (= lt!230805 (lemmaConcatTwoListThenFirstIsPrefix!516 lt!230819 (_2!3486 (v!16195 lt!230820))))))

(declare-fun lt!230824 () Unit!9543)

(declare-fun lemmaCharactersSize!102 (Token!1782) Unit!9543)

(assert (=> b!549020 (= lt!230824 (lemmaCharactersSize!102 token!491))))

(declare-fun lt!230812 () Unit!9543)

(assert (=> b!549020 (= lt!230812 (lemmaCharactersSize!102 (_1!3486 (v!16195 lt!230820))))))

(declare-fun lt!230831 () Unit!9543)

(assert (=> b!549020 (= lt!230831 e!331902)))

(declare-fun c!103337 () Bool)

(assert (=> b!549020 (= c!103337 (> lt!230807 lt!230828))))

(assert (=> b!549020 (= lt!230828 (size!4337 lt!230815))))

(assert (=> b!549020 (= lt!230807 (size!4337 lt!230819))))

(assert (=> b!549020 (= lt!230819 (list!2245 (charsOf!652 (_1!3486 (v!16195 lt!230820)))))))

(assert (=> b!549020 (= lt!230820 (Some!1372 lt!230792))))

(assert (=> b!549020 (= lt!230792 (tuple2!6445 (_1!3486 (v!16195 lt!230820)) (_2!3486 (v!16195 lt!230820))))))

(declare-fun lt!230795 () Unit!9543)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!108 (List!5424 List!5424 List!5424 List!5424) Unit!9543)

(assert (=> b!549020 (= lt!230795 (lemmaConcatSameAndSameSizesThenSameLists!108 lt!230815 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!549021 () Bool)

(declare-fun tp_is_empty!3069 () Bool)

(declare-fun tp!173920 () Bool)

(assert (=> b!549021 (= e!331878 (and tp_is_empty!3069 tp!173920))))

(declare-fun b!549022 () Bool)

(declare-fun res!235019 () Bool)

(assert (=> b!549022 (=> res!235019 e!331883)))

(assert (=> b!549022 (= res!235019 (or (not (= lt!230819 lt!230815)) (not (= (originalCharacters!1062 (_1!3486 (v!16195 lt!230820))) (originalCharacters!1062 token!491)))))))

(declare-fun b!549023 () Bool)

(declare-fun tp!173916 () Bool)

(assert (=> b!549023 (= e!331897 (and tp_is_empty!3069 tp!173916))))

(declare-fun b!549024 () Bool)

(declare-fun Unit!9547 () Unit!9543)

(assert (=> b!549024 (= e!331879 Unit!9547)))

(declare-fun b!549025 () Bool)

(assert (=> b!549025 (= e!331881 false)))

(declare-fun b!549026 () Bool)

(declare-fun e!331890 () Bool)

(assert (=> b!549026 (= e!331875 e!331890)))

(declare-fun res!235024 () Bool)

(assert (=> b!549026 (=> (not res!235024) (not e!331890))))

(assert (=> b!549026 (= res!235024 ((_ is Some!1372) lt!230820))))

(assert (=> b!549026 (= lt!230820 (maxPrefix!607 thiss!22590 rules!3103 input!2705))))

(declare-fun b!549027 () Bool)

(declare-fun Unit!9548 () Unit!9543)

(assert (=> b!549027 (= e!331902 Unit!9548)))

(declare-fun b!549028 () Bool)

(declare-fun Unit!9549 () Unit!9543)

(assert (=> b!549028 (= e!331887 Unit!9549)))

(declare-fun lt!230799 () Unit!9543)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!6 (LexerInterface!909 List!5425 Rule!1846 List!5424 List!5424 Rule!1846) Unit!9543)

(assert (=> b!549028 (= lt!230799 (lemmaMaxPrefNoSmallerRuleMatches!6 thiss!22590 rules!3103 (rule!1745 token!491) input!2705 lt!230822 (rule!1745 (_1!3486 (v!16195 lt!230820)))))))

(declare-fun res!235015 () Bool)

(assert (=> b!549028 (= res!235015 (not (matchR!516 (regex!1023 (rule!1745 (_1!3486 (v!16195 lt!230820)))) input!2705)))))

(assert (=> b!549028 (=> (not res!235015) (not e!331901))))

(assert (=> b!549028 e!331901))

(declare-fun b!549029 () Bool)

(declare-fun res!235023 () Bool)

(assert (=> b!549029 (=> (not res!235023) (not e!331888))))

(declare-fun rulesInvariant!872 (LexerInterface!909 List!5425) Bool)

(assert (=> b!549029 (= res!235023 (rulesInvariant!872 thiss!22590 rules!3103))))

(declare-fun tp!173915 () Bool)

(declare-fun b!549030 () Bool)

(declare-fun inv!6789 (String!6979) Bool)

(declare-fun inv!6793 (TokenValueInjection!1862) Bool)

(assert (=> b!549030 (= e!331876 (and tp!173915 (inv!6789 (tag!1285 (rule!1745 token!491))) (inv!6793 (transformation!1023 (rule!1745 token!491))) e!331882))))

(declare-fun b!549031 () Bool)

(assert (=> b!549031 (= e!331899 e!331883)))

(declare-fun res!235013 () Bool)

(assert (=> b!549031 (=> res!235013 e!331883)))

(assert (=> b!549031 (= res!235013 (or (not (= lt!230807 lt!230828)) (not (= lt!230800 input!2705)) (not (= lt!230800 lt!230815))))))

(declare-fun lt!230793 () Unit!9543)

(declare-fun lt!230814 () BalanceConc!3488)

(assert (=> b!549031 (= lt!230793 (lemmaSemiInverse!152 (transformation!1023 (rule!1745 token!491)) lt!230814))))

(declare-fun lt!230794 () Unit!9543)

(assert (=> b!549031 (= lt!230794 (lemmaSemiInverse!152 (transformation!1023 (rule!1745 (_1!3486 (v!16195 lt!230820)))) lt!230813))))

(declare-fun lt!230833 () Unit!9543)

(assert (=> b!549031 (= lt!230833 e!331879)))

(declare-fun c!103339 () Bool)

(assert (=> b!549031 (= c!103339 (< lt!230807 lt!230828))))

(assert (=> b!549031 e!331895))

(declare-fun res!235017 () Bool)

(assert (=> b!549031 (=> (not res!235017) (not e!331895))))

(declare-fun lt!230797 () TokenValue!1047)

(declare-fun maxPrefixOneRule!322 (LexerInterface!909 Rule!1846 List!5424) Option!1373)

(assert (=> b!549031 (= res!235017 (= (maxPrefixOneRule!322 thiss!22590 (rule!1745 token!491) lt!230822) (Some!1372 (tuple2!6445 (Token!1783 lt!230797 (rule!1745 token!491) lt!230828 lt!230815) suffix!1342))))))

(declare-fun lt!230790 () Unit!9543)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!74 (LexerInterface!909 List!5425 List!5424 List!5424 List!5424 Rule!1846) Unit!9543)

(assert (=> b!549031 (= lt!230790 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!74 thiss!22590 rules!3103 lt!230815 lt!230822 suffix!1342 (rule!1745 token!491)))))

(assert (=> b!549031 (= (maxPrefixOneRule!322 thiss!22590 (rule!1745 (_1!3486 (v!16195 lt!230820))) input!2705) (Some!1372 (tuple2!6445 (Token!1783 lt!230809 (rule!1745 (_1!3486 (v!16195 lt!230820))) lt!230807 lt!230819) (_2!3486 (v!16195 lt!230820)))))))

(declare-fun lt!230802 () Unit!9543)

(assert (=> b!549031 (= lt!230802 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!74 thiss!22590 rules!3103 lt!230819 input!2705 (_2!3486 (v!16195 lt!230820)) (rule!1745 (_1!3486 (v!16195 lt!230820)))))))

(assert (=> b!549031 e!331892))

(declare-fun res!235016 () Bool)

(assert (=> b!549031 (=> (not res!235016) (not e!331892))))

(assert (=> b!549031 (= res!235016 (= (value!34022 token!491) lt!230797))))

(assert (=> b!549031 (= lt!230797 (apply!1298 (transformation!1023 (rule!1745 token!491)) lt!230814))))

(assert (=> b!549031 (= lt!230814 (seqFromList!1221 lt!230815))))

(declare-fun lt!230825 () List!5424)

(assert (=> b!549031 (= suffix!1342 lt!230825)))

(declare-fun lt!230816 () Unit!9543)

(assert (=> b!549031 (= lt!230816 (lemmaSamePrefixThenSameSuffix!392 lt!230815 suffix!1342 lt!230815 lt!230825 lt!230822))))

(assert (=> b!549031 (= lt!230825 (getSuffix!188 lt!230822 lt!230815))))

(declare-fun b!549032 () Bool)

(declare-fun res!235010 () Bool)

(assert (=> b!549032 (=> res!235010 e!331898)))

(assert (=> b!549032 (= res!235010 (not (matchR!516 (regex!1023 (rule!1745 (_1!3486 (v!16195 lt!230820)))) input!2705)))))

(declare-fun b!549033 () Bool)

(assert (=> b!549033 (= e!331890 e!331886)))

(declare-fun res!235029 () Bool)

(assert (=> b!549033 (=> (not res!235029) (not e!331886))))

(assert (=> b!549033 (= res!235029 (= lt!230789 lt!230822))))

(assert (=> b!549033 (= lt!230789 (++!1511 lt!230815 suffix!1342))))

(declare-fun b!549034 () Bool)

(declare-fun res!235006 () Bool)

(assert (=> b!549034 (=> res!235006 e!331883)))

(assert (=> b!549034 (= res!235006 (= (rule!1745 (_1!3486 (v!16195 lt!230820))) (rule!1745 token!491)))))

(declare-fun b!549035 () Bool)

(declare-fun res!235020 () Bool)

(assert (=> b!549035 (=> (not res!235020) (not e!331888))))

(assert (=> b!549035 (= res!235020 (not (isEmpty!3908 input!2705)))))

(declare-fun b!549036 () Bool)

(assert (=> b!549036 (= e!331892 (and (= (size!4336 token!491) lt!230828) (= (originalCharacters!1062 token!491) lt!230815) (= (tuple2!6445 token!491 suffix!1342) (tuple2!6445 (Token!1783 lt!230797 (rule!1745 token!491) lt!230828 lt!230815) lt!230825))))))

(declare-fun b!549037 () Bool)

(declare-fun res!235031 () Bool)

(assert (=> b!549037 (=> (not res!235031) (not e!331889))))

(assert (=> b!549037 (= res!235031 (= (size!4336 (_1!3486 (v!16195 lt!230820))) (size!4337 (originalCharacters!1062 (_1!3486 (v!16195 lt!230820))))))))

(declare-fun b!549038 () Bool)

(declare-fun res!235014 () Bool)

(assert (=> b!549038 (=> res!235014 e!331883)))

(assert (=> b!549038 (= res!235014 (not (contains!1265 rules!3103 (rule!1745 token!491))))))

(declare-fun b!549039 () Bool)

(declare-fun tp!173913 () Bool)

(assert (=> b!549039 (= e!331873 (and tp!173913 (inv!6789 (tag!1285 (h!10816 rules!3103))) (inv!6793 (transformation!1023 (h!10816 rules!3103))) e!331884))))

(declare-fun b!549040 () Bool)

(declare-fun Unit!9550 () Unit!9543)

(assert (=> b!549040 (= e!331887 Unit!9550)))

(declare-fun b!549041 () Bool)

(declare-fun res!235005 () Bool)

(assert (=> b!549041 (=> (not res!235005) (not e!331888))))

(declare-fun isEmpty!3909 (List!5425) Bool)

(assert (=> b!549041 (= res!235005 (not (isEmpty!3909 rules!3103)))))

(assert (= (and start!50824 res!235007) b!549041))

(assert (= (and b!549041 res!235005) b!549029))

(assert (= (and b!549029 res!235023) b!549035))

(assert (= (and b!549035 res!235020) b!549014))

(assert (= (and b!549014 res!235012) b!549016))

(assert (= (and b!549016 res!235021) b!549008))

(assert (= (and b!549008 res!235027) b!549026))

(assert (= (and b!549026 res!235024) b!549033))

(assert (= (and b!549033 res!235029) b!549020))

(assert (= (and b!549020 c!103337) b!549004))

(assert (= (and b!549020 (not c!103337)) b!549027))

(assert (= (and b!549020 res!235028) b!549037))

(assert (= (and b!549037 res!235031) b!549015))

(assert (= (and b!549020 (not res!235008)) b!549031))

(assert (= (and b!549031 res!235016) b!549005))

(assert (= (and b!549005 res!235025) b!549036))

(assert (= (and b!549031 res!235017) b!549001))

(assert (= (and b!549001 (not res!235030)) b!549002))

(assert (= (and b!549002 res!235026) b!549006))

(assert (= (and b!549006 res!235022) b!549019))

(assert (= (and b!549031 c!103339) b!549011))

(assert (= (and b!549031 (not c!103339)) b!549024))

(assert (= (and b!549011 res!235009) b!549025))

(assert (= (and b!549031 (not res!235013)) b!549012))

(assert (= (and b!549012 (not res!235011)) b!549022))

(assert (= (and b!549022 (not res!235019)) b!549018))

(assert (= (and b!549018 (not res!235018)) b!549038))

(assert (= (and b!549038 (not res!235014)) b!549034))

(assert (= (and b!549034 (not res!235006)) b!549017))

(assert (= (and b!549017 c!103338) b!549028))

(assert (= (and b!549017 (not c!103338)) b!549040))

(assert (= (and b!549028 res!235015) b!549013))

(assert (= (and b!549017 (not res!235032)) b!549032))

(assert (= (and b!549032 (not res!235010)) b!549009))

(assert (= (and start!50824 ((_ is Cons!5414) suffix!1342)) b!549021))

(assert (= b!549039 b!549007))

(assert (= b!549000 b!549039))

(assert (= (and start!50824 ((_ is Cons!5415) rules!3103)) b!549000))

(assert (= b!549030 b!549003))

(assert (= b!549010 b!549030))

(assert (= start!50824 b!549010))

(assert (= (and start!50824 ((_ is Cons!5414) input!2705)) b!549023))

(declare-fun m!798179 () Bool)

(assert (=> b!549011 m!798179))

(declare-fun m!798181 () Bool)

(assert (=> b!549011 m!798181))

(declare-fun m!798183 () Bool)

(assert (=> b!549011 m!798183))

(declare-fun m!798185 () Bool)

(assert (=> b!549039 m!798185))

(declare-fun m!798187 () Bool)

(assert (=> b!549039 m!798187))

(declare-fun m!798189 () Bool)

(assert (=> b!549002 m!798189))

(declare-fun m!798191 () Bool)

(assert (=> b!549033 m!798191))

(declare-fun m!798193 () Bool)

(assert (=> b!549016 m!798193))

(declare-fun m!798195 () Bool)

(assert (=> b!549016 m!798195))

(declare-fun m!798197 () Bool)

(assert (=> b!549016 m!798197))

(declare-fun m!798199 () Bool)

(assert (=> b!549006 m!798199))

(declare-fun m!798201 () Bool)

(assert (=> b!549008 m!798201))

(declare-fun m!798203 () Bool)

(assert (=> b!549014 m!798203))

(assert (=> b!549014 m!798203))

(declare-fun m!798205 () Bool)

(assert (=> b!549014 m!798205))

(declare-fun m!798207 () Bool)

(assert (=> b!549020 m!798207))

(declare-fun m!798209 () Bool)

(assert (=> b!549020 m!798209))

(declare-fun m!798211 () Bool)

(assert (=> b!549020 m!798211))

(declare-fun m!798213 () Bool)

(assert (=> b!549020 m!798213))

(declare-fun m!798215 () Bool)

(assert (=> b!549020 m!798215))

(declare-fun m!798217 () Bool)

(assert (=> b!549020 m!798217))

(declare-fun m!798219 () Bool)

(assert (=> b!549020 m!798219))

(assert (=> b!549020 m!798215))

(declare-fun m!798221 () Bool)

(assert (=> b!549020 m!798221))

(declare-fun m!798223 () Bool)

(assert (=> b!549020 m!798223))

(declare-fun m!798225 () Bool)

(assert (=> b!549020 m!798225))

(declare-fun m!798227 () Bool)

(assert (=> b!549020 m!798227))

(declare-fun m!798229 () Bool)

(assert (=> b!549020 m!798229))

(declare-fun m!798231 () Bool)

(assert (=> b!549020 m!798231))

(declare-fun m!798233 () Bool)

(assert (=> b!549020 m!798233))

(declare-fun m!798235 () Bool)

(assert (=> b!549020 m!798235))

(declare-fun m!798237 () Bool)

(assert (=> b!549020 m!798237))

(declare-fun m!798239 () Bool)

(assert (=> b!549020 m!798239))

(declare-fun m!798241 () Bool)

(assert (=> b!549020 m!798241))

(declare-fun m!798243 () Bool)

(assert (=> b!549020 m!798243))

(declare-fun m!798245 () Bool)

(assert (=> b!549020 m!798245))

(declare-fun m!798247 () Bool)

(assert (=> b!549020 m!798247))

(declare-fun m!798249 () Bool)

(assert (=> b!549020 m!798249))

(declare-fun m!798251 () Bool)

(assert (=> b!549020 m!798251))

(declare-fun m!798253 () Bool)

(assert (=> b!549020 m!798253))

(declare-fun m!798255 () Bool)

(assert (=> b!549020 m!798255))

(declare-fun m!798257 () Bool)

(assert (=> b!549020 m!798257))

(declare-fun m!798259 () Bool)

(assert (=> b!549020 m!798259))

(declare-fun m!798261 () Bool)

(assert (=> b!549037 m!798261))

(declare-fun m!798263 () Bool)

(assert (=> b!549038 m!798263))

(declare-fun m!798265 () Bool)

(assert (=> b!549009 m!798265))

(declare-fun m!798267 () Bool)

(assert (=> b!549009 m!798267))

(declare-fun m!798269 () Bool)

(assert (=> b!549009 m!798269))

(declare-fun m!798271 () Bool)

(assert (=> b!549009 m!798271))

(declare-fun m!798273 () Bool)

(assert (=> b!549009 m!798273))

(declare-fun m!798275 () Bool)

(assert (=> b!549030 m!798275))

(declare-fun m!798277 () Bool)

(assert (=> b!549030 m!798277))

(declare-fun m!798279 () Bool)

(assert (=> b!549035 m!798279))

(declare-fun m!798281 () Bool)

(assert (=> b!549017 m!798281))

(declare-fun m!798283 () Bool)

(assert (=> b!549017 m!798283))

(declare-fun m!798285 () Bool)

(assert (=> b!549029 m!798285))

(declare-fun m!798287 () Bool)

(assert (=> b!549010 m!798287))

(declare-fun m!798289 () Bool)

(assert (=> b!549028 m!798289))

(declare-fun m!798291 () Bool)

(assert (=> b!549028 m!798291))

(declare-fun m!798293 () Bool)

(assert (=> b!549026 m!798293))

(declare-fun m!798295 () Bool)

(assert (=> b!549031 m!798295))

(declare-fun m!798297 () Bool)

(assert (=> b!549031 m!798297))

(declare-fun m!798299 () Bool)

(assert (=> b!549031 m!798299))

(declare-fun m!798301 () Bool)

(assert (=> b!549031 m!798301))

(declare-fun m!798303 () Bool)

(assert (=> b!549031 m!798303))

(assert (=> b!549031 m!798179))

(declare-fun m!798305 () Bool)

(assert (=> b!549031 m!798305))

(declare-fun m!798307 () Bool)

(assert (=> b!549031 m!798307))

(declare-fun m!798309 () Bool)

(assert (=> b!549031 m!798309))

(declare-fun m!798311 () Bool)

(assert (=> b!549031 m!798311))

(declare-fun m!798313 () Bool)

(assert (=> b!549018 m!798313))

(declare-fun m!798315 () Bool)

(assert (=> b!549005 m!798315))

(assert (=> b!549032 m!798291))

(declare-fun m!798317 () Bool)

(assert (=> b!549041 m!798317))

(declare-fun m!798319 () Bool)

(assert (=> start!50824 m!798319))

(declare-fun m!798321 () Bool)

(assert (=> b!549012 m!798321))

(check-sat (not b!549038) b_and!53619 (not b_next!15303) (not b!549011) (not b!549002) (not start!50824) (not b!549030) (not b!549028) b_and!53625 (not b!549017) (not b!549023) (not b_next!15297) (not b!549032) (not b!549031) tp_is_empty!3069 (not b!549010) (not b!549037) (not b_next!15299) (not b!549012) (not b!549014) (not b!549026) (not b!549016) (not b!549008) (not b!549039) (not b!549005) (not b!549035) b_and!53621 (not b!549033) (not b!549018) (not b!549020) (not b!549000) (not b!549029) (not b!549021) (not b!549009) (not b!549006) b_and!53623 (not b!549041) (not b_next!15301))
(check-sat b_and!53619 (not b_next!15299) (not b_next!15303) b_and!53625 b_and!53621 (not b_next!15297) b_and!53623 (not b_next!15301))
