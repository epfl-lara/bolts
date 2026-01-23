; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!224380 () Bool)

(assert start!224380)

(declare-fun b!2287533 () Bool)

(declare-fun b_free!68589 () Bool)

(declare-fun b_next!69293 () Bool)

(assert (=> b!2287533 (= b_free!68589 (not b_next!69293))))

(declare-fun tp!725196 () Bool)

(declare-fun b_and!181265 () Bool)

(assert (=> b!2287533 (= tp!725196 b_and!181265)))

(declare-fun b_free!68591 () Bool)

(declare-fun b_next!69295 () Bool)

(assert (=> b!2287533 (= b_free!68591 (not b_next!69295))))

(declare-fun tp!725201 () Bool)

(declare-fun b_and!181267 () Bool)

(assert (=> b!2287533 (= tp!725201 b_and!181267)))

(declare-fun b!2287540 () Bool)

(declare-fun b_free!68593 () Bool)

(declare-fun b_next!69297 () Bool)

(assert (=> b!2287540 (= b_free!68593 (not b_next!69297))))

(declare-fun tp!725194 () Bool)

(declare-fun b_and!181269 () Bool)

(assert (=> b!2287540 (= tp!725194 b_and!181269)))

(declare-fun b_free!68595 () Bool)

(declare-fun b_next!69299 () Bool)

(assert (=> b!2287540 (= b_free!68595 (not b_next!69299))))

(declare-fun tp!725203 () Bool)

(declare-fun b_and!181271 () Bool)

(assert (=> b!2287540 (= tp!725203 b_and!181271)))

(declare-fun b!2287546 () Bool)

(declare-fun b_free!68597 () Bool)

(declare-fun b_next!69301 () Bool)

(assert (=> b!2287546 (= b_free!68597 (not b_next!69301))))

(declare-fun tp!725189 () Bool)

(declare-fun b_and!181273 () Bool)

(assert (=> b!2287546 (= tp!725189 b_and!181273)))

(declare-fun b_free!68599 () Bool)

(declare-fun b_next!69303 () Bool)

(assert (=> b!2287546 (= b_free!68599 (not b_next!69303))))

(declare-fun tp!725191 () Bool)

(declare-fun b_and!181275 () Bool)

(assert (=> b!2287546 (= tp!725191 b_and!181275)))

(declare-fun b!2287519 () Bool)

(declare-fun b_free!68601 () Bool)

(declare-fun b_next!69305 () Bool)

(assert (=> b!2287519 (= b_free!68601 (not b_next!69305))))

(declare-fun tp!725193 () Bool)

(declare-fun b_and!181277 () Bool)

(assert (=> b!2287519 (= tp!725193 b_and!181277)))

(declare-fun b_free!68603 () Bool)

(declare-fun b_next!69307 () Bool)

(assert (=> b!2287519 (= b_free!68603 (not b_next!69307))))

(declare-fun tp!725199 () Bool)

(declare-fun b_and!181279 () Bool)

(assert (=> b!2287519 (= tp!725199 b_and!181279)))

(declare-fun b!2287513 () Bool)

(declare-fun res!977917 () Bool)

(declare-fun e!1465595 () Bool)

(assert (=> b!2287513 (=> (not res!977917) (not e!1465595))))

(declare-datatypes ((List!27315 0))(
  ( (Nil!27221) (Cons!27221 (h!32622 (_ BitVec 16)) (t!204271 List!27315)) )
))
(declare-datatypes ((TokenValue!4515 0))(
  ( (FloatLiteralValue!9030 (text!32050 List!27315)) (TokenValueExt!4514 (__x!18090 Int)) (Broken!22575 (value!137854 List!27315)) (Object!4608) (End!4515) (Def!4515) (Underscore!4515) (Match!4515) (Else!4515) (Error!4515) (Case!4515) (If!4515) (Extends!4515) (Abstract!4515) (Class!4515) (Val!4515) (DelimiterValue!9030 (del!4575 List!27315)) (KeywordValue!4521 (value!137855 List!27315)) (CommentValue!9030 (value!137856 List!27315)) (WhitespaceValue!9030 (value!137857 List!27315)) (IndentationValue!4515 (value!137858 List!27315)) (String!29678) (Int32!4515) (Broken!22576 (value!137859 List!27315)) (Boolean!4516) (Unit!40121) (OperatorValue!4518 (op!4575 List!27315)) (IdentifierValue!9030 (value!137860 List!27315)) (IdentifierValue!9031 (value!137861 List!27315)) (WhitespaceValue!9031 (value!137862 List!27315)) (True!9030) (False!9030) (Broken!22577 (value!137863 List!27315)) (Broken!22578 (value!137864 List!27315)) (True!9031) (RightBrace!4515) (RightBracket!4515) (Colon!4515) (Null!4515) (Comma!4515) (LeftBracket!4515) (False!9031) (LeftBrace!4515) (ImaginaryLiteralValue!4515 (text!32051 List!27315)) (StringLiteralValue!13545 (value!137865 List!27315)) (EOFValue!4515 (value!137866 List!27315)) (IdentValue!4515 (value!137867 List!27315)) (DelimiterValue!9031 (value!137868 List!27315)) (DedentValue!4515 (value!137869 List!27315)) (NewLineValue!4515 (value!137870 List!27315)) (IntegerValue!13545 (value!137871 (_ BitVec 32)) (text!32052 List!27315)) (IntegerValue!13546 (value!137872 Int) (text!32053 List!27315)) (Times!4515) (Or!4515) (Equal!4515) (Minus!4515) (Broken!22579 (value!137873 List!27315)) (And!4515) (Div!4515) (LessEqual!4515) (Mod!4515) (Concat!11216) (Not!4515) (Plus!4515) (SpaceValue!4515 (value!137874 List!27315)) (IntegerValue!13547 (value!137875 Int) (text!32054 List!27315)) (StringLiteralValue!13546 (text!32055 List!27315)) (FloatLiteralValue!9031 (text!32056 List!27315)) (BytesLiteralValue!4515 (value!137876 List!27315)) (CommentValue!9031 (value!137877 List!27315)) (StringLiteralValue!13547 (value!137878 List!27315)) (ErrorTokenValue!4515 (msg!4576 List!27315)) )
))
(declare-datatypes ((C!13548 0))(
  ( (C!13549 (val!7822 Int)) )
))
(declare-datatypes ((List!27316 0))(
  ( (Nil!27222) (Cons!27222 (h!32623 C!13548) (t!204272 List!27316)) )
))
(declare-datatypes ((IArray!17713 0))(
  ( (IArray!17714 (innerList!8914 List!27316)) )
))
(declare-datatypes ((Conc!8854 0))(
  ( (Node!8854 (left!20639 Conc!8854) (right!20969 Conc!8854) (csize!17938 Int) (cheight!9065 Int)) (Leaf!13016 (xs!11796 IArray!17713) (csize!17939 Int)) (Empty!8854) )
))
(declare-datatypes ((BalanceConc!17436 0))(
  ( (BalanceConc!17437 (c!362854 Conc!8854)) )
))
(declare-datatypes ((Regex!6701 0))(
  ( (ElementMatch!6701 (c!362855 C!13548)) (Concat!11217 (regOne!13914 Regex!6701) (regTwo!13914 Regex!6701)) (EmptyExpr!6701) (Star!6701 (reg!7030 Regex!6701)) (EmptyLang!6701) (Union!6701 (regOne!13915 Regex!6701) (regTwo!13915 Regex!6701)) )
))
(declare-datatypes ((String!29679 0))(
  ( (String!29680 (value!137879 String)) )
))
(declare-datatypes ((TokenValueInjection!8570 0))(
  ( (TokenValueInjection!8571 (toValue!6143 Int) (toChars!6002 Int)) )
))
(declare-datatypes ((Rule!8506 0))(
  ( (Rule!8507 (regex!4353 Regex!6701) (tag!4843 String!29679) (isSeparator!4353 Bool) (transformation!4353 TokenValueInjection!8570)) )
))
(declare-datatypes ((List!27317 0))(
  ( (Nil!27223) (Cons!27223 (h!32624 Rule!8506) (t!204273 List!27317)) )
))
(declare-fun rules!1750 () List!27317)

(declare-fun r!2363 () Rule!8506)

(declare-fun contains!4729 (List!27317 Rule!8506) Bool)

(assert (=> b!2287513 (= res!977917 (contains!4729 rules!1750 r!2363))))

(declare-fun b!2287514 () Bool)

(declare-fun e!1465589 () Bool)

(declare-fun e!1465575 () Bool)

(assert (=> b!2287514 (= e!1465589 (not e!1465575))))

(declare-fun res!977924 () Bool)

(assert (=> b!2287514 (=> res!977924 e!1465575)))

(declare-fun e!1465571 () Bool)

(assert (=> b!2287514 (= res!977924 e!1465571)))

(declare-fun res!977921 () Bool)

(assert (=> b!2287514 (=> (not res!977921) (not e!1465571))))

(declare-fun lt!848839 () Bool)

(assert (=> b!2287514 (= res!977921 (not lt!848839))))

(declare-datatypes ((LexerInterface!3950 0))(
  ( (LexerInterfaceExt!3947 (__x!18091 Int)) (Lexer!3948) )
))
(declare-fun thiss!16613 () LexerInterface!3950)

(declare-fun ruleValid!1443 (LexerInterface!3950 Rule!8506) Bool)

(assert (=> b!2287514 (ruleValid!1443 thiss!16613 r!2363)))

(declare-datatypes ((Unit!40122 0))(
  ( (Unit!40123) )
))
(declare-fun lt!848826 () Unit!40122)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!848 (LexerInterface!3950 Rule!8506 List!27317) Unit!40122)

(assert (=> b!2287514 (= lt!848826 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!848 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2287515 () Bool)

(declare-fun e!1465591 () Bool)

(declare-datatypes ((Token!8184 0))(
  ( (Token!8185 (value!137880 TokenValue!4515) (rule!6683 Rule!8506) (size!21422 Int) (originalCharacters!5123 List!27316)) )
))
(declare-datatypes ((List!27318 0))(
  ( (Nil!27224) (Cons!27224 (h!32625 Token!8184) (t!204274 List!27318)) )
))
(declare-fun tokens!456 () List!27318)

(declare-fun otherP!12 () List!27316)

(declare-fun size!21423 (BalanceConc!17436) Int)

(declare-fun charsOf!2741 (Token!8184) BalanceConc!17436)

(declare-fun head!4974 (List!27318) Token!8184)

(declare-fun size!21424 (List!27316) Int)

(assert (=> b!2287515 (= e!1465591 (<= (size!21423 (charsOf!2741 (head!4974 tokens!456))) (size!21424 otherP!12)))))

(declare-fun b!2287516 () Bool)

(declare-fun matchR!2958 (Regex!6701 List!27316) Bool)

(declare-fun list!10644 (BalanceConc!17436) List!27316)

(assert (=> b!2287516 (= e!1465571 (not (matchR!2958 (regex!4353 r!2363) (list!10644 (charsOf!2741 (head!4974 tokens!456))))))))

(declare-fun b!2287517 () Bool)

(declare-fun res!977910 () Bool)

(assert (=> b!2287517 (=> (not res!977910) (not e!1465595))))

(declare-fun rulesInvariant!3452 (LexerInterface!3950 List!27317) Bool)

(assert (=> b!2287517 (= res!977910 (rulesInvariant!3452 thiss!16613 rules!1750))))

(declare-fun b!2287518 () Bool)

(declare-fun res!977916 () Bool)

(assert (=> b!2287518 (=> (not res!977916) (not e!1465589))))

(declare-fun otherR!12 () Rule!8506)

(assert (=> b!2287518 (= res!977916 (not (= r!2363 otherR!12)))))

(declare-fun e!1465582 () Bool)

(assert (=> b!2287519 (= e!1465582 (and tp!725193 tp!725199))))

(declare-fun b!2287520 () Bool)

(declare-fun res!977909 () Bool)

(assert (=> b!2287520 (=> (not res!977909) (not e!1465589))))

(declare-fun e!1465579 () Bool)

(assert (=> b!2287520 (= res!977909 e!1465579)))

(declare-fun res!977922 () Bool)

(assert (=> b!2287520 (=> res!977922 e!1465579)))

(assert (=> b!2287520 (= res!977922 lt!848839)))

(declare-fun e!1465581 () Bool)

(declare-fun e!1465570 () Bool)

(declare-fun b!2287521 () Bool)

(declare-fun tp!725202 () Bool)

(declare-fun inv!36817 (String!29679) Bool)

(declare-fun inv!36820 (TokenValueInjection!8570) Bool)

(assert (=> b!2287521 (= e!1465570 (and tp!725202 (inv!36817 (tag!4843 (rule!6683 (h!32625 tokens!456)))) (inv!36820 (transformation!4353 (rule!6683 (h!32625 tokens!456)))) e!1465581))))

(declare-fun b!2287522 () Bool)

(declare-fun res!977914 () Bool)

(declare-fun e!1465587 () Bool)

(assert (=> b!2287522 (=> res!977914 e!1465587)))

(declare-fun lt!848837 () List!27316)

(declare-fun isEmpty!15488 (List!27316) Bool)

(assert (=> b!2287522 (= res!977914 (isEmpty!15488 lt!848837))))

(declare-fun e!1465584 () Bool)

(declare-fun e!1465593 () Bool)

(declare-fun tp!725198 () Bool)

(declare-fun b!2287523 () Bool)

(assert (=> b!2287523 (= e!1465593 (and tp!725198 (inv!36817 (tag!4843 r!2363)) (inv!36820 (transformation!4353 r!2363)) e!1465584))))

(declare-fun b!2287524 () Bool)

(declare-fun e!1465586 () Bool)

(declare-fun e!1465569 () Bool)

(declare-fun tp!725197 () Bool)

(assert (=> b!2287524 (= e!1465586 (and e!1465569 tp!725197))))

(declare-fun b!2287525 () Bool)

(declare-fun e!1465583 () Bool)

(assert (=> b!2287525 (= e!1465583 (matchR!2958 (regex!4353 r!2363) lt!848837))))

(declare-fun tp!725195 () Bool)

(declare-fun e!1465568 () Bool)

(declare-fun b!2287527 () Bool)

(declare-fun e!1465577 () Bool)

(declare-fun inv!36821 (Token!8184) Bool)

(assert (=> b!2287527 (= e!1465568 (and (inv!36821 (h!32625 tokens!456)) e!1465577 tp!725195))))

(declare-fun b!2287528 () Bool)

(declare-fun e!1465594 () Bool)

(declare-fun tp_is_empty!10623 () Bool)

(declare-fun tp!725188 () Bool)

(assert (=> b!2287528 (= e!1465594 (and tp_is_empty!10623 tp!725188))))

(declare-fun e!1465580 () Bool)

(declare-fun b!2287529 () Bool)

(declare-fun e!1465590 () Bool)

(declare-fun tp!725192 () Bool)

(assert (=> b!2287529 (= e!1465590 (and tp!725192 (inv!36817 (tag!4843 otherR!12)) (inv!36820 (transformation!4353 otherR!12)) e!1465580))))

(declare-fun b!2287530 () Bool)

(declare-fun e!1465576 () Bool)

(declare-fun tp!725200 () Bool)

(assert (=> b!2287530 (= e!1465576 (and tp_is_empty!10623 tp!725200))))

(declare-fun b!2287531 () Bool)

(declare-fun e!1465574 () Bool)

(declare-fun e!1465592 () Bool)

(assert (=> b!2287531 (= e!1465574 e!1465592)))

(declare-fun res!977920 () Bool)

(assert (=> b!2287531 (=> res!977920 e!1465592)))

(declare-datatypes ((tuple2!27006 0))(
  ( (tuple2!27007 (_1!16013 Token!8184) (_2!16013 List!27316)) )
))
(declare-fun lt!848832 () tuple2!27006)

(assert (=> b!2287531 (= res!977920 (not (= (h!32625 tokens!456) (_1!16013 lt!848832))))))

(declare-datatypes ((Option!5343 0))(
  ( (None!5342) (Some!5342 (v!30416 tuple2!27006)) )
))
(declare-fun lt!848833 () Option!5343)

(declare-fun get!8209 (Option!5343) tuple2!27006)

(assert (=> b!2287531 (= lt!848832 (get!8209 lt!848833))))

(declare-fun input!1722 () List!27316)

(declare-fun maxPrefix!2214 (LexerInterface!3950 List!27317 List!27316) Option!5343)

(assert (=> b!2287531 (= lt!848833 (maxPrefix!2214 thiss!16613 rules!1750 input!1722))))

(declare-fun b!2287532 () Bool)

(declare-fun tp!725205 () Bool)

(assert (=> b!2287532 (= e!1465569 (and tp!725205 (inv!36817 (tag!4843 (h!32624 rules!1750))) (inv!36820 (transformation!4353 (h!32624 rules!1750))) e!1465582))))

(assert (=> b!2287533 (= e!1465580 (and tp!725196 tp!725201))))

(declare-fun b!2287534 () Bool)

(assert (=> b!2287534 (= e!1465592 e!1465587)))

(declare-fun res!977923 () Bool)

(assert (=> b!2287534 (=> res!977923 e!1465587)))

(declare-fun lt!848831 () List!27316)

(declare-fun lt!848836 () Int)

(declare-fun lt!848829 () Int)

(assert (=> b!2287534 (= res!977923 (or (= lt!848829 lt!848836) (not (= input!1722 lt!848831))))))

(assert (=> b!2287534 (= lt!848836 (size!21424 lt!848837))))

(assert (=> b!2287534 (= lt!848829 (size!21424 otherP!12))))

(declare-fun lt!848834 () List!27316)

(assert (=> b!2287534 (= (_2!16013 lt!848832) lt!848834)))

(declare-fun lt!848835 () Unit!40122)

(declare-fun lemmaSamePrefixThenSameSuffix!1044 (List!27316 List!27316 List!27316 List!27316 List!27316) Unit!40122)

(assert (=> b!2287534 (= lt!848835 (lemmaSamePrefixThenSameSuffix!1044 lt!848837 (_2!16013 lt!848832) lt!848837 lt!848834 input!1722))))

(declare-fun getSuffix!1134 (List!27316 List!27316) List!27316)

(assert (=> b!2287534 (= lt!848834 (getSuffix!1134 input!1722 lt!848837))))

(declare-fun isPrefix!2343 (List!27316 List!27316) Bool)

(assert (=> b!2287534 (isPrefix!2343 lt!848837 lt!848831)))

(declare-fun ++!6653 (List!27316 List!27316) List!27316)

(assert (=> b!2287534 (= lt!848831 (++!6653 lt!848837 (_2!16013 lt!848832)))))

(declare-fun lt!848840 () Unit!40122)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1548 (List!27316 List!27316) Unit!40122)

(assert (=> b!2287534 (= lt!848840 (lemmaConcatTwoListThenFirstIsPrefix!1548 lt!848837 (_2!16013 lt!848832)))))

(assert (=> b!2287534 (= lt!848837 (list!10644 (charsOf!2741 (h!32625 tokens!456))))))

(declare-fun b!2287535 () Bool)

(declare-fun res!977913 () Bool)

(assert (=> b!2287535 (=> res!977913 e!1465574)))

(get-info :version)

(assert (=> b!2287535 (= res!977913 ((_ is Nil!27224) tokens!456))))

(declare-fun b!2287536 () Bool)

(assert (=> b!2287536 (= e!1465587 e!1465583)))

(declare-fun res!977919 () Bool)

(assert (=> b!2287536 (=> res!977919 e!1465583)))

(declare-fun lt!848830 () BalanceConc!17436)

(declare-fun apply!6625 (TokenValueInjection!8570 BalanceConc!17436) TokenValue!4515)

(assert (=> b!2287536 (= res!977919 (not (= lt!848833 (Some!5342 (tuple2!27007 (Token!8185 (apply!6625 (transformation!4353 r!2363) lt!848830) r!2363 lt!848836 lt!848837) (_2!16013 lt!848832))))))))

(declare-fun lt!848828 () Unit!40122)

(declare-fun lemmaSemiInverse!1056 (TokenValueInjection!8570 BalanceConc!17436) Unit!40122)

(assert (=> b!2287536 (= lt!848828 (lemmaSemiInverse!1056 (transformation!4353 r!2363) lt!848830))))

(declare-fun seqFromList!3057 (List!27316) BalanceConc!17436)

(assert (=> b!2287536 (= lt!848830 (seqFromList!3057 lt!848837))))

(declare-fun b!2287537 () Bool)

(declare-fun e!1465567 () Bool)

(assert (=> b!2287537 (= e!1465595 e!1465567)))

(declare-fun res!977905 () Bool)

(assert (=> b!2287537 (=> (not res!977905) (not e!1465567))))

(declare-datatypes ((IArray!17715 0))(
  ( (IArray!17716 (innerList!8915 List!27318)) )
))
(declare-datatypes ((Conc!8855 0))(
  ( (Node!8855 (left!20640 Conc!8855) (right!20970 Conc!8855) (csize!17940 Int) (cheight!9066 Int)) (Leaf!13017 (xs!11797 IArray!17715) (csize!17941 Int)) (Empty!8855) )
))
(declare-datatypes ((BalanceConc!17438 0))(
  ( (BalanceConc!17439 (c!362856 Conc!8855)) )
))
(declare-datatypes ((tuple2!27008 0))(
  ( (tuple2!27009 (_1!16014 BalanceConc!17438) (_2!16014 BalanceConc!17436)) )
))
(declare-fun lt!848827 () tuple2!27008)

(declare-fun suffix!886 () List!27316)

(declare-datatypes ((tuple2!27010 0))(
  ( (tuple2!27011 (_1!16015 List!27318) (_2!16015 List!27316)) )
))
(declare-fun list!10645 (BalanceConc!17438) List!27318)

(assert (=> b!2287537 (= res!977905 (= (tuple2!27011 (list!10645 (_1!16014 lt!848827)) (list!10644 (_2!16014 lt!848827))) (tuple2!27011 tokens!456 suffix!886)))))

(declare-fun lex!1789 (LexerInterface!3950 List!27317 BalanceConc!17436) tuple2!27008)

(assert (=> b!2287537 (= lt!848827 (lex!1789 thiss!16613 rules!1750 (seqFromList!3057 input!1722)))))

(declare-fun b!2287538 () Bool)

(declare-fun res!977906 () Bool)

(assert (=> b!2287538 (=> (not res!977906) (not e!1465589))))

(assert (=> b!2287538 (= res!977906 (isPrefix!2343 otherP!12 input!1722))))

(declare-fun b!2287539 () Bool)

(declare-fun res!977907 () Bool)

(assert (=> b!2287539 (=> (not res!977907) (not e!1465595))))

(assert (=> b!2287539 (= res!977907 (contains!4729 rules!1750 otherR!12))))

(assert (=> b!2287540 (= e!1465584 (and tp!725194 tp!725203))))

(declare-fun b!2287541 () Bool)

(assert (=> b!2287541 (= e!1465567 e!1465589)))

(declare-fun res!977912 () Bool)

(assert (=> b!2287541 (=> (not res!977912) (not e!1465589))))

(assert (=> b!2287541 (= res!977912 e!1465591)))

(declare-fun res!977915 () Bool)

(assert (=> b!2287541 (=> res!977915 e!1465591)))

(assert (=> b!2287541 (= res!977915 lt!848839)))

(declare-fun isEmpty!15489 (List!27318) Bool)

(assert (=> b!2287541 (= lt!848839 (isEmpty!15489 tokens!456))))

(declare-fun b!2287526 () Bool)

(assert (=> b!2287526 (= e!1465575 e!1465574)))

(declare-fun res!977918 () Bool)

(assert (=> b!2287526 (=> res!977918 e!1465574)))

(declare-fun getIndex!366 (List!27317 Rule!8506) Int)

(assert (=> b!2287526 (= res!977918 (<= (getIndex!366 rules!1750 r!2363) (getIndex!366 rules!1750 otherR!12)))))

(assert (=> b!2287526 (ruleValid!1443 thiss!16613 otherR!12)))

(declare-fun lt!848838 () Unit!40122)

(assert (=> b!2287526 (= lt!848838 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!848 thiss!16613 otherR!12 rules!1750))))

