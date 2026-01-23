; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522410 () Bool)

(assert start!522410)

(declare-fun b!4956211 () Bool)

(declare-fun b_free!132271 () Bool)

(declare-fun b_next!133061 () Bool)

(assert (=> b!4956211 (= b_free!132271 (not b_next!133061))))

(declare-fun tp!1389875 () Bool)

(declare-fun b_and!347123 () Bool)

(assert (=> b!4956211 (= tp!1389875 b_and!347123)))

(declare-fun b_free!132273 () Bool)

(declare-fun b_next!133063 () Bool)

(assert (=> b!4956211 (= b_free!132273 (not b_next!133063))))

(declare-fun tp!1389876 () Bool)

(declare-fun b_and!347125 () Bool)

(assert (=> b!4956211 (= tp!1389876 b_and!347125)))

(declare-fun b!4956210 () Bool)

(declare-fun e!3097096 () Bool)

(declare-fun e!3097095 () Bool)

(declare-fun tp!1389871 () Bool)

(assert (=> b!4956210 (= e!3097096 (and e!3097095 tp!1389871))))

(declare-fun e!3097092 () Bool)

(assert (=> b!4956211 (= e!3097092 (and tp!1389875 tp!1389876))))

(declare-fun b!4956212 () Bool)

(declare-fun e!3097094 () Bool)

(declare-fun e!3097101 () Bool)

(assert (=> b!4956212 (= e!3097094 (not e!3097101))))

(declare-fun res!2114663 () Bool)

(assert (=> b!4956212 (=> res!2114663 e!3097101)))

(declare-datatypes ((List!57328 0))(
  ( (Nil!57204) (Cons!57204 (h!63652 (_ BitVec 16)) (t!367894 List!57328)) )
))
(declare-datatypes ((TokenValue!8624 0))(
  ( (FloatLiteralValue!17248 (text!60813 List!57328)) (TokenValueExt!8623 (__x!34541 Int)) (Broken!43120 (value!266365 List!57328)) (Object!8747) (End!8624) (Def!8624) (Underscore!8624) (Match!8624) (Else!8624) (Error!8624) (Case!8624) (If!8624) (Extends!8624) (Abstract!8624) (Class!8624) (Val!8624) (DelimiterValue!17248 (del!8684 List!57328)) (KeywordValue!8630 (value!266366 List!57328)) (CommentValue!17248 (value!266367 List!57328)) (WhitespaceValue!17248 (value!266368 List!57328)) (IndentationValue!8624 (value!266369 List!57328)) (String!64993) (Int32!8624) (Broken!43121 (value!266370 List!57328)) (Boolean!8625) (Unit!148098) (OperatorValue!8627 (op!8684 List!57328)) (IdentifierValue!17248 (value!266371 List!57328)) (IdentifierValue!17249 (value!266372 List!57328)) (WhitespaceValue!17249 (value!266373 List!57328)) (True!17248) (False!17248) (Broken!43122 (value!266374 List!57328)) (Broken!43123 (value!266375 List!57328)) (True!17249) (RightBrace!8624) (RightBracket!8624) (Colon!8624) (Null!8624) (Comma!8624) (LeftBracket!8624) (False!17249) (LeftBrace!8624) (ImaginaryLiteralValue!8624 (text!60814 List!57328)) (StringLiteralValue!25872 (value!266376 List!57328)) (EOFValue!8624 (value!266377 List!57328)) (IdentValue!8624 (value!266378 List!57328)) (DelimiterValue!17249 (value!266379 List!57328)) (DedentValue!8624 (value!266380 List!57328)) (NewLineValue!8624 (value!266381 List!57328)) (IntegerValue!25872 (value!266382 (_ BitVec 32)) (text!60815 List!57328)) (IntegerValue!25873 (value!266383 Int) (text!60816 List!57328)) (Times!8624) (Or!8624) (Equal!8624) (Minus!8624) (Broken!43124 (value!266384 List!57328)) (And!8624) (Div!8624) (LessEqual!8624) (Mod!8624) (Concat!22171) (Not!8624) (Plus!8624) (SpaceValue!8624 (value!266385 List!57328)) (IntegerValue!25874 (value!266386 Int) (text!60817 List!57328)) (StringLiteralValue!25873 (text!60818 List!57328)) (FloatLiteralValue!17249 (text!60819 List!57328)) (BytesLiteralValue!8624 (value!266387 List!57328)) (CommentValue!17249 (value!266388 List!57328)) (StringLiteralValue!25874 (value!266389 List!57328)) (ErrorTokenValue!8624 (msg!8685 List!57328)) )
))
(declare-datatypes ((C!27344 0))(
  ( (C!27345 (val!23038 Int)) )
))
(declare-datatypes ((List!57329 0))(
  ( (Nil!57205) (Cons!57205 (h!63653 C!27344) (t!367895 List!57329)) )
))
(declare-datatypes ((IArray!30193 0))(
  ( (IArray!30194 (innerList!15154 List!57329)) )
))
(declare-datatypes ((Regex!13547 0))(
  ( (ElementMatch!13547 (c!846149 C!27344)) (Concat!22172 (regOne!27606 Regex!13547) (regTwo!27606 Regex!13547)) (EmptyExpr!13547) (Star!13547 (reg!13876 Regex!13547)) (EmptyLang!13547) (Union!13547 (regOne!27607 Regex!13547) (regTwo!27607 Regex!13547)) )
))
(declare-datatypes ((String!64994 0))(
  ( (String!64995 (value!266390 String)) )
))
(declare-datatypes ((Conc!15066 0))(
  ( (Node!15066 (left!41725 Conc!15066) (right!42055 Conc!15066) (csize!30362 Int) (cheight!15277 Int)) (Leaf!25048 (xs!18392 IArray!30193) (csize!30363 Int)) (Empty!15066) )
))
(declare-datatypes ((BalanceConc!29562 0))(
  ( (BalanceConc!29563 (c!846150 Conc!15066)) )
))
(declare-datatypes ((TokenValueInjection!16556 0))(
  ( (TokenValueInjection!16557 (toValue!11265 Int) (toChars!11124 Int)) )
))
(declare-datatypes ((Rule!16428 0))(
  ( (Rule!16429 (regex!8314 Regex!13547) (tag!9178 String!64994) (isSeparator!8314 Bool) (transformation!8314 TokenValueInjection!16556)) )
))
(declare-datatypes ((List!57330 0))(
  ( (Nil!57206) (Cons!57206 (h!63654 Rule!16428) (t!367896 List!57330)) )
))
(declare-fun rulesArg!259 () List!57330)

