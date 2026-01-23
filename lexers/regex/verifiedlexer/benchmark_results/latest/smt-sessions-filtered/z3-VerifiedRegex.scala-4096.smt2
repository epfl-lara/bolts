; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!219304 () Bool)

(assert start!219304)

(declare-fun b!2248916 () Bool)

(declare-fun b_free!65821 () Bool)

(declare-fun b_next!66525 () Bool)

(assert (=> b!2248916 (= b_free!65821 (not b_next!66525))))

(declare-fun tp!710406 () Bool)

(declare-fun b_and!176049 () Bool)

(assert (=> b!2248916 (= tp!710406 b_and!176049)))

(declare-fun b_free!65823 () Bool)

(declare-fun b_next!66527 () Bool)

(assert (=> b!2248916 (= b_free!65823 (not b_next!66527))))

(declare-fun tp!710415 () Bool)

(declare-fun b_and!176051 () Bool)

(assert (=> b!2248916 (= tp!710415 b_and!176051)))

(declare-fun b!2248915 () Bool)

(declare-fun b_free!65825 () Bool)

(declare-fun b_next!66529 () Bool)

(assert (=> b!2248915 (= b_free!65825 (not b_next!66529))))

(declare-fun tp!710416 () Bool)

(declare-fun b_and!176053 () Bool)

(assert (=> b!2248915 (= tp!710416 b_and!176053)))

(declare-fun b_free!65827 () Bool)

(declare-fun b_next!66531 () Bool)

(assert (=> b!2248915 (= b_free!65827 (not b_next!66531))))

(declare-fun tp!710408 () Bool)

(declare-fun b_and!176055 () Bool)

(assert (=> b!2248915 (= tp!710408 b_and!176055)))

(declare-fun b!2248908 () Bool)

(declare-fun b_free!65829 () Bool)

(declare-fun b_next!66533 () Bool)

(assert (=> b!2248908 (= b_free!65829 (not b_next!66533))))

(declare-fun tp!710417 () Bool)

(declare-fun b_and!176057 () Bool)

(assert (=> b!2248908 (= tp!710417 b_and!176057)))

(declare-fun b_free!65831 () Bool)

(declare-fun b_next!66535 () Bool)

(assert (=> b!2248908 (= b_free!65831 (not b_next!66535))))

(declare-fun tp!710418 () Bool)

(declare-fun b_and!176059 () Bool)

(assert (=> b!2248908 (= tp!710418 b_and!176059)))

(declare-fun b!2248906 () Bool)

(declare-fun b_free!65833 () Bool)

(declare-fun b_next!66537 () Bool)

(assert (=> b!2248906 (= b_free!65833 (not b_next!66537))))

(declare-fun tp!710412 () Bool)

(declare-fun b_and!176061 () Bool)

(assert (=> b!2248906 (= tp!710412 b_and!176061)))

(declare-fun b_free!65835 () Bool)

(declare-fun b_next!66539 () Bool)

(assert (=> b!2248906 (= b_free!65835 (not b_next!66539))))

(declare-fun tp!710419 () Bool)

(declare-fun b_and!176063 () Bool)

(assert (=> b!2248906 (= tp!710419 b_and!176063)))

(declare-fun b!2248895 () Bool)

(declare-fun e!1439122 () Bool)

(declare-fun tp_is_empty!10363 () Bool)

(declare-fun tp!710402 () Bool)

(assert (=> b!2248895 (= e!1439122 (and tp_is_empty!10363 tp!710402))))

(declare-fun b!2248897 () Bool)

(declare-fun res!960966 () Bool)

(declare-fun e!1439133 () Bool)

(assert (=> b!2248897 (=> res!960966 e!1439133)))

(declare-datatypes ((List!26737 0))(
  ( (Nil!26643) (Cons!26643 (h!32044 (_ BitVec 16)) (t!200585 List!26737)) )
))
(declare-datatypes ((TokenValue!4385 0))(
  ( (FloatLiteralValue!8770 (text!31140 List!26737)) (TokenValueExt!4384 (__x!17830 Int)) (Broken!21925 (value!134149 List!26737)) (Object!4478) (End!4385) (Def!4385) (Underscore!4385) (Match!4385) (Else!4385) (Error!4385) (Case!4385) (If!4385) (Extends!4385) (Abstract!4385) (Class!4385) (Val!4385) (DelimiterValue!8770 (del!4445 List!26737)) (KeywordValue!4391 (value!134150 List!26737)) (CommentValue!8770 (value!134151 List!26737)) (WhitespaceValue!8770 (value!134152 List!26737)) (IndentationValue!4385 (value!134153 List!26737)) (String!29028) (Int32!4385) (Broken!21926 (value!134154 List!26737)) (Boolean!4386) (Unit!39589) (OperatorValue!4388 (op!4445 List!26737)) (IdentifierValue!8770 (value!134155 List!26737)) (IdentifierValue!8771 (value!134156 List!26737)) (WhitespaceValue!8771 (value!134157 List!26737)) (True!8770) (False!8770) (Broken!21927 (value!134158 List!26737)) (Broken!21928 (value!134159 List!26737)) (True!8771) (RightBrace!4385) (RightBracket!4385) (Colon!4385) (Null!4385) (Comma!4385) (LeftBracket!4385) (False!8771) (LeftBrace!4385) (ImaginaryLiteralValue!4385 (text!31141 List!26737)) (StringLiteralValue!13155 (value!134160 List!26737)) (EOFValue!4385 (value!134161 List!26737)) (IdentValue!4385 (value!134162 List!26737)) (DelimiterValue!8771 (value!134163 List!26737)) (DedentValue!4385 (value!134164 List!26737)) (NewLineValue!4385 (value!134165 List!26737)) (IntegerValue!13155 (value!134166 (_ BitVec 32)) (text!31142 List!26737)) (IntegerValue!13156 (value!134167 Int) (text!31143 List!26737)) (Times!4385) (Or!4385) (Equal!4385) (Minus!4385) (Broken!21929 (value!134168 List!26737)) (And!4385) (Div!4385) (LessEqual!4385) (Mod!4385) (Concat!10956) (Not!4385) (Plus!4385) (SpaceValue!4385 (value!134169 List!26737)) (IntegerValue!13157 (value!134170 Int) (text!31144 List!26737)) (StringLiteralValue!13156 (text!31145 List!26737)) (FloatLiteralValue!8771 (text!31146 List!26737)) (BytesLiteralValue!4385 (value!134171 List!26737)) (CommentValue!8771 (value!134172 List!26737)) (StringLiteralValue!13157 (value!134173 List!26737)) (ErrorTokenValue!4385 (msg!4446 List!26737)) )
))
(declare-datatypes ((C!13288 0))(
  ( (C!13289 (val!7692 Int)) )
))
(declare-datatypes ((List!26738 0))(
  ( (Nil!26644) (Cons!26644 (h!32045 C!13288) (t!200586 List!26738)) )
))
(declare-datatypes ((IArray!17193 0))(
  ( (IArray!17194 (innerList!8654 List!26738)) )
))
(declare-datatypes ((Conc!8594 0))(
  ( (Node!8594 (left!20242 Conc!8594) (right!20572 Conc!8594) (csize!17418 Int) (cheight!8805 Int)) (Leaf!12691 (xs!11536 IArray!17193) (csize!17419 Int)) (Empty!8594) )
))
(declare-datatypes ((BalanceConc!16916 0))(
  ( (BalanceConc!16917 (c!357684 Conc!8594)) )
))
(declare-datatypes ((String!29029 0))(
  ( (String!29030 (value!134174 String)) )
))
(declare-datatypes ((Regex!6571 0))(
  ( (ElementMatch!6571 (c!357685 C!13288)) (Concat!10957 (regOne!13654 Regex!6571) (regTwo!13654 Regex!6571)) (EmptyExpr!6571) (Star!6571 (reg!6900 Regex!6571)) (EmptyLang!6571) (Union!6571 (regOne!13655 Regex!6571) (regTwo!13655 Regex!6571)) )
))
(declare-datatypes ((TokenValueInjection!8310 0))(
  ( (TokenValueInjection!8311 (toValue!5957 Int) (toChars!5816 Int)) )
))
(declare-datatypes ((Rule!8246 0))(
  ( (Rule!8247 (regex!4223 Regex!6571) (tag!4713 String!29029) (isSeparator!4223 Bool) (transformation!4223 TokenValueInjection!8310)) )
))
(declare-datatypes ((Token!7924 0))(
  ( (Token!7925 (value!134175 TokenValue!4385) (rule!6523 Rule!8246) (size!20843 Int) (originalCharacters!4993 List!26738)) )
))
(declare-datatypes ((List!26739 0))(
  ( (Nil!26645) (Cons!26645 (h!32046 Token!7924) (t!200587 List!26739)) )
))
(declare-fun tokens!456 () List!26739)

(get-info :version)

(assert (=> b!2248897 (= res!960966 ((_ is Nil!26645) tokens!456))))

(declare-fun b!2248898 () Bool)

(declare-fun res!960961 () Bool)

(declare-fun e!1439142 () Bool)

(assert (=> b!2248898 (=> (not res!960961) (not e!1439142))))

(declare-datatypes ((List!26740 0))(
  ( (Nil!26646) (Cons!26646 (h!32047 Rule!8246) (t!200588 List!26740)) )
))
(declare-fun rules!1750 () List!26740)

(declare-fun isEmpty!15015 (List!26740) Bool)

(assert (=> b!2248898 (= res!960961 (not (isEmpty!15015 rules!1750)))))

(declare-fun e!1439131 () Bool)

(declare-fun b!2248899 () Bool)

(declare-fun tp!710411 () Bool)

(declare-fun e!1439130 () Bool)

(declare-fun inv!21 (TokenValue!4385) Bool)

(assert (=> b!2248899 (= e!1439130 (and (inv!21 (value!134175 (h!32046 tokens!456))) e!1439131 tp!710411))))

(declare-fun b!2248900 () Bool)

(declare-fun e!1439134 () Bool)

(assert (=> b!2248900 (= e!1439134 e!1439133)))

(declare-fun res!960960 () Bool)

(assert (=> b!2248900 (=> res!960960 e!1439133)))

(declare-fun r!2363 () Rule!8246)

(declare-fun otherR!12 () Rule!8246)

(declare-fun getIndex!244 (List!26740 Rule!8246) Int)

(assert (=> b!2248900 (= res!960960 (<= (getIndex!244 rules!1750 r!2363) (getIndex!244 rules!1750 otherR!12)))))

(declare-datatypes ((LexerInterface!3820 0))(
  ( (LexerInterfaceExt!3817 (__x!17831 Int)) (Lexer!3818) )
))
(declare-fun thiss!16613 () LexerInterface!3820)

(declare-fun ruleValid!1315 (LexerInterface!3820 Rule!8246) Bool)

(assert (=> b!2248900 (ruleValid!1315 thiss!16613 otherR!12)))

(declare-datatypes ((Unit!39590 0))(
  ( (Unit!39591) )
))
(declare-fun lt!836106 () Unit!39590)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!722 (LexerInterface!3820 Rule!8246 List!26740) Unit!39590)

(assert (=> b!2248900 (= lt!836106 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!722 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2248901 () Bool)

(declare-fun e!1439137 () Bool)

(declare-fun otherP!12 () List!26738)

(declare-fun size!20844 (BalanceConc!16916) Int)

(declare-fun charsOf!2611 (Token!7924) BalanceConc!16916)

(declare-fun head!4786 (List!26739) Token!7924)

(declare-fun size!20845 (List!26738) Int)

(assert (=> b!2248901 (= e!1439137 (<= (size!20844 (charsOf!2611 (head!4786 tokens!456))) (size!20845 otherP!12)))))

(declare-fun b!2248902 () Bool)

(declare-fun res!960965 () Bool)

(assert (=> b!2248902 (=> (not res!960965) (not e!1439142))))

(declare-fun contains!4572 (List!26740 Rule!8246) Bool)

(assert (=> b!2248902 (= res!960965 (contains!4572 rules!1750 r!2363))))

(declare-fun b!2248903 () Bool)

(declare-fun e!1439136 () Bool)

(assert (=> b!2248903 (= e!1439136 (not e!1439134))))

(declare-fun res!960964 () Bool)

(assert (=> b!2248903 (=> res!960964 e!1439134)))

(declare-fun e!1439123 () Bool)

(assert (=> b!2248903 (= res!960964 e!1439123)))

(declare-fun res!960951 () Bool)

(assert (=> b!2248903 (=> (not res!960951) (not e!1439123))))

(declare-fun lt!836103 () Bool)

(assert (=> b!2248903 (= res!960951 (not lt!836103))))

(assert (=> b!2248903 (ruleValid!1315 thiss!16613 r!2363)))

(declare-fun lt!836105 () Unit!39590)

(assert (=> b!2248903 (= lt!836105 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!722 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2248904 () Bool)

(declare-fun res!960953 () Bool)

(assert (=> b!2248904 (=> (not res!960953) (not e!1439142))))

(assert (=> b!2248904 (= res!960953 (contains!4572 rules!1750 otherR!12))))

(declare-fun e!1439143 () Bool)

(declare-fun b!2248905 () Bool)

(declare-fun e!1439125 () Bool)

(declare-fun tp!710409 () Bool)

(declare-fun inv!36170 (String!29029) Bool)

(declare-fun inv!36173 (TokenValueInjection!8310) Bool)

(assert (=> b!2248905 (= e!1439143 (and tp!710409 (inv!36170 (tag!4713 r!2363)) (inv!36173 (transformation!4223 r!2363)) e!1439125))))

(declare-fun e!1439132 () Bool)

(assert (=> b!2248906 (= e!1439132 (and tp!710412 tp!710419))))

(declare-fun b!2248907 () Bool)

(declare-fun res!960963 () Bool)

(assert (=> b!2248907 (=> (not res!960963) (not e!1439136))))

(declare-fun e!1439141 () Bool)

(assert (=> b!2248907 (= res!960963 e!1439141)))

(declare-fun res!960952 () Bool)

(assert (=> b!2248907 (=> res!960952 e!1439141)))

(assert (=> b!2248907 (= res!960952 lt!836103)))

(assert (=> b!2248908 (= e!1439125 (and tp!710417 tp!710418))))

(declare-fun b!2248909 () Bool)

(declare-fun e!1439135 () Bool)

(declare-fun tp!710414 () Bool)

(declare-fun e!1439129 () Bool)

(assert (=> b!2248909 (= e!1439135 (and tp!710414 (inv!36170 (tag!4713 otherR!12)) (inv!36173 (transformation!4223 otherR!12)) e!1439129))))

(declare-fun tp!710410 () Bool)

(declare-fun e!1439138 () Bool)

(declare-fun b!2248910 () Bool)

(declare-fun inv!36174 (Token!7924) Bool)

(assert (=> b!2248910 (= e!1439138 (and (inv!36174 (h!32046 tokens!456)) e!1439130 tp!710410))))

(declare-fun b!2248911 () Bool)

(assert (=> b!2248911 (= e!1439141 (= (rule!6523 (head!4786 tokens!456)) r!2363))))

(declare-fun b!2248912 () Bool)

(declare-fun input!1722 () List!26738)

(declare-datatypes ((tuple2!26134 0))(
  ( (tuple2!26135 (_1!15577 Token!7924) (_2!15577 List!26738)) )
))
(declare-datatypes ((Option!5196 0))(
  ( (None!5195) (Some!5195 (v!30211 tuple2!26134)) )
))
(declare-fun isDefined!4182 (Option!5196) Bool)

(declare-fun maxPrefix!2108 (LexerInterface!3820 List!26740 List!26738) Option!5196)

(assert (=> b!2248912 (= e!1439133 (isDefined!4182 (maxPrefix!2108 thiss!16613 rules!1750 input!1722)))))

(declare-fun b!2248913 () Bool)

(declare-fun res!960954 () Bool)

(assert (=> b!2248913 (=> (not res!960954) (not e!1439142))))

(declare-fun rulesInvariant!3322 (LexerInterface!3820 List!26740) Bool)

(assert (=> b!2248913 (= res!960954 (rulesInvariant!3322 thiss!16613 rules!1750))))

(declare-fun b!2248914 () Bool)

(declare-fun res!960956 () Bool)

(assert (=> b!2248914 (=> (not res!960956) (not e!1439136))))

(declare-fun isPrefix!2213 (List!26738 List!26738) Bool)

(assert (=> b!2248914 (= res!960956 (isPrefix!2213 otherP!12 input!1722))))

(declare-fun b!2248896 () Bool)

(declare-fun e!1439124 () Bool)

(assert (=> b!2248896 (= e!1439142 e!1439124)))

(declare-fun res!960955 () Bool)

(assert (=> b!2248896 (=> (not res!960955) (not e!1439124))))

(declare-datatypes ((IArray!17195 0))(
  ( (IArray!17196 (innerList!8655 List!26739)) )
))
(declare-datatypes ((Conc!8595 0))(
  ( (Node!8595 (left!20243 Conc!8595) (right!20573 Conc!8595) (csize!17420 Int) (cheight!8806 Int)) (Leaf!12692 (xs!11537 IArray!17195) (csize!17421 Int)) (Empty!8595) )
))
(declare-datatypes ((BalanceConc!16918 0))(
  ( (BalanceConc!16919 (c!357686 Conc!8595)) )
))
(declare-datatypes ((tuple2!26136 0))(
  ( (tuple2!26137 (_1!15578 BalanceConc!16918) (_2!15578 BalanceConc!16916)) )
))
(declare-fun lt!836104 () tuple2!26136)

(declare-fun suffix!886 () List!26738)

(declare-datatypes ((tuple2!26138 0))(
  ( (tuple2!26139 (_1!15579 List!26739) (_2!15579 List!26738)) )
))
(declare-fun list!10214 (BalanceConc!16918) List!26739)

(declare-fun list!10215 (BalanceConc!16916) List!26738)

(assert (=> b!2248896 (= res!960955 (= (tuple2!26139 (list!10214 (_1!15578 lt!836104)) (list!10215 (_2!15578 lt!836104))) (tuple2!26139 tokens!456 suffix!886)))))

(declare-fun lex!1659 (LexerInterface!3820 List!26740 BalanceConc!16916) tuple2!26136)

(declare-fun seqFromList!2927 (List!26738) BalanceConc!16916)

(assert (=> b!2248896 (= lt!836104 (lex!1659 thiss!16613 rules!1750 (seqFromList!2927 input!1722)))))

(declare-fun res!960957 () Bool)

(assert (=> start!219304 (=> (not res!960957) (not e!1439142))))

(assert (=> start!219304 (= res!960957 ((_ is Lexer!3818) thiss!16613))))

(assert (=> start!219304 e!1439142))

(assert (=> start!219304 true))

(declare-fun e!1439121 () Bool)

(assert (=> start!219304 e!1439121))

(assert (=> start!219304 e!1439135))

(declare-fun e!1439146 () Bool)

(assert (=> start!219304 e!1439146))

(assert (=> start!219304 e!1439122))

(declare-fun e!1439139 () Bool)

(assert (=> start!219304 e!1439139))

(assert (=> start!219304 e!1439143))

(assert (=> start!219304 e!1439138))

(assert (=> b!2248915 (= e!1439129 (and tp!710416 tp!710408))))

(declare-fun e!1439127 () Bool)

(assert (=> b!2248916 (= e!1439127 (and tp!710406 tp!710415))))

(declare-fun b!2248917 () Bool)

(declare-fun matchR!2832 (Regex!6571 List!26738) Bool)

(assert (=> b!2248917 (= e!1439123 (not (matchR!2832 (regex!4223 r!2363) (list!10215 (charsOf!2611 (head!4786 tokens!456))))))))

(declare-fun b!2248918 () Bool)

(declare-fun e!1439147 () Bool)

(declare-fun tp!710404 () Bool)

(assert (=> b!2248918 (= e!1439139 (and e!1439147 tp!710404))))

(declare-fun b!2248919 () Bool)

(declare-fun res!960959 () Bool)

(assert (=> b!2248919 (=> (not res!960959) (not e!1439136))))

(assert (=> b!2248919 (= res!960959 (not (= r!2363 otherR!12)))))

(declare-fun tp!710403 () Bool)

(declare-fun b!2248920 () Bool)

(assert (=> b!2248920 (= e!1439131 (and tp!710403 (inv!36170 (tag!4713 (rule!6523 (h!32046 tokens!456)))) (inv!36173 (transformation!4223 (rule!6523 (h!32046 tokens!456)))) e!1439127))))

(declare-fun b!2248921 () Bool)

(declare-fun tp!710413 () Bool)

(assert (=> b!2248921 (= e!1439146 (and tp_is_empty!10363 tp!710413))))

(declare-fun b!2248922 () Bool)

(assert (=> b!2248922 (= e!1439124 e!1439136)))

(declare-fun res!960958 () Bool)

(assert (=> b!2248922 (=> (not res!960958) (not e!1439136))))

(assert (=> b!2248922 (= res!960958 e!1439137)))

(declare-fun res!960962 () Bool)

(assert (=> b!2248922 (=> res!960962 e!1439137)))

(assert (=> b!2248922 (= res!960962 lt!836103)))

(declare-fun isEmpty!15016 (List!26739) Bool)

(assert (=> b!2248922 (= lt!836103 (isEmpty!15016 tokens!456))))

(declare-fun b!2248923 () Bool)

(declare-fun tp!710405 () Bool)

(assert (=> b!2248923 (= e!1439121 (and tp_is_empty!10363 tp!710405))))

(declare-fun b!2248924 () Bool)

(declare-fun tp!710407 () Bool)

(assert (=> b!2248924 (= e!1439147 (and tp!710407 (inv!36170 (tag!4713 (h!32047 rules!1750))) (inv!36173 (transformation!4223 (h!32047 rules!1750))) e!1439132))))

(assert (= (and start!219304 res!960957) b!2248898))

(assert (= (and b!2248898 res!960961) b!2248913))

(assert (= (and b!2248913 res!960954) b!2248902))

(assert (= (and b!2248902 res!960965) b!2248904))

(assert (= (and b!2248904 res!960953) b!2248896))

(assert (= (and b!2248896 res!960955) b!2248922))

(assert (= (and b!2248922 (not res!960962)) b!2248901))

(assert (= (and b!2248922 res!960958) b!2248907))

(assert (= (and b!2248907 (not res!960952)) b!2248911))

(assert (= (and b!2248907 res!960963) b!2248914))

(assert (= (and b!2248914 res!960956) b!2248919))

(assert (= (and b!2248919 res!960959) b!2248903))

(assert (= (and b!2248903 res!960951) b!2248917))

(assert (= (and b!2248903 (not res!960964)) b!2248900))

(assert (= (and b!2248900 (not res!960960)) b!2248897))

(assert (= (and b!2248897 (not res!960966)) b!2248912))

(assert (= (and start!219304 ((_ is Cons!26644) input!1722)) b!2248923))

(assert (= b!2248909 b!2248915))

(assert (= start!219304 b!2248909))

(assert (= (and start!219304 ((_ is Cons!26644) suffix!886)) b!2248921))

(assert (= (and start!219304 ((_ is Cons!26644) otherP!12)) b!2248895))

(assert (= b!2248924 b!2248906))

(assert (= b!2248918 b!2248924))

(assert (= (and start!219304 ((_ is Cons!26646) rules!1750)) b!2248918))

(assert (= b!2248905 b!2248908))

(assert (= start!219304 b!2248905))

(assert (= b!2248920 b!2248916))

(assert (= b!2248899 b!2248920))

(assert (= b!2248910 b!2248899))

(assert (= (and start!219304 ((_ is Cons!26645) tokens!456)) b!2248910))

(declare-fun m!2679847 () Bool)

(assert (=> b!2248924 m!2679847))

(declare-fun m!2679849 () Bool)

(assert (=> b!2248924 m!2679849))

(declare-fun m!2679851 () Bool)

(assert (=> b!2248913 m!2679851))

(declare-fun m!2679853 () Bool)

(assert (=> b!2248905 m!2679853))

(declare-fun m!2679855 () Bool)

(assert (=> b!2248905 m!2679855))

(declare-fun m!2679857 () Bool)

(assert (=> b!2248904 m!2679857))

(declare-fun m!2679859 () Bool)

(assert (=> b!2248910 m!2679859))

(declare-fun m!2679861 () Bool)

(assert (=> b!2248900 m!2679861))

(declare-fun m!2679863 () Bool)

(assert (=> b!2248900 m!2679863))

(declare-fun m!2679865 () Bool)

(assert (=> b!2248900 m!2679865))

(declare-fun m!2679867 () Bool)

(assert (=> b!2248900 m!2679867))

(declare-fun m!2679869 () Bool)

(assert (=> b!2248920 m!2679869))

(declare-fun m!2679871 () Bool)

(assert (=> b!2248920 m!2679871))

(declare-fun m!2679873 () Bool)

(assert (=> b!2248917 m!2679873))

(assert (=> b!2248917 m!2679873))

(declare-fun m!2679875 () Bool)

(assert (=> b!2248917 m!2679875))

(assert (=> b!2248917 m!2679875))

(declare-fun m!2679877 () Bool)

(assert (=> b!2248917 m!2679877))

(assert (=> b!2248917 m!2679877))

(declare-fun m!2679879 () Bool)

(assert (=> b!2248917 m!2679879))

(declare-fun m!2679881 () Bool)

(assert (=> b!2248909 m!2679881))

(declare-fun m!2679883 () Bool)

(assert (=> b!2248909 m!2679883))

(declare-fun m!2679885 () Bool)

(assert (=> b!2248899 m!2679885))

(declare-fun m!2679887 () Bool)

(assert (=> b!2248912 m!2679887))

(assert (=> b!2248912 m!2679887))

(declare-fun m!2679889 () Bool)

(assert (=> b!2248912 m!2679889))

(assert (=> b!2248911 m!2679873))

(declare-fun m!2679891 () Bool)

(assert (=> b!2248898 m!2679891))

(assert (=> b!2248901 m!2679873))

(assert (=> b!2248901 m!2679873))

(assert (=> b!2248901 m!2679875))

(assert (=> b!2248901 m!2679875))

(declare-fun m!2679893 () Bool)

(assert (=> b!2248901 m!2679893))

(declare-fun m!2679895 () Bool)

(assert (=> b!2248901 m!2679895))

(declare-fun m!2679897 () Bool)

(assert (=> b!2248903 m!2679897))

(declare-fun m!2679899 () Bool)

(assert (=> b!2248903 m!2679899))

(declare-fun m!2679901 () Bool)

(assert (=> b!2248902 m!2679901))

(declare-fun m!2679903 () Bool)

(assert (=> b!2248896 m!2679903))

(declare-fun m!2679905 () Bool)

(assert (=> b!2248896 m!2679905))

(declare-fun m!2679907 () Bool)

(assert (=> b!2248896 m!2679907))

(assert (=> b!2248896 m!2679907))

(declare-fun m!2679909 () Bool)

(assert (=> b!2248896 m!2679909))

(declare-fun m!2679911 () Bool)

(assert (=> b!2248922 m!2679911))

(declare-fun m!2679913 () Bool)

(assert (=> b!2248914 m!2679913))

(check-sat (not b!2248900) (not b_next!66525) (not b!2248895) (not b!2248899) (not b!2248903) (not b_next!66537) b_and!176057 (not b!2248909) (not b!2248917) (not b!2248905) (not b!2248918) b_and!176061 (not b_next!66529) (not b!2248910) (not b!2248923) tp_is_empty!10363 (not b!2248922) (not b!2248896) b_and!176055 (not b_next!66531) b_and!176049 (not b_next!66527) (not b!2248913) (not b!2248921) (not b!2248914) b_and!176051 (not b!2248898) b_and!176053 b_and!176059 (not b!2248924) (not b!2248920) (not b!2248902) (not b_next!66533) (not b!2248901) (not b!2248911) (not b!2248912) (not b_next!66535) (not b_next!66539) b_and!176063 (not b!2248904))
(check-sat (not b_next!66529) (not b_next!66525) b_and!176051 (not b_next!66537) (not b_next!66533) b_and!176057 b_and!176063 b_and!176061 b_and!176055 (not b_next!66531) b_and!176049 (not b_next!66527) b_and!176053 b_and!176059 (not b_next!66535) (not b_next!66539))
(get-model)

(declare-fun d!667181 () Bool)

(assert (=> d!667181 (= (inv!36170 (tag!4713 (rule!6523 (h!32046 tokens!456)))) (= (mod (str.len (value!134174 (tag!4713 (rule!6523 (h!32046 tokens!456))))) 2) 0))))

(assert (=> b!2248920 d!667181))

(declare-fun d!667183 () Bool)

(declare-fun res!960975 () Bool)

(declare-fun e!1439150 () Bool)

(assert (=> d!667183 (=> (not res!960975) (not e!1439150))))

(declare-fun semiInverseModEq!1703 (Int Int) Bool)

(assert (=> d!667183 (= res!960975 (semiInverseModEq!1703 (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456)))) (toValue!5957 (transformation!4223 (rule!6523 (h!32046 tokens!456))))))))

(assert (=> d!667183 (= (inv!36173 (transformation!4223 (rule!6523 (h!32046 tokens!456)))) e!1439150)))

(declare-fun b!2248927 () Bool)

(declare-fun equivClasses!1622 (Int Int) Bool)

(assert (=> b!2248927 (= e!1439150 (equivClasses!1622 (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456)))) (toValue!5957 (transformation!4223 (rule!6523 (h!32046 tokens!456))))))))

(assert (= (and d!667183 res!960975) b!2248927))

(declare-fun m!2679915 () Bool)

(assert (=> d!667183 m!2679915))

(declare-fun m!2679917 () Bool)

(assert (=> b!2248927 m!2679917))

(assert (=> b!2248920 d!667183))

(declare-fun b!2248938 () Bool)

(declare-fun e!1439159 () Bool)

(declare-fun e!1439157 () Bool)

(assert (=> b!2248938 (= e!1439159 e!1439157)))

(declare-fun c!357691 () Bool)

(assert (=> b!2248938 (= c!357691 ((_ is IntegerValue!13156) (value!134175 (h!32046 tokens!456))))))

(declare-fun b!2248939 () Bool)

(declare-fun res!960978 () Bool)

(declare-fun e!1439158 () Bool)

(assert (=> b!2248939 (=> res!960978 e!1439158)))

(assert (=> b!2248939 (= res!960978 (not ((_ is IntegerValue!13157) (value!134175 (h!32046 tokens!456)))))))

(assert (=> b!2248939 (= e!1439157 e!1439158)))

(declare-fun b!2248940 () Bool)

(declare-fun inv!15 (TokenValue!4385) Bool)

(assert (=> b!2248940 (= e!1439158 (inv!15 (value!134175 (h!32046 tokens!456))))))

(declare-fun b!2248941 () Bool)

(declare-fun inv!16 (TokenValue!4385) Bool)

(assert (=> b!2248941 (= e!1439159 (inv!16 (value!134175 (h!32046 tokens!456))))))

(declare-fun b!2248942 () Bool)

(declare-fun inv!17 (TokenValue!4385) Bool)

(assert (=> b!2248942 (= e!1439157 (inv!17 (value!134175 (h!32046 tokens!456))))))

(declare-fun d!667185 () Bool)

(declare-fun c!357692 () Bool)

(assert (=> d!667185 (= c!357692 ((_ is IntegerValue!13155) (value!134175 (h!32046 tokens!456))))))

(assert (=> d!667185 (= (inv!21 (value!134175 (h!32046 tokens!456))) e!1439159)))

(assert (= (and d!667185 c!357692) b!2248941))

(assert (= (and d!667185 (not c!357692)) b!2248938))

(assert (= (and b!2248938 c!357691) b!2248942))

(assert (= (and b!2248938 (not c!357691)) b!2248939))

(assert (= (and b!2248939 (not res!960978)) b!2248940))

(declare-fun m!2679919 () Bool)

(assert (=> b!2248940 m!2679919))

(declare-fun m!2679921 () Bool)

(assert (=> b!2248941 m!2679921))

(declare-fun m!2679923 () Bool)

(assert (=> b!2248942 m!2679923))

(assert (=> b!2248899 d!667185))

(declare-fun d!667187 () Bool)

(declare-fun res!960983 () Bool)

(declare-fun e!1439162 () Bool)

(assert (=> d!667187 (=> (not res!960983) (not e!1439162))))

(declare-fun isEmpty!15017 (List!26738) Bool)

(assert (=> d!667187 (= res!960983 (not (isEmpty!15017 (originalCharacters!4993 (h!32046 tokens!456)))))))

(assert (=> d!667187 (= (inv!36174 (h!32046 tokens!456)) e!1439162)))

(declare-fun b!2248947 () Bool)

(declare-fun res!960984 () Bool)

(assert (=> b!2248947 (=> (not res!960984) (not e!1439162))))

(declare-fun dynLambda!11579 (Int TokenValue!4385) BalanceConc!16916)

(assert (=> b!2248947 (= res!960984 (= (originalCharacters!4993 (h!32046 tokens!456)) (list!10215 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456)))) (value!134175 (h!32046 tokens!456))))))))

(declare-fun b!2248948 () Bool)

(assert (=> b!2248948 (= e!1439162 (= (size!20843 (h!32046 tokens!456)) (size!20845 (originalCharacters!4993 (h!32046 tokens!456)))))))

(assert (= (and d!667187 res!960983) b!2248947))

(assert (= (and b!2248947 res!960984) b!2248948))

(declare-fun b_lambda!71889 () Bool)

(assert (=> (not b_lambda!71889) (not b!2248947)))

(declare-fun t!200590 () Bool)

(declare-fun tb!133183 () Bool)

(assert (=> (and b!2248916 (= (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456)))) (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456))))) t!200590) tb!133183))

(declare-fun b!2248953 () Bool)

(declare-fun e!1439165 () Bool)

(declare-fun tp!710422 () Bool)

(declare-fun inv!36175 (Conc!8594) Bool)

(assert (=> b!2248953 (= e!1439165 (and (inv!36175 (c!357684 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456)))) (value!134175 (h!32046 tokens!456))))) tp!710422))))

(declare-fun result!162354 () Bool)

(declare-fun inv!36176 (BalanceConc!16916) Bool)

(assert (=> tb!133183 (= result!162354 (and (inv!36176 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456)))) (value!134175 (h!32046 tokens!456)))) e!1439165))))

(assert (= tb!133183 b!2248953))

(declare-fun m!2679925 () Bool)

(assert (=> b!2248953 m!2679925))

(declare-fun m!2679927 () Bool)

(assert (=> tb!133183 m!2679927))

(assert (=> b!2248947 t!200590))

(declare-fun b_and!176065 () Bool)

(assert (= b_and!176051 (and (=> t!200590 result!162354) b_and!176065)))

(declare-fun t!200592 () Bool)

(declare-fun tb!133185 () Bool)

(assert (=> (and b!2248915 (= (toChars!5816 (transformation!4223 otherR!12)) (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456))))) t!200592) tb!133185))

(declare-fun result!162358 () Bool)

(assert (= result!162358 result!162354))

(assert (=> b!2248947 t!200592))

(declare-fun b_and!176067 () Bool)

(assert (= b_and!176055 (and (=> t!200592 result!162358) b_and!176067)))

(declare-fun tb!133187 () Bool)

(declare-fun t!200594 () Bool)

(assert (=> (and b!2248908 (= (toChars!5816 (transformation!4223 r!2363)) (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456))))) t!200594) tb!133187))

(declare-fun result!162360 () Bool)

(assert (= result!162360 result!162354))

(assert (=> b!2248947 t!200594))

(declare-fun b_and!176069 () Bool)

(assert (= b_and!176059 (and (=> t!200594 result!162360) b_and!176069)))

(declare-fun tb!133189 () Bool)

(declare-fun t!200596 () Bool)

(assert (=> (and b!2248906 (= (toChars!5816 (transformation!4223 (h!32047 rules!1750))) (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456))))) t!200596) tb!133189))

(declare-fun result!162362 () Bool)

(assert (= result!162362 result!162354))

(assert (=> b!2248947 t!200596))

(declare-fun b_and!176071 () Bool)

(assert (= b_and!176063 (and (=> t!200596 result!162362) b_and!176071)))

(declare-fun m!2679929 () Bool)

(assert (=> d!667187 m!2679929))

(declare-fun m!2679931 () Bool)

(assert (=> b!2248947 m!2679931))

(assert (=> b!2248947 m!2679931))

(declare-fun m!2679933 () Bool)

(assert (=> b!2248947 m!2679933))

(declare-fun m!2679935 () Bool)

(assert (=> b!2248948 m!2679935))

(assert (=> b!2248910 d!667187))

(declare-fun b!2248962 () Bool)

(declare-fun e!1439172 () Int)

(assert (=> b!2248962 (= e!1439172 0)))

(declare-fun b!2248965 () Bool)

(declare-fun e!1439171 () Int)

(assert (=> b!2248965 (= e!1439171 (- 1))))

(declare-fun d!667189 () Bool)

(declare-fun lt!836109 () Int)

(assert (=> d!667189 (>= lt!836109 0)))

(assert (=> d!667189 (= lt!836109 e!1439172)))

(declare-fun c!357697 () Bool)

(assert (=> d!667189 (= c!357697 (and ((_ is Cons!26646) rules!1750) (= (h!32047 rules!1750) r!2363)))))

(assert (=> d!667189 (contains!4572 rules!1750 r!2363)))

(assert (=> d!667189 (= (getIndex!244 rules!1750 r!2363) lt!836109)))

(declare-fun b!2248964 () Bool)

(assert (=> b!2248964 (= e!1439171 (+ 1 (getIndex!244 (t!200588 rules!1750) r!2363)))))

(declare-fun b!2248963 () Bool)

(assert (=> b!2248963 (= e!1439172 e!1439171)))

(declare-fun c!357698 () Bool)

(assert (=> b!2248963 (= c!357698 (and ((_ is Cons!26646) rules!1750) (not (= (h!32047 rules!1750) r!2363))))))

(assert (= (and d!667189 c!357697) b!2248962))

(assert (= (and d!667189 (not c!357697)) b!2248963))

(assert (= (and b!2248963 c!357698) b!2248964))

(assert (= (and b!2248963 (not c!357698)) b!2248965))

(assert (=> d!667189 m!2679901))

(declare-fun m!2679937 () Bool)

(assert (=> b!2248964 m!2679937))

(assert (=> b!2248900 d!667189))

(declare-fun b!2248966 () Bool)

(declare-fun e!1439174 () Int)

(assert (=> b!2248966 (= e!1439174 0)))

(declare-fun b!2248969 () Bool)

(declare-fun e!1439173 () Int)

(assert (=> b!2248969 (= e!1439173 (- 1))))

(declare-fun d!667191 () Bool)

(declare-fun lt!836110 () Int)

(assert (=> d!667191 (>= lt!836110 0)))

(assert (=> d!667191 (= lt!836110 e!1439174)))

(declare-fun c!357699 () Bool)

(assert (=> d!667191 (= c!357699 (and ((_ is Cons!26646) rules!1750) (= (h!32047 rules!1750) otherR!12)))))

(assert (=> d!667191 (contains!4572 rules!1750 otherR!12)))

(assert (=> d!667191 (= (getIndex!244 rules!1750 otherR!12) lt!836110)))

(declare-fun b!2248968 () Bool)

(assert (=> b!2248968 (= e!1439173 (+ 1 (getIndex!244 (t!200588 rules!1750) otherR!12)))))

(declare-fun b!2248967 () Bool)

(assert (=> b!2248967 (= e!1439174 e!1439173)))

(declare-fun c!357700 () Bool)

(assert (=> b!2248967 (= c!357700 (and ((_ is Cons!26646) rules!1750) (not (= (h!32047 rules!1750) otherR!12))))))

(assert (= (and d!667191 c!357699) b!2248966))

