; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!189210 () Bool)

(assert start!189210)

(declare-fun b!1889970 () Bool)

(declare-fun b_free!52585 () Bool)

(declare-fun b_next!53289 () Bool)

(assert (=> b!1889970 (= b_free!52585 (not b_next!53289))))

(declare-fun tp!539071 () Bool)

(declare-fun b_and!145423 () Bool)

(assert (=> b!1889970 (= tp!539071 b_and!145423)))

(declare-fun b_free!52587 () Bool)

(declare-fun b_next!53291 () Bool)

(assert (=> b!1889970 (= b_free!52587 (not b_next!53291))))

(declare-fun tp!539072 () Bool)

(declare-fun b_and!145425 () Bool)

(assert (=> b!1889970 (= tp!539072 b_and!145425)))

(declare-fun b!1889969 () Bool)

(declare-fun b_free!52589 () Bool)

(declare-fun b_next!53293 () Bool)

(assert (=> b!1889969 (= b_free!52589 (not b_next!53293))))

(declare-fun tp!539070 () Bool)

(declare-fun b_and!145427 () Bool)

(assert (=> b!1889969 (= tp!539070 b_and!145427)))

(declare-fun b_free!52591 () Bool)

(declare-fun b_next!53295 () Bool)

(assert (=> b!1889969 (= b_free!52591 (not b_next!53295))))

(declare-fun tp!539065 () Bool)

(declare-fun b_and!145429 () Bool)

(assert (=> b!1889969 (= tp!539065 b_and!145429)))

(declare-fun b!1889980 () Bool)

(declare-fun b_free!52593 () Bool)

(declare-fun b_next!53297 () Bool)

(assert (=> b!1889980 (= b_free!52593 (not b_next!53297))))

(declare-fun tp!539064 () Bool)

(declare-fun b_and!145431 () Bool)

(assert (=> b!1889980 (= tp!539064 b_and!145431)))

(declare-fun b_free!52595 () Bool)

(declare-fun b_next!53299 () Bool)

(assert (=> b!1889980 (= b_free!52595 (not b_next!53299))))

(declare-fun tp!539069 () Bool)

(declare-fun b_and!145433 () Bool)

(assert (=> b!1889980 (= tp!539069 b_and!145433)))

(declare-fun b!1889991 () Bool)

(declare-fun e!1206442 () Bool)

(assert (=> b!1889991 (= e!1206442 true)))

(declare-fun b!1889990 () Bool)

(declare-fun e!1206441 () Bool)

(assert (=> b!1889990 (= e!1206441 e!1206442)))

(declare-fun b!1889989 () Bool)

(declare-fun e!1206440 () Bool)

(assert (=> b!1889989 (= e!1206440 e!1206441)))

(declare-fun b!1889975 () Bool)

(assert (=> b!1889975 e!1206440))

(assert (= b!1889990 b!1889991))

(assert (= b!1889989 b!1889990))

(declare-datatypes ((C!10462 0))(
  ( (C!10463 (val!6183 Int)) )
))
(declare-datatypes ((List!21197 0))(
  ( (Nil!21115) (Cons!21115 (h!26516 C!10462) (t!175314 List!21197)) )
))
(declare-datatypes ((IArray!14017 0))(
  ( (IArray!14018 (innerList!7066 List!21197)) )
))
(declare-datatypes ((Conc!7006 0))(
  ( (Node!7006 (left!16945 Conc!7006) (right!17275 Conc!7006) (csize!14242 Int) (cheight!7217 Int)) (Leaf!10336 (xs!9896 IArray!14017) (csize!14243 Int)) (Empty!7006) )
))
(declare-datatypes ((BalanceConc!13828 0))(
  ( (BalanceConc!13829 (c!308239 Conc!7006)) )
))
(declare-datatypes ((Regex!5158 0))(
  ( (ElementMatch!5158 (c!308240 C!10462)) (Concat!9027 (regOne!10828 Regex!5158) (regTwo!10828 Regex!5158)) (EmptyExpr!5158) (Star!5158 (reg!5487 Regex!5158)) (EmptyLang!5158) (Union!5158 (regOne!10829 Regex!5158) (regTwo!10829 Regex!5158)) )
))
(declare-datatypes ((List!21198 0))(
  ( (Nil!21116) (Cons!21116 (h!26517 (_ BitVec 16)) (t!175315 List!21198)) )
))
(declare-datatypes ((TokenValue!3869 0))(
  ( (FloatLiteralValue!7738 (text!27528 List!21198)) (TokenValueExt!3868 (__x!13236 Int)) (Broken!19345 (value!117957 List!21198)) (Object!3950) (End!3869) (Def!3869) (Underscore!3869) (Match!3869) (Else!3869) (Error!3869) (Case!3869) (If!3869) (Extends!3869) (Abstract!3869) (Class!3869) (Val!3869) (DelimiterValue!7738 (del!3929 List!21198)) (KeywordValue!3875 (value!117958 List!21198)) (CommentValue!7738 (value!117959 List!21198)) (WhitespaceValue!7738 (value!117960 List!21198)) (IndentationValue!3869 (value!117961 List!21198)) (String!24464) (Int32!3869) (Broken!19346 (value!117962 List!21198)) (Boolean!3870) (Unit!35514) (OperatorValue!3872 (op!3929 List!21198)) (IdentifierValue!7738 (value!117963 List!21198)) (IdentifierValue!7739 (value!117964 List!21198)) (WhitespaceValue!7739 (value!117965 List!21198)) (True!7738) (False!7738) (Broken!19347 (value!117966 List!21198)) (Broken!19348 (value!117967 List!21198)) (True!7739) (RightBrace!3869) (RightBracket!3869) (Colon!3869) (Null!3869) (Comma!3869) (LeftBracket!3869) (False!7739) (LeftBrace!3869) (ImaginaryLiteralValue!3869 (text!27529 List!21198)) (StringLiteralValue!11607 (value!117968 List!21198)) (EOFValue!3869 (value!117969 List!21198)) (IdentValue!3869 (value!117970 List!21198)) (DelimiterValue!7739 (value!117971 List!21198)) (DedentValue!3869 (value!117972 List!21198)) (NewLineValue!3869 (value!117973 List!21198)) (IntegerValue!11607 (value!117974 (_ BitVec 32)) (text!27530 List!21198)) (IntegerValue!11608 (value!117975 Int) (text!27531 List!21198)) (Times!3869) (Or!3869) (Equal!3869) (Minus!3869) (Broken!19349 (value!117976 List!21198)) (And!3869) (Div!3869) (LessEqual!3869) (Mod!3869) (Concat!9028) (Not!3869) (Plus!3869) (SpaceValue!3869 (value!117977 List!21198)) (IntegerValue!11609 (value!117978 Int) (text!27532 List!21198)) (StringLiteralValue!11608 (text!27533 List!21198)) (FloatLiteralValue!7739 (text!27534 List!21198)) (BytesLiteralValue!3869 (value!117979 List!21198)) (CommentValue!7739 (value!117980 List!21198)) (StringLiteralValue!11609 (value!117981 List!21198)) (ErrorTokenValue!3869 (msg!3930 List!21198)) )
))
(declare-datatypes ((TokenValueInjection!7322 0))(
  ( (TokenValueInjection!7323 (toValue!5338 Int) (toChars!5197 Int)) )
))
(declare-datatypes ((String!24465 0))(
  ( (String!24466 (value!117982 String)) )
))
(declare-datatypes ((Rule!7266 0))(
  ( (Rule!7267 (regex!3733 Regex!5158) (tag!4147 String!24465) (isSeparator!3733 Bool) (transformation!3733 TokenValueInjection!7322)) )
))
(declare-datatypes ((List!21199 0))(
  ( (Nil!21117) (Cons!21117 (h!26518 Rule!7266) (t!175316 List!21199)) )
))
(declare-fun rules!4265 () List!21199)

(assert (= (and b!1889975 (is-Cons!21117 rules!4265)) b!1889989))

(declare-fun order!13355 () Int)

(declare-fun order!13353 () Int)

(declare-fun lambda!73908 () Int)

(declare-fun dynLambda!10275 (Int Int) Int)

(declare-fun dynLambda!10276 (Int Int) Int)

(assert (=> b!1889991 (< (dynLambda!10275 order!13353 (toValue!5338 (transformation!3733 (h!26518 rules!4265)))) (dynLambda!10276 order!13355 lambda!73908))))

(declare-fun order!13357 () Int)

(declare-fun dynLambda!10277 (Int Int) Int)

(assert (=> b!1889991 (< (dynLambda!10277 order!13357 (toChars!5197 (transformation!3733 (h!26518 rules!4265)))) (dynLambda!10276 order!13355 lambda!73908))))

(assert (=> b!1889975 true))

(declare-fun e!1206426 () Bool)

(declare-fun e!1206422 () Bool)

(declare-fun tp!539076 () Bool)

(declare-fun b!1889965 () Bool)

(declare-fun inv!28156 (String!24465) Bool)

(declare-fun inv!28159 (TokenValueInjection!7322) Bool)

(assert (=> b!1889965 (= e!1206422 (and tp!539076 (inv!28156 (tag!4147 (h!26518 rules!4265))) (inv!28159 (transformation!3733 (h!26518 rules!4265))) e!1206426))))

(declare-fun res!843986 () Bool)

(declare-fun e!1206432 () Bool)

(assert (=> start!189210 (=> (not res!843986) (not e!1206432))))

