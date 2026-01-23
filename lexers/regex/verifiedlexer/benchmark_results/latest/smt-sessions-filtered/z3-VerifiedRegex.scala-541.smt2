; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14850 () Bool)

(assert start!14850)

(declare-fun b!141480 () Bool)

(declare-fun b_free!4659 () Bool)

(declare-fun b_next!4659 () Bool)

(assert (=> b!141480 (= b_free!4659 (not b_next!4659))))

(declare-fun tp!74547 () Bool)

(declare-fun b_and!7181 () Bool)

(assert (=> b!141480 (= tp!74547 b_and!7181)))

(declare-fun b_free!4661 () Bool)

(declare-fun b_next!4661 () Bool)

(assert (=> b!141480 (= b_free!4661 (not b_next!4661))))

(declare-fun tp!74540 () Bool)

(declare-fun b_and!7183 () Bool)

(assert (=> b!141480 (= tp!74540 b_and!7183)))

(declare-fun b!141469 () Bool)

(declare-fun b_free!4663 () Bool)

(declare-fun b_next!4663 () Bool)

(assert (=> b!141469 (= b_free!4663 (not b_next!4663))))

(declare-fun tp!74545 () Bool)

(declare-fun b_and!7185 () Bool)

(assert (=> b!141469 (= tp!74545 b_and!7185)))

(declare-fun b_free!4665 () Bool)

(declare-fun b_next!4665 () Bool)

(assert (=> b!141469 (= b_free!4665 (not b_next!4665))))

(declare-fun tp!74539 () Bool)

(declare-fun b_and!7187 () Bool)

(assert (=> b!141469 (= tp!74539 b_and!7187)))

(declare-fun b_free!4667 () Bool)

(declare-fun b_next!4667 () Bool)

(assert (=> start!14850 (= b_free!4667 (not b_next!4667))))

(declare-fun tp!74542 () Bool)

(declare-fun b_and!7189 () Bool)

(assert (=> start!14850 (= tp!74542 b_and!7189)))

(declare-fun b!141466 () Bool)

(declare-fun b_free!4669 () Bool)

(declare-fun b_next!4669 () Bool)

(assert (=> b!141466 (= b_free!4669 (not b_next!4669))))

(declare-fun tp!74544 () Bool)

(declare-fun b_and!7191 () Bool)

(assert (=> b!141466 (= tp!74544 b_and!7191)))

(declare-fun b_free!4671 () Bool)

(declare-fun b_next!4671 () Bool)

(assert (=> b!141466 (= b_free!4671 (not b_next!4671))))

(declare-fun tp!74552 () Bool)

(declare-fun b_and!7193 () Bool)

(assert (=> b!141466 (= tp!74552 b_and!7193)))

(declare-fun b!141465 () Bool)

(declare-fun e!83415 () Bool)

(declare-datatypes ((List!2417 0))(
  ( (Nil!2407) (Cons!2407 (h!7804 (_ BitVec 16)) (t!23591 List!2417)) )
))
(declare-datatypes ((TokenValue!427 0))(
  ( (FloatLiteralValue!854 (text!3434 List!2417)) (TokenValueExt!426 (__x!2341 Int)) (Broken!2135 (value!15832 List!2417)) (Object!436) (End!427) (Def!427) (Underscore!427) (Match!427) (Else!427) (Error!427) (Case!427) (If!427) (Extends!427) (Abstract!427) (Class!427) (Val!427) (DelimiterValue!854 (del!487 List!2417)) (KeywordValue!433 (value!15833 List!2417)) (CommentValue!854 (value!15834 List!2417)) (WhitespaceValue!854 (value!15835 List!2417)) (IndentationValue!427 (value!15836 List!2417)) (String!3214) (Int32!427) (Broken!2136 (value!15837 List!2417)) (Boolean!428) (Unit!1815) (OperatorValue!430 (op!487 List!2417)) (IdentifierValue!854 (value!15838 List!2417)) (IdentifierValue!855 (value!15839 List!2417)) (WhitespaceValue!855 (value!15840 List!2417)) (True!854) (False!854) (Broken!2137 (value!15841 List!2417)) (Broken!2138 (value!15842 List!2417)) (True!855) (RightBrace!427) (RightBracket!427) (Colon!427) (Null!427) (Comma!427) (LeftBracket!427) (False!855) (LeftBrace!427) (ImaginaryLiteralValue!427 (text!3435 List!2417)) (StringLiteralValue!1281 (value!15843 List!2417)) (EOFValue!427 (value!15844 List!2417)) (IdentValue!427 (value!15845 List!2417)) (DelimiterValue!855 (value!15846 List!2417)) (DedentValue!427 (value!15847 List!2417)) (NewLineValue!427 (value!15848 List!2417)) (IntegerValue!1281 (value!15849 (_ BitVec 32)) (text!3436 List!2417)) (IntegerValue!1282 (value!15850 Int) (text!3437 List!2417)) (Times!427) (Or!427) (Equal!427) (Minus!427) (Broken!2139 (value!15851 List!2417)) (And!427) (Div!427) (LessEqual!427) (Mod!427) (Concat!1056) (Not!427) (Plus!427) (SpaceValue!427 (value!15852 List!2417)) (IntegerValue!1283 (value!15853 Int) (text!3438 List!2417)) (StringLiteralValue!1282 (text!3439 List!2417)) (FloatLiteralValue!855 (text!3440 List!2417)) (BytesLiteralValue!427 (value!15854 List!2417)) (CommentValue!855 (value!15855 List!2417)) (StringLiteralValue!1283 (value!15856 List!2417)) (ErrorTokenValue!427 (msg!488 List!2417)) )
))
(declare-datatypes ((C!2180 0))(
  ( (C!2181 (val!976 Int)) )
))
(declare-datatypes ((List!2418 0))(
  ( (Nil!2408) (Cons!2408 (h!7805 C!2180) (t!23592 List!2418)) )
))
(declare-datatypes ((IArray!1271 0))(
  ( (IArray!1272 (innerList!693 List!2418)) )
))
(declare-datatypes ((Conc!635 0))(
  ( (Node!635 (left!1828 Conc!635) (right!2158 Conc!635) (csize!1500 Int) (cheight!846 Int)) (Leaf!1177 (xs!3230 IArray!1271) (csize!1501 Int)) (Empty!635) )
))
(declare-datatypes ((BalanceConc!1278 0))(
  ( (BalanceConc!1279 (c!29352 Conc!635)) )
))
(declare-datatypes ((TokenValueInjection!626 0))(
  ( (TokenValueInjection!627 (toValue!1020 Int) (toChars!879 Int)) )
))
(declare-datatypes ((Regex!629 0))(
  ( (ElementMatch!629 (c!29353 C!2180)) (Concat!1057 (regOne!1770 Regex!629) (regTwo!1770 Regex!629)) (EmptyExpr!629) (Star!629 (reg!958 Regex!629)) (EmptyLang!629) (Union!629 (regOne!1771 Regex!629) (regTwo!1771 Regex!629)) )
))
(declare-datatypes ((String!3215 0))(
  ( (String!3216 (value!15857 String)) )
))
(declare-datatypes ((Rule!610 0))(
  ( (Rule!611 (regex!405 Regex!629) (tag!583 String!3215) (isSeparator!405 Bool) (transformation!405 TokenValueInjection!626)) )
))
(declare-datatypes ((Token!554 0))(
  ( (Token!555 (value!15858 TokenValue!427) (rule!912 Rule!610) (size!2111 Int) (originalCharacters!448 List!2418)) )
))
(declare-datatypes ((List!2419 0))(
  ( (Nil!2409) (Cons!2409 (h!7806 Token!554) (t!23593 List!2419)) )
))
(declare-fun l1!3130 () List!2419)

(declare-fun isEmpty!922 (List!2419) Bool)

(assert (=> b!141465 (= e!83415 (not (isEmpty!922 (t!23593 l1!3130))))))

(declare-fun e!83416 () Bool)

