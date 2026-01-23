; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!138844 () Bool)

(assert start!138844)

(declare-fun b!1479181 () Bool)

(declare-fun b_free!38043 () Bool)

(declare-fun b_next!38747 () Bool)

(assert (=> b!1479181 (= b_free!38043 (not b_next!38747))))

(declare-fun tp!419188 () Bool)

(declare-fun b_and!102449 () Bool)

(assert (=> b!1479181 (= tp!419188 b_and!102449)))

(declare-fun b_free!38045 () Bool)

(declare-fun b_next!38749 () Bool)

(assert (=> b!1479181 (= b_free!38045 (not b_next!38749))))

(declare-fun tp!419177 () Bool)

(declare-fun b_and!102451 () Bool)

(assert (=> b!1479181 (= tp!419177 b_and!102451)))

(declare-fun b!1479194 () Bool)

(declare-fun b_free!38047 () Bool)

(declare-fun b_next!38751 () Bool)

(assert (=> b!1479194 (= b_free!38047 (not b_next!38751))))

(declare-fun tp!419186 () Bool)

(declare-fun b_and!102453 () Bool)

(assert (=> b!1479194 (= tp!419186 b_and!102453)))

(declare-fun b_free!38049 () Bool)

(declare-fun b_next!38753 () Bool)

(assert (=> b!1479194 (= b_free!38049 (not b_next!38753))))

(declare-fun tp!419178 () Bool)

(declare-fun b_and!102455 () Bool)

(assert (=> b!1479194 (= tp!419178 b_and!102455)))

(declare-fun b!1479191 () Bool)

(declare-fun b_free!38051 () Bool)

(declare-fun b_next!38755 () Bool)

(assert (=> b!1479191 (= b_free!38051 (not b_next!38755))))

(declare-fun tp!419185 () Bool)

(declare-fun b_and!102457 () Bool)

(assert (=> b!1479191 (= tp!419185 b_and!102457)))

(declare-fun b_free!38053 () Bool)

(declare-fun b_next!38757 () Bool)

(assert (=> b!1479191 (= b_free!38053 (not b_next!38757))))

(declare-fun tp!419187 () Bool)

(declare-fun b_and!102459 () Bool)

(assert (=> b!1479191 (= tp!419187 b_and!102459)))

(declare-fun b!1479180 () Bool)

(declare-fun res!668375 () Bool)

(declare-fun e!945491 () Bool)

(assert (=> b!1479180 (=> (not res!668375) (not e!945491))))

