; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!403964 () Bool)

(assert start!403964)

(declare-fun b!4225143 () Bool)

(declare-fun b_free!124363 () Bool)

(declare-fun b_next!125067 () Bool)

(assert (=> b!4225143 (= b_free!124363 (not b_next!125067))))

(declare-fun tp!1293313 () Bool)

(declare-fun b_and!333597 () Bool)

(assert (=> b!4225143 (= tp!1293313 b_and!333597)))

(declare-fun b_free!124365 () Bool)

(declare-fun b_next!125069 () Bool)

(assert (=> b!4225143 (= b_free!124365 (not b_next!125069))))

(declare-fun tp!1293318 () Bool)

(declare-fun b_and!333599 () Bool)

(assert (=> b!4225143 (= tp!1293318 b_and!333599)))

(declare-fun b!4225148 () Bool)

(declare-fun b_free!124367 () Bool)

(declare-fun b_next!125071 () Bool)

(assert (=> b!4225148 (= b_free!124367 (not b_next!125071))))

(declare-fun tp!1293316 () Bool)

(declare-fun b_and!333601 () Bool)

(assert (=> b!4225148 (= tp!1293316 b_and!333601)))

(declare-fun b_free!124369 () Bool)

(declare-fun b_next!125073 () Bool)

(assert (=> b!4225148 (= b_free!124369 (not b_next!125073))))

(declare-fun tp!1293319 () Bool)

(declare-fun b_and!333603 () Bool)

(assert (=> b!4225148 (= tp!1293319 b_and!333603)))

(declare-fun b!4225141 () Bool)

(declare-fun res!1737159 () Bool)

(declare-fun e!2623213 () Bool)

(assert (=> b!4225141 (=> res!1737159 e!2623213)))

(declare-datatypes ((LexerInterface!7412 0))(
  ( (LexerInterfaceExt!7409 (__x!28317 Int)) (Lexer!7410) )
))
(declare-fun thiss!26728 () LexerInterface!7412)

(declare-datatypes ((List!46654 0))(
  ( (Nil!46530) (Cons!46530 (h!51950 (_ BitVec 16)) (t!349271 List!46654)) )
))
(declare-datatypes ((TokenValue!8047 0))(
  ( (FloatLiteralValue!16094 (text!56774 List!46654)) (TokenValueExt!8046 (__x!28318 Int)) (Broken!40235 (value!243287 List!46654)) (Object!8170) (End!8047) (Def!8047) (Underscore!8047) (Match!8047) (Else!8047) (Error!8047) (Case!8047) (If!8047) (Extends!8047) (Abstract!8047) (Class!8047) (Val!8047) (DelimiterValue!16094 (del!8107 List!46654)) (KeywordValue!8053 (value!243288 List!46654)) (CommentValue!16094 (value!243289 List!46654)) (WhitespaceValue!16094 (value!243290 List!46654)) (IndentationValue!8047 (value!243291 List!46654)) (String!54106) (Int32!8047) (Broken!40236 (value!243292 List!46654)) (Boolean!8048) (Unit!65689) (OperatorValue!8050 (op!8107 List!46654)) (IdentifierValue!16094 (value!243293 List!46654)) (IdentifierValue!16095 (value!243294 List!46654)) (WhitespaceValue!16095 (value!243295 List!46654)) (True!16094) (False!16094) (Broken!40237 (value!243296 List!46654)) (Broken!40238 (value!243297 List!46654)) (True!16095) (RightBrace!8047) (RightBracket!8047) (Colon!8047) (Null!8047) (Comma!8047) (LeftBracket!8047) (False!16095) (LeftBrace!8047) (ImaginaryLiteralValue!8047 (text!56775 List!46654)) (StringLiteralValue!24141 (value!243298 List!46654)) (EOFValue!8047 (value!243299 List!46654)) (IdentValue!8047 (value!243300 List!46654)) (DelimiterValue!16095 (value!243301 List!46654)) (DedentValue!8047 (value!243302 List!46654)) (NewLineValue!8047 (value!243303 List!46654)) (IntegerValue!24141 (value!243304 (_ BitVec 32)) (text!56776 List!46654)) (IntegerValue!24142 (value!243305 Int) (text!56777 List!46654)) (Times!8047) (Or!8047) (Equal!8047) (Minus!8047) (Broken!40239 (value!243306 List!46654)) (And!8047) (Div!8047) (LessEqual!8047) (Mod!8047) (Concat!20769) (Not!8047) (Plus!8047) (SpaceValue!8047 (value!243307 List!46654)) (IntegerValue!24143 (value!243308 Int) (text!56778 List!46654)) (StringLiteralValue!24142 (text!56779 List!46654)) (FloatLiteralValue!16095 (text!56780 List!46654)) (BytesLiteralValue!8047 (value!243309 List!46654)) (CommentValue!16095 (value!243310 List!46654)) (StringLiteralValue!24143 (value!243311 List!46654)) (ErrorTokenValue!8047 (msg!8108 List!46654)) )
))
(declare-datatypes ((C!25638 0))(
  ( (C!25639 (val!14981 Int)) )
))
(declare-datatypes ((List!46655 0))(
  ( (Nil!46531) (Cons!46531 (h!51951 C!25638) (t!349272 List!46655)) )
))
(declare-datatypes ((IArray!28061 0))(
  ( (IArray!28062 (innerList!14088 List!46655)) )
))
(declare-datatypes ((Conc!14028 0))(
  ( (Node!14028 (left!34596 Conc!14028) (right!34926 Conc!14028) (csize!28286 Int) (cheight!14239 Int)) (Leaf!21681 (xs!17334 IArray!28061) (csize!28287 Int)) (Empty!14028) )
))
(declare-datatypes ((BalanceConc!27650 0))(
  ( (BalanceConc!27651 (c!718597 Conc!14028)) )
))
(declare-datatypes ((TokenValueInjection!15522 0))(
  ( (TokenValueInjection!15523 (toValue!10545 Int) (toChars!10404 Int)) )
))
(declare-datatypes ((String!54107 0))(
  ( (String!54108 (value!243312 String)) )
))
(declare-datatypes ((Regex!12722 0))(
  ( (ElementMatch!12722 (c!718598 C!25638)) (Concat!20770 (regOne!25956 Regex!12722) (regTwo!25956 Regex!12722)) (EmptyExpr!12722) (Star!12722 (reg!13051 Regex!12722)) (EmptyLang!12722) (Union!12722 (regOne!25957 Regex!12722) (regTwo!25957 Regex!12722)) )
))
(declare-datatypes ((Rule!15434 0))(
  ( (Rule!15435 (regex!7817 Regex!12722) (tag!8681 String!54107) (isSeparator!7817 Bool) (transformation!7817 TokenValueInjection!15522)) )
))
(declare-datatypes ((List!46656 0))(
  ( (Nil!46532) (Cons!46532 (h!51952 Rule!15434) (t!349273 List!46656)) )
))
(declare-fun rules!4013 () List!46656)