(declare-fun res!977911 () Bool)

(assert (=> start!224380 (=> (not res!977911) (not e!1465595))))

(assert (=> start!224380 (= res!977911 ((_ is Lexer!3948) thiss!16613))))

(assert (=> start!224380 e!1465595))

(assert (=> start!224380 true))

(declare-fun e!1465578 () Bool)

(assert (=> start!224380 e!1465578))

(assert (=> start!224380 e!1465590))

(assert (=> start!224380 e!1465594))

(assert (=> start!224380 e!1465576))

(assert (=> start!224380 e!1465586))

(assert (=> start!224380 e!1465593))

(assert (=> start!224380 e!1465568))

(declare-fun b!2287542 () Bool)

(assert (=> b!2287542 (= e!1465579 (= (rule!6683 (head!4974 tokens!456)) r!2363))))

(declare-fun b!2287543 () Bool)

(declare-fun tp!725190 () Bool)

(assert (=> b!2287543 (= e!1465578 (and tp_is_empty!10623 tp!725190))))

(declare-fun tp!725204 () Bool)

(declare-fun b!2287544 () Bool)

(declare-fun inv!21 (TokenValue!4515) Bool)

(assert (=> b!2287544 (= e!1465577 (and (inv!21 (value!137880 (h!32625 tokens!456))) e!1465570 tp!725204))))

(declare-fun b!2287545 () Bool)

(declare-fun res!977908 () Bool)

(assert (=> b!2287545 (=> (not res!977908) (not e!1465595))))

(declare-fun isEmpty!15490 (List!27317) Bool)

(assert (=> b!2287545 (= res!977908 (not (isEmpty!15490 rules!1750)))))

(assert (=> b!2287546 (= e!1465581 (and tp!725189 tp!725191))))

(assert (= (and start!224380 res!977911) b!2287545))

(assert (= (and b!2287545 res!977908) b!2287517))

(assert (= (and b!2287517 res!977910) b!2287513))

(assert (= (and b!2287513 res!977917) b!2287539))

(assert (= (and b!2287539 res!977907) b!2287537))

(assert (= (and b!2287537 res!977905) b!2287541))

(assert (= (and b!2287541 (not res!977915)) b!2287515))

(assert (= (and b!2287541 res!977912) b!2287520))

(assert (= (and b!2287520 (not res!977922)) b!2287542))

(assert (= (and b!2287520 res!977909) b!2287538))

(assert (= (and b!2287538 res!977906) b!2287518))

(assert (= (and b!2287518 res!977916) b!2287514))

(assert (= (and b!2287514 res!977921) b!2287516))

(assert (= (and b!2287514 (not res!977924)) b!2287526))

(assert (= (and b!2287526 (not res!977918)) b!2287535))

(assert (= (and b!2287535 (not res!977913)) b!2287531))

(assert (= (and b!2287531 (not res!977920)) b!2287534))

(assert (= (and b!2287534 (not res!977923)) b!2287522))

(assert (= (and b!2287522 (not res!977914)) b!2287536))

(assert (= (and b!2287536 (not res!977919)) b!2287525))

(assert (= (and start!224380 ((_ is Cons!27222) input!1722)) b!2287543))

(assert (= b!2287529 b!2287533))

(assert (= start!224380 b!2287529))

(assert (= (and start!224380 ((_ is Cons!27222) suffix!886)) b!2287528))

(assert (= (and start!224380 ((_ is Cons!27222) otherP!12)) b!2287530))

(assert (= b!2287532 b!2287519))

(assert (= b!2287524 b!2287532))

(assert (= (and start!224380 ((_ is Cons!27223) rules!1750)) b!2287524))

(assert (= b!2287523 b!2287540))

(assert (= start!224380 b!2287523))

(assert (= b!2287521 b!2287546))

(assert (= b!2287544 b!2287521))

(assert (= b!2287527 b!2287544))

(assert (= (and start!224380 ((_ is Cons!27224) tokens!456)) b!2287527))

(declare-fun m!2715341 () Bool)

(assert (=> b!2287544 m!2715341))

(declare-fun m!2715343 () Bool)

(assert (=> b!2287515 m!2715343))

(assert (=> b!2287515 m!2715343))

(declare-fun m!2715345 () Bool)

(assert (=> b!2287515 m!2715345))

(assert (=> b!2287515 m!2715345))

(declare-fun m!2715347 () Bool)

(assert (=> b!2287515 m!2715347))

(declare-fun m!2715349 () Bool)

(assert (=> b!2287515 m!2715349))

(declare-fun m!2715351 () Bool)

(assert (=> b!2287531 m!2715351))

(declare-fun m!2715353 () Bool)

(assert (=> b!2287531 m!2715353))

(declare-fun m!2715355 () Bool)

(assert (=> b!2287523 m!2715355))

(declare-fun m!2715357 () Bool)

(assert (=> b!2287523 m!2715357))

(declare-fun m!2715359 () Bool)

(assert (=> b!2287525 m!2715359))

(declare-fun m!2715361 () Bool)

(assert (=> b!2287532 m!2715361))

(declare-fun m!2715363 () Bool)

(assert (=> b!2287532 m!2715363))

(declare-fun m!2715365 () Bool)

(assert (=> b!2287527 m!2715365))

(assert (=> b!2287516 m!2715343))

(assert (=> b!2287516 m!2715343))

(assert (=> b!2287516 m!2715345))

(assert (=> b!2287516 m!2715345))

(declare-fun m!2715367 () Bool)

(assert (=> b!2287516 m!2715367))

(assert (=> b!2287516 m!2715367))

(declare-fun m!2715369 () Bool)

(assert (=> b!2287516 m!2715369))

(assert (=> b!2287542 m!2715343))

(declare-fun m!2715371 () Bool)

(assert (=> b!2287545 m!2715371))

(declare-fun m!2715373 () Bool)

(assert (=> b!2287538 m!2715373))

(declare-fun m!2715375 () Bool)

(assert (=> b!2287513 m!2715375))

(declare-fun m!2715377 () Bool)

(assert (=> b!2287514 m!2715377))

(declare-fun m!2715379 () Bool)

(assert (=> b!2287514 m!2715379))

(declare-fun m!2715381 () Bool)

(assert (=> b!2287522 m!2715381))

(declare-fun m!2715383 () Bool)

(assert (=> b!2287526 m!2715383))

(declare-fun m!2715385 () Bool)

(assert (=> b!2287526 m!2715385))

(declare-fun m!2715387 () Bool)

(assert (=> b!2287526 m!2715387))

(declare-fun m!2715389 () Bool)

(assert (=> b!2287526 m!2715389))

(declare-fun m!2715391 () Bool)

(assert (=> b!2287529 m!2715391))

(declare-fun m!2715393 () Bool)

(assert (=> b!2287529 m!2715393))

(declare-fun m!2715395 () Bool)

(assert (=> b!2287537 m!2715395))

(declare-fun m!2715397 () Bool)

(assert (=> b!2287537 m!2715397))

(declare-fun m!2715399 () Bool)

(assert (=> b!2287537 m!2715399))

(assert (=> b!2287537 m!2715399))

(declare-fun m!2715401 () Bool)

(assert (=> b!2287537 m!2715401))

(declare-fun m!2715403 () Bool)

(assert (=> b!2287536 m!2715403))

(declare-fun m!2715405 () Bool)

(assert (=> b!2287536 m!2715405))

(declare-fun m!2715407 () Bool)

(assert (=> b!2287536 m!2715407))

(declare-fun m!2715409 () Bool)

(assert (=> b!2287539 m!2715409))

(declare-fun m!2715411 () Bool)

(assert (=> b!2287541 m!2715411))

(declare-fun m!2715413 () Bool)

(assert (=> b!2287517 m!2715413))

(declare-fun m!2715415 () Bool)

(assert (=> b!2287521 m!2715415))

(declare-fun m!2715417 () Bool)

(assert (=> b!2287521 m!2715417))

(declare-fun m!2715419 () Bool)

(assert (=> b!2287534 m!2715419))

(declare-fun m!2715421 () Bool)

(assert (=> b!2287534 m!2715421))

(declare-fun m!2715423 () Bool)

(assert (=> b!2287534 m!2715423))

(assert (=> b!2287534 m!2715349))

(declare-fun m!2715425 () Bool)

(assert (=> b!2287534 m!2715425))

(declare-fun m!2715427 () Bool)

(assert (=> b!2287534 m!2715427))

(declare-fun m!2715429 () Bool)

(assert (=> b!2287534 m!2715429))

(declare-fun m!2715431 () Bool)

(assert (=> b!2287534 m!2715431))

(declare-fun m!2715433 () Bool)

(assert (=> b!2287534 m!2715433))

(assert (=> b!2287534 m!2715429))

(check-sat (not b!2287537) b_and!181265 (not b_next!69299) (not b!2287538) (not b_next!69301) b_and!181267 (not b!2287521) (not b!2287528) (not b_next!69307) tp_is_empty!10623 b_and!181273 (not b_next!69295) (not b!2287531) (not b!2287524) b_and!181271 (not b!2287516) (not b_next!69297) (not b!2287515) (not b!2287513) (not b!2287526) (not b_next!69303) (not b!2287541) (not b!2287525) (not b!2287522) (not b!2287514) (not b!2287545) (not b!2287523) (not b!2287527) (not b!2287532) (not b!2287534) (not b!2287543) (not b!2287536) (not b_next!69293) b_and!181269 b_and!181275 (not b!2287530) (not b!2287529) b_and!181279 (not b!2287517) b_and!181277 (not b!2287544) (not b!2287539) (not b_next!69305) (not b!2287542))
(check-sat b_and!181271 b_and!181265 (not b_next!69297) (not b_next!69299) (not b_next!69303) (not b_next!69301) b_and!181267 (not b_next!69293) (not b_next!69305) (not b_next!69307) b_and!181273 (not b_next!69295) b_and!181269 b_and!181275 b_and!181279 b_and!181277)
(get-model)

(declare-fun b!2287585 () Bool)

(declare-fun e!1465623 () Bool)

(declare-fun derivativeStep!1519 (Regex!6701 C!13548) Regex!6701)

(declare-fun head!4975 (List!27316) C!13548)

(declare-fun tail!3302 (List!27316) List!27316)

(assert (=> b!2287585 (= e!1465623 (matchR!2958 (derivativeStep!1519 (regex!4353 r!2363) (head!4975 (list!10644 (charsOf!2741 (head!4974 tokens!456))))) (tail!3302 (list!10644 (charsOf!2741 (head!4974 tokens!456))))))))

(declare-fun d!676878 () Bool)

(declare-fun e!1465625 () Bool)

(assert (=> d!676878 e!1465625))

(declare-fun c!362865 () Bool)

(assert (=> d!676878 (= c!362865 ((_ is EmptyExpr!6701) (regex!4353 r!2363)))))

(declare-fun lt!848846 () Bool)

(assert (=> d!676878 (= lt!848846 e!1465623)))

(declare-fun c!362864 () Bool)

(assert (=> d!676878 (= c!362864 (isEmpty!15488 (list!10644 (charsOf!2741 (head!4974 tokens!456)))))))

(declare-fun validRegex!2522 (Regex!6701) Bool)

(assert (=> d!676878 (validRegex!2522 (regex!4353 r!2363))))

(assert (=> d!676878 (= (matchR!2958 (regex!4353 r!2363) (list!10644 (charsOf!2741 (head!4974 tokens!456)))) lt!848846)))

(declare-fun bm!136592 () Bool)

(declare-fun call!136597 () Bool)

(assert (=> bm!136592 (= call!136597 (isEmpty!15488 (list!10644 (charsOf!2741 (head!4974 tokens!456)))))))

(declare-fun b!2287586 () Bool)

(declare-fun e!1465624 () Bool)

