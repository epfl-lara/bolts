; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!392212 () Bool)

(assert start!392212)

(declare-fun b!4131574 () Bool)

(declare-fun b_free!117207 () Bool)

(declare-fun b_next!117911 () Bool)

(assert (=> b!4131574 (= b_free!117207 (not b_next!117911))))

(declare-fun tp!1259244 () Bool)

(declare-fun b_and!320261 () Bool)

(assert (=> b!4131574 (= tp!1259244 b_and!320261)))

(declare-fun b_free!117209 () Bool)

(declare-fun b_next!117913 () Bool)

(assert (=> b!4131574 (= b_free!117209 (not b_next!117913))))

(declare-fun tp!1259247 () Bool)

(declare-fun b_and!320263 () Bool)

(assert (=> b!4131574 (= tp!1259247 b_and!320263)))

(declare-fun b!4131569 () Bool)

(declare-fun b_free!117211 () Bool)

(declare-fun b_next!117915 () Bool)

(assert (=> b!4131569 (= b_free!117211 (not b_next!117915))))

(declare-fun tp!1259240 () Bool)

(declare-fun b_and!320265 () Bool)

(assert (=> b!4131569 (= tp!1259240 b_and!320265)))

(declare-fun b_free!117213 () Bool)

(declare-fun b_next!117917 () Bool)

(assert (=> b!4131569 (= b_free!117213 (not b_next!117917))))

(declare-fun tp!1259246 () Bool)

(declare-fun b_and!320267 () Bool)

(assert (=> b!4131569 (= tp!1259246 b_and!320267)))

(declare-fun b!4131581 () Bool)

(declare-fun b_free!117215 () Bool)

(declare-fun b_next!117919 () Bool)

(assert (=> b!4131581 (= b_free!117215 (not b_next!117919))))

(declare-fun tp!1259242 () Bool)

(declare-fun b_and!320269 () Bool)

(assert (=> b!4131581 (= tp!1259242 b_and!320269)))

(declare-fun b_free!117217 () Bool)

(declare-fun b_next!117921 () Bool)

(assert (=> b!4131581 (= b_free!117217 (not b_next!117921))))

(declare-fun tp!1259248 () Bool)

(declare-fun b_and!320271 () Bool)

(assert (=> b!4131581 (= tp!1259248 b_and!320271)))

(declare-fun b!4131565 () Bool)

(declare-fun res!1689010 () Bool)

(declare-fun e!2563486 () Bool)

(assert (=> b!4131565 (=> (not res!1689010) (not e!2563486))))

(declare-datatypes ((LexerInterface!6914 0))(
  ( (LexerInterfaceExt!6911 (__x!27327 Int)) (Lexer!6912) )
))
(declare-fun thiss!25645 () LexerInterface!6914)

(declare-datatypes ((List!44856 0))(
  ( (Nil!44732) (Cons!44732 (h!50152 (_ BitVec 16)) (t!341621 List!44856)) )
))
(declare-datatypes ((TokenValue!7555 0))(
  ( (FloatLiteralValue!15110 (text!53330 List!44856)) (TokenValueExt!7554 (__x!27328 Int)) (Broken!37775 (value!229292 List!44856)) (Object!7678) (End!7555) (Def!7555) (Underscore!7555) (Match!7555) (Else!7555) (Error!7555) (Case!7555) (If!7555) (Extends!7555) (Abstract!7555) (Class!7555) (Val!7555) (DelimiterValue!15110 (del!7615 List!44856)) (KeywordValue!7561 (value!229293 List!44856)) (CommentValue!15110 (value!229294 List!44856)) (WhitespaceValue!15110 (value!229295 List!44856)) (IndentationValue!7555 (value!229296 List!44856)) (String!51526) (Int32!7555) (Broken!37776 (value!229297 List!44856)) (Boolean!7556) (Unit!64057) (OperatorValue!7558 (op!7615 List!44856)) (IdentifierValue!15110 (value!229298 List!44856)) (IdentifierValue!15111 (value!229299 List!44856)) (WhitespaceValue!15111 (value!229300 List!44856)) (True!15110) (False!15110) (Broken!37777 (value!229301 List!44856)) (Broken!37778 (value!229302 List!44856)) (True!15111) (RightBrace!7555) (RightBracket!7555) (Colon!7555) (Null!7555) (Comma!7555) (LeftBracket!7555) (False!15111) (LeftBrace!7555) (ImaginaryLiteralValue!7555 (text!53331 List!44856)) (StringLiteralValue!22665 (value!229303 List!44856)) (EOFValue!7555 (value!229304 List!44856)) (IdentValue!7555 (value!229305 List!44856)) (DelimiterValue!15111 (value!229306 List!44856)) (DedentValue!7555 (value!229307 List!44856)) (NewLineValue!7555 (value!229308 List!44856)) (IntegerValue!22665 (value!229309 (_ BitVec 32)) (text!53332 List!44856)) (IntegerValue!22666 (value!229310 Int) (text!53333 List!44856)) (Times!7555) (Or!7555) (Equal!7555) (Minus!7555) (Broken!37779 (value!229311 List!44856)) (And!7555) (Div!7555) (LessEqual!7555) (Mod!7555) (Concat!19785) (Not!7555) (Plus!7555) (SpaceValue!7555 (value!229312 List!44856)) (IntegerValue!22667 (value!229313 Int) (text!53334 List!44856)) (StringLiteralValue!22666 (text!53335 List!44856)) (FloatLiteralValue!15111 (text!53336 List!44856)) (BytesLiteralValue!7555 (value!229314 List!44856)) (CommentValue!15111 (value!229315 List!44856)) (StringLiteralValue!22667 (value!229316 List!44856)) (ErrorTokenValue!7555 (msg!7616 List!44856)) )
))
(declare-datatypes ((C!24646 0))(
  ( (C!24647 (val!14433 Int)) )
))
(declare-datatypes ((List!44857 0))(
  ( (Nil!44733) (Cons!44733 (h!50153 C!24646) (t!341622 List!44857)) )
))
(declare-datatypes ((IArray!27077 0))(
  ( (IArray!27078 (innerList!13596 List!44857)) )
))
(declare-datatypes ((Conc!13536 0))(
  ( (Node!13536 (left!33501 Conc!13536) (right!33831 Conc!13536) (csize!27302 Int) (cheight!13747 Int)) (Leaf!20914 (xs!16842 IArray!27077) (csize!27303 Int)) (Empty!13536) )
))
(declare-datatypes ((BalanceConc!26666 0))(
  ( (BalanceConc!26667 (c!708871 Conc!13536)) )
))
(declare-datatypes ((Regex!12230 0))(
  ( (ElementMatch!12230 (c!708872 C!24646)) (Concat!19786 (regOne!24972 Regex!12230) (regTwo!24972 Regex!12230)) (EmptyExpr!12230) (Star!12230 (reg!12559 Regex!12230)) (EmptyLang!12230) (Union!12230 (regOne!24973 Regex!12230) (regTwo!24973 Regex!12230)) )
))
(declare-datatypes ((String!51527 0))(
  ( (String!51528 (value!229317 String)) )
))
(declare-datatypes ((TokenValueInjection!14538 0))(
  ( (TokenValueInjection!14539 (toValue!9989 Int) (toChars!9848 Int)) )
))
(declare-datatypes ((Rule!14450 0))(
  ( (Rule!14451 (regex!7325 Regex!12230) (tag!8185 String!51527) (isSeparator!7325 Bool) (transformation!7325 TokenValueInjection!14538)) )
))
(declare-datatypes ((List!44858 0))(
  ( (Nil!44734) (Cons!44734 (h!50154 Rule!14450) (t!341623 List!44858)) )
))
(declare-fun rules!3756 () List!44858)

(declare-fun rulesInvariant!6211 (LexerInterface!6914 List!44858) Bool)

(assert (=> b!4131565 (= res!1689010 (rulesInvariant!6211 thiss!25645 rules!3756))))

(declare-fun b!4131566 () Bool)

(declare-fun res!1689013 () Bool)

(declare-fun e!2563477 () Bool)

(assert (=> b!4131566 (=> (not res!1689013) (not e!2563477))))

(declare-fun rBis!149 () Rule!14450)

(declare-fun r!4008 () Rule!14450)

(declare-fun getIndex!671 (List!44858 Rule!14450) Int)

(assert (=> b!4131566 (= res!1689013 (< (getIndex!671 rules!3756 rBis!149) (getIndex!671 rules!3756 r!4008)))))

(declare-fun b!4131567 () Bool)

(declare-fun res!1689006 () Bool)

(assert (=> b!4131567 (=> (not res!1689006) (not e!2563486))))

(declare-fun contains!9003 (List!44858 Rule!14450) Bool)

(assert (=> b!4131567 (= res!1689006 (contains!9003 rules!3756 rBis!149))))

(declare-fun b!4131568 () Bool)

(declare-fun res!1689005 () Bool)

(assert (=> b!4131568 (=> (not res!1689005) (not e!2563477))))

(declare-fun ruleValid!3131 (LexerInterface!6914 Rule!14450) Bool)

(assert (=> b!4131568 (= res!1689005 (ruleValid!3131 thiss!25645 r!4008))))

(declare-fun e!2563473 () Bool)

(assert (=> b!4131569 (= e!2563473 (and tp!1259240 tp!1259246))))

(declare-fun e!2563474 () Bool)

(declare-fun b!4131570 () Bool)

(declare-fun e!2563480 () Bool)

(declare-fun tp!1259245 () Bool)

(declare-fun inv!59334 (String!51527) Bool)

(declare-fun inv!59337 (TokenValueInjection!14538) Bool)

(assert (=> b!4131570 (= e!2563480 (and tp!1259245 (inv!59334 (tag!8185 (h!50154 rules!3756))) (inv!59337 (transformation!7325 (h!50154 rules!3756))) e!2563474))))

(declare-fun b!4131571 () Bool)

