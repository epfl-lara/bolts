; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!745676 () Bool)

(assert start!745676)

(declare-fun b!7903714 () Bool)

(declare-fun b_free!134807 () Bool)

(declare-fun b_next!135597 () Bool)

(assert (=> b!7903714 (= b_free!134807 (not b_next!135597))))

(declare-fun tp!2354529 () Bool)

(declare-fun b_and!352899 () Bool)

(assert (=> b!7903714 (= tp!2354529 b_and!352899)))

(declare-fun b_free!134809 () Bool)

(declare-fun b_next!135599 () Bool)

(assert (=> b!7903714 (= b_free!134809 (not b_next!135599))))

(declare-fun tp!2354528 () Bool)

(declare-fun b_and!352901 () Bool)

(assert (=> b!7903714 (= tp!2354528 b_and!352901)))

(declare-fun b!7903713 () Bool)

(declare-fun e!4665302 () Bool)

(declare-fun e!4665298 () Bool)

(assert (=> b!7903713 (= e!4665302 e!4665298)))

(declare-fun res!3136081 () Bool)

(assert (=> b!7903713 (=> res!3136081 e!4665298)))

(declare-datatypes ((C!42936 0))(
  ( (C!42937 (val!31932 Int)) )
))
(declare-datatypes ((List!74320 0))(
  ( (Nil!74196) (Cons!74196 (h!80644 C!42936) (t!389423 List!74320)) )
))
(declare-fun lt!2684348 () List!74320)

(declare-datatypes ((List!74321 0))(
  ( (Nil!74197) (Cons!74197 (h!80645 (_ BitVec 16)) (t!389424 List!74321)) )
))
(declare-datatypes ((TokenValue!8916 0))(
  ( (FloatLiteralValue!17832 (text!62857 List!74321)) (TokenValueExt!8915 (__x!35119 Int)) (Broken!44580 (value!287055 List!74321)) (Object!9039) (End!8916) (Def!8916) (Underscore!8916) (Match!8916) (Else!8916) (Error!8916) (Case!8916) (If!8916) (Extends!8916) (Abstract!8916) (Class!8916) (Val!8916) (DelimiterValue!17832 (del!8976 List!74321)) (KeywordValue!8922 (value!287056 List!74321)) (CommentValue!17832 (value!287057 List!74321)) (WhitespaceValue!17832 (value!287058 List!74321)) (IndentationValue!8916 (value!287059 List!74321)) (String!83001) (Int32!8916) (Broken!44581 (value!287060 List!74321)) (Boolean!8917) (Unit!169232) (OperatorValue!8919 (op!8976 List!74321)) (IdentifierValue!17832 (value!287061 List!74321)) (IdentifierValue!17833 (value!287062 List!74321)) (WhitespaceValue!17833 (value!287063 List!74321)) (True!17832) (False!17832) (Broken!44582 (value!287064 List!74321)) (Broken!44583 (value!287065 List!74321)) (True!17833) (RightBrace!8916) (RightBracket!8916) (Colon!8916) (Null!8916) (Comma!8916) (LeftBracket!8916) (False!17833) (LeftBrace!8916) (ImaginaryLiteralValue!8916 (text!62858 List!74321)) (StringLiteralValue!26748 (value!287066 List!74321)) (EOFValue!8916 (value!287067 List!74321)) (IdentValue!8916 (value!287068 List!74321)) (DelimiterValue!17833 (value!287069 List!74321)) (DedentValue!8916 (value!287070 List!74321)) (NewLineValue!8916 (value!287071 List!74321)) (IntegerValue!26748 (value!287072 (_ BitVec 32)) (text!62859 List!74321)) (IntegerValue!26749 (value!287073 Int) (text!62860 List!74321)) (Times!8916) (Or!8916) (Equal!8916) (Minus!8916) (Broken!44584 (value!287074 List!74321)) (And!8916) (Div!8916) (LessEqual!8916) (Mod!8916) (Concat!30219) (Not!8916) (Plus!8916) (SpaceValue!8916 (value!287075 List!74321)) (IntegerValue!26750 (value!287076 Int) (text!62861 List!74321)) (StringLiteralValue!26749 (text!62862 List!74321)) (FloatLiteralValue!17833 (text!62863 List!74321)) (BytesLiteralValue!8916 (value!287077 List!74321)) (CommentValue!17833 (value!287078 List!74321)) (StringLiteralValue!26750 (value!287079 List!74321)) (ErrorTokenValue!8916 (msg!8977 List!74321)) )
))
(declare-datatypes ((IArray!31609 0))(
  ( (IArray!31610 (innerList!15862 List!74320)) )
))
(declare-datatypes ((Conc!15774 0))(
  ( (Node!15774 (left!56601 Conc!15774) (right!56931 Conc!15774) (csize!31778 Int) (cheight!15985 Int)) (Leaf!30042 (xs!19156 IArray!31609) (csize!31779 Int)) (Empty!15774) )
))
(declare-datatypes ((BalanceConc!30666 0))(
  ( (BalanceConc!30667 (c!1450423 Conc!15774)) )
))
(declare-datatypes ((Regex!21303 0))(
  ( (ElementMatch!21303 (c!1450424 C!42936)) (Concat!30220 (regOne!43118 Regex!21303) (regTwo!43118 Regex!21303)) (EmptyExpr!21303) (Star!21303 (reg!21632 Regex!21303)) (EmptyLang!21303) (Union!21303 (regOne!43119 Regex!21303) (regTwo!43119 Regex!21303)) )
))
(declare-datatypes ((String!83002 0))(
  ( (String!83003 (value!287080 String)) )
))
(declare-datatypes ((TokenValueInjection!17140 0))(
  ( (TokenValueInjection!17141 (toValue!11653 Int) (toChars!11512 Int)) )
))
(declare-datatypes ((Rule!17000 0))(
  ( (Rule!17001 (regex!8600 Regex!21303) (tag!9464 String!83002) (isSeparator!8600 Bool) (transformation!8600 TokenValueInjection!17140)) )
))
(declare-datatypes ((Token!15620 0))(
  ( (Token!15621 (value!287081 TokenValue!8916) (rule!11890 Rule!17000) (size!42998 Int) (originalCharacters!8841 List!74320)) )
))
(declare-datatypes ((tuple2!70230 0))(
  ( (tuple2!70231 (_1!38418 Token!15620) (_2!38418 List!74320)) )
))
(declare-fun lt!2684345 () tuple2!70230)

