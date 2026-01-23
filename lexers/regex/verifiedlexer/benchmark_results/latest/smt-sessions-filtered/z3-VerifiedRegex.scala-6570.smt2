; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!347526 () Bool)

(assert start!347526)

(declare-fun b!3692178 () Bool)

(declare-fun b_free!98041 () Bool)

(declare-fun b_next!98745 () Bool)

(assert (=> b!3692178 (= b_free!98041 (not b_next!98745))))

(declare-fun tp!1122020 () Bool)

(declare-fun b_and!275807 () Bool)

(assert (=> b!3692178 (= tp!1122020 b_and!275807)))

(declare-fun b_free!98043 () Bool)

(declare-fun b_next!98747 () Bool)

(assert (=> b!3692178 (= b_free!98043 (not b_next!98747))))

(declare-fun tp!1122018 () Bool)

(declare-fun b_and!275809 () Bool)

(assert (=> b!3692178 (= tp!1122018 b_and!275809)))

(declare-fun b!3692180 () Bool)

(declare-fun b_free!98045 () Bool)

(declare-fun b_next!98749 () Bool)

(assert (=> b!3692180 (= b_free!98045 (not b_next!98749))))

(declare-fun tp!1122015 () Bool)

(declare-fun b_and!275811 () Bool)

(assert (=> b!3692180 (= tp!1122015 b_and!275811)))

(declare-fun b_free!98047 () Bool)

(declare-fun b_next!98751 () Bool)

(assert (=> b!3692180 (= b_free!98047 (not b_next!98751))))

(declare-fun tp!1122014 () Bool)

(declare-fun b_and!275813 () Bool)

(assert (=> b!3692180 (= tp!1122014 b_and!275813)))

(declare-fun b!3692174 () Bool)

(declare-fun res!1501000 () Bool)

(declare-fun e!2286330 () Bool)

(assert (=> b!3692174 (=> (not res!1501000) (not e!2286330))))

(declare-datatypes ((List!39257 0))(
  ( (Nil!39133) (Cons!39133 (h!44553 (_ BitVec 16)) (t!301406 List!39257)) )
))
(declare-datatypes ((TokenValue!6150 0))(
  ( (FloatLiteralValue!12300 (text!43495 List!39257)) (TokenValueExt!6149 (__x!24517 Int)) (Broken!30750 (value!189148 List!39257)) (Object!6273) (End!6150) (Def!6150) (Underscore!6150) (Match!6150) (Else!6150) (Error!6150) (Case!6150) (If!6150) (Extends!6150) (Abstract!6150) (Class!6150) (Val!6150) (DelimiterValue!12300 (del!6210 List!39257)) (KeywordValue!6156 (value!189149 List!39257)) (CommentValue!12300 (value!189150 List!39257)) (WhitespaceValue!12300 (value!189151 List!39257)) (IndentationValue!6150 (value!189152 List!39257)) (String!44083) (Int32!6150) (Broken!30751 (value!189153 List!39257)) (Boolean!6151) (Unit!57143) (OperatorValue!6153 (op!6210 List!39257)) (IdentifierValue!12300 (value!189154 List!39257)) (IdentifierValue!12301 (value!189155 List!39257)) (WhitespaceValue!12301 (value!189156 List!39257)) (True!12300) (False!12300) (Broken!30752 (value!189157 List!39257)) (Broken!30753 (value!189158 List!39257)) (True!12301) (RightBrace!6150) (RightBracket!6150) (Colon!6150) (Null!6150) (Comma!6150) (LeftBracket!6150) (False!12301) (LeftBrace!6150) (ImaginaryLiteralValue!6150 (text!43496 List!39257)) (StringLiteralValue!18450 (value!189159 List!39257)) (EOFValue!6150 (value!189160 List!39257)) (IdentValue!6150 (value!189161 List!39257)) (DelimiterValue!12301 (value!189162 List!39257)) (DedentValue!6150 (value!189163 List!39257)) (NewLineValue!6150 (value!189164 List!39257)) (IntegerValue!18450 (value!189165 (_ BitVec 32)) (text!43497 List!39257)) (IntegerValue!18451 (value!189166 Int) (text!43498 List!39257)) (Times!6150) (Or!6150) (Equal!6150) (Minus!6150) (Broken!30754 (value!189167 List!39257)) (And!6150) (Div!6150) (LessEqual!6150) (Mod!6150) (Concat!16829) (Not!6150) (Plus!6150) (SpaceValue!6150 (value!189168 List!39257)) (IntegerValue!18452 (value!189169 Int) (text!43499 List!39257)) (StringLiteralValue!18451 (text!43500 List!39257)) (FloatLiteralValue!12301 (text!43501 List!39257)) (BytesLiteralValue!6150 (value!189170 List!39257)) (CommentValue!12301 (value!189171 List!39257)) (StringLiteralValue!18452 (value!189172 List!39257)) (ErrorTokenValue!6150 (msg!6211 List!39257)) )
))
(declare-datatypes ((C!21544 0))(
  ( (C!21545 (val!12820 Int)) )
))
(declare-datatypes ((Regex!10679 0))(
  ( (ElementMatch!10679 (c!638444 C!21544)) (Concat!16830 (regOne!21870 Regex!10679) (regTwo!21870 Regex!10679)) (EmptyExpr!10679) (Star!10679 (reg!11008 Regex!10679)) (EmptyLang!10679) (Union!10679 (regOne!21871 Regex!10679) (regTwo!21871 Regex!10679)) )
))
(declare-datatypes ((String!44084 0))(
  ( (String!44085 (value!189173 String)) )
))
(declare-datatypes ((List!39258 0))(
  ( (Nil!39134) (Cons!39134 (h!44554 C!21544) (t!301407 List!39258)) )
))
(declare-datatypes ((IArray!24039 0))(
  ( (IArray!24040 (innerList!12077 List!39258)) )
))
(declare-datatypes ((Conc!12017 0))(
  ( (Node!12017 (left!30515 Conc!12017) (right!30845 Conc!12017) (csize!24264 Int) (cheight!12228 Int)) (Leaf!18588 (xs!15219 IArray!24039) (csize!24265 Int)) (Empty!12017) )
))
(declare-datatypes ((BalanceConc!23648 0))(
  ( (BalanceConc!23649 (c!638445 Conc!12017)) )
))
(declare-datatypes ((TokenValueInjection!11728 0))(
  ( (TokenValueInjection!11729 (toValue!8244 Int) (toChars!8103 Int)) )
))
(declare-datatypes ((Rule!11640 0))(
  ( (Rule!11641 (regex!5920 Regex!10679) (tag!6742 String!44084) (isSeparator!5920 Bool) (transformation!5920 TokenValueInjection!11728)) )
))
(declare-datatypes ((List!39259 0))(
  ( (Nil!39135) (Cons!39135 (h!44555 Rule!11640) (t!301408 List!39259)) )
))
(declare-fun rules!3598 () List!39259)

(get-info :version)

(assert (=> b!3692174 (= res!1501000 ((_ is Cons!39135) rules!3598))))

(declare-fun b!3692175 () Bool)

(declare-fun e!2286329 () Bool)

(assert (=> b!3692175 (= e!2286329 e!2286330)))

(declare-fun res!1501003 () Bool)

(assert (=> b!3692175 (=> (not res!1501003) (not e!2286330))))

(declare-datatypes ((Token!11194 0))(
  ( (Token!11195 (value!189174 TokenValue!6150) (rule!8766 Rule!11640) (size!29882 Int) (originalCharacters!6628 List!39258)) )
))
(declare-datatypes ((tuple2!39034 0))(
  ( (tuple2!39035 (_1!22651 Token!11194) (_2!22651 List!39258)) )
))
(declare-datatypes ((Option!8432 0))(
  ( (None!8431) (Some!8431 (v!38385 tuple2!39034)) )
))
(declare-fun lt!1292640 () Option!8432)

(declare-fun isDefined!6625 (Option!8432) Bool)

(assert (=> b!3692175 (= res!1501003 (isDefined!6625 lt!1292640))))

(declare-fun input!3172 () List!39258)

(declare-datatypes ((LexerInterface!5509 0))(
  ( (LexerInterfaceExt!5506 (__x!24518 Int)) (Lexer!5507) )
))
(declare-fun thiss!25322 () LexerInterface!5509)

(declare-fun maxPrefix!3031 (LexerInterface!5509 List!39259 List!39258) Option!8432)

(assert (=> b!3692175 (= lt!1292640 (maxPrefix!3031 thiss!25322 rules!3598 input!3172))))

(declare-fun b!3692176 () Bool)

(declare-fun res!1500999 () Bool)

(assert (=> b!3692176 (=> (not res!1500999) (not e!2286329))))

(declare-fun rulesInvariant!4906 (LexerInterface!5509 List!39259) Bool)

(assert (=> b!3692176 (= res!1500999 (rulesInvariant!4906 thiss!25322 rules!3598))))

(declare-fun res!1500998 () Bool)

(assert (=> start!347526 (=> (not res!1500998) (not e!2286329))))

(assert (=> start!347526 (= res!1500998 ((_ is Lexer!5507) thiss!25322))))

(assert (=> start!347526 e!2286329))

(assert (=> start!347526 true))

(declare-fun e!2286337 () Bool)

(assert (=> start!347526 e!2286337))

(declare-fun token!544 () Token!11194)

(declare-fun e!2286336 () Bool)

(declare-fun inv!52592 (Token!11194) Bool)

(assert (=> start!347526 (and (inv!52592 token!544) e!2286336)))

(declare-fun e!2286335 () Bool)

(assert (=> start!347526 e!2286335))

(declare-fun b!3692177 () Bool)

(declare-fun res!1501001 () Bool)

(assert (=> b!3692177 (=> (not res!1501001) (not e!2286330))))

(declare-fun get!12983 (Option!8432) tuple2!39034)

(assert (=> b!3692177 (= res!1501001 (= (_1!22651 (get!12983 lt!1292640)) token!544))))

(declare-fun e!2286338 () Bool)

(assert (=> b!3692178 (= e!2286338 (and tp!1122020 tp!1122018))))

(declare-fun e!2286332 () Bool)

(declare-fun tp!1122019 () Bool)

(declare-fun b!3692179 () Bool)

(declare-fun e!2286333 () Bool)

(declare-fun inv!52589 (String!44084) Bool)

(declare-fun inv!52593 (TokenValueInjection!11728) Bool)

(assert (=> b!3692179 (= e!2286332 (and tp!1122019 (inv!52589 (tag!6742 (rule!8766 token!544))) (inv!52593 (transformation!5920 (rule!8766 token!544))) e!2286333))))

(assert (=> b!3692180 (= e!2286333 (and tp!1122015 tp!1122014))))

(declare-fun tp!1122016 () Bool)

(declare-fun b!3692181 () Bool)

(declare-fun inv!21 (TokenValue!6150) Bool)

(assert (=> b!3692181 (= e!2286336 (and (inv!21 (value!189174 token!544)) e!2286332 tp!1122016))))

(declare-fun b!3692182 () Bool)

(declare-fun e!2286334 () Bool)

(declare-fun tp!1122013 () Bool)

(assert (=> b!3692182 (= e!2286337 (and e!2286334 tp!1122013))))

(declare-fun b!3692183 () Bool)

(declare-fun tp_is_empty!18433 () Bool)

(declare-fun tp!1122012 () Bool)

(assert (=> b!3692183 (= e!2286335 (and tp_is_empty!18433 tp!1122012))))

(declare-fun b!3692184 () Bool)

(declare-fun res!1501002 () Bool)

(assert (=> b!3692184 (=> (not res!1501002) (not e!2286329))))

(declare-fun isEmpty!23324 (List!39259) Bool)

(assert (=> b!3692184 (= res!1501002 (not (isEmpty!23324 rules!3598)))))

(declare-fun tp!1122017 () Bool)

(declare-fun b!3692185 () Bool)

(assert (=> b!3692185 (= e!2286334 (and tp!1122017 (inv!52589 (tag!6742 (h!44555 rules!3598))) (inv!52593 (transformation!5920 (h!44555 rules!3598))) e!2286338))))

(declare-fun b!3692186 () Bool)

(declare-fun ruleValid!2143 (LexerInterface!5509 Rule!11640) Bool)

(assert (=> b!3692186 (= e!2286330 (not (ruleValid!2143 thiss!25322 (h!44555 rules!3598))))))

(assert (= (and start!347526 res!1500998) b!3692176))

(assert (= (and b!3692176 res!1500999) b!3692184))

(assert (= (and b!3692184 res!1501002) b!3692175))

(assert (= (and b!3692175 res!1501003) b!3692177))

(assert (= (and b!3692177 res!1501001) b!3692174))

(assert (= (and b!3692174 res!1501000) b!3692186))

(assert (= b!3692185 b!3692178))

(assert (= b!3692182 b!3692185))

(assert (= (and start!347526 ((_ is Cons!39135) rules!3598)) b!3692182))

(assert (= b!3692179 b!3692180))

(assert (= b!3692181 b!3692179))

(assert (= start!347526 b!3692181))

(assert (= (and start!347526 ((_ is Cons!39134) input!3172)) b!3692183))

(declare-fun m!4204589 () Bool)

(assert (=> b!3692175 m!4204589))

(declare-fun m!4204591 () Bool)

(assert (=> b!3692175 m!4204591))

(declare-fun m!4204593 () Bool)

(assert (=> b!3692177 m!4204593))

(declare-fun m!4204595 () Bool)

(assert (=> b!3692181 m!4204595))

(declare-fun m!4204597 () Bool)

(assert (=> b!3692185 m!4204597))

(declare-fun m!4204599 () Bool)

(assert (=> b!3692185 m!4204599))

(declare-fun m!4204601 () Bool)

(assert (=> b!3692186 m!4204601))

(declare-fun m!4204603 () Bool)

(assert (=> b!3692184 m!4204603))

(declare-fun m!4204605 () Bool)

(assert (=> b!3692179 m!4204605))

(declare-fun m!4204607 () Bool)

(assert (=> b!3692179 m!4204607))

(declare-fun m!4204609 () Bool)

(assert (=> start!347526 m!4204609))

(declare-fun m!4204611 () Bool)

(assert (=> b!3692176 m!4204611))

(check-sat b_and!275809 (not b!3692179) (not b_next!98745) b_and!275813 (not b!3692182) (not b!3692184) b_and!275811 (not b!3692176) (not b_next!98749) (not b!3692181) (not b!3692177) tp_is_empty!18433 (not b_next!98747) (not start!347526) (not b!3692185) (not b!3692175) b_and!275807 (not b!3692186) (not b_next!98751) (not b!3692183))
(check-sat b_and!275811 (not b_next!98749) (not b_next!98747) b_and!275809 (not b_next!98745) b_and!275813 b_and!275807 (not b_next!98751))
(get-model)

(declare-fun d!1083461 () Bool)

(declare-fun res!1501014 () Bool)

(declare-fun e!2286341 () Bool)

(assert (=> d!1083461 (=> (not res!1501014) (not e!2286341))))

(declare-fun isEmpty!23325 (List!39258) Bool)

(assert (=> d!1083461 (= res!1501014 (not (isEmpty!23325 (originalCharacters!6628 token!544))))))

(assert (=> d!1083461 (= (inv!52592 token!544) e!2286341)))

(declare-fun b!3692191 () Bool)

(declare-fun res!1501015 () Bool)

(assert (=> b!3692191 (=> (not res!1501015) (not e!2286341))))

(declare-fun list!14626 (BalanceConc!23648) List!39258)

(declare-fun dynLambda!17128 (Int TokenValue!6150) BalanceConc!23648)

(assert (=> b!3692191 (= res!1501015 (= (originalCharacters!6628 token!544) (list!14626 (dynLambda!17128 (toChars!8103 (transformation!5920 (rule!8766 token!544))) (value!189174 token!544)))))))

(declare-fun b!3692192 () Bool)

(declare-fun size!29883 (List!39258) Int)

(assert (=> b!3692192 (= e!2286341 (= (size!29882 token!544) (size!29883 (originalCharacters!6628 token!544))))))

(assert (= (and d!1083461 res!1501014) b!3692191))

(assert (= (and b!3692191 res!1501015) b!3692192))

(declare-fun b_lambda!109523 () Bool)

(assert (=> (not b_lambda!109523) (not b!3692191)))

(declare-fun tb!213869 () Bool)

(declare-fun t!301410 () Bool)

(assert (=> (and b!3692178 (= (toChars!8103 (transformation!5920 (h!44555 rules!3598))) (toChars!8103 (transformation!5920 (rule!8766 token!544)))) t!301410) tb!213869))

(declare-fun b!3692197 () Bool)

(declare-fun e!2286344 () Bool)

(declare-fun tp!1122023 () Bool)

(declare-fun inv!52594 (Conc!12017) Bool)

(assert (=> b!3692197 (= e!2286344 (and (inv!52594 (c!638445 (dynLambda!17128 (toChars!8103 (transformation!5920 (rule!8766 token!544))) (value!189174 token!544)))) tp!1122023))))

(declare-fun result!260430 () Bool)

(declare-fun inv!52595 (BalanceConc!23648) Bool)

(assert (=> tb!213869 (= result!260430 (and (inv!52595 (dynLambda!17128 (toChars!8103 (transformation!5920 (rule!8766 token!544))) (value!189174 token!544))) e!2286344))))

(assert (= tb!213869 b!3692197))

(declare-fun m!4204613 () Bool)

(assert (=> b!3692197 m!4204613))

