; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!369004 () Bool)

(assert start!369004)

(declare-fun b!3932625 () Bool)

(declare-fun b_free!107357 () Bool)

(declare-fun b_next!108061 () Bool)

(assert (=> b!3932625 (= b_free!107357 (not b_next!108061))))

(declare-fun tp!1197022 () Bool)

(declare-fun b_and!300167 () Bool)

(assert (=> b!3932625 (= tp!1197022 b_and!300167)))

(declare-fun b_free!107359 () Bool)

(declare-fun b_next!108063 () Bool)

(assert (=> b!3932625 (= b_free!107359 (not b_next!108063))))

(declare-fun tp!1197024 () Bool)

(declare-fun b_and!300169 () Bool)

(assert (=> b!3932625 (= tp!1197024 b_and!300169)))

(declare-fun b!3932639 () Bool)

(declare-fun b_free!107361 () Bool)

(declare-fun b_next!108065 () Bool)

(assert (=> b!3932639 (= b_free!107361 (not b_next!108065))))

(declare-fun tp!1197027 () Bool)

(declare-fun b_and!300171 () Bool)

(assert (=> b!3932639 (= tp!1197027 b_and!300171)))

(declare-fun b_free!107363 () Bool)

(declare-fun b_next!108067 () Bool)

(assert (=> b!3932639 (= b_free!107363 (not b_next!108067))))

(declare-fun tp!1197021 () Bool)

(declare-fun b_and!300173 () Bool)

(assert (=> b!3932639 (= tp!1197021 b_and!300173)))

(declare-fun b!3932642 () Bool)

(declare-fun b_free!107365 () Bool)

(declare-fun b_next!108069 () Bool)

(assert (=> b!3932642 (= b_free!107365 (not b_next!108069))))

(declare-fun tp!1197020 () Bool)

(declare-fun b_and!300175 () Bool)

(assert (=> b!3932642 (= tp!1197020 b_and!300175)))

(declare-fun b_free!107367 () Bool)

(declare-fun b_next!108071 () Bool)

(assert (=> b!3932642 (= b_free!107367 (not b_next!108071))))

(declare-fun tp!1197025 () Bool)

(declare-fun b_and!300177 () Bool)

(assert (=> b!3932642 (= tp!1197025 b_and!300177)))

(declare-fun b!3932615 () Bool)

(declare-fun res!1591226 () Bool)

(declare-fun e!2432909 () Bool)

(assert (=> b!3932615 (=> (not res!1591226) (not e!2432909))))

(declare-datatypes ((C!23036 0))(
  ( (C!23037 (val!13612 Int)) )
))
(declare-datatypes ((List!41879 0))(
  ( (Nil!41755) (Cons!41755 (h!47175 C!23036) (t!325832 List!41879)) )
))
(declare-fun prefix!426 () List!41879)

(declare-fun isEmpty!24894 (List!41879) Bool)

(assert (=> b!3932615 (= res!1591226 (not (isEmpty!24894 prefix!426)))))

(declare-fun b!3932616 () Bool)

(declare-datatypes ((Unit!60197 0))(
  ( (Unit!60198) )
))
(declare-fun e!2432889 () Unit!60197)

(declare-fun Unit!60199 () Unit!60197)

(assert (=> b!3932616 (= e!2432889 Unit!60199)))

(declare-datatypes ((IArray!25467 0))(
  ( (IArray!25468 (innerList!12791 List!41879)) )
))
(declare-datatypes ((Conc!12731 0))(
  ( (Node!12731 (left!31845 Conc!12731) (right!32175 Conc!12731) (csize!25692 Int) (cheight!12942 Int)) (Leaf!19698 (xs!16037 IArray!25467) (csize!25693 Int)) (Empty!12731) )
))
(declare-datatypes ((BalanceConc!25056 0))(
  ( (BalanceConc!25057 (c!683286 Conc!12731)) )
))
(declare-datatypes ((List!41880 0))(
  ( (Nil!41756) (Cons!41756 (h!47176 (_ BitVec 16)) (t!325833 List!41880)) )
))
(declare-datatypes ((TokenValue!6750 0))(
  ( (FloatLiteralValue!13500 (text!47695 List!41880)) (TokenValueExt!6749 (__x!25717 Int)) (Broken!33750 (value!206428 List!41880)) (Object!6873) (End!6750) (Def!6750) (Underscore!6750) (Match!6750) (Else!6750) (Error!6750) (Case!6750) (If!6750) (Extends!6750) (Abstract!6750) (Class!6750) (Val!6750) (DelimiterValue!13500 (del!6810 List!41880)) (KeywordValue!6756 (value!206429 List!41880)) (CommentValue!13500 (value!206430 List!41880)) (WhitespaceValue!13500 (value!206431 List!41880)) (IndentationValue!6750 (value!206432 List!41880)) (String!47467) (Int32!6750) (Broken!33751 (value!206433 List!41880)) (Boolean!6751) (Unit!60200) (OperatorValue!6753 (op!6810 List!41880)) (IdentifierValue!13500 (value!206434 List!41880)) (IdentifierValue!13501 (value!206435 List!41880)) (WhitespaceValue!13501 (value!206436 List!41880)) (True!13500) (False!13500) (Broken!33752 (value!206437 List!41880)) (Broken!33753 (value!206438 List!41880)) (True!13501) (RightBrace!6750) (RightBracket!6750) (Colon!6750) (Null!6750) (Comma!6750) (LeftBracket!6750) (False!13501) (LeftBrace!6750) (ImaginaryLiteralValue!6750 (text!47696 List!41880)) (StringLiteralValue!20250 (value!206439 List!41880)) (EOFValue!6750 (value!206440 List!41880)) (IdentValue!6750 (value!206441 List!41880)) (DelimiterValue!13501 (value!206442 List!41880)) (DedentValue!6750 (value!206443 List!41880)) (NewLineValue!6750 (value!206444 List!41880)) (IntegerValue!20250 (value!206445 (_ BitVec 32)) (text!47697 List!41880)) (IntegerValue!20251 (value!206446 Int) (text!47698 List!41880)) (Times!6750) (Or!6750) (Equal!6750) (Minus!6750) (Broken!33754 (value!206447 List!41880)) (And!6750) (Div!6750) (LessEqual!6750) (Mod!6750) (Concat!18175) (Not!6750) (Plus!6750) (SpaceValue!6750 (value!206448 List!41880)) (IntegerValue!20252 (value!206449 Int) (text!47699 List!41880)) (StringLiteralValue!20251 (text!47700 List!41880)) (FloatLiteralValue!13501 (text!47701 List!41880)) (BytesLiteralValue!6750 (value!206450 List!41880)) (CommentValue!13501 (value!206451 List!41880)) (StringLiteralValue!20252 (value!206452 List!41880)) (ErrorTokenValue!6750 (msg!6811 List!41880)) )
))
(declare-datatypes ((Regex!11425 0))(
  ( (ElementMatch!11425 (c!683287 C!23036)) (Concat!18176 (regOne!23362 Regex!11425) (regTwo!23362 Regex!11425)) (EmptyExpr!11425) (Star!11425 (reg!11754 Regex!11425)) (EmptyLang!11425) (Union!11425 (regOne!23363 Regex!11425) (regTwo!23363 Regex!11425)) )
))
(declare-datatypes ((String!47468 0))(
  ( (String!47469 (value!206453 String)) )
))
(declare-datatypes ((TokenValueInjection!12928 0))(
  ( (TokenValueInjection!12929 (toValue!8976 Int) (toChars!8835 Int)) )
))
(declare-datatypes ((Rule!12840 0))(
  ( (Rule!12841 (regex!6520 Regex!11425) (tag!7380 String!47468) (isSeparator!6520 Bool) (transformation!6520 TokenValueInjection!12928)) )
))
(declare-datatypes ((Token!12178 0))(
  ( (Token!12179 (value!206454 TokenValue!6750) (rule!9468 Rule!12840) (size!31327 Int) (originalCharacters!7120 List!41879)) )
))
(declare-datatypes ((tuple2!41034 0))(
  ( (tuple2!41035 (_1!23651 Token!12178) (_2!23651 List!41879)) )
))
(declare-fun lt!1374080 () tuple2!41034)

(declare-fun lt!1374083 () Unit!60197)

(declare-fun suffixResult!91 () List!41879)

(declare-datatypes ((LexerInterface!6109 0))(
  ( (LexerInterfaceExt!6106 (__x!25718 Int)) (Lexer!6107) )
))
(declare-fun thiss!20629 () LexerInterface!6109)

(declare-fun suffix!1176 () List!41879)

(declare-datatypes ((List!41881 0))(
  ( (Nil!41757) (Cons!41757 (h!47177 Rule!12840) (t!325834 List!41881)) )
))
(declare-fun rules!2768 () List!41881)

(declare-datatypes ((List!41882 0))(
  ( (Nil!41758) (Cons!41758 (h!47178 Token!12178) (t!325835 List!41882)) )
))
(declare-fun suffixTokens!72 () List!41882)

(declare-fun lt!1374049 () List!41882)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!120 (LexerInterface!6109 List!41881 List!41879 List!41879 List!41882 List!41879 List!41882) Unit!60197)

(assert (=> b!3932616 (= lt!1374083 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!120 thiss!20629 rules!2768 suffix!1176 (_2!23651 lt!1374080) suffixTokens!72 suffixResult!91 lt!1374049))))

(declare-fun res!1591217 () Bool)

(declare-datatypes ((tuple2!41036 0))(
  ( (tuple2!41037 (_1!23652 List!41882) (_2!23652 List!41879)) )
))
(declare-fun call!284882 () tuple2!41036)

(declare-fun ++!10797 (List!41882 List!41882) List!41882)

(assert (=> b!3932616 (= res!1591217 (not (= call!284882 (tuple2!41037 (++!10797 lt!1374049 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2432896 () Bool)

(assert (=> b!3932616 (=> (not res!1591217) (not e!2432896))))

(assert (=> b!3932616 e!2432896))

(declare-fun b!3932617 () Bool)

(assert (=> b!3932617 (= e!2432896 false)))

(declare-fun b!3932618 () Bool)

(declare-fun e!2432916 () Bool)

(declare-fun e!2432898 () Bool)

(assert (=> b!3932618 (= e!2432916 e!2432898)))

(declare-fun res!1591241 () Bool)

(assert (=> b!3932618 (=> res!1591241 e!2432898)))

(declare-fun lt!1374064 () List!41879)

(declare-fun lt!1374045 () List!41879)

(declare-fun lt!1374089 () List!41879)

(declare-fun lt!1374060 () List!41879)

(assert (=> b!3932618 (= res!1591241 (or (not (= lt!1374064 lt!1374045)) (not (= lt!1374064 lt!1374089)) (not (= lt!1374060 lt!1374089))))))

(assert (=> b!3932618 (= lt!1374045 lt!1374089)))

(declare-fun lt!1374084 () List!41879)

(declare-fun lt!1374048 () List!41879)

(declare-fun ++!10798 (List!41879 List!41879) List!41879)

(assert (=> b!3932618 (= lt!1374089 (++!10798 lt!1374084 lt!1374048))))

(declare-fun lt!1374042 () List!41879)

(assert (=> b!3932618 (= lt!1374048 (++!10798 lt!1374042 suffix!1176))))

(declare-fun lt!1374087 () Unit!60197)

(declare-fun lemmaConcatAssociativity!2327 (List!41879 List!41879 List!41879) Unit!60197)

(assert (=> b!3932618 (= lt!1374087 (lemmaConcatAssociativity!2327 lt!1374084 lt!1374042 suffix!1176))))

(declare-fun b!3932619 () Bool)

(declare-fun e!2432887 () Bool)

(assert (=> b!3932619 (= e!2432898 e!2432887)))

(declare-fun res!1591239 () Bool)

(assert (=> b!3932619 (=> res!1591239 e!2432887)))

(declare-datatypes ((Option!8940 0))(
  ( (None!8939) (Some!8939 (v!39267 tuple2!41034)) )
))
(declare-fun lt!1374063 () Option!8940)

(assert (=> b!3932619 (= res!1591239 (not (= lt!1374048 (_2!23651 (v!39267 lt!1374063)))))))

(assert (=> b!3932619 (= (_2!23651 (v!39267 lt!1374063)) lt!1374048)))

(declare-fun lt!1374071 () Unit!60197)

(declare-fun lemmaSamePrefixThenSameSuffix!1836 (List!41879 List!41879 List!41879 List!41879 List!41879) Unit!60197)

(assert (=> b!3932619 (= lt!1374071 (lemmaSamePrefixThenSameSuffix!1836 lt!1374084 (_2!23651 (v!39267 lt!1374063)) lt!1374084 lt!1374048 lt!1374064))))

(declare-fun isPrefix!3615 (List!41879 List!41879) Bool)

(assert (=> b!3932619 (isPrefix!3615 lt!1374084 lt!1374089)))

(declare-fun lt!1374085 () Unit!60197)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2478 (List!41879 List!41879) Unit!60197)

(assert (=> b!3932619 (= lt!1374085 (lemmaConcatTwoListThenFirstIsPrefix!2478 lt!1374084 lt!1374048))))

(declare-fun b!3932620 () Bool)

(declare-fun e!2432914 () Bool)

(declare-fun e!2432927 () Bool)

(assert (=> b!3932620 (= e!2432914 e!2432927)))

(declare-fun res!1591224 () Bool)

(assert (=> b!3932620 (=> res!1591224 e!2432927)))

(declare-fun lt!1374078 () Int)

(declare-fun size!31328 (List!41879) Int)

(assert (=> b!3932620 (= res!1591224 (>= lt!1374078 (size!31328 prefix!426)))))

(assert (=> b!3932620 (isPrefix!3615 lt!1374084 prefix!426)))

(declare-fun lt!1374053 () Unit!60197)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!293 (List!41879 List!41879 List!41879) Unit!60197)

(assert (=> b!3932620 (= lt!1374053 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!293 prefix!426 lt!1374084 lt!1374064))))

(assert (=> b!3932620 (isPrefix!3615 prefix!426 lt!1374064)))

(declare-fun lt!1374073 () Unit!60197)

(assert (=> b!3932620 (= lt!1374073 (lemmaConcatTwoListThenFirstIsPrefix!2478 prefix!426 suffix!1176))))

(declare-fun b!3932621 () Bool)

(declare-fun e!2432922 () Bool)

(declare-fun e!2432906 () Bool)

(assert (=> b!3932621 (= e!2432922 e!2432906)))

(declare-fun res!1591220 () Bool)

(assert (=> b!3932621 (=> (not res!1591220) (not e!2432906))))

(get-info :version)

(assert (=> b!3932621 (= res!1591220 ((_ is Some!8939) lt!1374063))))

(declare-fun maxPrefix!3413 (LexerInterface!6109 List!41881 List!41879) Option!8940)

(assert (=> b!3932621 (= lt!1374063 (maxPrefix!3413 thiss!20629 rules!2768 lt!1374064))))

(declare-fun b!3932622 () Bool)

(declare-fun Unit!60201 () Unit!60197)

(assert (=> b!3932622 (= e!2432889 Unit!60201)))

(declare-fun lt!1374088 () Unit!60197)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!568 (List!41879 List!41879 List!41879 List!41879) Unit!60197)

(assert (=> b!3932622 (= lt!1374088 (lemmaConcatSameAndSameSizesThenSameLists!568 lt!1374084 (_2!23651 (v!39267 lt!1374063)) lt!1374084 (_2!23651 lt!1374080)))))

(assert (=> b!3932622 (= (_2!23651 (v!39267 lt!1374063)) (_2!23651 lt!1374080))))

(declare-fun lt!1374056 () Unit!60197)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!120 (LexerInterface!6109 List!41881 List!41879 List!41879 List!41882 List!41879) Unit!60197)

(assert (=> b!3932622 (= lt!1374056 (lemmaLexWithSmallerInputCannotProduceSameResults!120 thiss!20629 rules!2768 suffix!1176 (_2!23651 lt!1374080) suffixTokens!72 suffixResult!91))))

(declare-fun res!1591240 () Bool)

(declare-fun lt!1374050 () tuple2!41036)

(assert (=> b!3932622 (= res!1591240 (not (= call!284882 lt!1374050)))))

(declare-fun e!2432917 () Bool)

(assert (=> b!3932622 (=> (not res!1591240) (not e!2432917))))

(assert (=> b!3932622 e!2432917))

(declare-fun b!3932623 () Bool)

(declare-fun res!1591238 () Bool)

(assert (=> b!3932623 (=> (not res!1591238) (not e!2432909))))

(declare-fun isEmpty!24895 (List!41881) Bool)

(assert (=> b!3932623 (= res!1591238 (not (isEmpty!24895 rules!2768)))))

(declare-fun b!3932624 () Bool)

(declare-fun e!2432910 () Bool)

(declare-fun e!2432900 () Bool)

(assert (=> b!3932624 (= e!2432910 e!2432900)))

(declare-fun res!1591222 () Bool)

(assert (=> b!3932624 (=> res!1591222 e!2432900)))

(declare-fun lt!1374075 () tuple2!41036)

(declare-fun lt!1374058 () List!41882)

(declare-fun lt!1374069 () tuple2!41036)

(assert (=> b!3932624 (= res!1591222 (not (= lt!1374075 (tuple2!41037 (++!10797 lt!1374058 (_1!23652 lt!1374069)) (_2!23652 lt!1374069)))))))

(assert (=> b!3932624 (= lt!1374058 (Cons!41758 (_1!23651 (v!39267 lt!1374063)) Nil!41758))))

(declare-fun e!2432892 () Bool)

(assert (=> b!3932625 (= e!2432892 (and tp!1197022 tp!1197024))))

(declare-fun b!3932626 () Bool)

(declare-fun e!2432928 () Bool)

(assert (=> b!3932626 (= e!2432928 e!2432916)))

(declare-fun res!1591221 () Bool)

(assert (=> b!3932626 (=> res!1591221 e!2432916)))

(assert (=> b!3932626 (= res!1591221 (or (not (= lt!1374045 lt!1374064)) (not (= lt!1374045 lt!1374060))))))

(declare-fun lt!1374074 () List!41879)

(assert (=> b!3932626 (= lt!1374045 (++!10798 lt!1374074 suffix!1176))))

(declare-fun bm!284877 () Bool)

(declare-fun lexList!1877 (LexerInterface!6109 List!41881 List!41879) tuple2!41036)

(assert (=> bm!284877 (= call!284882 (lexList!1877 thiss!20629 rules!2768 (_2!23651 lt!1374080)))))

(declare-fun b!3932627 () Bool)

(declare-fun e!2432901 () Bool)

(assert (=> b!3932627 (= e!2432901 (= (size!31327 (_1!23651 (v!39267 lt!1374063))) (size!31328 (originalCharacters!7120 (_1!23651 (v!39267 lt!1374063))))))))

(declare-fun b!3932628 () Bool)

(declare-fun e!2432911 () Bool)

(declare-fun e!2432915 () Bool)

(declare-fun tp!1197033 () Bool)

(assert (=> b!3932628 (= e!2432911 (and e!2432915 tp!1197033))))

(declare-fun e!2432895 () Bool)

(declare-fun prefixTokens!80 () List!41882)

(declare-fun tp!1197028 () Bool)

(declare-fun b!3932629 () Bool)

(declare-fun inv!55950 (String!47468) Bool)

(declare-fun inv!55953 (TokenValueInjection!12928) Bool)

(assert (=> b!3932629 (= e!2432895 (and tp!1197028 (inv!55950 (tag!7380 (rule!9468 (h!47178 prefixTokens!80)))) (inv!55953 (transformation!6520 (rule!9468 (h!47178 prefixTokens!80)))) e!2432892))))

(declare-fun e!2432905 () Bool)

(declare-fun b!3932630 () Bool)

(declare-fun tp!1197031 () Bool)

(declare-fun e!2432891 () Bool)

(assert (=> b!3932630 (= e!2432891 (and tp!1197031 (inv!55950 (tag!7380 (rule!9468 (h!47178 suffixTokens!72)))) (inv!55953 (transformation!6520 (rule!9468 (h!47178 suffixTokens!72)))) e!2432905))))

(declare-fun b!3932631 () Bool)

(declare-fun res!1591223 () Bool)

(assert (=> b!3932631 (=> res!1591223 e!2432914)))

(declare-fun head!8349 (List!41882) Token!12178)

(assert (=> b!3932631 (= res!1591223 (not (= (head!8349 prefixTokens!80) (_1!23651 (v!39267 lt!1374063)))))))

(declare-fun b!3932633 () Bool)

(assert (=> b!3932633 (= e!2432906 (not e!2432910))))

(declare-fun res!1591218 () Bool)

(assert (=> b!3932633 (=> res!1591218 e!2432910)))

(assert (=> b!3932633 (= res!1591218 (not (= lt!1374060 lt!1374064)))))

(assert (=> b!3932633 (= lt!1374069 (lexList!1877 thiss!20629 rules!2768 (_2!23651 (v!39267 lt!1374063))))))

(declare-fun lt!1374082 () TokenValue!6750)

(declare-fun lt!1374067 () List!41879)

(assert (=> b!3932633 (and (= (size!31327 (_1!23651 (v!39267 lt!1374063))) lt!1374078) (= (originalCharacters!7120 (_1!23651 (v!39267 lt!1374063))) lt!1374084) (= (tuple2!41035 (_1!23651 (v!39267 lt!1374063)) (_2!23651 (v!39267 lt!1374063))) (tuple2!41035 (Token!12179 lt!1374082 (rule!9468 (_1!23651 (v!39267 lt!1374063))) lt!1374078 lt!1374084) lt!1374067)))))

(assert (=> b!3932633 (= lt!1374078 (size!31328 lt!1374084))))

(assert (=> b!3932633 e!2432901))

(declare-fun res!1591232 () Bool)

(assert (=> b!3932633 (=> (not res!1591232) (not e!2432901))))

(assert (=> b!3932633 (= res!1591232 (= (value!206454 (_1!23651 (v!39267 lt!1374063))) lt!1374082))))

(declare-fun apply!9759 (TokenValueInjection!12928 BalanceConc!25056) TokenValue!6750)

(declare-fun seqFromList!4787 (List!41879) BalanceConc!25056)

(assert (=> b!3932633 (= lt!1374082 (apply!9759 (transformation!6520 (rule!9468 (_1!23651 (v!39267 lt!1374063)))) (seqFromList!4787 lt!1374084)))))

(assert (=> b!3932633 (= (_2!23651 (v!39267 lt!1374063)) lt!1374067)))

(declare-fun lt!1374077 () Unit!60197)

(assert (=> b!3932633 (= lt!1374077 (lemmaSamePrefixThenSameSuffix!1836 lt!1374084 (_2!23651 (v!39267 lt!1374063)) lt!1374084 lt!1374067 lt!1374064))))

(declare-fun getSuffix!2070 (List!41879 List!41879) List!41879)

(assert (=> b!3932633 (= lt!1374067 (getSuffix!2070 lt!1374064 lt!1374084))))

(assert (=> b!3932633 (isPrefix!3615 lt!1374084 lt!1374060)))

(assert (=> b!3932633 (= lt!1374060 (++!10798 lt!1374084 (_2!23651 (v!39267 lt!1374063))))))

(declare-fun lt!1374047 () Unit!60197)

(assert (=> b!3932633 (= lt!1374047 (lemmaConcatTwoListThenFirstIsPrefix!2478 lt!1374084 (_2!23651 (v!39267 lt!1374063))))))

(declare-fun list!15515 (BalanceConc!25056) List!41879)

(declare-fun charsOf!4344 (Token!12178) BalanceConc!25056)

(assert (=> b!3932633 (= lt!1374084 (list!15515 (charsOf!4344 (_1!23651 (v!39267 lt!1374063)))))))

(declare-fun ruleValid!2468 (LexerInterface!6109 Rule!12840) Bool)

(assert (=> b!3932633 (ruleValid!2468 thiss!20629 (rule!9468 (_1!23651 (v!39267 lt!1374063))))))

(declare-fun lt!1374066 () Unit!60197)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1548 (LexerInterface!6109 Rule!12840 List!41881) Unit!60197)

(assert (=> b!3932633 (= lt!1374066 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1548 thiss!20629 (rule!9468 (_1!23651 (v!39267 lt!1374063))) rules!2768))))

(declare-fun lt!1374072 () Unit!60197)

(declare-fun lemmaCharactersSize!1177 (Token!12178) Unit!60197)

(assert (=> b!3932633 (= lt!1374072 (lemmaCharactersSize!1177 (_1!23651 (v!39267 lt!1374063))))))

(declare-fun b!3932634 () Bool)

(declare-fun e!2432925 () Unit!60197)

(declare-fun Unit!60202 () Unit!60197)

(assert (=> b!3932634 (= e!2432925 Unit!60202)))

(declare-fun res!1591219 () Bool)

(assert (=> start!369004 (=> (not res!1591219) (not e!2432909))))

(assert (=> start!369004 (= res!1591219 ((_ is Lexer!6107) thiss!20629))))

(assert (=> start!369004 e!2432909))

(declare-fun e!2432897 () Bool)

(assert (=> start!369004 e!2432897))

(assert (=> start!369004 true))

(declare-fun e!2432923 () Bool)

(assert (=> start!369004 e!2432923))

(assert (=> start!369004 e!2432911))

(declare-fun e!2432902 () Bool)

(assert (=> start!369004 e!2432902))

(declare-fun e!2432913 () Bool)

(assert (=> start!369004 e!2432913))

(declare-fun e!2432921 () Bool)

(assert (=> start!369004 e!2432921))

(declare-fun b!3932632 () Bool)

(declare-fun e!2432894 () Bool)

(assert (=> b!3932632 (= e!2432887 e!2432894)))

(declare-fun res!1591243 () Bool)

(assert (=> b!3932632 (=> res!1591243 e!2432894)))

(declare-fun lt!1374086 () tuple2!41036)

(assert (=> b!3932632 (= res!1591243 (not (= lt!1374069 lt!1374086)))))

(declare-fun lt!1374040 () List!41882)

(assert (=> b!3932632 (= lt!1374086 (tuple2!41037 lt!1374040 suffixResult!91))))

(declare-fun lt!1374055 () List!41882)

(assert (=> b!3932632 (= lt!1374040 (++!10797 lt!1374055 suffixTokens!72))))

(declare-fun tail!6075 (List!41882) List!41882)

(assert (=> b!3932632 (= lt!1374055 (tail!6075 prefixTokens!80))))

(assert (=> b!3932632 (isPrefix!3615 lt!1374042 lt!1374048)))

(declare-fun lt!1374046 () Unit!60197)

(assert (=> b!3932632 (= lt!1374046 (lemmaConcatTwoListThenFirstIsPrefix!2478 lt!1374042 suffix!1176))))

(declare-fun e!2432893 () Bool)

(declare-fun b!3932635 () Bool)

(declare-fun tp!1197019 () Bool)

(declare-fun inv!55954 (Token!12178) Bool)

(assert (=> b!3932635 (= e!2432902 (and (inv!55954 (h!47178 prefixTokens!80)) e!2432893 tp!1197019))))

(declare-fun b!3932636 () Bool)

(declare-fun res!1591236 () Bool)

(assert (=> b!3932636 (=> (not res!1591236) (not e!2432909))))

(declare-fun isEmpty!24896 (List!41882) Bool)

(assert (=> b!3932636 (= res!1591236 (not (isEmpty!24896 prefixTokens!80)))))

(declare-fun b!3932637 () Bool)

(declare-fun tp_is_empty!19821 () Bool)

(declare-fun tp!1197030 () Bool)

(assert (=> b!3932637 (= e!2432921 (and tp_is_empty!19821 tp!1197030))))

(declare-fun b!3932638 () Bool)

(declare-fun e!2432926 () Bool)

(assert (=> b!3932638 (= e!2432894 e!2432926)))

(declare-fun res!1591244 () Bool)

(assert (=> b!3932638 (=> res!1591244 e!2432926)))

(declare-fun lt!1374076 () List!41882)

(declare-fun lt!1374062 () List!41882)

(assert (=> b!3932638 (= res!1591244 (not (= lt!1374076 lt!1374062)))))

(assert (=> b!3932638 (= lt!1374076 (++!10797 lt!1374058 lt!1374040))))

(assert (=> b!3932638 (= lt!1374076 (++!10797 (++!10797 lt!1374058 lt!1374055) suffixTokens!72))))

(declare-fun lt!1374081 () Unit!60197)

(declare-fun lemmaConcatAssociativity!2328 (List!41882 List!41882 List!41882) Unit!60197)

(assert (=> b!3932638 (= lt!1374081 (lemmaConcatAssociativity!2328 lt!1374058 lt!1374055 suffixTokens!72))))

(declare-fun lt!1374065 () Unit!60197)

(declare-fun e!2432907 () Unit!60197)

(assert (=> b!3932638 (= lt!1374065 e!2432907)))

(declare-fun c!683282 () Bool)

(assert (=> b!3932638 (= c!683282 (isEmpty!24896 lt!1374055))))

(declare-fun e!2432920 () Bool)

(assert (=> b!3932639 (= e!2432920 (and tp!1197027 tp!1197021))))

