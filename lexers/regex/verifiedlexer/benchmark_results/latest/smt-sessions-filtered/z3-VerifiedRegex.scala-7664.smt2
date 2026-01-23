; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!404186 () Bool)

(assert start!404186)

(declare-fun b!4226868 () Bool)

(declare-fun b_free!124603 () Bool)

(declare-fun b_next!125307 () Bool)

(assert (=> b!4226868 (= b_free!124603 (not b_next!125307))))

(declare-fun tp!1294220 () Bool)

(declare-fun b_and!333837 () Bool)

(assert (=> b!4226868 (= tp!1294220 b_and!333837)))

(declare-fun b_free!124605 () Bool)

(declare-fun b_next!125309 () Bool)

(assert (=> b!4226868 (= b_free!124605 (not b_next!125309))))

(declare-fun tp!1294222 () Bool)

(declare-fun b_and!333839 () Bool)

(assert (=> b!4226868 (= tp!1294222 b_and!333839)))

(declare-fun b!4226869 () Bool)

(declare-fun b_free!124607 () Bool)

(declare-fun b_next!125311 () Bool)

(assert (=> b!4226869 (= b_free!124607 (not b_next!125311))))

(declare-fun tp!1294217 () Bool)

(declare-fun b_and!333841 () Bool)

(assert (=> b!4226869 (= tp!1294217 b_and!333841)))

(declare-fun b_free!124609 () Bool)

(declare-fun b_next!125313 () Bool)

(assert (=> b!4226869 (= b_free!124609 (not b_next!125313))))

(declare-fun tp!1294216 () Bool)

(declare-fun b_and!333843 () Bool)

(assert (=> b!4226869 (= tp!1294216 b_and!333843)))

(declare-fun b!4226866 () Bool)

(declare-fun e!2624388 () Bool)

