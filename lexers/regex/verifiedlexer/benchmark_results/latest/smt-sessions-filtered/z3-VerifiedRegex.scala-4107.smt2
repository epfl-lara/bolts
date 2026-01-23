; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!220032 () Bool)

(assert start!220032)

(declare-fun b!2254929 () Bool)

(declare-fun b_free!66269 () Bool)

(declare-fun b_next!66973 () Bool)

(assert (=> b!2254929 (= b_free!66269 (not b_next!66973))))

(declare-fun tp!712691 () Bool)

(declare-fun b_and!176865 () Bool)

(assert (=> b!2254929 (= tp!712691 b_and!176865)))

(declare-fun b_free!66271 () Bool)

(declare-fun b_next!66975 () Bool)

(assert (=> b!2254929 (= b_free!66271 (not b_next!66975))))

(declare-fun tp!712681 () Bool)

(declare-fun b_and!176867 () Bool)

(assert (=> b!2254929 (= tp!712681 b_and!176867)))

(declare-fun b!2254941 () Bool)

(declare-fun b_free!66273 () Bool)

(declare-fun b_next!66977 () Bool)

(assert (=> b!2254941 (= b_free!66273 (not b_next!66977))))

(declare-fun tp!712683 () Bool)

(declare-fun b_and!176869 () Bool)

(assert (=> b!2254941 (= tp!712683 b_and!176869)))

(declare-fun b_free!66275 () Bool)

(declare-fun b_next!66979 () Bool)

(assert (=> b!2254941 (= b_free!66275 (not b_next!66979))))

(declare-fun tp!712689 () Bool)

(declare-fun b_and!176871 () Bool)

(assert (=> b!2254941 (= tp!712689 b_and!176871)))

(declare-fun b!2254945 () Bool)

(declare-fun b_free!66277 () Bool)

(declare-fun b_next!66981 () Bool)

(assert (=> b!2254945 (= b_free!66277 (not b_next!66981))))

(declare-fun tp!712688 () Bool)

(declare-fun b_and!176873 () Bool)

(assert (=> b!2254945 (= tp!712688 b_and!176873)))

(declare-fun b_free!66279 () Bool)

(declare-fun b_next!66983 () Bool)

(assert (=> b!2254945 (= b_free!66279 (not b_next!66983))))

(declare-fun tp!712685 () Bool)

(declare-fun b_and!176875 () Bool)

(assert (=> b!2254945 (= tp!712685 b_and!176875)))

(declare-fun b!2254928 () Bool)

(declare-fun b_free!66281 () Bool)

(declare-fun b_next!66985 () Bool)

(assert (=> b!2254928 (= b_free!66281 (not b_next!66985))))

(declare-fun tp!712694 () Bool)

(declare-fun b_and!176877 () Bool)

(assert (=> b!2254928 (= tp!712694 b_and!176877)))

(declare-fun b_free!66283 () Bool)

(declare-fun b_next!66987 () Bool)

(assert (=> b!2254928 (= b_free!66283 (not b_next!66987))))

(declare-fun tp!712687 () Bool)

(declare-fun b_and!176879 () Bool)

(assert (=> b!2254928 (= tp!712687 b_and!176879)))

(declare-fun e!1443309 () Bool)

(declare-fun tp!712680 () Bool)

(declare-fun b!2254914 () Bool)

(declare-datatypes ((List!26833 0))(
  ( (Nil!26739) (Cons!26739 (h!32140 (_ BitVec 16)) (t!201157 List!26833)) )
))
(declare-datatypes ((TokenValue!4407 0))(
  ( (FloatLiteralValue!8814 (text!31294 List!26833)) (TokenValueExt!4406 (__x!17874 Int)) (Broken!22035 (value!134776 List!26833)) (Object!4500) (End!4407) (Def!4407) (Underscore!4407) (Match!4407) (Else!4407) (Error!4407) (Case!4407) (If!4407) (Extends!4407) (Abstract!4407) (Class!4407) (Val!4407) (DelimiterValue!8814 (del!4467 List!26833)) (KeywordValue!4413 (value!134777 List!26833)) (CommentValue!8814 (value!134778 List!26833)) (WhitespaceValue!8814 (value!134779 List!26833)) (IndentationValue!4407 (value!134780 List!26833)) (String!29138) (Int32!4407) (Broken!22036 (value!134781 List!26833)) (Boolean!4408) (Unit!39661) (OperatorValue!4410 (op!4467 List!26833)) (IdentifierValue!8814 (value!134782 List!26833)) (IdentifierValue!8815 (value!134783 List!26833)) (WhitespaceValue!8815 (value!134784 List!26833)) (True!8814) (False!8814) (Broken!22037 (value!134785 List!26833)) (Broken!22038 (value!134786 List!26833)) (True!8815) (RightBrace!4407) (RightBracket!4407) (Colon!4407) (Null!4407) (Comma!4407) (LeftBracket!4407) (False!8815) (LeftBrace!4407) (ImaginaryLiteralValue!4407 (text!31295 List!26833)) (StringLiteralValue!13221 (value!134787 List!26833)) (EOFValue!4407 (value!134788 List!26833)) (IdentValue!4407 (value!134789 List!26833)) (DelimiterValue!8815 (value!134790 List!26833)) (DedentValue!4407 (value!134791 List!26833)) (NewLineValue!4407 (value!134792 List!26833)) (IntegerValue!13221 (value!134793 (_ BitVec 32)) (text!31296 List!26833)) (IntegerValue!13222 (value!134794 Int) (text!31297 List!26833)) (Times!4407) (Or!4407) (Equal!4407) (Minus!4407) (Broken!22039 (value!134795 List!26833)) (And!4407) (Div!4407) (LessEqual!4407) (Mod!4407) (Concat!11000) (Not!4407) (Plus!4407) (SpaceValue!4407 (value!134796 List!26833)) (IntegerValue!13223 (value!134797 Int) (text!31298 List!26833)) (StringLiteralValue!13222 (text!31299 List!26833)) (FloatLiteralValue!8815 (text!31300 List!26833)) (BytesLiteralValue!4407 (value!134798 List!26833)) (CommentValue!8815 (value!134799 List!26833)) (StringLiteralValue!13223 (value!134800 List!26833)) (ErrorTokenValue!4407 (msg!4468 List!26833)) )
))
(declare-datatypes ((C!13332 0))(
  ( (C!13333 (val!7714 Int)) )
))
(declare-datatypes ((List!26834 0))(
  ( (Nil!26740) (Cons!26740 (h!32141 C!13332) (t!201158 List!26834)) )
))
(declare-datatypes ((IArray!17281 0))(
  ( (IArray!17282 (innerList!8698 List!26834)) )
))
(declare-datatypes ((Conc!8638 0))(
  ( (Node!8638 (left!20309 Conc!8638) (right!20639 Conc!8638) (csize!17506 Int) (cheight!8849 Int)) (Leaf!12746 (xs!11580 IArray!17281) (csize!17507 Int)) (Empty!8638) )
))
(declare-datatypes ((BalanceConc!17004 0))(
  ( (BalanceConc!17005 (c!358444 Conc!8638)) )
))
(declare-datatypes ((Regex!6593 0))(
  ( (ElementMatch!6593 (c!358445 C!13332)) (Concat!11001 (regOne!13698 Regex!6593) (regTwo!13698 Regex!6593)) (EmptyExpr!6593) (Star!6593 (reg!6922 Regex!6593)) (EmptyLang!6593) (Union!6593 (regOne!13699 Regex!6593) (regTwo!13699 Regex!6593)) )
))
(declare-datatypes ((String!29139 0))(
  ( (String!29140 (value!134801 String)) )
))
(declare-datatypes ((TokenValueInjection!8354 0))(
  ( (TokenValueInjection!8355 (toValue!5987 Int) (toChars!5846 Int)) )
))
(declare-datatypes ((Rule!8290 0))(
  ( (Rule!8291 (regex!4245 Regex!6593) (tag!4735 String!29139) (isSeparator!4245 Bool) (transformation!4245 TokenValueInjection!8354)) )
))
(declare-datatypes ((List!26835 0))(
  ( (Nil!26741) (Cons!26741 (h!32142 Rule!8290) (t!201159 List!26835)) )
))
(declare-fun rules!1750 () List!26835)

(declare-fun e!1443305 () Bool)

(declare-fun inv!36271 (String!29139) Bool)

(declare-fun inv!36274 (TokenValueInjection!8354) Bool)

(assert (=> b!2254914 (= e!1443305 (and tp!712680 (inv!36271 (tag!4735 (h!32142 rules!1750))) (inv!36274 (transformation!4245 (h!32142 rules!1750))) e!1443309))))

(declare-fun b!2254915 () Bool)

(declare-fun e!1443299 () Bool)

(declare-fun tp_is_empty!10407 () Bool)

(declare-fun tp!712693 () Bool)

(assert (=> b!2254915 (= e!1443299 (and tp_is_empty!10407 tp!712693))))

(declare-fun b!2254916 () Bool)

(declare-fun res!963749 () Bool)

(declare-fun e!1443297 () Bool)

(assert (=> b!2254916 (=> (not res!963749) (not e!1443297))))

(declare-fun e!1443296 () Bool)

(assert (=> b!2254916 (= res!963749 e!1443296)))

(declare-fun res!963748 () Bool)

(assert (=> b!2254916 (=> res!963748 e!1443296)))

(declare-fun lt!838225 () Bool)

(assert (=> b!2254916 (= res!963748 lt!838225)))

(declare-fun b!2254917 () Bool)

(declare-fun e!1443298 () Bool)

(declare-fun tp!712682 () Bool)

(assert (=> b!2254917 (= e!1443298 (and e!1443305 tp!712682))))

(declare-fun b!2254918 () Bool)

(declare-fun e!1443310 () Bool)

(declare-fun e!1443291 () Bool)

(assert (=> b!2254918 (= e!1443310 e!1443291)))

(declare-fun res!963738 () Bool)

(assert (=> b!2254918 (=> res!963738 e!1443291)))

(declare-datatypes ((Token!7968 0))(
  ( (Token!7969 (value!134802 TokenValue!4407) (rule!6549 Rule!8290) (size!20932 Int) (originalCharacters!5015 List!26834)) )
))
(declare-datatypes ((List!26836 0))(
  ( (Nil!26742) (Cons!26742 (h!32143 Token!7968) (t!201160 List!26836)) )
))
(declare-fun tokens!456 () List!26836)

(declare-datatypes ((tuple2!26278 0))(
  ( (tuple2!26279 (_1!15649 Token!7968) (_2!15649 List!26834)) )
))
(declare-fun lt!838221 () tuple2!26278)

(assert (=> b!2254918 (= res!963738 (not (= (h!32143 tokens!456) (_1!15649 lt!838221))))))

(declare-datatypes ((Option!5221 0))(
  ( (None!5220) (Some!5220 (v!30244 tuple2!26278)) )
))
(declare-fun lt!838207 () Option!5221)

(declare-fun get!8075 (Option!5221) tuple2!26278)

(assert (=> b!2254918 (= lt!838221 (get!8075 lt!838207))))

(declare-datatypes ((LexerInterface!3842 0))(
  ( (LexerInterfaceExt!3839 (__x!17875 Int)) (Lexer!3840) )
))
(declare-fun thiss!16613 () LexerInterface!3842)

(declare-fun input!1722 () List!26834)

(declare-fun maxPrefix!2130 (LexerInterface!3842 List!26835 List!26834) Option!5221)

(assert (=> b!2254918 (= lt!838207 (maxPrefix!2130 thiss!16613 rules!1750 input!1722))))

(declare-fun b!2254919 () Bool)

(declare-fun e!1443293 () Bool)

(declare-fun otherR!12 () Rule!8290)

(declare-fun validRegex!2464 (Regex!6593) Bool)

(assert (=> b!2254919 (= e!1443293 (validRegex!2464 (regex!4245 otherR!12)))))

(declare-fun b!2254920 () Bool)

(declare-fun e!1443304 () Bool)

(assert (=> b!2254920 (= e!1443291 e!1443304)))

(declare-fun res!963752 () Bool)

(assert (=> b!2254920 (=> res!963752 e!1443304)))

(declare-fun lt!838219 () Int)

(declare-fun lt!838226 () Int)

(assert (=> b!2254920 (= res!963752 (= lt!838219 lt!838226))))

(declare-fun lt!838215 () List!26834)

(declare-fun size!20933 (List!26834) Int)

(assert (=> b!2254920 (= lt!838226 (size!20933 lt!838215))))

(declare-fun otherP!12 () List!26834)

(assert (=> b!2254920 (= lt!838219 (size!20933 otherP!12))))

(declare-fun lt!838220 () List!26834)

(assert (=> b!2254920 (= (_2!15649 lt!838221) lt!838220)))

(declare-datatypes ((Unit!39662 0))(
  ( (Unit!39663) )
))
(declare-fun lt!838213 () Unit!39662)

(declare-fun lemmaSamePrefixThenSameSuffix!990 (List!26834 List!26834 List!26834 List!26834 List!26834) Unit!39662)

(assert (=> b!2254920 (= lt!838213 (lemmaSamePrefixThenSameSuffix!990 lt!838215 (_2!15649 lt!838221) lt!838215 lt!838220 input!1722))))

(declare-fun getSuffix!1070 (List!26834 List!26834) List!26834)

(assert (=> b!2254920 (= lt!838220 (getSuffix!1070 input!1722 lt!838215))))

(declare-fun isPrefix!2235 (List!26834 List!26834) Bool)

(declare-fun ++!6517 (List!26834 List!26834) List!26834)

(assert (=> b!2254920 (isPrefix!2235 lt!838215 (++!6517 lt!838215 (_2!15649 lt!838221)))))

(declare-fun lt!838206 () Unit!39662)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1480 (List!26834 List!26834) Unit!39662)

(assert (=> b!2254920 (= lt!838206 (lemmaConcatTwoListThenFirstIsPrefix!1480 lt!838215 (_2!15649 lt!838221)))))

(declare-fun list!10281 (BalanceConc!17004) List!26834)

(declare-fun charsOf!2633 (Token!7968) BalanceConc!17004)

(assert (=> b!2254920 (= lt!838215 (list!10281 (charsOf!2633 (h!32143 tokens!456))))))

(declare-fun b!2254921 () Bool)

(declare-fun e!1443312 () Bool)

(declare-fun tp!712684 () Bool)

(assert (=> b!2254921 (= e!1443312 (and tp_is_empty!10407 tp!712684))))

(declare-fun b!2254922 () Bool)

(declare-fun e!1443306 () Bool)

(declare-fun r!2363 () Rule!8290)

(declare-fun matchR!2854 (Regex!6593 List!26834) Bool)

(declare-fun head!4816 (List!26836) Token!7968)

(assert (=> b!2254922 (= e!1443306 (not (matchR!2854 (regex!4245 r!2363) (list!10281 (charsOf!2633 (head!4816 tokens!456))))))))

(declare-fun b!2254923 () Bool)

(declare-fun res!963746 () Bool)

(assert (=> b!2254923 (=> (not res!963746) (not e!1443297))))

(assert (=> b!2254923 (= res!963746 (isPrefix!2235 otherP!12 input!1722))))

(declare-fun b!2254924 () Bool)

(declare-fun res!963737 () Bool)

(declare-fun e!1443284 () Bool)

(assert (=> b!2254924 (=> (not res!963737) (not e!1443284))))

(declare-fun contains!4597 (List!26835 Rule!8290) Bool)

(assert (=> b!2254924 (= res!963737 (contains!4597 rules!1750 r!2363))))

(declare-fun b!2254925 () Bool)

(declare-fun e!1443283 () Bool)

(declare-fun tp!712695 () Bool)

(assert (=> b!2254925 (= e!1443283 (and tp_is_empty!10407 tp!712695))))

(declare-fun b!2254926 () Bool)

(declare-fun res!963736 () Bool)

(assert (=> b!2254926 (=> (not res!963736) (not e!1443284))))

(assert (=> b!2254926 (= res!963736 (contains!4597 rules!1750 otherR!12))))

(declare-fun b!2254927 () Bool)

(declare-fun e!1443303 () Bool)

(assert (=> b!2254927 (= e!1443304 e!1443303)))

(declare-fun res!963745 () Bool)

(assert (=> b!2254927 (=> res!963745 e!1443303)))

(assert (=> b!2254927 (= res!963745 (not (isPrefix!2235 lt!838215 input!1722)))))

(declare-fun lt!838208 () Option!5221)

(declare-fun lt!838216 () Token!7968)

(assert (=> b!2254927 (= lt!838208 (Some!5220 (tuple2!26279 lt!838216 (_2!15649 lt!838221))))))

(declare-fun maxPrefixOneRule!1322 (LexerInterface!3842 Rule!8290 List!26834) Option!5221)

(assert (=> b!2254927 (= lt!838208 (maxPrefixOneRule!1322 thiss!16613 r!2363 input!1722))))

(declare-fun lt!838214 () BalanceConc!17004)

(declare-fun apply!6565 (TokenValueInjection!8354 BalanceConc!17004) TokenValue!4407)

(assert (=> b!2254927 (= lt!838216 (Token!7969 (apply!6565 (transformation!4245 r!2363) lt!838214) r!2363 lt!838226 lt!838215))))

(declare-fun seqFromList!2949 (List!26834) BalanceConc!17004)

(assert (=> b!2254927 (= lt!838214 (seqFromList!2949 lt!838215))))

(declare-fun lt!838209 () Unit!39662)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!563 (LexerInterface!3842 List!26835 List!26834 List!26834 List!26834 Rule!8290) Unit!39662)

(assert (=> b!2254927 (= lt!838209 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!563 thiss!16613 rules!1750 lt!838215 input!1722 (_2!15649 lt!838221) r!2363))))

(declare-fun e!1443307 () Bool)

(assert (=> b!2254928 (= e!1443307 (and tp!712694 tp!712687))))

(declare-fun e!1443301 () Bool)

(assert (=> b!2254929 (= e!1443301 (and tp!712691 tp!712681))))

(declare-fun b!2254931 () Bool)

(declare-fun res!963742 () Bool)

(assert (=> b!2254931 (=> (not res!963742) (not e!1443284))))

(declare-fun isEmpty!15091 (List!26835) Bool)

(assert (=> b!2254931 (= res!963742 (not (isEmpty!15091 rules!1750)))))

(declare-fun b!2254932 () Bool)

(declare-fun e!1443290 () Bool)

(declare-fun size!20934 (BalanceConc!17004) Int)

(assert (=> b!2254932 (= e!1443290 (<= (size!20934 (charsOf!2633 (head!4816 tokens!456))) (size!20933 otherP!12)))))

(declare-fun b!2254933 () Bool)

(declare-fun e!1443286 () Bool)

(assert (=> b!2254933 (= e!1443286 e!1443310)))

(declare-fun res!963753 () Bool)

(assert (=> b!2254933 (=> res!963753 e!1443310)))

(declare-fun lt!838210 () Int)

(declare-fun lt!838218 () Int)

(get-info :version)

(assert (=> b!2254933 (= res!963753 (or (<= lt!838218 lt!838210) ((_ is Nil!26742) tokens!456)))))

(declare-fun getIndex!266 (List!26835 Rule!8290) Int)

(assert (=> b!2254933 (= lt!838210 (getIndex!266 rules!1750 otherR!12))))

(assert (=> b!2254933 (= lt!838218 (getIndex!266 rules!1750 r!2363))))

(declare-fun ruleValid!1337 (LexerInterface!3842 Rule!8290) Bool)

(assert (=> b!2254933 (ruleValid!1337 thiss!16613 otherR!12)))

(declare-fun lt!838224 () Unit!39662)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!744 (LexerInterface!3842 Rule!8290 List!26835) Unit!39662)

(assert (=> b!2254933 (= lt!838224 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!744 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2254934 () Bool)

(declare-fun res!963735 () Bool)

(assert (=> b!2254934 (=> res!963735 e!1443303)))

(assert (=> b!2254934 (= res!963735 (not (matchR!2854 (regex!4245 r!2363) lt!838215)))))

(declare-fun e!1443294 () Bool)

(declare-fun b!2254935 () Bool)

(declare-fun tp!712686 () Bool)

(assert (=> b!2254935 (= e!1443294 (and tp!712686 (inv!36271 (tag!4735 otherR!12)) (inv!36274 (transformation!4245 otherR!12)) e!1443301))))

(declare-fun tp!712697 () Bool)

(declare-fun e!1443289 () Bool)

(declare-fun b!2254936 () Bool)

(declare-fun e!1443295 () Bool)

(assert (=> b!2254936 (= e!1443289 (and tp!712697 (inv!36271 (tag!4735 (rule!6549 (h!32143 tokens!456)))) (inv!36274 (transformation!4245 (rule!6549 (h!32143 tokens!456)))) e!1443295))))

(declare-fun b!2254937 () Bool)

(declare-fun tp!712692 () Bool)

(declare-fun e!1443282 () Bool)

(declare-fun inv!21 (TokenValue!4407) Bool)

(assert (=> b!2254937 (= e!1443282 (and (inv!21 (value!134802 (h!32143 tokens!456))) e!1443289 tp!712692))))

(declare-fun b!2254938 () Bool)

(assert (=> b!2254938 (= e!1443297 (not e!1443286))))

(declare-fun res!963747 () Bool)

(assert (=> b!2254938 (=> res!963747 e!1443286)))

(assert (=> b!2254938 (= res!963747 e!1443306)))

(declare-fun res!963750 () Bool)

(assert (=> b!2254938 (=> (not res!963750) (not e!1443306))))

(assert (=> b!2254938 (= res!963750 (not lt!838225))))

(assert (=> b!2254938 (ruleValid!1337 thiss!16613 r!2363)))

(declare-fun lt!838217 () Unit!39662)

(assert (=> b!2254938 (= lt!838217 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!744 thiss!16613 r!2363 rules!1750))))

(declare-fun tp!712696 () Bool)

(declare-fun b!2254939 () Bool)

(declare-fun e!1443287 () Bool)

(assert (=> b!2254939 (= e!1443287 (and tp!712696 (inv!36271 (tag!4735 r!2363)) (inv!36274 (transformation!4245 r!2363)) e!1443307))))

(declare-fun b!2254940 () Bool)

(declare-fun e!1443292 () Bool)

(assert (=> b!2254940 (= e!1443292 e!1443297)))

(declare-fun res!963740 () Bool)

(assert (=> b!2254940 (=> (not res!963740) (not e!1443297))))

(assert (=> b!2254940 (= res!963740 e!1443290)))

(declare-fun res!963743 () Bool)

(assert (=> b!2254940 (=> res!963743 e!1443290)))

(assert (=> b!2254940 (= res!963743 lt!838225)))

(declare-fun isEmpty!15092 (List!26836) Bool)

(assert (=> b!2254940 (= lt!838225 (isEmpty!15092 tokens!456))))

(assert (=> b!2254941 (= e!1443309 (and tp!712683 tp!712689))))

(declare-fun b!2254942 () Bool)

(declare-fun res!963739 () Bool)

(assert (=> b!2254942 (=> (not res!963739) (not e!1443297))))

(assert (=> b!2254942 (= res!963739 (not (= r!2363 otherR!12)))))

(declare-fun tp!712690 () Bool)

(declare-fun b!2254943 () Bool)

(declare-fun e!1443313 () Bool)

(declare-fun inv!36275 (Token!7968) Bool)

(assert (=> b!2254943 (= e!1443313 (and (inv!36275 (h!32143 tokens!456)) e!1443282 tp!712690))))

(declare-fun b!2254944 () Bool)

(declare-fun e!1443311 () Bool)

(assert (=> b!2254944 (= e!1443311 e!1443293)))

(declare-fun res!963734 () Bool)

(assert (=> b!2254944 (=> res!963734 e!1443293)))

(assert (=> b!2254944 (= res!963734 (>= lt!838210 lt!838218))))

(assert (=> b!2254944 (not (matchR!2854 (regex!4245 otherR!12) otherP!12))))

(declare-fun lt!838205 () Unit!39662)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!272 (LexerInterface!3842 List!26835 Rule!8290 List!26834 List!26834 List!26834 Rule!8290) Unit!39662)