(get-info :version)

(assert (=> b!4956212 (= res!2114663 (or (and ((_ is Cons!57206) rulesArg!259) ((_ is Nil!57206) (t!367896 rulesArg!259))) (not ((_ is Cons!57206) rulesArg!259))))))

(declare-fun lt!2045575 () List!57329)

(declare-fun isPrefix!5167 (List!57329 List!57329) Bool)

(assert (=> b!4956212 (isPrefix!5167 lt!2045575 lt!2045575)))

(declare-datatypes ((Unit!148099 0))(
  ( (Unit!148100) )
))
(declare-fun lt!2045578 () Unit!148099)

(declare-fun lemmaIsPrefixRefl!3491 (List!57329 List!57329) Unit!148099)

(assert (=> b!4956212 (= lt!2045578 (lemmaIsPrefixRefl!3491 lt!2045575 lt!2045575))))

(declare-fun b!4956213 () Bool)

(declare-fun e!3097098 () Bool)

(declare-fun e!3097099 () Bool)

(assert (=> b!4956213 (= e!3097098 e!3097099)))

(declare-fun res!2114671 () Bool)

(assert (=> b!4956213 (=> res!2114671 e!3097099)))

(declare-datatypes ((Token!15128 0))(
  ( (Token!15129 (value!266391 TokenValue!8624) (rule!11530 Rule!16428) (size!37936 Int) (originalCharacters!8595 List!57329)) )
))
(declare-datatypes ((tuple2!61772 0))(
  ( (tuple2!61773 (_1!34189 Token!15128) (_2!34189 List!57329)) )
))
(declare-datatypes ((Option!14297 0))(
  ( (None!14296) (Some!14296 (v!50281 tuple2!61772)) )
))
(declare-fun lt!2045580 () Option!14297)

