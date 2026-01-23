; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522402 () Bool)

(assert start!522402)

(declare-fun b!4956018 () Bool)

(declare-fun b_free!132255 () Bool)

(declare-fun b_next!133045 () Bool)

(assert (=> b!4956018 (= b_free!132255 (not b_next!133045))))

(declare-fun tp!1389802 () Bool)

(declare-fun b_and!347107 () Bool)

(assert (=> b!4956018 (= tp!1389802 b_and!347107)))

(declare-fun b_free!132257 () Bool)

(declare-fun b_next!133047 () Bool)

(assert (=> b!4956018 (= b_free!132257 (not b_next!133047))))

(declare-fun tp!1389799 () Bool)

(declare-fun b_and!347109 () Bool)

(assert (=> b!4956018 (= tp!1389799 b_and!347109)))

(declare-datatypes ((List!57316 0))(
  ( (Nil!57192) (Cons!57192 (h!63640 (_ BitVec 16)) (t!367882 List!57316)) )
))
(declare-datatypes ((TokenValue!8620 0))(
  ( (FloatLiteralValue!17240 (text!60785 List!57316)) (TokenValueExt!8619 (__x!34533 Int)) (Broken!43100 (value!266251 List!57316)) (Object!8743) (End!8620) (Def!8620) (Underscore!8620) (Match!8620) (Else!8620) (Error!8620) (Case!8620) (If!8620) (Extends!8620) (Abstract!8620) (Class!8620) (Val!8620) (DelimiterValue!17240 (del!8680 List!57316)) (KeywordValue!8626 (value!266252 List!57316)) (CommentValue!17240 (value!266253 List!57316)) (WhitespaceValue!17240 (value!266254 List!57316)) (IndentationValue!8620 (value!266255 List!57316)) (String!64973) (Int32!8620) (Broken!43101 (value!266256 List!57316)) (Boolean!8621) (Unit!148086) (OperatorValue!8623 (op!8680 List!57316)) (IdentifierValue!17240 (value!266257 List!57316)) (IdentifierValue!17241 (value!266258 List!57316)) (WhitespaceValue!17241 (value!266259 List!57316)) (True!17240) (False!17240) (Broken!43102 (value!266260 List!57316)) (Broken!43103 (value!266261 List!57316)) (True!17241) (RightBrace!8620) (RightBracket!8620) (Colon!8620) (Null!8620) (Comma!8620) (LeftBracket!8620) (False!17241) (LeftBrace!8620) (ImaginaryLiteralValue!8620 (text!60786 List!57316)) (StringLiteralValue!25860 (value!266262 List!57316)) (EOFValue!8620 (value!266263 List!57316)) (IdentValue!8620 (value!266264 List!57316)) (DelimiterValue!17241 (value!266265 List!57316)) (DedentValue!8620 (value!266266 List!57316)) (NewLineValue!8620 (value!266267 List!57316)) (IntegerValue!25860 (value!266268 (_ BitVec 32)) (text!60787 List!57316)) (IntegerValue!25861 (value!266269 Int) (text!60788 List!57316)) (Times!8620) (Or!8620) (Equal!8620) (Minus!8620) (Broken!43104 (value!266270 List!57316)) (And!8620) (Div!8620) (LessEqual!8620) (Mod!8620) (Concat!22163) (Not!8620) (Plus!8620) (SpaceValue!8620 (value!266271 List!57316)) (IntegerValue!25862 (value!266272 Int) (text!60789 List!57316)) (StringLiteralValue!25861 (text!60790 List!57316)) (FloatLiteralValue!17241 (text!60791 List!57316)) (BytesLiteralValue!8620 (value!266273 List!57316)) (CommentValue!17241 (value!266274 List!57316)) (StringLiteralValue!25862 (value!266275 List!57316)) (ErrorTokenValue!8620 (msg!8681 List!57316)) )
))
(declare-datatypes ((C!27336 0))(
  ( (C!27337 (val!23034 Int)) )
))
(declare-datatypes ((List!57317 0))(
  ( (Nil!57193) (Cons!57193 (h!63641 C!27336) (t!367883 List!57317)) )
))
(declare-datatypes ((IArray!30185 0))(
  ( (IArray!30186 (innerList!15150 List!57317)) )
))
(declare-datatypes ((Regex!13543 0))(
  ( (ElementMatch!13543 (c!846137 C!27336)) (Concat!22164 (regOne!27598 Regex!13543) (regTwo!27598 Regex!13543)) (EmptyExpr!13543) (Star!13543 (reg!13872 Regex!13543)) (EmptyLang!13543) (Union!13543 (regOne!27599 Regex!13543) (regTwo!27599 Regex!13543)) )
))
(declare-datatypes ((String!64974 0))(
  ( (String!64975 (value!266276 String)) )
))
(declare-datatypes ((Conc!15062 0))(
  ( (Node!15062 (left!41719 Conc!15062) (right!42049 Conc!15062) (csize!30354 Int) (cheight!15273 Int)) (Leaf!25042 (xs!18388 IArray!30185) (csize!30355 Int)) (Empty!15062) )
))
(declare-datatypes ((BalanceConc!29554 0))(
  ( (BalanceConc!29555 (c!846138 Conc!15062)) )
))
(declare-datatypes ((TokenValueInjection!16548 0))(
  ( (TokenValueInjection!16549 (toValue!11261 Int) (toChars!11120 Int)) )
))
(declare-datatypes ((Rule!16420 0))(
  ( (Rule!16421 (regex!8310 Regex!13543) (tag!9174 String!64974) (isSeparator!8310 Bool) (transformation!8310 TokenValueInjection!16548)) )
))
(declare-datatypes ((List!57318 0))(
  ( (Nil!57194) (Cons!57194 (h!63642 Rule!16420) (t!367884 List!57318)) )
))
(declare-fun rulesArg!259 () List!57318)

