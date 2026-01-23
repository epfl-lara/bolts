; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108418 () Bool)

(assert start!108418)

(declare-fun b!1213811 () Bool)

(declare-fun b_free!29001 () Bool)

(declare-fun b_next!29705 () Bool)

(assert (=> b!1213811 (= b_free!29001 (not b_next!29705))))

(declare-fun tp!344180 () Bool)

(declare-fun b_and!82305 () Bool)

(assert (=> b!1213811 (= tp!344180 b_and!82305)))

(declare-fun b_free!29003 () Bool)

(declare-fun b_next!29707 () Bool)

(assert (=> b!1213811 (= b_free!29003 (not b_next!29707))))

(declare-fun tp!344182 () Bool)

(declare-fun b_and!82307 () Bool)

(assert (=> b!1213811 (= tp!344182 b_and!82307)))

(declare-fun b!1213813 () Bool)

(declare-fun b_free!29005 () Bool)

(declare-fun b_next!29709 () Bool)

(assert (=> b!1213813 (= b_free!29005 (not b_next!29709))))

(declare-fun tp!344177 () Bool)

(declare-fun b_and!82309 () Bool)

(assert (=> b!1213813 (= tp!344177 b_and!82309)))

(declare-fun b_free!29007 () Bool)

(declare-fun b_next!29711 () Bool)

(assert (=> b!1213813 (= b_free!29007 (not b_next!29711))))

(declare-fun tp!344183 () Bool)

(declare-fun b_and!82311 () Bool)

(assert (=> b!1213813 (= tp!344183 b_and!82311)))

(declare-fun b!1213808 () Bool)

(declare-fun e!778826 () Bool)

(declare-fun e!778828 () Bool)

(assert (=> b!1213808 (= e!778826 e!778828)))

(declare-fun res!545787 () Bool)

(assert (=> b!1213808 (=> (not res!545787) (not e!778828))))

(declare-datatypes ((List!12378 0))(
  ( (Nil!12320) (Cons!12320 (h!17721 (_ BitVec 16)) (t!112948 List!12378)) )
))
(declare-datatypes ((TokenValue!2183 0))(
  ( (FloatLiteralValue!4366 (text!15726 List!12378)) (TokenValueExt!2182 (__x!8081 Int)) (Broken!10915 (value!68848 List!12378)) (Object!2240) (End!2183) (Def!2183) (Underscore!2183) (Match!2183) (Else!2183) (Error!2183) (Case!2183) (If!2183) (Extends!2183) (Abstract!2183) (Class!2183) (Val!2183) (DelimiterValue!4366 (del!2243 List!12378)) (KeywordValue!2189 (value!68849 List!12378)) (CommentValue!4366 (value!68850 List!12378)) (WhitespaceValue!4366 (value!68851 List!12378)) (IndentationValue!2183 (value!68852 List!12378)) (String!15046) (Int32!2183) (Broken!10916 (value!68853 List!12378)) (Boolean!2184) (Unit!18635) (OperatorValue!2186 (op!2243 List!12378)) (IdentifierValue!4366 (value!68854 List!12378)) (IdentifierValue!4367 (value!68855 List!12378)) (WhitespaceValue!4367 (value!68856 List!12378)) (True!4366) (False!4366) (Broken!10917 (value!68857 List!12378)) (Broken!10918 (value!68858 List!12378)) (True!4367) (RightBrace!2183) (RightBracket!2183) (Colon!2183) (Null!2183) (Comma!2183) (LeftBracket!2183) (False!4367) (LeftBrace!2183) (ImaginaryLiteralValue!2183 (text!15727 List!12378)) (StringLiteralValue!6549 (value!68859 List!12378)) (EOFValue!2183 (value!68860 List!12378)) (IdentValue!2183 (value!68861 List!12378)) (DelimiterValue!4367 (value!68862 List!12378)) (DedentValue!2183 (value!68863 List!12378)) (NewLineValue!2183 (value!68864 List!12378)) (IntegerValue!6549 (value!68865 (_ BitVec 32)) (text!15728 List!12378)) (IntegerValue!6550 (value!68866 Int) (text!15729 List!12378)) (Times!2183) (Or!2183) (Equal!2183) (Minus!2183) (Broken!10919 (value!68867 List!12378)) (And!2183) (Div!2183) (LessEqual!2183) (Mod!2183) (Concat!5568) (Not!2183) (Plus!2183) (SpaceValue!2183 (value!68868 List!12378)) (IntegerValue!6551 (value!68869 Int) (text!15730 List!12378)) (StringLiteralValue!6550 (text!15731 List!12378)) (FloatLiteralValue!4367 (text!15732 List!12378)) (BytesLiteralValue!2183 (value!68870 List!12378)) (CommentValue!4367 (value!68871 List!12378)) (StringLiteralValue!6551 (value!68872 List!12378)) (ErrorTokenValue!2183 (msg!2244 List!12378)) )
))
(declare-datatypes ((C!7088 0))(
  ( (C!7089 (val!4074 Int)) )
))
(declare-datatypes ((List!12379 0))(
  ( (Nil!12321) (Cons!12321 (h!17722 C!7088) (t!112949 List!12379)) )
))
(declare-datatypes ((IArray!8085 0))(
  ( (IArray!8086 (innerList!4100 List!12379)) )
))
(declare-datatypes ((Conc!4040 0))(
  ( (Node!4040 (left!10681 Conc!4040) (right!11011 Conc!4040) (csize!8310 Int) (cheight!4251 Int)) (Leaf!6246 (xs!6751 IArray!8085) (csize!8311 Int)) (Empty!4040) )
))
(declare-datatypes ((String!15047 0))(
  ( (String!15048 (value!68873 String)) )
))
(declare-datatypes ((BalanceConc!8012 0))(
  ( (BalanceConc!8013 (c!203190 Conc!4040)) )
))
(declare-datatypes ((Regex!3385 0))(
  ( (ElementMatch!3385 (c!203191 C!7088)) (Concat!5569 (regOne!7282 Regex!3385) (regTwo!7282 Regex!3385)) (EmptyExpr!3385) (Star!3385 (reg!3714 Regex!3385)) (EmptyLang!3385) (Union!3385 (regOne!7283 Regex!3385) (regTwo!7283 Regex!3385)) )
))
(declare-datatypes ((TokenValueInjection!4062 0))(
  ( (TokenValueInjection!4063 (toValue!3240 Int) (toChars!3099 Int)) )
))
(declare-datatypes ((Rule!4030 0))(
  ( (Rule!4031 (regex!2115 Regex!3385) (tag!2377 String!15047) (isSeparator!2115 Bool) (transformation!2115 TokenValueInjection!4062)) )
))
(declare-datatypes ((Token!3892 0))(
  ( (Token!3893 (value!68874 TokenValue!2183) (rule!3538 Rule!4030) (size!9783 Int) (originalCharacters!2669 List!12379)) )
))
(declare-datatypes ((tuple2!12190 0))(
  ( (tuple2!12191 (_1!6942 Token!3892) (_2!6942 List!12379)) )
))
(declare-fun lt!415014 () tuple2!12190)

