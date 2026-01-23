; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!404646 () Bool)

(assert start!404646)

(declare-fun b!4230979 () Bool)

(declare-fun b_free!124967 () Bool)

(declare-fun b_next!125671 () Bool)

(assert (=> b!4230979 (= b_free!124967 (not b_next!125671))))

(declare-fun tp!1296009 () Bool)

(declare-fun b_and!334277 () Bool)

(assert (=> b!4230979 (= tp!1296009 b_and!334277)))

(declare-fun b_free!124969 () Bool)

(declare-fun b_next!125673 () Bool)

(assert (=> b!4230979 (= b_free!124969 (not b_next!125673))))

(declare-fun tp!1296008 () Bool)

(declare-fun b_and!334279 () Bool)

(assert (=> b!4230979 (= tp!1296008 b_and!334279)))

(declare-fun b!4230974 () Bool)

(declare-fun res!1739953 () Bool)

(declare-fun e!2627160 () Bool)

(assert (=> b!4230974 (=> (not res!1739953) (not e!2627160))))

(declare-datatypes ((C!25780 0))(
  ( (C!25781 (val!15052 Int)) )
))
(declare-datatypes ((List!46836 0))(
  ( (Nil!46712) (Cons!46712 (h!52132 C!25780) (t!349507 List!46836)) )
))
(declare-fun input!3600 () List!46836)

(declare-fun isPrefix!4701 (List!46836 List!46836) Bool)

(assert (=> b!4230974 (= res!1739953 (isPrefix!4701 Nil!46712 input!3600))))

(declare-fun res!1739956 () Bool)

(assert (=> start!404646 (=> (not res!1739956) (not e!2627160))))

(declare-datatypes ((LexerInterface!7481 0))(
  ( (LexerInterfaceExt!7478 (__x!28455 Int)) (Lexer!7479) )
))
(declare-fun thiss!26814 () LexerInterface!7481)

(get-info :version)

(assert (=> start!404646 (= res!1739956 ((_ is Lexer!7479) thiss!26814))))

(assert (=> start!404646 e!2627160))

(assert (=> start!404646 true))

(declare-fun e!2627159 () Bool)

(assert (=> start!404646 e!2627159))

(declare-fun e!2627162 () Bool)

(assert (=> start!404646 e!2627162))

(declare-fun e!2627157 () Bool)

(assert (=> start!404646 e!2627157))

(declare-fun b!4230975 () Bool)

(declare-fun res!1739959 () Bool)

(assert (=> b!4230975 (=> (not res!1739959) (not e!2627160))))

(declare-datatypes ((List!46837 0))(
  ( (Nil!46713) (Cons!46713 (h!52133 (_ BitVec 16)) (t!349508 List!46837)) )
))
(declare-datatypes ((TokenValue!8116 0))(
  ( (FloatLiteralValue!16232 (text!57257 List!46837)) (TokenValueExt!8115 (__x!28456 Int)) (Broken!40580 (value!245221 List!46837)) (Object!8239) (End!8116) (Def!8116) (Underscore!8116) (Match!8116) (Else!8116) (Error!8116) (Case!8116) (If!8116) (Extends!8116) (Abstract!8116) (Class!8116) (Val!8116) (DelimiterValue!16232 (del!8176 List!46837)) (KeywordValue!8122 (value!245222 List!46837)) (CommentValue!16232 (value!245223 List!46837)) (WhitespaceValue!16232 (value!245224 List!46837)) (IndentationValue!8116 (value!245225 List!46837)) (String!54453) (Int32!8116) (Broken!40581 (value!245226 List!46837)) (Boolean!8117) (Unit!65838) (OperatorValue!8119 (op!8176 List!46837)) (IdentifierValue!16232 (value!245227 List!46837)) (IdentifierValue!16233 (value!245228 List!46837)) (WhitespaceValue!16233 (value!245229 List!46837)) (True!16232) (False!16232) (Broken!40582 (value!245230 List!46837)) (Broken!40583 (value!245231 List!46837)) (True!16233) (RightBrace!8116) (RightBracket!8116) (Colon!8116) (Null!8116) (Comma!8116) (LeftBracket!8116) (False!16233) (LeftBrace!8116) (ImaginaryLiteralValue!8116 (text!57258 List!46837)) (StringLiteralValue!24348 (value!245232 List!46837)) (EOFValue!8116 (value!245233 List!46837)) (IdentValue!8116 (value!245234 List!46837)) (DelimiterValue!16233 (value!245235 List!46837)) (DedentValue!8116 (value!245236 List!46837)) (NewLineValue!8116 (value!245237 List!46837)) (IntegerValue!24348 (value!245238 (_ BitVec 32)) (text!57259 List!46837)) (IntegerValue!24349 (value!245239 Int) (text!57260 List!46837)) (Times!8116) (Or!8116) (Equal!8116) (Minus!8116) (Broken!40584 (value!245240 List!46837)) (And!8116) (Div!8116) (LessEqual!8116) (Mod!8116) (Concat!20907) (Not!8116) (Plus!8116) (SpaceValue!8116 (value!245241 List!46837)) (IntegerValue!24350 (value!245242 Int) (text!57261 List!46837)) (StringLiteralValue!24349 (text!57262 List!46837)) (FloatLiteralValue!16233 (text!57263 List!46837)) (BytesLiteralValue!8116 (value!245243 List!46837)) (CommentValue!16233 (value!245244 List!46837)) (StringLiteralValue!24350 (value!245245 List!46837)) (ErrorTokenValue!8116 (msg!8177 List!46837)) )
))
(declare-datatypes ((Regex!12791 0))(
  ( (ElementMatch!12791 (c!719150 C!25780)) (Concat!20908 (regOne!26094 Regex!12791) (regTwo!26094 Regex!12791)) (EmptyExpr!12791) (Star!12791 (reg!13120 Regex!12791)) (EmptyLang!12791) (Union!12791 (regOne!26095 Regex!12791) (regTwo!26095 Regex!12791)) )
))
(declare-datatypes ((String!54454 0))(
  ( (String!54455 (value!245246 String)) )
))
(declare-datatypes ((IArray!28199 0))(
  ( (IArray!28200 (innerList!14157 List!46836)) )
))
(declare-datatypes ((Conc!14097 0))(
  ( (Node!14097 (left!34748 Conc!14097) (right!35078 Conc!14097) (csize!28424 Int) (cheight!14308 Int)) (Leaf!21785 (xs!17403 IArray!28199) (csize!28425 Int)) (Empty!14097) )
))
(declare-datatypes ((BalanceConc!27788 0))(
  ( (BalanceConc!27789 (c!719151 Conc!14097)) )
))
(declare-datatypes ((TokenValueInjection!15660 0))(
  ( (TokenValueInjection!15661 (toValue!10618 Int) (toChars!10477 Int)) )
))
(declare-datatypes ((Rule!15572 0))(
  ( (Rule!15573 (regex!7886 Regex!12791) (tag!8750 String!54454) (isSeparator!7886 Bool) (transformation!7886 TokenValueInjection!15660)) )
))
(declare-fun r!4353 () Rule!15572)