(declare-fun b!4956013 () Bool)

(declare-fun e!3096917 () Bool)

(declare-fun e!3096918 () Bool)

(declare-fun tp!1389804 () Bool)

(declare-fun inv!74604 (String!64974) Bool)

(declare-fun inv!74608 (TokenValueInjection!16548) Bool)

(assert (=> b!4956013 (= e!3096918 (and tp!1389804 (inv!74604 (tag!9174 (h!63642 rulesArg!259))) (inv!74608 (transformation!8310 (h!63642 rulesArg!259))) e!3096917))))

(declare-fun res!2114532 () Bool)

(declare-fun e!3096922 () Bool)

(assert (=> start!522402 (=> (not res!2114532) (not e!3096922))))

(declare-datatypes ((LexerInterface!7902 0))(
  ( (LexerInterfaceExt!7899 (__x!34534 Int)) (Lexer!7900) )
))
(declare-fun thiss!15247 () LexerInterface!7902)

(get-info :version)

(assert (=> start!522402 (= res!2114532 ((_ is Lexer!7900) thiss!15247))))

(assert (=> start!522402 e!3096922))

(assert (=> start!522402 true))

(declare-fun e!3096914 () Bool)

(assert (=> start!522402 e!3096914))

(declare-fun input!1342 () BalanceConc!29554)

(declare-fun e!3096916 () Bool)

(declare-fun inv!74609 (BalanceConc!29554) Bool)

(assert (=> start!522402 (and (inv!74609 input!1342) e!3096916)))

(declare-fun totalInput!464 () BalanceConc!29554)

(declare-fun e!3096926 () Bool)

(assert (=> start!522402 (and (inv!74609 totalInput!464) e!3096926)))

(declare-fun lt!2045452 () List!57317)

(declare-fun b!4956014 () Bool)

(declare-fun e!3096925 () Bool)