(declare-datatypes ((C!25688 0))(
  ( (C!25689 (val!15006 Int)) )
))
(declare-datatypes ((List!46729 0))(
  ( (Nil!46605) (Cons!46605 (h!52025 C!25688) (t!349346 List!46729)) )
))
(declare-datatypes ((IArray!28111 0))(
  ( (IArray!28112 (innerList!14113 List!46729)) )
))
(declare-datatypes ((List!46730 0))(
  ( (Nil!46606) (Cons!46606 (h!52026 (_ BitVec 16)) (t!349347 List!46730)) )
))
(declare-datatypes ((TokenValue!8072 0))(
  ( (FloatLiteralValue!16144 (text!56949 List!46730)) (TokenValueExt!8071 (__x!28367 Int)) (Broken!40360 (value!243985 List!46730)) (Object!8195) (End!8072) (Def!8072) (Underscore!8072) (Match!8072) (Else!8072) (Error!8072) (Case!8072) (If!8072) (Extends!8072) (Abstract!8072) (Class!8072) (Val!8072) (DelimiterValue!16144 (del!8132 List!46730)) (KeywordValue!8078 (value!243986 List!46730)) (CommentValue!16144 (value!243987 List!46730)) (WhitespaceValue!16144 (value!243988 List!46730)) (IndentationValue!8072 (value!243989 List!46730)) (String!54229) (Int32!8072) (Broken!40361 (value!243990 List!46730)) (Boolean!8073) (Unit!65742) (OperatorValue!8075 (op!8132 List!46730)) (IdentifierValue!16144 (value!243991 List!46730)) (IdentifierValue!16145 (value!243992 List!46730)) (WhitespaceValue!16145 (value!243993 List!46730)) (True!16144) (False!16144) (Broken!40362 (value!243994 List!46730)) (Broken!40363 (value!243995 List!46730)) (True!16145) (RightBrace!8072) (RightBracket!8072) (Colon!8072) (Null!8072) (Comma!8072) (LeftBracket!8072) (False!16145) (LeftBrace!8072) (ImaginaryLiteralValue!8072 (text!56950 List!46730)) (StringLiteralValue!24216 (value!243996 List!46730)) (EOFValue!8072 (value!243997 List!46730)) (IdentValue!8072 (value!243998 List!46730)) (DelimiterValue!16145 (value!243999 List!46730)) (DedentValue!8072 (value!244000 List!46730)) (NewLineValue!8072 (value!244001 List!46730)) (IntegerValue!24216 (value!244002 (_ BitVec 32)) (text!56951 List!46730)) (IntegerValue!24217 (value!244003 Int) (text!56952 List!46730)) (Times!8072) (Or!8072) (Equal!8072) (Minus!8072) (Broken!40364 (value!244004 List!46730)) (And!8072) (Div!8072) (LessEqual!8072) (Mod!8072) (Concat!20819) (Not!8072) (Plus!8072) (SpaceValue!8072 (value!244005 List!46730)) (IntegerValue!24218 (value!244006 Int) (text!56953 List!46730)) (StringLiteralValue!24217 (text!56954 List!46730)) (FloatLiteralValue!16145 (text!56955 List!46730)) (BytesLiteralValue!8072 (value!244007 List!46730)) (CommentValue!16145 (value!244008 List!46730)) (StringLiteralValue!24218 (value!244009 List!46730)) (ErrorTokenValue!8072 (msg!8133 List!46730)) )
))
(declare-datatypes ((Conc!14053 0))(
  ( (Node!14053 (left!34653 Conc!14053) (right!34983 Conc!14053) (csize!28336 Int) (cheight!14264 Int)) (Leaf!21718 (xs!17359 IArray!28111) (csize!28337 Int)) (Empty!14053) )
))
(declare-datatypes ((BalanceConc!27700 0))(
  ( (BalanceConc!27701 (c!718700 Conc!14053)) )
))
(declare-datatypes ((TokenValueInjection!15572 0))(
  ( (TokenValueInjection!15573 (toValue!10570 Int) (toChars!10429 Int)) )
))
(declare-datatypes ((Regex!12747 0))(
  ( (ElementMatch!12747 (c!718701 C!25688)) (Concat!20820 (regOne!26006 Regex!12747) (regTwo!26006 Regex!12747)) (EmptyExpr!12747) (Star!12747 (reg!13076 Regex!12747)) (EmptyLang!12747) (Union!12747 (regOne!26007 Regex!12747) (regTwo!26007 Regex!12747)) )
))
(declare-datatypes ((String!54230 0))(
  ( (String!54231 (value!244010 String)) )
))
(declare-datatypes ((Rule!15484 0))(
  ( (Rule!15485 (regex!7842 Regex!12747) (tag!8706 String!54230) (isSeparator!7842 Bool) (transformation!7842 TokenValueInjection!15572)) )
))
(declare-datatypes ((List!46731 0))(
  ( (Nil!46607) (Cons!46607 (h!52027 Rule!15484) (t!349348 List!46731)) )
))
(declare-fun rules!4024 () List!46731)

(declare-fun r!4367 () Rule!15484)

(declare-fun contains!9665 (List!46731 Rule!15484) Bool)

(assert (=> b!4226866 (= e!2624388 (not (contains!9665 (t!349348 rules!4024) r!4367)))))

(declare-fun res!1738073 () Bool)

(assert (=> start!404186 (=> (not res!1738073) (not e!2624388))))

(declare-datatypes ((LexerInterface!7437 0))(
  ( (LexerInterfaceExt!7434 (__x!28368 Int)) (Lexer!7435) )
))
(declare-fun thiss!26827 () LexerInterface!7437)

(get-info :version)

(assert (=> start!404186 (= res!1738073 ((_ is Lexer!7435) thiss!26827))))

(assert (=> start!404186 e!2624388))

(assert (=> start!404186 true))

(declare-fun e!2624389 () Bool)

(assert (=> start!404186 e!2624389))

(declare-fun e!2624394 () Bool)

(assert (=> start!404186 e!2624394))

(declare-fun tp!1294221 () Bool)

(declare-fun b!4226867 () Bool)

(declare-fun e!2624392 () Bool)

(declare-fun inv!61261 (String!54230) Bool)

(declare-fun inv!61263 (TokenValueInjection!15572) Bool)

(assert (=> b!4226867 (= e!2624394 (and tp!1294221 (inv!61261 (tag!8706 r!4367)) (inv!61263 (transformation!7842 r!4367)) e!2624392))))

(assert (=> b!4226868 (= e!2624392 (and tp!1294220 tp!1294222))))

(declare-fun e!2624387 () Bool)

(assert (=> b!4226869 (= e!2624387 (and tp!1294217 tp!1294216))))

(declare-fun b!4226870 () Bool)

(declare-fun res!1738070 () Bool)

