; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137410 () Bool)

(assert start!137410)

(declare-fun b!1468299 () Bool)

(declare-fun b_free!36883 () Bool)

(declare-fun b_next!37587 () Bool)

(assert (=> b!1468299 (= b_free!36883 (not b_next!37587))))

(declare-fun tp!413562 () Bool)

(declare-fun b_and!100461 () Bool)

(assert (=> b!1468299 (= tp!413562 b_and!100461)))

(declare-fun b_free!36885 () Bool)

(declare-fun b_next!37589 () Bool)

(assert (=> b!1468299 (= b_free!36885 (not b_next!37589))))

(declare-fun tp!413559 () Bool)

(declare-fun b_and!100463 () Bool)

(assert (=> b!1468299 (= tp!413559 b_and!100463)))

(declare-fun res!664252 () Bool)

(declare-fun e!937179 () Bool)

(assert (=> start!137410 (=> (not res!664252) (not e!937179))))

(declare-datatypes ((LexerInterface!2369 0))(
  ( (LexerInterfaceExt!2366 (__x!9396 Int)) (Lexer!2367) )
))
(declare-fun thiss!20360 () LexerInterface!2369)

(get-info :version)

(assert (=> start!137410 (= res!664252 ((_ is Lexer!2367) thiss!20360))))

(assert (=> start!137410 e!937179))

(assert (=> start!137410 true))

(declare-fun e!937178 () Bool)

(assert (=> start!137410 e!937178))

(declare-fun b!1468296 () Bool)