(declare-fun rulesValidInductive!2921 (LexerInterface!7412 List!46656) Bool)

(assert (=> b!4225141 (= res!1737159 (not (rulesValidInductive!2921 thiss!26728 (t!349273 rules!4013))))))

(declare-fun b!4225142 () Bool)

(declare-fun e!2623220 () Bool)

(assert (=> b!4225142 (= e!2623220 (not e!2623213))))

(declare-fun res!1737166 () Bool)

(assert (=> b!4225142 (=> res!1737166 e!2623213)))

(declare-fun r!4313 () Rule!15434)

(assert (=> b!4225142 (= res!1737166 (or (and (is-Cons!46532 rules!4013) (= r!4313 (h!51952 rules!4013))) (not (is-Cons!46532 rules!4013)) (= r!4313 (h!51952 rules!4013))))))

(declare-fun ruleValid!3525 (LexerInterface!7412 Rule!15434) Bool)

(assert (=> b!4225142 (ruleValid!3525 thiss!26728 r!4313)))

(declare-datatypes ((Unit!65690 0))(
  ( (Unit!65691) )
))
(declare-fun lt!1502865 () Unit!65690)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2437 (LexerInterface!7412 Rule!15434 List!46656) Unit!65690)

(assert (=> b!4225142 (= lt!1502865 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2437 thiss!26728 r!4313 rules!4013))))

(declare-fun res!1737165 () Bool)

(assert (=> start!403964 (=> (not res!1737165) (not e!2623220))))

(assert (=> start!403964 (= res!1737165 (is-Lexer!7410 thiss!26728))))

(assert (=> start!403964 e!2623220))

(assert (=> start!403964 true))

(declare-fun e!2623211 () Bool)

(assert (=> start!403964 e!2623211))

(declare-fun e!2623217 () Bool)

(assert (=> start!403964 e!2623217))

(declare-fun e!2623214 () Bool)

(assert (=> start!403964 e!2623214))

(declare-fun e!2623212 () Bool)

(assert (=> b!4225143 (= e!2623212 (and tp!1293313 tp!1293318))))

(declare-fun tp!1293315 () Bool)

(declare-fun e!2623215 () Bool)

(declare-fun b!4225144 () Bool)

(declare-fun inv!61199 (String!54107) Bool)

(declare-fun inv!61202 (TokenValueInjection!15522) Bool)

(assert (=> b!4225144 (= e!2623217 (and tp!1293315 (inv!61199 (tag!8681 r!4313)) (inv!61202 (transformation!7817 r!4313)) e!2623215))))

(declare-fun b!4225145 () Bool)

(declare-fun tp!1293317 () Bool)

(declare-fun e!2623219 () Bool)

(assert (=> b!4225145 (= e!2623219 (and tp!1293317 (inv!61199 (tag!8681 (h!51952 rules!4013))) (inv!61202 (transformation!7817 (h!51952 rules!4013))) e!2623212))))

(declare-fun b!4225146 () Bool)

(declare-fun contains!9640 (List!46656 Rule!15434) Bool)

(assert (=> b!4225146 (= e!2623213 (contains!9640 (t!349273 rules!4013) r!4313))))

(declare-fun b!4225147 () Bool)

(declare-fun res!1737161 () Bool)

(assert (=> b!4225147 (=> (not res!1737161) (not e!2623220))))

(declare-fun isEmpty!27574 (List!46656) Bool)

(assert (=> b!4225147 (= res!1737161 (not (isEmpty!27574 rules!4013)))))

(assert (=> b!4225148 (= e!2623215 (and tp!1293316 tp!1293319))))

(declare-fun b!4225149 () Bool)

(declare-fun res!1737164 () Bool)

(assert (=> b!4225149 (=> (not res!1737164) (not e!2623220))))

(declare-fun input!3561 () List!46655)

(declare-datatypes ((Token!14332 0))(
  ( (Token!14333 (value!243313 TokenValue!8047) (rule!10961 Rule!15434) (size!34154 Int) (originalCharacters!8197 List!46655)) )
))
(declare-datatypes ((tuple2!44236 0))(
  ( (tuple2!44237 (_1!25252 Token!14332) (_2!25252 List!46655)) )
))
(declare-datatypes ((Option!10003 0))(
  ( (None!10002) (Some!10002 (v!40908 tuple2!44236)) )
))
(declare-fun isEmpty!27575 (Option!10003) Bool)