(declare-fun e!2563475 () Bool)

(declare-fun tp!1259239 () Bool)

(assert (=> b!4131571 (= e!2563475 (and e!2563480 tp!1259239))))

(declare-fun b!4131572 () Bool)

(declare-fun res!1689009 () Bool)

(assert (=> b!4131572 (=> (not res!1689009) (not e!2563486))))

(assert (=> b!4131572 (= res!1689009 (contains!9003 rules!3756 r!4008))))

(declare-fun res!1689012 () Bool)

(assert (=> start!392212 (=> (not res!1689012) (not e!2563486))))

(assert (=> start!392212 (= res!1689012 (is-Lexer!6912 thiss!25645))))

(assert (=> start!392212 e!2563486))

(assert (=> start!392212 e!2563475))

(declare-fun e!2563484 () Bool)

(assert (=> start!392212 e!2563484))

(assert (=> start!392212 true))

(declare-fun e!2563482 () Bool)

(assert (=> start!392212 e!2563482))

(declare-fun e!2563483 () Bool)

(assert (=> start!392212 e!2563483))

(declare-fun e!2563481 () Bool)

(assert (=> start!392212 e!2563481))

(declare-fun b!4131573 () Bool)

(declare-fun res!1689003 () Bool)

(assert (=> b!4131573 (=> (not res!1689003) (not e!2563477))))

(declare-fun p!2912 () List!44857)

(declare-fun matchR!6059 (Regex!12230 List!44857) Bool)

(assert (=> b!4131573 (= res!1689003 (matchR!6059 (regex!7325 r!4008) p!2912))))

(assert (=> b!4131574 (= e!2563474 (and tp!1259244 tp!1259247))))

(declare-fun b!4131575 () Bool)

(declare-fun res!1689008 () Bool)

(assert (=> b!4131575 (=> (not res!1689008) (not e!2563486))))

(declare-fun isEmpty!26635 (List!44857) Bool)

(assert (=> b!4131575 (= res!1689008 (not (isEmpty!26635 p!2912)))))

(declare-fun b!4131576 () Bool)

(assert (=> b!4131576 (= e!2563486 e!2563477)))

(declare-fun res!1689011 () Bool)

(assert (=> b!4131576 (=> (not res!1689011) (not e!2563477))))

(declare-fun input!3238 () List!44857)

(declare-fun lt!1473378 () BalanceConc!26666)

(declare-datatypes ((Token!13580 0))(
  ( (Token!13581 (value!229318 TokenValue!7555) (rule!10417 Rule!14450) (size!33115 Int) (originalCharacters!7821 List!44857)) )
))
(declare-datatypes ((tuple2!43156 0))(
  ( (tuple2!43157 (_1!24712 Token!13580) (_2!24712 List!44857)) )
))
(declare-datatypes ((Option!9631 0))(
  ( (None!9630) (Some!9630 (v!40242 tuple2!43156)) )
))
(declare-fun maxPrefix!4104 (LexerInterface!6914 List!44858 List!44857) Option!9631)

(declare-fun apply!10398 (TokenValueInjection!14538 BalanceConc!26666) TokenValue!7555)

(declare-fun size!33116 (List!44857) Int)

(declare-fun getSuffix!2587 (List!44857 List!44857) List!44857)

(assert (=> b!4131576 (= res!1689011 (= (maxPrefix!4104 thiss!25645 rules!3756 input!3238) (Some!9630 (tuple2!43157 (Token!13581 (apply!10398 (transformation!7325 r!4008) lt!1473378) r!4008 (size!33116 p!2912) p!2912) (getSuffix!2587 input!3238 p!2912)))))))

(declare-datatypes ((Unit!64058 0))(
  ( (Unit!64059) )
))
(declare-fun lt!1473377 () Unit!64058)

(declare-fun lemmaSemiInverse!2183 (TokenValueInjection!14538 BalanceConc!26666) Unit!64058)

(assert (=> b!4131576 (= lt!1473377 (lemmaSemiInverse!2183 (transformation!7325 r!4008) lt!1473378))))

(declare-fun seqFromList!5442 (List!44857) BalanceConc!26666)

(assert (=> b!4131576 (= lt!1473378 (seqFromList!5442 p!2912))))

(declare-fun b!4131577 () Bool)

(declare-fun tp_is_empty!21383 () Bool)

(declare-fun tp!1259237 () Bool)

(assert (=> b!4131577 (= e!2563483 (and tp_is_empty!21383 tp!1259237))))

(declare-fun b!4131578 () Bool)

(declare-fun res!1689004 () Bool)

(assert (=> b!4131578 (=> (not res!1689004) (not e!2563486))))

(declare-fun isEmpty!26636 (List!44858) Bool)

(assert (=> b!4131578 (= res!1689004 (not (isEmpty!26636 rules!3756)))))

(declare-fun b!4131579 () Bool)

(declare-fun rulesValidInductive!2711 (LexerInterface!6914 List!44858) Bool)

(assert (=> b!4131579 (= e!2563477 (not (rulesValidInductive!2711 thiss!25645 rules!3756)))))

(declare-fun e!2563478 () Bool)

(declare-fun b!4131580 () Bool)

(declare-fun tp!1259241 () Bool)

(assert (=> b!4131580 (= e!2563482 (and tp!1259241 (inv!59334 (tag!8185 r!4008)) (inv!59337 (transformation!7325 r!4008)) e!2563478))))

(assert (=> b!4131581 (= e!2563478 (and tp!1259242 tp!1259248))))

(declare-fun b!4131582 () Bool)

(declare-fun res!1689007 () Bool)

(assert (=> b!4131582 (=> (not res!1689007) (not e!2563486))))

(declare-fun isPrefix!4260 (List!44857 List!44857) Bool)

(assert (=> b!4131582 (= res!1689007 (isPrefix!4260 p!2912 input!3238))))

(declare-fun tp!1259243 () Bool)

(declare-fun b!4131583 () Bool)

(assert (=> b!4131583 (= e!2563481 (and tp!1259243 (inv!59334 (tag!8185 rBis!149)) (inv!59337 (transformation!7325 rBis!149)) e!2563473))))

(declare-fun b!4131584 () Bool)

(declare-fun tp!1259238 () Bool)

(assert (=> b!4131584 (= e!2563484 (and tp_is_empty!21383 tp!1259238))))

(assert (= (and start!392212 res!1689012) b!4131582))

(assert (= (and b!4131582 res!1689007) b!4131578))

(assert (= (and b!4131578 res!1689004) b!4131565))

(assert (= (and b!4131565 res!1689010) b!4131572))

(assert (= (and b!4131572 res!1689009) b!4131567))

(assert (= (and b!4131567 res!1689006) b!4131575))

(assert (= (and b!4131575 res!1689008) b!4131576))

(assert (= (and b!4131576 res!1689011) b!4131573))

(assert (= (and b!4131573 res!1689003) b!4131566))

(assert (= (and b!4131566 res!1689013) b!4131568))

(assert (= (and b!4131568 res!1689005) b!4131579))

(assert (= b!4131570 b!4131574))

(assert (= b!4131571 b!4131570))

(assert (= (and start!392212 (is-Cons!44734 rules!3756)) b!4131571))

(assert (= (and start!392212 (is-Cons!44733 p!2912)) b!4131584))

(assert (= b!4131580 b!4131581))

(assert (= start!392212 b!4131580))

(assert (= (and start!392212 (is-Cons!44733 input!3238)) b!4131577))

(assert (= b!4131583 b!4131569))

(assert (= start!392212 b!4131583))

(declare-fun m!4729037 () Bool)

(assert (=> b!4131575 m!4729037))

(declare-fun m!4729039 () Bool)

(assert (=> b!4131580 m!4729039))

(declare-fun m!4729041 () Bool)

(assert (=> b!4131580 m!4729041))

(declare-fun m!4729043 () Bool)

(assert (=> b!4131579 m!4729043))

(declare-fun m!4729045 () Bool)

(assert (=> b!4131573 m!4729045))

(declare-fun m!4729047 () Bool)

(assert (=> b!4131570 m!4729047))

(declare-fun m!4729049 () Bool)

(assert (=> b!4131570 m!4729049))

(declare-fun m!4729051 () Bool)

(assert (=> b!4131568 m!4729051))

(declare-fun m!4729053 () Bool)

(assert (=> b!4131582 m!4729053))

(declare-fun m!4729055 () Bool)

(assert (=> b!4131567 m!4729055))

(declare-fun m!4729057 () Bool)

(assert (=> b!4131565 m!4729057))

(declare-fun m!4729059 () Bool)

(assert (=> b!4131572 m!4729059))

(declare-fun m!4729061 () Bool)

(assert (=> b!4131583 m!4729061))

(declare-fun m!4729063 () Bool)

(assert (=> b!4131583 m!4729063))

(declare-fun m!4729065 () Bool)

(assert (=> b!4131566 m!4729065))

(declare-fun m!4729067 () Bool)

(assert (=> b!4131566 m!4729067))

(declare-fun m!4729069 () Bool)

(assert (=> b!4131578 m!4729069))

(declare-fun m!4729071 () Bool)

(assert (=> b!4131576 m!4729071))

(declare-fun m!4729073 () Bool)

(assert (=> b!4131576 m!4729073))

(declare-fun m!4729075 () Bool)

(assert (=> b!4131576 m!4729075))

(declare-fun m!4729077 () Bool)

(assert (=> b!4131576 m!4729077))

(declare-fun m!4729079 () Bool)

(assert (=> b!4131576 m!4729079))

(declare-fun m!4729081 () Bool)

(assert (=> b!4131576 m!4729081))

(push 1)

(assert (not b_next!117919))

(assert (not b!4131575))

(assert (not b!4131565))

(assert (not b_next!117913))

(assert (not b!4131572))

(assert (not b!4131579))

(assert (not b!4131566))

(assert b_and!320267)

(assert (not b!4131573))

