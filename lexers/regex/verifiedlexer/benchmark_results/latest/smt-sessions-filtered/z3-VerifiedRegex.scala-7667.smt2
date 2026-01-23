; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!404234 () Bool)

(assert start!404234)

(declare-fun b!4227232 () Bool)

(declare-fun b_free!124667 () Bool)

(declare-fun b_next!125371 () Bool)

(assert (=> b!4227232 (= b_free!124667 (not b_next!125371))))

(declare-fun tp!1294470 () Bool)

(declare-fun b_and!333901 () Bool)

(assert (=> b!4227232 (= tp!1294470 b_and!333901)))

(declare-fun b_free!124669 () Bool)

(declare-fun b_next!125373 () Bool)

(assert (=> b!4227232 (= b_free!124669 (not b_next!125373))))

(declare-fun tp!1294471 () Bool)

(declare-fun b_and!333903 () Bool)

(assert (=> b!4227232 (= tp!1294471 b_and!333903)))

(declare-fun b!4227233 () Bool)

(declare-fun b_free!124671 () Bool)

(declare-fun b_next!125375 () Bool)

(assert (=> b!4227233 (= b_free!124671 (not b_next!125375))))

(declare-fun tp!1294475 () Bool)

(declare-fun b_and!333905 () Bool)

(assert (=> b!4227233 (= tp!1294475 b_and!333905)))

(declare-fun b_free!124673 () Bool)

(declare-fun b_next!125377 () Bool)

(assert (=> b!4227233 (= b_free!124673 (not b_next!125377))))

(declare-fun tp!1294472 () Bool)

(declare-fun b_and!333907 () Bool)

(assert (=> b!4227233 (= tp!1294472 b_and!333907)))

(declare-fun e!2624673 () Bool)

(declare-fun e!2624669 () Bool)

(declare-fun tp!1294473 () Bool)

