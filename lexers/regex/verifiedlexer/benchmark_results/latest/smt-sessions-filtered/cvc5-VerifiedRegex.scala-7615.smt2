; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!402384 () Bool)

(assert start!402384)

(declare-fun b!4210253 () Bool)

(declare-fun b_free!123155 () Bool)

(declare-fun b_next!123859 () Bool)

(assert (=> b!4210253 (= b_free!123155 (not b_next!123859))))

(declare-fun tp!1287228 () Bool)

(declare-fun b_and!331269 () Bool)

(assert (=> b!4210253 (= tp!1287228 b_and!331269)))

(declare-fun b_free!123157 () Bool)

(declare-fun b_next!123861 () Bool)

(assert (=> b!4210253 (= b_free!123157 (not b_next!123861))))

(declare-fun tp!1287212 () Bool)

(declare-fun b_and!331271 () Bool)

(assert (=> b!4210253 (= tp!1287212 b_and!331271)))

(declare-fun b!4210227 () Bool)

(declare-fun b_free!123159 () Bool)

(declare-fun b_next!123863 () Bool)

(assert (=> b!4210227 (= b_free!123159 (not b_next!123863))))

(declare-fun tp!1287226 () Bool)

(declare-fun b_and!331273 () Bool)

(assert (=> b!4210227 (= tp!1287226 b_and!331273)))

(declare-fun b_free!123161 () Bool)

(declare-fun b_next!123865 () Bool)

(assert (=> b!4210227 (= b_free!123161 (not b_next!123865))))

(declare-fun tp!1287223 () Bool)

(declare-fun b_and!331275 () Bool)

(assert (=> b!4210227 (= tp!1287223 b_and!331275)))

(declare-fun b!4210244 () Bool)

(declare-fun b_free!123163 () Bool)

(declare-fun b_next!123867 () Bool)

(assert (=> b!4210244 (= b_free!123163 (not b_next!123867))))

(declare-fun tp!1287219 () Bool)

(declare-fun b_and!331277 () Bool)

(assert (=> b!4210244 (= tp!1287219 b_and!331277)))

(declare-fun b_free!123165 () Bool)

(declare-fun b_next!123869 () Bool)

(assert (=> b!4210244 (= b_free!123165 (not b_next!123869))))

(declare-fun tp!1287218 () Bool)

(declare-fun b_and!331279 () Bool)

(assert (=> b!4210244 (= tp!1287218 b_and!331279)))

(declare-fun b!4210251 () Bool)

(declare-fun b_free!123167 () Bool)

(declare-fun b_next!123871 () Bool)

(assert (=> b!4210251 (= b_free!123167 (not b_next!123871))))

(declare-fun tp!1287209 () Bool)

(declare-fun b_and!331281 () Bool)

(assert (=> b!4210251 (= tp!1287209 b_and!331281)))

(declare-fun b_free!123169 () Bool)

(declare-fun b_next!123873 () Bool)

(assert (=> b!4210251 (= b_free!123169 (not b_next!123873))))

(declare-fun tp!1287210 () Bool)

(declare-fun b_and!331283 () Bool)

(assert (=> b!4210251 (= tp!1287210 b_and!331283)))

(declare-fun b!4210225 () Bool)

(declare-fun e!2613542 () Bool)

(declare-fun e!2613543 () Bool)

(declare-fun tp!1287217 () Bool)

(assert (=> b!4210225 (= e!2613542 (and e!2613543 tp!1287217))))

(declare-fun b!4210226 () Bool)

(declare-fun res!1729380 () Bool)

(declare-fun e!2613558 () Bool)

(assert (=> b!4210226 (=> (not res!1729380) (not e!2613558))))

(declare-datatypes ((C!25490 0))(
  ( (C!25491 (val!14907 Int)) )
))
(declare-datatypes ((List!46402 0))(
  ( (Nil!46278) (Cons!46278 (h!51698 C!25490) (t!347961 List!46402)) )
))
(declare-fun pBis!121 () List!46402)

(declare-fun input!3517 () List!46402)

(declare-fun isPrefix!4602 (List!46402 List!46402) Bool)

(assert (=> b!4210226 (= res!1729380 (isPrefix!4602 pBis!121 input!3517))))

(declare-fun e!2613554 () Bool)

(assert (=> b!4210227 (= e!2613554 (and tp!1287226 tp!1287223))))

(declare-fun b!4210228 () Bool)

(declare-fun e!2613553 () Bool)

(declare-fun tp_is_empty!22263 () Bool)