(assert (=> b!141466 (= e!83416 (and tp!74544 tp!74552))))

(declare-fun res!65601 () Bool)

(declare-fun e!83420 () Bool)

(assert (=> start!14850 (=> (not res!65601) (not e!83420))))

(declare-datatypes ((LexerInterface!291 0))(
  ( (LexerInterfaceExt!288 (__x!2342 Int)) (Lexer!289) )
))
(declare-fun thiss!27322 () LexerInterface!291)

(get-info :version)

(assert (=> start!14850 (= res!65601 ((_ is Lexer!289) thiss!27322))))

(assert (=> start!14850 e!83420))

(assert (=> start!14850 true))

(declare-fun e!83430 () Bool)

(assert (=> start!14850 e!83430))

(assert (=> start!14850 tp!74542))

(declare-fun e!83417 () Bool)

(assert (=> start!14850 e!83417))

(declare-fun e!83431 () Bool)

(assert (=> start!14850 e!83431))

(declare-fun e!83414 () Bool)

(declare-fun tp!74551 () Bool)

(declare-fun b!141467 () Bool)

(declare-fun inv!3174 (Token!554) Bool)

(assert (=> b!141467 (= e!83417 (and (inv!3174 (h!7806 l1!3130)) e!83414 tp!74551))))

(declare-fun e!83425 () Bool)

(declare-fun tp!74548 () Bool)

(declare-fun l2!3099 () List!2419)

(declare-fun b!141468 () Bool)

(declare-fun e!83418 () Bool)

(declare-fun inv!21 (TokenValue!427) Bool)

(assert (=> b!141468 (= e!83418 (and (inv!21 (value!15858 (h!7806 l2!3099))) e!83425 tp!74548))))

(declare-fun e!83426 () Bool)

(assert (=> b!141469 (= e!83426 (and tp!74545 tp!74539))))

(declare-fun tp!74553 () Bool)

(declare-fun b!141470 () Bool)

(declare-fun inv!3171 (String!3215) Bool)

(declare-fun inv!3175 (TokenValueInjection!626) Bool)

(assert (=> b!141470 (= e!83425 (and tp!74553 (inv!3171 (tag!583 (rule!912 (h!7806 l2!3099)))) (inv!3175 (transformation!405 (rule!912 (h!7806 l2!3099)))) e!83416))))

(declare-fun b!141471 () Bool)

(declare-fun res!65603 () Bool)

(assert (=> b!141471 (=> (not res!65603) (not e!83420))))

(assert (=> b!141471 (= res!65603 (not (isEmpty!922 l1!3130)))))

(declare-fun b!141472 () Bool)

(assert (=> b!141472 (= e!83420 e!83415)))

(declare-fun res!65604 () Bool)

(assert (=> b!141472 (=> res!65604 e!83415)))

(assert (=> b!141472 (= res!65604 (not ((_ is Cons!2409) l1!3130)))))

(declare-datatypes ((List!2420 0))(
  ( (Nil!2410) (Cons!2410 (h!7807 Rule!610) (t!23594 List!2420)) )
))
(declare-fun rules!4268 () List!2420)

(declare-fun e!83423 () Bool)

(declare-fun b!141473 () Bool)

(declare-fun tp!74546 () Bool)

(assert (=> b!141473 (= e!83423 (and tp!74546 (inv!3171 (tag!583 (h!7807 rules!4268))) (inv!3175 (transformation!405 (h!7807 rules!4268))) e!83426))))

(declare-fun b!141474 () Bool)

(declare-fun res!65607 () Bool)

(assert (=> b!141474 (=> (not res!65607) (not e!83420))))

(declare-fun p!3028 () Int)

(declare-fun dynLambda!809 (Int Token!554 Token!554 List!2420) Bool)

(declare-fun last!39 (List!2419) Token!554)

(declare-fun head!564 (List!2419) Token!554)

(assert (=> b!141474 (= res!65607 (dynLambda!809 p!3028 (last!39 l1!3130) (head!564 l2!3099) rules!4268))))

(declare-fun b!141475 () Bool)

(declare-fun res!65602 () Bool)

(assert (=> b!141475 (=> (not res!65602) (not e!83420))))

(declare-fun e!83419 () Bool)

(assert (=> b!141475 (= res!65602 e!83419)))

(declare-fun res!65605 () Bool)

(assert (=> b!141475 (=> res!65605 e!83419)))

(assert (=> b!141475 (= res!65605 (not ((_ is Cons!2409) l1!3130)))))

(declare-fun b!141476 () Bool)

(declare-fun tp!74549 () Bool)

(declare-fun e!83427 () Bool)

(assert (=> b!141476 (= e!83414 (and (inv!21 (value!15858 (h!7806 l1!3130))) e!83427 tp!74549))))

(declare-fun b!141477 () Bool)

(declare-fun tp!74541 () Bool)

(declare-fun e!83424 () Bool)

(assert (=> b!141477 (= e!83427 (and tp!74541 (inv!3171 (tag!583 (rule!912 (h!7806 l1!3130)))) (inv!3175 (transformation!405 (rule!912 (h!7806 l1!3130)))) e!83424))))

(declare-fun b!141478 () Bool)

(assert (=> b!141478 (= e!83419 (isEmpty!922 (t!23593 l1!3130)))))

(declare-fun b!141479 () Bool)

(declare-fun res!65609 () Bool)

(assert (=> b!141479 (=> (not res!65609) (not e!83420))))

(declare-fun tokensListTwoByTwoPredicateList!30 (LexerInterface!291 List!2419 List!2420 Int) Bool)

(assert (=> b!141479 (= res!65609 (tokensListTwoByTwoPredicateList!30 thiss!27322 l2!3099 rules!4268 p!3028))))

(assert (=> b!141480 (= e!83424 (and tp!74547 tp!74540))))

(declare-fun b!141481 () Bool)

(declare-fun tp!74550 () Bool)

(assert (=> b!141481 (= e!83430 (and e!83423 tp!74550))))

(declare-fun b!141482 () Bool)

(declare-fun res!65606 () Bool)

(assert (=> b!141482 (=> (not res!65606) (not e!83420))))

(assert (=> b!141482 (= res!65606 (not (isEmpty!922 l2!3099)))))

(declare-fun b!141483 () Bool)

(declare-fun tp!74543 () Bool)

(assert (=> b!141483 (= e!83431 (and (inv!3174 (h!7806 l2!3099)) e!83418 tp!74543))))

(declare-fun b!141484 () Bool)

(declare-fun res!65608 () Bool)

(assert (=> b!141484 (=> (not res!65608) (not e!83420))))

(assert (=> b!141484 (= res!65608 (tokensListTwoByTwoPredicateList!30 thiss!27322 l1!3130 rules!4268 p!3028))))

(assert (= (and start!14850 res!65601) b!141484))

(assert (= (and b!141484 res!65608) b!141479))

(assert (= (and b!141479 res!65609) b!141471))

(assert (= (and b!141471 res!65603) b!141482))

(assert (= (and b!141482 res!65606) b!141474))

(assert (= (and b!141474 res!65607) b!141475))

(assert (= (and b!141475 (not res!65605)) b!141478))

(assert (= (and b!141475 res!65602) b!141472))

(assert (= (and b!141472 (not res!65604)) b!141465))

(assert (= b!141473 b!141469))

(assert (= b!141481 b!141473))

(assert (= (and start!14850 ((_ is Cons!2410) rules!4268)) b!141481))

(assert (= b!141477 b!141480))

(assert (= b!141476 b!141477))

(assert (= b!141467 b!141476))

(assert (= (and start!14850 ((_ is Cons!2409) l1!3130)) b!141467))

(assert (= b!141470 b!141466))

(assert (= b!141468 b!141470))

(assert (= b!141483 b!141468))

(assert (= (and start!14850 ((_ is Cons!2409) l2!3099)) b!141483))

(declare-fun b_lambda!2161 () Bool)

(assert (=> (not b_lambda!2161) (not b!141474)))

(declare-fun t!23590 () Bool)

