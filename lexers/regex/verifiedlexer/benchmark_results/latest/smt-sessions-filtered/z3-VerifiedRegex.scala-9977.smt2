; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522394 () Bool)

(assert start!522394)

(declare-fun b!4955843 () Bool)

(declare-fun b_free!132239 () Bool)

(declare-fun b_next!133029 () Bool)

(assert (=> b!4955843 (= b_free!132239 (not b_next!133029))))

(declare-fun tp!1389730 () Bool)

(declare-fun b_and!347091 () Bool)

(assert (=> b!4955843 (= tp!1389730 b_and!347091)))

(declare-fun b_free!132241 () Bool)

(declare-fun b_next!133031 () Bool)

(assert (=> b!4955843 (= b_free!132241 (not b_next!133031))))

(declare-fun tp!1389732 () Bool)

(declare-fun b_and!347093 () Bool)

(assert (=> b!4955843 (= tp!1389732 b_and!347093)))

(declare-fun res!2114414 () Bool)

(declare-fun e!3096762 () Bool)

(assert (=> start!522394 (=> (not res!2114414) (not e!3096762))))

(declare-datatypes ((LexerInterface!7898 0))(
  ( (LexerInterfaceExt!7895 (__x!34525 Int)) (Lexer!7896) )
))
(declare-fun thiss!15247 () LexerInterface!7898)

(get-info :version)

(assert (=> start!522394 (= res!2114414 ((_ is Lexer!7896) thiss!15247))))

(assert (=> start!522394 e!3096762))

(assert (=> start!522394 true))

(declare-fun e!3096765 () Bool)

(assert (=> start!522394 e!3096765))

(declare-datatypes ((C!27328 0))(
  ( (C!27329 (val!23030 Int)) )
))
(declare-datatypes ((List!57304 0))(
  ( (Nil!57180) (Cons!57180 (h!63628 C!27328) (t!367870 List!57304)) )
))
(declare-datatypes ((IArray!30177 0))(
  ( (IArray!30178 (innerList!15146 List!57304)) )
))
(declare-datatypes ((Conc!15058 0))(
  ( (Node!15058 (left!41713 Conc!15058) (right!42043 Conc!15058) (csize!30346 Int) (cheight!15269 Int)) (Leaf!25036 (xs!18384 IArray!30177) (csize!30347 Int)) (Empty!15058) )
))
(declare-datatypes ((BalanceConc!29546 0))(
  ( (BalanceConc!29547 (c!846125 Conc!15058)) )
))
(declare-fun input!1342 () BalanceConc!29546)

(declare-fun e!3096759 () Bool)

(declare-fun inv!74590 (BalanceConc!29546) Bool)

(assert (=> start!522394 (and (inv!74590 input!1342) e!3096759)))

(declare-fun totalInput!464 () BalanceConc!29546)

(declare-fun e!3096761 () Bool)

(assert (=> start!522394 (and (inv!74590 totalInput!464) e!3096761)))

(declare-fun b!4955836 () Bool)

(declare-fun res!2114408 () Bool)

(assert (=> b!4955836 (=> (not res!2114408) (not e!3096762))))

