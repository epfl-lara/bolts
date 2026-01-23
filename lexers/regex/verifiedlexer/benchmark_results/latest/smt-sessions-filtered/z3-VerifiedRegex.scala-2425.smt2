; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127322 () Bool)

(assert start!127322)

(declare-fun b!1398066 () Bool)

(declare-fun b_free!34027 () Bool)

(declare-fun b_next!34731 () Bool)

(assert (=> b!1398066 (= b_free!34027 (not b_next!34731))))

(declare-fun tp!398251 () Bool)

(declare-fun b_and!93611 () Bool)

(assert (=> b!1398066 (= tp!398251 b_and!93611)))

(declare-fun b_free!34029 () Bool)

(declare-fun b_next!34733 () Bool)

(assert (=> b!1398066 (= b_free!34029 (not b_next!34733))))

(declare-fun tp!398252 () Bool)

(declare-fun b_and!93613 () Bool)

(assert (=> b!1398066 (= tp!398252 b_and!93613)))

(declare-fun b!1398078 () Bool)

(declare-fun b_free!34031 () Bool)

(declare-fun b_next!34735 () Bool)

(assert (=> b!1398078 (= b_free!34031 (not b_next!34735))))

(declare-fun tp!398247 () Bool)

(declare-fun b_and!93615 () Bool)

(assert (=> b!1398078 (= tp!398247 b_and!93615)))

(declare-fun b_free!34033 () Bool)

(declare-fun b_next!34737 () Bool)

(assert (=> b!1398078 (= b_free!34033 (not b_next!34737))))

(declare-fun tp!398243 () Bool)

(declare-fun b_and!93617 () Bool)

(assert (=> b!1398078 (= tp!398243 b_and!93617)))

(declare-fun b!1398058 () Bool)

(declare-fun b_free!34035 () Bool)

(declare-fun b_next!34739 () Bool)

(assert (=> b!1398058 (= b_free!34035 (not b_next!34739))))

(declare-fun tp!398244 () Bool)

(declare-fun b_and!93619 () Bool)

(assert (=> b!1398058 (= tp!398244 b_and!93619)))

(declare-fun b_free!34037 () Bool)

(declare-fun b_next!34741 () Bool)

(assert (=> b!1398058 (= b_free!34037 (not b_next!34741))))

(declare-fun tp!398249 () Bool)

(declare-fun b_and!93621 () Bool)

(assert (=> b!1398058 (= tp!398249 b_and!93621)))

(declare-fun b!1398060 () Bool)

(assert (=> b!1398060 true))

(assert (=> b!1398060 true))

(declare-fun b!1398092 () Bool)

(assert (=> b!1398092 true))

(declare-fun b!1398071 () Bool)

(assert (=> b!1398071 true))

(declare-fun bs!338026 () Bool)

(declare-fun b!1398062 () Bool)

(assert (= bs!338026 (and b!1398062 b!1398071)))

(declare-fun lambda!60985 () Int)

(declare-fun lambda!60984 () Int)

(assert (=> bs!338026 (not (= lambda!60985 lambda!60984))))

(assert (=> b!1398062 true))

(declare-fun b!1398057 () Bool)

(declare-fun res!631874 () Bool)

(declare-fun e!892706 () Bool)

(assert (=> b!1398057 (=> res!631874 e!892706)))

(declare-datatypes ((C!7836 0))(
  ( (C!7837 (val!4478 Int)) )
))
(declare-datatypes ((List!14262 0))(
  ( (Nil!14196) (Cons!14196 (h!19597 C!7836) (t!122751 List!14262)) )
))
(declare-datatypes ((IArray!9361 0))(
  ( (IArray!9362 (innerList!4738 List!14262)) )
))
(declare-datatypes ((Conc!4678 0))(
  ( (Node!4678 (left!12125 Conc!4678) (right!12455 Conc!4678) (csize!9586 Int) (cheight!4889 Int)) (Leaf!7104 (xs!7405 IArray!9361) (csize!9587 Int)) (Empty!4678) )
))
(declare-datatypes ((BalanceConc!9296 0))(
  ( (BalanceConc!9297 (c!230080 Conc!4678)) )
))
(declare-fun lt!465871 () BalanceConc!9296)

(declare-datatypes ((LexerInterface!2154 0))(
  ( (LexerInterfaceExt!2151 (__x!8927 Int)) (Lexer!2152) )
))
(declare-fun thiss!19762 () LexerInterface!2154)

(declare-datatypes ((List!14263 0))(
  ( (Nil!14197) (Cons!14197 (h!19598 (_ BitVec 16)) (t!122752 List!14263)) )
))
(declare-datatypes ((TokenValue!2549 0))(
  ( (FloatLiteralValue!5098 (text!18288 List!14263)) (TokenValueExt!2548 (__x!8928 Int)) (Broken!12745 (value!79688 List!14263)) (Object!2614) (End!2549) (Def!2549) (Underscore!2549) (Match!2549) (Else!2549) (Error!2549) (Case!2549) (If!2549) (Extends!2549) (Abstract!2549) (Class!2549) (Val!2549) (DelimiterValue!5098 (del!2609 List!14263)) (KeywordValue!2555 (value!79689 List!14263)) (CommentValue!5098 (value!79690 List!14263)) (WhitespaceValue!5098 (value!79691 List!14263)) (IndentationValue!2549 (value!79692 List!14263)) (String!16980) (Int32!2549) (Broken!12746 (value!79693 List!14263)) (Boolean!2550) (Unit!20504) (OperatorValue!2552 (op!2609 List!14263)) (IdentifierValue!5098 (value!79694 List!14263)) (IdentifierValue!5099 (value!79695 List!14263)) (WhitespaceValue!5099 (value!79696 List!14263)) (True!5098) (False!5098) (Broken!12747 (value!79697 List!14263)) (Broken!12748 (value!79698 List!14263)) (True!5099) (RightBrace!2549) (RightBracket!2549) (Colon!2549) (Null!2549) (Comma!2549) (LeftBracket!2549) (False!5099) (LeftBrace!2549) (ImaginaryLiteralValue!2549 (text!18289 List!14263)) (StringLiteralValue!7647 (value!79699 List!14263)) (EOFValue!2549 (value!79700 List!14263)) (IdentValue!2549 (value!79701 List!14263)) (DelimiterValue!5099 (value!79702 List!14263)) (DedentValue!2549 (value!79703 List!14263)) (NewLineValue!2549 (value!79704 List!14263)) (IntegerValue!7647 (value!79705 (_ BitVec 32)) (text!18290 List!14263)) (IntegerValue!7648 (value!79706 Int) (text!18291 List!14263)) (Times!2549) (Or!2549) (Equal!2549) (Minus!2549) (Broken!12749 (value!79707 List!14263)) (And!2549) (Div!2549) (LessEqual!2549) (Mod!2549) (Concat!6322) (Not!2549) (Plus!2549) (SpaceValue!2549 (value!79708 List!14263)) (IntegerValue!7649 (value!79709 Int) (text!18292 List!14263)) (StringLiteralValue!7648 (text!18293 List!14263)) (FloatLiteralValue!5099 (text!18294 List!14263)) (BytesLiteralValue!2549 (value!79710 List!14263)) (CommentValue!5099 (value!79711 List!14263)) (StringLiteralValue!7649 (value!79712 List!14263)) (ErrorTokenValue!2549 (msg!2610 List!14263)) )
))
(declare-datatypes ((Regex!3773 0))(
  ( (ElementMatch!3773 (c!230081 C!7836)) (Concat!6323 (regOne!8058 Regex!3773) (regTwo!8058 Regex!3773)) (EmptyExpr!3773) (Star!3773 (reg!4102 Regex!3773)) (EmptyLang!3773) (Union!3773 (regOne!8059 Regex!3773) (regTwo!8059 Regex!3773)) )
))
(declare-datatypes ((String!16981 0))(
  ( (String!16982 (value!79713 String)) )
))
(declare-datatypes ((TokenValueInjection!4758 0))(
  ( (TokenValueInjection!4759 (toValue!3750 Int) (toChars!3609 Int)) )
))
(declare-datatypes ((Rule!4718 0))(
  ( (Rule!4719 (regex!2459 Regex!3773) (tag!2721 String!16981) (isSeparator!2459 Bool) (transformation!2459 TokenValueInjection!4758)) )
))
(declare-datatypes ((Token!4580 0))(
  ( (Token!4581 (value!79714 TokenValue!2549) (rule!4222 Rule!4718) (size!11677 Int) (originalCharacters!3321 List!14262)) )
))
(declare-datatypes ((List!14264 0))(
  ( (Nil!14198) (Cons!14198 (h!19599 Token!4580) (t!122753 List!14264)) )
))
(declare-fun lt!465865 () List!14264)

(declare-datatypes ((List!14265 0))(
  ( (Nil!14199) (Cons!14199 (h!19600 Rule!4718) (t!122754 List!14265)) )
))
(declare-fun rules!2550 () List!14265)

(declare-datatypes ((tuple2!13814 0))(
  ( (tuple2!13815 (_1!7793 List!14264) (_2!7793 List!14262)) )
))
(declare-fun lexList!668 (LexerInterface!2154 List!14265 List!14262) tuple2!13814)

(declare-fun list!5529 (BalanceConc!9296) List!14262)

(assert (=> b!1398057 (= res!631874 (not (= (lexList!668 thiss!19762 rules!2550 (list!5529 lt!465871)) (tuple2!13815 lt!465865 Nil!14196))))))

(declare-fun e!892726 () Bool)

(assert (=> b!1398058 (= e!892726 (and tp!398244 tp!398249))))

(declare-fun b!1398059 () Bool)

(declare-fun res!631872 () Bool)

(declare-fun e!892703 () Bool)

(assert (=> b!1398059 (=> (not res!631872) (not e!892703))))

(declare-fun t2!34 () Token!4580)

(declare-fun rulesProduceIndividualToken!1123 (LexerInterface!2154 List!14265 Token!4580) Bool)

(assert (=> b!1398059 (= res!631872 (rulesProduceIndividualToken!1123 thiss!19762 rules!2550 t2!34))))

(declare-fun e!892696 () Bool)

(declare-fun e!892716 () Bool)

(assert (=> b!1398060 (= e!892696 (not e!892716))))

(declare-fun res!631849 () Bool)

(assert (=> b!1398060 (=> res!631849 e!892716)))

(declare-fun lambda!60981 () Int)

(declare-fun Exists!923 (Int) Bool)

(assert (=> b!1398060 (= res!631849 (not (Exists!923 lambda!60981)))))

(assert (=> b!1398060 (Exists!923 lambda!60981)))

(declare-datatypes ((Unit!20505 0))(
  ( (Unit!20506) )
))
(declare-fun lt!465856 () Unit!20505)

(declare-fun lt!465863 () Regex!3773)

(declare-fun lt!465857 () List!14262)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!241 (Regex!3773 List!14262) Unit!20505)

(assert (=> b!1398060 (= lt!465856 (lemmaPrefixMatchThenExistsStringThatMatches!241 lt!465863 lt!465857))))

(declare-fun b!1398061 () Bool)

(declare-fun e!892704 () Bool)

(declare-fun e!892724 () Bool)

(assert (=> b!1398061 (= e!892704 e!892724)))

(declare-fun res!631847 () Bool)

(assert (=> b!1398061 (=> res!631847 e!892724)))

(declare-fun lt!465869 () Regex!3773)

(declare-fun lambda!60982 () Int)

(declare-datatypes ((List!14266 0))(
  ( (Nil!14200) (Cons!14200 (h!19601 Regex!3773) (t!122755 List!14266)) )
))
(declare-fun contains!2759 (List!14266 Regex!3773) Bool)

(declare-fun map!3149 (List!14265 Int) List!14266)

(assert (=> b!1398061 (= res!631847 (not (contains!2759 (map!3149 rules!2550 lambda!60982) lt!465869)))))

(declare-fun lambda!60983 () Int)

(declare-fun getWitness!450 (List!14266 Int) Regex!3773)

(assert (=> b!1398061 (= lt!465869 (getWitness!450 (map!3149 rules!2550 lambda!60982) lambda!60983))))

(declare-fun e!892695 () Bool)

(declare-fun e!892712 () Bool)

(assert (=> b!1398062 (= e!892695 e!892712)))

(declare-fun res!631853 () Bool)

(assert (=> b!1398062 (=> res!631853 e!892712)))

(declare-fun t1!34 () Token!4580)

(declare-fun lt!465881 () List!14262)

(declare-fun matchR!1764 (Regex!3773 List!14262) Bool)

(assert (=> b!1398062 (= res!631853 (not (matchR!1764 (regex!2459 (rule!4222 t1!34)) lt!465881)))))

(declare-fun lt!465884 () Unit!20505)

(declare-fun forallContained!654 (List!14265 Int Rule!4718) Unit!20505)

(assert (=> b!1398062 (= lt!465884 (forallContained!654 rules!2550 lambda!60985 (rule!4222 t2!34)))))

(declare-fun lt!465883 () Unit!20505)

(assert (=> b!1398062 (= lt!465883 (forallContained!654 rules!2550 lambda!60985 (rule!4222 t1!34)))))

(declare-fun lt!465854 () Unit!20505)

(declare-fun lt!465860 () Rule!4718)

(assert (=> b!1398062 (= lt!465854 (forallContained!654 rules!2550 lambda!60985 lt!465860))))

(declare-fun b!1398063 () Bool)

(declare-fun res!631868 () Bool)

(assert (=> b!1398063 (=> res!631868 e!892695)))

(declare-fun contains!2760 (List!14265 Rule!4718) Bool)

(assert (=> b!1398063 (= res!631868 (not (contains!2760 rules!2550 (rule!4222 t2!34))))))

(declare-fun e!892713 () Bool)

(declare-fun tp!398254 () Bool)

(declare-fun b!1398064 () Bool)

(declare-fun inv!18518 (String!16981) Bool)

(declare-fun inv!18521 (TokenValueInjection!4758) Bool)

(assert (=> b!1398064 (= e!892713 (and tp!398254 (inv!18518 (tag!2721 (rule!4222 t1!34))) (inv!18521 (transformation!2459 (rule!4222 t1!34))) e!892726))))

(declare-fun b!1398065 () Bool)

(declare-fun res!631866 () Bool)

(declare-fun e!892707 () Bool)

(assert (=> b!1398065 (=> res!631866 e!892707)))

(declare-datatypes ((tuple2!13816 0))(
  ( (tuple2!13817 (_1!7794 Token!4580) (_2!7794 List!14262)) )
))
(declare-datatypes ((Option!2722 0))(
  ( (None!2721) (Some!2721 (v!21641 tuple2!13816)) )
))
(declare-fun maxPrefix!1128 (LexerInterface!2154 List!14265 List!14262) Option!2722)

(assert (=> b!1398065 (= res!631866 (not (= (maxPrefix!1128 thiss!19762 rules!2550 lt!465881) (Some!2721 (tuple2!13817 t1!34 Nil!14196)))))))

(declare-fun e!892722 () Bool)

(assert (=> b!1398066 (= e!892722 (and tp!398251 tp!398252))))

(declare-fun b!1398067 () Bool)

(declare-fun e!892705 () Bool)

(declare-fun validRegex!1649 (Regex!3773) Bool)

(assert (=> b!1398067 (= e!892705 (validRegex!1649 lt!465869))))

(declare-fun lt!465880 () C!7836)

(declare-fun contains!2761 (List!14262 C!7836) Bool)

(declare-fun usedCharacters!270 (Regex!3773) List!14262)

(assert (=> b!1398067 (not (contains!2761 (usedCharacters!270 (regex!2459 lt!465860)) lt!465880))))

(declare-fun lt!465873 () Unit!20505)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!132 (LexerInterface!2154 List!14265 List!14265 Rule!4718 Rule!4718 C!7836) Unit!20505)

(assert (=> b!1398067 (= lt!465873 (lemmaSepRuleNotContainsCharContainedInANonSepRule!132 thiss!19762 rules!2550 rules!2550 (rule!4222 t1!34) lt!465860 lt!465880))))

(declare-fun b!1398068 () Bool)

(declare-fun res!631870 () Bool)

(assert (=> b!1398068 (=> res!631870 e!892707)))

(declare-fun lt!465876 () BalanceConc!9296)

(declare-fun lt!465867 () List!14264)

(assert (=> b!1398068 (= res!631870 (not (= (lexList!668 thiss!19762 rules!2550 (list!5529 lt!465876)) (tuple2!13815 lt!465867 Nil!14196))))))

(declare-fun b!1398069 () Bool)

(declare-fun e!892711 () Bool)

(assert (=> b!1398069 (= e!892716 e!892711)))

(declare-fun res!631846 () Bool)

(assert (=> b!1398069 (=> res!631846 e!892711)))

(declare-fun lt!465859 () List!14262)

(declare-fun ++!3692 (List!14262 List!14262) List!14262)

(declare-fun getSuffix!619 (List!14262 List!14262) List!14262)

(assert (=> b!1398069 (= res!631846 (not (= lt!465859 (++!3692 lt!465857 (getSuffix!619 lt!465859 lt!465857)))))))

(declare-fun pickWitness!226 (Int) List!14262)

(assert (=> b!1398069 (= lt!465859 (pickWitness!226 lambda!60981))))

(declare-fun b!1398070 () Bool)

(declare-fun res!631862 () Bool)

(assert (=> b!1398070 (=> (not res!631862) (not e!892703))))

(assert (=> b!1398070 (= res!631862 (not (= (isSeparator!2459 (rule!4222 t1!34)) (isSeparator!2459 (rule!4222 t2!34)))))))

(declare-fun e!892720 () Bool)

(assert (=> b!1398071 (= e!892724 e!892720)))

(declare-fun res!631867 () Bool)

(assert (=> b!1398071 (=> res!631867 e!892720)))

(declare-fun exists!562 (List!14265 Int) Bool)

(assert (=> b!1398071 (= res!631867 (not (exists!562 rules!2550 lambda!60984)))))

(assert (=> b!1398071 (exists!562 rules!2550 lambda!60984)))

(declare-fun lt!465855 () Unit!20505)

(declare-fun lemmaMapContains!170 (List!14265 Int Regex!3773) Unit!20505)

(assert (=> b!1398071 (= lt!465855 (lemmaMapContains!170 rules!2550 lambda!60982 lt!465869))))

(declare-fun b!1398072 () Bool)

(declare-fun res!631845 () Bool)

(assert (=> b!1398072 (=> (not res!631845) (not e!892703))))

(declare-fun isEmpty!8622 (List!14265) Bool)

(assert (=> b!1398072 (= res!631845 (not (isEmpty!8622 rules!2550)))))

(declare-fun e!892697 () Bool)

(declare-fun b!1398073 () Bool)

(declare-fun tp!398250 () Bool)

(declare-fun e!892700 () Bool)

(declare-fun inv!21 (TokenValue!2549) Bool)

(assert (=> b!1398073 (= e!892697 (and (inv!21 (value!79714 t2!34)) e!892700 tp!398250))))

(declare-fun b!1398074 () Bool)

(declare-fun res!631857 () Bool)

(assert (=> b!1398074 (=> res!631857 e!892706)))

(declare-datatypes ((IArray!9363 0))(
  ( (IArray!9364 (innerList!4739 List!14264)) )
))
(declare-datatypes ((Conc!4679 0))(
  ( (Node!4679 (left!12126 Conc!4679) (right!12456 Conc!4679) (csize!9588 Int) (cheight!4890 Int)) (Leaf!7105 (xs!7406 IArray!9363) (csize!9589 Int)) (Empty!4679) )
))
(declare-datatypes ((BalanceConc!9298 0))(
  ( (BalanceConc!9299 (c!230082 Conc!4679)) )
))
(declare-datatypes ((tuple2!13818 0))(
  ( (tuple2!13819 (_1!7795 BalanceConc!9298) (_2!7795 BalanceConc!9296)) )
))
(declare-fun lt!465875 () tuple2!13818)

(declare-fun isEmpty!8623 (BalanceConc!9296) Bool)

(assert (=> b!1398074 (= res!631857 (not (isEmpty!8623 (_2!7795 lt!465875))))))

(declare-fun b!1398075 () Bool)

(assert (=> b!1398075 (= e!892706 e!892695)))

(declare-fun res!631877 () Bool)

(assert (=> b!1398075 (=> res!631877 e!892695)))

(declare-fun lt!465874 () List!14262)

(assert (=> b!1398075 (= res!631877 (not (= (maxPrefix!1128 thiss!19762 rules!2550 lt!465874) (Some!2721 (tuple2!13817 t2!34 Nil!14196)))))))

(declare-fun lt!465872 () BalanceConc!9296)

(assert (=> b!1398075 (= lt!465874 (list!5529 lt!465872))))

(declare-fun b!1398076 () Bool)

(declare-fun res!631863 () Bool)

(assert (=> b!1398076 (=> res!631863 e!892695)))

(assert (=> b!1398076 (= res!631863 (not (contains!2760 rules!2550 lt!465860)))))

(declare-fun e!892725 () Bool)

(declare-fun tp!398248 () Bool)

(declare-fun b!1398077 () Bool)

(assert (=> b!1398077 (= e!892700 (and tp!398248 (inv!18518 (tag!2721 (rule!4222 t2!34))) (inv!18521 (transformation!2459 (rule!4222 t2!34))) e!892725))))

(assert (=> b!1398078 (= e!892725 (and tp!398247 tp!398243))))

(declare-fun b!1398079 () Bool)

(declare-fun res!631876 () Bool)

(declare-fun e!892714 () Bool)

(assert (=> b!1398079 (=> res!631876 e!892714)))

(assert (=> b!1398079 (= res!631876 (not (contains!2761 lt!465859 lt!465880)))))

(declare-fun tp!398253 () Bool)

(declare-fun e!892709 () Bool)

(declare-fun b!1398080 () Bool)

(assert (=> b!1398080 (= e!892709 (and (inv!21 (value!79714 t1!34)) e!892713 tp!398253))))

(declare-fun b!1398081 () Bool)

(declare-fun res!631854 () Bool)

(declare-fun e!892715 () Bool)

(assert (=> b!1398081 (=> (not res!631854) (not e!892715))))

(declare-fun separableTokensPredicate!437 (LexerInterface!2154 Token!4580 Token!4580 List!14265) Bool)