(declare-fun tb!4255 () Bool)

(assert (=> (and start!14850 (= p!3028 p!3028) t!23590) tb!4255))

(declare-fun result!6490 () Bool)

(assert (=> tb!4255 (= result!6490 true)))

(assert (=> b!141474 t!23590))

(declare-fun b_and!7195 () Bool)

(assert (= b_and!7189 (and (=> t!23590 result!6490) b_and!7195)))

(declare-fun m!124519 () Bool)

(assert (=> b!141476 m!124519))

(declare-fun m!124521 () Bool)

(assert (=> b!141478 m!124521))

(declare-fun m!124523 () Bool)

(assert (=> b!141483 m!124523))

(declare-fun m!124525 () Bool)

(assert (=> b!141484 m!124525))

(declare-fun m!124527 () Bool)

(assert (=> b!141474 m!124527))

(declare-fun m!124529 () Bool)

(assert (=> b!141474 m!124529))

(assert (=> b!141474 m!124527))

(assert (=> b!141474 m!124529))

(declare-fun m!124531 () Bool)

(assert (=> b!141474 m!124531))

(declare-fun m!124533 () Bool)

(assert (=> b!141470 m!124533))

(declare-fun m!124535 () Bool)

(assert (=> b!141470 m!124535))

(declare-fun m!124537 () Bool)

(assert (=> b!141471 m!124537))

(declare-fun m!124539 () Bool)

(assert (=> b!141479 m!124539))

(declare-fun m!124541 () Bool)

(assert (=> b!141468 m!124541))

(declare-fun m!124543 () Bool)

(assert (=> b!141467 m!124543))

(declare-fun m!124545 () Bool)

(assert (=> b!141482 m!124545))

(declare-fun m!124547 () Bool)

(assert (=> b!141477 m!124547))

(declare-fun m!124549 () Bool)

(assert (=> b!141477 m!124549))

(declare-fun m!124551 () Bool)

(assert (=> b!141473 m!124551))

(declare-fun m!124553 () Bool)

(assert (=> b!141473 m!124553))

(assert (=> b!141465 m!124521))

(check-sat (not b_next!4665) (not b!141467) (not b!141484) (not b!141470) (not b!141481) b_and!7181 (not b!141477) (not b_next!4671) b_and!7183 b_and!7185 (not b_next!4659) (not b_next!4667) (not b!141478) (not b!141474) (not b!141473) (not b_next!4663) b_and!7195 (not b!141465) b_and!7187 (not b_next!4669) b_and!7193 (not b!141483) (not b!141476) (not b!141482) (not b_next!4661) (not b!141471) (not b_lambda!2161) (not b!141479) b_and!7191 (not b!141468))
(check-sat (not b_next!4665) b_and!7187 b_and!7181 (not b_next!4661) (not b_next!4671) b_and!7183 b_and!7185 (not b_next!4659) (not b_next!4667) b_and!7191 (not b_next!4663) b_and!7195 (not b_next!4669) b_and!7193)
(get-model)

(declare-fun b_lambda!2163 () Bool)

(assert (= b_lambda!2161 (or (and start!14850 b_free!4667) b_lambda!2163)))

(check-sat (not b_next!4665) (not b!141467) (not b!141470) (not b!141481) b_and!7181 (not b!141477) (not b_next!4671) b_and!7183 b_and!7185 (not b_next!4659) (not b!141479) (not b_next!4667) (not b!141478) (not b!141474) (not b!141473) (not b_lambda!2163) (not b!141484) (not b_next!4663) b_and!7195 (not b!141465) b_and!7187 (not b_next!4669) b_and!7193 (not b!141483) (not b!141476) (not b!141482) (not b_next!4661) (not b!141471) b_and!7191 (not b!141468))
(check-sat (not b_next!4665) b_and!7187 b_and!7181 (not b_next!4661) (not b_next!4671) b_and!7183 b_and!7185 (not b_next!4659) (not b_next!4667) b_and!7191 (not b_next!4663) b_and!7195 (not b_next!4669) b_and!7193)
(get-model)

(declare-fun d!33662 () Bool)

(declare-fun res!65614 () Bool)

(declare-fun e!83434 () Bool)

(assert (=> d!33662 (=> (not res!65614) (not e!83434))))

(declare-fun isEmpty!923 (List!2418) Bool)

(assert (=> d!33662 (= res!65614 (not (isEmpty!923 (originalCharacters!448 (h!7806 l2!3099)))))))

(assert (=> d!33662 (= (inv!3174 (h!7806 l2!3099)) e!83434)))

(declare-fun b!141489 () Bool)

(declare-fun res!65615 () Bool)

(assert (=> b!141489 (=> (not res!65615) (not e!83434))))

(declare-fun list!842 (BalanceConc!1278) List!2418)

(declare-fun dynLambda!810 (Int TokenValue!427) BalanceConc!1278)

(assert (=> b!141489 (= res!65615 (= (originalCharacters!448 (h!7806 l2!3099)) (list!842 (dynLambda!810 (toChars!879 (transformation!405 (rule!912 (h!7806 l2!3099)))) (value!15858 (h!7806 l2!3099))))))))

(declare-fun b!141490 () Bool)

(declare-fun size!2112 (List!2418) Int)

(assert (=> b!141490 (= e!83434 (= (size!2111 (h!7806 l2!3099)) (size!2112 (originalCharacters!448 (h!7806 l2!3099)))))))

(assert (= (and d!33662 res!65614) b!141489))

(assert (= (and b!141489 res!65615) b!141490))

(declare-fun b_lambda!2167 () Bool)

(assert (=> (not b_lambda!2167) (not b!141489)))

(declare-fun t!23596 () Bool)

(declare-fun tb!4257 () Bool)

(assert (=> (and b!141480 (= (toChars!879 (transformation!405 (rule!912 (h!7806 l1!3130)))) (toChars!879 (transformation!405 (rule!912 (h!7806 l2!3099))))) t!23596) tb!4257))

(declare-fun b!141495 () Bool)

(declare-fun e!83437 () Bool)

(declare-fun tp!74556 () Bool)

(declare-fun inv!3176 (Conc!635) Bool)

(assert (=> b!141495 (= e!83437 (and (inv!3176 (c!29352 (dynLambda!810 (toChars!879 (transformation!405 (rule!912 (h!7806 l2!3099)))) (value!15858 (h!7806 l2!3099))))) tp!74556))))

(declare-fun result!6492 () Bool)

(declare-fun inv!3177 (BalanceConc!1278) Bool)

(assert (=> tb!4257 (= result!6492 (and (inv!3177 (dynLambda!810 (toChars!879 (transformation!405 (rule!912 (h!7806 l2!3099)))) (value!15858 (h!7806 l2!3099)))) e!83437))))

(assert (= tb!4257 b!141495))

(declare-fun m!124555 () Bool)

(assert (=> b!141495 m!124555))

(declare-fun m!124557 () Bool)

(assert (=> tb!4257 m!124557))

(assert (=> b!141489 t!23596))

(declare-fun b_and!7197 () Bool)

(assert (= b_and!7183 (and (=> t!23596 result!6492) b_and!7197)))

(declare-fun tb!4259 () Bool)

(declare-fun t!23598 () Bool)

(assert (=> (and b!141469 (= (toChars!879 (transformation!405 (h!7807 rules!4268))) (toChars!879 (transformation!405 (rule!912 (h!7806 l2!3099))))) t!23598) tb!4259))

(declare-fun result!6496 () Bool)

(assert (= result!6496 result!6492))

(assert (=> b!141489 t!23598))

(declare-fun b_and!7199 () Bool)

(assert (= b_and!7187 (and (=> t!23598 result!6496) b_and!7199)))

(declare-fun t!23600 () Bool)

(declare-fun tb!4261 () Bool)

(assert (=> (and b!141466 (= (toChars!879 (transformation!405 (rule!912 (h!7806 l2!3099)))) (toChars!879 (transformation!405 (rule!912 (h!7806 l2!3099))))) t!23600) tb!4261))