(declare-datatypes ((List!15694 0))(
  ( (Nil!15628) (Cons!15628 (h!21029 (_ BitVec 16)) (t!137063 List!15694)) )
))
(declare-datatypes ((C!8378 0))(
  ( (C!8379 (val!4759 Int)) )
))
(declare-datatypes ((List!15695 0))(
  ( (Nil!15629) (Cons!15629 (h!21030 C!8378) (t!137064 List!15695)) )
))
(declare-datatypes ((Regex!4100 0))(
  ( (ElementMatch!4100 (c!242802 C!8378)) (Concat!6976 (regOne!8712 Regex!4100) (regTwo!8712 Regex!4100)) (EmptyExpr!4100) (Star!4100 (reg!4429 Regex!4100)) (EmptyLang!4100) (Union!4100 (regOne!8713 Regex!4100) (regTwo!8713 Regex!4100)) )
))
(declare-datatypes ((TokenValue!2876 0))(
  ( (FloatLiteralValue!5752 (text!20577 List!15694)) (TokenValueExt!2875 (__x!9542 Int)) (Broken!14380 (value!89024 List!15694)) (Object!2941) (End!2876) (Def!2876) (Underscore!2876) (Match!2876) (Else!2876) (Error!2876) (Case!2876) (If!2876) (Extends!2876) (Abstract!2876) (Class!2876) (Val!2876) (DelimiterValue!5752 (del!2936 List!15694)) (KeywordValue!2882 (value!89025 List!15694)) (CommentValue!5752 (value!89026 List!15694)) (WhitespaceValue!5752 (value!89027 List!15694)) (IndentationValue!2876 (value!89028 List!15694)) (String!18637) (Int32!2876) (Broken!14381 (value!89029 List!15694)) (Boolean!2877) (Unit!25426) (OperatorValue!2879 (op!2936 List!15694)) (IdentifierValue!5752 (value!89030 List!15694)) (IdentifierValue!5753 (value!89031 List!15694)) (WhitespaceValue!5753 (value!89032 List!15694)) (True!5752) (False!5752) (Broken!14382 (value!89033 List!15694)) (Broken!14383 (value!89034 List!15694)) (True!5753) (RightBrace!2876) (RightBracket!2876) (Colon!2876) (Null!2876) (Comma!2876) (LeftBracket!2876) (False!5753) (LeftBrace!2876) (ImaginaryLiteralValue!2876 (text!20578 List!15694)) (StringLiteralValue!8628 (value!89035 List!15694)) (EOFValue!2876 (value!89036 List!15694)) (IdentValue!2876 (value!89037 List!15694)) (DelimiterValue!5753 (value!89038 List!15694)) (DedentValue!2876 (value!89039 List!15694)) (NewLineValue!2876 (value!89040 List!15694)) (IntegerValue!8628 (value!89041 (_ BitVec 32)) (text!20579 List!15694)) (IntegerValue!8629 (value!89042 Int) (text!20580 List!15694)) (Times!2876) (Or!2876) (Equal!2876) (Minus!2876) (Broken!14384 (value!89043 List!15694)) (And!2876) (Div!2876) (LessEqual!2876) (Mod!2876) (Concat!6977) (Not!2876) (Plus!2876) (SpaceValue!2876 (value!89044 List!15694)) (IntegerValue!8630 (value!89045 Int) (text!20581 List!15694)) (StringLiteralValue!8629 (text!20582 List!15694)) (FloatLiteralValue!5753 (text!20583 List!15694)) (BytesLiteralValue!2876 (value!89046 List!15694)) (CommentValue!5753 (value!89047 List!15694)) (StringLiteralValue!8630 (value!89048 List!15694)) (ErrorTokenValue!2876 (msg!2937 List!15694)) )
))
(declare-datatypes ((IArray!10653 0))(
  ( (IArray!10654 (innerList!5384 List!15695)) )
))
(declare-datatypes ((Conc!5324 0))(
  ( (Node!5324 (left!13184 Conc!5324) (right!13514 Conc!5324) (csize!10878 Int) (cheight!5535 Int)) (Leaf!7919 (xs!8079 IArray!10653) (csize!10879 Int)) (Empty!5324) )
))
(declare-datatypes ((BalanceConc!10588 0))(
  ( (BalanceConc!10589 (c!242803 Conc!5324)) )
))
(declare-datatypes ((TokenValueInjection!5412 0))(
  ( (TokenValueInjection!5413 (toValue!4121 Int) (toChars!3980 Int)) )
))
(declare-datatypes ((String!18638 0))(
  ( (String!18639 (value!89049 String)) )
))
(declare-datatypes ((Rule!5372 0))(
  ( (Rule!5373 (regex!2786 Regex!4100) (tag!3050 String!18638) (isSeparator!2786 Bool) (transformation!2786 TokenValueInjection!5412)) )
))
(declare-datatypes ((List!15696 0))(
  ( (Nil!15630) (Cons!15630 (h!21031 Rule!5372) (t!137065 List!15696)) )
))
(declare-fun rules!4290 () List!15696)

(declare-datatypes ((LexerInterface!2442 0))(
  ( (LexerInterfaceExt!2439 (__x!9543 Int)) (Lexer!2440) )
))
(declare-fun thiss!27374 () LexerInterface!2442)

(declare-datatypes ((Token!5234 0))(
  ( (Token!5235 (value!89050 TokenValue!2876) (rule!4563 Rule!5372) (size!12658 Int) (originalCharacters!3648 List!15695)) )
))
(declare-datatypes ((List!15697 0))(
  ( (Nil!15631) (Cons!15631 (h!21032 Token!5234) (t!137066 List!15697)) )
))
(declare-fun l1!3136 () List!15697)

(declare-fun tokensListTwoByTwoPredicateSeparableList!302 (LexerInterface!2442 List!15697 List!15696) Bool)

(assert (=> b!1479180 (= res!668375 (tokensListTwoByTwoPredicateSeparableList!302 thiss!27374 l1!3136 rules!4290))))

(declare-fun e!945493 () Bool)

(assert (=> b!1479181 (= e!945493 (and tp!419188 tp!419177))))

(declare-fun b!1479182 () Bool)

(declare-fun res!668383 () Bool)

(declare-fun e!945492 () Bool)

(assert (=> b!1479182 (=> res!668383 e!945492)))

(declare-fun rulesProduceEachTokenIndividuallyList!809 (LexerInterface!2442 List!15696 List!15697) Bool)

(assert (=> b!1479182 (= res!668383 (not (rulesProduceEachTokenIndividuallyList!809 thiss!27374 rules!4290 (t!137066 l1!3136))))))

(declare-fun b!1479183 () Bool)