(assert (= (and d!667191 (not c!357699)) b!2248967))

(assert (= (and b!2248967 c!357700) b!2248968))

(assert (= (and b!2248967 (not c!357700)) b!2248969))

(assert (=> d!667191 m!2679857))

(declare-fun m!2679939 () Bool)

(assert (=> b!2248968 m!2679939))

(assert (=> b!2248900 d!667191))

(declare-fun d!667193 () Bool)

(declare-fun res!960989 () Bool)

(declare-fun e!1439177 () Bool)

(assert (=> d!667193 (=> (not res!960989) (not e!1439177))))

(declare-fun validRegex!2455 (Regex!6571) Bool)

(assert (=> d!667193 (= res!960989 (validRegex!2455 (regex!4223 otherR!12)))))

(assert (=> d!667193 (= (ruleValid!1315 thiss!16613 otherR!12) e!1439177)))

(declare-fun b!2248974 () Bool)

(declare-fun res!960990 () Bool)

(assert (=> b!2248974 (=> (not res!960990) (not e!1439177))))

(declare-fun nullable!1801 (Regex!6571) Bool)

(assert (=> b!2248974 (= res!960990 (not (nullable!1801 (regex!4223 otherR!12))))))

(declare-fun b!2248975 () Bool)

(assert (=> b!2248975 (= e!1439177 (not (= (tag!4713 otherR!12) (String!29030 ""))))))

(assert (= (and d!667193 res!960989) b!2248974))

(assert (= (and b!2248974 res!960990) b!2248975))

(declare-fun m!2679941 () Bool)

(assert (=> d!667193 m!2679941))

(declare-fun m!2679943 () Bool)

(assert (=> b!2248974 m!2679943))

(assert (=> b!2248900 d!667193))

(declare-fun d!667195 () Bool)

(assert (=> d!667195 (ruleValid!1315 thiss!16613 otherR!12)))

(declare-fun lt!836113 () Unit!39590)

(declare-fun choose!13164 (LexerInterface!3820 Rule!8246 List!26740) Unit!39590)

(assert (=> d!667195 (= lt!836113 (choose!13164 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!667195 (contains!4572 rules!1750 otherR!12)))

(assert (=> d!667195 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!722 thiss!16613 otherR!12 rules!1750) lt!836113)))

(declare-fun bs!454938 () Bool)

(assert (= bs!454938 d!667195))

(assert (=> bs!454938 m!2679865))

(declare-fun m!2679945 () Bool)

(assert (=> bs!454938 m!2679945))

(assert (=> bs!454938 m!2679857))

(assert (=> b!2248900 d!667195))

(declare-fun d!667197 () Bool)

(assert (=> d!667197 (= (head!4786 tokens!456) (h!32046 tokens!456))))

(assert (=> b!2248911 d!667197))

(declare-fun d!667199 () Bool)

(assert (=> d!667199 (= (isEmpty!15016 tokens!456) ((_ is Nil!26645) tokens!456))))

(assert (=> b!2248922 d!667199))

(declare-fun d!667201 () Bool)

(declare-fun lt!836116 () Int)

(assert (=> d!667201 (= lt!836116 (size!20845 (list!10215 (charsOf!2611 (head!4786 tokens!456)))))))

(declare-fun size!20846 (Conc!8594) Int)

(assert (=> d!667201 (= lt!836116 (size!20846 (c!357684 (charsOf!2611 (head!4786 tokens!456)))))))

(assert (=> d!667201 (= (size!20844 (charsOf!2611 (head!4786 tokens!456))) lt!836116)))

(declare-fun bs!454939 () Bool)

(assert (= bs!454939 d!667201))

(assert (=> bs!454939 m!2679875))

(assert (=> bs!454939 m!2679877))

(assert (=> bs!454939 m!2679877))

(declare-fun m!2679947 () Bool)

(assert (=> bs!454939 m!2679947))

(declare-fun m!2679949 () Bool)

(assert (=> bs!454939 m!2679949))

(assert (=> b!2248901 d!667201))

(declare-fun d!667203 () Bool)

(declare-fun lt!836119 () BalanceConc!16916)

(assert (=> d!667203 (= (list!10215 lt!836119) (originalCharacters!4993 (head!4786 tokens!456)))))

(assert (=> d!667203 (= lt!836119 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (head!4786 tokens!456)))) (value!134175 (head!4786 tokens!456))))))

(assert (=> d!667203 (= (charsOf!2611 (head!4786 tokens!456)) lt!836119)))

(declare-fun b_lambda!71891 () Bool)

(assert (=> (not b_lambda!71891) (not d!667203)))

(declare-fun t!200598 () Bool)

(declare-fun tb!133191 () Bool)

(assert (=> (and b!2248916 (= (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456)))) (toChars!5816 (transformation!4223 (rule!6523 (head!4786 tokens!456))))) t!200598) tb!133191))

(declare-fun b!2248976 () Bool)

(declare-fun e!1439178 () Bool)

(declare-fun tp!710423 () Bool)

(assert (=> b!2248976 (= e!1439178 (and (inv!36175 (c!357684 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (head!4786 tokens!456)))) (value!134175 (head!4786 tokens!456))))) tp!710423))))

(declare-fun result!162364 () Bool)

(assert (=> tb!133191 (= result!162364 (and (inv!36176 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (head!4786 tokens!456)))) (value!134175 (head!4786 tokens!456)))) e!1439178))))

(assert (= tb!133191 b!2248976))

(declare-fun m!2679951 () Bool)

(assert (=> b!2248976 m!2679951))

(declare-fun m!2679953 () Bool)

(assert (=> tb!133191 m!2679953))

(assert (=> d!667203 t!200598))

(declare-fun b_and!176073 () Bool)

(assert (= b_and!176065 (and (=> t!200598 result!162364) b_and!176073)))

(declare-fun t!200600 () Bool)

(declare-fun tb!133193 () Bool)

(assert (=> (and b!2248915 (= (toChars!5816 (transformation!4223 otherR!12)) (toChars!5816 (transformation!4223 (rule!6523 (head!4786 tokens!456))))) t!200600) tb!133193))

(declare-fun result!162366 () Bool)

(assert (= result!162366 result!162364))

(assert (=> d!667203 t!200600))

(declare-fun b_and!176075 () Bool)

(assert (= b_and!176067 (and (=> t!200600 result!162366) b_and!176075)))

(declare-fun t!200602 () Bool)

(declare-fun tb!133195 () Bool)

(assert (=> (and b!2248908 (= (toChars!5816 (transformation!4223 r!2363)) (toChars!5816 (transformation!4223 (rule!6523 (head!4786 tokens!456))))) t!200602) tb!133195))

(declare-fun result!162368 () Bool)

(assert (= result!162368 result!162364))

(assert (=> d!667203 t!200602))

(declare-fun b_and!176077 () Bool)

(assert (= b_and!176069 (and (=> t!200602 result!162368) b_and!176077)))

(declare-fun t!200604 () Bool)

(declare-fun tb!133197 () Bool)

(assert (=> (and b!2248906 (= (toChars!5816 (transformation!4223 (h!32047 rules!1750))) (toChars!5816 (transformation!4223 (rule!6523 (head!4786 tokens!456))))) t!200604) tb!133197))

(declare-fun result!162370 () Bool)

(assert (= result!162370 result!162364))

(assert (=> d!667203 t!200604))

(declare-fun b_and!176079 () Bool)

(assert (= b_and!176071 (and (=> t!200604 result!162370) b_and!176079)))

(declare-fun m!2679955 () Bool)

(assert (=> d!667203 m!2679955))

(declare-fun m!2679957 () Bool)

(assert (=> d!667203 m!2679957))

(assert (=> b!2248901 d!667203))

(assert (=> b!2248901 d!667197))

(declare-fun d!667205 () Bool)

(declare-fun lt!836122 () Int)

(assert (=> d!667205 (>= lt!836122 0)))

(declare-fun e!1439181 () Int)

(assert (=> d!667205 (= lt!836122 e!1439181)))

(declare-fun c!357703 () Bool)

(assert (=> d!667205 (= c!357703 ((_ is Nil!26644) otherP!12))))

(assert (=> d!667205 (= (size!20845 otherP!12) lt!836122)))

(declare-fun b!2248981 () Bool)

(assert (=> b!2248981 (= e!1439181 0)))

(declare-fun b!2248982 () Bool)

(assert (=> b!2248982 (= e!1439181 (+ 1 (size!20845 (t!200586 otherP!12))))))

(assert (= (and d!667205 c!357703) b!2248981))

(assert (= (and d!667205 (not c!357703)) b!2248982))

(declare-fun m!2679959 () Bool)

(assert (=> b!2248982 m!2679959))

(assert (=> b!2248901 d!667205))

(declare-fun d!667207 () Bool)

(declare-fun list!10216 (Conc!8595) List!26739)

(assert (=> d!667207 (= (list!10214 (_1!15578 lt!836104)) (list!10216 (c!357686 (_1!15578 lt!836104))))))

(declare-fun bs!454940 () Bool)

(assert (= bs!454940 d!667207))

(declare-fun m!2679961 () Bool)

(assert (=> bs!454940 m!2679961))

(assert (=> b!2248896 d!667207))

(declare-fun d!667209 () Bool)

(declare-fun list!10217 (Conc!8594) List!26738)

(assert (=> d!667209 (= (list!10215 (_2!15578 lt!836104)) (list!10217 (c!357684 (_2!15578 lt!836104))))))

(declare-fun bs!454941 () Bool)

(assert (= bs!454941 d!667209))

(declare-fun m!2679963 () Bool)

(assert (=> bs!454941 m!2679963))

(assert (=> b!2248896 d!667209))

(declare-fun b!2248993 () Bool)

(declare-fun e!1439190 () Bool)

(declare-fun lt!836125 () tuple2!26136)

(declare-fun isEmpty!15018 (BalanceConc!16918) Bool)

(assert (=> b!2248993 (= e!1439190 (not (isEmpty!15018 (_1!15578 lt!836125))))))

(declare-fun b!2248994 () Bool)

(declare-fun res!961003 () Bool)

(declare-fun e!1439188 () Bool)

(assert (=> b!2248994 (=> (not res!961003) (not e!1439188))))

(declare-fun lexList!1047 (LexerInterface!3820 List!26740 List!26738) tuple2!26138)

(assert (=> b!2248994 (= res!961003 (= (list!10214 (_1!15578 lt!836125)) (_1!15579 (lexList!1047 thiss!16613 rules!1750 (list!10215 (seqFromList!2927 input!1722))))))))

(declare-fun b!2248995 () Bool)

(declare-fun e!1439189 () Bool)

(assert (=> b!2248995 (= e!1439189 e!1439190)))

(declare-fun res!961002 () Bool)

(assert (=> b!2248995 (= res!961002 (< (size!20844 (_2!15578 lt!836125)) (size!20844 (seqFromList!2927 input!1722))))))

(assert (=> b!2248995 (=> (not res!961002) (not e!1439190))))

(declare-fun b!2248996 () Bool)

(assert (=> b!2248996 (= e!1439188 (= (list!10215 (_2!15578 lt!836125)) (_2!15579 (lexList!1047 thiss!16613 rules!1750 (list!10215 (seqFromList!2927 input!1722))))))))

(declare-fun b!2248997 () Bool)

(assert (=> b!2248997 (= e!1439189 (= (_2!15578 lt!836125) (seqFromList!2927 input!1722)))))

(declare-fun d!667211 () Bool)

(assert (=> d!667211 e!1439188))

(declare-fun res!961004 () Bool)

(assert (=> d!667211 (=> (not res!961004) (not e!1439188))))

(assert (=> d!667211 (= res!961004 e!1439189)))

(declare-fun c!357706 () Bool)

(declare-fun size!20847 (BalanceConc!16918) Int)

(assert (=> d!667211 (= c!357706 (> (size!20847 (_1!15578 lt!836125)) 0))))

(declare-fun lexTailRecV2!722 (LexerInterface!3820 List!26740 BalanceConc!16916 BalanceConc!16916 BalanceConc!16916 BalanceConc!16918) tuple2!26136)

(assert (=> d!667211 (= lt!836125 (lexTailRecV2!722 thiss!16613 rules!1750 (seqFromList!2927 input!1722) (BalanceConc!16917 Empty!8594) (seqFromList!2927 input!1722) (BalanceConc!16919 Empty!8595)))))

(assert (=> d!667211 (= (lex!1659 thiss!16613 rules!1750 (seqFromList!2927 input!1722)) lt!836125)))

(assert (= (and d!667211 c!357706) b!2248995))

(assert (= (and d!667211 (not c!357706)) b!2248997))

(assert (= (and b!2248995 res!961002) b!2248993))

(assert (= (and d!667211 res!961004) b!2248994))

(assert (= (and b!2248994 res!961003) b!2248996))

(declare-fun m!2679969 () Bool)

(assert (=> b!2248993 m!2679969))

(declare-fun m!2679971 () Bool)

(assert (=> b!2248996 m!2679971))

(assert (=> b!2248996 m!2679907))

(declare-fun m!2679973 () Bool)

(assert (=> b!2248996 m!2679973))

(assert (=> b!2248996 m!2679973))

(declare-fun m!2679975 () Bool)

(assert (=> b!2248996 m!2679975))

(declare-fun m!2679977 () Bool)

(assert (=> b!2248995 m!2679977))

(assert (=> b!2248995 m!2679907))

(declare-fun m!2679979 () Bool)

(assert (=> b!2248995 m!2679979))

(declare-fun m!2679981 () Bool)

(assert (=> b!2248994 m!2679981))

(assert (=> b!2248994 m!2679907))

(assert (=> b!2248994 m!2679973))

(assert (=> b!2248994 m!2679973))

(assert (=> b!2248994 m!2679975))

(declare-fun m!2679983 () Bool)

(assert (=> d!667211 m!2679983))

(assert (=> d!667211 m!2679907))

(assert (=> d!667211 m!2679907))

(declare-fun m!2679985 () Bool)

(assert (=> d!667211 m!2679985))

(assert (=> b!2248896 d!667211))

(declare-fun d!667219 () Bool)

(declare-fun fromListB!1313 (List!26738) BalanceConc!16916)

(assert (=> d!667219 (= (seqFromList!2927 input!1722) (fromListB!1313 input!1722))))

(declare-fun bs!454944 () Bool)

(assert (= bs!454944 d!667219))

(declare-fun m!2679987 () Bool)

(assert (=> bs!454944 m!2679987))

(assert (=> b!2248896 d!667219))

(declare-fun d!667221 () Bool)

(assert (=> d!667221 (= (isEmpty!15015 rules!1750) ((_ is Nil!26646) rules!1750))))

(assert (=> b!2248898 d!667221))

(declare-fun d!667223 () Bool)

(assert (=> d!667223 (= (inv!36170 (tag!4713 otherR!12)) (= (mod (str.len (value!134174 (tag!4713 otherR!12))) 2) 0))))

(assert (=> b!2248909 d!667223))

(declare-fun d!667225 () Bool)

(declare-fun res!961005 () Bool)

(declare-fun e!1439191 () Bool)

(assert (=> d!667225 (=> (not res!961005) (not e!1439191))))

(assert (=> d!667225 (= res!961005 (semiInverseModEq!1703 (toChars!5816 (transformation!4223 otherR!12)) (toValue!5957 (transformation!4223 otherR!12))))))

(assert (=> d!667225 (= (inv!36173 (transformation!4223 otherR!12)) e!1439191)))

(declare-fun b!2248998 () Bool)

(assert (=> b!2248998 (= e!1439191 (equivClasses!1622 (toChars!5816 (transformation!4223 otherR!12)) (toValue!5957 (transformation!4223 otherR!12))))))

(assert (= (and d!667225 res!961005) b!2248998))

(declare-fun m!2679989 () Bool)

(assert (=> d!667225 m!2679989))

(declare-fun m!2679991 () Bool)

(assert (=> b!2248998 m!2679991))

(assert (=> b!2248909 d!667225))

(declare-fun d!667227 () Bool)

(declare-fun lt!836128 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3547 (List!26740) (InoxSet Rule!8246))

(assert (=> d!667227 (= lt!836128 (select (content!3547 rules!1750) otherR!12))))

(declare-fun e!1439197 () Bool)

(assert (=> d!667227 (= lt!836128 e!1439197)))

(declare-fun res!961011 () Bool)

(assert (=> d!667227 (=> (not res!961011) (not e!1439197))))

(assert (=> d!667227 (= res!961011 ((_ is Cons!26646) rules!1750))))

(assert (=> d!667227 (= (contains!4572 rules!1750 otherR!12) lt!836128)))

(declare-fun b!2249003 () Bool)

(declare-fun e!1439196 () Bool)

(assert (=> b!2249003 (= e!1439197 e!1439196)))

(declare-fun res!961010 () Bool)

(assert (=> b!2249003 (=> res!961010 e!1439196)))

(assert (=> b!2249003 (= res!961010 (= (h!32047 rules!1750) otherR!12))))

(declare-fun b!2249004 () Bool)

(assert (=> b!2249004 (= e!1439196 (contains!4572 (t!200588 rules!1750) otherR!12))))

(assert (= (and d!667227 res!961011) b!2249003))

(assert (= (and b!2249003 (not res!961010)) b!2249004))

(declare-fun m!2679993 () Bool)

(assert (=> d!667227 m!2679993))

(declare-fun m!2679995 () Bool)

(assert (=> d!667227 m!2679995))

(declare-fun m!2679997 () Bool)

(assert (=> b!2249004 m!2679997))

(assert (=> b!2248904 d!667227))

(declare-fun d!667229 () Bool)

(assert (=> d!667229 (= (inv!36170 (tag!4713 r!2363)) (= (mod (str.len (value!134174 (tag!4713 r!2363))) 2) 0))))

(assert (=> b!2248905 d!667229))

(declare-fun d!667231 () Bool)

(declare-fun res!961012 () Bool)

(declare-fun e!1439198 () Bool)

(assert (=> d!667231 (=> (not res!961012) (not e!1439198))))

(assert (=> d!667231 (= res!961012 (semiInverseModEq!1703 (toChars!5816 (transformation!4223 r!2363)) (toValue!5957 (transformation!4223 r!2363))))))

(assert (=> d!667231 (= (inv!36173 (transformation!4223 r!2363)) e!1439198)))

(declare-fun b!2249005 () Bool)

(assert (=> b!2249005 (= e!1439198 (equivClasses!1622 (toChars!5816 (transformation!4223 r!2363)) (toValue!5957 (transformation!4223 r!2363))))))

(assert (= (and d!667231 res!961012) b!2249005))

(declare-fun m!2679999 () Bool)

(assert (=> d!667231 m!2679999))

(declare-fun m!2680001 () Bool)

(assert (=> b!2249005 m!2680001))

(assert (=> b!2248905 d!667231))

(declare-fun d!667233 () Bool)

(declare-fun e!1439214 () Bool)

(assert (=> d!667233 e!1439214))

(declare-fun c!357714 () Bool)

(assert (=> d!667233 (= c!357714 ((_ is EmptyExpr!6571) (regex!4223 r!2363)))))

(declare-fun lt!836131 () Bool)

(declare-fun e!1439219 () Bool)

(assert (=> d!667233 (= lt!836131 e!1439219)))

(declare-fun c!357715 () Bool)

(assert (=> d!667233 (= c!357715 (isEmpty!15017 (list!10215 (charsOf!2611 (head!4786 tokens!456)))))))

(assert (=> d!667233 (validRegex!2455 (regex!4223 r!2363))))

(assert (=> d!667233 (= (matchR!2832 (regex!4223 r!2363) (list!10215 (charsOf!2611 (head!4786 tokens!456)))) lt!836131)))

(declare-fun b!2249034 () Bool)

(declare-fun e!1439215 () Bool)

(declare-fun head!4787 (List!26738) C!13288)

(assert (=> b!2249034 (= e!1439215 (= (head!4787 (list!10215 (charsOf!2611 (head!4786 tokens!456)))) (c!357685 (regex!4223 r!2363))))))

(declare-fun b!2249035 () Bool)

(declare-fun res!961031 () Bool)

(declare-fun e!1439216 () Bool)

(assert (=> b!2249035 (=> res!961031 e!1439216)))

(declare-fun tail!3244 (List!26738) List!26738)

(assert (=> b!2249035 (= res!961031 (not (isEmpty!15017 (tail!3244 (list!10215 (charsOf!2611 (head!4786 tokens!456)))))))))

(declare-fun b!2249036 () Bool)

(declare-fun e!1439217 () Bool)

(assert (=> b!2249036 (= e!1439214 e!1439217)))

(declare-fun c!357713 () Bool)

(assert (=> b!2249036 (= c!357713 ((_ is EmptyLang!6571) (regex!4223 r!2363)))))

(declare-fun b!2249037 () Bool)

(declare-fun e!1439218 () Bool)

(assert (=> b!2249037 (= e!1439218 e!1439216)))

(declare-fun res!961029 () Bool)

(assert (=> b!2249037 (=> res!961029 e!1439216)))

(declare-fun call!135505 () Bool)

(assert (=> b!2249037 (= res!961029 call!135505)))

(declare-fun b!2249038 () Bool)

(assert (=> b!2249038 (= e!1439217 (not lt!836131))))

(declare-fun b!2249039 () Bool)

(declare-fun derivativeStep!1463 (Regex!6571 C!13288) Regex!6571)

(assert (=> b!2249039 (= e!1439219 (matchR!2832 (derivativeStep!1463 (regex!4223 r!2363) (head!4787 (list!10215 (charsOf!2611 (head!4786 tokens!456))))) (tail!3244 (list!10215 (charsOf!2611 (head!4786 tokens!456))))))))

(declare-fun b!2249040 () Bool)

(declare-fun res!961035 () Bool)

(declare-fun e!1439213 () Bool)

(assert (=> b!2249040 (=> res!961035 e!1439213)))

(assert (=> b!2249040 (= res!961035 e!1439215)))

(declare-fun res!961033 () Bool)

(assert (=> b!2249040 (=> (not res!961033) (not e!1439215))))

(assert (=> b!2249040 (= res!961033 lt!836131)))

(declare-fun b!2249041 () Bool)

(assert (=> b!2249041 (= e!1439216 (not (= (head!4787 (list!10215 (charsOf!2611 (head!4786 tokens!456)))) (c!357685 (regex!4223 r!2363)))))))

(declare-fun bm!135500 () Bool)

(assert (=> bm!135500 (= call!135505 (isEmpty!15017 (list!10215 (charsOf!2611 (head!4786 tokens!456)))))))

(declare-fun b!2249042 () Bool)

(assert (=> b!2249042 (= e!1439219 (nullable!1801 (regex!4223 r!2363)))))

(declare-fun b!2249043 () Bool)

(assert (=> b!2249043 (= e!1439214 (= lt!836131 call!135505))))

(declare-fun b!2249044 () Bool)

(declare-fun res!961036 () Bool)

(assert (=> b!2249044 (=> (not res!961036) (not e!1439215))))

(assert (=> b!2249044 (= res!961036 (isEmpty!15017 (tail!3244 (list!10215 (charsOf!2611 (head!4786 tokens!456))))))))

(declare-fun b!2249045 () Bool)

(declare-fun res!961032 () Bool)

(assert (=> b!2249045 (=> res!961032 e!1439213)))

(assert (=> b!2249045 (= res!961032 (not ((_ is ElementMatch!6571) (regex!4223 r!2363))))))

(assert (=> b!2249045 (= e!1439217 e!1439213)))

(declare-fun b!2249046 () Bool)

(declare-fun res!961030 () Bool)

(assert (=> b!2249046 (=> (not res!961030) (not e!1439215))))

(assert (=> b!2249046 (= res!961030 (not call!135505))))

(declare-fun b!2249047 () Bool)

(assert (=> b!2249047 (= e!1439213 e!1439218)))

(declare-fun res!961034 () Bool)

(assert (=> b!2249047 (=> (not res!961034) (not e!1439218))))

(assert (=> b!2249047 (= res!961034 (not lt!836131))))

(assert (= (and d!667233 c!357715) b!2249042))

(assert (= (and d!667233 (not c!357715)) b!2249039))

(assert (= (and d!667233 c!357714) b!2249043))

(assert (= (and d!667233 (not c!357714)) b!2249036))

(assert (= (and b!2249036 c!357713) b!2249038))

(assert (= (and b!2249036 (not c!357713)) b!2249045))

(assert (= (and b!2249045 (not res!961032)) b!2249040))

(assert (= (and b!2249040 res!961033) b!2249046))

(assert (= (and b!2249046 res!961030) b!2249044))

(assert (= (and b!2249044 res!961036) b!2249034))

(assert (= (and b!2249040 (not res!961035)) b!2249047))

(assert (= (and b!2249047 res!961034) b!2249037))

(assert (= (and b!2249037 (not res!961029)) b!2249035))

(assert (= (and b!2249035 (not res!961031)) b!2249041))

(assert (= (or b!2249043 b!2249037 b!2249046) bm!135500))

(declare-fun m!2680003 () Bool)

(assert (=> b!2249042 m!2680003))

(assert (=> b!2249035 m!2679877))

(declare-fun m!2680005 () Bool)

(assert (=> b!2249035 m!2680005))

(assert (=> b!2249035 m!2680005))

(declare-fun m!2680007 () Bool)

(assert (=> b!2249035 m!2680007))

(assert (=> b!2249034 m!2679877))

(declare-fun m!2680009 () Bool)

(assert (=> b!2249034 m!2680009))

(assert (=> b!2249041 m!2679877))

(assert (=> b!2249041 m!2680009))

(assert (=> bm!135500 m!2679877))

(declare-fun m!2680011 () Bool)

(assert (=> bm!135500 m!2680011))

(assert (=> b!2249039 m!2679877))

(assert (=> b!2249039 m!2680009))

(assert (=> b!2249039 m!2680009))

(declare-fun m!2680013 () Bool)

(assert (=> b!2249039 m!2680013))

(assert (=> b!2249039 m!2679877))

(assert (=> b!2249039 m!2680005))

(assert (=> b!2249039 m!2680013))

(assert (=> b!2249039 m!2680005))

(declare-fun m!2680015 () Bool)

(assert (=> b!2249039 m!2680015))

(assert (=> d!667233 m!2679877))

(assert (=> d!667233 m!2680011))

(declare-fun m!2680017 () Bool)

(assert (=> d!667233 m!2680017))

(assert (=> b!2249044 m!2679877))

(assert (=> b!2249044 m!2680005))

(assert (=> b!2249044 m!2680005))

(assert (=> b!2249044 m!2680007))

(assert (=> b!2248917 d!667233))

(declare-fun d!667235 () Bool)

(assert (=> d!667235 (= (list!10215 (charsOf!2611 (head!4786 tokens!456))) (list!10217 (c!357684 (charsOf!2611 (head!4786 tokens!456)))))))

(declare-fun bs!454945 () Bool)

(assert (= bs!454945 d!667235))

(declare-fun m!2680019 () Bool)

(assert (=> bs!454945 m!2680019))

(assert (=> b!2248917 d!667235))

(assert (=> b!2248917 d!667203))

(assert (=> b!2248917 d!667197))

(declare-fun d!667237 () Bool)

(declare-fun isEmpty!15019 (Option!5196) Bool)

(assert (=> d!667237 (= (isDefined!4182 (maxPrefix!2108 thiss!16613 rules!1750 input!1722)) (not (isEmpty!15019 (maxPrefix!2108 thiss!16613 rules!1750 input!1722))))))

(declare-fun bs!454946 () Bool)

(assert (= bs!454946 d!667237))

(assert (=> bs!454946 m!2679887))

(declare-fun m!2680021 () Bool)

(assert (=> bs!454946 m!2680021))

(assert (=> b!2248912 d!667237))

(declare-fun b!2249081 () Bool)

(declare-fun e!1439237 () Option!5196)

(declare-fun lt!836146 () Option!5196)

(declare-fun lt!836148 () Option!5196)

(assert (=> b!2249081 (= e!1439237 (ite (and ((_ is None!5195) lt!836146) ((_ is None!5195) lt!836148)) None!5195 (ite ((_ is None!5195) lt!836148) lt!836146 (ite ((_ is None!5195) lt!836146) lt!836148 (ite (>= (size!20843 (_1!15577 (v!30211 lt!836146))) (size!20843 (_1!15577 (v!30211 lt!836148)))) lt!836146 lt!836148)))))))

(declare-fun call!135508 () Option!5196)

(assert (=> b!2249081 (= lt!836146 call!135508)))

(assert (=> b!2249081 (= lt!836148 (maxPrefix!2108 thiss!16613 (t!200588 rules!1750) input!1722))))

(declare-fun b!2249082 () Bool)

(declare-fun res!961063 () Bool)

(declare-fun e!1439236 () Bool)

(assert (=> b!2249082 (=> (not res!961063) (not e!1439236))))

(declare-fun lt!836149 () Option!5196)

(declare-fun get!8041 (Option!5196) tuple2!26134)

(declare-fun apply!6546 (TokenValueInjection!8310 BalanceConc!16916) TokenValue!4385)

(assert (=> b!2249082 (= res!961063 (= (value!134175 (_1!15577 (get!8041 lt!836149))) (apply!6546 (transformation!4223 (rule!6523 (_1!15577 (get!8041 lt!836149)))) (seqFromList!2927 (originalCharacters!4993 (_1!15577 (get!8041 lt!836149)))))))))

(declare-fun d!667239 () Bool)

(declare-fun e!1439235 () Bool)

(assert (=> d!667239 e!1439235))

(declare-fun res!961061 () Bool)

(assert (=> d!667239 (=> res!961061 e!1439235)))

(assert (=> d!667239 (= res!961061 (isEmpty!15019 lt!836149))))

(assert (=> d!667239 (= lt!836149 e!1439237)))

(declare-fun c!357721 () Bool)

(assert (=> d!667239 (= c!357721 (and ((_ is Cons!26646) rules!1750) ((_ is Nil!26646) (t!200588 rules!1750))))))

(declare-fun lt!836145 () Unit!39590)

(declare-fun lt!836147 () Unit!39590)

(assert (=> d!667239 (= lt!836145 lt!836147)))

(assert (=> d!667239 (isPrefix!2213 input!1722 input!1722)))

(declare-fun lemmaIsPrefixRefl!1428 (List!26738 List!26738) Unit!39590)

(assert (=> d!667239 (= lt!836147 (lemmaIsPrefixRefl!1428 input!1722 input!1722))))

(declare-fun rulesValidInductive!1472 (LexerInterface!3820 List!26740) Bool)

(assert (=> d!667239 (rulesValidInductive!1472 thiss!16613 rules!1750)))

(assert (=> d!667239 (= (maxPrefix!2108 thiss!16613 rules!1750 input!1722) lt!836149)))

(declare-fun b!2249083 () Bool)

(declare-fun res!961065 () Bool)

(assert (=> b!2249083 (=> (not res!961065) (not e!1439236))))

(assert (=> b!2249083 (= res!961065 (matchR!2832 (regex!4223 (rule!6523 (_1!15577 (get!8041 lt!836149)))) (list!10215 (charsOf!2611 (_1!15577 (get!8041 lt!836149))))))))

(declare-fun bm!135503 () Bool)

(declare-fun maxPrefixOneRule!1309 (LexerInterface!3820 Rule!8246 List!26738) Option!5196)

(assert (=> bm!135503 (= call!135508 (maxPrefixOneRule!1309 thiss!16613 (h!32047 rules!1750) input!1722))))

(declare-fun b!2249084 () Bool)

(assert (=> b!2249084 (= e!1439237 call!135508)))

(declare-fun b!2249085 () Bool)

(assert (=> b!2249085 (= e!1439236 (contains!4572 rules!1750 (rule!6523 (_1!15577 (get!8041 lt!836149)))))))

(declare-fun b!2249086 () Bool)

(declare-fun res!961060 () Bool)

(assert (=> b!2249086 (=> (not res!961060) (not e!1439236))))

(assert (=> b!2249086 (= res!961060 (< (size!20845 (_2!15577 (get!8041 lt!836149))) (size!20845 input!1722)))))

(declare-fun b!2249087 () Bool)

(assert (=> b!2249087 (= e!1439235 e!1439236)))

(declare-fun res!961062 () Bool)

(assert (=> b!2249087 (=> (not res!961062) (not e!1439236))))

(assert (=> b!2249087 (= res!961062 (isDefined!4182 lt!836149))))

(declare-fun b!2249088 () Bool)

(declare-fun res!961066 () Bool)

(assert (=> b!2249088 (=> (not res!961066) (not e!1439236))))

(assert (=> b!2249088 (= res!961066 (= (list!10215 (charsOf!2611 (_1!15577 (get!8041 lt!836149)))) (originalCharacters!4993 (_1!15577 (get!8041 lt!836149)))))))

(declare-fun b!2249089 () Bool)

(declare-fun res!961064 () Bool)

(assert (=> b!2249089 (=> (not res!961064) (not e!1439236))))

(declare-fun ++!6488 (List!26738 List!26738) List!26738)

(assert (=> b!2249089 (= res!961064 (= (++!6488 (list!10215 (charsOf!2611 (_1!15577 (get!8041 lt!836149)))) (_2!15577 (get!8041 lt!836149))) input!1722))))

(assert (= (and d!667239 c!357721) b!2249084))

(assert (= (and d!667239 (not c!357721)) b!2249081))

(assert (= (or b!2249084 b!2249081) bm!135503))

(assert (= (and d!667239 (not res!961061)) b!2249087))

(assert (= (and b!2249087 res!961062) b!2249088))

(assert (= (and b!2249088 res!961066) b!2249086))

(assert (= (and b!2249086 res!961060) b!2249089))

(assert (= (and b!2249089 res!961064) b!2249082))

(assert (= (and b!2249082 res!961063) b!2249083))

(assert (= (and b!2249083 res!961065) b!2249085))

(declare-fun m!2680045 () Bool)

(assert (=> b!2249087 m!2680045))

(declare-fun m!2680047 () Bool)

(assert (=> d!667239 m!2680047))

(declare-fun m!2680049 () Bool)

(assert (=> d!667239 m!2680049))

(declare-fun m!2680051 () Bool)

(assert (=> d!667239 m!2680051))

(declare-fun m!2680053 () Bool)

(assert (=> d!667239 m!2680053))

(declare-fun m!2680055 () Bool)

(assert (=> b!2249081 m!2680055))

(declare-fun m!2680057 () Bool)

(assert (=> b!2249082 m!2680057))

(declare-fun m!2680059 () Bool)

(assert (=> b!2249082 m!2680059))

(assert (=> b!2249082 m!2680059))

(declare-fun m!2680061 () Bool)

(assert (=> b!2249082 m!2680061))

(assert (=> b!2249085 m!2680057))

(declare-fun m!2680063 () Bool)

(assert (=> b!2249085 m!2680063))

(declare-fun m!2680065 () Bool)

(assert (=> bm!135503 m!2680065))

(assert (=> b!2249086 m!2680057))

(declare-fun m!2680067 () Bool)

(assert (=> b!2249086 m!2680067))

(declare-fun m!2680069 () Bool)

(assert (=> b!2249086 m!2680069))

(assert (=> b!2249083 m!2680057))

(declare-fun m!2680071 () Bool)

(assert (=> b!2249083 m!2680071))

(assert (=> b!2249083 m!2680071))

(declare-fun m!2680073 () Bool)

(assert (=> b!2249083 m!2680073))

(assert (=> b!2249083 m!2680073))

(declare-fun m!2680075 () Bool)

(assert (=> b!2249083 m!2680075))

(assert (=> b!2249088 m!2680057))

(assert (=> b!2249088 m!2680071))

(assert (=> b!2249088 m!2680071))

(assert (=> b!2249088 m!2680073))

(assert (=> b!2249089 m!2680057))

(assert (=> b!2249089 m!2680071))

(assert (=> b!2249089 m!2680071))

(assert (=> b!2249089 m!2680073))

(assert (=> b!2249089 m!2680073))

(declare-fun m!2680077 () Bool)

(assert (=> b!2249089 m!2680077))

(assert (=> b!2248912 d!667239))

(declare-fun d!667247 () Bool)

(declare-fun lt!836150 () Bool)

(assert (=> d!667247 (= lt!836150 (select (content!3547 rules!1750) r!2363))))

(declare-fun e!1439239 () Bool)

(assert (=> d!667247 (= lt!836150 e!1439239)))

(declare-fun res!961068 () Bool)

(assert (=> d!667247 (=> (not res!961068) (not e!1439239))))

(assert (=> d!667247 (= res!961068 ((_ is Cons!26646) rules!1750))))

(assert (=> d!667247 (= (contains!4572 rules!1750 r!2363) lt!836150)))

(declare-fun b!2249090 () Bool)

(declare-fun e!1439238 () Bool)

(assert (=> b!2249090 (= e!1439239 e!1439238)))

(declare-fun res!961067 () Bool)

(assert (=> b!2249090 (=> res!961067 e!1439238)))

(assert (=> b!2249090 (= res!961067 (= (h!32047 rules!1750) r!2363))))

(declare-fun b!2249091 () Bool)

(assert (=> b!2249091 (= e!1439238 (contains!4572 (t!200588 rules!1750) r!2363))))

(assert (= (and d!667247 res!961068) b!2249090))

(assert (= (and b!2249090 (not res!961067)) b!2249091))

(assert (=> d!667247 m!2679993))

(declare-fun m!2680079 () Bool)

(assert (=> d!667247 m!2680079))

(declare-fun m!2680081 () Bool)

(assert (=> b!2249091 m!2680081))

(assert (=> b!2248902 d!667247))

(declare-fun d!667249 () Bool)

(declare-fun res!961071 () Bool)

(declare-fun e!1439242 () Bool)

(assert (=> d!667249 (=> (not res!961071) (not e!1439242))))

(declare-fun rulesValid!1547 (LexerInterface!3820 List!26740) Bool)

(assert (=> d!667249 (= res!961071 (rulesValid!1547 thiss!16613 rules!1750))))

(assert (=> d!667249 (= (rulesInvariant!3322 thiss!16613 rules!1750) e!1439242)))

(declare-fun b!2249094 () Bool)

(declare-datatypes ((List!26741 0))(
  ( (Nil!26647) (Cons!26647 (h!32048 String!29029) (t!200637 List!26741)) )
))
(declare-fun noDuplicateTag!1545 (LexerInterface!3820 List!26740 List!26741) Bool)

(assert (=> b!2249094 (= e!1439242 (noDuplicateTag!1545 thiss!16613 rules!1750 Nil!26647))))

(assert (= (and d!667249 res!961071) b!2249094))

(declare-fun m!2680083 () Bool)

(assert (=> d!667249 m!2680083))

(declare-fun m!2680085 () Bool)

(assert (=> b!2249094 m!2680085))

(assert (=> b!2248913 d!667249))

(declare-fun d!667251 () Bool)

(assert (=> d!667251 (= (inv!36170 (tag!4713 (h!32047 rules!1750))) (= (mod (str.len (value!134174 (tag!4713 (h!32047 rules!1750)))) 2) 0))))

(assert (=> b!2248924 d!667251))

(declare-fun d!667253 () Bool)

(declare-fun res!961072 () Bool)

(declare-fun e!1439245 () Bool)

(assert (=> d!667253 (=> (not res!961072) (not e!1439245))))

(assert (=> d!667253 (= res!961072 (semiInverseModEq!1703 (toChars!5816 (transformation!4223 (h!32047 rules!1750))) (toValue!5957 (transformation!4223 (h!32047 rules!1750)))))))

(assert (=> d!667253 (= (inv!36173 (transformation!4223 (h!32047 rules!1750))) e!1439245)))

(declare-fun b!2249099 () Bool)

(assert (=> b!2249099 (= e!1439245 (equivClasses!1622 (toChars!5816 (transformation!4223 (h!32047 rules!1750))) (toValue!5957 (transformation!4223 (h!32047 rules!1750)))))))