(declare-fun b!3932640 () Bool)

(declare-fun e!2432899 () Bool)

(assert (=> b!3932640 (= e!2432909 e!2432899)))

(declare-fun res!1591227 () Bool)

(assert (=> b!3932640 (=> (not res!1591227) (not e!2432899))))

(assert (=> b!3932640 (= res!1591227 (= lt!1374075 (tuple2!41037 lt!1374062 suffixResult!91)))))

(assert (=> b!3932640 (= lt!1374075 (lexList!1877 thiss!20629 rules!2768 lt!1374064))))

(assert (=> b!3932640 (= lt!1374062 (++!10797 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3932640 (= lt!1374064 (++!10798 prefix!426 suffix!1176))))

(declare-fun b!3932641 () Bool)

(declare-fun Unit!60203 () Unit!60197)

(assert (=> b!3932641 (= e!2432907 Unit!60203)))

(declare-fun lt!1374052 () Unit!60197)

(assert (=> b!3932641 (= lt!1374052 (lemmaLexWithSmallerInputCannotProduceSameResults!120 thiss!20629 rules!2768 (_2!23651 (v!39267 lt!1374063)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> b!3932641 false))

(assert (=> b!3932642 (= e!2432905 (and tp!1197020 tp!1197025))))

(declare-fun e!2432903 () Bool)

(declare-fun b!3932643 () Bool)

(assert (=> b!3932643 (= e!2432903 (= (lexList!1877 thiss!20629 rules!2768 prefix!426) (tuple2!41037 prefixTokens!80 Nil!41755)))))

(declare-fun b!3932644 () Bool)

(declare-fun tp!1197034 () Bool)

(assert (=> b!3932644 (= e!2432923 (and tp_is_empty!19821 tp!1197034))))

(declare-fun b!3932645 () Bool)

(declare-fun Unit!60204 () Unit!60197)

(assert (=> b!3932645 (= e!2432925 Unit!60204)))

(declare-fun lt!1374059 () Unit!60197)

(assert (=> b!3932645 (= lt!1374059 (lemmaConcatTwoListThenFirstIsPrefix!2478 prefix!426 suffix!1176))))

(assert (=> b!3932645 (isPrefix!3615 prefix!426 lt!1374064)))

(declare-fun lt!1374043 () Unit!60197)

(declare-fun lemmaIsPrefixSameLengthThenSameList!811 (List!41879 List!41879 List!41879) Unit!60197)

(assert (=> b!3932645 (= lt!1374043 (lemmaIsPrefixSameLengthThenSameList!811 lt!1374084 prefix!426 lt!1374064))))

(assert (=> b!3932645 (= lt!1374084 prefix!426)))

(declare-fun lt!1374051 () Unit!60197)

(assert (=> b!3932645 (= lt!1374051 (lemmaSamePrefixThenSameSuffix!1836 lt!1374084 (_2!23651 (v!39267 lt!1374063)) prefix!426 suffix!1176 lt!1374064))))

(assert (=> b!3932645 false))

(declare-fun b!3932646 () Bool)

(declare-fun tp!1197026 () Bool)

(declare-fun inv!21 (TokenValue!6750) Bool)

(assert (=> b!3932646 (= e!2432893 (and (inv!21 (value!206454 (h!47178 prefixTokens!80))) e!2432895 tp!1197026))))

(declare-fun b!3932647 () Bool)

(declare-fun res!1591229 () Bool)

(assert (=> b!3932647 (=> res!1591229 e!2432926)))

(assert (=> b!3932647 (= res!1591229 (not (= (lexList!1877 thiss!20629 rules!2768 lt!1374048) lt!1374086)))))

(declare-fun b!3932648 () Bool)

(declare-fun e!2432924 () Unit!60197)

(declare-fun Unit!60205 () Unit!60197)

(assert (=> b!3932648 (= e!2432924 Unit!60205)))

(declare-fun lt!1374070 () Int)

(assert (=> b!3932648 (= lt!1374070 (size!31328 lt!1374064))))

(declare-fun lt!1374041 () Unit!60197)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1351 (LexerInterface!6109 List!41881 List!41879 List!41879 List!41879 Rule!12840) Unit!60197)

(assert (=> b!3932648 (= lt!1374041 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1351 thiss!20629 rules!2768 lt!1374084 lt!1374064 (_2!23651 (v!39267 lt!1374063)) (rule!9468 (_1!23651 (v!39267 lt!1374063)))))))

(declare-fun maxPrefixOneRule!2483 (LexerInterface!6109 Rule!12840 List!41879) Option!8940)

(assert (=> b!3932648 (= (maxPrefixOneRule!2483 thiss!20629 (rule!9468 (_1!23651 (v!39267 lt!1374063))) lt!1374064) (Some!8939 (tuple2!41035 (Token!12179 lt!1374082 (rule!9468 (_1!23651 (v!39267 lt!1374063))) lt!1374078 lt!1374084) (_2!23651 (v!39267 lt!1374063)))))))

(declare-fun get!13800 (Option!8940) tuple2!41034)

(assert (=> b!3932648 (= lt!1374080 (get!13800 lt!1374063))))

(declare-fun c!683285 () Bool)

(declare-fun lt!1374079 () Int)

(assert (=> b!3932648 (= c!683285 (< (size!31328 (_2!23651 lt!1374080)) lt!1374079))))

(declare-fun lt!1374054 () Unit!60197)

(declare-fun e!2432908 () Unit!60197)

(assert (=> b!3932648 (= lt!1374054 e!2432908)))

(assert (=> b!3932648 false))

(declare-fun b!3932649 () Bool)

(declare-fun res!1591231 () Bool)

(assert (=> b!3932649 (=> res!1591231 e!2432900)))

(assert (=> b!3932649 (= res!1591231 (or (not (= lt!1374069 (tuple2!41037 (_1!23652 lt!1374069) (_2!23652 lt!1374069)))) (= (_2!23651 (v!39267 lt!1374063)) suffix!1176)))))

(declare-fun b!3932650 () Bool)

(declare-fun tp!1197018 () Bool)

(assert (=> b!3932650 (= e!2432915 (and tp!1197018 (inv!55950 (tag!7380 (h!47177 rules!2768))) (inv!55953 (transformation!6520 (h!47177 rules!2768))) e!2432920))))

(declare-fun b!3932651 () Bool)

(declare-fun Unit!60206 () Unit!60197)

(assert (=> b!3932651 (= e!2432907 Unit!60206)))

(declare-fun b!3932652 () Bool)

(declare-fun res!1591228 () Bool)

(assert (=> b!3932652 (=> res!1591228 e!2432903)))

(assert (=> b!3932652 (= res!1591228 (not (isEmpty!24894 suffixResult!91)))))

(declare-fun b!3932653 () Bool)

(declare-fun tp!1197023 () Bool)

(declare-fun e!2432912 () Bool)

(assert (=> b!3932653 (= e!2432912 (and (inv!21 (value!206454 (h!47178 suffixTokens!72))) e!2432891 tp!1197023))))

(declare-fun b!3932654 () Bool)

(assert (=> b!3932654 (= e!2432917 false)))

(declare-fun b!3932655 () Bool)

(assert (=> b!3932655 (= e!2432926 e!2432903)))

(declare-fun res!1591233 () Bool)

(assert (=> b!3932655 (=> res!1591233 e!2432903)))

(assert (=> b!3932655 (= res!1591233 (not (= lt!1374063 (Some!8939 (tuple2!41035 (_1!23651 (v!39267 lt!1374063)) (_2!23651 (v!39267 lt!1374063)))))))))

(assert (=> b!3932655 (= (lexList!1877 thiss!20629 rules!2768 lt!1374042) (tuple2!41037 lt!1374055 Nil!41755))))

(declare-fun lt!1374044 () Unit!60197)

(declare-fun lemmaLexThenLexPrefix!605 (LexerInterface!6109 List!41881 List!41879 List!41879 List!41882 List!41882 List!41879) Unit!60197)

(assert (=> b!3932655 (= lt!1374044 (lemmaLexThenLexPrefix!605 thiss!20629 rules!2768 lt!1374042 suffix!1176 lt!1374055 suffixTokens!72 suffixResult!91))))

(declare-fun b!3932656 () Bool)

(declare-fun res!1591230 () Bool)

(assert (=> b!3932656 (=> res!1591230 e!2432903)))

(assert (=> b!3932656 (= res!1591230 (not (isEmpty!24894 suffix!1176)))))

(declare-fun tp!1197032 () Bool)

(declare-fun b!3932657 () Bool)

(assert (=> b!3932657 (= e!2432913 (and (inv!55954 (h!47178 suffixTokens!72)) e!2432912 tp!1197032))))

(declare-fun b!3932658 () Bool)

(declare-fun res!1591225 () Bool)

(assert (=> b!3932658 (=> (not res!1591225) (not e!2432909))))

(declare-fun rulesInvariant!5452 (LexerInterface!6109 List!41881) Bool)

(assert (=> b!3932658 (= res!1591225 (rulesInvariant!5452 thiss!20629 rules!2768))))

(declare-fun b!3932659 () Bool)

(declare-fun tp!1197029 () Bool)

(assert (=> b!3932659 (= e!2432897 (and tp_is_empty!19821 tp!1197029))))

(declare-fun b!3932660 () Bool)

(declare-fun c!683284 () Bool)

(assert (=> b!3932660 (= c!683284 (isEmpty!24896 lt!1374049))))

(assert (=> b!3932660 (= lt!1374049 (tail!6075 prefixTokens!80))))

(assert (=> b!3932660 (= e!2432908 e!2432889)))

(declare-fun b!3932661 () Bool)

(assert (=> b!3932661 (= e!2432927 e!2432928)))

(declare-fun res!1591235 () Bool)

(assert (=> b!3932661 (=> res!1591235 e!2432928)))

(assert (=> b!3932661 (= res!1591235 (not (= lt!1374074 prefix!426)))))

(assert (=> b!3932661 (= lt!1374074 (++!10798 lt!1374084 lt!1374042))))

(assert (=> b!3932661 (= lt!1374042 (getSuffix!2070 prefix!426 lt!1374084))))

(declare-fun b!3932662 () Bool)

(declare-fun Unit!60207 () Unit!60197)

(assert (=> b!3932662 (= e!2432908 Unit!60207)))

(declare-fun b!3932663 () Bool)

(declare-fun res!1591237 () Bool)

(assert (=> b!3932663 (=> res!1591237 e!2432903)))

(assert (=> b!3932663 (= res!1591237 (not (isEmpty!24896 suffixTokens!72)))))

(declare-fun b!3932664 () Bool)

(assert (=> b!3932664 (= e!2432900 e!2432914)))

(declare-fun res!1591234 () Bool)

(assert (=> b!3932664 (=> res!1591234 e!2432914)))

(declare-fun lt!1374061 () Int)

(assert (=> b!3932664 (= res!1591234 (<= lt!1374061 lt!1374079))))

(declare-fun lt!1374068 () Unit!60197)

(assert (=> b!3932664 (= lt!1374068 e!2432925)))

(declare-fun c!683283 () Bool)

(assert (=> b!3932664 (= c!683283 (= lt!1374061 lt!1374079))))

(declare-fun lt!1374057 () Unit!60197)

(assert (=> b!3932664 (= lt!1374057 e!2432924)))

(declare-fun c!683281 () Bool)

(assert (=> b!3932664 (= c!683281 (< lt!1374061 lt!1374079))))

(assert (=> b!3932664 (= lt!1374079 (size!31328 suffix!1176))))

(assert (=> b!3932664 (= lt!1374061 (size!31328 (_2!23651 (v!39267 lt!1374063))))))

(declare-fun b!3932665 () Bool)

(declare-fun Unit!60208 () Unit!60197)

(assert (=> b!3932665 (= e!2432924 Unit!60208)))

(declare-fun b!3932666 () Bool)

(assert (=> b!3932666 (= e!2432899 e!2432922)))

(declare-fun res!1591242 () Bool)

(assert (=> b!3932666 (=> (not res!1591242) (not e!2432922))))

(assert (=> b!3932666 (= res!1591242 (= (lexList!1877 thiss!20629 rules!2768 suffix!1176) lt!1374050))))

(assert (=> b!3932666 (= lt!1374050 (tuple2!41037 suffixTokens!72 suffixResult!91))))

(assert (= (and start!369004 res!1591219) b!3932623))

(assert (= (and b!3932623 res!1591238) b!3932658))

(assert (= (and b!3932658 res!1591225) b!3932636))

(assert (= (and b!3932636 res!1591236) b!3932615))

(assert (= (and b!3932615 res!1591226) b!3932640))

(assert (= (and b!3932640 res!1591227) b!3932666))

(assert (= (and b!3932666 res!1591242) b!3932621))

(assert (= (and b!3932621 res!1591220) b!3932633))

(assert (= (and b!3932633 res!1591232) b!3932627))

(assert (= (and b!3932633 (not res!1591218)) b!3932624))

(assert (= (and b!3932624 (not res!1591222)) b!3932649))

(assert (= (and b!3932649 (not res!1591231)) b!3932664))

(assert (= (and b!3932664 c!683281) b!3932648))

(assert (= (and b!3932664 (not c!683281)) b!3932665))

(assert (= (and b!3932648 c!683285) b!3932660))

(assert (= (and b!3932648 (not c!683285)) b!3932662))

(assert (= (and b!3932660 c!683284) b!3932622))

(assert (= (and b!3932660 (not c!683284)) b!3932616))

(assert (= (and b!3932622 res!1591240) b!3932654))

(assert (= (and b!3932616 res!1591217) b!3932617))

(assert (= (or b!3932622 b!3932616) bm!284877))

(assert (= (and b!3932664 c!683283) b!3932645))

(assert (= (and b!3932664 (not c!683283)) b!3932634))

(assert (= (and b!3932664 (not res!1591234)) b!3932631))

(assert (= (and b!3932631 (not res!1591223)) b!3932620))

(assert (= (and b!3932620 (not res!1591224)) b!3932661))

(assert (= (and b!3932661 (not res!1591235)) b!3932626))

(assert (= (and b!3932626 (not res!1591221)) b!3932618))

(assert (= (and b!3932618 (not res!1591241)) b!3932619))

(assert (= (and b!3932619 (not res!1591239)) b!3932632))

(assert (= (and b!3932632 (not res!1591243)) b!3932638))

(assert (= (and b!3932638 c!683282) b!3932641))

(assert (= (and b!3932638 (not c!683282)) b!3932651))

(assert (= (and b!3932638 (not res!1591244)) b!3932647))

(assert (= (and b!3932647 (not res!1591229)) b!3932655))

(assert (= (and b!3932655 (not res!1591233)) b!3932656))

(assert (= (and b!3932656 (not res!1591230)) b!3932663))

(assert (= (and b!3932663 (not res!1591237)) b!3932652))

(assert (= (and b!3932652 (not res!1591228)) b!3932643))

(assert (= (and start!369004 ((_ is Cons!41755) suffixResult!91)) b!3932659))

(assert (= (and start!369004 ((_ is Cons!41755) suffix!1176)) b!3932644))

(assert (= b!3932650 b!3932639))

(assert (= b!3932628 b!3932650))

(assert (= (and start!369004 ((_ is Cons!41757) rules!2768)) b!3932628))

(assert (= b!3932629 b!3932625))

(assert (= b!3932646 b!3932629))

(assert (= b!3932635 b!3932646))

(assert (= (and start!369004 ((_ is Cons!41758) prefixTokens!80)) b!3932635))

(assert (= b!3932630 b!3932642))

(assert (= b!3932653 b!3932630))

(assert (= b!3932657 b!3932653))

(assert (= (and start!369004 ((_ is Cons!41758) suffixTokens!72)) b!3932657))

(assert (= (and start!369004 ((_ is Cons!41755) prefix!426)) b!3932637))

(declare-fun m!4498861 () Bool)

(assert (=> b!3932636 m!4498861))

(declare-fun m!4498863 () Bool)

(assert (=> b!3932650 m!4498863))

(declare-fun m!4498865 () Bool)

(assert (=> b!3932650 m!4498865))

(declare-fun m!4498867 () Bool)

(assert (=> b!3932618 m!4498867))

(declare-fun m!4498869 () Bool)

(assert (=> b!3932618 m!4498869))

(declare-fun m!4498871 () Bool)

(assert (=> b!3932618 m!4498871))

(declare-fun m!4498873 () Bool)

(assert (=> b!3932640 m!4498873))

(declare-fun m!4498875 () Bool)

(assert (=> b!3932640 m!4498875))

(declare-fun m!4498877 () Bool)

(assert (=> b!3932640 m!4498877))

(declare-fun m!4498879 () Bool)

(assert (=> b!3932664 m!4498879))

(declare-fun m!4498881 () Bool)

(assert (=> b!3932664 m!4498881))

(declare-fun m!4498883 () Bool)

(assert (=> b!3932638 m!4498883))

(declare-fun m!4498885 () Bool)

(assert (=> b!3932638 m!4498885))

(declare-fun m!4498887 () Bool)

(assert (=> b!3932638 m!4498887))

(declare-fun m!4498889 () Bool)

(assert (=> b!3932638 m!4498889))

(assert (=> b!3932638 m!4498883))

(declare-fun m!4498891 () Bool)

(assert (=> b!3932638 m!4498891))

(declare-fun m!4498893 () Bool)

(assert (=> b!3932641 m!4498893))

(declare-fun m!4498895 () Bool)

(assert (=> b!3932623 m!4498895))

(declare-fun m!4498897 () Bool)

(assert (=> b!3932646 m!4498897))

(declare-fun m!4498899 () Bool)

(assert (=> b!3932632 m!4498899))

(declare-fun m!4498901 () Bool)

(assert (=> b!3932632 m!4498901))

(declare-fun m!4498903 () Bool)

(assert (=> b!3932632 m!4498903))

(declare-fun m!4498905 () Bool)

(assert (=> b!3932632 m!4498905))

(declare-fun m!4498907 () Bool)

(assert (=> b!3932615 m!4498907))

(declare-fun m!4498909 () Bool)

(assert (=> b!3932645 m!4498909))

(declare-fun m!4498911 () Bool)

(assert (=> b!3932645 m!4498911))

(declare-fun m!4498913 () Bool)

(assert (=> b!3932645 m!4498913))

(declare-fun m!4498915 () Bool)

(assert (=> b!3932645 m!4498915))

(declare-fun m!4498917 () Bool)

(assert (=> b!3932643 m!4498917))

(declare-fun m!4498919 () Bool)

(assert (=> b!3932660 m!4498919))

(assert (=> b!3932660 m!4498901))

(declare-fun m!4498921 () Bool)

(assert (=> b!3932620 m!4498921))

(assert (=> b!3932620 m!4498909))

(declare-fun m!4498923 () Bool)

(assert (=> b!3932620 m!4498923))

(assert (=> b!3932620 m!4498911))

(declare-fun m!4498925 () Bool)

(assert (=> b!3932620 m!4498925))

(declare-fun m!4498927 () Bool)

(assert (=> b!3932656 m!4498927))

(declare-fun m!4498929 () Bool)

(assert (=> b!3932630 m!4498929))

(declare-fun m!4498931 () Bool)

(assert (=> b!3932630 m!4498931))

(declare-fun m!4498933 () Bool)

(assert (=> b!3932626 m!4498933))

(declare-fun m!4498935 () Bool)

(assert (=> b!3932621 m!4498935))

(declare-fun m!4498937 () Bool)

(assert (=> b!3932627 m!4498937))

(declare-fun m!4498939 () Bool)

(assert (=> b!3932616 m!4498939))

(declare-fun m!4498941 () Bool)

(assert (=> b!3932616 m!4498941))

(declare-fun m!4498943 () Bool)

(assert (=> b!3932624 m!4498943))

(declare-fun m!4498945 () Bool)

(assert (=> b!3932629 m!4498945))

(declare-fun m!4498947 () Bool)

(assert (=> b!3932629 m!4498947))

(declare-fun m!4498949 () Bool)

(assert (=> bm!284877 m!4498949))

(declare-fun m!4498951 () Bool)

(assert (=> b!3932661 m!4498951))

(declare-fun m!4498953 () Bool)

(assert (=> b!3932661 m!4498953))

(declare-fun m!4498955 () Bool)

(assert (=> b!3932635 m!4498955))

(declare-fun m!4498957 () Bool)

(assert (=> b!3932633 m!4498957))

(declare-fun m!4498959 () Bool)

(assert (=> b!3932633 m!4498959))

(declare-fun m!4498961 () Bool)

(assert (=> b!3932633 m!4498961))

(declare-fun m!4498963 () Bool)

(assert (=> b!3932633 m!4498963))

(declare-fun m!4498965 () Bool)

(assert (=> b!3932633 m!4498965))

(declare-fun m!4498967 () Bool)

(assert (=> b!3932633 m!4498967))

(assert (=> b!3932633 m!4498961))

(declare-fun m!4498969 () Bool)

(assert (=> b!3932633 m!4498969))

(declare-fun m!4498971 () Bool)

(assert (=> b!3932633 m!4498971))

(declare-fun m!4498973 () Bool)

(assert (=> b!3932633 m!4498973))

(declare-fun m!4498975 () Bool)

(assert (=> b!3932633 m!4498975))

(declare-fun m!4498977 () Bool)

(assert (=> b!3932633 m!4498977))

(declare-fun m!4498979 () Bool)

(assert (=> b!3932633 m!4498979))

(assert (=> b!3932633 m!4498977))

(declare-fun m!4498981 () Bool)

(assert (=> b!3932633 m!4498981))

(declare-fun m!4498983 () Bool)

(assert (=> b!3932633 m!4498983))

(declare-fun m!4498985 () Bool)

(assert (=> b!3932653 m!4498985))

(declare-fun m!4498987 () Bool)

(assert (=> b!3932652 m!4498987))

(declare-fun m!4498989 () Bool)

(assert (=> b!3932631 m!4498989))

(declare-fun m!4498991 () Bool)

(assert (=> b!3932622 m!4498991))

(declare-fun m!4498993 () Bool)

(assert (=> b!3932622 m!4498993))

(declare-fun m!4498995 () Bool)

(assert (=> b!3932663 m!4498995))

(declare-fun m!4498997 () Bool)

(assert (=> b!3932657 m!4498997))

(declare-fun m!4498999 () Bool)

(assert (=> b!3932619 m!4498999))

(declare-fun m!4499001 () Bool)

(assert (=> b!3932619 m!4499001))

(declare-fun m!4499003 () Bool)

(assert (=> b!3932619 m!4499003))

(declare-fun m!4499005 () Bool)

(assert (=> b!3932655 m!4499005))

(declare-fun m!4499007 () Bool)

(assert (=> b!3932655 m!4499007))

(declare-fun m!4499009 () Bool)

(assert (=> b!3932658 m!4499009))

(declare-fun m!4499011 () Bool)

(assert (=> b!3932666 m!4499011))

(declare-fun m!4499013 () Bool)

(assert (=> b!3932647 m!4499013))

(declare-fun m!4499015 () Bool)

(assert (=> b!3932648 m!4499015))

(declare-fun m!4499017 () Bool)

(assert (=> b!3932648 m!4499017))

(declare-fun m!4499019 () Bool)

(assert (=> b!3932648 m!4499019))

(declare-fun m!4499021 () Bool)

(assert (=> b!3932648 m!4499021))

(declare-fun m!4499023 () Bool)

(assert (=> b!3932648 m!4499023))

(check-sat (not b!3932647) b_and!300167 (not b!3932646) (not b!3932638) b_and!300169 (not b!3932644) (not b!3932618) (not b_next!108063) (not b!3932659) (not b!3932629) b_and!300177 (not b!3932645) (not b!3932655) (not b!3932652) tp_is_empty!19821 (not b!3932653) (not b!3932627) (not b!3932628) (not b!3932615) (not b!3932621) (not b!3932650) (not b!3932637) (not b!3932643) (not b!3932630) b_and!300173 (not b!3932658) (not b!3932631) (not b!3932624) (not b!3932660) b_and!300171 (not b!3932622) (not b_next!108061) (not bm!284877) (not b_next!108065) (not b!3932664) (not b!3932616) (not b!3932661) (not b!3932626) (not b!3932620) (not b!3932635) (not b_next!108071) (not b!3932657) (not b!3932632) (not b!3932619) (not b!3932641) (not b_next!108069) (not b!3932666) b_and!300175 (not b!3932636) (not b!3932623) (not b!3932663) (not b!3932656) (not b_next!108067) (not b!3932648) (not b!3932640) (not b!3932633))
(check-sat b_and!300167 b_and!300173 (not b_next!108065) b_and!300169 (not b_next!108063) b_and!300177 (not b_next!108071) (not b_next!108067) b_and!300171 (not b_next!108061) (not b_next!108069) b_and!300175)
(get-model)

(declare-fun d!1166045 () Bool)

(assert (=> d!1166045 (= (inv!55950 (tag!7380 (h!47177 rules!2768))) (= (mod (str.len (value!206453 (tag!7380 (h!47177 rules!2768)))) 2) 0))))

(assert (=> b!3932650 d!1166045))

(declare-fun d!1166047 () Bool)

(declare-fun res!1591267 () Bool)

(declare-fun e!2432939 () Bool)

(assert (=> d!1166047 (=> (not res!1591267) (not e!2432939))))

(declare-fun semiInverseModEq!2803 (Int Int) Bool)

(assert (=> d!1166047 (= res!1591267 (semiInverseModEq!2803 (toChars!8835 (transformation!6520 (h!47177 rules!2768))) (toValue!8976 (transformation!6520 (h!47177 rules!2768)))))))

(assert (=> d!1166047 (= (inv!55953 (transformation!6520 (h!47177 rules!2768))) e!2432939)))

(declare-fun b!3932683 () Bool)

(declare-fun equivClasses!2702 (Int Int) Bool)

(assert (=> b!3932683 (= e!2432939 (equivClasses!2702 (toChars!8835 (transformation!6520 (h!47177 rules!2768))) (toValue!8976 (transformation!6520 (h!47177 rules!2768)))))))

(assert (= (and d!1166047 res!1591267) b!3932683))

(declare-fun m!4499049 () Bool)

(assert (=> d!1166047 m!4499049))

(declare-fun m!4499051 () Bool)

(assert (=> b!3932683 m!4499051))

(assert (=> b!3932650 d!1166047))

(declare-fun d!1166053 () Bool)

(assert (=> d!1166053 (= (inv!55950 (tag!7380 (rule!9468 (h!47178 prefixTokens!80)))) (= (mod (str.len (value!206453 (tag!7380 (rule!9468 (h!47178 prefixTokens!80))))) 2) 0))))

(assert (=> b!3932629 d!1166053))

(declare-fun d!1166055 () Bool)

(declare-fun res!1591268 () Bool)

(declare-fun e!2432940 () Bool)

(assert (=> d!1166055 (=> (not res!1591268) (not e!2432940))))

(assert (=> d!1166055 (= res!1591268 (semiInverseModEq!2803 (toChars!8835 (transformation!6520 (rule!9468 (h!47178 prefixTokens!80)))) (toValue!8976 (transformation!6520 (rule!9468 (h!47178 prefixTokens!80))))))))

(assert (=> d!1166055 (= (inv!55953 (transformation!6520 (rule!9468 (h!47178 prefixTokens!80)))) e!2432940)))

(declare-fun b!3932684 () Bool)

(assert (=> b!3932684 (= e!2432940 (equivClasses!2702 (toChars!8835 (transformation!6520 (rule!9468 (h!47178 prefixTokens!80)))) (toValue!8976 (transformation!6520 (rule!9468 (h!47178 prefixTokens!80))))))))

(assert (= (and d!1166055 res!1591268) b!3932684))

(declare-fun m!4499053 () Bool)

(assert (=> d!1166055 m!4499053))

(declare-fun m!4499055 () Bool)

(assert (=> b!3932684 m!4499055))

(assert (=> b!3932629 d!1166055))

(declare-fun d!1166057 () Bool)

(assert (=> d!1166057 (= (inv!55950 (tag!7380 (rule!9468 (h!47178 suffixTokens!72)))) (= (mod (str.len (value!206453 (tag!7380 (rule!9468 (h!47178 suffixTokens!72))))) 2) 0))))

(assert (=> b!3932630 d!1166057))

(declare-fun d!1166059 () Bool)

(declare-fun res!1591269 () Bool)

(declare-fun e!2432941 () Bool)

(assert (=> d!1166059 (=> (not res!1591269) (not e!2432941))))

(assert (=> d!1166059 (= res!1591269 (semiInverseModEq!2803 (toChars!8835 (transformation!6520 (rule!9468 (h!47178 suffixTokens!72)))) (toValue!8976 (transformation!6520 (rule!9468 (h!47178 suffixTokens!72))))))))

(assert (=> d!1166059 (= (inv!55953 (transformation!6520 (rule!9468 (h!47178 suffixTokens!72)))) e!2432941)))

(declare-fun b!3932685 () Bool)

(assert (=> b!3932685 (= e!2432941 (equivClasses!2702 (toChars!8835 (transformation!6520 (rule!9468 (h!47178 suffixTokens!72)))) (toValue!8976 (transformation!6520 (rule!9468 (h!47178 suffixTokens!72))))))))

(assert (= (and d!1166059 res!1591269) b!3932685))

(declare-fun m!4499057 () Bool)

(assert (=> d!1166059 m!4499057))

(declare-fun m!4499059 () Bool)

(assert (=> b!3932685 m!4499059))

(assert (=> b!3932630 d!1166059))

(declare-fun d!1166061 () Bool)

(assert (=> d!1166061 (= (isEmpty!24894 suffixResult!91) ((_ is Nil!41755) suffixResult!91))))

(assert (=> b!3932652 d!1166061))

(declare-fun d!1166063 () Bool)

(assert (=> d!1166063 (= (head!8349 prefixTokens!80) (h!47178 prefixTokens!80))))

(assert (=> b!3932631 d!1166063))

(declare-fun b!3932711 () Bool)

(declare-fun e!2432958 () Bool)

(declare-fun inv!17 (TokenValue!6750) Bool)

(assert (=> b!3932711 (= e!2432958 (inv!17 (value!206454 (h!47178 suffixTokens!72))))))

(declare-fun d!1166065 () Bool)

(declare-fun c!683298 () Bool)

(assert (=> d!1166065 (= c!683298 ((_ is IntegerValue!20250) (value!206454 (h!47178 suffixTokens!72))))))

(declare-fun e!2432959 () Bool)

(assert (=> d!1166065 (= (inv!21 (value!206454 (h!47178 suffixTokens!72))) e!2432959)))

(declare-fun b!3932712 () Bool)

(declare-fun res!1591275 () Bool)

(declare-fun e!2432957 () Bool)

(assert (=> b!3932712 (=> res!1591275 e!2432957)))

(assert (=> b!3932712 (= res!1591275 (not ((_ is IntegerValue!20252) (value!206454 (h!47178 suffixTokens!72)))))))

(assert (=> b!3932712 (= e!2432958 e!2432957)))

(declare-fun b!3932713 () Bool)

(declare-fun inv!16 (TokenValue!6750) Bool)

(assert (=> b!3932713 (= e!2432959 (inv!16 (value!206454 (h!47178 suffixTokens!72))))))

(declare-fun b!3932714 () Bool)

(declare-fun inv!15 (TokenValue!6750) Bool)

(assert (=> b!3932714 (= e!2432957 (inv!15 (value!206454 (h!47178 suffixTokens!72))))))

(declare-fun b!3932715 () Bool)

(assert (=> b!3932715 (= e!2432959 e!2432958)))

(declare-fun c!683299 () Bool)

(assert (=> b!3932715 (= c!683299 ((_ is IntegerValue!20251) (value!206454 (h!47178 suffixTokens!72))))))

(assert (= (and d!1166065 c!683298) b!3932713))

(assert (= (and d!1166065 (not c!683298)) b!3932715))

(assert (= (and b!3932715 c!683299) b!3932711))

(assert (= (and b!3932715 (not c!683299)) b!3932712))

(assert (= (and b!3932712 (not res!1591275)) b!3932714))

(declare-fun m!4499071 () Bool)

(assert (=> b!3932711 m!4499071))

(declare-fun m!4499073 () Bool)

(assert (=> b!3932713 m!4499073))

(declare-fun m!4499075 () Bool)

(assert (=> b!3932714 m!4499075))

(assert (=> b!3932653 d!1166065))

(declare-fun e!2432974 () Bool)

(declare-fun b!3932742 () Bool)

(declare-fun lt!1374104 () List!41882)

(assert (=> b!3932742 (= e!2432974 (or (not (= suffixTokens!72 Nil!41758)) (= lt!1374104 lt!1374055)))))

(declare-fun b!3932740 () Bool)

(declare-fun e!2432973 () List!41882)

(assert (=> b!3932740 (= e!2432973 (Cons!41758 (h!47178 lt!1374055) (++!10797 (t!325835 lt!1374055) suffixTokens!72)))))

(declare-fun d!1166069 () Bool)

(assert (=> d!1166069 e!2432974))

(declare-fun res!1591289 () Bool)

(assert (=> d!1166069 (=> (not res!1591289) (not e!2432974))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6292 (List!41882) (InoxSet Token!12178))

(assert (=> d!1166069 (= res!1591289 (= (content!6292 lt!1374104) ((_ map or) (content!6292 lt!1374055) (content!6292 suffixTokens!72))))))

(assert (=> d!1166069 (= lt!1374104 e!2432973)))

(declare-fun c!683305 () Bool)

(assert (=> d!1166069 (= c!683305 ((_ is Nil!41758) lt!1374055))))

(assert (=> d!1166069 (= (++!10797 lt!1374055 suffixTokens!72) lt!1374104)))

(declare-fun b!3932739 () Bool)

(assert (=> b!3932739 (= e!2432973 suffixTokens!72)))

(declare-fun b!3932741 () Bool)

(declare-fun res!1591290 () Bool)

(assert (=> b!3932741 (=> (not res!1591290) (not e!2432974))))

(declare-fun size!31331 (List!41882) Int)

(assert (=> b!3932741 (= res!1591290 (= (size!31331 lt!1374104) (+ (size!31331 lt!1374055) (size!31331 suffixTokens!72))))))

(assert (= (and d!1166069 c!683305) b!3932739))

(assert (= (and d!1166069 (not c!683305)) b!3932740))

(assert (= (and d!1166069 res!1591289) b!3932741))

(assert (= (and b!3932741 res!1591290) b!3932742))

(declare-fun m!4499095 () Bool)

(assert (=> b!3932740 m!4499095))

(declare-fun m!4499097 () Bool)

(assert (=> d!1166069 m!4499097))

(declare-fun m!4499099 () Bool)

(assert (=> d!1166069 m!4499099))

(declare-fun m!4499101 () Bool)

(assert (=> d!1166069 m!4499101))

(declare-fun m!4499103 () Bool)

(assert (=> b!3932741 m!4499103))

(declare-fun m!4499105 () Bool)

(assert (=> b!3932741 m!4499105))

(declare-fun m!4499107 () Bool)

(assert (=> b!3932741 m!4499107))

(assert (=> b!3932632 d!1166069))

(declare-fun d!1166077 () Bool)

(assert (=> d!1166077 (= (tail!6075 prefixTokens!80) (t!325835 prefixTokens!80))))

(assert (=> b!3932632 d!1166077))

(declare-fun d!1166079 () Bool)

(declare-fun e!2432986 () Bool)

(assert (=> d!1166079 e!2432986))

(declare-fun res!1591300 () Bool)

(assert (=> d!1166079 (=> res!1591300 e!2432986)))

(declare-fun lt!1374113 () Bool)

(assert (=> d!1166079 (= res!1591300 (not lt!1374113))))

(declare-fun e!2432985 () Bool)

(assert (=> d!1166079 (= lt!1374113 e!2432985)))

(declare-fun res!1591299 () Bool)

(assert (=> d!1166079 (=> res!1591299 e!2432985)))

(assert (=> d!1166079 (= res!1591299 ((_ is Nil!41755) lt!1374042))))

(assert (=> d!1166079 (= (isPrefix!3615 lt!1374042 lt!1374048) lt!1374113)))

(declare-fun b!3932757 () Bool)

(declare-fun e!2432984 () Bool)

(assert (=> b!3932757 (= e!2432985 e!2432984)))

(declare-fun res!1591302 () Bool)

(assert (=> b!3932757 (=> (not res!1591302) (not e!2432984))))

(assert (=> b!3932757 (= res!1591302 (not ((_ is Nil!41755) lt!1374048)))))

(declare-fun b!3932758 () Bool)

(declare-fun res!1591301 () Bool)

(assert (=> b!3932758 (=> (not res!1591301) (not e!2432984))))

(declare-fun head!8351 (List!41879) C!23036)

(assert (=> b!3932758 (= res!1591301 (= (head!8351 lt!1374042) (head!8351 lt!1374048)))))

(declare-fun b!3932760 () Bool)

(assert (=> b!3932760 (= e!2432986 (>= (size!31328 lt!1374048) (size!31328 lt!1374042)))))

(declare-fun b!3932759 () Bool)

(declare-fun tail!6077 (List!41879) List!41879)

(assert (=> b!3932759 (= e!2432984 (isPrefix!3615 (tail!6077 lt!1374042) (tail!6077 lt!1374048)))))

(assert (= (and d!1166079 (not res!1591299)) b!3932757))

(assert (= (and b!3932757 res!1591302) b!3932758))

(assert (= (and b!3932758 res!1591301) b!3932759))

(assert (= (and d!1166079 (not res!1591300)) b!3932760))

(declare-fun m!4499113 () Bool)

(assert (=> b!3932758 m!4499113))

(declare-fun m!4499115 () Bool)

(assert (=> b!3932758 m!4499115))

(declare-fun m!4499117 () Bool)

(assert (=> b!3932760 m!4499117))

(declare-fun m!4499119 () Bool)

(assert (=> b!3932760 m!4499119))

(declare-fun m!4499121 () Bool)

(assert (=> b!3932759 m!4499121))

(declare-fun m!4499123 () Bool)

(assert (=> b!3932759 m!4499123))

(assert (=> b!3932759 m!4499121))

(assert (=> b!3932759 m!4499123))

(declare-fun m!4499125 () Bool)

(assert (=> b!3932759 m!4499125))

(assert (=> b!3932632 d!1166079))

(declare-fun d!1166087 () Bool)

(assert (=> d!1166087 (isPrefix!3615 lt!1374042 (++!10798 lt!1374042 suffix!1176))))

(declare-fun lt!1374116 () Unit!60197)

(declare-fun choose!23405 (List!41879 List!41879) Unit!60197)

(assert (=> d!1166087 (= lt!1374116 (choose!23405 lt!1374042 suffix!1176))))

(assert (=> d!1166087 (= (lemmaConcatTwoListThenFirstIsPrefix!2478 lt!1374042 suffix!1176) lt!1374116)))

(declare-fun bs!586286 () Bool)

(assert (= bs!586286 d!1166087))

(assert (=> bs!586286 m!4498869))

(assert (=> bs!586286 m!4498869))

(declare-fun m!4499127 () Bool)

(assert (=> bs!586286 m!4499127))

(declare-fun m!4499129 () Bool)

(assert (=> bs!586286 m!4499129))

(assert (=> b!3932632 d!1166087))

(declare-fun d!1166089 () Bool)

(assert (=> d!1166089 (ruleValid!2468 thiss!20629 (rule!9468 (_1!23651 (v!39267 lt!1374063))))))

(declare-fun lt!1374123 () Unit!60197)

(declare-fun choose!23406 (LexerInterface!6109 Rule!12840 List!41881) Unit!60197)

(assert (=> d!1166089 (= lt!1374123 (choose!23406 thiss!20629 (rule!9468 (_1!23651 (v!39267 lt!1374063))) rules!2768))))

(declare-fun contains!8367 (List!41881 Rule!12840) Bool)

(assert (=> d!1166089 (contains!8367 rules!2768 (rule!9468 (_1!23651 (v!39267 lt!1374063))))))

(assert (=> d!1166089 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1548 thiss!20629 (rule!9468 (_1!23651 (v!39267 lt!1374063))) rules!2768) lt!1374123)))

(declare-fun bs!586288 () Bool)

(assert (= bs!586288 d!1166089))

(assert (=> bs!586288 m!4498963))

(declare-fun m!4499135 () Bool)

(assert (=> bs!586288 m!4499135))

(declare-fun m!4499137 () Bool)

(assert (=> bs!586288 m!4499137))

(assert (=> b!3932633 d!1166089))

(declare-fun d!1166095 () Bool)

(declare-fun fromListB!2211 (List!41879) BalanceConc!25056)

(assert (=> d!1166095 (= (seqFromList!4787 lt!1374084) (fromListB!2211 lt!1374084))))

(declare-fun bs!586289 () Bool)

(assert (= bs!586289 d!1166095))

(declare-fun m!4499139 () Bool)

(assert (=> bs!586289 m!4499139))

(assert (=> b!3932633 d!1166095))

(declare-fun d!1166097 () Bool)

(declare-fun list!15516 (Conc!12731) List!41879)

(assert (=> d!1166097 (= (list!15515 (charsOf!4344 (_1!23651 (v!39267 lt!1374063)))) (list!15516 (c!683286 (charsOf!4344 (_1!23651 (v!39267 lt!1374063))))))))

(declare-fun bs!586290 () Bool)

(assert (= bs!586290 d!1166097))

(declare-fun m!4499141 () Bool)

(assert (=> bs!586290 m!4499141))

(assert (=> b!3932633 d!1166097))

(declare-fun d!1166099 () Bool)

(assert (=> d!1166099 (= (_2!23651 (v!39267 lt!1374063)) lt!1374067)))

(declare-fun lt!1374126 () Unit!60197)

(declare-fun choose!23407 (List!41879 List!41879 List!41879 List!41879 List!41879) Unit!60197)

(assert (=> d!1166099 (= lt!1374126 (choose!23407 lt!1374084 (_2!23651 (v!39267 lt!1374063)) lt!1374084 lt!1374067 lt!1374064))))

(assert (=> d!1166099 (isPrefix!3615 lt!1374084 lt!1374064)))

(assert (=> d!1166099 (= (lemmaSamePrefixThenSameSuffix!1836 lt!1374084 (_2!23651 (v!39267 lt!1374063)) lt!1374084 lt!1374067 lt!1374064) lt!1374126)))

(declare-fun bs!586291 () Bool)

(assert (= bs!586291 d!1166099))

(declare-fun m!4499143 () Bool)

(assert (=> bs!586291 m!4499143))

(declare-fun m!4499145 () Bool)

(assert (=> bs!586291 m!4499145))

(assert (=> b!3932633 d!1166099))

(declare-fun d!1166101 () Bool)

(declare-fun lt!1374129 () Int)

(assert (=> d!1166101 (>= lt!1374129 0)))

(declare-fun e!2432990 () Int)

(assert (=> d!1166101 (= lt!1374129 e!2432990)))

(declare-fun c!683312 () Bool)

(assert (=> d!1166101 (= c!683312 ((_ is Nil!41755) lt!1374084))))

(assert (=> d!1166101 (= (size!31328 lt!1374084) lt!1374129)))

(declare-fun b!3932767 () Bool)

(assert (=> b!3932767 (= e!2432990 0)))

(declare-fun b!3932768 () Bool)

(assert (=> b!3932768 (= e!2432990 (+ 1 (size!31328 (t!325832 lt!1374084))))))

(assert (= (and d!1166101 c!683312) b!3932767))

(assert (= (and d!1166101 (not c!683312)) b!3932768))

(declare-fun m!4499147 () Bool)

(assert (=> b!3932768 m!4499147))

(assert (=> b!3932633 d!1166101))

(declare-fun d!1166103 () Bool)

(declare-fun res!1591307 () Bool)

(declare-fun e!2432993 () Bool)

(assert (=> d!1166103 (=> (not res!1591307) (not e!2432993))))

(declare-fun validRegex!5201 (Regex!11425) Bool)

(assert (=> d!1166103 (= res!1591307 (validRegex!5201 (regex!6520 (rule!9468 (_1!23651 (v!39267 lt!1374063))))))))

(assert (=> d!1166103 (= (ruleValid!2468 thiss!20629 (rule!9468 (_1!23651 (v!39267 lt!1374063)))) e!2432993)))

(declare-fun b!3932773 () Bool)

(declare-fun res!1591308 () Bool)

(assert (=> b!3932773 (=> (not res!1591308) (not e!2432993))))

(declare-fun nullable!4002 (Regex!11425) Bool)

(assert (=> b!3932773 (= res!1591308 (not (nullable!4002 (regex!6520 (rule!9468 (_1!23651 (v!39267 lt!1374063)))))))))

(declare-fun b!3932774 () Bool)

(assert (=> b!3932774 (= e!2432993 (not (= (tag!7380 (rule!9468 (_1!23651 (v!39267 lt!1374063)))) (String!47469 ""))))))

(assert (= (and d!1166103 res!1591307) b!3932773))

(assert (= (and b!3932773 res!1591308) b!3932774))

(declare-fun m!4499149 () Bool)

(assert (=> d!1166103 m!4499149))

(declare-fun m!4499151 () Bool)

(assert (=> b!3932773 m!4499151))

(assert (=> b!3932633 d!1166103))

(declare-fun d!1166105 () Bool)

(declare-fun lt!1374132 () BalanceConc!25056)

(assert (=> d!1166105 (= (list!15515 lt!1374132) (originalCharacters!7120 (_1!23651 (v!39267 lt!1374063))))))

(declare-fun dynLambda!17892 (Int TokenValue!6750) BalanceConc!25056)

(assert (=> d!1166105 (= lt!1374132 (dynLambda!17892 (toChars!8835 (transformation!6520 (rule!9468 (_1!23651 (v!39267 lt!1374063))))) (value!206454 (_1!23651 (v!39267 lt!1374063)))))))

(assert (=> d!1166105 (= (charsOf!4344 (_1!23651 (v!39267 lt!1374063))) lt!1374132)))

(declare-fun b_lambda!115047 () Bool)

(assert (=> (not b_lambda!115047) (not d!1166105)))

(declare-fun tb!235241 () Bool)

(declare-fun t!325849 () Bool)

(assert (=> (and b!3932625 (= (toChars!8835 (transformation!6520 (rule!9468 (h!47178 prefixTokens!80)))) (toChars!8835 (transformation!6520 (rule!9468 (_1!23651 (v!39267 lt!1374063)))))) t!325849) tb!235241))

(declare-fun b!3932779 () Bool)

(declare-fun e!2432996 () Bool)

(declare-fun tp!1197041 () Bool)

(declare-fun inv!55957 (Conc!12731) Bool)

(assert (=> b!3932779 (= e!2432996 (and (inv!55957 (c!683286 (dynLambda!17892 (toChars!8835 (transformation!6520 (rule!9468 (_1!23651 (v!39267 lt!1374063))))) (value!206454 (_1!23651 (v!39267 lt!1374063)))))) tp!1197041))))

(declare-fun result!285016 () Bool)

(declare-fun inv!55958 (BalanceConc!25056) Bool)

(assert (=> tb!235241 (= result!285016 (and (inv!55958 (dynLambda!17892 (toChars!8835 (transformation!6520 (rule!9468 (_1!23651 (v!39267 lt!1374063))))) (value!206454 (_1!23651 (v!39267 lt!1374063))))) e!2432996))))

(assert (= tb!235241 b!3932779))

(declare-fun m!4499153 () Bool)

(assert (=> b!3932779 m!4499153))

(declare-fun m!4499155 () Bool)

(assert (=> tb!235241 m!4499155))

(assert (=> d!1166105 t!325849))

(declare-fun b_and!300191 () Bool)

(assert (= b_and!300169 (and (=> t!325849 result!285016) b_and!300191)))

(declare-fun t!325851 () Bool)

(declare-fun tb!235243 () Bool)

(assert (=> (and b!3932639 (= (toChars!8835 (transformation!6520 (h!47177 rules!2768))) (toChars!8835 (transformation!6520 (rule!9468 (_1!23651 (v!39267 lt!1374063)))))) t!325851) tb!235243))

(declare-fun result!285020 () Bool)

(assert (= result!285020 result!285016))

(assert (=> d!1166105 t!325851))

(declare-fun b_and!300193 () Bool)

(assert (= b_and!300173 (and (=> t!325851 result!285020) b_and!300193)))

(declare-fun t!325853 () Bool)

(declare-fun tb!235245 () Bool)

(assert (=> (and b!3932642 (= (toChars!8835 (transformation!6520 (rule!9468 (h!47178 suffixTokens!72)))) (toChars!8835 (transformation!6520 (rule!9468 (_1!23651 (v!39267 lt!1374063)))))) t!325853) tb!235245))

(declare-fun result!285022 () Bool)

(assert (= result!285022 result!285016))

(assert (=> d!1166105 t!325853))

(declare-fun b_and!300195 () Bool)

(assert (= b_and!300177 (and (=> t!325853 result!285022) b_and!300195)))

(declare-fun m!4499157 () Bool)

(assert (=> d!1166105 m!4499157))

(declare-fun m!4499159 () Bool)

(assert (=> d!1166105 m!4499159))

(assert (=> b!3932633 d!1166105))

(declare-fun d!1166107 () Bool)

(assert (=> d!1166107 (= (size!31327 (_1!23651 (v!39267 lt!1374063))) (size!31328 (originalCharacters!7120 (_1!23651 (v!39267 lt!1374063)))))))

(declare-fun Unit!60209 () Unit!60197)

(assert (=> d!1166107 (= (lemmaCharactersSize!1177 (_1!23651 (v!39267 lt!1374063))) Unit!60209)))

(declare-fun bs!586292 () Bool)

(assert (= bs!586292 d!1166107))

(assert (=> bs!586292 m!4498937))

(assert (=> b!3932633 d!1166107))

(declare-fun d!1166109 () Bool)

(declare-fun dynLambda!17893 (Int BalanceConc!25056) TokenValue!6750)

(assert (=> d!1166109 (= (apply!9759 (transformation!6520 (rule!9468 (_1!23651 (v!39267 lt!1374063)))) (seqFromList!4787 lt!1374084)) (dynLambda!17893 (toValue!8976 (transformation!6520 (rule!9468 (_1!23651 (v!39267 lt!1374063))))) (seqFromList!4787 lt!1374084)))))

(declare-fun b_lambda!115049 () Bool)

(assert (=> (not b_lambda!115049) (not d!1166109)))

(declare-fun t!325855 () Bool)

(declare-fun tb!235247 () Bool)

(assert (=> (and b!3932625 (= (toValue!8976 (transformation!6520 (rule!9468 (h!47178 prefixTokens!80)))) (toValue!8976 (transformation!6520 (rule!9468 (_1!23651 (v!39267 lt!1374063)))))) t!325855) tb!235247))

(declare-fun result!285024 () Bool)

(assert (=> tb!235247 (= result!285024 (inv!21 (dynLambda!17893 (toValue!8976 (transformation!6520 (rule!9468 (_1!23651 (v!39267 lt!1374063))))) (seqFromList!4787 lt!1374084))))))

(declare-fun m!4499161 () Bool)

(assert (=> tb!235247 m!4499161))

(assert (=> d!1166109 t!325855))

(declare-fun b_and!300197 () Bool)

(assert (= b_and!300167 (and (=> t!325855 result!285024) b_and!300197)))

(declare-fun t!325857 () Bool)

(declare-fun tb!235249 () Bool)

(assert (=> (and b!3932639 (= (toValue!8976 (transformation!6520 (h!47177 rules!2768))) (toValue!8976 (transformation!6520 (rule!9468 (_1!23651 (v!39267 lt!1374063)))))) t!325857) tb!235249))

(declare-fun result!285028 () Bool)

(assert (= result!285028 result!285024))

(assert (=> d!1166109 t!325857))

(declare-fun b_and!300199 () Bool)

(assert (= b_and!300171 (and (=> t!325857 result!285028) b_and!300199)))

(declare-fun tb!235251 () Bool)

(declare-fun t!325859 () Bool)

(assert (=> (and b!3932642 (= (toValue!8976 (transformation!6520 (rule!9468 (h!47178 suffixTokens!72)))) (toValue!8976 (transformation!6520 (rule!9468 (_1!23651 (v!39267 lt!1374063)))))) t!325859) tb!235251))

(declare-fun result!285030 () Bool)

(assert (= result!285030 result!285024))

(assert (=> d!1166109 t!325859))

(declare-fun b_and!300201 () Bool)

(assert (= b_and!300175 (and (=> t!325859 result!285030) b_and!300201)))

(assert (=> d!1166109 m!4498977))

(declare-fun m!4499163 () Bool)

(assert (=> d!1166109 m!4499163))

(assert (=> b!3932633 d!1166109))

(declare-fun d!1166111 () Bool)

(declare-fun e!2433041 () Bool)

(assert (=> d!1166111 e!2433041))

(declare-fun c!683326 () Bool)

(declare-fun lt!1374172 () tuple2!41036)

(assert (=> d!1166111 (= c!683326 (> (size!31331 (_1!23652 lt!1374172)) 0))))

(declare-fun e!2433040 () tuple2!41036)

(assert (=> d!1166111 (= lt!1374172 e!2433040)))

(declare-fun c!683327 () Bool)

(declare-fun lt!1374173 () Option!8940)

(assert (=> d!1166111 (= c!683327 ((_ is Some!8939) lt!1374173))))

(assert (=> d!1166111 (= lt!1374173 (maxPrefix!3413 thiss!20629 rules!2768 (_2!23651 (v!39267 lt!1374063))))))

(assert (=> d!1166111 (= (lexList!1877 thiss!20629 rules!2768 (_2!23651 (v!39267 lt!1374063))) lt!1374172)))

(declare-fun b!3932850 () Bool)

(declare-fun e!2433039 () Bool)

(assert (=> b!3932850 (= e!2433041 e!2433039)))

(declare-fun res!1591351 () Bool)

(assert (=> b!3932850 (= res!1591351 (< (size!31328 (_2!23652 lt!1374172)) (size!31328 (_2!23651 (v!39267 lt!1374063)))))))

(assert (=> b!3932850 (=> (not res!1591351) (not e!2433039))))

(declare-fun b!3932851 () Bool)

(declare-fun lt!1374174 () tuple2!41036)

(assert (=> b!3932851 (= e!2433040 (tuple2!41037 (Cons!41758 (_1!23651 (v!39267 lt!1374173)) (_1!23652 lt!1374174)) (_2!23652 lt!1374174)))))

(assert (=> b!3932851 (= lt!1374174 (lexList!1877 thiss!20629 rules!2768 (_2!23651 (v!39267 lt!1374173))))))

(declare-fun b!3932852 () Bool)

(assert (=> b!3932852 (= e!2433041 (= (_2!23652 lt!1374172) (_2!23651 (v!39267 lt!1374063))))))

(declare-fun b!3932853 () Bool)

(assert (=> b!3932853 (= e!2433039 (not (isEmpty!24896 (_1!23652 lt!1374172))))))

(declare-fun b!3932854 () Bool)

(assert (=> b!3932854 (= e!2433040 (tuple2!41037 Nil!41758 (_2!23651 (v!39267 lt!1374063))))))

(assert (= (and d!1166111 c!683327) b!3932851))

(assert (= (and d!1166111 (not c!683327)) b!3932854))

(assert (= (and d!1166111 c!683326) b!3932850))

(assert (= (and d!1166111 (not c!683326)) b!3932852))

(assert (= (and b!3932850 res!1591351) b!3932853))

(declare-fun m!4499268 () Bool)

(assert (=> d!1166111 m!4499268))

(declare-fun m!4499275 () Bool)

(assert (=> d!1166111 m!4499275))

(declare-fun m!4499281 () Bool)

(assert (=> b!3932850 m!4499281))

(assert (=> b!3932850 m!4498881))

(declare-fun m!4499283 () Bool)

(assert (=> b!3932851 m!4499283))

(declare-fun m!4499285 () Bool)

(assert (=> b!3932853 m!4499285))

(assert (=> b!3932633 d!1166111))

(declare-fun d!1166139 () Bool)

(declare-fun e!2433049 () Bool)

(assert (=> d!1166139 e!2433049))

(declare-fun res!1591356 () Bool)

(assert (=> d!1166139 (=> res!1591356 e!2433049)))

(declare-fun lt!1374176 () Bool)

(assert (=> d!1166139 (= res!1591356 (not lt!1374176))))

(declare-fun e!2433048 () Bool)

(assert (=> d!1166139 (= lt!1374176 e!2433048)))

(declare-fun res!1591355 () Bool)

(assert (=> d!1166139 (=> res!1591355 e!2433048)))

(assert (=> d!1166139 (= res!1591355 ((_ is Nil!41755) lt!1374084))))

(assert (=> d!1166139 (= (isPrefix!3615 lt!1374084 lt!1374060) lt!1374176)))

(declare-fun b!3932864 () Bool)

(declare-fun e!2433047 () Bool)

(assert (=> b!3932864 (= e!2433048 e!2433047)))

(declare-fun res!1591358 () Bool)

(assert (=> b!3932864 (=> (not res!1591358) (not e!2433047))))

(assert (=> b!3932864 (= res!1591358 (not ((_ is Nil!41755) lt!1374060)))))

(declare-fun b!3932865 () Bool)

(declare-fun res!1591357 () Bool)

(assert (=> b!3932865 (=> (not res!1591357) (not e!2433047))))

(assert (=> b!3932865 (= res!1591357 (= (head!8351 lt!1374084) (head!8351 lt!1374060)))))

(declare-fun b!3932867 () Bool)

(assert (=> b!3932867 (= e!2433049 (>= (size!31328 lt!1374060) (size!31328 lt!1374084)))))

(declare-fun b!3932866 () Bool)

(assert (=> b!3932866 (= e!2433047 (isPrefix!3615 (tail!6077 lt!1374084) (tail!6077 lt!1374060)))))

(assert (= (and d!1166139 (not res!1591355)) b!3932864))

(assert (= (and b!3932864 res!1591358) b!3932865))

(assert (= (and b!3932865 res!1591357) b!3932866))

(assert (= (and d!1166139 (not res!1591356)) b!3932867))

(declare-fun m!4499295 () Bool)

(assert (=> b!3932865 m!4499295))

(declare-fun m!4499299 () Bool)

(assert (=> b!3932865 m!4499299))

(declare-fun m!4499303 () Bool)

(assert (=> b!3932867 m!4499303))

(assert (=> b!3932867 m!4498983))

(declare-fun m!4499305 () Bool)

(assert (=> b!3932866 m!4499305))

(declare-fun m!4499307 () Bool)

(assert (=> b!3932866 m!4499307))

(assert (=> b!3932866 m!4499305))

(assert (=> b!3932866 m!4499307))

(declare-fun m!4499309 () Bool)

(assert (=> b!3932866 m!4499309))

(assert (=> b!3932633 d!1166139))

(declare-fun d!1166145 () Bool)

(declare-fun lt!1374181 () List!41879)

(assert (=> d!1166145 (= (++!10798 lt!1374084 lt!1374181) lt!1374064)))

(declare-fun e!2433058 () List!41879)

(assert (=> d!1166145 (= lt!1374181 e!2433058)))

(declare-fun c!683333 () Bool)

(assert (=> d!1166145 (= c!683333 ((_ is Cons!41755) lt!1374084))))

(assert (=> d!1166145 (>= (size!31328 lt!1374064) (size!31328 lt!1374084))))

(assert (=> d!1166145 (= (getSuffix!2070 lt!1374064 lt!1374084) lt!1374181)))

(declare-fun b!3932879 () Bool)

(assert (=> b!3932879 (= e!2433058 (getSuffix!2070 (tail!6077 lt!1374064) (t!325832 lt!1374084)))))

(declare-fun b!3932880 () Bool)

(assert (=> b!3932880 (= e!2433058 lt!1374064)))

(assert (= (and d!1166145 c!683333) b!3932879))

(assert (= (and d!1166145 (not c!683333)) b!3932880))

(declare-fun m!4499319 () Bool)

(assert (=> d!1166145 m!4499319))

(assert (=> d!1166145 m!4499023))

(assert (=> d!1166145 m!4498983))

(declare-fun m!4499321 () Bool)

(assert (=> b!3932879 m!4499321))

(assert (=> b!3932879 m!4499321))

(declare-fun m!4499323 () Bool)

(assert (=> b!3932879 m!4499323))

(assert (=> b!3932633 d!1166145))

(declare-fun d!1166153 () Bool)

(assert (=> d!1166153 (isPrefix!3615 lt!1374084 (++!10798 lt!1374084 (_2!23651 (v!39267 lt!1374063))))))

(declare-fun lt!1374182 () Unit!60197)

(assert (=> d!1166153 (= lt!1374182 (choose!23405 lt!1374084 (_2!23651 (v!39267 lt!1374063))))))

(assert (=> d!1166153 (= (lemmaConcatTwoListThenFirstIsPrefix!2478 lt!1374084 (_2!23651 (v!39267 lt!1374063))) lt!1374182)))

(declare-fun bs!586299 () Bool)

(assert (= bs!586299 d!1166153))

(assert (=> bs!586299 m!4498957))

(assert (=> bs!586299 m!4498957))

(declare-fun m!4499325 () Bool)

(assert (=> bs!586299 m!4499325))

(declare-fun m!4499327 () Bool)

(assert (=> bs!586299 m!4499327))

(assert (=> b!3932633 d!1166153))

(declare-fun b!3932891 () Bool)

(declare-fun res!1591371 () Bool)

(declare-fun e!2433063 () Bool)

(assert (=> b!3932891 (=> (not res!1591371) (not e!2433063))))

(declare-fun lt!1374185 () List!41879)

(assert (=> b!3932891 (= res!1591371 (= (size!31328 lt!1374185) (+ (size!31328 lt!1374084) (size!31328 (_2!23651 (v!39267 lt!1374063))))))))

(declare-fun d!1166155 () Bool)

(assert (=> d!1166155 e!2433063))

(declare-fun res!1591370 () Bool)

(assert (=> d!1166155 (=> (not res!1591370) (not e!2433063))))

(declare-fun content!6293 (List!41879) (InoxSet C!23036))

(assert (=> d!1166155 (= res!1591370 (= (content!6293 lt!1374185) ((_ map or) (content!6293 lt!1374084) (content!6293 (_2!23651 (v!39267 lt!1374063))))))))

(declare-fun e!2433064 () List!41879)

(assert (=> d!1166155 (= lt!1374185 e!2433064)))

(declare-fun c!683336 () Bool)

(assert (=> d!1166155 (= c!683336 ((_ is Nil!41755) lt!1374084))))

(assert (=> d!1166155 (= (++!10798 lt!1374084 (_2!23651 (v!39267 lt!1374063))) lt!1374185)))

(declare-fun b!3932892 () Bool)

(assert (=> b!3932892 (= e!2433063 (or (not (= (_2!23651 (v!39267 lt!1374063)) Nil!41755)) (= lt!1374185 lt!1374084)))))

(declare-fun b!3932890 () Bool)

(assert (=> b!3932890 (= e!2433064 (Cons!41755 (h!47175 lt!1374084) (++!10798 (t!325832 lt!1374084) (_2!23651 (v!39267 lt!1374063)))))))

(declare-fun b!3932889 () Bool)

(assert (=> b!3932889 (= e!2433064 (_2!23651 (v!39267 lt!1374063)))))

(assert (= (and d!1166155 c!683336) b!3932889))

(assert (= (and d!1166155 (not c!683336)) b!3932890))

(assert (= (and d!1166155 res!1591370) b!3932891))

(assert (= (and b!3932891 res!1591371) b!3932892))

(declare-fun m!4499329 () Bool)

(assert (=> b!3932891 m!4499329))

(assert (=> b!3932891 m!4498983))

(assert (=> b!3932891 m!4498881))

(declare-fun m!4499331 () Bool)

(assert (=> d!1166155 m!4499331))

(declare-fun m!4499333 () Bool)

(assert (=> d!1166155 m!4499333))

(declare-fun m!4499335 () Bool)

(assert (=> d!1166155 m!4499335))

(declare-fun m!4499337 () Bool)

(assert (=> b!3932890 m!4499337))

(assert (=> b!3932633 d!1166155))

(declare-fun d!1166157 () Bool)

(declare-fun e!2433067 () Bool)

(assert (=> d!1166157 e!2433067))

(declare-fun c!683337 () Bool)

(declare-fun lt!1374186 () tuple2!41036)

(assert (=> d!1166157 (= c!683337 (> (size!31331 (_1!23652 lt!1374186)) 0))))

(declare-fun e!2433066 () tuple2!41036)

(assert (=> d!1166157 (= lt!1374186 e!2433066)))

(declare-fun c!683338 () Bool)

(declare-fun lt!1374187 () Option!8940)

(assert (=> d!1166157 (= c!683338 ((_ is Some!8939) lt!1374187))))

(assert (=> d!1166157 (= lt!1374187 (maxPrefix!3413 thiss!20629 rules!2768 lt!1374042))))

(assert (=> d!1166157 (= (lexList!1877 thiss!20629 rules!2768 lt!1374042) lt!1374186)))

(declare-fun b!3932893 () Bool)

(declare-fun e!2433065 () Bool)

(assert (=> b!3932893 (= e!2433067 e!2433065)))

(declare-fun res!1591372 () Bool)

(assert (=> b!3932893 (= res!1591372 (< (size!31328 (_2!23652 lt!1374186)) (size!31328 lt!1374042)))))

(assert (=> b!3932893 (=> (not res!1591372) (not e!2433065))))

(declare-fun b!3932894 () Bool)

(declare-fun lt!1374188 () tuple2!41036)

(assert (=> b!3932894 (= e!2433066 (tuple2!41037 (Cons!41758 (_1!23651 (v!39267 lt!1374187)) (_1!23652 lt!1374188)) (_2!23652 lt!1374188)))))

(assert (=> b!3932894 (= lt!1374188 (lexList!1877 thiss!20629 rules!2768 (_2!23651 (v!39267 lt!1374187))))))

(declare-fun b!3932895 () Bool)

(assert (=> b!3932895 (= e!2433067 (= (_2!23652 lt!1374186) lt!1374042))))

(declare-fun b!3932896 () Bool)

(assert (=> b!3932896 (= e!2433065 (not (isEmpty!24896 (_1!23652 lt!1374186))))))

(declare-fun b!3932897 () Bool)

(assert (=> b!3932897 (= e!2433066 (tuple2!41037 Nil!41758 lt!1374042))))

(assert (= (and d!1166157 c!683338) b!3932894))

(assert (= (and d!1166157 (not c!683338)) b!3932897))

(assert (= (and d!1166157 c!683337) b!3932893))

(assert (= (and d!1166157 (not c!683337)) b!3932895))

(assert (= (and b!3932893 res!1591372) b!3932896))

(declare-fun m!4499339 () Bool)

(assert (=> d!1166157 m!4499339))

(declare-fun m!4499341 () Bool)

(assert (=> d!1166157 m!4499341))

(declare-fun m!4499343 () Bool)

(assert (=> b!3932893 m!4499343))

(assert (=> b!3932893 m!4499119))

(declare-fun m!4499345 () Bool)

(assert (=> b!3932894 m!4499345))

(declare-fun m!4499347 () Bool)

(assert (=> b!3932896 m!4499347))

(assert (=> b!3932655 d!1166157))

(declare-fun d!1166159 () Bool)

(assert (=> d!1166159 (= (lexList!1877 thiss!20629 rules!2768 lt!1374042) (tuple2!41037 lt!1374055 Nil!41755))))

(declare-fun lt!1374201 () Unit!60197)

(declare-fun choose!23409 (LexerInterface!6109 List!41881 List!41879 List!41879 List!41882 List!41882 List!41879) Unit!60197)

(assert (=> d!1166159 (= lt!1374201 (choose!23409 thiss!20629 rules!2768 lt!1374042 suffix!1176 lt!1374055 suffixTokens!72 suffixResult!91))))

(assert (=> d!1166159 (not (isEmpty!24895 rules!2768))))

(assert (=> d!1166159 (= (lemmaLexThenLexPrefix!605 thiss!20629 rules!2768 lt!1374042 suffix!1176 lt!1374055 suffixTokens!72 suffixResult!91) lt!1374201)))

(declare-fun bs!586300 () Bool)

(assert (= bs!586300 d!1166159))

(assert (=> bs!586300 m!4499005))

(declare-fun m!4499349 () Bool)

(assert (=> bs!586300 m!4499349))

(assert (=> bs!586300 m!4498895))

(assert (=> b!3932655 d!1166159))

(declare-fun d!1166161 () Bool)

(assert (=> d!1166161 (= (isEmpty!24894 suffix!1176) ((_ is Nil!41755) suffix!1176))))

(assert (=> b!3932656 d!1166161))

(declare-fun d!1166163 () Bool)

(declare-fun res!1591398 () Bool)

(declare-fun e!2433079 () Bool)

(assert (=> d!1166163 (=> (not res!1591398) (not e!2433079))))

(assert (=> d!1166163 (= res!1591398 (not (isEmpty!24894 (originalCharacters!7120 (h!47178 prefixTokens!80)))))))

(assert (=> d!1166163 (= (inv!55954 (h!47178 prefixTokens!80)) e!2433079)))

(declare-fun b!3932929 () Bool)

(declare-fun res!1591399 () Bool)

(assert (=> b!3932929 (=> (not res!1591399) (not e!2433079))))

(assert (=> b!3932929 (= res!1591399 (= (originalCharacters!7120 (h!47178 prefixTokens!80)) (list!15515 (dynLambda!17892 (toChars!8835 (transformation!6520 (rule!9468 (h!47178 prefixTokens!80)))) (value!206454 (h!47178 prefixTokens!80))))))))

(declare-fun b!3932930 () Bool)

(assert (=> b!3932930 (= e!2433079 (= (size!31327 (h!47178 prefixTokens!80)) (size!31328 (originalCharacters!7120 (h!47178 prefixTokens!80)))))))

(assert (= (and d!1166163 res!1591398) b!3932929))

(assert (= (and b!3932929 res!1591399) b!3932930))

(declare-fun b_lambda!115051 () Bool)

(assert (=> (not b_lambda!115051) (not b!3932929)))

(declare-fun t!325861 () Bool)

(declare-fun tb!235253 () Bool)

(assert (=> (and b!3932625 (= (toChars!8835 (transformation!6520 (rule!9468 (h!47178 prefixTokens!80)))) (toChars!8835 (transformation!6520 (rule!9468 (h!47178 prefixTokens!80))))) t!325861) tb!235253))

(declare-fun b!3932931 () Bool)

(declare-fun e!2433080 () Bool)

(declare-fun tp!1197042 () Bool)

(assert (=> b!3932931 (= e!2433080 (and (inv!55957 (c!683286 (dynLambda!17892 (toChars!8835 (transformation!6520 (rule!9468 (h!47178 prefixTokens!80)))) (value!206454 (h!47178 prefixTokens!80))))) tp!1197042))))

(declare-fun result!285032 () Bool)

(assert (=> tb!235253 (= result!285032 (and (inv!55958 (dynLambda!17892 (toChars!8835 (transformation!6520 (rule!9468 (h!47178 prefixTokens!80)))) (value!206454 (h!47178 prefixTokens!80)))) e!2433080))))

(assert (= tb!235253 b!3932931))

(declare-fun m!4499383 () Bool)

(assert (=> b!3932931 m!4499383))

(declare-fun m!4499385 () Bool)

(assert (=> tb!235253 m!4499385))

(assert (=> b!3932929 t!325861))

(declare-fun b_and!300203 () Bool)

(assert (= b_and!300191 (and (=> t!325861 result!285032) b_and!300203)))

(declare-fun t!325863 () Bool)

(declare-fun tb!235255 () Bool)

(assert (=> (and b!3932639 (= (toChars!8835 (transformation!6520 (h!47177 rules!2768))) (toChars!8835 (transformation!6520 (rule!9468 (h!47178 prefixTokens!80))))) t!325863) tb!235255))

(declare-fun result!285034 () Bool)

(assert (= result!285034 result!285032))

(assert (=> b!3932929 t!325863))

(declare-fun b_and!300205 () Bool)

(assert (= b_and!300193 (and (=> t!325863 result!285034) b_and!300205)))

(declare-fun t!325865 () Bool)

(declare-fun tb!235257 () Bool)

(assert (=> (and b!3932642 (= (toChars!8835 (transformation!6520 (rule!9468 (h!47178 suffixTokens!72)))) (toChars!8835 (transformation!6520 (rule!9468 (h!47178 prefixTokens!80))))) t!325865) tb!235257))

(declare-fun result!285036 () Bool)

(assert (= result!285036 result!285032))

(assert (=> b!3932929 t!325865))

(declare-fun b_and!300207 () Bool)

(assert (= b_and!300195 (and (=> t!325865 result!285036) b_and!300207)))

(declare-fun m!4499391 () Bool)

(assert (=> d!1166163 m!4499391))

(declare-fun m!4499393 () Bool)

(assert (=> b!3932929 m!4499393))

(assert (=> b!3932929 m!4499393))

(declare-fun m!4499395 () Bool)

(assert (=> b!3932929 m!4499395))

(declare-fun m!4499397 () Bool)

(assert (=> b!3932930 m!4499397))

(assert (=> b!3932635 d!1166163))

(declare-fun d!1166171 () Bool)

(assert (=> d!1166171 (= (isEmpty!24894 prefix!426) ((_ is Nil!41755) prefix!426))))

(assert (=> b!3932615 d!1166171))

(declare-fun d!1166173 () Bool)

(declare-fun res!1591402 () Bool)

(declare-fun e!2433085 () Bool)

(assert (=> d!1166173 (=> (not res!1591402) (not e!2433085))))

(assert (=> d!1166173 (= res!1591402 (not (isEmpty!24894 (originalCharacters!7120 (h!47178 suffixTokens!72)))))))

(assert (=> d!1166173 (= (inv!55954 (h!47178 suffixTokens!72)) e!2433085)))

(declare-fun b!3932938 () Bool)

(declare-fun res!1591403 () Bool)

(assert (=> b!3932938 (=> (not res!1591403) (not e!2433085))))

(assert (=> b!3932938 (= res!1591403 (= (originalCharacters!7120 (h!47178 suffixTokens!72)) (list!15515 (dynLambda!17892 (toChars!8835 (transformation!6520 (rule!9468 (h!47178 suffixTokens!72)))) (value!206454 (h!47178 suffixTokens!72))))))))

(declare-fun b!3932939 () Bool)

(assert (=> b!3932939 (= e!2433085 (= (size!31327 (h!47178 suffixTokens!72)) (size!31328 (originalCharacters!7120 (h!47178 suffixTokens!72)))))))

(assert (= (and d!1166173 res!1591402) b!3932938))

(assert (= (and b!3932938 res!1591403) b!3932939))

(declare-fun b_lambda!115053 () Bool)

(assert (=> (not b_lambda!115053) (not b!3932938)))

(declare-fun tb!235259 () Bool)

(declare-fun t!325867 () Bool)

(assert (=> (and b!3932625 (= (toChars!8835 (transformation!6520 (rule!9468 (h!47178 prefixTokens!80)))) (toChars!8835 (transformation!6520 (rule!9468 (h!47178 suffixTokens!72))))) t!325867) tb!235259))

(declare-fun b!3932940 () Bool)

(declare-fun e!2433086 () Bool)

(declare-fun tp!1197043 () Bool)

(assert (=> b!3932940 (= e!2433086 (and (inv!55957 (c!683286 (dynLambda!17892 (toChars!8835 (transformation!6520 (rule!9468 (h!47178 suffixTokens!72)))) (value!206454 (h!47178 suffixTokens!72))))) tp!1197043))))

(declare-fun result!285038 () Bool)

(assert (=> tb!235259 (= result!285038 (and (inv!55958 (dynLambda!17892 (toChars!8835 (transformation!6520 (rule!9468 (h!47178 suffixTokens!72)))) (value!206454 (h!47178 suffixTokens!72)))) e!2433086))))

(assert (= tb!235259 b!3932940))

(declare-fun m!4499409 () Bool)

(assert (=> b!3932940 m!4499409))

(declare-fun m!4499411 () Bool)

(assert (=> tb!235259 m!4499411))

(assert (=> b!3932938 t!325867))

(declare-fun b_and!300209 () Bool)

(assert (= b_and!300203 (and (=> t!325867 result!285038) b_and!300209)))

(declare-fun t!325869 () Bool)

(declare-fun tb!235261 () Bool)

(assert (=> (and b!3932639 (= (toChars!8835 (transformation!6520 (h!47177 rules!2768))) (toChars!8835 (transformation!6520 (rule!9468 (h!47178 suffixTokens!72))))) t!325869) tb!235261))

(declare-fun result!285040 () Bool)

(assert (= result!285040 result!285038))

(assert (=> b!3932938 t!325869))

(declare-fun b_and!300211 () Bool)

(assert (= b_and!300205 (and (=> t!325869 result!285040) b_and!300211)))

(declare-fun t!325871 () Bool)

(declare-fun tb!235263 () Bool)

(assert (=> (and b!3932642 (= (toChars!8835 (transformation!6520 (rule!9468 (h!47178 suffixTokens!72)))) (toChars!8835 (transformation!6520 (rule!9468 (h!47178 suffixTokens!72))))) t!325871) tb!235263))

(declare-fun result!285042 () Bool)

(assert (= result!285042 result!285038))

(assert (=> b!3932938 t!325871))

(declare-fun b_and!300213 () Bool)

(assert (= b_and!300207 (and (=> t!325871 result!285042) b_and!300213)))

(declare-fun m!4499413 () Bool)

(assert (=> d!1166173 m!4499413))

(declare-fun m!4499415 () Bool)

(assert (=> b!3932938 m!4499415))

(assert (=> b!3932938 m!4499415))

(declare-fun m!4499417 () Bool)

(assert (=> b!3932938 m!4499417))

(declare-fun m!4499419 () Bool)

(assert (=> b!3932939 m!4499419))

(assert (=> b!3932657 d!1166173))

(declare-fun d!1166177 () Bool)

(assert (=> d!1166177 (= (isEmpty!24896 prefixTokens!80) ((_ is Nil!41758) prefixTokens!80))))

(assert (=> b!3932636 d!1166177))

(declare-fun d!1166179 () Bool)

(assert (=> d!1166179 (not (= (lexList!1877 thiss!20629 rules!2768 (_2!23651 lt!1374080)) (tuple2!41037 (++!10797 lt!1374049 suffixTokens!72) suffixResult!91)))))

(declare-fun lt!1374217 () Unit!60197)

(declare-fun choose!23410 (LexerInterface!6109 List!41881 List!41879 List!41879 List!41882 List!41879 List!41882) Unit!60197)

(assert (=> d!1166179 (= lt!1374217 (choose!23410 thiss!20629 rules!2768 suffix!1176 (_2!23651 lt!1374080) suffixTokens!72 suffixResult!91 lt!1374049))))

(assert (=> d!1166179 (not (isEmpty!24895 rules!2768))))

(assert (=> d!1166179 (= (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!120 thiss!20629 rules!2768 suffix!1176 (_2!23651 lt!1374080) suffixTokens!72 suffixResult!91 lt!1374049) lt!1374217)))

(declare-fun bs!586302 () Bool)

(assert (= bs!586302 d!1166179))

(assert (=> bs!586302 m!4498949))

(assert (=> bs!586302 m!4498941))

(declare-fun m!4499433 () Bool)

(assert (=> bs!586302 m!4499433))

(assert (=> bs!586302 m!4498895))

(assert (=> b!3932616 d!1166179))

(declare-fun e!2433093 () Bool)

(declare-fun b!3932953 () Bool)

(declare-fun lt!1374218 () List!41882)

(assert (=> b!3932953 (= e!2433093 (or (not (= suffixTokens!72 Nil!41758)) (= lt!1374218 lt!1374049)))))

(declare-fun b!3932951 () Bool)

(declare-fun e!2433092 () List!41882)

(assert (=> b!3932951 (= e!2433092 (Cons!41758 (h!47178 lt!1374049) (++!10797 (t!325835 lt!1374049) suffixTokens!72)))))

(declare-fun d!1166189 () Bool)

(assert (=> d!1166189 e!2433093))

(declare-fun res!1591405 () Bool)

(assert (=> d!1166189 (=> (not res!1591405) (not e!2433093))))

(assert (=> d!1166189 (= res!1591405 (= (content!6292 lt!1374218) ((_ map or) (content!6292 lt!1374049) (content!6292 suffixTokens!72))))))

(assert (=> d!1166189 (= lt!1374218 e!2433092)))

(declare-fun c!683348 () Bool)

(assert (=> d!1166189 (= c!683348 ((_ is Nil!41758) lt!1374049))))

(assert (=> d!1166189 (= (++!10797 lt!1374049 suffixTokens!72) lt!1374218)))

(declare-fun b!3932950 () Bool)

(assert (=> b!3932950 (= e!2433092 suffixTokens!72)))

(declare-fun b!3932952 () Bool)

(declare-fun res!1591406 () Bool)

(assert (=> b!3932952 (=> (not res!1591406) (not e!2433093))))

(assert (=> b!3932952 (= res!1591406 (= (size!31331 lt!1374218) (+ (size!31331 lt!1374049) (size!31331 suffixTokens!72))))))

(assert (= (and d!1166189 c!683348) b!3932950))

(assert (= (and d!1166189 (not c!683348)) b!3932951))

(assert (= (and d!1166189 res!1591405) b!3932952))

(assert (= (and b!3932952 res!1591406) b!3932953))

(declare-fun m!4499435 () Bool)

(assert (=> b!3932951 m!4499435))

(declare-fun m!4499437 () Bool)

(assert (=> d!1166189 m!4499437))

(declare-fun m!4499439 () Bool)

(assert (=> d!1166189 m!4499439))

(assert (=> d!1166189 m!4499101))

(declare-fun m!4499441 () Bool)

(assert (=> b!3932952 m!4499441))

(declare-fun m!4499443 () Bool)

(assert (=> b!3932952 m!4499443))

(assert (=> b!3932952 m!4499107))

(assert (=> b!3932616 d!1166189))

(declare-fun d!1166193 () Bool)

(declare-fun res!1591412 () Bool)

(declare-fun e!2433101 () Bool)

(assert (=> d!1166193 (=> (not res!1591412) (not e!2433101))))

(declare-fun rulesValid!2537 (LexerInterface!6109 List!41881) Bool)

(assert (=> d!1166193 (= res!1591412 (rulesValid!2537 thiss!20629 rules!2768))))

(assert (=> d!1166193 (= (rulesInvariant!5452 thiss!20629 rules!2768) e!2433101)))

(declare-fun b!3932965 () Bool)

(declare-datatypes ((List!41884 0))(
  ( (Nil!41760) (Cons!41760 (h!47180 String!47468) (t!325933 List!41884)) )
))
(declare-fun noDuplicateTag!2538 (LexerInterface!6109 List!41881 List!41884) Bool)

(assert (=> b!3932965 (= e!2433101 (noDuplicateTag!2538 thiss!20629 rules!2768 Nil!41760))))

(assert (= (and d!1166193 res!1591412) b!3932965))

(declare-fun m!4499463 () Bool)

(assert (=> d!1166193 m!4499463))

(declare-fun m!4499465 () Bool)

(assert (=> b!3932965 m!4499465))

(assert (=> b!3932658 d!1166193))

(declare-fun d!1166199 () Bool)

(assert (=> d!1166199 (= (++!10797 (++!10797 lt!1374058 lt!1374055) suffixTokens!72) (++!10797 lt!1374058 (++!10797 lt!1374055 suffixTokens!72)))))

(declare-fun lt!1374227 () Unit!60197)

(declare-fun choose!23412 (List!41882 List!41882 List!41882) Unit!60197)

(assert (=> d!1166199 (= lt!1374227 (choose!23412 lt!1374058 lt!1374055 suffixTokens!72))))

(assert (=> d!1166199 (= (lemmaConcatAssociativity!2328 lt!1374058 lt!1374055 suffixTokens!72) lt!1374227)))

(declare-fun bs!586303 () Bool)

(assert (= bs!586303 d!1166199))

(assert (=> bs!586303 m!4498899))

(declare-fun m!4499467 () Bool)

(assert (=> bs!586303 m!4499467))

(declare-fun m!4499469 () Bool)

(assert (=> bs!586303 m!4499469))

(assert (=> bs!586303 m!4498899))

(assert (=> bs!586303 m!4498883))

(assert (=> bs!586303 m!4498883))

(assert (=> bs!586303 m!4498885))

(assert (=> b!3932638 d!1166199))

(declare-fun d!1166201 () Bool)

(assert (=> d!1166201 (= (isEmpty!24896 lt!1374055) ((_ is Nil!41758) lt!1374055))))

(assert (=> b!3932638 d!1166201))

(declare-fun e!2433107 () Bool)

(declare-fun b!3932977 () Bool)

(declare-fun lt!1374228 () List!41882)

(assert (=> b!3932977 (= e!2433107 (or (not (= suffixTokens!72 Nil!41758)) (= lt!1374228 (++!10797 lt!1374058 lt!1374055))))))

(declare-fun e!2433106 () List!41882)

(declare-fun b!3932975 () Bool)

(assert (=> b!3932975 (= e!2433106 (Cons!41758 (h!47178 (++!10797 lt!1374058 lt!1374055)) (++!10797 (t!325835 (++!10797 lt!1374058 lt!1374055)) suffixTokens!72)))))

(declare-fun d!1166203 () Bool)

(assert (=> d!1166203 e!2433107))

(declare-fun res!1591417 () Bool)

(assert (=> d!1166203 (=> (not res!1591417) (not e!2433107))))

(assert (=> d!1166203 (= res!1591417 (= (content!6292 lt!1374228) ((_ map or) (content!6292 (++!10797 lt!1374058 lt!1374055)) (content!6292 suffixTokens!72))))))

(assert (=> d!1166203 (= lt!1374228 e!2433106)))

(declare-fun c!683354 () Bool)

(assert (=> d!1166203 (= c!683354 ((_ is Nil!41758) (++!10797 lt!1374058 lt!1374055)))))

(assert (=> d!1166203 (= (++!10797 (++!10797 lt!1374058 lt!1374055) suffixTokens!72) lt!1374228)))

(declare-fun b!3932974 () Bool)

(assert (=> b!3932974 (= e!2433106 suffixTokens!72)))

(declare-fun b!3932976 () Bool)

(declare-fun res!1591418 () Bool)

(assert (=> b!3932976 (=> (not res!1591418) (not e!2433107))))

(assert (=> b!3932976 (= res!1591418 (= (size!31331 lt!1374228) (+ (size!31331 (++!10797 lt!1374058 lt!1374055)) (size!31331 suffixTokens!72))))))

(assert (= (and d!1166203 c!683354) b!3932974))

(assert (= (and d!1166203 (not c!683354)) b!3932975))

(assert (= (and d!1166203 res!1591417) b!3932976))

(assert (= (and b!3932976 res!1591418) b!3932977))

(declare-fun m!4499471 () Bool)

(assert (=> b!3932975 m!4499471))

(declare-fun m!4499473 () Bool)

(assert (=> d!1166203 m!4499473))

(assert (=> d!1166203 m!4498883))

(declare-fun m!4499477 () Bool)

(assert (=> d!1166203 m!4499477))

(assert (=> d!1166203 m!4499101))

(declare-fun m!4499479 () Bool)

(assert (=> b!3932976 m!4499479))

(assert (=> b!3932976 m!4498883))

(declare-fun m!4499483 () Bool)

(assert (=> b!3932976 m!4499483))

(assert (=> b!3932976 m!4499107))

(assert (=> b!3932638 d!1166203))

(declare-fun e!2433111 () Bool)

(declare-fun b!3932985 () Bool)

(declare-fun lt!1374230 () List!41882)

(assert (=> b!3932985 (= e!2433111 (or (not (= lt!1374055 Nil!41758)) (= lt!1374230 lt!1374058)))))

(declare-fun b!3932983 () Bool)

(declare-fun e!2433110 () List!41882)

(assert (=> b!3932983 (= e!2433110 (Cons!41758 (h!47178 lt!1374058) (++!10797 (t!325835 lt!1374058) lt!1374055)))))

(declare-fun d!1166205 () Bool)

(assert (=> d!1166205 e!2433111))

(declare-fun res!1591421 () Bool)

(assert (=> d!1166205 (=> (not res!1591421) (not e!2433111))))

(assert (=> d!1166205 (= res!1591421 (= (content!6292 lt!1374230) ((_ map or) (content!6292 lt!1374058) (content!6292 lt!1374055))))))

(assert (=> d!1166205 (= lt!1374230 e!2433110)))

(declare-fun c!683356 () Bool)

(assert (=> d!1166205 (= c!683356 ((_ is Nil!41758) lt!1374058))))

(assert (=> d!1166205 (= (++!10797 lt!1374058 lt!1374055) lt!1374230)))

(declare-fun b!3932982 () Bool)

(assert (=> b!3932982 (= e!2433110 lt!1374055)))

(declare-fun b!3932984 () Bool)

(declare-fun res!1591422 () Bool)

(assert (=> b!3932984 (=> (not res!1591422) (not e!2433111))))

(assert (=> b!3932984 (= res!1591422 (= (size!31331 lt!1374230) (+ (size!31331 lt!1374058) (size!31331 lt!1374055))))))

(assert (= (and d!1166205 c!683356) b!3932982))

(assert (= (and d!1166205 (not c!683356)) b!3932983))

(assert (= (and d!1166205 res!1591421) b!3932984))

(assert (= (and b!3932984 res!1591422) b!3932985))

(declare-fun m!4499493 () Bool)

(assert (=> b!3932983 m!4499493))

(declare-fun m!4499497 () Bool)

(assert (=> d!1166205 m!4499497))

(declare-fun m!4499499 () Bool)

(assert (=> d!1166205 m!4499499))

(assert (=> d!1166205 m!4499099))

(declare-fun m!4499501 () Bool)

(assert (=> b!3932984 m!4499501))

(declare-fun m!4499503 () Bool)

(assert (=> b!3932984 m!4499503))

(assert (=> b!3932984 m!4499105))

(assert (=> b!3932638 d!1166205))

(declare-fun lt!1374231 () List!41882)

(declare-fun b!3932990 () Bool)

(declare-fun e!2433114 () Bool)

(assert (=> b!3932990 (= e!2433114 (or (not (= lt!1374040 Nil!41758)) (= lt!1374231 lt!1374058)))))

(declare-fun b!3932988 () Bool)

(declare-fun e!2433113 () List!41882)

(assert (=> b!3932988 (= e!2433113 (Cons!41758 (h!47178 lt!1374058) (++!10797 (t!325835 lt!1374058) lt!1374040)))))

(declare-fun d!1166213 () Bool)

(assert (=> d!1166213 e!2433114))

(declare-fun res!1591424 () Bool)

(assert (=> d!1166213 (=> (not res!1591424) (not e!2433114))))

(assert (=> d!1166213 (= res!1591424 (= (content!6292 lt!1374231) ((_ map or) (content!6292 lt!1374058) (content!6292 lt!1374040))))))

(assert (=> d!1166213 (= lt!1374231 e!2433113)))

(declare-fun c!683357 () Bool)

(assert (=> d!1166213 (= c!683357 ((_ is Nil!41758) lt!1374058))))

(assert (=> d!1166213 (= (++!10797 lt!1374058 lt!1374040) lt!1374231)))

(declare-fun b!3932987 () Bool)

(assert (=> b!3932987 (= e!2433113 lt!1374040)))

(declare-fun b!3932989 () Bool)

(declare-fun res!1591425 () Bool)

(assert (=> b!3932989 (=> (not res!1591425) (not e!2433114))))

(assert (=> b!3932989 (= res!1591425 (= (size!31331 lt!1374231) (+ (size!31331 lt!1374058) (size!31331 lt!1374040))))))

(assert (= (and d!1166213 c!683357) b!3932987))

(assert (= (and d!1166213 (not c!683357)) b!3932988))

(assert (= (and d!1166213 res!1591424) b!3932989))

(assert (= (and b!3932989 res!1591425) b!3932990))

(declare-fun m!4499505 () Bool)

(assert (=> b!3932988 m!4499505))

(declare-fun m!4499507 () Bool)

(assert (=> d!1166213 m!4499507))

(assert (=> d!1166213 m!4499499))

(declare-fun m!4499509 () Bool)

(assert (=> d!1166213 m!4499509))

(declare-fun m!4499511 () Bool)

(assert (=> b!3932989 m!4499511))

(assert (=> b!3932989 m!4499503))

(declare-fun m!4499513 () Bool)

(assert (=> b!3932989 m!4499513))

(assert (=> b!3932638 d!1166213))

(declare-fun b!3932995 () Bool)

(declare-fun res!1591427 () Bool)

(declare-fun e!2433116 () Bool)

(assert (=> b!3932995 (=> (not res!1591427) (not e!2433116))))

(declare-fun lt!1374233 () List!41879)

(assert (=> b!3932995 (= res!1591427 (= (size!31328 lt!1374233) (+ (size!31328 lt!1374084) (size!31328 lt!1374048))))))

(declare-fun d!1166217 () Bool)

(assert (=> d!1166217 e!2433116))

(declare-fun res!1591426 () Bool)

(assert (=> d!1166217 (=> (not res!1591426) (not e!2433116))))

(assert (=> d!1166217 (= res!1591426 (= (content!6293 lt!1374233) ((_ map or) (content!6293 lt!1374084) (content!6293 lt!1374048))))))

(declare-fun e!2433117 () List!41879)

(assert (=> d!1166217 (= lt!1374233 e!2433117)))

(declare-fun c!683359 () Bool)

(assert (=> d!1166217 (= c!683359 ((_ is Nil!41755) lt!1374084))))

(assert (=> d!1166217 (= (++!10798 lt!1374084 lt!1374048) lt!1374233)))

(declare-fun b!3932996 () Bool)

(assert (=> b!3932996 (= e!2433116 (or (not (= lt!1374048 Nil!41755)) (= lt!1374233 lt!1374084)))))

(declare-fun b!3932994 () Bool)

(assert (=> b!3932994 (= e!2433117 (Cons!41755 (h!47175 lt!1374084) (++!10798 (t!325832 lt!1374084) lt!1374048)))))

(declare-fun b!3932993 () Bool)

(assert (=> b!3932993 (= e!2433117 lt!1374048)))

(assert (= (and d!1166217 c!683359) b!3932993))

(assert (= (and d!1166217 (not c!683359)) b!3932994))

(assert (= (and d!1166217 res!1591426) b!3932995))

(assert (= (and b!3932995 res!1591427) b!3932996))

(declare-fun m!4499517 () Bool)

(assert (=> b!3932995 m!4499517))

(assert (=> b!3932995 m!4498983))

(assert (=> b!3932995 m!4499117))

(declare-fun m!4499519 () Bool)

(assert (=> d!1166217 m!4499519))

(assert (=> d!1166217 m!4499333))

(declare-fun m!4499521 () Bool)

(assert (=> d!1166217 m!4499521))

(declare-fun m!4499523 () Bool)

(assert (=> b!3932994 m!4499523))

(assert (=> b!3932618 d!1166217))

(declare-fun b!3932999 () Bool)

(declare-fun res!1591429 () Bool)

(declare-fun e!2433118 () Bool)

(assert (=> b!3932999 (=> (not res!1591429) (not e!2433118))))

(declare-fun lt!1374234 () List!41879)

(assert (=> b!3932999 (= res!1591429 (= (size!31328 lt!1374234) (+ (size!31328 lt!1374042) (size!31328 suffix!1176))))))

(declare-fun d!1166221 () Bool)

(assert (=> d!1166221 e!2433118))

(declare-fun res!1591428 () Bool)

(assert (=> d!1166221 (=> (not res!1591428) (not e!2433118))))

(assert (=> d!1166221 (= res!1591428 (= (content!6293 lt!1374234) ((_ map or) (content!6293 lt!1374042) (content!6293 suffix!1176))))))

(declare-fun e!2433119 () List!41879)

(assert (=> d!1166221 (= lt!1374234 e!2433119)))

(declare-fun c!683360 () Bool)

(assert (=> d!1166221 (= c!683360 ((_ is Nil!41755) lt!1374042))))

(assert (=> d!1166221 (= (++!10798 lt!1374042 suffix!1176) lt!1374234)))

(declare-fun b!3933000 () Bool)

(assert (=> b!3933000 (= e!2433118 (or (not (= suffix!1176 Nil!41755)) (= lt!1374234 lt!1374042)))))

(declare-fun b!3932998 () Bool)

(assert (=> b!3932998 (= e!2433119 (Cons!41755 (h!47175 lt!1374042) (++!10798 (t!325832 lt!1374042) suffix!1176)))))

(declare-fun b!3932997 () Bool)

(assert (=> b!3932997 (= e!2433119 suffix!1176)))

(assert (= (and d!1166221 c!683360) b!3932997))

(assert (= (and d!1166221 (not c!683360)) b!3932998))

(assert (= (and d!1166221 res!1591428) b!3932999))

(assert (= (and b!3932999 res!1591429) b!3933000))

(declare-fun m!4499525 () Bool)

(assert (=> b!3932999 m!4499525))

(assert (=> b!3932999 m!4499119))

(assert (=> b!3932999 m!4498879))

(declare-fun m!4499527 () Bool)

(assert (=> d!1166221 m!4499527))

(declare-fun m!4499529 () Bool)

(assert (=> d!1166221 m!4499529))

(declare-fun m!4499531 () Bool)

(assert (=> d!1166221 m!4499531))

(declare-fun m!4499533 () Bool)

(assert (=> b!3932998 m!4499533))

(assert (=> b!3932618 d!1166221))

(declare-fun d!1166223 () Bool)

(assert (=> d!1166223 (= (++!10798 (++!10798 lt!1374084 lt!1374042) suffix!1176) (++!10798 lt!1374084 (++!10798 lt!1374042 suffix!1176)))))

(declare-fun lt!1374240 () Unit!60197)

(declare-fun choose!23414 (List!41879 List!41879 List!41879) Unit!60197)

(assert (=> d!1166223 (= lt!1374240 (choose!23414 lt!1374084 lt!1374042 suffix!1176))))

(assert (=> d!1166223 (= (lemmaConcatAssociativity!2327 lt!1374084 lt!1374042 suffix!1176) lt!1374240)))

(declare-fun bs!586305 () Bool)

(assert (= bs!586305 d!1166223))

(assert (=> bs!586305 m!4498869))

(declare-fun m!4499539 () Bool)

(assert (=> bs!586305 m!4499539))

(assert (=> bs!586305 m!4498951))

(declare-fun m!4499543 () Bool)

(assert (=> bs!586305 m!4499543))

(assert (=> bs!586305 m!4498951))

(declare-fun m!4499545 () Bool)

(assert (=> bs!586305 m!4499545))

(assert (=> bs!586305 m!4498869))

(assert (=> b!3932618 d!1166223))

(declare-fun d!1166229 () Bool)

(assert (=> d!1166229 (= (isEmpty!24896 lt!1374049) ((_ is Nil!41758) lt!1374049))))

(assert (=> b!3932660 d!1166229))

(assert (=> b!3932660 d!1166077))

(declare-fun d!1166233 () Bool)

(assert (=> d!1166233 (= (_2!23651 (v!39267 lt!1374063)) lt!1374048)))

(declare-fun lt!1374243 () Unit!60197)

(assert (=> d!1166233 (= lt!1374243 (choose!23407 lt!1374084 (_2!23651 (v!39267 lt!1374063)) lt!1374084 lt!1374048 lt!1374064))))

(assert (=> d!1166233 (isPrefix!3615 lt!1374084 lt!1374064)))

(assert (=> d!1166233 (= (lemmaSamePrefixThenSameSuffix!1836 lt!1374084 (_2!23651 (v!39267 lt!1374063)) lt!1374084 lt!1374048 lt!1374064) lt!1374243)))

(declare-fun bs!586307 () Bool)

(assert (= bs!586307 d!1166233))

(declare-fun m!4499547 () Bool)

(assert (=> bs!586307 m!4499547))

(assert (=> bs!586307 m!4499145))

(assert (=> b!3932619 d!1166233))

(declare-fun d!1166235 () Bool)

(declare-fun e!2433124 () Bool)

(assert (=> d!1166235 e!2433124))

(declare-fun res!1591433 () Bool)

(assert (=> d!1166235 (=> res!1591433 e!2433124)))

(declare-fun lt!1374244 () Bool)

(assert (=> d!1166235 (= res!1591433 (not lt!1374244))))

(declare-fun e!2433123 () Bool)

(assert (=> d!1166235 (= lt!1374244 e!2433123)))

(declare-fun res!1591432 () Bool)

(assert (=> d!1166235 (=> res!1591432 e!2433123)))

(assert (=> d!1166235 (= res!1591432 ((_ is Nil!41755) lt!1374084))))

(assert (=> d!1166235 (= (isPrefix!3615 lt!1374084 lt!1374089) lt!1374244)))

(declare-fun b!3933005 () Bool)

(declare-fun e!2433122 () Bool)

(assert (=> b!3933005 (= e!2433123 e!2433122)))

(declare-fun res!1591435 () Bool)

(assert (=> b!3933005 (=> (not res!1591435) (not e!2433122))))

(assert (=> b!3933005 (= res!1591435 (not ((_ is Nil!41755) lt!1374089)))))

(declare-fun b!3933006 () Bool)

(declare-fun res!1591434 () Bool)

(assert (=> b!3933006 (=> (not res!1591434) (not e!2433122))))

(assert (=> b!3933006 (= res!1591434 (= (head!8351 lt!1374084) (head!8351 lt!1374089)))))

(declare-fun b!3933008 () Bool)

(assert (=> b!3933008 (= e!2433124 (>= (size!31328 lt!1374089) (size!31328 lt!1374084)))))

(declare-fun b!3933007 () Bool)

(assert (=> b!3933007 (= e!2433122 (isPrefix!3615 (tail!6077 lt!1374084) (tail!6077 lt!1374089)))))

(assert (= (and d!1166235 (not res!1591432)) b!3933005))

(assert (= (and b!3933005 res!1591435) b!3933006))

(assert (= (and b!3933006 res!1591434) b!3933007))

(assert (= (and d!1166235 (not res!1591433)) b!3933008))

(assert (=> b!3933006 m!4499295))

(declare-fun m!4499559 () Bool)

(assert (=> b!3933006 m!4499559))

(declare-fun m!4499561 () Bool)

(assert (=> b!3933008 m!4499561))

(assert (=> b!3933008 m!4498983))

(assert (=> b!3933007 m!4499305))

(declare-fun m!4499563 () Bool)

(assert (=> b!3933007 m!4499563))

(assert (=> b!3933007 m!4499305))

(assert (=> b!3933007 m!4499563))

(declare-fun m!4499565 () Bool)

(assert (=> b!3933007 m!4499565))

(assert (=> b!3932619 d!1166235))

(declare-fun d!1166239 () Bool)

(assert (=> d!1166239 (isPrefix!3615 lt!1374084 (++!10798 lt!1374084 lt!1374048))))

(declare-fun lt!1374245 () Unit!60197)

(assert (=> d!1166239 (= lt!1374245 (choose!23405 lt!1374084 lt!1374048))))

(assert (=> d!1166239 (= (lemmaConcatTwoListThenFirstIsPrefix!2478 lt!1374084 lt!1374048) lt!1374245)))

(declare-fun bs!586308 () Bool)

(assert (= bs!586308 d!1166239))

(assert (=> bs!586308 m!4498867))

(assert (=> bs!586308 m!4498867))

(declare-fun m!4499567 () Bool)

(assert (=> bs!586308 m!4499567))

(declare-fun m!4499569 () Bool)

(assert (=> bs!586308 m!4499569))

(assert (=> b!3932619 d!1166239))

(declare-fun b!3933011 () Bool)

(declare-fun res!1591437 () Bool)

(declare-fun e!2433125 () Bool)

(assert (=> b!3933011 (=> (not res!1591437) (not e!2433125))))

(declare-fun lt!1374246 () List!41879)

(assert (=> b!3933011 (= res!1591437 (= (size!31328 lt!1374246) (+ (size!31328 lt!1374084) (size!31328 lt!1374042))))))

(declare-fun d!1166241 () Bool)

(assert (=> d!1166241 e!2433125))

(declare-fun res!1591436 () Bool)

(assert (=> d!1166241 (=> (not res!1591436) (not e!2433125))))

(assert (=> d!1166241 (= res!1591436 (= (content!6293 lt!1374246) ((_ map or) (content!6293 lt!1374084) (content!6293 lt!1374042))))))

(declare-fun e!2433126 () List!41879)

(assert (=> d!1166241 (= lt!1374246 e!2433126)))

(declare-fun c!683362 () Bool)

(assert (=> d!1166241 (= c!683362 ((_ is Nil!41755) lt!1374084))))

(assert (=> d!1166241 (= (++!10798 lt!1374084 lt!1374042) lt!1374246)))

(declare-fun b!3933012 () Bool)

(assert (=> b!3933012 (= e!2433125 (or (not (= lt!1374042 Nil!41755)) (= lt!1374246 lt!1374084)))))

(declare-fun b!3933010 () Bool)

(assert (=> b!3933010 (= e!2433126 (Cons!41755 (h!47175 lt!1374084) (++!10798 (t!325832 lt!1374084) lt!1374042)))))

(declare-fun b!3933009 () Bool)

(assert (=> b!3933009 (= e!2433126 lt!1374042)))

(assert (= (and d!1166241 c!683362) b!3933009))

(assert (= (and d!1166241 (not c!683362)) b!3933010))

(assert (= (and d!1166241 res!1591436) b!3933011))

(assert (= (and b!3933011 res!1591437) b!3933012))

(declare-fun m!4499571 () Bool)

(assert (=> b!3933011 m!4499571))

(assert (=> b!3933011 m!4498983))

(assert (=> b!3933011 m!4499119))

(declare-fun m!4499573 () Bool)

(assert (=> d!1166241 m!4499573))

(assert (=> d!1166241 m!4499333))

(assert (=> d!1166241 m!4499529))

(declare-fun m!4499575 () Bool)

(assert (=> b!3933010 m!4499575))

(assert (=> b!3932661 d!1166241))

(declare-fun d!1166243 () Bool)

(declare-fun lt!1374247 () List!41879)

(assert (=> d!1166243 (= (++!10798 lt!1374084 lt!1374247) prefix!426)))

(declare-fun e!2433127 () List!41879)

(assert (=> d!1166243 (= lt!1374247 e!2433127)))

(declare-fun c!683363 () Bool)

(assert (=> d!1166243 (= c!683363 ((_ is Cons!41755) lt!1374084))))

(assert (=> d!1166243 (>= (size!31328 prefix!426) (size!31328 lt!1374084))))

(assert (=> d!1166243 (= (getSuffix!2070 prefix!426 lt!1374084) lt!1374247)))

(declare-fun b!3933013 () Bool)

(assert (=> b!3933013 (= e!2433127 (getSuffix!2070 (tail!6077 prefix!426) (t!325832 lt!1374084)))))

(declare-fun b!3933014 () Bool)

(assert (=> b!3933014 (= e!2433127 prefix!426)))

(assert (= (and d!1166243 c!683363) b!3933013))

(assert (= (and d!1166243 (not c!683363)) b!3933014))

(declare-fun m!4499577 () Bool)

(assert (=> d!1166243 m!4499577))

(assert (=> d!1166243 m!4498921))

(assert (=> d!1166243 m!4498983))

(declare-fun m!4499579 () Bool)

(assert (=> b!3933013 m!4499579))

(assert (=> b!3933013 m!4499579))

(declare-fun m!4499581 () Bool)

(assert (=> b!3933013 m!4499581))

(assert (=> b!3932661 d!1166243))

(declare-fun d!1166245 () Bool)

(declare-fun e!2433130 () Bool)

(assert (=> d!1166245 e!2433130))

(declare-fun c!683364 () Bool)

(declare-fun lt!1374250 () tuple2!41036)

(assert (=> d!1166245 (= c!683364 (> (size!31331 (_1!23652 lt!1374250)) 0))))

(declare-fun e!2433129 () tuple2!41036)

(assert (=> d!1166245 (= lt!1374250 e!2433129)))

(declare-fun c!683365 () Bool)

(declare-fun lt!1374251 () Option!8940)

(assert (=> d!1166245 (= c!683365 ((_ is Some!8939) lt!1374251))))

(assert (=> d!1166245 (= lt!1374251 (maxPrefix!3413 thiss!20629 rules!2768 lt!1374064))))

(assert (=> d!1166245 (= (lexList!1877 thiss!20629 rules!2768 lt!1374064) lt!1374250)))

(declare-fun b!3933015 () Bool)

(declare-fun e!2433128 () Bool)

(assert (=> b!3933015 (= e!2433130 e!2433128)))

(declare-fun res!1591438 () Bool)

(assert (=> b!3933015 (= res!1591438 (< (size!31328 (_2!23652 lt!1374250)) (size!31328 lt!1374064)))))

(assert (=> b!3933015 (=> (not res!1591438) (not e!2433128))))

(declare-fun b!3933016 () Bool)

(declare-fun lt!1374252 () tuple2!41036)

(assert (=> b!3933016 (= e!2433129 (tuple2!41037 (Cons!41758 (_1!23651 (v!39267 lt!1374251)) (_1!23652 lt!1374252)) (_2!23652 lt!1374252)))))

(assert (=> b!3933016 (= lt!1374252 (lexList!1877 thiss!20629 rules!2768 (_2!23651 (v!39267 lt!1374251))))))

(declare-fun b!3933017 () Bool)

(assert (=> b!3933017 (= e!2433130 (= (_2!23652 lt!1374250) lt!1374064))))

(declare-fun b!3933018 () Bool)

(assert (=> b!3933018 (= e!2433128 (not (isEmpty!24896 (_1!23652 lt!1374250))))))

(declare-fun b!3933019 () Bool)

(assert (=> b!3933019 (= e!2433129 (tuple2!41037 Nil!41758 lt!1374064))))

(assert (= (and d!1166245 c!683365) b!3933016))

(assert (= (and d!1166245 (not c!683365)) b!3933019))

(assert (= (and d!1166245 c!683364) b!3933015))

(assert (= (and d!1166245 (not c!683364)) b!3933017))

(assert (= (and b!3933015 res!1591438) b!3933018))

(declare-fun m!4499583 () Bool)

(assert (=> d!1166245 m!4499583))

(assert (=> d!1166245 m!4498935))

(declare-fun m!4499587 () Bool)

(assert (=> b!3933015 m!4499587))

(assert (=> b!3933015 m!4499023))

(declare-fun m!4499589 () Bool)

(assert (=> b!3933016 m!4499589))

(declare-fun m!4499591 () Bool)

(assert (=> b!3933018 m!4499591))

(assert (=> b!3932640 d!1166245))

(declare-fun lt!1374255 () List!41882)

(declare-fun e!2433133 () Bool)

(declare-fun b!3933025 () Bool)

(assert (=> b!3933025 (= e!2433133 (or (not (= suffixTokens!72 Nil!41758)) (= lt!1374255 prefixTokens!80)))))

(declare-fun b!3933023 () Bool)

(declare-fun e!2433132 () List!41882)

(assert (=> b!3933023 (= e!2433132 (Cons!41758 (h!47178 prefixTokens!80) (++!10797 (t!325835 prefixTokens!80) suffixTokens!72)))))

(declare-fun d!1166249 () Bool)

(assert (=> d!1166249 e!2433133))

(declare-fun res!1591439 () Bool)

(assert (=> d!1166249 (=> (not res!1591439) (not e!2433133))))

(assert (=> d!1166249 (= res!1591439 (= (content!6292 lt!1374255) ((_ map or) (content!6292 prefixTokens!80) (content!6292 suffixTokens!72))))))

(assert (=> d!1166249 (= lt!1374255 e!2433132)))

(declare-fun c!683367 () Bool)

(assert (=> d!1166249 (= c!683367 ((_ is Nil!41758) prefixTokens!80))))

(assert (=> d!1166249 (= (++!10797 prefixTokens!80 suffixTokens!72) lt!1374255)))

(declare-fun b!3933022 () Bool)

(assert (=> b!3933022 (= e!2433132 suffixTokens!72)))

(declare-fun b!3933024 () Bool)

(declare-fun res!1591440 () Bool)

(assert (=> b!3933024 (=> (not res!1591440) (not e!2433133))))

(assert (=> b!3933024 (= res!1591440 (= (size!31331 lt!1374255) (+ (size!31331 prefixTokens!80) (size!31331 suffixTokens!72))))))

(assert (= (and d!1166249 c!683367) b!3933022))

(assert (= (and d!1166249 (not c!683367)) b!3933023))

(assert (= (and d!1166249 res!1591439) b!3933024))

(assert (= (and b!3933024 res!1591440) b!3933025))

(declare-fun m!4499595 () Bool)

(assert (=> b!3933023 m!4499595))

(declare-fun m!4499597 () Bool)

(assert (=> d!1166249 m!4499597))

(declare-fun m!4499599 () Bool)

(assert (=> d!1166249 m!4499599))

(assert (=> d!1166249 m!4499101))

(declare-fun m!4499601 () Bool)

(assert (=> b!3933024 m!4499601))

(declare-fun m!4499603 () Bool)

(assert (=> b!3933024 m!4499603))

(assert (=> b!3933024 m!4499107))

(assert (=> b!3932640 d!1166249))

(declare-fun b!3933032 () Bool)

(declare-fun res!1591446 () Bool)

(declare-fun e!2433137 () Bool)

(assert (=> b!3933032 (=> (not res!1591446) (not e!2433137))))

(declare-fun lt!1374257 () List!41879)

(assert (=> b!3933032 (= res!1591446 (= (size!31328 lt!1374257) (+ (size!31328 prefix!426) (size!31328 suffix!1176))))))

(declare-fun d!1166253 () Bool)

(assert (=> d!1166253 e!2433137))

(declare-fun res!1591445 () Bool)

(assert (=> d!1166253 (=> (not res!1591445) (not e!2433137))))

(assert (=> d!1166253 (= res!1591445 (= (content!6293 lt!1374257) ((_ map or) (content!6293 prefix!426) (content!6293 suffix!1176))))))

(declare-fun e!2433138 () List!41879)

(assert (=> d!1166253 (= lt!1374257 e!2433138)))

(declare-fun c!683368 () Bool)

(assert (=> d!1166253 (= c!683368 ((_ is Nil!41755) prefix!426))))

(assert (=> d!1166253 (= (++!10798 prefix!426 suffix!1176) lt!1374257)))

(declare-fun b!3933033 () Bool)

(assert (=> b!3933033 (= e!2433137 (or (not (= suffix!1176 Nil!41755)) (= lt!1374257 prefix!426)))))

(declare-fun b!3933031 () Bool)

(assert (=> b!3933031 (= e!2433138 (Cons!41755 (h!47175 prefix!426) (++!10798 (t!325832 prefix!426) suffix!1176)))))

(declare-fun b!3933030 () Bool)

(assert (=> b!3933030 (= e!2433138 suffix!1176)))

(assert (= (and d!1166253 c!683368) b!3933030))

(assert (= (and d!1166253 (not c!683368)) b!3933031))

(assert (= (and d!1166253 res!1591445) b!3933032))

(assert (= (and b!3933032 res!1591446) b!3933033))

(declare-fun m!4499607 () Bool)

(assert (=> b!3933032 m!4499607))

(assert (=> b!3933032 m!4498921))

(assert (=> b!3933032 m!4498879))

(declare-fun m!4499609 () Bool)

(assert (=> d!1166253 m!4499609))

(declare-fun m!4499611 () Bool)

(assert (=> d!1166253 m!4499611))

(assert (=> d!1166253 m!4499531))

(declare-fun m!4499613 () Bool)

(assert (=> b!3933031 m!4499613))

(assert (=> b!3932640 d!1166253))

(declare-fun d!1166257 () Bool)

(declare-fun e!2433144 () Bool)

(assert (=> d!1166257 e!2433144))

(declare-fun res!1591449 () Bool)

(assert (=> d!1166257 (=> res!1591449 e!2433144)))

(declare-fun lt!1374261 () Bool)

(assert (=> d!1166257 (= res!1591449 (not lt!1374261))))

(declare-fun e!2433143 () Bool)

(assert (=> d!1166257 (= lt!1374261 e!2433143)))

(declare-fun res!1591448 () Bool)

(assert (=> d!1166257 (=> res!1591448 e!2433143)))

(assert (=> d!1166257 (= res!1591448 ((_ is Nil!41755) lt!1374084))))

(assert (=> d!1166257 (= (isPrefix!3615 lt!1374084 prefix!426) lt!1374261)))

(declare-fun b!3933039 () Bool)

(declare-fun e!2433142 () Bool)

(assert (=> b!3933039 (= e!2433143 e!2433142)))

(declare-fun res!1591451 () Bool)

(assert (=> b!3933039 (=> (not res!1591451) (not e!2433142))))

(assert (=> b!3933039 (= res!1591451 (not ((_ is Nil!41755) prefix!426)))))

(declare-fun b!3933040 () Bool)

(declare-fun res!1591450 () Bool)

(assert (=> b!3933040 (=> (not res!1591450) (not e!2433142))))

(assert (=> b!3933040 (= res!1591450 (= (head!8351 lt!1374084) (head!8351 prefix!426)))))

(declare-fun b!3933042 () Bool)

(assert (=> b!3933042 (= e!2433144 (>= (size!31328 prefix!426) (size!31328 lt!1374084)))))

(declare-fun b!3933041 () Bool)

(assert (=> b!3933041 (= e!2433142 (isPrefix!3615 (tail!6077 lt!1374084) (tail!6077 prefix!426)))))

(assert (= (and d!1166257 (not res!1591448)) b!3933039))

(assert (= (and b!3933039 res!1591451) b!3933040))

(assert (= (and b!3933040 res!1591450) b!3933041))

(assert (= (and d!1166257 (not res!1591449)) b!3933042))

(assert (=> b!3933040 m!4499295))

(declare-fun m!4499621 () Bool)

(assert (=> b!3933040 m!4499621))

(assert (=> b!3933042 m!4498921))

(assert (=> b!3933042 m!4498983))

(assert (=> b!3933041 m!4499305))

(assert (=> b!3933041 m!4499579))

(assert (=> b!3933041 m!4499305))

(assert (=> b!3933041 m!4499579))

(declare-fun m!4499627 () Bool)

(assert (=> b!3933041 m!4499627))

(assert (=> b!3932620 d!1166257))

(declare-fun d!1166261 () Bool)

(assert (=> d!1166261 (isPrefix!3615 lt!1374084 prefix!426)))

(declare-fun lt!1374268 () Unit!60197)

(declare-fun choose!23417 (List!41879 List!41879 List!41879) Unit!60197)

(assert (=> d!1166261 (= lt!1374268 (choose!23417 prefix!426 lt!1374084 lt!1374064))))

(assert (=> d!1166261 (isPrefix!3615 prefix!426 lt!1374064)))

(assert (=> d!1166261 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!293 prefix!426 lt!1374084 lt!1374064) lt!1374268)))