(declare-fun maxPrefix!4450 (LexerInterface!7412 List!46656 List!46655) Option!10003)

(assert (=> b!4225149 (= res!1737164 (isEmpty!27575 (maxPrefix!4450 thiss!26728 rules!4013 input!3561)))))

(declare-fun b!4225150 () Bool)

(declare-fun res!1737160 () Bool)

(assert (=> b!4225150 (=> res!1737160 e!2623213)))

(assert (=> b!4225150 (= res!1737160 (isEmpty!27574 (t!349273 rules!4013)))))

(declare-fun b!4225151 () Bool)

(declare-fun res!1737162 () Bool)

(assert (=> b!4225151 (=> (not res!1737162) (not e!2623220))))

(assert (=> b!4225151 (= res!1737162 (rulesValidInductive!2921 thiss!26728 rules!4013))))

(declare-fun b!4225152 () Bool)

(declare-fun tp!1293314 () Bool)

(assert (=> b!4225152 (= e!2623211 (and e!2623219 tp!1293314))))

(declare-fun b!4225153 () Bool)

(declare-fun res!1737163 () Bool)

(assert (=> b!4225153 (=> (not res!1737163) (not e!2623220))))

(assert (=> b!4225153 (= res!1737163 (contains!9640 rules!4013 r!4313))))

(declare-fun b!4225154 () Bool)

(declare-fun tp_is_empty!22407 () Bool)

(declare-fun tp!1293320 () Bool)

(assert (=> b!4225154 (= e!2623214 (and tp_is_empty!22407 tp!1293320))))

(assert (= (and start!403964 res!1737165) b!4225147))

(assert (= (and b!4225147 res!1737161) b!4225151))

(assert (= (and b!4225151 res!1737162) b!4225153))

(assert (= (and b!4225153 res!1737163) b!4225149))

(assert (= (and b!4225149 res!1737164) b!4225142))

(assert (= (and b!4225142 (not res!1737166)) b!4225150))

(assert (= (and b!4225150 (not res!1737160)) b!4225141))

(assert (= (and b!4225141 (not res!1737159)) b!4225146))

(assert (= b!4225145 b!4225143))

(assert (= b!4225152 b!4225145))

(assert (= (and start!403964 (is-Cons!46532 rules!4013)) b!4225152))

(assert (= b!4225144 b!4225148))

(assert (= start!403964 b!4225144))

(assert (= (and start!403964 (is-Cons!46531 input!3561)) b!4225154))

(declare-fun m!4813271 () Bool)

(assert (=> b!4225149 m!4813271))

(assert (=> b!4225149 m!4813271))

(declare-fun m!4813273 () Bool)

(assert (=> b!4225149 m!4813273))

(declare-fun m!4813275 () Bool)

(assert (=> b!4225147 m!4813275))

(declare-fun m!4813277 () Bool)

(assert (=> b!4225144 m!4813277))

(declare-fun m!4813279 () Bool)

(assert (=> b!4225144 m!4813279))

(declare-fun m!4813281 () Bool)

(assert (=> b!4225145 m!4813281))

(declare-fun m!4813283 () Bool)

(assert (=> b!4225145 m!4813283))

(declare-fun m!4813285 () Bool)

(assert (=> b!4225141 m!4813285))

(declare-fun m!4813287 () Bool)

(assert (=> b!4225146 m!4813287))

(declare-fun m!4813289 () Bool)

(assert (=> b!4225142 m!4813289))

(declare-fun m!4813291 () Bool)

(assert (=> b!4225142 m!4813291))

(declare-fun m!4813293 () Bool)

(assert (=> b!4225153 m!4813293))

(declare-fun m!4813295 () Bool)

(assert (=> b!4225151 m!4813295))

(declare-fun m!4813297 () Bool)

(assert (=> b!4225150 m!4813297))

(push 1)

(assert (not b!4225141))

(assert (not b_next!125069))

(assert b_and!333597)

(assert (not b_next!125073))

(assert (not b!4225144))

(assert b_and!333603)

(assert b_and!333599)

(assert (not b!4225151))

(assert tp_is_empty!22407)

(assert (not b!4225145))

(assert (not b!4225147))

(assert (not b!4225142))

(assert (not b_next!125067))

(assert (not b!4225146))

(assert (not b_next!125071))

(assert (not b!4225152))

(assert (not b!4225153))

(assert (not b!4225149))

(assert b_and!333601)

(assert (not b!4225154))

(assert (not b!4225150))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!125069))

(assert b_and!333597)

(assert (not b_next!125073))

(assert (not b_next!125067))

(assert b_and!333603)

(assert b_and!333599)

(assert (not b_next!125071))

(assert b_and!333601)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1244099 () Bool)

(assert (=> d!1244099 (= (isEmpty!27574 (t!349273 rules!4013)) (is-Nil!46532 (t!349273 rules!4013)))))

(assert (=> b!4225150 d!1244099))

(declare-fun d!1244103 () Bool)

(assert (=> d!1244103 (= (inv!61199 (tag!8681 (h!51952 rules!4013))) (= (mod (str.len (value!243312 (tag!8681 (h!51952 rules!4013)))) 2) 0))))

(assert (=> b!4225145 d!1244103))

(declare-fun d!1244105 () Bool)

(declare-fun res!1737200 () Bool)

(declare-fun e!2623253 () Bool)

(assert (=> d!1244105 (=> (not res!1737200) (not e!2623253))))

(declare-fun semiInverseModEq!3400 (Int Int) Bool)

(assert (=> d!1244105 (= res!1737200 (semiInverseModEq!3400 (toChars!10404 (transformation!7817 (h!51952 rules!4013))) (toValue!10545 (transformation!7817 (h!51952 rules!4013)))))))

