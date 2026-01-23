; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!511360 () Bool)

(assert start!511360)

(declare-fun b!4886094 () Bool)

(declare-fun b_free!131251 () Bool)

(declare-fun b_next!132041 () Bool)

(assert (=> b!4886094 (= b_free!131251 (not b_next!132041))))

(declare-fun tp!1375057 () Bool)

(declare-fun b_and!344083 () Bool)

(assert (=> b!4886094 (= tp!1375057 b_and!344083)))

(declare-fun b_free!131253 () Bool)

(declare-fun b_next!132043 () Bool)

(assert (=> b!4886094 (= b_free!131253 (not b_next!132043))))

(declare-fun tp!1375055 () Bool)

(declare-fun b_and!344085 () Bool)

(assert (=> b!4886094 (= tp!1375055 b_and!344085)))

(declare-fun b!4886087 () Bool)

(declare-fun e!3054253 () Bool)

(declare-datatypes ((String!63651 0))(
  ( (String!63652 (value!260888 String)) )
))
(declare-datatypes ((C!26612 0))(
  ( (C!26613 (val!22640 Int)) )
))
(declare-datatypes ((List!56401 0))(
  ( (Nil!56277) (Cons!56277 (h!62725 C!26612) (t!365047 List!56401)) )
))
(declare-datatypes ((IArray!29461 0))(
  ( (IArray!29462 (innerList!14788 List!56401)) )
))
(declare-datatypes ((Conc!14700 0))(
  ( (Node!14700 (left!40876 Conc!14700) (right!41206 Conc!14700) (csize!29630 Int) (cheight!14911 Int)) (Leaf!24483 (xs!18016 IArray!29461) (csize!29631 Int)) (Empty!14700) )
))
(declare-datatypes ((BalanceConc!28830 0))(
  ( (BalanceConc!28831 (c!830697 Conc!14700)) )
))
(declare-datatypes ((List!56402 0))(
  ( (Nil!56278) (Cons!56278 (h!62726 (_ BitVec 16)) (t!365048 List!56402)) )
))
(declare-datatypes ((TokenValue!8442 0))(
  ( (FloatLiteralValue!16884 (text!59539 List!56402)) (TokenValueExt!8441 (__x!34177 Int)) (Broken!42210 (value!260889 List!56402)) (Object!8565) (End!8442) (Def!8442) (Underscore!8442) (Match!8442) (Else!8442) (Error!8442) (Case!8442) (If!8442) (Extends!8442) (Abstract!8442) (Class!8442) (Val!8442) (DelimiterValue!16884 (del!8502 List!56402)) (KeywordValue!8448 (value!260890 List!56402)) (CommentValue!16884 (value!260891 List!56402)) (WhitespaceValue!16884 (value!260892 List!56402)) (IndentationValue!8442 (value!260893 List!56402)) (String!63653) (Int32!8442) (Broken!42211 (value!260894 List!56402)) (Boolean!8443) (Unit!146267) (OperatorValue!8445 (op!8502 List!56402)) (IdentifierValue!16884 (value!260895 List!56402)) (IdentifierValue!16885 (value!260896 List!56402)) (WhitespaceValue!16885 (value!260897 List!56402)) (True!16884) (False!16884) (Broken!42212 (value!260898 List!56402)) (Broken!42213 (value!260899 List!56402)) (True!16885) (RightBrace!8442) (RightBracket!8442) (Colon!8442) (Null!8442) (Comma!8442) (LeftBracket!8442) (False!16885) (LeftBrace!8442) (ImaginaryLiteralValue!8442 (text!59540 List!56402)) (StringLiteralValue!25326 (value!260900 List!56402)) (EOFValue!8442 (value!260901 List!56402)) (IdentValue!8442 (value!260902 List!56402)) (DelimiterValue!16885 (value!260903 List!56402)) (DedentValue!8442 (value!260904 List!56402)) (NewLineValue!8442 (value!260905 List!56402)) (IntegerValue!25326 (value!260906 (_ BitVec 32)) (text!59541 List!56402)) (IntegerValue!25327 (value!260907 Int) (text!59542 List!56402)) (Times!8442) (Or!8442) (Equal!8442) (Minus!8442) (Broken!42214 (value!260908 List!56402)) (And!8442) (Div!8442) (LessEqual!8442) (Mod!8442) (Concat!21649) (Not!8442) (Plus!8442) (SpaceValue!8442 (value!260909 List!56402)) (IntegerValue!25328 (value!260910 Int) (text!59543 List!56402)) (StringLiteralValue!25327 (text!59544 List!56402)) (FloatLiteralValue!16885 (text!59545 List!56402)) (BytesLiteralValue!8442 (value!260911 List!56402)) (CommentValue!16885 (value!260912 List!56402)) (StringLiteralValue!25328 (value!260913 List!56402)) (ErrorTokenValue!8442 (msg!8503 List!56402)) )
))
(declare-datatypes ((Regex!13207 0))(
  ( (ElementMatch!13207 (c!830698 C!26612)) (Concat!21650 (regOne!26926 Regex!13207) (regTwo!26926 Regex!13207)) (EmptyExpr!13207) (Star!13207 (reg!13536 Regex!13207)) (EmptyLang!13207) (Union!13207 (regOne!26927 Regex!13207) (regTwo!26927 Regex!13207)) )
))
(declare-datatypes ((TokenValueInjection!16192 0))(
  ( (TokenValueInjection!16193 (toValue!11019 Int) (toChars!10878 Int)) )
))
(declare-datatypes ((Rule!16064 0))(
  ( (Rule!16065 (regex!8132 Regex!13207) (tag!8996 String!63651) (isSeparator!8132 Bool) (transformation!8132 TokenValueInjection!16192)) )
))
(declare-datatypes ((Token!14832 0))(
  ( (Token!14833 (value!260914 TokenValue!8442) (rule!11302 Rule!16064) (size!37064 Int) (originalCharacters!8447 List!56401)) )
))
(declare-datatypes ((tuple2!60244 0))(
  ( (tuple2!60245 (_1!33425 Token!14832) (_2!33425 BalanceConc!28830)) )
))
(declare-fun lt!2002152 () tuple2!60244)