(declare-fun bs!586310 () Bool)

(assert (= bs!586310 d!1166261))

(assert (=> bs!586310 m!4498923))

(declare-fun m!4499649 () Bool)

(assert (=> bs!586310 m!4499649))

(assert (=> bs!586310 m!4498911))

(assert (=> b!3932620 d!1166261))

(declare-fun d!1166267 () Bool)

(assert (=> d!1166267 (isPrefix!3615 prefix!426 (++!10798 prefix!426 suffix!1176))))

(declare-fun lt!1374269 () Unit!60197)

(assert (=> d!1166267 (= lt!1374269 (choose!23405 prefix!426 suffix!1176))))

(assert (=> d!1166267 (= (lemmaConcatTwoListThenFirstIsPrefix!2478 prefix!426 suffix!1176) lt!1374269)))

(declare-fun bs!586311 () Bool)

(assert (= bs!586311 d!1166267))

(assert (=> bs!586311 m!4498877))

(assert (=> bs!586311 m!4498877))

(declare-fun m!4499651 () Bool)

(assert (=> bs!586311 m!4499651))

(declare-fun m!4499653 () Bool)

(assert (=> bs!586311 m!4499653))

(assert (=> b!3932620 d!1166267))

(declare-fun d!1166269 () Bool)

(declare-fun e!2433152 () Bool)

