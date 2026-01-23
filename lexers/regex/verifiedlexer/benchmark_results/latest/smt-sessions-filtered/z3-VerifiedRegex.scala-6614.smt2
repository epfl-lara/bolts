; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!349278 () Bool)

(assert start!349278)

(declare-fun b!3704564 () Bool)

(declare-fun b_free!98945 () Bool)

(declare-fun b_next!99649 () Bool)

(assert (=> b!3704564 (= b_free!98945 (not b_next!99649))))

(declare-fun tp!1126536 () Bool)

(declare-fun b_and!277179 () Bool)

(assert (=> b!3704564 (= tp!1126536 b_and!277179)))

(declare-fun b_free!98947 () Bool)

(declare-fun b_next!99651 () Bool)

(assert (=> b!3704564 (= b_free!98947 (not b_next!99651))))

(declare-fun tp!1126534 () Bool)

(declare-fun b_and!277181 () Bool)

(assert (=> b!3704564 (= tp!1126534 b_and!277181)))

(declare-fun b!3704561 () Bool)

(declare-fun e!2294621 () Bool)

(declare-fun e!2294618 () Bool)

(assert (=> b!3704561 (= e!2294621 e!2294618)))

(declare-fun res!1507046 () Bool)

(assert (=> b!3704561 (=> (not res!1507046) (not e!2294618))))

(declare-datatypes ((List!39568 0))(
  ( (Nil!39444) (Cons!39444 (h!44864 (_ BitVec 16)) (t!302251 List!39568)) )
))
(declare-datatypes ((TokenValue!6238 0))(
  ( (FloatLiteralValue!12476 (text!44111 List!39568)) (TokenValueExt!6237 (__x!24693 Int)) (Broken!31190 (value!191633 List!39568)) (Object!6361) (End!6238) (Def!6238) (Underscore!6238) (Match!6238) (Else!6238) (Error!6238) (Case!6238) (If!6238) (Extends!6238) (Abstract!6238) (Class!6238) (Val!6238) (DelimiterValue!12476 (del!6298 List!39568)) (KeywordValue!6244 (value!191634 List!39568)) (CommentValue!12476 (value!191635 List!39568)) (WhitespaceValue!12476 (value!191636 List!39568)) (IndentationValue!6238 (value!191637 List!39568)) (String!44523) (Int32!6238) (Broken!31191 (value!191638 List!39568)) (Boolean!6239) (Unit!57385) (OperatorValue!6241 (op!6298 List!39568)) (IdentifierValue!12476 (value!191639 List!39568)) (IdentifierValue!12477 (value!191640 List!39568)) (WhitespaceValue!12477 (value!191641 List!39568)) (True!12476) (False!12476) (Broken!31192 (value!191642 List!39568)) (Broken!31193 (value!191643 List!39568)) (True!12477) (RightBrace!6238) (RightBracket!6238) (Colon!6238) (Null!6238) (Comma!6238) (LeftBracket!6238) (False!12477) (LeftBrace!6238) (ImaginaryLiteralValue!6238 (text!44112 List!39568)) (StringLiteralValue!18714 (value!191644 List!39568)) (EOFValue!6238 (value!191645 List!39568)) (IdentValue!6238 (value!191646 List!39568)) (DelimiterValue!12477 (value!191647 List!39568)) (DedentValue!6238 (value!191648 List!39568)) (NewLineValue!6238 (value!191649 List!39568)) (IntegerValue!18714 (value!191650 (_ BitVec 32)) (text!44113 List!39568)) (IntegerValue!18715 (value!191651 Int) (text!44114 List!39568)) (Times!6238) (Or!6238) (Equal!6238) (Minus!6238) (Broken!31194 (value!191652 List!39568)) (And!6238) (Div!6238) (LessEqual!6238) (Mod!6238) (Concat!17005) (Not!6238) (Plus!6238) (SpaceValue!6238 (value!191653 List!39568)) (IntegerValue!18716 (value!191654 Int) (text!44115 List!39568)) (StringLiteralValue!18715 (text!44116 List!39568)) (FloatLiteralValue!12477 (text!44117 List!39568)) (BytesLiteralValue!6238 (value!191655 List!39568)) (CommentValue!12477 (value!191656 List!39568)) (StringLiteralValue!18716 (value!191657 List!39568)) (ErrorTokenValue!6238 (msg!6299 List!39568)) )
))
(declare-datatypes ((C!21720 0))(
  ( (C!21721 (val!12908 Int)) )
))
(declare-datatypes ((List!39569 0))(
  ( (Nil!39445) (Cons!39445 (h!44865 C!21720) (t!302252 List!39569)) )
))
(declare-datatypes ((IArray!24215 0))(
  ( (IArray!24216 (innerList!12165 List!39569)) )
))
(declare-datatypes ((Conc!12105 0))(
  ( (Node!12105 (left!30667 Conc!12105) (right!30997 Conc!12105) (csize!24440 Int) (cheight!12316 Int)) (Leaf!18720 (xs!15307 IArray!24215) (csize!24441 Int)) (Empty!12105) )
))
(declare-datatypes ((BalanceConc!23824 0))(
  ( (BalanceConc!23825 (c!639936 Conc!12105)) )
))
(declare-datatypes ((Regex!10767 0))(
  ( (ElementMatch!10767 (c!639937 C!21720)) (Concat!17006 (regOne!22046 Regex!10767) (regTwo!22046 Regex!10767)) (EmptyExpr!10767) (Star!10767 (reg!11096 Regex!10767)) (EmptyLang!10767) (Union!10767 (regOne!22047 Regex!10767) (regTwo!22047 Regex!10767)) )
))
(declare-datatypes ((String!44524 0))(
  ( (String!44525 (value!191658 String)) )
))
(declare-datatypes ((TokenValueInjection!11904 0))(
  ( (TokenValueInjection!11905 (toValue!8352 Int) (toChars!8211 Int)) )
))
(declare-datatypes ((Rule!11816 0))(
  ( (Rule!11817 (regex!6008 Regex!10767) (tag!6862 String!44524) (isSeparator!6008 Bool) (transformation!6008 TokenValueInjection!11904)) )
))
(declare-datatypes ((Option!8550 0))(
  ( (None!8549) (Some!8549 (v!38529 Rule!11816)) )
))
(declare-fun lt!1296176 () Option!8550)

