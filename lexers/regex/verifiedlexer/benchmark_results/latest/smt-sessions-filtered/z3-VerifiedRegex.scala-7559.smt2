; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!398614 () Bool)

(assert start!398614)

(declare-fun b!4180262 () Bool)

(declare-fun b_free!121455 () Bool)

(declare-fun b_next!122159 () Bool)

(assert (=> b!4180262 (= b_free!121455 (not b_next!122159))))

(declare-fun tp!1277616 () Bool)

(declare-fun b_and!326917 () Bool)

(assert (=> b!4180262 (= tp!1277616 b_and!326917)))

(declare-fun b_free!121457 () Bool)

(declare-fun b_next!122161 () Bool)

(assert (=> b!4180262 (= b_free!121457 (not b_next!122161))))

(declare-fun tp!1277621 () Bool)

(declare-fun b_and!326919 () Bool)

(assert (=> b!4180262 (= tp!1277621 b_and!326919)))

(declare-fun b!4180245 () Bool)

(declare-fun b_free!121459 () Bool)

(declare-fun b_next!122163 () Bool)

(assert (=> b!4180245 (= b_free!121459 (not b_next!122163))))

(declare-fun tp!1277620 () Bool)

(declare-fun b_and!326921 () Bool)

(assert (=> b!4180245 (= tp!1277620 b_and!326921)))

(declare-fun b_free!121461 () Bool)

(declare-fun b_next!122165 () Bool)

(assert (=> b!4180245 (= b_free!121461 (not b_next!122165))))

(declare-fun tp!1277625 () Bool)

(declare-fun b_and!326923 () Bool)

(assert (=> b!4180245 (= tp!1277625 b_and!326923)))

(declare-fun b!4180249 () Bool)

(declare-fun b_free!121463 () Bool)

(declare-fun b_next!122167 () Bool)

(assert (=> b!4180249 (= b_free!121463 (not b_next!122167))))

(declare-fun tp!1277626 () Bool)

(declare-fun b_and!326925 () Bool)

(assert (=> b!4180249 (= tp!1277626 b_and!326925)))

(declare-fun b_free!121465 () Bool)

(declare-fun b_next!122169 () Bool)

(assert (=> b!4180249 (= b_free!121465 (not b_next!122169))))

(declare-fun tp!1277628 () Bool)

(declare-fun b_and!326927 () Bool)

(assert (=> b!4180249 (= tp!1277628 b_and!326927)))

(declare-fun b!4180240 () Bool)

(declare-fun res!1714106 () Bool)

(declare-fun e!2595202 () Bool)

(assert (=> b!4180240 (=> (not res!1714106) (not e!2595202))))

(declare-datatypes ((C!25268 0))(
  ( (C!25269 (val!14796 Int)) )
))
(declare-datatypes ((List!46013 0))(
  ( (Nil!45889) (Cons!45889 (h!51309 C!25268) (t!344978 List!46013)) )
))
(declare-fun pBis!107 () List!46013)

(declare-fun input!3342 () List!46013)

(declare-fun isPrefix!4491 (List!46013 List!46013) Bool)

(assert (=> b!4180240 (= res!1714106 (isPrefix!4491 pBis!107 input!3342))))

(declare-fun b!4180241 () Bool)

(declare-fun res!1714099 () Bool)

(assert (=> b!4180241 (=> (not res!1714099) (not e!2595202))))

(declare-datatypes ((List!46014 0))(
  ( (Nil!45890) (Cons!45890 (h!51310 (_ BitVec 16)) (t!344979 List!46014)) )
))
(declare-datatypes ((TokenValue!7864 0))(
  ( (FloatLiteralValue!15728 (text!55493 List!46014)) (TokenValueExt!7863 (__x!27949 Int)) (Broken!39320 (value!238075 List!46014)) (Object!7987) (End!7864) (Def!7864) (Underscore!7864) (Match!7864) (Else!7864) (Error!7864) (Case!7864) (If!7864) (Extends!7864) (Abstract!7864) (Class!7864) (Val!7864) (DelimiterValue!15728 (del!7924 List!46014)) (KeywordValue!7870 (value!238076 List!46014)) (CommentValue!15728 (value!238077 List!46014)) (WhitespaceValue!15728 (value!238078 List!46014)) (IndentationValue!7864 (value!238079 List!46014)) (String!53185) (Int32!7864) (Broken!39321 (value!238080 List!46014)) (Boolean!7865) (Unit!64974) (OperatorValue!7867 (op!7924 List!46014)) (IdentifierValue!15728 (value!238081 List!46014)) (IdentifierValue!15729 (value!238082 List!46014)) (WhitespaceValue!15729 (value!238083 List!46014)) (True!15728) (False!15728) (Broken!39322 (value!238084 List!46014)) (Broken!39323 (value!238085 List!46014)) (True!15729) (RightBrace!7864) (RightBracket!7864) (Colon!7864) (Null!7864) (Comma!7864) (LeftBracket!7864) (False!15729) (LeftBrace!7864) (ImaginaryLiteralValue!7864 (text!55494 List!46014)) (StringLiteralValue!23592 (value!238086 List!46014)) (EOFValue!7864 (value!238087 List!46014)) (IdentValue!7864 (value!238088 List!46014)) (DelimiterValue!15729 (value!238089 List!46014)) (DedentValue!7864 (value!238090 List!46014)) (NewLineValue!7864 (value!238091 List!46014)) (IntegerValue!23592 (value!238092 (_ BitVec 32)) (text!55495 List!46014)) (IntegerValue!23593 (value!238093 Int) (text!55496 List!46014)) (Times!7864) (Or!7864) (Equal!7864) (Minus!7864) (Broken!39324 (value!238094 List!46014)) (And!7864) (Div!7864) (LessEqual!7864) (Mod!7864) (Concat!20403) (Not!7864) (Plus!7864) (SpaceValue!7864 (value!238095 List!46014)) (IntegerValue!23594 (value!238096 Int) (text!55497 List!46014)) (StringLiteralValue!23593 (text!55498 List!46014)) (FloatLiteralValue!15729 (text!55499 List!46014)) (BytesLiteralValue!7864 (value!238097 List!46014)) (CommentValue!15729 (value!238098 List!46014)) (StringLiteralValue!23594 (value!238099 List!46014)) (ErrorTokenValue!7864 (msg!7925 List!46014)) )
))
(declare-datatypes ((IArray!27695 0))(
  ( (IArray!27696 (innerList!13905 List!46013)) )
))
(declare-datatypes ((Conc!13845 0))(
  ( (Node!13845 (left!34184 Conc!13845) (right!34514 Conc!13845) (csize!27920 Int) (cheight!14056 Int)) (Leaf!21405 (xs!17151 IArray!27695) (csize!27921 Int)) (Empty!13845) )
))
(declare-datatypes ((BalanceConc!27284 0))(
  ( (BalanceConc!27285 (c!713830 Conc!13845)) )
))
(declare-datatypes ((Regex!12539 0))(
  ( (ElementMatch!12539 (c!713831 C!25268)) (Concat!20404 (regOne!25590 Regex!12539) (regTwo!25590 Regex!12539)) (EmptyExpr!12539) (Star!12539 (reg!12868 Regex!12539)) (EmptyLang!12539) (Union!12539 (regOne!25591 Regex!12539) (regTwo!25591 Regex!12539)) )
))
(declare-datatypes ((String!53186 0))(
  ( (String!53187 (value!238100 String)) )
))
(declare-datatypes ((TokenValueInjection!15156 0))(
  ( (TokenValueInjection!15157 (toValue!10322 Int) (toChars!10181 Int)) )
))
(declare-datatypes ((Rule!15068 0))(
  ( (Rule!15069 (regex!7634 Regex!12539) (tag!8498 String!53186) (isSeparator!7634 Bool) (transformation!7634 TokenValueInjection!15156)) )
))
(declare-fun r!4142 () Rule!15068)

(declare-fun p!2959 () List!46013)

(declare-fun matchR!6278 (Regex!12539 List!46013) Bool)

(assert (=> b!4180241 (= res!1714099 (matchR!6278 (regex!7634 r!4142) p!2959))))

(declare-fun res!1714101 () Bool)

(assert (=> start!398614 (=> (not res!1714101) (not e!2595202))))

(declare-datatypes ((LexerInterface!7227 0))(
  ( (LexerInterfaceExt!7224 (__x!27950 Int)) (Lexer!7225) )
))
(declare-fun thiss!25986 () LexerInterface!7227)

(get-info :version)

(assert (=> start!398614 (= res!1714101 ((_ is Lexer!7225) thiss!25986))))

(assert (=> start!398614 e!2595202))

(assert (=> start!398614 true))

(declare-fun e!2595212 () Bool)

(assert (=> start!398614 e!2595212))

(declare-fun e!2595214 () Bool)

(assert (=> start!398614 e!2595214))

(declare-fun e!2595210 () Bool)

(assert (=> start!398614 e!2595210))

(declare-fun e!2595216 () Bool)

(assert (=> start!398614 e!2595216))

(declare-fun e!2595203 () Bool)

(assert (=> start!398614 e!2595203))

(declare-fun e!2595205 () Bool)

(assert (=> start!398614 e!2595205))

(declare-fun e!2595211 () Bool)

(declare-fun b!4180242 () Bool)

(declare-fun rBis!167 () Rule!15068)

(declare-fun tp!1277624 () Bool)

(declare-fun inv!60418 (String!53186) Bool)

(declare-fun inv!60421 (TokenValueInjection!15156) Bool)

(assert (=> b!4180242 (= e!2595212 (and tp!1277624 (inv!60418 (tag!8498 rBis!167)) (inv!60421 (transformation!7634 rBis!167)) e!2595211))))

(declare-fun b!4180243 () Bool)

(declare-fun tp_is_empty!22041 () Bool)

(declare-fun tp!1277627 () Bool)

(assert (=> b!4180243 (= e!2595216 (and tp_is_empty!22041 tp!1277627))))

(declare-fun b!4180244 () Bool)

(declare-fun res!1714097 () Bool)

(assert (=> b!4180244 (=> (not res!1714097) (not e!2595202))))

(assert (=> b!4180244 (= res!1714097 (isPrefix!4491 p!2959 input!3342))))

(assert (=> b!4180245 (= e!2595211 (and tp!1277620 tp!1277625))))

(declare-fun b!4180246 () Bool)

(declare-fun res!1714105 () Bool)

(assert (=> b!4180246 (=> (not res!1714105) (not e!2595202))))

(declare-fun validRegex!5656 (Regex!12539) Bool)

(assert (=> b!4180246 (= res!1714105 (validRegex!5656 (regex!7634 r!4142)))))

(declare-fun b!4180247 () Bool)

(declare-fun e!2595206 () Bool)

(declare-fun tp!1277622 () Bool)

(assert (=> b!4180247 (= e!2595210 (and e!2595206 tp!1277622))))

(declare-fun b!4180248 () Bool)

(declare-fun res!1714095 () Bool)

(assert (=> b!4180248 (=> (not res!1714095) (not e!2595202))))

(declare-datatypes ((List!46015 0))(
  ( (Nil!45891) (Cons!45891 (h!51311 Rule!15068) (t!344980 List!46015)) )
))
(declare-fun rules!3843 () List!46015)

(declare-fun contains!9439 (List!46015 Rule!15068) Bool)

(assert (=> b!4180248 (= res!1714095 (contains!9439 rules!3843 rBis!167))))

(declare-fun e!2595215 () Bool)

(assert (=> b!4180249 (= e!2595215 (and tp!1277626 tp!1277628))))

(declare-fun b!4180250 () Bool)

(declare-fun res!1714104 () Bool)

(assert (=> b!4180250 (=> (not res!1714104) (not e!2595202))))

(declare-fun rulesInvariant!6440 (LexerInterface!7227 List!46015) Bool)

(assert (=> b!4180250 (= res!1714104 (rulesInvariant!6440 thiss!25986 rules!3843))))

(declare-fun b!4180251 () Bool)

(declare-fun tp!1277617 () Bool)

(assert (=> b!4180251 (= e!2595205 (and tp_is_empty!22041 tp!1277617))))

(declare-fun b!4180252 () Bool)

(declare-fun res!1714098 () Bool)

(declare-fun e!2595208 () Bool)

(assert (=> b!4180252 (=> res!1714098 e!2595208)))

(declare-fun lt!1488698 () Int)

(declare-fun size!33699 (List!46013) Int)

(assert (=> b!4180252 (= res!1714098 (<= (size!33699 pBis!107) lt!1488698))))

(declare-fun b!4180253 () Bool)

(declare-fun tp!1277619 () Bool)

(declare-fun e!2595204 () Bool)

(assert (=> b!4180253 (= e!2595214 (and tp!1277619 (inv!60418 (tag!8498 r!4142)) (inv!60421 (transformation!7634 r!4142)) e!2595204))))

(declare-fun b!4180254 () Bool)

(declare-fun res!1714102 () Bool)

(assert (=> b!4180254 (=> res!1714102 e!2595208)))

(declare-fun ruleValid!3352 (LexerInterface!7227 Rule!15068) Bool)

(assert (=> b!4180254 (= res!1714102 (not (ruleValid!3352 thiss!25986 rBis!167)))))

(declare-fun b!4180255 () Bool)

(declare-datatypes ((Token!13982 0))(
  ( (Token!13983 (value!238101 TokenValue!7864) (rule!10694 Rule!15068) (size!33700 Int) (originalCharacters!8022 List!46013)) )
))
(declare-fun lt!1488696 () Token!13982)

(declare-fun inv!60422 (Token!13982) Bool)

(assert (=> b!4180255 (= e!2595208 (inv!60422 lt!1488696))))

(declare-fun b!4180256 () Bool)

(declare-fun res!1714100 () Bool)

(assert (=> b!4180256 (=> (not res!1714100) (not e!2595202))))

(declare-fun isEmpty!27151 (List!46015) Bool)

(assert (=> b!4180256 (= res!1714100 (not (isEmpty!27151 rules!3843)))))

(declare-fun b!4180257 () Bool)

(declare-fun res!1714103 () Bool)

(assert (=> b!4180257 (=> (not res!1714103) (not e!2595202))))

(assert (=> b!4180257 (= res!1714103 (contains!9439 rules!3843 r!4142))))

(declare-fun b!4180258 () Bool)

(declare-fun tp!1277623 () Bool)

(assert (=> b!4180258 (= e!2595203 (and tp_is_empty!22041 tp!1277623))))

(declare-fun b!4180259 () Bool)

(declare-fun tp!1277618 () Bool)

(assert (=> b!4180259 (= e!2595206 (and tp!1277618 (inv!60418 (tag!8498 (h!51311 rules!3843))) (inv!60421 (transformation!7634 (h!51311 rules!3843))) e!2595215))))

(declare-fun b!4180260 () Bool)

(assert (=> b!4180260 (= e!2595202 (not e!2595208))))

(declare-fun res!1714094 () Bool)

(assert (=> b!4180260 (=> res!1714094 e!2595208)))

(declare-datatypes ((tuple2!43702 0))(
  ( (tuple2!43703 (_1!24985 Token!13982) (_2!24985 List!46013)) )
))
(declare-datatypes ((Option!9828 0))(
  ( (None!9827) (Some!9827 (v!40635 tuple2!43702)) )
))
(declare-fun maxPrefixOneRule!3236 (LexerInterface!7227 Rule!15068 List!46013) Option!9828)

(declare-fun getSuffix!2784 (List!46013 List!46013) List!46013)

(assert (=> b!4180260 (= res!1714094 (not (= (maxPrefixOneRule!3236 thiss!25986 r!4142 input!3342) (Some!9827 (tuple2!43703 lt!1488696 (getSuffix!2784 input!3342 p!2959))))))))

(declare-fun lt!1488693 () TokenValue!7864)

(assert (=> b!4180260 (= lt!1488696 (Token!13983 lt!1488693 r!4142 lt!1488698 p!2959))))

(assert (=> b!4180260 (= lt!1488698 (size!33699 p!2959))))

(declare-fun lt!1488695 () BalanceConc!27284)

(declare-fun apply!10599 (TokenValueInjection!15156 BalanceConc!27284) TokenValue!7864)

(assert (=> b!4180260 (= lt!1488693 (apply!10599 (transformation!7634 r!4142) lt!1488695))))

(assert (=> b!4180260 (isPrefix!4491 input!3342 input!3342)))

(declare-datatypes ((Unit!64975 0))(
  ( (Unit!64976) )
))
(declare-fun lt!1488697 () Unit!64975)

(declare-fun lemmaIsPrefixRefl!2920 (List!46013 List!46013) Unit!64975)

(assert (=> b!4180260 (= lt!1488697 (lemmaIsPrefixRefl!2920 input!3342 input!3342))))

(declare-fun lt!1488694 () Unit!64975)

(declare-fun lemmaSemiInverse!2400 (TokenValueInjection!15156 BalanceConc!27284) Unit!64975)

(assert (=> b!4180260 (= lt!1488694 (lemmaSemiInverse!2400 (transformation!7634 r!4142) lt!1488695))))

(declare-fun seqFromList!5659 (List!46013) BalanceConc!27284)

(assert (=> b!4180260 (= lt!1488695 (seqFromList!5659 p!2959))))

(declare-fun b!4180261 () Bool)

(declare-fun res!1714096 () Bool)

(assert (=> b!4180261 (=> (not res!1714096) (not e!2595202))))

(assert (=> b!4180261 (= res!1714096 (ruleValid!3352 thiss!25986 r!4142))))

(assert (=> b!4180262 (= e!2595204 (and tp!1277616 tp!1277621))))

(assert (= (and start!398614 res!1714101) b!4180244))

(assert (= (and b!4180244 res!1714097) b!4180240))

(assert (= (and b!4180240 res!1714106) b!4180256))

(assert (= (and b!4180256 res!1714100) b!4180250))

(assert (= (and b!4180250 res!1714104) b!4180257))

(assert (= (and b!4180257 res!1714103) b!4180248))

(assert (= (and b!4180248 res!1714095) b!4180246))

(assert (= (and b!4180246 res!1714105) b!4180241))

(assert (= (and b!4180241 res!1714099) b!4180261))

(assert (= (and b!4180261 res!1714096) b!4180260))

(assert (= (and b!4180260 (not res!1714094)) b!4180252))

(assert (= (and b!4180252 (not res!1714098)) b!4180254))

(assert (= (and b!4180254 (not res!1714102)) b!4180255))

(assert (= b!4180242 b!4180245))

(assert (= start!398614 b!4180242))

(assert (= b!4180253 b!4180262))

(assert (= start!398614 b!4180253))

(assert (= b!4180259 b!4180249))

(assert (= b!4180247 b!4180259))

(assert (= (and start!398614 ((_ is Cons!45891) rules!3843)) b!4180247))

(assert (= (and start!398614 ((_ is Cons!45889) input!3342)) b!4180243))

(assert (= (and start!398614 ((_ is Cons!45889) pBis!107)) b!4180258))

(assert (= (and start!398614 ((_ is Cons!45889) p!2959)) b!4180251))

(declare-fun m!4769431 () Bool)

(assert (=> b!4180252 m!4769431))

(declare-fun m!4769433 () Bool)

(assert (=> b!4180259 m!4769433))

(declare-fun m!4769435 () Bool)

(assert (=> b!4180259 m!4769435))

(declare-fun m!4769437 () Bool)

(assert (=> b!4180244 m!4769437))

(declare-fun m!4769439 () Bool)

(assert (=> b!4180240 m!4769439))

(declare-fun m!4769441 () Bool)

(assert (=> b!4180261 m!4769441))

(declare-fun m!4769443 () Bool)

(assert (=> b!4180246 m!4769443))

(declare-fun m!4769445 () Bool)

(assert (=> b!4180255 m!4769445))

(declare-fun m!4769447 () Bool)

(assert (=> b!4180250 m!4769447))

(declare-fun m!4769449 () Bool)

(assert (=> b!4180260 m!4769449))

(declare-fun m!4769451 () Bool)

(assert (=> b!4180260 m!4769451))

(declare-fun m!4769453 () Bool)

(assert (=> b!4180260 m!4769453))

(declare-fun m!4769455 () Bool)

(assert (=> b!4180260 m!4769455))

(declare-fun m!4769457 () Bool)

(assert (=> b!4180260 m!4769457))

(declare-fun m!4769459 () Bool)

(assert (=> b!4180260 m!4769459))

(declare-fun m!4769461 () Bool)

(assert (=> b!4180260 m!4769461))

(declare-fun m!4769463 () Bool)

(assert (=> b!4180260 m!4769463))

(declare-fun m!4769465 () Bool)

(assert (=> b!4180257 m!4769465))

(declare-fun m!4769467 () Bool)

(assert (=> b!4180254 m!4769467))

(declare-fun m!4769469 () Bool)

(assert (=> b!4180241 m!4769469))

(declare-fun m!4769471 () Bool)

(assert (=> b!4180253 m!4769471))

(declare-fun m!4769473 () Bool)

(assert (=> b!4180253 m!4769473))

(declare-fun m!4769475 () Bool)

(assert (=> b!4180248 m!4769475))

(declare-fun m!4769477 () Bool)

(assert (=> b!4180256 m!4769477))

(declare-fun m!4769479 () Bool)

(assert (=> b!4180242 m!4769479))

(declare-fun m!4769481 () Bool)

(assert (=> b!4180242 m!4769481))

(check-sat (not b_next!122165) (not b!4180246) (not b!4180256) (not b!4180255) (not b_next!122169) (not b_next!122163) (not b!4180247) (not b!4180260) (not b_next!122159) (not b!4180244) (not b!4180253) (not b_next!122167) b_and!326921 (not b!4180257) (not b_next!122161) (not b!4180261) b_and!326919 (not b!4180240) b_and!326917 (not b!4180251) b_and!326925 b_and!326923 (not b!4180248) tp_is_empty!22041 b_and!326927 (not b!4180252) (not b!4180254) (not b!4180259) (not b!4180241) (not b!4180250) (not b!4180258) (not b!4180242) (not b!4180243))
(check-sat (not b_next!122165) (not b_next!122161) b_and!326919 (not b_next!122169) b_and!326917 (not b_next!122163) b_and!326927 (not b_next!122159) (not b_next!122167) b_and!326921 b_and!326925 b_and!326923)
(get-model)

(declare-fun d!1233672 () Bool)

(declare-fun lt!1488701 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7127 (List!46015) (InoxSet Rule!15068))

(assert (=> d!1233672 (= lt!1488701 (select (content!7127 rules!3843) rBis!167))))

(declare-fun e!2595222 () Bool)

(assert (=> d!1233672 (= lt!1488701 e!2595222)))

(declare-fun res!1714116 () Bool)

(assert (=> d!1233672 (=> (not res!1714116) (not e!2595222))))

(assert (=> d!1233672 (= res!1714116 ((_ is Cons!45891) rules!3843))))

(assert (=> d!1233672 (= (contains!9439 rules!3843 rBis!167) lt!1488701)))

(declare-fun b!4180267 () Bool)

(declare-fun e!2595221 () Bool)

(assert (=> b!4180267 (= e!2595222 e!2595221)))

(declare-fun res!1714115 () Bool)

(assert (=> b!4180267 (=> res!1714115 e!2595221)))

(assert (=> b!4180267 (= res!1714115 (= (h!51311 rules!3843) rBis!167))))

(declare-fun b!4180268 () Bool)

(assert (=> b!4180268 (= e!2595221 (contains!9439 (t!344980 rules!3843) rBis!167))))

(assert (= (and d!1233672 res!1714116) b!4180267))

(assert (= (and b!4180267 (not res!1714115)) b!4180268))

(declare-fun m!4769483 () Bool)

(assert (=> d!1233672 m!4769483))

(declare-fun m!4769485 () Bool)

(assert (=> d!1233672 m!4769485))

(declare-fun m!4769487 () Bool)

(assert (=> b!4180268 m!4769487))

(assert (=> b!4180248 d!1233672))

(declare-fun d!1233674 () Bool)

(assert (=> d!1233674 (= (inv!60418 (tag!8498 (h!51311 rules!3843))) (= (mod (str.len (value!238100 (tag!8498 (h!51311 rules!3843)))) 2) 0))))

(assert (=> b!4180259 d!1233674))

(declare-fun d!1233676 () Bool)

(declare-fun res!1714123 () Bool)

(declare-fun e!2595225 () Bool)

(assert (=> d!1233676 (=> (not res!1714123) (not e!2595225))))

(declare-fun semiInverseModEq!3303 (Int Int) Bool)

(assert (=> d!1233676 (= res!1714123 (semiInverseModEq!3303 (toChars!10181 (transformation!7634 (h!51311 rules!3843))) (toValue!10322 (transformation!7634 (h!51311 rules!3843)))))))

(assert (=> d!1233676 (= (inv!60421 (transformation!7634 (h!51311 rules!3843))) e!2595225)))

(declare-fun b!4180271 () Bool)

(declare-fun equivClasses!3202 (Int Int) Bool)

(assert (=> b!4180271 (= e!2595225 (equivClasses!3202 (toChars!10181 (transformation!7634 (h!51311 rules!3843))) (toValue!10322 (transformation!7634 (h!51311 rules!3843)))))))

(assert (= (and d!1233676 res!1714123) b!4180271))

(declare-fun m!4769489 () Bool)

(assert (=> d!1233676 m!4769489))

(declare-fun m!4769491 () Bool)

(assert (=> b!4180271 m!4769491))

(assert (=> b!4180259 d!1233676))

(declare-fun d!1233678 () Bool)

(declare-fun lt!1488704 () List!46013)

(declare-fun ++!11710 (List!46013 List!46013) List!46013)

(assert (=> d!1233678 (= (++!11710 p!2959 lt!1488704) input!3342)))

(declare-fun e!2595228 () List!46013)

(assert (=> d!1233678 (= lt!1488704 e!2595228)))

(declare-fun c!713834 () Bool)

(assert (=> d!1233678 (= c!713834 ((_ is Cons!45889) p!2959))))

(assert (=> d!1233678 (>= (size!33699 input!3342) (size!33699 p!2959))))

(assert (=> d!1233678 (= (getSuffix!2784 input!3342 p!2959) lt!1488704)))

(declare-fun b!4180276 () Bool)

(declare-fun tail!6719 (List!46013) List!46013)

(assert (=> b!4180276 (= e!2595228 (getSuffix!2784 (tail!6719 input!3342) (t!344978 p!2959)))))

(declare-fun b!4180277 () Bool)

(assert (=> b!4180277 (= e!2595228 input!3342)))

(assert (= (and d!1233678 c!713834) b!4180276))

(assert (= (and d!1233678 (not c!713834)) b!4180277))

(declare-fun m!4769493 () Bool)

(assert (=> d!1233678 m!4769493))

(declare-fun m!4769495 () Bool)

(assert (=> d!1233678 m!4769495))

(assert (=> d!1233678 m!4769459))

(declare-fun m!4769497 () Bool)

(assert (=> b!4180276 m!4769497))

(assert (=> b!4180276 m!4769497))

(declare-fun m!4769499 () Bool)

(assert (=> b!4180276 m!4769499))

(assert (=> b!4180260 d!1233678))

(declare-fun d!1233682 () Bool)

(declare-fun dynLambda!19687 (Int BalanceConc!27284) TokenValue!7864)

(assert (=> d!1233682 (= (apply!10599 (transformation!7634 r!4142) lt!1488695) (dynLambda!19687 (toValue!10322 (transformation!7634 r!4142)) lt!1488695))))

(declare-fun b_lambda!122787 () Bool)

(assert (=> (not b_lambda!122787) (not d!1233682)))

(declare-fun t!344982 () Bool)

(declare-fun tb!250183 () Bool)

(assert (=> (and b!4180262 (= (toValue!10322 (transformation!7634 r!4142)) (toValue!10322 (transformation!7634 r!4142))) t!344982) tb!250183))

(declare-fun result!304860 () Bool)

(declare-fun inv!21 (TokenValue!7864) Bool)

(assert (=> tb!250183 (= result!304860 (inv!21 (dynLambda!19687 (toValue!10322 (transformation!7634 r!4142)) lt!1488695)))))

(declare-fun m!4769501 () Bool)

(assert (=> tb!250183 m!4769501))

(assert (=> d!1233682 t!344982))

(declare-fun b_and!326929 () Bool)

(assert (= b_and!326917 (and (=> t!344982 result!304860) b_and!326929)))

(declare-fun t!344984 () Bool)

(declare-fun tb!250185 () Bool)

(assert (=> (and b!4180245 (= (toValue!10322 (transformation!7634 rBis!167)) (toValue!10322 (transformation!7634 r!4142))) t!344984) tb!250185))

(declare-fun result!304864 () Bool)

(assert (= result!304864 result!304860))

(assert (=> d!1233682 t!344984))

(declare-fun b_and!326931 () Bool)

(assert (= b_and!326921 (and (=> t!344984 result!304864) b_and!326931)))

(declare-fun t!344986 () Bool)

(declare-fun tb!250187 () Bool)

(assert (=> (and b!4180249 (= (toValue!10322 (transformation!7634 (h!51311 rules!3843))) (toValue!10322 (transformation!7634 r!4142))) t!344986) tb!250187))

(declare-fun result!304866 () Bool)

(assert (= result!304866 result!304860))

(assert (=> d!1233682 t!344986))

(declare-fun b_and!326933 () Bool)

(assert (= b_and!326925 (and (=> t!344986 result!304866) b_and!326933)))

(declare-fun m!4769511 () Bool)

(assert (=> d!1233682 m!4769511))

(assert (=> b!4180260 d!1233682))

(declare-fun d!1233686 () Bool)

(declare-fun e!2595250 () Bool)

(assert (=> d!1233686 e!2595250))

(declare-fun res!1714147 () Bool)

(assert (=> d!1233686 (=> res!1714147 e!2595250)))

(declare-fun lt!1488713 () Bool)

(assert (=> d!1233686 (= res!1714147 (not lt!1488713))))

(declare-fun e!2595252 () Bool)

(assert (=> d!1233686 (= lt!1488713 e!2595252)))

(declare-fun res!1714146 () Bool)

(assert (=> d!1233686 (=> res!1714146 e!2595252)))

(assert (=> d!1233686 (= res!1714146 ((_ is Nil!45889) input!3342))))

(assert (=> d!1233686 (= (isPrefix!4491 input!3342 input!3342) lt!1488713)))

(declare-fun b!4180307 () Bool)

(declare-fun res!1714144 () Bool)

(declare-fun e!2595251 () Bool)

(assert (=> b!4180307 (=> (not res!1714144) (not e!2595251))))

(declare-fun head!8872 (List!46013) C!25268)

(assert (=> b!4180307 (= res!1714144 (= (head!8872 input!3342) (head!8872 input!3342)))))

(declare-fun b!4180306 () Bool)

(assert (=> b!4180306 (= e!2595252 e!2595251)))

(declare-fun res!1714145 () Bool)

(assert (=> b!4180306 (=> (not res!1714145) (not e!2595251))))

(assert (=> b!4180306 (= res!1714145 (not ((_ is Nil!45889) input!3342)))))

(declare-fun b!4180308 () Bool)

(assert (=> b!4180308 (= e!2595251 (isPrefix!4491 (tail!6719 input!3342) (tail!6719 input!3342)))))

(declare-fun b!4180309 () Bool)

(assert (=> b!4180309 (= e!2595250 (>= (size!33699 input!3342) (size!33699 input!3342)))))

(assert (= (and d!1233686 (not res!1714146)) b!4180306))

(assert (= (and b!4180306 res!1714145) b!4180307))

(assert (= (and b!4180307 res!1714144) b!4180308))

(assert (= (and d!1233686 (not res!1714147)) b!4180309))

(declare-fun m!4769517 () Bool)

(assert (=> b!4180307 m!4769517))

(assert (=> b!4180307 m!4769517))

(assert (=> b!4180308 m!4769497))

(assert (=> b!4180308 m!4769497))

(assert (=> b!4180308 m!4769497))

(assert (=> b!4180308 m!4769497))

(declare-fun m!4769519 () Bool)

(assert (=> b!4180308 m!4769519))

(assert (=> b!4180309 m!4769495))

(assert (=> b!4180309 m!4769495))

(assert (=> b!4180260 d!1233686))

(declare-fun d!1233690 () Bool)

(declare-fun fromListB!2587 (List!46013) BalanceConc!27284)

(assert (=> d!1233690 (= (seqFromList!5659 p!2959) (fromListB!2587 p!2959))))

(declare-fun bs!596275 () Bool)

(assert (= bs!596275 d!1233690))

(declare-fun m!4769523 () Bool)

(assert (=> bs!596275 m!4769523))

(assert (=> b!4180260 d!1233690))

(declare-fun b!4180330 () Bool)

(declare-fun res!1714167 () Bool)

(declare-fun e!2595266 () Bool)

(assert (=> b!4180330 (=> (not res!1714167) (not e!2595266))))

(declare-fun lt!1488732 () Option!9828)

(declare-fun get!14914 (Option!9828) tuple2!43702)

(assert (=> b!4180330 (= res!1714167 (< (size!33699 (_2!24985 (get!14914 lt!1488732))) (size!33699 input!3342)))))

(declare-fun b!4180332 () Bool)

(declare-fun e!2595265 () Bool)

(assert (=> b!4180332 (= e!2595265 e!2595266)))

(declare-fun res!1714168 () Bool)

(assert (=> b!4180332 (=> (not res!1714168) (not e!2595266))))

(declare-fun list!16577 (BalanceConc!27284) List!46013)

(declare-fun charsOf!5073 (Token!13982) BalanceConc!27284)

(assert (=> b!4180332 (= res!1714168 (matchR!6278 (regex!7634 r!4142) (list!16577 (charsOf!5073 (_1!24985 (get!14914 lt!1488732))))))))

(declare-fun b!4180333 () Bool)

(declare-fun e!2595264 () Option!9828)

(assert (=> b!4180333 (= e!2595264 None!9827)))

(declare-fun b!4180334 () Bool)

(declare-fun res!1714163 () Bool)

(assert (=> b!4180334 (=> (not res!1714163) (not e!2595266))))

(assert (=> b!4180334 (= res!1714163 (= (rule!10694 (_1!24985 (get!14914 lt!1488732))) r!4142))))

(declare-fun b!4180335 () Bool)

(declare-fun res!1714166 () Bool)

(assert (=> b!4180335 (=> (not res!1714166) (not e!2595266))))

(assert (=> b!4180335 (= res!1714166 (= (++!11710 (list!16577 (charsOf!5073 (_1!24985 (get!14914 lt!1488732)))) (_2!24985 (get!14914 lt!1488732))) input!3342))))

(declare-fun b!4180336 () Bool)

(declare-fun res!1714165 () Bool)

(assert (=> b!4180336 (=> (not res!1714165) (not e!2595266))))

(assert (=> b!4180336 (= res!1714165 (= (value!238101 (_1!24985 (get!14914 lt!1488732))) (apply!10599 (transformation!7634 (rule!10694 (_1!24985 (get!14914 lt!1488732)))) (seqFromList!5659 (originalCharacters!8022 (_1!24985 (get!14914 lt!1488732)))))))))

(declare-fun b!4180337 () Bool)

(assert (=> b!4180337 (= e!2595266 (= (size!33700 (_1!24985 (get!14914 lt!1488732))) (size!33699 (originalCharacters!8022 (_1!24985 (get!14914 lt!1488732))))))))

(declare-fun b!4180338 () Bool)

(declare-fun e!2595267 () Bool)

(declare-datatypes ((tuple2!43706 0))(
  ( (tuple2!43707 (_1!24987 List!46013) (_2!24987 List!46013)) )
))
(declare-fun findLongestMatchInner!1585 (Regex!12539 List!46013 Int List!46013 List!46013 Int) tuple2!43706)

(assert (=> b!4180338 (= e!2595267 (matchR!6278 (regex!7634 r!4142) (_1!24987 (findLongestMatchInner!1585 (regex!7634 r!4142) Nil!45889 (size!33699 Nil!45889) input!3342 input!3342 (size!33699 input!3342)))))))

