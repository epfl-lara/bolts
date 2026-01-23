; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!406566 () Bool)

(assert start!406566)

(declare-fun b!4247134 () Bool)

(declare-fun b_free!126131 () Bool)

(declare-fun b_next!126835 () Bool)

(assert (=> b!4247134 (= b_free!126131 (not b_next!126835))))

(declare-fun tp!1302878 () Bool)

(declare-fun b_and!336501 () Bool)

(assert (=> b!4247134 (= tp!1302878 b_and!336501)))

(declare-fun b_free!126133 () Bool)

(declare-fun b_next!126837 () Bool)

(assert (=> b!4247134 (= b_free!126133 (not b_next!126837))))

(declare-fun tp!1302871 () Bool)

(declare-fun b_and!336503 () Bool)

(assert (=> b!4247134 (= tp!1302871 b_and!336503)))

(declare-fun b!4247139 () Bool)

(declare-fun b_free!126135 () Bool)

(declare-fun b_next!126839 () Bool)

(assert (=> b!4247139 (= b_free!126135 (not b_next!126839))))

(declare-fun tp!1302875 () Bool)

(declare-fun b_and!336505 () Bool)

(assert (=> b!4247139 (= tp!1302875 b_and!336505)))

(declare-fun b_free!126137 () Bool)

(declare-fun b_next!126841 () Bool)

(assert (=> b!4247139 (= b_free!126137 (not b_next!126841))))

(declare-fun tp!1302873 () Bool)

(declare-fun b_and!336507 () Bool)

(assert (=> b!4247139 (= tp!1302873 b_and!336507)))

(declare-fun b!4247127 () Bool)

(declare-fun e!2637885 () Bool)

(declare-fun e!2637894 () Bool)

(assert (=> b!4247127 (= e!2637885 e!2637894)))

(declare-fun res!1746050 () Bool)

(assert (=> b!4247127 (=> (not res!1746050) (not e!2637894))))

(declare-datatypes ((List!47153 0))(
  ( (Nil!47029) (Cons!47029 (h!52449 (_ BitVec 16)) (t!351818 List!47153)) )
))
(declare-datatypes ((TokenValue!8188 0))(
  ( (FloatLiteralValue!16376 (text!57761 List!47153)) (TokenValueExt!8187 (__x!28599 Int)) (Broken!40940 (value!247313 List!47153)) (Object!8311) (End!8188) (Def!8188) (Underscore!8188) (Match!8188) (Else!8188) (Error!8188) (Case!8188) (If!8188) (Extends!8188) (Abstract!8188) (Class!8188) (Val!8188) (DelimiterValue!16376 (del!8248 List!47153)) (KeywordValue!8194 (value!247314 List!47153)) (CommentValue!16376 (value!247315 List!47153)) (WhitespaceValue!16376 (value!247316 List!47153)) (IndentationValue!8188 (value!247317 List!47153)) (String!54869) (Int32!8188) (Broken!40941 (value!247318 List!47153)) (Boolean!8189) (Unit!66038) (OperatorValue!8191 (op!8248 List!47153)) (IdentifierValue!16376 (value!247319 List!47153)) (IdentifierValue!16377 (value!247320 List!47153)) (WhitespaceValue!16377 (value!247321 List!47153)) (True!16376) (False!16376) (Broken!40942 (value!247322 List!47153)) (Broken!40943 (value!247323 List!47153)) (True!16377) (RightBrace!8188) (RightBracket!8188) (Colon!8188) (Null!8188) (Comma!8188) (LeftBracket!8188) (False!16377) (LeftBrace!8188) (ImaginaryLiteralValue!8188 (text!57762 List!47153)) (StringLiteralValue!24564 (value!247324 List!47153)) (EOFValue!8188 (value!247325 List!47153)) (IdentValue!8188 (value!247326 List!47153)) (DelimiterValue!16377 (value!247327 List!47153)) (DedentValue!8188 (value!247328 List!47153)) (NewLineValue!8188 (value!247329 List!47153)) (IntegerValue!24564 (value!247330 (_ BitVec 32)) (text!57763 List!47153)) (IntegerValue!24565 (value!247331 Int) (text!57764 List!47153)) (Times!8188) (Or!8188) (Equal!8188) (Minus!8188) (Broken!40944 (value!247332 List!47153)) (And!8188) (Div!8188) (LessEqual!8188) (Mod!8188) (Concat!21051) (Not!8188) (Plus!8188) (SpaceValue!8188 (value!247333 List!47153)) (IntegerValue!24566 (value!247334 Int) (text!57765 List!47153)) (StringLiteralValue!24565 (text!57766 List!47153)) (FloatLiteralValue!16377 (text!57767 List!47153)) (BytesLiteralValue!8188 (value!247335 List!47153)) (CommentValue!16377 (value!247336 List!47153)) (StringLiteralValue!24566 (value!247337 List!47153)) (ErrorTokenValue!8188 (msg!8249 List!47153)) )
))
(declare-datatypes ((C!25924 0))(
  ( (C!25925 (val!15152 Int)) )
))
(declare-datatypes ((List!47154 0))(
  ( (Nil!47030) (Cons!47030 (h!52450 C!25924) (t!351819 List!47154)) )
))
(declare-datatypes ((IArray!28343 0))(
  ( (IArray!28344 (innerList!14229 List!47154)) )
))
(declare-datatypes ((Conc!14169 0))(
  ( (Node!14169 (left!34902 Conc!14169) (right!35232 Conc!14169) (csize!28568 Int) (cheight!14380 Int)) (Leaf!21907 (xs!17475 IArray!28343) (csize!28569 Int)) (Empty!14169) )
))
(declare-datatypes ((BalanceConc!27932 0))(
  ( (BalanceConc!27933 (c!721326 Conc!14169)) )
))
(declare-datatypes ((TokenValueInjection!15804 0))(
  ( (TokenValueInjection!15805 (toValue!10722 Int) (toChars!10581 Int)) )
))
(declare-datatypes ((Regex!12863 0))(
  ( (ElementMatch!12863 (c!721327 C!25924)) (Concat!21052 (regOne!26238 Regex!12863) (regTwo!26238 Regex!12863)) (EmptyExpr!12863) (Star!12863 (reg!13192 Regex!12863)) (EmptyLang!12863) (Union!12863 (regOne!26239 Regex!12863) (regTwo!26239 Regex!12863)) )
))
(declare-datatypes ((String!54870 0))(
  ( (String!54871 (value!247338 String)) )
))
(declare-datatypes ((Rule!15716 0))(
  ( (Rule!15717 (regex!7958 Regex!12863) (tag!8822 String!54870) (isSeparator!7958 Bool) (transformation!7958 TokenValueInjection!15804)) )
))
(declare-datatypes ((Token!14542 0))(
  ( (Token!14543 (value!247339 TokenValue!8188) (rule!11088 Rule!15716) (size!34436 Int) (originalCharacters!8302 List!47154)) )
))
(declare-datatypes ((tuple2!44590 0))(
  ( (tuple2!44591 (_1!25429 Token!14542) (_2!25429 List!47154)) )
))
(declare-datatypes ((Option!10092 0))(
  ( (None!10091) (Some!10091 (v!41045 tuple2!44590)) )
))
(declare-fun lt!1507794 () Option!10092)

