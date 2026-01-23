; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522682 () Bool)

(assert start!522682)

(declare-fun b!4958358 () Bool)

(declare-fun b_free!132407 () Bool)

(declare-fun b_next!133197 () Bool)

(assert (=> b!4958358 (= b_free!132407 (not b_next!133197))))

(declare-fun tp!1390613 () Bool)

(declare-fun b_and!347259 () Bool)

(assert (=> b!4958358 (= tp!1390613 b_and!347259)))

(declare-fun b_free!132409 () Bool)

(declare-fun b_next!133199 () Bool)

(assert (=> b!4958358 (= b_free!132409 (not b_next!133199))))

(declare-fun tp!1390610 () Bool)

(declare-fun b_and!347261 () Bool)

(assert (=> b!4958358 (= tp!1390610 b_and!347261)))

(declare-fun b!4958346 () Bool)

(declare-fun e!3098753 () Bool)

(declare-fun e!3098760 () Bool)

(assert (=> b!4958346 (= e!3098753 e!3098760)))

(declare-fun res!2115935 () Bool)

(assert (=> b!4958346 (=> res!2115935 e!3098760)))

(declare-fun lt!2046809 () Bool)

(declare-datatypes ((List!57412 0))(
  ( (Nil!57288) (Cons!57288 (h!63736 (_ BitVec 16)) (t!367978 List!57412)) )
))
(declare-datatypes ((TokenValue!8652 0))(
  ( (FloatLiteralValue!17304 (text!61009 List!57412)) (TokenValueExt!8651 (__x!34597 Int)) (Broken!43260 (value!267163 List!57412)) (Object!8775) (End!8652) (Def!8652) (Underscore!8652) (Match!8652) (Else!8652) (Error!8652) (Case!8652) (If!8652) (Extends!8652) (Abstract!8652) (Class!8652) (Val!8652) (DelimiterValue!17304 (del!8712 List!57412)) (KeywordValue!8658 (value!267164 List!57412)) (CommentValue!17304 (value!267165 List!57412)) (WhitespaceValue!17304 (value!267166 List!57412)) (IndentationValue!8652 (value!267167 List!57412)) (String!65133) (Int32!8652) (Broken!43261 (value!267168 List!57412)) (Boolean!8653) (Unit!148182) (OperatorValue!8655 (op!8712 List!57412)) (IdentifierValue!17304 (value!267169 List!57412)) (IdentifierValue!17305 (value!267170 List!57412)) (WhitespaceValue!17305 (value!267171 List!57412)) (True!17304) (False!17304) (Broken!43262 (value!267172 List!57412)) (Broken!43263 (value!267173 List!57412)) (True!17305) (RightBrace!8652) (RightBracket!8652) (Colon!8652) (Null!8652) (Comma!8652) (LeftBracket!8652) (False!17305) (LeftBrace!8652) (ImaginaryLiteralValue!8652 (text!61010 List!57412)) (StringLiteralValue!25956 (value!267174 List!57412)) (EOFValue!8652 (value!267175 List!57412)) (IdentValue!8652 (value!267176 List!57412)) (DelimiterValue!17305 (value!267177 List!57412)) (DedentValue!8652 (value!267178 List!57412)) (NewLineValue!8652 (value!267179 List!57412)) (IntegerValue!25956 (value!267180 (_ BitVec 32)) (text!61011 List!57412)) (IntegerValue!25957 (value!267181 Int) (text!61012 List!57412)) (Times!8652) (Or!8652) (Equal!8652) (Minus!8652) (Broken!43264 (value!267182 List!57412)) (And!8652) (Div!8652) (LessEqual!8652) (Mod!8652) (Concat!22227) (Not!8652) (Plus!8652) (SpaceValue!8652 (value!267183 List!57412)) (IntegerValue!25958 (value!267184 Int) (text!61013 List!57412)) (StringLiteralValue!25957 (text!61014 List!57412)) (FloatLiteralValue!17305 (text!61015 List!57412)) (BytesLiteralValue!8652 (value!267185 List!57412)) (CommentValue!17305 (value!267186 List!57412)) (StringLiteralValue!25958 (value!267187 List!57412)) (ErrorTokenValue!8652 (msg!8713 List!57412)) )
))
(declare-datatypes ((C!27400 0))(
  ( (C!27401 (val!23066 Int)) )
))
(declare-datatypes ((Regex!13575 0))(
  ( (ElementMatch!13575 (c!846329 C!27400)) (Concat!22228 (regOne!27662 Regex!13575) (regTwo!27662 Regex!13575)) (EmptyExpr!13575) (Star!13575 (reg!13904 Regex!13575)) (EmptyLang!13575) (Union!13575 (regOne!27663 Regex!13575) (regTwo!27663 Regex!13575)) )
))
(declare-datatypes ((String!65134 0))(
  ( (String!65135 (value!267188 String)) )
))
(declare-datatypes ((List!57413 0))(
  ( (Nil!57289) (Cons!57289 (h!63737 C!27400) (t!367979 List!57413)) )
))
(declare-datatypes ((IArray!30249 0))(
  ( (IArray!30250 (innerList!15182 List!57413)) )
))
(declare-datatypes ((Conc!15094 0))(
  ( (Node!15094 (left!41779 Conc!15094) (right!42109 Conc!15094) (csize!30418 Int) (cheight!15305 Int)) (Leaf!25090 (xs!18420 IArray!30249) (csize!30419 Int)) (Empty!15094) )
))
(declare-datatypes ((BalanceConc!29618 0))(
  ( (BalanceConc!29619 (c!846330 Conc!15094)) )
))
(declare-datatypes ((TokenValueInjection!16612 0))(
  ( (TokenValueInjection!16613 (toValue!11293 Int) (toChars!11152 Int)) )
))
(declare-datatypes ((Rule!16484 0))(
  ( (Rule!16485 (regex!8342 Regex!13575) (tag!9206 String!65134) (isSeparator!8342 Bool) (transformation!8342 TokenValueInjection!16612)) )
))
(declare-datatypes ((Token!15184 0))(
  ( (Token!15185 (value!267189 TokenValue!8652) (rule!11564 Rule!16484) (size!37976 Int) (originalCharacters!8623 List!57413)) )
))
(declare-datatypes ((tuple2!61908 0))(
  ( (tuple2!61909 (_1!34257 Token!15184) (_2!34257 List!57413)) )
))
(declare-datatypes ((Option!14353 0))(
  ( (None!14352) (Some!14352 (v!50337 tuple2!61908)) )
))
(declare-fun lt!2046804 () Option!14353)

(declare-fun isDefined!11276 (Option!14353) Bool)

(assert (=> b!4958346 (= res!2115935 (not (= lt!2046809 (isDefined!11276 lt!2046804))))))

(declare-datatypes ((tuple2!61910 0))(
  ( (tuple2!61911 (_1!34258 Token!15184) (_2!34258 BalanceConc!29618)) )
))
(declare-datatypes ((Option!14354 0))(
  ( (None!14353) (Some!14353 (v!50338 tuple2!61910)) )
))
(declare-fun lt!2046807 () Option!14354)

(declare-fun isDefined!11277 (Option!14354) Bool)

(assert (=> b!4958346 (= lt!2046809 (isDefined!11277 lt!2046807))))

(declare-datatypes ((LexerInterface!7934 0))(
  ( (LexerInterfaceExt!7931 (__x!34598 Int)) (Lexer!7932) )
))
(declare-fun thiss!15247 () LexerInterface!7934)

(declare-fun lt!2046801 () List!57413)

(declare-datatypes ((List!57414 0))(
  ( (Nil!57290) (Cons!57290 (h!63738 Rule!16484) (t!367980 List!57414)) )
))
(declare-fun rulesArg!259 () List!57414)

(declare-fun maxPrefixZipper!739 (LexerInterface!7934 List!57414 List!57413) Option!14353)

(assert (=> b!4958346 (= lt!2046804 (maxPrefixZipper!739 thiss!15247 rulesArg!259 lt!2046801))))

(declare-fun b!4958347 () Bool)

(declare-fun e!3098761 () Bool)

(declare-fun e!3098763 () Bool)

(assert (=> b!4958347 (= e!3098761 e!3098763)))

(declare-fun res!2115934 () Bool)

(assert (=> b!4958347 (=> res!2115934 e!3098763)))

(declare-fun lt!2046808 () Option!14353)

(declare-fun get!19840 (Option!14354) tuple2!61910)

(declare-fun get!19841 (Option!14353) tuple2!61908)

(assert (=> b!4958347 (= res!2115934 (not (= (_1!34258 (get!19840 lt!2046807)) (_1!34257 (get!19841 lt!2046808)))))))

(declare-fun maxPrefix!4637 (LexerInterface!7934 List!57414 List!57413) Option!14353)

(assert (=> b!4958347 (= lt!2046808 (maxPrefix!4637 thiss!15247 rulesArg!259 lt!2046801))))

(declare-fun b!4958348 () Bool)

(declare-fun e!3098762 () Bool)

(declare-fun totalInput!464 () BalanceConc!29618)

(declare-fun tp!1390611 () Bool)

(declare-fun inv!74769 (Conc!15094) Bool)

(assert (=> b!4958348 (= e!3098762 (and (inv!74769 (c!846330 totalInput!464)) tp!1390611))))

(declare-fun b!4958349 () Bool)

(assert (=> b!4958349 (= e!3098763 (isDefined!11276 lt!2046808))))

(declare-fun b!4958350 () Bool)

(declare-fun e!3098751 () Bool)

(declare-fun lt!2046802 () tuple2!61910)

(declare-fun lt!2046805 () tuple2!61908)

(declare-fun list!18289 (BalanceConc!29618) List!57413)