(assert (not b!4131582))

(assert (not b!4131580))

(assert (not b!4131568))

(assert (not b!4131570))

(assert (not b!4131584))

(assert (not b_next!117917))

(assert (not b!4131567))

(assert b_and!320271)

(assert (not b!4131571))

(assert (not b_next!117911))

(assert b_and!320265)

(assert (not b_next!117921))

(assert b_and!320261)

(assert tp_is_empty!21383)

(assert (not b!4131583))

(assert b_and!320269)

(assert (not b_next!117915))

(assert (not b!4131577))

(assert (not b!4131578))

(assert (not b!4131576))

(assert b_and!320263)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!117919))

(assert (not b_next!117917))

(assert (not b_next!117913))

(assert b_and!320263)

(assert b_and!320267)

(assert b_and!320271)

(assert (not b_next!117911))

(assert b_and!320265)

(assert (not b_next!117921))

(assert b_and!320261)

(assert b_and!320269)

(assert (not b_next!117915))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1224060 () Bool)

(declare-fun lt!1473391 () Bool)

(declare-fun content!6901 (List!44858) (Set Rule!14450))

(assert (=> d!1224060 (= lt!1473391 (set.member rBis!149 (content!6901 rules!3756)))))

(declare-fun e!2563541 () Bool)

(assert (=> d!1224060 (= lt!1473391 e!2563541)))

(declare-fun res!1689067 () Bool)

(assert (=> d!1224060 (=> (not res!1689067) (not e!2563541))))

(assert (=> d!1224060 (= res!1689067 (is-Cons!44734 rules!3756))))

(assert (=> d!1224060 (= (contains!9003 rules!3756 rBis!149) lt!1473391)))

(declare-fun b!4131657 () Bool)

(declare-fun e!2563542 () Bool)

(assert (=> b!4131657 (= e!2563541 e!2563542)))

(declare-fun res!1689068 () Bool)

(assert (=> b!4131657 (=> res!1689068 e!2563542)))

(assert (=> b!4131657 (= res!1689068 (= (h!50154 rules!3756) rBis!149))))

(declare-fun b!4131658 () Bool)

(assert (=> b!4131658 (= e!2563542 (contains!9003 (t!341623 rules!3756) rBis!149))))

(assert (= (and d!1224060 res!1689067) b!4131657))

(assert (= (and b!4131657 (not res!1689068)) b!4131658))

(declare-fun m!4729139 () Bool)

(assert (=> d!1224060 m!4729139))

(declare-fun m!4729141 () Bool)

(assert (=> d!1224060 m!4729141))

(declare-fun m!4729143 () Bool)

(assert (=> b!4131658 m!4729143))

(assert (=> b!4131567 d!1224060))

(declare-fun d!1224066 () Bool)

(assert (=> d!1224066 (= (isEmpty!26636 rules!3756) (is-Nil!44734 rules!3756))))

(assert (=> b!4131578 d!1224066))

(declare-fun d!1224068 () Bool)

(declare-fun res!1689079 () Bool)

(declare-fun e!2563548 () Bool)

(assert (=> d!1224068 (=> (not res!1689079) (not e!2563548))))

(declare-fun validRegex!5505 (Regex!12230) Bool)

(assert (=> d!1224068 (= res!1689079 (validRegex!5505 (regex!7325 r!4008)))))

(assert (=> d!1224068 (= (ruleValid!3131 thiss!25645 r!4008) e!2563548)))

(declare-fun b!4131669 () Bool)

(declare-fun res!1689080 () Bool)

(assert (=> b!4131669 (=> (not res!1689080) (not e!2563548))))

(declare-fun nullable!4297 (Regex!12230) Bool)

(assert (=> b!4131669 (= res!1689080 (not (nullable!4297 (regex!7325 r!4008))))))

(declare-fun b!4131670 () Bool)

(assert (=> b!4131670 (= e!2563548 (not (= (tag!8185 r!4008) (String!51528 ""))))))

(assert (= (and d!1224068 res!1689079) b!4131669))

(assert (= (and b!4131669 res!1689080) b!4131670))

(declare-fun m!4729149 () Bool)

(assert (=> d!1224068 m!4729149))

(declare-fun m!4729151 () Bool)

(assert (=> b!4131669 m!4729151))

(assert (=> b!4131568 d!1224068))

(declare-fun d!1224074 () Bool)

(assert (=> d!1224074 true))

(declare-fun lt!1473400 () Bool)

(declare-fun lambda!128856 () Int)

(declare-fun forall!8455 (List!44858 Int) Bool)

(assert (=> d!1224074 (= lt!1473400 (forall!8455 rules!3756 lambda!128856))))

(declare-fun e!2563571 () Bool)

(assert (=> d!1224074 (= lt!1473400 e!2563571)))

(declare-fun res!1689093 () Bool)

(assert (=> d!1224074 (=> res!1689093 e!2563571)))

(assert (=> d!1224074 (= res!1689093 (not (is-Cons!44734 rules!3756)))))

(assert (=> d!1224074 (= (rulesValidInductive!2711 thiss!25645 rules!3756) lt!1473400)))

(declare-fun b!4131699 () Bool)

(declare-fun e!2563570 () Bool)

(assert (=> b!4131699 (= e!2563571 e!2563570)))

(declare-fun res!1689094 () Bool)

(assert (=> b!4131699 (=> (not res!1689094) (not e!2563570))))

(assert (=> b!4131699 (= res!1689094 (ruleValid!3131 thiss!25645 (h!50154 rules!3756)))))

(declare-fun b!4131700 () Bool)

(assert (=> b!4131700 (= e!2563570 (rulesValidInductive!2711 thiss!25645 (t!341623 rules!3756)))))

(assert (= (and d!1224074 (not res!1689093)) b!4131699))

(assert (= (and b!4131699 res!1689094) b!4131700))

(declare-fun m!4729165 () Bool)

(assert (=> d!1224074 m!4729165))

(declare-fun m!4729167 () Bool)

(assert (=> b!4131699 m!4729167))

(declare-fun m!4729169 () Bool)

(assert (=> b!4131700 m!4729169))

(assert (=> b!4131579 d!1224074))

(declare-fun d!1224090 () Bool)

(assert (=> d!1224090 (= (inv!59334 (tag!8185 r!4008)) (= (mod (str.len (value!229317 (tag!8185 r!4008))) 2) 0))))

(assert (=> b!4131580 d!1224090))

(declare-fun d!1224092 () Bool)

(declare-fun res!1689097 () Bool)

(declare-fun e!2563574 () Bool)

(assert (=> d!1224092 (=> (not res!1689097) (not e!2563574))))

(declare-fun semiInverseModEq!3160 (Int Int) Bool)

(assert (=> d!1224092 (= res!1689097 (semiInverseModEq!3160 (toChars!9848 (transformation!7325 r!4008)) (toValue!9989 (transformation!7325 r!4008))))))

(assert (=> d!1224092 (= (inv!59337 (transformation!7325 r!4008)) e!2563574)))

(declare-fun b!4131705 () Bool)

(declare-fun equivClasses!3059 (Int Int) Bool)

(assert (=> b!4131705 (= e!2563574 (equivClasses!3059 (toChars!9848 (transformation!7325 r!4008)) (toValue!9989 (transformation!7325 r!4008))))))

(assert (= (and d!1224092 res!1689097) b!4131705))

(declare-fun m!4729171 () Bool)

(assert (=> d!1224092 m!4729171))

(declare-fun m!4729173 () Bool)

(assert (=> b!4131705 m!4729173))

(assert (=> b!4131580 d!1224092))

(declare-fun d!1224094 () Bool)

(assert (=> d!1224094 (= (isEmpty!26635 p!2912) (is-Nil!44733 p!2912))))

(assert (=> b!4131575 d!1224094))

(declare-fun d!1224096 () Bool)

(declare-fun res!1689100 () Bool)

(declare-fun e!2563577 () Bool)

(assert (=> d!1224096 (=> (not res!1689100) (not e!2563577))))

(declare-fun rulesValid!2875 (LexerInterface!6914 List!44858) Bool)

(assert (=> d!1224096 (= res!1689100 (rulesValid!2875 thiss!25645 rules!3756))))

(assert (=> d!1224096 (= (rulesInvariant!6211 thiss!25645 rules!3756) e!2563577)))

(declare-fun b!4131708 () Bool)

(declare-datatypes ((List!44862 0))(
  ( (Nil!44738) (Cons!44738 (h!50158 String!51527) (t!341655 List!44862)) )
))
(declare-fun noDuplicateTag!2958 (LexerInterface!6914 List!44858 List!44862) Bool)

(assert (=> b!4131708 (= e!2563577 (noDuplicateTag!2958 thiss!25645 rules!3756 Nil!44738))))

(assert (= (and d!1224096 res!1689100) b!4131708))

(declare-fun m!4729175 () Bool)

(assert (=> d!1224096 m!4729175))

(declare-fun m!4729177 () Bool)

(assert (=> b!4131708 m!4729177))

(assert (=> b!4131565 d!1224096))

(declare-fun b!4131727 () Bool)

(declare-fun res!1689116 () Bool)

(declare-fun e!2563586 () Bool)

(assert (=> b!4131727 (=> (not res!1689116) (not e!2563586))))

(declare-fun lt!1473413 () Option!9631)

(declare-fun get!14592 (Option!9631) tuple2!43156)

(assert (=> b!4131727 (= res!1689116 (= (value!229318 (_1!24712 (get!14592 lt!1473413))) (apply!10398 (transformation!7325 (rule!10417 (_1!24712 (get!14592 lt!1473413)))) (seqFromList!5442 (originalCharacters!7821 (_1!24712 (get!14592 lt!1473413)))))))))

(declare-fun b!4131728 () Bool)

(declare-fun e!2563585 () Bool)

(assert (=> b!4131728 (= e!2563585 e!2563586)))

(declare-fun res!1689115 () Bool)