(declare-fun tp!1287211 () Bool)

(assert (=> b!4210228 (= e!2613553 (and tp_is_empty!22263 tp!1287211))))

(declare-fun b!4210229 () Bool)

(declare-fun res!1729386 () Bool)

(declare-fun e!2613545 () Bool)

(assert (=> b!4210229 (=> res!1729386 e!2613545)))

(declare-datatypes ((List!46403 0))(
  ( (Nil!46279) (Cons!46279 (h!51699 (_ BitVec 16)) (t!347962 List!46403)) )
))
(declare-datatypes ((TokenValue!7973 0))(
  ( (FloatLiteralValue!15946 (text!56256 List!46403)) (TokenValueExt!7972 (__x!28169 Int)) (Broken!39865 (value!241180 List!46403)) (Object!8096) (End!7973) (Def!7973) (Underscore!7973) (Match!7973) (Else!7973) (Error!7973) (Case!7973) (If!7973) (Extends!7973) (Abstract!7973) (Class!7973) (Val!7973) (DelimiterValue!15946 (del!8033 List!46403)) (KeywordValue!7979 (value!241181 List!46403)) (CommentValue!15946 (value!241182 List!46403)) (WhitespaceValue!15946 (value!241183 List!46403)) (IndentationValue!7973 (value!241184 List!46403)) (String!53736) (Int32!7973) (Broken!39866 (value!241185 List!46403)) (Boolean!7974) (Unit!65401) (OperatorValue!7976 (op!8033 List!46403)) (IdentifierValue!15946 (value!241186 List!46403)) (IdentifierValue!15947 (value!241187 List!46403)) (WhitespaceValue!15947 (value!241188 List!46403)) (True!15946) (False!15946) (Broken!39867 (value!241189 List!46403)) (Broken!39868 (value!241190 List!46403)) (True!15947) (RightBrace!7973) (RightBracket!7973) (Colon!7973) (Null!7973) (Comma!7973) (LeftBracket!7973) (False!15947) (LeftBrace!7973) (ImaginaryLiteralValue!7973 (text!56257 List!46403)) (StringLiteralValue!23919 (value!241191 List!46403)) (EOFValue!7973 (value!241192 List!46403)) (IdentValue!7973 (value!241193 List!46403)) (DelimiterValue!15947 (value!241194 List!46403)) (DedentValue!7973 (value!241195 List!46403)) (NewLineValue!7973 (value!241196 List!46403)) (IntegerValue!23919 (value!241197 (_ BitVec 32)) (text!56258 List!46403)) (IntegerValue!23920 (value!241198 Int) (text!56259 List!46403)) (Times!7973) (Or!7973) (Equal!7973) (Minus!7973) (Broken!39869 (value!241199 List!46403)) (And!7973) (Div!7973) (LessEqual!7973) (Mod!7973) (Concat!20621) (Not!7973) (Plus!7973) (SpaceValue!7973 (value!241200 List!46403)) (IntegerValue!23921 (value!241201 Int) (text!56260 List!46403)) (StringLiteralValue!23920 (text!56261 List!46403)) (FloatLiteralValue!15947 (text!56262 List!46403)) (BytesLiteralValue!7973 (value!241202 List!46403)) (CommentValue!15947 (value!241203 List!46403)) (StringLiteralValue!23921 (value!241204 List!46403)) (ErrorTokenValue!7973 (msg!8034 List!46403)) )
))
(declare-datatypes ((IArray!27913 0))(
  ( (IArray!27914 (innerList!14014 List!46402)) )
))
(declare-datatypes ((Regex!12648 0))(
  ( (ElementMatch!12648 (c!717345 C!25490)) (Concat!20622 (regOne!25808 Regex!12648) (regTwo!25808 Regex!12648)) (EmptyExpr!12648) (Star!12648 (reg!12977 Regex!12648)) (EmptyLang!12648) (Union!12648 (regOne!25809 Regex!12648) (regTwo!25809 Regex!12648)) )
))
(declare-datatypes ((Conc!13954 0))(
  ( (Node!13954 (left!34457 Conc!13954) (right!34787 Conc!13954) (csize!28138 Int) (cheight!14165 Int)) (Leaf!21570 (xs!17260 IArray!27913) (csize!28139 Int)) (Empty!13954) )
))
(declare-datatypes ((BalanceConc!27502 0))(
  ( (BalanceConc!27503 (c!717346 Conc!13954)) )
))
(declare-datatypes ((String!53737 0))(
  ( (String!53738 (value!241205 String)) )
))
(declare-datatypes ((TokenValueInjection!15374 0))(
  ( (TokenValueInjection!15375 (toValue!10463 Int) (toChars!10322 Int)) )
))
(declare-datatypes ((Rule!15286 0))(
  ( (Rule!15287 (regex!7743 Regex!12648) (tag!8607 String!53737) (isSeparator!7743 Bool) (transformation!7743 TokenValueInjection!15374)) )
))
(declare-datatypes ((Token!14188 0))(
  ( (Token!14189 (value!241206 TokenValue!7973) (rule!10855 Rule!15286) (size!33998 Int) (originalCharacters!8125 List!46402)) )
))
(declare-fun tBis!41 () Token!14188)

