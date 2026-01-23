; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!376496 () Bool)

(assert start!376496)

(declare-fun b!4000289 () Bool)

(declare-fun b_free!111121 () Bool)

(declare-fun b_next!111825 () Bool)

(assert (=> b!4000289 (= b_free!111121 (not b_next!111825))))

(declare-fun tp!1217259 () Bool)

(declare-fun b_and!307151 () Bool)

(assert (=> b!4000289 (= tp!1217259 b_and!307151)))

(declare-fun b_free!111123 () Bool)

(declare-fun b_next!111827 () Bool)

(assert (=> b!4000289 (= b_free!111123 (not b_next!111827))))

(declare-fun tp!1217263 () Bool)

(declare-fun b_and!307153 () Bool)

(assert (=> b!4000289 (= tp!1217263 b_and!307153)))

(declare-fun b!4000281 () Bool)

(declare-fun b_free!111125 () Bool)

(declare-fun b_next!111829 () Bool)

(assert (=> b!4000281 (= b_free!111125 (not b_next!111829))))

(declare-fun tp!1217264 () Bool)

(declare-fun b_and!307155 () Bool)

(assert (=> b!4000281 (= tp!1217264 b_and!307155)))

(declare-fun b_free!111127 () Bool)

(declare-fun b_next!111831 () Bool)

(assert (=> b!4000281 (= b_free!111127 (not b_next!111831))))

(declare-fun tp!1217260 () Bool)

(declare-fun b_and!307157 () Bool)

(assert (=> b!4000281 (= tp!1217260 b_and!307157)))

(declare-fun b!4000245 () Bool)

(declare-fun e!2480256 () Bool)

(declare-fun tp_is_empty!20349 () Bool)

(declare-fun tp!1217262 () Bool)

(assert (=> b!4000245 (= e!2480256 (and tp_is_empty!20349 tp!1217262))))

(declare-fun b!4000246 () Bool)

(declare-fun e!2480270 () Bool)

(declare-fun e!2480287 () Bool)

(assert (=> b!4000246 (= e!2480270 e!2480287)))

(declare-fun res!1625176 () Bool)

(assert (=> b!4000246 (=> res!1625176 e!2480287)))

(declare-datatypes ((C!23564 0))(
  ( (C!23565 (val!13876 Int)) )
))
(declare-datatypes ((List!42904 0))(
  ( (Nil!42780) (Cons!42780 (h!48200 C!23564) (t!332183 List!42904)) )
))
(declare-fun lt!1414241 () List!42904)

(declare-fun lt!1414215 () List!42904)

(declare-fun isPrefix!3871 (List!42904 List!42904) Bool)

(assert (=> b!4000246 (= res!1625176 (not (isPrefix!3871 lt!1414241 lt!1414215)))))

(declare-fun prefix!494 () List!42904)

(assert (=> b!4000246 (isPrefix!3871 prefix!494 lt!1414215)))

(declare-datatypes ((Unit!61761 0))(
  ( (Unit!61762) )
))
(declare-fun lt!1414239 () Unit!61761)

(declare-fun suffix!1299 () List!42904)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2714 (List!42904 List!42904) Unit!61761)

(assert (=> b!4000246 (= lt!1414239 (lemmaConcatTwoListThenFirstIsPrefix!2714 prefix!494 suffix!1299))))

(declare-fun lt!1414227 () List!42904)

(assert (=> b!4000246 (isPrefix!3871 lt!1414241 lt!1414227)))

(declare-fun lt!1414223 () Unit!61761)

(declare-fun suffixResult!105 () List!42904)

(assert (=> b!4000246 (= lt!1414223 (lemmaConcatTwoListThenFirstIsPrefix!2714 lt!1414241 suffixResult!105))))

(declare-fun b!4000247 () Bool)

(declare-fun e!2480252 () Bool)

(declare-fun e!2480259 () Bool)

(assert (=> b!4000247 (= e!2480252 e!2480259)))

(declare-fun res!1625196 () Bool)

(assert (=> b!4000247 (=> res!1625196 e!2480259)))

(declare-fun lt!1414260 () List!42904)

(assert (=> b!4000247 (= res!1625196 (not (isPrefix!3871 lt!1414260 lt!1414215)))))

(declare-fun lt!1414246 () List!42904)

(assert (=> b!4000247 (isPrefix!3871 lt!1414260 lt!1414246)))

(declare-fun lt!1414206 () List!42904)

(declare-fun lt!1414203 () List!42904)

(declare-fun lt!1414210 () Unit!61761)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!704 (List!42904 List!42904 List!42904) Unit!61761)

(assert (=> b!4000247 (= lt!1414210 (lemmaPrefixStaysPrefixWhenAddingToSuffix!704 lt!1414260 lt!1414206 lt!1414203))))

(declare-fun b!4000248 () Bool)

(declare-fun e!2480264 () Bool)

(declare-fun e!2480258 () Bool)

(assert (=> b!4000248 (= e!2480264 e!2480258)))

(declare-fun res!1625199 () Bool)

(assert (=> b!4000248 (=> res!1625199 e!2480258)))

