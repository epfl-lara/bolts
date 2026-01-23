; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!273662 () Bool)

(assert start!273662)

(declare-fun b!2820657 () Bool)

(declare-fun b_free!80661 () Bool)

(declare-fun b_next!81365 () Bool)

(assert (=> b!2820657 (= b_free!80661 (not b_next!81365))))

(declare-fun tp!900821 () Bool)

(declare-fun b_and!206047 () Bool)

(assert (=> b!2820657 (= tp!900821 b_and!206047)))

(declare-fun b_free!80663 () Bool)

(declare-fun b_next!81367 () Bool)

(assert (=> b!2820657 (= b_free!80663 (not b_next!81367))))

(declare-fun tp!900823 () Bool)

(declare-fun b_and!206049 () Bool)

(assert (=> b!2820657 (= tp!900823 b_and!206049)))

(declare-fun b!2820661 () Bool)

(declare-fun b_free!80665 () Bool)

(declare-fun b_next!81369 () Bool)

(assert (=> b!2820661 (= b_free!80665 (not b_next!81369))))

(declare-fun tp!900819 () Bool)

(declare-fun b_and!206051 () Bool)

(assert (=> b!2820661 (= tp!900819 b_and!206051)))

(declare-fun b_free!80667 () Bool)

(declare-fun b_next!81371 () Bool)

(assert (=> b!2820661 (= b_free!80667 (not b_next!81371))))

(declare-fun tp!900820 () Bool)

(declare-fun b_and!206053 () Bool)

(assert (=> b!2820661 (= tp!900820 b_and!206053)))

(declare-fun b!2820677 () Bool)

(declare-fun e!1784298 () Bool)

(assert (=> b!2820677 (= e!1784298 true)))

(declare-fun b!2820676 () Bool)

(declare-fun e!1784297 () Bool)

(assert (=> b!2820676 (= e!1784297 e!1784298)))

(declare-fun b!2820675 () Bool)

(declare-fun e!1784296 () Bool)

(assert (=> b!2820675 (= e!1784296 e!1784297)))

(declare-fun b!2820659 () Bool)

(assert (=> b!2820659 e!1784296))

(assert (= b!2820676 b!2820677))

(assert (= b!2820675 b!2820676))