(declare-datatypes ((LexerInterface!3346 0))(
  ( (LexerInterfaceExt!3343 (__x!13237 Int)) (Lexer!3344) )
))
(declare-fun thiss!27307 () LexerInterface!3346)

(assert (=> start!189210 (= res!843986 (is-Lexer!3344 thiss!27307))))

(assert (=> start!189210 e!1206432))

(assert (=> start!189210 true))

(declare-fun e!1206419 () Bool)

(assert (=> start!189210 e!1206419))

(declare-fun e!1206428 () Bool)

(assert (=> start!189210 e!1206428))

(declare-fun e!1206431 () Bool)

(assert (=> start!189210 e!1206431))

(declare-datatypes ((Token!7018 0))(
  ( (Token!7019 (value!117983 TokenValue!3869) (rule!5926 Rule!7266) (size!16734 Int) (originalCharacters!4540 List!21197)) )
))
(declare-datatypes ((List!21200 0))(
  ( (Nil!21118) (Cons!21118 (h!26519 Token!7018) (t!175317 List!21200)) )
))
(declare-fun ts2!17 () List!21200)

(declare-fun b!1889966 () Bool)

(declare-fun tp!539073 () Bool)

(declare-fun e!1206424 () Bool)

(declare-fun inv!28160 (Token!7018) Bool)

(assert (=> b!1889966 (= e!1206431 (and (inv!28160 (h!26519 ts2!17)) e!1206424 tp!539073))))

(declare-fun e!1206423 () Bool)

(declare-fun b!1889967 () Bool)

(declare-fun tp!539075 () Bool)

(declare-fun ts1!17 () List!21200)

(declare-fun e!1206425 () Bool)

(assert (=> b!1889967 (= e!1206425 (and tp!539075 (inv!28156 (tag!4147 (rule!5926 (h!26519 ts1!17)))) (inv!28159 (transformation!3733 (rule!5926 (h!26519 ts1!17)))) e!1206423))))

(declare-fun b!1889968 () Bool)

(declare-fun res!843985 () Bool)

(assert (=> b!1889968 (=> (not res!843985) (not e!1206432))))

(declare-fun rulesProduceEachTokenIndividuallyList!1103 (LexerInterface!3346 List!21199 List!21200) Bool)

(assert (=> b!1889968 (= res!843985 (rulesProduceEachTokenIndividuallyList!1103 thiss!27307 rules!4265 ts1!17))))

(assert (=> b!1889969 (= e!1206423 (and tp!539070 tp!539065))))

(assert (=> b!1889970 (= e!1206426 (and tp!539071 tp!539072))))

(declare-fun b!1889971 () Bool)

(declare-fun res!843983 () Bool)

(assert (=> b!1889971 (=> (not res!843983) (not e!1206432))))

(assert (=> b!1889971 (= res!843983 (rulesProduceEachTokenIndividuallyList!1103 thiss!27307 rules!4265 ts2!17))))

(declare-fun b!1889972 () Bool)

(declare-fun res!843984 () Bool)

(assert (=> b!1889972 (=> (not res!843984) (not e!1206432))))

(declare-fun rulesInvariant!2979 (LexerInterface!3346 List!21199) Bool)

(assert (=> b!1889972 (= res!843984 (rulesInvariant!2979 thiss!27307 rules!4265))))

(declare-fun tp!539068 () Bool)

(declare-fun e!1206420 () Bool)

(declare-fun b!1889973 () Bool)

(declare-fun e!1206429 () Bool)

(assert (=> b!1889973 (= e!1206420 (and tp!539068 (inv!28156 (tag!4147 (rule!5926 (h!26519 ts2!17)))) (inv!28159 (transformation!3733 (rule!5926 (h!26519 ts2!17)))) e!1206429))))

(declare-fun b!1889974 () Bool)

(declare-fun tp!539067 () Bool)

(assert (=> b!1889974 (= e!1206419 (and e!1206422 tp!539067))))

(declare-fun ++!5706 (List!21200 List!21200) List!21200)

(assert (=> b!1889975 (= e!1206432 (not (rulesProduceEachTokenIndividuallyList!1103 thiss!27307 rules!4265 (++!5706 ts1!17 ts2!17))))))

(declare-datatypes ((Unit!35515 0))(
  ( (Unit!35516) )
))
(declare-fun lt!723883 () Unit!35515)

(declare-fun lemmaConcatPreservesForall!125 (List!21200 List!21200 Int) Unit!35515)

(assert (=> b!1889975 (= lt!723883 (lemmaConcatPreservesForall!125 ts1!17 ts2!17 lambda!73908))))

(declare-fun tp!539063 () Bool)

(declare-fun b!1889976 () Bool)

(declare-fun e!1206433 () Bool)

(declare-fun inv!21 (TokenValue!3869) Bool)

(assert (=> b!1889976 (= e!1206433 (and (inv!21 (value!117983 (h!26519 ts1!17))) e!1206425 tp!539063))))

(declare-fun b!1889977 () Bool)

(declare-fun res!843982 () Bool)

(assert (=> b!1889977 (=> (not res!843982) (not e!1206432))))

(declare-fun isEmpty!13002 (List!21199) Bool)

(assert (=> b!1889977 (= res!843982 (not (isEmpty!13002 rules!4265)))))

(declare-fun tp!539074 () Bool)

(declare-fun b!1889978 () Bool)

(assert (=> b!1889978 (= e!1206428 (and (inv!28160 (h!26519 ts1!17)) e!1206433 tp!539074))))

(declare-fun tp!539066 () Bool)

(declare-fun b!1889979 () Bool)

(assert (=> b!1889979 (= e!1206424 (and (inv!21 (value!117983 (h!26519 ts2!17))) e!1206420 tp!539066))))

(assert (=> b!1889980 (= e!1206429 (and tp!539064 tp!539069))))

(assert (= (and start!189210 res!843986) b!1889977))

(assert (= (and b!1889977 res!843982) b!1889972))

(assert (= (and b!1889972 res!843984) b!1889968))

(assert (= (and b!1889968 res!843985) b!1889971))

(assert (= (and b!1889971 res!843983) b!1889975))

(assert (= b!1889965 b!1889970))

(assert (= b!1889974 b!1889965))

(assert (= (and start!189210 (is-Cons!21117 rules!4265)) b!1889974))

(assert (= b!1889967 b!1889969))

(assert (= b!1889976 b!1889967))

(assert (= b!1889978 b!1889976))

(assert (= (and start!189210 (is-Cons!21118 ts1!17)) b!1889978))

(assert (= b!1889973 b!1889980))

(assert (= b!1889979 b!1889973))

(assert (= b!1889966 b!1889979))

(assert (= (and start!189210 (is-Cons!21118 ts2!17)) b!1889966))

(declare-fun m!2320679 () Bool)

(assert (=> b!1889973 m!2320679))

(declare-fun m!2320681 () Bool)

(assert (=> b!1889973 m!2320681))

(declare-fun m!2320683 () Bool)

(assert (=> b!1889971 m!2320683))

(declare-fun m!2320685 () Bool)

(assert (=> b!1889978 m!2320685))

(declare-fun m!2320687 () Bool)

(assert (=> b!1889976 m!2320687))

(declare-fun m!2320689 () Bool)

(assert (=> b!1889979 m!2320689))

(declare-fun m!2320691 () Bool)

(assert (=> b!1889967 m!2320691))

(declare-fun m!2320693 () Bool)

(assert (=> b!1889967 m!2320693))

(declare-fun m!2320695 () Bool)

(assert (=> b!1889968 m!2320695))

(declare-fun m!2320697 () Bool)

(assert (=> b!1889972 m!2320697))

(declare-fun m!2320699 () Bool)

(assert (=> b!1889966 m!2320699))

(declare-fun m!2320701 () Bool)

(assert (=> b!1889977 m!2320701))

(declare-fun m!2320703 () Bool)

(assert (=> b!1889975 m!2320703))

(assert (=> b!1889975 m!2320703))

(declare-fun m!2320705 () Bool)

(assert (=> b!1889975 m!2320705))

(declare-fun m!2320707 () Bool)

(assert (=> b!1889975 m!2320707))

(declare-fun m!2320709 () Bool)

(assert (=> b!1889965 m!2320709))

(declare-fun m!2320711 () Bool)

(assert (=> b!1889965 m!2320711))

(push 1)

(assert b_and!145431)

(assert (not b_next!53291))

(assert b_and!145427)

(assert (not b!1889968))

(assert (not b!1889976))

(assert (not b!1889989))

(assert (not b!1889975))

(assert b_and!145425)

(assert b_and!145433)

(assert (not b_next!53289))

(assert (not b!1889978))

(assert b_and!145423)

(assert (not b!1889966))

(assert (not b!1889973))

(assert (not b_next!53297))

(assert (not b_next!53293))

(assert (not b_next!53295))

(assert (not b!1889971))

(assert (not b!1889977))

(assert (not b!1889974))

(assert (not b_next!53299))

(assert b_and!145429)

(assert (not b!1889967))

(assert (not b!1889979))

(assert (not b!1889965))

(assert (not b!1889972))

(check-sat)

(pop 1)

(push 1)

(assert b_and!145431)

(assert (not b_next!53297))

(assert (not b_next!53291))

(assert b_and!145427)

(assert b_and!145425)

(assert b_and!145433)

(assert (not b_next!53289))

(assert b_and!145423)

(assert (not b_next!53299))

(assert b_and!145429)

(assert (not b_next!53293))

(assert (not b_next!53295))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1890065 () Bool)

