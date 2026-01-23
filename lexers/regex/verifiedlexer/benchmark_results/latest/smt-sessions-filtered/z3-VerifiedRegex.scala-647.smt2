; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22294 () Bool)

(assert start!22294)

(declare-fun b!207960 () Bool)

(declare-fun b_free!8057 () Bool)

(declare-fun b_next!8057 () Bool)

(assert (=> b!207960 (= b_free!8057 (not b_next!8057))))

(declare-fun tp!91070 () Bool)

(declare-fun b_and!15029 () Bool)

(assert (=> b!207960 (= tp!91070 b_and!15029)))

(declare-fun b_free!8059 () Bool)

(declare-fun b_next!8059 () Bool)

(assert (=> b!207960 (= b_free!8059 (not b_next!8059))))

(declare-fun tp!91075 () Bool)

(declare-fun b_and!15031 () Bool)

(assert (=> b!207960 (= tp!91075 b_and!15031)))

(declare-fun b!207989 () Bool)

(declare-fun b_free!8061 () Bool)

(declare-fun b_next!8061 () Bool)

(assert (=> b!207989 (= b_free!8061 (not b_next!8061))))

(declare-fun tp!91071 () Bool)

(declare-fun b_and!15033 () Bool)

(assert (=> b!207989 (= tp!91071 b_and!15033)))

(declare-fun b_free!8063 () Bool)

(declare-fun b_next!8063 () Bool)

(assert (=> b!207989 (= b_free!8063 (not b_next!8063))))

(declare-fun tp!91063 () Bool)

(declare-fun b_and!15035 () Bool)

(assert (=> b!207989 (= tp!91063 b_and!15035)))

(declare-fun b!207997 () Bool)

(declare-fun b_free!8065 () Bool)

(declare-fun b_next!8065 () Bool)

(assert (=> b!207997 (= b_free!8065 (not b_next!8065))))

(declare-fun tp!91065 () Bool)

(declare-fun b_and!15037 () Bool)

(assert (=> b!207997 (= tp!91065 b_and!15037)))

(declare-fun b_free!8067 () Bool)

(declare-fun b_next!8067 () Bool)

(assert (=> b!207997 (= b_free!8067 (not b_next!8067))))

(declare-fun tp!91064 () Bool)

(declare-fun b_and!15039 () Bool)

(assert (=> b!207997 (= tp!91064 b_and!15039)))

(declare-fun bs!21034 () Bool)

(declare-fun b!207984 () Bool)

(declare-fun b!207968 () Bool)

(assert (= bs!21034 (and b!207984 b!207968)))

(declare-fun lambda!6400 () Int)

(declare-fun lambda!6399 () Int)

(assert (=> bs!21034 (not (= lambda!6400 lambda!6399))))

(declare-fun b!208018 () Bool)

(declare-fun e!128217 () Bool)

(assert (=> b!208018 (= e!128217 true)))

(declare-fun b!208017 () Bool)

(declare-fun e!128216 () Bool)

(assert (=> b!208017 (= e!128216 e!128217)))

(declare-fun b!208016 () Bool)

(declare-fun e!128215 () Bool)

(assert (=> b!208016 (= e!128215 e!128216)))

(assert (=> b!207984 e!128215))

(assert (= b!208017 b!208018))

(assert (= b!208016 b!208017))

(declare-datatypes ((List!3333 0))(
  ( (Nil!3323) (Cons!3323 (h!8720 (_ BitVec 16)) (t!31093 List!3333)) )
))
(declare-datatypes ((TokenValue!639 0))(
  ( (FloatLiteralValue!1278 (text!4918 List!3333)) (TokenValueExt!638 (__x!2765 Int)) (Broken!3195 (value!21874 List!3333)) (Object!648) (End!639) (Def!639) (Underscore!639) (Match!639) (Else!639) (Error!639) (Case!639) (If!639) (Extends!639) (Abstract!639) (Class!639) (Val!639) (DelimiterValue!1278 (del!699 List!3333)) (KeywordValue!645 (value!21875 List!3333)) (CommentValue!1278 (value!21876 List!3333)) (WhitespaceValue!1278 (value!21877 List!3333)) (IndentationValue!639 (value!21878 List!3333)) (String!4274) (Int32!639) (Broken!3196 (value!21879 List!3333)) (Boolean!640) (Unit!3427) (OperatorValue!642 (op!699 List!3333)) (IdentifierValue!1278 (value!21880 List!3333)) (IdentifierValue!1279 (value!21881 List!3333)) (WhitespaceValue!1279 (value!21882 List!3333)) (True!1278) (False!1278) (Broken!3197 (value!21883 List!3333)) (Broken!3198 (value!21884 List!3333)) (True!1279) (RightBrace!639) (RightBracket!639) (Colon!639) (Null!639) (Comma!639) (LeftBracket!639) (False!1279) (LeftBrace!639) (ImaginaryLiteralValue!639 (text!4919 List!3333)) (StringLiteralValue!1917 (value!21885 List!3333)) (EOFValue!639 (value!21886 List!3333)) (IdentValue!639 (value!21887 List!3333)) (DelimiterValue!1279 (value!21888 List!3333)) (DedentValue!639 (value!21889 List!3333)) (NewLineValue!639 (value!21890 List!3333)) (IntegerValue!1917 (value!21891 (_ BitVec 32)) (text!4920 List!3333)) (IntegerValue!1918 (value!21892 Int) (text!4921 List!3333)) (Times!639) (Or!639) (Equal!639) (Minus!639) (Broken!3199 (value!21893 List!3333)) (And!639) (Div!639) (LessEqual!639) (Mod!639) (Concat!1480) (Not!639) (Plus!639) (SpaceValue!639 (value!21894 List!3333)) (IntegerValue!1919 (value!21895 Int) (text!4922 List!3333)) (StringLiteralValue!1918 (text!4923 List!3333)) (FloatLiteralValue!1279 (text!4924 List!3333)) (BytesLiteralValue!639 (value!21896 List!3333)) (CommentValue!1279 (value!21897 List!3333)) (StringLiteralValue!1919 (value!21898 List!3333)) (ErrorTokenValue!639 (msg!700 List!3333)) )
))
(declare-datatypes ((C!2604 0))(
  ( (C!2605 (val!1188 Int)) )
))
(declare-datatypes ((List!3334 0))(
  ( (Nil!3324) (Cons!3324 (h!8721 C!2604) (t!31094 List!3334)) )
))
(declare-datatypes ((IArray!2113 0))(
  ( (IArray!2114 (innerList!1114 List!3334)) )
))
(declare-datatypes ((Conc!1056 0))(
  ( (Node!1056 (left!2655 Conc!1056) (right!2985 Conc!1056) (csize!2342 Int) (cheight!1267 Int)) (Leaf!1704 (xs!3651 IArray!2113) (csize!2343 Int)) (Empty!1056) )
))
(declare-datatypes ((BalanceConc!2120 0))(
  ( (BalanceConc!2121 (c!39695 Conc!1056)) )
))
(declare-datatypes ((TokenValueInjection!1050 0))(
  ( (TokenValueInjection!1051 (toValue!1300 Int) (toChars!1159 Int)) )
))
(declare-datatypes ((String!4275 0))(
  ( (String!4276 (value!21899 String)) )
))
(declare-datatypes ((Regex!841 0))(
  ( (ElementMatch!841 (c!39696 C!2604)) (Concat!1481 (regOne!2194 Regex!841) (regTwo!2194 Regex!841)) (EmptyExpr!841) (Star!841 (reg!1170 Regex!841)) (EmptyLang!841) (Union!841 (regOne!2195 Regex!841) (regTwo!2195 Regex!841)) )
))
(declare-datatypes ((Rule!1034 0))(
  ( (Rule!1035 (regex!617 Regex!841) (tag!805 String!4275) (isSeparator!617 Bool) (transformation!617 TokenValueInjection!1050)) )
))
(declare-datatypes ((List!3335 0))(
  ( (Nil!3325) (Cons!3325 (h!8722 Rule!1034) (t!31095 List!3335)) )
))
(declare-fun rules!1920 () List!3335)