(assert (=> b!2254944 (= lt!838205 (lemmaMaxPrefixOutputsMaxPrefix!272 thiss!16613 rules!1750 r!2363 lt!838215 input!1722 otherP!12 otherR!12))))

(assert (=> b!2254945 (= e!1443295 (and tp!712688 tp!712685))))

(declare-fun b!2254946 () Bool)

(assert (=> b!2254946 (= e!1443296 (= (rule!6549 (head!4816 tokens!456)) r!2363))))

(declare-fun b!2254947 () Bool)

(assert (=> b!2254947 (= e!1443284 e!1443292)))

(declare-fun res!963744 () Bool)

(assert (=> b!2254947 (=> (not res!963744) (not e!1443292))))

(declare-datatypes ((IArray!17283 0))(
  ( (IArray!17284 (innerList!8699 List!26836)) )
))
(declare-datatypes ((Conc!8639 0))(
  ( (Node!8639 (left!20310 Conc!8639) (right!20640 Conc!8639) (csize!17508 Int) (cheight!8850 Int)) (Leaf!12747 (xs!11581 IArray!17283) (csize!17509 Int)) (Empty!8639) )
))
(declare-datatypes ((BalanceConc!17006 0))(
  ( (BalanceConc!17007 (c!358446 Conc!8639)) )
))
(declare-datatypes ((tuple2!26280 0))(
  ( (tuple2!26281 (_1!15650 BalanceConc!17006) (_2!15650 BalanceConc!17004)) )
))
(declare-fun lt!838211 () tuple2!26280)

(declare-fun suffix!886 () List!26834)

(declare-datatypes ((tuple2!26282 0))(
  ( (tuple2!26283 (_1!15651 List!26836) (_2!15651 List!26834)) )
))
(declare-fun list!10282 (BalanceConc!17006) List!26836)

(assert (=> b!2254947 (= res!963744 (= (tuple2!26283 (list!10282 (_1!15650 lt!838211)) (list!10281 (_2!15650 lt!838211))) (tuple2!26283 tokens!456 suffix!886)))))

(declare-fun lex!1681 (LexerInterface!3842 List!26835 BalanceConc!17004) tuple2!26280)

(assert (=> b!2254947 (= lt!838211 (lex!1681 thiss!16613 rules!1750 (seqFromList!2949 input!1722)))))

(declare-fun b!2254948 () Bool)

(declare-fun res!963751 () Bool)

(assert (=> b!2254948 (=> (not res!963751) (not e!1443284))))

(declare-fun rulesInvariant!3344 (LexerInterface!3842 List!26835) Bool)

(assert (=> b!2254948 (= res!963751 (rulesInvariant!3344 thiss!16613 rules!1750))))

(declare-fun b!2254930 () Bool)

(assert (=> b!2254930 (= e!1443303 e!1443311)))

(declare-fun res!963733 () Bool)

(assert (=> b!2254930 (=> res!963733 e!1443311)))

(declare-fun lt!838212 () Option!5221)

(assert (=> b!2254930 (= res!963733 (or (not (= lt!838208 lt!838212)) (<= lt!838219 lt!838226) (not (= lt!838207 lt!838212))))))

(assert (=> b!2254930 (= lt!838212 (Some!5220 (tuple2!26279 lt!838216 lt!838220)))))

(assert (=> b!2254930 (isPrefix!2235 input!1722 input!1722)))

(declare-fun lt!838223 () Unit!39662)

(declare-fun lemmaIsPrefixRefl!1441 (List!26834 List!26834) Unit!39662)

(assert (=> b!2254930 (= lt!838223 (lemmaIsPrefixRefl!1441 input!1722 input!1722))))

(declare-fun lt!838222 () Unit!39662)

(declare-fun lemmaSemiInverse!1010 (TokenValueInjection!8354 BalanceConc!17004) Unit!39662)

(assert (=> b!2254930 (= lt!838222 (lemmaSemiInverse!1010 (transformation!4245 r!2363) lt!838214))))

(declare-fun res!963741 () Bool)

(assert (=> start!220032 (=> (not res!963741) (not e!1443284))))

(assert (=> start!220032 (= res!963741 ((_ is Lexer!3840) thiss!16613))))

(assert (=> start!220032 e!1443284))

(assert (=> start!220032 true))

(assert (=> start!220032 e!1443312))

(assert (=> start!220032 e!1443294))

(assert (=> start!220032 e!1443299))

(assert (=> start!220032 e!1443283))

(assert (=> start!220032 e!1443298))

(assert (=> start!220032 e!1443287))

(assert (=> start!220032 e!1443313))

(assert (= (and start!220032 res!963741) b!2254931))

(assert (= (and b!2254931 res!963742) b!2254948))

(assert (= (and b!2254948 res!963751) b!2254924))

(assert (= (and b!2254924 res!963737) b!2254926))

(assert (= (and b!2254926 res!963736) b!2254947))

(assert (= (and b!2254947 res!963744) b!2254940))

(assert (= (and b!2254940 (not res!963743)) b!2254932))

(assert (= (and b!2254940 res!963740) b!2254916))

(assert (= (and b!2254916 (not res!963748)) b!2254946))

(assert (= (and b!2254916 res!963749) b!2254923))

(assert (= (and b!2254923 res!963746) b!2254942))

(assert (= (and b!2254942 res!963739) b!2254938))

(assert (= (and b!2254938 res!963750) b!2254922))

(assert (= (and b!2254938 (not res!963747)) b!2254933))

(assert (= (and b!2254933 (not res!963753)) b!2254918))

(assert (= (and b!2254918 (not res!963738)) b!2254920))

(assert (= (and b!2254920 (not res!963752)) b!2254927))

(assert (= (and b!2254927 (not res!963745)) b!2254934))

(assert (= (and b!2254934 (not res!963735)) b!2254930))

(assert (= (and b!2254930 (not res!963733)) b!2254944))

(assert (= (and b!2254944 (not res!963734)) b!2254919))

(assert (= (and start!220032 ((_ is Cons!26740) input!1722)) b!2254921))

(assert (= b!2254935 b!2254929))

(assert (= start!220032 b!2254935))

(assert (= (and start!220032 ((_ is Cons!26740) suffix!886)) b!2254915))

(assert (= (and start!220032 ((_ is Cons!26740) otherP!12)) b!2254925))

(assert (= b!2254914 b!2254941))

(assert (= b!2254917 b!2254914))

(assert (= (and start!220032 ((_ is Cons!26741) rules!1750)) b!2254917))

(assert (= b!2254939 b!2254928))

(assert (= start!220032 b!2254939))

(assert (= b!2254936 b!2254945))

(assert (= b!2254937 b!2254936))

(assert (= b!2254943 b!2254937))

(assert (= (and start!220032 ((_ is Cons!26742) tokens!456)) b!2254943))

(declare-fun m!2685483 () Bool)

(assert (=> b!2254932 m!2685483))

(assert (=> b!2254932 m!2685483))

(declare-fun m!2685485 () Bool)

(assert (=> b!2254932 m!2685485))

(assert (=> b!2254932 m!2685485))

(declare-fun m!2685487 () Bool)

(assert (=> b!2254932 m!2685487))

(declare-fun m!2685489 () Bool)

(assert (=> b!2254932 m!2685489))

(declare-fun m!2685491 () Bool)

(assert (=> b!2254923 m!2685491))

(declare-fun m!2685493 () Bool)

(assert (=> b!2254920 m!2685493))

(declare-fun m!2685495 () Bool)

(assert (=> b!2254920 m!2685495))

(declare-fun m!2685497 () Bool)

(assert (=> b!2254920 m!2685497))

(declare-fun m!2685499 () Bool)

(assert (=> b!2254920 m!2685499))

(declare-fun m!2685501 () Bool)

(assert (=> b!2254920 m!2685501))

(assert (=> b!2254920 m!2685489))

(assert (=> b!2254920 m!2685495))

(declare-fun m!2685503 () Bool)

(assert (=> b!2254920 m!2685503))

(assert (=> b!2254920 m!2685503))

(declare-fun m!2685505 () Bool)

(assert (=> b!2254920 m!2685505))

(declare-fun m!2685507 () Bool)

(assert (=> b!2254920 m!2685507))

(assert (=> b!2254946 m!2685483))

(declare-fun m!2685509 () Bool)

(assert (=> b!2254918 m!2685509))

(declare-fun m!2685511 () Bool)

(assert (=> b!2254918 m!2685511))

(declare-fun m!2685513 () Bool)

(assert (=> b!2254939 m!2685513))

(declare-fun m!2685515 () Bool)

(assert (=> b!2254939 m!2685515))

(declare-fun m!2685517 () Bool)

(assert (=> b!2254938 m!2685517))

(declare-fun m!2685519 () Bool)

(assert (=> b!2254938 m!2685519))

(declare-fun m!2685521 () Bool)

(assert (=> b!2254947 m!2685521))

(declare-fun m!2685523 () Bool)

(assert (=> b!2254947 m!2685523))

(declare-fun m!2685525 () Bool)

(assert (=> b!2254947 m!2685525))

(assert (=> b!2254947 m!2685525))

(declare-fun m!2685527 () Bool)

(assert (=> b!2254947 m!2685527))

(declare-fun m!2685529 () Bool)

(assert (=> b!2254948 m!2685529))

(declare-fun m!2685531 () Bool)

(assert (=> b!2254930 m!2685531))

(declare-fun m!2685533 () Bool)

(assert (=> b!2254930 m!2685533))

(declare-fun m!2685535 () Bool)

(assert (=> b!2254930 m!2685535))

(declare-fun m!2685537 () Bool)

(assert (=> b!2254926 m!2685537))

(declare-fun m!2685539 () Bool)

(assert (=> b!2254937 m!2685539))

(declare-fun m!2685541 () Bool)

(assert (=> b!2254943 m!2685541))

(declare-fun m!2685543 () Bool)

(assert (=> b!2254940 m!2685543))

(declare-fun m!2685545 () Bool)

(assert (=> b!2254931 m!2685545))

(assert (=> b!2254922 m!2685483))

(assert (=> b!2254922 m!2685483))

(assert (=> b!2254922 m!2685485))

(assert (=> b!2254922 m!2685485))

(declare-fun m!2685547 () Bool)

(assert (=> b!2254922 m!2685547))

(assert (=> b!2254922 m!2685547))

(declare-fun m!2685549 () Bool)

(assert (=> b!2254922 m!2685549))

(declare-fun m!2685551 () Bool)

(assert (=> b!2254919 m!2685551))

(declare-fun m!2685553 () Bool)

(assert (=> b!2254934 m!2685553))

(declare-fun m!2685555 () Bool)

(assert (=> b!2254935 m!2685555))

(declare-fun m!2685557 () Bool)

(assert (=> b!2254935 m!2685557))

(declare-fun m!2685559 () Bool)

(assert (=> b!2254914 m!2685559))

(declare-fun m!2685561 () Bool)

(assert (=> b!2254914 m!2685561))

(declare-fun m!2685563 () Bool)

(assert (=> b!2254933 m!2685563))

(declare-fun m!2685565 () Bool)

(assert (=> b!2254933 m!2685565))

(declare-fun m!2685567 () Bool)

(assert (=> b!2254933 m!2685567))

(declare-fun m!2685569 () Bool)

(assert (=> b!2254933 m!2685569))

(declare-fun m!2685571 () Bool)

(assert (=> b!2254924 m!2685571))

(declare-fun m!2685573 () Bool)

(assert (=> b!2254944 m!2685573))

(declare-fun m!2685575 () Bool)

(assert (=> b!2254944 m!2685575))

(declare-fun m!2685577 () Bool)

(assert (=> b!2254927 m!2685577))

(declare-fun m!2685579 () Bool)

(assert (=> b!2254927 m!2685579))

(declare-fun m!2685581 () Bool)

(assert (=> b!2254927 m!2685581))

(declare-fun m!2685583 () Bool)

(assert (=> b!2254927 m!2685583))

(declare-fun m!2685585 () Bool)

(assert (=> b!2254927 m!2685585))

(declare-fun m!2685587 () Bool)

(assert (=> b!2254936 m!2685587))

(declare-fun m!2685589 () Bool)

(assert (=> b!2254936 m!2685589))

(check-sat (not b!2254930) tp_is_empty!10407 (not b!2254927) (not b!2254915) (not b!2254935) (not b!2254918) (not b!2254921) (not b!2254943) (not b!2254938) (not b_next!66979) (not b_next!66987) (not b!2254926) b_and!176875 b_and!176867 b_and!176871 (not b!2254939) (not b_next!66985) (not b_next!66973) (not b_next!66983) (not b!2254933) (not b!2254925) (not b!2254948) (not b!2254920) (not b!2254923) (not b_next!66981) (not b_next!66975) (not b!2254919) (not b!2254944) (not b!2254917) (not b_next!66977) (not b!2254924) (not b!2254940) (not b!2254932) (not b!2254937) (not b!2254936) (not b!2254922) (not b!2254934) (not b!2254931) b_and!176865 b_and!176869 (not b!2254946) b_and!176877 (not b!2254947) b_and!176873 b_and!176879 (not b!2254914))
(check-sat (not b_next!66981) (not b_next!66975) (not b_next!66977) (not b_next!66979) (not b_next!66987) b_and!176877 b_and!176875 b_and!176873 b_and!176867 b_and!176879 b_and!176871 (not b_next!66985) (not b_next!66973) (not b_next!66983) b_and!176865 b_and!176869)
(get-model)

(declare-fun d!668596 () Bool)

(declare-fun res!963764 () Bool)

(declare-fun e!1443316 () Bool)

(assert (=> d!668596 (=> (not res!963764) (not e!1443316))))

(assert (=> d!668596 (= res!963764 (validRegex!2464 (regex!4245 r!2363)))))

(assert (=> d!668596 (= (ruleValid!1337 thiss!16613 r!2363) e!1443316)))

(declare-fun b!2254953 () Bool)

(declare-fun res!963765 () Bool)

(assert (=> b!2254953 (=> (not res!963765) (not e!1443316))))

(declare-fun nullable!1809 (Regex!6593) Bool)

(assert (=> b!2254953 (= res!963765 (not (nullable!1809 (regex!4245 r!2363))))))

(declare-fun b!2254954 () Bool)

(assert (=> b!2254954 (= e!1443316 (not (= (tag!4735 r!2363) (String!29140 ""))))))

(assert (= (and d!668596 res!963764) b!2254953))

(assert (= (and b!2254953 res!963765) b!2254954))

(declare-fun m!2685591 () Bool)

(assert (=> d!668596 m!2685591))

(declare-fun m!2685593 () Bool)

(assert (=> b!2254953 m!2685593))

(assert (=> b!2254938 d!668596))

(declare-fun d!668598 () Bool)

(assert (=> d!668598 (ruleValid!1337 thiss!16613 r!2363)))

(declare-fun lt!838229 () Unit!39662)

(declare-fun choose!13187 (LexerInterface!3842 Rule!8290 List!26835) Unit!39662)

(assert (=> d!668598 (= lt!838229 (choose!13187 thiss!16613 r!2363 rules!1750))))

(assert (=> d!668598 (contains!4597 rules!1750 r!2363)))

(assert (=> d!668598 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!744 thiss!16613 r!2363 rules!1750) lt!838229)))

(declare-fun bs!455222 () Bool)

(assert (= bs!455222 d!668598))

(assert (=> bs!455222 m!2685517))

(declare-fun m!2685595 () Bool)

(assert (=> bs!455222 m!2685595))

(assert (=> bs!455222 m!2685571))

(assert (=> b!2254938 d!668598))

(declare-fun d!668600 () Bool)

(assert (=> d!668600 (= (inv!36271 (tag!4735 r!2363)) (= (mod (str.len (value!134801 (tag!4735 r!2363))) 2) 0))))

(assert (=> b!2254939 d!668600))

(declare-fun d!668602 () Bool)

(declare-fun res!963768 () Bool)

(declare-fun e!1443319 () Bool)

(assert (=> d!668602 (=> (not res!963768) (not e!1443319))))

(declare-fun semiInverseModEq!1711 (Int Int) Bool)

(assert (=> d!668602 (= res!963768 (semiInverseModEq!1711 (toChars!5846 (transformation!4245 r!2363)) (toValue!5987 (transformation!4245 r!2363))))))

(assert (=> d!668602 (= (inv!36274 (transformation!4245 r!2363)) e!1443319)))

(declare-fun b!2254957 () Bool)

(declare-fun equivClasses!1630 (Int Int) Bool)

(assert (=> b!2254957 (= e!1443319 (equivClasses!1630 (toChars!5846 (transformation!4245 r!2363)) (toValue!5987 (transformation!4245 r!2363))))))

(assert (= (and d!668602 res!963768) b!2254957))

(declare-fun m!2685597 () Bool)

(assert (=> d!668602 m!2685597))

(declare-fun m!2685599 () Bool)

(assert (=> b!2254957 m!2685599))

(assert (=> b!2254939 d!668602))

(declare-fun b!2254968 () Bool)

(declare-fun e!1443328 () Bool)

(declare-fun e!1443326 () Bool)

(assert (=> b!2254968 (= e!1443328 e!1443326)))

(declare-fun c!358451 () Bool)

(assert (=> b!2254968 (= c!358451 ((_ is IntegerValue!13222) (value!134802 (h!32143 tokens!456))))))

(declare-fun b!2254969 () Bool)

(declare-fun inv!17 (TokenValue!4407) Bool)

(assert (=> b!2254969 (= e!1443326 (inv!17 (value!134802 (h!32143 tokens!456))))))

(declare-fun b!2254970 () Bool)

(declare-fun e!1443327 () Bool)

(declare-fun inv!15 (TokenValue!4407) Bool)

(assert (=> b!2254970 (= e!1443327 (inv!15 (value!134802 (h!32143 tokens!456))))))

(declare-fun d!668604 () Bool)

(declare-fun c!358452 () Bool)

(assert (=> d!668604 (= c!358452 ((_ is IntegerValue!13221) (value!134802 (h!32143 tokens!456))))))

(assert (=> d!668604 (= (inv!21 (value!134802 (h!32143 tokens!456))) e!1443328)))

(declare-fun b!2254971 () Bool)

(declare-fun res!963771 () Bool)

(assert (=> b!2254971 (=> res!963771 e!1443327)))

(assert (=> b!2254971 (= res!963771 (not ((_ is IntegerValue!13223) (value!134802 (h!32143 tokens!456)))))))

(assert (=> b!2254971 (= e!1443326 e!1443327)))

(declare-fun b!2254972 () Bool)

(declare-fun inv!16 (TokenValue!4407) Bool)

(assert (=> b!2254972 (= e!1443328 (inv!16 (value!134802 (h!32143 tokens!456))))))

(assert (= (and d!668604 c!358452) b!2254972))

(assert (= (and d!668604 (not c!358452)) b!2254968))

(assert (= (and b!2254968 c!358451) b!2254969))

(assert (= (and b!2254968 (not c!358451)) b!2254971))

(assert (= (and b!2254971 (not res!963771)) b!2254970))

(declare-fun m!2685601 () Bool)

(assert (=> b!2254969 m!2685601))

(declare-fun m!2685603 () Bool)

(assert (=> b!2254970 m!2685603))

(declare-fun m!2685605 () Bool)

(assert (=> b!2254972 m!2685605))

(assert (=> b!2254937 d!668604))

(declare-fun b!2254984 () Bool)

(declare-fun e!1443336 () Bool)

(assert (=> b!2254984 (= e!1443336 (>= (size!20933 (++!6517 lt!838215 (_2!15649 lt!838221))) (size!20933 lt!838215)))))

(declare-fun b!2254982 () Bool)

(declare-fun res!963781 () Bool)

(declare-fun e!1443335 () Bool)

(assert (=> b!2254982 (=> (not res!963781) (not e!1443335))))

(declare-fun head!4817 (List!26834) C!13332)