(declare-fun res!668382 () Bool)

(assert (=> b!1479183 (=> (not res!668382) (not e!945491))))

(declare-fun isEmpty!9772 (List!15696) Bool)

(assert (=> b!1479183 (= res!668382 (not (isEmpty!9772 rules!4290)))))

(declare-fun b!1479184 () Bool)

(declare-fun res!668377 () Bool)

(assert (=> b!1479184 (=> (not res!668377) (not e!945491))))

(declare-fun rulesInvariant!2231 (LexerInterface!2442 List!15696) Bool)

(assert (=> b!1479184 (= res!668377 (rulesInvariant!2231 thiss!27374 rules!4290))))

(declare-fun b!1479185 () Bool)

(declare-fun res!668379 () Bool)

(assert (=> b!1479185 (=> (not res!668379) (not e!945491))))

(declare-fun l2!3105 () List!15697)

(assert (=> b!1479185 (= res!668379 (rulesProduceEachTokenIndividuallyList!809 thiss!27374 rules!4290 l2!3105))))

(declare-fun b!1479186 () Bool)

(declare-fun res!668387 () Bool)

(assert (=> b!1479186 (=> (not res!668387) (not e!945491))))

(assert (=> b!1479186 (= res!668387 (tokensListTwoByTwoPredicateSeparableList!302 thiss!27374 l2!3105 rules!4290))))

(declare-fun b!1479188 () Bool)

(declare-fun e!945487 () Bool)

(declare-fun e!945494 () Bool)

(declare-fun tp!419179 () Bool)

(declare-fun inv!20847 (Token!5234) Bool)

(assert (=> b!1479188 (= e!945487 (and (inv!20847 (h!21032 l1!3136)) e!945494 tp!419179))))

(declare-fun b!1479189 () Bool)

(declare-fun e!945480 () Bool)

(declare-fun e!945477 () Bool)

(declare-fun tp!419184 () Bool)

(assert (=> b!1479189 (= e!945480 (and e!945477 tp!419184))))

(declare-fun e!945481 () Bool)

(declare-fun b!1479190 () Bool)

(declare-fun tp!419181 () Bool)

(declare-fun inv!20844 (String!18638) Bool)

(declare-fun inv!20848 (TokenValueInjection!5412) Bool)

(assert (=> b!1479190 (= e!945481 (and tp!419181 (inv!20844 (tag!3050 (rule!4563 (h!21032 l1!3136)))) (inv!20848 (transformation!2786 (rule!4563 (h!21032 l1!3136)))) e!945493))))

(declare-fun e!945486 () Bool)

(assert (=> b!1479191 (= e!945486 (and tp!419185 tp!419187))))

(declare-fun b!1479192 () Bool)

(declare-fun res!668380 () Bool)

(assert (=> b!1479192 (=> (not res!668380) (not e!945491))))

(declare-fun isEmpty!9773 (List!15697) Bool)

(assert (=> b!1479192 (= res!668380 (not (isEmpty!9773 l1!3136)))))

(declare-fun b!1479193 () Bool)

(declare-fun res!668385 () Bool)

(assert (=> b!1479193 (=> (not res!668385) (not e!945491))))

(assert (=> b!1479193 (= res!668385 (rulesProduceEachTokenIndividuallyList!809 thiss!27374 rules!4290 l1!3136))))

(declare-fun e!945478 () Bool)

(assert (=> b!1479194 (= e!945478 (and tp!419186 tp!419178))))

(declare-fun b!1479195 () Bool)

(assert (=> b!1479195 (= e!945492 true)))

(declare-fun lt!513901 () Bool)

(assert (=> b!1479195 (= lt!513901 (tokensListTwoByTwoPredicateSeparableList!302 thiss!27374 (t!137066 l1!3136) rules!4290))))

(declare-fun b!1479196 () Bool)

(assert (=> b!1479196 (= e!945491 (not e!945492))))

(declare-fun res!668378 () Bool)

(assert (=> b!1479196 (=> res!668378 e!945492)))

(declare-fun lt!513902 () Token!5234)

(declare-fun lt!513903 () Token!5234)

(declare-fun separableTokensPredicate!581 (LexerInterface!2442 Token!5234 Token!5234 List!15696) Bool)

(assert (=> b!1479196 (= res!668378 (not (separableTokensPredicate!581 thiss!27374 lt!513902 lt!513903 rules!4290)))))

(declare-fun rulesProduceIndividualToken!1299 (LexerInterface!2442 List!15696 Token!5234) Bool)

(assert (=> b!1479196 (rulesProduceIndividualToken!1299 thiss!27374 rules!4290 lt!513903)))

