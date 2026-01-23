; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!349318 () Bool)

(assert start!349318)

(declare-fun b!3704752 () Bool)

(declare-fun b_free!98977 () Bool)

(declare-fun b_next!99681 () Bool)

(assert (=> b!3704752 (= b_free!98977 (not b_next!99681))))

(declare-fun tp!1126659 () Bool)

(declare-fun b_and!277211 () Bool)

(assert (=> b!3704752 (= tp!1126659 b_and!277211)))

(declare-fun b_free!98979 () Bool)

(declare-fun b_next!99683 () Bool)

(assert (=> b!3704752 (= b_free!98979 (not b_next!99683))))

(declare-fun tp!1126662 () Bool)

(declare-fun b_and!277213 () Bool)

(assert (=> b!3704752 (= tp!1126662 b_and!277213)))

(declare-fun b!3704751 () Bool)

(declare-fun e!2294790 () Bool)

(declare-fun e!2294785 () Bool)

(assert (=> b!3704751 (= e!2294790 (not e!2294785))))

(declare-fun res!1507136 () Bool)

(assert (=> b!3704751 (=> res!1507136 e!2294785)))

(declare-datatypes ((List!39588 0))(
  ( (Nil!39464) (Cons!39464 (h!44884 (_ BitVec 16)) (t!302271 List!39588)) )
))
(declare-datatypes ((TokenValue!6244 0))(
  ( (FloatLiteralValue!12488 (text!44153 List!39588)) (TokenValueExt!6243 (__x!24705 Int)) (Broken!31220 (value!191798 List!39588)) (Object!6367) (End!6244) (Def!6244) (Underscore!6244) (Match!6244) (Else!6244) (Error!6244) (Case!6244) (If!6244) (Extends!6244) (Abstract!6244) (Class!6244) (Val!6244) (DelimiterValue!12488 (del!6304 List!39588)) (KeywordValue!6250 (value!191799 List!39588)) (CommentValue!12488 (value!191800 List!39588)) (WhitespaceValue!12488 (value!191801 List!39588)) (IndentationValue!6244 (value!191802 List!39588)) (String!44553) (Int32!6244) (Broken!31221 (value!191803 List!39588)) (Boolean!6245) (Unit!57397) (OperatorValue!6247 (op!6304 List!39588)) (IdentifierValue!12488 (value!191804 List!39588)) (IdentifierValue!12489 (value!191805 List!39588)) (WhitespaceValue!12489 (value!191806 List!39588)) (True!12488) (False!12488) (Broken!31222 (value!191807 List!39588)) (Broken!31223 (value!191808 List!39588)) (True!12489) (RightBrace!6244) (RightBracket!6244) (Colon!6244) (Null!6244) (Comma!6244) (LeftBracket!6244) (False!12489) (LeftBrace!6244) (ImaginaryLiteralValue!6244 (text!44154 List!39588)) (StringLiteralValue!18732 (value!191809 List!39588)) (EOFValue!6244 (value!191810 List!39588)) (IdentValue!6244 (value!191811 List!39588)) (DelimiterValue!12489 (value!191812 List!39588)) (DedentValue!6244 (value!191813 List!39588)) (NewLineValue!6244 (value!191814 List!39588)) (IntegerValue!18732 (value!191815 (_ BitVec 32)) (text!44155 List!39588)) (IntegerValue!18733 (value!191816 Int) (text!44156 List!39588)) (Times!6244) (Or!6244) (Equal!6244) (Minus!6244) (Broken!31224 (value!191817 List!39588)) (And!6244) (Div!6244) (LessEqual!6244) (Mod!6244) (Concat!17017) (Not!6244) (Plus!6244) (SpaceValue!6244 (value!191818 List!39588)) (IntegerValue!18734 (value!191819 Int) (text!44157 List!39588)) (StringLiteralValue!18733 (text!44158 List!39588)) (FloatLiteralValue!12489 (text!44159 List!39588)) (BytesLiteralValue!6244 (value!191820 List!39588)) (CommentValue!12489 (value!191821 List!39588)) (StringLiteralValue!18734 (value!191822 List!39588)) (ErrorTokenValue!6244 (msg!6305 List!39588)) )
))
(declare-datatypes ((C!21732 0))(
  ( (C!21733 (val!12914 Int)) )
))
(declare-datatypes ((List!39589 0))(
  ( (Nil!39465) (Cons!39465 (h!44885 C!21732) (t!302272 List!39589)) )
))
(declare-datatypes ((IArray!24227 0))(
  ( (IArray!24228 (innerList!12171 List!39589)) )
))
(declare-datatypes ((Conc!12111 0))(
  ( (Node!12111 (left!30676 Conc!12111) (right!31006 Conc!12111) (csize!24452 Int) (cheight!12322 Int)) (Leaf!18729 (xs!15313 IArray!24227) (csize!24453 Int)) (Empty!12111) )
))
(declare-datatypes ((BalanceConc!23836 0))(
  ( (BalanceConc!23837 (c!639948 Conc!12111)) )
))
(declare-datatypes ((Regex!10773 0))(
  ( (ElementMatch!10773 (c!639949 C!21732)) (Concat!17018 (regOne!22058 Regex!10773) (regTwo!22058 Regex!10773)) (EmptyExpr!10773) (Star!10773 (reg!11102 Regex!10773)) (EmptyLang!10773) (Union!10773 (regOne!22059 Regex!10773) (regTwo!22059 Regex!10773)) )
))
(declare-datatypes ((String!44554 0))(
  ( (String!44555 (value!191823 String)) )
))
(declare-datatypes ((TokenValueInjection!11916 0))(
  ( (TokenValueInjection!11917 (toValue!8358 Int) (toChars!8217 Int)) )
))
(declare-datatypes ((Rule!11828 0))(
  ( (Rule!11829 (regex!6014 Regex!10773) (tag!6868 String!44554) (isSeparator!6014 Bool) (transformation!6014 TokenValueInjection!11916)) )
))
(declare-datatypes ((Option!8552 0))(
  ( (None!8551) (Some!8551 (v!38533 Rule!11828)) )
))
(declare-fun lt!1296205 () Option!8552)