(assert (=> b!1398081 (= res!631854 (not (separableTokensPredicate!437 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun res!631875 () Bool)

(assert (=> start!127322 (=> (not res!631875) (not e!892703))))

(get-info :version)

(assert (=> start!127322 (= res!631875 ((_ is Lexer!2152) thiss!19762))))

(assert (=> start!127322 e!892703))

(assert (=> start!127322 true))

(declare-fun e!892717 () Bool)

(assert (=> start!127322 e!892717))

(declare-fun inv!18522 (Token!4580) Bool)

(assert (=> start!127322 (and (inv!18522 t1!34) e!892709)))

(assert (=> start!127322 (and (inv!18522 t2!34) e!892697)))

(declare-fun b!1398082 () Bool)

(declare-fun res!631864 () Bool)

(assert (=> b!1398082 (=> res!631864 e!892707)))

(assert (=> b!1398082 (= res!631864 (not (contains!2760 rules!2550 (rule!4222 t1!34))))))

(declare-fun b!1398083 () Bool)

(assert (=> b!1398083 (= e!892711 e!892714)))

(declare-fun res!631844 () Bool)

(assert (=> b!1398083 (=> res!631844 e!892714)))

(assert (=> b!1398083 (= res!631844 (not (contains!2761 lt!465857 lt!465880)))))

(declare-fun lt!465870 () BalanceConc!9296)

(declare-fun apply!3603 (BalanceConc!9296 Int) C!7836)

(assert (=> b!1398083 (= lt!465880 (apply!3603 lt!465870 0))))

(declare-fun b!1398084 () Bool)

(declare-fun res!631848 () Bool)

(assert (=> b!1398084 (=> (not res!631848) (not e!892703))))

(declare-fun rulesInvariant!2024 (LexerInterface!2154 List!14265) Bool)

(assert (=> b!1398084 (= res!631848 (rulesInvariant!2024 thiss!19762 rules!2550))))

(declare-fun b!1398085 () Bool)

(declare-fun e!892708 () Bool)

(assert (=> b!1398085 (= e!892712 e!892708)))

(declare-fun res!631861 () Bool)

(assert (=> b!1398085 (=> res!631861 e!892708)))

(declare-fun lt!465868 () Bool)

(assert (=> b!1398085 (= res!631861 lt!465868)))

(declare-fun lt!465861 () Unit!20505)

(declare-fun e!892719 () Unit!20505)

(assert (=> b!1398085 (= lt!465861 e!892719)))

(declare-fun c!230078 () Bool)

(assert (=> b!1398085 (= c!230078 lt!465868)))

(assert (=> b!1398085 (= lt!465868 (not (contains!2761 (usedCharacters!270 (regex!2459 (rule!4222 t1!34))) lt!465880)))))

(declare-fun b!1398086 () Bool)

(declare-fun Unit!20507 () Unit!20505)

(assert (=> b!1398086 (= e!892719 Unit!20507)))

(declare-fun b!1398087 () Bool)

(declare-fun Unit!20508 () Unit!20505)

(assert (=> b!1398087 (= e!892719 Unit!20508)))

(declare-fun lt!465877 () Unit!20505)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!204 (Regex!3773 List!14262 C!7836) Unit!20505)

(declare-fun head!2577 (List!14262) C!7836)

(assert (=> b!1398087 (= lt!465877 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!204 (regex!2459 (rule!4222 t1!34)) lt!465881 (head!2577 lt!465881)))))

(assert (=> b!1398087 false))

(declare-fun b!1398088 () Bool)

(declare-fun res!631878 () Bool)

(assert (=> b!1398088 (=> (not res!631878) (not e!892715))))

(declare-fun sepAndNonSepRulesDisjointChars!832 (List!14265 List!14265) Bool)

(assert (=> b!1398088 (= res!631878 (sepAndNonSepRulesDisjointChars!832 rules!2550 rules!2550))))

(declare-fun b!1398089 () Bool)

(declare-fun e!892723 () Bool)

(declare-fun tp!398246 () Bool)

(assert (=> b!1398089 (= e!892717 (and e!892723 tp!398246))))

(declare-fun b!1398090 () Bool)

(declare-fun tp!398245 () Bool)

(assert (=> b!1398090 (= e!892723 (and tp!398245 (inv!18518 (tag!2721 (h!19600 rules!2550))) (inv!18521 (transformation!2459 (h!19600 rules!2550))) e!892722))))

(declare-fun b!1398091 () Bool)

(declare-fun res!631865 () Bool)

(assert (=> b!1398091 (=> res!631865 e!892714)))

(declare-fun lt!465866 () C!7836)

(assert (=> b!1398091 (= res!631865 (not (contains!2761 lt!465857 lt!465866)))))

(assert (=> b!1398092 (= e!892714 e!892704)))

(declare-fun res!631856 () Bool)

(assert (=> b!1398092 (=> res!631856 e!892704)))

(declare-fun exists!563 (List!14266 Int) Bool)

(assert (=> b!1398092 (= res!631856 (not (exists!563 (map!3149 rules!2550 lambda!60982) lambda!60983)))))

(declare-fun lt!465862 () List!14266)

(assert (=> b!1398092 (exists!563 lt!465862 lambda!60983)))

(declare-fun lt!465882 () Unit!20505)

(declare-fun matchRGenUnionSpec!184 (Regex!3773 List!14266 List!14262) Unit!20505)

(assert (=> b!1398092 (= lt!465882 (matchRGenUnionSpec!184 lt!465863 lt!465862 lt!465859))))

(assert (=> b!1398092 (= lt!465862 (map!3149 rules!2550 lambda!60982))))

(declare-fun b!1398093 () Bool)

(declare-fun e!892702 () Bool)

(assert (=> b!1398093 (= e!892708 e!892702)))

(declare-fun res!631852 () Bool)

(assert (=> b!1398093 (=> res!631852 e!892702)))

(declare-fun lt!465878 () Bool)

(assert (=> b!1398093 (= res!631852 lt!465878)))

(declare-fun lt!465879 () Unit!20505)

(declare-fun e!892710 () Unit!20505)

(assert (=> b!1398093 (= lt!465879 e!892710)))

(declare-fun c!230079 () Bool)

(assert (=> b!1398093 (= c!230079 lt!465878)))

(assert (=> b!1398093 (= lt!465878 (not (contains!2761 (usedCharacters!270 (regex!2459 (rule!4222 t2!34))) lt!465866)))))

(declare-fun b!1398094 () Bool)

(assert (=> b!1398094 (= e!892703 e!892715)))

(declare-fun res!631873 () Bool)

(assert (=> b!1398094 (=> (not res!631873) (not e!892715))))

(declare-fun size!11678 (BalanceConc!9296) Int)

(assert (=> b!1398094 (= res!631873 (> (size!11678 lt!465872) 0))))

(declare-fun charsOf!1431 (Token!4580) BalanceConc!9296)

(assert (=> b!1398094 (= lt!465872 (charsOf!1431 t2!34))))

(declare-fun b!1398095 () Bool)

(assert (=> b!1398095 (= e!892720 e!892707)))

(declare-fun res!631860 () Bool)

(assert (=> b!1398095 (=> res!631860 e!892707)))

(declare-fun lt!465864 () tuple2!13818)

(declare-fun list!5530 (BalanceConc!9298) List!14264)

(assert (=> b!1398095 (= res!631860 (not (= (list!5530 (_1!7795 lt!465864)) lt!465867)))))

(assert (=> b!1398095 (= lt!465867 (Cons!14198 t1!34 Nil!14198))))

(declare-fun lex!979 (LexerInterface!2154 List!14265 BalanceConc!9296) tuple2!13818)

(assert (=> b!1398095 (= lt!465864 (lex!979 thiss!19762 rules!2550 lt!465876))))

(declare-fun print!918 (LexerInterface!2154 BalanceConc!9298) BalanceConc!9296)

(declare-fun singletonSeq!1116 (Token!4580) BalanceConc!9298)

(assert (=> b!1398095 (= lt!465876 (print!918 thiss!19762 (singletonSeq!1116 t1!34)))))

(declare-fun getWitness!451 (List!14265 Int) Rule!4718)

(assert (=> b!1398095 (= lt!465860 (getWitness!451 rules!2550 lambda!60984))))

(declare-fun b!1398096 () Bool)

(declare-fun res!631855 () Bool)

(assert (=> b!1398096 (=> res!631855 e!892712)))

(assert (=> b!1398096 (= res!631855 (not (matchR!1764 (regex!2459 (rule!4222 t2!34)) lt!465874)))))

(declare-fun b!1398097 () Bool)

(declare-fun res!631858 () Bool)

(assert (=> b!1398097 (=> res!631858 e!892714)))

(assert (=> b!1398097 (= res!631858 (not (matchR!1764 lt!465863 lt!465859)))))

(declare-fun b!1398098 () Bool)

(declare-fun res!631879 () Bool)

(assert (=> b!1398098 (=> res!631879 e!892707)))

(assert (=> b!1398098 (= res!631879 (not (isEmpty!8623 (_2!7795 lt!465864))))))

(declare-fun b!1398099 () Bool)

(declare-fun res!631869 () Bool)

(assert (=> b!1398099 (=> res!631869 e!892714)))

(assert (=> b!1398099 (= res!631869 (not (contains!2761 lt!465859 lt!465866)))))

(declare-fun b!1398100 () Bool)

(declare-fun Unit!20509 () Unit!20505)

(assert (=> b!1398100 (= e!892710 Unit!20509)))

(declare-fun b!1398101 () Bool)

(assert (=> b!1398101 (= e!892715 e!892696)))

(declare-fun res!631851 () Bool)

(assert (=> b!1398101 (=> (not res!631851) (not e!892696))))

(declare-fun prefixMatch!282 (Regex!3773 List!14262) Bool)

(assert (=> b!1398101 (= res!631851 (prefixMatch!282 lt!465863 lt!465857))))

(declare-fun rulesRegex!342 (LexerInterface!2154 List!14265) Regex!3773)

(assert (=> b!1398101 (= lt!465863 (rulesRegex!342 thiss!19762 rules!2550))))

(assert (=> b!1398101 (= lt!465857 (++!3692 lt!465881 (Cons!14196 lt!465866 Nil!14196)))))

(assert (=> b!1398101 (= lt!465866 (apply!3603 lt!465872 0))))

(assert (=> b!1398101 (= lt!465881 (list!5529 lt!465870))))

(assert (=> b!1398101 (= lt!465870 (charsOf!1431 t1!34))))

(declare-fun b!1398102 () Bool)

(assert (=> b!1398102 (= e!892702 e!892705)))

(declare-fun res!631859 () Bool)

(assert (=> b!1398102 (=> res!631859 e!892705)))

(assert (=> b!1398102 (= res!631859 (or (not (isSeparator!2459 lt!465860)) (isSeparator!2459 (rule!4222 t1!34))))))

(assert (=> b!1398102 (= (regex!2459 lt!465860) lt!465869)))

(declare-fun b!1398103 () Bool)

(declare-fun Unit!20510 () Unit!20505)

(assert (=> b!1398103 (= e!892710 Unit!20510)))

(declare-fun lt!465858 () Unit!20505)

(assert (=> b!1398103 (= lt!465858 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!204 (regex!2459 (rule!4222 t2!34)) lt!465874 (head!2577 lt!465874)))))

(assert (=> b!1398103 false))

(declare-fun b!1398104 () Bool)

(declare-fun res!631871 () Bool)

(assert (=> b!1398104 (=> (not res!631871) (not e!892703))))

(assert (=> b!1398104 (= res!631871 (rulesProduceIndividualToken!1123 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1398105 () Bool)

(assert (=> b!1398105 (= e!892707 e!892706)))

(declare-fun res!631850 () Bool)

(assert (=> b!1398105 (=> res!631850 e!892706)))

(assert (=> b!1398105 (= res!631850 (not (= (list!5530 (_1!7795 lt!465875)) lt!465865)))))

(assert (=> b!1398105 (= lt!465865 (Cons!14198 t2!34 Nil!14198))))

(assert (=> b!1398105 (= lt!465875 (lex!979 thiss!19762 rules!2550 lt!465871))))

(assert (=> b!1398105 (= lt!465871 (print!918 thiss!19762 (singletonSeq!1116 t2!34)))))

(assert (= (and start!127322 res!631875) b!1398072))

(assert (= (and b!1398072 res!631845) b!1398084))

(assert (= (and b!1398084 res!631848) b!1398104))

(assert (= (and b!1398104 res!631871) b!1398059))

(assert (= (and b!1398059 res!631872) b!1398070))

(assert (= (and b!1398070 res!631862) b!1398094))

(assert (= (and b!1398094 res!631873) b!1398088))

(assert (= (and b!1398088 res!631878) b!1398081))

(assert (= (and b!1398081 res!631854) b!1398101))

(assert (= (and b!1398101 res!631851) b!1398060))

(assert (= (and b!1398060 (not res!631849)) b!1398069))

(assert (= (and b!1398069 (not res!631846)) b!1398083))

(assert (= (and b!1398083 (not res!631844)) b!1398079))

(assert (= (and b!1398079 (not res!631876)) b!1398091))

(assert (= (and b!1398091 (not res!631865)) b!1398099))

(assert (= (and b!1398099 (not res!631869)) b!1398097))

(assert (= (and b!1398097 (not res!631858)) b!1398092))

(assert (= (and b!1398092 (not res!631856)) b!1398061))

(assert (= (and b!1398061 (not res!631847)) b!1398071))

(assert (= (and b!1398071 (not res!631867)) b!1398095))

(assert (= (and b!1398095 (not res!631860)) b!1398098))

(assert (= (and b!1398098 (not res!631879)) b!1398068))

(assert (= (and b!1398068 (not res!631870)) b!1398065))

(assert (= (and b!1398065 (not res!631866)) b!1398082))

(assert (= (and b!1398082 (not res!631864)) b!1398105))

(assert (= (and b!1398105 (not res!631850)) b!1398074))

(assert (= (and b!1398074 (not res!631857)) b!1398057))

(assert (= (and b!1398057 (not res!631874)) b!1398075))

(assert (= (and b!1398075 (not res!631877)) b!1398063))

(assert (= (and b!1398063 (not res!631868)) b!1398076))

(assert (= (and b!1398076 (not res!631863)) b!1398062))

(assert (= (and b!1398062 (not res!631853)) b!1398096))

(assert (= (and b!1398096 (not res!631855)) b!1398085))

(assert (= (and b!1398085 c!230078) b!1398087))

(assert (= (and b!1398085 (not c!230078)) b!1398086))

(assert (= (and b!1398085 (not res!631861)) b!1398093))

(assert (= (and b!1398093 c!230079) b!1398103))

(assert (= (and b!1398093 (not c!230079)) b!1398100))

(assert (= (and b!1398093 (not res!631852)) b!1398102))

(assert (= (and b!1398102 (not res!631859)) b!1398067))

(assert (= b!1398090 b!1398066))

(assert (= b!1398089 b!1398090))

(assert (= (and start!127322 ((_ is Cons!14199) rules!2550)) b!1398089))

(assert (= b!1398064 b!1398058))

(assert (= b!1398080 b!1398064))

(assert (= start!127322 b!1398080))

(assert (= b!1398077 b!1398078))

(assert (= b!1398073 b!1398077))

(assert (= start!127322 b!1398073))

(declare-fun m!1574693 () Bool)

(assert (=> b!1398059 m!1574693))

(declare-fun m!1574695 () Bool)

(assert (=> b!1398098 m!1574695))

(declare-fun m!1574697 () Bool)

(assert (=> b!1398091 m!1574697))

(declare-fun m!1574699 () Bool)

(assert (=> b!1398079 m!1574699))

(declare-fun m!1574701 () Bool)

(assert (=> b!1398067 m!1574701))

(declare-fun m!1574703 () Bool)

(assert (=> b!1398067 m!1574703))

(assert (=> b!1398067 m!1574703))

(declare-fun m!1574705 () Bool)

(assert (=> b!1398067 m!1574705))

(declare-fun m!1574707 () Bool)

(assert (=> b!1398067 m!1574707))

(declare-fun m!1574709 () Bool)

(assert (=> b!1398072 m!1574709))

(declare-fun m!1574711 () Bool)

(assert (=> b!1398088 m!1574711))

(declare-fun m!1574713 () Bool)

(assert (=> b!1398104 m!1574713))

(declare-fun m!1574715 () Bool)

(assert (=> b!1398074 m!1574715))

(declare-fun m!1574717 () Bool)

(assert (=> b!1398080 m!1574717))

(declare-fun m!1574719 () Bool)

(assert (=> b!1398097 m!1574719))

(declare-fun m!1574721 () Bool)

(assert (=> b!1398101 m!1574721))

(declare-fun m!1574723 () Bool)

(assert (=> b!1398101 m!1574723))

(declare-fun m!1574725 () Bool)

(assert (=> b!1398101 m!1574725))

(declare-fun m!1574727 () Bool)

(assert (=> b!1398101 m!1574727))

(declare-fun m!1574729 () Bool)

(assert (=> b!1398101 m!1574729))

(declare-fun m!1574731 () Bool)

(assert (=> b!1398101 m!1574731))

(declare-fun m!1574733 () Bool)

(assert (=> b!1398076 m!1574733))

(declare-fun m!1574735 () Bool)

(assert (=> b!1398096 m!1574735))

(declare-fun m!1574737 () Bool)

(assert (=> b!1398090 m!1574737))

(declare-fun m!1574739 () Bool)

(assert (=> b!1398090 m!1574739))

(declare-fun m!1574741 () Bool)

(assert (=> b!1398065 m!1574741))

(declare-fun m!1574743 () Bool)

(assert (=> b!1398083 m!1574743))

(declare-fun m!1574745 () Bool)

(assert (=> b!1398083 m!1574745))

(declare-fun m!1574747 () Bool)

(assert (=> b!1398073 m!1574747))

(declare-fun m!1574749 () Bool)

(assert (=> b!1398084 m!1574749))

(declare-fun m!1574751 () Bool)

(assert (=> b!1398087 m!1574751))

(assert (=> b!1398087 m!1574751))

(declare-fun m!1574753 () Bool)

(assert (=> b!1398087 m!1574753))

(declare-fun m!1574755 () Bool)

(assert (=> b!1398103 m!1574755))

(assert (=> b!1398103 m!1574755))

(declare-fun m!1574757 () Bool)

(assert (=> b!1398103 m!1574757))

(declare-fun m!1574759 () Bool)

(assert (=> b!1398071 m!1574759))

(assert (=> b!1398071 m!1574759))

(declare-fun m!1574761 () Bool)

(assert (=> b!1398071 m!1574761))

(declare-fun m!1574763 () Bool)

(assert (=> b!1398077 m!1574763))

(declare-fun m!1574765 () Bool)

(assert (=> b!1398077 m!1574765))

(declare-fun m!1574767 () Bool)

(assert (=> b!1398063 m!1574767))

(declare-fun m!1574769 () Bool)

(assert (=> b!1398062 m!1574769))

(declare-fun m!1574771 () Bool)

(assert (=> b!1398062 m!1574771))

(declare-fun m!1574773 () Bool)

(assert (=> b!1398062 m!1574773))

(declare-fun m!1574775 () Bool)

(assert (=> b!1398062 m!1574775))

(declare-fun m!1574777 () Bool)

(assert (=> b!1398105 m!1574777))

(declare-fun m!1574779 () Bool)

(assert (=> b!1398105 m!1574779))

(declare-fun m!1574781 () Bool)

(assert (=> b!1398105 m!1574781))

(assert (=> b!1398105 m!1574781))

(declare-fun m!1574783 () Bool)

(assert (=> b!1398105 m!1574783))

(declare-fun m!1574785 () Bool)

(assert (=> b!1398061 m!1574785))

(assert (=> b!1398061 m!1574785))

(declare-fun m!1574787 () Bool)

(assert (=> b!1398061 m!1574787))

(assert (=> b!1398061 m!1574785))

(assert (=> b!1398061 m!1574785))

(declare-fun m!1574789 () Bool)

(assert (=> b!1398061 m!1574789))

(declare-fun m!1574791 () Bool)

(assert (=> start!127322 m!1574791))

(declare-fun m!1574793 () Bool)

(assert (=> start!127322 m!1574793))

(declare-fun m!1574795 () Bool)

(assert (=> b!1398099 m!1574795))

(declare-fun m!1574797 () Bool)

(assert (=> b!1398069 m!1574797))

(assert (=> b!1398069 m!1574797))

(declare-fun m!1574799 () Bool)

(assert (=> b!1398069 m!1574799))

(declare-fun m!1574801 () Bool)

(assert (=> b!1398069 m!1574801))

(declare-fun m!1574803 () Bool)

(assert (=> b!1398057 m!1574803))

(assert (=> b!1398057 m!1574803))

(declare-fun m!1574805 () Bool)

(assert (=> b!1398057 m!1574805))

(declare-fun m!1574807 () Bool)

(assert (=> b!1398094 m!1574807))

(declare-fun m!1574809 () Bool)

(assert (=> b!1398094 m!1574809))

(declare-fun m!1574811 () Bool)

(assert (=> b!1398095 m!1574811))

(declare-fun m!1574813 () Bool)

(assert (=> b!1398095 m!1574813))

(assert (=> b!1398095 m!1574811))

(declare-fun m!1574815 () Bool)

(assert (=> b!1398095 m!1574815))

(declare-fun m!1574817 () Bool)

(assert (=> b!1398095 m!1574817))

(declare-fun m!1574819 () Bool)

(assert (=> b!1398095 m!1574819))

(declare-fun m!1574821 () Bool)

(assert (=> b!1398093 m!1574821))

(assert (=> b!1398093 m!1574821))

(declare-fun m!1574823 () Bool)

(assert (=> b!1398093 m!1574823))

(declare-fun m!1574825 () Bool)

(assert (=> b!1398075 m!1574825))

(declare-fun m!1574827 () Bool)

(assert (=> b!1398075 m!1574827))

(declare-fun m!1574829 () Bool)

(assert (=> b!1398082 m!1574829))

(declare-fun m!1574831 () Bool)

(assert (=> b!1398081 m!1574831))

(declare-fun m!1574833 () Bool)

(assert (=> b!1398085 m!1574833))

(assert (=> b!1398085 m!1574833))

(declare-fun m!1574835 () Bool)

(assert (=> b!1398085 m!1574835))

(declare-fun m!1574837 () Bool)

(assert (=> b!1398092 m!1574837))

(assert (=> b!1398092 m!1574785))

(declare-fun m!1574839 () Bool)

(assert (=> b!1398092 m!1574839))

(assert (=> b!1398092 m!1574785))

(assert (=> b!1398092 m!1574785))

(declare-fun m!1574841 () Bool)

(assert (=> b!1398092 m!1574841))

(declare-fun m!1574843 () Bool)

(assert (=> b!1398068 m!1574843))

(assert (=> b!1398068 m!1574843))

(declare-fun m!1574845 () Bool)

(assert (=> b!1398068 m!1574845))

(declare-fun m!1574847 () Bool)

(assert (=> b!1398060 m!1574847))

(assert (=> b!1398060 m!1574847))

(declare-fun m!1574849 () Bool)

(assert (=> b!1398060 m!1574849))

(declare-fun m!1574851 () Bool)

(assert (=> b!1398064 m!1574851))

(declare-fun m!1574853 () Bool)

(assert (=> b!1398064 m!1574853))

(check-sat (not b!1398094) (not b!1398093) b_and!93615 (not b_next!34741) (not b!1398067) (not b!1398092) (not b!1398089) (not b!1398079) (not b!1398088) (not b!1398105) b_and!93621 (not b!1398098) (not b!1398060) (not b!1398095) (not b_next!34733) (not b_next!34731) (not b!1398076) (not b!1398087) b_and!93611 (not b!1398083) (not b!1398085) (not b!1398080) (not start!127322) (not b!1398096) (not b!1398069) (not b!1398075) (not b!1398064) (not b!1398057) (not b!1398059) b_and!93619 (not b!1398071) (not b!1398103) (not b!1398073) (not b!1398074) (not b!1398082) (not b!1398104) (not b!1398077) (not b!1398081) (not b!1398063) (not b_next!34735) (not b_next!34737) (not b!1398062) (not b!1398065) b_and!93617 (not b!1398097) b_and!93613 (not b!1398061) (not b!1398068) (not b!1398099) (not b!1398072) (not b!1398091) (not b!1398090) (not b!1398101) (not b!1398084) (not b_next!34739))
(check-sat b_and!93621 (not b_next!34733) (not b_next!34731) b_and!93611 b_and!93619 b_and!93615 (not b_next!34735) (not b_next!34741) (not b_next!34737) b_and!93617 b_and!93613 (not b_next!34739))
(get-model)

(declare-fun d!399844 () Bool)

(assert (=> d!399844 (not (matchR!1764 (regex!2459 (rule!4222 t1!34)) lt!465881))))

(declare-fun lt!465935 () Unit!20505)

(declare-fun choose!8609 (Regex!3773 List!14262 C!7836) Unit!20505)

(assert (=> d!399844 (= lt!465935 (choose!8609 (regex!2459 (rule!4222 t1!34)) lt!465881 (head!2577 lt!465881)))))

(assert (=> d!399844 (validRegex!1649 (regex!2459 (rule!4222 t1!34)))))

(assert (=> d!399844 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!204 (regex!2459 (rule!4222 t1!34)) lt!465881 (head!2577 lt!465881)) lt!465935)))

(declare-fun bs!338040 () Bool)

(assert (= bs!338040 d!399844))

(assert (=> bs!338040 m!1574769))

(assert (=> bs!338040 m!1574751))

(declare-fun m!1574999 () Bool)

(assert (=> bs!338040 m!1574999))

(declare-fun m!1575001 () Bool)

(assert (=> bs!338040 m!1575001))

(assert (=> b!1398087 d!399844))

(declare-fun d!399852 () Bool)

(assert (=> d!399852 (= (head!2577 lt!465881) (h!19597 lt!465881))))

(assert (=> b!1398087 d!399852))

(declare-fun d!399854 () Bool)

(declare-fun res!631975 () Bool)

(declare-fun e!892811 () Bool)

(assert (=> d!399854 (=> res!631975 e!892811)))

(assert (=> d!399854 (= res!631975 (not ((_ is Cons!14199) rules!2550)))))

(assert (=> d!399854 (= (sepAndNonSepRulesDisjointChars!832 rules!2550 rules!2550) e!892811)))

(declare-fun b!1398261 () Bool)

(declare-fun e!892812 () Bool)

(assert (=> b!1398261 (= e!892811 e!892812)))

(declare-fun res!631976 () Bool)

(assert (=> b!1398261 (=> (not res!631976) (not e!892812))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!398 (Rule!4718 List!14265) Bool)

(assert (=> b!1398261 (= res!631976 (ruleDisjointCharsFromAllFromOtherType!398 (h!19600 rules!2550) rules!2550))))

(declare-fun b!1398262 () Bool)

(assert (=> b!1398262 (= e!892812 (sepAndNonSepRulesDisjointChars!832 rules!2550 (t!122754 rules!2550)))))

(assert (= (and d!399854 (not res!631975)) b!1398261))

(assert (= (and b!1398261 res!631976) b!1398262))

(declare-fun m!1575003 () Bool)

(assert (=> b!1398261 m!1575003))

(declare-fun m!1575005 () Bool)

(assert (=> b!1398262 m!1575005))

(assert (=> b!1398088 d!399854))

(declare-fun b!1398281 () Bool)

(declare-fun e!892830 () Bool)

(declare-fun call!93380 () Bool)

(assert (=> b!1398281 (= e!892830 call!93380)))

(declare-fun b!1398282 () Bool)

(declare-fun res!631990 () Bool)

(declare-fun e!892827 () Bool)

(assert (=> b!1398282 (=> (not res!631990) (not e!892827))))

(declare-fun call!93379 () Bool)

(assert (=> b!1398282 (= res!631990 call!93379)))

(declare-fun e!892832 () Bool)

(assert (=> b!1398282 (= e!892832 e!892827)))

(declare-fun bm!93373 () Bool)

(assert (=> bm!93373 (= call!93379 call!93380)))

(declare-fun b!1398283 () Bool)

(declare-fun e!892831 () Bool)

(assert (=> b!1398283 (= e!892831 e!892832)))

(declare-fun c!230116 () Bool)

(assert (=> b!1398283 (= c!230116 ((_ is Union!3773) lt!465869))))

(declare-fun b!1398284 () Bool)

(declare-fun e!892828 () Bool)

(declare-fun call!93378 () Bool)

(assert (=> b!1398284 (= e!892828 call!93378)))

(declare-fun b!1398285 () Bool)

(declare-fun res!631989 () Bool)

(declare-fun e!892833 () Bool)

(assert (=> b!1398285 (=> res!631989 e!892833)))

(assert (=> b!1398285 (= res!631989 (not ((_ is Concat!6323) lt!465869)))))

(assert (=> b!1398285 (= e!892832 e!892833)))

(declare-fun b!1398286 () Bool)

(assert (=> b!1398286 (= e!892827 call!93378)))

(declare-fun b!1398287 () Bool)

(assert (=> b!1398287 (= e!892833 e!892828)))

(declare-fun res!631991 () Bool)

(assert (=> b!1398287 (=> (not res!631991) (not e!892828))))

(assert (=> b!1398287 (= res!631991 call!93379)))

(declare-fun bm!93375 () Bool)

(assert (=> bm!93375 (= call!93378 (validRegex!1649 (ite c!230116 (regTwo!8059 lt!465869) (regTwo!8058 lt!465869))))))

(declare-fun b!1398288 () Bool)

(assert (=> b!1398288 (= e!892831 e!892830)))

(declare-fun res!631988 () Bool)

(declare-fun nullable!1227 (Regex!3773) Bool)

(assert (=> b!1398288 (= res!631988 (not (nullable!1227 (reg!4102 lt!465869))))))

(assert (=> b!1398288 (=> (not res!631988) (not e!892830))))

(declare-fun b!1398289 () Bool)

(declare-fun e!892829 () Bool)

(assert (=> b!1398289 (= e!892829 e!892831)))

(declare-fun c!230115 () Bool)

(assert (=> b!1398289 (= c!230115 ((_ is Star!3773) lt!465869))))

(declare-fun d!399856 () Bool)

(declare-fun res!631987 () Bool)

(assert (=> d!399856 (=> res!631987 e!892829)))

(assert (=> d!399856 (= res!631987 ((_ is ElementMatch!3773) lt!465869))))

(assert (=> d!399856 (= (validRegex!1649 lt!465869) e!892829)))

(declare-fun bm!93374 () Bool)

(assert (=> bm!93374 (= call!93380 (validRegex!1649 (ite c!230115 (reg!4102 lt!465869) (ite c!230116 (regOne!8059 lt!465869) (regOne!8058 lt!465869)))))))

(assert (= (and d!399856 (not res!631987)) b!1398289))

(assert (= (and b!1398289 c!230115) b!1398288))

(assert (= (and b!1398289 (not c!230115)) b!1398283))

(assert (= (and b!1398288 res!631988) b!1398281))

(assert (= (and b!1398283 c!230116) b!1398282))

(assert (= (and b!1398283 (not c!230116)) b!1398285))

(assert (= (and b!1398282 res!631990) b!1398286))

(assert (= (and b!1398285 (not res!631989)) b!1398287))

(assert (= (and b!1398287 res!631991) b!1398284))

(assert (= (or b!1398282 b!1398287) bm!93373))

(assert (= (or b!1398286 b!1398284) bm!93375))

(assert (= (or b!1398281 bm!93373) bm!93374))

(declare-fun m!1575007 () Bool)

(assert (=> bm!93375 m!1575007))

(declare-fun m!1575009 () Bool)

(assert (=> b!1398288 m!1575009))

(declare-fun m!1575011 () Bool)

(assert (=> bm!93374 m!1575011))

(assert (=> b!1398067 d!399856))

(declare-fun d!399858 () Bool)

(declare-fun lt!465938 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2103 (List!14262) (InoxSet C!7836))

(assert (=> d!399858 (= lt!465938 (select (content!2103 (usedCharacters!270 (regex!2459 lt!465860))) lt!465880))))

(declare-fun e!892839 () Bool)

(assert (=> d!399858 (= lt!465938 e!892839)))

(declare-fun res!631997 () Bool)

(assert (=> d!399858 (=> (not res!631997) (not e!892839))))

(assert (=> d!399858 (= res!631997 ((_ is Cons!14196) (usedCharacters!270 (regex!2459 lt!465860))))))

(assert (=> d!399858 (= (contains!2761 (usedCharacters!270 (regex!2459 lt!465860)) lt!465880) lt!465938)))

(declare-fun b!1398294 () Bool)

(declare-fun e!892838 () Bool)

(assert (=> b!1398294 (= e!892839 e!892838)))

(declare-fun res!631996 () Bool)

(assert (=> b!1398294 (=> res!631996 e!892838)))

(assert (=> b!1398294 (= res!631996 (= (h!19597 (usedCharacters!270 (regex!2459 lt!465860))) lt!465880))))

(declare-fun b!1398295 () Bool)

(assert (=> b!1398295 (= e!892838 (contains!2761 (t!122751 (usedCharacters!270 (regex!2459 lt!465860))) lt!465880))))

(assert (= (and d!399858 res!631997) b!1398294))

(assert (= (and b!1398294 (not res!631996)) b!1398295))

(assert (=> d!399858 m!1574703))

(declare-fun m!1575013 () Bool)

(assert (=> d!399858 m!1575013))

(declare-fun m!1575015 () Bool)

(assert (=> d!399858 m!1575015))

(declare-fun m!1575017 () Bool)

(assert (=> b!1398295 m!1575017))

(assert (=> b!1398067 d!399858))

(declare-fun c!230127 () Bool)

(declare-fun call!93392 () List!14262)

(declare-fun bm!93384 () Bool)

(declare-fun call!93389 () List!14262)

(declare-fun call!93390 () List!14262)

(assert (=> bm!93384 (= call!93390 (++!3692 (ite c!230127 call!93389 call!93392) (ite c!230127 call!93392 call!93389)))))

(declare-fun bm!93385 () Bool)

(declare-fun call!93391 () List!14262)

(declare-fun c!230125 () Bool)

(assert (=> bm!93385 (= call!93391 (usedCharacters!270 (ite c!230125 (reg!4102 (regex!2459 lt!465860)) (ite c!230127 (regTwo!8059 (regex!2459 lt!465860)) (regOne!8058 (regex!2459 lt!465860))))))))

(declare-fun bm!93386 () Bool)

(assert (=> bm!93386 (= call!93389 (usedCharacters!270 (ite c!230127 (regOne!8059 (regex!2459 lt!465860)) (regTwo!8058 (regex!2459 lt!465860)))))))

(declare-fun b!1398312 () Bool)

(declare-fun e!892849 () List!14262)

(assert (=> b!1398312 (= e!892849 call!93391)))

(declare-fun b!1398313 () Bool)

(declare-fun e!892848 () List!14262)

(declare-fun e!892851 () List!14262)

(assert (=> b!1398313 (= e!892848 e!892851)))

(declare-fun c!230126 () Bool)

(assert (=> b!1398313 (= c!230126 ((_ is ElementMatch!3773) (regex!2459 lt!465860)))))

(declare-fun b!1398314 () Bool)

(assert (=> b!1398314 (= e!892848 Nil!14196)))

(declare-fun b!1398315 () Bool)

(declare-fun e!892850 () List!14262)

(assert (=> b!1398315 (= e!892849 e!892850)))

(assert (=> b!1398315 (= c!230127 ((_ is Union!3773) (regex!2459 lt!465860)))))

(declare-fun b!1398316 () Bool)

(assert (=> b!1398316 (= c!230125 ((_ is Star!3773) (regex!2459 lt!465860)))))

(assert (=> b!1398316 (= e!892851 e!892849)))

(declare-fun bm!93387 () Bool)

(assert (=> bm!93387 (= call!93392 call!93391)))

(declare-fun b!1398318 () Bool)

(assert (=> b!1398318 (= e!892850 call!93390)))

(declare-fun b!1398319 () Bool)

(assert (=> b!1398319 (= e!892851 (Cons!14196 (c!230081 (regex!2459 lt!465860)) Nil!14196))))

(declare-fun b!1398317 () Bool)

(assert (=> b!1398317 (= e!892850 call!93390)))

(declare-fun d!399860 () Bool)

(declare-fun c!230128 () Bool)

(assert (=> d!399860 (= c!230128 (or ((_ is EmptyExpr!3773) (regex!2459 lt!465860)) ((_ is EmptyLang!3773) (regex!2459 lt!465860))))))

(assert (=> d!399860 (= (usedCharacters!270 (regex!2459 lt!465860)) e!892848)))

(assert (= (and d!399860 c!230128) b!1398314))

(assert (= (and d!399860 (not c!230128)) b!1398313))

(assert (= (and b!1398313 c!230126) b!1398319))

(assert (= (and b!1398313 (not c!230126)) b!1398316))

(assert (= (and b!1398316 c!230125) b!1398312))

(assert (= (and b!1398316 (not c!230125)) b!1398315))

(assert (= (and b!1398315 c!230127) b!1398318))

(assert (= (and b!1398315 (not c!230127)) b!1398317))

(assert (= (or b!1398318 b!1398317) bm!93386))

(assert (= (or b!1398318 b!1398317) bm!93387))

(assert (= (or b!1398318 b!1398317) bm!93384))

(assert (= (or b!1398312 bm!93387) bm!93385))

(declare-fun m!1575019 () Bool)

(assert (=> bm!93384 m!1575019))

(declare-fun m!1575021 () Bool)

(assert (=> bm!93385 m!1575021))

(declare-fun m!1575023 () Bool)

(assert (=> bm!93386 m!1575023))

(assert (=> b!1398067 d!399860))

(declare-fun d!399862 () Bool)

(assert (=> d!399862 (not (contains!2761 (usedCharacters!270 (regex!2459 lt!465860)) lt!465880))))

(declare-fun lt!465941 () Unit!20505)

(declare-fun choose!8611 (LexerInterface!2154 List!14265 List!14265 Rule!4718 Rule!4718 C!7836) Unit!20505)

(assert (=> d!399862 (= lt!465941 (choose!8611 thiss!19762 rules!2550 rules!2550 (rule!4222 t1!34) lt!465860 lt!465880))))

(assert (=> d!399862 (rulesInvariant!2024 thiss!19762 rules!2550)))

(assert (=> d!399862 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!132 thiss!19762 rules!2550 rules!2550 (rule!4222 t1!34) lt!465860 lt!465880) lt!465941)))

(declare-fun bs!338041 () Bool)

(assert (= bs!338041 d!399862))

(assert (=> bs!338041 m!1574703))

(assert (=> bs!338041 m!1574703))

(assert (=> bs!338041 m!1574705))

(declare-fun m!1575025 () Bool)

(assert (=> bs!338041 m!1575025))

(assert (=> bs!338041 m!1574749))

(assert (=> b!1398067 d!399862))

(declare-fun b!1398355 () Bool)

(declare-fun e!892874 () Bool)

(declare-fun lt!465964 () tuple2!13814)

(assert (=> b!1398355 (= e!892874 (= (_2!7793 lt!465964) (list!5529 lt!465876)))))

(declare-fun b!1398356 () Bool)

(declare-fun e!892875 () tuple2!13814)

(assert (=> b!1398356 (= e!892875 (tuple2!13815 Nil!14198 (list!5529 lt!465876)))))

(declare-fun d!399864 () Bool)

(assert (=> d!399864 e!892874))

(declare-fun c!230137 () Bool)

(declare-fun size!11684 (List!14264) Int)

(assert (=> d!399864 (= c!230137 (> (size!11684 (_1!7793 lt!465964)) 0))))

(assert (=> d!399864 (= lt!465964 e!892875)))

(declare-fun c!230138 () Bool)

(declare-fun lt!465963 () Option!2722)

(assert (=> d!399864 (= c!230138 ((_ is Some!2721) lt!465963))))

(assert (=> d!399864 (= lt!465963 (maxPrefix!1128 thiss!19762 rules!2550 (list!5529 lt!465876)))))

(assert (=> d!399864 (= (lexList!668 thiss!19762 rules!2550 (list!5529 lt!465876)) lt!465964)))

(declare-fun b!1398357 () Bool)

(declare-fun lt!465962 () tuple2!13814)

(assert (=> b!1398357 (= e!892875 (tuple2!13815 (Cons!14198 (_1!7794 (v!21641 lt!465963)) (_1!7793 lt!465962)) (_2!7793 lt!465962)))))

(assert (=> b!1398357 (= lt!465962 (lexList!668 thiss!19762 rules!2550 (_2!7794 (v!21641 lt!465963))))))

(declare-fun b!1398358 () Bool)

(declare-fun e!892873 () Bool)

(assert (=> b!1398358 (= e!892874 e!892873)))

(declare-fun res!632019 () Bool)

(declare-fun size!11685 (List!14262) Int)

(assert (=> b!1398358 (= res!632019 (< (size!11685 (_2!7793 lt!465964)) (size!11685 (list!5529 lt!465876))))))

(assert (=> b!1398358 (=> (not res!632019) (not e!892873))))

(declare-fun b!1398359 () Bool)

(declare-fun isEmpty!8629 (List!14264) Bool)

(assert (=> b!1398359 (= e!892873 (not (isEmpty!8629 (_1!7793 lt!465964))))))

(assert (= (and d!399864 c!230138) b!1398357))

(assert (= (and d!399864 (not c!230138)) b!1398356))

(assert (= (and d!399864 c!230137) b!1398358))

(assert (= (and d!399864 (not c!230137)) b!1398355))

(assert (= (and b!1398358 res!632019) b!1398359))

(declare-fun m!1575071 () Bool)

(assert (=> d!399864 m!1575071))

(assert (=> d!399864 m!1574843))

(declare-fun m!1575073 () Bool)

(assert (=> d!399864 m!1575073))

(declare-fun m!1575075 () Bool)

(assert (=> b!1398357 m!1575075))

(declare-fun m!1575077 () Bool)

(assert (=> b!1398358 m!1575077))

(assert (=> b!1398358 m!1574843))

(declare-fun m!1575079 () Bool)

(assert (=> b!1398358 m!1575079))

(declare-fun m!1575081 () Bool)

(assert (=> b!1398359 m!1575081))

(assert (=> b!1398068 d!399864))

(declare-fun d!399876 () Bool)

(declare-fun list!5533 (Conc!4678) List!14262)

(assert (=> d!399876 (= (list!5529 lt!465876) (list!5533 (c!230080 lt!465876)))))

(declare-fun bs!338044 () Bool)

(assert (= bs!338044 d!399876))

(declare-fun m!1575083 () Bool)

(assert (=> bs!338044 m!1575083))

(assert (=> b!1398068 d!399876))

(declare-fun d!399878 () Bool)

(assert (=> d!399878 (= (inv!18518 (tag!2721 (h!19600 rules!2550))) (= (mod (str.len (value!79713 (tag!2721 (h!19600 rules!2550)))) 2) 0))))

(assert (=> b!1398090 d!399878))

(declare-fun d!399880 () Bool)

(declare-fun res!632022 () Bool)

(declare-fun e!892878 () Bool)

(assert (=> d!399880 (=> (not res!632022) (not e!892878))))

(declare-fun semiInverseModEq!955 (Int Int) Bool)

(assert (=> d!399880 (= res!632022 (semiInverseModEq!955 (toChars!3609 (transformation!2459 (h!19600 rules!2550))) (toValue!3750 (transformation!2459 (h!19600 rules!2550)))))))

(assert (=> d!399880 (= (inv!18521 (transformation!2459 (h!19600 rules!2550))) e!892878)))

(declare-fun b!1398362 () Bool)

(declare-fun equivClasses!914 (Int Int) Bool)

(assert (=> b!1398362 (= e!892878 (equivClasses!914 (toChars!3609 (transformation!2459 (h!19600 rules!2550))) (toValue!3750 (transformation!2459 (h!19600 rules!2550)))))))

(assert (= (and d!399880 res!632022) b!1398362))

(declare-fun m!1575085 () Bool)

(assert (=> d!399880 m!1575085))

(declare-fun m!1575087 () Bool)

(assert (=> b!1398362 m!1575087))

(assert (=> b!1398090 d!399880))

(declare-fun d!399882 () Bool)

(declare-fun e!892884 () Bool)

(assert (=> d!399882 e!892884))

(declare-fun res!632027 () Bool)

(assert (=> d!399882 (=> (not res!632027) (not e!892884))))

(declare-fun lt!465967 () List!14262)

(assert (=> d!399882 (= res!632027 (= (content!2103 lt!465967) ((_ map or) (content!2103 lt!465857) (content!2103 (getSuffix!619 lt!465859 lt!465857)))))))

(declare-fun e!892883 () List!14262)

(assert (=> d!399882 (= lt!465967 e!892883)))

(declare-fun c!230141 () Bool)

(assert (=> d!399882 (= c!230141 ((_ is Nil!14196) lt!465857))))

(assert (=> d!399882 (= (++!3692 lt!465857 (getSuffix!619 lt!465859 lt!465857)) lt!465967)))

(declare-fun b!1398371 () Bool)

(assert (=> b!1398371 (= e!892883 (getSuffix!619 lt!465859 lt!465857))))

(declare-fun b!1398374 () Bool)

(assert (=> b!1398374 (= e!892884 (or (not (= (getSuffix!619 lt!465859 lt!465857) Nil!14196)) (= lt!465967 lt!465857)))))

(declare-fun b!1398373 () Bool)

(declare-fun res!632028 () Bool)

(assert (=> b!1398373 (=> (not res!632028) (not e!892884))))

(assert (=> b!1398373 (= res!632028 (= (size!11685 lt!465967) (+ (size!11685 lt!465857) (size!11685 (getSuffix!619 lt!465859 lt!465857)))))))

(declare-fun b!1398372 () Bool)

(assert (=> b!1398372 (= e!892883 (Cons!14196 (h!19597 lt!465857) (++!3692 (t!122751 lt!465857) (getSuffix!619 lt!465859 lt!465857))))))

(assert (= (and d!399882 c!230141) b!1398371))

(assert (= (and d!399882 (not c!230141)) b!1398372))

(assert (= (and d!399882 res!632027) b!1398373))

(assert (= (and b!1398373 res!632028) b!1398374))

(declare-fun m!1575089 () Bool)

(assert (=> d!399882 m!1575089))

(declare-fun m!1575091 () Bool)

(assert (=> d!399882 m!1575091))

(assert (=> d!399882 m!1574797))

(declare-fun m!1575093 () Bool)

(assert (=> d!399882 m!1575093))

(declare-fun m!1575095 () Bool)

(assert (=> b!1398373 m!1575095))

(declare-fun m!1575097 () Bool)

(assert (=> b!1398373 m!1575097))

(assert (=> b!1398373 m!1574797))

(declare-fun m!1575099 () Bool)

(assert (=> b!1398373 m!1575099))

(assert (=> b!1398372 m!1574797))

(declare-fun m!1575101 () Bool)

(assert (=> b!1398372 m!1575101))

(assert (=> b!1398069 d!399882))

(declare-fun d!399884 () Bool)

(declare-fun lt!465970 () List!14262)

(assert (=> d!399884 (= (++!3692 lt!465857 lt!465970) lt!465859)))

(declare-fun e!892887 () List!14262)

(assert (=> d!399884 (= lt!465970 e!892887)))

(declare-fun c!230144 () Bool)

(assert (=> d!399884 (= c!230144 ((_ is Cons!14196) lt!465857))))

(assert (=> d!399884 (>= (size!11685 lt!465859) (size!11685 lt!465857))))

(assert (=> d!399884 (= (getSuffix!619 lt!465859 lt!465857) lt!465970)))

(declare-fun b!1398379 () Bool)

(declare-fun tail!2032 (List!14262) List!14262)

(assert (=> b!1398379 (= e!892887 (getSuffix!619 (tail!2032 lt!465859) (t!122751 lt!465857)))))

(declare-fun b!1398380 () Bool)

(assert (=> b!1398380 (= e!892887 lt!465859)))

(assert (= (and d!399884 c!230144) b!1398379))

(assert (= (and d!399884 (not c!230144)) b!1398380))

(declare-fun m!1575103 () Bool)

(assert (=> d!399884 m!1575103))

(declare-fun m!1575105 () Bool)

(assert (=> d!399884 m!1575105))

(assert (=> d!399884 m!1575097))

(declare-fun m!1575107 () Bool)

(assert (=> b!1398379 m!1575107))

(assert (=> b!1398379 m!1575107))

(declare-fun m!1575109 () Bool)

(assert (=> b!1398379 m!1575109))

(assert (=> b!1398069 d!399884))

(declare-fun d!399886 () Bool)

(declare-fun lt!465973 () List!14262)

(declare-fun dynLambda!6560 (Int List!14262) Bool)

(assert (=> d!399886 (dynLambda!6560 lambda!60981 lt!465973)))

(declare-fun choose!8613 (Int) List!14262)

(assert (=> d!399886 (= lt!465973 (choose!8613 lambda!60981))))

(assert (=> d!399886 (Exists!923 lambda!60981)))

(assert (=> d!399886 (= (pickWitness!226 lambda!60981) lt!465973)))

(declare-fun b_lambda!43819 () Bool)

(assert (=> (not b_lambda!43819) (not d!399886)))

(declare-fun bs!338045 () Bool)

(assert (= bs!338045 d!399886))

(declare-fun m!1575111 () Bool)

(assert (=> bs!338045 m!1575111))

(declare-fun m!1575113 () Bool)

(assert (=> bs!338045 m!1575113))

(assert (=> bs!338045 m!1574847))

(assert (=> b!1398069 d!399886))

(declare-fun d!399888 () Bool)

(declare-fun lt!465974 () Bool)

(assert (=> d!399888 (= lt!465974 (select (content!2103 lt!465857) lt!465866))))

(declare-fun e!892889 () Bool)

(assert (=> d!399888 (= lt!465974 e!892889)))

(declare-fun res!632030 () Bool)

(assert (=> d!399888 (=> (not res!632030) (not e!892889))))

(assert (=> d!399888 (= res!632030 ((_ is Cons!14196) lt!465857))))

(assert (=> d!399888 (= (contains!2761 lt!465857 lt!465866) lt!465974)))

(declare-fun b!1398381 () Bool)

(declare-fun e!892888 () Bool)

(assert (=> b!1398381 (= e!892889 e!892888)))

(declare-fun res!632029 () Bool)

(assert (=> b!1398381 (=> res!632029 e!892888)))

(assert (=> b!1398381 (= res!632029 (= (h!19597 lt!465857) lt!465866))))

(declare-fun b!1398382 () Bool)

(assert (=> b!1398382 (= e!892888 (contains!2761 (t!122751 lt!465857) lt!465866))))

(assert (= (and d!399888 res!632030) b!1398381))

(assert (= (and b!1398381 (not res!632029)) b!1398382))

(assert (=> d!399888 m!1575091))

(declare-fun m!1575115 () Bool)

(assert (=> d!399888 m!1575115))

(declare-fun m!1575117 () Bool)

(assert (=> b!1398382 m!1575117))

(assert (=> b!1398091 d!399888))

(declare-fun bs!338046 () Bool)

(declare-fun d!399890 () Bool)

(assert (= bs!338046 (and d!399890 b!1398092)))

(declare-fun lambda!61003 () Int)

(assert (=> bs!338046 (not (= lambda!61003 lambda!60983))))

(declare-fun lambda!61004 () Int)

(assert (=> bs!338046 (= lambda!61004 lambda!60983)))

(declare-fun bs!338047 () Bool)

(assert (= bs!338047 d!399890))

(assert (=> bs!338047 (not (= lambda!61004 lambda!61003))))

(assert (=> d!399890 true))

(assert (=> d!399890 (= (matchR!1764 lt!465863 lt!465859) (exists!563 lt!465862 lambda!61004))))

(declare-fun lt!465977 () Unit!20505)

(declare-fun choose!8614 (Regex!3773 List!14266 List!14262) Unit!20505)

(assert (=> d!399890 (= lt!465977 (choose!8614 lt!465863 lt!465862 lt!465859))))

(declare-fun forall!3450 (List!14266 Int) Bool)

(assert (=> d!399890 (forall!3450 lt!465862 lambda!61003)))

(assert (=> d!399890 (= (matchRGenUnionSpec!184 lt!465863 lt!465862 lt!465859) lt!465977)))

(assert (=> bs!338047 m!1574719))

(declare-fun m!1575119 () Bool)

(assert (=> bs!338047 m!1575119))

(declare-fun m!1575121 () Bool)

(assert (=> bs!338047 m!1575121))

(declare-fun m!1575123 () Bool)

(assert (=> bs!338047 m!1575123))

(assert (=> b!1398092 d!399890))

(declare-fun bs!338048 () Bool)

(declare-fun d!399892 () Bool)

(assert (= bs!338048 (and d!399892 b!1398092)))

(declare-fun lambda!61007 () Int)

(assert (=> bs!338048 (not (= lambda!61007 lambda!60983))))

(declare-fun bs!338049 () Bool)

(assert (= bs!338049 (and d!399892 d!399890)))

(assert (=> bs!338049 (not (= lambda!61007 lambda!61003))))

(assert (=> bs!338049 (not (= lambda!61007 lambda!61004))))

(assert (=> d!399892 true))

(declare-fun order!8693 () Int)

(declare-fun dynLambda!6561 (Int Int) Int)

(assert (=> d!399892 (< (dynLambda!6561 order!8693 lambda!60983) (dynLambda!6561 order!8693 lambda!61007))))

(assert (=> d!399892 (= (exists!563 (map!3149 rules!2550 lambda!60982) lambda!60983) (not (forall!3450 (map!3149 rules!2550 lambda!60982) lambda!61007)))))

(declare-fun bs!338050 () Bool)

(assert (= bs!338050 d!399892))

(assert (=> bs!338050 m!1574785))

(declare-fun m!1575125 () Bool)

(assert (=> bs!338050 m!1575125))

(assert (=> b!1398092 d!399892))

(declare-fun d!399894 () Bool)

(declare-fun lt!465980 () List!14266)

(declare-fun size!11687 (List!14266) Int)

(declare-fun size!11688 (List!14265) Int)

(assert (=> d!399894 (= (size!11687 lt!465980) (size!11688 rules!2550))))

(declare-fun e!892894 () List!14266)

(assert (=> d!399894 (= lt!465980 e!892894)))

(declare-fun c!230147 () Bool)

(assert (=> d!399894 (= c!230147 ((_ is Nil!14199) rules!2550))))

(assert (=> d!399894 (= (map!3149 rules!2550 lambda!60982) lt!465980)))

(declare-fun b!1398391 () Bool)

(assert (=> b!1398391 (= e!892894 Nil!14200)))

(declare-fun b!1398392 () Bool)

(declare-fun $colon$colon!229 (List!14266 Regex!3773) List!14266)

(declare-fun dynLambda!6562 (Int Rule!4718) Regex!3773)

(assert (=> b!1398392 (= e!892894 ($colon$colon!229 (map!3149 (t!122754 rules!2550) lambda!60982) (dynLambda!6562 lambda!60982 (h!19600 rules!2550))))))

(assert (= (and d!399894 c!230147) b!1398391))

(assert (= (and d!399894 (not c!230147)) b!1398392))

(declare-fun b_lambda!43821 () Bool)

(assert (=> (not b_lambda!43821) (not b!1398392)))

(declare-fun m!1575127 () Bool)

(assert (=> d!399894 m!1575127))

(declare-fun m!1575129 () Bool)

(assert (=> d!399894 m!1575129))

(declare-fun m!1575131 () Bool)

(assert (=> b!1398392 m!1575131))

(declare-fun m!1575133 () Bool)

(assert (=> b!1398392 m!1575133))

(assert (=> b!1398392 m!1575131))

(assert (=> b!1398392 m!1575133))

(declare-fun m!1575135 () Bool)

(assert (=> b!1398392 m!1575135))

(assert (=> b!1398092 d!399894))

(declare-fun bs!338051 () Bool)

(declare-fun d!399896 () Bool)

(assert (= bs!338051 (and d!399896 b!1398092)))

(declare-fun lambda!61008 () Int)

(assert (=> bs!338051 (not (= lambda!61008 lambda!60983))))

(declare-fun bs!338052 () Bool)

(assert (= bs!338052 (and d!399896 d!399890)))

(assert (=> bs!338052 (not (= lambda!61008 lambda!61003))))

(assert (=> bs!338052 (not (= lambda!61008 lambda!61004))))

(declare-fun bs!338053 () Bool)

(assert (= bs!338053 (and d!399896 d!399892)))

(assert (=> bs!338053 (= lambda!61008 lambda!61007)))

(assert (=> d!399896 true))

(assert (=> d!399896 (< (dynLambda!6561 order!8693 lambda!60983) (dynLambda!6561 order!8693 lambda!61008))))

(assert (=> d!399896 (= (exists!563 lt!465862 lambda!60983) (not (forall!3450 lt!465862 lambda!61008)))))

(declare-fun bs!338054 () Bool)

(assert (= bs!338054 d!399896))

(declare-fun m!1575137 () Bool)

(assert (=> bs!338054 m!1575137))

(assert (=> b!1398092 d!399896))

(declare-fun d!399898 () Bool)

(declare-fun lt!465983 () Bool)

(declare-fun content!2104 (List!14265) (InoxSet Rule!4718))

(assert (=> d!399898 (= lt!465983 (select (content!2104 rules!2550) (rule!4222 t1!34)))))

(declare-fun e!892899 () Bool)

(assert (=> d!399898 (= lt!465983 e!892899)))

(declare-fun res!632037 () Bool)

(assert (=> d!399898 (=> (not res!632037) (not e!892899))))

(assert (=> d!399898 (= res!632037 ((_ is Cons!14199) rules!2550))))

(assert (=> d!399898 (= (contains!2760 rules!2550 (rule!4222 t1!34)) lt!465983)))

(declare-fun b!1398397 () Bool)

(declare-fun e!892900 () Bool)

(assert (=> b!1398397 (= e!892899 e!892900)))

(declare-fun res!632038 () Bool)

(assert (=> b!1398397 (=> res!632038 e!892900)))

(assert (=> b!1398397 (= res!632038 (= (h!19600 rules!2550) (rule!4222 t1!34)))))

(declare-fun b!1398398 () Bool)

(assert (=> b!1398398 (= e!892900 (contains!2760 (t!122754 rules!2550) (rule!4222 t1!34)))))

(assert (= (and d!399898 res!632037) b!1398397))

(assert (= (and b!1398397 (not res!632038)) b!1398398))

(declare-fun m!1575139 () Bool)

(assert (=> d!399898 m!1575139))

(declare-fun m!1575141 () Bool)

(assert (=> d!399898 m!1575141))

(declare-fun m!1575143 () Bool)

(assert (=> b!1398398 m!1575143))

(assert (=> b!1398082 d!399898))

(declare-fun d!399900 () Bool)

(assert (=> d!399900 (not (matchR!1764 (regex!2459 (rule!4222 t2!34)) lt!465874))))

(declare-fun lt!465984 () Unit!20505)

(assert (=> d!399900 (= lt!465984 (choose!8609 (regex!2459 (rule!4222 t2!34)) lt!465874 (head!2577 lt!465874)))))

(assert (=> d!399900 (validRegex!1649 (regex!2459 (rule!4222 t2!34)))))

(assert (=> d!399900 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!204 (regex!2459 (rule!4222 t2!34)) lt!465874 (head!2577 lt!465874)) lt!465984)))