(declare-datatypes ((Unit!25427 0))(
  ( (Unit!25428) )
))
(declare-fun lt!513900 () Unit!25427)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!480 (LexerInterface!2442 List!15696 List!15697 Token!5234) Unit!25427)

(assert (=> b!1479196 (= lt!513900 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!480 thiss!27374 rules!4290 l2!3105 lt!513903))))

(declare-fun head!3074 (List!15697) Token!5234)

(assert (=> b!1479196 (= lt!513903 (head!3074 l2!3105))))

(assert (=> b!1479196 (rulesProduceIndividualToken!1299 thiss!27374 rules!4290 lt!513902)))

(declare-fun lt!513904 () Unit!25427)

(assert (=> b!1479196 (= lt!513904 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!480 thiss!27374 rules!4290 l1!3136 lt!513902))))

(declare-fun last!344 (List!15697) Token!5234)

(assert (=> b!1479196 (= lt!513902 (last!344 l1!3136))))

(declare-fun b!1479197 () Bool)

(declare-fun res!668386 () Bool)

(assert (=> b!1479197 (=> res!668386 e!945492)))

(assert (=> b!1479197 (= res!668386 (isEmpty!9773 (t!137066 l1!3136)))))

(declare-fun b!1479187 () Bool)

(declare-fun res!668381 () Bool)

(assert (=> b!1479187 (=> (not res!668381) (not e!945491))))

(assert (=> b!1479187 (= res!668381 (not (isEmpty!9773 l2!3105)))))

(declare-fun res!668376 () Bool)

(assert (=> start!138844 (=> (not res!668376) (not e!945491))))

(assert (=> start!138844 (= res!668376 (is-Lexer!2440 thiss!27374))))

(assert (=> start!138844 e!945491))

(assert (=> start!138844 true))

(assert (=> start!138844 e!945480))

(assert (=> start!138844 e!945487))

(declare-fun e!945479 () Bool)

(assert (=> start!138844 e!945479))

(declare-fun b!1479198 () Bool)

(declare-fun res!668384 () Bool)

(assert (=> b!1479198 (=> res!668384 e!945492)))

(assert (=> b!1479198 (= res!668384 (not (is-Cons!15631 l1!3136)))))

(declare-fun e!945483 () Bool)

(declare-fun b!1479199 () Bool)

(declare-fun tp!419180 () Bool)

(assert (=> b!1479199 (= e!945483 (and tp!419180 (inv!20844 (tag!3050 (rule!4563 (h!21032 l2!3105)))) (inv!20848 (transformation!2786 (rule!4563 (h!21032 l2!3105)))) e!945486))))

(declare-fun b!1479200 () Bool)

(declare-fun tp!419190 () Bool)

(assert (=> b!1479200 (= e!945477 (and tp!419190 (inv!20844 (tag!3050 (h!21031 rules!4290))) (inv!20848 (transformation!2786 (h!21031 rules!4290))) e!945478))))

(declare-fun tp!419189 () Bool)

(declare-fun e!945489 () Bool)

(declare-fun b!1479201 () Bool)

(declare-fun inv!21 (TokenValue!2876) Bool)

(assert (=> b!1479201 (= e!945489 (and (inv!21 (value!89050 (h!21032 l2!3105))) e!945483 tp!419189))))

(declare-fun b!1479202 () Bool)

(declare-fun tp!419183 () Bool)

(assert (=> b!1479202 (= e!945479 (and (inv!20847 (h!21032 l2!3105)) e!945489 tp!419183))))

(declare-fun b!1479203 () Bool)

(declare-fun tp!419182 () Bool)

(assert (=> b!1479203 (= e!945494 (and (inv!21 (value!89050 (h!21032 l1!3136))) e!945481 tp!419182))))

(assert (= (and start!138844 res!668376) b!1479183))

(assert (= (and b!1479183 res!668382) b!1479184))

(assert (= (and b!1479184 res!668377) b!1479193))

(assert (= (and b!1479193 res!668385) b!1479185))

(assert (= (and b!1479185 res!668379) b!1479180))

(assert (= (and b!1479180 res!668375) b!1479186))

(assert (= (and b!1479186 res!668387) b!1479192))

(assert (= (and b!1479192 res!668380) b!1479187))

(assert (= (and b!1479187 res!668381) b!1479196))

(assert (= (and b!1479196 (not res!668378)) b!1479198))

(assert (= (and b!1479198 (not res!668384)) b!1479197))

(assert (= (and b!1479197 (not res!668386)) b!1479182))

(assert (= (and b!1479182 (not res!668383)) b!1479195))