(declare-fun isEmpty!23476 (Option!8552) Bool)

(assert (=> b!3704751 (= res!1507136 (isEmpty!23476 lt!1296205))))

(declare-datatypes ((LexerInterface!5603 0))(
  ( (LexerInterfaceExt!5600 (__x!24706 Int)) (Lexer!5601) )
))
(declare-fun thiss!19663 () LexerInterface!5603)

(declare-fun tag!164 () String!44554)

(declare-datatypes ((List!39590 0))(
  ( (Nil!39466) (Cons!39466 (h!44886 Rule!11828) (t!302273 List!39590)) )
))
(declare-fun rules!2525 () List!39590)

(declare-fun getRuleFromTag!1540 (LexerInterface!5603 List!39590 String!44554) Option!8552)

(assert (=> b!3704751 (= lt!1296205 (getRuleFromTag!1540 thiss!19663 (t!302273 rules!2525) tag!164))))

(declare-fun rulesInvariant!5000 (LexerInterface!5603 List!39590) Bool)

(assert (=> b!3704751 (rulesInvariant!5000 thiss!19663 (t!302273 rules!2525))))

(declare-datatypes ((Unit!57398 0))(
  ( (Unit!57399) )
))
(declare-fun lt!1296206 () Unit!57398)

(declare-fun lemmaInvariantOnRulesThenOnTail!700 (LexerInterface!5603 Rule!11828 List!39590) Unit!57398)

(assert (=> b!3704751 (= lt!1296206 (lemmaInvariantOnRulesThenOnTail!700 thiss!19663 (h!44886 rules!2525) (t!302273 rules!2525)))))

(declare-fun e!2294788 () Bool)

(assert (=> b!3704752 (= e!2294788 (and tp!1126659 tp!1126662))))

(declare-fun b!3704753 () Bool)

(declare-fun e!2294786 () Bool)

(declare-fun e!2294784 () Bool)

(declare-fun tp!1126661 () Bool)

(assert (=> b!3704753 (= e!2294786 (and e!2294784 tp!1126661))))

(declare-fun b!3704754 () Bool)

(declare-fun res!1507135 () Bool)

(assert (=> b!3704754 (=> (not res!1507135) (not e!2294790))))

(assert (=> b!3704754 (= res!1507135 (rulesInvariant!5000 thiss!19663 rules!2525))))

(declare-fun b!3704755 () Bool)

(declare-fun res!1507134 () Bool)

(assert (=> b!3704755 (=> (not res!1507134) (not e!2294790))))

(get-info :version)