(declare-datatypes ((String!36370 0))(
  ( (String!36371 (value!159454 String)) )
))
(declare-datatypes ((C!16868 0))(
  ( (C!16869 (val!10414 Int)) )
))
(declare-datatypes ((List!33206 0))(
  ( (Nil!33082) (Cons!33082 (h!38502 (_ BitVec 16)) (t!230471 List!33206)) )
))
(declare-datatypes ((TokenValue!5183 0))(
  ( (FloatLiteralValue!10366 (text!36726 List!33206)) (TokenValueExt!5182 (__x!22039 Int)) (Broken!25915 (value!159455 List!33206)) (Object!5306) (End!5183) (Def!5183) (Underscore!5183) (Match!5183) (Else!5183) (Error!5183) (Case!5183) (If!5183) (Extends!5183) (Abstract!5183) (Class!5183) (Val!5183) (DelimiterValue!10366 (del!5243 List!33206)) (KeywordValue!5189 (value!159456 List!33206)) (CommentValue!10366 (value!159457 List!33206)) (WhitespaceValue!10366 (value!159458 List!33206)) (IndentationValue!5183 (value!159459 List!33206)) (String!36372) (Int32!5183) (Broken!25916 (value!159460 List!33206)) (Boolean!5184) (Unit!47028) (OperatorValue!5186 (op!5243 List!33206)) (IdentifierValue!10366 (value!159461 List!33206)) (IdentifierValue!10367 (value!159462 List!33206)) (WhitespaceValue!10367 (value!159463 List!33206)) (True!10366) (False!10366) (Broken!25917 (value!159464 List!33206)) (Broken!25918 (value!159465 List!33206)) (True!10367) (RightBrace!5183) (RightBracket!5183) (Colon!5183) (Null!5183) (Comma!5183) (LeftBracket!5183) (False!10367) (LeftBrace!5183) (ImaginaryLiteralValue!5183 (text!36727 List!33206)) (StringLiteralValue!15549 (value!159466 List!33206)) (EOFValue!5183 (value!159467 List!33206)) (IdentValue!5183 (value!159468 List!33206)) (DelimiterValue!10367 (value!159469 List!33206)) (DedentValue!5183 (value!159470 List!33206)) (NewLineValue!5183 (value!159471 List!33206)) (IntegerValue!15549 (value!159472 (_ BitVec 32)) (text!36728 List!33206)) (IntegerValue!15550 (value!159473 Int) (text!36729 List!33206)) (Times!5183) (Or!5183) (Equal!5183) (Minus!5183) (Broken!25919 (value!159474 List!33206)) (And!5183) (Div!5183) (LessEqual!5183) (Mod!5183) (Concat!13526) (Not!5183) (Plus!5183) (SpaceValue!5183 (value!159475 List!33206)) (IntegerValue!15551 (value!159476 Int) (text!36730 List!33206)) (StringLiteralValue!15550 (text!36731 List!33206)) (FloatLiteralValue!10367 (text!36732 List!33206)) (BytesLiteralValue!5183 (value!159477 List!33206)) (CommentValue!10367 (value!159478 List!33206)) (StringLiteralValue!15551 (value!159479 List!33206)) (ErrorTokenValue!5183 (msg!5244 List!33206)) )
))
(declare-datatypes ((List!33207 0))(
  ( (Nil!33083) (Cons!33083 (h!38503 C!16868) (t!230472 List!33207)) )
))
(declare-datatypes ((IArray!20533 0))(
  ( (IArray!20534 (innerList!10324 List!33207)) )
))
(declare-datatypes ((Conc!10264 0))(
  ( (Node!10264 (left!24983 Conc!10264) (right!25313 Conc!10264) (csize!20758 Int) (cheight!10475 Int)) (Leaf!15632 (xs!13376 IArray!20533) (csize!20759 Int)) (Empty!10264) )
))
(declare-datatypes ((BalanceConc!20166 0))(
  ( (BalanceConc!20167 (c!457028 Conc!10264)) )
))
(declare-datatypes ((TokenValueInjection!9794 0))(
  ( (TokenValueInjection!9795 (toValue!6971 Int) (toChars!6830 Int)) )
))
(declare-datatypes ((Regex!8343 0))(
  ( (ElementMatch!8343 (c!457029 C!16868)) (Concat!13527 (regOne!17198 Regex!8343) (regTwo!17198 Regex!8343)) (EmptyExpr!8343) (Star!8343 (reg!8672 Regex!8343)) (EmptyLang!8343) (Union!8343 (regOne!17199 Regex!8343) (regTwo!17199 Regex!8343)) )
))
(declare-datatypes ((Rule!9706 0))(
  ( (Rule!9707 (regex!4953 Regex!8343) (tag!5457 String!36370) (isSeparator!4953 Bool) (transformation!4953 TokenValueInjection!9794)) )
))
(declare-datatypes ((List!33208 0))(
  ( (Nil!33084) (Cons!33084 (h!38504 Rule!9706) (t!230473 List!33208)) )
))
(declare-fun rules!4424 () List!33208)

(get-info :version)

(assert (= (and b!2820659 ((_ is Cons!33084) rules!4424)) b!2820675))

(declare-fun lambda!103541 () Int)

(declare-fun order!17565 () Int)

(declare-fun order!17563 () Int)

(declare-fun dynLambda!13832 (Int Int) Int)

(declare-fun dynLambda!13833 (Int Int) Int)

(assert (=> b!2820677 (< (dynLambda!13832 order!17563 (toValue!6971 (transformation!4953 (h!38504 rules!4424)))) (dynLambda!13833 order!17565 lambda!103541))))

(declare-fun order!17567 () Int)

(declare-fun dynLambda!13834 (Int Int) Int)

(assert (=> b!2820677 (< (dynLambda!13834 order!17567 (toChars!6830 (transformation!4953 (h!38504 rules!4424)))) (dynLambda!13833 order!17565 lambda!103541))))

(declare-fun b!2820647 () Bool)

(declare-fun e!1784282 () Bool)

(declare-fun e!1784287 () Bool)

(declare-fun tp!900822 () Bool)

(assert (=> b!2820647 (= e!1784282 (and e!1784287 tp!900822))))

(declare-fun b!2820648 () Bool)

(declare-fun res!1173794 () Bool)

(declare-fun e!1784283 () Bool)

(assert (=> b!2820648 (=> (not res!1173794) (not e!1784283))))

(declare-datatypes ((LexerInterface!4544 0))(
  ( (LexerInterfaceExt!4541 (__x!22040 Int)) (Lexer!4542) )
))
(declare-fun thiss!27755 () LexerInterface!4544)