(declare-datatypes ((List!15377 0))(
  ( (Nil!15311) (Cons!15311 (h!20712 (_ BitVec 16)) (t!135248 List!15377)) )
))
(declare-datatypes ((TokenValue!2803 0))(
  ( (FloatLiteralValue!5606 (text!20066 List!15377)) (TokenValueExt!2802 (__x!9397 Int)) (Broken!14015 (value!86942 List!15377)) (Object!2868) (End!2803) (Def!2803) (Underscore!2803) (Match!2803) (Else!2803) (Error!2803) (Case!2803) (If!2803) (Extends!2803) (Abstract!2803) (Class!2803) (Val!2803) (DelimiterValue!5606 (del!2863 List!15377)) (KeywordValue!2809 (value!86943 List!15377)) (CommentValue!5606 (value!86944 List!15377)) (WhitespaceValue!5606 (value!86945 List!15377)) (IndentationValue!2803 (value!86946 List!15377)) (String!18270) (Int32!2803) (Broken!14016 (value!86947 List!15377)) (Boolean!2804) (Unit!25070) (OperatorValue!2806 (op!2863 List!15377)) (IdentifierValue!5606 (value!86948 List!15377)) (IdentifierValue!5607 (value!86949 List!15377)) (WhitespaceValue!5607 (value!86950 List!15377)) (True!5606) (False!5606) (Broken!14017 (value!86951 List!15377)) (Broken!14018 (value!86952 List!15377)) (True!5607) (RightBrace!2803) (RightBracket!2803) (Colon!2803) (Null!2803) (Comma!2803) (LeftBracket!2803) (False!5607) (LeftBrace!2803) (ImaginaryLiteralValue!2803 (text!20067 List!15377)) (StringLiteralValue!8409 (value!86953 List!15377)) (EOFValue!2803 (value!86954 List!15377)) (IdentValue!2803 (value!86955 List!15377)) (DelimiterValue!5607 (value!86956 List!15377)) (DedentValue!2803 (value!86957 List!15377)) (NewLineValue!2803 (value!86958 List!15377)) (IntegerValue!8409 (value!86959 (_ BitVec 32)) (text!20068 List!15377)) (IntegerValue!8410 (value!86960 Int) (text!20069 List!15377)) (Times!2803) (Or!2803) (Equal!2803) (Minus!2803) (Broken!14019 (value!86961 List!15377)) (And!2803) (Div!2803) (LessEqual!2803) (Mod!2803) (Concat!6830) (Not!2803) (Plus!2803) (SpaceValue!2803 (value!86962 List!15377)) (IntegerValue!8411 (value!86963 Int) (text!20070 List!15377)) (StringLiteralValue!8410 (text!20071 List!15377)) (FloatLiteralValue!5607 (text!20072 List!15377)) (BytesLiteralValue!2803 (value!86964 List!15377)) (CommentValue!5607 (value!86965 List!15377)) (StringLiteralValue!8411 (value!86966 List!15377)) (ErrorTokenValue!2803 (msg!2864 List!15377)) )
))
(declare-datatypes ((C!8232 0))(
  ( (C!8233 (val!4686 Int)) )
))
(declare-datatypes ((List!15378 0))(
  ( (Nil!15312) (Cons!15312 (h!20713 C!8232) (t!135249 List!15378)) )
))
(declare-datatypes ((IArray!10443 0))(
  ( (IArray!10444 (innerList!5279 List!15378)) )
))
(declare-datatypes ((Conc!5219 0))(
  ( (Node!5219 (left!12982 Conc!5219) (right!13312 Conc!5219) (csize!10668 Int) (cheight!5430 Int)) (Leaf!7777 (xs!7974 IArray!10443) (csize!10669 Int)) (Empty!5219) )
))
(declare-datatypes ((BalanceConc!10378 0))(
  ( (BalanceConc!10379 (c!242025 Conc!5219)) )
))
(declare-datatypes ((TokenValueInjection!5266 0))(
  ( (TokenValueInjection!5267 (toValue!4032 Int) (toChars!3891 Int)) )
))
(declare-datatypes ((Regex!4027 0))(
  ( (ElementMatch!4027 (c!242026 C!8232)) (Concat!6831 (regOne!8566 Regex!4027) (regTwo!8566 Regex!4027)) (EmptyExpr!4027) (Star!4027 (reg!4356 Regex!4027)) (EmptyLang!4027) (Union!4027 (regOne!8567 Regex!4027) (regTwo!8567 Regex!4027)) )
))
(declare-datatypes ((String!18271 0))(
  ( (String!18272 (value!86967 String)) )
))
(declare-datatypes ((Rule!5226 0))(
  ( (Rule!5227 (regex!2713 Regex!4027) (tag!2977 String!18271) (isSeparator!2713 Bool) (transformation!2713 TokenValueInjection!5266)) )
))
(declare-datatypes ((Token!5088 0))(
  ( (Token!5089 (value!86968 TokenValue!2803) (rule!4490 Rule!5226) (size!12489 Int) (originalCharacters!3575 List!15378)) )
))
(declare-datatypes ((List!15379 0))(
  ( (Nil!15313) (Cons!15313 (h!20714 Token!5088) (t!135250 List!15379)) )
))
(declare-fun tokens1!47 () List!15379)

(declare-fun ListPrimitiveSize!100 (List!15379) Int)

(assert (=> b!1468296 (= e!937179 (< (ListPrimitiveSize!100 tokens1!47) 0))))

(declare-fun tp!413560 () Bool)

(declare-fun e!937175 () Bool)

(declare-fun e!937176 () Bool)

(declare-fun b!1468297 () Bool)

(declare-fun inv!20479 (String!18271) Bool)

(declare-fun inv!20482 (TokenValueInjection!5266) Bool)

(assert (=> b!1468297 (= e!937175 (and tp!413560 (inv!20479 (tag!2977 (rule!4490 (h!20714 tokens1!47)))) (inv!20482 (transformation!2713 (rule!4490 (h!20714 tokens1!47)))) e!937176))))

(declare-fun b!1468298 () Bool)

(declare-fun tp!413561 () Bool)

(declare-fun e!937174 () Bool)

(declare-fun inv!20483 (Token!5088) Bool)

(assert (=> b!1468298 (= e!937178 (and (inv!20483 (h!20714 tokens1!47)) e!937174 tp!413561))))

(assert (=> b!1468299 (= e!937176 (and tp!413562 tp!413559))))

(declare-fun tp!413558 () Bool)

(declare-fun b!1468300 () Bool)

(declare-fun inv!21 (TokenValue!2803) Bool)