(declare-fun res!844004 () Bool)

(declare-fun e!1206509 () Bool)

(assert (=> b!1890065 (=> res!844004 e!1206509)))

(assert (=> b!1890065 (= res!844004 (not (is-IntegerValue!11609 (value!117983 (h!26519 ts1!17)))))))

(declare-fun e!1206511 () Bool)

(assert (=> b!1890065 (= e!1206511 e!1206509)))

(declare-fun b!1890066 () Bool)

(declare-fun e!1206510 () Bool)

(declare-fun inv!16 (TokenValue!3869) Bool)

(assert (=> b!1890066 (= e!1206510 (inv!16 (value!117983 (h!26519 ts1!17))))))

(declare-fun b!1890067 () Bool)

(declare-fun inv!15 (TokenValue!3869) Bool)

(assert (=> b!1890067 (= e!1206509 (inv!15 (value!117983 (h!26519 ts1!17))))))

(declare-fun b!1890068 () Bool)

(declare-fun inv!17 (TokenValue!3869) Bool)

(assert (=> b!1890068 (= e!1206511 (inv!17 (value!117983 (h!26519 ts1!17))))))

(declare-fun b!1890069 () Bool)

(assert (=> b!1890069 (= e!1206510 e!1206511)))

(declare-fun c!308248 () Bool)

(assert (=> b!1890069 (= c!308248 (is-IntegerValue!11608 (value!117983 (h!26519 ts1!17))))))

(declare-fun d!578690 () Bool)

(declare-fun c!308247 () Bool)

(assert (=> d!578690 (= c!308247 (is-IntegerValue!11607 (value!117983 (h!26519 ts1!17))))))

(assert (=> d!578690 (= (inv!21 (value!117983 (h!26519 ts1!17))) e!1206510)))

(assert (= (and d!578690 c!308247) b!1890066))

(assert (= (and d!578690 (not c!308247)) b!1890069))

(assert (= (and b!1890069 c!308248) b!1890068))

(assert (= (and b!1890069 (not c!308248)) b!1890065))

(assert (= (and b!1890065 (not res!844004)) b!1890067))

(declare-fun m!2320747 () Bool)

(assert (=> b!1890066 m!2320747))

(declare-fun m!2320749 () Bool)

(assert (=> b!1890067 m!2320749))

(declare-fun m!2320751 () Bool)

(assert (=> b!1890068 m!2320751))

(assert (=> b!1889976 d!578690))

(declare-fun d!578692 () Bool)

(assert (=> d!578692 (= (inv!28156 (tag!4147 (h!26518 rules!4265))) (= (mod (str.len (value!117982 (tag!4147 (h!26518 rules!4265)))) 2) 0))))

(assert (=> b!1889965 d!578692))

(declare-fun d!578694 () Bool)

(declare-fun res!844007 () Bool)

(declare-fun e!1206514 () Bool)

(assert (=> d!578694 (=> (not res!844007) (not e!1206514))))

(declare-fun semiInverseModEq!1521 (Int Int) Bool)

(assert (=> d!578694 (= res!844007 (semiInverseModEq!1521 (toChars!5197 (transformation!3733 (h!26518 rules!4265))) (toValue!5338 (transformation!3733 (h!26518 rules!4265)))))))

(assert (=> d!578694 (= (inv!28159 (transformation!3733 (h!26518 rules!4265))) e!1206514)))

(declare-fun b!1890072 () Bool)

(declare-fun equivClasses!1448 (Int Int) Bool)

(assert (=> b!1890072 (= e!1206514 (equivClasses!1448 (toChars!5197 (transformation!3733 (h!26518 rules!4265))) (toValue!5338 (transformation!3733 (h!26518 rules!4265)))))))

(assert (= (and d!578694 res!844007) b!1890072))

(declare-fun m!2320753 () Bool)

(assert (=> d!578694 m!2320753))

(declare-fun m!2320755 () Bool)

(assert (=> b!1890072 m!2320755))

(assert (=> b!1889965 d!578694))

(declare-fun d!578696 () Bool)

(declare-fun res!844012 () Bool)

(declare-fun e!1206517 () Bool)

(assert (=> d!578696 (=> (not res!844012) (not e!1206517))))

(declare-fun isEmpty!13004 (List!21197) Bool)

(assert (=> d!578696 (= res!844012 (not (isEmpty!13004 (originalCharacters!4540 (h!26519 ts2!17)))))))

(assert (=> d!578696 (= (inv!28160 (h!26519 ts2!17)) e!1206517)))

(declare-fun b!1890077 () Bool)

(declare-fun res!844013 () Bool)

(assert (=> b!1890077 (=> (not res!844013) (not e!1206517))))

(declare-fun list!8571 (BalanceConc!13828) List!21197)

(declare-fun dynLambda!10281 (Int TokenValue!3869) BalanceConc!13828)

(assert (=> b!1890077 (= res!844013 (= (originalCharacters!4540 (h!26519 ts2!17)) (list!8571 (dynLambda!10281 (toChars!5197 (transformation!3733 (rule!5926 (h!26519 ts2!17)))) (value!117983 (h!26519 ts2!17))))))))

(declare-fun b!1890078 () Bool)

(declare-fun size!16736 (List!21197) Int)

(assert (=> b!1890078 (= e!1206517 (= (size!16734 (h!26519 ts2!17)) (size!16736 (originalCharacters!4540 (h!26519 ts2!17)))))))

(assert (= (and d!578696 res!844012) b!1890077))

(assert (= (and b!1890077 res!844013) b!1890078))

(declare-fun b_lambda!61973 () Bool)

(assert (=> (not b_lambda!61973) (not b!1890077)))

(declare-fun tb!114777 () Bool)

(declare-fun t!175325 () Bool)

(assert (=> (and b!1889970 (= (toChars!5197 (transformation!3733 (h!26518 rules!4265))) (toChars!5197 (transformation!3733 (rule!5926 (h!26519 ts2!17))))) t!175325) tb!114777))

(declare-fun b!1890083 () Bool)

(declare-fun e!1206520 () Bool)

(declare-fun tp!539121 () Bool)

(declare-fun inv!28163 (Conc!7006) Bool)

(assert (=> b!1890083 (= e!1206520 (and (inv!28163 (c!308239 (dynLambda!10281 (toChars!5197 (transformation!3733 (rule!5926 (h!26519 ts2!17)))) (value!117983 (h!26519 ts2!17))))) tp!539121))))

(declare-fun result!138788 () Bool)

(declare-fun inv!28164 (BalanceConc!13828) Bool)

(assert (=> tb!114777 (= result!138788 (and (inv!28164 (dynLambda!10281 (toChars!5197 (transformation!3733 (rule!5926 (h!26519 ts2!17)))) (value!117983 (h!26519 ts2!17)))) e!1206520))))

(assert (= tb!114777 b!1890083))

(declare-fun m!2320757 () Bool)

(assert (=> b!1890083 m!2320757))

(declare-fun m!2320759 () Bool)

(assert (=> tb!114777 m!2320759))

(assert (=> b!1890077 t!175325))

(declare-fun b_and!145447 () Bool)

(assert (= b_and!145425 (and (=> t!175325 result!138788) b_and!145447)))

(declare-fun tb!114779 () Bool)

(declare-fun t!175327 () Bool)

(assert (=> (and b!1889969 (= (toChars!5197 (transformation!3733 (rule!5926 (h!26519 ts1!17)))) (toChars!5197 (transformation!3733 (rule!5926 (h!26519 ts2!17))))) t!175327) tb!114779))

(declare-fun result!138792 () Bool)

(assert (= result!138792 result!138788))

(assert (=> b!1890077 t!175327))

(declare-fun b_and!145449 () Bool)

(assert (= b_and!145429 (and (=> t!175327 result!138792) b_and!145449)))

(declare-fun t!175329 () Bool)

(declare-fun tb!114781 () Bool)

(assert (=> (and b!1889980 (= (toChars!5197 (transformation!3733 (rule!5926 (h!26519 ts2!17)))) (toChars!5197 (transformation!3733 (rule!5926 (h!26519 ts2!17))))) t!175329) tb!114781))

(declare-fun result!138794 () Bool)

(assert (= result!138794 result!138788))

(assert (=> b!1890077 t!175329))

(declare-fun b_and!145451 () Bool)

(assert (= b_and!145433 (and (=> t!175329 result!138794) b_and!145451)))

(declare-fun m!2320761 () Bool)

(assert (=> d!578696 m!2320761))

(declare-fun m!2320763 () Bool)

(assert (=> b!1890077 m!2320763))

(assert (=> b!1890077 m!2320763))

(declare-fun m!2320765 () Bool)

(assert (=> b!1890077 m!2320765))

(declare-fun m!2320767 () Bool)

(assert (=> b!1890078 m!2320767))

(assert (=> b!1889966 d!578696))

(declare-fun bs!413051 () Bool)

(declare-fun d!578698 () Bool)

(assert (= bs!413051 (and d!578698 b!1889975)))

(declare-fun lambda!73914 () Int)

(assert (=> bs!413051 (= lambda!73914 lambda!73908)))

(declare-fun b!1890129 () Bool)

(declare-fun e!1206552 () Bool)

(assert (=> b!1890129 (= e!1206552 true)))

(declare-fun b!1890128 () Bool)

(declare-fun e!1206551 () Bool)

(assert (=> b!1890128 (= e!1206551 e!1206552)))

(declare-fun b!1890127 () Bool)

(declare-fun e!1206550 () Bool)