(assert (=> b!4131728 (=> (not res!1689115) (not e!2563586))))

(declare-fun isDefined!7252 (Option!9631) Bool)

(assert (=> b!4131728 (= res!1689115 (isDefined!7252 lt!1473413))))

(declare-fun bm!290342 () Bool)

(declare-fun call!290347 () Option!9631)

(declare-fun maxPrefixOneRule!3050 (LexerInterface!6914 Rule!14450 List!44857) Option!9631)

(assert (=> bm!290342 (= call!290347 (maxPrefixOneRule!3050 thiss!25645 (h!50154 rules!3756) input!3238))))

(declare-fun b!4131729 () Bool)

(declare-fun res!1689121 () Bool)

(assert (=> b!4131729 (=> (not res!1689121) (not e!2563586))))

(declare-fun list!16392 (BalanceConc!26666) List!44857)

(declare-fun charsOf!4933 (Token!13580) BalanceConc!26666)

(assert (=> b!4131729 (= res!1689121 (matchR!6059 (regex!7325 (rule!10417 (_1!24712 (get!14592 lt!1473413)))) (list!16392 (charsOf!4933 (_1!24712 (get!14592 lt!1473413))))))))

(declare-fun d!1224098 () Bool)

(assert (=> d!1224098 e!2563585))

(declare-fun res!1689118 () Bool)

(assert (=> d!1224098 (=> res!1689118 e!2563585)))

(declare-fun isEmpty!26639 (Option!9631) Bool)

(assert (=> d!1224098 (= res!1689118 (isEmpty!26639 lt!1473413))))

(declare-fun e!2563584 () Option!9631)

(assert (=> d!1224098 (= lt!1473413 e!2563584)))

(declare-fun c!708886 () Bool)

(assert (=> d!1224098 (= c!708886 (and (is-Cons!44734 rules!3756) (is-Nil!44734 (t!341623 rules!3756))))))

(declare-fun lt!1473414 () Unit!64058)

(declare-fun lt!1473412 () Unit!64058)

(assert (=> d!1224098 (= lt!1473414 lt!1473412)))