(declare-fun isEmpty!23474 (Option!8550) Bool)

(assert (=> b!3704561 (= res!1507046 (not (isEmpty!23474 lt!1296176)))))

(declare-datatypes ((List!39570 0))(
  ( (Nil!39446) (Cons!39446 (h!44866 Rule!11816) (t!302253 List!39570)) )
))
(declare-fun rules!2525 () List!39570)

(assert (=> b!3704561 (= lt!1296176 (Some!8549 (h!44866 rules!2525)))))

(declare-fun b!3704562 () Bool)

(declare-fun isDefined!6737 (Option!8550) Bool)

(assert (=> b!3704562 (= e!2294618 (not (isDefined!6737 lt!1296176)))))

(declare-fun res!1507044 () Bool)

(assert (=> start!349278 (=> (not res!1507044) (not e!2294621))))

(declare-datatypes ((LexerInterface!5597 0))(
  ( (LexerInterfaceExt!5594 (__x!24694 Int)) (Lexer!5595) )
))
(declare-fun thiss!19663 () LexerInterface!5597)

(get-info :version)

(assert (=> start!349278 (= res!1507044 ((_ is Lexer!5595) thiss!19663))))

(assert (=> start!349278 e!2294621))

(assert (=> start!349278 true))

(declare-fun e!2294616 () Bool)

(assert (=> start!349278 e!2294616))

(declare-fun tag!164 () String!44524)

(declare-fun inv!52958 (String!44524) Bool)

(assert (=> start!349278 (inv!52958 tag!164)))

(declare-fun b!3704563 () Bool)

(declare-fun e!2294620 () Bool)

(declare-fun tp!1126533 () Bool)

(assert (=> b!3704563 (= e!2294616 (and e!2294620 tp!1126533))))

(declare-fun e!2294617 () Bool)

(assert (=> b!3704564 (= e!2294617 (and tp!1126536 tp!1126534))))

(declare-fun b!3704565 () Bool)

(declare-fun res!1507045 () Bool)

(assert (=> b!3704565 (=> (not res!1507045) (not e!2294618))))

(declare-fun contains!7876 (List!39570 Rule!11816) Bool)