(assert (= (and d!667253 res!961072) b!2249099))

(declare-fun m!2680087 () Bool)

(assert (=> d!667253 m!2680087))

(declare-fun m!2680089 () Bool)

(assert (=> b!2249099 m!2680089))

(assert (=> b!2248924 d!667253))

(declare-fun d!667255 () Bool)

(declare-fun res!961073 () Bool)

(declare-fun e!1439246 () Bool)

(assert (=> d!667255 (=> (not res!961073) (not e!1439246))))

(assert (=> d!667255 (= res!961073 (validRegex!2455 (regex!4223 r!2363)))))

(assert (=> d!667255 (= (ruleValid!1315 thiss!16613 r!2363) e!1439246)))

(declare-fun b!2249100 () Bool)

(declare-fun res!961074 () Bool)

(assert (=> b!2249100 (=> (not res!961074) (not e!1439246))))

(assert (=> b!2249100 (= res!961074 (not (nullable!1801 (regex!4223 r!2363))))))

(declare-fun b!2249101 () Bool)

(assert (=> b!2249101 (= e!1439246 (not (= (tag!4713 r!2363) (String!29030 ""))))))

(assert (= (and d!667255 res!961073) b!2249100))

(assert (= (and b!2249100 res!961074) b!2249101))

(assert (=> d!667255 m!2680017))

(assert (=> b!2249100 m!2680003))

(assert (=> b!2248903 d!667255))

(declare-fun d!667257 () Bool)

(assert (=> d!667257 (ruleValid!1315 thiss!16613 r!2363)))

(declare-fun lt!836161 () Unit!39590)

(assert (=> d!667257 (= lt!836161 (choose!13164 thiss!16613 r!2363 rules!1750))))

(assert (=> d!667257 (contains!4572 rules!1750 r!2363)))

(assert (=> d!667257 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!722 thiss!16613 r!2363 rules!1750) lt!836161)))

(declare-fun bs!454949 () Bool)

(assert (= bs!454949 d!667257))

(assert (=> bs!454949 m!2679897))

(declare-fun m!2680091 () Bool)

(assert (=> bs!454949 m!2680091))

(assert (=> bs!454949 m!2679901))

(assert (=> b!2248903 d!667257))

(declare-fun b!2249124 () Bool)

(declare-fun e!1439257 () Bool)

(declare-fun e!1439258 () Bool)

(assert (=> b!2249124 (= e!1439257 e!1439258)))

(declare-fun res!961099 () Bool)

(assert (=> b!2249124 (=> (not res!961099) (not e!1439258))))

(assert (=> b!2249124 (= res!961099 (not ((_ is Nil!26644) input!1722)))))

(declare-fun d!667259 () Bool)

(declare-fun e!1439259 () Bool)

(assert (=> d!667259 e!1439259))

(declare-fun res!961097 () Bool)

(assert (=> d!667259 (=> res!961097 e!1439259)))

(declare-fun lt!836164 () Bool)

(assert (=> d!667259 (= res!961097 (not lt!836164))))

(assert (=> d!667259 (= lt!836164 e!1439257)))

(declare-fun res!961100 () Bool)

(assert (=> d!667259 (=> res!961100 e!1439257)))

(assert (=> d!667259 (= res!961100 ((_ is Nil!26644) otherP!12))))

(assert (=> d!667259 (= (isPrefix!2213 otherP!12 input!1722) lt!836164)))

(declare-fun b!2249127 () Bool)

(assert (=> b!2249127 (= e!1439259 (>= (size!20845 input!1722) (size!20845 otherP!12)))))

(declare-fun b!2249125 () Bool)

(declare-fun res!961098 () Bool)

(assert (=> b!2249125 (=> (not res!961098) (not e!1439258))))

(assert (=> b!2249125 (= res!961098 (= (head!4787 otherP!12) (head!4787 input!1722)))))

(declare-fun b!2249126 () Bool)

(assert (=> b!2249126 (= e!1439258 (isPrefix!2213 (tail!3244 otherP!12) (tail!3244 input!1722)))))

(assert (= (and d!667259 (not res!961100)) b!2249124))

(assert (= (and b!2249124 res!961099) b!2249125))

(assert (= (and b!2249125 res!961098) b!2249126))

(assert (= (and d!667259 (not res!961097)) b!2249127))

(assert (=> b!2249127 m!2680069))

(assert (=> b!2249127 m!2679895))

(declare-fun m!2680093 () Bool)

(assert (=> b!2249125 m!2680093))

(declare-fun m!2680095 () Bool)

(assert (=> b!2249125 m!2680095))

(declare-fun m!2680097 () Bool)

(assert (=> b!2249126 m!2680097))

(declare-fun m!2680099 () Bool)

(assert (=> b!2249126 m!2680099))

(assert (=> b!2249126 m!2680097))

(assert (=> b!2249126 m!2680099))

(declare-fun m!2680101 () Bool)

(assert (=> b!2249126 m!2680101))

(assert (=> b!2248914 d!667259))

(declare-fun e!1439262 () Bool)

(assert (=> b!2248920 (= tp!710403 e!1439262)))

(declare-fun b!2249140 () Bool)

(declare-fun tp!710437 () Bool)

(assert (=> b!2249140 (= e!1439262 tp!710437)))

(declare-fun b!2249141 () Bool)

(declare-fun tp!710434 () Bool)

(declare-fun tp!710438 () Bool)

(assert (=> b!2249141 (= e!1439262 (and tp!710434 tp!710438))))

(declare-fun b!2249139 () Bool)

(declare-fun tp!710436 () Bool)

(declare-fun tp!710435 () Bool)

(assert (=> b!2249139 (= e!1439262 (and tp!710436 tp!710435))))

(declare-fun b!2249138 () Bool)

(assert (=> b!2249138 (= e!1439262 tp_is_empty!10363)))

(assert (= (and b!2248920 ((_ is ElementMatch!6571) (regex!4223 (rule!6523 (h!32046 tokens!456))))) b!2249138))

(assert (= (and b!2248920 ((_ is Concat!10957) (regex!4223 (rule!6523 (h!32046 tokens!456))))) b!2249139))

(assert (= (and b!2248920 ((_ is Star!6571) (regex!4223 (rule!6523 (h!32046 tokens!456))))) b!2249140))

(assert (= (and b!2248920 ((_ is Union!6571) (regex!4223 (rule!6523 (h!32046 tokens!456))))) b!2249141))

(declare-fun b!2249155 () Bool)

(declare-fun e!1439268 () Bool)

(declare-fun tp!710441 () Bool)

(assert (=> b!2249155 (= e!1439268 (and tp_is_empty!10363 tp!710441))))

(assert (=> b!2248899 (= tp!710411 e!1439268)))

(assert (= (and b!2248899 ((_ is Cons!26644) (originalCharacters!4993 (h!32046 tokens!456)))) b!2249155))

(declare-fun b!2249169 () Bool)

(declare-fun b_free!65837 () Bool)

(declare-fun b_next!66541 () Bool)

(assert (=> b!2249169 (= b_free!65837 (not b_next!66541))))

(declare-fun tp!710454 () Bool)

(declare-fun b_and!176081 () Bool)

(assert (=> b!2249169 (= tp!710454 b_and!176081)))

(declare-fun b_free!65839 () Bool)

(declare-fun b_next!66543 () Bool)

(assert (=> b!2249169 (= b_free!65839 (not b_next!66543))))

(declare-fun t!200606 () Bool)

(declare-fun tb!133199 () Bool)

(assert (=> (and b!2249169 (= (toChars!5816 (transformation!4223 (rule!6523 (h!32046 (t!200587 tokens!456))))) (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456))))) t!200606) tb!133199))

(declare-fun result!162378 () Bool)

(assert (= result!162378 result!162354))

(assert (=> b!2248947 t!200606))

(declare-fun t!200608 () Bool)

(declare-fun tb!133201 () Bool)

(assert (=> (and b!2249169 (= (toChars!5816 (transformation!4223 (rule!6523 (h!32046 (t!200587 tokens!456))))) (toChars!5816 (transformation!4223 (rule!6523 (head!4786 tokens!456))))) t!200608) tb!133201))

(declare-fun result!162380 () Bool)

(assert (= result!162380 result!162364))

(assert (=> d!667203 t!200608))

(declare-fun b_and!176083 () Bool)

(declare-fun tp!710453 () Bool)

(assert (=> b!2249169 (= tp!710453 (and (=> t!200606 result!162378) (=> t!200608 result!162380) b_and!176083))))

(declare-fun e!1439282 () Bool)

(declare-fun tp!710452 () Bool)

(declare-fun b!2249167 () Bool)

(declare-fun e!1439285 () Bool)

(assert (=> b!2249167 (= e!1439285 (and (inv!21 (value!134175 (h!32046 (t!200587 tokens!456)))) e!1439282 tp!710452))))

(declare-fun b!2249168 () Bool)

(declare-fun e!1439281 () Bool)

(declare-fun tp!710455 () Bool)

(assert (=> b!2249168 (= e!1439282 (and tp!710455 (inv!36170 (tag!4713 (rule!6523 (h!32046 (t!200587 tokens!456))))) (inv!36173 (transformation!4223 (rule!6523 (h!32046 (t!200587 tokens!456))))) e!1439281))))

(assert (=> b!2249169 (= e!1439281 (and tp!710454 tp!710453))))

(declare-fun e!1439286 () Bool)

(assert (=> b!2248910 (= tp!710410 e!1439286)))

(declare-fun tp!710456 () Bool)

(declare-fun b!2249166 () Bool)

(assert (=> b!2249166 (= e!1439286 (and (inv!36174 (h!32046 (t!200587 tokens!456))) e!1439285 tp!710456))))

(assert (= b!2249168 b!2249169))

(assert (= b!2249167 b!2249168))

(assert (= b!2249166 b!2249167))

(assert (= (and b!2248910 ((_ is Cons!26645) (t!200587 tokens!456))) b!2249166))

(declare-fun m!2680137 () Bool)

(assert (=> b!2249167 m!2680137))

(declare-fun m!2680139 () Bool)

(assert (=> b!2249168 m!2680139))

(declare-fun m!2680141 () Bool)

(assert (=> b!2249168 m!2680141))

(declare-fun m!2680143 () Bool)

(assert (=> b!2249166 m!2680143))

(declare-fun b!2249174 () Bool)

(declare-fun e!1439289 () Bool)

(declare-fun tp!710457 () Bool)

(assert (=> b!2249174 (= e!1439289 (and tp_is_empty!10363 tp!710457))))

(assert (=> b!2248921 (= tp!710413 e!1439289)))

(assert (= (and b!2248921 ((_ is Cons!26644) (t!200586 suffix!886))) b!2249174))

(declare-fun b!2249187 () Bool)

(declare-fun b_free!65841 () Bool)

(declare-fun b_next!66545 () Bool)

(assert (=> b!2249187 (= b_free!65841 (not b_next!66545))))

(declare-fun tp!710469 () Bool)

(declare-fun b_and!176085 () Bool)

(assert (=> b!2249187 (= tp!710469 b_and!176085)))

(declare-fun b_free!65843 () Bool)

(declare-fun b_next!66547 () Bool)

(assert (=> b!2249187 (= b_free!65843 (not b_next!66547))))

(declare-fun tb!133203 () Bool)

(declare-fun t!200610 () Bool)

(assert (=> (and b!2249187 (= (toChars!5816 (transformation!4223 (h!32047 (t!200588 rules!1750)))) (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456))))) t!200610) tb!133203))

(declare-fun result!162384 () Bool)

(assert (= result!162384 result!162354))

(assert (=> b!2248947 t!200610))

(declare-fun t!200612 () Bool)

(declare-fun tb!133205 () Bool)

(assert (=> (and b!2249187 (= (toChars!5816 (transformation!4223 (h!32047 (t!200588 rules!1750)))) (toChars!5816 (transformation!4223 (rule!6523 (head!4786 tokens!456))))) t!200612) tb!133205))

(declare-fun result!162386 () Bool)

(assert (= result!162386 result!162364))

(assert (=> d!667203 t!200612))

(declare-fun tp!710467 () Bool)

(declare-fun b_and!176087 () Bool)

(assert (=> b!2249187 (= tp!710467 (and (=> t!200610 result!162384) (=> t!200612 result!162386) b_and!176087))))

(declare-fun e!1439300 () Bool)

(assert (=> b!2249187 (= e!1439300 (and tp!710469 tp!710467))))

(declare-fun b!2249186 () Bool)

(declare-fun e!1439301 () Bool)

(declare-fun tp!710468 () Bool)

(assert (=> b!2249186 (= e!1439301 (and tp!710468 (inv!36170 (tag!4713 (h!32047 (t!200588 rules!1750)))) (inv!36173 (transformation!4223 (h!32047 (t!200588 rules!1750)))) e!1439300))))

(declare-fun b!2249185 () Bool)

(declare-fun e!1439302 () Bool)

(declare-fun tp!710466 () Bool)

(assert (=> b!2249185 (= e!1439302 (and e!1439301 tp!710466))))

(assert (=> b!2248918 (= tp!710404 e!1439302)))

(assert (= b!2249186 b!2249187))

(assert (= b!2249185 b!2249186))

(assert (= (and b!2248918 ((_ is Cons!26646) (t!200588 rules!1750))) b!2249185))

(declare-fun m!2680149 () Bool)

(assert (=> b!2249186 m!2680149))

(declare-fun m!2680151 () Bool)

(assert (=> b!2249186 m!2680151))

(declare-fun e!1439303 () Bool)

(assert (=> b!2248909 (= tp!710414 e!1439303)))

(declare-fun b!2249190 () Bool)

(declare-fun tp!710473 () Bool)

(assert (=> b!2249190 (= e!1439303 tp!710473)))

(declare-fun b!2249191 () Bool)

(declare-fun tp!710470 () Bool)

(declare-fun tp!710474 () Bool)

(assert (=> b!2249191 (= e!1439303 (and tp!710470 tp!710474))))

(declare-fun b!2249189 () Bool)

(declare-fun tp!710472 () Bool)

(declare-fun tp!710471 () Bool)

(assert (=> b!2249189 (= e!1439303 (and tp!710472 tp!710471))))

(declare-fun b!2249188 () Bool)

(assert (=> b!2249188 (= e!1439303 tp_is_empty!10363)))

(assert (= (and b!2248909 ((_ is ElementMatch!6571) (regex!4223 otherR!12))) b!2249188))

(assert (= (and b!2248909 ((_ is Concat!10957) (regex!4223 otherR!12))) b!2249189))

(assert (= (and b!2248909 ((_ is Star!6571) (regex!4223 otherR!12))) b!2249190))

(assert (= (and b!2248909 ((_ is Union!6571) (regex!4223 otherR!12))) b!2249191))

(declare-fun e!1439304 () Bool)

(assert (=> b!2248905 (= tp!710409 e!1439304)))

(declare-fun b!2249194 () Bool)

(declare-fun tp!710478 () Bool)

(assert (=> b!2249194 (= e!1439304 tp!710478)))

(declare-fun b!2249195 () Bool)

(declare-fun tp!710475 () Bool)

(declare-fun tp!710479 () Bool)

(assert (=> b!2249195 (= e!1439304 (and tp!710475 tp!710479))))

(declare-fun b!2249193 () Bool)

(declare-fun tp!710477 () Bool)

(declare-fun tp!710476 () Bool)

(assert (=> b!2249193 (= e!1439304 (and tp!710477 tp!710476))))

(declare-fun b!2249192 () Bool)

(assert (=> b!2249192 (= e!1439304 tp_is_empty!10363)))

(assert (= (and b!2248905 ((_ is ElementMatch!6571) (regex!4223 r!2363))) b!2249192))

(assert (= (and b!2248905 ((_ is Concat!10957) (regex!4223 r!2363))) b!2249193))

(assert (= (and b!2248905 ((_ is Star!6571) (regex!4223 r!2363))) b!2249194))

(assert (= (and b!2248905 ((_ is Union!6571) (regex!4223 r!2363))) b!2249195))

(declare-fun b!2249196 () Bool)

(declare-fun e!1439305 () Bool)

(declare-fun tp!710480 () Bool)

(assert (=> b!2249196 (= e!1439305 (and tp_is_empty!10363 tp!710480))))

(assert (=> b!2248895 (= tp!710402 e!1439305)))

(assert (= (and b!2248895 ((_ is Cons!26644) (t!200586 otherP!12))) b!2249196))

(declare-fun b!2249197 () Bool)

(declare-fun e!1439306 () Bool)

(declare-fun tp!710481 () Bool)

(assert (=> b!2249197 (= e!1439306 (and tp_is_empty!10363 tp!710481))))

(assert (=> b!2248923 (= tp!710405 e!1439306)))

(assert (= (and b!2248923 ((_ is Cons!26644) (t!200586 input!1722))) b!2249197))

(declare-fun e!1439307 () Bool)

(assert (=> b!2248924 (= tp!710407 e!1439307)))

(declare-fun b!2249200 () Bool)

(declare-fun tp!710485 () Bool)

(assert (=> b!2249200 (= e!1439307 tp!710485)))

(declare-fun b!2249201 () Bool)

(declare-fun tp!710482 () Bool)

(declare-fun tp!710486 () Bool)

(assert (=> b!2249201 (= e!1439307 (and tp!710482 tp!710486))))

(declare-fun b!2249199 () Bool)

(declare-fun tp!710484 () Bool)

(declare-fun tp!710483 () Bool)

(assert (=> b!2249199 (= e!1439307 (and tp!710484 tp!710483))))

(declare-fun b!2249198 () Bool)

(assert (=> b!2249198 (= e!1439307 tp_is_empty!10363)))

(assert (= (and b!2248924 ((_ is ElementMatch!6571) (regex!4223 (h!32047 rules!1750)))) b!2249198))

(assert (= (and b!2248924 ((_ is Concat!10957) (regex!4223 (h!32047 rules!1750)))) b!2249199))

(assert (= (and b!2248924 ((_ is Star!6571) (regex!4223 (h!32047 rules!1750)))) b!2249200))

(assert (= (and b!2248924 ((_ is Union!6571) (regex!4223 (h!32047 rules!1750)))) b!2249201))

(declare-fun b_lambda!71893 () Bool)

(assert (= b_lambda!71889 (or (and b!2249169 b_free!65839 (= (toChars!5816 (transformation!4223 (rule!6523 (h!32046 (t!200587 tokens!456))))) (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456)))))) (and b!2248915 b_free!65827 (= (toChars!5816 (transformation!4223 otherR!12)) (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456)))))) (and b!2248916 b_free!65823) (and b!2248906 b_free!65835 (= (toChars!5816 (transformation!4223 (h!32047 rules!1750))) (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456)))))) (and b!2249187 b_free!65843 (= (toChars!5816 (transformation!4223 (h!32047 (t!200588 rules!1750)))) (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456)))))) (and b!2248908 b_free!65831 (= (toChars!5816 (transformation!4223 r!2363)) (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456)))))) b_lambda!71893)))

(check-sat (not b!2248995) (not d!667233) (not b!2248993) (not b!2249085) (not b!2249005) (not d!667209) (not b!2249082) (not b!2248996) (not b_next!66529) b_and!176075 tp_is_empty!10363 (not b!2249034) (not b!2249139) (not d!667195) (not d!667203) (not d!667247) (not b!2249094) (not b!2249089) (not b!2248968) (not b_next!66531) (not b!2248948) (not d!667239) b_and!176049 (not b_next!66527) (not d!667231) (not d!667219) (not b!2249035) (not b!2249125) (not b!2249099) (not b!2249155) (not b_lambda!71891) (not b_next!66525) (not b!2249193) (not b!2249185) (not b!2249167) (not b!2249042) (not b!2249086) (not b!2249190) (not b!2249087) (not b_next!66541) (not d!667211) (not d!667255) (not b!2249100) (not b!2248982) (not bm!135503) (not b!2248974) (not b_lambda!71893) (not b!2249200) (not d!667183) (not d!667191) (not b!2248994) (not d!667187) b_and!176081 b_and!176083 (not b!2249196) (not tb!133191) (not b_next!66543) (not b!2249186) b_and!176077 b_and!176053 (not b!2249041) (not bm!135500) (not b!2249197) (not b!2249081) (not b_next!66537) (not d!667227) (not b!2249194) (not b!2248976) b_and!176079 (not b_next!66533) (not d!667237) (not b!2248941) (not d!667235) (not d!667193) (not d!667225) (not b!2248964) (not d!667189) b_and!176057 (not b_next!66547) (not b_next!66545) (not b_next!66535) (not b!2249189) (not b!2249140) (not b!2249004) (not b_next!66539) (not b!2248940) (not b!2249201) (not d!667207) (not b!2249083) (not b!2249141) (not b!2249168) (not b!2249126) (not b!2249088) (not b!2248927) (not b!2249039) (not b!2248953) (not b!2248998) b_and!176073 (not d!667201) (not b!2249091) (not b!2249044) (not b!2248947) b_and!176085 b_and!176087 (not b!2249191) (not d!667249) (not b!2249166) (not b!2249195) (not b!2249127) (not b!2248942) (not d!667257) (not tb!133183) (not b!2249199) b_and!176061 (not b!2249174) (not d!667253))
(check-sat (not b_next!66529) b_and!176075 (not b_next!66525) (not b_next!66541) b_and!176081 (not b_next!66537) b_and!176057 b_and!176073 b_and!176085 b_and!176087 b_and!176061 (not b_next!66531) b_and!176049 (not b_next!66527) b_and!176083 (not b_next!66543) b_and!176077 b_and!176053 b_and!176079 (not b_next!66533) (not b_next!66547) (not b_next!66545) (not b_next!66535) (not b_next!66539))
(get-model)

(declare-fun d!667317 () Bool)

(declare-fun lt!836197 () Int)

(assert (=> d!667317 (= lt!836197 (size!20845 (list!10215 (_2!15578 lt!836125))))))

(assert (=> d!667317 (= lt!836197 (size!20846 (c!357684 (_2!15578 lt!836125))))))

(assert (=> d!667317 (= (size!20844 (_2!15578 lt!836125)) lt!836197)))

(declare-fun bs!454954 () Bool)

(assert (= bs!454954 d!667317))

(assert (=> bs!454954 m!2679971))

(assert (=> bs!454954 m!2679971))

(declare-fun m!2680263 () Bool)

(assert (=> bs!454954 m!2680263))

(declare-fun m!2680265 () Bool)

(assert (=> bs!454954 m!2680265))

(assert (=> b!2248995 d!667317))

(declare-fun d!667319 () Bool)

(declare-fun lt!836198 () Int)

(assert (=> d!667319 (= lt!836198 (size!20845 (list!10215 (seqFromList!2927 input!1722))))))

(assert (=> d!667319 (= lt!836198 (size!20846 (c!357684 (seqFromList!2927 input!1722))))))

(assert (=> d!667319 (= (size!20844 (seqFromList!2927 input!1722)) lt!836198)))

(declare-fun bs!454955 () Bool)

(assert (= bs!454955 d!667319))

(assert (=> bs!454955 m!2679907))

(assert (=> bs!454955 m!2679973))

(assert (=> bs!454955 m!2679973))

(declare-fun m!2680267 () Bool)

(assert (=> bs!454955 m!2680267))

(declare-fun m!2680269 () Bool)

(assert (=> bs!454955 m!2680269))

(assert (=> b!2248995 d!667319))

(declare-fun d!667321 () Bool)

(assert (=> d!667321 true))

(declare-fun order!14903 () Int)

(declare-fun lambda!85192 () Int)

(declare-fun order!14901 () Int)

(declare-fun dynLambda!11581 (Int Int) Int)

(declare-fun dynLambda!11582 (Int Int) Int)

(assert (=> d!667321 (< (dynLambda!11581 order!14901 (toValue!5957 (transformation!4223 r!2363))) (dynLambda!11582 order!14903 lambda!85192))))

(declare-fun Forall2!679 (Int) Bool)

(assert (=> d!667321 (= (equivClasses!1622 (toChars!5816 (transformation!4223 r!2363)) (toValue!5957 (transformation!4223 r!2363))) (Forall2!679 lambda!85192))))

(declare-fun bs!454956 () Bool)

(assert (= bs!454956 d!667321))

(declare-fun m!2680271 () Bool)

(assert (=> bs!454956 m!2680271))

(assert (=> b!2249005 d!667321))

(declare-fun d!667323 () Bool)

(declare-fun c!357753 () Bool)

(assert (=> d!667323 (= c!357753 ((_ is Nil!26646) rules!1750))))

(declare-fun e!1439430 () (InoxSet Rule!8246))

(assert (=> d!667323 (= (content!3547 rules!1750) e!1439430)))

(declare-fun b!2249391 () Bool)

(assert (=> b!2249391 (= e!1439430 ((as const (Array Rule!8246 Bool)) false))))

(declare-fun b!2249392 () Bool)

(assert (=> b!2249392 (= e!1439430 ((_ map or) (store ((as const (Array Rule!8246 Bool)) false) (h!32047 rules!1750) true) (content!3547 (t!200588 rules!1750))))))

(assert (= (and d!667323 c!357753) b!2249391))

(assert (= (and d!667323 (not c!357753)) b!2249392))

(declare-fun m!2680273 () Bool)

(assert (=> b!2249392 m!2680273))

(declare-fun m!2680275 () Bool)

(assert (=> b!2249392 m!2680275))

(assert (=> d!667227 d!667323))

(declare-fun d!667325 () Bool)

(declare-fun c!357756 () Bool)

(assert (=> d!667325 (= c!357756 ((_ is Node!8594) (c!357684 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (head!4786 tokens!456)))) (value!134175 (head!4786 tokens!456))))))))

(declare-fun e!1439435 () Bool)

(assert (=> d!667325 (= (inv!36175 (c!357684 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (head!4786 tokens!456)))) (value!134175 (head!4786 tokens!456))))) e!1439435)))

(declare-fun b!2249399 () Bool)

(declare-fun inv!36179 (Conc!8594) Bool)

(assert (=> b!2249399 (= e!1439435 (inv!36179 (c!357684 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (head!4786 tokens!456)))) (value!134175 (head!4786 tokens!456))))))))

(declare-fun b!2249400 () Bool)

(declare-fun e!1439436 () Bool)

(assert (=> b!2249400 (= e!1439435 e!1439436)))

(declare-fun res!961189 () Bool)

(assert (=> b!2249400 (= res!961189 (not ((_ is Leaf!12691) (c!357684 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (head!4786 tokens!456)))) (value!134175 (head!4786 tokens!456)))))))))

(assert (=> b!2249400 (=> res!961189 e!1439436)))

(declare-fun b!2249401 () Bool)

(declare-fun inv!36180 (Conc!8594) Bool)

(assert (=> b!2249401 (= e!1439436 (inv!36180 (c!357684 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (head!4786 tokens!456)))) (value!134175 (head!4786 tokens!456))))))))

(assert (= (and d!667325 c!357756) b!2249399))

(assert (= (and d!667325 (not c!357756)) b!2249400))

(assert (= (and b!2249400 (not res!961189)) b!2249401))

(declare-fun m!2680277 () Bool)

(assert (=> b!2249399 m!2680277))

(declare-fun m!2680279 () Bool)

(assert (=> b!2249401 m!2680279))

(assert (=> b!2248976 d!667325))

(declare-fun d!667327 () Bool)

(assert (=> d!667327 true))

(declare-fun order!14905 () Int)

(declare-fun lambda!85195 () Int)

(declare-fun order!14907 () Int)

(declare-fun dynLambda!11583 (Int Int) Int)

(declare-fun dynLambda!11584 (Int Int) Int)

(assert (=> d!667327 (< (dynLambda!11583 order!14905 (toChars!5816 (transformation!4223 (h!32047 rules!1750)))) (dynLambda!11584 order!14907 lambda!85195))))

(assert (=> d!667327 true))

(assert (=> d!667327 (< (dynLambda!11581 order!14901 (toValue!5957 (transformation!4223 (h!32047 rules!1750)))) (dynLambda!11584 order!14907 lambda!85195))))

(declare-fun Forall!1062 (Int) Bool)

(assert (=> d!667327 (= (semiInverseModEq!1703 (toChars!5816 (transformation!4223 (h!32047 rules!1750))) (toValue!5957 (transformation!4223 (h!32047 rules!1750)))) (Forall!1062 lambda!85195))))

(declare-fun bs!454957 () Bool)

(assert (= bs!454957 d!667327))

(declare-fun m!2680281 () Bool)

(assert (=> bs!454957 m!2680281))

(assert (=> d!667253 d!667327))

(declare-fun d!667329 () Bool)

(declare-fun charsToInt!0 (List!26737) (_ BitVec 32))

(assert (=> d!667329 (= (inv!16 (value!134175 (h!32046 tokens!456))) (= (charsToInt!0 (text!31142 (value!134175 (h!32046 tokens!456)))) (value!134166 (value!134175 (h!32046 tokens!456)))))))

(declare-fun bs!454958 () Bool)

(assert (= bs!454958 d!667329))

(declare-fun m!2680283 () Bool)

(assert (=> bs!454958 m!2680283))

(assert (=> b!2248941 d!667329))

(declare-fun d!667331 () Bool)

(assert (=> d!667331 (= (isEmpty!15017 (list!10215 (charsOf!2611 (head!4786 tokens!456)))) ((_ is Nil!26644) (list!10215 (charsOf!2611 (head!4786 tokens!456)))))))

(assert (=> bm!135500 d!667331))

(declare-fun d!667333 () Bool)

(assert (=> d!667333 true))

(declare-fun lt!836201 () Bool)

(assert (=> d!667333 (= lt!836201 (rulesValidInductive!1472 thiss!16613 rules!1750))))

(declare-fun lambda!85198 () Int)

(declare-fun forall!5466 (List!26740 Int) Bool)

(assert (=> d!667333 (= lt!836201 (forall!5466 rules!1750 lambda!85198))))

(assert (=> d!667333 (= (rulesValid!1547 thiss!16613 rules!1750) lt!836201)))

(declare-fun bs!454959 () Bool)

(assert (= bs!454959 d!667333))

(assert (=> bs!454959 m!2680053))

(declare-fun m!2680285 () Bool)

(assert (=> bs!454959 m!2680285))

(assert (=> d!667249 d!667333))

(declare-fun d!667335 () Bool)

(declare-fun lt!836202 () Bool)

(assert (=> d!667335 (= lt!836202 (select (content!3547 (t!200588 rules!1750)) r!2363))))

(declare-fun e!1439438 () Bool)

(assert (=> d!667335 (= lt!836202 e!1439438)))

(declare-fun res!961191 () Bool)

(assert (=> d!667335 (=> (not res!961191) (not e!1439438))))

(assert (=> d!667335 (= res!961191 ((_ is Cons!26646) (t!200588 rules!1750)))))

(assert (=> d!667335 (= (contains!4572 (t!200588 rules!1750) r!2363) lt!836202)))

(declare-fun b!2249408 () Bool)

(declare-fun e!1439437 () Bool)

(assert (=> b!2249408 (= e!1439438 e!1439437)))

(declare-fun res!961190 () Bool)

(assert (=> b!2249408 (=> res!961190 e!1439437)))

(assert (=> b!2249408 (= res!961190 (= (h!32047 (t!200588 rules!1750)) r!2363))))

(declare-fun b!2249409 () Bool)

(assert (=> b!2249409 (= e!1439437 (contains!4572 (t!200588 (t!200588 rules!1750)) r!2363))))

(assert (= (and d!667335 res!961191) b!2249408))

(assert (= (and b!2249408 (not res!961190)) b!2249409))

(assert (=> d!667335 m!2680275))

(declare-fun m!2680287 () Bool)

(assert (=> d!667335 m!2680287))

(declare-fun m!2680289 () Bool)

(assert (=> b!2249409 m!2680289))

(assert (=> b!2249091 d!667335))

(declare-fun d!667337 () Bool)

(assert (=> d!667337 (= (list!10215 (charsOf!2611 (_1!15577 (get!8041 lt!836149)))) (list!10217 (c!357684 (charsOf!2611 (_1!15577 (get!8041 lt!836149))))))))

(declare-fun bs!454960 () Bool)

(assert (= bs!454960 d!667337))

(declare-fun m!2680291 () Bool)

(assert (=> bs!454960 m!2680291))

(assert (=> b!2249088 d!667337))

(declare-fun d!667339 () Bool)

(declare-fun lt!836203 () BalanceConc!16916)

(assert (=> d!667339 (= (list!10215 lt!836203) (originalCharacters!4993 (_1!15577 (get!8041 lt!836149))))))

(assert (=> d!667339 (= lt!836203 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (_1!15577 (get!8041 lt!836149))))) (value!134175 (_1!15577 (get!8041 lt!836149)))))))

(assert (=> d!667339 (= (charsOf!2611 (_1!15577 (get!8041 lt!836149))) lt!836203)))

(declare-fun b_lambda!71901 () Bool)

(assert (=> (not b_lambda!71901) (not d!667339)))

(declare-fun tb!133231 () Bool)

(declare-fun t!200640 () Bool)

(assert (=> (and b!2249169 (= (toChars!5816 (transformation!4223 (rule!6523 (h!32046 (t!200587 tokens!456))))) (toChars!5816 (transformation!4223 (rule!6523 (_1!15577 (get!8041 lt!836149)))))) t!200640) tb!133231))

(declare-fun b!2249410 () Bool)

(declare-fun e!1439439 () Bool)

(declare-fun tp!710554 () Bool)

(assert (=> b!2249410 (= e!1439439 (and (inv!36175 (c!357684 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (_1!15577 (get!8041 lt!836149))))) (value!134175 (_1!15577 (get!8041 lt!836149)))))) tp!710554))))

(declare-fun result!162422 () Bool)

(assert (=> tb!133231 (= result!162422 (and (inv!36176 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (_1!15577 (get!8041 lt!836149))))) (value!134175 (_1!15577 (get!8041 lt!836149))))) e!1439439))))

(assert (= tb!133231 b!2249410))

(declare-fun m!2680293 () Bool)

(assert (=> b!2249410 m!2680293))

(declare-fun m!2680295 () Bool)

(assert (=> tb!133231 m!2680295))

(assert (=> d!667339 t!200640))

(declare-fun b_and!176113 () Bool)

(assert (= b_and!176083 (and (=> t!200640 result!162422) b_and!176113)))

(declare-fun t!200642 () Bool)

(declare-fun tb!133233 () Bool)

(assert (=> (and b!2248916 (= (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456)))) (toChars!5816 (transformation!4223 (rule!6523 (_1!15577 (get!8041 lt!836149)))))) t!200642) tb!133233))

(declare-fun result!162424 () Bool)

(assert (= result!162424 result!162422))

(assert (=> d!667339 t!200642))

(declare-fun b_and!176115 () Bool)

(assert (= b_and!176073 (and (=> t!200642 result!162424) b_and!176115)))

(declare-fun t!200644 () Bool)

(declare-fun tb!133235 () Bool)

(assert (=> (and b!2248908 (= (toChars!5816 (transformation!4223 r!2363)) (toChars!5816 (transformation!4223 (rule!6523 (_1!15577 (get!8041 lt!836149)))))) t!200644) tb!133235))

(declare-fun result!162426 () Bool)

(assert (= result!162426 result!162422))

(assert (=> d!667339 t!200644))

(declare-fun b_and!176117 () Bool)

(assert (= b_and!176077 (and (=> t!200644 result!162426) b_and!176117)))

(declare-fun t!200646 () Bool)

(declare-fun tb!133237 () Bool)

(assert (=> (and b!2249187 (= (toChars!5816 (transformation!4223 (h!32047 (t!200588 rules!1750)))) (toChars!5816 (transformation!4223 (rule!6523 (_1!15577 (get!8041 lt!836149)))))) t!200646) tb!133237))

(declare-fun result!162428 () Bool)

(assert (= result!162428 result!162422))

(assert (=> d!667339 t!200646))

(declare-fun b_and!176119 () Bool)

(assert (= b_and!176087 (and (=> t!200646 result!162428) b_and!176119)))

(declare-fun t!200648 () Bool)

(declare-fun tb!133239 () Bool)

(assert (=> (and b!2248906 (= (toChars!5816 (transformation!4223 (h!32047 rules!1750))) (toChars!5816 (transformation!4223 (rule!6523 (_1!15577 (get!8041 lt!836149)))))) t!200648) tb!133239))

(declare-fun result!162430 () Bool)

(assert (= result!162430 result!162422))

(assert (=> d!667339 t!200648))

(declare-fun b_and!176121 () Bool)

(assert (= b_and!176079 (and (=> t!200648 result!162430) b_and!176121)))

(declare-fun tb!133241 () Bool)

(declare-fun t!200650 () Bool)

(assert (=> (and b!2248915 (= (toChars!5816 (transformation!4223 otherR!12)) (toChars!5816 (transformation!4223 (rule!6523 (_1!15577 (get!8041 lt!836149)))))) t!200650) tb!133241))

(declare-fun result!162432 () Bool)

(assert (= result!162432 result!162422))

(assert (=> d!667339 t!200650))

(declare-fun b_and!176123 () Bool)

(assert (= b_and!176075 (and (=> t!200650 result!162432) b_and!176123)))

(declare-fun m!2680297 () Bool)

(assert (=> d!667339 m!2680297))

(declare-fun m!2680299 () Bool)

(assert (=> d!667339 m!2680299))

(assert (=> b!2249088 d!667339))

(declare-fun d!667341 () Bool)

(assert (=> d!667341 (= (get!8041 lt!836149) (v!30211 lt!836149))))

(assert (=> b!2249088 d!667341))

(declare-fun d!667343 () Bool)

(assert (=> d!667343 (= (head!4787 (list!10215 (charsOf!2611 (head!4786 tokens!456)))) (h!32045 (list!10215 (charsOf!2611 (head!4786 tokens!456)))))))

(assert (=> b!2249034 d!667343))

(declare-fun d!667345 () Bool)

(declare-fun lt!836206 () Bool)

(assert (=> d!667345 (= lt!836206 (isEmpty!15016 (list!10214 (_1!15578 lt!836125))))))

(declare-fun isEmpty!15023 (Conc!8595) Bool)

(assert (=> d!667345 (= lt!836206 (isEmpty!15023 (c!357686 (_1!15578 lt!836125))))))

(assert (=> d!667345 (= (isEmpty!15018 (_1!15578 lt!836125)) lt!836206)))

(declare-fun bs!454961 () Bool)

(assert (= bs!454961 d!667345))

(assert (=> bs!454961 m!2679981))

(assert (=> bs!454961 m!2679981))

(declare-fun m!2680301 () Bool)

(assert (=> bs!454961 m!2680301))

(declare-fun m!2680303 () Bool)

(assert (=> bs!454961 m!2680303))

(assert (=> b!2248993 d!667345))

(declare-fun bs!454962 () Bool)

(declare-fun d!667347 () Bool)

(assert (= bs!454962 (and d!667347 d!667321)))

(declare-fun lambda!85199 () Int)

(assert (=> bs!454962 (= (= (toValue!5957 (transformation!4223 otherR!12)) (toValue!5957 (transformation!4223 r!2363))) (= lambda!85199 lambda!85192))))

(assert (=> d!667347 true))

(assert (=> d!667347 (< (dynLambda!11581 order!14901 (toValue!5957 (transformation!4223 otherR!12))) (dynLambda!11582 order!14903 lambda!85199))))

(assert (=> d!667347 (= (equivClasses!1622 (toChars!5816 (transformation!4223 otherR!12)) (toValue!5957 (transformation!4223 otherR!12))) (Forall2!679 lambda!85199))))

(declare-fun bs!454963 () Bool)

(assert (= bs!454963 d!667347))

(declare-fun m!2680305 () Bool)