(assert (=> d!1244105 (= (inv!61202 (transformation!7817 (h!51952 rules!4013))) e!2623253)))

(declare-fun b!4225199 () Bool)

(declare-fun equivClasses!3299 (Int Int) Bool)

(assert (=> b!4225199 (= e!2623253 (equivClasses!3299 (toChars!10404 (transformation!7817 (h!51952 rules!4013))) (toValue!10545 (transformation!7817 (h!51952 rules!4013)))))))

(assert (= (and d!1244105 res!1737200) b!4225199))

(declare-fun m!4813327 () Bool)

(assert (=> d!1244105 m!4813327))

(declare-fun m!4813329 () Bool)

(assert (=> b!4225199 m!4813329))

(assert (=> b!4225145 d!1244105))

(declare-fun d!1244107 () Bool)

(assert (=> d!1244107 (= (inv!61199 (tag!8681 r!4313)) (= (mod (str.len (value!243312 (tag!8681 r!4313))) 2) 0))))

(assert (=> b!4225144 d!1244107))

(declare-fun d!1244109 () Bool)

(declare-fun res!1737201 () Bool)

(declare-fun e!2623254 () Bool)

(assert (=> d!1244109 (=> (not res!1737201) (not e!2623254))))

(assert (=> d!1244109 (= res!1737201 (semiInverseModEq!3400 (toChars!10404 (transformation!7817 r!4313)) (toValue!10545 (transformation!7817 r!4313))))))

(assert (=> d!1244109 (= (inv!61202 (transformation!7817 r!4313)) e!2623254)))

(declare-fun b!4225200 () Bool)

(assert (=> b!4225200 (= e!2623254 (equivClasses!3299 (toChars!10404 (transformation!7817 r!4313)) (toValue!10545 (transformation!7817 r!4313))))))

(assert (= (and d!1244109 res!1737201) b!4225200))

(declare-fun m!4813331 () Bool)

(assert (=> d!1244109 m!4813331))

(declare-fun m!4813333 () Bool)

(assert (=> b!4225200 m!4813333))

(assert (=> b!4225144 d!1244109))

(declare-fun d!1244111 () Bool)

(assert (=> d!1244111 (= (isEmpty!27575 (maxPrefix!4450 thiss!26728 rules!4013 input!3561)) (not (is-Some!10002 (maxPrefix!4450 thiss!26728 rules!4013 input!3561))))))

(assert (=> b!4225149 d!1244111))

(declare-fun b!4225237 () Bool)

(declare-fun res!1737230 () Bool)

(declare-fun e!2623269 () Bool)

(assert (=> b!4225237 (=> (not res!1737230) (not e!2623269))))

(declare-fun lt!1502892 () Option!10003)

(declare-fun ++!11881 (List!46655 List!46655) List!46655)

(declare-fun list!16831 (BalanceConc!27650) List!46655)

(declare-fun charsOf!5230 (Token!14332) BalanceConc!27650)

(declare-fun get!15144 (Option!10003) tuple2!44236)

(assert (=> b!4225237 (= res!1737230 (= (++!11881 (list!16831 (charsOf!5230 (_1!25252 (get!15144 lt!1502892)))) (_2!25252 (get!15144 lt!1502892))) input!3561))))

(declare-fun b!4225238 () Bool)

(declare-fun res!1737232 () Bool)

(assert (=> b!4225238 (=> (not res!1737232) (not e!2623269))))

(assert (=> b!4225238 (= res!1737232 (= (list!16831 (charsOf!5230 (_1!25252 (get!15144 lt!1502892)))) (originalCharacters!8197 (_1!25252 (get!15144 lt!1502892)))))))

(declare-fun b!4225239 () Bool)

(declare-fun res!1737233 () Bool)

(assert (=> b!4225239 (=> (not res!1737233) (not e!2623269))))

(declare-fun matchR!6399 (Regex!12722 List!46655) Bool)

(assert (=> b!4225239 (= res!1737233 (matchR!6399 (regex!7817 (rule!10961 (_1!25252 (get!15144 lt!1502892)))) (list!16831 (charsOf!5230 (_1!25252 (get!15144 lt!1502892))))))))

(declare-fun b!4225240 () Bool)

(declare-fun res!1737231 () Bool)

(assert (=> b!4225240 (=> (not res!1737231) (not e!2623269))))

(declare-fun size!34156 (List!46655) Int)

(assert (=> b!4225240 (= res!1737231 (< (size!34156 (_2!25252 (get!15144 lt!1502892))) (size!34156 input!3561)))))

(declare-fun b!4225241 () Bool)

(declare-fun res!1737234 () Bool)

(assert (=> b!4225241 (=> (not res!1737234) (not e!2623269))))

(declare-fun apply!10720 (TokenValueInjection!15522 BalanceConc!27650) TokenValue!8047)

(declare-fun seqFromList!5780 (List!46655) BalanceConc!27650)

(assert (=> b!4225241 (= res!1737234 (= (value!243313 (_1!25252 (get!15144 lt!1502892))) (apply!10720 (transformation!7817 (rule!10961 (_1!25252 (get!15144 lt!1502892)))) (seqFromList!5780 (originalCharacters!8197 (_1!25252 (get!15144 lt!1502892)))))))))

(declare-fun b!4225242 () Bool)

(declare-fun e!2623267 () Option!10003)

(declare-fun lt!1502893 () Option!10003)

(declare-fun lt!1502889 () Option!10003)