(declare-fun list!16734 (BalanceConc!27502) List!46402)

(declare-fun charsOf!5166 (Token!14188) BalanceConc!27502)

(assert (=> b!4210229 (= res!1729386 (not (= (list!16734 (charsOf!5166 tBis!41)) pBis!121)))))

(declare-fun b!4210230 () Bool)

(declare-fun res!1729389 () Bool)

(assert (=> b!4210230 (=> (not res!1729389) (not e!2613558))))

(declare-datatypes ((LexerInterface!7338 0))(
  ( (LexerInterfaceExt!7335 (__x!28170 Int)) (Lexer!7336) )
))
(declare-fun thiss!26544 () LexerInterface!7338)

(declare-fun rBis!178 () Rule!15286)

(declare-fun ruleValid!3455 (LexerInterface!7338 Rule!15286) Bool)

(assert (=> b!4210230 (= res!1729389 (ruleValid!3455 thiss!26544 rBis!178))))

(declare-fun b!4210231 () Bool)

(declare-fun res!1729382 () Bool)

(assert (=> b!4210231 (=> (not res!1729382) (not e!2613558))))

(declare-datatypes ((List!46404 0))(
  ( (Nil!46280) (Cons!46280 (h!51700 Rule!15286) (t!347963 List!46404)) )
))
(declare-fun rules!3967 () List!46404)

(declare-fun isEmpty!27406 (List!46404) Bool)

(assert (=> b!4210231 (= res!1729382 (not (isEmpty!27406 rules!3967)))))

(declare-fun b!4210232 () Bool)

(declare-fun res!1729377 () Bool)

(assert (=> b!4210232 (=> res!1729377 e!2613545)))

(declare-fun suffixBis!41 () List!46402)

(declare-fun ++!11817 (List!46402 List!46402) List!46402)

(assert (=> b!4210232 (= res!1729377 (not (= (++!11817 pBis!121 suffixBis!41) input!3517)))))

(declare-fun b!4210233 () Bool)

(declare-fun res!1729378 () Bool)

(assert (=> b!4210233 (=> (not res!1729378) (not e!2613558))))

(declare-fun contains!9564 (List!46404 Rule!15286) Bool)

(assert (=> b!4210233 (= res!1729378 (contains!9564 rules!3967 rBis!178))))

(declare-fun b!4210234 () Bool)

(declare-fun e!2613540 () Bool)

(declare-fun tp!1287213 () Bool)

(assert (=> b!4210234 (= e!2613540 (and tp_is_empty!22263 tp!1287213))))

(declare-fun b!4210235 () Bool)

(declare-fun e!2613550 () Bool)

(declare-fun tp!1287225 () Bool)

(assert (=> b!4210235 (= e!2613550 (and tp_is_empty!22263 tp!1287225))))

(declare-fun tp!1287222 () Bool)

(declare-fun e!2613547 () Bool)

(declare-fun b!4210236 () Bool)

(declare-fun inv!60889 (String!53737) Bool)

(declare-fun inv!60892 (TokenValueInjection!15374) Bool)

(assert (=> b!4210236 (= e!2613547 (and tp!1287222 (inv!60889 (tag!8607 (rule!10855 tBis!41))) (inv!60892 (transformation!7743 (rule!10855 tBis!41))) e!2613554))))

(declare-fun b!4210237 () Bool)

(declare-fun res!1729385 () Bool)

(assert (=> b!4210237 (=> res!1729385 e!2613545)))

(assert (=> b!4210237 (= res!1729385 (or (and (is-Cons!46280 rules!3967) (is-Nil!46280 (t!347963 rules!3967))) (not (is-Cons!46280 rules!3967)) (not (= (h!51700 rules!3967) rBis!178))))))