(assert (=> bs!454963 m!2680305))

(assert (=> b!2248998 d!667347))

(declare-fun d!667349 () Bool)

(declare-fun nullableFct!424 (Regex!6571) Bool)

(assert (=> d!667349 (= (nullable!1801 (regex!4223 r!2363)) (nullableFct!424 (regex!4223 r!2363)))))

(declare-fun bs!454964 () Bool)

(assert (= bs!454964 d!667349))

(declare-fun m!2680307 () Bool)

(assert (=> bs!454964 m!2680307))

(assert (=> b!2249100 d!667349))

(declare-fun b!2249411 () Bool)

(declare-fun e!1439442 () Bool)

(declare-fun e!1439440 () Bool)

(assert (=> b!2249411 (= e!1439442 e!1439440)))

(declare-fun c!357757 () Bool)

(assert (=> b!2249411 (= c!357757 ((_ is IntegerValue!13156) (value!134175 (h!32046 (t!200587 tokens!456)))))))

(declare-fun b!2249412 () Bool)

(declare-fun res!961192 () Bool)

(declare-fun e!1439441 () Bool)

(assert (=> b!2249412 (=> res!961192 e!1439441)))

(assert (=> b!2249412 (= res!961192 (not ((_ is IntegerValue!13157) (value!134175 (h!32046 (t!200587 tokens!456))))))))

(assert (=> b!2249412 (= e!1439440 e!1439441)))

(declare-fun b!2249413 () Bool)

(assert (=> b!2249413 (= e!1439441 (inv!15 (value!134175 (h!32046 (t!200587 tokens!456)))))))

(declare-fun b!2249414 () Bool)

(assert (=> b!2249414 (= e!1439442 (inv!16 (value!134175 (h!32046 (t!200587 tokens!456)))))))

(declare-fun b!2249415 () Bool)

(assert (=> b!2249415 (= e!1439440 (inv!17 (value!134175 (h!32046 (t!200587 tokens!456)))))))

(declare-fun d!667351 () Bool)

(declare-fun c!357758 () Bool)

(assert (=> d!667351 (= c!357758 ((_ is IntegerValue!13155) (value!134175 (h!32046 (t!200587 tokens!456)))))))

(assert (=> d!667351 (= (inv!21 (value!134175 (h!32046 (t!200587 tokens!456)))) e!1439442)))

(assert (= (and d!667351 c!357758) b!2249414))

(assert (= (and d!667351 (not c!357758)) b!2249411))

(assert (= (and b!2249411 c!357757) b!2249415))

(assert (= (and b!2249411 (not c!357757)) b!2249412))

(assert (= (and b!2249412 (not res!961192)) b!2249413))

(declare-fun m!2680309 () Bool)

(assert (=> b!2249413 m!2680309))

(declare-fun m!2680311 () Bool)

(assert (=> b!2249414 m!2680311))

(declare-fun m!2680313 () Bool)

(assert (=> b!2249415 m!2680313))

(assert (=> b!2249167 d!667351))

(declare-fun d!667353 () Bool)

(declare-fun isBalanced!2652 (Conc!8594) Bool)

(assert (=> d!667353 (= (inv!36176 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456)))) (value!134175 (h!32046 tokens!456)))) (isBalanced!2652 (c!357684 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456)))) (value!134175 (h!32046 tokens!456))))))))

(declare-fun bs!454965 () Bool)

(assert (= bs!454965 d!667353))

(declare-fun m!2680315 () Bool)

(assert (=> bs!454965 m!2680315))

(assert (=> tb!133183 d!667353))

(declare-fun d!667355 () Bool)

(assert (=> d!667355 (= (inv!36170 (tag!4713 (h!32047 (t!200588 rules!1750)))) (= (mod (str.len (value!134174 (tag!4713 (h!32047 (t!200588 rules!1750))))) 2) 0))))

(assert (=> b!2249186 d!667355))

(declare-fun d!667357 () Bool)

(declare-fun res!961193 () Bool)

(declare-fun e!1439443 () Bool)

(assert (=> d!667357 (=> (not res!961193) (not e!1439443))))

(assert (=> d!667357 (= res!961193 (semiInverseModEq!1703 (toChars!5816 (transformation!4223 (h!32047 (t!200588 rules!1750)))) (toValue!5957 (transformation!4223 (h!32047 (t!200588 rules!1750))))))))

(assert (=> d!667357 (= (inv!36173 (transformation!4223 (h!32047 (t!200588 rules!1750)))) e!1439443)))

(declare-fun b!2249416 () Bool)

(assert (=> b!2249416 (= e!1439443 (equivClasses!1622 (toChars!5816 (transformation!4223 (h!32047 (t!200588 rules!1750)))) (toValue!5957 (transformation!4223 (h!32047 (t!200588 rules!1750))))))))

(assert (= (and d!667357 res!961193) b!2249416))

(declare-fun m!2680317 () Bool)

(assert (=> d!667357 m!2680317))

(declare-fun m!2680319 () Bool)

(assert (=> b!2249416 m!2680319))

(assert (=> b!2249186 d!667357))

(declare-fun b!2249435 () Bool)

(declare-fun e!1439453 () Option!5196)

(declare-datatypes ((tuple2!26140 0))(
  ( (tuple2!26141 (_1!15580 List!26738) (_2!15580 List!26738)) )
))
(declare-fun lt!836219 () tuple2!26140)

(assert (=> b!2249435 (= e!1439453 (Some!5195 (tuple2!26135 (Token!7925 (apply!6546 (transformation!4223 (h!32047 rules!1750)) (seqFromList!2927 (_1!15580 lt!836219))) (h!32047 rules!1750) (size!20844 (seqFromList!2927 (_1!15580 lt!836219))) (_1!15580 lt!836219)) (_2!15580 lt!836219))))))

(declare-fun lt!836218 () Unit!39590)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!660 (Regex!6571 List!26738) Unit!39590)

(assert (=> b!2249435 (= lt!836218 (longestMatchIsAcceptedByMatchOrIsEmpty!660 (regex!4223 (h!32047 rules!1750)) input!1722))))

(declare-fun res!961215 () Bool)

(declare-fun findLongestMatchInner!687 (Regex!6571 List!26738 Int List!26738 List!26738 Int) tuple2!26140)

(assert (=> b!2249435 (= res!961215 (isEmpty!15017 (_1!15580 (findLongestMatchInner!687 (regex!4223 (h!32047 rules!1750)) Nil!26644 (size!20845 Nil!26644) input!1722 input!1722 (size!20845 input!1722)))))))

(declare-fun e!1439455 () Bool)

(assert (=> b!2249435 (=> res!961215 e!1439455)))

(assert (=> b!2249435 e!1439455))

(declare-fun lt!836217 () Unit!39590)

(assert (=> b!2249435 (= lt!836217 lt!836218)))

(declare-fun lt!836220 () Unit!39590)

(declare-fun lemmaSemiInverse!994 (TokenValueInjection!8310 BalanceConc!16916) Unit!39590)

(assert (=> b!2249435 (= lt!836220 (lemmaSemiInverse!994 (transformation!4223 (h!32047 rules!1750)) (seqFromList!2927 (_1!15580 lt!836219))))))

(declare-fun b!2249436 () Bool)

(assert (=> b!2249436 (= e!1439453 None!5195)))

(declare-fun b!2249437 () Bool)

(declare-fun res!961212 () Bool)

(declare-fun e!1439454 () Bool)

(assert (=> b!2249437 (=> (not res!961212) (not e!1439454))))

(declare-fun lt!836221 () Option!5196)

(assert (=> b!2249437 (= res!961212 (= (rule!6523 (_1!15577 (get!8041 lt!836221))) (h!32047 rules!1750)))))

(declare-fun b!2249438 () Bool)

(assert (=> b!2249438 (= e!1439454 (= (size!20843 (_1!15577 (get!8041 lt!836221))) (size!20845 (originalCharacters!4993 (_1!15577 (get!8041 lt!836221))))))))

(declare-fun b!2249439 () Bool)

(assert (=> b!2249439 (= e!1439455 (matchR!2832 (regex!4223 (h!32047 rules!1750)) (_1!15580 (findLongestMatchInner!687 (regex!4223 (h!32047 rules!1750)) Nil!26644 (size!20845 Nil!26644) input!1722 input!1722 (size!20845 input!1722)))))))

(declare-fun b!2249440 () Bool)

(declare-fun res!961214 () Bool)

(assert (=> b!2249440 (=> (not res!961214) (not e!1439454))))

(assert (=> b!2249440 (= res!961214 (= (++!6488 (list!10215 (charsOf!2611 (_1!15577 (get!8041 lt!836221)))) (_2!15577 (get!8041 lt!836221))) input!1722))))

(declare-fun b!2249441 () Bool)

(declare-fun res!961210 () Bool)

(assert (=> b!2249441 (=> (not res!961210) (not e!1439454))))

(assert (=> b!2249441 (= res!961210 (= (value!134175 (_1!15577 (get!8041 lt!836221))) (apply!6546 (transformation!4223 (rule!6523 (_1!15577 (get!8041 lt!836221)))) (seqFromList!2927 (originalCharacters!4993 (_1!15577 (get!8041 lt!836221)))))))))

(declare-fun d!667359 () Bool)

(declare-fun e!1439452 () Bool)

(assert (=> d!667359 e!1439452))

(declare-fun res!961209 () Bool)

(assert (=> d!667359 (=> res!961209 e!1439452)))

(assert (=> d!667359 (= res!961209 (isEmpty!15019 lt!836221))))

(assert (=> d!667359 (= lt!836221 e!1439453)))

(declare-fun c!357761 () Bool)

(assert (=> d!667359 (= c!357761 (isEmpty!15017 (_1!15580 lt!836219)))))

(declare-fun findLongestMatch!616 (Regex!6571 List!26738) tuple2!26140)

(assert (=> d!667359 (= lt!836219 (findLongestMatch!616 (regex!4223 (h!32047 rules!1750)) input!1722))))

(assert (=> d!667359 (ruleValid!1315 thiss!16613 (h!32047 rules!1750))))

(assert (=> d!667359 (= (maxPrefixOneRule!1309 thiss!16613 (h!32047 rules!1750) input!1722) lt!836221)))

(declare-fun b!2249442 () Bool)

(assert (=> b!2249442 (= e!1439452 e!1439454)))

(declare-fun res!961211 () Bool)

(assert (=> b!2249442 (=> (not res!961211) (not e!1439454))))

(assert (=> b!2249442 (= res!961211 (matchR!2832 (regex!4223 (h!32047 rules!1750)) (list!10215 (charsOf!2611 (_1!15577 (get!8041 lt!836221))))))))

(declare-fun b!2249443 () Bool)

(declare-fun res!961213 () Bool)

(assert (=> b!2249443 (=> (not res!961213) (not e!1439454))))

(assert (=> b!2249443 (= res!961213 (< (size!20845 (_2!15577 (get!8041 lt!836221))) (size!20845 input!1722)))))

(assert (= (and d!667359 c!357761) b!2249436))

(assert (= (and d!667359 (not c!357761)) b!2249435))

(assert (= (and b!2249435 (not res!961215)) b!2249439))

(assert (= (and d!667359 (not res!961209)) b!2249442))

(assert (= (and b!2249442 res!961211) b!2249440))

(assert (= (and b!2249440 res!961214) b!2249443))

(assert (= (and b!2249443 res!961213) b!2249437))

(assert (= (and b!2249437 res!961212) b!2249441))

(assert (= (and b!2249441 res!961210) b!2249438))

(declare-fun m!2680325 () Bool)

(assert (=> b!2249435 m!2680325))

(assert (=> b!2249435 m!2680069))

(declare-fun m!2680327 () Bool)

(assert (=> b!2249435 m!2680327))

(declare-fun m!2680329 () Bool)

(assert (=> b!2249435 m!2680329))

(assert (=> b!2249435 m!2680325))

(assert (=> b!2249435 m!2680069))

(declare-fun m!2680331 () Bool)

(assert (=> b!2249435 m!2680331))

(assert (=> b!2249435 m!2680327))

(declare-fun m!2680333 () Bool)

(assert (=> b!2249435 m!2680333))

(declare-fun m!2680335 () Bool)

(assert (=> b!2249435 m!2680335))

(assert (=> b!2249435 m!2680327))

(assert (=> b!2249435 m!2680327))

(declare-fun m!2680337 () Bool)

(assert (=> b!2249435 m!2680337))

(declare-fun m!2680339 () Bool)

(assert (=> b!2249435 m!2680339))

(declare-fun m!2680341 () Bool)

(assert (=> b!2249440 m!2680341))

(declare-fun m!2680343 () Bool)

(assert (=> b!2249440 m!2680343))

(assert (=> b!2249440 m!2680343))

(declare-fun m!2680345 () Bool)

(assert (=> b!2249440 m!2680345))

(assert (=> b!2249440 m!2680345))

(declare-fun m!2680347 () Bool)

(assert (=> b!2249440 m!2680347))

(assert (=> b!2249441 m!2680341))

(declare-fun m!2680349 () Bool)

(assert (=> b!2249441 m!2680349))

(assert (=> b!2249441 m!2680349))

(declare-fun m!2680351 () Bool)

(assert (=> b!2249441 m!2680351))

(assert (=> b!2249437 m!2680341))

(assert (=> b!2249439 m!2680325))

(assert (=> b!2249439 m!2680069))

(assert (=> b!2249439 m!2680325))

(assert (=> b!2249439 m!2680069))

(assert (=> b!2249439 m!2680331))

(declare-fun m!2680353 () Bool)

(assert (=> b!2249439 m!2680353))

(assert (=> b!2249443 m!2680341))

(declare-fun m!2680355 () Bool)

(assert (=> b!2249443 m!2680355))

(assert (=> b!2249443 m!2680069))

(assert (=> b!2249438 m!2680341))

(declare-fun m!2680357 () Bool)

(assert (=> b!2249438 m!2680357))

(assert (=> b!2249442 m!2680341))

(assert (=> b!2249442 m!2680343))

(assert (=> b!2249442 m!2680343))

(assert (=> b!2249442 m!2680345))

(assert (=> b!2249442 m!2680345))

(declare-fun m!2680359 () Bool)

(assert (=> b!2249442 m!2680359))

(declare-fun m!2680361 () Bool)

(assert (=> d!667359 m!2680361))

(declare-fun m!2680363 () Bool)

(assert (=> d!667359 m!2680363))

(declare-fun m!2680365 () Bool)

(assert (=> d!667359 m!2680365))

(declare-fun m!2680367 () Bool)

(assert (=> d!667359 m!2680367))

(assert (=> bm!135503 d!667359))

(assert (=> d!667195 d!667193))

(declare-fun d!667367 () Bool)

(assert (=> d!667367 (ruleValid!1315 thiss!16613 otherR!12)))

(assert (=> d!667367 true))

(declare-fun _$65!1036 () Unit!39590)

(assert (=> d!667367 (= (choose!13164 thiss!16613 otherR!12 rules!1750) _$65!1036)))

(declare-fun bs!454968 () Bool)

(assert (= bs!454968 d!667367))

(assert (=> bs!454968 m!2679865))

(assert (=> d!667195 d!667367))

(assert (=> d!667195 d!667227))

(assert (=> d!667247 d!667323))

(declare-fun d!667369 () Bool)

(declare-fun lt!836222 () Int)

(assert (=> d!667369 (>= lt!836222 0)))

(declare-fun e!1439456 () Int)

(assert (=> d!667369 (= lt!836222 e!1439456)))

(declare-fun c!357762 () Bool)

(assert (=> d!667369 (= c!357762 ((_ is Nil!26644) (t!200586 otherP!12)))))

(assert (=> d!667369 (= (size!20845 (t!200586 otherP!12)) lt!836222)))

(declare-fun b!2249444 () Bool)

(assert (=> b!2249444 (= e!1439456 0)))

(declare-fun b!2249445 () Bool)

(assert (=> b!2249445 (= e!1439456 (+ 1 (size!20845 (t!200586 (t!200586 otherP!12)))))))

(assert (= (and d!667369 c!357762) b!2249444))

(assert (= (and d!667369 (not c!357762)) b!2249445))

(declare-fun m!2680369 () Bool)

(assert (=> b!2249445 m!2680369))

(assert (=> b!2248982 d!667369))

(declare-fun d!667371 () Bool)

(assert (=> d!667371 (= (isDefined!4182 lt!836149) (not (isEmpty!15019 lt!836149)))))

(declare-fun bs!454969 () Bool)

(assert (= bs!454969 d!667371))

(assert (=> bs!454969 m!2680047))

(assert (=> b!2249087 d!667371))

(declare-fun bm!135516 () Bool)

(declare-fun call!135522 () Bool)

(declare-fun c!357768 () Bool)

(declare-fun c!357767 () Bool)

(assert (=> bm!135516 (= call!135522 (validRegex!2455 (ite c!357768 (reg!6900 (regex!4223 otherR!12)) (ite c!357767 (regTwo!13655 (regex!4223 otherR!12)) (regOne!13654 (regex!4223 otherR!12))))))))

(declare-fun bm!135517 () Bool)

(declare-fun call!135521 () Bool)

(assert (=> bm!135517 (= call!135521 call!135522)))

(declare-fun b!2249465 () Bool)

(declare-fun res!961230 () Bool)

(declare-fun e!1439473 () Bool)

(assert (=> b!2249465 (=> (not res!961230) (not e!1439473))))

(declare-fun call!135523 () Bool)

(assert (=> b!2249465 (= res!961230 call!135523)))

(declare-fun e!1439474 () Bool)

(assert (=> b!2249465 (= e!1439474 e!1439473)))

(declare-fun b!2249466 () Bool)

(declare-fun res!961228 () Bool)

(declare-fun e!1439475 () Bool)

(assert (=> b!2249466 (=> res!961228 e!1439475)))

(assert (=> b!2249466 (= res!961228 (not ((_ is Concat!10957) (regex!4223 otherR!12))))))

(assert (=> b!2249466 (= e!1439474 e!1439475)))

(declare-fun b!2249467 () Bool)

(declare-fun e!1439472 () Bool)

(assert (=> b!2249467 (= e!1439472 e!1439474)))

(assert (=> b!2249467 (= c!357767 ((_ is Union!6571) (regex!4223 otherR!12)))))

(declare-fun b!2249468 () Bool)

(declare-fun e!1439471 () Bool)

(assert (=> b!2249468 (= e!1439472 e!1439471)))

(declare-fun res!961227 () Bool)

(assert (=> b!2249468 (= res!961227 (not (nullable!1801 (reg!6900 (regex!4223 otherR!12)))))))

(assert (=> b!2249468 (=> (not res!961227) (not e!1439471))))

(declare-fun bm!135518 () Bool)

(assert (=> bm!135518 (= call!135523 (validRegex!2455 (ite c!357767 (regOne!13655 (regex!4223 otherR!12)) (regTwo!13654 (regex!4223 otherR!12)))))))

(declare-fun b!2249469 () Bool)

(assert (=> b!2249469 (= e!1439471 call!135522)))

(declare-fun b!2249470 () Bool)

(declare-fun e!1439477 () Bool)

(assert (=> b!2249470 (= e!1439477 e!1439472)))

(assert (=> b!2249470 (= c!357768 ((_ is Star!6571) (regex!4223 otherR!12)))))

(declare-fun d!667373 () Bool)

(declare-fun res!961229 () Bool)

(assert (=> d!667373 (=> res!961229 e!1439477)))

(assert (=> d!667373 (= res!961229 ((_ is ElementMatch!6571) (regex!4223 otherR!12)))))

(assert (=> d!667373 (= (validRegex!2455 (regex!4223 otherR!12)) e!1439477)))

(declare-fun b!2249464 () Bool)

(declare-fun e!1439476 () Bool)

(assert (=> b!2249464 (= e!1439476 call!135523)))

(declare-fun b!2249471 () Bool)

(assert (=> b!2249471 (= e!1439475 e!1439476)))

(declare-fun res!961226 () Bool)

(assert (=> b!2249471 (=> (not res!961226) (not e!1439476))))

(assert (=> b!2249471 (= res!961226 call!135521)))

(declare-fun b!2249472 () Bool)

(assert (=> b!2249472 (= e!1439473 call!135521)))

(assert (= (and d!667373 (not res!961229)) b!2249470))

(assert (= (and b!2249470 c!357768) b!2249468))

(assert (= (and b!2249470 (not c!357768)) b!2249467))

(assert (= (and b!2249468 res!961227) b!2249469))

(assert (= (and b!2249467 c!357767) b!2249465))

(assert (= (and b!2249467 (not c!357767)) b!2249466))

(assert (= (and b!2249465 res!961230) b!2249472))

(assert (= (and b!2249466 (not res!961228)) b!2249471))

(assert (= (and b!2249471 res!961226) b!2249464))

(assert (= (or b!2249465 b!2249464) bm!135518))

(assert (= (or b!2249472 b!2249471) bm!135517))

(assert (= (or b!2249469 bm!135517) bm!135516))

(declare-fun m!2680371 () Bool)

(assert (=> bm!135516 m!2680371))

(declare-fun m!2680373 () Bool)

(assert (=> b!2249468 m!2680373))

(declare-fun m!2680375 () Bool)

(assert (=> bm!135518 m!2680375))

(assert (=> d!667193 d!667373))

(declare-fun d!667375 () Bool)

(assert (=> d!667375 (= (head!4787 otherP!12) (h!32045 otherP!12))))

(assert (=> b!2249125 d!667375))

(declare-fun d!667377 () Bool)

(assert (=> d!667377 (= (head!4787 input!1722) (h!32045 input!1722))))

(assert (=> b!2249125 d!667377))

(declare-fun bs!454970 () Bool)

(declare-fun d!667379 () Bool)

(assert (= bs!454970 (and d!667379 d!667327)))

(declare-fun lambda!85200 () Int)

(assert (=> bs!454970 (= (and (= (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456)))) (toChars!5816 (transformation!4223 (h!32047 rules!1750)))) (= (toValue!5957 (transformation!4223 (rule!6523 (h!32046 tokens!456)))) (toValue!5957 (transformation!4223 (h!32047 rules!1750))))) (= lambda!85200 lambda!85195))))

(assert (=> d!667379 true))

(assert (=> d!667379 (< (dynLambda!11583 order!14905 (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456))))) (dynLambda!11584 order!14907 lambda!85200))))

(assert (=> d!667379 true))

(assert (=> d!667379 (< (dynLambda!11581 order!14901 (toValue!5957 (transformation!4223 (rule!6523 (h!32046 tokens!456))))) (dynLambda!11584 order!14907 lambda!85200))))

(assert (=> d!667379 (= (semiInverseModEq!1703 (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456)))) (toValue!5957 (transformation!4223 (rule!6523 (h!32046 tokens!456))))) (Forall!1062 lambda!85200))))

(declare-fun bs!454971 () Bool)

(assert (= bs!454971 d!667379))

(declare-fun m!2680377 () Bool)

(assert (=> bs!454971 m!2680377))

(assert (=> d!667183 d!667379))

(declare-fun d!667381 () Bool)

(declare-fun lt!836223 () Bool)

(assert (=> d!667381 (= lt!836223 (select (content!3547 rules!1750) (rule!6523 (_1!15577 (get!8041 lt!836149)))))))

(declare-fun e!1439479 () Bool)

(assert (=> d!667381 (= lt!836223 e!1439479)))

(declare-fun res!961232 () Bool)

(assert (=> d!667381 (=> (not res!961232) (not e!1439479))))

(assert (=> d!667381 (= res!961232 ((_ is Cons!26646) rules!1750))))

(assert (=> d!667381 (= (contains!4572 rules!1750 (rule!6523 (_1!15577 (get!8041 lt!836149)))) lt!836223)))

(declare-fun b!2249473 () Bool)

(declare-fun e!1439478 () Bool)

(assert (=> b!2249473 (= e!1439479 e!1439478)))

(declare-fun res!961231 () Bool)

(assert (=> b!2249473 (=> res!961231 e!1439478)))

(assert (=> b!2249473 (= res!961231 (= (h!32047 rules!1750) (rule!6523 (_1!15577 (get!8041 lt!836149)))))))

(declare-fun b!2249474 () Bool)

(assert (=> b!2249474 (= e!1439478 (contains!4572 (t!200588 rules!1750) (rule!6523 (_1!15577 (get!8041 lt!836149)))))))

(assert (= (and d!667381 res!961232) b!2249473))

(assert (= (and b!2249473 (not res!961231)) b!2249474))

(assert (=> d!667381 m!2679993))

(declare-fun m!2680379 () Bool)

(assert (=> d!667381 m!2680379))

(declare-fun m!2680381 () Bool)

(assert (=> b!2249474 m!2680381))

(assert (=> b!2249085 d!667381))

(assert (=> b!2249085 d!667341))

(declare-fun d!667383 () Bool)

(declare-fun c!357769 () Bool)

(assert (=> d!667383 (= c!357769 ((_ is Node!8594) (c!357684 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456)))) (value!134175 (h!32046 tokens!456))))))))

(declare-fun e!1439480 () Bool)

(assert (=> d!667383 (= (inv!36175 (c!357684 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456)))) (value!134175 (h!32046 tokens!456))))) e!1439480)))

(declare-fun b!2249475 () Bool)

(assert (=> b!2249475 (= e!1439480 (inv!36179 (c!357684 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456)))) (value!134175 (h!32046 tokens!456))))))))

(declare-fun b!2249476 () Bool)

(declare-fun e!1439481 () Bool)

(assert (=> b!2249476 (= e!1439480 e!1439481)))

(declare-fun res!961233 () Bool)

(assert (=> b!2249476 (= res!961233 (not ((_ is Leaf!12691) (c!357684 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456)))) (value!134175 (h!32046 tokens!456)))))))))

(assert (=> b!2249476 (=> res!961233 e!1439481)))

(declare-fun b!2249477 () Bool)

(assert (=> b!2249477 (= e!1439481 (inv!36180 (c!357684 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456)))) (value!134175 (h!32046 tokens!456))))))))

(assert (= (and d!667383 c!357769) b!2249475))

(assert (= (and d!667383 (not c!357769)) b!2249476))

(assert (= (and b!2249476 (not res!961233)) b!2249477))

(declare-fun m!2680383 () Bool)

(assert (=> b!2249475 m!2680383))

(declare-fun m!2680385 () Bool)

(assert (=> b!2249477 m!2680385))

(assert (=> b!2248953 d!667383))

(assert (=> d!667233 d!667331))

(declare-fun call!135525 () Bool)

(declare-fun bm!135519 () Bool)

(declare-fun c!357771 () Bool)

(declare-fun c!357770 () Bool)

(assert (=> bm!135519 (= call!135525 (validRegex!2455 (ite c!357771 (reg!6900 (regex!4223 r!2363)) (ite c!357770 (regTwo!13655 (regex!4223 r!2363)) (regOne!13654 (regex!4223 r!2363))))))))

(declare-fun bm!135520 () Bool)

(declare-fun call!135524 () Bool)

(assert (=> bm!135520 (= call!135524 call!135525)))

(declare-fun b!2249479 () Bool)

(declare-fun res!961238 () Bool)

(declare-fun e!1439484 () Bool)

(assert (=> b!2249479 (=> (not res!961238) (not e!1439484))))

(declare-fun call!135526 () Bool)

(assert (=> b!2249479 (= res!961238 call!135526)))

(declare-fun e!1439485 () Bool)

(assert (=> b!2249479 (= e!1439485 e!1439484)))

(declare-fun b!2249480 () Bool)

(declare-fun res!961236 () Bool)

(declare-fun e!1439486 () Bool)

(assert (=> b!2249480 (=> res!961236 e!1439486)))

(assert (=> b!2249480 (= res!961236 (not ((_ is Concat!10957) (regex!4223 r!2363))))))

(assert (=> b!2249480 (= e!1439485 e!1439486)))

(declare-fun b!2249481 () Bool)

(declare-fun e!1439483 () Bool)

(assert (=> b!2249481 (= e!1439483 e!1439485)))

(assert (=> b!2249481 (= c!357770 ((_ is Union!6571) (regex!4223 r!2363)))))

(declare-fun b!2249482 () Bool)

(declare-fun e!1439482 () Bool)

(assert (=> b!2249482 (= e!1439483 e!1439482)))

(declare-fun res!961235 () Bool)

(assert (=> b!2249482 (= res!961235 (not (nullable!1801 (reg!6900 (regex!4223 r!2363)))))))

(assert (=> b!2249482 (=> (not res!961235) (not e!1439482))))

(declare-fun bm!135521 () Bool)

(assert (=> bm!135521 (= call!135526 (validRegex!2455 (ite c!357770 (regOne!13655 (regex!4223 r!2363)) (regTwo!13654 (regex!4223 r!2363)))))))

(declare-fun b!2249483 () Bool)

(assert (=> b!2249483 (= e!1439482 call!135525)))

(declare-fun b!2249484 () Bool)

(declare-fun e!1439488 () Bool)

(assert (=> b!2249484 (= e!1439488 e!1439483)))

(assert (=> b!2249484 (= c!357771 ((_ is Star!6571) (regex!4223 r!2363)))))

(declare-fun d!667385 () Bool)

(declare-fun res!961237 () Bool)

(assert (=> d!667385 (=> res!961237 e!1439488)))

(assert (=> d!667385 (= res!961237 ((_ is ElementMatch!6571) (regex!4223 r!2363)))))

(assert (=> d!667385 (= (validRegex!2455 (regex!4223 r!2363)) e!1439488)))

(declare-fun b!2249478 () Bool)

(declare-fun e!1439487 () Bool)

(assert (=> b!2249478 (= e!1439487 call!135526)))

(declare-fun b!2249485 () Bool)

(assert (=> b!2249485 (= e!1439486 e!1439487)))

(declare-fun res!961234 () Bool)

(assert (=> b!2249485 (=> (not res!961234) (not e!1439487))))

(assert (=> b!2249485 (= res!961234 call!135524)))

(declare-fun b!2249486 () Bool)

(assert (=> b!2249486 (= e!1439484 call!135524)))

(assert (= (and d!667385 (not res!961237)) b!2249484))

(assert (= (and b!2249484 c!357771) b!2249482))

(assert (= (and b!2249484 (not c!357771)) b!2249481))

(assert (= (and b!2249482 res!961235) b!2249483))

(assert (= (and b!2249481 c!357770) b!2249479))

(assert (= (and b!2249481 (not c!357770)) b!2249480))

(assert (= (and b!2249479 res!961238) b!2249486))

(assert (= (and b!2249480 (not res!961236)) b!2249485))

(assert (= (and b!2249485 res!961234) b!2249478))

(assert (= (or b!2249479 b!2249478) bm!135521))

(assert (= (or b!2249486 b!2249485) bm!135520))

(assert (= (or b!2249483 bm!135520) bm!135519))

(declare-fun m!2680387 () Bool)

(assert (=> bm!135519 m!2680387))

(declare-fun m!2680389 () Bool)

(assert (=> b!2249482 m!2680389))

(declare-fun m!2680391 () Bool)

(assert (=> bm!135521 m!2680391))

(assert (=> d!667233 d!667385))

(declare-fun d!667387 () Bool)

(assert (=> d!667387 (= (isEmpty!15019 (maxPrefix!2108 thiss!16613 rules!1750 input!1722)) (not ((_ is Some!5195) (maxPrefix!2108 thiss!16613 rules!1750 input!1722))))))

(assert (=> d!667237 d!667387))

(assert (=> b!2249082 d!667341))

(declare-fun d!667389 () Bool)

(declare-fun dynLambda!11585 (Int BalanceConc!16916) TokenValue!4385)

(assert (=> d!667389 (= (apply!6546 (transformation!4223 (rule!6523 (_1!15577 (get!8041 lt!836149)))) (seqFromList!2927 (originalCharacters!4993 (_1!15577 (get!8041 lt!836149))))) (dynLambda!11585 (toValue!5957 (transformation!4223 (rule!6523 (_1!15577 (get!8041 lt!836149))))) (seqFromList!2927 (originalCharacters!4993 (_1!15577 (get!8041 lt!836149))))))))

(declare-fun b_lambda!71903 () Bool)

(assert (=> (not b_lambda!71903) (not d!667389)))

(declare-fun t!200652 () Bool)

(declare-fun tb!133243 () Bool)

(assert (=> (and b!2248915 (= (toValue!5957 (transformation!4223 otherR!12)) (toValue!5957 (transformation!4223 (rule!6523 (_1!15577 (get!8041 lt!836149)))))) t!200652) tb!133243))

(declare-fun result!162434 () Bool)

(assert (=> tb!133243 (= result!162434 (inv!21 (dynLambda!11585 (toValue!5957 (transformation!4223 (rule!6523 (_1!15577 (get!8041 lt!836149))))) (seqFromList!2927 (originalCharacters!4993 (_1!15577 (get!8041 lt!836149)))))))))

(declare-fun m!2680393 () Bool)

(assert (=> tb!133243 m!2680393))

(assert (=> d!667389 t!200652))

(declare-fun b_and!176125 () Bool)

(assert (= b_and!176053 (and (=> t!200652 result!162434) b_and!176125)))

(declare-fun tb!133245 () Bool)

(declare-fun t!200654 () Bool)

(assert (=> (and b!2248908 (= (toValue!5957 (transformation!4223 r!2363)) (toValue!5957 (transformation!4223 (rule!6523 (_1!15577 (get!8041 lt!836149)))))) t!200654) tb!133245))

(declare-fun result!162438 () Bool)

(assert (= result!162438 result!162434))

(assert (=> d!667389 t!200654))

(declare-fun b_and!176127 () Bool)

(assert (= b_and!176057 (and (=> t!200654 result!162438) b_and!176127)))

(declare-fun tb!133247 () Bool)

(declare-fun t!200656 () Bool)

(assert (=> (and b!2248906 (= (toValue!5957 (transformation!4223 (h!32047 rules!1750))) (toValue!5957 (transformation!4223 (rule!6523 (_1!15577 (get!8041 lt!836149)))))) t!200656) tb!133247))

(declare-fun result!162440 () Bool)

(assert (= result!162440 result!162434))

(assert (=> d!667389 t!200656))

(declare-fun b_and!176129 () Bool)

(assert (= b_and!176061 (and (=> t!200656 result!162440) b_and!176129)))

(declare-fun tb!133249 () Bool)

(declare-fun t!200658 () Bool)

(assert (=> (and b!2249169 (= (toValue!5957 (transformation!4223 (rule!6523 (h!32046 (t!200587 tokens!456))))) (toValue!5957 (transformation!4223 (rule!6523 (_1!15577 (get!8041 lt!836149)))))) t!200658) tb!133249))

(declare-fun result!162442 () Bool)

(assert (= result!162442 result!162434))

(assert (=> d!667389 t!200658))

(declare-fun b_and!176131 () Bool)

(assert (= b_and!176081 (and (=> t!200658 result!162442) b_and!176131)))

(declare-fun tb!133251 () Bool)

(declare-fun t!200660 () Bool)

(assert (=> (and b!2249187 (= (toValue!5957 (transformation!4223 (h!32047 (t!200588 rules!1750)))) (toValue!5957 (transformation!4223 (rule!6523 (_1!15577 (get!8041 lt!836149)))))) t!200660) tb!133251))

(declare-fun result!162444 () Bool)

(assert (= result!162444 result!162434))

(assert (=> d!667389 t!200660))

(declare-fun b_and!176133 () Bool)

(assert (= b_and!176085 (and (=> t!200660 result!162444) b_and!176133)))

(declare-fun tb!133253 () Bool)

(declare-fun t!200662 () Bool)

(assert (=> (and b!2248916 (= (toValue!5957 (transformation!4223 (rule!6523 (h!32046 tokens!456)))) (toValue!5957 (transformation!4223 (rule!6523 (_1!15577 (get!8041 lt!836149)))))) t!200662) tb!133253))

(declare-fun result!162446 () Bool)

(assert (= result!162446 result!162434))

(assert (=> d!667389 t!200662))

(declare-fun b_and!176135 () Bool)

(assert (= b_and!176049 (and (=> t!200662 result!162446) b_and!176135)))

(assert (=> d!667389 m!2680059))

(declare-fun m!2680395 () Bool)

(assert (=> d!667389 m!2680395))

(assert (=> b!2249082 d!667389))

(declare-fun d!667391 () Bool)

(assert (=> d!667391 (= (seqFromList!2927 (originalCharacters!4993 (_1!15577 (get!8041 lt!836149)))) (fromListB!1313 (originalCharacters!4993 (_1!15577 (get!8041 lt!836149)))))))

(declare-fun bs!454972 () Bool)

(assert (= bs!454972 d!667391))

(declare-fun m!2680397 () Bool)

(assert (=> bs!454972 m!2680397))

(assert (=> b!2249082 d!667391))

(assert (=> d!667189 d!667247))

(declare-fun d!667393 () Bool)

(assert (=> d!667393 (= (list!10215 lt!836119) (list!10217 (c!357684 lt!836119)))))

(declare-fun bs!454973 () Bool)

(assert (= bs!454973 d!667393))

(declare-fun m!2680399 () Bool)

(assert (=> bs!454973 m!2680399))

(assert (=> d!667203 d!667393))

(declare-fun d!667395 () Bool)

(declare-fun lt!836224 () Bool)

(assert (=> d!667395 (= lt!836224 (select (content!3547 (t!200588 rules!1750)) otherR!12))))

(declare-fun e!1439493 () Bool)

(assert (=> d!667395 (= lt!836224 e!1439493)))

(declare-fun res!961240 () Bool)

(assert (=> d!667395 (=> (not res!961240) (not e!1439493))))

(assert (=> d!667395 (= res!961240 ((_ is Cons!26646) (t!200588 rules!1750)))))

(assert (=> d!667395 (= (contains!4572 (t!200588 rules!1750) otherR!12) lt!836224)))

(declare-fun b!2249489 () Bool)

(declare-fun e!1439492 () Bool)

(assert (=> b!2249489 (= e!1439493 e!1439492)))

(declare-fun res!961239 () Bool)

(assert (=> b!2249489 (=> res!961239 e!1439492)))

(assert (=> b!2249489 (= res!961239 (= (h!32047 (t!200588 rules!1750)) otherR!12))))

(declare-fun b!2249490 () Bool)

(assert (=> b!2249490 (= e!1439492 (contains!4572 (t!200588 (t!200588 rules!1750)) otherR!12))))

(assert (= (and d!667395 res!961240) b!2249489))

(assert (= (and b!2249489 (not res!961239)) b!2249490))

(assert (=> d!667395 m!2680275))

(declare-fun m!2680401 () Bool)

(assert (=> d!667395 m!2680401))

(declare-fun m!2680403 () Bool)

(assert (=> b!2249490 m!2680403))

(assert (=> b!2249004 d!667395))

(declare-fun d!667397 () Bool)

(declare-fun lt!836225 () Int)

(assert (=> d!667397 (>= lt!836225 0)))

(declare-fun e!1439494 () Int)

(assert (=> d!667397 (= lt!836225 e!1439494)))

(declare-fun c!357772 () Bool)

(assert (=> d!667397 (= c!357772 ((_ is Nil!26644) (originalCharacters!4993 (h!32046 tokens!456))))))

(assert (=> d!667397 (= (size!20845 (originalCharacters!4993 (h!32046 tokens!456))) lt!836225)))

(declare-fun b!2249491 () Bool)

(assert (=> b!2249491 (= e!1439494 0)))

(declare-fun b!2249492 () Bool)

(assert (=> b!2249492 (= e!1439494 (+ 1 (size!20845 (t!200586 (originalCharacters!4993 (h!32046 tokens!456))))))))

(assert (= (and d!667397 c!357772) b!2249491))

(assert (= (and d!667397 (not c!357772)) b!2249492))

(declare-fun m!2680405 () Bool)

(assert (=> b!2249492 m!2680405))