(assert (=> b!1468300 (= e!937174 (and (inv!21 (value!86968 (h!20714 tokens1!47))) e!937175 tp!413558))))

(assert (= (and start!137410 res!664252) b!1468296))

(assert (= b!1468297 b!1468299))

(assert (= b!1468300 b!1468297))

(assert (= b!1468298 b!1468300))

(assert (= (and start!137410 ((_ is Cons!15313) tokens1!47)) b!1468298))

(declare-fun m!1712999 () Bool)

(assert (=> b!1468296 m!1712999))

(declare-fun m!1713001 () Bool)

(assert (=> b!1468297 m!1713001))

(declare-fun m!1713003 () Bool)

(assert (=> b!1468297 m!1713003))

(declare-fun m!1713005 () Bool)

(assert (=> b!1468298 m!1713005))

(declare-fun m!1713007 () Bool)

(assert (=> b!1468300 m!1713007))

(check-sat (not b!1468297) b_and!100463 (not b!1468298) (not b_next!37589) (not b_next!37587) b_and!100461 (not b!1468296) (not b!1468300))
(check-sat b_and!100461 b_and!100463 (not b_next!37587) (not b_next!37589))
(get-model)

(declare-fun b!1468315 () Bool)

(declare-fun e!937190 () Bool)

(declare-fun inv!15 (TokenValue!2803) Bool)

(assert (=> b!1468315 (= e!937190 (inv!15 (value!86968 (h!20714 tokens1!47))))))

(declare-fun b!1468316 () Bool)

(declare-fun e!937191 () Bool)

(declare-fun inv!17 (TokenValue!2803) Bool)

(assert (=> b!1468316 (= e!937191 (inv!17 (value!86968 (h!20714 tokens1!47))))))

(declare-fun b!1468317 () Bool)

(declare-fun e!937189 () Bool)

(assert (=> b!1468317 (= e!937189 e!937191)))

(declare-fun c!242031 () Bool)

(assert (=> b!1468317 (= c!242031 ((_ is IntegerValue!8410) (value!86968 (h!20714 tokens1!47))))))

(declare-fun b!1468318 () Bool)

(declare-fun res!664259 () Bool)

(assert (=> b!1468318 (=> res!664259 e!937190)))

(assert (=> b!1468318 (= res!664259 (not ((_ is IntegerValue!8411) (value!86968 (h!20714 tokens1!47)))))))

(assert (=> b!1468318 (= e!937191 e!937190)))

(declare-fun b!1468319 () Bool)

(declare-fun inv!16 (TokenValue!2803) Bool)

(assert (=> b!1468319 (= e!937189 (inv!16 (value!86968 (h!20714 tokens1!47))))))

(declare-fun d!430814 () Bool)

(declare-fun c!242032 () Bool)

(assert (=> d!430814 (= c!242032 ((_ is IntegerValue!8409) (value!86968 (h!20714 tokens1!47))))))

(assert (=> d!430814 (= (inv!21 (value!86968 (h!20714 tokens1!47))) e!937189)))

(assert (= (and d!430814 c!242032) b!1468319))

(assert (= (and d!430814 (not c!242032)) b!1468317))

(assert (= (and b!1468317 c!242031) b!1468316))

(assert (= (and b!1468317 (not c!242031)) b!1468318))

(assert (= (and b!1468318 (not res!664259)) b!1468315))

(declare-fun m!1713009 () Bool)

(assert (=> b!1468315 m!1713009))

(declare-fun m!1713011 () Bool)

(assert (=> b!1468316 m!1713011))

(declare-fun m!1713013 () Bool)

(assert (=> b!1468319 m!1713013))

(assert (=> b!1468300 d!430814))

(declare-fun d!430818 () Bool)

(declare-fun lt!511060 () Int)

(assert (=> d!430818 (>= lt!511060 0)))

(declare-fun e!937198 () Int)

(assert (=> d!430818 (= lt!511060 e!937198)))

(declare-fun c!242035 () Bool)

(assert (=> d!430818 (= c!242035 ((_ is Nil!15313) tokens1!47))))

(assert (=> d!430818 (= (ListPrimitiveSize!100 tokens1!47) lt!511060)))

