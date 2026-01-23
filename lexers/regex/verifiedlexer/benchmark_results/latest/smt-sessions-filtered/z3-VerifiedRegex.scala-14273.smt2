; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!745860 () Bool)

(assert start!745860)

(declare-fun b!7905161 () Bool)

(declare-fun b_free!134871 () Bool)

(declare-fun b_next!135661 () Bool)

(assert (=> b!7905161 (= b_free!134871 (not b_next!135661))))

(declare-fun tp!2354868 () Bool)

(declare-fun b_and!353027 () Bool)

(assert (=> b!7905161 (= tp!2354868 b_and!353027)))

(declare-fun b_free!134873 () Bool)

(declare-fun b_next!135663 () Bool)

(assert (=> b!7905161 (= b_free!134873 (not b_next!135663))))

(declare-fun tp!2354870 () Bool)

(declare-fun b_and!353029 () Bool)

(assert (=> b!7905161 (= tp!2354870 b_and!353029)))

(declare-fun b!7905149 () Bool)

(declare-fun res!3136845 () Bool)

(declare-fun e!4666152 () Bool)

(assert (=> b!7905149 (=> res!3136845 e!4666152)))

(declare-datatypes ((List!74356 0))(
  ( (Nil!74232) (Cons!74232 (h!80680 (_ BitVec 16)) (t!389557 List!74356)) )
))
(declare-datatypes ((TokenValue!8928 0))(
  ( (FloatLiteralValue!17856 (text!62941 List!74356)) (TokenValueExt!8927 (__x!35143 Int)) (Broken!44640 (value!287397 List!74356)) (Object!9051) (End!8928) (Def!8928) (Underscore!8928) (Match!8928) (Else!8928) (Error!8928) (Case!8928) (If!8928) (Extends!8928) (Abstract!8928) (Class!8928) (Val!8928) (DelimiterValue!17856 (del!8988 List!74356)) (KeywordValue!8934 (value!287398 List!74356)) (CommentValue!17856 (value!287399 List!74356)) (WhitespaceValue!17856 (value!287400 List!74356)) (IndentationValue!8928 (value!287401 List!74356)) (String!83061) (Int32!8928) (Broken!44641 (value!287402 List!74356)) (Boolean!8929) (Unit!169274) (OperatorValue!8931 (op!8988 List!74356)) (IdentifierValue!17856 (value!287403 List!74356)) (IdentifierValue!17857 (value!287404 List!74356)) (WhitespaceValue!17857 (value!287405 List!74356)) (True!17856) (False!17856) (Broken!44642 (value!287406 List!74356)) (Broken!44643 (value!287407 List!74356)) (True!17857) (RightBrace!8928) (RightBracket!8928) (Colon!8928) (Null!8928) (Comma!8928) (LeftBracket!8928) (False!17857) (LeftBrace!8928) (ImaginaryLiteralValue!8928 (text!62942 List!74356)) (StringLiteralValue!26784 (value!287408 List!74356)) (EOFValue!8928 (value!287409 List!74356)) (IdentValue!8928 (value!287410 List!74356)) (DelimiterValue!17857 (value!287411 List!74356)) (DedentValue!8928 (value!287412 List!74356)) (NewLineValue!8928 (value!287413 List!74356)) (IntegerValue!26784 (value!287414 (_ BitVec 32)) (text!62943 List!74356)) (IntegerValue!26785 (value!287415 Int) (text!62944 List!74356)) (Times!8928) (Or!8928) (Equal!8928) (Minus!8928) (Broken!44644 (value!287416 List!74356)) (And!8928) (Div!8928) (LessEqual!8928) (Mod!8928) (Concat!30243) (Not!8928) (Plus!8928) (SpaceValue!8928 (value!287417 List!74356)) (IntegerValue!26786 (value!287418 Int) (text!62945 List!74356)) (StringLiteralValue!26785 (text!62946 List!74356)) (FloatLiteralValue!17857 (text!62947 List!74356)) (BytesLiteralValue!8928 (value!287419 List!74356)) (CommentValue!17857 (value!287420 List!74356)) (StringLiteralValue!26786 (value!287421 List!74356)) (ErrorTokenValue!8928 (msg!8989 List!74356)) )
))
(declare-datatypes ((C!42960 0))(
  ( (C!42961 (val!31944 Int)) )
))
(declare-datatypes ((List!74357 0))(
  ( (Nil!74233) (Cons!74233 (h!80681 C!42960) (t!389558 List!74357)) )
))
(declare-datatypes ((IArray!31633 0))(
  ( (IArray!31634 (innerList!15874 List!74357)) )
))
(declare-datatypes ((Conc!15786 0))(
  ( (Node!15786 (left!56623 Conc!15786) (right!56953 Conc!15786) (csize!31802 Int) (cheight!15997 Int)) (Leaf!30060 (xs!19168 IArray!31633) (csize!31803 Int)) (Empty!15786) )
))
(declare-datatypes ((BalanceConc!30690 0))(
  ( (BalanceConc!30691 (c!1450641 Conc!15786)) )
))
(declare-datatypes ((String!83062 0))(
  ( (String!83063 (value!287422 String)) )
))
(declare-datatypes ((Regex!21315 0))(
  ( (ElementMatch!21315 (c!1450642 C!42960)) (Concat!30244 (regOne!43142 Regex!21315) (regTwo!43142 Regex!21315)) (EmptyExpr!21315) (Star!21315 (reg!21644 Regex!21315)) (EmptyLang!21315) (Union!21315 (regOne!43143 Regex!21315) (regTwo!43143 Regex!21315)) )
))
(declare-datatypes ((TokenValueInjection!17164 0))(
  ( (TokenValueInjection!17165 (toValue!11669 Int) (toChars!11528 Int)) )
))
(declare-datatypes ((Rule!17024 0))(
  ( (Rule!17025 (regex!8612 Regex!21315) (tag!9476 String!83062) (isSeparator!8612 Bool) (transformation!8612 TokenValueInjection!17164)) )
))
(declare-datatypes ((Token!15644 0))(
  ( (Token!15645 (value!287423 TokenValue!8928) (rule!11904 Rule!17024) (size!43024 Int) (originalCharacters!8853 List!74357)) )
))
(declare-datatypes ((tuple2!70258 0))(
  ( (tuple2!70259 (_1!38432 Token!15644) (_2!38432 List!74357)) )
))
(declare-fun lt!2684929 () tuple2!70258)