(assert (=> b!2287586 (= e!1465624 (not lt!848846))))

(declare-fun b!2287587 () Bool)

(assert (=> b!2287587 (= e!1465625 (= lt!848846 call!136597))))

(declare-fun b!2287588 () Bool)

(declare-fun res!977963 () Bool)

(declare-fun e!1465620 () Bool)

(assert (=> b!2287588 (=> (not res!977963) (not e!1465620))))

(assert (=> b!2287588 (= res!977963 (not call!136597))))

(declare-fun b!2287589 () Bool)

(declare-fun res!977962 () Bool)

(assert (=> b!2287589 (=> (not res!977962) (not e!1465620))))

(assert (=> b!2287589 (= res!977962 (isEmpty!15488 (tail!3302 (list!10644 (charsOf!2741 (head!4974 tokens!456))))))))

(declare-fun b!2287590 () Bool)

(declare-fun res!977964 () Bool)

(declare-fun e!1465626 () Bool)

(assert (=> b!2287590 (=> res!977964 e!1465626)))

(assert (=> b!2287590 (= res!977964 (not ((_ is ElementMatch!6701) (regex!4353 r!2363))))))

(assert (=> b!2287590 (= e!1465624 e!1465626)))

(declare-fun b!2287591 () Bool)

(declare-fun res!977966 () Bool)

(declare-fun e!1465622 () Bool)

(assert (=> b!2287591 (=> res!977966 e!1465622)))

(assert (=> b!2287591 (= res!977966 (not (isEmpty!15488 (tail!3302 (list!10644 (charsOf!2741 (head!4974 tokens!456)))))))))

(declare-fun b!2287592 () Bool)

(declare-fun e!1465621 () Bool)

(assert (=> b!2287592 (= e!1465621 e!1465622)))

(declare-fun res!977968 () Bool)

(assert (=> b!2287592 (=> res!977968 e!1465622)))

(assert (=> b!2287592 (= res!977968 call!136597)))

(declare-fun b!2287593 () Bool)

(declare-fun res!977969 () Bool)

(assert (=> b!2287593 (=> res!977969 e!1465626)))

(assert (=> b!2287593 (= res!977969 e!1465620)))

(declare-fun res!977967 () Bool)

(assert (=> b!2287593 (=> (not res!977967) (not e!1465620))))

(assert (=> b!2287593 (= res!977967 lt!848846)))

(declare-fun b!2287594 () Bool)

(declare-fun nullable!1860 (Regex!6701) Bool)

(assert (=> b!2287594 (= e!1465623 (nullable!1860 (regex!4353 r!2363)))))

(declare-fun b!2287595 () Bool)

(assert (=> b!2287595 (= e!1465626 e!1465621)))

(declare-fun res!977965 () Bool)

(assert (=> b!2287595 (=> (not res!977965) (not e!1465621))))

(assert (=> b!2287595 (= res!977965 (not lt!848846))))

(declare-fun b!2287596 () Bool)

(assert (=> b!2287596 (= e!1465625 e!1465624)))

(declare-fun c!362863 () Bool)

(assert (=> b!2287596 (= c!362863 ((_ is EmptyLang!6701) (regex!4353 r!2363)))))

(declare-fun b!2287597 () Bool)

(assert (=> b!2287597 (= e!1465622 (not (= (head!4975 (list!10644 (charsOf!2741 (head!4974 tokens!456)))) (c!362855 (regex!4353 r!2363)))))))

(declare-fun b!2287598 () Bool)

(assert (=> b!2287598 (= e!1465620 (= (head!4975 (list!10644 (charsOf!2741 (head!4974 tokens!456)))) (c!362855 (regex!4353 r!2363))))))

(assert (= (and d!676878 c!362864) b!2287594))

(assert (= (and d!676878 (not c!362864)) b!2287585))

(assert (= (and d!676878 c!362865) b!2287587))

(assert (= (and d!676878 (not c!362865)) b!2287596))

(assert (= (and b!2287596 c!362863) b!2287586))

(assert (= (and b!2287596 (not c!362863)) b!2287590))

(assert (= (and b!2287590 (not res!977964)) b!2287593))

(assert (= (and b!2287593 res!977967) b!2287588))

(assert (= (and b!2287588 res!977963) b!2287589))

(assert (= (and b!2287589 res!977962) b!2287598))

(assert (= (and b!2287593 (not res!977969)) b!2287595))

(assert (= (and b!2287595 res!977965) b!2287592))

(assert (= (and b!2287592 (not res!977968)) b!2287591))

(assert (= (and b!2287591 (not res!977966)) b!2287597))

(assert (= (or b!2287587 b!2287588 b!2287592) bm!136592))

(assert (=> b!2287597 m!2715367))

(declare-fun m!2715453 () Bool)

(assert (=> b!2287597 m!2715453))

(assert (=> b!2287585 m!2715367))

(assert (=> b!2287585 m!2715453))

(assert (=> b!2287585 m!2715453))

(declare-fun m!2715455 () Bool)

(assert (=> b!2287585 m!2715455))

(assert (=> b!2287585 m!2715367))

(declare-fun m!2715457 () Bool)

(assert (=> b!2287585 m!2715457))

(assert (=> b!2287585 m!2715455))

(assert (=> b!2287585 m!2715457))

(declare-fun m!2715459 () Bool)

(assert (=> b!2287585 m!2715459))

(assert (=> b!2287589 m!2715367))

(assert (=> b!2287589 m!2715457))

(assert (=> b!2287589 m!2715457))

(declare-fun m!2715461 () Bool)

(assert (=> b!2287589 m!2715461))

(assert (=> bm!136592 m!2715367))

(declare-fun m!2715463 () Bool)

(assert (=> bm!136592 m!2715463))

(assert (=> b!2287591 m!2715367))

(assert (=> b!2287591 m!2715457))

(assert (=> b!2287591 m!2715457))

(assert (=> b!2287591 m!2715461))

(assert (=> d!676878 m!2715367))

(assert (=> d!676878 m!2715463))

(declare-fun m!2715465 () Bool)

(assert (=> d!676878 m!2715465))

(assert (=> b!2287598 m!2715367))

(assert (=> b!2287598 m!2715453))

(declare-fun m!2715467 () Bool)

(assert (=> b!2287594 m!2715467))

(assert (=> b!2287516 d!676878))

(declare-fun d!676896 () Bool)

(declare-fun list!10648 (Conc!8854) List!27316)

(assert (=> d!676896 (= (list!10644 (charsOf!2741 (head!4974 tokens!456))) (list!10648 (c!362854 (charsOf!2741 (head!4974 tokens!456)))))))

(declare-fun bs!456934 () Bool)

(assert (= bs!456934 d!676896))

(declare-fun m!2715469 () Bool)

(assert (=> bs!456934 m!2715469))

(assert (=> b!2287516 d!676896))

(declare-fun d!676898 () Bool)

(declare-fun lt!848849 () BalanceConc!17436)

(assert (=> d!676898 (= (list!10644 lt!848849) (originalCharacters!5123 (head!4974 tokens!456)))))

(declare-fun dynLambda!11819 (Int TokenValue!4515) BalanceConc!17436)

(assert (=> d!676898 (= lt!848849 (dynLambda!11819 (toChars!6002 (transformation!4353 (rule!6683 (head!4974 tokens!456)))) (value!137880 (head!4974 tokens!456))))))

(assert (=> d!676898 (= (charsOf!2741 (head!4974 tokens!456)) lt!848849)))

(declare-fun b_lambda!72845 () Bool)

(assert (=> (not b_lambda!72845) (not d!676898)))

(declare-fun t!204276 () Bool)

(declare-fun tb!136207 () Bool)

(assert (=> (and b!2287533 (= (toChars!6002 (transformation!4353 otherR!12)) (toChars!6002 (transformation!4353 (rule!6683 (head!4974 tokens!456))))) t!204276) tb!136207))

(declare-fun b!2287603 () Bool)

(declare-fun e!1465629 () Bool)

(declare-fun tp!725208 () Bool)

(declare-fun inv!36824 (Conc!8854) Bool)

(assert (=> b!2287603 (= e!1465629 (and (inv!36824 (c!362854 (dynLambda!11819 (toChars!6002 (transformation!4353 (rule!6683 (head!4974 tokens!456)))) (value!137880 (head!4974 tokens!456))))) tp!725208))))

(declare-fun result!166070 () Bool)

(declare-fun inv!36825 (BalanceConc!17436) Bool)

(assert (=> tb!136207 (= result!166070 (and (inv!36825 (dynLambda!11819 (toChars!6002 (transformation!4353 (rule!6683 (head!4974 tokens!456)))) (value!137880 (head!4974 tokens!456)))) e!1465629))))

(assert (= tb!136207 b!2287603))

(declare-fun m!2715471 () Bool)

(assert (=> b!2287603 m!2715471))

(declare-fun m!2715473 () Bool)

(assert (=> tb!136207 m!2715473))

(assert (=> d!676898 t!204276))

(declare-fun b_and!181281 () Bool)

(assert (= b_and!181267 (and (=> t!204276 result!166070) b_and!181281)))

(declare-fun t!204278 () Bool)

(declare-fun tb!136209 () Bool)

(assert (=> (and b!2287540 (= (toChars!6002 (transformation!4353 r!2363)) (toChars!6002 (transformation!4353 (rule!6683 (head!4974 tokens!456))))) t!204278) tb!136209))

(declare-fun result!166074 () Bool)

(assert (= result!166074 result!166070))

(assert (=> d!676898 t!204278))

(declare-fun b_and!181283 () Bool)

(assert (= b_and!181271 (and (=> t!204278 result!166074) b_and!181283)))

(declare-fun t!204280 () Bool)

(declare-fun tb!136211 () Bool)

(assert (=> (and b!2287546 (= (toChars!6002 (transformation!4353 (rule!6683 (h!32625 tokens!456)))) (toChars!6002 (transformation!4353 (rule!6683 (head!4974 tokens!456))))) t!204280) tb!136211))

(declare-fun result!166076 () Bool)

(assert (= result!166076 result!166070))

(assert (=> d!676898 t!204280))

(declare-fun b_and!181285 () Bool)

(assert (= b_and!181275 (and (=> t!204280 result!166076) b_and!181285)))

(declare-fun tb!136213 () Bool)

(declare-fun t!204282 () Bool)

(assert (=> (and b!2287519 (= (toChars!6002 (transformation!4353 (h!32624 rules!1750))) (toChars!6002 (transformation!4353 (rule!6683 (head!4974 tokens!456))))) t!204282) tb!136213))

(declare-fun result!166078 () Bool)

(assert (= result!166078 result!166070))

(assert (=> d!676898 t!204282))

(declare-fun b_and!181287 () Bool)

(assert (= b_and!181279 (and (=> t!204282 result!166078) b_and!181287)))

(declare-fun m!2715475 () Bool)

(assert (=> d!676898 m!2715475))

(declare-fun m!2715477 () Bool)

(assert (=> d!676898 m!2715477))

(assert (=> b!2287516 d!676898))

(declare-fun d!676900 () Bool)

(assert (=> d!676900 (= (head!4974 tokens!456) (h!32625 tokens!456))))

(assert (=> b!2287516 d!676900))

(declare-fun d!676902 () Bool)

(declare-fun res!977974 () Bool)

(declare-fun e!1465632 () Bool)

(assert (=> d!676902 (=> (not res!977974) (not e!1465632))))

(assert (=> d!676902 (= res!977974 (not (isEmpty!15488 (originalCharacters!5123 (h!32625 tokens!456)))))))

(assert (=> d!676902 (= (inv!36821 (h!32625 tokens!456)) e!1465632)))

(declare-fun b!2287608 () Bool)

(declare-fun res!977975 () Bool)

(assert (=> b!2287608 (=> (not res!977975) (not e!1465632))))

(assert (=> b!2287608 (= res!977975 (= (originalCharacters!5123 (h!32625 tokens!456)) (list!10644 (dynLambda!11819 (toChars!6002 (transformation!4353 (rule!6683 (h!32625 tokens!456)))) (value!137880 (h!32625 tokens!456))))))))

(declare-fun b!2287609 () Bool)

(assert (=> b!2287609 (= e!1465632 (= (size!21422 (h!32625 tokens!456)) (size!21424 (originalCharacters!5123 (h!32625 tokens!456)))))))

(assert (= (and d!676902 res!977974) b!2287608))

(assert (= (and b!2287608 res!977975) b!2287609))

(declare-fun b_lambda!72847 () Bool)

(assert (=> (not b_lambda!72847) (not b!2287608)))

(declare-fun t!204284 () Bool)

(declare-fun tb!136215 () Bool)

(assert (=> (and b!2287533 (= (toChars!6002 (transformation!4353 otherR!12)) (toChars!6002 (transformation!4353 (rule!6683 (h!32625 tokens!456))))) t!204284) tb!136215))

(declare-fun b!2287610 () Bool)

(declare-fun e!1465633 () Bool)

(declare-fun tp!725209 () Bool)

(assert (=> b!2287610 (= e!1465633 (and (inv!36824 (c!362854 (dynLambda!11819 (toChars!6002 (transformation!4353 (rule!6683 (h!32625 tokens!456)))) (value!137880 (h!32625 tokens!456))))) tp!725209))))

(declare-fun result!166080 () Bool)

(assert (=> tb!136215 (= result!166080 (and (inv!36825 (dynLambda!11819 (toChars!6002 (transformation!4353 (rule!6683 (h!32625 tokens!456)))) (value!137880 (h!32625 tokens!456)))) e!1465633))))

(assert (= tb!136215 b!2287610))

(declare-fun m!2715479 () Bool)

(assert (=> b!2287610 m!2715479))

(declare-fun m!2715481 () Bool)

(assert (=> tb!136215 m!2715481))

(assert (=> b!2287608 t!204284))

(declare-fun b_and!181289 () Bool)

(assert (= b_and!181281 (and (=> t!204284 result!166080) b_and!181289)))

(declare-fun t!204286 () Bool)

(declare-fun tb!136217 () Bool)

(assert (=> (and b!2287540 (= (toChars!6002 (transformation!4353 r!2363)) (toChars!6002 (transformation!4353 (rule!6683 (h!32625 tokens!456))))) t!204286) tb!136217))

(declare-fun result!166082 () Bool)

(assert (= result!166082 result!166080))

(assert (=> b!2287608 t!204286))

(declare-fun b_and!181291 () Bool)

(assert (= b_and!181283 (and (=> t!204286 result!166082) b_and!181291)))

(declare-fun t!204288 () Bool)

(declare-fun tb!136219 () Bool)

(assert (=> (and b!2287546 (= (toChars!6002 (transformation!4353 (rule!6683 (h!32625 tokens!456)))) (toChars!6002 (transformation!4353 (rule!6683 (h!32625 tokens!456))))) t!204288) tb!136219))

(declare-fun result!166084 () Bool)

(assert (= result!166084 result!166080))

(assert (=> b!2287608 t!204288))

(declare-fun b_and!181293 () Bool)

(assert (= b_and!181285 (and (=> t!204288 result!166084) b_and!181293)))

(declare-fun t!204290 () Bool)

(declare-fun tb!136221 () Bool)

(assert (=> (and b!2287519 (= (toChars!6002 (transformation!4353 (h!32624 rules!1750))) (toChars!6002 (transformation!4353 (rule!6683 (h!32625 tokens!456))))) t!204290) tb!136221))

(declare-fun result!166086 () Bool)

(assert (= result!166086 result!166080))

(assert (=> b!2287608 t!204290))

(declare-fun b_and!181295 () Bool)

(assert (= b_and!181287 (and (=> t!204290 result!166086) b_and!181295)))

(declare-fun m!2715483 () Bool)

(assert (=> d!676902 m!2715483))

(declare-fun m!2715485 () Bool)

(assert (=> b!2287608 m!2715485))

(assert (=> b!2287608 m!2715485))

(declare-fun m!2715487 () Bool)

(assert (=> b!2287608 m!2715487))

(declare-fun m!2715489 () Bool)

(assert (=> b!2287609 m!2715489))

(assert (=> b!2287527 d!676902))

(declare-fun b!2287622 () Bool)

(declare-fun e!1465642 () Bool)

(assert (=> b!2287622 (= e!1465642 (>= (size!21424 input!1722) (size!21424 otherP!12)))))

(declare-fun d!676904 () Bool)

(assert (=> d!676904 e!1465642))

(declare-fun res!977985 () Bool)

(assert (=> d!676904 (=> res!977985 e!1465642)))

(declare-fun lt!848852 () Bool)

(assert (=> d!676904 (= res!977985 (not lt!848852))))

(declare-fun e!1465641 () Bool)

(assert (=> d!676904 (= lt!848852 e!1465641)))

(declare-fun res!977984 () Bool)

(assert (=> d!676904 (=> res!977984 e!1465641)))

(assert (=> d!676904 (= res!977984 ((_ is Nil!27222) otherP!12))))

(assert (=> d!676904 (= (isPrefix!2343 otherP!12 input!1722) lt!848852)))

(declare-fun b!2287619 () Bool)

(declare-fun e!1465640 () Bool)

(assert (=> b!2287619 (= e!1465641 e!1465640)))

(declare-fun res!977987 () Bool)

(assert (=> b!2287619 (=> (not res!977987) (not e!1465640))))

(assert (=> b!2287619 (= res!977987 (not ((_ is Nil!27222) input!1722)))))

(declare-fun b!2287620 () Bool)

(declare-fun res!977986 () Bool)

(assert (=> b!2287620 (=> (not res!977986) (not e!1465640))))

(assert (=> b!2287620 (= res!977986 (= (head!4975 otherP!12) (head!4975 input!1722)))))

(declare-fun b!2287621 () Bool)

(assert (=> b!2287621 (= e!1465640 (isPrefix!2343 (tail!3302 otherP!12) (tail!3302 input!1722)))))

(assert (= (and d!676904 (not res!977984)) b!2287619))

(assert (= (and b!2287619 res!977987) b!2287620))