(declare-fun b!1468331 () Bool)

(assert (=> b!1468331 (= e!937198 0)))

(declare-fun b!1468332 () Bool)

(assert (=> b!1468332 (= e!937198 (+ 1 (ListPrimitiveSize!100 (t!135250 tokens1!47))))))

(assert (= (and d!430818 c!242035) b!1468331))

(assert (= (and d!430818 (not c!242035)) b!1468332))

(declare-fun m!1713027 () Bool)

(assert (=> b!1468332 m!1713027))

(assert (=> b!1468296 d!430818))

(declare-fun d!430824 () Bool)

(assert (=> d!430824 (= (inv!20479 (tag!2977 (rule!4490 (h!20714 tokens1!47)))) (= (mod (str.len (value!86967 (tag!2977 (rule!4490 (h!20714 tokens1!47))))) 2) 0))))

(assert (=> b!1468297 d!430824))

(declare-fun d!430826 () Bool)

(declare-fun res!664267 () Bool)

(declare-fun e!937204 () Bool)

(assert (=> d!430826 (=> (not res!664267) (not e!937204))))

(declare-fun semiInverseModEq!1017 (Int Int) Bool)

(assert (=> d!430826 (= res!664267 (semiInverseModEq!1017 (toChars!3891 (transformation!2713 (rule!4490 (h!20714 tokens1!47)))) (toValue!4032 (transformation!2713 (rule!4490 (h!20714 tokens1!47))))))))

(assert (=> d!430826 (= (inv!20482 (transformation!2713 (rule!4490 (h!20714 tokens1!47)))) e!937204)))

(declare-fun b!1468338 () Bool)

(declare-fun equivClasses!976 (Int Int) Bool)

(assert (=> b!1468338 (= e!937204 (equivClasses!976 (toChars!3891 (transformation!2713 (rule!4490 (h!20714 tokens1!47)))) (toValue!4032 (transformation!2713 (rule!4490 (h!20714 tokens1!47))))))))

(assert (= (and d!430826 res!664267) b!1468338))

(declare-fun m!1713033 () Bool)

(assert (=> d!430826 m!1713033))

(declare-fun m!1713035 () Bool)

(assert (=> b!1468338 m!1713035))

(assert (=> b!1468297 d!430826))

(declare-fun d!430830 () Bool)

(declare-fun res!664275 () Bool)

(declare-fun e!937216 () Bool)

(assert (=> d!430830 (=> (not res!664275) (not e!937216))))

(declare-fun isEmpty!9601 (List!15378) Bool)

(assert (=> d!430830 (= res!664275 (not (isEmpty!9601 (originalCharacters!3575 (h!20714 tokens1!47)))))))

(assert (=> d!430830 (= (inv!20483 (h!20714 tokens1!47)) e!937216)))

(declare-fun b!1468358 () Bool)

(declare-fun res!664276 () Bool)

(assert (=> b!1468358 (=> (not res!664276) (not e!937216))))

(declare-fun list!6141 (BalanceConc!10378) List!15378)

(declare-fun dynLambda!6969 (Int TokenValue!2803) BalanceConc!10378)

(assert (=> b!1468358 (= res!664276 (= (originalCharacters!3575 (h!20714 tokens1!47)) (list!6141 (dynLambda!6969 (toChars!3891 (transformation!2713 (rule!4490 (h!20714 tokens1!47)))) (value!86968 (h!20714 tokens1!47))))))))

(declare-fun b!1468359 () Bool)

(declare-fun size!12491 (List!15378) Int)

(assert (=> b!1468359 (= e!937216 (= (size!12489 (h!20714 tokens1!47)) (size!12491 (originalCharacters!3575 (h!20714 tokens1!47)))))))

(assert (= (and d!430830 res!664275) b!1468358))

(assert (= (and b!1468358 res!664276) b!1468359))

(declare-fun b_lambda!45801 () Bool)

(assert (=> (not b_lambda!45801) (not b!1468358)))

(declare-fun t!135254 () Bool)

(declare-fun tb!83083 () Bool)