(assert (=> b!1890127 (= e!1206550 e!1206551)))

(assert (=> d!578698 e!1206550))

(assert (= b!1890128 b!1890129))

(assert (= b!1890127 b!1890128))

(assert (= (and d!578698 (is-Cons!21117 rules!4265)) b!1890127))

(assert (=> b!1890129 (< (dynLambda!10275 order!13353 (toValue!5338 (transformation!3733 (h!26518 rules!4265)))) (dynLambda!10276 order!13355 lambda!73914))))

(assert (=> b!1890129 (< (dynLambda!10277 order!13357 (toChars!5197 (transformation!3733 (h!26518 rules!4265)))) (dynLambda!10276 order!13355 lambda!73914))))

(assert (=> d!578698 true))

(declare-fun lt!723889 () Bool)

(declare-fun forall!4432 (List!21200 Int) Bool)

(assert (=> d!578698 (= lt!723889 (forall!4432 (++!5706 ts1!17 ts2!17) lambda!73914))))

(declare-fun e!1206549 () Bool)

(assert (=> d!578698 (= lt!723889 e!1206549)))

(declare-fun res!844033 () Bool)

(assert (=> d!578698 (=> res!844033 e!1206549)))

(assert (=> d!578698 (= res!844033 (not (is-Cons!21118 (++!5706 ts1!17 ts2!17))))))

(assert (=> d!578698 (not (isEmpty!13002 rules!4265))))

(assert (=> d!578698 (= (rulesProduceEachTokenIndividuallyList!1103 thiss!27307 rules!4265 (++!5706 ts1!17 ts2!17)) lt!723889)))

(declare-fun b!1890125 () Bool)

(declare-fun e!1206548 () Bool)

(assert (=> b!1890125 (= e!1206549 e!1206548)))

(declare-fun res!844034 () Bool)

(assert (=> b!1890125 (=> (not res!844034) (not e!1206548))))

(declare-fun rulesProduceIndividualToken!1545 (LexerInterface!3346 List!21199 Token!7018) Bool)

(assert (=> b!1890125 (= res!844034 (rulesProduceIndividualToken!1545 thiss!27307 rules!4265 (h!26519 (++!5706 ts1!17 ts2!17))))))

(declare-fun b!1890126 () Bool)

(assert (=> b!1890126 (= e!1206548 (rulesProduceEachTokenIndividuallyList!1103 thiss!27307 rules!4265 (t!175317 (++!5706 ts1!17 ts2!17))))))

(assert (= (and d!578698 (not res!844033)) b!1890125))

(assert (= (and b!1890125 res!844034) b!1890126))

(assert (=> d!578698 m!2320703))

(declare-fun m!2320809 () Bool)

(assert (=> d!578698 m!2320809))

(assert (=> d!578698 m!2320701))

(declare-fun m!2320811 () Bool)

(assert (=> b!1890125 m!2320811))

(declare-fun m!2320813 () Bool)

(assert (=> b!1890126 m!2320813))

(assert (=> b!1889975 d!578698))

(declare-fun b!1890141 () Bool)

(declare-fun e!1206558 () Bool)

(declare-fun lt!723892 () List!21200)

(assert (=> b!1890141 (= e!1206558 (or (not (= ts2!17 Nil!21118)) (= lt!723892 ts1!17)))))

(declare-fun b!1890140 () Bool)

(declare-fun res!844040 () Bool)

(assert (=> b!1890140 (=> (not res!844040) (not e!1206558))))

(declare-fun size!16737 (List!21200) Int)

(assert (=> b!1890140 (= res!844040 (= (size!16737 lt!723892) (+ (size!16737 ts1!17) (size!16737 ts2!17))))))

(declare-fun d!578714 () Bool)

(assert (=> d!578714 e!1206558))

(declare-fun res!844039 () Bool)

(assert (=> d!578714 (=> (not res!844039) (not e!1206558))))

(declare-fun content!3120 (List!21200) (Set Token!7018))

(assert (=> d!578714 (= res!844039 (= (content!3120 lt!723892) (set.union (content!3120 ts1!17) (content!3120 ts2!17))))))

(declare-fun e!1206557 () List!21200)

(assert (=> d!578714 (= lt!723892 e!1206557)))

(declare-fun c!308259 () Bool)

(assert (=> d!578714 (= c!308259 (is-Nil!21118 ts1!17))))

(assert (=> d!578714 (= (++!5706 ts1!17 ts2!17) lt!723892)))

(declare-fun b!1890138 () Bool)

(assert (=> b!1890138 (= e!1206557 ts2!17)))

(declare-fun b!1890139 () Bool)

(assert (=> b!1890139 (= e!1206557 (Cons!21118 (h!26519 ts1!17) (++!5706 (t!175317 ts1!17) ts2!17)))))

(assert (= (and d!578714 c!308259) b!1890138))

(assert (= (and d!578714 (not c!308259)) b!1890139))

(assert (= (and d!578714 res!844039) b!1890140))

(assert (= (and b!1890140 res!844040) b!1890141))

(declare-fun m!2320815 () Bool)

(assert (=> b!1890140 m!2320815))

(declare-fun m!2320817 () Bool)

(assert (=> b!1890140 m!2320817))

(declare-fun m!2320819 () Bool)

(assert (=> b!1890140 m!2320819))

(declare-fun m!2320821 () Bool)

(assert (=> d!578714 m!2320821))

(declare-fun m!2320823 () Bool)

(assert (=> d!578714 m!2320823))

(declare-fun m!2320825 () Bool)

(assert (=> d!578714 m!2320825))

(declare-fun m!2320827 () Bool)

(assert (=> b!1890139 m!2320827))

(assert (=> b!1889975 d!578714))

(declare-fun d!578716 () Bool)

(assert (=> d!578716 (forall!4432 (++!5706 ts1!17 ts2!17) lambda!73908)))

(declare-fun lt!723895 () Unit!35515)

(declare-fun choose!11821 (List!21200 List!21200 Int) Unit!35515)

(assert (=> d!578716 (= lt!723895 (choose!11821 ts1!17 ts2!17 lambda!73908))))

(assert (=> d!578716 (forall!4432 ts1!17 lambda!73908)))

(assert (=> d!578716 (= (lemmaConcatPreservesForall!125 ts1!17 ts2!17 lambda!73908) lt!723895)))

(declare-fun bs!413052 () Bool)

(assert (= bs!413052 d!578716))

(assert (=> bs!413052 m!2320703))

(assert (=> bs!413052 m!2320703))

(declare-fun m!2320829 () Bool)

(assert (=> bs!413052 m!2320829))

(declare-fun m!2320831 () Bool)

(assert (=> bs!413052 m!2320831))

(declare-fun m!2320833 () Bool)

(assert (=> bs!413052 m!2320833))

(assert (=> b!1889975 d!578716))

(declare-fun d!578718 () Bool)

(assert (=> d!578718 (= (inv!28156 (tag!4147 (rule!5926 (h!26519 ts2!17)))) (= (mod (str.len (value!117982 (tag!4147 (rule!5926 (h!26519 ts2!17))))) 2) 0))))

(assert (=> b!1889973 d!578718))

(declare-fun d!578720 () Bool)

(declare-fun res!844041 () Bool)

(declare-fun e!1206559 () Bool)

(assert (=> d!578720 (=> (not res!844041) (not e!1206559))))

(assert (=> d!578720 (= res!844041 (semiInverseModEq!1521 (toChars!5197 (transformation!3733 (rule!5926 (h!26519 ts2!17)))) (toValue!5338 (transformation!3733 (rule!5926 (h!26519 ts2!17))))))))

(assert (=> d!578720 (= (inv!28159 (transformation!3733 (rule!5926 (h!26519 ts2!17)))) e!1206559)))

(declare-fun b!1890142 () Bool)

(assert (=> b!1890142 (= e!1206559 (equivClasses!1448 (toChars!5197 (transformation!3733 (rule!5926 (h!26519 ts2!17)))) (toValue!5338 (transformation!3733 (rule!5926 (h!26519 ts2!17))))))))

(assert (= (and d!578720 res!844041) b!1890142))

(declare-fun m!2320835 () Bool)

(assert (=> d!578720 m!2320835))

(declare-fun m!2320837 () Bool)

(assert (=> b!1890142 m!2320837))

(assert (=> b!1889973 d!578720))

(declare-fun d!578722 () Bool)

(declare-fun res!844044 () Bool)

(declare-fun e!1206562 () Bool)

(assert (=> d!578722 (=> (not res!844044) (not e!1206562))))

(declare-fun rulesValid!1410 (LexerInterface!3346 List!21199) Bool)

(assert (=> d!578722 (= res!844044 (rulesValid!1410 thiss!27307 rules!4265))))

(assert (=> d!578722 (= (rulesInvariant!2979 thiss!27307 rules!4265) e!1206562)))

(declare-fun b!1890145 () Bool)

(declare-datatypes ((List!21205 0))(
  ( (Nil!21123) (Cons!21123 (h!26524 String!24465) (t!175362 List!21205)) )
))
(declare-fun noDuplicateTag!1408 (LexerInterface!3346 List!21199 List!21205) Bool)

(assert (=> b!1890145 (= e!1206562 (noDuplicateTag!1408 thiss!27307 rules!4265 Nil!21123))))

(assert (= (and d!578722 res!844044) b!1890145))

(declare-fun m!2320839 () Bool)

(assert (=> d!578722 m!2320839))

(declare-fun m!2320841 () Bool)