(assert (=> b!3704755 (= res!1507134 (and (or (not ((_ is Cons!39466) rules!2525)) (not (= (tag!6868 (h!44886 rules!2525)) tag!164))) ((_ is Cons!39466) rules!2525) (not (= (tag!6868 (h!44886 rules!2525)) tag!164))))))

(declare-fun b!3704756 () Bool)

(declare-fun isDefined!6739 (Option!8552) Bool)

(assert (=> b!3704756 (= e!2294785 (isDefined!6739 lt!1296205))))

(declare-fun res!1507133 () Bool)

(assert (=> start!349318 (=> (not res!1507133) (not e!2294790))))

(assert (=> start!349318 (= res!1507133 ((_ is Lexer!5601) thiss!19663))))

(assert (=> start!349318 e!2294790))

(assert (=> start!349318 true))

(assert (=> start!349318 e!2294786))

(declare-fun inv!52973 (String!44554) Bool)

(assert (=> start!349318 (inv!52973 tag!164)))

(declare-fun tp!1126660 () Bool)

(declare-fun b!3704750 () Bool)

(declare-fun inv!52975 (TokenValueInjection!11916) Bool)

(assert (=> b!3704750 (= e!2294784 (and tp!1126660 (inv!52973 (tag!6868 (h!44886 rules!2525))) (inv!52975 (transformation!6014 (h!44886 rules!2525))) e!2294788))))

(assert (= (and start!349318 res!1507133) b!3704754))

(assert (= (and b!3704754 res!1507135) b!3704755))

(assert (= (and b!3704755 res!1507134) b!3704751))

(assert (= (and b!3704751 (not res!1507136)) b!3704756))

(assert (= b!3704750 b!3704752))

(assert (= b!3704753 b!3704750))

(assert (= (and start!349318 ((_ is Cons!39466) rules!2525)) b!3704753))

(declare-fun m!4215343 () Bool)

(assert (=> b!3704756 m!4215343))

(declare-fun m!4215345 () Bool)

(assert (=> b!3704750 m!4215345))

(declare-fun m!4215347 () Bool)

(assert (=> b!3704750 m!4215347))

(declare-fun m!4215349 () Bool)

(assert (=> start!349318 m!4215349))

(declare-fun m!4215351 () Bool)

(assert (=> b!3704754 m!4215351))

(declare-fun m!4215353 () Bool)

(assert (=> b!3704751 m!4215353))

(declare-fun m!4215355 () Bool)

(assert (=> b!3704751 m!4215355))

(declare-fun m!4215357 () Bool)

(assert (=> b!3704751 m!4215357))

(declare-fun m!4215359 () Bool)

(assert (=> b!3704751 m!4215359))

(check-sat (not b!3704753) (not b!3704751) (not b_next!99683) (not b!3704756) (not b!3704750) b_and!277211 (not b_next!99681) b_and!277213 (not start!349318) (not b!3704754))
(check-sat b_and!277213 b_and!277211 (not b_next!99683) (not b_next!99681))
(get-model)

(declare-fun d!1086242 () Bool)

(assert (=> d!1086242 (= (inv!52973 (tag!6868 (h!44886 rules!2525))) (= (mod (str.len (value!191823 (tag!6868 (h!44886 rules!2525)))) 2) 0))))

(assert (=> b!3704750 d!1086242))

(declare-fun d!1086246 () Bool)

(declare-fun res!1507146 () Bool)

(declare-fun e!2294796 () Bool)

(assert (=> d!1086246 (=> (not res!1507146) (not e!2294796))))

(declare-fun semiInverseModEq!2573 (Int Int) Bool)

(assert (=> d!1086246 (= res!1507146 (semiInverseModEq!2573 (toChars!8217 (transformation!6014 (h!44886 rules!2525))) (toValue!8358 (transformation!6014 (h!44886 rules!2525)))))))

(assert (=> d!1086246 (= (inv!52975 (transformation!6014 (h!44886 rules!2525))) e!2294796)))

(declare-fun b!3704762 () Bool)

(declare-fun equivClasses!2472 (Int Int) Bool)

(assert (=> b!3704762 (= e!2294796 (equivClasses!2472 (toChars!8217 (transformation!6014 (h!44886 rules!2525))) (toValue!8358 (transformation!6014 (h!44886 rules!2525)))))))

(assert (= (and d!1086246 res!1507146) b!3704762))