(assert (=> (and b!1468299 (= (toChars!3891 (transformation!2713 (rule!4490 (h!20714 tokens1!47)))) (toChars!3891 (transformation!2713 (rule!4490 (h!20714 tokens1!47))))) t!135254) tb!83083))

(declare-fun b!1468370 () Bool)

(declare-fun e!937222 () Bool)

(declare-fun tp!413568 () Bool)

(declare-fun inv!20486 (Conc!5219) Bool)

(assert (=> b!1468370 (= e!937222 (and (inv!20486 (c!242025 (dynLambda!6969 (toChars!3891 (transformation!2713 (rule!4490 (h!20714 tokens1!47)))) (value!86968 (h!20714 tokens1!47))))) tp!413568))))

(declare-fun result!99810 () Bool)

(declare-fun inv!20487 (BalanceConc!10378) Bool)

(assert (=> tb!83083 (= result!99810 (and (inv!20487 (dynLambda!6969 (toChars!3891 (transformation!2713 (rule!4490 (h!20714 tokens1!47)))) (value!86968 (h!20714 tokens1!47)))) e!937222))))

(assert (= tb!83083 b!1468370))

(declare-fun m!1713045 () Bool)

(assert (=> b!1468370 m!1713045))

(declare-fun m!1713047 () Bool)

(assert (=> tb!83083 m!1713047))

(assert (=> b!1468358 t!135254))

(declare-fun b_and!100467 () Bool)

(assert (= b_and!100463 (and (=> t!135254 result!99810) b_and!100467)))

(declare-fun m!1713049 () Bool)

(assert (=> d!430830 m!1713049))

(declare-fun m!1713051 () Bool)

(assert (=> b!1468358 m!1713051))

(assert (=> b!1468358 m!1713051))

(declare-fun m!1713053 () Bool)

(assert (=> b!1468358 m!1713053))

(declare-fun m!1713055 () Bool)

(assert (=> b!1468359 m!1713055))

(assert (=> b!1468298 d!430830))

(declare-fun b!1468381 () Bool)

(declare-fun e!937229 () Bool)

(declare-fun tp_is_empty!6901 () Bool)

(declare-fun tp!413571 () Bool)

(assert (=> b!1468381 (= e!937229 (and tp_is_empty!6901 tp!413571))))

(assert (=> b!1468300 (= tp!413558 e!937229)))

(assert (= (and b!1468300 ((_ is Cons!15312) (originalCharacters!3575 (h!20714 tokens1!47)))) b!1468381))

(declare-fun b!1468398 () Bool)

(declare-fun e!937240 () Bool)

(declare-fun tp!413590 () Bool)

(assert (=> b!1468398 (= e!937240 tp!413590)))

(declare-fun b!1468399 () Bool)

(declare-fun tp!413588 () Bool)

(declare-fun tp!413591 () Bool)

(assert (=> b!1468399 (= e!937240 (and tp!413588 tp!413591))))

(declare-fun b!1468397 () Bool)

(declare-fun tp!413592 () Bool)

(declare-fun tp!413589 () Bool)

(assert (=> b!1468397 (= e!937240 (and tp!413592 tp!413589))))

(declare-fun b!1468396 () Bool)

(assert (=> b!1468396 (= e!937240 tp_is_empty!6901)))

(assert (=> b!1468297 (= tp!413560 e!937240)))

(assert (= (and b!1468297 ((_ is ElementMatch!4027) (regex!2713 (rule!4490 (h!20714 tokens1!47))))) b!1468396))

(assert (= (and b!1468297 ((_ is Concat!6831) (regex!2713 (rule!4490 (h!20714 tokens1!47))))) b!1468397))

(assert (= (and b!1468297 ((_ is Star!4027) (regex!2713 (rule!4490 (h!20714 tokens1!47))))) b!1468398))

(assert (= (and b!1468297 ((_ is Union!4027) (regex!2713 (rule!4490 (h!20714 tokens1!47))))) b!1468399))

(declare-fun b!1468431 () Bool)

(declare-fun b_free!36891 () Bool)

(declare-fun b_next!37595 () Bool)

(assert (=> b!1468431 (= b_free!36891 (not b_next!37595))))