(declare-fun lt!1507793 () Option!10092)

(get-info :version)

(assert (=> b!4247127 (= res!1746050 (and ((_ is Some!10091) lt!1507794) ((_ is Some!10091) lt!1507793)))))

(declare-datatypes ((LexerInterface!7553 0))(
  ( (LexerInterfaceExt!7550 (__x!28600 Int)) (Lexer!7551) )
))
(declare-fun thiss!21641 () LexerInterface!7553)

(declare-datatypes ((List!47155 0))(
  ( (Nil!47031) (Cons!47031 (h!52451 Rule!15716) (t!351820 List!47155)) )
))
(declare-fun rules!2971 () List!47155)

(declare-fun shorterInput!62 () List!47154)

(declare-fun maxPrefix!4509 (LexerInterface!7553 List!47155 List!47154) Option!10092)

(assert (=> b!4247127 (= lt!1507793 (maxPrefix!4509 thiss!21641 rules!2971 shorterInput!62))))

(declare-fun longerInput!62 () List!47154)

(assert (=> b!4247127 (= lt!1507794 (maxPrefix!4509 thiss!21641 rules!2971 longerInput!62))))

(declare-fun b!4247128 () Bool)

(declare-fun res!1746048 () Bool)

(assert (=> b!4247128 (=> (not res!1746048) (not e!2637885))))

(declare-fun suffix!1284 () List!47154)

(declare-datatypes ((List!47156 0))(
  ( (Nil!47032) (Cons!47032 (h!52452 Token!14542) (t!351821 List!47156)) )
))
(declare-fun tokens!592 () List!47156)

(declare-datatypes ((tuple2!44592 0))(
  ( (tuple2!44593 (_1!25430 List!47156) (_2!25430 List!47154)) )
))
(declare-fun lexList!2059 (LexerInterface!7553 List!47155 List!47154) tuple2!44592)

(assert (=> b!4247128 (= res!1746048 (= (lexList!2059 thiss!21641 rules!2971 longerInput!62) (tuple2!44593 tokens!592 suffix!1284)))))

(declare-fun b!4247129 () Bool)

(declare-fun res!1746043 () Bool)

(assert (=> b!4247129 (=> (not res!1746043) (not e!2637885))))

(declare-fun isEmpty!27820 (List!47155) Bool)