(declare-fun validRegex!5807 (Regex!12791) Bool)

(assert (=> b!4230975 (= res!1739959 (validRegex!5807 (regex!7886 r!4353)))))

(declare-fun b!4230976 () Bool)

(declare-fun e!2627163 () Bool)

(assert (=> b!4230976 (= e!2627160 e!2627163)))

(declare-fun res!1739958 () Bool)

(assert (=> b!4230976 (=> (not res!1739958) (not e!2627163))))

(declare-fun lt!1504153 () Int)

(declare-fun lt!1504154 () Int)

(assert (=> b!4230976 (= res!1739958 (>= lt!1504153 lt!1504154))))

(declare-fun size!34232 (List!46836) Int)

(assert (=> b!4230976 (= lt!1504154 (size!34232 Nil!46712))))

(declare-fun p!3018 () List!46836)

(assert (=> b!4230976 (= lt!1504153 (size!34232 p!3018))))

(declare-fun b!4230977 () Bool)

(declare-fun res!1739952 () Bool)

(assert (=> b!4230977 (=> (not res!1739952) (not e!2627160))))

(declare-fun ruleValid!3582 (LexerInterface!7481 Rule!15572) Bool)

(assert (=> b!4230977 (= res!1739952 (ruleValid!3582 thiss!26814 r!4353))))

(declare-fun b!4230978 () Bool)

(declare-fun tp_is_empty!22517 () Bool)

(declare-fun tp!1296006 () Bool)

(assert (=> b!4230978 (= e!2627159 (and tp_is_empty!22517 tp!1296006))))

(declare-fun e!2627161 () Bool)

(assert (=> b!4230979 (= e!2627161 (and tp!1296009 tp!1296008))))

(declare-fun b!4230980 () Bool)

(declare-fun tp!1296007 () Bool)

(assert (=> b!4230980 (= e!2627162 (and tp_is_empty!22517 tp!1296007))))

(declare-fun b!4230981 () Bool)

(declare-fun res!1739955 () Bool)

(assert (=> b!4230981 (=> (not res!1739955) (not e!2627160))))

(assert (=> b!4230981 (= res!1739955 (isPrefix!4701 p!3018 input!3600))))

(declare-fun b!4230982 () Bool)

(declare-fun e!2627158 () Bool)

(declare-fun matchR!6426 (Regex!12791 List!46836) Bool)

(assert (=> b!4230982 (= e!2627158 (not (matchR!6426 (regex!7886 r!4353) p!3018)))))

(declare-fun b!4230983 () Bool)

(assert (=> b!4230983 (= e!2627163 (not true))))

(assert (=> b!4230983 e!2627158))

(declare-fun res!1739954 () Bool)

(assert (=> b!4230983 (=> res!1739954 e!2627158)))

(assert (=> b!4230983 (= res!1739954 (= p!3018 Nil!46712))))

(declare-datatypes ((Unit!65839 0))(
  ( (Unit!65840) )
))
(declare-fun lt!1504152 () Unit!65839)