(assert (= (and b!2287620 res!977986) b!2287621))

(assert (= (and d!676904 (not res!977985)) b!2287622))

(declare-fun m!2715491 () Bool)

(assert (=> b!2287622 m!2715491))

(assert (=> b!2287622 m!2715349))

(declare-fun m!2715493 () Bool)

(assert (=> b!2287620 m!2715493))

(declare-fun m!2715495 () Bool)

(assert (=> b!2287620 m!2715495))

(declare-fun m!2715497 () Bool)

(assert (=> b!2287621 m!2715497))

(declare-fun m!2715499 () Bool)

(assert (=> b!2287621 m!2715499))

(assert (=> b!2287621 m!2715497))

(assert (=> b!2287621 m!2715499))

(declare-fun m!2715501 () Bool)

(assert (=> b!2287621 m!2715501))

(assert (=> b!2287538 d!676904))

(declare-fun d!676906 () Bool)

(declare-fun res!977990 () Bool)

(declare-fun e!1465645 () Bool)

(assert (=> d!676906 (=> (not res!977990) (not e!1465645))))

(declare-fun rulesValid!1605 (LexerInterface!3950 List!27317) Bool)

(assert (=> d!676906 (= res!977990 (rulesValid!1605 thiss!16613 rules!1750))))

(assert (=> d!676906 (= (rulesInvariant!3452 thiss!16613 rules!1750) e!1465645)))

(declare-fun b!2287625 () Bool)

(declare-datatypes ((List!27319 0))(
  ( (Nil!27225) (Cons!27225 (h!32626 String!29679) (t!204371 List!27319)) )
))
(declare-fun noDuplicateTag!1603 (LexerInterface!3950 List!27317 List!27319) Bool)

(assert (=> b!2287625 (= e!1465645 (noDuplicateTag!1603 thiss!16613 rules!1750 Nil!27225))))

(assert (= (and d!676906 res!977990) b!2287625))

(declare-fun m!2715503 () Bool)

(assert (=> d!676906 m!2715503))

(declare-fun m!2715505 () Bool)

(assert (=> b!2287625 m!2715505))

(assert (=> b!2287517 d!676906))

(declare-fun d!676908 () Bool)

(declare-fun dynLambda!11820 (Int BalanceConc!17436) TokenValue!4515)

(assert (=> d!676908 (= (apply!6625 (transformation!4353 r!2363) lt!848830) (dynLambda!11820 (toValue!6143 (transformation!4353 r!2363)) lt!848830))))

(declare-fun b_lambda!72849 () Bool)

(assert (=> (not b_lambda!72849) (not d!676908)))

(declare-fun t!204292 () Bool)

(declare-fun tb!136223 () Bool)

(assert (=> (and b!2287533 (= (toValue!6143 (transformation!4353 otherR!12)) (toValue!6143 (transformation!4353 r!2363))) t!204292) tb!136223))

(declare-fun result!166088 () Bool)

(assert (=> tb!136223 (= result!166088 (inv!21 (dynLambda!11820 (toValue!6143 (transformation!4353 r!2363)) lt!848830)))))

(declare-fun m!2715507 () Bool)

(assert (=> tb!136223 m!2715507))

(assert (=> d!676908 t!204292))

(declare-fun b_and!181297 () Bool)

(assert (= b_and!181265 (and (=> t!204292 result!166088) b_and!181297)))

(declare-fun t!204294 () Bool)

(declare-fun tb!136225 () Bool)

(assert (=> (and b!2287540 (= (toValue!6143 (transformation!4353 r!2363)) (toValue!6143 (transformation!4353 r!2363))) t!204294) tb!136225))

(declare-fun result!166092 () Bool)

(assert (= result!166092 result!166088))

(assert (=> d!676908 t!204294))

(declare-fun b_and!181299 () Bool)

(assert (= b_and!181269 (and (=> t!204294 result!166092) b_and!181299)))

(declare-fun t!204296 () Bool)

(declare-fun tb!136227 () Bool)

(assert (=> (and b!2287546 (= (toValue!6143 (transformation!4353 (rule!6683 (h!32625 tokens!456)))) (toValue!6143 (transformation!4353 r!2363))) t!204296) tb!136227))

(declare-fun result!166094 () Bool)

(assert (= result!166094 result!166088))

(assert (=> d!676908 t!204296))

(declare-fun b_and!181301 () Bool)

(assert (= b_and!181273 (and (=> t!204296 result!166094) b_and!181301)))

(declare-fun tb!136229 () Bool)

(declare-fun t!204298 () Bool)

(assert (=> (and b!2287519 (= (toValue!6143 (transformation!4353 (h!32624 rules!1750))) (toValue!6143 (transformation!4353 r!2363))) t!204298) tb!136229))

(declare-fun result!166096 () Bool)

(assert (= result!166096 result!166088))

(assert (=> d!676908 t!204298))

(declare-fun b_and!181303 () Bool)

(assert (= b_and!181277 (and (=> t!204298 result!166096) b_and!181303)))

(declare-fun m!2715509 () Bool)

(assert (=> d!676908 m!2715509))

(assert (=> b!2287536 d!676908))

(declare-fun b!2287680 () Bool)

(declare-fun e!1465681 () Bool)

(assert (=> b!2287680 (= e!1465681 true)))

(declare-fun d!676910 () Bool)

(assert (=> d!676910 e!1465681))

(assert (= d!676910 b!2287680))

(declare-fun order!15179 () Int)

(declare-fun lambda!85745 () Int)

(declare-fun order!15181 () Int)

(declare-fun dynLambda!11821 (Int Int) Int)

(declare-fun dynLambda!11822 (Int Int) Int)

(assert (=> b!2287680 (< (dynLambda!11821 order!15179 (toValue!6143 (transformation!4353 r!2363))) (dynLambda!11822 order!15181 lambda!85745))))

(declare-fun order!15183 () Int)

(declare-fun dynLambda!11823 (Int Int) Int)

(assert (=> b!2287680 (< (dynLambda!11823 order!15183 (toChars!6002 (transformation!4353 r!2363))) (dynLambda!11822 order!15181 lambda!85745))))

(assert (=> d!676910 (= (list!10644 (dynLambda!11819 (toChars!6002 (transformation!4353 r!2363)) (dynLambda!11820 (toValue!6143 (transformation!4353 r!2363)) lt!848830))) (list!10644 lt!848830))))

(declare-fun lt!848864 () Unit!40122)

(declare-fun ForallOf!493 (Int BalanceConc!17436) Unit!40122)

(assert (=> d!676910 (= lt!848864 (ForallOf!493 lambda!85745 lt!848830))))

(assert (=> d!676910 (= (lemmaSemiInverse!1056 (transformation!4353 r!2363) lt!848830) lt!848864)))

(declare-fun b_lambda!72857 () Bool)

(assert (=> (not b_lambda!72857) (not d!676910)))

(declare-fun t!204316 () Bool)

(declare-fun tb!136247 () Bool)

(assert (=> (and b!2287533 (= (toChars!6002 (transformation!4353 otherR!12)) (toChars!6002 (transformation!4353 r!2363))) t!204316) tb!136247))

(declare-fun b!2287681 () Bool)

(declare-fun tp!725213 () Bool)

(declare-fun e!1465682 () Bool)

(assert (=> b!2287681 (= e!1465682 (and (inv!36824 (c!362854 (dynLambda!11819 (toChars!6002 (transformation!4353 r!2363)) (dynLambda!11820 (toValue!6143 (transformation!4353 r!2363)) lt!848830)))) tp!725213))))

(declare-fun result!166118 () Bool)

(assert (=> tb!136247 (= result!166118 (and (inv!36825 (dynLambda!11819 (toChars!6002 (transformation!4353 r!2363)) (dynLambda!11820 (toValue!6143 (transformation!4353 r!2363)) lt!848830))) e!1465682))))

(assert (= tb!136247 b!2287681))

(declare-fun m!2715561 () Bool)

(assert (=> b!2287681 m!2715561))

(declare-fun m!2715563 () Bool)

(assert (=> tb!136247 m!2715563))

(assert (=> d!676910 t!204316))

(declare-fun b_and!181329 () Bool)

(assert (= b_and!181289 (and (=> t!204316 result!166118) b_and!181329)))

(declare-fun t!204318 () Bool)

(declare-fun tb!136249 () Bool)

(assert (=> (and b!2287540 (= (toChars!6002 (transformation!4353 r!2363)) (toChars!6002 (transformation!4353 r!2363))) t!204318) tb!136249))

(declare-fun result!166120 () Bool)

(assert (= result!166120 result!166118))

(assert (=> d!676910 t!204318))

(declare-fun b_and!181331 () Bool)

(assert (= b_and!181291 (and (=> t!204318 result!166120) b_and!181331)))

(declare-fun t!204320 () Bool)

(declare-fun tb!136251 () Bool)

(assert (=> (and b!2287546 (= (toChars!6002 (transformation!4353 (rule!6683 (h!32625 tokens!456)))) (toChars!6002 (transformation!4353 r!2363))) t!204320) tb!136251))

(declare-fun result!166122 () Bool)

(assert (= result!166122 result!166118))

(assert (=> d!676910 t!204320))

(declare-fun b_and!181333 () Bool)

(assert (= b_and!181293 (and (=> t!204320 result!166122) b_and!181333)))

(declare-fun t!204322 () Bool)

(declare-fun tb!136253 () Bool)

(assert (=> (and b!2287519 (= (toChars!6002 (transformation!4353 (h!32624 rules!1750))) (toChars!6002 (transformation!4353 r!2363))) t!204322) tb!136253))

(declare-fun result!166124 () Bool)

(assert (= result!166124 result!166118))

(assert (=> d!676910 t!204322))

(declare-fun b_and!181335 () Bool)

(assert (= b_and!181295 (and (=> t!204322 result!166124) b_and!181335)))

(declare-fun b_lambda!72859 () Bool)

(assert (=> (not b_lambda!72859) (not d!676910)))

(assert (=> d!676910 t!204292))

(declare-fun b_and!181337 () Bool)

(assert (= b_and!181297 (and (=> t!204292 result!166088) b_and!181337)))

(assert (=> d!676910 t!204294))

(declare-fun b_and!181339 () Bool)

(assert (= b_and!181299 (and (=> t!204294 result!166092) b_and!181339)))

(assert (=> d!676910 t!204296))

(declare-fun b_and!181341 () Bool)

(assert (= b_and!181301 (and (=> t!204296 result!166094) b_and!181341)))

(assert (=> d!676910 t!204298))

(declare-fun b_and!181343 () Bool)

(assert (= b_and!181303 (and (=> t!204298 result!166096) b_and!181343)))

(assert (=> d!676910 m!2715509))

(declare-fun m!2715565 () Bool)

(assert (=> d!676910 m!2715565))

(declare-fun m!2715567 () Bool)

(assert (=> d!676910 m!2715567))

(declare-fun m!2715569 () Bool)

(assert (=> d!676910 m!2715569))

(assert (=> d!676910 m!2715509))

(assert (=> d!676910 m!2715567))

(declare-fun m!2715571 () Bool)

(assert (=> d!676910 m!2715571))

(assert (=> b!2287536 d!676910))

(declare-fun d!676932 () Bool)

(declare-fun fromListB!1372 (List!27316) BalanceConc!17436)

(assert (=> d!676932 (= (seqFromList!3057 lt!848837) (fromListB!1372 lt!848837))))

(declare-fun bs!456938 () Bool)

(assert (= bs!456938 d!676932))

(declare-fun m!2715573 () Bool)

(assert (=> bs!456938 m!2715573))

(assert (=> b!2287536 d!676932))

(declare-fun d!676934 () Bool)

(declare-fun lt!848867 () Int)

(assert (=> d!676934 (= lt!848867 (size!21424 (list!10644 (charsOf!2741 (head!4974 tokens!456)))))))

(declare-fun size!21427 (Conc!8854) Int)

(assert (=> d!676934 (= lt!848867 (size!21427 (c!362854 (charsOf!2741 (head!4974 tokens!456)))))))

(assert (=> d!676934 (= (size!21423 (charsOf!2741 (head!4974 tokens!456))) lt!848867)))

(declare-fun bs!456939 () Bool)

(assert (= bs!456939 d!676934))

(assert (=> bs!456939 m!2715345))

(assert (=> bs!456939 m!2715367))

(assert (=> bs!456939 m!2715367))

(declare-fun m!2715575 () Bool)

(assert (=> bs!456939 m!2715575))

(declare-fun m!2715577 () Bool)

(assert (=> bs!456939 m!2715577))

(assert (=> b!2287515 d!676934))

(assert (=> b!2287515 d!676898))

(assert (=> b!2287515 d!676900))

(declare-fun d!676936 () Bool)

(declare-fun lt!848870 () Int)

(assert (=> d!676936 (>= lt!848870 0)))

(declare-fun e!1465685 () Int)

(assert (=> d!676936 (= lt!848870 e!1465685)))

(declare-fun c!362879 () Bool)

(assert (=> d!676936 (= c!362879 ((_ is Nil!27222) otherP!12))))

(assert (=> d!676936 (= (size!21424 otherP!12) lt!848870)))

(declare-fun b!2287686 () Bool)

(assert (=> b!2287686 (= e!1465685 0)))

(declare-fun b!2287687 () Bool)

(assert (=> b!2287687 (= e!1465685 (+ 1 (size!21424 (t!204272 otherP!12))))))

(assert (= (and d!676936 c!362879) b!2287686))

(assert (= (and d!676936 (not c!362879)) b!2287687))

(declare-fun m!2715579 () Bool)

(assert (=> b!2287687 m!2715579))

(assert (=> b!2287515 d!676936))

(declare-fun b!2287699 () Bool)

(declare-fun e!1465691 () Int)

(assert (=> b!2287699 (= e!1465691 (- 1))))

(declare-fun b!2287697 () Bool)

(declare-fun e!1465692 () Int)

(assert (=> b!2287697 (= e!1465692 e!1465691)))

(declare-fun c!362885 () Bool)

(assert (=> b!2287697 (= c!362885 (and ((_ is Cons!27223) rules!1750) (not (= (h!32624 rules!1750) r!2363))))))

(declare-fun b!2287696 () Bool)

(assert (=> b!2287696 (= e!1465692 0)))

(declare-fun b!2287698 () Bool)

(assert (=> b!2287698 (= e!1465691 (+ 1 (getIndex!366 (t!204273 rules!1750) r!2363)))))

(declare-fun d!676938 () Bool)

(declare-fun lt!848873 () Int)

(assert (=> d!676938 (>= lt!848873 0)))

(assert (=> d!676938 (= lt!848873 e!1465692)))

(declare-fun c!362884 () Bool)

(assert (=> d!676938 (= c!362884 (and ((_ is Cons!27223) rules!1750) (= (h!32624 rules!1750) r!2363)))))

(assert (=> d!676938 (contains!4729 rules!1750 r!2363)))

(assert (=> d!676938 (= (getIndex!366 rules!1750 r!2363) lt!848873)))

(assert (= (and d!676938 c!362884) b!2287696))

(assert (= (and d!676938 (not c!362884)) b!2287697))

(assert (= (and b!2287697 c!362885) b!2287698))

(assert (= (and b!2287697 (not c!362885)) b!2287699))

(declare-fun m!2715581 () Bool)

(assert (=> b!2287698 m!2715581))

(assert (=> d!676938 m!2715375))

(assert (=> b!2287526 d!676938))

(declare-fun b!2287703 () Bool)

(declare-fun e!1465693 () Int)

(assert (=> b!2287703 (= e!1465693 (- 1))))

(declare-fun b!2287701 () Bool)

(declare-fun e!1465694 () Int)

(assert (=> b!2287701 (= e!1465694 e!1465693)))

(declare-fun c!362887 () Bool)

(assert (=> b!2287701 (= c!362887 (and ((_ is Cons!27223) rules!1750) (not (= (h!32624 rules!1750) otherR!12))))))

(declare-fun b!2287700 () Bool)

(assert (=> b!2287700 (= e!1465694 0)))

(declare-fun b!2287702 () Bool)

(assert (=> b!2287702 (= e!1465693 (+ 1 (getIndex!366 (t!204273 rules!1750) otherR!12)))))

(declare-fun d!676940 () Bool)

(declare-fun lt!848874 () Int)

(assert (=> d!676940 (>= lt!848874 0)))

(assert (=> d!676940 (= lt!848874 e!1465694)))

(declare-fun c!362886 () Bool)

(assert (=> d!676940 (= c!362886 (and ((_ is Cons!27223) rules!1750) (= (h!32624 rules!1750) otherR!12)))))

(assert (=> d!676940 (contains!4729 rules!1750 otherR!12)))

(assert (=> d!676940 (= (getIndex!366 rules!1750 otherR!12) lt!848874)))

(assert (= (and d!676940 c!362886) b!2287700))

(assert (= (and d!676940 (not c!362886)) b!2287701))

(assert (= (and b!2287701 c!362887) b!2287702))

(assert (= (and b!2287701 (not c!362887)) b!2287703))

(declare-fun m!2715583 () Bool)

(assert (=> b!2287702 m!2715583))

(assert (=> d!676940 m!2715409))

(assert (=> b!2287526 d!676940))

(declare-fun d!676942 () Bool)

(declare-fun res!978027 () Bool)

(declare-fun e!1465703 () Bool)

(assert (=> d!676942 (=> (not res!978027) (not e!1465703))))

(assert (=> d!676942 (= res!978027 (validRegex!2522 (regex!4353 otherR!12)))))

(assert (=> d!676942 (= (ruleValid!1443 thiss!16613 otherR!12) e!1465703)))

(declare-fun b!2287726 () Bool)

(declare-fun res!978028 () Bool)

(assert (=> b!2287726 (=> (not res!978028) (not e!1465703))))

(assert (=> b!2287726 (= res!978028 (not (nullable!1860 (regex!4353 otherR!12))))))

(declare-fun b!2287727 () Bool)

(assert (=> b!2287727 (= e!1465703 (not (= (tag!4843 otherR!12) (String!29680 ""))))))