(assert (=> b!2254982 (= res!963781 (= (head!4817 lt!838215) (head!4817 (++!6517 lt!838215 (_2!15649 lt!838221)))))))

(declare-fun b!2254983 () Bool)

(declare-fun tail!3252 (List!26834) List!26834)

(assert (=> b!2254983 (= e!1443335 (isPrefix!2235 (tail!3252 lt!838215) (tail!3252 (++!6517 lt!838215 (_2!15649 lt!838221)))))))

(declare-fun d!668606 () Bool)

(assert (=> d!668606 e!1443336))

(declare-fun res!963780 () Bool)

(assert (=> d!668606 (=> res!963780 e!1443336)))

(declare-fun lt!838232 () Bool)

(assert (=> d!668606 (= res!963780 (not lt!838232))))

(declare-fun e!1443337 () Bool)

(assert (=> d!668606 (= lt!838232 e!1443337)))

(declare-fun res!963782 () Bool)

(assert (=> d!668606 (=> res!963782 e!1443337)))

(assert (=> d!668606 (= res!963782 ((_ is Nil!26740) lt!838215))))

(assert (=> d!668606 (= (isPrefix!2235 lt!838215 (++!6517 lt!838215 (_2!15649 lt!838221))) lt!838232)))

(declare-fun b!2254981 () Bool)

(assert (=> b!2254981 (= e!1443337 e!1443335)))

(declare-fun res!963783 () Bool)

(assert (=> b!2254981 (=> (not res!963783) (not e!1443335))))

(assert (=> b!2254981 (= res!963783 (not ((_ is Nil!26740) (++!6517 lt!838215 (_2!15649 lt!838221)))))))

(assert (= (and d!668606 (not res!963782)) b!2254981))

(assert (= (and b!2254981 res!963783) b!2254982))

(assert (= (and b!2254982 res!963781) b!2254983))

(assert (= (and d!668606 (not res!963780)) b!2254984))

(assert (=> b!2254984 m!2685495))

(declare-fun m!2685607 () Bool)

(assert (=> b!2254984 m!2685607))

(assert (=> b!2254984 m!2685499))

(declare-fun m!2685609 () Bool)

(assert (=> b!2254982 m!2685609))

(assert (=> b!2254982 m!2685495))

(declare-fun m!2685611 () Bool)

(assert (=> b!2254982 m!2685611))

(declare-fun m!2685613 () Bool)

(assert (=> b!2254983 m!2685613))

(assert (=> b!2254983 m!2685495))

(declare-fun m!2685615 () Bool)

(assert (=> b!2254983 m!2685615))

(assert (=> b!2254983 m!2685613))

(assert (=> b!2254983 m!2685615))

(declare-fun m!2685617 () Bool)

(assert (=> b!2254983 m!2685617))

(assert (=> b!2254920 d!668606))

(declare-fun d!668608 () Bool)

(declare-fun lt!838235 () Int)

(assert (=> d!668608 (>= lt!838235 0)))

(declare-fun e!1443340 () Int)

(assert (=> d!668608 (= lt!838235 e!1443340)))

(declare-fun c!358455 () Bool)

(assert (=> d!668608 (= c!358455 ((_ is Nil!26740) lt!838215))))

(assert (=> d!668608 (= (size!20933 lt!838215) lt!838235)))

(declare-fun b!2254989 () Bool)

(assert (=> b!2254989 (= e!1443340 0)))

(declare-fun b!2254990 () Bool)

(assert (=> b!2254990 (= e!1443340 (+ 1 (size!20933 (t!201158 lt!838215))))))

(assert (= (and d!668608 c!358455) b!2254989))

(assert (= (and d!668608 (not c!358455)) b!2254990))

(declare-fun m!2685619 () Bool)

(assert (=> b!2254990 m!2685619))

(assert (=> b!2254920 d!668608))

(declare-fun d!668610 () Bool)

(declare-fun lt!838236 () Int)

(assert (=> d!668610 (>= lt!838236 0)))

(declare-fun e!1443341 () Int)

(assert (=> d!668610 (= lt!838236 e!1443341)))

(declare-fun c!358456 () Bool)

(assert (=> d!668610 (= c!358456 ((_ is Nil!26740) otherP!12))))

(assert (=> d!668610 (= (size!20933 otherP!12) lt!838236)))

(declare-fun b!2254991 () Bool)

(assert (=> b!2254991 (= e!1443341 0)))

(declare-fun b!2254992 () Bool)

(assert (=> b!2254992 (= e!1443341 (+ 1 (size!20933 (t!201158 otherP!12))))))

(assert (= (and d!668610 c!358456) b!2254991))

(assert (= (and d!668610 (not c!358456)) b!2254992))

(declare-fun m!2685621 () Bool)

(assert (=> b!2254992 m!2685621))

(assert (=> b!2254920 d!668610))

(declare-fun d!668612 () Bool)

(assert (=> d!668612 (= (_2!15649 lt!838221) lt!838220)))

(declare-fun lt!838239 () Unit!39662)

(declare-fun choose!13188 (List!26834 List!26834 List!26834 List!26834 List!26834) Unit!39662)

(assert (=> d!668612 (= lt!838239 (choose!13188 lt!838215 (_2!15649 lt!838221) lt!838215 lt!838220 input!1722))))

(assert (=> d!668612 (isPrefix!2235 lt!838215 input!1722)))

(assert (=> d!668612 (= (lemmaSamePrefixThenSameSuffix!990 lt!838215 (_2!15649 lt!838221) lt!838215 lt!838220 input!1722) lt!838239)))

(declare-fun bs!455223 () Bool)

(assert (= bs!455223 d!668612))

(declare-fun m!2685623 () Bool)

(assert (=> bs!455223 m!2685623))

(assert (=> bs!455223 m!2685585))

(assert (=> b!2254920 d!668612))

(declare-fun d!668614 () Bool)

(declare-fun list!10283 (Conc!8638) List!26834)

(assert (=> d!668614 (= (list!10281 (charsOf!2633 (h!32143 tokens!456))) (list!10283 (c!358444 (charsOf!2633 (h!32143 tokens!456)))))))

(declare-fun bs!455224 () Bool)

(assert (= bs!455224 d!668614))

(declare-fun m!2685625 () Bool)

(assert (=> bs!455224 m!2685625))

(assert (=> b!2254920 d!668614))

(declare-fun d!668616 () Bool)

(declare-fun e!1443347 () Bool)

(assert (=> d!668616 e!1443347))

(declare-fun res!963788 () Bool)

(assert (=> d!668616 (=> (not res!963788) (not e!1443347))))

(declare-fun lt!838242 () List!26834)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3563 (List!26834) (InoxSet C!13332))

(assert (=> d!668616 (= res!963788 (= (content!3563 lt!838242) ((_ map or) (content!3563 lt!838215) (content!3563 (_2!15649 lt!838221)))))))

(declare-fun e!1443346 () List!26834)

(assert (=> d!668616 (= lt!838242 e!1443346)))

(declare-fun c!358459 () Bool)

(assert (=> d!668616 (= c!358459 ((_ is Nil!26740) lt!838215))))

(assert (=> d!668616 (= (++!6517 lt!838215 (_2!15649 lt!838221)) lt!838242)))

(declare-fun b!2255001 () Bool)

(assert (=> b!2255001 (= e!1443346 (_2!15649 lt!838221))))

(declare-fun b!2255004 () Bool)

(assert (=> b!2255004 (= e!1443347 (or (not (= (_2!15649 lt!838221) Nil!26740)) (= lt!838242 lt!838215)))))

(declare-fun b!2255002 () Bool)

(assert (=> b!2255002 (= e!1443346 (Cons!26740 (h!32141 lt!838215) (++!6517 (t!201158 lt!838215) (_2!15649 lt!838221))))))

(declare-fun b!2255003 () Bool)

(declare-fun res!963789 () Bool)

(assert (=> b!2255003 (=> (not res!963789) (not e!1443347))))

(assert (=> b!2255003 (= res!963789 (= (size!20933 lt!838242) (+ (size!20933 lt!838215) (size!20933 (_2!15649 lt!838221)))))))

(assert (= (and d!668616 c!358459) b!2255001))

(assert (= (and d!668616 (not c!358459)) b!2255002))

(assert (= (and d!668616 res!963788) b!2255003))

(assert (= (and b!2255003 res!963789) b!2255004))

(declare-fun m!2685627 () Bool)

(assert (=> d!668616 m!2685627))

(declare-fun m!2685629 () Bool)

(assert (=> d!668616 m!2685629))

(declare-fun m!2685631 () Bool)

(assert (=> d!668616 m!2685631))

(declare-fun m!2685633 () Bool)

(assert (=> b!2255002 m!2685633))

(declare-fun m!2685635 () Bool)

(assert (=> b!2255003 m!2685635))

(assert (=> b!2255003 m!2685499))

(declare-fun m!2685637 () Bool)

(assert (=> b!2255003 m!2685637))

(assert (=> b!2254920 d!668616))

(declare-fun d!668618 () Bool)

(assert (=> d!668618 (isPrefix!2235 lt!838215 (++!6517 lt!838215 (_2!15649 lt!838221)))))

(declare-fun lt!838245 () Unit!39662)

(declare-fun choose!13189 (List!26834 List!26834) Unit!39662)

(assert (=> d!668618 (= lt!838245 (choose!13189 lt!838215 (_2!15649 lt!838221)))))

(assert (=> d!668618 (= (lemmaConcatTwoListThenFirstIsPrefix!1480 lt!838215 (_2!15649 lt!838221)) lt!838245)))

(declare-fun bs!455225 () Bool)

(assert (= bs!455225 d!668618))

(assert (=> bs!455225 m!2685495))

(assert (=> bs!455225 m!2685495))

(assert (=> bs!455225 m!2685497))

(declare-fun m!2685639 () Bool)

(assert (=> bs!455225 m!2685639))

(assert (=> b!2254920 d!668618))

(declare-fun d!668620 () Bool)

(declare-fun lt!838248 () List!26834)

(assert (=> d!668620 (= (++!6517 lt!838215 lt!838248) input!1722)))

(declare-fun e!1443350 () List!26834)

(assert (=> d!668620 (= lt!838248 e!1443350)))

(declare-fun c!358462 () Bool)

(assert (=> d!668620 (= c!358462 ((_ is Cons!26740) lt!838215))))

(assert (=> d!668620 (>= (size!20933 input!1722) (size!20933 lt!838215))))

(assert (=> d!668620 (= (getSuffix!1070 input!1722 lt!838215) lt!838248)))

(declare-fun b!2255009 () Bool)

(assert (=> b!2255009 (= e!1443350 (getSuffix!1070 (tail!3252 input!1722) (t!201158 lt!838215)))))

(declare-fun b!2255010 () Bool)

(assert (=> b!2255010 (= e!1443350 input!1722)))

(assert (= (and d!668620 c!358462) b!2255009))

(assert (= (and d!668620 (not c!358462)) b!2255010))

(declare-fun m!2685641 () Bool)

(assert (=> d!668620 m!2685641))

(declare-fun m!2685643 () Bool)

(assert (=> d!668620 m!2685643))

(assert (=> d!668620 m!2685499))

(declare-fun m!2685645 () Bool)

(assert (=> b!2255009 m!2685645))

(assert (=> b!2255009 m!2685645))

(declare-fun m!2685647 () Bool)

(assert (=> b!2255009 m!2685647))

(assert (=> b!2254920 d!668620))

(declare-fun d!668622 () Bool)

(declare-fun lt!838251 () BalanceConc!17004)

(assert (=> d!668622 (= (list!10281 lt!838251) (originalCharacters!5015 (h!32143 tokens!456)))))

(declare-fun dynLambda!11614 (Int TokenValue!4407) BalanceConc!17004)

(assert (=> d!668622 (= lt!838251 (dynLambda!11614 (toChars!5846 (transformation!4245 (rule!6549 (h!32143 tokens!456)))) (value!134802 (h!32143 tokens!456))))))

(assert (=> d!668622 (= (charsOf!2633 (h!32143 tokens!456)) lt!838251)))

(declare-fun b_lambda!72025 () Bool)

(assert (=> (not b_lambda!72025) (not d!668622)))

(declare-fun tb!133647 () Bool)

(declare-fun t!201162 () Bool)

(assert (=> (and b!2254929 (= (toChars!5846 (transformation!4245 otherR!12)) (toChars!5846 (transformation!4245 (rule!6549 (h!32143 tokens!456))))) t!201162) tb!133647))

(declare-fun b!2255015 () Bool)

(declare-fun e!1443353 () Bool)

(declare-fun tp!712700 () Bool)

(declare-fun inv!36276 (Conc!8638) Bool)

(assert (=> b!2255015 (= e!1443353 (and (inv!36276 (c!358444 (dynLambda!11614 (toChars!5846 (transformation!4245 (rule!6549 (h!32143 tokens!456)))) (value!134802 (h!32143 tokens!456))))) tp!712700))))

(declare-fun result!162918 () Bool)

(declare-fun inv!36277 (BalanceConc!17004) Bool)

(assert (=> tb!133647 (= result!162918 (and (inv!36277 (dynLambda!11614 (toChars!5846 (transformation!4245 (rule!6549 (h!32143 tokens!456)))) (value!134802 (h!32143 tokens!456)))) e!1443353))))

(assert (= tb!133647 b!2255015))

(declare-fun m!2685649 () Bool)

(assert (=> b!2255015 m!2685649))

(declare-fun m!2685651 () Bool)

(assert (=> tb!133647 m!2685651))

(assert (=> d!668622 t!201162))

(declare-fun b_and!176881 () Bool)

(assert (= b_and!176867 (and (=> t!201162 result!162918) b_and!176881)))

(declare-fun t!201164 () Bool)

(declare-fun tb!133649 () Bool)

(assert (=> (and b!2254941 (= (toChars!5846 (transformation!4245 (h!32142 rules!1750))) (toChars!5846 (transformation!4245 (rule!6549 (h!32143 tokens!456))))) t!201164) tb!133649))

(declare-fun result!162922 () Bool)

(assert (= result!162922 result!162918))

(assert (=> d!668622 t!201164))

(declare-fun b_and!176883 () Bool)

(assert (= b_and!176871 (and (=> t!201164 result!162922) b_and!176883)))

(declare-fun t!201166 () Bool)

(declare-fun tb!133651 () Bool)

(assert (=> (and b!2254945 (= (toChars!5846 (transformation!4245 (rule!6549 (h!32143 tokens!456)))) (toChars!5846 (transformation!4245 (rule!6549 (h!32143 tokens!456))))) t!201166) tb!133651))

(declare-fun result!162924 () Bool)

(assert (= result!162924 result!162918))

(assert (=> d!668622 t!201166))

(declare-fun b_and!176885 () Bool)

(assert (= b_and!176875 (and (=> t!201166 result!162924) b_and!176885)))

(declare-fun t!201168 () Bool)

(declare-fun tb!133653 () Bool)

(assert (=> (and b!2254928 (= (toChars!5846 (transformation!4245 r!2363)) (toChars!5846 (transformation!4245 (rule!6549 (h!32143 tokens!456))))) t!201168) tb!133653))

(declare-fun result!162926 () Bool)

(assert (= result!162926 result!162918))

(assert (=> d!668622 t!201168))

(declare-fun b_and!176887 () Bool)

(assert (= b_and!176879 (and (=> t!201168 result!162926) b_and!176887)))

(declare-fun m!2685653 () Bool)

(assert (=> d!668622 m!2685653))

(declare-fun m!2685655 () Bool)

(assert (=> d!668622 m!2685655))

(assert (=> b!2254920 d!668622))

(declare-fun d!668624 () Bool)

(assert (=> d!668624 (= (get!8075 lt!838207) (v!30244 lt!838207))))

(assert (=> b!2254918 d!668624))

(declare-fun b!2255102 () Bool)

(declare-fun res!963851 () Bool)

(declare-fun e!1443403 () Bool)

(assert (=> b!2255102 (=> (not res!963851) (not e!1443403))))

(declare-fun lt!838279 () Option!5221)

(assert (=> b!2255102 (= res!963851 (matchR!2854 (regex!4245 (rule!6549 (_1!15649 (get!8075 lt!838279)))) (list!10281 (charsOf!2633 (_1!15649 (get!8075 lt!838279))))))))

(declare-fun b!2255103 () Bool)

(declare-fun e!1443401 () Option!5221)

(declare-fun lt!838277 () Option!5221)

(declare-fun lt!838276 () Option!5221)

(assert (=> b!2255103 (= e!1443401 (ite (and ((_ is None!5220) lt!838277) ((_ is None!5220) lt!838276)) None!5220 (ite ((_ is None!5220) lt!838276) lt!838277 (ite ((_ is None!5220) lt!838277) lt!838276 (ite (>= (size!20932 (_1!15649 (v!30244 lt!838277))) (size!20932 (_1!15649 (v!30244 lt!838276)))) lt!838277 lt!838276)))))))

(declare-fun call!135686 () Option!5221)

(assert (=> b!2255103 (= lt!838277 call!135686)))

(assert (=> b!2255103 (= lt!838276 (maxPrefix!2130 thiss!16613 (t!201159 rules!1750) input!1722))))

(declare-fun b!2255104 () Bool)

(declare-fun res!963852 () Bool)

(assert (=> b!2255104 (=> (not res!963852) (not e!1443403))))

(assert (=> b!2255104 (= res!963852 (< (size!20933 (_2!15649 (get!8075 lt!838279))) (size!20933 input!1722)))))

(declare-fun b!2255105 () Bool)

(declare-fun e!1443402 () Bool)

(assert (=> b!2255105 (= e!1443402 e!1443403)))

(declare-fun res!963850 () Bool)

(assert (=> b!2255105 (=> (not res!963850) (not e!1443403))))

(declare-fun isDefined!4189 (Option!5221) Bool)

(assert (=> b!2255105 (= res!963850 (isDefined!4189 lt!838279))))

(declare-fun b!2255106 () Bool)

(declare-fun res!963849 () Bool)

(assert (=> b!2255106 (=> (not res!963849) (not e!1443403))))

(assert (=> b!2255106 (= res!963849 (= (value!134802 (_1!15649 (get!8075 lt!838279))) (apply!6565 (transformation!4245 (rule!6549 (_1!15649 (get!8075 lt!838279)))) (seqFromList!2949 (originalCharacters!5015 (_1!15649 (get!8075 lt!838279)))))))))

(declare-fun b!2255107 () Bool)

(declare-fun res!963847 () Bool)

(assert (=> b!2255107 (=> (not res!963847) (not e!1443403))))

(assert (=> b!2255107 (= res!963847 (= (list!10281 (charsOf!2633 (_1!15649 (get!8075 lt!838279)))) (originalCharacters!5015 (_1!15649 (get!8075 lt!838279)))))))

(declare-fun d!668628 () Bool)

(assert (=> d!668628 e!1443402))

(declare-fun res!963853 () Bool)

(assert (=> d!668628 (=> res!963853 e!1443402)))

(declare-fun isEmpty!15094 (Option!5221) Bool)

(assert (=> d!668628 (= res!963853 (isEmpty!15094 lt!838279))))

(assert (=> d!668628 (= lt!838279 e!1443401)))

(declare-fun c!358480 () Bool)

(assert (=> d!668628 (= c!358480 (and ((_ is Cons!26741) rules!1750) ((_ is Nil!26741) (t!201159 rules!1750))))))

(declare-fun lt!838278 () Unit!39662)

(declare-fun lt!838275 () Unit!39662)

(assert (=> d!668628 (= lt!838278 lt!838275)))

(assert (=> d!668628 (isPrefix!2235 input!1722 input!1722)))

(assert (=> d!668628 (= lt!838275 (lemmaIsPrefixRefl!1441 input!1722 input!1722))))

(declare-fun rulesValidInductive!1480 (LexerInterface!3842 List!26835) Bool)

(assert (=> d!668628 (rulesValidInductive!1480 thiss!16613 rules!1750)))

(assert (=> d!668628 (= (maxPrefix!2130 thiss!16613 rules!1750 input!1722) lt!838279)))

(declare-fun b!2255108 () Bool)

(declare-fun res!963848 () Bool)

(assert (=> b!2255108 (=> (not res!963848) (not e!1443403))))

(assert (=> b!2255108 (= res!963848 (= (++!6517 (list!10281 (charsOf!2633 (_1!15649 (get!8075 lt!838279)))) (_2!15649 (get!8075 lt!838279))) input!1722))))

(declare-fun bm!135681 () Bool)

(assert (=> bm!135681 (= call!135686 (maxPrefixOneRule!1322 thiss!16613 (h!32142 rules!1750) input!1722))))

(declare-fun b!2255109 () Bool)

(assert (=> b!2255109 (= e!1443401 call!135686)))

(declare-fun b!2255110 () Bool)

(assert (=> b!2255110 (= e!1443403 (contains!4597 rules!1750 (rule!6549 (_1!15649 (get!8075 lt!838279)))))))

(assert (= (and d!668628 c!358480) b!2255109))

(assert (= (and d!668628 (not c!358480)) b!2255103))

(assert (= (or b!2255109 b!2255103) bm!135681))

(assert (= (and d!668628 (not res!963853)) b!2255105))

(assert (= (and b!2255105 res!963850) b!2255107))

(assert (= (and b!2255107 res!963847) b!2255104))

(assert (= (and b!2255104 res!963852) b!2255108))

(assert (= (and b!2255108 res!963848) b!2255106))

(assert (= (and b!2255106 res!963849) b!2255102))

(assert (= (and b!2255102 res!963851) b!2255110))

(declare-fun m!2685697 () Bool)

(assert (=> b!2255110 m!2685697))

(declare-fun m!2685699 () Bool)

(assert (=> b!2255110 m!2685699))

(assert (=> b!2255104 m!2685697))

(declare-fun m!2685701 () Bool)

(assert (=> b!2255104 m!2685701))

(assert (=> b!2255104 m!2685643))

(assert (=> b!2255107 m!2685697))

(declare-fun m!2685703 () Bool)

(assert (=> b!2255107 m!2685703))

(assert (=> b!2255107 m!2685703))

(declare-fun m!2685705 () Bool)