(assert (=> b!7903713 (= res!3136081 (not (= lt!2684348 (originalCharacters!8841 (_1!38418 lt!2684345)))))))

(declare-fun list!19231 (BalanceConc!30666) List!74320)

(declare-fun charsOf!5544 (Token!15620) BalanceConc!30666)

(assert (=> b!7903713 (= lt!2684348 (list!19231 (charsOf!5544 (_1!38418 lt!2684345))))))

(declare-datatypes ((Option!17882 0))(
  ( (None!17881) (Some!17881 (v!55024 tuple2!70230)) )
))
(declare-fun lt!2684346 () Option!17882)

(declare-fun get!26654 (Option!17882) tuple2!70230)

(assert (=> b!7903713 (= lt!2684345 (get!26654 lt!2684346))))

(declare-fun e!4665295 () Bool)

(assert (=> b!7903714 (= e!4665295 (and tp!2354529 tp!2354528))))

(declare-fun b!7903716 () Bool)

(declare-fun res!3136077 () Bool)

(assert (=> b!7903716 (=> res!3136077 e!4665298)))

(declare-fun input!1184 () List!74320)

(declare-fun ++!18162 (List!74320 List!74320) List!74320)

(assert (=> b!7903716 (= res!3136077 (not (= (++!18162 lt!2684348 (_2!38418 lt!2684345)) input!1184)))))

(declare-fun b!7903717 () Bool)

(declare-fun e!4665296 () Bool)

(declare-fun tp_is_empty!52981 () Bool)

(declare-fun tp!2354527 () Bool)

(assert (=> b!7903717 (= e!4665296 (and tp_is_empty!52981 tp!2354527))))

(declare-fun b!7903718 () Bool)

(assert (=> b!7903718 (= e!4665298 true)))

(declare-fun e!4665300 () Bool)

(declare-fun tp!2354530 () Bool)

(declare-fun b!7903719 () Bool)

(declare-datatypes ((List!74322 0))(
  ( (Nil!74198) (Cons!74198 (h!80646 Rule!17000) (t!389425 List!74322)) )
))
(declare-fun rulesArg!141 () List!74322)

(declare-fun inv!95192 (String!83002) Bool)

(declare-fun inv!95194 (TokenValueInjection!17140) Bool)

(assert (=> b!7903719 (= e!4665300 (and tp!2354530 (inv!95192 (tag!9464 (h!80646 rulesArg!141))) (inv!95194 (transformation!8600 (h!80646 rulesArg!141))) e!4665295))))

(declare-fun b!7903720 () Bool)

(declare-fun res!3136078 () Bool)

(assert (=> b!7903720 (=> res!3136078 e!4665302)))

(declare-fun isEmpty!42570 (Option!17882) Bool)

(assert (=> b!7903720 (= res!3136078 (isEmpty!42570 lt!2684346))))