(declare-fun m!4204615 () Bool)

(assert (=> tb!213869 m!4204615))

(assert (=> b!3692191 t!301410))

(declare-fun b_and!275815 () Bool)

(assert (= b_and!275809 (and (=> t!301410 result!260430) b_and!275815)))

(declare-fun t!301412 () Bool)

(declare-fun tb!213871 () Bool)

(assert (=> (and b!3692180 (= (toChars!8103 (transformation!5920 (rule!8766 token!544))) (toChars!8103 (transformation!5920 (rule!8766 token!544)))) t!301412) tb!213871))

(declare-fun result!260434 () Bool)

(assert (= result!260434 result!260430))

(assert (=> b!3692191 t!301412))

(declare-fun b_and!275817 () Bool)

(assert (= b_and!275813 (and (=> t!301412 result!260434) b_and!275817)))

(declare-fun m!4204617 () Bool)

(assert (=> d!1083461 m!4204617))

(declare-fun m!4204619 () Bool)

(assert (=> b!3692191 m!4204619))

(assert (=> b!3692191 m!4204619))

(declare-fun m!4204621 () Bool)

(assert (=> b!3692191 m!4204621))

(declare-fun m!4204623 () Bool)

(assert (=> b!3692192 m!4204623))

(assert (=> start!347526 d!1083461))

(declare-fun d!1083463 () Bool)

(assert (=> d!1083463 (= (get!12983 lt!1292640) (v!38385 lt!1292640))))

(assert (=> b!3692177 d!1083463))

(declare-fun d!1083467 () Bool)

(declare-fun res!1501021 () Bool)

(declare-fun e!2286347 () Bool)

(assert (=> d!1083467 (=> (not res!1501021) (not e!2286347))))

(declare-fun validRegex!4887 (Regex!10679) Bool)

(assert (=> d!1083467 (= res!1501021 (validRegex!4887 (regex!5920 (h!44555 rules!3598))))))

(assert (=> d!1083467 (= (ruleValid!2143 thiss!25322 (h!44555 rules!3598)) e!2286347)))

(declare-fun b!3692202 () Bool)

(declare-fun res!1501022 () Bool)

(assert (=> b!3692202 (=> (not res!1501022) (not e!2286347))))

(declare-fun nullable!3725 (Regex!10679) Bool)

(assert (=> b!3692202 (= res!1501022 (not (nullable!3725 (regex!5920 (h!44555 rules!3598)))))))

(declare-fun b!3692203 () Bool)

(assert (=> b!3692203 (= e!2286347 (not (= (tag!6742 (h!44555 rules!3598)) (String!44085 ""))))))

(assert (= (and d!1083467 res!1501021) b!3692202))

(assert (= (and b!3692202 res!1501022) b!3692203))

(declare-fun m!4204625 () Bool)

(assert (=> d!1083467 m!4204625))

(declare-fun m!4204627 () Bool)

(assert (=> b!3692202 m!4204627))

(assert (=> b!3692186 d!1083467))

(declare-fun d!1083471 () Bool)

(declare-fun isEmpty!23326 (Option!8432) Bool)

(assert (=> d!1083471 (= (isDefined!6625 lt!1292640) (not (isEmpty!23326 lt!1292640)))))

(declare-fun bs!574142 () Bool)

(assert (= bs!574142 d!1083471))

(declare-fun m!4204629 () Bool)

(assert (=> bs!574142 m!4204629))

(assert (=> b!3692175 d!1083471))

(declare-fun d!1083473 () Bool)

(declare-fun e!2286379 () Bool)

(assert (=> d!1083473 e!2286379))

(declare-fun res!1501059 () Bool)

(assert (=> d!1083473 (=> res!1501059 e!2286379)))

(declare-fun lt!1292653 () Option!8432)

(assert (=> d!1083473 (= res!1501059 (isEmpty!23326 lt!1292653))))

(declare-fun e!2286381 () Option!8432)

(assert (=> d!1083473 (= lt!1292653 e!2286381)))

(declare-fun c!638454 () Bool)

(assert (=> d!1083473 (= c!638454 (and ((_ is Cons!39135) rules!3598) ((_ is Nil!39135) (t!301408 rules!3598))))))

(declare-datatypes ((Unit!57144 0))(
  ( (Unit!57145) )
))
(declare-fun lt!1292651 () Unit!57144)

(declare-fun lt!1292652 () Unit!57144)

(assert (=> d!1083473 (= lt!1292651 lt!1292652)))

(declare-fun isPrefix!3261 (List!39258 List!39258) Bool)

(assert (=> d!1083473 (isPrefix!3261 input!3172 input!3172)))

(declare-fun lemmaIsPrefixRefl!2046 (List!39258 List!39258) Unit!57144)

(assert (=> d!1083473 (= lt!1292652 (lemmaIsPrefixRefl!2046 input!3172 input!3172))))

(declare-fun rulesValidInductive!2127 (LexerInterface!5509 List!39259) Bool)

(assert (=> d!1083473 (rulesValidInductive!2127 thiss!25322 rules!3598)))

(assert (=> d!1083473 (= (maxPrefix!3031 thiss!25322 rules!3598 input!3172) lt!1292653)))

(declare-fun b!3692261 () Bool)

(declare-fun e!2286380 () Bool)

(assert (=> b!3692261 (= e!2286379 e!2286380)))

(declare-fun res!1501063 () Bool)

(assert (=> b!3692261 (=> (not res!1501063) (not e!2286380))))

(assert (=> b!3692261 (= res!1501063 (isDefined!6625 lt!1292653))))

(declare-fun b!3692262 () Bool)

(declare-fun res!1501061 () Bool)

(assert (=> b!3692262 (=> (not res!1501061) (not e!2286380))))

(declare-fun charsOf!3920 (Token!11194) BalanceConc!23648)

(assert (=> b!3692262 (= res!1501061 (= (list!14626 (charsOf!3920 (_1!22651 (get!12983 lt!1292653)))) (originalCharacters!6628 (_1!22651 (get!12983 lt!1292653)))))))

(declare-fun bm!266968 () Bool)

(declare-fun call!266973 () Option!8432)

(declare-fun maxPrefixOneRule!2144 (LexerInterface!5509 Rule!11640 List!39258) Option!8432)

(assert (=> bm!266968 (= call!266973 (maxPrefixOneRule!2144 thiss!25322 (h!44555 rules!3598) input!3172))))

(declare-fun b!3692263 () Bool)

(declare-fun contains!7809 (List!39259 Rule!11640) Bool)

(assert (=> b!3692263 (= e!2286380 (contains!7809 rules!3598 (rule!8766 (_1!22651 (get!12983 lt!1292653)))))))

(declare-fun b!3692264 () Bool)

(declare-fun lt!1292654 () Option!8432)

(declare-fun lt!1292655 () Option!8432)

(assert (=> b!3692264 (= e!2286381 (ite (and ((_ is None!8431) lt!1292654) ((_ is None!8431) lt!1292655)) None!8431 (ite ((_ is None!8431) lt!1292655) lt!1292654 (ite ((_ is None!8431) lt!1292654) lt!1292655 (ite (>= (size!29882 (_1!22651 (v!38385 lt!1292654))) (size!29882 (_1!22651 (v!38385 lt!1292655)))) lt!1292654 lt!1292655)))))))

(assert (=> b!3692264 (= lt!1292654 call!266973)))

(assert (=> b!3692264 (= lt!1292655 (maxPrefix!3031 thiss!25322 (t!301408 rules!3598) input!3172))))

(declare-fun b!3692265 () Bool)

(declare-fun res!1501062 () Bool)

(assert (=> b!3692265 (=> (not res!1501062) (not e!2286380))))

(declare-fun apply!9379 (TokenValueInjection!11728 BalanceConc!23648) TokenValue!6150)

(declare-fun seqFromList!4458 (List!39258) BalanceConc!23648)

(assert (=> b!3692265 (= res!1501062 (= (value!189174 (_1!22651 (get!12983 lt!1292653))) (apply!9379 (transformation!5920 (rule!8766 (_1!22651 (get!12983 lt!1292653)))) (seqFromList!4458 (originalCharacters!6628 (_1!22651 (get!12983 lt!1292653)))))))))

(declare-fun b!3692266 () Bool)

(declare-fun res!1501064 () Bool)

(assert (=> b!3692266 (=> (not res!1501064) (not e!2286380))))

(declare-fun matchR!5223 (Regex!10679 List!39258) Bool)

(assert (=> b!3692266 (= res!1501064 (matchR!5223 (regex!5920 (rule!8766 (_1!22651 (get!12983 lt!1292653)))) (list!14626 (charsOf!3920 (_1!22651 (get!12983 lt!1292653))))))))

(declare-fun b!3692267 () Bool)

(declare-fun res!1501065 () Bool)

(assert (=> b!3692267 (=> (not res!1501065) (not e!2286380))))

(assert (=> b!3692267 (= res!1501065 (< (size!29883 (_2!22651 (get!12983 lt!1292653))) (size!29883 input!3172)))))

(declare-fun b!3692268 () Bool)

(assert (=> b!3692268 (= e!2286381 call!266973)))

(declare-fun b!3692269 () Bool)

(declare-fun res!1501060 () Bool)

(assert (=> b!3692269 (=> (not res!1501060) (not e!2286380))))

(declare-fun ++!9739 (List!39258 List!39258) List!39258)

(assert (=> b!3692269 (= res!1501060 (= (++!9739 (list!14626 (charsOf!3920 (_1!22651 (get!12983 lt!1292653)))) (_2!22651 (get!12983 lt!1292653))) input!3172))))

(assert (= (and d!1083473 c!638454) b!3692268))

(assert (= (and d!1083473 (not c!638454)) b!3692264))

(assert (= (or b!3692268 b!3692264) bm!266968))

(assert (= (and d!1083473 (not res!1501059)) b!3692261))

(assert (= (and b!3692261 res!1501063) b!3692262))

(assert (= (and b!3692262 res!1501061) b!3692267))

(assert (= (and b!3692267 res!1501065) b!3692269))

(assert (= (and b!3692269 res!1501060) b!3692265))

(assert (= (and b!3692265 res!1501062) b!3692266))

(assert (= (and b!3692266 res!1501064) b!3692263))

(declare-fun m!4204667 () Bool)

(assert (=> bm!266968 m!4204667))

(declare-fun m!4204669 () Bool)

(assert (=> b!3692265 m!4204669))

(declare-fun m!4204671 () Bool)

(assert (=> b!3692265 m!4204671))

(assert (=> b!3692265 m!4204671))

(declare-fun m!4204673 () Bool)

(assert (=> b!3692265 m!4204673))

(declare-fun m!4204675 () Bool)

(assert (=> d!1083473 m!4204675))

(declare-fun m!4204677 () Bool)

(assert (=> d!1083473 m!4204677))

(declare-fun m!4204679 () Bool)

(assert (=> d!1083473 m!4204679))

(declare-fun m!4204681 () Bool)

(assert (=> d!1083473 m!4204681))

(assert (=> b!3692266 m!4204669))

(declare-fun m!4204683 () Bool)

(assert (=> b!3692266 m!4204683))

(assert (=> b!3692266 m!4204683))

(declare-fun m!4204685 () Bool)

(assert (=> b!3692266 m!4204685))

(assert (=> b!3692266 m!4204685))

(declare-fun m!4204687 () Bool)

(assert (=> b!3692266 m!4204687))

(assert (=> b!3692269 m!4204669))

(assert (=> b!3692269 m!4204683))

(assert (=> b!3692269 m!4204683))

(assert (=> b!3692269 m!4204685))

(assert (=> b!3692269 m!4204685))

(declare-fun m!4204689 () Bool)

(assert (=> b!3692269 m!4204689))

(declare-fun m!4204691 () Bool)

(assert (=> b!3692264 m!4204691))

(assert (=> b!3692262 m!4204669))

(assert (=> b!3692262 m!4204683))

(assert (=> b!3692262 m!4204683))

(assert (=> b!3692262 m!4204685))

(assert (=> b!3692267 m!4204669))

(declare-fun m!4204693 () Bool)

(assert (=> b!3692267 m!4204693))

(declare-fun m!4204695 () Bool)

(assert (=> b!3692267 m!4204695))

(declare-fun m!4204697 () Bool)

(assert (=> b!3692261 m!4204697))

(assert (=> b!3692263 m!4204669))

(declare-fun m!4204699 () Bool)

(assert (=> b!3692263 m!4204699))

(assert (=> b!3692175 d!1083473))

(declare-fun d!1083493 () Bool)

(declare-fun res!1501068 () Bool)

(declare-fun e!2286384 () Bool)

(assert (=> d!1083493 (=> (not res!1501068) (not e!2286384))))

(declare-fun rulesValid!2286 (LexerInterface!5509 List!39259) Bool)

(assert (=> d!1083493 (= res!1501068 (rulesValid!2286 thiss!25322 rules!3598))))

(assert (=> d!1083493 (= (rulesInvariant!4906 thiss!25322 rules!3598) e!2286384)))

(declare-fun b!3692272 () Bool)

(declare-datatypes ((List!39261 0))(
  ( (Nil!39137) (Cons!39137 (h!44557 String!44084) (t!301422 List!39261)) )
))
(declare-fun noDuplicateTag!2282 (LexerInterface!5509 List!39259 List!39261) Bool)

(assert (=> b!3692272 (= e!2286384 (noDuplicateTag!2282 thiss!25322 rules!3598 Nil!39137))))

(assert (= (and d!1083493 res!1501068) b!3692272))

(declare-fun m!4204701 () Bool)

(assert (=> d!1083493 m!4204701))

(declare-fun m!4204703 () Bool)

(assert (=> b!3692272 m!4204703))

(assert (=> b!3692176 d!1083493))

(declare-fun b!3692287 () Bool)

(declare-fun e!2286393 () Bool)

(declare-fun inv!17 (TokenValue!6150) Bool)

(assert (=> b!3692287 (= e!2286393 (inv!17 (value!189174 token!544)))))

(declare-fun b!3692288 () Bool)

(declare-fun e!2286395 () Bool)

(declare-fun inv!16 (TokenValue!6150) Bool)

(assert (=> b!3692288 (= e!2286395 (inv!16 (value!189174 token!544)))))

(declare-fun b!3692289 () Bool)

(assert (=> b!3692289 (= e!2286395 e!2286393)))

(declare-fun c!638462 () Bool)

(assert (=> b!3692289 (= c!638462 ((_ is IntegerValue!18451) (value!189174 token!544)))))

(declare-fun d!1083495 () Bool)

(declare-fun c!638461 () Bool)

(assert (=> d!1083495 (= c!638461 ((_ is IntegerValue!18450) (value!189174 token!544)))))

(assert (=> d!1083495 (= (inv!21 (value!189174 token!544)) e!2286395)))

(declare-fun b!3692290 () Bool)

(declare-fun e!2286394 () Bool)

(declare-fun inv!15 (TokenValue!6150) Bool)

(assert (=> b!3692290 (= e!2286394 (inv!15 (value!189174 token!544)))))

(declare-fun b!3692291 () Bool)

(declare-fun res!1501071 () Bool)

(assert (=> b!3692291 (=> res!1501071 e!2286394)))

(assert (=> b!3692291 (= res!1501071 (not ((_ is IntegerValue!18452) (value!189174 token!544))))))

(assert (=> b!3692291 (= e!2286393 e!2286394)))

(assert (= (and d!1083495 c!638461) b!3692288))

(assert (= (and d!1083495 (not c!638461)) b!3692289))

(assert (= (and b!3692289 c!638462) b!3692287))

(assert (= (and b!3692289 (not c!638462)) b!3692291))

(assert (= (and b!3692291 (not res!1501071)) b!3692290))

(declare-fun m!4204705 () Bool)

(assert (=> b!3692287 m!4204705))

(declare-fun m!4204707 () Bool)

(assert (=> b!3692288 m!4204707))

(declare-fun m!4204709 () Bool)

(assert (=> b!3692290 m!4204709))

(assert (=> b!3692181 d!1083495))

(declare-fun d!1083497 () Bool)

(assert (=> d!1083497 (= (inv!52589 (tag!6742 (rule!8766 token!544))) (= (mod (str.len (value!189173 (tag!6742 (rule!8766 token!544)))) 2) 0))))

(assert (=> b!3692179 d!1083497))

(declare-fun d!1083499 () Bool)

(declare-fun res!1501088 () Bool)

(declare-fun e!2286402 () Bool)

(assert (=> d!1083499 (=> (not res!1501088) (not e!2286402))))

(declare-fun semiInverseModEq!2529 (Int Int) Bool)

(assert (=> d!1083499 (= res!1501088 (semiInverseModEq!2529 (toChars!8103 (transformation!5920 (rule!8766 token!544))) (toValue!8244 (transformation!5920 (rule!8766 token!544)))))))

(assert (=> d!1083499 (= (inv!52593 (transformation!5920 (rule!8766 token!544))) e!2286402)))

(declare-fun b!3692308 () Bool)

(declare-fun equivClasses!2428 (Int Int) Bool)

(assert (=> b!3692308 (= e!2286402 (equivClasses!2428 (toChars!8103 (transformation!5920 (rule!8766 token!544))) (toValue!8244 (transformation!5920 (rule!8766 token!544)))))))

(assert (= (and d!1083499 res!1501088) b!3692308))

(declare-fun m!4204711 () Bool)

(assert (=> d!1083499 m!4204711))

(declare-fun m!4204713 () Bool)