(declare-fun b!4180331 () Bool)

(declare-fun lt!1488731 () tuple2!43706)

(declare-fun size!33702 (BalanceConc!27284) Int)

(assert (=> b!4180331 (= e!2595264 (Some!9827 (tuple2!43703 (Token!13983 (apply!10599 (transformation!7634 r!4142) (seqFromList!5659 (_1!24987 lt!1488731))) r!4142 (size!33702 (seqFromList!5659 (_1!24987 lt!1488731))) (_1!24987 lt!1488731)) (_2!24987 lt!1488731))))))

(declare-fun lt!1488729 () Unit!64975)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1558 (Regex!12539 List!46013) Unit!64975)

(assert (=> b!4180331 (= lt!1488729 (longestMatchIsAcceptedByMatchOrIsEmpty!1558 (regex!7634 r!4142) input!3342))))

(declare-fun res!1714162 () Bool)

(declare-fun isEmpty!27154 (List!46013) Bool)

(assert (=> b!4180331 (= res!1714162 (isEmpty!27154 (_1!24987 (findLongestMatchInner!1585 (regex!7634 r!4142) Nil!45889 (size!33699 Nil!45889) input!3342 input!3342 (size!33699 input!3342)))))))

(assert (=> b!4180331 (=> res!1714162 e!2595267)))

(assert (=> b!4180331 e!2595267))

(declare-fun lt!1488733 () Unit!64975)

(assert (=> b!4180331 (= lt!1488733 lt!1488729)))

(declare-fun lt!1488730 () Unit!64975)

(assert (=> b!4180331 (= lt!1488730 (lemmaSemiInverse!2400 (transformation!7634 r!4142) (seqFromList!5659 (_1!24987 lt!1488731))))))

(declare-fun d!1233694 () Bool)

(assert (=> d!1233694 e!2595265))

(declare-fun res!1714164 () Bool)

(assert (=> d!1233694 (=> res!1714164 e!2595265)))

(declare-fun isEmpty!27155 (Option!9828) Bool)

(assert (=> d!1233694 (= res!1714164 (isEmpty!27155 lt!1488732))))

(assert (=> d!1233694 (= lt!1488732 e!2595264)))

(declare-fun c!713841 () Bool)

(assert (=> d!1233694 (= c!713841 (isEmpty!27154 (_1!24987 lt!1488731)))))

(declare-fun findLongestMatch!1498 (Regex!12539 List!46013) tuple2!43706)

(assert (=> d!1233694 (= lt!1488731 (findLongestMatch!1498 (regex!7634 r!4142) input!3342))))

(assert (=> d!1233694 (ruleValid!3352 thiss!25986 r!4142)))

(assert (=> d!1233694 (= (maxPrefixOneRule!3236 thiss!25986 r!4142 input!3342) lt!1488732)))

(assert (= (and d!1233694 c!713841) b!4180333))

(assert (= (and d!1233694 (not c!713841)) b!4180331))

(assert (= (and b!4180331 (not res!1714162)) b!4180338))

(assert (= (and d!1233694 (not res!1714164)) b!4180332))

(assert (= (and b!4180332 res!1714168) b!4180335))

(assert (= (and b!4180335 res!1714166) b!4180330))

(assert (= (and b!4180330 res!1714167) b!4180334))

(assert (= (and b!4180334 res!1714163) b!4180336))

(assert (= (and b!4180336 res!1714165) b!4180337))

(declare-fun m!4769531 () Bool)

(assert (=> b!4180332 m!4769531))

(declare-fun m!4769533 () Bool)

(assert (=> b!4180332 m!4769533))

(assert (=> b!4180332 m!4769533))

(declare-fun m!4769535 () Bool)

(assert (=> b!4180332 m!4769535))

(assert (=> b!4180332 m!4769535))

(declare-fun m!4769537 () Bool)

(assert (=> b!4180332 m!4769537))

(declare-fun m!4769539 () Bool)

(assert (=> d!1233694 m!4769539))

(declare-fun m!4769541 () Bool)

(assert (=> d!1233694 m!4769541))

(declare-fun m!4769543 () Bool)

(assert (=> d!1233694 m!4769543))

(assert (=> d!1233694 m!4769441))

(assert (=> b!4180336 m!4769531))

(declare-fun m!4769545 () Bool)

(assert (=> b!4180336 m!4769545))

(assert (=> b!4180336 m!4769545))

(declare-fun m!4769547 () Bool)

(assert (=> b!4180336 m!4769547))

(assert (=> b!4180337 m!4769531))

(declare-fun m!4769549 () Bool)

(assert (=> b!4180337 m!4769549))

(declare-fun m!4769551 () Bool)

(assert (=> b!4180338 m!4769551))

(assert (=> b!4180338 m!4769495))

(assert (=> b!4180338 m!4769551))

(assert (=> b!4180338 m!4769495))

(declare-fun m!4769553 () Bool)

(assert (=> b!4180338 m!4769553))

(declare-fun m!4769555 () Bool)

(assert (=> b!4180338 m!4769555))

(assert (=> b!4180330 m!4769531))

(declare-fun m!4769557 () Bool)

(assert (=> b!4180330 m!4769557))

(assert (=> b!4180330 m!4769495))

(assert (=> b!4180335 m!4769531))

(assert (=> b!4180335 m!4769533))

(assert (=> b!4180335 m!4769533))

(assert (=> b!4180335 m!4769535))

(assert (=> b!4180335 m!4769535))

(declare-fun m!4769559 () Bool)

(assert (=> b!4180335 m!4769559))

(declare-fun m!4769561 () Bool)

(assert (=> b!4180331 m!4769561))

(declare-fun m!4769563 () Bool)

(assert (=> b!4180331 m!4769563))

(assert (=> b!4180331 m!4769561))

(declare-fun m!4769565 () Bool)

(assert (=> b!4180331 m!4769565))

(assert (=> b!4180331 m!4769551))

(assert (=> b!4180331 m!4769495))

(assert (=> b!4180331 m!4769553))

(assert (=> b!4180331 m!4769561))

(declare-fun m!4769567 () Bool)

(assert (=> b!4180331 m!4769567))

(assert (=> b!4180331 m!4769561))

(declare-fun m!4769569 () Bool)

(assert (=> b!4180331 m!4769569))

(assert (=> b!4180331 m!4769495))

(declare-fun m!4769571 () Bool)

(assert (=> b!4180331 m!4769571))

(assert (=> b!4180331 m!4769551))

(assert (=> b!4180334 m!4769531))

(assert (=> b!4180260 d!1233694))

(declare-fun d!1233700 () Bool)

(declare-fun lt!1488736 () Int)

(assert (=> d!1233700 (>= lt!1488736 0)))

(declare-fun e!2595270 () Int)

(assert (=> d!1233700 (= lt!1488736 e!2595270)))

(declare-fun c!713844 () Bool)

(assert (=> d!1233700 (= c!713844 ((_ is Nil!45889) p!2959))))

(assert (=> d!1233700 (= (size!33699 p!2959) lt!1488736)))

(declare-fun b!4180343 () Bool)

(assert (=> b!4180343 (= e!2595270 0)))

(declare-fun b!4180344 () Bool)

(assert (=> b!4180344 (= e!2595270 (+ 1 (size!33699 (t!344978 p!2959))))))

(assert (= (and d!1233700 c!713844) b!4180343))

(assert (= (and d!1233700 (not c!713844)) b!4180344))

(declare-fun m!4769573 () Bool)

(assert (=> b!4180344 m!4769573))

(assert (=> b!4180260 d!1233700))

(declare-fun d!1233702 () Bool)

(assert (=> d!1233702 (isPrefix!4491 input!3342 input!3342)))

(declare-fun lt!1488739 () Unit!64975)

(declare-fun choose!25586 (List!46013 List!46013) Unit!64975)

(assert (=> d!1233702 (= lt!1488739 (choose!25586 input!3342 input!3342))))

(assert (=> d!1233702 (= (lemmaIsPrefixRefl!2920 input!3342 input!3342) lt!1488739)))

(declare-fun bs!596277 () Bool)

(assert (= bs!596277 d!1233702))

(assert (=> bs!596277 m!4769453))

(declare-fun m!4769575 () Bool)

(assert (=> bs!596277 m!4769575))

(assert (=> b!4180260 d!1233702))

(declare-fun b!4180542 () Bool)

(declare-fun e!2595389 () Bool)

(assert (=> b!4180542 (= e!2595389 true)))

(declare-fun d!1233704 () Bool)

(assert (=> d!1233704 e!2595389))

(assert (= d!1233704 b!4180542))

(declare-fun lambda!129345 () Int)

(declare-fun order!24209 () Int)

(declare-fun order!24211 () Int)

(declare-fun dynLambda!19688 (Int Int) Int)

(declare-fun dynLambda!19689 (Int Int) Int)

(assert (=> b!4180542 (< (dynLambda!19688 order!24209 (toValue!10322 (transformation!7634 r!4142))) (dynLambda!19689 order!24211 lambda!129345))))

(declare-fun order!24213 () Int)

(declare-fun dynLambda!19690 (Int Int) Int)

(assert (=> b!4180542 (< (dynLambda!19690 order!24213 (toChars!10181 (transformation!7634 r!4142))) (dynLambda!19689 order!24211 lambda!129345))))

(declare-fun dynLambda!19691 (Int TokenValue!7864) BalanceConc!27284)

(assert (=> d!1233704 (= (list!16577 (dynLambda!19691 (toChars!10181 (transformation!7634 r!4142)) (dynLambda!19687 (toValue!10322 (transformation!7634 r!4142)) lt!1488695))) (list!16577 lt!1488695))))

(declare-fun lt!1488771 () Unit!64975)

(declare-fun ForallOf!1038 (Int BalanceConc!27284) Unit!64975)

(assert (=> d!1233704 (= lt!1488771 (ForallOf!1038 lambda!129345 lt!1488695))))

(assert (=> d!1233704 (= (lemmaSemiInverse!2400 (transformation!7634 r!4142) lt!1488695) lt!1488771)))

(declare-fun b_lambda!122803 () Bool)

(assert (=> (not b_lambda!122803) (not d!1233704)))

(declare-fun t!345012 () Bool)

(declare-fun tb!250213 () Bool)

(assert (=> (and b!4180262 (= (toChars!10181 (transformation!7634 r!4142)) (toChars!10181 (transformation!7634 r!4142))) t!345012) tb!250213))

(declare-fun tp!1277677 () Bool)

(declare-fun b!4180547 () Bool)

(declare-fun e!2595392 () Bool)

(declare-fun inv!60425 (Conc!13845) Bool)

(assert (=> b!4180547 (= e!2595392 (and (inv!60425 (c!713830 (dynLambda!19691 (toChars!10181 (transformation!7634 r!4142)) (dynLambda!19687 (toValue!10322 (transformation!7634 r!4142)) lt!1488695)))) tp!1277677))))

(declare-fun result!304902 () Bool)

(declare-fun inv!60426 (BalanceConc!27284) Bool)

(assert (=> tb!250213 (= result!304902 (and (inv!60426 (dynLambda!19691 (toChars!10181 (transformation!7634 r!4142)) (dynLambda!19687 (toValue!10322 (transformation!7634 r!4142)) lt!1488695))) e!2595392))))

(assert (= tb!250213 b!4180547))

(declare-fun m!4769709 () Bool)

(assert (=> b!4180547 m!4769709))

(declare-fun m!4769711 () Bool)

(assert (=> tb!250213 m!4769711))

(assert (=> d!1233704 t!345012))

(declare-fun b_and!326963 () Bool)

(assert (= b_and!326919 (and (=> t!345012 result!304902) b_and!326963)))

(declare-fun tb!250215 () Bool)

(declare-fun t!345014 () Bool)

(assert (=> (and b!4180245 (= (toChars!10181 (transformation!7634 rBis!167)) (toChars!10181 (transformation!7634 r!4142))) t!345014) tb!250215))

(declare-fun result!304906 () Bool)

(assert (= result!304906 result!304902))

(assert (=> d!1233704 t!345014))

(declare-fun b_and!326965 () Bool)

(assert (= b_and!326923 (and (=> t!345014 result!304906) b_and!326965)))

(declare-fun tb!250217 () Bool)

(declare-fun t!345016 () Bool)

(assert (=> (and b!4180249 (= (toChars!10181 (transformation!7634 (h!51311 rules!3843))) (toChars!10181 (transformation!7634 r!4142))) t!345016) tb!250217))

(declare-fun result!304908 () Bool)

(assert (= result!304908 result!304902))

(assert (=> d!1233704 t!345016))

(declare-fun b_and!326967 () Bool)

(assert (= b_and!326927 (and (=> t!345016 result!304908) b_and!326967)))

(declare-fun b_lambda!122805 () Bool)

(assert (=> (not b_lambda!122805) (not d!1233704)))

(assert (=> d!1233704 t!344982))

(declare-fun b_and!326969 () Bool)

(assert (= b_and!326929 (and (=> t!344982 result!304860) b_and!326969)))

(assert (=> d!1233704 t!344984))

(declare-fun b_and!326971 () Bool)

(assert (= b_and!326931 (and (=> t!344984 result!304864) b_and!326971)))

(assert (=> d!1233704 t!344986))

(declare-fun b_and!326973 () Bool)

(assert (= b_and!326933 (and (=> t!344986 result!304866) b_and!326973)))

(declare-fun m!4769713 () Bool)

(assert (=> d!1233704 m!4769713))

(declare-fun m!4769715 () Bool)

(assert (=> d!1233704 m!4769715))

(declare-fun m!4769717 () Bool)

(assert (=> d!1233704 m!4769717))

(declare-fun m!4769719 () Bool)

(assert (=> d!1233704 m!4769719))

(assert (=> d!1233704 m!4769511))

(assert (=> d!1233704 m!4769717))

(assert (=> d!1233704 m!4769511))

(assert (=> b!4180260 d!1233704))

(declare-fun d!1233746 () Bool)

(declare-fun res!1714269 () Bool)

(declare-fun e!2595395 () Bool)

(assert (=> d!1233746 (=> (not res!1714269) (not e!2595395))))

(declare-fun rulesValid!2972 (LexerInterface!7227 List!46015) Bool)

(assert (=> d!1233746 (= res!1714269 (rulesValid!2972 thiss!25986 rules!3843))))

(assert (=> d!1233746 (= (rulesInvariant!6440 thiss!25986 rules!3843) e!2595395)))

(declare-fun b!4180550 () Bool)

(declare-datatypes ((List!46017 0))(
  ( (Nil!45893) (Cons!45893 (h!51313 String!53186) (t!345030 List!46017)) )
))
(declare-fun noDuplicateTag!3133 (LexerInterface!7227 List!46015 List!46017) Bool)

(assert (=> b!4180550 (= e!2595395 (noDuplicateTag!3133 thiss!25986 rules!3843 Nil!45893))))

(assert (= (and d!1233746 res!1714269) b!4180550))

(declare-fun m!4769721 () Bool)

(assert (=> d!1233746 m!4769721))

(declare-fun m!4769723 () Bool)

(assert (=> b!4180550 m!4769723))

(assert (=> b!4180250 d!1233746))

(declare-fun d!1233748 () Bool)

(assert (=> d!1233748 (= (isEmpty!27151 rules!3843) ((_ is Nil!45891) rules!3843))))

(assert (=> b!4180256 d!1233748))

(declare-fun b!4180569 () Bool)

(declare-fun e!2595416 () Bool)

(declare-fun call!291607 () Bool)

(assert (=> b!4180569 (= e!2595416 call!291607)))

(declare-fun c!713873 () Bool)

(declare-fun c!713872 () Bool)

(declare-fun bm!291600 () Bool)

(declare-fun call!291605 () Bool)

(assert (=> bm!291600 (= call!291605 (validRegex!5656 (ite c!713873 (reg!12868 (regex!7634 r!4142)) (ite c!713872 (regTwo!25591 (regex!7634 r!4142)) (regTwo!25590 (regex!7634 r!4142))))))))

(declare-fun bm!291601 () Bool)

(declare-fun call!291606 () Bool)

(assert (=> bm!291601 (= call!291606 (validRegex!5656 (ite c!713872 (regOne!25591 (regex!7634 r!4142)) (regOne!25590 (regex!7634 r!4142)))))))

(declare-fun b!4180570 () Bool)

(declare-fun res!1714281 () Bool)

(declare-fun e!2595413 () Bool)

(assert (=> b!4180570 (=> res!1714281 e!2595413)))

(assert (=> b!4180570 (= res!1714281 (not ((_ is Concat!20404) (regex!7634 r!4142))))))

(declare-fun e!2595410 () Bool)

(assert (=> b!4180570 (= e!2595410 e!2595413)))

(declare-fun b!4180571 () Bool)

(declare-fun e!2595412 () Bool)

(declare-fun e!2595414 () Bool)

(assert (=> b!4180571 (= e!2595412 e!2595414)))

(assert (=> b!4180571 (= c!713873 ((_ is Star!12539) (regex!7634 r!4142)))))

(declare-fun b!4180572 () Bool)

(declare-fun res!1714280 () Bool)

(declare-fun e!2595415 () Bool)

(assert (=> b!4180572 (=> (not res!1714280) (not e!2595415))))

(assert (=> b!4180572 (= res!1714280 call!291606)))

(assert (=> b!4180572 (= e!2595410 e!2595415)))

(declare-fun b!4180573 () Bool)

(assert (=> b!4180573 (= e!2595413 e!2595416)))

(declare-fun res!1714284 () Bool)

(assert (=> b!4180573 (=> (not res!1714284) (not e!2595416))))

(assert (=> b!4180573 (= res!1714284 call!291606)))

(declare-fun b!4180574 () Bool)

(declare-fun e!2595411 () Bool)

(assert (=> b!4180574 (= e!2595414 e!2595411)))

(declare-fun res!1714283 () Bool)

(declare-fun nullable!4395 (Regex!12539) Bool)

(assert (=> b!4180574 (= res!1714283 (not (nullable!4395 (reg!12868 (regex!7634 r!4142)))))))

(assert (=> b!4180574 (=> (not res!1714283) (not e!2595411))))

(declare-fun d!1233750 () Bool)

(declare-fun res!1714282 () Bool)

(assert (=> d!1233750 (=> res!1714282 e!2595412)))

(assert (=> d!1233750 (= res!1714282 ((_ is ElementMatch!12539) (regex!7634 r!4142)))))

(assert (=> d!1233750 (= (validRegex!5656 (regex!7634 r!4142)) e!2595412)))

(declare-fun b!4180575 () Bool)

(assert (=> b!4180575 (= e!2595415 call!291607)))

(declare-fun b!4180576 () Bool)

(assert (=> b!4180576 (= e!2595414 e!2595410)))

(assert (=> b!4180576 (= c!713872 ((_ is Union!12539) (regex!7634 r!4142)))))

(declare-fun bm!291602 () Bool)

(assert (=> bm!291602 (= call!291607 call!291605)))

(declare-fun b!4180577 () Bool)

(assert (=> b!4180577 (= e!2595411 call!291605)))

(assert (= (and d!1233750 (not res!1714282)) b!4180571))

(assert (= (and b!4180571 c!713873) b!4180574))

(assert (= (and b!4180571 (not c!713873)) b!4180576))

(assert (= (and b!4180574 res!1714283) b!4180577))

(assert (= (and b!4180576 c!713872) b!4180572))

(assert (= (and b!4180576 (not c!713872)) b!4180570))

(assert (= (and b!4180572 res!1714280) b!4180575))

(assert (= (and b!4180570 (not res!1714281)) b!4180573))

(assert (= (and b!4180573 res!1714284) b!4180569))

(assert (= (or b!4180575 b!4180569) bm!291602))

(assert (= (or b!4180572 b!4180573) bm!291601))

(assert (= (or b!4180577 bm!291602) bm!291600))

(declare-fun m!4769725 () Bool)

(assert (=> bm!291600 m!4769725))

(declare-fun m!4769727 () Bool)

(assert (=> bm!291601 m!4769727))

(declare-fun m!4769729 () Bool)

(assert (=> b!4180574 m!4769729))

(assert (=> b!4180246 d!1233750))

(declare-fun d!1233752 () Bool)

(declare-fun lt!1488772 () Bool)

(assert (=> d!1233752 (= lt!1488772 (select (content!7127 rules!3843) r!4142))))

(declare-fun e!2595418 () Bool)

(assert (=> d!1233752 (= lt!1488772 e!2595418)))

(declare-fun res!1714286 () Bool)

(assert (=> d!1233752 (=> (not res!1714286) (not e!2595418))))

(assert (=> d!1233752 (= res!1714286 ((_ is Cons!45891) rules!3843))))

(assert (=> d!1233752 (= (contains!9439 rules!3843 r!4142) lt!1488772)))

(declare-fun b!4180578 () Bool)

(declare-fun e!2595417 () Bool)

(assert (=> b!4180578 (= e!2595418 e!2595417)))

(declare-fun res!1714285 () Bool)

(assert (=> b!4180578 (=> res!1714285 e!2595417)))

(assert (=> b!4180578 (= res!1714285 (= (h!51311 rules!3843) r!4142))))

(declare-fun b!4180579 () Bool)

(assert (=> b!4180579 (= e!2595417 (contains!9439 (t!344980 rules!3843) r!4142))))

(assert (= (and d!1233752 res!1714286) b!4180578))

(assert (= (and b!4180578 (not res!1714285)) b!4180579))

(assert (=> d!1233752 m!4769483))

(declare-fun m!4769731 () Bool)

(assert (=> d!1233752 m!4769731))

(declare-fun m!4769733 () Bool)

(assert (=> b!4180579 m!4769733))

(assert (=> b!4180257 d!1233752))

(declare-fun d!1233754 () Bool)

(assert (=> d!1233754 (= (inv!60418 (tag!8498 r!4142)) (= (mod (str.len (value!238100 (tag!8498 r!4142))) 2) 0))))

(assert (=> b!4180253 d!1233754))

(declare-fun d!1233756 () Bool)

(declare-fun res!1714287 () Bool)

(declare-fun e!2595419 () Bool)

(assert (=> d!1233756 (=> (not res!1714287) (not e!2595419))))

(assert (=> d!1233756 (= res!1714287 (semiInverseModEq!3303 (toChars!10181 (transformation!7634 r!4142)) (toValue!10322 (transformation!7634 r!4142))))))

(assert (=> d!1233756 (= (inv!60421 (transformation!7634 r!4142)) e!2595419)))

(declare-fun b!4180580 () Bool)

(assert (=> b!4180580 (= e!2595419 (equivClasses!3202 (toChars!10181 (transformation!7634 r!4142)) (toValue!10322 (transformation!7634 r!4142))))))

(assert (= (and d!1233756 res!1714287) b!4180580))

(declare-fun m!4769735 () Bool)

(assert (=> d!1233756 m!4769735))

(declare-fun m!4769737 () Bool)

(assert (=> b!4180580 m!4769737))

(assert (=> b!4180253 d!1233756))

(declare-fun d!1233758 () Bool)

(declare-fun res!1714292 () Bool)

(declare-fun e!2595422 () Bool)

(assert (=> d!1233758 (=> (not res!1714292) (not e!2595422))))

(assert (=> d!1233758 (= res!1714292 (validRegex!5656 (regex!7634 rBis!167)))))

(assert (=> d!1233758 (= (ruleValid!3352 thiss!25986 rBis!167) e!2595422)))

(declare-fun b!4180585 () Bool)

(declare-fun res!1714293 () Bool)

(assert (=> b!4180585 (=> (not res!1714293) (not e!2595422))))

(assert (=> b!4180585 (= res!1714293 (not (nullable!4395 (regex!7634 rBis!167))))))

(declare-fun b!4180586 () Bool)

(assert (=> b!4180586 (= e!2595422 (not (= (tag!8498 rBis!167) (String!53187 ""))))))

(assert (= (and d!1233758 res!1714292) b!4180585))

(assert (= (and b!4180585 res!1714293) b!4180586))

(declare-fun m!4769739 () Bool)

(assert (=> d!1233758 m!4769739))

(declare-fun m!4769741 () Bool)

(assert (=> b!4180585 m!4769741))

(assert (=> b!4180254 d!1233758))

(declare-fun d!1233760 () Bool)

(declare-fun e!2595423 () Bool)

(assert (=> d!1233760 e!2595423))

(declare-fun res!1714297 () Bool)

(assert (=> d!1233760 (=> res!1714297 e!2595423)))

(declare-fun lt!1488773 () Bool)

(assert (=> d!1233760 (= res!1714297 (not lt!1488773))))

(declare-fun e!2595425 () Bool)

(assert (=> d!1233760 (= lt!1488773 e!2595425)))

(declare-fun res!1714296 () Bool)

(assert (=> d!1233760 (=> res!1714296 e!2595425)))

(assert (=> d!1233760 (= res!1714296 ((_ is Nil!45889) p!2959))))

(assert (=> d!1233760 (= (isPrefix!4491 p!2959 input!3342) lt!1488773)))

(declare-fun b!4180588 () Bool)

(declare-fun res!1714294 () Bool)

(declare-fun e!2595424 () Bool)

(assert (=> b!4180588 (=> (not res!1714294) (not e!2595424))))

(assert (=> b!4180588 (= res!1714294 (= (head!8872 p!2959) (head!8872 input!3342)))))

(declare-fun b!4180587 () Bool)

(assert (=> b!4180587 (= e!2595425 e!2595424)))

(declare-fun res!1714295 () Bool)

(assert (=> b!4180587 (=> (not res!1714295) (not e!2595424))))

(assert (=> b!4180587 (= res!1714295 (not ((_ is Nil!45889) input!3342)))))

(declare-fun b!4180589 () Bool)

(assert (=> b!4180589 (= e!2595424 (isPrefix!4491 (tail!6719 p!2959) (tail!6719 input!3342)))))

(declare-fun b!4180590 () Bool)

(assert (=> b!4180590 (= e!2595423 (>= (size!33699 input!3342) (size!33699 p!2959)))))

(assert (= (and d!1233760 (not res!1714296)) b!4180587))

(assert (= (and b!4180587 res!1714295) b!4180588))

(assert (= (and b!4180588 res!1714294) b!4180589))

(assert (= (and d!1233760 (not res!1714297)) b!4180590))

(declare-fun m!4769743 () Bool)

(assert (=> b!4180588 m!4769743))

(assert (=> b!4180588 m!4769517))

(declare-fun m!4769745 () Bool)

(assert (=> b!4180589 m!4769745))

(assert (=> b!4180589 m!4769497))

(assert (=> b!4180589 m!4769745))

(assert (=> b!4180589 m!4769497))

(declare-fun m!4769747 () Bool)

(assert (=> b!4180589 m!4769747))

(assert (=> b!4180590 m!4769495))

(assert (=> b!4180590 m!4769459))

(assert (=> b!4180244 d!1233760))

(declare-fun d!1233762 () Bool)

(declare-fun res!1714302 () Bool)

(declare-fun e!2595428 () Bool)

(assert (=> d!1233762 (=> (not res!1714302) (not e!2595428))))

(assert (=> d!1233762 (= res!1714302 (not (isEmpty!27154 (originalCharacters!8022 lt!1488696))))))

(assert (=> d!1233762 (= (inv!60422 lt!1488696) e!2595428)))

(declare-fun b!4180595 () Bool)

(declare-fun res!1714303 () Bool)

(assert (=> b!4180595 (=> (not res!1714303) (not e!2595428))))

(assert (=> b!4180595 (= res!1714303 (= (originalCharacters!8022 lt!1488696) (list!16577 (dynLambda!19691 (toChars!10181 (transformation!7634 (rule!10694 lt!1488696))) (value!238101 lt!1488696)))))))

(declare-fun b!4180596 () Bool)

(assert (=> b!4180596 (= e!2595428 (= (size!33700 lt!1488696) (size!33699 (originalCharacters!8022 lt!1488696))))))

(assert (= (and d!1233762 res!1714302) b!4180595))

(assert (= (and b!4180595 res!1714303) b!4180596))

(declare-fun b_lambda!122807 () Bool)

(assert (=> (not b_lambda!122807) (not b!4180595)))

(declare-fun t!345018 () Bool)

(declare-fun tb!250219 () Bool)

(assert (=> (and b!4180262 (= (toChars!10181 (transformation!7634 r!4142)) (toChars!10181 (transformation!7634 (rule!10694 lt!1488696)))) t!345018) tb!250219))

(declare-fun b!4180597 () Bool)

(declare-fun e!2595429 () Bool)

(declare-fun tp!1277678 () Bool)

(assert (=> b!4180597 (= e!2595429 (and (inv!60425 (c!713830 (dynLambda!19691 (toChars!10181 (transformation!7634 (rule!10694 lt!1488696))) (value!238101 lt!1488696)))) tp!1277678))))

(declare-fun result!304910 () Bool)

(assert (=> tb!250219 (= result!304910 (and (inv!60426 (dynLambda!19691 (toChars!10181 (transformation!7634 (rule!10694 lt!1488696))) (value!238101 lt!1488696))) e!2595429))))

(assert (= tb!250219 b!4180597))

(declare-fun m!4769749 () Bool)

(assert (=> b!4180597 m!4769749))

(declare-fun m!4769751 () Bool)

(assert (=> tb!250219 m!4769751))

(assert (=> b!4180595 t!345018))

(declare-fun b_and!326975 () Bool)

(assert (= b_and!326963 (and (=> t!345018 result!304910) b_and!326975)))

(declare-fun t!345020 () Bool)

(declare-fun tb!250221 () Bool)

(assert (=> (and b!4180245 (= (toChars!10181 (transformation!7634 rBis!167)) (toChars!10181 (transformation!7634 (rule!10694 lt!1488696)))) t!345020) tb!250221))

(declare-fun result!304912 () Bool)

(assert (= result!304912 result!304910))

(assert (=> b!4180595 t!345020))

(declare-fun b_and!326977 () Bool)

(assert (= b_and!326965 (and (=> t!345020 result!304912) b_and!326977)))

(declare-fun tb!250223 () Bool)

(declare-fun t!345022 () Bool)

(assert (=> (and b!4180249 (= (toChars!10181 (transformation!7634 (h!51311 rules!3843))) (toChars!10181 (transformation!7634 (rule!10694 lt!1488696)))) t!345022) tb!250223))

(declare-fun result!304914 () Bool)

(assert (= result!304914 result!304910))

(assert (=> b!4180595 t!345022))

(declare-fun b_and!326979 () Bool)

(assert (= b_and!326967 (and (=> t!345022 result!304914) b_and!326979)))

(declare-fun m!4769753 () Bool)

(assert (=> d!1233762 m!4769753))

(declare-fun m!4769755 () Bool)

(assert (=> b!4180595 m!4769755))

(assert (=> b!4180595 m!4769755))

(declare-fun m!4769757 () Bool)

(assert (=> b!4180595 m!4769757))

(declare-fun m!4769759 () Bool)

(assert (=> b!4180596 m!4769759))

(assert (=> b!4180255 d!1233762))

(declare-fun d!1233764 () Bool)

(declare-fun res!1714304 () Bool)

(declare-fun e!2595430 () Bool)

(assert (=> d!1233764 (=> (not res!1714304) (not e!2595430))))

(assert (=> d!1233764 (= res!1714304 (validRegex!5656 (regex!7634 r!4142)))))

(assert (=> d!1233764 (= (ruleValid!3352 thiss!25986 r!4142) e!2595430)))

(declare-fun b!4180598 () Bool)

(declare-fun res!1714305 () Bool)

(assert (=> b!4180598 (=> (not res!1714305) (not e!2595430))))

(assert (=> b!4180598 (= res!1714305 (not (nullable!4395 (regex!7634 r!4142))))))

(declare-fun b!4180599 () Bool)

(assert (=> b!4180599 (= e!2595430 (not (= (tag!8498 r!4142) (String!53187 ""))))))

(assert (= (and d!1233764 res!1714304) b!4180598))

(assert (= (and b!4180598 res!1714305) b!4180599))

(assert (=> d!1233764 m!4769443))

(declare-fun m!4769761 () Bool)

(assert (=> b!4180598 m!4769761))

(assert (=> b!4180261 d!1233764))

(declare-fun d!1233766 () Bool)

(declare-fun e!2595431 () Bool)

(assert (=> d!1233766 e!2595431))

(declare-fun res!1714309 () Bool)

(assert (=> d!1233766 (=> res!1714309 e!2595431)))

(declare-fun lt!1488774 () Bool)

(assert (=> d!1233766 (= res!1714309 (not lt!1488774))))

(declare-fun e!2595433 () Bool)

(assert (=> d!1233766 (= lt!1488774 e!2595433)))

(declare-fun res!1714308 () Bool)

(assert (=> d!1233766 (=> res!1714308 e!2595433)))

(assert (=> d!1233766 (= res!1714308 ((_ is Nil!45889) pBis!107))))

(assert (=> d!1233766 (= (isPrefix!4491 pBis!107 input!3342) lt!1488774)))

(declare-fun b!4180601 () Bool)

(declare-fun res!1714306 () Bool)

(declare-fun e!2595432 () Bool)

(assert (=> b!4180601 (=> (not res!1714306) (not e!2595432))))

(assert (=> b!4180601 (= res!1714306 (= (head!8872 pBis!107) (head!8872 input!3342)))))

(declare-fun b!4180600 () Bool)

(assert (=> b!4180600 (= e!2595433 e!2595432)))

(declare-fun res!1714307 () Bool)

(assert (=> b!4180600 (=> (not res!1714307) (not e!2595432))))

(assert (=> b!4180600 (= res!1714307 (not ((_ is Nil!45889) input!3342)))))

(declare-fun b!4180602 () Bool)

(assert (=> b!4180602 (= e!2595432 (isPrefix!4491 (tail!6719 pBis!107) (tail!6719 input!3342)))))

(declare-fun b!4180603 () Bool)

(assert (=> b!4180603 (= e!2595431 (>= (size!33699 input!3342) (size!33699 pBis!107)))))

(assert (= (and d!1233766 (not res!1714308)) b!4180600))

(assert (= (and b!4180600 res!1714307) b!4180601))

(assert (= (and b!4180601 res!1714306) b!4180602))

(assert (= (and d!1233766 (not res!1714309)) b!4180603))

(declare-fun m!4769763 () Bool)

(assert (=> b!4180601 m!4769763))

(assert (=> b!4180601 m!4769517))

(declare-fun m!4769765 () Bool)

(assert (=> b!4180602 m!4769765))

(assert (=> b!4180602 m!4769497))

(assert (=> b!4180602 m!4769765))

(assert (=> b!4180602 m!4769497))

(declare-fun m!4769767 () Bool)

(assert (=> b!4180602 m!4769767))

(assert (=> b!4180603 m!4769495))

(assert (=> b!4180603 m!4769431))

(assert (=> b!4180240 d!1233766))

(declare-fun b!4180632 () Bool)

(declare-fun e!2595453 () Bool)

(assert (=> b!4180632 (= e!2595453 (nullable!4395 (regex!7634 r!4142)))))

(declare-fun b!4180633 () Bool)

(declare-fun res!1714332 () Bool)

(declare-fun e!2595450 () Bool)

(assert (=> b!4180633 (=> (not res!1714332) (not e!2595450))))

(assert (=> b!4180633 (= res!1714332 (isEmpty!27154 (tail!6719 p!2959)))))

(declare-fun b!4180634 () Bool)

(declare-fun res!1714326 () Bool)

(assert (=> b!4180634 (=> (not res!1714326) (not e!2595450))))

(declare-fun call!291610 () Bool)

(assert (=> b!4180634 (= res!1714326 (not call!291610))))

(declare-fun b!4180635 () Bool)

(declare-fun e!2595449 () Bool)

(declare-fun e!2595451 () Bool)

(assert (=> b!4180635 (= e!2595449 e!2595451)))

(declare-fun res!1714329 () Bool)

(assert (=> b!4180635 (=> res!1714329 e!2595451)))

(assert (=> b!4180635 (= res!1714329 call!291610)))

