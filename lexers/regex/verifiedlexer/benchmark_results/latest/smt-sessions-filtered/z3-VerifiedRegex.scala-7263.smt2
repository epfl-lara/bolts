; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!387312 () Bool)

(assert start!387312)

(declare-fun b!4092204 () Bool)

(declare-fun b_free!114409 () Bool)

(declare-fun b_next!115113 () Bool)

(assert (=> b!4092204 (= b_free!114409 (not b_next!115113))))

(declare-fun tp!1238783 () Bool)

(declare-fun b_and!315451 () Bool)

(assert (=> b!4092204 (= tp!1238783 b_and!315451)))

(declare-fun b_free!114411 () Bool)

(declare-fun b_next!115115 () Bool)

(assert (=> b!4092204 (= b_free!114411 (not b_next!115115))))

(declare-fun tp!1238788 () Bool)

(declare-fun b_and!315453 () Bool)

(assert (=> b!4092204 (= tp!1238788 b_and!315453)))

(declare-fun b!4092205 () Bool)

(declare-fun b_free!114413 () Bool)

(declare-fun b_next!115117 () Bool)

(assert (=> b!4092205 (= b_free!114413 (not b_next!115117))))

(declare-fun tp!1238787 () Bool)

(declare-fun b_and!315455 () Bool)

(assert (=> b!4092205 (= tp!1238787 b_and!315455)))

(declare-fun b_free!114415 () Bool)

(declare-fun b_next!115119 () Bool)

(assert (=> b!4092205 (= b_free!114415 (not b_next!115119))))

(declare-fun tp!1238789 () Bool)

(declare-fun b_and!315457 () Bool)

(assert (=> b!4092205 (= tp!1238789 b_and!315457)))

(declare-fun b!4092188 () Bool)

(declare-fun e!2539595 () Bool)

(declare-fun e!2539586 () Bool)

(assert (=> b!4092188 (= e!2539595 (not e!2539586))))

(declare-fun res!1672577 () Bool)

(assert (=> b!4092188 (=> res!1672577 e!2539586)))

(declare-datatypes ((List!44003 0))(
  ( (Nil!43879) (Cons!43879 (h!49299 (_ BitVec 16)) (t!338858 List!44003)) )
))
(declare-datatypes ((TokenValue!7328 0))(
  ( (FloatLiteralValue!14656 (text!51741 List!44003)) (TokenValueExt!7327 (__x!26873 Int)) (Broken!36640 (value!222919 List!44003)) (Object!7451) (End!7328) (Def!7328) (Underscore!7328) (Match!7328) (Else!7328) (Error!7328) (Case!7328) (If!7328) (Extends!7328) (Abstract!7328) (Class!7328) (Val!7328) (DelimiterValue!14656 (del!7388 List!44003)) (KeywordValue!7334 (value!222920 List!44003)) (CommentValue!14656 (value!222921 List!44003)) (WhitespaceValue!14656 (value!222922 List!44003)) (IndentationValue!7328 (value!222923 List!44003)) (String!50389) (Int32!7328) (Broken!36641 (value!222924 List!44003)) (Boolean!7329) (Unit!63408) (OperatorValue!7331 (op!7388 List!44003)) (IdentifierValue!14656 (value!222925 List!44003)) (IdentifierValue!14657 (value!222926 List!44003)) (WhitespaceValue!14657 (value!222927 List!44003)) (True!14656) (False!14656) (Broken!36642 (value!222928 List!44003)) (Broken!36643 (value!222929 List!44003)) (True!14657) (RightBrace!7328) (RightBracket!7328) (Colon!7328) (Null!7328) (Comma!7328) (LeftBracket!7328) (False!14657) (LeftBrace!7328) (ImaginaryLiteralValue!7328 (text!51742 List!44003)) (StringLiteralValue!21984 (value!222930 List!44003)) (EOFValue!7328 (value!222931 List!44003)) (IdentValue!7328 (value!222932 List!44003)) (DelimiterValue!14657 (value!222933 List!44003)) (DedentValue!7328 (value!222934 List!44003)) (NewLineValue!7328 (value!222935 List!44003)) (IntegerValue!21984 (value!222936 (_ BitVec 32)) (text!51743 List!44003)) (IntegerValue!21985 (value!222937 Int) (text!51744 List!44003)) (Times!7328) (Or!7328) (Equal!7328) (Minus!7328) (Broken!36644 (value!222938 List!44003)) (And!7328) (Div!7328) (LessEqual!7328) (Mod!7328) (Concat!19331) (Not!7328) (Plus!7328) (SpaceValue!7328 (value!222939 List!44003)) (IntegerValue!21986 (value!222940 Int) (text!51745 List!44003)) (StringLiteralValue!21985 (text!51746 List!44003)) (FloatLiteralValue!14657 (text!51747 List!44003)) (BytesLiteralValue!7328 (value!222941 List!44003)) (CommentValue!14657 (value!222942 List!44003)) (StringLiteralValue!21986 (value!222943 List!44003)) (ErrorTokenValue!7328 (msg!7389 List!44003)) )
))
(declare-datatypes ((C!24192 0))(
  ( (C!24193 (val!14206 Int)) )
))
(declare-datatypes ((Regex!12003 0))(
  ( (ElementMatch!12003 (c!705274 C!24192)) (Concat!19332 (regOne!24518 Regex!12003) (regTwo!24518 Regex!12003)) (EmptyExpr!12003) (Star!12003 (reg!12332 Regex!12003)) (EmptyLang!12003) (Union!12003 (regOne!24519 Regex!12003) (regTwo!24519 Regex!12003)) )
))
(declare-datatypes ((String!50390 0))(
  ( (String!50391 (value!222944 String)) )
))
(declare-datatypes ((List!44004 0))(
  ( (Nil!43880) (Cons!43880 (h!49300 C!24192) (t!338859 List!44004)) )
))
(declare-datatypes ((IArray!26623 0))(
  ( (IArray!26624 (innerList!13369 List!44004)) )
))
(declare-datatypes ((Conc!13309 0))(
  ( (Node!13309 (left!32984 Conc!13309) (right!33314 Conc!13309) (csize!26848 Int) (cheight!13520 Int)) (Leaf!20573 (xs!16615 IArray!26623) (csize!26849 Int)) (Empty!13309) )
))
(declare-datatypes ((BalanceConc!26212 0))(
  ( (BalanceConc!26213 (c!705275 Conc!13309)) )
))
(declare-datatypes ((TokenValueInjection!14084 0))(
  ( (TokenValueInjection!14085 (toValue!9690 Int) (toChars!9549 Int)) )
))
(declare-datatypes ((Rule!13996 0))(
  ( (Rule!13997 (regex!7098 Regex!12003) (tag!7958 String!50390) (isSeparator!7098 Bool) (transformation!7098 TokenValueInjection!14084)) )
))
(declare-fun r!4213 () Rule!13996)

(declare-fun p!2988 () List!44004)

(declare-fun matchR!5944 (Regex!12003 List!44004) Bool)

(assert (=> b!4092188 (= res!1672577 (not (matchR!5944 (regex!7098 r!4213) p!2988)))))

(declare-datatypes ((LexerInterface!6687 0))(
  ( (LexerInterfaceExt!6684 (__x!26874 Int)) (Lexer!6685) )
))
(declare-fun thiss!26199 () LexerInterface!6687)

(declare-fun ruleValid!3018 (LexerInterface!6687 Rule!13996) Bool)

(assert (=> b!4092188 (ruleValid!3018 thiss!26199 r!4213)))

(declare-datatypes ((Unit!63409 0))(
  ( (Unit!63410) )
))
(declare-fun lt!1463659 () Unit!63409)

(declare-datatypes ((List!44005 0))(
  ( (Nil!43881) (Cons!43881 (h!49301 Rule!13996) (t!338860 List!44005)) )
))
(declare-fun rules!3870 () List!44005)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2084 (LexerInterface!6687 Rule!13996 List!44005) Unit!63409)

(assert (=> b!4092188 (= lt!1463659 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2084 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4092189 () Bool)

(declare-fun res!1672583 () Bool)

(declare-fun e!2539591 () Bool)

(assert (=> b!4092189 (=> (not res!1672583) (not e!2539591))))

(declare-fun isEmpty!26247 (List!44004) Bool)

(assert (=> b!4092189 (= res!1672583 (not (isEmpty!26247 p!2988)))))

(declare-fun b!4092190 () Bool)

(declare-fun e!2539590 () Bool)

(declare-datatypes ((Token!13322 0))(
  ( (Token!13323 (value!222945 TokenValue!7328) (rule!10242 Rule!13996) (size!32778 Int) (originalCharacters!7692 List!44004)) )
))
(declare-fun lt!1463654 () Token!13322)

(declare-fun inv!58591 (Token!13322) Bool)

(assert (=> b!4092190 (= e!2539590 (inv!58591 lt!1463654))))

(declare-fun b!4092191 () Bool)

(declare-fun e!2539597 () Bool)

(declare-fun tp_is_empty!21009 () Bool)

(declare-fun tp!1238784 () Bool)

(assert (=> b!4092191 (= e!2539597 (and tp_is_empty!21009 tp!1238784))))

(declare-fun b!4092192 () Bool)

(declare-fun res!1672579 () Bool)

(assert (=> b!4092192 (=> (not res!1672579) (not e!2539591))))

(declare-fun isEmpty!26248 (List!44005) Bool)

(assert (=> b!4092192 (= res!1672579 (not (isEmpty!26248 rules!3870)))))

(declare-fun b!4092193 () Bool)

(declare-fun res!1672584 () Bool)

(assert (=> b!4092193 (=> res!1672584 e!2539586)))

(get-info :version)

(assert (=> b!4092193 (= res!1672584 (or (and ((_ is Cons!43881) rules!3870) (= (h!49301 rules!3870) r!4213)) (not ((_ is Cons!43881) rules!3870)) (= (h!49301 rules!3870) r!4213)))))

(declare-fun res!1672581 () Bool)

(assert (=> start!387312 (=> (not res!1672581) (not e!2539591))))

(assert (=> start!387312 (= res!1672581 ((_ is Lexer!6685) thiss!26199))))

(assert (=> start!387312 e!2539591))

(assert (=> start!387312 true))

(declare-fun e!2539594 () Bool)

(assert (=> start!387312 e!2539594))

(declare-fun e!2539589 () Bool)

(assert (=> start!387312 e!2539589))

(declare-fun e!2539593 () Bool)

(assert (=> start!387312 e!2539593))

(assert (=> start!387312 e!2539597))

(declare-fun e!2539598 () Bool)

(assert (=> start!387312 e!2539598))

(declare-fun e!2539592 () Bool)

(declare-fun tp!1238790 () Bool)

(declare-fun b!4092194 () Bool)

(declare-fun inv!58588 (String!50390) Bool)

(declare-fun inv!58592 (TokenValueInjection!14084) Bool)

(assert (=> b!4092194 (= e!2539598 (and tp!1238790 (inv!58588 (tag!7958 r!4213)) (inv!58592 (transformation!7098 r!4213)) e!2539592))))

(declare-fun e!2539599 () Bool)

(declare-fun e!2539588 () Bool)

(declare-fun b!4092195 () Bool)

(declare-fun tp!1238791 () Bool)

(assert (=> b!4092195 (= e!2539588 (and tp!1238791 (inv!58588 (tag!7958 (h!49301 rules!3870))) (inv!58592 (transformation!7098 (h!49301 rules!3870))) e!2539599))))

(declare-fun b!4092196 () Bool)

(declare-fun e!2539587 () Bool)

(assert (=> b!4092196 (= e!2539587 e!2539590)))

(declare-fun res!1672575 () Bool)

(assert (=> b!4092196 (=> res!1672575 e!2539590)))

(declare-datatypes ((tuple2!42812 0))(
  ( (tuple2!42813 (_1!24540 Token!13322) (_2!24540 List!44004)) )
))
(declare-fun lt!1463653 () tuple2!42812)

(assert (=> b!4092196 (= res!1672575 (or (not (= (rule!10242 (_1!24540 lt!1463653)) (h!49301 rules!3870))) (= (rule!10242 (_1!24540 lt!1463653)) r!4213)))))

(declare-datatypes ((Option!9504 0))(
  ( (None!9503) (Some!9503 (v!39993 tuple2!42812)) )
))
(declare-fun lt!1463655 () Option!9504)

(declare-fun get!14391 (Option!9504) tuple2!42812)

(assert (=> b!4092196 (= lt!1463653 (get!14391 lt!1463655))))

(declare-fun b!4092197 () Bool)

(declare-fun res!1672585 () Bool)

(assert (=> b!4092197 (=> (not res!1672585) (not e!2539591))))

(declare-fun rulesInvariant!6030 (LexerInterface!6687 List!44005) Bool)

(assert (=> b!4092197 (= res!1672585 (rulesInvariant!6030 thiss!26199 rules!3870))))

(declare-fun b!4092198 () Bool)

(declare-fun tp!1238792 () Bool)

(assert (=> b!4092198 (= e!2539593 (and tp_is_empty!21009 tp!1238792))))

(declare-fun b!4092199 () Bool)

(assert (=> b!4092199 (= e!2539586 e!2539587)))

(declare-fun res!1672582 () Bool)

(assert (=> b!4092199 (=> res!1672582 e!2539587)))

(declare-fun isEmpty!26249 (Option!9504) Bool)

(assert (=> b!4092199 (= res!1672582 (isEmpty!26249 lt!1463655))))

(declare-fun input!3411 () List!44004)

(declare-fun maxPrefixOneRule!2959 (LexerInterface!6687 Rule!13996 List!44004) Option!9504)

(assert (=> b!4092199 (= lt!1463655 (maxPrefixOneRule!2959 thiss!26199 (h!49301 rules!3870) input!3411))))

(assert (=> b!4092199 (rulesInvariant!6030 thiss!26199 (t!338860 rules!3870))))

(declare-fun lt!1463656 () Unit!63409)

(declare-fun lemmaInvariantOnRulesThenOnTail!800 (LexerInterface!6687 Rule!13996 List!44005) Unit!63409)

(assert (=> b!4092199 (= lt!1463656 (lemmaInvariantOnRulesThenOnTail!800 thiss!26199 (h!49301 rules!3870) (t!338860 rules!3870)))))

(declare-fun b!4092200 () Bool)

(declare-fun tp!1238785 () Bool)

(assert (=> b!4092200 (= e!2539594 (and tp_is_empty!21009 tp!1238785))))

(declare-fun b!4092201 () Bool)

(declare-fun res!1672580 () Bool)

(assert (=> b!4092201 (=> (not res!1672580) (not e!2539591))))

(declare-fun contains!8779 (List!44005 Rule!13996) Bool)

(assert (=> b!4092201 (= res!1672580 (contains!8779 rules!3870 r!4213))))

(declare-fun b!4092202 () Bool)

(assert (=> b!4092202 (= e!2539591 e!2539595)))

(declare-fun res!1672576 () Bool)

(assert (=> b!4092202 (=> (not res!1672576) (not e!2539595))))

(declare-fun suffix!1518 () List!44004)

(declare-fun maxPrefix!3977 (LexerInterface!6687 List!44005 List!44004) Option!9504)

(assert (=> b!4092202 (= res!1672576 (= (maxPrefix!3977 thiss!26199 rules!3870 input!3411) (Some!9503 (tuple2!42813 lt!1463654 suffix!1518))))))

(declare-fun lt!1463658 () BalanceConc!26212)

(declare-fun apply!10281 (TokenValueInjection!14084 BalanceConc!26212) TokenValue!7328)

(declare-fun size!32779 (List!44004) Int)

(assert (=> b!4092202 (= lt!1463654 (Token!13323 (apply!10281 (transformation!7098 r!4213) lt!1463658) r!4213 (size!32779 p!2988) p!2988))))

(declare-fun lt!1463657 () Unit!63409)

(declare-fun lemmaSemiInverse!2065 (TokenValueInjection!14084 BalanceConc!26212) Unit!63409)

(assert (=> b!4092202 (= lt!1463657 (lemmaSemiInverse!2065 (transformation!7098 r!4213) lt!1463658))))

(declare-fun seqFromList!5315 (List!44004) BalanceConc!26212)

(assert (=> b!4092202 (= lt!1463658 (seqFromList!5315 p!2988))))

(declare-fun b!4092203 () Bool)

(declare-fun tp!1238786 () Bool)

(assert (=> b!4092203 (= e!2539589 (and e!2539588 tp!1238786))))

(assert (=> b!4092204 (= e!2539592 (and tp!1238783 tp!1238788))))

(assert (=> b!4092205 (= e!2539599 (and tp!1238787 tp!1238789))))

(declare-fun b!4092206 () Bool)

(declare-fun res!1672578 () Bool)

(assert (=> b!4092206 (=> (not res!1672578) (not e!2539591))))

(declare-fun ++!11504 (List!44004 List!44004) List!44004)

(assert (=> b!4092206 (= res!1672578 (= input!3411 (++!11504 p!2988 suffix!1518)))))

(assert (= (and start!387312 res!1672581) b!4092192))

(assert (= (and b!4092192 res!1672579) b!4092197))

(assert (= (and b!4092197 res!1672585) b!4092201))

(assert (= (and b!4092201 res!1672580) b!4092206))

(assert (= (and b!4092206 res!1672578) b!4092189))

(assert (= (and b!4092189 res!1672583) b!4092202))

(assert (= (and b!4092202 res!1672576) b!4092188))

(assert (= (and b!4092188 (not res!1672577)) b!4092193))

(assert (= (and b!4092193 (not res!1672584)) b!4092199))

(assert (= (and b!4092199 (not res!1672582)) b!4092196))

(assert (= (and b!4092196 (not res!1672575)) b!4092190))

(assert (= (and start!387312 ((_ is Cons!43880) suffix!1518)) b!4092200))

(assert (= b!4092195 b!4092205))

(assert (= b!4092203 b!4092195))

(assert (= (and start!387312 ((_ is Cons!43881) rules!3870)) b!4092203))

(assert (= (and start!387312 ((_ is Cons!43880) p!2988)) b!4092198))

(assert (= (and start!387312 ((_ is Cons!43880) input!3411)) b!4092191))

(assert (= b!4092194 b!4092204))

(assert (= start!387312 b!4092194))

(declare-fun m!4699235 () Bool)

(assert (=> b!4092190 m!4699235))

(declare-fun m!4699237 () Bool)

(assert (=> b!4092189 m!4699237))

(declare-fun m!4699239 () Bool)

(assert (=> b!4092192 m!4699239))

(declare-fun m!4699241 () Bool)

(assert (=> b!4092202 m!4699241))

(declare-fun m!4699243 () Bool)

(assert (=> b!4092202 m!4699243))

(declare-fun m!4699245 () Bool)

(assert (=> b!4092202 m!4699245))

(declare-fun m!4699247 () Bool)

(assert (=> b!4092202 m!4699247))

(declare-fun m!4699249 () Bool)

(assert (=> b!4092202 m!4699249))

(declare-fun m!4699251 () Bool)

(assert (=> b!4092201 m!4699251))

(declare-fun m!4699253 () Bool)

(assert (=> b!4092199 m!4699253))

(declare-fun m!4699255 () Bool)

(assert (=> b!4092199 m!4699255))

(declare-fun m!4699257 () Bool)

(assert (=> b!4092199 m!4699257))

(declare-fun m!4699259 () Bool)

(assert (=> b!4092199 m!4699259))

(declare-fun m!4699261 () Bool)

(assert (=> b!4092188 m!4699261))

(declare-fun m!4699263 () Bool)

(assert (=> b!4092188 m!4699263))

(declare-fun m!4699265 () Bool)

(assert (=> b!4092188 m!4699265))

(declare-fun m!4699267 () Bool)

(assert (=> b!4092197 m!4699267))

(declare-fun m!4699269 () Bool)

(assert (=> b!4092195 m!4699269))

(declare-fun m!4699271 () Bool)

(assert (=> b!4092195 m!4699271))

(declare-fun m!4699273 () Bool)

(assert (=> b!4092206 m!4699273))

(declare-fun m!4699275 () Bool)

(assert (=> b!4092196 m!4699275))

(declare-fun m!4699277 () Bool)

(assert (=> b!4092194 m!4699277))

(declare-fun m!4699279 () Bool)

(assert (=> b!4092194 m!4699279))

(check-sat (not b!4092197) (not b!4092200) (not b!4092189) (not b!4092201) (not b_next!115119) b_and!315455 (not b!4092203) (not b!4092192) b_and!315453 (not b!4092196) (not b!4092188) (not b!4092190) (not b!4092198) (not b!4092195) (not b_next!115117) (not b_next!115113) (not b!4092191) (not b!4092194) b_and!315457 (not b_next!115115) (not b!4092202) (not b!4092199) b_and!315451 tp_is_empty!21009 (not b!4092206))
(check-sat (not b_next!115119) b_and!315455 b_and!315457 (not b_next!115115) b_and!315453 b_and!315451 (not b_next!115117) (not b_next!115113))
(get-model)

(declare-fun d!1215042 () Bool)

(declare-fun dynLambda!18790 (Int BalanceConc!26212) TokenValue!7328)

(assert (=> d!1215042 (= (apply!10281 (transformation!7098 r!4213) lt!1463658) (dynLambda!18790 (toValue!9690 (transformation!7098 r!4213)) lt!1463658))))

(declare-fun b_lambda!120015 () Bool)

(assert (=> (not b_lambda!120015) (not d!1215042)))

(declare-fun t!338862 () Bool)

(declare-fun tb!246081 () Bool)

(assert (=> (and b!4092204 (= (toValue!9690 (transformation!7098 r!4213)) (toValue!9690 (transformation!7098 r!4213))) t!338862) tb!246081))

(declare-fun result!298594 () Bool)

(declare-fun inv!21 (TokenValue!7328) Bool)

(assert (=> tb!246081 (= result!298594 (inv!21 (dynLambda!18790 (toValue!9690 (transformation!7098 r!4213)) lt!1463658)))))

(declare-fun m!4699281 () Bool)

(assert (=> tb!246081 m!4699281))

(assert (=> d!1215042 t!338862))

(declare-fun b_and!315459 () Bool)

(assert (= b_and!315451 (and (=> t!338862 result!298594) b_and!315459)))

(declare-fun tb!246083 () Bool)

(declare-fun t!338864 () Bool)

(assert (=> (and b!4092205 (= (toValue!9690 (transformation!7098 (h!49301 rules!3870))) (toValue!9690 (transformation!7098 r!4213))) t!338864) tb!246083))

(declare-fun result!298598 () Bool)

(assert (= result!298598 result!298594))

(assert (=> d!1215042 t!338864))

(declare-fun b_and!315461 () Bool)

(assert (= b_and!315455 (and (=> t!338864 result!298598) b_and!315461)))

(declare-fun m!4699283 () Bool)

(assert (=> d!1215042 m!4699283))

(assert (=> b!4092202 d!1215042))

(declare-fun call!289233 () Option!9504)

(declare-fun bm!289228 () Bool)

(assert (=> bm!289228 (= call!289233 (maxPrefixOneRule!2959 thiss!26199 (h!49301 rules!3870) input!3411))))

(declare-fun b!4092249 () Bool)

(declare-fun e!2539628 () Bool)

(declare-fun e!2539627 () Bool)

(assert (=> b!4092249 (= e!2539628 e!2539627)))

(declare-fun res!1672629 () Bool)

(assert (=> b!4092249 (=> (not res!1672629) (not e!2539627))))

(declare-fun lt!1463678 () Option!9504)

(declare-fun isDefined!7194 (Option!9504) Bool)

(assert (=> b!4092249 (= res!1672629 (isDefined!7194 lt!1463678))))

(declare-fun b!4092250 () Bool)

(declare-fun e!2539626 () Option!9504)

(declare-fun lt!1463681 () Option!9504)

(declare-fun lt!1463680 () Option!9504)

(assert (=> b!4092250 (= e!2539626 (ite (and ((_ is None!9503) lt!1463681) ((_ is None!9503) lt!1463680)) None!9503 (ite ((_ is None!9503) lt!1463680) lt!1463681 (ite ((_ is None!9503) lt!1463681) lt!1463680 (ite (>= (size!32778 (_1!24540 (v!39993 lt!1463681))) (size!32778 (_1!24540 (v!39993 lt!1463680)))) lt!1463681 lt!1463680)))))))

(assert (=> b!4092250 (= lt!1463681 call!289233)))

(assert (=> b!4092250 (= lt!1463680 (maxPrefix!3977 thiss!26199 (t!338860 rules!3870) input!3411))))

(declare-fun b!4092251 () Bool)

(declare-fun res!1672627 () Bool)

(assert (=> b!4092251 (=> (not res!1672627) (not e!2539627))))

(declare-fun list!16288 (BalanceConc!26212) List!44004)

(declare-fun charsOf!4858 (Token!13322) BalanceConc!26212)

(assert (=> b!4092251 (= res!1672627 (matchR!5944 (regex!7098 (rule!10242 (_1!24540 (get!14391 lt!1463678)))) (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463678))))))))

(declare-fun b!4092253 () Bool)

(declare-fun res!1672624 () Bool)

(assert (=> b!4092253 (=> (not res!1672624) (not e!2539627))))

(assert (=> b!4092253 (= res!1672624 (= (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463678)))) (originalCharacters!7692 (_1!24540 (get!14391 lt!1463678)))))))

(declare-fun b!4092254 () Bool)

(declare-fun res!1672628 () Bool)

(assert (=> b!4092254 (=> (not res!1672628) (not e!2539627))))

(assert (=> b!4092254 (= res!1672628 (= (++!11504 (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463678)))) (_2!24540 (get!14391 lt!1463678))) input!3411))))

(declare-fun b!4092255 () Bool)

(declare-fun res!1672625 () Bool)

(assert (=> b!4092255 (=> (not res!1672625) (not e!2539627))))

(assert (=> b!4092255 (= res!1672625 (= (value!222945 (_1!24540 (get!14391 lt!1463678))) (apply!10281 (transformation!7098 (rule!10242 (_1!24540 (get!14391 lt!1463678)))) (seqFromList!5315 (originalCharacters!7692 (_1!24540 (get!14391 lt!1463678)))))))))

(declare-fun b!4092252 () Bool)

(assert (=> b!4092252 (= e!2539627 (contains!8779 rules!3870 (rule!10242 (_1!24540 (get!14391 lt!1463678)))))))

(declare-fun d!1215044 () Bool)

(assert (=> d!1215044 e!2539628))

(declare-fun res!1672623 () Bool)

(assert (=> d!1215044 (=> res!1672623 e!2539628)))

(assert (=> d!1215044 (= res!1672623 (isEmpty!26249 lt!1463678))))

(assert (=> d!1215044 (= lt!1463678 e!2539626)))

(declare-fun c!705282 () Bool)

(assert (=> d!1215044 (= c!705282 (and ((_ is Cons!43881) rules!3870) ((_ is Nil!43881) (t!338860 rules!3870))))))

(declare-fun lt!1463682 () Unit!63409)

(declare-fun lt!1463679 () Unit!63409)

(assert (=> d!1215044 (= lt!1463682 lt!1463679)))

(declare-fun isPrefix!4145 (List!44004 List!44004) Bool)

(assert (=> d!1215044 (isPrefix!4145 input!3411 input!3411)))

(declare-fun lemmaIsPrefixRefl!2696 (List!44004 List!44004) Unit!63409)

(assert (=> d!1215044 (= lt!1463679 (lemmaIsPrefixRefl!2696 input!3411 input!3411))))

(declare-fun rulesValidInductive!2627 (LexerInterface!6687 List!44005) Bool)

(assert (=> d!1215044 (rulesValidInductive!2627 thiss!26199 rules!3870)))

(assert (=> d!1215044 (= (maxPrefix!3977 thiss!26199 rules!3870 input!3411) lt!1463678)))

(declare-fun b!4092256 () Bool)

(assert (=> b!4092256 (= e!2539626 call!289233)))

(declare-fun b!4092257 () Bool)

(declare-fun res!1672626 () Bool)

(assert (=> b!4092257 (=> (not res!1672626) (not e!2539627))))

(assert (=> b!4092257 (= res!1672626 (< (size!32779 (_2!24540 (get!14391 lt!1463678))) (size!32779 input!3411)))))

(assert (= (and d!1215044 c!705282) b!4092256))

(assert (= (and d!1215044 (not c!705282)) b!4092250))

(assert (= (or b!4092256 b!4092250) bm!289228))

(assert (= (and d!1215044 (not res!1672623)) b!4092249))

(assert (= (and b!4092249 res!1672629) b!4092253))

(assert (= (and b!4092253 res!1672624) b!4092257))

(assert (= (and b!4092257 res!1672626) b!4092254))

(assert (= (and b!4092254 res!1672628) b!4092255))

(assert (= (and b!4092255 res!1672625) b!4092251))

(assert (= (and b!4092251 res!1672627) b!4092252))

(declare-fun m!4699311 () Bool)

(assert (=> b!4092251 m!4699311))

(declare-fun m!4699313 () Bool)

(assert (=> b!4092251 m!4699313))

(assert (=> b!4092251 m!4699313))

(declare-fun m!4699315 () Bool)

(assert (=> b!4092251 m!4699315))

(assert (=> b!4092251 m!4699315))

(declare-fun m!4699317 () Bool)

(assert (=> b!4092251 m!4699317))

(declare-fun m!4699319 () Bool)

(assert (=> d!1215044 m!4699319))

(declare-fun m!4699321 () Bool)

(assert (=> d!1215044 m!4699321))

(declare-fun m!4699323 () Bool)

(assert (=> d!1215044 m!4699323))

(declare-fun m!4699325 () Bool)

(assert (=> d!1215044 m!4699325))

(assert (=> b!4092254 m!4699311))

(assert (=> b!4092254 m!4699313))

(assert (=> b!4092254 m!4699313))

(assert (=> b!4092254 m!4699315))

(assert (=> b!4092254 m!4699315))

(declare-fun m!4699327 () Bool)

(assert (=> b!4092254 m!4699327))

(assert (=> b!4092252 m!4699311))

(declare-fun m!4699329 () Bool)

(assert (=> b!4092252 m!4699329))

(assert (=> b!4092255 m!4699311))

(declare-fun m!4699331 () Bool)

(assert (=> b!4092255 m!4699331))

(assert (=> b!4092255 m!4699331))

(declare-fun m!4699333 () Bool)

(assert (=> b!4092255 m!4699333))

(assert (=> b!4092253 m!4699311))

(assert (=> b!4092253 m!4699313))

(assert (=> b!4092253 m!4699313))

(assert (=> b!4092253 m!4699315))

(declare-fun m!4699335 () Bool)

(assert (=> b!4092250 m!4699335))

(declare-fun m!4699337 () Bool)

(assert (=> b!4092249 m!4699337))

(assert (=> bm!289228 m!4699255))

(assert (=> b!4092257 m!4699311))

(declare-fun m!4699339 () Bool)

(assert (=> b!4092257 m!4699339))

(declare-fun m!4699341 () Bool)

(assert (=> b!4092257 m!4699341))

(assert (=> b!4092202 d!1215044))

(declare-fun d!1215064 () Bool)

(declare-fun lt!1463685 () Int)

(assert (=> d!1215064 (>= lt!1463685 0)))

(declare-fun e!2539631 () Int)

(assert (=> d!1215064 (= lt!1463685 e!2539631)))

(declare-fun c!705285 () Bool)

(assert (=> d!1215064 (= c!705285 ((_ is Nil!43880) p!2988))))

(assert (=> d!1215064 (= (size!32779 p!2988) lt!1463685)))

(declare-fun b!4092262 () Bool)

(assert (=> b!4092262 (= e!2539631 0)))

(declare-fun b!4092263 () Bool)

(assert (=> b!4092263 (= e!2539631 (+ 1 (size!32779 (t!338859 p!2988))))))

(assert (= (and d!1215064 c!705285) b!4092262))

(assert (= (and d!1215064 (not c!705285)) b!4092263))

(declare-fun m!4699343 () Bool)

(assert (=> b!4092263 m!4699343))

(assert (=> b!4092202 d!1215064))

(declare-fun d!1215066 () Bool)

(declare-fun fromListB!2438 (List!44004) BalanceConc!26212)

(assert (=> d!1215066 (= (seqFromList!5315 p!2988) (fromListB!2438 p!2988))))

(declare-fun bs!593379 () Bool)

(assert (= bs!593379 d!1215066))

(declare-fun m!4699345 () Bool)

(assert (=> bs!593379 m!4699345))

(assert (=> b!4092202 d!1215066))

(declare-fun b!4092344 () Bool)

(declare-fun e!2539671 () Bool)

(assert (=> b!4092344 (= e!2539671 true)))

(declare-fun d!1215068 () Bool)

(assert (=> d!1215068 e!2539671))

(assert (= d!1215068 b!4092344))

(declare-fun lambda!128043 () Int)

(declare-fun order!23095 () Int)

(declare-fun order!23093 () Int)

(declare-fun dynLambda!18791 (Int Int) Int)

(declare-fun dynLambda!18792 (Int Int) Int)

(assert (=> b!4092344 (< (dynLambda!18791 order!23093 (toValue!9690 (transformation!7098 r!4213))) (dynLambda!18792 order!23095 lambda!128043))))

(declare-fun order!23097 () Int)

(declare-fun dynLambda!18793 (Int Int) Int)

(assert (=> b!4092344 (< (dynLambda!18793 order!23097 (toChars!9549 (transformation!7098 r!4213))) (dynLambda!18792 order!23095 lambda!128043))))

(declare-fun dynLambda!18794 (Int TokenValue!7328) BalanceConc!26212)

(assert (=> d!1215068 (= (list!16288 (dynLambda!18794 (toChars!9549 (transformation!7098 r!4213)) (dynLambda!18790 (toValue!9690 (transformation!7098 r!4213)) lt!1463658))) (list!16288 lt!1463658))))

(declare-fun lt!1463725 () Unit!63409)

(declare-fun ForallOf!891 (Int BalanceConc!26212) Unit!63409)

(assert (=> d!1215068 (= lt!1463725 (ForallOf!891 lambda!128043 lt!1463658))))

(assert (=> d!1215068 (= (lemmaSemiInverse!2065 (transformation!7098 r!4213) lt!1463658) lt!1463725)))

(declare-fun b_lambda!120023 () Bool)

(assert (=> (not b_lambda!120023) (not d!1215068)))

(declare-fun t!338874 () Bool)

(declare-fun tb!246093 () Bool)

(assert (=> (and b!4092204 (= (toChars!9549 (transformation!7098 r!4213)) (toChars!9549 (transformation!7098 r!4213))) t!338874) tb!246093))

(declare-fun b!4092349 () Bool)

(declare-fun e!2539674 () Bool)

(declare-fun tp!1238798 () Bool)

(declare-fun inv!58595 (Conc!13309) Bool)

(assert (=> b!4092349 (= e!2539674 (and (inv!58595 (c!705275 (dynLambda!18794 (toChars!9549 (transformation!7098 r!4213)) (dynLambda!18790 (toValue!9690 (transformation!7098 r!4213)) lt!1463658)))) tp!1238798))))

(declare-fun result!298612 () Bool)

(declare-fun inv!58596 (BalanceConc!26212) Bool)