(declare-fun result!6498 () Bool)

(assert (= result!6498 result!6492))

(assert (=> b!141489 t!23600))

(declare-fun b_and!7201 () Bool)

(assert (= b_and!7193 (and (=> t!23600 result!6498) b_and!7201)))

(declare-fun m!124559 () Bool)

(assert (=> d!33662 m!124559))

(declare-fun m!124561 () Bool)

(assert (=> b!141489 m!124561))

(assert (=> b!141489 m!124561))

(declare-fun m!124563 () Bool)

(assert (=> b!141489 m!124563))

(declare-fun m!124565 () Bool)

(assert (=> b!141490 m!124565))

(assert (=> b!141483 d!33662))

(declare-fun d!33664 () Bool)

(assert (=> d!33664 (= (isEmpty!922 l1!3130) ((_ is Nil!2409) l1!3130))))

(assert (=> b!141471 d!33664))

(declare-fun d!33666 () Bool)

(assert (=> d!33666 (= (isEmpty!922 l2!3099) ((_ is Nil!2409) l2!3099))))

(assert (=> b!141482 d!33666))

(declare-fun d!33668 () Bool)

(assert (=> d!33668 (= (inv!3171 (tag!583 (rule!912 (h!7806 l2!3099)))) (= (mod (str.len (value!15857 (tag!583 (rule!912 (h!7806 l2!3099))))) 2) 0))))

(assert (=> b!141470 d!33668))

(declare-fun d!33670 () Bool)

(declare-fun res!65618 () Bool)

(declare-fun e!83440 () Bool)

(assert (=> d!33670 (=> (not res!65618) (not e!83440))))

(declare-fun semiInverseModEq!138 (Int Int) Bool)

(assert (=> d!33670 (= res!65618 (semiInverseModEq!138 (toChars!879 (transformation!405 (rule!912 (h!7806 l2!3099)))) (toValue!1020 (transformation!405 (rule!912 (h!7806 l2!3099))))))))

(assert (=> d!33670 (= (inv!3175 (transformation!405 (rule!912 (h!7806 l2!3099)))) e!83440)))

(declare-fun b!141498 () Bool)

(declare-fun equivClasses!121 (Int Int) Bool)

(assert (=> b!141498 (= e!83440 (equivClasses!121 (toChars!879 (transformation!405 (rule!912 (h!7806 l2!3099)))) (toValue!1020 (transformation!405 (rule!912 (h!7806 l2!3099))))))))

(assert (= (and d!33670 res!65618) b!141498))

(declare-fun m!124567 () Bool)

(assert (=> d!33670 m!124567))

(declare-fun m!124569 () Bool)

(assert (=> b!141498 m!124569))

(assert (=> b!141470 d!33670))

(declare-fun d!33672 () Bool)

(declare-fun res!65623 () Bool)

(declare-fun e!83447 () Bool)

(assert (=> d!33672 (=> res!65623 e!83447)))

(assert (=> d!33672 (= res!65623 (or (not ((_ is Cons!2409) l2!3099)) (not ((_ is Cons!2409) (t!23593 l2!3099)))))))

(assert (=> d!33672 (= (tokensListTwoByTwoPredicateList!30 thiss!27322 l2!3099 rules!4268 p!3028) e!83447)))

(declare-fun b!141507 () Bool)

(declare-fun e!83448 () Bool)

(assert (=> b!141507 (= e!83447 e!83448)))

(declare-fun res!65624 () Bool)

(assert (=> b!141507 (=> (not res!65624) (not e!83448))))

(assert (=> b!141507 (= res!65624 (dynLambda!809 p!3028 (h!7806 l2!3099) (h!7806 (t!23593 l2!3099)) rules!4268))))

(declare-fun b!141508 () Bool)

(assert (=> b!141508 (= e!83448 (tokensListTwoByTwoPredicateList!30 thiss!27322 (Cons!2409 (h!7806 (t!23593 l2!3099)) (t!23593 (t!23593 l2!3099))) rules!4268 p!3028))))

(assert (= (and d!33672 (not res!65623)) b!141507))

(assert (= (and b!141507 res!65624) b!141508))

(declare-fun b_lambda!2169 () Bool)

(assert (=> (not b_lambda!2169) (not b!141507)))

(declare-fun t!23602 () Bool)

(declare-fun tb!4263 () Bool)

(assert (=> (and start!14850 (= p!3028 p!3028) t!23602) tb!4263))

(declare-fun result!6500 () Bool)

(assert (=> tb!4263 (= result!6500 true)))

(assert (=> b!141507 t!23602))

(declare-fun b_and!7203 () Bool)

(assert (= b_and!7195 (and (=> t!23602 result!6500) b_and!7203)))

(declare-fun m!124571 () Bool)

(assert (=> b!141507 m!124571))

(declare-fun m!124573 () Bool)

(assert (=> b!141508 m!124573))

(assert (=> b!141479 d!33672))

(declare-fun b!141531 () Bool)

(declare-fun e!83463 () Bool)

(declare-fun inv!17 (TokenValue!427) Bool)

(assert (=> b!141531 (= e!83463 (inv!17 (value!15858 (h!7806 l2!3099))))))

(declare-fun b!141532 () Bool)

(declare-fun res!65630 () Bool)

(declare-fun e!83462 () Bool)

(assert (=> b!141532 (=> res!65630 e!83462)))

(assert (=> b!141532 (= res!65630 (not ((_ is IntegerValue!1283) (value!15858 (h!7806 l2!3099)))))))

(assert (=> b!141532 (= e!83463 e!83462)))

(declare-fun b!141533 () Bool)

(declare-fun e!83464 () Bool)

(assert (=> b!141533 (= e!83464 e!83463)))

(declare-fun c!29364 () Bool)

(assert (=> b!141533 (= c!29364 ((_ is IntegerValue!1282) (value!15858 (h!7806 l2!3099))))))

(declare-fun b!141534 () Bool)

(declare-fun inv!16 (TokenValue!427) Bool)

(assert (=> b!141534 (= e!83464 (inv!16 (value!15858 (h!7806 l2!3099))))))

(declare-fun d!33676 () Bool)

(declare-fun c!29365 () Bool)

(assert (=> d!33676 (= c!29365 ((_ is IntegerValue!1281) (value!15858 (h!7806 l2!3099))))))

(assert (=> d!33676 (= (inv!21 (value!15858 (h!7806 l2!3099))) e!83464)))

(declare-fun b!141530 () Bool)

(declare-fun inv!15 (TokenValue!427) Bool)

(assert (=> b!141530 (= e!83462 (inv!15 (value!15858 (h!7806 l2!3099))))))

(assert (= (and d!33676 c!29365) b!141534))

(assert (= (and d!33676 (not c!29365)) b!141533))

(assert (= (and b!141533 c!29364) b!141531))

(assert (= (and b!141533 (not c!29364)) b!141532))

(assert (= (and b!141532 (not res!65630)) b!141530))

(declare-fun m!124581 () Bool)

(assert (=> b!141531 m!124581))

(declare-fun m!124583 () Bool)

(assert (=> b!141534 m!124583))

(declare-fun m!124585 () Bool)

(assert (=> b!141530 m!124585))

(assert (=> b!141468 d!33676))

(declare-fun d!33682 () Bool)

(declare-fun res!65631 () Bool)

(declare-fun e!83465 () Bool)

(assert (=> d!33682 (=> (not res!65631) (not e!83465))))

(assert (=> d!33682 (= res!65631 (not (isEmpty!923 (originalCharacters!448 (h!7806 l1!3130)))))))

(assert (=> d!33682 (= (inv!3174 (h!7806 l1!3130)) e!83465)))

(declare-fun b!141535 () Bool)

(declare-fun res!65632 () Bool)

(assert (=> b!141535 (=> (not res!65632) (not e!83465))))