(declare-datatypes ((List!12380 0))(
  ( (Nil!12322) (Cons!12322 (h!17723 Token!3892) (t!112950 List!12380)) )
))
(declare-fun tokens!556 () List!12380)

(assert (=> b!1213808 (= res!545787 (= (_1!6942 lt!415014) (h!17723 tokens!556)))))

(declare-datatypes ((Option!2477 0))(
  ( (None!2476) (Some!2476 (v!20605 tuple2!12190)) )
))
(declare-fun lt!415011 () Option!2477)

(declare-fun get!4052 (Option!2477) tuple2!12190)

(assert (=> b!1213808 (= lt!415014 (get!4052 lt!415011))))

(declare-fun b!1213809 () Bool)

(declare-fun e!778831 () Bool)

(assert (=> b!1213809 (= e!778831 e!778826)))

(declare-fun res!545784 () Bool)

(assert (=> b!1213809 (=> (not res!545784) (not e!778826))))

(declare-fun isDefined!2115 (Option!2477) Bool)

(assert (=> b!1213809 (= res!545784 (isDefined!2115 lt!415011))))

(declare-datatypes ((LexerInterface!1810 0))(
  ( (LexerInterfaceExt!1807 (__x!8082 Int)) (Lexer!1808) )
))
(declare-fun thiss!20528 () LexerInterface!1810)

(declare-datatypes ((List!12381 0))(
  ( (Nil!12323) (Cons!12323 (h!17724 Rule!4030) (t!112951 List!12381)) )
))
(declare-fun rules!2728 () List!12381)

(declare-fun input!2346 () List!12379)

(declare-fun maxPrefix!932 (LexerInterface!1810 List!12381 List!12379) Option!2477)

(assert (=> b!1213809 (= lt!415011 (maxPrefix!932 thiss!20528 rules!2728 input!2346))))

(declare-fun b!1213810 () Bool)

(declare-fun e!778825 () Bool)

(declare-fun tp_is_empty!6291 () Bool)

(declare-fun tp!344181 () Bool)

(assert (=> b!1213810 (= e!778825 (and tp_is_empty!6291 tp!344181))))

(declare-fun e!778829 () Bool)

(assert (=> b!1213811 (= e!778829 (and tp!344180 tp!344182))))

(declare-fun b!1213812 () Bool)

(declare-fun res!545782 () Bool)