(assert (=> b!3692308 m!4204713))

(assert (=> b!3692179 d!1083499))

(declare-fun d!1083501 () Bool)

(assert (=> d!1083501 (= (inv!52589 (tag!6742 (h!44555 rules!3598))) (= (mod (str.len (value!189173 (tag!6742 (h!44555 rules!3598)))) 2) 0))))

(assert (=> b!3692185 d!1083501))

(declare-fun d!1083503 () Bool)

(declare-fun res!1501089 () Bool)

(declare-fun e!2286403 () Bool)

(assert (=> d!1083503 (=> (not res!1501089) (not e!2286403))))

(assert (=> d!1083503 (= res!1501089 (semiInverseModEq!2529 (toChars!8103 (transformation!5920 (h!44555 rules!3598))) (toValue!8244 (transformation!5920 (h!44555 rules!3598)))))))

(assert (=> d!1083503 (= (inv!52593 (transformation!5920 (h!44555 rules!3598))) e!2286403)))

(declare-fun b!3692309 () Bool)

(assert (=> b!3692309 (= e!2286403 (equivClasses!2428 (toChars!8103 (transformation!5920 (h!44555 rules!3598))) (toValue!8244 (transformation!5920 (h!44555 rules!3598)))))))

(assert (= (and d!1083503 res!1501089) b!3692309))

(declare-fun m!4204715 () Bool)

(assert (=> d!1083503 m!4204715))

(declare-fun m!4204717 () Bool)

(assert (=> b!3692309 m!4204717))

(assert (=> b!3692185 d!1083503))

(declare-fun d!1083505 () Bool)

(assert (=> d!1083505 (= (isEmpty!23324 rules!3598) ((_ is Nil!39135) rules!3598))))

(assert (=> b!3692184 d!1083505))

(declare-fun b!3692329 () Bool)

(declare-fun b_free!98049 () Bool)

(declare-fun b_next!98753 () Bool)

(assert (=> b!3692329 (= b_free!98049 (not b_next!98753))))

(declare-fun tp!1122037 () Bool)

(declare-fun b_and!275823 () Bool)

(assert (=> b!3692329 (= tp!1122037 b_and!275823)))

(declare-fun b_free!98051 () Bool)

(declare-fun b_next!98755 () Bool)

(assert (=> b!3692329 (= b_free!98051 (not b_next!98755))))

(declare-fun t!301418 () Bool)

(declare-fun tb!213877 () Bool)

(assert (=> (and b!3692329 (= (toChars!8103 (transformation!5920 (h!44555 (t!301408 rules!3598)))) (toChars!8103 (transformation!5920 (rule!8766 token!544)))) t!301418) tb!213877))

(declare-fun result!260444 () Bool)

(assert (= result!260444 result!260430))

(assert (=> b!3692191 t!301418))

(declare-fun b_and!275825 () Bool)

(declare-fun tp!1122035 () Bool)

(assert (=> b!3692329 (= tp!1122035 (and (=> t!301418 result!260444) b_and!275825))))

(declare-fun e!2286417 () Bool)

(assert (=> b!3692329 (= e!2286417 (and tp!1122037 tp!1122035))))

(declare-fun b!3692328 () Bool)

(declare-fun e!2286418 () Bool)

(declare-fun tp!1122036 () Bool)

(assert (=> b!3692328 (= e!2286418 (and tp!1122036 (inv!52589 (tag!6742 (h!44555 (t!301408 rules!3598)))) (inv!52593 (transformation!5920 (h!44555 (t!301408 rules!3598)))) e!2286417))))

(declare-fun b!3692327 () Bool)

(declare-fun e!2286416 () Bool)

(declare-fun tp!1122038 () Bool)

(assert (=> b!3692327 (= e!2286416 (and e!2286418 tp!1122038))))

(assert (=> b!3692182 (= tp!1122013 e!2286416)))

(assert (= b!3692328 b!3692329))

(assert (= b!3692327 b!3692328))

(assert (= (and b!3692182 ((_ is Cons!39135) (t!301408 rules!3598))) b!3692327))

(declare-fun m!4204719 () Bool)

(assert (=> b!3692328 m!4204719))

(declare-fun m!4204721 () Bool)

(assert (=> b!3692328 m!4204721))

(declare-fun b!3692334 () Bool)

(declare-fun e!2286421 () Bool)

(declare-fun tp!1122041 () Bool)

(assert (=> b!3692334 (= e!2286421 (and tp_is_empty!18433 tp!1122041))))

(assert (=> b!3692181 (= tp!1122016 e!2286421)))

(assert (= (and b!3692181 ((_ is Cons!39134) (originalCharacters!6628 token!544))) b!3692334))

(declare-fun b!3692347 () Bool)

(declare-fun e!2286424 () Bool)

(declare-fun tp!1122056 () Bool)

(assert (=> b!3692347 (= e!2286424 tp!1122056)))

(declare-fun b!3692346 () Bool)

(declare-fun tp!1122055 () Bool)

(declare-fun tp!1122052 () Bool)

(assert (=> b!3692346 (= e!2286424 (and tp!1122055 tp!1122052))))

(declare-fun b!3692348 () Bool)

(declare-fun tp!1122053 () Bool)

(declare-fun tp!1122054 () Bool)

(assert (=> b!3692348 (= e!2286424 (and tp!1122053 tp!1122054))))

(assert (=> b!3692179 (= tp!1122019 e!2286424)))

(declare-fun b!3692345 () Bool)

(assert (=> b!3692345 (= e!2286424 tp_is_empty!18433)))

(assert (= (and b!3692179 ((_ is ElementMatch!10679) (regex!5920 (rule!8766 token!544)))) b!3692345))

(assert (= (and b!3692179 ((_ is Concat!16830) (regex!5920 (rule!8766 token!544)))) b!3692346))

(assert (= (and b!3692179 ((_ is Star!10679) (regex!5920 (rule!8766 token!544)))) b!3692347))

(assert (= (and b!3692179 ((_ is Union!10679) (regex!5920 (rule!8766 token!544)))) b!3692348))

(declare-fun b!3692351 () Bool)

(declare-fun e!2286425 () Bool)

(declare-fun tp!1122061 () Bool)

(assert (=> b!3692351 (= e!2286425 tp!1122061)))

(declare-fun b!3692350 () Bool)

(declare-fun tp!1122060 () Bool)

(declare-fun tp!1122057 () Bool)

(assert (=> b!3692350 (= e!2286425 (and tp!1122060 tp!1122057))))

(declare-fun b!3692352 () Bool)

(declare-fun tp!1122058 () Bool)

(declare-fun tp!1122059 () Bool)

(assert (=> b!3692352 (= e!2286425 (and tp!1122058 tp!1122059))))

(assert (=> b!3692185 (= tp!1122017 e!2286425)))

(declare-fun b!3692349 () Bool)

(assert (=> b!3692349 (= e!2286425 tp_is_empty!18433)))

(assert (= (and b!3692185 ((_ is ElementMatch!10679) (regex!5920 (h!44555 rules!3598)))) b!3692349))

(assert (= (and b!3692185 ((_ is Concat!16830) (regex!5920 (h!44555 rules!3598)))) b!3692350))

(assert (= (and b!3692185 ((_ is Star!10679) (regex!5920 (h!44555 rules!3598)))) b!3692351))

(assert (= (and b!3692185 ((_ is Union!10679) (regex!5920 (h!44555 rules!3598)))) b!3692352))

(declare-fun b!3692353 () Bool)

(declare-fun e!2286426 () Bool)

(declare-fun tp!1122062 () Bool)

(assert (=> b!3692353 (= e!2286426 (and tp_is_empty!18433 tp!1122062))))

(assert (=> b!3692183 (= tp!1122012 e!2286426)))

(assert (= (and b!3692183 ((_ is Cons!39134) (t!301407 input!3172))) b!3692353))

(declare-fun b_lambda!109527 () Bool)

(assert (= b_lambda!109523 (or (and b!3692178 b_free!98043 (= (toChars!8103 (transformation!5920 (h!44555 rules!3598))) (toChars!8103 (transformation!5920 (rule!8766 token!544))))) (and b!3692180 b_free!98047) (and b!3692329 b_free!98051 (= (toChars!8103 (transformation!5920 (h!44555 (t!301408 rules!3598)))) (toChars!8103 (transformation!5920 (rule!8766 token!544))))) b_lambda!109527)))

(check-sat (not b!3692267) (not b!3692290) b_and!275817 b_and!275825 (not b!3692346) (not b!3692192) (not tb!213869) (not b!3692287) (not b!3692262) b_and!275807 (not d!1083493) (not b!3692202) (not b_lambda!109527) (not b!3692261) (not b!3692266) b_and!275811 b_and!275815 b_and!275823 (not b!3692348) (not b!3692272) (not b_next!98755) (not b_next!98749) (not d!1083461) (not b!3692309) (not bm!266968) (not b!3692191) (not b!3692328) (not b_next!98753) tp_is_empty!18433 (not b_next!98747) (not b!3692353) (not b!3692288) (not b_next!98745) (not b!3692197) (not b!3692265) (not b!3692269) (not b!3692347) (not b!3692264) (not d!1083467) (not b!3692308) (not d!1083473) (not b!3692352) (not d!1083499) (not d!1083471) (not b!3692350) (not d!1083503) (not b!3692334) (not b!3692263) (not b_next!98751) (not b!3692351) (not b!3692327))
(check-sat b_and!275817 b_and!275825 (not b_next!98745) b_and!275807 (not b_next!98751) b_and!275811 b_and!275815 b_and!275823 (not b_next!98755) (not b_next!98749) (not b_next!98753) (not b_next!98747))
(get-model)

(declare-fun d!1083509 () Bool)

(declare-fun e!2286447 () Bool)

(assert (=> d!1083509 e!2286447))

(declare-fun res!1501101 () Bool)

(assert (=> d!1083509 (=> res!1501101 e!2286447)))

(declare-fun lt!1292673 () Option!8432)

(assert (=> d!1083509 (= res!1501101 (isEmpty!23326 lt!1292673))))

(declare-fun e!2286449 () Option!8432)

(assert (=> d!1083509 (= lt!1292673 e!2286449)))

(declare-fun c!638464 () Bool)

(assert (=> d!1083509 (= c!638464 (and ((_ is Cons!39135) (t!301408 rules!3598)) ((_ is Nil!39135) (t!301408 (t!301408 rules!3598)))))))

(declare-fun lt!1292671 () Unit!57144)

(declare-fun lt!1292672 () Unit!57144)

(assert (=> d!1083509 (= lt!1292671 lt!1292672)))

(assert (=> d!1083509 (isPrefix!3261 input!3172 input!3172)))

(assert (=> d!1083509 (= lt!1292672 (lemmaIsPrefixRefl!2046 input!3172 input!3172))))

(assert (=> d!1083509 (rulesValidInductive!2127 thiss!25322 (t!301408 rules!3598))))

(assert (=> d!1083509 (= (maxPrefix!3031 thiss!25322 (t!301408 rules!3598) input!3172) lt!1292673)))

(declare-fun b!3692389 () Bool)

(declare-fun e!2286448 () Bool)

(assert (=> b!3692389 (= e!2286447 e!2286448)))

(declare-fun res!1501105 () Bool)

(assert (=> b!3692389 (=> (not res!1501105) (not e!2286448))))

(assert (=> b!3692389 (= res!1501105 (isDefined!6625 lt!1292673))))

(declare-fun b!3692390 () Bool)

(declare-fun res!1501103 () Bool)

(assert (=> b!3692390 (=> (not res!1501103) (not e!2286448))))

(assert (=> b!3692390 (= res!1501103 (= (list!14626 (charsOf!3920 (_1!22651 (get!12983 lt!1292673)))) (originalCharacters!6628 (_1!22651 (get!12983 lt!1292673)))))))

(declare-fun bm!266972 () Bool)

(declare-fun call!266977 () Option!8432)

(assert (=> bm!266972 (= call!266977 (maxPrefixOneRule!2144 thiss!25322 (h!44555 (t!301408 rules!3598)) input!3172))))

(declare-fun b!3692391 () Bool)

(assert (=> b!3692391 (= e!2286448 (contains!7809 (t!301408 rules!3598) (rule!8766 (_1!22651 (get!12983 lt!1292673)))))))

(declare-fun b!3692392 () Bool)

(declare-fun lt!1292674 () Option!8432)

(declare-fun lt!1292675 () Option!8432)

(assert (=> b!3692392 (= e!2286449 (ite (and ((_ is None!8431) lt!1292674) ((_ is None!8431) lt!1292675)) None!8431 (ite ((_ is None!8431) lt!1292675) lt!1292674 (ite ((_ is None!8431) lt!1292674) lt!1292675 (ite (>= (size!29882 (_1!22651 (v!38385 lt!1292674))) (size!29882 (_1!22651 (v!38385 lt!1292675)))) lt!1292674 lt!1292675)))))))

(assert (=> b!3692392 (= lt!1292674 call!266977)))

(assert (=> b!3692392 (= lt!1292675 (maxPrefix!3031 thiss!25322 (t!301408 (t!301408 rules!3598)) input!3172))))

(declare-fun b!3692393 () Bool)

(declare-fun res!1501104 () Bool)

(assert (=> b!3692393 (=> (not res!1501104) (not e!2286448))))

(assert (=> b!3692393 (= res!1501104 (= (value!189174 (_1!22651 (get!12983 lt!1292673))) (apply!9379 (transformation!5920 (rule!8766 (_1!22651 (get!12983 lt!1292673)))) (seqFromList!4458 (originalCharacters!6628 (_1!22651 (get!12983 lt!1292673)))))))))

(declare-fun b!3692394 () Bool)

(declare-fun res!1501106 () Bool)

(assert (=> b!3692394 (=> (not res!1501106) (not e!2286448))))

(assert (=> b!3692394 (= res!1501106 (matchR!5223 (regex!5920 (rule!8766 (_1!22651 (get!12983 lt!1292673)))) (list!14626 (charsOf!3920 (_1!22651 (get!12983 lt!1292673))))))))

(declare-fun b!3692395 () Bool)

(declare-fun res!1501107 () Bool)

(assert (=> b!3692395 (=> (not res!1501107) (not e!2286448))))

(assert (=> b!3692395 (= res!1501107 (< (size!29883 (_2!22651 (get!12983 lt!1292673))) (size!29883 input!3172)))))

(declare-fun b!3692396 () Bool)

(assert (=> b!3692396 (= e!2286449 call!266977)))

(declare-fun b!3692397 () Bool)

(declare-fun res!1501102 () Bool)

(assert (=> b!3692397 (=> (not res!1501102) (not e!2286448))))

(assert (=> b!3692397 (= res!1501102 (= (++!9739 (list!14626 (charsOf!3920 (_1!22651 (get!12983 lt!1292673)))) (_2!22651 (get!12983 lt!1292673))) input!3172))))

(assert (= (and d!1083509 c!638464) b!3692396))

(assert (= (and d!1083509 (not c!638464)) b!3692392))

(assert (= (or b!3692396 b!3692392) bm!266972))

(assert (= (and d!1083509 (not res!1501101)) b!3692389))

(assert (= (and b!3692389 res!1501105) b!3692390))

(assert (= (and b!3692390 res!1501103) b!3692395))

(assert (= (and b!3692395 res!1501107) b!3692397))

(assert (= (and b!3692397 res!1501102) b!3692393))

(assert (= (and b!3692393 res!1501104) b!3692394))

(assert (= (and b!3692394 res!1501106) b!3692391))

(declare-fun m!4204761 () Bool)

(assert (=> bm!266972 m!4204761))

(declare-fun m!4204763 () Bool)

(assert (=> b!3692393 m!4204763))

(declare-fun m!4204765 () Bool)

(assert (=> b!3692393 m!4204765))

(assert (=> b!3692393 m!4204765))

(declare-fun m!4204767 () Bool)

(assert (=> b!3692393 m!4204767))

(declare-fun m!4204769 () Bool)

(assert (=> d!1083509 m!4204769))

(assert (=> d!1083509 m!4204677))

(assert (=> d!1083509 m!4204679))

(declare-fun m!4204771 () Bool)

(assert (=> d!1083509 m!4204771))

(assert (=> b!3692394 m!4204763))

(declare-fun m!4204773 () Bool)

(assert (=> b!3692394 m!4204773))

(assert (=> b!3692394 m!4204773))

(declare-fun m!4204775 () Bool)

(assert (=> b!3692394 m!4204775))

(assert (=> b!3692394 m!4204775))

(declare-fun m!4204777 () Bool)

(assert (=> b!3692394 m!4204777))

(assert (=> b!3692397 m!4204763))

(assert (=> b!3692397 m!4204773))

(assert (=> b!3692397 m!4204773))

(assert (=> b!3692397 m!4204775))

(assert (=> b!3692397 m!4204775))

(declare-fun m!4204779 () Bool)

(assert (=> b!3692397 m!4204779))

(declare-fun m!4204781 () Bool)

(assert (=> b!3692392 m!4204781))

(assert (=> b!3692390 m!4204763))

(assert (=> b!3692390 m!4204773))

(assert (=> b!3692390 m!4204773))

(assert (=> b!3692390 m!4204775))

(assert (=> b!3692395 m!4204763))

(declare-fun m!4204783 () Bool)

(assert (=> b!3692395 m!4204783))

(assert (=> b!3692395 m!4204695))

(declare-fun m!4204785 () Bool)

(assert (=> b!3692389 m!4204785))