(assert (=> b!141535 (= res!65632 (= (originalCharacters!448 (h!7806 l1!3130)) (list!842 (dynLambda!810 (toChars!879 (transformation!405 (rule!912 (h!7806 l1!3130)))) (value!15858 (h!7806 l1!3130))))))))

(declare-fun b!141536 () Bool)

(assert (=> b!141536 (= e!83465 (= (size!2111 (h!7806 l1!3130)) (size!2112 (originalCharacters!448 (h!7806 l1!3130)))))))

(assert (= (and d!33682 res!65631) b!141535))

(assert (= (and b!141535 res!65632) b!141536))

(declare-fun b_lambda!2171 () Bool)

(assert (=> (not b_lambda!2171) (not b!141535)))

(declare-fun t!23604 () Bool)

(declare-fun tb!4265 () Bool)

(assert (=> (and b!141480 (= (toChars!879 (transformation!405 (rule!912 (h!7806 l1!3130)))) (toChars!879 (transformation!405 (rule!912 (h!7806 l1!3130))))) t!23604) tb!4265))

(declare-fun b!141537 () Bool)

(declare-fun e!83466 () Bool)

(declare-fun tp!74557 () Bool)

(assert (=> b!141537 (= e!83466 (and (inv!3176 (c!29352 (dynLambda!810 (toChars!879 (transformation!405 (rule!912 (h!7806 l1!3130)))) (value!15858 (h!7806 l1!3130))))) tp!74557))))

(declare-fun result!6502 () Bool)

(assert (=> tb!4265 (= result!6502 (and (inv!3177 (dynLambda!810 (toChars!879 (transformation!405 (rule!912 (h!7806 l1!3130)))) (value!15858 (h!7806 l1!3130)))) e!83466))))

(assert (= tb!4265 b!141537))

(declare-fun m!124587 () Bool)

(assert (=> b!141537 m!124587))

(declare-fun m!124589 () Bool)

(assert (=> tb!4265 m!124589))

(assert (=> b!141535 t!23604))

(declare-fun b_and!7205 () Bool)

(assert (= b_and!7197 (and (=> t!23604 result!6502) b_and!7205)))

(declare-fun t!23606 () Bool)

(declare-fun tb!4267 () Bool)

(assert (=> (and b!141469 (= (toChars!879 (transformation!405 (h!7807 rules!4268))) (toChars!879 (transformation!405 (rule!912 (h!7806 l1!3130))))) t!23606) tb!4267))

(declare-fun result!6504 () Bool)

(assert (= result!6504 result!6502))

(assert (=> b!141535 t!23606))

(declare-fun b_and!7207 () Bool)

(assert (= b_and!7199 (and (=> t!23606 result!6504) b_and!7207)))

(declare-fun tb!4269 () Bool)

(declare-fun t!23608 () Bool)

(assert (=> (and b!141466 (= (toChars!879 (transformation!405 (rule!912 (h!7806 l2!3099)))) (toChars!879 (transformation!405 (rule!912 (h!7806 l1!3130))))) t!23608) tb!4269))

(declare-fun result!6506 () Bool)

(assert (= result!6506 result!6502))

(assert (=> b!141535 t!23608))

(declare-fun b_and!7209 () Bool)

(assert (= b_and!7201 (and (=> t!23608 result!6506) b_and!7209)))

(declare-fun m!124591 () Bool)

(assert (=> d!33682 m!124591))

(declare-fun m!124593 () Bool)

(assert (=> b!141535 m!124593))

(assert (=> b!141535 m!124593))

(declare-fun m!124595 () Bool)

(assert (=> b!141535 m!124595))

(declare-fun m!124597 () Bool)

(assert (=> b!141536 m!124597))

(assert (=> b!141467 d!33682))

(declare-fun d!33684 () Bool)

(assert (=> d!33684 (= (isEmpty!922 (t!23593 l1!3130)) ((_ is Nil!2409) (t!23593 l1!3130)))))

(assert (=> b!141478 d!33684))

(declare-fun d!33686 () Bool)

(assert (=> d!33686 (= (inv!3171 (tag!583 (rule!912 (h!7806 l1!3130)))) (= (mod (str.len (value!15857 (tag!583 (rule!912 (h!7806 l1!3130))))) 2) 0))))

(assert (=> b!141477 d!33686))

(declare-fun d!33688 () Bool)

(declare-fun res!65635 () Bool)

(declare-fun e!83469 () Bool)

(assert (=> d!33688 (=> (not res!65635) (not e!83469))))

(assert (=> d!33688 (= res!65635 (semiInverseModEq!138 (toChars!879 (transformation!405 (rule!912 (h!7806 l1!3130)))) (toValue!1020 (transformation!405 (rule!912 (h!7806 l1!3130))))))))

(assert (=> d!33688 (= (inv!3175 (transformation!405 (rule!912 (h!7806 l1!3130)))) e!83469)))

(declare-fun b!141540 () Bool)

(assert (=> b!141540 (= e!83469 (equivClasses!121 (toChars!879 (transformation!405 (rule!912 (h!7806 l1!3130)))) (toValue!1020 (transformation!405 (rule!912 (h!7806 l1!3130))))))))

(assert (= (and d!33688 res!65635) b!141540))

(declare-fun m!124599 () Bool)

(assert (=> d!33688 m!124599))

(declare-fun m!124601 () Bool)

(assert (=> b!141540 m!124601))

(assert (=> b!141477 d!33688))

(assert (=> b!141465 d!33684))

(declare-fun b!141542 () Bool)

(declare-fun e!83471 () Bool)

(assert (=> b!141542 (= e!83471 (inv!17 (value!15858 (h!7806 l1!3130))))))

(declare-fun b!141543 () Bool)

(declare-fun res!65636 () Bool)

(declare-fun e!83470 () Bool)

(assert (=> b!141543 (=> res!65636 e!83470)))

(assert (=> b!141543 (= res!65636 (not ((_ is IntegerValue!1283) (value!15858 (h!7806 l1!3130)))))))

(assert (=> b!141543 (= e!83471 e!83470)))

(declare-fun b!141544 () Bool)

(declare-fun e!83472 () Bool)

(assert (=> b!141544 (= e!83472 e!83471)))

(declare-fun c!29366 () Bool)

(assert (=> b!141544 (= c!29366 ((_ is IntegerValue!1282) (value!15858 (h!7806 l1!3130))))))

(declare-fun b!141545 () Bool)

(assert (=> b!141545 (= e!83472 (inv!16 (value!15858 (h!7806 l1!3130))))))

(declare-fun d!33690 () Bool)

(declare-fun c!29367 () Bool)

(assert (=> d!33690 (= c!29367 ((_ is IntegerValue!1281) (value!15858 (h!7806 l1!3130))))))

(assert (=> d!33690 (= (inv!21 (value!15858 (h!7806 l1!3130))) e!83472)))

(declare-fun b!141541 () Bool)

(assert (=> b!141541 (= e!83470 (inv!15 (value!15858 (h!7806 l1!3130))))))

(assert (= (and d!33690 c!29367) b!141545))

(assert (= (and d!33690 (not c!29367)) b!141544))

(assert (= (and b!141544 c!29366) b!141542))

(assert (= (and b!141544 (not c!29366)) b!141543))

(assert (= (and b!141543 (not res!65636)) b!141541))

(declare-fun m!124605 () Bool)

(assert (=> b!141542 m!124605))

(declare-fun m!124609 () Bool)

(assert (=> b!141545 m!124609))

(declare-fun m!124611 () Bool)

(assert (=> b!141541 m!124611))

(assert (=> b!141476 d!33690))

(declare-fun d!33694 () Bool)

(declare-fun lt!41205 () Token!554)

(declare-fun contains!386 (List!2419 Token!554) Bool)

(assert (=> d!33694 (contains!386 l1!3130 lt!41205)))

(declare-fun e!83481 () Token!554)

(assert (=> d!33694 (= lt!41205 e!83481)))

(declare-fun c!29372 () Bool)

(assert (=> d!33694 (= c!29372 (and ((_ is Cons!2409) l1!3130) ((_ is Nil!2409) (t!23593 l1!3130))))))

