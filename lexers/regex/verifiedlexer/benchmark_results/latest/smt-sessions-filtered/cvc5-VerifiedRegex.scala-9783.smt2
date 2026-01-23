; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!511362 () Bool)

(assert start!511362)

(declare-fun b!4886129 () Bool)

(declare-fun b_free!131255 () Bool)

(declare-fun b_next!132045 () Bool)

(assert (=> b!4886129 (= b_free!131255 (not b_next!132045))))

(declare-fun tp!1375070 () Bool)

(declare-fun b_and!344087 () Bool)

(assert (=> b!4886129 (= tp!1375070 b_and!344087)))

(declare-fun b_free!131257 () Bool)

(declare-fun b_next!132047 () Bool)

(assert (=> b!4886129 (= b_free!131257 (not b_next!132047))))

(declare-fun tp!1375073 () Bool)

(declare-fun b_and!344089 () Bool)

(assert (=> b!4886129 (= tp!1375073 b_and!344089)))

(declare-fun b!4886127 () Bool)

(declare-fun e!3054297 () Bool)

(declare-fun e!3054290 () Bool)

(assert (=> b!4886127 (= e!3054297 e!3054290)))

(declare-fun res!2086399 () Bool)

(assert (=> b!4886127 (=> res!2086399 e!3054290)))

(declare-fun lt!2002177 () Bool)

(declare-datatypes ((C!26614 0))(
  ( (C!26615 (val!22641 Int)) )
))
(declare-datatypes ((List!56404 0))(
  ( (Nil!56280) (Cons!56280 (h!62728 C!26614) (t!365050 List!56404)) )
))
(declare-datatypes ((List!56405 0))(
  ( (Nil!56281) (Cons!56281 (h!62729 (_ BitVec 16)) (t!365051 List!56405)) )
))
(declare-datatypes ((TokenValue!8443 0))(
  ( (FloatLiteralValue!16886 (text!59546 List!56405)) (TokenValueExt!8442 (__x!34179 Int)) (Broken!42215 (value!260918 List!56405)) (Object!8566) (End!8443) (Def!8443) (Underscore!8443) (Match!8443) (Else!8443) (Error!8443) (Case!8443) (If!8443) (Extends!8443) (Abstract!8443) (Class!8443) (Val!8443) (DelimiterValue!16886 (del!8503 List!56405)) (KeywordValue!8449 (value!260919 List!56405)) (CommentValue!16886 (value!260920 List!56405)) (WhitespaceValue!16886 (value!260921 List!56405)) (IndentationValue!8443 (value!260922 List!56405)) (String!63658) (Int32!8443) (Broken!42216 (value!260923 List!56405)) (Boolean!8444) (Unit!146270) (OperatorValue!8446 (op!8503 List!56405)) (IdentifierValue!16886 (value!260924 List!56405)) (IdentifierValue!16887 (value!260925 List!56405)) (WhitespaceValue!16887 (value!260926 List!56405)) (True!16886) (False!16886) (Broken!42217 (value!260927 List!56405)) (Broken!42218 (value!260928 List!56405)) (True!16887) (RightBrace!8443) (RightBracket!8443) (Colon!8443) (Null!8443) (Comma!8443) (LeftBracket!8443) (False!16887) (LeftBrace!8443) (ImaginaryLiteralValue!8443 (text!59547 List!56405)) (StringLiteralValue!25329 (value!260929 List!56405)) (EOFValue!8443 (value!260930 List!56405)) (IdentValue!8443 (value!260931 List!56405)) (DelimiterValue!16887 (value!260932 List!56405)) (DedentValue!8443 (value!260933 List!56405)) (NewLineValue!8443 (value!260934 List!56405)) (IntegerValue!25329 (value!260935 (_ BitVec 32)) (text!59548 List!56405)) (IntegerValue!25330 (value!260936 Int) (text!59549 List!56405)) (Times!8443) (Or!8443) (Equal!8443) (Minus!8443) (Broken!42219 (value!260937 List!56405)) (And!8443) (Div!8443) (LessEqual!8443) (Mod!8443) (Concat!21651) (Not!8443) (Plus!8443) (SpaceValue!8443 (value!260938 List!56405)) (IntegerValue!25331 (value!260939 Int) (text!59550 List!56405)) (StringLiteralValue!25330 (text!59551 List!56405)) (FloatLiteralValue!16887 (text!59552 List!56405)) (BytesLiteralValue!8443 (value!260940 List!56405)) (CommentValue!16887 (value!260941 List!56405)) (StringLiteralValue!25331 (value!260942 List!56405)) (ErrorTokenValue!8443 (msg!8504 List!56405)) )
))
(declare-datatypes ((Regex!13208 0))(
  ( (ElementMatch!13208 (c!830700 C!26614)) (Concat!21652 (regOne!26928 Regex!13208) (regTwo!26928 Regex!13208)) (EmptyExpr!13208) (Star!13208 (reg!13537 Regex!13208)) (EmptyLang!13208) (Union!13208 (regOne!26929 Regex!13208) (regTwo!26929 Regex!13208)) )
))
(declare-datatypes ((String!63659 0))(
  ( (String!63660 (value!260943 String)) )
))
(declare-datatypes ((IArray!29463 0))(
  ( (IArray!29464 (innerList!14789 List!56404)) )
))
(declare-datatypes ((Conc!14701 0))(
  ( (Node!14701 (left!40878 Conc!14701) (right!41208 Conc!14701) (csize!29632 Int) (cheight!14912 Int)) (Leaf!24485 (xs!18017 IArray!29463) (csize!29633 Int)) (Empty!14701) )
))
(declare-datatypes ((BalanceConc!28832 0))(
  ( (BalanceConc!28833 (c!830701 Conc!14701)) )
))
(declare-datatypes ((TokenValueInjection!16194 0))(
  ( (TokenValueInjection!16195 (toValue!11020 Int) (toChars!10879 Int)) )
))
(declare-datatypes ((Rule!16066 0))(
  ( (Rule!16067 (regex!8133 Regex!13208) (tag!8997 String!63659) (isSeparator!8133 Bool) (transformation!8133 TokenValueInjection!16194)) )
))
(declare-datatypes ((Token!14834 0))(
  ( (Token!14835 (value!260944 TokenValue!8443) (rule!11303 Rule!16066) (size!37065 Int) (originalCharacters!8448 List!56404)) )
))
(declare-datatypes ((tuple2!60248 0))(
  ( (tuple2!60249 (_1!33427 Token!14834) (_2!33427 List!56404)) )
))
(declare-datatypes ((Option!13949 0))(
  ( (None!13948) (Some!13948 (v!49898 tuple2!60248)) )
))
(declare-fun lt!2002183 () Option!13949)

(declare-fun isDefined!10968 (Option!13949) Bool)

(assert (=> b!4886127 (= res!2086399 (not (= lt!2002177 (isDefined!10968 lt!2002183))))))

(declare-datatypes ((tuple2!60250 0))(
  ( (tuple2!60251 (_1!33428 Token!14834) (_2!33428 BalanceConc!28832)) )
))
(declare-datatypes ((Option!13950 0))(
  ( (None!13949) (Some!13949 (v!49899 tuple2!60250)) )
))
(declare-fun lt!2002181 () Option!13950)

(declare-fun isDefined!10969 (Option!13950) Bool)

(assert (=> b!4886127 (= lt!2002177 (isDefined!10969 lt!2002181))))

(declare-datatypes ((LexerInterface!7725 0))(
  ( (LexerInterfaceExt!7722 (__x!34180 Int)) (Lexer!7723) )
))
(declare-fun thiss!14805 () LexerInterface!7725)

(declare-datatypes ((List!56406 0))(
  ( (Nil!56282) (Cons!56282 (h!62730 Rule!16066) (t!365052 List!56406)) )
))
(declare-fun rulesArg!165 () List!56406)

(declare-fun lt!2002182 () List!56404)

(declare-fun maxPrefixZipper!636 (LexerInterface!7725 List!56406 List!56404) Option!13949)

(assert (=> b!4886127 (= lt!2002183 (maxPrefixZipper!636 thiss!14805 rulesArg!165 lt!2002182))))

(declare-fun b!4886128 () Bool)

(declare-fun res!2086400 () Bool)

(declare-fun e!3054287 () Bool)

(assert (=> b!4886128 (=> res!2086400 e!3054287)))

(declare-fun lt!2002180 () Bool)

(assert (=> b!4886128 (= res!2086400 lt!2002180)))

(declare-fun e!3054288 () Bool)

(assert (=> b!4886129 (= e!3054288 (and tp!1375070 tp!1375073))))

(declare-fun b!4886130 () Bool)

(declare-fun e!3054294 () Bool)

(declare-fun input!1236 () BalanceConc!28832)

(declare-fun tp!1375074 () Bool)

(declare-fun inv!72443 (Conc!14701) Bool)