(declare-datatypes ((IArray!25995 0))(
  ( (IArray!25996 (innerList!13055 List!42904)) )
))
(declare-datatypes ((Conc!12995 0))(
  ( (Node!12995 (left!32301 Conc!12995) (right!32631 Conc!12995) (csize!26220 Int) (cheight!13206 Int)) (Leaf!20094 (xs!16301 IArray!25995) (csize!26221 Int)) (Empty!12995) )
))
(declare-datatypes ((BalanceConc!25584 0))(
  ( (BalanceConc!25585 (c!691956 Conc!12995)) )
))
(declare-datatypes ((List!42905 0))(
  ( (Nil!42781) (Cons!42781 (h!48201 (_ BitVec 16)) (t!332184 List!42905)) )
))
(declare-datatypes ((TokenValue!7014 0))(
  ( (FloatLiteralValue!14028 (text!49543 List!42905)) (TokenValueExt!7013 (__x!26245 Int)) (Broken!35070 (value!213952 List!42905)) (Object!7137) (End!7014) (Def!7014) (Underscore!7014) (Match!7014) (Else!7014) (Error!7014) (Case!7014) (If!7014) (Extends!7014) (Abstract!7014) (Class!7014) (Val!7014) (DelimiterValue!14028 (del!7074 List!42905)) (KeywordValue!7020 (value!213953 List!42905)) (CommentValue!14028 (value!213954 List!42905)) (WhitespaceValue!14028 (value!213955 List!42905)) (IndentationValue!7014 (value!213956 List!42905)) (String!48787) (Int32!7014) (Broken!35071 (value!213957 List!42905)) (Boolean!7015) (Unit!61763) (OperatorValue!7017 (op!7074 List!42905)) (IdentifierValue!14028 (value!213958 List!42905)) (IdentifierValue!14029 (value!213959 List!42905)) (WhitespaceValue!14029 (value!213960 List!42905)) (True!14028) (False!14028) (Broken!35072 (value!213961 List!42905)) (Broken!35073 (value!213962 List!42905)) (True!14029) (RightBrace!7014) (RightBracket!7014) (Colon!7014) (Null!7014) (Comma!7014) (LeftBracket!7014) (False!14029) (LeftBrace!7014) (ImaginaryLiteralValue!7014 (text!49544 List!42905)) (StringLiteralValue!21042 (value!213963 List!42905)) (EOFValue!7014 (value!213964 List!42905)) (IdentValue!7014 (value!213965 List!42905)) (DelimiterValue!14029 (value!213966 List!42905)) (DedentValue!7014 (value!213967 List!42905)) (NewLineValue!7014 (value!213968 List!42905)) (IntegerValue!21042 (value!213969 (_ BitVec 32)) (text!49545 List!42905)) (IntegerValue!21043 (value!213970 Int) (text!49546 List!42905)) (Times!7014) (Or!7014) (Equal!7014) (Minus!7014) (Broken!35074 (value!213971 List!42905)) (And!7014) (Div!7014) (LessEqual!7014) (Mod!7014) (Concat!18703) (Not!7014) (Plus!7014) (SpaceValue!7014 (value!213972 List!42905)) (IntegerValue!21044 (value!213973 Int) (text!49547 List!42905)) (StringLiteralValue!21043 (text!49548 List!42905)) (FloatLiteralValue!14029 (text!49549 List!42905)) (BytesLiteralValue!7014 (value!213974 List!42905)) (CommentValue!14029 (value!213975 List!42905)) (StringLiteralValue!21044 (value!213976 List!42905)) (ErrorTokenValue!7014 (msg!7075 List!42905)) )
))
(declare-datatypes ((Regex!11689 0))(
  ( (ElementMatch!11689 (c!691957 C!23564)) (Concat!18704 (regOne!23890 Regex!11689) (regTwo!23890 Regex!11689)) (EmptyExpr!11689) (Star!11689 (reg!12018 Regex!11689)) (EmptyLang!11689) (Union!11689 (regOne!23891 Regex!11689) (regTwo!23891 Regex!11689)) )
))
(declare-datatypes ((String!48788 0))(
  ( (String!48789 (value!213977 String)) )
))
(declare-datatypes ((TokenValueInjection!13456 0))(
  ( (TokenValueInjection!13457 (toValue!9272 Int) (toChars!9131 Int)) )
))
(declare-datatypes ((Rule!13368 0))(
  ( (Rule!13369 (regex!6784 Regex!11689) (tag!7644 String!48788) (isSeparator!6784 Bool) (transformation!6784 TokenValueInjection!13456)) )
))
(declare-datatypes ((Token!12706 0))(
  ( (Token!12707 (value!213978 TokenValue!7014) (rule!9816 Rule!13368) (size!31991 Int) (originalCharacters!7384 List!42904)) )
))
(declare-datatypes ((tuple2!41966 0))(
  ( (tuple2!41967 (_1!24117 Token!12706) (_2!24117 List!42904)) )
))
(declare-datatypes ((Option!9198 0))(
  ( (None!9197) (Some!9197 (v!39557 tuple2!41966)) )
))
(declare-fun lt!1414264 () Option!9198)

(get-info :version)

(assert (=> b!4000248 (= res!1625199 (not ((_ is Some!9197) lt!1414264)))))

(declare-datatypes ((LexerInterface!6373 0))(
  ( (LexerInterfaceExt!6370 (__x!26246 Int)) (Lexer!6371) )
))
(declare-fun thiss!21717 () LexerInterface!6373)

(declare-datatypes ((List!42906 0))(
  ( (Nil!42782) (Cons!42782 (h!48202 Rule!13368) (t!332185 List!42906)) )
))
(declare-fun rules!2999 () List!42906)

(declare-fun maxPrefix!3671 (LexerInterface!6373 List!42906 List!42904) Option!9198)

(assert (=> b!4000248 (= lt!1414264 (maxPrefix!3671 thiss!21717 rules!2999 lt!1414206))))

(declare-fun lt!1414221 () List!42904)

(declare-fun lt!1414254 () Token!12706)

(declare-fun lt!1414247 () tuple2!41966)

(assert (=> b!4000248 (and (= suffixResult!105 lt!1414221) (= lt!1414247 (tuple2!41967 lt!1414254 lt!1414221)))))

(declare-fun lt!1414233 () Unit!61761)

(declare-fun lemmaSamePrefixThenSameSuffix!2058 (List!42904 List!42904 List!42904 List!42904 List!42904) Unit!61761)

(assert (=> b!4000248 (= lt!1414233 (lemmaSamePrefixThenSameSuffix!2058 lt!1414241 suffixResult!105 lt!1414241 lt!1414221 lt!1414215))))

(declare-fun lt!1414261 () List!42904)

(assert (=> b!4000248 (isPrefix!3871 lt!1414241 lt!1414261)))

(declare-fun lt!1414229 () Unit!61761)

(assert (=> b!4000248 (= lt!1414229 (lemmaConcatTwoListThenFirstIsPrefix!2714 lt!1414241 lt!1414221))))

(declare-fun b!4000249 () Bool)

(declare-fun e!2480267 () Unit!61761)

(declare-fun Unit!61764 () Unit!61761)

(assert (=> b!4000249 (= e!2480267 Unit!61764)))

(declare-fun b!4000250 () Bool)

(declare-fun res!1625195 () Bool)

(declare-fun e!2480286 () Bool)

(assert (=> b!4000250 (=> (not res!1625195) (not e!2480286))))

(declare-fun newSuffix!27 () List!42904)

(declare-fun size!31992 (List!42904) Int)

(assert (=> b!4000250 (= res!1625195 (>= (size!31992 suffix!1299) (size!31992 newSuffix!27)))))

(declare-fun b!4000251 () Bool)

(declare-fun e!2480265 () Bool)

(declare-fun e!2480281 () Bool)

(assert (=> b!4000251 (= e!2480265 e!2480281)))

(declare-fun res!1625172 () Bool)

(assert (=> b!4000251 (=> res!1625172 e!2480281)))

(declare-fun lt!1414266 () Int)

(declare-fun lt!1414259 () Int)

(assert (=> b!4000251 (= res!1625172 (not (= lt!1414266 lt!1414259)))))

(declare-fun lt!1414204 () Unit!61761)

(declare-fun e!2480282 () Unit!61761)

(assert (=> b!4000251 (= lt!1414204 e!2480282)))

(declare-fun c!691955 () Bool)

(assert (=> b!4000251 (= c!691955 (< lt!1414259 lt!1414266))))

(declare-fun lt!1414240 () Unit!61761)

(declare-fun e!2480275 () Unit!61761)

(assert (=> b!4000251 (= lt!1414240 e!2480275)))

(declare-fun c!691953 () Bool)

(assert (=> b!4000251 (= c!691953 (> lt!1414259 lt!1414266))))

(declare-fun lt!1414265 () List!42904)

(assert (=> b!4000251 (= (_2!24117 (v!39557 lt!1414264)) lt!1414265)))

(declare-fun lt!1414268 () Unit!61761)

(assert (=> b!4000251 (= lt!1414268 (lemmaSamePrefixThenSameSuffix!2058 lt!1414260 (_2!24117 (v!39557 lt!1414264)) lt!1414260 lt!1414265 lt!1414206))))

(declare-fun lt!1414252 () List!42904)

(assert (=> b!4000251 (isPrefix!3871 lt!1414260 lt!1414252)))

(declare-fun lt!1414211 () Unit!61761)

(assert (=> b!4000251 (= lt!1414211 (lemmaConcatTwoListThenFirstIsPrefix!2714 lt!1414260 lt!1414265))))