(assert (=> b!2248948 d!667397))

(declare-fun d!667399 () Bool)

(declare-fun charsToBigInt!1 (List!26737) Int)

(assert (=> d!667399 (= (inv!17 (value!134175 (h!32046 tokens!456))) (= (charsToBigInt!1 (text!31143 (value!134175 (h!32046 tokens!456)))) (value!134167 (value!134175 (h!32046 tokens!456)))))))

(declare-fun bs!454974 () Bool)

(assert (= bs!454974 d!667399))

(declare-fun m!2680407 () Bool)

(assert (=> bs!454974 m!2680407))

(assert (=> b!2248942 d!667399))

(declare-fun d!667401 () Bool)

(declare-fun e!1439503 () Bool)

(assert (=> d!667401 e!1439503))

(declare-fun res!961245 () Bool)

(assert (=> d!667401 (=> (not res!961245) (not e!1439503))))

(declare-fun lt!836234 () BalanceConc!16916)

(assert (=> d!667401 (= res!961245 (= (list!10215 lt!836234) input!1722))))

(declare-fun fromList!509 (List!26738) Conc!8594)

(assert (=> d!667401 (= lt!836234 (BalanceConc!16917 (fromList!509 input!1722)))))

(assert (=> d!667401 (= (fromListB!1313 input!1722) lt!836234)))

(declare-fun b!2249505 () Bool)

(assert (=> b!2249505 (= e!1439503 (isBalanced!2652 (fromList!509 input!1722)))))

(assert (= (and d!667401 res!961245) b!2249505))

(declare-fun m!2680409 () Bool)

(assert (=> d!667401 m!2680409))

(declare-fun m!2680411 () Bool)

(assert (=> d!667401 m!2680411))

(assert (=> b!2249505 m!2680411))

(assert (=> b!2249505 m!2680411))

(declare-fun m!2680413 () Bool)

(assert (=> b!2249505 m!2680413))

(assert (=> d!667219 d!667401))

(declare-fun bs!454975 () Bool)

(declare-fun d!667403 () Bool)

(assert (= bs!454975 (and d!667403 d!667321)))

(declare-fun lambda!85201 () Int)

(assert (=> bs!454975 (= (= (toValue!5957 (transformation!4223 (rule!6523 (h!32046 tokens!456)))) (toValue!5957 (transformation!4223 r!2363))) (= lambda!85201 lambda!85192))))

(declare-fun bs!454976 () Bool)

(assert (= bs!454976 (and d!667403 d!667347)))

(assert (=> bs!454976 (= (= (toValue!5957 (transformation!4223 (rule!6523 (h!32046 tokens!456)))) (toValue!5957 (transformation!4223 otherR!12))) (= lambda!85201 lambda!85199))))

(assert (=> d!667403 true))

(assert (=> d!667403 (< (dynLambda!11581 order!14901 (toValue!5957 (transformation!4223 (rule!6523 (h!32046 tokens!456))))) (dynLambda!11582 order!14903 lambda!85201))))

(assert (=> d!667403 (= (equivClasses!1622 (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456)))) (toValue!5957 (transformation!4223 (rule!6523 (h!32046 tokens!456))))) (Forall2!679 lambda!85201))))

(declare-fun bs!454977 () Bool)

(assert (= bs!454977 d!667403))

(declare-fun m!2680415 () Bool)

(assert (=> bs!454977 m!2680415))

(assert (=> b!2248927 d!667403))

(assert (=> b!2249041 d!667343))

(declare-fun d!667405 () Bool)

(assert (=> d!667405 (= (list!10214 (_1!15578 lt!836125)) (list!10216 (c!357686 (_1!15578 lt!836125))))))

(declare-fun bs!454978 () Bool)

(assert (= bs!454978 d!667405))

(declare-fun m!2680417 () Bool)

(assert (=> bs!454978 m!2680417))

(assert (=> b!2248994 d!667405))

(declare-fun b!2249534 () Bool)

(declare-fun e!1439522 () tuple2!26138)

(declare-fun lt!836250 () Option!5196)

(declare-fun lt!836249 () tuple2!26138)

(assert (=> b!2249534 (= e!1439522 (tuple2!26139 (Cons!26645 (_1!15577 (v!30211 lt!836250)) (_1!15579 lt!836249)) (_2!15579 lt!836249)))))

(assert (=> b!2249534 (= lt!836249 (lexList!1047 thiss!16613 rules!1750 (_2!15577 (v!30211 lt!836250))))))

(declare-fun d!667407 () Bool)

(declare-fun e!1439521 () Bool)

(assert (=> d!667407 e!1439521))

(declare-fun c!357788 () Bool)

(declare-fun lt!836248 () tuple2!26138)

(declare-fun size!20850 (List!26739) Int)

(assert (=> d!667407 (= c!357788 (> (size!20850 (_1!15579 lt!836248)) 0))))

(assert (=> d!667407 (= lt!836248 e!1439522)))

(declare-fun c!357787 () Bool)

(assert (=> d!667407 (= c!357787 ((_ is Some!5195) lt!836250))))

(assert (=> d!667407 (= lt!836250 (maxPrefix!2108 thiss!16613 rules!1750 (list!10215 (seqFromList!2927 input!1722))))))

(assert (=> d!667407 (= (lexList!1047 thiss!16613 rules!1750 (list!10215 (seqFromList!2927 input!1722))) lt!836248)))

(declare-fun b!2249535 () Bool)

(declare-fun e!1439520 () Bool)

(assert (=> b!2249535 (= e!1439520 (not (isEmpty!15016 (_1!15579 lt!836248))))))

(declare-fun b!2249536 () Bool)

(assert (=> b!2249536 (= e!1439521 (= (_2!15579 lt!836248) (list!10215 (seqFromList!2927 input!1722))))))

(declare-fun b!2249537 () Bool)

(assert (=> b!2249537 (= e!1439521 e!1439520)))

(declare-fun res!961255 () Bool)

(assert (=> b!2249537 (= res!961255 (< (size!20845 (_2!15579 lt!836248)) (size!20845 (list!10215 (seqFromList!2927 input!1722)))))))

(assert (=> b!2249537 (=> (not res!961255) (not e!1439520))))

(declare-fun b!2249538 () Bool)

(assert (=> b!2249538 (= e!1439522 (tuple2!26139 Nil!26645 (list!10215 (seqFromList!2927 input!1722))))))

(assert (= (and d!667407 c!357787) b!2249534))

(assert (= (and d!667407 (not c!357787)) b!2249538))

(assert (= (and d!667407 c!357788) b!2249537))

(assert (= (and d!667407 (not c!357788)) b!2249536))

(assert (= (and b!2249537 res!961255) b!2249535))

(declare-fun m!2680455 () Bool)

(assert (=> b!2249534 m!2680455))

(declare-fun m!2680457 () Bool)

(assert (=> d!667407 m!2680457))

(assert (=> d!667407 m!2679973))

(declare-fun m!2680459 () Bool)

(assert (=> d!667407 m!2680459))

(declare-fun m!2680461 () Bool)

(assert (=> b!2249535 m!2680461))

(declare-fun m!2680463 () Bool)

(assert (=> b!2249537 m!2680463))

(assert (=> b!2249537 m!2679973))

(assert (=> b!2249537 m!2680267))

(assert (=> b!2248994 d!667407))

(declare-fun d!667421 () Bool)

(assert (=> d!667421 (= (list!10215 (seqFromList!2927 input!1722)) (list!10217 (c!357684 (seqFromList!2927 input!1722))))))

(declare-fun bs!454981 () Bool)

(assert (= bs!454981 d!667421))

(declare-fun m!2680465 () Bool)

(assert (=> bs!454981 m!2680465))

(assert (=> b!2248994 d!667421))

(declare-fun d!667423 () Bool)

(declare-fun charsToBigInt!0 (List!26737 Int) Int)

(assert (=> d!667423 (= (inv!15 (value!134175 (h!32046 tokens!456))) (= (charsToBigInt!0 (text!31144 (value!134175 (h!32046 tokens!456))) 0) (value!134170 (value!134175 (h!32046 tokens!456)))))))

(declare-fun bs!454982 () Bool)

(assert (= bs!454982 d!667423))

(declare-fun m!2680467 () Bool)

(assert (=> bs!454982 m!2680467))

(assert (=> b!2248940 d!667423))

(assert (=> b!2249042 d!667349))

(declare-fun d!667425 () Bool)

(assert (=> d!667425 (= (list!10215 (_2!15578 lt!836125)) (list!10217 (c!357684 (_2!15578 lt!836125))))))

(declare-fun bs!454983 () Bool)

(assert (= bs!454983 d!667425))

(declare-fun m!2680469 () Bool)

(assert (=> bs!454983 m!2680469))

(assert (=> b!2248996 d!667425))

(assert (=> b!2248996 d!667407))

(assert (=> b!2248996 d!667421))

(assert (=> d!667257 d!667255))

(declare-fun d!667427 () Bool)

(assert (=> d!667427 (ruleValid!1315 thiss!16613 r!2363)))

(assert (=> d!667427 true))

(declare-fun _$65!1037 () Unit!39590)

(assert (=> d!667427 (= (choose!13164 thiss!16613 r!2363 rules!1750) _$65!1037)))

(declare-fun bs!454984 () Bool)

(assert (= bs!454984 d!667427))

(assert (=> bs!454984 m!2679897))

(assert (=> d!667257 d!667427))

(assert (=> d!667257 d!667247))

(declare-fun d!667429 () Bool)

(assert (=> d!667429 (= (isEmpty!15019 lt!836149) (not ((_ is Some!5195) lt!836149)))))

(assert (=> d!667239 d!667429))

(declare-fun b!2249539 () Bool)

(declare-fun e!1439523 () Bool)

(declare-fun e!1439524 () Bool)

(assert (=> b!2249539 (= e!1439523 e!1439524)))

(declare-fun res!961258 () Bool)

(assert (=> b!2249539 (=> (not res!961258) (not e!1439524))))

(assert (=> b!2249539 (= res!961258 (not ((_ is Nil!26644) input!1722)))))

(declare-fun d!667431 () Bool)

(declare-fun e!1439525 () Bool)

(assert (=> d!667431 e!1439525))

(declare-fun res!961256 () Bool)

(assert (=> d!667431 (=> res!961256 e!1439525)))

(declare-fun lt!836251 () Bool)

(assert (=> d!667431 (= res!961256 (not lt!836251))))

(assert (=> d!667431 (= lt!836251 e!1439523)))

(declare-fun res!961259 () Bool)

(assert (=> d!667431 (=> res!961259 e!1439523)))

(assert (=> d!667431 (= res!961259 ((_ is Nil!26644) input!1722))))

(assert (=> d!667431 (= (isPrefix!2213 input!1722 input!1722) lt!836251)))

(declare-fun b!2249542 () Bool)

(assert (=> b!2249542 (= e!1439525 (>= (size!20845 input!1722) (size!20845 input!1722)))))

(declare-fun b!2249540 () Bool)

(declare-fun res!961257 () Bool)

(assert (=> b!2249540 (=> (not res!961257) (not e!1439524))))

(assert (=> b!2249540 (= res!961257 (= (head!4787 input!1722) (head!4787 input!1722)))))

(declare-fun b!2249541 () Bool)

(assert (=> b!2249541 (= e!1439524 (isPrefix!2213 (tail!3244 input!1722) (tail!3244 input!1722)))))

(assert (= (and d!667431 (not res!961259)) b!2249539))

(assert (= (and b!2249539 res!961258) b!2249540))

(assert (= (and b!2249540 res!961257) b!2249541))

(assert (= (and d!667431 (not res!961256)) b!2249542))

(assert (=> b!2249542 m!2680069))

(assert (=> b!2249542 m!2680069))

(assert (=> b!2249540 m!2680095))

(assert (=> b!2249540 m!2680095))

(assert (=> b!2249541 m!2680099))

(assert (=> b!2249541 m!2680099))

(assert (=> b!2249541 m!2680099))

(assert (=> b!2249541 m!2680099))

(declare-fun m!2680471 () Bool)

(assert (=> b!2249541 m!2680471))

(assert (=> d!667239 d!667431))

(declare-fun d!667433 () Bool)

(assert (=> d!667433 (isPrefix!2213 input!1722 input!1722)))

(declare-fun lt!836256 () Unit!39590)

(declare-fun choose!13166 (List!26738 List!26738) Unit!39590)

(assert (=> d!667433 (= lt!836256 (choose!13166 input!1722 input!1722))))

(assert (=> d!667433 (= (lemmaIsPrefixRefl!1428 input!1722 input!1722) lt!836256)))

(declare-fun bs!454985 () Bool)

(assert (= bs!454985 d!667433))

(assert (=> bs!454985 m!2680049))

(declare-fun m!2680473 () Bool)

(assert (=> bs!454985 m!2680473))

(assert (=> d!667239 d!667433))

(declare-fun bs!454988 () Bool)

(declare-fun d!667435 () Bool)

(assert (= bs!454988 (and d!667435 d!667333)))

(declare-fun lambda!85204 () Int)

(assert (=> bs!454988 (= lambda!85204 lambda!85198)))

(assert (=> d!667435 true))

(declare-fun lt!836260 () Bool)

(assert (=> d!667435 (= lt!836260 (forall!5466 rules!1750 lambda!85204))))

(declare-fun e!1439534 () Bool)

(assert (=> d!667435 (= lt!836260 e!1439534)))

(declare-fun res!961267 () Bool)

(assert (=> d!667435 (=> res!961267 e!1439534)))

(assert (=> d!667435 (= res!961267 (not ((_ is Cons!26646) rules!1750)))))

(assert (=> d!667435 (= (rulesValidInductive!1472 thiss!16613 rules!1750) lt!836260)))

(declare-fun b!2249550 () Bool)

(declare-fun e!1439533 () Bool)

(assert (=> b!2249550 (= e!1439534 e!1439533)))

(declare-fun res!961268 () Bool)

(assert (=> b!2249550 (=> (not res!961268) (not e!1439533))))

(assert (=> b!2249550 (= res!961268 (ruleValid!1315 thiss!16613 (h!32047 rules!1750)))))

(declare-fun b!2249551 () Bool)

(assert (=> b!2249551 (= e!1439533 (rulesValidInductive!1472 thiss!16613 (t!200588 rules!1750)))))

(assert (= (and d!667435 (not res!961267)) b!2249550))

(assert (= (and b!2249550 res!961268) b!2249551))

(declare-fun m!2680483 () Bool)

(assert (=> d!667435 m!2680483))

(assert (=> b!2249550 m!2680367))

(declare-fun m!2680487 () Bool)

(assert (=> b!2249551 m!2680487))

(assert (=> d!667239 d!667435))

(declare-fun d!667443 () Bool)

(declare-fun res!961269 () Bool)

(declare-fun e!1439536 () Bool)

(assert (=> d!667443 (=> (not res!961269) (not e!1439536))))

(assert (=> d!667443 (= res!961269 (not (isEmpty!15017 (originalCharacters!4993 (h!32046 (t!200587 tokens!456))))))))

(assert (=> d!667443 (= (inv!36174 (h!32046 (t!200587 tokens!456))) e!1439536)))

(declare-fun b!2249554 () Bool)

(declare-fun res!961270 () Bool)

(assert (=> b!2249554 (=> (not res!961270) (not e!1439536))))

(assert (=> b!2249554 (= res!961270 (= (originalCharacters!4993 (h!32046 (t!200587 tokens!456))) (list!10215 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (h!32046 (t!200587 tokens!456))))) (value!134175 (h!32046 (t!200587 tokens!456)))))))))

(declare-fun b!2249555 () Bool)

(assert (=> b!2249555 (= e!1439536 (= (size!20843 (h!32046 (t!200587 tokens!456))) (size!20845 (originalCharacters!4993 (h!32046 (t!200587 tokens!456))))))))

(assert (= (and d!667443 res!961269) b!2249554))

(assert (= (and b!2249554 res!961270) b!2249555))

(declare-fun b_lambda!71907 () Bool)

(assert (=> (not b_lambda!71907) (not b!2249554)))

(declare-fun t!200676 () Bool)

(declare-fun tb!133267 () Bool)

(assert (=> (and b!2248916 (= (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456)))) (toChars!5816 (transformation!4223 (rule!6523 (h!32046 (t!200587 tokens!456)))))) t!200676) tb!133267))

(declare-fun b!2249556 () Bool)

(declare-fun e!1439537 () Bool)

(declare-fun tp!710556 () Bool)

(assert (=> b!2249556 (= e!1439537 (and (inv!36175 (c!357684 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (h!32046 (t!200587 tokens!456))))) (value!134175 (h!32046 (t!200587 tokens!456)))))) tp!710556))))

(declare-fun result!162460 () Bool)

(assert (=> tb!133267 (= result!162460 (and (inv!36176 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (h!32046 (t!200587 tokens!456))))) (value!134175 (h!32046 (t!200587 tokens!456))))) e!1439537))))

(assert (= tb!133267 b!2249556))

(declare-fun m!2680489 () Bool)

(assert (=> b!2249556 m!2680489))

(declare-fun m!2680491 () Bool)

(assert (=> tb!133267 m!2680491))

(assert (=> b!2249554 t!200676))

(declare-fun b_and!176149 () Bool)

(assert (= b_and!176115 (and (=> t!200676 result!162460) b_and!176149)))

(declare-fun tb!133269 () Bool)

(declare-fun t!200678 () Bool)

(assert (=> (and b!2249187 (= (toChars!5816 (transformation!4223 (h!32047 (t!200588 rules!1750)))) (toChars!5816 (transformation!4223 (rule!6523 (h!32046 (t!200587 tokens!456)))))) t!200678) tb!133269))

(declare-fun result!162462 () Bool)

(assert (= result!162462 result!162460))

(assert (=> b!2249554 t!200678))

(declare-fun b_and!176151 () Bool)

(assert (= b_and!176119 (and (=> t!200678 result!162462) b_and!176151)))

(declare-fun tb!133271 () Bool)

(declare-fun t!200680 () Bool)

(assert (=> (and b!2248908 (= (toChars!5816 (transformation!4223 r!2363)) (toChars!5816 (transformation!4223 (rule!6523 (h!32046 (t!200587 tokens!456)))))) t!200680) tb!133271))

(declare-fun result!162464 () Bool)

(assert (= result!162464 result!162460))

(assert (=> b!2249554 t!200680))

(declare-fun b_and!176153 () Bool)

(assert (= b_and!176117 (and (=> t!200680 result!162464) b_and!176153)))

(declare-fun t!200682 () Bool)

(declare-fun tb!133273 () Bool)

(assert (=> (and b!2248915 (= (toChars!5816 (transformation!4223 otherR!12)) (toChars!5816 (transformation!4223 (rule!6523 (h!32046 (t!200587 tokens!456)))))) t!200682) tb!133273))

(declare-fun result!162466 () Bool)

(assert (= result!162466 result!162460))

(assert (=> b!2249554 t!200682))

(declare-fun b_and!176155 () Bool)

(assert (= b_and!176123 (and (=> t!200682 result!162466) b_and!176155)))

(declare-fun tb!133275 () Bool)

(declare-fun t!200684 () Bool)

(assert (=> (and b!2248906 (= (toChars!5816 (transformation!4223 (h!32047 rules!1750))) (toChars!5816 (transformation!4223 (rule!6523 (h!32046 (t!200587 tokens!456)))))) t!200684) tb!133275))

(declare-fun result!162468 () Bool)

(assert (= result!162468 result!162460))

(assert (=> b!2249554 t!200684))

(declare-fun b_and!176157 () Bool)

(assert (= b_and!176121 (and (=> t!200684 result!162468) b_and!176157)))

(declare-fun t!200686 () Bool)

(declare-fun tb!133277 () Bool)

(assert (=> (and b!2249169 (= (toChars!5816 (transformation!4223 (rule!6523 (h!32046 (t!200587 tokens!456))))) (toChars!5816 (transformation!4223 (rule!6523 (h!32046 (t!200587 tokens!456)))))) t!200686) tb!133277))

(declare-fun result!162470 () Bool)

(assert (= result!162470 result!162460))

(assert (=> b!2249554 t!200686))

(declare-fun b_and!176159 () Bool)

(assert (= b_and!176113 (and (=> t!200686 result!162470) b_and!176159)))

(declare-fun m!2680493 () Bool)

(assert (=> d!667443 m!2680493))

(declare-fun m!2680495 () Bool)

(assert (=> b!2249554 m!2680495))

(assert (=> b!2249554 m!2680495))

(declare-fun m!2680497 () Bool)

(assert (=> b!2249554 m!2680497))

(declare-fun m!2680499 () Bool)

(assert (=> b!2249555 m!2680499))

(assert (=> b!2249166 d!667443))

(declare-fun b!2249565 () Bool)

(declare-fun e!1439542 () List!26738)

(assert (=> b!2249565 (= e!1439542 (_2!15577 (get!8041 lt!836149)))))

(declare-fun b!2249566 () Bool)

(assert (=> b!2249566 (= e!1439542 (Cons!26644 (h!32045 (list!10215 (charsOf!2611 (_1!15577 (get!8041 lt!836149))))) (++!6488 (t!200586 (list!10215 (charsOf!2611 (_1!15577 (get!8041 lt!836149))))) (_2!15577 (get!8041 lt!836149)))))))

(declare-fun b!2249567 () Bool)

(declare-fun res!961275 () Bool)

(declare-fun e!1439543 () Bool)

(assert (=> b!2249567 (=> (not res!961275) (not e!1439543))))

(declare-fun lt!836267 () List!26738)

(assert (=> b!2249567 (= res!961275 (= (size!20845 lt!836267) (+ (size!20845 (list!10215 (charsOf!2611 (_1!15577 (get!8041 lt!836149))))) (size!20845 (_2!15577 (get!8041 lt!836149))))))))

(declare-fun d!667447 () Bool)

(assert (=> d!667447 e!1439543))

(declare-fun res!961276 () Bool)

(assert (=> d!667447 (=> (not res!961276) (not e!1439543))))

(declare-fun content!3549 (List!26738) (InoxSet C!13288))

(assert (=> d!667447 (= res!961276 (= (content!3549 lt!836267) ((_ map or) (content!3549 (list!10215 (charsOf!2611 (_1!15577 (get!8041 lt!836149))))) (content!3549 (_2!15577 (get!8041 lt!836149))))))))

(assert (=> d!667447 (= lt!836267 e!1439542)))

(declare-fun c!357793 () Bool)

(assert (=> d!667447 (= c!357793 ((_ is Nil!26644) (list!10215 (charsOf!2611 (_1!15577 (get!8041 lt!836149))))))))

(assert (=> d!667447 (= (++!6488 (list!10215 (charsOf!2611 (_1!15577 (get!8041 lt!836149)))) (_2!15577 (get!8041 lt!836149))) lt!836267)))

(declare-fun b!2249568 () Bool)

(assert (=> b!2249568 (= e!1439543 (or (not (= (_2!15577 (get!8041 lt!836149)) Nil!26644)) (= lt!836267 (list!10215 (charsOf!2611 (_1!15577 (get!8041 lt!836149)))))))))

(assert (= (and d!667447 c!357793) b!2249565))

(assert (= (and d!667447 (not c!357793)) b!2249566))

(assert (= (and d!667447 res!961276) b!2249567))

(assert (= (and b!2249567 res!961275) b!2249568))

(declare-fun m!2680503 () Bool)

(assert (=> b!2249566 m!2680503))

(declare-fun m!2680505 () Bool)

(assert (=> b!2249567 m!2680505))

(assert (=> b!2249567 m!2680073))

(declare-fun m!2680507 () Bool)

(assert (=> b!2249567 m!2680507))

(assert (=> b!2249567 m!2680067))

(declare-fun m!2680509 () Bool)

(assert (=> d!667447 m!2680509))

(assert (=> d!667447 m!2680073))

(declare-fun m!2680511 () Bool)

(assert (=> d!667447 m!2680511))

(declare-fun m!2680513 () Bool)

(assert (=> d!667447 m!2680513))

(assert (=> b!2249089 d!667447))

(assert (=> b!2249089 d!667337))

(assert (=> b!2249089 d!667339))

(assert (=> b!2249089 d!667341))

(declare-fun bs!454990 () Bool)

(declare-fun d!667451 () Bool)

(assert (= bs!454990 (and d!667451 d!667327)))

(declare-fun lambda!85205 () Int)

(assert (=> bs!454990 (= (and (= (toChars!5816 (transformation!4223 otherR!12)) (toChars!5816 (transformation!4223 (h!32047 rules!1750)))) (= (toValue!5957 (transformation!4223 otherR!12)) (toValue!5957 (transformation!4223 (h!32047 rules!1750))))) (= lambda!85205 lambda!85195))))

(declare-fun bs!454991 () Bool)

(assert (= bs!454991 (and d!667451 d!667379)))

(assert (=> bs!454991 (= (and (= (toChars!5816 (transformation!4223 otherR!12)) (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456))))) (= (toValue!5957 (transformation!4223 otherR!12)) (toValue!5957 (transformation!4223 (rule!6523 (h!32046 tokens!456)))))) (= lambda!85205 lambda!85200))))

(assert (=> d!667451 true))

(assert (=> d!667451 (< (dynLambda!11583 order!14905 (toChars!5816 (transformation!4223 otherR!12))) (dynLambda!11584 order!14907 lambda!85205))))

(assert (=> d!667451 true))

(assert (=> d!667451 (< (dynLambda!11581 order!14901 (toValue!5957 (transformation!4223 otherR!12))) (dynLambda!11584 order!14907 lambda!85205))))

(assert (=> d!667451 (= (semiInverseModEq!1703 (toChars!5816 (transformation!4223 otherR!12)) (toValue!5957 (transformation!4223 otherR!12))) (Forall!1062 lambda!85205))))

(declare-fun bs!454992 () Bool)

(assert (= bs!454992 d!667451))

(declare-fun m!2680515 () Bool)

(assert (=> bs!454992 m!2680515))

(assert (=> d!667225 d!667451))

(assert (=> d!667191 d!667227))

(declare-fun d!667453 () Bool)

(declare-fun lt!836268 () Int)

(assert (=> d!667453 (>= lt!836268 0)))

(declare-fun e!1439544 () Int)

(assert (=> d!667453 (= lt!836268 e!1439544)))

(declare-fun c!357794 () Bool)

(assert (=> d!667453 (= c!357794 ((_ is Nil!26644) (list!10215 (charsOf!2611 (head!4786 tokens!456)))))))

(assert (=> d!667453 (= (size!20845 (list!10215 (charsOf!2611 (head!4786 tokens!456)))) lt!836268)))

(declare-fun b!2249569 () Bool)

(assert (=> b!2249569 (= e!1439544 0)))

(declare-fun b!2249570 () Bool)

(assert (=> b!2249570 (= e!1439544 (+ 1 (size!20845 (t!200586 (list!10215 (charsOf!2611 (head!4786 tokens!456)))))))))

(assert (= (and d!667453 c!357794) b!2249569))

(assert (= (and d!667453 (not c!357794)) b!2249570))

(declare-fun m!2680517 () Bool)

(assert (=> b!2249570 m!2680517))

(assert (=> d!667201 d!667453))

(assert (=> d!667201 d!667235))

(declare-fun d!667455 () Bool)

(declare-fun lt!836271 () Int)

(assert (=> d!667455 (= lt!836271 (size!20845 (list!10217 (c!357684 (charsOf!2611 (head!4786 tokens!456))))))))

(assert (=> d!667455 (= lt!836271 (ite ((_ is Empty!8594) (c!357684 (charsOf!2611 (head!4786 tokens!456)))) 0 (ite ((_ is Leaf!12691) (c!357684 (charsOf!2611 (head!4786 tokens!456)))) (csize!17419 (c!357684 (charsOf!2611 (head!4786 tokens!456)))) (csize!17418 (c!357684 (charsOf!2611 (head!4786 tokens!456)))))))))

(assert (=> d!667455 (= (size!20846 (c!357684 (charsOf!2611 (head!4786 tokens!456)))) lt!836271)))

(declare-fun bs!454993 () Bool)

(assert (= bs!454993 d!667455))

(assert (=> bs!454993 m!2680019))

(assert (=> bs!454993 m!2680019))

(declare-fun m!2680519 () Bool)

(assert (=> bs!454993 m!2680519))

(assert (=> d!667201 d!667455))

(declare-fun d!667457 () Bool)

(assert (=> d!667457 (= (isEmpty!15017 (tail!3244 (list!10215 (charsOf!2611 (head!4786 tokens!456))))) ((_ is Nil!26644) (tail!3244 (list!10215 (charsOf!2611 (head!4786 tokens!456))))))))

(assert (=> b!2249035 d!667457))

(declare-fun d!667459 () Bool)

(assert (=> d!667459 (= (tail!3244 (list!10215 (charsOf!2611 (head!4786 tokens!456)))) (t!200586 (list!10215 (charsOf!2611 (head!4786 tokens!456)))))))

(assert (=> b!2249035 d!667459))

(declare-fun d!667461 () Bool)

(declare-fun lt!836272 () Int)

(assert (=> d!667461 (>= lt!836272 0)))

(declare-fun e!1439545 () Int)

(assert (=> d!667461 (= lt!836272 e!1439545)))

(declare-fun c!357795 () Bool)

(assert (=> d!667461 (= c!357795 ((_ is Nil!26644) input!1722))))

(assert (=> d!667461 (= (size!20845 input!1722) lt!836272)))

(declare-fun b!2249571 () Bool)

(assert (=> b!2249571 (= e!1439545 0)))

(declare-fun b!2249572 () Bool)

(assert (=> b!2249572 (= e!1439545 (+ 1 (size!20845 (t!200586 input!1722))))))

(assert (= (and d!667461 c!357795) b!2249571))

(assert (= (and d!667461 (not c!357795)) b!2249572))

(declare-fun m!2680521 () Bool)

(assert (=> b!2249572 m!2680521))

(assert (=> b!2249127 d!667461))

(assert (=> b!2249127 d!667205))

(declare-fun d!667463 () Bool)

(declare-fun e!1439547 () Bool)

(assert (=> d!667463 e!1439547))

(declare-fun c!357797 () Bool)

(assert (=> d!667463 (= c!357797 ((_ is EmptyExpr!6571) (derivativeStep!1463 (regex!4223 r!2363) (head!4787 (list!10215 (charsOf!2611 (head!4786 tokens!456)))))))))

(declare-fun lt!836273 () Bool)

(declare-fun e!1439552 () Bool)

(assert (=> d!667463 (= lt!836273 e!1439552)))

(declare-fun c!357798 () Bool)

(assert (=> d!667463 (= c!357798 (isEmpty!15017 (tail!3244 (list!10215 (charsOf!2611 (head!4786 tokens!456))))))))

(assert (=> d!667463 (validRegex!2455 (derivativeStep!1463 (regex!4223 r!2363) (head!4787 (list!10215 (charsOf!2611 (head!4786 tokens!456))))))))

(assert (=> d!667463 (= (matchR!2832 (derivativeStep!1463 (regex!4223 r!2363) (head!4787 (list!10215 (charsOf!2611 (head!4786 tokens!456))))) (tail!3244 (list!10215 (charsOf!2611 (head!4786 tokens!456))))) lt!836273)))

(declare-fun b!2249573 () Bool)

(declare-fun e!1439548 () Bool)

(assert (=> b!2249573 (= e!1439548 (= (head!4787 (tail!3244 (list!10215 (charsOf!2611 (head!4786 tokens!456))))) (c!357685 (derivativeStep!1463 (regex!4223 r!2363) (head!4787 (list!10215 (charsOf!2611 (head!4786 tokens!456))))))))))

(declare-fun b!2249574 () Bool)

(declare-fun res!961279 () Bool)

(declare-fun e!1439549 () Bool)

(assert (=> b!2249574 (=> res!961279 e!1439549)))

(assert (=> b!2249574 (= res!961279 (not (isEmpty!15017 (tail!3244 (tail!3244 (list!10215 (charsOf!2611 (head!4786 tokens!456))))))))))

(declare-fun b!2249575 () Bool)

(declare-fun e!1439550 () Bool)

(assert (=> b!2249575 (= e!1439547 e!1439550)))

(declare-fun c!357796 () Bool)

(assert (=> b!2249575 (= c!357796 ((_ is EmptyLang!6571) (derivativeStep!1463 (regex!4223 r!2363) (head!4787 (list!10215 (charsOf!2611 (head!4786 tokens!456)))))))))

(declare-fun b!2249576 () Bool)

(declare-fun e!1439551 () Bool)

(assert (=> b!2249576 (= e!1439551 e!1439549)))

(declare-fun res!961277 () Bool)

(assert (=> b!2249576 (=> res!961277 e!1439549)))

(declare-fun call!135527 () Bool)

(assert (=> b!2249576 (= res!961277 call!135527)))

(declare-fun b!2249577 () Bool)

(assert (=> b!2249577 (= e!1439550 (not lt!836273))))

(declare-fun b!2249578 () Bool)

(assert (=> b!2249578 (= e!1439552 (matchR!2832 (derivativeStep!1463 (derivativeStep!1463 (regex!4223 r!2363) (head!4787 (list!10215 (charsOf!2611 (head!4786 tokens!456))))) (head!4787 (tail!3244 (list!10215 (charsOf!2611 (head!4786 tokens!456)))))) (tail!3244 (tail!3244 (list!10215 (charsOf!2611 (head!4786 tokens!456)))))))))

(declare-fun b!2249579 () Bool)

(declare-fun res!961283 () Bool)

(declare-fun e!1439546 () Bool)

(assert (=> b!2249579 (=> res!961283 e!1439546)))

(assert (=> b!2249579 (= res!961283 e!1439548)))

(declare-fun res!961281 () Bool)

(assert (=> b!2249579 (=> (not res!961281) (not e!1439548))))

(assert (=> b!2249579 (= res!961281 lt!836273)))

(declare-fun b!2249580 () Bool)

(assert (=> b!2249580 (= e!1439549 (not (= (head!4787 (tail!3244 (list!10215 (charsOf!2611 (head!4786 tokens!456))))) (c!357685 (derivativeStep!1463 (regex!4223 r!2363) (head!4787 (list!10215 (charsOf!2611 (head!4786 tokens!456)))))))))))

(declare-fun bm!135522 () Bool)

(assert (=> bm!135522 (= call!135527 (isEmpty!15017 (tail!3244 (list!10215 (charsOf!2611 (head!4786 tokens!456))))))))

(declare-fun b!2249581 () Bool)

(assert (=> b!2249581 (= e!1439552 (nullable!1801 (derivativeStep!1463 (regex!4223 r!2363) (head!4787 (list!10215 (charsOf!2611 (head!4786 tokens!456)))))))))

(declare-fun b!2249582 () Bool)

(assert (=> b!2249582 (= e!1439547 (= lt!836273 call!135527))))

(declare-fun b!2249583 () Bool)

(declare-fun res!961284 () Bool)

(assert (=> b!2249583 (=> (not res!961284) (not e!1439548))))

(assert (=> b!2249583 (= res!961284 (isEmpty!15017 (tail!3244 (tail!3244 (list!10215 (charsOf!2611 (head!4786 tokens!456)))))))))

(declare-fun b!2249584 () Bool)

(declare-fun res!961280 () Bool)

(assert (=> b!2249584 (=> res!961280 e!1439546)))

(assert (=> b!2249584 (= res!961280 (not ((_ is ElementMatch!6571) (derivativeStep!1463 (regex!4223 r!2363) (head!4787 (list!10215 (charsOf!2611 (head!4786 tokens!456))))))))))

(assert (=> b!2249584 (= e!1439550 e!1439546)))

(declare-fun b!2249585 () Bool)

(declare-fun res!961278 () Bool)

(assert (=> b!2249585 (=> (not res!961278) (not e!1439548))))

(assert (=> b!2249585 (= res!961278 (not call!135527))))

(declare-fun b!2249586 () Bool)

(assert (=> b!2249586 (= e!1439546 e!1439551)))

(declare-fun res!961282 () Bool)

(assert (=> b!2249586 (=> (not res!961282) (not e!1439551))))

(assert (=> b!2249586 (= res!961282 (not lt!836273))))

(assert (= (and d!667463 c!357798) b!2249581))

(assert (= (and d!667463 (not c!357798)) b!2249578))

(assert (= (and d!667463 c!357797) b!2249582))

(assert (= (and d!667463 (not c!357797)) b!2249575))

(assert (= (and b!2249575 c!357796) b!2249577))

(assert (= (and b!2249575 (not c!357796)) b!2249584))

(assert (= (and b!2249584 (not res!961280)) b!2249579))

(assert (= (and b!2249579 res!961281) b!2249585))

(assert (= (and b!2249585 res!961278) b!2249583))

(assert (= (and b!2249583 res!961284) b!2249573))

(assert (= (and b!2249579 (not res!961283)) b!2249586))

(assert (= (and b!2249586 res!961282) b!2249576))

(assert (= (and b!2249576 (not res!961277)) b!2249574))

(assert (= (and b!2249574 (not res!961279)) b!2249580))

(assert (= (or b!2249582 b!2249576 b!2249585) bm!135522))

(assert (=> b!2249581 m!2680013))

(declare-fun m!2680523 () Bool)

(assert (=> b!2249581 m!2680523))

(assert (=> b!2249574 m!2680005))

(declare-fun m!2680525 () Bool)

(assert (=> b!2249574 m!2680525))

(assert (=> b!2249574 m!2680525))

(declare-fun m!2680527 () Bool)

(assert (=> b!2249574 m!2680527))

(assert (=> b!2249573 m!2680005))

(declare-fun m!2680529 () Bool)

(assert (=> b!2249573 m!2680529))

(assert (=> b!2249580 m!2680005))

(assert (=> b!2249580 m!2680529))

(assert (=> bm!135522 m!2680005))

(assert (=> bm!135522 m!2680007))

(assert (=> b!2249578 m!2680005))

(assert (=> b!2249578 m!2680529))

(assert (=> b!2249578 m!2680013))

(assert (=> b!2249578 m!2680529))

(declare-fun m!2680531 () Bool)

(assert (=> b!2249578 m!2680531))

(assert (=> b!2249578 m!2680005))

(assert (=> b!2249578 m!2680525))

(assert (=> b!2249578 m!2680531))

(assert (=> b!2249578 m!2680525))

(declare-fun m!2680533 () Bool)

(assert (=> b!2249578 m!2680533))

(assert (=> d!667463 m!2680005))

(assert (=> d!667463 m!2680007))

(assert (=> d!667463 m!2680013))

(declare-fun m!2680535 () Bool)

(assert (=> d!667463 m!2680535))

(assert (=> b!2249583 m!2680005))

(assert (=> b!2249583 m!2680525))

(assert (=> b!2249583 m!2680525))

(assert (=> b!2249583 m!2680527))

(assert (=> b!2249039 d!667463))

(declare-fun b!2249607 () Bool)

(declare-fun c!357812 () Bool)

(assert (=> b!2249607 (= c!357812 (nullable!1801 (regOne!13654 (regex!4223 r!2363))))))

(declare-fun e!1439564 () Regex!6571)

(declare-fun e!1439565 () Regex!6571)

(assert (=> b!2249607 (= e!1439564 e!1439565)))

(declare-fun b!2249608 () Bool)

(declare-fun call!135537 () Regex!6571)

(assert (=> b!2249608 (= e!1439565 (Union!6571 (Concat!10957 call!135537 (regTwo!13654 (regex!4223 r!2363))) EmptyLang!6571))))

(declare-fun b!2249610 () Bool)

(declare-fun call!135536 () Regex!6571)

(assert (=> b!2249610 (= e!1439564 (Concat!10957 call!135536 (regex!4223 r!2363)))))

(declare-fun b!2249611 () Bool)

(declare-fun e!1439566 () Regex!6571)