(declare-fun b!4210238 () Bool)

(declare-fun res!1729376 () Bool)

(assert (=> b!4210238 (=> (not res!1729376) (not e!2613558))))

(declare-fun rulesInvariant!6549 (LexerInterface!7338 List!46404) Bool)

(assert (=> b!4210238 (= res!1729376 (rulesInvariant!6549 thiss!26544 rules!3967))))

(declare-fun b!4210239 () Bool)

(declare-fun res!1729379 () Bool)

(assert (=> b!4210239 (=> (not res!1729379) (not e!2613558))))

(declare-fun suffix!1557 () List!46402)

(declare-fun p!3001 () List!46402)

(assert (=> b!4210239 (= res!1729379 (= (++!11817 p!3001 suffix!1557) input!3517))))

(declare-fun b!4210240 () Bool)

(assert (=> b!4210240 (= e!2613545 true)))

(declare-fun lt!1498962 () Int)

(declare-fun size!33999 (List!46402) Int)

(assert (=> b!4210240 (= lt!1498962 (size!33999 p!3001))))

(declare-fun lt!1498963 () Int)

(assert (=> b!4210240 (= lt!1498963 (size!33999 pBis!121))))

(declare-fun b!4210241 () Bool)

(declare-fun res!1729381 () Bool)

(assert (=> b!4210241 (=> (not res!1729381) (not e!2613558))))

(assert (=> b!4210241 (= res!1729381 (isPrefix!4602 p!3001 input!3517))))

(declare-fun e!2613541 () Bool)

(declare-fun b!4210242 () Bool)

(declare-fun tp!1287214 () Bool)

(declare-fun e!2613560 () Bool)

(assert (=> b!4210242 (= e!2613541 (and tp!1287214 (inv!60889 (tag!8607 rBis!178)) (inv!60892 (transformation!7743 rBis!178)) e!2613560))))

(declare-fun e!2613552 () Bool)

(declare-fun b!4210243 () Bool)

(declare-fun t!8364 () Token!14188)

(declare-fun tp!1287224 () Bool)

(declare-fun e!2613539 () Bool)

(declare-fun inv!21 (TokenValue!7973) Bool)

(assert (=> b!4210243 (= e!2613552 (and (inv!21 (value!241206 t!8364)) e!2613539 tp!1287224))))

(assert (=> b!4210244 (= e!2613560 (and tp!1287219 tp!1287218))))

(declare-fun b!4210245 () Bool)

(declare-fun e!2613561 () Bool)

(declare-fun tp!1287220 () Bool)

(assert (=> b!4210245 (= e!2613561 (and tp_is_empty!22263 tp!1287220))))

(declare-fun b!4210246 () Bool)

(declare-fun res!1729387 () Bool)

(assert (=> b!4210246 (=> res!1729387 e!2613545)))

(assert (=> b!4210246 (= res!1729387 (not (= (rule!10855 tBis!41) rBis!178)))))

(declare-fun b!4210247 () Bool)

(assert (=> b!4210247 (= e!2613558 (not e!2613545))))

(declare-fun res!1729388 () Bool)

(assert (=> b!4210247 (=> res!1729388 e!2613545)))

(declare-datatypes ((tuple2!44024 0))(
  ( (tuple2!44025 (_1!25146 Token!14188) (_2!25146 List!46402)) )
))
(declare-datatypes ((Option!9931 0))(
  ( (None!9930) (Some!9930 (v!40798 tuple2!44024)) )
))
(declare-fun maxPrefixOneRule!3333 (LexerInterface!7338 Rule!15286 List!46402) Option!9931)

(assert (=> b!4210247 (= res!1729388 (not (= (maxPrefixOneRule!3333 thiss!26544 rBis!178 input!3517) (Some!9930 (tuple2!44025 tBis!41 suffixBis!41)))))))

(assert (=> b!4210247 (isPrefix!4602 input!3517 input!3517)))

(declare-datatypes ((Unit!65402 0))(
  ( (Unit!65403) )
))
(declare-fun lt!1498961 () Unit!65402)

(declare-fun lemmaIsPrefixRefl!3019 (List!46402 List!46402) Unit!65402)

(assert (=> b!4210247 (= lt!1498961 (lemmaIsPrefixRefl!3019 input!3517 input!3517))))

(declare-fun b!4210248 () Bool)

(declare-fun tp!1287221 () Bool)

(declare-fun e!2613549 () Bool)