(assert (=> b!3692391 m!4204763))

(declare-fun m!4204787 () Bool)

(assert (=> b!3692391 m!4204787))

(assert (=> b!3692264 d!1083509))

(declare-fun d!1083511 () Bool)

(declare-fun isBalanced!3517 (Conc!12017) Bool)

(assert (=> d!1083511 (= (inv!52595 (dynLambda!17128 (toChars!8103 (transformation!5920 (rule!8766 token!544))) (value!189174 token!544))) (isBalanced!3517 (c!638445 (dynLambda!17128 (toChars!8103 (transformation!5920 (rule!8766 token!544))) (value!189174 token!544)))))))

(declare-fun bs!574144 () Bool)

(assert (= bs!574144 d!1083511))

(declare-fun m!4204789 () Bool)

(assert (=> bs!574144 m!4204789))

(assert (=> tb!213869 d!1083511))

(declare-fun d!1083513 () Bool)

(assert (=> d!1083513 (= (get!12983 lt!1292653) (v!38385 lt!1292653))))

(assert (=> b!3692265 d!1083513))

(declare-fun d!1083515 () Bool)

(declare-fun dynLambda!17130 (Int BalanceConc!23648) TokenValue!6150)

(assert (=> d!1083515 (= (apply!9379 (transformation!5920 (rule!8766 (_1!22651 (get!12983 lt!1292653)))) (seqFromList!4458 (originalCharacters!6628 (_1!22651 (get!12983 lt!1292653))))) (dynLambda!17130 (toValue!8244 (transformation!5920 (rule!8766 (_1!22651 (get!12983 lt!1292653))))) (seqFromList!4458 (originalCharacters!6628 (_1!22651 (get!12983 lt!1292653))))))))

(declare-fun b_lambda!109531 () Bool)

(assert (=> (not b_lambda!109531) (not d!1083515)))

(declare-fun t!301424 () Bool)

(declare-fun tb!213881 () Bool)

(assert (=> (and b!3692178 (= (toValue!8244 (transformation!5920 (h!44555 rules!3598))) (toValue!8244 (transformation!5920 (rule!8766 (_1!22651 (get!12983 lt!1292653)))))) t!301424) tb!213881))

(declare-fun result!260458 () Bool)

(assert (=> tb!213881 (= result!260458 (inv!21 (dynLambda!17130 (toValue!8244 (transformation!5920 (rule!8766 (_1!22651 (get!12983 lt!1292653))))) (seqFromList!4458 (originalCharacters!6628 (_1!22651 (get!12983 lt!1292653)))))))))

(declare-fun m!4204791 () Bool)

(assert (=> tb!213881 m!4204791))

(assert (=> d!1083515 t!301424))

(declare-fun b_and!275831 () Bool)

(assert (= b_and!275807 (and (=> t!301424 result!260458) b_and!275831)))

(declare-fun tb!213883 () Bool)

(declare-fun t!301426 () Bool)

(assert (=> (and b!3692180 (= (toValue!8244 (transformation!5920 (rule!8766 token!544))) (toValue!8244 (transformation!5920 (rule!8766 (_1!22651 (get!12983 lt!1292653)))))) t!301426) tb!213883))

(declare-fun result!260462 () Bool)

(assert (= result!260462 result!260458))

(assert (=> d!1083515 t!301426))

(declare-fun b_and!275833 () Bool)

(assert (= b_and!275811 (and (=> t!301426 result!260462) b_and!275833)))

(declare-fun tb!213885 () Bool)

(declare-fun t!301428 () Bool)

(assert (=> (and b!3692329 (= (toValue!8244 (transformation!5920 (h!44555 (t!301408 rules!3598)))) (toValue!8244 (transformation!5920 (rule!8766 (_1!22651 (get!12983 lt!1292653)))))) t!301428) tb!213885))

(declare-fun result!260464 () Bool)

(assert (= result!260464 result!260458))

(assert (=> d!1083515 t!301428))

(declare-fun b_and!275835 () Bool)

(assert (= b_and!275823 (and (=> t!301428 result!260464) b_and!275835)))

(assert (=> d!1083515 m!4204671))

(declare-fun m!4204793 () Bool)

(assert (=> d!1083515 m!4204793))

(assert (=> b!3692265 d!1083515))

(declare-fun d!1083517 () Bool)

(declare-fun fromListB!2060 (List!39258) BalanceConc!23648)

(assert (=> d!1083517 (= (seqFromList!4458 (originalCharacters!6628 (_1!22651 (get!12983 lt!1292653)))) (fromListB!2060 (originalCharacters!6628 (_1!22651 (get!12983 lt!1292653)))))))

(declare-fun bs!574145 () Bool)

(assert (= bs!574145 d!1083517))

(declare-fun m!4204795 () Bool)

(assert (=> bs!574145 m!4204795))

(assert (=> b!3692265 d!1083517))

(declare-fun d!1083519 () Bool)

(declare-fun lt!1292678 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5670 (List!39259) (InoxSet Rule!11640))

(assert (=> d!1083519 (= lt!1292678 (select (content!5670 rules!3598) (rule!8766 (_1!22651 (get!12983 lt!1292653)))))))

(declare-fun e!2286458 () Bool)

(assert (=> d!1083519 (= lt!1292678 e!2286458)))

(declare-fun res!1501113 () Bool)

(assert (=> d!1083519 (=> (not res!1501113) (not e!2286458))))

(assert (=> d!1083519 (= res!1501113 ((_ is Cons!39135) rules!3598))))

(assert (=> d!1083519 (= (contains!7809 rules!3598 (rule!8766 (_1!22651 (get!12983 lt!1292653)))) lt!1292678)))

(declare-fun b!3692404 () Bool)

(declare-fun e!2286457 () Bool)

(assert (=> b!3692404 (= e!2286458 e!2286457)))

(declare-fun res!1501112 () Bool)

(assert (=> b!3692404 (=> res!1501112 e!2286457)))

(assert (=> b!3692404 (= res!1501112 (= (h!44555 rules!3598) (rule!8766 (_1!22651 (get!12983 lt!1292653)))))))

(declare-fun b!3692405 () Bool)

(assert (=> b!3692405 (= e!2286457 (contains!7809 (t!301408 rules!3598) (rule!8766 (_1!22651 (get!12983 lt!1292653)))))))

(assert (= (and d!1083519 res!1501113) b!3692404))

(assert (= (and b!3692404 (not res!1501112)) b!3692405))

(declare-fun m!4204797 () Bool)

(assert (=> d!1083519 m!4204797))

(declare-fun m!4204799 () Bool)

(assert (=> d!1083519 m!4204799))

(declare-fun m!4204801 () Bool)

(assert (=> b!3692405 m!4204801))

(assert (=> b!3692263 d!1083519))

(assert (=> b!3692263 d!1083513))

(declare-fun d!1083521 () Bool)

(assert (=> d!1083521 true))

(declare-fun order!21651 () Int)

(declare-fun order!21653 () Int)

(declare-fun lambda!124976 () Int)

(declare-fun dynLambda!17131 (Int Int) Int)

(declare-fun dynLambda!17132 (Int Int) Int)

(assert (=> d!1083521 (< (dynLambda!17131 order!21651 (toValue!8244 (transformation!5920 (h!44555 rules!3598)))) (dynLambda!17132 order!21653 lambda!124976))))

(declare-fun Forall2!983 (Int) Bool)

(assert (=> d!1083521 (= (equivClasses!2428 (toChars!8103 (transformation!5920 (h!44555 rules!3598))) (toValue!8244 (transformation!5920 (h!44555 rules!3598)))) (Forall2!983 lambda!124976))))

(declare-fun bs!574147 () Bool)

(assert (= bs!574147 d!1083521))

(declare-fun m!4204831 () Bool)

(assert (=> bs!574147 m!4204831))

(assert (=> b!3692309 d!1083521))

(declare-fun d!1083535 () Bool)

(declare-fun lt!1292689 () Int)

(assert (=> d!1083535 (>= lt!1292689 0)))

(declare-fun e!2286491 () Int)

(assert (=> d!1083535 (= lt!1292689 e!2286491)))

(declare-fun c!638476 () Bool)

(assert (=> d!1083535 (= c!638476 ((_ is Nil!39134) (_2!22651 (get!12983 lt!1292653))))))

(assert (=> d!1083535 (= (size!29883 (_2!22651 (get!12983 lt!1292653))) lt!1292689)))

(declare-fun b!3692454 () Bool)

(assert (=> b!3692454 (= e!2286491 0)))

(declare-fun b!3692455 () Bool)

(assert (=> b!3692455 (= e!2286491 (+ 1 (size!29883 (t!301407 (_2!22651 (get!12983 lt!1292653))))))))

(assert (= (and d!1083535 c!638476) b!3692454))

(assert (= (and d!1083535 (not c!638476)) b!3692455))

(declare-fun m!4204833 () Bool)

(assert (=> b!3692455 m!4204833))

(assert (=> b!3692267 d!1083535))

(assert (=> b!3692267 d!1083513))

(declare-fun d!1083537 () Bool)

(declare-fun lt!1292690 () Int)

(assert (=> d!1083537 (>= lt!1292690 0)))

(declare-fun e!2286492 () Int)

(assert (=> d!1083537 (= lt!1292690 e!2286492)))

(declare-fun c!638477 () Bool)

(assert (=> d!1083537 (= c!638477 ((_ is Nil!39134) input!3172))))

(assert (=> d!1083537 (= (size!29883 input!3172) lt!1292690)))

(declare-fun b!3692456 () Bool)

(assert (=> b!3692456 (= e!2286492 0)))

(declare-fun b!3692457 () Bool)

(assert (=> b!3692457 (= e!2286492 (+ 1 (size!29883 (t!301407 input!3172))))))

(assert (= (and d!1083537 c!638477) b!3692456))

(assert (= (and d!1083537 (not c!638477)) b!3692457))

(declare-fun m!4204835 () Bool)

(assert (=> b!3692457 m!4204835))

(assert (=> b!3692267 d!1083537))

(declare-fun d!1083539 () Bool)

(assert (=> d!1083539 (= (isEmpty!23325 (originalCharacters!6628 token!544)) ((_ is Nil!39134) (originalCharacters!6628 token!544)))))

(assert (=> d!1083461 d!1083539))

(declare-fun b!3692486 () Bool)

(declare-fun e!2286512 () Bool)

(declare-fun e!2286511 () Bool)

(assert (=> b!3692486 (= e!2286512 e!2286511)))

(declare-fun c!638486 () Bool)

(assert (=> b!3692486 (= c!638486 ((_ is EmptyLang!10679) (regex!5920 (rule!8766 (_1!22651 (get!12983 lt!1292653))))))))

(declare-fun b!3692487 () Bool)

(declare-fun e!2286507 () Bool)

(assert (=> b!3692487 (= e!2286507 (nullable!3725 (regex!5920 (rule!8766 (_1!22651 (get!12983 lt!1292653))))))))

(declare-fun b!3692488 () Bool)

(declare-fun res!1501161 () Bool)

(declare-fun e!2286513 () Bool)

(assert (=> b!3692488 (=> res!1501161 e!2286513)))

(declare-fun tail!5720 (List!39258) List!39258)

(assert (=> b!3692488 (= res!1501161 (not (isEmpty!23325 (tail!5720 (list!14626 (charsOf!3920 (_1!22651 (get!12983 lt!1292653))))))))))

(declare-fun b!3692489 () Bool)

(declare-fun derivativeStep!3270 (Regex!10679 C!21544) Regex!10679)

(declare-fun head!7983 (List!39258) C!21544)

(assert (=> b!3692489 (= e!2286507 (matchR!5223 (derivativeStep!3270 (regex!5920 (rule!8766 (_1!22651 (get!12983 lt!1292653)))) (head!7983 (list!14626 (charsOf!3920 (_1!22651 (get!12983 lt!1292653)))))) (tail!5720 (list!14626 (charsOf!3920 (_1!22651 (get!12983 lt!1292653)))))))))

(declare-fun bm!266984 () Bool)

(declare-fun call!266989 () Bool)

(assert (=> bm!266984 (= call!266989 (isEmpty!23325 (list!14626 (charsOf!3920 (_1!22651 (get!12983 lt!1292653))))))))

(declare-fun d!1083541 () Bool)

(assert (=> d!1083541 e!2286512))

(declare-fun c!638485 () Bool)

(assert (=> d!1083541 (= c!638485 ((_ is EmptyExpr!10679) (regex!5920 (rule!8766 (_1!22651 (get!12983 lt!1292653))))))))

(declare-fun lt!1292693 () Bool)

(assert (=> d!1083541 (= lt!1292693 e!2286507)))

(declare-fun c!638484 () Bool)

(assert (=> d!1083541 (= c!638484 (isEmpty!23325 (list!14626 (charsOf!3920 (_1!22651 (get!12983 lt!1292653))))))))

(assert (=> d!1083541 (validRegex!4887 (regex!5920 (rule!8766 (_1!22651 (get!12983 lt!1292653)))))))

(assert (=> d!1083541 (= (matchR!5223 (regex!5920 (rule!8766 (_1!22651 (get!12983 lt!1292653)))) (list!14626 (charsOf!3920 (_1!22651 (get!12983 lt!1292653))))) lt!1292693)))

(declare-fun b!3692490 () Bool)

(declare-fun res!1501159 () Bool)

(declare-fun e!2286510 () Bool)

(assert (=> b!3692490 (=> res!1501159 e!2286510)))

(assert (=> b!3692490 (= res!1501159 (not ((_ is ElementMatch!10679) (regex!5920 (rule!8766 (_1!22651 (get!12983 lt!1292653)))))))))

(assert (=> b!3692490 (= e!2286511 e!2286510)))

(declare-fun b!3692491 () Bool)

(declare-fun e!2286508 () Bool)

(assert (=> b!3692491 (= e!2286508 e!2286513)))

(declare-fun res!1501160 () Bool)

(assert (=> b!3692491 (=> res!1501160 e!2286513)))

(assert (=> b!3692491 (= res!1501160 call!266989)))

(declare-fun b!3692492 () Bool)

(declare-fun res!1501156 () Bool)

(declare-fun e!2286509 () Bool)

(assert (=> b!3692492 (=> (not res!1501156) (not e!2286509))))

(assert (=> b!3692492 (= res!1501156 (isEmpty!23325 (tail!5720 (list!14626 (charsOf!3920 (_1!22651 (get!12983 lt!1292653)))))))))

(declare-fun b!3692493 () Bool)

(assert (=> b!3692493 (= e!2286510 e!2286508)))

(declare-fun res!1501162 () Bool)

(assert (=> b!3692493 (=> (not res!1501162) (not e!2286508))))

(assert (=> b!3692493 (= res!1501162 (not lt!1292693))))

(declare-fun b!3692494 () Bool)

(declare-fun res!1501157 () Bool)

(assert (=> b!3692494 (=> res!1501157 e!2286510)))

(assert (=> b!3692494 (= res!1501157 e!2286509)))

(declare-fun res!1501155 () Bool)

(assert (=> b!3692494 (=> (not res!1501155) (not e!2286509))))

(assert (=> b!3692494 (= res!1501155 lt!1292693)))

(declare-fun b!3692495 () Bool)

(assert (=> b!3692495 (= e!2286509 (= (head!7983 (list!14626 (charsOf!3920 (_1!22651 (get!12983 lt!1292653))))) (c!638444 (regex!5920 (rule!8766 (_1!22651 (get!12983 lt!1292653)))))))))

(declare-fun b!3692496 () Bool)

(assert (=> b!3692496 (= e!2286513 (not (= (head!7983 (list!14626 (charsOf!3920 (_1!22651 (get!12983 lt!1292653))))) (c!638444 (regex!5920 (rule!8766 (_1!22651 (get!12983 lt!1292653))))))))))

(declare-fun b!3692497 () Bool)

(declare-fun res!1501158 () Bool)

(assert (=> b!3692497 (=> (not res!1501158) (not e!2286509))))

(assert (=> b!3692497 (= res!1501158 (not call!266989))))

(declare-fun b!3692498 () Bool)

(assert (=> b!3692498 (= e!2286511 (not lt!1292693))))

(declare-fun b!3692499 () Bool)

(assert (=> b!3692499 (= e!2286512 (= lt!1292693 call!266989))))

(assert (= (and d!1083541 c!638484) b!3692487))

(assert (= (and d!1083541 (not c!638484)) b!3692489))

(assert (= (and d!1083541 c!638485) b!3692499))

(assert (= (and d!1083541 (not c!638485)) b!3692486))

(assert (= (and b!3692486 c!638486) b!3692498))

(assert (= (and b!3692486 (not c!638486)) b!3692490))

(assert (= (and b!3692490 (not res!1501159)) b!3692494))

(assert (= (and b!3692494 res!1501155) b!3692497))

(assert (= (and b!3692497 res!1501158) b!3692492))

(assert (= (and b!3692492 res!1501156) b!3692495))

(assert (= (and b!3692494 (not res!1501157)) b!3692493))

(assert (= (and b!3692493 res!1501162) b!3692491))

(assert (= (and b!3692491 (not res!1501160)) b!3692488))

(assert (= (and b!3692488 (not res!1501161)) b!3692496))

(assert (= (or b!3692499 b!3692491 b!3692497) bm!266984))

(assert (=> bm!266984 m!4204685))

(declare-fun m!4204837 () Bool)

(assert (=> bm!266984 m!4204837))

(declare-fun m!4204839 () Bool)

(assert (=> b!3692487 m!4204839))