(declare-datatypes ((Token!9308 0))(
  ( (Token!9309 (value!159480 TokenValue!5183) (rule!7381 Rule!9706) (size!25751 Int) (originalCharacters!5685 List!33207)) )
))
(declare-datatypes ((List!33209 0))(
  ( (Nil!33085) (Cons!33085 (h!38505 Token!9308) (t!230474 List!33209)) )
))
(declare-fun l!6581 () List!33209)

(declare-fun tokensListTwoByTwoPredicateSeparableList!681 (LexerInterface!4544 List!33209 List!33208) Bool)

(assert (=> b!2820648 (= res!1173794 (tokensListTwoByTwoPredicateSeparableList!681 thiss!27755 (t!230474 l!6581) rules!4424))))

(declare-fun e!1784274 () Bool)

(declare-fun tp!900825 () Bool)

(declare-fun b!2820649 () Bool)

(declare-fun e!1784275 () Bool)

(declare-fun inv!45002 (String!36370) Bool)

(declare-fun inv!45005 (TokenValueInjection!9794) Bool)

(assert (=> b!2820649 (= e!1784275 (and tp!900825 (inv!45002 (tag!5457 (rule!7381 (h!38505 l!6581)))) (inv!45005 (transformation!4953 (rule!7381 (h!38505 l!6581)))) e!1784274))))

(declare-fun b!2820650 () Bool)

(declare-fun e!1784278 () Bool)

(declare-fun lt!1006799 () List!33209)

(assert (=> b!2820650 (= e!1784278 (tokensListTwoByTwoPredicateSeparableList!681 thiss!27755 lt!1006799 rules!4424))))

(declare-fun b!2820651 () Bool)

(declare-fun e!1784284 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1596 (LexerInterface!4544 List!33208 List!33209) Bool)

(assert (=> b!2820651 (= e!1784284 (rulesProduceEachTokenIndividuallyList!1596 thiss!27755 rules!4424 (t!230474 lt!1006799)))))

(declare-fun b!2820652 () Bool)

(declare-fun res!1173799 () Bool)

(assert (=> b!2820652 (=> (not res!1173799) (not e!1784283))))

(assert (=> b!2820652 (= res!1173799 (rulesProduceEachTokenIndividuallyList!1596 thiss!27755 rules!4424 (t!230474 l!6581)))))

(declare-fun res!1173800 () Bool)

(assert (=> start!273662 (=> (not res!1173800) (not e!1784283))))

(assert (=> start!273662 (= res!1173800 ((_ is Lexer!4542) thiss!27755))))

(assert (=> start!273662 e!1784283))

(assert (=> start!273662 true))

(assert (=> start!273662 e!1784282))

(declare-fun e!1784288 () Bool)

(assert (=> start!273662 e!1784288))

(declare-fun b!2820653 () Bool)

(declare-fun res!1173795 () Bool)

(assert (=> b!2820653 (=> (not res!1173795) (not e!1784283))))

(assert (=> b!2820653 (= res!1173795 (tokensListTwoByTwoPredicateSeparableList!681 thiss!27755 l!6581 rules!4424))))

(declare-fun b!2820654 () Bool)

(declare-fun res!1173798 () Bool)

(assert (=> b!2820654 (=> (not res!1173798) (not e!1784283))))

(declare-fun rulesInvariant!3962 (LexerInterface!4544 List!33208) Bool)

(assert (=> b!2820654 (= res!1173798 (rulesInvariant!3962 thiss!27755 rules!4424))))

(declare-fun tp!900826 () Bool)

(declare-fun b!2820655 () Bool)

(declare-fun e!1784280 () Bool)

(declare-fun inv!21 (TokenValue!5183) Bool)

(assert (=> b!2820655 (= e!1784280 (and (inv!21 (value!159480 (h!38505 l!6581))) e!1784275 tp!900826))))

(declare-fun b!2820656 () Bool)

(declare-fun res!1173801 () Bool)

(assert (=> b!2820656 (=> (not res!1173801) (not e!1784283))))

(declare-fun i!1730 () Int)

(assert (=> b!2820656 (= res!1173801 (and (not ((_ is Nil!33085) l!6581)) (> i!1730 0)))))

(assert (=> b!2820657 (= e!1784274 (and tp!900821 tp!900823))))

(declare-fun b!2820658 () Bool)

(declare-fun res!1173804 () Bool)

(assert (=> b!2820658 (=> (not res!1173804) (not e!1784283))))

(assert (=> b!2820658 (= res!1173804 (rulesProduceEachTokenIndividuallyList!1596 thiss!27755 rules!4424 l!6581))))