(declare-datatypes ((C!25700 0))(
  ( (C!25701 (val!15012 Int)) )
))
(declare-datatypes ((List!46747 0))(
  ( (Nil!46623) (Cons!46623 (h!52043 C!25700) (t!349364 List!46747)) )
))
(declare-datatypes ((IArray!28123 0))(
  ( (IArray!28124 (innerList!14119 List!46747)) )
))
(declare-datatypes ((Conc!14059 0))(
  ( (Node!14059 (left!34670 Conc!14059) (right!35000 Conc!14059) (csize!28348 Int) (cheight!14270 Int)) (Leaf!21727 (xs!17365 IArray!28123) (csize!28349 Int)) (Empty!14059) )
))
(declare-datatypes ((String!54259 0))(
  ( (String!54260 (value!244150 String)) )
))
(declare-datatypes ((List!46748 0))(
  ( (Nil!46624) (Cons!46624 (h!52044 (_ BitVec 16)) (t!349365 List!46748)) )
))
(declare-datatypes ((TokenValue!8078 0))(
  ( (FloatLiteralValue!16156 (text!56991 List!46748)) (TokenValueExt!8077 (__x!28379 Int)) (Broken!40390 (value!244151 List!46748)) (Object!8201) (End!8078) (Def!8078) (Underscore!8078) (Match!8078) (Else!8078) (Error!8078) (Case!8078) (If!8078) (Extends!8078) (Abstract!8078) (Class!8078) (Val!8078) (DelimiterValue!16156 (del!8138 List!46748)) (KeywordValue!8084 (value!244152 List!46748)) (CommentValue!16156 (value!244153 List!46748)) (WhitespaceValue!16156 (value!244154 List!46748)) (IndentationValue!8078 (value!244155 List!46748)) (String!54261) (Int32!8078) (Broken!40391 (value!244156 List!46748)) (Boolean!8079) (Unit!65748) (OperatorValue!8081 (op!8138 List!46748)) (IdentifierValue!16156 (value!244157 List!46748)) (IdentifierValue!16157 (value!244158 List!46748)) (WhitespaceValue!16157 (value!244159 List!46748)) (True!16156) (False!16156) (Broken!40392 (value!244160 List!46748)) (Broken!40393 (value!244161 List!46748)) (True!16157) (RightBrace!8078) (RightBracket!8078) (Colon!8078) (Null!8078) (Comma!8078) (LeftBracket!8078) (False!16157) (LeftBrace!8078) (ImaginaryLiteralValue!8078 (text!56992 List!46748)) (StringLiteralValue!24234 (value!244162 List!46748)) (EOFValue!8078 (value!244163 List!46748)) (IdentValue!8078 (value!244164 List!46748)) (DelimiterValue!16157 (value!244165 List!46748)) (DedentValue!8078 (value!244166 List!46748)) (NewLineValue!8078 (value!244167 List!46748)) (IntegerValue!24234 (value!244168 (_ BitVec 32)) (text!56993 List!46748)) (IntegerValue!24235 (value!244169 Int) (text!56994 List!46748)) (Times!8078) (Or!8078) (Equal!8078) (Minus!8078) (Broken!40394 (value!244170 List!46748)) (And!8078) (Div!8078) (LessEqual!8078) (Mod!8078) (Concat!20831) (Not!8078) (Plus!8078) (SpaceValue!8078 (value!244171 List!46748)) (IntegerValue!24236 (value!244172 Int) (text!56995 List!46748)) (StringLiteralValue!24235 (text!56996 List!46748)) (FloatLiteralValue!16157 (text!56997 List!46748)) (BytesLiteralValue!8078 (value!244173 List!46748)) (CommentValue!16157 (value!244174 List!46748)) (StringLiteralValue!24236 (value!244175 List!46748)) (ErrorTokenValue!8078 (msg!8139 List!46748)) )
))
(declare-datatypes ((BalanceConc!27712 0))(
  ( (BalanceConc!27713 (c!718718 Conc!14059)) )
))
(declare-datatypes ((TokenValueInjection!15584 0))(
  ( (TokenValueInjection!15585 (toValue!10576 Int) (toChars!10435 Int)) )
))
(declare-datatypes ((Regex!12753 0))(
  ( (ElementMatch!12753 (c!718719 C!25700)) (Concat!20832 (regOne!26018 Regex!12753) (regTwo!26018 Regex!12753)) (EmptyExpr!12753) (Star!12753 (reg!13082 Regex!12753)) (EmptyLang!12753) (Union!12753 (regOne!26019 Regex!12753) (regTwo!26019 Regex!12753)) )
))
(declare-datatypes ((Rule!15496 0))(
  ( (Rule!15497 (regex!7848 Regex!12753) (tag!8712 String!54259) (isSeparator!7848 Bool) (transformation!7848 TokenValueInjection!15584)) )
))
(declare-datatypes ((List!46749 0))(
  ( (Nil!46625) (Cons!46625 (h!52045 Rule!15496) (t!349366 List!46749)) )
))
(declare-fun rules!4024 () List!46749)

(declare-fun b!4227231 () Bool)

(declare-fun inv!61276 (String!54259) Bool)

(declare-fun inv!61278 (TokenValueInjection!15584) Bool)

(assert (=> b!4227231 (= e!2624669 (and tp!1294473 (inv!61276 (tag!8712 (h!52045 rules!4024))) (inv!61278 (transformation!7848 (h!52045 rules!4024))) e!2624673))))

(declare-fun e!2624670 () Bool)

(assert (=> b!4227232 (= e!2624670 (and tp!1294470 tp!1294471))))

(assert (=> b!4227233 (= e!2624673 (and tp!1294475 tp!1294472))))

(declare-fun b!4227234 () Bool)

(declare-fun res!1738222 () Bool)

(declare-fun e!2624672 () Bool)

(assert (=> b!4227234 (=> (not res!1738222) (not e!2624672))))

(declare-fun r!4367 () Rule!15496)

(declare-fun contains!9671 (List!46749 Rule!15496) Bool)

(assert (=> b!4227234 (= res!1738222 (contains!9671 rules!4024 r!4367))))

(declare-fun b!4227235 () Bool)

(declare-fun res!1738223 () Bool)

(assert (=> b!4227235 (=> (not res!1738223) (not e!2624672))))