(declare-fun bs!338055 () Bool)

(assert (= bs!338055 d!399900))

(assert (=> bs!338055 m!1574735))

(assert (=> bs!338055 m!1574755))

(declare-fun m!1575145 () Bool)

(assert (=> bs!338055 m!1575145))

(declare-fun m!1575147 () Bool)

(assert (=> bs!338055 m!1575147))

(assert (=> b!1398103 d!399900))

(declare-fun d!399902 () Bool)

(assert (=> d!399902 (= (head!2577 lt!465874) (h!19597 lt!465874))))

(assert (=> b!1398103 d!399902))

(declare-fun d!399904 () Bool)

(declare-fun lt!466033 () Bool)

(declare-fun e!892971 () Bool)

(assert (=> d!399904 (= lt!466033 e!892971)))

(declare-fun res!632092 () Bool)

(assert (=> d!399904 (=> (not res!632092) (not e!892971))))

(assert (=> d!399904 (= res!632092 (= (list!5530 (_1!7795 (lex!979 thiss!19762 rules!2550 (print!918 thiss!19762 (singletonSeq!1116 t1!34))))) (list!5530 (singletonSeq!1116 t1!34))))))

(declare-fun e!892972 () Bool)

(assert (=> d!399904 (= lt!466033 e!892972)))

(declare-fun res!632091 () Bool)

(assert (=> d!399904 (=> (not res!632091) (not e!892972))))

(declare-fun lt!466034 () tuple2!13818)

(declare-fun size!11689 (BalanceConc!9298) Int)

(assert (=> d!399904 (= res!632091 (= (size!11689 (_1!7795 lt!466034)) 1))))

(assert (=> d!399904 (= lt!466034 (lex!979 thiss!19762 rules!2550 (print!918 thiss!19762 (singletonSeq!1116 t1!34))))))

(assert (=> d!399904 (not (isEmpty!8622 rules!2550))))

(assert (=> d!399904 (= (rulesProduceIndividualToken!1123 thiss!19762 rules!2550 t1!34) lt!466033)))

(declare-fun b!1398510 () Bool)

(declare-fun res!632093 () Bool)

(assert (=> b!1398510 (=> (not res!632093) (not e!892972))))

(declare-fun apply!3608 (BalanceConc!9298 Int) Token!4580)

(assert (=> b!1398510 (= res!632093 (= (apply!3608 (_1!7795 lt!466034) 0) t1!34))))

(declare-fun b!1398511 () Bool)

(assert (=> b!1398511 (= e!892972 (isEmpty!8623 (_2!7795 lt!466034)))))

(declare-fun b!1398512 () Bool)

(assert (=> b!1398512 (= e!892971 (isEmpty!8623 (_2!7795 (lex!979 thiss!19762 rules!2550 (print!918 thiss!19762 (singletonSeq!1116 t1!34))))))))

(assert (= (and d!399904 res!632091) b!1398510))

(assert (= (and b!1398510 res!632093) b!1398511))

(assert (= (and d!399904 res!632092) b!1398512))

(assert (=> d!399904 m!1574811))

(assert (=> d!399904 m!1574813))

(assert (=> d!399904 m!1574811))

(declare-fun m!1575273 () Bool)

(assert (=> d!399904 m!1575273))

(assert (=> d!399904 m!1574811))

(assert (=> d!399904 m!1574813))

(declare-fun m!1575275 () Bool)

(assert (=> d!399904 m!1575275))

(declare-fun m!1575277 () Bool)

(assert (=> d!399904 m!1575277))

(assert (=> d!399904 m!1574709))

(declare-fun m!1575279 () Bool)

(assert (=> d!399904 m!1575279))

(declare-fun m!1575281 () Bool)

(assert (=> b!1398510 m!1575281))

(declare-fun m!1575283 () Bool)

(assert (=> b!1398511 m!1575283))

(assert (=> b!1398512 m!1574811))

(assert (=> b!1398512 m!1574811))

(assert (=> b!1398512 m!1574813))

(assert (=> b!1398512 m!1574813))

(assert (=> b!1398512 m!1575275))

(declare-fun m!1575285 () Bool)

(assert (=> b!1398512 m!1575285))

(assert (=> b!1398104 d!399904))

(declare-fun lt!466040 () Bool)

(declare-fun d!399948 () Bool)

(declare-fun content!2105 (List!14266) (InoxSet Regex!3773))

(assert (=> d!399948 (= lt!466040 (select (content!2105 (map!3149 rules!2550 lambda!60982)) lt!465869))))

(declare-fun e!892985 () Bool)

(assert (=> d!399948 (= lt!466040 e!892985)))

(declare-fun res!632108 () Bool)

(assert (=> d!399948 (=> (not res!632108) (not e!892985))))

(assert (=> d!399948 (= res!632108 ((_ is Cons!14200) (map!3149 rules!2550 lambda!60982)))))

(assert (=> d!399948 (= (contains!2759 (map!3149 rules!2550 lambda!60982) lt!465869) lt!466040)))

(declare-fun b!1398527 () Bool)

(declare-fun e!892986 () Bool)

(assert (=> b!1398527 (= e!892985 e!892986)))

(declare-fun res!632109 () Bool)

(assert (=> b!1398527 (=> res!632109 e!892986)))

(assert (=> b!1398527 (= res!632109 (= (h!19601 (map!3149 rules!2550 lambda!60982)) lt!465869))))

(declare-fun b!1398528 () Bool)

(assert (=> b!1398528 (= e!892986 (contains!2759 (t!122755 (map!3149 rules!2550 lambda!60982)) lt!465869))))

(assert (= (and d!399948 res!632108) b!1398527))

(assert (= (and b!1398527 (not res!632109)) b!1398528))

(assert (=> d!399948 m!1574785))

(declare-fun m!1575309 () Bool)

(assert (=> d!399948 m!1575309))

(declare-fun m!1575311 () Bool)

(assert (=> d!399948 m!1575311))

(declare-fun m!1575313 () Bool)

(assert (=> b!1398528 m!1575313))

(assert (=> b!1398061 d!399948))

(assert (=> b!1398061 d!399894))

(declare-fun lt!466046 () Regex!3773)

(declare-fun b!1398563 () Bool)

(declare-fun e!893007 () Bool)

(assert (=> b!1398563 (= e!893007 (contains!2759 (map!3149 rules!2550 lambda!60982) lt!466046))))

(declare-fun e!893008 () Regex!3773)

(declare-fun b!1398564 () Bool)