(declare-fun get!13136 (Option!8550) Rule!11816)

(assert (=> b!3704565 (= res!1507045 (contains!7876 rules!2525 (get!13136 lt!1296176)))))

(declare-fun b!3704566 () Bool)

(declare-fun res!1507048 () Bool)

(assert (=> b!3704566 (=> (not res!1507048) (not e!2294621))))

(assert (=> b!3704566 (= res!1507048 (and ((_ is Cons!39446) rules!2525) (= (tag!6862 (h!44866 rules!2525)) tag!164)))))

(declare-fun tp!1126535 () Bool)

(declare-fun b!3704567 () Bool)

(declare-fun inv!52960 (TokenValueInjection!11904) Bool)

(assert (=> b!3704567 (= e!2294620 (and tp!1126535 (inv!52958 (tag!6862 (h!44866 rules!2525))) (inv!52960 (transformation!6008 (h!44866 rules!2525))) e!2294617))))

(declare-fun b!3704568 () Bool)

(declare-fun res!1507047 () Bool)

(assert (=> b!3704568 (=> (not res!1507047) (not e!2294621))))

(declare-fun rulesInvariant!4994 (LexerInterface!5597 List!39570) Bool)

(assert (=> b!3704568 (= res!1507047 (rulesInvariant!4994 thiss!19663 rules!2525))))

(assert (= (and start!349278 res!1507044) b!3704568))

(assert (= (and b!3704568 res!1507047) b!3704566))

(assert (= (and b!3704566 res!1507048) b!3704561))

(assert (= (and b!3704561 res!1507046) b!3704565))

(assert (= (and b!3704565 res!1507045) b!3704562))

(assert (= b!3704567 b!3704564))

(assert (= b!3704563 b!3704567))

(assert (= (and start!349278 ((_ is Cons!39446) rules!2525)) b!3704563))

(declare-fun m!4215233 () Bool)

(assert (=> start!349278 m!4215233))

(declare-fun m!4215235 () Bool)

(assert (=> b!3704567 m!4215235))

(declare-fun m!4215237 () Bool)

(assert (=> b!3704567 m!4215237))

(declare-fun m!4215239 () Bool)

(assert (=> b!3704568 m!4215239))

(declare-fun m!4215241 () Bool)

(assert (=> b!3704562 m!4215241))

(declare-fun m!4215243 () Bool)

(assert (=> b!3704561 m!4215243))

(declare-fun m!4215245 () Bool)

(assert (=> b!3704565 m!4215245))

(assert (=> b!3704565 m!4215245))

(declare-fun m!4215247 () Bool)

(assert (=> b!3704565 m!4215247))

(check-sat (not b!3704563) (not b!3704567) b_and!277181 (not b!3704568) (not b!3704562) (not b!3704565) (not b!3704561) (not b_next!99651) b_and!277179 (not start!349278) (not b_next!99649))
(check-sat b_and!277181 b_and!277179 (not b_next!99651) (not b_next!99649))
(get-model)

(declare-fun d!1086209 () Bool)

(assert (=> d!1086209 (= (isEmpty!23474 lt!1296176) (not ((_ is Some!8549) lt!1296176)))))

(assert (=> b!3704561 d!1086209))

(declare-fun d!1086211 () Bool)

(declare-fun lt!1296179 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5700 (List!39570) (InoxSet Rule!11816))

(assert (=> d!1086211 (= lt!1296179 (select (content!5700 rules!2525) (get!13136 lt!1296176)))))

(declare-fun e!2294632 () Bool)

(assert (=> d!1086211 (= lt!1296179 e!2294632)))

(declare-fun res!1507063 () Bool)

(assert (=> d!1086211 (=> (not res!1507063) (not e!2294632))))

(assert (=> d!1086211 (= res!1507063 ((_ is Cons!39446) rules!2525))))

(assert (=> d!1086211 (= (contains!7876 rules!2525 (get!13136 lt!1296176)) lt!1296179)))

(declare-fun b!3704578 () Bool)

(declare-fun e!2294633 () Bool)

(assert (=> b!3704578 (= e!2294632 e!2294633)))

(declare-fun res!1507062 () Bool)

(assert (=> b!3704578 (=> res!1507062 e!2294633)))

(assert (=> b!3704578 (= res!1507062 (= (h!44866 rules!2525) (get!13136 lt!1296176)))))