(declare-fun b!4000252 () Bool)

(declare-fun e!2480253 () Bool)

(declare-fun tp!1217256 () Bool)

(assert (=> b!4000252 (= e!2480253 (and tp_is_empty!20349 tp!1217256))))

(declare-fun b!4000253 () Bool)

(declare-fun Unit!61765 () Unit!61761)

(assert (=> b!4000253 (= e!2480275 Unit!61765)))

(declare-fun token!484 () Token!12706)

(declare-fun lt!1414202 () Unit!61761)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!438 (LexerInterface!6373 List!42906 Rule!13368 List!42904 List!42904 List!42904 Rule!13368) Unit!61761)

(assert (=> b!4000253 (= lt!1414202 (lemmaMaxPrefixOutputsMaxPrefix!438 thiss!21717 rules!2999 (rule!9816 token!484) lt!1414241 lt!1414215 lt!1414260 (rule!9816 (_1!24117 (v!39557 lt!1414264)))))))

(declare-fun res!1625189 () Bool)

(declare-fun matchR!5666 (Regex!11689 List!42904) Bool)

(assert (=> b!4000253 (= res!1625189 (not (matchR!5666 (regex!6784 (rule!9816 (_1!24117 (v!39557 lt!1414264)))) lt!1414260)))))

(declare-fun e!2480288 () Bool)

(assert (=> b!4000253 (=> (not res!1625189) (not e!2480288))))

(assert (=> b!4000253 e!2480288))

(declare-fun e!2480273 () Bool)

(declare-fun tp!1217253 () Bool)

(declare-fun b!4000254 () Bool)

(declare-fun e!2480274 () Bool)

(declare-fun inv!21 (TokenValue!7014) Bool)

(assert (=> b!4000254 (= e!2480273 (and (inv!21 (value!213978 token!484)) e!2480274 tp!1217253))))

(declare-fun res!1625197 () Bool)

(assert (=> start!376496 (=> (not res!1625197) (not e!2480286))))

(assert (=> start!376496 (= res!1625197 ((_ is Lexer!6371) thiss!21717))))

(assert (=> start!376496 e!2480286))

(assert (=> start!376496 e!2480253))

(declare-fun inv!57135 (Token!12706) Bool)

(assert (=> start!376496 (and (inv!57135 token!484) e!2480273)))

(declare-fun e!2480261 () Bool)

(assert (=> start!376496 e!2480261))

(declare-fun e!2480291 () Bool)

(assert (=> start!376496 e!2480291))

(assert (=> start!376496 e!2480256))

(assert (=> start!376496 true))

(declare-fun e!2480279 () Bool)

(assert (=> start!376496 e!2480279))

(declare-fun e!2480272 () Bool)

(assert (=> start!376496 e!2480272))

(declare-fun b!4000255 () Bool)

(declare-fun e!2480257 () Bool)

(declare-fun tp!1217258 () Bool)

(assert (=> b!4000255 (= e!2480279 (and e!2480257 tp!1217258))))

(declare-fun b!4000256 () Bool)

(assert (=> b!4000256 (= e!2480259 e!2480265)))

(declare-fun res!1625183 () Bool)

(assert (=> b!4000256 (=> res!1625183 e!2480265)))

(assert (=> b!4000256 (= res!1625183 (not (= lt!1414252 lt!1414206)))))

(declare-fun ++!11186 (List!42904 List!42904) List!42904)

(assert (=> b!4000256 (= lt!1414252 (++!11186 lt!1414260 lt!1414265))))

(declare-fun getSuffix!2302 (List!42904 List!42904) List!42904)

(assert (=> b!4000256 (= lt!1414265 (getSuffix!2302 lt!1414206 lt!1414260))))

(declare-fun b!4000257 () Bool)

(declare-fun Unit!61766 () Unit!61761)

(assert (=> b!4000257 (= e!2480282 Unit!61766)))

(declare-fun lt!1414244 () Unit!61761)

(assert (=> b!4000257 (= lt!1414244 (lemmaMaxPrefixOutputsMaxPrefix!438 thiss!21717 rules!2999 (rule!9816 (_1!24117 (v!39557 lt!1414264))) lt!1414260 lt!1414206 lt!1414241 (rule!9816 token!484)))))

(assert (=> b!4000257 false))

(declare-fun b!4000258 () Bool)

(declare-fun e!2480276 () Bool)

(assert (=> b!4000258 (= e!2480276 e!2480252)))

(declare-fun res!1625194 () Bool)

(assert (=> b!4000258 (=> res!1625194 e!2480252)))

(assert (=> b!4000258 (= res!1625194 (not (= lt!1414246 lt!1414215)))))

(declare-fun lt!1414242 () List!42904)

(assert (=> b!4000258 (= lt!1414246 (++!11186 prefix!494 lt!1414242))))

(assert (=> b!4000258 (= lt!1414246 (++!11186 lt!1414206 lt!1414203))))

(declare-fun lt!1414218 () Unit!61761)

(declare-fun lemmaConcatAssociativity!2506 (List!42904 List!42904 List!42904) Unit!61761)

(assert (=> b!4000258 (= lt!1414218 (lemmaConcatAssociativity!2506 prefix!494 newSuffix!27 lt!1414203))))

(declare-fun b!4000259 () Bool)

(declare-fun tp!1217252 () Bool)

(assert (=> b!4000259 (= e!2480272 (and tp_is_empty!20349 tp!1217252))))

(declare-fun b!4000260 () Bool)

(declare-fun e!2480283 () Bool)

(declare-fun e!2480255 () Bool)

(assert (=> b!4000260 (= e!2480283 e!2480255)))

(declare-fun res!1625192 () Bool)

(assert (=> b!4000260 (=> (not res!1625192) (not e!2480255))))

(declare-fun lt!1414222 () List!42904)

(assert (=> b!4000260 (= res!1625192 (= lt!1414222 lt!1414206))))