(assert (=> b!1398564 (= e!893008 (getWitness!450 (t!122755 (map!3149 rules!2550 lambda!60982)) lambda!60983))))

(declare-fun b!1398565 () Bool)

(declare-fun e!893010 () Regex!3773)

(assert (=> b!1398565 (= e!893010 (h!19601 (map!3149 rules!2550 lambda!60982)))))

(declare-fun b!1398566 () Bool)

(declare-fun lt!466047 () Unit!20505)

(declare-fun Unit!20513 () Unit!20505)

(assert (=> b!1398566 (= lt!466047 Unit!20513)))

(assert (=> b!1398566 false))

(declare-fun head!2580 (List!14266) Regex!3773)

(assert (=> b!1398566 (= e!893008 (head!2580 (map!3149 rules!2550 lambda!60982)))))

(declare-fun e!893009 () Bool)

(declare-fun b!1398567 () Bool)

(declare-fun dynLambda!6563 (Int Regex!3773) Bool)

(assert (=> b!1398567 (= e!893009 (dynLambda!6563 lambda!60983 (h!19601 (map!3149 rules!2550 lambda!60982))))))

(declare-fun d!399958 () Bool)

(assert (=> d!399958 e!893007))

(declare-fun res!632120 () Bool)

(assert (=> d!399958 (=> (not res!632120) (not e!893007))))

(assert (=> d!399958 (= res!632120 (dynLambda!6563 lambda!60983 lt!466046))))

(assert (=> d!399958 (= lt!466046 e!893010)))

(declare-fun c!230188 () Bool)

(assert (=> d!399958 (= c!230188 e!893009)))

(declare-fun res!632121 () Bool)

(assert (=> d!399958 (=> (not res!632121) (not e!893009))))

(assert (=> d!399958 (= res!632121 ((_ is Cons!14200) (map!3149 rules!2550 lambda!60982)))))

(assert (=> d!399958 (exists!563 (map!3149 rules!2550 lambda!60982) lambda!60983)))

(assert (=> d!399958 (= (getWitness!450 (map!3149 rules!2550 lambda!60982) lambda!60983) lt!466046)))

(declare-fun b!1398568 () Bool)

(assert (=> b!1398568 (= e!893010 e!893008)))

(declare-fun c!230187 () Bool)

(assert (=> b!1398568 (= c!230187 ((_ is Cons!14200) (map!3149 rules!2550 lambda!60982)))))

(assert (= (and d!399958 res!632121) b!1398567))

(assert (= (and d!399958 c!230188) b!1398565))

(assert (= (and d!399958 (not c!230188)) b!1398568))

(assert (= (and b!1398568 c!230187) b!1398564))

(assert (= (and b!1398568 (not c!230187)) b!1398566))

(assert (= (and d!399958 res!632120) b!1398563))

(declare-fun b_lambda!43839 () Bool)

(assert (=> (not b_lambda!43839) (not b!1398567)))

(declare-fun b_lambda!43841 () Bool)

(assert (=> (not b_lambda!43841) (not d!399958)))

(assert (=> b!1398566 m!1574785))

(declare-fun m!1575333 () Bool)

(assert (=> b!1398566 m!1575333))

(declare-fun m!1575335 () Bool)

(assert (=> b!1398567 m!1575335))

(declare-fun m!1575337 () Bool)

(assert (=> b!1398564 m!1575337))

(declare-fun m!1575339 () Bool)

(assert (=> d!399958 m!1575339))

(assert (=> d!399958 m!1574785))

(assert (=> d!399958 m!1574841))

(assert (=> b!1398563 m!1574785))

(declare-fun m!1575341 () Bool)

(assert (=> b!1398563 m!1575341))

(assert (=> b!1398061 d!399958))

(declare-fun b!1398631 () Bool)

(declare-fun e!893047 () Bool)

(assert (=> b!1398631 (= e!893047 (nullable!1227 (regex!2459 (rule!4222 t1!34))))))

(declare-fun bm!93408 () Bool)

(declare-fun call!93413 () Bool)

(declare-fun isEmpty!8630 (List!14262) Bool)

(assert (=> bm!93408 (= call!93413 (isEmpty!8630 lt!465881))))

(declare-fun b!1398633 () Bool)

(declare-fun e!893048 () Bool)

(declare-fun e!893049 () Bool)

(assert (=> b!1398633 (= e!893048 e!893049)))

(declare-fun res!632147 () Bool)

(assert (=> b!1398633 (=> (not res!632147) (not e!893049))))

(declare-fun lt!466054 () Bool)

(assert (=> b!1398633 (= res!632147 (not lt!466054))))

(declare-fun b!1398634 () Bool)

(declare-fun e!893050 () Bool)

(assert (=> b!1398634 (= e!893050 (not (= (head!2577 lt!465881) (c!230081 (regex!2459 (rule!4222 t1!34))))))))

(declare-fun b!1398635 () Bool)

(declare-fun res!632146 () Bool)

(declare-fun e!893051 () Bool)

(assert (=> b!1398635 (=> (not res!632146) (not e!893051))))

(assert (=> b!1398635 (= res!632146 (not call!93413))))

(declare-fun b!1398636 () Bool)

(declare-fun res!632148 () Bool)

(assert (=> b!1398636 (=> res!632148 e!893050)))

(assert (=> b!1398636 (= res!632148 (not (isEmpty!8630 (tail!2032 lt!465881))))))

(declare-fun b!1398637 () Bool)

(declare-fun derivativeStep!985 (Regex!3773 C!7836) Regex!3773)

(assert (=> b!1398637 (= e!893047 (matchR!1764 (derivativeStep!985 (regex!2459 (rule!4222 t1!34)) (head!2577 lt!465881)) (tail!2032 lt!465881)))))

(declare-fun b!1398638 () Bool)

(declare-fun e!893046 () Bool)

(assert (=> b!1398638 (= e!893046 (= lt!466054 call!93413))))

(declare-fun b!1398639 () Bool)

(assert (=> b!1398639 (= e!893051 (= (head!2577 lt!465881) (c!230081 (regex!2459 (rule!4222 t1!34)))))))

(declare-fun b!1398640 () Bool)

(assert (=> b!1398640 (= e!893049 e!893050)))

(declare-fun res!632149 () Bool)

(assert (=> b!1398640 (=> res!632149 e!893050)))

(assert (=> b!1398640 (= res!632149 call!93413)))

(declare-fun b!1398641 () Bool)

(declare-fun res!632152 () Bool)

(assert (=> b!1398641 (=> (not res!632152) (not e!893051))))

(assert (=> b!1398641 (= res!632152 (isEmpty!8630 (tail!2032 lt!465881)))))

(declare-fun b!1398642 () Bool)

(declare-fun e!893045 () Bool)

(assert (=> b!1398642 (= e!893046 e!893045)))

(declare-fun c!230209 () Bool)

(assert (=> b!1398642 (= c!230209 ((_ is EmptyLang!3773) (regex!2459 (rule!4222 t1!34))))))

(declare-fun d!399966 () Bool)

(assert (=> d!399966 e!893046))

(declare-fun c!230208 () Bool)

(assert (=> d!399966 (= c!230208 ((_ is EmptyExpr!3773) (regex!2459 (rule!4222 t1!34))))))

(assert (=> d!399966 (= lt!466054 e!893047)))

(declare-fun c!230210 () Bool)

(assert (=> d!399966 (= c!230210 (isEmpty!8630 lt!465881))))

(assert (=> d!399966 (validRegex!1649 (regex!2459 (rule!4222 t1!34)))))

(assert (=> d!399966 (= (matchR!1764 (regex!2459 (rule!4222 t1!34)) lt!465881) lt!466054)))

(declare-fun b!1398632 () Bool)

(assert (=> b!1398632 (= e!893045 (not lt!466054))))

(declare-fun b!1398643 () Bool)

(declare-fun res!632151 () Bool)

(assert (=> b!1398643 (=> res!632151 e!893048)))

(assert (=> b!1398643 (= res!632151 e!893051)))

(declare-fun res!632153 () Bool)

(assert (=> b!1398643 (=> (not res!632153) (not e!893051))))

(assert (=> b!1398643 (= res!632153 lt!466054)))

(declare-fun b!1398644 () Bool)

(declare-fun res!632150 () Bool)

(assert (=> b!1398644 (=> res!632150 e!893048)))

(assert (=> b!1398644 (= res!632150 (not ((_ is ElementMatch!3773) (regex!2459 (rule!4222 t1!34)))))))

(assert (=> b!1398644 (= e!893045 e!893048)))

(assert (= (and d!399966 c!230210) b!1398631))

(assert (= (and d!399966 (not c!230210)) b!1398637))

(assert (= (and d!399966 c!230208) b!1398638))

(assert (= (and d!399966 (not c!230208)) b!1398642))

(assert (= (and b!1398642 c!230209) b!1398632))

(assert (= (and b!1398642 (not c!230209)) b!1398644))

(assert (= (and b!1398644 (not res!632150)) b!1398643))

(assert (= (and b!1398643 res!632153) b!1398635))

(assert (= (and b!1398635 res!632146) b!1398641))

(assert (= (and b!1398641 res!632152) b!1398639))

(assert (= (and b!1398643 (not res!632151)) b!1398633))

(assert (= (and b!1398633 res!632147) b!1398640))

(assert (= (and b!1398640 (not res!632149)) b!1398636))

(assert (= (and b!1398636 (not res!632148)) b!1398634))

(assert (= (or b!1398638 b!1398635 b!1398640) bm!93408))

(assert (=> b!1398637 m!1574751))

(assert (=> b!1398637 m!1574751))

(declare-fun m!1575389 () Bool)

(assert (=> b!1398637 m!1575389))

(declare-fun m!1575391 () Bool)

(assert (=> b!1398637 m!1575391))

(assert (=> b!1398637 m!1575389))

(assert (=> b!1398637 m!1575391))

(declare-fun m!1575393 () Bool)

(assert (=> b!1398637 m!1575393))

(assert (=> b!1398641 m!1575391))

(assert (=> b!1398641 m!1575391))

(declare-fun m!1575395 () Bool)

(assert (=> b!1398641 m!1575395))

(assert (=> b!1398634 m!1574751))

(assert (=> b!1398636 m!1575391))

(assert (=> b!1398636 m!1575391))

(assert (=> b!1398636 m!1575395))

(declare-fun m!1575397 () Bool)

(assert (=> bm!93408 m!1575397))

(assert (=> d!399966 m!1575397))

(assert (=> d!399966 m!1575001))

(declare-fun m!1575399 () Bool)

(assert (=> b!1398631 m!1575399))

(assert (=> b!1398639 m!1574751))

(assert (=> b!1398062 d!399966))

(declare-fun d!399984 () Bool)

(declare-fun dynLambda!6564 (Int Rule!4718) Bool)

(assert (=> d!399984 (dynLambda!6564 lambda!60985 (rule!4222 t2!34))))

(declare-fun lt!466064 () Unit!20505)

(declare-fun choose!8616 (List!14265 Int Rule!4718) Unit!20505)

(assert (=> d!399984 (= lt!466064 (choose!8616 rules!2550 lambda!60985 (rule!4222 t2!34)))))

(declare-fun e!893060 () Bool)

(assert (=> d!399984 e!893060))

(declare-fun res!632161 () Bool)

(assert (=> d!399984 (=> (not res!632161) (not e!893060))))

(declare-fun forall!3451 (List!14265 Int) Bool)

(assert (=> d!399984 (= res!632161 (forall!3451 rules!2550 lambda!60985))))

(assert (=> d!399984 (= (forallContained!654 rules!2550 lambda!60985 (rule!4222 t2!34)) lt!466064)))

(declare-fun b!1398656 () Bool)

(assert (=> b!1398656 (= e!893060 (contains!2760 rules!2550 (rule!4222 t2!34)))))

(assert (= (and d!399984 res!632161) b!1398656))

(declare-fun b_lambda!43845 () Bool)

(assert (=> (not b_lambda!43845) (not d!399984)))

(declare-fun m!1575431 () Bool)

(assert (=> d!399984 m!1575431))

(declare-fun m!1575435 () Bool)

(assert (=> d!399984 m!1575435))

(declare-fun m!1575439 () Bool)

(assert (=> d!399984 m!1575439))

(assert (=> b!1398656 m!1574767))

(assert (=> b!1398062 d!399984))

(declare-fun d!400000 () Bool)

(assert (=> d!400000 (dynLambda!6564 lambda!60985 (rule!4222 t1!34))))

(declare-fun lt!466067 () Unit!20505)

(assert (=> d!400000 (= lt!466067 (choose!8616 rules!2550 lambda!60985 (rule!4222 t1!34)))))

(declare-fun e!893062 () Bool)

(assert (=> d!400000 e!893062))

(declare-fun res!632163 () Bool)

(assert (=> d!400000 (=> (not res!632163) (not e!893062))))

(assert (=> d!400000 (= res!632163 (forall!3451 rules!2550 lambda!60985))))

(assert (=> d!400000 (= (forallContained!654 rules!2550 lambda!60985 (rule!4222 t1!34)) lt!466067)))

(declare-fun b!1398658 () Bool)

(assert (=> b!1398658 (= e!893062 (contains!2760 rules!2550 (rule!4222 t1!34)))))

(assert (= (and d!400000 res!632163) b!1398658))

(declare-fun b_lambda!43847 () Bool)

(assert (=> (not b_lambda!43847) (not d!400000)))

(declare-fun m!1575447 () Bool)

(assert (=> d!400000 m!1575447))

(declare-fun m!1575449 () Bool)

(assert (=> d!400000 m!1575449))

(assert (=> d!400000 m!1575439))

(assert (=> b!1398658 m!1574829))

(assert (=> b!1398062 d!400000))

(declare-fun d!400006 () Bool)

(assert (=> d!400006 (dynLambda!6564 lambda!60985 lt!465860)))

(declare-fun lt!466068 () Unit!20505)

(assert (=> d!400006 (= lt!466068 (choose!8616 rules!2550 lambda!60985 lt!465860))))

(declare-fun e!893064 () Bool)

(assert (=> d!400006 e!893064))

(declare-fun res!632165 () Bool)

(assert (=> d!400006 (=> (not res!632165) (not e!893064))))

(assert (=> d!400006 (= res!632165 (forall!3451 rules!2550 lambda!60985))))

(assert (=> d!400006 (= (forallContained!654 rules!2550 lambda!60985 lt!465860) lt!466068)))

(declare-fun b!1398660 () Bool)

(assert (=> b!1398660 (= e!893064 (contains!2760 rules!2550 lt!465860))))

(assert (= (and d!400006 res!632165) b!1398660))

(declare-fun b_lambda!43849 () Bool)

(assert (=> (not b_lambda!43849) (not d!400006)))

(declare-fun m!1575455 () Bool)

(assert (=> d!400006 m!1575455))

(declare-fun m!1575457 () Bool)

(assert (=> d!400006 m!1575457))

(assert (=> d!400006 m!1575439))

(assert (=> b!1398660 m!1574733))

(assert (=> b!1398062 d!400006))

(declare-fun d!400010 () Bool)

(declare-fun lt!466069 () Bool)

(assert (=> d!400010 (= lt!466069 (select (content!2103 lt!465857) lt!465880))))

(declare-fun e!893066 () Bool)

(assert (=> d!400010 (= lt!466069 e!893066)))

(declare-fun res!632167 () Bool)

(assert (=> d!400010 (=> (not res!632167) (not e!893066))))

(assert (=> d!400010 (= res!632167 ((_ is Cons!14196) lt!465857))))

(assert (=> d!400010 (= (contains!2761 lt!465857 lt!465880) lt!466069)))

(declare-fun b!1398661 () Bool)

(declare-fun e!893065 () Bool)

(assert (=> b!1398661 (= e!893066 e!893065)))

(declare-fun res!632166 () Bool)

(assert (=> b!1398661 (=> res!632166 e!893065)))

(assert (=> b!1398661 (= res!632166 (= (h!19597 lt!465857) lt!465880))))

(declare-fun b!1398662 () Bool)

(assert (=> b!1398662 (= e!893065 (contains!2761 (t!122751 lt!465857) lt!465880))))

(assert (= (and d!400010 res!632167) b!1398661))

(assert (= (and b!1398661 (not res!632166)) b!1398662))

(assert (=> d!400010 m!1575091))

(declare-fun m!1575459 () Bool)

(assert (=> d!400010 m!1575459))

(declare-fun m!1575463 () Bool)

(assert (=> b!1398662 m!1575463))

(assert (=> b!1398083 d!400010))

(declare-fun d!400012 () Bool)

(declare-fun lt!466075 () C!7836)

(declare-fun apply!3609 (List!14262 Int) C!7836)

(assert (=> d!400012 (= lt!466075 (apply!3609 (list!5529 lt!465870) 0))))

(declare-fun apply!3610 (Conc!4678 Int) C!7836)

(assert (=> d!400012 (= lt!466075 (apply!3610 (c!230080 lt!465870) 0))))

(declare-fun e!893071 () Bool)

(assert (=> d!400012 e!893071))

(declare-fun res!632172 () Bool)

(assert (=> d!400012 (=> (not res!632172) (not e!893071))))

(assert (=> d!400012 (= res!632172 (<= 0 0))))

(assert (=> d!400012 (= (apply!3603 lt!465870 0) lt!466075)))

(declare-fun b!1398667 () Bool)

(assert (=> b!1398667 (= e!893071 (< 0 (size!11678 lt!465870)))))

(assert (= (and d!400012 res!632172) b!1398667))

(assert (=> d!400012 m!1574725))

(assert (=> d!400012 m!1574725))

(declare-fun m!1575469 () Bool)

(assert (=> d!400012 m!1575469))

(declare-fun m!1575471 () Bool)

(assert (=> d!400012 m!1575471))

(declare-fun m!1575473 () Bool)

(assert (=> b!1398667 m!1575473))

(assert (=> b!1398083 d!400012))

(declare-fun d!400018 () Bool)

(declare-fun res!632182 () Bool)

(declare-fun e!893077 () Bool)

(assert (=> d!400018 (=> (not res!632182) (not e!893077))))

(declare-fun rulesValid!925 (LexerInterface!2154 List!14265) Bool)

(assert (=> d!400018 (= res!632182 (rulesValid!925 thiss!19762 rules!2550))))

(assert (=> d!400018 (= (rulesInvariant!2024 thiss!19762 rules!2550) e!893077)))

(declare-fun b!1398679 () Bool)

(declare-datatypes ((List!14268 0))(
  ( (Nil!14202) (Cons!14202 (h!19603 String!16981) (t!122793 List!14268)) )
))
(declare-fun noDuplicateTag!925 (LexerInterface!2154 List!14265 List!14268) Bool)

(assert (=> b!1398679 (= e!893077 (noDuplicateTag!925 thiss!19762 rules!2550 Nil!14202))))

(assert (= (and d!400018 res!632182) b!1398679))

(declare-fun m!1575497 () Bool)

(assert (=> d!400018 m!1575497))

(declare-fun m!1575499 () Bool)

(assert (=> b!1398679 m!1575499))

(assert (=> b!1398084 d!400018))

(declare-fun d!400020 () Bool)

(declare-fun list!5534 (Conc!4679) List!14264)

(assert (=> d!400020 (= (list!5530 (_1!7795 lt!465875)) (list!5534 (c!230082 (_1!7795 lt!465875))))))

(declare-fun bs!338076 () Bool)

(assert (= bs!338076 d!400020))

(declare-fun m!1575509 () Bool)

(assert (=> bs!338076 m!1575509))

(assert (=> b!1398105 d!400020))

(declare-fun b!1398775 () Bool)

(declare-fun e!893141 () Bool)

(declare-fun lt!466090 () tuple2!13818)

(declare-fun isEmpty!8631 (BalanceConc!9298) Bool)

(assert (=> b!1398775 (= e!893141 (not (isEmpty!8631 (_1!7795 lt!466090))))))

(declare-fun b!1398776 () Bool)

(declare-fun res!632215 () Bool)

(declare-fun e!893140 () Bool)

(assert (=> b!1398776 (=> (not res!632215) (not e!893140))))

(assert (=> b!1398776 (= res!632215 (= (list!5530 (_1!7795 lt!466090)) (_1!7793 (lexList!668 thiss!19762 rules!2550 (list!5529 lt!465871)))))))

(declare-fun d!400024 () Bool)

(assert (=> d!400024 e!893140))

(declare-fun res!632216 () Bool)

(assert (=> d!400024 (=> (not res!632216) (not e!893140))))

(declare-fun e!893142 () Bool)

(assert (=> d!400024 (= res!632216 e!893142)))

(declare-fun c!230227 () Bool)

(assert (=> d!400024 (= c!230227 (> (size!11689 (_1!7795 lt!466090)) 0))))

(declare-fun lexTailRecV2!439 (LexerInterface!2154 List!14265 BalanceConc!9296 BalanceConc!9296 BalanceConc!9296 BalanceConc!9298) tuple2!13818)

(assert (=> d!400024 (= lt!466090 (lexTailRecV2!439 thiss!19762 rules!2550 lt!465871 (BalanceConc!9297 Empty!4678) lt!465871 (BalanceConc!9299 Empty!4679)))))

(assert (=> d!400024 (= (lex!979 thiss!19762 rules!2550 lt!465871) lt!466090)))

(declare-fun b!1398777 () Bool)

(assert (=> b!1398777 (= e!893140 (= (list!5529 (_2!7795 lt!466090)) (_2!7793 (lexList!668 thiss!19762 rules!2550 (list!5529 lt!465871)))))))

(declare-fun b!1398778 () Bool)

(assert (=> b!1398778 (= e!893142 (= (_2!7795 lt!466090) lt!465871))))

(declare-fun b!1398779 () Bool)

(assert (=> b!1398779 (= e!893142 e!893141)))

(declare-fun res!632217 () Bool)

(assert (=> b!1398779 (= res!632217 (< (size!11678 (_2!7795 lt!466090)) (size!11678 lt!465871)))))

(assert (=> b!1398779 (=> (not res!632217) (not e!893141))))

(assert (= (and d!400024 c!230227) b!1398779))

(assert (= (and d!400024 (not c!230227)) b!1398778))

(assert (= (and b!1398779 res!632217) b!1398775))

(assert (= (and d!400024 res!632216) b!1398776))

(assert (= (and b!1398776 res!632215) b!1398777))

(declare-fun m!1575581 () Bool)

(assert (=> b!1398776 m!1575581))

(assert (=> b!1398776 m!1574803))

(assert (=> b!1398776 m!1574803))

(assert (=> b!1398776 m!1574805))

(declare-fun m!1575583 () Bool)

(assert (=> d!400024 m!1575583))

(declare-fun m!1575585 () Bool)

(assert (=> d!400024 m!1575585))

(declare-fun m!1575587 () Bool)

(assert (=> b!1398779 m!1575587))

(declare-fun m!1575589 () Bool)

(assert (=> b!1398779 m!1575589))

(declare-fun m!1575591 () Bool)

(assert (=> b!1398775 m!1575591))

(declare-fun m!1575593 () Bool)

(assert (=> b!1398777 m!1575593))

(assert (=> b!1398777 m!1574803))

(assert (=> b!1398777 m!1574803))

(assert (=> b!1398777 m!1574805))

(assert (=> b!1398105 d!400024))

(declare-fun d!400062 () Bool)

(declare-fun lt!466093 () BalanceConc!9296)

(declare-fun printList!634 (LexerInterface!2154 List!14264) List!14262)

(assert (=> d!400062 (= (list!5529 lt!466093) (printList!634 thiss!19762 (list!5530 (singletonSeq!1116 t2!34))))))

(declare-fun printTailRec!616 (LexerInterface!2154 BalanceConc!9298 Int BalanceConc!9296) BalanceConc!9296)

(assert (=> d!400062 (= lt!466093 (printTailRec!616 thiss!19762 (singletonSeq!1116 t2!34) 0 (BalanceConc!9297 Empty!4678)))))

(assert (=> d!400062 (= (print!918 thiss!19762 (singletonSeq!1116 t2!34)) lt!466093)))

(declare-fun bs!338088 () Bool)

(assert (= bs!338088 d!400062))

(declare-fun m!1575595 () Bool)

(assert (=> bs!338088 m!1575595))

(assert (=> bs!338088 m!1574781))

(declare-fun m!1575597 () Bool)

(assert (=> bs!338088 m!1575597))

(assert (=> bs!338088 m!1575597))

(declare-fun m!1575599 () Bool)

(assert (=> bs!338088 m!1575599))

(assert (=> bs!338088 m!1574781))

(declare-fun m!1575601 () Bool)

(assert (=> bs!338088 m!1575601))

(assert (=> b!1398105 d!400062))

(declare-fun d!400064 () Bool)

(declare-fun e!893145 () Bool)

(assert (=> d!400064 e!893145))

(declare-fun res!632220 () Bool)

(assert (=> d!400064 (=> (not res!632220) (not e!893145))))

(declare-fun lt!466096 () BalanceConc!9298)

(assert (=> d!400064 (= res!632220 (= (list!5530 lt!466096) (Cons!14198 t2!34 Nil!14198)))))

(declare-fun singleton!490 (Token!4580) BalanceConc!9298)

(assert (=> d!400064 (= lt!466096 (singleton!490 t2!34))))

(assert (=> d!400064 (= (singletonSeq!1116 t2!34) lt!466096)))

(declare-fun b!1398782 () Bool)

(declare-fun isBalanced!1384 (Conc!4679) Bool)

(assert (=> b!1398782 (= e!893145 (isBalanced!1384 (c!230082 lt!466096)))))

(assert (= (and d!400064 res!632220) b!1398782))

(declare-fun m!1575603 () Bool)

(assert (=> d!400064 m!1575603))

(declare-fun m!1575605 () Bool)

(assert (=> d!400064 m!1575605))

(declare-fun m!1575607 () Bool)

(assert (=> b!1398782 m!1575607))

(assert (=> b!1398105 d!400064))

(declare-fun d!400066 () Bool)

(declare-fun lt!466097 () Bool)

(assert (=> d!400066 (= lt!466097 (select (content!2104 rules!2550) (rule!4222 t2!34)))))

(declare-fun e!893146 () Bool)

(assert (=> d!400066 (= lt!466097 e!893146)))

(declare-fun res!632221 () Bool)

(assert (=> d!400066 (=> (not res!632221) (not e!893146))))

(assert (=> d!400066 (= res!632221 ((_ is Cons!14199) rules!2550))))

(assert (=> d!400066 (= (contains!2760 rules!2550 (rule!4222 t2!34)) lt!466097)))

(declare-fun b!1398783 () Bool)

(declare-fun e!893147 () Bool)

(assert (=> b!1398783 (= e!893146 e!893147)))

(declare-fun res!632222 () Bool)

(assert (=> b!1398783 (=> res!632222 e!893147)))

(assert (=> b!1398783 (= res!632222 (= (h!19600 rules!2550) (rule!4222 t2!34)))))

(declare-fun b!1398784 () Bool)

(assert (=> b!1398784 (= e!893147 (contains!2760 (t!122754 rules!2550) (rule!4222 t2!34)))))

(assert (= (and d!400066 res!632221) b!1398783))

(assert (= (and b!1398783 (not res!632222)) b!1398784))

(assert (=> d!400066 m!1575139))

(declare-fun m!1575609 () Bool)

(assert (=> d!400066 m!1575609))

(declare-fun m!1575611 () Bool)

(assert (=> b!1398784 m!1575611))

(assert (=> b!1398063 d!400066))

(declare-fun d!400068 () Bool)

(assert (=> d!400068 (= (inv!18518 (tag!2721 (rule!4222 t1!34))) (= (mod (str.len (value!79713 (tag!2721 (rule!4222 t1!34)))) 2) 0))))

(assert (=> b!1398064 d!400068))

(declare-fun d!400070 () Bool)

(declare-fun res!632223 () Bool)

(declare-fun e!893148 () Bool)

(assert (=> d!400070 (=> (not res!632223) (not e!893148))))

(assert (=> d!400070 (= res!632223 (semiInverseModEq!955 (toChars!3609 (transformation!2459 (rule!4222 t1!34))) (toValue!3750 (transformation!2459 (rule!4222 t1!34)))))))

(assert (=> d!400070 (= (inv!18521 (transformation!2459 (rule!4222 t1!34))) e!893148)))

(declare-fun b!1398785 () Bool)

(assert (=> b!1398785 (= e!893148 (equivClasses!914 (toChars!3609 (transformation!2459 (rule!4222 t1!34))) (toValue!3750 (transformation!2459 (rule!4222 t1!34)))))))

(assert (= (and d!400070 res!632223) b!1398785))

(declare-fun m!1575613 () Bool)

(assert (=> d!400070 m!1575613))

(declare-fun m!1575615 () Bool)

(assert (=> b!1398785 m!1575615))

(assert (=> b!1398064 d!400070))

(declare-fun d!400072 () Bool)

(declare-fun lt!466098 () Bool)

(assert (=> d!400072 (= lt!466098 (select (content!2103 (usedCharacters!270 (regex!2459 (rule!4222 t1!34)))) lt!465880))))

(declare-fun e!893150 () Bool)

(assert (=> d!400072 (= lt!466098 e!893150)))

(declare-fun res!632225 () Bool)

(assert (=> d!400072 (=> (not res!632225) (not e!893150))))

(assert (=> d!400072 (= res!632225 ((_ is Cons!14196) (usedCharacters!270 (regex!2459 (rule!4222 t1!34)))))))