(assert (=> b!1890145 m!2320841))

(assert (=> b!1889972 d!578722))

(declare-fun bs!413053 () Bool)

(declare-fun d!578724 () Bool)

(assert (= bs!413053 (and d!578724 b!1889975)))

(declare-fun lambda!73915 () Int)

(assert (=> bs!413053 (= lambda!73915 lambda!73908)))

(declare-fun bs!413054 () Bool)

(assert (= bs!413054 (and d!578724 d!578698)))

(assert (=> bs!413054 (= lambda!73915 lambda!73914)))

(declare-fun b!1890150 () Bool)

(declare-fun e!1206567 () Bool)

(assert (=> b!1890150 (= e!1206567 true)))

(declare-fun b!1890149 () Bool)

(declare-fun e!1206566 () Bool)

(assert (=> b!1890149 (= e!1206566 e!1206567)))

(declare-fun b!1890148 () Bool)

(declare-fun e!1206565 () Bool)

(assert (=> b!1890148 (= e!1206565 e!1206566)))

(assert (=> d!578724 e!1206565))

(assert (= b!1890149 b!1890150))

(assert (= b!1890148 b!1890149))

(assert (= (and d!578724 (is-Cons!21117 rules!4265)) b!1890148))

(assert (=> b!1890150 (< (dynLambda!10275 order!13353 (toValue!5338 (transformation!3733 (h!26518 rules!4265)))) (dynLambda!10276 order!13355 lambda!73915))))

(assert (=> b!1890150 (< (dynLambda!10277 order!13357 (toChars!5197 (transformation!3733 (h!26518 rules!4265)))) (dynLambda!10276 order!13355 lambda!73915))))

(assert (=> d!578724 true))

(declare-fun lt!723896 () Bool)

(assert (=> d!578724 (= lt!723896 (forall!4432 ts2!17 lambda!73915))))

(declare-fun e!1206564 () Bool)

(assert (=> d!578724 (= lt!723896 e!1206564)))

(declare-fun res!844045 () Bool)

(assert (=> d!578724 (=> res!844045 e!1206564)))

(assert (=> d!578724 (= res!844045 (not (is-Cons!21118 ts2!17)))))

(assert (=> d!578724 (not (isEmpty!13002 rules!4265))))

(assert (=> d!578724 (= (rulesProduceEachTokenIndividuallyList!1103 thiss!27307 rules!4265 ts2!17) lt!723896)))

(declare-fun b!1890146 () Bool)

(declare-fun e!1206563 () Bool)

(assert (=> b!1890146 (= e!1206564 e!1206563)))

(declare-fun res!844046 () Bool)

(assert (=> b!1890146 (=> (not res!844046) (not e!1206563))))

(assert (=> b!1890146 (= res!844046 (rulesProduceIndividualToken!1545 thiss!27307 rules!4265 (h!26519 ts2!17)))))

(declare-fun b!1890147 () Bool)

(assert (=> b!1890147 (= e!1206563 (rulesProduceEachTokenIndividuallyList!1103 thiss!27307 rules!4265 (t!175317 ts2!17)))))

(assert (= (and d!578724 (not res!844045)) b!1890146))

(assert (= (and b!1890146 res!844046) b!1890147))

(declare-fun m!2320843 () Bool)

(assert (=> d!578724 m!2320843))

(assert (=> d!578724 m!2320701))

(declare-fun m!2320845 () Bool)

(assert (=> b!1890146 m!2320845))

(declare-fun m!2320847 () Bool)

(assert (=> b!1890147 m!2320847))

(assert (=> b!1889971 d!578724))

(declare-fun bs!413055 () Bool)

(declare-fun d!578726 () Bool)

(assert (= bs!413055 (and d!578726 b!1889975)))

(declare-fun lambda!73916 () Int)

(assert (=> bs!413055 (= lambda!73916 lambda!73908)))

(declare-fun bs!413056 () Bool)

(assert (= bs!413056 (and d!578726 d!578698)))

(assert (=> bs!413056 (= lambda!73916 lambda!73914)))

(declare-fun bs!413057 () Bool)

(assert (= bs!413057 (and d!578726 d!578724)))

(assert (=> bs!413057 (= lambda!73916 lambda!73915)))

(declare-fun b!1890155 () Bool)

(declare-fun e!1206572 () Bool)

(assert (=> b!1890155 (= e!1206572 true)))

(declare-fun b!1890154 () Bool)

(declare-fun e!1206571 () Bool)

(assert (=> b!1890154 (= e!1206571 e!1206572)))

(declare-fun b!1890153 () Bool)

(declare-fun e!1206570 () Bool)

(assert (=> b!1890153 (= e!1206570 e!1206571)))

(assert (=> d!578726 e!1206570))

(assert (= b!1890154 b!1890155))

(assert (= b!1890153 b!1890154))

(assert (= (and d!578726 (is-Cons!21117 rules!4265)) b!1890153))

(assert (=> b!1890155 (< (dynLambda!10275 order!13353 (toValue!5338 (transformation!3733 (h!26518 rules!4265)))) (dynLambda!10276 order!13355 lambda!73916))))

(assert (=> b!1890155 (< (dynLambda!10277 order!13357 (toChars!5197 (transformation!3733 (h!26518 rules!4265)))) (dynLambda!10276 order!13355 lambda!73916))))

(assert (=> d!578726 true))

(declare-fun lt!723897 () Bool)

(assert (=> d!578726 (= lt!723897 (forall!4432 ts1!17 lambda!73916))))

(declare-fun e!1206569 () Bool)

(assert (=> d!578726 (= lt!723897 e!1206569)))

(declare-fun res!844047 () Bool)

(assert (=> d!578726 (=> res!844047 e!1206569)))

(assert (=> d!578726 (= res!844047 (not (is-Cons!21118 ts1!17)))))

(assert (=> d!578726 (not (isEmpty!13002 rules!4265))))

(assert (=> d!578726 (= (rulesProduceEachTokenIndividuallyList!1103 thiss!27307 rules!4265 ts1!17) lt!723897)))

(declare-fun b!1890151 () Bool)

(declare-fun e!1206568 () Bool)

(assert (=> b!1890151 (= e!1206569 e!1206568)))

(declare-fun res!844048 () Bool)

(assert (=> b!1890151 (=> (not res!844048) (not e!1206568))))

(assert (=> b!1890151 (= res!844048 (rulesProduceIndividualToken!1545 thiss!27307 rules!4265 (h!26519 ts1!17)))))

(declare-fun b!1890152 () Bool)

(assert (=> b!1890152 (= e!1206568 (rulesProduceEachTokenIndividuallyList!1103 thiss!27307 rules!4265 (t!175317 ts1!17)))))

(assert (= (and d!578726 (not res!844047)) b!1890151))

(assert (= (and b!1890151 res!844048) b!1890152))

(declare-fun m!2320849 () Bool)

(assert (=> d!578726 m!2320849))

(assert (=> d!578726 m!2320701))

(declare-fun m!2320851 () Bool)

(assert (=> b!1890151 m!2320851))

(declare-fun m!2320853 () Bool)

(assert (=> b!1890152 m!2320853))

(assert (=> b!1889968 d!578726))

(declare-fun b!1890156 () Bool)

(declare-fun res!844049 () Bool)

(declare-fun e!1206573 () Bool)

(assert (=> b!1890156 (=> res!844049 e!1206573)))

(assert (=> b!1890156 (= res!844049 (not (is-IntegerValue!11609 (value!117983 (h!26519 ts2!17)))))))

(declare-fun e!1206575 () Bool)

(assert (=> b!1890156 (= e!1206575 e!1206573)))

(declare-fun b!1890157 () Bool)

(declare-fun e!1206574 () Bool)

(assert (=> b!1890157 (= e!1206574 (inv!16 (value!117983 (h!26519 ts2!17))))))

(declare-fun b!1890158 () Bool)

(assert (=> b!1890158 (= e!1206573 (inv!15 (value!117983 (h!26519 ts2!17))))))

(declare-fun b!1890159 () Bool)

(assert (=> b!1890159 (= e!1206575 (inv!17 (value!117983 (h!26519 ts2!17))))))

(declare-fun b!1890160 () Bool)

(assert (=> b!1890160 (= e!1206574 e!1206575)))

(declare-fun c!308261 () Bool)

(assert (=> b!1890160 (= c!308261 (is-IntegerValue!11608 (value!117983 (h!26519 ts2!17))))))

(declare-fun d!578728 () Bool)

(declare-fun c!308260 () Bool)

(assert (=> d!578728 (= c!308260 (is-IntegerValue!11607 (value!117983 (h!26519 ts2!17))))))

(assert (=> d!578728 (= (inv!21 (value!117983 (h!26519 ts2!17))) e!1206574)))

(assert (= (and d!578728 c!308260) b!1890157))

(assert (= (and d!578728 (not c!308260)) b!1890160))

(assert (= (and b!1890160 c!308261) b!1890159))

(assert (= (and b!1890160 (not c!308261)) b!1890156))

(assert (= (and b!1890156 (not res!844049)) b!1890158))

(declare-fun m!2320855 () Bool)

(assert (=> b!1890157 m!2320855))

(declare-fun m!2320857 () Bool)

(assert (=> b!1890158 m!2320857))

(declare-fun m!2320859 () Bool)

(assert (=> b!1890159 m!2320859))

(assert (=> b!1889979 d!578728))

(declare-fun d!578730 () Bool)

(assert (=> d!578730 (= (isEmpty!13002 rules!4265) (is-Nil!21117 rules!4265))))

