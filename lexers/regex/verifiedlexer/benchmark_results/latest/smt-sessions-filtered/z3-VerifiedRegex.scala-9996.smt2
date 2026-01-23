; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522758 () Bool)

(assert start!522758)

(declare-fun b!4958748 () Bool)

(declare-fun b_free!132423 () Bool)

(declare-fun b_next!133213 () Bool)

(assert (=> b!4958748 (= b_free!132423 (not b_next!133213))))

(declare-fun tp!1390724 () Bool)

(declare-fun b_and!347275 () Bool)

(assert (=> b!4958748 (= tp!1390724 b_and!347275)))

(declare-fun b_free!132425 () Bool)

(declare-fun b_next!133215 () Bool)

(assert (=> b!4958748 (= b_free!132425 (not b_next!133215))))

(declare-fun tp!1390727 () Bool)

(declare-fun b_and!347277 () Bool)

(assert (=> b!4958748 (= tp!1390727 b_and!347277)))

(declare-datatypes ((List!57418 0))(
  ( (Nil!57294) (Cons!57294 (h!63742 (_ BitVec 16)) (t!367984 List!57418)) )
))
(declare-datatypes ((TokenValue!8654 0))(
  ( (FloatLiteralValue!17308 (text!61023 List!57418)) (TokenValueExt!8653 (__x!34601 Int)) (Broken!43270 (value!267220 List!57418)) (Object!8777) (End!8654) (Def!8654) (Underscore!8654) (Match!8654) (Else!8654) (Error!8654) (Case!8654) (If!8654) (Extends!8654) (Abstract!8654) (Class!8654) (Val!8654) (DelimiterValue!17308 (del!8714 List!57418)) (KeywordValue!8660 (value!267221 List!57418)) (CommentValue!17308 (value!267222 List!57418)) (WhitespaceValue!17308 (value!267223 List!57418)) (IndentationValue!8654 (value!267224 List!57418)) (String!65143) (Int32!8654) (Broken!43271 (value!267225 List!57418)) (Boolean!8655) (Unit!148188) (OperatorValue!8657 (op!8714 List!57418)) (IdentifierValue!17308 (value!267226 List!57418)) (IdentifierValue!17309 (value!267227 List!57418)) (WhitespaceValue!17309 (value!267228 List!57418)) (True!17308) (False!17308) (Broken!43272 (value!267229 List!57418)) (Broken!43273 (value!267230 List!57418)) (True!17309) (RightBrace!8654) (RightBracket!8654) (Colon!8654) (Null!8654) (Comma!8654) (LeftBracket!8654) (False!17309) (LeftBrace!8654) (ImaginaryLiteralValue!8654 (text!61024 List!57418)) (StringLiteralValue!25962 (value!267231 List!57418)) (EOFValue!8654 (value!267232 List!57418)) (IdentValue!8654 (value!267233 List!57418)) (DelimiterValue!17309 (value!267234 List!57418)) (DedentValue!8654 (value!267235 List!57418)) (NewLineValue!8654 (value!267236 List!57418)) (IntegerValue!25962 (value!267237 (_ BitVec 32)) (text!61025 List!57418)) (IntegerValue!25963 (value!267238 Int) (text!61026 List!57418)) (Times!8654) (Or!8654) (Equal!8654) (Minus!8654) (Broken!43274 (value!267239 List!57418)) (And!8654) (Div!8654) (LessEqual!8654) (Mod!8654) (Concat!22231) (Not!8654) (Plus!8654) (SpaceValue!8654 (value!267240 List!57418)) (IntegerValue!25964 (value!267241 Int) (text!61027 List!57418)) (StringLiteralValue!25963 (text!61028 List!57418)) (FloatLiteralValue!17309 (text!61029 List!57418)) (BytesLiteralValue!8654 (value!267242 List!57418)) (CommentValue!17309 (value!267243 List!57418)) (StringLiteralValue!25964 (value!267244 List!57418)) (ErrorTokenValue!8654 (msg!8715 List!57418)) )
))
(declare-datatypes ((C!27404 0))(
  ( (C!27405 (val!23068 Int)) )
))
(declare-datatypes ((List!57419 0))(
  ( (Nil!57295) (Cons!57295 (h!63743 C!27404) (t!367985 List!57419)) )
))
(declare-datatypes ((IArray!30253 0))(
  ( (IArray!30254 (innerList!15184 List!57419)) )
))
(declare-datatypes ((Regex!13577 0))(
  ( (ElementMatch!13577 (c!846367 C!27404)) (Concat!22232 (regOne!27666 Regex!13577) (regTwo!27666 Regex!13577)) (EmptyExpr!13577) (Star!13577 (reg!13906 Regex!13577)) (EmptyLang!13577) (Union!13577 (regOne!27667 Regex!13577) (regTwo!27667 Regex!13577)) )
))
(declare-datatypes ((String!65144 0))(
  ( (String!65145 (value!267245 String)) )
))
(declare-datatypes ((Conc!15096 0))(
  ( (Node!15096 (left!41786 Conc!15096) (right!42116 Conc!15096) (csize!30422 Int) (cheight!15307 Int)) (Leaf!25093 (xs!18422 IArray!30253) (csize!30423 Int)) (Empty!15096) )
))
(declare-datatypes ((BalanceConc!29622 0))(
  ( (BalanceConc!29623 (c!846368 Conc!15096)) )
))
(declare-datatypes ((TokenValueInjection!16616 0))(
  ( (TokenValueInjection!16617 (toValue!11295 Int) (toChars!11154 Int)) )
))
(declare-datatypes ((Rule!16488 0))(
  ( (Rule!16489 (regex!8344 Regex!13577) (tag!9208 String!65144) (isSeparator!8344 Bool) (transformation!8344 TokenValueInjection!16616)) )
))
(declare-datatypes ((List!57420 0))(
  ( (Nil!57296) (Cons!57296 (h!63744 Rule!16488) (t!367986 List!57420)) )
))
(declare-fun rulesArg!259 () List!57420)