(assert (=> b!4210248 (= e!2613543 (and tp!1287221 (inv!60889 (tag!8607 (h!51700 rules!3967))) (inv!60892 (transformation!7743 (h!51700 rules!3967))) e!2613549))))

(declare-fun b!4210249 () Bool)

(declare-fun e!2613555 () Bool)

(declare-fun tp!1287215 () Bool)

(assert (=> b!4210249 (= e!2613539 (and tp!1287215 (inv!60889 (tag!8607 (rule!10855 t!8364))) (inv!60892 (transformation!7743 (rule!10855 t!8364))) e!2613555))))

(assert (=> b!4210251 (= e!2613555 (and tp!1287209 tp!1287210))))

(declare-fun b!4210252 () Bool)

(declare-fun res!1729384 () Bool)

(assert (=> b!4210252 (=> (not res!1729384) (not e!2613558))))

(declare-fun maxPrefix!4378 (LexerInterface!7338 List!46404 List!46402) Option!9931)

(assert (=> b!4210252 (= res!1729384 (= (maxPrefix!4378 thiss!26544 rules!3967 input!3517) (Some!9930 (tuple2!44025 t!8364 suffix!1557))))))

(declare-fun res!1729383 () Bool)

(assert (=> start!402384 (=> (not res!1729383) (not e!2613558))))

(assert (=> start!402384 (= res!1729383 (is-Lexer!7336 thiss!26544))))

(assert (=> start!402384 e!2613558))

(declare-fun e!2613544 () Bool)

(declare-fun inv!60893 (Token!14188) Bool)

(assert (=> start!402384 (and (inv!60893 tBis!41) e!2613544)))

(assert (=> start!402384 true))

(assert (=> start!402384 e!2613541))

(assert (=> start!402384 e!2613540))

(assert (=> start!402384 e!2613542))

(assert (=> start!402384 e!2613550))

(assert (=> start!402384 (and (inv!60893 t!8364) e!2613552)))

(declare-fun e!2613548 () Bool)

(assert (=> start!402384 e!2613548))

(assert (=> start!402384 e!2613553))

(assert (=> start!402384 e!2613561))

(declare-fun b!4210250 () Bool)

(declare-fun tp!1287216 () Bool)

(assert (=> b!4210250 (= e!2613548 (and tp_is_empty!22263 tp!1287216))))

(assert (=> b!4210253 (= e!2613549 (and tp!1287228 tp!1287212))))

(declare-fun tp!1287227 () Bool)

(declare-fun b!4210254 () Bool)

(assert (=> b!4210254 (= e!2613544 (and (inv!21 (value!241206 tBis!41)) e!2613547 tp!1287227))))

(assert (= (and start!402384 res!1729383) b!4210239))

(assert (= (and b!4210239 res!1729379) b!4210241))

(assert (= (and b!4210241 res!1729381) b!4210226))

(assert (= (and b!4210226 res!1729380) b!4210231))

(assert (= (and b!4210231 res!1729382) b!4210238))

(assert (= (and b!4210238 res!1729376) b!4210233))

(assert (= (and b!4210233 res!1729378) b!4210252))

(assert (= (and b!4210252 res!1729384) b!4210230))

(assert (= (and b!4210230 res!1729389) b!4210247))

(assert (= (and b!4210247 (not res!1729388)) b!4210246))

(assert (= (and b!4210246 (not res!1729387)) b!4210229))

(assert (= (and b!4210229 (not res!1729386)) b!4210232))

(assert (= (and b!4210232 (not res!1729377)) b!4210237))

(assert (= (and b!4210237 (not res!1729385)) b!4210240))

(assert (= b!4210236 b!4210227))

(assert (= b!4210254 b!4210236))

(assert (= start!402384 b!4210254))

(assert (= b!4210242 b!4210244))

(assert (= start!402384 b!4210242))

(assert (= (and start!402384 (is-Cons!46278 p!3001)) b!4210234))

(assert (= b!4210248 b!4210253))

(assert (= b!4210225 b!4210248))

(assert (= (and start!402384 (is-Cons!46280 rules!3967)) b!4210225))

(assert (= (and start!402384 (is-Cons!46278 input!3517)) b!4210235))

(assert (= b!4210249 b!4210251))

(assert (= b!4210243 b!4210249))

(assert (= start!402384 b!4210243))

(assert (= (and start!402384 (is-Cons!46278 pBis!121)) b!4210250))

(assert (= (and start!402384 (is-Cons!46278 suffix!1557)) b!4210228))

(assert (= (and start!402384 (is-Cons!46278 suffixBis!41)) b!4210245))