(declare-fun b!4180636 () Bool)

(declare-fun res!1714331 () Bool)

(declare-fun e!2595452 () Bool)

(assert (=> b!4180636 (=> res!1714331 e!2595452)))

(assert (=> b!4180636 (= res!1714331 (not ((_ is ElementMatch!12539) (regex!7634 r!4142))))))

(declare-fun e!2595448 () Bool)

(assert (=> b!4180636 (= e!2595448 e!2595452)))

(declare-fun b!4180637 () Bool)

(assert (=> b!4180637 (= e!2595451 (not (= (head!8872 p!2959) (c!713831 (regex!7634 r!4142)))))))

(declare-fun bm!291605 () Bool)

(assert (=> bm!291605 (= call!291610 (isEmpty!27154 p!2959))))

(declare-fun b!4180638 () Bool)

(declare-fun lt!1488777 () Bool)

(assert (=> b!4180638 (= e!2595448 (not lt!1488777))))

(declare-fun b!4180639 () Bool)

(declare-fun derivativeStep!3785 (Regex!12539 C!25268) Regex!12539)

(assert (=> b!4180639 (= e!2595453 (matchR!6278 (derivativeStep!3785 (regex!7634 r!4142) (head!8872 p!2959)) (tail!6719 p!2959)))))

(declare-fun b!4180640 () Bool)

(assert (=> b!4180640 (= e!2595450 (= (head!8872 p!2959) (c!713831 (regex!7634 r!4142))))))

(declare-fun b!4180641 () Bool)

(declare-fun e!2595454 () Bool)

(assert (=> b!4180641 (= e!2595454 e!2595448)))

(declare-fun c!713882 () Bool)

(assert (=> b!4180641 (= c!713882 ((_ is EmptyLang!12539) (regex!7634 r!4142)))))

(declare-fun b!4180642 () Bool)

(assert (=> b!4180642 (= e!2595452 e!2595449)))

(declare-fun res!1714328 () Bool)

(assert (=> b!4180642 (=> (not res!1714328) (not e!2595449))))

(assert (=> b!4180642 (= res!1714328 (not lt!1488777))))

(declare-fun b!4180643 () Bool)

(declare-fun res!1714327 () Bool)

(assert (=> b!4180643 (=> res!1714327 e!2595452)))

(assert (=> b!4180643 (= res!1714327 e!2595450)))

(declare-fun res!1714330 () Bool)

(assert (=> b!4180643 (=> (not res!1714330) (not e!2595450))))

(assert (=> b!4180643 (= res!1714330 lt!1488777)))

(declare-fun b!4180644 () Bool)

(assert (=> b!4180644 (= e!2595454 (= lt!1488777 call!291610))))

(declare-fun b!4180645 () Bool)

(declare-fun res!1714333 () Bool)

(assert (=> b!4180645 (=> res!1714333 e!2595451)))

(assert (=> b!4180645 (= res!1714333 (not (isEmpty!27154 (tail!6719 p!2959))))))

(declare-fun d!1233768 () Bool)

(assert (=> d!1233768 e!2595454))

(declare-fun c!713880 () Bool)

(assert (=> d!1233768 (= c!713880 ((_ is EmptyExpr!12539) (regex!7634 r!4142)))))

(assert (=> d!1233768 (= lt!1488777 e!2595453)))

(declare-fun c!713881 () Bool)

(assert (=> d!1233768 (= c!713881 (isEmpty!27154 p!2959))))

(assert (=> d!1233768 (validRegex!5656 (regex!7634 r!4142))))

(assert (=> d!1233768 (= (matchR!6278 (regex!7634 r!4142) p!2959) lt!1488777)))

(assert (= (and d!1233768 c!713881) b!4180632))

(assert (= (and d!1233768 (not c!713881)) b!4180639))

(assert (= (and d!1233768 c!713880) b!4180644))

(assert (= (and d!1233768 (not c!713880)) b!4180641))

(assert (= (and b!4180641 c!713882) b!4180638))

(assert (= (and b!4180641 (not c!713882)) b!4180636))

(assert (= (and b!4180636 (not res!1714331)) b!4180643))

(assert (= (and b!4180643 res!1714330) b!4180634))

(assert (= (and b!4180634 res!1714326) b!4180633))

(assert (= (and b!4180633 res!1714332) b!4180640))

(assert (= (and b!4180643 (not res!1714327)) b!4180642))

(assert (= (and b!4180642 res!1714328) b!4180635))

(assert (= (and b!4180635 (not res!1714329)) b!4180645))

(assert (= (and b!4180645 (not res!1714333)) b!4180637))

(assert (= (or b!4180644 b!4180634 b!4180635) bm!291605))

(assert (=> b!4180645 m!4769745))

(assert (=> b!4180645 m!4769745))

(declare-fun m!4769769 () Bool)

(assert (=> b!4180645 m!4769769))

(declare-fun m!4769771 () Bool)

(assert (=> bm!291605 m!4769771))

(assert (=> b!4180640 m!4769743))

(assert (=> b!4180637 m!4769743))

(assert (=> d!1233768 m!4769771))

(assert (=> d!1233768 m!4769443))

(assert (=> b!4180633 m!4769745))

(assert (=> b!4180633 m!4769745))

(assert (=> b!4180633 m!4769769))

(assert (=> b!4180639 m!4769743))

(assert (=> b!4180639 m!4769743))

(declare-fun m!4769773 () Bool)

(assert (=> b!4180639 m!4769773))

(assert (=> b!4180639 m!4769745))

(assert (=> b!4180639 m!4769773))

(assert (=> b!4180639 m!4769745))

(declare-fun m!4769775 () Bool)

(assert (=> b!4180639 m!4769775))

(assert (=> b!4180632 m!4769761))

(assert (=> b!4180241 d!1233768))

(declare-fun d!1233770 () Bool)

(declare-fun lt!1488778 () Int)

(assert (=> d!1233770 (>= lt!1488778 0)))

(declare-fun e!2595455 () Int)

(assert (=> d!1233770 (= lt!1488778 e!2595455)))

(declare-fun c!713883 () Bool)

(assert (=> d!1233770 (= c!713883 ((_ is Nil!45889) pBis!107))))

(assert (=> d!1233770 (= (size!33699 pBis!107) lt!1488778)))

(declare-fun b!4180646 () Bool)

(assert (=> b!4180646 (= e!2595455 0)))

(declare-fun b!4180647 () Bool)

(assert (=> b!4180647 (= e!2595455 (+ 1 (size!33699 (t!344978 pBis!107))))))

(assert (= (and d!1233770 c!713883) b!4180646))

(assert (= (and d!1233770 (not c!713883)) b!4180647))

(declare-fun m!4769777 () Bool)

(assert (=> b!4180647 m!4769777))

(assert (=> b!4180252 d!1233770))

(declare-fun d!1233772 () Bool)

(assert (=> d!1233772 (= (inv!60418 (tag!8498 rBis!167)) (= (mod (str.len (value!238100 (tag!8498 rBis!167))) 2) 0))))

(assert (=> b!4180242 d!1233772))

(declare-fun d!1233774 () Bool)

(declare-fun res!1714334 () Bool)

(declare-fun e!2595456 () Bool)

(assert (=> d!1233774 (=> (not res!1714334) (not e!2595456))))

(assert (=> d!1233774 (= res!1714334 (semiInverseModEq!3303 (toChars!10181 (transformation!7634 rBis!167)) (toValue!10322 (transformation!7634 rBis!167))))))

(assert (=> d!1233774 (= (inv!60421 (transformation!7634 rBis!167)) e!2595456)))

(declare-fun b!4180648 () Bool)

(assert (=> b!4180648 (= e!2595456 (equivClasses!3202 (toChars!10181 (transformation!7634 rBis!167)) (toValue!10322 (transformation!7634 rBis!167))))))

(assert (= (and d!1233774 res!1714334) b!4180648))

(declare-fun m!4769779 () Bool)

(assert (=> d!1233774 m!4769779))

(declare-fun m!4769781 () Bool)

(assert (=> b!4180648 m!4769781))

(assert (=> b!4180242 d!1233774))

(declare-fun b!4180662 () Bool)

(declare-fun e!2595459 () Bool)

(declare-fun tp!1277692 () Bool)

(declare-fun tp!1277690 () Bool)

(assert (=> b!4180662 (= e!2595459 (and tp!1277692 tp!1277690))))

(assert (=> b!4180253 (= tp!1277619 e!2595459)))

(declare-fun b!4180659 () Bool)

(assert (=> b!4180659 (= e!2595459 tp_is_empty!22041)))

(declare-fun b!4180660 () Bool)

(declare-fun tp!1277689 () Bool)

(declare-fun tp!1277693 () Bool)

(assert (=> b!4180660 (= e!2595459 (and tp!1277689 tp!1277693))))

(declare-fun b!4180661 () Bool)

(declare-fun tp!1277691 () Bool)

(assert (=> b!4180661 (= e!2595459 tp!1277691)))

(assert (= (and b!4180253 ((_ is ElementMatch!12539) (regex!7634 r!4142))) b!4180659))

(assert (= (and b!4180253 ((_ is Concat!20404) (regex!7634 r!4142))) b!4180660))

(assert (= (and b!4180253 ((_ is Star!12539) (regex!7634 r!4142))) b!4180661))

(assert (= (and b!4180253 ((_ is Union!12539) (regex!7634 r!4142))) b!4180662))

(declare-fun b!4180667 () Bool)

(declare-fun e!2595462 () Bool)

(declare-fun tp!1277696 () Bool)

(assert (=> b!4180667 (= e!2595462 (and tp_is_empty!22041 tp!1277696))))

(assert (=> b!4180243 (= tp!1277627 e!2595462)))

(assert (= (and b!4180243 ((_ is Cons!45889) (t!344978 input!3342))) b!4180667))

(declare-fun b!4180671 () Bool)

(declare-fun e!2595463 () Bool)

(declare-fun tp!1277700 () Bool)

(declare-fun tp!1277698 () Bool)

(assert (=> b!4180671 (= e!2595463 (and tp!1277700 tp!1277698))))

(assert (=> b!4180259 (= tp!1277618 e!2595463)))

(declare-fun b!4180668 () Bool)

(assert (=> b!4180668 (= e!2595463 tp_is_empty!22041)))

(declare-fun b!4180669 () Bool)

(declare-fun tp!1277697 () Bool)

(declare-fun tp!1277701 () Bool)

(assert (=> b!4180669 (= e!2595463 (and tp!1277697 tp!1277701))))

(declare-fun b!4180670 () Bool)

(declare-fun tp!1277699 () Bool)

(assert (=> b!4180670 (= e!2595463 tp!1277699)))

(assert (= (and b!4180259 ((_ is ElementMatch!12539) (regex!7634 (h!51311 rules!3843)))) b!4180668))

(assert (= (and b!4180259 ((_ is Concat!20404) (regex!7634 (h!51311 rules!3843)))) b!4180669))

(assert (= (and b!4180259 ((_ is Star!12539) (regex!7634 (h!51311 rules!3843)))) b!4180670))

(assert (= (and b!4180259 ((_ is Union!12539) (regex!7634 (h!51311 rules!3843)))) b!4180671))

(declare-fun b!4180672 () Bool)

(declare-fun e!2595464 () Bool)

(declare-fun tp!1277702 () Bool)

(assert (=> b!4180672 (= e!2595464 (and tp_is_empty!22041 tp!1277702))))

(assert (=> b!4180251 (= tp!1277617 e!2595464)))

(assert (= (and b!4180251 ((_ is Cons!45889) (t!344978 p!2959))) b!4180672))

(declare-fun b!4180683 () Bool)

(declare-fun b_free!121471 () Bool)

(declare-fun b_next!122175 () Bool)

(assert (=> b!4180683 (= b_free!121471 (not b_next!122175))))

(declare-fun t!345024 () Bool)

(declare-fun tb!250225 () Bool)

(assert (=> (and b!4180683 (= (toValue!10322 (transformation!7634 (h!51311 (t!344980 rules!3843)))) (toValue!10322 (transformation!7634 r!4142))) t!345024) tb!250225))

(declare-fun result!304922 () Bool)

(assert (= result!304922 result!304860))

(assert (=> d!1233682 t!345024))

(assert (=> d!1233704 t!345024))

(declare-fun b_and!326981 () Bool)

(declare-fun tp!1277713 () Bool)

(assert (=> b!4180683 (= tp!1277713 (and (=> t!345024 result!304922) b_and!326981))))

(declare-fun b_free!121473 () Bool)

(declare-fun b_next!122177 () Bool)

(assert (=> b!4180683 (= b_free!121473 (not b_next!122177))))

(declare-fun t!345026 () Bool)

(declare-fun tb!250227 () Bool)

(assert (=> (and b!4180683 (= (toChars!10181 (transformation!7634 (h!51311 (t!344980 rules!3843)))) (toChars!10181 (transformation!7634 r!4142))) t!345026) tb!250227))

(declare-fun result!304924 () Bool)

(assert (= result!304924 result!304902))

(assert (=> d!1233704 t!345026))

(declare-fun t!345028 () Bool)

(declare-fun tb!250229 () Bool)

(assert (=> (and b!4180683 (= (toChars!10181 (transformation!7634 (h!51311 (t!344980 rules!3843)))) (toChars!10181 (transformation!7634 (rule!10694 lt!1488696)))) t!345028) tb!250229))

(declare-fun result!304926 () Bool)

(assert (= result!304926 result!304910))

(assert (=> b!4180595 t!345028))

(declare-fun b_and!326983 () Bool)

(declare-fun tp!1277711 () Bool)

(assert (=> b!4180683 (= tp!1277711 (and (=> t!345026 result!304924) (=> t!345028 result!304926) b_and!326983))))

(declare-fun e!2595475 () Bool)

(assert (=> b!4180683 (= e!2595475 (and tp!1277713 tp!1277711))))

(declare-fun b!4180682 () Bool)

(declare-fun tp!1277714 () Bool)

(declare-fun e!2595473 () Bool)

(assert (=> b!4180682 (= e!2595473 (and tp!1277714 (inv!60418 (tag!8498 (h!51311 (t!344980 rules!3843)))) (inv!60421 (transformation!7634 (h!51311 (t!344980 rules!3843)))) e!2595475))))

(declare-fun b!4180681 () Bool)

(declare-fun e!2595476 () Bool)

(declare-fun tp!1277712 () Bool)

(assert (=> b!4180681 (= e!2595476 (and e!2595473 tp!1277712))))

(assert (=> b!4180247 (= tp!1277622 e!2595476)))

(assert (= b!4180682 b!4180683))

(assert (= b!4180681 b!4180682))

(assert (= (and b!4180247 ((_ is Cons!45891) (t!344980 rules!3843))) b!4180681))

(declare-fun m!4769783 () Bool)

(assert (=> b!4180682 m!4769783))

(declare-fun m!4769785 () Bool)

(assert (=> b!4180682 m!4769785))

(declare-fun b!4180687 () Bool)

(declare-fun e!2595477 () Bool)

(declare-fun tp!1277718 () Bool)

(declare-fun tp!1277716 () Bool)

(assert (=> b!4180687 (= e!2595477 (and tp!1277718 tp!1277716))))

(assert (=> b!4180242 (= tp!1277624 e!2595477)))

(declare-fun b!4180684 () Bool)

(assert (=> b!4180684 (= e!2595477 tp_is_empty!22041)))

(declare-fun b!4180685 () Bool)

(declare-fun tp!1277715 () Bool)

(declare-fun tp!1277719 () Bool)

(assert (=> b!4180685 (= e!2595477 (and tp!1277715 tp!1277719))))

(declare-fun b!4180686 () Bool)

(declare-fun tp!1277717 () Bool)

(assert (=> b!4180686 (= e!2595477 tp!1277717)))

(assert (= (and b!4180242 ((_ is ElementMatch!12539) (regex!7634 rBis!167))) b!4180684))

(assert (= (and b!4180242 ((_ is Concat!20404) (regex!7634 rBis!167))) b!4180685))

(assert (= (and b!4180242 ((_ is Star!12539) (regex!7634 rBis!167))) b!4180686))

(assert (= (and b!4180242 ((_ is Union!12539) (regex!7634 rBis!167))) b!4180687))

(declare-fun b!4180688 () Bool)

(declare-fun e!2595478 () Bool)

(declare-fun tp!1277720 () Bool)

(assert (=> b!4180688 (= e!2595478 (and tp_is_empty!22041 tp!1277720))))

(assert (=> b!4180258 (= tp!1277623 e!2595478)))

(assert (= (and b!4180258 ((_ is Cons!45889) (t!344978 pBis!107))) b!4180688))

(declare-fun b_lambda!122809 () Bool)

(assert (= b_lambda!122803 (or (and b!4180262 b_free!121457) (and b!4180245 b_free!121461 (= (toChars!10181 (transformation!7634 rBis!167)) (toChars!10181 (transformation!7634 r!4142)))) (and b!4180249 b_free!121465 (= (toChars!10181 (transformation!7634 (h!51311 rules!3843))) (toChars!10181 (transformation!7634 r!4142)))) (and b!4180683 b_free!121473 (= (toChars!10181 (transformation!7634 (h!51311 (t!344980 rules!3843)))) (toChars!10181 (transformation!7634 r!4142)))) b_lambda!122809)))

(declare-fun b_lambda!122811 () Bool)

(assert (= b_lambda!122805 (or (and b!4180262 b_free!121455) (and b!4180245 b_free!121459 (= (toValue!10322 (transformation!7634 rBis!167)) (toValue!10322 (transformation!7634 r!4142)))) (and b!4180249 b_free!121463 (= (toValue!10322 (transformation!7634 (h!51311 rules!3843))) (toValue!10322 (transformation!7634 r!4142)))) (and b!4180683 b_free!121471 (= (toValue!10322 (transformation!7634 (h!51311 (t!344980 rules!3843)))) (toValue!10322 (transformation!7634 r!4142)))) b_lambda!122811)))

(declare-fun b_lambda!122813 () Bool)

(assert (= b_lambda!122787 (or (and b!4180262 b_free!121455) (and b!4180245 b_free!121459 (= (toValue!10322 (transformation!7634 rBis!167)) (toValue!10322 (transformation!7634 r!4142)))) (and b!4180249 b_free!121463 (= (toValue!10322 (transformation!7634 (h!51311 rules!3843))) (toValue!10322 (transformation!7634 r!4142)))) (and b!4180683 b_free!121471 (= (toValue!10322 (transformation!7634 (h!51311 (t!344980 rules!3843)))) (toValue!10322 (transformation!7634 r!4142)))) b_lambda!122813)))

(check-sat (not b!4180601) (not b!4180681) (not b!4180598) (not b!4180271) (not b!4180640) (not b!4180682) (not b!4180603) (not b_next!122165) (not b!4180547) b_and!326979 (not b!4180308) (not b!4180669) (not b!4180671) (not b!4180590) (not b!4180662) (not b!4180336) (not b!4180332) (not d!1233690) (not b!4180330) (not b_next!122161) (not d!1233702) (not b!4180588) (not d!1233768) (not d!1233756) (not b!4180648) (not d!1233694) (not b!4180338) (not b!4180686) (not b_next!122169) (not b_lambda!122809) b_and!326975 (not b_next!122177) (not b!4180550) b_and!326971 (not b!4180597) (not b!4180688) (not b_lambda!122811) (not b!4180580) (not b!4180331) b_and!326983 (not b!4180276) (not d!1233762) b_and!326973 (not b!4180670) (not b_next!122163) (not b!4180334) (not d!1233672) (not d!1233752) (not b!4180685) (not b!4180307) (not b_lambda!122813) (not b!4180667) (not b!4180639) b_and!326977 (not tb!250183) (not d!1233764) (not b!4180637) (not b!4180660) (not b_next!122175) (not tb!250219) (not b!4180645) (not b_lambda!122807) (not bm!291600) tp_is_empty!22041 (not b!4180579) (not b!4180661) (not b!4180633) (not bm!291601) (not d!1233678) (not b!4180337) (not b!4180632) (not b_next!122159) (not d!1233704) (not b!4180589) (not b!4180596) (not b!4180585) (not b!4180602) (not d!1233746) (not bm!291605) (not b!4180647) (not b!4180268) (not b!4180574) (not b!4180687) (not b!4180335) b_and!326981 (not b!4180309) (not d!1233758) (not b_next!122167) (not d!1233774) (not d!1233676) (not b!4180344) (not b!4180672) (not b!4180595) b_and!326969 (not tb!250213))
(check-sat (not b_next!122161) b_and!326971 b_and!326983 b_and!326977 (not b_next!122175) (not b_next!122159) b_and!326981 (not b_next!122167) b_and!326969 (not b_next!122165) b_and!326979 (not b_next!122169) b_and!326975 (not b_next!122177) b_and!326973 (not b_next!122163))
(get-model)

(declare-fun d!1233776 () Bool)

(assert (=> d!1233776 true))

(declare-fun order!24215 () Int)

(declare-fun lambda!129348 () Int)

(declare-fun dynLambda!19692 (Int Int) Int)

(assert (=> d!1233776 (< (dynLambda!19688 order!24209 (toValue!10322 (transformation!7634 rBis!167))) (dynLambda!19692 order!24215 lambda!129348))))

(declare-fun Forall2!1162 (Int) Bool)

(assert (=> d!1233776 (= (equivClasses!3202 (toChars!10181 (transformation!7634 rBis!167)) (toValue!10322 (transformation!7634 rBis!167))) (Forall2!1162 lambda!129348))))

(declare-fun bs!596278 () Bool)

(assert (= bs!596278 d!1233776))

(declare-fun m!4769787 () Bool)

(assert (=> bs!596278 m!4769787))

(assert (=> b!4180648 d!1233776))

(declare-fun d!1233778 () Bool)

(assert (=> d!1233778 (= (isEmpty!27154 (originalCharacters!8022 lt!1488696)) ((_ is Nil!45889) (originalCharacters!8022 lt!1488696)))))

(assert (=> d!1233762 d!1233778))

(assert (=> d!1233764 d!1233750))

(declare-fun d!1233782 () Bool)

(declare-fun lt!1488779 () Int)

(assert (=> d!1233782 (>= lt!1488779 0)))

(declare-fun e!2595481 () Int)

(assert (=> d!1233782 (= lt!1488779 e!2595481)))

(declare-fun c!713884 () Bool)

(assert (=> d!1233782 (= c!713884 ((_ is Nil!45889) input!3342))))

(assert (=> d!1233782 (= (size!33699 input!3342) lt!1488779)))

(declare-fun b!4180693 () Bool)

(assert (=> b!4180693 (= e!2595481 0)))

(declare-fun b!4180694 () Bool)

(assert (=> b!4180694 (= e!2595481 (+ 1 (size!33699 (t!344978 input!3342))))))

(assert (= (and d!1233782 c!713884) b!4180693))

(assert (= (and d!1233782 (not c!713884)) b!4180694))

(declare-fun m!4769789 () Bool)

(assert (=> b!4180694 m!4769789))

(assert (=> b!4180603 d!1233782))

(assert (=> b!4180603 d!1233770))

(declare-fun d!1233784 () Bool)

(declare-fun nullableFct!1213 (Regex!12539) Bool)

(assert (=> d!1233784 (= (nullable!4395 (regex!7634 r!4142)) (nullableFct!1213 (regex!7634 r!4142)))))

(declare-fun bs!596279 () Bool)

(assert (= bs!596279 d!1233784))

(declare-fun m!4769791 () Bool)

(assert (=> bs!596279 m!4769791))

(assert (=> b!4180598 d!1233784))

(declare-fun d!1233786 () Bool)

(declare-fun list!16578 (Conc!13845) List!46013)

(assert (=> d!1233786 (= (list!16577 (dynLambda!19691 (toChars!10181 (transformation!7634 r!4142)) (dynLambda!19687 (toValue!10322 (transformation!7634 r!4142)) lt!1488695))) (list!16578 (c!713830 (dynLambda!19691 (toChars!10181 (transformation!7634 r!4142)) (dynLambda!19687 (toValue!10322 (transformation!7634 r!4142)) lt!1488695)))))))

(declare-fun bs!596280 () Bool)

(assert (= bs!596280 d!1233786))

(declare-fun m!4769799 () Bool)

(assert (=> bs!596280 m!4769799))

(assert (=> d!1233704 d!1233786))

(declare-fun d!1233790 () Bool)

(assert (=> d!1233790 (= (list!16577 lt!1488695) (list!16578 (c!713830 lt!1488695)))))

(declare-fun bs!596281 () Bool)

(assert (= bs!596281 d!1233790))

(declare-fun m!4769801 () Bool)

(assert (=> bs!596281 m!4769801))

(assert (=> d!1233704 d!1233790))

(declare-fun d!1233792 () Bool)

(declare-fun dynLambda!19693 (Int BalanceConc!27284) Bool)

(assert (=> d!1233792 (dynLambda!19693 lambda!129345 lt!1488695)))

(declare-fun lt!1488784 () Unit!64975)

(declare-fun choose!25587 (Int BalanceConc!27284) Unit!64975)

(assert (=> d!1233792 (= lt!1488784 (choose!25587 lambda!129345 lt!1488695))))

(declare-fun Forall!1563 (Int) Bool)

(assert (=> d!1233792 (Forall!1563 lambda!129345)))

(assert (=> d!1233792 (= (ForallOf!1038 lambda!129345 lt!1488695) lt!1488784)))

(declare-fun b_lambda!122815 () Bool)

(assert (=> (not b_lambda!122815) (not d!1233792)))

(declare-fun bs!596282 () Bool)

(assert (= bs!596282 d!1233792))

(declare-fun m!4769805 () Bool)

(assert (=> bs!596282 m!4769805))

(declare-fun m!4769809 () Bool)

(assert (=> bs!596282 m!4769809))

(declare-fun m!4769811 () Bool)

(assert (=> bs!596282 m!4769811))

(assert (=> d!1233704 d!1233792))

(declare-fun b!4180720 () Bool)

(declare-fun e!2595498 () Bool)

(declare-fun inv!16 (TokenValue!7864) Bool)

(assert (=> b!4180720 (= e!2595498 (inv!16 (dynLambda!19687 (toValue!10322 (transformation!7634 r!4142)) lt!1488695)))))

(declare-fun b!4180722 () Bool)

(declare-fun e!2595500 () Bool)

(declare-fun inv!15 (TokenValue!7864) Bool)

(assert (=> b!4180722 (= e!2595500 (inv!15 (dynLambda!19687 (toValue!10322 (transformation!7634 r!4142)) lt!1488695)))))

(declare-fun b!4180723 () Bool)

(declare-fun e!2595499 () Bool)

(assert (=> b!4180723 (= e!2595498 e!2595499)))

(declare-fun c!713894 () Bool)

(assert (=> b!4180723 (= c!713894 ((_ is IntegerValue!23593) (dynLambda!19687 (toValue!10322 (transformation!7634 r!4142)) lt!1488695)))))

(declare-fun b!4180724 () Bool)

(declare-fun inv!17 (TokenValue!7864) Bool)

(assert (=> b!4180724 (= e!2595499 (inv!17 (dynLambda!19687 (toValue!10322 (transformation!7634 r!4142)) lt!1488695)))))

(declare-fun b!4180721 () Bool)

(declare-fun res!1714344 () Bool)

(assert (=> b!4180721 (=> res!1714344 e!2595500)))

(assert (=> b!4180721 (= res!1714344 (not ((_ is IntegerValue!23594) (dynLambda!19687 (toValue!10322 (transformation!7634 r!4142)) lt!1488695))))))

(assert (=> b!4180721 (= e!2595499 e!2595500)))

(declare-fun d!1233800 () Bool)

(declare-fun c!713895 () Bool)

(assert (=> d!1233800 (= c!713895 ((_ is IntegerValue!23592) (dynLambda!19687 (toValue!10322 (transformation!7634 r!4142)) lt!1488695)))))

(assert (=> d!1233800 (= (inv!21 (dynLambda!19687 (toValue!10322 (transformation!7634 r!4142)) lt!1488695)) e!2595498)))

(assert (= (and d!1233800 c!713895) b!4180720))

(assert (= (and d!1233800 (not c!713895)) b!4180723))

(assert (= (and b!4180723 c!713894) b!4180724))

(assert (= (and b!4180723 (not c!713894)) b!4180721))

(assert (= (and b!4180721 (not res!1714344)) b!4180722))

(declare-fun m!4769821 () Bool)

(assert (=> b!4180720 m!4769821))

(declare-fun m!4769823 () Bool)

(assert (=> b!4180722 m!4769823))

(declare-fun m!4769825 () Bool)

(assert (=> b!4180724 m!4769825))

(assert (=> tb!250183 d!1233800))

(declare-fun d!1233808 () Bool)

(assert (=> d!1233808 (= (head!8872 input!3342) (h!51309 input!3342))))

(assert (=> b!4180307 d!1233808))

(declare-fun d!1233810 () Bool)

(declare-fun lt!1488786 () Int)

(assert (=> d!1233810 (>= lt!1488786 0)))

(declare-fun e!2595501 () Int)

(assert (=> d!1233810 (= lt!1488786 e!2595501)))

(declare-fun c!713896 () Bool)

(assert (=> d!1233810 (= c!713896 ((_ is Nil!45889) (_2!24985 (get!14914 lt!1488732))))))

(assert (=> d!1233810 (= (size!33699 (_2!24985 (get!14914 lt!1488732))) lt!1488786)))

(declare-fun b!4180725 () Bool)

(assert (=> b!4180725 (= e!2595501 0)))

(declare-fun b!4180726 () Bool)

(assert (=> b!4180726 (= e!2595501 (+ 1 (size!33699 (t!344978 (_2!24985 (get!14914 lt!1488732))))))))

(assert (= (and d!1233810 c!713896) b!4180725))

(assert (= (and d!1233810 (not c!713896)) b!4180726))

(declare-fun m!4769827 () Bool)

(assert (=> b!4180726 m!4769827))

(assert (=> b!4180330 d!1233810))

(declare-fun d!1233812 () Bool)

(assert (=> d!1233812 (= (get!14914 lt!1488732) (v!40635 lt!1488732))))

(assert (=> b!4180330 d!1233812))

(assert (=> b!4180330 d!1233782))

(declare-fun d!1233814 () Bool)

(declare-fun c!713899 () Bool)

(assert (=> d!1233814 (= c!713899 ((_ is Node!13845) (c!713830 (dynLambda!19691 (toChars!10181 (transformation!7634 r!4142)) (dynLambda!19687 (toValue!10322 (transformation!7634 r!4142)) lt!1488695)))))))

(declare-fun e!2595508 () Bool)

(assert (=> d!1233814 (= (inv!60425 (c!713830 (dynLambda!19691 (toChars!10181 (transformation!7634 r!4142)) (dynLambda!19687 (toValue!10322 (transformation!7634 r!4142)) lt!1488695)))) e!2595508)))

(declare-fun b!4180735 () Bool)

(declare-fun inv!60427 (Conc!13845) Bool)

(assert (=> b!4180735 (= e!2595508 (inv!60427 (c!713830 (dynLambda!19691 (toChars!10181 (transformation!7634 r!4142)) (dynLambda!19687 (toValue!10322 (transformation!7634 r!4142)) lt!1488695)))))))

(declare-fun b!4180736 () Bool)

(declare-fun e!2595509 () Bool)

(assert (=> b!4180736 (= e!2595508 e!2595509)))

(declare-fun res!1714349 () Bool)

(assert (=> b!4180736 (= res!1714349 (not ((_ is Leaf!21405) (c!713830 (dynLambda!19691 (toChars!10181 (transformation!7634 r!4142)) (dynLambda!19687 (toValue!10322 (transformation!7634 r!4142)) lt!1488695))))))))

(assert (=> b!4180736 (=> res!1714349 e!2595509)))

(declare-fun b!4180737 () Bool)

(declare-fun inv!60428 (Conc!13845) Bool)

(assert (=> b!4180737 (= e!2595509 (inv!60428 (c!713830 (dynLambda!19691 (toChars!10181 (transformation!7634 r!4142)) (dynLambda!19687 (toValue!10322 (transformation!7634 r!4142)) lt!1488695)))))))

(assert (= (and d!1233814 c!713899) b!4180735))

(assert (= (and d!1233814 (not c!713899)) b!4180736))

(assert (= (and b!4180736 (not res!1714349)) b!4180737))

(declare-fun m!4769829 () Bool)

(assert (=> b!4180735 m!4769829))

(declare-fun m!4769831 () Bool)

(assert (=> b!4180737 m!4769831))

(assert (=> b!4180547 d!1233814))

(declare-fun b!4180738 () Bool)

(declare-fun e!2595516 () Bool)

(declare-fun call!291616 () Bool)

(assert (=> b!4180738 (= e!2595516 call!291616)))

(declare-fun c!713900 () Bool)

(declare-fun bm!291609 () Bool)

(declare-fun c!713901 () Bool)

(declare-fun call!291614 () Bool)

(assert (=> bm!291609 (= call!291614 (validRegex!5656 (ite c!713901 (reg!12868 (ite c!713872 (regOne!25591 (regex!7634 r!4142)) (regOne!25590 (regex!7634 r!4142)))) (ite c!713900 (regTwo!25591 (ite c!713872 (regOne!25591 (regex!7634 r!4142)) (regOne!25590 (regex!7634 r!4142)))) (regTwo!25590 (ite c!713872 (regOne!25591 (regex!7634 r!4142)) (regOne!25590 (regex!7634 r!4142))))))))))

(declare-fun bm!291610 () Bool)

(declare-fun call!291615 () Bool)

(assert (=> bm!291610 (= call!291615 (validRegex!5656 (ite c!713900 (regOne!25591 (ite c!713872 (regOne!25591 (regex!7634 r!4142)) (regOne!25590 (regex!7634 r!4142)))) (regOne!25590 (ite c!713872 (regOne!25591 (regex!7634 r!4142)) (regOne!25590 (regex!7634 r!4142)))))))))

(declare-fun b!4180739 () Bool)

(declare-fun res!1714351 () Bool)

(declare-fun e!2595513 () Bool)

(assert (=> b!4180739 (=> res!1714351 e!2595513)))

(assert (=> b!4180739 (= res!1714351 (not ((_ is Concat!20404) (ite c!713872 (regOne!25591 (regex!7634 r!4142)) (regOne!25590 (regex!7634 r!4142))))))))

(declare-fun e!2595510 () Bool)

(assert (=> b!4180739 (= e!2595510 e!2595513)))

(declare-fun b!4180740 () Bool)

(declare-fun e!2595512 () Bool)

(declare-fun e!2595514 () Bool)

(assert (=> b!4180740 (= e!2595512 e!2595514)))

(assert (=> b!4180740 (= c!713901 ((_ is Star!12539) (ite c!713872 (regOne!25591 (regex!7634 r!4142)) (regOne!25590 (regex!7634 r!4142)))))))

(declare-fun b!4180741 () Bool)

(declare-fun res!1714350 () Bool)

(declare-fun e!2595515 () Bool)

(assert (=> b!4180741 (=> (not res!1714350) (not e!2595515))))

(assert (=> b!4180741 (= res!1714350 call!291615)))

(assert (=> b!4180741 (= e!2595510 e!2595515)))

(declare-fun b!4180742 () Bool)

(assert (=> b!4180742 (= e!2595513 e!2595516)))

(declare-fun res!1714354 () Bool)

(assert (=> b!4180742 (=> (not res!1714354) (not e!2595516))))

(assert (=> b!4180742 (= res!1714354 call!291615)))

(declare-fun b!4180743 () Bool)

(declare-fun e!2595511 () Bool)

(assert (=> b!4180743 (= e!2595514 e!2595511)))

(declare-fun res!1714353 () Bool)

(assert (=> b!4180743 (= res!1714353 (not (nullable!4395 (reg!12868 (ite c!713872 (regOne!25591 (regex!7634 r!4142)) (regOne!25590 (regex!7634 r!4142)))))))))

(assert (=> b!4180743 (=> (not res!1714353) (not e!2595511))))

(declare-fun d!1233816 () Bool)