(assert (=> d!1166269 e!2433152))

(declare-fun res!1591456 () Bool)

(assert (=> d!1166269 (=> res!1591456 e!2433152)))

(declare-fun lt!1374270 () Bool)

(assert (=> d!1166269 (= res!1591456 (not lt!1374270))))

(declare-fun e!2433151 () Bool)

(assert (=> d!1166269 (= lt!1374270 e!2433151)))

(declare-fun res!1591455 () Bool)

(assert (=> d!1166269 (=> res!1591455 e!2433151)))

(assert (=> d!1166269 (= res!1591455 ((_ is Nil!41755) prefix!426))))

(assert (=> d!1166269 (= (isPrefix!3615 prefix!426 lt!1374064) lt!1374270)))

(declare-fun b!3933052 () Bool)

(declare-fun e!2433150 () Bool)

(assert (=> b!3933052 (= e!2433151 e!2433150)))

(declare-fun res!1591458 () Bool)

(assert (=> b!3933052 (=> (not res!1591458) (not e!2433150))))

(assert (=> b!3933052 (= res!1591458 (not ((_ is Nil!41755) lt!1374064)))))

(declare-fun b!3933053 () Bool)

(declare-fun res!1591457 () Bool)

(assert (=> b!3933053 (=> (not res!1591457) (not e!2433150))))