(declare-datatypes ((tuple2!60246 0))(
  ( (tuple2!60247 (_1!33426 Token!14832) (_2!33426 List!56401)) )
))
(declare-fun lt!2002155 () tuple2!60246)

(declare-fun list!17665 (BalanceConc!28830) List!56401)

(assert (=> b!4886087 (= e!3054253 (= (list!17665 (_2!33425 lt!2002152)) (_2!33426 lt!2002155)))))

(declare-fun b!4886088 () Bool)

(declare-fun e!3054261 () Bool)

(declare-fun e!3054257 () Bool)

(assert (=> b!4886088 (= e!3054261 (not e!3054257))))

(declare-fun res!2086375 () Bool)

(assert (=> b!4886088 (=> res!2086375 e!3054257)))

(declare-datatypes ((List!56403 0))(
  ( (Nil!56279) (Cons!56279 (h!62727 Rule!16064) (t!365049 List!56403)) )
))
(declare-fun rulesArg!165 () List!56403)

(get-info :version)

(assert (=> b!4886088 (= res!2086375 (or (and ((_ is Cons!56279) rulesArg!165) ((_ is Nil!56279) (t!365049 rulesArg!165))) (not ((_ is Cons!56279) rulesArg!165))))))

(declare-fun lt!2002153 () List!56401)

(declare-fun isPrefix!4854 (List!56401 List!56401) Bool)

(assert (=> b!4886088 (isPrefix!4854 lt!2002153 lt!2002153)))

(declare-datatypes ((Unit!146268 0))(
  ( (Unit!146269) )
))
(declare-fun lt!2002151 () Unit!146268)

(declare-fun lemmaIsPrefixRefl!3251 (List!56401 List!56401) Unit!146268)

(assert (=> b!4886088 (= lt!2002151 (lemmaIsPrefixRefl!3251 lt!2002153 lt!2002153))))

(declare-fun input!1236 () BalanceConc!28830)

(assert (=> b!4886088 (= lt!2002153 (list!17665 input!1236))))

(declare-fun b!4886089 () Bool)

(declare-fun e!3054254 () Bool)

(assert (=> b!4886089 (= e!3054254 true)))

(declare-fun lt!2002148 () Bool)

(declare-fun e!3054256 () Bool)

(assert (=> b!4886089 (= lt!2002148 e!3054256)))

(declare-fun res!2086374 () Bool)

(assert (=> b!4886089 (=> res!2086374 e!3054256)))

(declare-fun lt!2002154 () Bool)