(declare-fun e!1439567 () Regex!6571)

(assert (=> b!2249611 (= e!1439566 e!1439567)))

(declare-fun c!357811 () Bool)

(assert (=> b!2249611 (= c!357811 ((_ is ElementMatch!6571) (regex!4223 r!2363)))))

(declare-fun bm!135531 () Bool)

(declare-fun call!135538 () Regex!6571)

(assert (=> bm!135531 (= call!135536 call!135538)))

(declare-fun c!357810 () Bool)

(declare-fun c!357813 () Bool)

(declare-fun bm!135532 () Bool)

(assert (=> bm!135532 (= call!135538 (derivativeStep!1463 (ite c!357810 (regOne!13655 (regex!4223 r!2363)) (ite c!357813 (reg!6900 (regex!4223 r!2363)) (regOne!13654 (regex!4223 r!2363)))) (head!4787 (list!10215 (charsOf!2611 (head!4786 tokens!456))))))))

(declare-fun b!2249612 () Bool)

(declare-fun e!1439563 () Regex!6571)

(assert (=> b!2249612 (= e!1439563 e!1439564)))

(assert (=> b!2249612 (= c!357813 ((_ is Star!6571) (regex!4223 r!2363)))))

(declare-fun call!135539 () Regex!6571)

(declare-fun bm!135533 () Bool)

(assert (=> bm!135533 (= call!135539 (derivativeStep!1463 (ite c!357810 (regTwo!13655 (regex!4223 r!2363)) (regTwo!13654 (regex!4223 r!2363))) (head!4787 (list!10215 (charsOf!2611 (head!4786 tokens!456))))))))

(declare-fun d!667465 () Bool)

(declare-fun lt!836276 () Regex!6571)

(assert (=> d!667465 (validRegex!2455 lt!836276)))

(assert (=> d!667465 (= lt!836276 e!1439566)))

(declare-fun c!357809 () Bool)

(assert (=> d!667465 (= c!357809 (or ((_ is EmptyExpr!6571) (regex!4223 r!2363)) ((_ is EmptyLang!6571) (regex!4223 r!2363))))))

(assert (=> d!667465 (validRegex!2455 (regex!4223 r!2363))))

(assert (=> d!667465 (= (derivativeStep!1463 (regex!4223 r!2363) (head!4787 (list!10215 (charsOf!2611 (head!4786 tokens!456))))) lt!836276)))

(declare-fun b!2249609 () Bool)

(assert (=> b!2249609 (= e!1439567 (ite (= (head!4787 (list!10215 (charsOf!2611 (head!4786 tokens!456)))) (c!357685 (regex!4223 r!2363))) EmptyExpr!6571 EmptyLang!6571))))

(declare-fun b!2249613 () Bool)

(assert (=> b!2249613 (= e!1439563 (Union!6571 call!135538 call!135539))))

(declare-fun b!2249614 () Bool)

(assert (=> b!2249614 (= e!1439566 EmptyLang!6571)))

(declare-fun b!2249615 () Bool)

(assert (=> b!2249615 (= c!357810 ((_ is Union!6571) (regex!4223 r!2363)))))

(assert (=> b!2249615 (= e!1439567 e!1439563)))

(declare-fun b!2249616 () Bool)

(assert (=> b!2249616 (= e!1439565 (Union!6571 (Concat!10957 call!135537 (regTwo!13654 (regex!4223 r!2363))) call!135539))))

(declare-fun bm!135534 () Bool)

(assert (=> bm!135534 (= call!135537 call!135536)))

(assert (= (and d!667465 c!357809) b!2249614))

(assert (= (and d!667465 (not c!357809)) b!2249611))

(assert (= (and b!2249611 c!357811) b!2249609))

(assert (= (and b!2249611 (not c!357811)) b!2249615))

(assert (= (and b!2249615 c!357810) b!2249613))

(assert (= (and b!2249615 (not c!357810)) b!2249612))

(assert (= (and b!2249612 c!357813) b!2249610))

(assert (= (and b!2249612 (not c!357813)) b!2249607))

(assert (= (and b!2249607 c!357812) b!2249616))

(assert (= (and b!2249607 (not c!357812)) b!2249608))

(assert (= (or b!2249616 b!2249608) bm!135534))

(assert (= (or b!2249610 bm!135534) bm!135531))

(assert (= (or b!2249613 bm!135531) bm!135532))

(assert (= (or b!2249613 b!2249616) bm!135533))

(declare-fun m!2680537 () Bool)

(assert (=> b!2249607 m!2680537))

(assert (=> bm!135532 m!2680009))

(declare-fun m!2680539 () Bool)

(assert (=> bm!135532 m!2680539))

(assert (=> bm!135533 m!2680009))

(declare-fun m!2680541 () Bool)

(assert (=> bm!135533 m!2680541))

(declare-fun m!2680543 () Bool)

(assert (=> d!667465 m!2680543))

(assert (=> d!667465 m!2680017))

(assert (=> b!2249039 d!667465))

(assert (=> b!2249039 d!667343))

(assert (=> b!2249039 d!667459))

(declare-fun d!667467 () Bool)

(assert (=> d!667467 (= (inv!36176 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (head!4786 tokens!456)))) (value!134175 (head!4786 tokens!456)))) (isBalanced!2652 (c!357684 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (head!4786 tokens!456)))) (value!134175 (head!4786 tokens!456))))))))

(declare-fun bs!454994 () Bool)

(assert (= bs!454994 d!667467))

(declare-fun m!2680545 () Bool)

(assert (=> bs!454994 m!2680545))

(assert (=> tb!133191 d!667467))

(declare-fun d!667469 () Bool)

(assert (=> d!667469 (= (inv!36170 (tag!4713 (rule!6523 (h!32046 (t!200587 tokens!456))))) (= (mod (str.len (value!134174 (tag!4713 (rule!6523 (h!32046 (t!200587 tokens!456)))))) 2) 0))))

(assert (=> b!2249168 d!667469))

(declare-fun d!667471 () Bool)

(declare-fun res!961285 () Bool)

(declare-fun e!1439568 () Bool)

(assert (=> d!667471 (=> (not res!961285) (not e!1439568))))

(assert (=> d!667471 (= res!961285 (semiInverseModEq!1703 (toChars!5816 (transformation!4223 (rule!6523 (h!32046 (t!200587 tokens!456))))) (toValue!5957 (transformation!4223 (rule!6523 (h!32046 (t!200587 tokens!456)))))))))

(assert (=> d!667471 (= (inv!36173 (transformation!4223 (rule!6523 (h!32046 (t!200587 tokens!456))))) e!1439568)))

(declare-fun b!2249617 () Bool)

(assert (=> b!2249617 (= e!1439568 (equivClasses!1622 (toChars!5816 (transformation!4223 (rule!6523 (h!32046 (t!200587 tokens!456))))) (toValue!5957 (transformation!4223 (rule!6523 (h!32046 (t!200587 tokens!456)))))))))

(assert (= (and d!667471 res!961285) b!2249617))

(declare-fun m!2680547 () Bool)

(assert (=> d!667471 m!2680547))

(declare-fun m!2680549 () Bool)

(assert (=> b!2249617 m!2680549))

(assert (=> b!2249168 d!667471))

(declare-fun d!667473 () Bool)

(declare-fun c!357818 () Bool)

(assert (=> d!667473 (= c!357818 ((_ is Empty!8595) (c!357686 (_1!15578 lt!836104))))))

(declare-fun e!1439573 () List!26739)

(assert (=> d!667473 (= (list!10216 (c!357686 (_1!15578 lt!836104))) e!1439573)))

(declare-fun b!2249627 () Bool)

(declare-fun e!1439574 () List!26739)

(assert (=> b!2249627 (= e!1439573 e!1439574)))

(declare-fun c!357819 () Bool)

(assert (=> b!2249627 (= c!357819 ((_ is Leaf!12692) (c!357686 (_1!15578 lt!836104))))))

(declare-fun b!2249628 () Bool)

(declare-fun list!10220 (IArray!17195) List!26739)

(assert (=> b!2249628 (= e!1439574 (list!10220 (xs!11537 (c!357686 (_1!15578 lt!836104)))))))

(declare-fun b!2249629 () Bool)

(declare-fun ++!6490 (List!26739 List!26739) List!26739)

(assert (=> b!2249629 (= e!1439574 (++!6490 (list!10216 (left!20243 (c!357686 (_1!15578 lt!836104)))) (list!10216 (right!20573 (c!357686 (_1!15578 lt!836104))))))))

(declare-fun b!2249626 () Bool)

(assert (=> b!2249626 (= e!1439573 Nil!26645)))

(assert (= (and d!667473 c!357818) b!2249626))

(assert (= (and d!667473 (not c!357818)) b!2249627))

(assert (= (and b!2249627 c!357819) b!2249628))

(assert (= (and b!2249627 (not c!357819)) b!2249629))

(declare-fun m!2680551 () Bool)

(assert (=> b!2249628 m!2680551))

(declare-fun m!2680553 () Bool)

(assert (=> b!2249629 m!2680553))

(declare-fun m!2680555 () Bool)

(assert (=> b!2249629 m!2680555))

(assert (=> b!2249629 m!2680553))

(assert (=> b!2249629 m!2680555))

(declare-fun m!2680557 () Bool)

(assert (=> b!2249629 m!2680557))

(assert (=> d!667207 d!667473))

(declare-fun bs!454995 () Bool)

(declare-fun d!667475 () Bool)

(assert (= bs!454995 (and d!667475 d!667327)))

(declare-fun lambda!85206 () Int)

(assert (=> bs!454995 (= (and (= (toChars!5816 (transformation!4223 r!2363)) (toChars!5816 (transformation!4223 (h!32047 rules!1750)))) (= (toValue!5957 (transformation!4223 r!2363)) (toValue!5957 (transformation!4223 (h!32047 rules!1750))))) (= lambda!85206 lambda!85195))))

(declare-fun bs!454996 () Bool)

(assert (= bs!454996 (and d!667475 d!667379)))

(assert (=> bs!454996 (= (and (= (toChars!5816 (transformation!4223 r!2363)) (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456))))) (= (toValue!5957 (transformation!4223 r!2363)) (toValue!5957 (transformation!4223 (rule!6523 (h!32046 tokens!456)))))) (= lambda!85206 lambda!85200))))

(declare-fun bs!454997 () Bool)

(assert (= bs!454997 (and d!667475 d!667451)))

(assert (=> bs!454997 (= (and (= (toChars!5816 (transformation!4223 r!2363)) (toChars!5816 (transformation!4223 otherR!12))) (= (toValue!5957 (transformation!4223 r!2363)) (toValue!5957 (transformation!4223 otherR!12)))) (= lambda!85206 lambda!85205))))

(assert (=> d!667475 true))

(assert (=> d!667475 (< (dynLambda!11583 order!14905 (toChars!5816 (transformation!4223 r!2363))) (dynLambda!11584 order!14907 lambda!85206))))

(assert (=> d!667475 true))

(assert (=> d!667475 (< (dynLambda!11581 order!14901 (toValue!5957 (transformation!4223 r!2363))) (dynLambda!11584 order!14907 lambda!85206))))

(assert (=> d!667475 (= (semiInverseModEq!1703 (toChars!5816 (transformation!4223 r!2363)) (toValue!5957 (transformation!4223 r!2363))) (Forall!1062 lambda!85206))))

(declare-fun bs!454998 () Bool)

(assert (= bs!454998 d!667475))

(declare-fun m!2680559 () Bool)

(assert (=> bs!454998 m!2680559))

(assert (=> d!667231 d!667475))

(assert (=> d!667255 d!667385))

(declare-fun b!2249630 () Bool)

(declare-fun e!1439576 () Int)

(assert (=> b!2249630 (= e!1439576 0)))

(declare-fun b!2249633 () Bool)

(declare-fun e!1439575 () Int)

(assert (=> b!2249633 (= e!1439575 (- 1))))

(declare-fun d!667477 () Bool)

(declare-fun lt!836277 () Int)

(assert (=> d!667477 (>= lt!836277 0)))

(assert (=> d!667477 (= lt!836277 e!1439576)))

(declare-fun c!357820 () Bool)

(assert (=> d!667477 (= c!357820 (and ((_ is Cons!26646) (t!200588 rules!1750)) (= (h!32047 (t!200588 rules!1750)) r!2363)))))

(assert (=> d!667477 (contains!4572 (t!200588 rules!1750) r!2363)))

(assert (=> d!667477 (= (getIndex!244 (t!200588 rules!1750) r!2363) lt!836277)))

(declare-fun b!2249632 () Bool)

(assert (=> b!2249632 (= e!1439575 (+ 1 (getIndex!244 (t!200588 (t!200588 rules!1750)) r!2363)))))

(declare-fun b!2249631 () Bool)

(assert (=> b!2249631 (= e!1439576 e!1439575)))

(declare-fun c!357821 () Bool)

(assert (=> b!2249631 (= c!357821 (and ((_ is Cons!26646) (t!200588 rules!1750)) (not (= (h!32047 (t!200588 rules!1750)) r!2363))))))

(assert (= (and d!667477 c!357820) b!2249630))

(assert (= (and d!667477 (not c!357820)) b!2249631))

(assert (= (and b!2249631 c!357821) b!2249632))

(assert (= (and b!2249631 (not c!357821)) b!2249633))

(assert (=> d!667477 m!2680081))

(declare-fun m!2680561 () Bool)

(assert (=> b!2249632 m!2680561))

(assert (=> b!2248964 d!667477))

(declare-fun d!667479 () Bool)

(declare-fun e!1439578 () Bool)

(assert (=> d!667479 e!1439578))

(declare-fun c!357823 () Bool)

(assert (=> d!667479 (= c!357823 ((_ is EmptyExpr!6571) (regex!4223 (rule!6523 (_1!15577 (get!8041 lt!836149))))))))

(declare-fun lt!836278 () Bool)

(declare-fun e!1439583 () Bool)

(assert (=> d!667479 (= lt!836278 e!1439583)))

(declare-fun c!357824 () Bool)

(assert (=> d!667479 (= c!357824 (isEmpty!15017 (list!10215 (charsOf!2611 (_1!15577 (get!8041 lt!836149))))))))

(assert (=> d!667479 (validRegex!2455 (regex!4223 (rule!6523 (_1!15577 (get!8041 lt!836149)))))))

(assert (=> d!667479 (= (matchR!2832 (regex!4223 (rule!6523 (_1!15577 (get!8041 lt!836149)))) (list!10215 (charsOf!2611 (_1!15577 (get!8041 lt!836149))))) lt!836278)))

(declare-fun b!2249634 () Bool)

(declare-fun e!1439579 () Bool)

(assert (=> b!2249634 (= e!1439579 (= (head!4787 (list!10215 (charsOf!2611 (_1!15577 (get!8041 lt!836149))))) (c!357685 (regex!4223 (rule!6523 (_1!15577 (get!8041 lt!836149)))))))))

(declare-fun b!2249635 () Bool)

(declare-fun res!961288 () Bool)

(declare-fun e!1439580 () Bool)

(assert (=> b!2249635 (=> res!961288 e!1439580)))

(assert (=> b!2249635 (= res!961288 (not (isEmpty!15017 (tail!3244 (list!10215 (charsOf!2611 (_1!15577 (get!8041 lt!836149))))))))))

(declare-fun b!2249636 () Bool)

(declare-fun e!1439581 () Bool)

(assert (=> b!2249636 (= e!1439578 e!1439581)))

(declare-fun c!357822 () Bool)

(assert (=> b!2249636 (= c!357822 ((_ is EmptyLang!6571) (regex!4223 (rule!6523 (_1!15577 (get!8041 lt!836149))))))))

(declare-fun b!2249637 () Bool)

(declare-fun e!1439582 () Bool)

(assert (=> b!2249637 (= e!1439582 e!1439580)))

(declare-fun res!961286 () Bool)

(assert (=> b!2249637 (=> res!961286 e!1439580)))

(declare-fun call!135540 () Bool)

(assert (=> b!2249637 (= res!961286 call!135540)))

(declare-fun b!2249638 () Bool)

(assert (=> b!2249638 (= e!1439581 (not lt!836278))))

(declare-fun b!2249639 () Bool)

(assert (=> b!2249639 (= e!1439583 (matchR!2832 (derivativeStep!1463 (regex!4223 (rule!6523 (_1!15577 (get!8041 lt!836149)))) (head!4787 (list!10215 (charsOf!2611 (_1!15577 (get!8041 lt!836149)))))) (tail!3244 (list!10215 (charsOf!2611 (_1!15577 (get!8041 lt!836149)))))))))

(declare-fun b!2249640 () Bool)

(declare-fun res!961292 () Bool)

(declare-fun e!1439577 () Bool)

(assert (=> b!2249640 (=> res!961292 e!1439577)))

(assert (=> b!2249640 (= res!961292 e!1439579)))

(declare-fun res!961290 () Bool)

(assert (=> b!2249640 (=> (not res!961290) (not e!1439579))))

(assert (=> b!2249640 (= res!961290 lt!836278)))

(declare-fun b!2249641 () Bool)

(assert (=> b!2249641 (= e!1439580 (not (= (head!4787 (list!10215 (charsOf!2611 (_1!15577 (get!8041 lt!836149))))) (c!357685 (regex!4223 (rule!6523 (_1!15577 (get!8041 lt!836149))))))))))

(declare-fun bm!135535 () Bool)

(assert (=> bm!135535 (= call!135540 (isEmpty!15017 (list!10215 (charsOf!2611 (_1!15577 (get!8041 lt!836149))))))))

(declare-fun b!2249642 () Bool)

(assert (=> b!2249642 (= e!1439583 (nullable!1801 (regex!4223 (rule!6523 (_1!15577 (get!8041 lt!836149))))))))

(declare-fun b!2249643 () Bool)

(assert (=> b!2249643 (= e!1439578 (= lt!836278 call!135540))))

(declare-fun b!2249644 () Bool)

(declare-fun res!961293 () Bool)

(assert (=> b!2249644 (=> (not res!961293) (not e!1439579))))

(assert (=> b!2249644 (= res!961293 (isEmpty!15017 (tail!3244 (list!10215 (charsOf!2611 (_1!15577 (get!8041 lt!836149)))))))))

(declare-fun b!2249645 () Bool)

(declare-fun res!961289 () Bool)

(assert (=> b!2249645 (=> res!961289 e!1439577)))

(assert (=> b!2249645 (= res!961289 (not ((_ is ElementMatch!6571) (regex!4223 (rule!6523 (_1!15577 (get!8041 lt!836149)))))))))

(assert (=> b!2249645 (= e!1439581 e!1439577)))

(declare-fun b!2249646 () Bool)

(declare-fun res!961287 () Bool)

(assert (=> b!2249646 (=> (not res!961287) (not e!1439579))))

(assert (=> b!2249646 (= res!961287 (not call!135540))))

(declare-fun b!2249647 () Bool)

(assert (=> b!2249647 (= e!1439577 e!1439582)))

(declare-fun res!961291 () Bool)

(assert (=> b!2249647 (=> (not res!961291) (not e!1439582))))

(assert (=> b!2249647 (= res!961291 (not lt!836278))))

(assert (= (and d!667479 c!357824) b!2249642))

(assert (= (and d!667479 (not c!357824)) b!2249639))

(assert (= (and d!667479 c!357823) b!2249643))

(assert (= (and d!667479 (not c!357823)) b!2249636))

(assert (= (and b!2249636 c!357822) b!2249638))

(assert (= (and b!2249636 (not c!357822)) b!2249645))

(assert (= (and b!2249645 (not res!961289)) b!2249640))

(assert (= (and b!2249640 res!961290) b!2249646))

(assert (= (and b!2249646 res!961287) b!2249644))

(assert (= (and b!2249644 res!961293) b!2249634))

(assert (= (and b!2249640 (not res!961292)) b!2249647))

(assert (= (and b!2249647 res!961291) b!2249637))

(assert (= (and b!2249637 (not res!961286)) b!2249635))

(assert (= (and b!2249635 (not res!961288)) b!2249641))

(assert (= (or b!2249643 b!2249637 b!2249646) bm!135535))

(declare-fun m!2680563 () Bool)

(assert (=> b!2249642 m!2680563))

(assert (=> b!2249635 m!2680073))

(declare-fun m!2680565 () Bool)

(assert (=> b!2249635 m!2680565))

(assert (=> b!2249635 m!2680565))

(declare-fun m!2680567 () Bool)

(assert (=> b!2249635 m!2680567))

(assert (=> b!2249634 m!2680073))

(declare-fun m!2680569 () Bool)

(assert (=> b!2249634 m!2680569))

(assert (=> b!2249641 m!2680073))

(assert (=> b!2249641 m!2680569))

(assert (=> bm!135535 m!2680073))

(declare-fun m!2680571 () Bool)

(assert (=> bm!135535 m!2680571))

(assert (=> b!2249639 m!2680073))

(assert (=> b!2249639 m!2680569))

(assert (=> b!2249639 m!2680569))

(declare-fun m!2680573 () Bool)

(assert (=> b!2249639 m!2680573))

(assert (=> b!2249639 m!2680073))

(assert (=> b!2249639 m!2680565))

(assert (=> b!2249639 m!2680573))

(assert (=> b!2249639 m!2680565))

(declare-fun m!2680575 () Bool)

(assert (=> b!2249639 m!2680575))

(assert (=> d!667479 m!2680073))

(assert (=> d!667479 m!2680571))

(declare-fun m!2680577 () Bool)

(assert (=> d!667479 m!2680577))

(assert (=> b!2249644 m!2680073))

(assert (=> b!2249644 m!2680565))

(assert (=> b!2249644 m!2680565))

(assert (=> b!2249644 m!2680567))

(assert (=> b!2249083 d!667479))

(assert (=> b!2249083 d!667341))

(assert (=> b!2249083 d!667337))

(assert (=> b!2249083 d!667339))

(declare-fun d!667481 () Bool)

(assert (=> d!667481 (= (isEmpty!15017 (originalCharacters!4993 (h!32046 tokens!456))) ((_ is Nil!26644) (originalCharacters!4993 (h!32046 tokens!456))))))

(assert (=> d!667187 d!667481))

(declare-fun b!2249648 () Bool)

(declare-fun e!1439584 () Bool)

(declare-fun e!1439585 () Bool)

(assert (=> b!2249648 (= e!1439584 e!1439585)))

(declare-fun res!961296 () Bool)

(assert (=> b!2249648 (=> (not res!961296) (not e!1439585))))

(assert (=> b!2249648 (= res!961296 (not ((_ is Nil!26644) (tail!3244 input!1722))))))

(declare-fun d!667483 () Bool)

(declare-fun e!1439586 () Bool)

(assert (=> d!667483 e!1439586))

(declare-fun res!961294 () Bool)

(assert (=> d!667483 (=> res!961294 e!1439586)))

(declare-fun lt!836279 () Bool)

(assert (=> d!667483 (= res!961294 (not lt!836279))))

(assert (=> d!667483 (= lt!836279 e!1439584)))

(declare-fun res!961297 () Bool)

(assert (=> d!667483 (=> res!961297 e!1439584)))

(assert (=> d!667483 (= res!961297 ((_ is Nil!26644) (tail!3244 otherP!12)))))

(assert (=> d!667483 (= (isPrefix!2213 (tail!3244 otherP!12) (tail!3244 input!1722)) lt!836279)))

(declare-fun b!2249651 () Bool)

(assert (=> b!2249651 (= e!1439586 (>= (size!20845 (tail!3244 input!1722)) (size!20845 (tail!3244 otherP!12))))))

(declare-fun b!2249649 () Bool)

(declare-fun res!961295 () Bool)

(assert (=> b!2249649 (=> (not res!961295) (not e!1439585))))

(assert (=> b!2249649 (= res!961295 (= (head!4787 (tail!3244 otherP!12)) (head!4787 (tail!3244 input!1722))))))

(declare-fun b!2249650 () Bool)

(assert (=> b!2249650 (= e!1439585 (isPrefix!2213 (tail!3244 (tail!3244 otherP!12)) (tail!3244 (tail!3244 input!1722))))))

(assert (= (and d!667483 (not res!961297)) b!2249648))

(assert (= (and b!2249648 res!961296) b!2249649))

(assert (= (and b!2249649 res!961295) b!2249650))

(assert (= (and d!667483 (not res!961294)) b!2249651))

(assert (=> b!2249651 m!2680099))

(declare-fun m!2680579 () Bool)

(assert (=> b!2249651 m!2680579))

(assert (=> b!2249651 m!2680097))

(declare-fun m!2680581 () Bool)

(assert (=> b!2249651 m!2680581))

(assert (=> b!2249649 m!2680097))

(declare-fun m!2680583 () Bool)

(assert (=> b!2249649 m!2680583))

(assert (=> b!2249649 m!2680099))

(declare-fun m!2680585 () Bool)

(assert (=> b!2249649 m!2680585))

(assert (=> b!2249650 m!2680097))

(declare-fun m!2680587 () Bool)

(assert (=> b!2249650 m!2680587))

(assert (=> b!2249650 m!2680099))

(declare-fun m!2680589 () Bool)

(assert (=> b!2249650 m!2680589))

(assert (=> b!2249650 m!2680587))

(assert (=> b!2249650 m!2680589))

(declare-fun m!2680591 () Bool)

(assert (=> b!2249650 m!2680591))

(assert (=> b!2249126 d!667483))

(declare-fun d!667485 () Bool)

(assert (=> d!667485 (= (tail!3244 otherP!12) (t!200586 otherP!12))))

(assert (=> b!2249126 d!667485))

(declare-fun d!667487 () Bool)

(assert (=> d!667487 (= (tail!3244 input!1722) (t!200586 input!1722))))

(assert (=> b!2249126 d!667487))

(declare-fun d!667489 () Bool)

(declare-fun lt!836280 () Int)

(assert (=> d!667489 (>= lt!836280 0)))

(declare-fun e!1439587 () Int)

(assert (=> d!667489 (= lt!836280 e!1439587)))

(declare-fun c!357825 () Bool)

(assert (=> d!667489 (= c!357825 ((_ is Nil!26644) (_2!15577 (get!8041 lt!836149))))))

(assert (=> d!667489 (= (size!20845 (_2!15577 (get!8041 lt!836149))) lt!836280)))

(declare-fun b!2249652 () Bool)

(assert (=> b!2249652 (= e!1439587 0)))

(declare-fun b!2249653 () Bool)

(assert (=> b!2249653 (= e!1439587 (+ 1 (size!20845 (t!200586 (_2!15577 (get!8041 lt!836149))))))))

(assert (= (and d!667489 c!357825) b!2249652))

(assert (= (and d!667489 (not c!357825)) b!2249653))

(declare-fun m!2680593 () Bool)

(assert (=> b!2249653 m!2680593))

(assert (=> b!2249086 d!667489))

(assert (=> b!2249086 d!667341))

(assert (=> b!2249086 d!667461))

(declare-fun d!667491 () Bool)

(declare-fun lt!836283 () Int)

(assert (=> d!667491 (= lt!836283 (size!20850 (list!10214 (_1!15578 lt!836125))))))

(declare-fun size!20851 (Conc!8595) Int)

(assert (=> d!667491 (= lt!836283 (size!20851 (c!357686 (_1!15578 lt!836125))))))

(assert (=> d!667491 (= (size!20847 (_1!15578 lt!836125)) lt!836283)))

(declare-fun bs!454999 () Bool)

(assert (= bs!454999 d!667491))

(assert (=> bs!454999 m!2679981))

(assert (=> bs!454999 m!2679981))

(declare-fun m!2680595 () Bool)

(assert (=> bs!454999 m!2680595))

(declare-fun m!2680597 () Bool)

(assert (=> bs!454999 m!2680597))

(assert (=> d!667211 d!667491))

(declare-datatypes ((tuple2!26142 0))(
  ( (tuple2!26143 (_1!15581 Token!7924) (_2!15581 BalanceConc!16916)) )
))
(declare-datatypes ((Option!5197 0))(
  ( (None!5196) (Some!5196 (v!30214 tuple2!26142)) )
))
(declare-fun lt!836362 () Option!5197)

(declare-fun lt!836377 () tuple2!26136)

(declare-fun b!2249668 () Bool)

(declare-fun lexRec!513 (LexerInterface!3820 List!26740 BalanceConc!16916) tuple2!26136)

(assert (=> b!2249668 (= lt!836377 (lexRec!513 thiss!16613 rules!1750 (_2!15581 (v!30214 lt!836362))))))

(declare-fun e!1439596 () tuple2!26136)

(declare-fun prepend!983 (BalanceConc!16918 Token!7924) BalanceConc!16918)

(assert (=> b!2249668 (= e!1439596 (tuple2!26137 (prepend!983 (_1!15578 lt!836377) (_1!15581 (v!30214 lt!836362))) (_2!15578 lt!836377)))))

(declare-fun b!2249669 () Bool)

(declare-fun lt!836373 () Option!5197)

(declare-fun lt!836383 () BalanceConc!16916)

(declare-fun e!1439599 () tuple2!26136)

(declare-fun append!676 (BalanceConc!16918 Token!7924) BalanceConc!16918)

(assert (=> b!2249669 (= e!1439599 (lexTailRecV2!722 thiss!16613 rules!1750 (seqFromList!2927 input!1722) lt!836383 (_2!15581 (v!30214 lt!836373)) (append!676 (BalanceConc!16919 Empty!8595) (_1!15581 (v!30214 lt!836373)))))))

(declare-fun lt!836379 () tuple2!26136)

(assert (=> b!2249669 (= lt!836379 (lexRec!513 thiss!16613 rules!1750 (_2!15581 (v!30214 lt!836373))))))

(declare-fun lt!836360 () List!26738)

(assert (=> b!2249669 (= lt!836360 (list!10215 (BalanceConc!16917 Empty!8594)))))

(declare-fun lt!836352 () List!26738)

(assert (=> b!2249669 (= lt!836352 (list!10215 (charsOf!2611 (_1!15581 (v!30214 lt!836373)))))))

(declare-fun lt!836368 () List!26738)

(assert (=> b!2249669 (= lt!836368 (list!10215 (_2!15581 (v!30214 lt!836373))))))

(declare-fun lt!836361 () Unit!39590)

(declare-fun lemmaConcatAssociativity!1338 (List!26738 List!26738 List!26738) Unit!39590)

(assert (=> b!2249669 (= lt!836361 (lemmaConcatAssociativity!1338 lt!836360 lt!836352 lt!836368))))

(assert (=> b!2249669 (= (++!6488 (++!6488 lt!836360 lt!836352) lt!836368) (++!6488 lt!836360 (++!6488 lt!836352 lt!836368)))))

(declare-fun lt!836370 () Unit!39590)

(assert (=> b!2249669 (= lt!836370 lt!836361)))

(declare-fun maxPrefixZipperSequence!848 (LexerInterface!3820 List!26740 BalanceConc!16916) Option!5197)

(assert (=> b!2249669 (= lt!836362 (maxPrefixZipperSequence!848 thiss!16613 rules!1750 (seqFromList!2927 input!1722)))))

(declare-fun c!357833 () Bool)

(assert (=> b!2249669 (= c!357833 ((_ is Some!5196) lt!836362))))

(assert (=> b!2249669 (= (lexRec!513 thiss!16613 rules!1750 (seqFromList!2927 input!1722)) e!1439596)))

(declare-fun lt!836375 () Unit!39590)

(declare-fun Unit!39592 () Unit!39590)

(assert (=> b!2249669 (= lt!836375 Unit!39592)))

(declare-fun lt!836358 () List!26739)

(assert (=> b!2249669 (= lt!836358 (list!10214 (BalanceConc!16919 Empty!8595)))))

(declare-fun lt!836367 () List!26739)

(assert (=> b!2249669 (= lt!836367 (Cons!26645 (_1!15581 (v!30214 lt!836373)) Nil!26645))))

(declare-fun lt!836378 () List!26739)

(assert (=> b!2249669 (= lt!836378 (list!10214 (_1!15578 lt!836379)))))

(declare-fun lt!836366 () Unit!39590)

(declare-fun lemmaConcatAssociativity!1339 (List!26739 List!26739 List!26739) Unit!39590)

(assert (=> b!2249669 (= lt!836366 (lemmaConcatAssociativity!1339 lt!836358 lt!836367 lt!836378))))

(assert (=> b!2249669 (= (++!6490 (++!6490 lt!836358 lt!836367) lt!836378) (++!6490 lt!836358 (++!6490 lt!836367 lt!836378)))))

(declare-fun lt!836355 () Unit!39590)

(assert (=> b!2249669 (= lt!836355 lt!836366)))

(declare-fun lt!836356 () List!26738)

(assert (=> b!2249669 (= lt!836356 (++!6488 (list!10215 (BalanceConc!16917 Empty!8594)) (list!10215 (charsOf!2611 (_1!15581 (v!30214 lt!836373))))))))

(declare-fun lt!836382 () List!26738)

(assert (=> b!2249669 (= lt!836382 (list!10215 (_2!15581 (v!30214 lt!836373))))))

(declare-fun lt!836365 () List!26739)

(assert (=> b!2249669 (= lt!836365 (list!10214 (append!676 (BalanceConc!16919 Empty!8595) (_1!15581 (v!30214 lt!836373)))))))

(declare-fun lt!836364 () Unit!39590)

(declare-fun lemmaLexThenLexPrefix!327 (LexerInterface!3820 List!26740 List!26738 List!26738 List!26739 List!26739 List!26738) Unit!39590)

(assert (=> b!2249669 (= lt!836364 (lemmaLexThenLexPrefix!327 thiss!16613 rules!1750 lt!836356 lt!836382 lt!836365 (list!10214 (_1!15578 lt!836379)) (list!10215 (_2!15578 lt!836379))))))

(assert (=> b!2249669 (= (lexList!1047 thiss!16613 rules!1750 lt!836356) (tuple2!26139 lt!836365 Nil!26644))))

(declare-fun lt!836369 () Unit!39590)

(assert (=> b!2249669 (= lt!836369 lt!836364)))

(declare-fun lt!836374 () BalanceConc!16916)

(declare-fun ++!6491 (BalanceConc!16916 BalanceConc!16916) BalanceConc!16916)

(assert (=> b!2249669 (= lt!836374 (++!6491 (BalanceConc!16917 Empty!8594) (charsOf!2611 (_1!15581 (v!30214 lt!836373)))))))

(declare-fun lt!836363 () Option!5197)

(assert (=> b!2249669 (= lt!836363 (maxPrefixZipperSequence!848 thiss!16613 rules!1750 lt!836374))))

(declare-fun c!357832 () Bool)

(assert (=> b!2249669 (= c!357832 ((_ is Some!5196) lt!836363))))

(declare-fun e!1439597 () tuple2!26136)

(assert (=> b!2249669 (= (lexRec!513 thiss!16613 rules!1750 (++!6491 (BalanceConc!16917 Empty!8594) (charsOf!2611 (_1!15581 (v!30214 lt!836373))))) e!1439597)))

(declare-fun lt!836371 () Unit!39590)

(declare-fun Unit!39593 () Unit!39590)

(assert (=> b!2249669 (= lt!836371 Unit!39593)))

(assert (=> b!2249669 (= lt!836383 (++!6491 (BalanceConc!16917 Empty!8594) (charsOf!2611 (_1!15581 (v!30214 lt!836373)))))))

(declare-fun lt!836384 () List!26738)

(assert (=> b!2249669 (= lt!836384 (list!10215 lt!836383))))

(declare-fun lt!836380 () List!26738)

(assert (=> b!2249669 (= lt!836380 (list!10215 (_2!15581 (v!30214 lt!836373))))))

(declare-fun lt!836381 () Unit!39590)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!443 (List!26738 List!26738) Unit!39590)

(assert (=> b!2249669 (= lt!836381 (lemmaConcatTwoListThenFSndIsSuffix!443 lt!836384 lt!836380))))

(declare-fun isSuffix!749 (List!26738 List!26738) Bool)

(assert (=> b!2249669 (isSuffix!749 lt!836380 (++!6488 lt!836384 lt!836380))))

(declare-fun lt!836372 () Unit!39590)

(assert (=> b!2249669 (= lt!836372 lt!836381)))

(declare-fun b!2249670 () Bool)

(assert (=> b!2249670 (= e!1439596 (tuple2!26137 (BalanceConc!16919 Empty!8595) (seqFromList!2927 input!1722)))))

(declare-fun lt!836357 () tuple2!26136)

(declare-fun b!2249671 () Bool)

(assert (=> b!2249671 (= lt!836357 (lexRec!513 thiss!16613 rules!1750 (_2!15581 (v!30214 lt!836363))))))

(assert (=> b!2249671 (= e!1439597 (tuple2!26137 (prepend!983 (_1!15578 lt!836357) (_1!15581 (v!30214 lt!836363))) (_2!15578 lt!836357)))))

(declare-fun b!2249672 () Bool)

(assert (=> b!2249672 (= e!1439599 (tuple2!26137 (BalanceConc!16919 Empty!8595) (seqFromList!2927 input!1722)))))

(declare-fun b!2249673 () Bool)

(assert (=> b!2249673 (= e!1439597 (tuple2!26137 (BalanceConc!16919 Empty!8595) lt!836374))))

(declare-fun d!667493 () Bool)

(declare-fun e!1439598 () Bool)

(assert (=> d!667493 e!1439598))

(declare-fun res!961300 () Bool)

(assert (=> d!667493 (=> (not res!961300) (not e!1439598))))

(declare-fun lt!836376 () tuple2!26136)

(assert (=> d!667493 (= res!961300 (= (list!10214 (_1!15578 lt!836376)) (list!10214 (_1!15578 (lexRec!513 thiss!16613 rules!1750 (seqFromList!2927 input!1722))))))))

(assert (=> d!667493 (= lt!836376 e!1439599)))

(declare-fun c!357834 () Bool)

(assert (=> d!667493 (= c!357834 ((_ is Some!5196) lt!836373))))

(declare-fun maxPrefixZipperSequenceV2!383 (LexerInterface!3820 List!26740 BalanceConc!16916 BalanceConc!16916) Option!5197)

(assert (=> d!667493 (= lt!836373 (maxPrefixZipperSequenceV2!383 thiss!16613 rules!1750 (seqFromList!2927 input!1722) (seqFromList!2927 input!1722)))))

(declare-fun lt!836359 () Unit!39590)

(declare-fun lt!836354 () Unit!39590)

(assert (=> d!667493 (= lt!836359 lt!836354)))

(declare-fun lt!836385 () List!26738)

(declare-fun lt!836353 () List!26738)

(assert (=> d!667493 (isSuffix!749 lt!836385 (++!6488 lt!836353 lt!836385))))

(assert (=> d!667493 (= lt!836354 (lemmaConcatTwoListThenFSndIsSuffix!443 lt!836353 lt!836385))))

(assert (=> d!667493 (= lt!836385 (list!10215 (seqFromList!2927 input!1722)))))

(assert (=> d!667493 (= lt!836353 (list!10215 (BalanceConc!16917 Empty!8594)))))

(assert (=> d!667493 (= (lexTailRecV2!722 thiss!16613 rules!1750 (seqFromList!2927 input!1722) (BalanceConc!16917 Empty!8594) (seqFromList!2927 input!1722) (BalanceConc!16919 Empty!8595)) lt!836376)))

(declare-fun b!2249674 () Bool)

(assert (=> b!2249674 (= e!1439598 (= (list!10215 (_2!15578 lt!836376)) (list!10215 (_2!15578 (lexRec!513 thiss!16613 rules!1750 (seqFromList!2927 input!1722))))))))

(assert (= (and d!667493 c!357834) b!2249669))

(assert (= (and d!667493 (not c!357834)) b!2249672))

(assert (= (and b!2249669 c!357833) b!2249668))

(assert (= (and b!2249669 (not c!357833)) b!2249670))