(get-info :version)

(assert (= (and b!207984 ((_ is Cons!3325) rules!1920)) b!208016))

(declare-fun order!2201 () Int)

(declare-fun order!2203 () Int)

(declare-fun dynLambda!1479 (Int Int) Int)

(declare-fun dynLambda!1480 (Int Int) Int)

(assert (=> b!208018 (< (dynLambda!1479 order!2201 (toValue!1300 (transformation!617 (h!8722 rules!1920)))) (dynLambda!1480 order!2203 lambda!6400))))

(declare-fun order!2205 () Int)

(declare-fun dynLambda!1481 (Int Int) Int)

(assert (=> b!208018 (< (dynLambda!1481 order!2205 (toChars!1159 (transformation!617 (h!8722 rules!1920)))) (dynLambda!1480 order!2203 lambda!6400))))

(assert (=> b!207984 true))

(declare-fun e!128191 () Bool)

(assert (=> b!207960 (= e!128191 (and tp!91070 tp!91075))))

(declare-fun b!207961 () Bool)

(declare-fun res!95624 () Bool)

(declare-fun e!128204 () Bool)

(assert (=> b!207961 (=> res!95624 e!128204)))

(declare-fun lt!76011 () List!3334)

(declare-datatypes ((LexerInterface!503 0))(
  ( (LexerInterfaceExt!500 (__x!2766 Int)) (Lexer!501) )
))
(declare-fun thiss!17480 () LexerInterface!503)

(declare-datatypes ((Token!978 0))(
  ( (Token!979 (value!21900 TokenValue!639) (rule!1144 Rule!1034) (size!2656 Int) (originalCharacters!660 List!3334)) )
))
(declare-datatypes ((List!3336 0))(
  ( (Nil!3326) (Cons!3326 (h!8723 Token!978) (t!31096 List!3336)) )
))
(declare-datatypes ((IArray!2115 0))(
  ( (IArray!2116 (innerList!1115 List!3336)) )
))
(declare-datatypes ((Conc!1057 0))(
  ( (Node!1057 (left!2656 Conc!1057) (right!2986 Conc!1057) (csize!2344 Int) (cheight!1268 Int)) (Leaf!1705 (xs!3652 IArray!2115) (csize!2345 Int)) (Empty!1057) )
))
(declare-datatypes ((BalanceConc!2122 0))(
  ( (BalanceConc!2123 (c!39697 Conc!1057)) )
))
(declare-fun isEmpty!1778 (BalanceConc!2122) Bool)

(declare-datatypes ((tuple2!3490 0))(
  ( (tuple2!3491 (_1!1961 BalanceConc!2122) (_2!1961 BalanceConc!2120)) )
))
(declare-fun lex!303 (LexerInterface!503 List!3335 BalanceConc!2120) tuple2!3490)

(declare-fun seqFromList!611 (List!3334) BalanceConc!2120)

(assert (=> b!207961 (= res!95624 (isEmpty!1778 (_1!1961 (lex!303 thiss!17480 rules!1920 (seqFromList!611 lt!76011)))))))

(declare-fun b!207962 () Bool)

(declare-fun res!95618 () Bool)

(declare-fun e!128182 () Bool)

(assert (=> b!207962 (=> (not res!95618) (not e!128182))))

(declare-datatypes ((tuple2!3492 0))(
  ( (tuple2!3493 (_1!1962 Token!978) (_2!1962 List!3334)) )
))
(declare-fun lt!76030 () tuple2!3492)

(declare-fun isEmpty!1779 (List!3334) Bool)

(assert (=> b!207962 (= res!95618 (isEmpty!1779 (_2!1962 lt!76030)))))

(declare-fun b!207963 () Bool)

(declare-fun e!128206 () Bool)

(declare-fun e!128194 () Bool)

(assert (=> b!207963 (= e!128206 e!128194)))

(declare-fun res!95639 () Bool)

(assert (=> b!207963 (=> res!95639 e!128194)))

(declare-fun lt!76047 () Bool)

(assert (=> b!207963 (= res!95639 (not lt!76047))))

(assert (=> b!207963 e!128182))

(declare-fun res!95640 () Bool)

(assert (=> b!207963 (=> (not res!95640) (not e!128182))))

(declare-fun tokens!465 () List!3336)

(assert (=> b!207963 (= res!95640 (= (_1!1962 lt!76030) (h!8723 tokens!465)))))

(declare-datatypes ((Option!543 0))(
  ( (None!542) (Some!542 (v!14101 tuple2!3492)) )
))
(declare-fun lt!76046 () Option!543)

(declare-fun get!1007 (Option!543) tuple2!3492)

(assert (=> b!207963 (= lt!76030 (get!1007 lt!76046))))

(declare-fun isDefined!394 (Option!543) Bool)

(assert (=> b!207963 (isDefined!394 lt!76046)))

(declare-fun maxPrefix!233 (LexerInterface!503 List!3335 List!3334) Option!543)

(assert (=> b!207963 (= lt!76046 (maxPrefix!233 thiss!17480 rules!1920 lt!76011))))

(declare-fun tp!91068 () Bool)

(declare-fun b!207964 () Bool)

(declare-fun e!128193 () Bool)

(declare-fun e!128208 () Bool)

(declare-fun inv!4159 (String!4275) Bool)

(declare-fun inv!4162 (TokenValueInjection!1050) Bool)

(assert (=> b!207964 (= e!128193 (and tp!91068 (inv!4159 (tag!805 (rule!1144 (h!8723 tokens!465)))) (inv!4162 (transformation!617 (rule!1144 (h!8723 tokens!465)))) e!128208))))

(declare-fun tp!91074 () Bool)

(declare-fun e!128202 () Bool)

(declare-fun b!207965 () Bool)

(declare-fun inv!21 (TokenValue!639) Bool)

