; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!263748 () Bool)

(assert start!263748)

(declare-fun b!2718084 () Bool)

(declare-fun b_free!76593 () Bool)

(declare-fun b_next!77297 () Bool)

(assert (=> b!2718084 (= b_free!76593 (not b_next!77297))))

(declare-fun tp!857973 () Bool)

(declare-fun b_and!200345 () Bool)

(assert (=> b!2718084 (= tp!857973 b_and!200345)))

(declare-fun b_free!76595 () Bool)

(declare-fun b_next!77299 () Bool)

(assert (=> b!2718084 (= b_free!76595 (not b_next!77299))))

(declare-fun tp!857971 () Bool)

(declare-fun b_and!200347 () Bool)

(assert (=> b!2718084 (= tp!857971 b_and!200347)))

(declare-fun b!2718083 () Bool)

(declare-fun e!1713163 () Bool)

(declare-fun e!1713166 () Bool)

(declare-fun tp!857976 () Bool)

(assert (=> b!2718083 (= e!1713163 (and e!1713166 tp!857976))))

(declare-fun e!1713168 () Bool)

(assert (=> b!2718084 (= e!1713168 (and tp!857973 tp!857971))))

(declare-fun b!2718085 () Bool)

(declare-fun e!1713172 () Bool)

(declare-datatypes ((C!16060 0))(
  ( (C!16061 (val!9964 Int)) )
))
(declare-datatypes ((List!31461 0))(
  ( (Nil!31361) (Cons!31361 (h!36781 C!16060) (t!226313 List!31461)) )
))
(declare-datatypes ((IArray!19655 0))(
  ( (IArray!19656 (innerList!9885 List!31461)) )
))
(declare-datatypes ((Conc!9825 0))(
  ( (Node!9825 (left!24110 Conc!9825) (right!24440 Conc!9825) (csize!19880 Int) (cheight!10036 Int)) (Leaf!14969 (xs!12896 IArray!19655) (csize!19881 Int)) (Empty!9825) )
))
(declare-datatypes ((BalanceConc!19264 0))(
  ( (BalanceConc!19265 (c!439215 Conc!9825)) )
))
(declare-fun totalInput!328 () BalanceConc!19264)

(declare-fun tp!857977 () Bool)

(declare-fun inv!42580 (Conc!9825) Bool)

(assert (=> b!2718085 (= e!1713172 (and (inv!42580 (c!439215 totalInput!328)) tp!857977))))

(declare-fun b!2718086 () Bool)

(declare-fun e!1713169 () Bool)

(declare-fun e!1713170 () Bool)

(assert (=> b!2718086 (= e!1713169 e!1713170)))

(declare-fun res!1141618 () Bool)

(assert (=> b!2718086 (=> (not res!1141618) (not e!1713170))))

(declare-datatypes ((List!31462 0))(
  ( (Nil!31362) (Cons!31362 (h!36782 (_ BitVec 16)) (t!226314 List!31462)) )
))
(declare-datatypes ((TokenValue!5021 0))(
  ( (FloatLiteralValue!10042 (text!35592 List!31462)) (TokenValueExt!5020 (__x!20177 Int)) (Broken!25105 (value!154358 List!31462)) (Object!5120) (End!5021) (Def!5021) (Underscore!5021) (Match!5021) (Else!5021) (Error!5021) (Case!5021) (If!5021) (Extends!5021) (Abstract!5021) (Class!5021) (Val!5021) (DelimiterValue!10042 (del!5081 List!31462)) (KeywordValue!5027 (value!154359 List!31462)) (CommentValue!10042 (value!154360 List!31462)) (WhitespaceValue!10042 (value!154361 List!31462)) (IndentationValue!5021 (value!154362 List!31462)) (String!35004) (Int32!5021) (Broken!25106 (value!154363 List!31462)) (Boolean!5022) (Unit!45377) (OperatorValue!5024 (op!5081 List!31462)) (IdentifierValue!10042 (value!154364 List!31462)) (IdentifierValue!10043 (value!154365 List!31462)) (WhitespaceValue!10043 (value!154366 List!31462)) (True!10042) (False!10042) (Broken!25107 (value!154367 List!31462)) (Broken!25108 (value!154368 List!31462)) (True!10043) (RightBrace!5021) (RightBracket!5021) (Colon!5021) (Null!5021) (Comma!5021) (LeftBracket!5021) (False!10043) (LeftBrace!5021) (ImaginaryLiteralValue!5021 (text!35593 List!31462)) (StringLiteralValue!15063 (value!154369 List!31462)) (EOFValue!5021 (value!154370 List!31462)) (IdentValue!5021 (value!154371 List!31462)) (DelimiterValue!10043 (value!154372 List!31462)) (DedentValue!5021 (value!154373 List!31462)) (NewLineValue!5021 (value!154374 List!31462)) (IntegerValue!15063 (value!154375 (_ BitVec 32)) (text!35594 List!31462)) (IntegerValue!15064 (value!154376 Int) (text!35595 List!31462)) (Times!5021) (Or!5021) (Equal!5021) (Minus!5021) (Broken!25109 (value!154377 List!31462)) (And!5021) (Div!5021) (LessEqual!5021) (Mod!5021) (Concat!12972) (Not!5021) (Plus!5021) (SpaceValue!5021 (value!154378 List!31462)) (IntegerValue!15065 (value!154379 Int) (text!35596 List!31462)) (StringLiteralValue!15064 (text!35597 List!31462)) (FloatLiteralValue!10043 (text!35598 List!31462)) (BytesLiteralValue!5021 (value!154380 List!31462)) (CommentValue!10043 (value!154381 List!31462)) (StringLiteralValue!15065 (value!154382 List!31462)) (ErrorTokenValue!5021 (msg!5082 List!31462)) )
))
(declare-datatypes ((Regex!7951 0))(
  ( (ElementMatch!7951 (c!439216 C!16060)) (Concat!12973 (regOne!16414 Regex!7951) (regTwo!16414 Regex!7951)) (EmptyExpr!7951) (Star!7951 (reg!8280 Regex!7951)) (EmptyLang!7951) (Union!7951 (regOne!16415 Regex!7951) (regTwo!16415 Regex!7951)) )
))
(declare-datatypes ((String!35005 0))(
  ( (String!35006 (value!154383 String)) )
))
(declare-datatypes ((TokenValueInjection!9482 0))(
  ( (TokenValueInjection!9483 (toValue!6773 Int) (toChars!6632 Int)) )
))
(declare-datatypes ((Rule!9398 0))(
  ( (Rule!9399 (regex!4799 Regex!7951) (tag!5303 String!35005) (isSeparator!4799 Bool) (transformation!4799 TokenValueInjection!9482)) )
))
(declare-datatypes ((Token!9060 0))(
  ( (Token!9061 (value!154384 TokenValue!5021) (rule!7227 Rule!9398) (size!24187 Int) (originalCharacters!5561 List!31461)) )
))
(declare-datatypes ((List!31463 0))(
  ( (Nil!31363) (Cons!31363 (h!36783 Token!9060) (t!226315 List!31463)) )
))
(declare-datatypes ((IArray!19657 0))(
  ( (IArray!19658 (innerList!9886 List!31463)) )
))
(declare-datatypes ((Conc!9826 0))(
  ( (Node!9826 (left!24111 Conc!9826) (right!24441 Conc!9826) (csize!19882 Int) (cheight!10037 Int)) (Leaf!14970 (xs!12897 IArray!19657) (csize!19883 Int)) (Empty!9826) )
))
(declare-datatypes ((BalanceConc!19266 0))(
  ( (BalanceConc!19267 (c!439217 Conc!9826)) )
))
(declare-datatypes ((tuple2!31046 0))(
  ( (tuple2!31047 (_1!18155 BalanceConc!19266) (_2!18155 BalanceConc!19264)) )
))
(declare-fun lt!962064 () tuple2!31046)

(declare-fun lt!962066 () tuple2!31046)

(declare-fun acc!331 () BalanceConc!19266)

(declare-fun list!11880 (BalanceConc!19266) List!31463)

(declare-fun ++!7802 (BalanceConc!19266 BalanceConc!19266) BalanceConc!19266)

(assert (=> b!2718086 (= res!1141618 (= (list!11880 (_1!18155 lt!962064)) (list!11880 (++!7802 acc!331 (_1!18155 lt!962066)))))))

(declare-fun input!603 () BalanceConc!19264)

(declare-datatypes ((LexerInterface!4395 0))(
  ( (LexerInterfaceExt!4392 (__x!20178 Int)) (Lexer!4393) )
))
(declare-fun thiss!11556 () LexerInterface!4395)

(declare-datatypes ((List!31464 0))(
  ( (Nil!31364) (Cons!31364 (h!36784 Rule!9398) (t!226316 List!31464)) )
))
(declare-fun rules!1182 () List!31464)

(declare-fun lexRec!655 (LexerInterface!4395 List!31464 BalanceConc!19264) tuple2!31046)

(assert (=> b!2718086 (= lt!962066 (lexRec!655 thiss!11556 rules!1182 input!603))))

(assert (=> b!2718086 (= lt!962064 (lexRec!655 thiss!11556 rules!1182 totalInput!328))))

(declare-fun b!2718087 () Bool)

(declare-fun e!1713173 () Bool)

(declare-fun tp!857972 () Bool)

(assert (=> b!2718087 (= e!1713173 (and (inv!42580 (c!439215 input!603)) tp!857972))))

(declare-fun b!2718088 () Bool)

(declare-fun res!1141621 () Bool)

(declare-fun e!1713165 () Bool)

(assert (=> b!2718088 (=> (not res!1141621) (not e!1713165))))

(declare-fun isEmpty!17887 (List!31464) Bool)

(assert (=> b!2718088 (= res!1141621 (not (isEmpty!17887 rules!1182)))))

(declare-fun b!2718089 () Bool)

(declare-fun res!1141615 () Bool)

(assert (=> b!2718089 (=> (not res!1141615) (not e!1713170))))

(declare-fun list!11881 (BalanceConc!19264) List!31461)

(assert (=> b!2718089 (= res!1141615 (= (list!11881 (_2!18155 lt!962064)) (list!11881 (_2!18155 lt!962066))))))

(declare-fun b!2718090 () Bool)

(declare-fun size!24188 (BalanceConc!19264) Int)

(assert (=> b!2718090 (= e!1713170 (< (size!24188 input!603) 0))))

(declare-fun b!2718091 () Bool)

(declare-fun e!1713164 () Bool)

(declare-fun treated!9 () BalanceConc!19264)

(declare-fun tp!857974 () Bool)

(assert (=> b!2718091 (= e!1713164 (and (inv!42580 (c!439215 treated!9)) tp!857974))))

(declare-fun tp!857975 () Bool)

(declare-fun b!2718092 () Bool)

(declare-fun inv!42574 (String!35005) Bool)

(declare-fun inv!42581 (TokenValueInjection!9482) Bool)

(assert (=> b!2718092 (= e!1713166 (and tp!857975 (inv!42574 (tag!5303 (h!36784 rules!1182))) (inv!42581 (transformation!4799 (h!36784 rules!1182))) e!1713168))))

(declare-fun b!2718093 () Bool)

(declare-fun res!1141617 () Bool)

(assert (=> b!2718093 (=> (not res!1141617) (not e!1713165))))

(declare-fun ++!7803 (List!31461 List!31461) List!31461)

(assert (=> b!2718093 (= res!1141617 (= (list!11881 totalInput!328) (++!7803 (list!11881 treated!9) (list!11881 input!603))))))

(declare-fun b!2718094 () Bool)

(declare-fun res!1141620 () Bool)

(assert (=> b!2718094 (=> (not res!1141620) (not e!1713165))))

(declare-fun rulesInvariant!3880 (LexerInterface!4395 List!31464) Bool)

(assert (=> b!2718094 (= res!1141620 (rulesInvariant!3880 thiss!11556 rules!1182))))

(declare-fun b!2718095 () Bool)

(declare-fun e!1713171 () Bool)

(declare-fun tp!857970 () Bool)

(declare-fun inv!42582 (Conc!9826) Bool)

(assert (=> b!2718095 (= e!1713171 (and (inv!42582 (c!439217 acc!331)) tp!857970))))

(declare-fun b!2718096 () Bool)

(assert (=> b!2718096 (= e!1713165 e!1713169)))

(declare-fun res!1141622 () Bool)

(assert (=> b!2718096 (=> (not res!1141622) (not e!1713169))))

(declare-fun lt!962065 () tuple2!31046)

(assert (=> b!2718096 (= res!1141622 (= (list!11880 (_1!18155 lt!962065)) (list!11880 acc!331)))))

(assert (=> b!2718096 (= lt!962065 (lexRec!655 thiss!11556 rules!1182 treated!9))))

(declare-fun res!1141619 () Bool)

(assert (=> start!263748 (=> (not res!1141619) (not e!1713165))))

(get-info :version)

(assert (=> start!263748 (= res!1141619 ((_ is Lexer!4393) thiss!11556))))

(assert (=> start!263748 e!1713165))

(declare-fun inv!42583 (BalanceConc!19264) Bool)

(assert (=> start!263748 (and (inv!42583 treated!9) e!1713164)))

(assert (=> start!263748 (and (inv!42583 input!603) e!1713173)))

(assert (=> start!263748 true))

(assert (=> start!263748 e!1713163))

(assert (=> start!263748 (and (inv!42583 totalInput!328) e!1713172)))

(declare-fun inv!42584 (BalanceConc!19266) Bool)

(assert (=> start!263748 (and (inv!42584 acc!331) e!1713171)))

(declare-fun b!2718097 () Bool)

(declare-fun res!1141616 () Bool)

(assert (=> b!2718097 (=> (not res!1141616) (not e!1713169))))

(declare-fun isEmpty!17888 (List!31461) Bool)

(assert (=> b!2718097 (= res!1141616 (isEmpty!17888 (list!11881 (_2!18155 lt!962065))))))

(assert (= (and start!263748 res!1141619) b!2718088))

(assert (= (and b!2718088 res!1141621) b!2718094))

(assert (= (and b!2718094 res!1141620) b!2718093))

(assert (= (and b!2718093 res!1141617) b!2718096))

(assert (= (and b!2718096 res!1141622) b!2718097))

(assert (= (and b!2718097 res!1141616) b!2718086))

(assert (= (and b!2718086 res!1141618) b!2718089))

(assert (= (and b!2718089 res!1141615) b!2718090))

(assert (= start!263748 b!2718091))

(assert (= start!263748 b!2718087))

(assert (= b!2718092 b!2718084))

(assert (= b!2718083 b!2718092))

(assert (= (and start!263748 ((_ is Cons!31364) rules!1182)) b!2718083))

(assert (= start!263748 b!2718085))

(assert (= start!263748 b!2718095))

(declare-fun m!3117387 () Bool)

(assert (=> b!2718094 m!3117387))

(declare-fun m!3117389 () Bool)

(assert (=> b!2718089 m!3117389))

(declare-fun m!3117391 () Bool)

(assert (=> b!2718089 m!3117391))

(declare-fun m!3117393 () Bool)

(assert (=> b!2718086 m!3117393))

(declare-fun m!3117395 () Bool)

(assert (=> b!2718086 m!3117395))

(declare-fun m!3117397 () Bool)

(assert (=> b!2718086 m!3117397))

(declare-fun m!3117399 () Bool)

(assert (=> b!2718086 m!3117399))

(assert (=> b!2718086 m!3117395))

(declare-fun m!3117401 () Bool)

(assert (=> b!2718086 m!3117401))

(declare-fun m!3117403 () Bool)

(assert (=> b!2718097 m!3117403))

(assert (=> b!2718097 m!3117403))

(declare-fun m!3117405 () Bool)

(assert (=> b!2718097 m!3117405))

(declare-fun m!3117407 () Bool)

(assert (=> b!2718088 m!3117407))

(declare-fun m!3117409 () Bool)

(assert (=> start!263748 m!3117409))

(declare-fun m!3117411 () Bool)

(assert (=> start!263748 m!3117411))

(declare-fun m!3117413 () Bool)

(assert (=> start!263748 m!3117413))

(declare-fun m!3117415 () Bool)

(assert (=> start!263748 m!3117415))

(declare-fun m!3117417 () Bool)

(assert (=> b!2718085 m!3117417))

(declare-fun m!3117419 () Bool)

(assert (=> b!2718090 m!3117419))

(declare-fun m!3117421 () Bool)

(assert (=> b!2718091 m!3117421))

(declare-fun m!3117423 () Bool)

(assert (=> b!2718093 m!3117423))

(declare-fun m!3117425 () Bool)

(assert (=> b!2718093 m!3117425))

(declare-fun m!3117427 () Bool)

(assert (=> b!2718093 m!3117427))

(assert (=> b!2718093 m!3117425))

(assert (=> b!2718093 m!3117427))

(declare-fun m!3117429 () Bool)

(assert (=> b!2718093 m!3117429))

(declare-fun m!3117431 () Bool)

(assert (=> b!2718092 m!3117431))

(declare-fun m!3117433 () Bool)

(assert (=> b!2718092 m!3117433))

(declare-fun m!3117435 () Bool)

(assert (=> b!2718087 m!3117435))

(declare-fun m!3117437 () Bool)

(assert (=> b!2718095 m!3117437))

(declare-fun m!3117439 () Bool)

(assert (=> b!2718096 m!3117439))

(declare-fun m!3117441 () Bool)

(assert (=> b!2718096 m!3117441))

(declare-fun m!3117443 () Bool)

(assert (=> b!2718096 m!3117443))

(check-sat (not b!2718086) (not b_next!77297) b_and!200347 (not b!2718085) b_and!200345 (not b_next!77299) (not b!2718093) (not b!2718091) (not b!2718094) (not b!2718097) (not b!2718087) (not b!2718090) (not start!263748) (not b!2718088) (not b!2718089) (not b!2718095) (not b!2718092) (not b!2718096) (not b!2718083))
(check-sat b_and!200347 b_and!200345 (not b_next!77299) (not b_next!77297))
(get-model)

(declare-fun d!782988 () Bool)

(declare-fun c!439220 () Bool)

(assert (=> d!782988 (= c!439220 ((_ is Node!9825) (c!439215 treated!9)))))

(declare-fun e!1713178 () Bool)

(assert (=> d!782988 (= (inv!42580 (c!439215 treated!9)) e!1713178)))

(declare-fun b!2718104 () Bool)

(declare-fun inv!42589 (Conc!9825) Bool)

(assert (=> b!2718104 (= e!1713178 (inv!42589 (c!439215 treated!9)))))

(declare-fun b!2718105 () Bool)

(declare-fun e!1713179 () Bool)

(assert (=> b!2718105 (= e!1713178 e!1713179)))

(declare-fun res!1141625 () Bool)

(assert (=> b!2718105 (= res!1141625 (not ((_ is Leaf!14969) (c!439215 treated!9))))))

(assert (=> b!2718105 (=> res!1141625 e!1713179)))

(declare-fun b!2718106 () Bool)

(declare-fun inv!42590 (Conc!9825) Bool)

(assert (=> b!2718106 (= e!1713179 (inv!42590 (c!439215 treated!9)))))

(assert (= (and d!782988 c!439220) b!2718104))

(assert (= (and d!782988 (not c!439220)) b!2718105))

(assert (= (and b!2718105 (not res!1141625)) b!2718106))

(declare-fun m!3117445 () Bool)

(assert (=> b!2718104 m!3117445))

(declare-fun m!3117447 () Bool)

(assert (=> b!2718106 m!3117447))

(assert (=> b!2718091 d!782988))

(declare-fun d!782992 () Bool)

(declare-fun isBalanced!2975 (Conc!9825) Bool)

(assert (=> d!782992 (= (inv!42583 treated!9) (isBalanced!2975 (c!439215 treated!9)))))

(declare-fun bs!488250 () Bool)

(assert (= bs!488250 d!782992))

(declare-fun m!3117453 () Bool)

(assert (=> bs!488250 m!3117453))

(assert (=> start!263748 d!782992))

(declare-fun d!782996 () Bool)

(assert (=> d!782996 (= (inv!42583 input!603) (isBalanced!2975 (c!439215 input!603)))))

(declare-fun bs!488251 () Bool)

(assert (= bs!488251 d!782996))

(declare-fun m!3117455 () Bool)

(assert (=> bs!488251 m!3117455))

(assert (=> start!263748 d!782996))

(declare-fun d!782998 () Bool)

(assert (=> d!782998 (= (inv!42583 totalInput!328) (isBalanced!2975 (c!439215 totalInput!328)))))

(declare-fun bs!488252 () Bool)

(assert (= bs!488252 d!782998))

(declare-fun m!3117457 () Bool)

(assert (=> bs!488252 m!3117457))

(assert (=> start!263748 d!782998))

(declare-fun d!783000 () Bool)

(declare-fun isBalanced!2976 (Conc!9826) Bool)

(assert (=> d!783000 (= (inv!42584 acc!331) (isBalanced!2976 (c!439217 acc!331)))))

(declare-fun bs!488259 () Bool)

(assert (= bs!488259 d!783000))

(declare-fun m!3117471 () Bool)

(assert (=> bs!488259 m!3117471))

(assert (=> start!263748 d!783000))

(declare-fun d!783014 () Bool)

(declare-fun lt!962069 () Int)

(declare-fun size!24192 (List!31461) Int)

(assert (=> d!783014 (= lt!962069 (size!24192 (list!11881 input!603)))))

(declare-fun size!24193 (Conc!9825) Int)

(assert (=> d!783014 (= lt!962069 (size!24193 (c!439215 input!603)))))

(assert (=> d!783014 (= (size!24188 input!603) lt!962069)))

(declare-fun bs!488260 () Bool)

(assert (= bs!488260 d!783014))

(assert (=> bs!488260 m!3117427))

(assert (=> bs!488260 m!3117427))

(declare-fun m!3117473 () Bool)

(assert (=> bs!488260 m!3117473))

(declare-fun m!3117475 () Bool)

(assert (=> bs!488260 m!3117475))

(assert (=> b!2718090 d!783014))

(declare-fun d!783016 () Bool)

(declare-fun list!11884 (Conc!9825) List!31461)

(assert (=> d!783016 (= (list!11881 (_2!18155 lt!962064)) (list!11884 (c!439215 (_2!18155 lt!962064))))))

(declare-fun bs!488261 () Bool)

(assert (= bs!488261 d!783016))

(declare-fun m!3117477 () Bool)

(assert (=> bs!488261 m!3117477))

(assert (=> b!2718089 d!783016))

(declare-fun d!783018 () Bool)

(assert (=> d!783018 (= (list!11881 (_2!18155 lt!962066)) (list!11884 (c!439215 (_2!18155 lt!962066))))))

(declare-fun bs!488262 () Bool)

(assert (= bs!488262 d!783018))

(declare-fun m!3117479 () Bool)

(assert (=> bs!488262 m!3117479))

(assert (=> b!2718089 d!783018))

(declare-fun d!783020 () Bool)

(assert (=> d!783020 (= (isEmpty!17887 rules!1182) ((_ is Nil!31364) rules!1182))))

(assert (=> b!2718088 d!783020))

(declare-fun d!783022 () Bool)

(declare-fun c!439224 () Bool)

(assert (=> d!783022 (= c!439224 ((_ is Node!9825) (c!439215 input!603)))))

(declare-fun e!1713186 () Bool)

(assert (=> d!783022 (= (inv!42580 (c!439215 input!603)) e!1713186)))

(declare-fun b!2718116 () Bool)

(assert (=> b!2718116 (= e!1713186 (inv!42589 (c!439215 input!603)))))

(declare-fun b!2718117 () Bool)

(declare-fun e!1713187 () Bool)

(assert (=> b!2718117 (= e!1713186 e!1713187)))

(declare-fun res!1141629 () Bool)

(assert (=> b!2718117 (= res!1141629 (not ((_ is Leaf!14969) (c!439215 input!603))))))

(assert (=> b!2718117 (=> res!1141629 e!1713187)))

(declare-fun b!2718118 () Bool)

(assert (=> b!2718118 (= e!1713187 (inv!42590 (c!439215 input!603)))))

(assert (= (and d!783022 c!439224) b!2718116))

(assert (= (and d!783022 (not c!439224)) b!2718117))

(assert (= (and b!2718117 (not res!1141629)) b!2718118))

(declare-fun m!3117481 () Bool)

(assert (=> b!2718116 m!3117481))

(declare-fun m!3117483 () Bool)

(assert (=> b!2718118 m!3117483))

(assert (=> b!2718087 d!783022))

(declare-fun d!783024 () Bool)

(assert (=> d!783024 (= (isEmpty!17888 (list!11881 (_2!18155 lt!962065))) ((_ is Nil!31361) (list!11881 (_2!18155 lt!962065))))))

(assert (=> b!2718097 d!783024))

(declare-fun d!783026 () Bool)

(assert (=> d!783026 (= (list!11881 (_2!18155 lt!962065)) (list!11884 (c!439215 (_2!18155 lt!962065))))))

(declare-fun bs!488263 () Bool)

(assert (= bs!488263 d!783026))

(declare-fun m!3117485 () Bool)

(assert (=> bs!488263 m!3117485))

(assert (=> b!2718097 d!783026))

(declare-fun b!2718129 () Bool)

(declare-fun res!1141641 () Bool)

(declare-fun e!1713190 () Bool)

(assert (=> b!2718129 (=> (not res!1141641) (not e!1713190))))

(declare-fun height!1454 (Conc!9826) Int)

(declare-fun ++!7806 (Conc!9826 Conc!9826) Conc!9826)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2718129 (= res!1141641 (>= (height!1454 (++!7806 (c!439217 acc!331) (c!439217 (_1!18155 lt!962066)))) (max!0 (height!1454 (c!439217 acc!331)) (height!1454 (c!439217 (_1!18155 lt!962066))))))))

(declare-fun lt!962072 () BalanceConc!19266)

(declare-fun b!2718130 () Bool)

(declare-fun ++!7807 (List!31463 List!31463) List!31463)

(assert (=> b!2718130 (= e!1713190 (= (list!11880 lt!962072) (++!7807 (list!11880 acc!331) (list!11880 (_1!18155 lt!962066)))))))

(declare-fun b!2718127 () Bool)

(declare-fun res!1141639 () Bool)

(assert (=> b!2718127 (=> (not res!1141639) (not e!1713190))))

(assert (=> b!2718127 (= res!1141639 (isBalanced!2976 (++!7806 (c!439217 acc!331) (c!439217 (_1!18155 lt!962066)))))))

(declare-fun b!2718128 () Bool)

(declare-fun res!1141640 () Bool)

(assert (=> b!2718128 (=> (not res!1141640) (not e!1713190))))

(assert (=> b!2718128 (= res!1141640 (<= (height!1454 (++!7806 (c!439217 acc!331) (c!439217 (_1!18155 lt!962066)))) (+ (max!0 (height!1454 (c!439217 acc!331)) (height!1454 (c!439217 (_1!18155 lt!962066)))) 1)))))

(declare-fun d!783028 () Bool)

(assert (=> d!783028 e!1713190))

(declare-fun res!1141638 () Bool)

(assert (=> d!783028 (=> (not res!1141638) (not e!1713190))))

(declare-fun appendAssocInst!691 (Conc!9826 Conc!9826) Bool)

(assert (=> d!783028 (= res!1141638 (appendAssocInst!691 (c!439217 acc!331) (c!439217 (_1!18155 lt!962066))))))

(assert (=> d!783028 (= lt!962072 (BalanceConc!19267 (++!7806 (c!439217 acc!331) (c!439217 (_1!18155 lt!962066)))))))

(assert (=> d!783028 (= (++!7802 acc!331 (_1!18155 lt!962066)) lt!962072)))

(assert (= (and d!783028 res!1141638) b!2718127))

(assert (= (and b!2718127 res!1141639) b!2718128))

(assert (= (and b!2718128 res!1141640) b!2718129))

(assert (= (and b!2718129 res!1141641) b!2718130))

(declare-fun m!3117487 () Bool)

(assert (=> b!2718129 m!3117487))

(declare-fun m!3117489 () Bool)

(assert (=> b!2718129 m!3117489))

(declare-fun m!3117491 () Bool)

(assert (=> b!2718129 m!3117491))

(assert (=> b!2718129 m!3117487))

(assert (=> b!2718129 m!3117491))

(declare-fun m!3117493 () Bool)

(assert (=> b!2718129 m!3117493))

(assert (=> b!2718129 m!3117489))

(declare-fun m!3117495 () Bool)

(assert (=> b!2718129 m!3117495))

(declare-fun m!3117497 () Bool)

(assert (=> d!783028 m!3117497))

(assert (=> d!783028 m!3117489))

(assert (=> b!2718127 m!3117489))

(assert (=> b!2718127 m!3117489))

(declare-fun m!3117499 () Bool)

(assert (=> b!2718127 m!3117499))

(declare-fun m!3117501 () Bool)

(assert (=> b!2718130 m!3117501))

(assert (=> b!2718130 m!3117441))

(declare-fun m!3117503 () Bool)

(assert (=> b!2718130 m!3117503))

(assert (=> b!2718130 m!3117441))

(assert (=> b!2718130 m!3117503))

(declare-fun m!3117505 () Bool)

(assert (=> b!2718130 m!3117505))

(assert (=> b!2718128 m!3117487))

(assert (=> b!2718128 m!3117489))

(assert (=> b!2718128 m!3117491))

(assert (=> b!2718128 m!3117487))

(assert (=> b!2718128 m!3117491))

(assert (=> b!2718128 m!3117493))

(assert (=> b!2718128 m!3117489))

(assert (=> b!2718128 m!3117495))

(assert (=> b!2718086 d!783028))

(declare-fun d!783030 () Bool)

(declare-fun list!11885 (Conc!9826) List!31463)

(assert (=> d!783030 (= (list!11880 (_1!18155 lt!962064)) (list!11885 (c!439217 (_1!18155 lt!962064))))))

(declare-fun bs!488264 () Bool)

(assert (= bs!488264 d!783030))

(declare-fun m!3117507 () Bool)

(assert (=> bs!488264 m!3117507))

(assert (=> b!2718086 d!783030))

(declare-fun b!2718278 () Bool)

(declare-fun e!1713277 () Bool)

(declare-fun lt!962104 () tuple2!31046)

(assert (=> b!2718278 (= e!1713277 (= (list!11881 (_2!18155 lt!962104)) (list!11881 input!603)))))

(declare-fun b!2718279 () Bool)

(declare-fun e!1713276 () Bool)

(assert (=> b!2718279 (= e!1713277 e!1713276)))

(declare-fun res!1141694 () Bool)

(assert (=> b!2718279 (= res!1141694 (< (size!24188 (_2!18155 lt!962104)) (size!24188 input!603)))))

(assert (=> b!2718279 (=> (not res!1141694) (not e!1713276))))

(declare-fun b!2718280 () Bool)

(declare-fun e!1713278 () Bool)

(declare-datatypes ((tuple2!31052 0))(
  ( (tuple2!31053 (_1!18158 List!31463) (_2!18158 List!31461)) )
))
(declare-fun lexList!1226 (LexerInterface!4395 List!31464 List!31461) tuple2!31052)

(assert (=> b!2718280 (= e!1713278 (= (list!11881 (_2!18155 lt!962104)) (_2!18158 (lexList!1226 thiss!11556 rules!1182 (list!11881 input!603)))))))

(declare-fun b!2718281 () Bool)

(declare-fun e!1713275 () tuple2!31046)

(assert (=> b!2718281 (= e!1713275 (tuple2!31047 (BalanceConc!19267 Empty!9826) input!603))))

(declare-fun b!2718283 () Bool)

(declare-fun lt!962103 () tuple2!31046)

(declare-datatypes ((tuple2!31054 0))(
  ( (tuple2!31055 (_1!18159 Token!9060) (_2!18159 BalanceConc!19264)) )
))
(declare-datatypes ((Option!6193 0))(
  ( (None!6192) (Some!6192 (v!33032 tuple2!31054)) )
))
(declare-fun lt!962105 () Option!6193)

(declare-fun prepend!1127 (BalanceConc!19266 Token!9060) BalanceConc!19266)

(assert (=> b!2718283 (= e!1713275 (tuple2!31047 (prepend!1127 (_1!18155 lt!962103) (_1!18159 (v!33032 lt!962105))) (_2!18155 lt!962103)))))

(assert (=> b!2718283 (= lt!962103 (lexRec!655 thiss!11556 rules!1182 (_2!18159 (v!33032 lt!962105))))))

(declare-fun b!2718284 () Bool)

(declare-fun isEmpty!17890 (BalanceConc!19266) Bool)

(assert (=> b!2718284 (= e!1713276 (not (isEmpty!17890 (_1!18155 lt!962104))))))

(declare-fun b!2718282 () Bool)

(declare-fun res!1141693 () Bool)

(assert (=> b!2718282 (=> (not res!1141693) (not e!1713278))))

(assert (=> b!2718282 (= res!1141693 (= (list!11880 (_1!18155 lt!962104)) (_1!18158 (lexList!1226 thiss!11556 rules!1182 (list!11881 input!603)))))))

(declare-fun d!783032 () Bool)

(assert (=> d!783032 e!1713278))

(declare-fun res!1141692 () Bool)

(assert (=> d!783032 (=> (not res!1141692) (not e!1713278))))

(assert (=> d!783032 (= res!1141692 e!1713277)))

(declare-fun c!439255 () Bool)

(declare-fun size!24194 (BalanceConc!19266) Int)

(assert (=> d!783032 (= c!439255 (> (size!24194 (_1!18155 lt!962104)) 0))))

(assert (=> d!783032 (= lt!962104 e!1713275)))

(declare-fun c!439256 () Bool)

(assert (=> d!783032 (= c!439256 ((_ is Some!6192) lt!962105))))

(declare-fun maxPrefixZipperSequence!1043 (LexerInterface!4395 List!31464 BalanceConc!19264) Option!6193)

(assert (=> d!783032 (= lt!962105 (maxPrefixZipperSequence!1043 thiss!11556 rules!1182 input!603))))

(assert (=> d!783032 (= (lexRec!655 thiss!11556 rules!1182 input!603) lt!962104)))

(assert (= (and d!783032 c!439256) b!2718283))

(assert (= (and d!783032 (not c!439256)) b!2718281))

(assert (= (and d!783032 c!439255) b!2718279))

(assert (= (and d!783032 (not c!439255)) b!2718278))

(assert (= (and b!2718279 res!1141694) b!2718284))

(assert (= (and d!783032 res!1141692) b!2718282))

(assert (= (and b!2718282 res!1141693) b!2718280))

(declare-fun m!3117667 () Bool)

(assert (=> d!783032 m!3117667))

(declare-fun m!3117669 () Bool)

(assert (=> d!783032 m!3117669))

(declare-fun m!3117671 () Bool)

(assert (=> b!2718278 m!3117671))

(assert (=> b!2718278 m!3117427))

(assert (=> b!2718280 m!3117671))

(assert (=> b!2718280 m!3117427))

(assert (=> b!2718280 m!3117427))

(declare-fun m!3117673 () Bool)

(assert (=> b!2718280 m!3117673))