(assert (= (and d!676942 res!978027) b!2287726))

(assert (= (and b!2287726 res!978028) b!2287727))

(declare-fun m!2715585 () Bool)

(assert (=> d!676942 m!2715585))

(declare-fun m!2715587 () Bool)

(assert (=> b!2287726 m!2715587))

(assert (=> b!2287526 d!676942))

(declare-fun d!676944 () Bool)

(assert (=> d!676944 (ruleValid!1443 thiss!16613 otherR!12)))

(declare-fun lt!848887 () Unit!40122)

(declare-fun choose!13349 (LexerInterface!3950 Rule!8506 List!27317) Unit!40122)

(assert (=> d!676944 (= lt!848887 (choose!13349 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!676944 (contains!4729 rules!1750 otherR!12)))

(assert (=> d!676944 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!848 thiss!16613 otherR!12 rules!1750) lt!848887)))

(declare-fun bs!456940 () Bool)

(assert (= bs!456940 d!676944))

(assert (=> bs!456940 m!2715387))

(declare-fun m!2715589 () Bool)

(assert (=> bs!456940 m!2715589))

(assert (=> bs!456940 m!2715409))

(assert (=> b!2287526 d!676944))

(declare-fun d!676946 () Bool)

(declare-fun list!10649 (Conc!8855) List!27318)

(assert (=> d!676946 (= (list!10645 (_1!16014 lt!848827)) (list!10649 (c!362856 (_1!16014 lt!848827))))))

(declare-fun bs!456941 () Bool)

(assert (= bs!456941 d!676946))

(declare-fun m!2715591 () Bool)

(assert (=> bs!456941 m!2715591))

(assert (=> b!2287537 d!676946))

(declare-fun d!676948 () Bool)

(assert (=> d!676948 (= (list!10644 (_2!16014 lt!848827)) (list!10648 (c!362854 (_2!16014 lt!848827))))))

(declare-fun bs!456942 () Bool)

(assert (= bs!456942 d!676948))

(declare-fun m!2715593 () Bool)

(assert (=> bs!456942 m!2715593))

(assert (=> b!2287537 d!676948))

(declare-fun b!2287938 () Bool)

(declare-fun e!1465832 () Bool)

(declare-fun lt!848932 () tuple2!27008)

(declare-fun isEmpty!15493 (BalanceConc!17438) Bool)

(assert (=> b!2287938 (= e!1465832 (not (isEmpty!15493 (_1!16014 lt!848932))))))

(declare-fun b!2287939 () Bool)

(declare-fun e!1465831 () Bool)

(assert (=> b!2287939 (= e!1465831 e!1465832)))

(declare-fun res!978112 () Bool)

(assert (=> b!2287939 (= res!978112 (< (size!21423 (_2!16014 lt!848932)) (size!21423 (seqFromList!3057 input!1722))))))

(assert (=> b!2287939 (=> (not res!978112) (not e!1465832))))

(declare-fun b!2287940 () Bool)

(assert (=> b!2287940 (= e!1465831 (= (_2!16014 lt!848932) (seqFromList!3057 input!1722)))))

(declare-fun e!1465830 () Bool)

(declare-fun b!2287941 () Bool)

(declare-fun lexList!1106 (LexerInterface!3950 List!27317 List!27316) tuple2!27010)

(assert (=> b!2287941 (= e!1465830 (= (list!10644 (_2!16014 lt!848932)) (_2!16015 (lexList!1106 thiss!16613 rules!1750 (list!10644 (seqFromList!3057 input!1722))))))))

(declare-fun b!2287937 () Bool)

(declare-fun res!978111 () Bool)

(assert (=> b!2287937 (=> (not res!978111) (not e!1465830))))

(assert (=> b!2287937 (= res!978111 (= (list!10645 (_1!16014 lt!848932)) (_1!16015 (lexList!1106 thiss!16613 rules!1750 (list!10644 (seqFromList!3057 input!1722))))))))

(declare-fun d!676950 () Bool)

(assert (=> d!676950 e!1465830))

(declare-fun res!978113 () Bool)

(assert (=> d!676950 (=> (not res!978113) (not e!1465830))))

(assert (=> d!676950 (= res!978113 e!1465831)))

(declare-fun c!362923 () Bool)

(declare-fun size!21428 (BalanceConc!17438) Int)

(assert (=> d!676950 (= c!362923 (> (size!21428 (_1!16014 lt!848932)) 0))))

(declare-fun lexTailRecV2!781 (LexerInterface!3950 List!27317 BalanceConc!17436 BalanceConc!17436 BalanceConc!17436 BalanceConc!17438) tuple2!27008)

(assert (=> d!676950 (= lt!848932 (lexTailRecV2!781 thiss!16613 rules!1750 (seqFromList!3057 input!1722) (BalanceConc!17437 Empty!8854) (seqFromList!3057 input!1722) (BalanceConc!17439 Empty!8855)))))

(assert (=> d!676950 (= (lex!1789 thiss!16613 rules!1750 (seqFromList!3057 input!1722)) lt!848932)))

(assert (= (and d!676950 c!362923) b!2287939))

(assert (= (and d!676950 (not c!362923)) b!2287940))

(assert (= (and b!2287939 res!978112) b!2287938))

(assert (= (and d!676950 res!978113) b!2287937))

(assert (= (and b!2287937 res!978111) b!2287941))

(declare-fun m!2715765 () Bool)

(assert (=> b!2287938 m!2715765))

(declare-fun m!2715767 () Bool)

(assert (=> d!676950 m!2715767))

(assert (=> d!676950 m!2715399))

(assert (=> d!676950 m!2715399))

(declare-fun m!2715769 () Bool)

(assert (=> d!676950 m!2715769))

(declare-fun m!2715771 () Bool)

(assert (=> b!2287939 m!2715771))

(assert (=> b!2287939 m!2715399))

(declare-fun m!2715773 () Bool)

(assert (=> b!2287939 m!2715773))

(declare-fun m!2715775 () Bool)

(assert (=> b!2287941 m!2715775))

(assert (=> b!2287941 m!2715399))

(declare-fun m!2715777 () Bool)

(assert (=> b!2287941 m!2715777))

(assert (=> b!2287941 m!2715777))

(declare-fun m!2715779 () Bool)

(assert (=> b!2287941 m!2715779))

(declare-fun m!2715781 () Bool)

(assert (=> b!2287937 m!2715781))

(assert (=> b!2287937 m!2715399))

(assert (=> b!2287937 m!2715777))

(assert (=> b!2287937 m!2715777))

(assert (=> b!2287937 m!2715779))

(assert (=> b!2287537 d!676950))

(declare-fun d!677010 () Bool)

(assert (=> d!677010 (= (seqFromList!3057 input!1722) (fromListB!1372 input!1722))))

(declare-fun bs!456949 () Bool)

(assert (= bs!456949 d!677010))

(declare-fun m!2715783 () Bool)

(assert (=> bs!456949 m!2715783))

(assert (=> b!2287537 d!677010))

(declare-fun d!677012 () Bool)

(assert (=> d!677012 (= (isEmpty!15489 tokens!456) ((_ is Nil!27224) tokens!456))))

(assert (=> b!2287541 d!677012))

(declare-fun d!677014 () Bool)

(declare-fun lt!848935 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3650 (List!27317) (InoxSet Rule!8506))

(assert (=> d!677014 (= lt!848935 (select (content!3650 rules!1750) otherR!12))))

(declare-fun e!1465838 () Bool)

(assert (=> d!677014 (= lt!848935 e!1465838)))

(declare-fun res!978119 () Bool)

(assert (=> d!677014 (=> (not res!978119) (not e!1465838))))

(assert (=> d!677014 (= res!978119 ((_ is Cons!27223) rules!1750))))

(assert (=> d!677014 (= (contains!4729 rules!1750 otherR!12) lt!848935)))

(declare-fun b!2287946 () Bool)

(declare-fun e!1465837 () Bool)

(assert (=> b!2287946 (= e!1465838 e!1465837)))

(declare-fun res!978118 () Bool)

(assert (=> b!2287946 (=> res!978118 e!1465837)))

(assert (=> b!2287946 (= res!978118 (= (h!32624 rules!1750) otherR!12))))

(declare-fun b!2287947 () Bool)

(assert (=> b!2287947 (= e!1465837 (contains!4729 (t!204273 rules!1750) otherR!12))))

(assert (= (and d!677014 res!978119) b!2287946))

(assert (= (and b!2287946 (not res!978118)) b!2287947))

(declare-fun m!2715785 () Bool)

(assert (=> d!677014 m!2715785))

(declare-fun m!2715787 () Bool)

(assert (=> d!677014 m!2715787))

(declare-fun m!2715789 () Bool)

(assert (=> b!2287947 m!2715789))

(assert (=> b!2287539 d!677014))

(declare-fun d!677016 () Bool)

(assert (=> d!677016 (= (inv!36817 (tag!4843 otherR!12)) (= (mod (str.len (value!137879 (tag!4843 otherR!12))) 2) 0))))

(assert (=> b!2287529 d!677016))

(declare-fun d!677018 () Bool)

(declare-fun res!978122 () Bool)

(declare-fun e!1465841 () Bool)

(assert (=> d!677018 (=> (not res!978122) (not e!1465841))))

(declare-fun semiInverseModEq!1762 (Int Int) Bool)

(assert (=> d!677018 (= res!978122 (semiInverseModEq!1762 (toChars!6002 (transformation!4353 otherR!12)) (toValue!6143 (transformation!4353 otherR!12))))))

(assert (=> d!677018 (= (inv!36820 (transformation!4353 otherR!12)) e!1465841)))

(declare-fun b!2287950 () Bool)

(declare-fun equivClasses!1681 (Int Int) Bool)

(assert (=> b!2287950 (= e!1465841 (equivClasses!1681 (toChars!6002 (transformation!4353 otherR!12)) (toValue!6143 (transformation!4353 otherR!12))))))

(assert (= (and d!677018 res!978122) b!2287950))

(declare-fun m!2715791 () Bool)

(assert (=> d!677018 m!2715791))

(declare-fun m!2715793 () Bool)

(assert (=> b!2287950 m!2715793))

(assert (=> b!2287529 d!677018))

(declare-fun d!677020 () Bool)

(assert (=> d!677020 (= (inv!36817 (tag!4843 (h!32624 rules!1750))) (= (mod (str.len (value!137879 (tag!4843 (h!32624 rules!1750)))) 2) 0))))

(assert (=> b!2287532 d!677020))

(declare-fun d!677022 () Bool)

(declare-fun res!978123 () Bool)

(declare-fun e!1465842 () Bool)

(assert (=> d!677022 (=> (not res!978123) (not e!1465842))))

(assert (=> d!677022 (= res!978123 (semiInverseModEq!1762 (toChars!6002 (transformation!4353 (h!32624 rules!1750))) (toValue!6143 (transformation!4353 (h!32624 rules!1750)))))))

(assert (=> d!677022 (= (inv!36820 (transformation!4353 (h!32624 rules!1750))) e!1465842)))

(declare-fun b!2287951 () Bool)

(assert (=> b!2287951 (= e!1465842 (equivClasses!1681 (toChars!6002 (transformation!4353 (h!32624 rules!1750))) (toValue!6143 (transformation!4353 (h!32624 rules!1750)))))))

(assert (= (and d!677022 res!978123) b!2287951))

(declare-fun m!2715795 () Bool)

(assert (=> d!677022 m!2715795))

(declare-fun m!2715797 () Bool)

(assert (=> b!2287951 m!2715797))

(assert (=> b!2287532 d!677022))

(declare-fun d!677024 () Bool)

(assert (=> d!677024 (= (isEmpty!15488 lt!848837) ((_ is Nil!27222) lt!848837))))

(assert (=> b!2287522 d!677024))

(declare-fun d!677026 () Bool)

(assert (=> d!677026 (= (get!8209 lt!848833) (v!30416 lt!848833))))

(assert (=> b!2287531 d!677026))

(declare-fun b!2287970 () Bool)

(declare-fun res!978144 () Bool)

(declare-fun e!1465849 () Bool)

(assert (=> b!2287970 (=> (not res!978144) (not e!1465849))))

(declare-fun lt!848950 () Option!5343)

(assert (=> b!2287970 (= res!978144 (< (size!21424 (_2!16013 (get!8209 lt!848950))) (size!21424 input!1722)))))

(declare-fun b!2287971 () Bool)

(declare-fun e!1465850 () Bool)

(assert (=> b!2287971 (= e!1465850 e!1465849)))

(declare-fun res!978140 () Bool)

(assert (=> b!2287971 (=> (not res!978140) (not e!1465849))))

(declare-fun isDefined!4226 (Option!5343) Bool)

(assert (=> b!2287971 (= res!978140 (isDefined!4226 lt!848950))))

(declare-fun b!2287972 () Bool)

(declare-fun res!978141 () Bool)

(assert (=> b!2287972 (=> (not res!978141) (not e!1465849))))

(assert (=> b!2287972 (= res!978141 (matchR!2958 (regex!4353 (rule!6683 (_1!16013 (get!8209 lt!848950)))) (list!10644 (charsOf!2741 (_1!16013 (get!8209 lt!848950))))))))

(declare-fun b!2287973 () Bool)

(declare-fun res!978138 () Bool)

(assert (=> b!2287973 (=> (not res!978138) (not e!1465849))))

(assert (=> b!2287973 (= res!978138 (= (list!10644 (charsOf!2741 (_1!16013 (get!8209 lt!848950)))) (originalCharacters!5123 (_1!16013 (get!8209 lt!848950)))))))

(declare-fun b!2287974 () Bool)

(assert (=> b!2287974 (= e!1465849 (contains!4729 rules!1750 (rule!6683 (_1!16013 (get!8209 lt!848950)))))))

(declare-fun b!2287975 () Bool)

(declare-fun res!978143 () Bool)

(assert (=> b!2287975 (=> (not res!978143) (not e!1465849))))

(assert (=> b!2287975 (= res!978143 (= (value!137880 (_1!16013 (get!8209 lt!848950))) (apply!6625 (transformation!4353 (rule!6683 (_1!16013 (get!8209 lt!848950)))) (seqFromList!3057 (originalCharacters!5123 (_1!16013 (get!8209 lt!848950)))))))))

(declare-fun d!677028 () Bool)

(assert (=> d!677028 e!1465850))

(declare-fun res!978142 () Bool)

(assert (=> d!677028 (=> res!978142 e!1465850)))

(declare-fun isEmpty!15494 (Option!5343) Bool)

(assert (=> d!677028 (= res!978142 (isEmpty!15494 lt!848950))))

(declare-fun e!1465851 () Option!5343)

(assert (=> d!677028 (= lt!848950 e!1465851)))

(declare-fun c!362926 () Bool)

(assert (=> d!677028 (= c!362926 (and ((_ is Cons!27223) rules!1750) ((_ is Nil!27223) (t!204273 rules!1750))))))

(declare-fun lt!848948 () Unit!40122)

(declare-fun lt!848946 () Unit!40122)

(assert (=> d!677028 (= lt!848948 lt!848946)))

(assert (=> d!677028 (isPrefix!2343 input!1722 input!1722)))

(declare-fun lemmaIsPrefixRefl!1489 (List!27316 List!27316) Unit!40122)

(assert (=> d!677028 (= lt!848946 (lemmaIsPrefixRefl!1489 input!1722 input!1722))))

(declare-fun rulesValidInductive!1531 (LexerInterface!3950 List!27317) Bool)

(assert (=> d!677028 (rulesValidInductive!1531 thiss!16613 rules!1750)))

(assert (=> d!677028 (= (maxPrefix!2214 thiss!16613 rules!1750 input!1722) lt!848950)))

(declare-fun b!2287976 () Bool)

(declare-fun lt!848947 () Option!5343)

(declare-fun lt!848949 () Option!5343)

(assert (=> b!2287976 (= e!1465851 (ite (and ((_ is None!5342) lt!848947) ((_ is None!5342) lt!848949)) None!5342 (ite ((_ is None!5342) lt!848949) lt!848947 (ite ((_ is None!5342) lt!848947) lt!848949 (ite (>= (size!21422 (_1!16013 (v!30416 lt!848947))) (size!21422 (_1!16013 (v!30416 lt!848949)))) lt!848947 lt!848949)))))))

(declare-fun call!136607 () Option!5343)

(assert (=> b!2287976 (= lt!848947 call!136607)))

(assert (=> b!2287976 (= lt!848949 (maxPrefix!2214 thiss!16613 (t!204273 rules!1750) input!1722))))

(declare-fun b!2287977 () Bool)

(assert (=> b!2287977 (= e!1465851 call!136607)))

(declare-fun bm!136602 () Bool)

(declare-fun maxPrefixOneRule!1384 (LexerInterface!3950 Rule!8506 List!27316) Option!5343)

(assert (=> bm!136602 (= call!136607 (maxPrefixOneRule!1384 thiss!16613 (h!32624 rules!1750) input!1722))))

(declare-fun b!2287978 () Bool)

(declare-fun res!978139 () Bool)

(assert (=> b!2287978 (=> (not res!978139) (not e!1465849))))

(assert (=> b!2287978 (= res!978139 (= (++!6653 (list!10644 (charsOf!2741 (_1!16013 (get!8209 lt!848950)))) (_2!16013 (get!8209 lt!848950))) input!1722))))

(assert (= (and d!677028 c!362926) b!2287977))

(assert (= (and d!677028 (not c!362926)) b!2287976))

(assert (= (or b!2287977 b!2287976) bm!136602))

(assert (= (and d!677028 (not res!978142)) b!2287971))

(assert (= (and b!2287971 res!978140) b!2287973))

(assert (= (and b!2287973 res!978138) b!2287970))

(assert (= (and b!2287970 res!978144) b!2287978))

(assert (= (and b!2287978 res!978139) b!2287975))

(assert (= (and b!2287975 res!978143) b!2287972))

(assert (= (and b!2287972 res!978141) b!2287974))