(assert (=> b!4226870 (=> (not res!1738070) (not e!2624388))))

(assert (=> b!4226870 (= res!1738070 (and (or (not ((_ is Cons!46607) rules!4024)) (not (= (h!52027 rules!4024) r!4367))) ((_ is Cons!46607) rules!4024) (not (= (h!52027 rules!4024) r!4367))))))

(declare-fun b!4226871 () Bool)

(declare-fun e!2624390 () Bool)

(declare-fun tp!1294219 () Bool)

(assert (=> b!4226871 (= e!2624389 (and e!2624390 tp!1294219))))

(declare-fun b!4226872 () Bool)

(declare-fun res!1738071 () Bool)

(assert (=> b!4226872 (=> (not res!1738071) (not e!2624388))))

(declare-fun rulesValidInductive!2944 (LexerInterface!7437 List!46731) Bool)

(assert (=> b!4226872 (= res!1738071 (rulesValidInductive!2944 thiss!26827 rules!4024))))

(declare-fun b!4226873 () Bool)

(declare-fun res!1738072 () Bool)

(assert (=> b!4226873 (=> (not res!1738072) (not e!2624388))))

(assert (=> b!4226873 (= res!1738072 (contains!9665 rules!4024 r!4367))))

(declare-fun tp!1294218 () Bool)

(declare-fun b!4226874 () Bool)

(assert (=> b!4226874 (= e!2624390 (and tp!1294218 (inv!61261 (tag!8706 (h!52027 rules!4024))) (inv!61263 (transformation!7842 (h!52027 rules!4024))) e!2624387))))

(assert (= (and start!404186 res!1738073) b!4226873))

(assert (= (and b!4226873 res!1738072) b!4226872))

(assert (= (and b!4226872 res!1738071) b!4226870))

(assert (= (and b!4226870 res!1738070) b!4226866))

(assert (= b!4226874 b!4226869))

(assert (= b!4226871 b!4226874))

(assert (= (and start!404186 ((_ is Cons!46607) rules!4024)) b!4226871))

(assert (= b!4226867 b!4226868))

(assert (= start!404186 b!4226867))

(declare-fun m!4814581 () Bool)

(assert (=> b!4226866 m!4814581))

(declare-fun m!4814583 () Bool)

(assert (=> b!4226872 m!4814583))

(declare-fun m!4814585 () Bool)

(assert (=> b!4226874 m!4814585))

(declare-fun m!4814587 () Bool)

(assert (=> b!4226874 m!4814587))

(declare-fun m!4814589 () Bool)

(assert (=> b!4226873 m!4814589))

(declare-fun m!4814591 () Bool)

(assert (=> b!4226867 m!4814591))

(declare-fun m!4814593 () Bool)

(assert (=> b!4226867 m!4814593))

(check-sat b_and!333839 (not b!4226871) (not b!4226872) b_and!333841 (not b_next!125309) (not b_next!125307) b_and!333843 b_and!333837 (not b_next!125313) (not b!4226873) (not b!4226867) (not b_next!125311) (not b!4226866) (not b!4226874))
(check-sat b_and!333839 b_and!333841 (not b_next!125309) (not b_next!125307) b_and!333843 b_and!333837 (not b_next!125313) (not b_next!125311))
(get-model)

(declare-fun d!1244381 () Bool)

(declare-fun lt!1503205 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7323 (List!46731) (InoxSet Rule!15484))

(assert (=> d!1244381 (= lt!1503205 (select (content!7323 rules!4024) r!4367))))

(declare-fun e!2624400 () Bool)

(assert (=> d!1244381 (= lt!1503205 e!2624400)))

(declare-fun res!1738085 () Bool)

(assert (=> d!1244381 (=> (not res!1738085) (not e!2624400))))

(assert (=> d!1244381 (= res!1738085 ((_ is Cons!46607) rules!4024))))

(assert (=> d!1244381 (= (contains!9665 rules!4024 r!4367) lt!1503205)))

(declare-fun b!4226879 () Bool)

(declare-fun e!2624399 () Bool)

(assert (=> b!4226879 (= e!2624400 e!2624399)))

(declare-fun res!1738086 () Bool)

(assert (=> b!4226879 (=> res!1738086 e!2624399)))

(assert (=> b!4226879 (= res!1738086 (= (h!52027 rules!4024) r!4367))))