(declare-fun m!3117675 () Bool)

(assert (=> b!2718279 m!3117675))

(assert (=> b!2718279 m!3117419))

(declare-fun m!3117677 () Bool)

(assert (=> b!2718282 m!3117677))

(assert (=> b!2718282 m!3117427))

(assert (=> b!2718282 m!3117427))

(assert (=> b!2718282 m!3117673))

(declare-fun m!3117679 () Bool)

(assert (=> b!2718283 m!3117679))

(declare-fun m!3117681 () Bool)

(assert (=> b!2718283 m!3117681))

(declare-fun m!3117683 () Bool)

(assert (=> b!2718284 m!3117683))

(assert (=> b!2718086 d!783032))

(declare-fun d!783076 () Bool)

(assert (=> d!783076 (= (list!11880 (++!7802 acc!331 (_1!18155 lt!962066))) (list!11885 (c!439217 (++!7802 acc!331 (_1!18155 lt!962066)))))))

(declare-fun bs!488274 () Bool)

(assert (= bs!488274 d!783076))

(declare-fun m!3117685 () Bool)

(assert (=> bs!488274 m!3117685))

(assert (=> b!2718086 d!783076))

(declare-fun b!2718285 () Bool)

(declare-fun e!1713281 () Bool)

(declare-fun lt!962107 () tuple2!31046)

(assert (=> b!2718285 (= e!1713281 (= (list!11881 (_2!18155 lt!962107)) (list!11881 totalInput!328)))))

(declare-fun b!2718286 () Bool)

(declare-fun e!1713280 () Bool)

(assert (=> b!2718286 (= e!1713281 e!1713280)))

(declare-fun res!1141697 () Bool)

(assert (=> b!2718286 (= res!1141697 (< (size!24188 (_2!18155 lt!962107)) (size!24188 totalInput!328)))))

(assert (=> b!2718286 (=> (not res!1141697) (not e!1713280))))

(declare-fun b!2718287 () Bool)

(declare-fun e!1713282 () Bool)

(assert (=> b!2718287 (= e!1713282 (= (list!11881 (_2!18155 lt!962107)) (_2!18158 (lexList!1226 thiss!11556 rules!1182 (list!11881 totalInput!328)))))))

(declare-fun b!2718288 () Bool)

(declare-fun e!1713279 () tuple2!31046)

(assert (=> b!2718288 (= e!1713279 (tuple2!31047 (BalanceConc!19267 Empty!9826) totalInput!328))))

(declare-fun b!2718290 () Bool)

(declare-fun lt!962106 () tuple2!31046)

(declare-fun lt!962108 () Option!6193)

(assert (=> b!2718290 (= e!1713279 (tuple2!31047 (prepend!1127 (_1!18155 lt!962106) (_1!18159 (v!33032 lt!962108))) (_2!18155 lt!962106)))))

(assert (=> b!2718290 (= lt!962106 (lexRec!655 thiss!11556 rules!1182 (_2!18159 (v!33032 lt!962108))))))

(declare-fun b!2718291 () Bool)

(assert (=> b!2718291 (= e!1713280 (not (isEmpty!17890 (_1!18155 lt!962107))))))

(declare-fun b!2718289 () Bool)

(declare-fun res!1141696 () Bool)

(assert (=> b!2718289 (=> (not res!1141696) (not e!1713282))))

(assert (=> b!2718289 (= res!1141696 (= (list!11880 (_1!18155 lt!962107)) (_1!18158 (lexList!1226 thiss!11556 rules!1182 (list!11881 totalInput!328)))))))

(declare-fun d!783078 () Bool)

(assert (=> d!783078 e!1713282))

(declare-fun res!1141695 () Bool)

(assert (=> d!783078 (=> (not res!1141695) (not e!1713282))))

(assert (=> d!783078 (= res!1141695 e!1713281)))

(declare-fun c!439257 () Bool)

(assert (=> d!783078 (= c!439257 (> (size!24194 (_1!18155 lt!962107)) 0))))

(assert (=> d!783078 (= lt!962107 e!1713279)))

(declare-fun c!439258 () Bool)

(assert (=> d!783078 (= c!439258 ((_ is Some!6192) lt!962108))))

(assert (=> d!783078 (= lt!962108 (maxPrefixZipperSequence!1043 thiss!11556 rules!1182 totalInput!328))))

(assert (=> d!783078 (= (lexRec!655 thiss!11556 rules!1182 totalInput!328) lt!962107)))

(assert (= (and d!783078 c!439258) b!2718290))

(assert (= (and d!783078 (not c!439258)) b!2718288))

(assert (= (and d!783078 c!439257) b!2718286))

(assert (= (and d!783078 (not c!439257)) b!2718285))

(assert (= (and b!2718286 res!1141697) b!2718291))

(assert (= (and d!783078 res!1141695) b!2718289))

(assert (= (and b!2718289 res!1141696) b!2718287))

(declare-fun m!3117687 () Bool)

(assert (=> d!783078 m!3117687))

(declare-fun m!3117689 () Bool)

(assert (=> d!783078 m!3117689))

(declare-fun m!3117691 () Bool)

(assert (=> b!2718285 m!3117691))

(assert (=> b!2718285 m!3117423))

(assert (=> b!2718287 m!3117691))

(assert (=> b!2718287 m!3117423))

(assert (=> b!2718287 m!3117423))

(declare-fun m!3117693 () Bool)

(assert (=> b!2718287 m!3117693))

(declare-fun m!3117695 () Bool)

(assert (=> b!2718286 m!3117695))

(declare-fun m!3117697 () Bool)

(assert (=> b!2718286 m!3117697))

(declare-fun m!3117699 () Bool)

(assert (=> b!2718289 m!3117699))

(assert (=> b!2718289 m!3117423))

(assert (=> b!2718289 m!3117423))

(assert (=> b!2718289 m!3117693))

(declare-fun m!3117701 () Bool)

(assert (=> b!2718290 m!3117701))

(declare-fun m!3117703 () Bool)

(assert (=> b!2718290 m!3117703))

(declare-fun m!3117705 () Bool)

(assert (=> b!2718291 m!3117705))

(assert (=> b!2718086 d!783078))

(declare-fun d!783080 () Bool)

(assert (=> d!783080 (= (list!11880 (_1!18155 lt!962065)) (list!11885 (c!439217 (_1!18155 lt!962065))))))

(declare-fun bs!488275 () Bool)

(assert (= bs!488275 d!783080))

(declare-fun m!3117707 () Bool)

(assert (=> bs!488275 m!3117707))

(assert (=> b!2718096 d!783080))

(declare-fun d!783082 () Bool)

(assert (=> d!783082 (= (list!11880 acc!331) (list!11885 (c!439217 acc!331)))))

(declare-fun bs!488276 () Bool)

(assert (= bs!488276 d!783082))

(declare-fun m!3117709 () Bool)

(assert (=> bs!488276 m!3117709))

(assert (=> b!2718096 d!783082))

(declare-fun b!2718292 () Bool)

(declare-fun e!1713285 () Bool)

(declare-fun lt!962110 () tuple2!31046)

(assert (=> b!2718292 (= e!1713285 (= (list!11881 (_2!18155 lt!962110)) (list!11881 treated!9)))))

(declare-fun b!2718293 () Bool)

(declare-fun e!1713284 () Bool)

(assert (=> b!2718293 (= e!1713285 e!1713284)))

(declare-fun res!1141700 () Bool)

(assert (=> b!2718293 (= res!1141700 (< (size!24188 (_2!18155 lt!962110)) (size!24188 treated!9)))))

(assert (=> b!2718293 (=> (not res!1141700) (not e!1713284))))

(declare-fun e!1713286 () Bool)

(declare-fun b!2718294 () Bool)

(assert (=> b!2718294 (= e!1713286 (= (list!11881 (_2!18155 lt!962110)) (_2!18158 (lexList!1226 thiss!11556 rules!1182 (list!11881 treated!9)))))))

(declare-fun b!2718295 () Bool)

(declare-fun e!1713283 () tuple2!31046)

(assert (=> b!2718295 (= e!1713283 (tuple2!31047 (BalanceConc!19267 Empty!9826) treated!9))))

(declare-fun b!2718297 () Bool)

(declare-fun lt!962109 () tuple2!31046)

(declare-fun lt!962111 () Option!6193)

(assert (=> b!2718297 (= e!1713283 (tuple2!31047 (prepend!1127 (_1!18155 lt!962109) (_1!18159 (v!33032 lt!962111))) (_2!18155 lt!962109)))))

(assert (=> b!2718297 (= lt!962109 (lexRec!655 thiss!11556 rules!1182 (_2!18159 (v!33032 lt!962111))))))

(declare-fun b!2718298 () Bool)

(assert (=> b!2718298 (= e!1713284 (not (isEmpty!17890 (_1!18155 lt!962110))))))

(declare-fun b!2718296 () Bool)

(declare-fun res!1141699 () Bool)

(assert (=> b!2718296 (=> (not res!1141699) (not e!1713286))))

(assert (=> b!2718296 (= res!1141699 (= (list!11880 (_1!18155 lt!962110)) (_1!18158 (lexList!1226 thiss!11556 rules!1182 (list!11881 treated!9)))))))

(declare-fun d!783084 () Bool)

(assert (=> d!783084 e!1713286))

(declare-fun res!1141698 () Bool)

(assert (=> d!783084 (=> (not res!1141698) (not e!1713286))))

(assert (=> d!783084 (= res!1141698 e!1713285)))

(declare-fun c!439259 () Bool)

(assert (=> d!783084 (= c!439259 (> (size!24194 (_1!18155 lt!962110)) 0))))

(assert (=> d!783084 (= lt!962110 e!1713283)))

(declare-fun c!439260 () Bool)

(assert (=> d!783084 (= c!439260 ((_ is Some!6192) lt!962111))))

(assert (=> d!783084 (= lt!962111 (maxPrefixZipperSequence!1043 thiss!11556 rules!1182 treated!9))))

(assert (=> d!783084 (= (lexRec!655 thiss!11556 rules!1182 treated!9) lt!962110)))

(assert (= (and d!783084 c!439260) b!2718297))

(assert (= (and d!783084 (not c!439260)) b!2718295))

(assert (= (and d!783084 c!439259) b!2718293))

(assert (= (and d!783084 (not c!439259)) b!2718292))

(assert (= (and b!2718293 res!1141700) b!2718298))

(assert (= (and d!783084 res!1141698) b!2718296))

(assert (= (and b!2718296 res!1141699) b!2718294))

(declare-fun m!3117711 () Bool)

(assert (=> d!783084 m!3117711))

(declare-fun m!3117713 () Bool)

(assert (=> d!783084 m!3117713))

(declare-fun m!3117715 () Bool)

(assert (=> b!2718292 m!3117715))

(assert (=> b!2718292 m!3117425))

(assert (=> b!2718294 m!3117715))

(assert (=> b!2718294 m!3117425))

(assert (=> b!2718294 m!3117425))

(declare-fun m!3117717 () Bool)

(assert (=> b!2718294 m!3117717))

(declare-fun m!3117719 () Bool)

(assert (=> b!2718293 m!3117719))

(declare-fun m!3117721 () Bool)

(assert (=> b!2718293 m!3117721))

(declare-fun m!3117723 () Bool)

(assert (=> b!2718296 m!3117723))

(assert (=> b!2718296 m!3117425))

(assert (=> b!2718296 m!3117425))

(assert (=> b!2718296 m!3117717))

(declare-fun m!3117725 () Bool)

(assert (=> b!2718297 m!3117725))

(declare-fun m!3117727 () Bool)

(assert (=> b!2718297 m!3117727))

(declare-fun m!3117729 () Bool)

(assert (=> b!2718298 m!3117729))

(assert (=> b!2718096 d!783084))

(declare-fun d!783086 () Bool)

(declare-fun c!439261 () Bool)

(assert (=> d!783086 (= c!439261 ((_ is Node!9825) (c!439215 totalInput!328)))))

(declare-fun e!1713287 () Bool)

(assert (=> d!783086 (= (inv!42580 (c!439215 totalInput!328)) e!1713287)))

(declare-fun b!2718299 () Bool)

(assert (=> b!2718299 (= e!1713287 (inv!42589 (c!439215 totalInput!328)))))

(declare-fun b!2718300 () Bool)

(declare-fun e!1713288 () Bool)

(assert (=> b!2718300 (= e!1713287 e!1713288)))

(declare-fun res!1141701 () Bool)

(assert (=> b!2718300 (= res!1141701 (not ((_ is Leaf!14969) (c!439215 totalInput!328))))))

(assert (=> b!2718300 (=> res!1141701 e!1713288)))

(declare-fun b!2718301 () Bool)

(assert (=> b!2718301 (= e!1713288 (inv!42590 (c!439215 totalInput!328)))))

(assert (= (and d!783086 c!439261) b!2718299))

(assert (= (and d!783086 (not c!439261)) b!2718300))

(assert (= (and b!2718300 (not res!1141701)) b!2718301))

(declare-fun m!3117731 () Bool)

(assert (=> b!2718299 m!3117731))

(declare-fun m!3117733 () Bool)

(assert (=> b!2718301 m!3117733))

(assert (=> b!2718085 d!783086))

(declare-fun d!783088 () Bool)

(declare-fun c!439264 () Bool)

(assert (=> d!783088 (= c!439264 ((_ is Node!9826) (c!439217 acc!331)))))

(declare-fun e!1713293 () Bool)

(assert (=> d!783088 (= (inv!42582 (c!439217 acc!331)) e!1713293)))

(declare-fun b!2718308 () Bool)

(declare-fun inv!42593 (Conc!9826) Bool)

(assert (=> b!2718308 (= e!1713293 (inv!42593 (c!439217 acc!331)))))

(declare-fun b!2718309 () Bool)

(declare-fun e!1713294 () Bool)

(assert (=> b!2718309 (= e!1713293 e!1713294)))

(declare-fun res!1141704 () Bool)

(assert (=> b!2718309 (= res!1141704 (not ((_ is Leaf!14970) (c!439217 acc!331))))))

(assert (=> b!2718309 (=> res!1141704 e!1713294)))

(declare-fun b!2718310 () Bool)

(declare-fun inv!42594 (Conc!9826) Bool)

(assert (=> b!2718310 (= e!1713294 (inv!42594 (c!439217 acc!331)))))

(assert (= (and d!783088 c!439264) b!2718308))

(assert (= (and d!783088 (not c!439264)) b!2718309))

(assert (= (and b!2718309 (not res!1141704)) b!2718310))

(declare-fun m!3117735 () Bool)

(assert (=> b!2718308 m!3117735))

(declare-fun m!3117737 () Bool)

(assert (=> b!2718310 m!3117737))

(assert (=> b!2718095 d!783088))

(declare-fun d!783090 () Bool)

(declare-fun res!1141707 () Bool)

(declare-fun e!1713297 () Bool)

(assert (=> d!783090 (=> (not res!1141707) (not e!1713297))))

(declare-fun rulesValid!1784 (LexerInterface!4395 List!31464) Bool)

(assert (=> d!783090 (= res!1141707 (rulesValid!1784 thiss!11556 rules!1182))))

(assert (=> d!783090 (= (rulesInvariant!3880 thiss!11556 rules!1182) e!1713297)))

(declare-fun b!2718313 () Bool)

(declare-datatypes ((List!31466 0))(
  ( (Nil!31366) (Cons!31366 (h!36786 String!35005) (t!226318 List!31466)) )
))
(declare-fun noDuplicateTag!1780 (LexerInterface!4395 List!31464 List!31466) Bool)

(assert (=> b!2718313 (= e!1713297 (noDuplicateTag!1780 thiss!11556 rules!1182 Nil!31366))))

(assert (= (and d!783090 res!1141707) b!2718313))

(declare-fun m!3117739 () Bool)

(assert (=> d!783090 m!3117739))

(declare-fun m!3117741 () Bool)

(assert (=> b!2718313 m!3117741))

(assert (=> b!2718094 d!783090))

(declare-fun d!783092 () Bool)

(assert (=> d!783092 (= (list!11881 totalInput!328) (list!11884 (c!439215 totalInput!328)))))

(declare-fun bs!488277 () Bool)

(assert (= bs!488277 d!783092))

(declare-fun m!3117743 () Bool)

(assert (=> bs!488277 m!3117743))

(assert (=> b!2718093 d!783092))

(declare-fun b!2718325 () Bool)

(declare-fun e!1713303 () Bool)

(declare-fun lt!962114 () List!31461)

(assert (=> b!2718325 (= e!1713303 (or (not (= (list!11881 input!603) Nil!31361)) (= lt!962114 (list!11881 treated!9))))))

(declare-fun b!2718324 () Bool)

(declare-fun res!1141713 () Bool)

(assert (=> b!2718324 (=> (not res!1141713) (not e!1713303))))

(assert (=> b!2718324 (= res!1141713 (= (size!24192 lt!962114) (+ (size!24192 (list!11881 treated!9)) (size!24192 (list!11881 input!603)))))))

(declare-fun d!783094 () Bool)

(assert (=> d!783094 e!1713303))

(declare-fun res!1141712 () Bool)