(declare-datatypes ((List!57305 0))(
  ( (Nil!57181) (Cons!57181 (h!63629 (_ BitVec 16)) (t!367871 List!57305)) )
))
(declare-datatypes ((TokenValue!8616 0))(
  ( (FloatLiteralValue!17232 (text!60757 List!57305)) (TokenValueExt!8615 (__x!34526 Int)) (Broken!43080 (value!266137 List!57305)) (Object!8739) (End!8616) (Def!8616) (Underscore!8616) (Match!8616) (Else!8616) (Error!8616) (Case!8616) (If!8616) (Extends!8616) (Abstract!8616) (Class!8616) (Val!8616) (DelimiterValue!17232 (del!8676 List!57305)) (KeywordValue!8622 (value!266138 List!57305)) (CommentValue!17232 (value!266139 List!57305)) (WhitespaceValue!17232 (value!266140 List!57305)) (IndentationValue!8616 (value!266141 List!57305)) (String!64953) (Int32!8616) (Broken!43081 (value!266142 List!57305)) (Boolean!8617) (Unit!148074) (OperatorValue!8619 (op!8676 List!57305)) (IdentifierValue!17232 (value!266143 List!57305)) (IdentifierValue!17233 (value!266144 List!57305)) (WhitespaceValue!17233 (value!266145 List!57305)) (True!17232) (False!17232) (Broken!43082 (value!266146 List!57305)) (Broken!43083 (value!266147 List!57305)) (True!17233) (RightBrace!8616) (RightBracket!8616) (Colon!8616) (Null!8616) (Comma!8616) (LeftBracket!8616) (False!17233) (LeftBrace!8616) (ImaginaryLiteralValue!8616 (text!60758 List!57305)) (StringLiteralValue!25848 (value!266148 List!57305)) (EOFValue!8616 (value!266149 List!57305)) (IdentValue!8616 (value!266150 List!57305)) (DelimiterValue!17233 (value!266151 List!57305)) (DedentValue!8616 (value!266152 List!57305)) (NewLineValue!8616 (value!266153 List!57305)) (IntegerValue!25848 (value!266154 (_ BitVec 32)) (text!60759 List!57305)) (IntegerValue!25849 (value!266155 Int) (text!60760 List!57305)) (Times!8616) (Or!8616) (Equal!8616) (Minus!8616) (Broken!43084 (value!266156 List!57305)) (And!8616) (Div!8616) (LessEqual!8616) (Mod!8616) (Concat!22155) (Not!8616) (Plus!8616) (SpaceValue!8616 (value!266157 List!57305)) (IntegerValue!25850 (value!266158 Int) (text!60761 List!57305)) (StringLiteralValue!25849 (text!60762 List!57305)) (FloatLiteralValue!17233 (text!60763 List!57305)) (BytesLiteralValue!8616 (value!266159 List!57305)) (CommentValue!17233 (value!266160 List!57305)) (StringLiteralValue!25850 (value!266161 List!57305)) (ErrorTokenValue!8616 (msg!8677 List!57305)) )
))
(declare-datatypes ((Regex!13539 0))(
  ( (ElementMatch!13539 (c!846126 C!27328)) (Concat!22156 (regOne!27590 Regex!13539) (regTwo!27590 Regex!13539)) (EmptyExpr!13539) (Star!13539 (reg!13868 Regex!13539)) (EmptyLang!13539) (Union!13539 (regOne!27591 Regex!13539) (regTwo!27591 Regex!13539)) )
))
(declare-datatypes ((String!64954 0))(
  ( (String!64955 (value!266162 String)) )
))
(declare-datatypes ((TokenValueInjection!16540 0))(
  ( (TokenValueInjection!16541 (toValue!11257 Int) (toChars!11116 Int)) )
))
(declare-datatypes ((Rule!16412 0))(
  ( (Rule!16413 (regex!8306 Regex!13539) (tag!9170 String!64954) (isSeparator!8306 Bool) (transformation!8306 TokenValueInjection!16540)) )
))
(declare-datatypes ((List!57306 0))(
  ( (Nil!57182) (Cons!57182 (h!63630 Rule!16412) (t!367872 List!57306)) )
))
(declare-fun rulesArg!259 () List!57306)

(declare-fun rulesValidInductive!3209 (LexerInterface!7898 List!57306) Bool)

(assert (=> b!4955836 (= res!2114408 (rulesValidInductive!3209 thiss!15247 rulesArg!259))))

(declare-fun b!4955837 () Bool)

(declare-fun e!3096758 () Bool)

(assert (=> b!4955837 (= e!3096762 e!3096758)))

(declare-fun res!2114409 () Bool)

(assert (=> b!4955837 (=> (not res!2114409) (not e!3096758))))

(declare-fun lt!2045346 () List!57304)

(declare-fun isSuffix!1105 (List!57304 List!57304) Bool)

(declare-fun list!18247 (BalanceConc!29546) List!57304)

(assert (=> b!4955837 (= res!2114409 (isSuffix!1105 lt!2045346 (list!18247 totalInput!464)))))

(assert (=> b!4955837 (= lt!2045346 (list!18247 input!1342))))

(declare-fun e!3096764 () Bool)

(declare-fun tp!1389727 () Bool)

(declare-fun b!4955838 () Bool)

(declare-fun e!3096755 () Bool)

(declare-fun inv!74586 (String!64954) Bool)

(declare-fun inv!74591 (TokenValueInjection!16540) Bool)

(assert (=> b!4955838 (= e!3096764 (and tp!1389727 (inv!74586 (tag!9170 (h!63630 rulesArg!259))) (inv!74591 (transformation!8306 (h!63630 rulesArg!259))) e!3096755))))