(declare-fun b!4958738 () Bool)

(declare-fun e!3099029 () Bool)

(declare-fun tp!1390723 () Bool)

(declare-fun e!3099024 () Bool)

(declare-fun inv!74780 (String!65144) Bool)

(declare-fun inv!74784 (TokenValueInjection!16616) Bool)

(assert (=> b!4958738 (= e!3099029 (and tp!1390723 (inv!74780 (tag!9208 (h!63744 rulesArg!259))) (inv!74784 (transformation!8344 (h!63744 rulesArg!259))) e!3099024))))

(declare-fun b!4958739 () Bool)

(declare-fun res!2116141 () Bool)

(declare-fun e!3099027 () Bool)

(assert (=> b!4958739 (=> (not res!2116141) (not e!3099027))))

(declare-datatypes ((LexerInterface!7936 0))(
  ( (LexerInterfaceExt!7933 (__x!34602 Int)) (Lexer!7934) )
))
(declare-fun thiss!15247 () LexerInterface!7936)

(declare-fun rulesValidInductive!3247 (LexerInterface!7936 List!57420) Bool)

(assert (=> b!4958739 (= res!2116141 (rulesValidInductive!3247 thiss!15247 rulesArg!259))))

(declare-fun b!4958740 () Bool)

(declare-fun res!2116142 () Bool)

(assert (=> b!4958740 (=> (not res!2116142) (not e!3099027))))

(declare-fun isEmpty!30816 (List!57420) Bool)

(assert (=> b!4958740 (= res!2116142 (not (isEmpty!30816 rulesArg!259)))))

(declare-fun b!4958741 () Bool)

(declare-fun e!3099023 () Bool)

(declare-fun tp!1390725 () Bool)

(assert (=> b!4958741 (= e!3099023 (and e!3099029 tp!1390725))))

(declare-fun b!4958742 () Bool)

(declare-fun e!3099020 () Bool)

(declare-fun e!3099022 () Bool)

(assert (=> b!4958742 (= e!3099020 (not e!3099022))))

(declare-fun res!2116146 () Bool)