(declare-fun m!2715799 () Bool)

(assert (=> b!2287971 m!2715799))

(declare-fun m!2715801 () Bool)

(assert (=> b!2287976 m!2715801))

(declare-fun m!2715803 () Bool)

(assert (=> b!2287974 m!2715803))

(declare-fun m!2715805 () Bool)

(assert (=> b!2287974 m!2715805))

(assert (=> b!2287973 m!2715803))

(declare-fun m!2715807 () Bool)

(assert (=> b!2287973 m!2715807))

(assert (=> b!2287973 m!2715807))

(declare-fun m!2715809 () Bool)

(assert (=> b!2287973 m!2715809))

(assert (=> b!2287978 m!2715803))

(assert (=> b!2287978 m!2715807))

(assert (=> b!2287978 m!2715807))

(assert (=> b!2287978 m!2715809))

(assert (=> b!2287978 m!2715809))

(declare-fun m!2715811 () Bool)

(assert (=> b!2287978 m!2715811))

(declare-fun m!2715813 () Bool)

(assert (=> bm!136602 m!2715813))

(assert (=> b!2287970 m!2715803))

(declare-fun m!2715815 () Bool)

(assert (=> b!2287970 m!2715815))

(assert (=> b!2287970 m!2715491))

(assert (=> b!2287972 m!2715803))

(assert (=> b!2287972 m!2715807))

(assert (=> b!2287972 m!2715807))

(assert (=> b!2287972 m!2715809))

(assert (=> b!2287972 m!2715809))

(declare-fun m!2715817 () Bool)

(assert (=> b!2287972 m!2715817))

(declare-fun m!2715819 () Bool)

(assert (=> d!677028 m!2715819))

(declare-fun m!2715821 () Bool)

(assert (=> d!677028 m!2715821))

(declare-fun m!2715823 () Bool)

(assert (=> d!677028 m!2715823))

(declare-fun m!2715825 () Bool)

(assert (=> d!677028 m!2715825))

(assert (=> b!2287975 m!2715803))

(declare-fun m!2715827 () Bool)

(assert (=> b!2287975 m!2715827))

(assert (=> b!2287975 m!2715827))

(declare-fun m!2715829 () Bool)

(assert (=> b!2287975 m!2715829))

(assert (=> b!2287531 d!677028))

(assert (=> b!2287542 d!676900))

(declare-fun d!677030 () Bool)

(assert (=> d!677030 (= (inv!36817 (tag!4843 (rule!6683 (h!32625 tokens!456)))) (= (mod (str.len (value!137879 (tag!4843 (rule!6683 (h!32625 tokens!456))))) 2) 0))))

(assert (=> b!2287521 d!677030))

(declare-fun d!677032 () Bool)

(declare-fun res!978145 () Bool)

(declare-fun e!1465852 () Bool)

(assert (=> d!677032 (=> (not res!978145) (not e!1465852))))

(assert (=> d!677032 (= res!978145 (semiInverseModEq!1762 (toChars!6002 (transformation!4353 (rule!6683 (h!32625 tokens!456)))) (toValue!6143 (transformation!4353 (rule!6683 (h!32625 tokens!456))))))))

(assert (=> d!677032 (= (inv!36820 (transformation!4353 (rule!6683 (h!32625 tokens!456)))) e!1465852)))

(declare-fun b!2287979 () Bool)

(assert (=> b!2287979 (= e!1465852 (equivClasses!1681 (toChars!6002 (transformation!4353 (rule!6683 (h!32625 tokens!456)))) (toValue!6143 (transformation!4353 (rule!6683 (h!32625 tokens!456))))))))

(assert (= (and d!677032 res!978145) b!2287979))

(declare-fun m!2715831 () Bool)

(assert (=> d!677032 m!2715831))

(declare-fun m!2715833 () Bool)

(assert (=> b!2287979 m!2715833))

(assert (=> b!2287521 d!677032))

(declare-fun d!677034 () Bool)

(declare-fun res!978146 () Bool)

(declare-fun e!1465853 () Bool)

(assert (=> d!677034 (=> (not res!978146) (not e!1465853))))

(assert (=> d!677034 (= res!978146 (validRegex!2522 (regex!4353 r!2363)))))

(assert (=> d!677034 (= (ruleValid!1443 thiss!16613 r!2363) e!1465853)))

(declare-fun b!2287980 () Bool)

(declare-fun res!978147 () Bool)

(assert (=> b!2287980 (=> (not res!978147) (not e!1465853))))

(assert (=> b!2287980 (= res!978147 (not (nullable!1860 (regex!4353 r!2363))))))

(declare-fun b!2287981 () Bool)

(assert (=> b!2287981 (= e!1465853 (not (= (tag!4843 r!2363) (String!29680 ""))))))

(assert (= (and d!677034 res!978146) b!2287980))

(assert (= (and b!2287980 res!978147) b!2287981))

(assert (=> d!677034 m!2715465))

(assert (=> b!2287980 m!2715467))

(assert (=> b!2287514 d!677034))

(declare-fun d!677036 () Bool)

(assert (=> d!677036 (ruleValid!1443 thiss!16613 r!2363)))

(declare-fun lt!848951 () Unit!40122)

(assert (=> d!677036 (= lt!848951 (choose!13349 thiss!16613 r!2363 rules!1750))))

(assert (=> d!677036 (contains!4729 rules!1750 r!2363)))

(assert (=> d!677036 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!848 thiss!16613 r!2363 rules!1750) lt!848951)))

(declare-fun bs!456950 () Bool)

(assert (= bs!456950 d!677036))

(assert (=> bs!456950 m!2715377))

(declare-fun m!2715835 () Bool)

(assert (=> bs!456950 m!2715835))

(assert (=> bs!456950 m!2715375))

(assert (=> b!2287514 d!677036))

(declare-fun b!2287982 () Bool)

(declare-fun e!1465857 () Bool)

(assert (=> b!2287982 (= e!1465857 (matchR!2958 (derivativeStep!1519 (regex!4353 r!2363) (head!4975 lt!848837)) (tail!3302 lt!848837)))))

(declare-fun d!677038 () Bool)

(declare-fun e!1465859 () Bool)

(assert (=> d!677038 e!1465859))

(declare-fun c!362929 () Bool)

(assert (=> d!677038 (= c!362929 ((_ is EmptyExpr!6701) (regex!4353 r!2363)))))

(declare-fun lt!848952 () Bool)

(assert (=> d!677038 (= lt!848952 e!1465857)))

(declare-fun c!362928 () Bool)

(assert (=> d!677038 (= c!362928 (isEmpty!15488 lt!848837))))

(assert (=> d!677038 (validRegex!2522 (regex!4353 r!2363))))

(assert (=> d!677038 (= (matchR!2958 (regex!4353 r!2363) lt!848837) lt!848952)))

(declare-fun bm!136603 () Bool)

(declare-fun call!136608 () Bool)

(assert (=> bm!136603 (= call!136608 (isEmpty!15488 lt!848837))))

(declare-fun b!2287983 () Bool)

(declare-fun e!1465858 () Bool)

(assert (=> b!2287983 (= e!1465858 (not lt!848952))))

(declare-fun b!2287984 () Bool)

(assert (=> b!2287984 (= e!1465859 (= lt!848952 call!136608))))

(declare-fun b!2287985 () Bool)

(declare-fun res!978149 () Bool)

(declare-fun e!1465854 () Bool)

(assert (=> b!2287985 (=> (not res!978149) (not e!1465854))))

(assert (=> b!2287985 (= res!978149 (not call!136608))))

(declare-fun b!2287986 () Bool)

(declare-fun res!978148 () Bool)

(assert (=> b!2287986 (=> (not res!978148) (not e!1465854))))

(assert (=> b!2287986 (= res!978148 (isEmpty!15488 (tail!3302 lt!848837)))))

(declare-fun b!2287987 () Bool)

(declare-fun res!978150 () Bool)

(declare-fun e!1465860 () Bool)

(assert (=> b!2287987 (=> res!978150 e!1465860)))

(assert (=> b!2287987 (= res!978150 (not ((_ is ElementMatch!6701) (regex!4353 r!2363))))))

(assert (=> b!2287987 (= e!1465858 e!1465860)))

(declare-fun b!2287988 () Bool)

(declare-fun res!978152 () Bool)

(declare-fun e!1465856 () Bool)

(assert (=> b!2287988 (=> res!978152 e!1465856)))

(assert (=> b!2287988 (= res!978152 (not (isEmpty!15488 (tail!3302 lt!848837))))))

(declare-fun b!2287989 () Bool)

(declare-fun e!1465855 () Bool)

(assert (=> b!2287989 (= e!1465855 e!1465856)))

(declare-fun res!978154 () Bool)

(assert (=> b!2287989 (=> res!978154 e!1465856)))

(assert (=> b!2287989 (= res!978154 call!136608)))

(declare-fun b!2287990 () Bool)

(declare-fun res!978155 () Bool)

(assert (=> b!2287990 (=> res!978155 e!1465860)))

(assert (=> b!2287990 (= res!978155 e!1465854)))

(declare-fun res!978153 () Bool)

(assert (=> b!2287990 (=> (not res!978153) (not e!1465854))))

(assert (=> b!2287990 (= res!978153 lt!848952)))

(declare-fun b!2287991 () Bool)

(assert (=> b!2287991 (= e!1465857 (nullable!1860 (regex!4353 r!2363)))))

(declare-fun b!2287992 () Bool)

(assert (=> b!2287992 (= e!1465860 e!1465855)))

(declare-fun res!978151 () Bool)

(assert (=> b!2287992 (=> (not res!978151) (not e!1465855))))

(assert (=> b!2287992 (= res!978151 (not lt!848952))))

(declare-fun b!2287993 () Bool)

(assert (=> b!2287993 (= e!1465859 e!1465858)))

(declare-fun c!362927 () Bool)

(assert (=> b!2287993 (= c!362927 ((_ is EmptyLang!6701) (regex!4353 r!2363)))))

(declare-fun b!2287994 () Bool)

(assert (=> b!2287994 (= e!1465856 (not (= (head!4975 lt!848837) (c!362855 (regex!4353 r!2363)))))))

(declare-fun b!2287995 () Bool)

(assert (=> b!2287995 (= e!1465854 (= (head!4975 lt!848837) (c!362855 (regex!4353 r!2363))))))

(assert (= (and d!677038 c!362928) b!2287991))

(assert (= (and d!677038 (not c!362928)) b!2287982))

(assert (= (and d!677038 c!362929) b!2287984))

(assert (= (and d!677038 (not c!362929)) b!2287993))

(assert (= (and b!2287993 c!362927) b!2287983))

(assert (= (and b!2287993 (not c!362927)) b!2287987))

(assert (= (and b!2287987 (not res!978150)) b!2287990))

(assert (= (and b!2287990 res!978153) b!2287985))

(assert (= (and b!2287985 res!978149) b!2287986))

(assert (= (and b!2287986 res!978148) b!2287995))

(assert (= (and b!2287990 (not res!978155)) b!2287992))

(assert (= (and b!2287992 res!978151) b!2287989))

(assert (= (and b!2287989 (not res!978154)) b!2287988))

(assert (= (and b!2287988 (not res!978152)) b!2287994))

(assert (= (or b!2287984 b!2287985 b!2287989) bm!136603))

(declare-fun m!2715837 () Bool)

(assert (=> b!2287994 m!2715837))

(assert (=> b!2287982 m!2715837))

(assert (=> b!2287982 m!2715837))

(declare-fun m!2715839 () Bool)

(assert (=> b!2287982 m!2715839))

(declare-fun m!2715841 () Bool)

(assert (=> b!2287982 m!2715841))

(assert (=> b!2287982 m!2715839))

(assert (=> b!2287982 m!2715841))

(declare-fun m!2715843 () Bool)

(assert (=> b!2287982 m!2715843))

(assert (=> b!2287986 m!2715841))

(assert (=> b!2287986 m!2715841))

(declare-fun m!2715845 () Bool)

(assert (=> b!2287986 m!2715845))

(assert (=> bm!136603 m!2715381))

(assert (=> b!2287988 m!2715841))

(assert (=> b!2287988 m!2715841))

(assert (=> b!2287988 m!2715845))

(assert (=> d!677038 m!2715381))

(assert (=> d!677038 m!2715465))

(assert (=> b!2287995 m!2715837))

(assert (=> b!2287991 m!2715467))

(assert (=> b!2287525 d!677038))

(declare-fun d!677040 () Bool)

(declare-fun c!362934 () Bool)

(assert (=> d!677040 (= c!362934 ((_ is IntegerValue!13545) (value!137880 (h!32625 tokens!456))))))

(declare-fun e!1465869 () Bool)

(assert (=> d!677040 (= (inv!21 (value!137880 (h!32625 tokens!456))) e!1465869)))

(declare-fun b!2288006 () Bool)

(declare-fun res!978158 () Bool)

(declare-fun e!1465867 () Bool)

(assert (=> b!2288006 (=> res!978158 e!1465867)))

(assert (=> b!2288006 (= res!978158 (not ((_ is IntegerValue!13547) (value!137880 (h!32625 tokens!456)))))))

(declare-fun e!1465868 () Bool)

(assert (=> b!2288006 (= e!1465868 e!1465867)))

(declare-fun b!2288007 () Bool)

(declare-fun inv!15 (TokenValue!4515) Bool)

(assert (=> b!2288007 (= e!1465867 (inv!15 (value!137880 (h!32625 tokens!456))))))

(declare-fun b!2288008 () Bool)

(declare-fun inv!16 (TokenValue!4515) Bool)

(assert (=> b!2288008 (= e!1465869 (inv!16 (value!137880 (h!32625 tokens!456))))))

(declare-fun b!2288009 () Bool)

(assert (=> b!2288009 (= e!1465869 e!1465868)))

(declare-fun c!362935 () Bool)

(assert (=> b!2288009 (= c!362935 ((_ is IntegerValue!13546) (value!137880 (h!32625 tokens!456))))))

(declare-fun b!2288010 () Bool)

(declare-fun inv!17 (TokenValue!4515) Bool)

(assert (=> b!2288010 (= e!1465868 (inv!17 (value!137880 (h!32625 tokens!456))))))

(assert (= (and d!677040 c!362934) b!2288008))

(assert (= (and d!677040 (not c!362934)) b!2288009))

(assert (= (and b!2288009 c!362935) b!2288010))

(assert (= (and b!2288009 (not c!362935)) b!2288006))

(assert (= (and b!2288006 (not res!978158)) b!2288007))

(declare-fun m!2715847 () Bool)

(assert (=> b!2288007 m!2715847))

(declare-fun m!2715849 () Bool)

(assert (=> b!2288008 m!2715849))

(declare-fun m!2715851 () Bool)

(assert (=> b!2288010 m!2715851))

(assert (=> b!2287544 d!677040))

(declare-fun d!677042 () Bool)

(assert (=> d!677042 (= (inv!36817 (tag!4843 r!2363)) (= (mod (str.len (value!137879 (tag!4843 r!2363))) 2) 0))))

(assert (=> b!2287523 d!677042))

(declare-fun d!677044 () Bool)

(declare-fun res!978159 () Bool)

(declare-fun e!1465870 () Bool)

(assert (=> d!677044 (=> (not res!978159) (not e!1465870))))

(assert (=> d!677044 (= res!978159 (semiInverseModEq!1762 (toChars!6002 (transformation!4353 r!2363)) (toValue!6143 (transformation!4353 r!2363))))))

(assert (=> d!677044 (= (inv!36820 (transformation!4353 r!2363)) e!1465870)))

(declare-fun b!2288011 () Bool)

(assert (=> b!2288011 (= e!1465870 (equivClasses!1681 (toChars!6002 (transformation!4353 r!2363)) (toValue!6143 (transformation!4353 r!2363))))))

(assert (= (and d!677044 res!978159) b!2288011))

(declare-fun m!2715853 () Bool)

(assert (=> d!677044 m!2715853))

(declare-fun m!2715855 () Bool)

(assert (=> b!2288011 m!2715855))

(assert (=> b!2287523 d!677044))

(declare-fun d!677046 () Bool)

(assert (=> d!677046 (= (_2!16013 lt!848832) lt!848834)))

(declare-fun lt!848955 () Unit!40122)

(declare-fun choose!13352 (List!27316 List!27316 List!27316 List!27316 List!27316) Unit!40122)

(assert (=> d!677046 (= lt!848955 (choose!13352 lt!848837 (_2!16013 lt!848832) lt!848837 lt!848834 input!1722))))

(assert (=> d!677046 (isPrefix!2343 lt!848837 input!1722)))

(assert (=> d!677046 (= (lemmaSamePrefixThenSameSuffix!1044 lt!848837 (_2!16013 lt!848832) lt!848837 lt!848834 input!1722) lt!848955)))

(declare-fun bs!456951 () Bool)

(assert (= bs!456951 d!677046))

(declare-fun m!2715857 () Bool)

(assert (=> bs!456951 m!2715857))

(declare-fun m!2715859 () Bool)

(assert (=> bs!456951 m!2715859))

(assert (=> b!2287534 d!677046))

(declare-fun b!2288015 () Bool)

(declare-fun e!1465873 () Bool)

(assert (=> b!2288015 (= e!1465873 (>= (size!21424 lt!848831) (size!21424 lt!848837)))))

(declare-fun d!677048 () Bool)

(assert (=> d!677048 e!1465873))

(declare-fun res!978161 () Bool)

(assert (=> d!677048 (=> res!978161 e!1465873)))

(declare-fun lt!848956 () Bool)

(assert (=> d!677048 (= res!978161 (not lt!848956))))

(declare-fun e!1465872 () Bool)

(assert (=> d!677048 (= lt!848956 e!1465872)))

(declare-fun res!978160 () Bool)

(assert (=> d!677048 (=> res!978160 e!1465872)))

(assert (=> d!677048 (= res!978160 ((_ is Nil!27222) lt!848837))))

(assert (=> d!677048 (= (isPrefix!2343 lt!848837 lt!848831) lt!848956)))