(declare-fun b!4955839 () Bool)

(declare-fun e!3096756 () Bool)

(declare-fun e!3096757 () Bool)

(assert (=> b!4955839 (= e!3096756 e!3096757)))

(declare-fun res!2114412 () Bool)

(assert (=> b!4955839 (=> res!2114412 e!3096757)))

(declare-fun lt!2045352 () Bool)

(declare-fun lt!2045347 () Bool)

(assert (=> b!4955839 (= res!2114412 (or (not (= lt!2045352 lt!2045347)) (not lt!2045352)))))

(declare-datatypes ((Token!15112 0))(
  ( (Token!15113 (value!266163 TokenValue!8616) (rule!11522 Rule!16412) (size!37928 Int) (originalCharacters!8587 List!57304)) )
))
(declare-datatypes ((tuple2!61740 0))(
  ( (tuple2!61741 (_1!34173 Token!15112) (_2!34173 List!57304)) )
))
(declare-datatypes ((Option!14281 0))(
  ( (None!14280) (Some!14280 (v!50265 tuple2!61740)) )
))
(declare-fun lt!2045348 () Option!14281)

(declare-fun isDefined!11221 (Option!14281) Bool)

(assert (=> b!4955839 (= lt!2045347 (isDefined!11221 lt!2045348))))

(assert (=> b!4955839 (= lt!2045352 false)))

(declare-fun maxPrefixZipper!703 (LexerInterface!7898 List!57306 List!57304) Option!14281)

(assert (=> b!4955839 (= lt!2045348 (maxPrefixZipper!703 thiss!15247 rulesArg!259 lt!2045346))))

(declare-fun b!4955840 () Bool)

(declare-fun res!2114410 () Bool)

(assert (=> b!4955840 (=> (not res!2114410) (not e!3096762))))

(declare-fun isEmpty!30746 (List!57306) Bool)

(assert (=> b!4955840 (= res!2114410 (not (isEmpty!30746 rulesArg!259)))))

(declare-fun b!4955841 () Bool)

(declare-fun tp!1389729 () Bool)

(declare-fun inv!74592 (Conc!15058) Bool)

(assert (=> b!4955841 (= e!3096759 (and (inv!74592 (c!846125 input!1342)) tp!1389729))))

(declare-fun b!4955842 () Bool)

(declare-fun tp!1389728 () Bool)

(assert (=> b!4955842 (= e!3096761 (and (inv!74592 (c!846125 totalInput!464)) tp!1389728))))

(assert (=> b!4955843 (= e!3096755 (and tp!1389730 tp!1389732))))

(declare-fun b!4955844 () Bool)

(declare-fun e!3096760 () Bool)

(assert (=> b!4955844 (= e!3096758 (not e!3096760))))

(declare-fun res!2114415 () Bool)

(assert (=> b!4955844 (=> res!2114415 e!3096760)))

(assert (=> b!4955844 (= res!2114415 (or (and ((_ is Cons!57182) rulesArg!259) ((_ is Nil!57182) (t!367872 rulesArg!259))) (not ((_ is Cons!57182) rulesArg!259))))))

(declare-fun isPrefix!5159 (List!57304 List!57304) Bool)

(assert (=> b!4955844 (isPrefix!5159 lt!2045346 lt!2045346)))

(declare-datatypes ((Unit!148075 0))(
  ( (Unit!148076) )
))
(declare-fun lt!2045349 () Unit!148075)

(declare-fun lemmaIsPrefixRefl!3483 (List!57304 List!57304) Unit!148075)

(assert (=> b!4955844 (= lt!2045349 (lemmaIsPrefixRefl!3483 lt!2045346 lt!2045346))))

(declare-fun b!4955845 () Bool)

(assert (=> b!4955845 (= e!3096760 e!3096756)))

(declare-fun res!2114413 () Bool)

(assert (=> b!4955845 (=> res!2114413 e!3096756)))

(declare-datatypes ((tuple2!61742 0))(
  ( (tuple2!61743 (_1!34174 Token!15112) (_2!34174 BalanceConc!29546)) )
))
(declare-datatypes ((Option!14282 0))(
  ( (None!14281) (Some!14281 (v!50266 tuple2!61742)) )
))
(declare-fun lt!2045350 () Option!14282)

(declare-fun lt!2045351 () Option!14282)

(assert (=> b!4955845 (= res!2114413 (or (not ((_ is None!14281) lt!2045350)) (not ((_ is None!14281) lt!2045351))))))