(assert (=> b!4225242 (= e!2623267 (ite (and (is-None!10002 lt!1502893) (is-None!10002 lt!1502889)) None!10002 (ite (is-None!10002 lt!1502889) lt!1502893 (ite (is-None!10002 lt!1502893) lt!1502889 (ite (>= (size!34154 (_1!25252 (v!40908 lt!1502893))) (size!34154 (_1!25252 (v!40908 lt!1502889)))) lt!1502893 lt!1502889)))))))

(declare-fun call!293227 () Option!10003)

(assert (=> b!4225242 (= lt!1502893 call!293227)))

(assert (=> b!4225242 (= lt!1502889 (maxPrefix!4450 thiss!26728 (t!349273 rules!4013) input!3561))))

(declare-fun b!4225243 () Bool)

(assert (=> b!4225243 (= e!2623267 call!293227)))

(declare-fun bm!293222 () Bool)

(declare-fun maxPrefixOneRule!3399 (LexerInterface!7412 Rule!15434 List!46655) Option!10003)

(assert (=> bm!293222 (= call!293227 (maxPrefixOneRule!3399 thiss!26728 (h!51952 rules!4013) input!3561))))

(declare-fun b!4225245 () Bool)

(assert (=> b!4225245 (= e!2623269 (contains!9640 rules!4013 (rule!10961 (_1!25252 (get!15144 lt!1502892)))))))

(declare-fun d!1244113 () Bool)

(declare-fun e!2623268 () Bool)

(assert (=> d!1244113 e!2623268))

(declare-fun res!1737236 () Bool)

(assert (=> d!1244113 (=> res!1737236 e!2623268)))

(assert (=> d!1244113 (= res!1737236 (isEmpty!27575 lt!1502892))))

(assert (=> d!1244113 (= lt!1502892 e!2623267)))

(declare-fun c!718606 () Bool)

(assert (=> d!1244113 (= c!718606 (and (is-Cons!46532 rules!4013) (is-Nil!46532 (t!349273 rules!4013))))))

(declare-fun lt!1502890 () Unit!65690)

(declare-fun lt!1502891 () Unit!65690)

(assert (=> d!1244113 (= lt!1502890 lt!1502891)))

(declare-fun isPrefix!4666 (List!46655 List!46655) Bool)

(assert (=> d!1244113 (isPrefix!4666 input!3561 input!3561)))

(declare-fun lemmaIsPrefixRefl!3083 (List!46655 List!46655) Unit!65690)

(assert (=> d!1244113 (= lt!1502891 (lemmaIsPrefixRefl!3083 input!3561 input!3561))))

(assert (=> d!1244113 (rulesValidInductive!2921 thiss!26728 rules!4013)))

(assert (=> d!1244113 (= (maxPrefix!4450 thiss!26728 rules!4013 input!3561) lt!1502892)))

(declare-fun b!4225244 () Bool)

(assert (=> b!4225244 (= e!2623268 e!2623269)))

(declare-fun res!1737235 () Bool)

(assert (=> b!4225244 (=> (not res!1737235) (not e!2623269))))

(declare-fun isDefined!7421 (Option!10003) Bool)

(assert (=> b!4225244 (= res!1737235 (isDefined!7421 lt!1502892))))

(assert (= (and d!1244113 c!718606) b!4225243))

(assert (= (and d!1244113 (not c!718606)) b!4225242))

(assert (= (or b!4225243 b!4225242) bm!293222))

(assert (= (and d!1244113 (not res!1737236)) b!4225244))

(assert (= (and b!4225244 res!1737235) b!4225238))

(assert (= (and b!4225238 res!1737232) b!4225240))

(assert (= (and b!4225240 res!1737231) b!4225237))

(assert (= (and b!4225237 res!1737230) b!4225241))

(assert (= (and b!4225241 res!1737234) b!4225239))

(assert (= (and b!4225239 res!1737233) b!4225245))

(declare-fun m!4813335 () Bool)

(assert (=> b!4225244 m!4813335))

(declare-fun m!4813337 () Bool)

(assert (=> b!4225242 m!4813337))

(declare-fun m!4813339 () Bool)

(assert (=> b!4225237 m!4813339))

(declare-fun m!4813341 () Bool)

(assert (=> b!4225237 m!4813341))

(assert (=> b!4225237 m!4813341))

(declare-fun m!4813343 () Bool)

(assert (=> b!4225237 m!4813343))

(assert (=> b!4225237 m!4813343))

(declare-fun m!4813345 () Bool)

(assert (=> b!4225237 m!4813345))

(declare-fun m!4813347 () Bool)

(assert (=> d!1244113 m!4813347))

(declare-fun m!4813349 () Bool)

(assert (=> d!1244113 m!4813349))

(declare-fun m!4813351 () Bool)

(assert (=> d!1244113 m!4813351))

(assert (=> d!1244113 m!4813295))

(declare-fun m!4813353 () Bool)

(assert (=> bm!293222 m!4813353))

(assert (=> b!4225241 m!4813339))

(declare-fun m!4813355 () Bool)

(assert (=> b!4225241 m!4813355))

(assert (=> b!4225241 m!4813355))

(declare-fun m!4813357 () Bool)

(assert (=> b!4225241 m!4813357))

(assert (=> b!4225239 m!4813339))

(assert (=> b!4225239 m!4813341))

(assert (=> b!4225239 m!4813341))

(assert (=> b!4225239 m!4813343))

(assert (=> b!4225239 m!4813343))

(declare-fun m!4813359 () Bool)

(assert (=> b!4225239 m!4813359))

(assert (=> b!4225240 m!4813339))

(declare-fun m!4813361 () Bool)

(assert (=> b!4225240 m!4813361))

(declare-fun m!4813363 () Bool)

(assert (=> b!4225240 m!4813363))

(assert (=> b!4225245 m!4813339))

(declare-fun m!4813365 () Bool)

(assert (=> b!4225245 m!4813365))