(assert (=> b!207965 (= e!128202 (and (inv!21 (value!21900 (h!8723 tokens!465))) e!128193 tp!91074))))

(declare-fun b!207966 () Bool)

(declare-fun res!95642 () Bool)

(declare-fun e!128187 () Bool)

(assert (=> b!207966 (=> (not res!95642) (not e!128187))))

(declare-fun isEmpty!1780 (List!3335) Bool)

(assert (=> b!207966 (= res!95642 (not (isEmpty!1780 rules!1920)))))

(declare-fun b!207967 () Bool)

(declare-datatypes ((Unit!3428 0))(
  ( (Unit!3429) )
))
(declare-fun e!128196 () Unit!3428)

(declare-fun Unit!3430 () Unit!3428)

(assert (=> b!207967 (= e!128196 Unit!3430)))

(declare-fun res!95616 () Bool)

(declare-fun e!128180 () Bool)

(assert (=> b!207968 (=> (not res!95616) (not e!128180))))

(declare-fun forall!721 (List!3336 Int) Bool)

(assert (=> b!207968 (= res!95616 (forall!721 tokens!465 lambda!6399))))

(declare-fun b!207969 () Bool)

(declare-fun e!128199 () Bool)

(assert (=> b!207969 (= e!128180 e!128199)))

(declare-fun res!95614 () Bool)

(assert (=> b!207969 (=> (not res!95614) (not e!128199))))

(declare-fun lt!76043 () List!3334)

(declare-fun lt!76029 () List!3334)

(assert (=> b!207969 (= res!95614 (= lt!76043 lt!76029))))

(declare-fun lt!76045 () BalanceConc!2122)

(declare-fun separatorToken!170 () Token!978)

(declare-fun list!1236 (BalanceConc!2120) List!3334)

(declare-fun printWithSeparatorTokenWhenNeededRec!186 (LexerInterface!503 List!3335 BalanceConc!2122 Token!978 Int) BalanceConc!2120)

