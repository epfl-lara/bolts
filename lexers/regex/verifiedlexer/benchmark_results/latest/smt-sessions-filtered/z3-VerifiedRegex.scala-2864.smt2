; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!166734 () Bool)

(assert start!166734)

(declare-fun b!1707580 () Bool)

(declare-fun b_free!46219 () Bool)

(declare-fun b_next!46923 () Bool)

(assert (=> b!1707580 (= b_free!46219 (not b_next!46923))))

(declare-fun tp!487916 () Bool)

(declare-fun b_and!123529 () Bool)

(assert (=> b!1707580 (= tp!487916 b_and!123529)))

(declare-fun b_free!46221 () Bool)

(declare-fun b_next!46925 () Bool)

(assert (=> b!1707580 (= b_free!46221 (not b_next!46925))))

(declare-fun tp!487914 () Bool)

(declare-fun b_and!123531 () Bool)

(assert (=> b!1707580 (= tp!487914 b_and!123531)))

(declare-fun b!1707589 () Bool)

(declare-fun b_free!46223 () Bool)

(declare-fun b_next!46927 () Bool)

(assert (=> b!1707589 (= b_free!46223 (not b_next!46927))))

(declare-fun tp!487909 () Bool)

(declare-fun b_and!123533 () Bool)

(assert (=> b!1707589 (= tp!487909 b_and!123533)))

(declare-fun b_free!46225 () Bool)

(declare-fun b_next!46929 () Bool)

(assert (=> b!1707589 (= b_free!46225 (not b_next!46929))))

(declare-fun tp!487913 () Bool)

(declare-fun b_and!123535 () Bool)

(assert (=> b!1707589 (= tp!487913 b_and!123535)))

(declare-fun b!1707574 () Bool)

(declare-fun b_free!46227 () Bool)

(declare-fun b_next!46931 () Bool)

(assert (=> b!1707574 (= b_free!46227 (not b_next!46931))))

(declare-fun tp!487910 () Bool)

(declare-fun b_and!123537 () Bool)

(assert (=> b!1707574 (= tp!487910 b_and!123537)))

(declare-fun b_free!46229 () Bool)

(declare-fun b_next!46933 () Bool)

(assert (=> b!1707574 (= b_free!46229 (not b_next!46933))))

(declare-fun tp!487911 () Bool)

(declare-fun b_and!123539 () Bool)

(assert (=> b!1707574 (= tp!487911 b_and!123539)))

(declare-fun e!1092235 () Bool)

(assert (=> b!1707574 (= e!1092235 (and tp!487910 tp!487911))))

(declare-fun b!1707575 () Bool)

(declare-fun res!765476 () Bool)

(declare-fun e!1092244 () Bool)

(assert (=> b!1707575 (=> (not res!765476) (not e!1092244))))

(declare-datatypes ((LexerInterface!2918 0))(
  ( (LexerInterfaceExt!2915 (__x!12060 Int)) (Lexer!2916) )
))
(declare-fun thiss!24550 () LexerInterface!2918)

(declare-datatypes ((List!18701 0))(
  ( (Nil!18631) (Cons!18631 (h!24032 (_ BitVec 16)) (t!158066 List!18701)) )
))
(declare-datatypes ((TokenValue!3379 0))(
  ( (FloatLiteralValue!6758 (text!24098 List!18701)) (TokenValueExt!3378 (__x!12061 Int)) (Broken!16895 (value!103383 List!18701)) (Object!3448) (End!3379) (Def!3379) (Underscore!3379) (Match!3379) (Else!3379) (Error!3379) (Case!3379) (If!3379) (Extends!3379) (Abstract!3379) (Class!3379) (Val!3379) (DelimiterValue!6758 (del!3439 List!18701)) (KeywordValue!3385 (value!103384 List!18701)) (CommentValue!6758 (value!103385 List!18701)) (WhitespaceValue!6758 (value!103386 List!18701)) (IndentationValue!3379 (value!103387 List!18701)) (String!21226) (Int32!3379) (Broken!16896 (value!103388 List!18701)) (Boolean!3380) (Unit!32464) (OperatorValue!3382 (op!3439 List!18701)) (IdentifierValue!6758 (value!103389 List!18701)) (IdentifierValue!6759 (value!103390 List!18701)) (WhitespaceValue!6759 (value!103391 List!18701)) (True!6758) (False!6758) (Broken!16897 (value!103392 List!18701)) (Broken!16898 (value!103393 List!18701)) (True!6759) (RightBrace!3379) (RightBracket!3379) (Colon!3379) (Null!3379) (Comma!3379) (LeftBracket!3379) (False!6759) (LeftBrace!3379) (ImaginaryLiteralValue!3379 (text!24099 List!18701)) (StringLiteralValue!10137 (value!103394 List!18701)) (EOFValue!3379 (value!103395 List!18701)) (IdentValue!3379 (value!103396 List!18701)) (DelimiterValue!6759 (value!103397 List!18701)) (DedentValue!3379 (value!103398 List!18701)) (NewLineValue!3379 (value!103399 List!18701)) (IntegerValue!10137 (value!103400 (_ BitVec 32)) (text!24100 List!18701)) (IntegerValue!10138 (value!103401 Int) (text!24101 List!18701)) (Times!3379) (Or!3379) (Equal!3379) (Minus!3379) (Broken!16899 (value!103402 List!18701)) (And!3379) (Div!3379) (LessEqual!3379) (Mod!3379) (Concat!7996) (Not!3379) (Plus!3379) (SpaceValue!3379 (value!103403 List!18701)) (IntegerValue!10139 (value!103404 Int) (text!24102 List!18701)) (StringLiteralValue!10138 (text!24103 List!18701)) (FloatLiteralValue!6759 (text!24104 List!18701)) (BytesLiteralValue!3379 (value!103405 List!18701)) (CommentValue!6759 (value!103406 List!18701)) (StringLiteralValue!10139 (value!103407 List!18701)) (ErrorTokenValue!3379 (msg!3440 List!18701)) )
))
(declare-datatypes ((C!9408 0))(
  ( (C!9409 (val!5300 Int)) )
))
(declare-datatypes ((Regex!4617 0))(
  ( (ElementMatch!4617 (c!279810 C!9408)) (Concat!7997 (regOne!9746 Regex!4617) (regTwo!9746 Regex!4617)) (EmptyExpr!4617) (Star!4617 (reg!4946 Regex!4617)) (EmptyLang!4617) (Union!4617 (regOne!9747 Regex!4617) (regTwo!9747 Regex!4617)) )
))
(declare-datatypes ((String!21227 0))(
  ( (String!21228 (value!103408 String)) )
))
(declare-datatypes ((List!18702 0))(
  ( (Nil!18632) (Cons!18632 (h!24033 C!9408) (t!158067 List!18702)) )
))
(declare-datatypes ((IArray!12403 0))(
  ( (IArray!12404 (innerList!6259 List!18702)) )
))
(declare-datatypes ((Conc!6199 0))(
  ( (Node!6199 (left!14865 Conc!6199) (right!15195 Conc!6199) (csize!12628 Int) (cheight!6410 Int)) (Leaf!9064 (xs!9075 IArray!12403) (csize!12629 Int)) (Empty!6199) )
))
(declare-datatypes ((BalanceConc!12342 0))(
  ( (BalanceConc!12343 (c!279811 Conc!6199)) )
))
(declare-datatypes ((TokenValueInjection!6418 0))(
  ( (TokenValueInjection!6419 (toValue!4784 Int) (toChars!4643 Int)) )
))
(declare-datatypes ((Rule!6378 0))(
  ( (Rule!6379 (regex!3289 Regex!4617) (tag!3585 String!21227) (isSeparator!3289 Bool) (transformation!3289 TokenValueInjection!6418)) )
))
(declare-datatypes ((List!18703 0))(
  ( (Nil!18633) (Cons!18633 (h!24034 Rule!6378) (t!158068 List!18703)) )
))
(declare-fun rules!3447 () List!18703)

(declare-fun rulesInvariant!2587 (LexerInterface!2918 List!18703) Bool)

(assert (=> b!1707575 (= res!765476 (rulesInvariant!2587 thiss!24550 rules!3447))))

(declare-fun b!1707576 () Bool)

(declare-fun e!1092249 () Bool)

(declare-fun e!1092234 () Bool)

(assert (=> b!1707576 (= e!1092249 e!1092234)))

(declare-fun res!765477 () Bool)

(assert (=> b!1707576 (=> (not res!765477) (not e!1092234))))

(declare-datatypes ((Token!6144 0))(
  ( (Token!6145 (value!103409 TokenValue!3379) (rule!5221 Rule!6378) (size!14822 Int) (originalCharacters!4103 List!18702)) )
))
(declare-datatypes ((tuple2!18358 0))(
  ( (tuple2!18359 (_1!10581 Token!6144) (_2!10581 List!18702)) )
))
(declare-fun lt!652696 () tuple2!18358)

(declare-fun token!523 () Token!6144)

(assert (=> b!1707576 (= res!765477 (= (_1!10581 lt!652696) token!523))))

(declare-datatypes ((Option!3613 0))(
  ( (None!3612) (Some!3612 (v!24993 tuple2!18358)) )
))
(declare-fun lt!652692 () Option!3613)

(declare-fun get!5477 (Option!3613) tuple2!18358)

(assert (=> b!1707576 (= lt!652696 (get!5477 lt!652692))))

(declare-fun b!1707577 () Bool)

(declare-fun e!1092239 () Bool)

(declare-fun e!1092243 () Bool)

(declare-fun tp!487906 () Bool)

(assert (=> b!1707577 (= e!1092239 (and e!1092243 tp!487906))))

(declare-fun tp!487915 () Bool)

(declare-fun b!1707578 () Bool)

(declare-fun e!1092247 () Bool)

(declare-fun inv!24034 (String!21227) Bool)

(declare-fun inv!24037 (TokenValueInjection!6418) Bool)

(assert (=> b!1707578 (= e!1092243 (and tp!487915 (inv!24034 (tag!3585 (h!24034 rules!3447))) (inv!24037 (transformation!3289 (h!24034 rules!3447))) e!1092247))))

(declare-fun b!1707579 () Bool)

(declare-fun res!765484 () Bool)

(assert (=> b!1707579 (=> (not res!765484) (not e!1092244))))

(declare-fun rule!422 () Rule!6378)

(declare-fun contains!3305 (List!18703 Rule!6378) Bool)

(assert (=> b!1707579 (= res!765484 (contains!3305 rules!3447 rule!422))))

(declare-fun e!1092241 () Bool)

(assert (=> b!1707580 (= e!1092241 (and tp!487916 tp!487914))))

(declare-fun b!1707581 () Bool)

(declare-fun e!1092250 () Bool)

(assert (=> b!1707581 (= e!1092234 (not e!1092250))))

(declare-fun res!765482 () Bool)

(assert (=> b!1707581 (=> res!765482 e!1092250)))

(declare-fun lt!652691 () List!18702)

(declare-fun matchR!2091 (Regex!4617 List!18702) Bool)

(assert (=> b!1707581 (= res!765482 (not (matchR!2091 (regex!3289 rule!422) lt!652691)))))

(declare-fun ruleValid!788 (LexerInterface!2918 Rule!6378) Bool)

(assert (=> b!1707581 (ruleValid!788 thiss!24550 rule!422)))

(declare-datatypes ((Unit!32465 0))(
  ( (Unit!32466) )
))
(declare-fun lt!652694 () Unit!32465)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!312 (LexerInterface!2918 Rule!6378 List!18703) Unit!32465)