(declare-fun res!1714352 () Bool)

(assert (=> d!1233816 (=> res!1714352 e!2595512)))

(assert (=> d!1233816 (= res!1714352 ((_ is ElementMatch!12539) (ite c!713872 (regOne!25591 (regex!7634 r!4142)) (regOne!25590 (regex!7634 r!4142)))))))

(assert (=> d!1233816 (= (validRegex!5656 (ite c!713872 (regOne!25591 (regex!7634 r!4142)) (regOne!25590 (regex!7634 r!4142)))) e!2595512)))

(declare-fun b!4180744 () Bool)

(assert (=> b!4180744 (= e!2595515 call!291616)))

(declare-fun b!4180745 () Bool)

(assert (=> b!4180745 (= e!2595514 e!2595510)))

(assert (=> b!4180745 (= c!713900 ((_ is Union!12539) (ite c!713872 (regOne!25591 (regex!7634 r!4142)) (regOne!25590 (regex!7634 r!4142)))))))

(declare-fun bm!291611 () Bool)

(assert (=> bm!291611 (= call!291616 call!291614)))

(declare-fun b!4180746 () Bool)

(assert (=> b!4180746 (= e!2595511 call!291614)))

(assert (= (and d!1233816 (not res!1714352)) b!4180740))

(assert (= (and b!4180740 c!713901) b!4180743))

(assert (= (and b!4180740 (not c!713901)) b!4180745))

(assert (= (and b!4180743 res!1714353) b!4180746))

(assert (= (and b!4180745 c!713900) b!4180741))

(assert (= (and b!4180745 (not c!713900)) b!4180739))

(assert (= (and b!4180741 res!1714350) b!4180744))

(assert (= (and b!4180739 (not res!1714351)) b!4180742))

(assert (= (and b!4180742 res!1714354) b!4180738))

(assert (= (or b!4180744 b!4180738) bm!291611))

(assert (= (or b!4180741 b!4180742) bm!291610))

(assert (= (or b!4180746 bm!291611) bm!291609))

(declare-fun m!4769833 () Bool)

(assert (=> bm!291609 m!4769833))

(declare-fun m!4769835 () Bool)

(assert (=> bm!291610 m!4769835))

(declare-fun m!4769837 () Bool)

(assert (=> b!4180743 m!4769837))

(assert (=> bm!291601 d!1233816))

(declare-fun d!1233818 () Bool)

(assert (=> d!1233818 (= (list!16577 (dynLambda!19691 (toChars!10181 (transformation!7634 (rule!10694 lt!1488696))) (value!238101 lt!1488696))) (list!16578 (c!713830 (dynLambda!19691 (toChars!10181 (transformation!7634 (rule!10694 lt!1488696))) (value!238101 lt!1488696)))))))

(declare-fun bs!596283 () Bool)

(assert (= bs!596283 d!1233818))

(declare-fun m!4769839 () Bool)

(assert (=> bs!596283 m!4769839))

(assert (=> b!4180595 d!1233818))

(declare-fun d!1233820 () Bool)

(declare-fun isBalanced!3733 (Conc!13845) Bool)

(assert (=> d!1233820 (= (inv!60426 (dynLambda!19691 (toChars!10181 (transformation!7634 r!4142)) (dynLambda!19687 (toValue!10322 (transformation!7634 r!4142)) lt!1488695))) (isBalanced!3733 (c!713830 (dynLambda!19691 (toChars!10181 (transformation!7634 r!4142)) (dynLambda!19687 (toValue!10322 (transformation!7634 r!4142)) lt!1488695)))))))

(declare-fun bs!596285 () Bool)

(assert (= bs!596285 d!1233820))

(declare-fun m!4769843 () Bool)

(assert (=> bs!596285 m!4769843))

(assert (=> tb!250213 d!1233820))

(declare-fun d!1233824 () Bool)

(assert (=> d!1233824 (= (isEmpty!27154 (tail!6719 p!2959)) ((_ is Nil!45889) (tail!6719 p!2959)))))

(assert (=> b!4180645 d!1233824))

(declare-fun d!1233826 () Bool)

(assert (=> d!1233826 (= (tail!6719 p!2959) (t!344978 p!2959))))

(assert (=> b!4180645 d!1233826))

(declare-fun d!1233828 () Bool)

(assert (=> d!1233828 (= (head!8872 pBis!107) (h!51309 pBis!107))))

(assert (=> b!4180601 d!1233828))

(assert (=> b!4180601 d!1233808))

(declare-fun bs!596288 () Bool)

(declare-fun d!1233830 () Bool)

(assert (= bs!596288 (and d!1233830 d!1233704)))

(declare-fun lambda!129355 () Int)

(assert (=> bs!596288 (= (and (= (toChars!10181 (transformation!7634 (h!51311 rules!3843))) (toChars!10181 (transformation!7634 r!4142))) (= (toValue!10322 (transformation!7634 (h!51311 rules!3843))) (toValue!10322 (transformation!7634 r!4142)))) (= lambda!129355 lambda!129345))))

(assert (=> d!1233830 true))

(assert (=> d!1233830 (< (dynLambda!19690 order!24213 (toChars!10181 (transformation!7634 (h!51311 rules!3843)))) (dynLambda!19689 order!24211 lambda!129355))))

(assert (=> d!1233830 true))

(assert (=> d!1233830 (< (dynLambda!19688 order!24209 (toValue!10322 (transformation!7634 (h!51311 rules!3843)))) (dynLambda!19689 order!24211 lambda!129355))))

(assert (=> d!1233830 (= (semiInverseModEq!3303 (toChars!10181 (transformation!7634 (h!51311 rules!3843))) (toValue!10322 (transformation!7634 (h!51311 rules!3843)))) (Forall!1563 lambda!129355))))

(declare-fun bs!596289 () Bool)

(assert (= bs!596289 d!1233830))

(declare-fun m!4769847 () Bool)

(assert (=> bs!596289 m!4769847))

(assert (=> d!1233676 d!1233830))

(declare-fun d!1233834 () Bool)

(assert (=> d!1233834 (= (head!8872 p!2959) (h!51309 p!2959))))

(assert (=> b!4180588 d!1233834))

(assert (=> b!4180588 d!1233808))

(declare-fun b!4180753 () Bool)

(declare-fun e!2595522 () Bool)

(assert (=> b!4180753 (= e!2595522 (nullable!4395 (regex!7634 r!4142)))))

(declare-fun b!4180754 () Bool)

(declare-fun res!1714361 () Bool)

(declare-fun e!2595519 () Bool)

(assert (=> b!4180754 (=> (not res!1714361) (not e!2595519))))

(assert (=> b!4180754 (= res!1714361 (isEmpty!27154 (tail!6719 (_1!24987 (findLongestMatchInner!1585 (regex!7634 r!4142) Nil!45889 (size!33699 Nil!45889) input!3342 input!3342 (size!33699 input!3342))))))))

(declare-fun b!4180755 () Bool)

(declare-fun res!1714355 () Bool)

(assert (=> b!4180755 (=> (not res!1714355) (not e!2595519))))

(declare-fun call!291617 () Bool)

(assert (=> b!4180755 (= res!1714355 (not call!291617))))

(declare-fun b!4180756 () Bool)

(declare-fun e!2595518 () Bool)

(declare-fun e!2595520 () Bool)

(assert (=> b!4180756 (= e!2595518 e!2595520)))

(declare-fun res!1714358 () Bool)

(assert (=> b!4180756 (=> res!1714358 e!2595520)))

(assert (=> b!4180756 (= res!1714358 call!291617)))

(declare-fun b!4180757 () Bool)

(declare-fun res!1714360 () Bool)

(declare-fun e!2595521 () Bool)

(assert (=> b!4180757 (=> res!1714360 e!2595521)))

(assert (=> b!4180757 (= res!1714360 (not ((_ is ElementMatch!12539) (regex!7634 r!4142))))))

(declare-fun e!2595517 () Bool)

(assert (=> b!4180757 (= e!2595517 e!2595521)))

(declare-fun b!4180758 () Bool)

(assert (=> b!4180758 (= e!2595520 (not (= (head!8872 (_1!24987 (findLongestMatchInner!1585 (regex!7634 r!4142) Nil!45889 (size!33699 Nil!45889) input!3342 input!3342 (size!33699 input!3342)))) (c!713831 (regex!7634 r!4142)))))))

(declare-fun bm!291612 () Bool)

(assert (=> bm!291612 (= call!291617 (isEmpty!27154 (_1!24987 (findLongestMatchInner!1585 (regex!7634 r!4142) Nil!45889 (size!33699 Nil!45889) input!3342 input!3342 (size!33699 input!3342)))))))

(declare-fun b!4180759 () Bool)

(declare-fun lt!1488787 () Bool)

(assert (=> b!4180759 (= e!2595517 (not lt!1488787))))

(declare-fun b!4180760 () Bool)

(assert (=> b!4180760 (= e!2595522 (matchR!6278 (derivativeStep!3785 (regex!7634 r!4142) (head!8872 (_1!24987 (findLongestMatchInner!1585 (regex!7634 r!4142) Nil!45889 (size!33699 Nil!45889) input!3342 input!3342 (size!33699 input!3342))))) (tail!6719 (_1!24987 (findLongestMatchInner!1585 (regex!7634 r!4142) Nil!45889 (size!33699 Nil!45889) input!3342 input!3342 (size!33699 input!3342))))))))

(declare-fun b!4180761 () Bool)

(assert (=> b!4180761 (= e!2595519 (= (head!8872 (_1!24987 (findLongestMatchInner!1585 (regex!7634 r!4142) Nil!45889 (size!33699 Nil!45889) input!3342 input!3342 (size!33699 input!3342)))) (c!713831 (regex!7634 r!4142))))))

(declare-fun b!4180762 () Bool)

(declare-fun e!2595523 () Bool)

(assert (=> b!4180762 (= e!2595523 e!2595517)))

(declare-fun c!713904 () Bool)

(assert (=> b!4180762 (= c!713904 ((_ is EmptyLang!12539) (regex!7634 r!4142)))))

(declare-fun b!4180763 () Bool)

(assert (=> b!4180763 (= e!2595521 e!2595518)))

(declare-fun res!1714357 () Bool)

(assert (=> b!4180763 (=> (not res!1714357) (not e!2595518))))

(assert (=> b!4180763 (= res!1714357 (not lt!1488787))))

(declare-fun b!4180764 () Bool)

(declare-fun res!1714356 () Bool)

(assert (=> b!4180764 (=> res!1714356 e!2595521)))

(assert (=> b!4180764 (= res!1714356 e!2595519)))

(declare-fun res!1714359 () Bool)

(assert (=> b!4180764 (=> (not res!1714359) (not e!2595519))))

(assert (=> b!4180764 (= res!1714359 lt!1488787)))

(declare-fun b!4180765 () Bool)

(assert (=> b!4180765 (= e!2595523 (= lt!1488787 call!291617))))

(declare-fun b!4180766 () Bool)

(declare-fun res!1714362 () Bool)

(assert (=> b!4180766 (=> res!1714362 e!2595520)))

(assert (=> b!4180766 (= res!1714362 (not (isEmpty!27154 (tail!6719 (_1!24987 (findLongestMatchInner!1585 (regex!7634 r!4142) Nil!45889 (size!33699 Nil!45889) input!3342 input!3342 (size!33699 input!3342)))))))))

(declare-fun d!1233836 () Bool)

(assert (=> d!1233836 e!2595523))

(declare-fun c!713902 () Bool)

(assert (=> d!1233836 (= c!713902 ((_ is EmptyExpr!12539) (regex!7634 r!4142)))))

(assert (=> d!1233836 (= lt!1488787 e!2595522)))

(declare-fun c!713903 () Bool)

(assert (=> d!1233836 (= c!713903 (isEmpty!27154 (_1!24987 (findLongestMatchInner!1585 (regex!7634 r!4142) Nil!45889 (size!33699 Nil!45889) input!3342 input!3342 (size!33699 input!3342)))))))

(assert (=> d!1233836 (validRegex!5656 (regex!7634 r!4142))))

(assert (=> d!1233836 (= (matchR!6278 (regex!7634 r!4142) (_1!24987 (findLongestMatchInner!1585 (regex!7634 r!4142) Nil!45889 (size!33699 Nil!45889) input!3342 input!3342 (size!33699 input!3342)))) lt!1488787)))

(assert (= (and d!1233836 c!713903) b!4180753))

(assert (= (and d!1233836 (not c!713903)) b!4180760))

(assert (= (and d!1233836 c!713902) b!4180765))

(assert (= (and d!1233836 (not c!713902)) b!4180762))

(assert (= (and b!4180762 c!713904) b!4180759))

(assert (= (and b!4180762 (not c!713904)) b!4180757))

(assert (= (and b!4180757 (not res!1714360)) b!4180764))

(assert (= (and b!4180764 res!1714359) b!4180755))

(assert (= (and b!4180755 res!1714355) b!4180754))

(assert (= (and b!4180754 res!1714361) b!4180761))

(assert (= (and b!4180764 (not res!1714356)) b!4180763))

(assert (= (and b!4180763 res!1714357) b!4180756))

(assert (= (and b!4180756 (not res!1714358)) b!4180766))

(assert (= (and b!4180766 (not res!1714362)) b!4180758))

(assert (= (or b!4180765 b!4180755 b!4180756) bm!291612))

(declare-fun m!4769849 () Bool)

(assert (=> b!4180766 m!4769849))

(assert (=> b!4180766 m!4769849))

(declare-fun m!4769851 () Bool)

(assert (=> b!4180766 m!4769851))

(assert (=> bm!291612 m!4769571))

(declare-fun m!4769853 () Bool)

(assert (=> b!4180761 m!4769853))

(assert (=> b!4180758 m!4769853))

(assert (=> d!1233836 m!4769571))

(assert (=> d!1233836 m!4769443))

(assert (=> b!4180754 m!4769849))

(assert (=> b!4180754 m!4769849))

(assert (=> b!4180754 m!4769851))

(assert (=> b!4180760 m!4769853))

(assert (=> b!4180760 m!4769853))

(declare-fun m!4769855 () Bool)

(assert (=> b!4180760 m!4769855))

(assert (=> b!4180760 m!4769849))

(assert (=> b!4180760 m!4769855))

(assert (=> b!4180760 m!4769849))

(declare-fun m!4769857 () Bool)

(assert (=> b!4180760 m!4769857))

(assert (=> b!4180753 m!4769761))

(assert (=> b!4180338 d!1233836))

(declare-fun b!4180866 () Bool)

(declare-fun e!2595590 () Bool)

(declare-fun e!2595585 () Bool)

(assert (=> b!4180866 (= e!2595590 e!2595585)))

(declare-fun res!1714391 () Bool)

(assert (=> b!4180866 (=> res!1714391 e!2595585)))

(declare-fun lt!1488886 () tuple2!43706)

(assert (=> b!4180866 (= res!1714391 (isEmpty!27154 (_1!24987 lt!1488886)))))

(declare-fun b!4180867 () Bool)

(declare-fun e!2595584 () Unit!64975)

(declare-fun Unit!64977 () Unit!64975)

(assert (=> b!4180867 (= e!2595584 Unit!64977)))

(declare-fun b!4180868 () Bool)

(declare-fun c!713942 () Bool)

(declare-fun call!291636 () Bool)

(assert (=> b!4180868 (= c!713942 call!291636)))

(declare-fun lt!1488887 () Unit!64975)

(declare-fun lt!1488908 () Unit!64975)

(assert (=> b!4180868 (= lt!1488887 lt!1488908)))

(assert (=> b!4180868 (= input!3342 Nil!45889)))

(declare-fun call!291639 () Unit!64975)

(assert (=> b!4180868 (= lt!1488908 call!291639)))

(declare-fun lt!1488898 () Unit!64975)

(declare-fun lt!1488899 () Unit!64975)

(assert (=> b!4180868 (= lt!1488898 lt!1488899)))

(declare-fun call!291634 () Bool)

(assert (=> b!4180868 call!291634))

(declare-fun call!291640 () Unit!64975)

(assert (=> b!4180868 (= lt!1488899 call!291640)))

(declare-fun e!2595587 () tuple2!43706)

(declare-fun e!2595591 () tuple2!43706)

(assert (=> b!4180868 (= e!2595587 e!2595591)))

(declare-fun b!4180869 () Bool)

(assert (=> b!4180869 (= e!2595591 (tuple2!43707 Nil!45889 input!3342))))

(declare-fun d!1233838 () Bool)

(assert (=> d!1233838 e!2595590))

(declare-fun res!1714390 () Bool)

(assert (=> d!1233838 (=> (not res!1714390) (not e!2595590))))

(assert (=> d!1233838 (= res!1714390 (= (++!11710 (_1!24987 lt!1488886) (_2!24987 lt!1488886)) input!3342))))

(declare-fun e!2595586 () tuple2!43706)

(assert (=> d!1233838 (= lt!1488886 e!2595586)))

(declare-fun c!713940 () Bool)

(declare-fun lostCause!1044 (Regex!12539) Bool)

(assert (=> d!1233838 (= c!713940 (lostCause!1044 (regex!7634 r!4142)))))

(declare-fun lt!1488893 () Unit!64975)

(declare-fun Unit!64978 () Unit!64975)

(assert (=> d!1233838 (= lt!1488893 Unit!64978)))

(assert (=> d!1233838 (= (getSuffix!2784 input!3342 Nil!45889) input!3342)))

(declare-fun lt!1488888 () Unit!64975)

(declare-fun lt!1488892 () Unit!64975)

(assert (=> d!1233838 (= lt!1488888 lt!1488892)))

(declare-fun lt!1488909 () List!46013)

(assert (=> d!1233838 (= input!3342 lt!1488909)))

(declare-fun lemmaSamePrefixThenSameSuffix!2261 (List!46013 List!46013 List!46013 List!46013 List!46013) Unit!64975)

(assert (=> d!1233838 (= lt!1488892 (lemmaSamePrefixThenSameSuffix!2261 Nil!45889 input!3342 Nil!45889 lt!1488909 input!3342))))

(assert (=> d!1233838 (= lt!1488909 (getSuffix!2784 input!3342 Nil!45889))))

(declare-fun lt!1488885 () Unit!64975)

(declare-fun lt!1488904 () Unit!64975)

(assert (=> d!1233838 (= lt!1488885 lt!1488904)))