(assert (=> b!4000260 (= lt!1414206 (++!11186 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!42904)

(assert (=> b!4000260 (= lt!1414222 (++!11186 lt!1414241 newSuffixResult!27))))

(declare-fun b!4000261 () Bool)

(declare-fun Unit!61767 () Unit!61761)

(assert (=> b!4000261 (= e!2480282 Unit!61767)))

(declare-fun b!4000262 () Bool)

(declare-fun res!1625178 () Bool)

(assert (=> b!4000262 (=> (not res!1625178) (not e!2480286))))

(declare-fun isEmpty!25568 (List!42906) Bool)

(assert (=> b!4000262 (= res!1625178 (not (isEmpty!25568 rules!2999)))))

(declare-fun b!4000263 () Bool)

(declare-fun e!2480289 () Bool)

(assert (=> b!4000263 (= e!2480287 e!2480289)))

(declare-fun res!1625185 () Bool)

(assert (=> b!4000263 (=> res!1625185 e!2480289)))

(declare-fun lt!1414217 () List!42904)

(assert (=> b!4000263 (= res!1625185 (not (= lt!1414217 prefix!494)))))

(declare-fun lt!1414263 () List!42904)

(assert (=> b!4000263 (= lt!1414217 (++!11186 lt!1414241 lt!1414263))))

(assert (=> b!4000263 (= lt!1414263 (getSuffix!2302 prefix!494 lt!1414241))))

(assert (=> b!4000263 (isPrefix!3871 lt!1414241 prefix!494)))

(declare-fun lt!1414212 () Unit!61761)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!449 (List!42904 List!42904 List!42904) Unit!61761)

(assert (=> b!4000263 (= lt!1414212 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!449 prefix!494 lt!1414241 lt!1414215))))

(declare-fun b!4000264 () Bool)

(declare-fun tp!1217254 () Bool)

(assert (=> b!4000264 (= e!2480291 (and tp_is_empty!20349 tp!1217254))))

(declare-fun b!4000265 () Bool)

(declare-fun res!1625177 () Bool)

(assert (=> b!4000265 (=> (not res!1625177) (not e!2480286))))

(assert (=> b!4000265 (= res!1625177 (isPrefix!3871 newSuffix!27 suffix!1299))))

(declare-fun b!4000266 () Bool)

(declare-fun e!2480269 () Bool)

(assert (=> b!4000266 (= e!2480269 false)))

(declare-fun b!4000267 () Bool)

(declare-fun e!2480260 () Bool)

(assert (=> b!4000267 (= e!2480289 e!2480260)))

(declare-fun res!1625190 () Bool)

(assert (=> b!4000267 (=> res!1625190 e!2480260)))

(declare-fun lt!1414209 () List!42904)

(declare-fun lt!1414248 () List!42904)

(assert (=> b!4000267 (= res!1625190 (or (not (= lt!1414215 lt!1414209)) (not (= lt!1414215 lt!1414248))))))

(assert (=> b!4000267 (= lt!1414209 lt!1414248)))

(declare-fun lt!1414216 () List!42904)

(assert (=> b!4000267 (= lt!1414248 (++!11186 lt!1414241 lt!1414216))))

(assert (=> b!4000267 (= lt!1414209 (++!11186 lt!1414217 suffix!1299))))

(assert (=> b!4000267 (= lt!1414216 (++!11186 lt!1414263 suffix!1299))))

(declare-fun lt!1414237 () Unit!61761)

(assert (=> b!4000267 (= lt!1414237 (lemmaConcatAssociativity!2506 lt!1414241 lt!1414263 suffix!1299))))

(declare-fun e!2480271 () Bool)

(declare-fun tp!1217255 () Bool)

(declare-fun b!4000268 () Bool)

(declare-fun inv!57132 (String!48788) Bool)

(declare-fun inv!57136 (TokenValueInjection!13456) Bool)

(assert (=> b!4000268 (= e!2480274 (and tp!1217255 (inv!57132 (tag!7644 (rule!9816 token!484))) (inv!57136 (transformation!6784 (rule!9816 token!484))) e!2480271))))

(declare-fun b!4000269 () Bool)

(declare-fun res!1625182 () Bool)

(assert (=> b!4000269 (=> res!1625182 e!2480281)))

(assert (=> b!4000269 (= res!1625182 (not (isPrefix!3871 lt!1414260 lt!1414206)))))

(declare-fun e!2480290 () Bool)

(declare-fun b!4000270 () Bool)

(assert (=> b!4000270 (= e!2480290 (and (= (size!31991 token!484) lt!1414266) (= (originalCharacters!7384 token!484) lt!1414241)))))

(declare-fun b!4000271 () Bool)

(declare-fun res!1625201 () Bool)

(assert (=> b!4000271 (=> (not res!1625201) (not e!2480290))))

(assert (=> b!4000271 (= res!1625201 (= (size!31991 token!484) (size!31992 (originalCharacters!7384 token!484))))))

(declare-fun b!4000272 () Bool)

(declare-fun e!2480277 () Bool)

(assert (=> b!4000272 (= e!2480255 e!2480277)))

(declare-fun res!1625175 () Bool)

(assert (=> b!4000272 (=> (not res!1625175) (not e!2480277))))

(declare-fun lt!1414262 () Option!9198)

(assert (=> b!4000272 (= res!1625175 (= (maxPrefix!3671 thiss!21717 rules!2999 lt!1414215) lt!1414262))))

(assert (=> b!4000272 (= lt!1414262 (Some!9197 lt!1414247))))

(assert (=> b!4000272 (= lt!1414247 (tuple2!41967 token!484 suffixResult!105))))

(assert (=> b!4000272 (= lt!1414215 (++!11186 prefix!494 suffix!1299))))

(declare-fun tp!1217261 () Bool)

(declare-fun e!2480262 () Bool)

(declare-fun b!4000273 () Bool)

(assert (=> b!4000273 (= e!2480257 (and tp!1217261 (inv!57132 (tag!7644 (h!48202 rules!2999))) (inv!57136 (transformation!6784 (h!48202 rules!2999))) e!2480262))))

(declare-fun b!4000274 () Bool)

(declare-fun e!2480266 () Bool)

(assert (=> b!4000274 (= e!2480266 e!2480264)))

(declare-fun res!1625187 () Bool)

(assert (=> b!4000274 (=> res!1625187 e!2480264)))

(assert (=> b!4000274 (= res!1625187 (not (= lt!1414261 lt!1414215)))))

(assert (=> b!4000274 (= lt!1414261 (++!11186 lt!1414241 lt!1414221))))

(assert (=> b!4000274 (= lt!1414221 (getSuffix!2302 lt!1414215 lt!1414241))))

(assert (=> b!4000274 e!2480290))

(declare-fun res!1625202 () Bool)

(assert (=> b!4000274 (=> (not res!1625202) (not e!2480290))))

(assert (=> b!4000274 (= res!1625202 (isPrefix!3871 lt!1414215 lt!1414215))))

(declare-fun lt!1414201 () Unit!61761)

(declare-fun lemmaIsPrefixRefl!2463 (List!42904 List!42904) Unit!61761)

(assert (=> b!4000274 (= lt!1414201 (lemmaIsPrefixRefl!2463 lt!1414215 lt!1414215))))

(declare-fun b!4000275 () Bool)

(declare-fun res!1625179 () Bool)

(assert (=> b!4000275 (=> res!1625179 e!2480259)))

(declare-fun lt!1414256 () List!42904)

(assert (=> b!4000275 (= res!1625179 (not (= lt!1414256 lt!1414206)))))

(declare-fun b!4000276 () Bool)

(declare-fun e!2480268 () Bool)

(assert (=> b!4000276 (= e!2480260 e!2480268)))

(declare-fun res!1625188 () Bool)

(assert (=> b!4000276 (=> res!1625188 e!2480268)))

(declare-fun lt!1414251 () Option!9198)

(assert (=> b!4000276 (= res!1625188 (not (= lt!1414251 lt!1414262)))))

(assert (=> b!4000276 (= lt!1414251 (Some!9197 (tuple2!41967 lt!1414254 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2705 (LexerInterface!6373 Rule!13368 List!42904) Option!9198)

(assert (=> b!4000276 (= lt!1414251 (maxPrefixOneRule!2705 thiss!21717 (rule!9816 token!484) lt!1414215))))

(declare-fun lt!1414236 () TokenValue!7014)

(assert (=> b!4000276 (= lt!1414254 (Token!12707 lt!1414236 (rule!9816 token!484) lt!1414266 lt!1414241))))

(declare-fun apply!9995 (TokenValueInjection!13456 BalanceConc!25584) TokenValue!7014)

(declare-fun seqFromList!5023 (List!42904) BalanceConc!25584)

(assert (=> b!4000276 (= lt!1414236 (apply!9995 (transformation!6784 (rule!9816 token!484)) (seqFromList!5023 lt!1414241)))))

(declare-fun lt!1414214 () Unit!61761)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1527 (LexerInterface!6373 List!42906 List!42904 List!42904 List!42904 Rule!13368) Unit!61761)

(assert (=> b!4000276 (= lt!1414214 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1527 thiss!21717 rules!2999 lt!1414241 lt!1414215 suffixResult!105 (rule!9816 token!484)))))

(assert (=> b!4000276 (= lt!1414216 suffixResult!105)))

(declare-fun lt!1414253 () Unit!61761)

(assert (=> b!4000276 (= lt!1414253 (lemmaSamePrefixThenSameSuffix!2058 lt!1414241 lt!1414216 lt!1414241 suffixResult!105 lt!1414215))))

(assert (=> b!4000276 (isPrefix!3871 lt!1414241 lt!1414248)))

(declare-fun lt!1414208 () Unit!61761)

(assert (=> b!4000276 (= lt!1414208 (lemmaConcatTwoListThenFirstIsPrefix!2714 lt!1414241 lt!1414216))))

(declare-fun b!4000277 () Bool)

(declare-fun e!2480263 () Bool)

(assert (=> b!4000277 (= e!2480281 e!2480263)))

(declare-fun res!1625180 () Bool)

(assert (=> b!4000277 (=> res!1625180 e!2480263)))

(assert (=> b!4000277 (= res!1625180 (or (not (= (_1!24117 (v!39557 lt!1414264)) token!484)) (not (= lt!1414264 (Some!9197 (tuple2!41967 token!484 newSuffixResult!27))))))))

(assert (=> b!4000277 (= (rule!9816 (_1!24117 (v!39557 lt!1414264))) (rule!9816 token!484))))

(declare-fun lt!1414224 () Unit!61761)

(declare-fun lemmaSameIndexThenSameElement!260 (List!42906 Rule!13368 Rule!13368) Unit!61761)

(assert (=> b!4000277 (= lt!1414224 (lemmaSameIndexThenSameElement!260 rules!2999 (rule!9816 (_1!24117 (v!39557 lt!1414264))) (rule!9816 token!484)))))

(declare-fun lt!1414269 () Unit!61761)

(assert (=> b!4000277 (= lt!1414269 e!2480267)))

(declare-fun c!691954 () Bool)

(declare-fun lt!1414245 () Int)

(declare-fun lt!1414234 () Int)

(assert (=> b!4000277 (= c!691954 (> lt!1414245 lt!1414234))))

(declare-fun lt!1414207 () Unit!61761)

(declare-fun e!2480280 () Unit!61761)

(assert (=> b!4000277 (= lt!1414207 e!2480280)))

(declare-fun c!691952 () Bool)

(assert (=> b!4000277 (= c!691952 (< lt!1414245 lt!1414234))))

(declare-fun getIndex!554 (List!42906 Rule!13368) Int)

(assert (=> b!4000277 (= lt!1414234 (getIndex!554 rules!2999 (rule!9816 token!484)))))

(assert (=> b!4000277 (= lt!1414245 (getIndex!554 rules!2999 (rule!9816 (_1!24117 (v!39557 lt!1414264)))))))

(assert (=> b!4000277 (= (_2!24117 (v!39557 lt!1414264)) newSuffixResult!27)))

(declare-fun lt!1414225 () Unit!61761)

(assert (=> b!4000277 (= lt!1414225 (lemmaSamePrefixThenSameSuffix!2058 lt!1414260 (_2!24117 (v!39557 lt!1414264)) lt!1414241 newSuffixResult!27 lt!1414206))))

(assert (=> b!4000277 (= lt!1414260 lt!1414241)))

(declare-fun lt!1414249 () Unit!61761)

(declare-fun lemmaIsPrefixSameLengthThenSameList!893 (List!42904 List!42904 List!42904) Unit!61761)

(assert (=> b!4000277 (= lt!1414249 (lemmaIsPrefixSameLengthThenSameList!893 lt!1414260 lt!1414241 lt!1414206))))

(declare-fun b!4000278 () Bool)

(declare-fun res!1625200 () Bool)

(assert (=> b!4000278 (=> (not res!1625200) (not e!2480290))))

(assert (=> b!4000278 (= res!1625200 (= (value!213978 token!484) lt!1414236))))

(declare-fun b!4000279 () Bool)

(declare-fun Unit!61768 () Unit!61761)

(assert (=> b!4000279 (= e!2480267 Unit!61768)))

(declare-fun lt!1414267 () Unit!61761)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!280 (LexerInterface!6373 List!42906 Rule!13368 List!42904 List!42904 Rule!13368) Unit!61761)

(assert (=> b!4000279 (= lt!1414267 (lemmaMaxPrefNoSmallerRuleMatches!280 thiss!21717 rules!2999 (rule!9816 (_1!24117 (v!39557 lt!1414264))) lt!1414260 lt!1414206 (rule!9816 token!484)))))

(declare-fun res!1625186 () Bool)

(assert (=> b!4000279 (= res!1625186 (not (matchR!5666 (regex!6784 (rule!9816 token!484)) lt!1414260)))))

(assert (=> b!4000279 (=> (not res!1625186) (not e!2480269))))

(assert (=> b!4000279 e!2480269))

(declare-fun b!4000280 () Bool)

(assert (=> b!4000280 (= e!2480263 true)))

(declare-fun lt!1414205 () Bool)

(declare-fun rulesValidInductive!2473 (LexerInterface!6373 List!42906) Bool)

(assert (=> b!4000280 (= lt!1414205 (rulesValidInductive!2473 thiss!21717 rules!2999))))

(assert (=> b!4000281 (= e!2480262 (and tp!1217264 tp!1217260))))

(declare-fun b!4000282 () Bool)

(declare-fun e!2480278 () Bool)

(assert (=> b!4000282 (= e!2480258 e!2480278)))

(declare-fun res!1625193 () Bool)

(assert (=> b!4000282 (=> res!1625193 e!2480278)))

(declare-fun lt!1414219 () Option!9198)

(assert (=> b!4000282 (= res!1625193 (not (= lt!1414219 (Some!9197 (v!39557 lt!1414264)))))))

(assert (=> b!4000282 (isPrefix!3871 lt!1414260 (++!11186 lt!1414260 newSuffixResult!27))))

(declare-fun lt!1414243 () Unit!61761)

(assert (=> b!4000282 (= lt!1414243 (lemmaConcatTwoListThenFirstIsPrefix!2714 lt!1414260 newSuffixResult!27))))

(assert (=> b!4000282 (isPrefix!3871 lt!1414260 lt!1414256)))

(assert (=> b!4000282 (= lt!1414256 (++!11186 lt!1414260 (_2!24117 (v!39557 lt!1414264))))))

(declare-fun lt!1414258 () Unit!61761)

(assert (=> b!4000282 (= lt!1414258 (lemmaConcatTwoListThenFirstIsPrefix!2714 lt!1414260 (_2!24117 (v!39557 lt!1414264))))))

(declare-fun lt!1414228 () TokenValue!7014)

(assert (=> b!4000282 (= lt!1414219 (Some!9197 (tuple2!41967 (Token!12707 lt!1414228 (rule!9816 (_1!24117 (v!39557 lt!1414264))) lt!1414259 lt!1414260) (_2!24117 (v!39557 lt!1414264)))))))

(assert (=> b!4000282 (= lt!1414219 (maxPrefixOneRule!2705 thiss!21717 (rule!9816 (_1!24117 (v!39557 lt!1414264))) lt!1414206))))

(assert (=> b!4000282 (= lt!1414259 (size!31992 lt!1414260))))

(assert (=> b!4000282 (= lt!1414228 (apply!9995 (transformation!6784 (rule!9816 (_1!24117 (v!39557 lt!1414264)))) (seqFromList!5023 lt!1414260)))))

(declare-fun lt!1414257 () Unit!61761)

(assert (=> b!4000282 (= lt!1414257 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1527 thiss!21717 rules!2999 lt!1414260 lt!1414206 (_2!24117 (v!39557 lt!1414264)) (rule!9816 (_1!24117 (v!39557 lt!1414264)))))))

(declare-fun list!15888 (BalanceConc!25584) List!42904)

(declare-fun charsOf!4600 (Token!12706) BalanceConc!25584)

(assert (=> b!4000282 (= lt!1414260 (list!15888 (charsOf!4600 (_1!24117 (v!39557 lt!1414264)))))))

(declare-fun lt!1414230 () Unit!61761)

(declare-fun lemmaInv!999 (TokenValueInjection!13456) Unit!61761)

(assert (=> b!4000282 (= lt!1414230 (lemmaInv!999 (transformation!6784 (rule!9816 (_1!24117 (v!39557 lt!1414264))))))))

(declare-fun ruleValid!2716 (LexerInterface!6373 Rule!13368) Bool)

(assert (=> b!4000282 (ruleValid!2716 thiss!21717 (rule!9816 (_1!24117 (v!39557 lt!1414264))))))

(declare-fun lt!1414220 () Unit!61761)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1790 (LexerInterface!6373 Rule!13368 List!42906) Unit!61761)