(assert (=> b!1213812 (=> (not res!545782) (not e!778831))))

(declare-fun rulesInvariant!1684 (LexerInterface!1810 List!12381) Bool)

(assert (=> b!1213812 (= res!545782 (rulesInvariant!1684 thiss!20528 rules!2728))))

(declare-fun e!778824 () Bool)

(assert (=> b!1213813 (= e!778824 (and tp!344177 tp!344183))))

(declare-fun b!1213814 () Bool)

(declare-fun res!545790 () Bool)

(assert (=> b!1213814 (=> (not res!545790) (not e!778831))))

(get-info :version)

(assert (=> b!1213814 (= res!545790 (not ((_ is Nil!12322) tokens!556)))))

(declare-fun tp!344179 () Bool)

(declare-fun b!1213816 () Bool)

(declare-fun e!778834 () Bool)

(declare-fun inv!16510 (String!15047) Bool)

(declare-fun inv!16513 (TokenValueInjection!4062) Bool)

(assert (=> b!1213816 (= e!778834 (and tp!344179 (inv!16510 (tag!2377 (rule!3538 (h!17723 tokens!556)))) (inv!16513 (transformation!2115 (rule!3538 (h!17723 tokens!556)))) e!778824))))

(declare-fun tp!344174 () Bool)

(declare-fun b!1213817 () Bool)

(declare-fun e!778823 () Bool)

(declare-fun inv!21 (TokenValue!2183) Bool)

(assert (=> b!1213817 (= e!778823 (and (inv!21 (value!68874 (h!17723 tokens!556))) e!778834 tp!344174))))

(declare-fun b!1213818 () Bool)

(declare-fun e!778838 () Bool)

(assert (=> b!1213818 (= e!778838 false)))

(declare-fun lt!415017 () Bool)

(declare-fun lt!415012 () List!12379)

(declare-fun matchR!1507 (Regex!3385 List!12379) Bool)

(assert (=> b!1213818 (= lt!415017 (matchR!1507 (regex!2115 (rule!3538 (_1!6942 lt!415014))) lt!415012))))

(declare-fun b!1213819 () Bool)

(declare-fun res!545785 () Bool)

(assert (=> b!1213819 (=> (not res!545785) (not e!778831))))

(declare-fun isEmpty!7339 (List!12381) Bool)

(assert (=> b!1213819 (= res!545785 (not (isEmpty!7339 rules!2728)))))

(declare-fun b!1213820 () Bool)

(declare-fun e!778832 () Bool)

(declare-fun e!778835 () Bool)

(declare-fun tp!344178 () Bool)

(assert (=> b!1213820 (= e!778832 (and e!778835 tp!344178))))

(declare-fun b!1213821 () Bool)

(declare-fun e!778827 () Bool)

(assert (=> b!1213821 (= e!778827 e!778838)))

(declare-fun res!545781 () Bool)

(assert (=> b!1213821 (=> (not res!545781) (not e!778838))))

(declare-fun lt!415016 () List!12379)

(assert (=> b!1213821 (= res!545781 (= lt!415012 lt!415016))))

(declare-fun lt!415015 () BalanceConc!8012)

(declare-fun list!4553 (BalanceConc!8012) List!12379)

(assert (=> b!1213821 (= lt!415016 (list!4553 lt!415015))))

(declare-fun lt!415013 () BalanceConc!8012)

(assert (=> b!1213821 (= lt!415012 (list!4553 lt!415013))))

(declare-fun b!1213822 () Bool)

(declare-fun res!545788 () Bool)

(assert (=> b!1213822 (=> (not res!545788) (not e!778831))))

(declare-datatypes ((tuple2!12192 0))(
  ( (tuple2!12193 (_1!6943 List!12380) (_2!6943 List!12379)) )
))
(declare-fun lexList!440 (LexerInterface!1810 List!12381 List!12379) tuple2!12192)

(assert (=> b!1213822 (= res!545788 (= (_1!6943 (lexList!440 thiss!20528 rules!2728 input!2346)) tokens!556))))

(declare-fun tp!344176 () Bool)

(declare-fun e!778836 () Bool)

(declare-fun b!1213823 () Bool)

(declare-fun inv!16514 (Token!3892) Bool)

(assert (=> b!1213823 (= e!778836 (and (inv!16514 (h!17723 tokens!556)) e!778823 tp!344176))))

(declare-fun b!1213824 () Bool)

(declare-fun res!545783 () Bool)

(assert (=> b!1213824 (=> (not res!545783) (not e!778838))))

(declare-fun ++!3153 (List!12379 List!12379) List!12379)

(assert (=> b!1213824 (= res!545783 (= (++!3153 lt!415016 (_2!6942 lt!415014)) input!2346))))

(declare-fun b!1213825 () Bool)

(assert (=> b!1213825 (= e!778828 e!778827)))