(declare-fun b!3704579 () Bool)

(assert (=> b!3704579 (= e!2294633 (contains!7876 (t!302253 rules!2525) (get!13136 lt!1296176)))))

(assert (= (and d!1086211 res!1507063) b!3704578))

(assert (= (and b!3704578 (not res!1507062)) b!3704579))

(declare-fun m!4215257 () Bool)

(assert (=> d!1086211 m!4215257))

(assert (=> d!1086211 m!4215245))

(declare-fun m!4215259 () Bool)

(assert (=> d!1086211 m!4215259))

(assert (=> b!3704579 m!4215245))

(declare-fun m!4215261 () Bool)

(assert (=> b!3704579 m!4215261))

(assert (=> b!3704565 d!1086211))

(declare-fun d!1086217 () Bool)

(assert (=> d!1086217 (= (get!13136 lt!1296176) (v!38529 lt!1296176))))

(assert (=> b!3704565 d!1086217))

(declare-fun d!1086223 () Bool)

(assert (=> d!1086223 (= (inv!52958 tag!164) (= (mod (str.len (value!191658 tag!164)) 2) 0))))

(assert (=> start!349278 d!1086223))

(declare-fun d!1086227 () Bool)

(declare-fun res!1507073 () Bool)

(declare-fun e!2294643 () Bool)

(assert (=> d!1086227 (=> (not res!1507073) (not e!2294643))))

(declare-fun rulesValid!2327 (LexerInterface!5597 List!39570) Bool)

(assert (=> d!1086227 (= res!1507073 (rulesValid!2327 thiss!19663 rules!2525))))

(assert (=> d!1086227 (= (rulesInvariant!4994 thiss!19663 rules!2525) e!2294643)))

(declare-fun b!3704589 () Bool)

(declare-datatypes ((List!39572 0))(
  ( (Nil!39448) (Cons!39448 (h!44868 String!44524) (t!302255 List!39572)) )
))
(declare-fun noDuplicateTag!2328 (LexerInterface!5597 List!39570 List!39572) Bool)

(assert (=> b!3704589 (= e!2294643 (noDuplicateTag!2328 thiss!19663 rules!2525 Nil!39448))))

(assert (= (and d!1086227 res!1507073) b!3704589))

(declare-fun m!4215269 () Bool)

(assert (=> d!1086227 m!4215269))

(declare-fun m!4215271 () Bool)

(assert (=> b!3704589 m!4215271))

(assert (=> b!3704568 d!1086227))

(declare-fun d!1086231 () Bool)

(assert (=> d!1086231 (= (inv!52958 (tag!6862 (h!44866 rules!2525))) (= (mod (str.len (value!191658 (tag!6862 (h!44866 rules!2525)))) 2) 0))))

(assert (=> b!3704567 d!1086231))

(declare-fun d!1086233 () Bool)

(declare-fun res!1507076 () Bool)

(declare-fun e!2294661 () Bool)

(assert (=> d!1086233 (=> (not res!1507076) (not e!2294661))))

(declare-fun semiInverseModEq!2571 (Int Int) Bool)

(assert (=> d!1086233 (= res!1507076 (semiInverseModEq!2571 (toChars!8211 (transformation!6008 (h!44866 rules!2525))) (toValue!8352 (transformation!6008 (h!44866 rules!2525)))))))

(assert (=> d!1086233 (= (inv!52960 (transformation!6008 (h!44866 rules!2525))) e!2294661)))

(declare-fun b!3704617 () Bool)

(declare-fun equivClasses!2470 (Int Int) Bool)

(assert (=> b!3704617 (= e!2294661 (equivClasses!2470 (toChars!8211 (transformation!6008 (h!44866 rules!2525))) (toValue!8352 (transformation!6008 (h!44866 rules!2525)))))))

(assert (= (and d!1086233 res!1507076) b!3704617))

(declare-fun m!4215277 () Bool)

(assert (=> d!1086233 m!4215277))

(declare-fun m!4215279 () Bool)

(assert (=> b!3704617 m!4215279))

(assert (=> b!3704567 d!1086233))

(declare-fun d!1086235 () Bool)

(assert (=> d!1086235 (= (isDefined!6737 lt!1296176) (not (isEmpty!23474 lt!1296176)))))