(declare-datatypes ((tuple2!61774 0))(
  ( (tuple2!61775 (_1!34190 Token!15128) (_2!34190 BalanceConc!29562)) )
))
(declare-datatypes ((Option!14298 0))(
  ( (None!14297) (Some!14297 (v!50282 tuple2!61774)) )
))
(declare-fun get!19786 (Option!14298) tuple2!61774)

(declare-fun get!19787 (Option!14297) tuple2!61772)

(assert (=> b!4956213 (= res!2114671 (not (= (_1!34190 (get!19786 None!14297)) (_1!34189 (get!19787 lt!2045580)))))))

(declare-datatypes ((LexerInterface!7906 0))(
  ( (LexerInterfaceExt!7903 (__x!34542 Int)) (Lexer!7904) )
))
(declare-fun thiss!15247 () LexerInterface!7906)

(declare-fun maxPrefix!4625 (LexerInterface!7906 List!57330 List!57329) Option!14297)

(assert (=> b!4956213 (= lt!2045580 (maxPrefix!4625 thiss!15247 rulesArg!259 lt!2045575))))

(declare-fun res!2114662 () Bool)

(declare-fun e!3097087 () Bool)

(assert (=> start!522410 (=> (not res!2114662) (not e!3097087))))

(assert (=> start!522410 (= res!2114662 ((_ is Lexer!7904) thiss!15247))))

(assert (=> start!522410 e!3097087))

(assert (=> start!522410 true))

(assert (=> start!522410 e!3097096))

(declare-fun input!1342 () BalanceConc!29562)

(declare-fun e!3097088 () Bool)

(declare-fun inv!74626 (BalanceConc!29562) Bool)

(assert (=> start!522410 (and (inv!74626 input!1342) e!3097088)))

(declare-fun totalInput!464 () BalanceConc!29562)

(declare-fun e!3097089 () Bool)

(assert (=> start!522410 (and (inv!74626 totalInput!464) e!3097089)))

(declare-fun b!4956214 () Bool)

(declare-fun res!2114667 () Bool)

(assert (=> b!4956214 (=> (not res!2114667) (not e!3097087))))

(declare-fun rulesValidInductive!3217 (LexerInterface!7906 List!57330) Bool)

(assert (=> b!4956214 (= res!2114667 (rulesValidInductive!3217 thiss!15247 rulesArg!259))))

(declare-fun b!4956215 () Bool)

(declare-fun res!2114668 () Bool)

(assert (=> b!4956215 (=> (not res!2114668) (not e!3097087))))

(declare-fun isEmpty!30754 (List!57330) Bool)

(assert (=> b!4956215 (= res!2114668 (not (isEmpty!30754 rulesArg!259)))))

(declare-fun b!4956216 () Bool)

(declare-fun res!2114672 () Bool)

(assert (=> b!4956216 (=> res!2114672 e!3097098)))

(declare-fun lt!2045576 () Bool)

(assert (=> b!4956216 (= res!2114672 lt!2045576)))

(declare-fun b!4956217 () Bool)

(assert (=> b!4956217 (= e!3097087 e!3097094)))

(declare-fun res!2114666 () Bool)

(assert (=> b!4956217 (=> (not res!2114666) (not e!3097094))))

(declare-fun isSuffix!1113 (List!57329 List!57329) Bool)

(declare-fun list!18255 (BalanceConc!29562) List!57329)

(assert (=> b!4956217 (= res!2114666 (isSuffix!1113 lt!2045575 (list!18255 totalInput!464)))))

(assert (=> b!4956217 (= lt!2045575 (list!18255 input!1342))))

(declare-fun b!4956218 () Bool)

(declare-fun e!3097091 () Bool)

(assert (=> b!4956218 (= e!3097101 e!3097091)))

(declare-fun res!2114669 () Bool)

(assert (=> b!4956218 (=> res!2114669 e!3097091)))