(declare-fun longestMatchNoBiggerStringMatch!11 (Regex!12791 List!46836 List!46836 List!46836) Unit!65839)

(assert (=> b!4230983 (= lt!1504152 (longestMatchNoBiggerStringMatch!11 (regex!7886 r!4353) input!3600 Nil!46712 p!3018))))

(declare-fun tp!1296010 () Bool)

(declare-fun b!4230984 () Bool)

(declare-fun inv!61411 (String!54454) Bool)

(declare-fun inv!61413 (TokenValueInjection!15660) Bool)

(assert (=> b!4230984 (= e!2627157 (and tp!1296010 (inv!61411 (tag!8750 r!4353)) (inv!61413 (transformation!7886 r!4353)) e!2627161))))

(declare-fun b!4230985 () Bool)

(declare-fun res!1739960 () Bool)

(assert (=> b!4230985 (=> (not res!1739960) (not e!2627163))))

(declare-datatypes ((tuple2!44324 0))(
  ( (tuple2!44325 (_1!25296 List!46836) (_2!25296 List!46836)) )
))
(declare-fun findLongestMatchInner!1691 (Regex!12791 List!46836 Int List!46836 List!46836 Int) tuple2!44324)

(assert (=> b!4230985 (= res!1739960 (= (_1!25296 (findLongestMatchInner!1691 (regex!7886 r!4353) Nil!46712 lt!1504154 input!3600 input!3600 (size!34232 input!3600))) Nil!46712))))

(declare-fun b!4230986 () Bool)

(declare-fun res!1739957 () Bool)

(assert (=> b!4230986 (=> (not res!1739957) (not e!2627160))))

(declare-datatypes ((Token!14402 0))(
  ( (Token!14403 (value!245247 TokenValue!8116) (rule!11002 Rule!15572) (size!34233 Int) (originalCharacters!8232 List!46836)) )
))
(declare-datatypes ((tuple2!44326 0))(
  ( (tuple2!44327 (_1!25297 Token!14402) (_2!25297 List!46836)) )
))
(declare-datatypes ((Option!10032 0))(
  ( (None!10031) (Some!10031 (v!40959 tuple2!44326)) )
))
(declare-fun maxPrefixOneRule!3426 (LexerInterface!7481 Rule!15572 List!46836) Option!10032)

(assert (=> b!4230986 (= res!1739957 (= (maxPrefixOneRule!3426 thiss!26814 r!4353 input!3600) None!10031))))

(assert (= (and start!404646 res!1739956) b!4230981))

(assert (= (and b!4230981 res!1739955) b!4230977))

(assert (= (and b!4230977 res!1739952) b!4230986))

(assert (= (and b!4230986 res!1739957) b!4230975))

(assert (= (and b!4230975 res!1739959) b!4230974))

(assert (= (and b!4230974 res!1739953) b!4230976))

(assert (= (and b!4230976 res!1739958) b!4230985))

(assert (= (and b!4230985 res!1739960) b!4230983))

(assert (= (and b!4230983 (not res!1739954)) b!4230982))

(assert (= (and start!404646 ((_ is Cons!46712) p!3018)) b!4230978))

(assert (= (and start!404646 ((_ is Cons!46712) input!3600)) b!4230980))

(assert (= b!4230984 b!4230979))

(assert (= start!404646 b!4230984))

(declare-fun m!4817545 () Bool)

(assert (=> b!4230985 m!4817545))

(assert (=> b!4230985 m!4817545))

(declare-fun m!4817547 () Bool)

(assert (=> b!4230985 m!4817547))

(declare-fun m!4817549 () Bool)

(assert (=> b!4230974 m!4817549))

(declare-fun m!4817551 () Bool)

(assert (=> b!4230976 m!4817551))

(declare-fun m!4817553 () Bool)

(assert (=> b!4230976 m!4817553))

(declare-fun m!4817555 () Bool)

(assert (=> b!4230986 m!4817555))

(declare-fun m!4817557 () Bool)

(assert (=> b!4230983 m!4817557))

(declare-fun m!4817559 () Bool)

(assert (=> b!4230984 m!4817559))

(declare-fun m!4817561 () Bool)

(assert (=> b!4230984 m!4817561))

(declare-fun m!4817563 () Bool)

(assert (=> b!4230977 m!4817563))

(declare-fun m!4817565 () Bool)

(assert (=> b!4230981 m!4817565))

(declare-fun m!4817567 () Bool)

(assert (=> b!4230982 m!4817567))

(declare-fun m!4817569 () Bool)

(assert (=> b!4230975 m!4817569))

(check-sat b_and!334277 (not b!4230983) b_and!334279 (not b!4230975) (not b!4230982) (not b_next!125673) (not b!4230984) (not b!4230978) tp_is_empty!22517 (not b!4230980) (not b!4230986) (not b_next!125671) (not b!4230976) (not b!4230974) (not b!4230977) (not b!4230985) (not b!4230981))
(check-sat b_and!334277 b_and!334279 (not b_next!125673) (not b_next!125671))