(declare-fun b!2288012 () Bool)

(declare-fun e!1465871 () Bool)

(assert (=> b!2288012 (= e!1465872 e!1465871)))

(declare-fun res!978163 () Bool)

(assert (=> b!2288012 (=> (not res!978163) (not e!1465871))))

(assert (=> b!2288012 (= res!978163 (not ((_ is Nil!27222) lt!848831)))))

(declare-fun b!2288013 () Bool)

(declare-fun res!978162 () Bool)

(assert (=> b!2288013 (=> (not res!978162) (not e!1465871))))

(assert (=> b!2288013 (= res!978162 (= (head!4975 lt!848837) (head!4975 lt!848831)))))

(declare-fun b!2288014 () Bool)

(assert (=> b!2288014 (= e!1465871 (isPrefix!2343 (tail!3302 lt!848837) (tail!3302 lt!848831)))))

(assert (= (and d!677048 (not res!978160)) b!2288012))

(assert (= (and b!2288012 res!978163) b!2288013))

(assert (= (and b!2288013 res!978162) b!2288014))

(assert (= (and d!677048 (not res!978161)) b!2288015))

(declare-fun m!2715861 () Bool)

(assert (=> b!2288015 m!2715861))

(assert (=> b!2288015 m!2715427))

(assert (=> b!2288013 m!2715837))

(declare-fun m!2715863 () Bool)

(assert (=> b!2288013 m!2715863))

(assert (=> b!2288014 m!2715841))

(declare-fun m!2715865 () Bool)

(assert (=> b!2288014 m!2715865))

(assert (=> b!2288014 m!2715841))

(assert (=> b!2288014 m!2715865))

(declare-fun m!2715867 () Bool)

(assert (=> b!2288014 m!2715867))

(assert (=> b!2287534 d!677048))

(declare-fun d!677050 () Bool)

(assert (=> d!677050 (isPrefix!2343 lt!848837 (++!6653 lt!848837 (_2!16013 lt!848832)))))

(declare-fun lt!848959 () Unit!40122)

(declare-fun choose!13353 (List!27316 List!27316) Unit!40122)

(assert (=> d!677050 (= lt!848959 (choose!13353 lt!848837 (_2!16013 lt!848832)))))

(assert (=> d!677050 (= (lemmaConcatTwoListThenFirstIsPrefix!1548 lt!848837 (_2!16013 lt!848832)) lt!848959)))

(declare-fun bs!456952 () Bool)

(assert (= bs!456952 d!677050))

(assert (=> bs!456952 m!2715425))

(assert (=> bs!456952 m!2715425))

(declare-fun m!2715869 () Bool)

(assert (=> bs!456952 m!2715869))

(declare-fun m!2715871 () Bool)

(assert (=> bs!456952 m!2715871))

(assert (=> b!2287534 d!677050))

(assert (=> b!2287534 d!676936))

(declare-fun d!677052 () Bool)

(assert (=> d!677052 (= (list!10644 (charsOf!2741 (h!32625 tokens!456))) (list!10648 (c!362854 (charsOf!2741 (h!32625 tokens!456)))))))

(declare-fun bs!456953 () Bool)

(assert (= bs!456953 d!677052))

(declare-fun m!2715873 () Bool)

(assert (=> bs!456953 m!2715873))

(assert (=> b!2287534 d!677052))

(declare-fun b!2288025 () Bool)

(declare-fun e!1465878 () List!27316)

(assert (=> b!2288025 (= e!1465878 (Cons!27222 (h!32623 lt!848837) (++!6653 (t!204272 lt!848837) (_2!16013 lt!848832))))))

(declare-fun b!2288024 () Bool)

(assert (=> b!2288024 (= e!1465878 (_2!16013 lt!848832))))

(declare-fun d!677054 () Bool)

(declare-fun e!1465879 () Bool)

(assert (=> d!677054 e!1465879))

(declare-fun res!978168 () Bool)

(assert (=> d!677054 (=> (not res!978168) (not e!1465879))))

(declare-fun lt!848962 () List!27316)

(declare-fun content!3651 (List!27316) (InoxSet C!13548))

(assert (=> d!677054 (= res!978168 (= (content!3651 lt!848962) ((_ map or) (content!3651 lt!848837) (content!3651 (_2!16013 lt!848832)))))))

(assert (=> d!677054 (= lt!848962 e!1465878)))

(declare-fun c!362938 () Bool)

(assert (=> d!677054 (= c!362938 ((_ is Nil!27222) lt!848837))))

(assert (=> d!677054 (= (++!6653 lt!848837 (_2!16013 lt!848832)) lt!848962)))

(declare-fun b!2288026 () Bool)

(declare-fun res!978169 () Bool)

(assert (=> b!2288026 (=> (not res!978169) (not e!1465879))))

(assert (=> b!2288026 (= res!978169 (= (size!21424 lt!848962) (+ (size!21424 lt!848837) (size!21424 (_2!16013 lt!848832)))))))

(declare-fun b!2288027 () Bool)

(assert (=> b!2288027 (= e!1465879 (or (not (= (_2!16013 lt!848832) Nil!27222)) (= lt!848962 lt!848837)))))

(assert (= (and d!677054 c!362938) b!2288024))

(assert (= (and d!677054 (not c!362938)) b!2288025))

(assert (= (and d!677054 res!978168) b!2288026))

(assert (= (and b!2288026 res!978169) b!2288027))

(declare-fun m!2715875 () Bool)

(assert (=> b!2288025 m!2715875))

(declare-fun m!2715877 () Bool)

(assert (=> d!677054 m!2715877))

(declare-fun m!2715879 () Bool)

(assert (=> d!677054 m!2715879))

(declare-fun m!2715881 () Bool)

(assert (=> d!677054 m!2715881))

(declare-fun m!2715883 () Bool)

(assert (=> b!2288026 m!2715883))

(assert (=> b!2288026 m!2715427))

(declare-fun m!2715885 () Bool)

(assert (=> b!2288026 m!2715885))

(assert (=> b!2287534 d!677054))

(declare-fun d!677056 () Bool)

(declare-fun lt!848963 () BalanceConc!17436)

(assert (=> d!677056 (= (list!10644 lt!848963) (originalCharacters!5123 (h!32625 tokens!456)))))

(assert (=> d!677056 (= lt!848963 (dynLambda!11819 (toChars!6002 (transformation!4353 (rule!6683 (h!32625 tokens!456)))) (value!137880 (h!32625 tokens!456))))))

(assert (=> d!677056 (= (charsOf!2741 (h!32625 tokens!456)) lt!848963)))

(declare-fun b_lambda!72877 () Bool)

(assert (=> (not b_lambda!72877) (not d!677056)))

(assert (=> d!677056 t!204284))

(declare-fun b_and!181377 () Bool)

(assert (= b_and!181329 (and (=> t!204284 result!166080) b_and!181377)))

(assert (=> d!677056 t!204286))

(declare-fun b_and!181379 () Bool)

(assert (= b_and!181331 (and (=> t!204286 result!166082) b_and!181379)))

(assert (=> d!677056 t!204288))

(declare-fun b_and!181381 () Bool)

(assert (= b_and!181333 (and (=> t!204288 result!166084) b_and!181381)))

(assert (=> d!677056 t!204290))

(declare-fun b_and!181383 () Bool)

(assert (= b_and!181335 (and (=> t!204290 result!166086) b_and!181383)))

(declare-fun m!2715887 () Bool)

(assert (=> d!677056 m!2715887))

(assert (=> d!677056 m!2715485))

(assert (=> b!2287534 d!677056))

(declare-fun d!677058 () Bool)

(declare-fun lt!848966 () List!27316)

(assert (=> d!677058 (= (++!6653 lt!848837 lt!848966) input!1722)))

(declare-fun e!1465882 () List!27316)

(assert (=> d!677058 (= lt!848966 e!1465882)))

(declare-fun c!362941 () Bool)

(assert (=> d!677058 (= c!362941 ((_ is Cons!27222) lt!848837))))

(assert (=> d!677058 (>= (size!21424 input!1722) (size!21424 lt!848837))))

(assert (=> d!677058 (= (getSuffix!1134 input!1722 lt!848837) lt!848966)))

(declare-fun b!2288032 () Bool)

(assert (=> b!2288032 (= e!1465882 (getSuffix!1134 (tail!3302 input!1722) (t!204272 lt!848837)))))

(declare-fun b!2288033 () Bool)

(assert (=> b!2288033 (= e!1465882 input!1722)))

(assert (= (and d!677058 c!362941) b!2288032))

(assert (= (and d!677058 (not c!362941)) b!2288033))

(declare-fun m!2715889 () Bool)

(assert (=> d!677058 m!2715889))

(assert (=> d!677058 m!2715491))

(assert (=> d!677058 m!2715427))

(assert (=> b!2288032 m!2715499))

(assert (=> b!2288032 m!2715499))

(declare-fun m!2715891 () Bool)

(assert (=> b!2288032 m!2715891))

(assert (=> b!2287534 d!677058))

(declare-fun d!677060 () Bool)

(declare-fun lt!848967 () Int)

(assert (=> d!677060 (>= lt!848967 0)))

(declare-fun e!1465883 () Int)

(assert (=> d!677060 (= lt!848967 e!1465883)))

(declare-fun c!362942 () Bool)

(assert (=> d!677060 (= c!362942 ((_ is Nil!27222) lt!848837))))

(assert (=> d!677060 (= (size!21424 lt!848837) lt!848967)))

(declare-fun b!2288034 () Bool)

(assert (=> b!2288034 (= e!1465883 0)))

(declare-fun b!2288035 () Bool)

(assert (=> b!2288035 (= e!1465883 (+ 1 (size!21424 (t!204272 lt!848837))))))

(assert (= (and d!677060 c!362942) b!2288034))

(assert (= (and d!677060 (not c!362942)) b!2288035))

(declare-fun m!2715893 () Bool)

(assert (=> b!2288035 m!2715893))

(assert (=> b!2287534 d!677060))

(declare-fun d!677062 () Bool)

(declare-fun lt!848968 () Bool)

(assert (=> d!677062 (= lt!848968 (select (content!3650 rules!1750) r!2363))))

(declare-fun e!1465885 () Bool)

(assert (=> d!677062 (= lt!848968 e!1465885)))

(declare-fun res!978171 () Bool)

(assert (=> d!677062 (=> (not res!978171) (not e!1465885))))

(assert (=> d!677062 (= res!978171 ((_ is Cons!27223) rules!1750))))

(assert (=> d!677062 (= (contains!4729 rules!1750 r!2363) lt!848968)))

(declare-fun b!2288036 () Bool)

(declare-fun e!1465884 () Bool)

(assert (=> b!2288036 (= e!1465885 e!1465884)))

(declare-fun res!978170 () Bool)

(assert (=> b!2288036 (=> res!978170 e!1465884)))

(assert (=> b!2288036 (= res!978170 (= (h!32624 rules!1750) r!2363))))

(declare-fun b!2288037 () Bool)

(assert (=> b!2288037 (= e!1465884 (contains!4729 (t!204273 rules!1750) r!2363))))

(assert (= (and d!677062 res!978171) b!2288036))

(assert (= (and b!2288036 (not res!978170)) b!2288037))

(assert (=> d!677062 m!2715785))

(declare-fun m!2715895 () Bool)

(assert (=> d!677062 m!2715895))

(declare-fun m!2715897 () Bool)

(assert (=> b!2288037 m!2715897))

(assert (=> b!2287513 d!677062))

(declare-fun d!677064 () Bool)

(assert (=> d!677064 (= (isEmpty!15490 rules!1750) ((_ is Nil!27223) rules!1750))))

(assert (=> b!2287545 d!677064))

(declare-fun b!2288051 () Bool)

(declare-fun b_free!68613 () Bool)

(declare-fun b_next!69317 () Bool)

(assert (=> b!2288051 (= b_free!68613 (not b_next!69317))))

(declare-fun tb!136287 () Bool)

(declare-fun t!204356 () Bool)

(assert (=> (and b!2288051 (= (toValue!6143 (transformation!4353 (rule!6683 (h!32625 (t!204274 tokens!456))))) (toValue!6143 (transformation!4353 r!2363))) t!204356) tb!136287))

(declare-fun result!166168 () Bool)

(assert (= result!166168 result!166088))

(assert (=> d!676908 t!204356))

(assert (=> d!676910 t!204356))

(declare-fun tp!725292 () Bool)

(declare-fun b_and!181385 () Bool)

(assert (=> b!2288051 (= tp!725292 (and (=> t!204356 result!166168) b_and!181385))))

(declare-fun b_free!68615 () Bool)

(declare-fun b_next!69319 () Bool)

(assert (=> b!2288051 (= b_free!68615 (not b_next!69319))))

(declare-fun t!204358 () Bool)

(declare-fun tb!136289 () Bool)

(assert (=> (and b!2288051 (= (toChars!6002 (transformation!4353 (rule!6683 (h!32625 (t!204274 tokens!456))))) (toChars!6002 (transformation!4353 (rule!6683 (head!4974 tokens!456))))) t!204358) tb!136289))

(declare-fun result!166170 () Bool)

(assert (= result!166170 result!166070))

(assert (=> d!676898 t!204358))

(declare-fun t!204360 () Bool)

(declare-fun tb!136291 () Bool)

(assert (=> (and b!2288051 (= (toChars!6002 (transformation!4353 (rule!6683 (h!32625 (t!204274 tokens!456))))) (toChars!6002 (transformation!4353 (rule!6683 (h!32625 tokens!456))))) t!204360) tb!136291))

(declare-fun result!166172 () Bool)

(assert (= result!166172 result!166080))

(assert (=> b!2287608 t!204360))

(declare-fun t!204362 () Bool)

(declare-fun tb!136293 () Bool)

(assert (=> (and b!2288051 (= (toChars!6002 (transformation!4353 (rule!6683 (h!32625 (t!204274 tokens!456))))) (toChars!6002 (transformation!4353 r!2363))) t!204362) tb!136293))

(declare-fun result!166174 () Bool)

(assert (= result!166174 result!166118))

(assert (=> d!676910 t!204362))

(assert (=> d!677056 t!204360))

(declare-fun tp!725290 () Bool)

(declare-fun b_and!181387 () Bool)

(assert (=> b!2288051 (= tp!725290 (and (=> t!204358 result!166170) (=> t!204360 result!166172) (=> t!204362 result!166174) b_and!181387))))

(declare-fun tp!725289 () Bool)

(declare-fun e!1465902 () Bool)

(declare-fun e!1465901 () Bool)

(declare-fun b!2288050 () Bool)

(assert (=> b!2288050 (= e!1465902 (and tp!725289 (inv!36817 (tag!4843 (rule!6683 (h!32625 (t!204274 tokens!456))))) (inv!36820 (transformation!4353 (rule!6683 (h!32625 (t!204274 tokens!456))))) e!1465901))))

(declare-fun b!2288048 () Bool)

(declare-fun tp!725291 () Bool)

(declare-fun e!1465899 () Bool)

(declare-fun e!1465900 () Bool)

(assert (=> b!2288048 (= e!1465899 (and (inv!36821 (h!32625 (t!204274 tokens!456))) e!1465900 tp!725291))))

(assert (=> b!2288051 (= e!1465901 (and tp!725292 tp!725290))))

(assert (=> b!2287527 (= tp!725195 e!1465899)))

(declare-fun b!2288049 () Bool)

(declare-fun tp!725293 () Bool)

(assert (=> b!2288049 (= e!1465900 (and (inv!21 (value!137880 (h!32625 (t!204274 tokens!456)))) e!1465902 tp!725293))))

(assert (= b!2288050 b!2288051))

(assert (= b!2288049 b!2288050))

(assert (= b!2288048 b!2288049))

(assert (= (and b!2287527 ((_ is Cons!27224) (t!204274 tokens!456))) b!2288048))

(declare-fun m!2715899 () Bool)

(assert (=> b!2288050 m!2715899))

(declare-fun m!2715901 () Bool)

(assert (=> b!2288050 m!2715901))

(declare-fun m!2715903 () Bool)

(assert (=> b!2288048 m!2715903))

(declare-fun m!2715905 () Bool)

(assert (=> b!2288049 m!2715905))

(declare-fun b!2288056 () Bool)

(declare-fun e!1465906 () Bool)

(declare-fun tp!725296 () Bool)

(assert (=> b!2288056 (= e!1465906 (and tp_is_empty!10623 tp!725296))))

(assert (=> b!2287530 (= tp!725200 e!1465906)))

(assert (= (and b!2287530 ((_ is Cons!27222) (t!204272 otherP!12))) b!2288056))

(declare-fun b!2288057 () Bool)

(declare-fun e!1465907 () Bool)

(declare-fun tp!725297 () Bool)

(assert (=> b!2288057 (= e!1465907 (and tp_is_empty!10623 tp!725297))))

(assert (=> b!2287528 (= tp!725188 e!1465907)))

(assert (= (and b!2287528 ((_ is Cons!27222) (t!204272 suffix!886))) b!2288057))

(declare-fun b!2288071 () Bool)

(declare-fun e!1465910 () Bool)

(declare-fun tp!725308 () Bool)

(declare-fun tp!725311 () Bool)

(assert (=> b!2288071 (= e!1465910 (and tp!725308 tp!725311))))

(declare-fun b!2288069 () Bool)

(declare-fun tp!725310 () Bool)

(declare-fun tp!725309 () Bool)

(assert (=> b!2288069 (= e!1465910 (and tp!725310 tp!725309))))

(declare-fun b!2288068 () Bool)

(assert (=> b!2288068 (= e!1465910 tp_is_empty!10623)))

(declare-fun b!2288070 () Bool)

(declare-fun tp!725312 () Bool)

(assert (=> b!2288070 (= e!1465910 tp!725312)))

(assert (=> b!2287529 (= tp!725192 e!1465910)))

(assert (= (and b!2287529 ((_ is ElementMatch!6701) (regex!4353 otherR!12))) b!2288068))