(declare-fun m!4215365 () Bool)

(assert (=> d!1086246 m!4215365))

(declare-fun m!4215367 () Bool)

(assert (=> b!3704762 m!4215367))

(assert (=> b!3704750 d!1086246))

(declare-fun d!1086252 () Bool)

(assert (=> d!1086252 (= (isEmpty!23476 lt!1296205) (not ((_ is Some!8551) lt!1296205)))))

(assert (=> b!3704751 d!1086252))

(declare-fun b!3704793 () Bool)

(declare-fun e!2294819 () Option!8552)

(declare-fun e!2294818 () Option!8552)

(assert (=> b!3704793 (= e!2294819 e!2294818)))

(declare-fun c!639960 () Bool)

(assert (=> b!3704793 (= c!639960 (and ((_ is Cons!39466) (t!302273 rules!2525)) (not (= (tag!6868 (h!44886 (t!302273 rules!2525))) tag!164))))))

(declare-fun b!3704794 () Bool)

(declare-fun e!2294820 () Bool)

(declare-fun lt!1296222 () Option!8552)

(declare-fun get!13141 (Option!8552) Rule!11828)

(assert (=> b!3704794 (= e!2294820 (= (tag!6868 (get!13141 lt!1296222)) tag!164))))

(declare-fun d!1086254 () Bool)

(declare-fun e!2294817 () Bool)

(assert (=> d!1086254 e!2294817))

(declare-fun res!1507158 () Bool)

(assert (=> d!1086254 (=> res!1507158 e!2294817)))

(assert (=> d!1086254 (= res!1507158 (isEmpty!23476 lt!1296222))))

(assert (=> d!1086254 (= lt!1296222 e!2294819)))

(declare-fun c!639961 () Bool)

(assert (=> d!1086254 (= c!639961 (and ((_ is Cons!39466) (t!302273 rules!2525)) (= (tag!6868 (h!44886 (t!302273 rules!2525))) tag!164)))))

(assert (=> d!1086254 (rulesInvariant!5000 thiss!19663 (t!302273 rules!2525))))

(assert (=> d!1086254 (= (getRuleFromTag!1540 thiss!19663 (t!302273 rules!2525) tag!164) lt!1296222)))

(declare-fun b!3704795 () Bool)

(assert (=> b!3704795 (= e!2294818 None!8551)))

(declare-fun b!3704796 () Bool)

(assert (=> b!3704796 (= e!2294817 e!2294820)))

(declare-fun res!1507157 () Bool)

(assert (=> b!3704796 (=> (not res!1507157) (not e!2294820))))

(declare-fun contains!7878 (List!39590 Rule!11828) Bool)

(assert (=> b!3704796 (= res!1507157 (contains!7878 (t!302273 rules!2525) (get!13141 lt!1296222)))))

(declare-fun b!3704797 () Bool)

(declare-fun lt!1296224 () Unit!57398)

(declare-fun lt!1296223 () Unit!57398)

(assert (=> b!3704797 (= lt!1296224 lt!1296223)))

(assert (=> b!3704797 (rulesInvariant!5000 thiss!19663 (t!302273 (t!302273 rules!2525)))))

(assert (=> b!3704797 (= lt!1296223 (lemmaInvariantOnRulesThenOnTail!700 thiss!19663 (h!44886 (t!302273 rules!2525)) (t!302273 (t!302273 rules!2525))))))

(assert (=> b!3704797 (= e!2294818 (getRuleFromTag!1540 thiss!19663 (t!302273 (t!302273 rules!2525)) tag!164))))

(declare-fun b!3704798 () Bool)

(assert (=> b!3704798 (= e!2294819 (Some!8551 (h!44886 (t!302273 rules!2525))))))

(assert (= (and d!1086254 c!639961) b!3704798))

(assert (= (and d!1086254 (not c!639961)) b!3704793))

(assert (= (and b!3704793 c!639960) b!3704797))

(assert (= (and b!3704793 (not c!639960)) b!3704795))

(assert (= (and d!1086254 (not res!1507158)) b!3704796))

(assert (= (and b!3704796 res!1507157) b!3704794))

(declare-fun m!4215381 () Bool)

(assert (=> b!3704794 m!4215381))

(declare-fun m!4215383 () Bool)

(assert (=> d!1086254 m!4215383))

(assert (=> d!1086254 m!4215357))

(assert (=> b!3704796 m!4215381))