(assert (=> tb!246093 (= result!298612 (and (inv!58596 (dynLambda!18794 (toChars!9549 (transformation!7098 r!4213)) (dynLambda!18790 (toValue!9690 (transformation!7098 r!4213)) lt!1463658))) e!2539674))))

(assert (= tb!246093 b!4092349))

(declare-fun m!4699455 () Bool)

(assert (=> b!4092349 m!4699455))

(declare-fun m!4699457 () Bool)

(assert (=> tb!246093 m!4699457))

(assert (=> d!1215068 t!338874))

(declare-fun b_and!315475 () Bool)

(assert (= b_and!315453 (and (=> t!338874 result!298612) b_and!315475)))

(declare-fun tb!246095 () Bool)

(declare-fun t!338876 () Bool)

(assert (=> (and b!4092205 (= (toChars!9549 (transformation!7098 (h!49301 rules!3870))) (toChars!9549 (transformation!7098 r!4213))) t!338876) tb!246095))

(declare-fun result!298616 () Bool)

(assert (= result!298616 result!298612))

(assert (=> d!1215068 t!338876))

(declare-fun b_and!315477 () Bool)

(assert (= b_and!315457 (and (=> t!338876 result!298616) b_and!315477)))

(declare-fun b_lambda!120025 () Bool)

(assert (=> (not b_lambda!120025) (not d!1215068)))

(assert (=> d!1215068 t!338862))

(declare-fun b_and!315479 () Bool)

(assert (= b_and!315459 (and (=> t!338862 result!298594) b_and!315479)))

(assert (=> d!1215068 t!338864))

(declare-fun b_and!315481 () Bool)

(assert (= b_and!315461 (and (=> t!338864 result!298598) b_and!315481)))

(assert (=> d!1215068 m!4699283))

(declare-fun m!4699459 () Bool)

(assert (=> d!1215068 m!4699459))

(assert (=> d!1215068 m!4699283))

(declare-fun m!4699461 () Bool)

(assert (=> d!1215068 m!4699461))

(declare-fun m!4699463 () Bool)

(assert (=> d!1215068 m!4699463))

(assert (=> d!1215068 m!4699459))

(declare-fun m!4699465 () Bool)

(assert (=> d!1215068 m!4699465))

(assert (=> b!4092202 d!1215068))

(declare-fun d!1215090 () Bool)

(declare-fun lt!1463730 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6766 (List!44005) (InoxSet Rule!13996))

(assert (=> d!1215090 (= lt!1463730 (select (content!6766 rules!3870) r!4213))))

(declare-fun e!2539694 () Bool)

(assert (=> d!1215090 (= lt!1463730 e!2539694)))

(declare-fun res!1672697 () Bool)

(assert (=> d!1215090 (=> (not res!1672697) (not e!2539694))))

(assert (=> d!1215090 (= res!1672697 ((_ is Cons!43881) rules!3870))))

(assert (=> d!1215090 (= (contains!8779 rules!3870 r!4213) lt!1463730)))

(declare-fun b!4092382 () Bool)

(declare-fun e!2539693 () Bool)

(assert (=> b!4092382 (= e!2539694 e!2539693)))

(declare-fun res!1672696 () Bool)

(assert (=> b!4092382 (=> res!1672696 e!2539693)))

(assert (=> b!4092382 (= res!1672696 (= (h!49301 rules!3870) r!4213))))

(declare-fun b!4092383 () Bool)

(assert (=> b!4092383 (= e!2539693 (contains!8779 (t!338860 rules!3870) r!4213))))

(assert (= (and d!1215090 res!1672697) b!4092382))

(assert (= (and b!4092382 (not res!1672696)) b!4092383))

(declare-fun m!4699467 () Bool)

(assert (=> d!1215090 m!4699467))

(declare-fun m!4699469 () Bool)

(assert (=> d!1215090 m!4699469))

(declare-fun m!4699471 () Bool)

(assert (=> b!4092383 m!4699471))

(assert (=> b!4092201 d!1215090))

(declare-fun d!1215092 () Bool)

(declare-fun res!1672702 () Bool)

(declare-fun e!2539697 () Bool)

(assert (=> d!1215092 (=> (not res!1672702) (not e!2539697))))

(assert (=> d!1215092 (= res!1672702 (not (isEmpty!26247 (originalCharacters!7692 lt!1463654))))))

(assert (=> d!1215092 (= (inv!58591 lt!1463654) e!2539697)))

(declare-fun b!4092388 () Bool)

(declare-fun res!1672703 () Bool)

(assert (=> b!4092388 (=> (not res!1672703) (not e!2539697))))

(assert (=> b!4092388 (= res!1672703 (= (originalCharacters!7692 lt!1463654) (list!16288 (dynLambda!18794 (toChars!9549 (transformation!7098 (rule!10242 lt!1463654))) (value!222945 lt!1463654)))))))

(declare-fun b!4092389 () Bool)

(assert (=> b!4092389 (= e!2539697 (= (size!32778 lt!1463654) (size!32779 (originalCharacters!7692 lt!1463654))))))

(assert (= (and d!1215092 res!1672702) b!4092388))

(assert (= (and b!4092388 res!1672703) b!4092389))

(declare-fun b_lambda!120027 () Bool)

(assert (=> (not b_lambda!120027) (not b!4092388)))

(declare-fun t!338878 () Bool)

(declare-fun tb!246097 () Bool)

(assert (=> (and b!4092204 (= (toChars!9549 (transformation!7098 r!4213)) (toChars!9549 (transformation!7098 (rule!10242 lt!1463654)))) t!338878) tb!246097))

(declare-fun b!4092404 () Bool)

(declare-fun e!2539705 () Bool)

(declare-fun tp!1238799 () Bool)

(assert (=> b!4092404 (= e!2539705 (and (inv!58595 (c!705275 (dynLambda!18794 (toChars!9549 (transformation!7098 (rule!10242 lt!1463654))) (value!222945 lt!1463654)))) tp!1238799))))

(declare-fun result!298618 () Bool)

(assert (=> tb!246097 (= result!298618 (and (inv!58596 (dynLambda!18794 (toChars!9549 (transformation!7098 (rule!10242 lt!1463654))) (value!222945 lt!1463654))) e!2539705))))

(assert (= tb!246097 b!4092404))

(declare-fun m!4699473 () Bool)

(assert (=> b!4092404 m!4699473))

(declare-fun m!4699475 () Bool)

(assert (=> tb!246097 m!4699475))

(assert (=> b!4092388 t!338878))

(declare-fun b_and!315483 () Bool)

(assert (= b_and!315475 (and (=> t!338878 result!298618) b_and!315483)))

(declare-fun tb!246099 () Bool)

(declare-fun t!338880 () Bool)

(assert (=> (and b!4092205 (= (toChars!9549 (transformation!7098 (h!49301 rules!3870))) (toChars!9549 (transformation!7098 (rule!10242 lt!1463654)))) t!338880) tb!246099))

(declare-fun result!298620 () Bool)

(assert (= result!298620 result!298618))

(assert (=> b!4092388 t!338880))

(declare-fun b_and!315485 () Bool)

(assert (= b_and!315477 (and (=> t!338880 result!298620) b_and!315485)))

(declare-fun m!4699477 () Bool)

(assert (=> d!1215092 m!4699477))

(declare-fun m!4699479 () Bool)

(assert (=> b!4092388 m!4699479))

(assert (=> b!4092388 m!4699479))

(declare-fun m!4699481 () Bool)

(assert (=> b!4092388 m!4699481))

(declare-fun m!4699483 () Bool)

(assert (=> b!4092389 m!4699483))

(assert (=> b!4092190 d!1215092))

(declare-fun d!1215094 () Bool)

(assert (=> d!1215094 (= (inv!58588 (tag!7958 r!4213)) (= (mod (str.len (value!222944 (tag!7958 r!4213))) 2) 0))))

(assert (=> b!4092194 d!1215094))

(declare-fun d!1215096 () Bool)

(declare-fun res!1672720 () Bool)

(declare-fun e!2539711 () Bool)

(assert (=> d!1215096 (=> (not res!1672720) (not e!2539711))))

(declare-fun semiInverseModEq!3052 (Int Int) Bool)

(assert (=> d!1215096 (= res!1672720 (semiInverseModEq!3052 (toChars!9549 (transformation!7098 r!4213)) (toValue!9690 (transformation!7098 r!4213))))))

(assert (=> d!1215096 (= (inv!58592 (transformation!7098 r!4213)) e!2539711)))

(declare-fun b!4092413 () Bool)

(declare-fun equivClasses!2951 (Int Int) Bool)

(assert (=> b!4092413 (= e!2539711 (equivClasses!2951 (toChars!9549 (transformation!7098 r!4213)) (toValue!9690 (transformation!7098 r!4213))))))

(assert (= (and d!1215096 res!1672720) b!4092413))

(declare-fun m!4699499 () Bool)

(assert (=> d!1215096 m!4699499))

(declare-fun m!4699501 () Bool)

(assert (=> b!4092413 m!4699501))

(assert (=> b!4092194 d!1215096))

(declare-fun d!1215102 () Bool)

(assert (=> d!1215102 (= (isEmpty!26248 rules!3870) ((_ is Nil!43881) rules!3870))))

(assert (=> b!4092192 d!1215102))

(declare-fun d!1215104 () Bool)

(assert (=> d!1215104 (= (get!14391 lt!1463655) (v!39993 lt!1463655))))

(assert (=> b!4092196 d!1215104))

(declare-fun d!1215106 () Bool)

(declare-fun res!1672725 () Bool)

(declare-fun e!2539716 () Bool)

(assert (=> d!1215106 (=> (not res!1672725) (not e!2539716))))

(declare-fun rulesValid!2786 (LexerInterface!6687 List!44005) Bool)

(assert (=> d!1215106 (= res!1672725 (rulesValid!2786 thiss!26199 rules!3870))))

(assert (=> d!1215106 (= (rulesInvariant!6030 thiss!26199 rules!3870) e!2539716)))

(declare-fun b!4092416 () Bool)

(declare-datatypes ((List!44007 0))(
  ( (Nil!43883) (Cons!43883 (h!49303 String!50390) (t!338898 List!44007)) )
))
(declare-fun noDuplicateTag!2787 (LexerInterface!6687 List!44005 List!44007) Bool)

(assert (=> b!4092416 (= e!2539716 (noDuplicateTag!2787 thiss!26199 rules!3870 Nil!43883))))

(assert (= (and d!1215106 res!1672725) b!4092416))

(declare-fun m!4699505 () Bool)

(assert (=> d!1215106 m!4699505))

(declare-fun m!4699507 () Bool)

(assert (=> b!4092416 m!4699507))

(assert (=> b!4092197 d!1215106))

(declare-fun d!1215110 () Bool)

(assert (=> d!1215110 (= (inv!58588 (tag!7958 (h!49301 rules!3870))) (= (mod (str.len (value!222944 (tag!7958 (h!49301 rules!3870)))) 2) 0))))

(assert (=> b!4092195 d!1215110))

(declare-fun d!1215112 () Bool)

(declare-fun res!1672728 () Bool)

(declare-fun e!2539717 () Bool)

(assert (=> d!1215112 (=> (not res!1672728) (not e!2539717))))

(assert (=> d!1215112 (= res!1672728 (semiInverseModEq!3052 (toChars!9549 (transformation!7098 (h!49301 rules!3870))) (toValue!9690 (transformation!7098 (h!49301 rules!3870)))))))

(assert (=> d!1215112 (= (inv!58592 (transformation!7098 (h!49301 rules!3870))) e!2539717)))

(declare-fun b!4092421 () Bool)

(assert (=> b!4092421 (= e!2539717 (equivClasses!2951 (toChars!9549 (transformation!7098 (h!49301 rules!3870))) (toValue!9690 (transformation!7098 (h!49301 rules!3870)))))))

(assert (= (and d!1215112 res!1672728) b!4092421))

(declare-fun m!4699509 () Bool)

(assert (=> d!1215112 m!4699509))

(declare-fun m!4699511 () Bool)

(assert (=> b!4092421 m!4699511))

(assert (=> b!4092195 d!1215112))

(declare-fun b!4092465 () Bool)

(declare-fun e!2539740 () List!44004)

(assert (=> b!4092465 (= e!2539740 (Cons!43880 (h!49300 p!2988) (++!11504 (t!338859 p!2988) suffix!1518)))))

(declare-fun b!4092464 () Bool)

(assert (=> b!4092464 (= e!2539740 suffix!1518)))

(declare-fun b!4092467 () Bool)

(declare-fun e!2539739 () Bool)

(declare-fun lt!1463737 () List!44004)

(assert (=> b!4092467 (= e!2539739 (or (not (= suffix!1518 Nil!43880)) (= lt!1463737 p!2988)))))

(declare-fun d!1215114 () Bool)

(assert (=> d!1215114 e!2539739))

(declare-fun res!1672735 () Bool)

(assert (=> d!1215114 (=> (not res!1672735) (not e!2539739))))

(declare-fun content!6767 (List!44004) (InoxSet C!24192))

(assert (=> d!1215114 (= res!1672735 (= (content!6767 lt!1463737) ((_ map or) (content!6767 p!2988) (content!6767 suffix!1518))))))

(assert (=> d!1215114 (= lt!1463737 e!2539740)))

(declare-fun c!705307 () Bool)

(assert (=> d!1215114 (= c!705307 ((_ is Nil!43880) p!2988))))

(assert (=> d!1215114 (= (++!11504 p!2988 suffix!1518) lt!1463737)))

(declare-fun b!4092466 () Bool)

(declare-fun res!1672736 () Bool)

(assert (=> b!4092466 (=> (not res!1672736) (not e!2539739))))

(assert (=> b!4092466 (= res!1672736 (= (size!32779 lt!1463737) (+ (size!32779 p!2988) (size!32779 suffix!1518))))))

(assert (= (and d!1215114 c!705307) b!4092464))

(assert (= (and d!1215114 (not c!705307)) b!4092465))

(assert (= (and d!1215114 res!1672735) b!4092466))

(assert (= (and b!4092466 res!1672736) b!4092467))

(declare-fun m!4699525 () Bool)

(assert (=> b!4092465 m!4699525))

(declare-fun m!4699527 () Bool)

(assert (=> d!1215114 m!4699527))

(declare-fun m!4699529 () Bool)

(assert (=> d!1215114 m!4699529))

(declare-fun m!4699531 () Bool)

(assert (=> d!1215114 m!4699531))

(declare-fun m!4699533 () Bool)

(assert (=> b!4092466 m!4699533))

(assert (=> b!4092466 m!4699249))

(declare-fun m!4699535 () Bool)

(assert (=> b!4092466 m!4699535))

(assert (=> b!4092206 d!1215114))

(declare-fun d!1215116 () Bool)

(assert (=> d!1215116 (= (isEmpty!26249 lt!1463655) (not ((_ is Some!9503) lt!1463655)))))

(assert (=> b!4092199 d!1215116))

(declare-fun b!4092491 () Bool)

(declare-fun res!1672751 () Bool)

(declare-fun e!2539757 () Bool)

(assert (=> b!4092491 (=> (not res!1672751) (not e!2539757))))

(declare-fun lt!1463752 () Option!9504)

(assert (=> b!4092491 (= res!1672751 (= (++!11504 (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463752)))) (_2!24540 (get!14391 lt!1463752))) input!3411))))

(declare-fun b!4092492 () Bool)

(declare-fun e!2539755 () Option!9504)

(declare-datatypes ((tuple2!42816 0))(
  ( (tuple2!42817 (_1!24542 List!44004) (_2!24542 List!44004)) )
))
(declare-fun lt!1463749 () tuple2!42816)

(declare-fun size!32781 (BalanceConc!26212) Int)

(assert (=> b!4092492 (= e!2539755 (Some!9503 (tuple2!42813 (Token!13323 (apply!10281 (transformation!7098 (h!49301 rules!3870)) (seqFromList!5315 (_1!24542 lt!1463749))) (h!49301 rules!3870) (size!32781 (seqFromList!5315 (_1!24542 lt!1463749))) (_1!24542 lt!1463749)) (_2!24542 lt!1463749))))))

(declare-fun lt!1463751 () Unit!63409)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1437 (Regex!12003 List!44004) Unit!63409)

(assert (=> b!4092492 (= lt!1463751 (longestMatchIsAcceptedByMatchOrIsEmpty!1437 (regex!7098 (h!49301 rules!3870)) input!3411))))

(declare-fun res!1672753 () Bool)

(declare-fun findLongestMatchInner!1464 (Regex!12003 List!44004 Int List!44004 List!44004 Int) tuple2!42816)

(assert (=> b!4092492 (= res!1672753 (isEmpty!26247 (_1!24542 (findLongestMatchInner!1464 (regex!7098 (h!49301 rules!3870)) Nil!43880 (size!32779 Nil!43880) input!3411 input!3411 (size!32779 input!3411)))))))

(declare-fun e!2539758 () Bool)

(assert (=> b!4092492 (=> res!1672753 e!2539758)))

(assert (=> b!4092492 e!2539758))

(declare-fun lt!1463748 () Unit!63409)

(assert (=> b!4092492 (= lt!1463748 lt!1463751)))

(declare-fun lt!1463750 () Unit!63409)

(assert (=> b!4092492 (= lt!1463750 (lemmaSemiInverse!2065 (transformation!7098 (h!49301 rules!3870)) (seqFromList!5315 (_1!24542 lt!1463749))))))

(declare-fun b!4092494 () Bool)

(declare-fun res!1672754 () Bool)

(assert (=> b!4092494 (=> (not res!1672754) (not e!2539757))))

(assert (=> b!4092494 (= res!1672754 (< (size!32779 (_2!24540 (get!14391 lt!1463752))) (size!32779 input!3411)))))

(declare-fun b!4092495 () Bool)

(assert (=> b!4092495 (= e!2539758 (matchR!5944 (regex!7098 (h!49301 rules!3870)) (_1!24542 (findLongestMatchInner!1464 (regex!7098 (h!49301 rules!3870)) Nil!43880 (size!32779 Nil!43880) input!3411 input!3411 (size!32779 input!3411)))))))

(declare-fun b!4092496 () Bool)

(assert (=> b!4092496 (= e!2539755 None!9503)))

(declare-fun b!4092497 () Bool)

(declare-fun e!2539756 () Bool)

(assert (=> b!4092497 (= e!2539756 e!2539757)))

(declare-fun res!1672756 () Bool)

(assert (=> b!4092497 (=> (not res!1672756) (not e!2539757))))

(assert (=> b!4092497 (= res!1672756 (matchR!5944 (regex!7098 (h!49301 rules!3870)) (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463752))))))))

(declare-fun d!1215118 () Bool)

(assert (=> d!1215118 e!2539756))

(declare-fun res!1672757 () Bool)

(assert (=> d!1215118 (=> res!1672757 e!2539756)))

(assert (=> d!1215118 (= res!1672757 (isEmpty!26249 lt!1463752))))

(assert (=> d!1215118 (= lt!1463752 e!2539755)))

(declare-fun c!705310 () Bool)

(assert (=> d!1215118 (= c!705310 (isEmpty!26247 (_1!24542 lt!1463749)))))

(declare-fun findLongestMatch!1377 (Regex!12003 List!44004) tuple2!42816)

(assert (=> d!1215118 (= lt!1463749 (findLongestMatch!1377 (regex!7098 (h!49301 rules!3870)) input!3411))))

(assert (=> d!1215118 (ruleValid!3018 thiss!26199 (h!49301 rules!3870))))

(assert (=> d!1215118 (= (maxPrefixOneRule!2959 thiss!26199 (h!49301 rules!3870) input!3411) lt!1463752)))

(declare-fun b!4092493 () Bool)

(declare-fun res!1672752 () Bool)

(assert (=> b!4092493 (=> (not res!1672752) (not e!2539757))))

(assert (=> b!4092493 (= res!1672752 (= (rule!10242 (_1!24540 (get!14391 lt!1463752))) (h!49301 rules!3870)))))

(declare-fun b!4092498 () Bool)

(declare-fun res!1672755 () Bool)

(assert (=> b!4092498 (=> (not res!1672755) (not e!2539757))))

(assert (=> b!4092498 (= res!1672755 (= (value!222945 (_1!24540 (get!14391 lt!1463752))) (apply!10281 (transformation!7098 (rule!10242 (_1!24540 (get!14391 lt!1463752)))) (seqFromList!5315 (originalCharacters!7692 (_1!24540 (get!14391 lt!1463752)))))))))

(declare-fun b!4092499 () Bool)

(assert (=> b!4092499 (= e!2539757 (= (size!32778 (_1!24540 (get!14391 lt!1463752))) (size!32779 (originalCharacters!7692 (_1!24540 (get!14391 lt!1463752))))))))

(assert (= (and d!1215118 c!705310) b!4092496))

(assert (= (and d!1215118 (not c!705310)) b!4092492))

(assert (= (and b!4092492 (not res!1672753)) b!4092495))

(assert (= (and d!1215118 (not res!1672757)) b!4092497))

(assert (= (and b!4092497 res!1672756) b!4092491))

(assert (= (and b!4092491 res!1672751) b!4092494))

(assert (= (and b!4092494 res!1672754) b!4092493))

(assert (= (and b!4092493 res!1672752) b!4092498))

(assert (= (and b!4092498 res!1672755) b!4092499))

(declare-fun m!4699541 () Bool)

(assert (=> b!4092494 m!4699541))

(declare-fun m!4699543 () Bool)

(assert (=> b!4092494 m!4699543))

(assert (=> b!4092494 m!4699341))

(declare-fun m!4699545 () Bool)

(assert (=> d!1215118 m!4699545))

(declare-fun m!4699547 () Bool)

(assert (=> d!1215118 m!4699547))

(declare-fun m!4699549 () Bool)

(assert (=> d!1215118 m!4699549))

(declare-fun m!4699551 () Bool)

(assert (=> d!1215118 m!4699551))

(assert (=> b!4092497 m!4699541))

(declare-fun m!4699553 () Bool)

(assert (=> b!4092497 m!4699553))

(assert (=> b!4092497 m!4699553))

(declare-fun m!4699555 () Bool)

(assert (=> b!4092497 m!4699555))

(assert (=> b!4092497 m!4699555))

(declare-fun m!4699557 () Bool)

(assert (=> b!4092497 m!4699557))

(assert (=> b!4092493 m!4699541))

(declare-fun m!4699559 () Bool)

(assert (=> b!4092492 m!4699559))

(declare-fun m!4699561 () Bool)

(assert (=> b!4092492 m!4699561))

(assert (=> b!4092492 m!4699559))

(declare-fun m!4699563 () Bool)

(assert (=> b!4092492 m!4699563))

(assert (=> b!4092492 m!4699559))

(declare-fun m!4699565 () Bool)

(assert (=> b!4092492 m!4699565))

(declare-fun m!4699567 () Bool)

(assert (=> b!4092492 m!4699567))

(assert (=> b!4092492 m!4699563))

(assert (=> b!4092492 m!4699341))

(declare-fun m!4699569 () Bool)

(assert (=> b!4092492 m!4699569))

(assert (=> b!4092492 m!4699559))

(declare-fun m!4699571 () Bool)

(assert (=> b!4092492 m!4699571))

(declare-fun m!4699573 () Bool)

(assert (=> b!4092492 m!4699573))

(assert (=> b!4092492 m!4699341))

(assert (=> b!4092499 m!4699541))

(declare-fun m!4699575 () Bool)

(assert (=> b!4092499 m!4699575))

(assert (=> b!4092495 m!4699563))

(assert (=> b!4092495 m!4699341))

(assert (=> b!4092495 m!4699563))

(assert (=> b!4092495 m!4699341))

(assert (=> b!4092495 m!4699569))

(declare-fun m!4699577 () Bool)

(assert (=> b!4092495 m!4699577))

(assert (=> b!4092491 m!4699541))

(assert (=> b!4092491 m!4699553))

(assert (=> b!4092491 m!4699553))

(assert (=> b!4092491 m!4699555))

(assert (=> b!4092491 m!4699555))

(declare-fun m!4699579 () Bool)

(assert (=> b!4092491 m!4699579))

(assert (=> b!4092498 m!4699541))

(declare-fun m!4699581 () Bool)

(assert (=> b!4092498 m!4699581))

(assert (=> b!4092498 m!4699581))

(declare-fun m!4699583 () Bool)

(assert (=> b!4092498 m!4699583))

(assert (=> b!4092199 d!1215118))

(declare-fun d!1215120 () Bool)

(declare-fun res!1672758 () Bool)

(declare-fun e!2539759 () Bool)

(assert (=> d!1215120 (=> (not res!1672758) (not e!2539759))))

(assert (=> d!1215120 (= res!1672758 (rulesValid!2786 thiss!26199 (t!338860 rules!3870)))))

(assert (=> d!1215120 (= (rulesInvariant!6030 thiss!26199 (t!338860 rules!3870)) e!2539759)))

(declare-fun b!4092500 () Bool)

(assert (=> b!4092500 (= e!2539759 (noDuplicateTag!2787 thiss!26199 (t!338860 rules!3870) Nil!43883))))

(assert (= (and d!1215120 res!1672758) b!4092500))

(declare-fun m!4699585 () Bool)

(assert (=> d!1215120 m!4699585))

(declare-fun m!4699587 () Bool)

(assert (=> b!4092500 m!4699587))

(assert (=> b!4092199 d!1215120))

(declare-fun d!1215122 () Bool)

(assert (=> d!1215122 (rulesInvariant!6030 thiss!26199 (t!338860 rules!3870))))

(declare-fun lt!1463755 () Unit!63409)

(declare-fun choose!24998 (LexerInterface!6687 Rule!13996 List!44005) Unit!63409)

(assert (=> d!1215122 (= lt!1463755 (choose!24998 thiss!26199 (h!49301 rules!3870) (t!338860 rules!3870)))))

(assert (=> d!1215122 (rulesInvariant!6030 thiss!26199 (Cons!43881 (h!49301 rules!3870) (t!338860 rules!3870)))))

(assert (=> d!1215122 (= (lemmaInvariantOnRulesThenOnTail!800 thiss!26199 (h!49301 rules!3870) (t!338860 rules!3870)) lt!1463755)))

(declare-fun bs!593383 () Bool)

(assert (= bs!593383 d!1215122))

(assert (=> bs!593383 m!4699257))

(declare-fun m!4699589 () Bool)

(assert (=> bs!593383 m!4699589))

(declare-fun m!4699591 () Bool)

(assert (=> bs!593383 m!4699591))

(assert (=> b!4092199 d!1215122))

(declare-fun bm!289237 () Bool)

(declare-fun call!289242 () Bool)

(assert (=> bm!289237 (= call!289242 (isEmpty!26247 p!2988))))

(declare-fun b!4092529 () Bool)

(declare-fun e!2539776 () Bool)

(declare-fun nullable!4240 (Regex!12003) Bool)

(assert (=> b!4092529 (= e!2539776 (nullable!4240 (regex!7098 r!4213)))))

(declare-fun b!4092530 () Bool)

(declare-fun res!1672777 () Bool)

(declare-fun e!2539778 () Bool)

(assert (=> b!4092530 (=> res!1672777 e!2539778)))

(declare-fun tail!6385 (List!44004) List!44004)

(assert (=> b!4092530 (= res!1672777 (not (isEmpty!26247 (tail!6385 p!2988))))))

(declare-fun b!4092531 () Bool)

(declare-fun e!2539779 () Bool)

(declare-fun e!2539777 () Bool)

(assert (=> b!4092531 (= e!2539779 e!2539777)))

(declare-fun c!705317 () Bool)

(assert (=> b!4092531 (= c!705317 ((_ is EmptyLang!12003) (regex!7098 r!4213)))))

(declare-fun b!4092532 () Bool)

(declare-fun derivativeStep!3641 (Regex!12003 C!24192) Regex!12003)

(declare-fun head!8651 (List!44004) C!24192)

(assert (=> b!4092532 (= e!2539776 (matchR!5944 (derivativeStep!3641 (regex!7098 r!4213) (head!8651 p!2988)) (tail!6385 p!2988)))))

(declare-fun b!4092533 () Bool)

(declare-fun res!1672780 () Bool)

(declare-fun e!2539774 () Bool)

(assert (=> b!4092533 (=> (not res!1672780) (not e!2539774))))

(assert (=> b!4092533 (= res!1672780 (isEmpty!26247 (tail!6385 p!2988)))))

(declare-fun b!4092534 () Bool)

(declare-fun res!1672776 () Bool)

(declare-fun e!2539780 () Bool)

(assert (=> b!4092534 (=> res!1672776 e!2539780)))

(assert (=> b!4092534 (= res!1672776 e!2539774)))

(declare-fun res!1672775 () Bool)

(assert (=> b!4092534 (=> (not res!1672775) (not e!2539774))))

(declare-fun lt!1463758 () Bool)

(assert (=> b!4092534 (= res!1672775 lt!1463758)))

(declare-fun d!1215124 () Bool)

(assert (=> d!1215124 e!2539779))

(declare-fun c!705319 () Bool)

(assert (=> d!1215124 (= c!705319 ((_ is EmptyExpr!12003) (regex!7098 r!4213)))))

(assert (=> d!1215124 (= lt!1463758 e!2539776)))

(declare-fun c!705318 () Bool)

(assert (=> d!1215124 (= c!705318 (isEmpty!26247 p!2988))))

(declare-fun validRegex!5440 (Regex!12003) Bool)

(assert (=> d!1215124 (validRegex!5440 (regex!7098 r!4213))))

(assert (=> d!1215124 (= (matchR!5944 (regex!7098 r!4213) p!2988) lt!1463758)))

(declare-fun b!4092535 () Bool)

(assert (=> b!4092535 (= e!2539778 (not (= (head!8651 p!2988) (c!705274 (regex!7098 r!4213)))))))

(declare-fun b!4092536 () Bool)

(declare-fun res!1672782 () Bool)

(assert (=> b!4092536 (=> res!1672782 e!2539780)))

(assert (=> b!4092536 (= res!1672782 (not ((_ is ElementMatch!12003) (regex!7098 r!4213))))))

(assert (=> b!4092536 (= e!2539777 e!2539780)))

(declare-fun b!4092537 () Bool)

(assert (=> b!4092537 (= e!2539777 (not lt!1463758))))

(declare-fun b!4092538 () Bool)

(assert (=> b!4092538 (= e!2539779 (= lt!1463758 call!289242))))

(declare-fun b!4092539 () Bool)

(declare-fun e!2539775 () Bool)

(assert (=> b!4092539 (= e!2539780 e!2539775)))

(declare-fun res!1672781 () Bool)

(assert (=> b!4092539 (=> (not res!1672781) (not e!2539775))))

(assert (=> b!4092539 (= res!1672781 (not lt!1463758))))

(declare-fun b!4092540 () Bool)

(assert (=> b!4092540 (= e!2539774 (= (head!8651 p!2988) (c!705274 (regex!7098 r!4213))))))

(declare-fun b!4092541 () Bool)

(declare-fun res!1672778 () Bool)

(assert (=> b!4092541 (=> (not res!1672778) (not e!2539774))))

(assert (=> b!4092541 (= res!1672778 (not call!289242))))

(declare-fun b!4092542 () Bool)

(assert (=> b!4092542 (= e!2539775 e!2539778)))

(declare-fun res!1672779 () Bool)

(assert (=> b!4092542 (=> res!1672779 e!2539778)))

(assert (=> b!4092542 (= res!1672779 call!289242)))

(assert (= (and d!1215124 c!705318) b!4092529))

(assert (= (and d!1215124 (not c!705318)) b!4092532))

(assert (= (and d!1215124 c!705319) b!4092538))

(assert (= (and d!1215124 (not c!705319)) b!4092531))

(assert (= (and b!4092531 c!705317) b!4092537))

(assert (= (and b!4092531 (not c!705317)) b!4092536))

(assert (= (and b!4092536 (not res!1672782)) b!4092534))

(assert (= (and b!4092534 res!1672775) b!4092541))

(assert (= (and b!4092541 res!1672778) b!4092533))

(assert (= (and b!4092533 res!1672780) b!4092540))

(assert (= (and b!4092534 (not res!1672776)) b!4092539))

(assert (= (and b!4092539 res!1672781) b!4092542))

(assert (= (and b!4092542 (not res!1672779)) b!4092530))

(assert (= (and b!4092530 (not res!1672777)) b!4092535))

(assert (= (or b!4092538 b!4092541 b!4092542) bm!289237))

(declare-fun m!4699593 () Bool)

(assert (=> b!4092533 m!4699593))

(assert (=> b!4092533 m!4699593))

(declare-fun m!4699595 () Bool)

(assert (=> b!4092533 m!4699595))

(declare-fun m!4699597 () Bool)

(assert (=> b!4092535 m!4699597))

(assert (=> bm!289237 m!4699237))

(assert (=> b!4092530 m!4699593))

(assert (=> b!4092530 m!4699593))

(assert (=> b!4092530 m!4699595))

(declare-fun m!4699599 () Bool)

(assert (=> b!4092529 m!4699599))

(assert (=> d!1215124 m!4699237))

(declare-fun m!4699601 () Bool)

(assert (=> d!1215124 m!4699601))

(assert (=> b!4092532 m!4699597))

(assert (=> b!4092532 m!4699597))

(declare-fun m!4699603 () Bool)

(assert (=> b!4092532 m!4699603))

(assert (=> b!4092532 m!4699593))

(assert (=> b!4092532 m!4699603))

(assert (=> b!4092532 m!4699593))

(declare-fun m!4699605 () Bool)

(assert (=> b!4092532 m!4699605))

(assert (=> b!4092540 m!4699597))

(assert (=> b!4092188 d!1215124))

(declare-fun d!1215126 () Bool)

(declare-fun res!1672787 () Bool)

(declare-fun e!2539783 () Bool)

(assert (=> d!1215126 (=> (not res!1672787) (not e!2539783))))

(assert (=> d!1215126 (= res!1672787 (validRegex!5440 (regex!7098 r!4213)))))

(assert (=> d!1215126 (= (ruleValid!3018 thiss!26199 r!4213) e!2539783)))

(declare-fun b!4092547 () Bool)

(declare-fun res!1672788 () Bool)

(assert (=> b!4092547 (=> (not res!1672788) (not e!2539783))))

(assert (=> b!4092547 (= res!1672788 (not (nullable!4240 (regex!7098 r!4213))))))

(declare-fun b!4092548 () Bool)

(assert (=> b!4092548 (= e!2539783 (not (= (tag!7958 r!4213) (String!50391 ""))))))

(assert (= (and d!1215126 res!1672787) b!4092547))

(assert (= (and b!4092547 res!1672788) b!4092548))

(assert (=> d!1215126 m!4699601))

(assert (=> b!4092547 m!4699599))

(assert (=> b!4092188 d!1215126))

(declare-fun d!1215128 () Bool)

(assert (=> d!1215128 (ruleValid!3018 thiss!26199 r!4213)))

(declare-fun lt!1463761 () Unit!63409)

(declare-fun choose!24999 (LexerInterface!6687 Rule!13996 List!44005) Unit!63409)

(assert (=> d!1215128 (= lt!1463761 (choose!24999 thiss!26199 r!4213 rules!3870))))

(assert (=> d!1215128 (contains!8779 rules!3870 r!4213)))