(assert (=> b!4886130 (= e!3054294 (and (inv!72443 (c!830701 input!1236)) tp!1375074))))

(declare-fun b!4886131 () Bool)

(declare-fun e!3054289 () Bool)

(declare-fun e!3054296 () Bool)

(declare-fun tp!1375072 () Bool)

(assert (=> b!4886131 (= e!3054289 (and e!3054296 tp!1375072))))

(declare-fun b!4886132 () Bool)

(declare-fun e!3054292 () Bool)

(declare-fun e!3054295 () Bool)

(assert (=> b!4886132 (= e!3054292 (not e!3054295))))

(declare-fun res!2086403 () Bool)

(assert (=> b!4886132 (=> res!2086403 e!3054295)))

(assert (=> b!4886132 (= res!2086403 (or (and (is-Cons!56282 rulesArg!165) (is-Nil!56282 (t!365052 rulesArg!165))) (not (is-Cons!56282 rulesArg!165))))))

(declare-fun isPrefix!4855 (List!56404 List!56404) Bool)

(assert (=> b!4886132 (isPrefix!4855 lt!2002182 lt!2002182)))

(declare-datatypes ((Unit!146271 0))(
  ( (Unit!146272) )
))
(declare-fun lt!2002176 () Unit!146271)

(declare-fun lemmaIsPrefixRefl!3252 (List!56404 List!56404) Unit!146271)

(assert (=> b!4886132 (= lt!2002176 (lemmaIsPrefixRefl!3252 lt!2002182 lt!2002182))))

(declare-fun list!17666 (BalanceConc!28832) List!56404)

(assert (=> b!4886132 (= lt!2002182 (list!17666 input!1236))))

(declare-fun res!2086404 () Bool)

(assert (=> start!511362 (=> (not res!2086404) (not e!3054292))))

(assert (=> start!511362 (= res!2086404 (is-Lexer!7723 thiss!14805))))

(assert (=> start!511362 e!3054292))

(assert (=> start!511362 true))

(assert (=> start!511362 e!3054289))

(declare-fun inv!72444 (BalanceConc!28832) Bool)

(assert (=> start!511362 (and (inv!72444 input!1236) e!3054294)))

(declare-fun b!4886133 () Bool)

(assert (=> b!4886133 (= e!3054295 e!3054297)))

(declare-fun res!2086402 () Bool)

(assert (=> b!4886133 (=> res!2086402 e!3054297)))

(declare-fun lt!2002175 () Option!13950)

(assert (=> b!4886133 (= res!2086402 (or (and (is-None!13949 lt!2002181) (is-None!13949 lt!2002175)) (is-None!13949 lt!2002175) (is-None!13949 lt!2002181) (< (size!37065 (_1!33428 (v!49899 lt!2002181))) (size!37065 (_1!33428 (v!49899 lt!2002175))))))))

(declare-fun maxPrefixZipperSequence!1294 (LexerInterface!7725 List!56406 BalanceConc!28832) Option!13950)

