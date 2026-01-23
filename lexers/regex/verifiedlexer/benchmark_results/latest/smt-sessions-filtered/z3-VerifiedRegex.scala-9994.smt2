; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522678 () Bool)

(assert start!522678)

(declare-fun b!4958248 () Bool)

(declare-fun b_free!132399 () Bool)

(declare-fun b_next!133189 () Bool)

(assert (=> b!4958248 (= b_free!132399 (not b_next!133189))))

(declare-fun tp!1390574 () Bool)

(declare-fun b_and!347251 () Bool)

(assert (=> b!4958248 (= tp!1390574 b_and!347251)))

(declare-fun b_free!132401 () Bool)

(declare-fun b_next!133191 () Bool)

(assert (=> b!4958248 (= b_free!132401 (not b_next!133191))))

(declare-fun tp!1390573 () Bool)

(declare-fun b_and!347253 () Bool)

(assert (=> b!4958248 (= tp!1390573 b_and!347253)))

(declare-fun b!4958245 () Bool)

(declare-fun e!3098661 () Bool)

(declare-fun e!3098671 () Bool)

(declare-fun tp!1390578 () Bool)

(assert (=> b!4958245 (= e!3098661 (and e!3098671 tp!1390578))))

(declare-fun b!4958246 () Bool)

(declare-fun e!3098668 () Bool)

(declare-fun e!3098662 () Bool)

(assert (=> b!4958246 (= e!3098668 e!3098662)))

(declare-fun res!2115863 () Bool)

(assert (=> b!4958246 (=> (not res!2115863) (not e!3098662))))

(declare-datatypes ((C!27396 0))(
  ( (C!27397 (val!23064 Int)) )
))
(declare-datatypes ((List!57406 0))(
  ( (Nil!57282) (Cons!57282 (h!63730 C!27396) (t!367972 List!57406)) )
))
(declare-fun lt!2046743 () List!57406)

(declare-datatypes ((IArray!30245 0))(
  ( (IArray!30246 (innerList!15180 List!57406)) )
))
(declare-datatypes ((Conc!15092 0))(
  ( (Node!15092 (left!41776 Conc!15092) (right!42106 Conc!15092) (csize!30414 Int) (cheight!15303 Int)) (Leaf!25087 (xs!18418 IArray!30245) (csize!30415 Int)) (Empty!15092) )
))
(declare-datatypes ((BalanceConc!29614 0))(
  ( (BalanceConc!29615 (c!846323 Conc!15092)) )
))
(declare-fun totalInput!464 () BalanceConc!29614)

(declare-fun isSuffix!1139 (List!57406 List!57406) Bool)

(declare-fun list!18287 (BalanceConc!29614) List!57406)

(assert (=> b!4958246 (= res!2115863 (isSuffix!1139 lt!2046743 (list!18287 totalInput!464)))))

(declare-fun input!1342 () BalanceConc!29614)

(assert (=> b!4958246 (= lt!2046743 (list!18287 input!1342))))

(declare-fun b!4958247 () Bool)

(declare-fun e!3098673 () Bool)

(assert (=> b!4958247 (= e!3098673 true)))