(declare-fun res!545789 () Bool)

(assert (=> b!1213825 (=> (not res!545789) (not e!778827))))

(assert (=> b!1213825 (= res!545789 (= lt!415013 lt!415015))))

(declare-fun charsOf!1121 (Token!3892) BalanceConc!8012)

(assert (=> b!1213825 (= lt!415015 (charsOf!1121 (h!17723 tokens!556)))))

(assert (=> b!1213825 (= lt!415013 (charsOf!1121 (_1!6942 lt!415014)))))

(declare-fun tp!344175 () Bool)

(declare-fun b!1213815 () Bool)

(assert (=> b!1213815 (= e!778835 (and tp!344175 (inv!16510 (tag!2377 (h!17724 rules!2728))) (inv!16513 (transformation!2115 (h!17724 rules!2728))) e!778829))))

(declare-fun res!545786 () Bool)

(assert (=> start!108418 (=> (not res!545786) (not e!778831))))

(assert (=> start!108418 (= res!545786 ((_ is Lexer!1808) thiss!20528))))

(assert (=> start!108418 e!778831))

(assert (=> start!108418 true))

(assert (=> start!108418 e!778832))

(assert (=> start!108418 e!778825))

(assert (=> start!108418 e!778836))

(assert (= (and start!108418 res!545786) b!1213819))

(assert (= (and b!1213819 res!545785) b!1213812))

(assert (= (and b!1213812 res!545782) b!1213822))

(assert (= (and b!1213822 res!545788) b!1213814))

(assert (= (and b!1213814 res!545790) b!1213809))

(assert (= (and b!1213809 res!545784) b!1213808))

(assert (= (and b!1213808 res!545787) b!1213825))

(assert (= (and b!1213825 res!545789) b!1213821))

(assert (= (and b!1213821 res!545781) b!1213824))

(assert (= (and b!1213824 res!545783) b!1213818))

(assert (= b!1213815 b!1213811))

(assert (= b!1213820 b!1213815))

(assert (= (and start!108418 ((_ is Cons!12323) rules!2728)) b!1213820))

(assert (= (and start!108418 ((_ is Cons!12321) input!2346)) b!1213810))

(assert (= b!1213816 b!1213813))

(assert (= b!1213817 b!1213816))

(assert (= b!1213823 b!1213817))

(assert (= (and start!108418 ((_ is Cons!12322) tokens!556)) b!1213823))

(declare-fun m!1388831 () Bool)

(assert (=> b!1213808 m!1388831))

(declare-fun m!1388833 () Bool)

(assert (=> b!1213817 m!1388833))

(declare-fun m!1388835 () Bool)

(assert (=> b!1213823 m!1388835))

(declare-fun m!1388837 () Bool)

(assert (=> b!1213822 m!1388837))

(declare-fun m!1388839 () Bool)

(assert (=> b!1213825 m!1388839))

(declare-fun m!1388841 () Bool)

(assert (=> b!1213825 m!1388841))

(declare-fun m!1388843 () Bool)

(assert (=> b!1213821 m!1388843))

(declare-fun m!1388845 () Bool)

(assert (=> b!1213821 m!1388845))

(declare-fun m!1388847 () Bool)

(assert (=> b!1213819 m!1388847))

(declare-fun m!1388849 () Bool)

(assert (=> b!1213809 m!1388849))

(declare-fun m!1388851 () Bool)

(assert (=> b!1213809 m!1388851))

(declare-fun m!1388853 () Bool)

(assert (=> b!1213812 m!1388853))

(declare-fun m!1388855 () Bool)

(assert (=> b!1213818 m!1388855))

(declare-fun m!1388857 () Bool)

(assert (=> b!1213816 m!1388857))

(declare-fun m!1388859 () Bool)

(assert (=> b!1213816 m!1388859))

(declare-fun m!1388861 () Bool)

(assert (=> b!1213824 m!1388861))

(declare-fun m!1388863 () Bool)

(assert (=> b!1213815 m!1388863))

(declare-fun m!1388865 () Bool)

(assert (=> b!1213815 m!1388865))

(check-sat (not b!1213822) (not b!1213825) (not b!1213819) (not b!1213824) (not b_next!29707) (not b!1213816) (not b_next!29709) (not b!1213821) (not b!1213809) b_and!82305 (not b_next!29705) (not b!1213820) b_and!82311 (not b!1213812) (not b_next!29711) (not b!1213817) (not b!1213810) (not b!1213815) (not b!1213818) (not b!1213823) b_and!82307 (not b!1213808) b_and!82309 tp_is_empty!6291)
(check-sat b_and!82305 (not b_next!29705) (not b_next!29707) b_and!82307 b_and!82309 (not b_next!29709) b_and!82311 (not b_next!29711))