(assert (=> d!400072 (= (contains!2761 (usedCharacters!270 (regex!2459 (rule!4222 t1!34))) lt!465880) lt!466098)))

(declare-fun b!1398786 () Bool)

(declare-fun e!893149 () Bool)

(assert (=> b!1398786 (= e!893150 e!893149)))

(declare-fun res!632224 () Bool)

(assert (=> b!1398786 (=> res!632224 e!893149)))

(assert (=> b!1398786 (= res!632224 (= (h!19597 (usedCharacters!270 (regex!2459 (rule!4222 t1!34)))) lt!465880))))

(declare-fun b!1398787 () Bool)

(assert (=> b!1398787 (= e!893149 (contains!2761 (t!122751 (usedCharacters!270 (regex!2459 (rule!4222 t1!34)))) lt!465880))))

(assert (= (and d!400072 res!632225) b!1398786))

(assert (= (and b!1398786 (not res!632224)) b!1398787))

(assert (=> d!400072 m!1574833))

(declare-fun m!1575617 () Bool)

(assert (=> d!400072 m!1575617))

(declare-fun m!1575619 () Bool)

(assert (=> d!400072 m!1575619))

(declare-fun m!1575621 () Bool)

(assert (=> b!1398787 m!1575621))

(assert (=> b!1398085 d!400072))

(declare-fun call!93429 () List!14262)

(declare-fun bm!93423 () Bool)

(declare-fun call!93428 () List!14262)

(declare-fun c!230230 () Bool)

(declare-fun call!93431 () List!14262)

(assert (=> bm!93423 (= call!93429 (++!3692 (ite c!230230 call!93428 call!93431) (ite c!230230 call!93431 call!93428)))))

(declare-fun c!230228 () Bool)

(declare-fun bm!93424 () Bool)

(declare-fun call!93430 () List!14262)

(assert (=> bm!93424 (= call!93430 (usedCharacters!270 (ite c!230228 (reg!4102 (regex!2459 (rule!4222 t1!34))) (ite c!230230 (regTwo!8059 (regex!2459 (rule!4222 t1!34))) (regOne!8058 (regex!2459 (rule!4222 t1!34)))))))))

(declare-fun bm!93425 () Bool)

(assert (=> bm!93425 (= call!93428 (usedCharacters!270 (ite c!230230 (regOne!8059 (regex!2459 (rule!4222 t1!34))) (regTwo!8058 (regex!2459 (rule!4222 t1!34))))))))

(declare-fun b!1398788 () Bool)

(declare-fun e!893152 () List!14262)

(assert (=> b!1398788 (= e!893152 call!93430)))

(declare-fun b!1398789 () Bool)

(declare-fun e!893151 () List!14262)

(declare-fun e!893154 () List!14262)

(assert (=> b!1398789 (= e!893151 e!893154)))

(declare-fun c!230229 () Bool)

(assert (=> b!1398789 (= c!230229 ((_ is ElementMatch!3773) (regex!2459 (rule!4222 t1!34))))))

(declare-fun b!1398790 () Bool)

(assert (=> b!1398790 (= e!893151 Nil!14196)))

(declare-fun b!1398791 () Bool)

(declare-fun e!893153 () List!14262)

(assert (=> b!1398791 (= e!893152 e!893153)))

(assert (=> b!1398791 (= c!230230 ((_ is Union!3773) (regex!2459 (rule!4222 t1!34))))))

(declare-fun b!1398792 () Bool)

(assert (=> b!1398792 (= c!230228 ((_ is Star!3773) (regex!2459 (rule!4222 t1!34))))))

(assert (=> b!1398792 (= e!893154 e!893152)))

(declare-fun bm!93426 () Bool)

(assert (=> bm!93426 (= call!93431 call!93430)))

(declare-fun b!1398794 () Bool)

(assert (=> b!1398794 (= e!893153 call!93429)))

(declare-fun b!1398795 () Bool)

(assert (=> b!1398795 (= e!893154 (Cons!14196 (c!230081 (regex!2459 (rule!4222 t1!34))) Nil!14196))))

(declare-fun b!1398793 () Bool)

(assert (=> b!1398793 (= e!893153 call!93429)))

(declare-fun d!400074 () Bool)

(declare-fun c!230231 () Bool)

(assert (=> d!400074 (= c!230231 (or ((_ is EmptyExpr!3773) (regex!2459 (rule!4222 t1!34))) ((_ is EmptyLang!3773) (regex!2459 (rule!4222 t1!34)))))))

(assert (=> d!400074 (= (usedCharacters!270 (regex!2459 (rule!4222 t1!34))) e!893151)))

(assert (= (and d!400074 c!230231) b!1398790))

(assert (= (and d!400074 (not c!230231)) b!1398789))

(assert (= (and b!1398789 c!230229) b!1398795))

(assert (= (and b!1398789 (not c!230229)) b!1398792))

(assert (= (and b!1398792 c!230228) b!1398788))

(assert (= (and b!1398792 (not c!230228)) b!1398791))

(assert (= (and b!1398791 c!230230) b!1398794))

(assert (= (and b!1398791 (not c!230230)) b!1398793))

(assert (= (or b!1398794 b!1398793) bm!93425))

(assert (= (or b!1398794 b!1398793) bm!93426))

(assert (= (or b!1398794 b!1398793) bm!93423))

(assert (= (or b!1398788 bm!93426) bm!93424))

(declare-fun m!1575623 () Bool)

(assert (=> bm!93423 m!1575623))

(declare-fun m!1575625 () Bool)

(assert (=> bm!93424 m!1575625))

(declare-fun m!1575627 () Bool)

(assert (=> bm!93425 m!1575627))

(assert (=> b!1398085 d!400074))

(declare-fun b!1398814 () Bool)

(declare-fun e!893163 () Option!2722)

(declare-fun call!93434 () Option!2722)

(assert (=> b!1398814 (= e!893163 call!93434)))

(declare-fun bm!93429 () Bool)

(declare-fun maxPrefixOneRule!639 (LexerInterface!2154 Rule!4718 List!14262) Option!2722)

(assert (=> bm!93429 (= call!93434 (maxPrefixOneRule!639 thiss!19762 (h!19600 rules!2550) lt!465881))))

(declare-fun b!1398815 () Bool)

(declare-fun res!632244 () Bool)

(declare-fun e!893162 () Bool)

(assert (=> b!1398815 (=> (not res!632244) (not e!893162))))

(declare-fun lt!466109 () Option!2722)

(declare-fun get!4396 (Option!2722) tuple2!13816)

(assert (=> b!1398815 (= res!632244 (< (size!11685 (_2!7794 (get!4396 lt!466109))) (size!11685 lt!465881)))))

(declare-fun b!1398816 () Bool)

(declare-fun res!632243 () Bool)

(assert (=> b!1398816 (=> (not res!632243) (not e!893162))))

(assert (=> b!1398816 (= res!632243 (= (++!3692 (list!5529 (charsOf!1431 (_1!7794 (get!4396 lt!466109)))) (_2!7794 (get!4396 lt!466109))) lt!465881))))

(declare-fun b!1398817 () Bool)

(declare-fun res!632240 () Bool)

(assert (=> b!1398817 (=> (not res!632240) (not e!893162))))

(assert (=> b!1398817 (= res!632240 (= (list!5529 (charsOf!1431 (_1!7794 (get!4396 lt!466109)))) (originalCharacters!3321 (_1!7794 (get!4396 lt!466109)))))))

(declare-fun d!400076 () Bool)

(declare-fun e!893161 () Bool)

(assert (=> d!400076 e!893161))

(declare-fun res!632242 () Bool)

(assert (=> d!400076 (=> res!632242 e!893161)))

(declare-fun isEmpty!8632 (Option!2722) Bool)

(assert (=> d!400076 (= res!632242 (isEmpty!8632 lt!466109))))

(assert (=> d!400076 (= lt!466109 e!893163)))

(declare-fun c!230234 () Bool)

(assert (=> d!400076 (= c!230234 (and ((_ is Cons!14199) rules!2550) ((_ is Nil!14199) (t!122754 rules!2550))))))

(declare-fun lt!466112 () Unit!20505)

(declare-fun lt!466110 () Unit!20505)

(assert (=> d!400076 (= lt!466112 lt!466110)))

(declare-fun isPrefix!1154 (List!14262 List!14262) Bool)

(assert (=> d!400076 (isPrefix!1154 lt!465881 lt!465881)))

(declare-fun lemmaIsPrefixRefl!813 (List!14262 List!14262) Unit!20505)

(assert (=> d!400076 (= lt!466110 (lemmaIsPrefixRefl!813 lt!465881 lt!465881))))

(declare-fun rulesValidInductive!796 (LexerInterface!2154 List!14265) Bool)

(assert (=> d!400076 (rulesValidInductive!796 thiss!19762 rules!2550)))

(assert (=> d!400076 (= (maxPrefix!1128 thiss!19762 rules!2550 lt!465881) lt!466109)))

(declare-fun b!1398818 () Bool)

(declare-fun lt!466111 () Option!2722)

(declare-fun lt!466113 () Option!2722)

(assert (=> b!1398818 (= e!893163 (ite (and ((_ is None!2721) lt!466111) ((_ is None!2721) lt!466113)) None!2721 (ite ((_ is None!2721) lt!466113) lt!466111 (ite ((_ is None!2721) lt!466111) lt!466113 (ite (>= (size!11677 (_1!7794 (v!21641 lt!466111))) (size!11677 (_1!7794 (v!21641 lt!466113)))) lt!466111 lt!466113)))))))

(assert (=> b!1398818 (= lt!466111 call!93434)))

(assert (=> b!1398818 (= lt!466113 (maxPrefix!1128 thiss!19762 (t!122754 rules!2550) lt!465881))))

(declare-fun b!1398819 () Bool)

(declare-fun res!632241 () Bool)

(assert (=> b!1398819 (=> (not res!632241) (not e!893162))))

(declare-fun apply!3611 (TokenValueInjection!4758 BalanceConc!9296) TokenValue!2549)

(declare-fun seqFromList!1657 (List!14262) BalanceConc!9296)

(assert (=> b!1398819 (= res!632241 (= (value!79714 (_1!7794 (get!4396 lt!466109))) (apply!3611 (transformation!2459 (rule!4222 (_1!7794 (get!4396 lt!466109)))) (seqFromList!1657 (originalCharacters!3321 (_1!7794 (get!4396 lt!466109)))))))))

(declare-fun b!1398820 () Bool)

(declare-fun res!632246 () Bool)

(assert (=> b!1398820 (=> (not res!632246) (not e!893162))))

(assert (=> b!1398820 (= res!632246 (matchR!1764 (regex!2459 (rule!4222 (_1!7794 (get!4396 lt!466109)))) (list!5529 (charsOf!1431 (_1!7794 (get!4396 lt!466109))))))))

(declare-fun b!1398821 () Bool)

(assert (=> b!1398821 (= e!893161 e!893162)))

(declare-fun res!632245 () Bool)

(assert (=> b!1398821 (=> (not res!632245) (not e!893162))))

(declare-fun isDefined!2241 (Option!2722) Bool)

(assert (=> b!1398821 (= res!632245 (isDefined!2241 lt!466109))))

(declare-fun b!1398822 () Bool)

(assert (=> b!1398822 (= e!893162 (contains!2760 rules!2550 (rule!4222 (_1!7794 (get!4396 lt!466109)))))))

(assert (= (and d!400076 c!230234) b!1398814))

(assert (= (and d!400076 (not c!230234)) b!1398818))

(assert (= (or b!1398814 b!1398818) bm!93429))

(assert (= (and d!400076 (not res!632242)) b!1398821))

(assert (= (and b!1398821 res!632245) b!1398817))

(assert (= (and b!1398817 res!632240) b!1398815))

(assert (= (and b!1398815 res!632244) b!1398816))

(assert (= (and b!1398816 res!632243) b!1398819))

(assert (= (and b!1398819 res!632241) b!1398820))

(assert (= (and b!1398820 res!632246) b!1398822))

(declare-fun m!1575629 () Bool)

(assert (=> b!1398815 m!1575629))

(declare-fun m!1575631 () Bool)

(assert (=> b!1398815 m!1575631))

(declare-fun m!1575633 () Bool)

(assert (=> b!1398815 m!1575633))

(assert (=> b!1398819 m!1575629))

(declare-fun m!1575635 () Bool)

(assert (=> b!1398819 m!1575635))

(assert (=> b!1398819 m!1575635))

(declare-fun m!1575637 () Bool)

(assert (=> b!1398819 m!1575637))

(declare-fun m!1575639 () Bool)

(assert (=> bm!93429 m!1575639))

(declare-fun m!1575641 () Bool)

(assert (=> d!400076 m!1575641))

(declare-fun m!1575643 () Bool)

(assert (=> d!400076 m!1575643))

(declare-fun m!1575645 () Bool)

(assert (=> d!400076 m!1575645))

(declare-fun m!1575647 () Bool)

(assert (=> d!400076 m!1575647))

(assert (=> b!1398816 m!1575629))

(declare-fun m!1575649 () Bool)

(assert (=> b!1398816 m!1575649))

(assert (=> b!1398816 m!1575649))

(declare-fun m!1575651 () Bool)

(assert (=> b!1398816 m!1575651))

(assert (=> b!1398816 m!1575651))

(declare-fun m!1575653 () Bool)

(assert (=> b!1398816 m!1575653))

(assert (=> b!1398817 m!1575629))

(assert (=> b!1398817 m!1575649))

(assert (=> b!1398817 m!1575649))

(assert (=> b!1398817 m!1575651))

(assert (=> b!1398822 m!1575629))

(declare-fun m!1575655 () Bool)

(assert (=> b!1398822 m!1575655))

(declare-fun m!1575657 () Bool)

(assert (=> b!1398818 m!1575657))

(assert (=> b!1398820 m!1575629))

(assert (=> b!1398820 m!1575649))

(assert (=> b!1398820 m!1575649))

(assert (=> b!1398820 m!1575651))

(assert (=> b!1398820 m!1575651))

(declare-fun m!1575659 () Bool)

(assert (=> b!1398820 m!1575659))

(declare-fun m!1575661 () Bool)

(assert (=> b!1398821 m!1575661))

(assert (=> b!1398065 d!400076))

(declare-fun d!400078 () Bool)

(declare-fun lt!466116 () Bool)

(assert (=> d!400078 (= lt!466116 (isEmpty!8630 (list!5529 (_2!7795 lt!465864))))))

(declare-fun isEmpty!8633 (Conc!4678) Bool)

(assert (=> d!400078 (= lt!466116 (isEmpty!8633 (c!230080 (_2!7795 lt!465864))))))

(assert (=> d!400078 (= (isEmpty!8623 (_2!7795 lt!465864)) lt!466116)))

(declare-fun bs!338089 () Bool)

(assert (= bs!338089 d!400078))

(declare-fun m!1575663 () Bool)

(assert (=> bs!338089 m!1575663))

(assert (=> bs!338089 m!1575663))

(declare-fun m!1575665 () Bool)

(assert (=> bs!338089 m!1575665))

(declare-fun m!1575667 () Bool)

(assert (=> bs!338089 m!1575667))

(assert (=> b!1398098 d!400078))

(declare-fun d!400080 () Bool)

(assert (=> d!400080 (= (inv!18518 (tag!2721 (rule!4222 t2!34))) (= (mod (str.len (value!79713 (tag!2721 (rule!4222 t2!34)))) 2) 0))))

(assert (=> b!1398077 d!400080))

(declare-fun d!400082 () Bool)

(declare-fun res!632247 () Bool)

(declare-fun e!893164 () Bool)

(assert (=> d!400082 (=> (not res!632247) (not e!893164))))

(assert (=> d!400082 (= res!632247 (semiInverseModEq!955 (toChars!3609 (transformation!2459 (rule!4222 t2!34))) (toValue!3750 (transformation!2459 (rule!4222 t2!34)))))))

(assert (=> d!400082 (= (inv!18521 (transformation!2459 (rule!4222 t2!34))) e!893164)))

(declare-fun b!1398823 () Bool)

(assert (=> b!1398823 (= e!893164 (equivClasses!914 (toChars!3609 (transformation!2459 (rule!4222 t2!34))) (toValue!3750 (transformation!2459 (rule!4222 t2!34)))))))

(assert (= (and d!400082 res!632247) b!1398823))

(declare-fun m!1575669 () Bool)

(assert (=> d!400082 m!1575669))

(declare-fun m!1575671 () Bool)

(assert (=> b!1398823 m!1575671))

(assert (=> b!1398077 d!400082))

(declare-fun d!400084 () Bool)

(declare-fun lt!466117 () Bool)

(assert (=> d!400084 (= lt!466117 (select (content!2103 lt!465859) lt!465866))))

(declare-fun e!893166 () Bool)

(assert (=> d!400084 (= lt!466117 e!893166)))

(declare-fun res!632249 () Bool)

(assert (=> d!400084 (=> (not res!632249) (not e!893166))))

(assert (=> d!400084 (= res!632249 ((_ is Cons!14196) lt!465859))))

(assert (=> d!400084 (= (contains!2761 lt!465859 lt!465866) lt!466117)))

(declare-fun b!1398824 () Bool)

(declare-fun e!893165 () Bool)

(assert (=> b!1398824 (= e!893166 e!893165)))

(declare-fun res!632248 () Bool)

(assert (=> b!1398824 (=> res!632248 e!893165)))

(assert (=> b!1398824 (= res!632248 (= (h!19597 lt!465859) lt!465866))))

(declare-fun b!1398825 () Bool)

(assert (=> b!1398825 (= e!893165 (contains!2761 (t!122751 lt!465859) lt!465866))))

(assert (= (and d!400084 res!632249) b!1398824))

(assert (= (and b!1398824 (not res!632248)) b!1398825))

(declare-fun m!1575673 () Bool)

(assert (=> d!400084 m!1575673))

(declare-fun m!1575675 () Bool)

(assert (=> d!400084 m!1575675))

(declare-fun m!1575677 () Bool)

(assert (=> b!1398825 m!1575677))

(assert (=> b!1398099 d!400084))

(declare-fun b!1398826 () Bool)

(declare-fun e!893168 () Bool)

(declare-fun lt!466120 () tuple2!13814)

(assert (=> b!1398826 (= e!893168 (= (_2!7793 lt!466120) (list!5529 lt!465871)))))

(declare-fun b!1398827 () Bool)

(declare-fun e!893169 () tuple2!13814)

(assert (=> b!1398827 (= e!893169 (tuple2!13815 Nil!14198 (list!5529 lt!465871)))))

(declare-fun d!400086 () Bool)

(assert (=> d!400086 e!893168))

(declare-fun c!230235 () Bool)

(assert (=> d!400086 (= c!230235 (> (size!11684 (_1!7793 lt!466120)) 0))))

(assert (=> d!400086 (= lt!466120 e!893169)))

(declare-fun c!230236 () Bool)

(declare-fun lt!466119 () Option!2722)

(assert (=> d!400086 (= c!230236 ((_ is Some!2721) lt!466119))))

(assert (=> d!400086 (= lt!466119 (maxPrefix!1128 thiss!19762 rules!2550 (list!5529 lt!465871)))))

(assert (=> d!400086 (= (lexList!668 thiss!19762 rules!2550 (list!5529 lt!465871)) lt!466120)))

(declare-fun b!1398828 () Bool)

(declare-fun lt!466118 () tuple2!13814)

(assert (=> b!1398828 (= e!893169 (tuple2!13815 (Cons!14198 (_1!7794 (v!21641 lt!466119)) (_1!7793 lt!466118)) (_2!7793 lt!466118)))))

(assert (=> b!1398828 (= lt!466118 (lexList!668 thiss!19762 rules!2550 (_2!7794 (v!21641 lt!466119))))))

(declare-fun b!1398829 () Bool)

(declare-fun e!893167 () Bool)

(assert (=> b!1398829 (= e!893168 e!893167)))

(declare-fun res!632250 () Bool)

(assert (=> b!1398829 (= res!632250 (< (size!11685 (_2!7793 lt!466120)) (size!11685 (list!5529 lt!465871))))))

(assert (=> b!1398829 (=> (not res!632250) (not e!893167))))

(declare-fun b!1398830 () Bool)

(assert (=> b!1398830 (= e!893167 (not (isEmpty!8629 (_1!7793 lt!466120))))))

(assert (= (and d!400086 c!230236) b!1398828))

(assert (= (and d!400086 (not c!230236)) b!1398827))

(assert (= (and d!400086 c!230235) b!1398829))

(assert (= (and d!400086 (not c!230235)) b!1398826))

(assert (= (and b!1398829 res!632250) b!1398830))

(declare-fun m!1575679 () Bool)

(assert (=> d!400086 m!1575679))

(assert (=> d!400086 m!1574803))

(declare-fun m!1575681 () Bool)

(assert (=> d!400086 m!1575681))

(declare-fun m!1575683 () Bool)

(assert (=> b!1398828 m!1575683))

(declare-fun m!1575685 () Bool)

(assert (=> b!1398829 m!1575685))

(assert (=> b!1398829 m!1574803))

(declare-fun m!1575687 () Bool)

(assert (=> b!1398829 m!1575687))

(declare-fun m!1575689 () Bool)

(assert (=> b!1398830 m!1575689))

(assert (=> b!1398057 d!400086))

(declare-fun d!400088 () Bool)

(assert (=> d!400088 (= (list!5529 lt!465871) (list!5533 (c!230080 lt!465871)))))

(declare-fun bs!338090 () Bool)

(assert (= bs!338090 d!400088))

(declare-fun m!1575691 () Bool)

(assert (=> bs!338090 m!1575691))

(assert (=> b!1398057 d!400088))

(declare-fun d!400090 () Bool)

(declare-fun lt!466121 () Bool)

(assert (=> d!400090 (= lt!466121 (select (content!2103 lt!465859) lt!465880))))

(declare-fun e!893171 () Bool)

(assert (=> d!400090 (= lt!466121 e!893171)))

(declare-fun res!632252 () Bool)

(assert (=> d!400090 (=> (not res!632252) (not e!893171))))

(assert (=> d!400090 (= res!632252 ((_ is Cons!14196) lt!465859))))

(assert (=> d!400090 (= (contains!2761 lt!465859 lt!465880) lt!466121)))

(declare-fun b!1398831 () Bool)

(declare-fun e!893170 () Bool)

(assert (=> b!1398831 (= e!893171 e!893170)))

(declare-fun res!632251 () Bool)

(assert (=> b!1398831 (=> res!632251 e!893170)))

(assert (=> b!1398831 (= res!632251 (= (h!19597 lt!465859) lt!465880))))

(declare-fun b!1398832 () Bool)

(assert (=> b!1398832 (= e!893170 (contains!2761 (t!122751 lt!465859) lt!465880))))

(assert (= (and d!400090 res!632252) b!1398831))

(assert (= (and b!1398831 (not res!632251)) b!1398832))

(assert (=> d!400090 m!1575673))

(declare-fun m!1575693 () Bool)

(assert (=> d!400090 m!1575693))

(declare-fun m!1575695 () Bool)

(assert (=> b!1398832 m!1575695))

(assert (=> b!1398079 d!400090))

(declare-fun b!1398843 () Bool)

(declare-fun e!893180 () Bool)

(declare-fun inv!16 (TokenValue!2549) Bool)

(assert (=> b!1398843 (= e!893180 (inv!16 (value!79714 t1!34)))))

(declare-fun b!1398844 () Bool)

(declare-fun e!893179 () Bool)

(declare-fun inv!15 (TokenValue!2549) Bool)

(assert (=> b!1398844 (= e!893179 (inv!15 (value!79714 t1!34)))))

(declare-fun d!400092 () Bool)

(declare-fun c!230242 () Bool)

(assert (=> d!400092 (= c!230242 ((_ is IntegerValue!7647) (value!79714 t1!34)))))

(assert (=> d!400092 (= (inv!21 (value!79714 t1!34)) e!893180)))

(declare-fun b!1398845 () Bool)

(declare-fun e!893178 () Bool)

(assert (=> b!1398845 (= e!893180 e!893178)))

(declare-fun c!230241 () Bool)

(assert (=> b!1398845 (= c!230241 ((_ is IntegerValue!7648) (value!79714 t1!34)))))

(declare-fun b!1398846 () Bool)

(declare-fun inv!17 (TokenValue!2549) Bool)

(assert (=> b!1398846 (= e!893178 (inv!17 (value!79714 t1!34)))))

(declare-fun b!1398847 () Bool)

(declare-fun res!632255 () Bool)

(assert (=> b!1398847 (=> res!632255 e!893179)))

(assert (=> b!1398847 (= res!632255 (not ((_ is IntegerValue!7649) (value!79714 t1!34))))))

(assert (=> b!1398847 (= e!893178 e!893179)))

(assert (= (and d!400092 c!230242) b!1398843))

(assert (= (and d!400092 (not c!230242)) b!1398845))

(assert (= (and b!1398845 c!230241) b!1398846))

(assert (= (and b!1398845 (not c!230241)) b!1398847))

(assert (= (and b!1398847 (not res!632255)) b!1398844))

(declare-fun m!1575697 () Bool)

(assert (=> b!1398843 m!1575697))

(declare-fun m!1575699 () Bool)

(assert (=> b!1398844 m!1575699))

(declare-fun m!1575701 () Bool)

(assert (=> b!1398846 m!1575701))

(assert (=> b!1398080 d!400092))

(declare-fun d!400094 () Bool)

(declare-fun lt!466122 () C!7836)

(assert (=> d!400094 (= lt!466122 (apply!3609 (list!5529 lt!465872) 0))))

(assert (=> d!400094 (= lt!466122 (apply!3610 (c!230080 lt!465872) 0))))

(declare-fun e!893181 () Bool)

(assert (=> d!400094 e!893181))

(declare-fun res!632256 () Bool)

(assert (=> d!400094 (=> (not res!632256) (not e!893181))))

(assert (=> d!400094 (= res!632256 (<= 0 0))))

(assert (=> d!400094 (= (apply!3603 lt!465872 0) lt!466122)))

(declare-fun b!1398848 () Bool)

(assert (=> b!1398848 (= e!893181 (< 0 (size!11678 lt!465872)))))

(assert (= (and d!400094 res!632256) b!1398848))

(assert (=> d!400094 m!1574827))

(assert (=> d!400094 m!1574827))

(declare-fun m!1575703 () Bool)

(assert (=> d!400094 m!1575703))

(declare-fun m!1575705 () Bool)

(assert (=> d!400094 m!1575705))

(assert (=> b!1398848 m!1574807))

(assert (=> b!1398101 d!400094))

(declare-fun d!400096 () Bool)

(declare-fun c!230245 () Bool)

(assert (=> d!400096 (= c!230245 (isEmpty!8630 lt!465857))))

(declare-fun e!893184 () Bool)

(assert (=> d!400096 (= (prefixMatch!282 lt!465863 lt!465857) e!893184)))

(declare-fun b!1398853 () Bool)

(declare-fun lostCause!361 (Regex!3773) Bool)

(assert (=> b!1398853 (= e!893184 (not (lostCause!361 lt!465863)))))

(declare-fun b!1398854 () Bool)

(assert (=> b!1398854 (= e!893184 (prefixMatch!282 (derivativeStep!985 lt!465863 (head!2577 lt!465857)) (tail!2032 lt!465857)))))

(assert (= (and d!400096 c!230245) b!1398853))

(assert (= (and d!400096 (not c!230245)) b!1398854))

(declare-fun m!1575707 () Bool)

(assert (=> d!400096 m!1575707))

(declare-fun m!1575709 () Bool)

(assert (=> b!1398853 m!1575709))

(declare-fun m!1575711 () Bool)

(assert (=> b!1398854 m!1575711))

(assert (=> b!1398854 m!1575711))

(declare-fun m!1575713 () Bool)

(assert (=> b!1398854 m!1575713))

(declare-fun m!1575715 () Bool)

(assert (=> b!1398854 m!1575715))

(assert (=> b!1398854 m!1575713))

(assert (=> b!1398854 m!1575715))

(declare-fun m!1575717 () Bool)

(assert (=> b!1398854 m!1575717))

(assert (=> b!1398101 d!400096))

(declare-fun d!400098 () Bool)

(assert (=> d!400098 (= (list!5529 lt!465870) (list!5533 (c!230080 lt!465870)))))

(declare-fun bs!338091 () Bool)

(assert (= bs!338091 d!400098))

(declare-fun m!1575719 () Bool)

(assert (=> bs!338091 m!1575719))

(assert (=> b!1398101 d!400098))

(declare-fun d!400100 () Bool)

(declare-fun lt!466125 () BalanceConc!9296)

(assert (=> d!400100 (= (list!5529 lt!466125) (originalCharacters!3321 t1!34))))

(declare-fun dynLambda!6566 (Int TokenValue!2549) BalanceConc!9296)

(assert (=> d!400100 (= lt!466125 (dynLambda!6566 (toChars!3609 (transformation!2459 (rule!4222 t1!34))) (value!79714 t1!34)))))

(assert (=> d!400100 (= (charsOf!1431 t1!34) lt!466125)))

(declare-fun b_lambda!43877 () Bool)

(assert (=> (not b_lambda!43877) (not d!400100)))

(declare-fun t!122777 () Bool)

(declare-fun tb!73033 () Bool)

(assert (=> (and b!1398066 (= (toChars!3609 (transformation!2459 (h!19600 rules!2550))) (toChars!3609 (transformation!2459 (rule!4222 t1!34)))) t!122777) tb!73033))