(assert (=> b!3692492 m!4204685))

(declare-fun m!4204841 () Bool)

(assert (=> b!3692492 m!4204841))

(assert (=> b!3692492 m!4204841))

(declare-fun m!4204843 () Bool)

(assert (=> b!3692492 m!4204843))

(assert (=> b!3692489 m!4204685))

(declare-fun m!4204845 () Bool)

(assert (=> b!3692489 m!4204845))

(assert (=> b!3692489 m!4204845))

(declare-fun m!4204847 () Bool)

(assert (=> b!3692489 m!4204847))

(assert (=> b!3692489 m!4204685))

(assert (=> b!3692489 m!4204841))

(assert (=> b!3692489 m!4204847))

(assert (=> b!3692489 m!4204841))

(declare-fun m!4204849 () Bool)

(assert (=> b!3692489 m!4204849))

(assert (=> b!3692495 m!4204685))

(assert (=> b!3692495 m!4204845))

(assert (=> d!1083541 m!4204685))

(assert (=> d!1083541 m!4204837))

(declare-fun m!4204851 () Bool)

(assert (=> d!1083541 m!4204851))

(assert (=> b!3692496 m!4204685))

(assert (=> b!3692496 m!4204845))

(assert (=> b!3692488 m!4204685))

(assert (=> b!3692488 m!4204841))

(assert (=> b!3692488 m!4204841))

(assert (=> b!3692488 m!4204843))

(assert (=> b!3692266 d!1083541))

(assert (=> b!3692266 d!1083513))

(declare-fun d!1083543 () Bool)

(declare-fun list!14628 (Conc!12017) List!39258)

(assert (=> d!1083543 (= (list!14626 (charsOf!3920 (_1!22651 (get!12983 lt!1292653)))) (list!14628 (c!638445 (charsOf!3920 (_1!22651 (get!12983 lt!1292653))))))))

(declare-fun bs!574148 () Bool)

(assert (= bs!574148 d!1083543))

(declare-fun m!4204853 () Bool)

(assert (=> bs!574148 m!4204853))

(assert (=> b!3692266 d!1083543))

(declare-fun d!1083545 () Bool)

(declare-fun lt!1292696 () BalanceConc!23648)

(assert (=> d!1083545 (= (list!14626 lt!1292696) (originalCharacters!6628 (_1!22651 (get!12983 lt!1292653))))))

(assert (=> d!1083545 (= lt!1292696 (dynLambda!17128 (toChars!8103 (transformation!5920 (rule!8766 (_1!22651 (get!12983 lt!1292653))))) (value!189174 (_1!22651 (get!12983 lt!1292653)))))))

(assert (=> d!1083545 (= (charsOf!3920 (_1!22651 (get!12983 lt!1292653))) lt!1292696)))

(declare-fun b_lambda!109535 () Bool)

(assert (=> (not b_lambda!109535) (not d!1083545)))

(declare-fun t!301436 () Bool)

(declare-fun tb!213893 () Bool)

(assert (=> (and b!3692178 (= (toChars!8103 (transformation!5920 (h!44555 rules!3598))) (toChars!8103 (transformation!5920 (rule!8766 (_1!22651 (get!12983 lt!1292653)))))) t!301436) tb!213893))

(declare-fun b!3692500 () Bool)

(declare-fun e!2286514 () Bool)

(declare-fun tp!1122100 () Bool)

(assert (=> b!3692500 (= e!2286514 (and (inv!52594 (c!638445 (dynLambda!17128 (toChars!8103 (transformation!5920 (rule!8766 (_1!22651 (get!12983 lt!1292653))))) (value!189174 (_1!22651 (get!12983 lt!1292653)))))) tp!1122100))))

(declare-fun result!260472 () Bool)

(assert (=> tb!213893 (= result!260472 (and (inv!52595 (dynLambda!17128 (toChars!8103 (transformation!5920 (rule!8766 (_1!22651 (get!12983 lt!1292653))))) (value!189174 (_1!22651 (get!12983 lt!1292653))))) e!2286514))))

(assert (= tb!213893 b!3692500))

(declare-fun m!4204855 () Bool)

(assert (=> b!3692500 m!4204855))

(declare-fun m!4204857 () Bool)

(assert (=> tb!213893 m!4204857))

(assert (=> d!1083545 t!301436))

(declare-fun b_and!275843 () Bool)

(assert (= b_and!275815 (and (=> t!301436 result!260472) b_and!275843)))

(declare-fun tb!213895 () Bool)

(declare-fun t!301438 () Bool)

(assert (=> (and b!3692180 (= (toChars!8103 (transformation!5920 (rule!8766 token!544))) (toChars!8103 (transformation!5920 (rule!8766 (_1!22651 (get!12983 lt!1292653)))))) t!301438) tb!213895))

(declare-fun result!260474 () Bool)

(assert (= result!260474 result!260472))

(assert (=> d!1083545 t!301438))

(declare-fun b_and!275845 () Bool)

(assert (= b_and!275817 (and (=> t!301438 result!260474) b_and!275845)))

(declare-fun t!301440 () Bool)

(declare-fun tb!213897 () Bool)

(assert (=> (and b!3692329 (= (toChars!8103 (transformation!5920 (h!44555 (t!301408 rules!3598)))) (toChars!8103 (transformation!5920 (rule!8766 (_1!22651 (get!12983 lt!1292653)))))) t!301440) tb!213897))

(declare-fun result!260476 () Bool)

(assert (= result!260476 result!260472))

(assert (=> d!1083545 t!301440))

(declare-fun b_and!275847 () Bool)

(assert (= b_and!275825 (and (=> t!301440 result!260476) b_and!275847)))

(declare-fun m!4204859 () Bool)

(assert (=> d!1083545 m!4204859))

(declare-fun m!4204861 () Bool)

(assert (=> d!1083545 m!4204861))

(assert (=> b!3692266 d!1083545))

(declare-fun d!1083547 () Bool)

(assert (=> d!1083547 (= (isEmpty!23326 lt!1292640) (not ((_ is Some!8431) lt!1292640)))))

(assert (=> d!1083471 d!1083547))

(declare-fun b!3692519 () Bool)

(declare-fun e!2286525 () Bool)

(declare-fun lt!1292707 () Option!8432)

(assert (=> b!3692519 (= e!2286525 (= (size!29882 (_1!22651 (get!12983 lt!1292707))) (size!29883 (originalCharacters!6628 (_1!22651 (get!12983 lt!1292707))))))))

(declare-fun b!3692520 () Bool)

(declare-fun e!2286524 () Bool)

(declare-datatypes ((tuple2!39036 0))(
  ( (tuple2!39037 (_1!22652 List!39258) (_2!22652 List!39258)) )
))
(declare-fun findLongestMatchInner!1105 (Regex!10679 List!39258 Int List!39258 List!39258 Int) tuple2!39036)

(assert (=> b!3692520 (= e!2286524 (matchR!5223 (regex!5920 (h!44555 rules!3598)) (_1!22652 (findLongestMatchInner!1105 (regex!5920 (h!44555 rules!3598)) Nil!39134 (size!29883 Nil!39134) input!3172 input!3172 (size!29883 input!3172)))))))

(declare-fun b!3692521 () Bool)

(declare-fun e!2286526 () Option!8432)

(declare-fun lt!1292711 () tuple2!39036)

(declare-fun size!29885 (BalanceConc!23648) Int)

(assert (=> b!3692521 (= e!2286526 (Some!8431 (tuple2!39035 (Token!11195 (apply!9379 (transformation!5920 (h!44555 rules!3598)) (seqFromList!4458 (_1!22652 lt!1292711))) (h!44555 rules!3598) (size!29885 (seqFromList!4458 (_1!22652 lt!1292711))) (_1!22652 lt!1292711)) (_2!22652 lt!1292711))))))

(declare-fun lt!1292708 () Unit!57144)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1078 (Regex!10679 List!39258) Unit!57144)

(assert (=> b!3692521 (= lt!1292708 (longestMatchIsAcceptedByMatchOrIsEmpty!1078 (regex!5920 (h!44555 rules!3598)) input!3172))))

(declare-fun res!1501177 () Bool)

(assert (=> b!3692521 (= res!1501177 (isEmpty!23325 (_1!22652 (findLongestMatchInner!1105 (regex!5920 (h!44555 rules!3598)) Nil!39134 (size!29883 Nil!39134) input!3172 input!3172 (size!29883 input!3172)))))))

(assert (=> b!3692521 (=> res!1501177 e!2286524)))

(assert (=> b!3692521 e!2286524))

(declare-fun lt!1292710 () Unit!57144)

(assert (=> b!3692521 (= lt!1292710 lt!1292708)))

(declare-fun lt!1292709 () Unit!57144)

(declare-fun lemmaSemiInverse!1611 (TokenValueInjection!11728 BalanceConc!23648) Unit!57144)

(assert (=> b!3692521 (= lt!1292709 (lemmaSemiInverse!1611 (transformation!5920 (h!44555 rules!3598)) (seqFromList!4458 (_1!22652 lt!1292711))))))

(declare-fun b!3692522 () Bool)

(declare-fun res!1501183 () Bool)

(assert (=> b!3692522 (=> (not res!1501183) (not e!2286525))))

(assert (=> b!3692522 (= res!1501183 (= (value!189174 (_1!22651 (get!12983 lt!1292707))) (apply!9379 (transformation!5920 (rule!8766 (_1!22651 (get!12983 lt!1292707)))) (seqFromList!4458 (originalCharacters!6628 (_1!22651 (get!12983 lt!1292707)))))))))

(declare-fun b!3692523 () Bool)

(declare-fun res!1501178 () Bool)

(assert (=> b!3692523 (=> (not res!1501178) (not e!2286525))))

(assert (=> b!3692523 (= res!1501178 (< (size!29883 (_2!22651 (get!12983 lt!1292707))) (size!29883 input!3172)))))

(declare-fun b!3692524 () Bool)

(assert (=> b!3692524 (= e!2286526 None!8431)))

(declare-fun b!3692525 () Bool)

(declare-fun res!1501180 () Bool)

(assert (=> b!3692525 (=> (not res!1501180) (not e!2286525))))

(assert (=> b!3692525 (= res!1501180 (= (++!9739 (list!14626 (charsOf!3920 (_1!22651 (get!12983 lt!1292707)))) (_2!22651 (get!12983 lt!1292707))) input!3172))))

(declare-fun d!1083549 () Bool)

(declare-fun e!2286523 () Bool)

(assert (=> d!1083549 e!2286523))

(declare-fun res!1501181 () Bool)

(assert (=> d!1083549 (=> res!1501181 e!2286523)))

(assert (=> d!1083549 (= res!1501181 (isEmpty!23326 lt!1292707))))

(assert (=> d!1083549 (= lt!1292707 e!2286526)))

(declare-fun c!638489 () Bool)

(assert (=> d!1083549 (= c!638489 (isEmpty!23325 (_1!22652 lt!1292711)))))

(declare-fun findLongestMatch!1020 (Regex!10679 List!39258) tuple2!39036)

(assert (=> d!1083549 (= lt!1292711 (findLongestMatch!1020 (regex!5920 (h!44555 rules!3598)) input!3172))))

(assert (=> d!1083549 (ruleValid!2143 thiss!25322 (h!44555 rules!3598))))

(assert (=> d!1083549 (= (maxPrefixOneRule!2144 thiss!25322 (h!44555 rules!3598) input!3172) lt!1292707)))

(declare-fun b!3692526 () Bool)

(declare-fun res!1501179 () Bool)

(assert (=> b!3692526 (=> (not res!1501179) (not e!2286525))))

(assert (=> b!3692526 (= res!1501179 (= (rule!8766 (_1!22651 (get!12983 lt!1292707))) (h!44555 rules!3598)))))

(declare-fun b!3692527 () Bool)

(assert (=> b!3692527 (= e!2286523 e!2286525)))

(declare-fun res!1501182 () Bool)

(assert (=> b!3692527 (=> (not res!1501182) (not e!2286525))))

(assert (=> b!3692527 (= res!1501182 (matchR!5223 (regex!5920 (h!44555 rules!3598)) (list!14626 (charsOf!3920 (_1!22651 (get!12983 lt!1292707))))))))

(assert (= (and d!1083549 c!638489) b!3692524))

(assert (= (and d!1083549 (not c!638489)) b!3692521))

(assert (= (and b!3692521 (not res!1501177)) b!3692520))

(assert (= (and d!1083549 (not res!1501181)) b!3692527))

(assert (= (and b!3692527 res!1501182) b!3692525))

(assert (= (and b!3692525 res!1501180) b!3692523))

(assert (= (and b!3692523 res!1501178) b!3692526))

(assert (= (and b!3692526 res!1501179) b!3692522))

(assert (= (and b!3692522 res!1501183) b!3692519))

(declare-fun m!4204863 () Bool)

(assert (=> b!3692522 m!4204863))

(declare-fun m!4204865 () Bool)

(assert (=> b!3692522 m!4204865))

(assert (=> b!3692522 m!4204865))

(declare-fun m!4204867 () Bool)

(assert (=> b!3692522 m!4204867))

(assert (=> b!3692526 m!4204863))

(assert (=> b!3692523 m!4204863))

(declare-fun m!4204869 () Bool)

(assert (=> b!3692523 m!4204869))

(assert (=> b!3692523 m!4204695))

(assert (=> b!3692527 m!4204863))

(declare-fun m!4204871 () Bool)

(assert (=> b!3692527 m!4204871))

(assert (=> b!3692527 m!4204871))

(declare-fun m!4204873 () Bool)

(assert (=> b!3692527 m!4204873))

(assert (=> b!3692527 m!4204873))

(declare-fun m!4204875 () Bool)

(assert (=> b!3692527 m!4204875))

(declare-fun m!4204877 () Bool)

(assert (=> d!1083549 m!4204877))

(declare-fun m!4204879 () Bool)

(assert (=> d!1083549 m!4204879))

(declare-fun m!4204881 () Bool)

(assert (=> d!1083549 m!4204881))

(assert (=> d!1083549 m!4204601))

(assert (=> b!3692525 m!4204863))

(assert (=> b!3692525 m!4204871))

(assert (=> b!3692525 m!4204871))

(assert (=> b!3692525 m!4204873))

(assert (=> b!3692525 m!4204873))

(declare-fun m!4204883 () Bool)

(assert (=> b!3692525 m!4204883))

(declare-fun m!4204885 () Bool)

(assert (=> b!3692520 m!4204885))

(assert (=> b!3692520 m!4204695))

(assert (=> b!3692520 m!4204885))

(assert (=> b!3692520 m!4204695))

(declare-fun m!4204887 () Bool)

(assert (=> b!3692520 m!4204887))

(declare-fun m!4204889 () Bool)

(assert (=> b!3692520 m!4204889))

(declare-fun m!4204891 () Bool)

(assert (=> b!3692521 m!4204891))

(declare-fun m!4204893 () Bool)

(assert (=> b!3692521 m!4204893))

(declare-fun m!4204895 () Bool)

(assert (=> b!3692521 m!4204895))

(assert (=> b!3692521 m!4204891))

(declare-fun m!4204897 () Bool)

(assert (=> b!3692521 m!4204897))

(assert (=> b!3692521 m!4204891))

(assert (=> b!3692521 m!4204885))

(assert (=> b!3692521 m!4204695))

(assert (=> b!3692521 m!4204887))

(assert (=> b!3692521 m!4204891))

(declare-fun m!4204899 () Bool)

(assert (=> b!3692521 m!4204899))

(assert (=> b!3692521 m!4204695))

(assert (=> b!3692521 m!4204885))

(declare-fun m!4204901 () Bool)

(assert (=> b!3692521 m!4204901))

(assert (=> b!3692519 m!4204863))

(declare-fun m!4204903 () Bool)

(assert (=> b!3692519 m!4204903))

(assert (=> bm!266968 d!1083549))

(declare-fun d!1083551 () Bool)

(assert (=> d!1083551 true))

(declare-fun lt!1292714 () Bool)

(assert (=> d!1083551 (= lt!1292714 (rulesValidInductive!2127 thiss!25322 rules!3598))))

(declare-fun lambda!124979 () Int)

(declare-fun forall!8178 (List!39259 Int) Bool)

(assert (=> d!1083551 (= lt!1292714 (forall!8178 rules!3598 lambda!124979))))

(assert (=> d!1083551 (= (rulesValid!2286 thiss!25322 rules!3598) lt!1292714)))

(declare-fun bs!574149 () Bool)

(assert (= bs!574149 d!1083551))

(assert (=> bs!574149 m!4204681))

(declare-fun m!4204905 () Bool)

(assert (=> bs!574149 m!4204905))

(assert (=> d!1083493 d!1083551))

(declare-fun d!1083553 () Bool)

(assert (=> d!1083553 (= (isDefined!6625 lt!1292653) (not (isEmpty!23326 lt!1292653)))))

(declare-fun bs!574150 () Bool)

(assert (= bs!574150 d!1083553))

(assert (=> bs!574150 m!4204675))

(assert (=> b!3692261 d!1083553))

(declare-fun d!1083555 () Bool)

(assert (=> d!1083555 true))

(declare-fun lambda!124985 () Int)

(declare-fun order!21655 () Int)

(declare-fun order!21657 () Int)

(declare-fun dynLambda!17133 (Int Int) Int)

(declare-fun dynLambda!17134 (Int Int) Int)