(assert (=> b!4886089 (= res!2086374 (not lt!2002154))))

(declare-fun res!2086370 () Bool)

(assert (=> start!511360 (=> (not res!2086370) (not e!3054261))))

(declare-datatypes ((LexerInterface!7724 0))(
  ( (LexerInterfaceExt!7721 (__x!34178 Int)) (Lexer!7722) )
))
(declare-fun thiss!14805 () LexerInterface!7724)

(assert (=> start!511360 (= res!2086370 ((_ is Lexer!7722) thiss!14805))))

(assert (=> start!511360 e!3054261))

(assert (=> start!511360 true))

(declare-fun e!3054262 () Bool)

(assert (=> start!511360 e!3054262))

(declare-fun e!3054255 () Bool)

(declare-fun inv!72437 (BalanceConc!28830) Bool)

(assert (=> start!511360 (and (inv!72437 input!1236) e!3054255)))

(declare-fun b!4886090 () Bool)

(declare-fun e!3054258 () Bool)

(assert (=> b!4886090 (= e!3054258 e!3054254)))

(declare-fun res!2086369 () Bool)

(assert (=> b!4886090 (=> res!2086369 e!3054254)))

(declare-datatypes ((Option!13947 0))(
  ( (None!13946) (Some!13946 (v!49896 tuple2!60246)) )
))
(declare-fun lt!2002156 () Option!13947)

(declare-fun isDefined!10966 (Option!13947) Bool)

(assert (=> b!4886090 (= res!2086369 (not (= lt!2002154 (isDefined!10966 lt!2002156))))))

(declare-datatypes ((Option!13948 0))(
  ( (None!13947) (Some!13947 (v!49897 tuple2!60244)) )
))
(declare-fun lt!2002149 () Option!13948)

(declare-fun isDefined!10967 (Option!13948) Bool)

(assert (=> b!4886090 (= lt!2002154 (isDefined!10967 lt!2002149))))

(declare-fun maxPrefixZipper!635 (LexerInterface!7724 List!56403 List!56401) Option!13947)

(assert (=> b!4886090 (= lt!2002156 (maxPrefixZipper!635 thiss!14805 rulesArg!165 lt!2002153))))

(declare-fun b!4886091 () Bool)

(declare-fun res!2086372 () Bool)

(assert (=> b!4886091 (=> (not res!2086372) (not e!3054261))))

(declare-fun rulesValidInductive!3111 (LexerInterface!7724 List!56403) Bool)

(assert (=> b!4886091 (= res!2086372 (rulesValidInductive!3111 thiss!14805 rulesArg!165))))

(declare-fun b!4886092 () Bool)

(declare-fun tp!1375059 () Bool)

(declare-fun e!3054259 () Bool)

(declare-fun e!3054260 () Bool)

(declare-fun inv!72433 (String!63651) Bool)

(declare-fun inv!72438 (TokenValueInjection!16192) Bool)

(assert (=> b!4886092 (= e!3054260 (and tp!1375059 (inv!72433 (tag!8996 (h!62727 rulesArg!165))) (inv!72438 (transformation!8132 (h!62727 rulesArg!165))) e!3054259))))

(declare-fun b!4886093 () Bool)

(declare-fun tp!1375056 () Bool)

(assert (=> b!4886093 (= e!3054262 (and e!3054260 tp!1375056))))

(assert (=> b!4886094 (= e!3054259 (and tp!1375057 tp!1375055))))

(declare-fun b!4886095 () Bool)

(assert (=> b!4886095 (= e!3054256 e!3054253)))

(declare-fun res!2086373 () Bool)

(assert (=> b!4886095 (=> (not res!2086373) (not e!3054253))))

(assert (=> b!4886095 (= res!2086373 (= (_1!33425 lt!2002152) (_1!33426 lt!2002155)))))

(declare-fun get!19393 (Option!13947) tuple2!60246)

(assert (=> b!4886095 (= lt!2002155 (get!19393 lt!2002156))))

(declare-fun get!19394 (Option!13948) tuple2!60244)

(assert (=> b!4886095 (= lt!2002152 (get!19394 lt!2002149))))

(declare-fun b!4886096 () Bool)

(declare-fun tp!1375058 () Bool)

(declare-fun inv!72439 (Conc!14700) Bool)

(assert (=> b!4886096 (= e!3054255 (and (inv!72439 (c!830697 input!1236)) tp!1375058))))