(assert (=> d!1215128 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2084 thiss!26199 r!4213 rules!3870) lt!1463761)))

(declare-fun bs!593384 () Bool)

(assert (= bs!593384 d!1215128))

(assert (=> bs!593384 m!4699263))

(declare-fun m!4699607 () Bool)

(assert (=> bs!593384 m!4699607))

(assert (=> bs!593384 m!4699251))

(assert (=> b!4092188 d!1215128))

(declare-fun d!1215130 () Bool)

(assert (=> d!1215130 (= (isEmpty!26247 p!2988) ((_ is Nil!43880) p!2988))))

(assert (=> b!4092189 d!1215130))

(declare-fun b!4092553 () Bool)

(declare-fun e!2539786 () Bool)

(declare-fun tp!1238840 () Bool)

(assert (=> b!4092553 (= e!2539786 (and tp_is_empty!21009 tp!1238840))))

(assert (=> b!4092191 (= tp!1238784 e!2539786)))

(assert (= (and b!4092191 ((_ is Cons!43880) (t!338859 input!3411))) b!4092553))

(declare-fun b!4092565 () Bool)

(declare-fun e!2539789 () Bool)

(declare-fun tp!1238851 () Bool)

(declare-fun tp!1238852 () Bool)

(assert (=> b!4092565 (= e!2539789 (and tp!1238851 tp!1238852))))

(assert (=> b!4092195 (= tp!1238791 e!2539789)))

(declare-fun b!4092567 () Bool)

(declare-fun tp!1238854 () Bool)

(declare-fun tp!1238855 () Bool)

(assert (=> b!4092567 (= e!2539789 (and tp!1238854 tp!1238855))))

(declare-fun b!4092566 () Bool)

(declare-fun tp!1238853 () Bool)

(assert (=> b!4092566 (= e!2539789 tp!1238853)))

(declare-fun b!4092564 () Bool)

(assert (=> b!4092564 (= e!2539789 tp_is_empty!21009)))

(assert (= (and b!4092195 ((_ is ElementMatch!12003) (regex!7098 (h!49301 rules!3870)))) b!4092564))

(assert (= (and b!4092195 ((_ is Concat!19332) (regex!7098 (h!49301 rules!3870)))) b!4092565))

(assert (= (and b!4092195 ((_ is Star!12003) (regex!7098 (h!49301 rules!3870)))) b!4092566))

(assert (= (and b!4092195 ((_ is Union!12003) (regex!7098 (h!49301 rules!3870)))) b!4092567))

(declare-fun b!4092568 () Bool)

(declare-fun e!2539790 () Bool)

(declare-fun tp!1238856 () Bool)

(assert (=> b!4092568 (= e!2539790 (and tp_is_empty!21009 tp!1238856))))

(assert (=> b!4092200 (= tp!1238785 e!2539790)))

(assert (= (and b!4092200 ((_ is Cons!43880) (t!338859 suffix!1518))) b!4092568))

(declare-fun b!4092570 () Bool)

(declare-fun e!2539791 () Bool)

(declare-fun tp!1238857 () Bool)

(declare-fun tp!1238858 () Bool)

(assert (=> b!4092570 (= e!2539791 (and tp!1238857 tp!1238858))))

(assert (=> b!4092194 (= tp!1238790 e!2539791)))

(declare-fun b!4092572 () Bool)

(declare-fun tp!1238860 () Bool)

(declare-fun tp!1238861 () Bool)

(assert (=> b!4092572 (= e!2539791 (and tp!1238860 tp!1238861))))

(declare-fun b!4092571 () Bool)

(declare-fun tp!1238859 () Bool)

(assert (=> b!4092571 (= e!2539791 tp!1238859)))

(declare-fun b!4092569 () Bool)

(assert (=> b!4092569 (= e!2539791 tp_is_empty!21009)))

(assert (= (and b!4092194 ((_ is ElementMatch!12003) (regex!7098 r!4213))) b!4092569))

(assert (= (and b!4092194 ((_ is Concat!19332) (regex!7098 r!4213))) b!4092570))

(assert (= (and b!4092194 ((_ is Star!12003) (regex!7098 r!4213))) b!4092571))

(assert (= (and b!4092194 ((_ is Union!12003) (regex!7098 r!4213))) b!4092572))

(declare-fun b!4092583 () Bool)

(declare-fun b_free!114421 () Bool)

(declare-fun b_next!115125 () Bool)

(assert (=> b!4092583 (= b_free!114421 (not b_next!115125))))

(declare-fun tb!246111 () Bool)

(declare-fun t!338893 () Bool)

(assert (=> (and b!4092583 (= (toValue!9690 (transformation!7098 (h!49301 (t!338860 rules!3870)))) (toValue!9690 (transformation!7098 r!4213))) t!338893) tb!246111))

(declare-fun result!298644 () Bool)

(assert (= result!298644 result!298594))

(assert (=> d!1215042 t!338893))

(assert (=> d!1215068 t!338893))

(declare-fun b_and!315495 () Bool)

(declare-fun tp!1238870 () Bool)

(assert (=> b!4092583 (= tp!1238870 (and (=> t!338893 result!298644) b_and!315495))))

(declare-fun b_free!114423 () Bool)

(declare-fun b_next!115127 () Bool)

(assert (=> b!4092583 (= b_free!114423 (not b_next!115127))))

(declare-fun tb!246113 () Bool)

(declare-fun t!338895 () Bool)

(assert (=> (and b!4092583 (= (toChars!9549 (transformation!7098 (h!49301 (t!338860 rules!3870)))) (toChars!9549 (transformation!7098 r!4213))) t!338895) tb!246113))

(declare-fun result!298646 () Bool)

(assert (= result!298646 result!298612))

(assert (=> d!1215068 t!338895))

(declare-fun t!338897 () Bool)

(declare-fun tb!246115 () Bool)

(assert (=> (and b!4092583 (= (toChars!9549 (transformation!7098 (h!49301 (t!338860 rules!3870)))) (toChars!9549 (transformation!7098 (rule!10242 lt!1463654)))) t!338897) tb!246115))

(declare-fun result!298648 () Bool)

(assert (= result!298648 result!298618))

(assert (=> b!4092388 t!338897))

(declare-fun b_and!315497 () Bool)

(declare-fun tp!1238873 () Bool)

(assert (=> b!4092583 (= tp!1238873 (and (=> t!338895 result!298646) (=> t!338897 result!298648) b_and!315497))))

(declare-fun e!2539800 () Bool)

(assert (=> b!4092583 (= e!2539800 (and tp!1238870 tp!1238873))))

(declare-fun b!4092582 () Bool)

(declare-fun e!2539803 () Bool)

(declare-fun tp!1238871 () Bool)

(assert (=> b!4092582 (= e!2539803 (and tp!1238871 (inv!58588 (tag!7958 (h!49301 (t!338860 rules!3870)))) (inv!58592 (transformation!7098 (h!49301 (t!338860 rules!3870)))) e!2539800))))

(declare-fun b!4092581 () Bool)

(declare-fun e!2539801 () Bool)

(declare-fun tp!1238872 () Bool)

(assert (=> b!4092581 (= e!2539801 (and e!2539803 tp!1238872))))

(assert (=> b!4092203 (= tp!1238786 e!2539801)))

(assert (= b!4092582 b!4092583))

(assert (= b!4092581 b!4092582))

(assert (= (and b!4092203 ((_ is Cons!43881) (t!338860 rules!3870))) b!4092581))

(declare-fun m!4699609 () Bool)

(assert (=> b!4092582 m!4699609))

(declare-fun m!4699611 () Bool)

(assert (=> b!4092582 m!4699611))

(declare-fun b!4092584 () Bool)

(declare-fun e!2539804 () Bool)

(declare-fun tp!1238874 () Bool)

(assert (=> b!4092584 (= e!2539804 (and tp_is_empty!21009 tp!1238874))))

(assert (=> b!4092198 (= tp!1238792 e!2539804)))

(assert (= (and b!4092198 ((_ is Cons!43880) (t!338859 p!2988))) b!4092584))

(declare-fun b_lambda!120037 () Bool)

(assert (= b_lambda!120025 (or (and b!4092204 b_free!114409) (and b!4092205 b_free!114413 (= (toValue!9690 (transformation!7098 (h!49301 rules!3870))) (toValue!9690 (transformation!7098 r!4213)))) (and b!4092583 b_free!114421 (= (toValue!9690 (transformation!7098 (h!49301 (t!338860 rules!3870)))) (toValue!9690 (transformation!7098 r!4213)))) b_lambda!120037)))

(declare-fun b_lambda!120039 () Bool)

(assert (= b_lambda!120023 (or (and b!4092204 b_free!114411) (and b!4092205 b_free!114415 (= (toChars!9549 (transformation!7098 (h!49301 rules!3870))) (toChars!9549 (transformation!7098 r!4213)))) (and b!4092583 b_free!114423 (= (toChars!9549 (transformation!7098 (h!49301 (t!338860 rules!3870)))) (toChars!9549 (transformation!7098 r!4213)))) b_lambda!120039)))

(declare-fun b_lambda!120041 () Bool)

(assert (= b_lambda!120015 (or (and b!4092204 b_free!114409) (and b!4092205 b_free!114413 (= (toValue!9690 (transformation!7098 (h!49301 rules!3870))) (toValue!9690 (transformation!7098 r!4213)))) (and b!4092583 b_free!114421 (= (toValue!9690 (transformation!7098 (h!49301 (t!338860 rules!3870)))) (toValue!9690 (transformation!7098 r!4213)))) b_lambda!120041)))

(check-sat (not b!4092535) (not d!1215096) (not d!1215126) (not d!1215124) (not d!1215112) (not b!4092581) (not b!4092254) (not b!4092255) (not d!1215066) b_and!315479 (not b!4092565) (not b!4092251) (not b!4092499) b_and!315483 (not b!4092530) (not b_lambda!120027) (not b_lambda!120037) (not b!4092491) (not b_next!115125) (not b!4092252) (not d!1215128) (not bm!289228) (not b!4092349) (not b!4092253) (not b!4092532) (not b!4092388) (not b!4092533) (not b!4092547) (not b!4092416) (not b_next!115119) (not b!4092498) (not d!1215092) b_and!315485 (not b!4092540) (not b!4092584) (not b!4092566) (not tb!246097) b_and!315497 (not b!4092257) (not b_next!115127) (not b!4092250) (not b!4092571) (not b!4092249) (not b!4092492) (not b!4092466) (not b_next!115117) (not b_next!115113) (not b!4092553) (not b!4092404) b_and!315495 (not b!4092421) (not d!1215106) (not b!4092500) (not b!4092568) (not b_lambda!120039) (not d!1215120) (not bm!289237) (not tb!246081) (not b!4092570) (not b!4092383) (not tb!246093) (not b!4092493) (not b!4092529) (not d!1215114) (not d!1215118) (not b_next!115115) (not b!4092497) (not d!1215090) (not b!4092567) (not b!4092389) (not b!4092572) b_and!315481 (not b!4092263) (not b!4092413) (not d!1215122) tp_is_empty!21009 (not b!4092465) (not b!4092495) (not d!1215068) (not b_lambda!120041) (not b!4092494) (not b!4092582) (not d!1215044))
(check-sat b_and!315479 b_and!315483 (not b_next!115125) (not b_next!115119) b_and!315485 b_and!315495 (not b_next!115115) b_and!315481 b_and!315497 (not b_next!115127) (not b_next!115117) (not b_next!115113))
(get-model)

(declare-fun d!1215184 () Bool)

(assert (=> d!1215184 (= (isEmpty!26247 (tail!6385 p!2988)) ((_ is Nil!43880) (tail!6385 p!2988)))))

(assert (=> b!4092530 d!1215184))

(declare-fun d!1215186 () Bool)

(assert (=> d!1215186 (= (tail!6385 p!2988) (t!338859 p!2988))))

(assert (=> b!4092530 d!1215186))

(declare-fun d!1215188 () Bool)

(declare-fun lt!1463776 () Int)

(assert (=> d!1215188 (>= lt!1463776 0)))

(declare-fun e!2539856 () Int)

(assert (=> d!1215188 (= lt!1463776 e!2539856)))

(declare-fun c!705344 () Bool)

(assert (=> d!1215188 (= c!705344 ((_ is Nil!43880) lt!1463737))))

(assert (=> d!1215188 (= (size!32779 lt!1463737) lt!1463776)))

(declare-fun b!4092669 () Bool)

(assert (=> b!4092669 (= e!2539856 0)))

(declare-fun b!4092670 () Bool)

(assert (=> b!4092670 (= e!2539856 (+ 1 (size!32779 (t!338859 lt!1463737))))))

(assert (= (and d!1215188 c!705344) b!4092669))

(assert (= (and d!1215188 (not c!705344)) b!4092670))

(declare-fun m!4699707 () Bool)

(assert (=> b!4092670 m!4699707))

(assert (=> b!4092466 d!1215188))

(assert (=> b!4092466 d!1215064))

(declare-fun d!1215190 () Bool)

(declare-fun lt!1463777 () Int)

(assert (=> d!1215190 (>= lt!1463777 0)))

(declare-fun e!2539861 () Int)

(assert (=> d!1215190 (= lt!1463777 e!2539861)))

(declare-fun c!705347 () Bool)

(assert (=> d!1215190 (= c!705347 ((_ is Nil!43880) suffix!1518))))

(assert (=> d!1215190 (= (size!32779 suffix!1518) lt!1463777)))

(declare-fun b!4092677 () Bool)

(assert (=> b!4092677 (= e!2539861 0)))

(declare-fun b!4092678 () Bool)

(assert (=> b!4092678 (= e!2539861 (+ 1 (size!32779 (t!338859 suffix!1518))))))

(assert (= (and d!1215190 c!705347) b!4092677))

(assert (= (and d!1215190 (not c!705347)) b!4092678))

(declare-fun m!4699709 () Bool)

(assert (=> b!4092678 m!4699709))

(assert (=> b!4092466 d!1215190))

(assert (=> d!1215122 d!1215120))

(declare-fun d!1215192 () Bool)

(assert (=> d!1215192 (rulesInvariant!6030 thiss!26199 (t!338860 rules!3870))))

(assert (=> d!1215192 true))

(declare-fun _$66!593 () Unit!63409)

(assert (=> d!1215192 (= (choose!24998 thiss!26199 (h!49301 rules!3870) (t!338860 rules!3870)) _$66!593)))

(declare-fun bs!593391 () Bool)

(assert (= bs!593391 d!1215192))

(assert (=> bs!593391 m!4699257))

(assert (=> d!1215122 d!1215192))

(declare-fun d!1215194 () Bool)

(declare-fun res!1672823 () Bool)

(declare-fun e!2539862 () Bool)

(assert (=> d!1215194 (=> (not res!1672823) (not e!2539862))))

(assert (=> d!1215194 (= res!1672823 (rulesValid!2786 thiss!26199 (Cons!43881 (h!49301 rules!3870) (t!338860 rules!3870))))))

(assert (=> d!1215194 (= (rulesInvariant!6030 thiss!26199 (Cons!43881 (h!49301 rules!3870) (t!338860 rules!3870))) e!2539862)))

(declare-fun b!4092679 () Bool)

(assert (=> b!4092679 (= e!2539862 (noDuplicateTag!2787 thiss!26199 (Cons!43881 (h!49301 rules!3870) (t!338860 rules!3870)) Nil!43883))))

(assert (= (and d!1215194 res!1672823) b!4092679))

(declare-fun m!4699711 () Bool)

(assert (=> d!1215194 m!4699711))

(declare-fun m!4699713 () Bool)

(assert (=> b!4092679 m!4699713))

(assert (=> d!1215122 d!1215194))

(declare-fun bm!289249 () Bool)

(declare-fun call!289254 () Bool)

(assert (=> bm!289249 (= call!289254 (isEmpty!26247 (tail!6385 p!2988)))))

(declare-fun b!4092685 () Bool)

(declare-fun e!2539868 () Bool)

(assert (=> b!4092685 (= e!2539868 (nullable!4240 (derivativeStep!3641 (regex!7098 r!4213) (head!8651 p!2988))))))

(declare-fun b!4092686 () Bool)

(declare-fun res!1672827 () Bool)

(declare-fun e!2539870 () Bool)

(assert (=> b!4092686 (=> res!1672827 e!2539870)))

(assert (=> b!4092686 (= res!1672827 (not (isEmpty!26247 (tail!6385 (tail!6385 p!2988)))))))

(declare-fun b!4092687 () Bool)

(declare-fun e!2539871 () Bool)

(declare-fun e!2539869 () Bool)

(assert (=> b!4092687 (= e!2539871 e!2539869)))

(declare-fun c!705350 () Bool)

(assert (=> b!4092687 (= c!705350 ((_ is EmptyLang!12003) (derivativeStep!3641 (regex!7098 r!4213) (head!8651 p!2988))))))

(declare-fun b!4092688 () Bool)

(assert (=> b!4092688 (= e!2539868 (matchR!5944 (derivativeStep!3641 (derivativeStep!3641 (regex!7098 r!4213) (head!8651 p!2988)) (head!8651 (tail!6385 p!2988))) (tail!6385 (tail!6385 p!2988))))))

(declare-fun b!4092689 () Bool)

(declare-fun res!1672830 () Bool)

(declare-fun e!2539866 () Bool)

(assert (=> b!4092689 (=> (not res!1672830) (not e!2539866))))

(assert (=> b!4092689 (= res!1672830 (isEmpty!26247 (tail!6385 (tail!6385 p!2988))))))

(declare-fun b!4092690 () Bool)

(declare-fun res!1672826 () Bool)

(declare-fun e!2539872 () Bool)

(assert (=> b!4092690 (=> res!1672826 e!2539872)))

(assert (=> b!4092690 (= res!1672826 e!2539866)))

(declare-fun res!1672825 () Bool)

(assert (=> b!4092690 (=> (not res!1672825) (not e!2539866))))

(declare-fun lt!1463778 () Bool)

(assert (=> b!4092690 (= res!1672825 lt!1463778)))

(declare-fun d!1215196 () Bool)

(assert (=> d!1215196 e!2539871))

(declare-fun c!705352 () Bool)

(assert (=> d!1215196 (= c!705352 ((_ is EmptyExpr!12003) (derivativeStep!3641 (regex!7098 r!4213) (head!8651 p!2988))))))

(assert (=> d!1215196 (= lt!1463778 e!2539868)))

(declare-fun c!705351 () Bool)

(assert (=> d!1215196 (= c!705351 (isEmpty!26247 (tail!6385 p!2988)))))

(assert (=> d!1215196 (validRegex!5440 (derivativeStep!3641 (regex!7098 r!4213) (head!8651 p!2988)))))

(assert (=> d!1215196 (= (matchR!5944 (derivativeStep!3641 (regex!7098 r!4213) (head!8651 p!2988)) (tail!6385 p!2988)) lt!1463778)))

(declare-fun b!4092691 () Bool)

(assert (=> b!4092691 (= e!2539870 (not (= (head!8651 (tail!6385 p!2988)) (c!705274 (derivativeStep!3641 (regex!7098 r!4213) (head!8651 p!2988))))))))

(declare-fun b!4092692 () Bool)

(declare-fun res!1672832 () Bool)

(assert (=> b!4092692 (=> res!1672832 e!2539872)))

(assert (=> b!4092692 (= res!1672832 (not ((_ is ElementMatch!12003) (derivativeStep!3641 (regex!7098 r!4213) (head!8651 p!2988)))))))

(assert (=> b!4092692 (= e!2539869 e!2539872)))

(declare-fun b!4092693 () Bool)

(assert (=> b!4092693 (= e!2539869 (not lt!1463778))))

(declare-fun b!4092694 () Bool)

(assert (=> b!4092694 (= e!2539871 (= lt!1463778 call!289254))))

(declare-fun b!4092695 () Bool)

(declare-fun e!2539867 () Bool)

(assert (=> b!4092695 (= e!2539872 e!2539867)))

(declare-fun res!1672831 () Bool)

(assert (=> b!4092695 (=> (not res!1672831) (not e!2539867))))

(assert (=> b!4092695 (= res!1672831 (not lt!1463778))))

(declare-fun b!4092696 () Bool)

(assert (=> b!4092696 (= e!2539866 (= (head!8651 (tail!6385 p!2988)) (c!705274 (derivativeStep!3641 (regex!7098 r!4213) (head!8651 p!2988)))))))

(declare-fun b!4092697 () Bool)

(declare-fun res!1672828 () Bool)

(assert (=> b!4092697 (=> (not res!1672828) (not e!2539866))))

(assert (=> b!4092697 (= res!1672828 (not call!289254))))

(declare-fun b!4092698 () Bool)

(assert (=> b!4092698 (= e!2539867 e!2539870)))

(declare-fun res!1672829 () Bool)

(assert (=> b!4092698 (=> res!1672829 e!2539870)))

(assert (=> b!4092698 (= res!1672829 call!289254)))

(assert (= (and d!1215196 c!705351) b!4092685))

(assert (= (and d!1215196 (not c!705351)) b!4092688))

(assert (= (and d!1215196 c!705352) b!4092694))

(assert (= (and d!1215196 (not c!705352)) b!4092687))

(assert (= (and b!4092687 c!705350) b!4092693))

(assert (= (and b!4092687 (not c!705350)) b!4092692))

(assert (= (and b!4092692 (not res!1672832)) b!4092690))

(assert (= (and b!4092690 res!1672825) b!4092697))

(assert (= (and b!4092697 res!1672828) b!4092689))

(assert (= (and b!4092689 res!1672830) b!4092696))

(assert (= (and b!4092690 (not res!1672826)) b!4092695))

(assert (= (and b!4092695 res!1672831) b!4092698))

(assert (= (and b!4092698 (not res!1672829)) b!4092686))

(assert (= (and b!4092686 (not res!1672827)) b!4092691))

(assert (= (or b!4092694 b!4092697 b!4092698) bm!289249))

(assert (=> b!4092689 m!4699593))

(declare-fun m!4699723 () Bool)

(assert (=> b!4092689 m!4699723))

(assert (=> b!4092689 m!4699723))

(declare-fun m!4699725 () Bool)

(assert (=> b!4092689 m!4699725))

(assert (=> b!4092691 m!4699593))

(declare-fun m!4699727 () Bool)

(assert (=> b!4092691 m!4699727))

(assert (=> bm!289249 m!4699593))

(assert (=> bm!289249 m!4699595))

(assert (=> b!4092686 m!4699593))

(assert (=> b!4092686 m!4699723))

(assert (=> b!4092686 m!4699723))

(assert (=> b!4092686 m!4699725))

(assert (=> b!4092685 m!4699603))

(declare-fun m!4699729 () Bool)

(assert (=> b!4092685 m!4699729))

(assert (=> d!1215196 m!4699593))

(assert (=> d!1215196 m!4699595))

(assert (=> d!1215196 m!4699603))

(declare-fun m!4699731 () Bool)

(assert (=> d!1215196 m!4699731))

(assert (=> b!4092688 m!4699593))

(assert (=> b!4092688 m!4699727))

(assert (=> b!4092688 m!4699603))

(assert (=> b!4092688 m!4699727))

(declare-fun m!4699733 () Bool)

(assert (=> b!4092688 m!4699733))

(assert (=> b!4092688 m!4699593))

(assert (=> b!4092688 m!4699723))

(assert (=> b!4092688 m!4699733))

(assert (=> b!4092688 m!4699723))

(declare-fun m!4699735 () Bool)

(assert (=> b!4092688 m!4699735))

(assert (=> b!4092696 m!4699593))

(assert (=> b!4092696 m!4699727))

(assert (=> b!4092532 d!1215196))

(declare-fun b!4092734 () Bool)

(declare-fun e!2539895 () Regex!12003)

(declare-fun e!2539898 () Regex!12003)

(assert (=> b!4092734 (= e!2539895 e!2539898)))

(declare-fun c!705366 () Bool)

(assert (=> b!4092734 (= c!705366 ((_ is Star!12003) (regex!7098 r!4213)))))

(declare-fun b!4092735 () Bool)

(declare-fun e!2539897 () Regex!12003)

(declare-fun e!2539894 () Regex!12003)

(assert (=> b!4092735 (= e!2539897 e!2539894)))

(declare-fun c!705367 () Bool)

(assert (=> b!4092735 (= c!705367 ((_ is ElementMatch!12003) (regex!7098 r!4213)))))

(declare-fun b!4092736 () Bool)

(declare-fun call!289266 () Regex!12003)

(declare-fun call!289263 () Regex!12003)

(assert (=> b!4092736 (= e!2539895 (Union!12003 call!289266 call!289263))))

(declare-fun d!1215202 () Bool)

(declare-fun lt!1463783 () Regex!12003)

(assert (=> d!1215202 (validRegex!5440 lt!1463783)))

(assert (=> d!1215202 (= lt!1463783 e!2539897)))

(declare-fun c!705365 () Bool)

(assert (=> d!1215202 (= c!705365 (or ((_ is EmptyExpr!12003) (regex!7098 r!4213)) ((_ is EmptyLang!12003) (regex!7098 r!4213))))))

(assert (=> d!1215202 (validRegex!5440 (regex!7098 r!4213))))

(assert (=> d!1215202 (= (derivativeStep!3641 (regex!7098 r!4213) (head!8651 p!2988)) lt!1463783)))

(declare-fun b!4092737 () Bool)

(assert (=> b!4092737 (= e!2539897 EmptyLang!12003)))

(declare-fun b!4092738 () Bool)

(declare-fun e!2539896 () Regex!12003)

(declare-fun call!289265 () Regex!12003)

(assert (=> b!4092738 (= e!2539896 (Union!12003 (Concat!19332 call!289265 (regTwo!24518 (regex!7098 r!4213))) call!289266))))

(declare-fun b!4092739 () Bool)

(declare-fun call!289264 () Regex!12003)

(assert (=> b!4092739 (= e!2539898 (Concat!19332 call!289264 (regex!7098 r!4213)))))

(declare-fun bm!289258 () Bool)

(assert (=> bm!289258 (= call!289265 call!289264)))

(declare-fun bm!289259 () Bool)

(declare-fun c!705364 () Bool)

(assert (=> bm!289259 (= call!289263 (derivativeStep!3641 (ite c!705364 (regTwo!24519 (regex!7098 r!4213)) (ite c!705366 (reg!12332 (regex!7098 r!4213)) (regOne!24518 (regex!7098 r!4213)))) (head!8651 p!2988)))))

(declare-fun bm!289260 () Bool)

(assert (=> bm!289260 (= call!289264 call!289263)))

(declare-fun b!4092740 () Bool)

(assert (=> b!4092740 (= e!2539896 (Union!12003 (Concat!19332 call!289265 (regTwo!24518 (regex!7098 r!4213))) EmptyLang!12003))))

(declare-fun b!4092741 () Bool)

(declare-fun c!705368 () Bool)

(assert (=> b!4092741 (= c!705368 (nullable!4240 (regOne!24518 (regex!7098 r!4213))))))

(assert (=> b!4092741 (= e!2539898 e!2539896)))

(declare-fun bm!289261 () Bool)

(assert (=> bm!289261 (= call!289266 (derivativeStep!3641 (ite c!705364 (regOne!24519 (regex!7098 r!4213)) (regTwo!24518 (regex!7098 r!4213))) (head!8651 p!2988)))))

(declare-fun b!4092742 () Bool)

(assert (=> b!4092742 (= c!705364 ((_ is Union!12003) (regex!7098 r!4213)))))

(assert (=> b!4092742 (= e!2539894 e!2539895)))

(declare-fun b!4092743 () Bool)

(assert (=> b!4092743 (= e!2539894 (ite (= (head!8651 p!2988) (c!705274 (regex!7098 r!4213))) EmptyExpr!12003 EmptyLang!12003))))

(assert (= (and d!1215202 c!705365) b!4092737))

(assert (= (and d!1215202 (not c!705365)) b!4092735))

(assert (= (and b!4092735 c!705367) b!4092743))

(assert (= (and b!4092735 (not c!705367)) b!4092742))

(assert (= (and b!4092742 c!705364) b!4092736))

(assert (= (and b!4092742 (not c!705364)) b!4092734))

(assert (= (and b!4092734 c!705366) b!4092739))

(assert (= (and b!4092734 (not c!705366)) b!4092741))

(assert (= (and b!4092741 c!705368) b!4092738))

(assert (= (and b!4092741 (not c!705368)) b!4092740))

(assert (= (or b!4092738 b!4092740) bm!289258))

(assert (= (or b!4092739 bm!289258) bm!289260))

(assert (= (or b!4092736 b!4092738) bm!289261))

(assert (= (or b!4092736 bm!289260) bm!289259))

(declare-fun m!4699757 () Bool)

(assert (=> d!1215202 m!4699757))

(assert (=> d!1215202 m!4699601))

(assert (=> bm!289259 m!4699597))

(declare-fun m!4699759 () Bool)

(assert (=> bm!289259 m!4699759))

(declare-fun m!4699761 () Bool)

(assert (=> b!4092741 m!4699761))

(assert (=> bm!289261 m!4699597))

(declare-fun m!4699763 () Bool)

(assert (=> bm!289261 m!4699763))

(assert (=> b!4092532 d!1215202))

(declare-fun d!1215220 () Bool)

(assert (=> d!1215220 (= (head!8651 p!2988) (h!49300 p!2988))))

(assert (=> b!4092532 d!1215220))

(assert (=> b!4092532 d!1215186))

(declare-fun d!1215222 () Bool)

(declare-fun lt!1463784 () Int)

(assert (=> d!1215222 (>= lt!1463784 0)))

(declare-fun e!2539899 () Int)

(assert (=> d!1215222 (= lt!1463784 e!2539899)))

(declare-fun c!705369 () Bool)

(assert (=> d!1215222 (= c!705369 ((_ is Nil!43880) (t!338859 p!2988)))))

(assert (=> d!1215222 (= (size!32779 (t!338859 p!2988)) lt!1463784)))

(declare-fun b!4092744 () Bool)

(assert (=> b!4092744 (= e!2539899 0)))

(declare-fun b!4092745 () Bool)

(assert (=> b!4092745 (= e!2539899 (+ 1 (size!32779 (t!338859 (t!338859 p!2988)))))))

(assert (= (and d!1215222 c!705369) b!4092744))

(assert (= (and d!1215222 (not c!705369)) b!4092745))

(declare-fun m!4699765 () Bool)

(assert (=> b!4092745 m!4699765))

(assert (=> b!4092263 d!1215222))

(declare-fun b!4092747 () Bool)

(declare-fun e!2539901 () List!44004)

(assert (=> b!4092747 (= e!2539901 (Cons!43880 (h!49300 (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463752))))) (++!11504 (t!338859 (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463752))))) (_2!24540 (get!14391 lt!1463752)))))))

(declare-fun b!4092746 () Bool)

(assert (=> b!4092746 (= e!2539901 (_2!24540 (get!14391 lt!1463752)))))

(declare-fun b!4092749 () Bool)

(declare-fun e!2539900 () Bool)

(declare-fun lt!1463785 () List!44004)

(assert (=> b!4092749 (= e!2539900 (or (not (= (_2!24540 (get!14391 lt!1463752)) Nil!43880)) (= lt!1463785 (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463752)))))))))

(declare-fun d!1215224 () Bool)

(assert (=> d!1215224 e!2539900))

(declare-fun res!1672842 () Bool)

(assert (=> d!1215224 (=> (not res!1672842) (not e!2539900))))

(assert (=> d!1215224 (= res!1672842 (= (content!6767 lt!1463785) ((_ map or) (content!6767 (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463752))))) (content!6767 (_2!24540 (get!14391 lt!1463752))))))))

(assert (=> d!1215224 (= lt!1463785 e!2539901)))

(declare-fun c!705370 () Bool)

(assert (=> d!1215224 (= c!705370 ((_ is Nil!43880) (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463752))))))))

(assert (=> d!1215224 (= (++!11504 (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463752)))) (_2!24540 (get!14391 lt!1463752))) lt!1463785)))

(declare-fun b!4092748 () Bool)

(declare-fun res!1672843 () Bool)

(assert (=> b!4092748 (=> (not res!1672843) (not e!2539900))))

(assert (=> b!4092748 (= res!1672843 (= (size!32779 lt!1463785) (+ (size!32779 (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463752))))) (size!32779 (_2!24540 (get!14391 lt!1463752))))))))

(assert (= (and d!1215224 c!705370) b!4092746))

(assert (= (and d!1215224 (not c!705370)) b!4092747))

(assert (= (and d!1215224 res!1672842) b!4092748))

(assert (= (and b!4092748 res!1672843) b!4092749))

(declare-fun m!4699767 () Bool)

(assert (=> b!4092747 m!4699767))

(declare-fun m!4699769 () Bool)

(assert (=> d!1215224 m!4699769))

(assert (=> d!1215224 m!4699555))

(declare-fun m!4699771 () Bool)

(assert (=> d!1215224 m!4699771))

(declare-fun m!4699773 () Bool)

(assert (=> d!1215224 m!4699773))

(declare-fun m!4699775 () Bool)

(assert (=> b!4092748 m!4699775))

(assert (=> b!4092748 m!4699555))

(declare-fun m!4699777 () Bool)

(assert (=> b!4092748 m!4699777))

(assert (=> b!4092748 m!4699543))

(assert (=> b!4092491 d!1215224))

(declare-fun d!1215226 () Bool)

(declare-fun list!16290 (Conc!13309) List!44004)

(assert (=> d!1215226 (= (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463752)))) (list!16290 (c!705275 (charsOf!4858 (_1!24540 (get!14391 lt!1463752))))))))

(declare-fun bs!593396 () Bool)

(assert (= bs!593396 d!1215226))

(declare-fun m!4699779 () Bool)

(assert (=> bs!593396 m!4699779))

(assert (=> b!4092491 d!1215226))

(declare-fun d!1215228 () Bool)

(declare-fun lt!1463790 () BalanceConc!26212)

(assert (=> d!1215228 (= (list!16288 lt!1463790) (originalCharacters!7692 (_1!24540 (get!14391 lt!1463752))))))

(assert (=> d!1215228 (= lt!1463790 (dynLambda!18794 (toChars!9549 (transformation!7098 (rule!10242 (_1!24540 (get!14391 lt!1463752))))) (value!222945 (_1!24540 (get!14391 lt!1463752)))))))

(assert (=> d!1215228 (= (charsOf!4858 (_1!24540 (get!14391 lt!1463752))) lt!1463790)))

(declare-fun b_lambda!120051 () Bool)

(assert (=> (not b_lambda!120051) (not d!1215228)))

(declare-fun t!338924 () Bool)

(declare-fun tb!246141 () Bool)

(assert (=> (and b!4092204 (= (toChars!9549 (transformation!7098 r!4213)) (toChars!9549 (transformation!7098 (rule!10242 (_1!24540 (get!14391 lt!1463752)))))) t!338924) tb!246141))

(declare-fun b!4092754 () Bool)

(declare-fun e!2539904 () Bool)

(declare-fun tp!1238877 () Bool)

(assert (=> b!4092754 (= e!2539904 (and (inv!58595 (c!705275 (dynLambda!18794 (toChars!9549 (transformation!7098 (rule!10242 (_1!24540 (get!14391 lt!1463752))))) (value!222945 (_1!24540 (get!14391 lt!1463752)))))) tp!1238877))))