(declare-fun m!4798195 () Bool)

(assert (=> b!4210247 m!4798195))

(declare-fun m!4798197 () Bool)

(assert (=> b!4210247 m!4798197))

(declare-fun m!4798199 () Bool)

(assert (=> b!4210247 m!4798199))

(declare-fun m!4798201 () Bool)

(assert (=> b!4210248 m!4798201))

(declare-fun m!4798203 () Bool)

(assert (=> b!4210248 m!4798203))

(declare-fun m!4798205 () Bool)

(assert (=> b!4210241 m!4798205))

(declare-fun m!4798207 () Bool)

(assert (=> b!4210226 m!4798207))

(declare-fun m!4798209 () Bool)

(assert (=> b!4210254 m!4798209))

(declare-fun m!4798211 () Bool)

(assert (=> b!4210242 m!4798211))

(declare-fun m!4798213 () Bool)

(assert (=> b!4210242 m!4798213))

(declare-fun m!4798215 () Bool)

(assert (=> b!4210230 m!4798215))

(declare-fun m!4798217 () Bool)

(assert (=> b!4210239 m!4798217))

(declare-fun m!4798219 () Bool)

(assert (=> b!4210252 m!4798219))

(declare-fun m!4798221 () Bool)

(assert (=> start!402384 m!4798221))

(declare-fun m!4798223 () Bool)

(assert (=> start!402384 m!4798223))

(declare-fun m!4798225 () Bool)

(assert (=> b!4210249 m!4798225))

(declare-fun m!4798227 () Bool)

(assert (=> b!4210249 m!4798227))

(declare-fun m!4798229 () Bool)

(assert (=> b!4210232 m!4798229))

(declare-fun m!4798231 () Bool)

(assert (=> b!4210240 m!4798231))

(declare-fun m!4798233 () Bool)

(assert (=> b!4210240 m!4798233))

(declare-fun m!4798235 () Bool)

(assert (=> b!4210238 m!4798235))

(declare-fun m!4798237 () Bool)

(assert (=> b!4210231 m!4798237))

(declare-fun m!4798239 () Bool)

(assert (=> b!4210243 m!4798239))

(declare-fun m!4798241 () Bool)

(assert (=> b!4210229 m!4798241))

(assert (=> b!4210229 m!4798241))

(declare-fun m!4798243 () Bool)

(assert (=> b!4210229 m!4798243))

(declare-fun m!4798245 () Bool)

(assert (=> b!4210236 m!4798245))

(declare-fun m!4798247 () Bool)

(assert (=> b!4210236 m!4798247))

(declare-fun m!4798249 () Bool)

(assert (=> b!4210233 m!4798249))

(push 1)

(assert (not b!4210247))

(assert (not b!4210236))

(assert b_and!331271)

(assert (not b_next!123863))

(assert (not b!4210254))

(assert (not b!4210234))

(assert (not b!4210249))

(assert b_and!331269)

(assert (not b!4210238))

(assert (not b_next!123871))

(assert (not b!4210248))

(assert tp_is_empty!22263)

(assert (not b!4210239))

(assert (not b!4210240))

(assert (not b!4210225))

(assert (not b!4210226))

(assert b_and!331281)

(assert (not b!4210241))

(assert (not b!4210242))

(assert (not b!4210231))

(assert (not b_next!123869))

(assert (not b!4210252))

(assert (not start!402384))

(assert (not b!4210245))

(assert (not b_next!123859))

(assert (not b_next!123865))

(assert (not b!4210232))

(assert (not b!4210250))

(assert (not b!4210233))

(assert (not b!4210235))

(assert b_and!331273)

(assert (not b!4210228))

(assert (not b_next!123867))

(assert b_and!331275)

(assert b_and!331283)

(assert (not b_next!123873))

(assert (not b!4210229))

(assert b_and!331279)

(assert (not b_next!123861))

(assert (not b!4210230))

(assert b_and!331277)

(assert (not b!4210243))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!123871))

(assert b_and!331281)

(assert b_and!331271)

(assert (not b_next!123869))

(assert (not b_next!123859))

(assert (not b_next!123863))

(assert (not b_next!123865))

(assert b_and!331273)

(assert b_and!331269)

(assert b_and!331277)

(assert (not b_next!123867))

(assert b_and!331275)

(assert b_and!331283)

(assert (not b_next!123873))

(assert b_and!331279)

(assert (not b_next!123861))

(check-sat)

(pop 1)