(assert (= b!1479200 b!1479194))

(assert (= b!1479189 b!1479200))

(assert (= (and start!138844 (is-Cons!15630 rules!4290)) b!1479189))

(assert (= b!1479190 b!1479181))

(assert (= b!1479203 b!1479190))

(assert (= b!1479188 b!1479203))

(assert (= (and start!138844 (is-Cons!15631 l1!3136)) b!1479188))

(assert (= b!1479199 b!1479191))

(assert (= b!1479201 b!1479199))

(assert (= b!1479202 b!1479201))

(assert (= (and start!138844 (is-Cons!15631 l2!3105)) b!1479202))

(declare-fun m!1724697 () Bool)

(assert (=> b!1479187 m!1724697))

(declare-fun m!1724699 () Bool)

(assert (=> b!1479183 m!1724699))

(declare-fun m!1724701 () Bool)

(assert (=> b!1479182 m!1724701))

(declare-fun m!1724703 () Bool)

(assert (=> b!1479195 m!1724703))

(declare-fun m!1724705 () Bool)

(assert (=> b!1479186 m!1724705))

(declare-fun m!1724707 () Bool)

(assert (=> b!1479203 m!1724707))

(declare-fun m!1724709 () Bool)

(assert (=> b!1479192 m!1724709))

(declare-fun m!1724711 () Bool)

(assert (=> b!1479202 m!1724711))

(declare-fun m!1724713 () Bool)

(assert (=> b!1479199 m!1724713))

(declare-fun m!1724715 () Bool)

(assert (=> b!1479199 m!1724715))

(declare-fun m!1724717 () Bool)

(assert (=> b!1479200 m!1724717))

(declare-fun m!1724719 () Bool)

(assert (=> b!1479200 m!1724719))

(declare-fun m!1724721 () Bool)

(assert (=> b!1479184 m!1724721))

(declare-fun m!1724723 () Bool)

(assert (=> b!1479196 m!1724723))

(declare-fun m!1724725 () Bool)

(assert (=> b!1479196 m!1724725))

(declare-fun m!1724727 () Bool)

(assert (=> b!1479196 m!1724727))

(declare-fun m!1724729 () Bool)

(assert (=> b!1479196 m!1724729))

(declare-fun m!1724731 () Bool)

(assert (=> b!1479196 m!1724731))

(declare-fun m!1724733 () Bool)

(assert (=> b!1479196 m!1724733))

(declare-fun m!1724735 () Bool)

(assert (=> b!1479196 m!1724735))

(declare-fun m!1724737 () Bool)

(assert (=> b!1479193 m!1724737))

(declare-fun m!1724739 () Bool)

(assert (=> b!1479185 m!1724739))

(declare-fun m!1724741 () Bool)

(assert (=> b!1479201 m!1724741))

(declare-fun m!1724743 () Bool)

(assert (=> b!1479188 m!1724743))

(declare-fun m!1724745 () Bool)

(assert (=> b!1479180 m!1724745))

(declare-fun m!1724747 () Bool)

(assert (=> b!1479190 m!1724747))

(declare-fun m!1724749 () Bool)

(assert (=> b!1479190 m!1724749))

(declare-fun m!1724751 () Bool)

(assert (=> b!1479197 m!1724751))

(push 1)

(assert (not b!1479192))

(assert (not b!1479190))

(assert b_and!102455)

(assert (not b!1479195))

(assert (not b!1479201))

(assert (not b!1479197))

(assert b_and!102459)

(assert (not b!1479203))

(assert (not b!1479200))

(assert (not b_next!38755))

(assert (not b!1479202))

(assert (not b!1479184))

(assert (not b_next!38753))

(assert (not b!1479186))

(assert (not b_next!38757))

(assert b_and!102457)

(assert (not b!1479185))

(assert b_and!102453)

(assert (not b!1479196))

(assert (not b!1479180))

(assert (not b_next!38747))

(assert (not b!1479188))

(assert (not b!1479189))

(assert (not b!1479183))

(assert (not b!1479199))

(assert (not b!1479193))

(assert b_and!102449)

(assert (not b_next!38749))

(assert (not b_next!38751))

(assert (not b!1479182))

(assert (not b!1479187))

(assert b_and!102451)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!38753))

(assert b_and!102455)

(assert b_and!102453)

(assert (not b_next!38747))

(assert b_and!102449)

(assert b_and!102459)

(assert b_and!102451)

(assert (not b_next!38755))

(assert (not b_next!38757))

(assert b_and!102457)

(assert (not b_next!38749))

(assert (not b_next!38751))

(check-sat)

(pop 1)