(declare-datatypes ((LexerInterface!7443 0))(
  ( (LexerInterfaceExt!7440 (__x!28380 Int)) (Lexer!7441) )
))
(declare-fun thiss!26827 () LexerInterface!7443)

(declare-fun rulesValidInductive!2950 (LexerInterface!7443 List!46749) Bool)

(assert (=> b!4227235 (= res!1738223 (rulesValidInductive!2950 thiss!26827 rules!4024))))

(declare-fun res!1738224 () Bool)

(assert (=> start!404234 (=> (not res!1738224) (not e!2624672))))

(get-info :version)

(assert (=> start!404234 (= res!1738224 ((_ is Lexer!7441) thiss!26827))))

(assert (=> start!404234 e!2624672))

(assert (=> start!404234 true))

(declare-fun e!2624676 () Bool)

(assert (=> start!404234 e!2624676))

(declare-fun e!2624671 () Bool)

(assert (=> start!404234 e!2624671))

(declare-fun b!4227236 () Bool)

(declare-fun res!1738220 () Bool)

(assert (=> b!4227236 (=> (not res!1738220) (not e!2624672))))

(assert (=> b!4227236 (= res!1738220 (and (or (not ((_ is Cons!46625) rules!4024)) (not (= (h!52045 rules!4024) r!4367))) ((_ is Cons!46625) rules!4024) (not (= (h!52045 rules!4024) r!4367))))))

(declare-fun b!4227237 () Bool)

(declare-fun tp!1294474 () Bool)

(assert (=> b!4227237 (= e!2624676 (and e!2624669 tp!1294474))))

(declare-fun b!4227238 () Bool)

(declare-fun res!1738221 () Bool)

(assert (=> b!4227238 (=> (not res!1738221) (not e!2624672))))

(assert (=> b!4227238 (= res!1738221 (contains!9671 (t!349366 rules!4024) r!4367))))

(declare-fun tp!1294476 () Bool)

(declare-fun b!4227239 () Bool)

(assert (=> b!4227239 (= e!2624671 (and tp!1294476 (inv!61276 (tag!8712 r!4367)) (inv!61278 (transformation!7848 r!4367)) e!2624670))))

(declare-fun b!4227240 () Bool)

(assert (=> b!4227240 (= e!2624672 (not (rulesValidInductive!2950 thiss!26827 (t!349366 rules!4024))))))

(assert (= (and start!404234 res!1738224) b!4227234))

(assert (= (and b!4227234 res!1738222) b!4227235))

(assert (= (and b!4227235 res!1738223) b!4227236))

(assert (= (and b!4227236 res!1738220) b!4227238))

(assert (= (and b!4227238 res!1738221) b!4227240))

(assert (= b!4227231 b!4227233))

(assert (= b!4227237 b!4227231))

(assert (= (and start!404234 ((_ is Cons!46625) rules!4024)) b!4227237))

(assert (= b!4227239 b!4227232))

(assert (= start!404234 b!4227239))

(declare-fun m!4814775 () Bool)

(assert (=> b!4227240 m!4814775))

(declare-fun m!4814777 () Bool)

(assert (=> b!4227238 m!4814777))

(declare-fun m!4814779 () Bool)

(assert (=> b!4227231 m!4814779))

(declare-fun m!4814781 () Bool)

(assert (=> b!4227231 m!4814781))

(declare-fun m!4814783 () Bool)

(assert (=> b!4227235 m!4814783))

(declare-fun m!4814785 () Bool)

(assert (=> b!4227234 m!4814785))

(declare-fun m!4814787 () Bool)

(assert (=> b!4227239 m!4814787))

(declare-fun m!4814789 () Bool)

(assert (=> b!4227239 m!4814789))

(check-sat (not b!4227239) (not b!4227238) (not b!4227234) (not b_next!125373) (not b!4227231) (not b!4227235) b_and!333901 (not b_next!125377) (not b_next!125371) (not b!4227240) (not b!4227237) b_and!333907 b_and!333903 b_and!333905 (not b_next!125375))
(check-sat (not b_next!125373) b_and!333901 (not b_next!125377) (not b_next!125371) b_and!333907 b_and!333903 b_and!333905 (not b_next!125375))
(get-model)