(declare-fun tp!413630 () Bool)

(declare-fun b_and!100473 () Bool)

(assert (=> b!1468431 (= tp!413630 b_and!100473)))

(declare-fun b_free!36893 () Bool)

(declare-fun b_next!37597 () Bool)

(assert (=> b!1468431 (= b_free!36893 (not b_next!37597))))

(declare-fun t!135258 () Bool)

(declare-fun tb!83087 () Bool)

(assert (=> (and b!1468431 (= (toChars!3891 (transformation!2713 (rule!4490 (h!20714 (t!135250 tokens1!47))))) (toChars!3891 (transformation!2713 (rule!4490 (h!20714 tokens1!47))))) t!135258) tb!83087))

(declare-fun result!99828 () Bool)

(assert (= result!99828 result!99810))

(assert (=> b!1468358 t!135258))

(declare-fun b_and!100475 () Bool)

(declare-fun tp!413627 () Bool)

(assert (=> b!1468431 (= tp!413627 (and (=> t!135258 result!99828) b_and!100475))))

(declare-fun e!937263 () Bool)

(declare-fun e!937266 () Bool)

(declare-fun tp!413631 () Bool)

(declare-fun b!1468428 () Bool)

(assert (=> b!1468428 (= e!937266 (and (inv!20483 (h!20714 (t!135250 tokens1!47))) e!937263 tp!413631))))

(declare-fun b!1468429 () Bool)

(declare-fun e!937262 () Bool)

(declare-fun tp!413629 () Bool)

(assert (=> b!1468429 (= e!937263 (and (inv!21 (value!86968 (h!20714 (t!135250 tokens1!47)))) e!937262 tp!413629))))

(assert (=> b!1468298 (= tp!413561 e!937266)))

(declare-fun tp!413628 () Bool)

(declare-fun e!937267 () Bool)

(declare-fun b!1468430 () Bool)

(assert (=> b!1468430 (= e!937262 (and tp!413628 (inv!20479 (tag!2977 (rule!4490 (h!20714 (t!135250 tokens1!47))))) (inv!20482 (transformation!2713 (rule!4490 (h!20714 (t!135250 tokens1!47))))) e!937267))))

(assert (=> b!1468431 (= e!937267 (and tp!413630 tp!413627))))

(assert (= b!1468430 b!1468431))

(assert (= b!1468429 b!1468430))

(assert (= b!1468428 b!1468429))

(assert (= (and b!1468298 ((_ is Cons!15313) (t!135250 tokens1!47))) b!1468428))

(declare-fun m!1713065 () Bool)

(assert (=> b!1468428 m!1713065))

(declare-fun m!1713067 () Bool)

(assert (=> b!1468429 m!1713067))

(declare-fun m!1713069 () Bool)

(assert (=> b!1468430 m!1713069))

(declare-fun m!1713071 () Bool)

(assert (=> b!1468430 m!1713071))

(declare-fun b_lambda!45805 () Bool)

(assert (= b_lambda!45801 (or (and b!1468299 b_free!36885) (and b!1468431 b_free!36893 (= (toChars!3891 (transformation!2713 (rule!4490 (h!20714 (t!135250 tokens1!47))))) (toChars!3891 (transformation!2713 (rule!4490 (h!20714 tokens1!47)))))) b_lambda!45805)))

(check-sat b_and!100473 (not d!430830) (not b!1468398) (not b!1468397) (not b_next!37587) (not b!1468430) (not b_next!37597) b_and!100461 (not b!1468338) (not b!1468332) (not b!1468358) tp_is_empty!6901 (not d!430826) (not tb!83083) b_and!100467 (not b_next!37589) (not b!1468316) (not b!1468319) (not b_lambda!45805) (not b!1468399) (not b_next!37595) b_and!100475 (not b!1468381) (not b!1468428) (not b!1468429) (not b!1468359) (not b!1468370) (not b!1468315))
(check-sat b_and!100473 (not b_next!37587) (not b_next!37597) b_and!100461 b_and!100467 (not b_next!37589) (not b_next!37595) b_and!100475)