(assert (=> d!1224098 (isPrefix!4260 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2758 (List!44857 List!44857) Unit!64058)

(assert (=> d!1224098 (= lt!1473412 (lemmaIsPrefixRefl!2758 input!3238 input!3238))))

(assert (=> d!1224098 (rulesValidInductive!2711 thiss!25645 rules!3756)))

(assert (=> d!1224098 (= (maxPrefix!4104 thiss!25645 rules!3756 input!3238) lt!1473413)))

(declare-fun b!4131730 () Bool)

(declare-fun lt!1473411 () Option!9631)

(declare-fun lt!1473415 () Option!9631)

(assert (=> b!4131730 (= e!2563584 (ite (and (is-None!9630 lt!1473411) (is-None!9630 lt!1473415)) None!9630 (ite (is-None!9630 lt!1473415) lt!1473411 (ite (is-None!9630 lt!1473411) lt!1473415 (ite (>= (size!33115 (_1!24712 (v!40242 lt!1473411))) (size!33115 (_1!24712 (v!40242 lt!1473415)))) lt!1473411 lt!1473415)))))))

(assert (=> b!4131730 (= lt!1473411 call!290347)))

(assert (=> b!4131730 (= lt!1473415 (maxPrefix!4104 thiss!25645 (t!341623 rules!3756) input!3238))))

(declare-fun b!4131731 () Bool)

(declare-fun res!1689120 () Bool)

(assert (=> b!4131731 (=> (not res!1689120) (not e!2563586))))

(assert (=> b!4131731 (= res!1689120 (= (list!16392 (charsOf!4933 (_1!24712 (get!14592 lt!1473413)))) (originalCharacters!7821 (_1!24712 (get!14592 lt!1473413)))))))

(declare-fun b!4131732 () Bool)

(assert (=> b!4131732 (= e!2563586 (contains!9003 rules!3756 (rule!10417 (_1!24712 (get!14592 lt!1473413)))))))

(declare-fun b!4131733 () Bool)

(declare-fun res!1689117 () Bool)

(assert (=> b!4131733 (=> (not res!1689117) (not e!2563586))))

(assert (=> b!4131733 (= res!1689117 (< (size!33116 (_2!24712 (get!14592 lt!1473413))) (size!33116 input!3238)))))

(declare-fun b!4131734 () Bool)

(declare-fun res!1689119 () Bool)

(assert (=> b!4131734 (=> (not res!1689119) (not e!2563586))))

(declare-fun ++!11579 (List!44857 List!44857) List!44857)

(assert (=> b!4131734 (= res!1689119 (= (++!11579 (list!16392 (charsOf!4933 (_1!24712 (get!14592 lt!1473413)))) (_2!24712 (get!14592 lt!1473413))) input!3238))))

(declare-fun b!4131735 () Bool)

(assert (=> b!4131735 (= e!2563584 call!290347)))

(assert (= (and d!1224098 c!708886) b!4131735))

(assert (= (and d!1224098 (not c!708886)) b!4131730))

(assert (= (or b!4131735 b!4131730) bm!290342))

(assert (= (and d!1224098 (not res!1689118)) b!4131728))

(assert (= (and b!4131728 res!1689115) b!4131731))

(assert (= (and b!4131731 res!1689120) b!4131733))

(assert (= (and b!4131733 res!1689117) b!4131734))

(assert (= (and b!4131734 res!1689119) b!4131727))

(assert (= (and b!4131727 res!1689116) b!4131729))

(assert (= (and b!4131729 res!1689121) b!4131732))

(declare-fun m!4729179 () Bool)

(assert (=> b!4131729 m!4729179))

(declare-fun m!4729181 () Bool)

(assert (=> b!4131729 m!4729181))

(assert (=> b!4131729 m!4729181))

(declare-fun m!4729183 () Bool)

(assert (=> b!4131729 m!4729183))

(assert (=> b!4131729 m!4729183))

(declare-fun m!4729185 () Bool)

(assert (=> b!4131729 m!4729185))

(declare-fun m!4729187 () Bool)

(assert (=> b!4131728 m!4729187))

(assert (=> b!4131732 m!4729179))

(declare-fun m!4729189 () Bool)

(assert (=> b!4131732 m!4729189))

(declare-fun m!4729191 () Bool)

(assert (=> d!1224098 m!4729191))

(declare-fun m!4729193 () Bool)

(assert (=> d!1224098 m!4729193))

(declare-fun m!4729195 () Bool)

(assert (=> d!1224098 m!4729195))

(assert (=> d!1224098 m!4729043))

(assert (=> b!4131727 m!4729179))

(declare-fun m!4729197 () Bool)

(assert (=> b!4131727 m!4729197))

(assert (=> b!4131727 m!4729197))

(declare-fun m!4729199 () Bool)

(assert (=> b!4131727 m!4729199))

(declare-fun m!4729201 () Bool)

(assert (=> b!4131730 m!4729201))

(assert (=> b!4131734 m!4729179))

(assert (=> b!4131734 m!4729181))

(assert (=> b!4131734 m!4729181))

(assert (=> b!4131734 m!4729183))

(assert (=> b!4131734 m!4729183))

(declare-fun m!4729203 () Bool)

(assert (=> b!4131734 m!4729203))

(assert (=> b!4131731 m!4729179))

(assert (=> b!4131731 m!4729181))

(assert (=> b!4131731 m!4729181))

(assert (=> b!4131731 m!4729183))

(declare-fun m!4729205 () Bool)

(assert (=> bm!290342 m!4729205))

(assert (=> b!4131733 m!4729179))

(declare-fun m!4729207 () Bool)

(assert (=> b!4131733 m!4729207))

(declare-fun m!4729209 () Bool)

(assert (=> b!4131733 m!4729209))

(assert (=> b!4131576 d!1224098))

(declare-fun d!1224100 () Bool)

(declare-fun fromListB!2493 (List!44857) BalanceConc!26666)

(assert (=> d!1224100 (= (seqFromList!5442 p!2912) (fromListB!2493 p!2912))))

(declare-fun bs!595052 () Bool)

(assert (= bs!595052 d!1224100))

(declare-fun m!4729211 () Bool)

(assert (=> bs!595052 m!4729211))

(assert (=> b!4131576 d!1224100))

(declare-fun d!1224102 () Bool)

(declare-fun lt!1473418 () Int)

(assert (=> d!1224102 (>= lt!1473418 0)))

(declare-fun e!2563589 () Int)

(assert (=> d!1224102 (= lt!1473418 e!2563589)))

(declare-fun c!708889 () Bool)

(assert (=> d!1224102 (= c!708889 (is-Nil!44733 p!2912))))

(assert (=> d!1224102 (= (size!33116 p!2912) lt!1473418)))

(declare-fun b!4131740 () Bool)

(assert (=> b!4131740 (= e!2563589 0)))

(declare-fun b!4131741 () Bool)

(assert (=> b!4131741 (= e!2563589 (+ 1 (size!33116 (t!341622 p!2912))))))

(assert (= (and d!1224102 c!708889) b!4131740))

(assert (= (and d!1224102 (not c!708889)) b!4131741))

(declare-fun m!4729213 () Bool)

(assert (=> b!4131741 m!4729213))

(assert (=> b!4131576 d!1224102))

(declare-fun b!4131746 () Bool)

(declare-fun e!2563592 () Bool)

(assert (=> b!4131746 (= e!2563592 true)))

(declare-fun d!1224104 () Bool)

(assert (=> d!1224104 e!2563592))

(assert (= d!1224104 b!4131746))

(declare-fun lambda!128859 () Int)

(declare-fun order!23603 () Int)

(declare-fun order!23605 () Int)

(declare-fun dynLambda!19178 (Int Int) Int)

(declare-fun dynLambda!19179 (Int Int) Int)

(assert (=> b!4131746 (< (dynLambda!19178 order!23603 (toValue!9989 (transformation!7325 r!4008))) (dynLambda!19179 order!23605 lambda!128859))))

(declare-fun order!23607 () Int)

(declare-fun dynLambda!19180 (Int Int) Int)

(assert (=> b!4131746 (< (dynLambda!19180 order!23607 (toChars!9848 (transformation!7325 r!4008))) (dynLambda!19179 order!23605 lambda!128859))))

(declare-fun dynLambda!19181 (Int TokenValue!7555) BalanceConc!26666)

(declare-fun dynLambda!19182 (Int BalanceConc!26666) TokenValue!7555)

(assert (=> d!1224104 (= (list!16392 (dynLambda!19181 (toChars!9848 (transformation!7325 r!4008)) (dynLambda!19182 (toValue!9989 (transformation!7325 r!4008)) lt!1473378))) (list!16392 lt!1473378))))

(declare-fun lt!1473421 () Unit!64058)

(declare-fun ForallOf!943 (Int BalanceConc!26666) Unit!64058)

(assert (=> d!1224104 (= lt!1473421 (ForallOf!943 lambda!128859 lt!1473378))))

(assert (=> d!1224104 (= (lemmaSemiInverse!2183 (transformation!7325 r!4008) lt!1473378) lt!1473421)))

(declare-fun b_lambda!121363 () Bool)

(assert (=> (not b_lambda!121363) (not d!1224104)))

(declare-fun t!341628 () Bool)

(declare-fun tb!247987 () Bool)

(assert (=> (and b!4131574 (= (toChars!9848 (transformation!7325 (h!50154 rules!3756))) (toChars!9848 (transformation!7325 r!4008))) t!341628) tb!247987))

(declare-fun e!2563595 () Bool)

(declare-fun tp!1259287 () Bool)

(declare-fun b!4131751 () Bool)

(declare-fun inv!59339 (Conc!13536) Bool)

(assert (=> b!4131751 (= e!2563595 (and (inv!59339 (c!708871 (dynLambda!19181 (toChars!9848 (transformation!7325 r!4008)) (dynLambda!19182 (toValue!9989 (transformation!7325 r!4008)) lt!1473378)))) tp!1259287))))

(declare-fun result!301404 () Bool)

(declare-fun inv!59340 (BalanceConc!26666) Bool)

(assert (=> tb!247987 (= result!301404 (and (inv!59340 (dynLambda!19181 (toChars!9848 (transformation!7325 r!4008)) (dynLambda!19182 (toValue!9989 (transformation!7325 r!4008)) lt!1473378))) e!2563595))))

(assert (= tb!247987 b!4131751))

(declare-fun m!4729215 () Bool)

(assert (=> b!4131751 m!4729215))

(declare-fun m!4729217 () Bool)

(assert (=> tb!247987 m!4729217))

(assert (=> d!1224104 t!341628))

(declare-fun b_and!320285 () Bool)

(assert (= b_and!320263 (and (=> t!341628 result!301404) b_and!320285)))

(declare-fun t!341630 () Bool)

(declare-fun tb!247989 () Bool)

(assert (=> (and b!4131569 (= (toChars!9848 (transformation!7325 rBis!149)) (toChars!9848 (transformation!7325 r!4008))) t!341630) tb!247989))

(declare-fun result!301408 () Bool)

(assert (= result!301408 result!301404))

(assert (=> d!1224104 t!341630))

(declare-fun b_and!320287 () Bool)

(assert (= b_and!320267 (and (=> t!341630 result!301408) b_and!320287)))

(declare-fun t!341632 () Bool)

(declare-fun tb!247991 () Bool)

(assert (=> (and b!4131581 (= (toChars!9848 (transformation!7325 r!4008)) (toChars!9848 (transformation!7325 r!4008))) t!341632) tb!247991))

(declare-fun result!301410 () Bool)

(assert (= result!301410 result!301404))

(assert (=> d!1224104 t!341632))

(declare-fun b_and!320289 () Bool)

(assert (= b_and!320271 (and (=> t!341632 result!301410) b_and!320289)))

(declare-fun b_lambda!121365 () Bool)

(assert (=> (not b_lambda!121365) (not d!1224104)))

(declare-fun t!341634 () Bool)

(declare-fun tb!247993 () Bool)

(assert (=> (and b!4131574 (= (toValue!9989 (transformation!7325 (h!50154 rules!3756))) (toValue!9989 (transformation!7325 r!4008))) t!341634) tb!247993))

(declare-fun result!301412 () Bool)

(declare-fun inv!21 (TokenValue!7555) Bool)

(assert (=> tb!247993 (= result!301412 (inv!21 (dynLambda!19182 (toValue!9989 (transformation!7325 r!4008)) lt!1473378)))))

(declare-fun m!4729219 () Bool)

(assert (=> tb!247993 m!4729219))

(assert (=> d!1224104 t!341634))

(declare-fun b_and!320291 () Bool)

(assert (= b_and!320261 (and (=> t!341634 result!301412) b_and!320291)))

(declare-fun t!341636 () Bool)

(declare-fun tb!247995 () Bool)

(assert (=> (and b!4131569 (= (toValue!9989 (transformation!7325 rBis!149)) (toValue!9989 (transformation!7325 r!4008))) t!341636) tb!247995))

(declare-fun result!301416 () Bool)

(assert (= result!301416 result!301412))

(assert (=> d!1224104 t!341636))

(declare-fun b_and!320293 () Bool)

(assert (= b_and!320265 (and (=> t!341636 result!301416) b_and!320293)))

(declare-fun t!341638 () Bool)

(declare-fun tb!247997 () Bool)

(assert (=> (and b!4131581 (= (toValue!9989 (transformation!7325 r!4008)) (toValue!9989 (transformation!7325 r!4008))) t!341638) tb!247997))

(declare-fun result!301418 () Bool)

(assert (= result!301418 result!301412))

(assert (=> d!1224104 t!341638))

(declare-fun b_and!320295 () Bool)

(assert (= b_and!320269 (and (=> t!341638 result!301418) b_and!320295)))

(declare-fun m!4729221 () Bool)

(assert (=> d!1224104 m!4729221))

(declare-fun m!4729223 () Bool)

(assert (=> d!1224104 m!4729223))

(declare-fun m!4729225 () Bool)

(assert (=> d!1224104 m!4729225))

(declare-fun m!4729227 () Bool)

(assert (=> d!1224104 m!4729227))

(assert (=> d!1224104 m!4729227))

(assert (=> d!1224104 m!4729223))

(declare-fun m!4729229 () Bool)

(assert (=> d!1224104 m!4729229))

(assert (=> b!4131576 d!1224104))

(declare-fun d!1224106 () Bool)

(declare-fun lt!1473424 () List!44857)

(assert (=> d!1224106 (= (++!11579 p!2912 lt!1473424) input!3238)))

(declare-fun e!2563601 () List!44857)

(assert (=> d!1224106 (= lt!1473424 e!2563601)))

(declare-fun c!708893 () Bool)

(assert (=> d!1224106 (= c!708893 (is-Cons!44733 p!2912))))

(assert (=> d!1224106 (>= (size!33116 input!3238) (size!33116 p!2912))))

(assert (=> d!1224106 (= (getSuffix!2587 input!3238 p!2912) lt!1473424)))

(declare-fun b!4131758 () Bool)

(declare-fun tail!6480 (List!44857) List!44857)

(assert (=> b!4131758 (= e!2563601 (getSuffix!2587 (tail!6480 input!3238) (t!341622 p!2912)))))

(declare-fun b!4131759 () Bool)

(assert (=> b!4131759 (= e!2563601 input!3238)))

(assert (= (and d!1224106 c!708893) b!4131758))

(assert (= (and d!1224106 (not c!708893)) b!4131759))

(declare-fun m!4729231 () Bool)

(assert (=> d!1224106 m!4729231))

(assert (=> d!1224106 m!4729209))

(assert (=> d!1224106 m!4729071))

(declare-fun m!4729233 () Bool)

(assert (=> b!4131758 m!4729233))

(assert (=> b!4131758 m!4729233))

(declare-fun m!4729235 () Bool)

(assert (=> b!4131758 m!4729235))

(assert (=> b!4131576 d!1224106))

(declare-fun d!1224108 () Bool)

(assert (=> d!1224108 (= (apply!10398 (transformation!7325 r!4008) lt!1473378) (dynLambda!19182 (toValue!9989 (transformation!7325 r!4008)) lt!1473378))))

(declare-fun b_lambda!121367 () Bool)

(assert (=> (not b_lambda!121367) (not d!1224108)))

(assert (=> d!1224108 t!341634))

(declare-fun b_and!320297 () Bool)

(assert (= b_and!320291 (and (=> t!341634 result!301412) b_and!320297)))

(assert (=> d!1224108 t!341636))

(declare-fun b_and!320299 () Bool)

(assert (= b_and!320293 (and (=> t!341636 result!301416) b_and!320299)))

(assert (=> d!1224108 t!341638))

(declare-fun b_and!320301 () Bool)

(assert (= b_and!320295 (and (=> t!341638 result!301418) b_and!320301)))

(assert (=> d!1224108 m!4729227))

(assert (=> b!4131576 d!1224108))

(declare-fun b!4131770 () Bool)

(declare-fun e!2563608 () Int)

(assert (=> b!4131770 (= e!2563608 (+ 1 (getIndex!671 (t!341623 rules!3756) rBis!149)))))

(declare-fun b!4131769 () Bool)

(declare-fun e!2563607 () Int)

(assert (=> b!4131769 (= e!2563607 e!2563608)))

(declare-fun c!708898 () Bool)

(assert (=> b!4131769 (= c!708898 (and (is-Cons!44734 rules!3756) (not (= (h!50154 rules!3756) rBis!149))))))

(declare-fun b!4131768 () Bool)

(assert (=> b!4131768 (= e!2563607 0)))

(declare-fun d!1224110 () Bool)

(declare-fun lt!1473427 () Int)

(assert (=> d!1224110 (>= lt!1473427 0)))

(assert (=> d!1224110 (= lt!1473427 e!2563607)))

(declare-fun c!708899 () Bool)

(assert (=> d!1224110 (= c!708899 (and (is-Cons!44734 rules!3756) (= (h!50154 rules!3756) rBis!149)))))

(assert (=> d!1224110 (contains!9003 rules!3756 rBis!149)))

(assert (=> d!1224110 (= (getIndex!671 rules!3756 rBis!149) lt!1473427)))

(declare-fun b!4131771 () Bool)

(assert (=> b!4131771 (= e!2563608 (- 1))))

(assert (= (and d!1224110 c!708899) b!4131768))

(assert (= (and d!1224110 (not c!708899)) b!4131769))

(assert (= (and b!4131769 c!708898) b!4131770))

(assert (= (and b!4131769 (not c!708898)) b!4131771))

(declare-fun m!4729237 () Bool)

(assert (=> b!4131770 m!4729237))

(assert (=> d!1224110 m!4729055))

(assert (=> b!4131566 d!1224110))

(declare-fun b!4131774 () Bool)

(declare-fun e!2563610 () Int)

(assert (=> b!4131774 (= e!2563610 (+ 1 (getIndex!671 (t!341623 rules!3756) r!4008)))))

(declare-fun b!4131773 () Bool)

(declare-fun e!2563609 () Int)

(assert (=> b!4131773 (= e!2563609 e!2563610)))

(declare-fun c!708900 () Bool)

(assert (=> b!4131773 (= c!708900 (and (is-Cons!44734 rules!3756) (not (= (h!50154 rules!3756) r!4008))))))

(declare-fun b!4131772 () Bool)

(assert (=> b!4131772 (= e!2563609 0)))

(declare-fun d!1224112 () Bool)

(declare-fun lt!1473428 () Int)

(assert (=> d!1224112 (>= lt!1473428 0)))

(assert (=> d!1224112 (= lt!1473428 e!2563609)))

(declare-fun c!708901 () Bool)

(assert (=> d!1224112 (= c!708901 (and (is-Cons!44734 rules!3756) (= (h!50154 rules!3756) r!4008)))))

(assert (=> d!1224112 (contains!9003 rules!3756 r!4008)))

(assert (=> d!1224112 (= (getIndex!671 rules!3756 r!4008) lt!1473428)))

(declare-fun b!4131775 () Bool)

(assert (=> b!4131775 (= e!2563610 (- 1))))

(assert (= (and d!1224112 c!708901) b!4131772))

(assert (= (and d!1224112 (not c!708901)) b!4131773))

(assert (= (and b!4131773 c!708900) b!4131774))

(assert (= (and b!4131773 (not c!708900)) b!4131775))

(declare-fun m!4729239 () Bool)

(assert (=> b!4131774 m!4729239))

(assert (=> d!1224112 m!4729059))

(assert (=> b!4131566 d!1224112))

(declare-fun d!1224114 () Bool)

(assert (=> d!1224114 (= (inv!59334 (tag!8185 rBis!149)) (= (mod (str.len (value!229317 (tag!8185 rBis!149))) 2) 0))))

(assert (=> b!4131583 d!1224114))

(declare-fun d!1224116 () Bool)

(declare-fun res!1689122 () Bool)

(declare-fun e!2563611 () Bool)

(assert (=> d!1224116 (=> (not res!1689122) (not e!2563611))))

(assert (=> d!1224116 (= res!1689122 (semiInverseModEq!3160 (toChars!9848 (transformation!7325 rBis!149)) (toValue!9989 (transformation!7325 rBis!149))))))

(assert (=> d!1224116 (= (inv!59337 (transformation!7325 rBis!149)) e!2563611)))

(declare-fun b!4131776 () Bool)

(assert (=> b!4131776 (= e!2563611 (equivClasses!3059 (toChars!9848 (transformation!7325 rBis!149)) (toValue!9989 (transformation!7325 rBis!149))))))

(assert (= (and d!1224116 res!1689122) b!4131776))

(declare-fun m!4729241 () Bool)

(assert (=> d!1224116 m!4729241))

(declare-fun m!4729243 () Bool)

(assert (=> b!4131776 m!4729243))

(assert (=> b!4131583 d!1224116))

(declare-fun b!4131817 () Bool)

(declare-fun e!2563639 () Bool)

(declare-fun lt!1473434 () Bool)

(declare-fun call!290350 () Bool)

(assert (=> b!4131817 (= e!2563639 (= lt!1473434 call!290350))))

(declare-fun b!4131818 () Bool)

(declare-fun res!1689155 () Bool)

(declare-fun e!2563638 () Bool)

(assert (=> b!4131818 (=> (not res!1689155) (not e!2563638))))

(assert (=> b!4131818 (= res!1689155 (isEmpty!26635 (tail!6480 p!2912)))))

(declare-fun b!4131819 () Bool)

(declare-fun e!2563636 () Bool)

(declare-fun head!8707 (List!44857) C!24646)

(assert (=> b!4131819 (= e!2563636 (not (= (head!8707 p!2912) (c!708872 (regex!7325 r!4008)))))))

(declare-fun b!4131820 () Bool)

(declare-fun res!1689156 () Bool)

(assert (=> b!4131820 (=> res!1689156 e!2563636)))

(assert (=> b!4131820 (= res!1689156 (not (isEmpty!26635 (tail!6480 p!2912))))))

(declare-fun d!1224118 () Bool)

(assert (=> d!1224118 e!2563639))

(declare-fun c!708909 () Bool)

(assert (=> d!1224118 (= c!708909 (is-EmptyExpr!12230 (regex!7325 r!4008)))))

(declare-fun e!2563635 () Bool)

(assert (=> d!1224118 (= lt!1473434 e!2563635)))

(declare-fun c!708908 () Bool)

(assert (=> d!1224118 (= c!708908 (isEmpty!26635 p!2912))))

(assert (=> d!1224118 (validRegex!5505 (regex!7325 r!4008))))

(assert (=> d!1224118 (= (matchR!6059 (regex!7325 r!4008) p!2912) lt!1473434)))

(declare-fun b!4131821 () Bool)

(declare-fun res!1689154 () Bool)

(declare-fun e!2563640 () Bool)

(assert (=> b!4131821 (=> res!1689154 e!2563640)))

(assert (=> b!4131821 (= res!1689154 (not (is-ElementMatch!12230 (regex!7325 r!4008))))))

(declare-fun e!2563634 () Bool)

(assert (=> b!4131821 (= e!2563634 e!2563640)))

(declare-fun bm!290345 () Bool)

(assert (=> bm!290345 (= call!290350 (isEmpty!26635 p!2912))))

(declare-fun b!4131822 () Bool)

(assert (=> b!4131822 (= e!2563639 e!2563634)))

(declare-fun c!708910 () Bool)

(assert (=> b!4131822 (= c!708910 (is-EmptyLang!12230 (regex!7325 r!4008)))))

(declare-fun b!4131823 () Bool)

(declare-fun e!2563637 () Bool)

(assert (=> b!4131823 (= e!2563640 e!2563637)))

(declare-fun res!1689150 () Bool)

(assert (=> b!4131823 (=> (not res!1689150) (not e!2563637))))

(assert (=> b!4131823 (= res!1689150 (not lt!1473434))))

(declare-fun b!4131824 () Bool)

(assert (=> b!4131824 (= e!2563634 (not lt!1473434))))

(declare-fun b!4131825 () Bool)

(assert (=> b!4131825 (= e!2563635 (nullable!4297 (regex!7325 r!4008)))))

(declare-fun b!4131826 () Bool)

(assert (=> b!4131826 (= e!2563637 e!2563636)))

(declare-fun res!1689151 () Bool)

(assert (=> b!4131826 (=> res!1689151 e!2563636)))

(assert (=> b!4131826 (= res!1689151 call!290350)))

(declare-fun b!4131827 () Bool)

(declare-fun derivativeStep!3692 (Regex!12230 C!24646) Regex!12230)

(assert (=> b!4131827 (= e!2563635 (matchR!6059 (derivativeStep!3692 (regex!7325 r!4008) (head!8707 p!2912)) (tail!6480 p!2912)))))

(declare-fun b!4131828 () Bool)

(assert (=> b!4131828 (= e!2563638 (= (head!8707 p!2912) (c!708872 (regex!7325 r!4008))))))

(declare-fun b!4131829 () Bool)

(declare-fun res!1689149 () Bool)

(assert (=> b!4131829 (=> (not res!1689149) (not e!2563638))))

(assert (=> b!4131829 (= res!1689149 (not call!290350))))

(declare-fun b!4131830 () Bool)

(declare-fun res!1689152 () Bool)

(assert (=> b!4131830 (=> res!1689152 e!2563640)))

(assert (=> b!4131830 (= res!1689152 e!2563638)))

(declare-fun res!1689153 () Bool)

(assert (=> b!4131830 (=> (not res!1689153) (not e!2563638))))

(assert (=> b!4131830 (= res!1689153 lt!1473434)))

(assert (= (and d!1224118 c!708908) b!4131825))

(assert (= (and d!1224118 (not c!708908)) b!4131827))

(assert (= (and d!1224118 c!708909) b!4131817))

(assert (= (and d!1224118 (not c!708909)) b!4131822))

(assert (= (and b!4131822 c!708910) b!4131824))

(assert (= (and b!4131822 (not c!708910)) b!4131821))

(assert (= (and b!4131821 (not res!1689154)) b!4131830))

(assert (= (and b!4131830 res!1689153) b!4131829))

(assert (= (and b!4131829 res!1689149) b!4131818))

(assert (= (and b!4131818 res!1689155) b!4131828))

(assert (= (and b!4131830 (not res!1689152)) b!4131823))

(assert (= (and b!4131823 res!1689150) b!4131826))

(assert (= (and b!4131826 (not res!1689151)) b!4131820))

(assert (= (and b!4131820 (not res!1689156)) b!4131819))

(assert (= (or b!4131817 b!4131826 b!4131829) bm!290345))

(assert (=> d!1224118 m!4729037))

(assert (=> d!1224118 m!4729149))

(assert (=> bm!290345 m!4729037))

(declare-fun m!4729251 () Bool)

(assert (=> b!4131820 m!4729251))

(assert (=> b!4131820 m!4729251))

(declare-fun m!4729253 () Bool)

(assert (=> b!4131820 m!4729253))

(declare-fun m!4729255 () Bool)

(assert (=> b!4131819 m!4729255))

(assert (=> b!4131827 m!4729255))

(assert (=> b!4131827 m!4729255))

(declare-fun m!4729257 () Bool)

(assert (=> b!4131827 m!4729257))

(assert (=> b!4131827 m!4729251))

(assert (=> b!4131827 m!4729257))

(assert (=> b!4131827 m!4729251))

(declare-fun m!4729259 () Bool)

(assert (=> b!4131827 m!4729259))

(assert (=> b!4131818 m!4729251))

(assert (=> b!4131818 m!4729251))

(assert (=> b!4131818 m!4729253))

(assert (=> b!4131825 m!4729151))

(assert (=> b!4131828 m!4729255))

(assert (=> b!4131573 d!1224118))

(declare-fun d!1224122 () Bool)

(assert (=> d!1224122 (= (inv!59334 (tag!8185 (h!50154 rules!3756))) (= (mod (str.len (value!229317 (tag!8185 (h!50154 rules!3756)))) 2) 0))))

(assert (=> b!4131570 d!1224122))

(declare-fun d!1224124 () Bool)

(declare-fun res!1689161 () Bool)

(declare-fun e!2563644 () Bool)

(assert (=> d!1224124 (=> (not res!1689161) (not e!2563644))))

(assert (=> d!1224124 (= res!1689161 (semiInverseModEq!3160 (toChars!9848 (transformation!7325 (h!50154 rules!3756))) (toValue!9989 (transformation!7325 (h!50154 rules!3756)))))))

(assert (=> d!1224124 (= (inv!59337 (transformation!7325 (h!50154 rules!3756))) e!2563644)))

(declare-fun b!4131835 () Bool)

(assert (=> b!4131835 (= e!2563644 (equivClasses!3059 (toChars!9848 (transformation!7325 (h!50154 rules!3756))) (toValue!9989 (transformation!7325 (h!50154 rules!3756)))))))

(assert (= (and d!1224124 res!1689161) b!4131835))

(declare-fun m!4729273 () Bool)

(assert (=> d!1224124 m!4729273))

(declare-fun m!4729275 () Bool)

(assert (=> b!4131835 m!4729275))

(assert (=> b!4131570 d!1224124))

(declare-fun b!4131849 () Bool)

(declare-fun res!1689176 () Bool)

(declare-fun e!2563656 () Bool)

(assert (=> b!4131849 (=> (not res!1689176) (not e!2563656))))

(assert (=> b!4131849 (= res!1689176 (= (head!8707 p!2912) (head!8707 input!3238)))))

(declare-fun d!1224128 () Bool)

(declare-fun e!2563657 () Bool)

(assert (=> d!1224128 e!2563657))

(declare-fun res!1689177 () Bool)

(assert (=> d!1224128 (=> res!1689177 e!2563657)))

(declare-fun lt!1473438 () Bool)

(assert (=> d!1224128 (= res!1689177 (not lt!1473438))))

(declare-fun e!2563655 () Bool)

(assert (=> d!1224128 (= lt!1473438 e!2563655)))

(declare-fun res!1689175 () Bool)

(assert (=> d!1224128 (=> res!1689175 e!2563655)))

(assert (=> d!1224128 (= res!1689175 (is-Nil!44733 p!2912))))

(assert (=> d!1224128 (= (isPrefix!4260 p!2912 input!3238) lt!1473438)))

(declare-fun b!4131851 () Bool)

(assert (=> b!4131851 (= e!2563657 (>= (size!33116 input!3238) (size!33116 p!2912)))))

(declare-fun b!4131850 () Bool)

(assert (=> b!4131850 (= e!2563656 (isPrefix!4260 (tail!6480 p!2912) (tail!6480 input!3238)))))

(declare-fun b!4131848 () Bool)

(assert (=> b!4131848 (= e!2563655 e!2563656)))

(declare-fun res!1689174 () Bool)

(assert (=> b!4131848 (=> (not res!1689174) (not e!2563656))))

(assert (=> b!4131848 (= res!1689174 (not (is-Nil!44733 input!3238)))))

(assert (= (and d!1224128 (not res!1689175)) b!4131848))

(assert (= (and b!4131848 res!1689174) b!4131849))

(assert (= (and b!4131849 res!1689176) b!4131850))

(assert (= (and d!1224128 (not res!1689177)) b!4131851))

(assert (=> b!4131849 m!4729255))

(declare-fun m!4729285 () Bool)

(assert (=> b!4131849 m!4729285))

(assert (=> b!4131851 m!4729209))

(assert (=> b!4131851 m!4729071))

(assert (=> b!4131850 m!4729251))

(assert (=> b!4131850 m!4729233))

(assert (=> b!4131850 m!4729251))

(assert (=> b!4131850 m!4729233))

(declare-fun m!4729287 () Bool)

(assert (=> b!4131850 m!4729287))

(assert (=> b!4131582 d!1224128))

(declare-fun d!1224136 () Bool)

(declare-fun lt!1473439 () Bool)

(assert (=> d!1224136 (= lt!1473439 (set.member r!4008 (content!6901 rules!3756)))))

(declare-fun e!2563658 () Bool)

(assert (=> d!1224136 (= lt!1473439 e!2563658)))

(declare-fun res!1689178 () Bool)

(assert (=> d!1224136 (=> (not res!1689178) (not e!2563658))))

(assert (=> d!1224136 (= res!1689178 (is-Cons!44734 rules!3756))))

(assert (=> d!1224136 (= (contains!9003 rules!3756 r!4008) lt!1473439)))

(declare-fun b!4131852 () Bool)

(declare-fun e!2563659 () Bool)

(assert (=> b!4131852 (= e!2563658 e!2563659)))

(declare-fun res!1689179 () Bool)

(assert (=> b!4131852 (=> res!1689179 e!2563659)))

(assert (=> b!4131852 (= res!1689179 (= (h!50154 rules!3756) r!4008))))

(declare-fun b!4131853 () Bool)

(assert (=> b!4131853 (= e!2563659 (contains!9003 (t!341623 rules!3756) r!4008))))

(assert (= (and d!1224136 res!1689178) b!4131852))

(assert (= (and b!4131852 (not res!1689179)) b!4131853))

(assert (=> d!1224136 m!4729139))

(declare-fun m!4729289 () Bool)

(assert (=> d!1224136 m!4729289))

(declare-fun m!4729291 () Bool)

(assert (=> b!4131853 m!4729291))

(assert (=> b!4131572 d!1224136))

(declare-fun b!4131865 () Bool)

(declare-fun e!2563662 () Bool)

(declare-fun tp!1259298 () Bool)

(declare-fun tp!1259301 () Bool)

(assert (=> b!4131865 (= e!2563662 (and tp!1259298 tp!1259301))))

(declare-fun b!4131866 () Bool)

(declare-fun tp!1259299 () Bool)

(assert (=> b!4131866 (= e!2563662 tp!1259299)))

(assert (=> b!4131583 (= tp!1259243 e!2563662)))

(declare-fun b!4131867 () Bool)

(declare-fun tp!1259300 () Bool)

(declare-fun tp!1259302 () Bool)

(assert (=> b!4131867 (= e!2563662 (and tp!1259300 tp!1259302))))

(declare-fun b!4131864 () Bool)

(assert (=> b!4131864 (= e!2563662 tp_is_empty!21383)))

(assert (= (and b!4131583 (is-ElementMatch!12230 (regex!7325 rBis!149))) b!4131864))

(assert (= (and b!4131583 (is-Concat!19786 (regex!7325 rBis!149))) b!4131865))

(assert (= (and b!4131583 (is-Star!12230 (regex!7325 rBis!149))) b!4131866))

(assert (= (and b!4131583 (is-Union!12230 (regex!7325 rBis!149))) b!4131867))

(declare-fun b!4131872 () Bool)

(declare-fun e!2563665 () Bool)

(declare-fun tp!1259305 () Bool)

(assert (=> b!4131872 (= e!2563665 (and tp_is_empty!21383 tp!1259305))))

(assert (=> b!4131584 (= tp!1259238 e!2563665)))

(assert (= (and b!4131584 (is-Cons!44733 (t!341622 p!2912))) b!4131872))

(declare-fun b!4131874 () Bool)

(declare-fun e!2563666 () Bool)

(declare-fun tp!1259306 () Bool)

(declare-fun tp!1259309 () Bool)

(assert (=> b!4131874 (= e!2563666 (and tp!1259306 tp!1259309))))

(declare-fun b!4131875 () Bool)

(declare-fun tp!1259307 () Bool)

(assert (=> b!4131875 (= e!2563666 tp!1259307)))

(assert (=> b!4131580 (= tp!1259241 e!2563666)))

(declare-fun b!4131876 () Bool)

(declare-fun tp!1259308 () Bool)

(declare-fun tp!1259310 () Bool)

(assert (=> b!4131876 (= e!2563666 (and tp!1259308 tp!1259310))))

(declare-fun b!4131873 () Bool)

(assert (=> b!4131873 (= e!2563666 tp_is_empty!21383)))

(assert (= (and b!4131580 (is-ElementMatch!12230 (regex!7325 r!4008))) b!4131873))

(assert (= (and b!4131580 (is-Concat!19786 (regex!7325 r!4008))) b!4131874))

(assert (= (and b!4131580 (is-Star!12230 (regex!7325 r!4008))) b!4131875))

(assert (= (and b!4131580 (is-Union!12230 (regex!7325 r!4008))) b!4131876))

(declare-fun b!4131878 () Bool)

(declare-fun e!2563667 () Bool)

(declare-fun tp!1259311 () Bool)

(declare-fun tp!1259314 () Bool)

(assert (=> b!4131878 (= e!2563667 (and tp!1259311 tp!1259314))))

(declare-fun b!4131879 () Bool)

(declare-fun tp!1259312 () Bool)

(assert (=> b!4131879 (= e!2563667 tp!1259312)))

(assert (=> b!4131570 (= tp!1259245 e!2563667)))

(declare-fun b!4131880 () Bool)

(declare-fun tp!1259313 () Bool)

(declare-fun tp!1259315 () Bool)

(assert (=> b!4131880 (= e!2563667 (and tp!1259313 tp!1259315))))

(declare-fun b!4131877 () Bool)

(assert (=> b!4131877 (= e!2563667 tp_is_empty!21383)))

(assert (= (and b!4131570 (is-ElementMatch!12230 (regex!7325 (h!50154 rules!3756)))) b!4131877))

(assert (= (and b!4131570 (is-Concat!19786 (regex!7325 (h!50154 rules!3756)))) b!4131878))

(assert (= (and b!4131570 (is-Star!12230 (regex!7325 (h!50154 rules!3756)))) b!4131879))

(assert (= (and b!4131570 (is-Union!12230 (regex!7325 (h!50154 rules!3756)))) b!4131880))

(declare-fun b!4131905 () Bool)

(declare-fun b_free!117231 () Bool)

(declare-fun b_next!117935 () Bool)

(assert (=> b!4131905 (= b_free!117231 (not b_next!117935))))

(declare-fun tb!247999 () Bool)

(declare-fun t!341640 () Bool)

(assert (=> (and b!4131905 (= (toValue!9989 (transformation!7325 (h!50154 (t!341623 rules!3756)))) (toValue!9989 (transformation!7325 r!4008))) t!341640) tb!247999))

(declare-fun result!301426 () Bool)

(assert (= result!301426 result!301412))

(assert (=> d!1224104 t!341640))

(assert (=> d!1224108 t!341640))

(declare-fun b_and!320303 () Bool)

(declare-fun tp!1259325 () Bool)

(assert (=> b!4131905 (= tp!1259325 (and (=> t!341640 result!301426) b_and!320303))))

(declare-fun b_free!117233 () Bool)

(declare-fun b_next!117937 () Bool)

(assert (=> b!4131905 (= b_free!117233 (not b_next!117937))))

(declare-fun t!341642 () Bool)

(declare-fun tb!248001 () Bool)

(assert (=> (and b!4131905 (= (toChars!9848 (transformation!7325 (h!50154 (t!341623 rules!3756)))) (toChars!9848 (transformation!7325 r!4008))) t!341642) tb!248001))

(declare-fun result!301428 () Bool)

(assert (= result!301428 result!301404))

(assert (=> d!1224104 t!341642))

(declare-fun b_and!320305 () Bool)

(declare-fun tp!1259324 () Bool)

(assert (=> b!4131905 (= tp!1259324 (and (=> t!341642 result!301428) b_and!320305))))

(declare-fun e!2563686 () Bool)

(assert (=> b!4131905 (= e!2563686 (and tp!1259325 tp!1259324))))

(declare-fun tp!1259327 () Bool)

(declare-fun e!2563685 () Bool)

(declare-fun b!4131904 () Bool)

(assert (=> b!4131904 (= e!2563685 (and tp!1259327 (inv!59334 (tag!8185 (h!50154 (t!341623 rules!3756)))) (inv!59337 (transformation!7325 (h!50154 (t!341623 rules!3756)))) e!2563686))))

(declare-fun b!4131903 () Bool)

(declare-fun e!2563684 () Bool)

(declare-fun tp!1259326 () Bool)

(assert (=> b!4131903 (= e!2563684 (and e!2563685 tp!1259326))))

(assert (=> b!4131571 (= tp!1259239 e!2563684)))

(assert (= b!4131904 b!4131905))

(assert (= b!4131903 b!4131904))

(assert (= (and b!4131571 (is-Cons!44734 (t!341623 rules!3756))) b!4131903))

(declare-fun m!4729293 () Bool)

(assert (=> b!4131904 m!4729293))

(declare-fun m!4729295 () Bool)

(assert (=> b!4131904 m!4729295))

(declare-fun b!4131920 () Bool)

(declare-fun e!2563694 () Bool)

(declare-fun tp!1259328 () Bool)

(assert (=> b!4131920 (= e!2563694 (and tp_is_empty!21383 tp!1259328))))

(assert (=> b!4131577 (= tp!1259237 e!2563694)))

(assert (= (and b!4131577 (is-Cons!44733 (t!341622 input!3238))) b!4131920))

(declare-fun b_lambda!121369 () Bool)

(assert (= b_lambda!121367 (or (and b!4131574 b_free!117207 (= (toValue!9989 (transformation!7325 (h!50154 rules!3756))) (toValue!9989 (transformation!7325 r!4008)))) (and b!4131569 b_free!117211 (= (toValue!9989 (transformation!7325 rBis!149)) (toValue!9989 (transformation!7325 r!4008)))) (and b!4131581 b_free!117215) (and b!4131905 b_free!117231 (= (toValue!9989 (transformation!7325 (h!50154 (t!341623 rules!3756)))) (toValue!9989 (transformation!7325 r!4008)))) b_lambda!121369)))

(declare-fun b_lambda!121371 () Bool)

(assert (= b_lambda!121365 (or (and b!4131574 b_free!117207 (= (toValue!9989 (transformation!7325 (h!50154 rules!3756))) (toValue!9989 (transformation!7325 r!4008)))) (and b!4131569 b_free!117211 (= (toValue!9989 (transformation!7325 rBis!149)) (toValue!9989 (transformation!7325 r!4008)))) (and b!4131581 b_free!117215) (and b!4131905 b_free!117231 (= (toValue!9989 (transformation!7325 (h!50154 (t!341623 rules!3756)))) (toValue!9989 (transformation!7325 r!4008)))) b_lambda!121371)))

(declare-fun b_lambda!121373 () Bool)

(assert (= b_lambda!121363 (or (and b!4131574 b_free!117209 (= (toChars!9848 (transformation!7325 (h!50154 rules!3756))) (toChars!9848 (transformation!7325 r!4008)))) (and b!4131569 b_free!117213 (= (toChars!9848 (transformation!7325 rBis!149)) (toChars!9848 (transformation!7325 r!4008)))) (and b!4131581 b_free!117217) (and b!4131905 b_free!117233 (= (toChars!9848 (transformation!7325 (h!50154 (t!341623 rules!3756)))) (toChars!9848 (transformation!7325 r!4008)))) b_lambda!121373)))

(push 1)

(assert (not d!1224060))

(assert (not b!4131835))

(assert (not b!4131776))

(assert (not b!4131751))

(assert (not d!1224116))

(assert (not b!4131820))

(assert (not b!4131728))

(assert (not b!4131874))

(assert (not b_next!117919))

(assert (not b!4131828))

(assert (not b!4131818))

(assert b_and!320287)

(assert (not d!1224098))

(assert (not b_lambda!121371))

(assert (not d!1224068))

(assert (not d!1224074))

(assert (not tb!247987))

(assert b_and!320303)

(assert (not b!4131758))

(assert (not b!4131851))

(assert (not b!4131879))

(assert (not b!4131867))

(assert (not b!4131880))

(assert (not b!4131727))

(assert b_and!320289)

(assert (not b!4131774))

(assert (not d!1224112))

(assert (not b!4131729))

(assert (not d!1224110))

(assert (not b!4131872))

(assert (not b!4131732))

(assert (not b!4131700))

(assert (not b_next!117937))

(assert (not b!4131904))

(assert (not b!4131850))

(assert (not b!4131730))

(assert (not b!4131733))

(assert (not b_next!117917))

(assert (not b!4131825))

(assert (not b!4131866))

(assert (not b!4131876))

(assert b_and!320301)

(assert (not b_next!117911))

(assert (not b_next!117935))

(assert (not b_next!117921))

(assert (not bm!290342))

(assert (not b!4131903))

(assert tp_is_empty!21383)

(assert (not d!1224136))

(assert (not b_next!117913))

(assert (not b!4131705))

(assert b_and!320297)

(assert (not b_next!117915))

(assert (not b_lambda!121373))

(assert (not b!4131741))

(assert b_and!320305)

(assert (not d!1224096))

(assert (not b!4131669))

(assert (not b!4131875))

(assert (not b!4131853))

(assert (not b!4131920))

(assert (not b!4131770))

(assert (not b!4131658))

(assert (not d!1224100))

(assert (not b!4131819))

(assert (not bm!290345))

(assert (not d!1224124))

(assert (not d!1224106))

(assert (not b!4131734))

(assert b_and!320285)

(assert (not b!4131827))

(assert (not tb!247993))

(assert (not b!4131865))

(assert (not b!4131849))

(assert (not b_lambda!121369))

(assert (not b!4131878))

(assert b_and!320299)

(assert (not d!1224118))

(assert (not b!4131731))

(assert (not d!1224104))

(assert (not d!1224092))

(assert (not b!4131699))

(assert (not b!4131708))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!117919))

(assert b_and!320287)

(assert b_and!320303)

(assert b_and!320289)

(assert (not b_next!117937))

(assert (not b_next!117917))

(assert (not b_next!117913))

(assert b_and!320305)

(assert b_and!320285)

(assert b_and!320299)

(assert b_and!320301)

(assert (not b_next!117911))

(assert (not b_next!117935))

(assert (not b_next!117921))

(assert b_and!320297)

(assert (not b_next!117915))

(check-sat)

(pop 1)