(assert (=> b!4000282 (= lt!1414220 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1790 thiss!21717 (rule!9816 (_1!24117 (v!39557 lt!1414264))) rules!2999))))

(declare-fun lt!1414250 () Unit!61761)

(declare-fun lemmaCharactersSize!1379 (Token!12706) Unit!61761)

(assert (=> b!4000282 (= lt!1414250 (lemmaCharactersSize!1379 token!484))))

(declare-fun lt!1414213 () Unit!61761)

(assert (=> b!4000282 (= lt!1414213 (lemmaCharactersSize!1379 (_1!24117 (v!39557 lt!1414264))))))

(declare-fun b!4000283 () Bool)

(declare-fun e!2480284 () Bool)

(assert (=> b!4000283 (= e!2480284 false)))

(declare-fun b!4000284 () Bool)

(assert (=> b!4000284 (= e!2480288 false)))

(declare-fun b!4000285 () Bool)

(declare-fun Unit!61769 () Unit!61761)

(assert (=> b!4000285 (= e!2480275 Unit!61769)))

(declare-fun b!4000286 () Bool)

(declare-fun tp!1217257 () Bool)

(assert (=> b!4000286 (= e!2480261 (and tp_is_empty!20349 tp!1217257))))

(declare-fun b!4000287 () Bool)