(declare-datatypes ((List!57407 0))(
  ( (Nil!57283) (Cons!57283 (h!63731 (_ BitVec 16)) (t!367973 List!57407)) )
))
(declare-datatypes ((TokenValue!8650 0))(
  ( (FloatLiteralValue!17300 (text!60995 List!57407)) (TokenValueExt!8649 (__x!34593 Int)) (Broken!43250 (value!267106 List!57407)) (Object!8773) (End!8650) (Def!8650) (Underscore!8650) (Match!8650) (Else!8650) (Error!8650) (Case!8650) (If!8650) (Extends!8650) (Abstract!8650) (Class!8650) (Val!8650) (DelimiterValue!17300 (del!8710 List!57407)) (KeywordValue!8656 (value!267107 List!57407)) (CommentValue!17300 (value!267108 List!57407)) (WhitespaceValue!17300 (value!267109 List!57407)) (IndentationValue!8650 (value!267110 List!57407)) (String!65123) (Int32!8650) (Broken!43251 (value!267111 List!57407)) (Boolean!8651) (Unit!148176) (OperatorValue!8653 (op!8710 List!57407)) (IdentifierValue!17300 (value!267112 List!57407)) (IdentifierValue!17301 (value!267113 List!57407)) (WhitespaceValue!17301 (value!267114 List!57407)) (True!17300) (False!17300) (Broken!43252 (value!267115 List!57407)) (Broken!43253 (value!267116 List!57407)) (True!17301) (RightBrace!8650) (RightBracket!8650) (Colon!8650) (Null!8650) (Comma!8650) (LeftBracket!8650) (False!17301) (LeftBrace!8650) (ImaginaryLiteralValue!8650 (text!60996 List!57407)) (StringLiteralValue!25950 (value!267117 List!57407)) (EOFValue!8650 (value!267118 List!57407)) (IdentValue!8650 (value!267119 List!57407)) (DelimiterValue!17301 (value!267120 List!57407)) (DedentValue!8650 (value!267121 List!57407)) (NewLineValue!8650 (value!267122 List!57407)) (IntegerValue!25950 (value!267123 (_ BitVec 32)) (text!60997 List!57407)) (IntegerValue!25951 (value!267124 Int) (text!60998 List!57407)) (Times!8650) (Or!8650) (Equal!8650) (Minus!8650) (Broken!43254 (value!267125 List!57407)) (And!8650) (Div!8650) (LessEqual!8650) (Mod!8650) (Concat!22223) (Not!8650) (Plus!8650) (SpaceValue!8650 (value!267126 List!57407)) (IntegerValue!25952 (value!267127 Int) (text!60999 List!57407)) (StringLiteralValue!25951 (text!61000 List!57407)) (FloatLiteralValue!17301 (text!61001 List!57407)) (BytesLiteralValue!8650 (value!267128 List!57407)) (CommentValue!17301 (value!267129 List!57407)) (StringLiteralValue!25952 (value!267130 List!57407)) (ErrorTokenValue!8650 (msg!8711 List!57407)) )
))
(declare-datatypes ((Regex!13573 0))(
  ( (ElementMatch!13573 (c!846324 C!27396)) (Concat!22224 (regOne!27658 Regex!13573) (regTwo!27658 Regex!13573)) (EmptyExpr!13573) (Star!13573 (reg!13902 Regex!13573)) (EmptyLang!13573) (Union!13573 (regOne!27659 Regex!13573) (regTwo!27659 Regex!13573)) )
))
(declare-datatypes ((String!65124 0))(
  ( (String!65125 (value!267131 String)) )
))
(declare-datatypes ((TokenValueInjection!16608 0))(
  ( (TokenValueInjection!16609 (toValue!11291 Int) (toChars!11150 Int)) )
))
(declare-datatypes ((Rule!16480 0))(
  ( (Rule!16481 (regex!8340 Regex!13573) (tag!9204 String!65124) (isSeparator!8340 Bool) (transformation!8340 TokenValueInjection!16608)) )
))
(declare-datatypes ((List!57408 0))(
  ( (Nil!57284) (Cons!57284 (h!63732 Rule!16480) (t!367974 List!57408)) )
))
(declare-fun rulesArg!259 () List!57408)

(declare-datatypes ((Token!15180 0))(
  ( (Token!15181 (value!267132 TokenValue!8650) (rule!11562 Rule!16480) (size!37974 Int) (originalCharacters!8621 List!57406)) )
))
(declare-datatypes ((tuple2!61900 0))(
  ( (tuple2!61901 (_1!34253 Token!15180) (_2!34253 List!57406)) )
))
(declare-datatypes ((Option!14349 0))(
  ( (None!14348) (Some!14348 (v!50333 tuple2!61900)) )
))
(declare-fun lt!2046746 () Option!14349)

(declare-datatypes ((LexerInterface!7932 0))(
  ( (LexerInterfaceExt!7929 (__x!34594 Int)) (Lexer!7930) )
))
(declare-fun thiss!15247 () LexerInterface!7932)