(assert (=> b!3933053 (= res!1591457 (= (head!8351 prefix!426) (head!8351 lt!1374064)))))

(declare-fun b!3933055 () Bool)

(assert (=> b!3933055 (= e!2433152 (>= (size!31328 lt!1374064) (size!31328 prefix!426)))))

(declare-fun b!3933054 () Bool)

(assert (=> b!3933054 (= e!2433150 (isPrefix!3615 (tail!6077 prefix!426) (tail!6077 lt!1374064)))))

(assert (= (and d!1166269 (not res!1591455)) b!3933052))

(assert (= (and b!3933052 res!1591458) b!3933053))

(assert (= (and b!3933053 res!1591457) b!3933054))

(assert (= (and d!1166269 (not res!1591456)) b!3933055))

(assert (=> b!3933053 m!4499621))

(declare-fun m!4499655 () Bool)

(assert (=> b!3933053 m!4499655))

(assert (=> b!3933055 m!4499023))

(assert (=> b!3933055 m!4498921))

(assert (=> b!3933054 m!4499579))

(assert (=> b!3933054 m!4499321))

(assert (=> b!3933054 m!4499579))

(assert (=> b!3933054 m!4499321))

(declare-fun m!4499657 () Bool)

(assert (=> b!3933054 m!4499657))