(declare-fun b!4226880 () Bool)

(assert (=> b!4226880 (= e!2624399 (contains!9665 (t!349348 rules!4024) r!4367))))

(assert (= (and d!1244381 res!1738085) b!4226879))

(assert (= (and b!4226879 (not res!1738086)) b!4226880))

(declare-fun m!4814595 () Bool)

(assert (=> d!1244381 m!4814595))

(declare-fun m!4814597 () Bool)

(assert (=> d!1244381 m!4814597))

(assert (=> b!4226880 m!4814581))

(assert (=> b!4226873 d!1244381))

(declare-fun d!1244387 () Bool)

(assert (=> d!1244387 (= (inv!61261 (tag!8706 (h!52027 rules!4024))) (= (mod (str.len (value!244010 (tag!8706 (h!52027 rules!4024)))) 2) 0))))

(assert (=> b!4226874 d!1244387))

(declare-fun d!1244389 () Bool)

(declare-fun res!1738096 () Bool)

(declare-fun e!2624410 () Bool)

(assert (=> d!1244389 (=> (not res!1738096) (not e!2624410))))

(declare-fun semiInverseModEq!3411 (Int Int) Bool)

(assert (=> d!1244389 (= res!1738096 (semiInverseModEq!3411 (toChars!10429 (transformation!7842 (h!52027 rules!4024))) (toValue!10570 (transformation!7842 (h!52027 rules!4024)))))))

(assert (=> d!1244389 (= (inv!61263 (transformation!7842 (h!52027 rules!4024))) e!2624410)))

(declare-fun b!4226890 () Bool)

(declare-fun equivClasses!3310 (Int Int) Bool)

(assert (=> b!4226890 (= e!2624410 (equivClasses!3310 (toChars!10429 (transformation!7842 (h!52027 rules!4024))) (toValue!10570 (transformation!7842 (h!52027 rules!4024)))))))

(assert (= (and d!1244389 res!1738096) b!4226890))

(declare-fun m!4814603 () Bool)

(assert (=> d!1244389 m!4814603))

(declare-fun m!4814605 () Bool)

(assert (=> b!4226890 m!4814605))

(assert (=> b!4226874 d!1244389))

(declare-fun d!1244393 () Bool)

(declare-fun lt!1503208 () Bool)

(assert (=> d!1244393 (= lt!1503208 (select (content!7323 (t!349348 rules!4024)) r!4367))))

(declare-fun e!2624412 () Bool)

(assert (=> d!1244393 (= lt!1503208 e!2624412)))

(declare-fun res!1738097 () Bool)

(assert (=> d!1244393 (=> (not res!1738097) (not e!2624412))))

(assert (=> d!1244393 (= res!1738097 ((_ is Cons!46607) (t!349348 rules!4024)))))

(assert (=> d!1244393 (= (contains!9665 (t!349348 rules!4024) r!4367) lt!1503208)))

(declare-fun b!4226891 () Bool)

(declare-fun e!2624411 () Bool)

(assert (=> b!4226891 (= e!2624412 e!2624411)))

(declare-fun res!1738098 () Bool)

(assert (=> b!4226891 (=> res!1738098 e!2624411)))

(assert (=> b!4226891 (= res!1738098 (= (h!52027 (t!349348 rules!4024)) r!4367))))

(declare-fun b!4226892 () Bool)

(assert (=> b!4226892 (= e!2624411 (contains!9665 (t!349348 (t!349348 rules!4024)) r!4367))))

(assert (= (and d!1244393 res!1738097) b!4226891))

(assert (= (and b!4226891 (not res!1738098)) b!4226892))

(declare-fun m!4814607 () Bool)

(assert (=> d!1244393 m!4814607))

(declare-fun m!4814609 () Bool)

(assert (=> d!1244393 m!4814609))

(declare-fun m!4814611 () Bool)

(assert (=> b!4226892 m!4814611))

(assert (=> b!4226866 d!1244393))

(declare-fun d!1244395 () Bool)

(assert (=> d!1244395 (= (inv!61261 (tag!8706 r!4367)) (= (mod (str.len (value!244010 (tag!8706 r!4367))) 2) 0))))

(assert (=> b!4226867 d!1244395))

(declare-fun d!1244397 () Bool)

(declare-fun res!1738099 () Bool)

(declare-fun e!2624413 () Bool)