(assert (=> b!3704796 m!4215381))

(declare-fun m!4215385 () Bool)

(assert (=> b!3704796 m!4215385))

(declare-fun m!4215387 () Bool)

(assert (=> b!3704797 m!4215387))

(declare-fun m!4215389 () Bool)

(assert (=> b!3704797 m!4215389))

(declare-fun m!4215391 () Bool)

(assert (=> b!3704797 m!4215391))

(assert (=> b!3704751 d!1086254))

(declare-fun d!1086258 () Bool)

(declare-fun res!1507164 () Bool)

(declare-fun e!2294826 () Bool)

(assert (=> d!1086258 (=> (not res!1507164) (not e!2294826))))

(declare-fun rulesValid!2328 (LexerInterface!5603 List!39590) Bool)

(assert (=> d!1086258 (= res!1507164 (rulesValid!2328 thiss!19663 (t!302273 rules!2525)))))

(assert (=> d!1086258 (= (rulesInvariant!5000 thiss!19663 (t!302273 rules!2525)) e!2294826)))

(declare-fun b!3704804 () Bool)

(declare-datatypes ((List!39591 0))(
  ( (Nil!39467) (Cons!39467 (h!44887 String!44554) (t!302274 List!39591)) )
))
(declare-fun noDuplicateTag!2329 (LexerInterface!5603 List!39590 List!39591) Bool)

(assert (=> b!3704804 (= e!2294826 (noDuplicateTag!2329 thiss!19663 (t!302273 rules!2525) Nil!39467))))

(assert (= (and d!1086258 res!1507164) b!3704804))

(declare-fun m!4215397 () Bool)

(assert (=> d!1086258 m!4215397))

(declare-fun m!4215399 () Bool)

(assert (=> b!3704804 m!4215399))

(assert (=> b!3704751 d!1086258))

(declare-fun d!1086262 () Bool)

(assert (=> d!1086262 (rulesInvariant!5000 thiss!19663 (t!302273 rules!2525))))

(declare-fun lt!1296230 () Unit!57398)

(declare-fun choose!22151 (LexerInterface!5603 Rule!11828 List!39590) Unit!57398)

(assert (=> d!1086262 (= lt!1296230 (choose!22151 thiss!19663 (h!44886 rules!2525) (t!302273 rules!2525)))))

(assert (=> d!1086262 (rulesInvariant!5000 thiss!19663 (Cons!39466 (h!44886 rules!2525) (t!302273 rules!2525)))))

(assert (=> d!1086262 (= (lemmaInvariantOnRulesThenOnTail!700 thiss!19663 (h!44886 rules!2525) (t!302273 rules!2525)) lt!1296230)))

(declare-fun bs!574620 () Bool)

(assert (= bs!574620 d!1086262))

(assert (=> bs!574620 m!4215357))

(declare-fun m!4215409 () Bool)

(assert (=> bs!574620 m!4215409))

(declare-fun m!4215411 () Bool)

(assert (=> bs!574620 m!4215411))

(assert (=> b!3704751 d!1086262))

(declare-fun d!1086270 () Bool)

(assert (=> d!1086270 (= (isDefined!6739 lt!1296205) (not (isEmpty!23476 lt!1296205)))))

(declare-fun bs!574621 () Bool)

(assert (= bs!574621 d!1086270))

(assert (=> bs!574621 m!4215353))

(assert (=> b!3704756 d!1086270))

(declare-fun d!1086272 () Bool)

(declare-fun res!1507166 () Bool)

(declare-fun e!2294830 () Bool)

(assert (=> d!1086272 (=> (not res!1507166) (not e!2294830))))

(assert (=> d!1086272 (= res!1507166 (rulesValid!2328 thiss!19663 rules!2525))))

(assert (=> d!1086272 (= (rulesInvariant!5000 thiss!19663 rules!2525) e!2294830)))

(declare-fun b!3704816 () Bool)

(assert (=> b!3704816 (= e!2294830 (noDuplicateTag!2329 thiss!19663 rules!2525 Nil!39467))))

(assert (= (and d!1086272 res!1507166) b!3704816))

(declare-fun m!4215413 () Bool)

(assert (=> d!1086272 m!4215413))

(declare-fun m!4215415 () Bool)

(assert (=> b!3704816 m!4215415))

(assert (=> b!3704754 d!1086272))

(declare-fun d!1086274 () Bool)