(assert (=> b!207969 (= lt!76029 (list!1236 (printWithSeparatorTokenWhenNeededRec!186 thiss!17480 rules!1920 lt!76045 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!196 (LexerInterface!503 List!3335 List!3336 Token!978) List!3334)

(assert (=> b!207969 (= lt!76043 (printWithSeparatorTokenWhenNeededList!196 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!207970 () Bool)

(declare-fun e!128205 () Bool)

(declare-fun lt!76038 () Rule!1034)

(assert (=> b!207970 (= e!128205 (= (rule!1144 separatorToken!170) lt!76038))))

(declare-fun b!207971 () Bool)

(declare-fun res!95621 () Bool)

(assert (=> b!207971 (=> (not res!95621) (not e!128180))))

(declare-fun rulesProduceIndividualToken!252 (LexerInterface!503 List!3335 Token!978) Bool)

(assert (=> b!207971 (= res!95621 (rulesProduceIndividualToken!252 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!207972 () Bool)

(declare-fun tp!91069 () Bool)

(declare-fun e!128197 () Bool)

(declare-fun e!128175 () Bool)

(assert (=> b!207972 (= e!128175 (and tp!91069 (inv!4159 (tag!805 (h!8722 rules!1920))) (inv!4162 (transformation!617 (h!8722 rules!1920))) e!128197))))

(declare-fun b!207973 () Bool)

(declare-fun res!95634 () Bool)

(assert (=> b!207973 (=> (not res!95634) (not e!128199))))

(assert (=> b!207973 (= res!95634 (= (list!1236 (seqFromList!611 lt!76043)) lt!76029))))

(declare-fun res!95623 () Bool)

(assert (=> start!22294 (=> (not res!95623) (not e!128187))))

(assert (=> start!22294 (= res!95623 ((_ is Lexer!501) thiss!17480))))

(assert (=> start!22294 e!128187))

(assert (=> start!22294 true))

(declare-fun e!128195 () Bool)

(assert (=> start!22294 e!128195))

(declare-fun e!128190 () Bool)

(declare-fun inv!4163 (Token!978) Bool)

(assert (=> start!22294 (and (inv!4163 separatorToken!170) e!128190)))

(declare-fun e!128181 () Bool)

(assert (=> start!22294 e!128181))

(declare-fun b!207974 () Bool)

(declare-fun res!95633 () Bool)

(declare-fun e!128198 () Bool)

(assert (=> b!207974 (=> (not res!95633) (not e!128198))))

(declare-fun lt!76028 () tuple2!3490)

(declare-fun apply!552 (BalanceConc!2122 Int) Token!978)

(assert (=> b!207974 (= res!95633 (= (apply!552 (_1!1961 lt!76028) 0) separatorToken!170))))

(declare-fun b!207975 () Bool)

(declare-fun isEmpty!1781 (BalanceConc!2120) Bool)

(assert (=> b!207975 (= e!128198 (isEmpty!1781 (_2!1961 lt!76028)))))

(declare-fun b!207976 () Bool)

(declare-fun matchR!179 (Regex!841 List!3334) Bool)

(assert (=> b!207976 (= e!128182 (matchR!179 (regex!617 (rule!1144 (h!8723 tokens!465))) lt!76011))))

(declare-fun b!207977 () Bool)

(declare-fun e!128186 () Unit!3428)

(declare-fun Unit!3431 () Unit!3428)

(assert (=> b!207977 (= e!128186 Unit!3431)))

(declare-fun b!207978 () Bool)

(declare-fun e!128184 () Bool)

(declare-fun lt!76021 () Option!543)

(declare-fun head!729 (List!3336) Token!978)

(assert (=> b!207978 (= e!128184 (= (_1!1962 (get!1007 lt!76021)) (head!729 tokens!465)))))

(declare-fun b!207979 () Bool)

(declare-fun e!128174 () Bool)

(declare-fun e!128179 () Bool)

(assert (=> b!207979 (= e!128174 e!128179)))

(declare-fun res!95615 () Bool)

(assert (=> b!207979 (=> res!95615 e!128179)))

(declare-fun e!128188 () Bool)

(assert (=> b!207979 (= res!95615 e!128188)))

(declare-fun res!95622 () Bool)

(assert (=> b!207979 (=> (not res!95622) (not e!128188))))

(assert (=> b!207979 (= res!95622 (not lt!76047))))

(declare-fun lt!76006 () List!3334)

(assert (=> b!207979 (= lt!76047 (= lt!76043 lt!76006))))

(declare-fun b!207980 () Bool)

(assert (=> b!207980 (= e!128199 (not e!128174))))

(declare-fun res!95644 () Bool)

(assert (=> b!207980 (=> res!95644 e!128174)))

(declare-fun lt!76042 () List!3334)

(declare-fun lt!76010 () BalanceConc!2120)

(assert (=> b!207980 (= res!95644 (not (= lt!76042 (list!1236 lt!76010))))))

(declare-fun seqFromList!612 (List!3336) BalanceConc!2122)

(assert (=> b!207980 (= lt!76010 (printWithSeparatorTokenWhenNeededRec!186 thiss!17480 rules!1920 (seqFromList!612 (t!31096 tokens!465)) separatorToken!170 0))))

(declare-fun lt!76001 () List!3334)

(assert (=> b!207980 (= lt!76001 lt!76006)))

(declare-fun lt!76003 () List!3334)

(declare-fun ++!814 (List!3334 List!3334) List!3334)

(assert (=> b!207980 (= lt!76006 (++!814 lt!76011 lt!76003))))

(declare-fun lt!76023 () List!3334)

(assert (=> b!207980 (= lt!76001 (++!814 (++!814 lt!76011 lt!76023) lt!76042))))

(declare-fun lt!76002 () Unit!3428)

(declare-fun lemmaConcatAssociativity!312 (List!3334 List!3334 List!3334) Unit!3428)

(assert (=> b!207980 (= lt!76002 (lemmaConcatAssociativity!312 lt!76011 lt!76023 lt!76042))))

(declare-fun charsOf!272 (Token!978) BalanceConc!2120)

(assert (=> b!207980 (= lt!76011 (list!1236 (charsOf!272 (h!8723 tokens!465))))))

(assert (=> b!207980 (= lt!76003 (++!814 lt!76023 lt!76042))))

(assert (=> b!207980 (= lt!76042 (printWithSeparatorTokenWhenNeededList!196 thiss!17480 rules!1920 (t!31096 tokens!465) separatorToken!170))))

(assert (=> b!207980 (= lt!76023 (list!1236 (charsOf!272 separatorToken!170)))))

(declare-fun b!207981 () Bool)

(declare-fun res!95645 () Bool)

(assert (=> b!207981 (=> (not res!95645) (not e!128180))))

(assert (=> b!207981 (= res!95645 ((_ is Cons!3326) tokens!465))))

(declare-fun b!207982 () Bool)

(declare-fun e!128203 () Unit!3428)

(declare-fun Unit!3432 () Unit!3428)

(assert (=> b!207982 (= e!128203 Unit!3432)))

(declare-fun lt!76009 () C!2604)

(declare-fun lt!76014 () List!3334)

(declare-fun lt!76033 () Unit!3428)

(declare-fun lt!76025 () Token!978)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!16 (Regex!841 List!3334 C!2604) Unit!3428)

(assert (=> b!207982 (= lt!76033 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!16 (regex!617 (rule!1144 lt!76025)) lt!76014 lt!76009))))

(declare-fun res!95637 () Bool)

(assert (=> b!207982 (= res!95637 (not (matchR!179 (regex!617 (rule!1144 lt!76025)) lt!76014)))))

(declare-fun e!128178 () Bool)

(assert (=> b!207982 (=> (not res!95637) (not e!128178))))

(assert (=> b!207982 e!128178))

(declare-fun tp!91072 () Bool)

(declare-fun b!207983 () Bool)

(assert (=> b!207983 (= e!128181 (and (inv!4163 (h!8723 tokens!465)) e!128202 tp!91072))))

(assert (=> b!207984 (= e!128204 e!128206)))

(declare-fun res!95625 () Bool)

(assert (=> b!207984 (=> res!95625 e!128206)))

(declare-datatypes ((tuple2!3494 0))(
  ( (tuple2!3495 (_1!1963 Token!978) (_2!1963 BalanceConc!2120)) )
))
(declare-datatypes ((Option!544 0))(
  ( (None!543) (Some!543 (v!14102 tuple2!3494)) )
))
(declare-fun isDefined!395 (Option!544) Bool)

(declare-fun maxPrefixZipperSequence!196 (LexerInterface!503 List!3335 BalanceConc!2120) Option!544)

(assert (=> b!207984 (= res!95625 (not (isDefined!395 (maxPrefixZipperSequence!196 thiss!17480 rules!1920 (seqFromList!611 (originalCharacters!660 (h!8723 tokens!465)))))))))

(declare-fun lt!76049 () Unit!3428)

(declare-fun forallContained!184 (List!3336 Int Token!978) Unit!3428)

(assert (=> b!207984 (= lt!76049 (forallContained!184 tokens!465 lambda!6400 (h!8723 tokens!465)))))

(assert (=> b!207984 (= lt!76011 (originalCharacters!660 (h!8723 tokens!465)))))

(declare-fun b!207985 () Bool)

(declare-fun tp!91066 () Bool)

(declare-fun e!128185 () Bool)

(assert (=> b!207985 (= e!128190 (and (inv!21 (value!21900 separatorToken!170)) e!128185 tp!91066))))

(declare-fun b!207986 () Bool)

(assert (=> b!207986 (= e!128188 (not (= lt!76043 (++!814 lt!76011 lt!76042))))))

(declare-fun b!207987 () Bool)

(declare-fun res!95635 () Bool)

(assert (=> b!207987 (=> res!95635 e!128204)))

(assert (=> b!207987 (= res!95635 (not (rulesProduceIndividualToken!252 thiss!17480 rules!1920 (h!8723 tokens!465))))))

(declare-fun b!207988 () Bool)

(declare-fun e!128200 () Bool)

(declare-fun lt!76036 () tuple2!3490)

(assert (=> b!207988 (= e!128200 (isEmpty!1781 (_2!1961 lt!76036)))))

(assert (=> b!207989 (= e!128197 (and tp!91071 tp!91063))))

(declare-fun b!207990 () Bool)

(declare-fun e!128207 () Bool)

(declare-fun lt!76048 () Rule!1034)

(assert (=> b!207990 (= e!128207 (= (rule!1144 lt!76025) lt!76048))))

(declare-fun b!207991 () Bool)

(declare-fun tp!91073 () Bool)

(assert (=> b!207991 (= e!128185 (and tp!91073 (inv!4159 (tag!805 (rule!1144 separatorToken!170))) (inv!4162 (transformation!617 (rule!1144 separatorToken!170))) e!128191))))

(declare-fun b!207992 () Bool)

(declare-fun Unit!3433 () Unit!3428)

(assert (=> b!207992 (= e!128203 Unit!3433)))

(declare-fun b!207993 () Bool)

(assert (=> b!207993 (= e!128178 false)))

(declare-fun b!207994 () Bool)

(declare-fun Unit!3434 () Unit!3428)

(assert (=> b!207994 (= e!128186 Unit!3434)))

(declare-fun lt!76015 () Unit!3428)

(declare-fun lt!76044 () C!2604)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!10 (LexerInterface!503 List!3335 List!3335 Rule!1034 Rule!1034 C!2604) Unit!3428)

(assert (=> b!207994 (= lt!76015 (lemmaSepRuleNotContainsCharContainedInANonSepRule!10 thiss!17480 rules!1920 rules!1920 (rule!1144 lt!76025) (rule!1144 separatorToken!170) lt!76044))))

(assert (=> b!207994 false))

(declare-fun b!207995 () Bool)

(declare-fun e!128172 () Bool)

(assert (=> b!207995 (= e!128172 e!128207)))

(declare-fun res!95628 () Bool)

(assert (=> b!207995 (=> (not res!95628) (not e!128207))))

(assert (=> b!207995 (= res!95628 (matchR!179 (regex!617 lt!76048) lt!76014))))

(declare-datatypes ((Option!545 0))(
  ( (None!544) (Some!544 (v!14103 Rule!1034)) )
))
(declare-fun lt!76004 () Option!545)

(declare-fun get!1008 (Option!545) Rule!1034)

(assert (=> b!207995 (= lt!76048 (get!1008 lt!76004))))

(declare-fun b!207996 () Bool)

(declare-fun res!95630 () Bool)

(assert (=> b!207996 (=> (not res!95630) (not e!128200))))

(assert (=> b!207996 (= res!95630 (= (apply!552 (_1!1961 lt!76036) 0) lt!76025))))

(assert (=> b!207997 (= e!128208 (and tp!91065 tp!91064))))

(declare-fun b!207998 () Bool)

(declare-fun res!95629 () Bool)

(assert (=> b!207998 (=> (not res!95629) (not e!128180))))

(assert (=> b!207998 (= res!95629 (isSeparator!617 (rule!1144 separatorToken!170)))))

(declare-fun b!207999 () Bool)

(assert (=> b!207999 (= e!128179 e!128204)))

(declare-fun res!95617 () Bool)

(assert (=> b!207999 (=> res!95617 e!128204)))

(declare-fun lt!76039 () List!3334)

(declare-fun lt!76019 () List!3334)

(assert (=> b!207999 (= res!95617 (or (not (= lt!76019 lt!76039)) (not (= lt!76039 lt!76011)) (not (= lt!76019 lt!76011))))))

(declare-fun printList!187 (LexerInterface!503 List!3336) List!3334)

(assert (=> b!207999 (= lt!76039 (printList!187 thiss!17480 (Cons!3326 (h!8723 tokens!465) Nil!3326)))))

(declare-fun lt!76034 () BalanceConc!2120)

(assert (=> b!207999 (= lt!76019 (list!1236 lt!76034))))

(declare-fun lt!76016 () BalanceConc!2122)

(declare-fun printTailRec!197 (LexerInterface!503 BalanceConc!2122 Int BalanceConc!2120) BalanceConc!2120)

(assert (=> b!207999 (= lt!76034 (printTailRec!197 thiss!17480 lt!76016 0 (BalanceConc!2121 Empty!1056)))))

(declare-fun print!234 (LexerInterface!503 BalanceConc!2122) BalanceConc!2120)

(assert (=> b!207999 (= lt!76034 (print!234 thiss!17480 lt!76016))))

(declare-fun singletonSeq!169 (Token!978) BalanceConc!2122)

(assert (=> b!207999 (= lt!76016 (singletonSeq!169 (h!8723 tokens!465)))))

(declare-fun b!208000 () Bool)

(declare-fun res!95620 () Bool)

(assert (=> b!208000 (=> (not res!95620) (not e!128180))))

(declare-fun sepAndNonSepRulesDisjointChars!206 (List!3335 List!3335) Bool)

(assert (=> b!208000 (= res!95620 (sepAndNonSepRulesDisjointChars!206 rules!1920 rules!1920))))

(declare-fun b!208001 () Bool)

(declare-fun Unit!3435 () Unit!3428)

(assert (=> b!208001 (= e!128196 Unit!3435)))

(assert (=> b!208001 false))

(declare-fun b!208002 () Bool)

(declare-fun e!128192 () Bool)

(assert (=> b!208002 (= e!128192 e!128205)))

(declare-fun res!95627 () Bool)

(assert (=> b!208002 (=> (not res!95627) (not e!128205))))

(assert (=> b!208002 (= res!95627 (matchR!179 (regex!617 lt!76038) lt!76023))))

(declare-fun lt!76027 () Option!545)

(assert (=> b!208002 (= lt!76038 (get!1008 lt!76027))))

(declare-fun b!208003 () Bool)

(declare-fun res!95641 () Bool)

(assert (=> b!208003 (=> (not res!95641) (not e!128187))))

(declare-fun rulesInvariant!469 (LexerInterface!503 List!3335) Bool)

(assert (=> b!208003 (= res!95641 (rulesInvariant!469 thiss!17480 rules!1920))))

(declare-fun b!208004 () Bool)

(declare-fun tp!91067 () Bool)

(assert (=> b!208004 (= e!128195 (and e!128175 tp!91067))))

(declare-fun b!208005 () Bool)

(assert (=> b!208005 (= e!128187 e!128180)))

(declare-fun res!95643 () Bool)

(assert (=> b!208005 (=> (not res!95643) (not e!128180))))

(declare-fun rulesProduceEachTokenIndividually!295 (LexerInterface!503 List!3335 BalanceConc!2122) Bool)

(assert (=> b!208005 (= res!95643 (rulesProduceEachTokenIndividually!295 thiss!17480 rules!1920 lt!76045))))

(assert (=> b!208005 (= lt!76045 (seqFromList!612 tokens!465))))

(declare-fun b!208006 () Bool)

(assert (=> b!208006 (= e!128194 true)))

(declare-fun filter!11 (List!3336 Int) List!3336)

(declare-fun list!1237 (BalanceConc!2122) List!3336)

(assert (=> b!208006 (= (filter!11 (list!1237 (_1!1961 (lex!303 thiss!17480 rules!1920 lt!76010))) lambda!6399) (t!31096 tokens!465))))

(declare-fun lt!76035 () Unit!3428)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!2 (LexerInterface!503 List!3335 List!3336 Token!978) Unit!3428)

(assert (=> b!208006 (= lt!76035 (theoremInvertabilityFromTokensSepTokenWhenNeeded!2 thiss!17480 rules!1920 (t!31096 tokens!465) separatorToken!170))))

(declare-fun lt!76032 () Option!543)

(assert (=> b!208006 (= lt!76032 (Some!542 (tuple2!3493 separatorToken!170 lt!76042)))))

(declare-fun lt!76008 () Unit!3428)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!8 (LexerInterface!503 List!3335 Token!978 Rule!1034 List!3334 Rule!1034) Unit!3428)

(assert (=> b!208006 (= lt!76008 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!8 thiss!17480 rules!1920 separatorToken!170 (rule!1144 separatorToken!170) lt!76042 (rule!1144 lt!76025)))))

(declare-fun lt!76050 () Unit!3428)

(assert (=> b!208006 (= lt!76050 e!128186)))

(declare-fun c!39693 () Bool)

(declare-fun contains!562 (List!3334 C!2604) Bool)

(declare-fun usedCharacters!22 (Regex!841) List!3334)

(assert (=> b!208006 (= c!39693 (contains!562 (usedCharacters!22 (regex!617 (rule!1144 separatorToken!170))) lt!76044))))

(declare-fun head!730 (List!3334) C!2604)

(assert (=> b!208006 (= lt!76044 (head!730 lt!76042))))

(declare-fun lt!76037 () Unit!3428)

(assert (=> b!208006 (= lt!76037 e!128203)))

(declare-fun c!39694 () Bool)

(assert (=> b!208006 (= c!39694 (not (contains!562 (usedCharacters!22 (regex!617 (rule!1144 lt!76025))) lt!76009)))))

(assert (=> b!208006 (= lt!76009 (head!730 lt!76014))))

(assert (=> b!208006 e!128172))

(declare-fun res!95626 () Bool)

(assert (=> b!208006 (=> (not res!95626) (not e!128172))))

(declare-fun isDefined!396 (Option!545) Bool)

(assert (=> b!208006 (= res!95626 (isDefined!396 lt!76004))))

(declare-fun getRuleFromTag!58 (LexerInterface!503 List!3335 String!4275) Option!545)

(assert (=> b!208006 (= lt!76004 (getRuleFromTag!58 thiss!17480 rules!1920 (tag!805 (rule!1144 lt!76025))))))

(declare-fun lt!76024 () Unit!3428)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!58 (LexerInterface!503 List!3335 List!3334 Token!978) Unit!3428)

(assert (=> b!208006 (= lt!76024 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!58 thiss!17480 rules!1920 lt!76014 lt!76025))))

(assert (=> b!208006 (= lt!76014 (list!1236 (charsOf!272 lt!76025)))))

(declare-fun lt!76041 () Unit!3428)

(assert (=> b!208006 (= lt!76041 (forallContained!184 tokens!465 lambda!6400 lt!76025))))

(assert (=> b!208006 e!128200))

(declare-fun res!95619 () Bool)

(assert (=> b!208006 (=> (not res!95619) (not e!128200))))

(declare-fun size!2657 (BalanceConc!2122) Int)

(assert (=> b!208006 (= res!95619 (= (size!2657 (_1!1961 lt!76036)) 1))))

(declare-fun lt!76017 () BalanceConc!2120)

(assert (=> b!208006 (= lt!76036 (lex!303 thiss!17480 rules!1920 lt!76017))))

(declare-fun lt!76005 () BalanceConc!2122)

(assert (=> b!208006 (= lt!76017 (printTailRec!197 thiss!17480 lt!76005 0 (BalanceConc!2121 Empty!1056)))))

(assert (=> b!208006 (= lt!76017 (print!234 thiss!17480 lt!76005))))

(assert (=> b!208006 (= lt!76005 (singletonSeq!169 lt!76025))))

(assert (=> b!208006 e!128192))

(declare-fun res!95632 () Bool)

(assert (=> b!208006 (=> (not res!95632) (not e!128192))))

(assert (=> b!208006 (= res!95632 (isDefined!396 lt!76027))))

(assert (=> b!208006 (= lt!76027 (getRuleFromTag!58 thiss!17480 rules!1920 (tag!805 (rule!1144 separatorToken!170))))))

(declare-fun lt!76022 () Unit!3428)

(assert (=> b!208006 (= lt!76022 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!58 thiss!17480 rules!1920 lt!76023 separatorToken!170))))

(assert (=> b!208006 e!128198))

(declare-fun res!95638 () Bool)

(assert (=> b!208006 (=> (not res!95638) (not e!128198))))

(assert (=> b!208006 (= res!95638 (= (size!2657 (_1!1961 lt!76028)) 1))))

(declare-fun lt!76013 () BalanceConc!2120)

(assert (=> b!208006 (= lt!76028 (lex!303 thiss!17480 rules!1920 lt!76013))))

(declare-fun lt!76012 () BalanceConc!2122)

(assert (=> b!208006 (= lt!76013 (printTailRec!197 thiss!17480 lt!76012 0 (BalanceConc!2121 Empty!1056)))))

(assert (=> b!208006 (= lt!76013 (print!234 thiss!17480 lt!76012))))

(assert (=> b!208006 (= lt!76012 (singletonSeq!169 separatorToken!170))))

(assert (=> b!208006 (rulesProduceIndividualToken!252 thiss!17480 rules!1920 lt!76025)))

(declare-fun lt!76018 () Unit!3428)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!70 (LexerInterface!503 List!3335 List!3336 Token!978) Unit!3428)