(declare-datatypes ((Token!15120 0))(
  ( (Token!15121 (value!266277 TokenValue!8620) (rule!11526 Rule!16420) (size!37932 Int) (originalCharacters!8591 List!57317)) )
))
(declare-datatypes ((tuple2!61756 0))(
  ( (tuple2!61757 (_1!34181 Token!15120) (_2!34181 List!57317)) )
))
(declare-datatypes ((Option!14289 0))(
  ( (None!14288) (Some!14288 (v!50273 tuple2!61756)) )
))
(declare-fun isDefined!11225 (Option!14289) Bool)

(declare-fun maxPrefix!4621 (LexerInterface!7902 List!57318 List!57317) Option!14289)

(assert (=> b!4956014 (= e!3096925 (isDefined!11225 (maxPrefix!4621 thiss!15247 rulesArg!259 lt!2045452)))))

(declare-fun b!4956015 () Bool)

(declare-fun res!2114529 () Bool)

(assert (=> b!4956015 (=> (not res!2114529) (not e!3096922))))

(declare-fun rulesValidInductive!3213 (LexerInterface!7902 List!57318) Bool)

(assert (=> b!4956015 (= res!2114529 (rulesValidInductive!3213 thiss!15247 rulesArg!259))))

(declare-fun b!4956016 () Bool)

(declare-fun res!2114533 () Bool)

(assert (=> b!4956016 (=> (not res!2114533) (not e!3096922))))

(declare-fun isEmpty!30750 (List!57318) Bool)

(assert (=> b!4956016 (= res!2114533 (not (isEmpty!30750 rulesArg!259)))))

(declare-fun b!4956017 () Bool)

(declare-fun e!3096920 () Bool)

(declare-fun e!3096915 () Bool)

(assert (=> b!4956017 (= e!3096920 e!3096915)))

(declare-fun res!2114526 () Bool)

(assert (=> b!4956017 (=> res!2114526 e!3096915)))

(declare-datatypes ((tuple2!61758 0))(
  ( (tuple2!61759 (_1!34182 Token!15120) (_2!34182 BalanceConc!29554)) )
))
(declare-datatypes ((Option!14290 0))(
  ( (None!14289) (Some!14289 (v!50274 tuple2!61758)) )
))
(declare-fun lt!2045460 () Option!14290)

(declare-fun lt!2045455 () Option!14290)

(assert (=> b!4956017 (= res!2114526 (or (not ((_ is None!14289) lt!2045460)) (not ((_ is None!14289) lt!2045455))))))

(declare-fun maxPrefixZipperSequenceV2!641 (LexerInterface!7902 List!57318 BalanceConc!29554 BalanceConc!29554) Option!14290)