(declare-fun lt!2684931 () List!74357)

(declare-fun input!1184 () List!74357)

(declare-fun ++!18170 (List!74357 List!74357) List!74357)

(assert (=> b!7905149 (= res!3136845 (not (= (++!18170 lt!2684931 (_2!38432 lt!2684929)) input!1184)))))

(declare-fun e!4666157 () Bool)

(declare-fun e!4666154 () Bool)

(declare-fun tp!2354867 () Bool)

(declare-datatypes ((List!74358 0))(
  ( (Nil!74234) (Cons!74234 (h!80682 Rule!17024) (t!389559 List!74358)) )
))
(declare-fun rulesArg!141 () List!74358)

(declare-fun b!7905150 () Bool)

(declare-fun inv!95232 (String!83062) Bool)

(declare-fun inv!95234 (TokenValueInjection!17164) Bool)

(assert (=> b!7905150 (= e!4666157 (and tp!2354867 (inv!95232 (tag!9476 (h!80682 rulesArg!141))) (inv!95234 (transformation!8612 (h!80682 rulesArg!141))) e!4666154))))

(declare-fun b!7905151 () Bool)

(declare-fun e!4666156 () Bool)

(declare-fun e!4666155 () Bool)

(assert (=> b!7905151 (= e!4666156 e!4666155)))

(declare-fun res!3136844 () Bool)

(assert (=> b!7905151 (=> res!3136844 e!4666155)))

(declare-datatypes ((Option!17894 0))(
  ( (None!17893) (Some!17893 (v!55038 tuple2!70258)) )
))
(declare-fun lt!2684932 () Option!17894)

(declare-fun lt!2684930 () Option!17894)

(get-info :version)

(assert (=> b!7905151 (= res!3136844 (or (and ((_ is None!17893) lt!2684932) ((_ is None!17893) lt!2684930)) ((_ is None!17893) lt!2684930) ((_ is None!17893) lt!2684932) (>= (size!43024 (_1!38432 (v!55038 lt!2684932))) (size!43024 (_1!38432 (v!55038 lt!2684930))))))))

(declare-datatypes ((LexerInterface!8204 0))(
  ( (LexerInterfaceExt!8201 (__x!35144 Int)) (Lexer!8202) )
))
(declare-fun thiss!14377 () LexerInterface!8204)

(declare-fun maxPrefix!4745 (LexerInterface!8204 List!74358 List!74357) Option!17894)

(assert (=> b!7905151 (= lt!2684930 (maxPrefix!4745 thiss!14377 (t!389559 rulesArg!141) input!1184))))

(declare-fun maxPrefixOneRule!3792 (LexerInterface!8204 Rule!17024 List!74357) Option!17894)

(assert (=> b!7905151 (= lt!2684932 (maxPrefixOneRule!3792 thiss!14377 (h!80682 rulesArg!141) input!1184))))

(declare-fun b!7905152 () Bool)