(assert (=> b!4247129 (= res!1746043 (not (isEmpty!27820 rules!2971)))))

(declare-fun b!4247130 () Bool)

(declare-fun tp!1302867 () Bool)

(declare-fun e!2637886 () Bool)

(declare-fun e!2637883 () Bool)

(declare-fun inv!61790 (String!54870) Bool)

(declare-fun inv!61793 (TokenValueInjection!15804) Bool)

(assert (=> b!4247130 (= e!2637883 (and tp!1302867 (inv!61790 (tag!8822 (rule!11088 (h!52452 tokens!592)))) (inv!61793 (transformation!7958 (rule!11088 (h!52452 tokens!592)))) e!2637886))))

(declare-fun b!4247131 () Bool)

(declare-fun e!2637887 () Bool)

(declare-fun tp_is_empty!22717 () Bool)

(declare-fun tp!1302868 () Bool)

(assert (=> b!4247131 (= e!2637887 (and tp_is_empty!22717 tp!1302868))))

(declare-fun b!4247132 () Bool)

(declare-fun e!2637895 () Bool)

(declare-fun e!2637893 () Bool)

(declare-fun tp!1302870 () Bool)

(assert (=> b!4247132 (= e!2637895 (and e!2637893 tp!1302870))))

(declare-fun b!4247133 () Bool)

(assert (=> b!4247133 (= e!2637894 false)))

(declare-fun lt!1507792 () List!47154)

(declare-fun ++!11971 (List!47154 List!47154) List!47154)

(declare-fun list!16944 (BalanceConc!27932) List!47154)

(declare-fun charsOf!5302 (Token!14542) BalanceConc!27932)

(assert (=> b!4247133 (= lt!1507792 (++!11971 (list!16944 (charsOf!5302 (_1!25429 (v!41045 lt!1507793)))) (_2!25429 (v!41045 lt!1507793))))))

(assert (=> b!4247134 (= e!2637886 (and tp!1302878 tp!1302871))))

(declare-fun b!4247136 () Bool)

(declare-fun res!1746047 () Bool)

(assert (=> b!4247136 (=> (not res!1746047) (not e!2637885))))

(declare-fun rulesInvariant!6664 (LexerInterface!7553 List!47155) Bool)

(assert (=> b!4247136 (= res!1746047 (rulesInvariant!6664 thiss!21641 rules!2971))))

(declare-fun b!4247137 () Bool)

(declare-fun res!1746044 () Bool)

(assert (=> b!4247137 (=> (not res!1746044) (not e!2637885))))

(declare-fun isEmpty!27821 (List!47154) Bool)

(assert (=> b!4247137 (= res!1746044 (not (isEmpty!27821 longerInput!62)))))

(declare-fun b!4247138 () Bool)

(declare-fun e!2637891 () Bool)

(declare-fun tp!1302877 () Bool)

(assert (=> b!4247138 (= e!2637891 (and tp_is_empty!22717 tp!1302877))))

(declare-fun e!2637896 () Bool)

(assert (=> b!4247139 (= e!2637896 (and tp!1302875 tp!1302873))))

(declare-fun b!4247140 () Bool)

(declare-fun e!2637889 () Bool)

(declare-fun tp!1302874 () Bool)

(assert (=> b!4247140 (= e!2637889 (and tp_is_empty!22717 tp!1302874))))

(declare-fun b!4247141 () Bool)

(declare-fun res!1746045 () Bool)

(assert (=> b!4247141 (=> (not res!1746045) (not e!2637885))))

(declare-fun size!34437 (List!47154) Int)

(assert (=> b!4247141 (= res!1746045 (> (size!34437 longerInput!62) (size!34437 shorterInput!62)))))

(declare-fun b!4247142 () Bool)

(declare-fun tp!1302876 () Bool)

(assert (=> b!4247142 (= e!2637893 (and tp!1302876 (inv!61790 (tag!8822 (h!52451 rules!2971))) (inv!61793 (transformation!7958 (h!52451 rules!2971))) e!2637896))))

(declare-fun tp!1302869 () Bool)

(declare-fun b!4247143 () Bool)

(declare-fun e!2637888 () Bool)

(declare-fun e!2637884 () Bool)

(declare-fun inv!61794 (Token!14542) Bool)

(assert (=> b!4247143 (= e!2637888 (and (inv!61794 (h!52452 tokens!592)) e!2637884 tp!1302869))))

(declare-fun b!4247144 () Bool)

(declare-fun res!1746049 () Bool)

(assert (=> b!4247144 (=> (not res!1746049) (not e!2637894))))

(assert (=> b!4247144 (= res!1746049 (= (++!11971 (list!16944 (charsOf!5302 (_1!25429 (v!41045 lt!1507794)))) (_2!25429 (v!41045 lt!1507794))) longerInput!62))))