(assert (=> b!1889977 d!578730))

(declare-fun d!578732 () Bool)

(declare-fun res!844050 () Bool)

(declare-fun e!1206576 () Bool)

(assert (=> d!578732 (=> (not res!844050) (not e!1206576))))

(assert (=> d!578732 (= res!844050 (not (isEmpty!13004 (originalCharacters!4540 (h!26519 ts1!17)))))))

(assert (=> d!578732 (= (inv!28160 (h!26519 ts1!17)) e!1206576)))

(declare-fun b!1890161 () Bool)

(declare-fun res!844051 () Bool)

(assert (=> b!1890161 (=> (not res!844051) (not e!1206576))))

(assert (=> b!1890161 (= res!844051 (= (originalCharacters!4540 (h!26519 ts1!17)) (list!8571 (dynLambda!10281 (toChars!5197 (transformation!3733 (rule!5926 (h!26519 ts1!17)))) (value!117983 (h!26519 ts1!17))))))))

(declare-fun b!1890162 () Bool)

(assert (=> b!1890162 (= e!1206576 (= (size!16734 (h!26519 ts1!17)) (size!16736 (originalCharacters!4540 (h!26519 ts1!17)))))))

(assert (= (and d!578732 res!844050) b!1890161))

(assert (= (and b!1890161 res!844051) b!1890162))

(declare-fun b_lambda!61979 () Bool)

(assert (=> (not b_lambda!61979) (not b!1890161)))

(declare-fun tb!114795 () Bool)

(declare-fun t!175345 () Bool)

(assert (=> (and b!1889970 (= (toChars!5197 (transformation!3733 (h!26518 rules!4265))) (toChars!5197 (transformation!3733 (rule!5926 (h!26519 ts1!17))))) t!175345) tb!114795))

(declare-fun b!1890163 () Bool)

(declare-fun e!1206577 () Bool)

(declare-fun tp!539126 () Bool)

(assert (=> b!1890163 (= e!1206577 (and (inv!28163 (c!308239 (dynLambda!10281 (toChars!5197 (transformation!3733 (rule!5926 (h!26519 ts1!17)))) (value!117983 (h!26519 ts1!17))))) tp!539126))))

(declare-fun result!138810 () Bool)

(assert (=> tb!114795 (= result!138810 (and (inv!28164 (dynLambda!10281 (toChars!5197 (transformation!3733 (rule!5926 (h!26519 ts1!17)))) (value!117983 (h!26519 ts1!17)))) e!1206577))))

(assert (= tb!114795 b!1890163))

(declare-fun m!2320861 () Bool)

(assert (=> b!1890163 m!2320861))

(declare-fun m!2320863 () Bool)

(assert (=> tb!114795 m!2320863))

(assert (=> b!1890161 t!175345))

(declare-fun b_and!145465 () Bool)

(assert (= b_and!145447 (and (=> t!175345 result!138810) b_and!145465)))

(declare-fun t!175347 () Bool)

(declare-fun tb!114797 () Bool)

(assert (=> (and b!1889969 (= (toChars!5197 (transformation!3733 (rule!5926 (h!26519 ts1!17)))) (toChars!5197 (transformation!3733 (rule!5926 (h!26519 ts1!17))))) t!175347) tb!114797))

(declare-fun result!138812 () Bool)

(assert (= result!138812 result!138810))

(assert (=> b!1890161 t!175347))

(declare-fun b_and!145467 () Bool)

(assert (= b_and!145449 (and (=> t!175347 result!138812) b_and!145467)))

(declare-fun tb!114799 () Bool)

(declare-fun t!175349 () Bool)

(assert (=> (and b!1889980 (= (toChars!5197 (transformation!3733 (rule!5926 (h!26519 ts2!17)))) (toChars!5197 (transformation!3733 (rule!5926 (h!26519 ts1!17))))) t!175349) tb!114799))

(declare-fun result!138814 () Bool)

(assert (= result!138814 result!138810))

(assert (=> b!1890161 t!175349))

(declare-fun b_and!145469 () Bool)

(assert (= b_and!145451 (and (=> t!175349 result!138814) b_and!145469)))

(declare-fun m!2320865 () Bool)

(assert (=> d!578732 m!2320865))

(declare-fun m!2320867 () Bool)

(assert (=> b!1890161 m!2320867))

(assert (=> b!1890161 m!2320867))

(declare-fun m!2320869 () Bool)

(assert (=> b!1890161 m!2320869))

(declare-fun m!2320871 () Bool)

(assert (=> b!1890162 m!2320871))

(assert (=> b!1889978 d!578732))

(declare-fun d!578734 () Bool)

(assert (=> d!578734 (= (inv!28156 (tag!4147 (rule!5926 (h!26519 ts1!17)))) (= (mod (str.len (value!117982 (tag!4147 (rule!5926 (h!26519 ts1!17))))) 2) 0))))

(assert (=> b!1889967 d!578734))

(declare-fun d!578736 () Bool)

(declare-fun res!844052 () Bool)

(declare-fun e!1206578 () Bool)

(assert (=> d!578736 (=> (not res!844052) (not e!1206578))))

(assert (=> d!578736 (= res!844052 (semiInverseModEq!1521 (toChars!5197 (transformation!3733 (rule!5926 (h!26519 ts1!17)))) (toValue!5338 (transformation!3733 (rule!5926 (h!26519 ts1!17))))))))

(assert (=> d!578736 (= (inv!28159 (transformation!3733 (rule!5926 (h!26519 ts1!17)))) e!1206578)))

(declare-fun b!1890164 () Bool)

(assert (=> b!1890164 (= e!1206578 (equivClasses!1448 (toChars!5197 (transformation!3733 (rule!5926 (h!26519 ts1!17)))) (toValue!5338 (transformation!3733 (rule!5926 (h!26519 ts1!17))))))))

(assert (= (and d!578736 res!844052) b!1890164))

(declare-fun m!2320873 () Bool)

(assert (=> d!578736 m!2320873))

(declare-fun m!2320875 () Bool)

(assert (=> b!1890164 m!2320875))

(assert (=> b!1889967 d!578736))

(declare-fun b!1890169 () Bool)

(declare-fun e!1206581 () Bool)

(declare-fun tp_is_empty!9047 () Bool)

(declare-fun tp!539129 () Bool)

(assert (=> b!1890169 (= e!1206581 (and tp_is_empty!9047 tp!539129))))

(assert (=> b!1889976 (= tp!539063 e!1206581)))

(assert (= (and b!1889976 (is-Cons!21115 (originalCharacters!4540 (h!26519 ts1!17)))) b!1890169))

(declare-fun b!1890181 () Bool)

(declare-fun e!1206584 () Bool)

(declare-fun tp!539140 () Bool)

(declare-fun tp!539141 () Bool)

(assert (=> b!1890181 (= e!1206584 (and tp!539140 tp!539141))))

(declare-fun b!1890183 () Bool)

(declare-fun tp!539143 () Bool)

(declare-fun tp!539142 () Bool)

(assert (=> b!1890183 (= e!1206584 (and tp!539143 tp!539142))))

(declare-fun b!1890182 () Bool)

(declare-fun tp!539144 () Bool)

(assert (=> b!1890182 (= e!1206584 tp!539144)))

(declare-fun b!1890180 () Bool)

(assert (=> b!1890180 (= e!1206584 tp_is_empty!9047)))

(assert (=> b!1889965 (= tp!539076 e!1206584)))

(assert (= (and b!1889965 (is-ElementMatch!5158 (regex!3733 (h!26518 rules!4265)))) b!1890180))

(assert (= (and b!1889965 (is-Concat!9027 (regex!3733 (h!26518 rules!4265)))) b!1890181))

(assert (= (and b!1889965 (is-Star!5158 (regex!3733 (h!26518 rules!4265)))) b!1890182))

(assert (= (and b!1889965 (is-Union!5158 (regex!3733 (h!26518 rules!4265)))) b!1890183))

(declare-fun b!1890197 () Bool)

(declare-fun b_free!52609 () Bool)

(declare-fun b_next!53313 () Bool)

(assert (=> b!1890197 (= b_free!52609 (not b_next!53313))))

(declare-fun tp!539156 () Bool)

(declare-fun b_and!145471 () Bool)

(assert (=> b!1890197 (= tp!539156 b_and!145471)))

(declare-fun b_free!52611 () Bool)

(declare-fun b_next!53315 () Bool)

(assert (=> b!1890197 (= b_free!52611 (not b_next!53315))))

(declare-fun t!175351 () Bool)

(declare-fun tb!114801 () Bool)

(assert (=> (and b!1890197 (= (toChars!5197 (transformation!3733 (rule!5926 (h!26519 (t!175317 ts2!17))))) (toChars!5197 (transformation!3733 (rule!5926 (h!26519 ts2!17))))) t!175351) tb!114801))

(declare-fun result!138822 () Bool)

(assert (= result!138822 result!138788))

(assert (=> b!1890077 t!175351))

(declare-fun t!175353 () Bool)

(declare-fun tb!114803 () Bool)

(assert (=> (and b!1890197 (= (toChars!5197 (transformation!3733 (rule!5926 (h!26519 (t!175317 ts2!17))))) (toChars!5197 (transformation!3733 (rule!5926 (h!26519 ts1!17))))) t!175353) tb!114803))

(declare-fun result!138824 () Bool)

(assert (= result!138824 result!138810))

(assert (=> b!1890161 t!175353))

(declare-fun tp!539158 () Bool)