(assert (=> d!1244397 (=> (not res!1738099) (not e!2624413))))

(assert (=> d!1244397 (= res!1738099 (semiInverseModEq!3411 (toChars!10429 (transformation!7842 r!4367)) (toValue!10570 (transformation!7842 r!4367))))))

(assert (=> d!1244397 (= (inv!61263 (transformation!7842 r!4367)) e!2624413)))

(declare-fun b!4226893 () Bool)

(assert (=> b!4226893 (= e!2624413 (equivClasses!3310 (toChars!10429 (transformation!7842 r!4367)) (toValue!10570 (transformation!7842 r!4367))))))

(assert (= (and d!1244397 res!1738099) b!4226893))

(declare-fun m!4814613 () Bool)

(assert (=> d!1244397 m!4814613))

(declare-fun m!4814615 () Bool)

(assert (=> b!4226893 m!4814615))

(assert (=> b!4226867 d!1244397))

(declare-fun d!1244399 () Bool)

(assert (=> d!1244399 true))

(declare-fun lt!1503216 () Bool)

(declare-fun lambda!129927 () Int)

(declare-fun forall!8518 (List!46731 Int) Bool)

(assert (=> d!1244399 (= lt!1503216 (forall!8518 rules!4024 lambda!129927))))

(declare-fun e!2624446 () Bool)

(assert (=> d!1244399 (= lt!1503216 e!2624446)))

(declare-fun res!1738115 () Bool)

(assert (=> d!1244399 (=> res!1738115 e!2624446)))

(assert (=> d!1244399 (= res!1738115 (not ((_ is Cons!46607) rules!4024)))))

(assert (=> d!1244399 (= (rulesValidInductive!2944 thiss!26827 rules!4024) lt!1503216)))

(declare-fun b!4226940 () Bool)

(declare-fun e!2624445 () Bool)

(assert (=> b!4226940 (= e!2624446 e!2624445)))

(declare-fun res!1738116 () Bool)

(assert (=> b!4226940 (=> (not res!1738116) (not e!2624445))))

(declare-fun ruleValid!3544 (LexerInterface!7437 Rule!15484) Bool)

(assert (=> b!4226940 (= res!1738116 (ruleValid!3544 thiss!26827 (h!52027 rules!4024)))))

(declare-fun b!4226941 () Bool)

(assert (=> b!4226941 (= e!2624445 (rulesValidInductive!2944 thiss!26827 (t!349348 rules!4024)))))

(assert (= (and d!1244399 (not res!1738115)) b!4226940))

(assert (= (and b!4226940 res!1738116) b!4226941))

(declare-fun m!4814641 () Bool)

(assert (=> d!1244399 m!4814641))

(declare-fun m!4814643 () Bool)

(assert (=> b!4226940 m!4814643))

(declare-fun m!4814645 () Bool)

(assert (=> b!4226941 m!4814645))

(assert (=> b!4226872 d!1244399))

(declare-fun b!4226954 () Bool)

(declare-fun e!2624449 () Bool)

(declare-fun tp_is_empty!22437 () Bool)

(assert (=> b!4226954 (= e!2624449 tp_is_empty!22437)))

(declare-fun b!4226956 () Bool)

(declare-fun tp!1294269 () Bool)

(assert (=> b!4226956 (= e!2624449 tp!1294269)))

(assert (=> b!4226874 (= tp!1294218 e!2624449)))

(declare-fun b!4226955 () Bool)

(declare-fun tp!1294265 () Bool)

(declare-fun tp!1294268 () Bool)

(assert (=> b!4226955 (= e!2624449 (and tp!1294265 tp!1294268))))

(declare-fun b!4226957 () Bool)

(declare-fun tp!1294266 () Bool)

(declare-fun tp!1294267 () Bool)

(assert (=> b!4226957 (= e!2624449 (and tp!1294266 tp!1294267))))

(assert (= (and b!4226874 ((_ is ElementMatch!12747) (regex!7842 (h!52027 rules!4024)))) b!4226954))

(assert (= (and b!4226874 ((_ is Concat!20820) (regex!7842 (h!52027 rules!4024)))) b!4226955))

(assert (= (and b!4226874 ((_ is Star!12747) (regex!7842 (h!52027 rules!4024)))) b!4226956))