(assert (=> b!2255107 m!2685705))

(declare-fun m!2685707 () Bool)

(assert (=> b!2255103 m!2685707))

(declare-fun m!2685709 () Bool)

(assert (=> bm!135681 m!2685709))

(declare-fun m!2685711 () Bool)

(assert (=> d!668628 m!2685711))

(assert (=> d!668628 m!2685531))

(assert (=> d!668628 m!2685533))

(declare-fun m!2685713 () Bool)

(assert (=> d!668628 m!2685713))

(assert (=> b!2255106 m!2685697))

(declare-fun m!2685715 () Bool)

(assert (=> b!2255106 m!2685715))

(assert (=> b!2255106 m!2685715))

(declare-fun m!2685717 () Bool)

(assert (=> b!2255106 m!2685717))

(declare-fun m!2685719 () Bool)

(assert (=> b!2255105 m!2685719))

(assert (=> b!2255102 m!2685697))

(assert (=> b!2255102 m!2685703))

(assert (=> b!2255102 m!2685703))

(assert (=> b!2255102 m!2685705))

(assert (=> b!2255102 m!2685705))

(declare-fun m!2685721 () Bool)

(assert (=> b!2255102 m!2685721))

(assert (=> b!2255108 m!2685697))

(assert (=> b!2255108 m!2685703))

(assert (=> b!2255108 m!2685703))

(assert (=> b!2255108 m!2685705))

(assert (=> b!2255108 m!2685705))

(declare-fun m!2685723 () Bool)

(assert (=> b!2255108 m!2685723))

(assert (=> b!2254918 d!668628))

(declare-fun d!668648 () Bool)

(assert (=> d!668648 (= (isEmpty!15092 tokens!456) ((_ is Nil!26742) tokens!456))))

(assert (=> b!2254940 d!668648))

(declare-fun b!2255149 () Bool)

(declare-fun res!963882 () Bool)

(declare-fun e!1443435 () Bool)

(assert (=> b!2255149 (=> (not res!963882) (not e!1443435))))

(declare-fun call!135693 () Bool)

(assert (=> b!2255149 (= res!963882 call!135693)))

(declare-fun e!1443436 () Bool)

(assert (=> b!2255149 (= e!1443436 e!1443435)))

(declare-fun b!2255150 () Bool)

(declare-fun e!1443431 () Bool)

(assert (=> b!2255150 (= e!1443431 call!135693)))

(declare-fun b!2255151 () Bool)

(declare-fun e!1443434 () Bool)

(assert (=> b!2255151 (= e!1443434 e!1443436)))

(declare-fun c!358488 () Bool)

(assert (=> b!2255151 (= c!358488 ((_ is Union!6593) (regex!4245 otherR!12)))))

(declare-fun c!358489 () Bool)

(declare-fun call!135695 () Bool)

(declare-fun bm!135688 () Bool)

(assert (=> bm!135688 (= call!135695 (validRegex!2464 (ite c!358489 (reg!6922 (regex!4245 otherR!12)) (ite c!358488 (regOne!13699 (regex!4245 otherR!12)) (regTwo!13698 (regex!4245 otherR!12))))))))

(declare-fun bm!135689 () Bool)

(declare-fun call!135694 () Bool)

(assert (=> bm!135689 (= call!135694 (validRegex!2464 (ite c!358488 (regTwo!13699 (regex!4245 otherR!12)) (regOne!13698 (regex!4245 otherR!12)))))))

(declare-fun b!2255152 () Bool)

(declare-fun res!963878 () Bool)

(declare-fun e!1443432 () Bool)

(assert (=> b!2255152 (=> res!963878 e!1443432)))

(assert (=> b!2255152 (= res!963878 (not ((_ is Concat!11001) (regex!4245 otherR!12))))))

(assert (=> b!2255152 (= e!1443436 e!1443432)))

(declare-fun b!2255153 () Bool)

(declare-fun e!1443433 () Bool)

(assert (=> b!2255153 (= e!1443433 e!1443434)))

(assert (=> b!2255153 (= c!358489 ((_ is Star!6593) (regex!4245 otherR!12)))))

(declare-fun bm!135690 () Bool)

(assert (=> bm!135690 (= call!135693 call!135695)))

(declare-fun b!2255154 () Bool)

(declare-fun e!1443430 () Bool)

(assert (=> b!2255154 (= e!1443430 call!135695)))

(declare-fun d!668650 () Bool)

(declare-fun res!963881 () Bool)

(assert (=> d!668650 (=> res!963881 e!1443433)))

(assert (=> d!668650 (= res!963881 ((_ is ElementMatch!6593) (regex!4245 otherR!12)))))

(assert (=> d!668650 (= (validRegex!2464 (regex!4245 otherR!12)) e!1443433)))

(declare-fun b!2255155 () Bool)

(assert (=> b!2255155 (= e!1443434 e!1443430)))

(declare-fun res!963879 () Bool)

(assert (=> b!2255155 (= res!963879 (not (nullable!1809 (reg!6922 (regex!4245 otherR!12)))))))

(assert (=> b!2255155 (=> (not res!963879) (not e!1443430))))

(declare-fun b!2255156 () Bool)

(assert (=> b!2255156 (= e!1443435 call!135694)))

(declare-fun b!2255157 () Bool)

(assert (=> b!2255157 (= e!1443432 e!1443431)))

(declare-fun res!963880 () Bool)

(assert (=> b!2255157 (=> (not res!963880) (not e!1443431))))

(assert (=> b!2255157 (= res!963880 call!135694)))

(assert (= (and d!668650 (not res!963881)) b!2255153))

(assert (= (and b!2255153 c!358489) b!2255155))

(assert (= (and b!2255153 (not c!358489)) b!2255151))

(assert (= (and b!2255155 res!963879) b!2255154))

(assert (= (and b!2255151 c!358488) b!2255149))

(assert (= (and b!2255151 (not c!358488)) b!2255152))

(assert (= (and b!2255149 res!963882) b!2255156))

(assert (= (and b!2255152 (not res!963878)) b!2255157))

(assert (= (and b!2255157 res!963880) b!2255150))

(assert (= (or b!2255149 b!2255150) bm!135690))

(assert (= (or b!2255156 b!2255157) bm!135689))

(assert (= (or b!2255154 bm!135690) bm!135688))

(declare-fun m!2685737 () Bool)

(assert (=> bm!135688 m!2685737))

(declare-fun m!2685739 () Bool)

(assert (=> bm!135689 m!2685739))

(declare-fun m!2685741 () Bool)

(assert (=> b!2255155 m!2685741))

(assert (=> b!2254919 d!668650))

(declare-fun b!2255179 () Bool)

(declare-fun e!1443448 () Int)

(assert (=> b!2255179 (= e!1443448 (- 1))))

(declare-fun b!2255177 () Bool)

(declare-fun e!1443449 () Int)

(assert (=> b!2255177 (= e!1443449 e!1443448)))

(declare-fun c!358497 () Bool)

(assert (=> b!2255177 (= c!358497 (and ((_ is Cons!26741) rules!1750) (not (= (h!32142 rules!1750) otherR!12))))))

(declare-fun b!2255178 () Bool)

(assert (=> b!2255178 (= e!1443448 (+ 1 (getIndex!266 (t!201159 rules!1750) otherR!12)))))

(declare-fun b!2255176 () Bool)

(assert (=> b!2255176 (= e!1443449 0)))

(declare-fun d!668654 () Bool)

(declare-fun lt!838294 () Int)

(assert (=> d!668654 (>= lt!838294 0)))

(assert (=> d!668654 (= lt!838294 e!1443449)))

(declare-fun c!358498 () Bool)

(assert (=> d!668654 (= c!358498 (and ((_ is Cons!26741) rules!1750) (= (h!32142 rules!1750) otherR!12)))))

(assert (=> d!668654 (contains!4597 rules!1750 otherR!12)))

(assert (=> d!668654 (= (getIndex!266 rules!1750 otherR!12) lt!838294)))

(assert (= (and d!668654 c!358498) b!2255176))

(assert (= (and d!668654 (not c!358498)) b!2255177))

(assert (= (and b!2255177 c!358497) b!2255178))

(assert (= (and b!2255177 (not c!358497)) b!2255179))

(declare-fun m!2685759 () Bool)

(assert (=> b!2255178 m!2685759))

(assert (=> d!668654 m!2685537))

(assert (=> b!2254933 d!668654))

(declare-fun b!2255183 () Bool)

(declare-fun e!1443450 () Int)

(assert (=> b!2255183 (= e!1443450 (- 1))))

(declare-fun b!2255181 () Bool)

(declare-fun e!1443451 () Int)

(assert (=> b!2255181 (= e!1443451 e!1443450)))

(declare-fun c!358499 () Bool)

(assert (=> b!2255181 (= c!358499 (and ((_ is Cons!26741) rules!1750) (not (= (h!32142 rules!1750) r!2363))))))

(declare-fun b!2255182 () Bool)

(assert (=> b!2255182 (= e!1443450 (+ 1 (getIndex!266 (t!201159 rules!1750) r!2363)))))

(declare-fun b!2255180 () Bool)

(assert (=> b!2255180 (= e!1443451 0)))

(declare-fun d!668662 () Bool)

(declare-fun lt!838295 () Int)

(assert (=> d!668662 (>= lt!838295 0)))

(assert (=> d!668662 (= lt!838295 e!1443451)))

(declare-fun c!358500 () Bool)

(assert (=> d!668662 (= c!358500 (and ((_ is Cons!26741) rules!1750) (= (h!32142 rules!1750) r!2363)))))

(assert (=> d!668662 (contains!4597 rules!1750 r!2363)))

(assert (=> d!668662 (= (getIndex!266 rules!1750 r!2363) lt!838295)))

(assert (= (and d!668662 c!358500) b!2255180))

(assert (= (and d!668662 (not c!358500)) b!2255181))

(assert (= (and b!2255181 c!358499) b!2255182))

(assert (= (and b!2255181 (not c!358499)) b!2255183))

(declare-fun m!2685761 () Bool)

(assert (=> b!2255182 m!2685761))

(assert (=> d!668662 m!2685571))

(assert (=> b!2254933 d!668662))

(declare-fun d!668664 () Bool)

(declare-fun res!963887 () Bool)

(declare-fun e!1443452 () Bool)

(assert (=> d!668664 (=> (not res!963887) (not e!1443452))))

(assert (=> d!668664 (= res!963887 (validRegex!2464 (regex!4245 otherR!12)))))

(assert (=> d!668664 (= (ruleValid!1337 thiss!16613 otherR!12) e!1443452)))

(declare-fun b!2255184 () Bool)

(declare-fun res!963888 () Bool)

(assert (=> b!2255184 (=> (not res!963888) (not e!1443452))))

(assert (=> b!2255184 (= res!963888 (not (nullable!1809 (regex!4245 otherR!12))))))

(declare-fun b!2255185 () Bool)

(assert (=> b!2255185 (= e!1443452 (not (= (tag!4735 otherR!12) (String!29140 ""))))))

(assert (= (and d!668664 res!963887) b!2255184))

(assert (= (and b!2255184 res!963888) b!2255185))

(assert (=> d!668664 m!2685551))

(declare-fun m!2685763 () Bool)

(assert (=> b!2255184 m!2685763))

(assert (=> b!2254933 d!668664))

(declare-fun d!668666 () Bool)

(assert (=> d!668666 (ruleValid!1337 thiss!16613 otherR!12)))

(declare-fun lt!838296 () Unit!39662)

(assert (=> d!668666 (= lt!838296 (choose!13187 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!668666 (contains!4597 rules!1750 otherR!12)))

(assert (=> d!668666 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!744 thiss!16613 otherR!12 rules!1750) lt!838296)))

(declare-fun bs!455230 () Bool)

(assert (= bs!455230 d!668666))

(assert (=> bs!455230 m!2685567))

(declare-fun m!2685765 () Bool)

(assert (=> bs!455230 m!2685765))

(assert (=> bs!455230 m!2685537))

(assert (=> b!2254933 d!668666))

(declare-fun d!668668 () Bool)

(declare-fun lt!838302 () Int)

(assert (=> d!668668 (= lt!838302 (size!20933 (list!10281 (charsOf!2633 (head!4816 tokens!456)))))))

(declare-fun size!20935 (Conc!8638) Int)

(assert (=> d!668668 (= lt!838302 (size!20935 (c!358444 (charsOf!2633 (head!4816 tokens!456)))))))

(assert (=> d!668668 (= (size!20934 (charsOf!2633 (head!4816 tokens!456))) lt!838302)))

(declare-fun bs!455231 () Bool)

(assert (= bs!455231 d!668668))

(assert (=> bs!455231 m!2685485))

(assert (=> bs!455231 m!2685547))

(assert (=> bs!455231 m!2685547))

(declare-fun m!2685775 () Bool)

(assert (=> bs!455231 m!2685775))

(declare-fun m!2685777 () Bool)

(assert (=> bs!455231 m!2685777))

(assert (=> b!2254932 d!668668))

(declare-fun d!668672 () Bool)

(declare-fun lt!838304 () BalanceConc!17004)

(assert (=> d!668672 (= (list!10281 lt!838304) (originalCharacters!5015 (head!4816 tokens!456)))))

(assert (=> d!668672 (= lt!838304 (dynLambda!11614 (toChars!5846 (transformation!4245 (rule!6549 (head!4816 tokens!456)))) (value!134802 (head!4816 tokens!456))))))

(assert (=> d!668672 (= (charsOf!2633 (head!4816 tokens!456)) lt!838304)))

(declare-fun b_lambda!72027 () Bool)

(assert (=> (not b_lambda!72027) (not d!668672)))

(declare-fun t!201170 () Bool)

(declare-fun tb!133655 () Bool)

(assert (=> (and b!2254929 (= (toChars!5846 (transformation!4245 otherR!12)) (toChars!5846 (transformation!4245 (rule!6549 (head!4816 tokens!456))))) t!201170) tb!133655))

(declare-fun b!2255194 () Bool)

(declare-fun e!1443457 () Bool)

(declare-fun tp!712701 () Bool)

(assert (=> b!2255194 (= e!1443457 (and (inv!36276 (c!358444 (dynLambda!11614 (toChars!5846 (transformation!4245 (rule!6549 (head!4816 tokens!456)))) (value!134802 (head!4816 tokens!456))))) tp!712701))))

(declare-fun result!162928 () Bool)

(assert (=> tb!133655 (= result!162928 (and (inv!36277 (dynLambda!11614 (toChars!5846 (transformation!4245 (rule!6549 (head!4816 tokens!456)))) (value!134802 (head!4816 tokens!456)))) e!1443457))))

(assert (= tb!133655 b!2255194))

(declare-fun m!2685781 () Bool)

(assert (=> b!2255194 m!2685781))

(declare-fun m!2685783 () Bool)

(assert (=> tb!133655 m!2685783))

(assert (=> d!668672 t!201170))

(declare-fun b_and!176889 () Bool)

(assert (= b_and!176881 (and (=> t!201170 result!162928) b_and!176889)))

(declare-fun tb!133657 () Bool)

(declare-fun t!201172 () Bool)

(assert (=> (and b!2254941 (= (toChars!5846 (transformation!4245 (h!32142 rules!1750))) (toChars!5846 (transformation!4245 (rule!6549 (head!4816 tokens!456))))) t!201172) tb!133657))

(declare-fun result!162930 () Bool)

(assert (= result!162930 result!162928))

(assert (=> d!668672 t!201172))

(declare-fun b_and!176891 () Bool)

(assert (= b_and!176883 (and (=> t!201172 result!162930) b_and!176891)))

(declare-fun t!201174 () Bool)

(declare-fun tb!133659 () Bool)

(assert (=> (and b!2254945 (= (toChars!5846 (transformation!4245 (rule!6549 (h!32143 tokens!456)))) (toChars!5846 (transformation!4245 (rule!6549 (head!4816 tokens!456))))) t!201174) tb!133659))

(declare-fun result!162932 () Bool)

(assert (= result!162932 result!162928))

(assert (=> d!668672 t!201174))

(declare-fun b_and!176893 () Bool)

(assert (= b_and!176885 (and (=> t!201174 result!162932) b_and!176893)))

(declare-fun t!201176 () Bool)

(declare-fun tb!133661 () Bool)

(assert (=> (and b!2254928 (= (toChars!5846 (transformation!4245 r!2363)) (toChars!5846 (transformation!4245 (rule!6549 (head!4816 tokens!456))))) t!201176) tb!133661))

(declare-fun result!162934 () Bool)

(assert (= result!162934 result!162928))

(assert (=> d!668672 t!201176))

(declare-fun b_and!176895 () Bool)

(assert (= b_and!176887 (and (=> t!201176 result!162934) b_and!176895)))

(declare-fun m!2685785 () Bool)

(assert (=> d!668672 m!2685785))

(declare-fun m!2685787 () Bool)

(assert (=> d!668672 m!2685787))

(assert (=> b!2254932 d!668672))

(declare-fun d!668676 () Bool)

(assert (=> d!668676 (= (head!4816 tokens!456) (h!32143 tokens!456))))

(assert (=> b!2254932 d!668676))

(assert (=> b!2254932 d!668610))

(declare-fun d!668678 () Bool)

(assert (=> d!668678 (= (inv!36271 (tag!4735 (h!32142 rules!1750))) (= (mod (str.len (value!134801 (tag!4735 (h!32142 rules!1750)))) 2) 0))))

(assert (=> b!2254914 d!668678))

(declare-fun d!668680 () Bool)

(declare-fun res!963889 () Bool)

(declare-fun e!1443458 () Bool)

(assert (=> d!668680 (=> (not res!963889) (not e!1443458))))

(assert (=> d!668680 (= res!963889 (semiInverseModEq!1711 (toChars!5846 (transformation!4245 (h!32142 rules!1750))) (toValue!5987 (transformation!4245 (h!32142 rules!1750)))))))

(assert (=> d!668680 (= (inv!36274 (transformation!4245 (h!32142 rules!1750))) e!1443458)))

(declare-fun b!2255195 () Bool)

(assert (=> b!2255195 (= e!1443458 (equivClasses!1630 (toChars!5846 (transformation!4245 (h!32142 rules!1750))) (toValue!5987 (transformation!4245 (h!32142 rules!1750)))))))

(assert (= (and d!668680 res!963889) b!2255195))

(declare-fun m!2685789 () Bool)

(assert (=> d!668680 m!2685789))

(declare-fun m!2685791 () Bool)

(assert (=> b!2255195 m!2685791))

(assert (=> b!2254914 d!668680))

(declare-fun d!668682 () Bool)

(assert (=> d!668682 (= (inv!36271 (tag!4735 (rule!6549 (h!32143 tokens!456)))) (= (mod (str.len (value!134801 (tag!4735 (rule!6549 (h!32143 tokens!456))))) 2) 0))))

(assert (=> b!2254936 d!668682))

(declare-fun d!668684 () Bool)

(declare-fun res!963890 () Bool)

(declare-fun e!1443459 () Bool)

(assert (=> d!668684 (=> (not res!963890) (not e!1443459))))

(assert (=> d!668684 (= res!963890 (semiInverseModEq!1711 (toChars!5846 (transformation!4245 (rule!6549 (h!32143 tokens!456)))) (toValue!5987 (transformation!4245 (rule!6549 (h!32143 tokens!456))))))))

(assert (=> d!668684 (= (inv!36274 (transformation!4245 (rule!6549 (h!32143 tokens!456)))) e!1443459)))

(declare-fun b!2255196 () Bool)

(assert (=> b!2255196 (= e!1443459 (equivClasses!1630 (toChars!5846 (transformation!4245 (rule!6549 (h!32143 tokens!456)))) (toValue!5987 (transformation!4245 (rule!6549 (h!32143 tokens!456))))))))

(assert (= (and d!668684 res!963890) b!2255196))

(declare-fun m!2685793 () Bool)

(assert (=> d!668684 m!2685793))

(declare-fun m!2685795 () Bool)

(assert (=> b!2255196 m!2685795))

(assert (=> b!2254936 d!668684))

(declare-fun b!2255253 () Bool)

(declare-fun e!1443494 () Bool)

(declare-fun lt!838316 () Bool)

(assert (=> b!2255253 (= e!1443494 (not lt!838316))))

(declare-fun b!2255254 () Bool)

(declare-fun e!1443495 () Bool)

(declare-fun call!135698 () Bool)

(assert (=> b!2255254 (= e!1443495 (= lt!838316 call!135698))))

(declare-fun b!2255255 () Bool)

(declare-fun e!1443493 () Bool)

(assert (=> b!2255255 (= e!1443493 (nullable!1809 (regex!4245 r!2363)))))

(declare-fun b!2255256 () Bool)

(declare-fun res!963916 () Bool)

(declare-fun e!1443492 () Bool)

(assert (=> b!2255256 (=> res!963916 e!1443492)))

(assert (=> b!2255256 (= res!963916 (not ((_ is ElementMatch!6593) (regex!4245 r!2363))))))

(assert (=> b!2255256 (= e!1443494 e!1443492)))

(declare-fun b!2255257 () Bool)

(declare-fun e!1443490 () Bool)

(assert (=> b!2255257 (= e!1443490 (= (head!4817 lt!838215) (c!358445 (regex!4245 r!2363))))))

(declare-fun bm!135693 () Bool)

(declare-fun isEmpty!15095 (List!26834) Bool)

(assert (=> bm!135693 (= call!135698 (isEmpty!15095 lt!838215))))

(declare-fun d!668686 () Bool)

(assert (=> d!668686 e!1443495))

(declare-fun c!358521 () Bool)

(assert (=> d!668686 (= c!358521 ((_ is EmptyExpr!6593) (regex!4245 r!2363)))))

(assert (=> d!668686 (= lt!838316 e!1443493)))

(declare-fun c!358520 () Bool)

(assert (=> d!668686 (= c!358520 (isEmpty!15095 lt!838215))))

(assert (=> d!668686 (validRegex!2464 (regex!4245 r!2363))))

(assert (=> d!668686 (= (matchR!2854 (regex!4245 r!2363) lt!838215) lt!838316)))