(assert (=> b!4225238 m!4813339))

(assert (=> b!4225238 m!4813341))

(assert (=> b!4225238 m!4813341))

(assert (=> b!4225238 m!4813343))

(assert (=> b!4225149 d!1244113))

(declare-fun d!1244115 () Bool)

(declare-fun res!1737248 () Bool)

(declare-fun e!2623275 () Bool)

(assert (=> d!1244115 (=> (not res!1737248) (not e!2623275))))

(declare-fun validRegex!5774 (Regex!12722) Bool)

(assert (=> d!1244115 (= res!1737248 (validRegex!5774 (regex!7817 r!4313)))))

(assert (=> d!1244115 (= (ruleValid!3525 thiss!26728 r!4313) e!2623275)))

(declare-fun b!4225259 () Bool)

(declare-fun res!1737249 () Bool)

(assert (=> b!4225259 (=> (not res!1737249) (not e!2623275))))

(declare-fun nullable!4487 (Regex!12722) Bool)

(assert (=> b!4225259 (= res!1737249 (not (nullable!4487 (regex!7817 r!4313))))))

(declare-fun b!4225260 () Bool)

(assert (=> b!4225260 (= e!2623275 (not (= (tag!8681 r!4313) (String!54108 ""))))))

(assert (= (and d!1244115 res!1737248) b!4225259))

(assert (= (and b!4225259 res!1737249) b!4225260))

(declare-fun m!4813399 () Bool)

(assert (=> d!1244115 m!4813399))

(declare-fun m!4813401 () Bool)

(assert (=> b!4225259 m!4813401))

(assert (=> b!4225142 d!1244115))

(declare-fun d!1244119 () Bool)

(assert (=> d!1244119 (ruleValid!3525 thiss!26728 r!4313)))

(declare-fun lt!1502903 () Unit!65690)

(declare-fun choose!25883 (LexerInterface!7412 Rule!15434 List!46656) Unit!65690)

(assert (=> d!1244119 (= lt!1502903 (choose!25883 thiss!26728 r!4313 rules!4013))))

(assert (=> d!1244119 (contains!9640 rules!4013 r!4313)))

(assert (=> d!1244119 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2437 thiss!26728 r!4313 rules!4013) lt!1502903)))

(declare-fun bs!597820 () Bool)

(assert (= bs!597820 d!1244119))

(assert (=> bs!597820 m!4813289))

(declare-fun m!4813403 () Bool)

(assert (=> bs!597820 m!4813403))

(assert (=> bs!597820 m!4813293))

(assert (=> b!4225142 d!1244119))

(declare-fun d!1244121 () Bool)

(declare-fun lt!1502907 () Bool)

(declare-fun content!7312 (List!46656) (Set Rule!15434))

(assert (=> d!1244121 (= lt!1502907 (set.member r!4313 (content!7312 rules!4013)))))

(declare-fun e!2623286 () Bool)

(assert (=> d!1244121 (= lt!1502907 e!2623286)))

(declare-fun res!1737261 () Bool)

(assert (=> d!1244121 (=> (not res!1737261) (not e!2623286))))

(assert (=> d!1244121 (= res!1737261 (is-Cons!46532 rules!4013))))

(assert (=> d!1244121 (= (contains!9640 rules!4013 r!4313) lt!1502907)))

(declare-fun b!4225271 () Bool)

(declare-fun e!2623287 () Bool)

(assert (=> b!4225271 (= e!2623286 e!2623287)))

(declare-fun res!1737260 () Bool)

(assert (=> b!4225271 (=> res!1737260 e!2623287)))

(assert (=> b!4225271 (= res!1737260 (= (h!51952 rules!4013) r!4313))))

(declare-fun b!4225272 () Bool)

(assert (=> b!4225272 (= e!2623287 (contains!9640 (t!349273 rules!4013) r!4313))))

(assert (= (and d!1244121 res!1737261) b!4225271))

(assert (= (and b!4225271 (not res!1737260)) b!4225272))

(declare-fun m!4813409 () Bool)

(assert (=> d!1244121 m!4813409))

(declare-fun m!4813411 () Bool)

(assert (=> d!1244121 m!4813411))

(assert (=> b!4225272 m!4813287))

(assert (=> b!4225153 d!1244121))

(declare-fun d!1244127 () Bool)

(assert (=> d!1244127 (= (isEmpty!27574 rules!4013) (is-Nil!46532 rules!4013))))

(assert (=> b!4225147 d!1244127))

(declare-fun d!1244129 () Bool)

(declare-fun lt!1502908 () Bool)

(assert (=> d!1244129 (= lt!1502908 (set.member r!4313 (content!7312 (t!349273 rules!4013))))))

(declare-fun e!2623288 () Bool)

(assert (=> d!1244129 (= lt!1502908 e!2623288)))

(declare-fun res!1737263 () Bool)

(assert (=> d!1244129 (=> (not res!1737263) (not e!2623288))))

(assert (=> d!1244129 (= res!1737263 (is-Cons!46532 (t!349273 rules!4013)))))

(assert (=> d!1244129 (= (contains!9640 (t!349273 rules!4013) r!4313) lt!1502908)))

(declare-fun b!4225273 () Bool)

(declare-fun e!2623289 () Bool)

(assert (=> b!4225273 (= e!2623288 e!2623289)))

(declare-fun res!1737262 () Bool)

(assert (=> b!4225273 (=> res!1737262 e!2623289)))

(assert (=> b!4225273 (= res!1737262 (= (h!51952 (t!349273 rules!4013)) r!4313))))

(declare-fun b!4225274 () Bool)

(assert (=> b!4225274 (= e!2623289 (contains!9640 (t!349273 (t!349273 rules!4013)) r!4313))))