(assert (=> b!4956017 (= lt!2045455 (maxPrefixZipperSequenceV2!641 thiss!15247 (t!367884 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!294 (LexerInterface!7902 Rule!16420 BalanceConc!29554 BalanceConc!29554) Option!14290)

(assert (=> b!4956017 (= lt!2045460 (maxPrefixOneRuleZipperSequenceV2!294 thiss!15247 (h!63642 rulesArg!259) input!1342 totalInput!464))))

(assert (=> b!4956018 (= e!3096917 (and tp!1389802 tp!1389799))))

(declare-fun b!4956019 () Bool)

(declare-fun e!3096919 () Bool)

(assert (=> b!4956019 (= e!3096922 e!3096919)))

(declare-fun res!2114535 () Bool)

(assert (=> b!4956019 (=> (not res!2114535) (not e!3096919))))

(declare-fun isSuffix!1109 (List!57317 List!57317) Bool)

(declare-fun list!18251 (BalanceConc!29554) List!57317)

(assert (=> b!4956019 (= res!2114535 (isSuffix!1109 lt!2045452 (list!18251 totalInput!464)))))

(assert (=> b!4956019 (= lt!2045452 (list!18251 input!1342))))

(declare-fun b!4956020 () Bool)

(declare-fun tp!1389801 () Bool)

(assert (=> b!4956020 (= e!3096914 (and e!3096918 tp!1389801))))

(declare-fun b!4956021 () Bool)

(declare-fun e!3096921 () Bool)

(assert (=> b!4956021 (= e!3096921 e!3096925)))

(declare-fun res!2114531 () Bool)

(assert (=> b!4956021 (=> res!2114531 e!3096925)))

(declare-fun e!3096923 () Bool)

(assert (=> b!4956021 (= res!2114531 e!3096923)))

(declare-fun res!2114527 () Bool)

(assert (=> b!4956021 (=> (not res!2114527) (not e!3096923))))

(declare-fun lt!2045458 () Bool)

(assert (=> b!4956021 (= res!2114527 (not lt!2045458))))

(declare-fun lt!2045454 () Bool)

(assert (=> b!4956021 (= lt!2045458 (not lt!2045454))))

(declare-fun b!4956022 () Bool)

(declare-fun tp!1389800 () Bool)

(declare-fun inv!74610 (Conc!15062) Bool)

(assert (=> b!4956022 (= e!3096916 (and (inv!74610 (c!846138 input!1342)) tp!1389800))))

(declare-fun b!4956023 () Bool)

(declare-fun e!3096927 () Bool)

(declare-fun lt!2045457 () tuple2!61758)

(declare-fun lt!2045456 () tuple2!61756)

(assert (=> b!4956023 (= e!3096927 (not (= (list!18251 (_2!34182 lt!2045457)) (_2!34181 lt!2045456))))))

(declare-fun b!4956024 () Bool)

(assert (=> b!4956024 (= e!3096923 e!3096927)))

(declare-fun res!2114534 () Bool)

(assert (=> b!4956024 (=> res!2114534 e!3096927)))

(assert (=> b!4956024 (= res!2114534 (not (= (_1!34182 lt!2045457) (_1!34181 lt!2045456))))))

(declare-fun lt!2045453 () Option!14289)

(declare-fun get!19776 (Option!14289) tuple2!61756)

(assert (=> b!4956024 (= lt!2045456 (get!19776 lt!2045453))))

(declare-fun get!19777 (Option!14290) tuple2!61758)

(assert (=> b!4956024 (= lt!2045457 (get!19777 None!14289))))

(declare-fun b!4956025 () Bool)

(assert (=> b!4956025 (= e!3096919 (not e!3096920))))

(declare-fun res!2114530 () Bool)

(assert (=> b!4956025 (=> res!2114530 e!3096920)))

(assert (=> b!4956025 (= res!2114530 (or (and ((_ is Cons!57194) rulesArg!259) ((_ is Nil!57194) (t!367884 rulesArg!259))) (not ((_ is Cons!57194) rulesArg!259))))))

(declare-fun isPrefix!5163 (List!57317 List!57317) Bool)

(assert (=> b!4956025 (isPrefix!5163 lt!2045452 lt!2045452)))

(declare-datatypes ((Unit!148087 0))(
  ( (Unit!148088) )
))
(declare-fun lt!2045459 () Unit!148087)

(declare-fun lemmaIsPrefixRefl!3487 (List!57317 List!57317) Unit!148087)

(assert (=> b!4956025 (= lt!2045459 (lemmaIsPrefixRefl!3487 lt!2045452 lt!2045452))))

(declare-fun b!4956026 () Bool)

(assert (=> b!4956026 (= e!3096915 e!3096921)))

(declare-fun res!2114528 () Bool)

(assert (=> b!4956026 (=> res!2114528 e!3096921)))

(assert (=> b!4956026 (= res!2114528 (not (= lt!2045454 (isDefined!11225 lt!2045453))))))

(assert (=> b!4956026 (= lt!2045454 false)))

(declare-fun maxPrefixZipper!707 (LexerInterface!7902 List!57318 List!57317) Option!14289)

(assert (=> b!4956026 (= lt!2045453 (maxPrefixZipper!707 thiss!15247 rulesArg!259 lt!2045452))))

(declare-fun b!4956027 () Bool)

(declare-fun tp!1389803 () Bool)

(assert (=> b!4956027 (= e!3096926 (and (inv!74610 (c!846138 totalInput!464)) tp!1389803))))

(declare-fun b!4956028 () Bool)

(declare-fun res!2114525 () Bool)

(assert (=> b!4956028 (=> res!2114525 e!3096925)))

(assert (=> b!4956028 (= res!2114525 lt!2045458)))

(assert (= (and start!522402 res!2114532) b!4956015))

(assert (= (and b!4956015 res!2114529) b!4956016))

(assert (= (and b!4956016 res!2114533) b!4956019))

(assert (= (and b!4956019 res!2114535) b!4956025))

(assert (= (and b!4956025 (not res!2114530)) b!4956017))

(assert (= (and b!4956017 (not res!2114526)) b!4956026))

(assert (= (and b!4956026 (not res!2114528)) b!4956021))

(assert (= (and b!4956021 res!2114527) b!4956024))

(assert (= (and b!4956024 (not res!2114534)) b!4956023))

(assert (= (and b!4956021 (not res!2114531)) b!4956028))

(assert (= (and b!4956028 (not res!2114525)) b!4956014))

(assert (= b!4956013 b!4956018))

(assert (= b!4956020 b!4956013))

(assert (= (and start!522402 ((_ is Cons!57194) rulesArg!259)) b!4956020))

(assert (= start!522402 b!4956022))

(assert (= start!522402 b!4956027))

(declare-fun m!5980608 () Bool)

(assert (=> b!4956016 m!5980608))

(declare-fun m!5980610 () Bool)

(assert (=> b!4956013 m!5980610))

(declare-fun m!5980612 () Bool)

(assert (=> b!4956013 m!5980612))

(declare-fun m!5980614 () Bool)

(assert (=> b!4956015 m!5980614))

(declare-fun m!5980616 () Bool)

(assert (=> b!4956025 m!5980616))

(declare-fun m!5980618 () Bool)

(assert (=> b!4956025 m!5980618))

(declare-fun m!5980620 () Bool)

(assert (=> b!4956022 m!5980620))

(declare-fun m!5980622 () Bool)

(assert (=> b!4956017 m!5980622))

(declare-fun m!5980624 () Bool)

(assert (=> b!4956017 m!5980624))

(declare-fun m!5980626 () Bool)

(assert (=> b!4956026 m!5980626))

(declare-fun m!5980628 () Bool)

(assert (=> b!4956026 m!5980628))

(declare-fun m!5980630 () Bool)

(assert (=> b!4956023 m!5980630))

(declare-fun m!5980632 () Bool)

(assert (=> b!4956027 m!5980632))

(declare-fun m!5980634 () Bool)

(assert (=> b!4956024 m!5980634))

(declare-fun m!5980636 () Bool)

(assert (=> b!4956024 m!5980636))

(declare-fun m!5980638 () Bool)

(assert (=> b!4956014 m!5980638))

(assert (=> b!4956014 m!5980638))

(declare-fun m!5980640 () Bool)

(assert (=> b!4956014 m!5980640))

(declare-fun m!5980642 () Bool)

(assert (=> start!522402 m!5980642))

(declare-fun m!5980644 () Bool)

(assert (=> start!522402 m!5980644))

(declare-fun m!5980646 () Bool)

(assert (=> b!4956019 m!5980646))

(assert (=> b!4956019 m!5980646))

(declare-fun m!5980648 () Bool)

(assert (=> b!4956019 m!5980648))

(declare-fun m!5980650 () Bool)

(assert (=> b!4956019 m!5980650))

(check-sat (not b!4956026) b_and!347107 b_and!347109 (not b!4956015) (not b!4956019) (not b!4956023) (not b!4956016) (not b_next!133045) (not b!4956025) (not start!522402) (not b!4956027) (not b!4956014) (not b_next!133047) (not b!4956020) (not b!4956017) (not b!4956013) (not b!4956024) (not b!4956022))
(check-sat b_and!347107 b_and!347109 (not b_next!133045) (not b_next!133047))