(declare-fun maxPrefixZipperSequenceV2!637 (LexerInterface!7898 List!57306 BalanceConc!29546 BalanceConc!29546) Option!14282)

(assert (=> b!4955845 (= lt!2045351 (maxPrefixZipperSequenceV2!637 thiss!15247 (t!367872 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!290 (LexerInterface!7898 Rule!16412 BalanceConc!29546 BalanceConc!29546) Option!14282)

(assert (=> b!4955845 (= lt!2045350 (maxPrefixOneRuleZipperSequenceV2!290 thiss!15247 (h!63630 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4955846 () Bool)

(assert (=> b!4955846 (= e!3096757 lt!2045347)))

(declare-fun b!4955847 () Bool)

(declare-fun res!2114411 () Bool)

(assert (=> b!4955847 (=> res!2114411 e!3096757)))

(declare-fun get!19766 (Option!14282) tuple2!61742)

(declare-fun get!19767 (Option!14281) tuple2!61740)

(assert (=> b!4955847 (= res!2114411 (not (= (_1!34174 (get!19766 None!14281)) (_1!34173 (get!19767 lt!2045348)))))))

(declare-fun b!4955848 () Bool)

(declare-fun tp!1389731 () Bool)

(assert (=> b!4955848 (= e!3096765 (and e!3096764 tp!1389731))))

(assert (= (and start!522394 res!2114414) b!4955836))

(assert (= (and b!4955836 res!2114408) b!4955840))

(assert (= (and b!4955840 res!2114410) b!4955837))

(assert (= (and b!4955837 res!2114409) b!4955844))

(assert (= (and b!4955844 (not res!2114415)) b!4955845))

(assert (= (and b!4955845 (not res!2114413)) b!4955839))

(assert (= (and b!4955839 (not res!2114412)) b!4955847))

(assert (= (and b!4955847 (not res!2114411)) b!4955846))

(assert (= b!4955838 b!4955843))

(assert (= b!4955848 b!4955838))

(assert (= (and start!522394 ((_ is Cons!57182) rulesArg!259)) b!4955848))

(assert (= start!522394 b!4955841))

(assert (= start!522394 b!4955842))

(declare-fun m!5980446 () Bool)

(assert (=> b!4955837 m!5980446))

(assert (=> b!4955837 m!5980446))

(declare-fun m!5980448 () Bool)

(assert (=> b!4955837 m!5980448))

(declare-fun m!5980450 () Bool)

(assert (=> b!4955837 m!5980450))

(declare-fun m!5980452 () Bool)

(assert (=> b!4955839 m!5980452))

(declare-fun m!5980454 () Bool)

(assert (=> b!4955839 m!5980454))

(declare-fun m!5980456 () Bool)

(assert (=> b!4955838 m!5980456))

(declare-fun m!5980458 () Bool)

(assert (=> b!4955838 m!5980458))

(declare-fun m!5980460 () Bool)

(assert (=> b!4955844 m!5980460))

(declare-fun m!5980462 () Bool)

(assert (=> b!4955844 m!5980462))

(declare-fun m!5980464 () Bool)

(assert (=> b!4955840 m!5980464))

(declare-fun m!5980466 () Bool)

(assert (=> b!4955836 m!5980466))

(declare-fun m!5980468 () Bool)

(assert (=> b!4955845 m!5980468))

(declare-fun m!5980470 () Bool)

(assert (=> b!4955845 m!5980470))

(declare-fun m!5980472 () Bool)

(assert (=> b!4955847 m!5980472))

(declare-fun m!5980474 () Bool)

(assert (=> b!4955847 m!5980474))

(declare-fun m!5980476 () Bool)

(assert (=> b!4955842 m!5980476))

(declare-fun m!5980478 () Bool)

(assert (=> start!522394 m!5980478))

(declare-fun m!5980480 () Bool)

(assert (=> start!522394 m!5980480))

(declare-fun m!5980482 () Bool)

(assert (=> b!4955841 m!5980482))

(check-sat (not b!4955836) b_and!347091 (not b_next!133029) b_and!347093 (not b!4955841) (not b_next!133031) (not b!4955837) (not b!4955840) (not b!4955844) (not b!4955839) (not b!4955848) (not start!522394) (not b!4955847) (not b!4955842) (not b!4955845) (not b!4955838))
(check-sat b_and!347091 b_and!347093 (not b_next!133029) (not b_next!133031))