(assert (= (and d!1244129 res!1737263) b!4225273))

(assert (= (and b!4225273 (not res!1737262)) b!4225274))

(declare-fun m!4813413 () Bool)

(assert (=> d!1244129 m!4813413))

(declare-fun m!4813415 () Bool)

(assert (=> d!1244129 m!4813415))

(declare-fun m!4813417 () Bool)

(assert (=> b!4225274 m!4813417))

(assert (=> b!4225146 d!1244129))

(declare-fun d!1244131 () Bool)

(assert (=> d!1244131 true))

(declare-fun lt!1502916 () Bool)

(declare-fun lambda!129888 () Int)

(declare-fun forall!8507 (List!46656 Int) Bool)

(assert (=> d!1244131 (= lt!1502916 (forall!8507 (t!349273 rules!4013) lambda!129888))))

(declare-fun e!2623306 () Bool)

(assert (=> d!1244131 (= lt!1502916 e!2623306)))

(declare-fun res!1737283 () Bool)

(assert (=> d!1244131 (=> res!1737283 e!2623306)))

(assert (=> d!1244131 (= res!1737283 (not (is-Cons!46532 (t!349273 rules!4013))))))

(assert (=> d!1244131 (= (rulesValidInductive!2921 thiss!26728 (t!349273 rules!4013)) lt!1502916)))

(declare-fun b!4225293 () Bool)

(declare-fun e!2623305 () Bool)

(assert (=> b!4225293 (= e!2623306 e!2623305)))

(declare-fun res!1737282 () Bool)

(assert (=> b!4225293 (=> (not res!1737282) (not e!2623305))))

(assert (=> b!4225293 (= res!1737282 (ruleValid!3525 thiss!26728 (h!51952 (t!349273 rules!4013))))))

(declare-fun b!4225294 () Bool)

(assert (=> b!4225294 (= e!2623305 (rulesValidInductive!2921 thiss!26728 (t!349273 (t!349273 rules!4013))))))

(assert (= (and d!1244131 (not res!1737283)) b!4225293))

(assert (= (and b!4225293 res!1737282) b!4225294))

(declare-fun m!4813433 () Bool)

(assert (=> d!1244131 m!4813433))

(declare-fun m!4813435 () Bool)

(assert (=> b!4225293 m!4813435))

(declare-fun m!4813437 () Bool)

(assert (=> b!4225294 m!4813437))

(assert (=> b!4225141 d!1244131))

(declare-fun bs!597822 () Bool)

(declare-fun d!1244145 () Bool)

(assert (= bs!597822 (and d!1244145 d!1244131)))

(declare-fun lambda!129889 () Int)

(assert (=> bs!597822 (= lambda!129889 lambda!129888)))

(assert (=> d!1244145 true))

(declare-fun lt!1502917 () Bool)

(assert (=> d!1244145 (= lt!1502917 (forall!8507 rules!4013 lambda!129889))))

(declare-fun e!2623308 () Bool)

(assert (=> d!1244145 (= lt!1502917 e!2623308)))

(declare-fun res!1737285 () Bool)

(assert (=> d!1244145 (=> res!1737285 e!2623308)))

(assert (=> d!1244145 (= res!1737285 (not (is-Cons!46532 rules!4013)))))

(assert (=> d!1244145 (= (rulesValidInductive!2921 thiss!26728 rules!4013) lt!1502917)))

(declare-fun b!4225297 () Bool)

(declare-fun e!2623307 () Bool)

(assert (=> b!4225297 (= e!2623308 e!2623307)))

(declare-fun res!1737284 () Bool)

(assert (=> b!4225297 (=> (not res!1737284) (not e!2623307))))

(assert (=> b!4225297 (= res!1737284 (ruleValid!3525 thiss!26728 (h!51952 rules!4013)))))

(declare-fun b!4225298 () Bool)

(assert (=> b!4225298 (= e!2623307 (rulesValidInductive!2921 thiss!26728 (t!349273 rules!4013)))))

(assert (= (and d!1244145 (not res!1737285)) b!4225297))

(assert (= (and b!4225297 res!1737284) b!4225298))

(declare-fun m!4813439 () Bool)

(assert (=> d!1244145 m!4813439))

(declare-fun m!4813441 () Bool)

(assert (=> b!4225297 m!4813441))

(assert (=> b!4225298 m!4813285))

(assert (=> b!4225151 d!1244145))

(declare-fun b!4225310 () Bool)

(declare-fun e!2623311 () Bool)

(declare-fun tp!1293359 () Bool)

(declare-fun tp!1293358 () Bool)

(assert (=> b!4225310 (= e!2623311 (and tp!1293359 tp!1293358))))

(declare-fun b!4225312 () Bool)

(declare-fun tp!1293356 () Bool)

(declare-fun tp!1293357 () Bool)

(assert (=> b!4225312 (= e!2623311 (and tp!1293356 tp!1293357))))

(declare-fun b!4225309 () Bool)

(assert (=> b!4225309 (= e!2623311 tp_is_empty!22407)))

(assert (=> b!4225145 (= tp!1293317 e!2623311)))

(declare-fun b!4225311 () Bool)

(declare-fun tp!1293355 () Bool)

(assert (=> b!4225311 (= e!2623311 tp!1293355)))

(assert (= (and b!4225145 (is-ElementMatch!12722 (regex!7817 (h!51952 rules!4013)))) b!4225309))

(assert (= (and b!4225145 (is-Concat!20770 (regex!7817 (h!51952 rules!4013)))) b!4225310))

(assert (= (and b!4225145 (is-Star!12722 (regex!7817 (h!51952 rules!4013)))) b!4225311))