(assert (=> b!4958742 (=> res!2116146 e!3099022)))

(get-info :version)

(assert (=> b!4958742 (= res!2116146 (or (and ((_ is Cons!57296) rulesArg!259) ((_ is Nil!57296) (t!367986 rulesArg!259))) (not ((_ is Cons!57296) rulesArg!259))))))

(declare-fun lt!2047022 () List!57419)

(declare-fun isPrefix!5197 (List!57419 List!57419) Bool)

(assert (=> b!4958742 (isPrefix!5197 lt!2047022 lt!2047022)))

(declare-datatypes ((Unit!148189 0))(
  ( (Unit!148190) )
))
(declare-fun lt!2047023 () Unit!148189)

(declare-fun lemmaIsPrefixRefl!3521 (List!57419 List!57419) Unit!148189)

(assert (=> b!4958742 (= lt!2047023 (lemmaIsPrefixRefl!3521 lt!2047022 lt!2047022))))

(declare-fun b!4958743 () Bool)

(declare-fun e!3099025 () Bool)

(declare-fun totalInput!464 () BalanceConc!29622)

(declare-fun tp!1390728 () Bool)

(declare-fun inv!74785 (Conc!15096) Bool)

(assert (=> b!4958743 (= e!3099025 (and (inv!74785 (c!846368 totalInput!464)) tp!1390728))))

(declare-fun b!4958744 () Bool)

(declare-fun e!3099026 () Bool)

(assert (=> b!4958744 (= e!3099026 true)))

(declare-datatypes ((Token!15188 0))(
  ( (Token!15189 (value!267246 TokenValue!8654) (rule!11568 Rule!16488) (size!37982 Int) (originalCharacters!8625 List!57419)) )
))
(declare-datatypes ((tuple2!61924 0))(
  ( (tuple2!61925 (_1!34265 Token!15188) (_2!34265 List!57419)) )
))
(declare-datatypes ((Option!14357 0))(
  ( (None!14356) (Some!14356 (v!50341 tuple2!61924)) )
))
(declare-fun lt!2047026 () Option!14357)

(declare-fun maxPrefixZipper!741 (LexerInterface!7936 List!57420 List!57419) Option!14357)

(assert (=> b!4958744 (= lt!2047026 (maxPrefixZipper!741 thiss!15247 rulesArg!259 lt!2047022))))

(declare-fun b!4958745 () Bool)

(assert (=> b!4958745 (= e!3099022 e!3099026)))

(declare-fun res!2116143 () Bool)

(assert (=> b!4958745 (=> res!2116143 e!3099026)))

(declare-datatypes ((tuple2!61926 0))(
  ( (tuple2!61927 (_1!34266 Token!15188) (_2!34266 BalanceConc!29622)) )
))
(declare-datatypes ((Option!14358 0))(
  ( (None!14357) (Some!14357 (v!50342 tuple2!61926)) )
))
(declare-fun lt!2047024 () Option!14358)

(declare-fun lt!2047025 () Option!14358)

(assert (=> b!4958745 (= res!2116143 (or (and ((_ is None!14357) lt!2047024) ((_ is None!14357) lt!2047025)) ((_ is None!14357) lt!2047025) ((_ is None!14357) lt!2047024) (< (size!37982 (_1!34266 (v!50342 lt!2047024))) (size!37982 (_1!34266 (v!50342 lt!2047025))))))))

(declare-fun input!1342 () BalanceConc!29622)

(declare-fun maxPrefixZipperSequenceV2!675 (LexerInterface!7936 List!57420 BalanceConc!29622 BalanceConc!29622) Option!14358)