(declare-fun res!3136853 () Bool)

(assert (=> b!7905152 (=> res!3136853 e!4666155)))

(declare-fun isEmpty!42596 (Option!17894) Bool)

(assert (=> b!7905152 (= res!3136853 (isEmpty!42596 lt!2684930))))

(declare-fun b!7905153 () Bool)

(declare-fun res!3136846 () Bool)

(assert (=> b!7905153 (=> res!3136846 e!4666155)))

(declare-fun isDefined!14470 (Option!17894) Bool)

(assert (=> b!7905153 (= res!3136846 (not (isDefined!14470 lt!2684930)))))

(declare-fun b!7905154 () Bool)

(declare-fun res!3136852 () Bool)

(assert (=> b!7905154 (=> res!3136852 e!4666152)))

(declare-fun matchR!10652 (Regex!21315 List!74357) Bool)

(assert (=> b!7905154 (= res!3136852 (not (matchR!10652 (regex!8612 (rule!11904 (_1!38432 lt!2684929))) lt!2684931)))))

(declare-fun b!7905155 () Bool)

(declare-fun res!3136851 () Bool)

(declare-fun e!4666153 () Bool)

(assert (=> b!7905155 (=> (not res!3136851) (not e!4666153))))

(declare-fun rulesValidInductive!3423 (LexerInterface!8204 List!74358) Bool)

(assert (=> b!7905155 (= res!3136851 (rulesValidInductive!3423 thiss!14377 rulesArg!141))))

(declare-fun b!7905156 () Bool)

(assert (=> b!7905156 (= e!4666155 e!4666152)))

(declare-fun res!3136848 () Bool)

(assert (=> b!7905156 (=> res!3136848 e!4666152)))

(assert (=> b!7905156 (= res!3136848 (not (= lt!2684931 (originalCharacters!8853 (_1!38432 lt!2684929)))))))

(declare-fun list!19247 (BalanceConc!30690) List!74357)

(declare-fun charsOf!5556 (Token!15644) BalanceConc!30690)

(assert (=> b!7905156 (= lt!2684931 (list!19247 (charsOf!5556 (_1!38432 lt!2684929))))))

(declare-fun get!26672 (Option!17894) tuple2!70258)

(assert (=> b!7905156 (= lt!2684929 (get!26672 lt!2684930))))

(declare-fun b!7905157 () Bool)

(assert (=> b!7905157 (= e!4666153 (not e!4666156))))

(declare-fun res!3136849 () Bool)

(assert (=> b!7905157 (=> res!3136849 e!4666156)))

(assert (=> b!7905157 (= res!3136849 (or (and ((_ is Cons!74234) rulesArg!141) ((_ is Nil!74234) (t!389559 rulesArg!141))) (not ((_ is Cons!74234) rulesArg!141))))))

(declare-fun isPrefix!6445 (List!74357 List!74357) Bool)

(assert (=> b!7905157 (isPrefix!6445 input!1184 input!1184)))

(declare-datatypes ((Unit!169275 0))(
  ( (Unit!169276) )
))
(declare-fun lt!2684928 () Unit!169275)

(declare-fun lemmaIsPrefixRefl!3956 (List!74357 List!74357) Unit!169275)

(assert (=> b!7905157 (= lt!2684928 (lemmaIsPrefixRefl!3956 input!1184 input!1184))))

(declare-fun res!3136850 () Bool)

(assert (=> start!745860 (=> (not res!3136850) (not e!4666153))))

(assert (=> start!745860 (= res!3136850 ((_ is Lexer!8202) thiss!14377))))

(assert (=> start!745860 e!4666153))

(assert (=> start!745860 true))

(declare-fun e!4666158 () Bool)

(assert (=> start!745860 e!4666158))

(declare-fun e!4666150 () Bool)

(assert (=> start!745860 e!4666150))

(declare-fun b!7905158 () Bool)

(declare-fun res!3136847 () Bool)

(assert (=> b!7905158 (=> res!3136847 e!4666152)))

(declare-fun size!43025 (List!74357) Int)

(assert (=> b!7905158 (= res!3136847 (>= (size!43025 (_2!38432 lt!2684929)) (size!43025 input!1184)))))

(declare-fun b!7905159 () Bool)

(declare-fun tp!2354866 () Bool)

(assert (=> b!7905159 (= e!4666158 (and e!4666157 tp!2354866))))

(declare-fun b!7905160 () Bool)

(declare-fun res!3136843 () Bool)

(assert (=> b!7905160 (=> res!3136843 e!4666152)))

(declare-fun apply!14341 (TokenValueInjection!17164 BalanceConc!30690) TokenValue!8928)