(declare-fun b_and!145473 () Bool)

(assert (=> b!1890197 (= tp!539158 (and (=> t!175351 result!138822) (=> t!175353 result!138824) b_and!145473))))

(declare-fun tp!539159 () Bool)

(declare-fun b!1890194 () Bool)

(declare-fun e!1206599 () Bool)

(declare-fun e!1206598 () Bool)

(assert (=> b!1890194 (= e!1206598 (and (inv!28160 (h!26519 (t!175317 ts2!17))) e!1206599 tp!539159))))

(assert (=> b!1889966 (= tp!539073 e!1206598)))

(declare-fun e!1206600 () Bool)

(declare-fun b!1890195 () Bool)

(declare-fun tp!539157 () Bool)

(assert (=> b!1890195 (= e!1206599 (and (inv!21 (value!117983 (h!26519 (t!175317 ts2!17)))) e!1206600 tp!539157))))

(declare-fun e!1206601 () Bool)

(assert (=> b!1890197 (= e!1206601 (and tp!539156 tp!539158))))

(declare-fun tp!539155 () Bool)

(declare-fun b!1890196 () Bool)

(assert (=> b!1890196 (= e!1206600 (and tp!539155 (inv!28156 (tag!4147 (rule!5926 (h!26519 (t!175317 ts2!17))))) (inv!28159 (transformation!3733 (rule!5926 (h!26519 (t!175317 ts2!17))))) e!1206601))))

(assert (= b!1890196 b!1890197))

(assert (= b!1890195 b!1890196))

(assert (= b!1890194 b!1890195))

(assert (= (and b!1889966 (is-Cons!21118 (t!175317 ts2!17))) b!1890194))

(declare-fun m!2320877 () Bool)

(assert (=> b!1890194 m!2320877))

(declare-fun m!2320879 () Bool)

(assert (=> b!1890195 m!2320879))

(declare-fun m!2320881 () Bool)

(assert (=> b!1890196 m!2320881))

(declare-fun m!2320883 () Bool)

(assert (=> b!1890196 m!2320883))

(declare-fun b!1890199 () Bool)

(declare-fun e!1206603 () Bool)

(declare-fun tp!539160 () Bool)

(declare-fun tp!539161 () Bool)

(assert (=> b!1890199 (= e!1206603 (and tp!539160 tp!539161))))

(declare-fun b!1890201 () Bool)

(declare-fun tp!539163 () Bool)

(declare-fun tp!539162 () Bool)

(assert (=> b!1890201 (= e!1206603 (and tp!539163 tp!539162))))

(declare-fun b!1890200 () Bool)

(declare-fun tp!539164 () Bool)

(assert (=> b!1890200 (= e!1206603 tp!539164)))

(declare-fun b!1890198 () Bool)

(assert (=> b!1890198 (= e!1206603 tp_is_empty!9047)))

(assert (=> b!1889973 (= tp!539068 e!1206603)))

(assert (= (and b!1889973 (is-ElementMatch!5158 (regex!3733 (rule!5926 (h!26519 ts2!17))))) b!1890198))

(assert (= (and b!1889973 (is-Concat!9027 (regex!3733 (rule!5926 (h!26519 ts2!17))))) b!1890199))

(assert (= (and b!1889973 (is-Star!5158 (regex!3733 (rule!5926 (h!26519 ts2!17))))) b!1890200))

(assert (= (and b!1889973 (is-Union!5158 (regex!3733 (rule!5926 (h!26519 ts2!17))))) b!1890201))

(declare-fun b!1890212 () Bool)

(declare-fun b_free!52613 () Bool)

(declare-fun b_next!53317 () Bool)

(assert (=> b!1890212 (= b_free!52613 (not b_next!53317))))

(declare-fun tp!539173 () Bool)

(declare-fun b_and!145475 () Bool)

(assert (=> b!1890212 (= tp!539173 b_and!145475)))

(declare-fun b_free!52615 () Bool)

(declare-fun b_next!53319 () Bool)

(assert (=> b!1890212 (= b_free!52615 (not b_next!53319))))

(declare-fun tb!114805 () Bool)

(declare-fun t!175355 () Bool)

(assert (=> (and b!1890212 (= (toChars!5197 (transformation!3733 (h!26518 (t!175316 rules!4265)))) (toChars!5197 (transformation!3733 (rule!5926 (h!26519 ts2!17))))) t!175355) tb!114805))

(declare-fun result!138828 () Bool)

(assert (= result!138828 result!138788))

(assert (=> b!1890077 t!175355))

(declare-fun t!175357 () Bool)

(declare-fun tb!114807 () Bool)

(assert (=> (and b!1890212 (= (toChars!5197 (transformation!3733 (h!26518 (t!175316 rules!4265)))) (toChars!5197 (transformation!3733 (rule!5926 (h!26519 ts1!17))))) t!175357) tb!114807))

(declare-fun result!138830 () Bool)

(assert (= result!138830 result!138810))

(assert (=> b!1890161 t!175357))

(declare-fun tp!539174 () Bool)

(declare-fun b_and!145477 () Bool)

(assert (=> b!1890212 (= tp!539174 (and (=> t!175355 result!138828) (=> t!175357 result!138830) b_and!145477))))

(declare-fun e!1206615 () Bool)

(assert (=> b!1890212 (= e!1206615 (and tp!539173 tp!539174))))

(declare-fun e!1206612 () Bool)

(declare-fun b!1890211 () Bool)

(declare-fun tp!539175 () Bool)

(assert (=> b!1890211 (= e!1206612 (and tp!539175 (inv!28156 (tag!4147 (h!26518 (t!175316 rules!4265)))) (inv!28159 (transformation!3733 (h!26518 (t!175316 rules!4265)))) e!1206615))))

(declare-fun b!1890210 () Bool)

(declare-fun e!1206613 () Bool)

(declare-fun tp!539176 () Bool)

(assert (=> b!1890210 (= e!1206613 (and e!1206612 tp!539176))))

(assert (=> b!1889974 (= tp!539067 e!1206613)))

(assert (= b!1890211 b!1890212))

(assert (= b!1890210 b!1890211))

(assert (= (and b!1889974 (is-Cons!21117 (t!175316 rules!4265))) b!1890210))

(declare-fun m!2320885 () Bool)

(assert (=> b!1890211 m!2320885))

(declare-fun m!2320887 () Bool)

(assert (=> b!1890211 m!2320887))

(declare-fun b!1890215 () Bool)

(declare-fun e!1206618 () Bool)

(assert (=> b!1890215 (= e!1206618 true)))

(declare-fun b!1890214 () Bool)

(declare-fun e!1206617 () Bool)

(assert (=> b!1890214 (= e!1206617 e!1206618)))

(declare-fun b!1890213 () Bool)

(declare-fun e!1206616 () Bool)

(assert (=> b!1890213 (= e!1206616 e!1206617)))

(assert (=> b!1889989 e!1206616))

(assert (= b!1890214 b!1890215))

(assert (= b!1890213 b!1890214))

(assert (= (and b!1889989 (is-Cons!21117 (t!175316 rules!4265))) b!1890213))

(assert (=> b!1890215 (< (dynLambda!10275 order!13353 (toValue!5338 (transformation!3733 (h!26518 (t!175316 rules!4265))))) (dynLambda!10276 order!13355 lambda!73908))))

(assert (=> b!1890215 (< (dynLambda!10277 order!13357 (toChars!5197 (transformation!3733 (h!26518 (t!175316 rules!4265))))) (dynLambda!10276 order!13355 lambda!73908))))

(declare-fun b!1890216 () Bool)

(declare-fun e!1206619 () Bool)

(declare-fun tp!539177 () Bool)

(assert (=> b!1890216 (= e!1206619 (and tp_is_empty!9047 tp!539177))))

(assert (=> b!1889979 (= tp!539066 e!1206619)))

(assert (= (and b!1889979 (is-Cons!21115 (originalCharacters!4540 (h!26519 ts2!17)))) b!1890216))

(declare-fun b!1890220 () Bool)

(declare-fun b_free!52617 () Bool)

(declare-fun b_next!53321 () Bool)

(assert (=> b!1890220 (= b_free!52617 (not b_next!53321))))

(declare-fun tp!539179 () Bool)

(declare-fun b_and!145479 () Bool)

(assert (=> b!1890220 (= tp!539179 b_and!145479)))

(declare-fun b_free!52619 () Bool)

(declare-fun b_next!53323 () Bool)

(assert (=> b!1890220 (= b_free!52619 (not b_next!53323))))

(declare-fun tb!114809 () Bool)

(declare-fun t!175359 () Bool)

(assert (=> (and b!1890220 (= (toChars!5197 (transformation!3733 (rule!5926 (h!26519 (t!175317 ts1!17))))) (toChars!5197 (transformation!3733 (rule!5926 (h!26519 ts2!17))))) t!175359) tb!114809))

(declare-fun result!138832 () Bool)

(assert (= result!138832 result!138788))

(assert (=> b!1890077 t!175359))

(declare-fun t!175361 () Bool)

(declare-fun tb!114811 () Bool)

(assert (=> (and b!1890220 (= (toChars!5197 (transformation!3733 (rule!5926 (h!26519 (t!175317 ts1!17))))) (toChars!5197 (transformation!3733 (rule!5926 (h!26519 ts1!17))))) t!175361) tb!114811))

(declare-fun result!138834 () Bool)

(assert (= result!138834 result!138810))

(assert (=> b!1890161 t!175361))