(assert (=> b!4958350 (= e!3098751 (not (= (list!18289 (_2!34258 lt!2046802)) (_2!34257 lt!2046805))))))

(declare-fun b!4958351 () Bool)

(declare-fun e!3098754 () Bool)

(declare-fun input!1342 () BalanceConc!29618)

(declare-fun tp!1390612 () Bool)

(assert (=> b!4958351 (= e!3098754 (and (inv!74769 (c!846330 input!1342)) tp!1390612))))

(declare-fun b!4958352 () Bool)

(declare-fun e!3098755 () Bool)

(assert (=> b!4958352 (= e!3098755 e!3098751)))

(declare-fun res!2115933 () Bool)

(assert (=> b!4958352 (=> res!2115933 e!3098751)))

(assert (=> b!4958352 (= res!2115933 (not (= (_1!34258 lt!2046802) (_1!34257 lt!2046805))))))

(assert (=> b!4958352 (= lt!2046805 (get!19841 lt!2046804))))

(assert (=> b!4958352 (= lt!2046802 (get!19840 lt!2046807))))

(declare-fun b!4958353 () Bool)

(declare-fun e!3098756 () Bool)

(declare-fun e!3098759 () Bool)

(assert (=> b!4958353 (= e!3098756 e!3098759)))

(declare-fun res!2115930 () Bool)

(assert (=> b!4958353 (=> (not res!2115930) (not e!3098759))))

(declare-fun isSuffix!1141 (List!57413 List!57413) Bool)

(assert (=> b!4958353 (= res!2115930 (isSuffix!1141 lt!2046801 (list!18289 totalInput!464)))))

(assert (=> b!4958353 (= lt!2046801 (list!18289 input!1342))))

(declare-fun b!4958354 () Bool)

(declare-fun res!2115937 () Bool)

(assert (=> b!4958354 (=> (not res!2115937) (not e!3098756))))

(declare-fun rulesValidInductive!3245 (LexerInterface!7934 List!57414) Bool)

(assert (=> b!4958354 (= res!2115937 (rulesValidInductive!3245 thiss!15247 rulesArg!259))))

(declare-fun b!4958355 () Bool)

(declare-fun e!3098749 () Bool)

(assert (=> b!4958355 (= e!3098759 (not e!3098749))))

(declare-fun res!2115938 () Bool)

(assert (=> b!4958355 (=> res!2115938 e!3098749)))

(get-info :version)

(assert (=> b!4958355 (= res!2115938 (or (and ((_ is Cons!57290) rulesArg!259) ((_ is Nil!57290) (t!367980 rulesArg!259))) (not ((_ is Cons!57290) rulesArg!259))))))

(declare-fun isPrefix!5195 (List!57413 List!57413) Bool)

(assert (=> b!4958355 (isPrefix!5195 lt!2046801 lt!2046801)))

(declare-datatypes ((Unit!148183 0))(
  ( (Unit!148184) )
))
(declare-fun lt!2046803 () Unit!148183)

(declare-fun lemmaIsPrefixRefl!3519 (List!57413 List!57413) Unit!148183)

(assert (=> b!4958355 (= lt!2046803 (lemmaIsPrefixRefl!3519 lt!2046801 lt!2046801))))

(declare-fun b!4958356 () Bool)

(declare-fun e!3098758 () Bool)

(declare-fun e!3098752 () Bool)

(declare-fun tp!1390614 () Bool)

(assert (=> b!4958356 (= e!3098758 (and e!3098752 tp!1390614))))

(declare-fun res!2115940 () Bool)

(assert (=> start!522682 (=> (not res!2115940) (not e!3098756))))

(assert (=> start!522682 (= res!2115940 ((_ is Lexer!7932) thiss!15247))))

(assert (=> start!522682 e!3098756))

(assert (=> start!522682 true))

(assert (=> start!522682 e!3098758))

(declare-fun inv!74770 (BalanceConc!29618) Bool)

(assert (=> start!522682 (and (inv!74770 input!1342) e!3098754)))

(assert (=> start!522682 (and (inv!74770 totalInput!464) e!3098762)))

(declare-fun b!4958357 () Bool)

(assert (=> b!4958357 (= e!3098749 e!3098753)))

(declare-fun res!2115932 () Bool)

(assert (=> b!4958357 (=> res!2115932 e!3098753)))

(declare-fun lt!2046810 () Option!14354)

(assert (=> b!4958357 (= res!2115932 (or (and ((_ is None!14353) lt!2046810) ((_ is None!14353) lt!2046807)) ((_ is None!14353) lt!2046807) (not ((_ is None!14353) lt!2046810))))))

(declare-fun maxPrefixZipperSequenceV2!673 (LexerInterface!7934 List!57414 BalanceConc!29618 BalanceConc!29618) Option!14354)