(declare-fun Unit!61770 () Unit!61761)

(assert (=> b!4000287 (= e!2480280 Unit!61770)))

(declare-fun b!4000288 () Bool)

(assert (=> b!4000288 (= e!2480278 e!2480276)))

(declare-fun res!1625184 () Bool)

(assert (=> b!4000288 (=> res!1625184 e!2480276)))

(assert (=> b!4000288 (= res!1625184 (not (= lt!1414242 suffix!1299)))))

(assert (=> b!4000288 (= lt!1414242 (++!11186 newSuffix!27 lt!1414203))))

(assert (=> b!4000288 (= lt!1414203 (getSuffix!2302 suffix!1299 newSuffix!27))))

(assert (=> b!4000289 (= e!2480271 (and tp!1217259 tp!1217263))))

(declare-fun b!4000290 () Bool)

(declare-fun Unit!61771 () Unit!61761)

(assert (=> b!4000290 (= e!2480280 Unit!61771)))

(declare-fun lt!1414235 () Unit!61761)

(assert (=> b!4000290 (= lt!1414235 (lemmaMaxPrefNoSmallerRuleMatches!280 thiss!21717 rules!2999 (rule!9816 token!484) lt!1414241 lt!1414215 (rule!9816 (_1!24117 (v!39557 lt!1414264)))))))

(declare-fun res!1625198 () Bool)

(assert (=> b!4000290 (= res!1625198 (not (matchR!5666 (regex!6784 (rule!9816 (_1!24117 (v!39557 lt!1414264)))) lt!1414241)))))

(assert (=> b!4000290 (=> (not res!1625198) (not e!2480284))))

(assert (=> b!4000290 e!2480284))

(declare-fun b!4000291 () Bool)

(declare-fun res!1625181 () Bool)

(assert (=> b!4000291 (=> (not res!1625181) (not e!2480286))))

(declare-fun rulesInvariant!5716 (LexerInterface!6373 List!42906) Bool)

(assert (=> b!4000291 (= res!1625181 (rulesInvariant!5716 thiss!21717 rules!2999))))

(declare-fun b!4000292 () Bool)

(assert (=> b!4000292 (= e!2480286 e!2480283)))

(declare-fun res!1625174 () Bool)

(assert (=> b!4000292 (=> (not res!1625174) (not e!2480283))))

(declare-fun lt!1414238 () Int)

(assert (=> b!4000292 (= res!1625174 (>= lt!1414238 lt!1414266))))

(assert (=> b!4000292 (= lt!1414266 (size!31992 lt!1414241))))

(assert (=> b!4000292 (= lt!1414238 (size!31992 prefix!494))))

(assert (=> b!4000292 (= lt!1414241 (list!15888 (charsOf!4600 token!484)))))

(declare-fun b!4000293 () Bool)

(assert (=> b!4000293 (= e!2480268 e!2480266)))

(declare-fun res!1625191 () Bool)

(assert (=> b!4000293 (=> res!1625191 e!2480266)))

(assert (=> b!4000293 (= res!1625191 (not (matchR!5666 (regex!6784 (rule!9816 token!484)) lt!1414241)))))

(assert (=> b!4000293 (isPrefix!3871 lt!1414241 lt!1414206)))

(declare-fun lt!1414231 () Unit!61761)

(assert (=> b!4000293 (= lt!1414231 (lemmaPrefixStaysPrefixWhenAddingToSuffix!704 lt!1414241 prefix!494 newSuffix!27))))

(declare-fun lt!1414226 () Unit!61761)

(assert (=> b!4000293 (= lt!1414226 (lemmaPrefixStaysPrefixWhenAddingToSuffix!704 lt!1414241 prefix!494 suffix!1299))))

(declare-fun b!4000294 () Bool)

(assert (=> b!4000294 (= e!2480277 (not e!2480270))))

(declare-fun res!1625173 () Bool)

(assert (=> b!4000294 (=> res!1625173 e!2480270)))

(assert (=> b!4000294 (= res!1625173 (not (= lt!1414227 lt!1414215)))))

(assert (=> b!4000294 (= lt!1414227 (++!11186 lt!1414241 suffixResult!105))))