(declare-fun b!7903721 () Bool)

(declare-fun res!3136084 () Bool)

(assert (=> b!7903721 (=> res!3136084 e!4665302)))

(declare-fun isDefined!14458 (Option!17882) Bool)

(assert (=> b!7903721 (= res!3136084 (not (isDefined!14458 lt!2684346)))))

(declare-fun b!7903722 () Bool)

(declare-fun e!4665299 () Bool)

(assert (=> b!7903722 (= e!4665299 e!4665302)))

(declare-fun res!3136088 () Bool)

(assert (=> b!7903722 (=> res!3136088 e!4665302)))

(declare-fun lt!2684344 () Option!17882)

(get-info :version)

(assert (=> b!7903722 (= res!3136088 (or (and ((_ is None!17881) lt!2684346) ((_ is None!17881) lt!2684344)) ((_ is None!17881) lt!2684344) ((_ is None!17881) lt!2684346) (< (size!42998 (_1!38418 (v!55024 lt!2684346))) (size!42998 (_1!38418 (v!55024 lt!2684344))))))))

(declare-datatypes ((LexerInterface!8192 0))(
  ( (LexerInterfaceExt!8189 (__x!35120 Int)) (Lexer!8190) )
))
(declare-fun thiss!14377 () LexerInterface!8192)

(declare-fun maxPrefix!4733 (LexerInterface!8192 List!74322 List!74320) Option!17882)

(assert (=> b!7903722 (= lt!2684344 (maxPrefix!4733 thiss!14377 (t!389425 rulesArg!141) input!1184))))

(declare-fun maxPrefixOneRule!3780 (LexerInterface!8192 Rule!17000 List!74320) Option!17882)

(assert (=> b!7903722 (= lt!2684346 (maxPrefixOneRule!3780 thiss!14377 (h!80646 rulesArg!141) input!1184))))

(declare-fun b!7903723 () Bool)

(declare-fun e!4665301 () Bool)

(assert (=> b!7903723 (= e!4665301 (not e!4665299))))

(declare-fun res!3136083 () Bool)

(assert (=> b!7903723 (=> res!3136083 e!4665299)))

(assert (=> b!7903723 (= res!3136083 (or (and ((_ is Cons!74198) rulesArg!141) ((_ is Nil!74198) (t!389425 rulesArg!141))) (not ((_ is Cons!74198) rulesArg!141))))))

(declare-fun isPrefix!6433 (List!74320 List!74320) Bool)

(assert (=> b!7903723 (isPrefix!6433 input!1184 input!1184)))

(declare-datatypes ((Unit!169233 0))(
  ( (Unit!169234) )
))
(declare-fun lt!2684347 () Unit!169233)

(declare-fun lemmaIsPrefixRefl!3944 (List!74320 List!74320) Unit!169233)

(assert (=> b!7903723 (= lt!2684347 (lemmaIsPrefixRefl!3944 input!1184 input!1184))))

(declare-fun b!7903724 () Bool)

(declare-fun res!3136079 () Bool)

(assert (=> b!7903724 (=> res!3136079 e!4665298)))

(declare-fun size!42999 (List!74320) Int)

(assert (=> b!7903724 (= res!3136079 (>= (size!42999 (_2!38418 lt!2684345)) (size!42999 input!1184)))))

(declare-fun b!7903715 () Bool)

(declare-fun res!3136085 () Bool)

(assert (=> b!7903715 (=> (not res!3136085) (not e!4665301))))

(declare-fun isEmpty!42571 (List!74322) Bool)

(assert (=> b!7903715 (= res!3136085 (not (isEmpty!42571 rulesArg!141)))))

(declare-fun res!3136086 () Bool)

(assert (=> start!745676 (=> (not res!3136086) (not e!4665301))))

(assert (=> start!745676 (= res!3136086 ((_ is Lexer!8190) thiss!14377))))

(assert (=> start!745676 e!4665301))

(assert (=> start!745676 true))

(declare-fun e!4665294 () Bool)

(assert (=> start!745676 e!4665294))

(assert (=> start!745676 e!4665296))

(declare-fun b!7903725 () Bool)

(declare-fun res!3136080 () Bool)

(assert (=> b!7903725 (=> (not res!3136080) (not e!4665301))))

(declare-fun rulesValidInductive!3411 (LexerInterface!8192 List!74322) Bool)

(assert (=> b!7903725 (= res!3136080 (rulesValidInductive!3411 thiss!14377 rulesArg!141))))

(declare-fun b!7903726 () Bool)

(declare-fun tp!2354526 () Bool)