(declare-fun b!4886097 () Bool)

(assert (=> b!4886097 (= e!3054257 e!3054258)))

(declare-fun res!2086371 () Bool)

(assert (=> b!4886097 (=> res!2086371 e!3054258)))

(declare-fun lt!2002150 () Option!13948)

(assert (=> b!4886097 (= res!2086371 (or (and ((_ is None!13947) lt!2002149) ((_ is None!13947) lt!2002150)) ((_ is None!13947) lt!2002150) ((_ is None!13947) lt!2002149) (< (size!37064 (_1!33425 (v!49897 lt!2002149))) (size!37064 (_1!33425 (v!49897 lt!2002150))))))))

(declare-fun maxPrefixZipperSequence!1293 (LexerInterface!7724 List!56403 BalanceConc!28830) Option!13948)

(assert (=> b!4886097 (= lt!2002150 (maxPrefixZipperSequence!1293 thiss!14805 (t!365049 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!658 (LexerInterface!7724 Rule!16064 BalanceConc!28830) Option!13948)

(assert (=> b!4886097 (= lt!2002149 (maxPrefixOneRuleZipperSequence!658 thiss!14805 (h!62727 rulesArg!165) input!1236))))

(declare-fun b!4886098 () Bool)

(declare-fun res!2086368 () Bool)

(assert (=> b!4886098 (=> (not res!2086368) (not e!3054261))))

(declare-fun isEmpty!30159 (List!56403) Bool)

(assert (=> b!4886098 (= res!2086368 (not (isEmpty!30159 rulesArg!165)))))

(assert (= (and start!511360 res!2086370) b!4886091))

(assert (= (and b!4886091 res!2086372) b!4886098))

(assert (= (and b!4886098 res!2086368) b!4886088))

(assert (= (and b!4886088 (not res!2086375)) b!4886097))

(assert (= (and b!4886097 (not res!2086371)) b!4886090))

(assert (= (and b!4886090 (not res!2086369)) b!4886089))

(assert (= (and b!4886089 (not res!2086374)) b!4886095))

(assert (= (and b!4886095 res!2086373) b!4886087))

(assert (= b!4886092 b!4886094))

(assert (= b!4886093 b!4886092))

(assert (= (and start!511360 ((_ is Cons!56279) rulesArg!165)) b!4886093))

(assert (= start!511360 b!4886096))

(declare-fun m!5889902 () Bool)

(assert (=> b!4886092 m!5889902))

(declare-fun m!5889904 () Bool)

(assert (=> b!4886092 m!5889904))

(declare-fun m!5889906 () Bool)

(assert (=> b!4886096 m!5889906))

(declare-fun m!5889908 () Bool)

(assert (=> b!4886090 m!5889908))

(declare-fun m!5889910 () Bool)

(assert (=> b!4886090 m!5889910))

(declare-fun m!5889912 () Bool)

(assert (=> b!4886090 m!5889912))

(declare-fun m!5889914 () Bool)

(assert (=> b!4886097 m!5889914))

(declare-fun m!5889916 () Bool)

(assert (=> b!4886097 m!5889916))

(declare-fun m!5889918 () Bool)

(assert (=> b!4886098 m!5889918))

(declare-fun m!5889920 () Bool)

(assert (=> b!4886088 m!5889920))

(declare-fun m!5889922 () Bool)

(assert (=> b!4886088 m!5889922))

(declare-fun m!5889924 () Bool)

(assert (=> b!4886088 m!5889924))

(declare-fun m!5889926 () Bool)

(assert (=> b!4886095 m!5889926))

(declare-fun m!5889928 () Bool)

(assert (=> b!4886095 m!5889928))

(declare-fun m!5889930 () Bool)

(assert (=> start!511360 m!5889930))

(declare-fun m!5889932 () Bool)

(assert (=> b!4886087 m!5889932))

(declare-fun m!5889934 () Bool)

(assert (=> b!4886091 m!5889934))

(check-sat (not b!4886095) (not b!4886096) (not b!4886093) (not b_next!132043) (not b!4886088) (not b!4886091) b_and!344083 (not b!4886090) (not start!511360) (not b!4886087) (not b!4886097) (not b_next!132041) (not b!4886092) (not b!4886098) b_and!344085)
(check-sat b_and!344085 b_and!344083 (not b_next!132041) (not b_next!132043))