(assert (=> b!4886133 (= lt!2002175 (maxPrefixZipperSequence!1294 thiss!14805 (t!365052 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!659 (LexerInterface!7725 Rule!16066 BalanceConc!28832) Option!13950)

(assert (=> b!4886133 (= lt!2002181 (maxPrefixOneRuleZipperSequence!659 thiss!14805 (h!62730 rulesArg!165) input!1236))))

(declare-fun b!4886134 () Bool)

(declare-fun maxPrefix!4582 (LexerInterface!7725 List!56406 List!56404) Option!13949)

(assert (=> b!4886134 (= e!3054287 (isDefined!10968 (maxPrefix!4582 thiss!14805 rulesArg!165 lt!2002182)))))

(declare-fun b!4886135 () Bool)

(declare-fun res!2086397 () Bool)

(assert (=> b!4886135 (=> (not res!2086397) (not e!3054292))))

(declare-fun isEmpty!30160 (List!56406) Bool)

(assert (=> b!4886135 (= res!2086397 (not (isEmpty!30160 rulesArg!165)))))

(declare-fun b!4886136 () Bool)

(assert (=> b!4886136 (= e!3054290 e!3054287)))

(declare-fun res!2086398 () Bool)

(assert (=> b!4886136 (=> res!2086398 e!3054287)))

(declare-fun e!3054291 () Bool)

(assert (=> b!4886136 (= res!2086398 e!3054291)))

(declare-fun res!2086396 () Bool)

(assert (=> b!4886136 (=> (not res!2086396) (not e!3054291))))

(assert (=> b!4886136 (= res!2086396 (not lt!2002180))))

(assert (=> b!4886136 (= lt!2002180 (not lt!2002177))))

(declare-fun b!4886137 () Bool)

(declare-fun e!3054298 () Bool)

(declare-fun lt!2002179 () tuple2!60250)

(declare-fun lt!2002178 () tuple2!60248)

(assert (=> b!4886137 (= e!3054298 (not (= (list!17666 (_2!33428 lt!2002179)) (_2!33427 lt!2002178))))))

(declare-fun b!4886138 () Bool)

(assert (=> b!4886138 (= e!3054291 e!3054298)))

(declare-fun res!2086401 () Bool)

(assert (=> b!4886138 (=> res!2086401 e!3054298)))

(assert (=> b!4886138 (= res!2086401 (not (= (_1!33428 lt!2002179) (_1!33427 lt!2002178))))))

(declare-fun get!19396 (Option!13949) tuple2!60248)

(assert (=> b!4886138 (= lt!2002178 (get!19396 lt!2002183))))

(declare-fun get!19397 (Option!13950) tuple2!60250)

(assert (=> b!4886138 (= lt!2002179 (get!19397 lt!2002181))))

(declare-fun tp!1375071 () Bool)

(declare-fun b!4886139 () Bool)

(declare-fun inv!72440 (String!63659) Bool)

(declare-fun inv!72445 (TokenValueInjection!16194) Bool)

(assert (=> b!4886139 (= e!3054296 (and tp!1375071 (inv!72440 (tag!8997 (h!62730 rulesArg!165))) (inv!72445 (transformation!8133 (h!62730 rulesArg!165))) e!3054288))))

(declare-fun b!4886140 () Bool)

(declare-fun res!2086405 () Bool)

(assert (=> b!4886140 (=> (not res!2086405) (not e!3054292))))

(declare-fun rulesValidInductive!3112 (LexerInterface!7725 List!56406) Bool)

(assert (=> b!4886140 (= res!2086405 (rulesValidInductive!3112 thiss!14805 rulesArg!165))))

(assert (= (and start!511362 res!2086404) b!4886140))

(assert (= (and b!4886140 res!2086405) b!4886135))

(assert (= (and b!4886135 res!2086397) b!4886132))

(assert (= (and b!4886132 (not res!2086403)) b!4886133))

(assert (= (and b!4886133 (not res!2086402)) b!4886127))

(assert (= (and b!4886127 (not res!2086399)) b!4886136))

(assert (= (and b!4886136 res!2086396) b!4886138))

(assert (= (and b!4886138 (not res!2086401)) b!4886137))

(assert (= (and b!4886136 (not res!2086398)) b!4886128))

(assert (= (and b!4886128 (not res!2086400)) b!4886134))

(assert (= b!4886139 b!4886129))

(assert (= b!4886131 b!4886139))

(assert (= (and start!511362 (is-Cons!56282 rulesArg!165)) b!4886131))

(assert (= start!511362 b!4886130))

(declare-fun m!5889936 () Bool)

(assert (=> b!4886133 m!5889936))

(declare-fun m!5889938 () Bool)

(assert (=> b!4886133 m!5889938))

(declare-fun m!5889940 () Bool)

(assert (=> b!4886135 m!5889940))

(declare-fun m!5889942 () Bool)

(assert (=> b!4886139 m!5889942))

(declare-fun m!5889944 () Bool)

(assert (=> b!4886139 m!5889944))

(declare-fun m!5889946 () Bool)

(assert (=> b!4886140 m!5889946))

(declare-fun m!5889948 () Bool)

(assert (=> b!4886132 m!5889948))

(declare-fun m!5889950 () Bool)

(assert (=> b!4886132 m!5889950))

(declare-fun m!5889952 () Bool)

(assert (=> b!4886132 m!5889952))

(declare-fun m!5889954 () Bool)

(assert (=> b!4886137 m!5889954))

(declare-fun m!5889956 () Bool)

(assert (=> b!4886134 m!5889956))

(assert (=> b!4886134 m!5889956))

(declare-fun m!5889958 () Bool)

(assert (=> b!4886134 m!5889958))

(declare-fun m!5889960 () Bool)

(assert (=> b!4886138 m!5889960))

(declare-fun m!5889962 () Bool)

(assert (=> b!4886138 m!5889962))

(declare-fun m!5889964 () Bool)

(assert (=> start!511362 m!5889964))

(declare-fun m!5889966 () Bool)

(assert (=> b!4886127 m!5889966))

(declare-fun m!5889968 () Bool)

(assert (=> b!4886127 m!5889968))

(declare-fun m!5889970 () Bool)

(assert (=> b!4886127 m!5889970))

(declare-fun m!5889972 () Bool)

(assert (=> b!4886130 m!5889972))

(push 1)

(assert (not start!511362))

(assert b_and!344087)

(assert (not b!4886133))

(assert (not b!4886135))

(assert (not b!4886130))

(assert (not b!4886134))

(assert (not b_next!132045))

(assert (not b_next!132047))

(assert (not b!4886131))

(assert (not b!4886139))

(assert (not b!4886137))

(assert (not b!4886132))

(assert (not b!4886127))

(assert (not b!4886140))

(assert (not b!4886138))

(assert b_and!344089)

(check-sat)

(pop 1)

(push 1)

(assert b_and!344089)

(assert b_and!344087)

(assert (not b_next!132045))

(assert (not b_next!132047))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1569538 () Bool)

(assert (=> d!1569538 true))

(declare-fun lt!2002248 () Bool)

(declare-fun lambda!243834 () Int)

(declare-fun forall!13073 (List!56406 Int) Bool)

(assert (=> d!1569538 (= lt!2002248 (forall!13073 rulesArg!165 lambda!243834))))

(declare-fun e!3054365 () Bool)

(assert (=> d!1569538 (= lt!2002248 e!3054365)))

(declare-fun res!2086489 () Bool)

(assert (=> d!1569538 (=> res!2086489 e!3054365)))

(assert (=> d!1569538 (= res!2086489 (not (is-Cons!56282 rulesArg!165)))))

(assert (=> d!1569538 (= (rulesValidInductive!3112 thiss!14805 rulesArg!165) lt!2002248)))

(declare-fun b!4886239 () Bool)

(declare-fun e!3054366 () Bool)

(assert (=> b!4886239 (= e!3054365 e!3054366)))

(declare-fun res!2086490 () Bool)

(assert (=> b!4886239 (=> (not res!2086490) (not e!3054366))))

(declare-fun ruleValid!3655 (LexerInterface!7725 Rule!16066) Bool)

(assert (=> b!4886239 (= res!2086490 (ruleValid!3655 thiss!14805 (h!62730 rulesArg!165)))))

(declare-fun b!4886240 () Bool)

(assert (=> b!4886240 (= e!3054366 (rulesValidInductive!3112 thiss!14805 (t!365052 rulesArg!165)))))

(assert (= (and d!1569538 (not res!2086489)) b!4886239))

(assert (= (and b!4886239 res!2086490) b!4886240))

(declare-fun m!5890056 () Bool)

(assert (=> d!1569538 m!5890056))

(declare-fun m!5890058 () Bool)

(assert (=> b!4886239 m!5890058))

(declare-fun m!5890060 () Bool)

(assert (=> b!4886240 m!5890060))

(assert (=> b!4886140 d!1569538))

(declare-fun d!1569554 () Bool)

(declare-fun c!830715 () Bool)

(assert (=> d!1569554 (= c!830715 (is-Node!14701 (c!830701 input!1236)))))

(declare-fun e!3054381 () Bool)

(assert (=> d!1569554 (= (inv!72443 (c!830701 input!1236)) e!3054381)))

(declare-fun b!4886261 () Bool)

(declare-fun inv!72449 (Conc!14701) Bool)

(assert (=> b!4886261 (= e!3054381 (inv!72449 (c!830701 input!1236)))))

(declare-fun b!4886262 () Bool)

(declare-fun e!3054382 () Bool)

(assert (=> b!4886262 (= e!3054381 e!3054382)))

(declare-fun res!2086505 () Bool)

(assert (=> b!4886262 (= res!2086505 (not (is-Leaf!24485 (c!830701 input!1236))))))

(assert (=> b!4886262 (=> res!2086505 e!3054382)))

(declare-fun b!4886263 () Bool)

(declare-fun inv!72450 (Conc!14701) Bool)

(assert (=> b!4886263 (= e!3054382 (inv!72450 (c!830701 input!1236)))))

(assert (= (and d!1569554 c!830715) b!4886261))

(assert (= (and d!1569554 (not c!830715)) b!4886262))

(assert (= (and b!4886262 (not res!2086505)) b!4886263))

(declare-fun m!5890062 () Bool)

(assert (=> b!4886261 m!5890062))

(declare-fun m!5890064 () Bool)

(assert (=> b!4886263 m!5890064))

(assert (=> b!4886130 d!1569554))

(declare-fun b!4886288 () Bool)

(declare-fun e!3054406 () Bool)

(declare-fun e!3054405 () Bool)

(assert (=> b!4886288 (= e!3054406 e!3054405)))

(declare-fun res!2086527 () Bool)

(assert (=> b!4886288 (=> res!2086527 e!3054405)))

(declare-fun lt!2002272 () Option!13950)

(assert (=> b!4886288 (= res!2086527 (not (isDefined!10969 lt!2002272)))))

(declare-fun d!1569556 () Bool)

(assert (=> d!1569556 e!3054406))

(declare-fun res!2086525 () Bool)

(assert (=> d!1569556 (=> (not res!2086525) (not e!3054406))))

(assert (=> d!1569556 (= res!2086525 (= (isDefined!10969 lt!2002272) (isDefined!10968 (maxPrefixZipper!636 thiss!14805 (t!365052 rulesArg!165) (list!17666 input!1236)))))))

(declare-fun e!3054403 () Option!13950)

(assert (=> d!1569556 (= lt!2002272 e!3054403)))

(declare-fun c!830719 () Bool)

(assert (=> d!1569556 (= c!830719 (and (is-Cons!56282 (t!365052 rulesArg!165)) (is-Nil!56282 (t!365052 (t!365052 rulesArg!165)))))))

(declare-fun lt!2002270 () Unit!146271)

(declare-fun lt!2002276 () Unit!146271)

(assert (=> d!1569556 (= lt!2002270 lt!2002276)))

(declare-fun lt!2002271 () List!56404)

(declare-fun lt!2002274 () List!56404)

(assert (=> d!1569556 (isPrefix!4855 lt!2002271 lt!2002274)))

(assert (=> d!1569556 (= lt!2002276 (lemmaIsPrefixRefl!3252 lt!2002271 lt!2002274))))

(assert (=> d!1569556 (= lt!2002274 (list!17666 input!1236))))

(assert (=> d!1569556 (= lt!2002271 (list!17666 input!1236))))

(assert (=> d!1569556 (rulesValidInductive!3112 thiss!14805 (t!365052 rulesArg!165))))

(assert (=> d!1569556 (= (maxPrefixZipperSequence!1294 thiss!14805 (t!365052 rulesArg!165) input!1236) lt!2002272)))

(declare-fun b!4886289 () Bool)

(declare-fun e!3054404 () Bool)

(assert (=> b!4886289 (= e!3054404 (= (list!17666 (_2!33428 (get!19397 lt!2002272))) (_2!33427 (get!19396 (maxPrefixZipper!636 thiss!14805 (t!365052 rulesArg!165) (list!17666 input!1236))))))))

(declare-fun e!3054401 () Bool)

(declare-fun b!4886290 () Bool)

(assert (=> b!4886290 (= e!3054401 (= (list!17666 (_2!33428 (get!19397 lt!2002272))) (_2!33427 (get!19396 (maxPrefix!4582 thiss!14805 (t!365052 rulesArg!165) (list!17666 input!1236))))))))

(declare-fun b!4886291 () Bool)

(declare-fun call!338999 () Option!13950)

(assert (=> b!4886291 (= e!3054403 call!338999)))

(declare-fun b!4886292 () Bool)

(declare-fun e!3054402 () Bool)

(assert (=> b!4886292 (= e!3054402 e!3054404)))

(declare-fun res!2086526 () Bool)

(assert (=> b!4886292 (=> (not res!2086526) (not e!3054404))))

(assert (=> b!4886292 (= res!2086526 (= (_1!33428 (get!19397 lt!2002272)) (_1!33427 (get!19396 (maxPrefixZipper!636 thiss!14805 (t!365052 rulesArg!165) (list!17666 input!1236))))))))

(declare-fun bm!338994 () Bool)

(assert (=> bm!338994 (= call!338999 (maxPrefixOneRuleZipperSequence!659 thiss!14805 (h!62730 (t!365052 rulesArg!165)) input!1236))))

(declare-fun b!4886293 () Bool)

(assert (=> b!4886293 (= e!3054405 e!3054401)))

(declare-fun res!2086529 () Bool)

(assert (=> b!4886293 (=> (not res!2086529) (not e!3054401))))

(assert (=> b!4886293 (= res!2086529 (= (_1!33428 (get!19397 lt!2002272)) (_1!33427 (get!19396 (maxPrefix!4582 thiss!14805 (t!365052 rulesArg!165) (list!17666 input!1236))))))))

(declare-fun b!4886294 () Bool)

(declare-fun res!2086528 () Bool)

(assert (=> b!4886294 (=> (not res!2086528) (not e!3054406))))

(assert (=> b!4886294 (= res!2086528 e!3054402)))

(declare-fun res!2086524 () Bool)

(assert (=> b!4886294 (=> res!2086524 e!3054402)))

(assert (=> b!4886294 (= res!2086524 (not (isDefined!10969 lt!2002272)))))

(declare-fun b!4886295 () Bool)

(declare-fun lt!2002275 () Option!13950)

(declare-fun lt!2002273 () Option!13950)

(assert (=> b!4886295 (= e!3054403 (ite (and (is-None!13949 lt!2002275) (is-None!13949 lt!2002273)) None!13949 (ite (is-None!13949 lt!2002273) lt!2002275 (ite (is-None!13949 lt!2002275) lt!2002273 (ite (>= (size!37065 (_1!33428 (v!49899 lt!2002275))) (size!37065 (_1!33428 (v!49899 lt!2002273)))) lt!2002275 lt!2002273)))))))

(assert (=> b!4886295 (= lt!2002275 call!338999)))

(assert (=> b!4886295 (= lt!2002273 (maxPrefixZipperSequence!1294 thiss!14805 (t!365052 (t!365052 rulesArg!165)) input!1236))))

(assert (= (and d!1569556 c!830719) b!4886291))

(assert (= (and d!1569556 (not c!830719)) b!4886295))

(assert (= (or b!4886291 b!4886295) bm!338994))

(assert (= (and d!1569556 res!2086525) b!4886294))

(assert (= (and b!4886294 (not res!2086524)) b!4886292))

(assert (= (and b!4886292 res!2086526) b!4886289))

(assert (= (and b!4886294 res!2086528) b!4886288))

(assert (= (and b!4886288 (not res!2086527)) b!4886293))

(assert (= (and b!4886293 res!2086529) b!4886290))

(declare-fun m!5890092 () Bool)

(assert (=> b!4886293 m!5890092))

(assert (=> b!4886293 m!5889952))

(assert (=> b!4886293 m!5889952))

(declare-fun m!5890094 () Bool)

(assert (=> b!4886293 m!5890094))

(assert (=> b!4886293 m!5890094))

(declare-fun m!5890096 () Bool)

(assert (=> b!4886293 m!5890096))

(declare-fun m!5890098 () Bool)

(assert (=> b!4886295 m!5890098))

(assert (=> b!4886292 m!5890092))

(assert (=> b!4886292 m!5889952))

(assert (=> b!4886292 m!5889952))

(declare-fun m!5890100 () Bool)

(assert (=> b!4886292 m!5890100))

(assert (=> b!4886292 m!5890100))

(declare-fun m!5890102 () Bool)

(assert (=> b!4886292 m!5890102))

(declare-fun m!5890104 () Bool)

(assert (=> bm!338994 m!5890104))

(declare-fun m!5890106 () Bool)

(assert (=> b!4886294 m!5890106))

(assert (=> b!4886290 m!5890094))

(assert (=> b!4886290 m!5890096))

(declare-fun m!5890108 () Bool)

(assert (=> b!4886290 m!5890108))

(assert (=> b!4886290 m!5889952))

(assert (=> b!4886290 m!5889952))

(assert (=> b!4886290 m!5890094))

(assert (=> b!4886290 m!5890092))

(assert (=> d!1569556 m!5890106))

(assert (=> d!1569556 m!5889952))

(assert (=> d!1569556 m!5890100))

(assert (=> d!1569556 m!5889952))

(assert (=> d!1569556 m!5890100))

(declare-fun m!5890110 () Bool)

(assert (=> d!1569556 m!5890110))

(assert (=> d!1569556 m!5890060))

(declare-fun m!5890112 () Bool)

(assert (=> d!1569556 m!5890112))

(declare-fun m!5890114 () Bool)

(assert (=> d!1569556 m!5890114))

(assert (=> b!4886288 m!5890106))

(assert (=> b!4886289 m!5890092))

(assert (=> b!4886289 m!5889952))

(assert (=> b!4886289 m!5890100))

(assert (=> b!4886289 m!5890102))

(assert (=> b!4886289 m!5889952))

(assert (=> b!4886289 m!5890100))

(assert (=> b!4886289 m!5890108))

(assert (=> b!4886133 d!1569556))

(declare-fun b!4886327 () Bool)

(declare-fun e!3054431 () Bool)

(assert (=> b!4886327 (= e!3054431 true)))

(declare-fun b!4886326 () Bool)

(declare-fun e!3054430 () Bool)

(assert (=> b!4886326 (= e!3054430 e!3054431)))

(declare-fun b!4886314 () Bool)

(assert (=> b!4886314 e!3054430))

(assert (= b!4886326 b!4886327))

(assert (= b!4886314 b!4886326))

(declare-fun order!25387 () Int)

(declare-fun lambda!243839 () Int)

(declare-fun order!25389 () Int)

(declare-fun dynLambda!22570 (Int Int) Int)

(declare-fun dynLambda!22571 (Int Int) Int)

(assert (=> b!4886327 (< (dynLambda!22570 order!25387 (toValue!11020 (transformation!8133 (h!62730 rulesArg!165)))) (dynLambda!22571 order!25389 lambda!243839))))

(declare-fun order!25391 () Int)

(declare-fun dynLambda!22572 (Int Int) Int)

(assert (=> b!4886327 (< (dynLambda!22572 order!25391 (toChars!10879 (transformation!8133 (h!62730 rulesArg!165)))) (dynLambda!22571 order!25389 lambda!243839))))

(declare-fun e!3054423 () Option!13950)

(declare-datatypes ((tuple2!60256 0))(
  ( (tuple2!60257 (_1!33431 BalanceConc!28832) (_2!33431 BalanceConc!28832)) )
))
(declare-fun lt!2002311 () tuple2!60256)

(declare-fun apply!13524 (TokenValueInjection!16194 BalanceConc!28832) TokenValue!8443)

(declare-fun size!37067 (BalanceConc!28832) Int)

(assert (=> b!4886314 (= e!3054423 (Some!13949 (tuple2!60251 (Token!14835 (apply!13524 (transformation!8133 (h!62730 rulesArg!165)) (_1!33431 lt!2002311)) (h!62730 rulesArg!165) (size!37067 (_1!33431 lt!2002311)) (list!17666 (_1!33431 lt!2002311))) (_2!33431 lt!2002311))))))

(declare-fun lt!2002317 () List!56404)

(assert (=> b!4886314 (= lt!2002317 (list!17666 input!1236))))

(declare-fun lt!2002320 () Unit!146271)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1704 (Regex!13208 List!56404) Unit!146271)

(assert (=> b!4886314 (= lt!2002320 (longestMatchIsAcceptedByMatchOrIsEmpty!1704 (regex!8133 (h!62730 rulesArg!165)) lt!2002317))))

(declare-fun res!2086541 () Bool)

(declare-fun isEmpty!30162 (List!56404) Bool)

(declare-datatypes ((tuple2!60258 0))(
  ( (tuple2!60259 (_1!33432 List!56404) (_2!33432 List!56404)) )
))
(declare-fun findLongestMatchInner!1741 (Regex!13208 List!56404 Int List!56404 List!56404 Int) tuple2!60258)

(declare-fun size!37068 (List!56404) Int)

(assert (=> b!4886314 (= res!2086541 (isEmpty!30162 (_1!33432 (findLongestMatchInner!1741 (regex!8133 (h!62730 rulesArg!165)) Nil!56280 (size!37068 Nil!56280) lt!2002317 lt!2002317 (size!37068 lt!2002317)))))))

(declare-fun e!3054424 () Bool)

(assert (=> b!4886314 (=> res!2086541 e!3054424)))

(assert (=> b!4886314 e!3054424))

(declare-fun lt!2002312 () Unit!146271)

(assert (=> b!4886314 (= lt!2002312 lt!2002320)))

(declare-fun lt!2002318 () Unit!146271)

(declare-fun lemmaInv!1224 (TokenValueInjection!16194) Unit!146271)

(assert (=> b!4886314 (= lt!2002318 (lemmaInv!1224 (transformation!8133 (h!62730 rulesArg!165))))))

(declare-fun lt!2002319 () Unit!146271)

(declare-fun ForallOf!1121 (Int BalanceConc!28832) Unit!146271)

(assert (=> b!4886314 (= lt!2002319 (ForallOf!1121 lambda!243839 (_1!33431 lt!2002311)))))

(declare-fun lt!2002313 () Unit!146271)

(declare-fun seqFromList!5920 (List!56404) BalanceConc!28832)

(assert (=> b!4886314 (= lt!2002313 (ForallOf!1121 lambda!243839 (seqFromList!5920 (list!17666 (_1!33431 lt!2002311)))))))

(declare-fun lt!2002314 () Option!13950)

(assert (=> b!4886314 (= lt!2002314 (Some!13949 (tuple2!60251 (Token!14835 (apply!13524 (transformation!8133 (h!62730 rulesArg!165)) (_1!33431 lt!2002311)) (h!62730 rulesArg!165) (size!37067 (_1!33431 lt!2002311)) (list!17666 (_1!33431 lt!2002311))) (_2!33431 lt!2002311))))))

(declare-fun lt!2002316 () Unit!146271)

(declare-fun lemmaEqSameImage!1078 (TokenValueInjection!16194 BalanceConc!28832 BalanceConc!28832) Unit!146271)

(assert (=> b!4886314 (= lt!2002316 (lemmaEqSameImage!1078 (transformation!8133 (h!62730 rulesArg!165)) (_1!33431 lt!2002311) (seqFromList!5920 (list!17666 (_1!33431 lt!2002311)))))))

(declare-fun b!4886315 () Bool)

(declare-fun e!3054422 () Bool)

(declare-fun e!3054421 () Bool)

(assert (=> b!4886315 (= e!3054422 e!3054421)))

(declare-fun res!2086542 () Bool)

(assert (=> b!4886315 (=> (not res!2086542) (not e!3054421))))

(declare-fun lt!2002315 () Option!13950)

(declare-fun maxPrefixOneRule!3513 (LexerInterface!7725 Rule!16066 List!56404) Option!13949)

(assert (=> b!4886315 (= res!2086542 (= (_1!33428 (get!19397 lt!2002315)) (_1!33427 (get!19396 (maxPrefixOneRule!3513 thiss!14805 (h!62730 rulesArg!165) (list!17666 input!1236))))))))

(declare-fun b!4886317 () Bool)

(assert (=> b!4886317 (= e!3054421 (= (list!17666 (_2!33428 (get!19397 lt!2002315))) (_2!33427 (get!19396 (maxPrefixOneRule!3513 thiss!14805 (h!62730 rulesArg!165) (list!17666 input!1236))))))))

(declare-fun b!4886318 () Bool)

(declare-fun e!3054425 () Bool)

(assert (=> b!4886318 (= e!3054425 e!3054422)))

(declare-fun res!2086540 () Bool)

(assert (=> b!4886318 (=> res!2086540 e!3054422)))

(assert (=> b!4886318 (= res!2086540 (not (isDefined!10969 lt!2002315)))))

(declare-fun b!4886319 () Bool)

(declare-fun matchR!6514 (Regex!13208 List!56404) Bool)

(assert (=> b!4886319 (= e!3054424 (matchR!6514 (regex!8133 (h!62730 rulesArg!165)) (_1!33432 (findLongestMatchInner!1741 (regex!8133 (h!62730 rulesArg!165)) Nil!56280 (size!37068 Nil!56280) lt!2002317 lt!2002317 (size!37068 lt!2002317)))))))

(declare-fun b!4886316 () Bool)

(assert (=> b!4886316 (= e!3054423 None!13949)))

(declare-fun d!1569560 () Bool)

(assert (=> d!1569560 e!3054425))

(declare-fun res!2086543 () Bool)

(assert (=> d!1569560 (=> (not res!2086543) (not e!3054425))))

(assert (=> d!1569560 (= res!2086543 (= (isDefined!10969 lt!2002315) (isDefined!10968 (maxPrefixOneRule!3513 thiss!14805 (h!62730 rulesArg!165) (list!17666 input!1236)))))))

(assert (=> d!1569560 (= lt!2002315 e!3054423)))

(declare-fun c!830724 () Bool)

(declare-fun isEmpty!30163 (BalanceConc!28832) Bool)

(assert (=> d!1569560 (= c!830724 (isEmpty!30163 (_1!33431 lt!2002311)))))

(declare-fun findLongestMatchWithZipperSequence!256 (Regex!13208 BalanceConc!28832) tuple2!60256)

(assert (=> d!1569560 (= lt!2002311 (findLongestMatchWithZipperSequence!256 (regex!8133 (h!62730 rulesArg!165)) input!1236))))

(assert (=> d!1569560 (ruleValid!3655 thiss!14805 (h!62730 rulesArg!165))))

(assert (=> d!1569560 (= (maxPrefixOneRuleZipperSequence!659 thiss!14805 (h!62730 rulesArg!165) input!1236) lt!2002315)))

(assert (= (and d!1569560 c!830724) b!4886316))

(assert (= (and d!1569560 (not c!830724)) b!4886314))

(assert (= (and b!4886314 (not res!2086541)) b!4886319))

(assert (= (and d!1569560 res!2086543) b!4886318))

(assert (= (and b!4886318 (not res!2086540)) b!4886315))

(assert (= (and b!4886315 res!2086542) b!4886317))

(declare-fun m!5890116 () Bool)

(assert (=> b!4886317 m!5890116))

(assert (=> b!4886317 m!5889952))

(assert (=> b!4886317 m!5889952))

(declare-fun m!5890118 () Bool)

(assert (=> b!4886317 m!5890118))

(declare-fun m!5890120 () Bool)

(assert (=> b!4886317 m!5890120))

(assert (=> b!4886317 m!5890118))

(declare-fun m!5890122 () Bool)

(assert (=> b!4886317 m!5890122))

(declare-fun m!5890124 () Bool)

(assert (=> b!4886318 m!5890124))

(declare-fun m!5890126 () Bool)

(assert (=> d!1569560 m!5890126))

(declare-fun m!5890128 () Bool)

(assert (=> d!1569560 m!5890128))

(assert (=> d!1569560 m!5890118))

(declare-fun m!5890130 () Bool)

(assert (=> d!1569560 m!5890130))

(assert (=> d!1569560 m!5889952))

(assert (=> d!1569560 m!5890058))

(assert (=> d!1569560 m!5889952))

(assert (=> d!1569560 m!5890118))

(assert (=> d!1569560 m!5890124))

(assert (=> b!4886315 m!5890120))

(assert (=> b!4886315 m!5889952))

(assert (=> b!4886315 m!5889952))

(assert (=> b!4886315 m!5890118))

(assert (=> b!4886315 m!5890118))

(assert (=> b!4886315 m!5890122))

(declare-fun m!5890132 () Bool)

(assert (=> b!4886319 m!5890132))

(declare-fun m!5890134 () Bool)

(assert (=> b!4886319 m!5890134))

(assert (=> b!4886319 m!5890132))

(assert (=> b!4886319 m!5890134))

(declare-fun m!5890136 () Bool)

(assert (=> b!4886319 m!5890136))

(declare-fun m!5890138 () Bool)

(assert (=> b!4886319 m!5890138))

(declare-fun m!5890140 () Bool)

(assert (=> b!4886314 m!5890140))

(declare-fun m!5890142 () Bool)

(assert (=> b!4886314 m!5890142))

(declare-fun m!5890144 () Bool)

(assert (=> b!4886314 m!5890144))

(declare-fun m!5890146 () Bool)

(assert (=> b!4886314 m!5890146))

(assert (=> b!4886314 m!5890140))

(declare-fun m!5890148 () Bool)

(assert (=> b!4886314 m!5890148))

(declare-fun m!5890150 () Bool)

(assert (=> b!4886314 m!5890150))

(assert (=> b!4886314 m!5889952))

(assert (=> b!4886314 m!5890146))

(assert (=> b!4886314 m!5890140))

(declare-fun m!5890152 () Bool)

(assert (=> b!4886314 m!5890152))

(declare-fun m!5890154 () Bool)

(assert (=> b!4886314 m!5890154))

(declare-fun m!5890156 () Bool)

(assert (=> b!4886314 m!5890156))

(declare-fun m!5890158 () Bool)

(assert (=> b!4886314 m!5890158))

(assert (=> b!4886314 m!5890132))

(assert (=> b!4886314 m!5890132))

(assert (=> b!4886314 m!5890134))

(assert (=> b!4886314 m!5890136))

(assert (=> b!4886314 m!5890134))

(assert (=> b!4886133 d!1569560))

(declare-fun d!1569562 () Bool)

(declare-fun isEmpty!30164 (Option!13949) Bool)

(assert (=> d!1569562 (= (isDefined!10968 (maxPrefix!4582 thiss!14805 rulesArg!165 lt!2002182)) (not (isEmpty!30164 (maxPrefix!4582 thiss!14805 rulesArg!165 lt!2002182))))))

(declare-fun bs!1175601 () Bool)

(assert (= bs!1175601 d!1569562))

(assert (=> bs!1175601 m!5889956))

(declare-fun m!5890160 () Bool)

(assert (=> bs!1175601 m!5890160))

(assert (=> b!4886134 d!1569562))

(declare-fun b!4886346 () Bool)

(declare-fun e!3054438 () Option!13949)

(declare-fun lt!2002332 () Option!13949)

(declare-fun lt!2002334 () Option!13949)

(assert (=> b!4886346 (= e!3054438 (ite (and (is-None!13948 lt!2002332) (is-None!13948 lt!2002334)) None!13948 (ite (is-None!13948 lt!2002334) lt!2002332 (ite (is-None!13948 lt!2002332) lt!2002334 (ite (>= (size!37065 (_1!33427 (v!49898 lt!2002332))) (size!37065 (_1!33427 (v!49898 lt!2002334)))) lt!2002332 lt!2002334)))))))

(declare-fun call!339002 () Option!13949)

(assert (=> b!4886346 (= lt!2002332 call!339002)))

(assert (=> b!4886346 (= lt!2002334 (maxPrefix!4582 thiss!14805 (t!365052 rulesArg!165) lt!2002182))))

(declare-fun b!4886347 () Bool)

(declare-fun res!2086560 () Bool)

(declare-fun e!3054439 () Bool)

(assert (=> b!4886347 (=> (not res!2086560) (not e!3054439))))

(declare-fun lt!2002331 () Option!13949)

(declare-fun charsOf!5360 (Token!14834) BalanceConc!28832)

(assert (=> b!4886347 (= res!2086560 (matchR!6514 (regex!8133 (rule!11303 (_1!33427 (get!19396 lt!2002331)))) (list!17666 (charsOf!5360 (_1!33427 (get!19396 lt!2002331))))))))

(declare-fun b!4886348 () Bool)

(declare-fun res!2086559 () Bool)

(assert (=> b!4886348 (=> (not res!2086559) (not e!3054439))))

(assert (=> b!4886348 (= res!2086559 (= (value!260944 (_1!33427 (get!19396 lt!2002331))) (apply!13524 (transformation!8133 (rule!11303 (_1!33427 (get!19396 lt!2002331)))) (seqFromList!5920 (originalCharacters!8448 (_1!33427 (get!19396 lt!2002331)))))))))

(declare-fun b!4886349 () Bool)

(declare-fun e!3054440 () Bool)

(assert (=> b!4886349 (= e!3054440 e!3054439)))

(declare-fun res!2086564 () Bool)

(assert (=> b!4886349 (=> (not res!2086564) (not e!3054439))))

(assert (=> b!4886349 (= res!2086564 (isDefined!10968 lt!2002331))))

(declare-fun d!1569564 () Bool)

(assert (=> d!1569564 e!3054440))

(declare-fun res!2086562 () Bool)

(assert (=> d!1569564 (=> res!2086562 e!3054440)))

(assert (=> d!1569564 (= res!2086562 (isEmpty!30164 lt!2002331))))

(assert (=> d!1569564 (= lt!2002331 e!3054438)))

(declare-fun c!830727 () Bool)

(assert (=> d!1569564 (= c!830727 (and (is-Cons!56282 rulesArg!165) (is-Nil!56282 (t!365052 rulesArg!165))))))

(declare-fun lt!2002333 () Unit!146271)

(declare-fun lt!2002335 () Unit!146271)

(assert (=> d!1569564 (= lt!2002333 lt!2002335)))

(assert (=> d!1569564 (isPrefix!4855 lt!2002182 lt!2002182)))

(assert (=> d!1569564 (= lt!2002335 (lemmaIsPrefixRefl!3252 lt!2002182 lt!2002182))))

(assert (=> d!1569564 (rulesValidInductive!3112 thiss!14805 rulesArg!165)))

(assert (=> d!1569564 (= (maxPrefix!4582 thiss!14805 rulesArg!165 lt!2002182) lt!2002331)))

(declare-fun bm!338997 () Bool)

(assert (=> bm!338997 (= call!339002 (maxPrefixOneRule!3513 thiss!14805 (h!62730 rulesArg!165) lt!2002182))))

(declare-fun b!4886350 () Bool)

(declare-fun res!2086563 () Bool)

(assert (=> b!4886350 (=> (not res!2086563) (not e!3054439))))

(declare-fun ++!12229 (List!56404 List!56404) List!56404)

(assert (=> b!4886350 (= res!2086563 (= (++!12229 (list!17666 (charsOf!5360 (_1!33427 (get!19396 lt!2002331)))) (_2!33427 (get!19396 lt!2002331))) lt!2002182))))

(declare-fun b!4886351 () Bool)

(assert (=> b!4886351 (= e!3054438 call!339002)))

(declare-fun b!4886352 () Bool)

(declare-fun res!2086561 () Bool)

(assert (=> b!4886352 (=> (not res!2086561) (not e!3054439))))

(assert (=> b!4886352 (= res!2086561 (< (size!37068 (_2!33427 (get!19396 lt!2002331))) (size!37068 lt!2002182)))))

(declare-fun b!4886353 () Bool)

(declare-fun res!2086558 () Bool)

(assert (=> b!4886353 (=> (not res!2086558) (not e!3054439))))

(assert (=> b!4886353 (= res!2086558 (= (list!17666 (charsOf!5360 (_1!33427 (get!19396 lt!2002331)))) (originalCharacters!8448 (_1!33427 (get!19396 lt!2002331)))))))

(declare-fun b!4886354 () Bool)

(declare-fun contains!19423 (List!56406 Rule!16066) Bool)

(assert (=> b!4886354 (= e!3054439 (contains!19423 rulesArg!165 (rule!11303 (_1!33427 (get!19396 lt!2002331)))))))

(assert (= (and d!1569564 c!830727) b!4886351))

(assert (= (and d!1569564 (not c!830727)) b!4886346))

(assert (= (or b!4886351 b!4886346) bm!338997))

(assert (= (and d!1569564 (not res!2086562)) b!4886349))

(assert (= (and b!4886349 res!2086564) b!4886353))

(assert (= (and b!4886353 res!2086558) b!4886352))

(assert (= (and b!4886352 res!2086561) b!4886350))

(assert (= (and b!4886350 res!2086563) b!4886348))

(assert (= (and b!4886348 res!2086559) b!4886347))

(assert (= (and b!4886347 res!2086560) b!4886354))

(declare-fun m!5890162 () Bool)

(assert (=> b!4886346 m!5890162))

(declare-fun m!5890164 () Bool)

(assert (=> b!4886353 m!5890164))

(declare-fun m!5890166 () Bool)

(assert (=> b!4886353 m!5890166))

(assert (=> b!4886353 m!5890166))

(declare-fun m!5890168 () Bool)

(assert (=> b!4886353 m!5890168))

(assert (=> b!4886352 m!5890164))

(declare-fun m!5890170 () Bool)

(assert (=> b!4886352 m!5890170))

(declare-fun m!5890172 () Bool)

(assert (=> b!4886352 m!5890172))

(declare-fun m!5890174 () Bool)

(assert (=> bm!338997 m!5890174))

(assert (=> b!4886350 m!5890164))

(assert (=> b!4886350 m!5890166))

(assert (=> b!4886350 m!5890166))

(assert (=> b!4886350 m!5890168))

(assert (=> b!4886350 m!5890168))

(declare-fun m!5890176 () Bool)

(assert (=> b!4886350 m!5890176))

(declare-fun m!5890178 () Bool)

(assert (=> d!1569564 m!5890178))

(assert (=> d!1569564 m!5889948))

(assert (=> d!1569564 m!5889950))

(assert (=> d!1569564 m!5889946))

(assert (=> b!4886354 m!5890164))

(declare-fun m!5890180 () Bool)

(assert (=> b!4886354 m!5890180))

(assert (=> b!4886347 m!5890164))

(assert (=> b!4886347 m!5890166))

(assert (=> b!4886347 m!5890166))

(assert (=> b!4886347 m!5890168))

(assert (=> b!4886347 m!5890168))

(declare-fun m!5890182 () Bool)

(assert (=> b!4886347 m!5890182))

(declare-fun m!5890184 () Bool)

(assert (=> b!4886349 m!5890184))

(assert (=> b!4886348 m!5890164))

(declare-fun m!5890186 () Bool)

(assert (=> b!4886348 m!5890186))

(assert (=> b!4886348 m!5890186))

(declare-fun m!5890188 () Bool)

(assert (=> b!4886348 m!5890188))

(assert (=> b!4886134 d!1569564))

(declare-fun d!1569566 () Bool)

(declare-fun e!3054448 () Bool)

(assert (=> d!1569566 e!3054448))

(declare-fun res!2086573 () Bool)

(assert (=> d!1569566 (=> res!2086573 e!3054448)))

(declare-fun lt!2002338 () Bool)

(assert (=> d!1569566 (= res!2086573 (not lt!2002338))))

(declare-fun e!3054447 () Bool)

(assert (=> d!1569566 (= lt!2002338 e!3054447)))

(declare-fun res!2086574 () Bool)

(assert (=> d!1569566 (=> res!2086574 e!3054447)))

(assert (=> d!1569566 (= res!2086574 (is-Nil!56280 lt!2002182))))

(assert (=> d!1569566 (= (isPrefix!4855 lt!2002182 lt!2002182) lt!2002338)))

(declare-fun b!4886366 () Bool)

(assert (=> b!4886366 (= e!3054448 (>= (size!37068 lt!2002182) (size!37068 lt!2002182)))))

(declare-fun b!4886363 () Bool)

(declare-fun e!3054449 () Bool)

(assert (=> b!4886363 (= e!3054447 e!3054449)))

(declare-fun res!2086576 () Bool)

(assert (=> b!4886363 (=> (not res!2086576) (not e!3054449))))

(assert (=> b!4886363 (= res!2086576 (not (is-Nil!56280 lt!2002182)))))

(declare-fun b!4886364 () Bool)

(declare-fun res!2086575 () Bool)

(assert (=> b!4886364 (=> (not res!2086575) (not e!3054449))))

(declare-fun head!10439 (List!56404) C!26614)

(assert (=> b!4886364 (= res!2086575 (= (head!10439 lt!2002182) (head!10439 lt!2002182)))))

(declare-fun b!4886365 () Bool)

(declare-fun tail!9585 (List!56404) List!56404)

(assert (=> b!4886365 (= e!3054449 (isPrefix!4855 (tail!9585 lt!2002182) (tail!9585 lt!2002182)))))

(assert (= (and d!1569566 (not res!2086574)) b!4886363))

(assert (= (and b!4886363 res!2086576) b!4886364))

(assert (= (and b!4886364 res!2086575) b!4886365))

(assert (= (and d!1569566 (not res!2086573)) b!4886366))

(assert (=> b!4886366 m!5890172))

(assert (=> b!4886366 m!5890172))

(declare-fun m!5890190 () Bool)

(assert (=> b!4886364 m!5890190))

(assert (=> b!4886364 m!5890190))

(declare-fun m!5890192 () Bool)

(assert (=> b!4886365 m!5890192))

(assert (=> b!4886365 m!5890192))

(assert (=> b!4886365 m!5890192))

(assert (=> b!4886365 m!5890192))

(declare-fun m!5890194 () Bool)

(assert (=> b!4886365 m!5890194))

(assert (=> b!4886132 d!1569566))

(declare-fun d!1569568 () Bool)

(assert (=> d!1569568 (isPrefix!4855 lt!2002182 lt!2002182)))

(declare-fun lt!2002341 () Unit!146271)

(declare-fun choose!35677 (List!56404 List!56404) Unit!146271)

(assert (=> d!1569568 (= lt!2002341 (choose!35677 lt!2002182 lt!2002182))))

(assert (=> d!1569568 (= (lemmaIsPrefixRefl!3252 lt!2002182 lt!2002182) lt!2002341)))

(declare-fun bs!1175602 () Bool)

(assert (= bs!1175602 d!1569568))

(assert (=> bs!1175602 m!5889948))

(declare-fun m!5890196 () Bool)

(assert (=> bs!1175602 m!5890196))

(assert (=> b!4886132 d!1569568))

(declare-fun d!1569570 () Bool)

(declare-fun list!17668 (Conc!14701) List!56404)

(assert (=> d!1569570 (= (list!17666 input!1236) (list!17668 (c!830701 input!1236)))))

(declare-fun bs!1175603 () Bool)

(assert (= bs!1175603 d!1569570))

(declare-fun m!5890198 () Bool)

(assert (=> bs!1175603 m!5890198))

(assert (=> b!4886132 d!1569570))

(declare-fun d!1569572 () Bool)

(assert (=> d!1569572 (= (isEmpty!30160 rulesArg!165) (is-Nil!56282 rulesArg!165))))

(assert (=> b!4886135 d!1569572))

(declare-fun d!1569574 () Bool)

(declare-fun isBalanced!3996 (Conc!14701) Bool)

(assert (=> d!1569574 (= (inv!72444 input!1236) (isBalanced!3996 (c!830701 input!1236)))))

(declare-fun bs!1175604 () Bool)

(assert (= bs!1175604 d!1569574))

(declare-fun m!5890200 () Bool)

(assert (=> bs!1175604 m!5890200))

(assert (=> start!511362 d!1569574))

(declare-fun d!1569576 () Bool)

(assert (=> d!1569576 (= (inv!72440 (tag!8997 (h!62730 rulesArg!165))) (= (mod (str.len (value!260943 (tag!8997 (h!62730 rulesArg!165)))) 2) 0))))

(assert (=> b!4886139 d!1569576))

(declare-fun d!1569578 () Bool)

(declare-fun res!2086579 () Bool)

(declare-fun e!3054452 () Bool)

(assert (=> d!1569578 (=> (not res!2086579) (not e!3054452))))

(declare-fun semiInverseModEq!3570 (Int Int) Bool)

(assert (=> d!1569578 (= res!2086579 (semiInverseModEq!3570 (toChars!10879 (transformation!8133 (h!62730 rulesArg!165))) (toValue!11020 (transformation!8133 (h!62730 rulesArg!165)))))))

(assert (=> d!1569578 (= (inv!72445 (transformation!8133 (h!62730 rulesArg!165))) e!3054452)))

(declare-fun b!4886369 () Bool)

(declare-fun equivClasses!3449 (Int Int) Bool)

(assert (=> b!4886369 (= e!3054452 (equivClasses!3449 (toChars!10879 (transformation!8133 (h!62730 rulesArg!165))) (toValue!11020 (transformation!8133 (h!62730 rulesArg!165)))))))

(assert (= (and d!1569578 res!2086579) b!4886369))

(declare-fun m!5890202 () Bool)

(assert (=> d!1569578 m!5890202))

(declare-fun m!5890204 () Bool)

(assert (=> b!4886369 m!5890204))

(assert (=> b!4886139 d!1569578))

(declare-fun d!1569580 () Bool)

(assert (=> d!1569580 (= (list!17666 (_2!33428 lt!2002179)) (list!17668 (c!830701 (_2!33428 lt!2002179))))))

(declare-fun bs!1175605 () Bool)

(assert (= bs!1175605 d!1569580))

(declare-fun m!5890206 () Bool)

(assert (=> bs!1175605 m!5890206))

(assert (=> b!4886137 d!1569580))

(declare-fun d!1569582 () Bool)

(assert (=> d!1569582 (= (isDefined!10968 lt!2002183) (not (isEmpty!30164 lt!2002183)))))

(declare-fun bs!1175606 () Bool)

(assert (= bs!1175606 d!1569582))

(declare-fun m!5890208 () Bool)

(assert (=> bs!1175606 m!5890208))

(assert (=> b!4886127 d!1569582))

(declare-fun d!1569584 () Bool)

(declare-fun isEmpty!30165 (Option!13950) Bool)

(assert (=> d!1569584 (= (isDefined!10969 lt!2002181) (not (isEmpty!30165 lt!2002181)))))

(declare-fun bs!1175607 () Bool)

(assert (= bs!1175607 d!1569584))

(declare-fun m!5890210 () Bool)

(assert (=> bs!1175607 m!5890210))

(assert (=> b!4886127 d!1569584))

(declare-fun lt!2002355 () Option!13949)

(declare-fun d!1569586 () Bool)

(assert (=> d!1569586 (= lt!2002355 (maxPrefix!4582 thiss!14805 rulesArg!165 lt!2002182))))

(declare-fun e!3054455 () Option!13949)

(assert (=> d!1569586 (= lt!2002355 e!3054455)))

(declare-fun c!830730 () Bool)

(assert (=> d!1569586 (= c!830730 (and (is-Cons!56282 rulesArg!165) (is-Nil!56282 (t!365052 rulesArg!165))))))

(declare-fun lt!2002354 () Unit!146271)

(declare-fun lt!2002352 () Unit!146271)

(assert (=> d!1569586 (= lt!2002354 lt!2002352)))

(assert (=> d!1569586 (isPrefix!4855 lt!2002182 lt!2002182)))

(assert (=> d!1569586 (= lt!2002352 (lemmaIsPrefixRefl!3252 lt!2002182 lt!2002182))))

(assert (=> d!1569586 (rulesValidInductive!3112 thiss!14805 rulesArg!165)))

(assert (=> d!1569586 (= (maxPrefixZipper!636 thiss!14805 rulesArg!165 lt!2002182) lt!2002355)))

(declare-fun bm!339000 () Bool)

(declare-fun call!339005 () Option!13949)

(declare-fun maxPrefixOneRuleZipper!245 (LexerInterface!7725 Rule!16066 List!56404) Option!13949)

(assert (=> bm!339000 (= call!339005 (maxPrefixOneRuleZipper!245 thiss!14805 (h!62730 rulesArg!165) lt!2002182))))

(declare-fun b!4886374 () Bool)

(assert (=> b!4886374 (= e!3054455 call!339005)))

(declare-fun b!4886375 () Bool)

(declare-fun lt!2002353 () Option!13949)

(declare-fun lt!2002356 () Option!13949)

(assert (=> b!4886375 (= e!3054455 (ite (and (is-None!13948 lt!2002353) (is-None!13948 lt!2002356)) None!13948 (ite (is-None!13948 lt!2002356) lt!2002353 (ite (is-None!13948 lt!2002353) lt!2002356 (ite (>= (size!37065 (_1!33427 (v!49898 lt!2002353))) (size!37065 (_1!33427 (v!49898 lt!2002356)))) lt!2002353 lt!2002356)))))))

(assert (=> b!4886375 (= lt!2002353 call!339005)))

(assert (=> b!4886375 (= lt!2002356 (maxPrefixZipper!636 thiss!14805 (t!365052 rulesArg!165) lt!2002182))))

(assert (= (and d!1569586 c!830730) b!4886374))

(assert (= (and d!1569586 (not c!830730)) b!4886375))

(assert (= (or b!4886374 b!4886375) bm!339000))

(assert (=> d!1569586 m!5889956))

(assert (=> d!1569586 m!5889948))

(assert (=> d!1569586 m!5889950))

(assert (=> d!1569586 m!5889946))

(declare-fun m!5890212 () Bool)

(assert (=> bm!339000 m!5890212))

(declare-fun m!5890214 () Bool)

(assert (=> b!4886375 m!5890214))

(assert (=> b!4886127 d!1569586))

(declare-fun d!1569588 () Bool)

(assert (=> d!1569588 (= (get!19396 lt!2002183) (v!49898 lt!2002183))))

(assert (=> b!4886138 d!1569588))

(declare-fun d!1569590 () Bool)

(assert (=> d!1569590 (= (get!19397 lt!2002181) (v!49899 lt!2002181))))

(assert (=> b!4886138 d!1569590))

(declare-fun b!4886386 () Bool)

(declare-fun b_free!131263 () Bool)

(declare-fun b_next!132053 () Bool)

(assert (=> b!4886386 (= b_free!131263 (not b_next!132053))))

(declare-fun tp!1375099 () Bool)

(declare-fun b_and!344095 () Bool)

(assert (=> b!4886386 (= tp!1375099 b_and!344095)))

(declare-fun b_free!131265 () Bool)

(declare-fun b_next!132055 () Bool)

(assert (=> b!4886386 (= b_free!131265 (not b_next!132055))))

(declare-fun tp!1375100 () Bool)

(declare-fun b_and!344097 () Bool)

(assert (=> b!4886386 (= tp!1375100 b_and!344097)))

(declare-fun e!3054466 () Bool)

(assert (=> b!4886386 (= e!3054466 (and tp!1375099 tp!1375100))))

(declare-fun tp!1375098 () Bool)

(declare-fun e!3054464 () Bool)

(declare-fun b!4886385 () Bool)

(assert (=> b!4886385 (= e!3054464 (and tp!1375098 (inv!72440 (tag!8997 (h!62730 (t!365052 rulesArg!165)))) (inv!72445 (transformation!8133 (h!62730 (t!365052 rulesArg!165)))) e!3054466))))

(declare-fun b!4886384 () Bool)

(declare-fun e!3054465 () Bool)

(declare-fun tp!1375101 () Bool)

(assert (=> b!4886384 (= e!3054465 (and e!3054464 tp!1375101))))

(assert (=> b!4886131 (= tp!1375072 e!3054465)))

(assert (= b!4886385 b!4886386))

(assert (= b!4886384 b!4886385))

(assert (= (and b!4886131 (is-Cons!56282 (t!365052 rulesArg!165))) b!4886384))

(declare-fun m!5890216 () Bool)

(assert (=> b!4886385 m!5890216))

(declare-fun m!5890218 () Bool)

(assert (=> b!4886385 m!5890218))

(declare-fun tp!1375109 () Bool)

(declare-fun b!4886395 () Bool)

(declare-fun e!3054473 () Bool)

(declare-fun tp!1375108 () Bool)

(assert (=> b!4886395 (= e!3054473 (and (inv!72443 (left!40878 (c!830701 input!1236))) tp!1375108 (inv!72443 (right!41208 (c!830701 input!1236))) tp!1375109))))

(declare-fun b!4886397 () Bool)

(declare-fun e!3054472 () Bool)

(declare-fun tp!1375110 () Bool)

(assert (=> b!4886397 (= e!3054472 tp!1375110)))

(declare-fun b!4886396 () Bool)

(declare-fun inv!72451 (IArray!29463) Bool)

(assert (=> b!4886396 (= e!3054473 (and (inv!72451 (xs!18017 (c!830701 input!1236))) e!3054472))))

(assert (=> b!4886130 (= tp!1375074 (and (inv!72443 (c!830701 input!1236)) e!3054473))))

(assert (= (and b!4886130 (is-Node!14701 (c!830701 input!1236))) b!4886395))

(assert (= b!4886396 b!4886397))

(assert (= (and b!4886130 (is-Leaf!24485 (c!830701 input!1236))) b!4886396))

(declare-fun m!5890220 () Bool)

(assert (=> b!4886395 m!5890220))

(declare-fun m!5890222 () Bool)

(assert (=> b!4886395 m!5890222))

(declare-fun m!5890224 () Bool)

(assert (=> b!4886396 m!5890224))

(assert (=> b!4886130 m!5889972))

(declare-fun b!4886408 () Bool)

(declare-fun e!3054476 () Bool)

(declare-fun tp_is_empty!35741 () Bool)

(assert (=> b!4886408 (= e!3054476 tp_is_empty!35741)))

(declare-fun b!4886409 () Bool)

(declare-fun tp!1375123 () Bool)

(declare-fun tp!1375124 () Bool)

(assert (=> b!4886409 (= e!3054476 (and tp!1375123 tp!1375124))))

(assert (=> b!4886139 (= tp!1375071 e!3054476)))

(declare-fun b!4886410 () Bool)

(declare-fun tp!1375122 () Bool)

(assert (=> b!4886410 (= e!3054476 tp!1375122)))

(declare-fun b!4886411 () Bool)

(declare-fun tp!1375121 () Bool)

(declare-fun tp!1375125 () Bool)

(assert (=> b!4886411 (= e!3054476 (and tp!1375121 tp!1375125))))

(assert (= (and b!4886139 (is-ElementMatch!13208 (regex!8133 (h!62730 rulesArg!165)))) b!4886408))

(assert (= (and b!4886139 (is-Concat!21652 (regex!8133 (h!62730 rulesArg!165)))) b!4886409))

(assert (= (and b!4886139 (is-Star!13208 (regex!8133 (h!62730 rulesArg!165)))) b!4886410))

(assert (= (and b!4886139 (is-Union!13208 (regex!8133 (h!62730 rulesArg!165)))) b!4886411))

(push 1)

(assert (not b!4886384))

(assert (not b!4886292))

(assert (not b!4886352))

(assert (not bm!338994))

(assert (not b!4886346))

(assert (not d!1569574))

(assert (not b!4886314))

(assert (not b!4886293))

(assert (not b!4886410))

(assert (not bm!339000))

(assert (not d!1569560))

(assert (not bm!338997))

(assert (not b!4886366))

(assert (not b!4886347))

(assert b_and!344087)

(assert (not d!1569584))

(assert (not b!4886261))

(assert (not b!4886354))

(assert (not b!4886318))

(assert (not b!4886365))

(assert (not b!4886317))

(assert tp_is_empty!35741)

(assert (not b!4886348))

(assert (not b!4886295))

(assert (not b!4886364))

(assert (not d!1569582))

(assert (not d!1569578))

(assert (not b!4886409))

(assert (not d!1569580))

(assert (not b!4886375))

(assert (not b!4886290))

(assert (not b!4886263))

(assert (not b!4886353))

(assert (not d!1569562))

(assert (not b!4886397))

(assert (not b!4886395))

(assert b_and!344097)

(assert (not b!4886315))

(assert (not b_next!132055))

(assert (not b!4886385))

(assert (not b!4886289))

(assert (not b!4886411))

(assert (not b!4886349))

(assert (not b!4886350))

(assert (not b!4886396))

(assert (not d!1569568))

(assert (not b!4886130))

(assert (not b!4886319))

(assert (not b_next!132053))

(assert (not b!4886369))

(assert (not d!1569564))

(assert (not b!4886294))

(assert (not d!1569586))

(assert (not d!1569556))

(assert b_and!344089)

(assert (not b!4886288))

(assert (not d!1569570))

(assert (not b!4886240))

(assert (not d!1569538))

(assert (not b_next!132045))

(assert (not b_next!132047))

(assert b_and!344095)

(assert (not b!4886239))

(check-sat)

(pop 1)

(push 1)

(assert b_and!344087)

(assert (not b_next!132053))

(assert b_and!344089)

(assert (not b_next!132045))

(assert b_and!344097)

(assert (not b_next!132055))

(assert (not b_next!132047))

(assert b_and!344095)

(check-sat)

(pop 1)