(declare-fun bs!574611 () Bool)

(assert (= bs!574611 d!1086235))

(assert (=> bs!574611 m!4215243))

(assert (=> b!3704562 d!1086235))

(declare-fun b!3704628 () Bool)

(declare-fun b_free!98953 () Bool)

(declare-fun b_next!99657 () Bool)

(assert (=> b!3704628 (= b_free!98953 (not b_next!99657))))

(declare-fun tp!1126572 () Bool)

(declare-fun b_and!277187 () Bool)

(assert (=> b!3704628 (= tp!1126572 b_and!277187)))

(declare-fun b_free!98955 () Bool)

(declare-fun b_next!99659 () Bool)

(assert (=> b!3704628 (= b_free!98955 (not b_next!99659))))

(declare-fun tp!1126575 () Bool)

(declare-fun b_and!277189 () Bool)

(assert (=> b!3704628 (= tp!1126575 b_and!277189)))

(declare-fun e!2294670 () Bool)

(assert (=> b!3704628 (= e!2294670 (and tp!1126572 tp!1126575))))

(declare-fun b!3704627 () Bool)

(declare-fun e!2294672 () Bool)

(declare-fun tp!1126574 () Bool)

(assert (=> b!3704627 (= e!2294672 (and tp!1126574 (inv!52958 (tag!6862 (h!44866 (t!302253 rules!2525)))) (inv!52960 (transformation!6008 (h!44866 (t!302253 rules!2525)))) e!2294670))))

(declare-fun b!3704626 () Bool)

(declare-fun e!2294673 () Bool)

(declare-fun tp!1126573 () Bool)

(assert (=> b!3704626 (= e!2294673 (and e!2294672 tp!1126573))))

(assert (=> b!3704563 (= tp!1126533 e!2294673)))

(assert (= b!3704627 b!3704628))

(assert (= b!3704626 b!3704627))

(assert (= (and b!3704563 ((_ is Cons!39446) (t!302253 rules!2525))) b!3704626))

(declare-fun m!4215281 () Bool)

(assert (=> b!3704627 m!4215281))

(declare-fun m!4215283 () Bool)

(assert (=> b!3704627 m!4215283))

(declare-fun b!3704640 () Bool)

(declare-fun e!2294676 () Bool)

(declare-fun tp!1126588 () Bool)

(declare-fun tp!1126586 () Bool)

(assert (=> b!3704640 (= e!2294676 (and tp!1126588 tp!1126586))))

(declare-fun b!3704639 () Bool)

(declare-fun tp_is_empty!18589 () Bool)

(assert (=> b!3704639 (= e!2294676 tp_is_empty!18589)))

(declare-fun b!3704641 () Bool)

(declare-fun tp!1126589 () Bool)

(assert (=> b!3704641 (= e!2294676 tp!1126589)))

(assert (=> b!3704567 (= tp!1126535 e!2294676)))

(declare-fun b!3704642 () Bool)

(declare-fun tp!1126587 () Bool)

(declare-fun tp!1126590 () Bool)

(assert (=> b!3704642 (= e!2294676 (and tp!1126587 tp!1126590))))

(assert (= (and b!3704567 ((_ is ElementMatch!10767) (regex!6008 (h!44866 rules!2525)))) b!3704639))

(assert (= (and b!3704567 ((_ is Concat!17006) (regex!6008 (h!44866 rules!2525)))) b!3704640))

(assert (= (and b!3704567 ((_ is Star!10767) (regex!6008 (h!44866 rules!2525)))) b!3704641))

(assert (= (and b!3704567 ((_ is Union!10767) (regex!6008 (h!44866 rules!2525)))) b!3704642))

(check-sat (not b!3704641) (not d!1086233) (not b_next!99659) (not b!3704579) (not d!1086227) (not b!3704589) b_and!277181 (not b!3704627) (not b_next!99651) b_and!277179 (not b!3704642) (not b_next!99649) (not d!1086235) b_and!277189 tp_is_empty!18589 (not b_next!99657) (not b!3704640) (not d!1086211) b_and!277187 (not b!3704617) (not b!3704626))
(check-sat (not b_next!99659) b_and!277189 (not b_next!99657) b_and!277181 b_and!277187 (not b_next!99651) b_and!277179 (not b_next!99649))