(declare-fun d!1244440 () Bool)

(assert (=> d!1244440 true))

(declare-fun lt!1503251 () Bool)

(declare-fun lambda!129940 () Int)

(declare-fun forall!8522 (List!46749 Int) Bool)

(assert (=> d!1244440 (= lt!1503251 (forall!8522 rules!4024 lambda!129940))))

(declare-fun e!2624717 () Bool)

(assert (=> d!1244440 (= lt!1503251 e!2624717)))

(declare-fun res!1738257 () Bool)

(assert (=> d!1244440 (=> res!1738257 e!2624717)))

(assert (=> d!1244440 (= res!1738257 (not ((_ is Cons!46625) rules!4024)))))

(assert (=> d!1244440 (= (rulesValidInductive!2950 thiss!26827 rules!4024) lt!1503251)))

(declare-fun b!4227296 () Bool)

(declare-fun e!2624718 () Bool)

(assert (=> b!4227296 (= e!2624717 e!2624718)))

(declare-fun res!1738256 () Bool)

(assert (=> b!4227296 (=> (not res!1738256) (not e!2624718))))

(declare-fun ruleValid!3548 (LexerInterface!7443 Rule!15496) Bool)

(assert (=> b!4227296 (= res!1738256 (ruleValid!3548 thiss!26827 (h!52045 rules!4024)))))

(declare-fun b!4227297 () Bool)

(assert (=> b!4227297 (= e!2624718 (rulesValidInductive!2950 thiss!26827 (t!349366 rules!4024)))))

(assert (= (and d!1244440 (not res!1738257)) b!4227296))

(assert (= (and b!4227296 res!1738256) b!4227297))

(declare-fun m!4814823 () Bool)

(assert (=> d!1244440 m!4814823))

(declare-fun m!4814825 () Bool)

(assert (=> b!4227296 m!4814825))

(assert (=> b!4227297 m!4814775))

(assert (=> b!4227235 d!1244440))

(declare-fun bs!597865 () Bool)

(declare-fun d!1244458 () Bool)

(assert (= bs!597865 (and d!1244458 d!1244440)))

(declare-fun lambda!129941 () Int)

(assert (=> bs!597865 (= lambda!129941 lambda!129940)))

(assert (=> d!1244458 true))

(declare-fun lt!1503252 () Bool)

(assert (=> d!1244458 (= lt!1503252 (forall!8522 (t!349366 rules!4024) lambda!129941))))

(declare-fun e!2624719 () Bool)

(assert (=> d!1244458 (= lt!1503252 e!2624719)))

(declare-fun res!1738259 () Bool)

(assert (=> d!1244458 (=> res!1738259 e!2624719)))

(assert (=> d!1244458 (= res!1738259 (not ((_ is Cons!46625) (t!349366 rules!4024))))))

(assert (=> d!1244458 (= (rulesValidInductive!2950 thiss!26827 (t!349366 rules!4024)) lt!1503252)))

(declare-fun b!4227300 () Bool)

(declare-fun e!2624720 () Bool)

(assert (=> b!4227300 (= e!2624719 e!2624720)))

(declare-fun res!1738258 () Bool)

(assert (=> b!4227300 (=> (not res!1738258) (not e!2624720))))

(assert (=> b!4227300 (= res!1738258 (ruleValid!3548 thiss!26827 (h!52045 (t!349366 rules!4024))))))

(declare-fun b!4227301 () Bool)

(assert (=> b!4227301 (= e!2624720 (rulesValidInductive!2950 thiss!26827 (t!349366 (t!349366 rules!4024))))))

(assert (= (and d!1244458 (not res!1738259)) b!4227300))

(assert (= (and b!4227300 res!1738258) b!4227301))

(declare-fun m!4814827 () Bool)

(assert (=> d!1244458 m!4814827))

(declare-fun m!4814829 () Bool)

(assert (=> b!4227300 m!4814829))

(declare-fun m!4814831 () Bool)