(declare-fun tp!1302872 () Bool)

(declare-fun b!4247135 () Bool)

(declare-fun inv!21 (TokenValue!8188) Bool)

(assert (=> b!4247135 (= e!2637884 (and (inv!21 (value!247339 (h!52452 tokens!592))) e!2637883 tp!1302872))))

(declare-fun res!1746046 () Bool)

(assert (=> start!406566 (=> (not res!1746046) (not e!2637885))))

(assert (=> start!406566 (= res!1746046 ((_ is Lexer!7551) thiss!21641))))

(assert (=> start!406566 e!2637885))

(assert (=> start!406566 true))

(assert (=> start!406566 e!2637887))

(assert (=> start!406566 e!2637889))

(assert (=> start!406566 e!2637888))

(assert (=> start!406566 e!2637895))

(assert (=> start!406566 e!2637891))

(assert (= (and start!406566 res!1746046) b!4247129))

(assert (= (and b!4247129 res!1746043) b!4247136))

(assert (= (and b!4247136 res!1746047) b!4247137))

(assert (= (and b!4247137 res!1746044) b!4247141))

(assert (= (and b!4247141 res!1746045) b!4247128))

(assert (= (and b!4247128 res!1746048) b!4247127))

(assert (= (and b!4247127 res!1746050) b!4247144))

(assert (= (and b!4247144 res!1746049) b!4247133))

(assert (= (and start!406566 ((_ is Cons!47030) suffix!1284)) b!4247131))

(assert (= (and start!406566 ((_ is Cons!47030) longerInput!62)) b!4247140))

(assert (= b!4247130 b!4247134))

(assert (= b!4247135 b!4247130))

(assert (= b!4247143 b!4247135))

(assert (= (and start!406566 ((_ is Cons!47032) tokens!592)) b!4247143))

(assert (= b!4247142 b!4247139))

(assert (= b!4247132 b!4247142))

(assert (= (and start!406566 ((_ is Cons!47031) rules!2971)) b!4247132))

(assert (= (and start!406566 ((_ is Cons!47030) shorterInput!62)) b!4247138))

(declare-fun m!4831935 () Bool)

(assert (=> b!4247128 m!4831935))

(declare-fun m!4831937 () Bool)

(assert (=> b!4247143 m!4831937))

(declare-fun m!4831939 () Bool)

(assert (=> b!4247127 m!4831939))

(declare-fun m!4831941 () Bool)

(assert (=> b!4247127 m!4831941))

(declare-fun m!4831943 () Bool)

(assert (=> b!4247142 m!4831943))

(declare-fun m!4831945 () Bool)

(assert (=> b!4247142 m!4831945))

(declare-fun m!4831947 () Bool)

(assert (=> b!4247130 m!4831947))

(declare-fun m!4831949 () Bool)

(assert (=> b!4247130 m!4831949))

(declare-fun m!4831951 () Bool)

(assert (=> b!4247129 m!4831951))

(declare-fun m!4831953 () Bool)

(assert (=> b!4247137 m!4831953))

(declare-fun m!4831955 () Bool)

(assert (=> b!4247144 m!4831955))

(assert (=> b!4247144 m!4831955))

(declare-fun m!4831957 () Bool)

(assert (=> b!4247144 m!4831957))

(assert (=> b!4247144 m!4831957))

(declare-fun m!4831959 () Bool)

(assert (=> b!4247144 m!4831959))

(declare-fun m!4831961 () Bool)

(assert (=> b!4247141 m!4831961))

(declare-fun m!4831963 () Bool)

(assert (=> b!4247141 m!4831963))

(declare-fun m!4831965 () Bool)

(assert (=> b!4247135 m!4831965))

(declare-fun m!4831967 () Bool)

(assert (=> b!4247136 m!4831967))

(declare-fun m!4831969 () Bool)

(assert (=> b!4247133 m!4831969))

(assert (=> b!4247133 m!4831969))

(declare-fun m!4831971 () Bool)

(assert (=> b!4247133 m!4831971))

(assert (=> b!4247133 m!4831971))

(declare-fun m!4831973 () Bool)

(assert (=> b!4247133 m!4831973))

(check-sat (not b_next!126839) (not b!4247142) (not b!4247137) (not b!4247140) (not b!4247133) (not b!4247141) (not b!4247132) (not b!4247144) (not b!4247130) (not b_next!126841) b_and!336503 (not b_next!126837) tp_is_empty!22717 (not b!4247138) (not b!4247127) b_and!336505 (not b!4247136) (not b!4247143) (not b!4247128) b_and!336507 b_and!336501 (not b_next!126835) (not b!4247131) (not b!4247129) (not b!4247135))
(check-sat (not b_next!126839) b_and!336505 (not b_next!126841) b_and!336503 (not b_next!126837) b_and!336507 b_and!336501 (not b_next!126835))