(assert (=> b!2820659 (= e!1784283 (not true))))

(declare-fun lt!1006798 () List!33209)

(declare-fun e!1784276 () Bool)

(assert (=> b!2820659 (= (rulesProduceEachTokenIndividuallyList!1596 thiss!27755 rules!4424 lt!1006798) e!1784276)))

(declare-fun res!1173803 () Bool)

(assert (=> b!2820659 (=> res!1173803 e!1784276)))

(assert (=> b!2820659 (= res!1173803 (not ((_ is Cons!33085) lt!1006798)))))

(declare-fun take!547 (List!33209 Int) List!33209)

(assert (=> b!2820659 (= lt!1006798 (take!547 l!6581 i!1730))))

(assert (=> b!2820659 e!1784278))

(declare-fun res!1173802 () Bool)

(assert (=> b!2820659 (=> (not res!1173802) (not e!1784278))))

(declare-fun forall!6777 (List!33209 Int) Bool)

(assert (=> b!2820659 (= res!1173802 (forall!6777 lt!1006799 lambda!103541))))

(declare-datatypes ((Unit!47029 0))(
  ( (Unit!47030) )
))
(declare-fun lt!1006801 () Unit!47029)

(declare-fun lemmaForallSubseq!221 (List!33209 List!33209 Int) Unit!47029)

(assert (=> b!2820659 (= lt!1006801 (lemmaForallSubseq!221 lt!1006799 (t!230474 l!6581) lambda!103541))))

(declare-fun e!1784285 () Bool)

(assert (=> b!2820659 (= (rulesProduceEachTokenIndividuallyList!1596 thiss!27755 rules!4424 lt!1006799) e!1784285)))

(declare-fun res!1173806 () Bool)

(assert (=> b!2820659 (=> res!1173806 e!1784285)))

(assert (=> b!2820659 (= res!1173806 (not ((_ is Cons!33085) lt!1006799)))))

(assert (=> b!2820659 (= lt!1006799 (take!547 (t!230474 l!6581) (- i!1730 1)))))

(declare-fun lt!1006800 () Unit!47029)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensTakeList!48 (LexerInterface!4544 List!33209 Int List!33208) Unit!47029)

(assert (=> b!2820659 (= lt!1006800 (tokensListTwoByTwoPredicateSeparableTokensTakeList!48 thiss!27755 (t!230474 l!6581) (- i!1730 1) rules!4424))))

(declare-fun e!1784277 () Bool)

(declare-fun b!2820660 () Bool)

(assert (=> b!2820660 (= e!1784277 (rulesProduceEachTokenIndividuallyList!1596 thiss!27755 rules!4424 (t!230474 lt!1006798)))))

(declare-fun e!1784281 () Bool)

(assert (=> b!2820661 (= e!1784281 (and tp!900819 tp!900820))))

(declare-fun b!2820662 () Bool)

(declare-fun res!1173805 () Bool)

(assert (=> b!2820662 (=> (not res!1173805) (not e!1784283))))

(declare-fun isEmpty!18294 (List!33208) Bool)

(assert (=> b!2820662 (= res!1173805 (not (isEmpty!18294 rules!4424)))))

(declare-fun b!2820663 () Bool)

(assert (=> b!2820663 (= e!1784285 e!1784284)))

(declare-fun res!1173796 () Bool)

(assert (=> b!2820663 (=> (not res!1173796) (not e!1784284))))

(declare-fun rulesProduceIndividualToken!2082 (LexerInterface!4544 List!33208 Token!9308) Bool)

(assert (=> b!2820663 (= res!1173796 (rulesProduceIndividualToken!2082 thiss!27755 rules!4424 (h!38505 lt!1006799)))))

(declare-fun b!2820664 () Bool)

(declare-fun tp!900824 () Bool)

(assert (=> b!2820664 (= e!1784287 (and tp!900824 (inv!45002 (tag!5457 (h!38504 rules!4424))) (inv!45005 (transformation!4953 (h!38504 rules!4424))) e!1784281))))

(declare-fun b!2820665 () Bool)

(assert (=> b!2820665 (= e!1784276 e!1784277)))

(declare-fun res!1173797 () Bool)

(assert (=> b!2820665 (=> (not res!1173797) (not e!1784277))))

(assert (=> b!2820665 (= res!1173797 (rulesProduceIndividualToken!2082 thiss!27755 rules!4424 (h!38505 lt!1006798)))))

(declare-fun tp!900818 () Bool)