(assert (=> d!33694 (not (isEmpty!922 l1!3130))))

(assert (=> d!33694 (= (last!39 l1!3130) lt!41205)))

(declare-fun b!141560 () Bool)

(assert (=> b!141560 (= e!83481 (h!7806 l1!3130))))

(declare-fun b!141561 () Bool)

(assert (=> b!141561 (= e!83481 (last!39 (t!23593 l1!3130)))))

(assert (= (and d!33694 c!29372) b!141560))

(assert (= (and d!33694 (not c!29372)) b!141561))

(declare-fun m!124619 () Bool)

(assert (=> d!33694 m!124619))

(assert (=> d!33694 m!124537))

(declare-fun m!124621 () Bool)

(assert (=> b!141561 m!124621))

(assert (=> b!141474 d!33694))

(declare-fun d!33702 () Bool)

(assert (=> d!33702 (= (head!564 l2!3099) (h!7806 l2!3099))))

(assert (=> b!141474 d!33702))

(declare-fun d!33704 () Bool)

(assert (=> d!33704 (= (inv!3171 (tag!583 (h!7807 rules!4268))) (= (mod (str.len (value!15857 (tag!583 (h!7807 rules!4268)))) 2) 0))))

(assert (=> b!141473 d!33704))

(declare-fun d!33706 () Bool)

(declare-fun res!65643 () Bool)

(declare-fun e!83482 () Bool)

(assert (=> d!33706 (=> (not res!65643) (not e!83482))))

(assert (=> d!33706 (= res!65643 (semiInverseModEq!138 (toChars!879 (transformation!405 (h!7807 rules!4268))) (toValue!1020 (transformation!405 (h!7807 rules!4268)))))))

(assert (=> d!33706 (= (inv!3175 (transformation!405 (h!7807 rules!4268))) e!83482)))

(declare-fun b!141562 () Bool)

(assert (=> b!141562 (= e!83482 (equivClasses!121 (toChars!879 (transformation!405 (h!7807 rules!4268))) (toValue!1020 (transformation!405 (h!7807 rules!4268)))))))

(assert (= (and d!33706 res!65643) b!141562))

(declare-fun m!124623 () Bool)

(assert (=> d!33706 m!124623))

(declare-fun m!124625 () Bool)

(assert (=> b!141562 m!124625))

(assert (=> b!141473 d!33706))

(declare-fun d!33708 () Bool)

(declare-fun res!65646 () Bool)

(declare-fun e!83484 () Bool)

(assert (=> d!33708 (=> res!65646 e!83484)))

(assert (=> d!33708 (= res!65646 (or (not ((_ is Cons!2409) l1!3130)) (not ((_ is Cons!2409) (t!23593 l1!3130)))))))

(assert (=> d!33708 (= (tokensListTwoByTwoPredicateList!30 thiss!27322 l1!3130 rules!4268 p!3028) e!83484)))

(declare-fun b!141565 () Bool)

(declare-fun e!83485 () Bool)

(assert (=> b!141565 (= e!83484 e!83485)))

(declare-fun res!65647 () Bool)

(assert (=> b!141565 (=> (not res!65647) (not e!83485))))

(assert (=> b!141565 (= res!65647 (dynLambda!809 p!3028 (h!7806 l1!3130) (h!7806 (t!23593 l1!3130)) rules!4268))))

(declare-fun b!141566 () Bool)

(assert (=> b!141566 (= e!83485 (tokensListTwoByTwoPredicateList!30 thiss!27322 (Cons!2409 (h!7806 (t!23593 l1!3130)) (t!23593 (t!23593 l1!3130))) rules!4268 p!3028))))

(assert (= (and d!33708 (not res!65646)) b!141565))

(assert (= (and b!141565 res!65647) b!141566))

(declare-fun b_lambda!2175 () Bool)

(assert (=> (not b_lambda!2175) (not b!141565)))

(declare-fun t!23612 () Bool)

(declare-fun tb!4273 () Bool)

(assert (=> (and start!14850 (= p!3028 p!3028) t!23612) tb!4273))

(declare-fun result!6510 () Bool)

(assert (=> tb!4273 (= result!6510 true)))

(assert (=> b!141565 t!23612))

(declare-fun b_and!7211 () Bool)

(assert (= b_and!7203 (and (=> t!23612 result!6510) b_and!7211)))

(declare-fun m!124627 () Bool)

(assert (=> b!141565 m!124627))

(declare-fun m!124629 () Bool)

(assert (=> b!141566 m!124629))

(assert (=> b!141484 d!33708))

(declare-fun b!141587 () Bool)

(declare-fun b_free!4673 () Bool)

(declare-fun b_next!4673 () Bool)

(assert (=> b!141587 (= b_free!4673 (not b_next!4673))))

(declare-fun tp!74573 () Bool)

(declare-fun b_and!7219 () Bool)

(assert (=> b!141587 (= tp!74573 b_and!7219)))

(declare-fun b_free!4675 () Bool)

(declare-fun b_next!4675 () Bool)

(assert (=> b!141587 (= b_free!4675 (not b_next!4675))))

(declare-fun t!23618 () Bool)

(declare-fun tb!4279 () Bool)

(assert (=> (and b!141587 (= (toChars!879 (transformation!405 (rule!912 (h!7806 (t!23593 l2!3099))))) (toChars!879 (transformation!405 (rule!912 (h!7806 l2!3099))))) t!23618) tb!4279))

(declare-fun result!6520 () Bool)

(assert (= result!6520 result!6492))

(assert (=> b!141489 t!23618))

(declare-fun tb!4281 () Bool)

(declare-fun t!23620 () Bool)

(assert (=> (and b!141587 (= (toChars!879 (transformation!405 (rule!912 (h!7806 (t!23593 l2!3099))))) (toChars!879 (transformation!405 (rule!912 (h!7806 l1!3130))))) t!23620) tb!4281))

(declare-fun result!6522 () Bool)

(assert (= result!6522 result!6502))

(assert (=> b!141535 t!23620))

(declare-fun b_and!7221 () Bool)

(declare-fun tp!74575 () Bool)

(assert (=> b!141587 (= tp!74575 (and (=> t!23618 result!6520) (=> t!23620 result!6522) b_and!7221))))

(declare-fun e!83503 () Bool)

(assert (=> b!141587 (= e!83503 (and tp!74573 tp!74575))))

(declare-fun e!83501 () Bool)

(declare-fun b!141584 () Bool)

(declare-fun e!83505 () Bool)

(declare-fun tp!74574 () Bool)

(assert (=> b!141584 (= e!83505 (and (inv!3174 (h!7806 (t!23593 l2!3099))) e!83501 tp!74574))))

(declare-fun e!83504 () Bool)

(declare-fun tp!74571 () Bool)

(declare-fun b!141586 () Bool)

(assert (=> b!141586 (= e!83504 (and tp!74571 (inv!3171 (tag!583 (rule!912 (h!7806 (t!23593 l2!3099))))) (inv!3175 (transformation!405 (rule!912 (h!7806 (t!23593 l2!3099))))) e!83503))))

(declare-fun b!141585 () Bool)

(declare-fun tp!74572 () Bool)

(assert (=> b!141585 (= e!83501 (and (inv!21 (value!15858 (h!7806 (t!23593 l2!3099)))) e!83504 tp!74572))))

(assert (=> b!141483 (= tp!74543 e!83505)))

(assert (= b!141586 b!141587))

(assert (= b!141585 b!141586))

(assert (= b!141584 b!141585))

(assert (= (and b!141483 ((_ is Cons!2409) (t!23593 l2!3099))) b!141584))

(declare-fun m!124643 () Bool)

(assert (=> b!141584 m!124643))

(declare-fun m!124645 () Bool)

(assert (=> b!141586 m!124645))

(declare-fun m!124647 () Bool)

(assert (=> b!141586 m!124647))

(declare-fun m!124649 () Bool)

(assert (=> b!141585 m!124649))