(declare-fun result!298674 () Bool)

(assert (=> tb!246141 (= result!298674 (and (inv!58596 (dynLambda!18794 (toChars!9549 (transformation!7098 (rule!10242 (_1!24540 (get!14391 lt!1463752))))) (value!222945 (_1!24540 (get!14391 lt!1463752))))) e!2539904))))

(assert (= tb!246141 b!4092754))

(declare-fun m!4699793 () Bool)

(assert (=> b!4092754 m!4699793))

(declare-fun m!4699795 () Bool)

(assert (=> tb!246141 m!4699795))

(assert (=> d!1215228 t!338924))

(declare-fun b_and!315523 () Bool)

(assert (= b_and!315483 (and (=> t!338924 result!298674) b_and!315523)))

(declare-fun tb!246143 () Bool)

(declare-fun t!338926 () Bool)

(assert (=> (and b!4092205 (= (toChars!9549 (transformation!7098 (h!49301 rules!3870))) (toChars!9549 (transformation!7098 (rule!10242 (_1!24540 (get!14391 lt!1463752)))))) t!338926) tb!246143))

(declare-fun result!298676 () Bool)

(assert (= result!298676 result!298674))

(assert (=> d!1215228 t!338926))

(declare-fun b_and!315525 () Bool)

(assert (= b_and!315485 (and (=> t!338926 result!298676) b_and!315525)))

(declare-fun t!338928 () Bool)

(declare-fun tb!246145 () Bool)

(assert (=> (and b!4092583 (= (toChars!9549 (transformation!7098 (h!49301 (t!338860 rules!3870)))) (toChars!9549 (transformation!7098 (rule!10242 (_1!24540 (get!14391 lt!1463752)))))) t!338928) tb!246145))

(declare-fun result!298678 () Bool)

(assert (= result!298678 result!298674))

(assert (=> d!1215228 t!338928))

(declare-fun b_and!315527 () Bool)

(assert (= b_and!315497 (and (=> t!338928 result!298678) b_and!315527)))

(declare-fun m!4699797 () Bool)

(assert (=> d!1215228 m!4699797))

(declare-fun m!4699799 () Bool)

(assert (=> d!1215228 m!4699799))

(assert (=> b!4092491 d!1215228))

(declare-fun d!1215238 () Bool)

(assert (=> d!1215238 (= (get!14391 lt!1463752) (v!39993 lt!1463752))))

(assert (=> b!4092491 d!1215238))

(declare-fun d!1215240 () Bool)

(declare-fun res!1672852 () Bool)

(declare-fun e!2539913 () Bool)

(assert (=> d!1215240 (=> res!1672852 e!2539913)))

(assert (=> d!1215240 (= res!1672852 ((_ is Nil!43881) (t!338860 rules!3870)))))

(assert (=> d!1215240 (= (noDuplicateTag!2787 thiss!26199 (t!338860 rules!3870) Nil!43883) e!2539913)))

(declare-fun b!4092765 () Bool)

(declare-fun e!2539914 () Bool)

(assert (=> b!4092765 (= e!2539913 e!2539914)))

(declare-fun res!1672853 () Bool)

(assert (=> b!4092765 (=> (not res!1672853) (not e!2539914))))

(declare-fun contains!8780 (List!44007 String!50390) Bool)

(assert (=> b!4092765 (= res!1672853 (not (contains!8780 Nil!43883 (tag!7958 (h!49301 (t!338860 rules!3870))))))))

(declare-fun b!4092766 () Bool)

(assert (=> b!4092766 (= e!2539914 (noDuplicateTag!2787 thiss!26199 (t!338860 (t!338860 rules!3870)) (Cons!43883 (tag!7958 (h!49301 (t!338860 rules!3870))) Nil!43883)))))

(assert (= (and d!1215240 (not res!1672852)) b!4092765))

(assert (= (and b!4092765 res!1672853) b!4092766))

(declare-fun m!4699801 () Bool)

(assert (=> b!4092765 m!4699801))

(declare-fun m!4699807 () Bool)

(assert (=> b!4092766 m!4699807))

(assert (=> b!4092500 d!1215240))

(assert (=> bm!289237 d!1215130))

(assert (=> b!4092498 d!1215238))

(declare-fun d!1215244 () Bool)

(assert (=> d!1215244 (= (apply!10281 (transformation!7098 (rule!10242 (_1!24540 (get!14391 lt!1463752)))) (seqFromList!5315 (originalCharacters!7692 (_1!24540 (get!14391 lt!1463752))))) (dynLambda!18790 (toValue!9690 (transformation!7098 (rule!10242 (_1!24540 (get!14391 lt!1463752))))) (seqFromList!5315 (originalCharacters!7692 (_1!24540 (get!14391 lt!1463752))))))))

(declare-fun b_lambda!120055 () Bool)

(assert (=> (not b_lambda!120055) (not d!1215244)))

(declare-fun tb!246147 () Bool)

(declare-fun t!338930 () Bool)

(assert (=> (and b!4092204 (= (toValue!9690 (transformation!7098 r!4213)) (toValue!9690 (transformation!7098 (rule!10242 (_1!24540 (get!14391 lt!1463752)))))) t!338930) tb!246147))

(declare-fun result!298680 () Bool)

(assert (=> tb!246147 (= result!298680 (inv!21 (dynLambda!18790 (toValue!9690 (transformation!7098 (rule!10242 (_1!24540 (get!14391 lt!1463752))))) (seqFromList!5315 (originalCharacters!7692 (_1!24540 (get!14391 lt!1463752)))))))))

(declare-fun m!4699809 () Bool)

(assert (=> tb!246147 m!4699809))

(assert (=> d!1215244 t!338930))

(declare-fun b_and!315529 () Bool)

(assert (= b_and!315479 (and (=> t!338930 result!298680) b_and!315529)))

(declare-fun t!338932 () Bool)

(declare-fun tb!246149 () Bool)

(assert (=> (and b!4092205 (= (toValue!9690 (transformation!7098 (h!49301 rules!3870))) (toValue!9690 (transformation!7098 (rule!10242 (_1!24540 (get!14391 lt!1463752)))))) t!338932) tb!246149))

(declare-fun result!298682 () Bool)

(assert (= result!298682 result!298680))

(assert (=> d!1215244 t!338932))

(declare-fun b_and!315531 () Bool)

(assert (= b_and!315481 (and (=> t!338932 result!298682) b_and!315531)))

(declare-fun tb!246151 () Bool)

(declare-fun t!338934 () Bool)

(assert (=> (and b!4092583 (= (toValue!9690 (transformation!7098 (h!49301 (t!338860 rules!3870)))) (toValue!9690 (transformation!7098 (rule!10242 (_1!24540 (get!14391 lt!1463752)))))) t!338934) tb!246151))

(declare-fun result!298684 () Bool)

(assert (= result!298684 result!298680))

(assert (=> d!1215244 t!338934))

(declare-fun b_and!315533 () Bool)

(assert (= b_and!315495 (and (=> t!338934 result!298684) b_and!315533)))

(assert (=> d!1215244 m!4699581))

(declare-fun m!4699815 () Bool)

(assert (=> d!1215244 m!4699815))

(assert (=> b!4092498 d!1215244))

(declare-fun d!1215250 () Bool)

(assert (=> d!1215250 (= (seqFromList!5315 (originalCharacters!7692 (_1!24540 (get!14391 lt!1463752)))) (fromListB!2438 (originalCharacters!7692 (_1!24540 (get!14391 lt!1463752)))))))

(declare-fun bs!593402 () Bool)

(assert (= bs!593402 d!1215250))

(declare-fun m!4699817 () Bool)

(assert (=> bs!593402 m!4699817))

(assert (=> b!4092498 d!1215250))

(declare-fun b!4092796 () Bool)

(declare-fun e!2539934 () Bool)

(declare-fun inv!15 (TokenValue!7328) Bool)

(assert (=> b!4092796 (= e!2539934 (inv!15 (dynLambda!18790 (toValue!9690 (transformation!7098 r!4213)) lt!1463658)))))

(declare-fun d!1215252 () Bool)

(declare-fun c!705382 () Bool)

(assert (=> d!1215252 (= c!705382 ((_ is IntegerValue!21984) (dynLambda!18790 (toValue!9690 (transformation!7098 r!4213)) lt!1463658)))))

(declare-fun e!2539935 () Bool)

(assert (=> d!1215252 (= (inv!21 (dynLambda!18790 (toValue!9690 (transformation!7098 r!4213)) lt!1463658)) e!2539935)))

(declare-fun b!4092797 () Bool)

(declare-fun e!2539933 () Bool)

(declare-fun inv!17 (TokenValue!7328) Bool)

(assert (=> b!4092797 (= e!2539933 (inv!17 (dynLambda!18790 (toValue!9690 (transformation!7098 r!4213)) lt!1463658)))))

(declare-fun b!4092798 () Bool)

(declare-fun res!1672867 () Bool)

(assert (=> b!4092798 (=> res!1672867 e!2539934)))

(assert (=> b!4092798 (= res!1672867 (not ((_ is IntegerValue!21986) (dynLambda!18790 (toValue!9690 (transformation!7098 r!4213)) lt!1463658))))))

(assert (=> b!4092798 (= e!2539933 e!2539934)))

(declare-fun b!4092799 () Bool)

(assert (=> b!4092799 (= e!2539935 e!2539933)))

(declare-fun c!705381 () Bool)

(assert (=> b!4092799 (= c!705381 ((_ is IntegerValue!21985) (dynLambda!18790 (toValue!9690 (transformation!7098 r!4213)) lt!1463658)))))

(declare-fun b!4092800 () Bool)

(declare-fun inv!16 (TokenValue!7328) Bool)

(assert (=> b!4092800 (= e!2539935 (inv!16 (dynLambda!18790 (toValue!9690 (transformation!7098 r!4213)) lt!1463658)))))

(assert (= (and d!1215252 c!705382) b!4092800))

(assert (= (and d!1215252 (not c!705382)) b!4092799))

(assert (= (and b!4092799 c!705381) b!4092797))

(assert (= (and b!4092799 (not c!705381)) b!4092798))

(assert (= (and b!4092798 (not res!1672867)) b!4092796))

(declare-fun m!4699831 () Bool)

(assert (=> b!4092796 m!4699831))

(declare-fun m!4699833 () Bool)

(assert (=> b!4092797 m!4699833))

(declare-fun m!4699835 () Bool)

(assert (=> b!4092800 m!4699835))

(assert (=> tb!246081 d!1215252))

(declare-fun d!1215258 () Bool)

(assert (=> d!1215258 (= (get!14391 lt!1463678) (v!39993 lt!1463678))))

(assert (=> b!4092255 d!1215258))

(declare-fun d!1215260 () Bool)

(assert (=> d!1215260 (= (apply!10281 (transformation!7098 (rule!10242 (_1!24540 (get!14391 lt!1463678)))) (seqFromList!5315 (originalCharacters!7692 (_1!24540 (get!14391 lt!1463678))))) (dynLambda!18790 (toValue!9690 (transformation!7098 (rule!10242 (_1!24540 (get!14391 lt!1463678))))) (seqFromList!5315 (originalCharacters!7692 (_1!24540 (get!14391 lt!1463678))))))))

(declare-fun b_lambda!120057 () Bool)

(assert (=> (not b_lambda!120057) (not d!1215260)))

(declare-fun t!338936 () Bool)

(declare-fun tb!246153 () Bool)

(assert (=> (and b!4092204 (= (toValue!9690 (transformation!7098 r!4213)) (toValue!9690 (transformation!7098 (rule!10242 (_1!24540 (get!14391 lt!1463678)))))) t!338936) tb!246153))

(declare-fun result!298686 () Bool)

(assert (=> tb!246153 (= result!298686 (inv!21 (dynLambda!18790 (toValue!9690 (transformation!7098 (rule!10242 (_1!24540 (get!14391 lt!1463678))))) (seqFromList!5315 (originalCharacters!7692 (_1!24540 (get!14391 lt!1463678)))))))))

(declare-fun m!4699837 () Bool)

(assert (=> tb!246153 m!4699837))

(assert (=> d!1215260 t!338936))

(declare-fun b_and!315535 () Bool)

(assert (= b_and!315529 (and (=> t!338936 result!298686) b_and!315535)))

(declare-fun t!338938 () Bool)

(declare-fun tb!246155 () Bool)

(assert (=> (and b!4092205 (= (toValue!9690 (transformation!7098 (h!49301 rules!3870))) (toValue!9690 (transformation!7098 (rule!10242 (_1!24540 (get!14391 lt!1463678)))))) t!338938) tb!246155))

(declare-fun result!298688 () Bool)

(assert (= result!298688 result!298686))

(assert (=> d!1215260 t!338938))

(declare-fun b_and!315537 () Bool)

(assert (= b_and!315531 (and (=> t!338938 result!298688) b_and!315537)))

(declare-fun tb!246157 () Bool)

(declare-fun t!338940 () Bool)

(assert (=> (and b!4092583 (= (toValue!9690 (transformation!7098 (h!49301 (t!338860 rules!3870)))) (toValue!9690 (transformation!7098 (rule!10242 (_1!24540 (get!14391 lt!1463678)))))) t!338940) tb!246157))

(declare-fun result!298690 () Bool)

(assert (= result!298690 result!298686))

(assert (=> d!1215260 t!338940))

(declare-fun b_and!315539 () Bool)

(assert (= b_and!315533 (and (=> t!338940 result!298690) b_and!315539)))

(assert (=> d!1215260 m!4699331))

(declare-fun m!4699839 () Bool)

(assert (=> d!1215260 m!4699839))

(assert (=> b!4092255 d!1215260))

(declare-fun d!1215262 () Bool)

(assert (=> d!1215262 (= (seqFromList!5315 (originalCharacters!7692 (_1!24540 (get!14391 lt!1463678)))) (fromListB!2438 (originalCharacters!7692 (_1!24540 (get!14391 lt!1463678)))))))

(declare-fun bs!593404 () Bool)

(assert (= bs!593404 d!1215262))

(declare-fun m!4699841 () Bool)

(assert (=> bs!593404 m!4699841))

(assert (=> b!4092255 d!1215262))

(declare-fun d!1215264 () Bool)

(assert (=> d!1215264 (= (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463678)))) (list!16290 (c!705275 (charsOf!4858 (_1!24540 (get!14391 lt!1463678))))))))

(declare-fun bs!593405 () Bool)

(assert (= bs!593405 d!1215264))

(declare-fun m!4699843 () Bool)

(assert (=> bs!593405 m!4699843))

(assert (=> b!4092253 d!1215264))

(declare-fun d!1215266 () Bool)

(declare-fun lt!1463793 () BalanceConc!26212)

(assert (=> d!1215266 (= (list!16288 lt!1463793) (originalCharacters!7692 (_1!24540 (get!14391 lt!1463678))))))

(assert (=> d!1215266 (= lt!1463793 (dynLambda!18794 (toChars!9549 (transformation!7098 (rule!10242 (_1!24540 (get!14391 lt!1463678))))) (value!222945 (_1!24540 (get!14391 lt!1463678)))))))

(assert (=> d!1215266 (= (charsOf!4858 (_1!24540 (get!14391 lt!1463678))) lt!1463793)))

(declare-fun b_lambda!120059 () Bool)

(assert (=> (not b_lambda!120059) (not d!1215266)))

(declare-fun tb!246159 () Bool)

(declare-fun t!338942 () Bool)

(assert (=> (and b!4092204 (= (toChars!9549 (transformation!7098 r!4213)) (toChars!9549 (transformation!7098 (rule!10242 (_1!24540 (get!14391 lt!1463678)))))) t!338942) tb!246159))

(declare-fun b!4092801 () Bool)

(declare-fun e!2539937 () Bool)

(declare-fun tp!1238878 () Bool)

(assert (=> b!4092801 (= e!2539937 (and (inv!58595 (c!705275 (dynLambda!18794 (toChars!9549 (transformation!7098 (rule!10242 (_1!24540 (get!14391 lt!1463678))))) (value!222945 (_1!24540 (get!14391 lt!1463678)))))) tp!1238878))))

(declare-fun result!298692 () Bool)

(assert (=> tb!246159 (= result!298692 (and (inv!58596 (dynLambda!18794 (toChars!9549 (transformation!7098 (rule!10242 (_1!24540 (get!14391 lt!1463678))))) (value!222945 (_1!24540 (get!14391 lt!1463678))))) e!2539937))))

(assert (= tb!246159 b!4092801))

(declare-fun m!4699845 () Bool)

(assert (=> b!4092801 m!4699845))

(declare-fun m!4699847 () Bool)

(assert (=> tb!246159 m!4699847))

(assert (=> d!1215266 t!338942))

(declare-fun b_and!315541 () Bool)

(assert (= b_and!315523 (and (=> t!338942 result!298692) b_and!315541)))

(declare-fun tb!246161 () Bool)

(declare-fun t!338944 () Bool)

(assert (=> (and b!4092205 (= (toChars!9549 (transformation!7098 (h!49301 rules!3870))) (toChars!9549 (transformation!7098 (rule!10242 (_1!24540 (get!14391 lt!1463678)))))) t!338944) tb!246161))

(declare-fun result!298694 () Bool)

(assert (= result!298694 result!298692))

(assert (=> d!1215266 t!338944))

(declare-fun b_and!315543 () Bool)

(assert (= b_and!315525 (and (=> t!338944 result!298694) b_and!315543)))

(declare-fun tb!246163 () Bool)

(declare-fun t!338946 () Bool)

(assert (=> (and b!4092583 (= (toChars!9549 (transformation!7098 (h!49301 (t!338860 rules!3870)))) (toChars!9549 (transformation!7098 (rule!10242 (_1!24540 (get!14391 lt!1463678)))))) t!338946) tb!246163))

(declare-fun result!298696 () Bool)

(assert (= result!298696 result!298692))

(assert (=> d!1215266 t!338946))

(declare-fun b_and!315545 () Bool)

(assert (= b_and!315527 (and (=> t!338946 result!298696) b_and!315545)))

(declare-fun m!4699849 () Bool)

(assert (=> d!1215266 m!4699849))

(declare-fun m!4699851 () Bool)

(assert (=> d!1215266 m!4699851))

(assert (=> b!4092253 d!1215266))

(assert (=> b!4092253 d!1215258))

(declare-fun d!1215268 () Bool)

(declare-fun lt!1463794 () Int)

(assert (=> d!1215268 (>= lt!1463794 0)))

(declare-fun e!2539938 () Int)

(assert (=> d!1215268 (= lt!1463794 e!2539938)))

(declare-fun c!705383 () Bool)

(assert (=> d!1215268 (= c!705383 ((_ is Nil!43880) (originalCharacters!7692 lt!1463654)))))

(assert (=> d!1215268 (= (size!32779 (originalCharacters!7692 lt!1463654)) lt!1463794)))

(declare-fun b!4092802 () Bool)

(assert (=> b!4092802 (= e!2539938 0)))

(declare-fun b!4092803 () Bool)

(assert (=> b!4092803 (= e!2539938 (+ 1 (size!32779 (t!338859 (originalCharacters!7692 lt!1463654)))))))

(assert (= (and d!1215268 c!705383) b!4092802))

(assert (= (and d!1215268 (not c!705383)) b!4092803))

(declare-fun m!4699853 () Bool)

(assert (=> b!4092803 m!4699853))

(assert (=> b!4092389 d!1215268))

(declare-fun d!1215270 () Bool)

(declare-fun c!705386 () Bool)

(assert (=> d!1215270 (= c!705386 ((_ is Node!13309) (c!705275 (dynLambda!18794 (toChars!9549 (transformation!7098 (rule!10242 lt!1463654))) (value!222945 lt!1463654)))))))

(declare-fun e!2539943 () Bool)

(assert (=> d!1215270 (= (inv!58595 (c!705275 (dynLambda!18794 (toChars!9549 (transformation!7098 (rule!10242 lt!1463654))) (value!222945 lt!1463654)))) e!2539943)))

(declare-fun b!4092810 () Bool)

(declare-fun inv!58597 (Conc!13309) Bool)

(assert (=> b!4092810 (= e!2539943 (inv!58597 (c!705275 (dynLambda!18794 (toChars!9549 (transformation!7098 (rule!10242 lt!1463654))) (value!222945 lt!1463654)))))))

(declare-fun b!4092811 () Bool)

(declare-fun e!2539944 () Bool)

(assert (=> b!4092811 (= e!2539943 e!2539944)))

(declare-fun res!1672870 () Bool)

(assert (=> b!4092811 (= res!1672870 (not ((_ is Leaf!20573) (c!705275 (dynLambda!18794 (toChars!9549 (transformation!7098 (rule!10242 lt!1463654))) (value!222945 lt!1463654))))))))

(assert (=> b!4092811 (=> res!1672870 e!2539944)))

(declare-fun b!4092812 () Bool)

(declare-fun inv!58598 (Conc!13309) Bool)

(assert (=> b!4092812 (= e!2539944 (inv!58598 (c!705275 (dynLambda!18794 (toChars!9549 (transformation!7098 (rule!10242 lt!1463654))) (value!222945 lt!1463654)))))))

(assert (= (and d!1215270 c!705386) b!4092810))

(assert (= (and d!1215270 (not c!705386)) b!4092811))

(assert (= (and b!4092811 (not res!1672870)) b!4092812))

(declare-fun m!4699855 () Bool)

(assert (=> b!4092810 m!4699855))

(declare-fun m!4699857 () Bool)

(assert (=> b!4092812 m!4699857))

(assert (=> b!4092404 d!1215270))

(declare-fun d!1215272 () Bool)

(declare-fun lt!1463795 () Int)

(assert (=> d!1215272 (>= lt!1463795 0)))

(declare-fun e!2539945 () Int)

(assert (=> d!1215272 (= lt!1463795 e!2539945)))

(declare-fun c!705387 () Bool)

(assert (=> d!1215272 (= c!705387 ((_ is Nil!43880) (_2!24540 (get!14391 lt!1463678))))))

(assert (=> d!1215272 (= (size!32779 (_2!24540 (get!14391 lt!1463678))) lt!1463795)))

(declare-fun b!4092813 () Bool)

(assert (=> b!4092813 (= e!2539945 0)))

(declare-fun b!4092814 () Bool)

(assert (=> b!4092814 (= e!2539945 (+ 1 (size!32779 (t!338859 (_2!24540 (get!14391 lt!1463678))))))))

(assert (= (and d!1215272 c!705387) b!4092813))

(assert (= (and d!1215272 (not c!705387)) b!4092814))

(declare-fun m!4699859 () Bool)

(assert (=> b!4092814 m!4699859))

(assert (=> b!4092257 d!1215272))

(assert (=> b!4092257 d!1215258))

(declare-fun d!1215274 () Bool)

(declare-fun lt!1463796 () Int)

(assert (=> d!1215274 (>= lt!1463796 0)))

(declare-fun e!2539946 () Int)

(assert (=> d!1215274 (= lt!1463796 e!2539946)))

(declare-fun c!705388 () Bool)

(assert (=> d!1215274 (= c!705388 ((_ is Nil!43880) input!3411))))

(assert (=> d!1215274 (= (size!32779 input!3411) lt!1463796)))

(declare-fun b!4092815 () Bool)

(assert (=> b!4092815 (= e!2539946 0)))

(declare-fun b!4092816 () Bool)

(assert (=> b!4092816 (= e!2539946 (+ 1 (size!32779 (t!338859 input!3411))))))

(assert (= (and d!1215274 c!705388) b!4092815))

(assert (= (and d!1215274 (not c!705388)) b!4092816))

(declare-fun m!4699861 () Bool)

(assert (=> b!4092816 m!4699861))

(assert (=> b!4092257 d!1215274))

(declare-fun bs!593406 () Bool)

(declare-fun d!1215276 () Bool)

(assert (= bs!593406 (and d!1215276 d!1215068)))

(declare-fun lambda!128055 () Int)

(assert (=> bs!593406 (= (and (= (toChars!9549 (transformation!7098 (h!49301 rules!3870))) (toChars!9549 (transformation!7098 r!4213))) (= (toValue!9690 (transformation!7098 (h!49301 rules!3870))) (toValue!9690 (transformation!7098 r!4213)))) (= lambda!128055 lambda!128043))))

(assert (=> d!1215276 true))

(assert (=> d!1215276 (< (dynLambda!18793 order!23097 (toChars!9549 (transformation!7098 (h!49301 rules!3870)))) (dynLambda!18792 order!23095 lambda!128055))))

(assert (=> d!1215276 true))

(assert (=> d!1215276 (< (dynLambda!18791 order!23093 (toValue!9690 (transformation!7098 (h!49301 rules!3870)))) (dynLambda!18792 order!23095 lambda!128055))))

(declare-fun Forall!1516 (Int) Bool)

(assert (=> d!1215276 (= (semiInverseModEq!3052 (toChars!9549 (transformation!7098 (h!49301 rules!3870))) (toValue!9690 (transformation!7098 (h!49301 rules!3870)))) (Forall!1516 lambda!128055))))

(declare-fun bs!593407 () Bool)

(assert (= bs!593407 d!1215276))

(declare-fun m!4699863 () Bool)

(assert (=> bs!593407 m!4699863))

(assert (=> d!1215112 d!1215276))

(declare-fun d!1215278 () Bool)

(assert (=> d!1215278 (= (isDefined!7194 lt!1463678) (not (isEmpty!26249 lt!1463678)))))

(declare-fun bs!593408 () Bool)

(assert (= bs!593408 d!1215278))

(assert (=> bs!593408 m!4699319))

(assert (=> b!4092249 d!1215278))

(assert (=> b!4092535 d!1215220))

(declare-fun d!1215280 () Bool)

(assert (=> d!1215280 true))

(declare-fun lambda!128058 () Int)

(declare-fun order!23101 () Int)

(declare-fun dynLambda!18795 (Int Int) Int)

(assert (=> d!1215280 (< (dynLambda!18791 order!23093 (toValue!9690 (transformation!7098 r!4213))) (dynLambda!18795 order!23101 lambda!128058))))

(declare-fun Forall2!1115 (Int) Bool)

(assert (=> d!1215280 (= (equivClasses!2951 (toChars!9549 (transformation!7098 r!4213)) (toValue!9690 (transformation!7098 r!4213))) (Forall2!1115 lambda!128058))))

(declare-fun bs!593409 () Bool)

(assert (= bs!593409 d!1215280))

(declare-fun m!4699865 () Bool)

(assert (=> bs!593409 m!4699865))

(assert (=> b!4092413 d!1215280))

(declare-fun d!1215282 () Bool)

(declare-fun nullableFct!1187 (Regex!12003) Bool)

(assert (=> d!1215282 (= (nullable!4240 (regex!7098 r!4213)) (nullableFct!1187 (regex!7098 r!4213)))))

(declare-fun bs!593410 () Bool)

(assert (= bs!593410 d!1215282))

(declare-fun m!4699867 () Bool)

(assert (=> bs!593410 m!4699867))

(assert (=> b!4092547 d!1215282))

(declare-fun d!1215284 () Bool)

(declare-fun c!705389 () Bool)

(assert (=> d!1215284 (= c!705389 ((_ is Node!13309) (c!705275 (dynLambda!18794 (toChars!9549 (transformation!7098 r!4213)) (dynLambda!18790 (toValue!9690 (transformation!7098 r!4213)) lt!1463658)))))))

(declare-fun e!2539949 () Bool)

(assert (=> d!1215284 (= (inv!58595 (c!705275 (dynLambda!18794 (toChars!9549 (transformation!7098 r!4213)) (dynLambda!18790 (toValue!9690 (transformation!7098 r!4213)) lt!1463658)))) e!2539949)))

(declare-fun b!4092825 () Bool)

(assert (=> b!4092825 (= e!2539949 (inv!58597 (c!705275 (dynLambda!18794 (toChars!9549 (transformation!7098 r!4213)) (dynLambda!18790 (toValue!9690 (transformation!7098 r!4213)) lt!1463658)))))))

(declare-fun b!4092826 () Bool)

(declare-fun e!2539950 () Bool)

(assert (=> b!4092826 (= e!2539949 e!2539950)))

(declare-fun res!1672873 () Bool)

(assert (=> b!4092826 (= res!1672873 (not ((_ is Leaf!20573) (c!705275 (dynLambda!18794 (toChars!9549 (transformation!7098 r!4213)) (dynLambda!18790 (toValue!9690 (transformation!7098 r!4213)) lt!1463658))))))))

(assert (=> b!4092826 (=> res!1672873 e!2539950)))

(declare-fun b!4092827 () Bool)

(assert (=> b!4092827 (= e!2539950 (inv!58598 (c!705275 (dynLambda!18794 (toChars!9549 (transformation!7098 r!4213)) (dynLambda!18790 (toValue!9690 (transformation!7098 r!4213)) lt!1463658)))))))

(assert (= (and d!1215284 c!705389) b!4092825))

(assert (= (and d!1215284 (not c!705389)) b!4092826))

(assert (= (and b!4092826 (not res!1672873)) b!4092827))

(declare-fun m!4699869 () Bool)

(assert (=> b!4092825 m!4699869))

(declare-fun m!4699871 () Bool)

(assert (=> b!4092827 m!4699871))

(assert (=> b!4092349 d!1215284))

(declare-fun d!1215286 () Bool)

(declare-fun lt!1463797 () Int)

(assert (=> d!1215286 (>= lt!1463797 0)))

(declare-fun e!2539951 () Int)

(assert (=> d!1215286 (= lt!1463797 e!2539951)))

(declare-fun c!705390 () Bool)

(assert (=> d!1215286 (= c!705390 ((_ is Nil!43880) (_2!24540 (get!14391 lt!1463752))))))

(assert (=> d!1215286 (= (size!32779 (_2!24540 (get!14391 lt!1463752))) lt!1463797)))

(declare-fun b!4092828 () Bool)

(assert (=> b!4092828 (= e!2539951 0)))

(declare-fun b!4092829 () Bool)

(assert (=> b!4092829 (= e!2539951 (+ 1 (size!32779 (t!338859 (_2!24540 (get!14391 lt!1463752))))))))

(assert (= (and d!1215286 c!705390) b!4092828))

(assert (= (and d!1215286 (not c!705390)) b!4092829))

(declare-fun m!4699873 () Bool)

(assert (=> b!4092829 m!4699873))

(assert (=> b!4092494 d!1215286))

(assert (=> b!4092494 d!1215238))

(assert (=> b!4092494 d!1215274))

(declare-fun d!1215288 () Bool)

(assert (=> d!1215288 true))

(declare-fun lt!1463800 () Bool)

(assert (=> d!1215288 (= lt!1463800 (rulesValidInductive!2627 thiss!26199 rules!3870))))

(declare-fun lambda!128061 () Int)

(declare-fun forall!8414 (List!44005 Int) Bool)

(assert (=> d!1215288 (= lt!1463800 (forall!8414 rules!3870 lambda!128061))))

(assert (=> d!1215288 (= (rulesValid!2786 thiss!26199 rules!3870) lt!1463800)))

(declare-fun bs!593411 () Bool)

(assert (= bs!593411 d!1215288))

(assert (=> bs!593411 m!4699325))

(declare-fun m!4699875 () Bool)

(assert (=> bs!593411 m!4699875))

(assert (=> d!1215106 d!1215288))

(declare-fun d!1215290 () Bool)

(declare-fun isBalanced!3706 (Conc!13309) Bool)

(assert (=> d!1215290 (= (inv!58596 (dynLambda!18794 (toChars!9549 (transformation!7098 r!4213)) (dynLambda!18790 (toValue!9690 (transformation!7098 r!4213)) lt!1463658))) (isBalanced!3706 (c!705275 (dynLambda!18794 (toChars!9549 (transformation!7098 r!4213)) (dynLambda!18790 (toValue!9690 (transformation!7098 r!4213)) lt!1463658)))))))

(declare-fun bs!593412 () Bool)

(assert (= bs!593412 d!1215290))

(declare-fun m!4699877 () Bool)

(assert (=> bs!593412 m!4699877))

(assert (=> tb!246093 d!1215290))

(declare-fun bm!289263 () Bool)

(declare-fun call!289268 () Bool)

(assert (=> bm!289263 (= call!289268 (isEmpty!26247 (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463678))))))))

(declare-fun b!4092832 () Bool)

(declare-fun e!2539954 () Bool)

(assert (=> b!4092832 (= e!2539954 (nullable!4240 (regex!7098 (rule!10242 (_1!24540 (get!14391 lt!1463678))))))))

(declare-fun b!4092833 () Bool)

(declare-fun res!1672876 () Bool)

(declare-fun e!2539956 () Bool)

(assert (=> b!4092833 (=> res!1672876 e!2539956)))

(assert (=> b!4092833 (= res!1672876 (not (isEmpty!26247 (tail!6385 (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463678))))))))))

(declare-fun b!4092834 () Bool)

(declare-fun e!2539957 () Bool)

(declare-fun e!2539955 () Bool)

(assert (=> b!4092834 (= e!2539957 e!2539955)))

(declare-fun c!705391 () Bool)

(assert (=> b!4092834 (= c!705391 ((_ is EmptyLang!12003) (regex!7098 (rule!10242 (_1!24540 (get!14391 lt!1463678))))))))

(declare-fun b!4092835 () Bool)

(assert (=> b!4092835 (= e!2539954 (matchR!5944 (derivativeStep!3641 (regex!7098 (rule!10242 (_1!24540 (get!14391 lt!1463678)))) (head!8651 (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463678)))))) (tail!6385 (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463678)))))))))

(declare-fun b!4092836 () Bool)

(declare-fun res!1672879 () Bool)

(declare-fun e!2539952 () Bool)

(assert (=> b!4092836 (=> (not res!1672879) (not e!2539952))))

(assert (=> b!4092836 (= res!1672879 (isEmpty!26247 (tail!6385 (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463678)))))))))

(declare-fun b!4092837 () Bool)

(declare-fun res!1672875 () Bool)

(declare-fun e!2539958 () Bool)

(assert (=> b!4092837 (=> res!1672875 e!2539958)))

(assert (=> b!4092837 (= res!1672875 e!2539952)))

(declare-fun res!1672874 () Bool)

(assert (=> b!4092837 (=> (not res!1672874) (not e!2539952))))

(declare-fun lt!1463801 () Bool)

(assert (=> b!4092837 (= res!1672874 lt!1463801)))

(declare-fun d!1215292 () Bool)

(assert (=> d!1215292 e!2539957))

(declare-fun c!705393 () Bool)

(assert (=> d!1215292 (= c!705393 ((_ is EmptyExpr!12003) (regex!7098 (rule!10242 (_1!24540 (get!14391 lt!1463678))))))))

(assert (=> d!1215292 (= lt!1463801 e!2539954)))

(declare-fun c!705392 () Bool)

(assert (=> d!1215292 (= c!705392 (isEmpty!26247 (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463678))))))))

(assert (=> d!1215292 (validRegex!5440 (regex!7098 (rule!10242 (_1!24540 (get!14391 lt!1463678)))))))

(assert (=> d!1215292 (= (matchR!5944 (regex!7098 (rule!10242 (_1!24540 (get!14391 lt!1463678)))) (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463678))))) lt!1463801)))