(assert (=> d!1083555 (< (dynLambda!17133 order!21655 (toChars!8103 (transformation!5920 (h!44555 rules!3598)))) (dynLambda!17134 order!21657 lambda!124985))))

(assert (=> d!1083555 true))

(assert (=> d!1083555 (< (dynLambda!17131 order!21651 (toValue!8244 (transformation!5920 (h!44555 rules!3598)))) (dynLambda!17134 order!21657 lambda!124985))))

(declare-fun Forall!1385 (Int) Bool)

(assert (=> d!1083555 (= (semiInverseModEq!2529 (toChars!8103 (transformation!5920 (h!44555 rules!3598))) (toValue!8244 (transformation!5920 (h!44555 rules!3598)))) (Forall!1385 lambda!124985))))

(declare-fun bs!574153 () Bool)

(assert (= bs!574153 d!1083555))

(declare-fun m!4204911 () Bool)

(assert (=> bs!574153 m!4204911))

(assert (=> d!1083503 d!1083555))

(declare-fun d!1083561 () Bool)

(declare-fun c!638495 () Bool)

(assert (=> d!1083561 (= c!638495 ((_ is Node!12017) (c!638445 (dynLambda!17128 (toChars!8103 (transformation!5920 (rule!8766 token!544))) (value!189174 token!544)))))))

(declare-fun e!2286538 () Bool)

(assert (=> d!1083561 (= (inv!52594 (c!638445 (dynLambda!17128 (toChars!8103 (transformation!5920 (rule!8766 token!544))) (value!189174 token!544)))) e!2286538)))

(declare-fun b!3692552 () Bool)

(declare-fun inv!52598 (Conc!12017) Bool)

(assert (=> b!3692552 (= e!2286538 (inv!52598 (c!638445 (dynLambda!17128 (toChars!8103 (transformation!5920 (rule!8766 token!544))) (value!189174 token!544)))))))

(declare-fun b!3692553 () Bool)

(declare-fun e!2286539 () Bool)

(assert (=> b!3692553 (= e!2286538 e!2286539)))

(declare-fun res!1501190 () Bool)

(assert (=> b!3692553 (= res!1501190 (not ((_ is Leaf!18588) (c!638445 (dynLambda!17128 (toChars!8103 (transformation!5920 (rule!8766 token!544))) (value!189174 token!544))))))))

(assert (=> b!3692553 (=> res!1501190 e!2286539)))

(declare-fun b!3692554 () Bool)

(declare-fun inv!52599 (Conc!12017) Bool)

(assert (=> b!3692554 (= e!2286539 (inv!52599 (c!638445 (dynLambda!17128 (toChars!8103 (transformation!5920 (rule!8766 token!544))) (value!189174 token!544)))))))

(assert (= (and d!1083561 c!638495) b!3692552))

(assert (= (and d!1083561 (not c!638495)) b!3692553))

(assert (= (and b!3692553 (not res!1501190)) b!3692554))

(declare-fun m!4204915 () Bool)

(assert (=> b!3692552 m!4204915))

(declare-fun m!4204917 () Bool)

(assert (=> b!3692554 m!4204917))

(assert (=> b!3692197 d!1083561))

(assert (=> b!3692262 d!1083543))

(assert (=> b!3692262 d!1083545))

(assert (=> b!3692262 d!1083513))

(declare-fun d!1083565 () Bool)

(declare-fun charsToInt!0 (List!39257) (_ BitVec 32))

(assert (=> d!1083565 (= (inv!16 (value!189174 token!544)) (= (charsToInt!0 (text!43497 (value!189174 token!544))) (value!189165 (value!189174 token!544))))))

(declare-fun bs!574154 () Bool)

(assert (= bs!574154 d!1083565))

(declare-fun m!4204923 () Bool)

(assert (=> bs!574154 m!4204923))

(assert (=> b!3692288 d!1083565))

(declare-fun d!1083569 () Bool)

(declare-fun res!1501197 () Bool)

(declare-fun e!2286546 () Bool)

(assert (=> d!1083569 (=> res!1501197 e!2286546)))

(assert (=> d!1083569 (= res!1501197 ((_ is Nil!39135) rules!3598))))

(assert (=> d!1083569 (= (noDuplicateTag!2282 thiss!25322 rules!3598 Nil!39137) e!2286546)))

(declare-fun b!3692561 () Bool)

(declare-fun e!2286547 () Bool)

(assert (=> b!3692561 (= e!2286546 e!2286547)))

(declare-fun res!1501198 () Bool)

(assert (=> b!3692561 (=> (not res!1501198) (not e!2286547))))

(declare-fun contains!7811 (List!39261 String!44084) Bool)

(assert (=> b!3692561 (= res!1501198 (not (contains!7811 Nil!39137 (tag!6742 (h!44555 rules!3598)))))))

(declare-fun b!3692562 () Bool)

(assert (=> b!3692562 (= e!2286547 (noDuplicateTag!2282 thiss!25322 (t!301408 rules!3598) (Cons!39137 (tag!6742 (h!44555 rules!3598)) Nil!39137)))))

(assert (= (and d!1083569 (not res!1501197)) b!3692561))

(assert (= (and b!3692561 res!1501198) b!3692562))

(declare-fun m!4204925 () Bool)

(assert (=> b!3692561 m!4204925))

(declare-fun m!4204927 () Bool)

(assert (=> b!3692562 m!4204927))

(assert (=> b!3692272 d!1083569))

(declare-fun bs!574155 () Bool)

(declare-fun d!1083571 () Bool)

(assert (= bs!574155 (and d!1083571 d!1083521)))

(declare-fun lambda!124986 () Int)

(assert (=> bs!574155 (= (= (toValue!8244 (transformation!5920 (rule!8766 token!544))) (toValue!8244 (transformation!5920 (h!44555 rules!3598)))) (= lambda!124986 lambda!124976))))

(assert (=> d!1083571 true))

(assert (=> d!1083571 (< (dynLambda!17131 order!21651 (toValue!8244 (transformation!5920 (rule!8766 token!544)))) (dynLambda!17132 order!21653 lambda!124986))))

(assert (=> d!1083571 (= (equivClasses!2428 (toChars!8103 (transformation!5920 (rule!8766 token!544))) (toValue!8244 (transformation!5920 (rule!8766 token!544)))) (Forall2!983 lambda!124986))))

(declare-fun bs!574156 () Bool)

(assert (= bs!574156 d!1083571))

(declare-fun m!4204929 () Bool)

(assert (=> bs!574156 m!4204929))

(assert (=> b!3692308 d!1083571))

(declare-fun d!1083573 () Bool)

(declare-fun lt!1292719 () Int)

(assert (=> d!1083573 (>= lt!1292719 0)))

(declare-fun e!2286548 () Int)

(assert (=> d!1083573 (= lt!1292719 e!2286548)))

(declare-fun c!638496 () Bool)

(assert (=> d!1083573 (= c!638496 ((_ is Nil!39134) (originalCharacters!6628 token!544)))))

(assert (=> d!1083573 (= (size!29883 (originalCharacters!6628 token!544)) lt!1292719)))

(declare-fun b!3692563 () Bool)

(assert (=> b!3692563 (= e!2286548 0)))

(declare-fun b!3692564 () Bool)

(assert (=> b!3692564 (= e!2286548 (+ 1 (size!29883 (t!301407 (originalCharacters!6628 token!544)))))))

(assert (= (and d!1083573 c!638496) b!3692563))

(assert (= (and d!1083573 (not c!638496)) b!3692564))

(declare-fun m!4204931 () Bool)

(assert (=> b!3692564 m!4204931))

(assert (=> b!3692192 d!1083573))

(declare-fun d!1083575 () Bool)

(assert (=> d!1083575 (= (isEmpty!23326 lt!1292653) (not ((_ is Some!8431) lt!1292653)))))

(assert (=> d!1083473 d!1083575))

(declare-fun b!3692603 () Bool)

(declare-fun e!2286571 () Bool)

(assert (=> b!3692603 (= e!2286571 (isPrefix!3261 (tail!5720 input!3172) (tail!5720 input!3172)))))

(declare-fun b!3692604 () Bool)

(declare-fun e!2286569 () Bool)

(assert (=> b!3692604 (= e!2286569 (>= (size!29883 input!3172) (size!29883 input!3172)))))

(declare-fun d!1083577 () Bool)

(assert (=> d!1083577 e!2286569))

(declare-fun res!1501224 () Bool)

(assert (=> d!1083577 (=> res!1501224 e!2286569)))

(declare-fun lt!1292724 () Bool)

(assert (=> d!1083577 (= res!1501224 (not lt!1292724))))

(declare-fun e!2286570 () Bool)

(assert (=> d!1083577 (= lt!1292724 e!2286570)))

(declare-fun res!1501226 () Bool)

(assert (=> d!1083577 (=> res!1501226 e!2286570)))

(assert (=> d!1083577 (= res!1501226 ((_ is Nil!39134) input!3172))))

(assert (=> d!1083577 (= (isPrefix!3261 input!3172 input!3172) lt!1292724)))

(declare-fun b!3692601 () Bool)

(assert (=> b!3692601 (= e!2286570 e!2286571)))

(declare-fun res!1501225 () Bool)

(assert (=> b!3692601 (=> (not res!1501225) (not e!2286571))))

(assert (=> b!3692601 (= res!1501225 (not ((_ is Nil!39134) input!3172)))))

(declare-fun b!3692602 () Bool)

(declare-fun res!1501223 () Bool)

(assert (=> b!3692602 (=> (not res!1501223) (not e!2286571))))

(assert (=> b!3692602 (= res!1501223 (= (head!7983 input!3172) (head!7983 input!3172)))))

(assert (= (and d!1083577 (not res!1501226)) b!3692601))

(assert (= (and b!3692601 res!1501225) b!3692602))

(assert (= (and b!3692602 res!1501223) b!3692603))

(assert (= (and d!1083577 (not res!1501224)) b!3692604))

(declare-fun m!4204933 () Bool)

(assert (=> b!3692603 m!4204933))

(assert (=> b!3692603 m!4204933))

(assert (=> b!3692603 m!4204933))

(assert (=> b!3692603 m!4204933))

(declare-fun m!4204935 () Bool)

(assert (=> b!3692603 m!4204935))

(assert (=> b!3692604 m!4204695))

(assert (=> b!3692604 m!4204695))

(declare-fun m!4204937 () Bool)

(assert (=> b!3692602 m!4204937))

(assert (=> b!3692602 m!4204937))

(assert (=> d!1083473 d!1083577))

(declare-fun d!1083579 () Bool)

(assert (=> d!1083579 (isPrefix!3261 input!3172 input!3172)))

(declare-fun lt!1292727 () Unit!57144)

(declare-fun choose!22110 (List!39258 List!39258) Unit!57144)

(assert (=> d!1083579 (= lt!1292727 (choose!22110 input!3172 input!3172))))

(assert (=> d!1083579 (= (lemmaIsPrefixRefl!2046 input!3172 input!3172) lt!1292727)))

(declare-fun bs!574157 () Bool)

(assert (= bs!574157 d!1083579))

(assert (=> bs!574157 m!4204677))

(declare-fun m!4204939 () Bool)

(assert (=> bs!574157 m!4204939))

(assert (=> d!1083473 d!1083579))

(declare-fun bs!574158 () Bool)

(declare-fun d!1083581 () Bool)

(assert (= bs!574158 (and d!1083581 d!1083551)))

(declare-fun lambda!124989 () Int)

(assert (=> bs!574158 (= lambda!124989 lambda!124979)))

(assert (=> d!1083581 true))

(declare-fun lt!1292731 () Bool)

(assert (=> d!1083581 (= lt!1292731 (forall!8178 rules!3598 lambda!124989))))

(declare-fun e!2286583 () Bool)

(assert (=> d!1083581 (= lt!1292731 e!2286583)))

(declare-fun res!1501239 () Bool)

(assert (=> d!1083581 (=> res!1501239 e!2286583)))

(assert (=> d!1083581 (= res!1501239 (not ((_ is Cons!39135) rules!3598)))))

(assert (=> d!1083581 (= (rulesValidInductive!2127 thiss!25322 rules!3598) lt!1292731)))

(declare-fun b!3692623 () Bool)

(declare-fun e!2286584 () Bool)

(assert (=> b!3692623 (= e!2286583 e!2286584)))

(declare-fun res!1501240 () Bool)

(assert (=> b!3692623 (=> (not res!1501240) (not e!2286584))))

(assert (=> b!3692623 (= res!1501240 (ruleValid!2143 thiss!25322 (h!44555 rules!3598)))))

(declare-fun b!3692624 () Bool)

(assert (=> b!3692624 (= e!2286584 (rulesValidInductive!2127 thiss!25322 (t!301408 rules!3598)))))

(assert (= (and d!1083581 (not res!1501239)) b!3692623))

(assert (= (and b!3692623 res!1501240) b!3692624))

(declare-fun m!4204957 () Bool)

(assert (=> d!1083581 m!4204957))

(assert (=> b!3692623 m!4204601))

(assert (=> b!3692624 m!4204771))

(assert (=> d!1083473 d!1083581))

(declare-fun d!1083585 () Bool)

(declare-fun charsToBigInt!1 (List!39257) Int)

(assert (=> d!1083585 (= (inv!17 (value!189174 token!544)) (= (charsToBigInt!1 (text!43498 (value!189174 token!544))) (value!189166 (value!189174 token!544))))))

(declare-fun bs!574159 () Bool)

(assert (= bs!574159 d!1083585))

(declare-fun m!4204959 () Bool)

(assert (=> bs!574159 m!4204959))

(assert (=> b!3692287 d!1083585))

(declare-fun d!1083587 () Bool)

(declare-fun charsToBigInt!0 (List!39257 Int) Int)

(assert (=> d!1083587 (= (inv!15 (value!189174 token!544)) (= (charsToBigInt!0 (text!43499 (value!189174 token!544)) 0) (value!189169 (value!189174 token!544))))))

(declare-fun bs!574161 () Bool)

(assert (= bs!574161 d!1083587))

(declare-fun m!4204963 () Bool)

(assert (=> bs!574161 m!4204963))

(assert (=> b!3692290 d!1083587))

(declare-fun b!3692648 () Bool)

(declare-fun e!2286599 () List!39258)

(assert (=> b!3692648 (= e!2286599 (_2!22651 (get!12983 lt!1292653)))))

(declare-fun d!1083591 () Bool)

(declare-fun e!2286598 () Bool)

(assert (=> d!1083591 e!2286598))

(declare-fun res!1501259 () Bool)

(assert (=> d!1083591 (=> (not res!1501259) (not e!2286598))))

(declare-fun lt!1292742 () List!39258)

(declare-fun content!5672 (List!39258) (InoxSet C!21544))

(assert (=> d!1083591 (= res!1501259 (= (content!5672 lt!1292742) ((_ map or) (content!5672 (list!14626 (charsOf!3920 (_1!22651 (get!12983 lt!1292653))))) (content!5672 (_2!22651 (get!12983 lt!1292653))))))))

(assert (=> d!1083591 (= lt!1292742 e!2286599)))

(declare-fun c!638509 () Bool)

(assert (=> d!1083591 (= c!638509 ((_ is Nil!39134) (list!14626 (charsOf!3920 (_1!22651 (get!12983 lt!1292653))))))))

(assert (=> d!1083591 (= (++!9739 (list!14626 (charsOf!3920 (_1!22651 (get!12983 lt!1292653)))) (_2!22651 (get!12983 lt!1292653))) lt!1292742)))

(declare-fun b!3692650 () Bool)

(declare-fun res!1501258 () Bool)

(assert (=> b!3692650 (=> (not res!1501258) (not e!2286598))))

(assert (=> b!3692650 (= res!1501258 (= (size!29883 lt!1292742) (+ (size!29883 (list!14626 (charsOf!3920 (_1!22651 (get!12983 lt!1292653))))) (size!29883 (_2!22651 (get!12983 lt!1292653))))))))

(declare-fun b!3692649 () Bool)

(assert (=> b!3692649 (= e!2286599 (Cons!39134 (h!44554 (list!14626 (charsOf!3920 (_1!22651 (get!12983 lt!1292653))))) (++!9739 (t!301407 (list!14626 (charsOf!3920 (_1!22651 (get!12983 lt!1292653))))) (_2!22651 (get!12983 lt!1292653)))))))

(declare-fun b!3692651 () Bool)

(assert (=> b!3692651 (= e!2286598 (or (not (= (_2!22651 (get!12983 lt!1292653)) Nil!39134)) (= lt!1292742 (list!14626 (charsOf!3920 (_1!22651 (get!12983 lt!1292653)))))))))

(assert (= (and d!1083591 c!638509) b!3692648))

(assert (= (and d!1083591 (not c!638509)) b!3692649))

(assert (= (and d!1083591 res!1501259) b!3692650))

(assert (= (and b!3692650 res!1501258) b!3692651))

(declare-fun m!4204977 () Bool)

(assert (=> d!1083591 m!4204977))

(assert (=> d!1083591 m!4204685))

(declare-fun m!4204981 () Bool)

(assert (=> d!1083591 m!4204981))

(declare-fun m!4204985 () Bool)

(assert (=> d!1083591 m!4204985))

(declare-fun m!4204987 () Bool)

(assert (=> b!3692650 m!4204987))

(assert (=> b!3692650 m!4204685))

(declare-fun m!4204991 () Bool)

(assert (=> b!3692650 m!4204991))

(assert (=> b!3692650 m!4204693))

(declare-fun m!4204995 () Bool)