(assert (= (and b!2287529 ((_ is Concat!11217) (regex!4353 otherR!12))) b!2288069))

(assert (= (and b!2287529 ((_ is Star!6701) (regex!4353 otherR!12))) b!2288070))

(assert (= (and b!2287529 ((_ is Union!6701) (regex!4353 otherR!12))) b!2288071))

(declare-fun b!2288075 () Bool)

(declare-fun e!1465911 () Bool)

(declare-fun tp!725313 () Bool)

(declare-fun tp!725316 () Bool)

(assert (=> b!2288075 (= e!1465911 (and tp!725313 tp!725316))))

(declare-fun b!2288073 () Bool)

(declare-fun tp!725315 () Bool)

(declare-fun tp!725314 () Bool)

(assert (=> b!2288073 (= e!1465911 (and tp!725315 tp!725314))))

(declare-fun b!2288072 () Bool)

(assert (=> b!2288072 (= e!1465911 tp_is_empty!10623)))

(declare-fun b!2288074 () Bool)

(declare-fun tp!725317 () Bool)

(assert (=> b!2288074 (= e!1465911 tp!725317)))

(assert (=> b!2287532 (= tp!725205 e!1465911)))

(assert (= (and b!2287532 ((_ is ElementMatch!6701) (regex!4353 (h!32624 rules!1750)))) b!2288072))

(assert (= (and b!2287532 ((_ is Concat!11217) (regex!4353 (h!32624 rules!1750)))) b!2288073))

(assert (= (and b!2287532 ((_ is Star!6701) (regex!4353 (h!32624 rules!1750)))) b!2288074))

(assert (= (and b!2287532 ((_ is Union!6701) (regex!4353 (h!32624 rules!1750)))) b!2288075))

(declare-fun b!2288076 () Bool)

(declare-fun e!1465912 () Bool)

(declare-fun tp!725318 () Bool)

(assert (=> b!2288076 (= e!1465912 (and tp_is_empty!10623 tp!725318))))

(assert (=> b!2287543 (= tp!725190 e!1465912)))

(assert (= (and b!2287543 ((_ is Cons!27222) (t!204272 input!1722))) b!2288076))

(declare-fun b!2288080 () Bool)

(declare-fun e!1465913 () Bool)

(declare-fun tp!725319 () Bool)

(declare-fun tp!725322 () Bool)

(assert (=> b!2288080 (= e!1465913 (and tp!725319 tp!725322))))

(declare-fun b!2288078 () Bool)

(declare-fun tp!725321 () Bool)

(declare-fun tp!725320 () Bool)

(assert (=> b!2288078 (= e!1465913 (and tp!725321 tp!725320))))

(declare-fun b!2288077 () Bool)

(assert (=> b!2288077 (= e!1465913 tp_is_empty!10623)))

(declare-fun b!2288079 () Bool)

(declare-fun tp!725323 () Bool)

(assert (=> b!2288079 (= e!1465913 tp!725323)))

(assert (=> b!2287521 (= tp!725202 e!1465913)))

(assert (= (and b!2287521 ((_ is ElementMatch!6701) (regex!4353 (rule!6683 (h!32625 tokens!456))))) b!2288077))

(assert (= (and b!2287521 ((_ is Concat!11217) (regex!4353 (rule!6683 (h!32625 tokens!456))))) b!2288078))

(assert (= (and b!2287521 ((_ is Star!6701) (regex!4353 (rule!6683 (h!32625 tokens!456))))) b!2288079))

(assert (= (and b!2287521 ((_ is Union!6701) (regex!4353 (rule!6683 (h!32625 tokens!456))))) b!2288080))

(declare-fun b!2288091 () Bool)

(declare-fun b_free!68617 () Bool)

(declare-fun b_next!69321 () Bool)

(assert (=> b!2288091 (= b_free!68617 (not b_next!69321))))

(declare-fun tb!136295 () Bool)

(declare-fun t!204364 () Bool)

(assert (=> (and b!2288091 (= (toValue!6143 (transformation!4353 (h!32624 (t!204273 rules!1750)))) (toValue!6143 (transformation!4353 r!2363))) t!204364) tb!136295))

(declare-fun result!166182 () Bool)

(assert (= result!166182 result!166088))

(assert (=> d!676908 t!204364))

(assert (=> d!676910 t!204364))

(declare-fun tp!725334 () Bool)

(declare-fun b_and!181389 () Bool)

(assert (=> b!2288091 (= tp!725334 (and (=> t!204364 result!166182) b_and!181389))))

(declare-fun b_free!68619 () Bool)

(declare-fun b_next!69323 () Bool)

(assert (=> b!2288091 (= b_free!68619 (not b_next!69323))))

(declare-fun t!204366 () Bool)

(declare-fun tb!136297 () Bool)

(assert (=> (and b!2288091 (= (toChars!6002 (transformation!4353 (h!32624 (t!204273 rules!1750)))) (toChars!6002 (transformation!4353 (rule!6683 (head!4974 tokens!456))))) t!204366) tb!136297))

(declare-fun result!166184 () Bool)

(assert (= result!166184 result!166070))

(assert (=> d!676898 t!204366))

(declare-fun tb!136299 () Bool)

(declare-fun t!204368 () Bool)

(assert (=> (and b!2288091 (= (toChars!6002 (transformation!4353 (h!32624 (t!204273 rules!1750)))) (toChars!6002 (transformation!4353 (rule!6683 (h!32625 tokens!456))))) t!204368) tb!136299))

(declare-fun result!166186 () Bool)

(assert (= result!166186 result!166080))

(assert (=> b!2287608 t!204368))

(declare-fun t!204370 () Bool)

(declare-fun tb!136301 () Bool)

(assert (=> (and b!2288091 (= (toChars!6002 (transformation!4353 (h!32624 (t!204273 rules!1750)))) (toChars!6002 (transformation!4353 r!2363))) t!204370) tb!136301))

(declare-fun result!166188 () Bool)

(assert (= result!166188 result!166118))

(assert (=> d!676910 t!204370))

(assert (=> d!677056 t!204368))

(declare-fun b_and!181391 () Bool)

(declare-fun tp!725332 () Bool)

(assert (=> b!2288091 (= tp!725332 (and (=> t!204366 result!166184) (=> t!204368 result!166186) (=> t!204370 result!166188) b_and!181391))))

(declare-fun e!1465924 () Bool)

(assert (=> b!2288091 (= e!1465924 (and tp!725334 tp!725332))))

(declare-fun tp!725333 () Bool)

(declare-fun b!2288090 () Bool)

(declare-fun e!1465923 () Bool)

(assert (=> b!2288090 (= e!1465923 (and tp!725333 (inv!36817 (tag!4843 (h!32624 (t!204273 rules!1750)))) (inv!36820 (transformation!4353 (h!32624 (t!204273 rules!1750)))) e!1465924))))

(declare-fun b!2288089 () Bool)

(declare-fun e!1465925 () Bool)

(declare-fun tp!725335 () Bool)

(assert (=> b!2288089 (= e!1465925 (and e!1465923 tp!725335))))

(assert (=> b!2287524 (= tp!725197 e!1465925)))

(assert (= b!2288090 b!2288091))

(assert (= b!2288089 b!2288090))

(assert (= (and b!2287524 ((_ is Cons!27223) (t!204273 rules!1750))) b!2288089))

(declare-fun m!2715907 () Bool)

(assert (=> b!2288090 m!2715907))

(declare-fun m!2715909 () Bool)

(assert (=> b!2288090 m!2715909))

(declare-fun b!2288092 () Bool)

(declare-fun e!1465926 () Bool)

(declare-fun tp!725336 () Bool)

(assert (=> b!2288092 (= e!1465926 (and tp_is_empty!10623 tp!725336))))

(assert (=> b!2287544 (= tp!725204 e!1465926)))

(assert (= (and b!2287544 ((_ is Cons!27222) (originalCharacters!5123 (h!32625 tokens!456)))) b!2288092))

(declare-fun b!2288096 () Bool)

(declare-fun e!1465927 () Bool)

(declare-fun tp!725337 () Bool)

(declare-fun tp!725340 () Bool)

(assert (=> b!2288096 (= e!1465927 (and tp!725337 tp!725340))))

(declare-fun b!2288094 () Bool)

(declare-fun tp!725339 () Bool)

(declare-fun tp!725338 () Bool)

(assert (=> b!2288094 (= e!1465927 (and tp!725339 tp!725338))))

(declare-fun b!2288093 () Bool)

(assert (=> b!2288093 (= e!1465927 tp_is_empty!10623)))

(declare-fun b!2288095 () Bool)

(declare-fun tp!725341 () Bool)

(assert (=> b!2288095 (= e!1465927 tp!725341)))

(assert (=> b!2287523 (= tp!725198 e!1465927)))

(assert (= (and b!2287523 ((_ is ElementMatch!6701) (regex!4353 r!2363))) b!2288093))

(assert (= (and b!2287523 ((_ is Concat!11217) (regex!4353 r!2363))) b!2288094))

(assert (= (and b!2287523 ((_ is Star!6701) (regex!4353 r!2363))) b!2288095))

(assert (= (and b!2287523 ((_ is Union!6701) (regex!4353 r!2363))) b!2288096))

(declare-fun b_lambda!72879 () Bool)

(assert (= b_lambda!72847 (or (and b!2288051 b_free!68615 (= (toChars!6002 (transformation!4353 (rule!6683 (h!32625 (t!204274 tokens!456))))) (toChars!6002 (transformation!4353 (rule!6683 (h!32625 tokens!456)))))) (and b!2288091 b_free!68619 (= (toChars!6002 (transformation!4353 (h!32624 (t!204273 rules!1750)))) (toChars!6002 (transformation!4353 (rule!6683 (h!32625 tokens!456)))))) (and b!2287540 b_free!68595 (= (toChars!6002 (transformation!4353 r!2363)) (toChars!6002 (transformation!4353 (rule!6683 (h!32625 tokens!456)))))) (and b!2287519 b_free!68603 (= (toChars!6002 (transformation!4353 (h!32624 rules!1750))) (toChars!6002 (transformation!4353 (rule!6683 (h!32625 tokens!456)))))) (and b!2287533 b_free!68591 (= (toChars!6002 (transformation!4353 otherR!12)) (toChars!6002 (transformation!4353 (rule!6683 (h!32625 tokens!456)))))) (and b!2287546 b_free!68599) b_lambda!72879)))

(declare-fun b_lambda!72881 () Bool)

(assert (= b_lambda!72859 (or (and b!2287540 b_free!68593) (and b!2288091 b_free!68617 (= (toValue!6143 (transformation!4353 (h!32624 (t!204273 rules!1750)))) (toValue!6143 (transformation!4353 r!2363)))) (and b!2288051 b_free!68613 (= (toValue!6143 (transformation!4353 (rule!6683 (h!32625 (t!204274 tokens!456))))) (toValue!6143 (transformation!4353 r!2363)))) (and b!2287519 b_free!68601 (= (toValue!6143 (transformation!4353 (h!32624 rules!1750))) (toValue!6143 (transformation!4353 r!2363)))) (and b!2287546 b_free!68597 (= (toValue!6143 (transformation!4353 (rule!6683 (h!32625 tokens!456)))) (toValue!6143 (transformation!4353 r!2363)))) (and b!2287533 b_free!68589 (= (toValue!6143 (transformation!4353 otherR!12)) (toValue!6143 (transformation!4353 r!2363)))) b_lambda!72881)))

(declare-fun b_lambda!72883 () Bool)

(assert (= b_lambda!72849 (or (and b!2287540 b_free!68593) (and b!2288091 b_free!68617 (= (toValue!6143 (transformation!4353 (h!32624 (t!204273 rules!1750)))) (toValue!6143 (transformation!4353 r!2363)))) (and b!2288051 b_free!68613 (= (toValue!6143 (transformation!4353 (rule!6683 (h!32625 (t!204274 tokens!456))))) (toValue!6143 (transformation!4353 r!2363)))) (and b!2287519 b_free!68601 (= (toValue!6143 (transformation!4353 (h!32624 rules!1750))) (toValue!6143 (transformation!4353 r!2363)))) (and b!2287546 b_free!68597 (= (toValue!6143 (transformation!4353 (rule!6683 (h!32625 tokens!456)))) (toValue!6143 (transformation!4353 r!2363)))) (and b!2287533 b_free!68589 (= (toValue!6143 (transformation!4353 otherR!12)) (toValue!6143 (transformation!4353 r!2363)))) b_lambda!72883)))

(declare-fun b_lambda!72885 () Bool)

(assert (= b_lambda!72877 (or (and b!2288051 b_free!68615 (= (toChars!6002 (transformation!4353 (rule!6683 (h!32625 (t!204274 tokens!456))))) (toChars!6002 (transformation!4353 (rule!6683 (h!32625 tokens!456)))))) (and b!2288091 b_free!68619 (= (toChars!6002 (transformation!4353 (h!32624 (t!204273 rules!1750)))) (toChars!6002 (transformation!4353 (rule!6683 (h!32625 tokens!456)))))) (and b!2287540 b_free!68595 (= (toChars!6002 (transformation!4353 r!2363)) (toChars!6002 (transformation!4353 (rule!6683 (h!32625 tokens!456)))))) (and b!2287519 b_free!68603 (= (toChars!6002 (transformation!4353 (h!32624 rules!1750))) (toChars!6002 (transformation!4353 (rule!6683 (h!32625 tokens!456)))))) (and b!2287533 b_free!68591 (= (toChars!6002 (transformation!4353 otherR!12)) (toChars!6002 (transformation!4353 (rule!6683 (h!32625 tokens!456)))))) (and b!2287546 b_free!68599) b_lambda!72885)))

(declare-fun b_lambda!72887 () Bool)

(assert (= b_lambda!72857 (or (and b!2288051 b_free!68615 (= (toChars!6002 (transformation!4353 (rule!6683 (h!32625 (t!204274 tokens!456))))) (toChars!6002 (transformation!4353 r!2363)))) (and b!2288091 b_free!68619 (= (toChars!6002 (transformation!4353 (h!32624 (t!204273 rules!1750)))) (toChars!6002 (transformation!4353 r!2363)))) (and b!2287533 b_free!68591 (= (toChars!6002 (transformation!4353 otherR!12)) (toChars!6002 (transformation!4353 r!2363)))) (and b!2287540 b_free!68595) (and b!2287519 b_free!68603 (= (toChars!6002 (transformation!4353 (h!32624 rules!1750))) (toChars!6002 (transformation!4353 r!2363)))) (and b!2287546 b_free!68599 (= (toChars!6002 (transformation!4353 (rule!6683 (h!32625 tokens!456)))) (toChars!6002 (transformation!4353 r!2363)))) b_lambda!72887)))

(check-sat (not bm!136603) (not d!677034) (not b!2287681) (not b!2287973) (not b!2287995) (not b_next!69307) tp_is_empty!10623 (not b_next!69295) (not b!2288094) (not d!676902) (not d!676950) b_and!181381 (not b!2288071) (not b!2288010) (not b!2287609) (not b!2288080) (not b!2287937) (not d!677014) (not d!676906) (not b!2287622) (not tb!136215) (not b!2287980) (not b_next!69321) (not b!2288069) (not d!677038) (not b!2287947) (not b!2287687) (not b_lambda!72879) (not b!2287976) (not b_next!69297) (not b!2287988) (not b_next!69319) (not d!676948) (not b_lambda!72883) (not b_lambda!72881) (not b!2288050) (not b!2287970) (not b!2288035) (not b!2288015) b_and!181341 (not d!676896) (not b!2287975) (not tb!136247) (not b!2287603) (not d!676898) (not b!2287979) (not d!676944) (not b!2287591) (not b!2287951) (not b!2288025) (not b_next!69299) (not d!677062) (not b_lambda!72845) (not b!2288076) (not b!2287598) (not d!677054) (not b!2287941) (not b!2288092) (not b!2287608) (not b!2288014) (not b!2288090) (not b!2288032) (not d!677022) b_and!181383 (not d!676878) (not b_next!69303) b_and!181391 (not d!677052) (not b_next!69301) (not b_lambda!72885) (not b_lambda!72887) (not b!2287726) (not b!2287620) (not d!677044) (not b!2287702) (not b!2287986) (not d!677032) (not b!2287589) (not b_next!69317) (not bm!136592) (not b!2287991) (not b!2287982) (not tb!136207) (not b!2287698) b_and!181387 (not d!676932) (not b!2288089) (not b!2287938) (not b!2287621) b_and!181379 (not d!677056) (not b!2287950) (not b!2287939) (not bm!136602) (not d!676942) (not b!2288074) (not d!676940) (not b!2288037) (not b!2287978) b_and!181339 (not b!2288079) (not d!677036) (not b!2287585) (not b!2288048) (not tb!136223) (not b!2288057) (not b!2287610) (not b_next!69293) b_and!181343 (not b!2287597) (not d!677058) (not b!2288096) (not b!2288070) (not d!676946) (not b!2288078) (not d!677010) (not b!2287972) (not d!676934) (not b!2288073) (not d!676938) (not b!2288007) (not b!2288075) (not d!677046) (not b!2288049) (not b!2287974) b_and!181377 (not b!2288011) (not d!677050) (not d!677018) (not b!2288095) (not b!2287971) (not b!2288008) b_and!181385 (not b!2287594) (not b!2287625) (not b!2288056) (not d!676910) (not b_next!69305) b_and!181389 (not b!2288013) (not d!677028) b_and!181337 (not b!2288026) (not b!2287994) (not b_next!69323))
(check-sat b_and!181381 (not b_next!69321) b_and!181341 (not b_next!69299) b_and!181383 (not b_next!69301) (not b_next!69317) b_and!181387 b_and!181379 b_and!181339 b_and!181377 b_and!181385 (not b_next!69295) (not b_next!69307) (not b_next!69297) (not b_next!69319) (not b_next!69303) b_and!181391 (not b_next!69293) b_and!181343 (not b_next!69305) b_and!181389 b_and!181337 (not b_next!69323))