(declare-fun lt!1414255 () Unit!61761)

(assert (=> b!4000294 (= lt!1414255 (lemmaInv!999 (transformation!6784 (rule!9816 token!484))))))

(assert (=> b!4000294 (ruleValid!2716 thiss!21717 (rule!9816 token!484))))

(declare-fun lt!1414232 () Unit!61761)

(assert (=> b!4000294 (= lt!1414232 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1790 thiss!21717 (rule!9816 token!484) rules!2999))))

(assert (= (and start!376496 res!1625197) b!4000262))

(assert (= (and b!4000262 res!1625178) b!4000291))

(assert (= (and b!4000291 res!1625181) b!4000250))

(assert (= (and b!4000250 res!1625195) b!4000265))

(assert (= (and b!4000265 res!1625177) b!4000292))

(assert (= (and b!4000292 res!1625174) b!4000260))

(assert (= (and b!4000260 res!1625192) b!4000272))

(assert (= (and b!4000272 res!1625175) b!4000294))

(assert (= (and b!4000294 (not res!1625173)) b!4000246))

(assert (= (and b!4000246 (not res!1625176)) b!4000263))

(assert (= (and b!4000263 (not res!1625185)) b!4000267))

(assert (= (and b!4000267 (not res!1625190)) b!4000276))

(assert (= (and b!4000276 (not res!1625188)) b!4000293))

(assert (= (and b!4000293 (not res!1625191)) b!4000274))

(assert (= (and b!4000274 res!1625202) b!4000278))

(assert (= (and b!4000278 res!1625200) b!4000271))

(assert (= (and b!4000271 res!1625201) b!4000270))

(assert (= (and b!4000274 (not res!1625187)) b!4000248))

(assert (= (and b!4000248 (not res!1625199)) b!4000282))

(assert (= (and b!4000282 (not res!1625193)) b!4000288))

(assert (= (and b!4000288 (not res!1625184)) b!4000258))

(assert (= (and b!4000258 (not res!1625194)) b!4000247))

(assert (= (and b!4000247 (not res!1625196)) b!4000275))

(assert (= (and b!4000275 (not res!1625179)) b!4000256))

(assert (= (and b!4000256 (not res!1625183)) b!4000251))

(assert (= (and b!4000251 c!691953) b!4000253))

(assert (= (and b!4000251 (not c!691953)) b!4000285))

(assert (= (and b!4000253 res!1625189) b!4000284))

(assert (= (and b!4000251 c!691955) b!4000257))

(assert (= (and b!4000251 (not c!691955)) b!4000261))

(assert (= (and b!4000251 (not res!1625172)) b!4000269))

(assert (= (and b!4000269 (not res!1625182)) b!4000277))

(assert (= (and b!4000277 c!691952) b!4000290))

(assert (= (and b!4000277 (not c!691952)) b!4000287))

(assert (= (and b!4000290 res!1625198) b!4000283))

(assert (= (and b!4000277 c!691954) b!4000279))

(assert (= (and b!4000277 (not c!691954)) b!4000249))

(assert (= (and b!4000279 res!1625186) b!4000266))

(assert (= (and b!4000277 (not res!1625180)) b!4000280))

(assert (= (and start!376496 ((_ is Cons!42780) prefix!494)) b!4000252))

(assert (= b!4000268 b!4000289))

(assert (= b!4000254 b!4000268))

(assert (= start!376496 b!4000254))

(assert (= (and start!376496 ((_ is Cons!42780) suffixResult!105)) b!4000286))

(assert (= (and start!376496 ((_ is Cons!42780) suffix!1299)) b!4000264))

(assert (= (and start!376496 ((_ is Cons!42780) newSuffix!27)) b!4000245))

(assert (= b!4000273 b!4000281))

(assert (= b!4000255 b!4000273))

(assert (= (and start!376496 ((_ is Cons!42782) rules!2999)) b!4000255))

(assert (= (and start!376496 ((_ is Cons!42780) newSuffixResult!27)) b!4000259))

(declare-fun m!4582403 () Bool)

(assert (=> b!4000292 m!4582403))

(declare-fun m!4582405 () Bool)

(assert (=> b!4000292 m!4582405))

(declare-fun m!4582407 () Bool)

(assert (=> b!4000292 m!4582407))

(assert (=> b!4000292 m!4582407))

(declare-fun m!4582409 () Bool)

(assert (=> b!4000292 m!4582409))

(declare-fun m!4582411 () Bool)

(assert (=> b!4000272 m!4582411))

(declare-fun m!4582413 () Bool)

(assert (=> b!4000272 m!4582413))

(declare-fun m!4582415 () Bool)

(assert (=> b!4000262 m!4582415))

(declare-fun m!4582417 () Bool)

(assert (=> b!4000251 m!4582417))

(declare-fun m!4582419 () Bool)

(assert (=> b!4000251 m!4582419))

(declare-fun m!4582421 () Bool)

(assert (=> b!4000251 m!4582421))

(declare-fun m!4582423 () Bool)

(assert (=> b!4000258 m!4582423))

(declare-fun m!4582425 () Bool)

(assert (=> b!4000258 m!4582425))

(declare-fun m!4582427 () Bool)

(assert (=> b!4000258 m!4582427))

(declare-fun m!4582429 () Bool)

(assert (=> b!4000246 m!4582429))

(declare-fun m!4582431 () Bool)

(assert (=> b!4000246 m!4582431))

(declare-fun m!4582433 () Bool)

(assert (=> b!4000246 m!4582433))

(declare-fun m!4582435 () Bool)

(assert (=> b!4000246 m!4582435))

(declare-fun m!4582437 () Bool)

(assert (=> b!4000246 m!4582437))

(declare-fun m!4582439 () Bool)

(assert (=> b!4000291 m!4582439))

(declare-fun m!4582441 () Bool)

(assert (=> b!4000294 m!4582441))

(declare-fun m!4582443 () Bool)

(assert (=> b!4000294 m!4582443))

(declare-fun m!4582445 () Bool)

(assert (=> b!4000294 m!4582445))

(declare-fun m!4582447 () Bool)

(assert (=> b!4000294 m!4582447))

(declare-fun m!4582449 () Bool)

(assert (=> b!4000257 m!4582449))

(declare-fun m!4582451 () Bool)

(assert (=> b!4000277 m!4582451))

(declare-fun m!4582453 () Bool)

(assert (=> b!4000277 m!4582453))

(declare-fun m!4582455 () Bool)

(assert (=> b!4000277 m!4582455))

(declare-fun m!4582457 () Bool)

(assert (=> b!4000277 m!4582457))

(declare-fun m!4582459 () Bool)

(assert (=> b!4000277 m!4582459))

(declare-fun m!4582461 () Bool)

(assert (=> b!4000273 m!4582461))

(declare-fun m!4582463 () Bool)

(assert (=> b!4000273 m!4582463))

(declare-fun m!4582465 () Bool)

(assert (=> b!4000269 m!4582465))

(declare-fun m!4582467 () Bool)

(assert (=> b!4000290 m!4582467))

(declare-fun m!4582469 () Bool)

(assert (=> b!4000290 m!4582469))

(declare-fun m!4582471 () Bool)

(assert (=> b!4000256 m!4582471))

(declare-fun m!4582473 () Bool)

(assert (=> b!4000256 m!4582473))