(assert (=> d!1233838 (isPrefix!4491 Nil!45889 (++!11710 Nil!45889 input!3342))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2995 (List!46013 List!46013) Unit!64975)

(assert (=> d!1233838 (= lt!1488904 (lemmaConcatTwoListThenFirstIsPrefix!2995 Nil!45889 input!3342))))

(assert (=> d!1233838 (validRegex!5656 (regex!7634 r!4142))))

(assert (=> d!1233838 (= (findLongestMatchInner!1585 (regex!7634 r!4142) Nil!45889 (size!33699 Nil!45889) input!3342 input!3342 (size!33699 input!3342)) lt!1488886)))

(declare-fun b!4180870 () Bool)

(assert (=> b!4180870 (= e!2595586 (tuple2!43707 Nil!45889 input!3342))))

(declare-fun bm!291629 () Bool)

(declare-fun call!291641 () Regex!12539)

(declare-fun call!291638 () C!25268)

(assert (=> bm!291629 (= call!291641 (derivativeStep!3785 (regex!7634 r!4142) call!291638))))

(declare-fun b!4180871 () Bool)

(assert (=> b!4180871 (= e!2595585 (>= (size!33699 (_1!24987 lt!1488886)) (size!33699 Nil!45889)))))

(declare-fun bm!291630 () Bool)

(assert (=> bm!291630 (= call!291634 (isPrefix!4491 input!3342 input!3342))))

(declare-fun b!4180872 () Bool)

(declare-fun e!2595588 () tuple2!43706)

(assert (=> b!4180872 (= e!2595588 (tuple2!43707 Nil!45889 input!3342))))

(declare-fun b!4180873 () Bool)

(declare-fun lt!1488900 () tuple2!43706)

(assert (=> b!4180873 (= e!2595588 lt!1488900)))

(declare-fun call!291635 () tuple2!43706)

(declare-fun lt!1488895 () List!46013)

(declare-fun call!291637 () List!46013)

(declare-fun bm!291631 () Bool)

(assert (=> bm!291631 (= call!291635 (findLongestMatchInner!1585 call!291641 lt!1488895 (+ (size!33699 Nil!45889) 1) call!291637 input!3342 (size!33699 input!3342)))))

(declare-fun b!4180874 () Bool)

(declare-fun e!2595589 () tuple2!43706)

(assert (=> b!4180874 (= e!2595589 e!2595588)))

(assert (=> b!4180874 (= lt!1488900 call!291635)))

(declare-fun c!713939 () Bool)

(assert (=> b!4180874 (= c!713939 (isEmpty!27154 (_1!24987 lt!1488900)))))

(declare-fun bm!291632 () Bool)

(assert (=> bm!291632 (= call!291638 (head!8872 input!3342))))

(declare-fun bm!291633 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!996 (List!46013 List!46013 List!46013) Unit!64975)

(assert (=> bm!291633 (= call!291639 (lemmaIsPrefixSameLengthThenSameList!996 input!3342 Nil!45889 input!3342))))

(declare-fun bm!291634 () Bool)

(assert (=> bm!291634 (= call!291636 (nullable!4395 (regex!7634 r!4142)))))

(declare-fun b!4180875 () Bool)

(declare-fun c!713943 () Bool)

(assert (=> b!4180875 (= c!713943 call!291636)))

(declare-fun lt!1488906 () Unit!64975)

(declare-fun lt!1488911 () Unit!64975)

(assert (=> b!4180875 (= lt!1488906 lt!1488911)))

(declare-fun lt!1488889 () C!25268)

(declare-fun lt!1488894 () List!46013)

(assert (=> b!4180875 (= (++!11710 (++!11710 Nil!45889 (Cons!45889 lt!1488889 Nil!45889)) lt!1488894) input!3342)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1288 (List!46013 C!25268 List!46013 List!46013) Unit!64975)

(assert (=> b!4180875 (= lt!1488911 (lemmaMoveElementToOtherListKeepsConcatEq!1288 Nil!45889 lt!1488889 lt!1488894 input!3342))))

(assert (=> b!4180875 (= lt!1488894 (tail!6719 input!3342))))

(assert (=> b!4180875 (= lt!1488889 (head!8872 input!3342))))

(declare-fun lt!1488902 () Unit!64975)

(declare-fun lt!1488891 () Unit!64975)

(assert (=> b!4180875 (= lt!1488902 lt!1488891)))

(assert (=> b!4180875 (isPrefix!4491 (++!11710 Nil!45889 (Cons!45889 (head!8872 (getSuffix!2784 input!3342 Nil!45889)) Nil!45889)) input!3342)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!670 (List!46013 List!46013) Unit!64975)

(assert (=> b!4180875 (= lt!1488891 (lemmaAddHeadSuffixToPrefixStillPrefix!670 Nil!45889 input!3342))))

(declare-fun lt!1488901 () Unit!64975)

(declare-fun lt!1488905 () Unit!64975)

(assert (=> b!4180875 (= lt!1488901 lt!1488905)))

(assert (=> b!4180875 (= lt!1488905 (lemmaAddHeadSuffixToPrefixStillPrefix!670 Nil!45889 input!3342))))

(assert (=> b!4180875 (= lt!1488895 (++!11710 Nil!45889 (Cons!45889 (head!8872 input!3342) Nil!45889)))))

(declare-fun lt!1488890 () Unit!64975)

(assert (=> b!4180875 (= lt!1488890 e!2595584)))

(declare-fun c!713944 () Bool)

(assert (=> b!4180875 (= c!713944 (= (size!33699 Nil!45889) (size!33699 input!3342)))))

(declare-fun lt!1488903 () Unit!64975)

(declare-fun lt!1488907 () Unit!64975)

(assert (=> b!4180875 (= lt!1488903 lt!1488907)))

(assert (=> b!4180875 (<= (size!33699 Nil!45889) (size!33699 input!3342))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!520 (List!46013 List!46013) Unit!64975)

(assert (=> b!4180875 (= lt!1488907 (lemmaIsPrefixThenSmallerEqSize!520 Nil!45889 input!3342))))

(assert (=> b!4180875 (= e!2595587 e!2595589)))

(declare-fun bm!291635 () Bool)

(assert (=> bm!291635 (= call!291637 (tail!6719 input!3342))))

(declare-fun bm!291636 () Bool)

(assert (=> bm!291636 (= call!291640 (lemmaIsPrefixRefl!2920 input!3342 input!3342))))

(declare-fun b!4180876 () Bool)

(assert (=> b!4180876 (= e!2595586 e!2595587)))

(declare-fun c!713941 () Bool)

(assert (=> b!4180876 (= c!713941 (= (size!33699 Nil!45889) (size!33699 input!3342)))))

(declare-fun b!4180877 () Bool)

(declare-fun Unit!64979 () Unit!64975)

(assert (=> b!4180877 (= e!2595584 Unit!64979)))

(declare-fun lt!1488912 () Unit!64975)

(assert (=> b!4180877 (= lt!1488912 call!291640)))

(assert (=> b!4180877 call!291634))

(declare-fun lt!1488896 () Unit!64975)

(assert (=> b!4180877 (= lt!1488896 lt!1488912)))

(declare-fun lt!1488897 () Unit!64975)

(assert (=> b!4180877 (= lt!1488897 call!291639)))

(assert (=> b!4180877 (= input!3342 Nil!45889)))

(declare-fun lt!1488910 () Unit!64975)

(assert (=> b!4180877 (= lt!1488910 lt!1488897)))

(assert (=> b!4180877 false))

(declare-fun b!4180878 () Bool)

(assert (=> b!4180878 (= e!2595591 (tuple2!43707 Nil!45889 Nil!45889))))

(declare-fun b!4180879 () Bool)

(assert (=> b!4180879 (= e!2595589 call!291635)))

(assert (= (and d!1233838 c!713940) b!4180870))

(assert (= (and d!1233838 (not c!713940)) b!4180876))

(assert (= (and b!4180876 c!713941) b!4180868))

(assert (= (and b!4180876 (not c!713941)) b!4180875))

(assert (= (and b!4180868 c!713942) b!4180878))

(assert (= (and b!4180868 (not c!713942)) b!4180869))

(assert (= (and b!4180875 c!713944) b!4180877))

(assert (= (and b!4180875 (not c!713944)) b!4180867))

(assert (= (and b!4180875 c!713943) b!4180874))

(assert (= (and b!4180875 (not c!713943)) b!4180879))

(assert (= (and b!4180874 c!713939) b!4180872))

(assert (= (and b!4180874 (not c!713939)) b!4180873))

(assert (= (or b!4180874 b!4180879) bm!291635))

(assert (= (or b!4180874 b!4180879) bm!291632))

(assert (= (or b!4180874 b!4180879) bm!291629))

(assert (= (or b!4180874 b!4180879) bm!291631))

(assert (= (or b!4180868 b!4180877) bm!291636))

(assert (= (or b!4180868 b!4180875) bm!291634))

(assert (= (or b!4180868 b!4180877) bm!291633))

(assert (= (or b!4180868 b!4180877) bm!291630))

(assert (= (and d!1233838 res!1714390) b!4180866))

(assert (= (and b!4180866 (not res!1714391)) b!4180871))

(assert (=> bm!291631 m!4769495))

(declare-fun m!4769973 () Bool)

(assert (=> bm!291631 m!4769973))

(declare-fun m!4769975 () Bool)

(assert (=> b!4180874 m!4769975))

(declare-fun m!4769977 () Bool)

(assert (=> d!1233838 m!4769977))

(declare-fun m!4769979 () Bool)

(assert (=> d!1233838 m!4769979))

(declare-fun m!4769981 () Bool)

(assert (=> d!1233838 m!4769981))

(declare-fun m!4769983 () Bool)

(assert (=> d!1233838 m!4769983))

(declare-fun m!4769985 () Bool)

(assert (=> d!1233838 m!4769985))

(assert (=> d!1233838 m!4769977))

(declare-fun m!4769987 () Bool)

(assert (=> d!1233838 m!4769987))

(declare-fun m!4769989 () Bool)

(assert (=> d!1233838 m!4769989))

(assert (=> d!1233838 m!4769443))

(declare-fun m!4769991 () Bool)

(assert (=> bm!291629 m!4769991))

(declare-fun m!4769993 () Bool)

(assert (=> b!4180871 m!4769993))

(assert (=> b!4180871 m!4769551))

(declare-fun m!4769995 () Bool)

(assert (=> b!4180866 m!4769995))

(assert (=> b!4180875 m!4769551))

(assert (=> b!4180875 m!4769495))

(assert (=> b!4180875 m!4769985))

(declare-fun m!4769997 () Bool)

(assert (=> b!4180875 m!4769997))

(assert (=> b!4180875 m!4769517))

(declare-fun m!4769999 () Bool)

(assert (=> b!4180875 m!4769999))

(declare-fun m!4770001 () Bool)

(assert (=> b!4180875 m!4770001))

(declare-fun m!4770003 () Bool)

(assert (=> b!4180875 m!4770003))

(declare-fun m!4770005 () Bool)

(assert (=> b!4180875 m!4770005))

(declare-fun m!4770007 () Bool)

(assert (=> b!4180875 m!4770007))

(declare-fun m!4770009 () Bool)

(assert (=> b!4180875 m!4770009))

(declare-fun m!4770011 () Bool)

(assert (=> b!4180875 m!4770011))

(assert (=> b!4180875 m!4769985))

(assert (=> b!4180875 m!4769497))

(assert (=> b!4180875 m!4770009))

(declare-fun m!4770013 () Bool)

(assert (=> b!4180875 m!4770013))

(assert (=> b!4180875 m!4770005))

(declare-fun m!4770015 () Bool)

(assert (=> bm!291633 m!4770015))

(assert (=> bm!291630 m!4769453))

(assert (=> bm!291636 m!4769457))

(assert (=> bm!291635 m!4769497))

(assert (=> bm!291634 m!4769761))

(assert (=> bm!291632 m!4769517))

(assert (=> b!4180338 d!1233838))

(declare-fun d!1233910 () Bool)

(declare-fun lt!1488913 () Int)

(assert (=> d!1233910 (>= lt!1488913 0)))

(declare-fun e!2595592 () Int)

(assert (=> d!1233910 (= lt!1488913 e!2595592)))

(declare-fun c!713945 () Bool)

(assert (=> d!1233910 (= c!713945 ((_ is Nil!45889) Nil!45889))))

(assert (=> d!1233910 (= (size!33699 Nil!45889) lt!1488913)))

(declare-fun b!4180880 () Bool)

(assert (=> b!4180880 (= e!2595592 0)))

(declare-fun b!4180881 () Bool)

(assert (=> b!4180881 (= e!2595592 (+ 1 (size!33699 (t!344978 Nil!45889))))))

(assert (= (and d!1233910 c!713945) b!4180880))

(assert (= (and d!1233910 (not c!713945)) b!4180881))

(declare-fun m!4770017 () Bool)

(assert (=> b!4180881 m!4770017))

(assert (=> b!4180338 d!1233910))

(assert (=> b!4180338 d!1233782))

(declare-fun d!1233912 () Bool)

(declare-fun c!713946 () Bool)

(assert (=> d!1233912 (= c!713946 ((_ is Node!13845) (c!713830 (dynLambda!19691 (toChars!10181 (transformation!7634 (rule!10694 lt!1488696))) (value!238101 lt!1488696)))))))

(declare-fun e!2595593 () Bool)

(assert (=> d!1233912 (= (inv!60425 (c!713830 (dynLambda!19691 (toChars!10181 (transformation!7634 (rule!10694 lt!1488696))) (value!238101 lt!1488696)))) e!2595593)))

(declare-fun b!4180882 () Bool)

(assert (=> b!4180882 (= e!2595593 (inv!60427 (c!713830 (dynLambda!19691 (toChars!10181 (transformation!7634 (rule!10694 lt!1488696))) (value!238101 lt!1488696)))))))

(declare-fun b!4180883 () Bool)

(declare-fun e!2595594 () Bool)

(assert (=> b!4180883 (= e!2595593 e!2595594)))

(declare-fun res!1714392 () Bool)

(assert (=> b!4180883 (= res!1714392 (not ((_ is Leaf!21405) (c!713830 (dynLambda!19691 (toChars!10181 (transformation!7634 (rule!10694 lt!1488696))) (value!238101 lt!1488696))))))))

(assert (=> b!4180883 (=> res!1714392 e!2595594)))

(declare-fun b!4180884 () Bool)

(assert (=> b!4180884 (= e!2595594 (inv!60428 (c!713830 (dynLambda!19691 (toChars!10181 (transformation!7634 (rule!10694 lt!1488696))) (value!238101 lt!1488696)))))))

(assert (= (and d!1233912 c!713946) b!4180882))

(assert (= (and d!1233912 (not c!713946)) b!4180883))

(assert (= (and b!4180883 (not res!1714392)) b!4180884))

(declare-fun m!4770019 () Bool)

(assert (=> b!4180882 m!4770019))

(declare-fun m!4770021 () Bool)

(assert (=> b!4180884 m!4770021))

(assert (=> b!4180597 d!1233912))

(assert (=> b!4180637 d!1233834))

(declare-fun b!4180885 () Bool)

(declare-fun e!2595601 () Bool)

(declare-fun call!291644 () Bool)

(assert (=> b!4180885 (= e!2595601 call!291644)))

(declare-fun c!713947 () Bool)

(declare-fun call!291642 () Bool)

(declare-fun bm!291637 () Bool)

(declare-fun c!713948 () Bool)

(assert (=> bm!291637 (= call!291642 (validRegex!5656 (ite c!713948 (reg!12868 (ite c!713873 (reg!12868 (regex!7634 r!4142)) (ite c!713872 (regTwo!25591 (regex!7634 r!4142)) (regTwo!25590 (regex!7634 r!4142))))) (ite c!713947 (regTwo!25591 (ite c!713873 (reg!12868 (regex!7634 r!4142)) (ite c!713872 (regTwo!25591 (regex!7634 r!4142)) (regTwo!25590 (regex!7634 r!4142))))) (regTwo!25590 (ite c!713873 (reg!12868 (regex!7634 r!4142)) (ite c!713872 (regTwo!25591 (regex!7634 r!4142)) (regTwo!25590 (regex!7634 r!4142)))))))))))

(declare-fun call!291643 () Bool)

(declare-fun bm!291638 () Bool)

(assert (=> bm!291638 (= call!291643 (validRegex!5656 (ite c!713947 (regOne!25591 (ite c!713873 (reg!12868 (regex!7634 r!4142)) (ite c!713872 (regTwo!25591 (regex!7634 r!4142)) (regTwo!25590 (regex!7634 r!4142))))) (regOne!25590 (ite c!713873 (reg!12868 (regex!7634 r!4142)) (ite c!713872 (regTwo!25591 (regex!7634 r!4142)) (regTwo!25590 (regex!7634 r!4142))))))))))

(declare-fun b!4180886 () Bool)

(declare-fun res!1714394 () Bool)

(declare-fun e!2595598 () Bool)

(assert (=> b!4180886 (=> res!1714394 e!2595598)))

(assert (=> b!4180886 (= res!1714394 (not ((_ is Concat!20404) (ite c!713873 (reg!12868 (regex!7634 r!4142)) (ite c!713872 (regTwo!25591 (regex!7634 r!4142)) (regTwo!25590 (regex!7634 r!4142)))))))))

(declare-fun e!2595595 () Bool)

(assert (=> b!4180886 (= e!2595595 e!2595598)))

(declare-fun b!4180887 () Bool)

(declare-fun e!2595597 () Bool)

(declare-fun e!2595599 () Bool)

(assert (=> b!4180887 (= e!2595597 e!2595599)))

(assert (=> b!4180887 (= c!713948 ((_ is Star!12539) (ite c!713873 (reg!12868 (regex!7634 r!4142)) (ite c!713872 (regTwo!25591 (regex!7634 r!4142)) (regTwo!25590 (regex!7634 r!4142))))))))

(declare-fun b!4180888 () Bool)

(declare-fun res!1714393 () Bool)

(declare-fun e!2595600 () Bool)

(assert (=> b!4180888 (=> (not res!1714393) (not e!2595600))))

(assert (=> b!4180888 (= res!1714393 call!291643)))

(assert (=> b!4180888 (= e!2595595 e!2595600)))

(declare-fun b!4180889 () Bool)

(assert (=> b!4180889 (= e!2595598 e!2595601)))

(declare-fun res!1714397 () Bool)

(assert (=> b!4180889 (=> (not res!1714397) (not e!2595601))))

(assert (=> b!4180889 (= res!1714397 call!291643)))

(declare-fun b!4180890 () Bool)

(declare-fun e!2595596 () Bool)

(assert (=> b!4180890 (= e!2595599 e!2595596)))

(declare-fun res!1714396 () Bool)

(assert (=> b!4180890 (= res!1714396 (not (nullable!4395 (reg!12868 (ite c!713873 (reg!12868 (regex!7634 r!4142)) (ite c!713872 (regTwo!25591 (regex!7634 r!4142)) (regTwo!25590 (regex!7634 r!4142))))))))))

(assert (=> b!4180890 (=> (not res!1714396) (not e!2595596))))

(declare-fun d!1233914 () Bool)

(declare-fun res!1714395 () Bool)

(assert (=> d!1233914 (=> res!1714395 e!2595597)))

(assert (=> d!1233914 (= res!1714395 ((_ is ElementMatch!12539) (ite c!713873 (reg!12868 (regex!7634 r!4142)) (ite c!713872 (regTwo!25591 (regex!7634 r!4142)) (regTwo!25590 (regex!7634 r!4142))))))))

(assert (=> d!1233914 (= (validRegex!5656 (ite c!713873 (reg!12868 (regex!7634 r!4142)) (ite c!713872 (regTwo!25591 (regex!7634 r!4142)) (regTwo!25590 (regex!7634 r!4142))))) e!2595597)))

(declare-fun b!4180891 () Bool)

(assert (=> b!4180891 (= e!2595600 call!291644)))

(declare-fun b!4180892 () Bool)

(assert (=> b!4180892 (= e!2595599 e!2595595)))

(assert (=> b!4180892 (= c!713947 ((_ is Union!12539) (ite c!713873 (reg!12868 (regex!7634 r!4142)) (ite c!713872 (regTwo!25591 (regex!7634 r!4142)) (regTwo!25590 (regex!7634 r!4142))))))))

(declare-fun bm!291639 () Bool)

(assert (=> bm!291639 (= call!291644 call!291642)))

(declare-fun b!4180893 () Bool)

(assert (=> b!4180893 (= e!2595596 call!291642)))

(assert (= (and d!1233914 (not res!1714395)) b!4180887))

(assert (= (and b!4180887 c!713948) b!4180890))

(assert (= (and b!4180887 (not c!713948)) b!4180892))

(assert (= (and b!4180890 res!1714396) b!4180893))

(assert (= (and b!4180892 c!713947) b!4180888))

(assert (= (and b!4180892 (not c!713947)) b!4180886))

(assert (= (and b!4180888 res!1714393) b!4180891))

(assert (= (and b!4180886 (not res!1714394)) b!4180889))

(assert (= (and b!4180889 res!1714397) b!4180885))

(assert (= (or b!4180891 b!4180885) bm!291639))

(assert (= (or b!4180888 b!4180889) bm!291638))

(assert (= (or b!4180893 bm!291639) bm!291637))

(declare-fun m!4770023 () Bool)

(assert (=> bm!291637 m!4770023))

(declare-fun m!4770025 () Bool)

(assert (=> bm!291638 m!4770025))

(declare-fun m!4770027 () Bool)

(assert (=> b!4180890 m!4770027))

(assert (=> bm!291600 d!1233914))

(declare-fun b!4180894 () Bool)

(declare-fun e!2595608 () Bool)

(declare-fun call!291647 () Bool)

(assert (=> b!4180894 (= e!2595608 call!291647)))

(declare-fun call!291645 () Bool)

(declare-fun c!713949 () Bool)

(declare-fun bm!291640 () Bool)

(declare-fun c!713950 () Bool)

(assert (=> bm!291640 (= call!291645 (validRegex!5656 (ite c!713950 (reg!12868 (regex!7634 rBis!167)) (ite c!713949 (regTwo!25591 (regex!7634 rBis!167)) (regTwo!25590 (regex!7634 rBis!167))))))))

(declare-fun bm!291641 () Bool)

(declare-fun call!291646 () Bool)

(assert (=> bm!291641 (= call!291646 (validRegex!5656 (ite c!713949 (regOne!25591 (regex!7634 rBis!167)) (regOne!25590 (regex!7634 rBis!167)))))))

(declare-fun b!4180895 () Bool)

(declare-fun res!1714399 () Bool)

(declare-fun e!2595605 () Bool)

(assert (=> b!4180895 (=> res!1714399 e!2595605)))

(assert (=> b!4180895 (= res!1714399 (not ((_ is Concat!20404) (regex!7634 rBis!167))))))

(declare-fun e!2595602 () Bool)

(assert (=> b!4180895 (= e!2595602 e!2595605)))

(declare-fun b!4180896 () Bool)

(declare-fun e!2595604 () Bool)

(declare-fun e!2595606 () Bool)

(assert (=> b!4180896 (= e!2595604 e!2595606)))

(assert (=> b!4180896 (= c!713950 ((_ is Star!12539) (regex!7634 rBis!167)))))

(declare-fun b!4180897 () Bool)

(declare-fun res!1714398 () Bool)

(declare-fun e!2595607 () Bool)

(assert (=> b!4180897 (=> (not res!1714398) (not e!2595607))))

(assert (=> b!4180897 (= res!1714398 call!291646)))

(assert (=> b!4180897 (= e!2595602 e!2595607)))

(declare-fun b!4180898 () Bool)

(assert (=> b!4180898 (= e!2595605 e!2595608)))

(declare-fun res!1714402 () Bool)

(assert (=> b!4180898 (=> (not res!1714402) (not e!2595608))))

(assert (=> b!4180898 (= res!1714402 call!291646)))

(declare-fun b!4180899 () Bool)

(declare-fun e!2595603 () Bool)

(assert (=> b!4180899 (= e!2595606 e!2595603)))

(declare-fun res!1714401 () Bool)

(assert (=> b!4180899 (= res!1714401 (not (nullable!4395 (reg!12868 (regex!7634 rBis!167)))))))

(assert (=> b!4180899 (=> (not res!1714401) (not e!2595603))))

(declare-fun d!1233916 () Bool)

(declare-fun res!1714400 () Bool)

(assert (=> d!1233916 (=> res!1714400 e!2595604)))

(assert (=> d!1233916 (= res!1714400 ((_ is ElementMatch!12539) (regex!7634 rBis!167)))))

(assert (=> d!1233916 (= (validRegex!5656 (regex!7634 rBis!167)) e!2595604)))

(declare-fun b!4180900 () Bool)

(assert (=> b!4180900 (= e!2595607 call!291647)))

(declare-fun b!4180901 () Bool)

(assert (=> b!4180901 (= e!2595606 e!2595602)))

(assert (=> b!4180901 (= c!713949 ((_ is Union!12539) (regex!7634 rBis!167)))))

(declare-fun bm!291642 () Bool)

(assert (=> bm!291642 (= call!291647 call!291645)))

(declare-fun b!4180902 () Bool)

(assert (=> b!4180902 (= e!2595603 call!291645)))

(assert (= (and d!1233916 (not res!1714400)) b!4180896))

(assert (= (and b!4180896 c!713950) b!4180899))

(assert (= (and b!4180896 (not c!713950)) b!4180901))

(assert (= (and b!4180899 res!1714401) b!4180902))

(assert (= (and b!4180901 c!713949) b!4180897))

(assert (= (and b!4180901 (not c!713949)) b!4180895))

(assert (= (and b!4180897 res!1714398) b!4180900))

(assert (= (and b!4180895 (not res!1714399)) b!4180898))

(assert (= (and b!4180898 res!1714402) b!4180894))

(assert (= (or b!4180900 b!4180894) bm!291642))

(assert (= (or b!4180897 b!4180898) bm!291641))

(assert (= (or b!4180902 bm!291642) bm!291640))

(declare-fun m!4770029 () Bool)

(assert (=> bm!291640 m!4770029))

(declare-fun m!4770031 () Bool)

(assert (=> bm!291641 m!4770031))

(declare-fun m!4770033 () Bool)

(assert (=> b!4180899 m!4770033))

(assert (=> d!1233758 d!1233916))

(assert (=> b!4180640 d!1233834))

(declare-fun d!1233918 () Bool)

(assert (=> d!1233918 true))

(declare-fun lt!1488916 () Bool)

(declare-fun rulesValidInductive!2809 (LexerInterface!7227 List!46015) Bool)

(assert (=> d!1233918 (= lt!1488916 (rulesValidInductive!2809 thiss!25986 rules!3843))))

(declare-fun lambda!129363 () Int)

(declare-fun forall!8473 (List!46015 Int) Bool)

(assert (=> d!1233918 (= lt!1488916 (forall!8473 rules!3843 lambda!129363))))

(assert (=> d!1233918 (= (rulesValid!2972 thiss!25986 rules!3843) lt!1488916)))

(declare-fun bs!596305 () Bool)

(assert (= bs!596305 d!1233918))

(declare-fun m!4770035 () Bool)

(assert (=> bs!596305 m!4770035))

(declare-fun m!4770037 () Bool)

(assert (=> bs!596305 m!4770037))

(assert (=> d!1233746 d!1233918))

(assert (=> b!4180590 d!1233782))

(assert (=> b!4180590 d!1233700))

(declare-fun b!4180913 () Bool)

(declare-fun e!2595614 () List!46013)

(assert (=> b!4180913 (= e!2595614 lt!1488704)))

(declare-fun d!1233920 () Bool)

(declare-fun e!2595613 () Bool)

(assert (=> d!1233920 e!2595613))

(declare-fun res!1714408 () Bool)

(assert (=> d!1233920 (=> (not res!1714408) (not e!2595613))))

(declare-fun lt!1488919 () List!46013)

(declare-fun content!7130 (List!46013) (InoxSet C!25268))

(assert (=> d!1233920 (= res!1714408 (= (content!7130 lt!1488919) ((_ map or) (content!7130 p!2959) (content!7130 lt!1488704))))))

(assert (=> d!1233920 (= lt!1488919 e!2595614)))

(declare-fun c!713953 () Bool)

(assert (=> d!1233920 (= c!713953 ((_ is Nil!45889) p!2959))))

(assert (=> d!1233920 (= (++!11710 p!2959 lt!1488704) lt!1488919)))

(declare-fun b!4180916 () Bool)

(assert (=> b!4180916 (= e!2595613 (or (not (= lt!1488704 Nil!45889)) (= lt!1488919 p!2959)))))

(declare-fun b!4180914 () Bool)

(assert (=> b!4180914 (= e!2595614 (Cons!45889 (h!51309 p!2959) (++!11710 (t!344978 p!2959) lt!1488704)))))

(declare-fun b!4180915 () Bool)

(declare-fun res!1714407 () Bool)

(assert (=> b!4180915 (=> (not res!1714407) (not e!2595613))))

(assert (=> b!4180915 (= res!1714407 (= (size!33699 lt!1488919) (+ (size!33699 p!2959) (size!33699 lt!1488704))))))

(assert (= (and d!1233920 c!713953) b!4180913))

(assert (= (and d!1233920 (not c!713953)) b!4180914))

(assert (= (and d!1233920 res!1714408) b!4180915))

(assert (= (and b!4180915 res!1714407) b!4180916))

(declare-fun m!4770039 () Bool)

(assert (=> d!1233920 m!4770039))

(declare-fun m!4770041 () Bool)

(assert (=> d!1233920 m!4770041))

(declare-fun m!4770043 () Bool)

(assert (=> d!1233920 m!4770043))

(declare-fun m!4770045 () Bool)

(assert (=> b!4180914 m!4770045))

(declare-fun m!4770047 () Bool)

(assert (=> b!4180915 m!4770047))

(assert (=> b!4180915 m!4769459))

(declare-fun m!4770049 () Bool)

(assert (=> b!4180915 m!4770049))

(assert (=> d!1233678 d!1233920))

(assert (=> d!1233678 d!1233782))

(assert (=> d!1233678 d!1233700))

(assert (=> b!4180334 d!1233812))

(declare-fun bs!596306 () Bool)

(declare-fun d!1233922 () Bool)

(assert (= bs!596306 (and d!1233922 d!1233776)))

(declare-fun lambda!129364 () Int)

(assert (=> bs!596306 (= (= (toValue!10322 (transformation!7634 (h!51311 rules!3843))) (toValue!10322 (transformation!7634 rBis!167))) (= lambda!129364 lambda!129348))))

(assert (=> d!1233922 true))

(assert (=> d!1233922 (< (dynLambda!19688 order!24209 (toValue!10322 (transformation!7634 (h!51311 rules!3843)))) (dynLambda!19692 order!24215 lambda!129364))))

(assert (=> d!1233922 (= (equivClasses!3202 (toChars!10181 (transformation!7634 (h!51311 rules!3843))) (toValue!10322 (transformation!7634 (h!51311 rules!3843)))) (Forall2!1162 lambda!129364))))

(declare-fun bs!596307 () Bool)

(assert (= bs!596307 d!1233922))

(declare-fun m!4770051 () Bool)

(assert (=> bs!596307 m!4770051))

(assert (=> b!4180271 d!1233922))

(assert (=> b!4180633 d!1233824))

(assert (=> b!4180633 d!1233826))

(assert (=> b!4180309 d!1233782))

(declare-fun b!4180917 () Bool)

(declare-fun e!2595620 () Bool)

(assert (=> b!4180917 (= e!2595620 (nullable!4395 (regex!7634 r!4142)))))

(declare-fun b!4180918 () Bool)

(declare-fun res!1714415 () Bool)

(declare-fun e!2595617 () Bool)

(assert (=> b!4180918 (=> (not res!1714415) (not e!2595617))))

(assert (=> b!4180918 (= res!1714415 (isEmpty!27154 (tail!6719 (list!16577 (charsOf!5073 (_1!24985 (get!14914 lt!1488732)))))))))

(declare-fun b!4180919 () Bool)

(declare-fun res!1714409 () Bool)

(assert (=> b!4180919 (=> (not res!1714409) (not e!2595617))))

(declare-fun call!291648 () Bool)

(assert (=> b!4180919 (= res!1714409 (not call!291648))))

(declare-fun b!4180920 () Bool)

(declare-fun e!2595616 () Bool)

(declare-fun e!2595618 () Bool)

(assert (=> b!4180920 (= e!2595616 e!2595618)))

(declare-fun res!1714412 () Bool)

(assert (=> b!4180920 (=> res!1714412 e!2595618)))

(assert (=> b!4180920 (= res!1714412 call!291648)))

(declare-fun b!4180921 () Bool)

(declare-fun res!1714414 () Bool)

(declare-fun e!2595619 () Bool)

(assert (=> b!4180921 (=> res!1714414 e!2595619)))

(assert (=> b!4180921 (= res!1714414 (not ((_ is ElementMatch!12539) (regex!7634 r!4142))))))

(declare-fun e!2595615 () Bool)

(assert (=> b!4180921 (= e!2595615 e!2595619)))

(declare-fun b!4180922 () Bool)

(assert (=> b!4180922 (= e!2595618 (not (= (head!8872 (list!16577 (charsOf!5073 (_1!24985 (get!14914 lt!1488732))))) (c!713831 (regex!7634 r!4142)))))))

(declare-fun bm!291643 () Bool)

(assert (=> bm!291643 (= call!291648 (isEmpty!27154 (list!16577 (charsOf!5073 (_1!24985 (get!14914 lt!1488732))))))))

(declare-fun b!4180923 () Bool)

(declare-fun lt!1488920 () Bool)

(assert (=> b!4180923 (= e!2595615 (not lt!1488920))))

(declare-fun b!4180924 () Bool)

(assert (=> b!4180924 (= e!2595620 (matchR!6278 (derivativeStep!3785 (regex!7634 r!4142) (head!8872 (list!16577 (charsOf!5073 (_1!24985 (get!14914 lt!1488732)))))) (tail!6719 (list!16577 (charsOf!5073 (_1!24985 (get!14914 lt!1488732)))))))))

(declare-fun b!4180925 () Bool)

(assert (=> b!4180925 (= e!2595617 (= (head!8872 (list!16577 (charsOf!5073 (_1!24985 (get!14914 lt!1488732))))) (c!713831 (regex!7634 r!4142))))))

(declare-fun b!4180926 () Bool)

(declare-fun e!2595621 () Bool)

(assert (=> b!4180926 (= e!2595621 e!2595615)))

(declare-fun c!713956 () Bool)

(assert (=> b!4180926 (= c!713956 ((_ is EmptyLang!12539) (regex!7634 r!4142)))))

(declare-fun b!4180927 () Bool)

(assert (=> b!4180927 (= e!2595619 e!2595616)))

(declare-fun res!1714411 () Bool)

(assert (=> b!4180927 (=> (not res!1714411) (not e!2595616))))

(assert (=> b!4180927 (= res!1714411 (not lt!1488920))))

(declare-fun b!4180928 () Bool)

(declare-fun res!1714410 () Bool)

(assert (=> b!4180928 (=> res!1714410 e!2595619)))

(assert (=> b!4180928 (= res!1714410 e!2595617)))

(declare-fun res!1714413 () Bool)

(assert (=> b!4180928 (=> (not res!1714413) (not e!2595617))))

(assert (=> b!4180928 (= res!1714413 lt!1488920)))

(declare-fun b!4180929 () Bool)

(assert (=> b!4180929 (= e!2595621 (= lt!1488920 call!291648))))

(declare-fun b!4180930 () Bool)

(declare-fun res!1714416 () Bool)

(assert (=> b!4180930 (=> res!1714416 e!2595618)))

(assert (=> b!4180930 (= res!1714416 (not (isEmpty!27154 (tail!6719 (list!16577 (charsOf!5073 (_1!24985 (get!14914 lt!1488732))))))))))

(declare-fun d!1233924 () Bool)

(assert (=> d!1233924 e!2595621))

(declare-fun c!713954 () Bool)

(assert (=> d!1233924 (= c!713954 ((_ is EmptyExpr!12539) (regex!7634 r!4142)))))

(assert (=> d!1233924 (= lt!1488920 e!2595620)))

(declare-fun c!713955 () Bool)

(assert (=> d!1233924 (= c!713955 (isEmpty!27154 (list!16577 (charsOf!5073 (_1!24985 (get!14914 lt!1488732))))))))

(assert (=> d!1233924 (validRegex!5656 (regex!7634 r!4142))))

(assert (=> d!1233924 (= (matchR!6278 (regex!7634 r!4142) (list!16577 (charsOf!5073 (_1!24985 (get!14914 lt!1488732))))) lt!1488920)))

(assert (= (and d!1233924 c!713955) b!4180917))

(assert (= (and d!1233924 (not c!713955)) b!4180924))

(assert (= (and d!1233924 c!713954) b!4180929))

(assert (= (and d!1233924 (not c!713954)) b!4180926))

(assert (= (and b!4180926 c!713956) b!4180923))

(assert (= (and b!4180926 (not c!713956)) b!4180921))

(assert (= (and b!4180921 (not res!1714414)) b!4180928))

(assert (= (and b!4180928 res!1714413) b!4180919))

(assert (= (and b!4180919 res!1714409) b!4180918))

(assert (= (and b!4180918 res!1714415) b!4180925))

(assert (= (and b!4180928 (not res!1714410)) b!4180927))

(assert (= (and b!4180927 res!1714411) b!4180920))

(assert (= (and b!4180920 (not res!1714412)) b!4180930))

(assert (= (and b!4180930 (not res!1714416)) b!4180922))

(assert (= (or b!4180929 b!4180919 b!4180920) bm!291643))

(assert (=> b!4180930 m!4769535))

(declare-fun m!4770053 () Bool)

(assert (=> b!4180930 m!4770053))

(assert (=> b!4180930 m!4770053))

(declare-fun m!4770055 () Bool)

(assert (=> b!4180930 m!4770055))

(assert (=> bm!291643 m!4769535))

(declare-fun m!4770057 () Bool)

(assert (=> bm!291643 m!4770057))

(assert (=> b!4180925 m!4769535))

(declare-fun m!4770059 () Bool)

(assert (=> b!4180925 m!4770059))

(assert (=> b!4180922 m!4769535))

(assert (=> b!4180922 m!4770059))

(assert (=> d!1233924 m!4769535))

(assert (=> d!1233924 m!4770057))

(assert (=> d!1233924 m!4769443))

(assert (=> b!4180918 m!4769535))

(assert (=> b!4180918 m!4770053))

(assert (=> b!4180918 m!4770053))

(assert (=> b!4180918 m!4770055))

(assert (=> b!4180924 m!4769535))

(assert (=> b!4180924 m!4770059))

(assert (=> b!4180924 m!4770059))

(declare-fun m!4770061 () Bool)

(assert (=> b!4180924 m!4770061))

(assert (=> b!4180924 m!4769535))

(assert (=> b!4180924 m!4770053))

(assert (=> b!4180924 m!4770061))

(assert (=> b!4180924 m!4770053))

(declare-fun m!4770063 () Bool)

(assert (=> b!4180924 m!4770063))

(assert (=> b!4180917 m!4769761))

(assert (=> b!4180332 d!1233924))

(declare-fun d!1233926 () Bool)

(assert (=> d!1233926 (= (list!16577 (charsOf!5073 (_1!24985 (get!14914 lt!1488732)))) (list!16578 (c!713830 (charsOf!5073 (_1!24985 (get!14914 lt!1488732))))))))

(declare-fun bs!596308 () Bool)

(assert (= bs!596308 d!1233926))

(declare-fun m!4770065 () Bool)

(assert (=> bs!596308 m!4770065))

(assert (=> b!4180332 d!1233926))

(declare-fun d!1233928 () Bool)

(declare-fun lt!1488923 () BalanceConc!27284)

(assert (=> d!1233928 (= (list!16577 lt!1488923) (originalCharacters!8022 (_1!24985 (get!14914 lt!1488732))))))

(assert (=> d!1233928 (= lt!1488923 (dynLambda!19691 (toChars!10181 (transformation!7634 (rule!10694 (_1!24985 (get!14914 lt!1488732))))) (value!238101 (_1!24985 (get!14914 lt!1488732)))))))

(assert (=> d!1233928 (= (charsOf!5073 (_1!24985 (get!14914 lt!1488732))) lt!1488923)))

(declare-fun b_lambda!122825 () Bool)

(assert (=> (not b_lambda!122825) (not d!1233928)))

(declare-fun t!345056 () Bool)

(declare-fun tb!250255 () Bool)

(assert (=> (and b!4180262 (= (toChars!10181 (transformation!7634 r!4142)) (toChars!10181 (transformation!7634 (rule!10694 (_1!24985 (get!14914 lt!1488732)))))) t!345056) tb!250255))

(declare-fun b!4180931 () Bool)

(declare-fun e!2595622 () Bool)

(declare-fun tp!1277722 () Bool)

(assert (=> b!4180931 (= e!2595622 (and (inv!60425 (c!713830 (dynLambda!19691 (toChars!10181 (transformation!7634 (rule!10694 (_1!24985 (get!14914 lt!1488732))))) (value!238101 (_1!24985 (get!14914 lt!1488732)))))) tp!1277722))))

(declare-fun result!304952 () Bool)

(assert (=> tb!250255 (= result!304952 (and (inv!60426 (dynLambda!19691 (toChars!10181 (transformation!7634 (rule!10694 (_1!24985 (get!14914 lt!1488732))))) (value!238101 (_1!24985 (get!14914 lt!1488732))))) e!2595622))))

(assert (= tb!250255 b!4180931))

(declare-fun m!4770067 () Bool)

(assert (=> b!4180931 m!4770067))

(declare-fun m!4770069 () Bool)

(assert (=> tb!250255 m!4770069))

(assert (=> d!1233928 t!345056))

(declare-fun b_and!327017 () Bool)

(assert (= b_and!326975 (and (=> t!345056 result!304952) b_and!327017)))

(declare-fun tb!250257 () Bool)

(declare-fun t!345058 () Bool)

(assert (=> (and b!4180245 (= (toChars!10181 (transformation!7634 rBis!167)) (toChars!10181 (transformation!7634 (rule!10694 (_1!24985 (get!14914 lt!1488732)))))) t!345058) tb!250257))

(declare-fun result!304954 () Bool)

(assert (= result!304954 result!304952))

(assert (=> d!1233928 t!345058))

(declare-fun b_and!327019 () Bool)

(assert (= b_and!326977 (and (=> t!345058 result!304954) b_and!327019)))

(declare-fun t!345060 () Bool)

(declare-fun tb!250259 () Bool)

(assert (=> (and b!4180249 (= (toChars!10181 (transformation!7634 (h!51311 rules!3843))) (toChars!10181 (transformation!7634 (rule!10694 (_1!24985 (get!14914 lt!1488732)))))) t!345060) tb!250259))

(declare-fun result!304956 () Bool)

(assert (= result!304956 result!304952))

(assert (=> d!1233928 t!345060))

(declare-fun b_and!327021 () Bool)

(assert (= b_and!326979 (and (=> t!345060 result!304956) b_and!327021)))

(declare-fun tb!250261 () Bool)

(declare-fun t!345062 () Bool)

(assert (=> (and b!4180683 (= (toChars!10181 (transformation!7634 (h!51311 (t!344980 rules!3843)))) (toChars!10181 (transformation!7634 (rule!10694 (_1!24985 (get!14914 lt!1488732)))))) t!345062) tb!250261))

(declare-fun result!304958 () Bool)

(assert (= result!304958 result!304952))

(assert (=> d!1233928 t!345062))

(declare-fun b_and!327023 () Bool)

(assert (= b_and!326983 (and (=> t!345062 result!304958) b_and!327023)))

(declare-fun m!4770071 () Bool)

(assert (=> d!1233928 m!4770071))

(declare-fun m!4770073 () Bool)

(assert (=> d!1233928 m!4770073))

(assert (=> b!4180332 d!1233928))

(assert (=> b!4180332 d!1233812))

(assert (=> b!4180336 d!1233812))

(declare-fun d!1233930 () Bool)

(assert (=> d!1233930 (= (apply!10599 (transformation!7634 (rule!10694 (_1!24985 (get!14914 lt!1488732)))) (seqFromList!5659 (originalCharacters!8022 (_1!24985 (get!14914 lt!1488732))))) (dynLambda!19687 (toValue!10322 (transformation!7634 (rule!10694 (_1!24985 (get!14914 lt!1488732))))) (seqFromList!5659 (originalCharacters!8022 (_1!24985 (get!14914 lt!1488732))))))))

(declare-fun b_lambda!122827 () Bool)

(assert (=> (not b_lambda!122827) (not d!1233930)))

(declare-fun tb!250263 () Bool)

(declare-fun t!345064 () Bool)

(assert (=> (and b!4180262 (= (toValue!10322 (transformation!7634 r!4142)) (toValue!10322 (transformation!7634 (rule!10694 (_1!24985 (get!14914 lt!1488732)))))) t!345064) tb!250263))

(declare-fun result!304960 () Bool)

(assert (=> tb!250263 (= result!304960 (inv!21 (dynLambda!19687 (toValue!10322 (transformation!7634 (rule!10694 (_1!24985 (get!14914 lt!1488732))))) (seqFromList!5659 (originalCharacters!8022 (_1!24985 (get!14914 lt!1488732)))))))))

(declare-fun m!4770075 () Bool)

(assert (=> tb!250263 m!4770075))

(assert (=> d!1233930 t!345064))

(declare-fun b_and!327025 () Bool)

(assert (= b_and!326969 (and (=> t!345064 result!304960) b_and!327025)))

(declare-fun tb!250265 () Bool)

(declare-fun t!345066 () Bool)

(assert (=> (and b!4180245 (= (toValue!10322 (transformation!7634 rBis!167)) (toValue!10322 (transformation!7634 (rule!10694 (_1!24985 (get!14914 lt!1488732)))))) t!345066) tb!250265))

(declare-fun result!304962 () Bool)

(assert (= result!304962 result!304960))

(assert (=> d!1233930 t!345066))

(declare-fun b_and!327027 () Bool)

(assert (= b_and!326971 (and (=> t!345066 result!304962) b_and!327027)))

(declare-fun tb!250267 () Bool)

(declare-fun t!345068 () Bool)

(assert (=> (and b!4180249 (= (toValue!10322 (transformation!7634 (h!51311 rules!3843))) (toValue!10322 (transformation!7634 (rule!10694 (_1!24985 (get!14914 lt!1488732)))))) t!345068) tb!250267))

(declare-fun result!304964 () Bool)

(assert (= result!304964 result!304960))

(assert (=> d!1233930 t!345068))

(declare-fun b_and!327029 () Bool)

(assert (= b_and!326973 (and (=> t!345068 result!304964) b_and!327029)))

(declare-fun t!345070 () Bool)

(declare-fun tb!250269 () Bool)

(assert (=> (and b!4180683 (= (toValue!10322 (transformation!7634 (h!51311 (t!344980 rules!3843)))) (toValue!10322 (transformation!7634 (rule!10694 (_1!24985 (get!14914 lt!1488732)))))) t!345070) tb!250269))

(declare-fun result!304966 () Bool)

(assert (= result!304966 result!304960))

(assert (=> d!1233930 t!345070))

(declare-fun b_and!327031 () Bool)

(assert (= b_and!326981 (and (=> t!345070 result!304966) b_and!327031)))

(assert (=> d!1233930 m!4769545))

(declare-fun m!4770077 () Bool)

(assert (=> d!1233930 m!4770077))

(assert (=> b!4180336 d!1233930))

(declare-fun d!1233932 () Bool)

(assert (=> d!1233932 (= (seqFromList!5659 (originalCharacters!8022 (_1!24985 (get!14914 lt!1488732)))) (fromListB!2587 (originalCharacters!8022 (_1!24985 (get!14914 lt!1488732)))))))

(declare-fun bs!596309 () Bool)

(assert (= bs!596309 d!1233932))

(declare-fun m!4770079 () Bool)

(assert (=> bs!596309 m!4770079))

(assert (=> b!4180336 d!1233932))

(declare-fun bs!596310 () Bool)

(declare-fun d!1233934 () Bool)

(assert (= bs!596310 (and d!1233934 d!1233776)))

(declare-fun lambda!129365 () Int)

(assert (=> bs!596310 (= (= (toValue!10322 (transformation!7634 r!4142)) (toValue!10322 (transformation!7634 rBis!167))) (= lambda!129365 lambda!129348))))

(declare-fun bs!596311 () Bool)

(assert (= bs!596311 (and d!1233934 d!1233922)))

(assert (=> bs!596311 (= (= (toValue!10322 (transformation!7634 r!4142)) (toValue!10322 (transformation!7634 (h!51311 rules!3843)))) (= lambda!129365 lambda!129364))))

(assert (=> d!1233934 true))

(assert (=> d!1233934 (< (dynLambda!19688 order!24209 (toValue!10322 (transformation!7634 r!4142))) (dynLambda!19692 order!24215 lambda!129365))))

(assert (=> d!1233934 (= (equivClasses!3202 (toChars!10181 (transformation!7634 r!4142)) (toValue!10322 (transformation!7634 r!4142))) (Forall2!1162 lambda!129365))))

(declare-fun bs!596312 () Bool)

(assert (= bs!596312 d!1233934))

(declare-fun m!4770081 () Bool)

(assert (=> bs!596312 m!4770081))

(assert (=> b!4180580 d!1233934))

(declare-fun d!1233936 () Bool)

(assert (=> d!1233936 (= (isEmpty!27154 p!2959) ((_ is Nil!45889) p!2959))))

(assert (=> d!1233768 d!1233936))

(assert (=> d!1233768 d!1233750))

(declare-fun d!1233938 () Bool)

(assert (=> d!1233938 (= (nullable!4395 (reg!12868 (regex!7634 r!4142))) (nullableFct!1213 (reg!12868 (regex!7634 r!4142))))))

(declare-fun bs!596313 () Bool)

(assert (= bs!596313 d!1233938))

(declare-fun m!4770083 () Bool)

(assert (=> bs!596313 m!4770083))

(assert (=> b!4180574 d!1233938))

(declare-fun d!1233940 () Bool)

(declare-fun lt!1488924 () Int)

(assert (=> d!1233940 (>= lt!1488924 0)))

(declare-fun e!2595624 () Int)

(assert (=> d!1233940 (= lt!1488924 e!2595624)))

(declare-fun c!713957 () Bool)

(assert (=> d!1233940 (= c!713957 ((_ is Nil!45889) (originalCharacters!8022 lt!1488696)))))

(assert (=> d!1233940 (= (size!33699 (originalCharacters!8022 lt!1488696)) lt!1488924)))

(declare-fun b!4180932 () Bool)

(assert (=> b!4180932 (= e!2595624 0)))

(declare-fun b!4180933 () Bool)

(assert (=> b!4180933 (= e!2595624 (+ 1 (size!33699 (t!344978 (originalCharacters!8022 lt!1488696)))))))

(assert (= (and d!1233940 c!713957) b!4180932))

(assert (= (and d!1233940 (not c!713957)) b!4180933))

(declare-fun m!4770085 () Bool)

(assert (=> b!4180933 m!4770085))

(assert (=> b!4180596 d!1233940))

(assert (=> b!4180331 d!1233838))

(declare-fun d!1233942 () Bool)

(assert (=> d!1233942 (= (isEmpty!27154 (_1!24987 (findLongestMatchInner!1585 (regex!7634 r!4142) Nil!45889 (size!33699 Nil!45889) input!3342 input!3342 (size!33699 input!3342)))) ((_ is Nil!45889) (_1!24987 (findLongestMatchInner!1585 (regex!7634 r!4142) Nil!45889 (size!33699 Nil!45889) input!3342 input!3342 (size!33699 input!3342)))))))

(assert (=> b!4180331 d!1233942))

(declare-fun d!1233944 () Bool)

(assert (=> d!1233944 (= (apply!10599 (transformation!7634 r!4142) (seqFromList!5659 (_1!24987 lt!1488731))) (dynLambda!19687 (toValue!10322 (transformation!7634 r!4142)) (seqFromList!5659 (_1!24987 lt!1488731))))))

(declare-fun b_lambda!122829 () Bool)

(assert (=> (not b_lambda!122829) (not d!1233944)))

(declare-fun t!345072 () Bool)

(declare-fun tb!250271 () Bool)

(assert (=> (and b!4180262 (= (toValue!10322 (transformation!7634 r!4142)) (toValue!10322 (transformation!7634 r!4142))) t!345072) tb!250271))

(declare-fun result!304968 () Bool)

(assert (=> tb!250271 (= result!304968 (inv!21 (dynLambda!19687 (toValue!10322 (transformation!7634 r!4142)) (seqFromList!5659 (_1!24987 lt!1488731)))))))

(declare-fun m!4770087 () Bool)

(assert (=> tb!250271 m!4770087))

(assert (=> d!1233944 t!345072))

(declare-fun b_and!327033 () Bool)

(assert (= b_and!327025 (and (=> t!345072 result!304968) b_and!327033)))

(declare-fun t!345074 () Bool)

(declare-fun tb!250273 () Bool)

(assert (=> (and b!4180245 (= (toValue!10322 (transformation!7634 rBis!167)) (toValue!10322 (transformation!7634 r!4142))) t!345074) tb!250273))

(declare-fun result!304970 () Bool)

(assert (= result!304970 result!304968))

(assert (=> d!1233944 t!345074))

(declare-fun b_and!327035 () Bool)

(assert (= b_and!327027 (and (=> t!345074 result!304970) b_and!327035)))

(declare-fun t!345076 () Bool)

(declare-fun tb!250275 () Bool)

(assert (=> (and b!4180249 (= (toValue!10322 (transformation!7634 (h!51311 rules!3843))) (toValue!10322 (transformation!7634 r!4142))) t!345076) tb!250275))

(declare-fun result!304972 () Bool)

(assert (= result!304972 result!304968))

(assert (=> d!1233944 t!345076))

(declare-fun b_and!327037 () Bool)

(assert (= b_and!327029 (and (=> t!345076 result!304972) b_and!327037)))

(declare-fun tb!250277 () Bool)

(declare-fun t!345078 () Bool)

(assert (=> (and b!4180683 (= (toValue!10322 (transformation!7634 (h!51311 (t!344980 rules!3843)))) (toValue!10322 (transformation!7634 r!4142))) t!345078) tb!250277))

(declare-fun result!304974 () Bool)

(assert (= result!304974 result!304968))

(assert (=> d!1233944 t!345078))

(declare-fun b_and!327039 () Bool)

(assert (= b_and!327031 (and (=> t!345078 result!304974) b_and!327039)))

(assert (=> d!1233944 m!4769561))

(declare-fun m!4770089 () Bool)

(assert (=> d!1233944 m!4770089))

(assert (=> b!4180331 d!1233944))

(declare-fun bs!596314 () Bool)

(declare-fun d!1233946 () Bool)

(assert (= bs!596314 (and d!1233946 d!1233704)))

(declare-fun lambda!129366 () Int)

(assert (=> bs!596314 (= lambda!129366 lambda!129345)))

(declare-fun bs!596315 () Bool)

(assert (= bs!596315 (and d!1233946 d!1233830)))

(assert (=> bs!596315 (= (and (= (toChars!10181 (transformation!7634 r!4142)) (toChars!10181 (transformation!7634 (h!51311 rules!3843)))) (= (toValue!10322 (transformation!7634 r!4142)) (toValue!10322 (transformation!7634 (h!51311 rules!3843))))) (= lambda!129366 lambda!129355))))

(declare-fun b!4180934 () Bool)

(declare-fun e!2595626 () Bool)

(assert (=> b!4180934 (= e!2595626 true)))

(assert (=> d!1233946 e!2595626))

(assert (= d!1233946 b!4180934))

(assert (=> b!4180934 (< (dynLambda!19688 order!24209 (toValue!10322 (transformation!7634 r!4142))) (dynLambda!19689 order!24211 lambda!129366))))

(assert (=> b!4180934 (< (dynLambda!19690 order!24213 (toChars!10181 (transformation!7634 r!4142))) (dynLambda!19689 order!24211 lambda!129366))))

(assert (=> d!1233946 (= (list!16577 (dynLambda!19691 (toChars!10181 (transformation!7634 r!4142)) (dynLambda!19687 (toValue!10322 (transformation!7634 r!4142)) (seqFromList!5659 (_1!24987 lt!1488731))))) (list!16577 (seqFromList!5659 (_1!24987 lt!1488731))))))

(declare-fun lt!1488925 () Unit!64975)

(assert (=> d!1233946 (= lt!1488925 (ForallOf!1038 lambda!129366 (seqFromList!5659 (_1!24987 lt!1488731))))))

(assert (=> d!1233946 (= (lemmaSemiInverse!2400 (transformation!7634 r!4142) (seqFromList!5659 (_1!24987 lt!1488731))) lt!1488925)))

(declare-fun b_lambda!122831 () Bool)

(assert (=> (not b_lambda!122831) (not d!1233946)))

(declare-fun t!345080 () Bool)

(declare-fun tb!250279 () Bool)

(assert (=> (and b!4180262 (= (toChars!10181 (transformation!7634 r!4142)) (toChars!10181 (transformation!7634 r!4142))) t!345080) tb!250279))

(declare-fun e!2595627 () Bool)

(declare-fun b!4180935 () Bool)

(declare-fun tp!1277723 () Bool)

(assert (=> b!4180935 (= e!2595627 (and (inv!60425 (c!713830 (dynLambda!19691 (toChars!10181 (transformation!7634 r!4142)) (dynLambda!19687 (toValue!10322 (transformation!7634 r!4142)) (seqFromList!5659 (_1!24987 lt!1488731)))))) tp!1277723))))

(declare-fun result!304976 () Bool)

(assert (=> tb!250279 (= result!304976 (and (inv!60426 (dynLambda!19691 (toChars!10181 (transformation!7634 r!4142)) (dynLambda!19687 (toValue!10322 (transformation!7634 r!4142)) (seqFromList!5659 (_1!24987 lt!1488731))))) e!2595627))))

(assert (= tb!250279 b!4180935))

(declare-fun m!4770091 () Bool)

(assert (=> b!4180935 m!4770091))

(declare-fun m!4770093 () Bool)

(assert (=> tb!250279 m!4770093))

(assert (=> d!1233946 t!345080))

(declare-fun b_and!327041 () Bool)

(assert (= b_and!327017 (and (=> t!345080 result!304976) b_and!327041)))

(declare-fun tb!250281 () Bool)

(declare-fun t!345082 () Bool)

(assert (=> (and b!4180245 (= (toChars!10181 (transformation!7634 rBis!167)) (toChars!10181 (transformation!7634 r!4142))) t!345082) tb!250281))

(declare-fun result!304978 () Bool)

(assert (= result!304978 result!304976))

(assert (=> d!1233946 t!345082))

(declare-fun b_and!327043 () Bool)

(assert (= b_and!327019 (and (=> t!345082 result!304978) b_and!327043)))

(declare-fun t!345084 () Bool)

(declare-fun tb!250283 () Bool)

(assert (=> (and b!4180249 (= (toChars!10181 (transformation!7634 (h!51311 rules!3843))) (toChars!10181 (transformation!7634 r!4142))) t!345084) tb!250283))

(declare-fun result!304980 () Bool)

(assert (= result!304980 result!304976))

(assert (=> d!1233946 t!345084))

(declare-fun b_and!327045 () Bool)

(assert (= b_and!327021 (and (=> t!345084 result!304980) b_and!327045)))

(declare-fun tb!250285 () Bool)

(declare-fun t!345086 () Bool)

(assert (=> (and b!4180683 (= (toChars!10181 (transformation!7634 (h!51311 (t!344980 rules!3843)))) (toChars!10181 (transformation!7634 r!4142))) t!345086) tb!250285))

(declare-fun result!304982 () Bool)

(assert (= result!304982 result!304976))

(assert (=> d!1233946 t!345086))

(declare-fun b_and!327047 () Bool)

(assert (= b_and!327023 (and (=> t!345086 result!304982) b_and!327047)))

(declare-fun b_lambda!122833 () Bool)

(assert (=> (not b_lambda!122833) (not d!1233946)))

(assert (=> d!1233946 t!345072))

(declare-fun b_and!327049 () Bool)

(assert (= b_and!327033 (and (=> t!345072 result!304968) b_and!327049)))

(assert (=> d!1233946 t!345074))

(declare-fun b_and!327051 () Bool)

(assert (= b_and!327035 (and (=> t!345074 result!304970) b_and!327051)))

(assert (=> d!1233946 t!345076))

(declare-fun b_and!327053 () Bool)

(assert (= b_and!327037 (and (=> t!345076 result!304972) b_and!327053)))

(assert (=> d!1233946 t!345078))

(declare-fun b_and!327055 () Bool)

(assert (= b_and!327039 (and (=> t!345078 result!304974) b_and!327055)))

(assert (=> d!1233946 m!4769561))

(declare-fun m!4770095 () Bool)

(assert (=> d!1233946 m!4770095))

(assert (=> d!1233946 m!4769561))

(declare-fun m!4770097 () Bool)

(assert (=> d!1233946 m!4770097))

(declare-fun m!4770099 () Bool)

(assert (=> d!1233946 m!4770099))

(declare-fun m!4770101 () Bool)

(assert (=> d!1233946 m!4770101))

(assert (=> d!1233946 m!4770089))

(assert (=> d!1233946 m!4770099))

(assert (=> d!1233946 m!4769561))

(assert (=> d!1233946 m!4770089))

(assert (=> b!4180331 d!1233946))

(assert (=> b!4180331 d!1233910))

(declare-fun d!1233948 () Bool)

(declare-fun lt!1488928 () Int)

(assert (=> d!1233948 (= lt!1488928 (size!33699 (list!16577 (seqFromList!5659 (_1!24987 lt!1488731)))))))

(declare-fun size!33704 (Conc!13845) Int)

(assert (=> d!1233948 (= lt!1488928 (size!33704 (c!713830 (seqFromList!5659 (_1!24987 lt!1488731)))))))

(assert (=> d!1233948 (= (size!33702 (seqFromList!5659 (_1!24987 lt!1488731))) lt!1488928)))

(declare-fun bs!596316 () Bool)

(assert (= bs!596316 d!1233948))

(assert (=> bs!596316 m!4769561))

(assert (=> bs!596316 m!4770097))

(assert (=> bs!596316 m!4770097))

(declare-fun m!4770103 () Bool)

(assert (=> bs!596316 m!4770103))

(declare-fun m!4770105 () Bool)

(assert (=> bs!596316 m!4770105))

(assert (=> b!4180331 d!1233948))

(declare-fun d!1233950 () Bool)

(assert (=> d!1233950 (= (seqFromList!5659 (_1!24987 lt!1488731)) (fromListB!2587 (_1!24987 lt!1488731)))))

(declare-fun bs!596317 () Bool)

(assert (= bs!596317 d!1233950))

(declare-fun m!4770107 () Bool)

(assert (=> bs!596317 m!4770107))

(assert (=> b!4180331 d!1233950))

(assert (=> b!4180331 d!1233782))

(declare-fun d!1233952 () Bool)

(declare-fun e!2595630 () Bool)

(assert (=> d!1233952 e!2595630))

(declare-fun res!1714419 () Bool)

(assert (=> d!1233952 (=> res!1714419 e!2595630)))

(assert (=> d!1233952 (= res!1714419 (isEmpty!27154 (_1!24987 (findLongestMatchInner!1585 (regex!7634 r!4142) Nil!45889 (size!33699 Nil!45889) input!3342 input!3342 (size!33699 input!3342)))))))

(declare-fun lt!1488931 () Unit!64975)

(declare-fun choose!25588 (Regex!12539 List!46013) Unit!64975)

(assert (=> d!1233952 (= lt!1488931 (choose!25588 (regex!7634 r!4142) input!3342))))

(assert (=> d!1233952 (validRegex!5656 (regex!7634 r!4142))))

(assert (=> d!1233952 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1558 (regex!7634 r!4142) input!3342) lt!1488931)))

(declare-fun b!4180938 () Bool)

(assert (=> b!4180938 (= e!2595630 (matchR!6278 (regex!7634 r!4142) (_1!24987 (findLongestMatchInner!1585 (regex!7634 r!4142) Nil!45889 (size!33699 Nil!45889) input!3342 input!3342 (size!33699 input!3342)))))))

(assert (= (and d!1233952 (not res!1714419)) b!4180938))

(assert (=> d!1233952 m!4769443))

(assert (=> d!1233952 m!4769495))

(assert (=> d!1233952 m!4769571))

(declare-fun m!4770109 () Bool)

(assert (=> d!1233952 m!4770109))

(assert (=> d!1233952 m!4769551))

(assert (=> d!1233952 m!4769495))

(assert (=> d!1233952 m!4769553))

(assert (=> d!1233952 m!4769551))

(assert (=> b!4180938 m!4769551))

(assert (=> b!4180938 m!4769495))

(assert (=> b!4180938 m!4769551))

(assert (=> b!4180938 m!4769495))

(assert (=> b!4180938 m!4769553))

(assert (=> b!4180938 m!4769555))

(assert (=> b!4180331 d!1233952))

(declare-fun d!1233954 () Bool)

(declare-fun lt!1488932 () Bool)

(assert (=> d!1233954 (= lt!1488932 (select (content!7127 (t!344980 rules!3843)) rBis!167))))

(declare-fun e!2595632 () Bool)

(assert (=> d!1233954 (= lt!1488932 e!2595632)))

(declare-fun res!1714421 () Bool)

(assert (=> d!1233954 (=> (not res!1714421) (not e!2595632))))

(assert (=> d!1233954 (= res!1714421 ((_ is Cons!45891) (t!344980 rules!3843)))))

(assert (=> d!1233954 (= (contains!9439 (t!344980 rules!3843) rBis!167) lt!1488932)))

(declare-fun b!4180939 () Bool)

(declare-fun e!2595631 () Bool)

(assert (=> b!4180939 (= e!2595632 e!2595631)))

(declare-fun res!1714420 () Bool)

(assert (=> b!4180939 (=> res!1714420 e!2595631)))

(assert (=> b!4180939 (= res!1714420 (= (h!51311 (t!344980 rules!3843)) rBis!167))))

(declare-fun b!4180940 () Bool)

(assert (=> b!4180940 (= e!2595631 (contains!9439 (t!344980 (t!344980 rules!3843)) rBis!167))))

(assert (= (and d!1233954 res!1714421) b!4180939))

(assert (= (and b!4180939 (not res!1714420)) b!4180940))

(declare-fun m!4770111 () Bool)

(assert (=> d!1233954 m!4770111))

(declare-fun m!4770113 () Bool)

(assert (=> d!1233954 m!4770113))

(declare-fun m!4770115 () Bool)

(assert (=> b!4180940 m!4770115))

(assert (=> b!4180268 d!1233954))

(declare-fun d!1233956 () Bool)

(assert (=> d!1233956 (= (inv!60418 (tag!8498 (h!51311 (t!344980 rules!3843)))) (= (mod (str.len (value!238100 (tag!8498 (h!51311 (t!344980 rules!3843))))) 2) 0))))

(assert (=> b!4180682 d!1233956))

(declare-fun d!1233958 () Bool)

(declare-fun res!1714422 () Bool)

(declare-fun e!2595633 () Bool)

(assert (=> d!1233958 (=> (not res!1714422) (not e!2595633))))

(assert (=> d!1233958 (= res!1714422 (semiInverseModEq!3303 (toChars!10181 (transformation!7634 (h!51311 (t!344980 rules!3843)))) (toValue!10322 (transformation!7634 (h!51311 (t!344980 rules!3843))))))))

(assert (=> d!1233958 (= (inv!60421 (transformation!7634 (h!51311 (t!344980 rules!3843)))) e!2595633)))

(declare-fun b!4180941 () Bool)

(assert (=> b!4180941 (= e!2595633 (equivClasses!3202 (toChars!10181 (transformation!7634 (h!51311 (t!344980 rules!3843)))) (toValue!10322 (transformation!7634 (h!51311 (t!344980 rules!3843))))))))

(assert (= (and d!1233958 res!1714422) b!4180941))

(declare-fun m!4770117 () Bool)

(assert (=> d!1233958 m!4770117))

(declare-fun m!4770119 () Bool)

(assert (=> b!4180941 m!4770119))

(assert (=> b!4180682 d!1233958))

(declare-fun d!1233960 () Bool)

(declare-fun c!713960 () Bool)

(assert (=> d!1233960 (= c!713960 ((_ is Nil!45891) rules!3843))))

(declare-fun e!2595636 () (InoxSet Rule!15068))

(assert (=> d!1233960 (= (content!7127 rules!3843) e!2595636)))

(declare-fun b!4180946 () Bool)

(assert (=> b!4180946 (= e!2595636 ((as const (Array Rule!15068 Bool)) false))))

(declare-fun b!4180947 () Bool)

(assert (=> b!4180947 (= e!2595636 ((_ map or) (store ((as const (Array Rule!15068 Bool)) false) (h!51311 rules!3843) true) (content!7127 (t!344980 rules!3843))))))

(assert (= (and d!1233960 c!713960) b!4180946))

(assert (= (and d!1233960 (not c!713960)) b!4180947))

(declare-fun m!4770121 () Bool)

(assert (=> b!4180947 m!4770121))

(assert (=> b!4180947 m!4770111))

(assert (=> d!1233672 d!1233960))

(declare-fun d!1233962 () Bool)

(declare-fun e!2595639 () Bool)

(assert (=> d!1233962 e!2595639))

(declare-fun res!1714425 () Bool)

(assert (=> d!1233962 (=> (not res!1714425) (not e!2595639))))

(declare-fun lt!1488935 () BalanceConc!27284)

(assert (=> d!1233962 (= res!1714425 (= (list!16577 lt!1488935) p!2959))))

(declare-fun fromList!913 (List!46013) Conc!13845)

(assert (=> d!1233962 (= lt!1488935 (BalanceConc!27285 (fromList!913 p!2959)))))

(assert (=> d!1233962 (= (fromListB!2587 p!2959) lt!1488935)))

(declare-fun b!4180950 () Bool)

(assert (=> b!4180950 (= e!2595639 (isBalanced!3733 (fromList!913 p!2959)))))

(assert (= (and d!1233962 res!1714425) b!4180950))

(declare-fun m!4770123 () Bool)

(assert (=> d!1233962 m!4770123))

(declare-fun m!4770125 () Bool)

(assert (=> d!1233962 m!4770125))

(assert (=> b!4180950 m!4770125))

(assert (=> b!4180950 m!4770125))

(declare-fun m!4770127 () Bool)

(assert (=> b!4180950 m!4770127))

(assert (=> d!1233690 d!1233962))

(declare-fun d!1233964 () Bool)

(assert (=> d!1233964 (= (nullable!4395 (regex!7634 rBis!167)) (nullableFct!1213 (regex!7634 rBis!167)))))

(declare-fun bs!596318 () Bool)

(assert (= bs!596318 d!1233964))

(declare-fun m!4770129 () Bool)

(assert (=> bs!596318 m!4770129))

(assert (=> b!4180585 d!1233964))

(declare-fun d!1233966 () Bool)

(declare-fun e!2595640 () Bool)

(assert (=> d!1233966 e!2595640))

(declare-fun res!1714429 () Bool)

(assert (=> d!1233966 (=> res!1714429 e!2595640)))

(declare-fun lt!1488936 () Bool)

(assert (=> d!1233966 (= res!1714429 (not lt!1488936))))

(declare-fun e!2595642 () Bool)

(assert (=> d!1233966 (= lt!1488936 e!2595642)))

(declare-fun res!1714428 () Bool)

(assert (=> d!1233966 (=> res!1714428 e!2595642)))

(assert (=> d!1233966 (= res!1714428 ((_ is Nil!45889) (tail!6719 pBis!107)))))

(assert (=> d!1233966 (= (isPrefix!4491 (tail!6719 pBis!107) (tail!6719 input!3342)) lt!1488936)))

(declare-fun b!4180952 () Bool)

(declare-fun res!1714426 () Bool)

(declare-fun e!2595641 () Bool)

(assert (=> b!4180952 (=> (not res!1714426) (not e!2595641))))

(assert (=> b!4180952 (= res!1714426 (= (head!8872 (tail!6719 pBis!107)) (head!8872 (tail!6719 input!3342))))))

(declare-fun b!4180951 () Bool)

(assert (=> b!4180951 (= e!2595642 e!2595641)))

(declare-fun res!1714427 () Bool)

(assert (=> b!4180951 (=> (not res!1714427) (not e!2595641))))

(assert (=> b!4180951 (= res!1714427 (not ((_ is Nil!45889) (tail!6719 input!3342))))))

(declare-fun b!4180953 () Bool)

(assert (=> b!4180953 (= e!2595641 (isPrefix!4491 (tail!6719 (tail!6719 pBis!107)) (tail!6719 (tail!6719 input!3342))))))

(declare-fun b!4180954 () Bool)

(assert (=> b!4180954 (= e!2595640 (>= (size!33699 (tail!6719 input!3342)) (size!33699 (tail!6719 pBis!107))))))

(assert (= (and d!1233966 (not res!1714428)) b!4180951))

(assert (= (and b!4180951 res!1714427) b!4180952))

(assert (= (and b!4180952 res!1714426) b!4180953))

(assert (= (and d!1233966 (not res!1714429)) b!4180954))

(assert (=> b!4180952 m!4769765))

(declare-fun m!4770131 () Bool)

(assert (=> b!4180952 m!4770131))

(assert (=> b!4180952 m!4769497))

(declare-fun m!4770133 () Bool)

(assert (=> b!4180952 m!4770133))

(assert (=> b!4180953 m!4769765))

(declare-fun m!4770135 () Bool)

(assert (=> b!4180953 m!4770135))

(assert (=> b!4180953 m!4769497))

(declare-fun m!4770137 () Bool)

(assert (=> b!4180953 m!4770137))

(assert (=> b!4180953 m!4770135))

(assert (=> b!4180953 m!4770137))

(declare-fun m!4770139 () Bool)

(assert (=> b!4180953 m!4770139))

(assert (=> b!4180954 m!4769497))

(declare-fun m!4770141 () Bool)

(assert (=> b!4180954 m!4770141))

(assert (=> b!4180954 m!4769765))

(declare-fun m!4770143 () Bool)

(assert (=> b!4180954 m!4770143))

(assert (=> b!4180602 d!1233966))

(declare-fun d!1233968 () Bool)

(assert (=> d!1233968 (= (tail!6719 pBis!107) (t!344978 pBis!107))))

(assert (=> b!4180602 d!1233968))

(declare-fun d!1233970 () Bool)

(assert (=> d!1233970 (= (tail!6719 input!3342) (t!344978 input!3342))))

(assert (=> b!4180602 d!1233970))

(declare-fun bs!596319 () Bool)

(declare-fun d!1233972 () Bool)

(assert (= bs!596319 (and d!1233972 d!1233704)))

(declare-fun lambda!129367 () Int)

(assert (=> bs!596319 (= (and (= (toChars!10181 (transformation!7634 rBis!167)) (toChars!10181 (transformation!7634 r!4142))) (= (toValue!10322 (transformation!7634 rBis!167)) (toValue!10322 (transformation!7634 r!4142)))) (= lambda!129367 lambda!129345))))

(declare-fun bs!596320 () Bool)

(assert (= bs!596320 (and d!1233972 d!1233830)))

(assert (=> bs!596320 (= (and (= (toChars!10181 (transformation!7634 rBis!167)) (toChars!10181 (transformation!7634 (h!51311 rules!3843)))) (= (toValue!10322 (transformation!7634 rBis!167)) (toValue!10322 (transformation!7634 (h!51311 rules!3843))))) (= lambda!129367 lambda!129355))))

(declare-fun bs!596321 () Bool)

(assert (= bs!596321 (and d!1233972 d!1233946)))

(assert (=> bs!596321 (= (and (= (toChars!10181 (transformation!7634 rBis!167)) (toChars!10181 (transformation!7634 r!4142))) (= (toValue!10322 (transformation!7634 rBis!167)) (toValue!10322 (transformation!7634 r!4142)))) (= lambda!129367 lambda!129366))))

(assert (=> d!1233972 true))

(assert (=> d!1233972 (< (dynLambda!19690 order!24213 (toChars!10181 (transformation!7634 rBis!167))) (dynLambda!19689 order!24211 lambda!129367))))

(assert (=> d!1233972 true))

(assert (=> d!1233972 (< (dynLambda!19688 order!24209 (toValue!10322 (transformation!7634 rBis!167))) (dynLambda!19689 order!24211 lambda!129367))))

(assert (=> d!1233972 (= (semiInverseModEq!3303 (toChars!10181 (transformation!7634 rBis!167)) (toValue!10322 (transformation!7634 rBis!167))) (Forall!1563 lambda!129367))))

(declare-fun bs!596322 () Bool)

(assert (= bs!596322 d!1233972))

(declare-fun m!4770145 () Bool)

(assert (=> bs!596322 m!4770145))

(assert (=> d!1233774 d!1233972))

(declare-fun d!1233974 () Bool)

(declare-fun lt!1488937 () Bool)

(assert (=> d!1233974 (= lt!1488937 (select (content!7127 (t!344980 rules!3843)) r!4142))))

(declare-fun e!2595644 () Bool)

(assert (=> d!1233974 (= lt!1488937 e!2595644)))

(declare-fun res!1714431 () Bool)

(assert (=> d!1233974 (=> (not res!1714431) (not e!2595644))))

(assert (=> d!1233974 (= res!1714431 ((_ is Cons!45891) (t!344980 rules!3843)))))

(assert (=> d!1233974 (= (contains!9439 (t!344980 rules!3843) r!4142) lt!1488937)))

(declare-fun b!4180955 () Bool)

(declare-fun e!2595643 () Bool)

(assert (=> b!4180955 (= e!2595644 e!2595643)))

(declare-fun res!1714430 () Bool)

(assert (=> b!4180955 (=> res!1714430 e!2595643)))

(assert (=> b!4180955 (= res!1714430 (= (h!51311 (t!344980 rules!3843)) r!4142))))

(declare-fun b!4180956 () Bool)

(assert (=> b!4180956 (= e!2595643 (contains!9439 (t!344980 (t!344980 rules!3843)) r!4142))))

(assert (= (and d!1233974 res!1714431) b!4180955))

(assert (= (and b!4180955 (not res!1714430)) b!4180956))

(assert (=> d!1233974 m!4770111))

(declare-fun m!4770147 () Bool)

(assert (=> d!1233974 m!4770147))

(declare-fun m!4770149 () Bool)

(assert (=> b!4180956 m!4770149))

(assert (=> b!4180579 d!1233974))

(declare-fun d!1233976 () Bool)

(assert (=> d!1233976 (= (isEmpty!27155 lt!1488732) (not ((_ is Some!9827) lt!1488732)))))

(assert (=> d!1233694 d!1233976))

(declare-fun d!1233978 () Bool)

(assert (=> d!1233978 (= (isEmpty!27154 (_1!24987 lt!1488731)) ((_ is Nil!45889) (_1!24987 lt!1488731)))))

(assert (=> d!1233694 d!1233978))

(declare-fun d!1233980 () Bool)

(declare-fun lt!1489010 () tuple2!43706)

(assert (=> d!1233980 (= (++!11710 (_1!24987 lt!1489010) (_2!24987 lt!1489010)) input!3342)))

(declare-fun sizeTr!308 (List!46013 Int) Int)

(assert (=> d!1233980 (= lt!1489010 (findLongestMatchInner!1585 (regex!7634 r!4142) Nil!45889 0 input!3342 input!3342 (sizeTr!308 input!3342 0)))))

(declare-fun lt!1489012 () Unit!64975)

(declare-fun lt!1489015 () Unit!64975)

(assert (=> d!1233980 (= lt!1489012 lt!1489015)))

(declare-fun lt!1489014 () List!46013)

(declare-fun lt!1489011 () Int)

(assert (=> d!1233980 (= (sizeTr!308 lt!1489014 lt!1489011) (+ (size!33699 lt!1489014) lt!1489011))))

(declare-fun lemmaSizeTrEqualsSize!307 (List!46013 Int) Unit!64975)

(assert (=> d!1233980 (= lt!1489015 (lemmaSizeTrEqualsSize!307 lt!1489014 lt!1489011))))

(assert (=> d!1233980 (= lt!1489011 0)))

(assert (=> d!1233980 (= lt!1489014 Nil!45889)))

(declare-fun lt!1489017 () Unit!64975)

(declare-fun lt!1489013 () Unit!64975)

(assert (=> d!1233980 (= lt!1489017 lt!1489013)))

(declare-fun lt!1489016 () Int)

(assert (=> d!1233980 (= (sizeTr!308 input!3342 lt!1489016) (+ (size!33699 input!3342) lt!1489016))))

(assert (=> d!1233980 (= lt!1489013 (lemmaSizeTrEqualsSize!307 input!3342 lt!1489016))))

(assert (=> d!1233980 (= lt!1489016 0)))

(assert (=> d!1233980 (validRegex!5656 (regex!7634 r!4142))))

(assert (=> d!1233980 (= (findLongestMatch!1498 (regex!7634 r!4142) input!3342) lt!1489010)))

(declare-fun bs!596323 () Bool)

(assert (= bs!596323 d!1233980))

(declare-fun m!4770151 () Bool)

(assert (=> bs!596323 m!4770151))

(declare-fun m!4770153 () Bool)

(assert (=> bs!596323 m!4770153))

(declare-fun m!4770155 () Bool)

(assert (=> bs!596323 m!4770155))

(declare-fun m!4770157 () Bool)

(assert (=> bs!596323 m!4770157))

(assert (=> bs!596323 m!4769495))

(declare-fun m!4770159 () Bool)

(assert (=> bs!596323 m!4770159))

(assert (=> bs!596323 m!4770157))

(declare-fun m!4770161 () Bool)

(assert (=> bs!596323 m!4770161))

(declare-fun m!4770163 () Bool)

(assert (=> bs!596323 m!4770163))

(assert (=> bs!596323 m!4769443))

(declare-fun m!4770165 () Bool)

(assert (=> bs!596323 m!4770165))

(assert (=> d!1233694 d!1233980))

(assert (=> d!1233694 d!1233764))

(declare-fun d!1233982 () Bool)

(declare-fun e!2595661 () Bool)

(assert (=> d!1233982 e!2595661))

(declare-fun res!1714439 () Bool)

(assert (=> d!1233982 (=> res!1714439 e!2595661)))

(declare-fun lt!1489018 () Bool)

(assert (=> d!1233982 (= res!1714439 (not lt!1489018))))

(declare-fun e!2595663 () Bool)

(assert (=> d!1233982 (= lt!1489018 e!2595663)))

(declare-fun res!1714438 () Bool)

(assert (=> d!1233982 (=> res!1714438 e!2595663)))

(assert (=> d!1233982 (= res!1714438 ((_ is Nil!45889) (tail!6719 p!2959)))))

(assert (=> d!1233982 (= (isPrefix!4491 (tail!6719 p!2959) (tail!6719 input!3342)) lt!1489018)))

(declare-fun b!4180986 () Bool)

(declare-fun res!1714436 () Bool)

(declare-fun e!2595662 () Bool)

(assert (=> b!4180986 (=> (not res!1714436) (not e!2595662))))

(assert (=> b!4180986 (= res!1714436 (= (head!8872 (tail!6719 p!2959)) (head!8872 (tail!6719 input!3342))))))

(declare-fun b!4180985 () Bool)

(assert (=> b!4180985 (= e!2595663 e!2595662)))

(declare-fun res!1714437 () Bool)

(assert (=> b!4180985 (=> (not res!1714437) (not e!2595662))))

(assert (=> b!4180985 (= res!1714437 (not ((_ is Nil!45889) (tail!6719 input!3342))))))

(declare-fun b!4180987 () Bool)

(assert (=> b!4180987 (= e!2595662 (isPrefix!4491 (tail!6719 (tail!6719 p!2959)) (tail!6719 (tail!6719 input!3342))))))

(declare-fun b!4180988 () Bool)

(assert (=> b!4180988 (= e!2595661 (>= (size!33699 (tail!6719 input!3342)) (size!33699 (tail!6719 p!2959))))))

(assert (= (and d!1233982 (not res!1714438)) b!4180985))

(assert (= (and b!4180985 res!1714437) b!4180986))

(assert (= (and b!4180986 res!1714436) b!4180987))

(assert (= (and d!1233982 (not res!1714439)) b!4180988))

(assert (=> b!4180986 m!4769745))

(declare-fun m!4770167 () Bool)

(assert (=> b!4180986 m!4770167))

(assert (=> b!4180986 m!4769497))

(assert (=> b!4180986 m!4770133))

(assert (=> b!4180987 m!4769745))

(declare-fun m!4770169 () Bool)

(assert (=> b!4180987 m!4770169))

(assert (=> b!4180987 m!4769497))

(assert (=> b!4180987 m!4770137))

(assert (=> b!4180987 m!4770169))

(assert (=> b!4180987 m!4770137))

(declare-fun m!4770171 () Bool)

(assert (=> b!4180987 m!4770171))

(assert (=> b!4180988 m!4769497))

(assert (=> b!4180988 m!4770141))

(assert (=> b!4180988 m!4769745))

(declare-fun m!4770173 () Bool)

(assert (=> b!4180988 m!4770173))

(assert (=> b!4180589 d!1233982))

(assert (=> b!4180589 d!1233826))

(assert (=> b!4180589 d!1233970))

(assert (=> d!1233752 d!1233960))

(declare-fun d!1233984 () Bool)

(declare-fun lt!1489019 () List!46013)

(assert (=> d!1233984 (= (++!11710 (t!344978 p!2959) lt!1489019) (tail!6719 input!3342))))

(declare-fun e!2595664 () List!46013)

(assert (=> d!1233984 (= lt!1489019 e!2595664)))

(declare-fun c!713974 () Bool)

(assert (=> d!1233984 (= c!713974 ((_ is Cons!45889) (t!344978 p!2959)))))

(assert (=> d!1233984 (>= (size!33699 (tail!6719 input!3342)) (size!33699 (t!344978 p!2959)))))

(assert (=> d!1233984 (= (getSuffix!2784 (tail!6719 input!3342) (t!344978 p!2959)) lt!1489019)))

(declare-fun b!4180989 () Bool)

(assert (=> b!4180989 (= e!2595664 (getSuffix!2784 (tail!6719 (tail!6719 input!3342)) (t!344978 (t!344978 p!2959))))))

(declare-fun b!4180990 () Bool)

(assert (=> b!4180990 (= e!2595664 (tail!6719 input!3342))))

(assert (= (and d!1233984 c!713974) b!4180989))

(assert (= (and d!1233984 (not c!713974)) b!4180990))

(declare-fun m!4770175 () Bool)

(assert (=> d!1233984 m!4770175))

(assert (=> d!1233984 m!4769497))

(assert (=> d!1233984 m!4770141))

(assert (=> d!1233984 m!4769573))

(assert (=> b!4180989 m!4769497))

(assert (=> b!4180989 m!4770137))

(assert (=> b!4180989 m!4770137))

(declare-fun m!4770177 () Bool)

(assert (=> b!4180989 m!4770177))

(assert (=> b!4180276 d!1233984))

(assert (=> b!4180276 d!1233970))

(assert (=> bm!291605 d!1233936))

(assert (=> b!4180337 d!1233812))

(declare-fun d!1233986 () Bool)

(declare-fun lt!1489020 () Int)

(assert (=> d!1233986 (>= lt!1489020 0)))

(declare-fun e!2595665 () Int)

(assert (=> d!1233986 (= lt!1489020 e!2595665)))

(declare-fun c!713975 () Bool)

(assert (=> d!1233986 (= c!713975 ((_ is Nil!45889) (originalCharacters!8022 (_1!24985 (get!14914 lt!1488732)))))))

(assert (=> d!1233986 (= (size!33699 (originalCharacters!8022 (_1!24985 (get!14914 lt!1488732)))) lt!1489020)))

(declare-fun b!4180991 () Bool)

(assert (=> b!4180991 (= e!2595665 0)))

(declare-fun b!4180992 () Bool)

(assert (=> b!4180992 (= e!2595665 (+ 1 (size!33699 (t!344978 (originalCharacters!8022 (_1!24985 (get!14914 lt!1488732)))))))))

(assert (= (and d!1233986 c!713975) b!4180991))

(assert (= (and d!1233986 (not c!713975)) b!4180992))

(declare-fun m!4770179 () Bool)

(assert (=> b!4180992 m!4770179))

(assert (=> b!4180337 d!1233986))

(assert (=> d!1233702 d!1233686))

(declare-fun d!1233988 () Bool)

(assert (=> d!1233988 (isPrefix!4491 input!3342 input!3342)))

(assert (=> d!1233988 true))

(declare-fun _$45!2054 () Unit!64975)

(assert (=> d!1233988 (= (choose!25586 input!3342 input!3342) _$45!2054)))

(declare-fun bs!596324 () Bool)

(assert (= bs!596324 d!1233988))

(assert (=> bs!596324 m!4769453))

(assert (=> d!1233702 d!1233988))

(declare-fun d!1233990 () Bool)

(declare-fun lt!1489021 () Int)

(assert (=> d!1233990 (>= lt!1489021 0)))

(declare-fun e!2595666 () Int)

(assert (=> d!1233990 (= lt!1489021 e!2595666)))

(declare-fun c!713976 () Bool)

(assert (=> d!1233990 (= c!713976 ((_ is Nil!45889) (t!344978 pBis!107)))))

(assert (=> d!1233990 (= (size!33699 (t!344978 pBis!107)) lt!1489021)))

(declare-fun b!4180993 () Bool)

(assert (=> b!4180993 (= e!2595666 0)))

(declare-fun b!4180994 () Bool)

(assert (=> b!4180994 (= e!2595666 (+ 1 (size!33699 (t!344978 (t!344978 pBis!107)))))))

(assert (= (and d!1233990 c!713976) b!4180993))

(assert (= (and d!1233990 (not c!713976)) b!4180994))

(declare-fun m!4770181 () Bool)

(assert (=> b!4180994 m!4770181))

(assert (=> b!4180647 d!1233990))

(declare-fun b!4180995 () Bool)

(declare-fun e!2595672 () Bool)

(assert (=> b!4180995 (= e!2595672 (nullable!4395 (derivativeStep!3785 (regex!7634 r!4142) (head!8872 p!2959))))))

(declare-fun b!4180996 () Bool)

(declare-fun res!1714446 () Bool)

(declare-fun e!2595669 () Bool)

(assert (=> b!4180996 (=> (not res!1714446) (not e!2595669))))

(assert (=> b!4180996 (= res!1714446 (isEmpty!27154 (tail!6719 (tail!6719 p!2959))))))

(declare-fun b!4180997 () Bool)

(declare-fun res!1714440 () Bool)

(assert (=> b!4180997 (=> (not res!1714440) (not e!2595669))))

(declare-fun call!291665 () Bool)

(assert (=> b!4180997 (= res!1714440 (not call!291665))))

(declare-fun b!4180998 () Bool)

(declare-fun e!2595668 () Bool)

(declare-fun e!2595670 () Bool)

(assert (=> b!4180998 (= e!2595668 e!2595670)))

(declare-fun res!1714443 () Bool)

(assert (=> b!4180998 (=> res!1714443 e!2595670)))

(assert (=> b!4180998 (= res!1714443 call!291665)))

(declare-fun b!4180999 () Bool)

(declare-fun res!1714445 () Bool)

(declare-fun e!2595671 () Bool)

(assert (=> b!4180999 (=> res!1714445 e!2595671)))

(assert (=> b!4180999 (= res!1714445 (not ((_ is ElementMatch!12539) (derivativeStep!3785 (regex!7634 r!4142) (head!8872 p!2959)))))))

(declare-fun e!2595667 () Bool)

(assert (=> b!4180999 (= e!2595667 e!2595671)))

(declare-fun b!4181000 () Bool)

(assert (=> b!4181000 (= e!2595670 (not (= (head!8872 (tail!6719 p!2959)) (c!713831 (derivativeStep!3785 (regex!7634 r!4142) (head!8872 p!2959))))))))

(declare-fun bm!291660 () Bool)

(assert (=> bm!291660 (= call!291665 (isEmpty!27154 (tail!6719 p!2959)))))

(declare-fun b!4181001 () Bool)

(declare-fun lt!1489022 () Bool)

(assert (=> b!4181001 (= e!2595667 (not lt!1489022))))

(declare-fun b!4181002 () Bool)

(assert (=> b!4181002 (= e!2595672 (matchR!6278 (derivativeStep!3785 (derivativeStep!3785 (regex!7634 r!4142) (head!8872 p!2959)) (head!8872 (tail!6719 p!2959))) (tail!6719 (tail!6719 p!2959))))))

(declare-fun b!4181003 () Bool)

(assert (=> b!4181003 (= e!2595669 (= (head!8872 (tail!6719 p!2959)) (c!713831 (derivativeStep!3785 (regex!7634 r!4142) (head!8872 p!2959)))))))

(declare-fun b!4181004 () Bool)

(declare-fun e!2595673 () Bool)

(assert (=> b!4181004 (= e!2595673 e!2595667)))

(declare-fun c!713979 () Bool)

(assert (=> b!4181004 (= c!713979 ((_ is EmptyLang!12539) (derivativeStep!3785 (regex!7634 r!4142) (head!8872 p!2959))))))

(declare-fun b!4181005 () Bool)

(assert (=> b!4181005 (= e!2595671 e!2595668)))

(declare-fun res!1714442 () Bool)

(assert (=> b!4181005 (=> (not res!1714442) (not e!2595668))))

(assert (=> b!4181005 (= res!1714442 (not lt!1489022))))

(declare-fun b!4181006 () Bool)

(declare-fun res!1714441 () Bool)

(assert (=> b!4181006 (=> res!1714441 e!2595671)))

(assert (=> b!4181006 (= res!1714441 e!2595669)))

(declare-fun res!1714444 () Bool)

(assert (=> b!4181006 (=> (not res!1714444) (not e!2595669))))

(assert (=> b!4181006 (= res!1714444 lt!1489022)))

(declare-fun b!4181007 () Bool)

(assert (=> b!4181007 (= e!2595673 (= lt!1489022 call!291665))))

(declare-fun b!4181008 () Bool)

(declare-fun res!1714447 () Bool)

(assert (=> b!4181008 (=> res!1714447 e!2595670)))

(assert (=> b!4181008 (= res!1714447 (not (isEmpty!27154 (tail!6719 (tail!6719 p!2959)))))))

(declare-fun d!1233992 () Bool)

(assert (=> d!1233992 e!2595673))

(declare-fun c!713977 () Bool)

(assert (=> d!1233992 (= c!713977 ((_ is EmptyExpr!12539) (derivativeStep!3785 (regex!7634 r!4142) (head!8872 p!2959))))))

(assert (=> d!1233992 (= lt!1489022 e!2595672)))

(declare-fun c!713978 () Bool)

(assert (=> d!1233992 (= c!713978 (isEmpty!27154 (tail!6719 p!2959)))))

(assert (=> d!1233992 (validRegex!5656 (derivativeStep!3785 (regex!7634 r!4142) (head!8872 p!2959)))))

(assert (=> d!1233992 (= (matchR!6278 (derivativeStep!3785 (regex!7634 r!4142) (head!8872 p!2959)) (tail!6719 p!2959)) lt!1489022)))

(assert (= (and d!1233992 c!713978) b!4180995))

(assert (= (and d!1233992 (not c!713978)) b!4181002))

(assert (= (and d!1233992 c!713977) b!4181007))

(assert (= (and d!1233992 (not c!713977)) b!4181004))

(assert (= (and b!4181004 c!713979) b!4181001))

(assert (= (and b!4181004 (not c!713979)) b!4180999))

(assert (= (and b!4180999 (not res!1714445)) b!4181006))

(assert (= (and b!4181006 res!1714444) b!4180997))

(assert (= (and b!4180997 res!1714440) b!4180996))

(assert (= (and b!4180996 res!1714446) b!4181003))

(assert (= (and b!4181006 (not res!1714441)) b!4181005))

(assert (= (and b!4181005 res!1714442) b!4180998))

(assert (= (and b!4180998 (not res!1714443)) b!4181008))

(assert (= (and b!4181008 (not res!1714447)) b!4181000))

(assert (= (or b!4181007 b!4180997 b!4180998) bm!291660))

(assert (=> b!4181008 m!4769745))

(assert (=> b!4181008 m!4770169))

(assert (=> b!4181008 m!4770169))

(declare-fun m!4770183 () Bool)

(assert (=> b!4181008 m!4770183))

(assert (=> bm!291660 m!4769745))

(assert (=> bm!291660 m!4769769))

(assert (=> b!4181003 m!4769745))

(assert (=> b!4181003 m!4770167))

(assert (=> b!4181000 m!4769745))

(assert (=> b!4181000 m!4770167))

(assert (=> d!1233992 m!4769745))

(assert (=> d!1233992 m!4769769))

(assert (=> d!1233992 m!4769773))

(declare-fun m!4770185 () Bool)

(assert (=> d!1233992 m!4770185))

(assert (=> b!4180996 m!4769745))

(assert (=> b!4180996 m!4770169))

(assert (=> b!4180996 m!4770169))

(assert (=> b!4180996 m!4770183))

(assert (=> b!4181002 m!4769745))

(assert (=> b!4181002 m!4770167))

(assert (=> b!4181002 m!4769773))

(assert (=> b!4181002 m!4770167))

(declare-fun m!4770187 () Bool)

(assert (=> b!4181002 m!4770187))

(assert (=> b!4181002 m!4769745))

(assert (=> b!4181002 m!4770169))

(assert (=> b!4181002 m!4770187))

(assert (=> b!4181002 m!4770169))

(declare-fun m!4770189 () Bool)

(assert (=> b!4181002 m!4770189))

(assert (=> b!4180995 m!4769773))

(declare-fun m!4770191 () Bool)

(assert (=> b!4180995 m!4770191))

(assert (=> b!4180639 d!1233992))

(declare-fun b!4181043 () Bool)

(declare-fun e!2595692 () Regex!12539)

(declare-fun e!2595696 () Regex!12539)

(assert (=> b!4181043 (= e!2595692 e!2595696)))

(declare-fun c!713998 () Bool)

(assert (=> b!4181043 (= c!713998 ((_ is ElementMatch!12539) (regex!7634 r!4142)))))

(declare-fun b!4181044 () Bool)

(declare-fun e!2595694 () Regex!12539)

(declare-fun call!291684 () Regex!12539)

(assert (=> b!4181044 (= e!2595694 (Concat!20404 call!291684 (regex!7634 r!4142)))))

(declare-fun b!4181045 () Bool)

(declare-fun c!713997 () Bool)

(assert (=> b!4181045 (= c!713997 ((_ is Union!12539) (regex!7634 r!4142)))))

(declare-fun e!2595693 () Regex!12539)

(assert (=> b!4181045 (= e!2595696 e!2595693)))

(declare-fun b!4181046 () Bool)

(declare-fun e!2595695 () Regex!12539)

(declare-fun call!291682 () Regex!12539)

(assert (=> b!4181046 (= e!2595695 (Union!12539 (Concat!20404 call!291682 (regTwo!25590 (regex!7634 r!4142))) EmptyLang!12539))))

(declare-fun b!4181047 () Bool)

(assert (=> b!4181047 (= e!2595696 (ite (= (head!8872 p!2959) (c!713831 (regex!7634 r!4142))) EmptyExpr!12539 EmptyLang!12539))))

(declare-fun b!4181048 () Bool)

(declare-fun call!291685 () Regex!12539)

(assert (=> b!4181048 (= e!2595695 (Union!12539 (Concat!20404 call!291685 (regTwo!25590 (regex!7634 r!4142))) call!291682))))

(declare-fun b!4181049 () Bool)

(declare-fun call!291683 () Regex!12539)

(assert (=> b!4181049 (= e!2595693 (Union!12539 call!291683 call!291685))))

(declare-fun b!4181050 () Bool)

(assert (=> b!4181050 (= e!2595693 e!2595694)))

(declare-fun c!714000 () Bool)

(assert (=> b!4181050 (= c!714000 ((_ is Star!12539) (regex!7634 r!4142)))))

(declare-fun b!4181051 () Bool)

(declare-fun c!713999 () Bool)

(assert (=> b!4181051 (= c!713999 (nullable!4395 (regOne!25590 (regex!7634 r!4142))))))

(assert (=> b!4181051 (= e!2595694 e!2595695)))

(declare-fun bm!291677 () Bool)

(assert (=> bm!291677 (= call!291683 (derivativeStep!3785 (ite c!713997 (regOne!25591 (regex!7634 r!4142)) (ite c!714000 (reg!12868 (regex!7634 r!4142)) (ite c!713999 (regTwo!25590 (regex!7634 r!4142)) (regOne!25590 (regex!7634 r!4142))))) (head!8872 p!2959)))))

(declare-fun bm!291678 () Bool)

(assert (=> bm!291678 (= call!291684 call!291683)))

(declare-fun bm!291679 () Bool)

(assert (=> bm!291679 (= call!291682 call!291684)))

(declare-fun bm!291680 () Bool)

(assert (=> bm!291680 (= call!291685 (derivativeStep!3785 (ite c!713997 (regTwo!25591 (regex!7634 r!4142)) (regOne!25590 (regex!7634 r!4142))) (head!8872 p!2959)))))

(declare-fun b!4181052 () Bool)

(assert (=> b!4181052 (= e!2595692 EmptyLang!12539)))

(declare-fun d!1233994 () Bool)

(declare-fun lt!1489053 () Regex!12539)

(assert (=> d!1233994 (validRegex!5656 lt!1489053)))

(assert (=> d!1233994 (= lt!1489053 e!2595692)))

(declare-fun c!713996 () Bool)

(assert (=> d!1233994 (= c!713996 (or ((_ is EmptyExpr!12539) (regex!7634 r!4142)) ((_ is EmptyLang!12539) (regex!7634 r!4142))))))

(assert (=> d!1233994 (validRegex!5656 (regex!7634 r!4142))))

(assert (=> d!1233994 (= (derivativeStep!3785 (regex!7634 r!4142) (head!8872 p!2959)) lt!1489053)))

(assert (= (and d!1233994 c!713996) b!4181052))

(assert (= (and d!1233994 (not c!713996)) b!4181043))

(assert (= (and b!4181043 c!713998) b!4181047))

(assert (= (and b!4181043 (not c!713998)) b!4181045))

(assert (= (and b!4181045 c!713997) b!4181049))

(assert (= (and b!4181045 (not c!713997)) b!4181050))

(assert (= (and b!4181050 c!714000) b!4181044))

(assert (= (and b!4181050 (not c!714000)) b!4181051))

(assert (= (and b!4181051 c!713999) b!4181048))

(assert (= (and b!4181051 (not c!713999)) b!4181046))

(assert (= (or b!4181048 b!4181046) bm!291679))

(assert (= (or b!4181044 bm!291679) bm!291678))

(assert (= (or b!4181049 b!4181048) bm!291680))

(assert (= (or b!4181049 bm!291678) bm!291677))

(declare-fun m!4770237 () Bool)

(assert (=> b!4181051 m!4770237))

(assert (=> bm!291677 m!4769743))

(declare-fun m!4770239 () Bool)

(assert (=> bm!291677 m!4770239))

(assert (=> bm!291680 m!4769743))

(declare-fun m!4770241 () Bool)

(assert (=> bm!291680 m!4770241))

(declare-fun m!4770243 () Bool)

(assert (=> d!1233994 m!4770243))

(assert (=> d!1233994 m!4769443))

(assert (=> b!4180639 d!1233994))

(assert (=> b!4180639 d!1233834))

(assert (=> b!4180639 d!1233826))

(declare-fun d!1233998 () Bool)

(declare-fun res!1714456 () Bool)

(declare-fun e!2595703 () Bool)

(assert (=> d!1233998 (=> res!1714456 e!2595703)))

(assert (=> d!1233998 (= res!1714456 ((_ is Nil!45891) rules!3843))))

(assert (=> d!1233998 (= (noDuplicateTag!3133 thiss!25986 rules!3843 Nil!45893) e!2595703)))

(declare-fun b!4181059 () Bool)

(declare-fun e!2595704 () Bool)

(assert (=> b!4181059 (= e!2595703 e!2595704)))

(declare-fun res!1714457 () Bool)

(assert (=> b!4181059 (=> (not res!1714457) (not e!2595704))))

(declare-fun contains!9441 (List!46017 String!53186) Bool)

(assert (=> b!4181059 (= res!1714457 (not (contains!9441 Nil!45893 (tag!8498 (h!51311 rules!3843)))))))

(declare-fun b!4181060 () Bool)

(assert (=> b!4181060 (= e!2595704 (noDuplicateTag!3133 thiss!25986 (t!344980 rules!3843) (Cons!45893 (tag!8498 (h!51311 rules!3843)) Nil!45893)))))

(assert (= (and d!1233998 (not res!1714456)) b!4181059))

(assert (= (and b!4181059 res!1714457) b!4181060))

(declare-fun m!4770245 () Bool)

(assert (=> b!4181059 m!4770245))

(declare-fun m!4770247 () Bool)

(assert (=> b!4181060 m!4770247))

(assert (=> b!4180550 d!1233998))

(declare-fun d!1234000 () Bool)

(assert (=> d!1234000 (= (inv!60426 (dynLambda!19691 (toChars!10181 (transformation!7634 (rule!10694 lt!1488696))) (value!238101 lt!1488696))) (isBalanced!3733 (c!713830 (dynLambda!19691 (toChars!10181 (transformation!7634 (rule!10694 lt!1488696))) (value!238101 lt!1488696)))))))

(declare-fun bs!596325 () Bool)

(assert (= bs!596325 d!1234000))

(declare-fun m!4770249 () Bool)

(assert (=> bs!596325 m!4770249))

(assert (=> tb!250219 d!1234000))

(declare-fun d!1234002 () Bool)

(declare-fun e!2595705 () Bool)

(assert (=> d!1234002 e!2595705))

(declare-fun res!1714461 () Bool)

(assert (=> d!1234002 (=> res!1714461 e!2595705)))

(declare-fun lt!1489056 () Bool)

(assert (=> d!1234002 (= res!1714461 (not lt!1489056))))

(declare-fun e!2595707 () Bool)

(assert (=> d!1234002 (= lt!1489056 e!2595707)))

(declare-fun res!1714460 () Bool)

(assert (=> d!1234002 (=> res!1714460 e!2595707)))

(assert (=> d!1234002 (= res!1714460 ((_ is Nil!45889) (tail!6719 input!3342)))))

(assert (=> d!1234002 (= (isPrefix!4491 (tail!6719 input!3342) (tail!6719 input!3342)) lt!1489056)))

(declare-fun b!4181062 () Bool)

(declare-fun res!1714458 () Bool)

(declare-fun e!2595706 () Bool)

(assert (=> b!4181062 (=> (not res!1714458) (not e!2595706))))

(assert (=> b!4181062 (= res!1714458 (= (head!8872 (tail!6719 input!3342)) (head!8872 (tail!6719 input!3342))))))

(declare-fun b!4181061 () Bool)

(assert (=> b!4181061 (= e!2595707 e!2595706)))

(declare-fun res!1714459 () Bool)

(assert (=> b!4181061 (=> (not res!1714459) (not e!2595706))))

(assert (=> b!4181061 (= res!1714459 (not ((_ is Nil!45889) (tail!6719 input!3342))))))

(declare-fun b!4181063 () Bool)

(assert (=> b!4181063 (= e!2595706 (isPrefix!4491 (tail!6719 (tail!6719 input!3342)) (tail!6719 (tail!6719 input!3342))))))

(declare-fun b!4181064 () Bool)

(assert (=> b!4181064 (= e!2595705 (>= (size!33699 (tail!6719 input!3342)) (size!33699 (tail!6719 input!3342))))))

(assert (= (and d!1234002 (not res!1714460)) b!4181061))

(assert (= (and b!4181061 res!1714459) b!4181062))

(assert (= (and b!4181062 res!1714458) b!4181063))

(assert (= (and d!1234002 (not res!1714461)) b!4181064))

(assert (=> b!4181062 m!4769497))

(assert (=> b!4181062 m!4770133))

(assert (=> b!4181062 m!4769497))

(assert (=> b!4181062 m!4770133))

(assert (=> b!4181063 m!4769497))

(assert (=> b!4181063 m!4770137))

(assert (=> b!4181063 m!4769497))

(assert (=> b!4181063 m!4770137))

(assert (=> b!4181063 m!4770137))

(assert (=> b!4181063 m!4770137))

(declare-fun m!4770251 () Bool)

(assert (=> b!4181063 m!4770251))

(assert (=> b!4181064 m!4769497))

(assert (=> b!4181064 m!4770141))

(assert (=> b!4181064 m!4769497))

(assert (=> b!4181064 m!4770141))

(assert (=> b!4180308 d!1234002))

(assert (=> b!4180308 d!1233970))

(declare-fun bs!596326 () Bool)

(declare-fun d!1234004 () Bool)

(assert (= bs!596326 (and d!1234004 d!1233704)))

(declare-fun lambda!129368 () Int)

(assert (=> bs!596326 (= lambda!129368 lambda!129345)))

(declare-fun bs!596327 () Bool)

(assert (= bs!596327 (and d!1234004 d!1233830)))

(assert (=> bs!596327 (= (and (= (toChars!10181 (transformation!7634 r!4142)) (toChars!10181 (transformation!7634 (h!51311 rules!3843)))) (= (toValue!10322 (transformation!7634 r!4142)) (toValue!10322 (transformation!7634 (h!51311 rules!3843))))) (= lambda!129368 lambda!129355))))

(declare-fun bs!596328 () Bool)

(assert (= bs!596328 (and d!1234004 d!1233946)))

(assert (=> bs!596328 (= lambda!129368 lambda!129366)))

(declare-fun bs!596329 () Bool)

(assert (= bs!596329 (and d!1234004 d!1233972)))

(assert (=> bs!596329 (= (and (= (toChars!10181 (transformation!7634 r!4142)) (toChars!10181 (transformation!7634 rBis!167))) (= (toValue!10322 (transformation!7634 r!4142)) (toValue!10322 (transformation!7634 rBis!167)))) (= lambda!129368 lambda!129367))))

(assert (=> d!1234004 true))

(assert (=> d!1234004 (< (dynLambda!19690 order!24213 (toChars!10181 (transformation!7634 r!4142))) (dynLambda!19689 order!24211 lambda!129368))))

(assert (=> d!1234004 true))

(assert (=> d!1234004 (< (dynLambda!19688 order!24209 (toValue!10322 (transformation!7634 r!4142))) (dynLambda!19689 order!24211 lambda!129368))))

(assert (=> d!1234004 (= (semiInverseModEq!3303 (toChars!10181 (transformation!7634 r!4142)) (toValue!10322 (transformation!7634 r!4142))) (Forall!1563 lambda!129368))))

(declare-fun bs!596330 () Bool)

(assert (= bs!596330 d!1234004))

(declare-fun m!4770255 () Bool)

(assert (=> bs!596330 m!4770255))

(assert (=> d!1233756 d!1234004))

(assert (=> b!4180632 d!1233784))

(declare-fun d!1234008 () Bool)

(declare-fun lt!1489059 () Int)

(assert (=> d!1234008 (>= lt!1489059 0)))

(declare-fun e!2595711 () Int)

(assert (=> d!1234008 (= lt!1489059 e!2595711)))

(declare-fun c!714002 () Bool)

(assert (=> d!1234008 (= c!714002 ((_ is Nil!45889) (t!344978 p!2959)))))

(assert (=> d!1234008 (= (size!33699 (t!344978 p!2959)) lt!1489059)))

(declare-fun b!4181070 () Bool)

(assert (=> b!4181070 (= e!2595711 0)))

(declare-fun b!4181071 () Bool)

(assert (=> b!4181071 (= e!2595711 (+ 1 (size!33699 (t!344978 (t!344978 p!2959)))))))

(assert (= (and d!1234008 c!714002) b!4181070))

(assert (= (and d!1234008 (not c!714002)) b!4181071))

(declare-fun m!4770257 () Bool)

(assert (=> b!4181071 m!4770257))

(assert (=> b!4180344 d!1234008))

(declare-fun b!4181072 () Bool)

(declare-fun e!2595713 () List!46013)

(assert (=> b!4181072 (= e!2595713 (_2!24985 (get!14914 lt!1488732)))))

(declare-fun d!1234010 () Bool)

(declare-fun e!2595712 () Bool)

(assert (=> d!1234010 e!2595712))

(declare-fun res!1714466 () Bool)

(assert (=> d!1234010 (=> (not res!1714466) (not e!2595712))))

(declare-fun lt!1489060 () List!46013)

(assert (=> d!1234010 (= res!1714466 (= (content!7130 lt!1489060) ((_ map or) (content!7130 (list!16577 (charsOf!5073 (_1!24985 (get!14914 lt!1488732))))) (content!7130 (_2!24985 (get!14914 lt!1488732))))))))

(assert (=> d!1234010 (= lt!1489060 e!2595713)))

(declare-fun c!714003 () Bool)

(assert (=> d!1234010 (= c!714003 ((_ is Nil!45889) (list!16577 (charsOf!5073 (_1!24985 (get!14914 lt!1488732))))))))

(assert (=> d!1234010 (= (++!11710 (list!16577 (charsOf!5073 (_1!24985 (get!14914 lt!1488732)))) (_2!24985 (get!14914 lt!1488732))) lt!1489060)))

(declare-fun b!4181075 () Bool)

(assert (=> b!4181075 (= e!2595712 (or (not (= (_2!24985 (get!14914 lt!1488732)) Nil!45889)) (= lt!1489060 (list!16577 (charsOf!5073 (_1!24985 (get!14914 lt!1488732)))))))))

(declare-fun b!4181073 () Bool)

(assert (=> b!4181073 (= e!2595713 (Cons!45889 (h!51309 (list!16577 (charsOf!5073 (_1!24985 (get!14914 lt!1488732))))) (++!11710 (t!344978 (list!16577 (charsOf!5073 (_1!24985 (get!14914 lt!1488732))))) (_2!24985 (get!14914 lt!1488732)))))))

(declare-fun b!4181074 () Bool)

(declare-fun res!1714465 () Bool)

(assert (=> b!4181074 (=> (not res!1714465) (not e!2595712))))

(assert (=> b!4181074 (= res!1714465 (= (size!33699 lt!1489060) (+ (size!33699 (list!16577 (charsOf!5073 (_1!24985 (get!14914 lt!1488732))))) (size!33699 (_2!24985 (get!14914 lt!1488732))))))))

(assert (= (and d!1234010 c!714003) b!4181072))

(assert (= (and d!1234010 (not c!714003)) b!4181073))

(assert (= (and d!1234010 res!1714466) b!4181074))

(assert (= (and b!4181074 res!1714465) b!4181075))

(declare-fun m!4770271 () Bool)

(assert (=> d!1234010 m!4770271))

(assert (=> d!1234010 m!4769535))

(declare-fun m!4770273 () Bool)

(assert (=> d!1234010 m!4770273))

(declare-fun m!4770275 () Bool)

(assert (=> d!1234010 m!4770275))

(declare-fun m!4770277 () Bool)

(assert (=> b!4181073 m!4770277))

(declare-fun m!4770279 () Bool)

(assert (=> b!4181074 m!4770279))

(assert (=> b!4181074 m!4769535))

(declare-fun m!4770281 () Bool)

(assert (=> b!4181074 m!4770281))

(assert (=> b!4181074 m!4769557))

(assert (=> b!4180335 d!1234010))

(assert (=> b!4180335 d!1233926))

(assert (=> b!4180335 d!1233928))

(assert (=> b!4180335 d!1233812))

(declare-fun b!4181078 () Bool)

(declare-fun b_free!121475 () Bool)

(declare-fun b_next!122179 () Bool)

(assert (=> b!4181078 (= b_free!121475 (not b_next!122179))))

(declare-fun t!345088 () Bool)

(declare-fun tb!250287 () Bool)

(assert (=> (and b!4181078 (= (toValue!10322 (transformation!7634 (h!51311 (t!344980 (t!344980 rules!3843))))) (toValue!10322 (transformation!7634 r!4142))) t!345088) tb!250287))

(declare-fun result!304984 () Bool)

(assert (= result!304984 result!304860))

(assert (=> d!1233682 t!345088))

(declare-fun t!345090 () Bool)

(declare-fun tb!250289 () Bool)

(assert (=> (and b!4181078 (= (toValue!10322 (transformation!7634 (h!51311 (t!344980 (t!344980 rules!3843))))) (toValue!10322 (transformation!7634 r!4142))) t!345090) tb!250289))

(declare-fun result!304986 () Bool)

(assert (= result!304986 result!304968))

(assert (=> d!1233946 t!345090))

(assert (=> d!1233944 t!345090))

(declare-fun tb!250291 () Bool)

(declare-fun t!345092 () Bool)

(assert (=> (and b!4181078 (= (toValue!10322 (transformation!7634 (h!51311 (t!344980 (t!344980 rules!3843))))) (toValue!10322 (transformation!7634 (rule!10694 (_1!24985 (get!14914 lt!1488732)))))) t!345092) tb!250291))

(declare-fun result!304988 () Bool)

(assert (= result!304988 result!304960))

(assert (=> d!1233930 t!345092))

(assert (=> d!1233704 t!345088))

(declare-fun b_and!327057 () Bool)

(declare-fun tp!1277726 () Bool)

(assert (=> b!4181078 (= tp!1277726 (and (=> t!345092 result!304988) (=> t!345088 result!304984) (=> t!345090 result!304986) b_and!327057))))

(declare-fun b_free!121477 () Bool)

(declare-fun b_next!122181 () Bool)

(assert (=> b!4181078 (= b_free!121477 (not b_next!122181))))

(declare-fun tb!250293 () Bool)

(declare-fun t!345094 () Bool)

(assert (=> (and b!4181078 (= (toChars!10181 (transformation!7634 (h!51311 (t!344980 (t!344980 rules!3843))))) (toChars!10181 (transformation!7634 r!4142))) t!345094) tb!250293))

(declare-fun result!304990 () Bool)

(assert (= result!304990 result!304902))

(assert (=> d!1233704 t!345094))

(declare-fun t!345096 () Bool)

(declare-fun tb!250295 () Bool)

(assert (=> (and b!4181078 (= (toChars!10181 (transformation!7634 (h!51311 (t!344980 (t!344980 rules!3843))))) (toChars!10181 (transformation!7634 (rule!10694 lt!1488696)))) t!345096) tb!250295))

(declare-fun result!304992 () Bool)

(assert (= result!304992 result!304910))

(assert (=> b!4180595 t!345096))

(declare-fun t!345098 () Bool)

(declare-fun tb!250297 () Bool)

(assert (=> (and b!4181078 (= (toChars!10181 (transformation!7634 (h!51311 (t!344980 (t!344980 rules!3843))))) (toChars!10181 (transformation!7634 (rule!10694 (_1!24985 (get!14914 lt!1488732)))))) t!345098) tb!250297))

(declare-fun result!304994 () Bool)

(assert (= result!304994 result!304952))

(assert (=> d!1233928 t!345098))

(declare-fun tb!250299 () Bool)

(declare-fun t!345100 () Bool)

(assert (=> (and b!4181078 (= (toChars!10181 (transformation!7634 (h!51311 (t!344980 (t!344980 rules!3843))))) (toChars!10181 (transformation!7634 r!4142))) t!345100) tb!250299))

(declare-fun result!304996 () Bool)

(assert (= result!304996 result!304976))

(assert (=> d!1233946 t!345100))

(declare-fun b_and!327059 () Bool)

(declare-fun tp!1277724 () Bool)

(assert (=> b!4181078 (= tp!1277724 (and (=> t!345094 result!304990) (=> t!345096 result!304992) (=> t!345098 result!304994) (=> t!345100 result!304996) b_and!327059))))

(declare-fun e!2595716 () Bool)

(assert (=> b!4181078 (= e!2595716 (and tp!1277726 tp!1277724))))

(declare-fun e!2595714 () Bool)

(declare-fun b!4181077 () Bool)

(declare-fun tp!1277727 () Bool)

(assert (=> b!4181077 (= e!2595714 (and tp!1277727 (inv!60418 (tag!8498 (h!51311 (t!344980 (t!344980 rules!3843))))) (inv!60421 (transformation!7634 (h!51311 (t!344980 (t!344980 rules!3843))))) e!2595716))))

(declare-fun b!4181076 () Bool)

(declare-fun e!2595717 () Bool)

(declare-fun tp!1277725 () Bool)

(assert (=> b!4181076 (= e!2595717 (and e!2595714 tp!1277725))))

(assert (=> b!4180681 (= tp!1277712 e!2595717)))

(assert (= b!4181077 b!4181078))

(assert (= b!4181076 b!4181077))

(assert (= (and b!4180681 ((_ is Cons!45891) (t!344980 (t!344980 rules!3843)))) b!4181076))

(declare-fun m!4770285 () Bool)

(assert (=> b!4181077 m!4770285))

(declare-fun m!4770287 () Bool)

(assert (=> b!4181077 m!4770287))

(declare-fun tp!1277737 () Bool)

(declare-fun b!4181088 () Bool)

(declare-fun tp!1277735 () Bool)

(declare-fun e!2595723 () Bool)

(assert (=> b!4181088 (= e!2595723 (and (inv!60425 (left!34184 (c!713830 (dynLambda!19691 (toChars!10181 (transformation!7634 (rule!10694 lt!1488696))) (value!238101 lt!1488696))))) tp!1277735 (inv!60425 (right!34514 (c!713830 (dynLambda!19691 (toChars!10181 (transformation!7634 (rule!10694 lt!1488696))) (value!238101 lt!1488696))))) tp!1277737))))

(declare-fun b!4181090 () Bool)

(declare-fun e!2595724 () Bool)

(declare-fun tp!1277736 () Bool)

(assert (=> b!4181090 (= e!2595724 tp!1277736)))

(declare-fun b!4181089 () Bool)

(declare-fun inv!60431 (IArray!27695) Bool)

(assert (=> b!4181089 (= e!2595723 (and (inv!60431 (xs!17151 (c!713830 (dynLambda!19691 (toChars!10181 (transformation!7634 (rule!10694 lt!1488696))) (value!238101 lt!1488696))))) e!2595724))))

(assert (=> b!4180597 (= tp!1277678 (and (inv!60425 (c!713830 (dynLambda!19691 (toChars!10181 (transformation!7634 (rule!10694 lt!1488696))) (value!238101 lt!1488696)))) e!2595723))))

(assert (= (and b!4180597 ((_ is Node!13845) (c!713830 (dynLambda!19691 (toChars!10181 (transformation!7634 (rule!10694 lt!1488696))) (value!238101 lt!1488696))))) b!4181088))

(assert (= b!4181089 b!4181090))

(assert (= (and b!4180597 ((_ is Leaf!21405) (c!713830 (dynLambda!19691 (toChars!10181 (transformation!7634 (rule!10694 lt!1488696))) (value!238101 lt!1488696))))) b!4181089))

(declare-fun m!4770297 () Bool)

(assert (=> b!4181088 m!4770297))

(declare-fun m!4770299 () Bool)

(assert (=> b!4181088 m!4770299))

(declare-fun m!4770301 () Bool)

(assert (=> b!4181089 m!4770301))

(assert (=> b!4180597 m!4769749))

(declare-fun b!4181094 () Bool)

(declare-fun e!2595725 () Bool)

(declare-fun tp!1277741 () Bool)

(declare-fun tp!1277739 () Bool)

(assert (=> b!4181094 (= e!2595725 (and tp!1277741 tp!1277739))))

(assert (=> b!4180662 (= tp!1277692 e!2595725)))

(declare-fun b!4181091 () Bool)

(assert (=> b!4181091 (= e!2595725 tp_is_empty!22041)))

(declare-fun b!4181092 () Bool)

(declare-fun tp!1277738 () Bool)

(declare-fun tp!1277742 () Bool)

(assert (=> b!4181092 (= e!2595725 (and tp!1277738 tp!1277742))))

(declare-fun b!4181093 () Bool)

(declare-fun tp!1277740 () Bool)

(assert (=> b!4181093 (= e!2595725 tp!1277740)))

(assert (= (and b!4180662 ((_ is ElementMatch!12539) (regOne!25591 (regex!7634 r!4142)))) b!4181091))

(assert (= (and b!4180662 ((_ is Concat!20404) (regOne!25591 (regex!7634 r!4142)))) b!4181092))

(assert (= (and b!4180662 ((_ is Star!12539) (regOne!25591 (regex!7634 r!4142)))) b!4181093))

(assert (= (and b!4180662 ((_ is Union!12539) (regOne!25591 (regex!7634 r!4142)))) b!4181094))

(declare-fun b!4181098 () Bool)

(declare-fun e!2595726 () Bool)

(declare-fun tp!1277746 () Bool)

(declare-fun tp!1277744 () Bool)

(assert (=> b!4181098 (= e!2595726 (and tp!1277746 tp!1277744))))

(assert (=> b!4180662 (= tp!1277690 e!2595726)))

(declare-fun b!4181095 () Bool)

(assert (=> b!4181095 (= e!2595726 tp_is_empty!22041)))

(declare-fun b!4181096 () Bool)

(declare-fun tp!1277743 () Bool)

(declare-fun tp!1277747 () Bool)

(assert (=> b!4181096 (= e!2595726 (and tp!1277743 tp!1277747))))

(declare-fun b!4181097 () Bool)

(declare-fun tp!1277745 () Bool)

(assert (=> b!4181097 (= e!2595726 tp!1277745)))

(assert (= (and b!4180662 ((_ is ElementMatch!12539) (regTwo!25591 (regex!7634 r!4142)))) b!4181095))

(assert (= (and b!4180662 ((_ is Concat!20404) (regTwo!25591 (regex!7634 r!4142)))) b!4181096))

(assert (= (and b!4180662 ((_ is Star!12539) (regTwo!25591 (regex!7634 r!4142)))) b!4181097))

(assert (= (and b!4180662 ((_ is Union!12539) (regTwo!25591 (regex!7634 r!4142)))) b!4181098))

(declare-fun b!4181102 () Bool)

(declare-fun e!2595727 () Bool)

(declare-fun tp!1277751 () Bool)

(declare-fun tp!1277749 () Bool)

(assert (=> b!4181102 (= e!2595727 (and tp!1277751 tp!1277749))))

(assert (=> b!4180686 (= tp!1277717 e!2595727)))

(declare-fun b!4181099 () Bool)

(assert (=> b!4181099 (= e!2595727 tp_is_empty!22041)))

(declare-fun b!4181100 () Bool)

(declare-fun tp!1277748 () Bool)

(declare-fun tp!1277752 () Bool)

(assert (=> b!4181100 (= e!2595727 (and tp!1277748 tp!1277752))))

(declare-fun b!4181101 () Bool)

(declare-fun tp!1277750 () Bool)

(assert (=> b!4181101 (= e!2595727 tp!1277750)))

(assert (= (and b!4180686 ((_ is ElementMatch!12539) (reg!12868 (regex!7634 rBis!167)))) b!4181099))

(assert (= (and b!4180686 ((_ is Concat!20404) (reg!12868 (regex!7634 rBis!167)))) b!4181100))

(assert (= (and b!4180686 ((_ is Star!12539) (reg!12868 (regex!7634 rBis!167)))) b!4181101))

(assert (= (and b!4180686 ((_ is Union!12539) (reg!12868 (regex!7634 rBis!167)))) b!4181102))

(declare-fun b!4181106 () Bool)

(declare-fun e!2595728 () Bool)

(declare-fun tp!1277756 () Bool)

(declare-fun tp!1277754 () Bool)

(assert (=> b!4181106 (= e!2595728 (and tp!1277756 tp!1277754))))

(assert (=> b!4180671 (= tp!1277700 e!2595728)))

(declare-fun b!4181103 () Bool)

(assert (=> b!4181103 (= e!2595728 tp_is_empty!22041)))

(declare-fun b!4181104 () Bool)

(declare-fun tp!1277753 () Bool)

(declare-fun tp!1277757 () Bool)

(assert (=> b!4181104 (= e!2595728 (and tp!1277753 tp!1277757))))

(declare-fun b!4181105 () Bool)

(declare-fun tp!1277755 () Bool)

(assert (=> b!4181105 (= e!2595728 tp!1277755)))

(assert (= (and b!4180671 ((_ is ElementMatch!12539) (regOne!25591 (regex!7634 (h!51311 rules!3843))))) b!4181103))

(assert (= (and b!4180671 ((_ is Concat!20404) (regOne!25591 (regex!7634 (h!51311 rules!3843))))) b!4181104))

(assert (= (and b!4180671 ((_ is Star!12539) (regOne!25591 (regex!7634 (h!51311 rules!3843))))) b!4181105))

(assert (= (and b!4180671 ((_ is Union!12539) (regOne!25591 (regex!7634 (h!51311 rules!3843))))) b!4181106))

(declare-fun b!4181110 () Bool)

(declare-fun e!2595735 () Bool)

(declare-fun tp!1277761 () Bool)

(declare-fun tp!1277759 () Bool)

(assert (=> b!4181110 (= e!2595735 (and tp!1277761 tp!1277759))))

(assert (=> b!4180671 (= tp!1277698 e!2595735)))

(declare-fun b!4181107 () Bool)

(assert (=> b!4181107 (= e!2595735 tp_is_empty!22041)))

(declare-fun b!4181108 () Bool)

(declare-fun tp!1277758 () Bool)

(declare-fun tp!1277762 () Bool)

(assert (=> b!4181108 (= e!2595735 (and tp!1277758 tp!1277762))))

(declare-fun b!4181109 () Bool)

(declare-fun tp!1277760 () Bool)

(assert (=> b!4181109 (= e!2595735 tp!1277760)))

(assert (= (and b!4180671 ((_ is ElementMatch!12539) (regTwo!25591 (regex!7634 (h!51311 rules!3843))))) b!4181107))

(assert (= (and b!4180671 ((_ is Concat!20404) (regTwo!25591 (regex!7634 (h!51311 rules!3843))))) b!4181108))

(assert (= (and b!4180671 ((_ is Star!12539) (regTwo!25591 (regex!7634 (h!51311 rules!3843))))) b!4181109))

(assert (= (and b!4180671 ((_ is Union!12539) (regTwo!25591 (regex!7634 (h!51311 rules!3843))))) b!4181110))

(declare-fun b!4181123 () Bool)

(declare-fun e!2595737 () Bool)

(declare-fun tp!1277766 () Bool)

(declare-fun tp!1277764 () Bool)

(assert (=> b!4181123 (= e!2595737 (and tp!1277766 tp!1277764))))

(assert (=> b!4180670 (= tp!1277699 e!2595737)))

(declare-fun b!4181120 () Bool)

(assert (=> b!4181120 (= e!2595737 tp_is_empty!22041)))

(declare-fun b!4181121 () Bool)

(declare-fun tp!1277763 () Bool)

(declare-fun tp!1277767 () Bool)

(assert (=> b!4181121 (= e!2595737 (and tp!1277763 tp!1277767))))

(declare-fun b!4181122 () Bool)

(declare-fun tp!1277765 () Bool)

(assert (=> b!4181122 (= e!2595737 tp!1277765)))

(assert (= (and b!4180670 ((_ is ElementMatch!12539) (reg!12868 (regex!7634 (h!51311 rules!3843))))) b!4181120))

(assert (= (and b!4180670 ((_ is Concat!20404) (reg!12868 (regex!7634 (h!51311 rules!3843))))) b!4181121))

(assert (= (and b!4180670 ((_ is Star!12539) (reg!12868 (regex!7634 (h!51311 rules!3843))))) b!4181122))

(assert (= (and b!4180670 ((_ is Union!12539) (reg!12868 (regex!7634 (h!51311 rules!3843))))) b!4181123))

(declare-fun b!4181127 () Bool)

(declare-fun e!2595738 () Bool)

(declare-fun tp!1277771 () Bool)

(declare-fun tp!1277769 () Bool)

(assert (=> b!4181127 (= e!2595738 (and tp!1277771 tp!1277769))))

(assert (=> b!4180682 (= tp!1277714 e!2595738)))

(declare-fun b!4181124 () Bool)

(assert (=> b!4181124 (= e!2595738 tp_is_empty!22041)))

(declare-fun b!4181125 () Bool)

(declare-fun tp!1277768 () Bool)

(declare-fun tp!1277772 () Bool)

(assert (=> b!4181125 (= e!2595738 (and tp!1277768 tp!1277772))))

(declare-fun b!4181126 () Bool)

(declare-fun tp!1277770 () Bool)

(assert (=> b!4181126 (= e!2595738 tp!1277770)))

(assert (= (and b!4180682 ((_ is ElementMatch!12539) (regex!7634 (h!51311 (t!344980 rules!3843))))) b!4181124))

(assert (= (and b!4180682 ((_ is Concat!20404) (regex!7634 (h!51311 (t!344980 rules!3843))))) b!4181125))

(assert (= (and b!4180682 ((_ is Star!12539) (regex!7634 (h!51311 (t!344980 rules!3843))))) b!4181126))

(assert (= (and b!4180682 ((_ is Union!12539) (regex!7634 (h!51311 (t!344980 rules!3843))))) b!4181127))

(declare-fun b!4181131 () Bool)

(declare-fun e!2595739 () Bool)

(declare-fun tp!1277776 () Bool)

(declare-fun tp!1277774 () Bool)

(assert (=> b!4181131 (= e!2595739 (and tp!1277776 tp!1277774))))

(assert (=> b!4180685 (= tp!1277715 e!2595739)))

(declare-fun b!4181128 () Bool)

(assert (=> b!4181128 (= e!2595739 tp_is_empty!22041)))

(declare-fun b!4181129 () Bool)

(declare-fun tp!1277773 () Bool)

(declare-fun tp!1277777 () Bool)

(assert (=> b!4181129 (= e!2595739 (and tp!1277773 tp!1277777))))

(declare-fun b!4181130 () Bool)

(declare-fun tp!1277775 () Bool)

(assert (=> b!4181130 (= e!2595739 tp!1277775)))

(assert (= (and b!4180685 ((_ is ElementMatch!12539) (regOne!25590 (regex!7634 rBis!167)))) b!4181128))

(assert (= (and b!4180685 ((_ is Concat!20404) (regOne!25590 (regex!7634 rBis!167)))) b!4181129))

(assert (= (and b!4180685 ((_ is Star!12539) (regOne!25590 (regex!7634 rBis!167)))) b!4181130))

(assert (= (and b!4180685 ((_ is Union!12539) (regOne!25590 (regex!7634 rBis!167)))) b!4181131))

(declare-fun b!4181135 () Bool)

(declare-fun e!2595740 () Bool)

(declare-fun tp!1277781 () Bool)

(declare-fun tp!1277779 () Bool)

(assert (=> b!4181135 (= e!2595740 (and tp!1277781 tp!1277779))))

(assert (=> b!4180685 (= tp!1277719 e!2595740)))

(declare-fun b!4181132 () Bool)

(assert (=> b!4181132 (= e!2595740 tp_is_empty!22041)))

(declare-fun b!4181133 () Bool)

(declare-fun tp!1277778 () Bool)

(declare-fun tp!1277782 () Bool)

(assert (=> b!4181133 (= e!2595740 (and tp!1277778 tp!1277782))))

(declare-fun b!4181134 () Bool)

(declare-fun tp!1277780 () Bool)

(assert (=> b!4181134 (= e!2595740 tp!1277780)))

(assert (= (and b!4180685 ((_ is ElementMatch!12539) (regTwo!25590 (regex!7634 rBis!167)))) b!4181132))

(assert (= (and b!4180685 ((_ is Concat!20404) (regTwo!25590 (regex!7634 rBis!167)))) b!4181133))

(assert (= (and b!4180685 ((_ is Star!12539) (regTwo!25590 (regex!7634 rBis!167)))) b!4181134))

(assert (= (and b!4180685 ((_ is Union!12539) (regTwo!25590 (regex!7634 rBis!167)))) b!4181135))

(declare-fun b!4181139 () Bool)

(declare-fun e!2595741 () Bool)

(declare-fun tp!1277786 () Bool)

(declare-fun tp!1277784 () Bool)

(assert (=> b!4181139 (= e!2595741 (and tp!1277786 tp!1277784))))

(assert (=> b!4180669 (= tp!1277697 e!2595741)))

(declare-fun b!4181136 () Bool)

(assert (=> b!4181136 (= e!2595741 tp_is_empty!22041)))

(declare-fun b!4181137 () Bool)

(declare-fun tp!1277783 () Bool)

(declare-fun tp!1277787 () Bool)

(assert (=> b!4181137 (= e!2595741 (and tp!1277783 tp!1277787))))

(declare-fun b!4181138 () Bool)

(declare-fun tp!1277785 () Bool)

(assert (=> b!4181138 (= e!2595741 tp!1277785)))

(assert (= (and b!4180669 ((_ is ElementMatch!12539) (regOne!25590 (regex!7634 (h!51311 rules!3843))))) b!4181136))

(assert (= (and b!4180669 ((_ is Concat!20404) (regOne!25590 (regex!7634 (h!51311 rules!3843))))) b!4181137))

(assert (= (and b!4180669 ((_ is Star!12539) (regOne!25590 (regex!7634 (h!51311 rules!3843))))) b!4181138))

(assert (= (and b!4180669 ((_ is Union!12539) (regOne!25590 (regex!7634 (h!51311 rules!3843))))) b!4181139))

(declare-fun b!4181143 () Bool)

(declare-fun e!2595742 () Bool)

(declare-fun tp!1277791 () Bool)

(declare-fun tp!1277789 () Bool)

(assert (=> b!4181143 (= e!2595742 (and tp!1277791 tp!1277789))))

(assert (=> b!4180669 (= tp!1277701 e!2595742)))

(declare-fun b!4181140 () Bool)

(assert (=> b!4181140 (= e!2595742 tp_is_empty!22041)))

(declare-fun b!4181141 () Bool)

(declare-fun tp!1277788 () Bool)

(declare-fun tp!1277792 () Bool)

(assert (=> b!4181141 (= e!2595742 (and tp!1277788 tp!1277792))))

(declare-fun b!4181142 () Bool)

(declare-fun tp!1277790 () Bool)

(assert (=> b!4181142 (= e!2595742 tp!1277790)))

(assert (= (and b!4180669 ((_ is ElementMatch!12539) (regTwo!25590 (regex!7634 (h!51311 rules!3843))))) b!4181140))

(assert (= (and b!4180669 ((_ is Concat!20404) (regTwo!25590 (regex!7634 (h!51311 rules!3843))))) b!4181141))

(assert (= (and b!4180669 ((_ is Star!12539) (regTwo!25590 (regex!7634 (h!51311 rules!3843))))) b!4181142))

(assert (= (and b!4180669 ((_ is Union!12539) (regTwo!25590 (regex!7634 (h!51311 rules!3843))))) b!4181143))

(declare-fun e!2595743 () Bool)

(declare-fun tp!1277793 () Bool)

(declare-fun tp!1277795 () Bool)

(declare-fun b!4181144 () Bool)

(assert (=> b!4181144 (= e!2595743 (and (inv!60425 (left!34184 (c!713830 (dynLambda!19691 (toChars!10181 (transformation!7634 r!4142)) (dynLambda!19687 (toValue!10322 (transformation!7634 r!4142)) lt!1488695))))) tp!1277793 (inv!60425 (right!34514 (c!713830 (dynLambda!19691 (toChars!10181 (transformation!7634 r!4142)) (dynLambda!19687 (toValue!10322 (transformation!7634 r!4142)) lt!1488695))))) tp!1277795))))

(declare-fun b!4181146 () Bool)

(declare-fun e!2595744 () Bool)

(declare-fun tp!1277794 () Bool)

(assert (=> b!4181146 (= e!2595744 tp!1277794)))

(declare-fun b!4181145 () Bool)

(assert (=> b!4181145 (= e!2595743 (and (inv!60431 (xs!17151 (c!713830 (dynLambda!19691 (toChars!10181 (transformation!7634 r!4142)) (dynLambda!19687 (toValue!10322 (transformation!7634 r!4142)) lt!1488695))))) e!2595744))))

(assert (=> b!4180547 (= tp!1277677 (and (inv!60425 (c!713830 (dynLambda!19691 (toChars!10181 (transformation!7634 r!4142)) (dynLambda!19687 (toValue!10322 (transformation!7634 r!4142)) lt!1488695)))) e!2595743))))

(assert (= (and b!4180547 ((_ is Node!13845) (c!713830 (dynLambda!19691 (toChars!10181 (transformation!7634 r!4142)) (dynLambda!19687 (toValue!10322 (transformation!7634 r!4142)) lt!1488695))))) b!4181144))

(assert (= b!4181145 b!4181146))

(assert (= (and b!4180547 ((_ is Leaf!21405) (c!713830 (dynLambda!19691 (toChars!10181 (transformation!7634 r!4142)) (dynLambda!19687 (toValue!10322 (transformation!7634 r!4142)) lt!1488695))))) b!4181145))

(declare-fun m!4770309 () Bool)

(assert (=> b!4181144 m!4770309))

(declare-fun m!4770311 () Bool)

(assert (=> b!4181144 m!4770311))

(declare-fun m!4770313 () Bool)

(assert (=> b!4181145 m!4770313))

(assert (=> b!4180547 m!4769709))

(declare-fun b!4181147 () Bool)

(declare-fun e!2595745 () Bool)

(declare-fun tp!1277796 () Bool)

(assert (=> b!4181147 (= e!2595745 (and tp_is_empty!22041 tp!1277796))))

(assert (=> b!4180667 (= tp!1277696 e!2595745)))

(assert (= (and b!4180667 ((_ is Cons!45889) (t!344978 (t!344978 input!3342)))) b!4181147))

(declare-fun b!4181151 () Bool)

(declare-fun e!2595746 () Bool)

(declare-fun tp!1277800 () Bool)

(declare-fun tp!1277798 () Bool)

(assert (=> b!4181151 (= e!2595746 (and tp!1277800 tp!1277798))))

(assert (=> b!4180687 (= tp!1277718 e!2595746)))

(declare-fun b!4181148 () Bool)

(assert (=> b!4181148 (= e!2595746 tp_is_empty!22041)))

(declare-fun b!4181149 () Bool)

(declare-fun tp!1277797 () Bool)

(declare-fun tp!1277801 () Bool)

(assert (=> b!4181149 (= e!2595746 (and tp!1277797 tp!1277801))))

(declare-fun b!4181150 () Bool)

(declare-fun tp!1277799 () Bool)

(assert (=> b!4181150 (= e!2595746 tp!1277799)))

(assert (= (and b!4180687 ((_ is ElementMatch!12539) (regOne!25591 (regex!7634 rBis!167)))) b!4181148))

(assert (= (and b!4180687 ((_ is Concat!20404) (regOne!25591 (regex!7634 rBis!167)))) b!4181149))

(assert (= (and b!4180687 ((_ is Star!12539) (regOne!25591 (regex!7634 rBis!167)))) b!4181150))

(assert (= (and b!4180687 ((_ is Union!12539) (regOne!25591 (regex!7634 rBis!167)))) b!4181151))

(declare-fun b!4181155 () Bool)

(declare-fun e!2595747 () Bool)

(declare-fun tp!1277805 () Bool)

(declare-fun tp!1277803 () Bool)

(assert (=> b!4181155 (= e!2595747 (and tp!1277805 tp!1277803))))

(assert (=> b!4180687 (= tp!1277716 e!2595747)))

(declare-fun b!4181152 () Bool)

(assert (=> b!4181152 (= e!2595747 tp_is_empty!22041)))

(declare-fun b!4181153 () Bool)

(declare-fun tp!1277802 () Bool)

(declare-fun tp!1277806 () Bool)

(assert (=> b!4181153 (= e!2595747 (and tp!1277802 tp!1277806))))

(declare-fun b!4181154 () Bool)

(declare-fun tp!1277804 () Bool)

(assert (=> b!4181154 (= e!2595747 tp!1277804)))

(assert (= (and b!4180687 ((_ is ElementMatch!12539) (regTwo!25591 (regex!7634 rBis!167)))) b!4181152))

(assert (= (and b!4180687 ((_ is Concat!20404) (regTwo!25591 (regex!7634 rBis!167)))) b!4181153))

(assert (= (and b!4180687 ((_ is Star!12539) (regTwo!25591 (regex!7634 rBis!167)))) b!4181154))

(assert (= (and b!4180687 ((_ is Union!12539) (regTwo!25591 (regex!7634 rBis!167)))) b!4181155))

(declare-fun b!4181170 () Bool)

(declare-fun e!2595755 () Bool)

(declare-fun tp!1277810 () Bool)

(declare-fun tp!1277808 () Bool)

(assert (=> b!4181170 (= e!2595755 (and tp!1277810 tp!1277808))))

(assert (=> b!4180661 (= tp!1277691 e!2595755)))

(declare-fun b!4181164 () Bool)

(assert (=> b!4181164 (= e!2595755 tp_is_empty!22041)))

(declare-fun b!4181166 () Bool)

(declare-fun tp!1277807 () Bool)

(declare-fun tp!1277811 () Bool)

(assert (=> b!4181166 (= e!2595755 (and tp!1277807 tp!1277811))))

(declare-fun b!4181168 () Bool)

(declare-fun tp!1277809 () Bool)

(assert (=> b!4181168 (= e!2595755 tp!1277809)))

(assert (= (and b!4180661 ((_ is ElementMatch!12539) (reg!12868 (regex!7634 r!4142)))) b!4181164))

(assert (= (and b!4180661 ((_ is Concat!20404) (reg!12868 (regex!7634 r!4142)))) b!4181166))

(assert (= (and b!4180661 ((_ is Star!12539) (reg!12868 (regex!7634 r!4142)))) b!4181168))

(assert (= (and b!4180661 ((_ is Union!12539) (reg!12868 (regex!7634 r!4142)))) b!4181170))

(declare-fun b!4181174 () Bool)

(declare-fun e!2595756 () Bool)

(declare-fun tp!1277812 () Bool)

(assert (=> b!4181174 (= e!2595756 (and tp_is_empty!22041 tp!1277812))))

(assert (=> b!4180688 (= tp!1277720 e!2595756)))

(assert (= (and b!4180688 ((_ is Cons!45889) (t!344978 (t!344978 pBis!107)))) b!4181174))

(declare-fun b!4181178 () Bool)

(declare-fun e!2595757 () Bool)

(declare-fun tp!1277816 () Bool)

(declare-fun tp!1277814 () Bool)

(assert (=> b!4181178 (= e!2595757 (and tp!1277816 tp!1277814))))

(assert (=> b!4180660 (= tp!1277689 e!2595757)))

(declare-fun b!4181175 () Bool)

(assert (=> b!4181175 (= e!2595757 tp_is_empty!22041)))

(declare-fun b!4181176 () Bool)

(declare-fun tp!1277813 () Bool)

(declare-fun tp!1277817 () Bool)

(assert (=> b!4181176 (= e!2595757 (and tp!1277813 tp!1277817))))

(declare-fun b!4181177 () Bool)

(declare-fun tp!1277815 () Bool)

(assert (=> b!4181177 (= e!2595757 tp!1277815)))

(assert (= (and b!4180660 ((_ is ElementMatch!12539) (regOne!25590 (regex!7634 r!4142)))) b!4181175))

(assert (= (and b!4180660 ((_ is Concat!20404) (regOne!25590 (regex!7634 r!4142)))) b!4181176))

(assert (= (and b!4180660 ((_ is Star!12539) (regOne!25590 (regex!7634 r!4142)))) b!4181177))

(assert (= (and b!4180660 ((_ is Union!12539) (regOne!25590 (regex!7634 r!4142)))) b!4181178))

(declare-fun b!4181182 () Bool)

(declare-fun e!2595758 () Bool)

(declare-fun tp!1277821 () Bool)

(declare-fun tp!1277819 () Bool)

(assert (=> b!4181182 (= e!2595758 (and tp!1277821 tp!1277819))))

(assert (=> b!4180660 (= tp!1277693 e!2595758)))

(declare-fun b!4181179 () Bool)

(assert (=> b!4181179 (= e!2595758 tp_is_empty!22041)))

(declare-fun b!4181180 () Bool)

(declare-fun tp!1277818 () Bool)

(declare-fun tp!1277822 () Bool)

(assert (=> b!4181180 (= e!2595758 (and tp!1277818 tp!1277822))))

(declare-fun b!4181181 () Bool)

(declare-fun tp!1277820 () Bool)

(assert (=> b!4181181 (= e!2595758 tp!1277820)))

(assert (= (and b!4180660 ((_ is ElementMatch!12539) (regTwo!25590 (regex!7634 r!4142)))) b!4181179))

(assert (= (and b!4180660 ((_ is Concat!20404) (regTwo!25590 (regex!7634 r!4142)))) b!4181180))

(assert (= (and b!4180660 ((_ is Star!12539) (regTwo!25590 (regex!7634 r!4142)))) b!4181181))

(assert (= (and b!4180660 ((_ is Union!12539) (regTwo!25590 (regex!7634 r!4142)))) b!4181182))

(declare-fun b!4181183 () Bool)

(declare-fun e!2595759 () Bool)

(declare-fun tp!1277823 () Bool)

(assert (=> b!4181183 (= e!2595759 (and tp_is_empty!22041 tp!1277823))))

(assert (=> b!4180672 (= tp!1277702 e!2595759)))

(assert (= (and b!4180672 ((_ is Cons!45889) (t!344978 (t!344978 p!2959)))) b!4181183))

(declare-fun b_lambda!122837 () Bool)

(assert (= b_lambda!122833 (or (and b!4180249 b_free!121463 (= (toValue!10322 (transformation!7634 (h!51311 rules!3843))) (toValue!10322 (transformation!7634 r!4142)))) (and b!4180683 b_free!121471 (= (toValue!10322 (transformation!7634 (h!51311 (t!344980 rules!3843)))) (toValue!10322 (transformation!7634 r!4142)))) (and b!4180262 b_free!121455) (and b!4181078 b_free!121475 (= (toValue!10322 (transformation!7634 (h!51311 (t!344980 (t!344980 rules!3843))))) (toValue!10322 (transformation!7634 r!4142)))) (and b!4180245 b_free!121459 (= (toValue!10322 (transformation!7634 rBis!167)) (toValue!10322 (transformation!7634 r!4142)))) b_lambda!122837)))

(declare-fun b_lambda!122839 () Bool)

(assert (= b_lambda!122829 (or (and b!4180249 b_free!121463 (= (toValue!10322 (transformation!7634 (h!51311 rules!3843))) (toValue!10322 (transformation!7634 r!4142)))) (and b!4180683 b_free!121471 (= (toValue!10322 (transformation!7634 (h!51311 (t!344980 rules!3843)))) (toValue!10322 (transformation!7634 r!4142)))) (and b!4180262 b_free!121455) (and b!4181078 b_free!121475 (= (toValue!10322 (transformation!7634 (h!51311 (t!344980 (t!344980 rules!3843))))) (toValue!10322 (transformation!7634 r!4142)))) (and b!4180245 b_free!121459 (= (toValue!10322 (transformation!7634 rBis!167)) (toValue!10322 (transformation!7634 r!4142)))) b_lambda!122839)))

(declare-fun b_lambda!122841 () Bool)

(assert (= b_lambda!122807 (or (and b!4180683 b_free!121473 (= (toChars!10181 (transformation!7634 (h!51311 (t!344980 rules!3843)))) (toChars!10181 (transformation!7634 (rule!10694 lt!1488696))))) (and b!4181078 b_free!121477 (= (toChars!10181 (transformation!7634 (h!51311 (t!344980 (t!344980 rules!3843))))) (toChars!10181 (transformation!7634 (rule!10694 lt!1488696))))) (and b!4180245 b_free!121461 (= (toChars!10181 (transformation!7634 rBis!167)) (toChars!10181 (transformation!7634 (rule!10694 lt!1488696))))) (and b!4180249 b_free!121465 (= (toChars!10181 (transformation!7634 (h!51311 rules!3843))) (toChars!10181 (transformation!7634 (rule!10694 lt!1488696))))) (and b!4180262 b_free!121457 (= (toChars!10181 (transformation!7634 r!4142)) (toChars!10181 (transformation!7634 (rule!10694 lt!1488696))))) b_lambda!122841)))

(declare-fun b_lambda!122843 () Bool)

(assert (= b_lambda!122831 (or (and b!4180249 b_free!121465 (= (toChars!10181 (transformation!7634 (h!51311 rules!3843))) (toChars!10181 (transformation!7634 r!4142)))) (and b!4180262 b_free!121457) (and b!4180245 b_free!121461 (= (toChars!10181 (transformation!7634 rBis!167)) (toChars!10181 (transformation!7634 r!4142)))) (and b!4181078 b_free!121477 (= (toChars!10181 (transformation!7634 (h!51311 (t!344980 (t!344980 rules!3843))))) (toChars!10181 (transformation!7634 r!4142)))) (and b!4180683 b_free!121473 (= (toChars!10181 (transformation!7634 (h!51311 (t!344980 rules!3843)))) (toChars!10181 (transformation!7634 r!4142)))) b_lambda!122843)))

(declare-fun b_lambda!122845 () Bool)

(assert (= b_lambda!122815 (or d!1233704 b_lambda!122845)))

(declare-fun bs!596337 () Bool)

(declare-fun d!1234024 () Bool)

(assert (= bs!596337 (and d!1234024 d!1233704)))

(assert (=> bs!596337 (= (dynLambda!19693 lambda!129345 lt!1488695) (= (list!16577 (dynLambda!19691 (toChars!10181 (transformation!7634 r!4142)) (dynLambda!19687 (toValue!10322 (transformation!7634 r!4142)) lt!1488695))) (list!16577 lt!1488695)))))

(declare-fun b_lambda!122847 () Bool)

(assert (=> (not b_lambda!122847) (not bs!596337)))

(assert (=> bs!596337 t!345026))

(declare-fun b_and!327069 () Bool)

(assert (= b_and!327047 (and (=> t!345026 result!304924) b_and!327069)))

(assert (=> bs!596337 t!345014))

(declare-fun b_and!327071 () Bool)

(assert (= b_and!327043 (and (=> t!345014 result!304906) b_and!327071)))

(assert (=> bs!596337 t!345016))

(declare-fun b_and!327073 () Bool)

(assert (= b_and!327045 (and (=> t!345016 result!304908) b_and!327073)))

(assert (=> bs!596337 t!345094))

(declare-fun b_and!327075 () Bool)

(assert (= b_and!327059 (and (=> t!345094 result!304990) b_and!327075)))

(assert (=> bs!596337 t!345012))

(declare-fun b_and!327077 () Bool)

(assert (= b_and!327041 (and (=> t!345012 result!304902) b_and!327077)))

(declare-fun b_lambda!122849 () Bool)

(assert (=> (not b_lambda!122849) (not bs!596337)))

(assert (=> bs!596337 t!344982))

(declare-fun b_and!327079 () Bool)

(assert (= b_and!327049 (and (=> t!344982 result!304860) b_and!327079)))

(assert (=> bs!596337 t!345024))

(declare-fun b_and!327081 () Bool)

(assert (= b_and!327055 (and (=> t!345024 result!304922) b_and!327081)))

(assert (=> bs!596337 t!344984))

(declare-fun b_and!327083 () Bool)

(assert (= b_and!327051 (and (=> t!344984 result!304864) b_and!327083)))

(assert (=> bs!596337 t!345088))

(declare-fun b_and!327085 () Bool)

(assert (= b_and!327057 (and (=> t!345088 result!304984) b_and!327085)))

(assert (=> bs!596337 t!344986))

(declare-fun b_and!327087 () Bool)

(assert (= b_and!327053 (and (=> t!344986 result!304866) b_and!327087)))

(assert (=> bs!596337 m!4769717))

(assert (=> bs!596337 m!4769719))

(assert (=> bs!596337 m!4769715))

(assert (=> bs!596337 m!4769511))

(assert (=> bs!596337 m!4769511))

(assert (=> bs!596337 m!4769717))

(assert (=> d!1233792 d!1234024))

(check-sat (not b_next!122165) (not d!1234010) (not bm!291636) (not b!4181168) b_and!327073 (not b!4181094) (not b!4180547) (not b!4180950) (not bm!291630) (not b!4180918) (not d!1233836) (not b!4181147) (not d!1234000) (not bm!291612) (not b!4181090) (not b!4181143) (not b!4181155) (not b!4181074) (not b!4180940) (not d!1233786) (not bm!291634) (not bs!596337) (not b_next!122161) (not bm!291610) (not b!4180953) (not d!1233948) (not b!4180988) (not b_next!122179) (not b!4180724) (not b!4181092) (not d!1233830) (not b!4181178) (not d!1233934) (not b!4181098) (not b!4181181) (not b!4181104) b_and!327071 (not b!4181110) (not b!4180930) (not bm!291631) (not b!4180737) (not b!4181063) (not b!4181077) (not tb!250271) (not d!1233994) (not d!1233952) (not b!4180987) (not b!4181154) (not b!4181130) (not b!4180761) (not b!4181176) (not b!4180914) (not b!4181100) (not b!4181129) (not d!1233820) (not b!4181180) (not b_next!122169) (not b!4180758) (not b_lambda!122845) (not b!4180954) (not b_lambda!122809) b_and!327077 (not d!1233938) (not b_next!122177) (not d!1233928) (not b!4181071) (not b!4180597) (not d!1233958) (not b_lambda!122827) b_and!327085 (not b!4181051) (not b!4180743) (not b_lambda!122811) (not d!1233974) (not b!4181127) (not b!4181174) (not b!4180992) (not d!1233838) (not b!4181102) (not b!4180890) (not b_next!122163) (not b!4181101) (not b_lambda!122843) (not b!4181076) (not b!4181096) (not b!4181142) (not bm!291677) (not b!4181150) (not d!1233924) (not b_next!122181) (not b!4181088) (not b!4180881) (not b!4181145) (not b!4181064) (not b_lambda!122813) (not bm!291643) (not b!4181123) (not b!4180989) (not b_lambda!122837) (not d!1233972) (not d!1233818) (not b!4180922) b_and!327083 (not b!4180754) (not d!1233776) (not b_next!122175) (not b!4180956) (not b!4180947) (not d!1233980) (not b!4180924) (not d!1233954) (not b!4180694) (not b!4181093) (not b!4180760) (not d!1233988) (not b!4181153) (not bm!291629) (not b!4180753) (not b_lambda!122825) (not tb!250263) (not b!4181121) (not bm!291641) (not bm!291635) b_and!327075 tp_is_empty!22041 (not b!4181059) (not b!4181182) (not d!1233926) (not b!4180735) (not d!1233792) (not b!4181133) (not b!4181122) (not b!4181141) (not b!4180986) (not b!4181105) (not b!4181097) (not b!4180866) (not b!4180720) (not b!4181177) (not b!4180884) (not b_next!122159) (not b!4180917) (not bm!291680) (not d!1233918) (not b!4181003) (not b!4180933) (not d!1233790) (not d!1233946) (not b!4181106) (not d!1233984) (not b!4180952) (not b!4181139) (not tb!250255) (not d!1234004) (not b!4180935) b_and!327069 (not b!4181002) (not b!4181151) (not b!4181131) (not b!4181138) (not b!4181109) (not d!1233992) (not b!4180874) (not bm!291632) (not b!4181135) (not b!4180931) (not b!4181089) (not b!4181166) (not b!4180899) (not d!1233962) b_and!327087 (not bm!291660) (not b!4181170) (not b!4180925) (not b!4180871) (not bm!291637) (not b_lambda!122849) (not b_lambda!122841) (not bm!291609) (not b!4180875) (not b!4181062) (not d!1233932) (not d!1233784) (not b!4181108) (not d!1233922) (not bm!291640) (not b!4181149) (not b!4180726) (not b!4181134) (not d!1233950) (not d!1233920) (not b!4181060) (not b!4180766) b_and!327081 (not b!4180994) (not b_lambda!122839) (not b_next!122167) (not bm!291633) (not b!4180996) (not b!4181000) (not b!4181073) (not b!4181125) (not b!4180941) (not d!1233964) (not b_lambda!122847) (not b!4181137) (not b!4180995) (not b!4180915) (not tb!250279) (not bm!291638) (not b!4180882) (not b!4181008) (not b!4181144) b_and!327079 (not b!4180722) (not b!4180938) (not b!4181183) (not b!4181126) (not b!4181146))
(check-sat b_and!327071 b_and!327085 (not b_next!122163) (not b_next!122181) b_and!327075 (not b_next!122159) b_and!327069 b_and!327087 b_and!327079 (not b_next!122165) b_and!327073 (not b_next!122161) (not b_next!122179) (not b_next!122169) b_and!327077 (not b_next!122177) b_and!327083 (not b_next!122175) (not b_next!122167) b_and!327081)
