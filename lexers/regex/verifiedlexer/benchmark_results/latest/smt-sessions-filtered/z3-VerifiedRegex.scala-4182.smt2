; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!226584 () Bool)

(assert start!226584)

(declare-fun b!2302896 () Bool)

(declare-fun b_free!69549 () Bool)

(declare-fun b_next!70253 () Bool)

(assert (=> b!2302896 (= b_free!69549 (not b_next!70253))))

(declare-fun tp!730605 () Bool)

(declare-fun b_and!183497 () Bool)

(assert (=> b!2302896 (= tp!730605 b_and!183497)))

(declare-fun b_free!69551 () Bool)

(declare-fun b_next!70255 () Bool)

(assert (=> b!2302896 (= b_free!69551 (not b_next!70255))))

(declare-fun tp!730593 () Bool)

(declare-fun b_and!183499 () Bool)

(assert (=> b!2302896 (= tp!730593 b_and!183499)))

(declare-fun b!2302904 () Bool)

(declare-fun b_free!69553 () Bool)

(declare-fun b_next!70257 () Bool)

(assert (=> b!2302904 (= b_free!69553 (not b_next!70257))))

(declare-fun tp!730604 () Bool)

(declare-fun b_and!183501 () Bool)

(assert (=> b!2302904 (= tp!730604 b_and!183501)))

(declare-fun b_free!69555 () Bool)

(declare-fun b_next!70259 () Bool)

(assert (=> b!2302904 (= b_free!69555 (not b_next!70259))))

(declare-fun tp!730609 () Bool)

(declare-fun b_and!183503 () Bool)

(assert (=> b!2302904 (= tp!730609 b_and!183503)))

(declare-fun b!2302889 () Bool)

(declare-fun b_free!69557 () Bool)

(declare-fun b_next!70261 () Bool)

(assert (=> b!2302889 (= b_free!69557 (not b_next!70261))))

(declare-fun tp!730599 () Bool)

(declare-fun b_and!183505 () Bool)

(assert (=> b!2302889 (= tp!730599 b_and!183505)))

(declare-fun b_free!69559 () Bool)

(declare-fun b_next!70263 () Bool)

(assert (=> b!2302889 (= b_free!69559 (not b_next!70263))))

(declare-fun tp!730594 () Bool)

(declare-fun b_and!183507 () Bool)

(assert (=> b!2302889 (= tp!730594 b_and!183507)))

(declare-fun b!2302882 () Bool)

(declare-fun b_free!69561 () Bool)

(declare-fun b_next!70265 () Bool)

(assert (=> b!2302882 (= b_free!69561 (not b_next!70265))))

(declare-fun tp!730607 () Bool)

(declare-fun b_and!183509 () Bool)

(assert (=> b!2302882 (= tp!730607 b_and!183509)))

(declare-fun b_free!69563 () Bool)

(declare-fun b_next!70267 () Bool)

(assert (=> b!2302882 (= b_free!69563 (not b_next!70267))))

(declare-fun tp!730601 () Bool)

(declare-fun b_and!183511 () Bool)

(assert (=> b!2302882 (= tp!730601 b_and!183511)))

(declare-fun b!2302875 () Bool)

(declare-datatypes ((Unit!40319 0))(
  ( (Unit!40320) )
))
(declare-fun e!1475811 () Unit!40319)

(declare-fun Unit!40321 () Unit!40319)

(assert (=> b!2302875 (= e!1475811 Unit!40321)))

(declare-fun lt!854133 () Unit!40319)

(declare-datatypes ((List!27509 0))(
  ( (Nil!27415) (Cons!27415 (h!32816 (_ BitVec 16)) (t!205983 List!27509)) )
))
(declare-datatypes ((TokenValue!4557 0))(
  ( (FloatLiteralValue!9114 (text!32344 List!27509)) (TokenValueExt!4556 (__x!18174 Int)) (Broken!22785 (value!139051 List!27509)) (Object!4650) (End!4557) (Def!4557) (Underscore!4557) (Match!4557) (Else!4557) (Error!4557) (Case!4557) (If!4557) (Extends!4557) (Abstract!4557) (Class!4557) (Val!4557) (DelimiterValue!9114 (del!4617 List!27509)) (KeywordValue!4563 (value!139052 List!27509)) (CommentValue!9114 (value!139053 List!27509)) (WhitespaceValue!9114 (value!139054 List!27509)) (IndentationValue!4557 (value!139055 List!27509)) (String!29888) (Int32!4557) (Broken!22786 (value!139056 List!27509)) (Boolean!4558) (Unit!40322) (OperatorValue!4560 (op!4617 List!27509)) (IdentifierValue!9114 (value!139057 List!27509)) (IdentifierValue!9115 (value!139058 List!27509)) (WhitespaceValue!9115 (value!139059 List!27509)) (True!9114) (False!9114) (Broken!22787 (value!139060 List!27509)) (Broken!22788 (value!139061 List!27509)) (True!9115) (RightBrace!4557) (RightBracket!4557) (Colon!4557) (Null!4557) (Comma!4557) (LeftBracket!4557) (False!9115) (LeftBrace!4557) (ImaginaryLiteralValue!4557 (text!32345 List!27509)) (StringLiteralValue!13671 (value!139062 List!27509)) (EOFValue!4557 (value!139063 List!27509)) (IdentValue!4557 (value!139064 List!27509)) (DelimiterValue!9115 (value!139065 List!27509)) (DedentValue!4557 (value!139066 List!27509)) (NewLineValue!4557 (value!139067 List!27509)) (IntegerValue!13671 (value!139068 (_ BitVec 32)) (text!32346 List!27509)) (IntegerValue!13672 (value!139069 Int) (text!32347 List!27509)) (Times!4557) (Or!4557) (Equal!4557) (Minus!4557) (Broken!22789 (value!139070 List!27509)) (And!4557) (Div!4557) (LessEqual!4557) (Mod!4557) (Concat!11300) (Not!4557) (Plus!4557) (SpaceValue!4557 (value!139071 List!27509)) (IntegerValue!13673 (value!139072 Int) (text!32348 List!27509)) (StringLiteralValue!13672 (text!32349 List!27509)) (FloatLiteralValue!9115 (text!32350 List!27509)) (BytesLiteralValue!4557 (value!139073 List!27509)) (CommentValue!9115 (value!139074 List!27509)) (StringLiteralValue!13673 (value!139075 List!27509)) (ErrorTokenValue!4557 (msg!4618 List!27509)) )
))
(declare-datatypes ((C!13632 0))(
  ( (C!13633 (val!7864 Int)) )
))
(declare-datatypes ((List!27510 0))(
  ( (Nil!27416) (Cons!27416 (h!32817 C!13632) (t!205984 List!27510)) )
))
(declare-datatypes ((IArray!17881 0))(
  ( (IArray!17882 (innerList!8998 List!27510)) )
))
(declare-datatypes ((Conc!8938 0))(
  ( (Node!8938 (left!20772 Conc!8938) (right!21102 Conc!8938) (csize!18106 Int) (cheight!9149 Int)) (Leaf!13121 (xs!11880 IArray!17881) (csize!18107 Int)) (Empty!8938) )
))
(declare-datatypes ((BalanceConc!17604 0))(
  ( (BalanceConc!17605 (c!365074 Conc!8938)) )
))
(declare-datatypes ((String!29889 0))(
  ( (String!29890 (value!139076 String)) )
))
(declare-datatypes ((Regex!6743 0))(
  ( (ElementMatch!6743 (c!365075 C!13632)) (Concat!11301 (regOne!13998 Regex!6743) (regTwo!13998 Regex!6743)) (EmptyExpr!6743) (Star!6743 (reg!7072 Regex!6743)) (EmptyLang!6743) (Union!6743 (regOne!13999 Regex!6743) (regTwo!13999 Regex!6743)) )
))
(declare-datatypes ((TokenValueInjection!8654 0))(
  ( (TokenValueInjection!8655 (toValue!6205 Int) (toChars!6064 Int)) )
))
(declare-datatypes ((Rule!8590 0))(
  ( (Rule!8591 (regex!4395 Regex!6743) (tag!4885 String!29889) (isSeparator!4395 Bool) (transformation!4395 TokenValueInjection!8654)) )
))
(declare-fun r!2363 () Rule!8590)

(declare-fun otherR!12 () Rule!8590)

(declare-datatypes ((List!27511 0))(
  ( (Nil!27417) (Cons!27417 (h!32818 Rule!8590) (t!205985 List!27511)) )
))
(declare-fun rules!1750 () List!27511)

(declare-fun lemmaSameIndexThenSameElement!188 (List!27511 Rule!8590 Rule!8590) Unit!40319)

(assert (=> b!2302875 (= lt!854133 (lemmaSameIndexThenSameElement!188 rules!1750 r!2363 otherR!12))))

(assert (=> b!2302875 false))

(declare-fun b!2302876 () Bool)

(declare-fun e!1475819 () Bool)

(declare-fun e!1475816 () Bool)

(declare-fun tp!730608 () Bool)

(assert (=> b!2302876 (= e!1475819 (and e!1475816 tp!730608))))

(declare-fun tp!730597 () Bool)

(declare-fun e!1475815 () Bool)

(declare-fun b!2302877 () Bool)

(declare-fun inv!37046 (String!29889) Bool)

(declare-fun inv!37049 (TokenValueInjection!8654) Bool)

(assert (=> b!2302877 (= e!1475816 (and tp!730597 (inv!37046 (tag!4885 (h!32818 rules!1750))) (inv!37049 (transformation!4395 (h!32818 rules!1750))) e!1475815))))

(declare-fun b!2302878 () Bool)

(declare-fun e!1475823 () Bool)

(declare-fun tp_is_empty!10707 () Bool)

(declare-fun tp!730595 () Bool)

(assert (=> b!2302878 (= e!1475823 (and tp_is_empty!10707 tp!730595))))

(declare-fun b!2302879 () Bool)

(declare-fun res!984616 () Bool)

(declare-fun e!1475803 () Bool)

(assert (=> b!2302879 (=> (not res!984616) (not e!1475803))))

(declare-fun otherP!12 () List!27510)

(declare-fun input!1722 () List!27510)

(declare-fun isPrefix!2385 (List!27510 List!27510) Bool)

(assert (=> b!2302879 (= res!984616 (isPrefix!2385 otherP!12 input!1722))))

(declare-fun b!2302880 () Bool)

(declare-fun e!1475817 () Bool)

(declare-datatypes ((Token!8268 0))(
  ( (Token!8269 (value!139077 TokenValue!4557) (rule!6741 Rule!8590) (size!21624 Int) (originalCharacters!5165 List!27510)) )
))
(declare-datatypes ((List!27512 0))(
  ( (Nil!27418) (Cons!27418 (h!32819 Token!8268) (t!205986 List!27512)) )
))
(declare-fun tokens!456 () List!27512)

(declare-fun size!21625 (BalanceConc!17604) Int)

(declare-fun charsOf!2783 (Token!8268) BalanceConc!17604)

(declare-fun head!5042 (List!27512) Token!8268)

(declare-fun size!21626 (List!27510) Int)

(assert (=> b!2302880 (= e!1475817 (<= (size!21625 (charsOf!2783 (head!5042 tokens!456))) (size!21626 otherP!12)))))

(declare-fun b!2302881 () Bool)

(declare-fun e!1475805 () Bool)

(declare-fun e!1475809 () Bool)

(declare-fun tp!730592 () Bool)

(declare-fun inv!37050 (Token!8268) Bool)

(assert (=> b!2302881 (= e!1475805 (and (inv!37050 (h!32819 tokens!456)) e!1475809 tp!730592))))

(declare-fun e!1475821 () Bool)

(assert (=> b!2302882 (= e!1475821 (and tp!730607 tp!730601))))

(declare-fun b!2302883 () Bool)

(declare-fun e!1475812 () Bool)

(assert (=> b!2302883 (= e!1475803 (not e!1475812))))

(declare-fun res!984604 () Bool)

(assert (=> b!2302883 (=> res!984604 e!1475812)))

(declare-fun e!1475822 () Bool)

(assert (=> b!2302883 (= res!984604 e!1475822)))

(declare-fun res!984611 () Bool)

(assert (=> b!2302883 (=> (not res!984611) (not e!1475822))))

(declare-fun lt!854129 () Bool)

(assert (=> b!2302883 (= res!984611 (not lt!854129))))

(declare-datatypes ((LexerInterface!3992 0))(
  ( (LexerInterfaceExt!3989 (__x!18175 Int)) (Lexer!3990) )
))
(declare-fun thiss!16613 () LexerInterface!3992)

(declare-fun ruleValid!1485 (LexerInterface!3992 Rule!8590) Bool)

(assert (=> b!2302883 (ruleValid!1485 thiss!16613 r!2363)))

(declare-fun lt!854121 () Unit!40319)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!890 (LexerInterface!3992 Rule!8590 List!27511) Unit!40319)

(assert (=> b!2302883 (= lt!854121 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!890 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2302884 () Bool)

(declare-fun e!1475820 () Bool)

(declare-fun e!1475818 () Bool)

(assert (=> b!2302884 (= e!1475820 e!1475818)))

(declare-fun res!984603 () Bool)

(assert (=> b!2302884 (=> res!984603 e!1475818)))

(get-info :version)

(assert (=> b!2302884 (= res!984603 ((_ is Nil!27418) tokens!456))))

(declare-fun lt!854128 () Unit!40319)

(assert (=> b!2302884 (= lt!854128 e!1475811)))

(declare-fun c!365073 () Bool)

(declare-fun lt!854135 () Int)

(declare-fun lt!854120 () Int)

(assert (=> b!2302884 (= c!365073 (= lt!854135 lt!854120))))

(declare-fun b!2302885 () Bool)

(declare-fun res!984609 () Bool)

(declare-fun e!1475802 () Bool)

(assert (=> b!2302885 (=> (not res!984609) (not e!1475802))))

(declare-fun contains!4781 (List!27511 Rule!8590) Bool)

(assert (=> b!2302885 (= res!984609 (contains!4781 rules!1750 r!2363))))

(declare-fun b!2302886 () Bool)

(declare-fun e!1475825 () Bool)

(assert (=> b!2302886 (= e!1475802 e!1475825)))

(declare-fun res!984617 () Bool)

(assert (=> b!2302886 (=> (not res!984617) (not e!1475825))))

(declare-datatypes ((IArray!17883 0))(
  ( (IArray!17884 (innerList!8999 List!27512)) )
))
(declare-datatypes ((Conc!8939 0))(
  ( (Node!8939 (left!20773 Conc!8939) (right!21103 Conc!8939) (csize!18108 Int) (cheight!9150 Int)) (Leaf!13122 (xs!11881 IArray!17883) (csize!18109 Int)) (Empty!8939) )
))
(declare-datatypes ((BalanceConc!17606 0))(
  ( (BalanceConc!17607 (c!365076 Conc!8939)) )
))
(declare-datatypes ((tuple2!27302 0))(
  ( (tuple2!27303 (_1!16161 BalanceConc!17606) (_2!16161 BalanceConc!17604)) )
))
(declare-fun lt!854125 () tuple2!27302)

(declare-fun suffix!886 () List!27510)

(declare-datatypes ((tuple2!27304 0))(
  ( (tuple2!27305 (_1!16162 List!27512) (_2!16162 List!27510)) )
))
(declare-fun list!10800 (BalanceConc!17606) List!27512)

(declare-fun list!10801 (BalanceConc!17604) List!27510)

(assert (=> b!2302886 (= res!984617 (= (tuple2!27305 (list!10800 (_1!16161 lt!854125)) (list!10801 (_2!16161 lt!854125))) (tuple2!27305 tokens!456 suffix!886)))))

(declare-fun lex!1831 (LexerInterface!3992 List!27511 BalanceConc!17604) tuple2!27302)

(declare-fun seqFromList!3099 (List!27510) BalanceConc!17604)

(assert (=> b!2302886 (= lt!854125 (lex!1831 thiss!16613 rules!1750 (seqFromList!3099 input!1722)))))

(declare-fun b!2302887 () Bool)

(declare-fun tp!730603 () Bool)

(declare-fun e!1475813 () Bool)

(declare-fun inv!21 (TokenValue!4557) Bool)

(assert (=> b!2302887 (= e!1475809 (and (inv!21 (value!139077 (h!32819 tokens!456))) e!1475813 tp!730603))))

(declare-fun b!2302888 () Bool)

(declare-fun res!984601 () Bool)

(assert (=> b!2302888 (=> (not res!984601) (not e!1475802))))

(declare-fun isEmpty!15660 (List!27511) Bool)

(assert (=> b!2302888 (= res!984601 (not (isEmpty!15660 rules!1750)))))

(declare-fun e!1475808 () Bool)

(assert (=> b!2302889 (= e!1475808 (and tp!730599 tp!730594))))

(declare-fun e!1475827 () Bool)

(declare-fun b!2302890 () Bool)

(declare-fun tp!730606 () Bool)

(assert (=> b!2302890 (= e!1475827 (and tp!730606 (inv!37046 (tag!4885 otherR!12)) (inv!37049 (transformation!4395 otherR!12)) e!1475808))))

(declare-fun b!2302891 () Bool)

(declare-fun e!1475830 () Bool)

(assert (=> b!2302891 (= e!1475830 (= (rule!6741 (head!5042 tokens!456)) r!2363))))

(declare-datatypes ((tuple2!27306 0))(
  ( (tuple2!27307 (_1!16163 Token!8268) (_2!16163 List!27510)) )
))
(declare-datatypes ((Option!5391 0))(
  ( (None!5390) (Some!5390 (v!30490 tuple2!27306)) )
))
(declare-fun lt!854119 () Option!5391)

(declare-fun lt!854134 () BalanceConc!17604)

(declare-fun e!1475828 () Bool)

(declare-fun lt!854130 () Int)

(declare-fun lt!854124 () tuple2!27306)

(declare-fun b!2302892 () Bool)

(declare-fun lt!854122 () List!27510)

(declare-fun apply!6657 (TokenValueInjection!8654 BalanceConc!17604) TokenValue!4557)

(assert (=> b!2302892 (= e!1475828 (= lt!854119 (Some!5390 (tuple2!27307 (Token!8269 (apply!6657 (transformation!4395 r!2363) lt!854134) r!2363 lt!854130 lt!854122) (_2!16163 lt!854124)))))))

(declare-fun lt!854136 () Unit!40319)

(declare-fun lemmaSemiInverse!1078 (TokenValueInjection!8654 BalanceConc!17604) Unit!40319)

(assert (=> b!2302892 (= lt!854136 (lemmaSemiInverse!1078 (transformation!4395 r!2363) lt!854134))))

(assert (=> b!2302892 (= lt!854134 (seqFromList!3099 lt!854122))))

(declare-fun b!2302893 () Bool)

(declare-fun e!1475814 () Bool)

(declare-fun tp!730598 () Bool)

(assert (=> b!2302893 (= e!1475814 (and tp!730598 (inv!37046 (tag!4885 r!2363)) (inv!37049 (transformation!4395 r!2363)) e!1475821))))

(declare-fun b!2302894 () Bool)

(declare-fun res!984614 () Bool)

(assert (=> b!2302894 (=> (not res!984614) (not e!1475802))))

(declare-fun rulesInvariant!3494 (LexerInterface!3992 List!27511) Bool)

(assert (=> b!2302894 (= res!984614 (rulesInvariant!3494 thiss!16613 rules!1750))))

(declare-fun b!2302895 () Bool)

(declare-fun e!1475829 () Bool)

(declare-fun tp!730596 () Bool)

(assert (=> b!2302895 (= e!1475829 (and tp_is_empty!10707 tp!730596))))

(declare-fun e!1475810 () Bool)

(assert (=> b!2302896 (= e!1475810 (and tp!730605 tp!730593))))

(declare-fun b!2302897 () Bool)

(declare-fun Unit!40323 () Unit!40319)

(assert (=> b!2302897 (= e!1475811 Unit!40323)))

(declare-fun b!2302898 () Bool)

(assert (=> b!2302898 (= e!1475812 e!1475820)))

(declare-fun res!984607 () Bool)

(assert (=> b!2302898 (=> res!984607 e!1475820)))

(assert (=> b!2302898 (= res!984607 (> lt!854135 lt!854120))))

(declare-fun getIndex!408 (List!27511 Rule!8590) Int)

(assert (=> b!2302898 (= lt!854120 (getIndex!408 rules!1750 otherR!12))))

(assert (=> b!2302898 (= lt!854135 (getIndex!408 rules!1750 r!2363))))

(assert (=> b!2302898 (ruleValid!1485 thiss!16613 otherR!12)))

(declare-fun lt!854126 () Unit!40319)

(assert (=> b!2302898 (= lt!854126 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!890 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2302899 () Bool)

(declare-fun res!984605 () Bool)

(assert (=> b!2302899 (=> (not res!984605) (not e!1475803))))

(assert (=> b!2302899 (= res!984605 e!1475830)))

(declare-fun res!984618 () Bool)

(assert (=> b!2302899 (=> res!984618 e!1475830)))

(assert (=> b!2302899 (= res!984618 lt!854129)))

(declare-fun b!2302900 () Bool)

(assert (=> b!2302900 (= e!1475818 e!1475828)))

(declare-fun res!984612 () Bool)

(assert (=> b!2302900 (=> res!984612 e!1475828)))

(declare-fun lt!854132 () Int)

(declare-fun lt!854127 () List!27510)

(assert (=> b!2302900 (= res!984612 (or (<= lt!854132 lt!854130) (not (= input!1722 lt!854127))))))

(assert (=> b!2302900 (= lt!854130 (size!21626 lt!854122))))

(assert (=> b!2302900 (= lt!854132 (size!21626 otherP!12))))

(declare-fun lt!854123 () List!27510)

(assert (=> b!2302900 (= (_2!16163 lt!854124) lt!854123)))

(declare-fun lt!854118 () Unit!40319)

(declare-fun lemmaSamePrefixThenSameSuffix!1066 (List!27510 List!27510 List!27510 List!27510 List!27510) Unit!40319)

(assert (=> b!2302900 (= lt!854118 (lemmaSamePrefixThenSameSuffix!1066 lt!854122 (_2!16163 lt!854124) lt!854122 lt!854123 input!1722))))

(declare-fun getSuffix!1164 (List!27510 List!27510) List!27510)

(assert (=> b!2302900 (= lt!854123 (getSuffix!1164 input!1722 lt!854122))))

(assert (=> b!2302900 (isPrefix!2385 lt!854122 lt!854127)))

(declare-fun ++!6709 (List!27510 List!27510) List!27510)

(assert (=> b!2302900 (= lt!854127 (++!6709 lt!854122 (_2!16163 lt!854124)))))

(declare-fun lt!854131 () Unit!40319)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1578 (List!27510 List!27510) Unit!40319)

(assert (=> b!2302900 (= lt!854131 (lemmaConcatTwoListThenFirstIsPrefix!1578 lt!854122 (_2!16163 lt!854124)))))

(assert (=> b!2302900 (= lt!854122 (list!10801 (charsOf!2783 (h!32819 tokens!456))))))

(declare-fun get!8264 (Option!5391) tuple2!27306)

(assert (=> b!2302900 (= lt!854124 (get!8264 lt!854119))))

(declare-fun maxPrefix!2248 (LexerInterface!3992 List!27511 List!27510) Option!5391)

(assert (=> b!2302900 (= lt!854119 (maxPrefix!2248 thiss!16613 rules!1750 input!1722))))

(declare-fun b!2302901 () Bool)

(declare-fun res!984615 () Bool)

(assert (=> b!2302901 (=> res!984615 e!1475828)))

(declare-fun isEmpty!15661 (List!27510) Bool)

(assert (=> b!2302901 (= res!984615 (isEmpty!15661 lt!854122))))

(declare-fun b!2302902 () Bool)

(declare-fun res!984613 () Bool)

(assert (=> b!2302902 (=> (not res!984613) (not e!1475803))))

(assert (=> b!2302902 (= res!984613 (not (= r!2363 otherR!12)))))

(declare-fun b!2302903 () Bool)

(declare-fun res!984602 () Bool)

(assert (=> b!2302903 (=> (not res!984602) (not e!1475802))))

(assert (=> b!2302903 (= res!984602 (contains!4781 rules!1750 otherR!12))))

(assert (=> b!2302904 (= e!1475815 (and tp!730604 tp!730609))))

(declare-fun b!2302905 () Bool)

(declare-fun e!1475804 () Bool)

(declare-fun tp!730602 () Bool)

(assert (=> b!2302905 (= e!1475804 (and tp_is_empty!10707 tp!730602))))

(declare-fun tp!730600 () Bool)

(declare-fun b!2302906 () Bool)

(assert (=> b!2302906 (= e!1475813 (and tp!730600 (inv!37046 (tag!4885 (rule!6741 (h!32819 tokens!456)))) (inv!37049 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) e!1475810))))

(declare-fun b!2302907 () Bool)

(assert (=> b!2302907 (= e!1475825 e!1475803)))

(declare-fun res!984606 () Bool)

(assert (=> b!2302907 (=> (not res!984606) (not e!1475803))))

(assert (=> b!2302907 (= res!984606 e!1475817)))

(declare-fun res!984608 () Bool)

(assert (=> b!2302907 (=> res!984608 e!1475817)))

(assert (=> b!2302907 (= res!984608 lt!854129)))

(declare-fun isEmpty!15662 (List!27512) Bool)

(assert (=> b!2302907 (= lt!854129 (isEmpty!15662 tokens!456))))

(declare-fun res!984610 () Bool)

(assert (=> start!226584 (=> (not res!984610) (not e!1475802))))

(assert (=> start!226584 (= res!984610 ((_ is Lexer!3990) thiss!16613))))

(assert (=> start!226584 e!1475802))

(assert (=> start!226584 true))

(assert (=> start!226584 e!1475823))

(assert (=> start!226584 e!1475827))

(assert (=> start!226584 e!1475829))

(assert (=> start!226584 e!1475804))

(assert (=> start!226584 e!1475819))

(assert (=> start!226584 e!1475814))

(assert (=> start!226584 e!1475805))

(declare-fun b!2302908 () Bool)

(declare-fun matchR!3000 (Regex!6743 List!27510) Bool)

(assert (=> b!2302908 (= e!1475822 (not (matchR!3000 (regex!4395 r!2363) (list!10801 (charsOf!2783 (head!5042 tokens!456))))))))

(assert (= (and start!226584 res!984610) b!2302888))

(assert (= (and b!2302888 res!984601) b!2302894))

(assert (= (and b!2302894 res!984614) b!2302885))

(assert (= (and b!2302885 res!984609) b!2302903))

(assert (= (and b!2302903 res!984602) b!2302886))

(assert (= (and b!2302886 res!984617) b!2302907))

(assert (= (and b!2302907 (not res!984608)) b!2302880))

(assert (= (and b!2302907 res!984606) b!2302899))

(assert (= (and b!2302899 (not res!984618)) b!2302891))

(assert (= (and b!2302899 res!984605) b!2302879))

(assert (= (and b!2302879 res!984616) b!2302902))

(assert (= (and b!2302902 res!984613) b!2302883))

(assert (= (and b!2302883 res!984611) b!2302908))

(assert (= (and b!2302883 (not res!984604)) b!2302898))

(assert (= (and b!2302898 (not res!984607)) b!2302884))

(assert (= (and b!2302884 c!365073) b!2302875))

(assert (= (and b!2302884 (not c!365073)) b!2302897))

(assert (= (and b!2302884 (not res!984603)) b!2302900))

(assert (= (and b!2302900 (not res!984612)) b!2302901))

(assert (= (and b!2302901 (not res!984615)) b!2302892))

(assert (= (and start!226584 ((_ is Cons!27416) input!1722)) b!2302878))

(assert (= b!2302890 b!2302889))

(assert (= start!226584 b!2302890))

(assert (= (and start!226584 ((_ is Cons!27416) suffix!886)) b!2302895))

(assert (= (and start!226584 ((_ is Cons!27416) otherP!12)) b!2302905))

(assert (= b!2302877 b!2302904))

(assert (= b!2302876 b!2302877))

(assert (= (and start!226584 ((_ is Cons!27417) rules!1750)) b!2302876))

(assert (= b!2302893 b!2302882))

(assert (= start!226584 b!2302893))

(assert (= b!2302906 b!2302896))

(assert (= b!2302887 b!2302906))

(assert (= b!2302881 b!2302887))

(assert (= (and start!226584 ((_ is Cons!27418) tokens!456)) b!2302881))

(declare-fun m!2729949 () Bool)

(assert (=> b!2302875 m!2729949))

(declare-fun m!2729951 () Bool)

(assert (=> b!2302883 m!2729951))

(declare-fun m!2729953 () Bool)

(assert (=> b!2302883 m!2729953))

(declare-fun m!2729955 () Bool)

(assert (=> b!2302901 m!2729955))

(declare-fun m!2729957 () Bool)

(assert (=> b!2302885 m!2729957))

(declare-fun m!2729959 () Bool)

(assert (=> b!2302898 m!2729959))

(declare-fun m!2729961 () Bool)

(assert (=> b!2302898 m!2729961))

(declare-fun m!2729963 () Bool)

(assert (=> b!2302898 m!2729963))

(declare-fun m!2729965 () Bool)

(assert (=> b!2302898 m!2729965))

(declare-fun m!2729967 () Bool)

(assert (=> b!2302888 m!2729967))

(declare-fun m!2729969 () Bool)

(assert (=> b!2302881 m!2729969))

(declare-fun m!2729971 () Bool)

(assert (=> b!2302879 m!2729971))

(declare-fun m!2729973 () Bool)

(assert (=> b!2302887 m!2729973))

(declare-fun m!2729975 () Bool)

(assert (=> b!2302890 m!2729975))

(declare-fun m!2729977 () Bool)

(assert (=> b!2302890 m!2729977))

(declare-fun m!2729979 () Bool)

(assert (=> b!2302906 m!2729979))

(declare-fun m!2729981 () Bool)

(assert (=> b!2302906 m!2729981))

(declare-fun m!2729983 () Bool)

(assert (=> b!2302907 m!2729983))

(declare-fun m!2729985 () Bool)

(assert (=> b!2302894 m!2729985))

(declare-fun m!2729987 () Bool)

(assert (=> b!2302908 m!2729987))

(assert (=> b!2302908 m!2729987))

(declare-fun m!2729989 () Bool)

(assert (=> b!2302908 m!2729989))

(assert (=> b!2302908 m!2729989))

(declare-fun m!2729991 () Bool)

(assert (=> b!2302908 m!2729991))

(assert (=> b!2302908 m!2729991))

(declare-fun m!2729993 () Bool)

(assert (=> b!2302908 m!2729993))

(declare-fun m!2729995 () Bool)

(assert (=> b!2302900 m!2729995))

(declare-fun m!2729997 () Bool)

(assert (=> b!2302900 m!2729997))

(declare-fun m!2729999 () Bool)

(assert (=> b!2302900 m!2729999))

(declare-fun m!2730001 () Bool)

(assert (=> b!2302900 m!2730001))

(declare-fun m!2730003 () Bool)

(assert (=> b!2302900 m!2730003))

(declare-fun m!2730005 () Bool)

(assert (=> b!2302900 m!2730005))

(assert (=> b!2302900 m!2730003))

(declare-fun m!2730007 () Bool)

(assert (=> b!2302900 m!2730007))

(declare-fun m!2730009 () Bool)

(assert (=> b!2302900 m!2730009))

(declare-fun m!2730011 () Bool)

(assert (=> b!2302900 m!2730011))

(declare-fun m!2730013 () Bool)

(assert (=> b!2302900 m!2730013))

(declare-fun m!2730015 () Bool)

(assert (=> b!2302900 m!2730015))

(declare-fun m!2730017 () Bool)

(assert (=> b!2302893 m!2730017))

(declare-fun m!2730019 () Bool)

(assert (=> b!2302893 m!2730019))

(declare-fun m!2730021 () Bool)

(assert (=> b!2302886 m!2730021))

(declare-fun m!2730023 () Bool)

(assert (=> b!2302886 m!2730023))

(declare-fun m!2730025 () Bool)

(assert (=> b!2302886 m!2730025))

(assert (=> b!2302886 m!2730025))

(declare-fun m!2730027 () Bool)

(assert (=> b!2302886 m!2730027))

(declare-fun m!2730029 () Bool)

(assert (=> b!2302903 m!2730029))

(assert (=> b!2302880 m!2729987))

(assert (=> b!2302880 m!2729987))

(assert (=> b!2302880 m!2729989))

(assert (=> b!2302880 m!2729989))

(declare-fun m!2730031 () Bool)

(assert (=> b!2302880 m!2730031))

(assert (=> b!2302880 m!2729999))

(assert (=> b!2302891 m!2729987))

(declare-fun m!2730033 () Bool)

(assert (=> b!2302877 m!2730033))

(declare-fun m!2730035 () Bool)

(assert (=> b!2302877 m!2730035))

(declare-fun m!2730037 () Bool)

(assert (=> b!2302892 m!2730037))

(declare-fun m!2730039 () Bool)

(assert (=> b!2302892 m!2730039))

(declare-fun m!2730041 () Bool)

(assert (=> b!2302892 m!2730041))

(check-sat (not b!2302891) b_and!183507 (not b_next!70267) (not b!2302894) (not b!2302905) (not b!2302895) (not b_next!70257) (not b!2302878) (not b!2302892) (not b!2302886) (not b!2302887) (not b!2302880) (not b_next!70255) (not b!2302885) tp_is_empty!10707 b_and!183511 b_and!183505 b_and!183503 (not b_next!70265) b_and!183509 (not b!2302893) (not b!2302890) (not b!2302877) (not b_next!70263) b_and!183497 b_and!183501 (not b!2302898) (not b!2302883) (not b!2302907) (not b_next!70253) (not b!2302908) (not b!2302875) (not b!2302903) (not b!2302900) (not b_next!70261) (not b!2302881) (not b!2302906) (not b!2302888) (not b!2302876) (not b!2302901) b_and!183499 (not b_next!70259) (not b!2302879))
(check-sat b_and!183511 b_and!183507 (not b_next!70267) (not b_next!70253) (not b_next!70257) (not b_next!70261) b_and!183499 (not b_next!70259) (not b_next!70255) b_and!183505 b_and!183503 (not b_next!70265) b_and!183509 (not b_next!70263) b_and!183497 b_and!183501)
(get-model)

(declare-fun b!2302959 () Bool)

(declare-fun e!1475862 () Bool)

(declare-fun head!5044 (List!27510) C!13632)

(assert (=> b!2302959 (= e!1475862 (= (head!5044 (list!10801 (charsOf!2783 (head!5042 tokens!456)))) (c!365075 (regex!4395 r!2363))))))

(declare-fun b!2302960 () Bool)

(declare-fun e!1475866 () Bool)

(declare-fun derivativeStep!1545 (Regex!6743 C!13632) Regex!6743)

(declare-fun tail!3329 (List!27510) List!27510)

(assert (=> b!2302960 (= e!1475866 (matchR!3000 (derivativeStep!1545 (regex!4395 r!2363) (head!5044 (list!10801 (charsOf!2783 (head!5042 tokens!456))))) (tail!3329 (list!10801 (charsOf!2783 (head!5042 tokens!456))))))))

(declare-fun b!2302961 () Bool)

(declare-fun e!1475861 () Bool)

(declare-fun lt!854150 () Bool)

(declare-fun call!137077 () Bool)

(assert (=> b!2302961 (= e!1475861 (= lt!854150 call!137077))))

(declare-fun b!2302962 () Bool)

(declare-fun res!984667 () Bool)

(assert (=> b!2302962 (=> (not res!984667) (not e!1475862))))

(assert (=> b!2302962 (= res!984667 (isEmpty!15661 (tail!3329 (list!10801 (charsOf!2783 (head!5042 tokens!456))))))))

(declare-fun b!2302963 () Bool)

(declare-fun e!1475860 () Bool)

(assert (=> b!2302963 (= e!1475860 (not (= (head!5044 (list!10801 (charsOf!2783 (head!5042 tokens!456)))) (c!365075 (regex!4395 r!2363)))))))

(declare-fun b!2302964 () Bool)

(declare-fun res!984666 () Bool)

(declare-fun e!1475864 () Bool)

(assert (=> b!2302964 (=> res!984666 e!1475864)))

(assert (=> b!2302964 (= res!984666 (not ((_ is ElementMatch!6743) (regex!4395 r!2363))))))

(declare-fun e!1475865 () Bool)

(assert (=> b!2302964 (= e!1475865 e!1475864)))

(declare-fun b!2302965 () Bool)

(declare-fun res!984660 () Bool)

(assert (=> b!2302965 (=> (not res!984660) (not e!1475862))))

(assert (=> b!2302965 (= res!984660 (not call!137077))))

(declare-fun b!2302966 () Bool)

(declare-fun res!984664 () Bool)

(assert (=> b!2302966 (=> res!984664 e!1475860)))

(assert (=> b!2302966 (= res!984664 (not (isEmpty!15661 (tail!3329 (list!10801 (charsOf!2783 (head!5042 tokens!456)))))))))

(declare-fun b!2302967 () Bool)

(declare-fun e!1475863 () Bool)

(assert (=> b!2302967 (= e!1475864 e!1475863)))

(declare-fun res!984663 () Bool)

(assert (=> b!2302967 (=> (not res!984663) (not e!1475863))))

(assert (=> b!2302967 (= res!984663 (not lt!854150))))

(declare-fun d!681151 () Bool)

(assert (=> d!681151 e!1475861))

(declare-fun c!365088 () Bool)

(assert (=> d!681151 (= c!365088 ((_ is EmptyExpr!6743) (regex!4395 r!2363)))))

(assert (=> d!681151 (= lt!854150 e!1475866)))

(declare-fun c!365090 () Bool)

(assert (=> d!681151 (= c!365090 (isEmpty!15661 (list!10801 (charsOf!2783 (head!5042 tokens!456)))))))

(declare-fun validRegex!2547 (Regex!6743) Bool)

(assert (=> d!681151 (validRegex!2547 (regex!4395 r!2363))))

(assert (=> d!681151 (= (matchR!3000 (regex!4395 r!2363) (list!10801 (charsOf!2783 (head!5042 tokens!456)))) lt!854150)))

(declare-fun b!2302968 () Bool)

(assert (=> b!2302968 (= e!1475865 (not lt!854150))))

(declare-fun b!2302969 () Bool)

(declare-fun nullable!1885 (Regex!6743) Bool)

(assert (=> b!2302969 (= e!1475866 (nullable!1885 (regex!4395 r!2363)))))

(declare-fun b!2302970 () Bool)

(declare-fun res!984661 () Bool)

(assert (=> b!2302970 (=> res!984661 e!1475864)))

(assert (=> b!2302970 (= res!984661 e!1475862)))

(declare-fun res!984662 () Bool)

(assert (=> b!2302970 (=> (not res!984662) (not e!1475862))))

(assert (=> b!2302970 (= res!984662 lt!854150)))

(declare-fun b!2302971 () Bool)

(assert (=> b!2302971 (= e!1475861 e!1475865)))

(declare-fun c!365089 () Bool)

(assert (=> b!2302971 (= c!365089 ((_ is EmptyLang!6743) (regex!4395 r!2363)))))

(declare-fun bm!137072 () Bool)

(assert (=> bm!137072 (= call!137077 (isEmpty!15661 (list!10801 (charsOf!2783 (head!5042 tokens!456)))))))

(declare-fun b!2302972 () Bool)

(assert (=> b!2302972 (= e!1475863 e!1475860)))

(declare-fun res!984665 () Bool)

(assert (=> b!2302972 (=> res!984665 e!1475860)))

(assert (=> b!2302972 (= res!984665 call!137077)))

(assert (= (and d!681151 c!365090) b!2302969))

(assert (= (and d!681151 (not c!365090)) b!2302960))

(assert (= (and d!681151 c!365088) b!2302961))

(assert (= (and d!681151 (not c!365088)) b!2302971))

(assert (= (and b!2302971 c!365089) b!2302968))

(assert (= (and b!2302971 (not c!365089)) b!2302964))

(assert (= (and b!2302964 (not res!984666)) b!2302970))

(assert (= (and b!2302970 res!984662) b!2302965))

(assert (= (and b!2302965 res!984660) b!2302962))

(assert (= (and b!2302962 res!984667) b!2302959))

(assert (= (and b!2302970 (not res!984661)) b!2302967))

(assert (= (and b!2302967 res!984663) b!2302972))

(assert (= (and b!2302972 (not res!984665)) b!2302966))

(assert (= (and b!2302966 (not res!984664)) b!2302963))

(assert (= (or b!2302961 b!2302965 b!2302972) bm!137072))

(assert (=> b!2302966 m!2729991))

(declare-fun m!2730069 () Bool)

(assert (=> b!2302966 m!2730069))

(assert (=> b!2302966 m!2730069))

(declare-fun m!2730071 () Bool)

(assert (=> b!2302966 m!2730071))

(assert (=> b!2302960 m!2729991))

(declare-fun m!2730073 () Bool)

(assert (=> b!2302960 m!2730073))

(assert (=> b!2302960 m!2730073))

(declare-fun m!2730075 () Bool)

(assert (=> b!2302960 m!2730075))

(assert (=> b!2302960 m!2729991))

(assert (=> b!2302960 m!2730069))

(assert (=> b!2302960 m!2730075))

(assert (=> b!2302960 m!2730069))

(declare-fun m!2730077 () Bool)

(assert (=> b!2302960 m!2730077))

(assert (=> b!2302962 m!2729991))

(assert (=> b!2302962 m!2730069))

(assert (=> b!2302962 m!2730069))

(assert (=> b!2302962 m!2730071))

(assert (=> bm!137072 m!2729991))

(declare-fun m!2730079 () Bool)

(assert (=> bm!137072 m!2730079))

(assert (=> b!2302963 m!2729991))

(assert (=> b!2302963 m!2730073))

(declare-fun m!2730081 () Bool)

(assert (=> b!2302969 m!2730081))

(assert (=> b!2302959 m!2729991))

(assert (=> b!2302959 m!2730073))

(assert (=> d!681151 m!2729991))

(assert (=> d!681151 m!2730079))

(declare-fun m!2730083 () Bool)

(assert (=> d!681151 m!2730083))

(assert (=> b!2302908 d!681151))

(declare-fun d!681163 () Bool)

(declare-fun list!10803 (Conc!8938) List!27510)

(assert (=> d!681163 (= (list!10801 (charsOf!2783 (head!5042 tokens!456))) (list!10803 (c!365074 (charsOf!2783 (head!5042 tokens!456)))))))

(declare-fun bs!457757 () Bool)

(assert (= bs!457757 d!681163))

(declare-fun m!2730085 () Bool)

(assert (=> bs!457757 m!2730085))

(assert (=> b!2302908 d!681163))

(declare-fun d!681165 () Bool)

(declare-fun lt!854154 () BalanceConc!17604)

(assert (=> d!681165 (= (list!10801 lt!854154) (originalCharacters!5165 (head!5042 tokens!456)))))

(declare-fun dynLambda!11919 (Int TokenValue!4557) BalanceConc!17604)

(assert (=> d!681165 (= lt!854154 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (head!5042 tokens!456)))) (value!139077 (head!5042 tokens!456))))))

(assert (=> d!681165 (= (charsOf!2783 (head!5042 tokens!456)) lt!854154)))

(declare-fun b_lambda!73333 () Bool)

(assert (=> (not b_lambda!73333) (not d!681165)))

(declare-fun t!205988 () Bool)

(declare-fun tb!137695 () Bool)

(assert (=> (and b!2302896 (= (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (toChars!6064 (transformation!4395 (rule!6741 (head!5042 tokens!456))))) t!205988) tb!137695))

(declare-fun b!2302979 () Bool)

(declare-fun e!1475870 () Bool)

(declare-fun tp!730612 () Bool)

(declare-fun inv!37053 (Conc!8938) Bool)

(assert (=> b!2302979 (= e!1475870 (and (inv!37053 (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (head!5042 tokens!456)))) (value!139077 (head!5042 tokens!456))))) tp!730612))))

(declare-fun result!167870 () Bool)

(declare-fun inv!37054 (BalanceConc!17604) Bool)

(assert (=> tb!137695 (= result!167870 (and (inv!37054 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (head!5042 tokens!456)))) (value!139077 (head!5042 tokens!456)))) e!1475870))))

(assert (= tb!137695 b!2302979))

(declare-fun m!2730087 () Bool)

(assert (=> b!2302979 m!2730087))

(declare-fun m!2730089 () Bool)

(assert (=> tb!137695 m!2730089))

(assert (=> d!681165 t!205988))

(declare-fun b_and!183513 () Bool)

(assert (= b_and!183499 (and (=> t!205988 result!167870) b_and!183513)))

(declare-fun tb!137697 () Bool)

(declare-fun t!205990 () Bool)

(assert (=> (and b!2302904 (= (toChars!6064 (transformation!4395 (h!32818 rules!1750))) (toChars!6064 (transformation!4395 (rule!6741 (head!5042 tokens!456))))) t!205990) tb!137697))

(declare-fun result!167874 () Bool)

(assert (= result!167874 result!167870))

(assert (=> d!681165 t!205990))

(declare-fun b_and!183515 () Bool)

(assert (= b_and!183503 (and (=> t!205990 result!167874) b_and!183515)))

(declare-fun t!205992 () Bool)

(declare-fun tb!137699 () Bool)

(assert (=> (and b!2302889 (= (toChars!6064 (transformation!4395 otherR!12)) (toChars!6064 (transformation!4395 (rule!6741 (head!5042 tokens!456))))) t!205992) tb!137699))

(declare-fun result!167876 () Bool)

(assert (= result!167876 result!167870))

(assert (=> d!681165 t!205992))

(declare-fun b_and!183517 () Bool)

(assert (= b_and!183507 (and (=> t!205992 result!167876) b_and!183517)))

(declare-fun t!205994 () Bool)

(declare-fun tb!137701 () Bool)

(assert (=> (and b!2302882 (= (toChars!6064 (transformation!4395 r!2363)) (toChars!6064 (transformation!4395 (rule!6741 (head!5042 tokens!456))))) t!205994) tb!137701))

(declare-fun result!167878 () Bool)

(assert (= result!167878 result!167870))

(assert (=> d!681165 t!205994))

(declare-fun b_and!183519 () Bool)

(assert (= b_and!183511 (and (=> t!205994 result!167878) b_and!183519)))

(declare-fun m!2730091 () Bool)

(assert (=> d!681165 m!2730091))

(declare-fun m!2730093 () Bool)

(assert (=> d!681165 m!2730093))

(assert (=> b!2302908 d!681165))

(declare-fun d!681167 () Bool)

(assert (=> d!681167 (= (head!5042 tokens!456) (h!32819 tokens!456))))

(assert (=> b!2302908 d!681167))

(declare-fun d!681169 () Bool)

(assert (=> d!681169 (= (isEmpty!15662 tokens!456) ((_ is Nil!27418) tokens!456))))

(assert (=> b!2302907 d!681169))

(declare-fun d!681171 () Bool)

(assert (=> d!681171 (= r!2363 otherR!12)))

(declare-fun lt!854157 () Unit!40319)

(declare-fun choose!13452 (List!27511 Rule!8590 Rule!8590) Unit!40319)

(assert (=> d!681171 (= lt!854157 (choose!13452 rules!1750 r!2363 otherR!12))))

(assert (=> d!681171 (contains!4781 rules!1750 r!2363)))

(assert (=> d!681171 (= (lemmaSameIndexThenSameElement!188 rules!1750 r!2363 otherR!12) lt!854157)))

(declare-fun bs!457758 () Bool)

(assert (= bs!457758 d!681171))

(declare-fun m!2730095 () Bool)

(assert (=> bs!457758 m!2730095))

(assert (=> bs!457758 m!2729957))

(assert (=> b!2302875 d!681171))

(declare-fun d!681173 () Bool)

(declare-fun list!10804 (Conc!8939) List!27512)

(assert (=> d!681173 (= (list!10800 (_1!16161 lt!854125)) (list!10804 (c!365076 (_1!16161 lt!854125))))))

(declare-fun bs!457759 () Bool)

(assert (= bs!457759 d!681173))

(declare-fun m!2730097 () Bool)

(assert (=> bs!457759 m!2730097))

(assert (=> b!2302886 d!681173))

(declare-fun d!681175 () Bool)

(assert (=> d!681175 (= (list!10801 (_2!16161 lt!854125)) (list!10803 (c!365074 (_2!16161 lt!854125))))))

(declare-fun bs!457760 () Bool)

(assert (= bs!457760 d!681175))

(declare-fun m!2730099 () Bool)

(assert (=> bs!457760 m!2730099))

(assert (=> b!2302886 d!681175))

(declare-fun b!2303041 () Bool)

(declare-fun e!1475904 () Bool)

(declare-fun lt!854187 () tuple2!27302)

(assert (=> b!2303041 (= e!1475904 (= (_2!16161 lt!854187) (seqFromList!3099 input!1722)))))

(declare-fun d!681177 () Bool)

(declare-fun e!1475903 () Bool)

(assert (=> d!681177 e!1475903))

(declare-fun res!984706 () Bool)

(assert (=> d!681177 (=> (not res!984706) (not e!1475903))))

(assert (=> d!681177 (= res!984706 e!1475904)))

(declare-fun c!365102 () Bool)

(declare-fun size!21628 (BalanceConc!17606) Int)

(assert (=> d!681177 (= c!365102 (> (size!21628 (_1!16161 lt!854187)) 0))))

(declare-fun lexTailRecV2!806 (LexerInterface!3992 List!27511 BalanceConc!17604 BalanceConc!17604 BalanceConc!17604 BalanceConc!17606) tuple2!27302)

(assert (=> d!681177 (= lt!854187 (lexTailRecV2!806 thiss!16613 rules!1750 (seqFromList!3099 input!1722) (BalanceConc!17605 Empty!8938) (seqFromList!3099 input!1722) (BalanceConc!17607 Empty!8939)))))

(assert (=> d!681177 (= (lex!1831 thiss!16613 rules!1750 (seqFromList!3099 input!1722)) lt!854187)))

(declare-fun b!2303042 () Bool)

(declare-fun e!1475902 () Bool)

(assert (=> b!2303042 (= e!1475904 e!1475902)))

(declare-fun res!984705 () Bool)

(assert (=> b!2303042 (= res!984705 (< (size!21625 (_2!16161 lt!854187)) (size!21625 (seqFromList!3099 input!1722))))))

(assert (=> b!2303042 (=> (not res!984705) (not e!1475902))))

(declare-fun b!2303043 () Bool)

(declare-fun isEmpty!15664 (BalanceConc!17606) Bool)

(assert (=> b!2303043 (= e!1475902 (not (isEmpty!15664 (_1!16161 lt!854187))))))

(declare-fun b!2303044 () Bool)

(declare-fun res!984704 () Bool)

(assert (=> b!2303044 (=> (not res!984704) (not e!1475903))))

(declare-fun lexList!1131 (LexerInterface!3992 List!27511 List!27510) tuple2!27304)

(assert (=> b!2303044 (= res!984704 (= (list!10800 (_1!16161 lt!854187)) (_1!16162 (lexList!1131 thiss!16613 rules!1750 (list!10801 (seqFromList!3099 input!1722))))))))

(declare-fun b!2303045 () Bool)

(assert (=> b!2303045 (= e!1475903 (= (list!10801 (_2!16161 lt!854187)) (_2!16162 (lexList!1131 thiss!16613 rules!1750 (list!10801 (seqFromList!3099 input!1722))))))))

(assert (= (and d!681177 c!365102) b!2303042))

(assert (= (and d!681177 (not c!365102)) b!2303041))

(assert (= (and b!2303042 res!984705) b!2303043))

(assert (= (and d!681177 res!984706) b!2303044))

(assert (= (and b!2303044 res!984704) b!2303045))

(declare-fun m!2730169 () Bool)

(assert (=> d!681177 m!2730169))

(assert (=> d!681177 m!2730025))

(assert (=> d!681177 m!2730025))

(declare-fun m!2730171 () Bool)

(assert (=> d!681177 m!2730171))

(declare-fun m!2730173 () Bool)

(assert (=> b!2303043 m!2730173))

(declare-fun m!2730175 () Bool)

(assert (=> b!2303044 m!2730175))

(assert (=> b!2303044 m!2730025))

(declare-fun m!2730177 () Bool)

(assert (=> b!2303044 m!2730177))

(assert (=> b!2303044 m!2730177))

(declare-fun m!2730179 () Bool)

(assert (=> b!2303044 m!2730179))

(declare-fun m!2730181 () Bool)

(assert (=> b!2303042 m!2730181))

(assert (=> b!2303042 m!2730025))

(declare-fun m!2730183 () Bool)

(assert (=> b!2303042 m!2730183))

(declare-fun m!2730185 () Bool)

(assert (=> b!2303045 m!2730185))

(assert (=> b!2303045 m!2730025))

(assert (=> b!2303045 m!2730177))

(assert (=> b!2303045 m!2730177))

(assert (=> b!2303045 m!2730179))

(assert (=> b!2302886 d!681177))

(declare-fun d!681199 () Bool)

(declare-fun fromListB!1398 (List!27510) BalanceConc!17604)

(assert (=> d!681199 (= (seqFromList!3099 input!1722) (fromListB!1398 input!1722))))

(declare-fun bs!457763 () Bool)

(assert (= bs!457763 d!681199))

(declare-fun m!2730187 () Bool)

(assert (=> bs!457763 m!2730187))

(assert (=> b!2302886 d!681199))

(declare-fun d!681201 () Bool)

(assert (=> d!681201 (= (inv!37046 (tag!4885 (h!32818 rules!1750))) (= (mod (str.len (value!139076 (tag!4885 (h!32818 rules!1750)))) 2) 0))))

(assert (=> b!2302877 d!681201))

(declare-fun d!681203 () Bool)

(declare-fun res!984709 () Bool)

(declare-fun e!1475907 () Bool)

(assert (=> d!681203 (=> (not res!984709) (not e!1475907))))

(declare-fun semiInverseModEq!1788 (Int Int) Bool)

(assert (=> d!681203 (= res!984709 (semiInverseModEq!1788 (toChars!6064 (transformation!4395 (h!32818 rules!1750))) (toValue!6205 (transformation!4395 (h!32818 rules!1750)))))))

(assert (=> d!681203 (= (inv!37049 (transformation!4395 (h!32818 rules!1750))) e!1475907)))

(declare-fun b!2303048 () Bool)

(declare-fun equivClasses!1707 (Int Int) Bool)

(assert (=> b!2303048 (= e!1475907 (equivClasses!1707 (toChars!6064 (transformation!4395 (h!32818 rules!1750))) (toValue!6205 (transformation!4395 (h!32818 rules!1750)))))))

(assert (= (and d!681203 res!984709) b!2303048))

(declare-fun m!2730189 () Bool)

(assert (=> d!681203 m!2730189))

(declare-fun m!2730191 () Bool)

(assert (=> b!2303048 m!2730191))

(assert (=> b!2302877 d!681203))

(declare-fun d!681205 () Bool)

(assert (=> d!681205 (= (isEmpty!15660 rules!1750) ((_ is Nil!27417) rules!1750))))

(assert (=> b!2302888 d!681205))

(declare-fun b!2303059 () Bool)

(declare-fun e!1475915 () Bool)

(declare-fun inv!17 (TokenValue!4557) Bool)

(assert (=> b!2303059 (= e!1475915 (inv!17 (value!139077 (h!32819 tokens!456))))))

(declare-fun d!681207 () Bool)

(declare-fun c!365108 () Bool)

(assert (=> d!681207 (= c!365108 ((_ is IntegerValue!13671) (value!139077 (h!32819 tokens!456))))))

(declare-fun e!1475916 () Bool)

(assert (=> d!681207 (= (inv!21 (value!139077 (h!32819 tokens!456))) e!1475916)))

(declare-fun b!2303060 () Bool)

(assert (=> b!2303060 (= e!1475916 e!1475915)))

(declare-fun c!365107 () Bool)

(assert (=> b!2303060 (= c!365107 ((_ is IntegerValue!13672) (value!139077 (h!32819 tokens!456))))))

(declare-fun b!2303061 () Bool)

(declare-fun res!984712 () Bool)

(declare-fun e!1475914 () Bool)

(assert (=> b!2303061 (=> res!984712 e!1475914)))

(assert (=> b!2303061 (= res!984712 (not ((_ is IntegerValue!13673) (value!139077 (h!32819 tokens!456)))))))

(assert (=> b!2303061 (= e!1475915 e!1475914)))

(declare-fun b!2303062 () Bool)

(declare-fun inv!15 (TokenValue!4557) Bool)

(assert (=> b!2303062 (= e!1475914 (inv!15 (value!139077 (h!32819 tokens!456))))))

(declare-fun b!2303063 () Bool)

(declare-fun inv!16 (TokenValue!4557) Bool)

(assert (=> b!2303063 (= e!1475916 (inv!16 (value!139077 (h!32819 tokens!456))))))

(assert (= (and d!681207 c!365108) b!2303063))

(assert (= (and d!681207 (not c!365108)) b!2303060))

(assert (= (and b!2303060 c!365107) b!2303059))

(assert (= (and b!2303060 (not c!365107)) b!2303061))

(assert (= (and b!2303061 (not res!984712)) b!2303062))

(declare-fun m!2730193 () Bool)

(assert (=> b!2303059 m!2730193))

(declare-fun m!2730195 () Bool)

(assert (=> b!2303062 m!2730195))

(declare-fun m!2730197 () Bool)

(assert (=> b!2303063 m!2730197))

(assert (=> b!2302887 d!681207))

(declare-fun d!681209 () Bool)

(declare-fun lt!854190 () Int)

(assert (=> d!681209 (>= lt!854190 0)))

(declare-fun e!1475922 () Int)

(assert (=> d!681209 (= lt!854190 e!1475922)))

(declare-fun c!365113 () Bool)

(assert (=> d!681209 (= c!365113 (and ((_ is Cons!27417) rules!1750) (= (h!32818 rules!1750) otherR!12)))))

(assert (=> d!681209 (contains!4781 rules!1750 otherR!12)))

(assert (=> d!681209 (= (getIndex!408 rules!1750 otherR!12) lt!854190)))

(declare-fun b!2303075 () Bool)

(declare-fun e!1475923 () Int)

(assert (=> b!2303075 (= e!1475923 (- 1))))

(declare-fun b!2303074 () Bool)

(assert (=> b!2303074 (= e!1475923 (+ 1 (getIndex!408 (t!205985 rules!1750) otherR!12)))))

(declare-fun b!2303073 () Bool)

(assert (=> b!2303073 (= e!1475922 e!1475923)))

(declare-fun c!365114 () Bool)

(assert (=> b!2303073 (= c!365114 (and ((_ is Cons!27417) rules!1750) (not (= (h!32818 rules!1750) otherR!12))))))

(declare-fun b!2303072 () Bool)

(assert (=> b!2303072 (= e!1475922 0)))

(assert (= (and d!681209 c!365113) b!2303072))

(assert (= (and d!681209 (not c!365113)) b!2303073))

(assert (= (and b!2303073 c!365114) b!2303074))

(assert (= (and b!2303073 (not c!365114)) b!2303075))

(assert (=> d!681209 m!2730029))

(declare-fun m!2730199 () Bool)

(assert (=> b!2303074 m!2730199))

(assert (=> b!2302898 d!681209))

(declare-fun d!681211 () Bool)

(declare-fun lt!854191 () Int)

(assert (=> d!681211 (>= lt!854191 0)))

(declare-fun e!1475924 () Int)

(assert (=> d!681211 (= lt!854191 e!1475924)))

(declare-fun c!365115 () Bool)

(assert (=> d!681211 (= c!365115 (and ((_ is Cons!27417) rules!1750) (= (h!32818 rules!1750) r!2363)))))

(assert (=> d!681211 (contains!4781 rules!1750 r!2363)))

(assert (=> d!681211 (= (getIndex!408 rules!1750 r!2363) lt!854191)))

(declare-fun b!2303079 () Bool)

(declare-fun e!1475925 () Int)

(assert (=> b!2303079 (= e!1475925 (- 1))))

(declare-fun b!2303078 () Bool)

(assert (=> b!2303078 (= e!1475925 (+ 1 (getIndex!408 (t!205985 rules!1750) r!2363)))))

(declare-fun b!2303077 () Bool)

(assert (=> b!2303077 (= e!1475924 e!1475925)))

(declare-fun c!365116 () Bool)

(assert (=> b!2303077 (= c!365116 (and ((_ is Cons!27417) rules!1750) (not (= (h!32818 rules!1750) r!2363))))))

(declare-fun b!2303076 () Bool)

(assert (=> b!2303076 (= e!1475924 0)))

(assert (= (and d!681211 c!365115) b!2303076))

(assert (= (and d!681211 (not c!365115)) b!2303077))

(assert (= (and b!2303077 c!365116) b!2303078))

(assert (= (and b!2303077 (not c!365116)) b!2303079))

(assert (=> d!681211 m!2729957))

(declare-fun m!2730201 () Bool)

(assert (=> b!2303078 m!2730201))

(assert (=> b!2302898 d!681211))

(declare-fun d!681213 () Bool)

(declare-fun res!984717 () Bool)

(declare-fun e!1475928 () Bool)

(assert (=> d!681213 (=> (not res!984717) (not e!1475928))))

(assert (=> d!681213 (= res!984717 (validRegex!2547 (regex!4395 otherR!12)))))

(assert (=> d!681213 (= (ruleValid!1485 thiss!16613 otherR!12) e!1475928)))

(declare-fun b!2303084 () Bool)

(declare-fun res!984718 () Bool)

(assert (=> b!2303084 (=> (not res!984718) (not e!1475928))))

(assert (=> b!2303084 (= res!984718 (not (nullable!1885 (regex!4395 otherR!12))))))

(declare-fun b!2303085 () Bool)

(assert (=> b!2303085 (= e!1475928 (not (= (tag!4885 otherR!12) (String!29890 ""))))))

(assert (= (and d!681213 res!984717) b!2303084))

(assert (= (and b!2303084 res!984718) b!2303085))

(declare-fun m!2730203 () Bool)

(assert (=> d!681213 m!2730203))

(declare-fun m!2730205 () Bool)

(assert (=> b!2303084 m!2730205))

(assert (=> b!2302898 d!681213))

(declare-fun d!681215 () Bool)

(assert (=> d!681215 (ruleValid!1485 thiss!16613 otherR!12)))

(declare-fun lt!854194 () Unit!40319)

(declare-fun choose!13453 (LexerInterface!3992 Rule!8590 List!27511) Unit!40319)

(assert (=> d!681215 (= lt!854194 (choose!13453 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!681215 (contains!4781 rules!1750 otherR!12)))

(assert (=> d!681215 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!890 thiss!16613 otherR!12 rules!1750) lt!854194)))

(declare-fun bs!457764 () Bool)

(assert (= bs!457764 d!681215))

(assert (=> bs!457764 m!2729963))

(declare-fun m!2730207 () Bool)

(assert (=> bs!457764 m!2730207))

(assert (=> bs!457764 m!2730029))

(assert (=> b!2302898 d!681215))

(declare-fun d!681217 () Bool)

(declare-fun res!984719 () Bool)

(declare-fun e!1475929 () Bool)

(assert (=> d!681217 (=> (not res!984719) (not e!1475929))))

(assert (=> d!681217 (= res!984719 (validRegex!2547 (regex!4395 r!2363)))))

(assert (=> d!681217 (= (ruleValid!1485 thiss!16613 r!2363) e!1475929)))

(declare-fun b!2303086 () Bool)

(declare-fun res!984720 () Bool)

(assert (=> b!2303086 (=> (not res!984720) (not e!1475929))))

(assert (=> b!2303086 (= res!984720 (not (nullable!1885 (regex!4395 r!2363))))))

(declare-fun b!2303087 () Bool)

(assert (=> b!2303087 (= e!1475929 (not (= (tag!4885 r!2363) (String!29890 ""))))))

(assert (= (and d!681217 res!984719) b!2303086))

(assert (= (and b!2303086 res!984720) b!2303087))

(assert (=> d!681217 m!2730083))

(assert (=> b!2303086 m!2730081))

(assert (=> b!2302883 d!681217))

(declare-fun d!681219 () Bool)

(assert (=> d!681219 (ruleValid!1485 thiss!16613 r!2363)))

(declare-fun lt!854195 () Unit!40319)

(assert (=> d!681219 (= lt!854195 (choose!13453 thiss!16613 r!2363 rules!1750))))

(assert (=> d!681219 (contains!4781 rules!1750 r!2363)))

(assert (=> d!681219 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!890 thiss!16613 r!2363 rules!1750) lt!854195)))

(declare-fun bs!457765 () Bool)

(assert (= bs!457765 d!681219))

(assert (=> bs!457765 m!2729951))

(declare-fun m!2730209 () Bool)

(assert (=> bs!457765 m!2730209))

(assert (=> bs!457765 m!2729957))

(assert (=> b!2302883 d!681219))

(declare-fun d!681221 () Bool)

(declare-fun res!984723 () Bool)

(declare-fun e!1475932 () Bool)

(assert (=> d!681221 (=> (not res!984723) (not e!1475932))))

(declare-fun rulesValid!1631 (LexerInterface!3992 List!27511) Bool)

(assert (=> d!681221 (= res!984723 (rulesValid!1631 thiss!16613 rules!1750))))

(assert (=> d!681221 (= (rulesInvariant!3494 thiss!16613 rules!1750) e!1475932)))

(declare-fun b!2303090 () Bool)

(declare-datatypes ((List!27513 0))(
  ( (Nil!27419) (Cons!27419 (h!32820 String!29889) (t!206083 List!27513)) )
))
(declare-fun noDuplicateTag!1629 (LexerInterface!3992 List!27511 List!27513) Bool)

(assert (=> b!2303090 (= e!1475932 (noDuplicateTag!1629 thiss!16613 rules!1750 Nil!27419))))

(assert (= (and d!681221 res!984723) b!2303090))

(declare-fun m!2730211 () Bool)

(assert (=> d!681221 m!2730211))

(declare-fun m!2730213 () Bool)

(assert (=> b!2303090 m!2730213))

(assert (=> b!2302894 d!681221))

(declare-fun d!681223 () Bool)

(declare-fun lt!854198 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3697 (List!27511) (InoxSet Rule!8590))

(assert (=> d!681223 (= lt!854198 (select (content!3697 rules!1750) r!2363))))

(declare-fun e!1475937 () Bool)

(assert (=> d!681223 (= lt!854198 e!1475937)))

(declare-fun res!984728 () Bool)

(assert (=> d!681223 (=> (not res!984728) (not e!1475937))))

(assert (=> d!681223 (= res!984728 ((_ is Cons!27417) rules!1750))))

(assert (=> d!681223 (= (contains!4781 rules!1750 r!2363) lt!854198)))

(declare-fun b!2303095 () Bool)

(declare-fun e!1475938 () Bool)

(assert (=> b!2303095 (= e!1475937 e!1475938)))

(declare-fun res!984729 () Bool)

(assert (=> b!2303095 (=> res!984729 e!1475938)))

(assert (=> b!2303095 (= res!984729 (= (h!32818 rules!1750) r!2363))))

(declare-fun b!2303096 () Bool)

(assert (=> b!2303096 (= e!1475938 (contains!4781 (t!205985 rules!1750) r!2363))))

(assert (= (and d!681223 res!984728) b!2303095))

(assert (= (and b!2303095 (not res!984729)) b!2303096))

(declare-fun m!2730215 () Bool)

(assert (=> d!681223 m!2730215))

(declare-fun m!2730217 () Bool)

(assert (=> d!681223 m!2730217))

(declare-fun m!2730219 () Bool)

(assert (=> b!2303096 m!2730219))

(assert (=> b!2302885 d!681223))

(declare-fun d!681225 () Bool)

(assert (=> d!681225 (= (inv!37046 (tag!4885 (rule!6741 (h!32819 tokens!456)))) (= (mod (str.len (value!139076 (tag!4885 (rule!6741 (h!32819 tokens!456))))) 2) 0))))

(assert (=> b!2302906 d!681225))

(declare-fun d!681227 () Bool)

(declare-fun res!984730 () Bool)

(declare-fun e!1475939 () Bool)

(assert (=> d!681227 (=> (not res!984730) (not e!1475939))))

(assert (=> d!681227 (= res!984730 (semiInverseModEq!1788 (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (toValue!6205 (transformation!4395 (rule!6741 (h!32819 tokens!456))))))))

(assert (=> d!681227 (= (inv!37049 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) e!1475939)))

(declare-fun b!2303097 () Bool)

(assert (=> b!2303097 (= e!1475939 (equivClasses!1707 (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (toValue!6205 (transformation!4395 (rule!6741 (h!32819 tokens!456))))))))

(assert (= (and d!681227 res!984730) b!2303097))

(declare-fun m!2730221 () Bool)

(assert (=> d!681227 m!2730221))

(declare-fun m!2730223 () Bool)

(assert (=> b!2303097 m!2730223))

(assert (=> b!2302906 d!681227))

(declare-fun d!681229 () Bool)

(declare-fun res!984735 () Bool)

(declare-fun e!1475942 () Bool)

(assert (=> d!681229 (=> (not res!984735) (not e!1475942))))

(assert (=> d!681229 (= res!984735 (not (isEmpty!15661 (originalCharacters!5165 (h!32819 tokens!456)))))))

(assert (=> d!681229 (= (inv!37050 (h!32819 tokens!456)) e!1475942)))

(declare-fun b!2303102 () Bool)

(declare-fun res!984736 () Bool)

(assert (=> b!2303102 (=> (not res!984736) (not e!1475942))))

(assert (=> b!2303102 (= res!984736 (= (originalCharacters!5165 (h!32819 tokens!456)) (list!10801 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (value!139077 (h!32819 tokens!456))))))))

(declare-fun b!2303103 () Bool)

(assert (=> b!2303103 (= e!1475942 (= (size!21624 (h!32819 tokens!456)) (size!21626 (originalCharacters!5165 (h!32819 tokens!456)))))))

(assert (= (and d!681229 res!984735) b!2303102))

(assert (= (and b!2303102 res!984736) b!2303103))

(declare-fun b_lambda!73339 () Bool)

(assert (=> (not b_lambda!73339) (not b!2303102)))

(declare-fun t!206012 () Bool)

(declare-fun tb!137719 () Bool)

(assert (=> (and b!2302896 (= (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456))))) t!206012) tb!137719))

(declare-fun b!2303104 () Bool)

(declare-fun e!1475943 () Bool)

(declare-fun tp!730616 () Bool)

(assert (=> b!2303104 (= e!1475943 (and (inv!37053 (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (value!139077 (h!32819 tokens!456))))) tp!730616))))

(declare-fun result!167900 () Bool)

(assert (=> tb!137719 (= result!167900 (and (inv!37054 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (value!139077 (h!32819 tokens!456)))) e!1475943))))

(assert (= tb!137719 b!2303104))

(declare-fun m!2730225 () Bool)

(assert (=> b!2303104 m!2730225))

(declare-fun m!2730227 () Bool)

(assert (=> tb!137719 m!2730227))

(assert (=> b!2303102 t!206012))

(declare-fun b_and!183537 () Bool)

(assert (= b_and!183513 (and (=> t!206012 result!167900) b_and!183537)))

(declare-fun t!206014 () Bool)

(declare-fun tb!137721 () Bool)

(assert (=> (and b!2302904 (= (toChars!6064 (transformation!4395 (h!32818 rules!1750))) (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456))))) t!206014) tb!137721))

(declare-fun result!167902 () Bool)

(assert (= result!167902 result!167900))

(assert (=> b!2303102 t!206014))

(declare-fun b_and!183539 () Bool)

(assert (= b_and!183515 (and (=> t!206014 result!167902) b_and!183539)))

(declare-fun tb!137723 () Bool)

(declare-fun t!206016 () Bool)

(assert (=> (and b!2302889 (= (toChars!6064 (transformation!4395 otherR!12)) (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456))))) t!206016) tb!137723))

(declare-fun result!167904 () Bool)

(assert (= result!167904 result!167900))

(assert (=> b!2303102 t!206016))

(declare-fun b_and!183541 () Bool)

(assert (= b_and!183517 (and (=> t!206016 result!167904) b_and!183541)))

(declare-fun tb!137725 () Bool)

(declare-fun t!206018 () Bool)

(assert (=> (and b!2302882 (= (toChars!6064 (transformation!4395 r!2363)) (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456))))) t!206018) tb!137725))

(declare-fun result!167906 () Bool)

(assert (= result!167906 result!167900))

(assert (=> b!2303102 t!206018))

(declare-fun b_and!183543 () Bool)

(assert (= b_and!183519 (and (=> t!206018 result!167906) b_and!183543)))

(declare-fun m!2730229 () Bool)

(assert (=> d!681229 m!2730229))

(declare-fun m!2730231 () Bool)

(assert (=> b!2303102 m!2730231))

(assert (=> b!2303102 m!2730231))

(declare-fun m!2730233 () Bool)

(assert (=> b!2303102 m!2730233))

(declare-fun m!2730235 () Bool)

(assert (=> b!2303103 m!2730235))

(assert (=> b!2302881 d!681229))

(declare-fun d!681231 () Bool)

(declare-fun dynLambda!11920 (Int BalanceConc!17604) TokenValue!4557)

(assert (=> d!681231 (= (apply!6657 (transformation!4395 r!2363) lt!854134) (dynLambda!11920 (toValue!6205 (transformation!4395 r!2363)) lt!854134))))

(declare-fun b_lambda!73341 () Bool)

(assert (=> (not b_lambda!73341) (not d!681231)))

(declare-fun t!206020 () Bool)

(declare-fun tb!137727 () Bool)

(assert (=> (and b!2302896 (= (toValue!6205 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (toValue!6205 (transformation!4395 r!2363))) t!206020) tb!137727))

(declare-fun result!167908 () Bool)

(assert (=> tb!137727 (= result!167908 (inv!21 (dynLambda!11920 (toValue!6205 (transformation!4395 r!2363)) lt!854134)))))

(declare-fun m!2730237 () Bool)

(assert (=> tb!137727 m!2730237))

(assert (=> d!681231 t!206020))

(declare-fun b_and!183545 () Bool)

(assert (= b_and!183497 (and (=> t!206020 result!167908) b_and!183545)))

(declare-fun tb!137729 () Bool)

(declare-fun t!206022 () Bool)

(assert (=> (and b!2302904 (= (toValue!6205 (transformation!4395 (h!32818 rules!1750))) (toValue!6205 (transformation!4395 r!2363))) t!206022) tb!137729))

(declare-fun result!167912 () Bool)

(assert (= result!167912 result!167908))

(assert (=> d!681231 t!206022))

(declare-fun b_and!183547 () Bool)

(assert (= b_and!183501 (and (=> t!206022 result!167912) b_and!183547)))

(declare-fun t!206024 () Bool)

(declare-fun tb!137731 () Bool)

(assert (=> (and b!2302889 (= (toValue!6205 (transformation!4395 otherR!12)) (toValue!6205 (transformation!4395 r!2363))) t!206024) tb!137731))

(declare-fun result!167914 () Bool)

(assert (= result!167914 result!167908))

(assert (=> d!681231 t!206024))

(declare-fun b_and!183549 () Bool)

(assert (= b_and!183505 (and (=> t!206024 result!167914) b_and!183549)))

(declare-fun t!206026 () Bool)

(declare-fun tb!137733 () Bool)

(assert (=> (and b!2302882 (= (toValue!6205 (transformation!4395 r!2363)) (toValue!6205 (transformation!4395 r!2363))) t!206026) tb!137733))

(declare-fun result!167916 () Bool)

(assert (= result!167916 result!167908))

(assert (=> d!681231 t!206026))

(declare-fun b_and!183551 () Bool)

(assert (= b_and!183509 (and (=> t!206026 result!167916) b_and!183551)))

(declare-fun m!2730239 () Bool)

(assert (=> d!681231 m!2730239))

(assert (=> b!2302892 d!681231))

(declare-fun b!2303283 () Bool)

(declare-fun e!1476059 () Bool)

(assert (=> b!2303283 (= e!1476059 true)))

(declare-fun d!681233 () Bool)

(assert (=> d!681233 e!1476059))

(assert (= d!681233 b!2303283))

(declare-fun order!15283 () Int)

(declare-fun order!15285 () Int)

(declare-fun lambda!85949 () Int)

(declare-fun dynLambda!11921 (Int Int) Int)

(declare-fun dynLambda!11922 (Int Int) Int)

(assert (=> b!2303283 (< (dynLambda!11921 order!15283 (toValue!6205 (transformation!4395 r!2363))) (dynLambda!11922 order!15285 lambda!85949))))

(declare-fun order!15287 () Int)

(declare-fun dynLambda!11923 (Int Int) Int)

(assert (=> b!2303283 (< (dynLambda!11923 order!15287 (toChars!6064 (transformation!4395 r!2363))) (dynLambda!11922 order!15285 lambda!85949))))

(assert (=> d!681233 (= (list!10801 (dynLambda!11919 (toChars!6064 (transformation!4395 r!2363)) (dynLambda!11920 (toValue!6205 (transformation!4395 r!2363)) lt!854134))) (list!10801 lt!854134))))

(declare-fun lt!854228 () Unit!40319)

(declare-fun ForallOf!499 (Int BalanceConc!17604) Unit!40319)

(assert (=> d!681233 (= lt!854228 (ForallOf!499 lambda!85949 lt!854134))))

(assert (=> d!681233 (= (lemmaSemiInverse!1078 (transformation!4395 r!2363) lt!854134) lt!854228)))

(declare-fun b_lambda!73351 () Bool)

(assert (=> (not b_lambda!73351) (not d!681233)))

(declare-fun tb!137761 () Bool)

(declare-fun t!206054 () Bool)

(assert (=> (and b!2302896 (= (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (toChars!6064 (transformation!4395 r!2363))) t!206054) tb!137761))

(declare-fun b!2303287 () Bool)

(declare-fun tp!730669 () Bool)

(declare-fun e!1476064 () Bool)

(assert (=> b!2303287 (= e!1476064 (and (inv!37053 (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 r!2363)) (dynLambda!11920 (toValue!6205 (transformation!4395 r!2363)) lt!854134)))) tp!730669))))

(declare-fun result!167952 () Bool)

(assert (=> tb!137761 (= result!167952 (and (inv!37054 (dynLambda!11919 (toChars!6064 (transformation!4395 r!2363)) (dynLambda!11920 (toValue!6205 (transformation!4395 r!2363)) lt!854134))) e!1476064))))

(assert (= tb!137761 b!2303287))

(declare-fun m!2730377 () Bool)

(assert (=> b!2303287 m!2730377))

(declare-fun m!2730379 () Bool)

(assert (=> tb!137761 m!2730379))

(assert (=> d!681233 t!206054))

(declare-fun b_and!183593 () Bool)

(assert (= b_and!183537 (and (=> t!206054 result!167952) b_and!183593)))

(declare-fun tb!137769 () Bool)

(declare-fun t!206062 () Bool)

(assert (=> (and b!2302904 (= (toChars!6064 (transformation!4395 (h!32818 rules!1750))) (toChars!6064 (transformation!4395 r!2363))) t!206062) tb!137769))

(declare-fun result!167960 () Bool)

(assert (= result!167960 result!167952))

(assert (=> d!681233 t!206062))

(declare-fun b_and!183595 () Bool)

(assert (= b_and!183539 (and (=> t!206062 result!167960) b_and!183595)))

(declare-fun tb!137771 () Bool)

(declare-fun t!206064 () Bool)

(assert (=> (and b!2302889 (= (toChars!6064 (transformation!4395 otherR!12)) (toChars!6064 (transformation!4395 r!2363))) t!206064) tb!137771))

(declare-fun result!167962 () Bool)

(assert (= result!167962 result!167952))

(assert (=> d!681233 t!206064))

(declare-fun b_and!183597 () Bool)

(assert (= b_and!183541 (and (=> t!206064 result!167962) b_and!183597)))

(declare-fun t!206066 () Bool)

(declare-fun tb!137773 () Bool)

(assert (=> (and b!2302882 (= (toChars!6064 (transformation!4395 r!2363)) (toChars!6064 (transformation!4395 r!2363))) t!206066) tb!137773))

(declare-fun result!167964 () Bool)

(assert (= result!167964 result!167952))

(assert (=> d!681233 t!206066))

(declare-fun b_and!183599 () Bool)

(assert (= b_and!183543 (and (=> t!206066 result!167964) b_and!183599)))

(declare-fun b_lambda!73353 () Bool)

(assert (=> (not b_lambda!73353) (not d!681233)))

(assert (=> d!681233 t!206020))

(declare-fun b_and!183601 () Bool)

(assert (= b_and!183545 (and (=> t!206020 result!167908) b_and!183601)))

(assert (=> d!681233 t!206022))

(declare-fun b_and!183603 () Bool)

(assert (= b_and!183547 (and (=> t!206022 result!167912) b_and!183603)))

(assert (=> d!681233 t!206024))

(declare-fun b_and!183605 () Bool)

(assert (= b_and!183549 (and (=> t!206024 result!167914) b_and!183605)))

(assert (=> d!681233 t!206026))

(declare-fun b_and!183607 () Bool)

(assert (= b_and!183551 (and (=> t!206026 result!167916) b_and!183607)))

(declare-fun m!2730385 () Bool)

(assert (=> d!681233 m!2730385))

(declare-fun m!2730387 () Bool)

(assert (=> d!681233 m!2730387))

(assert (=> d!681233 m!2730239))

(declare-fun m!2730389 () Bool)

(assert (=> d!681233 m!2730389))

(assert (=> d!681233 m!2730239))

(assert (=> d!681233 m!2730389))

(declare-fun m!2730391 () Bool)

(assert (=> d!681233 m!2730391))

(assert (=> b!2302892 d!681233))

(declare-fun d!681299 () Bool)

(assert (=> d!681299 (= (seqFromList!3099 lt!854122) (fromListB!1398 lt!854122))))

(declare-fun bs!457775 () Bool)

(assert (= bs!457775 d!681299))

(declare-fun m!2730393 () Bool)

(assert (=> bs!457775 m!2730393))

(assert (=> b!2302892 d!681299))

(assert (=> b!2302891 d!681167))

(declare-fun d!681301 () Bool)

(assert (=> d!681301 (= (inv!37046 (tag!4885 r!2363)) (= (mod (str.len (value!139076 (tag!4885 r!2363))) 2) 0))))

(assert (=> b!2302893 d!681301))

(declare-fun d!681303 () Bool)

(declare-fun res!984805 () Bool)

(declare-fun e!1476070 () Bool)

(assert (=> d!681303 (=> (not res!984805) (not e!1476070))))

(assert (=> d!681303 (= res!984805 (semiInverseModEq!1788 (toChars!6064 (transformation!4395 r!2363)) (toValue!6205 (transformation!4395 r!2363))))))

(assert (=> d!681303 (= (inv!37049 (transformation!4395 r!2363)) e!1476070)))

(declare-fun b!2303299 () Bool)

(assert (=> b!2303299 (= e!1476070 (equivClasses!1707 (toChars!6064 (transformation!4395 r!2363)) (toValue!6205 (transformation!4395 r!2363))))))

(assert (= (and d!681303 res!984805) b!2303299))

(declare-fun m!2730395 () Bool)

(assert (=> d!681303 m!2730395))

(declare-fun m!2730397 () Bool)

(assert (=> b!2303299 m!2730397))

(assert (=> b!2302893 d!681303))

(declare-fun d!681305 () Bool)

(declare-fun lt!854229 () Bool)

(assert (=> d!681305 (= lt!854229 (select (content!3697 rules!1750) otherR!12))))

(declare-fun e!1476071 () Bool)

(assert (=> d!681305 (= lt!854229 e!1476071)))

(declare-fun res!984806 () Bool)

(assert (=> d!681305 (=> (not res!984806) (not e!1476071))))

(assert (=> d!681305 (= res!984806 ((_ is Cons!27417) rules!1750))))

(assert (=> d!681305 (= (contains!4781 rules!1750 otherR!12) lt!854229)))

(declare-fun b!2303300 () Bool)

(declare-fun e!1476072 () Bool)

(assert (=> b!2303300 (= e!1476071 e!1476072)))

(declare-fun res!984807 () Bool)

(assert (=> b!2303300 (=> res!984807 e!1476072)))

(assert (=> b!2303300 (= res!984807 (= (h!32818 rules!1750) otherR!12))))

(declare-fun b!2303301 () Bool)

(assert (=> b!2303301 (= e!1476072 (contains!4781 (t!205985 rules!1750) otherR!12))))

(assert (= (and d!681305 res!984806) b!2303300))

(assert (= (and b!2303300 (not res!984807)) b!2303301))

(assert (=> d!681305 m!2730215))

(declare-fun m!2730399 () Bool)

(assert (=> d!681305 m!2730399))

(declare-fun m!2730401 () Bool)

(assert (=> b!2303301 m!2730401))

(assert (=> b!2302903 d!681305))

(declare-fun b!2303312 () Bool)

(declare-fun res!984812 () Bool)

(declare-fun e!1476077 () Bool)

(assert (=> b!2303312 (=> (not res!984812) (not e!1476077))))

(declare-fun lt!854232 () List!27510)

(assert (=> b!2303312 (= res!984812 (= (size!21626 lt!854232) (+ (size!21626 lt!854122) (size!21626 (_2!16163 lt!854124)))))))

(declare-fun b!2303311 () Bool)

(declare-fun e!1476078 () List!27510)

(assert (=> b!2303311 (= e!1476078 (Cons!27416 (h!32817 lt!854122) (++!6709 (t!205984 lt!854122) (_2!16163 lt!854124))))))

(declare-fun d!681307 () Bool)

(assert (=> d!681307 e!1476077))

(declare-fun res!984813 () Bool)

(assert (=> d!681307 (=> (not res!984813) (not e!1476077))))

(declare-fun content!3699 (List!27510) (InoxSet C!13632))

(assert (=> d!681307 (= res!984813 (= (content!3699 lt!854232) ((_ map or) (content!3699 lt!854122) (content!3699 (_2!16163 lt!854124)))))))

(assert (=> d!681307 (= lt!854232 e!1476078)))

(declare-fun c!365146 () Bool)

(assert (=> d!681307 (= c!365146 ((_ is Nil!27416) lt!854122))))

(assert (=> d!681307 (= (++!6709 lt!854122 (_2!16163 lt!854124)) lt!854232)))

(declare-fun b!2303310 () Bool)

(assert (=> b!2303310 (= e!1476078 (_2!16163 lt!854124))))

(declare-fun b!2303313 () Bool)

(assert (=> b!2303313 (= e!1476077 (or (not (= (_2!16163 lt!854124) Nil!27416)) (= lt!854232 lt!854122)))))

(assert (= (and d!681307 c!365146) b!2303310))

(assert (= (and d!681307 (not c!365146)) b!2303311))

(assert (= (and d!681307 res!984813) b!2303312))

(assert (= (and b!2303312 res!984812) b!2303313))

(declare-fun m!2730403 () Bool)

(assert (=> b!2303312 m!2730403))

(assert (=> b!2303312 m!2730015))

(declare-fun m!2730405 () Bool)

(assert (=> b!2303312 m!2730405))

(declare-fun m!2730407 () Bool)

(assert (=> b!2303311 m!2730407))

(declare-fun m!2730409 () Bool)

(assert (=> d!681307 m!2730409))

(declare-fun m!2730411 () Bool)

(assert (=> d!681307 m!2730411))

(declare-fun m!2730413 () Bool)

(assert (=> d!681307 m!2730413))

(assert (=> b!2302900 d!681307))

(declare-fun b!2303332 () Bool)

(declare-fun res!984828 () Bool)

(declare-fun e!1476087 () Bool)

(assert (=> b!2303332 (=> (not res!984828) (not e!1476087))))

(declare-fun lt!854243 () Option!5391)

(assert (=> b!2303332 (= res!984828 (= (value!139077 (_1!16163 (get!8264 lt!854243))) (apply!6657 (transformation!4395 (rule!6741 (_1!16163 (get!8264 lt!854243)))) (seqFromList!3099 (originalCharacters!5165 (_1!16163 (get!8264 lt!854243)))))))))

(declare-fun b!2303333 () Bool)

(declare-fun res!984834 () Bool)

(assert (=> b!2303333 (=> (not res!984834) (not e!1476087))))

(assert (=> b!2303333 (= res!984834 (matchR!3000 (regex!4395 (rule!6741 (_1!16163 (get!8264 lt!854243)))) (list!10801 (charsOf!2783 (_1!16163 (get!8264 lt!854243))))))))

(declare-fun b!2303334 () Bool)

(declare-fun res!984831 () Bool)

(assert (=> b!2303334 (=> (not res!984831) (not e!1476087))))

(assert (=> b!2303334 (= res!984831 (= (++!6709 (list!10801 (charsOf!2783 (_1!16163 (get!8264 lt!854243)))) (_2!16163 (get!8264 lt!854243))) input!1722))))

(declare-fun b!2303335 () Bool)

(declare-fun e!1476086 () Option!5391)

(declare-fun lt!854247 () Option!5391)

(declare-fun lt!854244 () Option!5391)

(assert (=> b!2303335 (= e!1476086 (ite (and ((_ is None!5390) lt!854247) ((_ is None!5390) lt!854244)) None!5390 (ite ((_ is None!5390) lt!854244) lt!854247 (ite ((_ is None!5390) lt!854247) lt!854244 (ite (>= (size!21624 (_1!16163 (v!30490 lt!854247))) (size!21624 (_1!16163 (v!30490 lt!854244)))) lt!854247 lt!854244)))))))

(declare-fun call!137086 () Option!5391)

(assert (=> b!2303335 (= lt!854247 call!137086)))

(assert (=> b!2303335 (= lt!854244 (maxPrefix!2248 thiss!16613 (t!205985 rules!1750) input!1722))))

(declare-fun d!681309 () Bool)

(declare-fun e!1476085 () Bool)

(assert (=> d!681309 e!1476085))

(declare-fun res!984829 () Bool)

(assert (=> d!681309 (=> res!984829 e!1476085)))

(declare-fun isEmpty!15666 (Option!5391) Bool)

(assert (=> d!681309 (= res!984829 (isEmpty!15666 lt!854243))))

(assert (=> d!681309 (= lt!854243 e!1476086)))

(declare-fun c!365149 () Bool)

(assert (=> d!681309 (= c!365149 (and ((_ is Cons!27417) rules!1750) ((_ is Nil!27417) (t!205985 rules!1750))))))

(declare-fun lt!854246 () Unit!40319)

(declare-fun lt!854245 () Unit!40319)

(assert (=> d!681309 (= lt!854246 lt!854245)))

(assert (=> d!681309 (isPrefix!2385 input!1722 input!1722)))

(declare-fun lemmaIsPrefixRefl!1515 (List!27510 List!27510) Unit!40319)

(assert (=> d!681309 (= lt!854245 (lemmaIsPrefixRefl!1515 input!1722 input!1722))))

(declare-fun rulesValidInductive!1557 (LexerInterface!3992 List!27511) Bool)

(assert (=> d!681309 (rulesValidInductive!1557 thiss!16613 rules!1750)))

(assert (=> d!681309 (= (maxPrefix!2248 thiss!16613 rules!1750 input!1722) lt!854243)))

(declare-fun b!2303336 () Bool)

(declare-fun res!984830 () Bool)

(assert (=> b!2303336 (=> (not res!984830) (not e!1476087))))

(assert (=> b!2303336 (= res!984830 (< (size!21626 (_2!16163 (get!8264 lt!854243))) (size!21626 input!1722)))))

(declare-fun b!2303337 () Bool)

(assert (=> b!2303337 (= e!1476087 (contains!4781 rules!1750 (rule!6741 (_1!16163 (get!8264 lt!854243)))))))

(declare-fun b!2303338 () Bool)

(declare-fun res!984832 () Bool)

(assert (=> b!2303338 (=> (not res!984832) (not e!1476087))))

(assert (=> b!2303338 (= res!984832 (= (list!10801 (charsOf!2783 (_1!16163 (get!8264 lt!854243)))) (originalCharacters!5165 (_1!16163 (get!8264 lt!854243)))))))

(declare-fun bm!137081 () Bool)

(declare-fun maxPrefixOneRule!1418 (LexerInterface!3992 Rule!8590 List!27510) Option!5391)

(assert (=> bm!137081 (= call!137086 (maxPrefixOneRule!1418 thiss!16613 (h!32818 rules!1750) input!1722))))

(declare-fun b!2303339 () Bool)

(assert (=> b!2303339 (= e!1476085 e!1476087)))

(declare-fun res!984833 () Bool)

(assert (=> b!2303339 (=> (not res!984833) (not e!1476087))))

(declare-fun isDefined!4248 (Option!5391) Bool)

(assert (=> b!2303339 (= res!984833 (isDefined!4248 lt!854243))))

(declare-fun b!2303340 () Bool)

(assert (=> b!2303340 (= e!1476086 call!137086)))

(assert (= (and d!681309 c!365149) b!2303340))

(assert (= (and d!681309 (not c!365149)) b!2303335))

(assert (= (or b!2303340 b!2303335) bm!137081))

(assert (= (and d!681309 (not res!984829)) b!2303339))

(assert (= (and b!2303339 res!984833) b!2303338))

(assert (= (and b!2303338 res!984832) b!2303336))

(assert (= (and b!2303336 res!984830) b!2303334))

(assert (= (and b!2303334 res!984831) b!2303332))

(assert (= (and b!2303332 res!984828) b!2303333))

(assert (= (and b!2303333 res!984834) b!2303337))

(declare-fun m!2730415 () Bool)

(assert (=> b!2303336 m!2730415))

(declare-fun m!2730417 () Bool)

(assert (=> b!2303336 m!2730417))

(declare-fun m!2730419 () Bool)

(assert (=> b!2303336 m!2730419))

(assert (=> b!2303332 m!2730415))

(declare-fun m!2730421 () Bool)

(assert (=> b!2303332 m!2730421))

(assert (=> b!2303332 m!2730421))

(declare-fun m!2730423 () Bool)

(assert (=> b!2303332 m!2730423))

(declare-fun m!2730425 () Bool)

(assert (=> d!681309 m!2730425))

(declare-fun m!2730427 () Bool)

(assert (=> d!681309 m!2730427))

(declare-fun m!2730429 () Bool)

(assert (=> d!681309 m!2730429))

(declare-fun m!2730431 () Bool)

(assert (=> d!681309 m!2730431))

(declare-fun m!2730433 () Bool)

(assert (=> b!2303339 m!2730433))

(assert (=> b!2303338 m!2730415))

(declare-fun m!2730435 () Bool)

(assert (=> b!2303338 m!2730435))

(assert (=> b!2303338 m!2730435))

(declare-fun m!2730437 () Bool)

(assert (=> b!2303338 m!2730437))

(assert (=> b!2303333 m!2730415))

(assert (=> b!2303333 m!2730435))

(assert (=> b!2303333 m!2730435))

(assert (=> b!2303333 m!2730437))

(assert (=> b!2303333 m!2730437))

(declare-fun m!2730439 () Bool)

(assert (=> b!2303333 m!2730439))

(assert (=> b!2303334 m!2730415))

(assert (=> b!2303334 m!2730435))

(assert (=> b!2303334 m!2730435))

(assert (=> b!2303334 m!2730437))

(assert (=> b!2303334 m!2730437))

(declare-fun m!2730441 () Bool)

(assert (=> b!2303334 m!2730441))

(declare-fun m!2730443 () Bool)

(assert (=> bm!137081 m!2730443))

(assert (=> b!2303337 m!2730415))

(declare-fun m!2730445 () Bool)

(assert (=> b!2303337 m!2730445))

(declare-fun m!2730447 () Bool)

(assert (=> b!2303335 m!2730447))

(assert (=> b!2302900 d!681309))

(declare-fun b!2303352 () Bool)

(declare-fun e!1476096 () Bool)

(assert (=> b!2303352 (= e!1476096 (>= (size!21626 lt!854127) (size!21626 lt!854122)))))

(declare-fun b!2303351 () Bool)

(declare-fun e!1476094 () Bool)

(assert (=> b!2303351 (= e!1476094 (isPrefix!2385 (tail!3329 lt!854122) (tail!3329 lt!854127)))))

(declare-fun b!2303350 () Bool)

(declare-fun res!984844 () Bool)

(assert (=> b!2303350 (=> (not res!984844) (not e!1476094))))

(assert (=> b!2303350 (= res!984844 (= (head!5044 lt!854122) (head!5044 lt!854127)))))

(declare-fun b!2303349 () Bool)

(declare-fun e!1476095 () Bool)

(assert (=> b!2303349 (= e!1476095 e!1476094)))

(declare-fun res!984845 () Bool)

(assert (=> b!2303349 (=> (not res!984845) (not e!1476094))))

(assert (=> b!2303349 (= res!984845 (not ((_ is Nil!27416) lt!854127)))))

(declare-fun d!681311 () Bool)

(assert (=> d!681311 e!1476096))

(declare-fun res!984843 () Bool)

(assert (=> d!681311 (=> res!984843 e!1476096)))

(declare-fun lt!854250 () Bool)

(assert (=> d!681311 (= res!984843 (not lt!854250))))

(assert (=> d!681311 (= lt!854250 e!1476095)))

(declare-fun res!984846 () Bool)

(assert (=> d!681311 (=> res!984846 e!1476095)))

(assert (=> d!681311 (= res!984846 ((_ is Nil!27416) lt!854122))))

(assert (=> d!681311 (= (isPrefix!2385 lt!854122 lt!854127) lt!854250)))

(assert (= (and d!681311 (not res!984846)) b!2303349))

(assert (= (and b!2303349 res!984845) b!2303350))

(assert (= (and b!2303350 res!984844) b!2303351))

(assert (= (and d!681311 (not res!984843)) b!2303352))

(declare-fun m!2730449 () Bool)

(assert (=> b!2303352 m!2730449))

(assert (=> b!2303352 m!2730015))

(declare-fun m!2730451 () Bool)

(assert (=> b!2303351 m!2730451))

(declare-fun m!2730453 () Bool)

(assert (=> b!2303351 m!2730453))

(assert (=> b!2303351 m!2730451))

(assert (=> b!2303351 m!2730453))

(declare-fun m!2730455 () Bool)

(assert (=> b!2303351 m!2730455))

(declare-fun m!2730457 () Bool)

(assert (=> b!2303350 m!2730457))

(declare-fun m!2730459 () Bool)

(assert (=> b!2303350 m!2730459))

(assert (=> b!2302900 d!681311))

(declare-fun d!681313 () Bool)

(declare-fun lt!854251 () BalanceConc!17604)

(assert (=> d!681313 (= (list!10801 lt!854251) (originalCharacters!5165 (h!32819 tokens!456)))))

(assert (=> d!681313 (= lt!854251 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (value!139077 (h!32819 tokens!456))))))

(assert (=> d!681313 (= (charsOf!2783 (h!32819 tokens!456)) lt!854251)))

(declare-fun b_lambda!73365 () Bool)

(assert (=> (not b_lambda!73365) (not d!681313)))

(assert (=> d!681313 t!206012))

(declare-fun b_and!183609 () Bool)

(assert (= b_and!183593 (and (=> t!206012 result!167900) b_and!183609)))

(assert (=> d!681313 t!206014))

(declare-fun b_and!183611 () Bool)

(assert (= b_and!183595 (and (=> t!206014 result!167902) b_and!183611)))

(assert (=> d!681313 t!206016))

(declare-fun b_and!183613 () Bool)

(assert (= b_and!183597 (and (=> t!206016 result!167904) b_and!183613)))

(assert (=> d!681313 t!206018))

(declare-fun b_and!183615 () Bool)

(assert (= b_and!183599 (and (=> t!206018 result!167906) b_and!183615)))

(declare-fun m!2730461 () Bool)

(assert (=> d!681313 m!2730461))

(assert (=> d!681313 m!2730231))

(assert (=> b!2302900 d!681313))

(declare-fun d!681315 () Bool)

(assert (=> d!681315 (isPrefix!2385 lt!854122 (++!6709 lt!854122 (_2!16163 lt!854124)))))

(declare-fun lt!854254 () Unit!40319)

(declare-fun choose!13454 (List!27510 List!27510) Unit!40319)

(assert (=> d!681315 (= lt!854254 (choose!13454 lt!854122 (_2!16163 lt!854124)))))

(assert (=> d!681315 (= (lemmaConcatTwoListThenFirstIsPrefix!1578 lt!854122 (_2!16163 lt!854124)) lt!854254)))

(declare-fun bs!457776 () Bool)

(assert (= bs!457776 d!681315))

(assert (=> bs!457776 m!2730007))

(assert (=> bs!457776 m!2730007))

(declare-fun m!2730463 () Bool)

(assert (=> bs!457776 m!2730463))

(declare-fun m!2730465 () Bool)

(assert (=> bs!457776 m!2730465))

(assert (=> b!2302900 d!681315))

(declare-fun d!681317 () Bool)

(assert (=> d!681317 (= (get!8264 lt!854119) (v!30490 lt!854119))))

(assert (=> b!2302900 d!681317))

(declare-fun d!681319 () Bool)

(assert (=> d!681319 (= (_2!16163 lt!854124) lt!854123)))

(declare-fun lt!854257 () Unit!40319)

(declare-fun choose!13455 (List!27510 List!27510 List!27510 List!27510 List!27510) Unit!40319)

(assert (=> d!681319 (= lt!854257 (choose!13455 lt!854122 (_2!16163 lt!854124) lt!854122 lt!854123 input!1722))))

(assert (=> d!681319 (isPrefix!2385 lt!854122 input!1722)))

(assert (=> d!681319 (= (lemmaSamePrefixThenSameSuffix!1066 lt!854122 (_2!16163 lt!854124) lt!854122 lt!854123 input!1722) lt!854257)))

(declare-fun bs!457777 () Bool)

(assert (= bs!457777 d!681319))

(declare-fun m!2730467 () Bool)

(assert (=> bs!457777 m!2730467))

(declare-fun m!2730469 () Bool)

(assert (=> bs!457777 m!2730469))

(assert (=> b!2302900 d!681319))

(declare-fun d!681321 () Bool)

(declare-fun lt!854260 () Int)

(assert (=> d!681321 (>= lt!854260 0)))

(declare-fun e!1476099 () Int)

(assert (=> d!681321 (= lt!854260 e!1476099)))

(declare-fun c!365152 () Bool)

(assert (=> d!681321 (= c!365152 ((_ is Nil!27416) lt!854122))))

(assert (=> d!681321 (= (size!21626 lt!854122) lt!854260)))

(declare-fun b!2303357 () Bool)

(assert (=> b!2303357 (= e!1476099 0)))

(declare-fun b!2303358 () Bool)

(assert (=> b!2303358 (= e!1476099 (+ 1 (size!21626 (t!205984 lt!854122))))))

(assert (= (and d!681321 c!365152) b!2303357))

(assert (= (and d!681321 (not c!365152)) b!2303358))

(declare-fun m!2730471 () Bool)

(assert (=> b!2303358 m!2730471))

(assert (=> b!2302900 d!681321))

(declare-fun d!681323 () Bool)

(declare-fun lt!854261 () Int)

(assert (=> d!681323 (>= lt!854261 0)))

(declare-fun e!1476100 () Int)

(assert (=> d!681323 (= lt!854261 e!1476100)))

(declare-fun c!365153 () Bool)

(assert (=> d!681323 (= c!365153 ((_ is Nil!27416) otherP!12))))

(assert (=> d!681323 (= (size!21626 otherP!12) lt!854261)))

(declare-fun b!2303359 () Bool)

(assert (=> b!2303359 (= e!1476100 0)))

(declare-fun b!2303360 () Bool)

(assert (=> b!2303360 (= e!1476100 (+ 1 (size!21626 (t!205984 otherP!12))))))

(assert (= (and d!681323 c!365153) b!2303359))

(assert (= (and d!681323 (not c!365153)) b!2303360))

(declare-fun m!2730473 () Bool)

(assert (=> b!2303360 m!2730473))

(assert (=> b!2302900 d!681323))

(declare-fun d!681325 () Bool)

(assert (=> d!681325 (= (list!10801 (charsOf!2783 (h!32819 tokens!456))) (list!10803 (c!365074 (charsOf!2783 (h!32819 tokens!456)))))))

(declare-fun bs!457778 () Bool)

(assert (= bs!457778 d!681325))

(declare-fun m!2730475 () Bool)

(assert (=> bs!457778 m!2730475))

(assert (=> b!2302900 d!681325))

(declare-fun d!681327 () Bool)

(declare-fun lt!854264 () List!27510)

(assert (=> d!681327 (= (++!6709 lt!854122 lt!854264) input!1722)))

(declare-fun e!1476103 () List!27510)

(assert (=> d!681327 (= lt!854264 e!1476103)))

(declare-fun c!365156 () Bool)

(assert (=> d!681327 (= c!365156 ((_ is Cons!27416) lt!854122))))

(assert (=> d!681327 (>= (size!21626 input!1722) (size!21626 lt!854122))))

(assert (=> d!681327 (= (getSuffix!1164 input!1722 lt!854122) lt!854264)))

(declare-fun b!2303365 () Bool)

(assert (=> b!2303365 (= e!1476103 (getSuffix!1164 (tail!3329 input!1722) (t!205984 lt!854122)))))

(declare-fun b!2303366 () Bool)

(assert (=> b!2303366 (= e!1476103 input!1722)))

(assert (= (and d!681327 c!365156) b!2303365))

(assert (= (and d!681327 (not c!365156)) b!2303366))

(declare-fun m!2730477 () Bool)

(assert (=> d!681327 m!2730477))

(assert (=> d!681327 m!2730419))

(assert (=> d!681327 m!2730015))

(declare-fun m!2730479 () Bool)

(assert (=> b!2303365 m!2730479))

(assert (=> b!2303365 m!2730479))

(declare-fun m!2730481 () Bool)

(assert (=> b!2303365 m!2730481))

(assert (=> b!2302900 d!681327))

(declare-fun d!681329 () Bool)

(assert (=> d!681329 (= (isEmpty!15661 lt!854122) ((_ is Nil!27416) lt!854122))))

(assert (=> b!2302901 d!681329))

(declare-fun d!681331 () Bool)

(declare-fun lt!854267 () Int)

(assert (=> d!681331 (= lt!854267 (size!21626 (list!10801 (charsOf!2783 (head!5042 tokens!456)))))))

(declare-fun size!21630 (Conc!8938) Int)

(assert (=> d!681331 (= lt!854267 (size!21630 (c!365074 (charsOf!2783 (head!5042 tokens!456)))))))

(assert (=> d!681331 (= (size!21625 (charsOf!2783 (head!5042 tokens!456))) lt!854267)))

(declare-fun bs!457779 () Bool)

(assert (= bs!457779 d!681331))

(assert (=> bs!457779 m!2729989))

(assert (=> bs!457779 m!2729991))

(assert (=> bs!457779 m!2729991))

(declare-fun m!2730483 () Bool)

(assert (=> bs!457779 m!2730483))

(declare-fun m!2730485 () Bool)

(assert (=> bs!457779 m!2730485))

(assert (=> b!2302880 d!681331))

(assert (=> b!2302880 d!681165))

(assert (=> b!2302880 d!681167))

(assert (=> b!2302880 d!681323))

(declare-fun b!2303370 () Bool)

(declare-fun e!1476106 () Bool)

(assert (=> b!2303370 (= e!1476106 (>= (size!21626 input!1722) (size!21626 otherP!12)))))

(declare-fun b!2303369 () Bool)

(declare-fun e!1476104 () Bool)

(assert (=> b!2303369 (= e!1476104 (isPrefix!2385 (tail!3329 otherP!12) (tail!3329 input!1722)))))

(declare-fun b!2303368 () Bool)

(declare-fun res!984848 () Bool)

(assert (=> b!2303368 (=> (not res!984848) (not e!1476104))))

(assert (=> b!2303368 (= res!984848 (= (head!5044 otherP!12) (head!5044 input!1722)))))

(declare-fun b!2303367 () Bool)

(declare-fun e!1476105 () Bool)

(assert (=> b!2303367 (= e!1476105 e!1476104)))

(declare-fun res!984849 () Bool)

(assert (=> b!2303367 (=> (not res!984849) (not e!1476104))))

(assert (=> b!2303367 (= res!984849 (not ((_ is Nil!27416) input!1722)))))

(declare-fun d!681333 () Bool)

(assert (=> d!681333 e!1476106))

(declare-fun res!984847 () Bool)

(assert (=> d!681333 (=> res!984847 e!1476106)))

(declare-fun lt!854268 () Bool)

(assert (=> d!681333 (= res!984847 (not lt!854268))))

(assert (=> d!681333 (= lt!854268 e!1476105)))

(declare-fun res!984850 () Bool)

(assert (=> d!681333 (=> res!984850 e!1476105)))

(assert (=> d!681333 (= res!984850 ((_ is Nil!27416) otherP!12))))

(assert (=> d!681333 (= (isPrefix!2385 otherP!12 input!1722) lt!854268)))

(assert (= (and d!681333 (not res!984850)) b!2303367))

(assert (= (and b!2303367 res!984849) b!2303368))

(assert (= (and b!2303368 res!984848) b!2303369))

(assert (= (and d!681333 (not res!984847)) b!2303370))

(assert (=> b!2303370 m!2730419))

(assert (=> b!2303370 m!2729999))

(declare-fun m!2730487 () Bool)

(assert (=> b!2303369 m!2730487))

(assert (=> b!2303369 m!2730479))

(assert (=> b!2303369 m!2730487))

(assert (=> b!2303369 m!2730479))

(declare-fun m!2730489 () Bool)

(assert (=> b!2303369 m!2730489))

(declare-fun m!2730491 () Bool)

(assert (=> b!2303368 m!2730491))

(declare-fun m!2730493 () Bool)

(assert (=> b!2303368 m!2730493))

(assert (=> b!2302879 d!681333))

(declare-fun d!681335 () Bool)

(assert (=> d!681335 (= (inv!37046 (tag!4885 otherR!12)) (= (mod (str.len (value!139076 (tag!4885 otherR!12))) 2) 0))))

(assert (=> b!2302890 d!681335))

(declare-fun d!681337 () Bool)

(declare-fun res!984851 () Bool)

(declare-fun e!1476107 () Bool)

(assert (=> d!681337 (=> (not res!984851) (not e!1476107))))

(assert (=> d!681337 (= res!984851 (semiInverseModEq!1788 (toChars!6064 (transformation!4395 otherR!12)) (toValue!6205 (transformation!4395 otherR!12))))))

(assert (=> d!681337 (= (inv!37049 (transformation!4395 otherR!12)) e!1476107)))

(declare-fun b!2303371 () Bool)

(assert (=> b!2303371 (= e!1476107 (equivClasses!1707 (toChars!6064 (transformation!4395 otherR!12)) (toValue!6205 (transformation!4395 otherR!12))))))

(assert (= (and d!681337 res!984851) b!2303371))

(declare-fun m!2730495 () Bool)

(assert (=> d!681337 m!2730495))

(declare-fun m!2730497 () Bool)

(assert (=> b!2303371 m!2730497))

(assert (=> b!2302890 d!681337))

(declare-fun b!2303382 () Bool)

(declare-fun b_free!69573 () Bool)

(declare-fun b_next!70277 () Bool)

(assert (=> b!2303382 (= b_free!69573 (not b_next!70277))))

(declare-fun t!206068 () Bool)

(declare-fun tb!137775 () Bool)

(assert (=> (and b!2303382 (= (toValue!6205 (transformation!4395 (h!32818 (t!205985 rules!1750)))) (toValue!6205 (transformation!4395 r!2363))) t!206068) tb!137775))

(declare-fun result!167968 () Bool)

(assert (= result!167968 result!167908))

(assert (=> d!681231 t!206068))

(assert (=> d!681233 t!206068))

(declare-fun tp!730693 () Bool)

(declare-fun b_and!183617 () Bool)

(assert (=> b!2303382 (= tp!730693 (and (=> t!206068 result!167968) b_and!183617))))

(declare-fun b_free!69575 () Bool)

(declare-fun b_next!70279 () Bool)

(assert (=> b!2303382 (= b_free!69575 (not b_next!70279))))

(declare-fun t!206070 () Bool)

(declare-fun tb!137777 () Bool)

(assert (=> (and b!2303382 (= (toChars!6064 (transformation!4395 (h!32818 (t!205985 rules!1750)))) (toChars!6064 (transformation!4395 (rule!6741 (head!5042 tokens!456))))) t!206070) tb!137777))

(declare-fun result!167970 () Bool)

(assert (= result!167970 result!167870))

(assert (=> d!681165 t!206070))

(declare-fun tb!137779 () Bool)

(declare-fun t!206072 () Bool)

(assert (=> (and b!2303382 (= (toChars!6064 (transformation!4395 (h!32818 (t!205985 rules!1750)))) (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456))))) t!206072) tb!137779))

(declare-fun result!167972 () Bool)

(assert (= result!167972 result!167900))

(assert (=> b!2303102 t!206072))

(declare-fun tb!137781 () Bool)

(declare-fun t!206074 () Bool)

(assert (=> (and b!2303382 (= (toChars!6064 (transformation!4395 (h!32818 (t!205985 rules!1750)))) (toChars!6064 (transformation!4395 r!2363))) t!206074) tb!137781))

(declare-fun result!167974 () Bool)

(assert (= result!167974 result!167952))

(assert (=> d!681233 t!206074))

(assert (=> d!681313 t!206072))

(declare-fun b_and!183619 () Bool)

(declare-fun tp!730691 () Bool)

(assert (=> b!2303382 (= tp!730691 (and (=> t!206070 result!167970) (=> t!206072 result!167972) (=> t!206074 result!167974) b_and!183619))))

(declare-fun e!1476119 () Bool)

(assert (=> b!2303382 (= e!1476119 (and tp!730693 tp!730691))))

(declare-fun tp!730694 () Bool)

(declare-fun b!2303381 () Bool)

(declare-fun e!1476116 () Bool)

(assert (=> b!2303381 (= e!1476116 (and tp!730694 (inv!37046 (tag!4885 (h!32818 (t!205985 rules!1750)))) (inv!37049 (transformation!4395 (h!32818 (t!205985 rules!1750)))) e!1476119))))

(declare-fun b!2303380 () Bool)

(declare-fun e!1476117 () Bool)

(declare-fun tp!730692 () Bool)

(assert (=> b!2303380 (= e!1476117 (and e!1476116 tp!730692))))

(assert (=> b!2302876 (= tp!730608 e!1476117)))

(assert (= b!2303381 b!2303382))

(assert (= b!2303380 b!2303381))

(assert (= (and b!2302876 ((_ is Cons!27417) (t!205985 rules!1750))) b!2303380))

(declare-fun m!2730499 () Bool)

(assert (=> b!2303381 m!2730499))

(declare-fun m!2730501 () Bool)

(assert (=> b!2303381 m!2730501))

(declare-fun b!2303394 () Bool)

(declare-fun e!1476122 () Bool)

(declare-fun tp!730706 () Bool)

(declare-fun tp!730707 () Bool)

(assert (=> b!2303394 (= e!1476122 (and tp!730706 tp!730707))))

(declare-fun b!2303393 () Bool)

(assert (=> b!2303393 (= e!1476122 tp_is_empty!10707)))

(declare-fun b!2303395 () Bool)

(declare-fun tp!730708 () Bool)

(assert (=> b!2303395 (= e!1476122 tp!730708)))

(declare-fun b!2303396 () Bool)

(declare-fun tp!730709 () Bool)

(declare-fun tp!730705 () Bool)

(assert (=> b!2303396 (= e!1476122 (and tp!730709 tp!730705))))

(assert (=> b!2302877 (= tp!730597 e!1476122)))

(assert (= (and b!2302877 ((_ is ElementMatch!6743) (regex!4395 (h!32818 rules!1750)))) b!2303393))

(assert (= (and b!2302877 ((_ is Concat!11301) (regex!4395 (h!32818 rules!1750)))) b!2303394))

(assert (= (and b!2302877 ((_ is Star!6743) (regex!4395 (h!32818 rules!1750)))) b!2303395))

(assert (= (and b!2302877 ((_ is Union!6743) (regex!4395 (h!32818 rules!1750)))) b!2303396))

(declare-fun b!2303401 () Bool)

(declare-fun e!1476125 () Bool)

(declare-fun tp!730712 () Bool)

(assert (=> b!2303401 (= e!1476125 (and tp_is_empty!10707 tp!730712))))

(assert (=> b!2302887 (= tp!730603 e!1476125)))

(assert (= (and b!2302887 ((_ is Cons!27416) (originalCharacters!5165 (h!32819 tokens!456)))) b!2303401))

(declare-fun b!2303402 () Bool)

(declare-fun e!1476126 () Bool)

(declare-fun tp!730713 () Bool)

(assert (=> b!2303402 (= e!1476126 (and tp_is_empty!10707 tp!730713))))

(assert (=> b!2302905 (= tp!730602 e!1476126)))

(assert (= (and b!2302905 ((_ is Cons!27416) (t!205984 otherP!12))) b!2303402))

(declare-fun b!2303403 () Bool)

(declare-fun e!1476127 () Bool)

(declare-fun tp!730714 () Bool)

(assert (=> b!2303403 (= e!1476127 (and tp_is_empty!10707 tp!730714))))

(assert (=> b!2302895 (= tp!730596 e!1476127)))

(assert (= (and b!2302895 ((_ is Cons!27416) (t!205984 suffix!886))) b!2303403))

(declare-fun b!2303405 () Bool)

(declare-fun e!1476128 () Bool)

(declare-fun tp!730716 () Bool)

(declare-fun tp!730717 () Bool)

(assert (=> b!2303405 (= e!1476128 (and tp!730716 tp!730717))))

(declare-fun b!2303404 () Bool)

(assert (=> b!2303404 (= e!1476128 tp_is_empty!10707)))

(declare-fun b!2303406 () Bool)

(declare-fun tp!730718 () Bool)

(assert (=> b!2303406 (= e!1476128 tp!730718)))

(declare-fun b!2303407 () Bool)

(declare-fun tp!730719 () Bool)

(declare-fun tp!730715 () Bool)

(assert (=> b!2303407 (= e!1476128 (and tp!730719 tp!730715))))

(assert (=> b!2302906 (= tp!730600 e!1476128)))

(assert (= (and b!2302906 ((_ is ElementMatch!6743) (regex!4395 (rule!6741 (h!32819 tokens!456))))) b!2303404))

(assert (= (and b!2302906 ((_ is Concat!11301) (regex!4395 (rule!6741 (h!32819 tokens!456))))) b!2303405))

(assert (= (and b!2302906 ((_ is Star!6743) (regex!4395 (rule!6741 (h!32819 tokens!456))))) b!2303406))

(assert (= (and b!2302906 ((_ is Union!6743) (regex!4395 (rule!6741 (h!32819 tokens!456))))) b!2303407))

(declare-fun b!2303421 () Bool)

(declare-fun b_free!69577 () Bool)

(declare-fun b_next!70281 () Bool)

(assert (=> b!2303421 (= b_free!69577 (not b_next!70281))))

(declare-fun tb!137783 () Bool)

(declare-fun t!206076 () Bool)

(assert (=> (and b!2303421 (= (toValue!6205 (transformation!4395 (rule!6741 (h!32819 (t!205986 tokens!456))))) (toValue!6205 (transformation!4395 r!2363))) t!206076) tb!137783))

(declare-fun result!167982 () Bool)

(assert (= result!167982 result!167908))

(assert (=> d!681231 t!206076))

(assert (=> d!681233 t!206076))

(declare-fun b_and!183621 () Bool)

(declare-fun tp!730732 () Bool)

(assert (=> b!2303421 (= tp!730732 (and (=> t!206076 result!167982) b_and!183621))))

(declare-fun b_free!69579 () Bool)

(declare-fun b_next!70283 () Bool)

(assert (=> b!2303421 (= b_free!69579 (not b_next!70283))))

(declare-fun t!206078 () Bool)

(declare-fun tb!137785 () Bool)

(assert (=> (and b!2303421 (= (toChars!6064 (transformation!4395 (rule!6741 (h!32819 (t!205986 tokens!456))))) (toChars!6064 (transformation!4395 (rule!6741 (head!5042 tokens!456))))) t!206078) tb!137785))

(declare-fun result!167984 () Bool)

(assert (= result!167984 result!167870))

(assert (=> d!681165 t!206078))

(declare-fun t!206080 () Bool)

(declare-fun tb!137787 () Bool)

(assert (=> (and b!2303421 (= (toChars!6064 (transformation!4395 (rule!6741 (h!32819 (t!205986 tokens!456))))) (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456))))) t!206080) tb!137787))

(declare-fun result!167986 () Bool)

(assert (= result!167986 result!167900))

(assert (=> b!2303102 t!206080))

(declare-fun t!206082 () Bool)

(declare-fun tb!137789 () Bool)

(assert (=> (and b!2303421 (= (toChars!6064 (transformation!4395 (rule!6741 (h!32819 (t!205986 tokens!456))))) (toChars!6064 (transformation!4395 r!2363))) t!206082) tb!137789))

(declare-fun result!167988 () Bool)

(assert (= result!167988 result!167952))

(assert (=> d!681233 t!206082))

(assert (=> d!681313 t!206080))

(declare-fun tp!730733 () Bool)

(declare-fun b_and!183623 () Bool)

(assert (=> b!2303421 (= tp!730733 (and (=> t!206078 result!167984) (=> t!206080 result!167986) (=> t!206082 result!167988) b_and!183623))))

(declare-fun e!1476141 () Bool)

(assert (=> b!2302881 (= tp!730592 e!1476141)))

(declare-fun b!2303419 () Bool)

(declare-fun tp!730731 () Bool)

(declare-fun e!1476145 () Bool)

(declare-fun e!1476143 () Bool)

(assert (=> b!2303419 (= e!1476145 (and (inv!21 (value!139077 (h!32819 (t!205986 tokens!456)))) e!1476143 tp!730731))))

(declare-fun e!1476146 () Bool)

(assert (=> b!2303421 (= e!1476146 (and tp!730732 tp!730733))))

(declare-fun tp!730734 () Bool)

(declare-fun b!2303418 () Bool)

(assert (=> b!2303418 (= e!1476141 (and (inv!37050 (h!32819 (t!205986 tokens!456))) e!1476145 tp!730734))))

(declare-fun tp!730730 () Bool)

(declare-fun b!2303420 () Bool)

(assert (=> b!2303420 (= e!1476143 (and tp!730730 (inv!37046 (tag!4885 (rule!6741 (h!32819 (t!205986 tokens!456))))) (inv!37049 (transformation!4395 (rule!6741 (h!32819 (t!205986 tokens!456))))) e!1476146))))

(assert (= b!2303420 b!2303421))

(assert (= b!2303419 b!2303420))

(assert (= b!2303418 b!2303419))

(assert (= (and b!2302881 ((_ is Cons!27418) (t!205986 tokens!456))) b!2303418))

(declare-fun m!2730503 () Bool)

(assert (=> b!2303419 m!2730503))

(declare-fun m!2730505 () Bool)

(assert (=> b!2303418 m!2730505))

(declare-fun m!2730507 () Bool)

(assert (=> b!2303420 m!2730507))

(declare-fun m!2730509 () Bool)

(assert (=> b!2303420 m!2730509))

(declare-fun b!2303423 () Bool)

(declare-fun e!1476147 () Bool)

(declare-fun tp!730736 () Bool)

(declare-fun tp!730737 () Bool)

(assert (=> b!2303423 (= e!1476147 (and tp!730736 tp!730737))))

(declare-fun b!2303422 () Bool)

(assert (=> b!2303422 (= e!1476147 tp_is_empty!10707)))

(declare-fun b!2303424 () Bool)

(declare-fun tp!730738 () Bool)

(assert (=> b!2303424 (= e!1476147 tp!730738)))

(declare-fun b!2303425 () Bool)

(declare-fun tp!730739 () Bool)

(declare-fun tp!730735 () Bool)

(assert (=> b!2303425 (= e!1476147 (and tp!730739 tp!730735))))

(assert (=> b!2302893 (= tp!730598 e!1476147)))

(assert (= (and b!2302893 ((_ is ElementMatch!6743) (regex!4395 r!2363))) b!2303422))

(assert (= (and b!2302893 ((_ is Concat!11301) (regex!4395 r!2363))) b!2303423))

(assert (= (and b!2302893 ((_ is Star!6743) (regex!4395 r!2363))) b!2303424))

(assert (= (and b!2302893 ((_ is Union!6743) (regex!4395 r!2363))) b!2303425))

(declare-fun b!2303426 () Bool)

(declare-fun e!1476148 () Bool)

(declare-fun tp!730740 () Bool)

(assert (=> b!2303426 (= e!1476148 (and tp_is_empty!10707 tp!730740))))

(assert (=> b!2302878 (= tp!730595 e!1476148)))

(assert (= (and b!2302878 ((_ is Cons!27416) (t!205984 input!1722))) b!2303426))

(declare-fun b!2303428 () Bool)

(declare-fun e!1476149 () Bool)

(declare-fun tp!730742 () Bool)

(declare-fun tp!730743 () Bool)

(assert (=> b!2303428 (= e!1476149 (and tp!730742 tp!730743))))

(declare-fun b!2303427 () Bool)

(assert (=> b!2303427 (= e!1476149 tp_is_empty!10707)))

(declare-fun b!2303429 () Bool)

(declare-fun tp!730744 () Bool)

(assert (=> b!2303429 (= e!1476149 tp!730744)))

(declare-fun b!2303430 () Bool)

(declare-fun tp!730745 () Bool)

(declare-fun tp!730741 () Bool)

(assert (=> b!2303430 (= e!1476149 (and tp!730745 tp!730741))))

(assert (=> b!2302890 (= tp!730606 e!1476149)))

(assert (= (and b!2302890 ((_ is ElementMatch!6743) (regex!4395 otherR!12))) b!2303427))

(assert (= (and b!2302890 ((_ is Concat!11301) (regex!4395 otherR!12))) b!2303428))

(assert (= (and b!2302890 ((_ is Star!6743) (regex!4395 otherR!12))) b!2303429))

(assert (= (and b!2302890 ((_ is Union!6743) (regex!4395 otherR!12))) b!2303430))

(declare-fun b_lambda!73367 () Bool)

(assert (= b_lambda!73339 (or (and b!2302904 b_free!69555 (= (toChars!6064 (transformation!4395 (h!32818 rules!1750))) (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))))) (and b!2302882 b_free!69563 (= (toChars!6064 (transformation!4395 r!2363)) (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))))) (and b!2303382 b_free!69575 (= (toChars!6064 (transformation!4395 (h!32818 (t!205985 rules!1750)))) (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))))) (and b!2302889 b_free!69559 (= (toChars!6064 (transformation!4395 otherR!12)) (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))))) (and b!2302896 b_free!69551) (and b!2303421 b_free!69579 (= (toChars!6064 (transformation!4395 (rule!6741 (h!32819 (t!205986 tokens!456))))) (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))))) b_lambda!73367)))

(declare-fun b_lambda!73369 () Bool)

(assert (= b_lambda!73365 (or (and b!2302904 b_free!69555 (= (toChars!6064 (transformation!4395 (h!32818 rules!1750))) (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))))) (and b!2302882 b_free!69563 (= (toChars!6064 (transformation!4395 r!2363)) (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))))) (and b!2303382 b_free!69575 (= (toChars!6064 (transformation!4395 (h!32818 (t!205985 rules!1750)))) (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))))) (and b!2302889 b_free!69559 (= (toChars!6064 (transformation!4395 otherR!12)) (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))))) (and b!2302896 b_free!69551) (and b!2303421 b_free!69579 (= (toChars!6064 (transformation!4395 (rule!6741 (h!32819 (t!205986 tokens!456))))) (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))))) b_lambda!73369)))

(declare-fun b_lambda!73371 () Bool)

(assert (= b_lambda!73353 (or (and b!2302882 b_free!69561) (and b!2302896 b_free!69549 (= (toValue!6205 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (toValue!6205 (transformation!4395 r!2363)))) (and b!2302889 b_free!69557 (= (toValue!6205 (transformation!4395 otherR!12)) (toValue!6205 (transformation!4395 r!2363)))) (and b!2302904 b_free!69553 (= (toValue!6205 (transformation!4395 (h!32818 rules!1750))) (toValue!6205 (transformation!4395 r!2363)))) (and b!2303382 b_free!69573 (= (toValue!6205 (transformation!4395 (h!32818 (t!205985 rules!1750)))) (toValue!6205 (transformation!4395 r!2363)))) (and b!2303421 b_free!69577 (= (toValue!6205 (transformation!4395 (rule!6741 (h!32819 (t!205986 tokens!456))))) (toValue!6205 (transformation!4395 r!2363)))) b_lambda!73371)))

(declare-fun b_lambda!73373 () Bool)

(assert (= b_lambda!73351 (or (and b!2302882 b_free!69563) (and b!2303382 b_free!69575 (= (toChars!6064 (transformation!4395 (h!32818 (t!205985 rules!1750)))) (toChars!6064 (transformation!4395 r!2363)))) (and b!2302904 b_free!69555 (= (toChars!6064 (transformation!4395 (h!32818 rules!1750))) (toChars!6064 (transformation!4395 r!2363)))) (and b!2303421 b_free!69579 (= (toChars!6064 (transformation!4395 (rule!6741 (h!32819 (t!205986 tokens!456))))) (toChars!6064 (transformation!4395 r!2363)))) (and b!2302889 b_free!69559 (= (toChars!6064 (transformation!4395 otherR!12)) (toChars!6064 (transformation!4395 r!2363)))) (and b!2302896 b_free!69551 (= (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (toChars!6064 (transformation!4395 r!2363)))) b_lambda!73373)))

(declare-fun b_lambda!73375 () Bool)

(assert (= b_lambda!73341 (or (and b!2302882 b_free!69561) (and b!2302896 b_free!69549 (= (toValue!6205 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (toValue!6205 (transformation!4395 r!2363)))) (and b!2302889 b_free!69557 (= (toValue!6205 (transformation!4395 otherR!12)) (toValue!6205 (transformation!4395 r!2363)))) (and b!2302904 b_free!69553 (= (toValue!6205 (transformation!4395 (h!32818 rules!1750))) (toValue!6205 (transformation!4395 r!2363)))) (and b!2303382 b_free!69573 (= (toValue!6205 (transformation!4395 (h!32818 (t!205985 rules!1750)))) (toValue!6205 (transformation!4395 r!2363)))) (and b!2303421 b_free!69577 (= (toValue!6205 (transformation!4395 (rule!6741 (h!32819 (t!205986 tokens!456))))) (toValue!6205 (transformation!4395 r!2363)))) b_lambda!73375)))

(check-sat (not b!2303042) (not d!681209) (not tb!137727) (not b!2303381) (not d!681165) (not b!2303339) (not d!681213) (not d!681223) (not b!2303406) (not b!2303045) (not b!2303063) b_and!183615 tp_is_empty!10707 (not bm!137072) b_and!183609 (not b!2303074) (not b!2303335) (not d!681177) (not b!2303394) b_and!183619 (not d!681307) (not tb!137719) (not b!2303395) (not tb!137761) (not b!2303299) (not d!681299) (not d!681221) (not b!2303336) (not d!681331) (not b!2303086) (not b_next!70267) b_and!183621 (not d!681227) (not d!681203) (not b_next!70265) (not b!2303368) (not d!681173) (not b!2303396) (not d!681313) (not d!681199) (not d!681319) b_and!183617 (not d!681217) (not b!2303096) (not b!2302963) (not b!2303402) (not b!2303371) (not b!2303043) (not b!2303405) (not bm!137081) b_and!183613 (not b!2303311) (not d!681175) (not d!681325) (not d!681163) (not b_lambda!73373) (not b!2302959) (not b_next!70263) (not d!681309) (not b!2303334) (not b!2303084) b_and!183601 (not b_next!70279) (not b!2303401) (not b!2302966) (not b!2303312) (not b!2303358) (not d!681315) (not b_next!70253) (not b!2303059) (not d!681305) (not b!2302969) (not d!681215) (not tb!137695) (not b!2303425) (not d!681151) (not b!2303104) (not b!2303360) (not b_next!70257) (not b!2303418) (not d!681233) (not b!2303351) (not b_lambda!73369) (not b!2303407) (not d!681171) (not b!2303090) (not b!2303369) b_and!183611 (not b!2303419) (not b!2302962) (not d!681219) (not b!2303078) (not b!2303048) (not d!681211) (not b!2302960) (not b!2303062) (not b!2303337) (not b!2303365) (not d!681327) (not b_next!70261) (not b!2303430) (not b!2303420) (not d!681229) (not b!2303287) (not d!681337) (not b!2303370) b_and!183605 (not b!2303423) (not b_next!70283) (not b_next!70277) (not b!2303380) (not b!2302979) (not b_lambda!73375) (not b_lambda!73333) (not b!2303424) (not b_next!70259) (not b!2303403) (not b!2303429) (not b!2303044) (not b!2303333) (not b!2303301) (not b!2303426) (not b!2303338) (not b_lambda!73371) (not d!681303) (not b!2303352) (not b!2303102) b_and!183603 (not b!2303350) (not b_next!70281) b_and!183607 (not b_lambda!73367) (not b!2303097) (not b!2303428) (not b_next!70255) (not b!2303332) (not b!2303103) b_and!183623)
(check-sat b_and!183615 b_and!183609 b_and!183619 (not b_next!70265) b_and!183617 b_and!183613 (not b_next!70263) (not b_next!70253) (not b_next!70257) b_and!183611 (not b_next!70261) (not b_next!70259) b_and!183603 b_and!183621 (not b_next!70267) b_and!183601 (not b_next!70279) b_and!183605 (not b_next!70283) (not b_next!70277) (not b_next!70281) b_and!183607 b_and!183623 (not b_next!70255))
(get-model)

(declare-fun d!681371 () Bool)

(declare-fun c!365172 () Bool)

(assert (=> d!681371 (= c!365172 ((_ is Nil!27417) rules!1750))))

(declare-fun e!1476177 () (InoxSet Rule!8590))

(assert (=> d!681371 (= (content!3697 rules!1750) e!1476177)))

(declare-fun b!2303479 () Bool)

(assert (=> b!2303479 (= e!1476177 ((as const (Array Rule!8590 Bool)) false))))

(declare-fun b!2303480 () Bool)

(assert (=> b!2303480 (= e!1476177 ((_ map or) (store ((as const (Array Rule!8590 Bool)) false) (h!32818 rules!1750) true) (content!3697 (t!205985 rules!1750))))))

(assert (= (and d!681371 c!365172) b!2303479))

(assert (= (and d!681371 (not c!365172)) b!2303480))

(declare-fun m!2730559 () Bool)

(assert (=> b!2303480 m!2730559))

(declare-fun m!2730561 () Bool)

(assert (=> b!2303480 m!2730561))

(assert (=> d!681223 d!681371))

(declare-fun d!681373 () Bool)

(declare-fun lt!854280 () Int)

(assert (=> d!681373 (>= lt!854280 0)))

(declare-fun e!1476178 () Int)

(assert (=> d!681373 (= lt!854280 e!1476178)))

(declare-fun c!365173 () Bool)

(assert (=> d!681373 (= c!365173 ((_ is Nil!27416) (_2!16163 (get!8264 lt!854243))))))

(assert (=> d!681373 (= (size!21626 (_2!16163 (get!8264 lt!854243))) lt!854280)))

(declare-fun b!2303481 () Bool)

(assert (=> b!2303481 (= e!1476178 0)))

(declare-fun b!2303482 () Bool)

(assert (=> b!2303482 (= e!1476178 (+ 1 (size!21626 (t!205984 (_2!16163 (get!8264 lt!854243))))))))

(assert (= (and d!681373 c!365173) b!2303481))

(assert (= (and d!681373 (not c!365173)) b!2303482))

(declare-fun m!2730563 () Bool)

(assert (=> b!2303482 m!2730563))

(assert (=> b!2303336 d!681373))

(declare-fun d!681375 () Bool)

(assert (=> d!681375 (= (get!8264 lt!854243) (v!30490 lt!854243))))

(assert (=> b!2303336 d!681375))

(declare-fun d!681377 () Bool)

(declare-fun lt!854281 () Int)

(assert (=> d!681377 (>= lt!854281 0)))

(declare-fun e!1476179 () Int)

(assert (=> d!681377 (= lt!854281 e!1476179)))

(declare-fun c!365174 () Bool)

(assert (=> d!681377 (= c!365174 ((_ is Nil!27416) input!1722))))

(assert (=> d!681377 (= (size!21626 input!1722) lt!854281)))

(declare-fun b!2303483 () Bool)

(assert (=> b!2303483 (= e!1476179 0)))

(declare-fun b!2303484 () Bool)

(assert (=> b!2303484 (= e!1476179 (+ 1 (size!21626 (t!205984 input!1722))))))

(assert (= (and d!681377 c!365174) b!2303483))

(assert (= (and d!681377 (not c!365174)) b!2303484))

(declare-fun m!2730565 () Bool)

(assert (=> b!2303484 m!2730565))

(assert (=> b!2303336 d!681377))

(declare-fun d!681379 () Bool)

(assert (=> d!681379 (= (head!5044 (list!10801 (charsOf!2783 (head!5042 tokens!456)))) (h!32817 (list!10801 (charsOf!2783 (head!5042 tokens!456)))))))

(assert (=> b!2302963 d!681379))

(declare-fun d!681381 () Bool)

(assert (=> d!681381 (= (isEmpty!15661 (originalCharacters!5165 (h!32819 tokens!456))) ((_ is Nil!27416) (originalCharacters!5165 (h!32819 tokens!456))))))

(assert (=> d!681229 d!681381))

(declare-fun d!681383 () Bool)

(declare-fun charsToInt!0 (List!27509) (_ BitVec 32))

(assert (=> d!681383 (= (inv!16 (value!139077 (h!32819 tokens!456))) (= (charsToInt!0 (text!32346 (value!139077 (h!32819 tokens!456)))) (value!139068 (value!139077 (h!32819 tokens!456)))))))

(declare-fun bs!457786 () Bool)

(assert (= bs!457786 d!681383))

(declare-fun m!2730569 () Bool)

(assert (=> bs!457786 m!2730569))

(assert (=> b!2303063 d!681383))

(declare-fun d!681389 () Bool)

(assert (=> d!681389 (= (list!10801 (charsOf!2783 (_1!16163 (get!8264 lt!854243)))) (list!10803 (c!365074 (charsOf!2783 (_1!16163 (get!8264 lt!854243))))))))

(declare-fun bs!457787 () Bool)

(assert (= bs!457787 d!681389))

(declare-fun m!2730571 () Bool)

(assert (=> bs!457787 m!2730571))

(assert (=> b!2303338 d!681389))

(declare-fun d!681391 () Bool)

(declare-fun lt!854283 () BalanceConc!17604)

(assert (=> d!681391 (= (list!10801 lt!854283) (originalCharacters!5165 (_1!16163 (get!8264 lt!854243))))))

(assert (=> d!681391 (= lt!854283 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (_1!16163 (get!8264 lt!854243))))) (value!139077 (_1!16163 (get!8264 lt!854243)))))))

(assert (=> d!681391 (= (charsOf!2783 (_1!16163 (get!8264 lt!854243))) lt!854283)))

(declare-fun b_lambda!73379 () Bool)

(assert (=> (not b_lambda!73379) (not d!681391)))

(declare-fun tb!137793 () Bool)

(declare-fun t!206089 () Bool)

(assert (=> (and b!2302882 (= (toChars!6064 (transformation!4395 r!2363)) (toChars!6064 (transformation!4395 (rule!6741 (_1!16163 (get!8264 lt!854243)))))) t!206089) tb!137793))

(declare-fun b!2303485 () Bool)

(declare-fun e!1476180 () Bool)

(declare-fun tp!730746 () Bool)

(assert (=> b!2303485 (= e!1476180 (and (inv!37053 (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (_1!16163 (get!8264 lt!854243))))) (value!139077 (_1!16163 (get!8264 lt!854243)))))) tp!730746))))

(declare-fun result!167992 () Bool)

(assert (=> tb!137793 (= result!167992 (and (inv!37054 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (_1!16163 (get!8264 lt!854243))))) (value!139077 (_1!16163 (get!8264 lt!854243))))) e!1476180))))

(assert (= tb!137793 b!2303485))

(declare-fun m!2730575 () Bool)

(assert (=> b!2303485 m!2730575))

(declare-fun m!2730577 () Bool)

(assert (=> tb!137793 m!2730577))

(assert (=> d!681391 t!206089))

(declare-fun b_and!183627 () Bool)

(assert (= b_and!183615 (and (=> t!206089 result!167992) b_and!183627)))

(declare-fun tb!137797 () Bool)

(declare-fun t!206093 () Bool)

(assert (=> (and b!2302904 (= (toChars!6064 (transformation!4395 (h!32818 rules!1750))) (toChars!6064 (transformation!4395 (rule!6741 (_1!16163 (get!8264 lt!854243)))))) t!206093) tb!137797))

(declare-fun result!167996 () Bool)

(assert (= result!167996 result!167992))

(assert (=> d!681391 t!206093))

(declare-fun b_and!183629 () Bool)

(assert (= b_and!183611 (and (=> t!206093 result!167996) b_and!183629)))

(declare-fun t!206095 () Bool)

(declare-fun tb!137799 () Bool)

(assert (=> (and b!2303421 (= (toChars!6064 (transformation!4395 (rule!6741 (h!32819 (t!205986 tokens!456))))) (toChars!6064 (transformation!4395 (rule!6741 (_1!16163 (get!8264 lt!854243)))))) t!206095) tb!137799))

(declare-fun result!167998 () Bool)

(assert (= result!167998 result!167992))

(assert (=> d!681391 t!206095))

(declare-fun b_and!183631 () Bool)

(assert (= b_and!183623 (and (=> t!206095 result!167998) b_and!183631)))

(declare-fun t!206097 () Bool)

(declare-fun tb!137801 () Bool)

(assert (=> (and b!2302889 (= (toChars!6064 (transformation!4395 otherR!12)) (toChars!6064 (transformation!4395 (rule!6741 (_1!16163 (get!8264 lt!854243)))))) t!206097) tb!137801))

(declare-fun result!168000 () Bool)

(assert (= result!168000 result!167992))

(assert (=> d!681391 t!206097))

(declare-fun b_and!183635 () Bool)

(assert (= b_and!183613 (and (=> t!206097 result!168000) b_and!183635)))

(declare-fun t!206099 () Bool)

(declare-fun tb!137803 () Bool)

(assert (=> (and b!2303382 (= (toChars!6064 (transformation!4395 (h!32818 (t!205985 rules!1750)))) (toChars!6064 (transformation!4395 (rule!6741 (_1!16163 (get!8264 lt!854243)))))) t!206099) tb!137803))

(declare-fun result!168002 () Bool)

(assert (= result!168002 result!167992))

(assert (=> d!681391 t!206099))

(declare-fun b_and!183637 () Bool)

(assert (= b_and!183619 (and (=> t!206099 result!168002) b_and!183637)))

(declare-fun t!206103 () Bool)

(declare-fun tb!137807 () Bool)

(assert (=> (and b!2302896 (= (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (toChars!6064 (transformation!4395 (rule!6741 (_1!16163 (get!8264 lt!854243)))))) t!206103) tb!137807))

(declare-fun result!168006 () Bool)

(assert (= result!168006 result!167992))

(assert (=> d!681391 t!206103))

(declare-fun b_and!183639 () Bool)

(assert (= b_and!183609 (and (=> t!206103 result!168006) b_and!183639)))

(declare-fun m!2730579 () Bool)

(assert (=> d!681391 m!2730579))

(declare-fun m!2730581 () Bool)

(assert (=> d!681391 m!2730581))

(assert (=> b!2303338 d!681391))

(assert (=> b!2303338 d!681375))

(declare-fun d!681393 () Bool)

(declare-fun lt!854284 () Int)

(assert (=> d!681393 (>= lt!854284 0)))

(declare-fun e!1476182 () Int)

(assert (=> d!681393 (= lt!854284 e!1476182)))

(declare-fun c!365175 () Bool)

(assert (=> d!681393 (= c!365175 (and ((_ is Cons!27417) (t!205985 rules!1750)) (= (h!32818 (t!205985 rules!1750)) otherR!12)))))

(assert (=> d!681393 (contains!4781 (t!205985 rules!1750) otherR!12)))

(assert (=> d!681393 (= (getIndex!408 (t!205985 rules!1750) otherR!12) lt!854284)))

(declare-fun b!2303489 () Bool)

(declare-fun e!1476183 () Int)

(assert (=> b!2303489 (= e!1476183 (- 1))))

(declare-fun b!2303488 () Bool)

(assert (=> b!2303488 (= e!1476183 (+ 1 (getIndex!408 (t!205985 (t!205985 rules!1750)) otherR!12)))))

(declare-fun b!2303487 () Bool)

(assert (=> b!2303487 (= e!1476182 e!1476183)))

(declare-fun c!365176 () Bool)

(assert (=> b!2303487 (= c!365176 (and ((_ is Cons!27417) (t!205985 rules!1750)) (not (= (h!32818 (t!205985 rules!1750)) otherR!12))))))

(declare-fun b!2303486 () Bool)

(assert (=> b!2303486 (= e!1476182 0)))

(assert (= (and d!681393 c!365175) b!2303486))

(assert (= (and d!681393 (not c!365175)) b!2303487))

(assert (= (and b!2303487 c!365176) b!2303488))

(assert (= (and b!2303487 (not c!365176)) b!2303489))

(assert (=> d!681393 m!2730401))

(declare-fun m!2730583 () Bool)

(assert (=> b!2303488 m!2730583))

(assert (=> b!2303074 d!681393))

(declare-fun d!681395 () Bool)

(assert (=> d!681395 (= (list!10801 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (value!139077 (h!32819 tokens!456)))) (list!10803 (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (value!139077 (h!32819 tokens!456))))))))

(declare-fun bs!457788 () Bool)

(assert (= bs!457788 d!681395))

(declare-fun m!2730585 () Bool)

(assert (=> bs!457788 m!2730585))

(assert (=> b!2303102 d!681395))

(declare-fun d!681397 () Bool)

(declare-fun charsToBigInt!1 (List!27509) Int)

(assert (=> d!681397 (= (inv!17 (value!139077 (h!32819 tokens!456))) (= (charsToBigInt!1 (text!32347 (value!139077 (h!32819 tokens!456)))) (value!139069 (value!139077 (h!32819 tokens!456)))))))

(declare-fun bs!457790 () Bool)

(assert (= bs!457790 d!681397))

(declare-fun m!2730591 () Bool)

(assert (=> bs!457790 m!2730591))

(assert (=> b!2303059 d!681397))

(declare-fun b!2303492 () Bool)

(declare-fun res!984866 () Bool)

(declare-fun e!1476184 () Bool)

(assert (=> b!2303492 (=> (not res!984866) (not e!1476184))))

(declare-fun lt!854285 () List!27510)

(assert (=> b!2303492 (= res!984866 (= (size!21626 lt!854285) (+ (size!21626 (list!10801 (charsOf!2783 (_1!16163 (get!8264 lt!854243))))) (size!21626 (_2!16163 (get!8264 lt!854243))))))))

(declare-fun b!2303491 () Bool)

(declare-fun e!1476185 () List!27510)

(assert (=> b!2303491 (= e!1476185 (Cons!27416 (h!32817 (list!10801 (charsOf!2783 (_1!16163 (get!8264 lt!854243))))) (++!6709 (t!205984 (list!10801 (charsOf!2783 (_1!16163 (get!8264 lt!854243))))) (_2!16163 (get!8264 lt!854243)))))))

(declare-fun d!681403 () Bool)

(assert (=> d!681403 e!1476184))

(declare-fun res!984867 () Bool)

(assert (=> d!681403 (=> (not res!984867) (not e!1476184))))

(assert (=> d!681403 (= res!984867 (= (content!3699 lt!854285) ((_ map or) (content!3699 (list!10801 (charsOf!2783 (_1!16163 (get!8264 lt!854243))))) (content!3699 (_2!16163 (get!8264 lt!854243))))))))

(assert (=> d!681403 (= lt!854285 e!1476185)))

(declare-fun c!365177 () Bool)

(assert (=> d!681403 (= c!365177 ((_ is Nil!27416) (list!10801 (charsOf!2783 (_1!16163 (get!8264 lt!854243))))))))

(assert (=> d!681403 (= (++!6709 (list!10801 (charsOf!2783 (_1!16163 (get!8264 lt!854243)))) (_2!16163 (get!8264 lt!854243))) lt!854285)))

(declare-fun b!2303490 () Bool)

(assert (=> b!2303490 (= e!1476185 (_2!16163 (get!8264 lt!854243)))))

(declare-fun b!2303493 () Bool)

(assert (=> b!2303493 (= e!1476184 (or (not (= (_2!16163 (get!8264 lt!854243)) Nil!27416)) (= lt!854285 (list!10801 (charsOf!2783 (_1!16163 (get!8264 lt!854243)))))))))

(assert (= (and d!681403 c!365177) b!2303490))

(assert (= (and d!681403 (not c!365177)) b!2303491))

(assert (= (and d!681403 res!984867) b!2303492))

(assert (= (and b!2303492 res!984866) b!2303493))

(declare-fun m!2730593 () Bool)

(assert (=> b!2303492 m!2730593))

(assert (=> b!2303492 m!2730437))

(declare-fun m!2730595 () Bool)

(assert (=> b!2303492 m!2730595))

(assert (=> b!2303492 m!2730417))

(declare-fun m!2730597 () Bool)

(assert (=> b!2303491 m!2730597))

(declare-fun m!2730599 () Bool)

(assert (=> d!681403 m!2730599))

(assert (=> d!681403 m!2730437))

(declare-fun m!2730601 () Bool)

(assert (=> d!681403 m!2730601))

(declare-fun m!2730603 () Bool)

(assert (=> d!681403 m!2730603))

(assert (=> b!2303334 d!681403))

(assert (=> b!2303334 d!681389))

(assert (=> b!2303334 d!681391))

(assert (=> b!2303334 d!681375))

(declare-fun b!2303497 () Bool)

(declare-fun e!1476188 () Bool)

(assert (=> b!2303497 (= e!1476188 (>= (size!21626 (tail!3329 lt!854127)) (size!21626 (tail!3329 lt!854122))))))

(declare-fun b!2303496 () Bool)

(declare-fun e!1476186 () Bool)

(assert (=> b!2303496 (= e!1476186 (isPrefix!2385 (tail!3329 (tail!3329 lt!854122)) (tail!3329 (tail!3329 lt!854127))))))

(declare-fun b!2303495 () Bool)

(declare-fun res!984869 () Bool)

(assert (=> b!2303495 (=> (not res!984869) (not e!1476186))))

(assert (=> b!2303495 (= res!984869 (= (head!5044 (tail!3329 lt!854122)) (head!5044 (tail!3329 lt!854127))))))

(declare-fun b!2303494 () Bool)

(declare-fun e!1476187 () Bool)

(assert (=> b!2303494 (= e!1476187 e!1476186)))

(declare-fun res!984870 () Bool)

(assert (=> b!2303494 (=> (not res!984870) (not e!1476186))))

(assert (=> b!2303494 (= res!984870 (not ((_ is Nil!27416) (tail!3329 lt!854127))))))

(declare-fun d!681405 () Bool)

(assert (=> d!681405 e!1476188))

(declare-fun res!984868 () Bool)

(assert (=> d!681405 (=> res!984868 e!1476188)))

(declare-fun lt!854286 () Bool)

(assert (=> d!681405 (= res!984868 (not lt!854286))))

(assert (=> d!681405 (= lt!854286 e!1476187)))

(declare-fun res!984871 () Bool)

(assert (=> d!681405 (=> res!984871 e!1476187)))

(assert (=> d!681405 (= res!984871 ((_ is Nil!27416) (tail!3329 lt!854122)))))

(assert (=> d!681405 (= (isPrefix!2385 (tail!3329 lt!854122) (tail!3329 lt!854127)) lt!854286)))

(assert (= (and d!681405 (not res!984871)) b!2303494))

(assert (= (and b!2303494 res!984870) b!2303495))

(assert (= (and b!2303495 res!984869) b!2303496))

(assert (= (and d!681405 (not res!984868)) b!2303497))

(assert (=> b!2303497 m!2730453))

(declare-fun m!2730605 () Bool)

(assert (=> b!2303497 m!2730605))

(assert (=> b!2303497 m!2730451))

(declare-fun m!2730607 () Bool)

(assert (=> b!2303497 m!2730607))

(assert (=> b!2303496 m!2730451))

(declare-fun m!2730609 () Bool)

(assert (=> b!2303496 m!2730609))

(assert (=> b!2303496 m!2730453))

(declare-fun m!2730611 () Bool)

(assert (=> b!2303496 m!2730611))

(assert (=> b!2303496 m!2730609))

(assert (=> b!2303496 m!2730611))

(declare-fun m!2730613 () Bool)

(assert (=> b!2303496 m!2730613))

(assert (=> b!2303495 m!2730451))

(declare-fun m!2730615 () Bool)

(assert (=> b!2303495 m!2730615))

(assert (=> b!2303495 m!2730453))

(declare-fun m!2730617 () Bool)

(assert (=> b!2303495 m!2730617))

(assert (=> b!2303351 d!681405))

(declare-fun d!681407 () Bool)

(assert (=> d!681407 (= (tail!3329 lt!854122) (t!205984 lt!854122))))

(assert (=> b!2303351 d!681407))

(declare-fun d!681409 () Bool)

(assert (=> d!681409 (= (tail!3329 lt!854127) (t!205984 lt!854127))))

(assert (=> b!2303351 d!681409))

(declare-fun d!681411 () Bool)

(assert (=> d!681411 (= (isEmpty!15666 lt!854243) (not ((_ is Some!5390) lt!854243)))))

(assert (=> d!681309 d!681411))

(declare-fun b!2303501 () Bool)

(declare-fun e!1476191 () Bool)

(assert (=> b!2303501 (= e!1476191 (>= (size!21626 input!1722) (size!21626 input!1722)))))

(declare-fun b!2303500 () Bool)

(declare-fun e!1476189 () Bool)

(assert (=> b!2303500 (= e!1476189 (isPrefix!2385 (tail!3329 input!1722) (tail!3329 input!1722)))))

(declare-fun b!2303499 () Bool)

(declare-fun res!984873 () Bool)

(assert (=> b!2303499 (=> (not res!984873) (not e!1476189))))

(assert (=> b!2303499 (= res!984873 (= (head!5044 input!1722) (head!5044 input!1722)))))

(declare-fun b!2303498 () Bool)

(declare-fun e!1476190 () Bool)

(assert (=> b!2303498 (= e!1476190 e!1476189)))

(declare-fun res!984874 () Bool)

(assert (=> b!2303498 (=> (not res!984874) (not e!1476189))))

(assert (=> b!2303498 (= res!984874 (not ((_ is Nil!27416) input!1722)))))

(declare-fun d!681413 () Bool)

(assert (=> d!681413 e!1476191))

(declare-fun res!984872 () Bool)

(assert (=> d!681413 (=> res!984872 e!1476191)))

(declare-fun lt!854287 () Bool)

(assert (=> d!681413 (= res!984872 (not lt!854287))))

(assert (=> d!681413 (= lt!854287 e!1476190)))

(declare-fun res!984875 () Bool)

(assert (=> d!681413 (=> res!984875 e!1476190)))

(assert (=> d!681413 (= res!984875 ((_ is Nil!27416) input!1722))))

(assert (=> d!681413 (= (isPrefix!2385 input!1722 input!1722) lt!854287)))

(assert (= (and d!681413 (not res!984875)) b!2303498))

(assert (= (and b!2303498 res!984874) b!2303499))

(assert (= (and b!2303499 res!984873) b!2303500))

(assert (= (and d!681413 (not res!984872)) b!2303501))

(assert (=> b!2303501 m!2730419))

(assert (=> b!2303501 m!2730419))

(assert (=> b!2303500 m!2730479))

(assert (=> b!2303500 m!2730479))

(assert (=> b!2303500 m!2730479))

(assert (=> b!2303500 m!2730479))

(declare-fun m!2730619 () Bool)

(assert (=> b!2303500 m!2730619))

(assert (=> b!2303499 m!2730493))

(assert (=> b!2303499 m!2730493))

(assert (=> d!681309 d!681413))

(declare-fun d!681415 () Bool)

(assert (=> d!681415 (isPrefix!2385 input!1722 input!1722)))

(declare-fun lt!854290 () Unit!40319)

(declare-fun choose!13457 (List!27510 List!27510) Unit!40319)

(assert (=> d!681415 (= lt!854290 (choose!13457 input!1722 input!1722))))

(assert (=> d!681415 (= (lemmaIsPrefixRefl!1515 input!1722 input!1722) lt!854290)))

(declare-fun bs!457791 () Bool)

(assert (= bs!457791 d!681415))

(assert (=> bs!457791 m!2730427))

(declare-fun m!2730621 () Bool)

(assert (=> bs!457791 m!2730621))

(assert (=> d!681309 d!681415))

(declare-fun d!681417 () Bool)

(assert (=> d!681417 true))

(declare-fun lt!854293 () Bool)

(declare-fun lambda!85964 () Int)

(declare-fun forall!5504 (List!27511 Int) Bool)

(assert (=> d!681417 (= lt!854293 (forall!5504 rules!1750 lambda!85964))))

(declare-fun e!1476197 () Bool)

(assert (=> d!681417 (= lt!854293 e!1476197)))

(declare-fun res!984881 () Bool)

(assert (=> d!681417 (=> res!984881 e!1476197)))

(assert (=> d!681417 (= res!984881 (not ((_ is Cons!27417) rules!1750)))))

(assert (=> d!681417 (= (rulesValidInductive!1557 thiss!16613 rules!1750) lt!854293)))

(declare-fun b!2303510 () Bool)

(declare-fun e!1476196 () Bool)

(assert (=> b!2303510 (= e!1476197 e!1476196)))

(declare-fun res!984880 () Bool)

(assert (=> b!2303510 (=> (not res!984880) (not e!1476196))))

(assert (=> b!2303510 (= res!984880 (ruleValid!1485 thiss!16613 (h!32818 rules!1750)))))

(declare-fun b!2303511 () Bool)

(assert (=> b!2303511 (= e!1476196 (rulesValidInductive!1557 thiss!16613 (t!205985 rules!1750)))))

(assert (= (and d!681417 (not res!984881)) b!2303510))

(assert (= (and b!2303510 res!984880) b!2303511))

(declare-fun m!2730625 () Bool)

(assert (=> d!681417 m!2730625))

(declare-fun m!2730627 () Bool)

(assert (=> b!2303510 m!2730627))

(declare-fun m!2730629 () Bool)

(assert (=> b!2303511 m!2730629))

(assert (=> d!681309 d!681417))

(declare-fun d!681421 () Bool)

(assert (=> d!681421 (= (list!10801 (_2!16161 lt!854187)) (list!10803 (c!365074 (_2!16161 lt!854187))))))

(declare-fun bs!457794 () Bool)

(assert (= bs!457794 d!681421))

(declare-fun m!2730631 () Bool)

(assert (=> bs!457794 m!2730631))

(assert (=> b!2303045 d!681421))

(declare-fun d!681423 () Bool)

(declare-fun e!1476222 () Bool)

(assert (=> d!681423 e!1476222))

(declare-fun c!365195 () Bool)

(declare-fun lt!854307 () tuple2!27304)

(declare-fun size!21631 (List!27512) Int)

(assert (=> d!681423 (= c!365195 (> (size!21631 (_1!16162 lt!854307)) 0))))

(declare-fun e!1476221 () tuple2!27304)

(assert (=> d!681423 (= lt!854307 e!1476221)))

(declare-fun c!365196 () Bool)

(declare-fun lt!854308 () Option!5391)

(assert (=> d!681423 (= c!365196 ((_ is Some!5390) lt!854308))))

(assert (=> d!681423 (= lt!854308 (maxPrefix!2248 thiss!16613 rules!1750 (list!10801 (seqFromList!3099 input!1722))))))

(assert (=> d!681423 (= (lexList!1131 thiss!16613 rules!1750 (list!10801 (seqFromList!3099 input!1722))) lt!854307)))

(declare-fun b!2303553 () Bool)

(declare-fun e!1476225 () Bool)

(assert (=> b!2303553 (= e!1476225 (not (isEmpty!15662 (_1!16162 lt!854307))))))

(declare-fun b!2303554 () Bool)

(assert (=> b!2303554 (= e!1476222 (= (_2!16162 lt!854307) (list!10801 (seqFromList!3099 input!1722))))))

(declare-fun b!2303557 () Bool)

(assert (=> b!2303557 (= e!1476221 (tuple2!27305 Nil!27418 (list!10801 (seqFromList!3099 input!1722))))))

(declare-fun b!2303558 () Bool)

(declare-fun lt!854309 () tuple2!27304)

(assert (=> b!2303558 (= e!1476221 (tuple2!27305 (Cons!27418 (_1!16163 (v!30490 lt!854308)) (_1!16162 lt!854309)) (_2!16162 lt!854309)))))

(assert (=> b!2303558 (= lt!854309 (lexList!1131 thiss!16613 rules!1750 (_2!16163 (v!30490 lt!854308))))))

(declare-fun b!2303559 () Bool)

(assert (=> b!2303559 (= e!1476222 e!1476225)))

(declare-fun res!984891 () Bool)

(assert (=> b!2303559 (= res!984891 (< (size!21626 (_2!16162 lt!854307)) (size!21626 (list!10801 (seqFromList!3099 input!1722)))))))

(assert (=> b!2303559 (=> (not res!984891) (not e!1476225))))

(assert (= (and d!681423 c!365196) b!2303558))

(assert (= (and d!681423 (not c!365196)) b!2303557))

(assert (= (and d!681423 c!365195) b!2303559))

(assert (= (and d!681423 (not c!365195)) b!2303554))

(assert (= (and b!2303559 res!984891) b!2303553))

(declare-fun m!2730657 () Bool)

(assert (=> d!681423 m!2730657))

(assert (=> d!681423 m!2730177))

(declare-fun m!2730659 () Bool)

(assert (=> d!681423 m!2730659))

(declare-fun m!2730661 () Bool)

(assert (=> b!2303553 m!2730661))

(declare-fun m!2730663 () Bool)

(assert (=> b!2303558 m!2730663))

(declare-fun m!2730665 () Bool)

(assert (=> b!2303559 m!2730665))

(assert (=> b!2303559 m!2730177))

(declare-fun m!2730667 () Bool)

(assert (=> b!2303559 m!2730667))

(assert (=> b!2303045 d!681423))

(declare-fun d!681443 () Bool)

(assert (=> d!681443 (= (list!10801 (seqFromList!3099 input!1722)) (list!10803 (c!365074 (seqFromList!3099 input!1722))))))

(declare-fun bs!457796 () Bool)

(assert (= bs!457796 d!681443))

(declare-fun m!2730669 () Bool)

(assert (=> bs!457796 m!2730669))

(assert (=> b!2303045 d!681443))

(declare-fun d!681445 () Bool)

(assert (=> d!681445 (= (list!10801 (dynLambda!11919 (toChars!6064 (transformation!4395 r!2363)) (dynLambda!11920 (toValue!6205 (transformation!4395 r!2363)) lt!854134))) (list!10803 (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 r!2363)) (dynLambda!11920 (toValue!6205 (transformation!4395 r!2363)) lt!854134)))))))

(declare-fun bs!457797 () Bool)

(assert (= bs!457797 d!681445))

(declare-fun m!2730671 () Bool)

(assert (=> bs!457797 m!2730671))

(assert (=> d!681233 d!681445))

(declare-fun d!681447 () Bool)

(assert (=> d!681447 (= (list!10801 lt!854134) (list!10803 (c!365074 lt!854134)))))

(declare-fun bs!457798 () Bool)

(assert (= bs!457798 d!681447))

(declare-fun m!2730673 () Bool)

(assert (=> bs!457798 m!2730673))

(assert (=> d!681233 d!681447))

(declare-fun d!681449 () Bool)

(declare-fun dynLambda!11925 (Int BalanceConc!17604) Bool)

(assert (=> d!681449 (dynLambda!11925 lambda!85949 lt!854134)))

(declare-fun lt!854313 () Unit!40319)

(declare-fun choose!13458 (Int BalanceConc!17604) Unit!40319)

(assert (=> d!681449 (= lt!854313 (choose!13458 lambda!85949 lt!854134))))

(declare-fun Forall!1101 (Int) Bool)

(assert (=> d!681449 (Forall!1101 lambda!85949)))

(assert (=> d!681449 (= (ForallOf!499 lambda!85949 lt!854134) lt!854313)))

(declare-fun b_lambda!73381 () Bool)

(assert (=> (not b_lambda!73381) (not d!681449)))

(declare-fun bs!457800 () Bool)

(assert (= bs!457800 d!681449))

(declare-fun m!2730691 () Bool)

(assert (=> bs!457800 m!2730691))

(declare-fun m!2730693 () Bool)

(assert (=> bs!457800 m!2730693))

(declare-fun m!2730695 () Bool)

(assert (=> bs!457800 m!2730695))

(assert (=> d!681233 d!681449))

(declare-fun d!681461 () Bool)

(assert (=> d!681461 true))

(declare-fun lambda!85967 () Int)

(declare-fun order!15291 () Int)

(declare-fun dynLambda!11926 (Int Int) Int)

(assert (=> d!681461 (< (dynLambda!11921 order!15283 (toValue!6205 (transformation!4395 (rule!6741 (h!32819 tokens!456))))) (dynLambda!11926 order!15291 lambda!85967))))

(declare-fun Forall2!718 (Int) Bool)

(assert (=> d!681461 (= (equivClasses!1707 (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (toValue!6205 (transformation!4395 (rule!6741 (h!32819 tokens!456))))) (Forall2!718 lambda!85967))))

(declare-fun bs!457801 () Bool)

(assert (= bs!457801 d!681461))

(declare-fun m!2730701 () Bool)

(assert (=> bs!457801 m!2730701))

(assert (=> b!2303097 d!681461))

(assert (=> b!2303332 d!681375))

(declare-fun d!681467 () Bool)

(assert (=> d!681467 (= (apply!6657 (transformation!4395 (rule!6741 (_1!16163 (get!8264 lt!854243)))) (seqFromList!3099 (originalCharacters!5165 (_1!16163 (get!8264 lt!854243))))) (dynLambda!11920 (toValue!6205 (transformation!4395 (rule!6741 (_1!16163 (get!8264 lt!854243))))) (seqFromList!3099 (originalCharacters!5165 (_1!16163 (get!8264 lt!854243))))))))

(declare-fun b_lambda!73383 () Bool)

(assert (=> (not b_lambda!73383) (not d!681467)))

(declare-fun tb!137815 () Bool)

(declare-fun t!206112 () Bool)

(assert (=> (and b!2302904 (= (toValue!6205 (transformation!4395 (h!32818 rules!1750))) (toValue!6205 (transformation!4395 (rule!6741 (_1!16163 (get!8264 lt!854243)))))) t!206112) tb!137815))

(declare-fun result!168014 () Bool)

(assert (=> tb!137815 (= result!168014 (inv!21 (dynLambda!11920 (toValue!6205 (transformation!4395 (rule!6741 (_1!16163 (get!8264 lt!854243))))) (seqFromList!3099 (originalCharacters!5165 (_1!16163 (get!8264 lt!854243)))))))))

(declare-fun m!2730703 () Bool)

(assert (=> tb!137815 m!2730703))

(assert (=> d!681467 t!206112))

(declare-fun b_and!183649 () Bool)

(assert (= b_and!183603 (and (=> t!206112 result!168014) b_and!183649)))

(declare-fun tb!137817 () Bool)

(declare-fun t!206114 () Bool)

(assert (=> (and b!2302889 (= (toValue!6205 (transformation!4395 otherR!12)) (toValue!6205 (transformation!4395 (rule!6741 (_1!16163 (get!8264 lt!854243)))))) t!206114) tb!137817))

(declare-fun result!168016 () Bool)

(assert (= result!168016 result!168014))

(assert (=> d!681467 t!206114))

(declare-fun b_and!183651 () Bool)

(assert (= b_and!183605 (and (=> t!206114 result!168016) b_and!183651)))

(declare-fun tb!137819 () Bool)

(declare-fun t!206116 () Bool)

(assert (=> (and b!2303421 (= (toValue!6205 (transformation!4395 (rule!6741 (h!32819 (t!205986 tokens!456))))) (toValue!6205 (transformation!4395 (rule!6741 (_1!16163 (get!8264 lt!854243)))))) t!206116) tb!137819))

(declare-fun result!168018 () Bool)

(assert (= result!168018 result!168014))

(assert (=> d!681467 t!206116))

(declare-fun b_and!183653 () Bool)

(assert (= b_and!183621 (and (=> t!206116 result!168018) b_and!183653)))

(declare-fun tb!137821 () Bool)

(declare-fun t!206118 () Bool)

(assert (=> (and b!2302896 (= (toValue!6205 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (toValue!6205 (transformation!4395 (rule!6741 (_1!16163 (get!8264 lt!854243)))))) t!206118) tb!137821))

(declare-fun result!168020 () Bool)

(assert (= result!168020 result!168014))

(assert (=> d!681467 t!206118))

(declare-fun b_and!183655 () Bool)

(assert (= b_and!183601 (and (=> t!206118 result!168020) b_and!183655)))

(declare-fun t!206120 () Bool)

(declare-fun tb!137823 () Bool)

(assert (=> (and b!2302882 (= (toValue!6205 (transformation!4395 r!2363)) (toValue!6205 (transformation!4395 (rule!6741 (_1!16163 (get!8264 lt!854243)))))) t!206120) tb!137823))

(declare-fun result!168022 () Bool)

(assert (= result!168022 result!168014))

(assert (=> d!681467 t!206120))

(declare-fun b_and!183657 () Bool)

(assert (= b_and!183607 (and (=> t!206120 result!168022) b_and!183657)))

(declare-fun t!206122 () Bool)

(declare-fun tb!137825 () Bool)

(assert (=> (and b!2303382 (= (toValue!6205 (transformation!4395 (h!32818 (t!205985 rules!1750)))) (toValue!6205 (transformation!4395 (rule!6741 (_1!16163 (get!8264 lt!854243)))))) t!206122) tb!137825))

(declare-fun result!168024 () Bool)

(assert (= result!168024 result!168014))

(assert (=> d!681467 t!206122))

(declare-fun b_and!183659 () Bool)

(assert (= b_and!183617 (and (=> t!206122 result!168024) b_and!183659)))

(assert (=> d!681467 m!2730421))

(declare-fun m!2730705 () Bool)

(assert (=> d!681467 m!2730705))

(assert (=> b!2303332 d!681467))

(declare-fun d!681469 () Bool)

(assert (=> d!681469 (= (seqFromList!3099 (originalCharacters!5165 (_1!16163 (get!8264 lt!854243)))) (fromListB!1398 (originalCharacters!5165 (_1!16163 (get!8264 lt!854243)))))))

(declare-fun bs!457802 () Bool)

(assert (= bs!457802 d!681469))

(declare-fun m!2730707 () Bool)

(assert (=> bs!457802 m!2730707))

(assert (=> b!2303332 d!681469))

(declare-fun d!681471 () Bool)

(declare-fun lt!854314 () List!27510)

(assert (=> d!681471 (= (++!6709 (t!205984 lt!854122) lt!854314) (tail!3329 input!1722))))

(declare-fun e!1476250 () List!27510)

(assert (=> d!681471 (= lt!854314 e!1476250)))

(declare-fun c!365205 () Bool)

(assert (=> d!681471 (= c!365205 ((_ is Cons!27416) (t!205984 lt!854122)))))

(assert (=> d!681471 (>= (size!21626 (tail!3329 input!1722)) (size!21626 (t!205984 lt!854122)))))

(assert (=> d!681471 (= (getSuffix!1164 (tail!3329 input!1722) (t!205984 lt!854122)) lt!854314)))

(declare-fun b!2303593 () Bool)

(assert (=> b!2303593 (= e!1476250 (getSuffix!1164 (tail!3329 (tail!3329 input!1722)) (t!205984 (t!205984 lt!854122))))))

(declare-fun b!2303594 () Bool)

(assert (=> b!2303594 (= e!1476250 (tail!3329 input!1722))))

(assert (= (and d!681471 c!365205) b!2303593))

(assert (= (and d!681471 (not c!365205)) b!2303594))

(declare-fun m!2730709 () Bool)

(assert (=> d!681471 m!2730709))

(assert (=> d!681471 m!2730479))

(declare-fun m!2730711 () Bool)

(assert (=> d!681471 m!2730711))

(assert (=> d!681471 m!2730471))

(assert (=> b!2303593 m!2730479))

(declare-fun m!2730713 () Bool)

(assert (=> b!2303593 m!2730713))

(assert (=> b!2303593 m!2730713))

(declare-fun m!2730715 () Bool)

(assert (=> b!2303593 m!2730715))

(assert (=> b!2303365 d!681471))

(declare-fun d!681473 () Bool)

(assert (=> d!681473 (= (tail!3329 input!1722) (t!205984 input!1722))))

(assert (=> b!2303365 d!681473))

(declare-fun b!2303595 () Bool)

(declare-fun e!1476252 () Bool)

(assert (=> b!2303595 (= e!1476252 (inv!17 (value!139077 (h!32819 (t!205986 tokens!456)))))))

(declare-fun d!681475 () Bool)

(declare-fun c!365207 () Bool)

(assert (=> d!681475 (= c!365207 ((_ is IntegerValue!13671) (value!139077 (h!32819 (t!205986 tokens!456)))))))

(declare-fun e!1476253 () Bool)

(assert (=> d!681475 (= (inv!21 (value!139077 (h!32819 (t!205986 tokens!456)))) e!1476253)))

(declare-fun b!2303596 () Bool)

(assert (=> b!2303596 (= e!1476253 e!1476252)))

(declare-fun c!365206 () Bool)

(assert (=> b!2303596 (= c!365206 ((_ is IntegerValue!13672) (value!139077 (h!32819 (t!205986 tokens!456)))))))

(declare-fun b!2303597 () Bool)

(declare-fun res!984907 () Bool)

(declare-fun e!1476251 () Bool)

(assert (=> b!2303597 (=> res!984907 e!1476251)))

(assert (=> b!2303597 (= res!984907 (not ((_ is IntegerValue!13673) (value!139077 (h!32819 (t!205986 tokens!456))))))))

(assert (=> b!2303597 (= e!1476252 e!1476251)))

(declare-fun b!2303598 () Bool)

(assert (=> b!2303598 (= e!1476251 (inv!15 (value!139077 (h!32819 (t!205986 tokens!456)))))))

(declare-fun b!2303599 () Bool)

(assert (=> b!2303599 (= e!1476253 (inv!16 (value!139077 (h!32819 (t!205986 tokens!456)))))))

(assert (= (and d!681475 c!365207) b!2303599))

(assert (= (and d!681475 (not c!365207)) b!2303596))

(assert (= (and b!2303596 c!365206) b!2303595))

(assert (= (and b!2303596 (not c!365206)) b!2303597))

(assert (= (and b!2303597 (not res!984907)) b!2303598))

(declare-fun m!2730717 () Bool)

(assert (=> b!2303595 m!2730717))

(declare-fun m!2730719 () Bool)

(assert (=> b!2303598 m!2730719))

(declare-fun m!2730721 () Bool)

(assert (=> b!2303599 m!2730721))

(assert (=> b!2303419 d!681475))

(assert (=> b!2302959 d!681379))

(assert (=> d!681219 d!681217))

(declare-fun d!681477 () Bool)

(assert (=> d!681477 (ruleValid!1485 thiss!16613 r!2363)))

(assert (=> d!681477 true))

(declare-fun _$65!1178 () Unit!40319)

(assert (=> d!681477 (= (choose!13453 thiss!16613 r!2363 rules!1750) _$65!1178)))

(declare-fun bs!457803 () Bool)

(assert (= bs!457803 d!681477))

(assert (=> bs!457803 m!2729951))

(assert (=> d!681219 d!681477))

(assert (=> d!681219 d!681223))

(declare-fun d!681481 () Bool)

(assert (=> d!681481 (= (list!10801 lt!854251) (list!10803 (c!365074 lt!854251)))))

(declare-fun bs!457804 () Bool)

(assert (= bs!457804 d!681481))

(declare-fun m!2730729 () Bool)

(assert (=> bs!457804 m!2730729))

(assert (=> d!681313 d!681481))

(declare-fun b!2303628 () Bool)

(declare-fun e!1476270 () List!27510)

(assert (=> b!2303628 (= e!1476270 (++!6709 (list!10803 (left!20772 (c!365074 (_2!16161 lt!854125)))) (list!10803 (right!21102 (c!365074 (_2!16161 lt!854125))))))))

(declare-fun b!2303626 () Bool)

(declare-fun e!1476269 () List!27510)

(assert (=> b!2303626 (= e!1476269 e!1476270)))

(declare-fun c!365219 () Bool)

(assert (=> b!2303626 (= c!365219 ((_ is Leaf!13121) (c!365074 (_2!16161 lt!854125))))))

(declare-fun d!681483 () Bool)

(declare-fun c!365218 () Bool)

(assert (=> d!681483 (= c!365218 ((_ is Empty!8938) (c!365074 (_2!16161 lt!854125))))))

(assert (=> d!681483 (= (list!10803 (c!365074 (_2!16161 lt!854125))) e!1476269)))

(declare-fun b!2303627 () Bool)

(declare-fun list!10808 (IArray!17881) List!27510)

(assert (=> b!2303627 (= e!1476270 (list!10808 (xs!11880 (c!365074 (_2!16161 lt!854125)))))))

(declare-fun b!2303625 () Bool)

(assert (=> b!2303625 (= e!1476269 Nil!27416)))

(assert (= (and d!681483 c!365218) b!2303625))

(assert (= (and d!681483 (not c!365218)) b!2303626))

(assert (= (and b!2303626 c!365219) b!2303627))

(assert (= (and b!2303626 (not c!365219)) b!2303628))

(declare-fun m!2730747 () Bool)

(assert (=> b!2303628 m!2730747))

(declare-fun m!2730749 () Bool)

(assert (=> b!2303628 m!2730749))

(assert (=> b!2303628 m!2730747))

(assert (=> b!2303628 m!2730749))

(declare-fun m!2730751 () Bool)

(assert (=> b!2303628 m!2730751))

(declare-fun m!2730753 () Bool)

(assert (=> b!2303627 m!2730753))

(assert (=> d!681175 d!681483))

(declare-fun d!681493 () Bool)

(assert (=> d!681493 (= r!2363 otherR!12)))

(assert (=> d!681493 true))

(declare-fun _$42!223 () Unit!40319)

(assert (=> d!681493 (= (choose!13452 rules!1750 r!2363 otherR!12) _$42!223)))

(assert (=> d!681171 d!681493))

(assert (=> d!681171 d!681223))

(declare-fun d!681495 () Bool)

(assert (=> d!681495 (= (isEmpty!15661 (list!10801 (charsOf!2783 (head!5042 tokens!456)))) ((_ is Nil!27416) (list!10801 (charsOf!2783 (head!5042 tokens!456)))))))

(assert (=> d!681151 d!681495))

(declare-fun d!681499 () Bool)

(declare-fun res!984932 () Bool)

(declare-fun e!1476292 () Bool)

(assert (=> d!681499 (=> res!984932 e!1476292)))

(assert (=> d!681499 (= res!984932 ((_ is ElementMatch!6743) (regex!4395 r!2363)))))

(assert (=> d!681499 (= (validRegex!2547 (regex!4395 r!2363)) e!1476292)))

(declare-fun c!365226 () Bool)

(declare-fun bm!137097 () Bool)

(declare-fun call!137104 () Bool)

(declare-fun c!365225 () Bool)

(assert (=> bm!137097 (= call!137104 (validRegex!2547 (ite c!365225 (reg!7072 (regex!4395 r!2363)) (ite c!365226 (regOne!13999 (regex!4395 r!2363)) (regTwo!13998 (regex!4395 r!2363))))))))

(declare-fun b!2303654 () Bool)

(declare-fun e!1476291 () Bool)

(declare-fun e!1476294 () Bool)

(assert (=> b!2303654 (= e!1476291 e!1476294)))

(assert (=> b!2303654 (= c!365226 ((_ is Union!6743) (regex!4395 r!2363)))))

(declare-fun b!2303655 () Bool)

(declare-fun e!1476296 () Bool)

(declare-fun call!137102 () Bool)

(assert (=> b!2303655 (= e!1476296 call!137102)))

(declare-fun bm!137098 () Bool)

(declare-fun call!137103 () Bool)

(assert (=> bm!137098 (= call!137103 (validRegex!2547 (ite c!365226 (regTwo!13999 (regex!4395 r!2363)) (regOne!13998 (regex!4395 r!2363)))))))

(declare-fun b!2303656 () Bool)

(declare-fun res!984929 () Bool)

(declare-fun e!1476293 () Bool)

(assert (=> b!2303656 (=> res!984929 e!1476293)))

(assert (=> b!2303656 (= res!984929 (not ((_ is Concat!11301) (regex!4395 r!2363))))))

(assert (=> b!2303656 (= e!1476294 e!1476293)))

(declare-fun b!2303657 () Bool)

(assert (=> b!2303657 (= e!1476292 e!1476291)))

(assert (=> b!2303657 (= c!365225 ((_ is Star!6743) (regex!4395 r!2363)))))

(declare-fun b!2303658 () Bool)

(declare-fun res!984930 () Bool)

(declare-fun e!1476290 () Bool)

(assert (=> b!2303658 (=> (not res!984930) (not e!1476290))))

(assert (=> b!2303658 (= res!984930 call!137102)))

(assert (=> b!2303658 (= e!1476294 e!1476290)))

(declare-fun b!2303659 () Bool)

(assert (=> b!2303659 (= e!1476290 call!137103)))

(declare-fun b!2303660 () Bool)

(declare-fun e!1476295 () Bool)

(assert (=> b!2303660 (= e!1476291 e!1476295)))

(declare-fun res!984931 () Bool)

(assert (=> b!2303660 (= res!984931 (not (nullable!1885 (reg!7072 (regex!4395 r!2363)))))))

(assert (=> b!2303660 (=> (not res!984931) (not e!1476295))))

(declare-fun b!2303661 () Bool)

(assert (=> b!2303661 (= e!1476293 e!1476296)))

(declare-fun res!984928 () Bool)

(assert (=> b!2303661 (=> (not res!984928) (not e!1476296))))

(assert (=> b!2303661 (= res!984928 call!137103)))

(declare-fun b!2303662 () Bool)

(assert (=> b!2303662 (= e!1476295 call!137104)))

(declare-fun bm!137099 () Bool)

(assert (=> bm!137099 (= call!137102 call!137104)))

(assert (= (and d!681499 (not res!984932)) b!2303657))

(assert (= (and b!2303657 c!365225) b!2303660))

(assert (= (and b!2303657 (not c!365225)) b!2303654))

(assert (= (and b!2303660 res!984931) b!2303662))

(assert (= (and b!2303654 c!365226) b!2303658))

(assert (= (and b!2303654 (not c!365226)) b!2303656))

(assert (= (and b!2303658 res!984930) b!2303659))

(assert (= (and b!2303656 (not res!984929)) b!2303661))

(assert (= (and b!2303661 res!984928) b!2303655))

(assert (= (or b!2303658 b!2303655) bm!137099))

(assert (= (or b!2303659 b!2303661) bm!137098))

(assert (= (or b!2303662 bm!137099) bm!137097))

(declare-fun m!2730775 () Bool)

(assert (=> bm!137097 m!2730775))

(declare-fun m!2730777 () Bool)

(assert (=> bm!137098 m!2730777))

(declare-fun m!2730779 () Bool)

(assert (=> b!2303660 m!2730779))

(assert (=> d!681151 d!681499))

(declare-fun d!681519 () Bool)

(declare-fun lt!854327 () Bool)

(assert (=> d!681519 (= lt!854327 (isEmpty!15662 (list!10800 (_1!16161 lt!854187))))))

(declare-fun isEmpty!15668 (Conc!8939) Bool)

(assert (=> d!681519 (= lt!854327 (isEmpty!15668 (c!365076 (_1!16161 lt!854187))))))

(assert (=> d!681519 (= (isEmpty!15664 (_1!16161 lt!854187)) lt!854327)))

(declare-fun bs!457812 () Bool)

(assert (= bs!457812 d!681519))

(assert (=> bs!457812 m!2730175))

(assert (=> bs!457812 m!2730175))

(declare-fun m!2730781 () Bool)

(assert (=> bs!457812 m!2730781))

(declare-fun m!2730783 () Bool)

(assert (=> bs!457812 m!2730783))

(assert (=> b!2303043 d!681519))

(declare-fun d!681521 () Bool)

(declare-fun isBalanced!2691 (Conc!8938) Bool)

(assert (=> d!681521 (= (inv!37054 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (head!5042 tokens!456)))) (value!139077 (head!5042 tokens!456)))) (isBalanced!2691 (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (head!5042 tokens!456)))) (value!139077 (head!5042 tokens!456))))))))

(declare-fun bs!457813 () Bool)

(assert (= bs!457813 d!681521))

(declare-fun m!2730785 () Bool)

(assert (=> bs!457813 m!2730785))

(assert (=> tb!137695 d!681521))

(declare-fun d!681523 () Bool)

(declare-fun res!984937 () Bool)

(declare-fun e!1476301 () Bool)

(assert (=> d!681523 (=> res!984937 e!1476301)))

(assert (=> d!681523 (= res!984937 ((_ is Nil!27417) rules!1750))))

(assert (=> d!681523 (= (noDuplicateTag!1629 thiss!16613 rules!1750 Nil!27419) e!1476301)))

(declare-fun b!2303667 () Bool)

(declare-fun e!1476302 () Bool)

(assert (=> b!2303667 (= e!1476301 e!1476302)))

(declare-fun res!984938 () Bool)

(assert (=> b!2303667 (=> (not res!984938) (not e!1476302))))

(declare-fun contains!4782 (List!27513 String!29889) Bool)

(assert (=> b!2303667 (= res!984938 (not (contains!4782 Nil!27419 (tag!4885 (h!32818 rules!1750)))))))

(declare-fun b!2303668 () Bool)

(assert (=> b!2303668 (= e!1476302 (noDuplicateTag!1629 thiss!16613 (t!205985 rules!1750) (Cons!27419 (tag!4885 (h!32818 rules!1750)) Nil!27419)))))

(assert (= (and d!681523 (not res!984937)) b!2303667))

(assert (= (and b!2303667 res!984938) b!2303668))

(declare-fun m!2730787 () Bool)

(assert (=> b!2303667 m!2730787))

(declare-fun m!2730789 () Bool)

(assert (=> b!2303668 m!2730789))

(assert (=> b!2303090 d!681523))

(declare-fun b!2303671 () Bool)

(declare-fun res!984939 () Bool)

(declare-fun e!1476303 () Bool)

(assert (=> b!2303671 (=> (not res!984939) (not e!1476303))))

(declare-fun lt!854328 () List!27510)

(assert (=> b!2303671 (= res!984939 (= (size!21626 lt!854328) (+ (size!21626 lt!854122) (size!21626 lt!854264))))))

(declare-fun b!2303670 () Bool)

(declare-fun e!1476304 () List!27510)

(assert (=> b!2303670 (= e!1476304 (Cons!27416 (h!32817 lt!854122) (++!6709 (t!205984 lt!854122) lt!854264)))))

(declare-fun d!681525 () Bool)

(assert (=> d!681525 e!1476303))

(declare-fun res!984940 () Bool)

(assert (=> d!681525 (=> (not res!984940) (not e!1476303))))

(assert (=> d!681525 (= res!984940 (= (content!3699 lt!854328) ((_ map or) (content!3699 lt!854122) (content!3699 lt!854264))))))

(assert (=> d!681525 (= lt!854328 e!1476304)))

(declare-fun c!365227 () Bool)

(assert (=> d!681525 (= c!365227 ((_ is Nil!27416) lt!854122))))

(assert (=> d!681525 (= (++!6709 lt!854122 lt!854264) lt!854328)))

(declare-fun b!2303669 () Bool)

(assert (=> b!2303669 (= e!1476304 lt!854264)))

(declare-fun b!2303672 () Bool)

(assert (=> b!2303672 (= e!1476303 (or (not (= lt!854264 Nil!27416)) (= lt!854328 lt!854122)))))

(assert (= (and d!681525 c!365227) b!2303669))

(assert (= (and d!681525 (not c!365227)) b!2303670))

(assert (= (and d!681525 res!984940) b!2303671))

(assert (= (and b!2303671 res!984939) b!2303672))

(declare-fun m!2730791 () Bool)

(assert (=> b!2303671 m!2730791))

(assert (=> b!2303671 m!2730015))

(declare-fun m!2730793 () Bool)

(assert (=> b!2303671 m!2730793))

(declare-fun m!2730795 () Bool)

(assert (=> b!2303670 m!2730795))

(declare-fun m!2730797 () Bool)

(assert (=> d!681525 m!2730797))

(assert (=> d!681525 m!2730411))

(declare-fun m!2730799 () Bool)

(assert (=> d!681525 m!2730799))

(assert (=> d!681327 d!681525))

(assert (=> d!681327 d!681377))

(assert (=> d!681327 d!681321))

(declare-fun d!681527 () Bool)

(declare-fun c!365230 () Bool)

(assert (=> d!681527 (= c!365230 ((_ is Node!8938) (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 r!2363)) (dynLambda!11920 (toValue!6205 (transformation!4395 r!2363)) lt!854134)))))))

(declare-fun e!1476309 () Bool)

(assert (=> d!681527 (= (inv!37053 (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 r!2363)) (dynLambda!11920 (toValue!6205 (transformation!4395 r!2363)) lt!854134)))) e!1476309)))

(declare-fun b!2303679 () Bool)

(declare-fun inv!37057 (Conc!8938) Bool)

(assert (=> b!2303679 (= e!1476309 (inv!37057 (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 r!2363)) (dynLambda!11920 (toValue!6205 (transformation!4395 r!2363)) lt!854134)))))))

(declare-fun b!2303680 () Bool)

(declare-fun e!1476310 () Bool)

(assert (=> b!2303680 (= e!1476309 e!1476310)))

(declare-fun res!984943 () Bool)

(assert (=> b!2303680 (= res!984943 (not ((_ is Leaf!13121) (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 r!2363)) (dynLambda!11920 (toValue!6205 (transformation!4395 r!2363)) lt!854134))))))))

(assert (=> b!2303680 (=> res!984943 e!1476310)))

(declare-fun b!2303681 () Bool)

(declare-fun inv!37058 (Conc!8938) Bool)

(assert (=> b!2303681 (= e!1476310 (inv!37058 (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 r!2363)) (dynLambda!11920 (toValue!6205 (transformation!4395 r!2363)) lt!854134)))))))

(assert (= (and d!681527 c!365230) b!2303679))

(assert (= (and d!681527 (not c!365230)) b!2303680))

(assert (= (and b!2303680 (not res!984943)) b!2303681))

(declare-fun m!2730801 () Bool)

(assert (=> b!2303679 m!2730801))

(declare-fun m!2730803 () Bool)

(assert (=> b!2303681 m!2730803))

(assert (=> b!2303287 d!681527))

(assert (=> d!681217 d!681499))

(declare-fun d!681529 () Bool)

(assert (=> d!681529 (= (inv!37054 (dynLambda!11919 (toChars!6064 (transformation!4395 r!2363)) (dynLambda!11920 (toValue!6205 (transformation!4395 r!2363)) lt!854134))) (isBalanced!2691 (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 r!2363)) (dynLambda!11920 (toValue!6205 (transformation!4395 r!2363)) lt!854134)))))))

(declare-fun bs!457814 () Bool)

(assert (= bs!457814 d!681529))

(declare-fun m!2730805 () Bool)

(assert (=> bs!457814 m!2730805))

(assert (=> tb!137761 d!681529))

(assert (=> b!2303370 d!681377))

(assert (=> b!2303370 d!681323))

(declare-fun d!681531 () Bool)

(declare-fun c!365233 () Bool)

(assert (=> d!681531 (= c!365233 ((_ is Nil!27416) lt!854232))))

(declare-fun e!1476313 () (InoxSet C!13632))

(assert (=> d!681531 (= (content!3699 lt!854232) e!1476313)))

(declare-fun b!2303686 () Bool)

(assert (=> b!2303686 (= e!1476313 ((as const (Array C!13632 Bool)) false))))

(declare-fun b!2303687 () Bool)

(assert (=> b!2303687 (= e!1476313 ((_ map or) (store ((as const (Array C!13632 Bool)) false) (h!32817 lt!854232) true) (content!3699 (t!205984 lt!854232))))))

(assert (= (and d!681531 c!365233) b!2303686))

(assert (= (and d!681531 (not c!365233)) b!2303687))

(declare-fun m!2730807 () Bool)

(assert (=> b!2303687 m!2730807))

(declare-fun m!2730809 () Bool)

(assert (=> b!2303687 m!2730809))

(assert (=> d!681307 d!681531))

(declare-fun d!681533 () Bool)

(declare-fun c!365234 () Bool)

(assert (=> d!681533 (= c!365234 ((_ is Nil!27416) lt!854122))))

(declare-fun e!1476314 () (InoxSet C!13632))

(assert (=> d!681533 (= (content!3699 lt!854122) e!1476314)))

(declare-fun b!2303688 () Bool)

(assert (=> b!2303688 (= e!1476314 ((as const (Array C!13632 Bool)) false))))

(declare-fun b!2303689 () Bool)

(assert (=> b!2303689 (= e!1476314 ((_ map or) (store ((as const (Array C!13632 Bool)) false) (h!32817 lt!854122) true) (content!3699 (t!205984 lt!854122))))))

(assert (= (and d!681533 c!365234) b!2303688))

(assert (= (and d!681533 (not c!365234)) b!2303689))

(declare-fun m!2730811 () Bool)

(assert (=> b!2303689 m!2730811))

(declare-fun m!2730813 () Bool)

(assert (=> b!2303689 m!2730813))

(assert (=> d!681307 d!681533))

(declare-fun d!681535 () Bool)

(declare-fun c!365235 () Bool)

(assert (=> d!681535 (= c!365235 ((_ is Nil!27416) (_2!16163 lt!854124)))))

(declare-fun e!1476315 () (InoxSet C!13632))

(assert (=> d!681535 (= (content!3699 (_2!16163 lt!854124)) e!1476315)))

(declare-fun b!2303690 () Bool)

(assert (=> b!2303690 (= e!1476315 ((as const (Array C!13632 Bool)) false))))

(declare-fun b!2303691 () Bool)

(assert (=> b!2303691 (= e!1476315 ((_ map or) (store ((as const (Array C!13632 Bool)) false) (h!32817 (_2!16163 lt!854124)) true) (content!3699 (t!205984 (_2!16163 lt!854124)))))))

(assert (= (and d!681535 c!365235) b!2303690))

(assert (= (and d!681535 (not c!365235)) b!2303691))

(declare-fun m!2730815 () Bool)

(assert (=> b!2303691 m!2730815))

(declare-fun m!2730817 () Bool)

(assert (=> b!2303691 m!2730817))

(assert (=> d!681307 d!681535))

(declare-fun d!681537 () Bool)

(assert (=> d!681537 (= (head!5044 otherP!12) (h!32817 otherP!12))))

(assert (=> b!2303368 d!681537))

(declare-fun d!681539 () Bool)

(assert (=> d!681539 (= (head!5044 input!1722) (h!32817 input!1722))))

(assert (=> b!2303368 d!681539))

(declare-fun d!681541 () Bool)

(declare-fun res!984944 () Bool)

(declare-fun e!1476316 () Bool)

(assert (=> d!681541 (=> (not res!984944) (not e!1476316))))

(assert (=> d!681541 (= res!984944 (not (isEmpty!15661 (originalCharacters!5165 (h!32819 (t!205986 tokens!456))))))))

(assert (=> d!681541 (= (inv!37050 (h!32819 (t!205986 tokens!456))) e!1476316)))

(declare-fun b!2303692 () Bool)

(declare-fun res!984945 () Bool)

(assert (=> b!2303692 (=> (not res!984945) (not e!1476316))))

(assert (=> b!2303692 (= res!984945 (= (originalCharacters!5165 (h!32819 (t!205986 tokens!456))) (list!10801 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (h!32819 (t!205986 tokens!456))))) (value!139077 (h!32819 (t!205986 tokens!456)))))))))

(declare-fun b!2303693 () Bool)

(assert (=> b!2303693 (= e!1476316 (= (size!21624 (h!32819 (t!205986 tokens!456))) (size!21626 (originalCharacters!5165 (h!32819 (t!205986 tokens!456))))))))

(assert (= (and d!681541 res!984944) b!2303692))

(assert (= (and b!2303692 res!984945) b!2303693))

(declare-fun b_lambda!73385 () Bool)

(assert (=> (not b_lambda!73385) (not b!2303692)))

(declare-fun tb!137827 () Bool)

(declare-fun t!206126 () Bool)

(assert (=> (and b!2302889 (= (toChars!6064 (transformation!4395 otherR!12)) (toChars!6064 (transformation!4395 (rule!6741 (h!32819 (t!205986 tokens!456)))))) t!206126) tb!137827))

(declare-fun b!2303694 () Bool)

(declare-fun e!1476317 () Bool)

(declare-fun tp!730747 () Bool)

(assert (=> b!2303694 (= e!1476317 (and (inv!37053 (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (h!32819 (t!205986 tokens!456))))) (value!139077 (h!32819 (t!205986 tokens!456)))))) tp!730747))))

(declare-fun result!168026 () Bool)

(assert (=> tb!137827 (= result!168026 (and (inv!37054 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (h!32819 (t!205986 tokens!456))))) (value!139077 (h!32819 (t!205986 tokens!456))))) e!1476317))))

(assert (= tb!137827 b!2303694))

(declare-fun m!2730819 () Bool)

(assert (=> b!2303694 m!2730819))

(declare-fun m!2730821 () Bool)

(assert (=> tb!137827 m!2730821))

(assert (=> b!2303692 t!206126))

(declare-fun b_and!183661 () Bool)

(assert (= b_and!183635 (and (=> t!206126 result!168026) b_and!183661)))

(declare-fun tb!137829 () Bool)

(declare-fun t!206128 () Bool)

(assert (=> (and b!2303382 (= (toChars!6064 (transformation!4395 (h!32818 (t!205985 rules!1750)))) (toChars!6064 (transformation!4395 (rule!6741 (h!32819 (t!205986 tokens!456)))))) t!206128) tb!137829))

(declare-fun result!168028 () Bool)

(assert (= result!168028 result!168026))

(assert (=> b!2303692 t!206128))

(declare-fun b_and!183663 () Bool)

(assert (= b_and!183637 (and (=> t!206128 result!168028) b_and!183663)))

(declare-fun tb!137831 () Bool)

(declare-fun t!206130 () Bool)

(assert (=> (and b!2302882 (= (toChars!6064 (transformation!4395 r!2363)) (toChars!6064 (transformation!4395 (rule!6741 (h!32819 (t!205986 tokens!456)))))) t!206130) tb!137831))

(declare-fun result!168030 () Bool)

(assert (= result!168030 result!168026))

(assert (=> b!2303692 t!206130))

(declare-fun b_and!183665 () Bool)

(assert (= b_and!183627 (and (=> t!206130 result!168030) b_and!183665)))

(declare-fun t!206132 () Bool)

(declare-fun tb!137833 () Bool)

(assert (=> (and b!2302904 (= (toChars!6064 (transformation!4395 (h!32818 rules!1750))) (toChars!6064 (transformation!4395 (rule!6741 (h!32819 (t!205986 tokens!456)))))) t!206132) tb!137833))

(declare-fun result!168032 () Bool)

(assert (= result!168032 result!168026))

(assert (=> b!2303692 t!206132))

(declare-fun b_and!183667 () Bool)

(assert (= b_and!183629 (and (=> t!206132 result!168032) b_and!183667)))

(declare-fun t!206134 () Bool)

(declare-fun tb!137835 () Bool)

(assert (=> (and b!2302896 (= (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (toChars!6064 (transformation!4395 (rule!6741 (h!32819 (t!205986 tokens!456)))))) t!206134) tb!137835))

(declare-fun result!168034 () Bool)

(assert (= result!168034 result!168026))

(assert (=> b!2303692 t!206134))

(declare-fun b_and!183669 () Bool)

(assert (= b_and!183639 (and (=> t!206134 result!168034) b_and!183669)))

(declare-fun t!206136 () Bool)

(declare-fun tb!137837 () Bool)

(assert (=> (and b!2303421 (= (toChars!6064 (transformation!4395 (rule!6741 (h!32819 (t!205986 tokens!456))))) (toChars!6064 (transformation!4395 (rule!6741 (h!32819 (t!205986 tokens!456)))))) t!206136) tb!137837))

(declare-fun result!168036 () Bool)

(assert (= result!168036 result!168026))

(assert (=> b!2303692 t!206136))

(declare-fun b_and!183671 () Bool)

(assert (= b_and!183631 (and (=> t!206136 result!168036) b_and!183671)))

(declare-fun m!2730823 () Bool)

(assert (=> d!681541 m!2730823))

(declare-fun m!2730825 () Bool)

(assert (=> b!2303692 m!2730825))

(assert (=> b!2303692 m!2730825))

(declare-fun m!2730827 () Bool)

(assert (=> b!2303692 m!2730827))

(declare-fun m!2730829 () Bool)

(assert (=> b!2303693 m!2730829))

(assert (=> b!2303418 d!681541))

(declare-fun d!681543 () Bool)

(declare-fun c!365236 () Bool)

(assert (=> d!681543 (= c!365236 ((_ is Node!8938) (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (value!139077 (h!32819 tokens!456))))))))

(declare-fun e!1476318 () Bool)

(assert (=> d!681543 (= (inv!37053 (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (value!139077 (h!32819 tokens!456))))) e!1476318)))

(declare-fun b!2303698 () Bool)

(assert (=> b!2303698 (= e!1476318 (inv!37057 (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (value!139077 (h!32819 tokens!456))))))))

(declare-fun b!2303700 () Bool)

(declare-fun e!1476320 () Bool)

(assert (=> b!2303700 (= e!1476318 e!1476320)))

(declare-fun res!984946 () Bool)

(assert (=> b!2303700 (= res!984946 (not ((_ is Leaf!13121) (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (value!139077 (h!32819 tokens!456)))))))))

(assert (=> b!2303700 (=> res!984946 e!1476320)))

(declare-fun b!2303701 () Bool)

(assert (=> b!2303701 (= e!1476320 (inv!37058 (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (value!139077 (h!32819 tokens!456))))))))

(assert (= (and d!681543 c!365236) b!2303698))

(assert (= (and d!681543 (not c!365236)) b!2303700))

(assert (= (and b!2303700 (not res!984946)) b!2303701))

(declare-fun m!2730831 () Bool)

(assert (=> b!2303698 m!2730831))

(declare-fun m!2730833 () Bool)

(assert (=> b!2303701 m!2730833))

(assert (=> b!2303104 d!681543))

(declare-fun b!2303705 () Bool)

(declare-fun e!1476323 () List!27510)

(assert (=> b!2303705 (= e!1476323 (++!6709 (list!10803 (left!20772 (c!365074 (charsOf!2783 (h!32819 tokens!456))))) (list!10803 (right!21102 (c!365074 (charsOf!2783 (h!32819 tokens!456)))))))))

(declare-fun b!2303703 () Bool)

(declare-fun e!1476322 () List!27510)

(assert (=> b!2303703 (= e!1476322 e!1476323)))

(declare-fun c!365240 () Bool)

(assert (=> b!2303703 (= c!365240 ((_ is Leaf!13121) (c!365074 (charsOf!2783 (h!32819 tokens!456)))))))

(declare-fun d!681545 () Bool)

(declare-fun c!365239 () Bool)

(assert (=> d!681545 (= c!365239 ((_ is Empty!8938) (c!365074 (charsOf!2783 (h!32819 tokens!456)))))))

(assert (=> d!681545 (= (list!10803 (c!365074 (charsOf!2783 (h!32819 tokens!456)))) e!1476322)))

(declare-fun b!2303704 () Bool)

(assert (=> b!2303704 (= e!1476323 (list!10808 (xs!11880 (c!365074 (charsOf!2783 (h!32819 tokens!456))))))))

(declare-fun b!2303702 () Bool)

(assert (=> b!2303702 (= e!1476322 Nil!27416)))

(assert (= (and d!681545 c!365239) b!2303702))

(assert (= (and d!681545 (not c!365239)) b!2303703))

(assert (= (and b!2303703 c!365240) b!2303704))

(assert (= (and b!2303703 (not c!365240)) b!2303705))

(declare-fun m!2730835 () Bool)

(assert (=> b!2303705 m!2730835))

(declare-fun m!2730837 () Bool)

(assert (=> b!2303705 m!2730837))

(assert (=> b!2303705 m!2730835))

(assert (=> b!2303705 m!2730837))

(declare-fun m!2730839 () Bool)

(assert (=> b!2303705 m!2730839))

(declare-fun m!2730841 () Bool)

(assert (=> b!2303704 m!2730841))

(assert (=> d!681325 d!681545))

(assert (=> d!681209 d!681305))

(declare-fun d!681547 () Bool)

(declare-fun nullableFct!461 (Regex!6743) Bool)

(assert (=> d!681547 (= (nullable!1885 (regex!4395 r!2363)) (nullableFct!461 (regex!4395 r!2363)))))

(declare-fun bs!457815 () Bool)

(assert (= bs!457815 d!681547))

(declare-fun m!2730843 () Bool)

(assert (=> bs!457815 m!2730843))

(assert (=> b!2302969 d!681547))

(declare-fun d!681549 () Bool)

(declare-fun lt!854335 () Bool)

(assert (=> d!681549 (= lt!854335 (select (content!3697 (t!205985 rules!1750)) otherR!12))))

(declare-fun e!1476328 () Bool)

(assert (=> d!681549 (= lt!854335 e!1476328)))

(declare-fun res!984949 () Bool)

(assert (=> d!681549 (=> (not res!984949) (not e!1476328))))

(assert (=> d!681549 (= res!984949 ((_ is Cons!27417) (t!205985 rules!1750)))))

(assert (=> d!681549 (= (contains!4781 (t!205985 rules!1750) otherR!12) lt!854335)))

(declare-fun b!2303712 () Bool)

(declare-fun e!1476329 () Bool)

(assert (=> b!2303712 (= e!1476328 e!1476329)))

(declare-fun res!984950 () Bool)

(assert (=> b!2303712 (=> res!984950 e!1476329)))

(assert (=> b!2303712 (= res!984950 (= (h!32818 (t!205985 rules!1750)) otherR!12))))

(declare-fun b!2303713 () Bool)

(assert (=> b!2303713 (= e!1476329 (contains!4781 (t!205985 (t!205985 rules!1750)) otherR!12))))

(assert (= (and d!681549 res!984949) b!2303712))

(assert (= (and b!2303712 (not res!984950)) b!2303713))

(assert (=> d!681549 m!2730561))

(declare-fun m!2730845 () Bool)

(assert (=> d!681549 m!2730845))

(declare-fun m!2730847 () Bool)

(assert (=> b!2303713 m!2730847))

(assert (=> b!2303301 d!681549))

(declare-fun bs!457816 () Bool)

(declare-fun d!681551 () Bool)

(assert (= bs!457816 (and d!681551 d!681461)))

(declare-fun lambda!85968 () Int)

(assert (=> bs!457816 (= (= (toValue!6205 (transformation!4395 otherR!12)) (toValue!6205 (transformation!4395 (rule!6741 (h!32819 tokens!456))))) (= lambda!85968 lambda!85967))))

(assert (=> d!681551 true))

(assert (=> d!681551 (< (dynLambda!11921 order!15283 (toValue!6205 (transformation!4395 otherR!12))) (dynLambda!11926 order!15291 lambda!85968))))

(assert (=> d!681551 (= (equivClasses!1707 (toChars!6064 (transformation!4395 otherR!12)) (toValue!6205 (transformation!4395 otherR!12))) (Forall2!718 lambda!85968))))

(declare-fun bs!457817 () Bool)

(assert (= bs!457817 d!681551))

(declare-fun m!2730849 () Bool)

(assert (=> bs!457817 m!2730849))

(assert (=> b!2303371 d!681551))

(declare-fun d!681553 () Bool)

(assert (=> d!681553 (= (inv!37046 (tag!4885 (h!32818 (t!205985 rules!1750)))) (= (mod (str.len (value!139076 (tag!4885 (h!32818 (t!205985 rules!1750))))) 2) 0))))

(assert (=> b!2303381 d!681553))

(declare-fun d!681555 () Bool)

(declare-fun res!984951 () Bool)

(declare-fun e!1476330 () Bool)

(assert (=> d!681555 (=> (not res!984951) (not e!1476330))))

(assert (=> d!681555 (= res!984951 (semiInverseModEq!1788 (toChars!6064 (transformation!4395 (h!32818 (t!205985 rules!1750)))) (toValue!6205 (transformation!4395 (h!32818 (t!205985 rules!1750))))))))

(assert (=> d!681555 (= (inv!37049 (transformation!4395 (h!32818 (t!205985 rules!1750)))) e!1476330)))

(declare-fun b!2303714 () Bool)

(assert (=> b!2303714 (= e!1476330 (equivClasses!1707 (toChars!6064 (transformation!4395 (h!32818 (t!205985 rules!1750)))) (toValue!6205 (transformation!4395 (h!32818 (t!205985 rules!1750))))))))

(assert (= (and d!681555 res!984951) b!2303714))

(declare-fun m!2730851 () Bool)

(assert (=> d!681555 m!2730851))

(declare-fun m!2730853 () Bool)

(assert (=> b!2303714 m!2730853))

(assert (=> b!2303381 d!681555))

(declare-fun bs!457819 () Bool)

(declare-fun d!681557 () Bool)

(assert (= bs!457819 (and d!681557 d!681233)))

(declare-fun lambda!85971 () Int)

(assert (=> bs!457819 (= (and (= (toChars!6064 (transformation!4395 (h!32818 rules!1750))) (toChars!6064 (transformation!4395 r!2363))) (= (toValue!6205 (transformation!4395 (h!32818 rules!1750))) (toValue!6205 (transformation!4395 r!2363)))) (= lambda!85971 lambda!85949))))

(assert (=> d!681557 true))

(assert (=> d!681557 (< (dynLambda!11923 order!15287 (toChars!6064 (transformation!4395 (h!32818 rules!1750)))) (dynLambda!11922 order!15285 lambda!85971))))

(assert (=> d!681557 true))

(assert (=> d!681557 (< (dynLambda!11921 order!15283 (toValue!6205 (transformation!4395 (h!32818 rules!1750)))) (dynLambda!11922 order!15285 lambda!85971))))

(assert (=> d!681557 (= (semiInverseModEq!1788 (toChars!6064 (transformation!4395 (h!32818 rules!1750))) (toValue!6205 (transformation!4395 (h!32818 rules!1750)))) (Forall!1101 lambda!85971))))

(declare-fun bs!457820 () Bool)

(assert (= bs!457820 d!681557))

(declare-fun m!2730885 () Bool)

(assert (=> bs!457820 m!2730885))

(assert (=> d!681203 d!681557))

(declare-fun bs!457822 () Bool)

(declare-fun d!681573 () Bool)

(assert (= bs!457822 (and d!681573 d!681417)))

(declare-fun lambda!85974 () Int)

(assert (=> bs!457822 (= lambda!85974 lambda!85964)))

(assert (=> d!681573 true))

(declare-fun lt!854344 () Bool)

(assert (=> d!681573 (= lt!854344 (rulesValidInductive!1557 thiss!16613 rules!1750))))

(assert (=> d!681573 (= lt!854344 (forall!5504 rules!1750 lambda!85974))))

(assert (=> d!681573 (= (rulesValid!1631 thiss!16613 rules!1750) lt!854344)))

(declare-fun bs!457823 () Bool)

(assert (= bs!457823 d!681573))

(assert (=> bs!457823 m!2730431))

(declare-fun m!2730897 () Bool)

(assert (=> bs!457823 m!2730897))

(assert (=> d!681221 d!681573))

(declare-fun d!681585 () Bool)

(declare-fun e!1476352 () Bool)

(assert (=> d!681585 e!1476352))

(declare-fun res!984973 () Bool)

(assert (=> d!681585 (=> (not res!984973) (not e!1476352))))

(declare-fun lt!854352 () BalanceConc!17604)

(assert (=> d!681585 (= res!984973 (= (list!10801 lt!854352) lt!854122))))

(declare-fun fromList!548 (List!27510) Conc!8938)

(assert (=> d!681585 (= lt!854352 (BalanceConc!17605 (fromList!548 lt!854122)))))

(assert (=> d!681585 (= (fromListB!1398 lt!854122) lt!854352)))

(declare-fun b!2303755 () Bool)

(assert (=> b!2303755 (= e!1476352 (isBalanced!2691 (fromList!548 lt!854122)))))

(assert (= (and d!681585 res!984973) b!2303755))

(declare-fun m!2730915 () Bool)

(assert (=> d!681585 m!2730915))

(declare-fun m!2730917 () Bool)

(assert (=> d!681585 m!2730917))

(assert (=> b!2303755 m!2730917))

(assert (=> b!2303755 m!2730917))

(declare-fun m!2730919 () Bool)

(assert (=> b!2303755 m!2730919))

(assert (=> d!681299 d!681585))

(declare-fun d!681593 () Bool)

(declare-fun lt!854353 () Int)

(assert (=> d!681593 (>= lt!854353 0)))

(declare-fun e!1476353 () Int)

(assert (=> d!681593 (= lt!854353 e!1476353)))

(declare-fun c!365251 () Bool)

(assert (=> d!681593 (= c!365251 ((_ is Nil!27416) (t!205984 otherP!12)))))

(assert (=> d!681593 (= (size!21626 (t!205984 otherP!12)) lt!854353)))

(declare-fun b!2303756 () Bool)

(assert (=> b!2303756 (= e!1476353 0)))

(declare-fun b!2303757 () Bool)

(assert (=> b!2303757 (= e!1476353 (+ 1 (size!21626 (t!205984 (t!205984 otherP!12)))))))

(assert (= (and d!681593 c!365251) b!2303756))

(assert (= (and d!681593 (not c!365251)) b!2303757))

(declare-fun m!2730921 () Bool)

(assert (=> b!2303757 m!2730921))

(assert (=> b!2303360 d!681593))

(declare-fun b!2303760 () Bool)

(declare-fun res!984974 () Bool)

(declare-fun e!1476354 () Bool)

(assert (=> b!2303760 (=> (not res!984974) (not e!1476354))))

(declare-fun lt!854354 () List!27510)

(assert (=> b!2303760 (= res!984974 (= (size!21626 lt!854354) (+ (size!21626 (t!205984 lt!854122)) (size!21626 (_2!16163 lt!854124)))))))

(declare-fun b!2303759 () Bool)

(declare-fun e!1476355 () List!27510)

(assert (=> b!2303759 (= e!1476355 (Cons!27416 (h!32817 (t!205984 lt!854122)) (++!6709 (t!205984 (t!205984 lt!854122)) (_2!16163 lt!854124))))))

(declare-fun d!681595 () Bool)

(assert (=> d!681595 e!1476354))

(declare-fun res!984975 () Bool)

(assert (=> d!681595 (=> (not res!984975) (not e!1476354))))

(assert (=> d!681595 (= res!984975 (= (content!3699 lt!854354) ((_ map or) (content!3699 (t!205984 lt!854122)) (content!3699 (_2!16163 lt!854124)))))))

(assert (=> d!681595 (= lt!854354 e!1476355)))

(declare-fun c!365252 () Bool)

(assert (=> d!681595 (= c!365252 ((_ is Nil!27416) (t!205984 lt!854122)))))

(assert (=> d!681595 (= (++!6709 (t!205984 lt!854122) (_2!16163 lt!854124)) lt!854354)))

(declare-fun b!2303758 () Bool)

(assert (=> b!2303758 (= e!1476355 (_2!16163 lt!854124))))

(declare-fun b!2303761 () Bool)

(assert (=> b!2303761 (= e!1476354 (or (not (= (_2!16163 lt!854124) Nil!27416)) (= lt!854354 (t!205984 lt!854122))))))

(assert (= (and d!681595 c!365252) b!2303758))

(assert (= (and d!681595 (not c!365252)) b!2303759))

(assert (= (and d!681595 res!984975) b!2303760))

(assert (= (and b!2303760 res!984974) b!2303761))

(declare-fun m!2730923 () Bool)

(assert (=> b!2303760 m!2730923))

(assert (=> b!2303760 m!2730471))

(assert (=> b!2303760 m!2730405))

(declare-fun m!2730925 () Bool)

(assert (=> b!2303759 m!2730925))

(declare-fun m!2730927 () Bool)

(assert (=> d!681595 m!2730927))

(assert (=> d!681595 m!2730813))

(assert (=> d!681595 m!2730413))

(assert (=> b!2303311 d!681595))

(declare-fun d!681597 () Bool)

(declare-fun lt!854355 () Int)

(assert (=> d!681597 (>= lt!854355 0)))

(declare-fun e!1476356 () Int)

(assert (=> d!681597 (= lt!854355 e!1476356)))

(declare-fun c!365253 () Bool)

(assert (=> d!681597 (= c!365253 ((_ is Nil!27416) (list!10801 (charsOf!2783 (head!5042 tokens!456)))))))

(assert (=> d!681597 (= (size!21626 (list!10801 (charsOf!2783 (head!5042 tokens!456)))) lt!854355)))

(declare-fun b!2303762 () Bool)

(assert (=> b!2303762 (= e!1476356 0)))

(declare-fun b!2303763 () Bool)

(assert (=> b!2303763 (= e!1476356 (+ 1 (size!21626 (t!205984 (list!10801 (charsOf!2783 (head!5042 tokens!456)))))))))

(assert (= (and d!681597 c!365253) b!2303762))

(assert (= (and d!681597 (not c!365253)) b!2303763))

(declare-fun m!2730929 () Bool)

(assert (=> b!2303763 m!2730929))

(assert (=> d!681331 d!681597))

(assert (=> d!681331 d!681163))

(declare-fun d!681599 () Bool)

(declare-fun lt!854358 () Int)

(assert (=> d!681599 (= lt!854358 (size!21626 (list!10803 (c!365074 (charsOf!2783 (head!5042 tokens!456))))))))

(assert (=> d!681599 (= lt!854358 (ite ((_ is Empty!8938) (c!365074 (charsOf!2783 (head!5042 tokens!456)))) 0 (ite ((_ is Leaf!13121) (c!365074 (charsOf!2783 (head!5042 tokens!456)))) (csize!18107 (c!365074 (charsOf!2783 (head!5042 tokens!456)))) (csize!18106 (c!365074 (charsOf!2783 (head!5042 tokens!456)))))))))

(assert (=> d!681599 (= (size!21630 (c!365074 (charsOf!2783 (head!5042 tokens!456)))) lt!854358)))

(declare-fun bs!457829 () Bool)

(assert (= bs!457829 d!681599))

(assert (=> bs!457829 m!2730085))

(assert (=> bs!457829 m!2730085))

(declare-fun m!2730957 () Bool)

(assert (=> bs!457829 m!2730957))

(assert (=> d!681331 d!681599))

(declare-fun d!681603 () Bool)

(assert (=> d!681603 (= (isDefined!4248 lt!854243) (not (isEmpty!15666 lt!854243)))))

(declare-fun bs!457833 () Bool)

(assert (= bs!457833 d!681603))

(assert (=> bs!457833 m!2730425))

(assert (=> b!2303339 d!681603))

(declare-fun d!681607 () Bool)

(declare-fun lt!854359 () Bool)

(assert (=> d!681607 (= lt!854359 (select (content!3697 (t!205985 rules!1750)) r!2363))))

(declare-fun e!1476357 () Bool)

(assert (=> d!681607 (= lt!854359 e!1476357)))

(declare-fun res!984976 () Bool)

(assert (=> d!681607 (=> (not res!984976) (not e!1476357))))

(assert (=> d!681607 (= res!984976 ((_ is Cons!27417) (t!205985 rules!1750)))))

(assert (=> d!681607 (= (contains!4781 (t!205985 rules!1750) r!2363) lt!854359)))

(declare-fun b!2303764 () Bool)

(declare-fun e!1476358 () Bool)

(assert (=> b!2303764 (= e!1476357 e!1476358)))

(declare-fun res!984977 () Bool)

(assert (=> b!2303764 (=> res!984977 e!1476358)))

(assert (=> b!2303764 (= res!984977 (= (h!32818 (t!205985 rules!1750)) r!2363))))

(declare-fun b!2303765 () Bool)

(assert (=> b!2303765 (= e!1476358 (contains!4781 (t!205985 (t!205985 rules!1750)) r!2363))))

(assert (= (and d!681607 res!984976) b!2303764))

(assert (= (and b!2303764 (not res!984977)) b!2303765))

(assert (=> d!681607 m!2730561))

(declare-fun m!2730961 () Bool)

(assert (=> d!681607 m!2730961))

(declare-fun m!2730963 () Bool)

(assert (=> b!2303765 m!2730963))

(assert (=> b!2303096 d!681607))

(declare-fun bs!457838 () Bool)

(declare-fun d!681609 () Bool)

(assert (= bs!457838 (and d!681609 d!681461)))

(declare-fun lambda!85979 () Int)

(assert (=> bs!457838 (= (= (toValue!6205 (transformation!4395 r!2363)) (toValue!6205 (transformation!4395 (rule!6741 (h!32819 tokens!456))))) (= lambda!85979 lambda!85967))))

(declare-fun bs!457839 () Bool)

(assert (= bs!457839 (and d!681609 d!681551)))

(assert (=> bs!457839 (= (= (toValue!6205 (transformation!4395 r!2363)) (toValue!6205 (transformation!4395 otherR!12))) (= lambda!85979 lambda!85968))))

(assert (=> d!681609 true))

(assert (=> d!681609 (< (dynLambda!11921 order!15283 (toValue!6205 (transformation!4395 r!2363))) (dynLambda!11926 order!15291 lambda!85979))))

(assert (=> d!681609 (= (equivClasses!1707 (toChars!6064 (transformation!4395 r!2363)) (toValue!6205 (transformation!4395 r!2363))) (Forall2!718 lambda!85979))))

(declare-fun bs!457840 () Bool)

(assert (= bs!457840 d!681609))

(declare-fun m!2730967 () Bool)

(assert (=> bs!457840 m!2730967))

(assert (=> b!2303299 d!681609))

(declare-fun d!681613 () Bool)

(declare-fun lt!854360 () Bool)

(assert (=> d!681613 (= lt!854360 (select (content!3697 rules!1750) (rule!6741 (_1!16163 (get!8264 lt!854243)))))))

(declare-fun e!1476366 () Bool)

(assert (=> d!681613 (= lt!854360 e!1476366)))

(declare-fun res!984983 () Bool)

(assert (=> d!681613 (=> (not res!984983) (not e!1476366))))

(assert (=> d!681613 (= res!984983 ((_ is Cons!27417) rules!1750))))

(assert (=> d!681613 (= (contains!4781 rules!1750 (rule!6741 (_1!16163 (get!8264 lt!854243)))) lt!854360)))

(declare-fun b!2303775 () Bool)

(declare-fun e!1476367 () Bool)

(assert (=> b!2303775 (= e!1476366 e!1476367)))

(declare-fun res!984984 () Bool)

(assert (=> b!2303775 (=> res!984984 e!1476367)))

(assert (=> b!2303775 (= res!984984 (= (h!32818 rules!1750) (rule!6741 (_1!16163 (get!8264 lt!854243)))))))

(declare-fun b!2303776 () Bool)

(assert (=> b!2303776 (= e!1476367 (contains!4781 (t!205985 rules!1750) (rule!6741 (_1!16163 (get!8264 lt!854243)))))))

(assert (= (and d!681613 res!984983) b!2303775))

(assert (= (and b!2303775 (not res!984984)) b!2303776))

(assert (=> d!681613 m!2730215))

(declare-fun m!2730975 () Bool)

(assert (=> d!681613 m!2730975))

(declare-fun m!2730977 () Bool)

(assert (=> b!2303776 m!2730977))

(assert (=> b!2303337 d!681613))

(assert (=> b!2303337 d!681375))

(declare-fun d!681617 () Bool)

(declare-fun lt!854361 () Int)

(assert (=> d!681617 (>= lt!854361 0)))

(declare-fun e!1476368 () Int)

(assert (=> d!681617 (= lt!854361 e!1476368)))

(declare-fun c!365256 () Bool)

(assert (=> d!681617 (= c!365256 ((_ is Nil!27416) (t!205984 lt!854122)))))

(assert (=> d!681617 (= (size!21626 (t!205984 lt!854122)) lt!854361)))

(declare-fun b!2303777 () Bool)

(assert (=> b!2303777 (= e!1476368 0)))

(declare-fun b!2303778 () Bool)

(assert (=> b!2303778 (= e!1476368 (+ 1 (size!21626 (t!205984 (t!205984 lt!854122)))))))

(assert (= (and d!681617 c!365256) b!2303777))

(assert (= (and d!681617 (not c!365256)) b!2303778))

(declare-fun m!2730979 () Bool)

(assert (=> b!2303778 m!2730979))

(assert (=> b!2303358 d!681617))

(declare-fun d!681621 () Bool)

(declare-fun charsToBigInt!0 (List!27509 Int) Int)

(assert (=> d!681621 (= (inv!15 (value!139077 (h!32819 tokens!456))) (= (charsToBigInt!0 (text!32348 (value!139077 (h!32819 tokens!456))) 0) (value!139072 (value!139077 (h!32819 tokens!456)))))))

(declare-fun bs!457842 () Bool)

(assert (= bs!457842 d!681621))

(declare-fun m!2730999 () Bool)

(assert (=> bs!457842 m!2730999))

(assert (=> b!2303062 d!681621))

(declare-fun bs!457844 () Bool)

(declare-fun d!681627 () Bool)

(assert (= bs!457844 (and d!681627 d!681233)))

(declare-fun lambda!85980 () Int)

(assert (=> bs!457844 (= lambda!85980 lambda!85949)))

(declare-fun bs!457845 () Bool)

(assert (= bs!457845 (and d!681627 d!681557)))

(assert (=> bs!457845 (= (and (= (toChars!6064 (transformation!4395 r!2363)) (toChars!6064 (transformation!4395 (h!32818 rules!1750)))) (= (toValue!6205 (transformation!4395 r!2363)) (toValue!6205 (transformation!4395 (h!32818 rules!1750))))) (= lambda!85980 lambda!85971))))

(assert (=> d!681627 true))

(assert (=> d!681627 (< (dynLambda!11923 order!15287 (toChars!6064 (transformation!4395 r!2363))) (dynLambda!11922 order!15285 lambda!85980))))

(assert (=> d!681627 true))

(assert (=> d!681627 (< (dynLambda!11921 order!15283 (toValue!6205 (transformation!4395 r!2363))) (dynLambda!11922 order!15285 lambda!85980))))

(assert (=> d!681627 (= (semiInverseModEq!1788 (toChars!6064 (transformation!4395 r!2363)) (toValue!6205 (transformation!4395 r!2363))) (Forall!1101 lambda!85980))))

(declare-fun bs!457848 () Bool)

(assert (= bs!457848 d!681627))

(declare-fun m!2731007 () Bool)

(assert (=> bs!457848 m!2731007))

(assert (=> d!681303 d!681627))

(declare-fun d!681633 () Bool)

(assert (=> d!681633 (= (head!5044 lt!854122) (h!32817 lt!854122))))

(assert (=> b!2303350 d!681633))

(declare-fun d!681635 () Bool)

(assert (=> d!681635 (= (head!5044 lt!854127) (h!32817 lt!854127))))

(assert (=> b!2303350 d!681635))

(declare-fun b!2303784 () Bool)

(declare-fun e!1476374 () Bool)

(assert (=> b!2303784 (= e!1476374 (= (head!5044 (tail!3329 (list!10801 (charsOf!2783 (head!5042 tokens!456))))) (c!365075 (derivativeStep!1545 (regex!4395 r!2363) (head!5044 (list!10801 (charsOf!2783 (head!5042 tokens!456))))))))))

(declare-fun b!2303785 () Bool)

(declare-fun e!1476378 () Bool)

(assert (=> b!2303785 (= e!1476378 (matchR!3000 (derivativeStep!1545 (derivativeStep!1545 (regex!4395 r!2363) (head!5044 (list!10801 (charsOf!2783 (head!5042 tokens!456))))) (head!5044 (tail!3329 (list!10801 (charsOf!2783 (head!5042 tokens!456)))))) (tail!3329 (tail!3329 (list!10801 (charsOf!2783 (head!5042 tokens!456)))))))))

(declare-fun b!2303786 () Bool)

(declare-fun e!1476373 () Bool)

(declare-fun lt!854364 () Bool)

(declare-fun call!137109 () Bool)

(assert (=> b!2303786 (= e!1476373 (= lt!854364 call!137109))))

(declare-fun b!2303787 () Bool)

(declare-fun res!984994 () Bool)

(assert (=> b!2303787 (=> (not res!984994) (not e!1476374))))

(assert (=> b!2303787 (= res!984994 (isEmpty!15661 (tail!3329 (tail!3329 (list!10801 (charsOf!2783 (head!5042 tokens!456)))))))))

(declare-fun b!2303788 () Bool)

(declare-fun e!1476372 () Bool)

(assert (=> b!2303788 (= e!1476372 (not (= (head!5044 (tail!3329 (list!10801 (charsOf!2783 (head!5042 tokens!456))))) (c!365075 (derivativeStep!1545 (regex!4395 r!2363) (head!5044 (list!10801 (charsOf!2783 (head!5042 tokens!456)))))))))))

(declare-fun b!2303789 () Bool)

(declare-fun res!984993 () Bool)

(declare-fun e!1476376 () Bool)

(assert (=> b!2303789 (=> res!984993 e!1476376)))

(assert (=> b!2303789 (= res!984993 (not ((_ is ElementMatch!6743) (derivativeStep!1545 (regex!4395 r!2363) (head!5044 (list!10801 (charsOf!2783 (head!5042 tokens!456))))))))))

(declare-fun e!1476377 () Bool)

(assert (=> b!2303789 (= e!1476377 e!1476376)))

(declare-fun b!2303790 () Bool)

(declare-fun res!984987 () Bool)

(assert (=> b!2303790 (=> (not res!984987) (not e!1476374))))

(assert (=> b!2303790 (= res!984987 (not call!137109))))

(declare-fun b!2303791 () Bool)

(declare-fun res!984991 () Bool)

(assert (=> b!2303791 (=> res!984991 e!1476372)))

(assert (=> b!2303791 (= res!984991 (not (isEmpty!15661 (tail!3329 (tail!3329 (list!10801 (charsOf!2783 (head!5042 tokens!456))))))))))

(declare-fun b!2303792 () Bool)

(declare-fun e!1476375 () Bool)

(assert (=> b!2303792 (= e!1476376 e!1476375)))

(declare-fun res!984990 () Bool)

(assert (=> b!2303792 (=> (not res!984990) (not e!1476375))))

(assert (=> b!2303792 (= res!984990 (not lt!854364))))

(declare-fun d!681637 () Bool)

(assert (=> d!681637 e!1476373))

(declare-fun c!365258 () Bool)

(assert (=> d!681637 (= c!365258 ((_ is EmptyExpr!6743) (derivativeStep!1545 (regex!4395 r!2363) (head!5044 (list!10801 (charsOf!2783 (head!5042 tokens!456)))))))))

(assert (=> d!681637 (= lt!854364 e!1476378)))

(declare-fun c!365260 () Bool)

(assert (=> d!681637 (= c!365260 (isEmpty!15661 (tail!3329 (list!10801 (charsOf!2783 (head!5042 tokens!456))))))))

(assert (=> d!681637 (validRegex!2547 (derivativeStep!1545 (regex!4395 r!2363) (head!5044 (list!10801 (charsOf!2783 (head!5042 tokens!456))))))))

(assert (=> d!681637 (= (matchR!3000 (derivativeStep!1545 (regex!4395 r!2363) (head!5044 (list!10801 (charsOf!2783 (head!5042 tokens!456))))) (tail!3329 (list!10801 (charsOf!2783 (head!5042 tokens!456))))) lt!854364)))

(declare-fun b!2303793 () Bool)

(assert (=> b!2303793 (= e!1476377 (not lt!854364))))

(declare-fun b!2303794 () Bool)

(assert (=> b!2303794 (= e!1476378 (nullable!1885 (derivativeStep!1545 (regex!4395 r!2363) (head!5044 (list!10801 (charsOf!2783 (head!5042 tokens!456)))))))))

(declare-fun b!2303795 () Bool)

(declare-fun res!984988 () Bool)

(assert (=> b!2303795 (=> res!984988 e!1476376)))

(assert (=> b!2303795 (= res!984988 e!1476374)))

(declare-fun res!984989 () Bool)

(assert (=> b!2303795 (=> (not res!984989) (not e!1476374))))

(assert (=> b!2303795 (= res!984989 lt!854364)))

(declare-fun b!2303796 () Bool)

(assert (=> b!2303796 (= e!1476373 e!1476377)))

(declare-fun c!365259 () Bool)

(assert (=> b!2303796 (= c!365259 ((_ is EmptyLang!6743) (derivativeStep!1545 (regex!4395 r!2363) (head!5044 (list!10801 (charsOf!2783 (head!5042 tokens!456)))))))))

(declare-fun bm!137104 () Bool)

(assert (=> bm!137104 (= call!137109 (isEmpty!15661 (tail!3329 (list!10801 (charsOf!2783 (head!5042 tokens!456))))))))

(declare-fun b!2303797 () Bool)

(assert (=> b!2303797 (= e!1476375 e!1476372)))

(declare-fun res!984992 () Bool)

(assert (=> b!2303797 (=> res!984992 e!1476372)))

(assert (=> b!2303797 (= res!984992 call!137109)))

(assert (= (and d!681637 c!365260) b!2303794))

(assert (= (and d!681637 (not c!365260)) b!2303785))

(assert (= (and d!681637 c!365258) b!2303786))

(assert (= (and d!681637 (not c!365258)) b!2303796))

(assert (= (and b!2303796 c!365259) b!2303793))

(assert (= (and b!2303796 (not c!365259)) b!2303789))

(assert (= (and b!2303789 (not res!984993)) b!2303795))

(assert (= (and b!2303795 res!984989) b!2303790))

(assert (= (and b!2303790 res!984987) b!2303787))

(assert (= (and b!2303787 res!984994) b!2303784))

(assert (= (and b!2303795 (not res!984988)) b!2303792))

(assert (= (and b!2303792 res!984990) b!2303797))

(assert (= (and b!2303797 (not res!984992)) b!2303791))

(assert (= (and b!2303791 (not res!984991)) b!2303788))

(assert (= (or b!2303786 b!2303790 b!2303797) bm!137104))

(assert (=> b!2303791 m!2730069))

(declare-fun m!2731023 () Bool)

(assert (=> b!2303791 m!2731023))

(assert (=> b!2303791 m!2731023))

(declare-fun m!2731025 () Bool)

(assert (=> b!2303791 m!2731025))

(assert (=> b!2303785 m!2730069))

(declare-fun m!2731027 () Bool)

(assert (=> b!2303785 m!2731027))

(assert (=> b!2303785 m!2730075))

(assert (=> b!2303785 m!2731027))

(declare-fun m!2731029 () Bool)

(assert (=> b!2303785 m!2731029))

(assert (=> b!2303785 m!2730069))

(assert (=> b!2303785 m!2731023))

(assert (=> b!2303785 m!2731029))

(assert (=> b!2303785 m!2731023))

(declare-fun m!2731031 () Bool)

(assert (=> b!2303785 m!2731031))

(assert (=> b!2303787 m!2730069))

(assert (=> b!2303787 m!2731023))

(assert (=> b!2303787 m!2731023))

(assert (=> b!2303787 m!2731025))

(assert (=> bm!137104 m!2730069))

(assert (=> bm!137104 m!2730071))

(assert (=> b!2303788 m!2730069))

(assert (=> b!2303788 m!2731027))

(assert (=> b!2303794 m!2730075))

(declare-fun m!2731033 () Bool)

(assert (=> b!2303794 m!2731033))

(assert (=> b!2303784 m!2730069))

(assert (=> b!2303784 m!2731027))

(assert (=> d!681637 m!2730069))

(assert (=> d!681637 m!2730071))

(assert (=> d!681637 m!2730075))

(declare-fun m!2731035 () Bool)

(assert (=> d!681637 m!2731035))

(assert (=> b!2302960 d!681637))

(declare-fun bm!137114 () Bool)

(declare-fun call!137122 () Regex!6743)

(declare-fun call!137120 () Regex!6743)

(assert (=> bm!137114 (= call!137122 call!137120)))

(declare-fun c!365278 () Bool)

(declare-fun c!365276 () Bool)

(declare-fun bm!137115 () Bool)

(assert (=> bm!137115 (= call!137120 (derivativeStep!1545 (ite c!365276 (regTwo!13999 (regex!4395 r!2363)) (ite c!365278 (reg!7072 (regex!4395 r!2363)) (regOne!13998 (regex!4395 r!2363)))) (head!5044 (list!10801 (charsOf!2783 (head!5042 tokens!456))))))))

(declare-fun b!2303842 () Bool)

(declare-fun e!1476405 () Regex!6743)

(assert (=> b!2303842 (= e!1476405 (ite (= (head!5044 (list!10801 (charsOf!2783 (head!5042 tokens!456)))) (c!365075 (regex!4395 r!2363))) EmptyExpr!6743 EmptyLang!6743))))

(declare-fun b!2303843 () Bool)

(declare-fun e!1476406 () Regex!6743)

(declare-fun call!137119 () Regex!6743)

(assert (=> b!2303843 (= e!1476406 (Union!6743 call!137119 call!137120))))

(declare-fun bm!137116 () Bool)

(declare-fun call!137121 () Regex!6743)

(assert (=> bm!137116 (= call!137121 call!137122)))

(declare-fun b!2303844 () Bool)

(declare-fun e!1476404 () Regex!6743)

(assert (=> b!2303844 (= e!1476404 (Union!6743 (Concat!11301 call!137121 (regTwo!13998 (regex!4395 r!2363))) EmptyLang!6743))))

(declare-fun b!2303846 () Bool)

(declare-fun e!1476408 () Regex!6743)

(assert (=> b!2303846 (= e!1476408 e!1476405)))

(declare-fun c!365275 () Bool)

(assert (=> b!2303846 (= c!365275 ((_ is ElementMatch!6743) (regex!4395 r!2363)))))

(declare-fun b!2303847 () Bool)

(assert (=> b!2303847 (= c!365276 ((_ is Union!6743) (regex!4395 r!2363)))))

(assert (=> b!2303847 (= e!1476405 e!1476406)))

(declare-fun bm!137117 () Bool)

(assert (=> bm!137117 (= call!137119 (derivativeStep!1545 (ite c!365276 (regOne!13999 (regex!4395 r!2363)) (regTwo!13998 (regex!4395 r!2363))) (head!5044 (list!10801 (charsOf!2783 (head!5042 tokens!456))))))))

(declare-fun b!2303848 () Bool)

(declare-fun c!365279 () Bool)

(assert (=> b!2303848 (= c!365279 (nullable!1885 (regOne!13998 (regex!4395 r!2363))))))

(declare-fun e!1476407 () Regex!6743)

(assert (=> b!2303848 (= e!1476407 e!1476404)))

(declare-fun b!2303849 () Bool)

(assert (=> b!2303849 (= e!1476408 EmptyLang!6743)))

(declare-fun d!681647 () Bool)

(declare-fun lt!854372 () Regex!6743)

(assert (=> d!681647 (validRegex!2547 lt!854372)))

(assert (=> d!681647 (= lt!854372 e!1476408)))

(declare-fun c!365277 () Bool)

(assert (=> d!681647 (= c!365277 (or ((_ is EmptyExpr!6743) (regex!4395 r!2363)) ((_ is EmptyLang!6743) (regex!4395 r!2363))))))

(assert (=> d!681647 (validRegex!2547 (regex!4395 r!2363))))

(assert (=> d!681647 (= (derivativeStep!1545 (regex!4395 r!2363) (head!5044 (list!10801 (charsOf!2783 (head!5042 tokens!456))))) lt!854372)))

(declare-fun b!2303845 () Bool)

(assert (=> b!2303845 (= e!1476407 (Concat!11301 call!137122 (regex!4395 r!2363)))))

(declare-fun b!2303850 () Bool)

(assert (=> b!2303850 (= e!1476406 e!1476407)))

(assert (=> b!2303850 (= c!365278 ((_ is Star!6743) (regex!4395 r!2363)))))

(declare-fun b!2303851 () Bool)

(assert (=> b!2303851 (= e!1476404 (Union!6743 (Concat!11301 call!137121 (regTwo!13998 (regex!4395 r!2363))) call!137119))))

(assert (= (and d!681647 c!365277) b!2303849))

(assert (= (and d!681647 (not c!365277)) b!2303846))

(assert (= (and b!2303846 c!365275) b!2303842))

(assert (= (and b!2303846 (not c!365275)) b!2303847))

(assert (= (and b!2303847 c!365276) b!2303843))

(assert (= (and b!2303847 (not c!365276)) b!2303850))

(assert (= (and b!2303850 c!365278) b!2303845))

(assert (= (and b!2303850 (not c!365278)) b!2303848))

(assert (= (and b!2303848 c!365279) b!2303851))

(assert (= (and b!2303848 (not c!365279)) b!2303844))

(assert (= (or b!2303851 b!2303844) bm!137116))

(assert (= (or b!2303845 bm!137116) bm!137114))

(assert (= (or b!2303843 b!2303851) bm!137117))

(assert (= (or b!2303843 bm!137114) bm!137115))

(assert (=> bm!137115 m!2730073))

(declare-fun m!2731069 () Bool)

(assert (=> bm!137115 m!2731069))

(assert (=> bm!137117 m!2730073))

(declare-fun m!2731071 () Bool)

(assert (=> bm!137117 m!2731071))

(declare-fun m!2731073 () Bool)

(assert (=> b!2303848 m!2731073))

(declare-fun m!2731075 () Bool)

(assert (=> d!681647 m!2731075))

(assert (=> d!681647 m!2730083))

(assert (=> b!2302960 d!681647))

(assert (=> b!2302960 d!681379))

(declare-fun d!681659 () Bool)

(assert (=> d!681659 (= (tail!3329 (list!10801 (charsOf!2783 (head!5042 tokens!456)))) (t!205984 (list!10801 (charsOf!2783 (head!5042 tokens!456)))))))

(assert (=> b!2302960 d!681659))

(declare-fun d!681661 () Bool)

(declare-fun lt!854373 () Int)

(assert (=> d!681661 (>= lt!854373 0)))

(declare-fun e!1476409 () Int)

(assert (=> d!681661 (= lt!854373 e!1476409)))

(declare-fun c!365280 () Bool)

(assert (=> d!681661 (= c!365280 ((_ is Nil!27416) (originalCharacters!5165 (h!32819 tokens!456))))))

(assert (=> d!681661 (= (size!21626 (originalCharacters!5165 (h!32819 tokens!456))) lt!854373)))

(declare-fun b!2303852 () Bool)

(assert (=> b!2303852 (= e!1476409 0)))

(declare-fun b!2303853 () Bool)

(assert (=> b!2303853 (= e!1476409 (+ 1 (size!21626 (t!205984 (originalCharacters!5165 (h!32819 tokens!456))))))))

(assert (= (and d!681661 c!365280) b!2303852))

(assert (= (and d!681661 (not c!365280)) b!2303853))

(declare-fun m!2731077 () Bool)

(assert (=> b!2303853 m!2731077))

(assert (=> b!2303103 d!681661))

(assert (=> d!681215 d!681213))

(declare-fun d!681663 () Bool)

(assert (=> d!681663 (ruleValid!1485 thiss!16613 otherR!12)))

(assert (=> d!681663 true))

(declare-fun _$65!1183 () Unit!40319)

(assert (=> d!681663 (= (choose!13453 thiss!16613 otherR!12 rules!1750) _$65!1183)))

(declare-fun bs!457853 () Bool)

(assert (= bs!457853 d!681663))

(assert (=> bs!457853 m!2729963))

(assert (=> d!681215 d!681663))

(assert (=> d!681215 d!681305))

(declare-fun bs!457854 () Bool)

(declare-fun d!681665 () Bool)

(assert (= bs!457854 (and d!681665 d!681461)))

(declare-fun lambda!85982 () Int)

(assert (=> bs!457854 (= (= (toValue!6205 (transformation!4395 (h!32818 rules!1750))) (toValue!6205 (transformation!4395 (rule!6741 (h!32819 tokens!456))))) (= lambda!85982 lambda!85967))))

(declare-fun bs!457855 () Bool)

(assert (= bs!457855 (and d!681665 d!681551)))

(assert (=> bs!457855 (= (= (toValue!6205 (transformation!4395 (h!32818 rules!1750))) (toValue!6205 (transformation!4395 otherR!12))) (= lambda!85982 lambda!85968))))

(declare-fun bs!457856 () Bool)

(assert (= bs!457856 (and d!681665 d!681609)))

(assert (=> bs!457856 (= (= (toValue!6205 (transformation!4395 (h!32818 rules!1750))) (toValue!6205 (transformation!4395 r!2363))) (= lambda!85982 lambda!85979))))

(assert (=> d!681665 true))

(assert (=> d!681665 (< (dynLambda!11921 order!15283 (toValue!6205 (transformation!4395 (h!32818 rules!1750)))) (dynLambda!11926 order!15291 lambda!85982))))

(assert (=> d!681665 (= (equivClasses!1707 (toChars!6064 (transformation!4395 (h!32818 rules!1750))) (toValue!6205 (transformation!4395 (h!32818 rules!1750)))) (Forall2!718 lambda!85982))))

(declare-fun bs!457857 () Bool)

(assert (= bs!457857 d!681665))

(declare-fun m!2731079 () Bool)

(assert (=> bs!457857 m!2731079))

(assert (=> b!2303048 d!681665))

(declare-fun d!681667 () Bool)

(assert (=> d!681667 (= (isEmpty!15661 (tail!3329 (list!10801 (charsOf!2783 (head!5042 tokens!456))))) ((_ is Nil!27416) (tail!3329 (list!10801 (charsOf!2783 (head!5042 tokens!456))))))))

(assert (=> b!2302962 d!681667))

(assert (=> b!2302962 d!681659))

(declare-fun bs!457858 () Bool)

(declare-fun d!681669 () Bool)

(assert (= bs!457858 (and d!681669 d!681233)))

(declare-fun lambda!85983 () Int)

(assert (=> bs!457858 (= (and (= (toChars!6064 (transformation!4395 otherR!12)) (toChars!6064 (transformation!4395 r!2363))) (= (toValue!6205 (transformation!4395 otherR!12)) (toValue!6205 (transformation!4395 r!2363)))) (= lambda!85983 lambda!85949))))

(declare-fun bs!457859 () Bool)

(assert (= bs!457859 (and d!681669 d!681557)))

(assert (=> bs!457859 (= (and (= (toChars!6064 (transformation!4395 otherR!12)) (toChars!6064 (transformation!4395 (h!32818 rules!1750)))) (= (toValue!6205 (transformation!4395 otherR!12)) (toValue!6205 (transformation!4395 (h!32818 rules!1750))))) (= lambda!85983 lambda!85971))))

(declare-fun bs!457860 () Bool)

(assert (= bs!457860 (and d!681669 d!681627)))

(assert (=> bs!457860 (= (and (= (toChars!6064 (transformation!4395 otherR!12)) (toChars!6064 (transformation!4395 r!2363))) (= (toValue!6205 (transformation!4395 otherR!12)) (toValue!6205 (transformation!4395 r!2363)))) (= lambda!85983 lambda!85980))))

(assert (=> d!681669 true))

(assert (=> d!681669 (< (dynLambda!11923 order!15287 (toChars!6064 (transformation!4395 otherR!12))) (dynLambda!11922 order!15285 lambda!85983))))

(assert (=> d!681669 true))

(assert (=> d!681669 (< (dynLambda!11921 order!15283 (toValue!6205 (transformation!4395 otherR!12))) (dynLambda!11922 order!15285 lambda!85983))))

(assert (=> d!681669 (= (semiInverseModEq!1788 (toChars!6064 (transformation!4395 otherR!12)) (toValue!6205 (transformation!4395 otherR!12))) (Forall!1101 lambda!85983))))

(declare-fun bs!457861 () Bool)

(assert (= bs!457861 d!681669))

(declare-fun m!2731081 () Bool)

(assert (=> bs!457861 m!2731081))

(assert (=> d!681337 d!681669))

(declare-fun b!2303854 () Bool)

(declare-fun res!985011 () Bool)

(declare-fun e!1476412 () Bool)

(assert (=> b!2303854 (=> (not res!985011) (not e!1476412))))

(declare-fun lt!854374 () Option!5391)

(assert (=> b!2303854 (= res!985011 (= (value!139077 (_1!16163 (get!8264 lt!854374))) (apply!6657 (transformation!4395 (rule!6741 (_1!16163 (get!8264 lt!854374)))) (seqFromList!3099 (originalCharacters!5165 (_1!16163 (get!8264 lt!854374)))))))))

(declare-fun b!2303855 () Bool)

(declare-fun res!985017 () Bool)

(assert (=> b!2303855 (=> (not res!985017) (not e!1476412))))

(assert (=> b!2303855 (= res!985017 (matchR!3000 (regex!4395 (rule!6741 (_1!16163 (get!8264 lt!854374)))) (list!10801 (charsOf!2783 (_1!16163 (get!8264 lt!854374))))))))

(declare-fun b!2303856 () Bool)

(declare-fun res!985014 () Bool)

(assert (=> b!2303856 (=> (not res!985014) (not e!1476412))))

(assert (=> b!2303856 (= res!985014 (= (++!6709 (list!10801 (charsOf!2783 (_1!16163 (get!8264 lt!854374)))) (_2!16163 (get!8264 lt!854374))) input!1722))))

(declare-fun b!2303857 () Bool)

(declare-fun e!1476411 () Option!5391)

(declare-fun lt!854378 () Option!5391)

(declare-fun lt!854375 () Option!5391)

(assert (=> b!2303857 (= e!1476411 (ite (and ((_ is None!5390) lt!854378) ((_ is None!5390) lt!854375)) None!5390 (ite ((_ is None!5390) lt!854375) lt!854378 (ite ((_ is None!5390) lt!854378) lt!854375 (ite (>= (size!21624 (_1!16163 (v!30490 lt!854378))) (size!21624 (_1!16163 (v!30490 lt!854375)))) lt!854378 lt!854375)))))))

(declare-fun call!137123 () Option!5391)

(assert (=> b!2303857 (= lt!854378 call!137123)))

(assert (=> b!2303857 (= lt!854375 (maxPrefix!2248 thiss!16613 (t!205985 (t!205985 rules!1750)) input!1722))))

(declare-fun d!681671 () Bool)

(declare-fun e!1476410 () Bool)

(assert (=> d!681671 e!1476410))

(declare-fun res!985012 () Bool)

(assert (=> d!681671 (=> res!985012 e!1476410)))

(assert (=> d!681671 (= res!985012 (isEmpty!15666 lt!854374))))

(assert (=> d!681671 (= lt!854374 e!1476411)))

(declare-fun c!365281 () Bool)

(assert (=> d!681671 (= c!365281 (and ((_ is Cons!27417) (t!205985 rules!1750)) ((_ is Nil!27417) (t!205985 (t!205985 rules!1750)))))))

(declare-fun lt!854377 () Unit!40319)

(declare-fun lt!854376 () Unit!40319)

(assert (=> d!681671 (= lt!854377 lt!854376)))

(assert (=> d!681671 (isPrefix!2385 input!1722 input!1722)))

(assert (=> d!681671 (= lt!854376 (lemmaIsPrefixRefl!1515 input!1722 input!1722))))

(assert (=> d!681671 (rulesValidInductive!1557 thiss!16613 (t!205985 rules!1750))))

(assert (=> d!681671 (= (maxPrefix!2248 thiss!16613 (t!205985 rules!1750) input!1722) lt!854374)))

(declare-fun b!2303858 () Bool)

(declare-fun res!985013 () Bool)

(assert (=> b!2303858 (=> (not res!985013) (not e!1476412))))

(assert (=> b!2303858 (= res!985013 (< (size!21626 (_2!16163 (get!8264 lt!854374))) (size!21626 input!1722)))))

(declare-fun b!2303859 () Bool)

(assert (=> b!2303859 (= e!1476412 (contains!4781 (t!205985 rules!1750) (rule!6741 (_1!16163 (get!8264 lt!854374)))))))

(declare-fun b!2303860 () Bool)

(declare-fun res!985015 () Bool)

(assert (=> b!2303860 (=> (not res!985015) (not e!1476412))))

(assert (=> b!2303860 (= res!985015 (= (list!10801 (charsOf!2783 (_1!16163 (get!8264 lt!854374)))) (originalCharacters!5165 (_1!16163 (get!8264 lt!854374)))))))

(declare-fun bm!137118 () Bool)

(assert (=> bm!137118 (= call!137123 (maxPrefixOneRule!1418 thiss!16613 (h!32818 (t!205985 rules!1750)) input!1722))))

(declare-fun b!2303861 () Bool)

(assert (=> b!2303861 (= e!1476410 e!1476412)))

(declare-fun res!985016 () Bool)

(assert (=> b!2303861 (=> (not res!985016) (not e!1476412))))

(assert (=> b!2303861 (= res!985016 (isDefined!4248 lt!854374))))

(declare-fun b!2303862 () Bool)

(assert (=> b!2303862 (= e!1476411 call!137123)))

(assert (= (and d!681671 c!365281) b!2303862))

(assert (= (and d!681671 (not c!365281)) b!2303857))

(assert (= (or b!2303862 b!2303857) bm!137118))

(assert (= (and d!681671 (not res!985012)) b!2303861))

(assert (= (and b!2303861 res!985016) b!2303860))

(assert (= (and b!2303860 res!985015) b!2303858))

(assert (= (and b!2303858 res!985013) b!2303856))

(assert (= (and b!2303856 res!985014) b!2303854))

(assert (= (and b!2303854 res!985011) b!2303855))

(assert (= (and b!2303855 res!985017) b!2303859))

(declare-fun m!2731083 () Bool)

(assert (=> b!2303858 m!2731083))

(declare-fun m!2731085 () Bool)

(assert (=> b!2303858 m!2731085))

(assert (=> b!2303858 m!2730419))

(assert (=> b!2303854 m!2731083))

(declare-fun m!2731087 () Bool)

(assert (=> b!2303854 m!2731087))

(assert (=> b!2303854 m!2731087))

(declare-fun m!2731089 () Bool)

(assert (=> b!2303854 m!2731089))

(declare-fun m!2731091 () Bool)

(assert (=> d!681671 m!2731091))

(assert (=> d!681671 m!2730427))

(assert (=> d!681671 m!2730429))

(assert (=> d!681671 m!2730629))

(declare-fun m!2731093 () Bool)

(assert (=> b!2303861 m!2731093))

(assert (=> b!2303860 m!2731083))

(declare-fun m!2731095 () Bool)

(assert (=> b!2303860 m!2731095))

(assert (=> b!2303860 m!2731095))

(declare-fun m!2731097 () Bool)

(assert (=> b!2303860 m!2731097))

(assert (=> b!2303855 m!2731083))

(assert (=> b!2303855 m!2731095))

(assert (=> b!2303855 m!2731095))

(assert (=> b!2303855 m!2731097))

(assert (=> b!2303855 m!2731097))

(declare-fun m!2731099 () Bool)

(assert (=> b!2303855 m!2731099))

(assert (=> b!2303856 m!2731083))

(assert (=> b!2303856 m!2731095))

(assert (=> b!2303856 m!2731095))

(assert (=> b!2303856 m!2731097))

(assert (=> b!2303856 m!2731097))

(declare-fun m!2731101 () Bool)

(assert (=> b!2303856 m!2731101))

(declare-fun m!2731103 () Bool)

(assert (=> bm!137118 m!2731103))

(assert (=> b!2303859 m!2731083))

(declare-fun m!2731105 () Bool)

(assert (=> b!2303859 m!2731105))

(declare-fun m!2731107 () Bool)

(assert (=> b!2303857 m!2731107))

(assert (=> b!2303335 d!681671))

(declare-fun d!681673 () Bool)

(declare-fun lt!854379 () Int)

(assert (=> d!681673 (>= lt!854379 0)))

(declare-fun e!1476413 () Int)

(assert (=> d!681673 (= lt!854379 e!1476413)))

(declare-fun c!365282 () Bool)

(assert (=> d!681673 (= c!365282 ((_ is Nil!27416) lt!854127))))

(assert (=> d!681673 (= (size!21626 lt!854127) lt!854379)))

(declare-fun b!2303863 () Bool)

(assert (=> b!2303863 (= e!1476413 0)))

(declare-fun b!2303864 () Bool)

(assert (=> b!2303864 (= e!1476413 (+ 1 (size!21626 (t!205984 lt!854127))))))

(assert (= (and d!681673 c!365282) b!2303863))

(assert (= (and d!681673 (not c!365282)) b!2303864))

(declare-fun m!2731109 () Bool)

(assert (=> b!2303864 m!2731109))

(assert (=> b!2303352 d!681673))

(assert (=> b!2303352 d!681321))

(declare-fun d!681675 () Bool)

(assert (=> d!681675 (= (list!10800 (_1!16161 lt!854187)) (list!10804 (c!365076 (_1!16161 lt!854187))))))

(declare-fun bs!457862 () Bool)

(assert (= bs!457862 d!681675))

(declare-fun m!2731111 () Bool)

(assert (=> bs!457862 m!2731111))

(assert (=> b!2303044 d!681675))

(assert (=> b!2303044 d!681423))

(assert (=> b!2303044 d!681443))

(declare-fun b!2303868 () Bool)

(declare-fun e!1476415 () List!27510)

(assert (=> b!2303868 (= e!1476415 (++!6709 (list!10803 (left!20772 (c!365074 (charsOf!2783 (head!5042 tokens!456))))) (list!10803 (right!21102 (c!365074 (charsOf!2783 (head!5042 tokens!456)))))))))

(declare-fun b!2303866 () Bool)

(declare-fun e!1476414 () List!27510)

(assert (=> b!2303866 (= e!1476414 e!1476415)))

(declare-fun c!365284 () Bool)

(assert (=> b!2303866 (= c!365284 ((_ is Leaf!13121) (c!365074 (charsOf!2783 (head!5042 tokens!456)))))))

(declare-fun d!681677 () Bool)

(declare-fun c!365283 () Bool)

(assert (=> d!681677 (= c!365283 ((_ is Empty!8938) (c!365074 (charsOf!2783 (head!5042 tokens!456)))))))

(assert (=> d!681677 (= (list!10803 (c!365074 (charsOf!2783 (head!5042 tokens!456)))) e!1476414)))

(declare-fun b!2303867 () Bool)

(assert (=> b!2303867 (= e!1476415 (list!10808 (xs!11880 (c!365074 (charsOf!2783 (head!5042 tokens!456))))))))

(declare-fun b!2303865 () Bool)

(assert (=> b!2303865 (= e!1476414 Nil!27416)))

(assert (= (and d!681677 c!365283) b!2303865))

(assert (= (and d!681677 (not c!365283)) b!2303866))

(assert (= (and b!2303866 c!365284) b!2303867))

(assert (= (and b!2303866 (not c!365284)) b!2303868))

(declare-fun m!2731113 () Bool)

(assert (=> b!2303868 m!2731113))

(declare-fun m!2731115 () Bool)

(assert (=> b!2303868 m!2731115))

(assert (=> b!2303868 m!2731113))

(assert (=> b!2303868 m!2731115))

(declare-fun m!2731117 () Bool)

(assert (=> b!2303868 m!2731117))

(declare-fun m!2731119 () Bool)

(assert (=> b!2303867 m!2731119))

(assert (=> d!681163 d!681677))

(declare-fun d!681679 () Bool)

(assert (=> d!681679 (= (inv!37046 (tag!4885 (rule!6741 (h!32819 (t!205986 tokens!456))))) (= (mod (str.len (value!139076 (tag!4885 (rule!6741 (h!32819 (t!205986 tokens!456)))))) 2) 0))))

(assert (=> b!2303420 d!681679))

(declare-fun d!681681 () Bool)

(declare-fun res!985018 () Bool)

(declare-fun e!1476416 () Bool)

(assert (=> d!681681 (=> (not res!985018) (not e!1476416))))

(assert (=> d!681681 (= res!985018 (semiInverseModEq!1788 (toChars!6064 (transformation!4395 (rule!6741 (h!32819 (t!205986 tokens!456))))) (toValue!6205 (transformation!4395 (rule!6741 (h!32819 (t!205986 tokens!456)))))))))

(assert (=> d!681681 (= (inv!37049 (transformation!4395 (rule!6741 (h!32819 (t!205986 tokens!456))))) e!1476416)))

(declare-fun b!2303869 () Bool)

(assert (=> b!2303869 (= e!1476416 (equivClasses!1707 (toChars!6064 (transformation!4395 (rule!6741 (h!32819 (t!205986 tokens!456))))) (toValue!6205 (transformation!4395 (rule!6741 (h!32819 (t!205986 tokens!456)))))))))

(assert (= (and d!681681 res!985018) b!2303869))

(declare-fun m!2731121 () Bool)

(assert (=> d!681681 m!2731121))

(declare-fun m!2731123 () Bool)

(assert (=> b!2303869 m!2731123))

(assert (=> b!2303420 d!681681))

(declare-fun b!2303870 () Bool)

(declare-fun e!1476418 () Bool)

(assert (=> b!2303870 (= e!1476418 (inv!17 (dynLambda!11920 (toValue!6205 (transformation!4395 r!2363)) lt!854134)))))

(declare-fun d!681683 () Bool)

(declare-fun c!365286 () Bool)

(assert (=> d!681683 (= c!365286 ((_ is IntegerValue!13671) (dynLambda!11920 (toValue!6205 (transformation!4395 r!2363)) lt!854134)))))

(declare-fun e!1476419 () Bool)

(assert (=> d!681683 (= (inv!21 (dynLambda!11920 (toValue!6205 (transformation!4395 r!2363)) lt!854134)) e!1476419)))

(declare-fun b!2303871 () Bool)

(assert (=> b!2303871 (= e!1476419 e!1476418)))

(declare-fun c!365285 () Bool)

(assert (=> b!2303871 (= c!365285 ((_ is IntegerValue!13672) (dynLambda!11920 (toValue!6205 (transformation!4395 r!2363)) lt!854134)))))

(declare-fun b!2303872 () Bool)

(declare-fun res!985019 () Bool)

(declare-fun e!1476417 () Bool)

(assert (=> b!2303872 (=> res!985019 e!1476417)))

(assert (=> b!2303872 (= res!985019 (not ((_ is IntegerValue!13673) (dynLambda!11920 (toValue!6205 (transformation!4395 r!2363)) lt!854134))))))

(assert (=> b!2303872 (= e!1476418 e!1476417)))

(declare-fun b!2303873 () Bool)

(assert (=> b!2303873 (= e!1476417 (inv!15 (dynLambda!11920 (toValue!6205 (transformation!4395 r!2363)) lt!854134)))))

(declare-fun b!2303874 () Bool)

(assert (=> b!2303874 (= e!1476419 (inv!16 (dynLambda!11920 (toValue!6205 (transformation!4395 r!2363)) lt!854134)))))

(assert (= (and d!681683 c!365286) b!2303874))

(assert (= (and d!681683 (not c!365286)) b!2303871))

(assert (= (and b!2303871 c!365285) b!2303870))

(assert (= (and b!2303871 (not c!365285)) b!2303872))

(assert (= (and b!2303872 (not res!985019)) b!2303873))

(declare-fun m!2731125 () Bool)

(assert (=> b!2303870 m!2731125))

(declare-fun m!2731127 () Bool)

(assert (=> b!2303873 m!2731127))

(declare-fun m!2731129 () Bool)

(assert (=> b!2303874 m!2731129))

(assert (=> tb!137727 d!681683))

(declare-fun d!681685 () Bool)

(declare-fun lt!854382 () Int)

(assert (=> d!681685 (= lt!854382 (size!21631 (list!10800 (_1!16161 lt!854187))))))

(declare-fun size!21633 (Conc!8939) Int)

(assert (=> d!681685 (= lt!854382 (size!21633 (c!365076 (_1!16161 lt!854187))))))

(assert (=> d!681685 (= (size!21628 (_1!16161 lt!854187)) lt!854382)))

(declare-fun bs!457863 () Bool)

(assert (= bs!457863 d!681685))

(assert (=> bs!457863 m!2730175))

(assert (=> bs!457863 m!2730175))

(declare-fun m!2731131 () Bool)

(assert (=> bs!457863 m!2731131))

(declare-fun m!2731133 () Bool)

(assert (=> bs!457863 m!2731133))

(assert (=> d!681177 d!681685))

(declare-fun e!1476448 () tuple2!27302)

(declare-datatypes ((tuple2!27310 0))(
  ( (tuple2!27311 (_1!16165 Token!8268) (_2!16165 BalanceConc!17604)) )
))
(declare-datatypes ((Option!5392 0))(
  ( (None!5391) (Some!5391 (v!30493 tuple2!27310)) )
))
(declare-fun lt!854476 () Option!5392)

(declare-fun lt!854491 () BalanceConc!17604)

(declare-fun b!2303927 () Bool)

(declare-fun append!713 (BalanceConc!17606 Token!8268) BalanceConc!17606)

(assert (=> b!2303927 (= e!1476448 (lexTailRecV2!806 thiss!16613 rules!1750 (seqFromList!3099 input!1722) lt!854491 (_2!16165 (v!30493 lt!854476)) (append!713 (BalanceConc!17607 Empty!8939) (_1!16165 (v!30493 lt!854476)))))))

(declare-fun lt!854479 () tuple2!27302)

(declare-fun lexRec!550 (LexerInterface!3992 List!27511 BalanceConc!17604) tuple2!27302)

(assert (=> b!2303927 (= lt!854479 (lexRec!550 thiss!16613 rules!1750 (_2!16165 (v!30493 lt!854476))))))

(declare-fun lt!854505 () List!27510)

(assert (=> b!2303927 (= lt!854505 (list!10801 (BalanceConc!17605 Empty!8938)))))

(declare-fun lt!854504 () List!27510)

(assert (=> b!2303927 (= lt!854504 (list!10801 (charsOf!2783 (_1!16165 (v!30493 lt!854476)))))))

(declare-fun lt!854475 () List!27510)

(assert (=> b!2303927 (= lt!854475 (list!10801 (_2!16165 (v!30493 lt!854476))))))

(declare-fun lt!854502 () Unit!40319)

(declare-fun lemmaConcatAssociativity!1412 (List!27510 List!27510 List!27510) Unit!40319)

(assert (=> b!2303927 (= lt!854502 (lemmaConcatAssociativity!1412 lt!854505 lt!854504 lt!854475))))

(assert (=> b!2303927 (= (++!6709 (++!6709 lt!854505 lt!854504) lt!854475) (++!6709 lt!854505 (++!6709 lt!854504 lt!854475)))))

(declare-fun lt!854481 () Unit!40319)

(assert (=> b!2303927 (= lt!854481 lt!854502)))

(declare-fun lt!854492 () Option!5392)

(declare-fun maxPrefixZipperSequence!885 (LexerInterface!3992 List!27511 BalanceConc!17604) Option!5392)

(assert (=> b!2303927 (= lt!854492 (maxPrefixZipperSequence!885 thiss!16613 rules!1750 (seqFromList!3099 input!1722)))))

(declare-fun c!365301 () Bool)

(assert (=> b!2303927 (= c!365301 ((_ is Some!5391) lt!854492))))

(declare-fun e!1476449 () tuple2!27302)

(assert (=> b!2303927 (= (lexRec!550 thiss!16613 rules!1750 (seqFromList!3099 input!1722)) e!1476449)))

(declare-fun lt!854477 () Unit!40319)

(declare-fun Unit!40324 () Unit!40319)

(assert (=> b!2303927 (= lt!854477 Unit!40324)))

(declare-fun lt!854499 () List!27512)

(assert (=> b!2303927 (= lt!854499 (list!10800 (BalanceConc!17607 Empty!8939)))))

(declare-fun lt!854483 () List!27512)

(assert (=> b!2303927 (= lt!854483 (Cons!27418 (_1!16165 (v!30493 lt!854476)) Nil!27418))))

(declare-fun lt!854487 () List!27512)

(assert (=> b!2303927 (= lt!854487 (list!10800 (_1!16161 lt!854479)))))

(declare-fun lt!854498 () Unit!40319)

(declare-fun lemmaConcatAssociativity!1413 (List!27512 List!27512 List!27512) Unit!40319)

(assert (=> b!2303927 (= lt!854498 (lemmaConcatAssociativity!1413 lt!854499 lt!854483 lt!854487))))

(declare-fun ++!6711 (List!27512 List!27512) List!27512)

(assert (=> b!2303927 (= (++!6711 (++!6711 lt!854499 lt!854483) lt!854487) (++!6711 lt!854499 (++!6711 lt!854483 lt!854487)))))

(declare-fun lt!854480 () Unit!40319)

(assert (=> b!2303927 (= lt!854480 lt!854498)))

(declare-fun lt!854495 () List!27510)

(assert (=> b!2303927 (= lt!854495 (++!6709 (list!10801 (BalanceConc!17605 Empty!8938)) (list!10801 (charsOf!2783 (_1!16165 (v!30493 lt!854476))))))))

(declare-fun lt!854494 () List!27510)

(assert (=> b!2303927 (= lt!854494 (list!10801 (_2!16165 (v!30493 lt!854476))))))

(declare-fun lt!854497 () List!27512)

(assert (=> b!2303927 (= lt!854497 (list!10800 (append!713 (BalanceConc!17607 Empty!8939) (_1!16165 (v!30493 lt!854476)))))))

(declare-fun lt!854473 () Unit!40319)

(declare-fun lemmaLexThenLexPrefix!364 (LexerInterface!3992 List!27511 List!27510 List!27510 List!27512 List!27512 List!27510) Unit!40319)

(assert (=> b!2303927 (= lt!854473 (lemmaLexThenLexPrefix!364 thiss!16613 rules!1750 lt!854495 lt!854494 lt!854497 (list!10800 (_1!16161 lt!854479)) (list!10801 (_2!16161 lt!854479))))))

(assert (=> b!2303927 (= (lexList!1131 thiss!16613 rules!1750 lt!854495) (tuple2!27305 lt!854497 Nil!27416))))

(declare-fun lt!854503 () Unit!40319)

(assert (=> b!2303927 (= lt!854503 lt!854473)))

(declare-fun lt!854490 () BalanceConc!17604)

(declare-fun ++!6712 (BalanceConc!17604 BalanceConc!17604) BalanceConc!17604)

(assert (=> b!2303927 (= lt!854490 (++!6712 (BalanceConc!17605 Empty!8938) (charsOf!2783 (_1!16165 (v!30493 lt!854476)))))))

(declare-fun lt!854486 () Option!5392)

(assert (=> b!2303927 (= lt!854486 (maxPrefixZipperSequence!885 thiss!16613 rules!1750 lt!854490))))

(declare-fun c!365300 () Bool)

(assert (=> b!2303927 (= c!365300 ((_ is Some!5391) lt!854486))))

(declare-fun e!1476447 () tuple2!27302)

(assert (=> b!2303927 (= (lexRec!550 thiss!16613 rules!1750 (++!6712 (BalanceConc!17605 Empty!8938) (charsOf!2783 (_1!16165 (v!30493 lt!854476))))) e!1476447)))

(declare-fun lt!854472 () Unit!40319)

(declare-fun Unit!40325 () Unit!40319)

(assert (=> b!2303927 (= lt!854472 Unit!40325)))

(assert (=> b!2303927 (= lt!854491 (++!6712 (BalanceConc!17605 Empty!8938) (charsOf!2783 (_1!16165 (v!30493 lt!854476)))))))

(declare-fun lt!854474 () List!27510)

(assert (=> b!2303927 (= lt!854474 (list!10801 lt!854491))))

(declare-fun lt!854500 () List!27510)

(assert (=> b!2303927 (= lt!854500 (list!10801 (_2!16165 (v!30493 lt!854476))))))

(declare-fun lt!854501 () Unit!40319)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!480 (List!27510 List!27510) Unit!40319)

(assert (=> b!2303927 (= lt!854501 (lemmaConcatTwoListThenFSndIsSuffix!480 lt!854474 lt!854500))))

(declare-fun isSuffix!786 (List!27510 List!27510) Bool)

(assert (=> b!2303927 (isSuffix!786 lt!854500 (++!6709 lt!854474 lt!854500))))

(declare-fun lt!854485 () Unit!40319)

(assert (=> b!2303927 (= lt!854485 lt!854501)))

(declare-fun lt!854493 () tuple2!27302)

(declare-fun b!2303928 () Bool)

(assert (=> b!2303928 (= lt!854493 (lexRec!550 thiss!16613 rules!1750 (_2!16165 (v!30493 lt!854486))))))

(declare-fun prepend!1020 (BalanceConc!17606 Token!8268) BalanceConc!17606)

(assert (=> b!2303928 (= e!1476447 (tuple2!27303 (prepend!1020 (_1!16161 lt!854493) (_1!16165 (v!30493 lt!854486))) (_2!16161 lt!854493)))))

(declare-fun b!2303929 () Bool)

(assert (=> b!2303929 (= e!1476449 (tuple2!27303 (BalanceConc!17607 Empty!8939) (seqFromList!3099 input!1722)))))

(declare-fun b!2303930 () Bool)

(declare-fun lt!854489 () tuple2!27302)

(assert (=> b!2303930 (= lt!854489 (lexRec!550 thiss!16613 rules!1750 (_2!16165 (v!30493 lt!854492))))))

(assert (=> b!2303930 (= e!1476449 (tuple2!27303 (prepend!1020 (_1!16161 lt!854489) (_1!16165 (v!30493 lt!854492))) (_2!16161 lt!854489)))))

(declare-fun b!2303931 () Bool)

(assert (=> b!2303931 (= e!1476448 (tuple2!27303 (BalanceConc!17607 Empty!8939) (seqFromList!3099 input!1722)))))

(declare-fun d!681687 () Bool)

(declare-fun e!1476446 () Bool)

(assert (=> d!681687 e!1476446))

(declare-fun res!985046 () Bool)

(assert (=> d!681687 (=> (not res!985046) (not e!1476446))))

(declare-fun lt!854484 () tuple2!27302)

(assert (=> d!681687 (= res!985046 (= (list!10800 (_1!16161 lt!854484)) (list!10800 (_1!16161 (lexRec!550 thiss!16613 rules!1750 (seqFromList!3099 input!1722))))))))

(assert (=> d!681687 (= lt!854484 e!1476448)))

(declare-fun c!365302 () Bool)

(assert (=> d!681687 (= c!365302 ((_ is Some!5391) lt!854476))))

(declare-fun maxPrefixZipperSequenceV2!420 (LexerInterface!3992 List!27511 BalanceConc!17604 BalanceConc!17604) Option!5392)

(assert (=> d!681687 (= lt!854476 (maxPrefixZipperSequenceV2!420 thiss!16613 rules!1750 (seqFromList!3099 input!1722) (seqFromList!3099 input!1722)))))

(declare-fun lt!854482 () Unit!40319)

(declare-fun lt!854496 () Unit!40319)

(assert (=> d!681687 (= lt!854482 lt!854496)))

(declare-fun lt!854488 () List!27510)

(declare-fun lt!854478 () List!27510)

(assert (=> d!681687 (isSuffix!786 lt!854488 (++!6709 lt!854478 lt!854488))))

(assert (=> d!681687 (= lt!854496 (lemmaConcatTwoListThenFSndIsSuffix!480 lt!854478 lt!854488))))

(assert (=> d!681687 (= lt!854488 (list!10801 (seqFromList!3099 input!1722)))))

(assert (=> d!681687 (= lt!854478 (list!10801 (BalanceConc!17605 Empty!8938)))))

(assert (=> d!681687 (= (lexTailRecV2!806 thiss!16613 rules!1750 (seqFromList!3099 input!1722) (BalanceConc!17605 Empty!8938) (seqFromList!3099 input!1722) (BalanceConc!17607 Empty!8939)) lt!854484)))

(declare-fun b!2303932 () Bool)

(assert (=> b!2303932 (= e!1476446 (= (list!10801 (_2!16161 lt!854484)) (list!10801 (_2!16161 (lexRec!550 thiss!16613 rules!1750 (seqFromList!3099 input!1722))))))))

(declare-fun b!2303933 () Bool)

(assert (=> b!2303933 (= e!1476447 (tuple2!27303 (BalanceConc!17607 Empty!8939) lt!854490))))

(assert (= (and d!681687 c!365302) b!2303927))

(assert (= (and d!681687 (not c!365302)) b!2303931))

(assert (= (and b!2303927 c!365301) b!2303930))

(assert (= (and b!2303927 (not c!365301)) b!2303929))

(assert (= (and b!2303927 c!365300) b!2303928))

(assert (= (and b!2303927 (not c!365300)) b!2303933))

(assert (= (and d!681687 res!985046) b!2303932))

(declare-fun m!2731201 () Bool)

(assert (=> d!681687 m!2731201))

(declare-fun m!2731203 () Bool)

(assert (=> d!681687 m!2731203))

(assert (=> d!681687 m!2730025))

(assert (=> d!681687 m!2730025))

(declare-fun m!2731205 () Bool)

(assert (=> d!681687 m!2731205))

(declare-fun m!2731207 () Bool)

(assert (=> d!681687 m!2731207))

(declare-fun m!2731209 () Bool)

(assert (=> d!681687 m!2731209))

(assert (=> d!681687 m!2731201))

(assert (=> d!681687 m!2730025))

(assert (=> d!681687 m!2730177))

(declare-fun m!2731211 () Bool)

(assert (=> d!681687 m!2731211))

(declare-fun m!2731213 () Bool)

(assert (=> d!681687 m!2731213))

(assert (=> d!681687 m!2730025))

(declare-fun m!2731215 () Bool)

(assert (=> d!681687 m!2731215))

(declare-fun m!2731217 () Bool)

(assert (=> b!2303928 m!2731217))

(declare-fun m!2731219 () Bool)

(assert (=> b!2303928 m!2731219))

(assert (=> b!2303927 m!2731207))

(declare-fun m!2731221 () Bool)

(assert (=> b!2303927 m!2731221))

(declare-fun m!2731223 () Bool)

(assert (=> b!2303927 m!2731223))

(declare-fun m!2731225 () Bool)

(assert (=> b!2303927 m!2731225))

(assert (=> b!2303927 m!2731223))

(declare-fun m!2731227 () Bool)

(assert (=> b!2303927 m!2731227))

(declare-fun m!2731229 () Bool)

(assert (=> b!2303927 m!2731229))

(declare-fun m!2731231 () Bool)

(assert (=> b!2303927 m!2731231))

(declare-fun m!2731233 () Bool)

(assert (=> b!2303927 m!2731233))

(declare-fun m!2731235 () Bool)

(assert (=> b!2303927 m!2731235))

(assert (=> b!2303927 m!2730025))

(assert (=> b!2303927 m!2731215))

(declare-fun m!2731237 () Bool)

(assert (=> b!2303927 m!2731237))

(declare-fun m!2731239 () Bool)

(assert (=> b!2303927 m!2731239))

(declare-fun m!2731241 () Bool)

(assert (=> b!2303927 m!2731241))

(assert (=> b!2303927 m!2731237))

(declare-fun m!2731243 () Bool)

(assert (=> b!2303927 m!2731243))

(assert (=> b!2303927 m!2731241))

(assert (=> b!2303927 m!2730025))

(declare-fun m!2731245 () Bool)

(assert (=> b!2303927 m!2731245))

(declare-fun m!2731247 () Bool)

(assert (=> b!2303927 m!2731247))

(assert (=> b!2303927 m!2731225))

(declare-fun m!2731249 () Bool)

(assert (=> b!2303927 m!2731249))

(declare-fun m!2731251 () Bool)

(assert (=> b!2303927 m!2731251))

(assert (=> b!2303927 m!2731221))

(declare-fun m!2731253 () Bool)

(assert (=> b!2303927 m!2731253))

(declare-fun m!2731255 () Bool)

(assert (=> b!2303927 m!2731255))

(declare-fun m!2731257 () Bool)

(assert (=> b!2303927 m!2731257))

(assert (=> b!2303927 m!2731241))

(declare-fun m!2731259 () Bool)

(assert (=> b!2303927 m!2731259))

(declare-fun m!2731261 () Bool)

(assert (=> b!2303927 m!2731261))

(declare-fun m!2731263 () Bool)

(assert (=> b!2303927 m!2731263))

(assert (=> b!2303927 m!2731245))

(declare-fun m!2731265 () Bool)

(assert (=> b!2303927 m!2731265))

(assert (=> b!2303927 m!2731207))

(assert (=> b!2303927 m!2731259))

(declare-fun m!2731267 () Bool)

(assert (=> b!2303927 m!2731267))

(declare-fun m!2731269 () Bool)

(assert (=> b!2303927 m!2731269))

(declare-fun m!2731271 () Bool)

(assert (=> b!2303927 m!2731271))

(declare-fun m!2731273 () Bool)

(assert (=> b!2303927 m!2731273))

(assert (=> b!2303927 m!2731231))

(declare-fun m!2731275 () Bool)

(assert (=> b!2303927 m!2731275))

(assert (=> b!2303927 m!2731227))

(assert (=> b!2303927 m!2731245))

(assert (=> b!2303927 m!2731261))

(declare-fun m!2731277 () Bool)

(assert (=> b!2303927 m!2731277))

(declare-fun m!2731279 () Bool)

(assert (=> b!2303927 m!2731279))

(assert (=> b!2303927 m!2730025))

(declare-fun m!2731281 () Bool)

(assert (=> b!2303927 m!2731281))

(assert (=> b!2303927 m!2731271))

(declare-fun m!2731283 () Bool)

(assert (=> b!2303932 m!2731283))

(assert (=> b!2303932 m!2730025))

(assert (=> b!2303932 m!2731215))

(declare-fun m!2731285 () Bool)

(assert (=> b!2303932 m!2731285))

(declare-fun m!2731287 () Bool)

(assert (=> b!2303930 m!2731287))

(declare-fun m!2731289 () Bool)

(assert (=> b!2303930 m!2731289))

(assert (=> d!681177 d!681687))

(declare-fun b!2303934 () Bool)

(declare-fun e!1476452 () Bool)

(assert (=> b!2303934 (= e!1476452 (= (head!5044 (list!10801 (charsOf!2783 (_1!16163 (get!8264 lt!854243))))) (c!365075 (regex!4395 (rule!6741 (_1!16163 (get!8264 lt!854243)))))))))

(declare-fun b!2303935 () Bool)

(declare-fun e!1476456 () Bool)

(assert (=> b!2303935 (= e!1476456 (matchR!3000 (derivativeStep!1545 (regex!4395 (rule!6741 (_1!16163 (get!8264 lt!854243)))) (head!5044 (list!10801 (charsOf!2783 (_1!16163 (get!8264 lt!854243)))))) (tail!3329 (list!10801 (charsOf!2783 (_1!16163 (get!8264 lt!854243)))))))))

(declare-fun b!2303936 () Bool)

(declare-fun e!1476451 () Bool)

(declare-fun lt!854506 () Bool)

(declare-fun call!137124 () Bool)

(assert (=> b!2303936 (= e!1476451 (= lt!854506 call!137124))))

(declare-fun b!2303937 () Bool)

(declare-fun res!985054 () Bool)

(assert (=> b!2303937 (=> (not res!985054) (not e!1476452))))

(assert (=> b!2303937 (= res!985054 (isEmpty!15661 (tail!3329 (list!10801 (charsOf!2783 (_1!16163 (get!8264 lt!854243)))))))))

(declare-fun b!2303938 () Bool)

(declare-fun e!1476450 () Bool)

(assert (=> b!2303938 (= e!1476450 (not (= (head!5044 (list!10801 (charsOf!2783 (_1!16163 (get!8264 lt!854243))))) (c!365075 (regex!4395 (rule!6741 (_1!16163 (get!8264 lt!854243))))))))))

(declare-fun b!2303939 () Bool)

(declare-fun res!985053 () Bool)

(declare-fun e!1476454 () Bool)

(assert (=> b!2303939 (=> res!985053 e!1476454)))

(assert (=> b!2303939 (= res!985053 (not ((_ is ElementMatch!6743) (regex!4395 (rule!6741 (_1!16163 (get!8264 lt!854243)))))))))

(declare-fun e!1476455 () Bool)

(assert (=> b!2303939 (= e!1476455 e!1476454)))

(declare-fun b!2303940 () Bool)

(declare-fun res!985047 () Bool)

(assert (=> b!2303940 (=> (not res!985047) (not e!1476452))))

(assert (=> b!2303940 (= res!985047 (not call!137124))))

(declare-fun b!2303941 () Bool)

(declare-fun res!985051 () Bool)

(assert (=> b!2303941 (=> res!985051 e!1476450)))

(assert (=> b!2303941 (= res!985051 (not (isEmpty!15661 (tail!3329 (list!10801 (charsOf!2783 (_1!16163 (get!8264 lt!854243))))))))))

(declare-fun b!2303942 () Bool)

(declare-fun e!1476453 () Bool)

(assert (=> b!2303942 (= e!1476454 e!1476453)))

(declare-fun res!985050 () Bool)

(assert (=> b!2303942 (=> (not res!985050) (not e!1476453))))

(assert (=> b!2303942 (= res!985050 (not lt!854506))))

(declare-fun d!681707 () Bool)

(assert (=> d!681707 e!1476451))

(declare-fun c!365303 () Bool)

(assert (=> d!681707 (= c!365303 ((_ is EmptyExpr!6743) (regex!4395 (rule!6741 (_1!16163 (get!8264 lt!854243))))))))

(assert (=> d!681707 (= lt!854506 e!1476456)))

(declare-fun c!365305 () Bool)

(assert (=> d!681707 (= c!365305 (isEmpty!15661 (list!10801 (charsOf!2783 (_1!16163 (get!8264 lt!854243))))))))

(assert (=> d!681707 (validRegex!2547 (regex!4395 (rule!6741 (_1!16163 (get!8264 lt!854243)))))))

(assert (=> d!681707 (= (matchR!3000 (regex!4395 (rule!6741 (_1!16163 (get!8264 lt!854243)))) (list!10801 (charsOf!2783 (_1!16163 (get!8264 lt!854243))))) lt!854506)))

(declare-fun b!2303943 () Bool)

(assert (=> b!2303943 (= e!1476455 (not lt!854506))))

(declare-fun b!2303944 () Bool)

(assert (=> b!2303944 (= e!1476456 (nullable!1885 (regex!4395 (rule!6741 (_1!16163 (get!8264 lt!854243))))))))

(declare-fun b!2303945 () Bool)

(declare-fun res!985048 () Bool)

(assert (=> b!2303945 (=> res!985048 e!1476454)))

(assert (=> b!2303945 (= res!985048 e!1476452)))

(declare-fun res!985049 () Bool)

(assert (=> b!2303945 (=> (not res!985049) (not e!1476452))))

(assert (=> b!2303945 (= res!985049 lt!854506)))

(declare-fun b!2303946 () Bool)

(assert (=> b!2303946 (= e!1476451 e!1476455)))

(declare-fun c!365304 () Bool)

(assert (=> b!2303946 (= c!365304 ((_ is EmptyLang!6743) (regex!4395 (rule!6741 (_1!16163 (get!8264 lt!854243))))))))

(declare-fun bm!137119 () Bool)

(assert (=> bm!137119 (= call!137124 (isEmpty!15661 (list!10801 (charsOf!2783 (_1!16163 (get!8264 lt!854243))))))))

(declare-fun b!2303947 () Bool)

(assert (=> b!2303947 (= e!1476453 e!1476450)))

(declare-fun res!985052 () Bool)

(assert (=> b!2303947 (=> res!985052 e!1476450)))

(assert (=> b!2303947 (= res!985052 call!137124)))

(assert (= (and d!681707 c!365305) b!2303944))

(assert (= (and d!681707 (not c!365305)) b!2303935))

(assert (= (and d!681707 c!365303) b!2303936))

(assert (= (and d!681707 (not c!365303)) b!2303946))

(assert (= (and b!2303946 c!365304) b!2303943))

(assert (= (and b!2303946 (not c!365304)) b!2303939))

(assert (= (and b!2303939 (not res!985053)) b!2303945))

(assert (= (and b!2303945 res!985049) b!2303940))

(assert (= (and b!2303940 res!985047) b!2303937))

(assert (= (and b!2303937 res!985054) b!2303934))

(assert (= (and b!2303945 (not res!985048)) b!2303942))

(assert (= (and b!2303942 res!985050) b!2303947))

(assert (= (and b!2303947 (not res!985052)) b!2303941))

(assert (= (and b!2303941 (not res!985051)) b!2303938))

(assert (= (or b!2303936 b!2303940 b!2303947) bm!137119))

(assert (=> b!2303941 m!2730437))

(declare-fun m!2731291 () Bool)

(assert (=> b!2303941 m!2731291))

(assert (=> b!2303941 m!2731291))

(declare-fun m!2731293 () Bool)

(assert (=> b!2303941 m!2731293))

(assert (=> b!2303935 m!2730437))

(declare-fun m!2731295 () Bool)

(assert (=> b!2303935 m!2731295))

(assert (=> b!2303935 m!2731295))

(declare-fun m!2731297 () Bool)

(assert (=> b!2303935 m!2731297))

(assert (=> b!2303935 m!2730437))

(assert (=> b!2303935 m!2731291))

(assert (=> b!2303935 m!2731297))

(assert (=> b!2303935 m!2731291))

(declare-fun m!2731299 () Bool)

(assert (=> b!2303935 m!2731299))

(assert (=> b!2303937 m!2730437))

(assert (=> b!2303937 m!2731291))

(assert (=> b!2303937 m!2731291))

(assert (=> b!2303937 m!2731293))

(assert (=> bm!137119 m!2730437))

(declare-fun m!2731301 () Bool)

(assert (=> bm!137119 m!2731301))

(assert (=> b!2303938 m!2730437))

(assert (=> b!2303938 m!2731295))

(declare-fun m!2731303 () Bool)

(assert (=> b!2303944 m!2731303))

(assert (=> b!2303934 m!2730437))

(assert (=> b!2303934 m!2731295))

(assert (=> d!681707 m!2730437))

(assert (=> d!681707 m!2731301))

(declare-fun m!2731305 () Bool)

(assert (=> d!681707 m!2731305))

(assert (=> b!2303333 d!681707))

(assert (=> b!2303333 d!681375))

(assert (=> b!2303333 d!681389))

(assert (=> b!2303333 d!681391))

(declare-fun d!681709 () Bool)

(declare-fun lt!854507 () Int)

(assert (=> d!681709 (= lt!854507 (size!21626 (list!10801 (_2!16161 lt!854187))))))

(assert (=> d!681709 (= lt!854507 (size!21630 (c!365074 (_2!16161 lt!854187))))))

(assert (=> d!681709 (= (size!21625 (_2!16161 lt!854187)) lt!854507)))

(declare-fun bs!457871 () Bool)

(assert (= bs!457871 d!681709))

(assert (=> bs!457871 m!2730185))

(assert (=> bs!457871 m!2730185))

(declare-fun m!2731307 () Bool)

(assert (=> bs!457871 m!2731307))

(declare-fun m!2731309 () Bool)

(assert (=> bs!457871 m!2731309))

(assert (=> b!2303042 d!681709))

(declare-fun d!681711 () Bool)

(declare-fun lt!854508 () Int)

(assert (=> d!681711 (= lt!854508 (size!21626 (list!10801 (seqFromList!3099 input!1722))))))

(assert (=> d!681711 (= lt!854508 (size!21630 (c!365074 (seqFromList!3099 input!1722))))))

(assert (=> d!681711 (= (size!21625 (seqFromList!3099 input!1722)) lt!854508)))

(declare-fun bs!457872 () Bool)

(assert (= bs!457872 d!681711))

(assert (=> bs!457872 m!2730025))

(assert (=> bs!457872 m!2730177))

(assert (=> bs!457872 m!2730177))

(assert (=> bs!457872 m!2730667))

(declare-fun m!2731311 () Bool)

(assert (=> bs!457872 m!2731311))

(assert (=> b!2303042 d!681711))

(declare-fun bs!457873 () Bool)

(declare-fun d!681713 () Bool)

(assert (= bs!457873 (and d!681713 d!681233)))

(declare-fun lambda!85985 () Int)

(assert (=> bs!457873 (= (and (= (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (toChars!6064 (transformation!4395 r!2363))) (= (toValue!6205 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (toValue!6205 (transformation!4395 r!2363)))) (= lambda!85985 lambda!85949))))

(declare-fun bs!457874 () Bool)

(assert (= bs!457874 (and d!681713 d!681557)))

(assert (=> bs!457874 (= (and (= (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (toChars!6064 (transformation!4395 (h!32818 rules!1750)))) (= (toValue!6205 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (toValue!6205 (transformation!4395 (h!32818 rules!1750))))) (= lambda!85985 lambda!85971))))

(declare-fun bs!457875 () Bool)

(assert (= bs!457875 (and d!681713 d!681627)))

(assert (=> bs!457875 (= (and (= (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (toChars!6064 (transformation!4395 r!2363))) (= (toValue!6205 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (toValue!6205 (transformation!4395 r!2363)))) (= lambda!85985 lambda!85980))))

(declare-fun bs!457876 () Bool)

(assert (= bs!457876 (and d!681713 d!681669)))

(assert (=> bs!457876 (= (and (= (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (toChars!6064 (transformation!4395 otherR!12))) (= (toValue!6205 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (toValue!6205 (transformation!4395 otherR!12)))) (= lambda!85985 lambda!85983))))

(assert (=> d!681713 true))

(assert (=> d!681713 (< (dynLambda!11923 order!15287 (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456))))) (dynLambda!11922 order!15285 lambda!85985))))

(assert (=> d!681713 true))

(assert (=> d!681713 (< (dynLambda!11921 order!15283 (toValue!6205 (transformation!4395 (rule!6741 (h!32819 tokens!456))))) (dynLambda!11922 order!15285 lambda!85985))))

(assert (=> d!681713 (= (semiInverseModEq!1788 (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (toValue!6205 (transformation!4395 (rule!6741 (h!32819 tokens!456))))) (Forall!1101 lambda!85985))))

(declare-fun bs!457877 () Bool)

(assert (= bs!457877 d!681713))

(declare-fun m!2731313 () Bool)

(assert (=> bs!457877 m!2731313))

(assert (=> d!681227 d!681713))

(assert (=> b!2303086 d!681547))

(assert (=> d!681305 d!681371))

(declare-fun d!681715 () Bool)

(declare-fun res!985059 () Bool)

(declare-fun e!1476459 () Bool)

(assert (=> d!681715 (=> res!985059 e!1476459)))

(assert (=> d!681715 (= res!985059 ((_ is ElementMatch!6743) (regex!4395 otherR!12)))))

(assert (=> d!681715 (= (validRegex!2547 (regex!4395 otherR!12)) e!1476459)))

(declare-fun c!365306 () Bool)

(declare-fun c!365307 () Bool)

(declare-fun call!137127 () Bool)

(declare-fun bm!137120 () Bool)

(assert (=> bm!137120 (= call!137127 (validRegex!2547 (ite c!365306 (reg!7072 (regex!4395 otherR!12)) (ite c!365307 (regOne!13999 (regex!4395 otherR!12)) (regTwo!13998 (regex!4395 otherR!12))))))))

(declare-fun b!2303948 () Bool)

(declare-fun e!1476458 () Bool)

(declare-fun e!1476461 () Bool)

(assert (=> b!2303948 (= e!1476458 e!1476461)))

(assert (=> b!2303948 (= c!365307 ((_ is Union!6743) (regex!4395 otherR!12)))))

(declare-fun b!2303949 () Bool)

(declare-fun e!1476463 () Bool)

(declare-fun call!137125 () Bool)

(assert (=> b!2303949 (= e!1476463 call!137125)))

(declare-fun bm!137121 () Bool)

(declare-fun call!137126 () Bool)

(assert (=> bm!137121 (= call!137126 (validRegex!2547 (ite c!365307 (regTwo!13999 (regex!4395 otherR!12)) (regOne!13998 (regex!4395 otherR!12)))))))

(declare-fun b!2303950 () Bool)

(declare-fun res!985056 () Bool)

(declare-fun e!1476460 () Bool)

(assert (=> b!2303950 (=> res!985056 e!1476460)))

(assert (=> b!2303950 (= res!985056 (not ((_ is Concat!11301) (regex!4395 otherR!12))))))

(assert (=> b!2303950 (= e!1476461 e!1476460)))

(declare-fun b!2303951 () Bool)

(assert (=> b!2303951 (= e!1476459 e!1476458)))

(assert (=> b!2303951 (= c!365306 ((_ is Star!6743) (regex!4395 otherR!12)))))

(declare-fun b!2303952 () Bool)

(declare-fun res!985057 () Bool)

(declare-fun e!1476457 () Bool)

(assert (=> b!2303952 (=> (not res!985057) (not e!1476457))))

(assert (=> b!2303952 (= res!985057 call!137125)))

(assert (=> b!2303952 (= e!1476461 e!1476457)))

(declare-fun b!2303953 () Bool)

(assert (=> b!2303953 (= e!1476457 call!137126)))

(declare-fun b!2303954 () Bool)

(declare-fun e!1476462 () Bool)

(assert (=> b!2303954 (= e!1476458 e!1476462)))

(declare-fun res!985058 () Bool)

(assert (=> b!2303954 (= res!985058 (not (nullable!1885 (reg!7072 (regex!4395 otherR!12)))))))

(assert (=> b!2303954 (=> (not res!985058) (not e!1476462))))

(declare-fun b!2303955 () Bool)

(assert (=> b!2303955 (= e!1476460 e!1476463)))

(declare-fun res!985055 () Bool)

(assert (=> b!2303955 (=> (not res!985055) (not e!1476463))))

(assert (=> b!2303955 (= res!985055 call!137126)))

(declare-fun b!2303956 () Bool)

(assert (=> b!2303956 (= e!1476462 call!137127)))

(declare-fun bm!137122 () Bool)

(assert (=> bm!137122 (= call!137125 call!137127)))

(assert (= (and d!681715 (not res!985059)) b!2303951))

(assert (= (and b!2303951 c!365306) b!2303954))

(assert (= (and b!2303951 (not c!365306)) b!2303948))

(assert (= (and b!2303954 res!985058) b!2303956))

(assert (= (and b!2303948 c!365307) b!2303952))

(assert (= (and b!2303948 (not c!365307)) b!2303950))

(assert (= (and b!2303952 res!985057) b!2303953))

(assert (= (and b!2303950 (not res!985056)) b!2303955))

(assert (= (and b!2303955 res!985055) b!2303949))

(assert (= (or b!2303952 b!2303949) bm!137122))

(assert (= (or b!2303953 b!2303955) bm!137121))

(assert (= (or b!2303956 bm!137122) bm!137120))

(declare-fun m!2731315 () Bool)

(assert (=> bm!137120 m!2731315))

(declare-fun m!2731317 () Bool)

(assert (=> bm!137121 m!2731317))

(declare-fun m!2731319 () Bool)

(assert (=> b!2303954 m!2731319))

(assert (=> d!681213 d!681715))

(declare-fun d!681717 () Bool)

(declare-fun e!1476464 () Bool)

(assert (=> d!681717 e!1476464))

(declare-fun res!985060 () Bool)

(assert (=> d!681717 (=> (not res!985060) (not e!1476464))))

(declare-fun lt!854509 () BalanceConc!17604)

(assert (=> d!681717 (= res!985060 (= (list!10801 lt!854509) input!1722))))

(assert (=> d!681717 (= lt!854509 (BalanceConc!17605 (fromList!548 input!1722)))))

(assert (=> d!681717 (= (fromListB!1398 input!1722) lt!854509)))

(declare-fun b!2303957 () Bool)

(assert (=> b!2303957 (= e!1476464 (isBalanced!2691 (fromList!548 input!1722)))))

(assert (= (and d!681717 res!985060) b!2303957))

(declare-fun m!2731321 () Bool)

(assert (=> d!681717 m!2731321))

(declare-fun m!2731323 () Bool)

(assert (=> d!681717 m!2731323))

(assert (=> b!2303957 m!2731323))

(assert (=> b!2303957 m!2731323))

(declare-fun m!2731325 () Bool)

(assert (=> b!2303957 m!2731325))

(assert (=> d!681199 d!681717))

(declare-fun d!681719 () Bool)

(declare-fun lt!854510 () Int)

(assert (=> d!681719 (>= lt!854510 0)))

(declare-fun e!1476465 () Int)

(assert (=> d!681719 (= lt!854510 e!1476465)))

(declare-fun c!365308 () Bool)

(assert (=> d!681719 (= c!365308 (and ((_ is Cons!27417) (t!205985 rules!1750)) (= (h!32818 (t!205985 rules!1750)) r!2363)))))

(assert (=> d!681719 (contains!4781 (t!205985 rules!1750) r!2363)))

(assert (=> d!681719 (= (getIndex!408 (t!205985 rules!1750) r!2363) lt!854510)))

(declare-fun b!2303961 () Bool)

(declare-fun e!1476466 () Int)

(assert (=> b!2303961 (= e!1476466 (- 1))))

(declare-fun b!2303960 () Bool)

(assert (=> b!2303960 (= e!1476466 (+ 1 (getIndex!408 (t!205985 (t!205985 rules!1750)) r!2363)))))

(declare-fun b!2303959 () Bool)

(assert (=> b!2303959 (= e!1476465 e!1476466)))

(declare-fun c!365309 () Bool)

(assert (=> b!2303959 (= c!365309 (and ((_ is Cons!27417) (t!205985 rules!1750)) (not (= (h!32818 (t!205985 rules!1750)) r!2363))))))

(declare-fun b!2303958 () Bool)

(assert (=> b!2303958 (= e!1476465 0)))

(assert (= (and d!681719 c!365308) b!2303958))

(assert (= (and d!681719 (not c!365308)) b!2303959))

(assert (= (and b!2303959 c!365309) b!2303960))

(assert (= (and b!2303959 (not c!365309)) b!2303961))

(assert (=> d!681719 m!2730219))

(declare-fun m!2731327 () Bool)

(assert (=> b!2303960 m!2731327))

(assert (=> b!2303078 d!681719))

(declare-fun b!2303965 () Bool)

(declare-fun e!1476469 () Bool)

(assert (=> b!2303965 (= e!1476469 (>= (size!21626 (tail!3329 input!1722)) (size!21626 (tail!3329 otherP!12))))))

(declare-fun b!2303964 () Bool)

(declare-fun e!1476467 () Bool)

(assert (=> b!2303964 (= e!1476467 (isPrefix!2385 (tail!3329 (tail!3329 otherP!12)) (tail!3329 (tail!3329 input!1722))))))

(declare-fun b!2303963 () Bool)

(declare-fun res!985062 () Bool)

(assert (=> b!2303963 (=> (not res!985062) (not e!1476467))))

(assert (=> b!2303963 (= res!985062 (= (head!5044 (tail!3329 otherP!12)) (head!5044 (tail!3329 input!1722))))))

(declare-fun b!2303962 () Bool)

(declare-fun e!1476468 () Bool)

(assert (=> b!2303962 (= e!1476468 e!1476467)))

(declare-fun res!985063 () Bool)

(assert (=> b!2303962 (=> (not res!985063) (not e!1476467))))

(assert (=> b!2303962 (= res!985063 (not ((_ is Nil!27416) (tail!3329 input!1722))))))

(declare-fun d!681721 () Bool)

(assert (=> d!681721 e!1476469))

(declare-fun res!985061 () Bool)

(assert (=> d!681721 (=> res!985061 e!1476469)))

(declare-fun lt!854511 () Bool)

(assert (=> d!681721 (= res!985061 (not lt!854511))))

(assert (=> d!681721 (= lt!854511 e!1476468)))

(declare-fun res!985064 () Bool)

(assert (=> d!681721 (=> res!985064 e!1476468)))

(assert (=> d!681721 (= res!985064 ((_ is Nil!27416) (tail!3329 otherP!12)))))

(assert (=> d!681721 (= (isPrefix!2385 (tail!3329 otherP!12) (tail!3329 input!1722)) lt!854511)))

(assert (= (and d!681721 (not res!985064)) b!2303962))

(assert (= (and b!2303962 res!985063) b!2303963))

(assert (= (and b!2303963 res!985062) b!2303964))

(assert (= (and d!681721 (not res!985061)) b!2303965))

(assert (=> b!2303965 m!2730479))

(assert (=> b!2303965 m!2730711))

(assert (=> b!2303965 m!2730487))

(declare-fun m!2731329 () Bool)

(assert (=> b!2303965 m!2731329))

(assert (=> b!2303964 m!2730487))

(declare-fun m!2731331 () Bool)

(assert (=> b!2303964 m!2731331))

(assert (=> b!2303964 m!2730479))

(assert (=> b!2303964 m!2730713))

(assert (=> b!2303964 m!2731331))

(assert (=> b!2303964 m!2730713))

(declare-fun m!2731333 () Bool)

(assert (=> b!2303964 m!2731333))

(assert (=> b!2303963 m!2730487))

(declare-fun m!2731335 () Bool)

(assert (=> b!2303963 m!2731335))

(assert (=> b!2303963 m!2730479))

(declare-fun m!2731337 () Bool)

(assert (=> b!2303963 m!2731337))

(assert (=> b!2303369 d!681721))

(declare-fun d!681723 () Bool)

(assert (=> d!681723 (= (tail!3329 otherP!12) (t!205984 otherP!12))))

(assert (=> b!2303369 d!681723))

(assert (=> b!2303369 d!681473))

(declare-fun d!681725 () Bool)

(assert (=> d!681725 (= (nullable!1885 (regex!4395 otherR!12)) (nullableFct!461 (regex!4395 otherR!12)))))

(declare-fun bs!457878 () Bool)

(assert (= bs!457878 d!681725))

(declare-fun m!2731339 () Bool)

(assert (=> bs!457878 m!2731339))

(assert (=> b!2303084 d!681725))

(declare-fun d!681727 () Bool)

(declare-fun c!365310 () Bool)

(assert (=> d!681727 (= c!365310 ((_ is Node!8938) (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (head!5042 tokens!456)))) (value!139077 (head!5042 tokens!456))))))))

(declare-fun e!1476470 () Bool)

(assert (=> d!681727 (= (inv!37053 (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (head!5042 tokens!456)))) (value!139077 (head!5042 tokens!456))))) e!1476470)))

(declare-fun b!2303966 () Bool)

(assert (=> b!2303966 (= e!1476470 (inv!37057 (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (head!5042 tokens!456)))) (value!139077 (head!5042 tokens!456))))))))

(declare-fun b!2303967 () Bool)

(declare-fun e!1476471 () Bool)

(assert (=> b!2303967 (= e!1476470 e!1476471)))

(declare-fun res!985065 () Bool)

(assert (=> b!2303967 (= res!985065 (not ((_ is Leaf!13121) (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (head!5042 tokens!456)))) (value!139077 (head!5042 tokens!456)))))))))

(assert (=> b!2303967 (=> res!985065 e!1476471)))

(declare-fun b!2303968 () Bool)

(assert (=> b!2303968 (= e!1476471 (inv!37058 (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (head!5042 tokens!456)))) (value!139077 (head!5042 tokens!456))))))))

(assert (= (and d!681727 c!365310) b!2303966))

(assert (= (and d!681727 (not c!365310)) b!2303967))

(assert (= (and b!2303967 (not res!985065)) b!2303968))

(declare-fun m!2731341 () Bool)

(assert (=> b!2303966 m!2731341))

(declare-fun m!2731343 () Bool)

(assert (=> b!2303968 m!2731343))

(assert (=> b!2302979 d!681727))

(assert (=> bm!137072 d!681495))

(declare-fun b!2303980 () Bool)

(declare-fun e!1476477 () List!27512)

(assert (=> b!2303980 (= e!1476477 (++!6711 (list!10804 (left!20773 (c!365076 (_1!16161 lt!854125)))) (list!10804 (right!21103 (c!365076 (_1!16161 lt!854125))))))))

(declare-fun d!681729 () Bool)

(declare-fun c!365315 () Bool)

(assert (=> d!681729 (= c!365315 ((_ is Empty!8939) (c!365076 (_1!16161 lt!854125))))))

(declare-fun e!1476476 () List!27512)

(assert (=> d!681729 (= (list!10804 (c!365076 (_1!16161 lt!854125))) e!1476476)))

(declare-fun b!2303977 () Bool)

(assert (=> b!2303977 (= e!1476476 Nil!27418)))

(declare-fun b!2303978 () Bool)

(assert (=> b!2303978 (= e!1476476 e!1476477)))

(declare-fun c!365316 () Bool)

(assert (=> b!2303978 (= c!365316 ((_ is Leaf!13122) (c!365076 (_1!16161 lt!854125))))))

(declare-fun b!2303979 () Bool)

(declare-fun list!10809 (IArray!17883) List!27512)

(assert (=> b!2303979 (= e!1476477 (list!10809 (xs!11881 (c!365076 (_1!16161 lt!854125)))))))

(assert (= (and d!681729 c!365315) b!2303977))

(assert (= (and d!681729 (not c!365315)) b!2303978))

(assert (= (and b!2303978 c!365316) b!2303979))

(assert (= (and b!2303978 (not c!365316)) b!2303980))

(declare-fun m!2731345 () Bool)

(assert (=> b!2303980 m!2731345))

(declare-fun m!2731347 () Bool)

(assert (=> b!2303980 m!2731347))

(assert (=> b!2303980 m!2731345))

(assert (=> b!2303980 m!2731347))

(declare-fun m!2731349 () Bool)

(assert (=> b!2303980 m!2731349))

(declare-fun m!2731351 () Bool)

(assert (=> b!2303979 m!2731351))

(assert (=> d!681173 d!681729))

(declare-fun b!2303984 () Bool)

(declare-fun e!1476480 () Bool)

(assert (=> b!2303984 (= e!1476480 (>= (size!21626 (++!6709 lt!854122 (_2!16163 lt!854124))) (size!21626 lt!854122)))))

(declare-fun b!2303983 () Bool)

(declare-fun e!1476478 () Bool)

(assert (=> b!2303983 (= e!1476478 (isPrefix!2385 (tail!3329 lt!854122) (tail!3329 (++!6709 lt!854122 (_2!16163 lt!854124)))))))

(declare-fun b!2303982 () Bool)

(declare-fun res!985067 () Bool)

(assert (=> b!2303982 (=> (not res!985067) (not e!1476478))))

(assert (=> b!2303982 (= res!985067 (= (head!5044 lt!854122) (head!5044 (++!6709 lt!854122 (_2!16163 lt!854124)))))))

(declare-fun b!2303981 () Bool)

(declare-fun e!1476479 () Bool)

(assert (=> b!2303981 (= e!1476479 e!1476478)))

(declare-fun res!985068 () Bool)

(assert (=> b!2303981 (=> (not res!985068) (not e!1476478))))

(assert (=> b!2303981 (= res!985068 (not ((_ is Nil!27416) (++!6709 lt!854122 (_2!16163 lt!854124)))))))

(declare-fun d!681731 () Bool)

(assert (=> d!681731 e!1476480))

(declare-fun res!985066 () Bool)

(assert (=> d!681731 (=> res!985066 e!1476480)))

(declare-fun lt!854512 () Bool)

(assert (=> d!681731 (= res!985066 (not lt!854512))))

(assert (=> d!681731 (= lt!854512 e!1476479)))

(declare-fun res!985069 () Bool)

(assert (=> d!681731 (=> res!985069 e!1476479)))

(assert (=> d!681731 (= res!985069 ((_ is Nil!27416) lt!854122))))

(assert (=> d!681731 (= (isPrefix!2385 lt!854122 (++!6709 lt!854122 (_2!16163 lt!854124))) lt!854512)))

(assert (= (and d!681731 (not res!985069)) b!2303981))

(assert (= (and b!2303981 res!985068) b!2303982))

(assert (= (and b!2303982 res!985067) b!2303983))

(assert (= (and d!681731 (not res!985066)) b!2303984))

(assert (=> b!2303984 m!2730007))

(declare-fun m!2731353 () Bool)

(assert (=> b!2303984 m!2731353))

(assert (=> b!2303984 m!2730015))

(assert (=> b!2303983 m!2730451))

(assert (=> b!2303983 m!2730007))

(declare-fun m!2731355 () Bool)

(assert (=> b!2303983 m!2731355))

(assert (=> b!2303983 m!2730451))

(assert (=> b!2303983 m!2731355))

(declare-fun m!2731357 () Bool)

(assert (=> b!2303983 m!2731357))

(assert (=> b!2303982 m!2730457))

(assert (=> b!2303982 m!2730007))

(declare-fun m!2731359 () Bool)

(assert (=> b!2303982 m!2731359))

(assert (=> d!681315 d!681731))

(assert (=> d!681315 d!681307))

(declare-fun d!681733 () Bool)

(assert (=> d!681733 (isPrefix!2385 lt!854122 (++!6709 lt!854122 (_2!16163 lt!854124)))))

(assert (=> d!681733 true))

(declare-fun _$46!1347 () Unit!40319)

(assert (=> d!681733 (= (choose!13454 lt!854122 (_2!16163 lt!854124)) _$46!1347)))

(declare-fun bs!457879 () Bool)

(assert (= bs!457879 d!681733))

(assert (=> bs!457879 m!2730007))

(assert (=> bs!457879 m!2730007))

(assert (=> bs!457879 m!2730463))

(assert (=> d!681315 d!681733))

(assert (=> b!2302966 d!681667))

(assert (=> b!2302966 d!681659))

(assert (=> d!681211 d!681223))

(declare-fun b!2304079 () Bool)

(declare-fun res!985105 () Bool)

(declare-fun e!1476535 () Bool)

(assert (=> b!2304079 (=> (not res!985105) (not e!1476535))))

(declare-fun lt!854633 () Option!5391)

(assert (=> b!2304079 (= res!985105 (= (rule!6741 (_1!16163 (get!8264 lt!854633))) (h!32818 rules!1750)))))

(declare-fun b!2304080 () Bool)

(declare-fun e!1476534 () Bool)

(assert (=> b!2304080 (= e!1476534 e!1476535)))

(declare-fun res!985108 () Bool)

(assert (=> b!2304080 (=> (not res!985108) (not e!1476535))))

(assert (=> b!2304080 (= res!985108 (matchR!3000 (regex!4395 (h!32818 rules!1750)) (list!10801 (charsOf!2783 (_1!16163 (get!8264 lt!854633))))))))

(declare-fun d!681735 () Bool)

(assert (=> d!681735 e!1476534))

(declare-fun res!985107 () Bool)

(assert (=> d!681735 (=> res!985107 e!1476534)))

(assert (=> d!681735 (= res!985107 (isEmpty!15666 lt!854633))))

(declare-fun e!1476533 () Option!5391)

(assert (=> d!681735 (= lt!854633 e!1476533)))

(declare-fun c!365348 () Bool)

(declare-datatypes ((tuple2!27314 0))(
  ( (tuple2!27315 (_1!16167 List!27510) (_2!16167 List!27510)) )
))
(declare-fun lt!854631 () tuple2!27314)

(assert (=> d!681735 (= c!365348 (isEmpty!15661 (_1!16167 lt!854631)))))

(declare-fun findLongestMatch!662 (Regex!6743 List!27510) tuple2!27314)

(assert (=> d!681735 (= lt!854631 (findLongestMatch!662 (regex!4395 (h!32818 rules!1750)) input!1722))))

(assert (=> d!681735 (ruleValid!1485 thiss!16613 (h!32818 rules!1750))))

(assert (=> d!681735 (= (maxPrefixOneRule!1418 thiss!16613 (h!32818 rules!1750) input!1722) lt!854633)))

(declare-fun b!2304081 () Bool)

(declare-fun e!1476532 () Bool)

(declare-fun findLongestMatchInner!733 (Regex!6743 List!27510 Int List!27510 List!27510 Int) tuple2!27314)

(assert (=> b!2304081 (= e!1476532 (matchR!3000 (regex!4395 (h!32818 rules!1750)) (_1!16167 (findLongestMatchInner!733 (regex!4395 (h!32818 rules!1750)) Nil!27416 (size!21626 Nil!27416) input!1722 input!1722 (size!21626 input!1722)))))))

(declare-fun b!2304082 () Bool)

(declare-fun res!985106 () Bool)

(assert (=> b!2304082 (=> (not res!985106) (not e!1476535))))

(assert (=> b!2304082 (= res!985106 (= (value!139077 (_1!16163 (get!8264 lt!854633))) (apply!6657 (transformation!4395 (rule!6741 (_1!16163 (get!8264 lt!854633)))) (seqFromList!3099 (originalCharacters!5165 (_1!16163 (get!8264 lt!854633)))))))))

(declare-fun b!2304083 () Bool)

(declare-fun res!985102 () Bool)

(assert (=> b!2304083 (=> (not res!985102) (not e!1476535))))

(assert (=> b!2304083 (= res!985102 (< (size!21626 (_2!16163 (get!8264 lt!854633))) (size!21626 input!1722)))))

(declare-fun b!2304084 () Bool)

(assert (=> b!2304084 (= e!1476533 None!5390)))

(declare-fun b!2304085 () Bool)

(assert (=> b!2304085 (= e!1476533 (Some!5390 (tuple2!27307 (Token!8269 (apply!6657 (transformation!4395 (h!32818 rules!1750)) (seqFromList!3099 (_1!16167 lt!854631))) (h!32818 rules!1750) (size!21625 (seqFromList!3099 (_1!16167 lt!854631))) (_1!16167 lt!854631)) (_2!16167 lt!854631))))))

(declare-fun lt!854632 () Unit!40319)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!706 (Regex!6743 List!27510) Unit!40319)

(assert (=> b!2304085 (= lt!854632 (longestMatchIsAcceptedByMatchOrIsEmpty!706 (regex!4395 (h!32818 rules!1750)) input!1722))))

(declare-fun res!985103 () Bool)

(assert (=> b!2304085 (= res!985103 (isEmpty!15661 (_1!16167 (findLongestMatchInner!733 (regex!4395 (h!32818 rules!1750)) Nil!27416 (size!21626 Nil!27416) input!1722 input!1722 (size!21626 input!1722)))))))

(assert (=> b!2304085 (=> res!985103 e!1476532)))

(assert (=> b!2304085 e!1476532))

(declare-fun lt!854634 () Unit!40319)

(assert (=> b!2304085 (= lt!854634 lt!854632)))

(declare-fun lt!854635 () Unit!40319)

(assert (=> b!2304085 (= lt!854635 (lemmaSemiInverse!1078 (transformation!4395 (h!32818 rules!1750)) (seqFromList!3099 (_1!16167 lt!854631))))))

(declare-fun b!2304086 () Bool)

(declare-fun res!985104 () Bool)

(assert (=> b!2304086 (=> (not res!985104) (not e!1476535))))

(assert (=> b!2304086 (= res!985104 (= (++!6709 (list!10801 (charsOf!2783 (_1!16163 (get!8264 lt!854633)))) (_2!16163 (get!8264 lt!854633))) input!1722))))

(declare-fun b!2304087 () Bool)

(assert (=> b!2304087 (= e!1476535 (= (size!21624 (_1!16163 (get!8264 lt!854633))) (size!21626 (originalCharacters!5165 (_1!16163 (get!8264 lt!854633))))))))

(assert (= (and d!681735 c!365348) b!2304084))

(assert (= (and d!681735 (not c!365348)) b!2304085))

(assert (= (and b!2304085 (not res!985103)) b!2304081))

(assert (= (and d!681735 (not res!985107)) b!2304080))

(assert (= (and b!2304080 res!985108) b!2304086))

(assert (= (and b!2304086 res!985104) b!2304083))

(assert (= (and b!2304083 res!985102) b!2304079))

(assert (= (and b!2304079 res!985105) b!2304082))

(assert (= (and b!2304082 res!985106) b!2304087))

(declare-fun m!2731503 () Bool)

(assert (=> b!2304085 m!2731503))

(declare-fun m!2731505 () Bool)

(assert (=> b!2304085 m!2731505))

(declare-fun m!2731509 () Bool)

(assert (=> b!2304085 m!2731509))

(assert (=> b!2304085 m!2731503))

(assert (=> b!2304085 m!2730419))

(declare-fun m!2731511 () Bool)

(assert (=> b!2304085 m!2731511))

(declare-fun m!2731513 () Bool)

(assert (=> b!2304085 m!2731513))

(declare-fun m!2731515 () Bool)

(assert (=> b!2304085 m!2731515))

(assert (=> b!2304085 m!2731513))

(declare-fun m!2731517 () Bool)

(assert (=> b!2304085 m!2731517))

(assert (=> b!2304085 m!2731513))

(declare-fun m!2731519 () Bool)

(assert (=> b!2304085 m!2731519))

(assert (=> b!2304085 m!2730419))

(assert (=> b!2304085 m!2731513))

(assert (=> b!2304081 m!2731503))

(assert (=> b!2304081 m!2730419))

(assert (=> b!2304081 m!2731503))

(assert (=> b!2304081 m!2730419))

(assert (=> b!2304081 m!2731511))

(declare-fun m!2731521 () Bool)

(assert (=> b!2304081 m!2731521))

(declare-fun m!2731523 () Bool)

(assert (=> b!2304087 m!2731523))

(declare-fun m!2731525 () Bool)

(assert (=> b!2304087 m!2731525))

(assert (=> b!2304082 m!2731523))

(declare-fun m!2731527 () Bool)

(assert (=> b!2304082 m!2731527))

(assert (=> b!2304082 m!2731527))

(declare-fun m!2731529 () Bool)

(assert (=> b!2304082 m!2731529))

(declare-fun m!2731531 () Bool)

(assert (=> d!681735 m!2731531))

(declare-fun m!2731533 () Bool)

(assert (=> d!681735 m!2731533))

(declare-fun m!2731535 () Bool)

(assert (=> d!681735 m!2731535))

(assert (=> d!681735 m!2730627))

(assert (=> b!2304083 m!2731523))

(declare-fun m!2731537 () Bool)

(assert (=> b!2304083 m!2731537))

(assert (=> b!2304083 m!2730419))

(assert (=> b!2304079 m!2731523))

(assert (=> b!2304086 m!2731523))

(declare-fun m!2731539 () Bool)

(assert (=> b!2304086 m!2731539))

(assert (=> b!2304086 m!2731539))

(declare-fun m!2731543 () Bool)

(assert (=> b!2304086 m!2731543))

(assert (=> b!2304086 m!2731543))

(declare-fun m!2731545 () Bool)

(assert (=> b!2304086 m!2731545))

(assert (=> b!2304080 m!2731523))

(assert (=> b!2304080 m!2731539))

(assert (=> b!2304080 m!2731539))

(assert (=> b!2304080 m!2731543))

(assert (=> b!2304080 m!2731543))

(declare-fun m!2731547 () Bool)

(assert (=> b!2304080 m!2731547))

(assert (=> bm!137081 d!681735))

(declare-fun d!681769 () Bool)

(assert (=> d!681769 (= (list!10801 lt!854154) (list!10803 (c!365074 lt!854154)))))

(declare-fun bs!457888 () Bool)

(assert (= bs!457888 d!681769))

(declare-fun m!2731555 () Bool)

(assert (=> bs!457888 m!2731555))

(assert (=> d!681165 d!681769))

(declare-fun d!681771 () Bool)

(assert (=> d!681771 (= (inv!37054 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (value!139077 (h!32819 tokens!456)))) (isBalanced!2691 (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (value!139077 (h!32819 tokens!456))))))))

(declare-fun bs!457889 () Bool)

(assert (= bs!457889 d!681771))

(declare-fun m!2731559 () Bool)

(assert (=> bs!457889 m!2731559))

(assert (=> tb!137719 d!681771))

(declare-fun d!681775 () Bool)

(declare-fun lt!854640 () Int)

(assert (=> d!681775 (>= lt!854640 0)))

(declare-fun e!1476541 () Int)

(assert (=> d!681775 (= lt!854640 e!1476541)))

(declare-fun c!365353 () Bool)

(assert (=> d!681775 (= c!365353 ((_ is Nil!27416) lt!854232))))

(assert (=> d!681775 (= (size!21626 lt!854232) lt!854640)))

(declare-fun b!2304097 () Bool)

(assert (=> b!2304097 (= e!1476541 0)))

(declare-fun b!2304098 () Bool)

(assert (=> b!2304098 (= e!1476541 (+ 1 (size!21626 (t!205984 lt!854232))))))

(assert (= (and d!681775 c!365353) b!2304097))

(assert (= (and d!681775 (not c!365353)) b!2304098))

(declare-fun m!2731565 () Bool)

(assert (=> b!2304098 m!2731565))

(assert (=> b!2303312 d!681775))

(assert (=> b!2303312 d!681321))

(declare-fun d!681777 () Bool)

(declare-fun lt!854641 () Int)

(assert (=> d!681777 (>= lt!854641 0)))

(declare-fun e!1476542 () Int)

(assert (=> d!681777 (= lt!854641 e!1476542)))

(declare-fun c!365354 () Bool)

(assert (=> d!681777 (= c!365354 ((_ is Nil!27416) (_2!16163 lt!854124)))))

(assert (=> d!681777 (= (size!21626 (_2!16163 lt!854124)) lt!854641)))

(declare-fun b!2304099 () Bool)

(assert (=> b!2304099 (= e!1476542 0)))

(declare-fun b!2304100 () Bool)

(assert (=> b!2304100 (= e!1476542 (+ 1 (size!21626 (t!205984 (_2!16163 lt!854124)))))))

(assert (= (and d!681777 c!365354) b!2304099))

(assert (= (and d!681777 (not c!365354)) b!2304100))

(declare-fun m!2731567 () Bool)

(assert (=> b!2304100 m!2731567))

(assert (=> b!2303312 d!681777))

(declare-fun d!681779 () Bool)

(assert (=> d!681779 (= (_2!16163 lt!854124) lt!854123)))

(assert (=> d!681779 true))

(declare-fun _$63!835 () Unit!40319)

(assert (=> d!681779 (= (choose!13455 lt!854122 (_2!16163 lt!854124) lt!854122 lt!854123 input!1722) _$63!835)))

(assert (=> d!681319 d!681779))

(declare-fun b!2304120 () Bool)

(declare-fun e!1476549 () Bool)

(assert (=> b!2304120 (= e!1476549 (>= (size!21626 input!1722) (size!21626 lt!854122)))))

(declare-fun b!2304119 () Bool)

(declare-fun e!1476547 () Bool)

(assert (=> b!2304119 (= e!1476547 (isPrefix!2385 (tail!3329 lt!854122) (tail!3329 input!1722)))))

(declare-fun b!2304118 () Bool)

(declare-fun res!985111 () Bool)

(assert (=> b!2304118 (=> (not res!985111) (not e!1476547))))

(assert (=> b!2304118 (= res!985111 (= (head!5044 lt!854122) (head!5044 input!1722)))))

(declare-fun b!2304117 () Bool)

(declare-fun e!1476548 () Bool)

(assert (=> b!2304117 (= e!1476548 e!1476547)))

(declare-fun res!985112 () Bool)

(assert (=> b!2304117 (=> (not res!985112) (not e!1476547))))

(assert (=> b!2304117 (= res!985112 (not ((_ is Nil!27416) input!1722)))))

(declare-fun d!681781 () Bool)

(assert (=> d!681781 e!1476549))

(declare-fun res!985110 () Bool)

(assert (=> d!681781 (=> res!985110 e!1476549)))

(declare-fun lt!854642 () Bool)

(assert (=> d!681781 (= res!985110 (not lt!854642))))

(assert (=> d!681781 (= lt!854642 e!1476548)))

(declare-fun res!985113 () Bool)

(assert (=> d!681781 (=> res!985113 e!1476548)))

(assert (=> d!681781 (= res!985113 ((_ is Nil!27416) lt!854122))))

(assert (=> d!681781 (= (isPrefix!2385 lt!854122 input!1722) lt!854642)))

(assert (= (and d!681781 (not res!985113)) b!2304117))

(assert (= (and b!2304117 res!985112) b!2304118))

(assert (= (and b!2304118 res!985111) b!2304119))

(assert (= (and d!681781 (not res!985110)) b!2304120))

(assert (=> b!2304120 m!2730419))

(assert (=> b!2304120 m!2730015))

(assert (=> b!2304119 m!2730451))

(assert (=> b!2304119 m!2730479))

(assert (=> b!2304119 m!2730451))

(assert (=> b!2304119 m!2730479))

(declare-fun m!2731569 () Bool)

(assert (=> b!2304119 m!2731569))

(assert (=> b!2304118 m!2730457))

(assert (=> b!2304118 m!2730493))

(assert (=> d!681319 d!681781))

(declare-fun b!2304138 () Bool)

(declare-fun e!1476554 () Bool)

(declare-fun tp!730790 () Bool)

(declare-fun tp!730792 () Bool)

(assert (=> b!2304138 (= e!1476554 (and tp!730790 tp!730792))))

(declare-fun b!2304137 () Bool)

(assert (=> b!2304137 (= e!1476554 tp_is_empty!10707)))

(declare-fun b!2304139 () Bool)

(declare-fun tp!730793 () Bool)

(assert (=> b!2304139 (= e!1476554 tp!730793)))

(declare-fun b!2304140 () Bool)

(declare-fun tp!730794 () Bool)

(declare-fun tp!730788 () Bool)

(assert (=> b!2304140 (= e!1476554 (and tp!730794 tp!730788))))

(assert (=> b!2303430 (= tp!730745 e!1476554)))

(assert (= (and b!2303430 ((_ is ElementMatch!6743) (regOne!13999 (regex!4395 otherR!12)))) b!2304137))

(assert (= (and b!2303430 ((_ is Concat!11301) (regOne!13999 (regex!4395 otherR!12)))) b!2304138))

(assert (= (and b!2303430 ((_ is Star!6743) (regOne!13999 (regex!4395 otherR!12)))) b!2304139))

(assert (= (and b!2303430 ((_ is Union!6743) (regOne!13999 (regex!4395 otherR!12)))) b!2304140))

(declare-fun b!2304143 () Bool)

(declare-fun e!1476556 () Bool)

(declare-fun tp!730797 () Bool)

(declare-fun tp!730798 () Bool)

(assert (=> b!2304143 (= e!1476556 (and tp!730797 tp!730798))))

(declare-fun b!2304142 () Bool)

(assert (=> b!2304142 (= e!1476556 tp_is_empty!10707)))

(declare-fun b!2304144 () Bool)

(declare-fun tp!730799 () Bool)

(assert (=> b!2304144 (= e!1476556 tp!730799)))

(declare-fun b!2304145 () Bool)

(declare-fun tp!730800 () Bool)

(declare-fun tp!730796 () Bool)

(assert (=> b!2304145 (= e!1476556 (and tp!730800 tp!730796))))

(assert (=> b!2303430 (= tp!730741 e!1476556)))

(assert (= (and b!2303430 ((_ is ElementMatch!6743) (regTwo!13999 (regex!4395 otherR!12)))) b!2304142))

(assert (= (and b!2303430 ((_ is Concat!11301) (regTwo!13999 (regex!4395 otherR!12)))) b!2304143))

(assert (= (and b!2303430 ((_ is Star!6743) (regTwo!13999 (regex!4395 otherR!12)))) b!2304144))

(assert (= (and b!2303430 ((_ is Union!6743) (regTwo!13999 (regex!4395 otherR!12)))) b!2304145))

(declare-fun b!2304152 () Bool)

(declare-fun b_free!69581 () Bool)

(declare-fun b_next!70285 () Bool)

(assert (=> b!2304152 (= b_free!69581 (not b_next!70285))))

(declare-fun t!206164 () Bool)

(declare-fun tb!137863 () Bool)

(assert (=> (and b!2304152 (= (toValue!6205 (transformation!4395 (h!32818 (t!205985 (t!205985 rules!1750))))) (toValue!6205 (transformation!4395 r!2363))) t!206164) tb!137863))

(declare-fun result!168062 () Bool)

(assert (= result!168062 result!167908))

(assert (=> d!681231 t!206164))

(assert (=> d!681233 t!206164))

(declare-fun t!206166 () Bool)

(declare-fun tb!137865 () Bool)

(assert (=> (and b!2304152 (= (toValue!6205 (transformation!4395 (h!32818 (t!205985 (t!205985 rules!1750))))) (toValue!6205 (transformation!4395 (rule!6741 (_1!16163 (get!8264 lt!854243)))))) t!206166) tb!137865))

(declare-fun result!168064 () Bool)

(assert (= result!168064 result!168014))

(assert (=> d!681467 t!206166))

(declare-fun b_and!183697 () Bool)

(declare-fun tp!730808 () Bool)

(assert (=> b!2304152 (= tp!730808 (and (=> t!206164 result!168062) (=> t!206166 result!168064) b_and!183697))))

(declare-fun b_free!69583 () Bool)

(declare-fun b_next!70287 () Bool)

(assert (=> b!2304152 (= b_free!69583 (not b_next!70287))))

(declare-fun tb!137867 () Bool)

(declare-fun t!206168 () Bool)

(assert (=> (and b!2304152 (= (toChars!6064 (transformation!4395 (h!32818 (t!205985 (t!205985 rules!1750))))) (toChars!6064 (transformation!4395 (rule!6741 (head!5042 tokens!456))))) t!206168) tb!137867))

(declare-fun result!168066 () Bool)

(assert (= result!168066 result!167870))

(assert (=> d!681165 t!206168))

(declare-fun tb!137869 () Bool)

(declare-fun t!206170 () Bool)

(assert (=> (and b!2304152 (= (toChars!6064 (transformation!4395 (h!32818 (t!205985 (t!205985 rules!1750))))) (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456))))) t!206170) tb!137869))

(declare-fun result!168068 () Bool)

(assert (= result!168068 result!167900))

(assert (=> b!2303102 t!206170))

(declare-fun tb!137871 () Bool)

(declare-fun t!206172 () Bool)

(assert (=> (and b!2304152 (= (toChars!6064 (transformation!4395 (h!32818 (t!205985 (t!205985 rules!1750))))) (toChars!6064 (transformation!4395 (rule!6741 (_1!16163 (get!8264 lt!854243)))))) t!206172) tb!137871))

(declare-fun result!168070 () Bool)

(assert (= result!168070 result!167992))

(assert (=> d!681391 t!206172))

(declare-fun t!206174 () Bool)

(declare-fun tb!137873 () Bool)

(assert (=> (and b!2304152 (= (toChars!6064 (transformation!4395 (h!32818 (t!205985 (t!205985 rules!1750))))) (toChars!6064 (transformation!4395 (rule!6741 (h!32819 (t!205986 tokens!456)))))) t!206174) tb!137873))

(declare-fun result!168072 () Bool)

(assert (= result!168072 result!168026))

(assert (=> b!2303692 t!206174))

(assert (=> d!681313 t!206170))

(declare-fun t!206176 () Bool)

(declare-fun tb!137875 () Bool)

(assert (=> (and b!2304152 (= (toChars!6064 (transformation!4395 (h!32818 (t!205985 (t!205985 rules!1750))))) (toChars!6064 (transformation!4395 r!2363))) t!206176) tb!137875))

(declare-fun result!168074 () Bool)

(assert (= result!168074 result!167952))

(assert (=> d!681233 t!206176))

(declare-fun tp!730806 () Bool)

(declare-fun b_and!183699 () Bool)

(assert (=> b!2304152 (= tp!730806 (and (=> t!206170 result!168068) (=> t!206168 result!168066) (=> t!206176 result!168074) (=> t!206172 result!168070) (=> t!206174 result!168072) b_and!183699))))

(declare-fun e!1476562 () Bool)

(assert (=> b!2304152 (= e!1476562 (and tp!730808 tp!730806))))

(declare-fun b!2304151 () Bool)

(declare-fun tp!730810 () Bool)

(declare-fun e!1476558 () Bool)

(assert (=> b!2304151 (= e!1476558 (and tp!730810 (inv!37046 (tag!4885 (h!32818 (t!205985 (t!205985 rules!1750))))) (inv!37049 (transformation!4395 (h!32818 (t!205985 (t!205985 rules!1750))))) e!1476562))))

(declare-fun b!2304150 () Bool)

(declare-fun e!1476559 () Bool)

(declare-fun tp!730807 () Bool)

(assert (=> b!2304150 (= e!1476559 (and e!1476558 tp!730807))))

(assert (=> b!2303380 (= tp!730692 e!1476559)))

(assert (= b!2304151 b!2304152))

(assert (= b!2304150 b!2304151))

(assert (= (and b!2303380 ((_ is Cons!27417) (t!205985 (t!205985 rules!1750)))) b!2304150))

(declare-fun m!2731571 () Bool)

(assert (=> b!2304151 m!2731571))

(declare-fun m!2731573 () Bool)

(assert (=> b!2304151 m!2731573))

(declare-fun b!2304184 () Bool)

(declare-fun e!1476570 () Bool)

(declare-fun tp!730845 () Bool)

(declare-fun tp!730846 () Bool)

(assert (=> b!2304184 (= e!1476570 (and tp!730845 tp!730846))))

(declare-fun b!2304183 () Bool)

(assert (=> b!2304183 (= e!1476570 tp_is_empty!10707)))

(declare-fun b!2304185 () Bool)

(declare-fun tp!730847 () Bool)

(assert (=> b!2304185 (= e!1476570 tp!730847)))

(declare-fun b!2304186 () Bool)

(declare-fun tp!730848 () Bool)

(declare-fun tp!730844 () Bool)

(assert (=> b!2304186 (= e!1476570 (and tp!730848 tp!730844))))

(assert (=> b!2303395 (= tp!730708 e!1476570)))

(assert (= (and b!2303395 ((_ is ElementMatch!6743) (reg!7072 (regex!4395 (h!32818 rules!1750))))) b!2304183))

(assert (= (and b!2303395 ((_ is Concat!11301) (reg!7072 (regex!4395 (h!32818 rules!1750))))) b!2304184))

(assert (= (and b!2303395 ((_ is Star!6743) (reg!7072 (regex!4395 (h!32818 rules!1750))))) b!2304185))

(assert (= (and b!2303395 ((_ is Union!6743) (reg!7072 (regex!4395 (h!32818 rules!1750))))) b!2304186))

(declare-fun b!2304190 () Bool)

(declare-fun e!1476573 () Bool)

(declare-fun tp!730852 () Bool)

(declare-fun tp!730853 () Bool)

(assert (=> b!2304190 (= e!1476573 (and tp!730852 tp!730853))))

(declare-fun b!2304189 () Bool)

(assert (=> b!2304189 (= e!1476573 tp_is_empty!10707)))

(declare-fun b!2304191 () Bool)

(declare-fun tp!730854 () Bool)

(assert (=> b!2304191 (= e!1476573 tp!730854)))

(declare-fun b!2304192 () Bool)

(declare-fun tp!730855 () Bool)

(declare-fun tp!730851 () Bool)

(assert (=> b!2304192 (= e!1476573 (and tp!730855 tp!730851))))

(assert (=> b!2303420 (= tp!730730 e!1476573)))

(assert (= (and b!2303420 ((_ is ElementMatch!6743) (regex!4395 (rule!6741 (h!32819 (t!205986 tokens!456)))))) b!2304189))

(assert (= (and b!2303420 ((_ is Concat!11301) (regex!4395 (rule!6741 (h!32819 (t!205986 tokens!456)))))) b!2304190))

(assert (= (and b!2303420 ((_ is Star!6743) (regex!4395 (rule!6741 (h!32819 (t!205986 tokens!456)))))) b!2304191))

(assert (= (and b!2303420 ((_ is Union!6743) (regex!4395 (rule!6741 (h!32819 (t!205986 tokens!456)))))) b!2304192))

(declare-fun b!2304194 () Bool)

(declare-fun e!1476574 () Bool)

(declare-fun tp!730857 () Bool)

(declare-fun tp!730858 () Bool)

(assert (=> b!2304194 (= e!1476574 (and tp!730857 tp!730858))))

(declare-fun b!2304193 () Bool)

(assert (=> b!2304193 (= e!1476574 tp_is_empty!10707)))

(declare-fun b!2304195 () Bool)

(declare-fun tp!730859 () Bool)

(assert (=> b!2304195 (= e!1476574 tp!730859)))

(declare-fun b!2304196 () Bool)

(declare-fun tp!730860 () Bool)

(declare-fun tp!730856 () Bool)

(assert (=> b!2304196 (= e!1476574 (and tp!730860 tp!730856))))

(assert (=> b!2303394 (= tp!730706 e!1476574)))

(assert (= (and b!2303394 ((_ is ElementMatch!6743) (regOne!13998 (regex!4395 (h!32818 rules!1750))))) b!2304193))

(assert (= (and b!2303394 ((_ is Concat!11301) (regOne!13998 (regex!4395 (h!32818 rules!1750))))) b!2304194))

(assert (= (and b!2303394 ((_ is Star!6743) (regOne!13998 (regex!4395 (h!32818 rules!1750))))) b!2304195))

(assert (= (and b!2303394 ((_ is Union!6743) (regOne!13998 (regex!4395 (h!32818 rules!1750))))) b!2304196))

(declare-fun b!2304198 () Bool)

(declare-fun e!1476575 () Bool)

(declare-fun tp!730862 () Bool)

(declare-fun tp!730863 () Bool)

(assert (=> b!2304198 (= e!1476575 (and tp!730862 tp!730863))))

(declare-fun b!2304197 () Bool)

(assert (=> b!2304197 (= e!1476575 tp_is_empty!10707)))

(declare-fun b!2304199 () Bool)

(declare-fun tp!730864 () Bool)

(assert (=> b!2304199 (= e!1476575 tp!730864)))

(declare-fun b!2304200 () Bool)

(declare-fun tp!730865 () Bool)

(declare-fun tp!730861 () Bool)

(assert (=> b!2304200 (= e!1476575 (and tp!730865 tp!730861))))

(assert (=> b!2303394 (= tp!730707 e!1476575)))

(assert (= (and b!2303394 ((_ is ElementMatch!6743) (regTwo!13998 (regex!4395 (h!32818 rules!1750))))) b!2304197))

(assert (= (and b!2303394 ((_ is Concat!11301) (regTwo!13998 (regex!4395 (h!32818 rules!1750))))) b!2304198))

(assert (= (and b!2303394 ((_ is Star!6743) (regTwo!13998 (regex!4395 (h!32818 rules!1750))))) b!2304199))

(assert (= (and b!2303394 ((_ is Union!6743) (regTwo!13998 (regex!4395 (h!32818 rules!1750))))) b!2304200))

(declare-fun b!2304201 () Bool)

(declare-fun e!1476576 () Bool)

(declare-fun tp!730866 () Bool)

(assert (=> b!2304201 (= e!1476576 (and tp_is_empty!10707 tp!730866))))

(assert (=> b!2303402 (= tp!730713 e!1476576)))

(assert (= (and b!2303402 ((_ is Cons!27416) (t!205984 (t!205984 otherP!12)))) b!2304201))

(declare-fun b!2304202 () Bool)

(declare-fun e!1476577 () Bool)

(declare-fun tp!730867 () Bool)

(assert (=> b!2304202 (= e!1476577 (and tp_is_empty!10707 tp!730867))))

(assert (=> b!2303419 (= tp!730731 e!1476577)))

(assert (= (and b!2303419 ((_ is Cons!27416) (originalCharacters!5165 (h!32819 (t!205986 tokens!456))))) b!2304202))

(declare-fun b!2304204 () Bool)

(declare-fun e!1476578 () Bool)

(declare-fun tp!730869 () Bool)

(declare-fun tp!730870 () Bool)

(assert (=> b!2304204 (= e!1476578 (and tp!730869 tp!730870))))

(declare-fun b!2304203 () Bool)

(assert (=> b!2304203 (= e!1476578 tp_is_empty!10707)))

(declare-fun b!2304205 () Bool)

(declare-fun tp!730871 () Bool)

(assert (=> b!2304205 (= e!1476578 tp!730871)))

(declare-fun b!2304206 () Bool)

(declare-fun tp!730872 () Bool)

(declare-fun tp!730868 () Bool)

(assert (=> b!2304206 (= e!1476578 (and tp!730872 tp!730868))))

(assert (=> b!2303429 (= tp!730744 e!1476578)))

(assert (= (and b!2303429 ((_ is ElementMatch!6743) (reg!7072 (regex!4395 otherR!12)))) b!2304203))

(assert (= (and b!2303429 ((_ is Concat!11301) (reg!7072 (regex!4395 otherR!12)))) b!2304204))

(assert (= (and b!2303429 ((_ is Star!6743) (reg!7072 (regex!4395 otherR!12)))) b!2304205))

(assert (= (and b!2303429 ((_ is Union!6743) (reg!7072 (regex!4395 otherR!12)))) b!2304206))

(declare-fun b!2304210 () Bool)

(declare-fun e!1476581 () Bool)

(declare-fun tp!730876 () Bool)

(assert (=> b!2304210 (= e!1476581 (and tp_is_empty!10707 tp!730876))))

(assert (=> b!2303403 (= tp!730714 e!1476581)))

(assert (= (and b!2303403 ((_ is Cons!27416) (t!205984 (t!205984 suffix!886)))) b!2304210))

(declare-fun b!2304212 () Bool)

(declare-fun e!1476582 () Bool)

(declare-fun tp!730878 () Bool)

(declare-fun tp!730879 () Bool)

(assert (=> b!2304212 (= e!1476582 (and tp!730878 tp!730879))))

(declare-fun b!2304211 () Bool)

(assert (=> b!2304211 (= e!1476582 tp_is_empty!10707)))

(declare-fun b!2304213 () Bool)

(declare-fun tp!730880 () Bool)

(assert (=> b!2304213 (= e!1476582 tp!730880)))

(declare-fun b!2304214 () Bool)

(declare-fun tp!730881 () Bool)

(declare-fun tp!730877 () Bool)

(assert (=> b!2304214 (= e!1476582 (and tp!730881 tp!730877))))

(assert (=> b!2303428 (= tp!730742 e!1476582)))

(assert (= (and b!2303428 ((_ is ElementMatch!6743) (regOne!13998 (regex!4395 otherR!12)))) b!2304211))

(assert (= (and b!2303428 ((_ is Concat!11301) (regOne!13998 (regex!4395 otherR!12)))) b!2304212))

(assert (= (and b!2303428 ((_ is Star!6743) (regOne!13998 (regex!4395 otherR!12)))) b!2304213))

(assert (= (and b!2303428 ((_ is Union!6743) (regOne!13998 (regex!4395 otherR!12)))) b!2304214))

(declare-fun b!2304216 () Bool)

(declare-fun e!1476583 () Bool)

(declare-fun tp!730883 () Bool)

(declare-fun tp!730884 () Bool)

(assert (=> b!2304216 (= e!1476583 (and tp!730883 tp!730884))))

(declare-fun b!2304215 () Bool)

(assert (=> b!2304215 (= e!1476583 tp_is_empty!10707)))

(declare-fun b!2304217 () Bool)

(declare-fun tp!730885 () Bool)

(assert (=> b!2304217 (= e!1476583 tp!730885)))

(declare-fun b!2304218 () Bool)

(declare-fun tp!730886 () Bool)

(declare-fun tp!730882 () Bool)

(assert (=> b!2304218 (= e!1476583 (and tp!730886 tp!730882))))

(assert (=> b!2303428 (= tp!730743 e!1476583)))

(assert (= (and b!2303428 ((_ is ElementMatch!6743) (regTwo!13998 (regex!4395 otherR!12)))) b!2304215))

(assert (= (and b!2303428 ((_ is Concat!11301) (regTwo!13998 (regex!4395 otherR!12)))) b!2304216))

(assert (= (and b!2303428 ((_ is Star!6743) (regTwo!13998 (regex!4395 otherR!12)))) b!2304217))

(assert (= (and b!2303428 ((_ is Union!6743) (regTwo!13998 (regex!4395 otherR!12)))) b!2304218))

(declare-fun b!2304223 () Bool)

(declare-fun e!1476588 () Bool)

(declare-fun tp!730892 () Bool)

(declare-fun tp!730893 () Bool)

(assert (=> b!2304223 (= e!1476588 (and tp!730892 tp!730893))))

(declare-fun b!2304222 () Bool)

(assert (=> b!2304222 (= e!1476588 tp_is_empty!10707)))

(declare-fun b!2304224 () Bool)

(declare-fun tp!730894 () Bool)

(assert (=> b!2304224 (= e!1476588 tp!730894)))

(declare-fun b!2304225 () Bool)

(declare-fun tp!730895 () Bool)

(declare-fun tp!730891 () Bool)

(assert (=> b!2304225 (= e!1476588 (and tp!730895 tp!730891))))

(assert (=> b!2303396 (= tp!730709 e!1476588)))

(assert (= (and b!2303396 ((_ is ElementMatch!6743) (regOne!13999 (regex!4395 (h!32818 rules!1750))))) b!2304222))

(assert (= (and b!2303396 ((_ is Concat!11301) (regOne!13999 (regex!4395 (h!32818 rules!1750))))) b!2304223))

(assert (= (and b!2303396 ((_ is Star!6743) (regOne!13999 (regex!4395 (h!32818 rules!1750))))) b!2304224))

(assert (= (and b!2303396 ((_ is Union!6743) (regOne!13999 (regex!4395 (h!32818 rules!1750))))) b!2304225))

(declare-fun b!2304227 () Bool)

(declare-fun e!1476589 () Bool)

(declare-fun tp!730897 () Bool)

(declare-fun tp!730898 () Bool)

(assert (=> b!2304227 (= e!1476589 (and tp!730897 tp!730898))))

(declare-fun b!2304226 () Bool)

(assert (=> b!2304226 (= e!1476589 tp_is_empty!10707)))

(declare-fun b!2304228 () Bool)

(declare-fun tp!730899 () Bool)

(assert (=> b!2304228 (= e!1476589 tp!730899)))

(declare-fun b!2304229 () Bool)

(declare-fun tp!730900 () Bool)

(declare-fun tp!730896 () Bool)

(assert (=> b!2304229 (= e!1476589 (and tp!730900 tp!730896))))

(assert (=> b!2303396 (= tp!730705 e!1476589)))

(assert (= (and b!2303396 ((_ is ElementMatch!6743) (regTwo!13999 (regex!4395 (h!32818 rules!1750))))) b!2304226))

(assert (= (and b!2303396 ((_ is Concat!11301) (regTwo!13999 (regex!4395 (h!32818 rules!1750))))) b!2304227))

(assert (= (and b!2303396 ((_ is Star!6743) (regTwo!13999 (regex!4395 (h!32818 rules!1750))))) b!2304228))

(assert (= (and b!2303396 ((_ is Union!6743) (regTwo!13999 (regex!4395 (h!32818 rules!1750))))) b!2304229))

(declare-fun tp!730919 () Bool)

(declare-fun b!2304247 () Bool)

(declare-fun tp!730918 () Bool)

(declare-fun e!1476598 () Bool)

(assert (=> b!2304247 (= e!1476598 (and (inv!37053 (left!20772 (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 r!2363)) (dynLambda!11920 (toValue!6205 (transformation!4395 r!2363)) lt!854134))))) tp!730918 (inv!37053 (right!21102 (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 r!2363)) (dynLambda!11920 (toValue!6205 (transformation!4395 r!2363)) lt!854134))))) tp!730919))))

(declare-fun b!2304249 () Bool)

(declare-fun e!1476597 () Bool)

(declare-fun tp!730920 () Bool)

(assert (=> b!2304249 (= e!1476597 tp!730920)))

(declare-fun b!2304248 () Bool)

(declare-fun inv!37060 (IArray!17881) Bool)

(assert (=> b!2304248 (= e!1476598 (and (inv!37060 (xs!11880 (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 r!2363)) (dynLambda!11920 (toValue!6205 (transformation!4395 r!2363)) lt!854134))))) e!1476597))))

(assert (=> b!2303287 (= tp!730669 (and (inv!37053 (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 r!2363)) (dynLambda!11920 (toValue!6205 (transformation!4395 r!2363)) lt!854134)))) e!1476598))))

(assert (= (and b!2303287 ((_ is Node!8938) (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 r!2363)) (dynLambda!11920 (toValue!6205 (transformation!4395 r!2363)) lt!854134))))) b!2304247))

(assert (= b!2304248 b!2304249))

(assert (= (and b!2303287 ((_ is Leaf!13121) (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 r!2363)) (dynLambda!11920 (toValue!6205 (transformation!4395 r!2363)) lt!854134))))) b!2304248))

(declare-fun m!2731585 () Bool)

(assert (=> b!2304247 m!2731585))

(declare-fun m!2731587 () Bool)

(assert (=> b!2304247 m!2731587))

(declare-fun m!2731589 () Bool)

(assert (=> b!2304248 m!2731589))

(assert (=> b!2303287 m!2730377))

(declare-fun b!2304260 () Bool)

(declare-fun e!1476603 () Bool)

(declare-fun tp!730933 () Bool)

(assert (=> b!2304260 (= e!1476603 (and tp_is_empty!10707 tp!730933))))

(assert (=> b!2303426 (= tp!730740 e!1476603)))

(assert (= (and b!2303426 ((_ is Cons!27416) (t!205984 (t!205984 input!1722)))) b!2304260))

(declare-fun b!2304264 () Bool)

(declare-fun b_free!69589 () Bool)

(declare-fun b_next!70293 () Bool)

(assert (=> b!2304264 (= b_free!69589 (not b_next!70293))))

(declare-fun tb!137891 () Bool)

(declare-fun t!206192 () Bool)

(assert (=> (and b!2304264 (= (toValue!6205 (transformation!4395 (rule!6741 (h!32819 (t!205986 (t!205986 tokens!456)))))) (toValue!6205 (transformation!4395 r!2363))) t!206192) tb!137891))

(declare-fun result!168094 () Bool)

(assert (= result!168094 result!167908))

(assert (=> d!681231 t!206192))

(assert (=> d!681233 t!206192))

(declare-fun t!206194 () Bool)

(declare-fun tb!137893 () Bool)

(assert (=> (and b!2304264 (= (toValue!6205 (transformation!4395 (rule!6741 (h!32819 (t!205986 (t!205986 tokens!456)))))) (toValue!6205 (transformation!4395 (rule!6741 (_1!16163 (get!8264 lt!854243)))))) t!206194) tb!137893))

(declare-fun result!168096 () Bool)

(assert (= result!168096 result!168014))

(assert (=> d!681467 t!206194))

(declare-fun tp!730936 () Bool)

(declare-fun b_and!183705 () Bool)

(assert (=> b!2304264 (= tp!730936 (and (=> t!206192 result!168094) (=> t!206194 result!168096) b_and!183705))))

(declare-fun b_free!69591 () Bool)

(declare-fun b_next!70295 () Bool)

(assert (=> b!2304264 (= b_free!69591 (not b_next!70295))))

(declare-fun t!206196 () Bool)

(declare-fun tb!137895 () Bool)

(assert (=> (and b!2304264 (= (toChars!6064 (transformation!4395 (rule!6741 (h!32819 (t!205986 (t!205986 tokens!456)))))) (toChars!6064 (transformation!4395 (rule!6741 (head!5042 tokens!456))))) t!206196) tb!137895))

(declare-fun result!168098 () Bool)

(assert (= result!168098 result!167870))

(assert (=> d!681165 t!206196))

(declare-fun t!206198 () Bool)

(declare-fun tb!137897 () Bool)

(assert (=> (and b!2304264 (= (toChars!6064 (transformation!4395 (rule!6741 (h!32819 (t!205986 (t!205986 tokens!456)))))) (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456))))) t!206198) tb!137897))

(declare-fun result!168100 () Bool)

(assert (= result!168100 result!167900))

(assert (=> b!2303102 t!206198))

(declare-fun tb!137899 () Bool)

(declare-fun t!206200 () Bool)

(assert (=> (and b!2304264 (= (toChars!6064 (transformation!4395 (rule!6741 (h!32819 (t!205986 (t!205986 tokens!456)))))) (toChars!6064 (transformation!4395 (rule!6741 (_1!16163 (get!8264 lt!854243)))))) t!206200) tb!137899))

(declare-fun result!168102 () Bool)

(assert (= result!168102 result!167992))

(assert (=> d!681391 t!206200))

(declare-fun t!206202 () Bool)

(declare-fun tb!137901 () Bool)

(assert (=> (and b!2304264 (= (toChars!6064 (transformation!4395 (rule!6741 (h!32819 (t!205986 (t!205986 tokens!456)))))) (toChars!6064 (transformation!4395 (rule!6741 (h!32819 (t!205986 tokens!456)))))) t!206202) tb!137901))

(declare-fun result!168104 () Bool)

(assert (= result!168104 result!168026))

(assert (=> b!2303692 t!206202))

(assert (=> d!681313 t!206198))

(declare-fun t!206204 () Bool)

(declare-fun tb!137903 () Bool)

(assert (=> (and b!2304264 (= (toChars!6064 (transformation!4395 (rule!6741 (h!32819 (t!205986 (t!205986 tokens!456)))))) (toChars!6064 (transformation!4395 r!2363))) t!206204) tb!137903))

(declare-fun result!168106 () Bool)

(assert (= result!168106 result!167952))

(assert (=> d!681233 t!206204))

(declare-fun tp!730937 () Bool)

(declare-fun b_and!183707 () Bool)

(assert (=> b!2304264 (= tp!730937 (and (=> t!206204 result!168106) (=> t!206198 result!168100) (=> t!206200 result!168102) (=> t!206196 result!168098) (=> t!206202 result!168104) b_and!183707))))

(declare-fun e!1476604 () Bool)

(assert (=> b!2303418 (= tp!730734 e!1476604)))

(declare-fun b!2304262 () Bool)

(declare-fun tp!730935 () Bool)

(declare-fun e!1476606 () Bool)

(declare-fun e!1476608 () Bool)

(assert (=> b!2304262 (= e!1476608 (and (inv!21 (value!139077 (h!32819 (t!205986 (t!205986 tokens!456))))) e!1476606 tp!730935))))

(declare-fun e!1476609 () Bool)

(assert (=> b!2304264 (= e!1476609 (and tp!730936 tp!730937))))

(declare-fun tp!730938 () Bool)

(declare-fun b!2304261 () Bool)

(assert (=> b!2304261 (= e!1476604 (and (inv!37050 (h!32819 (t!205986 (t!205986 tokens!456)))) e!1476608 tp!730938))))

(declare-fun tp!730934 () Bool)

(declare-fun b!2304263 () Bool)

(assert (=> b!2304263 (= e!1476606 (and tp!730934 (inv!37046 (tag!4885 (rule!6741 (h!32819 (t!205986 (t!205986 tokens!456)))))) (inv!37049 (transformation!4395 (rule!6741 (h!32819 (t!205986 (t!205986 tokens!456)))))) e!1476609))))

(assert (= b!2304263 b!2304264))

(assert (= b!2304262 b!2304263))

(assert (= b!2304261 b!2304262))

(assert (= (and b!2303418 ((_ is Cons!27418) (t!205986 (t!205986 tokens!456)))) b!2304261))

(declare-fun m!2731597 () Bool)

(assert (=> b!2304262 m!2731597))

(declare-fun m!2731599 () Bool)

(assert (=> b!2304261 m!2731599))

(declare-fun m!2731601 () Bool)

(assert (=> b!2304263 m!2731601))

(declare-fun m!2731603 () Bool)

(assert (=> b!2304263 m!2731603))

(declare-fun b!2304285 () Bool)

(declare-fun e!1476623 () Bool)

(declare-fun tp!730963 () Bool)

(declare-fun tp!730964 () Bool)

(assert (=> b!2304285 (= e!1476623 (and (inv!37053 (left!20772 (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (head!5042 tokens!456)))) (value!139077 (head!5042 tokens!456)))))) tp!730963 (inv!37053 (right!21102 (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (head!5042 tokens!456)))) (value!139077 (head!5042 tokens!456)))))) tp!730964))))

(declare-fun b!2304287 () Bool)

(declare-fun e!1476622 () Bool)

(declare-fun tp!730965 () Bool)

(assert (=> b!2304287 (= e!1476622 tp!730965)))

(declare-fun b!2304286 () Bool)

(assert (=> b!2304286 (= e!1476623 (and (inv!37060 (xs!11880 (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (head!5042 tokens!456)))) (value!139077 (head!5042 tokens!456)))))) e!1476622))))

(assert (=> b!2302979 (= tp!730612 (and (inv!37053 (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (head!5042 tokens!456)))) (value!139077 (head!5042 tokens!456))))) e!1476623))))

(assert (= (and b!2302979 ((_ is Node!8938) (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (head!5042 tokens!456)))) (value!139077 (head!5042 tokens!456)))))) b!2304285))

(assert (= b!2304286 b!2304287))

(assert (= (and b!2302979 ((_ is Leaf!13121) (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (head!5042 tokens!456)))) (value!139077 (head!5042 tokens!456)))))) b!2304286))

(declare-fun m!2731605 () Bool)

(assert (=> b!2304285 m!2731605))

(declare-fun m!2731607 () Bool)

(assert (=> b!2304285 m!2731607))

(declare-fun m!2731609 () Bool)

(assert (=> b!2304286 m!2731609))

(assert (=> b!2302979 m!2730087))

(declare-fun tp!730967 () Bool)

(declare-fun e!1476625 () Bool)

(declare-fun b!2304288 () Bool)

(declare-fun tp!730966 () Bool)

(assert (=> b!2304288 (= e!1476625 (and (inv!37053 (left!20772 (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (value!139077 (h!32819 tokens!456)))))) tp!730966 (inv!37053 (right!21102 (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (value!139077 (h!32819 tokens!456)))))) tp!730967))))

(declare-fun b!2304290 () Bool)

(declare-fun e!1476624 () Bool)

(declare-fun tp!730968 () Bool)

(assert (=> b!2304290 (= e!1476624 tp!730968)))

(declare-fun b!2304289 () Bool)

(assert (=> b!2304289 (= e!1476625 (and (inv!37060 (xs!11880 (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (value!139077 (h!32819 tokens!456)))))) e!1476624))))

(assert (=> b!2303104 (= tp!730616 (and (inv!37053 (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (value!139077 (h!32819 tokens!456))))) e!1476625))))

(assert (= (and b!2303104 ((_ is Node!8938) (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (value!139077 (h!32819 tokens!456)))))) b!2304288))

(assert (= b!2304289 b!2304290))

(assert (= (and b!2303104 ((_ is Leaf!13121) (c!365074 (dynLambda!11919 (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (value!139077 (h!32819 tokens!456)))))) b!2304289))

(declare-fun m!2731611 () Bool)

(assert (=> b!2304288 m!2731611))

(declare-fun m!2731613 () Bool)

(assert (=> b!2304288 m!2731613))

(declare-fun m!2731615 () Bool)

(assert (=> b!2304289 m!2731615))

(assert (=> b!2303104 m!2730225))

(declare-fun b!2304291 () Bool)

(declare-fun e!1476626 () Bool)

(declare-fun tp!730969 () Bool)

(assert (=> b!2304291 (= e!1476626 (and tp_is_empty!10707 tp!730969))))

(assert (=> b!2303401 (= tp!730712 e!1476626)))

(assert (= (and b!2303401 ((_ is Cons!27416) (t!205984 (originalCharacters!5165 (h!32819 tokens!456))))) b!2304291))

(declare-fun b!2304293 () Bool)

(declare-fun e!1476627 () Bool)

(declare-fun tp!730971 () Bool)

(declare-fun tp!730972 () Bool)

(assert (=> b!2304293 (= e!1476627 (and tp!730971 tp!730972))))

(declare-fun b!2304292 () Bool)

(assert (=> b!2304292 (= e!1476627 tp_is_empty!10707)))

(declare-fun b!2304294 () Bool)

(declare-fun tp!730973 () Bool)

(assert (=> b!2304294 (= e!1476627 tp!730973)))

(declare-fun b!2304295 () Bool)

(declare-fun tp!730974 () Bool)

(declare-fun tp!730970 () Bool)

(assert (=> b!2304295 (= e!1476627 (and tp!730974 tp!730970))))

(assert (=> b!2303424 (= tp!730738 e!1476627)))

(assert (= (and b!2303424 ((_ is ElementMatch!6743) (reg!7072 (regex!4395 r!2363)))) b!2304292))

(assert (= (and b!2303424 ((_ is Concat!11301) (reg!7072 (regex!4395 r!2363)))) b!2304293))

(assert (= (and b!2303424 ((_ is Star!6743) (reg!7072 (regex!4395 r!2363)))) b!2304294))

(assert (= (and b!2303424 ((_ is Union!6743) (reg!7072 (regex!4395 r!2363)))) b!2304295))

(declare-fun b!2304300 () Bool)

(declare-fun e!1476630 () Bool)

(declare-fun tp!730979 () Bool)

(declare-fun tp!730980 () Bool)

(assert (=> b!2304300 (= e!1476630 (and tp!730979 tp!730980))))

(declare-fun b!2304299 () Bool)

(assert (=> b!2304299 (= e!1476630 tp_is_empty!10707)))

(declare-fun b!2304301 () Bool)

(declare-fun tp!730981 () Bool)

(assert (=> b!2304301 (= e!1476630 tp!730981)))

(declare-fun b!2304302 () Bool)

(declare-fun tp!730982 () Bool)

(declare-fun tp!730978 () Bool)

(assert (=> b!2304302 (= e!1476630 (and tp!730982 tp!730978))))

(assert (=> b!2303406 (= tp!730718 e!1476630)))

(assert (= (and b!2303406 ((_ is ElementMatch!6743) (reg!7072 (regex!4395 (rule!6741 (h!32819 tokens!456)))))) b!2304299))

(assert (= (and b!2303406 ((_ is Concat!11301) (reg!7072 (regex!4395 (rule!6741 (h!32819 tokens!456)))))) b!2304300))

(assert (= (and b!2303406 ((_ is Star!6743) (reg!7072 (regex!4395 (rule!6741 (h!32819 tokens!456)))))) b!2304301))

(assert (= (and b!2303406 ((_ is Union!6743) (reg!7072 (regex!4395 (rule!6741 (h!32819 tokens!456)))))) b!2304302))

(declare-fun b!2304304 () Bool)

(declare-fun e!1476631 () Bool)

(declare-fun tp!730984 () Bool)

(declare-fun tp!730985 () Bool)

(assert (=> b!2304304 (= e!1476631 (and tp!730984 tp!730985))))

(declare-fun b!2304303 () Bool)

(assert (=> b!2304303 (= e!1476631 tp_is_empty!10707)))

(declare-fun b!2304305 () Bool)

(declare-fun tp!730986 () Bool)

(assert (=> b!2304305 (= e!1476631 tp!730986)))

(declare-fun b!2304306 () Bool)

(declare-fun tp!730987 () Bool)

(declare-fun tp!730983 () Bool)

(assert (=> b!2304306 (= e!1476631 (and tp!730987 tp!730983))))

(assert (=> b!2303423 (= tp!730736 e!1476631)))

(assert (= (and b!2303423 ((_ is ElementMatch!6743) (regOne!13998 (regex!4395 r!2363)))) b!2304303))

(assert (= (and b!2303423 ((_ is Concat!11301) (regOne!13998 (regex!4395 r!2363)))) b!2304304))

(assert (= (and b!2303423 ((_ is Star!6743) (regOne!13998 (regex!4395 r!2363)))) b!2304305))

(assert (= (and b!2303423 ((_ is Union!6743) (regOne!13998 (regex!4395 r!2363)))) b!2304306))

(declare-fun b!2304308 () Bool)

(declare-fun e!1476632 () Bool)

(declare-fun tp!730989 () Bool)

(declare-fun tp!730990 () Bool)

(assert (=> b!2304308 (= e!1476632 (and tp!730989 tp!730990))))

(declare-fun b!2304307 () Bool)

(assert (=> b!2304307 (= e!1476632 tp_is_empty!10707)))

(declare-fun b!2304309 () Bool)

(declare-fun tp!730991 () Bool)

(assert (=> b!2304309 (= e!1476632 tp!730991)))

(declare-fun b!2304310 () Bool)

(declare-fun tp!730992 () Bool)

(declare-fun tp!730988 () Bool)

(assert (=> b!2304310 (= e!1476632 (and tp!730992 tp!730988))))

(assert (=> b!2303423 (= tp!730737 e!1476632)))

(assert (= (and b!2303423 ((_ is ElementMatch!6743) (regTwo!13998 (regex!4395 r!2363)))) b!2304307))

(assert (= (and b!2303423 ((_ is Concat!11301) (regTwo!13998 (regex!4395 r!2363)))) b!2304308))

(assert (= (and b!2303423 ((_ is Star!6743) (regTwo!13998 (regex!4395 r!2363)))) b!2304309))

(assert (= (and b!2303423 ((_ is Union!6743) (regTwo!13998 (regex!4395 r!2363)))) b!2304310))

(declare-fun b!2304312 () Bool)

(declare-fun e!1476633 () Bool)

(declare-fun tp!730994 () Bool)

(declare-fun tp!730995 () Bool)

(assert (=> b!2304312 (= e!1476633 (and tp!730994 tp!730995))))

(declare-fun b!2304311 () Bool)

(assert (=> b!2304311 (= e!1476633 tp_is_empty!10707)))

(declare-fun b!2304313 () Bool)

(declare-fun tp!730996 () Bool)

(assert (=> b!2304313 (= e!1476633 tp!730996)))

(declare-fun b!2304314 () Bool)

(declare-fun tp!730997 () Bool)

(declare-fun tp!730993 () Bool)

(assert (=> b!2304314 (= e!1476633 (and tp!730997 tp!730993))))

(assert (=> b!2303405 (= tp!730716 e!1476633)))

(assert (= (and b!2303405 ((_ is ElementMatch!6743) (regOne!13998 (regex!4395 (rule!6741 (h!32819 tokens!456)))))) b!2304311))

(assert (= (and b!2303405 ((_ is Concat!11301) (regOne!13998 (regex!4395 (rule!6741 (h!32819 tokens!456)))))) b!2304312))

(assert (= (and b!2303405 ((_ is Star!6743) (regOne!13998 (regex!4395 (rule!6741 (h!32819 tokens!456)))))) b!2304313))

(assert (= (and b!2303405 ((_ is Union!6743) (regOne!13998 (regex!4395 (rule!6741 (h!32819 tokens!456)))))) b!2304314))

(declare-fun b!2304316 () Bool)

(declare-fun e!1476634 () Bool)

(declare-fun tp!730999 () Bool)

(declare-fun tp!731000 () Bool)

(assert (=> b!2304316 (= e!1476634 (and tp!730999 tp!731000))))

(declare-fun b!2304315 () Bool)

(assert (=> b!2304315 (= e!1476634 tp_is_empty!10707)))

(declare-fun b!2304317 () Bool)

(declare-fun tp!731001 () Bool)

(assert (=> b!2304317 (= e!1476634 tp!731001)))

(declare-fun b!2304318 () Bool)

(declare-fun tp!731002 () Bool)

(declare-fun tp!730998 () Bool)

(assert (=> b!2304318 (= e!1476634 (and tp!731002 tp!730998))))

(assert (=> b!2303405 (= tp!730717 e!1476634)))

(assert (= (and b!2303405 ((_ is ElementMatch!6743) (regTwo!13998 (regex!4395 (rule!6741 (h!32819 tokens!456)))))) b!2304315))

(assert (= (and b!2303405 ((_ is Concat!11301) (regTwo!13998 (regex!4395 (rule!6741 (h!32819 tokens!456)))))) b!2304316))

(assert (= (and b!2303405 ((_ is Star!6743) (regTwo!13998 (regex!4395 (rule!6741 (h!32819 tokens!456)))))) b!2304317))

(assert (= (and b!2303405 ((_ is Union!6743) (regTwo!13998 (regex!4395 (rule!6741 (h!32819 tokens!456)))))) b!2304318))

(declare-fun b!2304320 () Bool)

(declare-fun e!1476635 () Bool)

(declare-fun tp!731004 () Bool)

(declare-fun tp!731005 () Bool)

(assert (=> b!2304320 (= e!1476635 (and tp!731004 tp!731005))))

(declare-fun b!2304319 () Bool)

(assert (=> b!2304319 (= e!1476635 tp_is_empty!10707)))

(declare-fun b!2304321 () Bool)

(declare-fun tp!731006 () Bool)

(assert (=> b!2304321 (= e!1476635 tp!731006)))

(declare-fun b!2304322 () Bool)

(declare-fun tp!731007 () Bool)

(declare-fun tp!731003 () Bool)

(assert (=> b!2304322 (= e!1476635 (and tp!731007 tp!731003))))

(assert (=> b!2303381 (= tp!730694 e!1476635)))

(assert (= (and b!2303381 ((_ is ElementMatch!6743) (regex!4395 (h!32818 (t!205985 rules!1750))))) b!2304319))

(assert (= (and b!2303381 ((_ is Concat!11301) (regex!4395 (h!32818 (t!205985 rules!1750))))) b!2304320))

(assert (= (and b!2303381 ((_ is Star!6743) (regex!4395 (h!32818 (t!205985 rules!1750))))) b!2304321))

(assert (= (and b!2303381 ((_ is Union!6743) (regex!4395 (h!32818 (t!205985 rules!1750))))) b!2304322))

(declare-fun b!2304324 () Bool)

(declare-fun e!1476636 () Bool)

(declare-fun tp!731009 () Bool)

(declare-fun tp!731010 () Bool)

(assert (=> b!2304324 (= e!1476636 (and tp!731009 tp!731010))))

(declare-fun b!2304323 () Bool)

(assert (=> b!2304323 (= e!1476636 tp_is_empty!10707)))

(declare-fun b!2304325 () Bool)

(declare-fun tp!731011 () Bool)

(assert (=> b!2304325 (= e!1476636 tp!731011)))

(declare-fun b!2304326 () Bool)

(declare-fun tp!731012 () Bool)

(declare-fun tp!731008 () Bool)

(assert (=> b!2304326 (= e!1476636 (and tp!731012 tp!731008))))

(assert (=> b!2303425 (= tp!730739 e!1476636)))

(assert (= (and b!2303425 ((_ is ElementMatch!6743) (regOne!13999 (regex!4395 r!2363)))) b!2304323))

(assert (= (and b!2303425 ((_ is Concat!11301) (regOne!13999 (regex!4395 r!2363)))) b!2304324))

(assert (= (and b!2303425 ((_ is Star!6743) (regOne!13999 (regex!4395 r!2363)))) b!2304325))

(assert (= (and b!2303425 ((_ is Union!6743) (regOne!13999 (regex!4395 r!2363)))) b!2304326))

(declare-fun b!2304328 () Bool)

(declare-fun e!1476637 () Bool)

(declare-fun tp!731014 () Bool)

(declare-fun tp!731015 () Bool)

(assert (=> b!2304328 (= e!1476637 (and tp!731014 tp!731015))))

(declare-fun b!2304327 () Bool)

(assert (=> b!2304327 (= e!1476637 tp_is_empty!10707)))

(declare-fun b!2304329 () Bool)

(declare-fun tp!731016 () Bool)

(assert (=> b!2304329 (= e!1476637 tp!731016)))

(declare-fun b!2304330 () Bool)

(declare-fun tp!731017 () Bool)

(declare-fun tp!731013 () Bool)

(assert (=> b!2304330 (= e!1476637 (and tp!731017 tp!731013))))

(assert (=> b!2303425 (= tp!730735 e!1476637)))

(assert (= (and b!2303425 ((_ is ElementMatch!6743) (regTwo!13999 (regex!4395 r!2363)))) b!2304327))

(assert (= (and b!2303425 ((_ is Concat!11301) (regTwo!13999 (regex!4395 r!2363)))) b!2304328))

(assert (= (and b!2303425 ((_ is Star!6743) (regTwo!13999 (regex!4395 r!2363)))) b!2304329))

(assert (= (and b!2303425 ((_ is Union!6743) (regTwo!13999 (regex!4395 r!2363)))) b!2304330))

(declare-fun b!2304332 () Bool)

(declare-fun e!1476638 () Bool)

(declare-fun tp!731019 () Bool)

(declare-fun tp!731020 () Bool)

(assert (=> b!2304332 (= e!1476638 (and tp!731019 tp!731020))))

(declare-fun b!2304331 () Bool)

(assert (=> b!2304331 (= e!1476638 tp_is_empty!10707)))

(declare-fun b!2304333 () Bool)

(declare-fun tp!731021 () Bool)

(assert (=> b!2304333 (= e!1476638 tp!731021)))

(declare-fun b!2304334 () Bool)

(declare-fun tp!731022 () Bool)

(declare-fun tp!731018 () Bool)

(assert (=> b!2304334 (= e!1476638 (and tp!731022 tp!731018))))

(assert (=> b!2303407 (= tp!730719 e!1476638)))

(assert (= (and b!2303407 ((_ is ElementMatch!6743) (regOne!13999 (regex!4395 (rule!6741 (h!32819 tokens!456)))))) b!2304331))

(assert (= (and b!2303407 ((_ is Concat!11301) (regOne!13999 (regex!4395 (rule!6741 (h!32819 tokens!456)))))) b!2304332))

(assert (= (and b!2303407 ((_ is Star!6743) (regOne!13999 (regex!4395 (rule!6741 (h!32819 tokens!456)))))) b!2304333))

(assert (= (and b!2303407 ((_ is Union!6743) (regOne!13999 (regex!4395 (rule!6741 (h!32819 tokens!456)))))) b!2304334))

(declare-fun b!2304336 () Bool)

(declare-fun e!1476639 () Bool)

(declare-fun tp!731024 () Bool)

(declare-fun tp!731025 () Bool)

(assert (=> b!2304336 (= e!1476639 (and tp!731024 tp!731025))))

(declare-fun b!2304335 () Bool)

(assert (=> b!2304335 (= e!1476639 tp_is_empty!10707)))

(declare-fun b!2304337 () Bool)

(declare-fun tp!731026 () Bool)

(assert (=> b!2304337 (= e!1476639 tp!731026)))

(declare-fun b!2304338 () Bool)

(declare-fun tp!731027 () Bool)

(declare-fun tp!731023 () Bool)

(assert (=> b!2304338 (= e!1476639 (and tp!731027 tp!731023))))

(assert (=> b!2303407 (= tp!730715 e!1476639)))

(assert (= (and b!2303407 ((_ is ElementMatch!6743) (regTwo!13999 (regex!4395 (rule!6741 (h!32819 tokens!456)))))) b!2304335))

(assert (= (and b!2303407 ((_ is Concat!11301) (regTwo!13999 (regex!4395 (rule!6741 (h!32819 tokens!456)))))) b!2304336))

(assert (= (and b!2303407 ((_ is Star!6743) (regTwo!13999 (regex!4395 (rule!6741 (h!32819 tokens!456)))))) b!2304337))

(assert (= (and b!2303407 ((_ is Union!6743) (regTwo!13999 (regex!4395 (rule!6741 (h!32819 tokens!456)))))) b!2304338))

(declare-fun b_lambda!73403 () Bool)

(assert (= b_lambda!73381 (or d!681233 b_lambda!73403)))

(declare-fun bs!457891 () Bool)

(declare-fun d!681785 () Bool)

(assert (= bs!457891 (and d!681785 d!681233)))

(assert (=> bs!457891 (= (dynLambda!11925 lambda!85949 lt!854134) (= (list!10801 (dynLambda!11919 (toChars!6064 (transformation!4395 r!2363)) (dynLambda!11920 (toValue!6205 (transformation!4395 r!2363)) lt!854134))) (list!10801 lt!854134)))))

(declare-fun b_lambda!73409 () Bool)

(assert (=> (not b_lambda!73409) (not bs!457891)))

(assert (=> bs!457891 t!206176))

(declare-fun b_and!183745 () Bool)

(assert (= b_and!183699 (and (=> t!206176 result!168074) b_and!183745)))

(assert (=> bs!457891 t!206062))

(declare-fun b_and!183747 () Bool)

(assert (= b_and!183667 (and (=> t!206062 result!167960) b_and!183747)))

(assert (=> bs!457891 t!206082))

(declare-fun b_and!183749 () Bool)

(assert (= b_and!183671 (and (=> t!206082 result!167988) b_and!183749)))

(assert (=> bs!457891 t!206054))

(declare-fun b_and!183751 () Bool)

(assert (= b_and!183669 (and (=> t!206054 result!167952) b_and!183751)))

(assert (=> bs!457891 t!206064))

(declare-fun b_and!183753 () Bool)

(assert (= b_and!183661 (and (=> t!206064 result!167962) b_and!183753)))

(assert (=> bs!457891 t!206074))

(declare-fun b_and!183755 () Bool)

(assert (= b_and!183663 (and (=> t!206074 result!167974) b_and!183755)))

(assert (=> bs!457891 t!206066))

(declare-fun b_and!183757 () Bool)

(assert (= b_and!183665 (and (=> t!206066 result!167964) b_and!183757)))

(assert (=> bs!457891 t!206204))

(declare-fun b_and!183759 () Bool)

(assert (= b_and!183707 (and (=> t!206204 result!168106) b_and!183759)))

(declare-fun b_lambda!73411 () Bool)

(assert (=> (not b_lambda!73411) (not bs!457891)))

(assert (=> bs!457891 t!206024))

(declare-fun b_and!183761 () Bool)

(assert (= b_and!183651 (and (=> t!206024 result!167914) b_and!183761)))

(assert (=> bs!457891 t!206076))

(declare-fun b_and!183763 () Bool)

(assert (= b_and!183653 (and (=> t!206076 result!167982) b_and!183763)))

(assert (=> bs!457891 t!206164))

(declare-fun b_and!183765 () Bool)

(assert (= b_and!183697 (and (=> t!206164 result!168062) b_and!183765)))

(assert (=> bs!457891 t!206026))

(declare-fun b_and!183767 () Bool)

(assert (= b_and!183657 (and (=> t!206026 result!167916) b_and!183767)))

(assert (=> bs!457891 t!206068))

(declare-fun b_and!183769 () Bool)

(assert (= b_and!183659 (and (=> t!206068 result!167968) b_and!183769)))

(assert (=> bs!457891 t!206022))

(declare-fun b_and!183771 () Bool)

(assert (= b_and!183649 (and (=> t!206022 result!167912) b_and!183771)))

(assert (=> bs!457891 t!206192))

(declare-fun b_and!183773 () Bool)

(assert (= b_and!183705 (and (=> t!206192 result!168094) b_and!183773)))

(assert (=> bs!457891 t!206020))

(declare-fun b_and!183775 () Bool)

(assert (= b_and!183655 (and (=> t!206020 result!167908) b_and!183775)))

(assert (=> bs!457891 m!2730239))

(assert (=> bs!457891 m!2730389))

(assert (=> bs!457891 m!2730239))

(assert (=> bs!457891 m!2730387))

(assert (=> bs!457891 m!2730389))

(assert (=> bs!457891 m!2730391))

(assert (=> d!681449 d!681785))

(declare-fun b_lambda!73405 () Bool)

(assert (= b_lambda!73385 (or (and b!2302889 b_free!69559 (= (toChars!6064 (transformation!4395 otherR!12)) (toChars!6064 (transformation!4395 (rule!6741 (h!32819 (t!205986 tokens!456))))))) (and b!2302896 b_free!69551 (= (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (toChars!6064 (transformation!4395 (rule!6741 (h!32819 (t!205986 tokens!456))))))) (and b!2302882 b_free!69563 (= (toChars!6064 (transformation!4395 r!2363)) (toChars!6064 (transformation!4395 (rule!6741 (h!32819 (t!205986 tokens!456))))))) (and b!2302904 b_free!69555 (= (toChars!6064 (transformation!4395 (h!32818 rules!1750))) (toChars!6064 (transformation!4395 (rule!6741 (h!32819 (t!205986 tokens!456))))))) (and b!2304264 b_free!69591 (= (toChars!6064 (transformation!4395 (rule!6741 (h!32819 (t!205986 (t!205986 tokens!456)))))) (toChars!6064 (transformation!4395 (rule!6741 (h!32819 (t!205986 tokens!456))))))) (and b!2303382 b_free!69575 (= (toChars!6064 (transformation!4395 (h!32818 (t!205985 rules!1750)))) (toChars!6064 (transformation!4395 (rule!6741 (h!32819 (t!205986 tokens!456))))))) (and b!2304152 b_free!69583 (= (toChars!6064 (transformation!4395 (h!32818 (t!205985 (t!205985 rules!1750))))) (toChars!6064 (transformation!4395 (rule!6741 (h!32819 (t!205986 tokens!456))))))) (and b!2303421 b_free!69579) b_lambda!73405)))

(declare-fun b_lambda!73407 () Bool)

(assert (= b_lambda!73333 (or (and b!2302896 b_free!69551 (= (toChars!6064 (transformation!4395 (rule!6741 (h!32819 tokens!456)))) (toChars!6064 (transformation!4395 (rule!6741 (head!5042 tokens!456)))))) (and b!2302882 b_free!69563 (= (toChars!6064 (transformation!4395 r!2363)) (toChars!6064 (transformation!4395 (rule!6741 (head!5042 tokens!456)))))) (and b!2303421 b_free!69579 (= (toChars!6064 (transformation!4395 (rule!6741 (h!32819 (t!205986 tokens!456))))) (toChars!6064 (transformation!4395 (rule!6741 (head!5042 tokens!456)))))) (and b!2302904 b_free!69555 (= (toChars!6064 (transformation!4395 (h!32818 rules!1750))) (toChars!6064 (transformation!4395 (rule!6741 (head!5042 tokens!456)))))) (and b!2304152 b_free!69583 (= (toChars!6064 (transformation!4395 (h!32818 (t!205985 (t!205985 rules!1750))))) (toChars!6064 (transformation!4395 (rule!6741 (head!5042 tokens!456)))))) (and b!2303382 b_free!69575 (= (toChars!6064 (transformation!4395 (h!32818 (t!205985 rules!1750)))) (toChars!6064 (transformation!4395 (rule!6741 (head!5042 tokens!456)))))) (and b!2302889 b_free!69559 (= (toChars!6064 (transformation!4395 otherR!12)) (toChars!6064 (transformation!4395 (rule!6741 (head!5042 tokens!456)))))) (and b!2304264 b_free!69591 (= (toChars!6064 (transformation!4395 (rule!6741 (h!32819 (t!205986 (t!205986 tokens!456)))))) (toChars!6064 (transformation!4395 (rule!6741 (head!5042 tokens!456)))))) b_lambda!73407)))

(check-sat (not b!2303698) (not b_next!70285) (not b!2304322) (not bm!137120) (not b!2303928) (not b!2303484) (not b!2304316) (not d!681383) (not b!2303714) (not b_next!70295) (not b!2304086) (not d!681733) (not b!2303960) tp_is_empty!10707 (not b!2304313) (not d!681395) (not b!2303965) (not b!2304139) (not b!2303559) (not d!681675) (not b!2304324) (not b!2303553) (not b_lambda!73409) (not b!2304214) b_and!183773 (not b!2303692) (not d!681393) (not b!2303944) (not d!681707) (not b!2304140) (not d!681621) (not b!2303932) (not b!2304318) (not b_next!70293) (not d!681685) (not b!2303788) (not d!681471) (not b!2303485) (not b!2304330) (not b!2303667) (not b!2303930) (not b!2304120) (not b!2304320) (not b!2303496) (not d!681719) (not b!2303778) (not b!2304100) (not b_next!70267) (not b!2303979) (not d!681735) (not b!2304080) (not b!2304312) (not b!2304194) (not b_next!70265) (not b!2304150) b_and!183753 (not d!681595) (not b!2303499) (not b!2304317) (not b!2303593) (not b!2303763) (not d!681613) (not b!2304190) (not b!2304201) (not b!2303980) (not b!2303693) (not bm!137097) (not d!681461) (not d!681557) (not d!681717) (not b!2303787) (not b!2303859) (not b!2304247) (not d!681769) (not bm!137104) (not d!681627) (not b!2303864) (not b!2304118) (not bm!137118) (not b!2303668) (not d!681397) (not d!681709) (not d!681389) (not d!681669) (not d!681391) (not b!2303860) (not b!2303873) (not b!2303874) b_and!183767 (not d!681551) (not b!2304300) (not b!2304217) (not b!2303776) (not d!681469) (not b!2303968) b_and!183745 (not b!2303785) (not b!2303694) (not b!2303704) (not b_lambda!73373) (not b!2303861) (not bm!137119) (not b!2304290) (not b!2303627) (not b!2304288) (not b!2304328) (not b_next!70263) (not b!2303982) (not d!681417) (not d!681541) (not b!2303941) (not b!2304202) (not b!2304310) (not b!2304199) (not bm!137117) (not b_next!70279) (not b!2303794) (not d!681607) (not bs!457891) (not b!2303480) (not b!2303511) (not b!2304304) (not b!2304326) (not d!681403) (not bm!137115) b_and!183757 (not b!2304225) b_and!183755 (not b!2303558) (not b!2303760) (not b!2303856) (not b!2303784) (not b!2303671) (not b!2304210) (not b!2303510) (not b!2304337) (not d!681521) (not d!681443) (not b!2303867) (not b!2304081) (not b!2303934) (not d!681547) (not b!2304198) (not d!681711) (not bm!137121) (not b!2304087) (not b!2303492) (not b_lambda!73411) (not b_next!70253) (not b!2304302) (not b!2304192) (not b!2304309) (not b!2304205) (not b_lambda!73403) (not d!681637) (not b!2303954) (not b!2304333) (not d!681609) (not b!2303983) (not b!2304195) (not b!2304224) (not b!2304336) (not b!2304325) (not b!2303681) (not b!2304262) (not d!681687) (not d!681713) (not b!2304294) (not b!2303491) (not b!2303482) (not b!2304305) (not b!2304223) (not b!2304204) (not b!2303963) (not b!2304229) (not d!681481) (not b!2303599) (not b!2303495) (not bm!137098) (not b_lambda!73379) (not b!2304285) (not b!2304334) (not b!2304185) (not d!681447) (not b!2303759) (not b_next!70257) (not b!2304145) (not b!2304286) (not d!681725) (not b!2303104) b_and!183751 (not b!2304151) (not b!2303691) (not b!2304287) (not b!2303757) (not b!2304079) (not b!2304338) b_and!183761 b_and!183747 (not b!2304261) (not d!681549) (not b!2303848) (not b!2303854) (not b!2303957) (not b_lambda!73369) (not tb!137827) (not b!2304143) (not b!2304248) (not b!2303935) b_and!183749 (not b!2304321) (not d!681599) (not b!2304144) (not b!2303689) (not d!681445) (not d!681771) (not b!2304184) (not b!2303855) (not b!2303660) (not d!681525) (not b!2304329) (not d!681449) (not b!2304293) (not b!2304218) b_and!183769 (not d!681663) (not b!2303964) (not b!2304213) (not b!2304085) (not b!2303497) (not b!2303500) (not b!2303927) (not b!2303628) (not b!2304249) (not b!2303870) (not b!2303984) (not b!2303858) (not b_next!70261) (not b!2303488) (not d!681681) (not b!2303869) (not d!681529) (not b!2303679) (not b!2304212) (not b!2303857) b_and!183759 (not d!681647) (not b!2303937) (not b!2303687) (not b!2304308) (not b!2303713) (not b!2303287) (not b!2302979) (not b_next!70283) (not b!2304119) (not b!2303705) (not b!2303501) (not b!2303670) b_and!183763 (not b_next!70277) (not d!681665) (not b!2304263) (not b!2304314) (not d!681477) (not b!2304306) (not b_lambda!73407) (not b_lambda!73375) (not b!2304227) (not b!2304186) (not b!2304138) (not b!2303791) (not b!2304206) b_and!183765 (not b!2304301) (not b!2303598) b_and!183771 (not b!2303868) (not d!681423) (not b_next!70259) (not b_lambda!73383) (not b!2303938) (not b!2304216) (not b!2304332) (not d!681671) (not b!2304082) (not tb!137793) (not d!681585) (not b!2304196) (not d!681573) (not d!681415) (not tb!137815) (not b!2303701) (not b!2304228) (not b!2303755) (not b!2304083) (not b!2304098) (not b!2303765) (not b!2304289) (not b_lambda!73371) (not b!2304291) (not b!2304295) (not b!2304200) (not b_next!70281) (not d!681603) (not b_lambda!73405) (not b!2303966) (not b!2304260) (not d!681555) (not d!681421) (not b_next!70255) (not b!2304191) (not b!2303595) b_and!183775 (not b_lambda!73367) (not b!2303853) (not d!681519) (not b_next!70287))
(check-sat (not b_next!70285) (not b_next!70295) b_and!183773 (not b_next!70293) (not b_next!70267) b_and!183767 b_and!183745 (not b_next!70263) (not b_next!70279) (not b_next!70253) b_and!183749 b_and!183769 (not b_next!70261) b_and!183759 b_and!183765 (not b_next!70265) b_and!183753 b_and!183757 b_and!183755 b_and!183751 (not b_next!70257) b_and!183761 b_and!183747 (not b_next!70283) b_and!183763 (not b_next!70277) b_and!183771 (not b_next!70259) (not b_next!70281) b_and!183775 (not b_next!70287) (not b_next!70255))