(assert (=> b!208006 (= lt!76018 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!70 thiss!17480 rules!1920 tokens!465 lt!76025))))

(assert (=> b!208006 (= lt!76025 (head!729 (t!31096 tokens!465)))))

(declare-fun lt!76026 () Unit!3428)

(assert (=> b!208006 (= lt!76026 e!128196)))

(declare-fun c!39692 () Bool)

(declare-fun isEmpty!1782 (List!3336) Bool)

(assert (=> b!208006 (= c!39692 (isEmpty!1782 (t!31096 tokens!465)))))

(assert (=> b!208006 (= lt!76032 (maxPrefix!233 thiss!17480 rules!1920 lt!76003))))

(declare-fun lt!76020 () tuple2!3492)

(assert (=> b!208006 (= lt!76003 (_2!1962 lt!76020))))

(declare-fun lt!76031 () Unit!3428)

(declare-fun lemmaSamePrefixThenSameSuffix!138 (List!3334 List!3334 List!3334 List!3334 List!3334) Unit!3428)

(assert (=> b!208006 (= lt!76031 (lemmaSamePrefixThenSameSuffix!138 lt!76011 lt!76003 lt!76011 (_2!1962 lt!76020) lt!76043))))

(assert (=> b!208006 (= lt!76020 (get!1007 (maxPrefix!233 thiss!17480 rules!1920 lt!76043)))))