(assert (= (and b!2249669 c!357832) b!2249671))

(assert (= (and b!2249669 (not c!357832)) b!2249673))

(assert (= (and d!667493 res!961300) b!2249674))

(declare-fun m!2680599 () Bool)

(assert (=> b!2249669 m!2680599))

(declare-fun m!2680601 () Bool)

(assert (=> b!2249669 m!2680601))

(declare-fun m!2680603 () Bool)

(assert (=> b!2249669 m!2680603))

(declare-fun m!2680605 () Bool)

(assert (=> b!2249669 m!2680605))

(assert (=> b!2249669 m!2679907))

(declare-fun m!2680607 () Bool)

(assert (=> b!2249669 m!2680607))

(assert (=> b!2249669 m!2679907))

(declare-fun m!2680609 () Bool)

(assert (=> b!2249669 m!2680609))

(declare-fun m!2680611 () Bool)

(assert (=> b!2249669 m!2680611))

(assert (=> b!2249669 m!2680599))

(declare-fun m!2680613 () Bool)

(assert (=> b!2249669 m!2680613))

(declare-fun m!2680615 () Bool)

(assert (=> b!2249669 m!2680615))

(assert (=> b!2249669 m!2679907))

(declare-fun m!2680617 () Bool)

(assert (=> b!2249669 m!2680617))

(declare-fun m!2680619 () Bool)

(assert (=> b!2249669 m!2680619))

(declare-fun m!2680621 () Bool)

(assert (=> b!2249669 m!2680621))

(declare-fun m!2680623 () Bool)

(assert (=> b!2249669 m!2680623))

(declare-fun m!2680625 () Bool)

(assert (=> b!2249669 m!2680625))

(declare-fun m!2680627 () Bool)

(assert (=> b!2249669 m!2680627))

(declare-fun m!2680629 () Bool)

(assert (=> b!2249669 m!2680629))

(declare-fun m!2680631 () Bool)

(assert (=> b!2249669 m!2680631))

(assert (=> b!2249669 m!2680627))

(assert (=> b!2249669 m!2680599))

(declare-fun m!2680633 () Bool)

(assert (=> b!2249669 m!2680633))

(assert (=> b!2249669 m!2680617))

(assert (=> b!2249669 m!2680601))

(declare-fun m!2680635 () Bool)

(assert (=> b!2249669 m!2680635))

(declare-fun m!2680637 () Bool)

(assert (=> b!2249669 m!2680637))

(declare-fun m!2680639 () Bool)

(assert (=> b!2249669 m!2680639))

(declare-fun m!2680641 () Bool)

(assert (=> b!2249669 m!2680641))

(assert (=> b!2249669 m!2680637))

(assert (=> b!2249669 m!2680617))

(declare-fun m!2680643 () Bool)

(assert (=> b!2249669 m!2680643))

(declare-fun m!2680645 () Bool)

(assert (=> b!2249669 m!2680645))

(declare-fun m!2680647 () Bool)

(assert (=> b!2249669 m!2680647))

(assert (=> b!2249669 m!2680613))

(assert (=> b!2249669 m!2680611))

(declare-fun m!2680649 () Bool)

(assert (=> b!2249669 m!2680649))

(assert (=> b!2249669 m!2680621))

(assert (=> b!2249669 m!2680603))

(declare-fun m!2680651 () Bool)

(assert (=> b!2249669 m!2680651))

(declare-fun m!2680653 () Bool)

(assert (=> b!2249669 m!2680653))

(declare-fun m!2680655 () Bool)

(assert (=> b!2249669 m!2680655))

(assert (=> b!2249669 m!2680625))

(assert (=> b!2249669 m!2680633))

(declare-fun m!2680657 () Bool)

(assert (=> b!2249669 m!2680657))

(declare-fun m!2680659 () Bool)

(assert (=> b!2249669 m!2680659))

(declare-fun m!2680661 () Bool)

(assert (=> b!2249669 m!2680661))

(assert (=> b!2249669 m!2680647))

(declare-fun m!2680663 () Bool)

(assert (=> b!2249669 m!2680663))

(declare-fun m!2680665 () Bool)

(assert (=> b!2249671 m!2680665))

(declare-fun m!2680667 () Bool)

(assert (=> b!2249671 m!2680667))

(declare-fun m!2680669 () Bool)

(assert (=> b!2249674 m!2680669))

(assert (=> b!2249674 m!2679907))

(assert (=> b!2249674 m!2680609))

(declare-fun m!2680671 () Bool)

(assert (=> b!2249674 m!2680671))

(declare-fun m!2680673 () Bool)

(assert (=> d!667493 m!2680673))

(assert (=> d!667493 m!2679907))

(assert (=> d!667493 m!2679973))

(declare-fun m!2680675 () Bool)

(assert (=> d!667493 m!2680675))

(assert (=> d!667493 m!2679907))

(assert (=> d!667493 m!2680609))

(declare-fun m!2680677 () Bool)

(assert (=> d!667493 m!2680677))

(declare-fun m!2680679 () Bool)

(assert (=> d!667493 m!2680679))

(assert (=> d!667493 m!2679907))

(assert (=> d!667493 m!2679907))

(declare-fun m!2680681 () Bool)

(assert (=> d!667493 m!2680681))

(declare-fun m!2680683 () Bool)

(assert (=> d!667493 m!2680683))

(assert (=> d!667493 m!2680625))

(assert (=> d!667493 m!2680677))

(declare-fun m!2680685 () Bool)

(assert (=> b!2249668 m!2680685))

(declare-fun m!2680687 () Bool)

(assert (=> b!2249668 m!2680687))

(assert (=> d!667211 d!667493))

(declare-fun d!667495 () Bool)

(assert (=> d!667495 (= (nullable!1801 (regex!4223 otherR!12)) (nullableFct!424 (regex!4223 otherR!12)))))

(declare-fun bs!455000 () Bool)

(assert (= bs!455000 d!667495))

(declare-fun m!2680689 () Bool)

(assert (=> bs!455000 m!2680689))

(assert (=> b!2248974 d!667495))

(declare-fun bs!455001 () Bool)

(declare-fun d!667497 () Bool)

(assert (= bs!455001 (and d!667497 d!667321)))

(declare-fun lambda!85207 () Int)

(assert (=> bs!455001 (= (= (toValue!5957 (transformation!4223 (h!32047 rules!1750))) (toValue!5957 (transformation!4223 r!2363))) (= lambda!85207 lambda!85192))))

(declare-fun bs!455002 () Bool)

(assert (= bs!455002 (and d!667497 d!667347)))

(assert (=> bs!455002 (= (= (toValue!5957 (transformation!4223 (h!32047 rules!1750))) (toValue!5957 (transformation!4223 otherR!12))) (= lambda!85207 lambda!85199))))

(declare-fun bs!455003 () Bool)

(assert (= bs!455003 (and d!667497 d!667403)))

(assert (=> bs!455003 (= (= (toValue!5957 (transformation!4223 (h!32047 rules!1750))) (toValue!5957 (transformation!4223 (rule!6523 (h!32046 tokens!456))))) (= lambda!85207 lambda!85201))))

(assert (=> d!667497 true))

(assert (=> d!667497 (< (dynLambda!11581 order!14901 (toValue!5957 (transformation!4223 (h!32047 rules!1750)))) (dynLambda!11582 order!14903 lambda!85207))))

(assert (=> d!667497 (= (equivClasses!1622 (toChars!5816 (transformation!4223 (h!32047 rules!1750))) (toValue!5957 (transformation!4223 (h!32047 rules!1750)))) (Forall2!679 lambda!85207))))

(declare-fun bs!455004 () Bool)

(assert (= bs!455004 d!667497))

(declare-fun m!2680691 () Bool)

(assert (=> bs!455004 m!2680691))

(assert (=> b!2249099 d!667497))

(declare-fun b!2249685 () Bool)

(declare-fun e!1439605 () List!26738)

(declare-fun list!10221 (IArray!17193) List!26738)

(assert (=> b!2249685 (= e!1439605 (list!10221 (xs!11536 (c!357684 (_2!15578 lt!836104)))))))

(declare-fun b!2249683 () Bool)

(declare-fun e!1439604 () List!26738)

(assert (=> b!2249683 (= e!1439604 Nil!26644)))

(declare-fun d!667499 () Bool)

(declare-fun c!357839 () Bool)

(assert (=> d!667499 (= c!357839 ((_ is Empty!8594) (c!357684 (_2!15578 lt!836104))))))

(assert (=> d!667499 (= (list!10217 (c!357684 (_2!15578 lt!836104))) e!1439604)))

(declare-fun b!2249684 () Bool)

(assert (=> b!2249684 (= e!1439604 e!1439605)))

(declare-fun c!357840 () Bool)

(assert (=> b!2249684 (= c!357840 ((_ is Leaf!12691) (c!357684 (_2!15578 lt!836104))))))

(declare-fun b!2249686 () Bool)

(assert (=> b!2249686 (= e!1439605 (++!6488 (list!10217 (left!20242 (c!357684 (_2!15578 lt!836104)))) (list!10217 (right!20572 (c!357684 (_2!15578 lt!836104))))))))

(assert (= (and d!667499 c!357839) b!2249683))

(assert (= (and d!667499 (not c!357839)) b!2249684))

(assert (= (and b!2249684 c!357840) b!2249685))

(assert (= (and b!2249684 (not c!357840)) b!2249686))

(declare-fun m!2680693 () Bool)

(assert (=> b!2249685 m!2680693))

(declare-fun m!2680695 () Bool)

(assert (=> b!2249686 m!2680695))

(declare-fun m!2680697 () Bool)

(assert (=> b!2249686 m!2680697))

(assert (=> b!2249686 m!2680695))

(assert (=> b!2249686 m!2680697))

(declare-fun m!2680699 () Bool)

(assert (=> b!2249686 m!2680699))

(assert (=> d!667209 d!667499))

(assert (=> b!2249044 d!667457))

(assert (=> b!2249044 d!667459))

(declare-fun b!2249689 () Bool)

(declare-fun e!1439607 () List!26738)

(assert (=> b!2249689 (= e!1439607 (list!10221 (xs!11536 (c!357684 (charsOf!2611 (head!4786 tokens!456))))))))

(declare-fun b!2249687 () Bool)

(declare-fun e!1439606 () List!26738)

(assert (=> b!2249687 (= e!1439606 Nil!26644)))

(declare-fun d!667501 () Bool)

(declare-fun c!357841 () Bool)

(assert (=> d!667501 (= c!357841 ((_ is Empty!8594) (c!357684 (charsOf!2611 (head!4786 tokens!456)))))))

(assert (=> d!667501 (= (list!10217 (c!357684 (charsOf!2611 (head!4786 tokens!456)))) e!1439606)))

(declare-fun b!2249688 () Bool)

(assert (=> b!2249688 (= e!1439606 e!1439607)))

(declare-fun c!357842 () Bool)

(assert (=> b!2249688 (= c!357842 ((_ is Leaf!12691) (c!357684 (charsOf!2611 (head!4786 tokens!456)))))))

(declare-fun b!2249690 () Bool)

(assert (=> b!2249690 (= e!1439607 (++!6488 (list!10217 (left!20242 (c!357684 (charsOf!2611 (head!4786 tokens!456))))) (list!10217 (right!20572 (c!357684 (charsOf!2611 (head!4786 tokens!456)))))))))

(assert (= (and d!667501 c!357841) b!2249687))

(assert (= (and d!667501 (not c!357841)) b!2249688))

(assert (= (and b!2249688 c!357842) b!2249689))

(assert (= (and b!2249688 (not c!357842)) b!2249690))

(declare-fun m!2680701 () Bool)

(assert (=> b!2249689 m!2680701))

(declare-fun m!2680703 () Bool)

(assert (=> b!2249690 m!2680703))

(declare-fun m!2680705 () Bool)

(assert (=> b!2249690 m!2680705))

(assert (=> b!2249690 m!2680703))

(assert (=> b!2249690 m!2680705))

(declare-fun m!2680707 () Bool)

(assert (=> b!2249690 m!2680707))

(assert (=> d!667235 d!667501))

(declare-fun d!667503 () Bool)

(declare-fun res!961305 () Bool)

(declare-fun e!1439612 () Bool)

(assert (=> d!667503 (=> res!961305 e!1439612)))

(assert (=> d!667503 (= res!961305 ((_ is Nil!26646) rules!1750))))

(assert (=> d!667503 (= (noDuplicateTag!1545 thiss!16613 rules!1750 Nil!26647) e!1439612)))

(declare-fun b!2249695 () Bool)

(declare-fun e!1439613 () Bool)

(assert (=> b!2249695 (= e!1439612 e!1439613)))

(declare-fun res!961306 () Bool)

(assert (=> b!2249695 (=> (not res!961306) (not e!1439613))))

(declare-fun contains!4573 (List!26741 String!29029) Bool)

(assert (=> b!2249695 (= res!961306 (not (contains!4573 Nil!26647 (tag!4713 (h!32047 rules!1750)))))))

(declare-fun b!2249696 () Bool)

(assert (=> b!2249696 (= e!1439613 (noDuplicateTag!1545 thiss!16613 (t!200588 rules!1750) (Cons!26647 (tag!4713 (h!32047 rules!1750)) Nil!26647)))))

(assert (= (and d!667503 (not res!961305)) b!2249695))

(assert (= (and b!2249695 res!961306) b!2249696))

(declare-fun m!2680709 () Bool)

(assert (=> b!2249695 m!2680709))

(declare-fun m!2680711 () Bool)

(assert (=> b!2249696 m!2680711))

(assert (=> b!2249094 d!667503))

(declare-fun d!667505 () Bool)

(assert (=> d!667505 (= (list!10215 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456)))) (value!134175 (h!32046 tokens!456)))) (list!10217 (c!357684 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456)))) (value!134175 (h!32046 tokens!456))))))))

(declare-fun bs!455005 () Bool)

(assert (= bs!455005 d!667505))

(declare-fun m!2680713 () Bool)

(assert (=> bs!455005 m!2680713))

(assert (=> b!2248947 d!667505))

(declare-fun b!2249697 () Bool)

(declare-fun e!1439615 () Int)

(assert (=> b!2249697 (= e!1439615 0)))

(declare-fun b!2249700 () Bool)

(declare-fun e!1439614 () Int)

(assert (=> b!2249700 (= e!1439614 (- 1))))

(declare-fun d!667507 () Bool)

(declare-fun lt!836386 () Int)

(assert (=> d!667507 (>= lt!836386 0)))

(assert (=> d!667507 (= lt!836386 e!1439615)))

(declare-fun c!357843 () Bool)

(assert (=> d!667507 (= c!357843 (and ((_ is Cons!26646) (t!200588 rules!1750)) (= (h!32047 (t!200588 rules!1750)) otherR!12)))))

(assert (=> d!667507 (contains!4572 (t!200588 rules!1750) otherR!12)))

(assert (=> d!667507 (= (getIndex!244 (t!200588 rules!1750) otherR!12) lt!836386)))

(declare-fun b!2249699 () Bool)

(assert (=> b!2249699 (= e!1439614 (+ 1 (getIndex!244 (t!200588 (t!200588 rules!1750)) otherR!12)))))

(declare-fun b!2249698 () Bool)

(assert (=> b!2249698 (= e!1439615 e!1439614)))

(declare-fun c!357844 () Bool)

(assert (=> b!2249698 (= c!357844 (and ((_ is Cons!26646) (t!200588 rules!1750)) (not (= (h!32047 (t!200588 rules!1750)) otherR!12))))))

(assert (= (and d!667507 c!357843) b!2249697))

(assert (= (and d!667507 (not c!357843)) b!2249698))

(assert (= (and b!2249698 c!357844) b!2249699))

(assert (= (and b!2249698 (not c!357844)) b!2249700))

(assert (=> d!667507 m!2679997))

(declare-fun m!2680715 () Bool)

(assert (=> b!2249699 m!2680715))

(assert (=> b!2248968 d!667507))

(declare-fun b!2249701 () Bool)

(declare-fun e!1439618 () Option!5196)

(declare-fun lt!836388 () Option!5196)

(declare-fun lt!836390 () Option!5196)

(assert (=> b!2249701 (= e!1439618 (ite (and ((_ is None!5195) lt!836388) ((_ is None!5195) lt!836390)) None!5195 (ite ((_ is None!5195) lt!836390) lt!836388 (ite ((_ is None!5195) lt!836388) lt!836390 (ite (>= (size!20843 (_1!15577 (v!30211 lt!836388))) (size!20843 (_1!15577 (v!30211 lt!836390)))) lt!836388 lt!836390)))))))

(declare-fun call!135541 () Option!5196)

(assert (=> b!2249701 (= lt!836388 call!135541)))

(assert (=> b!2249701 (= lt!836390 (maxPrefix!2108 thiss!16613 (t!200588 (t!200588 rules!1750)) input!1722))))

(declare-fun b!2249702 () Bool)

(declare-fun res!961310 () Bool)

(declare-fun e!1439617 () Bool)

(assert (=> b!2249702 (=> (not res!961310) (not e!1439617))))

(declare-fun lt!836391 () Option!5196)

(assert (=> b!2249702 (= res!961310 (= (value!134175 (_1!15577 (get!8041 lt!836391))) (apply!6546 (transformation!4223 (rule!6523 (_1!15577 (get!8041 lt!836391)))) (seqFromList!2927 (originalCharacters!4993 (_1!15577 (get!8041 lt!836391)))))))))

(declare-fun d!667509 () Bool)

(declare-fun e!1439616 () Bool)

(assert (=> d!667509 e!1439616))

(declare-fun res!961308 () Bool)

(assert (=> d!667509 (=> res!961308 e!1439616)))

(assert (=> d!667509 (= res!961308 (isEmpty!15019 lt!836391))))

(assert (=> d!667509 (= lt!836391 e!1439618)))

(declare-fun c!357845 () Bool)

(assert (=> d!667509 (= c!357845 (and ((_ is Cons!26646) (t!200588 rules!1750)) ((_ is Nil!26646) (t!200588 (t!200588 rules!1750)))))))

(declare-fun lt!836387 () Unit!39590)

(declare-fun lt!836389 () Unit!39590)

(assert (=> d!667509 (= lt!836387 lt!836389)))

(assert (=> d!667509 (isPrefix!2213 input!1722 input!1722)))

(assert (=> d!667509 (= lt!836389 (lemmaIsPrefixRefl!1428 input!1722 input!1722))))

(assert (=> d!667509 (rulesValidInductive!1472 thiss!16613 (t!200588 rules!1750))))

(assert (=> d!667509 (= (maxPrefix!2108 thiss!16613 (t!200588 rules!1750) input!1722) lt!836391)))

(declare-fun b!2249703 () Bool)

(declare-fun res!961312 () Bool)

(assert (=> b!2249703 (=> (not res!961312) (not e!1439617))))

(assert (=> b!2249703 (= res!961312 (matchR!2832 (regex!4223 (rule!6523 (_1!15577 (get!8041 lt!836391)))) (list!10215 (charsOf!2611 (_1!15577 (get!8041 lt!836391))))))))

(declare-fun bm!135536 () Bool)

(assert (=> bm!135536 (= call!135541 (maxPrefixOneRule!1309 thiss!16613 (h!32047 (t!200588 rules!1750)) input!1722))))

(declare-fun b!2249704 () Bool)

(assert (=> b!2249704 (= e!1439618 call!135541)))

(declare-fun b!2249705 () Bool)

(assert (=> b!2249705 (= e!1439617 (contains!4572 (t!200588 rules!1750) (rule!6523 (_1!15577 (get!8041 lt!836391)))))))

(declare-fun b!2249706 () Bool)

(declare-fun res!961307 () Bool)

(assert (=> b!2249706 (=> (not res!961307) (not e!1439617))))

(assert (=> b!2249706 (= res!961307 (< (size!20845 (_2!15577 (get!8041 lt!836391))) (size!20845 input!1722)))))

(declare-fun b!2249707 () Bool)

(assert (=> b!2249707 (= e!1439616 e!1439617)))

(declare-fun res!961309 () Bool)

(assert (=> b!2249707 (=> (not res!961309) (not e!1439617))))

(assert (=> b!2249707 (= res!961309 (isDefined!4182 lt!836391))))

(declare-fun b!2249708 () Bool)

(declare-fun res!961313 () Bool)

(assert (=> b!2249708 (=> (not res!961313) (not e!1439617))))

(assert (=> b!2249708 (= res!961313 (= (list!10215 (charsOf!2611 (_1!15577 (get!8041 lt!836391)))) (originalCharacters!4993 (_1!15577 (get!8041 lt!836391)))))))

(declare-fun b!2249709 () Bool)

(declare-fun res!961311 () Bool)

(assert (=> b!2249709 (=> (not res!961311) (not e!1439617))))

(assert (=> b!2249709 (= res!961311 (= (++!6488 (list!10215 (charsOf!2611 (_1!15577 (get!8041 lt!836391)))) (_2!15577 (get!8041 lt!836391))) input!1722))))

(assert (= (and d!667509 c!357845) b!2249704))

(assert (= (and d!667509 (not c!357845)) b!2249701))

(assert (= (or b!2249704 b!2249701) bm!135536))

(assert (= (and d!667509 (not res!961308)) b!2249707))

(assert (= (and b!2249707 res!961309) b!2249708))

(assert (= (and b!2249708 res!961313) b!2249706))

(assert (= (and b!2249706 res!961307) b!2249709))

(assert (= (and b!2249709 res!961311) b!2249702))

(assert (= (and b!2249702 res!961310) b!2249703))

(assert (= (and b!2249703 res!961312) b!2249705))

(declare-fun m!2680717 () Bool)

(assert (=> b!2249707 m!2680717))

(declare-fun m!2680719 () Bool)

(assert (=> d!667509 m!2680719))

(assert (=> d!667509 m!2680049))

(assert (=> d!667509 m!2680051))

(assert (=> d!667509 m!2680487))

(declare-fun m!2680721 () Bool)

(assert (=> b!2249701 m!2680721))

(declare-fun m!2680723 () Bool)

(assert (=> b!2249702 m!2680723))

(declare-fun m!2680725 () Bool)

(assert (=> b!2249702 m!2680725))

(assert (=> b!2249702 m!2680725))

(declare-fun m!2680727 () Bool)

(assert (=> b!2249702 m!2680727))

(assert (=> b!2249705 m!2680723))

(declare-fun m!2680729 () Bool)

(assert (=> b!2249705 m!2680729))

(declare-fun m!2680731 () Bool)

(assert (=> bm!135536 m!2680731))

(assert (=> b!2249706 m!2680723))

(declare-fun m!2680733 () Bool)

(assert (=> b!2249706 m!2680733))

(assert (=> b!2249706 m!2680069))

(assert (=> b!2249703 m!2680723))

(declare-fun m!2680735 () Bool)

(assert (=> b!2249703 m!2680735))

(assert (=> b!2249703 m!2680735))

(declare-fun m!2680737 () Bool)

(assert (=> b!2249703 m!2680737))

(assert (=> b!2249703 m!2680737))

(declare-fun m!2680739 () Bool)

(assert (=> b!2249703 m!2680739))

(assert (=> b!2249708 m!2680723))

(assert (=> b!2249708 m!2680735))

(assert (=> b!2249708 m!2680735))

(assert (=> b!2249708 m!2680737))

(assert (=> b!2249709 m!2680723))

(assert (=> b!2249709 m!2680735))

(assert (=> b!2249709 m!2680735))

(assert (=> b!2249709 m!2680737))

(assert (=> b!2249709 m!2680737))

(declare-fun m!2680741 () Bool)

(assert (=> b!2249709 m!2680741))

(assert (=> b!2249081 d!667509))

(declare-fun e!1439619 () Bool)

(assert (=> b!2249193 (= tp!710477 e!1439619)))

(declare-fun b!2249712 () Bool)

(declare-fun tp!710560 () Bool)

(assert (=> b!2249712 (= e!1439619 tp!710560)))

(declare-fun b!2249713 () Bool)

(declare-fun tp!710557 () Bool)

(declare-fun tp!710561 () Bool)

(assert (=> b!2249713 (= e!1439619 (and tp!710557 tp!710561))))

(declare-fun b!2249711 () Bool)

(declare-fun tp!710559 () Bool)

(declare-fun tp!710558 () Bool)

(assert (=> b!2249711 (= e!1439619 (and tp!710559 tp!710558))))

(declare-fun b!2249710 () Bool)

(assert (=> b!2249710 (= e!1439619 tp_is_empty!10363)))

(assert (= (and b!2249193 ((_ is ElementMatch!6571) (regOne!13654 (regex!4223 r!2363)))) b!2249710))

(assert (= (and b!2249193 ((_ is Concat!10957) (regOne!13654 (regex!4223 r!2363)))) b!2249711))

(assert (= (and b!2249193 ((_ is Star!6571) (regOne!13654 (regex!4223 r!2363)))) b!2249712))

(assert (= (and b!2249193 ((_ is Union!6571) (regOne!13654 (regex!4223 r!2363)))) b!2249713))

(declare-fun e!1439620 () Bool)

(assert (=> b!2249193 (= tp!710476 e!1439620)))

(declare-fun b!2249716 () Bool)

(declare-fun tp!710565 () Bool)

(assert (=> b!2249716 (= e!1439620 tp!710565)))

(declare-fun b!2249717 () Bool)

(declare-fun tp!710562 () Bool)

(declare-fun tp!710566 () Bool)

(assert (=> b!2249717 (= e!1439620 (and tp!710562 tp!710566))))

(declare-fun b!2249715 () Bool)

(declare-fun tp!710564 () Bool)

(declare-fun tp!710563 () Bool)

(assert (=> b!2249715 (= e!1439620 (and tp!710564 tp!710563))))

(declare-fun b!2249714 () Bool)

(assert (=> b!2249714 (= e!1439620 tp_is_empty!10363)))

(assert (= (and b!2249193 ((_ is ElementMatch!6571) (regTwo!13654 (regex!4223 r!2363)))) b!2249714))

(assert (= (and b!2249193 ((_ is Concat!10957) (regTwo!13654 (regex!4223 r!2363)))) b!2249715))

(assert (= (and b!2249193 ((_ is Star!6571) (regTwo!13654 (regex!4223 r!2363)))) b!2249716))

(assert (= (and b!2249193 ((_ is Union!6571) (regTwo!13654 (regex!4223 r!2363)))) b!2249717))

(declare-fun tp!710575 () Bool)

(declare-fun tp!710574 () Bool)

(declare-fun b!2249726 () Bool)

(declare-fun e!1439626 () Bool)

(assert (=> b!2249726 (= e!1439626 (and (inv!36175 (left!20242 (c!357684 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (head!4786 tokens!456)))) (value!134175 (head!4786 tokens!456)))))) tp!710575 (inv!36175 (right!20572 (c!357684 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (head!4786 tokens!456)))) (value!134175 (head!4786 tokens!456)))))) tp!710574))))

(declare-fun b!2249728 () Bool)

(declare-fun e!1439625 () Bool)

(declare-fun tp!710573 () Bool)

(assert (=> b!2249728 (= e!1439625 tp!710573)))

(declare-fun b!2249727 () Bool)

(declare-fun inv!36181 (IArray!17193) Bool)

(assert (=> b!2249727 (= e!1439626 (and (inv!36181 (xs!11536 (c!357684 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (head!4786 tokens!456)))) (value!134175 (head!4786 tokens!456)))))) e!1439625))))

(assert (=> b!2248976 (= tp!710423 (and (inv!36175 (c!357684 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (head!4786 tokens!456)))) (value!134175 (head!4786 tokens!456))))) e!1439626))))

(assert (= (and b!2248976 ((_ is Node!8594) (c!357684 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (head!4786 tokens!456)))) (value!134175 (head!4786 tokens!456)))))) b!2249726))

(assert (= b!2249727 b!2249728))

(assert (= (and b!2248976 ((_ is Leaf!12691) (c!357684 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (head!4786 tokens!456)))) (value!134175 (head!4786 tokens!456)))))) b!2249727))

(declare-fun m!2680743 () Bool)

(assert (=> b!2249726 m!2680743))

(declare-fun m!2680745 () Bool)

(assert (=> b!2249726 m!2680745))

(declare-fun m!2680747 () Bool)

(assert (=> b!2249727 m!2680747))

(assert (=> b!2248976 m!2679951))

(declare-fun e!1439627 () Bool)

(assert (=> b!2249195 (= tp!710475 e!1439627)))

(declare-fun b!2249731 () Bool)

(declare-fun tp!710579 () Bool)

(assert (=> b!2249731 (= e!1439627 tp!710579)))

(declare-fun b!2249732 () Bool)

(declare-fun tp!710576 () Bool)

(declare-fun tp!710580 () Bool)

(assert (=> b!2249732 (= e!1439627 (and tp!710576 tp!710580))))

(declare-fun b!2249730 () Bool)

(declare-fun tp!710578 () Bool)

(declare-fun tp!710577 () Bool)

(assert (=> b!2249730 (= e!1439627 (and tp!710578 tp!710577))))

(declare-fun b!2249729 () Bool)

(assert (=> b!2249729 (= e!1439627 tp_is_empty!10363)))

(assert (= (and b!2249195 ((_ is ElementMatch!6571) (regOne!13655 (regex!4223 r!2363)))) b!2249729))

(assert (= (and b!2249195 ((_ is Concat!10957) (regOne!13655 (regex!4223 r!2363)))) b!2249730))

(assert (= (and b!2249195 ((_ is Star!6571) (regOne!13655 (regex!4223 r!2363)))) b!2249731))

(assert (= (and b!2249195 ((_ is Union!6571) (regOne!13655 (regex!4223 r!2363)))) b!2249732))

(declare-fun e!1439628 () Bool)

(assert (=> b!2249195 (= tp!710479 e!1439628)))

(declare-fun b!2249735 () Bool)

(declare-fun tp!710584 () Bool)

(assert (=> b!2249735 (= e!1439628 tp!710584)))

(declare-fun b!2249736 () Bool)

(declare-fun tp!710581 () Bool)

(declare-fun tp!710585 () Bool)

(assert (=> b!2249736 (= e!1439628 (and tp!710581 tp!710585))))

(declare-fun b!2249734 () Bool)

(declare-fun tp!710583 () Bool)

(declare-fun tp!710582 () Bool)

(assert (=> b!2249734 (= e!1439628 (and tp!710583 tp!710582))))

(declare-fun b!2249733 () Bool)

(assert (=> b!2249733 (= e!1439628 tp_is_empty!10363)))

(assert (= (and b!2249195 ((_ is ElementMatch!6571) (regTwo!13655 (regex!4223 r!2363)))) b!2249733))

(assert (= (and b!2249195 ((_ is Concat!10957) (regTwo!13655 (regex!4223 r!2363)))) b!2249734))

(assert (= (and b!2249195 ((_ is Star!6571) (regTwo!13655 (regex!4223 r!2363)))) b!2249735))

(assert (= (and b!2249195 ((_ is Union!6571) (regTwo!13655 (regex!4223 r!2363)))) b!2249736))

(declare-fun e!1439629 () Bool)

(assert (=> b!2249194 (= tp!710478 e!1439629)))

(declare-fun b!2249739 () Bool)

(declare-fun tp!710589 () Bool)

(assert (=> b!2249739 (= e!1439629 tp!710589)))

(declare-fun b!2249740 () Bool)

(declare-fun tp!710586 () Bool)

(declare-fun tp!710590 () Bool)

(assert (=> b!2249740 (= e!1439629 (and tp!710586 tp!710590))))

(declare-fun b!2249738 () Bool)

(declare-fun tp!710588 () Bool)

(declare-fun tp!710587 () Bool)

(assert (=> b!2249738 (= e!1439629 (and tp!710588 tp!710587))))

(declare-fun b!2249737 () Bool)

(assert (=> b!2249737 (= e!1439629 tp_is_empty!10363)))

(assert (= (and b!2249194 ((_ is ElementMatch!6571) (reg!6900 (regex!4223 r!2363)))) b!2249737))

(assert (= (and b!2249194 ((_ is Concat!10957) (reg!6900 (regex!4223 r!2363)))) b!2249738))

(assert (= (and b!2249194 ((_ is Star!6571) (reg!6900 (regex!4223 r!2363)))) b!2249739))

(assert (= (and b!2249194 ((_ is Union!6571) (reg!6900 (regex!4223 r!2363)))) b!2249740))

(declare-fun b!2249744 () Bool)

(declare-fun b_free!65853 () Bool)

(declare-fun b_next!66557 () Bool)

(assert (=> b!2249744 (= b_free!65853 (not b_next!66557))))

(declare-fun t!200692 () Bool)

(declare-fun tb!133279 () Bool)

(assert (=> (and b!2249744 (= (toValue!5957 (transformation!4223 (rule!6523 (h!32046 (t!200587 (t!200587 tokens!456)))))) (toValue!5957 (transformation!4223 (rule!6523 (_1!15577 (get!8041 lt!836149)))))) t!200692) tb!133279))

(declare-fun result!162474 () Bool)

(assert (= result!162474 result!162434))

(assert (=> d!667389 t!200692))

(declare-fun tp!710593 () Bool)

(declare-fun b_and!176161 () Bool)

(assert (=> b!2249744 (= tp!710593 (and (=> t!200692 result!162474) b_and!176161))))

(declare-fun b_free!65855 () Bool)

(declare-fun b_next!66559 () Bool)

(assert (=> b!2249744 (= b_free!65855 (not b_next!66559))))

(declare-fun t!200694 () Bool)

(declare-fun tb!133281 () Bool)

(assert (=> (and b!2249744 (= (toChars!5816 (transformation!4223 (rule!6523 (h!32046 (t!200587 (t!200587 tokens!456)))))) (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456))))) t!200694) tb!133281))

(declare-fun result!162476 () Bool)

(assert (= result!162476 result!162354))

(assert (=> b!2248947 t!200694))

(declare-fun t!200696 () Bool)

(declare-fun tb!133283 () Bool)

(assert (=> (and b!2249744 (= (toChars!5816 (transformation!4223 (rule!6523 (h!32046 (t!200587 (t!200587 tokens!456)))))) (toChars!5816 (transformation!4223 (rule!6523 (head!4786 tokens!456))))) t!200696) tb!133283))

(declare-fun result!162478 () Bool)

(assert (= result!162478 result!162364))

(assert (=> d!667203 t!200696))

(declare-fun t!200698 () Bool)

(declare-fun tb!133285 () Bool)

(assert (=> (and b!2249744 (= (toChars!5816 (transformation!4223 (rule!6523 (h!32046 (t!200587 (t!200587 tokens!456)))))) (toChars!5816 (transformation!4223 (rule!6523 (_1!15577 (get!8041 lt!836149)))))) t!200698) tb!133285))

(declare-fun result!162480 () Bool)

(assert (= result!162480 result!162422))

(assert (=> d!667339 t!200698))

(declare-fun t!200700 () Bool)

(declare-fun tb!133287 () Bool)

(assert (=> (and b!2249744 (= (toChars!5816 (transformation!4223 (rule!6523 (h!32046 (t!200587 (t!200587 tokens!456)))))) (toChars!5816 (transformation!4223 (rule!6523 (h!32046 (t!200587 tokens!456)))))) t!200700) tb!133287))

(declare-fun result!162482 () Bool)

(assert (= result!162482 result!162460))

(assert (=> b!2249554 t!200700))

(declare-fun b_and!176163 () Bool)

(declare-fun tp!710592 () Bool)

(assert (=> b!2249744 (= tp!710592 (and (=> t!200694 result!162476) (=> t!200696 result!162478) (=> t!200698 result!162480) (=> t!200700 result!162482) b_and!176163))))

(declare-fun tp!710591 () Bool)

(declare-fun e!1439634 () Bool)

(declare-fun b!2249742 () Bool)

(declare-fun e!1439631 () Bool)

(assert (=> b!2249742 (= e!1439634 (and (inv!21 (value!134175 (h!32046 (t!200587 (t!200587 tokens!456))))) e!1439631 tp!710591))))

(declare-fun tp!710594 () Bool)

(declare-fun b!2249743 () Bool)

(declare-fun e!1439630 () Bool)

(assert (=> b!2249743 (= e!1439631 (and tp!710594 (inv!36170 (tag!4713 (rule!6523 (h!32046 (t!200587 (t!200587 tokens!456)))))) (inv!36173 (transformation!4223 (rule!6523 (h!32046 (t!200587 (t!200587 tokens!456)))))) e!1439630))))

(assert (=> b!2249744 (= e!1439630 (and tp!710593 tp!710592))))

(declare-fun e!1439635 () Bool)

(assert (=> b!2249166 (= tp!710456 e!1439635)))

(declare-fun tp!710595 () Bool)

(declare-fun b!2249741 () Bool)

(assert (=> b!2249741 (= e!1439635 (and (inv!36174 (h!32046 (t!200587 (t!200587 tokens!456)))) e!1439634 tp!710595))))

(assert (= b!2249743 b!2249744))

(assert (= b!2249742 b!2249743))

(assert (= b!2249741 b!2249742))

(assert (= (and b!2249166 ((_ is Cons!26645) (t!200587 (t!200587 tokens!456)))) b!2249741))

(declare-fun m!2680749 () Bool)

(assert (=> b!2249742 m!2680749))

(declare-fun m!2680751 () Bool)

(assert (=> b!2249743 m!2680751))

(declare-fun m!2680753 () Bool)

(assert (=> b!2249743 m!2680753))

(declare-fun m!2680755 () Bool)

(assert (=> b!2249741 m!2680755))

(declare-fun e!1439636 () Bool)

(assert (=> b!2249139 (= tp!710436 e!1439636)))

(declare-fun b!2249747 () Bool)

(declare-fun tp!710599 () Bool)

(assert (=> b!2249747 (= e!1439636 tp!710599)))

(declare-fun b!2249748 () Bool)

(declare-fun tp!710596 () Bool)

(declare-fun tp!710600 () Bool)

(assert (=> b!2249748 (= e!1439636 (and tp!710596 tp!710600))))

(declare-fun b!2249746 () Bool)

(declare-fun tp!710598 () Bool)

(declare-fun tp!710597 () Bool)

(assert (=> b!2249746 (= e!1439636 (and tp!710598 tp!710597))))

(declare-fun b!2249745 () Bool)

(assert (=> b!2249745 (= e!1439636 tp_is_empty!10363)))

(assert (= (and b!2249139 ((_ is ElementMatch!6571) (regOne!13654 (regex!4223 (rule!6523 (h!32046 tokens!456)))))) b!2249745))

(assert (= (and b!2249139 ((_ is Concat!10957) (regOne!13654 (regex!4223 (rule!6523 (h!32046 tokens!456)))))) b!2249746))

(assert (= (and b!2249139 ((_ is Star!6571) (regOne!13654 (regex!4223 (rule!6523 (h!32046 tokens!456)))))) b!2249747))

(assert (= (and b!2249139 ((_ is Union!6571) (regOne!13654 (regex!4223 (rule!6523 (h!32046 tokens!456)))))) b!2249748))

(declare-fun e!1439637 () Bool)

(assert (=> b!2249139 (= tp!710435 e!1439637)))

(declare-fun b!2249751 () Bool)

(declare-fun tp!710604 () Bool)

(assert (=> b!2249751 (= e!1439637 tp!710604)))

(declare-fun b!2249752 () Bool)

(declare-fun tp!710601 () Bool)

(declare-fun tp!710605 () Bool)

(assert (=> b!2249752 (= e!1439637 (and tp!710601 tp!710605))))

(declare-fun b!2249750 () Bool)

(declare-fun tp!710603 () Bool)

(declare-fun tp!710602 () Bool)

(assert (=> b!2249750 (= e!1439637 (and tp!710603 tp!710602))))

(declare-fun b!2249749 () Bool)