(declare-fun b!2255258 () Bool)

(declare-fun res!963919 () Bool)

(assert (=> b!2255258 (=> res!963919 e!1443492)))

(assert (=> b!2255258 (= res!963919 e!1443490)))

(declare-fun res!963914 () Bool)

(assert (=> b!2255258 (=> (not res!963914) (not e!1443490))))

(assert (=> b!2255258 (= res!963914 lt!838316)))

(declare-fun b!2255259 () Bool)

(declare-fun e!1443491 () Bool)

(declare-fun e!1443496 () Bool)

(assert (=> b!2255259 (= e!1443491 e!1443496)))

(declare-fun res!963918 () Bool)

(assert (=> b!2255259 (=> res!963918 e!1443496)))

(assert (=> b!2255259 (= res!963918 call!135698)))

(declare-fun b!2255260 () Bool)

(declare-fun res!963915 () Bool)

(assert (=> b!2255260 (=> res!963915 e!1443496)))

(assert (=> b!2255260 (= res!963915 (not (isEmpty!15095 (tail!3252 lt!838215))))))

(declare-fun b!2255261 () Bool)

(declare-fun derivativeStep!1472 (Regex!6593 C!13332) Regex!6593)

(assert (=> b!2255261 (= e!1443493 (matchR!2854 (derivativeStep!1472 (regex!4245 r!2363) (head!4817 lt!838215)) (tail!3252 lt!838215)))))

(declare-fun b!2255262 () Bool)

(assert (=> b!2255262 (= e!1443496 (not (= (head!4817 lt!838215) (c!358445 (regex!4245 r!2363)))))))

(declare-fun b!2255263 () Bool)

(assert (=> b!2255263 (= e!1443495 e!1443494)))

(declare-fun c!358519 () Bool)

(assert (=> b!2255263 (= c!358519 ((_ is EmptyLang!6593) (regex!4245 r!2363)))))

(declare-fun b!2255264 () Bool)

(declare-fun res!963917 () Bool)

(assert (=> b!2255264 (=> (not res!963917) (not e!1443490))))

(assert (=> b!2255264 (= res!963917 (isEmpty!15095 (tail!3252 lt!838215)))))

(declare-fun b!2255265 () Bool)

(declare-fun res!963921 () Bool)

(assert (=> b!2255265 (=> (not res!963921) (not e!1443490))))

(assert (=> b!2255265 (= res!963921 (not call!135698))))

(declare-fun b!2255266 () Bool)

(assert (=> b!2255266 (= e!1443492 e!1443491)))

(declare-fun res!963920 () Bool)

(assert (=> b!2255266 (=> (not res!963920) (not e!1443491))))

(assert (=> b!2255266 (= res!963920 (not lt!838316))))

(assert (= (and d!668686 c!358520) b!2255255))

(assert (= (and d!668686 (not c!358520)) b!2255261))

(assert (= (and d!668686 c!358521) b!2255254))

(assert (= (and d!668686 (not c!358521)) b!2255263))

(assert (= (and b!2255263 c!358519) b!2255253))

(assert (= (and b!2255263 (not c!358519)) b!2255256))

(assert (= (and b!2255256 (not res!963916)) b!2255258))

(assert (= (and b!2255258 res!963914) b!2255265))

(assert (= (and b!2255265 res!963921) b!2255264))

(assert (= (and b!2255264 res!963917) b!2255257))

(assert (= (and b!2255258 (not res!963919)) b!2255266))

(assert (= (and b!2255266 res!963920) b!2255259))

(assert (= (and b!2255259 (not res!963918)) b!2255260))

(assert (= (and b!2255260 (not res!963915)) b!2255262))

(assert (= (or b!2255254 b!2255259 b!2255265) bm!135693))

(assert (=> b!2255257 m!2685609))

(assert (=> b!2255261 m!2685609))

(assert (=> b!2255261 m!2685609))

(declare-fun m!2685815 () Bool)

(assert (=> b!2255261 m!2685815))

(assert (=> b!2255261 m!2685613))

(assert (=> b!2255261 m!2685815))

(assert (=> b!2255261 m!2685613))

(declare-fun m!2685817 () Bool)

(assert (=> b!2255261 m!2685817))

(assert (=> b!2255262 m!2685609))

(assert (=> b!2255255 m!2685593))

(declare-fun m!2685819 () Bool)

(assert (=> bm!135693 m!2685819))

(assert (=> b!2255264 m!2685613))

(assert (=> b!2255264 m!2685613))

(declare-fun m!2685821 () Bool)

(assert (=> b!2255264 m!2685821))

(assert (=> b!2255260 m!2685613))

(assert (=> b!2255260 m!2685613))

(assert (=> b!2255260 m!2685821))

(assert (=> d!668686 m!2685819))

(assert (=> d!668686 m!2685591))

(assert (=> b!2254934 d!668686))

(declare-fun d!668704 () Bool)

(assert (=> d!668704 (= (inv!36271 (tag!4735 otherR!12)) (= (mod (str.len (value!134801 (tag!4735 otherR!12))) 2) 0))))

(assert (=> b!2254935 d!668704))

(declare-fun d!668706 () Bool)

(declare-fun res!963922 () Bool)

(declare-fun e!1443497 () Bool)

(assert (=> d!668706 (=> (not res!963922) (not e!1443497))))

(assert (=> d!668706 (= res!963922 (semiInverseModEq!1711 (toChars!5846 (transformation!4245 otherR!12)) (toValue!5987 (transformation!4245 otherR!12))))))

(assert (=> d!668706 (= (inv!36274 (transformation!4245 otherR!12)) e!1443497)))

(declare-fun b!2255267 () Bool)

(assert (=> b!2255267 (= e!1443497 (equivClasses!1630 (toChars!5846 (transformation!4245 otherR!12)) (toValue!5987 (transformation!4245 otherR!12))))))

(assert (= (and d!668706 res!963922) b!2255267))

(declare-fun m!2685823 () Bool)

(assert (=> d!668706 m!2685823))

(declare-fun m!2685825 () Bool)

(assert (=> b!2255267 m!2685825))

(assert (=> b!2254935 d!668706))

(declare-fun d!668708 () Bool)

(declare-fun lt!838320 () Bool)

(declare-fun content!3566 (List!26835) (InoxSet Rule!8290))

(assert (=> d!668708 (= lt!838320 (select (content!3566 rules!1750) otherR!12))))

(declare-fun e!1443506 () Bool)

(assert (=> d!668708 (= lt!838320 e!1443506)))

(declare-fun res!963927 () Bool)

(assert (=> d!668708 (=> (not res!963927) (not e!1443506))))

(assert (=> d!668708 (= res!963927 ((_ is Cons!26741) rules!1750))))

(assert (=> d!668708 (= (contains!4597 rules!1750 otherR!12) lt!838320)))

(declare-fun b!2255274 () Bool)

(declare-fun e!1443505 () Bool)

(assert (=> b!2255274 (= e!1443506 e!1443505)))

(declare-fun res!963928 () Bool)

(assert (=> b!2255274 (=> res!963928 e!1443505)))

(assert (=> b!2255274 (= res!963928 (= (h!32142 rules!1750) otherR!12))))

(declare-fun b!2255275 () Bool)

(assert (=> b!2255275 (= e!1443505 (contains!4597 (t!201159 rules!1750) otherR!12))))

(assert (= (and d!668708 res!963927) b!2255274))

(assert (= (and b!2255274 (not res!963928)) b!2255275))

(declare-fun m!2685833 () Bool)

(assert (=> d!668708 m!2685833))

(declare-fun m!2685835 () Bool)

(assert (=> d!668708 m!2685835))

(declare-fun m!2685837 () Bool)

(assert (=> b!2255275 m!2685837))

(assert (=> b!2254926 d!668708))

(declare-fun d!668714 () Bool)

(declare-fun res!963931 () Bool)

(declare-fun e!1443509 () Bool)

(assert (=> d!668714 (=> (not res!963931) (not e!1443509))))

(declare-fun rulesValid!1555 (LexerInterface!3842 List!26835) Bool)

(assert (=> d!668714 (= res!963931 (rulesValid!1555 thiss!16613 rules!1750))))

(assert (=> d!668714 (= (rulesInvariant!3344 thiss!16613 rules!1750) e!1443509)))

(declare-fun b!2255278 () Bool)

(declare-datatypes ((List!26837 0))(
  ( (Nil!26743) (Cons!26743 (h!32144 String!29139) (t!201257 List!26837)) )
))
(declare-fun noDuplicateTag!1553 (LexerInterface!3842 List!26835 List!26837) Bool)

(assert (=> b!2255278 (= e!1443509 (noDuplicateTag!1553 thiss!16613 rules!1750 Nil!26743))))

(assert (= (and d!668714 res!963931) b!2255278))

(declare-fun m!2685839 () Bool)

(assert (=> d!668714 m!2685839))

(declare-fun m!2685841 () Bool)

(assert (=> b!2255278 m!2685841))

(assert (=> b!2254948 d!668714))

(declare-fun d!668716 () Bool)

(assert (=> d!668716 (= (maxPrefixOneRule!1322 thiss!16613 r!2363 input!1722) (Some!5220 (tuple2!26279 (Token!7969 (apply!6565 (transformation!4245 r!2363) (seqFromList!2949 lt!838215)) r!2363 (size!20933 lt!838215) lt!838215) (_2!15649 lt!838221))))))

(declare-fun lt!838326 () Unit!39662)

(declare-fun choose!13194 (LexerInterface!3842 List!26835 List!26834 List!26834 List!26834 Rule!8290) Unit!39662)

(assert (=> d!668716 (= lt!838326 (choose!13194 thiss!16613 rules!1750 lt!838215 input!1722 (_2!15649 lt!838221) r!2363))))

(assert (=> d!668716 (not (isEmpty!15091 rules!1750))))

(assert (=> d!668716 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!563 thiss!16613 rules!1750 lt!838215 input!1722 (_2!15649 lt!838221) r!2363) lt!838326)))

(declare-fun bs!455235 () Bool)

(assert (= bs!455235 d!668716))

(assert (=> bs!455235 m!2685579))

(assert (=> bs!455235 m!2685545))

(assert (=> bs!455235 m!2685579))

(declare-fun m!2685847 () Bool)

(assert (=> bs!455235 m!2685847))

(assert (=> bs!455235 m!2685499))

(declare-fun m!2685849 () Bool)

(assert (=> bs!455235 m!2685849))

(assert (=> bs!455235 m!2685583))

(assert (=> b!2254927 d!668716))

(declare-fun d!668720 () Bool)

(declare-fun fromListB!1321 (List!26834) BalanceConc!17004)

(assert (=> d!668720 (= (seqFromList!2949 lt!838215) (fromListB!1321 lt!838215))))

(declare-fun bs!455236 () Bool)

(assert (= bs!455236 d!668720))

(declare-fun m!2685851 () Bool)

(assert (=> bs!455236 m!2685851))

(assert (=> b!2254927 d!668720))

(declare-fun b!2255328 () Bool)

(declare-fun res!963975 () Bool)

(declare-fun e!1443534 () Bool)

(assert (=> b!2255328 (=> (not res!963975) (not e!1443534))))

(declare-fun lt!838354 () Option!5221)

(assert (=> b!2255328 (= res!963975 (= (++!6517 (list!10281 (charsOf!2633 (_1!15649 (get!8075 lt!838354)))) (_2!15649 (get!8075 lt!838354))) input!1722))))

(declare-fun b!2255329 () Bool)

(declare-fun res!963971 () Bool)

(assert (=> b!2255329 (=> (not res!963971) (not e!1443534))))

(assert (=> b!2255329 (= res!963971 (= (value!134802 (_1!15649 (get!8075 lt!838354))) (apply!6565 (transformation!4245 (rule!6549 (_1!15649 (get!8075 lt!838354)))) (seqFromList!2949 (originalCharacters!5015 (_1!15649 (get!8075 lt!838354)))))))))

(declare-fun b!2255330 () Bool)

(assert (=> b!2255330 (= e!1443534 (= (size!20932 (_1!15649 (get!8075 lt!838354))) (size!20933 (originalCharacters!5015 (_1!15649 (get!8075 lt!838354))))))))

(declare-fun b!2255331 () Bool)

(declare-fun e!1443533 () Option!5221)

(declare-datatypes ((tuple2!26284 0))(
  ( (tuple2!26285 (_1!15652 List!26834) (_2!15652 List!26834)) )
))
(declare-fun lt!838353 () tuple2!26284)

(assert (=> b!2255331 (= e!1443533 (Some!5220 (tuple2!26279 (Token!7969 (apply!6565 (transformation!4245 r!2363) (seqFromList!2949 (_1!15652 lt!838353))) r!2363 (size!20934 (seqFromList!2949 (_1!15652 lt!838353))) (_1!15652 lt!838353)) (_2!15652 lt!838353))))))

(declare-fun lt!838357 () Unit!39662)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!663 (Regex!6593 List!26834) Unit!39662)

(assert (=> b!2255331 (= lt!838357 (longestMatchIsAcceptedByMatchOrIsEmpty!663 (regex!4245 r!2363) input!1722))))

(declare-fun res!963977 () Bool)

(declare-fun findLongestMatchInner!690 (Regex!6593 List!26834 Int List!26834 List!26834 Int) tuple2!26284)

(assert (=> b!2255331 (= res!963977 (isEmpty!15095 (_1!15652 (findLongestMatchInner!690 (regex!4245 r!2363) Nil!26740 (size!20933 Nil!26740) input!1722 input!1722 (size!20933 input!1722)))))))

(declare-fun e!1443536 () Bool)

(assert (=> b!2255331 (=> res!963977 e!1443536)))

(assert (=> b!2255331 e!1443536))

(declare-fun lt!838356 () Unit!39662)

(assert (=> b!2255331 (= lt!838356 lt!838357)))

(declare-fun lt!838355 () Unit!39662)

(assert (=> b!2255331 (= lt!838355 (lemmaSemiInverse!1010 (transformation!4245 r!2363) (seqFromList!2949 (_1!15652 lt!838353))))))

(declare-fun b!2255332 () Bool)

(declare-fun res!963976 () Bool)

(assert (=> b!2255332 (=> (not res!963976) (not e!1443534))))

(assert (=> b!2255332 (= res!963976 (= (rule!6549 (_1!15649 (get!8075 lt!838354))) r!2363))))

(declare-fun b!2255333 () Bool)

(assert (=> b!2255333 (= e!1443536 (matchR!2854 (regex!4245 r!2363) (_1!15652 (findLongestMatchInner!690 (regex!4245 r!2363) Nil!26740 (size!20933 Nil!26740) input!1722 input!1722 (size!20933 input!1722)))))))

(declare-fun b!2255334 () Bool)

(declare-fun res!963974 () Bool)

(assert (=> b!2255334 (=> (not res!963974) (not e!1443534))))

(assert (=> b!2255334 (= res!963974 (< (size!20933 (_2!15649 (get!8075 lt!838354))) (size!20933 input!1722)))))

(declare-fun d!668722 () Bool)

(declare-fun e!1443535 () Bool)

(assert (=> d!668722 e!1443535))

(declare-fun res!963973 () Bool)

(assert (=> d!668722 (=> res!963973 e!1443535)))

(assert (=> d!668722 (= res!963973 (isEmpty!15094 lt!838354))))

(assert (=> d!668722 (= lt!838354 e!1443533)))

(declare-fun c!358527 () Bool)

(assert (=> d!668722 (= c!358527 (isEmpty!15095 (_1!15652 lt!838353)))))

(declare-fun findLongestMatch!619 (Regex!6593 List!26834) tuple2!26284)

(assert (=> d!668722 (= lt!838353 (findLongestMatch!619 (regex!4245 r!2363) input!1722))))

(assert (=> d!668722 (ruleValid!1337 thiss!16613 r!2363)))

(assert (=> d!668722 (= (maxPrefixOneRule!1322 thiss!16613 r!2363 input!1722) lt!838354)))

(declare-fun b!2255335 () Bool)

(assert (=> b!2255335 (= e!1443533 None!5220)))

(declare-fun b!2255336 () Bool)

(assert (=> b!2255336 (= e!1443535 e!1443534)))

(declare-fun res!963972 () Bool)

(assert (=> b!2255336 (=> (not res!963972) (not e!1443534))))

(assert (=> b!2255336 (= res!963972 (matchR!2854 (regex!4245 r!2363) (list!10281 (charsOf!2633 (_1!15649 (get!8075 lt!838354))))))))

(assert (= (and d!668722 c!358527) b!2255335))

(assert (= (and d!668722 (not c!358527)) b!2255331))

(assert (= (and b!2255331 (not res!963977)) b!2255333))

(assert (= (and d!668722 (not res!963973)) b!2255336))

(assert (= (and b!2255336 res!963972) b!2255328))

(assert (= (and b!2255328 res!963975) b!2255334))

(assert (= (and b!2255334 res!963974) b!2255332))

(assert (= (and b!2255332 res!963976) b!2255329))

(assert (= (and b!2255329 res!963971) b!2255330))

(declare-fun m!2685899 () Bool)

(assert (=> b!2255330 m!2685899))

(declare-fun m!2685901 () Bool)

(assert (=> b!2255330 m!2685901))

(assert (=> b!2255328 m!2685899))

(declare-fun m!2685903 () Bool)

(assert (=> b!2255328 m!2685903))

(assert (=> b!2255328 m!2685903))

(declare-fun m!2685905 () Bool)

(assert (=> b!2255328 m!2685905))

(assert (=> b!2255328 m!2685905))

(declare-fun m!2685907 () Bool)

(assert (=> b!2255328 m!2685907))

(assert (=> b!2255334 m!2685899))

(declare-fun m!2685909 () Bool)

(assert (=> b!2255334 m!2685909))

(assert (=> b!2255334 m!2685643))

(declare-fun m!2685911 () Bool)

(assert (=> b!2255333 m!2685911))

(assert (=> b!2255333 m!2685643))

(assert (=> b!2255333 m!2685911))

(assert (=> b!2255333 m!2685643))

(declare-fun m!2685913 () Bool)

(assert (=> b!2255333 m!2685913))

(declare-fun m!2685915 () Bool)

(assert (=> b!2255333 m!2685915))

(assert (=> b!2255329 m!2685899))

(declare-fun m!2685917 () Bool)

(assert (=> b!2255329 m!2685917))

(assert (=> b!2255329 m!2685917))

(declare-fun m!2685919 () Bool)

(assert (=> b!2255329 m!2685919))

(declare-fun m!2685921 () Bool)

(assert (=> d!668722 m!2685921))

(declare-fun m!2685923 () Bool)

(assert (=> d!668722 m!2685923))

(declare-fun m!2685925 () Bool)

(assert (=> d!668722 m!2685925))

(assert (=> d!668722 m!2685517))

(assert (=> b!2255332 m!2685899))

(assert (=> b!2255336 m!2685899))

(assert (=> b!2255336 m!2685903))

(assert (=> b!2255336 m!2685903))

(assert (=> b!2255336 m!2685905))

(assert (=> b!2255336 m!2685905))

(declare-fun m!2685929 () Bool)

(assert (=> b!2255336 m!2685929))

(assert (=> b!2255331 m!2685911))

(declare-fun m!2685931 () Bool)

(assert (=> b!2255331 m!2685931))

(assert (=> b!2255331 m!2685643))

(declare-fun m!2685933 () Bool)

(assert (=> b!2255331 m!2685933))

(assert (=> b!2255331 m!2685931))

(declare-fun m!2685937 () Bool)

(assert (=> b!2255331 m!2685937))

(declare-fun m!2685941 () Bool)

(assert (=> b!2255331 m!2685941))

(assert (=> b!2255331 m!2685911))

(assert (=> b!2255331 m!2685643))

(assert (=> b!2255331 m!2685913))

(assert (=> b!2255331 m!2685931))

(declare-fun m!2685943 () Bool)

(assert (=> b!2255331 m!2685943))

(assert (=> b!2255331 m!2685931))

(declare-fun m!2685945 () Bool)

(assert (=> b!2255331 m!2685945))

(assert (=> b!2254927 d!668722))

(declare-fun b!2255347 () Bool)

(declare-fun e!1443542 () Bool)

(assert (=> b!2255347 (= e!1443542 (>= (size!20933 input!1722) (size!20933 lt!838215)))))

(declare-fun b!2255345 () Bool)

(declare-fun res!963986 () Bool)

(declare-fun e!1443541 () Bool)

(assert (=> b!2255345 (=> (not res!963986) (not e!1443541))))

(assert (=> b!2255345 (= res!963986 (= (head!4817 lt!838215) (head!4817 input!1722)))))

(declare-fun b!2255346 () Bool)

(assert (=> b!2255346 (= e!1443541 (isPrefix!2235 (tail!3252 lt!838215) (tail!3252 input!1722)))))

(declare-fun d!668732 () Bool)

(assert (=> d!668732 e!1443542))

(declare-fun res!963985 () Bool)

(assert (=> d!668732 (=> res!963985 e!1443542)))

(declare-fun lt!838358 () Bool)

(assert (=> d!668732 (= res!963985 (not lt!838358))))

(declare-fun e!1443543 () Bool)

(assert (=> d!668732 (= lt!838358 e!1443543)))

(declare-fun res!963987 () Bool)

(assert (=> d!668732 (=> res!963987 e!1443543)))

(assert (=> d!668732 (= res!963987 ((_ is Nil!26740) lt!838215))))

(assert (=> d!668732 (= (isPrefix!2235 lt!838215 input!1722) lt!838358)))

(declare-fun b!2255344 () Bool)

(assert (=> b!2255344 (= e!1443543 e!1443541)))

(declare-fun res!963988 () Bool)

(assert (=> b!2255344 (=> (not res!963988) (not e!1443541))))

(assert (=> b!2255344 (= res!963988 (not ((_ is Nil!26740) input!1722)))))

(assert (= (and d!668732 (not res!963987)) b!2255344))

(assert (= (and b!2255344 res!963988) b!2255345))

(assert (= (and b!2255345 res!963986) b!2255346))