(declare-fun b!4092838 () Bool)

(assert (=> b!4092838 (= e!2539956 (not (= (head!8651 (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463678))))) (c!705274 (regex!7098 (rule!10242 (_1!24540 (get!14391 lt!1463678))))))))))

(declare-fun b!4092839 () Bool)

(declare-fun res!1672881 () Bool)

(assert (=> b!4092839 (=> res!1672881 e!2539958)))

(assert (=> b!4092839 (= res!1672881 (not ((_ is ElementMatch!12003) (regex!7098 (rule!10242 (_1!24540 (get!14391 lt!1463678)))))))))

(assert (=> b!4092839 (= e!2539955 e!2539958)))

(declare-fun b!4092840 () Bool)

(assert (=> b!4092840 (= e!2539955 (not lt!1463801))))

(declare-fun b!4092841 () Bool)

(assert (=> b!4092841 (= e!2539957 (= lt!1463801 call!289268))))

(declare-fun b!4092842 () Bool)

(declare-fun e!2539953 () Bool)

(assert (=> b!4092842 (= e!2539958 e!2539953)))

(declare-fun res!1672880 () Bool)

(assert (=> b!4092842 (=> (not res!1672880) (not e!2539953))))

(assert (=> b!4092842 (= res!1672880 (not lt!1463801))))

(declare-fun b!4092843 () Bool)

(assert (=> b!4092843 (= e!2539952 (= (head!8651 (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463678))))) (c!705274 (regex!7098 (rule!10242 (_1!24540 (get!14391 lt!1463678)))))))))

(declare-fun b!4092844 () Bool)

(declare-fun res!1672877 () Bool)

(assert (=> b!4092844 (=> (not res!1672877) (not e!2539952))))

(assert (=> b!4092844 (= res!1672877 (not call!289268))))

(declare-fun b!4092845 () Bool)

(assert (=> b!4092845 (= e!2539953 e!2539956)))

(declare-fun res!1672878 () Bool)

(assert (=> b!4092845 (=> res!1672878 e!2539956)))

(assert (=> b!4092845 (= res!1672878 call!289268)))

(assert (= (and d!1215292 c!705392) b!4092832))

(assert (= (and d!1215292 (not c!705392)) b!4092835))

(assert (= (and d!1215292 c!705393) b!4092841))

(assert (= (and d!1215292 (not c!705393)) b!4092834))

(assert (= (and b!4092834 c!705391) b!4092840))

(assert (= (and b!4092834 (not c!705391)) b!4092839))

(assert (= (and b!4092839 (not res!1672881)) b!4092837))

(assert (= (and b!4092837 res!1672874) b!4092844))

(assert (= (and b!4092844 res!1672877) b!4092836))

(assert (= (and b!4092836 res!1672879) b!4092843))

(assert (= (and b!4092837 (not res!1672875)) b!4092842))

(assert (= (and b!4092842 res!1672880) b!4092845))

(assert (= (and b!4092845 (not res!1672878)) b!4092833))

(assert (= (and b!4092833 (not res!1672876)) b!4092838))

(assert (= (or b!4092841 b!4092844 b!4092845) bm!289263))

(assert (=> b!4092836 m!4699315))

(declare-fun m!4699879 () Bool)

(assert (=> b!4092836 m!4699879))

(assert (=> b!4092836 m!4699879))

(declare-fun m!4699881 () Bool)

(assert (=> b!4092836 m!4699881))

(assert (=> b!4092838 m!4699315))

(declare-fun m!4699883 () Bool)

(assert (=> b!4092838 m!4699883))

(assert (=> bm!289263 m!4699315))

(declare-fun m!4699885 () Bool)

(assert (=> bm!289263 m!4699885))

(assert (=> b!4092833 m!4699315))

(assert (=> b!4092833 m!4699879))

(assert (=> b!4092833 m!4699879))

(assert (=> b!4092833 m!4699881))

(declare-fun m!4699887 () Bool)

(assert (=> b!4092832 m!4699887))

(assert (=> d!1215292 m!4699315))

(assert (=> d!1215292 m!4699885))

(declare-fun m!4699889 () Bool)

(assert (=> d!1215292 m!4699889))

(assert (=> b!4092835 m!4699315))

(assert (=> b!4092835 m!4699883))

(assert (=> b!4092835 m!4699883))

(declare-fun m!4699891 () Bool)

(assert (=> b!4092835 m!4699891))

(assert (=> b!4092835 m!4699315))

(assert (=> b!4092835 m!4699879))

(assert (=> b!4092835 m!4699891))

(assert (=> b!4092835 m!4699879))

(declare-fun m!4699893 () Bool)

(assert (=> b!4092835 m!4699893))

(assert (=> b!4092843 m!4699315))

(assert (=> b!4092843 m!4699883))

(assert (=> b!4092251 d!1215292))

(assert (=> b!4092251 d!1215258))

(assert (=> b!4092251 d!1215264))

(assert (=> b!4092251 d!1215266))

(assert (=> d!1215128 d!1215126))

(declare-fun d!1215294 () Bool)

(assert (=> d!1215294 (ruleValid!3018 thiss!26199 r!4213)))

(assert (=> d!1215294 true))

(declare-fun _$65!1584 () Unit!63409)

(assert (=> d!1215294 (= (choose!24999 thiss!26199 r!4213 rules!3870) _$65!1584)))

(declare-fun bs!593413 () Bool)

(assert (= bs!593413 d!1215294))

(assert (=> bs!593413 m!4699263))

(assert (=> d!1215128 d!1215294))

(assert (=> d!1215128 d!1215090))

(assert (=> b!4092529 d!1215282))

(declare-fun d!1215296 () Bool)

(assert (=> d!1215296 (= (isEmpty!26249 lt!1463752) (not ((_ is Some!9503) lt!1463752)))))

(assert (=> d!1215118 d!1215296))

(declare-fun d!1215298 () Bool)

(assert (=> d!1215298 (= (isEmpty!26247 (_1!24542 lt!1463749)) ((_ is Nil!43880) (_1!24542 lt!1463749)))))

(assert (=> d!1215118 d!1215298))

(declare-fun d!1215300 () Bool)

(declare-fun lt!1463824 () tuple2!42816)

(assert (=> d!1215300 (= (++!11504 (_1!24542 lt!1463824) (_2!24542 lt!1463824)) input!3411)))

(declare-fun sizeTr!291 (List!44004 Int) Int)

(assert (=> d!1215300 (= lt!1463824 (findLongestMatchInner!1464 (regex!7098 (h!49301 rules!3870)) Nil!43880 0 input!3411 input!3411 (sizeTr!291 input!3411 0)))))

(declare-fun lt!1463820 () Unit!63409)

(declare-fun lt!1463822 () Unit!63409)

(assert (=> d!1215300 (= lt!1463820 lt!1463822)))

(declare-fun lt!1463818 () List!44004)

(declare-fun lt!1463819 () Int)

(assert (=> d!1215300 (= (sizeTr!291 lt!1463818 lt!1463819) (+ (size!32779 lt!1463818) lt!1463819))))

(declare-fun lemmaSizeTrEqualsSize!290 (List!44004 Int) Unit!63409)

(assert (=> d!1215300 (= lt!1463822 (lemmaSizeTrEqualsSize!290 lt!1463818 lt!1463819))))

(assert (=> d!1215300 (= lt!1463819 0)))

(assert (=> d!1215300 (= lt!1463818 Nil!43880)))

(declare-fun lt!1463821 () Unit!63409)

(declare-fun lt!1463823 () Unit!63409)

(assert (=> d!1215300 (= lt!1463821 lt!1463823)))

(declare-fun lt!1463825 () Int)

(assert (=> d!1215300 (= (sizeTr!291 input!3411 lt!1463825) (+ (size!32779 input!3411) lt!1463825))))

(assert (=> d!1215300 (= lt!1463823 (lemmaSizeTrEqualsSize!290 input!3411 lt!1463825))))

(assert (=> d!1215300 (= lt!1463825 0)))

(assert (=> d!1215300 (validRegex!5440 (regex!7098 (h!49301 rules!3870)))))

(assert (=> d!1215300 (= (findLongestMatch!1377 (regex!7098 (h!49301 rules!3870)) input!3411) lt!1463824)))

(declare-fun bs!593414 () Bool)

(assert (= bs!593414 d!1215300))

(declare-fun m!4699895 () Bool)

(assert (=> bs!593414 m!4699895))

(declare-fun m!4699897 () Bool)

(assert (=> bs!593414 m!4699897))

(declare-fun m!4699899 () Bool)

(assert (=> bs!593414 m!4699899))

(declare-fun m!4699901 () Bool)

(assert (=> bs!593414 m!4699901))

(declare-fun m!4699903 () Bool)

(assert (=> bs!593414 m!4699903))

(assert (=> bs!593414 m!4699341))

(declare-fun m!4699905 () Bool)

(assert (=> bs!593414 m!4699905))

(declare-fun m!4699907 () Bool)

(assert (=> bs!593414 m!4699907))

(declare-fun m!4699909 () Bool)

(assert (=> bs!593414 m!4699909))

(assert (=> bs!593414 m!4699905))

(declare-fun m!4699911 () Bool)

(assert (=> bs!593414 m!4699911))

(assert (=> d!1215118 d!1215300))

(declare-fun d!1215302 () Bool)

(declare-fun res!1672882 () Bool)

(declare-fun e!2539959 () Bool)

(assert (=> d!1215302 (=> (not res!1672882) (not e!2539959))))

(assert (=> d!1215302 (= res!1672882 (validRegex!5440 (regex!7098 (h!49301 rules!3870))))))

(assert (=> d!1215302 (= (ruleValid!3018 thiss!26199 (h!49301 rules!3870)) e!2539959)))

(declare-fun b!4092846 () Bool)

(declare-fun res!1672883 () Bool)

(assert (=> b!4092846 (=> (not res!1672883) (not e!2539959))))

(assert (=> b!4092846 (= res!1672883 (not (nullable!4240 (regex!7098 (h!49301 rules!3870)))))))

(declare-fun b!4092847 () Bool)

(assert (=> b!4092847 (= e!2539959 (not (= (tag!7958 (h!49301 rules!3870)) (String!50391 ""))))))

(assert (= (and d!1215302 res!1672882) b!4092846))

(assert (= (and b!4092846 res!1672883) b!4092847))

(assert (=> d!1215302 m!4699897))

(declare-fun m!4699913 () Bool)

(assert (=> b!4092846 m!4699913))

(assert (=> d!1215118 d!1215302))

(declare-fun d!1215304 () Bool)

(assert (=> d!1215304 (= (seqFromList!5315 (_1!24542 lt!1463749)) (fromListB!2438 (_1!24542 lt!1463749)))))

(declare-fun bs!593415 () Bool)

(assert (= bs!593415 d!1215304))

(declare-fun m!4699915 () Bool)

(assert (=> bs!593415 m!4699915))

(assert (=> b!4092492 d!1215304))

(assert (=> b!4092492 d!1215274))

(declare-fun bs!593416 () Bool)

(declare-fun d!1215306 () Bool)

(assert (= bs!593416 (and d!1215306 d!1215068)))

(declare-fun lambda!128062 () Int)

(assert (=> bs!593416 (= (and (= (toChars!9549 (transformation!7098 (h!49301 rules!3870))) (toChars!9549 (transformation!7098 r!4213))) (= (toValue!9690 (transformation!7098 (h!49301 rules!3870))) (toValue!9690 (transformation!7098 r!4213)))) (= lambda!128062 lambda!128043))))

(declare-fun bs!593417 () Bool)

(assert (= bs!593417 (and d!1215306 d!1215276)))

(assert (=> bs!593417 (= lambda!128062 lambda!128055)))

(declare-fun b!4092848 () Bool)

(declare-fun e!2539960 () Bool)

(assert (=> b!4092848 (= e!2539960 true)))

(assert (=> d!1215306 e!2539960))

(assert (= d!1215306 b!4092848))

(assert (=> b!4092848 (< (dynLambda!18791 order!23093 (toValue!9690 (transformation!7098 (h!49301 rules!3870)))) (dynLambda!18792 order!23095 lambda!128062))))

(assert (=> b!4092848 (< (dynLambda!18793 order!23097 (toChars!9549 (transformation!7098 (h!49301 rules!3870)))) (dynLambda!18792 order!23095 lambda!128062))))

(assert (=> d!1215306 (= (list!16288 (dynLambda!18794 (toChars!9549 (transformation!7098 (h!49301 rules!3870))) (dynLambda!18790 (toValue!9690 (transformation!7098 (h!49301 rules!3870))) (seqFromList!5315 (_1!24542 lt!1463749))))) (list!16288 (seqFromList!5315 (_1!24542 lt!1463749))))))

(declare-fun lt!1463826 () Unit!63409)

(assert (=> d!1215306 (= lt!1463826 (ForallOf!891 lambda!128062 (seqFromList!5315 (_1!24542 lt!1463749))))))

(assert (=> d!1215306 (= (lemmaSemiInverse!2065 (transformation!7098 (h!49301 rules!3870)) (seqFromList!5315 (_1!24542 lt!1463749))) lt!1463826)))

(declare-fun b_lambda!120061 () Bool)

(assert (=> (not b_lambda!120061) (not d!1215306)))

(declare-fun t!338948 () Bool)

(declare-fun tb!246165 () Bool)

(assert (=> (and b!4092204 (= (toChars!9549 (transformation!7098 r!4213)) (toChars!9549 (transformation!7098 (h!49301 rules!3870)))) t!338948) tb!246165))

(declare-fun tp!1238879 () Bool)

(declare-fun e!2539961 () Bool)

(declare-fun b!4092849 () Bool)

(assert (=> b!4092849 (= e!2539961 (and (inv!58595 (c!705275 (dynLambda!18794 (toChars!9549 (transformation!7098 (h!49301 rules!3870))) (dynLambda!18790 (toValue!9690 (transformation!7098 (h!49301 rules!3870))) (seqFromList!5315 (_1!24542 lt!1463749)))))) tp!1238879))))

(declare-fun result!298698 () Bool)

(assert (=> tb!246165 (= result!298698 (and (inv!58596 (dynLambda!18794 (toChars!9549 (transformation!7098 (h!49301 rules!3870))) (dynLambda!18790 (toValue!9690 (transformation!7098 (h!49301 rules!3870))) (seqFromList!5315 (_1!24542 lt!1463749))))) e!2539961))))

(assert (= tb!246165 b!4092849))

(declare-fun m!4699917 () Bool)

(assert (=> b!4092849 m!4699917))

(declare-fun m!4699919 () Bool)

(assert (=> tb!246165 m!4699919))

(assert (=> d!1215306 t!338948))

(declare-fun b_and!315547 () Bool)

(assert (= b_and!315541 (and (=> t!338948 result!298698) b_and!315547)))

(declare-fun t!338950 () Bool)

(declare-fun tb!246167 () Bool)

(assert (=> (and b!4092205 (= (toChars!9549 (transformation!7098 (h!49301 rules!3870))) (toChars!9549 (transformation!7098 (h!49301 rules!3870)))) t!338950) tb!246167))

(declare-fun result!298700 () Bool)

(assert (= result!298700 result!298698))

(assert (=> d!1215306 t!338950))

(declare-fun b_and!315549 () Bool)

(assert (= b_and!315543 (and (=> t!338950 result!298700) b_and!315549)))

(declare-fun t!338952 () Bool)

(declare-fun tb!246169 () Bool)

(assert (=> (and b!4092583 (= (toChars!9549 (transformation!7098 (h!49301 (t!338860 rules!3870)))) (toChars!9549 (transformation!7098 (h!49301 rules!3870)))) t!338952) tb!246169))

(declare-fun result!298702 () Bool)

(assert (= result!298702 result!298698))

(assert (=> d!1215306 t!338952))

(declare-fun b_and!315551 () Bool)

(assert (= b_and!315545 (and (=> t!338952 result!298702) b_and!315551)))

(declare-fun b_lambda!120063 () Bool)

(assert (=> (not b_lambda!120063) (not d!1215306)))

(declare-fun tb!246171 () Bool)

(declare-fun t!338954 () Bool)

(assert (=> (and b!4092204 (= (toValue!9690 (transformation!7098 r!4213)) (toValue!9690 (transformation!7098 (h!49301 rules!3870)))) t!338954) tb!246171))

(declare-fun result!298704 () Bool)

(assert (=> tb!246171 (= result!298704 (inv!21 (dynLambda!18790 (toValue!9690 (transformation!7098 (h!49301 rules!3870))) (seqFromList!5315 (_1!24542 lt!1463749)))))))

(declare-fun m!4699921 () Bool)

(assert (=> tb!246171 m!4699921))

(assert (=> d!1215306 t!338954))

(declare-fun b_and!315553 () Bool)

(assert (= b_and!315535 (and (=> t!338954 result!298704) b_and!315553)))

(declare-fun t!338956 () Bool)

(declare-fun tb!246173 () Bool)

(assert (=> (and b!4092205 (= (toValue!9690 (transformation!7098 (h!49301 rules!3870))) (toValue!9690 (transformation!7098 (h!49301 rules!3870)))) t!338956) tb!246173))

(declare-fun result!298706 () Bool)

(assert (= result!298706 result!298704))

(assert (=> d!1215306 t!338956))

(declare-fun b_and!315555 () Bool)

(assert (= b_and!315537 (and (=> t!338956 result!298706) b_and!315555)))

(declare-fun t!338958 () Bool)

(declare-fun tb!246175 () Bool)

(assert (=> (and b!4092583 (= (toValue!9690 (transformation!7098 (h!49301 (t!338860 rules!3870)))) (toValue!9690 (transformation!7098 (h!49301 rules!3870)))) t!338958) tb!246175))

(declare-fun result!298708 () Bool)

(assert (= result!298708 result!298704))

(assert (=> d!1215306 t!338958))

(declare-fun b_and!315557 () Bool)

(assert (= b_and!315539 (and (=> t!338958 result!298708) b_and!315557)))

(declare-fun m!4699923 () Bool)

(assert (=> d!1215306 m!4699923))

(declare-fun m!4699925 () Bool)

(assert (=> d!1215306 m!4699925))

(assert (=> d!1215306 m!4699559))

(assert (=> d!1215306 m!4699923))

(assert (=> d!1215306 m!4699559))

(declare-fun m!4699927 () Bool)

(assert (=> d!1215306 m!4699927))

(assert (=> d!1215306 m!4699559))

(declare-fun m!4699929 () Bool)

(assert (=> d!1215306 m!4699929))

(assert (=> d!1215306 m!4699925))

(declare-fun m!4699931 () Bool)

(assert (=> d!1215306 m!4699931))

(assert (=> b!4092492 d!1215306))

(declare-fun d!1215308 () Bool)

(declare-fun lt!1463829 () Int)

(assert (=> d!1215308 (= lt!1463829 (size!32779 (list!16288 (seqFromList!5315 (_1!24542 lt!1463749)))))))

(declare-fun size!32782 (Conc!13309) Int)

(assert (=> d!1215308 (= lt!1463829 (size!32782 (c!705275 (seqFromList!5315 (_1!24542 lt!1463749)))))))

(assert (=> d!1215308 (= (size!32781 (seqFromList!5315 (_1!24542 lt!1463749))) lt!1463829)))

(declare-fun bs!593418 () Bool)

(assert (= bs!593418 d!1215308))

(assert (=> bs!593418 m!4699559))

(assert (=> bs!593418 m!4699929))

(assert (=> bs!593418 m!4699929))

(declare-fun m!4699933 () Bool)

(assert (=> bs!593418 m!4699933))

(declare-fun m!4699935 () Bool)

(assert (=> bs!593418 m!4699935))

(assert (=> b!4092492 d!1215308))

(declare-fun d!1215310 () Bool)

(declare-fun lt!1463830 () Int)

(assert (=> d!1215310 (>= lt!1463830 0)))

(declare-fun e!2539963 () Int)

(assert (=> d!1215310 (= lt!1463830 e!2539963)))

(declare-fun c!705394 () Bool)

(assert (=> d!1215310 (= c!705394 ((_ is Nil!43880) Nil!43880))))

(assert (=> d!1215310 (= (size!32779 Nil!43880) lt!1463830)))

(declare-fun b!4092850 () Bool)

(assert (=> b!4092850 (= e!2539963 0)))

(declare-fun b!4092851 () Bool)

(assert (=> b!4092851 (= e!2539963 (+ 1 (size!32779 (t!338859 Nil!43880))))))

(assert (= (and d!1215310 c!705394) b!4092850))

(assert (= (and d!1215310 (not c!705394)) b!4092851))

(declare-fun m!4699937 () Bool)

(assert (=> b!4092851 m!4699937))

(assert (=> b!4092492 d!1215310))

(declare-fun b!4092961 () Bool)

(declare-fun e!2540032 () Unit!63409)

(declare-fun Unit!63413 () Unit!63409)

(assert (=> b!4092961 (= e!2540032 Unit!63413)))

(declare-fun lt!1464038 () Unit!63409)

(declare-fun call!289314 () Unit!63409)

(assert (=> b!4092961 (= lt!1464038 call!289314)))

(declare-fun call!289313 () Bool)

(assert (=> b!4092961 call!289313))

(declare-fun lt!1464027 () Unit!63409)

(assert (=> b!4092961 (= lt!1464027 lt!1464038)))

(declare-fun lt!1464026 () Unit!63409)

(declare-fun call!289311 () Unit!63409)

(assert (=> b!4092961 (= lt!1464026 call!289311)))

(assert (=> b!4092961 (= input!3411 Nil!43880)))

(declare-fun lt!1464014 () Unit!63409)

(assert (=> b!4092961 (= lt!1464014 lt!1464026)))

(assert (=> b!4092961 false))

(declare-fun bm!289305 () Bool)

(declare-fun call!289310 () C!24192)

(assert (=> bm!289305 (= call!289310 (head!8651 input!3411))))

(declare-fun b!4092962 () Bool)

(declare-fun e!2540030 () tuple2!42816)

(declare-fun call!289317 () tuple2!42816)

(assert (=> b!4092962 (= e!2540030 call!289317)))

(declare-fun d!1215312 () Bool)

(declare-fun e!2540029 () Bool)

(assert (=> d!1215312 e!2540029))

(declare-fun res!1672913 () Bool)

(assert (=> d!1215312 (=> (not res!1672913) (not e!2540029))))

(declare-fun lt!1464015 () tuple2!42816)

(assert (=> d!1215312 (= res!1672913 (= (++!11504 (_1!24542 lt!1464015) (_2!24542 lt!1464015)) input!3411))))

(declare-fun e!2540031 () tuple2!42816)

(assert (=> d!1215312 (= lt!1464015 e!2540031)))

(declare-fun c!705437 () Bool)

(declare-fun lostCause!1029 (Regex!12003) Bool)

(assert (=> d!1215312 (= c!705437 (lostCause!1029 (regex!7098 (h!49301 rules!3870))))))

(declare-fun lt!1464018 () Unit!63409)

(declare-fun Unit!63415 () Unit!63409)

(assert (=> d!1215312 (= lt!1464018 Unit!63415)))

(declare-fun getSuffix!2502 (List!44004 List!44004) List!44004)

(assert (=> d!1215312 (= (getSuffix!2502 input!3411 Nil!43880) input!3411)))

(declare-fun lt!1464030 () Unit!63409)

(declare-fun lt!1464016 () Unit!63409)

(assert (=> d!1215312 (= lt!1464030 lt!1464016)))

(declare-fun lt!1464035 () List!44004)

(assert (=> d!1215312 (= input!3411 lt!1464035)))

(declare-fun lemmaSamePrefixThenSameSuffix!2246 (List!44004 List!44004 List!44004 List!44004 List!44004) Unit!63409)

(assert (=> d!1215312 (= lt!1464016 (lemmaSamePrefixThenSameSuffix!2246 Nil!43880 input!3411 Nil!43880 lt!1464035 input!3411))))

(assert (=> d!1215312 (= lt!1464035 (getSuffix!2502 input!3411 Nil!43880))))

(declare-fun lt!1464021 () Unit!63409)

(declare-fun lt!1464032 () Unit!63409)

(assert (=> d!1215312 (= lt!1464021 lt!1464032)))