(assert (=> d!783094 (=> (not res!1141712) (not e!1713303))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4441 (List!31461) (InoxSet C!16060))

(assert (=> d!783094 (= res!1141712 (= (content!4441 lt!962114) ((_ map or) (content!4441 (list!11881 treated!9)) (content!4441 (list!11881 input!603)))))))

(declare-fun e!1713302 () List!31461)

(assert (=> d!783094 (= lt!962114 e!1713302)))

(declare-fun c!439267 () Bool)

(assert (=> d!783094 (= c!439267 ((_ is Nil!31361) (list!11881 treated!9)))))

(assert (=> d!783094 (= (++!7803 (list!11881 treated!9) (list!11881 input!603)) lt!962114)))

(declare-fun b!2718323 () Bool)

(assert (=> b!2718323 (= e!1713302 (Cons!31361 (h!36781 (list!11881 treated!9)) (++!7803 (t!226313 (list!11881 treated!9)) (list!11881 input!603))))))

(declare-fun b!2718322 () Bool)

(assert (=> b!2718322 (= e!1713302 (list!11881 input!603))))

(assert (= (and d!783094 c!439267) b!2718322))

(assert (= (and d!783094 (not c!439267)) b!2718323))

(assert (= (and d!783094 res!1141712) b!2718324))

(assert (= (and b!2718324 res!1141713) b!2718325))

(declare-fun m!3117745 () Bool)

(assert (=> b!2718324 m!3117745))

(assert (=> b!2718324 m!3117425))

(declare-fun m!3117747 () Bool)

(assert (=> b!2718324 m!3117747))

(assert (=> b!2718324 m!3117427))

(assert (=> b!2718324 m!3117473))

(declare-fun m!3117749 () Bool)

(assert (=> d!783094 m!3117749))

(assert (=> d!783094 m!3117425))

(declare-fun m!3117751 () Bool)

(assert (=> d!783094 m!3117751))

(assert (=> d!783094 m!3117427))

(declare-fun m!3117753 () Bool)

(assert (=> d!783094 m!3117753))

(assert (=> b!2718323 m!3117427))

(declare-fun m!3117755 () Bool)

(assert (=> b!2718323 m!3117755))

(assert (=> b!2718093 d!783094))

(declare-fun d!783096 () Bool)

(assert (=> d!783096 (= (list!11881 treated!9) (list!11884 (c!439215 treated!9)))))

(declare-fun bs!488278 () Bool)

(assert (= bs!488278 d!783096))

(declare-fun m!3117757 () Bool)

(assert (=> bs!488278 m!3117757))

(assert (=> b!2718093 d!783096))

(declare-fun d!783098 () Bool)

(assert (=> d!783098 (= (list!11881 input!603) (list!11884 (c!439215 input!603)))))

(declare-fun bs!488279 () Bool)

(assert (= bs!488279 d!783098))

(declare-fun m!3117759 () Bool)

(assert (=> bs!488279 m!3117759))

(assert (=> b!2718093 d!783098))

(declare-fun d!783100 () Bool)

(assert (=> d!783100 (= (inv!42574 (tag!5303 (h!36784 rules!1182))) (= (mod (str.len (value!154383 (tag!5303 (h!36784 rules!1182)))) 2) 0))))

(assert (=> b!2718092 d!783100))

(declare-fun d!783102 () Bool)

(declare-fun res!1141716 () Bool)

(declare-fun e!1713306 () Bool)

(assert (=> d!783102 (=> (not res!1141716) (not e!1713306))))

(declare-fun semiInverseModEq!1977 (Int Int) Bool)

(assert (=> d!783102 (= res!1141716 (semiInverseModEq!1977 (toChars!6632 (transformation!4799 (h!36784 rules!1182))) (toValue!6773 (transformation!4799 (h!36784 rules!1182)))))))

(assert (=> d!783102 (= (inv!42581 (transformation!4799 (h!36784 rules!1182))) e!1713306)))

(declare-fun b!2718328 () Bool)

(declare-fun equivClasses!1878 (Int Int) Bool)

(assert (=> b!2718328 (= e!1713306 (equivClasses!1878 (toChars!6632 (transformation!4799 (h!36784 rules!1182))) (toValue!6773 (transformation!4799 (h!36784 rules!1182)))))))

(assert (= (and d!783102 res!1141716) b!2718328))

(declare-fun m!3117761 () Bool)

(assert (=> d!783102 m!3117761))

(declare-fun m!3117763 () Bool)

(assert (=> b!2718328 m!3117763))

(assert (=> b!2718092 d!783102))

(declare-fun e!1713311 () Bool)

(declare-fun b!2718337 () Bool)

(declare-fun tp!858036 () Bool)

(declare-fun tp!858035 () Bool)

(assert (=> b!2718337 (= e!1713311 (and (inv!42580 (left!24110 (c!439215 treated!9))) tp!858036 (inv!42580 (right!24440 (c!439215 treated!9))) tp!858035))))

(declare-fun b!2718339 () Bool)

(declare-fun e!1713312 () Bool)

(declare-fun tp!858037 () Bool)

(assert (=> b!2718339 (= e!1713312 tp!858037)))

(declare-fun b!2718338 () Bool)

(declare-fun inv!42595 (IArray!19655) Bool)

(assert (=> b!2718338 (= e!1713311 (and (inv!42595 (xs!12896 (c!439215 treated!9))) e!1713312))))

(assert (=> b!2718091 (= tp!857974 (and (inv!42580 (c!439215 treated!9)) e!1713311))))

(assert (= (and b!2718091 ((_ is Node!9825) (c!439215 treated!9))) b!2718337))

(assert (= b!2718338 b!2718339))

(assert (= (and b!2718091 ((_ is Leaf!14969) (c!439215 treated!9))) b!2718338))

(declare-fun m!3117765 () Bool)

(assert (=> b!2718337 m!3117765))

(declare-fun m!3117767 () Bool)

(assert (=> b!2718337 m!3117767))

(declare-fun m!3117769 () Bool)

(assert (=> b!2718338 m!3117769))

(assert (=> b!2718091 m!3117421))

(declare-fun e!1713313 () Bool)

(declare-fun tp!858038 () Bool)

(declare-fun tp!858039 () Bool)

(declare-fun b!2718340 () Bool)

(assert (=> b!2718340 (= e!1713313 (and (inv!42580 (left!24110 (c!439215 totalInput!328))) tp!858039 (inv!42580 (right!24440 (c!439215 totalInput!328))) tp!858038))))

(declare-fun b!2718342 () Bool)

(declare-fun e!1713314 () Bool)

(declare-fun tp!858040 () Bool)

(assert (=> b!2718342 (= e!1713314 tp!858040)))

(declare-fun b!2718341 () Bool)

(assert (=> b!2718341 (= e!1713313 (and (inv!42595 (xs!12896 (c!439215 totalInput!328))) e!1713314))))

(assert (=> b!2718085 (= tp!857977 (and (inv!42580 (c!439215 totalInput!328)) e!1713313))))

(assert (= (and b!2718085 ((_ is Node!9825) (c!439215 totalInput!328))) b!2718340))

(assert (= b!2718341 b!2718342))

(assert (= (and b!2718085 ((_ is Leaf!14969) (c!439215 totalInput!328))) b!2718341))

(declare-fun m!3117771 () Bool)

(assert (=> b!2718340 m!3117771))

(declare-fun m!3117773 () Bool)

(assert (=> b!2718340 m!3117773))

(declare-fun m!3117775 () Bool)

(assert (=> b!2718341 m!3117775))

(assert (=> b!2718085 m!3117417))

(declare-fun tp!858047 () Bool)

(declare-fun tp!858049 () Bool)

(declare-fun e!1713319 () Bool)

(declare-fun b!2718351 () Bool)

(assert (=> b!2718351 (= e!1713319 (and (inv!42582 (left!24111 (c!439217 acc!331))) tp!858047 (inv!42582 (right!24441 (c!439217 acc!331))) tp!858049))))

(declare-fun b!2718353 () Bool)

(declare-fun e!1713320 () Bool)

(declare-fun tp!858048 () Bool)

(assert (=> b!2718353 (= e!1713320 tp!858048)))

(declare-fun b!2718352 () Bool)

(declare-fun inv!42596 (IArray!19657) Bool)

(assert (=> b!2718352 (= e!1713319 (and (inv!42596 (xs!12897 (c!439217 acc!331))) e!1713320))))

(assert (=> b!2718095 (= tp!857970 (and (inv!42582 (c!439217 acc!331)) e!1713319))))

(assert (= (and b!2718095 ((_ is Node!9826) (c!439217 acc!331))) b!2718351))

(assert (= b!2718352 b!2718353))

(assert (= (and b!2718095 ((_ is Leaf!14970) (c!439217 acc!331))) b!2718352))

(declare-fun m!3117777 () Bool)

(assert (=> b!2718351 m!3117777))

(declare-fun m!3117779 () Bool)

(assert (=> b!2718351 m!3117779))

(declare-fun m!3117781 () Bool)

(assert (=> b!2718352 m!3117781))

(assert (=> b!2718095 m!3117437))

(declare-fun b!2718364 () Bool)

(declare-fun b_free!76601 () Bool)

(declare-fun b_next!77305 () Bool)

(assert (=> b!2718364 (= b_free!76601 (not b_next!77305))))

(declare-fun tp!858060 () Bool)

(declare-fun b_and!200353 () Bool)

(assert (=> b!2718364 (= tp!858060 b_and!200353)))

(declare-fun b_free!76603 () Bool)

(declare-fun b_next!77307 () Bool)

(assert (=> b!2718364 (= b_free!76603 (not b_next!77307))))

(declare-fun tp!858059 () Bool)

(declare-fun b_and!200355 () Bool)

(assert (=> b!2718364 (= tp!858059 b_and!200355)))

(declare-fun e!1713330 () Bool)

(assert (=> b!2718364 (= e!1713330 (and tp!858060 tp!858059))))

(declare-fun e!1713329 () Bool)

(declare-fun tp!858061 () Bool)

(declare-fun b!2718363 () Bool)

(assert (=> b!2718363 (= e!1713329 (and tp!858061 (inv!42574 (tag!5303 (h!36784 (t!226316 rules!1182)))) (inv!42581 (transformation!4799 (h!36784 (t!226316 rules!1182)))) e!1713330))))

(declare-fun b!2718362 () Bool)

(declare-fun e!1713331 () Bool)

(declare-fun tp!858058 () Bool)

(assert (=> b!2718362 (= e!1713331 (and e!1713329 tp!858058))))

(assert (=> b!2718083 (= tp!857976 e!1713331)))

(assert (= b!2718363 b!2718364))

(assert (= b!2718362 b!2718363))

(assert (= (and b!2718083 ((_ is Cons!31364) (t!226316 rules!1182))) b!2718362))

(declare-fun m!3117783 () Bool)

(assert (=> b!2718363 m!3117783))

(declare-fun m!3117785 () Bool)

(assert (=> b!2718363 m!3117785))

(declare-fun b!2718365 () Bool)

(declare-fun tp!858062 () Bool)

(declare-fun tp!858063 () Bool)

(declare-fun e!1713333 () Bool)

(assert (=> b!2718365 (= e!1713333 (and (inv!42580 (left!24110 (c!439215 input!603))) tp!858063 (inv!42580 (right!24440 (c!439215 input!603))) tp!858062))))

(declare-fun b!2718367 () Bool)

(declare-fun e!1713334 () Bool)

(declare-fun tp!858064 () Bool)

(assert (=> b!2718367 (= e!1713334 tp!858064)))

(declare-fun b!2718366 () Bool)

(assert (=> b!2718366 (= e!1713333 (and (inv!42595 (xs!12896 (c!439215 input!603))) e!1713334))))

(assert (=> b!2718087 (= tp!857972 (and (inv!42580 (c!439215 input!603)) e!1713333))))

(assert (= (and b!2718087 ((_ is Node!9825) (c!439215 input!603))) b!2718365))

(assert (= b!2718366 b!2718367))

(assert (= (and b!2718087 ((_ is Leaf!14969) (c!439215 input!603))) b!2718366))

(declare-fun m!3117787 () Bool)

(assert (=> b!2718365 m!3117787))

(declare-fun m!3117789 () Bool)

(assert (=> b!2718365 m!3117789))

(declare-fun m!3117791 () Bool)

(assert (=> b!2718366 m!3117791))

(assert (=> b!2718087 m!3117435))

(declare-fun b!2718378 () Bool)

(declare-fun e!1713337 () Bool)

(declare-fun tp_is_empty!13885 () Bool)

(assert (=> b!2718378 (= e!1713337 tp_is_empty!13885)))

(declare-fun b!2718380 () Bool)

(declare-fun tp!858075 () Bool)

(assert (=> b!2718380 (= e!1713337 tp!858075)))

(declare-fun b!2718379 () Bool)

(declare-fun tp!858078 () Bool)

(declare-fun tp!858077 () Bool)

(assert (=> b!2718379 (= e!1713337 (and tp!858078 tp!858077))))

(declare-fun b!2718381 () Bool)

(declare-fun tp!858076 () Bool)

(declare-fun tp!858079 () Bool)

(assert (=> b!2718381 (= e!1713337 (and tp!858076 tp!858079))))

(assert (=> b!2718092 (= tp!857975 e!1713337)))

(assert (= (and b!2718092 ((_ is ElementMatch!7951) (regex!4799 (h!36784 rules!1182)))) b!2718378))

(assert (= (and b!2718092 ((_ is Concat!12973) (regex!4799 (h!36784 rules!1182)))) b!2718379))

(assert (= (and b!2718092 ((_ is Star!7951) (regex!4799 (h!36784 rules!1182)))) b!2718380))

(assert (= (and b!2718092 ((_ is Union!7951) (regex!4799 (h!36784 rules!1182)))) b!2718381))

(check-sat (not b!2718095) (not b!2718091) (not b!2718367) (not b!2718290) (not b!2718287) (not d!783014) b_and!200353 (not d!783076) (not d!783078) (not b!2718294) (not d!783030) (not b!2718323) (not b!2718366) (not b_next!77297) (not b!2718283) (not b!2718380) (not b!2718338) b_and!200347 (not b!2718339) (not d!783026) (not d!783092) (not b!2718284) (not b!2718363) (not d!783090) (not d!783080) (not d!783018) (not b!2718280) (not d!783096) (not b!2718379) (not b!2718085) (not b!2718289) (not b!2718310) b_and!200345 (not b!2718128) (not b!2718106) (not b!2718282) (not d!783102) b_and!200355 (not b!2718352) (not b_next!77299) (not d!783084) (not b!2718340) (not b!2718342) (not d!782992) (not d!783016) (not b!2718351) (not d!783082) (not b_next!77305) (not b!2718337) (not b!2718313) (not b!2718278) (not b!2718296) (not b!2718104) (not b!2718130) (not b!2718365) (not b!2718292) (not d!783000) (not d!782996) (not b!2718328) (not b!2718087) (not b!2718381) (not b!2718127) (not b!2718299) (not d!783098) (not b!2718118) (not b!2718116) tp_is_empty!13885 (not b!2718291) (not b!2718279) (not b!2718297) (not b!2718324) (not b!2718293) (not b!2718286) (not b!2718298) (not b!2718353) (not d!783094) (not b!2718362) (not b!2718308) (not d!783032) (not d!782998) (not b!2718285) (not b!2718129) (not d!783028) (not b_next!77307) (not b!2718301) (not b!2718341))
(check-sat b_and!200353 (not b_next!77297) b_and!200347 b_and!200345 (not b_next!77305) (not b_next!77307) b_and!200355 (not b_next!77299))
(get-model)

(declare-fun d!783104 () Bool)

(declare-fun lt!962117 () Int)

(declare-fun size!24195 (List!31463) Int)

(assert (=> d!783104 (= lt!962117 (size!24195 (list!11880 (_1!18155 lt!962104))))))

(declare-fun size!24196 (Conc!9826) Int)

(assert (=> d!783104 (= lt!962117 (size!24196 (c!439217 (_1!18155 lt!962104))))))

(assert (=> d!783104 (= (size!24194 (_1!18155 lt!962104)) lt!962117)))

(declare-fun bs!488280 () Bool)

(assert (= bs!488280 d!783104))

(assert (=> bs!488280 m!3117677))

(assert (=> bs!488280 m!3117677))

(declare-fun m!3117793 () Bool)

(assert (=> bs!488280 m!3117793))

(declare-fun m!3117795 () Bool)

(assert (=> bs!488280 m!3117795))

(assert (=> d!783032 d!783104))

(declare-fun b!2718408 () Bool)

(declare-fun e!1713357 () Bool)

(declare-fun e!1713356 () Bool)

(assert (=> b!2718408 (= e!1713357 e!1713356)))

(declare-fun res!1141734 () Bool)

(assert (=> b!2718408 (=> (not res!1141734) (not e!1713356))))

(declare-fun lt!962142 () Option!6193)

(declare-fun get!9782 (Option!6193) tuple2!31054)

(declare-datatypes ((tuple2!31056 0))(
  ( (tuple2!31057 (_1!18160 Token!9060) (_2!18160 List!31461)) )
))
(declare-datatypes ((Option!6194 0))(
  ( (None!6193) (Some!6193 (v!33035 tuple2!31056)) )
))
(declare-fun get!9783 (Option!6194) tuple2!31056)

(declare-fun maxPrefixZipper!471 (LexerInterface!4395 List!31464 List!31461) Option!6194)

(assert (=> b!2718408 (= res!1141734 (= (_1!18159 (get!9782 lt!962142)) (_1!18160 (get!9783 (maxPrefixZipper!471 thiss!11556 rules!1182 (list!11881 input!603))))))))

(declare-fun b!2718409 () Bool)

(declare-fun e!1713355 () Bool)

(declare-fun e!1713359 () Bool)

(assert (=> b!2718409 (= e!1713355 e!1713359)))

(declare-fun res!1141733 () Bool)

(assert (=> b!2718409 (=> (not res!1141733) (not e!1713359))))

(declare-fun maxPrefix!2367 (LexerInterface!4395 List!31464 List!31461) Option!6194)

(assert (=> b!2718409 (= res!1141733 (= (_1!18159 (get!9782 lt!962142)) (_1!18160 (get!9783 (maxPrefix!2367 thiss!11556 rules!1182 (list!11881 input!603))))))))

(declare-fun b!2718411 () Bool)

(declare-fun e!1713360 () Bool)

(assert (=> b!2718411 (= e!1713360 e!1713355)))

(declare-fun res!1141736 () Bool)

(assert (=> b!2718411 (=> res!1141736 e!1713355)))

(declare-fun isDefined!4895 (Option!6193) Bool)

(assert (=> b!2718411 (= res!1141736 (not (isDefined!4895 lt!962142)))))

(declare-fun b!2718412 () Bool)

(declare-fun e!1713358 () Option!6193)

(declare-fun lt!962139 () Option!6193)

(declare-fun lt!962140 () Option!6193)

(assert (=> b!2718412 (= e!1713358 (ite (and ((_ is None!6192) lt!962139) ((_ is None!6192) lt!962140)) None!6192 (ite ((_ is None!6192) lt!962140) lt!962139 (ite ((_ is None!6192) lt!962139) lt!962140 (ite (>= (size!24187 (_1!18159 (v!33032 lt!962139))) (size!24187 (_1!18159 (v!33032 lt!962140)))) lt!962139 lt!962140)))))))

(declare-fun call!175369 () Option!6193)

(assert (=> b!2718412 (= lt!962139 call!175369)))

(assert (=> b!2718412 (= lt!962140 (maxPrefixZipperSequence!1043 thiss!11556 (t!226316 rules!1182) input!603))))

(declare-fun bm!175364 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!480 (LexerInterface!4395 Rule!9398 BalanceConc!19264) Option!6193)

(assert (=> bm!175364 (= call!175369 (maxPrefixOneRuleZipperSequence!480 thiss!11556 (h!36784 rules!1182) input!603))))

(declare-fun b!2718413 () Bool)

(declare-fun res!1141735 () Bool)

(assert (=> b!2718413 (=> (not res!1141735) (not e!1713360))))

(assert (=> b!2718413 (= res!1141735 e!1713357)))

(declare-fun res!1141737 () Bool)

(assert (=> b!2718413 (=> res!1141737 e!1713357)))

(assert (=> b!2718413 (= res!1141737 (not (isDefined!4895 lt!962142)))))

(declare-fun d!783106 () Bool)

(assert (=> d!783106 e!1713360))

(declare-fun res!1141738 () Bool)

(assert (=> d!783106 (=> (not res!1141738) (not e!1713360))))

(declare-fun isDefined!4896 (Option!6194) Bool)

(assert (=> d!783106 (= res!1141738 (= (isDefined!4895 lt!962142) (isDefined!4896 (maxPrefixZipper!471 thiss!11556 rules!1182 (list!11881 input!603)))))))

(assert (=> d!783106 (= lt!962142 e!1713358)))

(declare-fun c!439275 () Bool)

(assert (=> d!783106 (= c!439275 (and ((_ is Cons!31364) rules!1182) ((_ is Nil!31364) (t!226316 rules!1182))))))

(declare-datatypes ((Unit!45378 0))(
  ( (Unit!45379) )
))
(declare-fun lt!962137 () Unit!45378)

(declare-fun lt!962143 () Unit!45378)

(assert (=> d!783106 (= lt!962137 lt!962143)))

(declare-fun lt!962141 () List!31461)

(declare-fun lt!962138 () List!31461)

(declare-fun isPrefix!2484 (List!31461 List!31461) Bool)

(assert (=> d!783106 (isPrefix!2484 lt!962141 lt!962138)))

(declare-fun lemmaIsPrefixRefl!1610 (List!31461 List!31461) Unit!45378)

(assert (=> d!783106 (= lt!962143 (lemmaIsPrefixRefl!1610 lt!962141 lt!962138))))

(assert (=> d!783106 (= lt!962138 (list!11881 input!603))))

(assert (=> d!783106 (= lt!962141 (list!11881 input!603))))

(declare-fun rulesValidInductive!1668 (LexerInterface!4395 List!31464) Bool)

(assert (=> d!783106 (rulesValidInductive!1668 thiss!11556 rules!1182)))

(assert (=> d!783106 (= (maxPrefixZipperSequence!1043 thiss!11556 rules!1182 input!603) lt!962142)))

(declare-fun b!2718410 () Bool)

(assert (=> b!2718410 (= e!1713358 call!175369)))

(declare-fun b!2718414 () Bool)

(assert (=> b!2718414 (= e!1713356 (= (list!11881 (_2!18159 (get!9782 lt!962142))) (_2!18160 (get!9783 (maxPrefixZipper!471 thiss!11556 rules!1182 (list!11881 input!603))))))))

(declare-fun b!2718415 () Bool)

(assert (=> b!2718415 (= e!1713359 (= (list!11881 (_2!18159 (get!9782 lt!962142))) (_2!18160 (get!9783 (maxPrefix!2367 thiss!11556 rules!1182 (list!11881 input!603))))))))

(assert (= (and d!783106 c!439275) b!2718410))

(assert (= (and d!783106 (not c!439275)) b!2718412))

(assert (= (or b!2718410 b!2718412) bm!175364))

(assert (= (and d!783106 res!1141738) b!2718413))

(assert (= (and b!2718413 (not res!1141737)) b!2718408))

(assert (= (and b!2718408 res!1141734) b!2718414))

(assert (= (and b!2718413 res!1141735) b!2718411))

(assert (= (and b!2718411 (not res!1141736)) b!2718409))

(assert (= (and b!2718409 res!1141733) b!2718415))

(declare-fun m!3117803 () Bool)

(assert (=> b!2718408 m!3117803))

(assert (=> b!2718408 m!3117427))

(assert (=> b!2718408 m!3117427))

(declare-fun m!3117805 () Bool)

(assert (=> b!2718408 m!3117805))

(assert (=> b!2718408 m!3117805))

(declare-fun m!3117807 () Bool)

(assert (=> b!2718408 m!3117807))

(declare-fun m!3117809 () Bool)

(assert (=> b!2718413 m!3117809))

(assert (=> b!2718414 m!3117803))

(declare-fun m!3117811 () Bool)

(assert (=> b!2718414 m!3117811))

(assert (=> b!2718414 m!3117427))

(assert (=> b!2718414 m!3117805))

(assert (=> b!2718414 m!3117807))

(assert (=> b!2718414 m!3117427))

(assert (=> b!2718414 m!3117805))

(assert (=> b!2718409 m!3117803))

(assert (=> b!2718409 m!3117427))

(assert (=> b!2718409 m!3117427))

(declare-fun m!3117813 () Bool)

(assert (=> b!2718409 m!3117813))

(assert (=> b!2718409 m!3117813))

(declare-fun m!3117815 () Bool)

(assert (=> b!2718409 m!3117815))

(assert (=> d!783106 m!3117809))

(declare-fun m!3117817 () Bool)

(assert (=> d!783106 m!3117817))

(assert (=> d!783106 m!3117805))

(declare-fun m!3117819 () Bool)

(assert (=> d!783106 m!3117819))

(declare-fun m!3117821 () Bool)

(assert (=> d!783106 m!3117821))

(assert (=> d!783106 m!3117427))

(assert (=> d!783106 m!3117427))

(assert (=> d!783106 m!3117805))

(declare-fun m!3117823 () Bool)

(assert (=> d!783106 m!3117823))

(declare-fun m!3117825 () Bool)

(assert (=> bm!175364 m!3117825))

(declare-fun m!3117827 () Bool)

(assert (=> b!2718412 m!3117827))

(assert (=> b!2718415 m!3117803))

(assert (=> b!2718415 m!3117813))

(assert (=> b!2718415 m!3117815))

(assert (=> b!2718415 m!3117427))

(assert (=> b!2718415 m!3117811))

(assert (=> b!2718415 m!3117427))

(assert (=> b!2718415 m!3117813))

(assert (=> b!2718411 m!3117809))

(assert (=> d!783032 d!783106))

(declare-fun d!783116 () Bool)

(declare-fun lt!962144 () Int)

(assert (=> d!783116 (= lt!962144 (size!24192 (list!11881 (_2!18155 lt!962107))))))

(assert (=> d!783116 (= lt!962144 (size!24193 (c!439215 (_2!18155 lt!962107))))))

(assert (=> d!783116 (= (size!24188 (_2!18155 lt!962107)) lt!962144)))

(declare-fun bs!488281 () Bool)

(assert (= bs!488281 d!783116))

(assert (=> bs!488281 m!3117691))

(assert (=> bs!488281 m!3117691))

(declare-fun m!3117829 () Bool)

(assert (=> bs!488281 m!3117829))

(declare-fun m!3117831 () Bool)

(assert (=> bs!488281 m!3117831))

(assert (=> b!2718286 d!783116))

(declare-fun d!783118 () Bool)

(declare-fun lt!962145 () Int)

(assert (=> d!783118 (= lt!962145 (size!24192 (list!11881 totalInput!328)))))

(assert (=> d!783118 (= lt!962145 (size!24193 (c!439215 totalInput!328)))))

(assert (=> d!783118 (= (size!24188 totalInput!328) lt!962145)))

(declare-fun bs!488282 () Bool)

(assert (= bs!488282 d!783118))

(assert (=> bs!488282 m!3117423))

(assert (=> bs!488282 m!3117423))

(declare-fun m!3117833 () Bool)

(assert (=> bs!488282 m!3117833))

(declare-fun m!3117835 () Bool)

(assert (=> bs!488282 m!3117835))

(assert (=> b!2718286 d!783118))

(declare-fun d!783120 () Bool)

(declare-fun c!439276 () Bool)

(assert (=> d!783120 (= c!439276 ((_ is Node!9825) (left!24110 (c!439215 treated!9))))))

(declare-fun e!1713361 () Bool)

(assert (=> d!783120 (= (inv!42580 (left!24110 (c!439215 treated!9))) e!1713361)))

(declare-fun b!2718416 () Bool)

(assert (=> b!2718416 (= e!1713361 (inv!42589 (left!24110 (c!439215 treated!9))))))

(declare-fun b!2718417 () Bool)

(declare-fun e!1713362 () Bool)

(assert (=> b!2718417 (= e!1713361 e!1713362)))

(declare-fun res!1141739 () Bool)

(assert (=> b!2718417 (= res!1141739 (not ((_ is Leaf!14969) (left!24110 (c!439215 treated!9)))))))

(assert (=> b!2718417 (=> res!1141739 e!1713362)))

(declare-fun b!2718418 () Bool)

(assert (=> b!2718418 (= e!1713362 (inv!42590 (left!24110 (c!439215 treated!9))))))

(assert (= (and d!783120 c!439276) b!2718416))

(assert (= (and d!783120 (not c!439276)) b!2718417))

(assert (= (and b!2718417 (not res!1141739)) b!2718418))

(declare-fun m!3117837 () Bool)

(assert (=> b!2718416 m!3117837))

(declare-fun m!3117839 () Bool)

(assert (=> b!2718418 m!3117839))

(assert (=> b!2718337 d!783120))

(declare-fun d!783122 () Bool)

(declare-fun c!439277 () Bool)

(assert (=> d!783122 (= c!439277 ((_ is Node!9825) (right!24440 (c!439215 treated!9))))))

(declare-fun e!1713363 () Bool)

(assert (=> d!783122 (= (inv!42580 (right!24440 (c!439215 treated!9))) e!1713363)))

(declare-fun b!2718419 () Bool)

(assert (=> b!2718419 (= e!1713363 (inv!42589 (right!24440 (c!439215 treated!9))))))

(declare-fun b!2718420 () Bool)

(declare-fun e!1713364 () Bool)

(assert (=> b!2718420 (= e!1713363 e!1713364)))

(declare-fun res!1141740 () Bool)

(assert (=> b!2718420 (= res!1141740 (not ((_ is Leaf!14969) (right!24440 (c!439215 treated!9)))))))

(assert (=> b!2718420 (=> res!1141740 e!1713364)))

(declare-fun b!2718421 () Bool)

(assert (=> b!2718421 (= e!1713364 (inv!42590 (right!24440 (c!439215 treated!9))))))

(assert (= (and d!783122 c!439277) b!2718419))

(assert (= (and d!783122 (not c!439277)) b!2718420))

(assert (= (and b!2718420 (not res!1141740)) b!2718421))

(declare-fun m!3117841 () Bool)

(assert (=> b!2718419 m!3117841))

(declare-fun m!3117843 () Bool)

(assert (=> b!2718421 m!3117843))

(assert (=> b!2718337 d!783122))

(declare-fun d!783124 () Bool)

(assert (=> d!783124 true))

(declare-fun order!17133 () Int)

(declare-fun order!17131 () Int)

(declare-fun lambda!100577 () Int)

(declare-fun dynLambda!13506 (Int Int) Int)

(declare-fun dynLambda!13507 (Int Int) Int)

(assert (=> d!783124 (< (dynLambda!13506 order!17131 (toChars!6632 (transformation!4799 (h!36784 rules!1182)))) (dynLambda!13507 order!17133 lambda!100577))))

(assert (=> d!783124 true))

(declare-fun order!17135 () Int)

(declare-fun dynLambda!13508 (Int Int) Int)

(assert (=> d!783124 (< (dynLambda!13508 order!17135 (toValue!6773 (transformation!4799 (h!36784 rules!1182)))) (dynLambda!13507 order!17133 lambda!100577))))

(declare-fun Forall!1210 (Int) Bool)

(assert (=> d!783124 (= (semiInverseModEq!1977 (toChars!6632 (transformation!4799 (h!36784 rules!1182))) (toValue!6773 (transformation!4799 (h!36784 rules!1182)))) (Forall!1210 lambda!100577))))

(declare-fun bs!488287 () Bool)

(assert (= bs!488287 d!783124))

(declare-fun m!3117949 () Bool)

(assert (=> bs!488287 m!3117949))

(assert (=> d!783102 d!783124))

(declare-fun b!2718515 () Bool)

(declare-fun res!1141807 () Bool)

(declare-fun e!1713419 () Bool)

(assert (=> b!2718515 (=> (not res!1141807) (not e!1713419))))

(assert (=> b!2718515 (= res!1141807 (isBalanced!2975 (left!24110 (c!439215 treated!9))))))

(declare-fun b!2718516 () Bool)

(declare-fun isEmpty!17893 (Conc!9825) Bool)

(assert (=> b!2718516 (= e!1713419 (not (isEmpty!17893 (right!24440 (c!439215 treated!9)))))))

(declare-fun b!2718517 () Bool)

(declare-fun res!1141806 () Bool)

(assert (=> b!2718517 (=> (not res!1141806) (not e!1713419))))

(assert (=> b!2718517 (= res!1141806 (not (isEmpty!17893 (left!24110 (c!439215 treated!9)))))))

(declare-fun b!2718518 () Bool)

(declare-fun e!1713420 () Bool)

(assert (=> b!2718518 (= e!1713420 e!1713419)))

(declare-fun res!1141810 () Bool)

(assert (=> b!2718518 (=> (not res!1141810) (not e!1713419))))

(declare-fun height!1455 (Conc!9825) Int)

(assert (=> b!2718518 (= res!1141810 (<= (- 1) (- (height!1455 (left!24110 (c!439215 treated!9))) (height!1455 (right!24440 (c!439215 treated!9))))))))

(declare-fun b!2718519 () Bool)

(declare-fun res!1141808 () Bool)

(assert (=> b!2718519 (=> (not res!1141808) (not e!1713419))))

(assert (=> b!2718519 (= res!1141808 (isBalanced!2975 (right!24440 (c!439215 treated!9))))))

(declare-fun b!2718520 () Bool)

(declare-fun res!1141809 () Bool)

(assert (=> b!2718520 (=> (not res!1141809) (not e!1713419))))

(assert (=> b!2718520 (= res!1141809 (<= (- (height!1455 (left!24110 (c!439215 treated!9))) (height!1455 (right!24440 (c!439215 treated!9)))) 1))))

(declare-fun d!783148 () Bool)

(declare-fun res!1141811 () Bool)

(assert (=> d!783148 (=> res!1141811 e!1713420)))

(assert (=> d!783148 (= res!1141811 (not ((_ is Node!9825) (c!439215 treated!9))))))

(assert (=> d!783148 (= (isBalanced!2975 (c!439215 treated!9)) e!1713420)))

(assert (= (and d!783148 (not res!1141811)) b!2718518))

(assert (= (and b!2718518 res!1141810) b!2718520))

(assert (= (and b!2718520 res!1141809) b!2718515))

(assert (= (and b!2718515 res!1141807) b!2718519))

(assert (= (and b!2718519 res!1141808) b!2718517))

(assert (= (and b!2718517 res!1141806) b!2718516))

(declare-fun m!3117951 () Bool)

(assert (=> b!2718516 m!3117951))

(declare-fun m!3117953 () Bool)

(assert (=> b!2718515 m!3117953))

(declare-fun m!3117955 () Bool)

(assert (=> b!2718520 m!3117955))

(declare-fun m!3117957 () Bool)

(assert (=> b!2718520 m!3117957))

(declare-fun m!3117959 () Bool)

(assert (=> b!2718517 m!3117959))

(assert (=> b!2718518 m!3117955))

(assert (=> b!2718518 m!3117957))

(declare-fun m!3117961 () Bool)

(assert (=> b!2718519 m!3117961))

(assert (=> d!782992 d!783148))

(declare-fun b!2718581 () Bool)

(declare-fun e!1713461 () Bool)

(declare-fun appendAssoc!198 (List!31463 List!31463 List!31463) Bool)

(assert (=> b!2718581 (= e!1713461 (appendAssoc!198 (++!7807 (list!11885 (c!439217 acc!331)) (list!11885 (left!24111 (left!24111 (c!439217 (_1!18155 lt!962066)))))) (list!11885 (right!24441 (left!24111 (c!439217 (_1!18155 lt!962066))))) (list!11885 (right!24441 (c!439217 (_1!18155 lt!962066))))))))

(declare-fun b!2718582 () Bool)

(declare-fun e!1713466 () Bool)

(declare-fun e!1713467 () Bool)

(assert (=> b!2718582 (= e!1713466 e!1713467)))

(declare-fun res!1141842 () Bool)

(assert (=> b!2718582 (=> res!1141842 e!1713467)))

(assert (=> b!2718582 (= res!1141842 (not ((_ is Node!9826) (c!439217 (_1!18155 lt!962066)))))))

(declare-fun b!2718583 () Bool)

(declare-fun e!1713465 () Bool)

(declare-fun e!1713464 () Bool)

(assert (=> b!2718583 (= e!1713465 e!1713464)))

(declare-fun res!1141848 () Bool)

(assert (=> b!2718583 (=> (not res!1141848) (not e!1713464))))

(assert (=> b!2718583 (= res!1141848 (appendAssoc!198 (list!11885 (left!24111 (right!24441 (c!439217 acc!331)))) (list!11885 (right!24441 (right!24441 (c!439217 acc!331)))) (list!11885 (c!439217 (_1!18155 lt!962066)))))))

(declare-fun b!2718584 () Bool)

(declare-fun e!1713463 () Bool)

(declare-fun e!1713460 () Bool)

(assert (=> b!2718584 (= e!1713463 e!1713460)))

(declare-fun res!1141841 () Bool)

(assert (=> b!2718584 (=> (not res!1141841) (not e!1713460))))

(assert (=> b!2718584 (= res!1141841 (appendAssoc!198 (list!11885 (left!24111 (c!439217 acc!331))) (list!11885 (right!24441 (c!439217 acc!331))) (list!11885 (c!439217 (_1!18155 lt!962066)))))))

(declare-fun b!2718585 () Bool)

(assert (=> b!2718585 (= e!1713460 e!1713465)))

(declare-fun res!1141843 () Bool)

(assert (=> b!2718585 (=> res!1141843 e!1713465)))

(assert (=> b!2718585 (= res!1141843 (not ((_ is Node!9826) (right!24441 (c!439217 acc!331)))))))

(declare-fun b!2718586 () Bool)

(declare-fun e!1713459 () Bool)

(declare-fun e!1713462 () Bool)

(assert (=> b!2718586 (= e!1713459 e!1713462)))

(declare-fun res!1141846 () Bool)

(assert (=> b!2718586 (=> res!1141846 e!1713462)))

(assert (=> b!2718586 (= res!1141846 (not ((_ is Node!9826) (left!24111 (c!439217 (_1!18155 lt!962066))))))))

(declare-fun d!783150 () Bool)

(assert (=> d!783150 e!1713466))

(declare-fun res!1141845 () Bool)

(assert (=> d!783150 (=> (not res!1141845) (not e!1713466))))

(assert (=> d!783150 (= res!1141845 e!1713463)))

(declare-fun res!1141847 () Bool)

(assert (=> d!783150 (=> res!1141847 e!1713463)))

(assert (=> d!783150 (= res!1141847 (not ((_ is Node!9826) (c!439217 acc!331))))))

(assert (=> d!783150 (= (appendAssocInst!691 (c!439217 acc!331) (c!439217 (_1!18155 lt!962066))) true)))

(declare-fun b!2718587 () Bool)

(assert (=> b!2718587 (= e!1713462 e!1713461)))

(declare-fun res!1141844 () Bool)

(assert (=> b!2718587 (=> (not res!1141844) (not e!1713461))))

(assert (=> b!2718587 (= res!1141844 (appendAssoc!198 (list!11885 (c!439217 acc!331)) (list!11885 (left!24111 (left!24111 (c!439217 (_1!18155 lt!962066))))) (list!11885 (right!24441 (left!24111 (c!439217 (_1!18155 lt!962066)))))))))

(declare-fun b!2718588 () Bool)

(assert (=> b!2718588 (= e!1713464 (appendAssoc!198 (list!11885 (left!24111 (c!439217 acc!331))) (list!11885 (left!24111 (right!24441 (c!439217 acc!331)))) (++!7807 (list!11885 (right!24441 (right!24441 (c!439217 acc!331)))) (list!11885 (c!439217 (_1!18155 lt!962066))))))))

(declare-fun b!2718589 () Bool)

(assert (=> b!2718589 (= e!1713467 e!1713459)))

(declare-fun res!1141840 () Bool)

(assert (=> b!2718589 (=> (not res!1141840) (not e!1713459))))

(assert (=> b!2718589 (= res!1141840 (appendAssoc!198 (list!11885 (c!439217 acc!331)) (list!11885 (left!24111 (c!439217 (_1!18155 lt!962066)))) (list!11885 (right!24441 (c!439217 (_1!18155 lt!962066))))))))

(assert (= (and d!783150 (not res!1141847)) b!2718584))

(assert (= (and b!2718584 res!1141841) b!2718585))

(assert (= (and b!2718585 (not res!1141843)) b!2718583))

(assert (= (and b!2718583 res!1141848) b!2718588))

(assert (= (and d!783150 res!1141845) b!2718582))

(assert (= (and b!2718582 (not res!1141842)) b!2718589))

(assert (= (and b!2718589 res!1141840) b!2718586))

(assert (= (and b!2718586 (not res!1141846)) b!2718587))

(assert (= (and b!2718587 res!1141844) b!2718581))

(declare-fun m!3117963 () Bool)

(assert (=> b!2718584 m!3117963))

(declare-fun m!3117965 () Bool)

(assert (=> b!2718584 m!3117965))

(declare-fun m!3117967 () Bool)

(assert (=> b!2718584 m!3117967))

(assert (=> b!2718584 m!3117963))

(assert (=> b!2718584 m!3117965))

(assert (=> b!2718584 m!3117967))

(declare-fun m!3117969 () Bool)

(assert (=> b!2718584 m!3117969))

(declare-fun m!3117971 () Bool)

(assert (=> b!2718588 m!3117971))

(declare-fun m!3117973 () Bool)

(assert (=> b!2718588 m!3117973))

(assert (=> b!2718588 m!3117971))

(assert (=> b!2718588 m!3117967))

(declare-fun m!3117975 () Bool)

(assert (=> b!2718588 m!3117975))

(assert (=> b!2718588 m!3117967))

(assert (=> b!2718588 m!3117963))

(assert (=> b!2718588 m!3117973))

(assert (=> b!2718588 m!3117975))

(declare-fun m!3117977 () Bool)

(assert (=> b!2718588 m!3117977))

(assert (=> b!2718588 m!3117963))

(assert (=> b!2718583 m!3117973))

(assert (=> b!2718583 m!3117971))

(assert (=> b!2718583 m!3117967))

(assert (=> b!2718583 m!3117973))

(assert (=> b!2718583 m!3117971))

(assert (=> b!2718583 m!3117967))

(declare-fun m!3117979 () Bool)

(assert (=> b!2718583 m!3117979))

(assert (=> b!2718589 m!3117709))

(declare-fun m!3117981 () Bool)

(assert (=> b!2718589 m!3117981))

(declare-fun m!3117983 () Bool)

(assert (=> b!2718589 m!3117983))

(assert (=> b!2718589 m!3117709))

(assert (=> b!2718589 m!3117981))

(assert (=> b!2718589 m!3117983))

(declare-fun m!3117985 () Bool)

(assert (=> b!2718589 m!3117985))

(assert (=> b!2718587 m!3117709))

(declare-fun m!3117987 () Bool)

(assert (=> b!2718587 m!3117987))

(declare-fun m!3117989 () Bool)

(assert (=> b!2718587 m!3117989))

(assert (=> b!2718587 m!3117709))

(assert (=> b!2718587 m!3117987))

(assert (=> b!2718587 m!3117989))

(declare-fun m!3117991 () Bool)

(assert (=> b!2718587 m!3117991))

(assert (=> b!2718581 m!3117709))

(assert (=> b!2718581 m!3117987))

(declare-fun m!3117993 () Bool)

(assert (=> b!2718581 m!3117993))

(assert (=> b!2718581 m!3117983))

(assert (=> b!2718581 m!3117989))

(assert (=> b!2718581 m!3117987))

(assert (=> b!2718581 m!3117993))

(assert (=> b!2718581 m!3117989))

(assert (=> b!2718581 m!3117983))

(declare-fun m!3117995 () Bool)

(assert (=> b!2718581 m!3117995))

(assert (=> b!2718581 m!3117709))

(assert (=> d!783028 d!783150))

(declare-fun b!2718693 () Bool)

(declare-fun e!1713527 () Bool)

(assert (=> b!2718693 (= e!1713527 (isBalanced!2976 (c!439217 (_1!18155 lt!962066))))))

(declare-fun b!2718694 () Bool)

(declare-fun e!1713524 () Conc!9826)

(declare-fun call!175464 () Conc!9826)

(assert (=> b!2718694 (= e!1713524 call!175464)))

(declare-fun c!439346 () Bool)

(declare-fun call!175458 () Int)

(declare-fun bm!175445 () Bool)

(assert (=> bm!175445 (= call!175458 (height!1454 (ite c!439346 (right!24441 (c!439217 acc!331)) (left!24111 (c!439217 (_1!18155 lt!962066))))))))

(declare-fun lt!962187 () Conc!9826)

(declare-fun c!439342 () Bool)

(declare-fun lt!962189 () Conc!9826)

(declare-fun c!439343 () Bool)

(declare-fun call!175461 () Conc!9826)

(declare-fun c!439348 () Bool)

(declare-fun bm!175446 () Bool)

(declare-fun <>!256 (Conc!9826 Conc!9826) Conc!9826)

(assert (=> bm!175446 (= call!175461 (<>!256 (ite c!439343 (c!439217 acc!331) (ite c!439346 (ite c!439342 (left!24111 (right!24441 (c!439217 acc!331))) (left!24111 (c!439217 acc!331))) (ite c!439348 lt!962189 (right!24441 (left!24111 (c!439217 (_1!18155 lt!962066))))))) (ite c!439343 (c!439217 (_1!18155 lt!962066)) (ite c!439346 (ite c!439342 lt!962187 (left!24111 (right!24441 (c!439217 acc!331)))) (ite c!439348 (right!24441 (left!24111 (c!439217 (_1!18155 lt!962066)))) (right!24441 (c!439217 (_1!18155 lt!962066))))))))))

(declare-fun bm!175447 () Bool)

(declare-fun call!175450 () Conc!9826)

(assert (=> bm!175447 (= call!175464 call!175450)))

(declare-fun bm!175448 () Bool)

(declare-fun c!439344 () Bool)

(declare-fun c!439341 () Bool)

(declare-fun call!175452 () Conc!9826)

(assert (=> bm!175448 (= call!175452 (++!7806 (ite c!439346 (ite c!439344 (right!24441 (c!439217 acc!331)) (right!24441 (right!24441 (c!439217 acc!331)))) (c!439217 acc!331)) (ite c!439346 (c!439217 (_1!18155 lt!962066)) (ite c!439341 (left!24111 (c!439217 (_1!18155 lt!962066))) (left!24111 (left!24111 (c!439217 (_1!18155 lt!962066))))))))))

(declare-fun b!2718695 () Bool)

(declare-fun e!1713526 () Conc!9826)

(declare-fun call!175460 () Conc!9826)

(assert (=> b!2718695 (= e!1713526 call!175460)))

(declare-fun b!2718696 () Bool)

(declare-fun e!1713528 () Conc!9826)

(declare-fun call!175463 () Conc!9826)

(assert (=> b!2718696 (= e!1713528 call!175463)))

(declare-fun bm!175449 () Bool)

(declare-fun call!175465 () Conc!9826)

(declare-fun call!175451 () Conc!9826)

(assert (=> bm!175449 (= call!175465 call!175451)))

(declare-fun b!2718697 () Bool)

(declare-fun e!1713525 () Conc!9826)

(declare-fun e!1713520 () Conc!9826)

(assert (=> b!2718697 (= e!1713525 e!1713520)))

(declare-fun c!439345 () Bool)

(assert (=> b!2718697 (= c!439345 (= (c!439217 (_1!18155 lt!962066)) Empty!9826))))

(declare-fun b!2718698 () Bool)

(declare-fun call!175455 () Int)

(assert (=> b!2718698 (= c!439344 (>= call!175455 call!175458))))

(declare-fun e!1713519 () Conc!9826)

(declare-fun e!1713521 () Conc!9826)

(assert (=> b!2718698 (= e!1713519 e!1713521)))

(declare-fun b!2718699 () Bool)

(declare-fun e!1713522 () Conc!9826)

(assert (=> b!2718699 (= e!1713522 call!175461)))

(declare-fun b!2718700 () Bool)

(assert (=> b!2718700 (= e!1713526 e!1713528)))

(declare-fun call!175462 () Conc!9826)

(assert (=> b!2718700 (= lt!962189 call!175462)))

(declare-fun call!175453 () Int)

(declare-fun call!175457 () Int)

(assert (=> b!2718700 (= c!439348 (= call!175453 (- call!175457 3)))))

(declare-fun lt!962186 () Conc!9826)

(declare-fun b!2718701 () Bool)

(declare-fun e!1713523 () Bool)

(assert (=> b!2718701 (= e!1713523 (= (list!11885 lt!962186) (++!7807 (list!11885 (c!439217 acc!331)) (list!11885 (c!439217 (_1!18155 lt!962066))))))))

(declare-fun bm!175450 () Bool)

(declare-fun call!175454 () Conc!9826)

(assert (=> bm!175450 (= call!175460 call!175454)))

(declare-fun bm!175451 () Bool)

(assert (=> bm!175451 (= call!175457 (height!1454 (ite c!439346 (c!439217 acc!331) (c!439217 (_1!18155 lt!962066)))))))

(declare-fun bm!175452 () Bool)

(declare-fun call!175459 () Conc!9826)

(assert (=> bm!175452 (= call!175459 call!175452)))

(declare-fun d!783152 () Bool)

(assert (=> d!783152 e!1713523))

(declare-fun res!1141884 () Bool)

(assert (=> d!783152 (=> (not res!1141884) (not e!1713523))))

(assert (=> d!783152 (= res!1141884 (appendAssocInst!691 (c!439217 acc!331) (c!439217 (_1!18155 lt!962066))))))

(assert (=> d!783152 (= lt!962186 e!1713525)))

(declare-fun c!439347 () Bool)

(assert (=> d!783152 (= c!439347 (= (c!439217 acc!331) Empty!9826))))

(assert (=> d!783152 e!1713527))

(declare-fun res!1141883 () Bool)

(assert (=> d!783152 (=> (not res!1141883) (not e!1713527))))

(assert (=> d!783152 (= res!1141883 (isBalanced!2976 (c!439217 acc!331)))))

(assert (=> d!783152 (= (++!7806 (c!439217 acc!331) (c!439217 (_1!18155 lt!962066))) lt!962186)))

(declare-fun bm!175453 () Bool)

(declare-fun call!175456 () Conc!9826)

(assert (=> bm!175453 (= call!175456 call!175451)))

(declare-fun bm!175454 () Bool)

(assert (=> bm!175454 (= call!175453 (height!1454 (ite c!439346 lt!962187 lt!962189)))))

(declare-fun b!2718702 () Bool)

(assert (=> b!2718702 (= e!1713524 call!175464)))

(declare-fun bm!175455 () Bool)

(assert (=> bm!175455 (= call!175455 (height!1454 (ite c!439346 (left!24111 (c!439217 acc!331)) (right!24441 (c!439217 (_1!18155 lt!962066))))))))

(declare-fun b!2718703 () Bool)

(assert (=> b!2718703 (= e!1713520 (c!439217 acc!331))))

(declare-fun b!2718704 () Bool)

(assert (=> b!2718704 (= e!1713521 e!1713524)))

(assert (=> b!2718704 (= lt!962187 call!175459)))

(assert (=> b!2718704 (= c!439342 (= call!175453 (- call!175457 3)))))

(declare-fun b!2718705 () Bool)

(assert (=> b!2718705 (= e!1713525 (c!439217 (_1!18155 lt!962066)))))

(declare-fun b!2718706 () Bool)

(assert (=> b!2718706 (= e!1713528 call!175463)))

(declare-fun b!2718707 () Bool)

(assert (=> b!2718707 (= e!1713522 e!1713519)))

(declare-fun lt!962188 () Int)

(assert (=> b!2718707 (= c!439346 (< lt!962188 (- 1)))))

(declare-fun b!2718708 () Bool)

(declare-fun res!1141881 () Bool)

(assert (=> b!2718708 (=> (not res!1141881) (not e!1713523))))

(assert (=> b!2718708 (= res!1141881 (<= (height!1454 lt!962186) (+ (max!0 (height!1454 (c!439217 acc!331)) (height!1454 (c!439217 (_1!18155 lt!962066)))) 1)))))

(declare-fun bm!175456 () Bool)

(assert (=> bm!175456 (= call!175450 call!175454)))

(declare-fun b!2718709 () Bool)

(assert (=> b!2718709 (= c!439341 (>= call!175455 call!175458))))

(assert (=> b!2718709 (= e!1713519 e!1713526)))

(declare-fun bm!175457 () Bool)

(assert (=> bm!175457 (= call!175451 call!175461)))

(declare-fun bm!175458 () Bool)

(assert (=> bm!175458 (= call!175463 call!175460)))

(declare-fun b!2718710 () Bool)

(declare-fun res!1141880 () Bool)

(assert (=> b!2718710 (=> (not res!1141880) (not e!1713523))))

(assert (=> b!2718710 (= res!1141880 (>= (height!1454 lt!962186) (max!0 (height!1454 (c!439217 acc!331)) (height!1454 (c!439217 (_1!18155 lt!962066))))))))

(declare-fun b!2718711 () Bool)

(declare-fun res!1141882 () Bool)

(assert (=> b!2718711 (=> (not res!1141882) (not e!1713523))))

(assert (=> b!2718711 (= res!1141882 (isBalanced!2976 lt!962186))))

(declare-fun bm!175459 () Bool)

(assert (=> bm!175459 (= call!175462 call!175452)))

(declare-fun bm!175460 () Bool)

(assert (=> bm!175460 (= call!175454 (<>!256 (ite c!439346 (ite (or c!439344 c!439342) (left!24111 (c!439217 acc!331)) call!175465) (ite c!439341 call!175462 (ite c!439348 call!175456 lt!962189))) (ite c!439346 (ite c!439344 call!175459 (ite c!439342 call!175465 lt!962187)) (ite (or c!439341 c!439348) (right!24441 (c!439217 (_1!18155 lt!962066))) call!175456))))))

(declare-fun b!2718712 () Bool)

(assert (=> b!2718712 (= e!1713521 call!175450)))

(declare-fun b!2718713 () Bool)

(assert (=> b!2718713 (= c!439343 (and (<= (- 1) lt!962188) (<= lt!962188 1)))))

(assert (=> b!2718713 (= lt!962188 (- (height!1454 (c!439217 (_1!18155 lt!962066))) (height!1454 (c!439217 acc!331))))))

(assert (=> b!2718713 (= e!1713520 e!1713522)))

(assert (= (and d!783152 res!1141883) b!2718693))

(assert (= (and d!783152 c!439347) b!2718705))

(assert (= (and d!783152 (not c!439347)) b!2718697))

(assert (= (and b!2718697 c!439345) b!2718703))

(assert (= (and b!2718697 (not c!439345)) b!2718713))

(assert (= (and b!2718713 c!439343) b!2718699))

(assert (= (and b!2718713 (not c!439343)) b!2718707))

(assert (= (and b!2718707 c!439346) b!2718698))

(assert (= (and b!2718707 (not c!439346)) b!2718709))

(assert (= (and b!2718698 c!439344) b!2718712))

(assert (= (and b!2718698 (not c!439344)) b!2718704))

(assert (= (and b!2718704 c!439342) b!2718694))

(assert (= (and b!2718704 (not c!439342)) b!2718702))

(assert (= (or b!2718694 b!2718702) bm!175449))

(assert (= (or b!2718694 b!2718702) bm!175447))

(assert (= (or b!2718712 b!2718704) bm!175452))

(assert (= (or b!2718712 bm!175447) bm!175456))

(assert (= (and b!2718709 c!439341) b!2718695))

(assert (= (and b!2718709 (not c!439341)) b!2718700))

(assert (= (and b!2718700 c!439348) b!2718706))

(assert (= (and b!2718700 (not c!439348)) b!2718696))

(assert (= (or b!2718706 b!2718696) bm!175453))

(assert (= (or b!2718706 b!2718696) bm!175458))

(assert (= (or b!2718695 b!2718700) bm!175459))

(assert (= (or b!2718695 bm!175458) bm!175450))

(assert (= (or b!2718698 b!2718709) bm!175445))

(assert (= (or bm!175452 bm!175459) bm!175448))

(assert (= (or b!2718698 b!2718709) bm!175455))

(assert (= (or b!2718704 b!2718700) bm!175451))

(assert (= (or bm!175449 bm!175453) bm!175457))

(assert (= (or bm!175456 bm!175450) bm!175460))

(assert (= (or b!2718704 b!2718700) bm!175454))

(assert (= (or b!2718699 bm!175457) bm!175446))

(assert (= (and d!783152 res!1141884) b!2718711))

(assert (= (and b!2718711 res!1141882) b!2718708))

(assert (= (and b!2718708 res!1141881) b!2718710))

(assert (= (and b!2718710 res!1141880) b!2718701))

(declare-fun m!3118065 () Bool)

(assert (=> bm!175460 m!3118065))

(declare-fun m!3118067 () Bool)

(assert (=> bm!175455 m!3118067))

(declare-fun m!3118069 () Bool)

(assert (=> bm!175448 m!3118069))

(declare-fun m!3118071 () Bool)

(assert (=> b!2718701 m!3118071))

(assert (=> b!2718701 m!3117709))

(assert (=> b!2718701 m!3117967))

(assert (=> b!2718701 m!3117709))

(assert (=> b!2718701 m!3117967))

(declare-fun m!3118073 () Bool)

(assert (=> b!2718701 m!3118073))

(declare-fun m!3118075 () Bool)

(assert (=> b!2718710 m!3118075))

(assert (=> b!2718710 m!3117487))

(assert (=> b!2718710 m!3117491))

(assert (=> b!2718710 m!3117487))

(assert (=> b!2718710 m!3117491))

(assert (=> b!2718710 m!3117493))

(declare-fun m!3118077 () Bool)

(assert (=> bm!175446 m!3118077))

(declare-fun m!3118079 () Bool)

(assert (=> bm!175445 m!3118079))

(assert (=> d!783152 m!3117497))

(assert (=> d!783152 m!3117471))

(declare-fun m!3118081 () Bool)

(assert (=> bm!175454 m!3118081))

(assert (=> b!2718708 m!3118075))

(assert (=> b!2718708 m!3117487))

(assert (=> b!2718708 m!3117491))

(assert (=> b!2718708 m!3117487))

(assert (=> b!2718708 m!3117491))

(assert (=> b!2718708 m!3117493))

(declare-fun m!3118083 () Bool)

(assert (=> b!2718693 m!3118083))

(assert (=> b!2718713 m!3117491))

(assert (=> b!2718713 m!3117487))

(declare-fun m!3118085 () Bool)

(assert (=> b!2718711 m!3118085))

(declare-fun m!3118087 () Bool)

(assert (=> bm!175451 m!3118087))

(assert (=> d!783028 d!783152))

(declare-fun d!783172 () Bool)

(declare-fun lt!962192 () Bool)

(declare-fun isEmpty!17895 (List!31463) Bool)

(assert (=> d!783172 (= lt!962192 (isEmpty!17895 (list!11880 (_1!18155 lt!962104))))))

(declare-fun isEmpty!17896 (Conc!9826) Bool)

(assert (=> d!783172 (= lt!962192 (isEmpty!17896 (c!439217 (_1!18155 lt!962104))))))

(assert (=> d!783172 (= (isEmpty!17890 (_1!18155 lt!962104)) lt!962192)))

(declare-fun bs!488291 () Bool)

(assert (= bs!488291 d!783172))

(assert (=> bs!488291 m!3117677))

(assert (=> bs!488291 m!3117677))

(declare-fun m!3118095 () Bool)

(assert (=> bs!488291 m!3118095))

(declare-fun m!3118097 () Bool)

(assert (=> bs!488291 m!3118097))

(assert (=> b!2718284 d!783172))

(declare-fun d!783178 () Bool)

(declare-fun c!439351 () Bool)

(assert (=> d!783178 (= c!439351 ((_ is Nil!31361) lt!962114))))

(declare-fun e!1713539 () (InoxSet C!16060))

(assert (=> d!783178 (= (content!4441 lt!962114) e!1713539)))

(declare-fun b!2718730 () Bool)

(assert (=> b!2718730 (= e!1713539 ((as const (Array C!16060 Bool)) false))))

(declare-fun b!2718731 () Bool)

(assert (=> b!2718731 (= e!1713539 ((_ map or) (store ((as const (Array C!16060 Bool)) false) (h!36781 lt!962114) true) (content!4441 (t!226313 lt!962114))))))

(assert (= (and d!783178 c!439351) b!2718730))

(assert (= (and d!783178 (not c!439351)) b!2718731))

(declare-fun m!3118099 () Bool)

(assert (=> b!2718731 m!3118099))

(declare-fun m!3118101 () Bool)

(assert (=> b!2718731 m!3118101))

(assert (=> d!783094 d!783178))

(declare-fun d!783180 () Bool)

(declare-fun c!439352 () Bool)

(assert (=> d!783180 (= c!439352 ((_ is Nil!31361) (list!11881 treated!9)))))

(declare-fun e!1713540 () (InoxSet C!16060))

(assert (=> d!783180 (= (content!4441 (list!11881 treated!9)) e!1713540)))

(declare-fun b!2718732 () Bool)

(assert (=> b!2718732 (= e!1713540 ((as const (Array C!16060 Bool)) false))))

(declare-fun b!2718733 () Bool)

(assert (=> b!2718733 (= e!1713540 ((_ map or) (store ((as const (Array C!16060 Bool)) false) (h!36781 (list!11881 treated!9)) true) (content!4441 (t!226313 (list!11881 treated!9)))))))

(assert (= (and d!783180 c!439352) b!2718732))

(assert (= (and d!783180 (not c!439352)) b!2718733))

(declare-fun m!3118103 () Bool)

(assert (=> b!2718733 m!3118103))

(declare-fun m!3118105 () Bool)

(assert (=> b!2718733 m!3118105))

(assert (=> d!783094 d!783180))

(declare-fun d!783182 () Bool)

(declare-fun c!439353 () Bool)

(assert (=> d!783182 (= c!439353 ((_ is Nil!31361) (list!11881 input!603)))))

(declare-fun e!1713541 () (InoxSet C!16060))

(assert (=> d!783182 (= (content!4441 (list!11881 input!603)) e!1713541)))

(declare-fun b!2718734 () Bool)

(assert (=> b!2718734 (= e!1713541 ((as const (Array C!16060 Bool)) false))))

(declare-fun b!2718735 () Bool)

(assert (=> b!2718735 (= e!1713541 ((_ map or) (store ((as const (Array C!16060 Bool)) false) (h!36781 (list!11881 input!603)) true) (content!4441 (t!226313 (list!11881 input!603)))))))

(assert (= (and d!783182 c!439353) b!2718734))

(assert (= (and d!783182 (not c!439353)) b!2718735))

(declare-fun m!3118107 () Bool)

(assert (=> b!2718735 m!3118107))

(declare-fun m!3118109 () Bool)

(assert (=> b!2718735 m!3118109))

(assert (=> d!783094 d!783182))

(declare-fun d!783184 () Bool)

(assert (=> d!783184 (= (list!11880 (_1!18155 lt!962104)) (list!11885 (c!439217 (_1!18155 lt!962104))))))

(declare-fun bs!488292 () Bool)

(assert (= bs!488292 d!783184))

(declare-fun m!3118111 () Bool)

(assert (=> bs!488292 m!3118111))

(assert (=> b!2718282 d!783184))

(declare-fun b!2718775 () Bool)

(declare-fun e!1713564 () Bool)

(declare-fun lt!962213 () tuple2!31052)

(assert (=> b!2718775 (= e!1713564 (= (_2!18158 lt!962213) (list!11881 input!603)))))

(declare-fun b!2718777 () Bool)

(declare-fun e!1713563 () tuple2!31052)

(assert (=> b!2718777 (= e!1713563 (tuple2!31053 Nil!31363 (list!11881 input!603)))))

(declare-fun b!2718778 () Bool)

(declare-fun lt!962214 () Option!6194)

(declare-fun lt!962212 () tuple2!31052)

(assert (=> b!2718778 (= e!1713563 (tuple2!31053 (Cons!31363 (_1!18160 (v!33035 lt!962214)) (_1!18158 lt!962212)) (_2!18158 lt!962212)))))

(assert (=> b!2718778 (= lt!962212 (lexList!1226 thiss!11556 rules!1182 (_2!18160 (v!33035 lt!962214))))))

(declare-fun b!2718779 () Bool)

(declare-fun e!1713562 () Bool)

(assert (=> b!2718779 (= e!1713562 (not (isEmpty!17895 (_1!18158 lt!962213))))))

(declare-fun d!783186 () Bool)

(assert (=> d!783186 e!1713564))

(declare-fun c!439363 () Bool)

(assert (=> d!783186 (= c!439363 (> (size!24195 (_1!18158 lt!962213)) 0))))

(assert (=> d!783186 (= lt!962213 e!1713563)))

(declare-fun c!439364 () Bool)

(assert (=> d!783186 (= c!439364 ((_ is Some!6193) lt!962214))))

(assert (=> d!783186 (= lt!962214 (maxPrefix!2367 thiss!11556 rules!1182 (list!11881 input!603)))))

(assert (=> d!783186 (= (lexList!1226 thiss!11556 rules!1182 (list!11881 input!603)) lt!962213)))

(declare-fun b!2718776 () Bool)

(assert (=> b!2718776 (= e!1713564 e!1713562)))

(declare-fun res!1141918 () Bool)

(assert (=> b!2718776 (= res!1141918 (< (size!24192 (_2!18158 lt!962213)) (size!24192 (list!11881 input!603))))))

(assert (=> b!2718776 (=> (not res!1141918) (not e!1713562))))

(assert (= (and d!783186 c!439364) b!2718778))

(assert (= (and d!783186 (not c!439364)) b!2718777))

(assert (= (and d!783186 c!439363) b!2718776))

(assert (= (and d!783186 (not c!439363)) b!2718775))

(assert (= (and b!2718776 res!1141918) b!2718779))

(declare-fun m!3118185 () Bool)

(assert (=> b!2718778 m!3118185))

(declare-fun m!3118187 () Bool)

(assert (=> b!2718779 m!3118187))

(declare-fun m!3118189 () Bool)

(assert (=> d!783186 m!3118189))

(assert (=> d!783186 m!3117427))

(assert (=> d!783186 m!3117813))

(declare-fun m!3118191 () Bool)

(assert (=> b!2718776 m!3118191))

(assert (=> b!2718776 m!3117427))

(assert (=> b!2718776 m!3117473))

(assert (=> b!2718282 d!783186))

(assert (=> b!2718282 d!783098))

(declare-fun d!783226 () Bool)

(assert (=> d!783226 (= (inv!42595 (xs!12896 (c!439215 totalInput!328))) (<= (size!24192 (innerList!9885 (xs!12896 (c!439215 totalInput!328)))) 2147483647))))

(declare-fun bs!488302 () Bool)

(assert (= bs!488302 d!783226))

(declare-fun m!3118193 () Bool)

(assert (=> bs!488302 m!3118193))

(assert (=> b!2718341 d!783226))

(declare-fun b!2718780 () Bool)

(declare-fun res!1141920 () Bool)

(declare-fun e!1713565 () Bool)

(assert (=> b!2718780 (=> (not res!1141920) (not e!1713565))))

(assert (=> b!2718780 (= res!1141920 (isBalanced!2975 (left!24110 (c!439215 input!603))))))

(declare-fun b!2718781 () Bool)

(assert (=> b!2718781 (= e!1713565 (not (isEmpty!17893 (right!24440 (c!439215 input!603)))))))

(declare-fun b!2718782 () Bool)

(declare-fun res!1141919 () Bool)

(assert (=> b!2718782 (=> (not res!1141919) (not e!1713565))))

(assert (=> b!2718782 (= res!1141919 (not (isEmpty!17893 (left!24110 (c!439215 input!603)))))))

(declare-fun b!2718783 () Bool)

(declare-fun e!1713566 () Bool)

(assert (=> b!2718783 (= e!1713566 e!1713565)))

(declare-fun res!1141923 () Bool)

(assert (=> b!2718783 (=> (not res!1141923) (not e!1713565))))

(assert (=> b!2718783 (= res!1141923 (<= (- 1) (- (height!1455 (left!24110 (c!439215 input!603))) (height!1455 (right!24440 (c!439215 input!603))))))))

(declare-fun b!2718784 () Bool)

(declare-fun res!1141921 () Bool)

(assert (=> b!2718784 (=> (not res!1141921) (not e!1713565))))

(assert (=> b!2718784 (= res!1141921 (isBalanced!2975 (right!24440 (c!439215 input!603))))))

(declare-fun b!2718785 () Bool)

(declare-fun res!1141922 () Bool)

(assert (=> b!2718785 (=> (not res!1141922) (not e!1713565))))

(assert (=> b!2718785 (= res!1141922 (<= (- (height!1455 (left!24110 (c!439215 input!603))) (height!1455 (right!24440 (c!439215 input!603)))) 1))))

(declare-fun d!783228 () Bool)

(declare-fun res!1141924 () Bool)

(assert (=> d!783228 (=> res!1141924 e!1713566)))

(assert (=> d!783228 (= res!1141924 (not ((_ is Node!9825) (c!439215 input!603))))))

(assert (=> d!783228 (= (isBalanced!2975 (c!439215 input!603)) e!1713566)))

(assert (= (and d!783228 (not res!1141924)) b!2718783))

(assert (= (and b!2718783 res!1141923) b!2718785))

(assert (= (and b!2718785 res!1141922) b!2718780))

(assert (= (and b!2718780 res!1141920) b!2718784))

(assert (= (and b!2718784 res!1141921) b!2718782))

(assert (= (and b!2718782 res!1141919) b!2718781))

(declare-fun m!3118195 () Bool)

(assert (=> b!2718781 m!3118195))

(declare-fun m!3118197 () Bool)

(assert (=> b!2718780 m!3118197))

(declare-fun m!3118199 () Bool)

(assert (=> b!2718785 m!3118199))

(declare-fun m!3118201 () Bool)

(assert (=> b!2718785 m!3118201))

(declare-fun m!3118203 () Bool)

(assert (=> b!2718782 m!3118203))

(assert (=> b!2718783 m!3118199))

(assert (=> b!2718783 m!3118201))

(declare-fun m!3118205 () Bool)

(assert (=> b!2718784 m!3118205))

(assert (=> d!782996 d!783228))

(declare-fun d!783230 () Bool)

(assert (=> d!783230 (= (list!11881 (_2!18155 lt!962104)) (list!11884 (c!439215 (_2!18155 lt!962104))))))

(declare-fun bs!488303 () Bool)

(assert (= bs!488303 d!783230))

(declare-fun m!3118207 () Bool)

(assert (=> bs!488303 m!3118207))

(assert (=> b!2718280 d!783230))

(assert (=> b!2718280 d!783186))

(assert (=> b!2718280 d!783098))

(declare-fun d!783232 () Bool)

(declare-fun c!439369 () Bool)

(assert (=> d!783232 (= c!439369 ((_ is Empty!9826) (c!439217 (_1!18155 lt!962064))))))

(declare-fun e!1713571 () List!31463)

(assert (=> d!783232 (= (list!11885 (c!439217 (_1!18155 lt!962064))) e!1713571)))

(declare-fun b!2718795 () Bool)

(declare-fun e!1713572 () List!31463)

(assert (=> b!2718795 (= e!1713571 e!1713572)))

(declare-fun c!439370 () Bool)

(assert (=> b!2718795 (= c!439370 ((_ is Leaf!14970) (c!439217 (_1!18155 lt!962064))))))

(declare-fun b!2718797 () Bool)

(assert (=> b!2718797 (= e!1713572 (++!7807 (list!11885 (left!24111 (c!439217 (_1!18155 lt!962064)))) (list!11885 (right!24441 (c!439217 (_1!18155 lt!962064))))))))

(declare-fun b!2718796 () Bool)

(declare-fun list!11887 (IArray!19657) List!31463)

(assert (=> b!2718796 (= e!1713572 (list!11887 (xs!12897 (c!439217 (_1!18155 lt!962064)))))))

(declare-fun b!2718794 () Bool)

(assert (=> b!2718794 (= e!1713571 Nil!31363)))

(assert (= (and d!783232 c!439369) b!2718794))

(assert (= (and d!783232 (not c!439369)) b!2718795))

(assert (= (and b!2718795 c!439370) b!2718796))

(assert (= (and b!2718795 (not c!439370)) b!2718797))

(declare-fun m!3118209 () Bool)

(assert (=> b!2718797 m!3118209))

(declare-fun m!3118211 () Bool)

(assert (=> b!2718797 m!3118211))

(assert (=> b!2718797 m!3118209))

(assert (=> b!2718797 m!3118211))

(declare-fun m!3118213 () Bool)

(assert (=> b!2718797 m!3118213))

(declare-fun m!3118215 () Bool)

(assert (=> b!2718796 m!3118215))

(assert (=> d!783030 d!783232))

(declare-fun d!783234 () Bool)

(assert (=> d!783234 (= (inv!42595 (xs!12896 (c!439215 input!603))) (<= (size!24192 (innerList!9885 (xs!12896 (c!439215 input!603)))) 2147483647))))

(declare-fun bs!488304 () Bool)

(assert (= bs!488304 d!783234))

(declare-fun m!3118217 () Bool)

(assert (=> bs!488304 m!3118217))

(assert (=> b!2718366 d!783234))

(declare-fun d!783236 () Bool)

(declare-fun res!1141929 () Bool)

(declare-fun e!1713575 () Bool)

(assert (=> d!783236 (=> (not res!1141929) (not e!1713575))))

(declare-fun list!11888 (IArray!19655) List!31461)

(assert (=> d!783236 (= res!1141929 (<= (size!24192 (list!11888 (xs!12896 (c!439215 treated!9)))) 512))))

(assert (=> d!783236 (= (inv!42590 (c!439215 treated!9)) e!1713575)))

(declare-fun b!2718802 () Bool)

(declare-fun res!1141930 () Bool)

(assert (=> b!2718802 (=> (not res!1141930) (not e!1713575))))

(assert (=> b!2718802 (= res!1141930 (= (csize!19881 (c!439215 treated!9)) (size!24192 (list!11888 (xs!12896 (c!439215 treated!9))))))))

(declare-fun b!2718803 () Bool)

(assert (=> b!2718803 (= e!1713575 (and (> (csize!19881 (c!439215 treated!9)) 0) (<= (csize!19881 (c!439215 treated!9)) 512)))))

(assert (= (and d!783236 res!1141929) b!2718802))

(assert (= (and b!2718802 res!1141930) b!2718803))

(declare-fun m!3118219 () Bool)

(assert (=> d!783236 m!3118219))

(assert (=> d!783236 m!3118219))

(declare-fun m!3118221 () Bool)

(assert (=> d!783236 m!3118221))

(assert (=> b!2718802 m!3118219))

(assert (=> b!2718802 m!3118219))

(assert (=> b!2718802 m!3118221))

(assert (=> b!2718106 d!783236))

(declare-fun d!783238 () Bool)

(declare-fun e!1713578 () Bool)

(assert (=> d!783238 e!1713578))

(declare-fun res!1141933 () Bool)

(assert (=> d!783238 (=> (not res!1141933) (not e!1713578))))

(declare-fun prepend!1129 (Conc!9826 Token!9060) Conc!9826)

(assert (=> d!783238 (= res!1141933 (isBalanced!2976 (prepend!1129 (c!439217 (_1!18155 lt!962109)) (_1!18159 (v!33032 lt!962111)))))))

(declare-fun lt!962217 () BalanceConc!19266)

(assert (=> d!783238 (= lt!962217 (BalanceConc!19267 (prepend!1129 (c!439217 (_1!18155 lt!962109)) (_1!18159 (v!33032 lt!962111)))))))

(assert (=> d!783238 (= (prepend!1127 (_1!18155 lt!962109) (_1!18159 (v!33032 lt!962111))) lt!962217)))

(declare-fun b!2718806 () Bool)

(assert (=> b!2718806 (= e!1713578 (= (list!11880 lt!962217) (Cons!31363 (_1!18159 (v!33032 lt!962111)) (list!11880 (_1!18155 lt!962109)))))))

(assert (= (and d!783238 res!1141933) b!2718806))

(declare-fun m!3118223 () Bool)

(assert (=> d!783238 m!3118223))

(assert (=> d!783238 m!3118223))

(declare-fun m!3118225 () Bool)

(assert (=> d!783238 m!3118225))

(declare-fun m!3118227 () Bool)

(assert (=> b!2718806 m!3118227))

(declare-fun m!3118229 () Bool)

(assert (=> b!2718806 m!3118229))

(assert (=> b!2718297 d!783238))

(declare-fun b!2718807 () Bool)

(declare-fun e!1713581 () Bool)

(declare-fun lt!962219 () tuple2!31046)

(assert (=> b!2718807 (= e!1713581 (= (list!11881 (_2!18155 lt!962219)) (list!11881 (_2!18159 (v!33032 lt!962111)))))))

(declare-fun b!2718808 () Bool)

(declare-fun e!1713580 () Bool)

(assert (=> b!2718808 (= e!1713581 e!1713580)))

(declare-fun res!1141936 () Bool)

(assert (=> b!2718808 (= res!1141936 (< (size!24188 (_2!18155 lt!962219)) (size!24188 (_2!18159 (v!33032 lt!962111)))))))

(assert (=> b!2718808 (=> (not res!1141936) (not e!1713580))))

(declare-fun e!1713582 () Bool)

(declare-fun b!2718809 () Bool)

(assert (=> b!2718809 (= e!1713582 (= (list!11881 (_2!18155 lt!962219)) (_2!18158 (lexList!1226 thiss!11556 rules!1182 (list!11881 (_2!18159 (v!33032 lt!962111)))))))))

(declare-fun b!2718810 () Bool)

(declare-fun e!1713579 () tuple2!31046)

(assert (=> b!2718810 (= e!1713579 (tuple2!31047 (BalanceConc!19267 Empty!9826) (_2!18159 (v!33032 lt!962111))))))

(declare-fun b!2718812 () Bool)

(declare-fun lt!962218 () tuple2!31046)

(declare-fun lt!962220 () Option!6193)

(assert (=> b!2718812 (= e!1713579 (tuple2!31047 (prepend!1127 (_1!18155 lt!962218) (_1!18159 (v!33032 lt!962220))) (_2!18155 lt!962218)))))

(assert (=> b!2718812 (= lt!962218 (lexRec!655 thiss!11556 rules!1182 (_2!18159 (v!33032 lt!962220))))))

(declare-fun b!2718813 () Bool)

(assert (=> b!2718813 (= e!1713580 (not (isEmpty!17890 (_1!18155 lt!962219))))))

(declare-fun b!2718811 () Bool)

(declare-fun res!1141935 () Bool)

(assert (=> b!2718811 (=> (not res!1141935) (not e!1713582))))

(assert (=> b!2718811 (= res!1141935 (= (list!11880 (_1!18155 lt!962219)) (_1!18158 (lexList!1226 thiss!11556 rules!1182 (list!11881 (_2!18159 (v!33032 lt!962111)))))))))

(declare-fun d!783240 () Bool)

(assert (=> d!783240 e!1713582))

(declare-fun res!1141934 () Bool)

(assert (=> d!783240 (=> (not res!1141934) (not e!1713582))))

(assert (=> d!783240 (= res!1141934 e!1713581)))

(declare-fun c!439372 () Bool)

(assert (=> d!783240 (= c!439372 (> (size!24194 (_1!18155 lt!962219)) 0))))

(assert (=> d!783240 (= lt!962219 e!1713579)))

(declare-fun c!439373 () Bool)

(assert (=> d!783240 (= c!439373 ((_ is Some!6192) lt!962220))))

(assert (=> d!783240 (= lt!962220 (maxPrefixZipperSequence!1043 thiss!11556 rules!1182 (_2!18159 (v!33032 lt!962111))))))

(assert (=> d!783240 (= (lexRec!655 thiss!11556 rules!1182 (_2!18159 (v!33032 lt!962111))) lt!962219)))

(assert (= (and d!783240 c!439373) b!2718812))

(assert (= (and d!783240 (not c!439373)) b!2718810))

(assert (= (and d!783240 c!439372) b!2718808))

(assert (= (and d!783240 (not c!439372)) b!2718807))

(assert (= (and b!2718808 res!1141936) b!2718813))

(assert (= (and d!783240 res!1141934) b!2718811))

(assert (= (and b!2718811 res!1141935) b!2718809))

(declare-fun m!3118231 () Bool)

(assert (=> d!783240 m!3118231))

(declare-fun m!3118233 () Bool)

(assert (=> d!783240 m!3118233))

(declare-fun m!3118235 () Bool)

(assert (=> b!2718807 m!3118235))

(declare-fun m!3118237 () Bool)

(assert (=> b!2718807 m!3118237))

(assert (=> b!2718809 m!3118235))

(assert (=> b!2718809 m!3118237))

(assert (=> b!2718809 m!3118237))

(declare-fun m!3118239 () Bool)

(assert (=> b!2718809 m!3118239))

(declare-fun m!3118241 () Bool)

(assert (=> b!2718808 m!3118241))

(declare-fun m!3118243 () Bool)

(assert (=> b!2718808 m!3118243))

(declare-fun m!3118245 () Bool)

(assert (=> b!2718811 m!3118245))

(assert (=> b!2718811 m!3118237))

(assert (=> b!2718811 m!3118237))

(assert (=> b!2718811 m!3118239))

(declare-fun m!3118247 () Bool)

(assert (=> b!2718812 m!3118247))

(declare-fun m!3118249 () Bool)

(assert (=> b!2718812 m!3118249))

(declare-fun m!3118251 () Bool)

(assert (=> b!2718813 m!3118251))

(assert (=> b!2718297 d!783240))

(declare-fun d!783242 () Bool)

(assert (=> d!783242 (= (height!1454 (++!7806 (c!439217 acc!331) (c!439217 (_1!18155 lt!962066)))) (ite ((_ is Empty!9826) (++!7806 (c!439217 acc!331) (c!439217 (_1!18155 lt!962066)))) 0 (ite ((_ is Leaf!14970) (++!7806 (c!439217 acc!331) (c!439217 (_1!18155 lt!962066)))) 1 (cheight!10037 (++!7806 (c!439217 acc!331) (c!439217 (_1!18155 lt!962066)))))))))

(assert (=> b!2718129 d!783242))

(assert (=> b!2718129 d!783152))

(declare-fun d!783244 () Bool)

(assert (=> d!783244 (= (max!0 (height!1454 (c!439217 acc!331)) (height!1454 (c!439217 (_1!18155 lt!962066)))) (ite (< (height!1454 (c!439217 acc!331)) (height!1454 (c!439217 (_1!18155 lt!962066)))) (height!1454 (c!439217 (_1!18155 lt!962066))) (height!1454 (c!439217 acc!331))))))

(assert (=> b!2718129 d!783244))

(declare-fun d!783246 () Bool)

(assert (=> d!783246 (= (height!1454 (c!439217 (_1!18155 lt!962066))) (ite ((_ is Empty!9826) (c!439217 (_1!18155 lt!962066))) 0 (ite ((_ is Leaf!14970) (c!439217 (_1!18155 lt!962066))) 1 (cheight!10037 (c!439217 (_1!18155 lt!962066))))))))

(assert (=> b!2718129 d!783246))

(declare-fun d!783248 () Bool)

(assert (=> d!783248 (= (height!1454 (c!439217 acc!331)) (ite ((_ is Empty!9826) (c!439217 acc!331)) 0 (ite ((_ is Leaf!14970) (c!439217 acc!331)) 1 (cheight!10037 (c!439217 acc!331)))))))

(assert (=> b!2718129 d!783248))

(assert (=> b!2718278 d!783230))

(assert (=> b!2718278 d!783098))

(assert (=> b!2718091 d!782988))

(assert (=> b!2718128 d!783242))

(assert (=> b!2718128 d!783152))

(assert (=> b!2718128 d!783244))

(assert (=> b!2718128 d!783246))

(assert (=> b!2718128 d!783248))

(declare-fun d!783250 () Bool)

(assert (=> d!783250 (= (inv!42574 (tag!5303 (h!36784 (t!226316 rules!1182)))) (= (mod (str.len (value!154383 (tag!5303 (h!36784 (t!226316 rules!1182))))) 2) 0))))

(assert (=> b!2718363 d!783250))

(declare-fun d!783252 () Bool)

(declare-fun res!1141937 () Bool)

(declare-fun e!1713583 () Bool)

(assert (=> d!783252 (=> (not res!1141937) (not e!1713583))))

(assert (=> d!783252 (= res!1141937 (semiInverseModEq!1977 (toChars!6632 (transformation!4799 (h!36784 (t!226316 rules!1182)))) (toValue!6773 (transformation!4799 (h!36784 (t!226316 rules!1182))))))))

(assert (=> d!783252 (= (inv!42581 (transformation!4799 (h!36784 (t!226316 rules!1182)))) e!1713583)))

(declare-fun b!2718814 () Bool)

(assert (=> b!2718814 (= e!1713583 (equivClasses!1878 (toChars!6632 (transformation!4799 (h!36784 (t!226316 rules!1182)))) (toValue!6773 (transformation!4799 (h!36784 (t!226316 rules!1182))))))))

(assert (= (and d!783252 res!1141937) b!2718814))

(declare-fun m!3118253 () Bool)

(assert (=> d!783252 m!3118253))

(declare-fun m!3118255 () Bool)

(assert (=> b!2718814 m!3118255))

(assert (=> b!2718363 d!783252))

(declare-fun d!783254 () Bool)

(assert (=> d!783254 true))

(declare-fun order!17137 () Int)

(declare-fun lambda!100580 () Int)

(declare-fun dynLambda!13509 (Int Int) Int)

(assert (=> d!783254 (< (dynLambda!13508 order!17135 (toValue!6773 (transformation!4799 (h!36784 rules!1182)))) (dynLambda!13509 order!17137 lambda!100580))))

(declare-fun Forall2!808 (Int) Bool)

(assert (=> d!783254 (= (equivClasses!1878 (toChars!6632 (transformation!4799 (h!36784 rules!1182))) (toValue!6773 (transformation!4799 (h!36784 rules!1182)))) (Forall2!808 lambda!100580))))

(declare-fun bs!488305 () Bool)

(assert (= bs!488305 d!783254))

(declare-fun m!3118257 () Bool)

(assert (=> bs!488305 m!3118257))

(assert (=> b!2718328 d!783254))

(declare-fun d!783256 () Bool)

(assert (=> d!783256 (= (list!11881 (_2!18155 lt!962110)) (list!11884 (c!439215 (_2!18155 lt!962110))))))

(declare-fun bs!488306 () Bool)

(assert (= bs!488306 d!783256))

(declare-fun m!3118259 () Bool)

(assert (=> bs!488306 m!3118259))

(assert (=> b!2718294 d!783256))

(declare-fun b!2718819 () Bool)

(declare-fun e!1713588 () Bool)

(declare-fun lt!962222 () tuple2!31052)

(assert (=> b!2718819 (= e!1713588 (= (_2!18158 lt!962222) (list!11881 treated!9)))))

(declare-fun b!2718821 () Bool)

(declare-fun e!1713587 () tuple2!31052)

(assert (=> b!2718821 (= e!1713587 (tuple2!31053 Nil!31363 (list!11881 treated!9)))))

(declare-fun b!2718822 () Bool)

(declare-fun lt!962223 () Option!6194)

(declare-fun lt!962221 () tuple2!31052)

(assert (=> b!2718822 (= e!1713587 (tuple2!31053 (Cons!31363 (_1!18160 (v!33035 lt!962223)) (_1!18158 lt!962221)) (_2!18158 lt!962221)))))

(assert (=> b!2718822 (= lt!962221 (lexList!1226 thiss!11556 rules!1182 (_2!18160 (v!33035 lt!962223))))))

(declare-fun b!2718823 () Bool)

(declare-fun e!1713586 () Bool)

(assert (=> b!2718823 (= e!1713586 (not (isEmpty!17895 (_1!18158 lt!962222))))))

(declare-fun d!783258 () Bool)

(assert (=> d!783258 e!1713588))

(declare-fun c!439374 () Bool)

(assert (=> d!783258 (= c!439374 (> (size!24195 (_1!18158 lt!962222)) 0))))

(assert (=> d!783258 (= lt!962222 e!1713587)))

(declare-fun c!439375 () Bool)

(assert (=> d!783258 (= c!439375 ((_ is Some!6193) lt!962223))))

(assert (=> d!783258 (= lt!962223 (maxPrefix!2367 thiss!11556 rules!1182 (list!11881 treated!9)))))

(assert (=> d!783258 (= (lexList!1226 thiss!11556 rules!1182 (list!11881 treated!9)) lt!962222)))

(declare-fun b!2718820 () Bool)

(assert (=> b!2718820 (= e!1713588 e!1713586)))

(declare-fun res!1141940 () Bool)

(assert (=> b!2718820 (= res!1141940 (< (size!24192 (_2!18158 lt!962222)) (size!24192 (list!11881 treated!9))))))

(assert (=> b!2718820 (=> (not res!1141940) (not e!1713586))))

(assert (= (and d!783258 c!439375) b!2718822))

(assert (= (and d!783258 (not c!439375)) b!2718821))

(assert (= (and d!783258 c!439374) b!2718820))

(assert (= (and d!783258 (not c!439374)) b!2718819))

(assert (= (and b!2718820 res!1141940) b!2718823))

(declare-fun m!3118261 () Bool)

(assert (=> b!2718822 m!3118261))

(declare-fun m!3118263 () Bool)

(assert (=> b!2718823 m!3118263))

(declare-fun m!3118265 () Bool)

(assert (=> d!783258 m!3118265))

(assert (=> d!783258 m!3117425))

(declare-fun m!3118267 () Bool)

(assert (=> d!783258 m!3118267))

(declare-fun m!3118269 () Bool)

(assert (=> b!2718820 m!3118269))

(assert (=> b!2718820 m!3117425))

(assert (=> b!2718820 m!3117747))

(assert (=> b!2718294 d!783258))

(assert (=> b!2718294 d!783096))

(declare-fun d!783260 () Bool)

(declare-fun res!1141945 () Bool)

(declare-fun e!1713591 () Bool)

(assert (=> d!783260 (=> (not res!1141945) (not e!1713591))))

(assert (=> d!783260 (= res!1141945 (<= (size!24195 (list!11887 (xs!12897 (c!439217 acc!331)))) 512))))

(assert (=> d!783260 (= (inv!42594 (c!439217 acc!331)) e!1713591)))

(declare-fun b!2718828 () Bool)

(declare-fun res!1141946 () Bool)

(assert (=> b!2718828 (=> (not res!1141946) (not e!1713591))))

(assert (=> b!2718828 (= res!1141946 (= (csize!19883 (c!439217 acc!331)) (size!24195 (list!11887 (xs!12897 (c!439217 acc!331))))))))

(declare-fun b!2718829 () Bool)

(assert (=> b!2718829 (= e!1713591 (and (> (csize!19883 (c!439217 acc!331)) 0) (<= (csize!19883 (c!439217 acc!331)) 512)))))

(assert (= (and d!783260 res!1141945) b!2718828))

(assert (= (and b!2718828 res!1141946) b!2718829))

(declare-fun m!3118271 () Bool)

(assert (=> d!783260 m!3118271))

(assert (=> d!783260 m!3118271))

(declare-fun m!3118273 () Bool)

(assert (=> d!783260 m!3118273))

(assert (=> b!2718828 m!3118271))

(assert (=> b!2718828 m!3118271))

(assert (=> b!2718828 m!3118273))

(assert (=> b!2718310 d!783260))

(assert (=> b!2718292 d!783256))

(assert (=> b!2718292 d!783096))

(declare-fun d!783262 () Bool)

(declare-fun c!439376 () Bool)

(assert (=> d!783262 (= c!439376 ((_ is Node!9826) (left!24111 (c!439217 acc!331))))))

(declare-fun e!1713592 () Bool)

(assert (=> d!783262 (= (inv!42582 (left!24111 (c!439217 acc!331))) e!1713592)))

(declare-fun b!2718830 () Bool)

(assert (=> b!2718830 (= e!1713592 (inv!42593 (left!24111 (c!439217 acc!331))))))

(declare-fun b!2718831 () Bool)

(declare-fun e!1713593 () Bool)

(assert (=> b!2718831 (= e!1713592 e!1713593)))

(declare-fun res!1141947 () Bool)

(assert (=> b!2718831 (= res!1141947 (not ((_ is Leaf!14970) (left!24111 (c!439217 acc!331)))))))

(assert (=> b!2718831 (=> res!1141947 e!1713593)))

(declare-fun b!2718832 () Bool)

(assert (=> b!2718832 (= e!1713593 (inv!42594 (left!24111 (c!439217 acc!331))))))

(assert (= (and d!783262 c!439376) b!2718830))

(assert (= (and d!783262 (not c!439376)) b!2718831))

(assert (= (and b!2718831 (not res!1141947)) b!2718832))

(declare-fun m!3118275 () Bool)

(assert (=> b!2718830 m!3118275))

(declare-fun m!3118277 () Bool)

(assert (=> b!2718832 m!3118277))

(assert (=> b!2718351 d!783262))

(declare-fun d!783264 () Bool)

(declare-fun c!439377 () Bool)

(assert (=> d!783264 (= c!439377 ((_ is Node!9826) (right!24441 (c!439217 acc!331))))))

(declare-fun e!1713594 () Bool)

(assert (=> d!783264 (= (inv!42582 (right!24441 (c!439217 acc!331))) e!1713594)))

(declare-fun b!2718833 () Bool)

(assert (=> b!2718833 (= e!1713594 (inv!42593 (right!24441 (c!439217 acc!331))))))

(declare-fun b!2718834 () Bool)

(declare-fun e!1713595 () Bool)

(assert (=> b!2718834 (= e!1713594 e!1713595)))

(declare-fun res!1141948 () Bool)

(assert (=> b!2718834 (= res!1141948 (not ((_ is Leaf!14970) (right!24441 (c!439217 acc!331)))))))

(assert (=> b!2718834 (=> res!1141948 e!1713595)))

(declare-fun b!2718835 () Bool)

(assert (=> b!2718835 (= e!1713595 (inv!42594 (right!24441 (c!439217 acc!331))))))

(assert (= (and d!783264 c!439377) b!2718833))

(assert (= (and d!783264 (not c!439377)) b!2718834))

(assert (= (and b!2718834 (not res!1141948)) b!2718835))

(declare-fun m!3118279 () Bool)

(assert (=> b!2718833 m!3118279))

(declare-fun m!3118281 () Bool)

(assert (=> b!2718835 m!3118281))

(assert (=> b!2718351 d!783264))

(assert (=> b!2718087 d!783022))

(declare-fun d!783266 () Bool)

(declare-fun res!1141955 () Bool)

(declare-fun e!1713598 () Bool)

(assert (=> d!783266 (=> (not res!1141955) (not e!1713598))))

(assert (=> d!783266 (= res!1141955 (= (csize!19882 (c!439217 acc!331)) (+ (size!24196 (left!24111 (c!439217 acc!331))) (size!24196 (right!24441 (c!439217 acc!331))))))))

(assert (=> d!783266 (= (inv!42593 (c!439217 acc!331)) e!1713598)))

(declare-fun b!2718842 () Bool)

(declare-fun res!1141956 () Bool)

(assert (=> b!2718842 (=> (not res!1141956) (not e!1713598))))

(assert (=> b!2718842 (= res!1141956 (and (not (= (left!24111 (c!439217 acc!331)) Empty!9826)) (not (= (right!24441 (c!439217 acc!331)) Empty!9826))))))

(declare-fun b!2718843 () Bool)

(declare-fun res!1141957 () Bool)

(assert (=> b!2718843 (=> (not res!1141957) (not e!1713598))))

(assert (=> b!2718843 (= res!1141957 (= (cheight!10037 (c!439217 acc!331)) (+ (max!0 (height!1454 (left!24111 (c!439217 acc!331))) (height!1454 (right!24441 (c!439217 acc!331)))) 1)))))

(declare-fun b!2718844 () Bool)

(assert (=> b!2718844 (= e!1713598 (<= 0 (cheight!10037 (c!439217 acc!331))))))

(assert (= (and d!783266 res!1141955) b!2718842))

(assert (= (and b!2718842 res!1141956) b!2718843))

(assert (= (and b!2718843 res!1141957) b!2718844))

(declare-fun m!3118283 () Bool)

(assert (=> d!783266 m!3118283))

(declare-fun m!3118285 () Bool)

(assert (=> d!783266 m!3118285))

(declare-fun m!3118287 () Bool)

(assert (=> b!2718843 m!3118287))

(declare-fun m!3118289 () Bool)

(assert (=> b!2718843 m!3118289))

(assert (=> b!2718843 m!3118287))

(assert (=> b!2718843 m!3118289))

(declare-fun m!3118291 () Bool)

(assert (=> b!2718843 m!3118291))

(assert (=> b!2718308 d!783266))

(declare-fun d!783268 () Bool)

(declare-fun c!439378 () Bool)

(assert (=> d!783268 (= c!439378 ((_ is Empty!9826) (c!439217 (_1!18155 lt!962065))))))

(declare-fun e!1713599 () List!31463)

(assert (=> d!783268 (= (list!11885 (c!439217 (_1!18155 lt!962065))) e!1713599)))

(declare-fun b!2718846 () Bool)

(declare-fun e!1713600 () List!31463)

(assert (=> b!2718846 (= e!1713599 e!1713600)))

(declare-fun c!439379 () Bool)

(assert (=> b!2718846 (= c!439379 ((_ is Leaf!14970) (c!439217 (_1!18155 lt!962065))))))

(declare-fun b!2718848 () Bool)

(assert (=> b!2718848 (= e!1713600 (++!7807 (list!11885 (left!24111 (c!439217 (_1!18155 lt!962065)))) (list!11885 (right!24441 (c!439217 (_1!18155 lt!962065))))))))

(declare-fun b!2718847 () Bool)

(assert (=> b!2718847 (= e!1713600 (list!11887 (xs!12897 (c!439217 (_1!18155 lt!962065)))))))

(declare-fun b!2718845 () Bool)

(assert (=> b!2718845 (= e!1713599 Nil!31363)))

(assert (= (and d!783268 c!439378) b!2718845))

(assert (= (and d!783268 (not c!439378)) b!2718846))

(assert (= (and b!2718846 c!439379) b!2718847))

(assert (= (and b!2718846 (not c!439379)) b!2718848))

(declare-fun m!3118293 () Bool)

(assert (=> b!2718848 m!3118293))

(declare-fun m!3118295 () Bool)

(assert (=> b!2718848 m!3118295))

(assert (=> b!2718848 m!3118293))

(assert (=> b!2718848 m!3118295))

(declare-fun m!3118297 () Bool)

(assert (=> b!2718848 m!3118297))

(declare-fun m!3118299 () Bool)

(assert (=> b!2718847 m!3118299))

(assert (=> d!783080 d!783268))

(declare-fun d!783270 () Bool)

(declare-fun res!1141962 () Bool)

(declare-fun e!1713605 () Bool)

(assert (=> d!783270 (=> res!1141962 e!1713605)))

(assert (=> d!783270 (= res!1141962 ((_ is Nil!31364) rules!1182))))

(assert (=> d!783270 (= (noDuplicateTag!1780 thiss!11556 rules!1182 Nil!31366) e!1713605)))

(declare-fun b!2718853 () Bool)

(declare-fun e!1713606 () Bool)

(assert (=> b!2718853 (= e!1713605 e!1713606)))

(declare-fun res!1141963 () Bool)

(assert (=> b!2718853 (=> (not res!1141963) (not e!1713606))))

(declare-fun contains!5958 (List!31466 String!35005) Bool)

(assert (=> b!2718853 (= res!1141963 (not (contains!5958 Nil!31366 (tag!5303 (h!36784 rules!1182)))))))

(declare-fun b!2718854 () Bool)

(assert (=> b!2718854 (= e!1713606 (noDuplicateTag!1780 thiss!11556 (t!226316 rules!1182) (Cons!31366 (tag!5303 (h!36784 rules!1182)) Nil!31366)))))

(assert (= (and d!783270 (not res!1141962)) b!2718853))

(assert (= (and b!2718853 res!1141963) b!2718854))

(declare-fun m!3118301 () Bool)

(assert (=> b!2718853 m!3118301))

(declare-fun m!3118303 () Bool)

(assert (=> b!2718854 m!3118303))

(assert (=> b!2718313 d!783270))

(declare-fun b!2718866 () Bool)

(declare-fun e!1713612 () List!31461)

(assert (=> b!2718866 (= e!1713612 (++!7803 (list!11884 (left!24110 (c!439215 treated!9))) (list!11884 (right!24440 (c!439215 treated!9)))))))

(declare-fun d!783272 () Bool)

(declare-fun c!439384 () Bool)

(assert (=> d!783272 (= c!439384 ((_ is Empty!9825) (c!439215 treated!9)))))

(declare-fun e!1713611 () List!31461)

(assert (=> d!783272 (= (list!11884 (c!439215 treated!9)) e!1713611)))

(declare-fun b!2718864 () Bool)

(assert (=> b!2718864 (= e!1713611 e!1713612)))

(declare-fun c!439385 () Bool)

(assert (=> b!2718864 (= c!439385 ((_ is Leaf!14969) (c!439215 treated!9)))))

(declare-fun b!2718863 () Bool)

(assert (=> b!2718863 (= e!1713611 Nil!31361)))

(declare-fun b!2718865 () Bool)

(assert (=> b!2718865 (= e!1713612 (list!11888 (xs!12896 (c!439215 treated!9))))))

(assert (= (and d!783272 c!439384) b!2718863))

(assert (= (and d!783272 (not c!439384)) b!2718864))

(assert (= (and b!2718864 c!439385) b!2718865))

(assert (= (and b!2718864 (not c!439385)) b!2718866))

(declare-fun m!3118305 () Bool)

(assert (=> b!2718866 m!3118305))

(declare-fun m!3118307 () Bool)

(assert (=> b!2718866 m!3118307))

(assert (=> b!2718866 m!3118305))

(assert (=> b!2718866 m!3118307))

(declare-fun m!3118309 () Bool)

(assert (=> b!2718866 m!3118309))

(assert (=> b!2718865 m!3118219))

(assert (=> d!783096 d!783272))

(assert (=> b!2718085 d!783086))

(declare-fun d!783274 () Bool)

(declare-fun e!1713613 () Bool)

(assert (=> d!783274 e!1713613))

(declare-fun res!1141964 () Bool)

(assert (=> d!783274 (=> (not res!1141964) (not e!1713613))))

(assert (=> d!783274 (= res!1141964 (isBalanced!2976 (prepend!1129 (c!439217 (_1!18155 lt!962106)) (_1!18159 (v!33032 lt!962108)))))))

(declare-fun lt!962224 () BalanceConc!19266)

(assert (=> d!783274 (= lt!962224 (BalanceConc!19267 (prepend!1129 (c!439217 (_1!18155 lt!962106)) (_1!18159 (v!33032 lt!962108)))))))

(assert (=> d!783274 (= (prepend!1127 (_1!18155 lt!962106) (_1!18159 (v!33032 lt!962108))) lt!962224)))

(declare-fun b!2718867 () Bool)

(assert (=> b!2718867 (= e!1713613 (= (list!11880 lt!962224) (Cons!31363 (_1!18159 (v!33032 lt!962108)) (list!11880 (_1!18155 lt!962106)))))))

(assert (= (and d!783274 res!1141964) b!2718867))

(declare-fun m!3118311 () Bool)

(assert (=> d!783274 m!3118311))

(assert (=> d!783274 m!3118311))

(declare-fun m!3118313 () Bool)

(assert (=> d!783274 m!3118313))

(declare-fun m!3118315 () Bool)

(assert (=> b!2718867 m!3118315))

(declare-fun m!3118317 () Bool)

(assert (=> b!2718867 m!3118317))

(assert (=> b!2718290 d!783274))

(declare-fun b!2718868 () Bool)

(declare-fun e!1713616 () Bool)

(declare-fun lt!962226 () tuple2!31046)

(assert (=> b!2718868 (= e!1713616 (= (list!11881 (_2!18155 lt!962226)) (list!11881 (_2!18159 (v!33032 lt!962108)))))))

(declare-fun b!2718869 () Bool)

(declare-fun e!1713615 () Bool)

(assert (=> b!2718869 (= e!1713616 e!1713615)))

(declare-fun res!1141967 () Bool)

(assert (=> b!2718869 (= res!1141967 (< (size!24188 (_2!18155 lt!962226)) (size!24188 (_2!18159 (v!33032 lt!962108)))))))

(assert (=> b!2718869 (=> (not res!1141967) (not e!1713615))))

(declare-fun e!1713617 () Bool)

(declare-fun b!2718870 () Bool)

(assert (=> b!2718870 (= e!1713617 (= (list!11881 (_2!18155 lt!962226)) (_2!18158 (lexList!1226 thiss!11556 rules!1182 (list!11881 (_2!18159 (v!33032 lt!962108)))))))))

(declare-fun b!2718871 () Bool)

(declare-fun e!1713614 () tuple2!31046)

(assert (=> b!2718871 (= e!1713614 (tuple2!31047 (BalanceConc!19267 Empty!9826) (_2!18159 (v!33032 lt!962108))))))

(declare-fun b!2718873 () Bool)

(declare-fun lt!962225 () tuple2!31046)

(declare-fun lt!962227 () Option!6193)

(assert (=> b!2718873 (= e!1713614 (tuple2!31047 (prepend!1127 (_1!18155 lt!962225) (_1!18159 (v!33032 lt!962227))) (_2!18155 lt!962225)))))

(assert (=> b!2718873 (= lt!962225 (lexRec!655 thiss!11556 rules!1182 (_2!18159 (v!33032 lt!962227))))))

(declare-fun b!2718874 () Bool)

(assert (=> b!2718874 (= e!1713615 (not (isEmpty!17890 (_1!18155 lt!962226))))))

(declare-fun b!2718872 () Bool)

(declare-fun res!1141966 () Bool)

(assert (=> b!2718872 (=> (not res!1141966) (not e!1713617))))

(assert (=> b!2718872 (= res!1141966 (= (list!11880 (_1!18155 lt!962226)) (_1!18158 (lexList!1226 thiss!11556 rules!1182 (list!11881 (_2!18159 (v!33032 lt!962108)))))))))

(declare-fun d!783276 () Bool)

(assert (=> d!783276 e!1713617))

(declare-fun res!1141965 () Bool)

(assert (=> d!783276 (=> (not res!1141965) (not e!1713617))))

(assert (=> d!783276 (= res!1141965 e!1713616)))

(declare-fun c!439386 () Bool)

(assert (=> d!783276 (= c!439386 (> (size!24194 (_1!18155 lt!962226)) 0))))

(assert (=> d!783276 (= lt!962226 e!1713614)))

(declare-fun c!439387 () Bool)

(assert (=> d!783276 (= c!439387 ((_ is Some!6192) lt!962227))))

(assert (=> d!783276 (= lt!962227 (maxPrefixZipperSequence!1043 thiss!11556 rules!1182 (_2!18159 (v!33032 lt!962108))))))

(assert (=> d!783276 (= (lexRec!655 thiss!11556 rules!1182 (_2!18159 (v!33032 lt!962108))) lt!962226)))

(assert (= (and d!783276 c!439387) b!2718873))

(assert (= (and d!783276 (not c!439387)) b!2718871))

(assert (= (and d!783276 c!439386) b!2718869))

(assert (= (and d!783276 (not c!439386)) b!2718868))

(assert (= (and b!2718869 res!1141967) b!2718874))

(assert (= (and d!783276 res!1141965) b!2718872))

(assert (= (and b!2718872 res!1141966) b!2718870))

(declare-fun m!3118319 () Bool)

(assert (=> d!783276 m!3118319))

(declare-fun m!3118321 () Bool)

(assert (=> d!783276 m!3118321))

(declare-fun m!3118323 () Bool)

(assert (=> b!2718868 m!3118323))

(declare-fun m!3118325 () Bool)

(assert (=> b!2718868 m!3118325))

(assert (=> b!2718870 m!3118323))

(assert (=> b!2718870 m!3118325))

(assert (=> b!2718870 m!3118325))

(declare-fun m!3118327 () Bool)

(assert (=> b!2718870 m!3118327))

(declare-fun m!3118329 () Bool)

(assert (=> b!2718869 m!3118329))

(declare-fun m!3118331 () Bool)

(assert (=> b!2718869 m!3118331))

(declare-fun m!3118333 () Bool)

(assert (=> b!2718872 m!3118333))

(assert (=> b!2718872 m!3118325))

(assert (=> b!2718872 m!3118325))

(assert (=> b!2718872 m!3118327))

(declare-fun m!3118335 () Bool)

(assert (=> b!2718873 m!3118335))

(declare-fun m!3118337 () Bool)

(assert (=> b!2718873 m!3118337))

(declare-fun m!3118339 () Bool)

(assert (=> b!2718874 m!3118339))

(assert (=> b!2718290 d!783276))

(declare-fun b!2718887 () Bool)

(declare-fun e!1713623 () Bool)

(declare-fun e!1713622 () Bool)

(assert (=> b!2718887 (= e!1713623 e!1713622)))

(declare-fun res!1141984 () Bool)

(assert (=> b!2718887 (=> (not res!1141984) (not e!1713622))))

(assert (=> b!2718887 (= res!1141984 (<= (- 1) (- (height!1454 (left!24111 (c!439217 acc!331))) (height!1454 (right!24441 (c!439217 acc!331))))))))

(declare-fun b!2718888 () Bool)

(declare-fun res!1141980 () Bool)

(assert (=> b!2718888 (=> (not res!1141980) (not e!1713622))))

(assert (=> b!2718888 (= res!1141980 (not (isEmpty!17896 (left!24111 (c!439217 acc!331)))))))

(declare-fun d!783278 () Bool)

(declare-fun res!1141981 () Bool)

(assert (=> d!783278 (=> res!1141981 e!1713623)))

(assert (=> d!783278 (= res!1141981 (not ((_ is Node!9826) (c!439217 acc!331))))))

(assert (=> d!783278 (= (isBalanced!2976 (c!439217 acc!331)) e!1713623)))

(declare-fun b!2718889 () Bool)

(declare-fun res!1141985 () Bool)

(assert (=> b!2718889 (=> (not res!1141985) (not e!1713622))))

(assert (=> b!2718889 (= res!1141985 (isBalanced!2976 (right!24441 (c!439217 acc!331))))))

(declare-fun b!2718890 () Bool)

(assert (=> b!2718890 (= e!1713622 (not (isEmpty!17896 (right!24441 (c!439217 acc!331)))))))

(declare-fun b!2718891 () Bool)

(declare-fun res!1141983 () Bool)

(assert (=> b!2718891 (=> (not res!1141983) (not e!1713622))))

(assert (=> b!2718891 (= res!1141983 (<= (- (height!1454 (left!24111 (c!439217 acc!331))) (height!1454 (right!24441 (c!439217 acc!331)))) 1))))

(declare-fun b!2718892 () Bool)

(declare-fun res!1141982 () Bool)

(assert (=> b!2718892 (=> (not res!1141982) (not e!1713622))))

(assert (=> b!2718892 (= res!1141982 (isBalanced!2976 (left!24111 (c!439217 acc!331))))))

(assert (= (and d!783278 (not res!1141981)) b!2718887))

(assert (= (and b!2718887 res!1141984) b!2718891))

(assert (= (and b!2718891 res!1141983) b!2718892))

(assert (= (and b!2718892 res!1141982) b!2718889))

(assert (= (and b!2718889 res!1141985) b!2718888))

(assert (= (and b!2718888 res!1141980) b!2718890))

(declare-fun m!3118341 () Bool)

(assert (=> b!2718889 m!3118341))

(declare-fun m!3118343 () Bool)

(assert (=> b!2718888 m!3118343))

(declare-fun m!3118345 () Bool)

(assert (=> b!2718890 m!3118345))

(assert (=> b!2718887 m!3118287))

(assert (=> b!2718887 m!3118289))

(assert (=> b!2718891 m!3118287))

(assert (=> b!2718891 m!3118289))

(declare-fun m!3118347 () Bool)

(assert (=> b!2718892 m!3118347))

(assert (=> d!783000 d!783278))

(declare-fun d!783280 () Bool)

(declare-fun res!1141986 () Bool)

(declare-fun e!1713626 () Bool)

(assert (=> d!783280 (=> (not res!1141986) (not e!1713626))))

(assert (=> d!783280 (= res!1141986 (<= (size!24192 (list!11888 (xs!12896 (c!439215 totalInput!328)))) 512))))

(assert (=> d!783280 (= (inv!42590 (c!439215 totalInput!328)) e!1713626)))

(declare-fun b!2718897 () Bool)

(declare-fun res!1141987 () Bool)

(assert (=> b!2718897 (=> (not res!1141987) (not e!1713626))))

(assert (=> b!2718897 (= res!1141987 (= (csize!19881 (c!439215 totalInput!328)) (size!24192 (list!11888 (xs!12896 (c!439215 totalInput!328))))))))

(declare-fun b!2718898 () Bool)

(assert (=> b!2718898 (= e!1713626 (and (> (csize!19881 (c!439215 totalInput!328)) 0) (<= (csize!19881 (c!439215 totalInput!328)) 512)))))

(assert (= (and d!783280 res!1141986) b!2718897))

(assert (= (and b!2718897 res!1141987) b!2718898))

(declare-fun m!3118349 () Bool)

(assert (=> d!783280 m!3118349))

(assert (=> d!783280 m!3118349))

(declare-fun m!3118351 () Bool)

(assert (=> d!783280 m!3118351))

(assert (=> b!2718897 m!3118349))

(assert (=> b!2718897 m!3118349))

(assert (=> b!2718897 m!3118351))

(assert (=> b!2718301 d!783280))

(declare-fun d!783282 () Bool)

(assert (=> d!783282 (= (list!11881 (_2!18155 lt!962107)) (list!11884 (c!439215 (_2!18155 lt!962107))))))

(declare-fun bs!488307 () Bool)

(assert (= bs!488307 d!783282))

(declare-fun m!3118353 () Bool)

(assert (=> bs!488307 m!3118353))

(assert (=> b!2718285 d!783282))

(assert (=> b!2718285 d!783092))

(declare-fun b!2718902 () Bool)

(declare-fun e!1713628 () List!31461)

(assert (=> b!2718902 (= e!1713628 (++!7803 (list!11884 (left!24110 (c!439215 (_2!18155 lt!962064)))) (list!11884 (right!24440 (c!439215 (_2!18155 lt!962064))))))))

(declare-fun d!783284 () Bool)

(declare-fun c!439390 () Bool)

(assert (=> d!783284 (= c!439390 ((_ is Empty!9825) (c!439215 (_2!18155 lt!962064))))))

(declare-fun e!1713627 () List!31461)

(assert (=> d!783284 (= (list!11884 (c!439215 (_2!18155 lt!962064))) e!1713627)))

(declare-fun b!2718900 () Bool)

(assert (=> b!2718900 (= e!1713627 e!1713628)))

(declare-fun c!439391 () Bool)

(assert (=> b!2718900 (= c!439391 ((_ is Leaf!14969) (c!439215 (_2!18155 lt!962064))))))

(declare-fun b!2718899 () Bool)

(assert (=> b!2718899 (= e!1713627 Nil!31361)))

(declare-fun b!2718901 () Bool)

(assert (=> b!2718901 (= e!1713628 (list!11888 (xs!12896 (c!439215 (_2!18155 lt!962064)))))))

(assert (= (and d!783284 c!439390) b!2718899))

(assert (= (and d!783284 (not c!439390)) b!2718900))

(assert (= (and b!2718900 c!439391) b!2718901))

(assert (= (and b!2718900 (not c!439391)) b!2718902))

(declare-fun m!3118355 () Bool)

(assert (=> b!2718902 m!3118355))

(declare-fun m!3118357 () Bool)

(assert (=> b!2718902 m!3118357))

(assert (=> b!2718902 m!3118355))

(assert (=> b!2718902 m!3118357))

(declare-fun m!3118359 () Bool)

(assert (=> b!2718902 m!3118359))

(declare-fun m!3118361 () Bool)

(assert (=> b!2718901 m!3118361))

(assert (=> d!783016 d!783284))

(declare-fun d!783286 () Bool)

(declare-fun res!1142006 () Bool)

(declare-fun e!1713641 () Bool)

(assert (=> d!783286 (=> (not res!1142006) (not e!1713641))))

(assert (=> d!783286 (= res!1142006 (= (csize!19880 (c!439215 totalInput!328)) (+ (size!24193 (left!24110 (c!439215 totalInput!328))) (size!24193 (right!24440 (c!439215 totalInput!328))))))))

(assert (=> d!783286 (= (inv!42589 (c!439215 totalInput!328)) e!1713641)))

(declare-fun b!2718921 () Bool)

(declare-fun res!1142007 () Bool)

(assert (=> b!2718921 (=> (not res!1142007) (not e!1713641))))

(assert (=> b!2718921 (= res!1142007 (and (not (= (left!24110 (c!439215 totalInput!328)) Empty!9825)) (not (= (right!24440 (c!439215 totalInput!328)) Empty!9825))))))

(declare-fun b!2718922 () Bool)

(declare-fun res!1142008 () Bool)

(assert (=> b!2718922 (=> (not res!1142008) (not e!1713641))))

(assert (=> b!2718922 (= res!1142008 (= (cheight!10036 (c!439215 totalInput!328)) (+ (max!0 (height!1455 (left!24110 (c!439215 totalInput!328))) (height!1455 (right!24440 (c!439215 totalInput!328)))) 1)))))

(declare-fun b!2718923 () Bool)

(assert (=> b!2718923 (= e!1713641 (<= 0 (cheight!10036 (c!439215 totalInput!328))))))

(assert (= (and d!783286 res!1142006) b!2718921))

(assert (= (and b!2718921 res!1142007) b!2718922))

(assert (= (and b!2718922 res!1142008) b!2718923))

(declare-fun m!3118363 () Bool)

(assert (=> d!783286 m!3118363))

(declare-fun m!3118365 () Bool)

(assert (=> d!783286 m!3118365))

(declare-fun m!3118367 () Bool)

(assert (=> b!2718922 m!3118367))

(declare-fun m!3118369 () Bool)

(assert (=> b!2718922 m!3118369))

(assert (=> b!2718922 m!3118367))

(assert (=> b!2718922 m!3118369))

(declare-fun m!3118371 () Bool)

(assert (=> b!2718922 m!3118371))

(assert (=> b!2718299 d!783286))

(declare-fun b!2718924 () Bool)

(declare-fun res!1142010 () Bool)

(declare-fun e!1713642 () Bool)

(assert (=> b!2718924 (=> (not res!1142010) (not e!1713642))))

(assert (=> b!2718924 (= res!1142010 (isBalanced!2975 (left!24110 (c!439215 totalInput!328))))))

(declare-fun b!2718925 () Bool)

(assert (=> b!2718925 (= e!1713642 (not (isEmpty!17893 (right!24440 (c!439215 totalInput!328)))))))

(declare-fun b!2718926 () Bool)

(declare-fun res!1142009 () Bool)

(assert (=> b!2718926 (=> (not res!1142009) (not e!1713642))))

(assert (=> b!2718926 (= res!1142009 (not (isEmpty!17893 (left!24110 (c!439215 totalInput!328)))))))

(declare-fun b!2718927 () Bool)

(declare-fun e!1713643 () Bool)

(assert (=> b!2718927 (= e!1713643 e!1713642)))

(declare-fun res!1142013 () Bool)

(assert (=> b!2718927 (=> (not res!1142013) (not e!1713642))))

(assert (=> b!2718927 (= res!1142013 (<= (- 1) (- (height!1455 (left!24110 (c!439215 totalInput!328))) (height!1455 (right!24440 (c!439215 totalInput!328))))))))

(declare-fun b!2718928 () Bool)

(declare-fun res!1142011 () Bool)

(assert (=> b!2718928 (=> (not res!1142011) (not e!1713642))))

(assert (=> b!2718928 (= res!1142011 (isBalanced!2975 (right!24440 (c!439215 totalInput!328))))))

(declare-fun b!2718929 () Bool)

(declare-fun res!1142012 () Bool)

(assert (=> b!2718929 (=> (not res!1142012) (not e!1713642))))

(assert (=> b!2718929 (= res!1142012 (<= (- (height!1455 (left!24110 (c!439215 totalInput!328))) (height!1455 (right!24440 (c!439215 totalInput!328)))) 1))))

(declare-fun d!783288 () Bool)

(declare-fun res!1142014 () Bool)

(assert (=> d!783288 (=> res!1142014 e!1713643)))

(assert (=> d!783288 (= res!1142014 (not ((_ is Node!9825) (c!439215 totalInput!328))))))

(assert (=> d!783288 (= (isBalanced!2975 (c!439215 totalInput!328)) e!1713643)))

(assert (= (and d!783288 (not res!1142014)) b!2718927))

(assert (= (and b!2718927 res!1142013) b!2718929))

(assert (= (and b!2718929 res!1142012) b!2718924))

(assert (= (and b!2718924 res!1142010) b!2718928))

(assert (= (and b!2718928 res!1142011) b!2718926))

(assert (= (and b!2718926 res!1142009) b!2718925))

(declare-fun m!3118373 () Bool)

(assert (=> b!2718925 m!3118373))

(declare-fun m!3118375 () Bool)

(assert (=> b!2718924 m!3118375))

(assert (=> b!2718929 m!3118367))

(assert (=> b!2718929 m!3118369))

(declare-fun m!3118377 () Bool)

(assert (=> b!2718926 m!3118377))

(assert (=> b!2718927 m!3118367))

(assert (=> b!2718927 m!3118369))

(declare-fun m!3118379 () Bool)

(assert (=> b!2718928 m!3118379))

(assert (=> d!782998 d!783288))

(declare-fun d!783290 () Bool)

(declare-fun c!439392 () Bool)

(assert (=> d!783290 (= c!439392 ((_ is Empty!9826) (c!439217 (++!7802 acc!331 (_1!18155 lt!962066)))))))

(declare-fun e!1713644 () List!31463)

(assert (=> d!783290 (= (list!11885 (c!439217 (++!7802 acc!331 (_1!18155 lt!962066)))) e!1713644)))

(declare-fun b!2718931 () Bool)

(declare-fun e!1713645 () List!31463)

(assert (=> b!2718931 (= e!1713644 e!1713645)))

(declare-fun c!439393 () Bool)

(assert (=> b!2718931 (= c!439393 ((_ is Leaf!14970) (c!439217 (++!7802 acc!331 (_1!18155 lt!962066)))))))

(declare-fun b!2718933 () Bool)

(assert (=> b!2718933 (= e!1713645 (++!7807 (list!11885 (left!24111 (c!439217 (++!7802 acc!331 (_1!18155 lt!962066))))) (list!11885 (right!24441 (c!439217 (++!7802 acc!331 (_1!18155 lt!962066)))))))))

(declare-fun b!2718932 () Bool)

(assert (=> b!2718932 (= e!1713645 (list!11887 (xs!12897 (c!439217 (++!7802 acc!331 (_1!18155 lt!962066))))))))

(declare-fun b!2718930 () Bool)

(assert (=> b!2718930 (= e!1713644 Nil!31363)))

(assert (= (and d!783290 c!439392) b!2718930))

(assert (= (and d!783290 (not c!439392)) b!2718931))

(assert (= (and b!2718931 c!439393) b!2718932))

(assert (= (and b!2718931 (not c!439393)) b!2718933))

(declare-fun m!3118381 () Bool)

(assert (=> b!2718933 m!3118381))

(declare-fun m!3118383 () Bool)

(assert (=> b!2718933 m!3118383))

(assert (=> b!2718933 m!3118381))

(assert (=> b!2718933 m!3118383))

(declare-fun m!3118385 () Bool)

(assert (=> b!2718933 m!3118385))

(declare-fun m!3118387 () Bool)

(assert (=> b!2718932 m!3118387))

(assert (=> d!783076 d!783290))

(declare-fun d!783292 () Bool)

(declare-fun e!1713646 () Bool)

(assert (=> d!783292 e!1713646))

(declare-fun res!1142015 () Bool)

(assert (=> d!783292 (=> (not res!1142015) (not e!1713646))))

(assert (=> d!783292 (= res!1142015 (isBalanced!2976 (prepend!1129 (c!439217 (_1!18155 lt!962103)) (_1!18159 (v!33032 lt!962105)))))))

(declare-fun lt!962242 () BalanceConc!19266)

(assert (=> d!783292 (= lt!962242 (BalanceConc!19267 (prepend!1129 (c!439217 (_1!18155 lt!962103)) (_1!18159 (v!33032 lt!962105)))))))

(assert (=> d!783292 (= (prepend!1127 (_1!18155 lt!962103) (_1!18159 (v!33032 lt!962105))) lt!962242)))

(declare-fun b!2718934 () Bool)

(assert (=> b!2718934 (= e!1713646 (= (list!11880 lt!962242) (Cons!31363 (_1!18159 (v!33032 lt!962105)) (list!11880 (_1!18155 lt!962103)))))))

(assert (= (and d!783292 res!1142015) b!2718934))

(declare-fun m!3118389 () Bool)

(assert (=> d!783292 m!3118389))

(assert (=> d!783292 m!3118389))

(declare-fun m!3118391 () Bool)

(assert (=> d!783292 m!3118391))

(declare-fun m!3118393 () Bool)

(assert (=> b!2718934 m!3118393))

(declare-fun m!3118395 () Bool)

(assert (=> b!2718934 m!3118395))

(assert (=> b!2718283 d!783292))

(declare-fun b!2718935 () Bool)

(declare-fun e!1713649 () Bool)

(declare-fun lt!962244 () tuple2!31046)

(assert (=> b!2718935 (= e!1713649 (= (list!11881 (_2!18155 lt!962244)) (list!11881 (_2!18159 (v!33032 lt!962105)))))))

(declare-fun b!2718936 () Bool)

(declare-fun e!1713648 () Bool)

(assert (=> b!2718936 (= e!1713649 e!1713648)))

(declare-fun res!1142018 () Bool)

(assert (=> b!2718936 (= res!1142018 (< (size!24188 (_2!18155 lt!962244)) (size!24188 (_2!18159 (v!33032 lt!962105)))))))

(assert (=> b!2718936 (=> (not res!1142018) (not e!1713648))))

(declare-fun b!2718937 () Bool)

(declare-fun e!1713650 () Bool)

(assert (=> b!2718937 (= e!1713650 (= (list!11881 (_2!18155 lt!962244)) (_2!18158 (lexList!1226 thiss!11556 rules!1182 (list!11881 (_2!18159 (v!33032 lt!962105)))))))))

(declare-fun b!2718938 () Bool)

(declare-fun e!1713647 () tuple2!31046)

(assert (=> b!2718938 (= e!1713647 (tuple2!31047 (BalanceConc!19267 Empty!9826) (_2!18159 (v!33032 lt!962105))))))

(declare-fun b!2718940 () Bool)

(declare-fun lt!962243 () tuple2!31046)

(declare-fun lt!962245 () Option!6193)

(assert (=> b!2718940 (= e!1713647 (tuple2!31047 (prepend!1127 (_1!18155 lt!962243) (_1!18159 (v!33032 lt!962245))) (_2!18155 lt!962243)))))

(assert (=> b!2718940 (= lt!962243 (lexRec!655 thiss!11556 rules!1182 (_2!18159 (v!33032 lt!962245))))))

(declare-fun b!2718941 () Bool)

(assert (=> b!2718941 (= e!1713648 (not (isEmpty!17890 (_1!18155 lt!962244))))))

(declare-fun b!2718939 () Bool)

(declare-fun res!1142017 () Bool)

(assert (=> b!2718939 (=> (not res!1142017) (not e!1713650))))

(assert (=> b!2718939 (= res!1142017 (= (list!11880 (_1!18155 lt!962244)) (_1!18158 (lexList!1226 thiss!11556 rules!1182 (list!11881 (_2!18159 (v!33032 lt!962105)))))))))

(declare-fun d!783294 () Bool)

(assert (=> d!783294 e!1713650))

(declare-fun res!1142016 () Bool)

(assert (=> d!783294 (=> (not res!1142016) (not e!1713650))))

(assert (=> d!783294 (= res!1142016 e!1713649)))

(declare-fun c!439394 () Bool)

(assert (=> d!783294 (= c!439394 (> (size!24194 (_1!18155 lt!962244)) 0))))

(assert (=> d!783294 (= lt!962244 e!1713647)))

(declare-fun c!439395 () Bool)

(assert (=> d!783294 (= c!439395 ((_ is Some!6192) lt!962245))))

(assert (=> d!783294 (= lt!962245 (maxPrefixZipperSequence!1043 thiss!11556 rules!1182 (_2!18159 (v!33032 lt!962105))))))

(assert (=> d!783294 (= (lexRec!655 thiss!11556 rules!1182 (_2!18159 (v!33032 lt!962105))) lt!962244)))

(assert (= (and d!783294 c!439395) b!2718940))

(assert (= (and d!783294 (not c!439395)) b!2718938))

(assert (= (and d!783294 c!439394) b!2718936))

(assert (= (and d!783294 (not c!439394)) b!2718935))

(assert (= (and b!2718936 res!1142018) b!2718941))

(assert (= (and d!783294 res!1142016) b!2718939))

(assert (= (and b!2718939 res!1142017) b!2718937))

(declare-fun m!3118397 () Bool)

(assert (=> d!783294 m!3118397))

(declare-fun m!3118399 () Bool)

(assert (=> d!783294 m!3118399))

(declare-fun m!3118401 () Bool)

(assert (=> b!2718935 m!3118401))

(declare-fun m!3118403 () Bool)

(assert (=> b!2718935 m!3118403))

(assert (=> b!2718937 m!3118401))

(assert (=> b!2718937 m!3118403))

(assert (=> b!2718937 m!3118403))

(declare-fun m!3118405 () Bool)

(assert (=> b!2718937 m!3118405))

(declare-fun m!3118407 () Bool)

(assert (=> b!2718936 m!3118407))

(declare-fun m!3118409 () Bool)

(assert (=> b!2718936 m!3118409))

(declare-fun m!3118411 () Bool)

(assert (=> b!2718939 m!3118411))

(assert (=> b!2718939 m!3118403))

(assert (=> b!2718939 m!3118403))

(assert (=> b!2718939 m!3118405))

(declare-fun m!3118413 () Bool)

(assert (=> b!2718940 m!3118413))

(declare-fun m!3118415 () Bool)

(assert (=> b!2718940 m!3118415))

(declare-fun m!3118417 () Bool)

(assert (=> b!2718941 m!3118417))

(assert (=> b!2718283 d!783294))

(declare-fun d!783296 () Bool)

(declare-fun lt!962253 () Int)

(assert (=> d!783296 (= lt!962253 (size!24195 (list!11880 (_1!18155 lt!962110))))))

(assert (=> d!783296 (= lt!962253 (size!24196 (c!439217 (_1!18155 lt!962110))))))

(assert (=> d!783296 (= (size!24194 (_1!18155 lt!962110)) lt!962253)))

(declare-fun bs!488308 () Bool)

(assert (= bs!488308 d!783296))

(assert (=> bs!488308 m!3117723))

(assert (=> bs!488308 m!3117723))

(declare-fun m!3118419 () Bool)

(assert (=> bs!488308 m!3118419))

(declare-fun m!3118421 () Bool)

(assert (=> bs!488308 m!3118421))

(assert (=> d!783084 d!783296))

(declare-fun b!2718950 () Bool)

(declare-fun e!1713659 () Bool)

(declare-fun e!1713658 () Bool)

(assert (=> b!2718950 (= e!1713659 e!1713658)))

(declare-fun res!1142026 () Bool)

(assert (=> b!2718950 (=> (not res!1142026) (not e!1713658))))

(declare-fun lt!962259 () Option!6193)

(assert (=> b!2718950 (= res!1142026 (= (_1!18159 (get!9782 lt!962259)) (_1!18160 (get!9783 (maxPrefixZipper!471 thiss!11556 rules!1182 (list!11881 treated!9))))))))

(declare-fun b!2718951 () Bool)

(declare-fun e!1713657 () Bool)

(declare-fun e!1713661 () Bool)

(assert (=> b!2718951 (= e!1713657 e!1713661)))

(declare-fun res!1142025 () Bool)

(assert (=> b!2718951 (=> (not res!1142025) (not e!1713661))))

(assert (=> b!2718951 (= res!1142025 (= (_1!18159 (get!9782 lt!962259)) (_1!18160 (get!9783 (maxPrefix!2367 thiss!11556 rules!1182 (list!11881 treated!9))))))))

(declare-fun b!2718953 () Bool)

(declare-fun e!1713662 () Bool)

(assert (=> b!2718953 (= e!1713662 e!1713657)))

(declare-fun res!1142028 () Bool)

(assert (=> b!2718953 (=> res!1142028 e!1713657)))

(assert (=> b!2718953 (= res!1142028 (not (isDefined!4895 lt!962259)))))

(declare-fun b!2718954 () Bool)

(declare-fun e!1713660 () Option!6193)

(declare-fun lt!962256 () Option!6193)

(declare-fun lt!962257 () Option!6193)

(assert (=> b!2718954 (= e!1713660 (ite (and ((_ is None!6192) lt!962256) ((_ is None!6192) lt!962257)) None!6192 (ite ((_ is None!6192) lt!962257) lt!962256 (ite ((_ is None!6192) lt!962256) lt!962257 (ite (>= (size!24187 (_1!18159 (v!33032 lt!962256))) (size!24187 (_1!18159 (v!33032 lt!962257)))) lt!962256 lt!962257)))))))

(declare-fun call!175469 () Option!6193)

(assert (=> b!2718954 (= lt!962256 call!175469)))

(assert (=> b!2718954 (= lt!962257 (maxPrefixZipperSequence!1043 thiss!11556 (t!226316 rules!1182) treated!9))))

(declare-fun bm!175464 () Bool)

(assert (=> bm!175464 (= call!175469 (maxPrefixOneRuleZipperSequence!480 thiss!11556 (h!36784 rules!1182) treated!9))))

(declare-fun b!2718955 () Bool)

(declare-fun res!1142027 () Bool)

(assert (=> b!2718955 (=> (not res!1142027) (not e!1713662))))

(assert (=> b!2718955 (= res!1142027 e!1713659)))

(declare-fun res!1142029 () Bool)

(assert (=> b!2718955 (=> res!1142029 e!1713659)))

(assert (=> b!2718955 (= res!1142029 (not (isDefined!4895 lt!962259)))))

(declare-fun d!783298 () Bool)

(assert (=> d!783298 e!1713662))

(declare-fun res!1142030 () Bool)

(assert (=> d!783298 (=> (not res!1142030) (not e!1713662))))

(assert (=> d!783298 (= res!1142030 (= (isDefined!4895 lt!962259) (isDefined!4896 (maxPrefixZipper!471 thiss!11556 rules!1182 (list!11881 treated!9)))))))

(assert (=> d!783298 (= lt!962259 e!1713660)))

(declare-fun c!439397 () Bool)

(assert (=> d!783298 (= c!439397 (and ((_ is Cons!31364) rules!1182) ((_ is Nil!31364) (t!226316 rules!1182))))))

(declare-fun lt!962254 () Unit!45378)

(declare-fun lt!962260 () Unit!45378)

(assert (=> d!783298 (= lt!962254 lt!962260)))

(declare-fun lt!962258 () List!31461)

(declare-fun lt!962255 () List!31461)

(assert (=> d!783298 (isPrefix!2484 lt!962258 lt!962255)))

(assert (=> d!783298 (= lt!962260 (lemmaIsPrefixRefl!1610 lt!962258 lt!962255))))

(assert (=> d!783298 (= lt!962255 (list!11881 treated!9))))

(assert (=> d!783298 (= lt!962258 (list!11881 treated!9))))

(assert (=> d!783298 (rulesValidInductive!1668 thiss!11556 rules!1182)))

(assert (=> d!783298 (= (maxPrefixZipperSequence!1043 thiss!11556 rules!1182 treated!9) lt!962259)))

(declare-fun b!2718952 () Bool)

(assert (=> b!2718952 (= e!1713660 call!175469)))

(declare-fun b!2718956 () Bool)

(assert (=> b!2718956 (= e!1713658 (= (list!11881 (_2!18159 (get!9782 lt!962259))) (_2!18160 (get!9783 (maxPrefixZipper!471 thiss!11556 rules!1182 (list!11881 treated!9))))))))

(declare-fun b!2718957 () Bool)

(assert (=> b!2718957 (= e!1713661 (= (list!11881 (_2!18159 (get!9782 lt!962259))) (_2!18160 (get!9783 (maxPrefix!2367 thiss!11556 rules!1182 (list!11881 treated!9))))))))

(assert (= (and d!783298 c!439397) b!2718952))

(assert (= (and d!783298 (not c!439397)) b!2718954))

(assert (= (or b!2718952 b!2718954) bm!175464))

(assert (= (and d!783298 res!1142030) b!2718955))

(assert (= (and b!2718955 (not res!1142029)) b!2718950))

(assert (= (and b!2718950 res!1142026) b!2718956))

(assert (= (and b!2718955 res!1142027) b!2718953))

(assert (= (and b!2718953 (not res!1142028)) b!2718951))

(assert (= (and b!2718951 res!1142025) b!2718957))

(declare-fun m!3118445 () Bool)

(assert (=> b!2718950 m!3118445))

(assert (=> b!2718950 m!3117425))

(assert (=> b!2718950 m!3117425))

(declare-fun m!3118447 () Bool)

(assert (=> b!2718950 m!3118447))

(assert (=> b!2718950 m!3118447))

(declare-fun m!3118451 () Bool)

(assert (=> b!2718950 m!3118451))

(declare-fun m!3118455 () Bool)

(assert (=> b!2718955 m!3118455))

(assert (=> b!2718956 m!3118445))

(declare-fun m!3118457 () Bool)

(assert (=> b!2718956 m!3118457))

(assert (=> b!2718956 m!3117425))

(assert (=> b!2718956 m!3118447))

(assert (=> b!2718956 m!3118451))

(assert (=> b!2718956 m!3117425))

(assert (=> b!2718956 m!3118447))

(assert (=> b!2718951 m!3118445))

(assert (=> b!2718951 m!3117425))

(assert (=> b!2718951 m!3117425))

(assert (=> b!2718951 m!3118267))

(assert (=> b!2718951 m!3118267))

(declare-fun m!3118459 () Bool)

(assert (=> b!2718951 m!3118459))

(assert (=> d!783298 m!3118455))

(assert (=> d!783298 m!3117817))

(assert (=> d!783298 m!3118447))

(declare-fun m!3118461 () Bool)

(assert (=> d!783298 m!3118461))

(declare-fun m!3118463 () Bool)

(assert (=> d!783298 m!3118463))

(assert (=> d!783298 m!3117425))

(assert (=> d!783298 m!3117425))

(assert (=> d!783298 m!3118447))

(declare-fun m!3118465 () Bool)

(assert (=> d!783298 m!3118465))

(declare-fun m!3118467 () Bool)

(assert (=> bm!175464 m!3118467))

(declare-fun m!3118469 () Bool)

(assert (=> b!2718954 m!3118469))

(assert (=> b!2718957 m!3118445))

(assert (=> b!2718957 m!3118267))

(assert (=> b!2718957 m!3118459))

(assert (=> b!2718957 m!3117425))

(assert (=> b!2718957 m!3118457))

(assert (=> b!2718957 m!3117425))

(assert (=> b!2718957 m!3118267))

(assert (=> b!2718953 m!3118455))

(assert (=> d!783084 d!783298))

(assert (=> b!2718095 d!783088))

(declare-fun d!783302 () Bool)

(assert (=> d!783302 true))

(declare-fun lt!962263 () Bool)

(assert (=> d!783302 (= lt!962263 (rulesValidInductive!1668 thiss!11556 rules!1182))))

(declare-fun lambda!100583 () Int)

(declare-fun forall!6560 (List!31464 Int) Bool)

(assert (=> d!783302 (= lt!962263 (forall!6560 rules!1182 lambda!100583))))

(assert (=> d!783302 (= (rulesValid!1784 thiss!11556 rules!1182) lt!962263)))

(declare-fun bs!488309 () Bool)

(assert (= bs!488309 d!783302))

(assert (=> bs!488309 m!3117817))

(declare-fun m!3118471 () Bool)

(assert (=> bs!488309 m!3118471))

(assert (=> d!783090 d!783302))

(declare-fun d!783304 () Bool)

(declare-fun c!439398 () Bool)

(assert (=> d!783304 (= c!439398 ((_ is Node!9825) (left!24110 (c!439215 totalInput!328))))))

(declare-fun e!1713666 () Bool)

(assert (=> d!783304 (= (inv!42580 (left!24110 (c!439215 totalInput!328))) e!1713666)))

(declare-fun b!2718969 () Bool)

(assert (=> b!2718969 (= e!1713666 (inv!42589 (left!24110 (c!439215 totalInput!328))))))

(declare-fun b!2718970 () Bool)

(declare-fun e!1713667 () Bool)

(assert (=> b!2718970 (= e!1713666 e!1713667)))

(declare-fun res!1142040 () Bool)

(assert (=> b!2718970 (= res!1142040 (not ((_ is Leaf!14969) (left!24110 (c!439215 totalInput!328)))))))

(assert (=> b!2718970 (=> res!1142040 e!1713667)))

(declare-fun b!2718971 () Bool)

(assert (=> b!2718971 (= e!1713667 (inv!42590 (left!24110 (c!439215 totalInput!328))))))

(assert (= (and d!783304 c!439398) b!2718969))

(assert (= (and d!783304 (not c!439398)) b!2718970))

(assert (= (and b!2718970 (not res!1142040)) b!2718971))

(declare-fun m!3118473 () Bool)

(assert (=> b!2718969 m!3118473))

(declare-fun m!3118475 () Bool)

(assert (=> b!2718971 m!3118475))

(assert (=> b!2718340 d!783304))

(declare-fun d!783306 () Bool)

(declare-fun c!439399 () Bool)

(assert (=> d!783306 (= c!439399 ((_ is Node!9825) (right!24440 (c!439215 totalInput!328))))))

(declare-fun e!1713668 () Bool)

(assert (=> d!783306 (= (inv!42580 (right!24440 (c!439215 totalInput!328))) e!1713668)))

(declare-fun b!2718972 () Bool)

(assert (=> b!2718972 (= e!1713668 (inv!42589 (right!24440 (c!439215 totalInput!328))))))

(declare-fun b!2718973 () Bool)

(declare-fun e!1713669 () Bool)

(assert (=> b!2718973 (= e!1713668 e!1713669)))

(declare-fun res!1142041 () Bool)

(assert (=> b!2718973 (= res!1142041 (not ((_ is Leaf!14969) (right!24440 (c!439215 totalInput!328)))))))

(assert (=> b!2718973 (=> res!1142041 e!1713669)))

(declare-fun b!2718974 () Bool)

(assert (=> b!2718974 (= e!1713669 (inv!42590 (right!24440 (c!439215 totalInput!328))))))

(assert (= (and d!783306 c!439399) b!2718972))

(assert (= (and d!783306 (not c!439399)) b!2718973))

(assert (= (and b!2718973 (not res!1142041)) b!2718974))

(declare-fun m!3118483 () Bool)

(assert (=> b!2718972 m!3118483))

(declare-fun m!3118485 () Bool)

(assert (=> b!2718974 m!3118485))

(assert (=> b!2718340 d!783306))

(declare-fun b!2718978 () Bool)

(declare-fun e!1713671 () List!31461)

(assert (=> b!2718978 (= e!1713671 (++!7803 (list!11884 (left!24110 (c!439215 (_2!18155 lt!962065)))) (list!11884 (right!24440 (c!439215 (_2!18155 lt!962065))))))))

(declare-fun d!783310 () Bool)

(declare-fun c!439400 () Bool)

(assert (=> d!783310 (= c!439400 ((_ is Empty!9825) (c!439215 (_2!18155 lt!962065))))))

(declare-fun e!1713670 () List!31461)

(assert (=> d!783310 (= (list!11884 (c!439215 (_2!18155 lt!962065))) e!1713670)))

(declare-fun b!2718976 () Bool)

(assert (=> b!2718976 (= e!1713670 e!1713671)))

(declare-fun c!439401 () Bool)

(assert (=> b!2718976 (= c!439401 ((_ is Leaf!14969) (c!439215 (_2!18155 lt!962065))))))

(declare-fun b!2718975 () Bool)

(assert (=> b!2718975 (= e!1713670 Nil!31361)))

(declare-fun b!2718977 () Bool)

(assert (=> b!2718977 (= e!1713671 (list!11888 (xs!12896 (c!439215 (_2!18155 lt!962065)))))))

(assert (= (and d!783310 c!439400) b!2718975))

(assert (= (and d!783310 (not c!439400)) b!2718976))

(assert (= (and b!2718976 c!439401) b!2718977))

(assert (= (and b!2718976 (not c!439401)) b!2718978))

(declare-fun m!3118489 () Bool)

(assert (=> b!2718978 m!3118489))

(declare-fun m!3118491 () Bool)

(assert (=> b!2718978 m!3118491))

(assert (=> b!2718978 m!3118489))

(assert (=> b!2718978 m!3118491))

(declare-fun m!3118493 () Bool)

(assert (=> b!2718978 m!3118493))

(declare-fun m!3118495 () Bool)

(assert (=> b!2718977 m!3118495))

(assert (=> d!783026 d!783310))

(declare-fun d!783314 () Bool)

(declare-fun lt!962267 () Int)

(assert (=> d!783314 (= lt!962267 (size!24192 (list!11881 (_2!18155 lt!962104))))))

(assert (=> d!783314 (= lt!962267 (size!24193 (c!439215 (_2!18155 lt!962104))))))

(assert (=> d!783314 (= (size!24188 (_2!18155 lt!962104)) lt!962267)))

(declare-fun bs!488311 () Bool)

(assert (= bs!488311 d!783314))

(assert (=> bs!488311 m!3117671))

(assert (=> bs!488311 m!3117671))

(declare-fun m!3118497 () Bool)

(assert (=> bs!488311 m!3118497))

(declare-fun m!3118499 () Bool)

(assert (=> bs!488311 m!3118499))

(assert (=> b!2718279 d!783314))

(assert (=> b!2718279 d!783014))

(declare-fun d!783316 () Bool)

(declare-fun lt!962268 () Bool)

(assert (=> d!783316 (= lt!962268 (isEmpty!17895 (list!11880 (_1!18155 lt!962110))))))

(assert (=> d!783316 (= lt!962268 (isEmpty!17896 (c!439217 (_1!18155 lt!962110))))))

(assert (=> d!783316 (= (isEmpty!17890 (_1!18155 lt!962110)) lt!962268)))

(declare-fun bs!488312 () Bool)

(assert (= bs!488312 d!783316))

(assert (=> bs!488312 m!3117723))

(assert (=> bs!488312 m!3117723))

(declare-fun m!3118509 () Bool)

(assert (=> bs!488312 m!3118509))

(declare-fun m!3118511 () Bool)

(assert (=> bs!488312 m!3118511))

(assert (=> b!2718298 d!783316))

(declare-fun d!783320 () Bool)

(assert (=> d!783320 (= (list!11880 lt!962072) (list!11885 (c!439217 lt!962072)))))

(declare-fun bs!488313 () Bool)

(assert (= bs!488313 d!783320))

(declare-fun m!3118513 () Bool)

(assert (=> bs!488313 m!3118513))

(assert (=> b!2718130 d!783320))

(declare-fun b!2719015 () Bool)

(declare-fun lt!962275 () List!31463)

(declare-fun e!1713691 () Bool)

(assert (=> b!2719015 (= e!1713691 (or (not (= (list!11880 (_1!18155 lt!962066)) Nil!31363)) (= lt!962275 (list!11880 acc!331))))))

(declare-fun b!2719012 () Bool)

(declare-fun e!1713690 () List!31463)

(assert (=> b!2719012 (= e!1713690 (list!11880 (_1!18155 lt!962066)))))

(declare-fun d!783322 () Bool)

(assert (=> d!783322 e!1713691))

(declare-fun res!1142057 () Bool)

(assert (=> d!783322 (=> (not res!1142057) (not e!1713691))))

(declare-fun content!4443 (List!31463) (InoxSet Token!9060))

(assert (=> d!783322 (= res!1142057 (= (content!4443 lt!962275) ((_ map or) (content!4443 (list!11880 acc!331)) (content!4443 (list!11880 (_1!18155 lt!962066))))))))

(assert (=> d!783322 (= lt!962275 e!1713690)))

(declare-fun c!439410 () Bool)

(assert (=> d!783322 (= c!439410 ((_ is Nil!31363) (list!11880 acc!331)))))

(assert (=> d!783322 (= (++!7807 (list!11880 acc!331) (list!11880 (_1!18155 lt!962066))) lt!962275)))

(declare-fun b!2719013 () Bool)

(assert (=> b!2719013 (= e!1713690 (Cons!31363 (h!36783 (list!11880 acc!331)) (++!7807 (t!226315 (list!11880 acc!331)) (list!11880 (_1!18155 lt!962066)))))))

(declare-fun b!2719014 () Bool)

(declare-fun res!1142060 () Bool)

(assert (=> b!2719014 (=> (not res!1142060) (not e!1713691))))

(assert (=> b!2719014 (= res!1142060 (= (size!24195 lt!962275) (+ (size!24195 (list!11880 acc!331)) (size!24195 (list!11880 (_1!18155 lt!962066))))))))

(assert (= (and d!783322 c!439410) b!2719012))

(assert (= (and d!783322 (not c!439410)) b!2719013))

(assert (= (and d!783322 res!1142057) b!2719014))

(assert (= (and b!2719014 res!1142060) b!2719015))

(declare-fun m!3118553 () Bool)

(assert (=> d!783322 m!3118553))

(assert (=> d!783322 m!3117441))

(declare-fun m!3118555 () Bool)

(assert (=> d!783322 m!3118555))

(assert (=> d!783322 m!3117503))

(declare-fun m!3118557 () Bool)

(assert (=> d!783322 m!3118557))

(assert (=> b!2719013 m!3117503))

(declare-fun m!3118559 () Bool)

(assert (=> b!2719013 m!3118559))

(declare-fun m!3118561 () Bool)

(assert (=> b!2719014 m!3118561))

(assert (=> b!2719014 m!3117441))

(declare-fun m!3118563 () Bool)

(assert (=> b!2719014 m!3118563))

(assert (=> b!2719014 m!3117503))

(declare-fun m!3118565 () Bool)

(assert (=> b!2719014 m!3118565))

(assert (=> b!2718130 d!783322))

(assert (=> b!2718130 d!783082))

(declare-fun d!783330 () Bool)

(assert (=> d!783330 (= (list!11880 (_1!18155 lt!962066)) (list!11885 (c!439217 (_1!18155 lt!962066))))))

(declare-fun bs!488314 () Bool)

(assert (= bs!488314 d!783330))

(assert (=> bs!488314 m!3117967))

(assert (=> b!2718130 d!783330))

(declare-fun d!783332 () Bool)

(declare-fun c!439411 () Bool)

(assert (=> d!783332 (= c!439411 ((_ is Node!9825) (left!24110 (c!439215 input!603))))))

(declare-fun e!1713692 () Bool)

(assert (=> d!783332 (= (inv!42580 (left!24110 (c!439215 input!603))) e!1713692)))

(declare-fun b!2719020 () Bool)

(assert (=> b!2719020 (= e!1713692 (inv!42589 (left!24110 (c!439215 input!603))))))

(declare-fun b!2719021 () Bool)

(declare-fun e!1713693 () Bool)

(assert (=> b!2719021 (= e!1713692 e!1713693)))

(declare-fun res!1142065 () Bool)

(assert (=> b!2719021 (= res!1142065 (not ((_ is Leaf!14969) (left!24110 (c!439215 input!603)))))))

(assert (=> b!2719021 (=> res!1142065 e!1713693)))

(declare-fun b!2719022 () Bool)

(assert (=> b!2719022 (= e!1713693 (inv!42590 (left!24110 (c!439215 input!603))))))

(assert (= (and d!783332 c!439411) b!2719020))

(assert (= (and d!783332 (not c!439411)) b!2719021))

(assert (= (and b!2719021 (not res!1142065)) b!2719022))

(declare-fun m!3118567 () Bool)

(assert (=> b!2719020 m!3118567))

(declare-fun m!3118569 () Bool)

(assert (=> b!2719022 m!3118569))

(assert (=> b!2718365 d!783332))

(declare-fun d!783334 () Bool)

(declare-fun c!439412 () Bool)

(assert (=> d!783334 (= c!439412 ((_ is Node!9825) (right!24440 (c!439215 input!603))))))

(declare-fun e!1713694 () Bool)

(assert (=> d!783334 (= (inv!42580 (right!24440 (c!439215 input!603))) e!1713694)))

(declare-fun b!2719023 () Bool)

(assert (=> b!2719023 (= e!1713694 (inv!42589 (right!24440 (c!439215 input!603))))))

(declare-fun b!2719024 () Bool)

(declare-fun e!1713695 () Bool)

(assert (=> b!2719024 (= e!1713694 e!1713695)))

(declare-fun res!1142066 () Bool)

(assert (=> b!2719024 (= res!1142066 (not ((_ is Leaf!14969) (right!24440 (c!439215 input!603)))))))

(assert (=> b!2719024 (=> res!1142066 e!1713695)))

(declare-fun b!2719025 () Bool)

(assert (=> b!2719025 (= e!1713695 (inv!42590 (right!24440 (c!439215 input!603))))))

(assert (= (and d!783334 c!439412) b!2719023))

(assert (= (and d!783334 (not c!439412)) b!2719024))

(assert (= (and b!2719024 (not res!1142066)) b!2719025))

(declare-fun m!3118571 () Bool)

(assert (=> b!2719023 m!3118571))

(declare-fun m!3118573 () Bool)

(assert (=> b!2719025 m!3118573))

(assert (=> b!2718365 d!783334))

(declare-fun b!2719029 () Bool)

(declare-fun e!1713697 () List!31461)

(assert (=> b!2719029 (= e!1713697 (++!7803 (list!11884 (left!24110 (c!439215 totalInput!328))) (list!11884 (right!24440 (c!439215 totalInput!328)))))))

(declare-fun d!783336 () Bool)

(declare-fun c!439413 () Bool)

(assert (=> d!783336 (= c!439413 ((_ is Empty!9825) (c!439215 totalInput!328)))))

(declare-fun e!1713696 () List!31461)

(assert (=> d!783336 (= (list!11884 (c!439215 totalInput!328)) e!1713696)))

(declare-fun b!2719027 () Bool)

(assert (=> b!2719027 (= e!1713696 e!1713697)))

(declare-fun c!439414 () Bool)

(assert (=> b!2719027 (= c!439414 ((_ is Leaf!14969) (c!439215 totalInput!328)))))

(declare-fun b!2719026 () Bool)

(assert (=> b!2719026 (= e!1713696 Nil!31361)))

(declare-fun b!2719028 () Bool)

(assert (=> b!2719028 (= e!1713697 (list!11888 (xs!12896 (c!439215 totalInput!328))))))

(assert (= (and d!783336 c!439413) b!2719026))

(assert (= (and d!783336 (not c!439413)) b!2719027))

(assert (= (and b!2719027 c!439414) b!2719028))

(assert (= (and b!2719027 (not c!439414)) b!2719029))

(declare-fun m!3118575 () Bool)

(assert (=> b!2719029 m!3118575))

(declare-fun m!3118577 () Bool)

(assert (=> b!2719029 m!3118577))

(assert (=> b!2719029 m!3118575))

(assert (=> b!2719029 m!3118577))

(declare-fun m!3118579 () Bool)

(assert (=> b!2719029 m!3118579))

(assert (=> b!2719028 m!3118349))

(assert (=> d!783092 d!783336))

(declare-fun d!783338 () Bool)

(assert (=> d!783338 (= (list!11880 (_1!18155 lt!962110)) (list!11885 (c!439217 (_1!18155 lt!962110))))))

(declare-fun bs!488315 () Bool)

(assert (= bs!488315 d!783338))

(declare-fun m!3118581 () Bool)

(assert (=> bs!488315 m!3118581))

(assert (=> b!2718296 d!783338))

(assert (=> b!2718296 d!783258))

(assert (=> b!2718296 d!783096))

(declare-fun d!783340 () Bool)

(declare-fun lt!962278 () Int)

(assert (=> d!783340 (>= lt!962278 0)))

(declare-fun e!1713702 () Int)

(assert (=> d!783340 (= lt!962278 e!1713702)))

(declare-fun c!439417 () Bool)

(assert (=> d!783340 (= c!439417 ((_ is Nil!31361) lt!962114))))

(assert (=> d!783340 (= (size!24192 lt!962114) lt!962278)))

(declare-fun b!2719040 () Bool)

(assert (=> b!2719040 (= e!1713702 0)))

(declare-fun b!2719041 () Bool)

(assert (=> b!2719041 (= e!1713702 (+ 1 (size!24192 (t!226313 lt!962114))))))

(assert (= (and d!783340 c!439417) b!2719040))

(assert (= (and d!783340 (not c!439417)) b!2719041))

(declare-fun m!3118591 () Bool)

(assert (=> b!2719041 m!3118591))

(assert (=> b!2718324 d!783340))

(declare-fun d!783344 () Bool)

(declare-fun lt!962280 () Int)

(assert (=> d!783344 (>= lt!962280 0)))

(declare-fun e!1713703 () Int)

(assert (=> d!783344 (= lt!962280 e!1713703)))

(declare-fun c!439419 () Bool)

(assert (=> d!783344 (= c!439419 ((_ is Nil!31361) (list!11881 treated!9)))))

(assert (=> d!783344 (= (size!24192 (list!11881 treated!9)) lt!962280)))

(declare-fun b!2719042 () Bool)

(assert (=> b!2719042 (= e!1713703 0)))

(declare-fun b!2719043 () Bool)

(assert (=> b!2719043 (= e!1713703 (+ 1 (size!24192 (t!226313 (list!11881 treated!9)))))))

(assert (= (and d!783344 c!439419) b!2719042))

(assert (= (and d!783344 (not c!439419)) b!2719043))

(declare-fun m!3118593 () Bool)

(assert (=> b!2719043 m!3118593))

(assert (=> b!2718324 d!783344))

(declare-fun d!783346 () Bool)

(declare-fun lt!962281 () Int)

(assert (=> d!783346 (>= lt!962281 0)))

(declare-fun e!1713706 () Int)

(assert (=> d!783346 (= lt!962281 e!1713706)))

(declare-fun c!439420 () Bool)

(assert (=> d!783346 (= c!439420 ((_ is Nil!31361) (list!11881 input!603)))))

(assert (=> d!783346 (= (size!24192 (list!11881 input!603)) lt!962281)))

(declare-fun b!2719048 () Bool)

(assert (=> b!2719048 (= e!1713706 0)))

(declare-fun b!2719049 () Bool)

(assert (=> b!2719049 (= e!1713706 (+ 1 (size!24192 (t!226313 (list!11881 input!603)))))))

(assert (= (and d!783346 c!439420) b!2719048))

(assert (= (and d!783346 (not c!439420)) b!2719049))

(declare-fun m!3118595 () Bool)

(assert (=> b!2719049 m!3118595))

(assert (=> b!2718324 d!783346))

(declare-fun d!783348 () Bool)

(declare-fun res!1142075 () Bool)

(declare-fun e!1713707 () Bool)

(assert (=> d!783348 (=> (not res!1142075) (not e!1713707))))

(assert (=> d!783348 (= res!1142075 (= (csize!19880 (c!439215 treated!9)) (+ (size!24193 (left!24110 (c!439215 treated!9))) (size!24193 (right!24440 (c!439215 treated!9))))))))

(assert (=> d!783348 (= (inv!42589 (c!439215 treated!9)) e!1713707)))

(declare-fun b!2719050 () Bool)

(declare-fun res!1142076 () Bool)

(assert (=> b!2719050 (=> (not res!1142076) (not e!1713707))))

(assert (=> b!2719050 (= res!1142076 (and (not (= (left!24110 (c!439215 treated!9)) Empty!9825)) (not (= (right!24440 (c!439215 treated!9)) Empty!9825))))))

(declare-fun b!2719051 () Bool)

(declare-fun res!1142077 () Bool)

(assert (=> b!2719051 (=> (not res!1142077) (not e!1713707))))

(assert (=> b!2719051 (= res!1142077 (= (cheight!10036 (c!439215 treated!9)) (+ (max!0 (height!1455 (left!24110 (c!439215 treated!9))) (height!1455 (right!24440 (c!439215 treated!9)))) 1)))))

(declare-fun b!2719052 () Bool)

(assert (=> b!2719052 (= e!1713707 (<= 0 (cheight!10036 (c!439215 treated!9))))))

(assert (= (and d!783348 res!1142075) b!2719050))

(assert (= (and b!2719050 res!1142076) b!2719051))

(assert (= (and b!2719051 res!1142077) b!2719052))

(declare-fun m!3118607 () Bool)

(assert (=> d!783348 m!3118607))

(declare-fun m!3118609 () Bool)

(assert (=> d!783348 m!3118609))

(assert (=> b!2719051 m!3117955))

(assert (=> b!2719051 m!3117957))

(assert (=> b!2719051 m!3117955))

(assert (=> b!2719051 m!3117957))

(declare-fun m!3118611 () Bool)

(assert (=> b!2719051 m!3118611))

(assert (=> b!2718104 d!783348))

(declare-fun b!2719060 () Bool)

(declare-fun lt!962282 () List!31461)

(declare-fun e!1713711 () Bool)

(assert (=> b!2719060 (= e!1713711 (or (not (= (list!11881 input!603) Nil!31361)) (= lt!962282 (t!226313 (list!11881 treated!9)))))))

(declare-fun b!2719059 () Bool)

(declare-fun res!1142079 () Bool)

(assert (=> b!2719059 (=> (not res!1142079) (not e!1713711))))

(assert (=> b!2719059 (= res!1142079 (= (size!24192 lt!962282) (+ (size!24192 (t!226313 (list!11881 treated!9))) (size!24192 (list!11881 input!603)))))))

(declare-fun d!783354 () Bool)

(assert (=> d!783354 e!1713711))

(declare-fun res!1142078 () Bool)

(assert (=> d!783354 (=> (not res!1142078) (not e!1713711))))

(assert (=> d!783354 (= res!1142078 (= (content!4441 lt!962282) ((_ map or) (content!4441 (t!226313 (list!11881 treated!9))) (content!4441 (list!11881 input!603)))))))

(declare-fun e!1713710 () List!31461)

(assert (=> d!783354 (= lt!962282 e!1713710)))

(declare-fun c!439423 () Bool)

(assert (=> d!783354 (= c!439423 ((_ is Nil!31361) (t!226313 (list!11881 treated!9))))))

(assert (=> d!783354 (= (++!7803 (t!226313 (list!11881 treated!9)) (list!11881 input!603)) lt!962282)))

(declare-fun b!2719058 () Bool)

(assert (=> b!2719058 (= e!1713710 (Cons!31361 (h!36781 (t!226313 (list!11881 treated!9))) (++!7803 (t!226313 (t!226313 (list!11881 treated!9))) (list!11881 input!603))))))

(declare-fun b!2719057 () Bool)

(assert (=> b!2719057 (= e!1713710 (list!11881 input!603))))

(assert (= (and d!783354 c!439423) b!2719057))

(assert (= (and d!783354 (not c!439423)) b!2719058))

(assert (= (and d!783354 res!1142078) b!2719059))

(assert (= (and b!2719059 res!1142079) b!2719060))

(declare-fun m!3118617 () Bool)

(assert (=> b!2719059 m!3118617))

(assert (=> b!2719059 m!3118593))

(assert (=> b!2719059 m!3117427))

(assert (=> b!2719059 m!3117473))

(declare-fun m!3118619 () Bool)

(assert (=> d!783354 m!3118619))

(assert (=> d!783354 m!3118105))

(assert (=> d!783354 m!3117427))

(assert (=> d!783354 m!3117753))

(assert (=> b!2719058 m!3117427))

(declare-fun m!3118621 () Bool)

(assert (=> b!2719058 m!3118621))

(assert (=> b!2718323 d!783354))

(declare-fun d!783358 () Bool)

(declare-fun c!439424 () Bool)

(assert (=> d!783358 (= c!439424 ((_ is Empty!9826) (c!439217 acc!331)))))

(declare-fun e!1713712 () List!31463)

(assert (=> d!783358 (= (list!11885 (c!439217 acc!331)) e!1713712)))

(declare-fun b!2719062 () Bool)

(declare-fun e!1713713 () List!31463)

(assert (=> b!2719062 (= e!1713712 e!1713713)))

(declare-fun c!439425 () Bool)

(assert (=> b!2719062 (= c!439425 ((_ is Leaf!14970) (c!439217 acc!331)))))

(declare-fun b!2719064 () Bool)

(assert (=> b!2719064 (= e!1713713 (++!7807 (list!11885 (left!24111 (c!439217 acc!331))) (list!11885 (right!24441 (c!439217 acc!331)))))))

(declare-fun b!2719063 () Bool)

(assert (=> b!2719063 (= e!1713713 (list!11887 (xs!12897 (c!439217 acc!331))))))

(declare-fun b!2719061 () Bool)

(assert (=> b!2719061 (= e!1713712 Nil!31363)))

(assert (= (and d!783358 c!439424) b!2719061))

(assert (= (and d!783358 (not c!439424)) b!2719062))

(assert (= (and b!2719062 c!439425) b!2719063))

(assert (= (and b!2719062 (not c!439425)) b!2719064))

(assert (=> b!2719064 m!3117963))

(assert (=> b!2719064 m!3117965))

(assert (=> b!2719064 m!3117963))

(assert (=> b!2719064 m!3117965))

(declare-fun m!3118623 () Bool)

(assert (=> b!2719064 m!3118623))

(assert (=> b!2719063 m!3118271))

(assert (=> d!783082 d!783358))

(declare-fun b!2719065 () Bool)

(declare-fun e!1713715 () Bool)

(declare-fun e!1713714 () Bool)

(assert (=> b!2719065 (= e!1713715 e!1713714)))

(declare-fun res!1142084 () Bool)

(assert (=> b!2719065 (=> (not res!1142084) (not e!1713714))))

(assert (=> b!2719065 (= res!1142084 (<= (- 1) (- (height!1454 (left!24111 (++!7806 (c!439217 acc!331) (c!439217 (_1!18155 lt!962066))))) (height!1454 (right!24441 (++!7806 (c!439217 acc!331) (c!439217 (_1!18155 lt!962066))))))))))

(declare-fun b!2719066 () Bool)

(declare-fun res!1142080 () Bool)

(assert (=> b!2719066 (=> (not res!1142080) (not e!1713714))))

(assert (=> b!2719066 (= res!1142080 (not (isEmpty!17896 (left!24111 (++!7806 (c!439217 acc!331) (c!439217 (_1!18155 lt!962066)))))))))

(declare-fun d!783360 () Bool)

(declare-fun res!1142081 () Bool)

(assert (=> d!783360 (=> res!1142081 e!1713715)))

(assert (=> d!783360 (= res!1142081 (not ((_ is Node!9826) (++!7806 (c!439217 acc!331) (c!439217 (_1!18155 lt!962066))))))))

(assert (=> d!783360 (= (isBalanced!2976 (++!7806 (c!439217 acc!331) (c!439217 (_1!18155 lt!962066)))) e!1713715)))

(declare-fun b!2719067 () Bool)

(declare-fun res!1142085 () Bool)

(assert (=> b!2719067 (=> (not res!1142085) (not e!1713714))))

(assert (=> b!2719067 (= res!1142085 (isBalanced!2976 (right!24441 (++!7806 (c!439217 acc!331) (c!439217 (_1!18155 lt!962066))))))))

(declare-fun b!2719068 () Bool)

(assert (=> b!2719068 (= e!1713714 (not (isEmpty!17896 (right!24441 (++!7806 (c!439217 acc!331) (c!439217 (_1!18155 lt!962066)))))))))

(declare-fun b!2719069 () Bool)

(declare-fun res!1142083 () Bool)

(assert (=> b!2719069 (=> (not res!1142083) (not e!1713714))))

(assert (=> b!2719069 (= res!1142083 (<= (- (height!1454 (left!24111 (++!7806 (c!439217 acc!331) (c!439217 (_1!18155 lt!962066))))) (height!1454 (right!24441 (++!7806 (c!439217 acc!331) (c!439217 (_1!18155 lt!962066)))))) 1))))

(declare-fun b!2719070 () Bool)

(declare-fun res!1142082 () Bool)

(assert (=> b!2719070 (=> (not res!1142082) (not e!1713714))))

(assert (=> b!2719070 (= res!1142082 (isBalanced!2976 (left!24111 (++!7806 (c!439217 acc!331) (c!439217 (_1!18155 lt!962066))))))))

(assert (= (and d!783360 (not res!1142081)) b!2719065))

(assert (= (and b!2719065 res!1142084) b!2719069))

(assert (= (and b!2719069 res!1142083) b!2719070))

(assert (= (and b!2719070 res!1142082) b!2719067))

(assert (= (and b!2719067 res!1142085) b!2719066))

(assert (= (and b!2719066 res!1142080) b!2719068))

(declare-fun m!3118625 () Bool)

(assert (=> b!2719067 m!3118625))

(declare-fun m!3118627 () Bool)

(assert (=> b!2719066 m!3118627))

(declare-fun m!3118629 () Bool)

(assert (=> b!2719068 m!3118629))

(declare-fun m!3118631 () Bool)

(assert (=> b!2719065 m!3118631))

(declare-fun m!3118633 () Bool)

(assert (=> b!2719065 m!3118633))

(assert (=> b!2719069 m!3118631))

(assert (=> b!2719069 m!3118633))

(declare-fun m!3118635 () Bool)

(assert (=> b!2719070 m!3118635))

(assert (=> b!2718127 d!783360))

(assert (=> b!2718127 d!783152))

(declare-fun b!2719074 () Bool)

(declare-fun e!1713717 () List!31461)

(assert (=> b!2719074 (= e!1713717 (++!7803 (list!11884 (left!24110 (c!439215 input!603))) (list!11884 (right!24440 (c!439215 input!603)))))))

(declare-fun d!783362 () Bool)

(declare-fun c!439426 () Bool)

(assert (=> d!783362 (= c!439426 ((_ is Empty!9825) (c!439215 input!603)))))

(declare-fun e!1713716 () List!31461)

(assert (=> d!783362 (= (list!11884 (c!439215 input!603)) e!1713716)))

(declare-fun b!2719072 () Bool)

(assert (=> b!2719072 (= e!1713716 e!1713717)))

(declare-fun c!439427 () Bool)

(assert (=> b!2719072 (= c!439427 ((_ is Leaf!14969) (c!439215 input!603)))))

(declare-fun b!2719071 () Bool)

(assert (=> b!2719071 (= e!1713716 Nil!31361)))

(declare-fun b!2719073 () Bool)

(assert (=> b!2719073 (= e!1713717 (list!11888 (xs!12896 (c!439215 input!603))))))

(assert (= (and d!783362 c!439426) b!2719071))

(assert (= (and d!783362 (not c!439426)) b!2719072))

(assert (= (and b!2719072 c!439427) b!2719073))

(assert (= (and b!2719072 (not c!439427)) b!2719074))

(declare-fun m!3118637 () Bool)

(assert (=> b!2719074 m!3118637))

(declare-fun m!3118639 () Bool)

(assert (=> b!2719074 m!3118639))

(assert (=> b!2719074 m!3118637))

(assert (=> b!2719074 m!3118639))

(declare-fun m!3118641 () Bool)

(assert (=> b!2719074 m!3118641))

(declare-fun m!3118643 () Bool)

(assert (=> b!2719073 m!3118643))

(assert (=> d!783098 d!783362))

(declare-fun d!783364 () Bool)

(declare-fun lt!962285 () Int)

(assert (=> d!783364 (= lt!962285 (size!24192 (list!11881 (_2!18155 lt!962110))))))

(assert (=> d!783364 (= lt!962285 (size!24193 (c!439215 (_2!18155 lt!962110))))))

(assert (=> d!783364 (= (size!24188 (_2!18155 lt!962110)) lt!962285)))

(declare-fun bs!488317 () Bool)

(assert (= bs!488317 d!783364))

(assert (=> bs!488317 m!3117715))

(assert (=> bs!488317 m!3117715))

(declare-fun m!3118645 () Bool)

(assert (=> bs!488317 m!3118645))

(declare-fun m!3118647 () Bool)

(assert (=> bs!488317 m!3118647))

(assert (=> b!2718293 d!783364))

(declare-fun d!783366 () Bool)

(declare-fun lt!962286 () Int)

(assert (=> d!783366 (= lt!962286 (size!24192 (list!11881 treated!9)))))

(assert (=> d!783366 (= lt!962286 (size!24193 (c!439215 treated!9)))))

(assert (=> d!783366 (= (size!24188 treated!9) lt!962286)))

(declare-fun bs!488318 () Bool)

(assert (= bs!488318 d!783366))

(assert (=> bs!488318 m!3117425))

(assert (=> bs!488318 m!3117425))

(assert (=> bs!488318 m!3117747))

(declare-fun m!3118649 () Bool)

(assert (=> bs!488318 m!3118649))

(assert (=> b!2718293 d!783366))

(declare-fun d!783368 () Bool)

(assert (=> d!783368 (= (inv!42596 (xs!12897 (c!439217 acc!331))) (<= (size!24195 (innerList!9886 (xs!12897 (c!439217 acc!331)))) 2147483647))))

(declare-fun bs!488319 () Bool)

(assert (= bs!488319 d!783368))

(declare-fun m!3118651 () Bool)

(assert (=> bs!488319 m!3118651))

(assert (=> b!2718352 d!783368))

(assert (=> d!783014 d!783346))

(assert (=> d!783014 d!783098))

(declare-fun d!783370 () Bool)

(declare-fun lt!962291 () Int)

(assert (=> d!783370 (= lt!962291 (size!24192 (list!11884 (c!439215 input!603))))))

(assert (=> d!783370 (= lt!962291 (ite ((_ is Empty!9825) (c!439215 input!603)) 0 (ite ((_ is Leaf!14969) (c!439215 input!603)) (csize!19881 (c!439215 input!603)) (csize!19880 (c!439215 input!603)))))))

(assert (=> d!783370 (= (size!24193 (c!439215 input!603)) lt!962291)))

(declare-fun bs!488323 () Bool)

(assert (= bs!488323 d!783370))

(assert (=> bs!488323 m!3117759))

(assert (=> bs!488323 m!3117759))

(declare-fun m!3118669 () Bool)

(assert (=> bs!488323 m!3118669))

(assert (=> d!783014 d!783370))

(declare-fun d!783380 () Bool)

(declare-fun lt!962299 () Int)

(assert (=> d!783380 (= lt!962299 (size!24195 (list!11880 (_1!18155 lt!962107))))))

(assert (=> d!783380 (= lt!962299 (size!24196 (c!439217 (_1!18155 lt!962107))))))

(assert (=> d!783380 (= (size!24194 (_1!18155 lt!962107)) lt!962299)))

(declare-fun bs!488324 () Bool)

(assert (= bs!488324 d!783380))

(assert (=> bs!488324 m!3117699))

(assert (=> bs!488324 m!3117699))

(declare-fun m!3118671 () Bool)

(assert (=> bs!488324 m!3118671))

(declare-fun m!3118673 () Bool)

(assert (=> bs!488324 m!3118673))

(assert (=> d!783078 d!783380))

(declare-fun b!2719089 () Bool)

(declare-fun e!1713728 () Bool)

(declare-fun e!1713727 () Bool)

(assert (=> b!2719089 (= e!1713728 e!1713727)))

(declare-fun res!1142093 () Bool)

(assert (=> b!2719089 (=> (not res!1142093) (not e!1713727))))

(declare-fun lt!962305 () Option!6193)

(assert (=> b!2719089 (= res!1142093 (= (_1!18159 (get!9782 lt!962305)) (_1!18160 (get!9783 (maxPrefixZipper!471 thiss!11556 rules!1182 (list!11881 totalInput!328))))))))

(declare-fun b!2719090 () Bool)

(declare-fun e!1713726 () Bool)

(declare-fun e!1713730 () Bool)

(assert (=> b!2719090 (= e!1713726 e!1713730)))

(declare-fun res!1142092 () Bool)

(assert (=> b!2719090 (=> (not res!1142092) (not e!1713730))))

(assert (=> b!2719090 (= res!1142092 (= (_1!18159 (get!9782 lt!962305)) (_1!18160 (get!9783 (maxPrefix!2367 thiss!11556 rules!1182 (list!11881 totalInput!328))))))))

(declare-fun b!2719092 () Bool)

(declare-fun e!1713731 () Bool)

(assert (=> b!2719092 (= e!1713731 e!1713726)))

(declare-fun res!1142095 () Bool)

(assert (=> b!2719092 (=> res!1142095 e!1713726)))

(assert (=> b!2719092 (= res!1142095 (not (isDefined!4895 lt!962305)))))

(declare-fun b!2719093 () Bool)

(declare-fun e!1713729 () Option!6193)

(declare-fun lt!962302 () Option!6193)

(declare-fun lt!962303 () Option!6193)

(assert (=> b!2719093 (= e!1713729 (ite (and ((_ is None!6192) lt!962302) ((_ is None!6192) lt!962303)) None!6192 (ite ((_ is None!6192) lt!962303) lt!962302 (ite ((_ is None!6192) lt!962302) lt!962303 (ite (>= (size!24187 (_1!18159 (v!33032 lt!962302))) (size!24187 (_1!18159 (v!33032 lt!962303)))) lt!962302 lt!962303)))))))

(declare-fun call!175471 () Option!6193)

(assert (=> b!2719093 (= lt!962302 call!175471)))

(assert (=> b!2719093 (= lt!962303 (maxPrefixZipperSequence!1043 thiss!11556 (t!226316 rules!1182) totalInput!328))))

(declare-fun bm!175466 () Bool)

(assert (=> bm!175466 (= call!175471 (maxPrefixOneRuleZipperSequence!480 thiss!11556 (h!36784 rules!1182) totalInput!328))))

(declare-fun b!2719094 () Bool)

(declare-fun res!1142094 () Bool)

(assert (=> b!2719094 (=> (not res!1142094) (not e!1713731))))

(assert (=> b!2719094 (= res!1142094 e!1713728)))

(declare-fun res!1142096 () Bool)

(assert (=> b!2719094 (=> res!1142096 e!1713728)))

(assert (=> b!2719094 (= res!1142096 (not (isDefined!4895 lt!962305)))))

(declare-fun d!783382 () Bool)

(assert (=> d!783382 e!1713731))

(declare-fun res!1142097 () Bool)

(assert (=> d!783382 (=> (not res!1142097) (not e!1713731))))

(assert (=> d!783382 (= res!1142097 (= (isDefined!4895 lt!962305) (isDefined!4896 (maxPrefixZipper!471 thiss!11556 rules!1182 (list!11881 totalInput!328)))))))

(assert (=> d!783382 (= lt!962305 e!1713729)))

(declare-fun c!439431 () Bool)

(assert (=> d!783382 (= c!439431 (and ((_ is Cons!31364) rules!1182) ((_ is Nil!31364) (t!226316 rules!1182))))))

(declare-fun lt!962300 () Unit!45378)

(declare-fun lt!962306 () Unit!45378)

(assert (=> d!783382 (= lt!962300 lt!962306)))

(declare-fun lt!962304 () List!31461)

(declare-fun lt!962301 () List!31461)

(assert (=> d!783382 (isPrefix!2484 lt!962304 lt!962301)))

(assert (=> d!783382 (= lt!962306 (lemmaIsPrefixRefl!1610 lt!962304 lt!962301))))

(assert (=> d!783382 (= lt!962301 (list!11881 totalInput!328))))

(assert (=> d!783382 (= lt!962304 (list!11881 totalInput!328))))

(assert (=> d!783382 (rulesValidInductive!1668 thiss!11556 rules!1182)))

(assert (=> d!783382 (= (maxPrefixZipperSequence!1043 thiss!11556 rules!1182 totalInput!328) lt!962305)))

(declare-fun b!2719091 () Bool)

(assert (=> b!2719091 (= e!1713729 call!175471)))

(declare-fun b!2719095 () Bool)

(assert (=> b!2719095 (= e!1713727 (= (list!11881 (_2!18159 (get!9782 lt!962305))) (_2!18160 (get!9783 (maxPrefixZipper!471 thiss!11556 rules!1182 (list!11881 totalInput!328))))))))

(declare-fun b!2719096 () Bool)

(assert (=> b!2719096 (= e!1713730 (= (list!11881 (_2!18159 (get!9782 lt!962305))) (_2!18160 (get!9783 (maxPrefix!2367 thiss!11556 rules!1182 (list!11881 totalInput!328))))))))

(assert (= (and d!783382 c!439431) b!2719091))

(assert (= (and d!783382 (not c!439431)) b!2719093))

(assert (= (or b!2719091 b!2719093) bm!175466))

(assert (= (and d!783382 res!1142097) b!2719094))

(assert (= (and b!2719094 (not res!1142096)) b!2719089))

(assert (= (and b!2719089 res!1142093) b!2719095))

(assert (= (and b!2719094 res!1142094) b!2719092))

(assert (= (and b!2719092 (not res!1142095)) b!2719090))

(assert (= (and b!2719090 res!1142092) b!2719096))

(declare-fun m!3118689 () Bool)

(assert (=> b!2719089 m!3118689))

(assert (=> b!2719089 m!3117423))

(assert (=> b!2719089 m!3117423))

(declare-fun m!3118691 () Bool)

(assert (=> b!2719089 m!3118691))

(assert (=> b!2719089 m!3118691))

(declare-fun m!3118695 () Bool)

(assert (=> b!2719089 m!3118695))

(declare-fun m!3118697 () Bool)

(assert (=> b!2719094 m!3118697))

(assert (=> b!2719095 m!3118689))

(declare-fun m!3118699 () Bool)

(assert (=> b!2719095 m!3118699))

(assert (=> b!2719095 m!3117423))

(assert (=> b!2719095 m!3118691))

(assert (=> b!2719095 m!3118695))

(assert (=> b!2719095 m!3117423))

(assert (=> b!2719095 m!3118691))

(assert (=> b!2719090 m!3118689))

(assert (=> b!2719090 m!3117423))

(assert (=> b!2719090 m!3117423))

(declare-fun m!3118709 () Bool)

(assert (=> b!2719090 m!3118709))

(assert (=> b!2719090 m!3118709))

(declare-fun m!3118711 () Bool)

(assert (=> b!2719090 m!3118711))

(assert (=> d!783382 m!3118697))

(assert (=> d!783382 m!3117817))

(assert (=> d!783382 m!3118691))

(declare-fun m!3118713 () Bool)

(assert (=> d!783382 m!3118713))

(declare-fun m!3118715 () Bool)

(assert (=> d!783382 m!3118715))

(assert (=> d!783382 m!3117423))

(assert (=> d!783382 m!3117423))

(assert (=> d!783382 m!3118691))

(declare-fun m!3118719 () Bool)

(assert (=> d!783382 m!3118719))

(declare-fun m!3118721 () Bool)

(assert (=> bm!175466 m!3118721))

(declare-fun m!3118723 () Bool)

(assert (=> b!2719093 m!3118723))

(assert (=> b!2719096 m!3118689))

(assert (=> b!2719096 m!3118709))

(assert (=> b!2719096 m!3118711))

(assert (=> b!2719096 m!3117423))

(assert (=> b!2719096 m!3118699))

(assert (=> b!2719096 m!3117423))

(assert (=> b!2719096 m!3118709))

(assert (=> b!2719092 m!3118697))

(assert (=> d!783078 d!783382))

(declare-fun b!2719105 () Bool)

(declare-fun e!1713736 () List!31461)

(assert (=> b!2719105 (= e!1713736 (++!7803 (list!11884 (left!24110 (c!439215 (_2!18155 lt!962066)))) (list!11884 (right!24440 (c!439215 (_2!18155 lt!962066))))))))

(declare-fun d!783388 () Bool)

(declare-fun c!439434 () Bool)

(assert (=> d!783388 (= c!439434 ((_ is Empty!9825) (c!439215 (_2!18155 lt!962066))))))

(declare-fun e!1713735 () List!31461)

(assert (=> d!783388 (= (list!11884 (c!439215 (_2!18155 lt!962066))) e!1713735)))

(declare-fun b!2719103 () Bool)

(assert (=> b!2719103 (= e!1713735 e!1713736)))

(declare-fun c!439435 () Bool)

(assert (=> b!2719103 (= c!439435 ((_ is Leaf!14969) (c!439215 (_2!18155 lt!962066))))))

(declare-fun b!2719102 () Bool)

(assert (=> b!2719102 (= e!1713735 Nil!31361)))

(declare-fun b!2719104 () Bool)

(assert (=> b!2719104 (= e!1713736 (list!11888 (xs!12896 (c!439215 (_2!18155 lt!962066)))))))

(assert (= (and d!783388 c!439434) b!2719102))

(assert (= (and d!783388 (not c!439434)) b!2719103))

(assert (= (and b!2719103 c!439435) b!2719104))

(assert (= (and b!2719103 (not c!439435)) b!2719105))

(declare-fun m!3118727 () Bool)

(assert (=> b!2719105 m!3118727))

(declare-fun m!3118731 () Bool)

(assert (=> b!2719105 m!3118731))

(assert (=> b!2719105 m!3118727))

(assert (=> b!2719105 m!3118731))

(declare-fun m!3118737 () Bool)

(assert (=> b!2719105 m!3118737))

(declare-fun m!3118739 () Bool)

(assert (=> b!2719104 m!3118739))

(assert (=> d!783018 d!783388))

(declare-fun d!783392 () Bool)

(declare-fun lt!962311 () Bool)

(assert (=> d!783392 (= lt!962311 (isEmpty!17895 (list!11880 (_1!18155 lt!962107))))))

(assert (=> d!783392 (= lt!962311 (isEmpty!17896 (c!439217 (_1!18155 lt!962107))))))

(assert (=> d!783392 (= (isEmpty!17890 (_1!18155 lt!962107)) lt!962311)))

(declare-fun bs!488327 () Bool)

(assert (= bs!488327 d!783392))

(assert (=> bs!488327 m!3117699))

(assert (=> bs!488327 m!3117699))

(declare-fun m!3118745 () Bool)

(assert (=> bs!488327 m!3118745))

(declare-fun m!3118747 () Bool)

(assert (=> bs!488327 m!3118747))

(assert (=> b!2718291 d!783392))

(declare-fun d!783396 () Bool)

(assert (=> d!783396 (= (list!11880 (_1!18155 lt!962107)) (list!11885 (c!439217 (_1!18155 lt!962107))))))

(declare-fun bs!488328 () Bool)

(assert (= bs!488328 d!783396))

(declare-fun m!3118749 () Bool)

(assert (=> bs!488328 m!3118749))

(assert (=> b!2718289 d!783396))

(declare-fun b!2719114 () Bool)

(declare-fun e!1713745 () Bool)

(declare-fun lt!962320 () tuple2!31052)

(assert (=> b!2719114 (= e!1713745 (= (_2!18158 lt!962320) (list!11881 totalInput!328)))))

(declare-fun b!2719116 () Bool)

(declare-fun e!1713744 () tuple2!31052)

(assert (=> b!2719116 (= e!1713744 (tuple2!31053 Nil!31363 (list!11881 totalInput!328)))))

(declare-fun b!2719117 () Bool)

(declare-fun lt!962321 () Option!6194)

(declare-fun lt!962319 () tuple2!31052)

(assert (=> b!2719117 (= e!1713744 (tuple2!31053 (Cons!31363 (_1!18160 (v!33035 lt!962321)) (_1!18158 lt!962319)) (_2!18158 lt!962319)))))

(assert (=> b!2719117 (= lt!962319 (lexList!1226 thiss!11556 rules!1182 (_2!18160 (v!33035 lt!962321))))))

(declare-fun b!2719118 () Bool)

(declare-fun e!1713743 () Bool)

(assert (=> b!2719118 (= e!1713743 (not (isEmpty!17895 (_1!18158 lt!962320))))))

(declare-fun d!783398 () Bool)

(assert (=> d!783398 e!1713745))

(declare-fun c!439437 () Bool)

(assert (=> d!783398 (= c!439437 (> (size!24195 (_1!18158 lt!962320)) 0))))

(assert (=> d!783398 (= lt!962320 e!1713744)))

(declare-fun c!439438 () Bool)

(assert (=> d!783398 (= c!439438 ((_ is Some!6193) lt!962321))))

(assert (=> d!783398 (= lt!962321 (maxPrefix!2367 thiss!11556 rules!1182 (list!11881 totalInput!328)))))

(assert (=> d!783398 (= (lexList!1226 thiss!11556 rules!1182 (list!11881 totalInput!328)) lt!962320)))

(declare-fun b!2719115 () Bool)

(assert (=> b!2719115 (= e!1713745 e!1713743)))

(declare-fun res!1142105 () Bool)

(assert (=> b!2719115 (= res!1142105 (< (size!24192 (_2!18158 lt!962320)) (size!24192 (list!11881 totalInput!328))))))

(assert (=> b!2719115 (=> (not res!1142105) (not e!1713743))))

(assert (= (and d!783398 c!439438) b!2719117))

(assert (= (and d!783398 (not c!439438)) b!2719116))

(assert (= (and d!783398 c!439437) b!2719115))

(assert (= (and d!783398 (not c!439437)) b!2719114))

(assert (= (and b!2719115 res!1142105) b!2719118))

(declare-fun m!3118751 () Bool)

(assert (=> b!2719117 m!3118751))

(declare-fun m!3118753 () Bool)

(assert (=> b!2719118 m!3118753))

(declare-fun m!3118755 () Bool)

(assert (=> d!783398 m!3118755))

(assert (=> d!783398 m!3117423))

(assert (=> d!783398 m!3118709))

(declare-fun m!3118757 () Bool)

(assert (=> b!2719115 m!3118757))

(assert (=> b!2719115 m!3117423))

(assert (=> b!2719115 m!3117833))

(assert (=> b!2718289 d!783398))

(assert (=> b!2718289 d!783092))

(declare-fun d!783400 () Bool)

(declare-fun res!1142106 () Bool)

(declare-fun e!1713746 () Bool)

(assert (=> d!783400 (=> (not res!1142106) (not e!1713746))))

(assert (=> d!783400 (= res!1142106 (<= (size!24192 (list!11888 (xs!12896 (c!439215 input!603)))) 512))))

(assert (=> d!783400 (= (inv!42590 (c!439215 input!603)) e!1713746)))

(declare-fun b!2719119 () Bool)

(declare-fun res!1142107 () Bool)

(assert (=> b!2719119 (=> (not res!1142107) (not e!1713746))))

(assert (=> b!2719119 (= res!1142107 (= (csize!19881 (c!439215 input!603)) (size!24192 (list!11888 (xs!12896 (c!439215 input!603))))))))

(declare-fun b!2719120 () Bool)

(assert (=> b!2719120 (= e!1713746 (and (> (csize!19881 (c!439215 input!603)) 0) (<= (csize!19881 (c!439215 input!603)) 512)))))

(assert (= (and d!783400 res!1142106) b!2719119))

(assert (= (and b!2719119 res!1142107) b!2719120))

(assert (=> d!783400 m!3118643))

(assert (=> d!783400 m!3118643))

(declare-fun m!3118759 () Bool)

(assert (=> d!783400 m!3118759))

(assert (=> b!2719119 m!3118643))

(assert (=> b!2719119 m!3118643))

(assert (=> b!2719119 m!3118759))

(assert (=> b!2718118 d!783400))

(assert (=> b!2718287 d!783282))

(assert (=> b!2718287 d!783398))

(assert (=> b!2718287 d!783092))

(declare-fun d!783402 () Bool)

(assert (=> d!783402 (= (inv!42595 (xs!12896 (c!439215 treated!9))) (<= (size!24192 (innerList!9885 (xs!12896 (c!439215 treated!9)))) 2147483647))))

(declare-fun bs!488329 () Bool)

(assert (= bs!488329 d!783402))

(declare-fun m!3118769 () Bool)

(assert (=> bs!488329 m!3118769))

(assert (=> b!2718338 d!783402))

(declare-fun d!783404 () Bool)

(declare-fun res!1142108 () Bool)

(declare-fun e!1713747 () Bool)

(assert (=> d!783404 (=> (not res!1142108) (not e!1713747))))

(assert (=> d!783404 (= res!1142108 (= (csize!19880 (c!439215 input!603)) (+ (size!24193 (left!24110 (c!439215 input!603))) (size!24193 (right!24440 (c!439215 input!603))))))))

(assert (=> d!783404 (= (inv!42589 (c!439215 input!603)) e!1713747)))

(declare-fun b!2719121 () Bool)

(declare-fun res!1142109 () Bool)

(assert (=> b!2719121 (=> (not res!1142109) (not e!1713747))))

(assert (=> b!2719121 (= res!1142109 (and (not (= (left!24110 (c!439215 input!603)) Empty!9825)) (not (= (right!24440 (c!439215 input!603)) Empty!9825))))))

(declare-fun b!2719122 () Bool)

(declare-fun res!1142110 () Bool)

(assert (=> b!2719122 (=> (not res!1142110) (not e!1713747))))

(assert (=> b!2719122 (= res!1142110 (= (cheight!10036 (c!439215 input!603)) (+ (max!0 (height!1455 (left!24110 (c!439215 input!603))) (height!1455 (right!24440 (c!439215 input!603)))) 1)))))

(declare-fun b!2719123 () Bool)

(assert (=> b!2719123 (= e!1713747 (<= 0 (cheight!10036 (c!439215 input!603))))))

(assert (= (and d!783404 res!1142108) b!2719121))

(assert (= (and b!2719121 res!1142109) b!2719122))

(assert (= (and b!2719122 res!1142110) b!2719123))

(declare-fun m!3118777 () Bool)

(assert (=> d!783404 m!3118777))

(declare-fun m!3118779 () Bool)

(assert (=> d!783404 m!3118779))

(assert (=> b!2719122 m!3118199))

(assert (=> b!2719122 m!3118201))

(assert (=> b!2719122 m!3118199))

(assert (=> b!2719122 m!3118201))

(declare-fun m!3118781 () Bool)

(assert (=> b!2719122 m!3118781))

(assert (=> b!2718116 d!783404))

(declare-fun b!2719124 () Bool)

(declare-fun e!1713748 () Bool)

(assert (=> b!2719124 (= e!1713748 tp_is_empty!13885)))

(declare-fun b!2719126 () Bool)

(declare-fun tp!858080 () Bool)

(assert (=> b!2719126 (= e!1713748 tp!858080)))

(declare-fun b!2719125 () Bool)

(declare-fun tp!858083 () Bool)

(declare-fun tp!858082 () Bool)

(assert (=> b!2719125 (= e!1713748 (and tp!858083 tp!858082))))

(declare-fun b!2719127 () Bool)

(declare-fun tp!858081 () Bool)

(declare-fun tp!858084 () Bool)

(assert (=> b!2719127 (= e!1713748 (and tp!858081 tp!858084))))

(assert (=> b!2718363 (= tp!858061 e!1713748)))

(assert (= (and b!2718363 ((_ is ElementMatch!7951) (regex!4799 (h!36784 (t!226316 rules!1182))))) b!2719124))

(assert (= (and b!2718363 ((_ is Concat!12973) (regex!4799 (h!36784 (t!226316 rules!1182))))) b!2719125))

(assert (= (and b!2718363 ((_ is Star!7951) (regex!4799 (h!36784 (t!226316 rules!1182))))) b!2719126))

(assert (= (and b!2718363 ((_ is Union!7951) (regex!4799 (h!36784 (t!226316 rules!1182))))) b!2719127))

(declare-fun b!2719128 () Bool)

(declare-fun tp!858085 () Bool)

(declare-fun tp!858086 () Bool)

(declare-fun e!1713749 () Bool)

(assert (=> b!2719128 (= e!1713749 (and (inv!42580 (left!24110 (left!24110 (c!439215 treated!9)))) tp!858086 (inv!42580 (right!24440 (left!24110 (c!439215 treated!9)))) tp!858085))))

(declare-fun b!2719130 () Bool)

(declare-fun e!1713750 () Bool)

(declare-fun tp!858087 () Bool)

(assert (=> b!2719130 (= e!1713750 tp!858087)))

(declare-fun b!2719129 () Bool)

(assert (=> b!2719129 (= e!1713749 (and (inv!42595 (xs!12896 (left!24110 (c!439215 treated!9)))) e!1713750))))

(assert (=> b!2718337 (= tp!858036 (and (inv!42580 (left!24110 (c!439215 treated!9))) e!1713749))))

(assert (= (and b!2718337 ((_ is Node!9825) (left!24110 (c!439215 treated!9)))) b!2719128))

(assert (= b!2719129 b!2719130))

(assert (= (and b!2718337 ((_ is Leaf!14969) (left!24110 (c!439215 treated!9)))) b!2719129))

(declare-fun m!3118791 () Bool)

(assert (=> b!2719128 m!3118791))

(declare-fun m!3118793 () Bool)

(assert (=> b!2719128 m!3118793))

(declare-fun m!3118795 () Bool)

(assert (=> b!2719129 m!3118795))

(assert (=> b!2718337 m!3117765))

(declare-fun b!2719131 () Bool)

(declare-fun tp!858088 () Bool)

(declare-fun e!1713751 () Bool)

(declare-fun tp!858089 () Bool)

(assert (=> b!2719131 (= e!1713751 (and (inv!42580 (left!24110 (right!24440 (c!439215 treated!9)))) tp!858089 (inv!42580 (right!24440 (right!24440 (c!439215 treated!9)))) tp!858088))))

(declare-fun b!2719133 () Bool)

(declare-fun e!1713752 () Bool)

(declare-fun tp!858090 () Bool)

(assert (=> b!2719133 (= e!1713752 tp!858090)))

(declare-fun b!2719132 () Bool)

(assert (=> b!2719132 (= e!1713751 (and (inv!42595 (xs!12896 (right!24440 (c!439215 treated!9)))) e!1713752))))

(assert (=> b!2718337 (= tp!858035 (and (inv!42580 (right!24440 (c!439215 treated!9))) e!1713751))))

(assert (= (and b!2718337 ((_ is Node!9825) (right!24440 (c!439215 treated!9)))) b!2719131))

(assert (= b!2719132 b!2719133))

(assert (= (and b!2718337 ((_ is Leaf!14969) (right!24440 (c!439215 treated!9)))) b!2719132))

(declare-fun m!3118797 () Bool)

(assert (=> b!2719131 m!3118797))

(declare-fun m!3118799 () Bool)

(assert (=> b!2719131 m!3118799))

(declare-fun m!3118801 () Bool)

(assert (=> b!2719132 m!3118801))

(assert (=> b!2718337 m!3117767))

(declare-fun b!2719136 () Bool)

(declare-fun b_free!76605 () Bool)

(declare-fun b_next!77309 () Bool)

(assert (=> b!2719136 (= b_free!76605 (not b_next!77309))))

(declare-fun tp!858093 () Bool)

(declare-fun b_and!200357 () Bool)

(assert (=> b!2719136 (= tp!858093 b_and!200357)))

(declare-fun b_free!76607 () Bool)

(declare-fun b_next!77311 () Bool)

(assert (=> b!2719136 (= b_free!76607 (not b_next!77311))))

(declare-fun tp!858092 () Bool)

(declare-fun b_and!200359 () Bool)

(assert (=> b!2719136 (= tp!858092 b_and!200359)))

(declare-fun e!1713756 () Bool)

(assert (=> b!2719136 (= e!1713756 (and tp!858093 tp!858092))))

(declare-fun tp!858094 () Bool)

(declare-fun b!2719135 () Bool)

(declare-fun e!1713753 () Bool)

(assert (=> b!2719135 (= e!1713753 (and tp!858094 (inv!42574 (tag!5303 (h!36784 (t!226316 (t!226316 rules!1182))))) (inv!42581 (transformation!4799 (h!36784 (t!226316 (t!226316 rules!1182))))) e!1713756))))

(declare-fun b!2719134 () Bool)

(declare-fun e!1713757 () Bool)

(declare-fun tp!858091 () Bool)

(assert (=> b!2719134 (= e!1713757 (and e!1713753 tp!858091))))

(assert (=> b!2718362 (= tp!858058 e!1713757)))

(assert (= b!2719135 b!2719136))

(assert (= b!2719134 b!2719135))

(assert (= (and b!2718362 ((_ is Cons!31364) (t!226316 (t!226316 rules!1182)))) b!2719134))

(declare-fun m!3118803 () Bool)

(assert (=> b!2719135 m!3118803))

(declare-fun m!3118805 () Bool)

(assert (=> b!2719135 m!3118805))

(declare-fun b!2719158 () Bool)

(declare-fun b_free!76609 () Bool)

(declare-fun b_next!77313 () Bool)

(assert (=> b!2719158 (= b_free!76609 (not b_next!77313))))

(declare-fun tp!858108 () Bool)

(declare-fun b_and!200361 () Bool)

(assert (=> b!2719158 (= tp!858108 b_and!200361)))

(declare-fun b_free!76611 () Bool)

(declare-fun b_next!77315 () Bool)

(assert (=> b!2719158 (= b_free!76611 (not b_next!77315))))

(declare-fun tp!858107 () Bool)

(declare-fun b_and!200363 () Bool)

(assert (=> b!2719158 (= tp!858107 b_and!200363)))

(declare-fun e!1713777 () Bool)

(declare-fun e!1713778 () Bool)

(declare-fun b!2719156 () Bool)

(declare-fun tp!858105 () Bool)

(declare-fun inv!21 (TokenValue!5021) Bool)

(assert (=> b!2719156 (= e!1713777 (and (inv!21 (value!154384 (h!36783 (innerList!9886 (xs!12897 (c!439217 acc!331)))))) e!1713778 tp!858105))))

(declare-fun tp!858106 () Bool)

(declare-fun e!1713775 () Bool)

(declare-fun b!2719155 () Bool)

(declare-fun inv!42597 (Token!9060) Bool)

(assert (=> b!2719155 (= e!1713775 (and (inv!42597 (h!36783 (innerList!9886 (xs!12897 (c!439217 acc!331))))) e!1713777 tp!858106))))

(declare-fun e!1713779 () Bool)

(assert (=> b!2719158 (= e!1713779 (and tp!858108 tp!858107))))

(declare-fun tp!858109 () Bool)

(declare-fun b!2719157 () Bool)

(assert (=> b!2719157 (= e!1713778 (and tp!858109 (inv!42574 (tag!5303 (rule!7227 (h!36783 (innerList!9886 (xs!12897 (c!439217 acc!331))))))) (inv!42581 (transformation!4799 (rule!7227 (h!36783 (innerList!9886 (xs!12897 (c!439217 acc!331))))))) e!1713779))))

(assert (=> b!2718353 (= tp!858048 e!1713775)))

(assert (= b!2719157 b!2719158))

(assert (= b!2719156 b!2719157))

(assert (= b!2719155 b!2719156))

(assert (= (and b!2718353 ((_ is Cons!31363) (innerList!9886 (xs!12897 (c!439217 acc!331))))) b!2719155))

(declare-fun m!3118809 () Bool)

(assert (=> b!2719156 m!3118809))

(declare-fun m!3118811 () Bool)

(assert (=> b!2719155 m!3118811))

(declare-fun m!3118813 () Bool)

(assert (=> b!2719157 m!3118813))

(declare-fun m!3118815 () Bool)

(assert (=> b!2719157 m!3118815))

(declare-fun b!2719159 () Bool)

(declare-fun tp!858112 () Bool)

(declare-fun e!1713780 () Bool)

(declare-fun tp!858110 () Bool)

(assert (=> b!2719159 (= e!1713780 (and (inv!42582 (left!24111 (left!24111 (c!439217 acc!331)))) tp!858110 (inv!42582 (right!24441 (left!24111 (c!439217 acc!331)))) tp!858112))))

(declare-fun b!2719161 () Bool)

(declare-fun e!1713781 () Bool)

(declare-fun tp!858111 () Bool)

(assert (=> b!2719161 (= e!1713781 tp!858111)))

(declare-fun b!2719160 () Bool)

(assert (=> b!2719160 (= e!1713780 (and (inv!42596 (xs!12897 (left!24111 (c!439217 acc!331)))) e!1713781))))

(assert (=> b!2718351 (= tp!858047 (and (inv!42582 (left!24111 (c!439217 acc!331))) e!1713780))))

(assert (= (and b!2718351 ((_ is Node!9826) (left!24111 (c!439217 acc!331)))) b!2719159))

(assert (= b!2719160 b!2719161))

(assert (= (and b!2718351 ((_ is Leaf!14970) (left!24111 (c!439217 acc!331)))) b!2719160))

(declare-fun m!3118817 () Bool)

(assert (=> b!2719159 m!3118817))

(declare-fun m!3118819 () Bool)

(assert (=> b!2719159 m!3118819))

(declare-fun m!3118821 () Bool)

(assert (=> b!2719160 m!3118821))

(assert (=> b!2718351 m!3117777))

(declare-fun e!1713782 () Bool)

(declare-fun tp!858115 () Bool)

(declare-fun tp!858113 () Bool)

(declare-fun b!2719162 () Bool)

(assert (=> b!2719162 (= e!1713782 (and (inv!42582 (left!24111 (right!24441 (c!439217 acc!331)))) tp!858113 (inv!42582 (right!24441 (right!24441 (c!439217 acc!331)))) tp!858115))))

(declare-fun b!2719164 () Bool)

(declare-fun e!1713783 () Bool)

(declare-fun tp!858114 () Bool)

(assert (=> b!2719164 (= e!1713783 tp!858114)))

(declare-fun b!2719163 () Bool)

(assert (=> b!2719163 (= e!1713782 (and (inv!42596 (xs!12897 (right!24441 (c!439217 acc!331)))) e!1713783))))

(assert (=> b!2718351 (= tp!858049 (and (inv!42582 (right!24441 (c!439217 acc!331))) e!1713782))))

(assert (= (and b!2718351 ((_ is Node!9826) (right!24441 (c!439217 acc!331)))) b!2719162))

(assert (= b!2719163 b!2719164))

(assert (= (and b!2718351 ((_ is Leaf!14970) (right!24441 (c!439217 acc!331)))) b!2719163))

(declare-fun m!3118823 () Bool)

(assert (=> b!2719162 m!3118823))

(declare-fun m!3118825 () Bool)

(assert (=> b!2719162 m!3118825))

(declare-fun m!3118827 () Bool)

(assert (=> b!2719163 m!3118827))

(assert (=> b!2718351 m!3117779))

(declare-fun b!2719165 () Bool)

(declare-fun e!1713784 () Bool)

(assert (=> b!2719165 (= e!1713784 tp_is_empty!13885)))

(declare-fun b!2719167 () Bool)

(declare-fun tp!858116 () Bool)

(assert (=> b!2719167 (= e!1713784 tp!858116)))

(declare-fun b!2719166 () Bool)

(declare-fun tp!858119 () Bool)

(declare-fun tp!858118 () Bool)

(assert (=> b!2719166 (= e!1713784 (and tp!858119 tp!858118))))

(declare-fun b!2719168 () Bool)

(declare-fun tp!858117 () Bool)

(declare-fun tp!858120 () Bool)

(assert (=> b!2719168 (= e!1713784 (and tp!858117 tp!858120))))

(assert (=> b!2718381 (= tp!858076 e!1713784)))

(assert (= (and b!2718381 ((_ is ElementMatch!7951) (regOne!16415 (regex!4799 (h!36784 rules!1182))))) b!2719165))

(assert (= (and b!2718381 ((_ is Concat!12973) (regOne!16415 (regex!4799 (h!36784 rules!1182))))) b!2719166))

(assert (= (and b!2718381 ((_ is Star!7951) (regOne!16415 (regex!4799 (h!36784 rules!1182))))) b!2719167))

(assert (= (and b!2718381 ((_ is Union!7951) (regOne!16415 (regex!4799 (h!36784 rules!1182))))) b!2719168))

(declare-fun b!2719171 () Bool)

(declare-fun e!1713785 () Bool)

(assert (=> b!2719171 (= e!1713785 tp_is_empty!13885)))

(declare-fun b!2719173 () Bool)

(declare-fun tp!858121 () Bool)

(assert (=> b!2719173 (= e!1713785 tp!858121)))

(declare-fun b!2719172 () Bool)

(declare-fun tp!858124 () Bool)

(declare-fun tp!858123 () Bool)

(assert (=> b!2719172 (= e!1713785 (and tp!858124 tp!858123))))

(declare-fun b!2719174 () Bool)

(declare-fun tp!858122 () Bool)

(declare-fun tp!858125 () Bool)

(assert (=> b!2719174 (= e!1713785 (and tp!858122 tp!858125))))

(assert (=> b!2718381 (= tp!858079 e!1713785)))

(assert (= (and b!2718381 ((_ is ElementMatch!7951) (regTwo!16415 (regex!4799 (h!36784 rules!1182))))) b!2719171))

(assert (= (and b!2718381 ((_ is Concat!12973) (regTwo!16415 (regex!4799 (h!36784 rules!1182))))) b!2719172))

(assert (= (and b!2718381 ((_ is Star!7951) (regTwo!16415 (regex!4799 (h!36784 rules!1182))))) b!2719173))

(assert (= (and b!2718381 ((_ is Union!7951) (regTwo!16415 (regex!4799 (h!36784 rules!1182))))) b!2719174))

(declare-fun b!2719182 () Bool)

(declare-fun e!1713789 () Bool)

(declare-fun tp!858128 () Bool)

(assert (=> b!2719182 (= e!1713789 (and tp_is_empty!13885 tp!858128))))

(assert (=> b!2718342 (= tp!858040 e!1713789)))

(assert (= (and b!2718342 ((_ is Cons!31361) (innerList!9885 (xs!12896 (c!439215 totalInput!328))))) b!2719182))

(declare-fun b!2719183 () Bool)

(declare-fun e!1713790 () Bool)

(declare-fun tp!858129 () Bool)

(assert (=> b!2719183 (= e!1713790 (and tp_is_empty!13885 tp!858129))))

(assert (=> b!2718367 (= tp!858064 e!1713790)))

(assert (= (and b!2718367 ((_ is Cons!31361) (innerList!9885 (xs!12896 (c!439215 input!603))))) b!2719183))

(declare-fun b!2719184 () Bool)

(declare-fun e!1713791 () Bool)

(assert (=> b!2719184 (= e!1713791 tp_is_empty!13885)))

(declare-fun b!2719186 () Bool)

(declare-fun tp!858130 () Bool)

(assert (=> b!2719186 (= e!1713791 tp!858130)))

(declare-fun b!2719185 () Bool)

(declare-fun tp!858133 () Bool)

(declare-fun tp!858132 () Bool)

(assert (=> b!2719185 (= e!1713791 (and tp!858133 tp!858132))))

(declare-fun b!2719187 () Bool)

(declare-fun tp!858131 () Bool)

(declare-fun tp!858134 () Bool)

(assert (=> b!2719187 (= e!1713791 (and tp!858131 tp!858134))))

(assert (=> b!2718380 (= tp!858075 e!1713791)))

(assert (= (and b!2718380 ((_ is ElementMatch!7951) (reg!8280 (regex!4799 (h!36784 rules!1182))))) b!2719184))

(assert (= (and b!2718380 ((_ is Concat!12973) (reg!8280 (regex!4799 (h!36784 rules!1182))))) b!2719185))

(assert (= (and b!2718380 ((_ is Star!7951) (reg!8280 (regex!4799 (h!36784 rules!1182))))) b!2719186))

(assert (= (and b!2718380 ((_ is Union!7951) (reg!8280 (regex!4799 (h!36784 rules!1182))))) b!2719187))

(declare-fun b!2719188 () Bool)

(declare-fun e!1713792 () Bool)

(assert (=> b!2719188 (= e!1713792 tp_is_empty!13885)))

(declare-fun b!2719190 () Bool)

(declare-fun tp!858135 () Bool)

(assert (=> b!2719190 (= e!1713792 tp!858135)))

(declare-fun b!2719189 () Bool)

(declare-fun tp!858138 () Bool)

(declare-fun tp!858137 () Bool)

(assert (=> b!2719189 (= e!1713792 (and tp!858138 tp!858137))))

(declare-fun b!2719191 () Bool)

(declare-fun tp!858136 () Bool)

(declare-fun tp!858139 () Bool)

(assert (=> b!2719191 (= e!1713792 (and tp!858136 tp!858139))))

(assert (=> b!2718379 (= tp!858078 e!1713792)))

(assert (= (and b!2718379 ((_ is ElementMatch!7951) (regOne!16414 (regex!4799 (h!36784 rules!1182))))) b!2719188))

(assert (= (and b!2718379 ((_ is Concat!12973) (regOne!16414 (regex!4799 (h!36784 rules!1182))))) b!2719189))

(assert (= (and b!2718379 ((_ is Star!7951) (regOne!16414 (regex!4799 (h!36784 rules!1182))))) b!2719190))

(assert (= (and b!2718379 ((_ is Union!7951) (regOne!16414 (regex!4799 (h!36784 rules!1182))))) b!2719191))

(declare-fun b!2719195 () Bool)

(declare-fun e!1713795 () Bool)

(assert (=> b!2719195 (= e!1713795 tp_is_empty!13885)))

(declare-fun b!2719197 () Bool)

(declare-fun tp!858140 () Bool)

(assert (=> b!2719197 (= e!1713795 tp!858140)))

(declare-fun b!2719196 () Bool)

(declare-fun tp!858143 () Bool)

(declare-fun tp!858142 () Bool)

(assert (=> b!2719196 (= e!1713795 (and tp!858143 tp!858142))))

(declare-fun b!2719198 () Bool)

(declare-fun tp!858141 () Bool)

(declare-fun tp!858144 () Bool)

(assert (=> b!2719198 (= e!1713795 (and tp!858141 tp!858144))))

(assert (=> b!2718379 (= tp!858077 e!1713795)))

(assert (= (and b!2718379 ((_ is ElementMatch!7951) (regTwo!16414 (regex!4799 (h!36784 rules!1182))))) b!2719195))

(assert (= (and b!2718379 ((_ is Concat!12973) (regTwo!16414 (regex!4799 (h!36784 rules!1182))))) b!2719196))

(assert (= (and b!2718379 ((_ is Star!7951) (regTwo!16414 (regex!4799 (h!36784 rules!1182))))) b!2719197))

(assert (= (and b!2718379 ((_ is Union!7951) (regTwo!16414 (regex!4799 (h!36784 rules!1182))))) b!2719198))

(declare-fun b!2719202 () Bool)

(declare-fun e!1713798 () Bool)

(declare-fun tp!858146 () Bool)

(declare-fun tp!858145 () Bool)

(assert (=> b!2719202 (= e!1713798 (and (inv!42580 (left!24110 (left!24110 (c!439215 totalInput!328)))) tp!858146 (inv!42580 (right!24440 (left!24110 (c!439215 totalInput!328)))) tp!858145))))

(declare-fun b!2719204 () Bool)

(declare-fun e!1713799 () Bool)

(declare-fun tp!858147 () Bool)

(assert (=> b!2719204 (= e!1713799 tp!858147)))

(declare-fun b!2719203 () Bool)

(assert (=> b!2719203 (= e!1713798 (and (inv!42595 (xs!12896 (left!24110 (c!439215 totalInput!328)))) e!1713799))))

(assert (=> b!2718340 (= tp!858039 (and (inv!42580 (left!24110 (c!439215 totalInput!328))) e!1713798))))

(assert (= (and b!2718340 ((_ is Node!9825) (left!24110 (c!439215 totalInput!328)))) b!2719202))

(assert (= b!2719203 b!2719204))

(assert (= (and b!2718340 ((_ is Leaf!14969) (left!24110 (c!439215 totalInput!328)))) b!2719203))

(declare-fun m!3118849 () Bool)

(assert (=> b!2719202 m!3118849))

(declare-fun m!3118851 () Bool)

(assert (=> b!2719202 m!3118851))

(declare-fun m!3118853 () Bool)

(assert (=> b!2719203 m!3118853))

(assert (=> b!2718340 m!3117771))

(declare-fun tp!858148 () Bool)

(declare-fun tp!858149 () Bool)

(declare-fun e!1713800 () Bool)

(declare-fun b!2719205 () Bool)

(assert (=> b!2719205 (= e!1713800 (and (inv!42580 (left!24110 (right!24440 (c!439215 totalInput!328)))) tp!858149 (inv!42580 (right!24440 (right!24440 (c!439215 totalInput!328)))) tp!858148))))

(declare-fun b!2719207 () Bool)

(declare-fun e!1713801 () Bool)

(declare-fun tp!858150 () Bool)

(assert (=> b!2719207 (= e!1713801 tp!858150)))

(declare-fun b!2719206 () Bool)

(assert (=> b!2719206 (= e!1713800 (and (inv!42595 (xs!12896 (right!24440 (c!439215 totalInput!328)))) e!1713801))))

(assert (=> b!2718340 (= tp!858038 (and (inv!42580 (right!24440 (c!439215 totalInput!328))) e!1713800))))

(assert (= (and b!2718340 ((_ is Node!9825) (right!24440 (c!439215 totalInput!328)))) b!2719205))

(assert (= b!2719206 b!2719207))

(assert (= (and b!2718340 ((_ is Leaf!14969) (right!24440 (c!439215 totalInput!328)))) b!2719206))

(declare-fun m!3118855 () Bool)

(assert (=> b!2719205 m!3118855))

(declare-fun m!3118857 () Bool)

(assert (=> b!2719205 m!3118857))

(declare-fun m!3118859 () Bool)

(assert (=> b!2719206 m!3118859))

(assert (=> b!2718340 m!3117773))

(declare-fun tp!858151 () Bool)

(declare-fun tp!858152 () Bool)

(declare-fun b!2719208 () Bool)

(declare-fun e!1713802 () Bool)

(assert (=> b!2719208 (= e!1713802 (and (inv!42580 (left!24110 (left!24110 (c!439215 input!603)))) tp!858152 (inv!42580 (right!24440 (left!24110 (c!439215 input!603)))) tp!858151))))

(declare-fun b!2719210 () Bool)

(declare-fun e!1713803 () Bool)

(declare-fun tp!858153 () Bool)

(assert (=> b!2719210 (= e!1713803 tp!858153)))

(declare-fun b!2719209 () Bool)

(assert (=> b!2719209 (= e!1713802 (and (inv!42595 (xs!12896 (left!24110 (c!439215 input!603)))) e!1713803))))

(assert (=> b!2718365 (= tp!858063 (and (inv!42580 (left!24110 (c!439215 input!603))) e!1713802))))

(assert (= (and b!2718365 ((_ is Node!9825) (left!24110 (c!439215 input!603)))) b!2719208))

(assert (= b!2719209 b!2719210))

(assert (= (and b!2718365 ((_ is Leaf!14969) (left!24110 (c!439215 input!603)))) b!2719209))

(declare-fun m!3118861 () Bool)

(assert (=> b!2719208 m!3118861))

(declare-fun m!3118863 () Bool)

(assert (=> b!2719208 m!3118863))

(declare-fun m!3118865 () Bool)

(assert (=> b!2719209 m!3118865))

(assert (=> b!2718365 m!3117787))

(declare-fun tp!858154 () Bool)

(declare-fun e!1713806 () Bool)

(declare-fun b!2719215 () Bool)

(declare-fun tp!858155 () Bool)

(assert (=> b!2719215 (= e!1713806 (and (inv!42580 (left!24110 (right!24440 (c!439215 input!603)))) tp!858155 (inv!42580 (right!24440 (right!24440 (c!439215 input!603)))) tp!858154))))

(declare-fun b!2719217 () Bool)

(declare-fun e!1713807 () Bool)

(declare-fun tp!858156 () Bool)

(assert (=> b!2719217 (= e!1713807 tp!858156)))

(declare-fun b!2719216 () Bool)

(assert (=> b!2719216 (= e!1713806 (and (inv!42595 (xs!12896 (right!24440 (c!439215 input!603)))) e!1713807))))

(assert (=> b!2718365 (= tp!858062 (and (inv!42580 (right!24440 (c!439215 input!603))) e!1713806))))

(assert (= (and b!2718365 ((_ is Node!9825) (right!24440 (c!439215 input!603)))) b!2719215))

(assert (= b!2719216 b!2719217))

(assert (= (and b!2718365 ((_ is Leaf!14969) (right!24440 (c!439215 input!603)))) b!2719216))

(declare-fun m!3118867 () Bool)

(assert (=> b!2719215 m!3118867))

(declare-fun m!3118869 () Bool)

(assert (=> b!2719215 m!3118869))

(declare-fun m!3118871 () Bool)

(assert (=> b!2719216 m!3118871))

(assert (=> b!2718365 m!3117789))

(declare-fun b!2719218 () Bool)

(declare-fun e!1713808 () Bool)

(declare-fun tp!858157 () Bool)

(assert (=> b!2719218 (= e!1713808 (and tp_is_empty!13885 tp!858157))))

(assert (=> b!2718339 (= tp!858037 e!1713808)))

(assert (= (and b!2718339 ((_ is Cons!31361) (innerList!9885 (xs!12896 (c!439215 treated!9))))) b!2719218))

(check-sat (not b!2718932) (not d!783364) (not d!783276) b_and!200353 (not d!783380) (not b!2718828) (not d!783348) (not d!783254) (not b!2718733) (not b!2719058) (not b!2718897) (not b!2719049) (not b!2718708) (not b_next!77297) (not b!2718873) (not b!2719105) (not b!2719041) (not b!2718589) (not b!2719073) (not d!783400) (not b!2719204) (not b!2718833) (not b!2718891) (not b!2718735) b_and!200347 (not b!2719070) (not d!783282) (not b!2718516) (not b!2719069) (not b!2719118) (not b!2719043) (not d!783338) (not b_next!77311) (not b!2719134) (not b!2719161) (not b!2718411) (not b!2718978) (not b!2719183) (not b!2719094) (not b!2718941) (not b!2718854) (not d!783124) (not b!2719159) (not b!2718969) (not b!2718780) (not b!2719065) (not d!783230) (not b!2718584) (not b!2719157) (not b!2719210) (not b!2718936) (not b!2718972) (not b!2718832) (not b!2719202) (not bm!175364) (not b!2719173) (not b!2718940) (not b!2718974) b_and!200345 (not b!2718835) (not b!2718421) (not d!783118) (not b!2718868) (not b!2718869) (not b!2718409) (not d!783266) (not b_next!77313) (not b!2718955) (not b!2718814) (not d!783274) b_and!200355 (not b!2718701) (not d!783404) (not b_next!77299) (not d!783258) (not d!783368) (not b!2719128) (not b!2718515) (not b!2718416) (not b!2719156) (not b!2718971) (not b!2718340) (not b!2719025) (not b!2719023) (not b!2718901) (not b!2718413) (not d!783116) (not b!2718865) (not b!2718806) (not b!2719122) (not b!2718892) (not b!2718822) (not bm!175455) (not b!2718351) (not d!783354) (not b!2718408) (not b!2718517) (not b!2719119) (not d!783240) (not bm!175448) (not d!783104) (not b!2719160) (not bm!175466) (not d!783302) (not b!2718781) (not b!2718830) (not b!2718785) (not b!2718802) (not b!2718925) (not b!2718412) (not b!2719207) (not b!2718823) (not b!2718924) (not b!2719064) (not d!783236) (not b_next!77305) (not b!2718337) b_and!200361 (not b!2719127) (not b!2718711) (not b!2718953) (not b!2718809) (not b!2719066) (not b!2719216) (not bm!175460) (not b!2718419) (not d!783322) (not b!2719059) (not b!2719167) (not b!2718713) (not d!783234) (not d!783382) (not b!2718867) (not b!2718870) (not b!2718518) (not b!2719190) (not d!783238) (not b!2719063) (not bm!175454) (not b!2718519) (not b!2718710) (not b!2719014) (not b!2718848) (not d!783226) (not b!2718587) (not d!783366) (not d!783396) (not b!2718365) (not b!2719205) (not b!2718927) (not b!2719162) (not b!2718776) (not b!2718783) (not b!2719090) (not b!2719198) (not b!2718956) (not b!2719133) (not b!2718843) (not b!2719196) (not b!2719164) (not b!2719117) (not b!2719092) (not b!2719163) (not b!2718583) (not b!2718954) (not b!2719131) (not b!2718872) (not b!2718926) (not b!2718813) (not b!2719182) (not b!2718784) (not bm!175451) (not b!2719187) (not b!2719155) (not b!2719132) (not b!2718888) (not b_next!77309) (not b!2718853) (not b_next!77315) (not b!2719051) (not b!2718415) (not b!2719130) (not b!2718929) (not b!2718950) (not b!2718890) (not b!2719104) (not b!2719168) (not b!2719020) (not b!2718937) b_and!200359 b_and!200363 (not bm!175464) (not d!783298) (not b!2718414) (not d!783252) (not b!2718933) (not d!783260) tp_is_empty!13885 (not d!783294) (not b!2718811) (not b!2718889) (not d!783172) (not b!2718782) (not b!2719215) (not b!2718847) (not d!783330) (not b!2718866) (not b!2719218) (not d!783398) (not b!2719095) (not b!2719068) (not b!2719089) (not b!2719206) (not d!783286) (not d!783106) (not b!2718812) (not b!2718957) (not b!2718588) (not b!2718928) (not b!2719197) (not b!2719126) (not b!2718796) (not b!2719129) (not b!2719096) (not d!783184) (not b!2718797) (not b!2718731) (not bm!175446) (not b!2718520) (not d!783314) (not b!2718935) (not b!2718820) (not d!783292) (not b!2718902) (not d!783186) (not b!2718934) (not b!2718807) (not d!783152) (not b!2719174) (not b!2719185) (not b!2718779) (not b!2718922) (not bm!175445) (not b!2719115) (not d!783316) (not b!2719013) (not b!2718581) (not b!2718939) (not d!783392) (not b!2719186) (not d!783296) (not b!2718887) (not b!2719217) (not b!2719172) (not b!2719191) (not b!2718693) (not b!2718808) (not b!2719028) (not b!2719135) (not b!2719209) (not b!2719022) (not b!2719093) (not b_next!77307) (not d!783402) (not d!783280) (not d!783320) (not b!2719203) (not b!2719189) (not b!2719125) (not d!783370) (not b!2718977) (not b!2718874) (not d!783256) (not b!2719208) (not b!2718951) (not b!2718778) (not b!2719067) (not b!2719074) (not b!2719166) (not b!2719029) (not b!2718418) b_and!200357)
(check-sat b_and!200353 (not b_next!77297) b_and!200347 (not b_next!77311) (not b_next!77309) (not b_next!77315) (not b_next!77307) b_and!200357 b_and!200345 (not b_next!77313) b_and!200355 (not b_next!77299) (not b_next!77305) b_and!200361 b_and!200359 b_and!200363)