(assert (= (and d!668732 (not res!963985)) b!2255347))

(assert (=> b!2255347 m!2685643))

(assert (=> b!2255347 m!2685499))

(assert (=> b!2255345 m!2685609))

(declare-fun m!2685951 () Bool)

(assert (=> b!2255345 m!2685951))

(assert (=> b!2255346 m!2685613))

(assert (=> b!2255346 m!2685645))

(assert (=> b!2255346 m!2685613))

(assert (=> b!2255346 m!2685645))

(declare-fun m!2685953 () Bool)

(assert (=> b!2255346 m!2685953))

(assert (=> b!2254927 d!668732))

(declare-fun d!668736 () Bool)

(declare-fun dynLambda!11617 (Int BalanceConc!17004) TokenValue!4407)

(assert (=> d!668736 (= (apply!6565 (transformation!4245 r!2363) lt!838214) (dynLambda!11617 (toValue!5987 (transformation!4245 r!2363)) lt!838214))))

(declare-fun b_lambda!72035 () Bool)

(assert (=> (not b_lambda!72035) (not d!668736)))

(declare-fun tb!133679 () Bool)

(declare-fun t!201194 () Bool)

(assert (=> (and b!2254929 (= (toValue!5987 (transformation!4245 otherR!12)) (toValue!5987 (transformation!4245 r!2363))) t!201194) tb!133679))

(declare-fun result!162956 () Bool)

(assert (=> tb!133679 (= result!162956 (inv!21 (dynLambda!11617 (toValue!5987 (transformation!4245 r!2363)) lt!838214)))))

(declare-fun m!2685967 () Bool)

(assert (=> tb!133679 m!2685967))

(assert (=> d!668736 t!201194))

(declare-fun b_and!176921 () Bool)

(assert (= b_and!176865 (and (=> t!201194 result!162956) b_and!176921)))

(declare-fun tb!133681 () Bool)

(declare-fun t!201196 () Bool)

(assert (=> (and b!2254941 (= (toValue!5987 (transformation!4245 (h!32142 rules!1750))) (toValue!5987 (transformation!4245 r!2363))) t!201196) tb!133681))

(declare-fun result!162960 () Bool)

(assert (= result!162960 result!162956))

(assert (=> d!668736 t!201196))

(declare-fun b_and!176923 () Bool)

(assert (= b_and!176869 (and (=> t!201196 result!162960) b_and!176923)))

(declare-fun tb!133683 () Bool)

(declare-fun t!201198 () Bool)

(assert (=> (and b!2254945 (= (toValue!5987 (transformation!4245 (rule!6549 (h!32143 tokens!456)))) (toValue!5987 (transformation!4245 r!2363))) t!201198) tb!133683))

(declare-fun result!162962 () Bool)

(assert (= result!162962 result!162956))

(assert (=> d!668736 t!201198))

(declare-fun b_and!176925 () Bool)

(assert (= b_and!176873 (and (=> t!201198 result!162962) b_and!176925)))

(declare-fun t!201200 () Bool)

(declare-fun tb!133685 () Bool)

(assert (=> (and b!2254928 (= (toValue!5987 (transformation!4245 r!2363)) (toValue!5987 (transformation!4245 r!2363))) t!201200) tb!133685))

(declare-fun result!162964 () Bool)

(assert (= result!162964 result!162956))

(assert (=> d!668736 t!201200))

(declare-fun b_and!176927 () Bool)

(assert (= b_and!176877 (and (=> t!201200 result!162964) b_and!176927)))

(declare-fun m!2685969 () Bool)

(assert (=> d!668736 m!2685969))

(assert (=> b!2254927 d!668736))

(declare-fun b!2255367 () Bool)

(declare-fun e!1443555 () Bool)

(assert (=> b!2255367 (= e!1443555 (>= (size!20933 input!1722) (size!20933 input!1722)))))

(declare-fun b!2255365 () Bool)

(declare-fun res!963998 () Bool)

(declare-fun e!1443554 () Bool)

(assert (=> b!2255365 (=> (not res!963998) (not e!1443554))))

(assert (=> b!2255365 (= res!963998 (= (head!4817 input!1722) (head!4817 input!1722)))))

(declare-fun b!2255366 () Bool)

(assert (=> b!2255366 (= e!1443554 (isPrefix!2235 (tail!3252 input!1722) (tail!3252 input!1722)))))

(declare-fun d!668740 () Bool)

(assert (=> d!668740 e!1443555))

(declare-fun res!963997 () Bool)

(assert (=> d!668740 (=> res!963997 e!1443555)))

(declare-fun lt!838360 () Bool)

(assert (=> d!668740 (= res!963997 (not lt!838360))))

(declare-fun e!1443556 () Bool)

(assert (=> d!668740 (= lt!838360 e!1443556)))

(declare-fun res!963999 () Bool)

(assert (=> d!668740 (=> res!963999 e!1443556)))

(assert (=> d!668740 (= res!963999 ((_ is Nil!26740) input!1722))))

(assert (=> d!668740 (= (isPrefix!2235 input!1722 input!1722) lt!838360)))

(declare-fun b!2255364 () Bool)

(assert (=> b!2255364 (= e!1443556 e!1443554)))

(declare-fun res!964000 () Bool)

(assert (=> b!2255364 (=> (not res!964000) (not e!1443554))))

(assert (=> b!2255364 (= res!964000 (not ((_ is Nil!26740) input!1722)))))

(assert (= (and d!668740 (not res!963999)) b!2255364))

(assert (= (and b!2255364 res!964000) b!2255365))

(assert (= (and b!2255365 res!963998) b!2255366))

(assert (= (and d!668740 (not res!963997)) b!2255367))

(assert (=> b!2255367 m!2685643))

(assert (=> b!2255367 m!2685643))

(assert (=> b!2255365 m!2685951))

(assert (=> b!2255365 m!2685951))

(assert (=> b!2255366 m!2685645))

(assert (=> b!2255366 m!2685645))

(assert (=> b!2255366 m!2685645))

(assert (=> b!2255366 m!2685645))

(declare-fun m!2685971 () Bool)

(assert (=> b!2255366 m!2685971))

(assert (=> b!2254930 d!668740))

(declare-fun d!668742 () Bool)

(assert (=> d!668742 (isPrefix!2235 input!1722 input!1722)))

(declare-fun lt!838364 () Unit!39662)

(declare-fun choose!13196 (List!26834 List!26834) Unit!39662)

(assert (=> d!668742 (= lt!838364 (choose!13196 input!1722 input!1722))))

(assert (=> d!668742 (= (lemmaIsPrefixRefl!1441 input!1722 input!1722) lt!838364)))

(declare-fun bs!455237 () Bool)

(assert (= bs!455237 d!668742))

(assert (=> bs!455237 m!2685531))

(declare-fun m!2685977 () Bool)

(assert (=> bs!455237 m!2685977))

(assert (=> b!2254930 d!668742))

(declare-fun b!2255394 () Bool)

(declare-fun e!1443573 () Bool)

(assert (=> b!2255394 (= e!1443573 true)))

(declare-fun d!668746 () Bool)

(assert (=> d!668746 e!1443573))

(assert (= d!668746 b!2255394))

(declare-fun order!14947 () Int)

(declare-fun lambda!85270 () Int)

(declare-fun order!14945 () Int)

(declare-fun dynLambda!11618 (Int Int) Int)

(declare-fun dynLambda!11619 (Int Int) Int)

(assert (=> b!2255394 (< (dynLambda!11618 order!14945 (toValue!5987 (transformation!4245 r!2363))) (dynLambda!11619 order!14947 lambda!85270))))

(declare-fun order!14949 () Int)

(declare-fun dynLambda!11620 (Int Int) Int)

(assert (=> b!2255394 (< (dynLambda!11620 order!14949 (toChars!5846 (transformation!4245 r!2363))) (dynLambda!11619 order!14947 lambda!85270))))

(assert (=> d!668746 (= (list!10281 (dynLambda!11614 (toChars!5846 (transformation!4245 r!2363)) (dynLambda!11617 (toValue!5987 (transformation!4245 r!2363)) lt!838214))) (list!10281 lt!838214))))

(declare-fun lt!838374 () Unit!39662)

(declare-fun ForallOf!482 (Int BalanceConc!17004) Unit!39662)

(assert (=> d!668746 (= lt!838374 (ForallOf!482 lambda!85270 lt!838214))))

(assert (=> d!668746 (= (lemmaSemiInverse!1010 (transformation!4245 r!2363) lt!838214) lt!838374)))

(declare-fun b_lambda!72039 () Bool)

(assert (=> (not b_lambda!72039) (not d!668746)))

(declare-fun t!201210 () Bool)

(declare-fun tb!133695 () Bool)

(assert (=> (and b!2254929 (= (toChars!5846 (transformation!4245 otherR!12)) (toChars!5846 (transformation!4245 r!2363))) t!201210) tb!133695))

(declare-fun b!2255395 () Bool)

(declare-fun e!1443574 () Bool)

(declare-fun tp!712706 () Bool)

(assert (=> b!2255395 (= e!1443574 (and (inv!36276 (c!358444 (dynLambda!11614 (toChars!5846 (transformation!4245 r!2363)) (dynLambda!11617 (toValue!5987 (transformation!4245 r!2363)) lt!838214)))) tp!712706))))

(declare-fun result!162974 () Bool)

(assert (=> tb!133695 (= result!162974 (and (inv!36277 (dynLambda!11614 (toChars!5846 (transformation!4245 r!2363)) (dynLambda!11617 (toValue!5987 (transformation!4245 r!2363)) lt!838214))) e!1443574))))

(assert (= tb!133695 b!2255395))

(declare-fun m!2686005 () Bool)

(assert (=> b!2255395 m!2686005))

(declare-fun m!2686007 () Bool)

(assert (=> tb!133695 m!2686007))

(assert (=> d!668746 t!201210))

(declare-fun b_and!176937 () Bool)

(assert (= b_and!176889 (and (=> t!201210 result!162974) b_and!176937)))

(declare-fun tb!133697 () Bool)

(declare-fun t!201212 () Bool)

(assert (=> (and b!2254941 (= (toChars!5846 (transformation!4245 (h!32142 rules!1750))) (toChars!5846 (transformation!4245 r!2363))) t!201212) tb!133697))

(declare-fun result!162976 () Bool)

(assert (= result!162976 result!162974))

(assert (=> d!668746 t!201212))

(declare-fun b_and!176939 () Bool)

(assert (= b_and!176891 (and (=> t!201212 result!162976) b_and!176939)))

(declare-fun tb!133699 () Bool)

(declare-fun t!201214 () Bool)

(assert (=> (and b!2254945 (= (toChars!5846 (transformation!4245 (rule!6549 (h!32143 tokens!456)))) (toChars!5846 (transformation!4245 r!2363))) t!201214) tb!133699))

(declare-fun result!162978 () Bool)

(assert (= result!162978 result!162974))

(assert (=> d!668746 t!201214))

(declare-fun b_and!176941 () Bool)

(assert (= b_and!176893 (and (=> t!201214 result!162978) b_and!176941)))

(declare-fun t!201216 () Bool)

(declare-fun tb!133701 () Bool)

(assert (=> (and b!2254928 (= (toChars!5846 (transformation!4245 r!2363)) (toChars!5846 (transformation!4245 r!2363))) t!201216) tb!133701))

(declare-fun result!162980 () Bool)

(assert (= result!162980 result!162974))

(assert (=> d!668746 t!201216))

(declare-fun b_and!176943 () Bool)

(assert (= b_and!176895 (and (=> t!201216 result!162980) b_and!176943)))

(declare-fun b_lambda!72041 () Bool)

(assert (=> (not b_lambda!72041) (not d!668746)))

(assert (=> d!668746 t!201194))

(declare-fun b_and!176945 () Bool)

(assert (= b_and!176921 (and (=> t!201194 result!162956) b_and!176945)))

(assert (=> d!668746 t!201196))

(declare-fun b_and!176947 () Bool)

(assert (= b_and!176923 (and (=> t!201196 result!162960) b_and!176947)))

(assert (=> d!668746 t!201198))

(declare-fun b_and!176949 () Bool)

(assert (= b_and!176925 (and (=> t!201198 result!162962) b_and!176949)))

(assert (=> d!668746 t!201200))

(declare-fun b_and!176951 () Bool)

(assert (= b_and!176927 (and (=> t!201200 result!162964) b_and!176951)))

(assert (=> d!668746 m!2685969))

(declare-fun m!2686009 () Bool)

(assert (=> d!668746 m!2686009))

(assert (=> d!668746 m!2685969))

(declare-fun m!2686011 () Bool)

(assert (=> d!668746 m!2686011))

(assert (=> d!668746 m!2686009))

(declare-fun m!2686013 () Bool)

(assert (=> d!668746 m!2686013))

(declare-fun m!2686015 () Bool)

(assert (=> d!668746 m!2686015))

(assert (=> b!2254930 d!668746))

(declare-fun d!668760 () Bool)

(assert (=> d!668760 (= (isEmpty!15091 rules!1750) ((_ is Nil!26741) rules!1750))))

(assert (=> b!2254931 d!668760))

(declare-fun b!2255396 () Bool)

(declare-fun e!1443579 () Bool)

(declare-fun lt!838375 () Bool)

(assert (=> b!2255396 (= e!1443579 (not lt!838375))))

(declare-fun b!2255397 () Bool)

(declare-fun e!1443580 () Bool)

(declare-fun call!135701 () Bool)

(assert (=> b!2255397 (= e!1443580 (= lt!838375 call!135701))))

(declare-fun b!2255398 () Bool)

(declare-fun e!1443578 () Bool)

(assert (=> b!2255398 (= e!1443578 (nullable!1809 (regex!4245 r!2363)))))

(declare-fun b!2255399 () Bool)

(declare-fun res!964018 () Bool)

(declare-fun e!1443577 () Bool)

(assert (=> b!2255399 (=> res!964018 e!1443577)))

(assert (=> b!2255399 (= res!964018 (not ((_ is ElementMatch!6593) (regex!4245 r!2363))))))

(assert (=> b!2255399 (= e!1443579 e!1443577)))

(declare-fun b!2255400 () Bool)

(declare-fun e!1443575 () Bool)

(assert (=> b!2255400 (= e!1443575 (= (head!4817 (list!10281 (charsOf!2633 (head!4816 tokens!456)))) (c!358445 (regex!4245 r!2363))))))

(declare-fun bm!135696 () Bool)

(assert (=> bm!135696 (= call!135701 (isEmpty!15095 (list!10281 (charsOf!2633 (head!4816 tokens!456)))))))

(declare-fun d!668762 () Bool)

(assert (=> d!668762 e!1443580))

(declare-fun c!358538 () Bool)

(assert (=> d!668762 (= c!358538 ((_ is EmptyExpr!6593) (regex!4245 r!2363)))))

(assert (=> d!668762 (= lt!838375 e!1443578)))

(declare-fun c!358537 () Bool)

(assert (=> d!668762 (= c!358537 (isEmpty!15095 (list!10281 (charsOf!2633 (head!4816 tokens!456)))))))

(assert (=> d!668762 (validRegex!2464 (regex!4245 r!2363))))

(assert (=> d!668762 (= (matchR!2854 (regex!4245 r!2363) (list!10281 (charsOf!2633 (head!4816 tokens!456)))) lt!838375)))

(declare-fun b!2255401 () Bool)

(declare-fun res!964021 () Bool)

(assert (=> b!2255401 (=> res!964021 e!1443577)))

(assert (=> b!2255401 (= res!964021 e!1443575)))

(declare-fun res!964016 () Bool)

(assert (=> b!2255401 (=> (not res!964016) (not e!1443575))))

(assert (=> b!2255401 (= res!964016 lt!838375)))

(declare-fun b!2255402 () Bool)

(declare-fun e!1443576 () Bool)

(declare-fun e!1443581 () Bool)

(assert (=> b!2255402 (= e!1443576 e!1443581)))

(declare-fun res!964020 () Bool)

(assert (=> b!2255402 (=> res!964020 e!1443581)))

(assert (=> b!2255402 (= res!964020 call!135701)))

(declare-fun b!2255403 () Bool)

(declare-fun res!964017 () Bool)

(assert (=> b!2255403 (=> res!964017 e!1443581)))

(assert (=> b!2255403 (= res!964017 (not (isEmpty!15095 (tail!3252 (list!10281 (charsOf!2633 (head!4816 tokens!456)))))))))

(declare-fun b!2255404 () Bool)

(assert (=> b!2255404 (= e!1443578 (matchR!2854 (derivativeStep!1472 (regex!4245 r!2363) (head!4817 (list!10281 (charsOf!2633 (head!4816 tokens!456))))) (tail!3252 (list!10281 (charsOf!2633 (head!4816 tokens!456))))))))

(declare-fun b!2255405 () Bool)

(assert (=> b!2255405 (= e!1443581 (not (= (head!4817 (list!10281 (charsOf!2633 (head!4816 tokens!456)))) (c!358445 (regex!4245 r!2363)))))))

(declare-fun b!2255406 () Bool)

(assert (=> b!2255406 (= e!1443580 e!1443579)))

(declare-fun c!358536 () Bool)

(assert (=> b!2255406 (= c!358536 ((_ is EmptyLang!6593) (regex!4245 r!2363)))))

(declare-fun b!2255407 () Bool)

(declare-fun res!964019 () Bool)

(assert (=> b!2255407 (=> (not res!964019) (not e!1443575))))

(assert (=> b!2255407 (= res!964019 (isEmpty!15095 (tail!3252 (list!10281 (charsOf!2633 (head!4816 tokens!456))))))))

(declare-fun b!2255408 () Bool)

(declare-fun res!964023 () Bool)

(assert (=> b!2255408 (=> (not res!964023) (not e!1443575))))

(assert (=> b!2255408 (= res!964023 (not call!135701))))

(declare-fun b!2255409 () Bool)

(assert (=> b!2255409 (= e!1443577 e!1443576)))

(declare-fun res!964022 () Bool)

(assert (=> b!2255409 (=> (not res!964022) (not e!1443576))))

(assert (=> b!2255409 (= res!964022 (not lt!838375))))

(assert (= (and d!668762 c!358537) b!2255398))

(assert (= (and d!668762 (not c!358537)) b!2255404))

(assert (= (and d!668762 c!358538) b!2255397))

(assert (= (and d!668762 (not c!358538)) b!2255406))

(assert (= (and b!2255406 c!358536) b!2255396))

(assert (= (and b!2255406 (not c!358536)) b!2255399))

(assert (= (and b!2255399 (not res!964018)) b!2255401))

(assert (= (and b!2255401 res!964016) b!2255408))

(assert (= (and b!2255408 res!964023) b!2255407))

(assert (= (and b!2255407 res!964019) b!2255400))

(assert (= (and b!2255401 (not res!964021)) b!2255409))

(assert (= (and b!2255409 res!964022) b!2255402))

(assert (= (and b!2255402 (not res!964020)) b!2255403))

(assert (= (and b!2255403 (not res!964017)) b!2255405))

(assert (= (or b!2255397 b!2255402 b!2255408) bm!135696))

(assert (=> b!2255400 m!2685547))

(declare-fun m!2686017 () Bool)

(assert (=> b!2255400 m!2686017))

(assert (=> b!2255404 m!2685547))

(assert (=> b!2255404 m!2686017))

(assert (=> b!2255404 m!2686017))

(declare-fun m!2686019 () Bool)

(assert (=> b!2255404 m!2686019))

(assert (=> b!2255404 m!2685547))

(declare-fun m!2686021 () Bool)

(assert (=> b!2255404 m!2686021))

(assert (=> b!2255404 m!2686019))

(assert (=> b!2255404 m!2686021))

(declare-fun m!2686023 () Bool)

(assert (=> b!2255404 m!2686023))

(assert (=> b!2255405 m!2685547))

(assert (=> b!2255405 m!2686017))

(assert (=> b!2255398 m!2685593))

(assert (=> bm!135696 m!2685547))

(declare-fun m!2686025 () Bool)

(assert (=> bm!135696 m!2686025))

(assert (=> b!2255407 m!2685547))

(assert (=> b!2255407 m!2686021))

(assert (=> b!2255407 m!2686021))

(declare-fun m!2686027 () Bool)

(assert (=> b!2255407 m!2686027))

(assert (=> b!2255403 m!2685547))

(assert (=> b!2255403 m!2686021))

(assert (=> b!2255403 m!2686021))

(assert (=> b!2255403 m!2686027))

(assert (=> d!668762 m!2685547))

(assert (=> d!668762 m!2686025))

(assert (=> d!668762 m!2685591))

(assert (=> b!2254922 d!668762))

(declare-fun d!668764 () Bool)

(assert (=> d!668764 (= (list!10281 (charsOf!2633 (head!4816 tokens!456))) (list!10283 (c!358444 (charsOf!2633 (head!4816 tokens!456)))))))

(declare-fun bs!455240 () Bool)

(assert (= bs!455240 d!668764))

(declare-fun m!2686029 () Bool)

(assert (=> bs!455240 m!2686029))

(assert (=> b!2254922 d!668764))

(assert (=> b!2254922 d!668672))

(assert (=> b!2254922 d!668676))

(declare-fun b!2255410 () Bool)

(declare-fun e!1443586 () Bool)

(declare-fun lt!838376 () Bool)

(assert (=> b!2255410 (= e!1443586 (not lt!838376))))

(declare-fun b!2255411 () Bool)

(declare-fun e!1443587 () Bool)

(declare-fun call!135702 () Bool)

(assert (=> b!2255411 (= e!1443587 (= lt!838376 call!135702))))

(declare-fun b!2255412 () Bool)

(declare-fun e!1443585 () Bool)

(assert (=> b!2255412 (= e!1443585 (nullable!1809 (regex!4245 otherR!12)))))

(declare-fun b!2255413 () Bool)

(declare-fun res!964026 () Bool)

(declare-fun e!1443584 () Bool)

(assert (=> b!2255413 (=> res!964026 e!1443584)))