(declare-fun maxPrefix!4635 (LexerInterface!7932 List!57408 List!57406) Option!14349)

(assert (=> b!4958247 (= lt!2046746 (maxPrefix!4635 thiss!15247 rulesArg!259 lt!2046743))))

(declare-fun e!3098660 () Bool)

(assert (=> b!4958248 (= e!3098660 (and tp!1390574 tp!1390573))))

(declare-fun b!4958249 () Bool)

(declare-fun res!2115858 () Bool)

(assert (=> b!4958249 (=> (not res!2115858) (not e!3098668))))

(declare-fun rulesValidInductive!3243 (LexerInterface!7932 List!57408) Bool)

(assert (=> b!4958249 (= res!2115858 (rulesValidInductive!3243 thiss!15247 rulesArg!259))))

(declare-fun b!4958250 () Bool)

(declare-fun res!2115866 () Bool)

(assert (=> b!4958250 (=> res!2115866 e!3098673)))

(declare-fun lt!2046749 () Bool)

(assert (=> b!4958250 (= res!2115866 lt!2046749)))

(declare-fun b!4958251 () Bool)

(declare-fun e!3098672 () Bool)

(declare-fun tp!1390577 () Bool)

(declare-fun inv!74760 (Conc!15092) Bool)

(assert (=> b!4958251 (= e!3098672 (and (inv!74760 (c!846323 input!1342)) tp!1390577))))

(declare-fun b!4958252 () Bool)

(declare-fun res!2115867 () Bool)

(assert (=> b!4958252 (=> (not res!2115867) (not e!3098668))))

(declare-fun isEmpty!30804 (List!57408) Bool)

(assert (=> b!4958252 (= res!2115867 (not (isEmpty!30804 rulesArg!259)))))

(declare-fun b!4958254 () Bool)

(declare-fun e!3098664 () Bool)

(declare-fun e!3098666 () Bool)

(assert (=> b!4958254 (= e!3098664 e!3098666)))

(declare-fun res!2115868 () Bool)

(assert (=> b!4958254 (=> res!2115868 e!3098666)))

(declare-datatypes ((tuple2!61902 0))(
  ( (tuple2!61903 (_1!34254 Token!15180) (_2!34254 BalanceConc!29614)) )
))
(declare-datatypes ((Option!14350 0))(
  ( (None!14349) (Some!14349 (v!50334 tuple2!61902)) )
))
(declare-fun lt!2046742 () Option!14350)

(declare-fun lt!2046744 () Option!14350)

(get-info :version)

(assert (=> b!4958254 (= res!2115868 (or (and ((_ is None!14349) lt!2046742) ((_ is None!14349) lt!2046744)) ((_ is None!14349) lt!2046744) (not ((_ is None!14349) lt!2046742))))))

(declare-fun maxPrefixZipperSequenceV2!671 (LexerInterface!7932 List!57408 BalanceConc!29614 BalanceConc!29614) Option!14350)