(assert (=> b!2249749 (= e!1439637 tp_is_empty!10363)))

(assert (= (and b!2249139 ((_ is ElementMatch!6571) (regTwo!13654 (regex!4223 (rule!6523 (h!32046 tokens!456)))))) b!2249749))

(assert (= (and b!2249139 ((_ is Concat!10957) (regTwo!13654 (regex!4223 (rule!6523 (h!32046 tokens!456)))))) b!2249750))

(assert (= (and b!2249139 ((_ is Star!6571) (regTwo!13654 (regex!4223 (rule!6523 (h!32046 tokens!456)))))) b!2249751))

(assert (= (and b!2249139 ((_ is Union!6571) (regTwo!13654 (regex!4223 (rule!6523 (h!32046 tokens!456)))))) b!2249752))

(declare-fun e!1439638 () Bool)

(assert (=> b!2249199 (= tp!710484 e!1439638)))

(declare-fun b!2249755 () Bool)

(declare-fun tp!710609 () Bool)

(assert (=> b!2249755 (= e!1439638 tp!710609)))

(declare-fun b!2249756 () Bool)

(declare-fun tp!710606 () Bool)

(declare-fun tp!710610 () Bool)

(assert (=> b!2249756 (= e!1439638 (and tp!710606 tp!710610))))

(declare-fun b!2249754 () Bool)

(declare-fun tp!710608 () Bool)

(declare-fun tp!710607 () Bool)

(assert (=> b!2249754 (= e!1439638 (and tp!710608 tp!710607))))

(declare-fun b!2249753 () Bool)

(assert (=> b!2249753 (= e!1439638 tp_is_empty!10363)))

(assert (= (and b!2249199 ((_ is ElementMatch!6571) (regOne!13654 (regex!4223 (h!32047 rules!1750))))) b!2249753))

(assert (= (and b!2249199 ((_ is Concat!10957) (regOne!13654 (regex!4223 (h!32047 rules!1750))))) b!2249754))

(assert (= (and b!2249199 ((_ is Star!6571) (regOne!13654 (regex!4223 (h!32047 rules!1750))))) b!2249755))

(assert (= (and b!2249199 ((_ is Union!6571) (regOne!13654 (regex!4223 (h!32047 rules!1750))))) b!2249756))

(declare-fun e!1439639 () Bool)

(assert (=> b!2249199 (= tp!710483 e!1439639)))

(declare-fun b!2249759 () Bool)

(declare-fun tp!710614 () Bool)

(assert (=> b!2249759 (= e!1439639 tp!710614)))

(declare-fun b!2249760 () Bool)

(declare-fun tp!710611 () Bool)

(declare-fun tp!710615 () Bool)

(assert (=> b!2249760 (= e!1439639 (and tp!710611 tp!710615))))

(declare-fun b!2249758 () Bool)

(declare-fun tp!710613 () Bool)

(declare-fun tp!710612 () Bool)

(assert (=> b!2249758 (= e!1439639 (and tp!710613 tp!710612))))

(declare-fun b!2249757 () Bool)

(assert (=> b!2249757 (= e!1439639 tp_is_empty!10363)))

(assert (= (and b!2249199 ((_ is ElementMatch!6571) (regTwo!13654 (regex!4223 (h!32047 rules!1750))))) b!2249757))

(assert (= (and b!2249199 ((_ is Concat!10957) (regTwo!13654 (regex!4223 (h!32047 rules!1750))))) b!2249758))

(assert (= (and b!2249199 ((_ is Star!6571) (regTwo!13654 (regex!4223 (h!32047 rules!1750))))) b!2249759))

(assert (= (and b!2249199 ((_ is Union!6571) (regTwo!13654 (regex!4223 (h!32047 rules!1750))))) b!2249760))

(declare-fun e!1439640 () Bool)

(assert (=> b!2249168 (= tp!710455 e!1439640)))

(declare-fun b!2249763 () Bool)

(declare-fun tp!710619 () Bool)

(assert (=> b!2249763 (= e!1439640 tp!710619)))

(declare-fun b!2249764 () Bool)

(declare-fun tp!710616 () Bool)

(declare-fun tp!710620 () Bool)

(assert (=> b!2249764 (= e!1439640 (and tp!710616 tp!710620))))

(declare-fun b!2249762 () Bool)

(declare-fun tp!710618 () Bool)

(declare-fun tp!710617 () Bool)

(assert (=> b!2249762 (= e!1439640 (and tp!710618 tp!710617))))

(declare-fun b!2249761 () Bool)

(assert (=> b!2249761 (= e!1439640 tp_is_empty!10363)))

(assert (= (and b!2249168 ((_ is ElementMatch!6571) (regex!4223 (rule!6523 (h!32046 (t!200587 tokens!456)))))) b!2249761))

(assert (= (and b!2249168 ((_ is Concat!10957) (regex!4223 (rule!6523 (h!32046 (t!200587 tokens!456)))))) b!2249762))

(assert (= (and b!2249168 ((_ is Star!6571) (regex!4223 (rule!6523 (h!32046 (t!200587 tokens!456)))))) b!2249763))

(assert (= (and b!2249168 ((_ is Union!6571) (regex!4223 (rule!6523 (h!32046 (t!200587 tokens!456)))))) b!2249764))

(declare-fun e!1439641 () Bool)

(assert (=> b!2249141 (= tp!710434 e!1439641)))

(declare-fun b!2249767 () Bool)

(declare-fun tp!710624 () Bool)

(assert (=> b!2249767 (= e!1439641 tp!710624)))

(declare-fun b!2249768 () Bool)

(declare-fun tp!710621 () Bool)

(declare-fun tp!710625 () Bool)

(assert (=> b!2249768 (= e!1439641 (and tp!710621 tp!710625))))

(declare-fun b!2249766 () Bool)

(declare-fun tp!710623 () Bool)

(declare-fun tp!710622 () Bool)

(assert (=> b!2249766 (= e!1439641 (and tp!710623 tp!710622))))

(declare-fun b!2249765 () Bool)

(assert (=> b!2249765 (= e!1439641 tp_is_empty!10363)))

(assert (= (and b!2249141 ((_ is ElementMatch!6571) (regOne!13655 (regex!4223 (rule!6523 (h!32046 tokens!456)))))) b!2249765))

(assert (= (and b!2249141 ((_ is Concat!10957) (regOne!13655 (regex!4223 (rule!6523 (h!32046 tokens!456)))))) b!2249766))

(assert (= (and b!2249141 ((_ is Star!6571) (regOne!13655 (regex!4223 (rule!6523 (h!32046 tokens!456)))))) b!2249767))

(assert (= (and b!2249141 ((_ is Union!6571) (regOne!13655 (regex!4223 (rule!6523 (h!32046 tokens!456)))))) b!2249768))

(declare-fun e!1439642 () Bool)

(assert (=> b!2249141 (= tp!710438 e!1439642)))

(declare-fun b!2249771 () Bool)

(declare-fun tp!710629 () Bool)

(assert (=> b!2249771 (= e!1439642 tp!710629)))

(declare-fun b!2249772 () Bool)

(declare-fun tp!710626 () Bool)

(declare-fun tp!710630 () Bool)

(assert (=> b!2249772 (= e!1439642 (and tp!710626 tp!710630))))

(declare-fun b!2249770 () Bool)

(declare-fun tp!710628 () Bool)

(declare-fun tp!710627 () Bool)

(assert (=> b!2249770 (= e!1439642 (and tp!710628 tp!710627))))

(declare-fun b!2249769 () Bool)

(assert (=> b!2249769 (= e!1439642 tp_is_empty!10363)))

(assert (= (and b!2249141 ((_ is ElementMatch!6571) (regTwo!13655 (regex!4223 (rule!6523 (h!32046 tokens!456)))))) b!2249769))

(assert (= (and b!2249141 ((_ is Concat!10957) (regTwo!13655 (regex!4223 (rule!6523 (h!32046 tokens!456)))))) b!2249770))

(assert (= (and b!2249141 ((_ is Star!6571) (regTwo!13655 (regex!4223 (rule!6523 (h!32046 tokens!456)))))) b!2249771))

(assert (= (and b!2249141 ((_ is Union!6571) (regTwo!13655 (regex!4223 (rule!6523 (h!32046 tokens!456)))))) b!2249772))

(declare-fun e!1439643 () Bool)

(assert (=> b!2249201 (= tp!710482 e!1439643)))

(declare-fun b!2249775 () Bool)

(declare-fun tp!710634 () Bool)

(assert (=> b!2249775 (= e!1439643 tp!710634)))

(declare-fun b!2249776 () Bool)

(declare-fun tp!710631 () Bool)

(declare-fun tp!710635 () Bool)

(assert (=> b!2249776 (= e!1439643 (and tp!710631 tp!710635))))

(declare-fun b!2249774 () Bool)

(declare-fun tp!710633 () Bool)

(declare-fun tp!710632 () Bool)

(assert (=> b!2249774 (= e!1439643 (and tp!710633 tp!710632))))

(declare-fun b!2249773 () Bool)

(assert (=> b!2249773 (= e!1439643 tp_is_empty!10363)))

(assert (= (and b!2249201 ((_ is ElementMatch!6571) (regOne!13655 (regex!4223 (h!32047 rules!1750))))) b!2249773))

(assert (= (and b!2249201 ((_ is Concat!10957) (regOne!13655 (regex!4223 (h!32047 rules!1750))))) b!2249774))

(assert (= (and b!2249201 ((_ is Star!6571) (regOne!13655 (regex!4223 (h!32047 rules!1750))))) b!2249775))

(assert (= (and b!2249201 ((_ is Union!6571) (regOne!13655 (regex!4223 (h!32047 rules!1750))))) b!2249776))

(declare-fun e!1439644 () Bool)

(assert (=> b!2249201 (= tp!710486 e!1439644)))

(declare-fun b!2249779 () Bool)

(declare-fun tp!710639 () Bool)

(assert (=> b!2249779 (= e!1439644 tp!710639)))

(declare-fun b!2249780 () Bool)

(declare-fun tp!710636 () Bool)

(declare-fun tp!710640 () Bool)

(assert (=> b!2249780 (= e!1439644 (and tp!710636 tp!710640))))

(declare-fun b!2249778 () Bool)

(declare-fun tp!710638 () Bool)

(declare-fun tp!710637 () Bool)

(assert (=> b!2249778 (= e!1439644 (and tp!710638 tp!710637))))

(declare-fun b!2249777 () Bool)

(assert (=> b!2249777 (= e!1439644 tp_is_empty!10363)))

(assert (= (and b!2249201 ((_ is ElementMatch!6571) (regTwo!13655 (regex!4223 (h!32047 rules!1750))))) b!2249777))

(assert (= (and b!2249201 ((_ is Concat!10957) (regTwo!13655 (regex!4223 (h!32047 rules!1750))))) b!2249778))

(assert (= (and b!2249201 ((_ is Star!6571) (regTwo!13655 (regex!4223 (h!32047 rules!1750))))) b!2249779))

(assert (= (and b!2249201 ((_ is Union!6571) (regTwo!13655 (regex!4223 (h!32047 rules!1750))))) b!2249780))

(declare-fun e!1439645 () Bool)

(assert (=> b!2249200 (= tp!710485 e!1439645)))

(declare-fun b!2249783 () Bool)

(declare-fun tp!710644 () Bool)

(assert (=> b!2249783 (= e!1439645 tp!710644)))

(declare-fun b!2249784 () Bool)

(declare-fun tp!710641 () Bool)

(declare-fun tp!710645 () Bool)

(assert (=> b!2249784 (= e!1439645 (and tp!710641 tp!710645))))

(declare-fun b!2249782 () Bool)

(declare-fun tp!710643 () Bool)

(declare-fun tp!710642 () Bool)

(assert (=> b!2249782 (= e!1439645 (and tp!710643 tp!710642))))

(declare-fun b!2249781 () Bool)

(assert (=> b!2249781 (= e!1439645 tp_is_empty!10363)))

(assert (= (and b!2249200 ((_ is ElementMatch!6571) (reg!6900 (regex!4223 (h!32047 rules!1750))))) b!2249781))

(assert (= (and b!2249200 ((_ is Concat!10957) (reg!6900 (regex!4223 (h!32047 rules!1750))))) b!2249782))

(assert (= (and b!2249200 ((_ is Star!6571) (reg!6900 (regex!4223 (h!32047 rules!1750))))) b!2249783))

(assert (= (and b!2249200 ((_ is Union!6571) (reg!6900 (regex!4223 (h!32047 rules!1750))))) b!2249784))

(declare-fun b!2249785 () Bool)

(declare-fun e!1439646 () Bool)

(declare-fun tp!710646 () Bool)

(assert (=> b!2249785 (= e!1439646 (and tp_is_empty!10363 tp!710646))))

(assert (=> b!2249155 (= tp!710441 e!1439646)))

(assert (= (and b!2249155 ((_ is Cons!26644) (t!200586 (originalCharacters!4993 (h!32046 tokens!456))))) b!2249785))

(declare-fun b!2249786 () Bool)

(declare-fun e!1439647 () Bool)

(declare-fun tp!710647 () Bool)

(assert (=> b!2249786 (= e!1439647 (and tp_is_empty!10363 tp!710647))))

(assert (=> b!2249167 (= tp!710452 e!1439647)))

(assert (= (and b!2249167 ((_ is Cons!26644) (originalCharacters!4993 (h!32046 (t!200587 tokens!456))))) b!2249786))

(declare-fun e!1439648 () Bool)

(assert (=> b!2249140 (= tp!710437 e!1439648)))

(declare-fun b!2249789 () Bool)

(declare-fun tp!710651 () Bool)

(assert (=> b!2249789 (= e!1439648 tp!710651)))

(declare-fun b!2249790 () Bool)

(declare-fun tp!710648 () Bool)

(declare-fun tp!710652 () Bool)

(assert (=> b!2249790 (= e!1439648 (and tp!710648 tp!710652))))

(declare-fun b!2249788 () Bool)

(declare-fun tp!710650 () Bool)

(declare-fun tp!710649 () Bool)

(assert (=> b!2249788 (= e!1439648 (and tp!710650 tp!710649))))

(declare-fun b!2249787 () Bool)

(assert (=> b!2249787 (= e!1439648 tp_is_empty!10363)))

(assert (= (and b!2249140 ((_ is ElementMatch!6571) (reg!6900 (regex!4223 (rule!6523 (h!32046 tokens!456)))))) b!2249787))

(assert (= (and b!2249140 ((_ is Concat!10957) (reg!6900 (regex!4223 (rule!6523 (h!32046 tokens!456)))))) b!2249788))

(assert (= (and b!2249140 ((_ is Star!6571) (reg!6900 (regex!4223 (rule!6523 (h!32046 tokens!456)))))) b!2249789))

(assert (= (and b!2249140 ((_ is Union!6571) (reg!6900 (regex!4223 (rule!6523 (h!32046 tokens!456)))))) b!2249790))

(declare-fun e!1439649 () Bool)

(assert (=> b!2249186 (= tp!710468 e!1439649)))

(declare-fun b!2249793 () Bool)

(declare-fun tp!710656 () Bool)

(assert (=> b!2249793 (= e!1439649 tp!710656)))

(declare-fun b!2249794 () Bool)

(declare-fun tp!710653 () Bool)

(declare-fun tp!710657 () Bool)

(assert (=> b!2249794 (= e!1439649 (and tp!710653 tp!710657))))

(declare-fun b!2249792 () Bool)

(declare-fun tp!710655 () Bool)

(declare-fun tp!710654 () Bool)

(assert (=> b!2249792 (= e!1439649 (and tp!710655 tp!710654))))

(declare-fun b!2249791 () Bool)

(assert (=> b!2249791 (= e!1439649 tp_is_empty!10363)))

(assert (= (and b!2249186 ((_ is ElementMatch!6571) (regex!4223 (h!32047 (t!200588 rules!1750))))) b!2249791))

(assert (= (and b!2249186 ((_ is Concat!10957) (regex!4223 (h!32047 (t!200588 rules!1750))))) b!2249792))

(assert (= (and b!2249186 ((_ is Star!6571) (regex!4223 (h!32047 (t!200588 rules!1750))))) b!2249793))

(assert (= (and b!2249186 ((_ is Union!6571) (regex!4223 (h!32047 (t!200588 rules!1750))))) b!2249794))

(declare-fun b!2249797 () Bool)

(declare-fun b_free!65857 () Bool)

(declare-fun b_next!66561 () Bool)

(assert (=> b!2249797 (= b_free!65857 (not b_next!66561))))

(declare-fun t!200702 () Bool)

(declare-fun tb!133289 () Bool)

(assert (=> (and b!2249797 (= (toValue!5957 (transformation!4223 (h!32047 (t!200588 (t!200588 rules!1750))))) (toValue!5957 (transformation!4223 (rule!6523 (_1!15577 (get!8041 lt!836149)))))) t!200702) tb!133289))

(declare-fun result!162484 () Bool)

(assert (= result!162484 result!162434))

(assert (=> d!667389 t!200702))

(declare-fun tp!710661 () Bool)

(declare-fun b_and!176165 () Bool)

(assert (=> b!2249797 (= tp!710661 (and (=> t!200702 result!162484) b_and!176165))))

(declare-fun b_free!65859 () Bool)

(declare-fun b_next!66563 () Bool)

(assert (=> b!2249797 (= b_free!65859 (not b_next!66563))))

(declare-fun tb!133291 () Bool)

(declare-fun t!200704 () Bool)

(assert (=> (and b!2249797 (= (toChars!5816 (transformation!4223 (h!32047 (t!200588 (t!200588 rules!1750))))) (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456))))) t!200704) tb!133291))

(declare-fun result!162486 () Bool)

(assert (= result!162486 result!162354))

(assert (=> b!2248947 t!200704))

(declare-fun tb!133293 () Bool)

(declare-fun t!200706 () Bool)

(assert (=> (and b!2249797 (= (toChars!5816 (transformation!4223 (h!32047 (t!200588 (t!200588 rules!1750))))) (toChars!5816 (transformation!4223 (rule!6523 (head!4786 tokens!456))))) t!200706) tb!133293))

(declare-fun result!162488 () Bool)

(assert (= result!162488 result!162364))

(assert (=> d!667203 t!200706))

(declare-fun tb!133295 () Bool)

(declare-fun t!200708 () Bool)

(assert (=> (and b!2249797 (= (toChars!5816 (transformation!4223 (h!32047 (t!200588 (t!200588 rules!1750))))) (toChars!5816 (transformation!4223 (rule!6523 (_1!15577 (get!8041 lt!836149)))))) t!200708) tb!133295))

(declare-fun result!162490 () Bool)

(assert (= result!162490 result!162422))

(assert (=> d!667339 t!200708))

(declare-fun tb!133297 () Bool)

(declare-fun t!200710 () Bool)

(assert (=> (and b!2249797 (= (toChars!5816 (transformation!4223 (h!32047 (t!200588 (t!200588 rules!1750))))) (toChars!5816 (transformation!4223 (rule!6523 (h!32046 (t!200587 tokens!456)))))) t!200710) tb!133297))

(declare-fun result!162492 () Bool)

(assert (= result!162492 result!162460))

(assert (=> b!2249554 t!200710))

(declare-fun b_and!176167 () Bool)

(declare-fun tp!710659 () Bool)

(assert (=> b!2249797 (= tp!710659 (and (=> t!200704 result!162486) (=> t!200706 result!162488) (=> t!200708 result!162490) (=> t!200710 result!162492) b_and!176167))))

(declare-fun e!1439651 () Bool)

(assert (=> b!2249797 (= e!1439651 (and tp!710661 tp!710659))))

(declare-fun e!1439652 () Bool)

(declare-fun tp!710660 () Bool)

(declare-fun b!2249796 () Bool)

(assert (=> b!2249796 (= e!1439652 (and tp!710660 (inv!36170 (tag!4713 (h!32047 (t!200588 (t!200588 rules!1750))))) (inv!36173 (transformation!4223 (h!32047 (t!200588 (t!200588 rules!1750))))) e!1439651))))

(declare-fun b!2249795 () Bool)

(declare-fun e!1439653 () Bool)

(declare-fun tp!710658 () Bool)

(assert (=> b!2249795 (= e!1439653 (and e!1439652 tp!710658))))

(assert (=> b!2249185 (= tp!710466 e!1439653)))

(assert (= b!2249796 b!2249797))

(assert (= b!2249795 b!2249796))

(assert (= (and b!2249185 ((_ is Cons!26646) (t!200588 (t!200588 rules!1750)))) b!2249795))

(declare-fun m!2680757 () Bool)

(assert (=> b!2249796 m!2680757))

(declare-fun m!2680759 () Bool)

(assert (=> b!2249796 m!2680759))

(declare-fun b!2249798 () Bool)

(declare-fun e!1439654 () Bool)

(declare-fun tp!710662 () Bool)

(assert (=> b!2249798 (= e!1439654 (and tp_is_empty!10363 tp!710662))))

(assert (=> b!2249196 (= tp!710480 e!1439654)))

(assert (= (and b!2249196 ((_ is Cons!26644) (t!200586 (t!200586 otherP!12)))) b!2249798))

(declare-fun e!1439655 () Bool)

(assert (=> b!2249190 (= tp!710473 e!1439655)))

(declare-fun b!2249801 () Bool)

(declare-fun tp!710666 () Bool)

(assert (=> b!2249801 (= e!1439655 tp!710666)))

(declare-fun b!2249802 () Bool)

(declare-fun tp!710663 () Bool)

(declare-fun tp!710667 () Bool)

(assert (=> b!2249802 (= e!1439655 (and tp!710663 tp!710667))))

(declare-fun b!2249800 () Bool)

(declare-fun tp!710665 () Bool)

(declare-fun tp!710664 () Bool)

(assert (=> b!2249800 (= e!1439655 (and tp!710665 tp!710664))))

(declare-fun b!2249799 () Bool)

(assert (=> b!2249799 (= e!1439655 tp_is_empty!10363)))

(assert (= (and b!2249190 ((_ is ElementMatch!6571) (reg!6900 (regex!4223 otherR!12)))) b!2249799))

(assert (= (and b!2249190 ((_ is Concat!10957) (reg!6900 (regex!4223 otherR!12)))) b!2249800))

(assert (= (and b!2249190 ((_ is Star!6571) (reg!6900 (regex!4223 otherR!12)))) b!2249801))

(assert (= (and b!2249190 ((_ is Union!6571) (reg!6900 (regex!4223 otherR!12)))) b!2249802))

(declare-fun e!1439656 () Bool)

(assert (=> b!2249189 (= tp!710472 e!1439656)))

(declare-fun b!2249805 () Bool)

(declare-fun tp!710671 () Bool)

(assert (=> b!2249805 (= e!1439656 tp!710671)))

(declare-fun b!2249806 () Bool)

(declare-fun tp!710668 () Bool)

(declare-fun tp!710672 () Bool)

(assert (=> b!2249806 (= e!1439656 (and tp!710668 tp!710672))))

(declare-fun b!2249804 () Bool)

(declare-fun tp!710670 () Bool)

(declare-fun tp!710669 () Bool)

(assert (=> b!2249804 (= e!1439656 (and tp!710670 tp!710669))))

(declare-fun b!2249803 () Bool)

(assert (=> b!2249803 (= e!1439656 tp_is_empty!10363)))

(assert (= (and b!2249189 ((_ is ElementMatch!6571) (regOne!13654 (regex!4223 otherR!12)))) b!2249803))

(assert (= (and b!2249189 ((_ is Concat!10957) (regOne!13654 (regex!4223 otherR!12)))) b!2249804))

(assert (= (and b!2249189 ((_ is Star!6571) (regOne!13654 (regex!4223 otherR!12)))) b!2249805))

(assert (= (and b!2249189 ((_ is Union!6571) (regOne!13654 (regex!4223 otherR!12)))) b!2249806))

(declare-fun e!1439657 () Bool)

(assert (=> b!2249189 (= tp!710471 e!1439657)))

(declare-fun b!2249809 () Bool)

(declare-fun tp!710676 () Bool)

(assert (=> b!2249809 (= e!1439657 tp!710676)))

(declare-fun b!2249810 () Bool)

(declare-fun tp!710673 () Bool)

(declare-fun tp!710677 () Bool)

(assert (=> b!2249810 (= e!1439657 (and tp!710673 tp!710677))))

(declare-fun b!2249808 () Bool)

(declare-fun tp!710675 () Bool)

(declare-fun tp!710674 () Bool)

(assert (=> b!2249808 (= e!1439657 (and tp!710675 tp!710674))))

(declare-fun b!2249807 () Bool)

(assert (=> b!2249807 (= e!1439657 tp_is_empty!10363)))

(assert (= (and b!2249189 ((_ is ElementMatch!6571) (regTwo!13654 (regex!4223 otherR!12)))) b!2249807))

(assert (= (and b!2249189 ((_ is Concat!10957) (regTwo!13654 (regex!4223 otherR!12)))) b!2249808))

(assert (= (and b!2249189 ((_ is Star!6571) (regTwo!13654 (regex!4223 otherR!12)))) b!2249809))

(assert (= (and b!2249189 ((_ is Union!6571) (regTwo!13654 (regex!4223 otherR!12)))) b!2249810))

(declare-fun tp!710679 () Bool)

(declare-fun e!1439659 () Bool)

(declare-fun b!2249811 () Bool)

(declare-fun tp!710680 () Bool)

(assert (=> b!2249811 (= e!1439659 (and (inv!36175 (left!20242 (c!357684 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456)))) (value!134175 (h!32046 tokens!456)))))) tp!710680 (inv!36175 (right!20572 (c!357684 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456)))) (value!134175 (h!32046 tokens!456)))))) tp!710679))))

(declare-fun b!2249813 () Bool)

(declare-fun e!1439658 () Bool)

(declare-fun tp!710678 () Bool)

(assert (=> b!2249813 (= e!1439658 tp!710678)))

(declare-fun b!2249812 () Bool)

(assert (=> b!2249812 (= e!1439659 (and (inv!36181 (xs!11536 (c!357684 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456)))) (value!134175 (h!32046 tokens!456)))))) e!1439658))))

(assert (=> b!2248953 (= tp!710422 (and (inv!36175 (c!357684 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456)))) (value!134175 (h!32046 tokens!456))))) e!1439659))))

(assert (= (and b!2248953 ((_ is Node!8594) (c!357684 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456)))) (value!134175 (h!32046 tokens!456)))))) b!2249811))

(assert (= b!2249812 b!2249813))

(assert (= (and b!2248953 ((_ is Leaf!12691) (c!357684 (dynLambda!11579 (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456)))) (value!134175 (h!32046 tokens!456)))))) b!2249812))

(declare-fun m!2680761 () Bool)

(assert (=> b!2249811 m!2680761))

(declare-fun m!2680763 () Bool)

(assert (=> b!2249811 m!2680763))

(declare-fun m!2680765 () Bool)

(assert (=> b!2249812 m!2680765))

(assert (=> b!2248953 m!2679925))

(declare-fun b!2249814 () Bool)

(declare-fun e!1439660 () Bool)

(declare-fun tp!710681 () Bool)

(assert (=> b!2249814 (= e!1439660 (and tp_is_empty!10363 tp!710681))))

(assert (=> b!2249174 (= tp!710457 e!1439660)))

(assert (= (and b!2249174 ((_ is Cons!26644) (t!200586 (t!200586 suffix!886)))) b!2249814))

(declare-fun b!2249815 () Bool)

(declare-fun e!1439661 () Bool)

(declare-fun tp!710682 () Bool)

(assert (=> b!2249815 (= e!1439661 (and tp_is_empty!10363 tp!710682))))

(assert (=> b!2249197 (= tp!710481 e!1439661)))

(assert (= (and b!2249197 ((_ is Cons!26644) (t!200586 (t!200586 input!1722)))) b!2249815))

(declare-fun e!1439662 () Bool)

(assert (=> b!2249191 (= tp!710470 e!1439662)))

(declare-fun b!2249818 () Bool)

(declare-fun tp!710686 () Bool)

(assert (=> b!2249818 (= e!1439662 tp!710686)))

(declare-fun b!2249819 () Bool)

(declare-fun tp!710683 () Bool)

(declare-fun tp!710687 () Bool)

(assert (=> b!2249819 (= e!1439662 (and tp!710683 tp!710687))))

(declare-fun b!2249817 () Bool)

(declare-fun tp!710685 () Bool)

(declare-fun tp!710684 () Bool)

(assert (=> b!2249817 (= e!1439662 (and tp!710685 tp!710684))))

(declare-fun b!2249816 () Bool)

(assert (=> b!2249816 (= e!1439662 tp_is_empty!10363)))

(assert (= (and b!2249191 ((_ is ElementMatch!6571) (regOne!13655 (regex!4223 otherR!12)))) b!2249816))

(assert (= (and b!2249191 ((_ is Concat!10957) (regOne!13655 (regex!4223 otherR!12)))) b!2249817))

(assert (= (and b!2249191 ((_ is Star!6571) (regOne!13655 (regex!4223 otherR!12)))) b!2249818))

(assert (= (and b!2249191 ((_ is Union!6571) (regOne!13655 (regex!4223 otherR!12)))) b!2249819))

(declare-fun e!1439663 () Bool)

(assert (=> b!2249191 (= tp!710474 e!1439663)))

(declare-fun b!2249822 () Bool)

(declare-fun tp!710691 () Bool)

(assert (=> b!2249822 (= e!1439663 tp!710691)))

(declare-fun b!2249823 () Bool)

(declare-fun tp!710688 () Bool)

(declare-fun tp!710692 () Bool)

(assert (=> b!2249823 (= e!1439663 (and tp!710688 tp!710692))))

(declare-fun b!2249821 () Bool)

(declare-fun tp!710690 () Bool)

(declare-fun tp!710689 () Bool)

(assert (=> b!2249821 (= e!1439663 (and tp!710690 tp!710689))))

(declare-fun b!2249820 () Bool)

(assert (=> b!2249820 (= e!1439663 tp_is_empty!10363)))

(assert (= (and b!2249191 ((_ is ElementMatch!6571) (regTwo!13655 (regex!4223 otherR!12)))) b!2249820))

(assert (= (and b!2249191 ((_ is Concat!10957) (regTwo!13655 (regex!4223 otherR!12)))) b!2249821))

(assert (= (and b!2249191 ((_ is Star!6571) (regTwo!13655 (regex!4223 otherR!12)))) b!2249822))

(assert (= (and b!2249191 ((_ is Union!6571) (regTwo!13655 (regex!4223 otherR!12)))) b!2249823))

(declare-fun b_lambda!71909 () Bool)

(assert (= b_lambda!71891 (or (and b!2248916 b_free!65823 (= (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456)))) (toChars!5816 (transformation!4223 (rule!6523 (head!4786 tokens!456)))))) (and b!2248906 b_free!65835 (= (toChars!5816 (transformation!4223 (h!32047 rules!1750))) (toChars!5816 (transformation!4223 (rule!6523 (head!4786 tokens!456)))))) (and b!2248915 b_free!65827 (= (toChars!5816 (transformation!4223 otherR!12)) (toChars!5816 (transformation!4223 (rule!6523 (head!4786 tokens!456)))))) (and b!2249797 b_free!65859 (= (toChars!5816 (transformation!4223 (h!32047 (t!200588 (t!200588 rules!1750))))) (toChars!5816 (transformation!4223 (rule!6523 (head!4786 tokens!456)))))) (and b!2249187 b_free!65843 (= (toChars!5816 (transformation!4223 (h!32047 (t!200588 rules!1750)))) (toChars!5816 (transformation!4223 (rule!6523 (head!4786 tokens!456)))))) (and b!2249169 b_free!65839 (= (toChars!5816 (transformation!4223 (rule!6523 (h!32046 (t!200587 tokens!456))))) (toChars!5816 (transformation!4223 (rule!6523 (head!4786 tokens!456)))))) (and b!2249744 b_free!65855 (= (toChars!5816 (transformation!4223 (rule!6523 (h!32046 (t!200587 (t!200587 tokens!456)))))) (toChars!5816 (transformation!4223 (rule!6523 (head!4786 tokens!456)))))) (and b!2248908 b_free!65831 (= (toChars!5816 (transformation!4223 r!2363)) (toChars!5816 (transformation!4223 (rule!6523 (head!4786 tokens!456)))))) b_lambda!71909)))

(declare-fun b_lambda!71911 () Bool)

(assert (= b_lambda!71907 (or (and b!2249797 b_free!65859 (= (toChars!5816 (transformation!4223 (h!32047 (t!200588 (t!200588 rules!1750))))) (toChars!5816 (transformation!4223 (rule!6523 (h!32046 (t!200587 tokens!456))))))) (and b!2248906 b_free!65835 (= (toChars!5816 (transformation!4223 (h!32047 rules!1750))) (toChars!5816 (transformation!4223 (rule!6523 (h!32046 (t!200587 tokens!456))))))) (and b!2249744 b_free!65855 (= (toChars!5816 (transformation!4223 (rule!6523 (h!32046 (t!200587 (t!200587 tokens!456)))))) (toChars!5816 (transformation!4223 (rule!6523 (h!32046 (t!200587 tokens!456))))))) (and b!2249169 b_free!65839) (and b!2249187 b_free!65843 (= (toChars!5816 (transformation!4223 (h!32047 (t!200588 rules!1750)))) (toChars!5816 (transformation!4223 (rule!6523 (h!32046 (t!200587 tokens!456))))))) (and b!2248916 b_free!65823 (= (toChars!5816 (transformation!4223 (rule!6523 (h!32046 tokens!456)))) (toChars!5816 (transformation!4223 (rule!6523 (h!32046 (t!200587 tokens!456))))))) (and b!2248908 b_free!65831 (= (toChars!5816 (transformation!4223 r!2363)) (toChars!5816 (transformation!4223 (rule!6523 (h!32046 (t!200587 tokens!456))))))) (and b!2248915 b_free!65827 (= (toChars!5816 (transformation!4223 otherR!12)) (toChars!5816 (transformation!4223 (rule!6523 (h!32046 (t!200587 tokens!456))))))) b_lambda!71911)))

(check-sat (not d!667349) (not b!2249653) (not b!2249731) (not d!667381) (not b!2249716) (not b!2249804) (not b!2249738) (not d!667339) (not d!667455) (not b!2249821) (not tb!133231) b_and!176155 (not b!2249401) (not b_next!66529) (not d!667433) (not b!2249805) b_and!176161 (not b_next!66563) (not d!667425) (not b!2249746) (not b!2249555) (not b!2249554) (not b!2249713) (not b!2249741) (not b!2249764) (not b!2249762) (not d!667435) tp_is_empty!10363 b_and!176125 (not b!2249778) (not b!2249784) (not b!2249794) (not b!2249768) (not b!2249442) (not b!2249651) (not b!2249800) (not b!2249445) (not b!2249810) (not d!667509) (not d!667447) (not b!2249811) (not b!2249629) (not d!667335) (not b!2249732) (not b!2249771) (not b!2249574) (not b!2249776) (not b!2249542) (not b!2249711) (not b!2249535) (not b!2249701) (not b!2249639) (not b!2249756) (not d!667467) (not b!2249730) (not b!2249788) (not b!2249815) (not d!667393) (not b_next!66531) (not d!667337) (not b_next!66527) (not b!2249717) (not b!2249550) (not d!667399) (not b!2249793) (not b!2249392) b_and!176167 (not b!2249541) (not b!2249628) (not b!2249779) (not d!667401) (not d!667479) (not b!2249540) (not b!2249690) (not d!667451) (not b!2249748) b_and!176129 (not b!2249671) (not d!667357) (not b!2249534) (not b!2249736) (not d!667359) (not b!2249572) (not bm!135516) (not b!2249505) (not b!2249475) (not b_next!66525) (not b!2249726) (not b!2249551) b_and!176135 b_and!176163 (not b!2249477) (not b!2249649) (not b!2249632) (not b!2249801) (not b!2249735) (not d!667443) (not b!2249786) (not b!2249754) (not b!2249468) b_and!176133 (not b!2249437) (not b!2249696) (not b!2249770) (not b!2249790) (not b!2249634) (not b!2249443) (not b!2249740) (not b!2249823) (not d!667405) (not tb!133267) (not b_next!66541) (not b!2249758) (not d!667367) (not d!667395) (not d!667319) (not bm!135522) (not b_lambda!71893) (not d!667353) (not b!2249760) (not d!667347) (not b_lambda!71901) (not b!2249567) (not b!2249782) (not b!2249712) (not d!667497) (not b!2249490) (not b_lambda!71903) (not b_next!66561) (not b!2249743) (not b!2249759) (not b!2249814) (not b!2249715) (not b_next!66543) (not b!2249819) (not b!2249409) b_and!176127 (not b!2249755) (not d!667507) (not d!667317) (not d!667345) b_and!176153 (not bm!135533) (not b!2249635) (not b!2249808) (not b!2249578) (not b!2249774) (not b_next!66537) (not bm!135536) (not b!2249703) (not b!2249766) (not b!2248976) (not b_next!66533) (not d!667465) (not b!2249689) (not b!2249785) (not b!2249783) (not d!667477) (not b!2249492) (not d!667379) (not b!2249399) (not b!2249806) (not b!2249435) (not b!2249780) (not b!2249674) (not b!2249573) (not b!2249751) b_and!176149 (not b!2249763) b_and!176157 (not b!2249416) (not b!2249705) (not b!2249413) (not b!2249707) (not b!2249695) (not b!2249669) (not b!2249441) (not b!2249482) (not b!2249809) (not d!667427) (not b!2249796) (not d!667333) (not b!2249537) (not b!2249415) (not b!2249556) (not b!2249772) (not b_lambda!71911) (not bm!135521) (not b!2249750) (not b_next!66547) (not b!2249641) (not b_next!66545) (not b!2249566) (not b!2249617) (not b!2249686) (not b!2249410) (not b!2249581) (not b!2249812) (not b!2249822) b_and!176165 (not b!2249414) (not d!667327) (not b!2249644) (not b!2249818) (not b_next!66557) (not tb!133243) (not b_next!66539) (not b_next!66559) (not b!2249650) (not b_next!66535) (not b!2249734) (not b!2249727) (not b!2249775) (not b!2249739) (not d!667391) (not b!2249767) (not b!2249607) (not d!667329) (not b!2249802) (not b!2249474) (not b!2249708) (not d!667403) (not bm!135518) (not d!667463) (not b!2249439) (not b!2249795) (not b!2249642) (not d!667505) (not b!2249747) (not b!2249699) (not b!2249792) (not b!2248953) b_and!176159 (not b!2249789) (not d!667475) (not b!2249817) (not b!2249685) (not d!667471) (not b!2249709) (not b!2249728) (not b!2249702) (not d!667421) b_and!176151 (not d!667321) (not d!667493) (not b!2249752) (not b!2249583) (not b!2249438) (not bm!135519) (not b!2249798) (not b!2249742) (not b!2249706) (not b!2249440) (not d!667371) (not b!2249580) b_and!176131 (not d!667495) (not b!2249813) (not b_lambda!71909) (not b!2249668) (not bm!135535) (not bm!135532) (not d!667423) (not d!667407) (not b!2249570) (not d!667491))
(check-sat b_and!176155 b_and!176125 b_and!176167 b_and!176129 b_and!176133 (not b_next!66541) (not b_next!66537) (not b_next!66533) b_and!176165 b_and!176159 b_and!176151 b_and!176131 (not b_next!66529) b_and!176161 (not b_next!66563) (not b_next!66531) (not b_next!66527) b_and!176135 b_and!176163 (not b_next!66525) (not b_next!66561) (not b_next!66543) b_and!176127 b_and!176153 b_and!176149 b_and!176157 (not b_next!66547) (not b_next!66545) (not b_next!66535) (not b_next!66557) (not b_next!66539) (not b_next!66559))