(assert (=> d!1215312 (isPrefix!4145 Nil!43880 (++!11504 Nil!43880 input!3411))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2920 (List!44004 List!44004) Unit!63409)

(assert (=> d!1215312 (= lt!1464032 (lemmaConcatTwoListThenFirstIsPrefix!2920 Nil!43880 input!3411))))

(assert (=> d!1215312 (validRegex!5440 (regex!7098 (h!49301 rules!3870)))))

(assert (=> d!1215312 (= (findLongestMatchInner!1464 (regex!7098 (h!49301 rules!3870)) Nil!43880 (size!32779 Nil!43880) input!3411 input!3411 (size!32779 input!3411)) lt!1464015)))

(declare-fun b!4092963 () Bool)

(declare-fun c!705435 () Bool)

(declare-fun call!289316 () Bool)

(assert (=> b!4092963 (= c!705435 call!289316)))

(declare-fun lt!1464020 () Unit!63409)

(declare-fun lt!1464040 () Unit!63409)

(assert (=> b!4092963 (= lt!1464020 lt!1464040)))

(declare-fun lt!1464013 () C!24192)

(declare-fun lt!1464037 () List!44004)

(assert (=> b!4092963 (= (++!11504 (++!11504 Nil!43880 (Cons!43880 lt!1464013 Nil!43880)) lt!1464037) input!3411)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1273 (List!44004 C!24192 List!44004 List!44004) Unit!63409)

(assert (=> b!4092963 (= lt!1464040 (lemmaMoveElementToOtherListKeepsConcatEq!1273 Nil!43880 lt!1464013 lt!1464037 input!3411))))

(assert (=> b!4092963 (= lt!1464037 (tail!6385 input!3411))))

(assert (=> b!4092963 (= lt!1464013 (head!8651 input!3411))))

(declare-fun lt!1464036 () Unit!63409)

(declare-fun lt!1464034 () Unit!63409)

(assert (=> b!4092963 (= lt!1464036 lt!1464034)))

(assert (=> b!4092963 (isPrefix!4145 (++!11504 Nil!43880 (Cons!43880 (head!8651 (getSuffix!2502 input!3411 Nil!43880)) Nil!43880)) input!3411)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!655 (List!44004 List!44004) Unit!63409)

(assert (=> b!4092963 (= lt!1464034 (lemmaAddHeadSuffixToPrefixStillPrefix!655 Nil!43880 input!3411))))

(declare-fun lt!1464028 () Unit!63409)

(declare-fun lt!1464017 () Unit!63409)

(assert (=> b!4092963 (= lt!1464028 lt!1464017)))

(assert (=> b!4092963 (= lt!1464017 (lemmaAddHeadSuffixToPrefixStillPrefix!655 Nil!43880 input!3411))))

(declare-fun lt!1464024 () List!44004)

(assert (=> b!4092963 (= lt!1464024 (++!11504 Nil!43880 (Cons!43880 (head!8651 input!3411) Nil!43880)))))

(declare-fun lt!1464019 () Unit!63409)

(assert (=> b!4092963 (= lt!1464019 e!2540032)))

(declare-fun c!705439 () Bool)

(assert (=> b!4092963 (= c!705439 (= (size!32779 Nil!43880) (size!32779 input!3411)))))

(declare-fun lt!1464025 () Unit!63409)

(declare-fun lt!1464029 () Unit!63409)

(assert (=> b!4092963 (= lt!1464025 lt!1464029)))

(assert (=> b!4092963 (<= (size!32779 Nil!43880) (size!32779 input!3411))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!463 (List!44004 List!44004) Unit!63409)

(assert (=> b!4092963 (= lt!1464029 (lemmaIsPrefixThenSmallerEqSize!463 Nil!43880 input!3411))))

(declare-fun e!2540027 () tuple2!42816)

(assert (=> b!4092963 (= e!2540027 e!2540030)))

(declare-fun b!4092964 () Bool)

(assert (=> b!4092964 (= e!2540031 (tuple2!42817 Nil!43880 input!3411))))

(declare-fun b!4092965 () Bool)

(declare-fun e!2540033 () tuple2!42816)

(assert (=> b!4092965 (= e!2540033 (tuple2!42817 Nil!43880 input!3411))))

(declare-fun b!4092966 () Bool)

(declare-fun e!2540034 () Bool)

(assert (=> b!4092966 (= e!2540034 (>= (size!32779 (_1!24542 lt!1464015)) (size!32779 Nil!43880)))))

(declare-fun b!4092967 () Bool)

(declare-fun c!705440 () Bool)

(assert (=> b!4092967 (= c!705440 call!289316)))

(declare-fun lt!1464023 () Unit!63409)

(declare-fun lt!1464031 () Unit!63409)

(assert (=> b!4092967 (= lt!1464023 lt!1464031)))

(assert (=> b!4092967 (= input!3411 Nil!43880)))

(assert (=> b!4092967 (= lt!1464031 call!289311)))

(declare-fun lt!1464022 () Unit!63409)

(declare-fun lt!1464039 () Unit!63409)

(assert (=> b!4092967 (= lt!1464022 lt!1464039)))

(assert (=> b!4092967 call!289313))

(assert (=> b!4092967 (= lt!1464039 call!289314)))

(assert (=> b!4092967 (= e!2540027 e!2540033)))

(declare-fun call!289312 () Regex!12003)

(declare-fun call!289315 () List!44004)

(declare-fun bm!289306 () Bool)

(assert (=> bm!289306 (= call!289317 (findLongestMatchInner!1464 call!289312 lt!1464024 (+ (size!32779 Nil!43880) 1) call!289315 input!3411 (size!32779 input!3411)))))

(declare-fun bm!289307 () Bool)

(assert (=> bm!289307 (= call!289315 (tail!6385 input!3411))))

(declare-fun b!4092968 () Bool)

(assert (=> b!4092968 (= e!2540029 e!2540034)))

(declare-fun res!1672914 () Bool)

(assert (=> b!4092968 (=> res!1672914 e!2540034)))

(assert (=> b!4092968 (= res!1672914 (isEmpty!26247 (_1!24542 lt!1464015)))))

(declare-fun bm!289308 () Bool)

(assert (=> bm!289308 (= call!289316 (nullable!4240 (regex!7098 (h!49301 rules!3870))))))

(declare-fun b!4092970 () Bool)

(assert (=> b!4092970 (= e!2540031 e!2540027)))

(declare-fun c!705438 () Bool)

(assert (=> b!4092970 (= c!705438 (= (size!32779 Nil!43880) (size!32779 input!3411)))))

(declare-fun b!4092971 () Bool)

(declare-fun e!2540028 () tuple2!42816)

(assert (=> b!4092971 (= e!2540028 (tuple2!42817 Nil!43880 input!3411))))

(declare-fun bm!289309 () Bool)

(assert (=> bm!289309 (= call!289312 (derivativeStep!3641 (regex!7098 (h!49301 rules!3870)) call!289310))))

(declare-fun bm!289310 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!967 (List!44004 List!44004 List!44004) Unit!63409)

(assert (=> bm!289310 (= call!289311 (lemmaIsPrefixSameLengthThenSameList!967 input!3411 Nil!43880 input!3411))))

(declare-fun b!4092972 () Bool)

(declare-fun Unit!63416 () Unit!63409)

(assert (=> b!4092972 (= e!2540032 Unit!63416)))

(declare-fun bm!289311 () Bool)

(assert (=> bm!289311 (= call!289314 (lemmaIsPrefixRefl!2696 input!3411 input!3411))))

(declare-fun b!4092973 () Bool)

(assert (=> b!4092973 (= e!2540030 e!2540028)))

(declare-fun lt!1464033 () tuple2!42816)

(assert (=> b!4092973 (= lt!1464033 call!289317)))

(declare-fun c!705436 () Bool)

(assert (=> b!4092973 (= c!705436 (isEmpty!26247 (_1!24542 lt!1464033)))))

(declare-fun bm!289312 () Bool)

(assert (=> bm!289312 (= call!289313 (isPrefix!4145 input!3411 input!3411))))

(declare-fun b!4092974 () Bool)

(assert (=> b!4092974 (= e!2540028 lt!1464033)))

(declare-fun b!4092975 () Bool)

(assert (=> b!4092975 (= e!2540033 (tuple2!42817 Nil!43880 Nil!43880))))

(assert (= (and d!1215312 c!705437) b!4092964))

(assert (= (and d!1215312 (not c!705437)) b!4092970))

(assert (= (and b!4092970 c!705438) b!4092967))

(assert (= (and b!4092970 (not c!705438)) b!4092963))

(assert (= (and b!4092967 c!705440) b!4092975))

(assert (= (and b!4092967 (not c!705440)) b!4092965))

(assert (= (and b!4092963 c!705439) b!4092961))

(assert (= (and b!4092963 (not c!705439)) b!4092972))

(assert (= (and b!4092963 c!705435) b!4092973))

(assert (= (and b!4092963 (not c!705435)) b!4092962))

(assert (= (and b!4092973 c!705436) b!4092971))

(assert (= (and b!4092973 (not c!705436)) b!4092974))

(assert (= (or b!4092973 b!4092962) bm!289305))

(assert (= (or b!4092973 b!4092962) bm!289307))

(assert (= (or b!4092973 b!4092962) bm!289309))

(assert (= (or b!4092973 b!4092962) bm!289306))

(assert (= (or b!4092967 b!4092961) bm!289312))

(assert (= (or b!4092967 b!4092961) bm!289311))

(assert (= (or b!4092967 b!4092963) bm!289308))

(assert (= (or b!4092967 b!4092961) bm!289310))

(assert (= (and d!1215312 res!1672913) b!4092968))

(assert (= (and b!4092968 (not res!1672914)) b!4092966))

(declare-fun m!4700107 () Bool)

(assert (=> bm!289309 m!4700107))

(declare-fun m!4700109 () Bool)

(assert (=> bm!289310 m!4700109))

(assert (=> bm!289311 m!4699323))

(assert (=> bm!289308 m!4699913))

(declare-fun m!4700111 () Bool)

(assert (=> bm!289305 m!4700111))

(declare-fun m!4700113 () Bool)

(assert (=> b!4092968 m!4700113))

(assert (=> bm!289312 m!4699321))

(declare-fun m!4700115 () Bool)

(assert (=> b!4092963 m!4700115))

(declare-fun m!4700117 () Bool)

(assert (=> b!4092963 m!4700117))

(declare-fun m!4700119 () Bool)

(assert (=> b!4092963 m!4700119))

(declare-fun m!4700121 () Bool)

(assert (=> b!4092963 m!4700121))

(declare-fun m!4700123 () Bool)

(assert (=> b!4092963 m!4700123))

(declare-fun m!4700125 () Bool)

(assert (=> b!4092963 m!4700125))

(assert (=> b!4092963 m!4700115))

(assert (=> b!4092963 m!4700119))

(declare-fun m!4700127 () Bool)

(assert (=> b!4092963 m!4700127))

(declare-fun m!4700129 () Bool)

(assert (=> b!4092963 m!4700129))

(assert (=> b!4092963 m!4699563))

(assert (=> b!4092963 m!4700129))

(declare-fun m!4700131 () Bool)

(assert (=> b!4092963 m!4700131))

(assert (=> b!4092963 m!4700111))

(assert (=> b!4092963 m!4699341))

(declare-fun m!4700133 () Bool)

(assert (=> b!4092963 m!4700133))

(declare-fun m!4700135 () Bool)

(assert (=> b!4092963 m!4700135))

(declare-fun m!4700137 () Bool)

(assert (=> d!1215312 m!4700137))

(declare-fun m!4700139 () Bool)

(assert (=> d!1215312 m!4700139))

(declare-fun m!4700141 () Bool)

(assert (=> d!1215312 m!4700141))

(declare-fun m!4700143 () Bool)

(assert (=> d!1215312 m!4700143))

(declare-fun m!4700145 () Bool)

(assert (=> d!1215312 m!4700145))

(declare-fun m!4700147 () Bool)

(assert (=> d!1215312 m!4700147))

(assert (=> d!1215312 m!4700137))

(assert (=> d!1215312 m!4700129))

(assert (=> d!1215312 m!4699897))

(declare-fun m!4700149 () Bool)

(assert (=> b!4092973 m!4700149))

(assert (=> bm!289307 m!4700135))

(assert (=> bm!289306 m!4699341))

(declare-fun m!4700151 () Bool)

(assert (=> bm!289306 m!4700151))

(declare-fun m!4700153 () Bool)

(assert (=> b!4092966 m!4700153))

(assert (=> b!4092966 m!4699563))

(assert (=> b!4092492 d!1215312))

(declare-fun d!1215366 () Bool)

(assert (=> d!1215366 (= (isEmpty!26247 (_1!24542 (findLongestMatchInner!1464 (regex!7098 (h!49301 rules!3870)) Nil!43880 (size!32779 Nil!43880) input!3411 input!3411 (size!32779 input!3411)))) ((_ is Nil!43880) (_1!24542 (findLongestMatchInner!1464 (regex!7098 (h!49301 rules!3870)) Nil!43880 (size!32779 Nil!43880) input!3411 input!3411 (size!32779 input!3411)))))))

(assert (=> b!4092492 d!1215366))

(declare-fun d!1215368 () Bool)

(assert (=> d!1215368 (= (apply!10281 (transformation!7098 (h!49301 rules!3870)) (seqFromList!5315 (_1!24542 lt!1463749))) (dynLambda!18790 (toValue!9690 (transformation!7098 (h!49301 rules!3870))) (seqFromList!5315 (_1!24542 lt!1463749))))))

(declare-fun b_lambda!120071 () Bool)

(assert (=> (not b_lambda!120071) (not d!1215368)))

(assert (=> d!1215368 t!338954))

(declare-fun b_and!315577 () Bool)

(assert (= b_and!315553 (and (=> t!338954 result!298704) b_and!315577)))

(assert (=> d!1215368 t!338956))

(declare-fun b_and!315579 () Bool)

(assert (= b_and!315555 (and (=> t!338956 result!298706) b_and!315579)))

(assert (=> d!1215368 t!338958))

(declare-fun b_and!315581 () Bool)

(assert (= b_and!315557 (and (=> t!338958 result!298708) b_and!315581)))

(assert (=> d!1215368 m!4699559))

(assert (=> d!1215368 m!4699923))

(assert (=> b!4092492 d!1215368))

(declare-fun d!1215370 () Bool)

(declare-fun e!2540056 () Bool)

(assert (=> d!1215370 e!2540056))

(declare-fun res!1672938 () Bool)

(assert (=> d!1215370 (=> res!1672938 e!2540056)))

(assert (=> d!1215370 (= res!1672938 (isEmpty!26247 (_1!24542 (findLongestMatchInner!1464 (regex!7098 (h!49301 rules!3870)) Nil!43880 (size!32779 Nil!43880) input!3411 input!3411 (size!32779 input!3411)))))))

(declare-fun lt!1464055 () Unit!63409)

(declare-fun choose!25001 (Regex!12003 List!44004) Unit!63409)

(assert (=> d!1215370 (= lt!1464055 (choose!25001 (regex!7098 (h!49301 rules!3870)) input!3411))))

(assert (=> d!1215370 (validRegex!5440 (regex!7098 (h!49301 rules!3870)))))

(assert (=> d!1215370 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1437 (regex!7098 (h!49301 rules!3870)) input!3411) lt!1464055)))

(declare-fun b!4093000 () Bool)

(assert (=> b!4093000 (= e!2540056 (matchR!5944 (regex!7098 (h!49301 rules!3870)) (_1!24542 (findLongestMatchInner!1464 (regex!7098 (h!49301 rules!3870)) Nil!43880 (size!32779 Nil!43880) input!3411 input!3411 (size!32779 input!3411)))))))

(assert (= (and d!1215370 (not res!1672938)) b!4093000))

(assert (=> d!1215370 m!4699563))

(assert (=> d!1215370 m!4699341))

(assert (=> d!1215370 m!4699569))

(assert (=> d!1215370 m!4699897))

(assert (=> d!1215370 m!4699563))

(declare-fun m!4700165 () Bool)

(assert (=> d!1215370 m!4700165))

(assert (=> d!1215370 m!4699573))

(assert (=> d!1215370 m!4699341))

(assert (=> b!4093000 m!4699563))

(assert (=> b!4093000 m!4699341))

(assert (=> b!4093000 m!4699563))

(assert (=> b!4093000 m!4699341))

(assert (=> b!4093000 m!4699569))

(assert (=> b!4093000 m!4699577))

(assert (=> b!4092492 d!1215370))

(assert (=> b!4092533 d!1215184))

(assert (=> b!4092533 d!1215186))

(assert (=> d!1215124 d!1215130))

(declare-fun b!4093037 () Bool)

(declare-fun e!2540085 () Bool)

(declare-fun e!2540083 () Bool)

(assert (=> b!4093037 (= e!2540085 e!2540083)))

(declare-fun c!705450 () Bool)

(assert (=> b!4093037 (= c!705450 ((_ is Union!12003) (regex!7098 r!4213)))))

(declare-fun c!705451 () Bool)

(declare-fun bm!289320 () Bool)

(declare-fun call!289326 () Bool)

(assert (=> bm!289320 (= call!289326 (validRegex!5440 (ite c!705451 (reg!12332 (regex!7098 r!4213)) (ite c!705450 (regTwo!24519 (regex!7098 r!4213)) (regTwo!24518 (regex!7098 r!4213))))))))

(declare-fun bm!289321 () Bool)

(declare-fun call!289327 () Bool)

(assert (=> bm!289321 (= call!289327 (validRegex!5440 (ite c!705450 (regOne!24519 (regex!7098 r!4213)) (regOne!24518 (regex!7098 r!4213)))))))

(declare-fun b!4093038 () Bool)

(declare-fun e!2540086 () Bool)

(declare-fun call!289325 () Bool)

(assert (=> b!4093038 (= e!2540086 call!289325)))

(declare-fun d!1215382 () Bool)

(declare-fun res!1672959 () Bool)

(declare-fun e!2540084 () Bool)

(assert (=> d!1215382 (=> res!1672959 e!2540084)))

(assert (=> d!1215382 (= res!1672959 ((_ is ElementMatch!12003) (regex!7098 r!4213)))))

(assert (=> d!1215382 (= (validRegex!5440 (regex!7098 r!4213)) e!2540084)))

(declare-fun b!4093039 () Bool)

(declare-fun e!2540080 () Bool)

(assert (=> b!4093039 (= e!2540085 e!2540080)))

(declare-fun res!1672963 () Bool)

(assert (=> b!4093039 (= res!1672963 (not (nullable!4240 (reg!12332 (regex!7098 r!4213)))))))

(assert (=> b!4093039 (=> (not res!1672963) (not e!2540080))))

(declare-fun b!4093040 () Bool)

(assert (=> b!4093040 (= e!2540084 e!2540085)))

(assert (=> b!4093040 (= c!705451 ((_ is Star!12003) (regex!7098 r!4213)))))

(declare-fun b!4093041 () Bool)

(declare-fun e!2540082 () Bool)

(declare-fun e!2540081 () Bool)

(assert (=> b!4093041 (= e!2540082 e!2540081)))

(declare-fun res!1672960 () Bool)

(assert (=> b!4093041 (=> (not res!1672960) (not e!2540081))))

(assert (=> b!4093041 (= res!1672960 call!289327)))

(declare-fun b!4093042 () Bool)

(assert (=> b!4093042 (= e!2540081 call!289325)))

(declare-fun b!4093043 () Bool)

(declare-fun res!1672961 () Bool)

(assert (=> b!4093043 (=> res!1672961 e!2540082)))

(assert (=> b!4093043 (= res!1672961 (not ((_ is Concat!19332) (regex!7098 r!4213))))))

(assert (=> b!4093043 (= e!2540083 e!2540082)))

(declare-fun bm!289322 () Bool)

(assert (=> bm!289322 (= call!289325 call!289326)))

(declare-fun b!4093044 () Bool)

(assert (=> b!4093044 (= e!2540080 call!289326)))

(declare-fun b!4093045 () Bool)

(declare-fun res!1672962 () Bool)

(assert (=> b!4093045 (=> (not res!1672962) (not e!2540086))))

(assert (=> b!4093045 (= res!1672962 call!289327)))

(assert (=> b!4093045 (= e!2540083 e!2540086)))

(assert (= (and d!1215382 (not res!1672959)) b!4093040))

(assert (= (and b!4093040 c!705451) b!4093039))

(assert (= (and b!4093040 (not c!705451)) b!4093037))

(assert (= (and b!4093039 res!1672963) b!4093044))

(assert (= (and b!4093037 c!705450) b!4093045))

(assert (= (and b!4093037 (not c!705450)) b!4093043))

(assert (= (and b!4093045 res!1672962) b!4093038))

(assert (= (and b!4093043 (not res!1672961)) b!4093041))

(assert (= (and b!4093041 res!1672960) b!4093042))

(assert (= (or b!4093038 b!4093042) bm!289322))

(assert (= (or b!4093045 b!4093041) bm!289321))

(assert (= (or b!4093044 bm!289322) bm!289320))

(declare-fun m!4700189 () Bool)

(assert (=> bm!289320 m!4700189))

(declare-fun m!4700191 () Bool)

(assert (=> bm!289321 m!4700191))

(declare-fun m!4700193 () Bool)

(assert (=> b!4093039 m!4700193))

(assert (=> d!1215124 d!1215382))

(declare-fun b!4093047 () Bool)

(declare-fun e!2540088 () List!44004)

(assert (=> b!4093047 (= e!2540088 (Cons!43880 (h!49300 (t!338859 p!2988)) (++!11504 (t!338859 (t!338859 p!2988)) suffix!1518)))))

(declare-fun b!4093046 () Bool)

(assert (=> b!4093046 (= e!2540088 suffix!1518)))

(declare-fun e!2540087 () Bool)

(declare-fun lt!1464059 () List!44004)

(declare-fun b!4093049 () Bool)

(assert (=> b!4093049 (= e!2540087 (or (not (= suffix!1518 Nil!43880)) (= lt!1464059 (t!338859 p!2988))))))

(declare-fun d!1215390 () Bool)

(assert (=> d!1215390 e!2540087))

(declare-fun res!1672964 () Bool)

(assert (=> d!1215390 (=> (not res!1672964) (not e!2540087))))

(assert (=> d!1215390 (= res!1672964 (= (content!6767 lt!1464059) ((_ map or) (content!6767 (t!338859 p!2988)) (content!6767 suffix!1518))))))

(assert (=> d!1215390 (= lt!1464059 e!2540088)))

(declare-fun c!705452 () Bool)

(assert (=> d!1215390 (= c!705452 ((_ is Nil!43880) (t!338859 p!2988)))))

(assert (=> d!1215390 (= (++!11504 (t!338859 p!2988) suffix!1518) lt!1464059)))

(declare-fun b!4093048 () Bool)

(declare-fun res!1672965 () Bool)

(assert (=> b!4093048 (=> (not res!1672965) (not e!2540087))))

(assert (=> b!4093048 (= res!1672965 (= (size!32779 lt!1464059) (+ (size!32779 (t!338859 p!2988)) (size!32779 suffix!1518))))))

(assert (= (and d!1215390 c!705452) b!4093046))

(assert (= (and d!1215390 (not c!705452)) b!4093047))

(assert (= (and d!1215390 res!1672964) b!4093048))

(assert (= (and b!4093048 res!1672965) b!4093049))

(declare-fun m!4700195 () Bool)

(assert (=> b!4093047 m!4700195))

(declare-fun m!4700197 () Bool)

(assert (=> d!1215390 m!4700197))

(declare-fun m!4700199 () Bool)

(assert (=> d!1215390 m!4700199))

(assert (=> d!1215390 m!4699531))

(declare-fun m!4700201 () Bool)

(assert (=> b!4093048 m!4700201))

(assert (=> b!4093048 m!4699343))

(assert (=> b!4093048 m!4699535))

(assert (=> b!4092465 d!1215390))

(declare-fun d!1215392 () Bool)

(assert (=> d!1215392 (= (inv!58588 (tag!7958 (h!49301 (t!338860 rules!3870)))) (= (mod (str.len (value!222944 (tag!7958 (h!49301 (t!338860 rules!3870))))) 2) 0))))

(assert (=> b!4092582 d!1215392))

(declare-fun d!1215394 () Bool)

(declare-fun res!1672966 () Bool)

(declare-fun e!2540099 () Bool)

(assert (=> d!1215394 (=> (not res!1672966) (not e!2540099))))

(assert (=> d!1215394 (= res!1672966 (semiInverseModEq!3052 (toChars!9549 (transformation!7098 (h!49301 (t!338860 rules!3870)))) (toValue!9690 (transformation!7098 (h!49301 (t!338860 rules!3870))))))))

(assert (=> d!1215394 (= (inv!58592 (transformation!7098 (h!49301 (t!338860 rules!3870)))) e!2540099)))

(declare-fun b!4093070 () Bool)

(assert (=> b!4093070 (= e!2540099 (equivClasses!2951 (toChars!9549 (transformation!7098 (h!49301 (t!338860 rules!3870)))) (toValue!9690 (transformation!7098 (h!49301 (t!338860 rules!3870))))))))

(assert (= (and d!1215394 res!1672966) b!4093070))

(declare-fun m!4700203 () Bool)

(assert (=> d!1215394 m!4700203))

(declare-fun m!4700205 () Bool)

(assert (=> b!4093070 m!4700205))

(assert (=> b!4092582 d!1215394))

(declare-fun b!4093072 () Bool)

(declare-fun e!2540101 () List!44004)

(assert (=> b!4093072 (= e!2540101 (Cons!43880 (h!49300 (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463678))))) (++!11504 (t!338859 (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463678))))) (_2!24540 (get!14391 lt!1463678)))))))

(declare-fun b!4093071 () Bool)

(assert (=> b!4093071 (= e!2540101 (_2!24540 (get!14391 lt!1463678)))))

(declare-fun b!4093074 () Bool)

(declare-fun e!2540100 () Bool)

(declare-fun lt!1464062 () List!44004)

(assert (=> b!4093074 (= e!2540100 (or (not (= (_2!24540 (get!14391 lt!1463678)) Nil!43880)) (= lt!1464062 (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463678)))))))))

(declare-fun d!1215396 () Bool)

(assert (=> d!1215396 e!2540100))

(declare-fun res!1672967 () Bool)

(assert (=> d!1215396 (=> (not res!1672967) (not e!2540100))))

(assert (=> d!1215396 (= res!1672967 (= (content!6767 lt!1464062) ((_ map or) (content!6767 (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463678))))) (content!6767 (_2!24540 (get!14391 lt!1463678))))))))

(assert (=> d!1215396 (= lt!1464062 e!2540101)))

(declare-fun c!705463 () Bool)

(assert (=> d!1215396 (= c!705463 ((_ is Nil!43880) (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463678))))))))

(assert (=> d!1215396 (= (++!11504 (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463678)))) (_2!24540 (get!14391 lt!1463678))) lt!1464062)))

(declare-fun b!4093073 () Bool)

(declare-fun res!1672968 () Bool)

(assert (=> b!4093073 (=> (not res!1672968) (not e!2540100))))

(assert (=> b!4093073 (= res!1672968 (= (size!32779 lt!1464062) (+ (size!32779 (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463678))))) (size!32779 (_2!24540 (get!14391 lt!1463678))))))))

(assert (= (and d!1215396 c!705463) b!4093071))

(assert (= (and d!1215396 (not c!705463)) b!4093072))

(assert (= (and d!1215396 res!1672967) b!4093073))

(assert (= (and b!4093073 res!1672968) b!4093074))

(declare-fun m!4700207 () Bool)

(assert (=> b!4093072 m!4700207))

(declare-fun m!4700209 () Bool)

(assert (=> d!1215396 m!4700209))

(assert (=> d!1215396 m!4699315))

(declare-fun m!4700211 () Bool)

(assert (=> d!1215396 m!4700211))

(declare-fun m!4700213 () Bool)

(assert (=> d!1215396 m!4700213))

(declare-fun m!4700215 () Bool)

(assert (=> b!4093073 m!4700215))

(assert (=> b!4093073 m!4699315))

(declare-fun m!4700217 () Bool)

(assert (=> b!4093073 m!4700217))

(assert (=> b!4093073 m!4699339))

(assert (=> b!4092254 d!1215396))

(assert (=> b!4092254 d!1215264))

(assert (=> b!4092254 d!1215266))

(assert (=> b!4092254 d!1215258))

(declare-fun d!1215398 () Bool)

(assert (=> d!1215398 (= (inv!58596 (dynLambda!18794 (toChars!9549 (transformation!7098 (rule!10242 lt!1463654))) (value!222945 lt!1463654))) (isBalanced!3706 (c!705275 (dynLambda!18794 (toChars!9549 (transformation!7098 (rule!10242 lt!1463654))) (value!222945 lt!1463654)))))))

(declare-fun bs!593437 () Bool)

(assert (= bs!593437 d!1215398))

(declare-fun m!4700219 () Bool)

(assert (=> bs!593437 m!4700219))

(assert (=> tb!246097 d!1215398))

(assert (=> b!4092540 d!1215220))

(declare-fun bs!593438 () Bool)

(declare-fun d!1215400 () Bool)

(assert (= bs!593438 (and d!1215400 d!1215068)))

(declare-fun lambda!128070 () Int)

(assert (=> bs!593438 (= lambda!128070 lambda!128043)))

(declare-fun bs!593439 () Bool)

(assert (= bs!593439 (and d!1215400 d!1215276)))

(assert (=> bs!593439 (= (and (= (toChars!9549 (transformation!7098 r!4213)) (toChars!9549 (transformation!7098 (h!49301 rules!3870)))) (= (toValue!9690 (transformation!7098 r!4213)) (toValue!9690 (transformation!7098 (h!49301 rules!3870))))) (= lambda!128070 lambda!128055))))

(declare-fun bs!593440 () Bool)

(assert (= bs!593440 (and d!1215400 d!1215306)))

(assert (=> bs!593440 (= (and (= (toChars!9549 (transformation!7098 r!4213)) (toChars!9549 (transformation!7098 (h!49301 rules!3870)))) (= (toValue!9690 (transformation!7098 r!4213)) (toValue!9690 (transformation!7098 (h!49301 rules!3870))))) (= lambda!128070 lambda!128062))))

(assert (=> d!1215400 true))

(assert (=> d!1215400 (< (dynLambda!18793 order!23097 (toChars!9549 (transformation!7098 r!4213))) (dynLambda!18792 order!23095 lambda!128070))))

(assert (=> d!1215400 true))

(assert (=> d!1215400 (< (dynLambda!18791 order!23093 (toValue!9690 (transformation!7098 r!4213))) (dynLambda!18792 order!23095 lambda!128070))))

(assert (=> d!1215400 (= (semiInverseModEq!3052 (toChars!9549 (transformation!7098 r!4213)) (toValue!9690 (transformation!7098 r!4213))) (Forall!1516 lambda!128070))))

(declare-fun bs!593441 () Bool)

(assert (= bs!593441 d!1215400))

(declare-fun m!4700221 () Bool)

(assert (=> bs!593441 m!4700221))

(assert (=> d!1215096 d!1215400))

(assert (=> b!4092499 d!1215238))

(declare-fun d!1215402 () Bool)

(declare-fun lt!1464063 () Int)

(assert (=> d!1215402 (>= lt!1464063 0)))

(declare-fun e!2540102 () Int)

(assert (=> d!1215402 (= lt!1464063 e!2540102)))

(declare-fun c!705464 () Bool)

(assert (=> d!1215402 (= c!705464 ((_ is Nil!43880) (originalCharacters!7692 (_1!24540 (get!14391 lt!1463752)))))))

(assert (=> d!1215402 (= (size!32779 (originalCharacters!7692 (_1!24540 (get!14391 lt!1463752)))) lt!1464063)))

(declare-fun b!4093075 () Bool)

(assert (=> b!4093075 (= e!2540102 0)))

(declare-fun b!4093076 () Bool)

(assert (=> b!4093076 (= e!2540102 (+ 1 (size!32779 (t!338859 (originalCharacters!7692 (_1!24540 (get!14391 lt!1463752)))))))))

(assert (= (and d!1215402 c!705464) b!4093075))

(assert (= (and d!1215402 (not c!705464)) b!4093076))

(declare-fun m!4700223 () Bool)

(assert (=> b!4093076 m!4700223))

(assert (=> b!4092499 d!1215402))

(declare-fun d!1215404 () Bool)

(assert (=> d!1215404 (= (isEmpty!26247 (originalCharacters!7692 lt!1463654)) ((_ is Nil!43880) (originalCharacters!7692 lt!1463654)))))

(assert (=> d!1215092 d!1215404))

(declare-fun d!1215406 () Bool)

(assert (=> d!1215406 (= (list!16288 (dynLambda!18794 (toChars!9549 (transformation!7098 r!4213)) (dynLambda!18790 (toValue!9690 (transformation!7098 r!4213)) lt!1463658))) (list!16290 (c!705275 (dynLambda!18794 (toChars!9549 (transformation!7098 r!4213)) (dynLambda!18790 (toValue!9690 (transformation!7098 r!4213)) lt!1463658)))))))

(declare-fun bs!593442 () Bool)

(assert (= bs!593442 d!1215406))

(declare-fun m!4700225 () Bool)

(assert (=> bs!593442 m!4700225))

(assert (=> d!1215068 d!1215406))

(declare-fun d!1215408 () Bool)

(assert (=> d!1215408 (= (list!16288 lt!1463658) (list!16290 (c!705275 lt!1463658)))))

(declare-fun bs!593443 () Bool)

(assert (= bs!593443 d!1215408))

(declare-fun m!4700227 () Bool)

(assert (=> bs!593443 m!4700227))

(assert (=> d!1215068 d!1215408))

(declare-fun d!1215410 () Bool)

(declare-fun dynLambda!18798 (Int BalanceConc!26212) Bool)

(assert (=> d!1215410 (dynLambda!18798 lambda!128043 lt!1463658)))

(declare-fun lt!1464066 () Unit!63409)

(declare-fun choose!25002 (Int BalanceConc!26212) Unit!63409)

(assert (=> d!1215410 (= lt!1464066 (choose!25002 lambda!128043 lt!1463658))))

(assert (=> d!1215410 (Forall!1516 lambda!128043)))

(assert (=> d!1215410 (= (ForallOf!891 lambda!128043 lt!1463658) lt!1464066)))

(declare-fun b_lambda!120073 () Bool)

(assert (=> (not b_lambda!120073) (not d!1215410)))

(declare-fun bs!593444 () Bool)

(assert (= bs!593444 d!1215410))

(declare-fun m!4700229 () Bool)

(assert (=> bs!593444 m!4700229))

(declare-fun m!4700231 () Bool)

(assert (=> bs!593444 m!4700231))

(declare-fun m!4700233 () Bool)

(assert (=> bs!593444 m!4700233))

(assert (=> d!1215068 d!1215410))

(declare-fun d!1215412 () Bool)

(declare-fun res!1672969 () Bool)

(declare-fun e!2540103 () Bool)

(assert (=> d!1215412 (=> res!1672969 e!2540103)))

(assert (=> d!1215412 (= res!1672969 ((_ is Nil!43881) rules!3870))))

(assert (=> d!1215412 (= (noDuplicateTag!2787 thiss!26199 rules!3870 Nil!43883) e!2540103)))

(declare-fun b!4093077 () Bool)

(declare-fun e!2540104 () Bool)

(assert (=> b!4093077 (= e!2540103 e!2540104)))

(declare-fun res!1672970 () Bool)

(assert (=> b!4093077 (=> (not res!1672970) (not e!2540104))))

(assert (=> b!4093077 (= res!1672970 (not (contains!8780 Nil!43883 (tag!7958 (h!49301 rules!3870)))))))

(declare-fun b!4093078 () Bool)

(assert (=> b!4093078 (= e!2540104 (noDuplicateTag!2787 thiss!26199 (t!338860 rules!3870) (Cons!43883 (tag!7958 (h!49301 rules!3870)) Nil!43883)))))

(assert (= (and d!1215412 (not res!1672969)) b!4093077))

(assert (= (and b!4093077 res!1672970) b!4093078))

(declare-fun m!4700235 () Bool)

(assert (=> b!4093077 m!4700235))

(declare-fun m!4700237 () Bool)

(assert (=> b!4093078 m!4700237))

(assert (=> b!4092416 d!1215412))

(declare-fun bs!593445 () Bool)

(declare-fun d!1215414 () Bool)

(assert (= bs!593445 (and d!1215414 d!1215288)))

(declare-fun lambda!128071 () Int)

(assert (=> bs!593445 (= lambda!128071 lambda!128061)))

(assert (=> d!1215414 true))

(declare-fun lt!1464068 () Bool)

(assert (=> d!1215414 (= lt!1464068 (rulesValidInductive!2627 thiss!26199 (t!338860 rules!3870)))))

(assert (=> d!1215414 (= lt!1464068 (forall!8414 (t!338860 rules!3870) lambda!128071))))

(assert (=> d!1215414 (= (rulesValid!2786 thiss!26199 (t!338860 rules!3870)) lt!1464068)))

(declare-fun bs!593446 () Bool)

(assert (= bs!593446 d!1215414))

(declare-fun m!4700239 () Bool)

(assert (=> bs!593446 m!4700239))

(declare-fun m!4700241 () Bool)

(assert (=> bs!593446 m!4700241))

(assert (=> d!1215120 d!1215414))

(declare-fun d!1215416 () Bool)

(declare-fun c!705472 () Bool)

(assert (=> d!1215416 (= c!705472 ((_ is Nil!43880) lt!1463737))))

(declare-fun e!2540120 () (InoxSet C!24192))

(assert (=> d!1215416 (= (content!6767 lt!1463737) e!2540120)))

(declare-fun b!4093103 () Bool)

(assert (=> b!4093103 (= e!2540120 ((as const (Array C!24192 Bool)) false))))

(declare-fun b!4093104 () Bool)

(assert (=> b!4093104 (= e!2540120 ((_ map or) (store ((as const (Array C!24192 Bool)) false) (h!49300 lt!1463737) true) (content!6767 (t!338859 lt!1463737))))))

(assert (= (and d!1215416 c!705472) b!4093103))

(assert (= (and d!1215416 (not c!705472)) b!4093104))

(declare-fun m!4700251 () Bool)

(assert (=> b!4093104 m!4700251))

(declare-fun m!4700253 () Bool)

(assert (=> b!4093104 m!4700253))

(assert (=> d!1215114 d!1215416))

(declare-fun d!1215418 () Bool)

(declare-fun c!705473 () Bool)

(assert (=> d!1215418 (= c!705473 ((_ is Nil!43880) p!2988))))

(declare-fun e!2540121 () (InoxSet C!24192))

(assert (=> d!1215418 (= (content!6767 p!2988) e!2540121)))

(declare-fun b!4093105 () Bool)

(assert (=> b!4093105 (= e!2540121 ((as const (Array C!24192 Bool)) false))))

(declare-fun b!4093106 () Bool)

(assert (=> b!4093106 (= e!2540121 ((_ map or) (store ((as const (Array C!24192 Bool)) false) (h!49300 p!2988) true) (content!6767 (t!338859 p!2988))))))

(assert (= (and d!1215418 c!705473) b!4093105))

(assert (= (and d!1215418 (not c!705473)) b!4093106))

(declare-fun m!4700255 () Bool)

(assert (=> b!4093106 m!4700255))

(assert (=> b!4093106 m!4700199))

(assert (=> d!1215114 d!1215418))

(declare-fun d!1215420 () Bool)

(declare-fun c!705474 () Bool)

(assert (=> d!1215420 (= c!705474 ((_ is Nil!43880) suffix!1518))))

(declare-fun e!2540122 () (InoxSet C!24192))

(assert (=> d!1215420 (= (content!6767 suffix!1518) e!2540122)))

(declare-fun b!4093107 () Bool)

(assert (=> b!4093107 (= e!2540122 ((as const (Array C!24192 Bool)) false))))

(declare-fun b!4093108 () Bool)

(assert (=> b!4093108 (= e!2540122 ((_ map or) (store ((as const (Array C!24192 Bool)) false) (h!49300 suffix!1518) true) (content!6767 (t!338859 suffix!1518))))))

(assert (= (and d!1215420 c!705474) b!4093107))

(assert (= (and d!1215420 (not c!705474)) b!4093108))

(declare-fun m!4700257 () Bool)

(assert (=> b!4093108 m!4700257))

(declare-fun m!4700259 () Bool)

(assert (=> b!4093108 m!4700259))

(assert (=> d!1215114 d!1215420))

(declare-fun d!1215422 () Bool)

(declare-fun c!705477 () Bool)

(assert (=> d!1215422 (= c!705477 ((_ is Nil!43881) rules!3870))))

(declare-fun e!2540130 () (InoxSet Rule!13996))

(assert (=> d!1215422 (= (content!6766 rules!3870) e!2540130)))

(declare-fun b!4093133 () Bool)

(assert (=> b!4093133 (= e!2540130 ((as const (Array Rule!13996 Bool)) false))))

(declare-fun b!4093134 () Bool)

(assert (=> b!4093134 (= e!2540130 ((_ map or) (store ((as const (Array Rule!13996 Bool)) false) (h!49301 rules!3870) true) (content!6766 (t!338860 rules!3870))))))

(assert (= (and d!1215422 c!705477) b!4093133))

(assert (= (and d!1215422 (not c!705477)) b!4093134))

(declare-fun m!4700265 () Bool)

(assert (=> b!4093134 m!4700265))

(declare-fun m!4700267 () Bool)

(assert (=> b!4093134 m!4700267))

(assert (=> d!1215090 d!1215422))

(declare-fun d!1215424 () Bool)

(declare-fun lt!1464069 () Bool)

(assert (=> d!1215424 (= lt!1464069 (select (content!6766 (t!338860 rules!3870)) r!4213))))

(declare-fun e!2540134 () Bool)

(assert (=> d!1215424 (= lt!1464069 e!2540134)))

(declare-fun res!1672972 () Bool)

(assert (=> d!1215424 (=> (not res!1672972) (not e!2540134))))

(assert (=> d!1215424 (= res!1672972 ((_ is Cons!43881) (t!338860 rules!3870)))))

(assert (=> d!1215424 (= (contains!8779 (t!338860 rules!3870) r!4213) lt!1464069)))

(declare-fun b!4093139 () Bool)

(declare-fun e!2540133 () Bool)

(assert (=> b!4093139 (= e!2540134 e!2540133)))

(declare-fun res!1672971 () Bool)

(assert (=> b!4093139 (=> res!1672971 e!2540133)))

(assert (=> b!4093139 (= res!1672971 (= (h!49301 (t!338860 rules!3870)) r!4213))))

(declare-fun b!4093140 () Bool)

(assert (=> b!4093140 (= e!2540133 (contains!8779 (t!338860 (t!338860 rules!3870)) r!4213))))

(assert (= (and d!1215424 res!1672972) b!4093139))

(assert (= (and b!4093139 (not res!1672971)) b!4093140))

(assert (=> d!1215424 m!4700267))

(declare-fun m!4700269 () Bool)

(assert (=> d!1215424 m!4700269))

(declare-fun m!4700271 () Bool)

(assert (=> b!4093140 m!4700271))

(assert (=> b!4092383 d!1215424))

(declare-fun d!1215426 () Bool)

(assert (=> d!1215426 (= (isEmpty!26249 lt!1463678) (not ((_ is Some!9503) lt!1463678)))))

(assert (=> d!1215044 d!1215426))

(declare-fun b!4093180 () Bool)

(declare-fun res!1672982 () Bool)

(declare-fun e!2540152 () Bool)

(assert (=> b!4093180 (=> (not res!1672982) (not e!2540152))))

(assert (=> b!4093180 (= res!1672982 (= (head!8651 input!3411) (head!8651 input!3411)))))

(declare-fun b!4093182 () Bool)

(declare-fun e!2540153 () Bool)

(assert (=> b!4093182 (= e!2540153 (>= (size!32779 input!3411) (size!32779 input!3411)))))

(declare-fun b!4093181 () Bool)

(assert (=> b!4093181 (= e!2540152 (isPrefix!4145 (tail!6385 input!3411) (tail!6385 input!3411)))))

(declare-fun d!1215428 () Bool)

(assert (=> d!1215428 e!2540153))

(declare-fun res!1672983 () Bool)

(assert (=> d!1215428 (=> res!1672983 e!2540153)))

(declare-fun lt!1464072 () Bool)

(assert (=> d!1215428 (= res!1672983 (not lt!1464072))))

(declare-fun e!2540154 () Bool)

(assert (=> d!1215428 (= lt!1464072 e!2540154)))

(declare-fun res!1672984 () Bool)

(assert (=> d!1215428 (=> res!1672984 e!2540154)))

(assert (=> d!1215428 (= res!1672984 ((_ is Nil!43880) input!3411))))

(assert (=> d!1215428 (= (isPrefix!4145 input!3411 input!3411) lt!1464072)))

(declare-fun b!4093179 () Bool)

(assert (=> b!4093179 (= e!2540154 e!2540152)))

(declare-fun res!1672981 () Bool)

(assert (=> b!4093179 (=> (not res!1672981) (not e!2540152))))

(assert (=> b!4093179 (= res!1672981 (not ((_ is Nil!43880) input!3411)))))

(assert (= (and d!1215428 (not res!1672984)) b!4093179))

(assert (= (and b!4093179 res!1672981) b!4093180))

(assert (= (and b!4093180 res!1672982) b!4093181))

(assert (= (and d!1215428 (not res!1672983)) b!4093182))

(assert (=> b!4093180 m!4700111))

(assert (=> b!4093180 m!4700111))

(assert (=> b!4093182 m!4699341))

(assert (=> b!4093182 m!4699341))

(assert (=> b!4093181 m!4700135))

(assert (=> b!4093181 m!4700135))

(assert (=> b!4093181 m!4700135))

(assert (=> b!4093181 m!4700135))

(declare-fun m!4700285 () Bool)

(assert (=> b!4093181 m!4700285))

(assert (=> d!1215044 d!1215428))

(declare-fun d!1215432 () Bool)

(assert (=> d!1215432 (isPrefix!4145 input!3411 input!3411)))

(declare-fun lt!1464075 () Unit!63409)

(declare-fun choose!25003 (List!44004 List!44004) Unit!63409)