(assert (=> b!2255413 (= res!964026 (not ((_ is ElementMatch!6593) (regex!4245 otherR!12))))))

(assert (=> b!2255413 (= e!1443586 e!1443584)))

(declare-fun b!2255414 () Bool)

(declare-fun e!1443582 () Bool)

(assert (=> b!2255414 (= e!1443582 (= (head!4817 otherP!12) (c!358445 (regex!4245 otherR!12))))))

(declare-fun bm!135697 () Bool)

(assert (=> bm!135697 (= call!135702 (isEmpty!15095 otherP!12))))

(declare-fun d!668766 () Bool)

(assert (=> d!668766 e!1443587))

(declare-fun c!358541 () Bool)

(assert (=> d!668766 (= c!358541 ((_ is EmptyExpr!6593) (regex!4245 otherR!12)))))

(assert (=> d!668766 (= lt!838376 e!1443585)))

(declare-fun c!358540 () Bool)

(assert (=> d!668766 (= c!358540 (isEmpty!15095 otherP!12))))

(assert (=> d!668766 (validRegex!2464 (regex!4245 otherR!12))))

(assert (=> d!668766 (= (matchR!2854 (regex!4245 otherR!12) otherP!12) lt!838376)))

(declare-fun b!2255415 () Bool)

(declare-fun res!964029 () Bool)

(assert (=> b!2255415 (=> res!964029 e!1443584)))

(assert (=> b!2255415 (= res!964029 e!1443582)))

(declare-fun res!964024 () Bool)

(assert (=> b!2255415 (=> (not res!964024) (not e!1443582))))

(assert (=> b!2255415 (= res!964024 lt!838376)))

(declare-fun b!2255416 () Bool)

(declare-fun e!1443583 () Bool)

(declare-fun e!1443588 () Bool)

(assert (=> b!2255416 (= e!1443583 e!1443588)))

(declare-fun res!964028 () Bool)

(assert (=> b!2255416 (=> res!964028 e!1443588)))

(assert (=> b!2255416 (= res!964028 call!135702)))

(declare-fun b!2255417 () Bool)

(declare-fun res!964025 () Bool)

(assert (=> b!2255417 (=> res!964025 e!1443588)))

(assert (=> b!2255417 (= res!964025 (not (isEmpty!15095 (tail!3252 otherP!12))))))

(declare-fun b!2255418 () Bool)

(assert (=> b!2255418 (= e!1443585 (matchR!2854 (derivativeStep!1472 (regex!4245 otherR!12) (head!4817 otherP!12)) (tail!3252 otherP!12)))))

(declare-fun b!2255419 () Bool)

(assert (=> b!2255419 (= e!1443588 (not (= (head!4817 otherP!12) (c!358445 (regex!4245 otherR!12)))))))

(declare-fun b!2255420 () Bool)

(assert (=> b!2255420 (= e!1443587 e!1443586)))

(declare-fun c!358539 () Bool)

(assert (=> b!2255420 (= c!358539 ((_ is EmptyLang!6593) (regex!4245 otherR!12)))))

(declare-fun b!2255421 () Bool)

(declare-fun res!964027 () Bool)

(assert (=> b!2255421 (=> (not res!964027) (not e!1443582))))

(assert (=> b!2255421 (= res!964027 (isEmpty!15095 (tail!3252 otherP!12)))))

(declare-fun b!2255422 () Bool)

(declare-fun res!964031 () Bool)

(assert (=> b!2255422 (=> (not res!964031) (not e!1443582))))

(assert (=> b!2255422 (= res!964031 (not call!135702))))

(declare-fun b!2255423 () Bool)

(assert (=> b!2255423 (= e!1443584 e!1443583)))

(declare-fun res!964030 () Bool)

(assert (=> b!2255423 (=> (not res!964030) (not e!1443583))))

(assert (=> b!2255423 (= res!964030 (not lt!838376))))

(assert (= (and d!668766 c!358540) b!2255412))

(assert (= (and d!668766 (not c!358540)) b!2255418))

(assert (= (and d!668766 c!358541) b!2255411))

(assert (= (and d!668766 (not c!358541)) b!2255420))

(assert (= (and b!2255420 c!358539) b!2255410))

(assert (= (and b!2255420 (not c!358539)) b!2255413))

(assert (= (and b!2255413 (not res!964026)) b!2255415))

(assert (= (and b!2255415 res!964024) b!2255422))

(assert (= (and b!2255422 res!964031) b!2255421))

(assert (= (and b!2255421 res!964027) b!2255414))

(assert (= (and b!2255415 (not res!964029)) b!2255423))

(assert (= (and b!2255423 res!964030) b!2255416))

(assert (= (and b!2255416 (not res!964028)) b!2255417))

(assert (= (and b!2255417 (not res!964025)) b!2255419))

(assert (= (or b!2255411 b!2255416 b!2255422) bm!135697))

(declare-fun m!2686031 () Bool)

(assert (=> b!2255414 m!2686031))

(assert (=> b!2255418 m!2686031))

(assert (=> b!2255418 m!2686031))

(declare-fun m!2686033 () Bool)

(assert (=> b!2255418 m!2686033))

(declare-fun m!2686035 () Bool)

(assert (=> b!2255418 m!2686035))

(assert (=> b!2255418 m!2686033))

(assert (=> b!2255418 m!2686035))

(declare-fun m!2686037 () Bool)

(assert (=> b!2255418 m!2686037))

(assert (=> b!2255419 m!2686031))

(assert (=> b!2255412 m!2685763))

(declare-fun m!2686039 () Bool)

(assert (=> bm!135697 m!2686039))

(assert (=> b!2255421 m!2686035))

(assert (=> b!2255421 m!2686035))

(declare-fun m!2686041 () Bool)

(assert (=> b!2255421 m!2686041))

(assert (=> b!2255417 m!2686035))

(assert (=> b!2255417 m!2686035))

(assert (=> b!2255417 m!2686041))

(assert (=> d!668766 m!2686039))

(assert (=> d!668766 m!2685551))

(assert (=> b!2254944 d!668766))

(declare-fun d!668768 () Bool)

(assert (=> d!668768 (not (matchR!2854 (regex!4245 otherR!12) otherP!12))))

(declare-fun lt!838381 () Unit!39662)

(declare-fun choose!13197 (LexerInterface!3842 List!26835 Rule!8290 List!26834 List!26834 List!26834 Rule!8290) Unit!39662)

(assert (=> d!668768 (= lt!838381 (choose!13197 thiss!16613 rules!1750 r!2363 lt!838215 input!1722 otherP!12 otherR!12))))

(assert (=> d!668768 (isPrefix!2235 lt!838215 input!1722)))

(assert (=> d!668768 (= (lemmaMaxPrefixOutputsMaxPrefix!272 thiss!16613 rules!1750 r!2363 lt!838215 input!1722 otherP!12 otherR!12) lt!838381)))

(declare-fun bs!455242 () Bool)

(assert (= bs!455242 d!668768))

(assert (=> bs!455242 m!2685573))

(declare-fun m!2686057 () Bool)

(assert (=> bs!455242 m!2686057))

(assert (=> bs!455242 m!2685585))

(assert (=> b!2254944 d!668768))

(declare-fun b!2255435 () Bool)

(declare-fun e!1443595 () Bool)

(assert (=> b!2255435 (= e!1443595 (>= (size!20933 input!1722) (size!20933 otherP!12)))))

(declare-fun b!2255433 () Bool)

(declare-fun res!964035 () Bool)

(declare-fun e!1443594 () Bool)

(assert (=> b!2255433 (=> (not res!964035) (not e!1443594))))

(assert (=> b!2255433 (= res!964035 (= (head!4817 otherP!12) (head!4817 input!1722)))))

(declare-fun b!2255434 () Bool)

(assert (=> b!2255434 (= e!1443594 (isPrefix!2235 (tail!3252 otherP!12) (tail!3252 input!1722)))))

(declare-fun d!668778 () Bool)

(assert (=> d!668778 e!1443595))

(declare-fun res!964034 () Bool)

(assert (=> d!668778 (=> res!964034 e!1443595)))

(declare-fun lt!838382 () Bool)

(assert (=> d!668778 (= res!964034 (not lt!838382))))

(declare-fun e!1443596 () Bool)

(assert (=> d!668778 (= lt!838382 e!1443596)))

(declare-fun res!964036 () Bool)

(assert (=> d!668778 (=> res!964036 e!1443596)))

(assert (=> d!668778 (= res!964036 ((_ is Nil!26740) otherP!12))))

(assert (=> d!668778 (= (isPrefix!2235 otherP!12 input!1722) lt!838382)))

(declare-fun b!2255432 () Bool)

(assert (=> b!2255432 (= e!1443596 e!1443594)))

(declare-fun res!964037 () Bool)

(assert (=> b!2255432 (=> (not res!964037) (not e!1443594))))

(assert (=> b!2255432 (= res!964037 (not ((_ is Nil!26740) input!1722)))))

(assert (= (and d!668778 (not res!964036)) b!2255432))

(assert (= (and b!2255432 res!964037) b!2255433))

(assert (= (and b!2255433 res!964035) b!2255434))

(assert (= (and d!668778 (not res!964034)) b!2255435))

(assert (=> b!2255435 m!2685643))

(assert (=> b!2255435 m!2685489))

(assert (=> b!2255433 m!2686031))

(assert (=> b!2255433 m!2685951))

(assert (=> b!2255434 m!2686035))

(assert (=> b!2255434 m!2685645))

(assert (=> b!2255434 m!2686035))

(assert (=> b!2255434 m!2685645))

(declare-fun m!2686059 () Bool)

(assert (=> b!2255434 m!2686059))

(assert (=> b!2254923 d!668778))

(declare-fun d!668780 () Bool)

(declare-fun res!964042 () Bool)

(declare-fun e!1443599 () Bool)

(assert (=> d!668780 (=> (not res!964042) (not e!1443599))))

(assert (=> d!668780 (= res!964042 (not (isEmpty!15095 (originalCharacters!5015 (h!32143 tokens!456)))))))

(assert (=> d!668780 (= (inv!36275 (h!32143 tokens!456)) e!1443599)))

(declare-fun b!2255440 () Bool)

(declare-fun res!964043 () Bool)

(assert (=> b!2255440 (=> (not res!964043) (not e!1443599))))

(assert (=> b!2255440 (= res!964043 (= (originalCharacters!5015 (h!32143 tokens!456)) (list!10281 (dynLambda!11614 (toChars!5846 (transformation!4245 (rule!6549 (h!32143 tokens!456)))) (value!134802 (h!32143 tokens!456))))))))

(declare-fun b!2255441 () Bool)

(assert (=> b!2255441 (= e!1443599 (= (size!20932 (h!32143 tokens!456)) (size!20933 (originalCharacters!5015 (h!32143 tokens!456)))))))

(assert (= (and d!668780 res!964042) b!2255440))

(assert (= (and b!2255440 res!964043) b!2255441))

(declare-fun b_lambda!72047 () Bool)

(assert (=> (not b_lambda!72047) (not b!2255440)))

(assert (=> b!2255440 t!201162))

(declare-fun b_and!176969 () Bool)

(assert (= b_and!176937 (and (=> t!201162 result!162918) b_and!176969)))

(assert (=> b!2255440 t!201164))

(declare-fun b_and!176971 () Bool)

(assert (= b_and!176939 (and (=> t!201164 result!162922) b_and!176971)))

(assert (=> b!2255440 t!201166))

(declare-fun b_and!176973 () Bool)

(assert (= b_and!176941 (and (=> t!201166 result!162924) b_and!176973)))

(assert (=> b!2255440 t!201168))

(declare-fun b_and!176975 () Bool)

(assert (= b_and!176943 (and (=> t!201168 result!162926) b_and!176975)))

(declare-fun m!2686061 () Bool)

(assert (=> d!668780 m!2686061))

(assert (=> b!2255440 m!2685655))

(assert (=> b!2255440 m!2685655))

(declare-fun m!2686063 () Bool)

(assert (=> b!2255440 m!2686063))

(declare-fun m!2686065 () Bool)

(assert (=> b!2255441 m!2686065))

(assert (=> b!2254943 d!668780))

(assert (=> b!2254946 d!668676))

(declare-fun d!668782 () Bool)

(declare-fun list!10285 (Conc!8639) List!26836)

(assert (=> d!668782 (= (list!10282 (_1!15650 lt!838211)) (list!10285 (c!358446 (_1!15650 lt!838211))))))

(declare-fun bs!455243 () Bool)

(assert (= bs!455243 d!668782))

(declare-fun m!2686067 () Bool)

(assert (=> bs!455243 m!2686067))

(assert (=> b!2254947 d!668782))

(declare-fun d!668784 () Bool)

(assert (=> d!668784 (= (list!10281 (_2!15650 lt!838211)) (list!10283 (c!358444 (_2!15650 lt!838211))))))

(declare-fun bs!455244 () Bool)

(assert (= bs!455244 d!668784))

(declare-fun m!2686069 () Bool)

(assert (=> bs!455244 m!2686069))

(assert (=> b!2254947 d!668784))

(declare-fun d!668786 () Bool)

(declare-fun e!1443618 () Bool)

(assert (=> d!668786 e!1443618))

(declare-fun res!964075 () Bool)

(assert (=> d!668786 (=> (not res!964075) (not e!1443618))))

(declare-fun e!1443619 () Bool)

(assert (=> d!668786 (= res!964075 e!1443619)))

(declare-fun c!358547 () Bool)

(declare-fun lt!838404 () tuple2!26280)

(declare-fun size!20936 (BalanceConc!17006) Int)

(assert (=> d!668786 (= c!358547 (> (size!20936 (_1!15650 lt!838404)) 0))))

(declare-fun lexTailRecV2!730 (LexerInterface!3842 List!26835 BalanceConc!17004 BalanceConc!17004 BalanceConc!17004 BalanceConc!17006) tuple2!26280)

(assert (=> d!668786 (= lt!838404 (lexTailRecV2!730 thiss!16613 rules!1750 (seqFromList!2949 input!1722) (BalanceConc!17005 Empty!8638) (seqFromList!2949 input!1722) (BalanceConc!17007 Empty!8639)))))

(assert (=> d!668786 (= (lex!1681 thiss!16613 rules!1750 (seqFromList!2949 input!1722)) lt!838404)))

(declare-fun b!2255483 () Bool)

(declare-fun lexList!1055 (LexerInterface!3842 List!26835 List!26834) tuple2!26282)

(assert (=> b!2255483 (= e!1443618 (= (list!10281 (_2!15650 lt!838404)) (_2!15651 (lexList!1055 thiss!16613 rules!1750 (list!10281 (seqFromList!2949 input!1722))))))))

(declare-fun b!2255484 () Bool)

(assert (=> b!2255484 (= e!1443619 (= (_2!15650 lt!838404) (seqFromList!2949 input!1722)))))

(declare-fun b!2255485 () Bool)

(declare-fun res!964076 () Bool)

(assert (=> b!2255485 (=> (not res!964076) (not e!1443618))))

(assert (=> b!2255485 (= res!964076 (= (list!10282 (_1!15650 lt!838404)) (_1!15651 (lexList!1055 thiss!16613 rules!1750 (list!10281 (seqFromList!2949 input!1722))))))))

(declare-fun b!2255486 () Bool)

(declare-fun e!1443620 () Bool)

(declare-fun isEmpty!15097 (BalanceConc!17006) Bool)

(assert (=> b!2255486 (= e!1443620 (not (isEmpty!15097 (_1!15650 lt!838404))))))

(declare-fun b!2255487 () Bool)

(assert (=> b!2255487 (= e!1443619 e!1443620)))

(declare-fun res!964077 () Bool)

(assert (=> b!2255487 (= res!964077 (< (size!20934 (_2!15650 lt!838404)) (size!20934 (seqFromList!2949 input!1722))))))

(assert (=> b!2255487 (=> (not res!964077) (not e!1443620))))

(assert (= (and d!668786 c!358547) b!2255487))

(assert (= (and d!668786 (not c!358547)) b!2255484))

(assert (= (and b!2255487 res!964077) b!2255486))

(assert (= (and d!668786 res!964075) b!2255485))

(assert (= (and b!2255485 res!964076) b!2255483))

(declare-fun m!2686109 () Bool)

(assert (=> b!2255486 m!2686109))

(declare-fun m!2686111 () Bool)

(assert (=> d!668786 m!2686111))

(assert (=> d!668786 m!2685525))

(assert (=> d!668786 m!2685525))

(declare-fun m!2686113 () Bool)

(assert (=> d!668786 m!2686113))

(declare-fun m!2686115 () Bool)

(assert (=> b!2255485 m!2686115))

(assert (=> b!2255485 m!2685525))

(declare-fun m!2686117 () Bool)

(assert (=> b!2255485 m!2686117))

(assert (=> b!2255485 m!2686117))

(declare-fun m!2686119 () Bool)

(assert (=> b!2255485 m!2686119))

(declare-fun m!2686121 () Bool)

(assert (=> b!2255483 m!2686121))

(assert (=> b!2255483 m!2685525))

(assert (=> b!2255483 m!2686117))

(assert (=> b!2255483 m!2686117))

(assert (=> b!2255483 m!2686119))

(declare-fun m!2686123 () Bool)

(assert (=> b!2255487 m!2686123))

(assert (=> b!2255487 m!2685525))

(declare-fun m!2686125 () Bool)

(assert (=> b!2255487 m!2686125))

(assert (=> b!2254947 d!668786))

(declare-fun d!668798 () Bool)

(assert (=> d!668798 (= (seqFromList!2949 input!1722) (fromListB!1321 input!1722))))

(declare-fun bs!455248 () Bool)

(assert (= bs!455248 d!668798))

(declare-fun m!2686127 () Bool)

(assert (=> bs!455248 m!2686127))

(assert (=> b!2254947 d!668798))

(declare-fun d!668800 () Bool)

(declare-fun lt!838405 () Bool)

(assert (=> d!668800 (= lt!838405 (select (content!3566 rules!1750) r!2363))))

(declare-fun e!1443622 () Bool)

(assert (=> d!668800 (= lt!838405 e!1443622)))

(declare-fun res!964078 () Bool)

(assert (=> d!668800 (=> (not res!964078) (not e!1443622))))

(assert (=> d!668800 (= res!964078 ((_ is Cons!26741) rules!1750))))

(assert (=> d!668800 (= (contains!4597 rules!1750 r!2363) lt!838405)))

(declare-fun b!2255488 () Bool)

(declare-fun e!1443621 () Bool)

(assert (=> b!2255488 (= e!1443622 e!1443621)))

(declare-fun res!964079 () Bool)

(assert (=> b!2255488 (=> res!964079 e!1443621)))

(assert (=> b!2255488 (= res!964079 (= (h!32142 rules!1750) r!2363))))

(declare-fun b!2255489 () Bool)

(assert (=> b!2255489 (= e!1443621 (contains!4597 (t!201159 rules!1750) r!2363))))

(assert (= (and d!668800 res!964078) b!2255488))

(assert (= (and b!2255488 (not res!964079)) b!2255489))

(assert (=> d!668800 m!2685833))

(declare-fun m!2686129 () Bool)

(assert (=> d!668800 m!2686129))

(declare-fun m!2686131 () Bool)

(assert (=> b!2255489 m!2686131))

(assert (=> b!2254924 d!668800))

(declare-fun b!2255500 () Bool)

(declare-fun b_free!66285 () Bool)

(declare-fun b_next!66989 () Bool)

(assert (=> b!2255500 (= b_free!66285 (not b_next!66989))))

(declare-fun t!201226 () Bool)

(declare-fun tb!133711 () Bool)

(assert (=> (and b!2255500 (= (toValue!5987 (transformation!4245 (h!32142 (t!201159 rules!1750)))) (toValue!5987 (transformation!4245 r!2363))) t!201226) tb!133711))

(declare-fun result!162992 () Bool)

(assert (= result!162992 result!162956))

(assert (=> d!668736 t!201226))

(assert (=> d!668746 t!201226))

(declare-fun b_and!176977 () Bool)

(declare-fun tp!712719 () Bool)

(assert (=> b!2255500 (= tp!712719 (and (=> t!201226 result!162992) b_and!176977))))

(declare-fun b_free!66287 () Bool)

(declare-fun b_next!66991 () Bool)

(assert (=> b!2255500 (= b_free!66287 (not b_next!66991))))

(declare-fun t!201228 () Bool)

(declare-fun tb!133713 () Bool)

(assert (=> (and b!2255500 (= (toChars!5846 (transformation!4245 (h!32142 (t!201159 rules!1750)))) (toChars!5846 (transformation!4245 (rule!6549 (h!32143 tokens!456))))) t!201228) tb!133713))

(declare-fun result!162994 () Bool)

(assert (= result!162994 result!162918))

(assert (=> d!668622 t!201228))

(declare-fun t!201230 () Bool)

(declare-fun tb!133715 () Bool)

(assert (=> (and b!2255500 (= (toChars!5846 (transformation!4245 (h!32142 (t!201159 rules!1750)))) (toChars!5846 (transformation!4245 (rule!6549 (head!4816 tokens!456))))) t!201230) tb!133715))

(declare-fun result!162996 () Bool)

(assert (= result!162996 result!162928))

(assert (=> d!668672 t!201230))

(declare-fun tb!133717 () Bool)

(declare-fun t!201232 () Bool)

(assert (=> (and b!2255500 (= (toChars!5846 (transformation!4245 (h!32142 (t!201159 rules!1750)))) (toChars!5846 (transformation!4245 r!2363))) t!201232) tb!133717))

(declare-fun result!162998 () Bool)

(assert (= result!162998 result!162974))

(assert (=> d!668746 t!201232))

(assert (=> b!2255440 t!201228))

(declare-fun tp!712717 () Bool)

(declare-fun b_and!176979 () Bool)

(assert (=> b!2255500 (= tp!712717 (and (=> t!201228 result!162994) (=> t!201230 result!162996) (=> t!201232 result!162998) b_and!176979))))

(declare-fun e!1443633 () Bool)

(assert (=> b!2255500 (= e!1443633 (and tp!712719 tp!712717))))