(declare-fun b_and!145481 () Bool)

(declare-fun tp!539181 () Bool)

(assert (=> b!1890220 (= tp!539181 (and (=> t!175359 result!138832) (=> t!175361 result!138834) b_and!145481))))

(declare-fun e!1206621 () Bool)

(declare-fun tp!539182 () Bool)

(declare-fun e!1206622 () Bool)

(declare-fun b!1890217 () Bool)

(assert (=> b!1890217 (= e!1206621 (and (inv!28160 (h!26519 (t!175317 ts1!17))) e!1206622 tp!539182))))

(assert (=> b!1889978 (= tp!539074 e!1206621)))

(declare-fun e!1206623 () Bool)

(declare-fun b!1890218 () Bool)

(declare-fun tp!539180 () Bool)

(assert (=> b!1890218 (= e!1206622 (and (inv!21 (value!117983 (h!26519 (t!175317 ts1!17)))) e!1206623 tp!539180))))

(declare-fun e!1206624 () Bool)

(assert (=> b!1890220 (= e!1206624 (and tp!539179 tp!539181))))

(declare-fun tp!539178 () Bool)

(declare-fun b!1890219 () Bool)

(assert (=> b!1890219 (= e!1206623 (and tp!539178 (inv!28156 (tag!4147 (rule!5926 (h!26519 (t!175317 ts1!17))))) (inv!28159 (transformation!3733 (rule!5926 (h!26519 (t!175317 ts1!17))))) e!1206624))))

(assert (= b!1890219 b!1890220))

(assert (= b!1890218 b!1890219))

(assert (= b!1890217 b!1890218))

(assert (= (and b!1889978 (is-Cons!21118 (t!175317 ts1!17))) b!1890217))

(declare-fun m!2320889 () Bool)

(assert (=> b!1890217 m!2320889))

(declare-fun m!2320891 () Bool)

(assert (=> b!1890218 m!2320891))

(declare-fun m!2320893 () Bool)

(assert (=> b!1890219 m!2320893))

(declare-fun m!2320895 () Bool)

(assert (=> b!1890219 m!2320895))

(declare-fun b!1890222 () Bool)

(declare-fun e!1206626 () Bool)

(declare-fun tp!539183 () Bool)

(declare-fun tp!539184 () Bool)

(assert (=> b!1890222 (= e!1206626 (and tp!539183 tp!539184))))

(declare-fun b!1890224 () Bool)

(declare-fun tp!539186 () Bool)

(declare-fun tp!539185 () Bool)

(assert (=> b!1890224 (= e!1206626 (and tp!539186 tp!539185))))

(declare-fun b!1890223 () Bool)

(declare-fun tp!539187 () Bool)

(assert (=> b!1890223 (= e!1206626 tp!539187)))

(declare-fun b!1890221 () Bool)

(assert (=> b!1890221 (= e!1206626 tp_is_empty!9047)))

(assert (=> b!1889967 (= tp!539075 e!1206626)))

(assert (= (and b!1889967 (is-ElementMatch!5158 (regex!3733 (rule!5926 (h!26519 ts1!17))))) b!1890221))

(assert (= (and b!1889967 (is-Concat!9027 (regex!3733 (rule!5926 (h!26519 ts1!17))))) b!1890222))

(assert (= (and b!1889967 (is-Star!5158 (regex!3733 (rule!5926 (h!26519 ts1!17))))) b!1890223))

(assert (= (and b!1889967 (is-Union!5158 (regex!3733 (rule!5926 (h!26519 ts1!17))))) b!1890224))

(declare-fun b_lambda!61981 () Bool)

(assert (= b_lambda!61979 (or (and b!1889980 b_free!52595 (= (toChars!5197 (transformation!3733 (rule!5926 (h!26519 ts2!17)))) (toChars!5197 (transformation!3733 (rule!5926 (h!26519 ts1!17)))))) (and b!1889970 b_free!52587 (= (toChars!5197 (transformation!3733 (h!26518 rules!4265))) (toChars!5197 (transformation!3733 (rule!5926 (h!26519 ts1!17)))))) (and b!1889969 b_free!52591) (and b!1890212 b_free!52615 (= (toChars!5197 (transformation!3733 (h!26518 (t!175316 rules!4265)))) (toChars!5197 (transformation!3733 (rule!5926 (h!26519 ts1!17)))))) (and b!1890220 b_free!52619 (= (toChars!5197 (transformation!3733 (rule!5926 (h!26519 (t!175317 ts1!17))))) (toChars!5197 (transformation!3733 (rule!5926 (h!26519 ts1!17)))))) (and b!1890197 b_free!52611 (= (toChars!5197 (transformation!3733 (rule!5926 (h!26519 (t!175317 ts2!17))))) (toChars!5197 (transformation!3733 (rule!5926 (h!26519 ts1!17)))))) b_lambda!61981)))

(declare-fun b_lambda!61983 () Bool)

(assert (= b_lambda!61973 (or (and b!1889980 b_free!52595) (and b!1890212 b_free!52615 (= (toChars!5197 (transformation!3733 (h!26518 (t!175316 rules!4265)))) (toChars!5197 (transformation!3733 (rule!5926 (h!26519 ts2!17)))))) (and b!1890220 b_free!52619 (= (toChars!5197 (transformation!3733 (rule!5926 (h!26519 (t!175317 ts1!17))))) (toChars!5197 (transformation!3733 (rule!5926 (h!26519 ts2!17)))))) (and b!1889969 b_free!52591 (= (toChars!5197 (transformation!3733 (rule!5926 (h!26519 ts1!17)))) (toChars!5197 (transformation!3733 (rule!5926 (h!26519 ts2!17)))))) (and b!1890197 b_free!52611 (= (toChars!5197 (transformation!3733 (rule!5926 (h!26519 (t!175317 ts2!17))))) (toChars!5197 (transformation!3733 (rule!5926 (h!26519 ts2!17)))))) (and b!1889970 b_free!52587 (= (toChars!5197 (transformation!3733 (h!26518 rules!4265))) (toChars!5197 (transformation!3733 (rule!5926 (h!26519 ts2!17)))))) b_lambda!61983)))

(push 1)

(assert (not b_next!53291))

(assert (not b!1890077))

(assert (not b!1890140))

(assert (not b!1890162))

(assert (not b!1890216))

(assert (not b!1890127))

(assert (not b!1890072))

(assert (not b!1890201))

(assert (not b!1890169))

(assert (not b!1890211))

(assert (not b!1890157))

(assert (not b!1890147))

(assert (not b!1890223))

(assert b_and!145431)

(assert (not d!578696))

(assert (not b!1890183))

(assert (not b!1890126))

(assert (not d!578694))

(assert b_and!145475)

(assert (not b!1890159))

(assert (not d!578698))

(assert (not d!578724))

(assert b_and!145469)

(assert (not b!1890067))

(assert (not b!1890158))

(assert (not b!1890224))

(assert (not b!1890125))

(assert b_and!145481)

(assert (not tb!114777))

(assert (not b_next!53297))

(assert (not b!1890182))

(assert (not b_next!53293))

(assert (not b_next!53295))

(assert (not b_next!53323))

(assert (not b!1890194))

(assert (not b!1890153))

(assert (not b!1890163))

(assert b_and!145427)

(assert (not d!578714))

(assert (not b!1890142))

(assert (not b!1890219))

(assert (not d!578726))

(assert (not d!578722))

(assert (not b_next!53317))

(assert (not b!1890139))

(assert (not b!1890148))

(assert b_and!145467)

(assert (not tb!114795))

(assert (not d!578736))

(assert (not b_lambda!61981))

(assert (not b!1890213))

(assert (not b!1890199))

(assert b_and!145465)

(assert b_and!145479)

(assert (not b_next!53321))

(assert (not b!1890068))

(assert (not b_next!53313))

(assert (not b!1890151))

(assert b_and!145473)

(assert (not b!1890083))

(assert (not b!1890066))

(assert (not b!1890181))

(assert (not b_next!53315))

(assert (not b!1890210))

(assert (not b!1890218))

(assert (not b!1890161))

(assert (not b!1890200))

(assert (not b!1890195))

(assert (not b!1890164))

(assert b_and!145471)

(assert (not b_next!53289))

(assert (not b!1890145))

(assert (not b_next!53319))

(assert (not b!1890196))

(assert b_and!145423)

(assert (not b_lambda!61983))

(assert b_and!145477)

(assert (not b_next!53299))

(assert (not d!578720))

(assert (not b!1890152))

(assert (not b!1890146))

(assert (not b!1890217))

(assert (not b!1890222))

(assert tp_is_empty!9047)

(assert (not d!578732))

(assert (not b!1890078))

(assert (not d!578716))

(check-sat)

(pop 1)

(push 1)

(assert b_and!145431)

(assert b_and!145475)

(assert (not b_next!53297))

(assert (not b_next!53291))

(assert b_and!145427)

(assert (not b_next!53317))

(assert b_and!145467)

(assert (not b_next!53313))

(assert b_and!145473)

(assert (not b_next!53315))

(assert b_and!145469)

(assert b_and!145481)

(assert (not b_next!53293))

(assert (not b_next!53295))

(assert (not b_next!53323))

(assert b_and!145465)

(assert b_and!145479)

(assert (not b_next!53321))

(assert b_and!145471)

(assert (not b_next!53289))

(assert (not b_next!53319))

(assert b_and!145423)

(assert b_and!145477)

(assert (not b_next!53299))

(check-sat)

(pop 1)