(declare-fun b!1398859 () Bool)

(declare-fun e!893187 () Bool)

(declare-fun tp!398302 () Bool)

(declare-fun inv!18525 (Conc!4678) Bool)

(assert (=> b!1398859 (= e!893187 (and (inv!18525 (c!230080 (dynLambda!6566 (toChars!3609 (transformation!2459 (rule!4222 t1!34))) (value!79714 t1!34)))) tp!398302))))

(declare-fun result!88774 () Bool)

(declare-fun inv!18526 (BalanceConc!9296) Bool)

(assert (=> tb!73033 (= result!88774 (and (inv!18526 (dynLambda!6566 (toChars!3609 (transformation!2459 (rule!4222 t1!34))) (value!79714 t1!34))) e!893187))))

(assert (= tb!73033 b!1398859))

(declare-fun m!1575721 () Bool)

(assert (=> b!1398859 m!1575721))

(declare-fun m!1575723 () Bool)

(assert (=> tb!73033 m!1575723))

(assert (=> d!400100 t!122777))

(declare-fun b_and!93651 () Bool)

(assert (= b_and!93613 (and (=> t!122777 result!88774) b_and!93651)))

(declare-fun t!122779 () Bool)

(declare-fun tb!73035 () Bool)

(assert (=> (and b!1398078 (= (toChars!3609 (transformation!2459 (rule!4222 t2!34))) (toChars!3609 (transformation!2459 (rule!4222 t1!34)))) t!122779) tb!73035))

(declare-fun result!88778 () Bool)

(assert (= result!88778 result!88774))

(assert (=> d!400100 t!122779))

(declare-fun b_and!93653 () Bool)

(assert (= b_and!93617 (and (=> t!122779 result!88778) b_and!93653)))

(declare-fun t!122781 () Bool)

(declare-fun tb!73037 () Bool)

(assert (=> (and b!1398058 (= (toChars!3609 (transformation!2459 (rule!4222 t1!34))) (toChars!3609 (transformation!2459 (rule!4222 t1!34)))) t!122781) tb!73037))

(declare-fun result!88780 () Bool)

(assert (= result!88780 result!88774))

(assert (=> d!400100 t!122781))

(declare-fun b_and!93655 () Bool)

(assert (= b_and!93621 (and (=> t!122781 result!88780) b_and!93655)))

(declare-fun m!1575725 () Bool)

(assert (=> d!400100 m!1575725))

(declare-fun m!1575727 () Bool)

(assert (=> d!400100 m!1575727))

(assert (=> b!1398101 d!400100))

(declare-fun d!400102 () Bool)

(declare-fun e!893189 () Bool)

(assert (=> d!400102 e!893189))

(declare-fun res!632257 () Bool)

(assert (=> d!400102 (=> (not res!632257) (not e!893189))))

(declare-fun lt!466126 () List!14262)

(assert (=> d!400102 (= res!632257 (= (content!2103 lt!466126) ((_ map or) (content!2103 lt!465881) (content!2103 (Cons!14196 lt!465866 Nil!14196)))))))

(declare-fun e!893188 () List!14262)

(assert (=> d!400102 (= lt!466126 e!893188)))

(declare-fun c!230246 () Bool)

(assert (=> d!400102 (= c!230246 ((_ is Nil!14196) lt!465881))))

(assert (=> d!400102 (= (++!3692 lt!465881 (Cons!14196 lt!465866 Nil!14196)) lt!466126)))

(declare-fun b!1398860 () Bool)

(assert (=> b!1398860 (= e!893188 (Cons!14196 lt!465866 Nil!14196))))

(declare-fun b!1398863 () Bool)

(assert (=> b!1398863 (= e!893189 (or (not (= (Cons!14196 lt!465866 Nil!14196) Nil!14196)) (= lt!466126 lt!465881)))))

(declare-fun b!1398862 () Bool)

(declare-fun res!632258 () Bool)

(assert (=> b!1398862 (=> (not res!632258) (not e!893189))))

(assert (=> b!1398862 (= res!632258 (= (size!11685 lt!466126) (+ (size!11685 lt!465881) (size!11685 (Cons!14196 lt!465866 Nil!14196)))))))

(declare-fun b!1398861 () Bool)

(assert (=> b!1398861 (= e!893188 (Cons!14196 (h!19597 lt!465881) (++!3692 (t!122751 lt!465881) (Cons!14196 lt!465866 Nil!14196))))))

(assert (= (and d!400102 c!230246) b!1398860))

(assert (= (and d!400102 (not c!230246)) b!1398861))

(assert (= (and d!400102 res!632257) b!1398862))

(assert (= (and b!1398862 res!632258) b!1398863))

(declare-fun m!1575729 () Bool)

(assert (=> d!400102 m!1575729))

(declare-fun m!1575731 () Bool)

(assert (=> d!400102 m!1575731))

(declare-fun m!1575733 () Bool)

(assert (=> d!400102 m!1575733))

(declare-fun m!1575735 () Bool)

(assert (=> b!1398862 m!1575735))

(assert (=> b!1398862 m!1575633))

(declare-fun m!1575737 () Bool)

(assert (=> b!1398862 m!1575737))

(declare-fun m!1575739 () Bool)

(assert (=> b!1398861 m!1575739))

(assert (=> b!1398101 d!400102))

(declare-fun bs!338092 () Bool)

(declare-fun d!400104 () Bool)

(assert (= bs!338092 (and d!400104 b!1398092)))

(declare-fun lambda!61020 () Int)

(assert (=> bs!338092 (= lambda!61020 lambda!60982)))

(declare-fun lt!466129 () Unit!20505)

(declare-fun lemma!155 (List!14265 LexerInterface!2154 List!14265) Unit!20505)