(assert (=> b!4227301 m!4814831))

(assert (=> b!4227240 d!1244458))

(declare-fun d!1244460 () Bool)

(assert (=> d!1244460 (= (inv!61276 (tag!8712 r!4367)) (= (mod (str.len (value!244150 (tag!8712 r!4367))) 2) 0))))

(assert (=> b!4227239 d!1244460))

(declare-fun d!1244462 () Bool)

(declare-fun res!1738262 () Bool)

(declare-fun e!2624723 () Bool)

(assert (=> d!1244462 (=> (not res!1738262) (not e!2624723))))

(declare-fun semiInverseModEq!3415 (Int Int) Bool)

(assert (=> d!1244462 (= res!1738262 (semiInverseModEq!3415 (toChars!10435 (transformation!7848 r!4367)) (toValue!10576 (transformation!7848 r!4367))))))

(assert (=> d!1244462 (= (inv!61278 (transformation!7848 r!4367)) e!2624723)))

(declare-fun b!4227304 () Bool)

(declare-fun equivClasses!3314 (Int Int) Bool)

(assert (=> b!4227304 (= e!2624723 (equivClasses!3314 (toChars!10435 (transformation!7848 r!4367)) (toValue!10576 (transformation!7848 r!4367))))))

(assert (= (and d!1244462 res!1738262) b!4227304))

(declare-fun m!4814833 () Bool)

(assert (=> d!1244462 m!4814833))

(declare-fun m!4814835 () Bool)

(assert (=> b!4227304 m!4814835))

(assert (=> b!4227239 d!1244462))

(declare-fun d!1244464 () Bool)

(declare-fun lt!1503255 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7327 (List!46749) (InoxSet Rule!15496))

(assert (=> d!1244464 (= lt!1503255 (select (content!7327 rules!4024) r!4367))))

(declare-fun e!2624729 () Bool)

(assert (=> d!1244464 (= lt!1503255 e!2624729)))

(declare-fun res!1738267 () Bool)

(assert (=> d!1244464 (=> (not res!1738267) (not e!2624729))))

(assert (=> d!1244464 (= res!1738267 ((_ is Cons!46625) rules!4024))))

(assert (=> d!1244464 (= (contains!9671 rules!4024 r!4367) lt!1503255)))

(declare-fun b!4227309 () Bool)

(declare-fun e!2624728 () Bool)

(assert (=> b!4227309 (= e!2624729 e!2624728)))

(declare-fun res!1738268 () Bool)

(assert (=> b!4227309 (=> res!1738268 e!2624728)))

(assert (=> b!4227309 (= res!1738268 (= (h!52045 rules!4024) r!4367))))

(declare-fun b!4227310 () Bool)

(assert (=> b!4227310 (= e!2624728 (contains!9671 (t!349366 rules!4024) r!4367))))

(assert (= (and d!1244464 res!1738267) b!4227309))

(assert (= (and b!4227309 (not res!1738268)) b!4227310))

(declare-fun m!4814837 () Bool)

(assert (=> d!1244464 m!4814837))

(declare-fun m!4814839 () Bool)

(assert (=> d!1244464 m!4814839))

(assert (=> b!4227310 m!4814777))

(assert (=> b!4227234 d!1244464))

(declare-fun d!1244466 () Bool)

(declare-fun lt!1503256 () Bool)

(assert (=> d!1244466 (= lt!1503256 (select (content!7327 (t!349366 rules!4024)) r!4367))))

(declare-fun e!2624731 () Bool)

(assert (=> d!1244466 (= lt!1503256 e!2624731)))

(declare-fun res!1738269 () Bool)

(assert (=> d!1244466 (=> (not res!1738269) (not e!2624731))))

(assert (=> d!1244466 (= res!1738269 ((_ is Cons!46625) (t!349366 rules!4024)))))

(assert (=> d!1244466 (= (contains!9671 (t!349366 rules!4024) r!4367) lt!1503256)))

(declare-fun b!4227311 () Bool)

(declare-fun e!2624730 () Bool)

(assert (=> b!4227311 (= e!2624731 e!2624730)))