(assert (=> b!4958745 (= lt!2047025 (maxPrefixZipperSequenceV2!675 thiss!15247 (t!367986 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!328 (LexerInterface!7936 Rule!16488 BalanceConc!29622 BalanceConc!29622) Option!14358)

(assert (=> b!4958745 (= lt!2047024 (maxPrefixOneRuleZipperSequenceV2!328 thiss!15247 (h!63744 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4958746 () Bool)

(declare-fun e!3099021 () Bool)

(declare-fun tp!1390726 () Bool)

(assert (=> b!4958746 (= e!3099021 (and (inv!74785 (c!846368 input!1342)) tp!1390726))))

(declare-fun res!2116145 () Bool)

(assert (=> start!522758 (=> (not res!2116145) (not e!3099027))))

(assert (=> start!522758 (= res!2116145 ((_ is Lexer!7934) thiss!15247))))

(assert (=> start!522758 e!3099027))

(assert (=> start!522758 true))

(assert (=> start!522758 e!3099023))

(declare-fun inv!74786 (BalanceConc!29622) Bool)

(assert (=> start!522758 (and (inv!74786 input!1342) e!3099021)))

(assert (=> start!522758 (and (inv!74786 totalInput!464) e!3099025)))

(declare-fun b!4958747 () Bool)

(assert (=> b!4958747 (= e!3099027 e!3099020)))

(declare-fun res!2116144 () Bool)

(assert (=> b!4958747 (=> (not res!2116144) (not e!3099020))))

(declare-fun isSuffix!1143 (List!57419 List!57419) Bool)

(declare-fun list!18293 (BalanceConc!29622) List!57419)

(assert (=> b!4958747 (= res!2116144 (isSuffix!1143 lt!2047022 (list!18293 totalInput!464)))))

(assert (=> b!4958747 (= lt!2047022 (list!18293 input!1342))))

(assert (=> b!4958748 (= e!3099024 (and tp!1390724 tp!1390727))))

(assert (= (and start!522758 res!2116145) b!4958739))

(assert (= (and b!4958739 res!2116141) b!4958740))

(assert (= (and b!4958740 res!2116142) b!4958747))

(assert (= (and b!4958747 res!2116144) b!4958742))

(assert (= (and b!4958742 (not res!2116146)) b!4958745))

(assert (= (and b!4958745 (not res!2116143)) b!4958744))

(assert (= b!4958738 b!4958748))

(assert (= b!4958741 b!4958738))

(assert (= (and start!522758 ((_ is Cons!57296) rulesArg!259)) b!4958741))

(assert (= start!522758 b!4958746))

(assert (= start!522758 b!4958743))

(declare-fun m!5983308 () Bool)

(assert (=> b!4958747 m!5983308))

(assert (=> b!4958747 m!5983308))

(declare-fun m!5983310 () Bool)

(assert (=> b!4958747 m!5983310))

(declare-fun m!5983312 () Bool)

(assert (=> b!4958747 m!5983312))

(declare-fun m!5983314 () Bool)

(assert (=> b!4958745 m!5983314))

(declare-fun m!5983316 () Bool)

(assert (=> b!4958745 m!5983316))

(declare-fun m!5983318 () Bool)

(assert (=> b!4958743 m!5983318))

(declare-fun m!5983320 () Bool)

(assert (=> b!4958740 m!5983320))

(declare-fun m!5983322 () Bool)

(assert (=> start!522758 m!5983322))

(declare-fun m!5983324 () Bool)

(assert (=> start!522758 m!5983324))

(declare-fun m!5983326 () Bool)

(assert (=> b!4958744 m!5983326))

(declare-fun m!5983328 () Bool)

(assert (=> b!4958739 m!5983328))

(declare-fun m!5983330 () Bool)

(assert (=> b!4958742 m!5983330))

(declare-fun m!5983332 () Bool)

(assert (=> b!4958742 m!5983332))

(declare-fun m!5983334 () Bool)

(assert (=> b!4958738 m!5983334))

(declare-fun m!5983336 () Bool)

(assert (=> b!4958738 m!5983336))

(declare-fun m!5983338 () Bool)

(assert (=> b!4958746 m!5983338))

(check-sat (not start!522758) b_and!347277 (not b_next!133213) (not b!4958746) (not b!4958739) (not b!4958745) (not b!4958738) (not b_next!133215) (not b!4958743) (not b!4958741) (not b!4958747) b_and!347275 (not b!4958742) (not b!4958740) (not b!4958744))
(check-sat b_and!347275 b_and!347277 (not b_next!133213) (not b_next!133215))