(declare-fun b!141593 () Bool)

(declare-fun b_free!4677 () Bool)

(declare-fun b_next!4677 () Bool)

(assert (=> b!141593 (= b_free!4677 (not b_next!4677))))

(declare-fun tp!74578 () Bool)

(declare-fun b_and!7223 () Bool)

(assert (=> b!141593 (= tp!74578 b_and!7223)))

(declare-fun b_free!4679 () Bool)

(declare-fun b_next!4679 () Bool)

(assert (=> b!141593 (= b_free!4679 (not b_next!4679))))

(declare-fun t!23622 () Bool)

(declare-fun tb!4283 () Bool)

(assert (=> (and b!141593 (= (toChars!879 (transformation!405 (rule!912 (h!7806 (t!23593 l1!3130))))) (toChars!879 (transformation!405 (rule!912 (h!7806 l2!3099))))) t!23622) tb!4283))

(declare-fun result!6524 () Bool)

(assert (= result!6524 result!6492))

(assert (=> b!141489 t!23622))

(declare-fun t!23624 () Bool)

(declare-fun tb!4285 () Bool)

(assert (=> (and b!141593 (= (toChars!879 (transformation!405 (rule!912 (h!7806 (t!23593 l1!3130))))) (toChars!879 (transformation!405 (rule!912 (h!7806 l1!3130))))) t!23624) tb!4285))

(declare-fun result!6526 () Bool)

(assert (= result!6526 result!6502))

(assert (=> b!141535 t!23624))

(declare-fun b_and!7225 () Bool)

(declare-fun tp!74580 () Bool)

(assert (=> b!141593 (= tp!74580 (and (=> t!23622 result!6524) (=> t!23624 result!6526) b_and!7225))))

(declare-fun e!83511 () Bool)

(assert (=> b!141593 (= e!83511 (and tp!74578 tp!74580))))

(declare-fun e!83509 () Bool)

(declare-fun b!141590 () Bool)

(declare-fun e!83513 () Bool)

(declare-fun tp!74579 () Bool)

(assert (=> b!141590 (= e!83513 (and (inv!3174 (h!7806 (t!23593 l1!3130))) e!83509 tp!74579))))

(declare-fun e!83512 () Bool)

(declare-fun tp!74576 () Bool)

(declare-fun b!141592 () Bool)

(assert (=> b!141592 (= e!83512 (and tp!74576 (inv!3171 (tag!583 (rule!912 (h!7806 (t!23593 l1!3130))))) (inv!3175 (transformation!405 (rule!912 (h!7806 (t!23593 l1!3130))))) e!83511))))

(declare-fun tp!74577 () Bool)

(declare-fun b!141591 () Bool)

(assert (=> b!141591 (= e!83509 (and (inv!21 (value!15858 (h!7806 (t!23593 l1!3130)))) e!83512 tp!74577))))

(assert (=> b!141467 (= tp!74551 e!83513)))

(assert (= b!141592 b!141593))

(assert (= b!141591 b!141592))

(assert (= b!141590 b!141591))

(assert (= (and b!141467 ((_ is Cons!2409) (t!23593 l1!3130))) b!141590))

(declare-fun m!124655 () Bool)

(assert (=> b!141590 m!124655))

(declare-fun m!124657 () Bool)

(assert (=> b!141592 m!124657))

(declare-fun m!124659 () Bool)

(assert (=> b!141592 m!124659))

(declare-fun m!124661 () Bool)

(assert (=> b!141591 m!124661))

(declare-fun b!141612 () Bool)

(declare-fun e!83520 () Bool)

(declare-fun tp!74596 () Bool)

(declare-fun tp!74595 () Bool)

(assert (=> b!141612 (= e!83520 (and tp!74596 tp!74595))))

(declare-fun b!141610 () Bool)

(declare-fun tp!74592 () Bool)

(declare-fun tp!74594 () Bool)

(assert (=> b!141610 (= e!83520 (and tp!74592 tp!74594))))

(assert (=> b!141477 (= tp!74541 e!83520)))

(declare-fun b!141611 () Bool)

(declare-fun tp!74593 () Bool)

(assert (=> b!141611 (= e!83520 tp!74593)))

(declare-fun b!141609 () Bool)

(declare-fun tp_is_empty!1573 () Bool)

(assert (=> b!141609 (= e!83520 tp_is_empty!1573)))

(assert (= (and b!141477 ((_ is ElementMatch!629) (regex!405 (rule!912 (h!7806 l1!3130))))) b!141609))

(assert (= (and b!141477 ((_ is Concat!1057) (regex!405 (rule!912 (h!7806 l1!3130))))) b!141610))

(assert (= (and b!141477 ((_ is Star!629) (regex!405 (rule!912 (h!7806 l1!3130))))) b!141611))

(assert (= (and b!141477 ((_ is Union!629) (regex!405 (rule!912 (h!7806 l1!3130))))) b!141612))

(declare-fun b!141627 () Bool)

(declare-fun b_free!4681 () Bool)

(declare-fun b_next!4681 () Bool)

(assert (=> b!141627 (= b_free!4681 (not b_next!4681))))

(declare-fun tp!74606 () Bool)

(declare-fun b_and!7233 () Bool)

(assert (=> b!141627 (= tp!74606 b_and!7233)))

(declare-fun b_free!4683 () Bool)

(declare-fun b_next!4683 () Bool)

(assert (=> b!141627 (= b_free!4683 (not b_next!4683))))

(declare-fun t!23632 () Bool)

(declare-fun tb!4293 () Bool)

(assert (=> (and b!141627 (= (toChars!879 (transformation!405 (h!7807 (t!23594 rules!4268)))) (toChars!879 (transformation!405 (rule!912 (h!7806 l2!3099))))) t!23632) tb!4293))

(declare-fun result!6538 () Bool)

(assert (= result!6538 result!6492))

(assert (=> b!141489 t!23632))

(declare-fun tb!4295 () Bool)

(declare-fun t!23634 () Bool)

(assert (=> (and b!141627 (= (toChars!879 (transformation!405 (h!7807 (t!23594 rules!4268)))) (toChars!879 (transformation!405 (rule!912 (h!7806 l1!3130))))) t!23634) tb!4295))

(declare-fun result!6540 () Bool)

(assert (= result!6540 result!6502))

(assert (=> b!141535 t!23634))

(declare-fun tp!74607 () Bool)

(declare-fun b_and!7235 () Bool)

(assert (=> b!141627 (= tp!74607 (and (=> t!23632 result!6538) (=> t!23634 result!6540) b_and!7235))))

(declare-fun e!83533 () Bool)

(assert (=> b!141627 (= e!83533 (and tp!74606 tp!74607))))

(declare-fun e!83534 () Bool)

(declare-fun b!141626 () Bool)

(declare-fun tp!74608 () Bool)

(assert (=> b!141626 (= e!83534 (and tp!74608 (inv!3171 (tag!583 (h!7807 (t!23594 rules!4268)))) (inv!3175 (transformation!405 (h!7807 (t!23594 rules!4268)))) e!83533))))

(declare-fun b!141625 () Bool)

(declare-fun e!83536 () Bool)

(declare-fun tp!74605 () Bool)

(assert (=> b!141625 (= e!83536 (and e!83534 tp!74605))))

(assert (=> b!141481 (= tp!74550 e!83536)))

(assert (= b!141626 b!141627))

(assert (= b!141625 b!141626))

(assert (= (and b!141481 ((_ is Cons!2410) (t!23594 rules!4268))) b!141625))

(declare-fun m!124675 () Bool)

(assert (=> b!141626 m!124675))

(declare-fun m!124677 () Bool)

(assert (=> b!141626 m!124677))

(declare-fun b!141634 () Bool)

(declare-fun e!83541 () Bool)

(declare-fun tp!74611 () Bool)

(assert (=> b!141634 (= e!83541 (and tp_is_empty!1573 tp!74611))))

(assert (=> b!141476 (= tp!74549 e!83541)))