(assert (=> d!400104 (= lt!466129 (lemma!155 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!163 (List!14266) Regex!3773)

(assert (=> d!400104 (= (rulesRegex!342 thiss!19762 rules!2550) (generalisedUnion!163 (map!3149 rules!2550 lambda!61020)))))

(declare-fun bs!338093 () Bool)

(assert (= bs!338093 d!400104))

(declare-fun m!1575741 () Bool)

(assert (=> bs!338093 m!1575741))

(declare-fun m!1575743 () Bool)

(assert (=> bs!338093 m!1575743))

(assert (=> bs!338093 m!1575743))

(declare-fun m!1575745 () Bool)

(assert (=> bs!338093 m!1575745))

(assert (=> b!1398101 d!400104))

(declare-fun d!400106 () Bool)

(declare-fun lt!466130 () Bool)

(declare-fun e!893190 () Bool)

(assert (=> d!400106 (= lt!466130 e!893190)))

(declare-fun res!632260 () Bool)

(assert (=> d!400106 (=> (not res!632260) (not e!893190))))

(assert (=> d!400106 (= res!632260 (= (list!5530 (_1!7795 (lex!979 thiss!19762 rules!2550 (print!918 thiss!19762 (singletonSeq!1116 t2!34))))) (list!5530 (singletonSeq!1116 t2!34))))))

(declare-fun e!893191 () Bool)

(assert (=> d!400106 (= lt!466130 e!893191)))

(declare-fun res!632259 () Bool)

(assert (=> d!400106 (=> (not res!632259) (not e!893191))))

(declare-fun lt!466131 () tuple2!13818)

(assert (=> d!400106 (= res!632259 (= (size!11689 (_1!7795 lt!466131)) 1))))

(assert (=> d!400106 (= lt!466131 (lex!979 thiss!19762 rules!2550 (print!918 thiss!19762 (singletonSeq!1116 t2!34))))))

(assert (=> d!400106 (not (isEmpty!8622 rules!2550))))

(assert (=> d!400106 (= (rulesProduceIndividualToken!1123 thiss!19762 rules!2550 t2!34) lt!466130)))

(declare-fun b!1398864 () Bool)

(declare-fun res!632261 () Bool)

(assert (=> b!1398864 (=> (not res!632261) (not e!893191))))

(assert (=> b!1398864 (= res!632261 (= (apply!3608 (_1!7795 lt!466131) 0) t2!34))))

(declare-fun b!1398865 () Bool)

(assert (=> b!1398865 (= e!893191 (isEmpty!8623 (_2!7795 lt!466131)))))

(declare-fun b!1398866 () Bool)

(assert (=> b!1398866 (= e!893190 (isEmpty!8623 (_2!7795 (lex!979 thiss!19762 rules!2550 (print!918 thiss!19762 (singletonSeq!1116 t2!34))))))))

(assert (= (and d!400106 res!632259) b!1398864))

(assert (= (and b!1398864 res!632261) b!1398865))

(assert (= (and d!400106 res!632260) b!1398866))

(assert (=> d!400106 m!1574781))

(assert (=> d!400106 m!1574783))

(assert (=> d!400106 m!1574781))

(assert (=> d!400106 m!1575597))

(assert (=> d!400106 m!1574781))

(assert (=> d!400106 m!1574783))

(declare-fun m!1575747 () Bool)

(assert (=> d!400106 m!1575747))

(declare-fun m!1575749 () Bool)

(assert (=> d!400106 m!1575749))

(assert (=> d!400106 m!1574709))

(declare-fun m!1575751 () Bool)

(assert (=> d!400106 m!1575751))

(declare-fun m!1575753 () Bool)

(assert (=> b!1398864 m!1575753))

(declare-fun m!1575755 () Bool)

(assert (=> b!1398865 m!1575755))

(assert (=> b!1398866 m!1574781))

(assert (=> b!1398866 m!1574781))

(assert (=> b!1398866 m!1574783))

(assert (=> b!1398866 m!1574783))

(assert (=> b!1398866 m!1575747))

(declare-fun m!1575757 () Bool)

(assert (=> b!1398866 m!1575757))

(assert (=> b!1398059 d!400106))

(declare-fun d!400108 () Bool)

(declare-fun res!632266 () Bool)

(declare-fun e!893194 () Bool)

(assert (=> d!400108 (=> (not res!632266) (not e!893194))))

(assert (=> d!400108 (= res!632266 (not (isEmpty!8630 (originalCharacters!3321 t1!34))))))

(assert (=> d!400108 (= (inv!18522 t1!34) e!893194)))

(declare-fun b!1398871 () Bool)

(declare-fun res!632267 () Bool)

(assert (=> b!1398871 (=> (not res!632267) (not e!893194))))

(assert (=> b!1398871 (= res!632267 (= (originalCharacters!3321 t1!34) (list!5529 (dynLambda!6566 (toChars!3609 (transformation!2459 (rule!4222 t1!34))) (value!79714 t1!34)))))))

(declare-fun b!1398872 () Bool)

(assert (=> b!1398872 (= e!893194 (= (size!11677 t1!34) (size!11685 (originalCharacters!3321 t1!34))))))

(assert (= (and d!400108 res!632266) b!1398871))

(assert (= (and b!1398871 res!632267) b!1398872))

(declare-fun b_lambda!43879 () Bool)

(assert (=> (not b_lambda!43879) (not b!1398871)))

(assert (=> b!1398871 t!122777))

(declare-fun b_and!93657 () Bool)

(assert (= b_and!93651 (and (=> t!122777 result!88774) b_and!93657)))

(assert (=> b!1398871 t!122779))

(declare-fun b_and!93659 () Bool)

(assert (= b_and!93653 (and (=> t!122779 result!88778) b_and!93659)))

(assert (=> b!1398871 t!122781))

(declare-fun b_and!93661 () Bool)

(assert (= b_and!93655 (and (=> t!122781 result!88780) b_and!93661)))

(declare-fun m!1575759 () Bool)

(assert (=> d!400108 m!1575759))

(assert (=> b!1398871 m!1575727))

(assert (=> b!1398871 m!1575727))

(declare-fun m!1575761 () Bool)

(assert (=> b!1398871 m!1575761))

(declare-fun m!1575763 () Bool)

(assert (=> b!1398872 m!1575763))

(assert (=> start!127322 d!400108))

(declare-fun d!400110 () Bool)

(declare-fun res!632268 () Bool)

(declare-fun e!893195 () Bool)

(assert (=> d!400110 (=> (not res!632268) (not e!893195))))

(assert (=> d!400110 (= res!632268 (not (isEmpty!8630 (originalCharacters!3321 t2!34))))))

(assert (=> d!400110 (= (inv!18522 t2!34) e!893195)))

(declare-fun b!1398873 () Bool)

(declare-fun res!632269 () Bool)

(assert (=> b!1398873 (=> (not res!632269) (not e!893195))))

(assert (=> b!1398873 (= res!632269 (= (originalCharacters!3321 t2!34) (list!5529 (dynLambda!6566 (toChars!3609 (transformation!2459 (rule!4222 t2!34))) (value!79714 t2!34)))))))

(declare-fun b!1398874 () Bool)

(assert (=> b!1398874 (= e!893195 (= (size!11677 t2!34) (size!11685 (originalCharacters!3321 t2!34))))))

(assert (= (and d!400110 res!632268) b!1398873))

(assert (= (and b!1398873 res!632269) b!1398874))

(declare-fun b_lambda!43881 () Bool)

(assert (=> (not b_lambda!43881) (not b!1398873)))

(declare-fun tb!73039 () Bool)

(declare-fun t!122783 () Bool)

(assert (=> (and b!1398066 (= (toChars!3609 (transformation!2459 (h!19600 rules!2550))) (toChars!3609 (transformation!2459 (rule!4222 t2!34)))) t!122783) tb!73039))

(declare-fun b!1398875 () Bool)

(declare-fun e!893196 () Bool)

(declare-fun tp!398303 () Bool)

(assert (=> b!1398875 (= e!893196 (and (inv!18525 (c!230080 (dynLambda!6566 (toChars!3609 (transformation!2459 (rule!4222 t2!34))) (value!79714 t2!34)))) tp!398303))))

(declare-fun result!88782 () Bool)

(assert (=> tb!73039 (= result!88782 (and (inv!18526 (dynLambda!6566 (toChars!3609 (transformation!2459 (rule!4222 t2!34))) (value!79714 t2!34))) e!893196))))

(assert (= tb!73039 b!1398875))

(declare-fun m!1575765 () Bool)

(assert (=> b!1398875 m!1575765))

(declare-fun m!1575767 () Bool)

(assert (=> tb!73039 m!1575767))

(assert (=> b!1398873 t!122783))

(declare-fun b_and!93663 () Bool)

(assert (= b_and!93657 (and (=> t!122783 result!88782) b_and!93663)))

(declare-fun t!122785 () Bool)

(declare-fun tb!73041 () Bool)

(assert (=> (and b!1398078 (= (toChars!3609 (transformation!2459 (rule!4222 t2!34))) (toChars!3609 (transformation!2459 (rule!4222 t2!34)))) t!122785) tb!73041))

(declare-fun result!88784 () Bool)

(assert (= result!88784 result!88782))

(assert (=> b!1398873 t!122785))

(declare-fun b_and!93665 () Bool)

(assert (= b_and!93659 (and (=> t!122785 result!88784) b_and!93665)))

(declare-fun tb!73043 () Bool)

(declare-fun t!122787 () Bool)

(assert (=> (and b!1398058 (= (toChars!3609 (transformation!2459 (rule!4222 t1!34))) (toChars!3609 (transformation!2459 (rule!4222 t2!34)))) t!122787) tb!73043))

(declare-fun result!88786 () Bool)

(assert (= result!88786 result!88782))

(assert (=> b!1398873 t!122787))

(declare-fun b_and!93667 () Bool)

(assert (= b_and!93661 (and (=> t!122787 result!88786) b_and!93667)))

(declare-fun m!1575769 () Bool)

(assert (=> d!400110 m!1575769))

(declare-fun m!1575771 () Bool)

(assert (=> b!1398873 m!1575771))

(assert (=> b!1398873 m!1575771))

(declare-fun m!1575773 () Bool)

(assert (=> b!1398873 m!1575773))

(declare-fun m!1575775 () Bool)

(assert (=> b!1398874 m!1575775))

(assert (=> start!127322 d!400110))

(declare-fun d!400112 () Bool)

(declare-fun choose!8621 (Int) Bool)

(assert (=> d!400112 (= (Exists!923 lambda!60981) (choose!8621 lambda!60981))))

(declare-fun bs!338094 () Bool)

(assert (= bs!338094 d!400112))

(declare-fun m!1575777 () Bool)

(assert (=> bs!338094 m!1575777))

(assert (=> b!1398060 d!400112))

(declare-fun bs!338095 () Bool)

(declare-fun d!400114 () Bool)

(assert (= bs!338095 (and d!400114 b!1398060)))

(declare-fun lambda!61023 () Int)

(assert (=> bs!338095 (= lambda!61023 lambda!60981)))

(assert (=> d!400114 true))

(assert (=> d!400114 true))

(assert (=> d!400114 (Exists!923 lambda!61023)))

(declare-fun lt!466134 () Unit!20505)

(declare-fun choose!8622 (Regex!3773 List!14262) Unit!20505)

(assert (=> d!400114 (= lt!466134 (choose!8622 lt!465863 lt!465857))))

(assert (=> d!400114 (validRegex!1649 lt!465863)))

(assert (=> d!400114 (= (lemmaPrefixMatchThenExistsStringThatMatches!241 lt!465863 lt!465857) lt!466134)))

(declare-fun bs!338096 () Bool)

(assert (= bs!338096 d!400114))

(declare-fun m!1575779 () Bool)

(assert (=> bs!338096 m!1575779))

(declare-fun m!1575781 () Bool)

(assert (=> bs!338096 m!1575781))

(declare-fun m!1575783 () Bool)

(assert (=> bs!338096 m!1575783))

(assert (=> b!1398060 d!400114))

(declare-fun d!400116 () Bool)

(declare-fun prefixMatchZipperSequence!298 (Regex!3773 BalanceConc!9296) Bool)

(declare-fun ++!3694 (BalanceConc!9296 BalanceConc!9296) BalanceConc!9296)

(declare-fun singletonSeq!1118 (C!7836) BalanceConc!9296)

(assert (=> d!400116 (= (separableTokensPredicate!437 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!298 (rulesRegex!342 thiss!19762 rules!2550) (++!3694 (charsOf!1431 t1!34) (singletonSeq!1118 (apply!3603 (charsOf!1431 t2!34) 0))))))))

(declare-fun bs!338097 () Bool)

(assert (= bs!338097 d!400116))

(assert (=> bs!338097 m!1574809))

(assert (=> bs!338097 m!1574731))

(declare-fun m!1575785 () Bool)

(assert (=> bs!338097 m!1575785))

(declare-fun m!1575787 () Bool)

(assert (=> bs!338097 m!1575787))

(assert (=> bs!338097 m!1574731))

(assert (=> bs!338097 m!1574723))

(assert (=> bs!338097 m!1574809))

(declare-fun m!1575789 () Bool)

(assert (=> bs!338097 m!1575789))

(assert (=> bs!338097 m!1575789))

(declare-fun m!1575791 () Bool)

(assert (=> bs!338097 m!1575791))

(assert (=> bs!338097 m!1574723))

(assert (=> bs!338097 m!1575791))

(assert (=> bs!338097 m!1575785))

(assert (=> b!1398081 d!400116))

(declare-fun bs!338098 () Bool)

(declare-fun d!400118 () Bool)

(assert (= bs!338098 (and d!400118 b!1398071)))

(declare-fun lambda!61026 () Int)

(assert (=> bs!338098 (not (= lambda!61026 lambda!60984))))

(declare-fun bs!338099 () Bool)

(assert (= bs!338099 (and d!400118 b!1398062)))

(assert (=> bs!338099 (not (= lambda!61026 lambda!60985))))

(assert (=> d!400118 true))

(declare-fun order!8699 () Int)

(declare-fun dynLambda!6567 (Int Int) Int)

(assert (=> d!400118 (< (dynLambda!6567 order!8699 lambda!60984) (dynLambda!6567 order!8699 lambda!61026))))

(assert (=> d!400118 (= (exists!562 rules!2550 lambda!60984) (not (forall!3451 rules!2550 lambda!61026)))))

(declare-fun bs!338100 () Bool)

(assert (= bs!338100 d!400118))

(declare-fun m!1575793 () Bool)

(assert (=> bs!338100 m!1575793))

(assert (=> b!1398071 d!400118))

(declare-fun bs!338101 () Bool)

(declare-fun d!400120 () Bool)

(assert (= bs!338101 (and d!400120 b!1398071)))

(declare-fun lambda!61029 () Int)

(assert (=> bs!338101 (not (= lambda!61029 lambda!60984))))

(declare-fun bs!338102 () Bool)

(assert (= bs!338102 (and d!400120 b!1398062)))

(assert (=> bs!338102 (not (= lambda!61029 lambda!60985))))

(declare-fun bs!338103 () Bool)

(assert (= bs!338103 (and d!400120 d!400118)))

(assert (=> bs!338103 (not (= lambda!61029 lambda!61026))))

(assert (=> d!400120 true))

(assert (=> d!400120 true))

(declare-fun order!8701 () Int)

(declare-fun dynLambda!6568 (Int Int) Int)

(assert (=> d!400120 (< (dynLambda!6568 order!8701 lambda!60982) (dynLambda!6567 order!8699 lambda!61029))))

(assert (=> d!400120 (exists!562 rules!2550 lambda!61029)))

(declare-fun lt!466137 () Unit!20505)

(declare-fun choose!8623 (List!14265 Int Regex!3773) Unit!20505)

(assert (=> d!400120 (= lt!466137 (choose!8623 rules!2550 lambda!60982 lt!465869))))

(assert (=> d!400120 (contains!2759 (map!3149 rules!2550 lambda!60982) lt!465869)))

(assert (=> d!400120 (= (lemmaMapContains!170 rules!2550 lambda!60982 lt!465869) lt!466137)))

(declare-fun bs!338104 () Bool)

(assert (= bs!338104 d!400120))

(declare-fun m!1575795 () Bool)

(assert (=> bs!338104 m!1575795))

(declare-fun m!1575797 () Bool)

(assert (=> bs!338104 m!1575797))

(assert (=> bs!338104 m!1574785))

(assert (=> bs!338104 m!1574785))

(assert (=> bs!338104 m!1574787))

(assert (=> b!1398071 d!400120))

(declare-fun d!400122 () Bool)

(assert (=> d!400122 (= (isEmpty!8622 rules!2550) ((_ is Nil!14199) rules!2550))))

(assert (=> b!1398072 d!400122))

(declare-fun d!400124 () Bool)

(declare-fun lt!466138 () Bool)

(assert (=> d!400124 (= lt!466138 (select (content!2103 (usedCharacters!270 (regex!2459 (rule!4222 t2!34)))) lt!465866))))

(declare-fun e!893200 () Bool)

(assert (=> d!400124 (= lt!466138 e!893200)))

(declare-fun res!632273 () Bool)

(assert (=> d!400124 (=> (not res!632273) (not e!893200))))

(assert (=> d!400124 (= res!632273 ((_ is Cons!14196) (usedCharacters!270 (regex!2459 (rule!4222 t2!34)))))))

(assert (=> d!400124 (= (contains!2761 (usedCharacters!270 (regex!2459 (rule!4222 t2!34))) lt!465866) lt!466138)))

(declare-fun b!1398884 () Bool)

(declare-fun e!893199 () Bool)

(assert (=> b!1398884 (= e!893200 e!893199)))

(declare-fun res!632272 () Bool)

(assert (=> b!1398884 (=> res!632272 e!893199)))

(assert (=> b!1398884 (= res!632272 (= (h!19597 (usedCharacters!270 (regex!2459 (rule!4222 t2!34)))) lt!465866))))

(declare-fun b!1398885 () Bool)

(assert (=> b!1398885 (= e!893199 (contains!2761 (t!122751 (usedCharacters!270 (regex!2459 (rule!4222 t2!34)))) lt!465866))))

(assert (= (and d!400124 res!632273) b!1398884))

(assert (= (and b!1398884 (not res!632272)) b!1398885))

(assert (=> d!400124 m!1574821))

(declare-fun m!1575799 () Bool)

(assert (=> d!400124 m!1575799))

(declare-fun m!1575801 () Bool)

(assert (=> d!400124 m!1575801))

(declare-fun m!1575803 () Bool)

(assert (=> b!1398885 m!1575803))

(assert (=> b!1398093 d!400124))

(declare-fun call!93436 () List!14262)

(declare-fun c!230249 () Bool)

(declare-fun bm!93430 () Bool)

(declare-fun call!93438 () List!14262)

(declare-fun call!93435 () List!14262)

(assert (=> bm!93430 (= call!93436 (++!3692 (ite c!230249 call!93435 call!93438) (ite c!230249 call!93438 call!93435)))))

(declare-fun bm!93431 () Bool)

(declare-fun call!93437 () List!14262)

(declare-fun c!230247 () Bool)

(assert (=> bm!93431 (= call!93437 (usedCharacters!270 (ite c!230247 (reg!4102 (regex!2459 (rule!4222 t2!34))) (ite c!230249 (regTwo!8059 (regex!2459 (rule!4222 t2!34))) (regOne!8058 (regex!2459 (rule!4222 t2!34)))))))))

(declare-fun bm!93432 () Bool)

(assert (=> bm!93432 (= call!93435 (usedCharacters!270 (ite c!230249 (regOne!8059 (regex!2459 (rule!4222 t2!34))) (regTwo!8058 (regex!2459 (rule!4222 t2!34))))))))

(declare-fun b!1398886 () Bool)

(declare-fun e!893202 () List!14262)

(assert (=> b!1398886 (= e!893202 call!93437)))

(declare-fun b!1398887 () Bool)

(declare-fun e!893201 () List!14262)

(declare-fun e!893204 () List!14262)

(assert (=> b!1398887 (= e!893201 e!893204)))

(declare-fun c!230248 () Bool)

(assert (=> b!1398887 (= c!230248 ((_ is ElementMatch!3773) (regex!2459 (rule!4222 t2!34))))))

(declare-fun b!1398888 () Bool)

(assert (=> b!1398888 (= e!893201 Nil!14196)))

(declare-fun b!1398889 () Bool)

(declare-fun e!893203 () List!14262)

(assert (=> b!1398889 (= e!893202 e!893203)))

(assert (=> b!1398889 (= c!230249 ((_ is Union!3773) (regex!2459 (rule!4222 t2!34))))))

(declare-fun b!1398890 () Bool)

(assert (=> b!1398890 (= c!230247 ((_ is Star!3773) (regex!2459 (rule!4222 t2!34))))))

(assert (=> b!1398890 (= e!893204 e!893202)))

(declare-fun bm!93433 () Bool)

(assert (=> bm!93433 (= call!93438 call!93437)))

(declare-fun b!1398892 () Bool)

(assert (=> b!1398892 (= e!893203 call!93436)))

(declare-fun b!1398893 () Bool)

(assert (=> b!1398893 (= e!893204 (Cons!14196 (c!230081 (regex!2459 (rule!4222 t2!34))) Nil!14196))))

(declare-fun b!1398891 () Bool)

(assert (=> b!1398891 (= e!893203 call!93436)))

(declare-fun d!400126 () Bool)

(declare-fun c!230250 () Bool)

(assert (=> d!400126 (= c!230250 (or ((_ is EmptyExpr!3773) (regex!2459 (rule!4222 t2!34))) ((_ is EmptyLang!3773) (regex!2459 (rule!4222 t2!34)))))))

(assert (=> d!400126 (= (usedCharacters!270 (regex!2459 (rule!4222 t2!34))) e!893201)))

(assert (= (and d!400126 c!230250) b!1398888))

(assert (= (and d!400126 (not c!230250)) b!1398887))

(assert (= (and b!1398887 c!230248) b!1398893))

(assert (= (and b!1398887 (not c!230248)) b!1398890))

(assert (= (and b!1398890 c!230247) b!1398886))

(assert (= (and b!1398890 (not c!230247)) b!1398889))

(assert (= (and b!1398889 c!230249) b!1398892))

(assert (= (and b!1398889 (not c!230249)) b!1398891))

(assert (= (or b!1398892 b!1398891) bm!93432))

(assert (= (or b!1398892 b!1398891) bm!93433))

(assert (= (or b!1398892 b!1398891) bm!93430))

(assert (= (or b!1398886 bm!93433) bm!93431))

(declare-fun m!1575805 () Bool)

(assert (=> bm!93430 m!1575805))

(declare-fun m!1575807 () Bool)

(assert (=> bm!93431 m!1575807))

(declare-fun m!1575809 () Bool)

(assert (=> bm!93432 m!1575809))

(assert (=> b!1398093 d!400126))

(declare-fun d!400128 () Bool)

(declare-fun lt!466141 () Int)

(assert (=> d!400128 (= lt!466141 (size!11685 (list!5529 lt!465872)))))

(declare-fun size!11690 (Conc!4678) Int)

(assert (=> d!400128 (= lt!466141 (size!11690 (c!230080 lt!465872)))))

(assert (=> d!400128 (= (size!11678 lt!465872) lt!466141)))

(declare-fun bs!338105 () Bool)

(assert (= bs!338105 d!400128))

(assert (=> bs!338105 m!1574827))

(assert (=> bs!338105 m!1574827))

(declare-fun m!1575811 () Bool)

(assert (=> bs!338105 m!1575811))

(declare-fun m!1575813 () Bool)

(assert (=> bs!338105 m!1575813))

(assert (=> b!1398094 d!400128))

(declare-fun d!400130 () Bool)

(declare-fun lt!466142 () BalanceConc!9296)

(assert (=> d!400130 (= (list!5529 lt!466142) (originalCharacters!3321 t2!34))))

(assert (=> d!400130 (= lt!466142 (dynLambda!6566 (toChars!3609 (transformation!2459 (rule!4222 t2!34))) (value!79714 t2!34)))))

(assert (=> d!400130 (= (charsOf!1431 t2!34) lt!466142)))

(declare-fun b_lambda!43883 () Bool)

(assert (=> (not b_lambda!43883) (not d!400130)))

(assert (=> d!400130 t!122783))

(declare-fun b_and!93669 () Bool)

(assert (= b_and!93663 (and (=> t!122783 result!88782) b_and!93669)))

(assert (=> d!400130 t!122785))

(declare-fun b_and!93671 () Bool)

(assert (= b_and!93665 (and (=> t!122785 result!88784) b_and!93671)))

(assert (=> d!400130 t!122787))

(declare-fun b_and!93673 () Bool)

(assert (= b_and!93667 (and (=> t!122787 result!88786) b_and!93673)))

(declare-fun m!1575815 () Bool)

(assert (=> d!400130 m!1575815))

(assert (=> d!400130 m!1575771))

(assert (=> b!1398094 d!400130))

(declare-fun b!1398894 () Bool)

(declare-fun e!893207 () Bool)

(assert (=> b!1398894 (= e!893207 (inv!16 (value!79714 t2!34)))))

(declare-fun b!1398895 () Bool)

(declare-fun e!893206 () Bool)

(assert (=> b!1398895 (= e!893206 (inv!15 (value!79714 t2!34)))))

(declare-fun d!400132 () Bool)

(declare-fun c!230252 () Bool)

(assert (=> d!400132 (= c!230252 ((_ is IntegerValue!7647) (value!79714 t2!34)))))

(assert (=> d!400132 (= (inv!21 (value!79714 t2!34)) e!893207)))

(declare-fun b!1398896 () Bool)

(declare-fun e!893205 () Bool)

(assert (=> b!1398896 (= e!893207 e!893205)))

(declare-fun c!230251 () Bool)

(assert (=> b!1398896 (= c!230251 ((_ is IntegerValue!7648) (value!79714 t2!34)))))

(declare-fun b!1398897 () Bool)

(assert (=> b!1398897 (= e!893205 (inv!17 (value!79714 t2!34)))))

(declare-fun b!1398898 () Bool)

(declare-fun res!632274 () Bool)

(assert (=> b!1398898 (=> res!632274 e!893206)))

(assert (=> b!1398898 (= res!632274 (not ((_ is IntegerValue!7649) (value!79714 t2!34))))))

(assert (=> b!1398898 (= e!893205 e!893206)))

(assert (= (and d!400132 c!230252) b!1398894))

(assert (= (and d!400132 (not c!230252)) b!1398896))

(assert (= (and b!1398896 c!230251) b!1398897))

(assert (= (and b!1398896 (not c!230251)) b!1398898))

(assert (= (and b!1398898 (not res!632274)) b!1398895))

(declare-fun m!1575817 () Bool)

(assert (=> b!1398894 m!1575817))

(declare-fun m!1575819 () Bool)

(assert (=> b!1398895 m!1575819))

(declare-fun m!1575821 () Bool)

(assert (=> b!1398897 m!1575821))

(assert (=> b!1398073 d!400132))

(declare-fun d!400134 () Bool)

(declare-fun lt!466143 () Bool)

(assert (=> d!400134 (= lt!466143 (isEmpty!8630 (list!5529 (_2!7795 lt!465875))))))

(assert (=> d!400134 (= lt!466143 (isEmpty!8633 (c!230080 (_2!7795 lt!465875))))))

(assert (=> d!400134 (= (isEmpty!8623 (_2!7795 lt!465875)) lt!466143)))

(declare-fun bs!338106 () Bool)

(assert (= bs!338106 d!400134))

(declare-fun m!1575823 () Bool)

(assert (=> bs!338106 m!1575823))

(assert (=> bs!338106 m!1575823))

(declare-fun m!1575825 () Bool)

(assert (=> bs!338106 m!1575825))

(declare-fun m!1575827 () Bool)

(assert (=> bs!338106 m!1575827))

(assert (=> b!1398074 d!400134))

(declare-fun d!400136 () Bool)

(assert (=> d!400136 (= (list!5530 (_1!7795 lt!465864)) (list!5534 (c!230082 (_1!7795 lt!465864))))))

(declare-fun bs!338107 () Bool)

(assert (= bs!338107 d!400136))

(declare-fun m!1575829 () Bool)

(assert (=> bs!338107 m!1575829))

(assert (=> b!1398095 d!400136))

(declare-fun d!400138 () Bool)

(declare-fun lt!466144 () BalanceConc!9296)

(assert (=> d!400138 (= (list!5529 lt!466144) (printList!634 thiss!19762 (list!5530 (singletonSeq!1116 t1!34))))))

(assert (=> d!400138 (= lt!466144 (printTailRec!616 thiss!19762 (singletonSeq!1116 t1!34) 0 (BalanceConc!9297 Empty!4678)))))

(assert (=> d!400138 (= (print!918 thiss!19762 (singletonSeq!1116 t1!34)) lt!466144)))

(declare-fun bs!338108 () Bool)

(assert (= bs!338108 d!400138))

(declare-fun m!1575831 () Bool)

(assert (=> bs!338108 m!1575831))

(assert (=> bs!338108 m!1574811))

(assert (=> bs!338108 m!1575273))

(assert (=> bs!338108 m!1575273))

(declare-fun m!1575833 () Bool)

(assert (=> bs!338108 m!1575833))

(assert (=> bs!338108 m!1574811))

(declare-fun m!1575835 () Bool)

(assert (=> bs!338108 m!1575835))

(assert (=> b!1398095 d!400138))

(declare-fun d!400140 () Bool)

(declare-fun e!893208 () Bool)

(assert (=> d!400140 e!893208))

(declare-fun res!632275 () Bool)

(assert (=> d!400140 (=> (not res!632275) (not e!893208))))

(declare-fun lt!466145 () BalanceConc!9298)

(assert (=> d!400140 (= res!632275 (= (list!5530 lt!466145) (Cons!14198 t1!34 Nil!14198)))))

(assert (=> d!400140 (= lt!466145 (singleton!490 t1!34))))

(assert (=> d!400140 (= (singletonSeq!1116 t1!34) lt!466145)))

(declare-fun b!1398899 () Bool)

(assert (=> b!1398899 (= e!893208 (isBalanced!1384 (c!230082 lt!466145)))))

(assert (= (and d!400140 res!632275) b!1398899))

(declare-fun m!1575837 () Bool)

(assert (=> d!400140 m!1575837))

(declare-fun m!1575839 () Bool)

(assert (=> d!400140 m!1575839))

(declare-fun m!1575841 () Bool)

(assert (=> b!1398899 m!1575841))

(assert (=> b!1398095 d!400140))

(declare-fun b!1398912 () Bool)

(declare-fun e!893219 () Bool)

(assert (=> b!1398912 (= e!893219 (dynLambda!6564 lambda!60984 (h!19600 rules!2550)))))

(declare-fun b!1398913 () Bool)

(declare-fun e!893218 () Rule!4718)

(declare-fun e!893217 () Rule!4718)

(assert (=> b!1398913 (= e!893218 e!893217)))

(declare-fun c!230257 () Bool)

(assert (=> b!1398913 (= c!230257 ((_ is Cons!14199) rules!2550))))

(declare-fun b!1398914 () Bool)

(declare-fun e!893220 () Bool)

(declare-fun lt!466150 () Rule!4718)

(assert (=> b!1398914 (= e!893220 (contains!2760 rules!2550 lt!466150))))

(declare-fun b!1398915 () Bool)

(declare-fun lt!466151 () Unit!20505)

(declare-fun Unit!20514 () Unit!20505)

(assert (=> b!1398915 (= lt!466151 Unit!20514)))

(assert (=> b!1398915 false))

(declare-fun head!2581 (List!14265) Rule!4718)

(assert (=> b!1398915 (= e!893217 (head!2581 rules!2550))))

(declare-fun b!1398916 () Bool)

(assert (=> b!1398916 (= e!893218 (h!19600 rules!2550))))

(declare-fun d!400142 () Bool)

(assert (=> d!400142 e!893220))

(declare-fun res!632280 () Bool)

(assert (=> d!400142 (=> (not res!632280) (not e!893220))))

(assert (=> d!400142 (= res!632280 (dynLambda!6564 lambda!60984 lt!466150))))

(assert (=> d!400142 (= lt!466150 e!893218)))

(declare-fun c!230258 () Bool)

(assert (=> d!400142 (= c!230258 e!893219)))

(declare-fun res!632281 () Bool)

(assert (=> d!400142 (=> (not res!632281) (not e!893219))))

(assert (=> d!400142 (= res!632281 ((_ is Cons!14199) rules!2550))))

(assert (=> d!400142 (exists!562 rules!2550 lambda!60984)))

(assert (=> d!400142 (= (getWitness!451 rules!2550 lambda!60984) lt!466150)))

(declare-fun b!1398917 () Bool)

(assert (=> b!1398917 (= e!893217 (getWitness!451 (t!122754 rules!2550) lambda!60984))))

(assert (= (and d!400142 res!632281) b!1398912))

(assert (= (and d!400142 c!230258) b!1398916))

(assert (= (and d!400142 (not c!230258)) b!1398913))

(assert (= (and b!1398913 c!230257) b!1398917))

(assert (= (and b!1398913 (not c!230257)) b!1398915))

(assert (= (and d!400142 res!632280) b!1398914))

(declare-fun b_lambda!43885 () Bool)

(assert (=> (not b_lambda!43885) (not b!1398912)))

(declare-fun b_lambda!43887 () Bool)

(assert (=> (not b_lambda!43887) (not d!400142)))

(declare-fun m!1575843 () Bool)

(assert (=> d!400142 m!1575843))

(assert (=> d!400142 m!1574759))

(declare-fun m!1575845 () Bool)

(assert (=> b!1398912 m!1575845))

(declare-fun m!1575847 () Bool)

(assert (=> b!1398917 m!1575847))

(declare-fun m!1575849 () Bool)

(assert (=> b!1398914 m!1575849))

(declare-fun m!1575851 () Bool)

(assert (=> b!1398915 m!1575851))

(assert (=> b!1398095 d!400142))

(declare-fun b!1398918 () Bool)

(declare-fun e!893222 () Bool)

(declare-fun lt!466152 () tuple2!13818)

(assert (=> b!1398918 (= e!893222 (not (isEmpty!8631 (_1!7795 lt!466152))))))

(declare-fun b!1398919 () Bool)

(declare-fun res!632282 () Bool)

(declare-fun e!893221 () Bool)

(assert (=> b!1398919 (=> (not res!632282) (not e!893221))))

(assert (=> b!1398919 (= res!632282 (= (list!5530 (_1!7795 lt!466152)) (_1!7793 (lexList!668 thiss!19762 rules!2550 (list!5529 lt!465876)))))))

(declare-fun d!400144 () Bool)

(assert (=> d!400144 e!893221))

(declare-fun res!632283 () Bool)

(assert (=> d!400144 (=> (not res!632283) (not e!893221))))

(declare-fun e!893223 () Bool)

(assert (=> d!400144 (= res!632283 e!893223)))

(declare-fun c!230259 () Bool)

(assert (=> d!400144 (= c!230259 (> (size!11689 (_1!7795 lt!466152)) 0))))

(assert (=> d!400144 (= lt!466152 (lexTailRecV2!439 thiss!19762 rules!2550 lt!465876 (BalanceConc!9297 Empty!4678) lt!465876 (BalanceConc!9299 Empty!4679)))))

(assert (=> d!400144 (= (lex!979 thiss!19762 rules!2550 lt!465876) lt!466152)))

(declare-fun b!1398920 () Bool)

(assert (=> b!1398920 (= e!893221 (= (list!5529 (_2!7795 lt!466152)) (_2!7793 (lexList!668 thiss!19762 rules!2550 (list!5529 lt!465876)))))))

(declare-fun b!1398921 () Bool)

(assert (=> b!1398921 (= e!893223 (= (_2!7795 lt!466152) lt!465876))))

(declare-fun b!1398922 () Bool)

(assert (=> b!1398922 (= e!893223 e!893222)))

(declare-fun res!632284 () Bool)

(assert (=> b!1398922 (= res!632284 (< (size!11678 (_2!7795 lt!466152)) (size!11678 lt!465876)))))

(assert (=> b!1398922 (=> (not res!632284) (not e!893222))))

(assert (= (and d!400144 c!230259) b!1398922))

(assert (= (and d!400144 (not c!230259)) b!1398921))

(assert (= (and b!1398922 res!632284) b!1398918))

(assert (= (and d!400144 res!632283) b!1398919))

(assert (= (and b!1398919 res!632282) b!1398920))

(declare-fun m!1575853 () Bool)

(assert (=> b!1398919 m!1575853))

(assert (=> b!1398919 m!1574843))

(assert (=> b!1398919 m!1574843))

(assert (=> b!1398919 m!1574845))

(declare-fun m!1575855 () Bool)

(assert (=> d!400144 m!1575855))

(declare-fun m!1575857 () Bool)

(assert (=> d!400144 m!1575857))

(declare-fun m!1575859 () Bool)

(assert (=> b!1398922 m!1575859))

(declare-fun m!1575861 () Bool)

(assert (=> b!1398922 m!1575861))

(declare-fun m!1575863 () Bool)

(assert (=> b!1398918 m!1575863))

(declare-fun m!1575865 () Bool)

(assert (=> b!1398920 m!1575865))

(assert (=> b!1398920 m!1574843))

(assert (=> b!1398920 m!1574843))

(assert (=> b!1398920 m!1574845))

(assert (=> b!1398095 d!400144))

(declare-fun b!1398923 () Bool)

(declare-fun e!893226 () Bool)

(assert (=> b!1398923 (= e!893226 (nullable!1227 (regex!2459 (rule!4222 t2!34))))))

(declare-fun bm!93434 () Bool)

(declare-fun call!93439 () Bool)

(assert (=> bm!93434 (= call!93439 (isEmpty!8630 lt!465874))))

(declare-fun b!1398925 () Bool)

(declare-fun e!893227 () Bool)

(declare-fun e!893228 () Bool)

(assert (=> b!1398925 (= e!893227 e!893228)))

(declare-fun res!632286 () Bool)

(assert (=> b!1398925 (=> (not res!632286) (not e!893228))))

(declare-fun lt!466153 () Bool)

(assert (=> b!1398925 (= res!632286 (not lt!466153))))

(declare-fun b!1398926 () Bool)

(declare-fun e!893229 () Bool)

(assert (=> b!1398926 (= e!893229 (not (= (head!2577 lt!465874) (c!230081 (regex!2459 (rule!4222 t2!34))))))))

(declare-fun b!1398927 () Bool)

(declare-fun res!632285 () Bool)

(declare-fun e!893230 () Bool)

(assert (=> b!1398927 (=> (not res!632285) (not e!893230))))

(assert (=> b!1398927 (= res!632285 (not call!93439))))

(declare-fun b!1398928 () Bool)

(declare-fun res!632287 () Bool)

(assert (=> b!1398928 (=> res!632287 e!893229)))

(assert (=> b!1398928 (= res!632287 (not (isEmpty!8630 (tail!2032 lt!465874))))))

(declare-fun b!1398929 () Bool)

(assert (=> b!1398929 (= e!893226 (matchR!1764 (derivativeStep!985 (regex!2459 (rule!4222 t2!34)) (head!2577 lt!465874)) (tail!2032 lt!465874)))))

(declare-fun b!1398930 () Bool)

(declare-fun e!893225 () Bool)

(assert (=> b!1398930 (= e!893225 (= lt!466153 call!93439))))

(declare-fun b!1398931 () Bool)

(assert (=> b!1398931 (= e!893230 (= (head!2577 lt!465874) (c!230081 (regex!2459 (rule!4222 t2!34)))))))

(declare-fun b!1398932 () Bool)

(assert (=> b!1398932 (= e!893228 e!893229)))

(declare-fun res!632288 () Bool)

(assert (=> b!1398932 (=> res!632288 e!893229)))

(assert (=> b!1398932 (= res!632288 call!93439)))

(declare-fun b!1398933 () Bool)

(declare-fun res!632291 () Bool)

(assert (=> b!1398933 (=> (not res!632291) (not e!893230))))

(assert (=> b!1398933 (= res!632291 (isEmpty!8630 (tail!2032 lt!465874)))))

(declare-fun b!1398934 () Bool)

(declare-fun e!893224 () Bool)

(assert (=> b!1398934 (= e!893225 e!893224)))

(declare-fun c!230261 () Bool)

(assert (=> b!1398934 (= c!230261 ((_ is EmptyLang!3773) (regex!2459 (rule!4222 t2!34))))))

(declare-fun d!400146 () Bool)

(assert (=> d!400146 e!893225))

(declare-fun c!230260 () Bool)

(assert (=> d!400146 (= c!230260 ((_ is EmptyExpr!3773) (regex!2459 (rule!4222 t2!34))))))

(assert (=> d!400146 (= lt!466153 e!893226)))

(declare-fun c!230262 () Bool)

(assert (=> d!400146 (= c!230262 (isEmpty!8630 lt!465874))))

(assert (=> d!400146 (validRegex!1649 (regex!2459 (rule!4222 t2!34)))))

(assert (=> d!400146 (= (matchR!1764 (regex!2459 (rule!4222 t2!34)) lt!465874) lt!466153)))

(declare-fun b!1398924 () Bool)

(assert (=> b!1398924 (= e!893224 (not lt!466153))))

(declare-fun b!1398935 () Bool)

(declare-fun res!632290 () Bool)

(assert (=> b!1398935 (=> res!632290 e!893227)))

(assert (=> b!1398935 (= res!632290 e!893230)))

(declare-fun res!632292 () Bool)

(assert (=> b!1398935 (=> (not res!632292) (not e!893230))))

(assert (=> b!1398935 (= res!632292 lt!466153)))

(declare-fun b!1398936 () Bool)

(declare-fun res!632289 () Bool)

(assert (=> b!1398936 (=> res!632289 e!893227)))

(assert (=> b!1398936 (= res!632289 (not ((_ is ElementMatch!3773) (regex!2459 (rule!4222 t2!34)))))))

(assert (=> b!1398936 (= e!893224 e!893227)))

(assert (= (and d!400146 c!230262) b!1398923))

(assert (= (and d!400146 (not c!230262)) b!1398929))

(assert (= (and d!400146 c!230260) b!1398930))

(assert (= (and d!400146 (not c!230260)) b!1398934))

(assert (= (and b!1398934 c!230261) b!1398924))

(assert (= (and b!1398934 (not c!230261)) b!1398936))

(assert (= (and b!1398936 (not res!632289)) b!1398935))

(assert (= (and b!1398935 res!632292) b!1398927))

(assert (= (and b!1398927 res!632285) b!1398933))

(assert (= (and b!1398933 res!632291) b!1398931))

(assert (= (and b!1398935 (not res!632290)) b!1398925))

(assert (= (and b!1398925 res!632286) b!1398932))

(assert (= (and b!1398932 (not res!632288)) b!1398928))

(assert (= (and b!1398928 (not res!632287)) b!1398926))

(assert (= (or b!1398930 b!1398927 b!1398932) bm!93434))

(assert (=> b!1398929 m!1574755))

(assert (=> b!1398929 m!1574755))

(declare-fun m!1575867 () Bool)

(assert (=> b!1398929 m!1575867))

(declare-fun m!1575869 () Bool)

(assert (=> b!1398929 m!1575869))

(assert (=> b!1398929 m!1575867))

(assert (=> b!1398929 m!1575869))

(declare-fun m!1575871 () Bool)

(assert (=> b!1398929 m!1575871))

(assert (=> b!1398933 m!1575869))

(assert (=> b!1398933 m!1575869))

(declare-fun m!1575873 () Bool)

(assert (=> b!1398933 m!1575873))

(assert (=> b!1398926 m!1574755))

(assert (=> b!1398928 m!1575869))

(assert (=> b!1398928 m!1575869))

(assert (=> b!1398928 m!1575873))

(declare-fun m!1575875 () Bool)

(assert (=> bm!93434 m!1575875))

(assert (=> d!400146 m!1575875))

(assert (=> d!400146 m!1575147))

(declare-fun m!1575877 () Bool)

(assert (=> b!1398923 m!1575877))

(assert (=> b!1398931 m!1574755))

(assert (=> b!1398096 d!400146))

(declare-fun b!1398937 () Bool)

(declare-fun e!893233 () Option!2722)

(declare-fun call!93440 () Option!2722)

(assert (=> b!1398937 (= e!893233 call!93440)))

(declare-fun bm!93435 () Bool)

(assert (=> bm!93435 (= call!93440 (maxPrefixOneRule!639 thiss!19762 (h!19600 rules!2550) lt!465874))))

(declare-fun b!1398938 () Bool)

(declare-fun res!632297 () Bool)

(declare-fun e!893232 () Bool)

(assert (=> b!1398938 (=> (not res!632297) (not e!893232))))

(declare-fun lt!466154 () Option!2722)

(assert (=> b!1398938 (= res!632297 (< (size!11685 (_2!7794 (get!4396 lt!466154))) (size!11685 lt!465874)))))

(declare-fun b!1398939 () Bool)

(declare-fun res!632296 () Bool)

(assert (=> b!1398939 (=> (not res!632296) (not e!893232))))

(assert (=> b!1398939 (= res!632296 (= (++!3692 (list!5529 (charsOf!1431 (_1!7794 (get!4396 lt!466154)))) (_2!7794 (get!4396 lt!466154))) lt!465874))))

(declare-fun b!1398940 () Bool)

(declare-fun res!632293 () Bool)

(assert (=> b!1398940 (=> (not res!632293) (not e!893232))))

(assert (=> b!1398940 (= res!632293 (= (list!5529 (charsOf!1431 (_1!7794 (get!4396 lt!466154)))) (originalCharacters!3321 (_1!7794 (get!4396 lt!466154)))))))

(declare-fun d!400148 () Bool)

(declare-fun e!893231 () Bool)

(assert (=> d!400148 e!893231))

(declare-fun res!632295 () Bool)

(assert (=> d!400148 (=> res!632295 e!893231)))

(assert (=> d!400148 (= res!632295 (isEmpty!8632 lt!466154))))

(assert (=> d!400148 (= lt!466154 e!893233)))

(declare-fun c!230263 () Bool)

(assert (=> d!400148 (= c!230263 (and ((_ is Cons!14199) rules!2550) ((_ is Nil!14199) (t!122754 rules!2550))))))

(declare-fun lt!466157 () Unit!20505)

(declare-fun lt!466155 () Unit!20505)

(assert (=> d!400148 (= lt!466157 lt!466155)))

(assert (=> d!400148 (isPrefix!1154 lt!465874 lt!465874)))

(assert (=> d!400148 (= lt!466155 (lemmaIsPrefixRefl!813 lt!465874 lt!465874))))

(assert (=> d!400148 (rulesValidInductive!796 thiss!19762 rules!2550)))

(assert (=> d!400148 (= (maxPrefix!1128 thiss!19762 rules!2550 lt!465874) lt!466154)))

(declare-fun b!1398941 () Bool)

(declare-fun lt!466156 () Option!2722)

(declare-fun lt!466158 () Option!2722)

(assert (=> b!1398941 (= e!893233 (ite (and ((_ is None!2721) lt!466156) ((_ is None!2721) lt!466158)) None!2721 (ite ((_ is None!2721) lt!466158) lt!466156 (ite ((_ is None!2721) lt!466156) lt!466158 (ite (>= (size!11677 (_1!7794 (v!21641 lt!466156))) (size!11677 (_1!7794 (v!21641 lt!466158)))) lt!466156 lt!466158)))))))

(assert (=> b!1398941 (= lt!466156 call!93440)))

(assert (=> b!1398941 (= lt!466158 (maxPrefix!1128 thiss!19762 (t!122754 rules!2550) lt!465874))))

(declare-fun b!1398942 () Bool)

(declare-fun res!632294 () Bool)

(assert (=> b!1398942 (=> (not res!632294) (not e!893232))))

(assert (=> b!1398942 (= res!632294 (= (value!79714 (_1!7794 (get!4396 lt!466154))) (apply!3611 (transformation!2459 (rule!4222 (_1!7794 (get!4396 lt!466154)))) (seqFromList!1657 (originalCharacters!3321 (_1!7794 (get!4396 lt!466154)))))))))

(declare-fun b!1398943 () Bool)

(declare-fun res!632299 () Bool)

(assert (=> b!1398943 (=> (not res!632299) (not e!893232))))

(assert (=> b!1398943 (= res!632299 (matchR!1764 (regex!2459 (rule!4222 (_1!7794 (get!4396 lt!466154)))) (list!5529 (charsOf!1431 (_1!7794 (get!4396 lt!466154))))))))

(declare-fun b!1398944 () Bool)

(assert (=> b!1398944 (= e!893231 e!893232)))

(declare-fun res!632298 () Bool)

(assert (=> b!1398944 (=> (not res!632298) (not e!893232))))

(assert (=> b!1398944 (= res!632298 (isDefined!2241 lt!466154))))

(declare-fun b!1398945 () Bool)

(assert (=> b!1398945 (= e!893232 (contains!2760 rules!2550 (rule!4222 (_1!7794 (get!4396 lt!466154)))))))

(assert (= (and d!400148 c!230263) b!1398937))

(assert (= (and d!400148 (not c!230263)) b!1398941))

(assert (= (or b!1398937 b!1398941) bm!93435))

(assert (= (and d!400148 (not res!632295)) b!1398944))

(assert (= (and b!1398944 res!632298) b!1398940))

(assert (= (and b!1398940 res!632293) b!1398938))

(assert (= (and b!1398938 res!632297) b!1398939))

(assert (= (and b!1398939 res!632296) b!1398942))

(assert (= (and b!1398942 res!632294) b!1398943))

(assert (= (and b!1398943 res!632299) b!1398945))

(declare-fun m!1575879 () Bool)

(assert (=> b!1398938 m!1575879))

(declare-fun m!1575881 () Bool)

(assert (=> b!1398938 m!1575881))

(declare-fun m!1575883 () Bool)

(assert (=> b!1398938 m!1575883))

(assert (=> b!1398942 m!1575879))

(declare-fun m!1575885 () Bool)

(assert (=> b!1398942 m!1575885))

(assert (=> b!1398942 m!1575885))

(declare-fun m!1575887 () Bool)

(assert (=> b!1398942 m!1575887))

(declare-fun m!1575889 () Bool)

(assert (=> bm!93435 m!1575889))

(declare-fun m!1575891 () Bool)

(assert (=> d!400148 m!1575891))

(declare-fun m!1575893 () Bool)

(assert (=> d!400148 m!1575893))

(declare-fun m!1575895 () Bool)

(assert (=> d!400148 m!1575895))

(assert (=> d!400148 m!1575647))

(assert (=> b!1398939 m!1575879))

(declare-fun m!1575897 () Bool)

(assert (=> b!1398939 m!1575897))

(assert (=> b!1398939 m!1575897))

(declare-fun m!1575899 () Bool)

(assert (=> b!1398939 m!1575899))

(assert (=> b!1398939 m!1575899))

(declare-fun m!1575901 () Bool)

(assert (=> b!1398939 m!1575901))

(assert (=> b!1398940 m!1575879))

(assert (=> b!1398940 m!1575897))

(assert (=> b!1398940 m!1575897))

(assert (=> b!1398940 m!1575899))

(assert (=> b!1398945 m!1575879))

(declare-fun m!1575903 () Bool)

(assert (=> b!1398945 m!1575903))

(declare-fun m!1575905 () Bool)

(assert (=> b!1398941 m!1575905))

(assert (=> b!1398943 m!1575879))

(assert (=> b!1398943 m!1575897))

(assert (=> b!1398943 m!1575897))

(assert (=> b!1398943 m!1575899))

(assert (=> b!1398943 m!1575899))

(declare-fun m!1575907 () Bool)

(assert (=> b!1398943 m!1575907))

(declare-fun m!1575909 () Bool)

(assert (=> b!1398944 m!1575909))

(assert (=> b!1398075 d!400148))

(declare-fun d!400150 () Bool)

(assert (=> d!400150 (= (list!5529 lt!465872) (list!5533 (c!230080 lt!465872)))))

(declare-fun bs!338109 () Bool)

(assert (= bs!338109 d!400150))

(declare-fun m!1575911 () Bool)

(assert (=> bs!338109 m!1575911))

(assert (=> b!1398075 d!400150))

(declare-fun d!400152 () Bool)

(declare-fun lt!466159 () Bool)

(assert (=> d!400152 (= lt!466159 (select (content!2104 rules!2550) lt!465860))))

(declare-fun e!893234 () Bool)

(assert (=> d!400152 (= lt!466159 e!893234)))

(declare-fun res!632300 () Bool)

(assert (=> d!400152 (=> (not res!632300) (not e!893234))))

(assert (=> d!400152 (= res!632300 ((_ is Cons!14199) rules!2550))))

(assert (=> d!400152 (= (contains!2760 rules!2550 lt!465860) lt!466159)))

(declare-fun b!1398946 () Bool)

(declare-fun e!893235 () Bool)

(assert (=> b!1398946 (= e!893234 e!893235)))

(declare-fun res!632301 () Bool)

(assert (=> b!1398946 (=> res!632301 e!893235)))

(assert (=> b!1398946 (= res!632301 (= (h!19600 rules!2550) lt!465860))))

(declare-fun b!1398947 () Bool)

(assert (=> b!1398947 (= e!893235 (contains!2760 (t!122754 rules!2550) lt!465860))))

(assert (= (and d!400152 res!632300) b!1398946))

(assert (= (and b!1398946 (not res!632301)) b!1398947))

(assert (=> d!400152 m!1575139))

(declare-fun m!1575913 () Bool)

(assert (=> d!400152 m!1575913))

(declare-fun m!1575915 () Bool)

(assert (=> b!1398947 m!1575915))

(assert (=> b!1398076 d!400152))

(declare-fun b!1398948 () Bool)

(declare-fun e!893238 () Bool)

(assert (=> b!1398948 (= e!893238 (nullable!1227 lt!465863))))

(declare-fun bm!93436 () Bool)

(declare-fun call!93441 () Bool)

(assert (=> bm!93436 (= call!93441 (isEmpty!8630 lt!465859))))

(declare-fun b!1398950 () Bool)

(declare-fun e!893239 () Bool)

(declare-fun e!893240 () Bool)

(assert (=> b!1398950 (= e!893239 e!893240)))

(declare-fun res!632303 () Bool)

(assert (=> b!1398950 (=> (not res!632303) (not e!893240))))

(declare-fun lt!466160 () Bool)

(assert (=> b!1398950 (= res!632303 (not lt!466160))))

(declare-fun b!1398951 () Bool)

(declare-fun e!893241 () Bool)

(assert (=> b!1398951 (= e!893241 (not (= (head!2577 lt!465859) (c!230081 lt!465863))))))

(declare-fun b!1398952 () Bool)

(declare-fun res!632302 () Bool)

(declare-fun e!893242 () Bool)

(assert (=> b!1398952 (=> (not res!632302) (not e!893242))))

(assert (=> b!1398952 (= res!632302 (not call!93441))))

(declare-fun b!1398953 () Bool)

(declare-fun res!632304 () Bool)

(assert (=> b!1398953 (=> res!632304 e!893241)))

(assert (=> b!1398953 (= res!632304 (not (isEmpty!8630 (tail!2032 lt!465859))))))

(declare-fun b!1398954 () Bool)

(assert (=> b!1398954 (= e!893238 (matchR!1764 (derivativeStep!985 lt!465863 (head!2577 lt!465859)) (tail!2032 lt!465859)))))

(declare-fun b!1398955 () Bool)

(declare-fun e!893237 () Bool)

(assert (=> b!1398955 (= e!893237 (= lt!466160 call!93441))))

(declare-fun b!1398956 () Bool)

(assert (=> b!1398956 (= e!893242 (= (head!2577 lt!465859) (c!230081 lt!465863)))))

(declare-fun b!1398957 () Bool)

(assert (=> b!1398957 (= e!893240 e!893241)))

(declare-fun res!632305 () Bool)

(assert (=> b!1398957 (=> res!632305 e!893241)))

(assert (=> b!1398957 (= res!632305 call!93441)))

(declare-fun b!1398958 () Bool)

(declare-fun res!632308 () Bool)

(assert (=> b!1398958 (=> (not res!632308) (not e!893242))))

(assert (=> b!1398958 (= res!632308 (isEmpty!8630 (tail!2032 lt!465859)))))

(declare-fun b!1398959 () Bool)

(declare-fun e!893236 () Bool)

(assert (=> b!1398959 (= e!893237 e!893236)))

(declare-fun c!230265 () Bool)

(assert (=> b!1398959 (= c!230265 ((_ is EmptyLang!3773) lt!465863))))

(declare-fun d!400154 () Bool)

(assert (=> d!400154 e!893237))

(declare-fun c!230264 () Bool)

(assert (=> d!400154 (= c!230264 ((_ is EmptyExpr!3773) lt!465863))))

(assert (=> d!400154 (= lt!466160 e!893238)))

(declare-fun c!230266 () Bool)

(assert (=> d!400154 (= c!230266 (isEmpty!8630 lt!465859))))

(assert (=> d!400154 (validRegex!1649 lt!465863)))

(assert (=> d!400154 (= (matchR!1764 lt!465863 lt!465859) lt!466160)))

(declare-fun b!1398949 () Bool)

(assert (=> b!1398949 (= e!893236 (not lt!466160))))

(declare-fun b!1398960 () Bool)

(declare-fun res!632307 () Bool)

(assert (=> b!1398960 (=> res!632307 e!893239)))

(assert (=> b!1398960 (= res!632307 e!893242)))

(declare-fun res!632309 () Bool)

(assert (=> b!1398960 (=> (not res!632309) (not e!893242))))

(assert (=> b!1398960 (= res!632309 lt!466160)))

(declare-fun b!1398961 () Bool)

(declare-fun res!632306 () Bool)

(assert (=> b!1398961 (=> res!632306 e!893239)))

(assert (=> b!1398961 (= res!632306 (not ((_ is ElementMatch!3773) lt!465863)))))

(assert (=> b!1398961 (= e!893236 e!893239)))

(assert (= (and d!400154 c!230266) b!1398948))

(assert (= (and d!400154 (not c!230266)) b!1398954))

(assert (= (and d!400154 c!230264) b!1398955))

(assert (= (and d!400154 (not c!230264)) b!1398959))

(assert (= (and b!1398959 c!230265) b!1398949))

(assert (= (and b!1398959 (not c!230265)) b!1398961))

(assert (= (and b!1398961 (not res!632306)) b!1398960))

(assert (= (and b!1398960 res!632309) b!1398952))

(assert (= (and b!1398952 res!632302) b!1398958))

(assert (= (and b!1398958 res!632308) b!1398956))

(assert (= (and b!1398960 (not res!632307)) b!1398950))

(assert (= (and b!1398950 res!632303) b!1398957))

(assert (= (and b!1398957 (not res!632305)) b!1398953))

(assert (= (and b!1398953 (not res!632304)) b!1398951))

(assert (= (or b!1398955 b!1398952 b!1398957) bm!93436))

(declare-fun m!1575917 () Bool)

(assert (=> b!1398954 m!1575917))

(assert (=> b!1398954 m!1575917))

(declare-fun m!1575919 () Bool)

(assert (=> b!1398954 m!1575919))

(assert (=> b!1398954 m!1575107))

(assert (=> b!1398954 m!1575919))

(assert (=> b!1398954 m!1575107))

(declare-fun m!1575921 () Bool)

(assert (=> b!1398954 m!1575921))

(assert (=> b!1398958 m!1575107))

(assert (=> b!1398958 m!1575107))

(declare-fun m!1575923 () Bool)

(assert (=> b!1398958 m!1575923))

(assert (=> b!1398951 m!1575917))

(assert (=> b!1398953 m!1575107))

(assert (=> b!1398953 m!1575107))

(assert (=> b!1398953 m!1575923))

(declare-fun m!1575925 () Bool)

(assert (=> bm!93436 m!1575925))

(assert (=> d!400154 m!1575925))

(assert (=> d!400154 m!1575783))

(declare-fun m!1575927 () Bool)

(assert (=> b!1398948 m!1575927))

(assert (=> b!1398956 m!1575917))

(assert (=> b!1398097 d!400154))

(declare-fun b!1398973 () Bool)

(declare-fun e!893245 () Bool)

(declare-fun tp!398317 () Bool)

(declare-fun tp!398318 () Bool)

(assert (=> b!1398973 (= e!893245 (and tp!398317 tp!398318))))

(declare-fun b!1398972 () Bool)

(declare-fun tp_is_empty!6803 () Bool)

(assert (=> b!1398972 (= e!893245 tp_is_empty!6803)))

(declare-fun b!1398975 () Bool)

(declare-fun tp!398316 () Bool)

(declare-fun tp!398315 () Bool)

(assert (=> b!1398975 (= e!893245 (and tp!398316 tp!398315))))

(assert (=> b!1398077 (= tp!398248 e!893245)))

(declare-fun b!1398974 () Bool)

(declare-fun tp!398314 () Bool)

(assert (=> b!1398974 (= e!893245 tp!398314)))

(assert (= (and b!1398077 ((_ is ElementMatch!3773) (regex!2459 (rule!4222 t2!34)))) b!1398972))

(assert (= (and b!1398077 ((_ is Concat!6323) (regex!2459 (rule!4222 t2!34)))) b!1398973))

(assert (= (and b!1398077 ((_ is Star!3773) (regex!2459 (rule!4222 t2!34)))) b!1398974))

(assert (= (and b!1398077 ((_ is Union!3773) (regex!2459 (rule!4222 t2!34)))) b!1398975))

(declare-fun b!1398980 () Bool)

(declare-fun e!893248 () Bool)

(declare-fun tp!398321 () Bool)

(assert (=> b!1398980 (= e!893248 (and tp_is_empty!6803 tp!398321))))

(assert (=> b!1398073 (= tp!398250 e!893248)))

(assert (= (and b!1398073 ((_ is Cons!14196) (originalCharacters!3321 t2!34))) b!1398980))

(declare-fun b!1398991 () Bool)

(declare-fun b_free!34043 () Bool)

(declare-fun b_next!34747 () Bool)

(assert (=> b!1398991 (= b_free!34043 (not b_next!34747))))

(declare-fun tp!398330 () Bool)

(declare-fun b_and!93675 () Bool)

(assert (=> b!1398991 (= tp!398330 b_and!93675)))

(declare-fun b_free!34045 () Bool)

(declare-fun b_next!34749 () Bool)

(assert (=> b!1398991 (= b_free!34045 (not b_next!34749))))

(declare-fun t!122789 () Bool)

(declare-fun tb!73045 () Bool)

(assert (=> (and b!1398991 (= (toChars!3609 (transformation!2459 (h!19600 (t!122754 rules!2550)))) (toChars!3609 (transformation!2459 (rule!4222 t1!34)))) t!122789) tb!73045))

(declare-fun result!88794 () Bool)

(assert (= result!88794 result!88774))

(assert (=> d!400100 t!122789))

(assert (=> b!1398871 t!122789))

(declare-fun t!122791 () Bool)

(declare-fun tb!73047 () Bool)

(assert (=> (and b!1398991 (= (toChars!3609 (transformation!2459 (h!19600 (t!122754 rules!2550)))) (toChars!3609 (transformation!2459 (rule!4222 t2!34)))) t!122791) tb!73047))

(declare-fun result!88796 () Bool)

(assert (= result!88796 result!88782))

(assert (=> b!1398873 t!122791))

(assert (=> d!400130 t!122791))

(declare-fun tp!398332 () Bool)

(declare-fun b_and!93677 () Bool)

(assert (=> b!1398991 (= tp!398332 (and (=> t!122789 result!88794) (=> t!122791 result!88796) b_and!93677))))

(declare-fun e!893260 () Bool)

(assert (=> b!1398991 (= e!893260 (and tp!398330 tp!398332))))

(declare-fun b!1398990 () Bool)

(declare-fun e!893259 () Bool)

(declare-fun tp!398331 () Bool)

(assert (=> b!1398990 (= e!893259 (and tp!398331 (inv!18518 (tag!2721 (h!19600 (t!122754 rules!2550)))) (inv!18521 (transformation!2459 (h!19600 (t!122754 rules!2550)))) e!893260))))

(declare-fun b!1398989 () Bool)

(declare-fun e!893257 () Bool)

(declare-fun tp!398333 () Bool)

(assert (=> b!1398989 (= e!893257 (and e!893259 tp!398333))))

(assert (=> b!1398089 (= tp!398246 e!893257)))

(assert (= b!1398990 b!1398991))

(assert (= b!1398989 b!1398990))

(assert (= (and b!1398089 ((_ is Cons!14199) (t!122754 rules!2550))) b!1398989))

(declare-fun m!1575929 () Bool)

(assert (=> b!1398990 m!1575929))

(declare-fun m!1575931 () Bool)

(assert (=> b!1398990 m!1575931))

(declare-fun b!1398993 () Bool)

(declare-fun e!893261 () Bool)

(declare-fun tp!398337 () Bool)

(declare-fun tp!398338 () Bool)

(assert (=> b!1398993 (= e!893261 (and tp!398337 tp!398338))))

(declare-fun b!1398992 () Bool)

(assert (=> b!1398992 (= e!893261 tp_is_empty!6803)))

(declare-fun b!1398995 () Bool)

(declare-fun tp!398336 () Bool)

(declare-fun tp!398335 () Bool)

(assert (=> b!1398995 (= e!893261 (and tp!398336 tp!398335))))

(assert (=> b!1398090 (= tp!398245 e!893261)))

(declare-fun b!1398994 () Bool)

(declare-fun tp!398334 () Bool)

(assert (=> b!1398994 (= e!893261 tp!398334)))

(assert (= (and b!1398090 ((_ is ElementMatch!3773) (regex!2459 (h!19600 rules!2550)))) b!1398992))

(assert (= (and b!1398090 ((_ is Concat!6323) (regex!2459 (h!19600 rules!2550)))) b!1398993))

(assert (= (and b!1398090 ((_ is Star!3773) (regex!2459 (h!19600 rules!2550)))) b!1398994))

(assert (= (and b!1398090 ((_ is Union!3773) (regex!2459 (h!19600 rules!2550)))) b!1398995))

(declare-fun b!1398997 () Bool)

(declare-fun e!893262 () Bool)

(declare-fun tp!398342 () Bool)

(declare-fun tp!398343 () Bool)

(assert (=> b!1398997 (= e!893262 (and tp!398342 tp!398343))))

(declare-fun b!1398996 () Bool)

(assert (=> b!1398996 (= e!893262 tp_is_empty!6803)))

(declare-fun b!1398999 () Bool)

(declare-fun tp!398341 () Bool)

(declare-fun tp!398340 () Bool)

(assert (=> b!1398999 (= e!893262 (and tp!398341 tp!398340))))

(assert (=> b!1398064 (= tp!398254 e!893262)))

(declare-fun b!1398998 () Bool)

(declare-fun tp!398339 () Bool)

(assert (=> b!1398998 (= e!893262 tp!398339)))

(assert (= (and b!1398064 ((_ is ElementMatch!3773) (regex!2459 (rule!4222 t1!34)))) b!1398996))

(assert (= (and b!1398064 ((_ is Concat!6323) (regex!2459 (rule!4222 t1!34)))) b!1398997))

(assert (= (and b!1398064 ((_ is Star!3773) (regex!2459 (rule!4222 t1!34)))) b!1398998))

(assert (= (and b!1398064 ((_ is Union!3773) (regex!2459 (rule!4222 t1!34)))) b!1398999))

(declare-fun b!1399000 () Bool)

(declare-fun e!893263 () Bool)

(declare-fun tp!398344 () Bool)

(assert (=> b!1399000 (= e!893263 (and tp_is_empty!6803 tp!398344))))

(assert (=> b!1398080 (= tp!398253 e!893263)))

(assert (= (and b!1398080 ((_ is Cons!14196) (originalCharacters!3321 t1!34))) b!1399000))

(declare-fun b_lambda!43889 () Bool)

(assert (= b_lambda!43879 (or (and b!1398066 b_free!34029 (= (toChars!3609 (transformation!2459 (h!19600 rules!2550))) (toChars!3609 (transformation!2459 (rule!4222 t1!34))))) (and b!1398078 b_free!34033 (= (toChars!3609 (transformation!2459 (rule!4222 t2!34))) (toChars!3609 (transformation!2459 (rule!4222 t1!34))))) (and b!1398058 b_free!34037) (and b!1398991 b_free!34045 (= (toChars!3609 (transformation!2459 (h!19600 (t!122754 rules!2550)))) (toChars!3609 (transformation!2459 (rule!4222 t1!34))))) b_lambda!43889)))

(declare-fun b_lambda!43891 () Bool)

(assert (= b_lambda!43821 (or b!1398092 b_lambda!43891)))

(declare-fun bs!338110 () Bool)

(declare-fun d!400156 () Bool)

(assert (= bs!338110 (and d!400156 b!1398092)))

(assert (=> bs!338110 (= (dynLambda!6562 lambda!60982 (h!19600 rules!2550)) (regex!2459 (h!19600 rules!2550)))))

(assert (=> b!1398392 d!400156))

(declare-fun b_lambda!43893 () Bool)

(assert (= b_lambda!43849 (or b!1398062 b_lambda!43893)))

(declare-fun bs!338111 () Bool)

(declare-fun d!400158 () Bool)

(assert (= bs!338111 (and d!400158 b!1398062)))

(declare-fun ruleValid!614 (LexerInterface!2154 Rule!4718) Bool)

(assert (=> bs!338111 (= (dynLambda!6564 lambda!60985 lt!465860) (ruleValid!614 thiss!19762 lt!465860))))

(declare-fun m!1575933 () Bool)

(assert (=> bs!338111 m!1575933))

(assert (=> d!400006 d!400158))

(declare-fun b_lambda!43895 () Bool)

(assert (= b_lambda!43841 (or b!1398092 b_lambda!43895)))

(declare-fun bs!338112 () Bool)

(declare-fun d!400160 () Bool)

(assert (= bs!338112 (and d!400160 b!1398092)))

(declare-fun res!632310 () Bool)

(declare-fun e!893264 () Bool)

(assert (=> bs!338112 (=> (not res!632310) (not e!893264))))

(assert (=> bs!338112 (= res!632310 (validRegex!1649 lt!466046))))

(assert (=> bs!338112 (= (dynLambda!6563 lambda!60983 lt!466046) e!893264)))

(declare-fun b!1399001 () Bool)

(assert (=> b!1399001 (= e!893264 (matchR!1764 lt!466046 lt!465859))))

(assert (= (and bs!338112 res!632310) b!1399001))

(declare-fun m!1575935 () Bool)

(assert (=> bs!338112 m!1575935))

(declare-fun m!1575937 () Bool)

(assert (=> b!1399001 m!1575937))

(assert (=> d!399958 d!400160))

(declare-fun b_lambda!43897 () Bool)

(assert (= b_lambda!43881 (or (and b!1398066 b_free!34029 (= (toChars!3609 (transformation!2459 (h!19600 rules!2550))) (toChars!3609 (transformation!2459 (rule!4222 t2!34))))) (and b!1398078 b_free!34033) (and b!1398058 b_free!34037 (= (toChars!3609 (transformation!2459 (rule!4222 t1!34))) (toChars!3609 (transformation!2459 (rule!4222 t2!34))))) (and b!1398991 b_free!34045 (= (toChars!3609 (transformation!2459 (h!19600 (t!122754 rules!2550)))) (toChars!3609 (transformation!2459 (rule!4222 t2!34))))) b_lambda!43897)))

(declare-fun b_lambda!43899 () Bool)

(assert (= b_lambda!43887 (or b!1398071 b_lambda!43899)))

(declare-fun bs!338113 () Bool)

(declare-fun d!400162 () Bool)

(assert (= bs!338113 (and d!400162 b!1398071)))

(assert (=> bs!338113 (= (dynLambda!6564 lambda!60984 lt!466150) (= (regex!2459 lt!466150) lt!465869))))

(assert (=> d!400142 d!400162))

(declare-fun b_lambda!43901 () Bool)

(assert (= b_lambda!43885 (or b!1398071 b_lambda!43901)))

(declare-fun bs!338114 () Bool)

(declare-fun d!400164 () Bool)

(assert (= bs!338114 (and d!400164 b!1398071)))

(assert (=> bs!338114 (= (dynLambda!6564 lambda!60984 (h!19600 rules!2550)) (= (regex!2459 (h!19600 rules!2550)) lt!465869))))

(assert (=> b!1398912 d!400164))

(declare-fun b_lambda!43903 () Bool)

(assert (= b_lambda!43883 (or (and b!1398066 b_free!34029 (= (toChars!3609 (transformation!2459 (h!19600 rules!2550))) (toChars!3609 (transformation!2459 (rule!4222 t2!34))))) (and b!1398078 b_free!34033) (and b!1398058 b_free!34037 (= (toChars!3609 (transformation!2459 (rule!4222 t1!34))) (toChars!3609 (transformation!2459 (rule!4222 t2!34))))) (and b!1398991 b_free!34045 (= (toChars!3609 (transformation!2459 (h!19600 (t!122754 rules!2550)))) (toChars!3609 (transformation!2459 (rule!4222 t2!34))))) b_lambda!43903)))

(declare-fun b_lambda!43905 () Bool)

(assert (= b_lambda!43839 (or b!1398092 b_lambda!43905)))

(declare-fun bs!338115 () Bool)

(declare-fun d!400166 () Bool)

(assert (= bs!338115 (and d!400166 b!1398092)))

(declare-fun res!632311 () Bool)

(declare-fun e!893265 () Bool)

(assert (=> bs!338115 (=> (not res!632311) (not e!893265))))

(assert (=> bs!338115 (= res!632311 (validRegex!1649 (h!19601 (map!3149 rules!2550 lambda!60982))))))

(assert (=> bs!338115 (= (dynLambda!6563 lambda!60983 (h!19601 (map!3149 rules!2550 lambda!60982))) e!893265)))

(declare-fun b!1399002 () Bool)

(assert (=> b!1399002 (= e!893265 (matchR!1764 (h!19601 (map!3149 rules!2550 lambda!60982)) lt!465859))))

(assert (= (and bs!338115 res!632311) b!1399002))

(declare-fun m!1575939 () Bool)

(assert (=> bs!338115 m!1575939))

(declare-fun m!1575941 () Bool)

(assert (=> b!1399002 m!1575941))

(assert (=> b!1398567 d!400166))

(declare-fun b_lambda!43907 () Bool)

(assert (= b_lambda!43847 (or b!1398062 b_lambda!43907)))

(declare-fun bs!338116 () Bool)

(declare-fun d!400168 () Bool)

(assert (= bs!338116 (and d!400168 b!1398062)))

(assert (=> bs!338116 (= (dynLambda!6564 lambda!60985 (rule!4222 t1!34)) (ruleValid!614 thiss!19762 (rule!4222 t1!34)))))

(declare-fun m!1575943 () Bool)

(assert (=> bs!338116 m!1575943))

(assert (=> d!400000 d!400168))

(declare-fun b_lambda!43909 () Bool)

(assert (= b_lambda!43819 (or b!1398060 b_lambda!43909)))

(declare-fun bs!338117 () Bool)

(declare-fun d!400170 () Bool)

(assert (= bs!338117 (and d!400170 b!1398060)))

(declare-fun res!632312 () Bool)

(declare-fun e!893266 () Bool)

(assert (=> bs!338117 (=> (not res!632312) (not e!893266))))

(assert (=> bs!338117 (= res!632312 (matchR!1764 lt!465863 lt!465973))))

(assert (=> bs!338117 (= (dynLambda!6560 lambda!60981 lt!465973) e!893266)))

(declare-fun b!1399003 () Bool)

(assert (=> b!1399003 (= e!893266 (isPrefix!1154 lt!465857 lt!465973))))

(assert (= (and bs!338117 res!632312) b!1399003))

(declare-fun m!1575945 () Bool)

(assert (=> bs!338117 m!1575945))

(declare-fun m!1575947 () Bool)

(assert (=> b!1399003 m!1575947))

(assert (=> d!399886 d!400170))

(declare-fun b_lambda!43911 () Bool)

(assert (= b_lambda!43845 (or b!1398062 b_lambda!43911)))

(declare-fun bs!338118 () Bool)

(declare-fun d!400172 () Bool)

(assert (= bs!338118 (and d!400172 b!1398062)))

(assert (=> bs!338118 (= (dynLambda!6564 lambda!60985 (rule!4222 t2!34)) (ruleValid!614 thiss!19762 (rule!4222 t2!34)))))

(declare-fun m!1575949 () Bool)

(assert (=> bs!338118 m!1575949))

(assert (=> d!399984 d!400172))

(declare-fun b_lambda!43913 () Bool)

(assert (= b_lambda!43877 (or (and b!1398066 b_free!34029 (= (toChars!3609 (transformation!2459 (h!19600 rules!2550))) (toChars!3609 (transformation!2459 (rule!4222 t1!34))))) (and b!1398078 b_free!34033 (= (toChars!3609 (transformation!2459 (rule!4222 t2!34))) (toChars!3609 (transformation!2459 (rule!4222 t1!34))))) (and b!1398058 b_free!34037) (and b!1398991 b_free!34045 (= (toChars!3609 (transformation!2459 (h!19600 (t!122754 rules!2550)))) (toChars!3609 (transformation!2459 (rule!4222 t1!34))))) b_lambda!43913)))

(check-sat b_and!93669 (not b!1398829) (not d!400136) (not d!400086) (not b!1398844) (not b!1398974) (not b!1398989) (not bm!93431) (not b!1398816) (not b_next!34733) (not d!400024) (not tb!73039) (not b_lambda!43907) (not b!1398510) (not b!1398928) (not b!1398528) (not b!1398776) (not b!1398634) (not bm!93408) (not b!1398999) (not d!399884) (not d!400106) b_and!93673 (not d!400110) (not b!1398566) (not b!1398933) (not b!1398784) (not b_next!34731) (not d!399900) (not d!400140) (not b!1398947) (not b!1398923) (not b!1398641) b_and!93675 (not b!1398262) (not b!1398821) (not b!1398820) (not d!399958) (not b!1398359) b_and!93611 (not d!400118) (not b!1398953) (not d!400142) (not d!400078) (not d!400082) (not d!400020) (not b!1398775) (not d!400064) (not d!399890) (not d!400150) (not d!400128) (not d!400134) (not b!1398862) (not b_lambda!43909) (not d!399858) (not b!1398941) (not d!400116) (not b!1398944) (not b!1398922) (not b!1398899) (not b!1398990) (not b!1398392) (not d!400146) (not d!400096) b_and!93619 (not b!1398817) (not d!400100) (not b!1398918) (not b!1398894) (not b_lambda!43903) (not d!400112) (not bm!93436) (not b!1398931) (not b!1398830) (not b!1398975) (not b!1398777) (not d!399966) (not d!400084) (not bm!93430) (not b_lambda!43893) (not d!400072) (not b!1398564) (not bm!93374) (not bm!93375) (not bs!338111) (not b!1398295) (not b!1398825) (not b!1398919) (not b!1398915) (not b!1398372) (not b!1398656) (not b!1398261) b_and!93677 (not b!1398994) (not b_lambda!43895) (not b!1398667) (not d!400076) (not d!399876) (not b!1398819) (not bm!93423) (not b_lambda!43897) (not b!1398639) b_and!93615 (not b!1398872) (not b!1398823) (not d!400000) (not d!400066) (not d!399888) (not b!1398631) (not b_next!34735) (not b!1398871) (not d!400006) (not bm!93432) (not b!1398658) (not bs!338118) (not bm!93434) (not b!1398948) (not b!1398875) (not b!1398995) (not b_lambda!43901) (not b!1398980) (not b!1398512) (not d!400088) (not b_next!34741) (not b!1398779) (not d!400090) (not b!1398993) (not b!1398861) (not b!1398917) (not b!1398828) (not b!1398563) (not bs!338115) (not b!1398832) (not d!400102) b_and!93671 (not b!1398873) (not b!1398874) (not tb!73033) (not d!399882) (not b!1398954) (not d!399984) (not b!1398637) (not bs!338112) (not b_next!34737) (not bm!93429) (not b!1398373) (not b!1398660) (not bm!93425) (not b!1398846) (not d!399948) (not b!1398288) (not b!1398859) (not b!1398357) (not b!1398973) (not b!1398929) (not b!1398956) (not b!1398865) (not b!1399002) (not b!1398787) (not d!400108) (not b!1398943) (not bm!93384) (not d!400070) (not d!400120) (not d!400130) (not d!399880) (not b!1398815) tp_is_empty!6803 (not b!1399003) (not d!400138) (not b!1398939) (not b!1398914) (not b_lambda!43905) (not b!1398398) (not b!1398895) (not b_lambda!43891) (not d!400104) (not b!1398679) (not b!1398951) (not bs!338116) (not d!399904) (not b_lambda!43913) (not d!399864) (not b!1398938) (not d!400010) (not b!1398926) (not d!400098) (not b!1398958) (not d!399894) (not b!1398362) (not b!1398897) (not b!1398822) (not d!400062) (not bm!93435) (not b_next!34747) (not b_next!34749) (not d!400012) (not b!1398920) (not b!1399001) (not b!1398854) (not b!1398885) (not d!399892) (not b!1399000) (not b!1398636) (not b!1398866) (not b!1398940) (not bm!93424) (not d!400152) (not b!1398864) (not d!400124) (not b!1398942) (not bs!338117) (not d!399896) (not b!1398818) (not b!1398782) (not d!400154) (not b!1398379) (not b!1398843) (not d!399844) (not b_lambda!43899) (not b!1398848) (not b_lambda!43911) (not d!399862) (not bm!93385) (not b!1398662) (not b!1398785) (not d!400148) (not d!400094) (not b!1398853) (not b_next!34739) (not b_lambda!43889) (not bm!93386) (not d!400018) (not d!400114) (not b!1398382) (not b!1398358) (not d!399898) (not d!400144) (not d!399886) (not b!1398998) (not b!1398945) (not b!1398511) (not b!1398997))
(check-sat b_and!93669 (not b_next!34733) b_and!93675 b_and!93611 b_and!93619 b_and!93677 b_and!93615 (not b_next!34735) (not b_next!34741) b_and!93671 (not b_next!34737) (not b_next!34739) b_and!93673 (not b_next!34731) (not b_next!34747) (not b_next!34749))