(declare-fun lt!2045573 () Option!14298)

(declare-fun lt!2045571 () Option!14298)

(assert (=> b!4956218 (= res!2114669 (or (not ((_ is None!14297) lt!2045573)) (not ((_ is None!14297) lt!2045571))))))

(declare-fun maxPrefixZipperSequenceV2!645 (LexerInterface!7906 List!57330 BalanceConc!29562 BalanceConc!29562) Option!14298)

(assert (=> b!4956218 (= lt!2045571 (maxPrefixZipperSequenceV2!645 thiss!15247 (t!367896 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!298 (LexerInterface!7906 Rule!16428 BalanceConc!29562 BalanceConc!29562) Option!14298)

(assert (=> b!4956218 (= lt!2045573 (maxPrefixOneRuleZipperSequenceV2!298 thiss!15247 (h!63654 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4956219 () Bool)

(declare-fun e!3097097 () Bool)

(assert (=> b!4956219 (= e!3097097 e!3097098)))

(declare-fun res!2114673 () Bool)

(assert (=> b!4956219 (=> res!2114673 e!3097098)))

(declare-fun e!3097100 () Bool)

(assert (=> b!4956219 (= res!2114673 e!3097100)))

(declare-fun res!2114664 () Bool)

(assert (=> b!4956219 (=> (not res!2114664) (not e!3097100))))

(assert (=> b!4956219 (= res!2114664 (not lt!2045576))))

(declare-fun lt!2045572 () Bool)

(assert (=> b!4956219 (= lt!2045576 (not lt!2045572))))

(declare-fun b!4956220 () Bool)

(declare-fun e!3097090 () Bool)

(assert (=> b!4956220 (= e!3097100 e!3097090)))

(declare-fun res!2114670 () Bool)

(assert (=> b!4956220 (=> res!2114670 e!3097090)))

(declare-fun lt!2045574 () tuple2!61774)

(declare-fun lt!2045579 () tuple2!61772)

(assert (=> b!4956220 (= res!2114670 (not (= (_1!34190 lt!2045574) (_1!34189 lt!2045579))))))

(declare-fun lt!2045577 () Option!14297)

(assert (=> b!4956220 (= lt!2045579 (get!19787 lt!2045577))))

(assert (=> b!4956220 (= lt!2045574 (get!19786 None!14297))))

(declare-fun b!4956221 () Bool)

(declare-fun tp!1389873 () Bool)

(declare-fun inv!74627 (Conc!15066) Bool)

(assert (=> b!4956221 (= e!3097089 (and (inv!74627 (c!846150 totalInput!464)) tp!1389873))))

(declare-fun tp!1389872 () Bool)

(declare-fun b!4956222 () Bool)

(declare-fun inv!74622 (String!64994) Bool)

(declare-fun inv!74628 (TokenValueInjection!16556) Bool)

(assert (=> b!4956222 (= e!3097095 (and tp!1389872 (inv!74622 (tag!9178 (h!63654 rulesArg!259))) (inv!74628 (transformation!8314 (h!63654 rulesArg!259))) e!3097092))))

(declare-fun b!4956223 () Bool)

(assert (=> b!4956223 (= e!3097091 e!3097097)))

(declare-fun res!2114665 () Bool)

(assert (=> b!4956223 (=> res!2114665 e!3097097)))

(declare-fun isDefined!11229 (Option!14297) Bool)

(assert (=> b!4956223 (= res!2114665 (not (= lt!2045572 (isDefined!11229 lt!2045577))))))

(assert (=> b!4956223 (= lt!2045572 false)))

(declare-fun maxPrefixZipper!711 (LexerInterface!7906 List!57330 List!57329) Option!14297)

(assert (=> b!4956223 (= lt!2045577 (maxPrefixZipper!711 thiss!15247 rulesArg!259 lt!2045575))))

(declare-fun b!4956224 () Bool)

(assert (=> b!4956224 (= e!3097090 (not (= (list!18255 (_2!34190 lt!2045574)) (_2!34189 lt!2045579))))))

(declare-fun b!4956225 () Bool)

(assert (=> b!4956225 (= e!3097099 (isDefined!11229 lt!2045580))))

(declare-fun b!4956226 () Bool)

(declare-fun tp!1389874 () Bool)

(assert (=> b!4956226 (= e!3097088 (and (inv!74627 (c!846150 input!1342)) tp!1389874))))

(assert (= (and start!522410 res!2114662) b!4956214))

(assert (= (and b!4956214 res!2114667) b!4956215))

(assert (= (and b!4956215 res!2114668) b!4956217))

(assert (= (and b!4956217 res!2114666) b!4956212))

(assert (= (and b!4956212 (not res!2114663)) b!4956218))

(assert (= (and b!4956218 (not res!2114669)) b!4956223))

(assert (= (and b!4956223 (not res!2114665)) b!4956219))

(assert (= (and b!4956219 res!2114664) b!4956220))

(assert (= (and b!4956220 (not res!2114670)) b!4956224))

(assert (= (and b!4956219 (not res!2114673)) b!4956216))

(assert (= (and b!4956216 (not res!2114672)) b!4956213))

(assert (= (and b!4956213 (not res!2114671)) b!4956225))

(assert (= b!4956222 b!4956211))

(assert (= b!4956210 b!4956222))

(assert (= (and start!522410 ((_ is Cons!57206) rulesArg!259)) b!4956210))

(assert (= start!522410 b!4956226))

(assert (= start!522410 b!4956221))

(declare-fun m!5980782 () Bool)

(assert (=> b!4956223 m!5980782))

(declare-fun m!5980784 () Bool)

(assert (=> b!4956223 m!5980784))

(declare-fun m!5980786 () Bool)

(assert (=> b!4956222 m!5980786))

(declare-fun m!5980788 () Bool)

(assert (=> b!4956222 m!5980788))

(declare-fun m!5980790 () Bool)

(assert (=> b!4956221 m!5980790))

(declare-fun m!5980792 () Bool)

(assert (=> b!4956218 m!5980792))

(declare-fun m!5980794 () Bool)

(assert (=> b!4956218 m!5980794))

(declare-fun m!5980796 () Bool)

(assert (=> b!4956217 m!5980796))

(assert (=> b!4956217 m!5980796))

(declare-fun m!5980798 () Bool)

(assert (=> b!4956217 m!5980798))

(declare-fun m!5980800 () Bool)

(assert (=> b!4956217 m!5980800))

(declare-fun m!5980802 () Bool)

(assert (=> b!4956214 m!5980802))

(declare-fun m!5980804 () Bool)

(assert (=> b!4956215 m!5980804))

(declare-fun m!5980806 () Bool)

(assert (=> b!4956220 m!5980806))

(declare-fun m!5980808 () Bool)

(assert (=> b!4956220 m!5980808))

(declare-fun m!5980810 () Bool)

(assert (=> b!4956224 m!5980810))

(assert (=> b!4956213 m!5980808))

(declare-fun m!5980812 () Bool)

(assert (=> b!4956213 m!5980812))

(declare-fun m!5980814 () Bool)

(assert (=> b!4956213 m!5980814))

(declare-fun m!5980816 () Bool)

(assert (=> b!4956212 m!5980816))

(declare-fun m!5980818 () Bool)

(assert (=> b!4956212 m!5980818))

(declare-fun m!5980820 () Bool)

(assert (=> start!522410 m!5980820))

(declare-fun m!5980822 () Bool)

(assert (=> start!522410 m!5980822))

(declare-fun m!5980824 () Bool)

(assert (=> b!4956226 m!5980824))

(declare-fun m!5980826 () Bool)

(assert (=> b!4956225 m!5980826))

(check-sat (not b!4956225) (not b_next!133063) (not b!4956226) (not b!4956215) (not b!4956221) (not b!4956222) (not start!522410) (not b!4956217) (not b!4956224) (not b_next!133061) b_and!347125 (not b!4956213) (not b!4956212) b_and!347123 (not b!4956214) (not b!4956223) (not b!4956210) (not b!4956220) (not b!4956218))
(check-sat b_and!347123 b_and!347125 (not b_next!133061) (not b_next!133063))