(declare-fun b!2820666 () Bool)

(declare-fun inv!45006 (Token!9308) Bool)

(assert (=> b!2820666 (= e!1784288 (and (inv!45006 (h!38505 l!6581)) e!1784280 tp!900818))))

(assert (= (and start!273662 res!1173800) b!2820662))

(assert (= (and b!2820662 res!1173805) b!2820654))

(assert (= (and b!2820654 res!1173798) b!2820658))

(assert (= (and b!2820658 res!1173804) b!2820653))

(assert (= (and b!2820653 res!1173795) b!2820656))

(assert (= (and b!2820656 res!1173801) b!2820652))

(assert (= (and b!2820652 res!1173799) b!2820648))

(assert (= (and b!2820648 res!1173794) b!2820659))

(assert (= (and b!2820659 (not res!1173806)) b!2820663))

(assert (= (and b!2820663 res!1173796) b!2820651))

(assert (= (and b!2820659 res!1173802) b!2820650))

(assert (= (and b!2820659 (not res!1173803)) b!2820665))

(assert (= (and b!2820665 res!1173797) b!2820660))

(assert (= b!2820664 b!2820661))

(assert (= b!2820647 b!2820664))

(assert (= (and start!273662 ((_ is Cons!33084) rules!4424)) b!2820647))

(assert (= b!2820649 b!2820657))

(assert (= b!2820655 b!2820649))

(assert (= b!2820666 b!2820655))

(assert (= (and start!273662 ((_ is Cons!33085) l!6581)) b!2820666))

(declare-fun m!3251143 () Bool)

(assert (=> b!2820655 m!3251143))

(declare-fun m!3251145 () Bool)

(assert (=> b!2820666 m!3251145))

(declare-fun m!3251147 () Bool)

(assert (=> b!2820659 m!3251147))

(declare-fun m!3251149 () Bool)

(assert (=> b!2820659 m!3251149))

(declare-fun m!3251151 () Bool)

(assert (=> b!2820659 m!3251151))

(declare-fun m!3251153 () Bool)

(assert (=> b!2820659 m!3251153))

(declare-fun m!3251155 () Bool)

(assert (=> b!2820659 m!3251155))

(declare-fun m!3251157 () Bool)

(assert (=> b!2820659 m!3251157))

(declare-fun m!3251159 () Bool)

(assert (=> b!2820659 m!3251159))

(declare-fun m!3251161 () Bool)

(assert (=> b!2820663 m!3251161))

(declare-fun m!3251163 () Bool)

(assert (=> b!2820658 m!3251163))

(declare-fun m!3251165 () Bool)

(assert (=> b!2820654 m!3251165))

(declare-fun m!3251167 () Bool)

(assert (=> b!2820660 m!3251167))

(declare-fun m!3251169 () Bool)

(assert (=> b!2820664 m!3251169))

(declare-fun m!3251171 () Bool)

(assert (=> b!2820664 m!3251171))

(declare-fun m!3251173 () Bool)

(assert (=> b!2820652 m!3251173))

(declare-fun m!3251175 () Bool)

(assert (=> b!2820662 m!3251175))

(declare-fun m!3251177 () Bool)

(assert (=> b!2820650 m!3251177))

(declare-fun m!3251179 () Bool)

(assert (=> b!2820648 m!3251179))

(declare-fun m!3251181 () Bool)

(assert (=> b!2820651 m!3251181))

(declare-fun m!3251183 () Bool)

(assert (=> b!2820649 m!3251183))

(declare-fun m!3251185 () Bool)

(assert (=> b!2820649 m!3251185))

(declare-fun m!3251187 () Bool)

(assert (=> b!2820653 m!3251187))

(declare-fun m!3251189 () Bool)

(assert (=> b!2820665 m!3251189))

(check-sat (not b!2820675) (not b!2820654) (not b!2820659) b_and!206047 (not b!2820665) (not b!2820650) (not b!2820664) (not b!2820652) (not b!2820648) (not b_next!81369) (not b!2820653) (not b_next!81365) (not b!2820647) (not b_next!81367) b_and!206049 (not b!2820666) (not b!2820655) b_and!206051 (not b_next!81371) b_and!206053 (not b!2820660) (not b!2820651) (not b!2820663) (not b!2820658) (not b!2820662) (not b!2820649))
(check-sat (not b_next!81369) (not b_next!81365) b_and!206047 (not b_next!81367) b_and!206049 b_and!206051 (not b_next!81371) b_and!206053)