(assert (=> d!1215432 (= lt!1464075 (choose!25003 input!3411 input!3411))))

(assert (=> d!1215432 (= (lemmaIsPrefixRefl!2696 input!3411 input!3411) lt!1464075)))

(declare-fun bs!593448 () Bool)

(assert (= bs!593448 d!1215432))

(assert (=> bs!593448 m!4699321))

(declare-fun m!4700287 () Bool)

(assert (=> bs!593448 m!4700287))

(assert (=> d!1215044 d!1215432))

(declare-fun bs!593449 () Bool)

(declare-fun d!1215434 () Bool)

(assert (= bs!593449 (and d!1215434 d!1215288)))

(declare-fun lambda!128074 () Int)

(assert (=> bs!593449 (= lambda!128074 lambda!128061)))

(declare-fun bs!593450 () Bool)

(assert (= bs!593450 (and d!1215434 d!1215414)))

(assert (=> bs!593450 (= lambda!128074 lambda!128071)))

(assert (=> d!1215434 true))

(declare-fun lt!1464078 () Bool)

(assert (=> d!1215434 (= lt!1464078 (forall!8414 rules!3870 lambda!128074))))

(declare-fun e!2540160 () Bool)

(assert (=> d!1215434 (= lt!1464078 e!2540160)))

(declare-fun res!1672989 () Bool)

(assert (=> d!1215434 (=> res!1672989 e!2540160)))

(assert (=> d!1215434 (= res!1672989 (not ((_ is Cons!43881) rules!3870)))))

(assert (=> d!1215434 (= (rulesValidInductive!2627 thiss!26199 rules!3870) lt!1464078)))

(declare-fun b!4093187 () Bool)

(declare-fun e!2540159 () Bool)

(assert (=> b!4093187 (= e!2540160 e!2540159)))

(declare-fun res!1672990 () Bool)

(assert (=> b!4093187 (=> (not res!1672990) (not e!2540159))))

(assert (=> b!4093187 (= res!1672990 (ruleValid!3018 thiss!26199 (h!49301 rules!3870)))))

(declare-fun b!4093188 () Bool)

(assert (=> b!4093188 (= e!2540159 (rulesValidInductive!2627 thiss!26199 (t!338860 rules!3870)))))

(assert (= (and d!1215434 (not res!1672989)) b!4093187))

(assert (= (and b!4093187 res!1672990) b!4093188))

(declare-fun m!4700289 () Bool)

(assert (=> d!1215434 m!4700289))

(assert (=> b!4093187 m!4699551))

(assert (=> b!4093188 m!4700239))

(assert (=> d!1215044 d!1215434))

(declare-fun d!1215436 () Bool)

(declare-fun e!2540163 () Bool)

(assert (=> d!1215436 e!2540163))

(declare-fun res!1672993 () Bool)

(assert (=> d!1215436 (=> (not res!1672993) (not e!2540163))))

(declare-fun lt!1464081 () BalanceConc!26212)

(assert (=> d!1215436 (= res!1672993 (= (list!16288 lt!1464081) p!2988))))

(declare-fun fromList!885 (List!44004) Conc!13309)

(assert (=> d!1215436 (= lt!1464081 (BalanceConc!26213 (fromList!885 p!2988)))))

(assert (=> d!1215436 (= (fromListB!2438 p!2988) lt!1464081)))

(declare-fun b!4093191 () Bool)

(assert (=> b!4093191 (= e!2540163 (isBalanced!3706 (fromList!885 p!2988)))))

(assert (= (and d!1215436 res!1672993) b!4093191))

(declare-fun m!4700291 () Bool)

(assert (=> d!1215436 m!4700291))

(declare-fun m!4700293 () Bool)

(assert (=> d!1215436 m!4700293))

(assert (=> b!4093191 m!4700293))

(assert (=> b!4093191 m!4700293))

(declare-fun m!4700295 () Bool)

(assert (=> b!4093191 m!4700295))

(assert (=> d!1215066 d!1215436))

(assert (=> b!4092493 d!1215238))

(assert (=> bm!289228 d!1215118))

(assert (=> d!1215126 d!1215382))

(declare-fun d!1215438 () Bool)

(declare-fun lt!1464082 () Bool)

(assert (=> d!1215438 (= lt!1464082 (select (content!6766 rules!3870) (rule!10242 (_1!24540 (get!14391 lt!1463678)))))))

(declare-fun e!2540165 () Bool)

(assert (=> d!1215438 (= lt!1464082 e!2540165)))

(declare-fun res!1672995 () Bool)

(assert (=> d!1215438 (=> (not res!1672995) (not e!2540165))))

(assert (=> d!1215438 (= res!1672995 ((_ is Cons!43881) rules!3870))))

(assert (=> d!1215438 (= (contains!8779 rules!3870 (rule!10242 (_1!24540 (get!14391 lt!1463678)))) lt!1464082)))

(declare-fun b!4093192 () Bool)

(declare-fun e!2540164 () Bool)

(assert (=> b!4093192 (= e!2540165 e!2540164)))

(declare-fun res!1672994 () Bool)

(assert (=> b!4093192 (=> res!1672994 e!2540164)))

(assert (=> b!4093192 (= res!1672994 (= (h!49301 rules!3870) (rule!10242 (_1!24540 (get!14391 lt!1463678)))))))

(declare-fun b!4093193 () Bool)

(assert (=> b!4093193 (= e!2540164 (contains!8779 (t!338860 rules!3870) (rule!10242 (_1!24540 (get!14391 lt!1463678)))))))

(assert (= (and d!1215438 res!1672995) b!4093192))

(assert (= (and b!4093192 (not res!1672994)) b!4093193))

(assert (=> d!1215438 m!4699467))

(declare-fun m!4700297 () Bool)

(assert (=> d!1215438 m!4700297))

(declare-fun m!4700299 () Bool)

(assert (=> b!4093193 m!4700299))

(assert (=> b!4092252 d!1215438))

(assert (=> b!4092252 d!1215258))

(declare-fun d!1215440 () Bool)

(assert (=> d!1215440 (= (list!16288 (dynLambda!18794 (toChars!9549 (transformation!7098 (rule!10242 lt!1463654))) (value!222945 lt!1463654))) (list!16290 (c!705275 (dynLambda!18794 (toChars!9549 (transformation!7098 (rule!10242 lt!1463654))) (value!222945 lt!1463654)))))))

(declare-fun bs!593451 () Bool)

(assert (= bs!593451 d!1215440))

(declare-fun m!4700301 () Bool)

(assert (=> bs!593451 m!4700301))

(assert (=> b!4092388 d!1215440))

(declare-fun bm!289335 () Bool)

(declare-fun call!289340 () Bool)

(assert (=> bm!289335 (= call!289340 (isEmpty!26247 (_1!24542 (findLongestMatchInner!1464 (regex!7098 (h!49301 rules!3870)) Nil!43880 (size!32779 Nil!43880) input!3411 input!3411 (size!32779 input!3411)))))))

(declare-fun b!4093194 () Bool)

(declare-fun e!2540168 () Bool)

(assert (=> b!4093194 (= e!2540168 (nullable!4240 (regex!7098 (h!49301 rules!3870))))))

(declare-fun b!4093195 () Bool)

(declare-fun res!1672998 () Bool)

(declare-fun e!2540170 () Bool)

(assert (=> b!4093195 (=> res!1672998 e!2540170)))

(assert (=> b!4093195 (= res!1672998 (not (isEmpty!26247 (tail!6385 (_1!24542 (findLongestMatchInner!1464 (regex!7098 (h!49301 rules!3870)) Nil!43880 (size!32779 Nil!43880) input!3411 input!3411 (size!32779 input!3411)))))))))

(declare-fun b!4093196 () Bool)

(declare-fun e!2540171 () Bool)

(declare-fun e!2540169 () Bool)

(assert (=> b!4093196 (= e!2540171 e!2540169)))

(declare-fun c!705479 () Bool)

(assert (=> b!4093196 (= c!705479 ((_ is EmptyLang!12003) (regex!7098 (h!49301 rules!3870))))))

(declare-fun b!4093197 () Bool)

(assert (=> b!4093197 (= e!2540168 (matchR!5944 (derivativeStep!3641 (regex!7098 (h!49301 rules!3870)) (head!8651 (_1!24542 (findLongestMatchInner!1464 (regex!7098 (h!49301 rules!3870)) Nil!43880 (size!32779 Nil!43880) input!3411 input!3411 (size!32779 input!3411))))) (tail!6385 (_1!24542 (findLongestMatchInner!1464 (regex!7098 (h!49301 rules!3870)) Nil!43880 (size!32779 Nil!43880) input!3411 input!3411 (size!32779 input!3411))))))))

(declare-fun b!4093198 () Bool)

(declare-fun res!1673001 () Bool)

(declare-fun e!2540166 () Bool)

(assert (=> b!4093198 (=> (not res!1673001) (not e!2540166))))

(assert (=> b!4093198 (= res!1673001 (isEmpty!26247 (tail!6385 (_1!24542 (findLongestMatchInner!1464 (regex!7098 (h!49301 rules!3870)) Nil!43880 (size!32779 Nil!43880) input!3411 input!3411 (size!32779 input!3411))))))))

(declare-fun b!4093199 () Bool)

(declare-fun res!1672997 () Bool)

(declare-fun e!2540172 () Bool)

(assert (=> b!4093199 (=> res!1672997 e!2540172)))

(assert (=> b!4093199 (= res!1672997 e!2540166)))

(declare-fun res!1672996 () Bool)

(assert (=> b!4093199 (=> (not res!1672996) (not e!2540166))))

(declare-fun lt!1464083 () Bool)

(assert (=> b!4093199 (= res!1672996 lt!1464083)))

(declare-fun d!1215442 () Bool)

(assert (=> d!1215442 e!2540171))

(declare-fun c!705481 () Bool)

(assert (=> d!1215442 (= c!705481 ((_ is EmptyExpr!12003) (regex!7098 (h!49301 rules!3870))))))

(assert (=> d!1215442 (= lt!1464083 e!2540168)))

(declare-fun c!705480 () Bool)

(assert (=> d!1215442 (= c!705480 (isEmpty!26247 (_1!24542 (findLongestMatchInner!1464 (regex!7098 (h!49301 rules!3870)) Nil!43880 (size!32779 Nil!43880) input!3411 input!3411 (size!32779 input!3411)))))))

(assert (=> d!1215442 (validRegex!5440 (regex!7098 (h!49301 rules!3870)))))

(assert (=> d!1215442 (= (matchR!5944 (regex!7098 (h!49301 rules!3870)) (_1!24542 (findLongestMatchInner!1464 (regex!7098 (h!49301 rules!3870)) Nil!43880 (size!32779 Nil!43880) input!3411 input!3411 (size!32779 input!3411)))) lt!1464083)))

(declare-fun b!4093200 () Bool)

(assert (=> b!4093200 (= e!2540170 (not (= (head!8651 (_1!24542 (findLongestMatchInner!1464 (regex!7098 (h!49301 rules!3870)) Nil!43880 (size!32779 Nil!43880) input!3411 input!3411 (size!32779 input!3411)))) (c!705274 (regex!7098 (h!49301 rules!3870))))))))

(declare-fun b!4093201 () Bool)

(declare-fun res!1673003 () Bool)

(assert (=> b!4093201 (=> res!1673003 e!2540172)))

(assert (=> b!4093201 (= res!1673003 (not ((_ is ElementMatch!12003) (regex!7098 (h!49301 rules!3870)))))))

(assert (=> b!4093201 (= e!2540169 e!2540172)))

(declare-fun b!4093202 () Bool)

(assert (=> b!4093202 (= e!2540169 (not lt!1464083))))

(declare-fun b!4093203 () Bool)

(assert (=> b!4093203 (= e!2540171 (= lt!1464083 call!289340))))

(declare-fun b!4093204 () Bool)

(declare-fun e!2540167 () Bool)

(assert (=> b!4093204 (= e!2540172 e!2540167)))

(declare-fun res!1673002 () Bool)

(assert (=> b!4093204 (=> (not res!1673002) (not e!2540167))))

(assert (=> b!4093204 (= res!1673002 (not lt!1464083))))

(declare-fun b!4093205 () Bool)

(assert (=> b!4093205 (= e!2540166 (= (head!8651 (_1!24542 (findLongestMatchInner!1464 (regex!7098 (h!49301 rules!3870)) Nil!43880 (size!32779 Nil!43880) input!3411 input!3411 (size!32779 input!3411)))) (c!705274 (regex!7098 (h!49301 rules!3870)))))))

(declare-fun b!4093206 () Bool)

(declare-fun res!1672999 () Bool)

(assert (=> b!4093206 (=> (not res!1672999) (not e!2540166))))

(assert (=> b!4093206 (= res!1672999 (not call!289340))))

(declare-fun b!4093207 () Bool)

(assert (=> b!4093207 (= e!2540167 e!2540170)))

(declare-fun res!1673000 () Bool)

(assert (=> b!4093207 (=> res!1673000 e!2540170)))

(assert (=> b!4093207 (= res!1673000 call!289340)))

(assert (= (and d!1215442 c!705480) b!4093194))

(assert (= (and d!1215442 (not c!705480)) b!4093197))

(assert (= (and d!1215442 c!705481) b!4093203))

(assert (= (and d!1215442 (not c!705481)) b!4093196))

(assert (= (and b!4093196 c!705479) b!4093202))

(assert (= (and b!4093196 (not c!705479)) b!4093201))

(assert (= (and b!4093201 (not res!1673003)) b!4093199))

(assert (= (and b!4093199 res!1672996) b!4093206))

(assert (= (and b!4093206 res!1672999) b!4093198))

(assert (= (and b!4093198 res!1673001) b!4093205))

(assert (= (and b!4093199 (not res!1672997)) b!4093204))

(assert (= (and b!4093204 res!1673002) b!4093207))

(assert (= (and b!4093207 (not res!1673000)) b!4093195))

(assert (= (and b!4093195 (not res!1672998)) b!4093200))

(assert (= (or b!4093203 b!4093206 b!4093207) bm!289335))

(declare-fun m!4700303 () Bool)

(assert (=> b!4093198 m!4700303))

(assert (=> b!4093198 m!4700303))

(declare-fun m!4700305 () Bool)

(assert (=> b!4093198 m!4700305))

(declare-fun m!4700307 () Bool)

(assert (=> b!4093200 m!4700307))

(assert (=> bm!289335 m!4699573))

(assert (=> b!4093195 m!4700303))

(assert (=> b!4093195 m!4700303))

(assert (=> b!4093195 m!4700305))

(assert (=> b!4093194 m!4699913))

(assert (=> d!1215442 m!4699573))

(assert (=> d!1215442 m!4699897))

(assert (=> b!4093197 m!4700307))

(assert (=> b!4093197 m!4700307))

(declare-fun m!4700309 () Bool)

(assert (=> b!4093197 m!4700309))

(assert (=> b!4093197 m!4700303))

(assert (=> b!4093197 m!4700309))

(assert (=> b!4093197 m!4700303))

(declare-fun m!4700311 () Bool)

(assert (=> b!4093197 m!4700311))

(assert (=> b!4093205 m!4700307))

(assert (=> b!4092495 d!1215442))

(assert (=> b!4092495 d!1215312))

(assert (=> b!4092495 d!1215310))

(assert (=> b!4092495 d!1215274))

(declare-fun call!289341 () Option!9504)

(declare-fun bm!289336 () Bool)

(assert (=> bm!289336 (= call!289341 (maxPrefixOneRule!2959 thiss!26199 (h!49301 (t!338860 rules!3870)) input!3411))))

(declare-fun b!4093208 () Bool)

(declare-fun e!2540175 () Bool)

(declare-fun e!2540174 () Bool)

(assert (=> b!4093208 (= e!2540175 e!2540174)))

(declare-fun res!1673010 () Bool)

(assert (=> b!4093208 (=> (not res!1673010) (not e!2540174))))

(declare-fun lt!1464084 () Option!9504)

(assert (=> b!4093208 (= res!1673010 (isDefined!7194 lt!1464084))))

(declare-fun b!4093209 () Bool)

(declare-fun e!2540173 () Option!9504)

(declare-fun lt!1464087 () Option!9504)

(declare-fun lt!1464086 () Option!9504)

(assert (=> b!4093209 (= e!2540173 (ite (and ((_ is None!9503) lt!1464087) ((_ is None!9503) lt!1464086)) None!9503 (ite ((_ is None!9503) lt!1464086) lt!1464087 (ite ((_ is None!9503) lt!1464087) lt!1464086 (ite (>= (size!32778 (_1!24540 (v!39993 lt!1464087))) (size!32778 (_1!24540 (v!39993 lt!1464086)))) lt!1464087 lt!1464086)))))))

(assert (=> b!4093209 (= lt!1464087 call!289341)))

(assert (=> b!4093209 (= lt!1464086 (maxPrefix!3977 thiss!26199 (t!338860 (t!338860 rules!3870)) input!3411))))

(declare-fun b!4093210 () Bool)

(declare-fun res!1673008 () Bool)

(assert (=> b!4093210 (=> (not res!1673008) (not e!2540174))))

(assert (=> b!4093210 (= res!1673008 (matchR!5944 (regex!7098 (rule!10242 (_1!24540 (get!14391 lt!1464084)))) (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1464084))))))))

(declare-fun b!4093212 () Bool)

(declare-fun res!1673005 () Bool)

(assert (=> b!4093212 (=> (not res!1673005) (not e!2540174))))

(assert (=> b!4093212 (= res!1673005 (= (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1464084)))) (originalCharacters!7692 (_1!24540 (get!14391 lt!1464084)))))))

(declare-fun b!4093213 () Bool)

(declare-fun res!1673009 () Bool)

(assert (=> b!4093213 (=> (not res!1673009) (not e!2540174))))

(assert (=> b!4093213 (= res!1673009 (= (++!11504 (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1464084)))) (_2!24540 (get!14391 lt!1464084))) input!3411))))

(declare-fun b!4093214 () Bool)

(declare-fun res!1673006 () Bool)

(assert (=> b!4093214 (=> (not res!1673006) (not e!2540174))))

(assert (=> b!4093214 (= res!1673006 (= (value!222945 (_1!24540 (get!14391 lt!1464084))) (apply!10281 (transformation!7098 (rule!10242 (_1!24540 (get!14391 lt!1464084)))) (seqFromList!5315 (originalCharacters!7692 (_1!24540 (get!14391 lt!1464084)))))))))

(declare-fun b!4093211 () Bool)

(assert (=> b!4093211 (= e!2540174 (contains!8779 (t!338860 rules!3870) (rule!10242 (_1!24540 (get!14391 lt!1464084)))))))

(declare-fun d!1215444 () Bool)

(assert (=> d!1215444 e!2540175))

(declare-fun res!1673004 () Bool)

(assert (=> d!1215444 (=> res!1673004 e!2540175)))

(assert (=> d!1215444 (= res!1673004 (isEmpty!26249 lt!1464084))))

(assert (=> d!1215444 (= lt!1464084 e!2540173)))

(declare-fun c!705482 () Bool)

(assert (=> d!1215444 (= c!705482 (and ((_ is Cons!43881) (t!338860 rules!3870)) ((_ is Nil!43881) (t!338860 (t!338860 rules!3870)))))))

(declare-fun lt!1464088 () Unit!63409)

(declare-fun lt!1464085 () Unit!63409)

(assert (=> d!1215444 (= lt!1464088 lt!1464085)))

(assert (=> d!1215444 (isPrefix!4145 input!3411 input!3411)))

(assert (=> d!1215444 (= lt!1464085 (lemmaIsPrefixRefl!2696 input!3411 input!3411))))

(assert (=> d!1215444 (rulesValidInductive!2627 thiss!26199 (t!338860 rules!3870))))

(assert (=> d!1215444 (= (maxPrefix!3977 thiss!26199 (t!338860 rules!3870) input!3411) lt!1464084)))

(declare-fun b!4093215 () Bool)

(assert (=> b!4093215 (= e!2540173 call!289341)))

(declare-fun b!4093216 () Bool)

(declare-fun res!1673007 () Bool)

(assert (=> b!4093216 (=> (not res!1673007) (not e!2540174))))

(assert (=> b!4093216 (= res!1673007 (< (size!32779 (_2!24540 (get!14391 lt!1464084))) (size!32779 input!3411)))))

(assert (= (and d!1215444 c!705482) b!4093215))

(assert (= (and d!1215444 (not c!705482)) b!4093209))

(assert (= (or b!4093215 b!4093209) bm!289336))

(assert (= (and d!1215444 (not res!1673004)) b!4093208))

(assert (= (and b!4093208 res!1673010) b!4093212))

(assert (= (and b!4093212 res!1673005) b!4093216))

(assert (= (and b!4093216 res!1673007) b!4093213))

(assert (= (and b!4093213 res!1673009) b!4093214))

(assert (= (and b!4093214 res!1673006) b!4093210))

(assert (= (and b!4093210 res!1673008) b!4093211))

(declare-fun m!4700313 () Bool)

(assert (=> b!4093210 m!4700313))

(declare-fun m!4700315 () Bool)

(assert (=> b!4093210 m!4700315))

(assert (=> b!4093210 m!4700315))

(declare-fun m!4700317 () Bool)

(assert (=> b!4093210 m!4700317))

(assert (=> b!4093210 m!4700317))

(declare-fun m!4700319 () Bool)

(assert (=> b!4093210 m!4700319))

(declare-fun m!4700321 () Bool)

(assert (=> d!1215444 m!4700321))

(assert (=> d!1215444 m!4699321))

(assert (=> d!1215444 m!4699323))

(assert (=> d!1215444 m!4700239))

(assert (=> b!4093213 m!4700313))

(assert (=> b!4093213 m!4700315))

(assert (=> b!4093213 m!4700315))

(assert (=> b!4093213 m!4700317))

(assert (=> b!4093213 m!4700317))

(declare-fun m!4700323 () Bool)

(assert (=> b!4093213 m!4700323))

(assert (=> b!4093211 m!4700313))

(declare-fun m!4700325 () Bool)

(assert (=> b!4093211 m!4700325))

(assert (=> b!4093214 m!4700313))

(declare-fun m!4700327 () Bool)

(assert (=> b!4093214 m!4700327))

(assert (=> b!4093214 m!4700327))

(declare-fun m!4700329 () Bool)

(assert (=> b!4093214 m!4700329))

(assert (=> b!4093212 m!4700313))

(assert (=> b!4093212 m!4700315))

(assert (=> b!4093212 m!4700315))

(assert (=> b!4093212 m!4700317))

(declare-fun m!4700331 () Bool)

(assert (=> b!4093209 m!4700331))

(declare-fun m!4700333 () Bool)

(assert (=> b!4093208 m!4700333))

(declare-fun m!4700335 () Bool)

(assert (=> bm!289336 m!4700335))

(assert (=> b!4093216 m!4700313))

(declare-fun m!4700337 () Bool)

(assert (=> b!4093216 m!4700337))

(assert (=> b!4093216 m!4699341))

(assert (=> b!4092250 d!1215444))

(declare-fun bm!289337 () Bool)

(declare-fun call!289342 () Bool)

(assert (=> bm!289337 (= call!289342 (isEmpty!26247 (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463752))))))))

(declare-fun b!4093217 () Bool)

(declare-fun e!2540178 () Bool)

(assert (=> b!4093217 (= e!2540178 (nullable!4240 (regex!7098 (h!49301 rules!3870))))))

(declare-fun b!4093218 () Bool)

(declare-fun res!1673013 () Bool)

(declare-fun e!2540180 () Bool)

(assert (=> b!4093218 (=> res!1673013 e!2540180)))

(assert (=> b!4093218 (= res!1673013 (not (isEmpty!26247 (tail!6385 (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463752))))))))))

(declare-fun b!4093219 () Bool)

(declare-fun e!2540181 () Bool)

(declare-fun e!2540179 () Bool)

(assert (=> b!4093219 (= e!2540181 e!2540179)))

(declare-fun c!705483 () Bool)

(assert (=> b!4093219 (= c!705483 ((_ is EmptyLang!12003) (regex!7098 (h!49301 rules!3870))))))

(declare-fun b!4093220 () Bool)

(assert (=> b!4093220 (= e!2540178 (matchR!5944 (derivativeStep!3641 (regex!7098 (h!49301 rules!3870)) (head!8651 (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463752)))))) (tail!6385 (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463752)))))))))

(declare-fun b!4093221 () Bool)

(declare-fun res!1673016 () Bool)

(declare-fun e!2540176 () Bool)

(assert (=> b!4093221 (=> (not res!1673016) (not e!2540176))))

(assert (=> b!4093221 (= res!1673016 (isEmpty!26247 (tail!6385 (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463752)))))))))

(declare-fun b!4093222 () Bool)

(declare-fun res!1673012 () Bool)

(declare-fun e!2540182 () Bool)

(assert (=> b!4093222 (=> res!1673012 e!2540182)))

(assert (=> b!4093222 (= res!1673012 e!2540176)))

(declare-fun res!1673011 () Bool)

(assert (=> b!4093222 (=> (not res!1673011) (not e!2540176))))

(declare-fun lt!1464089 () Bool)

(assert (=> b!4093222 (= res!1673011 lt!1464089)))

(declare-fun d!1215446 () Bool)

(assert (=> d!1215446 e!2540181))

(declare-fun c!705485 () Bool)

(assert (=> d!1215446 (= c!705485 ((_ is EmptyExpr!12003) (regex!7098 (h!49301 rules!3870))))))

(assert (=> d!1215446 (= lt!1464089 e!2540178)))

(declare-fun c!705484 () Bool)

(assert (=> d!1215446 (= c!705484 (isEmpty!26247 (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463752))))))))

(assert (=> d!1215446 (validRegex!5440 (regex!7098 (h!49301 rules!3870)))))

(assert (=> d!1215446 (= (matchR!5944 (regex!7098 (h!49301 rules!3870)) (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463752))))) lt!1464089)))

(declare-fun b!4093223 () Bool)

(assert (=> b!4093223 (= e!2540180 (not (= (head!8651 (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463752))))) (c!705274 (regex!7098 (h!49301 rules!3870))))))))

(declare-fun b!4093224 () Bool)

(declare-fun res!1673018 () Bool)

(assert (=> b!4093224 (=> res!1673018 e!2540182)))

(assert (=> b!4093224 (= res!1673018 (not ((_ is ElementMatch!12003) (regex!7098 (h!49301 rules!3870)))))))

(assert (=> b!4093224 (= e!2540179 e!2540182)))

(declare-fun b!4093225 () Bool)

(assert (=> b!4093225 (= e!2540179 (not lt!1464089))))

(declare-fun b!4093226 () Bool)

(assert (=> b!4093226 (= e!2540181 (= lt!1464089 call!289342))))

(declare-fun b!4093227 () Bool)

(declare-fun e!2540177 () Bool)

(assert (=> b!4093227 (= e!2540182 e!2540177)))

(declare-fun res!1673017 () Bool)

(assert (=> b!4093227 (=> (not res!1673017) (not e!2540177))))

(assert (=> b!4093227 (= res!1673017 (not lt!1464089))))

(declare-fun b!4093228 () Bool)

(assert (=> b!4093228 (= e!2540176 (= (head!8651 (list!16288 (charsOf!4858 (_1!24540 (get!14391 lt!1463752))))) (c!705274 (regex!7098 (h!49301 rules!3870)))))))

(declare-fun b!4093229 () Bool)

(declare-fun res!1673014 () Bool)

(assert (=> b!4093229 (=> (not res!1673014) (not e!2540176))))

(assert (=> b!4093229 (= res!1673014 (not call!289342))))

(declare-fun b!4093230 () Bool)

(assert (=> b!4093230 (= e!2540177 e!2540180)))

(declare-fun res!1673015 () Bool)

(assert (=> b!4093230 (=> res!1673015 e!2540180)))

(assert (=> b!4093230 (= res!1673015 call!289342)))

(assert (= (and d!1215446 c!705484) b!4093217))

(assert (= (and d!1215446 (not c!705484)) b!4093220))

(assert (= (and d!1215446 c!705485) b!4093226))

(assert (= (and d!1215446 (not c!705485)) b!4093219))

(assert (= (and b!4093219 c!705483) b!4093225))

(assert (= (and b!4093219 (not c!705483)) b!4093224))

(assert (= (and b!4093224 (not res!1673018)) b!4093222))

(assert (= (and b!4093222 res!1673011) b!4093229))

(assert (= (and b!4093229 res!1673014) b!4093221))

(assert (= (and b!4093221 res!1673016) b!4093228))

(assert (= (and b!4093222 (not res!1673012)) b!4093227))

(assert (= (and b!4093227 res!1673017) b!4093230))

(assert (= (and b!4093230 (not res!1673015)) b!4093218))

(assert (= (and b!4093218 (not res!1673013)) b!4093223))

(assert (= (or b!4093226 b!4093229 b!4093230) bm!289337))

(assert (=> b!4093221 m!4699555))

(declare-fun m!4700339 () Bool)

(assert (=> b!4093221 m!4700339))

(assert (=> b!4093221 m!4700339))

(declare-fun m!4700341 () Bool)

(assert (=> b!4093221 m!4700341))

(assert (=> b!4093223 m!4699555))

(declare-fun m!4700343 () Bool)

(assert (=> b!4093223 m!4700343))

(assert (=> bm!289337 m!4699555))

(declare-fun m!4700345 () Bool)

(assert (=> bm!289337 m!4700345))

(assert (=> b!4093218 m!4699555))

(assert (=> b!4093218 m!4700339))

(assert (=> b!4093218 m!4700339))

(assert (=> b!4093218 m!4700341))

(assert (=> b!4093217 m!4699913))

(assert (=> d!1215446 m!4699555))

(assert (=> d!1215446 m!4700345))

(assert (=> d!1215446 m!4699897))

(assert (=> b!4093220 m!4699555))

(assert (=> b!4093220 m!4700343))

(assert (=> b!4093220 m!4700343))

(declare-fun m!4700347 () Bool)

(assert (=> b!4093220 m!4700347))

(assert (=> b!4093220 m!4699555))

(assert (=> b!4093220 m!4700339))

(assert (=> b!4093220 m!4700347))

(assert (=> b!4093220 m!4700339))

(declare-fun m!4700349 () Bool)

(assert (=> b!4093220 m!4700349))

(assert (=> b!4093228 m!4699555))

(assert (=> b!4093228 m!4700343))

(assert (=> b!4092497 d!1215446))

(assert (=> b!4092497 d!1215226))

(assert (=> b!4092497 d!1215228))

(assert (=> b!4092497 d!1215238))

(declare-fun bs!593452 () Bool)

(declare-fun d!1215448 () Bool)

(assert (= bs!593452 (and d!1215448 d!1215280)))

(declare-fun lambda!128075 () Int)

(assert (=> bs!593452 (= (= (toValue!9690 (transformation!7098 (h!49301 rules!3870))) (toValue!9690 (transformation!7098 r!4213))) (= lambda!128075 lambda!128058))))

(assert (=> d!1215448 true))

(assert (=> d!1215448 (< (dynLambda!18791 order!23093 (toValue!9690 (transformation!7098 (h!49301 rules!3870)))) (dynLambda!18795 order!23101 lambda!128075))))

(assert (=> d!1215448 (= (equivClasses!2951 (toChars!9549 (transformation!7098 (h!49301 rules!3870))) (toValue!9690 (transformation!7098 (h!49301 rules!3870)))) (Forall2!1115 lambda!128075))))

(declare-fun bs!593453 () Bool)

(assert (= bs!593453 d!1215448))

(declare-fun m!4700351 () Bool)

(assert (=> bs!593453 m!4700351))

(assert (=> b!4092421 d!1215448))

(declare-fun b!4093232 () Bool)

(declare-fun e!2540183 () Bool)

(declare-fun tp!1238955 () Bool)

(declare-fun tp!1238956 () Bool)

(assert (=> b!4093232 (= e!2540183 (and tp!1238955 tp!1238956))))

(assert (=> b!4092566 (= tp!1238853 e!2540183)))

(declare-fun b!4093234 () Bool)

(declare-fun tp!1238958 () Bool)

(declare-fun tp!1238959 () Bool)

(assert (=> b!4093234 (= e!2540183 (and tp!1238958 tp!1238959))))

(declare-fun b!4093233 () Bool)

(declare-fun tp!1238957 () Bool)

(assert (=> b!4093233 (= e!2540183 tp!1238957)))

(declare-fun b!4093231 () Bool)

(assert (=> b!4093231 (= e!2540183 tp_is_empty!21009)))

(assert (= (and b!4092566 ((_ is ElementMatch!12003) (reg!12332 (regex!7098 (h!49301 rules!3870))))) b!4093231))

(assert (= (and b!4092566 ((_ is Concat!19332) (reg!12332 (regex!7098 (h!49301 rules!3870))))) b!4093232))

(assert (= (and b!4092566 ((_ is Star!12003) (reg!12332 (regex!7098 (h!49301 rules!3870))))) b!4093233))

(assert (= (and b!4092566 ((_ is Union!12003) (reg!12332 (regex!7098 (h!49301 rules!3870))))) b!4093234))

(declare-fun b!4093236 () Bool)

(declare-fun e!2540184 () Bool)

(declare-fun tp!1238960 () Bool)

(declare-fun tp!1238961 () Bool)

(assert (=> b!4093236 (= e!2540184 (and tp!1238960 tp!1238961))))

(assert (=> b!4092570 (= tp!1238857 e!2540184)))

(declare-fun b!4093238 () Bool)

(declare-fun tp!1238963 () Bool)

(declare-fun tp!1238964 () Bool)

(assert (=> b!4093238 (= e!2540184 (and tp!1238963 tp!1238964))))

(declare-fun b!4093237 () Bool)

(declare-fun tp!1238962 () Bool)

(assert (=> b!4093237 (= e!2540184 tp!1238962)))

(declare-fun b!4093235 () Bool)

(assert (=> b!4093235 (= e!2540184 tp_is_empty!21009)))

(assert (= (and b!4092570 ((_ is ElementMatch!12003) (regOne!24518 (regex!7098 r!4213)))) b!4093235))

(assert (= (and b!4092570 ((_ is Concat!19332) (regOne!24518 (regex!7098 r!4213)))) b!4093236))

(assert (= (and b!4092570 ((_ is Star!12003) (regOne!24518 (regex!7098 r!4213)))) b!4093237))

(assert (= (and b!4092570 ((_ is Union!12003) (regOne!24518 (regex!7098 r!4213)))) b!4093238))

(declare-fun b!4093240 () Bool)

(declare-fun e!2540185 () Bool)

(declare-fun tp!1238965 () Bool)

(declare-fun tp!1238966 () Bool)

(assert (=> b!4093240 (= e!2540185 (and tp!1238965 tp!1238966))))

(assert (=> b!4092570 (= tp!1238858 e!2540185)))

(declare-fun b!4093242 () Bool)

(declare-fun tp!1238968 () Bool)

(declare-fun tp!1238969 () Bool)

(assert (=> b!4093242 (= e!2540185 (and tp!1238968 tp!1238969))))

(declare-fun b!4093241 () Bool)

(declare-fun tp!1238967 () Bool)

(assert (=> b!4093241 (= e!2540185 tp!1238967)))