(assert (=> b!3692649 m!4204995))

(assert (=> b!3692269 d!1083591))

(assert (=> b!3692269 d!1083543))

(assert (=> b!3692269 d!1083545))

(assert (=> b!3692269 d!1083513))

(declare-fun d!1083599 () Bool)

(assert (=> d!1083599 (= (list!14626 (dynLambda!17128 (toChars!8103 (transformation!5920 (rule!8766 token!544))) (value!189174 token!544))) (list!14628 (c!638445 (dynLambda!17128 (toChars!8103 (transformation!5920 (rule!8766 token!544))) (value!189174 token!544)))))))

(declare-fun bs!574164 () Bool)

(assert (= bs!574164 d!1083599))

(declare-fun m!4204999 () Bool)

(assert (=> bs!574164 m!4204999))

(assert (=> b!3692191 d!1083599))

(declare-fun bs!574165 () Bool)

(declare-fun d!1083601 () Bool)

(assert (= bs!574165 (and d!1083601 d!1083555)))

(declare-fun lambda!124990 () Int)

(assert (=> bs!574165 (= (and (= (toChars!8103 (transformation!5920 (rule!8766 token!544))) (toChars!8103 (transformation!5920 (h!44555 rules!3598)))) (= (toValue!8244 (transformation!5920 (rule!8766 token!544))) (toValue!8244 (transformation!5920 (h!44555 rules!3598))))) (= lambda!124990 lambda!124985))))

(assert (=> d!1083601 true))

(assert (=> d!1083601 (< (dynLambda!17133 order!21655 (toChars!8103 (transformation!5920 (rule!8766 token!544)))) (dynLambda!17134 order!21657 lambda!124990))))

(assert (=> d!1083601 true))

(assert (=> d!1083601 (< (dynLambda!17131 order!21651 (toValue!8244 (transformation!5920 (rule!8766 token!544)))) (dynLambda!17134 order!21657 lambda!124990))))

(assert (=> d!1083601 (= (semiInverseModEq!2529 (toChars!8103 (transformation!5920 (rule!8766 token!544))) (toValue!8244 (transformation!5920 (rule!8766 token!544)))) (Forall!1385 lambda!124990))))

(declare-fun bs!574166 () Bool)

(assert (= bs!574166 d!1083601))

(declare-fun m!4205017 () Bool)

(assert (=> bs!574166 m!4205017))

(assert (=> d!1083499 d!1083601))

(declare-fun d!1083605 () Bool)

(declare-fun res!1501271 () Bool)

(declare-fun e!2286623 () Bool)

(assert (=> d!1083605 (=> res!1501271 e!2286623)))

(assert (=> d!1083605 (= res!1501271 ((_ is ElementMatch!10679) (regex!5920 (h!44555 rules!3598))))))

(assert (=> d!1083605 (= (validRegex!4887 (regex!5920 (h!44555 rules!3598))) e!2286623)))

(declare-fun b!3692672 () Bool)

(declare-fun res!1501274 () Bool)

(declare-fun e!2286622 () Bool)

(assert (=> b!3692672 (=> (not res!1501274) (not e!2286622))))

(declare-fun call!267002 () Bool)

(assert (=> b!3692672 (= res!1501274 call!267002)))

(declare-fun e!2286617 () Bool)

(assert (=> b!3692672 (= e!2286617 e!2286622)))

(declare-fun b!3692673 () Bool)

(declare-fun e!2286619 () Bool)

(assert (=> b!3692673 (= e!2286619 e!2286617)))

(declare-fun c!638515 () Bool)

(assert (=> b!3692673 (= c!638515 ((_ is Union!10679) (regex!5920 (h!44555 rules!3598))))))

(declare-fun b!3692674 () Bool)

(assert (=> b!3692674 (= e!2286623 e!2286619)))

(declare-fun c!638514 () Bool)

(assert (=> b!3692674 (= c!638514 ((_ is Star!10679) (regex!5920 (h!44555 rules!3598))))))

(declare-fun b!3692675 () Bool)

(declare-fun e!2286618 () Bool)

(declare-fun call!267001 () Bool)

(assert (=> b!3692675 (= e!2286618 call!267001)))

(declare-fun bm!266995 () Bool)

(assert (=> bm!266995 (= call!267002 (validRegex!4887 (ite c!638515 (regOne!21871 (regex!5920 (h!44555 rules!3598))) (regOne!21870 (regex!5920 (h!44555 rules!3598))))))))

(declare-fun bm!266996 () Bool)

(declare-fun call!267000 () Bool)

(assert (=> bm!266996 (= call!267001 call!267000)))

(declare-fun b!3692676 () Bool)

(declare-fun res!1501272 () Bool)

(declare-fun e!2286620 () Bool)

(assert (=> b!3692676 (=> res!1501272 e!2286620)))

(assert (=> b!3692676 (= res!1501272 (not ((_ is Concat!16830) (regex!5920 (h!44555 rules!3598)))))))

(assert (=> b!3692676 (= e!2286617 e!2286620)))

(declare-fun b!3692677 () Bool)

(declare-fun e!2286621 () Bool)

(assert (=> b!3692677 (= e!2286619 e!2286621)))

(declare-fun res!1501270 () Bool)

(assert (=> b!3692677 (= res!1501270 (not (nullable!3725 (reg!11008 (regex!5920 (h!44555 rules!3598))))))))

(assert (=> b!3692677 (=> (not res!1501270) (not e!2286621))))

(declare-fun b!3692678 () Bool)

(assert (=> b!3692678 (= e!2286621 call!267000)))

(declare-fun bm!266997 () Bool)

(assert (=> bm!266997 (= call!267000 (validRegex!4887 (ite c!638514 (reg!11008 (regex!5920 (h!44555 rules!3598))) (ite c!638515 (regTwo!21871 (regex!5920 (h!44555 rules!3598))) (regTwo!21870 (regex!5920 (h!44555 rules!3598)))))))))

(declare-fun b!3692679 () Bool)

(assert (=> b!3692679 (= e!2286620 e!2286618)))

(declare-fun res!1501273 () Bool)

(assert (=> b!3692679 (=> (not res!1501273) (not e!2286618))))

(assert (=> b!3692679 (= res!1501273 call!267002)))

(declare-fun b!3692680 () Bool)

(assert (=> b!3692680 (= e!2286622 call!267001)))

(assert (= (and d!1083605 (not res!1501271)) b!3692674))

(assert (= (and b!3692674 c!638514) b!3692677))

(assert (= (and b!3692674 (not c!638514)) b!3692673))

(assert (= (and b!3692677 res!1501270) b!3692678))

(assert (= (and b!3692673 c!638515) b!3692672))

(assert (= (and b!3692673 (not c!638515)) b!3692676))

(assert (= (and b!3692672 res!1501274) b!3692680))

(assert (= (and b!3692676 (not res!1501272)) b!3692679))

(assert (= (and b!3692679 res!1501273) b!3692675))

(assert (= (or b!3692680 b!3692675) bm!266996))

(assert (= (or b!3692672 b!3692679) bm!266995))

(assert (= (or b!3692678 bm!266996) bm!266997))

(declare-fun m!4205027 () Bool)

(assert (=> bm!266995 m!4205027))

(declare-fun m!4205029 () Bool)

(assert (=> b!3692677 m!4205029))

(declare-fun m!4205031 () Bool)

(assert (=> bm!266997 m!4205031))

(assert (=> d!1083467 d!1083605))

(declare-fun d!1083615 () Bool)

(assert (=> d!1083615 (= (inv!52589 (tag!6742 (h!44555 (t!301408 rules!3598)))) (= (mod (str.len (value!189173 (tag!6742 (h!44555 (t!301408 rules!3598))))) 2) 0))))

(assert (=> b!3692328 d!1083615))

(declare-fun d!1083617 () Bool)

(declare-fun res!1501275 () Bool)

(declare-fun e!2286624 () Bool)

(assert (=> d!1083617 (=> (not res!1501275) (not e!2286624))))

(assert (=> d!1083617 (= res!1501275 (semiInverseModEq!2529 (toChars!8103 (transformation!5920 (h!44555 (t!301408 rules!3598)))) (toValue!8244 (transformation!5920 (h!44555 (t!301408 rules!3598))))))))

(assert (=> d!1083617 (= (inv!52593 (transformation!5920 (h!44555 (t!301408 rules!3598)))) e!2286624)))

(declare-fun b!3692681 () Bool)

(assert (=> b!3692681 (= e!2286624 (equivClasses!2428 (toChars!8103 (transformation!5920 (h!44555 (t!301408 rules!3598)))) (toValue!8244 (transformation!5920 (h!44555 (t!301408 rules!3598))))))))

(assert (= (and d!1083617 res!1501275) b!3692681))

(declare-fun m!4205033 () Bool)

(assert (=> d!1083617 m!4205033))

(declare-fun m!4205035 () Bool)

(assert (=> b!3692681 m!4205035))

(assert (=> b!3692328 d!1083617))

(declare-fun d!1083619 () Bool)

(declare-fun nullableFct!1043 (Regex!10679) Bool)

(assert (=> d!1083619 (= (nullable!3725 (regex!5920 (h!44555 rules!3598))) (nullableFct!1043 (regex!5920 (h!44555 rules!3598))))))

(declare-fun bs!574169 () Bool)

(assert (= bs!574169 d!1083619))

(declare-fun m!4205037 () Bool)

(assert (=> bs!574169 m!4205037))

(assert (=> b!3692202 d!1083619))

(declare-fun b!3692684 () Bool)

(declare-fun e!2286625 () Bool)

(declare-fun tp!1122105 () Bool)

(assert (=> b!3692684 (= e!2286625 tp!1122105)))

(declare-fun b!3692683 () Bool)

(declare-fun tp!1122104 () Bool)

(declare-fun tp!1122101 () Bool)

(assert (=> b!3692683 (= e!2286625 (and tp!1122104 tp!1122101))))

(declare-fun b!3692685 () Bool)

(declare-fun tp!1122102 () Bool)

(declare-fun tp!1122103 () Bool)

(assert (=> b!3692685 (= e!2286625 (and tp!1122102 tp!1122103))))

(assert (=> b!3692352 (= tp!1122058 e!2286625)))

(declare-fun b!3692682 () Bool)

(assert (=> b!3692682 (= e!2286625 tp_is_empty!18433)))

(assert (= (and b!3692352 ((_ is ElementMatch!10679) (regOne!21871 (regex!5920 (h!44555 rules!3598))))) b!3692682))

(assert (= (and b!3692352 ((_ is Concat!16830) (regOne!21871 (regex!5920 (h!44555 rules!3598))))) b!3692683))

(assert (= (and b!3692352 ((_ is Star!10679) (regOne!21871 (regex!5920 (h!44555 rules!3598))))) b!3692684))

(assert (= (and b!3692352 ((_ is Union!10679) (regOne!21871 (regex!5920 (h!44555 rules!3598))))) b!3692685))

(declare-fun b!3692688 () Bool)

(declare-fun e!2286626 () Bool)

(declare-fun tp!1122110 () Bool)

(assert (=> b!3692688 (= e!2286626 tp!1122110)))

(declare-fun b!3692687 () Bool)

(declare-fun tp!1122109 () Bool)

(declare-fun tp!1122106 () Bool)

(assert (=> b!3692687 (= e!2286626 (and tp!1122109 tp!1122106))))

(declare-fun b!3692689 () Bool)

(declare-fun tp!1122107 () Bool)

(declare-fun tp!1122108 () Bool)

(assert (=> b!3692689 (= e!2286626 (and tp!1122107 tp!1122108))))

(assert (=> b!3692352 (= tp!1122059 e!2286626)))

(declare-fun b!3692686 () Bool)

(assert (=> b!3692686 (= e!2286626 tp_is_empty!18433)))

(assert (= (and b!3692352 ((_ is ElementMatch!10679) (regTwo!21871 (regex!5920 (h!44555 rules!3598))))) b!3692686))

(assert (= (and b!3692352 ((_ is Concat!16830) (regTwo!21871 (regex!5920 (h!44555 rules!3598))))) b!3692687))

(assert (= (and b!3692352 ((_ is Star!10679) (regTwo!21871 (regex!5920 (h!44555 rules!3598))))) b!3692688))

(assert (= (and b!3692352 ((_ is Union!10679) (regTwo!21871 (regex!5920 (h!44555 rules!3598))))) b!3692689))

(declare-fun b!3692694 () Bool)

(declare-fun e!2286627 () Bool)

(declare-fun tp!1122115 () Bool)

(assert (=> b!3692694 (= e!2286627 tp!1122115)))

(declare-fun b!3692693 () Bool)

(declare-fun tp!1122114 () Bool)

(declare-fun tp!1122111 () Bool)

(assert (=> b!3692693 (= e!2286627 (and tp!1122114 tp!1122111))))

(declare-fun b!3692695 () Bool)

(declare-fun tp!1122112 () Bool)

(declare-fun tp!1122113 () Bool)

(assert (=> b!3692695 (= e!2286627 (and tp!1122112 tp!1122113))))

(assert (=> b!3692348 (= tp!1122053 e!2286627)))

(declare-fun b!3692692 () Bool)

(assert (=> b!3692692 (= e!2286627 tp_is_empty!18433)))

(assert (= (and b!3692348 ((_ is ElementMatch!10679) (regOne!21871 (regex!5920 (rule!8766 token!544))))) b!3692692))

(assert (= (and b!3692348 ((_ is Concat!16830) (regOne!21871 (regex!5920 (rule!8766 token!544))))) b!3692693))

(assert (= (and b!3692348 ((_ is Star!10679) (regOne!21871 (regex!5920 (rule!8766 token!544))))) b!3692694))

(assert (= (and b!3692348 ((_ is Union!10679) (regOne!21871 (regex!5920 (rule!8766 token!544))))) b!3692695))

(declare-fun b!3692700 () Bool)

(declare-fun e!2286628 () Bool)

(declare-fun tp!1122120 () Bool)

(assert (=> b!3692700 (= e!2286628 tp!1122120)))

(declare-fun b!3692699 () Bool)

(declare-fun tp!1122119 () Bool)

(declare-fun tp!1122116 () Bool)

(assert (=> b!3692699 (= e!2286628 (and tp!1122119 tp!1122116))))

(declare-fun b!3692701 () Bool)

(declare-fun tp!1122117 () Bool)

(declare-fun tp!1122118 () Bool)

(assert (=> b!3692701 (= e!2286628 (and tp!1122117 tp!1122118))))

(assert (=> b!3692348 (= tp!1122054 e!2286628)))

(declare-fun b!3692698 () Bool)

(assert (=> b!3692698 (= e!2286628 tp_is_empty!18433)))

(assert (= (and b!3692348 ((_ is ElementMatch!10679) (regTwo!21871 (regex!5920 (rule!8766 token!544))))) b!3692698))

(assert (= (and b!3692348 ((_ is Concat!16830) (regTwo!21871 (regex!5920 (rule!8766 token!544))))) b!3692699))

(assert (= (and b!3692348 ((_ is Star!10679) (regTwo!21871 (regex!5920 (rule!8766 token!544))))) b!3692700))

(assert (= (and b!3692348 ((_ is Union!10679) (regTwo!21871 (regex!5920 (rule!8766 token!544))))) b!3692701))

(declare-fun b!3692704 () Bool)

(declare-fun e!2286629 () Bool)

(declare-fun tp!1122125 () Bool)

(assert (=> b!3692704 (= e!2286629 tp!1122125)))

(declare-fun b!3692703 () Bool)

(declare-fun tp!1122124 () Bool)

(declare-fun tp!1122121 () Bool)

(assert (=> b!3692703 (= e!2286629 (and tp!1122124 tp!1122121))))

(declare-fun b!3692705 () Bool)

(declare-fun tp!1122122 () Bool)

(declare-fun tp!1122123 () Bool)

(assert (=> b!3692705 (= e!2286629 (and tp!1122122 tp!1122123))))

(assert (=> b!3692351 (= tp!1122061 e!2286629)))

(declare-fun b!3692702 () Bool)

(assert (=> b!3692702 (= e!2286629 tp_is_empty!18433)))

(assert (= (and b!3692351 ((_ is ElementMatch!10679) (reg!11008 (regex!5920 (h!44555 rules!3598))))) b!3692702))

(assert (= (and b!3692351 ((_ is Concat!16830) (reg!11008 (regex!5920 (h!44555 rules!3598))))) b!3692703))

(assert (= (and b!3692351 ((_ is Star!10679) (reg!11008 (regex!5920 (h!44555 rules!3598))))) b!3692704))

(assert (= (and b!3692351 ((_ is Union!10679) (reg!11008 (regex!5920 (h!44555 rules!3598))))) b!3692705))

(declare-fun b!3692708 () Bool)

(declare-fun e!2286631 () Bool)

(declare-fun tp!1122126 () Bool)

(assert (=> b!3692708 (= e!2286631 (and tp_is_empty!18433 tp!1122126))))

(assert (=> b!3692353 (= tp!1122062 e!2286631)))

(assert (= (and b!3692353 ((_ is Cons!39134) (t!301407 (t!301407 input!3172)))) b!3692708))

(declare-fun b!3692709 () Bool)

(declare-fun e!2286632 () Bool)

(declare-fun tp!1122127 () Bool)

(assert (=> b!3692709 (= e!2286632 (and tp_is_empty!18433 tp!1122127))))

(assert (=> b!3692334 (= tp!1122041 e!2286632)))