(declare-fun res!1738270 () Bool)

(assert (=> b!4227311 (=> res!1738270 e!2624730)))

(assert (=> b!4227311 (= res!1738270 (= (h!52045 (t!349366 rules!4024)) r!4367))))

(declare-fun b!4227312 () Bool)

(assert (=> b!4227312 (= e!2624730 (contains!9671 (t!349366 (t!349366 rules!4024)) r!4367))))

(assert (= (and d!1244466 res!1738269) b!4227311))

(assert (= (and b!4227311 (not res!1738270)) b!4227312))

(declare-fun m!4814841 () Bool)

(assert (=> d!1244466 m!4814841))

(declare-fun m!4814843 () Bool)

(assert (=> d!1244466 m!4814843))

(declare-fun m!4814845 () Bool)

(assert (=> b!4227312 m!4814845))

(assert (=> b!4227238 d!1244466))

(declare-fun d!1244468 () Bool)

(assert (=> d!1244468 (= (inv!61276 (tag!8712 (h!52045 rules!4024))) (= (mod (str.len (value!244150 (tag!8712 (h!52045 rules!4024)))) 2) 0))))

(assert (=> b!4227231 d!1244468))

(declare-fun d!1244470 () Bool)

(declare-fun res!1738271 () Bool)

(declare-fun e!2624732 () Bool)

(assert (=> d!1244470 (=> (not res!1738271) (not e!2624732))))

(assert (=> d!1244470 (= res!1738271 (semiInverseModEq!3415 (toChars!10435 (transformation!7848 (h!52045 rules!4024))) (toValue!10576 (transformation!7848 (h!52045 rules!4024)))))))

(assert (=> d!1244470 (= (inv!61278 (transformation!7848 (h!52045 rules!4024))) e!2624732)))

(declare-fun b!4227313 () Bool)

(assert (=> b!4227313 (= e!2624732 (equivClasses!3314 (toChars!10435 (transformation!7848 (h!52045 rules!4024))) (toValue!10576 (transformation!7848 (h!52045 rules!4024)))))))

(assert (= (and d!1244470 res!1738271) b!4227313))

(declare-fun m!4814847 () Bool)

(assert (=> d!1244470 m!4814847))

(declare-fun m!4814849 () Bool)

(assert (=> b!4227313 m!4814849))

(assert (=> b!4227231 d!1244470))

(declare-fun b!4227326 () Bool)

(declare-fun e!2624735 () Bool)

(declare-fun tp!1294519 () Bool)

(assert (=> b!4227326 (= e!2624735 tp!1294519)))

(declare-fun b!4227325 () Bool)

(declare-fun tp!1294520 () Bool)

(declare-fun tp!1294522 () Bool)

(assert (=> b!4227325 (= e!2624735 (and tp!1294520 tp!1294522))))

(declare-fun b!4227327 () Bool)

(declare-fun tp!1294521 () Bool)

(declare-fun tp!1294523 () Bool)

(assert (=> b!4227327 (= e!2624735 (and tp!1294521 tp!1294523))))

(declare-fun b!4227324 () Bool)

(declare-fun tp_is_empty!22445 () Bool)

(assert (=> b!4227324 (= e!2624735 tp_is_empty!22445)))

(assert (=> b!4227239 (= tp!1294476 e!2624735)))

(assert (= (and b!4227239 ((_ is ElementMatch!12753) (regex!7848 r!4367))) b!4227324))

(assert (= (and b!4227239 ((_ is Concat!20832) (regex!7848 r!4367))) b!4227325))

(assert (= (and b!4227239 ((_ is Star!12753) (regex!7848 r!4367))) b!4227326))

(assert (= (and b!4227239 ((_ is Union!12753) (regex!7848 r!4367))) b!4227327))

(declare-fun b!4227338 () Bool)

(declare-fun b_free!124679 () Bool)

(declare-fun b_next!125383 () Bool)

(assert (=> b!4227338 (= b_free!124679 (not b_next!125383))))

(declare-fun tp!1294535 () Bool)

(declare-fun b_and!333913 () Bool)