(assert (=> b!1707581 (= lt!652694 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!312 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1707582 () Bool)

(declare-fun res!765480 () Bool)

(assert (=> b!1707582 (=> res!765480 e!1092250)))

(declare-fun suffix!1421 () List!18702)

(declare-fun isEmpty!11697 (List!18702) Bool)

(assert (=> b!1707582 (= res!765480 (isEmpty!11697 suffix!1421))))

(declare-fun b!1707584 () Bool)

(declare-fun res!765481 () Bool)

(assert (=> b!1707584 (=> (not res!765481) (not e!1092244))))

(declare-fun isEmpty!11698 (List!18703) Bool)

(assert (=> b!1707584 (= res!765481 (not (isEmpty!11698 rules!3447)))))

(declare-fun b!1707585 () Bool)

(declare-fun res!765483 () Bool)

(assert (=> b!1707585 (=> (not res!765483) (not e!1092234))))

(assert (=> b!1707585 (= res!765483 (= (rule!5221 token!523) rule!422))))

(declare-fun b!1707586 () Bool)

(declare-fun res!765485 () Bool)

(assert (=> b!1707586 (=> (not res!765485) (not e!1092234))))

(assert (=> b!1707586 (= res!765485 (isEmpty!11697 (_2!10581 lt!652696)))))

(declare-fun b!1707587 () Bool)

(declare-fun lt!652695 () Regex!4617)

(declare-fun validRegex!1858 (Regex!4617) Bool)

(assert (=> b!1707587 (= e!1092250 (validRegex!1858 lt!652695))))

(declare-fun lt!652693 () List!18702)

(declare-fun ++!5110 (List!18702 List!18702) List!18702)

(declare-fun head!3820 (List!18702) C!9408)

(assert (=> b!1707587 (= lt!652693 (++!5110 lt!652691 (Cons!18632 (head!3820 suffix!1421) Nil!18632)))))

(declare-fun rulesRegex!647 (LexerInterface!2918 List!18703) Regex!4617)

(assert (=> b!1707587 (= lt!652695 (rulesRegex!647 thiss!24550 rules!3447))))

(declare-fun b!1707588 () Bool)

(declare-fun e!1092245 () Bool)

(declare-fun tp!487907 () Bool)

(assert (=> b!1707588 (= e!1092245 (and tp!487907 (inv!24034 (tag!3585 rule!422)) (inv!24037 (transformation!3289 rule!422)) e!1092241))))

(assert (=> b!1707589 (= e!1092247 (and tp!487909 tp!487913))))

(declare-fun b!1707590 () Bool)

(declare-fun e!1092237 () Bool)

(declare-fun tp_is_empty!7477 () Bool)

(declare-fun tp!487912 () Bool)

(assert (=> b!1707590 (= e!1092237 (and tp_is_empty!7477 tp!487912))))

(declare-fun b!1707591 () Bool)

(declare-fun e!1092240 () Bool)

(declare-fun tp!487908 () Bool)

(assert (=> b!1707591 (= e!1092240 (and tp!487908 (inv!24034 (tag!3585 (rule!5221 token!523))) (inv!24037 (transformation!3289 (rule!5221 token!523))) e!1092235))))

(declare-fun b!1707592 () Bool)

(assert (=> b!1707592 (= e!1092244 e!1092249)))

(declare-fun res!765479 () Bool)

(assert (=> b!1707592 (=> (not res!765479) (not e!1092249))))

(declare-fun isDefined!2958 (Option!3613) Bool)

(assert (=> b!1707592 (= res!765479 (isDefined!2958 lt!652692))))

(declare-fun maxPrefix!1472 (LexerInterface!2918 List!18703 List!18702) Option!3613)

(assert (=> b!1707592 (= lt!652692 (maxPrefix!1472 thiss!24550 rules!3447 lt!652691))))

(declare-fun list!7512 (BalanceConc!12342) List!18702)

(declare-fun charsOf!1938 (Token!6144) BalanceConc!12342)

(assert (=> b!1707592 (= lt!652691 (list!7512 (charsOf!1938 token!523)))))

(declare-fun b!1707583 () Bool)

(declare-fun e!1092242 () Bool)

(declare-fun tp!487905 () Bool)

(declare-fun inv!21 (TokenValue!3379) Bool)

(assert (=> b!1707583 (= e!1092242 (and (inv!21 (value!103409 token!523)) e!1092240 tp!487905))))

(declare-fun res!765478 () Bool)

(assert (=> start!166734 (=> (not res!765478) (not e!1092244))))

(get-info :version)

(assert (=> start!166734 (= res!765478 ((_ is Lexer!2916) thiss!24550))))

(assert (=> start!166734 e!1092244))

(assert (=> start!166734 e!1092237))

(assert (=> start!166734 e!1092245))

(assert (=> start!166734 true))

(declare-fun inv!24038 (Token!6144) Bool)

(assert (=> start!166734 (and (inv!24038 token!523) e!1092242)))

(assert (=> start!166734 e!1092239))

(assert (= (and start!166734 res!765478) b!1707584))

(assert (= (and b!1707584 res!765481) b!1707575))

(assert (= (and b!1707575 res!765476) b!1707579))

(assert (= (and b!1707579 res!765484) b!1707592))

(assert (= (and b!1707592 res!765479) b!1707576))

(assert (= (and b!1707576 res!765477) b!1707586))

(assert (= (and b!1707586 res!765485) b!1707585))

(assert (= (and b!1707585 res!765483) b!1707581))

(assert (= (and b!1707581 (not res!765482)) b!1707582))

(assert (= (and b!1707582 (not res!765480)) b!1707587))

(assert (= (and start!166734 ((_ is Cons!18632) suffix!1421)) b!1707590))

(assert (= b!1707588 b!1707580))

(assert (= start!166734 b!1707588))

(assert (= b!1707591 b!1707574))

(assert (= b!1707583 b!1707591))

(assert (= start!166734 b!1707583))

(assert (= b!1707578 b!1707589))

(assert (= b!1707577 b!1707578))

(assert (= (and start!166734 ((_ is Cons!18633) rules!3447)) b!1707577))

(declare-fun m!2110915 () Bool)

(assert (=> b!1707583 m!2110915))

(declare-fun m!2110917 () Bool)

(assert (=> b!1707592 m!2110917))

(declare-fun m!2110919 () Bool)

(assert (=> b!1707592 m!2110919))

(declare-fun m!2110921 () Bool)

(assert (=> b!1707592 m!2110921))

(assert (=> b!1707592 m!2110921))

(declare-fun m!2110923 () Bool)

(assert (=> b!1707592 m!2110923))

(declare-fun m!2110925 () Bool)

(assert (=> b!1707591 m!2110925))

(declare-fun m!2110927 () Bool)

(assert (=> b!1707591 m!2110927))

(declare-fun m!2110929 () Bool)

(assert (=> b!1707579 m!2110929))

(declare-fun m!2110931 () Bool)

(assert (=> start!166734 m!2110931))

(declare-fun m!2110933 () Bool)

(assert (=> b!1707584 m!2110933))

(declare-fun m!2110935 () Bool)

(assert (=> b!1707582 m!2110935))

(declare-fun m!2110937 () Bool)

(assert (=> b!1707588 m!2110937))

(declare-fun m!2110939 () Bool)

(assert (=> b!1707588 m!2110939))

(declare-fun m!2110941 () Bool)

(assert (=> b!1707576 m!2110941))

(declare-fun m!2110943 () Bool)

(assert (=> b!1707578 m!2110943))

(declare-fun m!2110945 () Bool)

(assert (=> b!1707578 m!2110945))

(declare-fun m!2110947 () Bool)

(assert (=> b!1707587 m!2110947))

(declare-fun m!2110949 () Bool)

(assert (=> b!1707587 m!2110949))

(declare-fun m!2110951 () Bool)

(assert (=> b!1707587 m!2110951))

(declare-fun m!2110953 () Bool)

(assert (=> b!1707587 m!2110953))

(declare-fun m!2110955 () Bool)

(assert (=> b!1707581 m!2110955))

(declare-fun m!2110957 () Bool)

(assert (=> b!1707581 m!2110957))

(declare-fun m!2110959 () Bool)

(assert (=> b!1707581 m!2110959))

(declare-fun m!2110961 () Bool)

(assert (=> b!1707586 m!2110961))

(declare-fun m!2110963 () Bool)

(assert (=> b!1707575 m!2110963))

(check-sat (not b!1707591) (not b!1707581) (not b!1707592) (not b_next!46927) (not b_next!46925) (not b!1707577) (not b_next!46931) (not b!1707584) b_and!123539 (not b!1707582) b_and!123535 (not b_next!46933) b_and!123531 (not b!1707583) (not b!1707578) (not b!1707586) (not b!1707579) b_and!123533 (not b_next!46929) (not b!1707587) (not b!1707588) tp_is_empty!7477 b_and!123529 (not b!1707575) (not b!1707590) (not start!166734) b_and!123537 (not b_next!46923) (not b!1707576))
(check-sat (not b_next!46927) (not b_next!46925) (not b_next!46931) b_and!123533 b_and!123539 (not b_next!46929) b_and!123529 b_and!123537 (not b_next!46923) b_and!123535 (not b_next!46933) b_and!123531)
(get-model)

(declare-fun d!524031 () Bool)

(assert (=> d!524031 (= (isEmpty!11698 rules!3447) ((_ is Nil!18633) rules!3447))))

(assert (=> b!1707584 d!524031))

(declare-fun d!524033 () Bool)

(assert (=> d!524033 (= (isEmpty!11697 (_2!10581 lt!652696)) ((_ is Nil!18632) (_2!10581 lt!652696)))))

(assert (=> b!1707586 d!524033))

(declare-fun d!524035 () Bool)

(declare-fun res!765492 () Bool)

(declare-fun e!1092253 () Bool)

(assert (=> d!524035 (=> (not res!765492) (not e!1092253))))

(declare-fun rulesValid!1224 (LexerInterface!2918 List!18703) Bool)

(assert (=> d!524035 (= res!765492 (rulesValid!1224 thiss!24550 rules!3447))))

(assert (=> d!524035 (= (rulesInvariant!2587 thiss!24550 rules!3447) e!1092253)))

(declare-fun b!1707595 () Bool)

(declare-datatypes ((List!18705 0))(
  ( (Nil!18635) (Cons!18635 (h!24036 String!21227) (t!158086 List!18705)) )
))
(declare-fun noDuplicateTag!1224 (LexerInterface!2918 List!18703 List!18705) Bool)

(assert (=> b!1707595 (= e!1092253 (noDuplicateTag!1224 thiss!24550 rules!3447 Nil!18635))))

(assert (= (and d!524035 res!765492) b!1707595))

(declare-fun m!2110965 () Bool)

(assert (=> d!524035 m!2110965))

(declare-fun m!2110967 () Bool)

(assert (=> b!1707595 m!2110967))

(assert (=> b!1707575 d!524035))

(declare-fun d!524037 () Bool)

(assert (=> d!524037 (= (get!5477 lt!652692) (v!24993 lt!652692))))

(assert (=> b!1707576 d!524037))

(declare-fun b!1707641 () Bool)

(declare-fun e!1092292 () Bool)

(declare-fun e!1092293 () Bool)

(assert (=> b!1707641 (= e!1092292 e!1092293)))

(declare-fun res!765519 () Bool)

(assert (=> b!1707641 (=> (not res!765519) (not e!1092293))))

(declare-fun call!109312 () Bool)

(assert (=> b!1707641 (= res!765519 call!109312)))

(declare-fun b!1707642 () Bool)

(declare-fun e!1092289 () Bool)

(declare-fun call!109310 () Bool)

(assert (=> b!1707642 (= e!1092289 call!109310)))

(declare-fun c!279822 () Bool)

(declare-fun bm!109305 () Bool)

(declare-fun c!279823 () Bool)

(assert (=> bm!109305 (= call!109310 (validRegex!1858 (ite c!279823 (reg!4946 lt!652695) (ite c!279822 (regOne!9747 lt!652695) (regTwo!9746 lt!652695)))))))

(declare-fun b!1707643 () Bool)

(declare-fun res!765518 () Bool)

(assert (=> b!1707643 (=> res!765518 e!1092292)))

(assert (=> b!1707643 (= res!765518 (not ((_ is Concat!7997) lt!652695)))))

(declare-fun e!1092290 () Bool)

(assert (=> b!1707643 (= e!1092290 e!1092292)))

(declare-fun bm!109306 () Bool)

(declare-fun call!109311 () Bool)

(assert (=> bm!109306 (= call!109311 call!109310)))

(declare-fun bm!109307 () Bool)

(assert (=> bm!109307 (= call!109312 (validRegex!1858 (ite c!279822 (regTwo!9747 lt!652695) (regOne!9746 lt!652695))))))

(declare-fun b!1707644 () Bool)

(declare-fun e!1092291 () Bool)

(assert (=> b!1707644 (= e!1092291 call!109312)))

(declare-fun b!1707645 () Bool)

(declare-fun e!1092294 () Bool)

(assert (=> b!1707645 (= e!1092294 e!1092290)))

(assert (=> b!1707645 (= c!279822 ((_ is Union!4617) lt!652695))))

(declare-fun b!1707647 () Bool)

(declare-fun res!765522 () Bool)

(assert (=> b!1707647 (=> (not res!765522) (not e!1092291))))

(assert (=> b!1707647 (= res!765522 call!109311)))

(assert (=> b!1707647 (= e!1092290 e!1092291)))

(declare-fun b!1707648 () Bool)

(declare-fun e!1092295 () Bool)

(assert (=> b!1707648 (= e!1092295 e!1092294)))

(assert (=> b!1707648 (= c!279823 ((_ is Star!4617) lt!652695))))

(declare-fun b!1707649 () Bool)

(assert (=> b!1707649 (= e!1092293 call!109311)))

(declare-fun d!524041 () Bool)

(declare-fun res!765521 () Bool)

(assert (=> d!524041 (=> res!765521 e!1092295)))

(assert (=> d!524041 (= res!765521 ((_ is ElementMatch!4617) lt!652695))))

(assert (=> d!524041 (= (validRegex!1858 lt!652695) e!1092295)))

(declare-fun b!1707646 () Bool)

(assert (=> b!1707646 (= e!1092294 e!1092289)))

(declare-fun res!765520 () Bool)

(declare-fun nullable!1384 (Regex!4617) Bool)

(assert (=> b!1707646 (= res!765520 (not (nullable!1384 (reg!4946 lt!652695))))))

(assert (=> b!1707646 (=> (not res!765520) (not e!1092289))))

(assert (= (and d!524041 (not res!765521)) b!1707648))

(assert (= (and b!1707648 c!279823) b!1707646))

(assert (= (and b!1707648 (not c!279823)) b!1707645))

(assert (= (and b!1707646 res!765520) b!1707642))

(assert (= (and b!1707645 c!279822) b!1707647))

(assert (= (and b!1707645 (not c!279822)) b!1707643))

(assert (= (and b!1707647 res!765522) b!1707644))

(assert (= (and b!1707643 (not res!765518)) b!1707641))

(assert (= (and b!1707641 res!765519) b!1707649))

(assert (= (or b!1707647 b!1707649) bm!109306))

(assert (= (or b!1707644 b!1707641) bm!109307))

(assert (= (or b!1707642 bm!109306) bm!109305))

(declare-fun m!2110975 () Bool)

(assert (=> bm!109305 m!2110975))

(declare-fun m!2110977 () Bool)

(assert (=> bm!109307 m!2110977))

(declare-fun m!2110979 () Bool)

(assert (=> b!1707646 m!2110979))

(assert (=> b!1707587 d!524041))

(declare-fun d!524047 () Bool)

(declare-fun e!1092307 () Bool)

(assert (=> d!524047 e!1092307))

(declare-fun res!765533 () Bool)

(assert (=> d!524047 (=> (not res!765533) (not e!1092307))))

(declare-fun lt!652702 () List!18702)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2644 (List!18702) (InoxSet C!9408))

(assert (=> d!524047 (= res!765533 (= (content!2644 lt!652702) ((_ map or) (content!2644 lt!652691) (content!2644 (Cons!18632 (head!3820 suffix!1421) Nil!18632)))))))

(declare-fun e!1092306 () List!18702)

(assert (=> d!524047 (= lt!652702 e!1092306)))

(declare-fun c!279829 () Bool)

(assert (=> d!524047 (= c!279829 ((_ is Nil!18632) lt!652691))))

(assert (=> d!524047 (= (++!5110 lt!652691 (Cons!18632 (head!3820 suffix!1421) Nil!18632)) lt!652702)))

(declare-fun b!1707671 () Bool)

(assert (=> b!1707671 (= e!1092306 (Cons!18632 (h!24033 lt!652691) (++!5110 (t!158067 lt!652691) (Cons!18632 (head!3820 suffix!1421) Nil!18632))))))

(declare-fun b!1707672 () Bool)

(declare-fun res!765534 () Bool)

(assert (=> b!1707672 (=> (not res!765534) (not e!1092307))))

(declare-fun size!14824 (List!18702) Int)

(assert (=> b!1707672 (= res!765534 (= (size!14824 lt!652702) (+ (size!14824 lt!652691) (size!14824 (Cons!18632 (head!3820 suffix!1421) Nil!18632)))))))

(declare-fun b!1707670 () Bool)

(assert (=> b!1707670 (= e!1092306 (Cons!18632 (head!3820 suffix!1421) Nil!18632))))

(declare-fun b!1707673 () Bool)

(assert (=> b!1707673 (= e!1092307 (or (not (= (Cons!18632 (head!3820 suffix!1421) Nil!18632) Nil!18632)) (= lt!652702 lt!652691)))))

(assert (= (and d!524047 c!279829) b!1707670))

(assert (= (and d!524047 (not c!279829)) b!1707671))

(assert (= (and d!524047 res!765533) b!1707672))

(assert (= (and b!1707672 res!765534) b!1707673))

(declare-fun m!2110995 () Bool)

(assert (=> d!524047 m!2110995))

(declare-fun m!2110997 () Bool)

(assert (=> d!524047 m!2110997))

(declare-fun m!2110999 () Bool)

(assert (=> d!524047 m!2110999))

(declare-fun m!2111001 () Bool)

(assert (=> b!1707671 m!2111001))

(declare-fun m!2111003 () Bool)

(assert (=> b!1707672 m!2111003))

(declare-fun m!2111005 () Bool)

(assert (=> b!1707672 m!2111005))

(declare-fun m!2111007 () Bool)

(assert (=> b!1707672 m!2111007))

(assert (=> b!1707587 d!524047))

(declare-fun d!524053 () Bool)

(assert (=> d!524053 (= (head!3820 suffix!1421) (h!24033 suffix!1421))))

(assert (=> b!1707587 d!524053))

(declare-fun d!524055 () Bool)

(declare-fun lt!652708 () Unit!32465)

(declare-fun lemma!308 (List!18703 LexerInterface!2918 List!18703) Unit!32465)

(assert (=> d!524055 (= lt!652708 (lemma!308 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!68728 () Int)

(declare-datatypes ((List!18706 0))(
  ( (Nil!18636) (Cons!18636 (h!24037 Regex!4617) (t!158087 List!18706)) )
))
(declare-fun generalisedUnion!316 (List!18706) Regex!4617)

(declare-fun map!3832 (List!18703 Int) List!18706)

(assert (=> d!524055 (= (rulesRegex!647 thiss!24550 rules!3447) (generalisedUnion!316 (map!3832 rules!3447 lambda!68728)))))

(declare-fun bs!401592 () Bool)

(assert (= bs!401592 d!524055))

(declare-fun m!2111017 () Bool)

(assert (=> bs!401592 m!2111017))

(declare-fun m!2111019 () Bool)

(assert (=> bs!401592 m!2111019))

(assert (=> bs!401592 m!2111019))

(declare-fun m!2111021 () Bool)

(assert (=> bs!401592 m!2111021))

(assert (=> b!1707587 d!524055))

(declare-fun d!524063 () Bool)

(declare-fun res!765539 () Bool)

(declare-fun e!1092310 () Bool)

(assert (=> d!524063 (=> (not res!765539) (not e!1092310))))

(assert (=> d!524063 (= res!765539 (not (isEmpty!11697 (originalCharacters!4103 token!523))))))

(assert (=> d!524063 (= (inv!24038 token!523) e!1092310)))

(declare-fun b!1707678 () Bool)

(declare-fun res!765540 () Bool)

(assert (=> b!1707678 (=> (not res!765540) (not e!1092310))))

(declare-fun dynLambda!8469 (Int TokenValue!3379) BalanceConc!12342)

(assert (=> b!1707678 (= res!765540 (= (originalCharacters!4103 token!523) (list!7512 (dynLambda!8469 (toChars!4643 (transformation!3289 (rule!5221 token!523))) (value!103409 token!523)))))))

(declare-fun b!1707679 () Bool)

(assert (=> b!1707679 (= e!1092310 (= (size!14822 token!523) (size!14824 (originalCharacters!4103 token!523))))))

(assert (= (and d!524063 res!765539) b!1707678))

(assert (= (and b!1707678 res!765540) b!1707679))

(declare-fun b_lambda!53901 () Bool)

(assert (=> (not b_lambda!53901) (not b!1707678)))

(declare-fun t!158070 () Bool)

(declare-fun tb!100811 () Bool)

(assert (=> (and b!1707580 (= (toChars!4643 (transformation!3289 rule!422)) (toChars!4643 (transformation!3289 (rule!5221 token!523)))) t!158070) tb!100811))

(declare-fun b!1707684 () Bool)

(declare-fun e!1092313 () Bool)

(declare-fun tp!487919 () Bool)

(declare-fun inv!24041 (Conc!6199) Bool)

(assert (=> b!1707684 (= e!1092313 (and (inv!24041 (c!279811 (dynLambda!8469 (toChars!4643 (transformation!3289 (rule!5221 token!523))) (value!103409 token!523)))) tp!487919))))

(declare-fun result!121098 () Bool)

(declare-fun inv!24042 (BalanceConc!12342) Bool)

(assert (=> tb!100811 (= result!121098 (and (inv!24042 (dynLambda!8469 (toChars!4643 (transformation!3289 (rule!5221 token!523))) (value!103409 token!523))) e!1092313))))

(assert (= tb!100811 b!1707684))

(declare-fun m!2111023 () Bool)

(assert (=> b!1707684 m!2111023))

(declare-fun m!2111025 () Bool)

(assert (=> tb!100811 m!2111025))

(assert (=> b!1707678 t!158070))

(declare-fun b_and!123541 () Bool)

(assert (= b_and!123531 (and (=> t!158070 result!121098) b_and!123541)))

(declare-fun tb!100813 () Bool)

(declare-fun t!158072 () Bool)

(assert (=> (and b!1707589 (= (toChars!4643 (transformation!3289 (h!24034 rules!3447))) (toChars!4643 (transformation!3289 (rule!5221 token!523)))) t!158072) tb!100813))

(declare-fun result!121102 () Bool)

(assert (= result!121102 result!121098))

(assert (=> b!1707678 t!158072))

(declare-fun b_and!123543 () Bool)

(assert (= b_and!123535 (and (=> t!158072 result!121102) b_and!123543)))

(declare-fun t!158074 () Bool)

(declare-fun tb!100815 () Bool)

(assert (=> (and b!1707574 (= (toChars!4643 (transformation!3289 (rule!5221 token!523))) (toChars!4643 (transformation!3289 (rule!5221 token!523)))) t!158074) tb!100815))

(declare-fun result!121104 () Bool)

(assert (= result!121104 result!121098))

(assert (=> b!1707678 t!158074))

(declare-fun b_and!123545 () Bool)

(assert (= b_and!123539 (and (=> t!158074 result!121104) b_and!123545)))

(declare-fun m!2111027 () Bool)

(assert (=> d!524063 m!2111027))

(declare-fun m!2111029 () Bool)

(assert (=> b!1707678 m!2111029))

(assert (=> b!1707678 m!2111029))

(declare-fun m!2111031 () Bool)

(assert (=> b!1707678 m!2111031))

(declare-fun m!2111033 () Bool)

(assert (=> b!1707679 m!2111033))

(assert (=> start!166734 d!524063))

(declare-fun d!524065 () Bool)

(assert (=> d!524065 (= (inv!24034 (tag!3585 (h!24034 rules!3447))) (= (mod (str.len (value!103408 (tag!3585 (h!24034 rules!3447)))) 2) 0))))

(assert (=> b!1707578 d!524065))

(declare-fun d!524067 () Bool)

(declare-fun res!765543 () Bool)

(declare-fun e!1092316 () Bool)

(assert (=> d!524067 (=> (not res!765543) (not e!1092316))))

(declare-fun semiInverseModEq!1297 (Int Int) Bool)

(assert (=> d!524067 (= res!765543 (semiInverseModEq!1297 (toChars!4643 (transformation!3289 (h!24034 rules!3447))) (toValue!4784 (transformation!3289 (h!24034 rules!3447)))))))

(assert (=> d!524067 (= (inv!24037 (transformation!3289 (h!24034 rules!3447))) e!1092316)))

(declare-fun b!1707687 () Bool)

(declare-fun equivClasses!1238 (Int Int) Bool)

(assert (=> b!1707687 (= e!1092316 (equivClasses!1238 (toChars!4643 (transformation!3289 (h!24034 rules!3447))) (toValue!4784 (transformation!3289 (h!24034 rules!3447)))))))

(assert (= (and d!524067 res!765543) b!1707687))

(declare-fun m!2111035 () Bool)

(assert (=> d!524067 m!2111035))

(declare-fun m!2111037 () Bool)

(assert (=> b!1707687 m!2111037))

(assert (=> b!1707578 d!524067))

(declare-fun d!524069 () Bool)

(assert (=> d!524069 (= (inv!24034 (tag!3585 rule!422)) (= (mod (str.len (value!103408 (tag!3585 rule!422))) 2) 0))))

(assert (=> b!1707588 d!524069))

(declare-fun d!524071 () Bool)

(declare-fun res!765544 () Bool)

(declare-fun e!1092317 () Bool)

(assert (=> d!524071 (=> (not res!765544) (not e!1092317))))

(assert (=> d!524071 (= res!765544 (semiInverseModEq!1297 (toChars!4643 (transformation!3289 rule!422)) (toValue!4784 (transformation!3289 rule!422))))))

(assert (=> d!524071 (= (inv!24037 (transformation!3289 rule!422)) e!1092317)))

(declare-fun b!1707688 () Bool)

(assert (=> b!1707688 (= e!1092317 (equivClasses!1238 (toChars!4643 (transformation!3289 rule!422)) (toValue!4784 (transformation!3289 rule!422))))))

(assert (= (and d!524071 res!765544) b!1707688))

(declare-fun m!2111039 () Bool)

(assert (=> d!524071 m!2111039))

(declare-fun m!2111041 () Bool)

(assert (=> b!1707688 m!2111041))

(assert (=> b!1707588 d!524071))

(declare-fun d!524073 () Bool)

(declare-fun lt!652711 () Bool)

(declare-fun content!2646 (List!18703) (InoxSet Rule!6378))

(assert (=> d!524073 (= lt!652711 (select (content!2646 rules!3447) rule!422))))

(declare-fun e!1092322 () Bool)

(assert (=> d!524073 (= lt!652711 e!1092322)))

(declare-fun res!765550 () Bool)

(assert (=> d!524073 (=> (not res!765550) (not e!1092322))))

(assert (=> d!524073 (= res!765550 ((_ is Cons!18633) rules!3447))))

(assert (=> d!524073 (= (contains!3305 rules!3447 rule!422) lt!652711)))

(declare-fun b!1707693 () Bool)

(declare-fun e!1092323 () Bool)

(assert (=> b!1707693 (= e!1092322 e!1092323)))

(declare-fun res!765549 () Bool)

(assert (=> b!1707693 (=> res!765549 e!1092323)))

(assert (=> b!1707693 (= res!765549 (= (h!24034 rules!3447) rule!422))))

(declare-fun b!1707694 () Bool)

(assert (=> b!1707694 (= e!1092323 (contains!3305 (t!158068 rules!3447) rule!422))))

(assert (= (and d!524073 res!765550) b!1707693))

(assert (= (and b!1707693 (not res!765549)) b!1707694))

(declare-fun m!2111043 () Bool)

(assert (=> d!524073 m!2111043))

(declare-fun m!2111045 () Bool)

(assert (=> d!524073 m!2111045))

(declare-fun m!2111047 () Bool)

(assert (=> b!1707694 m!2111047))

(assert (=> b!1707579 d!524073))

(declare-fun b!1707754 () Bool)

(declare-fun e!1092355 () Bool)

(assert (=> b!1707754 (= e!1092355 (not (= (head!3820 lt!652691) (c!279810 (regex!3289 rule!422)))))))

(declare-fun b!1707755 () Bool)

(declare-fun e!1092350 () Bool)

(declare-fun lt!652732 () Bool)

(declare-fun call!109318 () Bool)

(assert (=> b!1707755 (= e!1092350 (= lt!652732 call!109318))))

(declare-fun bm!109313 () Bool)

(assert (=> bm!109313 (= call!109318 (isEmpty!11697 lt!652691))))

(declare-fun d!524075 () Bool)

(assert (=> d!524075 e!1092350))

(declare-fun c!279841 () Bool)

(assert (=> d!524075 (= c!279841 ((_ is EmptyExpr!4617) (regex!3289 rule!422)))))

(declare-fun e!1092352 () Bool)

(assert (=> d!524075 (= lt!652732 e!1092352)))

(declare-fun c!279840 () Bool)

(assert (=> d!524075 (= c!279840 (isEmpty!11697 lt!652691))))

(assert (=> d!524075 (validRegex!1858 (regex!3289 rule!422))))

(assert (=> d!524075 (= (matchR!2091 (regex!3289 rule!422) lt!652691) lt!652732)))

(declare-fun b!1707756 () Bool)

(declare-fun res!765588 () Bool)

(assert (=> b!1707756 (=> res!765588 e!1092355)))

(declare-fun tail!2543 (List!18702) List!18702)

(assert (=> b!1707756 (= res!765588 (not (isEmpty!11697 (tail!2543 lt!652691))))))

(declare-fun b!1707757 () Bool)

(declare-fun e!1092353 () Bool)

(assert (=> b!1707757 (= e!1092353 (= (head!3820 lt!652691) (c!279810 (regex!3289 rule!422))))))

(declare-fun b!1707758 () Bool)

(declare-fun res!765590 () Bool)

(assert (=> b!1707758 (=> (not res!765590) (not e!1092353))))

(assert (=> b!1707758 (= res!765590 (isEmpty!11697 (tail!2543 lt!652691)))))

(declare-fun b!1707759 () Bool)

(declare-fun e!1092349 () Bool)

(assert (=> b!1707759 (= e!1092350 e!1092349)))

(declare-fun c!279839 () Bool)

(assert (=> b!1707759 (= c!279839 ((_ is EmptyLang!4617) (regex!3289 rule!422)))))

(declare-fun b!1707760 () Bool)

(declare-fun res!765591 () Bool)

(assert (=> b!1707760 (=> (not res!765591) (not e!1092353))))

(assert (=> b!1707760 (= res!765591 (not call!109318))))

(declare-fun b!1707761 () Bool)

(assert (=> b!1707761 (= e!1092349 (not lt!652732))))

(declare-fun b!1707762 () Bool)

(declare-fun e!1092351 () Bool)

(assert (=> b!1707762 (= e!1092351 e!1092355)))

(declare-fun res!765592 () Bool)

(assert (=> b!1707762 (=> res!765592 e!1092355)))

(assert (=> b!1707762 (= res!765592 call!109318)))

(declare-fun b!1707763 () Bool)

(declare-fun res!765593 () Bool)

(declare-fun e!1092354 () Bool)

(assert (=> b!1707763 (=> res!765593 e!1092354)))

(assert (=> b!1707763 (= res!765593 e!1092353)))

(declare-fun res!765589 () Bool)

(assert (=> b!1707763 (=> (not res!765589) (not e!1092353))))

(assert (=> b!1707763 (= res!765589 lt!652732)))

(declare-fun b!1707764 () Bool)

(assert (=> b!1707764 (= e!1092354 e!1092351)))

(declare-fun res!765595 () Bool)

(assert (=> b!1707764 (=> (not res!765595) (not e!1092351))))

(assert (=> b!1707764 (= res!765595 (not lt!652732))))

(declare-fun b!1707765 () Bool)

(declare-fun res!765594 () Bool)

(assert (=> b!1707765 (=> res!765594 e!1092354)))

(assert (=> b!1707765 (= res!765594 (not ((_ is ElementMatch!4617) (regex!3289 rule!422))))))

(assert (=> b!1707765 (= e!1092349 e!1092354)))

(declare-fun b!1707766 () Bool)

(assert (=> b!1707766 (= e!1092352 (nullable!1384 (regex!3289 rule!422)))))

(declare-fun b!1707767 () Bool)

(declare-fun derivativeStep!1152 (Regex!4617 C!9408) Regex!4617)

(assert (=> b!1707767 (= e!1092352 (matchR!2091 (derivativeStep!1152 (regex!3289 rule!422) (head!3820 lt!652691)) (tail!2543 lt!652691)))))

(assert (= (and d!524075 c!279840) b!1707766))

(assert (= (and d!524075 (not c!279840)) b!1707767))

(assert (= (and d!524075 c!279841) b!1707755))

(assert (= (and d!524075 (not c!279841)) b!1707759))

(assert (= (and b!1707759 c!279839) b!1707761))

(assert (= (and b!1707759 (not c!279839)) b!1707765))

(assert (= (and b!1707765 (not res!765594)) b!1707763))

(assert (= (and b!1707763 res!765589) b!1707760))

(assert (= (and b!1707760 res!765591) b!1707758))

(assert (= (and b!1707758 res!765590) b!1707757))

(assert (= (and b!1707763 (not res!765593)) b!1707764))

(assert (= (and b!1707764 res!765595) b!1707762))

(assert (= (and b!1707762 (not res!765592)) b!1707756))

(assert (= (and b!1707756 (not res!765588)) b!1707754))

(assert (= (or b!1707755 b!1707760 b!1707762) bm!109313))

(declare-fun m!2111091 () Bool)

(assert (=> b!1707766 m!2111091))

(declare-fun m!2111093 () Bool)

(assert (=> b!1707758 m!2111093))

(assert (=> b!1707758 m!2111093))

(declare-fun m!2111095 () Bool)

(assert (=> b!1707758 m!2111095))

(declare-fun m!2111097 () Bool)

(assert (=> b!1707767 m!2111097))

(assert (=> b!1707767 m!2111097))

(declare-fun m!2111099 () Bool)

(assert (=> b!1707767 m!2111099))

(assert (=> b!1707767 m!2111093))

(assert (=> b!1707767 m!2111099))

(assert (=> b!1707767 m!2111093))

(declare-fun m!2111101 () Bool)

(assert (=> b!1707767 m!2111101))

(declare-fun m!2111103 () Bool)

(assert (=> bm!109313 m!2111103))

(assert (=> b!1707757 m!2111097))

(assert (=> b!1707754 m!2111097))

(assert (=> b!1707756 m!2111093))

(assert (=> b!1707756 m!2111093))

(assert (=> b!1707756 m!2111095))

(assert (=> d!524075 m!2111103))

(declare-fun m!2111105 () Bool)

(assert (=> d!524075 m!2111105))

(assert (=> b!1707581 d!524075))

(declare-fun d!524083 () Bool)

(declare-fun res!765605 () Bool)

(declare-fun e!1092370 () Bool)

(assert (=> d!524083 (=> (not res!765605) (not e!1092370))))

(assert (=> d!524083 (= res!765605 (validRegex!1858 (regex!3289 rule!422)))))

(assert (=> d!524083 (= (ruleValid!788 thiss!24550 rule!422) e!1092370)))

(declare-fun b!1707790 () Bool)

(declare-fun res!765606 () Bool)

(assert (=> b!1707790 (=> (not res!765606) (not e!1092370))))

(assert (=> b!1707790 (= res!765606 (not (nullable!1384 (regex!3289 rule!422))))))

(declare-fun b!1707791 () Bool)

(assert (=> b!1707791 (= e!1092370 (not (= (tag!3585 rule!422) (String!21228 ""))))))

(assert (= (and d!524083 res!765605) b!1707790))

(assert (= (and b!1707790 res!765606) b!1707791))

(assert (=> d!524083 m!2111105))

(assert (=> b!1707790 m!2111091))

(assert (=> b!1707581 d!524083))

(declare-fun d!524089 () Bool)

(assert (=> d!524089 (ruleValid!788 thiss!24550 rule!422)))

(declare-fun lt!652735 () Unit!32465)

(declare-fun choose!10368 (LexerInterface!2918 Rule!6378 List!18703) Unit!32465)

(assert (=> d!524089 (= lt!652735 (choose!10368 thiss!24550 rule!422 rules!3447))))

(assert (=> d!524089 (contains!3305 rules!3447 rule!422)))

(assert (=> d!524089 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!312 thiss!24550 rule!422 rules!3447) lt!652735)))

(declare-fun bs!401594 () Bool)

(assert (= bs!401594 d!524089))

(assert (=> bs!401594 m!2110957))

(declare-fun m!2111121 () Bool)

(assert (=> bs!401594 m!2111121))

(assert (=> bs!401594 m!2110929))

(assert (=> b!1707581 d!524089))

(declare-fun d!524099 () Bool)

(assert (=> d!524099 (= (inv!24034 (tag!3585 (rule!5221 token!523))) (= (mod (str.len (value!103408 (tag!3585 (rule!5221 token!523)))) 2) 0))))

(assert (=> b!1707591 d!524099))

(declare-fun d!524101 () Bool)

(declare-fun res!765609 () Bool)

(declare-fun e!1092373 () Bool)

(assert (=> d!524101 (=> (not res!765609) (not e!1092373))))

(assert (=> d!524101 (= res!765609 (semiInverseModEq!1297 (toChars!4643 (transformation!3289 (rule!5221 token!523))) (toValue!4784 (transformation!3289 (rule!5221 token!523)))))))

(assert (=> d!524101 (= (inv!24037 (transformation!3289 (rule!5221 token!523))) e!1092373)))

(declare-fun b!1707794 () Bool)

(assert (=> b!1707794 (= e!1092373 (equivClasses!1238 (toChars!4643 (transformation!3289 (rule!5221 token!523))) (toValue!4784 (transformation!3289 (rule!5221 token!523)))))))

(assert (= (and d!524101 res!765609) b!1707794))

(declare-fun m!2111123 () Bool)

(assert (=> d!524101 m!2111123))

(declare-fun m!2111125 () Bool)

(assert (=> b!1707794 m!2111125))

(assert (=> b!1707591 d!524101))

(declare-fun d!524103 () Bool)

(assert (=> d!524103 (= (isEmpty!11697 suffix!1421) ((_ is Nil!18632) suffix!1421))))

(assert (=> b!1707582 d!524103))

(declare-fun d!524105 () Bool)

(declare-fun isEmpty!11700 (Option!3613) Bool)

(assert (=> d!524105 (= (isDefined!2958 lt!652692) (not (isEmpty!11700 lt!652692)))))

(declare-fun bs!401595 () Bool)

(assert (= bs!401595 d!524105))

(declare-fun m!2111127 () Bool)

(assert (=> bs!401595 m!2111127))

(assert (=> b!1707592 d!524105))

(declare-fun bm!109319 () Bool)

(declare-fun call!109324 () Option!3613)

(declare-fun maxPrefixOneRule!862 (LexerInterface!2918 Rule!6378 List!18702) Option!3613)

(assert (=> bm!109319 (= call!109324 (maxPrefixOneRule!862 thiss!24550 (h!24034 rules!3447) lt!652691))))

(declare-fun b!1707917 () Bool)

(declare-fun res!765673 () Bool)

(declare-fun e!1092438 () Bool)

(assert (=> b!1707917 (=> (not res!765673) (not e!1092438))))

(declare-fun lt!652755 () Option!3613)

(assert (=> b!1707917 (= res!765673 (matchR!2091 (regex!3289 (rule!5221 (_1!10581 (get!5477 lt!652755)))) (list!7512 (charsOf!1938 (_1!10581 (get!5477 lt!652755))))))))

(declare-fun b!1707918 () Bool)

(declare-fun res!765675 () Bool)

(assert (=> b!1707918 (=> (not res!765675) (not e!1092438))))

(declare-fun apply!5106 (TokenValueInjection!6418 BalanceConc!12342) TokenValue!3379)

(declare-fun seqFromList!2271 (List!18702) BalanceConc!12342)

(assert (=> b!1707918 (= res!765675 (= (value!103409 (_1!10581 (get!5477 lt!652755))) (apply!5106 (transformation!3289 (rule!5221 (_1!10581 (get!5477 lt!652755)))) (seqFromList!2271 (originalCharacters!4103 (_1!10581 (get!5477 lt!652755)))))))))

(declare-fun b!1707919 () Bool)

(declare-fun res!765671 () Bool)

(assert (=> b!1707919 (=> (not res!765671) (not e!1092438))))

(assert (=> b!1707919 (= res!765671 (< (size!14824 (_2!10581 (get!5477 lt!652755))) (size!14824 lt!652691)))))

(declare-fun b!1707920 () Bool)

(declare-fun e!1092440 () Option!3613)

(assert (=> b!1707920 (= e!1092440 call!109324)))

(declare-fun b!1707921 () Bool)

(declare-fun lt!652758 () Option!3613)

(declare-fun lt!652759 () Option!3613)

(assert (=> b!1707921 (= e!1092440 (ite (and ((_ is None!3612) lt!652758) ((_ is None!3612) lt!652759)) None!3612 (ite ((_ is None!3612) lt!652759) lt!652758 (ite ((_ is None!3612) lt!652758) lt!652759 (ite (>= (size!14822 (_1!10581 (v!24993 lt!652758))) (size!14822 (_1!10581 (v!24993 lt!652759)))) lt!652758 lt!652759)))))))

(assert (=> b!1707921 (= lt!652758 call!109324)))

(assert (=> b!1707921 (= lt!652759 (maxPrefix!1472 thiss!24550 (t!158068 rules!3447) lt!652691))))

(declare-fun b!1707922 () Bool)

(assert (=> b!1707922 (= e!1092438 (contains!3305 rules!3447 (rule!5221 (_1!10581 (get!5477 lt!652755)))))))

(declare-fun d!524107 () Bool)

(declare-fun e!1092439 () Bool)

(assert (=> d!524107 e!1092439))

(declare-fun res!765676 () Bool)

(assert (=> d!524107 (=> res!765676 e!1092439)))

(assert (=> d!524107 (= res!765676 (isEmpty!11700 lt!652755))))

(assert (=> d!524107 (= lt!652755 e!1092440)))

(declare-fun c!279859 () Bool)

(assert (=> d!524107 (= c!279859 (and ((_ is Cons!18633) rules!3447) ((_ is Nil!18633) (t!158068 rules!3447))))))

(declare-fun lt!652757 () Unit!32465)

(declare-fun lt!652756 () Unit!32465)

(assert (=> d!524107 (= lt!652757 lt!652756)))

(declare-fun isPrefix!1530 (List!18702 List!18702) Bool)

(assert (=> d!524107 (isPrefix!1530 lt!652691 lt!652691)))

(declare-fun lemmaIsPrefixRefl!1047 (List!18702 List!18702) Unit!32465)

(assert (=> d!524107 (= lt!652756 (lemmaIsPrefixRefl!1047 lt!652691 lt!652691))))

(declare-fun rulesValidInductive!1080 (LexerInterface!2918 List!18703) Bool)

(assert (=> d!524107 (rulesValidInductive!1080 thiss!24550 rules!3447)))

(assert (=> d!524107 (= (maxPrefix!1472 thiss!24550 rules!3447 lt!652691) lt!652755)))

(declare-fun b!1707916 () Bool)

(assert (=> b!1707916 (= e!1092439 e!1092438)))

(declare-fun res!765674 () Bool)

(assert (=> b!1707916 (=> (not res!765674) (not e!1092438))))

(assert (=> b!1707916 (= res!765674 (isDefined!2958 lt!652755))))

(declare-fun b!1707923 () Bool)

(declare-fun res!765672 () Bool)

(assert (=> b!1707923 (=> (not res!765672) (not e!1092438))))

(assert (=> b!1707923 (= res!765672 (= (++!5110 (list!7512 (charsOf!1938 (_1!10581 (get!5477 lt!652755)))) (_2!10581 (get!5477 lt!652755))) lt!652691))))

(declare-fun b!1707924 () Bool)

(declare-fun res!765670 () Bool)

(assert (=> b!1707924 (=> (not res!765670) (not e!1092438))))

(assert (=> b!1707924 (= res!765670 (= (list!7512 (charsOf!1938 (_1!10581 (get!5477 lt!652755)))) (originalCharacters!4103 (_1!10581 (get!5477 lt!652755)))))))

(assert (= (and d!524107 c!279859) b!1707920))

(assert (= (and d!524107 (not c!279859)) b!1707921))

(assert (= (or b!1707920 b!1707921) bm!109319))

(assert (= (and d!524107 (not res!765676)) b!1707916))

(assert (= (and b!1707916 res!765674) b!1707924))

(assert (= (and b!1707924 res!765670) b!1707919))

(assert (= (and b!1707919 res!765671) b!1707923))

(assert (= (and b!1707923 res!765672) b!1707918))

(assert (= (and b!1707918 res!765675) b!1707917))

(assert (= (and b!1707917 res!765673) b!1707922))

(declare-fun m!2111171 () Bool)

(assert (=> d!524107 m!2111171))

(declare-fun m!2111173 () Bool)

(assert (=> d!524107 m!2111173))

(declare-fun m!2111175 () Bool)

(assert (=> d!524107 m!2111175))

(declare-fun m!2111177 () Bool)

(assert (=> d!524107 m!2111177))

(declare-fun m!2111179 () Bool)

(assert (=> b!1707924 m!2111179))

(declare-fun m!2111181 () Bool)

(assert (=> b!1707924 m!2111181))

(assert (=> b!1707924 m!2111181))

(declare-fun m!2111183 () Bool)

(assert (=> b!1707924 m!2111183))

(assert (=> b!1707919 m!2111179))

(declare-fun m!2111185 () Bool)

(assert (=> b!1707919 m!2111185))

(assert (=> b!1707919 m!2111005))

(assert (=> b!1707922 m!2111179))

(declare-fun m!2111187 () Bool)

(assert (=> b!1707922 m!2111187))

(assert (=> b!1707917 m!2111179))

(assert (=> b!1707917 m!2111181))

(assert (=> b!1707917 m!2111181))

(assert (=> b!1707917 m!2111183))

(assert (=> b!1707917 m!2111183))

(declare-fun m!2111189 () Bool)

(assert (=> b!1707917 m!2111189))

(declare-fun m!2111191 () Bool)

(assert (=> b!1707916 m!2111191))

(assert (=> b!1707923 m!2111179))

(assert (=> b!1707923 m!2111181))

(assert (=> b!1707923 m!2111181))

(assert (=> b!1707923 m!2111183))

(assert (=> b!1707923 m!2111183))

(declare-fun m!2111193 () Bool)

(assert (=> b!1707923 m!2111193))

(declare-fun m!2111195 () Bool)

(assert (=> bm!109319 m!2111195))

(assert (=> b!1707918 m!2111179))

(declare-fun m!2111197 () Bool)

(assert (=> b!1707918 m!2111197))

(assert (=> b!1707918 m!2111197))

(declare-fun m!2111199 () Bool)

(assert (=> b!1707918 m!2111199))

(declare-fun m!2111201 () Bool)

(assert (=> b!1707921 m!2111201))

(assert (=> b!1707592 d!524107))

(declare-fun d!524125 () Bool)

(declare-fun list!7514 (Conc!6199) List!18702)

(assert (=> d!524125 (= (list!7512 (charsOf!1938 token!523)) (list!7514 (c!279811 (charsOf!1938 token!523))))))

(declare-fun bs!401597 () Bool)

(assert (= bs!401597 d!524125))

(declare-fun m!2111203 () Bool)

(assert (=> bs!401597 m!2111203))

(assert (=> b!1707592 d!524125))

(declare-fun d!524127 () Bool)

(declare-fun lt!652762 () BalanceConc!12342)

(assert (=> d!524127 (= (list!7512 lt!652762) (originalCharacters!4103 token!523))))

(assert (=> d!524127 (= lt!652762 (dynLambda!8469 (toChars!4643 (transformation!3289 (rule!5221 token!523))) (value!103409 token!523)))))

(assert (=> d!524127 (= (charsOf!1938 token!523) lt!652762)))

(declare-fun b_lambda!53911 () Bool)

(assert (=> (not b_lambda!53911) (not d!524127)))

(assert (=> d!524127 t!158070))

(declare-fun b_and!123563 () Bool)

(assert (= b_and!123541 (and (=> t!158070 result!121098) b_and!123563)))

(assert (=> d!524127 t!158072))

(declare-fun b_and!123565 () Bool)

(assert (= b_and!123543 (and (=> t!158072 result!121102) b_and!123565)))

(assert (=> d!524127 t!158074))

(declare-fun b_and!123567 () Bool)

(assert (= b_and!123545 (and (=> t!158074 result!121104) b_and!123567)))

(declare-fun m!2111205 () Bool)

(assert (=> d!524127 m!2111205))

(assert (=> d!524127 m!2111029))

(assert (=> b!1707592 d!524127))

(declare-fun d!524129 () Bool)

(declare-fun c!279864 () Bool)

(assert (=> d!524129 (= c!279864 ((_ is IntegerValue!10137) (value!103409 token!523)))))

(declare-fun e!1092447 () Bool)

(assert (=> d!524129 (= (inv!21 (value!103409 token!523)) e!1092447)))

(declare-fun b!1707935 () Bool)

(declare-fun e!1092448 () Bool)

(assert (=> b!1707935 (= e!1092447 e!1092448)))

(declare-fun c!279865 () Bool)

(assert (=> b!1707935 (= c!279865 ((_ is IntegerValue!10138) (value!103409 token!523)))))

(declare-fun b!1707936 () Bool)

(declare-fun inv!17 (TokenValue!3379) Bool)

(assert (=> b!1707936 (= e!1092448 (inv!17 (value!103409 token!523)))))

(declare-fun b!1707937 () Bool)

(declare-fun res!765679 () Bool)

(declare-fun e!1092449 () Bool)

(assert (=> b!1707937 (=> res!765679 e!1092449)))

(assert (=> b!1707937 (= res!765679 (not ((_ is IntegerValue!10139) (value!103409 token!523))))))

(assert (=> b!1707937 (= e!1092448 e!1092449)))

(declare-fun b!1707938 () Bool)

(declare-fun inv!16 (TokenValue!3379) Bool)

(assert (=> b!1707938 (= e!1092447 (inv!16 (value!103409 token!523)))))

(declare-fun b!1707939 () Bool)

(declare-fun inv!15 (TokenValue!3379) Bool)

(assert (=> b!1707939 (= e!1092449 (inv!15 (value!103409 token!523)))))

(assert (= (and d!524129 c!279864) b!1707938))

(assert (= (and d!524129 (not c!279864)) b!1707935))

(assert (= (and b!1707935 c!279865) b!1707936))

(assert (= (and b!1707935 (not c!279865)) b!1707937))

(assert (= (and b!1707937 (not res!765679)) b!1707939))

(declare-fun m!2111207 () Bool)

(assert (=> b!1707936 m!2111207))

(declare-fun m!2111209 () Bool)

(assert (=> b!1707938 m!2111209))

(declare-fun m!2111211 () Bool)

(assert (=> b!1707939 m!2111211))

(assert (=> b!1707583 d!524129))

(declare-fun b!1707944 () Bool)

(declare-fun e!1092452 () Bool)

(declare-fun tp!487966 () Bool)

(assert (=> b!1707944 (= e!1092452 (and tp_is_empty!7477 tp!487966))))

(assert (=> b!1707590 (= tp!487912 e!1092452)))

(assert (= (and b!1707590 ((_ is Cons!18632) (t!158067 suffix!1421))) b!1707944))

(declare-fun b!1707955 () Bool)

(declare-fun e!1092455 () Bool)

(assert (=> b!1707955 (= e!1092455 tp_is_empty!7477)))

(declare-fun b!1707958 () Bool)

(declare-fun tp!487979 () Bool)

(declare-fun tp!487980 () Bool)

(assert (=> b!1707958 (= e!1092455 (and tp!487979 tp!487980))))

(declare-fun b!1707957 () Bool)

(declare-fun tp!487981 () Bool)

(assert (=> b!1707957 (= e!1092455 tp!487981)))

(assert (=> b!1707591 (= tp!487908 e!1092455)))

(declare-fun b!1707956 () Bool)

(declare-fun tp!487977 () Bool)

(declare-fun tp!487978 () Bool)

(assert (=> b!1707956 (= e!1092455 (and tp!487977 tp!487978))))

(assert (= (and b!1707591 ((_ is ElementMatch!4617) (regex!3289 (rule!5221 token!523)))) b!1707955))

(assert (= (and b!1707591 ((_ is Concat!7997) (regex!3289 (rule!5221 token!523)))) b!1707956))

(assert (= (and b!1707591 ((_ is Star!4617) (regex!3289 (rule!5221 token!523)))) b!1707957))

(assert (= (and b!1707591 ((_ is Union!4617) (regex!3289 (rule!5221 token!523)))) b!1707958))

(declare-fun b!1707969 () Bool)

(declare-fun b_free!46235 () Bool)

(declare-fun b_next!46939 () Bool)

(assert (=> b!1707969 (= b_free!46235 (not b_next!46939))))

(declare-fun tp!487993 () Bool)

(declare-fun b_and!123569 () Bool)

(assert (=> b!1707969 (= tp!487993 b_and!123569)))

(declare-fun b_free!46237 () Bool)

(declare-fun b_next!46941 () Bool)

(assert (=> b!1707969 (= b_free!46237 (not b_next!46941))))

(declare-fun tb!100825 () Bool)

(declare-fun t!158085 () Bool)

(assert (=> (and b!1707969 (= (toChars!4643 (transformation!3289 (h!24034 (t!158068 rules!3447)))) (toChars!4643 (transformation!3289 (rule!5221 token!523)))) t!158085) tb!100825))

(declare-fun result!121128 () Bool)

(assert (= result!121128 result!121098))

(assert (=> b!1707678 t!158085))

(assert (=> d!524127 t!158085))

(declare-fun b_and!123571 () Bool)

(declare-fun tp!487992 () Bool)

(assert (=> b!1707969 (= tp!487992 (and (=> t!158085 result!121128) b_and!123571))))

(declare-fun e!1092467 () Bool)

(assert (=> b!1707969 (= e!1092467 (and tp!487993 tp!487992))))

(declare-fun e!1092464 () Bool)

(declare-fun tp!487991 () Bool)

(declare-fun b!1707968 () Bool)

(assert (=> b!1707968 (= e!1092464 (and tp!487991 (inv!24034 (tag!3585 (h!24034 (t!158068 rules!3447)))) (inv!24037 (transformation!3289 (h!24034 (t!158068 rules!3447)))) e!1092467))))

(declare-fun b!1707967 () Bool)

(declare-fun e!1092466 () Bool)

(declare-fun tp!487990 () Bool)

(assert (=> b!1707967 (= e!1092466 (and e!1092464 tp!487990))))

(assert (=> b!1707577 (= tp!487906 e!1092466)))

(assert (= b!1707968 b!1707969))

(assert (= b!1707967 b!1707968))

(assert (= (and b!1707577 ((_ is Cons!18633) (t!158068 rules!3447))) b!1707967))

(declare-fun m!2111213 () Bool)

(assert (=> b!1707968 m!2111213))

(declare-fun m!2111215 () Bool)

(assert (=> b!1707968 m!2111215))

(declare-fun b!1707970 () Bool)

(declare-fun e!1092468 () Bool)

(assert (=> b!1707970 (= e!1092468 tp_is_empty!7477)))

(declare-fun b!1707973 () Bool)

(declare-fun tp!487996 () Bool)

(declare-fun tp!487997 () Bool)

(assert (=> b!1707973 (= e!1092468 (and tp!487996 tp!487997))))

(declare-fun b!1707972 () Bool)

(declare-fun tp!487998 () Bool)

(assert (=> b!1707972 (= e!1092468 tp!487998)))

(assert (=> b!1707578 (= tp!487915 e!1092468)))

(declare-fun b!1707971 () Bool)

(declare-fun tp!487994 () Bool)

(declare-fun tp!487995 () Bool)

(assert (=> b!1707971 (= e!1092468 (and tp!487994 tp!487995))))

(assert (= (and b!1707578 ((_ is ElementMatch!4617) (regex!3289 (h!24034 rules!3447)))) b!1707970))

(assert (= (and b!1707578 ((_ is Concat!7997) (regex!3289 (h!24034 rules!3447)))) b!1707971))

(assert (= (and b!1707578 ((_ is Star!4617) (regex!3289 (h!24034 rules!3447)))) b!1707972))

(assert (= (and b!1707578 ((_ is Union!4617) (regex!3289 (h!24034 rules!3447)))) b!1707973))

(declare-fun b!1707974 () Bool)

(declare-fun e!1092469 () Bool)

(assert (=> b!1707974 (= e!1092469 tp_is_empty!7477)))

(declare-fun b!1707977 () Bool)

(declare-fun tp!488001 () Bool)

(declare-fun tp!488002 () Bool)

(assert (=> b!1707977 (= e!1092469 (and tp!488001 tp!488002))))

(declare-fun b!1707976 () Bool)

(declare-fun tp!488003 () Bool)

(assert (=> b!1707976 (= e!1092469 tp!488003)))

(assert (=> b!1707588 (= tp!487907 e!1092469)))

(declare-fun b!1707975 () Bool)

(declare-fun tp!487999 () Bool)

(declare-fun tp!488000 () Bool)

(assert (=> b!1707975 (= e!1092469 (and tp!487999 tp!488000))))

(assert (= (and b!1707588 ((_ is ElementMatch!4617) (regex!3289 rule!422))) b!1707974))

(assert (= (and b!1707588 ((_ is Concat!7997) (regex!3289 rule!422))) b!1707975))

(assert (= (and b!1707588 ((_ is Star!4617) (regex!3289 rule!422))) b!1707976))

(assert (= (and b!1707588 ((_ is Union!4617) (regex!3289 rule!422))) b!1707977))

(declare-fun b!1707978 () Bool)

(declare-fun e!1092470 () Bool)

(declare-fun tp!488004 () Bool)

(assert (=> b!1707978 (= e!1092470 (and tp_is_empty!7477 tp!488004))))

(assert (=> b!1707583 (= tp!487905 e!1092470)))

(assert (= (and b!1707583 ((_ is Cons!18632) (originalCharacters!4103 token!523))) b!1707978))

(declare-fun b_lambda!53913 () Bool)

(assert (= b_lambda!53911 (or (and b!1707580 b_free!46221 (= (toChars!4643 (transformation!3289 rule!422)) (toChars!4643 (transformation!3289 (rule!5221 token!523))))) (and b!1707589 b_free!46225 (= (toChars!4643 (transformation!3289 (h!24034 rules!3447))) (toChars!4643 (transformation!3289 (rule!5221 token!523))))) (and b!1707574 b_free!46229) (and b!1707969 b_free!46237 (= (toChars!4643 (transformation!3289 (h!24034 (t!158068 rules!3447)))) (toChars!4643 (transformation!3289 (rule!5221 token!523))))) b_lambda!53913)))

(declare-fun b_lambda!53915 () Bool)

(assert (= b_lambda!53901 (or (and b!1707580 b_free!46221 (= (toChars!4643 (transformation!3289 rule!422)) (toChars!4643 (transformation!3289 (rule!5221 token!523))))) (and b!1707589 b_free!46225 (= (toChars!4643 (transformation!3289 (h!24034 rules!3447))) (toChars!4643 (transformation!3289 (rule!5221 token!523))))) (and b!1707574 b_free!46229) (and b!1707969 b_free!46237 (= (toChars!4643 (transformation!3289 (h!24034 (t!158068 rules!3447)))) (toChars!4643 (transformation!3289 (rule!5221 token!523))))) b_lambda!53915)))

(check-sat (not b_next!46941) (not b!1707938) (not d!524083) (not b!1707595) (not b!1707972) (not d!524127) (not d!524089) (not b!1707766) (not b!1707968) (not b!1707956) (not b!1707916) (not b!1707756) (not bm!109319) (not d!524107) b_and!123571 (not d!524125) (not b_next!46927) b_and!123563 (not b!1707790) (not b_lambda!53915) (not b!1707687) (not b!1707672) (not b_next!46925) b_and!123567 (not d!524073) (not b!1707679) (not b!1707936) (not b!1707794) (not b!1707967) (not d!524047) (not b!1707924) (not d!524035) (not b!1707957) b_and!123569 (not b!1707958) (not b!1707978) (not b_next!46931) (not b!1707684) (not d!524101) (not b!1707922) (not b!1707917) (not b!1707757) (not b!1707975) (not b!1707921) b_and!123533 (not b!1707754) (not b!1707971) (not b!1707919) b_and!123565 (not b!1707923) (not b!1707694) (not b_next!46929) tp_is_empty!7477 (not d!524063) b_and!123529 (not b_lambda!53913) b_and!123537 (not bm!109305) (not d!524071) (not bm!109313) (not b!1707918) (not b!1707939) (not d!524055) (not b_next!46923) (not b!1707973) (not b!1707977) (not d!524067) (not b!1707646) (not b!1707944) (not tb!100811) (not b!1707976) (not b_next!46939) (not b_next!46933) (not d!524075) (not b!1707688) (not b!1707767) (not b!1707678) (not bm!109307) (not b!1707758) (not d!524105) (not b!1707671))
(check-sat (not b_next!46941) b_and!123569 (not b_next!46931) b_and!123533 b_and!123565 (not b_next!46929) b_and!123529 b_and!123537 (not b_next!46923) (not b_next!46939) (not b_next!46933) b_and!123571 (not b_next!46927) b_and!123563 (not b_next!46925) b_and!123567)
(get-model)

(declare-fun d!524131 () Bool)

(assert (=> d!524131 (= (isEmpty!11697 (tail!2543 lt!652691)) ((_ is Nil!18632) (tail!2543 lt!652691)))))

(assert (=> b!1707756 d!524131))

(declare-fun d!524133 () Bool)

(assert (=> d!524133 (= (tail!2543 lt!652691) (t!158067 lt!652691))))

(assert (=> b!1707756 d!524133))

(assert (=> b!1707758 d!524131))

(assert (=> b!1707758 d!524133))

(declare-fun d!524135 () Bool)

(assert (=> d!524135 (= (isEmpty!11697 lt!652691) ((_ is Nil!18632) lt!652691))))

(assert (=> d!524075 d!524135))

(declare-fun b!1707979 () Bool)

(declare-fun e!1092474 () Bool)

(declare-fun e!1092475 () Bool)

(assert (=> b!1707979 (= e!1092474 e!1092475)))

(declare-fun res!765684 () Bool)

(assert (=> b!1707979 (=> (not res!765684) (not e!1092475))))

(declare-fun call!109327 () Bool)

(assert (=> b!1707979 (= res!765684 call!109327)))

(declare-fun b!1707980 () Bool)

(declare-fun e!1092471 () Bool)

(declare-fun call!109325 () Bool)

(assert (=> b!1707980 (= e!1092471 call!109325)))

(declare-fun c!279867 () Bool)

(declare-fun c!279866 () Bool)

(declare-fun bm!109320 () Bool)

(assert (=> bm!109320 (= call!109325 (validRegex!1858 (ite c!279867 (reg!4946 (regex!3289 rule!422)) (ite c!279866 (regOne!9747 (regex!3289 rule!422)) (regTwo!9746 (regex!3289 rule!422))))))))

(declare-fun b!1707981 () Bool)

(declare-fun res!765683 () Bool)

(assert (=> b!1707981 (=> res!765683 e!1092474)))

(assert (=> b!1707981 (= res!765683 (not ((_ is Concat!7997) (regex!3289 rule!422))))))

(declare-fun e!1092472 () Bool)

(assert (=> b!1707981 (= e!1092472 e!1092474)))

(declare-fun bm!109321 () Bool)

(declare-fun call!109326 () Bool)

(assert (=> bm!109321 (= call!109326 call!109325)))

(declare-fun bm!109322 () Bool)

(assert (=> bm!109322 (= call!109327 (validRegex!1858 (ite c!279866 (regTwo!9747 (regex!3289 rule!422)) (regOne!9746 (regex!3289 rule!422)))))))

(declare-fun b!1707982 () Bool)

(declare-fun e!1092473 () Bool)

(assert (=> b!1707982 (= e!1092473 call!109327)))

(declare-fun b!1707983 () Bool)

(declare-fun e!1092476 () Bool)

(assert (=> b!1707983 (= e!1092476 e!1092472)))

(assert (=> b!1707983 (= c!279866 ((_ is Union!4617) (regex!3289 rule!422)))))

(declare-fun b!1707985 () Bool)

(declare-fun res!765687 () Bool)

(assert (=> b!1707985 (=> (not res!765687) (not e!1092473))))

(assert (=> b!1707985 (= res!765687 call!109326)))

(assert (=> b!1707985 (= e!1092472 e!1092473)))

(declare-fun b!1707986 () Bool)

(declare-fun e!1092477 () Bool)

(assert (=> b!1707986 (= e!1092477 e!1092476)))

(assert (=> b!1707986 (= c!279867 ((_ is Star!4617) (regex!3289 rule!422)))))

(declare-fun b!1707987 () Bool)

(assert (=> b!1707987 (= e!1092475 call!109326)))

(declare-fun d!524137 () Bool)

(declare-fun res!765686 () Bool)

(assert (=> d!524137 (=> res!765686 e!1092477)))

(assert (=> d!524137 (= res!765686 ((_ is ElementMatch!4617) (regex!3289 rule!422)))))

(assert (=> d!524137 (= (validRegex!1858 (regex!3289 rule!422)) e!1092477)))

(declare-fun b!1707984 () Bool)

(assert (=> b!1707984 (= e!1092476 e!1092471)))

(declare-fun res!765685 () Bool)

(assert (=> b!1707984 (= res!765685 (not (nullable!1384 (reg!4946 (regex!3289 rule!422)))))))

(assert (=> b!1707984 (=> (not res!765685) (not e!1092471))))

(assert (= (and d!524137 (not res!765686)) b!1707986))

(assert (= (and b!1707986 c!279867) b!1707984))

(assert (= (and b!1707986 (not c!279867)) b!1707983))

(assert (= (and b!1707984 res!765685) b!1707980))

(assert (= (and b!1707983 c!279866) b!1707985))

(assert (= (and b!1707983 (not c!279866)) b!1707981))

(assert (= (and b!1707985 res!765687) b!1707982))

(assert (= (and b!1707981 (not res!765683)) b!1707979))

(assert (= (and b!1707979 res!765684) b!1707987))

(assert (= (or b!1707985 b!1707987) bm!109321))

(assert (= (or b!1707982 b!1707979) bm!109322))

(assert (= (or b!1707980 bm!109321) bm!109320))

(declare-fun m!2111217 () Bool)

(assert (=> bm!109320 m!2111217))

(declare-fun m!2111219 () Bool)

(assert (=> bm!109322 m!2111219))

(declare-fun m!2111221 () Bool)

(assert (=> b!1707984 m!2111221))

(assert (=> d!524075 d!524137))

(declare-fun d!524141 () Bool)

(assert (=> d!524141 (= (list!7512 lt!652762) (list!7514 (c!279811 lt!652762)))))

(declare-fun bs!401598 () Bool)

(assert (= bs!401598 d!524141))

(declare-fun m!2111223 () Bool)

(assert (=> bs!401598 m!2111223))

(assert (=> d!524127 d!524141))

(declare-fun d!524143 () Bool)

(declare-fun lt!652764 () Bool)

(assert (=> d!524143 (= lt!652764 (select (content!2646 (t!158068 rules!3447)) rule!422))))

(declare-fun e!1092485 () Bool)

(assert (=> d!524143 (= lt!652764 e!1092485)))

(declare-fun res!765697 () Bool)

(assert (=> d!524143 (=> (not res!765697) (not e!1092485))))

(assert (=> d!524143 (= res!765697 ((_ is Cons!18633) (t!158068 rules!3447)))))

(assert (=> d!524143 (= (contains!3305 (t!158068 rules!3447) rule!422) lt!652764)))

(declare-fun b!1708002 () Bool)

(declare-fun e!1092486 () Bool)

(assert (=> b!1708002 (= e!1092485 e!1092486)))

(declare-fun res!765696 () Bool)

(assert (=> b!1708002 (=> res!765696 e!1092486)))

(assert (=> b!1708002 (= res!765696 (= (h!24034 (t!158068 rules!3447)) rule!422))))

(declare-fun b!1708003 () Bool)

(assert (=> b!1708003 (= e!1092486 (contains!3305 (t!158068 (t!158068 rules!3447)) rule!422))))

(assert (= (and d!524143 res!765697) b!1708002))

(assert (= (and b!1708002 (not res!765696)) b!1708003))

(declare-fun m!2111225 () Bool)

(assert (=> d!524143 m!2111225))

(declare-fun m!2111227 () Bool)

(assert (=> d!524143 m!2111227))

(declare-fun m!2111229 () Bool)

(assert (=> b!1708003 m!2111229))

(assert (=> b!1707694 d!524143))

(declare-fun d!524145 () Bool)

(assert (=> d!524145 (= (list!7512 (charsOf!1938 (_1!10581 (get!5477 lt!652755)))) (list!7514 (c!279811 (charsOf!1938 (_1!10581 (get!5477 lt!652755))))))))

(declare-fun bs!401599 () Bool)

(assert (= bs!401599 d!524145))

(declare-fun m!2111231 () Bool)

(assert (=> bs!401599 m!2111231))

(assert (=> b!1707924 d!524145))

(declare-fun d!524147 () Bool)

(declare-fun lt!652765 () BalanceConc!12342)

(assert (=> d!524147 (= (list!7512 lt!652765) (originalCharacters!4103 (_1!10581 (get!5477 lt!652755))))))

(assert (=> d!524147 (= lt!652765 (dynLambda!8469 (toChars!4643 (transformation!3289 (rule!5221 (_1!10581 (get!5477 lt!652755))))) (value!103409 (_1!10581 (get!5477 lt!652755)))))))

(assert (=> d!524147 (= (charsOf!1938 (_1!10581 (get!5477 lt!652755))) lt!652765)))

(declare-fun b_lambda!53917 () Bool)

(assert (=> (not b_lambda!53917) (not d!524147)))

(declare-fun t!158090 () Bool)

(declare-fun tb!100827 () Bool)

(assert (=> (and b!1707580 (= (toChars!4643 (transformation!3289 rule!422)) (toChars!4643 (transformation!3289 (rule!5221 (_1!10581 (get!5477 lt!652755)))))) t!158090) tb!100827))

(declare-fun b!1708004 () Bool)

(declare-fun e!1092487 () Bool)

(declare-fun tp!488005 () Bool)

(assert (=> b!1708004 (= e!1092487 (and (inv!24041 (c!279811 (dynLambda!8469 (toChars!4643 (transformation!3289 (rule!5221 (_1!10581 (get!5477 lt!652755))))) (value!103409 (_1!10581 (get!5477 lt!652755)))))) tp!488005))))

(declare-fun result!121130 () Bool)

(assert (=> tb!100827 (= result!121130 (and (inv!24042 (dynLambda!8469 (toChars!4643 (transformation!3289 (rule!5221 (_1!10581 (get!5477 lt!652755))))) (value!103409 (_1!10581 (get!5477 lt!652755))))) e!1092487))))

(assert (= tb!100827 b!1708004))

(declare-fun m!2111247 () Bool)

(assert (=> b!1708004 m!2111247))

(declare-fun m!2111249 () Bool)

(assert (=> tb!100827 m!2111249))

(assert (=> d!524147 t!158090))

(declare-fun b_and!123573 () Bool)

(assert (= b_and!123563 (and (=> t!158090 result!121130) b_and!123573)))

(declare-fun t!158092 () Bool)

(declare-fun tb!100829 () Bool)

(assert (=> (and b!1707589 (= (toChars!4643 (transformation!3289 (h!24034 rules!3447))) (toChars!4643 (transformation!3289 (rule!5221 (_1!10581 (get!5477 lt!652755)))))) t!158092) tb!100829))

(declare-fun result!121132 () Bool)

(assert (= result!121132 result!121130))

(assert (=> d!524147 t!158092))

(declare-fun b_and!123575 () Bool)

(assert (= b_and!123565 (and (=> t!158092 result!121132) b_and!123575)))

(declare-fun tb!100831 () Bool)

(declare-fun t!158094 () Bool)

(assert (=> (and b!1707574 (= (toChars!4643 (transformation!3289 (rule!5221 token!523))) (toChars!4643 (transformation!3289 (rule!5221 (_1!10581 (get!5477 lt!652755)))))) t!158094) tb!100831))

(declare-fun result!121134 () Bool)

(assert (= result!121134 result!121130))

(assert (=> d!524147 t!158094))

(declare-fun b_and!123577 () Bool)

(assert (= b_and!123567 (and (=> t!158094 result!121134) b_and!123577)))

(declare-fun t!158096 () Bool)

(declare-fun tb!100833 () Bool)

(assert (=> (and b!1707969 (= (toChars!4643 (transformation!3289 (h!24034 (t!158068 rules!3447)))) (toChars!4643 (transformation!3289 (rule!5221 (_1!10581 (get!5477 lt!652755)))))) t!158096) tb!100833))

(declare-fun result!121136 () Bool)

(assert (= result!121136 result!121130))

(assert (=> d!524147 t!158096))

(declare-fun b_and!123579 () Bool)

(assert (= b_and!123571 (and (=> t!158096 result!121136) b_and!123579)))

(declare-fun m!2111251 () Bool)

(assert (=> d!524147 m!2111251))

(declare-fun m!2111253 () Bool)

(assert (=> d!524147 m!2111253))

(assert (=> b!1707924 d!524147))

(declare-fun d!524151 () Bool)

(assert (=> d!524151 (= (get!5477 lt!652755) (v!24993 lt!652755))))

(assert (=> b!1707924 d!524151))

(declare-fun b!1708005 () Bool)

(declare-fun e!1092491 () Bool)

(declare-fun e!1092492 () Bool)

(assert (=> b!1708005 (= e!1092491 e!1092492)))

(declare-fun res!765699 () Bool)

(assert (=> b!1708005 (=> (not res!765699) (not e!1092492))))

(declare-fun call!109331 () Bool)

(assert (=> b!1708005 (= res!765699 call!109331)))

(declare-fun b!1708006 () Bool)

(declare-fun e!1092488 () Bool)

(declare-fun call!109329 () Bool)

(assert (=> b!1708006 (= e!1092488 call!109329)))

(declare-fun bm!109324 () Bool)

(declare-fun c!279871 () Bool)

(declare-fun c!279872 () Bool)

(assert (=> bm!109324 (= call!109329 (validRegex!1858 (ite c!279872 (reg!4946 (ite c!279822 (regTwo!9747 lt!652695) (regOne!9746 lt!652695))) (ite c!279871 (regOne!9747 (ite c!279822 (regTwo!9747 lt!652695) (regOne!9746 lt!652695))) (regTwo!9746 (ite c!279822 (regTwo!9747 lt!652695) (regOne!9746 lt!652695)))))))))

(declare-fun b!1708007 () Bool)

(declare-fun res!765698 () Bool)

(assert (=> b!1708007 (=> res!765698 e!1092491)))

(assert (=> b!1708007 (= res!765698 (not ((_ is Concat!7997) (ite c!279822 (regTwo!9747 lt!652695) (regOne!9746 lt!652695)))))))

(declare-fun e!1092489 () Bool)

(assert (=> b!1708007 (= e!1092489 e!1092491)))

(declare-fun bm!109325 () Bool)

(declare-fun call!109330 () Bool)

(assert (=> bm!109325 (= call!109330 call!109329)))

(declare-fun bm!109326 () Bool)

(assert (=> bm!109326 (= call!109331 (validRegex!1858 (ite c!279871 (regTwo!9747 (ite c!279822 (regTwo!9747 lt!652695) (regOne!9746 lt!652695))) (regOne!9746 (ite c!279822 (regTwo!9747 lt!652695) (regOne!9746 lt!652695))))))))

(declare-fun b!1708008 () Bool)

(declare-fun e!1092490 () Bool)

(assert (=> b!1708008 (= e!1092490 call!109331)))

(declare-fun b!1708009 () Bool)

(declare-fun e!1092493 () Bool)

(assert (=> b!1708009 (= e!1092493 e!1092489)))

(assert (=> b!1708009 (= c!279871 ((_ is Union!4617) (ite c!279822 (regTwo!9747 lt!652695) (regOne!9746 lt!652695))))))

(declare-fun b!1708011 () Bool)

(declare-fun res!765702 () Bool)

(assert (=> b!1708011 (=> (not res!765702) (not e!1092490))))

(assert (=> b!1708011 (= res!765702 call!109330)))

(assert (=> b!1708011 (= e!1092489 e!1092490)))

(declare-fun b!1708012 () Bool)

(declare-fun e!1092494 () Bool)

(assert (=> b!1708012 (= e!1092494 e!1092493)))

(assert (=> b!1708012 (= c!279872 ((_ is Star!4617) (ite c!279822 (regTwo!9747 lt!652695) (regOne!9746 lt!652695))))))

(declare-fun b!1708013 () Bool)

(assert (=> b!1708013 (= e!1092492 call!109330)))

(declare-fun d!524153 () Bool)

(declare-fun res!765701 () Bool)

(assert (=> d!524153 (=> res!765701 e!1092494)))

(assert (=> d!524153 (= res!765701 ((_ is ElementMatch!4617) (ite c!279822 (regTwo!9747 lt!652695) (regOne!9746 lt!652695))))))

(assert (=> d!524153 (= (validRegex!1858 (ite c!279822 (regTwo!9747 lt!652695) (regOne!9746 lt!652695))) e!1092494)))

(declare-fun b!1708010 () Bool)

(assert (=> b!1708010 (= e!1092493 e!1092488)))

(declare-fun res!765700 () Bool)

(assert (=> b!1708010 (= res!765700 (not (nullable!1384 (reg!4946 (ite c!279822 (regTwo!9747 lt!652695) (regOne!9746 lt!652695))))))))

(assert (=> b!1708010 (=> (not res!765700) (not e!1092488))))

(assert (= (and d!524153 (not res!765701)) b!1708012))

(assert (= (and b!1708012 c!279872) b!1708010))

(assert (= (and b!1708012 (not c!279872)) b!1708009))

(assert (= (and b!1708010 res!765700) b!1708006))

(assert (= (and b!1708009 c!279871) b!1708011))

(assert (= (and b!1708009 (not c!279871)) b!1708007))

(assert (= (and b!1708011 res!765702) b!1708008))

(assert (= (and b!1708007 (not res!765698)) b!1708005))

(assert (= (and b!1708005 res!765699) b!1708013))

(assert (= (or b!1708011 b!1708013) bm!109325))

(assert (= (or b!1708008 b!1708005) bm!109326))

(assert (= (or b!1708006 bm!109325) bm!109324))

(declare-fun m!2111255 () Bool)

(assert (=> bm!109324 m!2111255))

(declare-fun m!2111257 () Bool)

(assert (=> bm!109326 m!2111257))

(declare-fun m!2111259 () Bool)

(assert (=> b!1708010 m!2111259))

(assert (=> bm!109307 d!524153))

(declare-fun d!524155 () Bool)

(assert (=> d!524155 true))

(declare-fun order!11233 () Int)

(declare-fun lambda!68731 () Int)

(declare-fun order!11235 () Int)

(declare-fun dynLambda!8470 (Int Int) Int)

(declare-fun dynLambda!8471 (Int Int) Int)

(assert (=> d!524155 (< (dynLambda!8470 order!11233 (toValue!4784 (transformation!3289 (h!24034 rules!3447)))) (dynLambda!8471 order!11235 lambda!68731))))

(declare-fun Forall2!548 (Int) Bool)

(assert (=> d!524155 (= (equivClasses!1238 (toChars!4643 (transformation!3289 (h!24034 rules!3447))) (toValue!4784 (transformation!3289 (h!24034 rules!3447)))) (Forall2!548 lambda!68731))))

(declare-fun bs!401600 () Bool)

(assert (= bs!401600 d!524155))

(declare-fun m!2111269 () Bool)

(assert (=> bs!401600 m!2111269))

(assert (=> b!1707687 d!524155))

(declare-fun d!524165 () Bool)

(assert (=> d!524165 (= (inv!24034 (tag!3585 (h!24034 (t!158068 rules!3447)))) (= (mod (str.len (value!103408 (tag!3585 (h!24034 (t!158068 rules!3447))))) 2) 0))))

(assert (=> b!1707968 d!524165))

(declare-fun d!524167 () Bool)

(declare-fun res!765705 () Bool)

(declare-fun e!1092512 () Bool)

(assert (=> d!524167 (=> (not res!765705) (not e!1092512))))

(assert (=> d!524167 (= res!765705 (semiInverseModEq!1297 (toChars!4643 (transformation!3289 (h!24034 (t!158068 rules!3447)))) (toValue!4784 (transformation!3289 (h!24034 (t!158068 rules!3447))))))))

(assert (=> d!524167 (= (inv!24037 (transformation!3289 (h!24034 (t!158068 rules!3447)))) e!1092512)))

(declare-fun b!1708048 () Bool)

(assert (=> b!1708048 (= e!1092512 (equivClasses!1238 (toChars!4643 (transformation!3289 (h!24034 (t!158068 rules!3447)))) (toValue!4784 (transformation!3289 (h!24034 (t!158068 rules!3447))))))))

(assert (= (and d!524167 res!765705) b!1708048))

(declare-fun m!2111271 () Bool)

(assert (=> d!524167 m!2111271))

(declare-fun m!2111273 () Bool)

(assert (=> b!1708048 m!2111273))

(assert (=> b!1707968 d!524167))

(assert (=> b!1707918 d!524151))

(declare-fun d!524169 () Bool)

(declare-fun dynLambda!8472 (Int BalanceConc!12342) TokenValue!3379)

(assert (=> d!524169 (= (apply!5106 (transformation!3289 (rule!5221 (_1!10581 (get!5477 lt!652755)))) (seqFromList!2271 (originalCharacters!4103 (_1!10581 (get!5477 lt!652755))))) (dynLambda!8472 (toValue!4784 (transformation!3289 (rule!5221 (_1!10581 (get!5477 lt!652755))))) (seqFromList!2271 (originalCharacters!4103 (_1!10581 (get!5477 lt!652755))))))))

(declare-fun b_lambda!53919 () Bool)

(assert (=> (not b_lambda!53919) (not d!524169)))

(declare-fun tb!100835 () Bool)

(declare-fun t!158098 () Bool)

(assert (=> (and b!1707580 (= (toValue!4784 (transformation!3289 rule!422)) (toValue!4784 (transformation!3289 (rule!5221 (_1!10581 (get!5477 lt!652755)))))) t!158098) tb!100835))

(declare-fun result!121138 () Bool)

(assert (=> tb!100835 (= result!121138 (inv!21 (dynLambda!8472 (toValue!4784 (transformation!3289 (rule!5221 (_1!10581 (get!5477 lt!652755))))) (seqFromList!2271 (originalCharacters!4103 (_1!10581 (get!5477 lt!652755)))))))))

(declare-fun m!2111275 () Bool)

(assert (=> tb!100835 m!2111275))

(assert (=> d!524169 t!158098))

(declare-fun b_and!123581 () Bool)

(assert (= b_and!123529 (and (=> t!158098 result!121138) b_and!123581)))

(declare-fun t!158100 () Bool)

(declare-fun tb!100837 () Bool)

(assert (=> (and b!1707589 (= (toValue!4784 (transformation!3289 (h!24034 rules!3447))) (toValue!4784 (transformation!3289 (rule!5221 (_1!10581 (get!5477 lt!652755)))))) t!158100) tb!100837))

(declare-fun result!121142 () Bool)

(assert (= result!121142 result!121138))

(assert (=> d!524169 t!158100))

(declare-fun b_and!123583 () Bool)

(assert (= b_and!123533 (and (=> t!158100 result!121142) b_and!123583)))

(declare-fun t!158102 () Bool)

(declare-fun tb!100839 () Bool)

(assert (=> (and b!1707574 (= (toValue!4784 (transformation!3289 (rule!5221 token!523))) (toValue!4784 (transformation!3289 (rule!5221 (_1!10581 (get!5477 lt!652755)))))) t!158102) tb!100839))

(declare-fun result!121144 () Bool)

(assert (= result!121144 result!121138))

(assert (=> d!524169 t!158102))

(declare-fun b_and!123585 () Bool)

(assert (= b_and!123537 (and (=> t!158102 result!121144) b_and!123585)))

(declare-fun tb!100841 () Bool)

(declare-fun t!158104 () Bool)

(assert (=> (and b!1707969 (= (toValue!4784 (transformation!3289 (h!24034 (t!158068 rules!3447)))) (toValue!4784 (transformation!3289 (rule!5221 (_1!10581 (get!5477 lt!652755)))))) t!158104) tb!100841))

(declare-fun result!121146 () Bool)

(assert (= result!121146 result!121138))

(assert (=> d!524169 t!158104))

(declare-fun b_and!123587 () Bool)

(assert (= b_and!123569 (and (=> t!158104 result!121146) b_and!123587)))

(assert (=> d!524169 m!2111197))

(declare-fun m!2111277 () Bool)

(assert (=> d!524169 m!2111277))

(assert (=> b!1707918 d!524169))

(declare-fun d!524171 () Bool)

(declare-fun fromListB!1044 (List!18702) BalanceConc!12342)

(assert (=> d!524171 (= (seqFromList!2271 (originalCharacters!4103 (_1!10581 (get!5477 lt!652755)))) (fromListB!1044 (originalCharacters!4103 (_1!10581 (get!5477 lt!652755)))))))

(declare-fun bs!401601 () Bool)

(assert (= bs!401601 d!524171))

(declare-fun m!2111279 () Bool)

(assert (=> bs!401601 m!2111279))

(assert (=> b!1707918 d!524171))

(declare-fun b!1708051 () Bool)

(declare-fun e!1092522 () Bool)

(assert (=> b!1708051 (= e!1092522 (not (= (head!3820 (tail!2543 lt!652691)) (c!279810 (derivativeStep!1152 (regex!3289 rule!422) (head!3820 lt!652691))))))))

(declare-fun b!1708052 () Bool)

(declare-fun e!1092517 () Bool)

(declare-fun lt!652769 () Bool)

(declare-fun call!109344 () Bool)

(assert (=> b!1708052 (= e!1092517 (= lt!652769 call!109344))))

(declare-fun bm!109339 () Bool)

(assert (=> bm!109339 (= call!109344 (isEmpty!11697 (tail!2543 lt!652691)))))

(declare-fun d!524173 () Bool)

(assert (=> d!524173 e!1092517))

(declare-fun c!279890 () Bool)

(assert (=> d!524173 (= c!279890 ((_ is EmptyExpr!4617) (derivativeStep!1152 (regex!3289 rule!422) (head!3820 lt!652691))))))

(declare-fun e!1092519 () Bool)

(assert (=> d!524173 (= lt!652769 e!1092519)))

(declare-fun c!279889 () Bool)

(assert (=> d!524173 (= c!279889 (isEmpty!11697 (tail!2543 lt!652691)))))

(assert (=> d!524173 (validRegex!1858 (derivativeStep!1152 (regex!3289 rule!422) (head!3820 lt!652691)))))

(assert (=> d!524173 (= (matchR!2091 (derivativeStep!1152 (regex!3289 rule!422) (head!3820 lt!652691)) (tail!2543 lt!652691)) lt!652769)))

(declare-fun b!1708053 () Bool)

(declare-fun res!765706 () Bool)

(assert (=> b!1708053 (=> res!765706 e!1092522)))

(assert (=> b!1708053 (= res!765706 (not (isEmpty!11697 (tail!2543 (tail!2543 lt!652691)))))))

(declare-fun b!1708054 () Bool)

(declare-fun e!1092520 () Bool)

(assert (=> b!1708054 (= e!1092520 (= (head!3820 (tail!2543 lt!652691)) (c!279810 (derivativeStep!1152 (regex!3289 rule!422) (head!3820 lt!652691)))))))

(declare-fun b!1708055 () Bool)

(declare-fun res!765708 () Bool)

(assert (=> b!1708055 (=> (not res!765708) (not e!1092520))))

(assert (=> b!1708055 (= res!765708 (isEmpty!11697 (tail!2543 (tail!2543 lt!652691))))))

(declare-fun b!1708056 () Bool)

(declare-fun e!1092516 () Bool)

(assert (=> b!1708056 (= e!1092517 e!1092516)))

(declare-fun c!279888 () Bool)

(assert (=> b!1708056 (= c!279888 ((_ is EmptyLang!4617) (derivativeStep!1152 (regex!3289 rule!422) (head!3820 lt!652691))))))

(declare-fun b!1708057 () Bool)

(declare-fun res!765709 () Bool)

(assert (=> b!1708057 (=> (not res!765709) (not e!1092520))))

(assert (=> b!1708057 (= res!765709 (not call!109344))))

(declare-fun b!1708058 () Bool)

(assert (=> b!1708058 (= e!1092516 (not lt!652769))))

(declare-fun b!1708059 () Bool)

(declare-fun e!1092518 () Bool)

(assert (=> b!1708059 (= e!1092518 e!1092522)))

(declare-fun res!765710 () Bool)

(assert (=> b!1708059 (=> res!765710 e!1092522)))

(assert (=> b!1708059 (= res!765710 call!109344)))

(declare-fun b!1708060 () Bool)

(declare-fun res!765711 () Bool)

(declare-fun e!1092521 () Bool)

(assert (=> b!1708060 (=> res!765711 e!1092521)))

(assert (=> b!1708060 (= res!765711 e!1092520)))

(declare-fun res!765707 () Bool)

(assert (=> b!1708060 (=> (not res!765707) (not e!1092520))))

(assert (=> b!1708060 (= res!765707 lt!652769)))

(declare-fun b!1708061 () Bool)

(assert (=> b!1708061 (= e!1092521 e!1092518)))

(declare-fun res!765713 () Bool)

(assert (=> b!1708061 (=> (not res!765713) (not e!1092518))))

(assert (=> b!1708061 (= res!765713 (not lt!652769))))

(declare-fun b!1708062 () Bool)

(declare-fun res!765712 () Bool)

(assert (=> b!1708062 (=> res!765712 e!1092521)))

(assert (=> b!1708062 (= res!765712 (not ((_ is ElementMatch!4617) (derivativeStep!1152 (regex!3289 rule!422) (head!3820 lt!652691)))))))

(assert (=> b!1708062 (= e!1092516 e!1092521)))

(declare-fun b!1708063 () Bool)

(assert (=> b!1708063 (= e!1092519 (nullable!1384 (derivativeStep!1152 (regex!3289 rule!422) (head!3820 lt!652691))))))

(declare-fun b!1708064 () Bool)

(assert (=> b!1708064 (= e!1092519 (matchR!2091 (derivativeStep!1152 (derivativeStep!1152 (regex!3289 rule!422) (head!3820 lt!652691)) (head!3820 (tail!2543 lt!652691))) (tail!2543 (tail!2543 lt!652691))))))

(assert (= (and d!524173 c!279889) b!1708063))

(assert (= (and d!524173 (not c!279889)) b!1708064))

(assert (= (and d!524173 c!279890) b!1708052))

(assert (= (and d!524173 (not c!279890)) b!1708056))

(assert (= (and b!1708056 c!279888) b!1708058))

(assert (= (and b!1708056 (not c!279888)) b!1708062))

(assert (= (and b!1708062 (not res!765712)) b!1708060))

(assert (= (and b!1708060 res!765707) b!1708057))

(assert (= (and b!1708057 res!765709) b!1708055))

(assert (= (and b!1708055 res!765708) b!1708054))

(assert (= (and b!1708060 (not res!765711)) b!1708061))

(assert (= (and b!1708061 res!765713) b!1708059))

(assert (= (and b!1708059 (not res!765710)) b!1708053))

(assert (= (and b!1708053 (not res!765706)) b!1708051))

(assert (= (or b!1708052 b!1708057 b!1708059) bm!109339))

(assert (=> b!1708063 m!2111099))

(declare-fun m!2111281 () Bool)

(assert (=> b!1708063 m!2111281))

(assert (=> b!1708055 m!2111093))

(declare-fun m!2111283 () Bool)

(assert (=> b!1708055 m!2111283))

(assert (=> b!1708055 m!2111283))

(declare-fun m!2111285 () Bool)

(assert (=> b!1708055 m!2111285))

(assert (=> b!1708064 m!2111093))

(declare-fun m!2111287 () Bool)

(assert (=> b!1708064 m!2111287))

(assert (=> b!1708064 m!2111099))

(assert (=> b!1708064 m!2111287))

(declare-fun m!2111289 () Bool)

(assert (=> b!1708064 m!2111289))

(assert (=> b!1708064 m!2111093))

(assert (=> b!1708064 m!2111283))

(assert (=> b!1708064 m!2111289))

(assert (=> b!1708064 m!2111283))

(declare-fun m!2111291 () Bool)

(assert (=> b!1708064 m!2111291))

(assert (=> bm!109339 m!2111093))

(assert (=> bm!109339 m!2111095))

(assert (=> b!1708054 m!2111093))

(assert (=> b!1708054 m!2111287))

(assert (=> b!1708051 m!2111093))

(assert (=> b!1708051 m!2111287))

(assert (=> b!1708053 m!2111093))

(assert (=> b!1708053 m!2111283))

(assert (=> b!1708053 m!2111283))

(assert (=> b!1708053 m!2111285))

(assert (=> d!524173 m!2111093))

(assert (=> d!524173 m!2111095))

(assert (=> d!524173 m!2111099))

(declare-fun m!2111293 () Bool)

(assert (=> d!524173 m!2111293))

(assert (=> b!1707767 d!524173))

(declare-fun e!1092535 () Regex!4617)

(declare-fun b!1708085 () Bool)

(declare-fun call!109354 () Regex!4617)

(declare-fun call!109353 () Regex!4617)

(assert (=> b!1708085 (= e!1092535 (Union!4617 (Concat!7997 call!109354 (regTwo!9746 (regex!3289 rule!422))) call!109353))))

(declare-fun b!1708086 () Bool)

(declare-fun c!279905 () Bool)

(assert (=> b!1708086 (= c!279905 (nullable!1384 (regOne!9746 (regex!3289 rule!422))))))

(declare-fun e!1092537 () Regex!4617)

(assert (=> b!1708086 (= e!1092537 e!1092535)))

(declare-fun b!1708087 () Bool)

(declare-fun e!1092533 () Regex!4617)

(declare-fun e!1092534 () Regex!4617)

(assert (=> b!1708087 (= e!1092533 e!1092534)))

(declare-fun c!279903 () Bool)

(assert (=> b!1708087 (= c!279903 ((_ is ElementMatch!4617) (regex!3289 rule!422)))))

(declare-fun b!1708088 () Bool)

(declare-fun e!1092536 () Regex!4617)

(assert (=> b!1708088 (= e!1092536 e!1092537)))

(declare-fun c!279901 () Bool)

(assert (=> b!1708088 (= c!279901 ((_ is Star!4617) (regex!3289 rule!422)))))

(declare-fun b!1708089 () Bool)

(declare-fun call!109355 () Regex!4617)

(assert (=> b!1708089 (= e!1092536 (Union!4617 call!109354 call!109355))))

(declare-fun d!524175 () Bool)

(declare-fun lt!652772 () Regex!4617)

(assert (=> d!524175 (validRegex!1858 lt!652772)))

(assert (=> d!524175 (= lt!652772 e!1092533)))

(declare-fun c!279904 () Bool)

(assert (=> d!524175 (= c!279904 (or ((_ is EmptyExpr!4617) (regex!3289 rule!422)) ((_ is EmptyLang!4617) (regex!3289 rule!422))))))

(assert (=> d!524175 (validRegex!1858 (regex!3289 rule!422))))

(assert (=> d!524175 (= (derivativeStep!1152 (regex!3289 rule!422) (head!3820 lt!652691)) lt!652772)))

(declare-fun bm!109348 () Bool)

(declare-fun call!109356 () Regex!4617)

(assert (=> bm!109348 (= call!109356 call!109355)))

(declare-fun bm!109349 () Bool)

(assert (=> bm!109349 (= call!109353 call!109356)))

(declare-fun b!1708090 () Bool)

(assert (=> b!1708090 (= e!1092534 (ite (= (head!3820 lt!652691) (c!279810 (regex!3289 rule!422))) EmptyExpr!4617 EmptyLang!4617))))

(declare-fun b!1708091 () Bool)

(assert (=> b!1708091 (= e!1092537 (Concat!7997 call!109356 (regex!3289 rule!422)))))

(declare-fun bm!109350 () Bool)

(declare-fun c!279902 () Bool)

(assert (=> bm!109350 (= call!109355 (derivativeStep!1152 (ite c!279902 (regTwo!9747 (regex!3289 rule!422)) (ite c!279901 (reg!4946 (regex!3289 rule!422)) (ite c!279905 (regTwo!9746 (regex!3289 rule!422)) (regOne!9746 (regex!3289 rule!422))))) (head!3820 lt!652691)))))

(declare-fun b!1708092 () Bool)

(assert (=> b!1708092 (= e!1092533 EmptyLang!4617)))

(declare-fun b!1708093 () Bool)

(assert (=> b!1708093 (= c!279902 ((_ is Union!4617) (regex!3289 rule!422)))))

(assert (=> b!1708093 (= e!1092534 e!1092536)))

(declare-fun b!1708094 () Bool)

(assert (=> b!1708094 (= e!1092535 (Union!4617 (Concat!7997 call!109353 (regTwo!9746 (regex!3289 rule!422))) EmptyLang!4617))))

(declare-fun bm!109351 () Bool)

(assert (=> bm!109351 (= call!109354 (derivativeStep!1152 (ite c!279902 (regOne!9747 (regex!3289 rule!422)) (regOne!9746 (regex!3289 rule!422))) (head!3820 lt!652691)))))

(assert (= (and d!524175 c!279904) b!1708092))

(assert (= (and d!524175 (not c!279904)) b!1708087))

(assert (= (and b!1708087 c!279903) b!1708090))

(assert (= (and b!1708087 (not c!279903)) b!1708093))

(assert (= (and b!1708093 c!279902) b!1708089))

(assert (= (and b!1708093 (not c!279902)) b!1708088))

(assert (= (and b!1708088 c!279901) b!1708091))

(assert (= (and b!1708088 (not c!279901)) b!1708086))

(assert (= (and b!1708086 c!279905) b!1708085))

(assert (= (and b!1708086 (not c!279905)) b!1708094))

(assert (= (or b!1708085 b!1708094) bm!109349))

(assert (= (or b!1708091 bm!109349) bm!109348))

(assert (= (or b!1708089 bm!109348) bm!109350))

(assert (= (or b!1708089 b!1708085) bm!109351))

(declare-fun m!2111295 () Bool)

(assert (=> b!1708086 m!2111295))

(declare-fun m!2111297 () Bool)

(assert (=> d!524175 m!2111297))

(assert (=> d!524175 m!2111105))

(assert (=> bm!109350 m!2111097))

(declare-fun m!2111299 () Bool)

(assert (=> bm!109350 m!2111299))

(assert (=> bm!109351 m!2111097))

(declare-fun m!2111301 () Bool)

(assert (=> bm!109351 m!2111301))

(assert (=> b!1707767 d!524175))

(declare-fun d!524177 () Bool)

(assert (=> d!524177 (= (head!3820 lt!652691) (h!24033 lt!652691))))

(assert (=> b!1707767 d!524177))

(assert (=> b!1707767 d!524133))

(declare-fun d!524179 () Bool)

(assert (=> d!524179 (= (isEmpty!11697 (originalCharacters!4103 token!523)) ((_ is Nil!18632) (originalCharacters!4103 token!523)))))

(assert (=> d!524063 d!524179))

(declare-fun d!524181 () Bool)

(declare-fun e!1092539 () Bool)

(assert (=> d!524181 e!1092539))

(declare-fun res!765714 () Bool)

(assert (=> d!524181 (=> (not res!765714) (not e!1092539))))

(declare-fun lt!652773 () List!18702)

(assert (=> d!524181 (= res!765714 (= (content!2644 lt!652773) ((_ map or) (content!2644 (t!158067 lt!652691)) (content!2644 (Cons!18632 (head!3820 suffix!1421) Nil!18632)))))))

(declare-fun e!1092538 () List!18702)

(assert (=> d!524181 (= lt!652773 e!1092538)))

(declare-fun c!279906 () Bool)

(assert (=> d!524181 (= c!279906 ((_ is Nil!18632) (t!158067 lt!652691)))))

(assert (=> d!524181 (= (++!5110 (t!158067 lt!652691) (Cons!18632 (head!3820 suffix!1421) Nil!18632)) lt!652773)))

(declare-fun b!1708096 () Bool)

(assert (=> b!1708096 (= e!1092538 (Cons!18632 (h!24033 (t!158067 lt!652691)) (++!5110 (t!158067 (t!158067 lt!652691)) (Cons!18632 (head!3820 suffix!1421) Nil!18632))))))

(declare-fun b!1708097 () Bool)

(declare-fun res!765715 () Bool)

(assert (=> b!1708097 (=> (not res!765715) (not e!1092539))))

(assert (=> b!1708097 (= res!765715 (= (size!14824 lt!652773) (+ (size!14824 (t!158067 lt!652691)) (size!14824 (Cons!18632 (head!3820 suffix!1421) Nil!18632)))))))

(declare-fun b!1708095 () Bool)

(assert (=> b!1708095 (= e!1092538 (Cons!18632 (head!3820 suffix!1421) Nil!18632))))

(declare-fun b!1708098 () Bool)

(assert (=> b!1708098 (= e!1092539 (or (not (= (Cons!18632 (head!3820 suffix!1421) Nil!18632) Nil!18632)) (= lt!652773 (t!158067 lt!652691))))))

(assert (= (and d!524181 c!279906) b!1708095))

(assert (= (and d!524181 (not c!279906)) b!1708096))

(assert (= (and d!524181 res!765714) b!1708097))

(assert (= (and b!1708097 res!765715) b!1708098))

(declare-fun m!2111303 () Bool)

(assert (=> d!524181 m!2111303))

(declare-fun m!2111305 () Bool)

(assert (=> d!524181 m!2111305))

(assert (=> d!524181 m!2110999))

(declare-fun m!2111307 () Bool)

(assert (=> b!1708096 m!2111307))

(declare-fun m!2111309 () Bool)

(assert (=> b!1708097 m!2111309))

(declare-fun m!2111311 () Bool)

(assert (=> b!1708097 m!2111311))

(assert (=> b!1708097 m!2111007))

(assert (=> b!1707671 d!524181))

(declare-fun d!524183 () Bool)

(assert (=> d!524183 (= (isEmpty!11700 lt!652692) (not ((_ is Some!3612) lt!652692)))))

(assert (=> d!524105 d!524183))

(declare-fun d!524185 () Bool)

(declare-fun c!279909 () Bool)

(assert (=> d!524185 (= c!279909 ((_ is Nil!18633) rules!3447))))

(declare-fun e!1092542 () (InoxSet Rule!6378))

(assert (=> d!524185 (= (content!2646 rules!3447) e!1092542)))

(declare-fun b!1708103 () Bool)

(assert (=> b!1708103 (= e!1092542 ((as const (Array Rule!6378 Bool)) false))))

(declare-fun b!1708104 () Bool)

(assert (=> b!1708104 (= e!1092542 ((_ map or) (store ((as const (Array Rule!6378 Bool)) false) (h!24034 rules!3447) true) (content!2646 (t!158068 rules!3447))))))

(assert (= (and d!524185 c!279909) b!1708103))

(assert (= (and d!524185 (not c!279909)) b!1708104))

(declare-fun m!2111313 () Bool)

(assert (=> b!1708104 m!2111313))

(assert (=> b!1708104 m!2111225))

(assert (=> d!524073 d!524185))

(declare-fun d!524187 () Bool)

(declare-fun lt!652774 () Bool)

(assert (=> d!524187 (= lt!652774 (select (content!2646 rules!3447) (rule!5221 (_1!10581 (get!5477 lt!652755)))))))

(declare-fun e!1092543 () Bool)

(assert (=> d!524187 (= lt!652774 e!1092543)))

(declare-fun res!765717 () Bool)

(assert (=> d!524187 (=> (not res!765717) (not e!1092543))))

(assert (=> d!524187 (= res!765717 ((_ is Cons!18633) rules!3447))))

(assert (=> d!524187 (= (contains!3305 rules!3447 (rule!5221 (_1!10581 (get!5477 lt!652755)))) lt!652774)))

(declare-fun b!1708105 () Bool)

(declare-fun e!1092544 () Bool)

(assert (=> b!1708105 (= e!1092543 e!1092544)))

(declare-fun res!765716 () Bool)

(assert (=> b!1708105 (=> res!765716 e!1092544)))

(assert (=> b!1708105 (= res!765716 (= (h!24034 rules!3447) (rule!5221 (_1!10581 (get!5477 lt!652755)))))))

(declare-fun b!1708106 () Bool)

(assert (=> b!1708106 (= e!1092544 (contains!3305 (t!158068 rules!3447) (rule!5221 (_1!10581 (get!5477 lt!652755)))))))

(assert (= (and d!524187 res!765717) b!1708105))

(assert (= (and b!1708105 (not res!765716)) b!1708106))

(assert (=> d!524187 m!2111043))

(declare-fun m!2111315 () Bool)

(assert (=> d!524187 m!2111315))

(declare-fun m!2111317 () Bool)

(assert (=> b!1708106 m!2111317))

(assert (=> b!1707922 d!524187))

(assert (=> b!1707922 d!524151))

(declare-fun d!524189 () Bool)

(declare-fun charsToBigInt!1 (List!18701) Int)

(assert (=> d!524189 (= (inv!17 (value!103409 token!523)) (= (charsToBigInt!1 (text!24101 (value!103409 token!523))) (value!103401 (value!103409 token!523))))))

(declare-fun bs!401602 () Bool)

(assert (= bs!401602 d!524189))

(declare-fun m!2111319 () Bool)

(assert (=> bs!401602 m!2111319))

(assert (=> b!1707936 d!524189))

(declare-fun d!524191 () Bool)

(assert (=> d!524191 true))

(declare-fun lambda!68734 () Int)

(declare-fun order!11237 () Int)

(declare-fun order!11239 () Int)

(declare-fun dynLambda!8473 (Int Int) Int)

(declare-fun dynLambda!8475 (Int Int) Int)

(assert (=> d!524191 (< (dynLambda!8473 order!11237 (toChars!4643 (transformation!3289 (h!24034 rules!3447)))) (dynLambda!8475 order!11239 lambda!68734))))

(assert (=> d!524191 true))

(assert (=> d!524191 (< (dynLambda!8470 order!11233 (toValue!4784 (transformation!3289 (h!24034 rules!3447)))) (dynLambda!8475 order!11239 lambda!68734))))

(declare-fun Forall!677 (Int) Bool)

(assert (=> d!524191 (= (semiInverseModEq!1297 (toChars!4643 (transformation!3289 (h!24034 rules!3447))) (toValue!4784 (transformation!3289 (h!24034 rules!3447)))) (Forall!677 lambda!68734))))

(declare-fun bs!401603 () Bool)

(assert (= bs!401603 d!524191))

(declare-fun m!2111321 () Bool)

(assert (=> bs!401603 m!2111321))

(assert (=> d!524067 d!524191))

(declare-fun bs!401604 () Bool)

(declare-fun d!524193 () Bool)

(assert (= bs!401604 (and d!524193 d!524155)))

(declare-fun lambda!68735 () Int)

(assert (=> bs!401604 (= (= (toValue!4784 (transformation!3289 rule!422)) (toValue!4784 (transformation!3289 (h!24034 rules!3447)))) (= lambda!68735 lambda!68731))))

(assert (=> d!524193 true))

(assert (=> d!524193 (< (dynLambda!8470 order!11233 (toValue!4784 (transformation!3289 rule!422))) (dynLambda!8471 order!11235 lambda!68735))))

(assert (=> d!524193 (= (equivClasses!1238 (toChars!4643 (transformation!3289 rule!422)) (toValue!4784 (transformation!3289 rule!422))) (Forall2!548 lambda!68735))))

(declare-fun bs!401605 () Bool)

(assert (= bs!401605 d!524193))

(declare-fun m!2111323 () Bool)

(assert (=> bs!401605 m!2111323))

(assert (=> b!1707688 d!524193))

(declare-fun d!524195 () Bool)

(declare-fun c!279914 () Bool)

(assert (=> d!524195 (= c!279914 ((_ is Empty!6199) (c!279811 (charsOf!1938 token!523))))))

(declare-fun e!1092549 () List!18702)

(assert (=> d!524195 (= (list!7514 (c!279811 (charsOf!1938 token!523))) e!1092549)))

(declare-fun b!1708120 () Bool)

(declare-fun e!1092550 () List!18702)

(assert (=> b!1708120 (= e!1092549 e!1092550)))

(declare-fun c!279915 () Bool)

(assert (=> b!1708120 (= c!279915 ((_ is Leaf!9064) (c!279811 (charsOf!1938 token!523))))))

(declare-fun b!1708119 () Bool)

(assert (=> b!1708119 (= e!1092549 Nil!18632)))

(declare-fun b!1708121 () Bool)

(declare-fun list!7515 (IArray!12403) List!18702)

(assert (=> b!1708121 (= e!1092550 (list!7515 (xs!9075 (c!279811 (charsOf!1938 token!523)))))))

(declare-fun b!1708122 () Bool)

(assert (=> b!1708122 (= e!1092550 (++!5110 (list!7514 (left!14865 (c!279811 (charsOf!1938 token!523)))) (list!7514 (right!15195 (c!279811 (charsOf!1938 token!523))))))))

(assert (= (and d!524195 c!279914) b!1708119))

(assert (= (and d!524195 (not c!279914)) b!1708120))

(assert (= (and b!1708120 c!279915) b!1708121))

(assert (= (and b!1708120 (not c!279915)) b!1708122))

(declare-fun m!2111325 () Bool)

(assert (=> b!1708121 m!2111325))

(declare-fun m!2111327 () Bool)

(assert (=> b!1708122 m!2111327))

(declare-fun m!2111329 () Bool)

(assert (=> b!1708122 m!2111329))

(assert (=> b!1708122 m!2111327))

(assert (=> b!1708122 m!2111329))

(declare-fun m!2111331 () Bool)

(assert (=> b!1708122 m!2111331))

(assert (=> d!524125 d!524195))

(declare-fun d!524197 () Bool)

(assert (=> d!524197 (= (list!7512 (dynLambda!8469 (toChars!4643 (transformation!3289 (rule!5221 token!523))) (value!103409 token!523))) (list!7514 (c!279811 (dynLambda!8469 (toChars!4643 (transformation!3289 (rule!5221 token!523))) (value!103409 token!523)))))))

(declare-fun bs!401606 () Bool)

(assert (= bs!401606 d!524197))

(declare-fun m!2111333 () Bool)

(assert (=> bs!401606 m!2111333))

(assert (=> b!1707678 d!524197))

(declare-fun d!524199 () Bool)

(declare-fun charsToInt!0 (List!18701) (_ BitVec 32))

(assert (=> d!524199 (= (inv!16 (value!103409 token!523)) (= (charsToInt!0 (text!24100 (value!103409 token!523))) (value!103400 (value!103409 token!523))))))

(declare-fun bs!401607 () Bool)

(assert (= bs!401607 d!524199))

(declare-fun m!2111335 () Bool)

(assert (=> bs!401607 m!2111335))

(assert (=> b!1707938 d!524199))

(declare-fun bs!401608 () Bool)

(declare-fun d!524201 () Bool)

(assert (= bs!401608 (and d!524201 d!524191)))

(declare-fun lambda!68736 () Int)

(assert (=> bs!401608 (= (and (= (toChars!4643 (transformation!3289 (rule!5221 token!523))) (toChars!4643 (transformation!3289 (h!24034 rules!3447)))) (= (toValue!4784 (transformation!3289 (rule!5221 token!523))) (toValue!4784 (transformation!3289 (h!24034 rules!3447))))) (= lambda!68736 lambda!68734))))

(assert (=> d!524201 true))

(assert (=> d!524201 (< (dynLambda!8473 order!11237 (toChars!4643 (transformation!3289 (rule!5221 token!523)))) (dynLambda!8475 order!11239 lambda!68736))))

(assert (=> d!524201 true))

(assert (=> d!524201 (< (dynLambda!8470 order!11233 (toValue!4784 (transformation!3289 (rule!5221 token!523)))) (dynLambda!8475 order!11239 lambda!68736))))

(assert (=> d!524201 (= (semiInverseModEq!1297 (toChars!4643 (transformation!3289 (rule!5221 token!523))) (toValue!4784 (transformation!3289 (rule!5221 token!523)))) (Forall!677 lambda!68736))))

(declare-fun bs!401609 () Bool)

(assert (= bs!401609 d!524201))

(declare-fun m!2111337 () Bool)

(assert (=> bs!401609 m!2111337))

(assert (=> d!524101 d!524201))

(declare-fun d!524203 () Bool)

(assert (=> d!524203 (= (isDefined!2958 lt!652755) (not (isEmpty!11700 lt!652755)))))

(declare-fun bs!401610 () Bool)

(assert (= bs!401610 d!524203))

(assert (=> bs!401610 m!2111171))

(assert (=> b!1707916 d!524203))

(declare-fun d!524205 () Bool)

(declare-fun nullableFct!320 (Regex!4617) Bool)

(assert (=> d!524205 (= (nullable!1384 (reg!4946 lt!652695)) (nullableFct!320 (reg!4946 lt!652695)))))

(declare-fun bs!401611 () Bool)

(assert (= bs!401611 d!524205))

(declare-fun m!2111339 () Bool)

(assert (=> bs!401611 m!2111339))

(assert (=> b!1707646 d!524205))

(assert (=> bm!109313 d!524135))

(assert (=> d!524083 d!524137))

(assert (=> b!1707757 d!524177))

(declare-fun d!524207 () Bool)

(declare-fun e!1092552 () Bool)

(assert (=> d!524207 e!1092552))

(declare-fun res!765718 () Bool)

(assert (=> d!524207 (=> (not res!765718) (not e!1092552))))

(declare-fun lt!652775 () List!18702)

(assert (=> d!524207 (= res!765718 (= (content!2644 lt!652775) ((_ map or) (content!2644 (list!7512 (charsOf!1938 (_1!10581 (get!5477 lt!652755))))) (content!2644 (_2!10581 (get!5477 lt!652755))))))))

(declare-fun e!1092551 () List!18702)

(assert (=> d!524207 (= lt!652775 e!1092551)))

(declare-fun c!279916 () Bool)

(assert (=> d!524207 (= c!279916 ((_ is Nil!18632) (list!7512 (charsOf!1938 (_1!10581 (get!5477 lt!652755))))))))

(assert (=> d!524207 (= (++!5110 (list!7512 (charsOf!1938 (_1!10581 (get!5477 lt!652755)))) (_2!10581 (get!5477 lt!652755))) lt!652775)))

(declare-fun b!1708124 () Bool)

(assert (=> b!1708124 (= e!1092551 (Cons!18632 (h!24033 (list!7512 (charsOf!1938 (_1!10581 (get!5477 lt!652755))))) (++!5110 (t!158067 (list!7512 (charsOf!1938 (_1!10581 (get!5477 lt!652755))))) (_2!10581 (get!5477 lt!652755)))))))

(declare-fun b!1708125 () Bool)

(declare-fun res!765719 () Bool)

(assert (=> b!1708125 (=> (not res!765719) (not e!1092552))))

(assert (=> b!1708125 (= res!765719 (= (size!14824 lt!652775) (+ (size!14824 (list!7512 (charsOf!1938 (_1!10581 (get!5477 lt!652755))))) (size!14824 (_2!10581 (get!5477 lt!652755))))))))

(declare-fun b!1708123 () Bool)

(assert (=> b!1708123 (= e!1092551 (_2!10581 (get!5477 lt!652755)))))

(declare-fun b!1708126 () Bool)

(assert (=> b!1708126 (= e!1092552 (or (not (= (_2!10581 (get!5477 lt!652755)) Nil!18632)) (= lt!652775 (list!7512 (charsOf!1938 (_1!10581 (get!5477 lt!652755)))))))))

(assert (= (and d!524207 c!279916) b!1708123))

(assert (= (and d!524207 (not c!279916)) b!1708124))

(assert (= (and d!524207 res!765718) b!1708125))

(assert (= (and b!1708125 res!765719) b!1708126))

(declare-fun m!2111341 () Bool)

(assert (=> d!524207 m!2111341))

(assert (=> d!524207 m!2111183))

(declare-fun m!2111343 () Bool)

(assert (=> d!524207 m!2111343))

(declare-fun m!2111345 () Bool)

(assert (=> d!524207 m!2111345))

(declare-fun m!2111347 () Bool)

(assert (=> b!1708124 m!2111347))

(declare-fun m!2111349 () Bool)

(assert (=> b!1708125 m!2111349))

(assert (=> b!1708125 m!2111183))

(declare-fun m!2111351 () Bool)

(assert (=> b!1708125 m!2111351))

(assert (=> b!1708125 m!2111185))

(assert (=> b!1707923 d!524207))

(assert (=> b!1707923 d!524145))

(assert (=> b!1707923 d!524147))

(assert (=> b!1707923 d!524151))

(declare-fun d!524209 () Bool)

(declare-fun isBalanced!1945 (Conc!6199) Bool)

(assert (=> d!524209 (= (inv!24042 (dynLambda!8469 (toChars!4643 (transformation!3289 (rule!5221 token!523))) (value!103409 token!523))) (isBalanced!1945 (c!279811 (dynLambda!8469 (toChars!4643 (transformation!3289 (rule!5221 token!523))) (value!103409 token!523)))))))

(declare-fun bs!401612 () Bool)

(assert (= bs!401612 d!524209))

(declare-fun m!2111353 () Bool)

(assert (=> bs!401612 m!2111353))

(assert (=> tb!100811 d!524209))

(assert (=> d!524089 d!524083))

(declare-fun d!524211 () Bool)

(assert (=> d!524211 (ruleValid!788 thiss!24550 rule!422)))

(assert (=> d!524211 true))

(declare-fun _$65!906 () Unit!32465)

(assert (=> d!524211 (= (choose!10368 thiss!24550 rule!422 rules!3447) _$65!906)))

(declare-fun bs!401613 () Bool)

(assert (= bs!401613 d!524211))

(assert (=> bs!401613 m!2110957))

(assert (=> d!524089 d!524211))

(assert (=> d!524089 d!524073))

(declare-fun b!1708127 () Bool)

(declare-fun e!1092556 () Bool)

(declare-fun e!1092557 () Bool)

(assert (=> b!1708127 (= e!1092556 e!1092557)))

(declare-fun res!765721 () Bool)

(assert (=> b!1708127 (=> (not res!765721) (not e!1092557))))

(declare-fun call!109359 () Bool)

(assert (=> b!1708127 (= res!765721 call!109359)))

(declare-fun b!1708128 () Bool)

(declare-fun e!1092553 () Bool)

(declare-fun call!109357 () Bool)

(assert (=> b!1708128 (= e!1092553 call!109357)))

(declare-fun c!279918 () Bool)

(declare-fun c!279917 () Bool)

(declare-fun bm!109352 () Bool)

(assert (=> bm!109352 (= call!109357 (validRegex!1858 (ite c!279918 (reg!4946 (ite c!279823 (reg!4946 lt!652695) (ite c!279822 (regOne!9747 lt!652695) (regTwo!9746 lt!652695)))) (ite c!279917 (regOne!9747 (ite c!279823 (reg!4946 lt!652695) (ite c!279822 (regOne!9747 lt!652695) (regTwo!9746 lt!652695)))) (regTwo!9746 (ite c!279823 (reg!4946 lt!652695) (ite c!279822 (regOne!9747 lt!652695) (regTwo!9746 lt!652695))))))))))

(declare-fun b!1708129 () Bool)

(declare-fun res!765720 () Bool)

(assert (=> b!1708129 (=> res!765720 e!1092556)))

(assert (=> b!1708129 (= res!765720 (not ((_ is Concat!7997) (ite c!279823 (reg!4946 lt!652695) (ite c!279822 (regOne!9747 lt!652695) (regTwo!9746 lt!652695))))))))

(declare-fun e!1092554 () Bool)

(assert (=> b!1708129 (= e!1092554 e!1092556)))

(declare-fun bm!109353 () Bool)

(declare-fun call!109358 () Bool)

(assert (=> bm!109353 (= call!109358 call!109357)))

(declare-fun bm!109354 () Bool)

(assert (=> bm!109354 (= call!109359 (validRegex!1858 (ite c!279917 (regTwo!9747 (ite c!279823 (reg!4946 lt!652695) (ite c!279822 (regOne!9747 lt!652695) (regTwo!9746 lt!652695)))) (regOne!9746 (ite c!279823 (reg!4946 lt!652695) (ite c!279822 (regOne!9747 lt!652695) (regTwo!9746 lt!652695)))))))))

(declare-fun b!1708130 () Bool)

(declare-fun e!1092555 () Bool)

(assert (=> b!1708130 (= e!1092555 call!109359)))

(declare-fun b!1708131 () Bool)

(declare-fun e!1092558 () Bool)

(assert (=> b!1708131 (= e!1092558 e!1092554)))

(assert (=> b!1708131 (= c!279917 ((_ is Union!4617) (ite c!279823 (reg!4946 lt!652695) (ite c!279822 (regOne!9747 lt!652695) (regTwo!9746 lt!652695)))))))

(declare-fun b!1708133 () Bool)

(declare-fun res!765724 () Bool)

(assert (=> b!1708133 (=> (not res!765724) (not e!1092555))))

(assert (=> b!1708133 (= res!765724 call!109358)))

(assert (=> b!1708133 (= e!1092554 e!1092555)))

(declare-fun b!1708134 () Bool)

(declare-fun e!1092559 () Bool)

(assert (=> b!1708134 (= e!1092559 e!1092558)))

(assert (=> b!1708134 (= c!279918 ((_ is Star!4617) (ite c!279823 (reg!4946 lt!652695) (ite c!279822 (regOne!9747 lt!652695) (regTwo!9746 lt!652695)))))))

(declare-fun b!1708135 () Bool)

(assert (=> b!1708135 (= e!1092557 call!109358)))

(declare-fun d!524213 () Bool)

(declare-fun res!765723 () Bool)

(assert (=> d!524213 (=> res!765723 e!1092559)))

(assert (=> d!524213 (= res!765723 ((_ is ElementMatch!4617) (ite c!279823 (reg!4946 lt!652695) (ite c!279822 (regOne!9747 lt!652695) (regTwo!9746 lt!652695)))))))

(assert (=> d!524213 (= (validRegex!1858 (ite c!279823 (reg!4946 lt!652695) (ite c!279822 (regOne!9747 lt!652695) (regTwo!9746 lt!652695)))) e!1092559)))

(declare-fun b!1708132 () Bool)

(assert (=> b!1708132 (= e!1092558 e!1092553)))

(declare-fun res!765722 () Bool)

(assert (=> b!1708132 (= res!765722 (not (nullable!1384 (reg!4946 (ite c!279823 (reg!4946 lt!652695) (ite c!279822 (regOne!9747 lt!652695) (regTwo!9746 lt!652695)))))))))

(assert (=> b!1708132 (=> (not res!765722) (not e!1092553))))

(assert (= (and d!524213 (not res!765723)) b!1708134))

(assert (= (and b!1708134 c!279918) b!1708132))

(assert (= (and b!1708134 (not c!279918)) b!1708131))

(assert (= (and b!1708132 res!765722) b!1708128))

(assert (= (and b!1708131 c!279917) b!1708133))

(assert (= (and b!1708131 (not c!279917)) b!1708129))

(assert (= (and b!1708133 res!765724) b!1708130))

(assert (= (and b!1708129 (not res!765720)) b!1708127))

(assert (= (and b!1708127 res!765721) b!1708135))

(assert (= (or b!1708133 b!1708135) bm!109353))

(assert (= (or b!1708130 b!1708127) bm!109354))

(assert (= (or b!1708128 bm!109353) bm!109352))

(declare-fun m!2111355 () Bool)

(assert (=> bm!109352 m!2111355))

(declare-fun m!2111357 () Bool)

(assert (=> bm!109354 m!2111357))

(declare-fun m!2111359 () Bool)

(assert (=> b!1708132 m!2111359))

(assert (=> bm!109305 d!524213))

(declare-fun d!524215 () Bool)

(assert (=> d!524215 true))

(declare-fun lt!652778 () Bool)

(assert (=> d!524215 (= lt!652778 (rulesValidInductive!1080 thiss!24550 rules!3447))))

(declare-fun lambda!68739 () Int)

(declare-fun forall!4238 (List!18703 Int) Bool)

(assert (=> d!524215 (= lt!652778 (forall!4238 rules!3447 lambda!68739))))

(assert (=> d!524215 (= (rulesValid!1224 thiss!24550 rules!3447) lt!652778)))

(declare-fun bs!401614 () Bool)

(assert (= bs!401614 d!524215))

(assert (=> bs!401614 m!2111177))

(declare-fun m!2111361 () Bool)

(assert (=> bs!401614 m!2111361))

(assert (=> d!524035 d!524215))

(assert (=> b!1707754 d!524177))

(declare-fun d!524217 () Bool)

(declare-fun res!765731 () Bool)

(declare-fun e!1092566 () Bool)

(assert (=> d!524217 (=> res!765731 e!1092566)))

(assert (=> d!524217 (= res!765731 ((_ is Nil!18633) rules!3447))))

(assert (=> d!524217 (= (noDuplicateTag!1224 thiss!24550 rules!3447 Nil!18635) e!1092566)))

(declare-fun b!1708146 () Bool)

(declare-fun e!1092567 () Bool)

(assert (=> b!1708146 (= e!1092566 e!1092567)))

(declare-fun res!765732 () Bool)

(assert (=> b!1708146 (=> (not res!765732) (not e!1092567))))

(declare-fun contains!3306 (List!18705 String!21227) Bool)

(assert (=> b!1708146 (= res!765732 (not (contains!3306 Nil!18635 (tag!3585 (h!24034 rules!3447)))))))

(declare-fun b!1708147 () Bool)

(assert (=> b!1708147 (= e!1092567 (noDuplicateTag!1224 thiss!24550 (t!158068 rules!3447) (Cons!18635 (tag!3585 (h!24034 rules!3447)) Nil!18635)))))

(assert (= (and d!524217 (not res!765731)) b!1708146))

(assert (= (and b!1708146 res!765732) b!1708147))

(declare-fun m!2111365 () Bool)

(assert (=> b!1708146 m!2111365))

(declare-fun m!2111367 () Bool)

(assert (=> b!1708147 m!2111367))

(assert (=> b!1707595 d!524217))

(declare-fun d!524221 () Bool)

(assert (=> d!524221 (= (nullable!1384 (regex!3289 rule!422)) (nullableFct!320 (regex!3289 rule!422)))))

(declare-fun bs!401616 () Bool)

(assert (= bs!401616 d!524221))

(declare-fun m!2111369 () Bool)

(assert (=> bs!401616 m!2111369))

(assert (=> b!1707766 d!524221))

(declare-fun d!524223 () Bool)

(declare-fun charsToBigInt!0 (List!18701 Int) Int)

(assert (=> d!524223 (= (inv!15 (value!103409 token!523)) (= (charsToBigInt!0 (text!24102 (value!103409 token!523)) 0) (value!103404 (value!103409 token!523))))))

(declare-fun bs!401617 () Bool)

(assert (= bs!401617 d!524223))

(declare-fun m!2111373 () Bool)

(assert (=> bs!401617 m!2111373))

(assert (=> b!1707939 d!524223))

(declare-fun d!524227 () Bool)

(declare-fun lt!652786 () Int)

(assert (=> d!524227 (>= lt!652786 0)))

(declare-fun e!1092577 () Int)

(assert (=> d!524227 (= lt!652786 e!1092577)))

(declare-fun c!279928 () Bool)

(assert (=> d!524227 (= c!279928 ((_ is Nil!18632) (originalCharacters!4103 token!523)))))

(assert (=> d!524227 (= (size!14824 (originalCharacters!4103 token!523)) lt!652786)))

(declare-fun b!1708166 () Bool)

(assert (=> b!1708166 (= e!1092577 0)))

(declare-fun b!1708167 () Bool)

(assert (=> b!1708167 (= e!1092577 (+ 1 (size!14824 (t!158067 (originalCharacters!4103 token!523)))))))

(assert (= (and d!524227 c!279928) b!1708166))

(assert (= (and d!524227 (not c!279928)) b!1708167))

(declare-fun m!2111379 () Bool)

(assert (=> b!1708167 m!2111379))

(assert (=> b!1707679 d!524227))

(declare-fun d!524233 () Bool)

(declare-fun c!279934 () Bool)

(assert (=> d!524233 (= c!279934 ((_ is Node!6199) (c!279811 (dynLambda!8469 (toChars!4643 (transformation!3289 (rule!5221 token!523))) (value!103409 token!523)))))))

(declare-fun e!1092585 () Bool)

(assert (=> d!524233 (= (inv!24041 (c!279811 (dynLambda!8469 (toChars!4643 (transformation!3289 (rule!5221 token!523))) (value!103409 token!523)))) e!1092585)))

(declare-fun b!1708180 () Bool)

(declare-fun inv!24043 (Conc!6199) Bool)

(assert (=> b!1708180 (= e!1092585 (inv!24043 (c!279811 (dynLambda!8469 (toChars!4643 (transformation!3289 (rule!5221 token!523))) (value!103409 token!523)))))))

(declare-fun b!1708181 () Bool)

(declare-fun e!1092586 () Bool)

(assert (=> b!1708181 (= e!1092585 e!1092586)))

(declare-fun res!765735 () Bool)

(assert (=> b!1708181 (= res!765735 (not ((_ is Leaf!9064) (c!279811 (dynLambda!8469 (toChars!4643 (transformation!3289 (rule!5221 token!523))) (value!103409 token!523))))))))

(assert (=> b!1708181 (=> res!765735 e!1092586)))

(declare-fun b!1708182 () Bool)

(declare-fun inv!24044 (Conc!6199) Bool)

(assert (=> b!1708182 (= e!1092586 (inv!24044 (c!279811 (dynLambda!8469 (toChars!4643 (transformation!3289 (rule!5221 token!523))) (value!103409 token!523)))))))

(assert (= (and d!524233 c!279934) b!1708180))

(assert (= (and d!524233 (not c!279934)) b!1708181))

(assert (= (and b!1708181 (not res!765735)) b!1708182))

(declare-fun m!2111393 () Bool)

(assert (=> b!1708180 m!2111393))

(declare-fun m!2111395 () Bool)

(assert (=> b!1708182 m!2111395))

(assert (=> b!1707684 d!524233))

(declare-fun bs!401618 () Bool)

(declare-fun d!524245 () Bool)

(assert (= bs!401618 (and d!524245 d!524155)))

(declare-fun lambda!68743 () Int)

(assert (=> bs!401618 (= (= (toValue!4784 (transformation!3289 (rule!5221 token!523))) (toValue!4784 (transformation!3289 (h!24034 rules!3447)))) (= lambda!68743 lambda!68731))))

(declare-fun bs!401619 () Bool)

(assert (= bs!401619 (and d!524245 d!524193)))

(assert (=> bs!401619 (= (= (toValue!4784 (transformation!3289 (rule!5221 token!523))) (toValue!4784 (transformation!3289 rule!422))) (= lambda!68743 lambda!68735))))

(assert (=> d!524245 true))

(assert (=> d!524245 (< (dynLambda!8470 order!11233 (toValue!4784 (transformation!3289 (rule!5221 token!523)))) (dynLambda!8471 order!11235 lambda!68743))))

(assert (=> d!524245 (= (equivClasses!1238 (toChars!4643 (transformation!3289 (rule!5221 token!523))) (toValue!4784 (transformation!3289 (rule!5221 token!523)))) (Forall2!548 lambda!68743))))

(declare-fun bs!401620 () Bool)

(assert (= bs!401620 d!524245))

(declare-fun m!2111397 () Bool)

(assert (=> bs!401620 m!2111397))

(assert (=> b!1707794 d!524245))

(declare-fun d!524247 () Bool)

(declare-fun lt!652789 () Int)

(assert (=> d!524247 (>= lt!652789 0)))

(declare-fun e!1092593 () Int)

(assert (=> d!524247 (= lt!652789 e!1092593)))

(declare-fun c!279935 () Bool)

(assert (=> d!524247 (= c!279935 ((_ is Nil!18632) (_2!10581 (get!5477 lt!652755))))))

(assert (=> d!524247 (= (size!14824 (_2!10581 (get!5477 lt!652755))) lt!652789)))

(declare-fun b!1708191 () Bool)

(assert (=> b!1708191 (= e!1092593 0)))

(declare-fun b!1708192 () Bool)

(assert (=> b!1708192 (= e!1092593 (+ 1 (size!14824 (t!158067 (_2!10581 (get!5477 lt!652755))))))))

(assert (= (and d!524247 c!279935) b!1708191))

(assert (= (and d!524247 (not c!279935)) b!1708192))

(declare-fun m!2111399 () Bool)

(assert (=> b!1708192 m!2111399))

(assert (=> b!1707919 d!524247))

(assert (=> b!1707919 d!524151))

(declare-fun d!524249 () Bool)

(declare-fun lt!652790 () Int)

(assert (=> d!524249 (>= lt!652790 0)))

(declare-fun e!1092594 () Int)

(assert (=> d!524249 (= lt!652790 e!1092594)))

(declare-fun c!279936 () Bool)

(assert (=> d!524249 (= c!279936 ((_ is Nil!18632) lt!652691))))

(assert (=> d!524249 (= (size!14824 lt!652691) lt!652790)))

(declare-fun b!1708193 () Bool)

(assert (=> b!1708193 (= e!1092594 0)))

(declare-fun b!1708194 () Bool)

(assert (=> b!1708194 (= e!1092594 (+ 1 (size!14824 (t!158067 lt!652691))))))

(assert (= (and d!524249 c!279936) b!1708193))

(assert (= (and d!524249 (not c!279936)) b!1708194))

(assert (=> b!1708194 m!2111311))

(assert (=> b!1707919 d!524249))

(declare-fun d!524251 () Bool)

(declare-fun c!279939 () Bool)

(assert (=> d!524251 (= c!279939 ((_ is Nil!18632) lt!652702))))

(declare-fun e!1092600 () (InoxSet C!9408))

(assert (=> d!524251 (= (content!2644 lt!652702) e!1092600)))

(declare-fun b!1708203 () Bool)

(assert (=> b!1708203 (= e!1092600 ((as const (Array C!9408 Bool)) false))))

(declare-fun b!1708204 () Bool)

(assert (=> b!1708204 (= e!1092600 ((_ map or) (store ((as const (Array C!9408 Bool)) false) (h!24033 lt!652702) true) (content!2644 (t!158067 lt!652702))))))

(assert (= (and d!524251 c!279939) b!1708203))

(assert (= (and d!524251 (not c!279939)) b!1708204))

(declare-fun m!2111403 () Bool)

(assert (=> b!1708204 m!2111403))

(declare-fun m!2111405 () Bool)

(assert (=> b!1708204 m!2111405))

(assert (=> d!524047 d!524251))

(declare-fun d!524255 () Bool)

(declare-fun c!279940 () Bool)

(assert (=> d!524255 (= c!279940 ((_ is Nil!18632) lt!652691))))

(declare-fun e!1092601 () (InoxSet C!9408))

(assert (=> d!524255 (= (content!2644 lt!652691) e!1092601)))

(declare-fun b!1708205 () Bool)

(assert (=> b!1708205 (= e!1092601 ((as const (Array C!9408 Bool)) false))))

(declare-fun b!1708206 () Bool)

(assert (=> b!1708206 (= e!1092601 ((_ map or) (store ((as const (Array C!9408 Bool)) false) (h!24033 lt!652691) true) (content!2644 (t!158067 lt!652691))))))

(assert (= (and d!524255 c!279940) b!1708205))

(assert (= (and d!524255 (not c!279940)) b!1708206))

(declare-fun m!2111407 () Bool)

(assert (=> b!1708206 m!2111407))

(assert (=> b!1708206 m!2111305))

(assert (=> d!524047 d!524255))

(declare-fun d!524257 () Bool)

(declare-fun c!279941 () Bool)

(assert (=> d!524257 (= c!279941 ((_ is Nil!18632) (Cons!18632 (head!3820 suffix!1421) Nil!18632)))))

(declare-fun e!1092602 () (InoxSet C!9408))

(assert (=> d!524257 (= (content!2644 (Cons!18632 (head!3820 suffix!1421) Nil!18632)) e!1092602)))

(declare-fun b!1708207 () Bool)

(assert (=> b!1708207 (= e!1092602 ((as const (Array C!9408 Bool)) false))))

(declare-fun b!1708208 () Bool)

(assert (=> b!1708208 (= e!1092602 ((_ map or) (store ((as const (Array C!9408 Bool)) false) (h!24033 (Cons!18632 (head!3820 suffix!1421) Nil!18632)) true) (content!2644 (t!158067 (Cons!18632 (head!3820 suffix!1421) Nil!18632)))))))

(assert (= (and d!524257 c!279941) b!1708207))

(assert (= (and d!524257 (not c!279941)) b!1708208))

(declare-fun m!2111409 () Bool)

(assert (=> b!1708208 m!2111409))

(declare-fun m!2111413 () Bool)

(assert (=> b!1708208 m!2111413))

(assert (=> d!524047 d!524257))

(declare-fun call!109360 () Option!3613)

(declare-fun bm!109355 () Bool)

(assert (=> bm!109355 (= call!109360 (maxPrefixOneRule!862 thiss!24550 (h!24034 (t!158068 rules!3447)) lt!652691))))

(declare-fun b!1708210 () Bool)

(declare-fun res!765751 () Bool)

(declare-fun e!1092603 () Bool)

(assert (=> b!1708210 (=> (not res!765751) (not e!1092603))))

(declare-fun lt!652795 () Option!3613)

(assert (=> b!1708210 (= res!765751 (matchR!2091 (regex!3289 (rule!5221 (_1!10581 (get!5477 lt!652795)))) (list!7512 (charsOf!1938 (_1!10581 (get!5477 lt!652795))))))))

(declare-fun b!1708211 () Bool)

(declare-fun res!765753 () Bool)

(assert (=> b!1708211 (=> (not res!765753) (not e!1092603))))

(assert (=> b!1708211 (= res!765753 (= (value!103409 (_1!10581 (get!5477 lt!652795))) (apply!5106 (transformation!3289 (rule!5221 (_1!10581 (get!5477 lt!652795)))) (seqFromList!2271 (originalCharacters!4103 (_1!10581 (get!5477 lt!652795)))))))))

(declare-fun b!1708212 () Bool)

(declare-fun res!765749 () Bool)

(assert (=> b!1708212 (=> (not res!765749) (not e!1092603))))

(assert (=> b!1708212 (= res!765749 (< (size!14824 (_2!10581 (get!5477 lt!652795))) (size!14824 lt!652691)))))

(declare-fun b!1708213 () Bool)

(declare-fun e!1092605 () Option!3613)

(assert (=> b!1708213 (= e!1092605 call!109360)))

(declare-fun b!1708214 () Bool)

(declare-fun lt!652798 () Option!3613)

(declare-fun lt!652799 () Option!3613)

(assert (=> b!1708214 (= e!1092605 (ite (and ((_ is None!3612) lt!652798) ((_ is None!3612) lt!652799)) None!3612 (ite ((_ is None!3612) lt!652799) lt!652798 (ite ((_ is None!3612) lt!652798) lt!652799 (ite (>= (size!14822 (_1!10581 (v!24993 lt!652798))) (size!14822 (_1!10581 (v!24993 lt!652799)))) lt!652798 lt!652799)))))))

(assert (=> b!1708214 (= lt!652798 call!109360)))

(assert (=> b!1708214 (= lt!652799 (maxPrefix!1472 thiss!24550 (t!158068 (t!158068 rules!3447)) lt!652691))))

(declare-fun b!1708215 () Bool)

(assert (=> b!1708215 (= e!1092603 (contains!3305 (t!158068 rules!3447) (rule!5221 (_1!10581 (get!5477 lt!652795)))))))

(declare-fun d!524261 () Bool)

(declare-fun e!1092604 () Bool)

(assert (=> d!524261 e!1092604))

(declare-fun res!765754 () Bool)

(assert (=> d!524261 (=> res!765754 e!1092604)))

(assert (=> d!524261 (= res!765754 (isEmpty!11700 lt!652795))))

(assert (=> d!524261 (= lt!652795 e!1092605)))

(declare-fun c!279942 () Bool)

(assert (=> d!524261 (= c!279942 (and ((_ is Cons!18633) (t!158068 rules!3447)) ((_ is Nil!18633) (t!158068 (t!158068 rules!3447)))))))

(declare-fun lt!652797 () Unit!32465)

(declare-fun lt!652796 () Unit!32465)

(assert (=> d!524261 (= lt!652797 lt!652796)))

(assert (=> d!524261 (isPrefix!1530 lt!652691 lt!652691)))

(assert (=> d!524261 (= lt!652796 (lemmaIsPrefixRefl!1047 lt!652691 lt!652691))))

(assert (=> d!524261 (rulesValidInductive!1080 thiss!24550 (t!158068 rules!3447))))

(assert (=> d!524261 (= (maxPrefix!1472 thiss!24550 (t!158068 rules!3447) lt!652691) lt!652795)))

(declare-fun b!1708209 () Bool)

(assert (=> b!1708209 (= e!1092604 e!1092603)))

(declare-fun res!765752 () Bool)

(assert (=> b!1708209 (=> (not res!765752) (not e!1092603))))

(assert (=> b!1708209 (= res!765752 (isDefined!2958 lt!652795))))

(declare-fun b!1708216 () Bool)

(declare-fun res!765750 () Bool)

(assert (=> b!1708216 (=> (not res!765750) (not e!1092603))))

(assert (=> b!1708216 (= res!765750 (= (++!5110 (list!7512 (charsOf!1938 (_1!10581 (get!5477 lt!652795)))) (_2!10581 (get!5477 lt!652795))) lt!652691))))

(declare-fun b!1708217 () Bool)

(declare-fun res!765748 () Bool)

(assert (=> b!1708217 (=> (not res!765748) (not e!1092603))))

(assert (=> b!1708217 (= res!765748 (= (list!7512 (charsOf!1938 (_1!10581 (get!5477 lt!652795)))) (originalCharacters!4103 (_1!10581 (get!5477 lt!652795)))))))

(assert (= (and d!524261 c!279942) b!1708213))

(assert (= (and d!524261 (not c!279942)) b!1708214))

(assert (= (or b!1708213 b!1708214) bm!109355))

(assert (= (and d!524261 (not res!765754)) b!1708209))

(assert (= (and b!1708209 res!765752) b!1708217))

(assert (= (and b!1708217 res!765748) b!1708212))

(assert (= (and b!1708212 res!765749) b!1708216))

(assert (= (and b!1708216 res!765750) b!1708211))

(assert (= (and b!1708211 res!765753) b!1708210))

(assert (= (and b!1708210 res!765751) b!1708215))

(declare-fun m!2111415 () Bool)

(assert (=> d!524261 m!2111415))

(assert (=> d!524261 m!2111173))

(assert (=> d!524261 m!2111175))

(declare-fun m!2111417 () Bool)

(assert (=> d!524261 m!2111417))

(declare-fun m!2111419 () Bool)

(assert (=> b!1708217 m!2111419))

(declare-fun m!2111421 () Bool)

(assert (=> b!1708217 m!2111421))

(assert (=> b!1708217 m!2111421))

(declare-fun m!2111423 () Bool)

(assert (=> b!1708217 m!2111423))

(assert (=> b!1708212 m!2111419))

(declare-fun m!2111425 () Bool)

(assert (=> b!1708212 m!2111425))

(assert (=> b!1708212 m!2111005))

(assert (=> b!1708215 m!2111419))

(declare-fun m!2111427 () Bool)

(assert (=> b!1708215 m!2111427))

(assert (=> b!1708210 m!2111419))

(assert (=> b!1708210 m!2111421))

(assert (=> b!1708210 m!2111421))

(assert (=> b!1708210 m!2111423))

(assert (=> b!1708210 m!2111423))

(declare-fun m!2111429 () Bool)

(assert (=> b!1708210 m!2111429))

(declare-fun m!2111431 () Bool)

(assert (=> b!1708209 m!2111431))

(assert (=> b!1708216 m!2111419))

(assert (=> b!1708216 m!2111421))

(assert (=> b!1708216 m!2111421))

(assert (=> b!1708216 m!2111423))

(assert (=> b!1708216 m!2111423))

(declare-fun m!2111433 () Bool)

(assert (=> b!1708216 m!2111433))

(declare-fun m!2111435 () Bool)

(assert (=> bm!109355 m!2111435))

(assert (=> b!1708211 m!2111419))

(declare-fun m!2111437 () Bool)

(assert (=> b!1708211 m!2111437))

(assert (=> b!1708211 m!2111437))

(declare-fun m!2111439 () Bool)

(assert (=> b!1708211 m!2111439))

(declare-fun m!2111441 () Bool)

(assert (=> b!1708214 m!2111441))

(assert (=> b!1707921 d!524261))

(declare-fun d!524263 () Bool)

(assert (=> d!524263 (= (isEmpty!11700 lt!652755) (not ((_ is Some!3612) lt!652755)))))

(assert (=> d!524107 d!524263))

(declare-fun b!1708249 () Bool)

(declare-fun res!765778 () Bool)

(declare-fun e!1092625 () Bool)

(assert (=> b!1708249 (=> (not res!765778) (not e!1092625))))

(assert (=> b!1708249 (= res!765778 (= (head!3820 lt!652691) (head!3820 lt!652691)))))

(declare-fun b!1708248 () Bool)

(declare-fun e!1092627 () Bool)

(assert (=> b!1708248 (= e!1092627 e!1092625)))

(declare-fun res!765780 () Bool)

(assert (=> b!1708248 (=> (not res!765780) (not e!1092625))))

(assert (=> b!1708248 (= res!765780 (not ((_ is Nil!18632) lt!652691)))))

(declare-fun d!524265 () Bool)

(declare-fun e!1092626 () Bool)

(assert (=> d!524265 e!1092626))

(declare-fun res!765779 () Bool)

(assert (=> d!524265 (=> res!765779 e!1092626)))

(declare-fun lt!652807 () Bool)

(assert (=> d!524265 (= res!765779 (not lt!652807))))

(assert (=> d!524265 (= lt!652807 e!1092627)))

(declare-fun res!765777 () Bool)

(assert (=> d!524265 (=> res!765777 e!1092627)))

(assert (=> d!524265 (= res!765777 ((_ is Nil!18632) lt!652691))))

(assert (=> d!524265 (= (isPrefix!1530 lt!652691 lt!652691) lt!652807)))

(declare-fun b!1708251 () Bool)

(assert (=> b!1708251 (= e!1092626 (>= (size!14824 lt!652691) (size!14824 lt!652691)))))

(declare-fun b!1708250 () Bool)

(assert (=> b!1708250 (= e!1092625 (isPrefix!1530 (tail!2543 lt!652691) (tail!2543 lt!652691)))))

(assert (= (and d!524265 (not res!765777)) b!1708248))

(assert (= (and b!1708248 res!765780) b!1708249))

(assert (= (and b!1708249 res!765778) b!1708250))

(assert (= (and d!524265 (not res!765779)) b!1708251))

(assert (=> b!1708249 m!2111097))

(assert (=> b!1708249 m!2111097))

(assert (=> b!1708251 m!2111005))

(assert (=> b!1708251 m!2111005))

(assert (=> b!1708250 m!2111093))

(assert (=> b!1708250 m!2111093))

(assert (=> b!1708250 m!2111093))

(assert (=> b!1708250 m!2111093))

(declare-fun m!2111467 () Bool)

(assert (=> b!1708250 m!2111467))

(assert (=> d!524107 d!524265))

(declare-fun d!524275 () Bool)

(assert (=> d!524275 (isPrefix!1530 lt!652691 lt!652691)))

(declare-fun lt!652810 () Unit!32465)

(declare-fun choose!10370 (List!18702 List!18702) Unit!32465)

(assert (=> d!524275 (= lt!652810 (choose!10370 lt!652691 lt!652691))))

(assert (=> d!524275 (= (lemmaIsPrefixRefl!1047 lt!652691 lt!652691) lt!652810)))

(declare-fun bs!401623 () Bool)

(assert (= bs!401623 d!524275))

(assert (=> bs!401623 m!2111173))

(declare-fun m!2111477 () Bool)

(assert (=> bs!401623 m!2111477))

(assert (=> d!524107 d!524275))

(declare-fun bs!401625 () Bool)

(declare-fun d!524279 () Bool)

(assert (= bs!401625 (and d!524279 d!524215)))

(declare-fun lambda!68752 () Int)

(assert (=> bs!401625 (= lambda!68752 lambda!68739)))

(assert (=> d!524279 true))

(declare-fun lt!652814 () Bool)

(assert (=> d!524279 (= lt!652814 (forall!4238 rules!3447 lambda!68752))))

(declare-fun e!1092634 () Bool)

(assert (=> d!524279 (= lt!652814 e!1092634)))

(declare-fun res!765785 () Bool)

(assert (=> d!524279 (=> res!765785 e!1092634)))

(assert (=> d!524279 (= res!765785 (not ((_ is Cons!18633) rules!3447)))))

(assert (=> d!524279 (= (rulesValidInductive!1080 thiss!24550 rules!3447) lt!652814)))

(declare-fun b!1708263 () Bool)

(declare-fun e!1092635 () Bool)

(assert (=> b!1708263 (= e!1092634 e!1092635)))

(declare-fun res!765786 () Bool)

(assert (=> b!1708263 (=> (not res!765786) (not e!1092635))))

(assert (=> b!1708263 (= res!765786 (ruleValid!788 thiss!24550 (h!24034 rules!3447)))))

(declare-fun b!1708264 () Bool)

(assert (=> b!1708264 (= e!1092635 (rulesValidInductive!1080 thiss!24550 (t!158068 rules!3447)))))

(assert (= (and d!524279 (not res!765785)) b!1708263))

(assert (= (and b!1708263 res!765786) b!1708264))

(declare-fun m!2111483 () Bool)

(assert (=> d!524279 m!2111483))

(declare-fun m!2111485 () Bool)

(assert (=> b!1708263 m!2111485))

(assert (=> b!1708264 m!2111417))

(assert (=> d!524107 d!524279))

(declare-fun d!524285 () Bool)

(declare-fun lt!652815 () Int)

(assert (=> d!524285 (>= lt!652815 0)))

(declare-fun e!1092636 () Int)

(assert (=> d!524285 (= lt!652815 e!1092636)))

(declare-fun c!279947 () Bool)

(assert (=> d!524285 (= c!279947 ((_ is Nil!18632) lt!652702))))

(assert (=> d!524285 (= (size!14824 lt!652702) lt!652815)))

(declare-fun b!1708265 () Bool)

(assert (=> b!1708265 (= e!1092636 0)))

(declare-fun b!1708266 () Bool)

(assert (=> b!1708266 (= e!1092636 (+ 1 (size!14824 (t!158067 lt!652702))))))

(assert (= (and d!524285 c!279947) b!1708265))

(assert (= (and d!524285 (not c!279947)) b!1708266))

(declare-fun m!2111487 () Bool)

(assert (=> b!1708266 m!2111487))

(assert (=> b!1707672 d!524285))

(assert (=> b!1707672 d!524249))

(declare-fun d!524287 () Bool)

(declare-fun lt!652818 () Int)

(assert (=> d!524287 (>= lt!652818 0)))

(declare-fun e!1092637 () Int)

(assert (=> d!524287 (= lt!652818 e!1092637)))

(declare-fun c!279948 () Bool)

(assert (=> d!524287 (= c!279948 ((_ is Nil!18632) (Cons!18632 (head!3820 suffix!1421) Nil!18632)))))

(assert (=> d!524287 (= (size!14824 (Cons!18632 (head!3820 suffix!1421) Nil!18632)) lt!652818)))

(declare-fun b!1708267 () Bool)

(assert (=> b!1708267 (= e!1092637 0)))

(declare-fun b!1708268 () Bool)

(assert (=> b!1708268 (= e!1092637 (+ 1 (size!14824 (t!158067 (Cons!18632 (head!3820 suffix!1421) Nil!18632)))))))

(assert (= (and d!524287 c!279948) b!1708267))

(assert (= (and d!524287 (not c!279948)) b!1708268))

(declare-fun m!2111489 () Bool)

(assert (=> b!1708268 m!2111489))

(assert (=> b!1707672 d!524287))

(declare-fun bs!401626 () Bool)

(declare-fun d!524289 () Bool)

(assert (= bs!401626 (and d!524289 d!524191)))

(declare-fun lambda!68755 () Int)

(assert (=> bs!401626 (= (and (= (toChars!4643 (transformation!3289 rule!422)) (toChars!4643 (transformation!3289 (h!24034 rules!3447)))) (= (toValue!4784 (transformation!3289 rule!422)) (toValue!4784 (transformation!3289 (h!24034 rules!3447))))) (= lambda!68755 lambda!68734))))

(declare-fun bs!401627 () Bool)

(assert (= bs!401627 (and d!524289 d!524201)))

(assert (=> bs!401627 (= (and (= (toChars!4643 (transformation!3289 rule!422)) (toChars!4643 (transformation!3289 (rule!5221 token!523)))) (= (toValue!4784 (transformation!3289 rule!422)) (toValue!4784 (transformation!3289 (rule!5221 token!523))))) (= lambda!68755 lambda!68736))))

(assert (=> d!524289 true))

(assert (=> d!524289 (< (dynLambda!8473 order!11237 (toChars!4643 (transformation!3289 rule!422))) (dynLambda!8475 order!11239 lambda!68755))))

(assert (=> d!524289 true))

(assert (=> d!524289 (< (dynLambda!8470 order!11233 (toValue!4784 (transformation!3289 rule!422))) (dynLambda!8475 order!11239 lambda!68755))))

(assert (=> d!524289 (= (semiInverseModEq!1297 (toChars!4643 (transformation!3289 rule!422)) (toValue!4784 (transformation!3289 rule!422))) (Forall!677 lambda!68755))))

(declare-fun bs!401629 () Bool)

(assert (= bs!401629 d!524289))

(declare-fun m!2111491 () Bool)

(assert (=> bs!401629 m!2111491))

(assert (=> d!524071 d!524289))

(declare-fun b!1708353 () Bool)

(declare-fun res!765815 () Bool)

(declare-fun e!1092688 () Bool)

(assert (=> b!1708353 (=> (not res!765815) (not e!1092688))))

(declare-fun lt!652845 () Option!3613)

(assert (=> b!1708353 (= res!765815 (= (value!103409 (_1!10581 (get!5477 lt!652845))) (apply!5106 (transformation!3289 (rule!5221 (_1!10581 (get!5477 lt!652845)))) (seqFromList!2271 (originalCharacters!4103 (_1!10581 (get!5477 lt!652845)))))))))

(declare-fun b!1708354 () Bool)

(declare-fun res!765814 () Bool)

(assert (=> b!1708354 (=> (not res!765814) (not e!1092688))))

(assert (=> b!1708354 (= res!765814 (= (rule!5221 (_1!10581 (get!5477 lt!652845))) (h!24034 rules!3447)))))

(declare-fun b!1708355 () Bool)

(declare-fun res!765817 () Bool)

(assert (=> b!1708355 (=> (not res!765817) (not e!1092688))))

(assert (=> b!1708355 (= res!765817 (< (size!14824 (_2!10581 (get!5477 lt!652845))) (size!14824 lt!652691)))))

(declare-fun b!1708356 () Bool)

(declare-fun res!765813 () Bool)

(assert (=> b!1708356 (=> (not res!765813) (not e!1092688))))

(assert (=> b!1708356 (= res!765813 (= (++!5110 (list!7512 (charsOf!1938 (_1!10581 (get!5477 lt!652845)))) (_2!10581 (get!5477 lt!652845))) lt!652691))))

(declare-fun d!524291 () Bool)

(declare-fun e!1092690 () Bool)

(assert (=> d!524291 e!1092690))

(declare-fun res!765819 () Bool)

(assert (=> d!524291 (=> res!765819 e!1092690)))

(assert (=> d!524291 (= res!765819 (isEmpty!11700 lt!652845))))

(declare-fun e!1092689 () Option!3613)

(assert (=> d!524291 (= lt!652845 e!1092689)))

(declare-fun c!279977 () Bool)

(declare-datatypes ((tuple2!18360 0))(
  ( (tuple2!18361 (_1!10582 List!18702) (_2!10582 List!18702)) )
))
(declare-fun lt!652844 () tuple2!18360)

(assert (=> d!524291 (= c!279977 (isEmpty!11697 (_1!10582 lt!652844)))))

(declare-fun findLongestMatch!309 (Regex!4617 List!18702) tuple2!18360)

(assert (=> d!524291 (= lt!652844 (findLongestMatch!309 (regex!3289 (h!24034 rules!3447)) lt!652691))))

(assert (=> d!524291 (ruleValid!788 thiss!24550 (h!24034 rules!3447))))

(assert (=> d!524291 (= (maxPrefixOneRule!862 thiss!24550 (h!24034 rules!3447) lt!652691) lt!652845)))

(declare-fun b!1708357 () Bool)

(assert (=> b!1708357 (= e!1092690 e!1092688)))

(declare-fun res!765818 () Bool)

(assert (=> b!1708357 (=> (not res!765818) (not e!1092688))))

(assert (=> b!1708357 (= res!765818 (matchR!2091 (regex!3289 (h!24034 rules!3447)) (list!7512 (charsOf!1938 (_1!10581 (get!5477 lt!652845))))))))

(declare-fun b!1708358 () Bool)

(declare-fun size!14825 (BalanceConc!12342) Int)

(assert (=> b!1708358 (= e!1092689 (Some!3612 (tuple2!18359 (Token!6145 (apply!5106 (transformation!3289 (h!24034 rules!3447)) (seqFromList!2271 (_1!10582 lt!652844))) (h!24034 rules!3447) (size!14825 (seqFromList!2271 (_1!10582 lt!652844))) (_1!10582 lt!652844)) (_2!10582 lt!652844))))))

(declare-fun lt!652842 () Unit!32465)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!366 (Regex!4617 List!18702) Unit!32465)

(assert (=> b!1708358 (= lt!652842 (longestMatchIsAcceptedByMatchOrIsEmpty!366 (regex!3289 (h!24034 rules!3447)) lt!652691))))

(declare-fun res!765816 () Bool)

(declare-fun findLongestMatchInner!382 (Regex!4617 List!18702 Int List!18702 List!18702 Int) tuple2!18360)

(assert (=> b!1708358 (= res!765816 (isEmpty!11697 (_1!10582 (findLongestMatchInner!382 (regex!3289 (h!24034 rules!3447)) Nil!18632 (size!14824 Nil!18632) lt!652691 lt!652691 (size!14824 lt!652691)))))))

(declare-fun e!1092687 () Bool)

(assert (=> b!1708358 (=> res!765816 e!1092687)))

(assert (=> b!1708358 e!1092687))

(declare-fun lt!652846 () Unit!32465)

(assert (=> b!1708358 (= lt!652846 lt!652842)))

(declare-fun lt!652843 () Unit!32465)

(declare-fun lemmaSemiInverse!448 (TokenValueInjection!6418 BalanceConc!12342) Unit!32465)

(assert (=> b!1708358 (= lt!652843 (lemmaSemiInverse!448 (transformation!3289 (h!24034 rules!3447)) (seqFromList!2271 (_1!10582 lt!652844))))))

(declare-fun b!1708359 () Bool)

(assert (=> b!1708359 (= e!1092689 None!3612)))

(declare-fun b!1708360 () Bool)

(assert (=> b!1708360 (= e!1092687 (matchR!2091 (regex!3289 (h!24034 rules!3447)) (_1!10582 (findLongestMatchInner!382 (regex!3289 (h!24034 rules!3447)) Nil!18632 (size!14824 Nil!18632) lt!652691 lt!652691 (size!14824 lt!652691)))))))

(declare-fun b!1708361 () Bool)

(assert (=> b!1708361 (= e!1092688 (= (size!14822 (_1!10581 (get!5477 lt!652845))) (size!14824 (originalCharacters!4103 (_1!10581 (get!5477 lt!652845))))))))

(assert (= (and d!524291 c!279977) b!1708359))

(assert (= (and d!524291 (not c!279977)) b!1708358))

(assert (= (and b!1708358 (not res!765816)) b!1708360))

(assert (= (and d!524291 (not res!765819)) b!1708357))

(assert (= (and b!1708357 res!765818) b!1708356))

(assert (= (and b!1708356 res!765813) b!1708355))

(assert (= (and b!1708355 res!765817) b!1708354))

(assert (= (and b!1708354 res!765814) b!1708353))

(assert (= (and b!1708353 res!765815) b!1708361))

(declare-fun m!2111559 () Bool)

(assert (=> b!1708357 m!2111559))

(declare-fun m!2111561 () Bool)

(assert (=> b!1708357 m!2111561))

(assert (=> b!1708357 m!2111561))

(declare-fun m!2111563 () Bool)

(assert (=> b!1708357 m!2111563))

(assert (=> b!1708357 m!2111563))

(declare-fun m!2111565 () Bool)

(assert (=> b!1708357 m!2111565))

(assert (=> b!1708353 m!2111559))

(declare-fun m!2111567 () Bool)

(assert (=> b!1708353 m!2111567))

(assert (=> b!1708353 m!2111567))

(declare-fun m!2111569 () Bool)

(assert (=> b!1708353 m!2111569))

(declare-fun m!2111571 () Bool)

(assert (=> d!524291 m!2111571))

(declare-fun m!2111573 () Bool)

(assert (=> d!524291 m!2111573))

(declare-fun m!2111575 () Bool)

(assert (=> d!524291 m!2111575))

(assert (=> d!524291 m!2111485))

(assert (=> b!1708361 m!2111559))

(declare-fun m!2111577 () Bool)

(assert (=> b!1708361 m!2111577))

(declare-fun m!2111579 () Bool)

(assert (=> b!1708360 m!2111579))

(assert (=> b!1708360 m!2111005))

(assert (=> b!1708360 m!2111579))

(assert (=> b!1708360 m!2111005))

(declare-fun m!2111581 () Bool)

(assert (=> b!1708360 m!2111581))

(declare-fun m!2111583 () Bool)

(assert (=> b!1708360 m!2111583))

(assert (=> b!1708356 m!2111559))

(assert (=> b!1708356 m!2111561))

(assert (=> b!1708356 m!2111561))

(assert (=> b!1708356 m!2111563))

(assert (=> b!1708356 m!2111563))

(declare-fun m!2111585 () Bool)

(assert (=> b!1708356 m!2111585))

(assert (=> b!1708354 m!2111559))

(assert (=> b!1708358 m!2111579))

(declare-fun m!2111587 () Bool)

(assert (=> b!1708358 m!2111587))

(assert (=> b!1708358 m!2111005))

(assert (=> b!1708358 m!2111587))

(declare-fun m!2111589 () Bool)

(assert (=> b!1708358 m!2111589))

(assert (=> b!1708358 m!2111587))

(declare-fun m!2111591 () Bool)

(assert (=> b!1708358 m!2111591))

(declare-fun m!2111593 () Bool)

(assert (=> b!1708358 m!2111593))

(assert (=> b!1708358 m!2111587))

(declare-fun m!2111595 () Bool)

(assert (=> b!1708358 m!2111595))

(assert (=> b!1708358 m!2111579))

(assert (=> b!1708358 m!2111005))

(assert (=> b!1708358 m!2111581))

(declare-fun m!2111597 () Bool)

(assert (=> b!1708358 m!2111597))

(assert (=> b!1708355 m!2111559))

(declare-fun m!2111599 () Bool)

(assert (=> b!1708355 m!2111599))

(assert (=> b!1708355 m!2111005))

(assert (=> bm!109319 d!524291))

(declare-fun bs!401637 () Bool)

(declare-fun d!524321 () Bool)

(assert (= bs!401637 (and d!524321 d!524055)))

(declare-fun lambda!68770 () Int)

(assert (=> bs!401637 (= lambda!68770 lambda!68728)))

(declare-fun lambda!68771 () Int)

(declare-fun forall!4241 (List!18706 Int) Bool)

(assert (=> d!524321 (forall!4241 (map!3832 rules!3447 lambda!68770) lambda!68771)))

(declare-fun lt!652851 () Unit!32465)

(declare-fun e!1092693 () Unit!32465)

(assert (=> d!524321 (= lt!652851 e!1092693)))

(declare-fun c!279980 () Bool)

(assert (=> d!524321 (= c!279980 ((_ is Nil!18633) rules!3447))))

(assert (=> d!524321 (rulesValidInductive!1080 thiss!24550 rules!3447)))

(assert (=> d!524321 (= (lemma!308 rules!3447 thiss!24550 rules!3447) lt!652851)))

(declare-fun b!1708366 () Bool)

(declare-fun Unit!32469 () Unit!32465)

(assert (=> b!1708366 (= e!1092693 Unit!32469)))

(declare-fun b!1708367 () Bool)

(declare-fun Unit!32470 () Unit!32465)

(assert (=> b!1708367 (= e!1092693 Unit!32470)))

(declare-fun lt!652852 () Unit!32465)

(assert (=> b!1708367 (= lt!652852 (lemma!308 rules!3447 thiss!24550 (t!158068 rules!3447)))))

(assert (= (and d!524321 c!279980) b!1708366))

(assert (= (and d!524321 (not c!279980)) b!1708367))

(declare-fun m!2111601 () Bool)

(assert (=> d!524321 m!2111601))

(assert (=> d!524321 m!2111601))

(declare-fun m!2111603 () Bool)

(assert (=> d!524321 m!2111603))

(assert (=> d!524321 m!2111177))

(declare-fun m!2111605 () Bool)

(assert (=> b!1708367 m!2111605))

(assert (=> d!524055 d!524321))

(declare-fun bs!401638 () Bool)

(declare-fun d!524323 () Bool)

(assert (= bs!401638 (and d!524323 d!524321)))

(declare-fun lambda!68774 () Int)

(assert (=> bs!401638 (= lambda!68774 lambda!68771)))

(declare-fun b!1708388 () Bool)

(declare-fun e!1092709 () Bool)

(declare-fun e!1092711 () Bool)

(assert (=> b!1708388 (= e!1092709 e!1092711)))

(declare-fun c!279992 () Bool)

(declare-fun isEmpty!11701 (List!18706) Bool)

(assert (=> b!1708388 (= c!279992 (isEmpty!11701 (map!3832 rules!3447 lambda!68728)))))

(declare-fun b!1708389 () Bool)

(declare-fun e!1092708 () Regex!4617)

(assert (=> b!1708389 (= e!1092708 (h!24037 (map!3832 rules!3447 lambda!68728)))))

(declare-fun b!1708390 () Bool)

(declare-fun lt!652855 () Regex!4617)

(declare-fun isEmptyLang!90 (Regex!4617) Bool)

(assert (=> b!1708390 (= e!1092711 (isEmptyLang!90 lt!652855))))

(declare-fun b!1708391 () Bool)

(declare-fun e!1092706 () Bool)

(assert (=> b!1708391 (= e!1092706 (isEmpty!11701 (t!158087 (map!3832 rules!3447 lambda!68728))))))

(declare-fun b!1708392 () Bool)

(declare-fun e!1092707 () Regex!4617)

(assert (=> b!1708392 (= e!1092707 EmptyLang!4617)))

(declare-fun b!1708394 () Bool)

(declare-fun e!1092710 () Bool)

(assert (=> b!1708394 (= e!1092711 e!1092710)))

(declare-fun c!279991 () Bool)

(declare-fun tail!2544 (List!18706) List!18706)

(assert (=> b!1708394 (= c!279991 (isEmpty!11701 (tail!2544 (map!3832 rules!3447 lambda!68728))))))

(declare-fun b!1708395 () Bool)

(assert (=> b!1708395 (= e!1092707 (Union!4617 (h!24037 (map!3832 rules!3447 lambda!68728)) (generalisedUnion!316 (t!158087 (map!3832 rules!3447 lambda!68728)))))))

(declare-fun b!1708396 () Bool)

(assert (=> b!1708396 (= e!1092708 e!1092707)))

(declare-fun c!279990 () Bool)

(assert (=> b!1708396 (= c!279990 ((_ is Cons!18636) (map!3832 rules!3447 lambda!68728)))))

(declare-fun b!1708397 () Bool)

(declare-fun isUnion!90 (Regex!4617) Bool)

(assert (=> b!1708397 (= e!1092710 (isUnion!90 lt!652855))))

(assert (=> d!524323 e!1092709))

(declare-fun res!765825 () Bool)

(assert (=> d!524323 (=> (not res!765825) (not e!1092709))))

(assert (=> d!524323 (= res!765825 (validRegex!1858 lt!652855))))

(assert (=> d!524323 (= lt!652855 e!1092708)))

(declare-fun c!279989 () Bool)

(assert (=> d!524323 (= c!279989 e!1092706)))

(declare-fun res!765824 () Bool)

(assert (=> d!524323 (=> (not res!765824) (not e!1092706))))

(assert (=> d!524323 (= res!765824 ((_ is Cons!18636) (map!3832 rules!3447 lambda!68728)))))

(assert (=> d!524323 (forall!4241 (map!3832 rules!3447 lambda!68728) lambda!68774)))

(assert (=> d!524323 (= (generalisedUnion!316 (map!3832 rules!3447 lambda!68728)) lt!652855)))

(declare-fun b!1708393 () Bool)

(declare-fun head!3822 (List!18706) Regex!4617)

(assert (=> b!1708393 (= e!1092710 (= lt!652855 (head!3822 (map!3832 rules!3447 lambda!68728))))))

(assert (= (and d!524323 res!765824) b!1708391))

(assert (= (and d!524323 c!279989) b!1708389))

(assert (= (and d!524323 (not c!279989)) b!1708396))

(assert (= (and b!1708396 c!279990) b!1708395))

(assert (= (and b!1708396 (not c!279990)) b!1708392))

(assert (= (and d!524323 res!765825) b!1708388))

(assert (= (and b!1708388 c!279992) b!1708390))

(assert (= (and b!1708388 (not c!279992)) b!1708394))

(assert (= (and b!1708394 c!279991) b!1708393))

(assert (= (and b!1708394 (not c!279991)) b!1708397))

(declare-fun m!2111607 () Bool)

(assert (=> d!524323 m!2111607))

(assert (=> d!524323 m!2111019))

(declare-fun m!2111609 () Bool)

(assert (=> d!524323 m!2111609))

(declare-fun m!2111611 () Bool)

(assert (=> b!1708395 m!2111611))

(declare-fun m!2111613 () Bool)

(assert (=> b!1708397 m!2111613))

(assert (=> b!1708388 m!2111019))

(declare-fun m!2111615 () Bool)

(assert (=> b!1708388 m!2111615))

(assert (=> b!1708394 m!2111019))

(declare-fun m!2111617 () Bool)

(assert (=> b!1708394 m!2111617))

(assert (=> b!1708394 m!2111617))

(declare-fun m!2111619 () Bool)

(assert (=> b!1708394 m!2111619))

(declare-fun m!2111621 () Bool)

(assert (=> b!1708390 m!2111621))

(assert (=> b!1708393 m!2111019))

(declare-fun m!2111623 () Bool)

(assert (=> b!1708393 m!2111623))

(declare-fun m!2111625 () Bool)

(assert (=> b!1708391 m!2111625))

(assert (=> d!524055 d!524323))

(declare-fun d!524325 () Bool)

(declare-fun lt!652868 () List!18706)

(declare-fun size!14826 (List!18706) Int)

(declare-fun size!14827 (List!18703) Int)

(assert (=> d!524325 (= (size!14826 lt!652868) (size!14827 rules!3447))))

(declare-fun e!1092722 () List!18706)

(assert (=> d!524325 (= lt!652868 e!1092722)))

(declare-fun c!279997 () Bool)

(assert (=> d!524325 (= c!279997 ((_ is Nil!18633) rules!3447))))

(assert (=> d!524325 (= (map!3832 rules!3447 lambda!68728) lt!652868)))

(declare-fun b!1708416 () Bool)

(assert (=> b!1708416 (= e!1092722 Nil!18636)))

(declare-fun b!1708417 () Bool)

(declare-fun $colon$colon!421 (List!18706 Regex!4617) List!18706)

(declare-fun dynLambda!8479 (Int Rule!6378) Regex!4617)

(assert (=> b!1708417 (= e!1092722 ($colon$colon!421 (map!3832 (t!158068 rules!3447) lambda!68728) (dynLambda!8479 lambda!68728 (h!24034 rules!3447))))))

(assert (= (and d!524325 c!279997) b!1708416))

(assert (= (and d!524325 (not c!279997)) b!1708417))

(declare-fun b_lambda!53927 () Bool)

(assert (=> (not b_lambda!53927) (not b!1708417)))

(declare-fun m!2111627 () Bool)

(assert (=> d!524325 m!2111627))

(declare-fun m!2111629 () Bool)

(assert (=> d!524325 m!2111629))

(declare-fun m!2111631 () Bool)

(assert (=> b!1708417 m!2111631))

(declare-fun m!2111633 () Bool)

(assert (=> b!1708417 m!2111633))

(assert (=> b!1708417 m!2111631))

(assert (=> b!1708417 m!2111633))

(declare-fun m!2111635 () Bool)

(assert (=> b!1708417 m!2111635))

(assert (=> d!524055 d!524325))

(assert (=> b!1707790 d!524221))

(declare-fun b!1708422 () Bool)

(declare-fun e!1092729 () Bool)

(assert (=> b!1708422 (= e!1092729 (not (= (head!3820 (list!7512 (charsOf!1938 (_1!10581 (get!5477 lt!652755))))) (c!279810 (regex!3289 (rule!5221 (_1!10581 (get!5477 lt!652755))))))))))

(declare-fun b!1708423 () Bool)

(declare-fun e!1092724 () Bool)

(declare-fun lt!652869 () Bool)

(declare-fun call!109365 () Bool)

(assert (=> b!1708423 (= e!1092724 (= lt!652869 call!109365))))

(declare-fun bm!109360 () Bool)

(assert (=> bm!109360 (= call!109365 (isEmpty!11697 (list!7512 (charsOf!1938 (_1!10581 (get!5477 lt!652755))))))))

(declare-fun d!524327 () Bool)

(assert (=> d!524327 e!1092724))

(declare-fun c!280000 () Bool)

(assert (=> d!524327 (= c!280000 ((_ is EmptyExpr!4617) (regex!3289 (rule!5221 (_1!10581 (get!5477 lt!652755))))))))

(declare-fun e!1092726 () Bool)

(assert (=> d!524327 (= lt!652869 e!1092726)))

(declare-fun c!279999 () Bool)

(assert (=> d!524327 (= c!279999 (isEmpty!11697 (list!7512 (charsOf!1938 (_1!10581 (get!5477 lt!652755))))))))

(assert (=> d!524327 (validRegex!1858 (regex!3289 (rule!5221 (_1!10581 (get!5477 lt!652755)))))))

(assert (=> d!524327 (= (matchR!2091 (regex!3289 (rule!5221 (_1!10581 (get!5477 lt!652755)))) (list!7512 (charsOf!1938 (_1!10581 (get!5477 lt!652755))))) lt!652869)))

(declare-fun b!1708424 () Bool)

(declare-fun res!765840 () Bool)

(assert (=> b!1708424 (=> res!765840 e!1092729)))

(assert (=> b!1708424 (= res!765840 (not (isEmpty!11697 (tail!2543 (list!7512 (charsOf!1938 (_1!10581 (get!5477 lt!652755))))))))))

(declare-fun b!1708425 () Bool)

(declare-fun e!1092727 () Bool)

(assert (=> b!1708425 (= e!1092727 (= (head!3820 (list!7512 (charsOf!1938 (_1!10581 (get!5477 lt!652755))))) (c!279810 (regex!3289 (rule!5221 (_1!10581 (get!5477 lt!652755)))))))))

(declare-fun b!1708426 () Bool)

(declare-fun res!765842 () Bool)

(assert (=> b!1708426 (=> (not res!765842) (not e!1092727))))

(assert (=> b!1708426 (= res!765842 (isEmpty!11697 (tail!2543 (list!7512 (charsOf!1938 (_1!10581 (get!5477 lt!652755)))))))))

(declare-fun b!1708427 () Bool)

(declare-fun e!1092723 () Bool)

(assert (=> b!1708427 (= e!1092724 e!1092723)))

(declare-fun c!279998 () Bool)

(assert (=> b!1708427 (= c!279998 ((_ is EmptyLang!4617) (regex!3289 (rule!5221 (_1!10581 (get!5477 lt!652755))))))))

(declare-fun b!1708428 () Bool)

(declare-fun res!765843 () Bool)

(assert (=> b!1708428 (=> (not res!765843) (not e!1092727))))

(assert (=> b!1708428 (= res!765843 (not call!109365))))

(declare-fun b!1708429 () Bool)

(assert (=> b!1708429 (= e!1092723 (not lt!652869))))

(declare-fun b!1708430 () Bool)

(declare-fun e!1092725 () Bool)

(assert (=> b!1708430 (= e!1092725 e!1092729)))

(declare-fun res!765844 () Bool)

(assert (=> b!1708430 (=> res!765844 e!1092729)))

(assert (=> b!1708430 (= res!765844 call!109365)))

(declare-fun b!1708431 () Bool)

(declare-fun res!765845 () Bool)

(declare-fun e!1092728 () Bool)

(assert (=> b!1708431 (=> res!765845 e!1092728)))

(assert (=> b!1708431 (= res!765845 e!1092727)))

(declare-fun res!765841 () Bool)

(assert (=> b!1708431 (=> (not res!765841) (not e!1092727))))

(assert (=> b!1708431 (= res!765841 lt!652869)))

(declare-fun b!1708432 () Bool)

(assert (=> b!1708432 (= e!1092728 e!1092725)))

(declare-fun res!765847 () Bool)

(assert (=> b!1708432 (=> (not res!765847) (not e!1092725))))

(assert (=> b!1708432 (= res!765847 (not lt!652869))))

(declare-fun b!1708433 () Bool)

(declare-fun res!765846 () Bool)

(assert (=> b!1708433 (=> res!765846 e!1092728)))

(assert (=> b!1708433 (= res!765846 (not ((_ is ElementMatch!4617) (regex!3289 (rule!5221 (_1!10581 (get!5477 lt!652755)))))))))

(assert (=> b!1708433 (= e!1092723 e!1092728)))

(declare-fun b!1708434 () Bool)

(assert (=> b!1708434 (= e!1092726 (nullable!1384 (regex!3289 (rule!5221 (_1!10581 (get!5477 lt!652755))))))))

(declare-fun b!1708435 () Bool)

(assert (=> b!1708435 (= e!1092726 (matchR!2091 (derivativeStep!1152 (regex!3289 (rule!5221 (_1!10581 (get!5477 lt!652755)))) (head!3820 (list!7512 (charsOf!1938 (_1!10581 (get!5477 lt!652755)))))) (tail!2543 (list!7512 (charsOf!1938 (_1!10581 (get!5477 lt!652755)))))))))

(assert (= (and d!524327 c!279999) b!1708434))

(assert (= (and d!524327 (not c!279999)) b!1708435))

(assert (= (and d!524327 c!280000) b!1708423))

(assert (= (and d!524327 (not c!280000)) b!1708427))

(assert (= (and b!1708427 c!279998) b!1708429))

(assert (= (and b!1708427 (not c!279998)) b!1708433))

(assert (= (and b!1708433 (not res!765846)) b!1708431))

(assert (= (and b!1708431 res!765841) b!1708428))

(assert (= (and b!1708428 res!765843) b!1708426))

(assert (= (and b!1708426 res!765842) b!1708425))

(assert (= (and b!1708431 (not res!765845)) b!1708432))

(assert (= (and b!1708432 res!765847) b!1708430))

(assert (= (and b!1708430 (not res!765844)) b!1708424))

(assert (= (and b!1708424 (not res!765840)) b!1708422))

(assert (= (or b!1708423 b!1708428 b!1708430) bm!109360))

(declare-fun m!2111637 () Bool)

(assert (=> b!1708434 m!2111637))

(assert (=> b!1708426 m!2111183))

(declare-fun m!2111639 () Bool)

(assert (=> b!1708426 m!2111639))

(assert (=> b!1708426 m!2111639))

(declare-fun m!2111641 () Bool)

(assert (=> b!1708426 m!2111641))

(assert (=> b!1708435 m!2111183))

(declare-fun m!2111643 () Bool)

(assert (=> b!1708435 m!2111643))

(assert (=> b!1708435 m!2111643))

(declare-fun m!2111645 () Bool)

(assert (=> b!1708435 m!2111645))

(assert (=> b!1708435 m!2111183))

(assert (=> b!1708435 m!2111639))

(assert (=> b!1708435 m!2111645))

(assert (=> b!1708435 m!2111639))

(declare-fun m!2111647 () Bool)

(assert (=> b!1708435 m!2111647))

(assert (=> bm!109360 m!2111183))

(declare-fun m!2111649 () Bool)

(assert (=> bm!109360 m!2111649))

(assert (=> b!1708425 m!2111183))

(assert (=> b!1708425 m!2111643))

(assert (=> b!1708422 m!2111183))

(assert (=> b!1708422 m!2111643))

(assert (=> b!1708424 m!2111183))

(assert (=> b!1708424 m!2111639))

(assert (=> b!1708424 m!2111639))

(assert (=> b!1708424 m!2111641))

(assert (=> d!524327 m!2111183))

(assert (=> d!524327 m!2111649))

(declare-fun m!2111651 () Bool)

(assert (=> d!524327 m!2111651))

(assert (=> b!1707917 d!524327))

(assert (=> b!1707917 d!524151))

(assert (=> b!1707917 d!524145))

(assert (=> b!1707917 d!524147))

(declare-fun b!1708436 () Bool)

(declare-fun e!1092730 () Bool)

(assert (=> b!1708436 (= e!1092730 tp_is_empty!7477)))

(declare-fun b!1708439 () Bool)

(declare-fun tp!488009 () Bool)

(declare-fun tp!488010 () Bool)

(assert (=> b!1708439 (= e!1092730 (and tp!488009 tp!488010))))

(declare-fun b!1708438 () Bool)

(declare-fun tp!488011 () Bool)

(assert (=> b!1708438 (= e!1092730 tp!488011)))

(assert (=> b!1707973 (= tp!487996 e!1092730)))

(declare-fun b!1708437 () Bool)

(declare-fun tp!488007 () Bool)

(declare-fun tp!488008 () Bool)

(assert (=> b!1708437 (= e!1092730 (and tp!488007 tp!488008))))

(assert (= (and b!1707973 ((_ is ElementMatch!4617) (regOne!9747 (regex!3289 (h!24034 rules!3447))))) b!1708436))

(assert (= (and b!1707973 ((_ is Concat!7997) (regOne!9747 (regex!3289 (h!24034 rules!3447))))) b!1708437))

(assert (= (and b!1707973 ((_ is Star!4617) (regOne!9747 (regex!3289 (h!24034 rules!3447))))) b!1708438))

(assert (= (and b!1707973 ((_ is Union!4617) (regOne!9747 (regex!3289 (h!24034 rules!3447))))) b!1708439))

(declare-fun b!1708440 () Bool)

(declare-fun e!1092731 () Bool)

(assert (=> b!1708440 (= e!1092731 tp_is_empty!7477)))

(declare-fun b!1708443 () Bool)

(declare-fun tp!488014 () Bool)

(declare-fun tp!488015 () Bool)

(assert (=> b!1708443 (= e!1092731 (and tp!488014 tp!488015))))

(declare-fun b!1708442 () Bool)

(declare-fun tp!488016 () Bool)

(assert (=> b!1708442 (= e!1092731 tp!488016)))

(assert (=> b!1707973 (= tp!487997 e!1092731)))

(declare-fun b!1708441 () Bool)

(declare-fun tp!488012 () Bool)

(declare-fun tp!488013 () Bool)

(assert (=> b!1708441 (= e!1092731 (and tp!488012 tp!488013))))

(assert (= (and b!1707973 ((_ is ElementMatch!4617) (regTwo!9747 (regex!3289 (h!24034 rules!3447))))) b!1708440))

(assert (= (and b!1707973 ((_ is Concat!7997) (regTwo!9747 (regex!3289 (h!24034 rules!3447))))) b!1708441))

(assert (= (and b!1707973 ((_ is Star!4617) (regTwo!9747 (regex!3289 (h!24034 rules!3447))))) b!1708442))

(assert (= (and b!1707973 ((_ is Union!4617) (regTwo!9747 (regex!3289 (h!24034 rules!3447))))) b!1708443))

(declare-fun e!1092737 () Bool)

(declare-fun b!1708452 () Bool)

(declare-fun tp!488023 () Bool)

(declare-fun tp!488024 () Bool)

(assert (=> b!1708452 (= e!1092737 (and (inv!24041 (left!14865 (c!279811 (dynLambda!8469 (toChars!4643 (transformation!3289 (rule!5221 token!523))) (value!103409 token!523))))) tp!488024 (inv!24041 (right!15195 (c!279811 (dynLambda!8469 (toChars!4643 (transformation!3289 (rule!5221 token!523))) (value!103409 token!523))))) tp!488023))))

(declare-fun b!1708454 () Bool)

(declare-fun e!1092736 () Bool)

(declare-fun tp!488025 () Bool)

(assert (=> b!1708454 (= e!1092736 tp!488025)))

(declare-fun b!1708453 () Bool)

(declare-fun inv!24045 (IArray!12403) Bool)

(assert (=> b!1708453 (= e!1092737 (and (inv!24045 (xs!9075 (c!279811 (dynLambda!8469 (toChars!4643 (transformation!3289 (rule!5221 token!523))) (value!103409 token!523))))) e!1092736))))

(assert (=> b!1707684 (= tp!487919 (and (inv!24041 (c!279811 (dynLambda!8469 (toChars!4643 (transformation!3289 (rule!5221 token!523))) (value!103409 token!523)))) e!1092737))))

(assert (= (and b!1707684 ((_ is Node!6199) (c!279811 (dynLambda!8469 (toChars!4643 (transformation!3289 (rule!5221 token!523))) (value!103409 token!523))))) b!1708452))

(assert (= b!1708453 b!1708454))

(assert (= (and b!1707684 ((_ is Leaf!9064) (c!279811 (dynLambda!8469 (toChars!4643 (transformation!3289 (rule!5221 token!523))) (value!103409 token!523))))) b!1708453))

(declare-fun m!2111653 () Bool)

(assert (=> b!1708452 m!2111653))

(declare-fun m!2111655 () Bool)

(assert (=> b!1708452 m!2111655))

(declare-fun m!2111657 () Bool)

(assert (=> b!1708453 m!2111657))

(assert (=> b!1707684 m!2111023))

(declare-fun b!1708455 () Bool)

(declare-fun e!1092738 () Bool)

(assert (=> b!1708455 (= e!1092738 tp_is_empty!7477)))

(declare-fun b!1708458 () Bool)

(declare-fun tp!488028 () Bool)

(declare-fun tp!488029 () Bool)

(assert (=> b!1708458 (= e!1092738 (and tp!488028 tp!488029))))

(declare-fun b!1708457 () Bool)

(declare-fun tp!488030 () Bool)

(assert (=> b!1708457 (= e!1092738 tp!488030)))

(assert (=> b!1707956 (= tp!487977 e!1092738)))

(declare-fun b!1708456 () Bool)

(declare-fun tp!488026 () Bool)

(declare-fun tp!488027 () Bool)

(assert (=> b!1708456 (= e!1092738 (and tp!488026 tp!488027))))

(assert (= (and b!1707956 ((_ is ElementMatch!4617) (regOne!9746 (regex!3289 (rule!5221 token!523))))) b!1708455))

(assert (= (and b!1707956 ((_ is Concat!7997) (regOne!9746 (regex!3289 (rule!5221 token!523))))) b!1708456))

(assert (= (and b!1707956 ((_ is Star!4617) (regOne!9746 (regex!3289 (rule!5221 token!523))))) b!1708457))

(assert (= (and b!1707956 ((_ is Union!4617) (regOne!9746 (regex!3289 (rule!5221 token!523))))) b!1708458))

(declare-fun b!1708459 () Bool)

(declare-fun e!1092739 () Bool)

(assert (=> b!1708459 (= e!1092739 tp_is_empty!7477)))

(declare-fun b!1708462 () Bool)

(declare-fun tp!488033 () Bool)

(declare-fun tp!488034 () Bool)

(assert (=> b!1708462 (= e!1092739 (and tp!488033 tp!488034))))

(declare-fun b!1708461 () Bool)

(declare-fun tp!488035 () Bool)

(assert (=> b!1708461 (= e!1092739 tp!488035)))

(assert (=> b!1707956 (= tp!487978 e!1092739)))

(declare-fun b!1708460 () Bool)

(declare-fun tp!488031 () Bool)

(declare-fun tp!488032 () Bool)

(assert (=> b!1708460 (= e!1092739 (and tp!488031 tp!488032))))

(assert (= (and b!1707956 ((_ is ElementMatch!4617) (regTwo!9746 (regex!3289 (rule!5221 token!523))))) b!1708459))

(assert (= (and b!1707956 ((_ is Concat!7997) (regTwo!9746 (regex!3289 (rule!5221 token!523))))) b!1708460))

(assert (= (and b!1707956 ((_ is Star!4617) (regTwo!9746 (regex!3289 (rule!5221 token!523))))) b!1708461))

(assert (= (and b!1707956 ((_ is Union!4617) (regTwo!9746 (regex!3289 (rule!5221 token!523))))) b!1708462))

(declare-fun b!1708463 () Bool)

(declare-fun e!1092740 () Bool)

(declare-fun tp!488036 () Bool)

(assert (=> b!1708463 (= e!1092740 (and tp_is_empty!7477 tp!488036))))

(assert (=> b!1707978 (= tp!488004 e!1092740)))

(assert (= (and b!1707978 ((_ is Cons!18632) (t!158067 (originalCharacters!4103 token!523)))) b!1708463))

(declare-fun b!1708464 () Bool)

(declare-fun e!1092741 () Bool)

(assert (=> b!1708464 (= e!1092741 tp_is_empty!7477)))

(declare-fun b!1708467 () Bool)

(declare-fun tp!488039 () Bool)

(declare-fun tp!488040 () Bool)

(assert (=> b!1708467 (= e!1092741 (and tp!488039 tp!488040))))

(declare-fun b!1708466 () Bool)

(declare-fun tp!488041 () Bool)

(assert (=> b!1708466 (= e!1092741 tp!488041)))

(assert (=> b!1707957 (= tp!487981 e!1092741)))

(declare-fun b!1708465 () Bool)

(declare-fun tp!488037 () Bool)

(declare-fun tp!488038 () Bool)

(assert (=> b!1708465 (= e!1092741 (and tp!488037 tp!488038))))

(assert (= (and b!1707957 ((_ is ElementMatch!4617) (reg!4946 (regex!3289 (rule!5221 token!523))))) b!1708464))

(assert (= (and b!1707957 ((_ is Concat!7997) (reg!4946 (regex!3289 (rule!5221 token!523))))) b!1708465))

(assert (= (and b!1707957 ((_ is Star!4617) (reg!4946 (regex!3289 (rule!5221 token!523))))) b!1708466))

(assert (= (and b!1707957 ((_ is Union!4617) (reg!4946 (regex!3289 (rule!5221 token!523))))) b!1708467))

(declare-fun b!1708468 () Bool)

(declare-fun e!1092742 () Bool)

(assert (=> b!1708468 (= e!1092742 tp_is_empty!7477)))

(declare-fun b!1708471 () Bool)

(declare-fun tp!488044 () Bool)

(declare-fun tp!488045 () Bool)

(assert (=> b!1708471 (= e!1092742 (and tp!488044 tp!488045))))

(declare-fun b!1708470 () Bool)

(declare-fun tp!488046 () Bool)

(assert (=> b!1708470 (= e!1092742 tp!488046)))

(assert (=> b!1707958 (= tp!487979 e!1092742)))

(declare-fun b!1708469 () Bool)

(declare-fun tp!488042 () Bool)

(declare-fun tp!488043 () Bool)

(assert (=> b!1708469 (= e!1092742 (and tp!488042 tp!488043))))

(assert (= (and b!1707958 ((_ is ElementMatch!4617) (regOne!9747 (regex!3289 (rule!5221 token!523))))) b!1708468))

(assert (= (and b!1707958 ((_ is Concat!7997) (regOne!9747 (regex!3289 (rule!5221 token!523))))) b!1708469))

(assert (= (and b!1707958 ((_ is Star!4617) (regOne!9747 (regex!3289 (rule!5221 token!523))))) b!1708470))

(assert (= (and b!1707958 ((_ is Union!4617) (regOne!9747 (regex!3289 (rule!5221 token!523))))) b!1708471))

(declare-fun b!1708472 () Bool)

(declare-fun e!1092743 () Bool)

(assert (=> b!1708472 (= e!1092743 tp_is_empty!7477)))

(declare-fun b!1708475 () Bool)

(declare-fun tp!488049 () Bool)

(declare-fun tp!488050 () Bool)

(assert (=> b!1708475 (= e!1092743 (and tp!488049 tp!488050))))

(declare-fun b!1708474 () Bool)

(declare-fun tp!488051 () Bool)

(assert (=> b!1708474 (= e!1092743 tp!488051)))

(assert (=> b!1707958 (= tp!487980 e!1092743)))

(declare-fun b!1708473 () Bool)

(declare-fun tp!488047 () Bool)

(declare-fun tp!488048 () Bool)

(assert (=> b!1708473 (= e!1092743 (and tp!488047 tp!488048))))

(assert (= (and b!1707958 ((_ is ElementMatch!4617) (regTwo!9747 (regex!3289 (rule!5221 token!523))))) b!1708472))

(assert (= (and b!1707958 ((_ is Concat!7997) (regTwo!9747 (regex!3289 (rule!5221 token!523))))) b!1708473))

(assert (= (and b!1707958 ((_ is Star!4617) (regTwo!9747 (regex!3289 (rule!5221 token!523))))) b!1708474))

(assert (= (and b!1707958 ((_ is Union!4617) (regTwo!9747 (regex!3289 (rule!5221 token!523))))) b!1708475))

(declare-fun b!1708485 () Bool)

(declare-fun e!1092748 () Bool)

(assert (=> b!1708485 (= e!1092748 tp_is_empty!7477)))

(declare-fun b!1708488 () Bool)

(declare-fun tp!488054 () Bool)

(declare-fun tp!488055 () Bool)

(assert (=> b!1708488 (= e!1092748 (and tp!488054 tp!488055))))

(declare-fun b!1708487 () Bool)

(declare-fun tp!488056 () Bool)

(assert (=> b!1708487 (= e!1092748 tp!488056)))

(assert (=> b!1707975 (= tp!487999 e!1092748)))

(declare-fun b!1708486 () Bool)

(declare-fun tp!488052 () Bool)

(declare-fun tp!488053 () Bool)

(assert (=> b!1708486 (= e!1092748 (and tp!488052 tp!488053))))

(assert (= (and b!1707975 ((_ is ElementMatch!4617) (regOne!9746 (regex!3289 rule!422)))) b!1708485))

(assert (= (and b!1707975 ((_ is Concat!7997) (regOne!9746 (regex!3289 rule!422)))) b!1708486))

(assert (= (and b!1707975 ((_ is Star!4617) (regOne!9746 (regex!3289 rule!422)))) b!1708487))

(assert (= (and b!1707975 ((_ is Union!4617) (regOne!9746 (regex!3289 rule!422)))) b!1708488))

(declare-fun b!1708489 () Bool)

(declare-fun e!1092749 () Bool)

(assert (=> b!1708489 (= e!1092749 tp_is_empty!7477)))

(declare-fun b!1708492 () Bool)

(declare-fun tp!488059 () Bool)

(declare-fun tp!488060 () Bool)

(assert (=> b!1708492 (= e!1092749 (and tp!488059 tp!488060))))

(declare-fun b!1708491 () Bool)

(declare-fun tp!488061 () Bool)

(assert (=> b!1708491 (= e!1092749 tp!488061)))

(assert (=> b!1707975 (= tp!488000 e!1092749)))

(declare-fun b!1708490 () Bool)

(declare-fun tp!488057 () Bool)

(declare-fun tp!488058 () Bool)

(assert (=> b!1708490 (= e!1092749 (and tp!488057 tp!488058))))

(assert (= (and b!1707975 ((_ is ElementMatch!4617) (regTwo!9746 (regex!3289 rule!422)))) b!1708489))

(assert (= (and b!1707975 ((_ is Concat!7997) (regTwo!9746 (regex!3289 rule!422)))) b!1708490))

(assert (= (and b!1707975 ((_ is Star!4617) (regTwo!9746 (regex!3289 rule!422)))) b!1708491))

(assert (= (and b!1707975 ((_ is Union!4617) (regTwo!9746 (regex!3289 rule!422)))) b!1708492))

(declare-fun b!1708493 () Bool)

(declare-fun e!1092750 () Bool)

(assert (=> b!1708493 (= e!1092750 tp_is_empty!7477)))

(declare-fun b!1708496 () Bool)

(declare-fun tp!488064 () Bool)

(declare-fun tp!488065 () Bool)

(assert (=> b!1708496 (= e!1092750 (and tp!488064 tp!488065))))

(declare-fun b!1708495 () Bool)

(declare-fun tp!488066 () Bool)

(assert (=> b!1708495 (= e!1092750 tp!488066)))

(assert (=> b!1707976 (= tp!488003 e!1092750)))

(declare-fun b!1708494 () Bool)

(declare-fun tp!488062 () Bool)

(declare-fun tp!488063 () Bool)

(assert (=> b!1708494 (= e!1092750 (and tp!488062 tp!488063))))

(assert (= (and b!1707976 ((_ is ElementMatch!4617) (reg!4946 (regex!3289 rule!422)))) b!1708493))

(assert (= (and b!1707976 ((_ is Concat!7997) (reg!4946 (regex!3289 rule!422)))) b!1708494))

(assert (= (and b!1707976 ((_ is Star!4617) (reg!4946 (regex!3289 rule!422)))) b!1708495))

(assert (= (and b!1707976 ((_ is Union!4617) (reg!4946 (regex!3289 rule!422)))) b!1708496))

(declare-fun b!1708499 () Bool)

(declare-fun b_free!46239 () Bool)

(declare-fun b_next!46943 () Bool)

(assert (=> b!1708499 (= b_free!46239 (not b_next!46943))))

(declare-fun tb!100859 () Bool)

(declare-fun t!158124 () Bool)

(assert (=> (and b!1708499 (= (toValue!4784 (transformation!3289 (h!24034 (t!158068 (t!158068 rules!3447))))) (toValue!4784 (transformation!3289 (rule!5221 (_1!10581 (get!5477 lt!652755)))))) t!158124) tb!100859))

(declare-fun result!121168 () Bool)

(assert (= result!121168 result!121138))

(assert (=> d!524169 t!158124))

(declare-fun b_and!123605 () Bool)

(declare-fun tp!488070 () Bool)

(assert (=> b!1708499 (= tp!488070 (and (=> t!158124 result!121168) b_and!123605))))

(declare-fun b_free!46241 () Bool)

(declare-fun b_next!46945 () Bool)

(assert (=> b!1708499 (= b_free!46241 (not b_next!46945))))

(declare-fun tb!100861 () Bool)

(declare-fun t!158126 () Bool)

(assert (=> (and b!1708499 (= (toChars!4643 (transformation!3289 (h!24034 (t!158068 (t!158068 rules!3447))))) (toChars!4643 (transformation!3289 (rule!5221 token!523)))) t!158126) tb!100861))

(declare-fun result!121170 () Bool)

(assert (= result!121170 result!121098))

(assert (=> b!1707678 t!158126))

(assert (=> d!524127 t!158126))

(declare-fun tb!100863 () Bool)

(declare-fun t!158128 () Bool)

(assert (=> (and b!1708499 (= (toChars!4643 (transformation!3289 (h!24034 (t!158068 (t!158068 rules!3447))))) (toChars!4643 (transformation!3289 (rule!5221 (_1!10581 (get!5477 lt!652755)))))) t!158128) tb!100863))

(declare-fun result!121172 () Bool)

(assert (= result!121172 result!121130))

(assert (=> d!524147 t!158128))

(declare-fun tp!488069 () Bool)

(declare-fun b_and!123607 () Bool)

(assert (=> b!1708499 (= tp!488069 (and (=> t!158126 result!121170) (=> t!158128 result!121172) b_and!123607))))

(declare-fun e!1092754 () Bool)

(assert (=> b!1708499 (= e!1092754 (and tp!488070 tp!488069))))

(declare-fun tp!488068 () Bool)

(declare-fun e!1092751 () Bool)

(declare-fun b!1708498 () Bool)

(assert (=> b!1708498 (= e!1092751 (and tp!488068 (inv!24034 (tag!3585 (h!24034 (t!158068 (t!158068 rules!3447))))) (inv!24037 (transformation!3289 (h!24034 (t!158068 (t!158068 rules!3447))))) e!1092754))))

(declare-fun b!1708497 () Bool)

(declare-fun e!1092753 () Bool)

(declare-fun tp!488067 () Bool)

(assert (=> b!1708497 (= e!1092753 (and e!1092751 tp!488067))))

(assert (=> b!1707967 (= tp!487990 e!1092753)))

(assert (= b!1708498 b!1708499))

(assert (= b!1708497 b!1708498))

(assert (= (and b!1707967 ((_ is Cons!18633) (t!158068 (t!158068 rules!3447)))) b!1708497))

(declare-fun m!2111659 () Bool)

(assert (=> b!1708498 m!2111659))

(declare-fun m!2111661 () Bool)

(assert (=> b!1708498 m!2111661))

(declare-fun b!1708500 () Bool)

(declare-fun e!1092755 () Bool)

(assert (=> b!1708500 (= e!1092755 tp_is_empty!7477)))

(declare-fun b!1708503 () Bool)

(declare-fun tp!488073 () Bool)

(declare-fun tp!488074 () Bool)

(assert (=> b!1708503 (= e!1092755 (and tp!488073 tp!488074))))

(declare-fun b!1708502 () Bool)

(declare-fun tp!488075 () Bool)

(assert (=> b!1708502 (= e!1092755 tp!488075)))

(assert (=> b!1707971 (= tp!487994 e!1092755)))

(declare-fun b!1708501 () Bool)

(declare-fun tp!488071 () Bool)

(declare-fun tp!488072 () Bool)

(assert (=> b!1708501 (= e!1092755 (and tp!488071 tp!488072))))

(assert (= (and b!1707971 ((_ is ElementMatch!4617) (regOne!9746 (regex!3289 (h!24034 rules!3447))))) b!1708500))

(assert (= (and b!1707971 ((_ is Concat!7997) (regOne!9746 (regex!3289 (h!24034 rules!3447))))) b!1708501))

(assert (= (and b!1707971 ((_ is Star!4617) (regOne!9746 (regex!3289 (h!24034 rules!3447))))) b!1708502))

(assert (= (and b!1707971 ((_ is Union!4617) (regOne!9746 (regex!3289 (h!24034 rules!3447))))) b!1708503))

(declare-fun b!1708504 () Bool)

(declare-fun e!1092756 () Bool)

(assert (=> b!1708504 (= e!1092756 tp_is_empty!7477)))

(declare-fun b!1708507 () Bool)

(declare-fun tp!488078 () Bool)

(declare-fun tp!488079 () Bool)

(assert (=> b!1708507 (= e!1092756 (and tp!488078 tp!488079))))

(declare-fun b!1708506 () Bool)

(declare-fun tp!488080 () Bool)

(assert (=> b!1708506 (= e!1092756 tp!488080)))

(assert (=> b!1707971 (= tp!487995 e!1092756)))

(declare-fun b!1708505 () Bool)

(declare-fun tp!488076 () Bool)

(declare-fun tp!488077 () Bool)

(assert (=> b!1708505 (= e!1092756 (and tp!488076 tp!488077))))

(assert (= (and b!1707971 ((_ is ElementMatch!4617) (regTwo!9746 (regex!3289 (h!24034 rules!3447))))) b!1708504))

(assert (= (and b!1707971 ((_ is Concat!7997) (regTwo!9746 (regex!3289 (h!24034 rules!3447))))) b!1708505))

(assert (= (and b!1707971 ((_ is Star!4617) (regTwo!9746 (regex!3289 (h!24034 rules!3447))))) b!1708506))

(assert (= (and b!1707971 ((_ is Union!4617) (regTwo!9746 (regex!3289 (h!24034 rules!3447))))) b!1708507))

(declare-fun b!1708508 () Bool)

(declare-fun e!1092757 () Bool)

(assert (=> b!1708508 (= e!1092757 tp_is_empty!7477)))

(declare-fun b!1708511 () Bool)

(declare-fun tp!488083 () Bool)

(declare-fun tp!488084 () Bool)

(assert (=> b!1708511 (= e!1092757 (and tp!488083 tp!488084))))

(declare-fun b!1708510 () Bool)

(declare-fun tp!488085 () Bool)

(assert (=> b!1708510 (= e!1092757 tp!488085)))

(assert (=> b!1707968 (= tp!487991 e!1092757)))

(declare-fun b!1708509 () Bool)

(declare-fun tp!488081 () Bool)

(declare-fun tp!488082 () Bool)

(assert (=> b!1708509 (= e!1092757 (and tp!488081 tp!488082))))

(assert (= (and b!1707968 ((_ is ElementMatch!4617) (regex!3289 (h!24034 (t!158068 rules!3447))))) b!1708508))

(assert (= (and b!1707968 ((_ is Concat!7997) (regex!3289 (h!24034 (t!158068 rules!3447))))) b!1708509))

(assert (= (and b!1707968 ((_ is Star!4617) (regex!3289 (h!24034 (t!158068 rules!3447))))) b!1708510))

(assert (= (and b!1707968 ((_ is Union!4617) (regex!3289 (h!24034 (t!158068 rules!3447))))) b!1708511))

(declare-fun b!1708512 () Bool)

(declare-fun e!1092758 () Bool)

(assert (=> b!1708512 (= e!1092758 tp_is_empty!7477)))

(declare-fun b!1708515 () Bool)

(declare-fun tp!488088 () Bool)

(declare-fun tp!488089 () Bool)

(assert (=> b!1708515 (= e!1092758 (and tp!488088 tp!488089))))

(declare-fun b!1708514 () Bool)

(declare-fun tp!488090 () Bool)

(assert (=> b!1708514 (= e!1092758 tp!488090)))

(assert (=> b!1707972 (= tp!487998 e!1092758)))

(declare-fun b!1708513 () Bool)

(declare-fun tp!488086 () Bool)

(declare-fun tp!488087 () Bool)

(assert (=> b!1708513 (= e!1092758 (and tp!488086 tp!488087))))

(assert (= (and b!1707972 ((_ is ElementMatch!4617) (reg!4946 (regex!3289 (h!24034 rules!3447))))) b!1708512))

(assert (= (and b!1707972 ((_ is Concat!7997) (reg!4946 (regex!3289 (h!24034 rules!3447))))) b!1708513))

(assert (= (and b!1707972 ((_ is Star!4617) (reg!4946 (regex!3289 (h!24034 rules!3447))))) b!1708514))

(assert (= (and b!1707972 ((_ is Union!4617) (reg!4946 (regex!3289 (h!24034 rules!3447))))) b!1708515))

(declare-fun b!1708516 () Bool)

(declare-fun e!1092759 () Bool)

(declare-fun tp!488091 () Bool)

(assert (=> b!1708516 (= e!1092759 (and tp_is_empty!7477 tp!488091))))

(assert (=> b!1707944 (= tp!487966 e!1092759)))

(assert (= (and b!1707944 ((_ is Cons!18632) (t!158067 (t!158067 suffix!1421)))) b!1708516))

(declare-fun b!1708517 () Bool)

(declare-fun e!1092760 () Bool)

(assert (=> b!1708517 (= e!1092760 tp_is_empty!7477)))

(declare-fun b!1708520 () Bool)

(declare-fun tp!488094 () Bool)

(declare-fun tp!488095 () Bool)

(assert (=> b!1708520 (= e!1092760 (and tp!488094 tp!488095))))

(declare-fun b!1708519 () Bool)

(declare-fun tp!488096 () Bool)

(assert (=> b!1708519 (= e!1092760 tp!488096)))

(assert (=> b!1707977 (= tp!488001 e!1092760)))

(declare-fun b!1708518 () Bool)

(declare-fun tp!488092 () Bool)

(declare-fun tp!488093 () Bool)

(assert (=> b!1708518 (= e!1092760 (and tp!488092 tp!488093))))

(assert (= (and b!1707977 ((_ is ElementMatch!4617) (regOne!9747 (regex!3289 rule!422)))) b!1708517))

(assert (= (and b!1707977 ((_ is Concat!7997) (regOne!9747 (regex!3289 rule!422)))) b!1708518))

(assert (= (and b!1707977 ((_ is Star!4617) (regOne!9747 (regex!3289 rule!422)))) b!1708519))

(assert (= (and b!1707977 ((_ is Union!4617) (regOne!9747 (regex!3289 rule!422)))) b!1708520))

(declare-fun b!1708521 () Bool)

(declare-fun e!1092761 () Bool)

(assert (=> b!1708521 (= e!1092761 tp_is_empty!7477)))

(declare-fun b!1708524 () Bool)

(declare-fun tp!488099 () Bool)

(declare-fun tp!488100 () Bool)

(assert (=> b!1708524 (= e!1092761 (and tp!488099 tp!488100))))

(declare-fun b!1708523 () Bool)

(declare-fun tp!488101 () Bool)

(assert (=> b!1708523 (= e!1092761 tp!488101)))

(assert (=> b!1707977 (= tp!488002 e!1092761)))

(declare-fun b!1708522 () Bool)

(declare-fun tp!488097 () Bool)

(declare-fun tp!488098 () Bool)

(assert (=> b!1708522 (= e!1092761 (and tp!488097 tp!488098))))

(assert (= (and b!1707977 ((_ is ElementMatch!4617) (regTwo!9747 (regex!3289 rule!422)))) b!1708521))

(assert (= (and b!1707977 ((_ is Concat!7997) (regTwo!9747 (regex!3289 rule!422)))) b!1708522))

(assert (= (and b!1707977 ((_ is Star!4617) (regTwo!9747 (regex!3289 rule!422)))) b!1708523))

(assert (= (and b!1707977 ((_ is Union!4617) (regTwo!9747 (regex!3289 rule!422)))) b!1708524))

(declare-fun b_lambda!53929 () Bool)

(assert (= b_lambda!53927 (or d!524055 b_lambda!53929)))

(declare-fun bs!401639 () Bool)

(declare-fun d!524329 () Bool)

(assert (= bs!401639 (and d!524329 d!524055)))

(assert (=> bs!401639 (= (dynLambda!8479 lambda!68728 (h!24034 rules!3447)) (regex!3289 (h!24034 rules!3447)))))

(assert (=> b!1708417 d!524329))

(check-sat (not b_next!46941) (not b!1708146) (not d!524167) (not b!1708491) (not b!1708361) (not b!1708424) b_and!123605 (not b!1708192) (not b!1708456) (not d!524181) (not d!524245) (not b!1708503) (not b!1708121) (not d!524175) (not bm!109350) (not b!1708488) (not b!1708182) (not b!1708106) (not b!1708425) (not b!1708003) (not b!1708124) (not b!1708466) (not b!1708473) (not b!1708510) (not b_lambda!53915) (not d!524215) (not b!1708465) (not b_next!46927) (not b!1708125) (not b!1708355) (not b!1708211) (not b!1708454) (not b!1708523) (not b!1708497) (not b!1708358) (not bm!109339) (not d!524221) (not b!1708515) (not b!1708215) (not b_next!46925) (not bm!109354) (not b!1708360) (not b!1708501) (not b!1708422) (not b_lambda!53929) (not b!1708180) (not b!1708505) (not bm!109322) (not b!1708434) (not b!1708441) b_and!123583 (not b!1708506) (not b!1708391) b_and!123587 (not bm!109324) (not d!524189) (not b!1708051) b_and!123573 (not d!524289) (not b!1708004) (not b!1708475) (not b!1708367) (not d!524141) (not b!1708251) (not b_next!46931) (not d!524321) (not b!1707684) (not b!1708388) (not b!1708214) (not b!1708496) (not b!1708063) (not b!1708250) (not b!1708511) (not b!1708452) (not b!1708394) (not d!524261) (not b!1708487) (not d!524209) (not b!1708518) b_and!123579 (not b!1708048) (not b!1708437) (not d!524325) (not b!1708147) b_and!123577 (not b!1708210) (not d!524173) (not b!1708461) (not b!1708053) (not d!524205) (not d!524143) (not d!524211) (not b!1708469) (not b!1708462) b_and!123575 (not b!1708524) (not b_lambda!53917) (not b!1708458) (not bm!109360) b_and!123585 (not b!1708208) (not b!1708514) (not b!1708495) (not b!1708268) (not d!524145) (not b!1708216) (not b!1708097) (not tb!100827) (not b!1708249) (not b!1708357) (not b!1708438) (not b!1708264) (not b!1708086) (not b!1708502) (not b_lambda!53919) (not b!1708509) (not d!524147) (not b!1708435) (not b!1708395) (not b!1708397) (not b!1708353) (not bm!109326) (not b!1708212) (not d!524199) (not b!1708486) (not b!1708463) (not b_next!46929) (not d!524191) (not b!1708194) (not b!1708513) (not b!1708490) (not b!1708132) (not b!1708104) (not b!1708417) (not b!1708519) (not b!1708206) (not b!1707984) tp_is_empty!7477 (not bm!109351) (not bm!109355) (not d!524187) (not d!524275) (not b!1708064) (not b!1708426) (not b!1708054) (not bm!109320) (not b!1708457) (not b_lambda!53913) (not d!524291) (not b!1708055) (not b!1708516) (not b!1708209) (not b_next!46945) (not b!1708393) (not d!524155) (not b!1708443) (not b!1708217) (not d!524203) (not bm!109352) (not b!1708507) (not b_next!46923) (not b!1708460) (not b!1708096) (not b!1708263) (not d!524193) (not b!1708442) (not tb!100835) (not b!1708204) (not b!1708498) (not d!524197) (not d!524223) (not b_next!46939) b_and!123581 (not b!1708471) (not d!524201) (not d!524171) (not b_next!46933) (not b!1708474) (not b!1708520) (not b!1708467) (not b!1708453) (not b!1708010) (not b_next!46943) (not b!1708522) (not b!1708492) (not b!1708390) (not d!524279) (not b!1708122) (not b!1708470) (not b!1708439) b_and!123607 (not d!524207) (not d!524323) (not b!1708356) (not d!524327) (not b!1708266) (not b!1708354) (not b!1708167) (not b!1708494))
(check-sat (not b_next!46941) b_and!123605 (not b_next!46927) (not b_next!46925) b_and!123573 (not b_next!46931) b_and!123579 b_and!123577 (not b_next!46929) (not b_next!46945) (not b_next!46923) (not b_next!46933) (not b_next!46943) b_and!123607 b_and!123583 b_and!123587 b_and!123575 b_and!123585 (not b_next!46939) b_and!123581)