(assert (=> b!4958254 (= lt!2046744 (maxPrefixZipperSequenceV2!671 thiss!15247 (t!367974 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!324 (LexerInterface!7932 Rule!16480 BalanceConc!29614 BalanceConc!29614) Option!14350)

(assert (=> b!4958254 (= lt!2046742 (maxPrefixOneRuleZipperSequenceV2!324 thiss!15247 (h!63732 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4958255 () Bool)

(declare-fun e!3098667 () Bool)

(declare-fun lt!2046750 () tuple2!61902)

(declare-fun lt!2046741 () tuple2!61900)

(assert (=> b!4958255 (= e!3098667 (not (= (list!18287 (_2!34254 lt!2046750)) (_2!34253 lt!2046741))))))

(declare-fun b!4958256 () Bool)

(assert (=> b!4958256 (= e!3098662 (not e!3098664))))

(declare-fun res!2115865 () Bool)

(assert (=> b!4958256 (=> res!2115865 e!3098664)))

(assert (=> b!4958256 (= res!2115865 (or (and ((_ is Cons!57284) rulesArg!259) ((_ is Nil!57284) (t!367974 rulesArg!259))) (not ((_ is Cons!57284) rulesArg!259))))))

(declare-fun isPrefix!5193 (List!57406 List!57406) Bool)

(assert (=> b!4958256 (isPrefix!5193 lt!2046743 lt!2046743)))

(declare-datatypes ((Unit!148177 0))(
  ( (Unit!148178) )
))
(declare-fun lt!2046745 () Unit!148177)

(declare-fun lemmaIsPrefixRefl!3517 (List!57406 List!57406) Unit!148177)

(assert (=> b!4958256 (= lt!2046745 (lemmaIsPrefixRefl!3517 lt!2046743 lt!2046743))))

(declare-fun tp!1390575 () Bool)

(declare-fun b!4958257 () Bool)

(declare-fun inv!74756 (String!65124) Bool)

(declare-fun inv!74761 (TokenValueInjection!16608) Bool)

(assert (=> b!4958257 (= e!3098671 (and tp!1390575 (inv!74756 (tag!9204 (h!63732 rulesArg!259))) (inv!74761 (transformation!8340 (h!63732 rulesArg!259))) e!3098660))))

(declare-fun b!4958258 () Bool)

(declare-fun e!3098669 () Bool)

(assert (=> b!4958258 (= e!3098669 e!3098673)))

(declare-fun res!2115860 () Bool)

(assert (=> b!4958258 (=> res!2115860 e!3098673)))

(declare-fun e!3098670 () Bool)

(assert (=> b!4958258 (= res!2115860 e!3098670)))

(declare-fun res!2115864 () Bool)

(assert (=> b!4958258 (=> (not res!2115864) (not e!3098670))))

(assert (=> b!4958258 (= res!2115864 (not lt!2046749))))

(declare-fun lt!2046748 () Bool)

(assert (=> b!4958258 (= lt!2046749 (not lt!2046748))))

(declare-fun b!4958259 () Bool)

(assert (=> b!4958259 (= e!3098670 e!3098667)))

(declare-fun res!2115859 () Bool)

(assert (=> b!4958259 (=> res!2115859 e!3098667)))

(assert (=> b!4958259 (= res!2115859 (not (= (_1!34254 lt!2046750) (_1!34253 lt!2046741))))))

(declare-fun lt!2046747 () Option!14349)

(declare-fun get!19835 (Option!14349) tuple2!61900)

(assert (=> b!4958259 (= lt!2046741 (get!19835 lt!2046747))))

(declare-fun get!19836 (Option!14350) tuple2!61902)

(assert (=> b!4958259 (= lt!2046750 (get!19836 lt!2046744))))

(declare-fun b!4958260 () Bool)

(assert (=> b!4958260 (= e!3098666 e!3098669)))

(declare-fun res!2115861 () Bool)

(assert (=> b!4958260 (=> res!2115861 e!3098669)))

(declare-fun isDefined!11272 (Option!14349) Bool)

(assert (=> b!4958260 (= res!2115861 (not (= lt!2046748 (isDefined!11272 lt!2046747))))))

(declare-fun isDefined!11273 (Option!14350) Bool)

(assert (=> b!4958260 (= lt!2046748 (isDefined!11273 lt!2046744))))

(declare-fun maxPrefixZipper!737 (LexerInterface!7932 List!57408 List!57406) Option!14349)

(assert (=> b!4958260 (= lt!2046747 (maxPrefixZipper!737 thiss!15247 rulesArg!259 lt!2046743))))

(declare-fun b!4958253 () Bool)

(declare-fun e!3098665 () Bool)

(declare-fun tp!1390576 () Bool)

(assert (=> b!4958253 (= e!3098665 (and (inv!74760 (c!846323 totalInput!464)) tp!1390576))))

(declare-fun res!2115862 () Bool)

(assert (=> start!522678 (=> (not res!2115862) (not e!3098668))))

(assert (=> start!522678 (= res!2115862 ((_ is Lexer!7930) thiss!15247))))

(assert (=> start!522678 e!3098668))

(assert (=> start!522678 true))

(assert (=> start!522678 e!3098661))

(declare-fun inv!74762 (BalanceConc!29614) Bool)

(assert (=> start!522678 (and (inv!74762 input!1342) e!3098672)))

(assert (=> start!522678 (and (inv!74762 totalInput!464) e!3098665)))

(assert (= (and start!522678 res!2115862) b!4958249))

(assert (= (and b!4958249 res!2115858) b!4958252))

(assert (= (and b!4958252 res!2115867) b!4958246))

(assert (= (and b!4958246 res!2115863) b!4958256))

(assert (= (and b!4958256 (not res!2115865)) b!4958254))

(assert (= (and b!4958254 (not res!2115868)) b!4958260))

(assert (= (and b!4958260 (not res!2115861)) b!4958258))

(assert (= (and b!4958258 res!2115864) b!4958259))

(assert (= (and b!4958259 (not res!2115859)) b!4958255))

(assert (= (and b!4958258 (not res!2115860)) b!4958250))

(assert (= (and b!4958250 (not res!2115866)) b!4958247))

(assert (= b!4958257 b!4958248))

(assert (= b!4958245 b!4958257))

(assert (= (and start!522678 ((_ is Cons!57284) rulesArg!259)) b!4958245))

(assert (= start!522678 b!4958251))

(assert (= start!522678 b!4958253))

(declare-fun m!5982812 () Bool)

(assert (=> b!4958259 m!5982812))

(declare-fun m!5982814 () Bool)

(assert (=> b!4958259 m!5982814))

(declare-fun m!5982816 () Bool)

(assert (=> b!4958246 m!5982816))

(assert (=> b!4958246 m!5982816))

(declare-fun m!5982818 () Bool)

(assert (=> b!4958246 m!5982818))

(declare-fun m!5982820 () Bool)

(assert (=> b!4958246 m!5982820))

(declare-fun m!5982822 () Bool)

(assert (=> b!4958247 m!5982822))

(declare-fun m!5982824 () Bool)

(assert (=> b!4958254 m!5982824))

(declare-fun m!5982826 () Bool)

(assert (=> b!4958254 m!5982826))

(declare-fun m!5982828 () Bool)

(assert (=> b!4958256 m!5982828))

(declare-fun m!5982830 () Bool)

(assert (=> b!4958256 m!5982830))

(declare-fun m!5982832 () Bool)

(assert (=> b!4958253 m!5982832))

(declare-fun m!5982834 () Bool)

(assert (=> b!4958252 m!5982834))

(declare-fun m!5982836 () Bool)

(assert (=> b!4958257 m!5982836))

(declare-fun m!5982838 () Bool)

(assert (=> b!4958257 m!5982838))

(declare-fun m!5982840 () Bool)

(assert (=> b!4958249 m!5982840))

(declare-fun m!5982842 () Bool)

(assert (=> b!4958251 m!5982842))

(declare-fun m!5982844 () Bool)

(assert (=> b!4958255 m!5982844))

(declare-fun m!5982846 () Bool)

(assert (=> start!522678 m!5982846))

(declare-fun m!5982848 () Bool)

(assert (=> start!522678 m!5982848))

(declare-fun m!5982850 () Bool)

(assert (=> b!4958260 m!5982850))

(declare-fun m!5982852 () Bool)

(assert (=> b!4958260 m!5982852))

(declare-fun m!5982854 () Bool)

(assert (=> b!4958260 m!5982854))

(check-sat (not b_next!133189) b_and!347253 (not b!4958245) (not b!4958255) (not b!4958252) (not b!4958249) (not b!4958247) (not b_next!133191) (not b!4958251) (not start!522678) (not b!4958260) b_and!347251 (not b!4958253) (not b!4958256) (not b!4958246) (not b!4958254) (not b!4958257) (not b!4958259))
(check-sat b_and!347251 b_and!347253 (not b_next!133189) (not b_next!133191))