(assert (= (and b!3692334 ((_ is Cons!39134) (t!301407 (originalCharacters!6628 token!544)))) b!3692709))

(declare-fun b!3692714 () Bool)

(declare-fun b_free!98057 () Bool)

(declare-fun b_next!98761 () Bool)

(assert (=> b!3692714 (= b_free!98057 (not b_next!98761))))

(declare-fun tb!213905 () Bool)

(declare-fun t!301448 () Bool)

(assert (=> (and b!3692714 (= (toValue!8244 (transformation!5920 (h!44555 (t!301408 (t!301408 rules!3598))))) (toValue!8244 (transformation!5920 (rule!8766 (_1!22651 (get!12983 lt!1292653)))))) t!301448) tb!213905))

(declare-fun result!260486 () Bool)

(assert (= result!260486 result!260458))

(assert (=> d!1083515 t!301448))

(declare-fun b_and!275855 () Bool)

(declare-fun tp!1122130 () Bool)

(assert (=> b!3692714 (= tp!1122130 (and (=> t!301448 result!260486) b_and!275855))))

(declare-fun b_free!98059 () Bool)

(declare-fun b_next!98763 () Bool)

(assert (=> b!3692714 (= b_free!98059 (not b_next!98763))))

(declare-fun tb!213907 () Bool)

(declare-fun t!301450 () Bool)

(assert (=> (and b!3692714 (= (toChars!8103 (transformation!5920 (h!44555 (t!301408 (t!301408 rules!3598))))) (toChars!8103 (transformation!5920 (rule!8766 token!544)))) t!301450) tb!213907))

(declare-fun result!260488 () Bool)

(assert (= result!260488 result!260430))

(assert (=> b!3692191 t!301450))

(declare-fun tb!213909 () Bool)

(declare-fun t!301452 () Bool)

(assert (=> (and b!3692714 (= (toChars!8103 (transformation!5920 (h!44555 (t!301408 (t!301408 rules!3598))))) (toChars!8103 (transformation!5920 (rule!8766 (_1!22651 (get!12983 lt!1292653)))))) t!301452) tb!213909))

(declare-fun result!260490 () Bool)

(assert (= result!260490 result!260472))

(assert (=> d!1083545 t!301452))

(declare-fun tp!1122128 () Bool)

(declare-fun b_and!275857 () Bool)

(assert (=> b!3692714 (= tp!1122128 (and (=> t!301450 result!260488) (=> t!301452 result!260490) b_and!275857))))

(declare-fun e!2286636 () Bool)

(assert (=> b!3692714 (= e!2286636 (and tp!1122130 tp!1122128))))

(declare-fun e!2286637 () Bool)

(declare-fun b!3692713 () Bool)

(declare-fun tp!1122129 () Bool)

(assert (=> b!3692713 (= e!2286637 (and tp!1122129 (inv!52589 (tag!6742 (h!44555 (t!301408 (t!301408 rules!3598))))) (inv!52593 (transformation!5920 (h!44555 (t!301408 (t!301408 rules!3598))))) e!2286636))))

(declare-fun b!3692712 () Bool)

(declare-fun e!2286635 () Bool)

(declare-fun tp!1122131 () Bool)

(assert (=> b!3692712 (= e!2286635 (and e!2286637 tp!1122131))))

(assert (=> b!3692327 (= tp!1122038 e!2286635)))

(assert (= b!3692713 b!3692714))

(assert (= b!3692712 b!3692713))

(assert (= (and b!3692327 ((_ is Cons!39135) (t!301408 (t!301408 rules!3598)))) b!3692712))

(declare-fun m!4205045 () Bool)

(assert (=> b!3692713 m!4205045))

(declare-fun m!4205047 () Bool)

(assert (=> b!3692713 m!4205047))

(declare-fun b!3692717 () Bool)

(declare-fun e!2286638 () Bool)

(declare-fun tp!1122136 () Bool)

(assert (=> b!3692717 (= e!2286638 tp!1122136)))

(declare-fun b!3692716 () Bool)

(declare-fun tp!1122135 () Bool)

(declare-fun tp!1122132 () Bool)

(assert (=> b!3692716 (= e!2286638 (and tp!1122135 tp!1122132))))

(declare-fun b!3692718 () Bool)

(declare-fun tp!1122133 () Bool)

(declare-fun tp!1122134 () Bool)

(assert (=> b!3692718 (= e!2286638 (and tp!1122133 tp!1122134))))

(assert (=> b!3692347 (= tp!1122056 e!2286638)))

(declare-fun b!3692715 () Bool)

(assert (=> b!3692715 (= e!2286638 tp_is_empty!18433)))

(assert (= (and b!3692347 ((_ is ElementMatch!10679) (reg!11008 (regex!5920 (rule!8766 token!544))))) b!3692715))

(assert (= (and b!3692347 ((_ is Concat!16830) (reg!11008 (regex!5920 (rule!8766 token!544))))) b!3692716))

(assert (= (and b!3692347 ((_ is Star!10679) (reg!11008 (regex!5920 (rule!8766 token!544))))) b!3692717))

(assert (= (and b!3692347 ((_ is Union!10679) (reg!11008 (regex!5920 (rule!8766 token!544))))) b!3692718))

(declare-fun b!3692721 () Bool)

(declare-fun e!2286639 () Bool)

(declare-fun tp!1122141 () Bool)

(assert (=> b!3692721 (= e!2286639 tp!1122141)))

(declare-fun b!3692720 () Bool)

(declare-fun tp!1122140 () Bool)

(declare-fun tp!1122137 () Bool)

(assert (=> b!3692720 (= e!2286639 (and tp!1122140 tp!1122137))))

(declare-fun b!3692722 () Bool)

(declare-fun tp!1122138 () Bool)

(declare-fun tp!1122139 () Bool)

(assert (=> b!3692722 (= e!2286639 (and tp!1122138 tp!1122139))))

(assert (=> b!3692350 (= tp!1122060 e!2286639)))

(declare-fun b!3692719 () Bool)

(assert (=> b!3692719 (= e!2286639 tp_is_empty!18433)))

(assert (= (and b!3692350 ((_ is ElementMatch!10679) (regOne!21870 (regex!5920 (h!44555 rules!3598))))) b!3692719))

(assert (= (and b!3692350 ((_ is Concat!16830) (regOne!21870 (regex!5920 (h!44555 rules!3598))))) b!3692720))

(assert (= (and b!3692350 ((_ is Star!10679) (regOne!21870 (regex!5920 (h!44555 rules!3598))))) b!3692721))

(assert (= (and b!3692350 ((_ is Union!10679) (regOne!21870 (regex!5920 (h!44555 rules!3598))))) b!3692722))

(declare-fun b!3692725 () Bool)

(declare-fun e!2286640 () Bool)

(declare-fun tp!1122146 () Bool)

(assert (=> b!3692725 (= e!2286640 tp!1122146)))

(declare-fun b!3692724 () Bool)

(declare-fun tp!1122145 () Bool)

(declare-fun tp!1122142 () Bool)

(assert (=> b!3692724 (= e!2286640 (and tp!1122145 tp!1122142))))

(declare-fun b!3692726 () Bool)

(declare-fun tp!1122143 () Bool)

(declare-fun tp!1122144 () Bool)

(assert (=> b!3692726 (= e!2286640 (and tp!1122143 tp!1122144))))

(assert (=> b!3692350 (= tp!1122057 e!2286640)))

(declare-fun b!3692723 () Bool)

(assert (=> b!3692723 (= e!2286640 tp_is_empty!18433)))

(assert (= (and b!3692350 ((_ is ElementMatch!10679) (regTwo!21870 (regex!5920 (h!44555 rules!3598))))) b!3692723))

(assert (= (and b!3692350 ((_ is Concat!16830) (regTwo!21870 (regex!5920 (h!44555 rules!3598))))) b!3692724))

(assert (= (and b!3692350 ((_ is Star!10679) (regTwo!21870 (regex!5920 (h!44555 rules!3598))))) b!3692725))

(assert (= (and b!3692350 ((_ is Union!10679) (regTwo!21870 (regex!5920 (h!44555 rules!3598))))) b!3692726))

(declare-fun b!3692729 () Bool)

(declare-fun e!2286641 () Bool)

(declare-fun tp!1122151 () Bool)

(assert (=> b!3692729 (= e!2286641 tp!1122151)))

(declare-fun b!3692728 () Bool)

(declare-fun tp!1122150 () Bool)

(declare-fun tp!1122147 () Bool)

(assert (=> b!3692728 (= e!2286641 (and tp!1122150 tp!1122147))))

(declare-fun b!3692730 () Bool)

(declare-fun tp!1122148 () Bool)

(declare-fun tp!1122149 () Bool)

(assert (=> b!3692730 (= e!2286641 (and tp!1122148 tp!1122149))))

(assert (=> b!3692328 (= tp!1122036 e!2286641)))

(declare-fun b!3692727 () Bool)

(assert (=> b!3692727 (= e!2286641 tp_is_empty!18433)))

(assert (= (and b!3692328 ((_ is ElementMatch!10679) (regex!5920 (h!44555 (t!301408 rules!3598))))) b!3692727))

(assert (= (and b!3692328 ((_ is Concat!16830) (regex!5920 (h!44555 (t!301408 rules!3598))))) b!3692728))

(assert (= (and b!3692328 ((_ is Star!10679) (regex!5920 (h!44555 (t!301408 rules!3598))))) b!3692729))

(assert (= (and b!3692328 ((_ is Union!10679) (regex!5920 (h!44555 (t!301408 rules!3598))))) b!3692730))

(declare-fun e!2286648 () Bool)

(declare-fun tp!1122159 () Bool)

(declare-fun b!3692741 () Bool)

(declare-fun tp!1122158 () Bool)

(assert (=> b!3692741 (= e!2286648 (and (inv!52594 (left!30515 (c!638445 (dynLambda!17128 (toChars!8103 (transformation!5920 (rule!8766 token!544))) (value!189174 token!544))))) tp!1122158 (inv!52594 (right!30845 (c!638445 (dynLambda!17128 (toChars!8103 (transformation!5920 (rule!8766 token!544))) (value!189174 token!544))))) tp!1122159))))

(declare-fun b!3692743 () Bool)

(declare-fun e!2286649 () Bool)

(declare-fun tp!1122160 () Bool)

(assert (=> b!3692743 (= e!2286649 tp!1122160)))

(declare-fun b!3692742 () Bool)

(declare-fun inv!52600 (IArray!24039) Bool)

(assert (=> b!3692742 (= e!2286648 (and (inv!52600 (xs!15219 (c!638445 (dynLambda!17128 (toChars!8103 (transformation!5920 (rule!8766 token!544))) (value!189174 token!544))))) e!2286649))))

(assert (=> b!3692197 (= tp!1122023 (and (inv!52594 (c!638445 (dynLambda!17128 (toChars!8103 (transformation!5920 (rule!8766 token!544))) (value!189174 token!544)))) e!2286648))))

(assert (= (and b!3692197 ((_ is Node!12017) (c!638445 (dynLambda!17128 (toChars!8103 (transformation!5920 (rule!8766 token!544))) (value!189174 token!544))))) b!3692741))

(assert (= b!3692742 b!3692743))

(assert (= (and b!3692197 ((_ is Leaf!18588) (c!638445 (dynLambda!17128 (toChars!8103 (transformation!5920 (rule!8766 token!544))) (value!189174 token!544))))) b!3692742))

(declare-fun m!4205049 () Bool)

(assert (=> b!3692741 m!4205049))

(declare-fun m!4205051 () Bool)

(assert (=> b!3692741 m!4205051))

(declare-fun m!4205053 () Bool)

(assert (=> b!3692742 m!4205053))

(assert (=> b!3692197 m!4204613))

(declare-fun b!3692746 () Bool)

(declare-fun e!2286650 () Bool)

(declare-fun tp!1122165 () Bool)

(assert (=> b!3692746 (= e!2286650 tp!1122165)))

(declare-fun b!3692745 () Bool)

(declare-fun tp!1122164 () Bool)

(declare-fun tp!1122161 () Bool)

(assert (=> b!3692745 (= e!2286650 (and tp!1122164 tp!1122161))))

(declare-fun b!3692747 () Bool)

(declare-fun tp!1122162 () Bool)

(declare-fun tp!1122163 () Bool)

(assert (=> b!3692747 (= e!2286650 (and tp!1122162 tp!1122163))))

(assert (=> b!3692346 (= tp!1122055 e!2286650)))

(declare-fun b!3692744 () Bool)

(assert (=> b!3692744 (= e!2286650 tp_is_empty!18433)))

(assert (= (and b!3692346 ((_ is ElementMatch!10679) (regOne!21870 (regex!5920 (rule!8766 token!544))))) b!3692744))

(assert (= (and b!3692346 ((_ is Concat!16830) (regOne!21870 (regex!5920 (rule!8766 token!544))))) b!3692745))

(assert (= (and b!3692346 ((_ is Star!10679) (regOne!21870 (regex!5920 (rule!8766 token!544))))) b!3692746))

(assert (= (and b!3692346 ((_ is Union!10679) (regOne!21870 (regex!5920 (rule!8766 token!544))))) b!3692747))

(declare-fun b!3692750 () Bool)

(declare-fun e!2286651 () Bool)

(declare-fun tp!1122170 () Bool)

(assert (=> b!3692750 (= e!2286651 tp!1122170)))

(declare-fun b!3692749 () Bool)

(declare-fun tp!1122169 () Bool)

(declare-fun tp!1122166 () Bool)

(assert (=> b!3692749 (= e!2286651 (and tp!1122169 tp!1122166))))

(declare-fun b!3692751 () Bool)

(declare-fun tp!1122167 () Bool)

(declare-fun tp!1122168 () Bool)

(assert (=> b!3692751 (= e!2286651 (and tp!1122167 tp!1122168))))

(assert (=> b!3692346 (= tp!1122052 e!2286651)))

(declare-fun b!3692748 () Bool)

(assert (=> b!3692748 (= e!2286651 tp_is_empty!18433)))

(assert (= (and b!3692346 ((_ is ElementMatch!10679) (regTwo!21870 (regex!5920 (rule!8766 token!544))))) b!3692748))

(assert (= (and b!3692346 ((_ is Concat!16830) (regTwo!21870 (regex!5920 (rule!8766 token!544))))) b!3692749))

(assert (= (and b!3692346 ((_ is Star!10679) (regTwo!21870 (regex!5920 (rule!8766 token!544))))) b!3692750))

(assert (= (and b!3692346 ((_ is Union!10679) (regTwo!21870 (regex!5920 (rule!8766 token!544))))) b!3692751))

(check-sat (not b!3692709) b_and!275843 (not b!3692729) (not bm!266995) (not b!3692519) (not b!3692724) (not b!3692726) (not b!3692712) (not b_next!98761) (not d!1083571) (not bm!266997) (not tb!213881) (not d!1083551) (not d!1083587) (not b!3692492) b_and!275845 (not b_next!98755) (not b_next!98749) (not d!1083511) (not b!3692521) (not b!3692525) (not d!1083581) (not b!3692562) (not b!3692720) (not d!1083555) (not b!3692708) (not d!1083519) (not b!3692693) (not b!3692526) (not b!3692722) (not d!1083521) (not b!3692488) (not b!3692745) (not b!3692730) b_and!275835 (not b!3692552) (not b!3692751) (not b_next!98747) (not b!3692688) (not b_next!98753) (not b!3692394) (not b!3692677) tp_is_empty!18433 (not d!1083517) (not b!3692457) (not b!3692700) b_and!275831 (not b!3692703) (not b!3692717) (not d!1083541) (not b!3692695) (not d!1083585) (not b!3692741) (not b!3692749) (not d!1083617) (not b!3692489) (not b_next!98745) (not b!3692197) (not b!3692716) (not b!3692742) (not b!3692685) (not b!3692623) (not b!3692405) (not d!1083601) (not b_lambda!109531) (not b!3692681) b_and!275855 (not b!3692743) (not bm!266984) (not d!1083543) (not b!3692391) (not bm!266972) (not b!3692390) (not b!3692392) (not b!3692650) (not b!3692718) (not b!3692487) b_and!275857 (not b!3692564) (not b!3692747) (not b!3692713) (not b!3692604) (not b!3692495) (not b!3692701) (not d!1083553) (not d!1083565) (not b!3692705) (not b!3692603) (not d!1083599) (not b!3692725) (not b!3692746) (not d!1083579) (not d!1083549) (not b!3692523) (not b_next!98763) (not b!3692649) (not b!3692455) (not b!3692520) (not b!3692704) (not d!1083545) (not d!1083591) (not b!3692393) (not b_next!98751) (not b!3692554) (not b!3692699) (not b!3692561) b_and!275847 (not b!3692500) (not tb!213893) (not d!1083619) (not b!3692728) (not b!3692694) (not b!3692721) (not b!3692522) (not b!3692683) (not b_lambda!109527) (not b!3692750) (not b!3692527) (not b!3692395) (not b!3692602) b_and!275833 (not b!3692624) (not b!3692689) (not b_lambda!109535) (not b!3692389) (not b!3692397) (not b!3692684) (not d!1083509) (not b!3692687) (not b!3692496))
(check-sat (not b_next!98761) b_and!275831 (not b_next!98745) b_and!275855 b_and!275857 b_and!275843 (not b_next!98763) (not b_next!98751) b_and!275847 b_and!275833 b_and!275845 (not b_next!98755) (not b_next!98749) (not b_next!98753) b_and!275835 (not b_next!98747))