(declare-fun b!4093239 () Bool)

(assert (=> b!4093239 (= e!2540185 tp_is_empty!21009)))

(assert (= (and b!4092570 ((_ is ElementMatch!12003) (regTwo!24518 (regex!7098 r!4213)))) b!4093239))

(assert (= (and b!4092570 ((_ is Concat!19332) (regTwo!24518 (regex!7098 r!4213)))) b!4093240))

(assert (= (and b!4092570 ((_ is Star!12003) (regTwo!24518 (regex!7098 r!4213)))) b!4093241))

(assert (= (and b!4092570 ((_ is Union!12003) (regTwo!24518 (regex!7098 r!4213)))) b!4093242))

(declare-fun b!4093244 () Bool)

(declare-fun e!2540186 () Bool)

(declare-fun tp!1238970 () Bool)

(declare-fun tp!1238971 () Bool)

(assert (=> b!4093244 (= e!2540186 (and tp!1238970 tp!1238971))))

(assert (=> b!4092567 (= tp!1238854 e!2540186)))

(declare-fun b!4093246 () Bool)

(declare-fun tp!1238973 () Bool)

(declare-fun tp!1238974 () Bool)

(assert (=> b!4093246 (= e!2540186 (and tp!1238973 tp!1238974))))

(declare-fun b!4093245 () Bool)

(declare-fun tp!1238972 () Bool)

(assert (=> b!4093245 (= e!2540186 tp!1238972)))

(declare-fun b!4093243 () Bool)

(assert (=> b!4093243 (= e!2540186 tp_is_empty!21009)))

(assert (= (and b!4092567 ((_ is ElementMatch!12003) (regOne!24519 (regex!7098 (h!49301 rules!3870))))) b!4093243))

(assert (= (and b!4092567 ((_ is Concat!19332) (regOne!24519 (regex!7098 (h!49301 rules!3870))))) b!4093244))

(assert (= (and b!4092567 ((_ is Star!12003) (regOne!24519 (regex!7098 (h!49301 rules!3870))))) b!4093245))

(assert (= (and b!4092567 ((_ is Union!12003) (regOne!24519 (regex!7098 (h!49301 rules!3870))))) b!4093246))

(declare-fun b!4093248 () Bool)

(declare-fun e!2540187 () Bool)

(declare-fun tp!1238975 () Bool)

(declare-fun tp!1238976 () Bool)

(assert (=> b!4093248 (= e!2540187 (and tp!1238975 tp!1238976))))

(assert (=> b!4092567 (= tp!1238855 e!2540187)))

(declare-fun b!4093250 () Bool)

(declare-fun tp!1238978 () Bool)

(declare-fun tp!1238979 () Bool)

(assert (=> b!4093250 (= e!2540187 (and tp!1238978 tp!1238979))))

(declare-fun b!4093249 () Bool)

(declare-fun tp!1238977 () Bool)

(assert (=> b!4093249 (= e!2540187 tp!1238977)))

(declare-fun b!4093247 () Bool)

(assert (=> b!4093247 (= e!2540187 tp_is_empty!21009)))

(assert (= (and b!4092567 ((_ is ElementMatch!12003) (regTwo!24519 (regex!7098 (h!49301 rules!3870))))) b!4093247))

(assert (= (and b!4092567 ((_ is Concat!19332) (regTwo!24519 (regex!7098 (h!49301 rules!3870))))) b!4093248))

(assert (= (and b!4092567 ((_ is Star!12003) (regTwo!24519 (regex!7098 (h!49301 rules!3870))))) b!4093249))

(assert (= (and b!4092567 ((_ is Union!12003) (regTwo!24519 (regex!7098 (h!49301 rules!3870))))) b!4093250))

(declare-fun e!2540193 () Bool)

(declare-fun tp!1238988 () Bool)

(declare-fun b!4093259 () Bool)

(declare-fun tp!1238987 () Bool)

(assert (=> b!4093259 (= e!2540193 (and (inv!58595 (left!32984 (c!705275 (dynLambda!18794 (toChars!9549 (transformation!7098 (rule!10242 lt!1463654))) (value!222945 lt!1463654))))) tp!1238987 (inv!58595 (right!33314 (c!705275 (dynLambda!18794 (toChars!9549 (transformation!7098 (rule!10242 lt!1463654))) (value!222945 lt!1463654))))) tp!1238988))))

(declare-fun b!4093261 () Bool)

(declare-fun e!2540192 () Bool)

(declare-fun tp!1238986 () Bool)

(assert (=> b!4093261 (= e!2540192 tp!1238986)))

(declare-fun b!4093260 () Bool)

(declare-fun inv!58601 (IArray!26623) Bool)

(assert (=> b!4093260 (= e!2540193 (and (inv!58601 (xs!16615 (c!705275 (dynLambda!18794 (toChars!9549 (transformation!7098 (rule!10242 lt!1463654))) (value!222945 lt!1463654))))) e!2540192))))

(assert (=> b!4092404 (= tp!1238799 (and (inv!58595 (c!705275 (dynLambda!18794 (toChars!9549 (transformation!7098 (rule!10242 lt!1463654))) (value!222945 lt!1463654)))) e!2540193))))

(assert (= (and b!4092404 ((_ is Node!13309) (c!705275 (dynLambda!18794 (toChars!9549 (transformation!7098 (rule!10242 lt!1463654))) (value!222945 lt!1463654))))) b!4093259))

(assert (= b!4093260 b!4093261))

(assert (= (and b!4092404 ((_ is Leaf!20573) (c!705275 (dynLambda!18794 (toChars!9549 (transformation!7098 (rule!10242 lt!1463654))) (value!222945 lt!1463654))))) b!4093260))

(declare-fun m!4700353 () Bool)

(assert (=> b!4093259 m!4700353))

(declare-fun m!4700355 () Bool)

(assert (=> b!4093259 m!4700355))

(declare-fun m!4700357 () Bool)

(assert (=> b!4093260 m!4700357))

(assert (=> b!4092404 m!4699473))

(declare-fun b!4093263 () Bool)

(declare-fun e!2540194 () Bool)

(declare-fun tp!1238989 () Bool)

(declare-fun tp!1238990 () Bool)

(assert (=> b!4093263 (= e!2540194 (and tp!1238989 tp!1238990))))

(assert (=> b!4092571 (= tp!1238859 e!2540194)))

(declare-fun b!4093265 () Bool)

(declare-fun tp!1238992 () Bool)

(declare-fun tp!1238993 () Bool)

(assert (=> b!4093265 (= e!2540194 (and tp!1238992 tp!1238993))))

(declare-fun b!4093264 () Bool)

(declare-fun tp!1238991 () Bool)

(assert (=> b!4093264 (= e!2540194 tp!1238991)))

(declare-fun b!4093262 () Bool)

(assert (=> b!4093262 (= e!2540194 tp_is_empty!21009)))

(assert (= (and b!4092571 ((_ is ElementMatch!12003) (reg!12332 (regex!7098 r!4213)))) b!4093262))

(assert (= (and b!4092571 ((_ is Concat!19332) (reg!12332 (regex!7098 r!4213)))) b!4093263))

(assert (= (and b!4092571 ((_ is Star!12003) (reg!12332 (regex!7098 r!4213)))) b!4093264))

(assert (= (and b!4092571 ((_ is Union!12003) (reg!12332 (regex!7098 r!4213)))) b!4093265))

(declare-fun b!4093266 () Bool)

(declare-fun e!2540195 () Bool)

(declare-fun tp!1238994 () Bool)

(assert (=> b!4093266 (= e!2540195 (and tp_is_empty!21009 tp!1238994))))

(assert (=> b!4092568 (= tp!1238856 e!2540195)))

(assert (= (and b!4092568 ((_ is Cons!43880) (t!338859 (t!338859 suffix!1518)))) b!4093266))

(declare-fun b!4093268 () Bool)

(declare-fun e!2540196 () Bool)

(declare-fun tp!1238995 () Bool)

(declare-fun tp!1238996 () Bool)

(assert (=> b!4093268 (= e!2540196 (and tp!1238995 tp!1238996))))

(assert (=> b!4092572 (= tp!1238860 e!2540196)))

(declare-fun b!4093270 () Bool)

(declare-fun tp!1238998 () Bool)

(declare-fun tp!1238999 () Bool)

(assert (=> b!4093270 (= e!2540196 (and tp!1238998 tp!1238999))))

(declare-fun b!4093269 () Bool)

(declare-fun tp!1238997 () Bool)

(assert (=> b!4093269 (= e!2540196 tp!1238997)))

(declare-fun b!4093267 () Bool)

(assert (=> b!4093267 (= e!2540196 tp_is_empty!21009)))

(assert (= (and b!4092572 ((_ is ElementMatch!12003) (regOne!24519 (regex!7098 r!4213)))) b!4093267))

(assert (= (and b!4092572 ((_ is Concat!19332) (regOne!24519 (regex!7098 r!4213)))) b!4093268))

(assert (= (and b!4092572 ((_ is Star!12003) (regOne!24519 (regex!7098 r!4213)))) b!4093269))

(assert (= (and b!4092572 ((_ is Union!12003) (regOne!24519 (regex!7098 r!4213)))) b!4093270))

(declare-fun b!4093272 () Bool)

(declare-fun e!2540197 () Bool)

(declare-fun tp!1239000 () Bool)

(declare-fun tp!1239001 () Bool)

(assert (=> b!4093272 (= e!2540197 (and tp!1239000 tp!1239001))))

(assert (=> b!4092572 (= tp!1238861 e!2540197)))

(declare-fun b!4093274 () Bool)

(declare-fun tp!1239003 () Bool)

(declare-fun tp!1239004 () Bool)

(assert (=> b!4093274 (= e!2540197 (and tp!1239003 tp!1239004))))

(declare-fun b!4093273 () Bool)

(declare-fun tp!1239002 () Bool)

(assert (=> b!4093273 (= e!2540197 tp!1239002)))

(declare-fun b!4093271 () Bool)

(assert (=> b!4093271 (= e!2540197 tp_is_empty!21009)))

(assert (= (and b!4092572 ((_ is ElementMatch!12003) (regTwo!24519 (regex!7098 r!4213)))) b!4093271))

(assert (= (and b!4092572 ((_ is Concat!19332) (regTwo!24519 (regex!7098 r!4213)))) b!4093272))

(assert (= (and b!4092572 ((_ is Star!12003) (regTwo!24519 (regex!7098 r!4213)))) b!4093273))

(assert (= (and b!4092572 ((_ is Union!12003) (regTwo!24519 (regex!7098 r!4213)))) b!4093274))

(declare-fun b!4093275 () Bool)

(declare-fun e!2540198 () Bool)

(declare-fun tp!1239005 () Bool)

(assert (=> b!4093275 (= e!2540198 (and tp_is_empty!21009 tp!1239005))))

(assert (=> b!4092584 (= tp!1238874 e!2540198)))

(assert (= (and b!4092584 ((_ is Cons!43880) (t!338859 (t!338859 p!2988)))) b!4093275))

(declare-fun e!2540200 () Bool)

(declare-fun b!4093276 () Bool)

(declare-fun tp!1239007 () Bool)

(declare-fun tp!1239008 () Bool)

(assert (=> b!4093276 (= e!2540200 (and (inv!58595 (left!32984 (c!705275 (dynLambda!18794 (toChars!9549 (transformation!7098 r!4213)) (dynLambda!18790 (toValue!9690 (transformation!7098 r!4213)) lt!1463658))))) tp!1239007 (inv!58595 (right!33314 (c!705275 (dynLambda!18794 (toChars!9549 (transformation!7098 r!4213)) (dynLambda!18790 (toValue!9690 (transformation!7098 r!4213)) lt!1463658))))) tp!1239008))))

(declare-fun b!4093278 () Bool)

(declare-fun e!2540199 () Bool)

(declare-fun tp!1239006 () Bool)

(assert (=> b!4093278 (= e!2540199 tp!1239006)))

(declare-fun b!4093277 () Bool)

(assert (=> b!4093277 (= e!2540200 (and (inv!58601 (xs!16615 (c!705275 (dynLambda!18794 (toChars!9549 (transformation!7098 r!4213)) (dynLambda!18790 (toValue!9690 (transformation!7098 r!4213)) lt!1463658))))) e!2540199))))

(assert (=> b!4092349 (= tp!1238798 (and (inv!58595 (c!705275 (dynLambda!18794 (toChars!9549 (transformation!7098 r!4213)) (dynLambda!18790 (toValue!9690 (transformation!7098 r!4213)) lt!1463658)))) e!2540200))))

(assert (= (and b!4092349 ((_ is Node!13309) (c!705275 (dynLambda!18794 (toChars!9549 (transformation!7098 r!4213)) (dynLambda!18790 (toValue!9690 (transformation!7098 r!4213)) lt!1463658))))) b!4093276))

(assert (= b!4093277 b!4093278))

(assert (= (and b!4092349 ((_ is Leaf!20573) (c!705275 (dynLambda!18794 (toChars!9549 (transformation!7098 r!4213)) (dynLambda!18790 (toValue!9690 (transformation!7098 r!4213)) lt!1463658))))) b!4093277))

(declare-fun m!4700359 () Bool)

(assert (=> b!4093276 m!4700359))

(declare-fun m!4700361 () Bool)

(assert (=> b!4093276 m!4700361))

(declare-fun m!4700363 () Bool)

(assert (=> b!4093277 m!4700363))

(assert (=> b!4092349 m!4699455))

(declare-fun b!4093281 () Bool)

(declare-fun b_free!114429 () Bool)

(declare-fun b_next!115133 () Bool)

(assert (=> b!4093281 (= b_free!114429 (not b_next!115133))))

(declare-fun tb!246207 () Bool)

(declare-fun t!338990 () Bool)

(assert (=> (and b!4093281 (= (toValue!9690 (transformation!7098 (h!49301 (t!338860 (t!338860 rules!3870))))) (toValue!9690 (transformation!7098 r!4213))) t!338990) tb!246207))

(declare-fun result!298744 () Bool)

(assert (= result!298744 result!298594))

(assert (=> d!1215068 t!338990))

(declare-fun t!338992 () Bool)

(declare-fun tb!246209 () Bool)

(assert (=> (and b!4093281 (= (toValue!9690 (transformation!7098 (h!49301 (t!338860 (t!338860 rules!3870))))) (toValue!9690 (transformation!7098 (h!49301 rules!3870)))) t!338992) tb!246209))

(declare-fun result!298746 () Bool)

(assert (= result!298746 result!298704))

(assert (=> d!1215306 t!338992))

(assert (=> d!1215042 t!338990))

(assert (=> d!1215368 t!338992))

(declare-fun tb!246211 () Bool)

(declare-fun t!338994 () Bool)

(assert (=> (and b!4093281 (= (toValue!9690 (transformation!7098 (h!49301 (t!338860 (t!338860 rules!3870))))) (toValue!9690 (transformation!7098 (rule!10242 (_1!24540 (get!14391 lt!1463752)))))) t!338994) tb!246211))

(declare-fun result!298748 () Bool)

(assert (= result!298748 result!298680))

(assert (=> d!1215244 t!338994))

(declare-fun t!338996 () Bool)

(declare-fun tb!246213 () Bool)

(assert (=> (and b!4093281 (= (toValue!9690 (transformation!7098 (h!49301 (t!338860 (t!338860 rules!3870))))) (toValue!9690 (transformation!7098 (rule!10242 (_1!24540 (get!14391 lt!1463678)))))) t!338996) tb!246213))

(declare-fun result!298750 () Bool)

(assert (= result!298750 result!298686))

(assert (=> d!1215260 t!338996))

(declare-fun b_and!315603 () Bool)

(declare-fun tp!1239009 () Bool)

(assert (=> b!4093281 (= tp!1239009 (and (=> t!338990 result!298744) (=> t!338992 result!298746) (=> t!338994 result!298748) (=> t!338996 result!298750) b_and!315603))))

(declare-fun b_free!114431 () Bool)

(declare-fun b_next!115135 () Bool)

(assert (=> b!4093281 (= b_free!114431 (not b_next!115135))))

(declare-fun t!338998 () Bool)

(declare-fun tb!246215 () Bool)

(assert (=> (and b!4093281 (= (toChars!9549 (transformation!7098 (h!49301 (t!338860 (t!338860 rules!3870))))) (toChars!9549 (transformation!7098 (rule!10242 (_1!24540 (get!14391 lt!1463678)))))) t!338998) tb!246215))

(declare-fun result!298752 () Bool)

(assert (= result!298752 result!298692))

(assert (=> d!1215266 t!338998))

(declare-fun tb!246217 () Bool)

(declare-fun t!339000 () Bool)

(assert (=> (and b!4093281 (= (toChars!9549 (transformation!7098 (h!49301 (t!338860 (t!338860 rules!3870))))) (toChars!9549 (transformation!7098 (rule!10242 lt!1463654)))) t!339000) tb!246217))

(declare-fun result!298754 () Bool)

(assert (= result!298754 result!298618))

(assert (=> b!4092388 t!339000))

(declare-fun t!339002 () Bool)

(declare-fun tb!246219 () Bool)

(assert (=> (and b!4093281 (= (toChars!9549 (transformation!7098 (h!49301 (t!338860 (t!338860 rules!3870))))) (toChars!9549 (transformation!7098 r!4213))) t!339002) tb!246219))

(declare-fun result!298756 () Bool)

(assert (= result!298756 result!298612))

(assert (=> d!1215068 t!339002))

(declare-fun tb!246221 () Bool)

(declare-fun t!339004 () Bool)

(assert (=> (and b!4093281 (= (toChars!9549 (transformation!7098 (h!49301 (t!338860 (t!338860 rules!3870))))) (toChars!9549 (transformation!7098 (rule!10242 (_1!24540 (get!14391 lt!1463752)))))) t!339004) tb!246221))

(declare-fun result!298758 () Bool)

(assert (= result!298758 result!298674))

(assert (=> d!1215228 t!339004))

(declare-fun t!339006 () Bool)

(declare-fun tb!246223 () Bool)

(assert (=> (and b!4093281 (= (toChars!9549 (transformation!7098 (h!49301 (t!338860 (t!338860 rules!3870))))) (toChars!9549 (transformation!7098 (h!49301 rules!3870)))) t!339006) tb!246223))

(declare-fun result!298760 () Bool)

(assert (= result!298760 result!298698))

(assert (=> d!1215306 t!339006))

(declare-fun tp!1239012 () Bool)

(declare-fun b_and!315605 () Bool)

(assert (=> b!4093281 (= tp!1239012 (and (=> t!338998 result!298752) (=> t!339006 result!298760) (=> t!339004 result!298758) (=> t!339002 result!298756) (=> t!339000 result!298754) b_and!315605))))

(declare-fun e!2540201 () Bool)

(assert (=> b!4093281 (= e!2540201 (and tp!1239009 tp!1239012))))

(declare-fun tp!1239010 () Bool)

(declare-fun b!4093280 () Bool)

(declare-fun e!2540204 () Bool)

(assert (=> b!4093280 (= e!2540204 (and tp!1239010 (inv!58588 (tag!7958 (h!49301 (t!338860 (t!338860 rules!3870))))) (inv!58592 (transformation!7098 (h!49301 (t!338860 (t!338860 rules!3870))))) e!2540201))))

(declare-fun b!4093279 () Bool)

(declare-fun e!2540202 () Bool)

(declare-fun tp!1239011 () Bool)

(assert (=> b!4093279 (= e!2540202 (and e!2540204 tp!1239011))))

(assert (=> b!4092581 (= tp!1238872 e!2540202)))

(assert (= b!4093280 b!4093281))

(assert (= b!4093279 b!4093280))

(assert (= (and b!4092581 ((_ is Cons!43881) (t!338860 (t!338860 rules!3870)))) b!4093279))

(declare-fun m!4700365 () Bool)

(assert (=> b!4093280 m!4700365))

(declare-fun m!4700367 () Bool)

(assert (=> b!4093280 m!4700367))

(declare-fun b!4093282 () Bool)

(declare-fun e!2540205 () Bool)

(declare-fun tp!1239013 () Bool)

(assert (=> b!4093282 (= e!2540205 (and tp_is_empty!21009 tp!1239013))))

(assert (=> b!4092553 (= tp!1238840 e!2540205)))

(assert (= (and b!4092553 ((_ is Cons!43880) (t!338859 (t!338859 input!3411)))) b!4093282))

(declare-fun b!4093284 () Bool)

(declare-fun e!2540206 () Bool)

(declare-fun tp!1239014 () Bool)

(declare-fun tp!1239015 () Bool)

(assert (=> b!4093284 (= e!2540206 (and tp!1239014 tp!1239015))))

(assert (=> b!4092565 (= tp!1238851 e!2540206)))

(declare-fun b!4093286 () Bool)

(declare-fun tp!1239017 () Bool)

(declare-fun tp!1239018 () Bool)

(assert (=> b!4093286 (= e!2540206 (and tp!1239017 tp!1239018))))

(declare-fun b!4093285 () Bool)

(declare-fun tp!1239016 () Bool)

(assert (=> b!4093285 (= e!2540206 tp!1239016)))

(declare-fun b!4093283 () Bool)

(assert (=> b!4093283 (= e!2540206 tp_is_empty!21009)))

(assert (= (and b!4092565 ((_ is ElementMatch!12003) (regOne!24518 (regex!7098 (h!49301 rules!3870))))) b!4093283))

(assert (= (and b!4092565 ((_ is Concat!19332) (regOne!24518 (regex!7098 (h!49301 rules!3870))))) b!4093284))

(assert (= (and b!4092565 ((_ is Star!12003) (regOne!24518 (regex!7098 (h!49301 rules!3870))))) b!4093285))

(assert (= (and b!4092565 ((_ is Union!12003) (regOne!24518 (regex!7098 (h!49301 rules!3870))))) b!4093286))

(declare-fun b!4093288 () Bool)

(declare-fun e!2540207 () Bool)

(declare-fun tp!1239019 () Bool)

(declare-fun tp!1239020 () Bool)

(assert (=> b!4093288 (= e!2540207 (and tp!1239019 tp!1239020))))

(assert (=> b!4092565 (= tp!1238852 e!2540207)))

(declare-fun b!4093290 () Bool)

(declare-fun tp!1239022 () Bool)

(declare-fun tp!1239023 () Bool)

(assert (=> b!4093290 (= e!2540207 (and tp!1239022 tp!1239023))))

(declare-fun b!4093289 () Bool)

(declare-fun tp!1239021 () Bool)

(assert (=> b!4093289 (= e!2540207 tp!1239021)))

(declare-fun b!4093287 () Bool)

(assert (=> b!4093287 (= e!2540207 tp_is_empty!21009)))

(assert (= (and b!4092565 ((_ is ElementMatch!12003) (regTwo!24518 (regex!7098 (h!49301 rules!3870))))) b!4093287))

(assert (= (and b!4092565 ((_ is Concat!19332) (regTwo!24518 (regex!7098 (h!49301 rules!3870))))) b!4093288))

(assert (= (and b!4092565 ((_ is Star!12003) (regTwo!24518 (regex!7098 (h!49301 rules!3870))))) b!4093289))

(assert (= (and b!4092565 ((_ is Union!12003) (regTwo!24518 (regex!7098 (h!49301 rules!3870))))) b!4093290))

(declare-fun b!4093292 () Bool)

(declare-fun e!2540208 () Bool)

(declare-fun tp!1239024 () Bool)

(declare-fun tp!1239025 () Bool)

(assert (=> b!4093292 (= e!2540208 (and tp!1239024 tp!1239025))))

(assert (=> b!4092582 (= tp!1238871 e!2540208)))

(declare-fun b!4093294 () Bool)

(declare-fun tp!1239027 () Bool)

(declare-fun tp!1239028 () Bool)

(assert (=> b!4093294 (= e!2540208 (and tp!1239027 tp!1239028))))

(declare-fun b!4093293 () Bool)

(declare-fun tp!1239026 () Bool)

(assert (=> b!4093293 (= e!2540208 tp!1239026)))

(declare-fun b!4093291 () Bool)

(assert (=> b!4093291 (= e!2540208 tp_is_empty!21009)))

(assert (= (and b!4092582 ((_ is ElementMatch!12003) (regex!7098 (h!49301 (t!338860 rules!3870))))) b!4093291))

(assert (= (and b!4092582 ((_ is Concat!19332) (regex!7098 (h!49301 (t!338860 rules!3870))))) b!4093292))

(assert (= (and b!4092582 ((_ is Star!12003) (regex!7098 (h!49301 (t!338860 rules!3870))))) b!4093293))

(assert (= (and b!4092582 ((_ is Union!12003) (regex!7098 (h!49301 (t!338860 rules!3870))))) b!4093294))

(declare-fun b_lambda!120089 () Bool)

(assert (= b_lambda!120061 (or (and b!4092204 b_free!114411 (= (toChars!9549 (transformation!7098 r!4213)) (toChars!9549 (transformation!7098 (h!49301 rules!3870))))) (and b!4092205 b_free!114415) (and b!4092583 b_free!114423 (= (toChars!9549 (transformation!7098 (h!49301 (t!338860 rules!3870)))) (toChars!9549 (transformation!7098 (h!49301 rules!3870))))) (and b!4093281 b_free!114431 (= (toChars!9549 (transformation!7098 (h!49301 (t!338860 (t!338860 rules!3870))))) (toChars!9549 (transformation!7098 (h!49301 rules!3870))))) b_lambda!120089)))

(declare-fun b_lambda!120091 () Bool)

(assert (= b_lambda!120073 (or d!1215068 b_lambda!120091)))

(declare-fun bs!593454 () Bool)

(declare-fun d!1215450 () Bool)

(assert (= bs!593454 (and d!1215450 d!1215068)))

(assert (=> bs!593454 (= (dynLambda!18798 lambda!128043 lt!1463658) (= (list!16288 (dynLambda!18794 (toChars!9549 (transformation!7098 r!4213)) (dynLambda!18790 (toValue!9690 (transformation!7098 r!4213)) lt!1463658))) (list!16288 lt!1463658)))))

(declare-fun b_lambda!120099 () Bool)

(assert (=> (not b_lambda!120099) (not bs!593454)))

(assert (=> bs!593454 t!338874))

(declare-fun b_and!315607 () Bool)

(assert (= b_and!315547 (and (=> t!338874 result!298612) b_and!315607)))

(assert (=> bs!593454 t!338876))

(declare-fun b_and!315609 () Bool)

(assert (= b_and!315549 (and (=> t!338876 result!298616) b_and!315609)))

(assert (=> bs!593454 t!338895))

(declare-fun b_and!315611 () Bool)

(assert (= b_and!315551 (and (=> t!338895 result!298646) b_and!315611)))

(assert (=> bs!593454 t!339002))

(declare-fun b_and!315613 () Bool)

(assert (= b_and!315605 (and (=> t!339002 result!298756) b_and!315613)))

(declare-fun b_lambda!120101 () Bool)

(assert (=> (not b_lambda!120101) (not bs!593454)))

(assert (=> bs!593454 t!338862))

(declare-fun b_and!315615 () Bool)

(assert (= b_and!315577 (and (=> t!338862 result!298594) b_and!315615)))

(assert (=> bs!593454 t!338864))

(declare-fun b_and!315617 () Bool)

(assert (= b_and!315579 (and (=> t!338864 result!298598) b_and!315617)))

(assert (=> bs!593454 t!338893))

(declare-fun b_and!315619 () Bool)

(assert (= b_and!315581 (and (=> t!338893 result!298644) b_and!315619)))

(assert (=> bs!593454 t!338990))

(declare-fun b_and!315621 () Bool)

(assert (= b_and!315603 (and (=> t!338990 result!298744) b_and!315621)))

(assert (=> bs!593454 m!4699459))

(assert (=> bs!593454 m!4699465))

(assert (=> bs!593454 m!4699463))

(assert (=> bs!593454 m!4699283))

(assert (=> bs!593454 m!4699459))

(assert (=> bs!593454 m!4699283))

(assert (=> d!1215410 d!1215450))

(declare-fun b_lambda!120093 () Bool)

(assert (= b_lambda!120071 (or (and b!4092204 b_free!114409 (= (toValue!9690 (transformation!7098 r!4213)) (toValue!9690 (transformation!7098 (h!49301 rules!3870))))) (and b!4092205 b_free!114413) (and b!4092583 b_free!114421 (= (toValue!9690 (transformation!7098 (h!49301 (t!338860 rules!3870)))) (toValue!9690 (transformation!7098 (h!49301 rules!3870))))) (and b!4093281 b_free!114429 (= (toValue!9690 (transformation!7098 (h!49301 (t!338860 (t!338860 rules!3870))))) (toValue!9690 (transformation!7098 (h!49301 rules!3870))))) b_lambda!120093)))

(declare-fun b_lambda!120095 () Bool)

(assert (= b_lambda!120027 (or (and b!4092204 b_free!114411 (= (toChars!9549 (transformation!7098 r!4213)) (toChars!9549 (transformation!7098 (rule!10242 lt!1463654))))) (and b!4092205 b_free!114415 (= (toChars!9549 (transformation!7098 (h!49301 rules!3870))) (toChars!9549 (transformation!7098 (rule!10242 lt!1463654))))) (and b!4092583 b_free!114423 (= (toChars!9549 (transformation!7098 (h!49301 (t!338860 rules!3870)))) (toChars!9549 (transformation!7098 (rule!10242 lt!1463654))))) (and b!4093281 b_free!114431 (= (toChars!9549 (transformation!7098 (h!49301 (t!338860 (t!338860 rules!3870))))) (toChars!9549 (transformation!7098 (rule!10242 lt!1463654))))) b_lambda!120095)))

(declare-fun b_lambda!120097 () Bool)

(assert (= b_lambda!120063 (or (and b!4092204 b_free!114409 (= (toValue!9690 (transformation!7098 r!4213)) (toValue!9690 (transformation!7098 (h!49301 rules!3870))))) (and b!4092205 b_free!114413) (and b!4092583 b_free!114421 (= (toValue!9690 (transformation!7098 (h!49301 (t!338860 rules!3870)))) (toValue!9690 (transformation!7098 (h!49301 rules!3870))))) (and b!4093281 b_free!114429 (= (toValue!9690 (transformation!7098 (h!49301 (t!338860 (t!338860 rules!3870))))) (toValue!9690 (transformation!7098 (h!49301 rules!3870))))) b_lambda!120097)))

(check-sat (not b!4092849) (not tb!246141) (not b!4093208) (not b!4092801) (not b!4093210) (not b!4093195) (not bm!289321) (not d!1215398) (not b_lambda!120101) (not bm!289308) (not b!4093220) (not d!1215432) (not b!4093205) (not b!4093250) (not b!4093260) (not b_next!115135) (not b!4093213) (not bm!289305) b_and!315615 (not b_lambda!120037) (not b!4092836) (not b_lambda!120055) (not b!4092816) (not b!4092833) (not b!4093076) (not b!4093180) (not d!1215408) (not b!4092688) (not b_next!115125) (not b_lambda!120093) (not d!1215424) (not b!4093248) (not b!4093290) (not b!4093273) (not d!1215312) (not b!4092349) (not b!4092846) (not b!4093106) (not b!4092963) (not b!4092810) (not bm!289309) (not d!1215396) (not b!4093234) (not bm!289312) (not b!4092851) (not b!4092832) (not b!4092766) (not b!4092797) b_and!315609 (not b!4093277) (not b_next!115133) (not d!1215302) (not b_lambda!120057) (not b!4093197) (not b!4092754) (not d!1215444) (not b_lambda!120091) (not d!1215414) (not b!4093292) (not b!4092968) (not bm!289307) (not b!4093078) (not b!4093288) (not d!1215278) (not b!4092835) (not b!4092827) b_and!315621 (not b!4093134) (not b!4093237) (not b!4093212) (not bs!593454) (not bm!289263) (not b!4093077) (not b!4093272) (not bm!289336) (not b!4093284) (not bm!289335) (not b_next!115119) b_and!315619 (not b!4093194) (not d!1215434) (not d!1215448) (not d!1215266) (not d!1215288) (not b!4093278) (not b!4093233) b_and!315611 (not b_next!115127) (not b!4093276) (not b!4092814) (not b!4092800) (not b!4093240) (not b!4093073) (not b!4092685) (not b!4093070) (not d!1215442) (not b!4092670) (not bm!289337) (not d!1215440) (not b!4093275) (not b_next!115117) (not d!1215294) (not b!4092689) (not b_next!115113) (not b!4092966) (not d!1215400) (not b!4092796) b_and!315617 (not b!4093238) (not b!4092404) (not tb!246147) (not d!1215194) (not b!4093228) (not d!1215264) (not d!1215406) (not bm!289311) (not b!4093140) (not tb!246153) (not b!4092747) (not d!1215196) (not b!4092829) (not b!4093289) (not b_lambda!120089) (not d!1215250) (not b!4093245) (not b!4092765) (not b_lambda!120099) (not b_lambda!120095) (not b!4093193) (not b!4093209) (not d!1215306) (not b_lambda!120039) (not d!1215276) (not b!4093285) (not d!1215282) (not b!4093232) (not tb!246171) (not d!1215304) (not b!4093266) (not b!4092838) (not d!1215226) (not b!4093223) (not b!4092973) (not b!4093198) (not b!4093047) (not b!4093264) (not b!4093039) (not b!4093269) (not b!4092803) b_and!315613 (not b!4093108) (not d!1215300) (not d!1215292) (not b!4093268) (not b!4092748) (not b!4093246) (not b_next!115115) (not b!4092686) (not b!4092691) (not tb!246165) (not b!4093265) (not b!4092843) (not b!4093274) (not d!1215438) (not b_lambda!120059) (not d!1215308) (not b!4093104) (not b!4093181) (not b!4092745) (not b!4093244) (not d!1215202) (not b!4093261) b_and!315607 (not b!4093270) (not d!1215370) (not d!1215410) (not b!4092825) (not d!1215224) (not b!4093000) (not b!4093200) (not bm!289261) (not d!1215280) (not d!1215394) (not b!4092679) (not b!4093214) (not bm!289320) (not b!4093218) tp_is_empty!21009 (not b!4093191) (not bm!289306) (not b!4093293) (not b!4093280) (not b!4093241) (not d!1215228) (not b!4092696) (not b!4092812) (not bm!289310) (not b!4093249) (not b!4093211) (not bm!289259) (not b!4093221) (not d!1215262) (not d!1215436) (not d!1215390) (not b!4093217) (not b_lambda!120051) (not b!4093187) (not b_lambda!120041) (not b!4093286) (not d!1215290) (not b!4093188) (not b!4092678) (not b!4093259) (not b!4093072) (not d!1215446) (not b!4093242) (not b!4093282) (not b!4093279) (not b!4093236) (not b!4093216) (not b!4093263) (not b_lambda!120097) (not b!4093182) (not tb!246159) (not b!4093294) (not b!4093048) (not d!1215192) (not b!4092741) (not bm!289249))
(check-sat (not b_next!115125) b_and!315621 b_and!315617 b_and!315613 (not b_next!115115) b_and!315607 (not b_next!115135) b_and!315615 b_and!315609 (not b_next!115133) (not b_next!115119) b_and!315619 b_and!315611 (not b_next!115127) (not b_next!115117) (not b_next!115113))