(assert (= (and b!4225145 (is-Union!12722 (regex!7817 (h!51952 rules!4013)))) b!4225312))

(declare-fun b!4225314 () Bool)

(declare-fun e!2623312 () Bool)

(declare-fun tp!1293364 () Bool)

(declare-fun tp!1293363 () Bool)

(assert (=> b!4225314 (= e!2623312 (and tp!1293364 tp!1293363))))

(declare-fun b!4225316 () Bool)

(declare-fun tp!1293361 () Bool)

(declare-fun tp!1293362 () Bool)

(assert (=> b!4225316 (= e!2623312 (and tp!1293361 tp!1293362))))

(declare-fun b!4225313 () Bool)

(assert (=> b!4225313 (= e!2623312 tp_is_empty!22407)))

(assert (=> b!4225144 (= tp!1293315 e!2623312)))

(declare-fun b!4225315 () Bool)

(declare-fun tp!1293360 () Bool)

(assert (=> b!4225315 (= e!2623312 tp!1293360)))

(assert (= (and b!4225144 (is-ElementMatch!12722 (regex!7817 r!4313))) b!4225313))

(assert (= (and b!4225144 (is-Concat!20770 (regex!7817 r!4313))) b!4225314))

(assert (= (and b!4225144 (is-Star!12722 (regex!7817 r!4313))) b!4225315))

(assert (= (and b!4225144 (is-Union!12722 (regex!7817 r!4313))) b!4225316))

(declare-fun b!4225321 () Bool)

(declare-fun e!2623315 () Bool)

(declare-fun tp!1293367 () Bool)

(assert (=> b!4225321 (= e!2623315 (and tp_is_empty!22407 tp!1293367))))

(assert (=> b!4225154 (= tp!1293320 e!2623315)))

(assert (= (and b!4225154 (is-Cons!46531 (t!349272 input!3561))) b!4225321))

(declare-fun b!4225332 () Bool)

(declare-fun b_free!124379 () Bool)

(declare-fun b_next!125083 () Bool)

(assert (=> b!4225332 (= b_free!124379 (not b_next!125083))))

(declare-fun tp!1293379 () Bool)

(declare-fun b_and!333613 () Bool)

(assert (=> b!4225332 (= tp!1293379 b_and!333613)))

(declare-fun b_free!124381 () Bool)

(declare-fun b_next!125085 () Bool)

(assert (=> b!4225332 (= b_free!124381 (not b_next!125085))))

(declare-fun tp!1293377 () Bool)

(declare-fun b_and!333615 () Bool)

(assert (=> b!4225332 (= tp!1293377 b_and!333615)))

(declare-fun e!2623324 () Bool)

(assert (=> b!4225332 (= e!2623324 (and tp!1293379 tp!1293377))))

(declare-fun e!2623326 () Bool)

(declare-fun tp!1293376 () Bool)

(declare-fun b!4225331 () Bool)

(assert (=> b!4225331 (= e!2623326 (and tp!1293376 (inv!61199 (tag!8681 (h!51952 (t!349273 rules!4013)))) (inv!61202 (transformation!7817 (h!51952 (t!349273 rules!4013)))) e!2623324))))

(declare-fun b!4225330 () Bool)

(declare-fun e!2623325 () Bool)

(declare-fun tp!1293378 () Bool)

(assert (=> b!4225330 (= e!2623325 (and e!2623326 tp!1293378))))

(assert (=> b!4225152 (= tp!1293314 e!2623325)))

(assert (= b!4225331 b!4225332))

(assert (= b!4225330 b!4225331))

(assert (= (and b!4225152 (is-Cons!46532 (t!349273 rules!4013))) b!4225330))

(declare-fun m!4813443 () Bool)

(assert (=> b!4225331 m!4813443))

(declare-fun m!4813445 () Bool)

(assert (=> b!4225331 m!4813445))

(push 1)

(assert (not b!4225259))

(assert (not b!4225316))

(assert (not b_next!125085))

(assert b_and!333597)

(assert (not b!4225311))

(assert (not b!4225199))

(assert (not bm!293222))

(assert b_and!333603)

(assert (not d!1244129))

(assert (not b!4225244))

(assert b_and!333601)

(assert (not b!4225293))

(assert (not d!1244105))

(assert (not d!1244109))

(assert (not b!4225245))

(assert (not b!4225238))

(assert (not b_next!125069))

(assert b_and!333613)

(assert (not b!4225274))

(assert (not b_next!125073))

(assert (not b!4225310))

(assert (not b!4225272))

(assert (not b!4225321))

(assert (not b_next!125067))

(assert (not b!4225239))

(assert (not d!1244115))

(assert (not b!4225312))

(assert (not b!4225294))

(assert b_and!333599)

(assert (not b!4225331))

(assert b_and!333615)

(assert (not d!1244131))

(assert (not b_next!125071))

(assert (not b!4225297))

(assert (not b!4225242))

(assert (not d!1244121))

(assert (not b!4225315))

(assert (not b!4225298))

(assert (not b!4225200))

(assert (not d!1244113))

(assert (not d!1244119))

(assert tp_is_empty!22407)

(assert (not b_next!125083))

(assert (not b!4225330))

(assert (not b!4225240))

(assert (not b!4225237))

(assert (not b!4225241))

(assert (not b!4225314))

(assert (not d!1244145))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!125085))

(assert b_and!333597)

(assert (not b_next!125073))

(assert (not b_next!125067))

(assert b_and!333603)

(assert (not b_next!125071))

(assert (not b_next!125083))

(assert b_and!333601)

(assert (not b_next!125069))

(assert b_and!333613)

(assert b_and!333599)

(assert b_and!333615)

(check-sat)

(pop 1)