(declare-fun e!1443631 () Bool)

(declare-fun tp!712716 () Bool)

(declare-fun b!2255499 () Bool)

(assert (=> b!2255499 (= e!1443631 (and tp!712716 (inv!36271 (tag!4735 (h!32142 (t!201159 rules!1750)))) (inv!36274 (transformation!4245 (h!32142 (t!201159 rules!1750)))) e!1443633))))

(declare-fun b!2255498 () Bool)

(declare-fun e!1443632 () Bool)

(declare-fun tp!712718 () Bool)

(assert (=> b!2255498 (= e!1443632 (and e!1443631 tp!712718))))

(assert (=> b!2254917 (= tp!712682 e!1443632)))

(assert (= b!2255499 b!2255500))

(assert (= b!2255498 b!2255499))

(assert (= (and b!2254917 ((_ is Cons!26741) (t!201159 rules!1750))) b!2255498))

(declare-fun m!2686133 () Bool)

(assert (=> b!2255499 m!2686133))

(declare-fun m!2686135 () Bool)

(assert (=> b!2255499 m!2686135))

(declare-fun b!2255511 () Bool)

(declare-fun e!1443637 () Bool)

(assert (=> b!2255511 (= e!1443637 tp_is_empty!10407)))

(declare-fun b!2255513 () Bool)

(declare-fun tp!712732 () Bool)

(assert (=> b!2255513 (= e!1443637 tp!712732)))

(assert (=> b!2254939 (= tp!712696 e!1443637)))

(declare-fun b!2255514 () Bool)

(declare-fun tp!712733 () Bool)

(declare-fun tp!712734 () Bool)

(assert (=> b!2255514 (= e!1443637 (and tp!712733 tp!712734))))

(declare-fun b!2255512 () Bool)

(declare-fun tp!712730 () Bool)

(declare-fun tp!712731 () Bool)

(assert (=> b!2255512 (= e!1443637 (and tp!712730 tp!712731))))

(assert (= (and b!2254939 ((_ is ElementMatch!6593) (regex!4245 r!2363))) b!2255511))

(assert (= (and b!2254939 ((_ is Concat!11001) (regex!4245 r!2363))) b!2255512))

(assert (= (and b!2254939 ((_ is Star!6593) (regex!4245 r!2363))) b!2255513))

(assert (= (and b!2254939 ((_ is Union!6593) (regex!4245 r!2363))) b!2255514))

(declare-fun b!2255519 () Bool)

(declare-fun e!1443640 () Bool)

(declare-fun tp!712737 () Bool)

(assert (=> b!2255519 (= e!1443640 (and tp_is_empty!10407 tp!712737))))

(assert (=> b!2254937 (= tp!712692 e!1443640)))

(assert (= (and b!2254937 ((_ is Cons!26740) (originalCharacters!5015 (h!32143 tokens!456)))) b!2255519))

(declare-fun b!2255520 () Bool)

(declare-fun e!1443641 () Bool)

(declare-fun tp!712738 () Bool)

(assert (=> b!2255520 (= e!1443641 (and tp_is_empty!10407 tp!712738))))

(assert (=> b!2254921 (= tp!712684 e!1443641)))

(assert (= (and b!2254921 ((_ is Cons!26740) (t!201158 input!1722))) b!2255520))

(declare-fun b!2255534 () Bool)

(declare-fun b_free!66289 () Bool)

(declare-fun b_next!66993 () Bool)

(assert (=> b!2255534 (= b_free!66289 (not b_next!66993))))

(declare-fun tb!133719 () Bool)

(declare-fun t!201234 () Bool)

(assert (=> (and b!2255534 (= (toValue!5987 (transformation!4245 (rule!6549 (h!32143 (t!201160 tokens!456))))) (toValue!5987 (transformation!4245 r!2363))) t!201234) tb!133719))

(declare-fun result!163006 () Bool)

(assert (= result!163006 result!162956))

(assert (=> d!668736 t!201234))

(assert (=> d!668746 t!201234))

(declare-fun tp!712751 () Bool)

(declare-fun b_and!176981 () Bool)

(assert (=> b!2255534 (= tp!712751 (and (=> t!201234 result!163006) b_and!176981))))

(declare-fun b_free!66291 () Bool)

(declare-fun b_next!66995 () Bool)

(assert (=> b!2255534 (= b_free!66291 (not b_next!66995))))

(declare-fun t!201236 () Bool)

(declare-fun tb!133721 () Bool)

(assert (=> (and b!2255534 (= (toChars!5846 (transformation!4245 (rule!6549 (h!32143 (t!201160 tokens!456))))) (toChars!5846 (transformation!4245 (rule!6549 (h!32143 tokens!456))))) t!201236) tb!133721))

(declare-fun result!163008 () Bool)

(assert (= result!163008 result!162918))

(assert (=> d!668622 t!201236))

(declare-fun t!201238 () Bool)

(declare-fun tb!133723 () Bool)

(assert (=> (and b!2255534 (= (toChars!5846 (transformation!4245 (rule!6549 (h!32143 (t!201160 tokens!456))))) (toChars!5846 (transformation!4245 (rule!6549 (head!4816 tokens!456))))) t!201238) tb!133723))

(declare-fun result!163010 () Bool)

(assert (= result!163010 result!162928))

(assert (=> d!668672 t!201238))

(declare-fun t!201240 () Bool)

(declare-fun tb!133725 () Bool)

(assert (=> (and b!2255534 (= (toChars!5846 (transformation!4245 (rule!6549 (h!32143 (t!201160 tokens!456))))) (toChars!5846 (transformation!4245 r!2363))) t!201240) tb!133725))

(declare-fun result!163012 () Bool)

(assert (= result!163012 result!162974))

(assert (=> d!668746 t!201240))

(assert (=> b!2255440 t!201236))

(declare-fun b_and!176983 () Bool)

(declare-fun tp!712752 () Bool)

(assert (=> b!2255534 (= tp!712752 (and (=> t!201236 result!163008) (=> t!201238 result!163010) (=> t!201240 result!163012) b_and!176983))))

(declare-fun tp!712749 () Bool)

(declare-fun e!1443655 () Bool)

(declare-fun b!2255531 () Bool)

(declare-fun e!1443658 () Bool)

(assert (=> b!2255531 (= e!1443655 (and (inv!36275 (h!32143 (t!201160 tokens!456))) e!1443658 tp!712749))))

(assert (=> b!2254943 (= tp!712690 e!1443655)))

(declare-fun e!1443657 () Bool)

(declare-fun b!2255532 () Bool)

(declare-fun tp!712753 () Bool)

(assert (=> b!2255532 (= e!1443658 (and (inv!21 (value!134802 (h!32143 (t!201160 tokens!456)))) e!1443657 tp!712753))))

(declare-fun b!2255533 () Bool)

(declare-fun tp!712750 () Bool)

(declare-fun e!1443654 () Bool)

(assert (=> b!2255533 (= e!1443657 (and tp!712750 (inv!36271 (tag!4735 (rule!6549 (h!32143 (t!201160 tokens!456))))) (inv!36274 (transformation!4245 (rule!6549 (h!32143 (t!201160 tokens!456))))) e!1443654))))

(assert (=> b!2255534 (= e!1443654 (and tp!712751 tp!712752))))

(assert (= b!2255533 b!2255534))

(assert (= b!2255532 b!2255533))

(assert (= b!2255531 b!2255532))

(assert (= (and b!2254943 ((_ is Cons!26742) (t!201160 tokens!456))) b!2255531))

(declare-fun m!2686137 () Bool)

(assert (=> b!2255531 m!2686137))

(declare-fun m!2686139 () Bool)

(assert (=> b!2255532 m!2686139))

(declare-fun m!2686141 () Bool)

(assert (=> b!2255533 m!2686141))

(declare-fun m!2686143 () Bool)

(assert (=> b!2255533 m!2686143))

(declare-fun b!2255535 () Bool)

(declare-fun e!1443660 () Bool)

(assert (=> b!2255535 (= e!1443660 tp_is_empty!10407)))

(declare-fun b!2255537 () Bool)

(declare-fun tp!712756 () Bool)

(assert (=> b!2255537 (= e!1443660 tp!712756)))

(assert (=> b!2254914 (= tp!712680 e!1443660)))

(declare-fun b!2255538 () Bool)

(declare-fun tp!712757 () Bool)

(declare-fun tp!712758 () Bool)

(assert (=> b!2255538 (= e!1443660 (and tp!712757 tp!712758))))

(declare-fun b!2255536 () Bool)

(declare-fun tp!712754 () Bool)

(declare-fun tp!712755 () Bool)

(assert (=> b!2255536 (= e!1443660 (and tp!712754 tp!712755))))

(assert (= (and b!2254914 ((_ is ElementMatch!6593) (regex!4245 (h!32142 rules!1750)))) b!2255535))

(assert (= (and b!2254914 ((_ is Concat!11001) (regex!4245 (h!32142 rules!1750)))) b!2255536))

(assert (= (and b!2254914 ((_ is Star!6593) (regex!4245 (h!32142 rules!1750)))) b!2255537))

(assert (= (and b!2254914 ((_ is Union!6593) (regex!4245 (h!32142 rules!1750)))) b!2255538))

(declare-fun b!2255539 () Bool)

(declare-fun e!1443661 () Bool)

(declare-fun tp!712759 () Bool)

(assert (=> b!2255539 (= e!1443661 (and tp_is_empty!10407 tp!712759))))

(assert (=> b!2254925 (= tp!712695 e!1443661)))

(assert (= (and b!2254925 ((_ is Cons!26740) (t!201158 otherP!12))) b!2255539))

(declare-fun b!2255540 () Bool)

(declare-fun e!1443662 () Bool)

(assert (=> b!2255540 (= e!1443662 tp_is_empty!10407)))

(declare-fun b!2255542 () Bool)

(declare-fun tp!712762 () Bool)

(assert (=> b!2255542 (= e!1443662 tp!712762)))

(assert (=> b!2254936 (= tp!712697 e!1443662)))

(declare-fun b!2255543 () Bool)

(declare-fun tp!712763 () Bool)

(declare-fun tp!712764 () Bool)

(assert (=> b!2255543 (= e!1443662 (and tp!712763 tp!712764))))

(declare-fun b!2255541 () Bool)

(declare-fun tp!712760 () Bool)

(declare-fun tp!712761 () Bool)

(assert (=> b!2255541 (= e!1443662 (and tp!712760 tp!712761))))

(assert (= (and b!2254936 ((_ is ElementMatch!6593) (regex!4245 (rule!6549 (h!32143 tokens!456))))) b!2255540))

(assert (= (and b!2254936 ((_ is Concat!11001) (regex!4245 (rule!6549 (h!32143 tokens!456))))) b!2255541))

(assert (= (and b!2254936 ((_ is Star!6593) (regex!4245 (rule!6549 (h!32143 tokens!456))))) b!2255542))

(assert (= (and b!2254936 ((_ is Union!6593) (regex!4245 (rule!6549 (h!32143 tokens!456))))) b!2255543))

(declare-fun b!2255544 () Bool)

(declare-fun e!1443663 () Bool)

(declare-fun tp!712765 () Bool)

(assert (=> b!2255544 (= e!1443663 (and tp_is_empty!10407 tp!712765))))

(assert (=> b!2254915 (= tp!712693 e!1443663)))

(assert (= (and b!2254915 ((_ is Cons!26740) (t!201158 suffix!886))) b!2255544))

(declare-fun b!2255545 () Bool)

(declare-fun e!1443664 () Bool)

(assert (=> b!2255545 (= e!1443664 tp_is_empty!10407)))

(declare-fun b!2255547 () Bool)

(declare-fun tp!712768 () Bool)

(assert (=> b!2255547 (= e!1443664 tp!712768)))

(assert (=> b!2254935 (= tp!712686 e!1443664)))

(declare-fun b!2255548 () Bool)

(declare-fun tp!712769 () Bool)

(declare-fun tp!712770 () Bool)

(assert (=> b!2255548 (= e!1443664 (and tp!712769 tp!712770))))

(declare-fun b!2255546 () Bool)

(declare-fun tp!712766 () Bool)

(declare-fun tp!712767 () Bool)

(assert (=> b!2255546 (= e!1443664 (and tp!712766 tp!712767))))

(assert (= (and b!2254935 ((_ is ElementMatch!6593) (regex!4245 otherR!12))) b!2255545))

(assert (= (and b!2254935 ((_ is Concat!11001) (regex!4245 otherR!12))) b!2255546))

(assert (= (and b!2254935 ((_ is Star!6593) (regex!4245 otherR!12))) b!2255547))

(assert (= (and b!2254935 ((_ is Union!6593) (regex!4245 otherR!12))) b!2255548))

(declare-fun b_lambda!72049 () Bool)

(assert (= b_lambda!72035 (or (and b!2255500 b_free!66285 (= (toValue!5987 (transformation!4245 (h!32142 (t!201159 rules!1750)))) (toValue!5987 (transformation!4245 r!2363)))) (and b!2254928 b_free!66281) (and b!2254941 b_free!66273 (= (toValue!5987 (transformation!4245 (h!32142 rules!1750))) (toValue!5987 (transformation!4245 r!2363)))) (and b!2255534 b_free!66289 (= (toValue!5987 (transformation!4245 (rule!6549 (h!32143 (t!201160 tokens!456))))) (toValue!5987 (transformation!4245 r!2363)))) (and b!2254929 b_free!66269 (= (toValue!5987 (transformation!4245 otherR!12)) (toValue!5987 (transformation!4245 r!2363)))) (and b!2254945 b_free!66277 (= (toValue!5987 (transformation!4245 (rule!6549 (h!32143 tokens!456)))) (toValue!5987 (transformation!4245 r!2363)))) b_lambda!72049)))

(declare-fun b_lambda!72051 () Bool)

(assert (= b_lambda!72041 (or (and b!2255500 b_free!66285 (= (toValue!5987 (transformation!4245 (h!32142 (t!201159 rules!1750)))) (toValue!5987 (transformation!4245 r!2363)))) (and b!2254928 b_free!66281) (and b!2254941 b_free!66273 (= (toValue!5987 (transformation!4245 (h!32142 rules!1750))) (toValue!5987 (transformation!4245 r!2363)))) (and b!2255534 b_free!66289 (= (toValue!5987 (transformation!4245 (rule!6549 (h!32143 (t!201160 tokens!456))))) (toValue!5987 (transformation!4245 r!2363)))) (and b!2254929 b_free!66269 (= (toValue!5987 (transformation!4245 otherR!12)) (toValue!5987 (transformation!4245 r!2363)))) (and b!2254945 b_free!66277 (= (toValue!5987 (transformation!4245 (rule!6549 (h!32143 tokens!456)))) (toValue!5987 (transformation!4245 r!2363)))) b_lambda!72051)))

(declare-fun b_lambda!72053 () Bool)

(assert (= b_lambda!72039 (or (and b!2254945 b_free!66279 (= (toChars!5846 (transformation!4245 (rule!6549 (h!32143 tokens!456)))) (toChars!5846 (transformation!4245 r!2363)))) (and b!2254928 b_free!66283) (and b!2255500 b_free!66287 (= (toChars!5846 (transformation!4245 (h!32142 (t!201159 rules!1750)))) (toChars!5846 (transformation!4245 r!2363)))) (and b!2254929 b_free!66271 (= (toChars!5846 (transformation!4245 otherR!12)) (toChars!5846 (transformation!4245 r!2363)))) (and b!2254941 b_free!66275 (= (toChars!5846 (transformation!4245 (h!32142 rules!1750))) (toChars!5846 (transformation!4245 r!2363)))) (and b!2255534 b_free!66291 (= (toChars!5846 (transformation!4245 (rule!6549 (h!32143 (t!201160 tokens!456))))) (toChars!5846 (transformation!4245 r!2363)))) b_lambda!72053)))

(declare-fun b_lambda!72055 () Bool)

(assert (= b_lambda!72047 (or (and b!2254941 b_free!66275 (= (toChars!5846 (transformation!4245 (h!32142 rules!1750))) (toChars!5846 (transformation!4245 (rule!6549 (h!32143 tokens!456)))))) (and b!2255500 b_free!66287 (= (toChars!5846 (transformation!4245 (h!32142 (t!201159 rules!1750)))) (toChars!5846 (transformation!4245 (rule!6549 (h!32143 tokens!456)))))) (and b!2254929 b_free!66271 (= (toChars!5846 (transformation!4245 otherR!12)) (toChars!5846 (transformation!4245 (rule!6549 (h!32143 tokens!456)))))) (and b!2254945 b_free!66279) (and b!2254928 b_free!66283 (= (toChars!5846 (transformation!4245 r!2363)) (toChars!5846 (transformation!4245 (rule!6549 (h!32143 tokens!456)))))) (and b!2255534 b_free!66291 (= (toChars!5846 (transformation!4245 (rule!6549 (h!32143 (t!201160 tokens!456))))) (toChars!5846 (transformation!4245 (rule!6549 (h!32143 tokens!456)))))) b_lambda!72055)))

(declare-fun b_lambda!72057 () Bool)

(assert (= b_lambda!72025 (or (and b!2254941 b_free!66275 (= (toChars!5846 (transformation!4245 (h!32142 rules!1750))) (toChars!5846 (transformation!4245 (rule!6549 (h!32143 tokens!456)))))) (and b!2255500 b_free!66287 (= (toChars!5846 (transformation!4245 (h!32142 (t!201159 rules!1750)))) (toChars!5846 (transformation!4245 (rule!6549 (h!32143 tokens!456)))))) (and b!2254929 b_free!66271 (= (toChars!5846 (transformation!4245 otherR!12)) (toChars!5846 (transformation!4245 (rule!6549 (h!32143 tokens!456)))))) (and b!2254945 b_free!66279) (and b!2254928 b_free!66283 (= (toChars!5846 (transformation!4245 r!2363)) (toChars!5846 (transformation!4245 (rule!6549 (h!32143 tokens!456)))))) (and b!2255534 b_free!66291 (= (toChars!5846 (transformation!4245 (rule!6549 (h!32143 (t!201160 tokens!456))))) (toChars!5846 (transformation!4245 (rule!6549 (h!32143 tokens!456)))))) b_lambda!72057)))

(check-sat (not d!668784) (not b!2255255) (not b_lambda!72027) (not d!668800) b_and!176945 (not b!2255278) (not b!2255404) (not d!668654) (not b!2255405) (not tb!133679) (not b!2254969) (not b!2255513) (not d!668708) (not b!2255487) (not d!668714) (not b!2255331) (not b_next!66985) (not b_next!66973) (not b!2255519) (not d!668716) (not b_next!66983) (not bm!135696) (not b!2255330) (not b!2255440) (not d!668764) tp_is_empty!10407 (not b!2255009) (not b!2255182) (not d!668616) (not b!2255400) (not d!668786) (not tb!133695) (not b!2255544) (not b!2254972) (not tb!133647) (not b!2255537) (not b!2255499) (not d!668612) (not b!2255104) (not b!2255489) (not b!2255332) (not b_lambda!72057) (not d!668666) (not b!2255260) (not b_next!66981) (not d!668598) (not b_lambda!72051) (not b!2255532) (not b!2255434) (not b!2255110) b_and!176971 (not d!668618) (not b!2255366) (not b!2255543) (not d!668662) (not b!2255347) (not d!668620) (not d!668686) (not b!2254970) (not b!2255435) (not b!2255261) (not b!2255407) b_and!176983 (not b!2255107) (not b!2254983) (not bm!135697) (not b!2254992) (not b!2255483) (not b_next!66975) b_and!176977 (not b!2255257) (not d!668684) (not b!2255421) (not d!668798) (not b_next!66977) (not bm!135693) (not b!2255367) (not b!2255542) (not b!2255346) (not b!2255262) (not b!2255536) (not d!668664) b_and!176975 (not b!2255498) (not b!2254984) (not b!2255345) (not b!2255106) (not b!2255417) (not b!2255194) (not d!668742) (not b!2255403) (not d!668596) (not b!2255520) (not b!2255108) (not b!2254990) b_and!176949 b_and!176979 (not d!668672) (not b!2255333) (not b!2255184) (not b!2255512) (not b!2255441) (not b!2255398) (not b!2255539) (not bm!135689) (not b_lambda!72053) (not b!2255267) (not b!2254982) (not b_next!66989) (not b!2255547) (not b!2255533) (not d!668628) (not b!2255336) (not tb!133655) (not b!2255195) (not b!2255155) (not d!668762) (not b!2254957) (not bm!135681) (not d!668746) (not b!2255329) (not b!2255531) (not b_next!66979) (not b_lambda!72049) (not d!668722) (not b!2255365) (not d!668614) (not d!668766) (not b!2255178) (not d!668680) b_and!176951 (not b_next!66987) (not b!2255486) b_and!176969 (not b!2255334) (not b!2255485) (not b!2255419) (not d!668782) (not b!2255418) (not b_next!66991) (not b!2255264) (not d!668780) (not b_next!66993) b_and!176973 (not b!2255433) (not b!2255548) (not b!2255546) (not b_lambda!72055) (not b!2255538) (not b!2255328) (not bm!135688) (not d!668768) (not b!2255103) (not b!2255196) (not d!668706) (not b!2255414) (not b!2255102) b_and!176947 (not b!2255105) (not b!2255015) (not b!2255002) (not b!2255541) (not d!668720) (not b!2255003) (not b!2254953) (not b_next!66995) b_and!176981 (not d!668622) (not b!2255412) (not d!668602) (not b!2255275) (not b!2255514) (not d!668668) (not b!2255395))
(check-sat b_and!176945 (not b_next!66981) b_and!176971 b_and!176983 (not b_next!66975) b_and!176977 (not b_next!66977) b_and!176975 (not b_next!66989) (not b_next!66979) b_and!176973 b_and!176947 (not b_next!66995) b_and!176981 (not b_next!66985) (not b_next!66973) (not b_next!66983) b_and!176949 b_and!176979 b_and!176951 (not b_next!66987) b_and!176969 (not b_next!66991) (not b_next!66993))