(declare-fun isPrefix!313 (List!3334 List!3334) Bool)

(assert (=> b!208006 (isPrefix!313 lt!76011 lt!76006)))

(declare-fun lt!76007 () Unit!3428)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!208 (List!3334 List!3334) Unit!3428)

(assert (=> b!208006 (= lt!76007 (lemmaConcatTwoListThenFirstIsPrefix!208 lt!76011 lt!76003))))

(declare-fun e!128176 () Bool)

(assert (=> b!208006 e!128176))

(declare-fun res!95631 () Bool)

(assert (=> b!208006 (=> res!95631 e!128176)))

(assert (=> b!208006 (= res!95631 (isEmpty!1782 tokens!465))))

(declare-fun lt!76040 () Unit!3428)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!78 (LexerInterface!503 List!3335 List!3336 Token!978) Unit!3428)

(assert (=> b!208006 (= lt!76040 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!78 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!208007 () Bool)

(assert (=> b!208007 (= e!128176 e!128184)))

(declare-fun res!95636 () Bool)

(assert (=> b!208007 (=> (not res!95636) (not e!128184))))

(assert (=> b!208007 (= res!95636 (isDefined!394 lt!76021))))

(assert (=> b!208007 (= lt!76021 (maxPrefix!233 thiss!17480 rules!1920 lt!76043))))

(assert (= (and start!22294 res!95623) b!207966))

(assert (= (and b!207966 res!95642) b!208003))

(assert (= (and b!208003 res!95641) b!208005))

(assert (= (and b!208005 res!95643) b!207971))

(assert (= (and b!207971 res!95621) b!207998))

(assert (= (and b!207998 res!95629) b!207968))

(assert (= (and b!207968 res!95616) b!208000))

(assert (= (and b!208000 res!95620) b!207981))

(assert (= (and b!207981 res!95645) b!207969))

(assert (= (and b!207969 res!95614) b!207973))

(assert (= (and b!207973 res!95634) b!207980))

(assert (= (and b!207980 (not res!95644)) b!207979))

(assert (= (and b!207979 res!95622) b!207986))

(assert (= (and b!207979 (not res!95615)) b!207999))

(assert (= (and b!207999 (not res!95617)) b!207987))

(assert (= (and b!207987 (not res!95635)) b!207961))

(assert (= (and b!207961 (not res!95624)) b!207984))

(assert (= (and b!207984 (not res!95625)) b!207963))

(assert (= (and b!207963 res!95640) b!207962))

(assert (= (and b!207962 res!95618) b!207976))

(assert (= (and b!207963 (not res!95639)) b!208006))

(assert (= (and b!208006 (not res!95631)) b!208007))

(assert (= (and b!208007 res!95636) b!207978))

(assert (= (and b!208006 c!39692) b!208001))

(assert (= (and b!208006 (not c!39692)) b!207967))

(assert (= (and b!208006 res!95638) b!207974))

(assert (= (and b!207974 res!95633) b!207975))

(assert (= (and b!208006 res!95632) b!208002))

(assert (= (and b!208002 res!95627) b!207970))

(assert (= (and b!208006 res!95619) b!207996))

(assert (= (and b!207996 res!95630) b!207988))

(assert (= (and b!208006 res!95626) b!207995))

(assert (= (and b!207995 res!95628) b!207990))

(assert (= (and b!208006 c!39694) b!207982))

(assert (= (and b!208006 (not c!39694)) b!207992))

(assert (= (and b!207982 res!95637) b!207993))

(assert (= (and b!208006 c!39693) b!207994))

(assert (= (and b!208006 (not c!39693)) b!207977))

(assert (= b!207972 b!207989))

(assert (= b!208004 b!207972))

(assert (= (and start!22294 ((_ is Cons!3325) rules!1920)) b!208004))

(assert (= b!207991 b!207960))

(assert (= b!207985 b!207991))

(assert (= start!22294 b!207985))

(assert (= b!207964 b!207997))

(assert (= b!207965 b!207964))

(assert (= b!207983 b!207965))

(assert (= (and start!22294 ((_ is Cons!3326) tokens!465)) b!207983))

(declare-fun m!229719 () Bool)

(assert (=> b!207962 m!229719))

(declare-fun m!229721 () Bool)

(assert (=> b!208007 m!229721))

(declare-fun m!229723 () Bool)

(assert (=> b!208007 m!229723))

(declare-fun m!229725 () Bool)

(assert (=> b!207986 m!229725))

(declare-fun m!229727 () Bool)

(assert (=> b!208002 m!229727))

(declare-fun m!229729 () Bool)

(assert (=> b!208002 m!229729))

(declare-fun m!229731 () Bool)

(assert (=> b!207978 m!229731))

(declare-fun m!229733 () Bool)

(assert (=> b!207978 m!229733))

(declare-fun m!229735 () Bool)

(assert (=> b!207996 m!229735))

(declare-fun m!229737 () Bool)

(assert (=> b!207976 m!229737))

(declare-fun m!229739 () Bool)

(assert (=> b!207987 m!229739))

(declare-fun m!229741 () Bool)

(assert (=> b!207982 m!229741))

(declare-fun m!229743 () Bool)

(assert (=> b!207982 m!229743))

(declare-fun m!229745 () Bool)

(assert (=> start!22294 m!229745))

(declare-fun m!229747 () Bool)

(assert (=> b!207969 m!229747))

(assert (=> b!207969 m!229747))

(declare-fun m!229749 () Bool)

(assert (=> b!207969 m!229749))

(declare-fun m!229751 () Bool)

(assert (=> b!207969 m!229751))

(declare-fun m!229753 () Bool)

(assert (=> b!207974 m!229753))

(declare-fun m!229755 () Bool)

(assert (=> b!207984 m!229755))

(assert (=> b!207984 m!229755))

(declare-fun m!229757 () Bool)

(assert (=> b!207984 m!229757))

(assert (=> b!207984 m!229757))

(declare-fun m!229759 () Bool)

(assert (=> b!207984 m!229759))

(declare-fun m!229761 () Bool)

(assert (=> b!207984 m!229761))

(declare-fun m!229763 () Bool)

(assert (=> b!207963 m!229763))

(declare-fun m!229765 () Bool)

(assert (=> b!207963 m!229765))

(declare-fun m!229767 () Bool)

(assert (=> b!207963 m!229767))

(declare-fun m!229769 () Bool)

(assert (=> b!207985 m!229769))

(declare-fun m!229771 () Bool)

(assert (=> b!207964 m!229771))

(declare-fun m!229773 () Bool)

(assert (=> b!207964 m!229773))

(declare-fun m!229775 () Bool)

(assert (=> b!207973 m!229775))

(assert (=> b!207973 m!229775))

(declare-fun m!229777 () Bool)

(assert (=> b!207973 m!229777))

(declare-fun m!229779 () Bool)

(assert (=> b!207980 m!229779))

(declare-fun m!229781 () Bool)

(assert (=> b!207980 m!229781))

(declare-fun m!229783 () Bool)

(assert (=> b!207980 m!229783))

(declare-fun m!229785 () Bool)

(assert (=> b!207980 m!229785))

(declare-fun m!229787 () Bool)

(assert (=> b!207980 m!229787))

(declare-fun m!229789 () Bool)

(assert (=> b!207980 m!229789))

(assert (=> b!207980 m!229785))

(declare-fun m!229791 () Bool)

(assert (=> b!207980 m!229791))

(declare-fun m!229793 () Bool)

(assert (=> b!207980 m!229793))

(declare-fun m!229795 () Bool)

(assert (=> b!207980 m!229795))

(assert (=> b!207980 m!229779))

(declare-fun m!229797 () Bool)

(assert (=> b!207980 m!229797))

(declare-fun m!229799 () Bool)

(assert (=> b!207980 m!229799))

(declare-fun m!229801 () Bool)

(assert (=> b!207980 m!229801))

(assert (=> b!207980 m!229793))

(assert (=> b!207980 m!229791))

(declare-fun m!229803 () Bool)

(assert (=> b!207980 m!229803))

(declare-fun m!229805 () Bool)

(assert (=> b!207995 m!229805))

(declare-fun m!229807 () Bool)

(assert (=> b!207995 m!229807))

(declare-fun m!229809 () Bool)

(assert (=> b!207968 m!229809))

(declare-fun m!229811 () Bool)

(assert (=> b!207999 m!229811))

(declare-fun m!229813 () Bool)

(assert (=> b!207999 m!229813))

(declare-fun m!229815 () Bool)

(assert (=> b!207999 m!229815))

(declare-fun m!229817 () Bool)

(assert (=> b!207999 m!229817))

(declare-fun m!229819 () Bool)

(assert (=> b!207999 m!229819))

(declare-fun m!229821 () Bool)

(assert (=> b!207983 m!229821))

(declare-fun m!229823 () Bool)

(assert (=> b!207991 m!229823))

(declare-fun m!229825 () Bool)

(assert (=> b!207991 m!229825))

(declare-fun m!229827 () Bool)

(assert (=> b!207971 m!229827))

(declare-fun m!229829 () Bool)

(assert (=> b!208000 m!229829))

(declare-fun m!229831 () Bool)

(assert (=> b!207994 m!229831))

(declare-fun m!229833 () Bool)

(assert (=> b!207975 m!229833))

(declare-fun m!229835 () Bool)

(assert (=> b!208006 m!229835))

(declare-fun m!229837 () Bool)

(assert (=> b!208006 m!229837))

(declare-fun m!229839 () Bool)

(assert (=> b!208006 m!229839))

(declare-fun m!229841 () Bool)

(assert (=> b!208006 m!229841))

(declare-fun m!229843 () Bool)

(assert (=> b!208006 m!229843))

(declare-fun m!229845 () Bool)

(assert (=> b!208006 m!229845))

(declare-fun m!229847 () Bool)

(assert (=> b!208006 m!229847))

(declare-fun m!229849 () Bool)

(assert (=> b!208006 m!229849))

(declare-fun m!229851 () Bool)

(assert (=> b!208006 m!229851))

(declare-fun m!229853 () Bool)

(assert (=> b!208006 m!229853))

(declare-fun m!229855 () Bool)

(assert (=> b!208006 m!229855))

(declare-fun m!229857 () Bool)

(assert (=> b!208006 m!229857))

(declare-fun m!229859 () Bool)

(assert (=> b!208006 m!229859))

(declare-fun m!229861 () Bool)

(assert (=> b!208006 m!229861))

(declare-fun m!229863 () Bool)

(assert (=> b!208006 m!229863))

(declare-fun m!229865 () Bool)

(assert (=> b!208006 m!229865))

(declare-fun m!229867 () Bool)

(assert (=> b!208006 m!229867))

(declare-fun m!229869 () Bool)

(assert (=> b!208006 m!229869))

(declare-fun m!229871 () Bool)

(assert (=> b!208006 m!229871))

(declare-fun m!229873 () Bool)

(assert (=> b!208006 m!229873))

(declare-fun m!229875 () Bool)

(assert (=> b!208006 m!229875))

(assert (=> b!208006 m!229723))

(declare-fun m!229877 () Bool)

(assert (=> b!208006 m!229877))

(declare-fun m!229879 () Bool)

(assert (=> b!208006 m!229879))

(declare-fun m!229881 () Bool)

(assert (=> b!208006 m!229881))

(declare-fun m!229883 () Bool)

(assert (=> b!208006 m!229883))

(declare-fun m!229885 () Bool)

(assert (=> b!208006 m!229885))

(assert (=> b!208006 m!229877))

(declare-fun m!229887 () Bool)

(assert (=> b!208006 m!229887))

(declare-fun m!229889 () Bool)

(assert (=> b!208006 m!229889))

(declare-fun m!229891 () Bool)

(assert (=> b!208006 m!229891))

(declare-fun m!229893 () Bool)

(assert (=> b!208006 m!229893))

(declare-fun m!229895 () Bool)

(assert (=> b!208006 m!229895))

(declare-fun m!229897 () Bool)

(assert (=> b!208006 m!229897))

(declare-fun m!229899 () Bool)

(assert (=> b!208006 m!229899))

(declare-fun m!229901 () Bool)

(assert (=> b!208006 m!229901))

(assert (=> b!208006 m!229849))

(declare-fun m!229903 () Bool)

(assert (=> b!208006 m!229903))

(declare-fun m!229905 () Bool)

(assert (=> b!208006 m!229905))

(declare-fun m!229907 () Bool)

(assert (=> b!208006 m!229907))

(declare-fun m!229909 () Bool)

(assert (=> b!208006 m!229909))

(declare-fun m!229911 () Bool)

(assert (=> b!208006 m!229911))

(assert (=> b!208006 m!229843))

(declare-fun m!229913 () Bool)

(assert (=> b!208006 m!229913))

(assert (=> b!208006 m!229723))

(declare-fun m!229915 () Bool)

(assert (=> b!208006 m!229915))

(assert (=> b!208006 m!229861))

(declare-fun m!229917 () Bool)

(assert (=> b!207965 m!229917))

(declare-fun m!229919 () Bool)

(assert (=> b!207988 m!229919))

(declare-fun m!229921 () Bool)

(assert (=> b!207966 m!229921))

(declare-fun m!229923 () Bool)

(assert (=> b!207961 m!229923))

(assert (=> b!207961 m!229923))

(declare-fun m!229925 () Bool)

(assert (=> b!207961 m!229925))

(declare-fun m!229927 () Bool)

(assert (=> b!207961 m!229927))

(declare-fun m!229929 () Bool)

(assert (=> b!208003 m!229929))

(declare-fun m!229931 () Bool)

(assert (=> b!207972 m!229931))

(declare-fun m!229933 () Bool)

(assert (=> b!207972 m!229933))

(declare-fun m!229935 () Bool)

(assert (=> b!208005 m!229935))

(declare-fun m!229937 () Bool)

(assert (=> b!208005 m!229937))

(check-sat (not b!207968) (not b_next!8063) (not b!208003) (not b!207991) (not b!207965) (not b!207982) (not b!207983) (not b!207964) (not b!207971) b_and!15037 (not b!207986) (not b!208000) (not b!207987) (not b!207975) b_and!15033 (not b!207999) b_and!15039 (not b!207996) (not b_next!8061) b_and!15029 (not start!22294) (not b!207966) (not b!207980) (not b!207976) (not b!208005) (not b!207984) (not b_next!8057) (not b!207978) (not b_next!8067) (not b!208002) (not b!207961) (not b!207988) (not b!208007) (not b!207973) (not b!207963) (not b!207995) b_and!15035 (not b!207994) (not b!207962) (not b!208016) (not b!208004) (not b!207985) (not b!207974) (not b!207969) (not b!207972) (not b_next!8059) (not b_next!8065) b_and!15031 (not b!208006))
(check-sat (not b_next!8063) b_and!15033 b_and!15029 b_and!15035 b_and!15037 (not b_next!8059) b_and!15039 (not b_next!8061) (not b_next!8057) (not b_next!8067) (not b_next!8065) b_and!15031)