(assert (=> b!4227338 (= tp!1294535 b_and!333913)))

(declare-fun b_free!124681 () Bool)

(declare-fun b_next!125385 () Bool)

(assert (=> b!4227338 (= b_free!124681 (not b_next!125385))))

(declare-fun tp!1294533 () Bool)

(declare-fun b_and!333915 () Bool)

(assert (=> b!4227338 (= tp!1294533 b_and!333915)))

(declare-fun e!2624745 () Bool)

(assert (=> b!4227338 (= e!2624745 (and tp!1294535 tp!1294533))))

(declare-fun b!4227337 () Bool)

(declare-fun tp!1294534 () Bool)

(declare-fun e!2624747 () Bool)

(assert (=> b!4227337 (= e!2624747 (and tp!1294534 (inv!61276 (tag!8712 (h!52045 (t!349366 rules!4024)))) (inv!61278 (transformation!7848 (h!52045 (t!349366 rules!4024)))) e!2624745))))

(declare-fun b!4227336 () Bool)

(declare-fun e!2624744 () Bool)

(declare-fun tp!1294532 () Bool)

(assert (=> b!4227336 (= e!2624744 (and e!2624747 tp!1294532))))

(assert (=> b!4227237 (= tp!1294474 e!2624744)))

(assert (= b!4227337 b!4227338))

(assert (= b!4227336 b!4227337))

(assert (= (and b!4227237 ((_ is Cons!46625) (t!349366 rules!4024))) b!4227336))

(declare-fun m!4814851 () Bool)

(assert (=> b!4227337 m!4814851))

(declare-fun m!4814853 () Bool)

(assert (=> b!4227337 m!4814853))

(declare-fun b!4227341 () Bool)

(declare-fun e!2624748 () Bool)

(declare-fun tp!1294536 () Bool)

(assert (=> b!4227341 (= e!2624748 tp!1294536)))

(declare-fun b!4227340 () Bool)

(declare-fun tp!1294537 () Bool)

(declare-fun tp!1294539 () Bool)

(assert (=> b!4227340 (= e!2624748 (and tp!1294537 tp!1294539))))

(declare-fun b!4227342 () Bool)

(declare-fun tp!1294538 () Bool)

(declare-fun tp!1294540 () Bool)

(assert (=> b!4227342 (= e!2624748 (and tp!1294538 tp!1294540))))

(declare-fun b!4227339 () Bool)

(assert (=> b!4227339 (= e!2624748 tp_is_empty!22445)))

(assert (=> b!4227231 (= tp!1294473 e!2624748)))

(assert (= (and b!4227231 ((_ is ElementMatch!12753) (regex!7848 (h!52045 rules!4024)))) b!4227339))

(assert (= (and b!4227231 ((_ is Concat!20832) (regex!7848 (h!52045 rules!4024)))) b!4227340))

(assert (= (and b!4227231 ((_ is Star!12753) (regex!7848 (h!52045 rules!4024)))) b!4227341))

(assert (= (and b!4227231 ((_ is Union!12753) (regex!7848 (h!52045 rules!4024)))) b!4227342))

(check-sat (not d!1244458) (not d!1244462) (not b!4227310) (not b!4227336) (not b!4227296) (not b!4227342) tp_is_empty!22445 (not b!4227326) (not b!4227312) (not b_next!125383) (not b!4227337) (not d!1244466) (not b!4227300) (not d!1244440) (not b!4227341) (not d!1244470) (not b!4227325) b_and!333913 (not d!1244464) (not b_next!125373) b_and!333901 (not b_next!125385) (not b!4227301) (not b_next!125377) (not b_next!125371) (not b!4227340) (not b!4227327) (not b!4227304) b_and!333905 (not b_next!125375) (not b!4227313) b_and!333907 b_and!333915 b_and!333903 (not b!4227297))
(check-sat b_and!333913 (not b_next!125373) (not b_next!125377) (not b_next!125371) (not b_next!125383) b_and!333903 b_and!333901 (not b_next!125385) b_and!333905 (not b_next!125375) b_and!333907 b_and!333915)