(declare-fun seqFromList!6159 (List!74357) BalanceConc!30690)

(assert (=> b!7905160 (= res!3136843 (not (= (value!287423 (_1!38432 lt!2684929)) (apply!14341 (transformation!8612 (rule!11904 (_1!38432 lt!2684929))) (seqFromList!6159 (originalCharacters!8853 (_1!38432 lt!2684929)))))))))

(assert (=> b!7905161 (= e!4666154 (and tp!2354868 tp!2354870))))

(declare-fun b!7905162 () Bool)

(declare-fun tp_is_empty!53005 () Bool)

(declare-fun tp!2354869 () Bool)

(assert (=> b!7905162 (= e!4666150 (and tp_is_empty!53005 tp!2354869))))

(declare-fun b!7905163 () Bool)

(declare-fun res!3136842 () Bool)

(assert (=> b!7905163 (=> (not res!3136842) (not e!4666153))))

(declare-fun isEmpty!42597 (List!74358) Bool)

(assert (=> b!7905163 (= res!3136842 (not (isEmpty!42597 rulesArg!141)))))

(declare-fun b!7905164 () Bool)

(assert (=> b!7905164 (= e!4666152 true)))

(assert (= (and start!745860 res!3136850) b!7905155))

(assert (= (and b!7905155 res!3136851) b!7905163))

(assert (= (and b!7905163 res!3136842) b!7905157))

(assert (= (and b!7905157 (not res!3136849)) b!7905151))

(assert (= (and b!7905151 (not res!3136844)) b!7905152))

(assert (= (and b!7905152 (not res!3136853)) b!7905153))

(assert (= (and b!7905153 (not res!3136846)) b!7905156))

(assert (= (and b!7905156 (not res!3136848)) b!7905158))

(assert (= (and b!7905158 (not res!3136847)) b!7905149))

(assert (= (and b!7905149 (not res!3136845)) b!7905160))

(assert (= (and b!7905160 (not res!3136843)) b!7905154))

(assert (= (and b!7905154 (not res!3136852)) b!7905164))

(assert (= b!7905150 b!7905161))

(assert (= b!7905159 b!7905150))

(assert (= (and start!745860 ((_ is Cons!74234) rulesArg!141)) b!7905159))

(assert (= (and start!745860 ((_ is Cons!74233) input!1184)) b!7905162))

(declare-fun m!8279774 () Bool)

(assert (=> b!7905149 m!8279774))

(declare-fun m!8279776 () Bool)

(assert (=> b!7905160 m!8279776))

(assert (=> b!7905160 m!8279776))

(declare-fun m!8279778 () Bool)

(assert (=> b!7905160 m!8279778))

(declare-fun m!8279780 () Bool)

(assert (=> b!7905157 m!8279780))

(declare-fun m!8279782 () Bool)

(assert (=> b!7905157 m!8279782))

(declare-fun m!8279784 () Bool)

(assert (=> b!7905150 m!8279784))

(declare-fun m!8279786 () Bool)

(assert (=> b!7905150 m!8279786))

(declare-fun m!8279788 () Bool)

(assert (=> b!7905156 m!8279788))

(assert (=> b!7905156 m!8279788))

(declare-fun m!8279790 () Bool)

(assert (=> b!7905156 m!8279790))

(declare-fun m!8279792 () Bool)

(assert (=> b!7905156 m!8279792))

(declare-fun m!8279794 () Bool)

(assert (=> b!7905153 m!8279794))

(declare-fun m!8279796 () Bool)

(assert (=> b!7905155 m!8279796))

(declare-fun m!8279798 () Bool)

(assert (=> b!7905154 m!8279798))

(declare-fun m!8279800 () Bool)

(assert (=> b!7905151 m!8279800))

(declare-fun m!8279802 () Bool)

(assert (=> b!7905151 m!8279802))

(declare-fun m!8279804 () Bool)

(assert (=> b!7905163 m!8279804))

(declare-fun m!8279806 () Bool)

(assert (=> b!7905158 m!8279806))

(declare-fun m!8279808 () Bool)

(assert (=> b!7905158 m!8279808))

(declare-fun m!8279810 () Bool)

(assert (=> b!7905152 m!8279810))

(check-sat (not b!7905162) (not b!7905154) tp_is_empty!53005 (not b!7905151) b_and!353029 (not b!7905150) (not b!7905152) b_and!353027 (not b!7905153) (not b_next!135663) (not b!7905159) (not b!7905156) (not b!7905155) (not b!7905149) (not b!7905160) (not b_next!135661) (not b!7905158) (not b!7905157) (not b!7905163))
(check-sat b_and!353029 b_and!353027 (not b_next!135663) (not b_next!135661))