(assert (=> b!4958357 (= lt!2046807 (maxPrefixZipperSequenceV2!673 thiss!15247 (t!367980 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!326 (LexerInterface!7934 Rule!16484 BalanceConc!29618 BalanceConc!29618) Option!14354)

(assert (=> b!4958357 (= lt!2046810 (maxPrefixOneRuleZipperSequenceV2!326 thiss!15247 (h!63738 rulesArg!259) input!1342 totalInput!464))))

(declare-fun e!3098750 () Bool)

(assert (=> b!4958358 (= e!3098750 (and tp!1390613 tp!1390610))))

(declare-fun b!4958359 () Bool)

(assert (=> b!4958359 (= e!3098760 e!3098761)))

(declare-fun res!2115929 () Bool)

(assert (=> b!4958359 (=> res!2115929 e!3098761)))

(assert (=> b!4958359 (= res!2115929 e!3098755)))

(declare-fun res!2115936 () Bool)

(assert (=> b!4958359 (=> (not res!2115936) (not e!3098755))))

(declare-fun lt!2046806 () Bool)

(assert (=> b!4958359 (= res!2115936 (not lt!2046806))))

(assert (=> b!4958359 (= lt!2046806 (not lt!2046809))))

(declare-fun tp!1390609 () Bool)

(declare-fun b!4958360 () Bool)

(declare-fun inv!74765 (String!65134) Bool)

(declare-fun inv!74771 (TokenValueInjection!16612) Bool)

(assert (=> b!4958360 (= e!3098752 (and tp!1390609 (inv!74765 (tag!9206 (h!63738 rulesArg!259))) (inv!74771 (transformation!8342 (h!63738 rulesArg!259))) e!3098750))))

(declare-fun b!4958361 () Bool)

(declare-fun res!2115939 () Bool)

(assert (=> b!4958361 (=> res!2115939 e!3098761)))

(assert (=> b!4958361 (= res!2115939 lt!2046806)))

(declare-fun b!4958362 () Bool)

(declare-fun res!2115931 () Bool)

(assert (=> b!4958362 (=> (not res!2115931) (not e!3098756))))

(declare-fun isEmpty!30806 (List!57414) Bool)

(assert (=> b!4958362 (= res!2115931 (not (isEmpty!30806 rulesArg!259)))))

(assert (= (and start!522682 res!2115940) b!4958354))

(assert (= (and b!4958354 res!2115937) b!4958362))

(assert (= (and b!4958362 res!2115931) b!4958353))

(assert (= (and b!4958353 res!2115930) b!4958355))

(assert (= (and b!4958355 (not res!2115938)) b!4958357))

(assert (= (and b!4958357 (not res!2115932)) b!4958346))

(assert (= (and b!4958346 (not res!2115935)) b!4958359))

(assert (= (and b!4958359 res!2115936) b!4958352))

(assert (= (and b!4958352 (not res!2115933)) b!4958350))

(assert (= (and b!4958359 (not res!2115929)) b!4958361))

(assert (= (and b!4958361 (not res!2115939)) b!4958347))

(assert (= (and b!4958347 (not res!2115934)) b!4958349))

(assert (= b!4958360 b!4958358))

(assert (= b!4958356 b!4958360))

(assert (= (and start!522682 ((_ is Cons!57290) rulesArg!259)) b!4958356))

(assert (= start!522682 b!4958351))

(assert (= start!522682 b!4958348))

(declare-fun m!5982904 () Bool)

(assert (=> b!4958346 m!5982904))

(declare-fun m!5982906 () Bool)

(assert (=> b!4958346 m!5982906))

(declare-fun m!5982908 () Bool)

(assert (=> b!4958346 m!5982908))

(declare-fun m!5982910 () Bool)

(assert (=> b!4958348 m!5982910))

(declare-fun m!5982912 () Bool)

(assert (=> b!4958362 m!5982912))

(declare-fun m!5982914 () Bool)

(assert (=> b!4958357 m!5982914))

(declare-fun m!5982916 () Bool)

(assert (=> b!4958357 m!5982916))

(declare-fun m!5982918 () Bool)

(assert (=> b!4958347 m!5982918))

(declare-fun m!5982920 () Bool)

(assert (=> b!4958347 m!5982920))

(declare-fun m!5982922 () Bool)

(assert (=> b!4958347 m!5982922))

(declare-fun m!5982924 () Bool)

(assert (=> b!4958354 m!5982924))

(declare-fun m!5982926 () Bool)

(assert (=> b!4958351 m!5982926))

(declare-fun m!5982928 () Bool)

(assert (=> start!522682 m!5982928))

(declare-fun m!5982930 () Bool)

(assert (=> start!522682 m!5982930))

(declare-fun m!5982932 () Bool)

(assert (=> b!4958355 m!5982932))

(declare-fun m!5982934 () Bool)

(assert (=> b!4958355 m!5982934))

(declare-fun m!5982936 () Bool)

(assert (=> b!4958350 m!5982936))

(declare-fun m!5982938 () Bool)

(assert (=> b!4958360 m!5982938))

(declare-fun m!5982940 () Bool)

(assert (=> b!4958360 m!5982940))

(declare-fun m!5982942 () Bool)

(assert (=> b!4958353 m!5982942))

(assert (=> b!4958353 m!5982942))

(declare-fun m!5982944 () Bool)

(assert (=> b!4958353 m!5982944))

(declare-fun m!5982946 () Bool)

(assert (=> b!4958353 m!5982946))

(declare-fun m!5982948 () Bool)

(assert (=> b!4958349 m!5982948))

(declare-fun m!5982950 () Bool)

(assert (=> b!4958352 m!5982950))

(assert (=> b!4958352 m!5982918))

(check-sat (not start!522682) (not b!4958360) (not b!4958346) b_and!347259 (not b!4958357) (not b!4958354) (not b!4958347) (not b!4958350) (not b!4958349) (not b!4958356) (not b!4958362) (not b!4958352) (not b!4958351) (not b!4958355) (not b!4958353) b_and!347261 (not b_next!133199) (not b_next!133197) (not b!4958348))
(check-sat b_and!347259 b_and!347261 (not b_next!133197) (not b_next!133199))
(get-model)

(declare-fun d!1595894 () Bool)

(assert (=> d!1595894 true))

(declare-fun lt!2046848 () Bool)

(declare-fun lambda!247151 () Int)

(declare-fun forall!13307 (List!57414 Int) Bool)

(assert (=> d!1595894 (= lt!2046848 (forall!13307 rulesArg!259 lambda!247151))))

(declare-fun e!3098791 () Bool)

(assert (=> d!1595894 (= lt!2046848 e!3098791)))

(declare-fun res!2115977 () Bool)

(assert (=> d!1595894 (=> res!2115977 e!3098791)))

(assert (=> d!1595894 (= res!2115977 (not ((_ is Cons!57290) rulesArg!259)))))

(assert (=> d!1595894 (= (rulesValidInductive!3245 thiss!15247 rulesArg!259) lt!2046848)))

(declare-fun b!4958397 () Bool)

(declare-fun e!3098790 () Bool)

(assert (=> b!4958397 (= e!3098791 e!3098790)))

(declare-fun res!2115978 () Bool)

(assert (=> b!4958397 (=> (not res!2115978) (not e!3098790))))

(declare-fun ruleValid!3781 (LexerInterface!7934 Rule!16484) Bool)

(assert (=> b!4958397 (= res!2115978 (ruleValid!3781 thiss!15247 (h!63738 rulesArg!259)))))

(declare-fun b!4958398 () Bool)

(assert (=> b!4958398 (= e!3098790 (rulesValidInductive!3245 thiss!15247 (t!367980 rulesArg!259)))))

(assert (= (and d!1595894 (not res!2115977)) b!4958397))

(assert (= (and b!4958397 res!2115978) b!4958398))

(declare-fun m!5982978 () Bool)

(assert (=> d!1595894 m!5982978))

(declare-fun m!5982980 () Bool)

(assert (=> b!4958397 m!5982980))

(declare-fun m!5982982 () Bool)

(assert (=> b!4958398 m!5982982))

(assert (=> b!4958354 d!1595894))

(declare-fun b!4958409 () Bool)

(declare-fun e!3098799 () Bool)

(declare-fun e!3098798 () Bool)

(assert (=> b!4958409 (= e!3098799 e!3098798)))

(declare-fun res!2115989 () Bool)

(assert (=> b!4958409 (=> (not res!2115989) (not e!3098798))))

(assert (=> b!4958409 (= res!2115989 (not ((_ is Nil!57289) lt!2046801)))))

(declare-fun b!4958412 () Bool)

(declare-fun e!3098800 () Bool)

(declare-fun size!37977 (List!57413) Int)

(assert (=> b!4958412 (= e!3098800 (>= (size!37977 lt!2046801) (size!37977 lt!2046801)))))

(declare-fun d!1595898 () Bool)

(assert (=> d!1595898 e!3098800))

(declare-fun res!2115990 () Bool)

(assert (=> d!1595898 (=> res!2115990 e!3098800)))

(declare-fun lt!2046851 () Bool)

(assert (=> d!1595898 (= res!2115990 (not lt!2046851))))

(assert (=> d!1595898 (= lt!2046851 e!3098799)))

(declare-fun res!2115988 () Bool)

(assert (=> d!1595898 (=> res!2115988 e!3098799)))

(assert (=> d!1595898 (= res!2115988 ((_ is Nil!57289) lt!2046801))))

(assert (=> d!1595898 (= (isPrefix!5195 lt!2046801 lt!2046801) lt!2046851)))

(declare-fun b!4958410 () Bool)

(declare-fun res!2115987 () Bool)

(assert (=> b!4958410 (=> (not res!2115987) (not e!3098798))))

(declare-fun head!10649 (List!57413) C!27400)

(assert (=> b!4958410 (= res!2115987 (= (head!10649 lt!2046801) (head!10649 lt!2046801)))))

(declare-fun b!4958411 () Bool)

(declare-fun tail!9782 (List!57413) List!57413)

(assert (=> b!4958411 (= e!3098798 (isPrefix!5195 (tail!9782 lt!2046801) (tail!9782 lt!2046801)))))

(assert (= (and d!1595898 (not res!2115988)) b!4958409))

(assert (= (and b!4958409 res!2115989) b!4958410))

(assert (= (and b!4958410 res!2115987) b!4958411))

(assert (= (and d!1595898 (not res!2115990)) b!4958412))

(declare-fun m!5982984 () Bool)

(assert (=> b!4958412 m!5982984))

(assert (=> b!4958412 m!5982984))

(declare-fun m!5982986 () Bool)

(assert (=> b!4958410 m!5982986))

(assert (=> b!4958410 m!5982986))

(declare-fun m!5982988 () Bool)

(assert (=> b!4958411 m!5982988))

(assert (=> b!4958411 m!5982988))

(assert (=> b!4958411 m!5982988))

(assert (=> b!4958411 m!5982988))

(declare-fun m!5982990 () Bool)

(assert (=> b!4958411 m!5982990))

(assert (=> b!4958355 d!1595898))

(declare-fun d!1595900 () Bool)

(assert (=> d!1595900 (isPrefix!5195 lt!2046801 lt!2046801)))

(declare-fun lt!2046854 () Unit!148183)

(declare-fun choose!36629 (List!57413 List!57413) Unit!148183)

(assert (=> d!1595900 (= lt!2046854 (choose!36629 lt!2046801 lt!2046801))))

(assert (=> d!1595900 (= (lemmaIsPrefixRefl!3519 lt!2046801 lt!2046801) lt!2046854)))

(declare-fun bs!1182607 () Bool)

(assert (= bs!1182607 d!1595900))

(assert (=> bs!1182607 m!5982932))

(declare-fun m!5982992 () Bool)

(assert (=> bs!1182607 m!5982992))

(assert (=> b!4958355 d!1595900))

(declare-fun d!1595902 () Bool)

(assert (=> d!1595902 (= (get!19841 lt!2046804) (v!50337 lt!2046804))))

(assert (=> b!4958352 d!1595902))

(declare-fun d!1595904 () Bool)

(assert (=> d!1595904 (= (get!19840 lt!2046807) (v!50338 lt!2046807))))

(assert (=> b!4958352 d!1595904))

(declare-fun d!1595906 () Bool)

(declare-fun isBalanced!4181 (Conc!15094) Bool)

(assert (=> d!1595906 (= (inv!74770 input!1342) (isBalanced!4181 (c!846330 input!1342)))))

(declare-fun bs!1182608 () Bool)

(assert (= bs!1182608 d!1595906))

(declare-fun m!5982994 () Bool)

(assert (=> bs!1182608 m!5982994))

(assert (=> start!522682 d!1595906))

(declare-fun d!1595908 () Bool)

(assert (=> d!1595908 (= (inv!74770 totalInput!464) (isBalanced!4181 (c!846330 totalInput!464)))))

(declare-fun bs!1182609 () Bool)

(assert (= bs!1182609 d!1595908))

(declare-fun m!5982996 () Bool)

(assert (=> bs!1182609 m!5982996))

(assert (=> start!522682 d!1595908))

(declare-fun d!1595910 () Bool)

(assert (=> d!1595910 (= (isEmpty!30806 rulesArg!259) ((_ is Nil!57290) rulesArg!259))))

(assert (=> b!4958362 d!1595910))

(declare-fun d!1595912 () Bool)

(declare-fun c!846338 () Bool)

(assert (=> d!1595912 (= c!846338 ((_ is Node!15094) (c!846330 input!1342)))))

(declare-fun e!3098805 () Bool)

(assert (=> d!1595912 (= (inv!74769 (c!846330 input!1342)) e!3098805)))

(declare-fun b!4958419 () Bool)

(declare-fun inv!74772 (Conc!15094) Bool)

(assert (=> b!4958419 (= e!3098805 (inv!74772 (c!846330 input!1342)))))

(declare-fun b!4958420 () Bool)

(declare-fun e!3098806 () Bool)

(assert (=> b!4958420 (= e!3098805 e!3098806)))

(declare-fun res!2115993 () Bool)

(assert (=> b!4958420 (= res!2115993 (not ((_ is Leaf!25090) (c!846330 input!1342))))))

(assert (=> b!4958420 (=> res!2115993 e!3098806)))

(declare-fun b!4958421 () Bool)

(declare-fun inv!74773 (Conc!15094) Bool)

(assert (=> b!4958421 (= e!3098806 (inv!74773 (c!846330 input!1342)))))

(assert (= (and d!1595912 c!846338) b!4958419))

(assert (= (and d!1595912 (not c!846338)) b!4958420))

(assert (= (and b!4958420 (not res!2115993)) b!4958421))

(declare-fun m!5982998 () Bool)

(assert (=> b!4958419 m!5982998))

(declare-fun m!5983000 () Bool)

(assert (=> b!4958421 m!5983000))

(assert (=> b!4958351 d!1595912))

(declare-fun d!1595914 () Bool)

(declare-fun e!3098809 () Bool)

(assert (=> d!1595914 e!3098809))

(declare-fun res!2115996 () Bool)

(assert (=> d!1595914 (=> res!2115996 e!3098809)))

(declare-fun lt!2046857 () Bool)

(assert (=> d!1595914 (= res!2115996 (not lt!2046857))))

(declare-fun drop!2329 (List!57413 Int) List!57413)

(assert (=> d!1595914 (= lt!2046857 (= lt!2046801 (drop!2329 (list!18289 totalInput!464) (- (size!37977 (list!18289 totalInput!464)) (size!37977 lt!2046801)))))))

(assert (=> d!1595914 (= (isSuffix!1141 lt!2046801 (list!18289 totalInput!464)) lt!2046857)))

(declare-fun b!4958424 () Bool)

(assert (=> b!4958424 (= e!3098809 (>= (size!37977 (list!18289 totalInput!464)) (size!37977 lt!2046801)))))

(assert (= (and d!1595914 (not res!2115996)) b!4958424))

(assert (=> d!1595914 m!5982942))

(declare-fun m!5983002 () Bool)

(assert (=> d!1595914 m!5983002))

(assert (=> d!1595914 m!5982984))

(assert (=> d!1595914 m!5982942))

(declare-fun m!5983004 () Bool)

(assert (=> d!1595914 m!5983004))

(assert (=> b!4958424 m!5982942))

(assert (=> b!4958424 m!5983002))

(assert (=> b!4958424 m!5982984))

(assert (=> b!4958353 d!1595914))

(declare-fun d!1595916 () Bool)

(declare-fun list!18290 (Conc!15094) List!57413)

(assert (=> d!1595916 (= (list!18289 totalInput!464) (list!18290 (c!846330 totalInput!464)))))

(declare-fun bs!1182610 () Bool)

(assert (= bs!1182610 d!1595916))

(declare-fun m!5983006 () Bool)

(assert (=> bs!1182610 m!5983006))

(assert (=> b!4958353 d!1595916))

(declare-fun d!1595918 () Bool)

(assert (=> d!1595918 (= (list!18289 input!1342) (list!18290 (c!846330 input!1342)))))

(declare-fun bs!1182611 () Bool)

(assert (= bs!1182611 d!1595918))

(declare-fun m!5983008 () Bool)

(assert (=> bs!1182611 m!5983008))

(assert (=> b!4958353 d!1595918))

(declare-fun d!1595920 () Bool)

(assert (=> d!1595920 (= (inv!74765 (tag!9206 (h!63738 rulesArg!259))) (= (mod (str.len (value!267188 (tag!9206 (h!63738 rulesArg!259)))) 2) 0))))

(assert (=> b!4958360 d!1595920))

(declare-fun d!1595922 () Bool)

(declare-fun res!2115999 () Bool)

(declare-fun e!3098812 () Bool)

(assert (=> d!1595922 (=> (not res!2115999) (not e!3098812))))

(declare-fun semiInverseModEq!3680 (Int Int) Bool)

(assert (=> d!1595922 (= res!2115999 (semiInverseModEq!3680 (toChars!11152 (transformation!8342 (h!63738 rulesArg!259))) (toValue!11293 (transformation!8342 (h!63738 rulesArg!259)))))))

(assert (=> d!1595922 (= (inv!74771 (transformation!8342 (h!63738 rulesArg!259))) e!3098812)))

(declare-fun b!4958427 () Bool)

(declare-fun equivClasses!3528 (Int Int) Bool)

(assert (=> b!4958427 (= e!3098812 (equivClasses!3528 (toChars!11152 (transformation!8342 (h!63738 rulesArg!259))) (toValue!11293 (transformation!8342 (h!63738 rulesArg!259)))))))

(assert (= (and d!1595922 res!2115999) b!4958427))

(declare-fun m!5983010 () Bool)

(assert (=> d!1595922 m!5983010))

(declare-fun m!5983012 () Bool)

(assert (=> b!4958427 m!5983012))

(assert (=> b!4958360 d!1595922))

(declare-fun d!1595924 () Bool)

(declare-fun isEmpty!30808 (Option!14353) Bool)

(assert (=> d!1595924 (= (isDefined!11276 lt!2046808) (not (isEmpty!30808 lt!2046808)))))

(declare-fun bs!1182612 () Bool)

(assert (= bs!1182612 d!1595924))

(declare-fun m!5983014 () Bool)

(assert (=> bs!1182612 m!5983014))

(assert (=> b!4958349 d!1595924))

(declare-fun d!1595926 () Bool)

(assert (=> d!1595926 (= (list!18289 (_2!34258 lt!2046802)) (list!18290 (c!846330 (_2!34258 lt!2046802))))))

(declare-fun bs!1182613 () Bool)

(assert (= bs!1182613 d!1595926))

(declare-fun m!5983016 () Bool)

(assert (=> bs!1182613 m!5983016))

(assert (=> b!4958350 d!1595926))

(declare-fun b!4958444 () Bool)

(declare-fun e!3098829 () Option!14354)

(declare-fun call!345943 () Option!14354)

(assert (=> b!4958444 (= e!3098829 call!345943)))

(declare-fun d!1595928 () Bool)

(declare-fun e!3098827 () Bool)

(assert (=> d!1595928 e!3098827))

(declare-fun res!2116014 () Bool)

(assert (=> d!1595928 (=> (not res!2116014) (not e!3098827))))

(declare-fun lt!2046876 () Option!14354)

(assert (=> d!1595928 (= res!2116014 (= (isDefined!11277 lt!2046876) (isDefined!11276 (maxPrefixZipper!739 thiss!15247 (t!367980 rulesArg!259) (list!18289 input!1342)))))))

(assert (=> d!1595928 (= lt!2046876 e!3098829)))

(declare-fun c!846341 () Bool)

(assert (=> d!1595928 (= c!846341 (and ((_ is Cons!57290) (t!367980 rulesArg!259)) ((_ is Nil!57290) (t!367980 (t!367980 rulesArg!259)))))))

(declare-fun lt!2046875 () Unit!148183)

(declare-fun lt!2046874 () Unit!148183)

(assert (=> d!1595928 (= lt!2046875 lt!2046874)))

(declare-fun lt!2046877 () List!57413)

(declare-fun lt!2046872 () List!57413)

(assert (=> d!1595928 (isPrefix!5195 lt!2046877 lt!2046872)))

(assert (=> d!1595928 (= lt!2046874 (lemmaIsPrefixRefl!3519 lt!2046877 lt!2046872))))

(assert (=> d!1595928 (= lt!2046872 (list!18289 input!1342))))

(assert (=> d!1595928 (= lt!2046877 (list!18289 input!1342))))

(assert (=> d!1595928 (rulesValidInductive!3245 thiss!15247 (t!367980 rulesArg!259))))

(assert (=> d!1595928 (= (maxPrefixZipperSequenceV2!673 thiss!15247 (t!367980 rulesArg!259) input!1342 totalInput!464) lt!2046876)))

(declare-fun b!4958445 () Bool)

(declare-fun e!3098825 () Bool)

(declare-fun e!3098830 () Bool)

(assert (=> b!4958445 (= e!3098825 e!3098830)))

(declare-fun res!2116015 () Bool)

(assert (=> b!4958445 (=> (not res!2116015) (not e!3098830))))

(assert (=> b!4958445 (= res!2116015 (= (_1!34258 (get!19840 lt!2046876)) (_1!34257 (get!19841 (maxPrefix!4637 thiss!15247 (t!367980 rulesArg!259) (list!18289 input!1342))))))))

(declare-fun bm!345938 () Bool)

(assert (=> bm!345938 (= call!345943 (maxPrefixOneRuleZipperSequenceV2!326 thiss!15247 (h!63738 (t!367980 rulesArg!259)) input!1342 totalInput!464))))

(declare-fun b!4958446 () Bool)

(declare-fun e!3098826 () Bool)

(assert (=> b!4958446 (= e!3098826 (= (list!18289 (_2!34258 (get!19840 lt!2046876))) (_2!34257 (get!19841 (maxPrefixZipper!739 thiss!15247 (t!367980 rulesArg!259) (list!18289 input!1342))))))))

(declare-fun b!4958447 () Bool)

(declare-fun lt!2046873 () Option!14354)

(declare-fun lt!2046878 () Option!14354)

(assert (=> b!4958447 (= e!3098829 (ite (and ((_ is None!14353) lt!2046873) ((_ is None!14353) lt!2046878)) None!14353 (ite ((_ is None!14353) lt!2046878) lt!2046873 (ite ((_ is None!14353) lt!2046873) lt!2046878 (ite (>= (size!37976 (_1!34258 (v!50338 lt!2046873))) (size!37976 (_1!34258 (v!50338 lt!2046878)))) lt!2046873 lt!2046878)))))))

(assert (=> b!4958447 (= lt!2046873 call!345943)))

(assert (=> b!4958447 (= lt!2046878 (maxPrefixZipperSequenceV2!673 thiss!15247 (t!367980 (t!367980 rulesArg!259)) input!1342 totalInput!464))))

(declare-fun b!4958448 () Bool)

(assert (=> b!4958448 (= e!3098827 e!3098825)))

(declare-fun res!2116017 () Bool)

(assert (=> b!4958448 (=> res!2116017 e!3098825)))

(assert (=> b!4958448 (= res!2116017 (not (isDefined!11277 lt!2046876)))))

(declare-fun b!4958449 () Bool)

(declare-fun res!2116013 () Bool)

(assert (=> b!4958449 (=> (not res!2116013) (not e!3098827))))

(declare-fun e!3098828 () Bool)

(assert (=> b!4958449 (= res!2116013 e!3098828)))

(declare-fun res!2116016 () Bool)

(assert (=> b!4958449 (=> res!2116016 e!3098828)))

(assert (=> b!4958449 (= res!2116016 (not (isDefined!11277 lt!2046876)))))

(declare-fun b!4958450 () Bool)

(assert (=> b!4958450 (= e!3098828 e!3098826)))

(declare-fun res!2116012 () Bool)

(assert (=> b!4958450 (=> (not res!2116012) (not e!3098826))))

(assert (=> b!4958450 (= res!2116012 (= (_1!34258 (get!19840 lt!2046876)) (_1!34257 (get!19841 (maxPrefixZipper!739 thiss!15247 (t!367980 rulesArg!259) (list!18289 input!1342))))))))

(declare-fun b!4958451 () Bool)

(assert (=> b!4958451 (= e!3098830 (= (list!18289 (_2!34258 (get!19840 lt!2046876))) (_2!34257 (get!19841 (maxPrefix!4637 thiss!15247 (t!367980 rulesArg!259) (list!18289 input!1342))))))))

(assert (= (and d!1595928 c!846341) b!4958444))

(assert (= (and d!1595928 (not c!846341)) b!4958447))

(assert (= (or b!4958444 b!4958447) bm!345938))

(assert (= (and d!1595928 res!2116014) b!4958449))

(assert (= (and b!4958449 (not res!2116016)) b!4958450))

(assert (= (and b!4958450 res!2116012) b!4958446))

(assert (= (and b!4958449 res!2116013) b!4958448))

(assert (= (and b!4958448 (not res!2116017)) b!4958445))

(assert (= (and b!4958445 res!2116015) b!4958451))

(declare-fun m!5983018 () Bool)

(assert (=> b!4958447 m!5983018))

(declare-fun m!5983020 () Bool)

(assert (=> bm!345938 m!5983020))

(declare-fun m!5983022 () Bool)

(assert (=> b!4958445 m!5983022))

(assert (=> b!4958445 m!5982946))

(assert (=> b!4958445 m!5982946))

(declare-fun m!5983024 () Bool)

(assert (=> b!4958445 m!5983024))

(assert (=> b!4958445 m!5983024))

(declare-fun m!5983026 () Bool)

(assert (=> b!4958445 m!5983026))

(declare-fun m!5983028 () Bool)

(assert (=> b!4958448 m!5983028))

(assert (=> b!4958451 m!5982946))

(assert (=> b!4958451 m!5983024))

(assert (=> b!4958451 m!5982946))

(assert (=> b!4958451 m!5983024))

(assert (=> b!4958451 m!5983026))

(declare-fun m!5983030 () Bool)

(assert (=> b!4958451 m!5983030))

(assert (=> b!4958451 m!5983022))

(declare-fun m!5983032 () Bool)

(assert (=> d!1595928 m!5983032))

(declare-fun m!5983034 () Bool)

(assert (=> d!1595928 m!5983034))

(assert (=> d!1595928 m!5982946))

(assert (=> d!1595928 m!5983032))

(declare-fun m!5983036 () Bool)

(assert (=> d!1595928 m!5983036))

(assert (=> d!1595928 m!5982982))

(declare-fun m!5983038 () Bool)

(assert (=> d!1595928 m!5983038))

(assert (=> d!1595928 m!5983028))

(assert (=> d!1595928 m!5982946))

(assert (=> b!4958450 m!5983022))

(assert (=> b!4958450 m!5982946))

(assert (=> b!4958450 m!5982946))

(assert (=> b!4958450 m!5983032))

(assert (=> b!4958450 m!5983032))

(declare-fun m!5983040 () Bool)

(assert (=> b!4958450 m!5983040))

(assert (=> b!4958449 m!5983028))

(assert (=> b!4958446 m!5982946))

(assert (=> b!4958446 m!5983032))

(assert (=> b!4958446 m!5983030))

(assert (=> b!4958446 m!5983022))

(assert (=> b!4958446 m!5983032))

(assert (=> b!4958446 m!5983040))

(assert (=> b!4958446 m!5982946))

(assert (=> b!4958357 d!1595928))

(declare-fun b!4958508 () Bool)

(declare-fun e!3098877 () Bool)

(assert (=> b!4958508 (= e!3098877 true)))

(declare-fun b!4958507 () Bool)

(declare-fun e!3098876 () Bool)

(assert (=> b!4958507 (= e!3098876 e!3098877)))

(declare-fun b!4958498 () Bool)

(assert (=> b!4958498 e!3098876))

(assert (= b!4958507 b!4958508))

(assert (= b!4958498 b!4958507))

(declare-fun order!26107 () Int)

(declare-fun order!26105 () Int)

(declare-fun lambda!247164 () Int)

(declare-fun dynLambda!23090 (Int Int) Int)

(declare-fun dynLambda!23091 (Int Int) Int)

(assert (=> b!4958508 (< (dynLambda!23090 order!26105 (toValue!11293 (transformation!8342 (h!63738 rulesArg!259)))) (dynLambda!23091 order!26107 lambda!247164))))

(declare-fun order!26109 () Int)

(declare-fun dynLambda!23092 (Int Int) Int)

(assert (=> b!4958508 (< (dynLambda!23092 order!26109 (toChars!11152 (transformation!8342 (h!63738 rulesArg!259)))) (dynLambda!23091 order!26107 lambda!247164))))

(declare-fun b!4958495 () Bool)

(declare-fun e!3098868 () Bool)

(declare-fun e!3098867 () Bool)

(assert (=> b!4958495 (= e!3098868 e!3098867)))

(declare-fun res!2116047 () Bool)

(assert (=> b!4958495 (=> res!2116047 e!3098867)))

(declare-fun lt!2046925 () Option!14354)

(assert (=> b!4958495 (= res!2116047 (not (isDefined!11277 lt!2046925)))))

(declare-fun d!1595930 () Bool)

(assert (=> d!1595930 e!3098868))

(declare-fun res!2116048 () Bool)

(assert (=> d!1595930 (=> (not res!2116048) (not e!3098868))))

(declare-fun maxPrefixOneRule!3610 (LexerInterface!7934 Rule!16484 List!57413) Option!14353)

(assert (=> d!1595930 (= res!2116048 (= (isDefined!11277 lt!2046925) (isDefined!11276 (maxPrefixOneRule!3610 thiss!15247 (h!63738 rulesArg!259) (list!18289 input!1342)))))))

(declare-fun e!3098869 () Option!14354)

(assert (=> d!1595930 (= lt!2046925 e!3098869)))

(declare-fun c!846345 () Bool)

(declare-datatypes ((tuple2!61916 0))(
  ( (tuple2!61917 (_1!34261 BalanceConc!29618) (_2!34261 BalanceConc!29618)) )
))
(declare-fun lt!2046927 () tuple2!61916)

(declare-fun isEmpty!30811 (BalanceConc!29618) Bool)

(assert (=> d!1595930 (= c!846345 (isEmpty!30811 (_1!34261 lt!2046927)))))

(declare-fun findLongestMatchWithZipperSequenceV2!149 (Regex!13575 BalanceConc!29618 BalanceConc!29618) tuple2!61916)

(assert (=> d!1595930 (= lt!2046927 (findLongestMatchWithZipperSequenceV2!149 (regex!8342 (h!63738 rulesArg!259)) input!1342 totalInput!464))))

(assert (=> d!1595930 (ruleValid!3781 thiss!15247 (h!63738 rulesArg!259))))

(assert (=> d!1595930 (= (maxPrefixOneRuleZipperSequenceV2!326 thiss!15247 (h!63738 rulesArg!259) input!1342 totalInput!464) lt!2046925)))

(declare-fun e!3098870 () Bool)

(declare-fun b!4958496 () Bool)

(assert (=> b!4958496 (= e!3098870 (= (list!18289 (_2!34258 (get!19840 lt!2046925))) (_2!34257 (get!19841 (maxPrefixOneRule!3610 thiss!15247 (h!63738 rulesArg!259) (list!18289 input!1342))))))))

(declare-fun b!4958497 () Bool)

(assert (=> b!4958497 (= e!3098869 None!14353)))

(declare-fun apply!13885 (TokenValueInjection!16612 BalanceConc!29618) TokenValue!8652)

(declare-fun size!37980 (BalanceConc!29618) Int)

(assert (=> b!4958498 (= e!3098869 (Some!14353 (tuple2!61911 (Token!15185 (apply!13885 (transformation!8342 (h!63738 rulesArg!259)) (_1!34261 lt!2046927)) (h!63738 rulesArg!259) (size!37980 (_1!34261 lt!2046927)) (list!18289 (_1!34261 lt!2046927))) (_2!34261 lt!2046927))))))

(declare-fun lt!2046923 () List!57413)

(assert (=> b!4958498 (= lt!2046923 (list!18289 input!1342))))

(declare-fun lt!2046922 () Unit!148183)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1801 (Regex!13575 List!57413) Unit!148183)

(assert (=> b!4958498 (= lt!2046922 (longestMatchIsAcceptedByMatchOrIsEmpty!1801 (regex!8342 (h!63738 rulesArg!259)) lt!2046923))))

(declare-fun res!2116046 () Bool)

(declare-fun isEmpty!30812 (List!57413) Bool)

(declare-datatypes ((tuple2!61918 0))(
  ( (tuple2!61919 (_1!34262 List!57413) (_2!34262 List!57413)) )
))
(declare-fun findLongestMatchInner!1840 (Regex!13575 List!57413 Int List!57413 List!57413 Int) tuple2!61918)

(assert (=> b!4958498 (= res!2116046 (isEmpty!30812 (_1!34262 (findLongestMatchInner!1840 (regex!8342 (h!63738 rulesArg!259)) Nil!57289 (size!37977 Nil!57289) lt!2046923 lt!2046923 (size!37977 lt!2046923)))))))

(declare-fun e!3098871 () Bool)

(assert (=> b!4958498 (=> res!2116046 e!3098871)))

(assert (=> b!4958498 e!3098871))

(declare-fun lt!2046929 () Unit!148183)

(assert (=> b!4958498 (= lt!2046929 lt!2046922)))

(declare-fun lt!2046930 () Unit!148183)

(declare-fun lemmaInv!1319 (TokenValueInjection!16612) Unit!148183)

(assert (=> b!4958498 (= lt!2046930 (lemmaInv!1319 (transformation!8342 (h!63738 rulesArg!259))))))

(declare-fun lt!2046921 () Unit!148183)

(declare-fun ForallOf!1212 (Int BalanceConc!29618) Unit!148183)

(assert (=> b!4958498 (= lt!2046921 (ForallOf!1212 lambda!247164 (_1!34261 lt!2046927)))))

(declare-fun lt!2046924 () Unit!148183)

(declare-fun seqFromList!6017 (List!57413) BalanceConc!29618)

(assert (=> b!4958498 (= lt!2046924 (ForallOf!1212 lambda!247164 (seqFromList!6017 (list!18289 (_1!34261 lt!2046927)))))))

(declare-fun lt!2046926 () Option!14354)

(assert (=> b!4958498 (= lt!2046926 (Some!14353 (tuple2!61911 (Token!15185 (apply!13885 (transformation!8342 (h!63738 rulesArg!259)) (_1!34261 lt!2046927)) (h!63738 rulesArg!259) (size!37980 (_1!34261 lt!2046927)) (list!18289 (_1!34261 lt!2046927))) (_2!34261 lt!2046927))))))

(declare-fun lt!2046928 () Unit!148183)

(declare-fun lemmaEqSameImage!1153 (TokenValueInjection!16612 BalanceConc!29618 BalanceConc!29618) Unit!148183)

(assert (=> b!4958498 (= lt!2046928 (lemmaEqSameImage!1153 (transformation!8342 (h!63738 rulesArg!259)) (_1!34261 lt!2046927) (seqFromList!6017 (list!18289 (_1!34261 lt!2046927)))))))

(declare-fun b!4958499 () Bool)

(assert (=> b!4958499 (= e!3098867 e!3098870)))

(declare-fun res!2116045 () Bool)

(assert (=> b!4958499 (=> (not res!2116045) (not e!3098870))))

(assert (=> b!4958499 (= res!2116045 (= (_1!34258 (get!19840 lt!2046925)) (_1!34257 (get!19841 (maxPrefixOneRule!3610 thiss!15247 (h!63738 rulesArg!259) (list!18289 input!1342))))))))

(declare-fun b!4958500 () Bool)

(declare-fun matchR!6617 (Regex!13575 List!57413) Bool)

(assert (=> b!4958500 (= e!3098871 (matchR!6617 (regex!8342 (h!63738 rulesArg!259)) (_1!34262 (findLongestMatchInner!1840 (regex!8342 (h!63738 rulesArg!259)) Nil!57289 (size!37977 Nil!57289) lt!2046923 lt!2046923 (size!37977 lt!2046923)))))))

(assert (= (and d!1595930 c!846345) b!4958497))

(assert (= (and d!1595930 (not c!846345)) b!4958498))

(assert (= (and b!4958498 (not res!2116046)) b!4958500))

(assert (= (and d!1595930 res!2116048) b!4958495))

(assert (= (and b!4958495 (not res!2116047)) b!4958499))

(assert (= (and b!4958499 res!2116045) b!4958496))

(assert (=> b!4958496 m!5982946))

(declare-fun m!5983106 () Bool)

(assert (=> b!4958496 m!5983106))

(declare-fun m!5983108 () Bool)

(assert (=> b!4958496 m!5983108))

(declare-fun m!5983110 () Bool)

(assert (=> b!4958496 m!5983110))

(assert (=> b!4958496 m!5983106))

(declare-fun m!5983112 () Bool)

(assert (=> b!4958496 m!5983112))

(assert (=> b!4958496 m!5982946))

(declare-fun m!5983114 () Bool)

(assert (=> b!4958495 m!5983114))

(assert (=> b!4958499 m!5983108))

(assert (=> b!4958499 m!5982946))

(assert (=> b!4958499 m!5982946))

(assert (=> b!4958499 m!5983106))

(assert (=> b!4958499 m!5983106))

(assert (=> b!4958499 m!5983112))

(assert (=> d!1595930 m!5982946))

(assert (=> d!1595930 m!5983106))

(assert (=> d!1595930 m!5982946))

(assert (=> d!1595930 m!5983114))

(assert (=> d!1595930 m!5983106))

(declare-fun m!5983116 () Bool)

(assert (=> d!1595930 m!5983116))

(assert (=> d!1595930 m!5982980))

(declare-fun m!5983118 () Bool)

(assert (=> d!1595930 m!5983118))

(declare-fun m!5983120 () Bool)

(assert (=> d!1595930 m!5983120))

(declare-fun m!5983122 () Bool)

(assert (=> b!4958500 m!5983122))

(declare-fun m!5983124 () Bool)

(assert (=> b!4958500 m!5983124))

(assert (=> b!4958500 m!5983122))

(assert (=> b!4958500 m!5983124))

(declare-fun m!5983126 () Bool)

(assert (=> b!4958500 m!5983126))

(declare-fun m!5983128 () Bool)

(assert (=> b!4958500 m!5983128))

(declare-fun m!5983130 () Bool)

(assert (=> b!4958498 m!5983130))

(declare-fun m!5983132 () Bool)

(assert (=> b!4958498 m!5983132))

(declare-fun m!5983134 () Bool)

(assert (=> b!4958498 m!5983134))

(declare-fun m!5983136 () Bool)

(assert (=> b!4958498 m!5983136))

(assert (=> b!4958498 m!5983132))

(declare-fun m!5983138 () Bool)

(assert (=> b!4958498 m!5983138))

(declare-fun m!5983140 () Bool)

(assert (=> b!4958498 m!5983140))

(declare-fun m!5983142 () Bool)

(assert (=> b!4958498 m!5983142))

(assert (=> b!4958498 m!5983142))

(assert (=> b!4958498 m!5983132))

(declare-fun m!5983144 () Bool)

(assert (=> b!4958498 m!5983144))

(assert (=> b!4958498 m!5983122))

(assert (=> b!4958498 m!5982946))

(assert (=> b!4958498 m!5983124))

(assert (=> b!4958498 m!5983122))

(assert (=> b!4958498 m!5983124))

(assert (=> b!4958498 m!5983126))

(declare-fun m!5983146 () Bool)

(assert (=> b!4958498 m!5983146))

(declare-fun m!5983148 () Bool)

(assert (=> b!4958498 m!5983148))

(assert (=> b!4958357 d!1595930))

(declare-fun d!1595954 () Bool)

(assert (=> d!1595954 (= (isDefined!11276 lt!2046804) (not (isEmpty!30808 lt!2046804)))))

(declare-fun bs!1182619 () Bool)

(assert (= bs!1182619 d!1595954))

(declare-fun m!5983150 () Bool)

(assert (=> bs!1182619 m!5983150))

(assert (=> b!4958346 d!1595954))

(declare-fun d!1595956 () Bool)

(declare-fun isEmpty!30813 (Option!14354) Bool)

(assert (=> d!1595956 (= (isDefined!11277 lt!2046807) (not (isEmpty!30813 lt!2046807)))))

(declare-fun bs!1182620 () Bool)

(assert (= bs!1182620 d!1595956))

(declare-fun m!5983152 () Bool)

(assert (=> bs!1182620 m!5983152))

(assert (=> b!4958346 d!1595956))

(declare-fun lt!2046960 () Option!14353)

(declare-fun d!1595958 () Bool)

(assert (=> d!1595958 (= lt!2046960 (maxPrefix!4637 thiss!15247 rulesArg!259 lt!2046801))))

(declare-fun e!3098889 () Option!14353)

(assert (=> d!1595958 (= lt!2046960 e!3098889)))

(declare-fun c!846351 () Bool)

(assert (=> d!1595958 (= c!846351 (and ((_ is Cons!57290) rulesArg!259) ((_ is Nil!57290) (t!367980 rulesArg!259))))))

(declare-fun lt!2046956 () Unit!148183)

(declare-fun lt!2046959 () Unit!148183)

(assert (=> d!1595958 (= lt!2046956 lt!2046959)))

(assert (=> d!1595958 (isPrefix!5195 lt!2046801 lt!2046801)))

(assert (=> d!1595958 (= lt!2046959 (lemmaIsPrefixRefl!3519 lt!2046801 lt!2046801))))

(assert (=> d!1595958 (rulesValidInductive!3245 thiss!15247 rulesArg!259)))

(assert (=> d!1595958 (= (maxPrefixZipper!739 thiss!15247 rulesArg!259 lt!2046801) lt!2046960)))

(declare-fun call!345949 () Option!14353)

(declare-fun bm!345944 () Bool)

(declare-fun maxPrefixOneRuleZipper!278 (LexerInterface!7934 Rule!16484 List!57413) Option!14353)

(assert (=> bm!345944 (= call!345949 (maxPrefixOneRuleZipper!278 thiss!15247 (h!63738 rulesArg!259) lt!2046801))))

(declare-fun b!4958540 () Bool)

(assert (=> b!4958540 (= e!3098889 call!345949)))

(declare-fun b!4958541 () Bool)

(declare-fun lt!2046958 () Option!14353)

(declare-fun lt!2046957 () Option!14353)

(assert (=> b!4958541 (= e!3098889 (ite (and ((_ is None!14352) lt!2046958) ((_ is None!14352) lt!2046957)) None!14352 (ite ((_ is None!14352) lt!2046957) lt!2046958 (ite ((_ is None!14352) lt!2046958) lt!2046957 (ite (>= (size!37976 (_1!34257 (v!50337 lt!2046958))) (size!37976 (_1!34257 (v!50337 lt!2046957)))) lt!2046958 lt!2046957)))))))

(assert (=> b!4958541 (= lt!2046958 call!345949)))

(assert (=> b!4958541 (= lt!2046957 (maxPrefixZipper!739 thiss!15247 (t!367980 rulesArg!259) lt!2046801))))

(assert (= (and d!1595958 c!846351) b!4958540))

(assert (= (and d!1595958 (not c!846351)) b!4958541))

(assert (= (or b!4958540 b!4958541) bm!345944))

(assert (=> d!1595958 m!5982922))

(assert (=> d!1595958 m!5982932))

(assert (=> d!1595958 m!5982934))

(assert (=> d!1595958 m!5982924))

(declare-fun m!5983184 () Bool)

(assert (=> bm!345944 m!5983184))

(declare-fun m!5983186 () Bool)

(assert (=> b!4958541 m!5983186))

(assert (=> b!4958346 d!1595958))

(declare-fun d!1595966 () Bool)

(declare-fun c!846352 () Bool)

(assert (=> d!1595966 (= c!846352 ((_ is Node!15094) (c!846330 totalInput!464)))))

(declare-fun e!3098890 () Bool)

(assert (=> d!1595966 (= (inv!74769 (c!846330 totalInput!464)) e!3098890)))

(declare-fun b!4958542 () Bool)

(assert (=> b!4958542 (= e!3098890 (inv!74772 (c!846330 totalInput!464)))))

(declare-fun b!4958543 () Bool)

(declare-fun e!3098891 () Bool)

(assert (=> b!4958543 (= e!3098890 e!3098891)))

(declare-fun res!2116070 () Bool)

(assert (=> b!4958543 (= res!2116070 (not ((_ is Leaf!25090) (c!846330 totalInput!464))))))

(assert (=> b!4958543 (=> res!2116070 e!3098891)))

(declare-fun b!4958544 () Bool)

(assert (=> b!4958544 (= e!3098891 (inv!74773 (c!846330 totalInput!464)))))

(assert (= (and d!1595966 c!846352) b!4958542))

(assert (= (and d!1595966 (not c!846352)) b!4958543))

(assert (= (and b!4958543 (not res!2116070)) b!4958544))

(declare-fun m!5983188 () Bool)

(assert (=> b!4958542 m!5983188))

(declare-fun m!5983190 () Bool)

(assert (=> b!4958544 m!5983190))

(assert (=> b!4958348 d!1595966))

(assert (=> b!4958347 d!1595904))

(declare-fun d!1595968 () Bool)

(assert (=> d!1595968 (= (get!19841 lt!2046808) (v!50337 lt!2046808))))

(assert (=> b!4958347 d!1595968))

(declare-fun b!4958636 () Bool)

(declare-fun e!3098944 () Bool)

(declare-fun e!3098946 () Bool)

(assert (=> b!4958636 (= e!3098944 e!3098946)))

(declare-fun res!2116108 () Bool)

(assert (=> b!4958636 (=> (not res!2116108) (not e!3098946))))

(declare-fun lt!2046992 () Option!14353)

(assert (=> b!4958636 (= res!2116108 (isDefined!11276 lt!2046992))))

(declare-fun b!4958637 () Bool)

(declare-fun res!2116106 () Bool)

(assert (=> b!4958637 (=> (not res!2116106) (not e!3098946))))

(declare-fun charsOf!5420 (Token!15184) BalanceConc!29618)

(assert (=> b!4958637 (= res!2116106 (= (list!18289 (charsOf!5420 (_1!34257 (get!19841 lt!2046992)))) (originalCharacters!8623 (_1!34257 (get!19841 lt!2046992)))))))

(declare-fun b!4958638 () Bool)

(declare-fun res!2116104 () Bool)

(assert (=> b!4958638 (=> (not res!2116104) (not e!3098946))))

(assert (=> b!4958638 (= res!2116104 (matchR!6617 (regex!8342 (rule!11564 (_1!34257 (get!19841 lt!2046992)))) (list!18289 (charsOf!5420 (_1!34257 (get!19841 lt!2046992))))))))

(declare-fun b!4958639 () Bool)

(declare-fun contains!19521 (List!57414 Rule!16484) Bool)

(assert (=> b!4958639 (= e!3098946 (contains!19521 rulesArg!259 (rule!11564 (_1!34257 (get!19841 lt!2046992)))))))

(declare-fun b!4958640 () Bool)

(declare-fun res!2116110 () Bool)

(assert (=> b!4958640 (=> (not res!2116110) (not e!3098946))))

(declare-fun ++!12515 (List!57413 List!57413) List!57413)

(assert (=> b!4958640 (= res!2116110 (= (++!12515 (list!18289 (charsOf!5420 (_1!34257 (get!19841 lt!2046992)))) (_2!34257 (get!19841 lt!2046992))) lt!2046801))))

(declare-fun call!345955 () Option!14353)

(declare-fun bm!345950 () Bool)

(assert (=> bm!345950 (= call!345955 (maxPrefixOneRule!3610 thiss!15247 (h!63738 rulesArg!259) lt!2046801))))

(declare-fun b!4958641 () Bool)

(declare-fun res!2116107 () Bool)

(assert (=> b!4958641 (=> (not res!2116107) (not e!3098946))))

(assert (=> b!4958641 (= res!2116107 (= (value!267189 (_1!34257 (get!19841 lt!2046992))) (apply!13885 (transformation!8342 (rule!11564 (_1!34257 (get!19841 lt!2046992)))) (seqFromList!6017 (originalCharacters!8623 (_1!34257 (get!19841 lt!2046992)))))))))

(declare-fun d!1595970 () Bool)

(assert (=> d!1595970 e!3098944))

(declare-fun res!2116109 () Bool)

(assert (=> d!1595970 (=> res!2116109 e!3098944)))

(assert (=> d!1595970 (= res!2116109 (isEmpty!30808 lt!2046992))))

(declare-fun e!3098945 () Option!14353)

(assert (=> d!1595970 (= lt!2046992 e!3098945)))

(declare-fun c!846362 () Bool)

(assert (=> d!1595970 (= c!846362 (and ((_ is Cons!57290) rulesArg!259) ((_ is Nil!57290) (t!367980 rulesArg!259))))))

(declare-fun lt!2046995 () Unit!148183)

(declare-fun lt!2046996 () Unit!148183)

(assert (=> d!1595970 (= lt!2046995 lt!2046996)))

(assert (=> d!1595970 (isPrefix!5195 lt!2046801 lt!2046801)))

(assert (=> d!1595970 (= lt!2046996 (lemmaIsPrefixRefl!3519 lt!2046801 lt!2046801))))

(assert (=> d!1595970 (rulesValidInductive!3245 thiss!15247 rulesArg!259)))

(assert (=> d!1595970 (= (maxPrefix!4637 thiss!15247 rulesArg!259 lt!2046801) lt!2046992)))

(declare-fun b!4958635 () Bool)

(declare-fun lt!2046994 () Option!14353)

(declare-fun lt!2046993 () Option!14353)

(assert (=> b!4958635 (= e!3098945 (ite (and ((_ is None!14352) lt!2046994) ((_ is None!14352) lt!2046993)) None!14352 (ite ((_ is None!14352) lt!2046993) lt!2046994 (ite ((_ is None!14352) lt!2046994) lt!2046993 (ite (>= (size!37976 (_1!34257 (v!50337 lt!2046994))) (size!37976 (_1!34257 (v!50337 lt!2046993)))) lt!2046994 lt!2046993)))))))

(assert (=> b!4958635 (= lt!2046994 call!345955)))

(assert (=> b!4958635 (= lt!2046993 (maxPrefix!4637 thiss!15247 (t!367980 rulesArg!259) lt!2046801))))

(declare-fun b!4958642 () Bool)

(declare-fun res!2116105 () Bool)

(assert (=> b!4958642 (=> (not res!2116105) (not e!3098946))))

(assert (=> b!4958642 (= res!2116105 (< (size!37977 (_2!34257 (get!19841 lt!2046992))) (size!37977 lt!2046801)))))

(declare-fun b!4958643 () Bool)

(assert (=> b!4958643 (= e!3098945 call!345955)))

(assert (= (and d!1595970 c!846362) b!4958643))

(assert (= (and d!1595970 (not c!846362)) b!4958635))

(assert (= (or b!4958643 b!4958635) bm!345950))

(assert (= (and d!1595970 (not res!2116109)) b!4958636))

(assert (= (and b!4958636 res!2116108) b!4958637))

(assert (= (and b!4958637 res!2116106) b!4958642))

(assert (= (and b!4958642 res!2116105) b!4958640))

(assert (= (and b!4958640 res!2116110) b!4958641))

(assert (= (and b!4958641 res!2116107) b!4958638))

(assert (= (and b!4958638 res!2116104) b!4958639))

(declare-fun m!5983234 () Bool)

(assert (=> b!4958642 m!5983234))

(declare-fun m!5983236 () Bool)

(assert (=> b!4958642 m!5983236))

(assert (=> b!4958642 m!5982984))

(declare-fun m!5983238 () Bool)

(assert (=> b!4958636 m!5983238))

(declare-fun m!5983240 () Bool)

(assert (=> bm!345950 m!5983240))

(assert (=> b!4958641 m!5983234))

(declare-fun m!5983242 () Bool)

(assert (=> b!4958641 m!5983242))

(assert (=> b!4958641 m!5983242))

(declare-fun m!5983244 () Bool)

(assert (=> b!4958641 m!5983244))

(assert (=> b!4958640 m!5983234))

(declare-fun m!5983246 () Bool)

(assert (=> b!4958640 m!5983246))

(assert (=> b!4958640 m!5983246))

(declare-fun m!5983248 () Bool)

(assert (=> b!4958640 m!5983248))

(assert (=> b!4958640 m!5983248))

(declare-fun m!5983250 () Bool)

(assert (=> b!4958640 m!5983250))

(declare-fun m!5983252 () Bool)

(assert (=> b!4958635 m!5983252))

(assert (=> b!4958637 m!5983234))

(assert (=> b!4958637 m!5983246))

(assert (=> b!4958637 m!5983246))

(assert (=> b!4958637 m!5983248))

(assert (=> b!4958638 m!5983234))

(assert (=> b!4958638 m!5983246))

(assert (=> b!4958638 m!5983246))

(assert (=> b!4958638 m!5983248))

(assert (=> b!4958638 m!5983248))

(declare-fun m!5983254 () Bool)

(assert (=> b!4958638 m!5983254))

(assert (=> b!4958639 m!5983234))

(declare-fun m!5983256 () Bool)

(assert (=> b!4958639 m!5983256))

(declare-fun m!5983258 () Bool)

(assert (=> d!1595970 m!5983258))

(assert (=> d!1595970 m!5982932))

(assert (=> d!1595970 m!5982934))

(assert (=> d!1595970 m!5982924))

(assert (=> b!4958347 d!1595970))

(declare-fun e!3098949 () Bool)

(assert (=> b!4958360 (= tp!1390609 e!3098949)))

(declare-fun b!4958656 () Bool)

(declare-fun tp!1390665 () Bool)

(assert (=> b!4958656 (= e!3098949 tp!1390665)))

(declare-fun b!4958654 () Bool)

(declare-fun tp_is_empty!36291 () Bool)

(assert (=> b!4958654 (= e!3098949 tp_is_empty!36291)))

(declare-fun b!4958657 () Bool)

(declare-fun tp!1390666 () Bool)

(declare-fun tp!1390667 () Bool)

(assert (=> b!4958657 (= e!3098949 (and tp!1390666 tp!1390667))))

(declare-fun b!4958655 () Bool)

(declare-fun tp!1390664 () Bool)

(declare-fun tp!1390668 () Bool)

(assert (=> b!4958655 (= e!3098949 (and tp!1390664 tp!1390668))))

(assert (= (and b!4958360 ((_ is ElementMatch!13575) (regex!8342 (h!63738 rulesArg!259)))) b!4958654))

(assert (= (and b!4958360 ((_ is Concat!22228) (regex!8342 (h!63738 rulesArg!259)))) b!4958655))

(assert (= (and b!4958360 ((_ is Star!13575) (regex!8342 (h!63738 rulesArg!259)))) b!4958656))

(assert (= (and b!4958360 ((_ is Union!13575) (regex!8342 (h!63738 rulesArg!259)))) b!4958657))

(declare-fun b!4958668 () Bool)

(declare-fun b_free!132415 () Bool)

(declare-fun b_next!133205 () Bool)

(assert (=> b!4958668 (= b_free!132415 (not b_next!133205))))

(declare-fun tp!1390679 () Bool)

(declare-fun b_and!347267 () Bool)

(assert (=> b!4958668 (= tp!1390679 b_and!347267)))

(declare-fun b_free!132417 () Bool)

(declare-fun b_next!133207 () Bool)

(assert (=> b!4958668 (= b_free!132417 (not b_next!133207))))

(declare-fun tp!1390680 () Bool)

(declare-fun b_and!347269 () Bool)

(assert (=> b!4958668 (= tp!1390680 b_and!347269)))

(declare-fun e!3098960 () Bool)

(assert (=> b!4958668 (= e!3098960 (and tp!1390679 tp!1390680))))

(declare-fun tp!1390677 () Bool)

(declare-fun e!3098958 () Bool)

(declare-fun b!4958667 () Bool)

(assert (=> b!4958667 (= e!3098958 (and tp!1390677 (inv!74765 (tag!9206 (h!63738 (t!367980 rulesArg!259)))) (inv!74771 (transformation!8342 (h!63738 (t!367980 rulesArg!259)))) e!3098960))))

(declare-fun b!4958666 () Bool)

(declare-fun e!3098961 () Bool)

(declare-fun tp!1390678 () Bool)

(assert (=> b!4958666 (= e!3098961 (and e!3098958 tp!1390678))))

(assert (=> b!4958356 (= tp!1390614 e!3098961)))

(assert (= b!4958667 b!4958668))

(assert (= b!4958666 b!4958667))

(assert (= (and b!4958356 ((_ is Cons!57290) (t!367980 rulesArg!259))) b!4958666))

(declare-fun m!5983260 () Bool)

(assert (=> b!4958667 m!5983260))

(declare-fun m!5983262 () Bool)

(assert (=> b!4958667 m!5983262))

(declare-fun e!3098966 () Bool)

(declare-fun tp!1390687 () Bool)

(declare-fun tp!1390688 () Bool)

(declare-fun b!4958677 () Bool)

(assert (=> b!4958677 (= e!3098966 (and (inv!74769 (left!41779 (c!846330 input!1342))) tp!1390688 (inv!74769 (right!42109 (c!846330 input!1342))) tp!1390687))))

(declare-fun b!4958679 () Bool)

(declare-fun e!3098967 () Bool)

(declare-fun tp!1390689 () Bool)

(assert (=> b!4958679 (= e!3098967 tp!1390689)))

(declare-fun b!4958678 () Bool)

(declare-fun inv!74776 (IArray!30249) Bool)

(assert (=> b!4958678 (= e!3098966 (and (inv!74776 (xs!18420 (c!846330 input!1342))) e!3098967))))

(assert (=> b!4958351 (= tp!1390612 (and (inv!74769 (c!846330 input!1342)) e!3098966))))

(assert (= (and b!4958351 ((_ is Node!15094) (c!846330 input!1342))) b!4958677))

(assert (= b!4958678 b!4958679))

(assert (= (and b!4958351 ((_ is Leaf!25090) (c!846330 input!1342))) b!4958678))

(declare-fun m!5983264 () Bool)

(assert (=> b!4958677 m!5983264))

(declare-fun m!5983266 () Bool)

(assert (=> b!4958677 m!5983266))

(declare-fun m!5983268 () Bool)

(assert (=> b!4958678 m!5983268))

(assert (=> b!4958351 m!5982926))

(declare-fun tp!1390691 () Bool)

(declare-fun e!3098968 () Bool)

(declare-fun b!4958680 () Bool)

(declare-fun tp!1390690 () Bool)

(assert (=> b!4958680 (= e!3098968 (and (inv!74769 (left!41779 (c!846330 totalInput!464))) tp!1390691 (inv!74769 (right!42109 (c!846330 totalInput!464))) tp!1390690))))

(declare-fun b!4958682 () Bool)

(declare-fun e!3098969 () Bool)

(declare-fun tp!1390692 () Bool)

(assert (=> b!4958682 (= e!3098969 tp!1390692)))

(declare-fun b!4958681 () Bool)

(assert (=> b!4958681 (= e!3098968 (and (inv!74776 (xs!18420 (c!846330 totalInput!464))) e!3098969))))

(assert (=> b!4958348 (= tp!1390611 (and (inv!74769 (c!846330 totalInput!464)) e!3098968))))

(assert (= (and b!4958348 ((_ is Node!15094) (c!846330 totalInput!464))) b!4958680))

(assert (= b!4958681 b!4958682))

(assert (= (and b!4958348 ((_ is Leaf!25090) (c!846330 totalInput!464))) b!4958681))

(declare-fun m!5983270 () Bool)

(assert (=> b!4958680 m!5983270))

(declare-fun m!5983272 () Bool)

(assert (=> b!4958680 m!5983272))

(declare-fun m!5983274 () Bool)

(assert (=> b!4958681 m!5983274))

(assert (=> b!4958348 m!5982910))

(check-sat (not b!4958445) b_and!347267 (not b!4958450) (not bm!345938) (not b!4958638) (not b!4958397) (not b_next!133207) (not b!4958447) (not b!4958680) (not b!4958421) (not d!1595916) (not b!4958636) (not b!4958544) (not d!1595922) tp_is_empty!36291 (not d!1595914) (not b!4958411) (not d!1595908) (not b!4958498) (not b!4958639) (not b!4958500) (not b!4958495) (not b!4958451) (not b!4958657) (not d!1595894) (not d!1595954) (not b!4958541) (not b!4958496) (not b!4958641) (not b!4958448) (not b!4958677) (not b!4958640) (not b!4958642) (not b!4958446) (not b!4958424) (not d!1595926) (not b!4958398) (not d!1595928) (not b!4958635) b_and!347259 (not b!4958412) (not b!4958499) (not b_next!133205) (not b!4958678) (not bm!345950) (not b!4958351) (not d!1595900) (not b!4958542) (not d!1595924) (not b!4958679) (not bm!345944) (not b!4958666) (not b!4958449) b_and!347261 (not b_next!133199) (not d!1595930) (not b!4958681) (not b!4958667) (not b!4958655) (not b!4958427) (not b!4958656) (not d!1595958) (not b!4958419) (not d!1595956) (not b!4958637) (not d!1595970) (not d!1595918) (not d!1595906) (not b_next!133197) (not b!4958348) (not b!4958682) (not b!4958410) b_and!347269)
(check-sat (not b_next!133207) b_and!347267 b_and!347259 (not b_next!133205) (not b_next!133197) b_and!347269 b_and!347261 (not b_next!133199))