(assert (=> b!3932620 d!1166269))

(declare-fun d!1166271 () Bool)

(declare-fun lt!1374271 () Int)

(assert (=> d!1166271 (>= lt!1374271 0)))

(declare-fun e!2433153 () Int)

(assert (=> d!1166271 (= lt!1374271 e!2433153)))

(declare-fun c!683374 () Bool)

(assert (=> d!1166271 (= c!683374 ((_ is Nil!41755) prefix!426))))

(assert (=> d!1166271 (= (size!31328 prefix!426) lt!1374271)))

(declare-fun b!3933056 () Bool)

(assert (=> b!3933056 (= e!2433153 0)))

(declare-fun b!3933057 () Bool)

(assert (=> b!3933057 (= e!2433153 (+ 1 (size!31328 (t!325832 prefix!426))))))

(assert (= (and d!1166271 c!683374) b!3933056))

(assert (= (and d!1166271 (not c!683374)) b!3933057))

(declare-fun m!4499659 () Bool)

(assert (=> b!3933057 m!4499659))

(assert (=> b!3932620 d!1166271))

(declare-fun d!1166273 () Bool)

(assert (=> d!1166273 (not (= (lexList!1877 thiss!20629 rules!2768 suffix!1176) (tuple2!41037 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1374277 () Unit!60197)

(declare-fun choose!23418 (LexerInterface!6109 List!41881 List!41879 List!41879 List!41882 List!41879) Unit!60197)

(assert (=> d!1166273 (= lt!1374277 (choose!23418 thiss!20629 rules!2768 (_2!23651 (v!39267 lt!1374063)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> d!1166273 (not (isEmpty!24895 rules!2768))))

(assert (=> d!1166273 (= (lemmaLexWithSmallerInputCannotProduceSameResults!120 thiss!20629 rules!2768 (_2!23651 (v!39267 lt!1374063)) suffix!1176 suffixTokens!72 suffixResult!91) lt!1374277)))

(declare-fun bs!586312 () Bool)

(assert (= bs!586312 d!1166273))

(assert (=> bs!586312 m!4499011))

(declare-fun m!4499665 () Bool)

(assert (=> bs!586312 m!4499665))

(assert (=> bs!586312 m!4498895))

(assert (=> b!3932641 d!1166273))

(declare-fun b!3933147 () Bool)

(declare-fun e!2433209 () Option!8940)

(declare-fun call!284888 () Option!8940)

(assert (=> b!3933147 (= e!2433209 call!284888)))

(declare-fun bm!284883 () Bool)

(assert (=> bm!284883 (= call!284888 (maxPrefixOneRule!2483 thiss!20629 (h!47177 rules!2768) lt!1374064))))

(declare-fun b!3933148 () Bool)

(declare-fun e!2433208 () Bool)

(declare-fun lt!1374318 () Option!8940)

(assert (=> b!3933148 (= e!2433208 (contains!8367 rules!2768 (rule!9468 (_1!23651 (get!13800 lt!1374318)))))))

(declare-fun b!3933149 () Bool)

(declare-fun res!1591500 () Bool)

(assert (=> b!3933149 (=> (not res!1591500) (not e!2433208))))

(assert (=> b!3933149 (= res!1591500 (< (size!31328 (_2!23651 (get!13800 lt!1374318))) (size!31328 lt!1374064)))))

(declare-fun b!3933150 () Bool)

(declare-fun res!1591498 () Bool)

(assert (=> b!3933150 (=> (not res!1591498) (not e!2433208))))

(assert (=> b!3933150 (= res!1591498 (= (list!15515 (charsOf!4344 (_1!23651 (get!13800 lt!1374318)))) (originalCharacters!7120 (_1!23651 (get!13800 lt!1374318)))))))

(declare-fun b!3933151 () Bool)

(declare-fun res!1591501 () Bool)

(assert (=> b!3933151 (=> (not res!1591501) (not e!2433208))))

(assert (=> b!3933151 (= res!1591501 (= (value!206454 (_1!23651 (get!13800 lt!1374318))) (apply!9759 (transformation!6520 (rule!9468 (_1!23651 (get!13800 lt!1374318)))) (seqFromList!4787 (originalCharacters!7120 (_1!23651 (get!13800 lt!1374318)))))))))

(declare-fun d!1166277 () Bool)

(declare-fun e!2433207 () Bool)

(assert (=> d!1166277 e!2433207))

(declare-fun res!1591503 () Bool)

(assert (=> d!1166277 (=> res!1591503 e!2433207)))

(declare-fun isEmpty!24898 (Option!8940) Bool)

(assert (=> d!1166277 (= res!1591503 (isEmpty!24898 lt!1374318))))

(assert (=> d!1166277 (= lt!1374318 e!2433209)))

(declare-fun c!683391 () Bool)

(assert (=> d!1166277 (= c!683391 (and ((_ is Cons!41757) rules!2768) ((_ is Nil!41757) (t!325834 rules!2768))))))

(declare-fun lt!1374320 () Unit!60197)

(declare-fun lt!1374322 () Unit!60197)

(assert (=> d!1166277 (= lt!1374320 lt!1374322)))

(assert (=> d!1166277 (isPrefix!3615 lt!1374064 lt!1374064)))

(declare-fun lemmaIsPrefixRefl!2282 (List!41879 List!41879) Unit!60197)

(assert (=> d!1166277 (= lt!1374322 (lemmaIsPrefixRefl!2282 lt!1374064 lt!1374064))))

(declare-fun rulesValidInductive!2352 (LexerInterface!6109 List!41881) Bool)

(assert (=> d!1166277 (rulesValidInductive!2352 thiss!20629 rules!2768)))

(assert (=> d!1166277 (= (maxPrefix!3413 thiss!20629 rules!2768 lt!1374064) lt!1374318)))

(declare-fun b!3933152 () Bool)

(declare-fun lt!1374319 () Option!8940)

(declare-fun lt!1374321 () Option!8940)

(assert (=> b!3933152 (= e!2433209 (ite (and ((_ is None!8939) lt!1374319) ((_ is None!8939) lt!1374321)) None!8939 (ite ((_ is None!8939) lt!1374321) lt!1374319 (ite ((_ is None!8939) lt!1374319) lt!1374321 (ite (>= (size!31327 (_1!23651 (v!39267 lt!1374319))) (size!31327 (_1!23651 (v!39267 lt!1374321)))) lt!1374319 lt!1374321)))))))

(assert (=> b!3933152 (= lt!1374319 call!284888)))

(assert (=> b!3933152 (= lt!1374321 (maxPrefix!3413 thiss!20629 (t!325834 rules!2768) lt!1374064))))

(declare-fun b!3933153 () Bool)

(declare-fun res!1591499 () Bool)

(assert (=> b!3933153 (=> (not res!1591499) (not e!2433208))))

(declare-fun matchR!5484 (Regex!11425 List!41879) Bool)

(assert (=> b!3933153 (= res!1591499 (matchR!5484 (regex!6520 (rule!9468 (_1!23651 (get!13800 lt!1374318)))) (list!15515 (charsOf!4344 (_1!23651 (get!13800 lt!1374318))))))))

(declare-fun b!3933154 () Bool)

(declare-fun res!1591502 () Bool)

(assert (=> b!3933154 (=> (not res!1591502) (not e!2433208))))

(assert (=> b!3933154 (= res!1591502 (= (++!10798 (list!15515 (charsOf!4344 (_1!23651 (get!13800 lt!1374318)))) (_2!23651 (get!13800 lt!1374318))) lt!1374064))))

(declare-fun b!3933155 () Bool)

(assert (=> b!3933155 (= e!2433207 e!2433208)))

(declare-fun res!1591504 () Bool)

(assert (=> b!3933155 (=> (not res!1591504) (not e!2433208))))

(declare-fun isDefined!6951 (Option!8940) Bool)

(assert (=> b!3933155 (= res!1591504 (isDefined!6951 lt!1374318))))

(assert (= (and d!1166277 c!683391) b!3933147))

(assert (= (and d!1166277 (not c!683391)) b!3933152))

(assert (= (or b!3933147 b!3933152) bm!284883))

(assert (= (and d!1166277 (not res!1591503)) b!3933155))

(assert (= (and b!3933155 res!1591504) b!3933150))

(assert (= (and b!3933150 res!1591498) b!3933149))

(assert (= (and b!3933149 res!1591500) b!3933154))

(assert (= (and b!3933154 res!1591502) b!3933151))

(assert (= (and b!3933151 res!1591501) b!3933153))

(assert (= (and b!3933153 res!1591499) b!3933148))

(declare-fun m!4499799 () Bool)

(assert (=> b!3933149 m!4499799))

(declare-fun m!4499801 () Bool)

(assert (=> b!3933149 m!4499801))

(assert (=> b!3933149 m!4499023))

(assert (=> b!3933151 m!4499799))

(declare-fun m!4499803 () Bool)

(assert (=> b!3933151 m!4499803))

(assert (=> b!3933151 m!4499803))

(declare-fun m!4499805 () Bool)

(assert (=> b!3933151 m!4499805))

(declare-fun m!4499807 () Bool)

(assert (=> b!3933152 m!4499807))

(assert (=> b!3933148 m!4499799))

(declare-fun m!4499809 () Bool)

(assert (=> b!3933148 m!4499809))

(declare-fun m!4499813 () Bool)

(assert (=> bm!284883 m!4499813))

(assert (=> b!3933153 m!4499799))

(declare-fun m!4499819 () Bool)

(assert (=> b!3933153 m!4499819))

(assert (=> b!3933153 m!4499819))

(declare-fun m!4499823 () Bool)

(assert (=> b!3933153 m!4499823))

(assert (=> b!3933153 m!4499823))

(declare-fun m!4499825 () Bool)

(assert (=> b!3933153 m!4499825))

(declare-fun m!4499827 () Bool)

(assert (=> d!1166277 m!4499827))

(declare-fun m!4499829 () Bool)

(assert (=> d!1166277 m!4499829))

(declare-fun m!4499831 () Bool)

(assert (=> d!1166277 m!4499831))

(declare-fun m!4499833 () Bool)

(assert (=> d!1166277 m!4499833))

(assert (=> b!3933154 m!4499799))

(assert (=> b!3933154 m!4499819))

(assert (=> b!3933154 m!4499819))

(assert (=> b!3933154 m!4499823))

(assert (=> b!3933154 m!4499823))

(declare-fun m!4499835 () Bool)

(assert (=> b!3933154 m!4499835))

(declare-fun m!4499837 () Bool)

(assert (=> b!3933155 m!4499837))

(assert (=> b!3933150 m!4499799))

(assert (=> b!3933150 m!4499819))

(assert (=> b!3933150 m!4499819))

(assert (=> b!3933150 m!4499823))

(assert (=> b!3932621 d!1166277))

(declare-fun d!1166329 () Bool)

(assert (=> d!1166329 (= (isEmpty!24896 suffixTokens!72) ((_ is Nil!41758) suffixTokens!72))))

(assert (=> b!3932663 d!1166329))

(declare-fun d!1166331 () Bool)

(assert (=> d!1166331 (and (= lt!1374084 lt!1374084) (= (_2!23651 (v!39267 lt!1374063)) (_2!23651 lt!1374080)))))

(declare-fun lt!1374325 () Unit!60197)

(declare-fun choose!23420 (List!41879 List!41879 List!41879 List!41879) Unit!60197)

(assert (=> d!1166331 (= lt!1374325 (choose!23420 lt!1374084 (_2!23651 (v!39267 lt!1374063)) lt!1374084 (_2!23651 lt!1374080)))))

(assert (=> d!1166331 (= (++!10798 lt!1374084 (_2!23651 (v!39267 lt!1374063))) (++!10798 lt!1374084 (_2!23651 lt!1374080)))))

(assert (=> d!1166331 (= (lemmaConcatSameAndSameSizesThenSameLists!568 lt!1374084 (_2!23651 (v!39267 lt!1374063)) lt!1374084 (_2!23651 lt!1374080)) lt!1374325)))

(declare-fun bs!586322 () Bool)

(assert (= bs!586322 d!1166331))

(declare-fun m!4499839 () Bool)

(assert (=> bs!586322 m!4499839))

(assert (=> bs!586322 m!4498957))

(declare-fun m!4499841 () Bool)

(assert (=> bs!586322 m!4499841))

(assert (=> b!3932622 d!1166331))

(declare-fun d!1166333 () Bool)

(assert (=> d!1166333 (not (= (lexList!1877 thiss!20629 rules!2768 (_2!23651 lt!1374080)) (tuple2!41037 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1374326 () Unit!60197)

(assert (=> d!1166333 (= lt!1374326 (choose!23418 thiss!20629 rules!2768 suffix!1176 (_2!23651 lt!1374080) suffixTokens!72 suffixResult!91))))

(assert (=> d!1166333 (not (isEmpty!24895 rules!2768))))

(assert (=> d!1166333 (= (lemmaLexWithSmallerInputCannotProduceSameResults!120 thiss!20629 rules!2768 suffix!1176 (_2!23651 lt!1374080) suffixTokens!72 suffixResult!91) lt!1374326)))

(declare-fun bs!586323 () Bool)

(assert (= bs!586323 d!1166333))

(assert (=> bs!586323 m!4498949))

(declare-fun m!4499847 () Bool)

(assert (=> bs!586323 m!4499847))

(assert (=> bs!586323 m!4498895))

(assert (=> b!3932622 d!1166333))

(declare-fun d!1166335 () Bool)

(declare-fun lt!1374327 () Int)

(assert (=> d!1166335 (>= lt!1374327 0)))

(declare-fun e!2433240 () Int)

(assert (=> d!1166335 (= lt!1374327 e!2433240)))

(declare-fun c!683392 () Bool)

(assert (=> d!1166335 (= c!683392 ((_ is Nil!41755) suffix!1176))))

(assert (=> d!1166335 (= (size!31328 suffix!1176) lt!1374327)))

(declare-fun b!3933195 () Bool)

(assert (=> b!3933195 (= e!2433240 0)))

(declare-fun b!3933196 () Bool)

(assert (=> b!3933196 (= e!2433240 (+ 1 (size!31328 (t!325832 suffix!1176))))))

(assert (= (and d!1166335 c!683392) b!3933195))

(assert (= (and d!1166335 (not c!683392)) b!3933196))

(declare-fun m!4499849 () Bool)

(assert (=> b!3933196 m!4499849))

(assert (=> b!3932664 d!1166335))

(declare-fun d!1166337 () Bool)

(declare-fun lt!1374328 () Int)

(assert (=> d!1166337 (>= lt!1374328 0)))

(declare-fun e!2433243 () Int)

(assert (=> d!1166337 (= lt!1374328 e!2433243)))

(declare-fun c!683393 () Bool)

(assert (=> d!1166337 (= c!683393 ((_ is Nil!41755) (_2!23651 (v!39267 lt!1374063))))))

(assert (=> d!1166337 (= (size!31328 (_2!23651 (v!39267 lt!1374063))) lt!1374328)))

(declare-fun b!3933202 () Bool)

(assert (=> b!3933202 (= e!2433243 0)))

(declare-fun b!3933203 () Bool)

(assert (=> b!3933203 (= e!2433243 (+ 1 (size!31328 (t!325832 (_2!23651 (v!39267 lt!1374063))))))))

(assert (= (and d!1166337 c!683393) b!3933202))

(assert (= (and d!1166337 (not c!683393)) b!3933203))

(declare-fun m!4499851 () Bool)

(assert (=> b!3933203 m!4499851))

(assert (=> b!3932664 d!1166337))

(declare-fun d!1166339 () Bool)

(declare-fun e!2433247 () Bool)

(assert (=> d!1166339 e!2433247))

(declare-fun c!683394 () Bool)

(declare-fun lt!1374329 () tuple2!41036)

(assert (=> d!1166339 (= c!683394 (> (size!31331 (_1!23652 lt!1374329)) 0))))

(declare-fun e!2433246 () tuple2!41036)

(assert (=> d!1166339 (= lt!1374329 e!2433246)))

(declare-fun c!683395 () Bool)

(declare-fun lt!1374330 () Option!8940)

(assert (=> d!1166339 (= c!683395 ((_ is Some!8939) lt!1374330))))

(assert (=> d!1166339 (= lt!1374330 (maxPrefix!3413 thiss!20629 rules!2768 prefix!426))))

(assert (=> d!1166339 (= (lexList!1877 thiss!20629 rules!2768 prefix!426) lt!1374329)))

(declare-fun b!3933205 () Bool)

(declare-fun e!2433245 () Bool)

(assert (=> b!3933205 (= e!2433247 e!2433245)))

(declare-fun res!1591505 () Bool)

(assert (=> b!3933205 (= res!1591505 (< (size!31328 (_2!23652 lt!1374329)) (size!31328 prefix!426)))))

(assert (=> b!3933205 (=> (not res!1591505) (not e!2433245))))

(declare-fun b!3933206 () Bool)

(declare-fun lt!1374331 () tuple2!41036)

(assert (=> b!3933206 (= e!2433246 (tuple2!41037 (Cons!41758 (_1!23651 (v!39267 lt!1374330)) (_1!23652 lt!1374331)) (_2!23652 lt!1374331)))))

(assert (=> b!3933206 (= lt!1374331 (lexList!1877 thiss!20629 rules!2768 (_2!23651 (v!39267 lt!1374330))))))

(declare-fun b!3933207 () Bool)

(assert (=> b!3933207 (= e!2433247 (= (_2!23652 lt!1374329) prefix!426))))

(declare-fun b!3933208 () Bool)

(assert (=> b!3933208 (= e!2433245 (not (isEmpty!24896 (_1!23652 lt!1374329))))))

(declare-fun b!3933209 () Bool)

(assert (=> b!3933209 (= e!2433246 (tuple2!41037 Nil!41758 prefix!426))))

(assert (= (and d!1166339 c!683395) b!3933206))

(assert (= (and d!1166339 (not c!683395)) b!3933209))

(assert (= (and d!1166339 c!683394) b!3933205))

(assert (= (and d!1166339 (not c!683394)) b!3933207))

(assert (= (and b!3933205 res!1591505) b!3933208))

(declare-fun m!4499853 () Bool)

(assert (=> d!1166339 m!4499853))

(declare-fun m!4499855 () Bool)

(assert (=> d!1166339 m!4499855))

(declare-fun m!4499857 () Bool)

(assert (=> b!3933205 m!4499857))

(assert (=> b!3933205 m!4498921))

(declare-fun m!4499859 () Bool)

(assert (=> b!3933206 m!4499859))

(declare-fun m!4499861 () Bool)

(assert (=> b!3933208 m!4499861))

(assert (=> b!3932643 d!1166339))

(declare-fun d!1166341 () Bool)

(assert (=> d!1166341 (= (isEmpty!24895 rules!2768) ((_ is Nil!41757) rules!2768))))

(assert (=> b!3932623 d!1166341))

(declare-fun e!2433249 () Bool)

(declare-fun b!3933213 () Bool)

(declare-fun lt!1374332 () List!41882)

(assert (=> b!3933213 (= e!2433249 (or (not (= (_1!23652 lt!1374069) Nil!41758)) (= lt!1374332 lt!1374058)))))

(declare-fun b!3933211 () Bool)

(declare-fun e!2433248 () List!41882)

(assert (=> b!3933211 (= e!2433248 (Cons!41758 (h!47178 lt!1374058) (++!10797 (t!325835 lt!1374058) (_1!23652 lt!1374069))))))

(declare-fun d!1166343 () Bool)

(assert (=> d!1166343 e!2433249))

(declare-fun res!1591506 () Bool)

(assert (=> d!1166343 (=> (not res!1591506) (not e!2433249))))

(assert (=> d!1166343 (= res!1591506 (= (content!6292 lt!1374332) ((_ map or) (content!6292 lt!1374058) (content!6292 (_1!23652 lt!1374069)))))))

(assert (=> d!1166343 (= lt!1374332 e!2433248)))

(declare-fun c!683396 () Bool)

(assert (=> d!1166343 (= c!683396 ((_ is Nil!41758) lt!1374058))))

(assert (=> d!1166343 (= (++!10797 lt!1374058 (_1!23652 lt!1374069)) lt!1374332)))

(declare-fun b!3933210 () Bool)

(assert (=> b!3933210 (= e!2433248 (_1!23652 lt!1374069))))

(declare-fun b!3933212 () Bool)

(declare-fun res!1591507 () Bool)

(assert (=> b!3933212 (=> (not res!1591507) (not e!2433249))))

(assert (=> b!3933212 (= res!1591507 (= (size!31331 lt!1374332) (+ (size!31331 lt!1374058) (size!31331 (_1!23652 lt!1374069)))))))

(assert (= (and d!1166343 c!683396) b!3933210))

(assert (= (and d!1166343 (not c!683396)) b!3933211))

(assert (= (and d!1166343 res!1591506) b!3933212))

(assert (= (and b!3933212 res!1591507) b!3933213))

(declare-fun m!4499863 () Bool)

(assert (=> b!3933211 m!4499863))

(declare-fun m!4499865 () Bool)

(assert (=> d!1166343 m!4499865))

(assert (=> d!1166343 m!4499499))

(declare-fun m!4499867 () Bool)

(assert (=> d!1166343 m!4499867))

(declare-fun m!4499869 () Bool)

(assert (=> b!3933212 m!4499869))

(assert (=> b!3933212 m!4499503))

(declare-fun m!4499871 () Bool)

(assert (=> b!3933212 m!4499871))

(assert (=> b!3932624 d!1166343))

(declare-fun d!1166345 () Bool)

(declare-fun e!2433252 () Bool)

(assert (=> d!1166345 e!2433252))

(declare-fun c!683397 () Bool)

(declare-fun lt!1374333 () tuple2!41036)

(assert (=> d!1166345 (= c!683397 (> (size!31331 (_1!23652 lt!1374333)) 0))))

(declare-fun e!2433251 () tuple2!41036)

(assert (=> d!1166345 (= lt!1374333 e!2433251)))

(declare-fun c!683398 () Bool)

(declare-fun lt!1374334 () Option!8940)

(assert (=> d!1166345 (= c!683398 ((_ is Some!8939) lt!1374334))))

(assert (=> d!1166345 (= lt!1374334 (maxPrefix!3413 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1166345 (= (lexList!1877 thiss!20629 rules!2768 suffix!1176) lt!1374333)))

(declare-fun b!3933214 () Bool)

(declare-fun e!2433250 () Bool)

(assert (=> b!3933214 (= e!2433252 e!2433250)))

(declare-fun res!1591508 () Bool)

(assert (=> b!3933214 (= res!1591508 (< (size!31328 (_2!23652 lt!1374333)) (size!31328 suffix!1176)))))

(assert (=> b!3933214 (=> (not res!1591508) (not e!2433250))))

(declare-fun b!3933215 () Bool)

(declare-fun lt!1374335 () tuple2!41036)

(assert (=> b!3933215 (= e!2433251 (tuple2!41037 (Cons!41758 (_1!23651 (v!39267 lt!1374334)) (_1!23652 lt!1374335)) (_2!23652 lt!1374335)))))

(assert (=> b!3933215 (= lt!1374335 (lexList!1877 thiss!20629 rules!2768 (_2!23651 (v!39267 lt!1374334))))))

(declare-fun b!3933216 () Bool)

(assert (=> b!3933216 (= e!2433252 (= (_2!23652 lt!1374333) suffix!1176))))

(declare-fun b!3933217 () Bool)

(assert (=> b!3933217 (= e!2433250 (not (isEmpty!24896 (_1!23652 lt!1374333))))))

(declare-fun b!3933218 () Bool)

(assert (=> b!3933218 (= e!2433251 (tuple2!41037 Nil!41758 suffix!1176))))

(assert (= (and d!1166345 c!683398) b!3933215))

(assert (= (and d!1166345 (not c!683398)) b!3933218))

(assert (= (and d!1166345 c!683397) b!3933214))

(assert (= (and d!1166345 (not c!683397)) b!3933216))

(assert (= (and b!3933214 res!1591508) b!3933217))

(declare-fun m!4499873 () Bool)

(assert (=> d!1166345 m!4499873))

(declare-fun m!4499875 () Bool)

(assert (=> d!1166345 m!4499875))

(declare-fun m!4499877 () Bool)

(assert (=> b!3933214 m!4499877))

(assert (=> b!3933214 m!4498879))

(declare-fun m!4499879 () Bool)

(assert (=> b!3933215 m!4499879))

(declare-fun m!4499881 () Bool)

(assert (=> b!3933217 m!4499881))

(assert (=> b!3932666 d!1166345))

(assert (=> b!3932645 d!1166267))

(assert (=> b!3932645 d!1166269))

(declare-fun d!1166347 () Bool)

(assert (=> d!1166347 (= lt!1374084 prefix!426)))

(declare-fun lt!1374338 () Unit!60197)

(declare-fun choose!23422 (List!41879 List!41879 List!41879) Unit!60197)

(assert (=> d!1166347 (= lt!1374338 (choose!23422 lt!1374084 prefix!426 lt!1374064))))

(assert (=> d!1166347 (isPrefix!3615 lt!1374084 lt!1374064)))

(assert (=> d!1166347 (= (lemmaIsPrefixSameLengthThenSameList!811 lt!1374084 prefix!426 lt!1374064) lt!1374338)))

(declare-fun bs!586324 () Bool)

(assert (= bs!586324 d!1166347))

(declare-fun m!4499883 () Bool)

(assert (=> bs!586324 m!4499883))

(assert (=> bs!586324 m!4499145))

(assert (=> b!3932645 d!1166347))

(declare-fun d!1166349 () Bool)

(assert (=> d!1166349 (= (_2!23651 (v!39267 lt!1374063)) suffix!1176)))

(declare-fun lt!1374339 () Unit!60197)

(assert (=> d!1166349 (= lt!1374339 (choose!23407 lt!1374084 (_2!23651 (v!39267 lt!1374063)) prefix!426 suffix!1176 lt!1374064))))

(assert (=> d!1166349 (isPrefix!3615 lt!1374084 lt!1374064)))

(assert (=> d!1166349 (= (lemmaSamePrefixThenSameSuffix!1836 lt!1374084 (_2!23651 (v!39267 lt!1374063)) prefix!426 suffix!1176 lt!1374064) lt!1374339)))

(declare-fun bs!586325 () Bool)

(assert (= bs!586325 d!1166349))

(declare-fun m!4499885 () Bool)

(assert (=> bs!586325 m!4499885))

(assert (=> bs!586325 m!4499145))

(assert (=> b!3932645 d!1166349))

(declare-fun b!3933219 () Bool)

(declare-fun e!2433254 () Bool)

(assert (=> b!3933219 (= e!2433254 (inv!17 (value!206454 (h!47178 prefixTokens!80))))))

(declare-fun d!1166351 () Bool)

(declare-fun c!683399 () Bool)

(assert (=> d!1166351 (= c!683399 ((_ is IntegerValue!20250) (value!206454 (h!47178 prefixTokens!80))))))

(declare-fun e!2433255 () Bool)

(assert (=> d!1166351 (= (inv!21 (value!206454 (h!47178 prefixTokens!80))) e!2433255)))

(declare-fun b!3933220 () Bool)

(declare-fun res!1591509 () Bool)

(declare-fun e!2433253 () Bool)

(assert (=> b!3933220 (=> res!1591509 e!2433253)))

(assert (=> b!3933220 (= res!1591509 (not ((_ is IntegerValue!20252) (value!206454 (h!47178 prefixTokens!80)))))))

(assert (=> b!3933220 (= e!2433254 e!2433253)))

(declare-fun b!3933221 () Bool)

(assert (=> b!3933221 (= e!2433255 (inv!16 (value!206454 (h!47178 prefixTokens!80))))))

(declare-fun b!3933222 () Bool)

(assert (=> b!3933222 (= e!2433253 (inv!15 (value!206454 (h!47178 prefixTokens!80))))))

(declare-fun b!3933223 () Bool)

(assert (=> b!3933223 (= e!2433255 e!2433254)))

(declare-fun c!683400 () Bool)

(assert (=> b!3933223 (= c!683400 ((_ is IntegerValue!20251) (value!206454 (h!47178 prefixTokens!80))))))

(assert (= (and d!1166351 c!683399) b!3933221))

(assert (= (and d!1166351 (not c!683399)) b!3933223))

(assert (= (and b!3933223 c!683400) b!3933219))

(assert (= (and b!3933223 (not c!683400)) b!3933220))

(assert (= (and b!3933220 (not res!1591509)) b!3933222))

(declare-fun m!4499887 () Bool)

(assert (=> b!3933219 m!4499887))

(declare-fun m!4499889 () Bool)

(assert (=> b!3933221 m!4499889))

(declare-fun m!4499891 () Bool)

(assert (=> b!3933222 m!4499891))

(assert (=> b!3932646 d!1166351))

(declare-fun b!3933226 () Bool)

(declare-fun res!1591511 () Bool)

(declare-fun e!2433256 () Bool)

(assert (=> b!3933226 (=> (not res!1591511) (not e!2433256))))

(declare-fun lt!1374340 () List!41879)

(assert (=> b!3933226 (= res!1591511 (= (size!31328 lt!1374340) (+ (size!31328 lt!1374074) (size!31328 suffix!1176))))))

(declare-fun d!1166353 () Bool)

(assert (=> d!1166353 e!2433256))

(declare-fun res!1591510 () Bool)

(assert (=> d!1166353 (=> (not res!1591510) (not e!2433256))))

(assert (=> d!1166353 (= res!1591510 (= (content!6293 lt!1374340) ((_ map or) (content!6293 lt!1374074) (content!6293 suffix!1176))))))

(declare-fun e!2433257 () List!41879)

(assert (=> d!1166353 (= lt!1374340 e!2433257)))

(declare-fun c!683401 () Bool)

(assert (=> d!1166353 (= c!683401 ((_ is Nil!41755) lt!1374074))))

(assert (=> d!1166353 (= (++!10798 lt!1374074 suffix!1176) lt!1374340)))

(declare-fun b!3933227 () Bool)

(assert (=> b!3933227 (= e!2433256 (or (not (= suffix!1176 Nil!41755)) (= lt!1374340 lt!1374074)))))

(declare-fun b!3933225 () Bool)

(assert (=> b!3933225 (= e!2433257 (Cons!41755 (h!47175 lt!1374074) (++!10798 (t!325832 lt!1374074) suffix!1176)))))

(declare-fun b!3933224 () Bool)

(assert (=> b!3933224 (= e!2433257 suffix!1176)))

(assert (= (and d!1166353 c!683401) b!3933224))

(assert (= (and d!1166353 (not c!683401)) b!3933225))

(assert (= (and d!1166353 res!1591510) b!3933226))

(assert (= (and b!3933226 res!1591511) b!3933227))

(declare-fun m!4499893 () Bool)

(assert (=> b!3933226 m!4499893))

(declare-fun m!4499895 () Bool)

(assert (=> b!3933226 m!4499895))

(assert (=> b!3933226 m!4498879))

(declare-fun m!4499897 () Bool)

(assert (=> d!1166353 m!4499897))

(declare-fun m!4499899 () Bool)

(assert (=> d!1166353 m!4499899))

(assert (=> d!1166353 m!4499531))

(declare-fun m!4499901 () Bool)

(assert (=> b!3933225 m!4499901))

(assert (=> b!3932626 d!1166353))

(declare-fun d!1166355 () Bool)

(declare-fun e!2433260 () Bool)

(assert (=> d!1166355 e!2433260))

(declare-fun c!683402 () Bool)

(declare-fun lt!1374341 () tuple2!41036)

(assert (=> d!1166355 (= c!683402 (> (size!31331 (_1!23652 lt!1374341)) 0))))

(declare-fun e!2433259 () tuple2!41036)

(assert (=> d!1166355 (= lt!1374341 e!2433259)))

(declare-fun c!683403 () Bool)

(declare-fun lt!1374342 () Option!8940)

(assert (=> d!1166355 (= c!683403 ((_ is Some!8939) lt!1374342))))

(assert (=> d!1166355 (= lt!1374342 (maxPrefix!3413 thiss!20629 rules!2768 lt!1374048))))

(assert (=> d!1166355 (= (lexList!1877 thiss!20629 rules!2768 lt!1374048) lt!1374341)))

(declare-fun b!3933228 () Bool)

(declare-fun e!2433258 () Bool)

(assert (=> b!3933228 (= e!2433260 e!2433258)))

(declare-fun res!1591512 () Bool)

(assert (=> b!3933228 (= res!1591512 (< (size!31328 (_2!23652 lt!1374341)) (size!31328 lt!1374048)))))

(assert (=> b!3933228 (=> (not res!1591512) (not e!2433258))))

(declare-fun b!3933229 () Bool)

(declare-fun lt!1374343 () tuple2!41036)

(assert (=> b!3933229 (= e!2433259 (tuple2!41037 (Cons!41758 (_1!23651 (v!39267 lt!1374342)) (_1!23652 lt!1374343)) (_2!23652 lt!1374343)))))

(assert (=> b!3933229 (= lt!1374343 (lexList!1877 thiss!20629 rules!2768 (_2!23651 (v!39267 lt!1374342))))))

(declare-fun b!3933230 () Bool)

(assert (=> b!3933230 (= e!2433260 (= (_2!23652 lt!1374341) lt!1374048))))

(declare-fun b!3933231 () Bool)

(assert (=> b!3933231 (= e!2433258 (not (isEmpty!24896 (_1!23652 lt!1374341))))))

(declare-fun b!3933232 () Bool)

(assert (=> b!3933232 (= e!2433259 (tuple2!41037 Nil!41758 lt!1374048))))

(assert (= (and d!1166355 c!683403) b!3933229))

(assert (= (and d!1166355 (not c!683403)) b!3933232))

(assert (= (and d!1166355 c!683402) b!3933228))

(assert (= (and d!1166355 (not c!683402)) b!3933230))

(assert (= (and b!3933228 res!1591512) b!3933231))

(declare-fun m!4499903 () Bool)

(assert (=> d!1166355 m!4499903))

(declare-fun m!4499905 () Bool)

(assert (=> d!1166355 m!4499905))

(declare-fun m!4499907 () Bool)

(assert (=> b!3933228 m!4499907))

(assert (=> b!3933228 m!4499117))

(declare-fun m!4499909 () Bool)

(assert (=> b!3933229 m!4499909))

(declare-fun m!4499911 () Bool)

(assert (=> b!3933231 m!4499911))

(assert (=> b!3932647 d!1166355))

(declare-fun d!1166357 () Bool)

(declare-fun e!2433263 () Bool)

(assert (=> d!1166357 e!2433263))

(declare-fun c!683404 () Bool)

(declare-fun lt!1374344 () tuple2!41036)

(assert (=> d!1166357 (= c!683404 (> (size!31331 (_1!23652 lt!1374344)) 0))))

(declare-fun e!2433262 () tuple2!41036)

(assert (=> d!1166357 (= lt!1374344 e!2433262)))

(declare-fun c!683405 () Bool)

(declare-fun lt!1374345 () Option!8940)

(assert (=> d!1166357 (= c!683405 ((_ is Some!8939) lt!1374345))))

(assert (=> d!1166357 (= lt!1374345 (maxPrefix!3413 thiss!20629 rules!2768 (_2!23651 lt!1374080)))))

(assert (=> d!1166357 (= (lexList!1877 thiss!20629 rules!2768 (_2!23651 lt!1374080)) lt!1374344)))

(declare-fun b!3933233 () Bool)

(declare-fun e!2433261 () Bool)

(assert (=> b!3933233 (= e!2433263 e!2433261)))

(declare-fun res!1591513 () Bool)

(assert (=> b!3933233 (= res!1591513 (< (size!31328 (_2!23652 lt!1374344)) (size!31328 (_2!23651 lt!1374080))))))

(assert (=> b!3933233 (=> (not res!1591513) (not e!2433261))))

(declare-fun b!3933234 () Bool)

(declare-fun lt!1374346 () tuple2!41036)

(assert (=> b!3933234 (= e!2433262 (tuple2!41037 (Cons!41758 (_1!23651 (v!39267 lt!1374345)) (_1!23652 lt!1374346)) (_2!23652 lt!1374346)))))

(assert (=> b!3933234 (= lt!1374346 (lexList!1877 thiss!20629 rules!2768 (_2!23651 (v!39267 lt!1374345))))))

(declare-fun b!3933235 () Bool)

(assert (=> b!3933235 (= e!2433263 (= (_2!23652 lt!1374344) (_2!23651 lt!1374080)))))

(declare-fun b!3933236 () Bool)

(assert (=> b!3933236 (= e!2433261 (not (isEmpty!24896 (_1!23652 lt!1374344))))))

(declare-fun b!3933237 () Bool)

(assert (=> b!3933237 (= e!2433262 (tuple2!41037 Nil!41758 (_2!23651 lt!1374080)))))

(assert (= (and d!1166357 c!683405) b!3933234))

(assert (= (and d!1166357 (not c!683405)) b!3933237))

(assert (= (and d!1166357 c!683404) b!3933233))

(assert (= (and d!1166357 (not c!683404)) b!3933235))

(assert (= (and b!3933233 res!1591513) b!3933236))

(declare-fun m!4499913 () Bool)

(assert (=> d!1166357 m!4499913))

(declare-fun m!4499915 () Bool)

(assert (=> d!1166357 m!4499915))

(declare-fun m!4499917 () Bool)

(assert (=> b!3933233 m!4499917))

(assert (=> b!3933233 m!4499017))

(declare-fun m!4499919 () Bool)

(assert (=> b!3933234 m!4499919))

(declare-fun m!4499921 () Bool)

(assert (=> b!3933236 m!4499921))

(assert (=> bm!284877 d!1166357))

(declare-fun d!1166359 () Bool)

(assert (=> d!1166359 (= (get!13800 lt!1374063) (v!39267 lt!1374063))))

(assert (=> b!3932648 d!1166359))

(declare-fun b!3933256 () Bool)

(declare-fun res!1591533 () Bool)

(declare-fun e!2433274 () Bool)

(assert (=> b!3933256 (=> (not res!1591533) (not e!2433274))))

(declare-fun lt!1374360 () Option!8940)

(assert (=> b!3933256 (= res!1591533 (= (rule!9468 (_1!23651 (get!13800 lt!1374360))) (rule!9468 (_1!23651 (v!39267 lt!1374063)))))))

(declare-fun b!3933257 () Bool)

(assert (=> b!3933257 (= e!2433274 (= (size!31327 (_1!23651 (get!13800 lt!1374360))) (size!31328 (originalCharacters!7120 (_1!23651 (get!13800 lt!1374360))))))))

(declare-fun d!1166361 () Bool)

(declare-fun e!2433275 () Bool)

(assert (=> d!1166361 e!2433275))

(declare-fun res!1591529 () Bool)

(assert (=> d!1166361 (=> res!1591529 e!2433275)))

(assert (=> d!1166361 (= res!1591529 (isEmpty!24898 lt!1374360))))

(declare-fun e!2433273 () Option!8940)

(assert (=> d!1166361 (= lt!1374360 e!2433273)))

(declare-fun c!683408 () Bool)

(declare-datatypes ((tuple2!41040 0))(
  ( (tuple2!41041 (_1!23654 List!41879) (_2!23654 List!41879)) )
))
(declare-fun lt!1374359 () tuple2!41040)

(assert (=> d!1166361 (= c!683408 (isEmpty!24894 (_1!23654 lt!1374359)))))

(declare-fun findLongestMatch!1177 (Regex!11425 List!41879) tuple2!41040)

(assert (=> d!1166361 (= lt!1374359 (findLongestMatch!1177 (regex!6520 (rule!9468 (_1!23651 (v!39267 lt!1374063)))) lt!1374064))))

(assert (=> d!1166361 (ruleValid!2468 thiss!20629 (rule!9468 (_1!23651 (v!39267 lt!1374063))))))

(assert (=> d!1166361 (= (maxPrefixOneRule!2483 thiss!20629 (rule!9468 (_1!23651 (v!39267 lt!1374063))) lt!1374064) lt!1374360)))

(declare-fun b!3933258 () Bool)

(declare-fun res!1591531 () Bool)

(assert (=> b!3933258 (=> (not res!1591531) (not e!2433274))))

(assert (=> b!3933258 (= res!1591531 (< (size!31328 (_2!23651 (get!13800 lt!1374360))) (size!31328 lt!1374064)))))

(declare-fun b!3933259 () Bool)

(assert (=> b!3933259 (= e!2433275 e!2433274)))

(declare-fun res!1591530 () Bool)

(assert (=> b!3933259 (=> (not res!1591530) (not e!2433274))))

(assert (=> b!3933259 (= res!1591530 (matchR!5484 (regex!6520 (rule!9468 (_1!23651 (v!39267 lt!1374063)))) (list!15515 (charsOf!4344 (_1!23651 (get!13800 lt!1374360))))))))

(declare-fun b!3933260 () Bool)

(declare-fun e!2433272 () Bool)

(declare-fun findLongestMatchInner!1264 (Regex!11425 List!41879 Int List!41879 List!41879 Int) tuple2!41040)

(assert (=> b!3933260 (= e!2433272 (matchR!5484 (regex!6520 (rule!9468 (_1!23651 (v!39267 lt!1374063)))) (_1!23654 (findLongestMatchInner!1264 (regex!6520 (rule!9468 (_1!23651 (v!39267 lt!1374063)))) Nil!41755 (size!31328 Nil!41755) lt!1374064 lt!1374064 (size!31328 lt!1374064)))))))

(declare-fun b!3933261 () Bool)

(declare-fun size!31332 (BalanceConc!25056) Int)

(assert (=> b!3933261 (= e!2433273 (Some!8939 (tuple2!41035 (Token!12179 (apply!9759 (transformation!6520 (rule!9468 (_1!23651 (v!39267 lt!1374063)))) (seqFromList!4787 (_1!23654 lt!1374359))) (rule!9468 (_1!23651 (v!39267 lt!1374063))) (size!31332 (seqFromList!4787 (_1!23654 lt!1374359))) (_1!23654 lt!1374359)) (_2!23654 lt!1374359))))))

(declare-fun lt!1374358 () Unit!60197)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1237 (Regex!11425 List!41879) Unit!60197)

(assert (=> b!3933261 (= lt!1374358 (longestMatchIsAcceptedByMatchOrIsEmpty!1237 (regex!6520 (rule!9468 (_1!23651 (v!39267 lt!1374063)))) lt!1374064))))

(declare-fun res!1591532 () Bool)

(assert (=> b!3933261 (= res!1591532 (isEmpty!24894 (_1!23654 (findLongestMatchInner!1264 (regex!6520 (rule!9468 (_1!23651 (v!39267 lt!1374063)))) Nil!41755 (size!31328 Nil!41755) lt!1374064 lt!1374064 (size!31328 lt!1374064)))))))

(assert (=> b!3933261 (=> res!1591532 e!2433272)))

(assert (=> b!3933261 e!2433272))

(declare-fun lt!1374357 () Unit!60197)

(assert (=> b!3933261 (= lt!1374357 lt!1374358)))

(declare-fun lt!1374361 () Unit!60197)

(declare-fun lemmaSemiInverse!1770 (TokenValueInjection!12928 BalanceConc!25056) Unit!60197)

(assert (=> b!3933261 (= lt!1374361 (lemmaSemiInverse!1770 (transformation!6520 (rule!9468 (_1!23651 (v!39267 lt!1374063)))) (seqFromList!4787 (_1!23654 lt!1374359))))))

(declare-fun b!3933262 () Bool)

(declare-fun res!1591534 () Bool)

(assert (=> b!3933262 (=> (not res!1591534) (not e!2433274))))

(assert (=> b!3933262 (= res!1591534 (= (++!10798 (list!15515 (charsOf!4344 (_1!23651 (get!13800 lt!1374360)))) (_2!23651 (get!13800 lt!1374360))) lt!1374064))))

(declare-fun b!3933263 () Bool)

(assert (=> b!3933263 (= e!2433273 None!8939)))

(declare-fun b!3933264 () Bool)

(declare-fun res!1591528 () Bool)

(assert (=> b!3933264 (=> (not res!1591528) (not e!2433274))))

(assert (=> b!3933264 (= res!1591528 (= (value!206454 (_1!23651 (get!13800 lt!1374360))) (apply!9759 (transformation!6520 (rule!9468 (_1!23651 (get!13800 lt!1374360)))) (seqFromList!4787 (originalCharacters!7120 (_1!23651 (get!13800 lt!1374360)))))))))

(assert (= (and d!1166361 c!683408) b!3933263))

(assert (= (and d!1166361 (not c!683408)) b!3933261))

(assert (= (and b!3933261 (not res!1591532)) b!3933260))

(assert (= (and d!1166361 (not res!1591529)) b!3933259))

(assert (= (and b!3933259 res!1591530) b!3933262))

(assert (= (and b!3933262 res!1591534) b!3933258))

(assert (= (and b!3933258 res!1591531) b!3933256))

(assert (= (and b!3933256 res!1591533) b!3933264))

(assert (= (and b!3933264 res!1591528) b!3933257))

(declare-fun m!4499923 () Bool)

(assert (=> b!3933261 m!4499923))

(declare-fun m!4499925 () Bool)

(assert (=> b!3933261 m!4499925))

(assert (=> b!3933261 m!4499923))

(declare-fun m!4499927 () Bool)

(assert (=> b!3933261 m!4499927))

(declare-fun m!4499929 () Bool)

(assert (=> b!3933261 m!4499929))

(declare-fun m!4499931 () Bool)

(assert (=> b!3933261 m!4499931))

(assert (=> b!3933261 m!4499023))

(declare-fun m!4499933 () Bool)

(assert (=> b!3933261 m!4499933))

(assert (=> b!3933261 m!4499023))

(assert (=> b!3933261 m!4499923))

(declare-fun m!4499935 () Bool)

(assert (=> b!3933261 m!4499935))

(assert (=> b!3933261 m!4499931))

(assert (=> b!3933261 m!4499923))

(declare-fun m!4499937 () Bool)

(assert (=> b!3933261 m!4499937))

(declare-fun m!4499939 () Bool)

(assert (=> b!3933256 m!4499939))

(assert (=> b!3933257 m!4499939))

(declare-fun m!4499941 () Bool)

(assert (=> b!3933257 m!4499941))

(assert (=> b!3933260 m!4499931))

(assert (=> b!3933260 m!4499023))

(assert (=> b!3933260 m!4499931))

(assert (=> b!3933260 m!4499023))

(assert (=> b!3933260 m!4499933))

(declare-fun m!4499943 () Bool)

(assert (=> b!3933260 m!4499943))

(assert (=> b!3933258 m!4499939))

(declare-fun m!4499945 () Bool)

(assert (=> b!3933258 m!4499945))

(assert (=> b!3933258 m!4499023))

(assert (=> b!3933264 m!4499939))

(declare-fun m!4499947 () Bool)

(assert (=> b!3933264 m!4499947))

(assert (=> b!3933264 m!4499947))

(declare-fun m!4499949 () Bool)

(assert (=> b!3933264 m!4499949))

(assert (=> b!3933259 m!4499939))

(declare-fun m!4499951 () Bool)

(assert (=> b!3933259 m!4499951))

(assert (=> b!3933259 m!4499951))

(declare-fun m!4499953 () Bool)

(assert (=> b!3933259 m!4499953))

(assert (=> b!3933259 m!4499953))

(declare-fun m!4499955 () Bool)

(assert (=> b!3933259 m!4499955))

(assert (=> b!3933262 m!4499939))

(assert (=> b!3933262 m!4499951))

(assert (=> b!3933262 m!4499951))

(assert (=> b!3933262 m!4499953))

(assert (=> b!3933262 m!4499953))

(declare-fun m!4499957 () Bool)

(assert (=> b!3933262 m!4499957))

(declare-fun m!4499959 () Bool)

(assert (=> d!1166361 m!4499959))

(declare-fun m!4499961 () Bool)

(assert (=> d!1166361 m!4499961))

(declare-fun m!4499963 () Bool)

(assert (=> d!1166361 m!4499963))

(assert (=> d!1166361 m!4498963))

(assert (=> b!3932648 d!1166361))

(declare-fun d!1166363 () Bool)

(declare-fun lt!1374362 () Int)

(assert (=> d!1166363 (>= lt!1374362 0)))

(declare-fun e!2433276 () Int)

(assert (=> d!1166363 (= lt!1374362 e!2433276)))

(declare-fun c!683409 () Bool)

(assert (=> d!1166363 (= c!683409 ((_ is Nil!41755) (_2!23651 lt!1374080)))))

(assert (=> d!1166363 (= (size!31328 (_2!23651 lt!1374080)) lt!1374362)))

(declare-fun b!3933265 () Bool)

(assert (=> b!3933265 (= e!2433276 0)))

(declare-fun b!3933266 () Bool)

(assert (=> b!3933266 (= e!2433276 (+ 1 (size!31328 (t!325832 (_2!23651 lt!1374080)))))))

(assert (= (and d!1166363 c!683409) b!3933265))

(assert (= (and d!1166363 (not c!683409)) b!3933266))

(declare-fun m!4499965 () Bool)

(assert (=> b!3933266 m!4499965))

(assert (=> b!3932648 d!1166363))

(declare-fun d!1166365 () Bool)

(assert (=> d!1166365 (= (maxPrefixOneRule!2483 thiss!20629 (rule!9468 (_1!23651 (v!39267 lt!1374063))) lt!1374064) (Some!8939 (tuple2!41035 (Token!12179 (apply!9759 (transformation!6520 (rule!9468 (_1!23651 (v!39267 lt!1374063)))) (seqFromList!4787 lt!1374084)) (rule!9468 (_1!23651 (v!39267 lt!1374063))) (size!31328 lt!1374084) lt!1374084) (_2!23651 (v!39267 lt!1374063)))))))

(declare-fun lt!1374365 () Unit!60197)

(declare-fun choose!23423 (LexerInterface!6109 List!41881 List!41879 List!41879 List!41879 Rule!12840) Unit!60197)

(assert (=> d!1166365 (= lt!1374365 (choose!23423 thiss!20629 rules!2768 lt!1374084 lt!1374064 (_2!23651 (v!39267 lt!1374063)) (rule!9468 (_1!23651 (v!39267 lt!1374063)))))))

(assert (=> d!1166365 (not (isEmpty!24895 rules!2768))))

(assert (=> d!1166365 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1351 thiss!20629 rules!2768 lt!1374084 lt!1374064 (_2!23651 (v!39267 lt!1374063)) (rule!9468 (_1!23651 (v!39267 lt!1374063)))) lt!1374365)))

(declare-fun bs!586326 () Bool)

(assert (= bs!586326 d!1166365))

(assert (=> bs!586326 m!4498895))

(assert (=> bs!586326 m!4498983))

(assert (=> bs!586326 m!4498977))

(assert (=> bs!586326 m!4498979))

(declare-fun m!4499967 () Bool)

(assert (=> bs!586326 m!4499967))

(assert (=> bs!586326 m!4498977))

(assert (=> bs!586326 m!4499019))

(assert (=> b!3932648 d!1166365))

(declare-fun d!1166367 () Bool)

(declare-fun lt!1374366 () Int)

(assert (=> d!1166367 (>= lt!1374366 0)))

(declare-fun e!2433277 () Int)

(assert (=> d!1166367 (= lt!1374366 e!2433277)))

(declare-fun c!683410 () Bool)

(assert (=> d!1166367 (= c!683410 ((_ is Nil!41755) lt!1374064))))

(assert (=> d!1166367 (= (size!31328 lt!1374064) lt!1374366)))

(declare-fun b!3933267 () Bool)

(assert (=> b!3933267 (= e!2433277 0)))

(declare-fun b!3933268 () Bool)

(assert (=> b!3933268 (= e!2433277 (+ 1 (size!31328 (t!325832 lt!1374064))))))

(assert (= (and d!1166367 c!683410) b!3933267))

(assert (= (and d!1166367 (not c!683410)) b!3933268))

(declare-fun m!4499969 () Bool)

(assert (=> b!3933268 m!4499969))

(assert (=> b!3932648 d!1166367))

(declare-fun d!1166369 () Bool)

(declare-fun lt!1374367 () Int)

(assert (=> d!1166369 (>= lt!1374367 0)))

(declare-fun e!2433278 () Int)

(assert (=> d!1166369 (= lt!1374367 e!2433278)))

(declare-fun c!683411 () Bool)

(assert (=> d!1166369 (= c!683411 ((_ is Nil!41755) (originalCharacters!7120 (_1!23651 (v!39267 lt!1374063)))))))

(assert (=> d!1166369 (= (size!31328 (originalCharacters!7120 (_1!23651 (v!39267 lt!1374063)))) lt!1374367)))

(declare-fun b!3933269 () Bool)

(assert (=> b!3933269 (= e!2433278 0)))

(declare-fun b!3933270 () Bool)

(assert (=> b!3933270 (= e!2433278 (+ 1 (size!31328 (t!325832 (originalCharacters!7120 (_1!23651 (v!39267 lt!1374063)))))))))

(assert (= (and d!1166369 c!683411) b!3933269))

(assert (= (and d!1166369 (not c!683411)) b!3933270))

(declare-fun m!4499971 () Bool)

(assert (=> b!3933270 m!4499971))

(assert (=> b!3932627 d!1166369))

(declare-fun b!3933283 () Bool)

(declare-fun e!2433281 () Bool)

(declare-fun tp!1197119 () Bool)

(assert (=> b!3933283 (= e!2433281 tp!1197119)))

(declare-fun b!3933281 () Bool)

(assert (=> b!3933281 (= e!2433281 tp_is_empty!19821)))

(assert (=> b!3932650 (= tp!1197018 e!2433281)))

(declare-fun b!3933282 () Bool)

(declare-fun tp!1197120 () Bool)

(declare-fun tp!1197121 () Bool)

(assert (=> b!3933282 (= e!2433281 (and tp!1197120 tp!1197121))))

(declare-fun b!3933284 () Bool)

(declare-fun tp!1197122 () Bool)

(declare-fun tp!1197123 () Bool)

(assert (=> b!3933284 (= e!2433281 (and tp!1197122 tp!1197123))))

(assert (= (and b!3932650 ((_ is ElementMatch!11425) (regex!6520 (h!47177 rules!2768)))) b!3933281))

(assert (= (and b!3932650 ((_ is Concat!18176) (regex!6520 (h!47177 rules!2768)))) b!3933282))

(assert (= (and b!3932650 ((_ is Star!11425) (regex!6520 (h!47177 rules!2768)))) b!3933283))

(assert (= (and b!3932650 ((_ is Union!11425) (regex!6520 (h!47177 rules!2768)))) b!3933284))

(declare-fun b!3933287 () Bool)

(declare-fun e!2433282 () Bool)

(declare-fun tp!1197124 () Bool)

(assert (=> b!3933287 (= e!2433282 tp!1197124)))

(declare-fun b!3933285 () Bool)

(assert (=> b!3933285 (= e!2433282 tp_is_empty!19821)))

(assert (=> b!3932629 (= tp!1197028 e!2433282)))

(declare-fun b!3933286 () Bool)

(declare-fun tp!1197125 () Bool)

(declare-fun tp!1197126 () Bool)

(assert (=> b!3933286 (= e!2433282 (and tp!1197125 tp!1197126))))

(declare-fun b!3933288 () Bool)

(declare-fun tp!1197127 () Bool)

(declare-fun tp!1197128 () Bool)

(assert (=> b!3933288 (= e!2433282 (and tp!1197127 tp!1197128))))

(assert (= (and b!3932629 ((_ is ElementMatch!11425) (regex!6520 (rule!9468 (h!47178 prefixTokens!80))))) b!3933285))

(assert (= (and b!3932629 ((_ is Concat!18176) (regex!6520 (rule!9468 (h!47178 prefixTokens!80))))) b!3933286))

(assert (= (and b!3932629 ((_ is Star!11425) (regex!6520 (rule!9468 (h!47178 prefixTokens!80))))) b!3933287))

(assert (= (and b!3932629 ((_ is Union!11425) (regex!6520 (rule!9468 (h!47178 prefixTokens!80))))) b!3933288))

(declare-fun b!3933291 () Bool)

(declare-fun e!2433283 () Bool)

(declare-fun tp!1197129 () Bool)

(assert (=> b!3933291 (= e!2433283 tp!1197129)))

(declare-fun b!3933289 () Bool)

(assert (=> b!3933289 (= e!2433283 tp_is_empty!19821)))

(assert (=> b!3932630 (= tp!1197031 e!2433283)))

(declare-fun b!3933290 () Bool)

(declare-fun tp!1197130 () Bool)

(declare-fun tp!1197131 () Bool)

(assert (=> b!3933290 (= e!2433283 (and tp!1197130 tp!1197131))))

(declare-fun b!3933292 () Bool)

(declare-fun tp!1197132 () Bool)

(declare-fun tp!1197133 () Bool)

(assert (=> b!3933292 (= e!2433283 (and tp!1197132 tp!1197133))))

(assert (= (and b!3932630 ((_ is ElementMatch!11425) (regex!6520 (rule!9468 (h!47178 suffixTokens!72))))) b!3933289))

(assert (= (and b!3932630 ((_ is Concat!18176) (regex!6520 (rule!9468 (h!47178 suffixTokens!72))))) b!3933290))

(assert (= (and b!3932630 ((_ is Star!11425) (regex!6520 (rule!9468 (h!47178 suffixTokens!72))))) b!3933291))

(assert (= (and b!3932630 ((_ is Union!11425) (regex!6520 (rule!9468 (h!47178 suffixTokens!72))))) b!3933292))

(declare-fun b!3933297 () Bool)

(declare-fun e!2433286 () Bool)

(declare-fun tp!1197136 () Bool)

(assert (=> b!3933297 (= e!2433286 (and tp_is_empty!19821 tp!1197136))))

(assert (=> b!3932653 (= tp!1197023 e!2433286)))

(assert (= (and b!3932653 ((_ is Cons!41755) (originalCharacters!7120 (h!47178 suffixTokens!72)))) b!3933297))

(declare-fun b!3933298 () Bool)

(declare-fun e!2433287 () Bool)

(declare-fun tp!1197137 () Bool)

(assert (=> b!3933298 (= e!2433287 (and tp_is_empty!19821 tp!1197137))))

(assert (=> b!3932644 (= tp!1197034 e!2433287)))

(assert (= (and b!3932644 ((_ is Cons!41755) (t!325832 suffix!1176))) b!3933298))

(declare-fun b!3933312 () Bool)

(declare-fun b_free!107381 () Bool)

(declare-fun b_next!108085 () Bool)

(assert (=> b!3933312 (= b_free!107381 (not b_next!108085))))

(declare-fun tb!235301 () Bool)

(declare-fun t!325909 () Bool)

(assert (=> (and b!3933312 (= (toValue!8976 (transformation!6520 (rule!9468 (h!47178 (t!325835 prefixTokens!80))))) (toValue!8976 (transformation!6520 (rule!9468 (_1!23651 (v!39267 lt!1374063)))))) t!325909) tb!235301))

(declare-fun result!285096 () Bool)

(assert (= result!285096 result!285024))

(assert (=> d!1166109 t!325909))

(declare-fun tp!1197151 () Bool)

(declare-fun b_and!300239 () Bool)

(assert (=> b!3933312 (= tp!1197151 (and (=> t!325909 result!285096) b_and!300239))))

(declare-fun b_free!107383 () Bool)

(declare-fun b_next!108087 () Bool)

(assert (=> b!3933312 (= b_free!107383 (not b_next!108087))))

(declare-fun tb!235303 () Bool)

(declare-fun t!325911 () Bool)

(assert (=> (and b!3933312 (= (toChars!8835 (transformation!6520 (rule!9468 (h!47178 (t!325835 prefixTokens!80))))) (toChars!8835 (transformation!6520 (rule!9468 (_1!23651 (v!39267 lt!1374063)))))) t!325911) tb!235303))

(declare-fun result!285098 () Bool)

(assert (= result!285098 result!285016))

(assert (=> d!1166105 t!325911))

(declare-fun t!325913 () Bool)

(declare-fun tb!235305 () Bool)

(assert (=> (and b!3933312 (= (toChars!8835 (transformation!6520 (rule!9468 (h!47178 (t!325835 prefixTokens!80))))) (toChars!8835 (transformation!6520 (rule!9468 (h!47178 prefixTokens!80))))) t!325913) tb!235305))

(declare-fun result!285100 () Bool)

(assert (= result!285100 result!285032))

(assert (=> b!3932929 t!325913))

(declare-fun t!325915 () Bool)

(declare-fun tb!235307 () Bool)

(assert (=> (and b!3933312 (= (toChars!8835 (transformation!6520 (rule!9468 (h!47178 (t!325835 prefixTokens!80))))) (toChars!8835 (transformation!6520 (rule!9468 (h!47178 suffixTokens!72))))) t!325915) tb!235307))

(declare-fun result!285102 () Bool)

(assert (= result!285102 result!285038))

(assert (=> b!3932938 t!325915))

(declare-fun b_and!300241 () Bool)

(declare-fun tp!1197149 () Bool)

(assert (=> b!3933312 (= tp!1197149 (and (=> t!325911 result!285098) (=> t!325913 result!285100) (=> t!325915 result!285102) b_and!300241))))

(declare-fun tp!1197152 () Bool)

(declare-fun e!2433300 () Bool)

(declare-fun b!3933309 () Bool)

(declare-fun e!2433301 () Bool)

(assert (=> b!3933309 (= e!2433300 (and (inv!55954 (h!47178 (t!325835 prefixTokens!80))) e!2433301 tp!1197152))))

(declare-fun e!2433303 () Bool)

(declare-fun b!3933310 () Bool)

(declare-fun tp!1197150 () Bool)

(assert (=> b!3933310 (= e!2433301 (and (inv!21 (value!206454 (h!47178 (t!325835 prefixTokens!80)))) e!2433303 tp!1197150))))

(assert (=> b!3932635 (= tp!1197019 e!2433300)))

(declare-fun e!2433304 () Bool)

(assert (=> b!3933312 (= e!2433304 (and tp!1197151 tp!1197149))))

(declare-fun b!3933311 () Bool)

(declare-fun tp!1197148 () Bool)

(assert (=> b!3933311 (= e!2433303 (and tp!1197148 (inv!55950 (tag!7380 (rule!9468 (h!47178 (t!325835 prefixTokens!80))))) (inv!55953 (transformation!6520 (rule!9468 (h!47178 (t!325835 prefixTokens!80))))) e!2433304))))

(assert (= b!3933311 b!3933312))

(assert (= b!3933310 b!3933311))

(assert (= b!3933309 b!3933310))

(assert (= (and b!3932635 ((_ is Cons!41758) (t!325835 prefixTokens!80))) b!3933309))

(declare-fun m!4499973 () Bool)

(assert (=> b!3933309 m!4499973))

(declare-fun m!4499975 () Bool)

(assert (=> b!3933310 m!4499975))

(declare-fun m!4499977 () Bool)

(assert (=> b!3933311 m!4499977))

(declare-fun m!4499979 () Bool)

(assert (=> b!3933311 m!4499979))

(declare-fun b!3933313 () Bool)

(declare-fun e!2433306 () Bool)

(declare-fun tp!1197153 () Bool)

(assert (=> b!3933313 (= e!2433306 (and tp_is_empty!19821 tp!1197153))))

(assert (=> b!3932646 (= tp!1197026 e!2433306)))

(assert (= (and b!3932646 ((_ is Cons!41755) (originalCharacters!7120 (h!47178 prefixTokens!80)))) b!3933313))

(declare-fun b!3933317 () Bool)

(declare-fun b_free!107385 () Bool)

(declare-fun b_next!108089 () Bool)

(assert (=> b!3933317 (= b_free!107385 (not b_next!108089))))

(declare-fun t!325917 () Bool)

(declare-fun tb!235309 () Bool)

(assert (=> (and b!3933317 (= (toValue!8976 (transformation!6520 (rule!9468 (h!47178 (t!325835 suffixTokens!72))))) (toValue!8976 (transformation!6520 (rule!9468 (_1!23651 (v!39267 lt!1374063)))))) t!325917) tb!235309))

(declare-fun result!285104 () Bool)

(assert (= result!285104 result!285024))

(assert (=> d!1166109 t!325917))

(declare-fun tp!1197157 () Bool)

(declare-fun b_and!300243 () Bool)

(assert (=> b!3933317 (= tp!1197157 (and (=> t!325917 result!285104) b_and!300243))))

(declare-fun b_free!107387 () Bool)

(declare-fun b_next!108091 () Bool)

(assert (=> b!3933317 (= b_free!107387 (not b_next!108091))))

(declare-fun t!325919 () Bool)

(declare-fun tb!235311 () Bool)

(assert (=> (and b!3933317 (= (toChars!8835 (transformation!6520 (rule!9468 (h!47178 (t!325835 suffixTokens!72))))) (toChars!8835 (transformation!6520 (rule!9468 (_1!23651 (v!39267 lt!1374063)))))) t!325919) tb!235311))

(declare-fun result!285106 () Bool)

(assert (= result!285106 result!285016))

(assert (=> d!1166105 t!325919))

(declare-fun t!325921 () Bool)

(declare-fun tb!235313 () Bool)

(assert (=> (and b!3933317 (= (toChars!8835 (transformation!6520 (rule!9468 (h!47178 (t!325835 suffixTokens!72))))) (toChars!8835 (transformation!6520 (rule!9468 (h!47178 prefixTokens!80))))) t!325921) tb!235313))

(declare-fun result!285108 () Bool)

(assert (= result!285108 result!285032))

(assert (=> b!3932929 t!325921))

(declare-fun t!325923 () Bool)

(declare-fun tb!235315 () Bool)

(assert (=> (and b!3933317 (= (toChars!8835 (transformation!6520 (rule!9468 (h!47178 (t!325835 suffixTokens!72))))) (toChars!8835 (transformation!6520 (rule!9468 (h!47178 suffixTokens!72))))) t!325923) tb!235315))

(declare-fun result!285110 () Bool)

(assert (= result!285110 result!285038))

(assert (=> b!3932938 t!325923))

(declare-fun b_and!300245 () Bool)

(declare-fun tp!1197155 () Bool)

(assert (=> b!3933317 (= tp!1197155 (and (=> t!325919 result!285106) (=> t!325921 result!285108) (=> t!325923 result!285110) b_and!300245))))

(declare-fun b!3933314 () Bool)

(declare-fun e!2433307 () Bool)

(declare-fun tp!1197158 () Bool)

(declare-fun e!2433308 () Bool)

(assert (=> b!3933314 (= e!2433307 (and (inv!55954 (h!47178 (t!325835 suffixTokens!72))) e!2433308 tp!1197158))))

(declare-fun e!2433310 () Bool)

(declare-fun tp!1197156 () Bool)

(declare-fun b!3933315 () Bool)

(assert (=> b!3933315 (= e!2433308 (and (inv!21 (value!206454 (h!47178 (t!325835 suffixTokens!72)))) e!2433310 tp!1197156))))

(assert (=> b!3932657 (= tp!1197032 e!2433307)))

(declare-fun e!2433311 () Bool)

(assert (=> b!3933317 (= e!2433311 (and tp!1197157 tp!1197155))))

(declare-fun tp!1197154 () Bool)

(declare-fun b!3933316 () Bool)

(assert (=> b!3933316 (= e!2433310 (and tp!1197154 (inv!55950 (tag!7380 (rule!9468 (h!47178 (t!325835 suffixTokens!72))))) (inv!55953 (transformation!6520 (rule!9468 (h!47178 (t!325835 suffixTokens!72))))) e!2433311))))

(assert (= b!3933316 b!3933317))

(assert (= b!3933315 b!3933316))

(assert (= b!3933314 b!3933315))

(assert (= (and b!3932657 ((_ is Cons!41758) (t!325835 suffixTokens!72))) b!3933314))

(declare-fun m!4499981 () Bool)

(assert (=> b!3933314 m!4499981))

(declare-fun m!4499983 () Bool)

(assert (=> b!3933315 m!4499983))

(declare-fun m!4499985 () Bool)

(assert (=> b!3933316 m!4499985))

(declare-fun m!4499987 () Bool)

(assert (=> b!3933316 m!4499987))

(declare-fun b!3933318 () Bool)

(declare-fun e!2433313 () Bool)

(declare-fun tp!1197159 () Bool)

(assert (=> b!3933318 (= e!2433313 (and tp_is_empty!19821 tp!1197159))))

(assert (=> b!3932637 (= tp!1197030 e!2433313)))

(assert (= (and b!3932637 ((_ is Cons!41755) (t!325832 prefix!426))) b!3933318))

(declare-fun b!3933319 () Bool)

(declare-fun e!2433314 () Bool)

(declare-fun tp!1197160 () Bool)

(assert (=> b!3933319 (= e!2433314 (and tp_is_empty!19821 tp!1197160))))

(assert (=> b!3932659 (= tp!1197029 e!2433314)))

(assert (= (and b!3932659 ((_ is Cons!41755) (t!325832 suffixResult!91))) b!3933319))

(declare-fun b!3933330 () Bool)

(declare-fun b_free!107389 () Bool)

(declare-fun b_next!108093 () Bool)

(assert (=> b!3933330 (= b_free!107389 (not b_next!108093))))

(declare-fun t!325925 () Bool)

(declare-fun tb!235317 () Bool)

(assert (=> (and b!3933330 (= (toValue!8976 (transformation!6520 (h!47177 (t!325834 rules!2768)))) (toValue!8976 (transformation!6520 (rule!9468 (_1!23651 (v!39267 lt!1374063)))))) t!325925) tb!235317))

(declare-fun result!285114 () Bool)

(assert (= result!285114 result!285024))

(assert (=> d!1166109 t!325925))

(declare-fun b_and!300247 () Bool)

(declare-fun tp!1197171 () Bool)

(assert (=> b!3933330 (= tp!1197171 (and (=> t!325925 result!285114) b_and!300247))))

(declare-fun b_free!107391 () Bool)

(declare-fun b_next!108095 () Bool)

(assert (=> b!3933330 (= b_free!107391 (not b_next!108095))))

(declare-fun tb!235319 () Bool)

(declare-fun t!325927 () Bool)

(assert (=> (and b!3933330 (= (toChars!8835 (transformation!6520 (h!47177 (t!325834 rules!2768)))) (toChars!8835 (transformation!6520 (rule!9468 (_1!23651 (v!39267 lt!1374063)))))) t!325927) tb!235319))

(declare-fun result!285116 () Bool)

(assert (= result!285116 result!285016))

(assert (=> d!1166105 t!325927))

(declare-fun tb!235321 () Bool)

(declare-fun t!325929 () Bool)

(assert (=> (and b!3933330 (= (toChars!8835 (transformation!6520 (h!47177 (t!325834 rules!2768)))) (toChars!8835 (transformation!6520 (rule!9468 (h!47178 prefixTokens!80))))) t!325929) tb!235321))

(declare-fun result!285118 () Bool)

(assert (= result!285118 result!285032))

(assert (=> b!3932929 t!325929))

(declare-fun tb!235323 () Bool)

(declare-fun t!325931 () Bool)

(assert (=> (and b!3933330 (= (toChars!8835 (transformation!6520 (h!47177 (t!325834 rules!2768)))) (toChars!8835 (transformation!6520 (rule!9468 (h!47178 suffixTokens!72))))) t!325931) tb!235323))

(declare-fun result!285120 () Bool)

(assert (= result!285120 result!285038))

(assert (=> b!3932938 t!325931))

(declare-fun b_and!300249 () Bool)

(declare-fun tp!1197170 () Bool)

(assert (=> b!3933330 (= tp!1197170 (and (=> t!325927 result!285116) (=> t!325929 result!285118) (=> t!325931 result!285120) b_and!300249))))

(declare-fun e!2433326 () Bool)

(assert (=> b!3933330 (= e!2433326 (and tp!1197171 tp!1197170))))

(declare-fun tp!1197169 () Bool)

(declare-fun e!2433325 () Bool)

(declare-fun b!3933329 () Bool)

(assert (=> b!3933329 (= e!2433325 (and tp!1197169 (inv!55950 (tag!7380 (h!47177 (t!325834 rules!2768)))) (inv!55953 (transformation!6520 (h!47177 (t!325834 rules!2768)))) e!2433326))))

(declare-fun b!3933328 () Bool)

(declare-fun e!2433324 () Bool)

(declare-fun tp!1197172 () Bool)

(assert (=> b!3933328 (= e!2433324 (and e!2433325 tp!1197172))))

(assert (=> b!3932628 (= tp!1197033 e!2433324)))

(assert (= b!3933329 b!3933330))

(assert (= b!3933328 b!3933329))

(assert (= (and b!3932628 ((_ is Cons!41757) (t!325834 rules!2768))) b!3933328))

(declare-fun m!4499989 () Bool)

(assert (=> b!3933329 m!4499989))

(declare-fun m!4499991 () Bool)

(assert (=> b!3933329 m!4499991))

(declare-fun b_lambda!115063 () Bool)

(assert (= b_lambda!115053 (or (and b!3932639 b_free!107363 (= (toChars!8835 (transformation!6520 (h!47177 rules!2768))) (toChars!8835 (transformation!6520 (rule!9468 (h!47178 suffixTokens!72)))))) (and b!3933317 b_free!107387 (= (toChars!8835 (transformation!6520 (rule!9468 (h!47178 (t!325835 suffixTokens!72))))) (toChars!8835 (transformation!6520 (rule!9468 (h!47178 suffixTokens!72)))))) (and b!3932625 b_free!107359 (= (toChars!8835 (transformation!6520 (rule!9468 (h!47178 prefixTokens!80)))) (toChars!8835 (transformation!6520 (rule!9468 (h!47178 suffixTokens!72)))))) (and b!3933330 b_free!107391 (= (toChars!8835 (transformation!6520 (h!47177 (t!325834 rules!2768)))) (toChars!8835 (transformation!6520 (rule!9468 (h!47178 suffixTokens!72)))))) (and b!3933312 b_free!107383 (= (toChars!8835 (transformation!6520 (rule!9468 (h!47178 (t!325835 prefixTokens!80))))) (toChars!8835 (transformation!6520 (rule!9468 (h!47178 suffixTokens!72)))))) (and b!3932642 b_free!107367) b_lambda!115063)))

(declare-fun b_lambda!115065 () Bool)

(assert (= b_lambda!115051 (or (and b!3933330 b_free!107391 (= (toChars!8835 (transformation!6520 (h!47177 (t!325834 rules!2768)))) (toChars!8835 (transformation!6520 (rule!9468 (h!47178 prefixTokens!80)))))) (and b!3932642 b_free!107367 (= (toChars!8835 (transformation!6520 (rule!9468 (h!47178 suffixTokens!72)))) (toChars!8835 (transformation!6520 (rule!9468 (h!47178 prefixTokens!80)))))) (and b!3932625 b_free!107359) (and b!3932639 b_free!107363 (= (toChars!8835 (transformation!6520 (h!47177 rules!2768))) (toChars!8835 (transformation!6520 (rule!9468 (h!47178 prefixTokens!80)))))) (and b!3933317 b_free!107387 (= (toChars!8835 (transformation!6520 (rule!9468 (h!47178 (t!325835 suffixTokens!72))))) (toChars!8835 (transformation!6520 (rule!9468 (h!47178 prefixTokens!80)))))) (and b!3933312 b_free!107383 (= (toChars!8835 (transformation!6520 (rule!9468 (h!47178 (t!325835 prefixTokens!80))))) (toChars!8835 (transformation!6520 (rule!9468 (h!47178 prefixTokens!80)))))) b_lambda!115065)))

(check-sat (not b!3933297) (not d!1166223) (not d!1166213) (not b!3933148) (not b!3933329) (not b!3932741) (not b!3932711) (not d!1166203) (not b!3932867) (not b!3932931) (not b!3932984) tp_is_empty!19821 (not bm!284883) (not b!3933292) (not b!3932773) (not b!3933261) (not b!3933217) (not b!3933226) (not d!1166343) (not d!1166087) (not b!3933024) (not b_lambda!115049) b_and!300199 (not d!1166349) (not tb!235259) (not d!1166365) (not b!3933328) (not b!3933233) (not d!1166267) (not b!3932989) b_and!300213 (not d!1166355) (not tb!235253) (not b!3932713) (not b!3933149) (not d!1166153) (not b!3933206) (not b!3933023) (not b_next!108085) (not b_next!108095) (not d!1166047) (not b_lambda!115047) (not b!3933221) (not b!3933284) (not b!3933282) (not b!3933287) (not b!3933311) (not b!3932683) (not b!3932998) (not b!3932714) (not b!3932894) (not b!3933054) (not d!1166345) (not d!1166241) (not d!1166107) (not b!3932685) (not b!3933231) (not b!3933015) (not b!3933007) (not b_lambda!115063) (not b!3932890) (not b!3932929) (not b!3932759) (not b!3933225) (not b!3933266) (not b!3933205) (not b!3933214) (not d!1166089) (not b!3933260) (not d!1166069) (not d!1166273) (not b!3932865) (not b!3933258) (not tb!235241) (not b_next!108061) (not tb!235247) (not d!1166189) (not b!3933006) (not b_next!108065) (not b!3933208) b_and!300247 (not d!1166233) (not b!3933203) (not b!3933018) (not b!3933040) (not d!1166111) (not b!3933290) (not b!3933318) (not d!1166217) (not b!3932740) (not b!3933259) (not d!1166105) (not d!1166199) (not b!3933013) (not d!1166331) (not b!3933053) b_and!300241 (not b!3933211) (not b!3932995) (not b!3932853) (not b!3932930) (not b!3933196) (not b!3933264) (not b!3933153) (not b!3933057) b_and!300197 (not b!3933154) (not d!1166059) (not b!3932851) (not b_next!108091) b_and!300209 (not b!3933288) (not b!3932768) (not b_next!108093) (not b!3933212) (not b!3933215) (not d!1166159) (not d!1166179) (not b!3932951) (not b!3932994) (not b!3932893) (not b!3932975) (not d!1166243) (not d!1166173) (not b_next!108063) (not d!1166103) (not b!3933055) (not b!3933319) (not b!3932940) (not b!3933262) (not b!3932983) (not b!3933291) (not b_next!108089) (not b!3932965) (not b!3933270) (not d!1166361) (not b!3933228) (not b!3932866) (not d!1166339) b_and!300211 (not b_next!108087) (not b!3933229) (not d!1166333) (not b!3933257) (not b!3933314) (not b!3933283) (not d!1166249) (not b!3933256) (not b!3933031) (not d!1166357) (not b_lambda!115065) (not d!1166205) (not b!3933315) (not b_next!108071) (not d!1166245) (not b!3933234) (not b!3933016) (not b!3933151) (not b!3933309) (not b!3933219) (not b!3933152) (not b!3932938) (not d!1166253) (not b!3932976) (not d!1166347) (not d!1166261) (not d!1166221) (not d!1166145) (not b!3933008) (not d!1166157) (not b!3932684) (not b!3933011) (not b!3932779) (not b!3933316) (not b!3932952) (not b!3933286) (not b!3932988) (not b!3933236) (not b!3932760) (not d!1166277) b_and!300245 (not b!3933010) (not d!1166193) (not b!3933041) (not d!1166163) (not b!3932891) (not b!3933150) (not d!1166055) (not b!3932999) (not b!3933222) (not d!1166097) (not d!1166353) (not b_next!108069) (not b!3932850) (not d!1166239) (not b!3933298) (not d!1166099) (not b!3932879) (not b!3933313) (not b!3932939) b_and!300243 (not b!3933268) (not b_next!108067) b_and!300249 b_and!300201 (not b!3933032) (not b!3932758) (not b!3933042) (not b!3933310) (not b!3933155) b_and!300239 (not d!1166095) (not d!1166155) (not b!3932896))
(check-sat b_and!300199 b_and!300213 (not b_next!108061) b_and!300241 b_and!300197 (not b_next!108063) (not b_next!108089) b_and!300211 (not b_next!108087) (not b_next!108071) b_and!300245 (not b_next!108069) b_and!300243 (not b_next!108085) (not b_next!108095) (not b_next!108065) b_and!300247 (not b_next!108091) b_and!300209 (not b_next!108093) (not b_next!108067) b_and!300249 b_and!300201 b_and!300239)