(assert (= (and b!141476 ((_ is Cons!2408) (originalCharacters!448 (h!7806 l1!3130)))) b!141634))

(declare-fun b!141638 () Bool)

(declare-fun e!83542 () Bool)

(declare-fun tp!74616 () Bool)

(declare-fun tp!74615 () Bool)

(assert (=> b!141638 (= e!83542 (and tp!74616 tp!74615))))

(declare-fun b!141636 () Bool)

(declare-fun tp!74612 () Bool)

(declare-fun tp!74614 () Bool)

(assert (=> b!141636 (= e!83542 (and tp!74612 tp!74614))))

(assert (=> b!141470 (= tp!74553 e!83542)))

(declare-fun b!141637 () Bool)

(declare-fun tp!74613 () Bool)

(assert (=> b!141637 (= e!83542 tp!74613)))

(declare-fun b!141635 () Bool)

(assert (=> b!141635 (= e!83542 tp_is_empty!1573)))

(assert (= (and b!141470 ((_ is ElementMatch!629) (regex!405 (rule!912 (h!7806 l2!3099))))) b!141635))

(assert (= (and b!141470 ((_ is Concat!1057) (regex!405 (rule!912 (h!7806 l2!3099))))) b!141636))

(assert (= (and b!141470 ((_ is Star!629) (regex!405 (rule!912 (h!7806 l2!3099))))) b!141637))

(assert (= (and b!141470 ((_ is Union!629) (regex!405 (rule!912 (h!7806 l2!3099))))) b!141638))

(declare-fun b!141642 () Bool)

(declare-fun e!83543 () Bool)

(declare-fun tp!74621 () Bool)

(declare-fun tp!74620 () Bool)

(assert (=> b!141642 (= e!83543 (and tp!74621 tp!74620))))

(declare-fun b!141640 () Bool)

(declare-fun tp!74617 () Bool)

(declare-fun tp!74619 () Bool)

(assert (=> b!141640 (= e!83543 (and tp!74617 tp!74619))))

(assert (=> b!141473 (= tp!74546 e!83543)))

(declare-fun b!141641 () Bool)

(declare-fun tp!74618 () Bool)

(assert (=> b!141641 (= e!83543 tp!74618)))

(declare-fun b!141639 () Bool)

(assert (=> b!141639 (= e!83543 tp_is_empty!1573)))

(assert (= (and b!141473 ((_ is ElementMatch!629) (regex!405 (h!7807 rules!4268)))) b!141639))

(assert (= (and b!141473 ((_ is Concat!1057) (regex!405 (h!7807 rules!4268)))) b!141640))

(assert (= (and b!141473 ((_ is Star!629) (regex!405 (h!7807 rules!4268)))) b!141641))

(assert (= (and b!141473 ((_ is Union!629) (regex!405 (h!7807 rules!4268)))) b!141642))

(declare-fun b!141645 () Bool)

(declare-fun e!83546 () Bool)

(declare-fun tp!74622 () Bool)

(assert (=> b!141645 (= e!83546 (and tp_is_empty!1573 tp!74622))))

(assert (=> b!141468 (= tp!74548 e!83546)))

(assert (= (and b!141468 ((_ is Cons!2408) (originalCharacters!448 (h!7806 l2!3099)))) b!141645))

(declare-fun b_lambda!2183 () Bool)

(assert (= b_lambda!2171 (or (and b!141480 b_free!4661) (and b!141627 b_free!4683 (= (toChars!879 (transformation!405 (h!7807 (t!23594 rules!4268)))) (toChars!879 (transformation!405 (rule!912 (h!7806 l1!3130)))))) (and b!141469 b_free!4665 (= (toChars!879 (transformation!405 (h!7807 rules!4268))) (toChars!879 (transformation!405 (rule!912 (h!7806 l1!3130)))))) (and b!141593 b_free!4679 (= (toChars!879 (transformation!405 (rule!912 (h!7806 (t!23593 l1!3130))))) (toChars!879 (transformation!405 (rule!912 (h!7806 l1!3130)))))) (and b!141466 b_free!4671 (= (toChars!879 (transformation!405 (rule!912 (h!7806 l2!3099)))) (toChars!879 (transformation!405 (rule!912 (h!7806 l1!3130)))))) (and b!141587 b_free!4675 (= (toChars!879 (transformation!405 (rule!912 (h!7806 (t!23593 l2!3099))))) (toChars!879 (transformation!405 (rule!912 (h!7806 l1!3130)))))) b_lambda!2183)))

(declare-fun b_lambda!2185 () Bool)

(assert (= b_lambda!2169 (or (and start!14850 b_free!4667) b_lambda!2185)))

(declare-fun b_lambda!2187 () Bool)

(assert (= b_lambda!2167 (or (and b!141593 b_free!4679 (= (toChars!879 (transformation!405 (rule!912 (h!7806 (t!23593 l1!3130))))) (toChars!879 (transformation!405 (rule!912 (h!7806 l2!3099)))))) (and b!141627 b_free!4683 (= (toChars!879 (transformation!405 (h!7807 (t!23594 rules!4268)))) (toChars!879 (transformation!405 (rule!912 (h!7806 l2!3099)))))) (and b!141587 b_free!4675 (= (toChars!879 (transformation!405 (rule!912 (h!7806 (t!23593 l2!3099))))) (toChars!879 (transformation!405 (rule!912 (h!7806 l2!3099)))))) (and b!141480 b_free!4661 (= (toChars!879 (transformation!405 (rule!912 (h!7806 l1!3130)))) (toChars!879 (transformation!405 (rule!912 (h!7806 l2!3099)))))) (and b!141469 b_free!4665 (= (toChars!879 (transformation!405 (h!7807 rules!4268))) (toChars!879 (transformation!405 (rule!912 (h!7806 l2!3099)))))) (and b!141466 b_free!4671) b_lambda!2187)))

(declare-fun b_lambda!2189 () Bool)

(assert (= b_lambda!2175 (or (and start!14850 b_free!4667) b_lambda!2189)))

(check-sat (not b!141645) (not b_next!4675) (not b_next!4669) (not b!141489) (not b_next!4679) (not b!141591) (not b_next!4659) (not d!33694) (not b!141612) (not b!141626) (not b!141640) (not b!141545) b_and!7207 b_and!7223 (not b_next!4665) (not b!141541) (not b!141610) (not b_lambda!2189) (not b_lambda!2163) (not b_lambda!2185) (not d!33662) (not b!141642) (not b!141531) (not b_next!4673) (not b_next!4683) (not b!141540) (not b_next!4663) b_and!7221 (not b!141537) (not b_lambda!2183) (not b!141641) (not b!141490) b_and!7219 (not tb!4257) b_and!7225 b_and!7181 tp_is_empty!1573 (not b!141566) b_and!7211 (not b!141561) (not b!141530) (not b!141584) (not b!141562) (not b_next!4661) (not b!141637) (not b_next!4671) (not b!141508) (not b_next!4677) (not b!141495) (not b!141542) (not b!141625) (not b!141535) b_and!7235 b_and!7205 (not b!141611) (not b_next!4681) b_and!7185 b_and!7209 (not b!141585) (not b!141590) (not b_next!4667) (not b!141536) (not b!141534) (not b!141634) (not b!141638) b_and!7233 (not d!33670) (not d!33688) (not d!33706) b_and!7191 (not b!141498) (not b!141592) (not b!141636) (not b_lambda!2187) (not b!141586) (not tb!4265) (not d!33682))
(check-sat (not b_next!4673) (not b_next!4683) (not b_next!4675) b_and!7219 b_and!7225 (not b_next!4669) (not b_next!4679) (not b_next!4661) b_and!7235 b_and!7205 (not b_next!4659) (not b_next!4667) b_and!7233 b_and!7191 b_and!7207 b_and!7223 (not b_next!4665) (not b_next!4663) b_and!7221 b_and!7181 b_and!7211 (not b_next!4671) (not b_next!4677) (not b_next!4681) b_and!7185 b_and!7209)