(assert (=> d!1086274 (= (inv!52973 tag!164) (= (mod (str.len (value!191823 tag!164)) 2) 0))))

(assert (=> start!349318 d!1086274))

(declare-fun b!3704839 () Bool)

(declare-fun e!2294840 () Bool)

(declare-fun tp!1126691 () Bool)

(assert (=> b!3704839 (= e!2294840 tp!1126691)))

(assert (=> b!3704750 (= tp!1126660 e!2294840)))

(declare-fun b!3704837 () Bool)

(declare-fun tp_is_empty!18593 () Bool)

(assert (=> b!3704837 (= e!2294840 tp_is_empty!18593)))

(declare-fun b!3704838 () Bool)

(declare-fun tp!1126692 () Bool)

(declare-fun tp!1126694 () Bool)

(assert (=> b!3704838 (= e!2294840 (and tp!1126692 tp!1126694))))

(declare-fun b!3704840 () Bool)

(declare-fun tp!1126690 () Bool)

(declare-fun tp!1126693 () Bool)

(assert (=> b!3704840 (= e!2294840 (and tp!1126690 tp!1126693))))

(assert (= (and b!3704750 ((_ is ElementMatch!10773) (regex!6014 (h!44886 rules!2525)))) b!3704837))

(assert (= (and b!3704750 ((_ is Concat!17018) (regex!6014 (h!44886 rules!2525)))) b!3704838))

(assert (= (and b!3704750 ((_ is Star!10773) (regex!6014 (h!44886 rules!2525)))) b!3704839))

(assert (= (and b!3704750 ((_ is Union!10773) (regex!6014 (h!44886 rules!2525)))) b!3704840))

(declare-fun b!3704856 () Bool)

(declare-fun b_free!98985 () Bool)

(declare-fun b_next!99689 () Bool)

(assert (=> b!3704856 (= b_free!98985 (not b_next!99689))))

(declare-fun tp!1126716 () Bool)

(declare-fun b_and!277219 () Bool)

(assert (=> b!3704856 (= tp!1126716 b_and!277219)))

(declare-fun b_free!98987 () Bool)

(declare-fun b_next!99691 () Bool)

(assert (=> b!3704856 (= b_free!98987 (not b_next!99691))))

(declare-fun tp!1126713 () Bool)

(declare-fun b_and!277221 () Bool)

(assert (=> b!3704856 (= tp!1126713 b_and!277221)))

(declare-fun e!2294855 () Bool)

(assert (=> b!3704856 (= e!2294855 (and tp!1126716 tp!1126713))))

(declare-fun e!2294857 () Bool)

(declare-fun b!3704855 () Bool)

(declare-fun tp!1126714 () Bool)

(assert (=> b!3704855 (= e!2294857 (and tp!1126714 (inv!52973 (tag!6868 (h!44886 (t!302273 rules!2525)))) (inv!52975 (transformation!6014 (h!44886 (t!302273 rules!2525)))) e!2294855))))

(declare-fun b!3704854 () Bool)

(declare-fun e!2294856 () Bool)

(declare-fun tp!1126715 () Bool)

(assert (=> b!3704854 (= e!2294856 (and e!2294857 tp!1126715))))

(assert (=> b!3704753 (= tp!1126661 e!2294856)))

(assert (= b!3704855 b!3704856))

(assert (= b!3704854 b!3704855))

(assert (= (and b!3704753 ((_ is Cons!39466) (t!302273 rules!2525))) b!3704854))

(declare-fun m!4215421 () Bool)

(assert (=> b!3704855 m!4215421))

(declare-fun m!4215423 () Bool)

(assert (=> b!3704855 m!4215423))

(check-sat (not d!1086254) (not d!1086270) (not d!1086246) (not b!3704838) (not b_next!99691) (not d!1086258) (not b_next!99683) (not b!3704794) (not d!1086262) (not b_next!99681) (not b!3704840) (not d!1086272) (not b!3704797) b_and!277213 (not b!3704855) (not b_next!99689) (not b!3704839) (not b!3704854) b_and!277211 (not b!3704816) (not b!3704804) b_and!277219 b_and!277221 (not b!3704762) (not b!3704796) tp_is_empty!18593)
(check-sat (not b_next!99691) (not b_next!99683) (not b_next!99689) b_and!277211 (not b_next!99681) b_and!277213 b_and!277219 b_and!277221)