(declare-fun m!4582475 () Bool)

(assert (=> b!4000253 m!4582475))

(declare-fun m!4582477 () Bool)

(assert (=> b!4000253 m!4582477))

(declare-fun m!4582479 () Bool)

(assert (=> b!4000265 m!4582479))

(declare-fun m!4582481 () Bool)

(assert (=> b!4000274 m!4582481))

(declare-fun m!4582483 () Bool)

(assert (=> b!4000274 m!4582483))

(declare-fun m!4582485 () Bool)

(assert (=> b!4000274 m!4582485))

(declare-fun m!4582487 () Bool)

(assert (=> b!4000274 m!4582487))

(declare-fun m!4582489 () Bool)

(assert (=> b!4000254 m!4582489))

(declare-fun m!4582491 () Bool)

(assert (=> b!4000268 m!4582491))

(declare-fun m!4582493 () Bool)

(assert (=> b!4000268 m!4582493))

(declare-fun m!4582495 () Bool)

(assert (=> b!4000276 m!4582495))

(declare-fun m!4582497 () Bool)

(assert (=> b!4000276 m!4582497))

(declare-fun m!4582499 () Bool)

(assert (=> b!4000276 m!4582499))

(declare-fun m!4582501 () Bool)

(assert (=> b!4000276 m!4582501))

(declare-fun m!4582503 () Bool)

(assert (=> b!4000276 m!4582503))

(assert (=> b!4000276 m!4582499))

(declare-fun m!4582505 () Bool)

(assert (=> b!4000276 m!4582505))

(declare-fun m!4582507 () Bool)

(assert (=> b!4000276 m!4582507))

(declare-fun m!4582509 () Bool)

(assert (=> b!4000282 m!4582509))

(declare-fun m!4582511 () Bool)

(assert (=> b!4000282 m!4582511))

(declare-fun m!4582513 () Bool)

(assert (=> b!4000282 m!4582513))

(declare-fun m!4582515 () Bool)

(assert (=> b!4000282 m!4582515))

(declare-fun m!4582517 () Bool)

(assert (=> b!4000282 m!4582517))

(declare-fun m!4582519 () Bool)

(assert (=> b!4000282 m!4582519))

(declare-fun m!4582521 () Bool)

(assert (=> b!4000282 m!4582521))

(assert (=> b!4000282 m!4582517))

(declare-fun m!4582523 () Bool)

(assert (=> b!4000282 m!4582523))

(declare-fun m!4582525 () Bool)

(assert (=> b!4000282 m!4582525))

(declare-fun m!4582527 () Bool)

(assert (=> b!4000282 m!4582527))

(declare-fun m!4582529 () Bool)

(assert (=> b!4000282 m!4582529))

(declare-fun m!4582531 () Bool)

(assert (=> b!4000282 m!4582531))

(declare-fun m!4582533 () Bool)

(assert (=> b!4000282 m!4582533))

(declare-fun m!4582535 () Bool)

(assert (=> b!4000282 m!4582535))

(declare-fun m!4582537 () Bool)

(assert (=> b!4000282 m!4582537))

(declare-fun m!4582539 () Bool)

(assert (=> b!4000282 m!4582539))

(assert (=> b!4000282 m!4582527))

(declare-fun m!4582541 () Bool)

(assert (=> b!4000282 m!4582541))

(assert (=> b!4000282 m!4582515))

(declare-fun m!4582543 () Bool)

(assert (=> b!4000282 m!4582543))

(declare-fun m!4582545 () Bool)

(assert (=> b!4000260 m!4582545))

(declare-fun m!4582547 () Bool)

(assert (=> b!4000260 m!4582547))

(declare-fun m!4582549 () Bool)

(assert (=> b!4000247 m!4582549))

(declare-fun m!4582551 () Bool)

(assert (=> b!4000247 m!4582551))

(declare-fun m!4582553 () Bool)

(assert (=> b!4000247 m!4582553))

(declare-fun m!4582555 () Bool)

(assert (=> b!4000263 m!4582555))

(declare-fun m!4582557 () Bool)

(assert (=> b!4000263 m!4582557))

(declare-fun m!4582559 () Bool)

(assert (=> b!4000263 m!4582559))

(declare-fun m!4582561 () Bool)

(assert (=> b!4000263 m!4582561))

(declare-fun m!4582563 () Bool)

(assert (=> b!4000267 m!4582563))

(declare-fun m!4582565 () Bool)

(assert (=> b!4000267 m!4582565))

(declare-fun m!4582567 () Bool)

(assert (=> b!4000267 m!4582567))

(declare-fun m!4582569 () Bool)

(assert (=> b!4000267 m!4582569))

(declare-fun m!4582571 () Bool)

(assert (=> start!376496 m!4582571))

(declare-fun m!4582573 () Bool)

(assert (=> b!4000288 m!4582573))

(declare-fun m!4582575 () Bool)

(assert (=> b!4000288 m!4582575))

(declare-fun m!4582577 () Bool)

(assert (=> b!4000279 m!4582577))

(declare-fun m!4582579 () Bool)

(assert (=> b!4000279 m!4582579))

(declare-fun m!4582581 () Bool)

(assert (=> b!4000250 m!4582581))

(declare-fun m!4582583 () Bool)

(assert (=> b!4000250 m!4582583))

(declare-fun m!4582585 () Bool)

(assert (=> b!4000293 m!4582585))

(declare-fun m!4582587 () Bool)

(assert (=> b!4000293 m!4582587))

(declare-fun m!4582589 () Bool)

(assert (=> b!4000293 m!4582589))

(declare-fun m!4582591 () Bool)

(assert (=> b!4000293 m!4582591))

(declare-fun m!4582593 () Bool)

(assert (=> b!4000248 m!4582593))

(declare-fun m!4582595 () Bool)

(assert (=> b!4000248 m!4582595))

(declare-fun m!4582597 () Bool)

(assert (=> b!4000248 m!4582597))

(declare-fun m!4582599 () Bool)

(assert (=> b!4000248 m!4582599))

(declare-fun m!4582601 () Bool)

(assert (=> b!4000271 m!4582601))

(declare-fun m!4582603 () Bool)

(assert (=> b!4000280 m!4582603))

(check-sat (not b!4000268) (not b!4000291) (not b!4000258) tp_is_empty!20349 (not b!4000276) (not b!4000264) (not b!4000248) (not b_next!111831) (not b!4000253) b_and!307151 (not b!4000267) (not b!4000251) (not b!4000245) (not b!4000279) (not b!4000292) (not b!4000256) (not b!4000260) (not b!4000273) b_and!307155 (not b!4000246) (not b!4000269) (not b!4000271) (not b!4000254) (not b!4000277) (not b!4000293) b_and!307157 (not b_next!111827) (not b!4000280) (not b!4000272) (not b!4000259) (not b!4000250) (not b_next!111825) b_and!307153 (not b!4000262) (not b!4000247) (not b!4000274) (not b_next!111829) (not b!4000252) (not b!4000255) (not b!4000263) (not b!4000282) (not b!4000294) (not b!4000286) (not b!4000288) (not b!4000290) (not b!4000257) (not start!376496) (not b!4000265))
(check-sat b_and!307151 b_and!307155 (not b_next!111825) b_and!307153 (not b_next!111829) (not b_next!111831) b_and!307157 (not b_next!111827))