(assert (=> b!7903726 (= e!4665294 (and e!4665300 tp!2354526))))

(declare-fun b!7903727 () Bool)

(declare-fun res!3136082 () Bool)

(assert (=> b!7903727 (=> res!3136082 e!4665298)))

(declare-fun apply!14335 (TokenValueInjection!17140 BalanceConc!30666) TokenValue!8916)

(declare-fun seqFromList!6153 (List!74320) BalanceConc!30666)

(assert (=> b!7903727 (= res!3136082 (not (= (value!287081 (_1!38418 lt!2684345)) (apply!14335 (transformation!8600 (rule!11890 (_1!38418 lt!2684345))) (seqFromList!6153 (originalCharacters!8841 (_1!38418 lt!2684345)))))))))

(declare-fun b!7903728 () Bool)

(declare-fun res!3136087 () Bool)

(assert (=> b!7903728 (=> res!3136087 e!4665298)))

(declare-fun matchR!10648 (Regex!21303 List!74320) Bool)

(assert (=> b!7903728 (= res!3136087 (not (matchR!10648 (regex!8600 (rule!11890 (_1!38418 lt!2684345))) lt!2684348)))))

(assert (= (and start!745676 res!3136086) b!7903725))

(assert (= (and b!7903725 res!3136080) b!7903715))

(assert (= (and b!7903715 res!3136085) b!7903723))

(assert (= (and b!7903723 (not res!3136083)) b!7903722))

(assert (= (and b!7903722 (not res!3136088)) b!7903720))

(assert (= (and b!7903720 (not res!3136078)) b!7903721))

(assert (= (and b!7903721 (not res!3136084)) b!7903713))

(assert (= (and b!7903713 (not res!3136081)) b!7903724))

(assert (= (and b!7903724 (not res!3136079)) b!7903716))

(assert (= (and b!7903716 (not res!3136077)) b!7903727))

(assert (= (and b!7903727 (not res!3136082)) b!7903728))

(assert (= (and b!7903728 (not res!3136087)) b!7903718))

(assert (= b!7903719 b!7903714))

(assert (= b!7903726 b!7903719))

(assert (= (and start!745676 ((_ is Cons!74198) rulesArg!141)) b!7903726))

(assert (= (and start!745676 ((_ is Cons!74196) input!1184)) b!7903717))

(declare-fun m!8278386 () Bool)

(assert (=> b!7903721 m!8278386))

(declare-fun m!8278388 () Bool)

(assert (=> b!7903724 m!8278388))

(declare-fun m!8278390 () Bool)

(assert (=> b!7903724 m!8278390))

(declare-fun m!8278392 () Bool)

(assert (=> b!7903719 m!8278392))

(declare-fun m!8278394 () Bool)

(assert (=> b!7903719 m!8278394))

(declare-fun m!8278396 () Bool)

(assert (=> b!7903725 m!8278396))

(declare-fun m!8278398 () Bool)

(assert (=> b!7903722 m!8278398))

(declare-fun m!8278400 () Bool)

(assert (=> b!7903722 m!8278400))

(declare-fun m!8278402 () Bool)

(assert (=> b!7903728 m!8278402))

(declare-fun m!8278404 () Bool)

(assert (=> b!7903713 m!8278404))

(assert (=> b!7903713 m!8278404))

(declare-fun m!8278406 () Bool)

(assert (=> b!7903713 m!8278406))

(declare-fun m!8278408 () Bool)

(assert (=> b!7903713 m!8278408))

(declare-fun m!8278410 () Bool)

(assert (=> b!7903727 m!8278410))

(assert (=> b!7903727 m!8278410))

(declare-fun m!8278412 () Bool)

(assert (=> b!7903727 m!8278412))

(declare-fun m!8278414 () Bool)

(assert (=> b!7903715 m!8278414))

(declare-fun m!8278416 () Bool)

(assert (=> b!7903720 m!8278416))

(declare-fun m!8278418 () Bool)

(assert (=> b!7903716 m!8278418))

(declare-fun m!8278420 () Bool)

(assert (=> b!7903723 m!8278420))

(declare-fun m!8278422 () Bool)

(assert (=> b!7903723 m!8278422))

(check-sat (not b!7903727) b_and!352901 (not b!7903720) tp_is_empty!52981 (not b_next!135599) (not b!7903722) (not b_next!135597) b_and!352899 (not b!7903728) (not b!7903713) (not b!7903717) (not b!7903719) (not b!7903726) (not b!7903725) (not b!7903716) (not b!7903715) (not b!7903721) (not b!7903723) (not b!7903724))
(check-sat b_and!352901 b_and!352899 (not b_next!135599) (not b_next!135597))