(assert (= (and b!4226874 ((_ is Union!12747) (regex!7842 (h!52027 rules!4024)))) b!4226957))

(declare-fun b!4226968 () Bool)

(declare-fun b_free!124615 () Bool)

(declare-fun b_next!125319 () Bool)

(assert (=> b!4226968 (= b_free!124615 (not b_next!125319))))

(declare-fun tp!1294278 () Bool)

(declare-fun b_and!333849 () Bool)

(assert (=> b!4226968 (= tp!1294278 b_and!333849)))

(declare-fun b_free!124617 () Bool)

(declare-fun b_next!125321 () Bool)

(assert (=> b!4226968 (= b_free!124617 (not b_next!125321))))

(declare-fun tp!1294279 () Bool)

(declare-fun b_and!333851 () Bool)

(assert (=> b!4226968 (= tp!1294279 b_and!333851)))

(declare-fun e!2624459 () Bool)

(assert (=> b!4226968 (= e!2624459 (and tp!1294278 tp!1294279))))

(declare-fun b!4226967 () Bool)

(declare-fun tp!1294280 () Bool)

(declare-fun e!2624460 () Bool)

(assert (=> b!4226967 (= e!2624460 (and tp!1294280 (inv!61261 (tag!8706 (h!52027 (t!349348 rules!4024)))) (inv!61263 (transformation!7842 (h!52027 (t!349348 rules!4024)))) e!2624459))))

(declare-fun b!4226966 () Bool)

(declare-fun e!2624461 () Bool)

(declare-fun tp!1294281 () Bool)

(assert (=> b!4226966 (= e!2624461 (and e!2624460 tp!1294281))))

(assert (=> b!4226871 (= tp!1294219 e!2624461)))

(assert (= b!4226967 b!4226968))

(assert (= b!4226966 b!4226967))

(assert (= (and b!4226871 ((_ is Cons!46607) (t!349348 rules!4024))) b!4226966))

(declare-fun m!4814647 () Bool)

(assert (=> b!4226967 m!4814647))

(declare-fun m!4814649 () Bool)

(assert (=> b!4226967 m!4814649))

(declare-fun b!4226969 () Bool)

(declare-fun e!2624462 () Bool)

(assert (=> b!4226969 (= e!2624462 tp_is_empty!22437)))

(declare-fun b!4226971 () Bool)

(declare-fun tp!1294286 () Bool)

(assert (=> b!4226971 (= e!2624462 tp!1294286)))

(assert (=> b!4226867 (= tp!1294221 e!2624462)))

(declare-fun b!4226970 () Bool)

(declare-fun tp!1294282 () Bool)

(declare-fun tp!1294285 () Bool)

(assert (=> b!4226970 (= e!2624462 (and tp!1294282 tp!1294285))))

(declare-fun b!4226972 () Bool)

(declare-fun tp!1294283 () Bool)

(declare-fun tp!1294284 () Bool)

(assert (=> b!4226972 (= e!2624462 (and tp!1294283 tp!1294284))))

(assert (= (and b!4226867 ((_ is ElementMatch!12747) (regex!7842 r!4367))) b!4226969))

(assert (= (and b!4226867 ((_ is Concat!20820) (regex!7842 r!4367))) b!4226970))

(assert (= (and b!4226867 ((_ is Star!12747) (regex!7842 r!4367))) b!4226971))

(assert (= (and b!4226867 ((_ is Union!12747) (regex!7842 r!4367))) b!4226972))

(check-sat b_and!333839 (not d!1244393) (not b!4226941) (not b!4226890) b_and!333841 (not b_next!125309) (not b!4226955) b_and!333837 (not b!4226970) (not b!4226957) (not d!1244381) tp_is_empty!22437 (not b_next!125311) (not b!4226956) (not b_next!125321) (not b!4226893) (not b!4226967) (not b!4226940) (not d!1244397) (not b!4226971) (not b!4226972) (not b!4226880) b_and!333851 b_and!333849 (not b_next!125307) b_and!333843 (not b_next!125319) (not b!4226966) (not b!4226892) (not b_next!125313) (not d!1244399) (not d!1244389))
(check-sat b_and!333839 (not b_next!125321) b_and!333851 b_and!333841 (not b_next!125309) b_and!333837 (not b_next!125313) (not b_next!125311) b_and!333849 (not b_next!125307) b_and!333843 (not b_next!125319))
